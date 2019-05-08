
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 fd 22 00 00     C...I...O...."..
      20:	fd 22 00 00 fd 22 00 00 fd 22 00 00 55 02 00 00     ."..."..."..U...
      30:	fd 22 00 00 fd 22 00 00 5b 02 00 00 e5 23 00 00     ."..."..[....#..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 35 20 00 00     g...m...y...5 ..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 fd 22 00 00 fd 22 00 00 b5 02 00 00     ....."..."......
      80:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..
      90:	fd 22 00 00 fd 22 00 00 fd 22 00 00 bb 02 00 00     ."..."..."......
      a0:	fd 22 00 00 1d 26 00 00 fd 22 00 00 4d 25 00 00     ."...&..."..M%..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 fd 22 00 00     ............."..
      c0:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..
      d0:	fd 22 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     ."..............
      e0:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..
      f0:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..
     100:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..
     110:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..
     120:	fd 22 00 00 fd 22 00 00 fd 22 00 00 fd 22 00 00     ."..."..."..."..

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
     18e:	f000 ffef 	bl	1170 <main>
}
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000054 	.word	0x20000054
     1a0:	20000928 	.word	0x20000928
     1a4:	00003000 	.word	0x00003000
     1a8:	20000000 	.word	0x20000000
     1ac:	20000054 	.word	0x20000054
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
     1dc:	f002 f896 	bl	230c <print_fault>
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
     1f4:	f002 f88a 	bl	230c <print_fault>
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
     20c:	f002 f87e 	bl	230c <print_fault>
}
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
		print_fault("hard fault  ",adr);
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f879 	bl	230c <print_fault>
}
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002c40 	.word	0x00002c40
     230:	00002c58 	.word	0x00002c58
     234:	00002c64 	.word	0x00002c64
     238:	00002c74 	.word	0x00002c74

0000023c <NMI_handler>:
_default_handler(NMI_handler) // 2
     23c:	f002 f85e 	bl	22fc <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     242:	f002 f85b 	bl	22fc <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     248:	f002 f858 	bl	22fc <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     24e:	f002 f855 	bl	22fc <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
_default_handler(SVC_handler) // 11
     254:	f002 f852 	bl	22fc <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     25a:	f002 f84f 	bl	22fc <reset_mcu>
     25e:	bf00      	nop
_default_handler(STK_handler) // 15
     260:	f002 f84c 	bl	22fc <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     266:	f002 f849 	bl	22fc <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
_default_handler(PVD_handler) // 1
     26c:	f002 f846 	bl	22fc <reset_mcu>
     270:	bf00      	nop
_default_handler(RTC_handler) // 2
     272:	f002 f843 	bl	22fc <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     278:	f002 f840 	bl	22fc <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     27e:	f002 f83d 	bl	22fc <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
_default_handler(RCC_handler) // 5
     284:	f002 f83a 	bl	22fc <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     28a:	f002 f837 	bl	22fc <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     290:	f002 f834 	bl	22fc <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     296:	f002 f831 	bl	22fc <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     29c:	f002 f82e 	bl	22fc <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     2a2:	f002 f82b 	bl	22fc <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     2a8:	f002 f828 	bl	22fc <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     2ae:	f002 f825 	bl	22fc <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     2b4:	f002 f822 	bl	22fc <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     2ba:	f002 f81f 	bl	22fc <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     2c0:	f002 f81c 	bl	22fc <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     2c6:	f002 f819 	bl	22fc <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     2cc:	f002 f816 	bl	22fc <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     2d2:	f002 f813 	bl	22fc <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
_default_handler(USART1_handler) // 37
     2d8:	f002 f810 	bl	22fc <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
_default_handler(USART2_handler) // 38
     2de:	f002 f80d 	bl	22fc <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
_default_handler(USART3_handler) // 39
     2e4:	f002 f80a 	bl	22fc <reset_mcu>
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
     418:	20000054 	.word	0x20000054
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
     518:	20000054 	.word	0x20000054
     51c:	20000056 	.word	0x20000056

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
     584:	20000056 	.word	0x20000056
     588:	20000054 	.word	0x20000054

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
     6dc:	20000054 	.word	0x20000054

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
     6f4:	20000054 	.word	0x20000054

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
     718:	20000054 	.word	0x20000054
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
     cfa:	2b44      	cmp	r3, #68	; 0x44
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
     d0c:	f000 f9c4 	bl	1098 <gfx_scrollup>
    }
}
     d10:	bf00      	nop
     d12:	bd80      	pop	{r7, pc}
     d14:	20000456 	.word	0x20000456
     d18:	20000457 	.word	0x20000457

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
     d44:	20000456 	.word	0x20000456

00000d48 <gfx_putchar>:

void gfx_putchar(char c){
     d48:	b580      	push	{r7, lr}
     d4a:	b088      	sub	sp, #32
     d4c:	af00      	add	r7, sp, #0
     d4e:	4603      	mov	r3, r0
     d50:	71fb      	strb	r3, [r7, #7]
    int cx,cy,idx;
    uint8_t byte,bit;
    if ((c<32) || (c>=(FONT_SIZE+32))) return;  
     d52:	79fb      	ldrb	r3, [r7, #7]
     d54:	2b1f      	cmp	r3, #31
     d56:	d941      	bls.n	ddc <gfx_putchar+0x94>
     d58:	79fb      	ldrb	r3, [r7, #7]
     d5a:	2b84      	cmp	r3, #132	; 0x84
     d5c:	d83e      	bhi.n	ddc <gfx_putchar+0x94>
    idx=(c-32)*CHAR_HEIGHT;
     d5e:	79fb      	ldrb	r3, [r7, #7]
     d60:	3b20      	subs	r3, #32
     d62:	00db      	lsls	r3, r3, #3
     d64:	613b      	str	r3, [r7, #16]
    for (cy=0;cy<CHAR_HEIGHT;cy++){
     d66:	2300      	movs	r3, #0
     d68:	61bb      	str	r3, [r7, #24]
     d6a:	e027      	b.n	dbc <gfx_putchar+0x74>
        byte=font_6x8[idx+cy];
     d6c:	693a      	ldr	r2, [r7, #16]
     d6e:	69bb      	ldr	r3, [r7, #24]
     d70:	4413      	add	r3, r2
     d72:	4a1c      	ldr	r2, [pc, #112]	; (de4 <gfx_putchar+0x9c>)
     d74:	5cd3      	ldrb	r3, [r2, r3]
     d76:	73fb      	strb	r3, [r7, #15]
        bit=(1<<7);
     d78:	2380      	movs	r3, #128	; 0x80
     d7a:	75fb      	strb	r3, [r7, #23]
        for (cx=0;cx<CHAR_WIDTH;cx++,bit>>=1){
     d7c:	2300      	movs	r3, #0
     d7e:	61fb      	str	r3, [r7, #28]
     d80:	e016      	b.n	db0 <gfx_putchar+0x68>
            gfx_plot(cursor_x+cx,cursor_y+cy,byte&bit);
     d82:	4b19      	ldr	r3, [pc, #100]	; (de8 <gfx_putchar+0xa0>)
     d84:	781b      	ldrb	r3, [r3, #0]
     d86:	461a      	mov	r2, r3
     d88:	69fb      	ldr	r3, [r7, #28]
     d8a:	18d0      	adds	r0, r2, r3
     d8c:	4b17      	ldr	r3, [pc, #92]	; (dec <gfx_putchar+0xa4>)
     d8e:	781b      	ldrb	r3, [r3, #0]
     d90:	461a      	mov	r2, r3
     d92:	69bb      	ldr	r3, [r7, #24]
     d94:	18d1      	adds	r1, r2, r3
     d96:	7bfa      	ldrb	r2, [r7, #15]
     d98:	7dfb      	ldrb	r3, [r7, #23]
     d9a:	4013      	ands	r3, r2
     d9c:	b2db      	uxtb	r3, r3
     d9e:	461a      	mov	r2, r3
     da0:	f000 f8c0 	bl	f24 <gfx_plot>
        for (cx=0;cx<CHAR_WIDTH;cx++,bit>>=1){
     da4:	69fb      	ldr	r3, [r7, #28]
     da6:	3301      	adds	r3, #1
     da8:	61fb      	str	r3, [r7, #28]
     daa:	7dfb      	ldrb	r3, [r7, #23]
     dac:	085b      	lsrs	r3, r3, #1
     dae:	75fb      	strb	r3, [r7, #23]
     db0:	69fb      	ldr	r3, [r7, #28]
     db2:	2b05      	cmp	r3, #5
     db4:	dde5      	ble.n	d82 <gfx_putchar+0x3a>
    for (cy=0;cy<CHAR_HEIGHT;cy++){
     db6:	69bb      	ldr	r3, [r7, #24]
     db8:	3301      	adds	r3, #1
     dba:	61bb      	str	r3, [r7, #24]
     dbc:	69bb      	ldr	r3, [r7, #24]
     dbe:	2b07      	cmp	r3, #7
     dc0:	ddd4      	ble.n	d6c <gfx_putchar+0x24>
        }
    }
    cursor_x+=CHAR_WIDTH;
     dc2:	4b09      	ldr	r3, [pc, #36]	; (de8 <gfx_putchar+0xa0>)
     dc4:	781b      	ldrb	r3, [r3, #0]
     dc6:	3306      	adds	r3, #6
     dc8:	b2da      	uxtb	r2, r3
     dca:	4b07      	ldr	r3, [pc, #28]	; (de8 <gfx_putchar+0xa0>)
     dcc:	701a      	strb	r2, [r3, #0]
    if (cursor_x>(HRES-CHAR_WIDTH)) gfx_crlf();
     dce:	4b06      	ldr	r3, [pc, #24]	; (de8 <gfx_putchar+0xa0>)
     dd0:	781b      	ldrb	r3, [r3, #0]
     dd2:	2b7a      	cmp	r3, #122	; 0x7a
     dd4:	d903      	bls.n	dde <gfx_putchar+0x96>
     dd6:	f7ff ff83 	bl	ce0 <gfx_crlf>
     dda:	e000      	b.n	dde <gfx_putchar+0x96>
    if ((c<32) || (c>=(FONT_SIZE+32))) return;  
     ddc:	bf00      	nop
}
     dde:	3720      	adds	r7, #32
     de0:	46bd      	mov	sp, r7
     de2:	bd80      	pop	{r7, pc}
     de4:	00002820 	.word	0x00002820
     de8:	20000456 	.word	0x20000456
     dec:	20000457 	.word	0x20000457

00000df0 <gfx_print>:

void gfx_print(const char* str){
     df0:	b580      	push	{r7, lr}
     df2:	b084      	sub	sp, #16
     df4:	af00      	add	r7, sp, #0
     df6:	6078      	str	r0, [r7, #4]
    char c;
    while ((c=*str++)){
     df8:	e011      	b.n	e1e <gfx_print+0x2e>
        switch(c){
     dfa:	7bfb      	ldrb	r3, [r7, #15]
     dfc:	2b0a      	cmp	r3, #10
     dfe:	d004      	beq.n	e0a <gfx_print+0x1a>
     e00:	2b0d      	cmp	r3, #13
     e02:	d002      	beq.n	e0a <gfx_print+0x1a>
     e04:	2b08      	cmp	r3, #8
     e06:	d003      	beq.n	e10 <gfx_print+0x20>
     e08:	e005      	b.n	e16 <gfx_print+0x26>
        case LF:
        case CR:
            gfx_crlf();
     e0a:	f7ff ff69 	bl	ce0 <gfx_crlf>
            break;
     e0e:	e006      	b.n	e1e <gfx_print+0x2e>
        case BS:
            gfx_cursor_left();    
     e10:	f7ff ff84 	bl	d1c <gfx_cursor_left>
            break;
     e14:	e003      	b.n	e1e <gfx_print+0x2e>
        default:
            gfx_putchar(c);
     e16:	7bfb      	ldrb	r3, [r7, #15]
     e18:	4618      	mov	r0, r3
     e1a:	f7ff ff95 	bl	d48 <gfx_putchar>
    while ((c=*str++)){
     e1e:	687b      	ldr	r3, [r7, #4]
     e20:	1c5a      	adds	r2, r3, #1
     e22:	607a      	str	r2, [r7, #4]
     e24:	781b      	ldrb	r3, [r3, #0]
     e26:	73fb      	strb	r3, [r7, #15]
     e28:	7bfb      	ldrb	r3, [r7, #15]
     e2a:	2b00      	cmp	r3, #0
     e2c:	d1e5      	bne.n	dfa <gfx_print+0xa>
        }
    }
}
     e2e:	bf00      	nop
     e30:	3710      	adds	r7, #16
     e32:	46bd      	mov	sp, r7
     e34:	bd80      	pop	{r7, pc}

00000e36 <gfx_print_int>:

void gfx_print_int(int i,uint8_t base){
     e36:	b580      	push	{r7, lr}
     e38:	b088      	sub	sp, #32
     e3a:	af00      	add	r7, sp, #0
     e3c:	6078      	str	r0, [r7, #4]
     e3e:	460b      	mov	r3, r1
     e40:	70fb      	strb	r3, [r7, #3]
    char fmt[12],sign=0;
     e42:	2300      	movs	r3, #0
     e44:	77fb      	strb	r3, [r7, #31]
    int idx,d;

    fmt[11]=0;
     e46:	2300      	movs	r3, #0
     e48:	74fb      	strb	r3, [r7, #19]
    fmt[10]=' ';
     e4a:	2320      	movs	r3, #32
     e4c:	74bb      	strb	r3, [r7, #18]
    idx=10;
     e4e:	230a      	movs	r3, #10
     e50:	61bb      	str	r3, [r7, #24]
    if (i<0){
     e52:	687b      	ldr	r3, [r7, #4]
     e54:	2b00      	cmp	r3, #0
     e56:	da26      	bge.n	ea6 <gfx_print_int+0x70>
        sign=1;
     e58:	2301      	movs	r3, #1
     e5a:	77fb      	strb	r3, [r7, #31]
        i=-i;
     e5c:	687b      	ldr	r3, [r7, #4]
     e5e:	425b      	negs	r3, r3
     e60:	607b      	str	r3, [r7, #4]
    }
    while (i){
     e62:	e020      	b.n	ea6 <gfx_print_int+0x70>
        d=i%base;
     e64:	78fa      	ldrb	r2, [r7, #3]
     e66:	687b      	ldr	r3, [r7, #4]
     e68:	fb93 f1f2 	sdiv	r1, r3, r2
     e6c:	fb02 f201 	mul.w	r2, r2, r1
     e70:	1a9b      	subs	r3, r3, r2
     e72:	617b      	str	r3, [r7, #20]
        if (d>9) d+=7;
     e74:	697b      	ldr	r3, [r7, #20]
     e76:	2b09      	cmp	r3, #9
     e78:	dd02      	ble.n	e80 <gfx_print_int+0x4a>
     e7a:	697b      	ldr	r3, [r7, #20]
     e7c:	3307      	adds	r3, #7
     e7e:	617b      	str	r3, [r7, #20]
        fmt[--idx]=d+='0';
     e80:	69bb      	ldr	r3, [r7, #24]
     e82:	3b01      	subs	r3, #1
     e84:	61bb      	str	r3, [r7, #24]
     e86:	697b      	ldr	r3, [r7, #20]
     e88:	3330      	adds	r3, #48	; 0x30
     e8a:	617b      	str	r3, [r7, #20]
     e8c:	697b      	ldr	r3, [r7, #20]
     e8e:	b2d9      	uxtb	r1, r3
     e90:	f107 0208 	add.w	r2, r7, #8
     e94:	69bb      	ldr	r3, [r7, #24]
     e96:	4413      	add	r3, r2
     e98:	460a      	mov	r2, r1
     e9a:	701a      	strb	r2, [r3, #0]
        i/=base;
     e9c:	78fb      	ldrb	r3, [r7, #3]
     e9e:	687a      	ldr	r2, [r7, #4]
     ea0:	fb92 f3f3 	sdiv	r3, r2, r3
     ea4:	607b      	str	r3, [r7, #4]
    while (i){
     ea6:	687b      	ldr	r3, [r7, #4]
     ea8:	2b00      	cmp	r3, #0
     eaa:	d1db      	bne.n	e64 <gfx_print_int+0x2e>
    }
    if (idx==10)fmt[--idx]='0';
     eac:	69bb      	ldr	r3, [r7, #24]
     eae:	2b0a      	cmp	r3, #10
     eb0:	d108      	bne.n	ec4 <gfx_print_int+0x8e>
     eb2:	69bb      	ldr	r3, [r7, #24]
     eb4:	3b01      	subs	r3, #1
     eb6:	61bb      	str	r3, [r7, #24]
     eb8:	f107 0208 	add.w	r2, r7, #8
     ebc:	69bb      	ldr	r3, [r7, #24]
     ebe:	4413      	add	r3, r2
     ec0:	2230      	movs	r2, #48	; 0x30
     ec2:	701a      	strb	r2, [r3, #0]
    if (base==10 && sign){
     ec4:	78fb      	ldrb	r3, [r7, #3]
     ec6:	2b0a      	cmp	r3, #10
     ec8:	d10c      	bne.n	ee4 <gfx_print_int+0xae>
     eca:	7ffb      	ldrb	r3, [r7, #31]
     ecc:	2b00      	cmp	r3, #0
     ece:	d009      	beq.n	ee4 <gfx_print_int+0xae>
        fmt[--idx]='-';
     ed0:	69bb      	ldr	r3, [r7, #24]
     ed2:	3b01      	subs	r3, #1
     ed4:	61bb      	str	r3, [r7, #24]
     ed6:	f107 0208 	add.w	r2, r7, #8
     eda:	69bb      	ldr	r3, [r7, #24]
     edc:	4413      	add	r3, r2
     ede:	222d      	movs	r2, #45	; 0x2d
     ee0:	701a      	strb	r2, [r3, #0]
     ee2:	e014      	b.n	f0e <gfx_print_int+0xd8>
    }else if (base==16){
     ee4:	78fb      	ldrb	r3, [r7, #3]
     ee6:	2b10      	cmp	r3, #16
     ee8:	d111      	bne.n	f0e <gfx_print_int+0xd8>
        fmt[--idx]='x';
     eea:	69bb      	ldr	r3, [r7, #24]
     eec:	3b01      	subs	r3, #1
     eee:	61bb      	str	r3, [r7, #24]
     ef0:	f107 0208 	add.w	r2, r7, #8
     ef4:	69bb      	ldr	r3, [r7, #24]
     ef6:	4413      	add	r3, r2
     ef8:	2278      	movs	r2, #120	; 0x78
     efa:	701a      	strb	r2, [r3, #0]
        fmt[--idx]='0';
     efc:	69bb      	ldr	r3, [r7, #24]
     efe:	3b01      	subs	r3, #1
     f00:	61bb      	str	r3, [r7, #24]
     f02:	f107 0208 	add.w	r2, r7, #8
     f06:	69bb      	ldr	r3, [r7, #24]
     f08:	4413      	add	r3, r2
     f0a:	2230      	movs	r2, #48	; 0x30
     f0c:	701a      	strb	r2, [r3, #0]
    }
    gfx_print(&fmt[idx]);
     f0e:	f107 0208 	add.w	r2, r7, #8
     f12:	69bb      	ldr	r3, [r7, #24]
     f14:	4413      	add	r3, r2
     f16:	4618      	mov	r0, r3
     f18:	f7ff ff6a 	bl	df0 <gfx_print>
}
     f1c:	bf00      	nop
     f1e:	3720      	adds	r7, #32
     f20:	46bd      	mov	sp, r7
     f22:	bd80      	pop	{r7, pc}

00000f24 <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
     f24:	b480      	push	{r7}
     f26:	b089      	sub	sp, #36	; 0x24
     f28:	af00      	add	r7, sp, #0
     f2a:	60f8      	str	r0, [r7, #12]
     f2c:	60b9      	str	r1, [r7, #8]
     f2e:	4613      	mov	r3, r2
     f30:	71fb      	strb	r3, [r7, #7]
	int idx;
	uint8_t byte,mask;
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
     f32:	68fb      	ldr	r3, [r7, #12]
     f34:	2b00      	cmp	r3, #0
     f36:	db3b      	blt.n	fb0 <gfx_plot+0x8c>
     f38:	68fb      	ldr	r3, [r7, #12]
     f3a:	2b7f      	cmp	r3, #127	; 0x7f
     f3c:	dc38      	bgt.n	fb0 <gfx_plot+0x8c>
     f3e:	68bb      	ldr	r3, [r7, #8]
     f40:	2b00      	cmp	r3, #0
     f42:	db35      	blt.n	fb0 <gfx_plot+0x8c>
     f44:	68bb      	ldr	r3, [r7, #8]
     f46:	2b4b      	cmp	r3, #75	; 0x4b
     f48:	dc32      	bgt.n	fb0 <gfx_plot+0x8c>
	idx=y*BPR+x/8;
     f4a:	68bb      	ldr	r3, [r7, #8]
     f4c:	011a      	lsls	r2, r3, #4
     f4e:	68fb      	ldr	r3, [r7, #12]
     f50:	2b00      	cmp	r3, #0
     f52:	da00      	bge.n	f56 <gfx_plot+0x32>
     f54:	3307      	adds	r3, #7
     f56:	10db      	asrs	r3, r3, #3
     f58:	4413      	add	r3, r2
     f5a:	61bb      	str	r3, [r7, #24]
	mask=1<<(7-(x%8));
     f5c:	68fb      	ldr	r3, [r7, #12]
     f5e:	425a      	negs	r2, r3
     f60:	f003 0307 	and.w	r3, r3, #7
     f64:	f002 0207 	and.w	r2, r2, #7
     f68:	bf58      	it	pl
     f6a:	4253      	negpl	r3, r2
     f6c:	f1c3 0307 	rsb	r3, r3, #7
     f70:	2201      	movs	r2, #1
     f72:	fa02 f303 	lsl.w	r3, r2, r3
     f76:	75fb      	strb	r3, [r7, #23]
	byte=video_buffer[idx];
     f78:	4a10      	ldr	r2, [pc, #64]	; (fbc <gfx_plot+0x98>)
     f7a:	69bb      	ldr	r3, [r7, #24]
     f7c:	4413      	add	r3, r2
     f7e:	781b      	ldrb	r3, [r3, #0]
     f80:	77fb      	strb	r3, [r7, #31]
	if (color)byte|=mask;else byte&=~mask;
     f82:	79fb      	ldrb	r3, [r7, #7]
     f84:	2b00      	cmp	r3, #0
     f86:	d004      	beq.n	f92 <gfx_plot+0x6e>
     f88:	7ffa      	ldrb	r2, [r7, #31]
     f8a:	7dfb      	ldrb	r3, [r7, #23]
     f8c:	4313      	orrs	r3, r2
     f8e:	77fb      	strb	r3, [r7, #31]
     f90:	e008      	b.n	fa4 <gfx_plot+0x80>
     f92:	f997 3017 	ldrsb.w	r3, [r7, #23]
     f96:	43db      	mvns	r3, r3
     f98:	b25a      	sxtb	r2, r3
     f9a:	f997 301f 	ldrsb.w	r3, [r7, #31]
     f9e:	4013      	ands	r3, r2
     fa0:	b25b      	sxtb	r3, r3
     fa2:	77fb      	strb	r3, [r7, #31]
	video_buffer[idx]=byte;
     fa4:	4a05      	ldr	r2, [pc, #20]	; (fbc <gfx_plot+0x98>)
     fa6:	69bb      	ldr	r3, [r7, #24]
     fa8:	4413      	add	r3, r2
     faa:	7ffa      	ldrb	r2, [r7, #31]
     fac:	701a      	strb	r2, [r3, #0]
     fae:	e000      	b.n	fb2 <gfx_plot+0x8e>
	if ((x<0) || (x>=HRES) || (y<0) || (y>=VRES) ) return;
     fb0:	bf00      	nop
}
     fb2:	3724      	adds	r7, #36	; 0x24
     fb4:	46bd      	mov	sp, r7
     fb6:	bc80      	pop	{r7}
     fb8:	4770      	bx	lr
     fba:	bf00      	nop
     fbc:	20000468 	.word	0x20000468

00000fc0 <gfx_rectangle>:


void gfx_rectangle(int x0,int y0, int x1,int y1){
     fc0:	b580      	push	{r7, lr}
     fc2:	b086      	sub	sp, #24
     fc4:	af00      	add	r7, sp, #0
     fc6:	60f8      	str	r0, [r7, #12]
     fc8:	60b9      	str	r1, [r7, #8]
     fca:	607a      	str	r2, [r7, #4]
     fcc:	603b      	str	r3, [r7, #0]
	int tmp;
	if (x0>x1){
     fce:	68fa      	ldr	r2, [r7, #12]
     fd0:	687b      	ldr	r3, [r7, #4]
     fd2:	429a      	cmp	r2, r3
     fd4:	dd05      	ble.n	fe2 <gfx_rectangle+0x22>
		tmp=x0;
     fd6:	68fb      	ldr	r3, [r7, #12]
     fd8:	617b      	str	r3, [r7, #20]
		x0=x1;
     fda:	687b      	ldr	r3, [r7, #4]
     fdc:	60fb      	str	r3, [r7, #12]
		x1=tmp;
     fde:	697b      	ldr	r3, [r7, #20]
     fe0:	607b      	str	r3, [r7, #4]
	}
	if (y0>y1){
     fe2:	68ba      	ldr	r2, [r7, #8]
     fe4:	683b      	ldr	r3, [r7, #0]
     fe6:	429a      	cmp	r2, r3
     fe8:	dd05      	ble.n	ff6 <gfx_rectangle+0x36>
		tmp=y0;
     fea:	68bb      	ldr	r3, [r7, #8]
     fec:	617b      	str	r3, [r7, #20]
		y0=y1;
     fee:	683b      	ldr	r3, [r7, #0]
     ff0:	60bb      	str	r3, [r7, #8]
		y1=tmp;
     ff2:	697b      	ldr	r3, [r7, #20]
     ff4:	603b      	str	r3, [r7, #0]
	}
	for (tmp=x0;tmp<=x1;tmp++){
     ff6:	68fb      	ldr	r3, [r7, #12]
     ff8:	617b      	str	r3, [r7, #20]
     ffa:	e00c      	b.n	1016 <gfx_rectangle+0x56>
		gfx_plot(tmp,y0,1);
     ffc:	2201      	movs	r2, #1
     ffe:	68b9      	ldr	r1, [r7, #8]
    1000:	6978      	ldr	r0, [r7, #20]
    1002:	f7ff ff8f 	bl	f24 <gfx_plot>
		gfx_plot(tmp,y1,1);
    1006:	2201      	movs	r2, #1
    1008:	6839      	ldr	r1, [r7, #0]
    100a:	6978      	ldr	r0, [r7, #20]
    100c:	f7ff ff8a 	bl	f24 <gfx_plot>
	for (tmp=x0;tmp<=x1;tmp++){
    1010:	697b      	ldr	r3, [r7, #20]
    1012:	3301      	adds	r3, #1
    1014:	617b      	str	r3, [r7, #20]
    1016:	697a      	ldr	r2, [r7, #20]
    1018:	687b      	ldr	r3, [r7, #4]
    101a:	429a      	cmp	r2, r3
    101c:	ddee      	ble.n	ffc <gfx_rectangle+0x3c>
	}
	for (++y0;y0<y1;y0++){
    101e:	68bb      	ldr	r3, [r7, #8]
    1020:	3301      	adds	r3, #1
    1022:	60bb      	str	r3, [r7, #8]
    1024:	e00c      	b.n	1040 <gfx_rectangle+0x80>
		gfx_plot(x0,y0,1);
    1026:	2201      	movs	r2, #1
    1028:	68b9      	ldr	r1, [r7, #8]
    102a:	68f8      	ldr	r0, [r7, #12]
    102c:	f7ff ff7a 	bl	f24 <gfx_plot>
		gfx_plot(x1,y0,1);
    1030:	2201      	movs	r2, #1
    1032:	68b9      	ldr	r1, [r7, #8]
    1034:	6878      	ldr	r0, [r7, #4]
    1036:	f7ff ff75 	bl	f24 <gfx_plot>
	for (++y0;y0<y1;y0++){
    103a:	68bb      	ldr	r3, [r7, #8]
    103c:	3301      	adds	r3, #1
    103e:	60bb      	str	r3, [r7, #8]
    1040:	68ba      	ldr	r2, [r7, #8]
    1042:	683b      	ldr	r3, [r7, #0]
    1044:	429a      	cmp	r2, r3
    1046:	dbee      	blt.n	1026 <gfx_rectangle+0x66>
	}
}
    1048:	bf00      	nop
    104a:	3718      	adds	r7, #24
    104c:	46bd      	mov	sp, r7
    104e:	bd80      	pop	{r7, pc}

00001050 <gfx_cls>:

void gfx_cls(){
    1050:	b480      	push	{r7}
    1052:	b083      	sub	sp, #12
    1054:	af00      	add	r7, sp, #0
	int x;
	for (x=0;x<VRES*BPR;x++) video_buffer[x]=0;
    1056:	2300      	movs	r3, #0
    1058:	607b      	str	r3, [r7, #4]
    105a:	e007      	b.n	106c <gfx_cls+0x1c>
    105c:	4a0b      	ldr	r2, [pc, #44]	; (108c <gfx_cls+0x3c>)
    105e:	687b      	ldr	r3, [r7, #4]
    1060:	4413      	add	r3, r2
    1062:	2200      	movs	r2, #0
    1064:	701a      	strb	r2, [r3, #0]
    1066:	687b      	ldr	r3, [r7, #4]
    1068:	3301      	adds	r3, #1
    106a:	607b      	str	r3, [r7, #4]
    106c:	687b      	ldr	r3, [r7, #4]
    106e:	f5b3 6f98 	cmp.w	r3, #1216	; 0x4c0
    1072:	dbf3      	blt.n	105c <gfx_cls+0xc>
    cursor_x=0;
    1074:	4b06      	ldr	r3, [pc, #24]	; (1090 <gfx_cls+0x40>)
    1076:	2200      	movs	r2, #0
    1078:	701a      	strb	r2, [r3, #0]
    cursor_y=0;
    107a:	4b06      	ldr	r3, [pc, #24]	; (1094 <gfx_cls+0x44>)
    107c:	2200      	movs	r2, #0
    107e:	701a      	strb	r2, [r3, #0]
}
    1080:	bf00      	nop
    1082:	370c      	adds	r7, #12
    1084:	46bd      	mov	sp, r7
    1086:	bc80      	pop	{r7}
    1088:	4770      	bx	lr
    108a:	bf00      	nop
    108c:	20000468 	.word	0x20000468
    1090:	20000456 	.word	0x20000456
    1094:	20000457 	.word	0x20000457

00001098 <gfx_scrollup>:

void gfx_scrollup(uint8_t n){
    1098:	b480      	push	{r7}
    109a:	b087      	sub	sp, #28
    109c:	af00      	add	r7, sp, #0
    109e:	4603      	mov	r3, r0
    10a0:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;

    src=&video_buffer[n*BPR];
    10a2:	79fb      	ldrb	r3, [r7, #7]
    10a4:	011b      	lsls	r3, r3, #4
    10a6:	4a15      	ldr	r2, [pc, #84]	; (10fc <gfx_scrollup+0x64>)
    10a8:	4413      	add	r3, r2
    10aa:	617b      	str	r3, [r7, #20]
    dest=video_buffer;
    10ac:	4b13      	ldr	r3, [pc, #76]	; (10fc <gfx_scrollup+0x64>)
    10ae:	613b      	str	r3, [r7, #16]
    size = (VRES-n)*BPR;
    10b0:	79fb      	ldrb	r3, [r7, #7]
    10b2:	f1c3 034c 	rsb	r3, r3, #76	; 0x4c
    10b6:	011b      	lsls	r3, r3, #4
    10b8:	60fb      	str	r3, [r7, #12]
    while (size--) *dest++=*src++;
    10ba:	e007      	b.n	10cc <gfx_scrollup+0x34>
    10bc:	693b      	ldr	r3, [r7, #16]
    10be:	1c5a      	adds	r2, r3, #1
    10c0:	613a      	str	r2, [r7, #16]
    10c2:	697a      	ldr	r2, [r7, #20]
    10c4:	1c51      	adds	r1, r2, #1
    10c6:	6179      	str	r1, [r7, #20]
    10c8:	7812      	ldrb	r2, [r2, #0]
    10ca:	701a      	strb	r2, [r3, #0]
    10cc:	68fb      	ldr	r3, [r7, #12]
    10ce:	1e5a      	subs	r2, r3, #1
    10d0:	60fa      	str	r2, [r7, #12]
    10d2:	2b00      	cmp	r3, #0
    10d4:	d1f2      	bne.n	10bc <gfx_scrollup+0x24>
    size=BPR*n;
    10d6:	79fb      	ldrb	r3, [r7, #7]
    10d8:	011b      	lsls	r3, r3, #4
    10da:	60fb      	str	r3, [r7, #12]
    while (size--) *dest++=0;
    10dc:	e004      	b.n	10e8 <gfx_scrollup+0x50>
    10de:	693b      	ldr	r3, [r7, #16]
    10e0:	1c5a      	adds	r2, r3, #1
    10e2:	613a      	str	r2, [r7, #16]
    10e4:	2200      	movs	r2, #0
    10e6:	701a      	strb	r2, [r3, #0]
    10e8:	68fb      	ldr	r3, [r7, #12]
    10ea:	1e5a      	subs	r2, r3, #1
    10ec:	60fa      	str	r2, [r7, #12]
    10ee:	2b00      	cmp	r3, #0
    10f0:	d1f5      	bne.n	10de <gfx_scrollup+0x46>
    10f2:	bf00      	nop
    10f4:	371c      	adds	r7, #28
    10f6:	46bd      	mov	sp, r7
    10f8:	bc80      	pop	{r7}
    10fa:	4770      	bx	lr
    10fc:	20000468 	.word	0x20000468

00001100 <set_sysclock>:
//void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
    1100:	b480      	push	{r7}
    1102:	af00      	add	r7, sp, #0
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
    1104:	4a18      	ldr	r2, [pc, #96]	; (1168 <set_sysclock+0x68>)
    1106:	4b18      	ldr	r3, [pc, #96]	; (1168 <set_sysclock+0x68>)
    1108:	681b      	ldr	r3, [r3, #0]
    110a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    110e:	6013      	str	r3, [r2, #0]
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
    1110:	bf00      	nop
    1112:	4b15      	ldr	r3, [pc, #84]	; (1168 <set_sysclock+0x68>)
    1114:	681b      	ldr	r3, [r3, #0]
    1116:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    111a:	2b00      	cmp	r3, #0
    111c:	d0f9      	beq.n	1112 <set_sysclock+0x12>
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    111e:	4a12      	ldr	r2, [pc, #72]	; (1168 <set_sysclock+0x68>)
    1120:	4b11      	ldr	r3, [pc, #68]	; (1168 <set_sysclock+0x68>)
    1122:	685b      	ldr	r3, [r3, #4]
    1124:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1128:	6053      	str	r3, [r2, #4]
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    112a:	4a0f      	ldr	r2, [pc, #60]	; (1168 <set_sysclock+0x68>)
    112c:	4b0e      	ldr	r3, [pc, #56]	; (1168 <set_sysclock+0x68>)
    112e:	681b      	ldr	r3, [r3, #0]
    1130:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1134:	6013      	str	r3, [r2, #0]
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1136:	bf00      	nop
    1138:	4b0b      	ldr	r3, [pc, #44]	; (1168 <set_sysclock+0x68>)
    113a:	681b      	ldr	r3, [r3, #0]
    113c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1140:	2b00      	cmp	r3, #0
    1142:	d0f9      	beq.n	1138 <set_sysclock+0x38>
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1144:	4a09      	ldr	r2, [pc, #36]	; (116c <set_sysclock+0x6c>)
    1146:	4b09      	ldr	r3, [pc, #36]	; (116c <set_sysclock+0x6c>)
    1148:	681b      	ldr	r3, [r3, #0]
    114a:	f043 0312 	orr.w	r3, r3, #18
    114e:	6013      	str	r3, [r2, #0]
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    1150:	4a05      	ldr	r2, [pc, #20]	; (1168 <set_sysclock+0x68>)
    1152:	4b05      	ldr	r3, [pc, #20]	; (1168 <set_sysclock+0x68>)
    1154:	685b      	ldr	r3, [r3, #4]
    1156:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    115a:	f043 0302 	orr.w	r3, r3, #2
    115e:	6053      	str	r3, [r2, #4]
}
    1160:	bf00      	nop
    1162:	46bd      	mov	sp, r7
    1164:	bc80      	pop	{r7}
    1166:	4770      	bx	lr
    1168:	40021000 	.word	0x40021000
    116c:	40022000 	.word	0x40022000

00001170 <main>:


extern void print_fault(const char *msg, sfrp_t adr);


void main(void){
    1170:	b580      	push	{r7, lr}
    1172:	b082      	sub	sp, #8
    1174:	af00      	add	r7, sp, #0
	set_sysclock();
    1176:	f7ff ffc3 	bl	1100 <set_sysclock>
	config_systicks();
    117a:	f001 f90b 	bl	2394 <config_systicks>
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    117e:	4b21      	ldr	r3, [pc, #132]	; (1204 <main+0x94>)
    1180:	f640 021d 	movw	r2, #2077	; 0x81d
    1184:	619a      	str	r2, [r3, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    1186:	2206      	movs	r2, #6
    1188:	210d      	movs	r1, #13
    118a:	481f      	ldr	r0, [pc, #124]	; (1208 <main+0x98>)
    118c:	f7ff fd31 	bl	bf2 <config_pin>
	_led_off();
    1190:	4a1d      	ldr	r2, [pc, #116]	; (1208 <main+0x98>)
    1192:	4b1d      	ldr	r3, [pc, #116]	; (1208 <main+0x98>)
    1194:	68db      	ldr	r3, [r3, #12]
    1196:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    119a:	60d3      	str	r3, [r2, #12]
	tvout_init();
    119c:	f001 f93a 	bl	2414 <tvout_init>
	gfx_cls();
    11a0:	f7ff ff56 	bl	1050 <gfx_cls>
	gfx_rectangle(0,0,HRES-1,VRES-1);
    11a4:	234b      	movs	r3, #75	; 0x4b
    11a6:	227f      	movs	r2, #127	; 0x7f
    11a8:	2100      	movs	r1, #0
    11aa:	2000      	movs	r0, #0
    11ac:	f7ff ff08 	bl	fc0 <gfx_rectangle>
	int x,y;
	for (x=26,y=1;x<(HRES-26);x++,y++)
    11b0:	231a      	movs	r3, #26
    11b2:	607b      	str	r3, [r7, #4]
    11b4:	2301      	movs	r3, #1
    11b6:	603b      	str	r3, [r7, #0]
    11b8:	e00a      	b.n	11d0 <main+0x60>
		{
			gfx_plot(x,y,1);
    11ba:	2201      	movs	r2, #1
    11bc:	6839      	ldr	r1, [r7, #0]
    11be:	6878      	ldr	r0, [r7, #4]
    11c0:	f7ff feb0 	bl	f24 <gfx_plot>
	for (x=26,y=1;x<(HRES-26);x++,y++)
    11c4:	687b      	ldr	r3, [r7, #4]
    11c6:	3301      	adds	r3, #1
    11c8:	607b      	str	r3, [r7, #4]
    11ca:	683b      	ldr	r3, [r7, #0]
    11cc:	3301      	adds	r3, #1
    11ce:	603b      	str	r3, [r7, #0]
    11d0:	687b      	ldr	r3, [r7, #4]
    11d2:	2b65      	cmp	r3, #101	; 0x65
    11d4:	ddf1      	ble.n	11ba <main+0x4a>
		}
	gfx_print("Hello world!\n");	
    11d6:	480d      	ldr	r0, [pc, #52]	; (120c <main+0x9c>)
    11d8:	f7ff fe0a 	bl	df0 <gfx_print>
	while(1){
		x=0;
    11dc:	2300      	movs	r3, #0
    11de:	607b      	str	r3, [r7, #4]
		timer=1000;
    11e0:	4b0b      	ldr	r3, [pc, #44]	; (1210 <main+0xa0>)
    11e2:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
    11e6:	601a      	str	r2, [r3, #0]
		while(timer)x++;
    11e8:	e002      	b.n	11f0 <main+0x80>
    11ea:	687b      	ldr	r3, [r7, #4]
    11ec:	3301      	adds	r3, #1
    11ee:	607b      	str	r3, [r7, #4]
    11f0:	4b07      	ldr	r3, [pc, #28]	; (1210 <main+0xa0>)
    11f2:	681b      	ldr	r3, [r3, #0]
    11f4:	2b00      	cmp	r3, #0
    11f6:	d1f8      	bne.n	11ea <main+0x7a>
		gfx_print_int(x,10);
    11f8:	210a      	movs	r1, #10
    11fa:	6878      	ldr	r0, [r7, #4]
    11fc:	f7ff fe1b 	bl	e36 <gfx_print_int>
		x=0;
    1200:	e7ec      	b.n	11dc <main+0x6c>
    1202:	bf00      	nop
    1204:	40021000 	.word	0x40021000
    1208:	40011000 	.word	0x40011000
    120c:	00002b48 	.word	0x00002b48
    1210:	2000045c 	.word	0x2000045c

00001214 <enable_interrupt>:

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
    1214:	b480      	push	{r7}
    1216:	b083      	sub	sp, #12
    1218:	af00      	add	r7, sp, #0
    121a:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    121c:	687b      	ldr	r3, [r7, #4]
    121e:	2b3b      	cmp	r3, #59	; 0x3b
    1220:	dc17      	bgt.n	1252 <enable_interrupt+0x3e>
	ISER[irq>>5]|=1<<(irq&0x1f);
    1222:	687b      	ldr	r3, [r7, #4]
    1224:	115b      	asrs	r3, r3, #5
    1226:	009b      	lsls	r3, r3, #2
    1228:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    122c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1230:	687a      	ldr	r2, [r7, #4]
    1232:	1152      	asrs	r2, r2, #5
    1234:	0092      	lsls	r2, r2, #2
    1236:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    123a:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    123e:	6812      	ldr	r2, [r2, #0]
    1240:	6879      	ldr	r1, [r7, #4]
    1242:	f001 011f 	and.w	r1, r1, #31
    1246:	2001      	movs	r0, #1
    1248:	fa00 f101 	lsl.w	r1, r0, r1
    124c:	430a      	orrs	r2, r1
    124e:	601a      	str	r2, [r3, #0]
    1250:	e000      	b.n	1254 <enable_interrupt+0x40>
	if (irq>LAST_IRQ) return ;
    1252:	bf00      	nop
}
    1254:	370c      	adds	r7, #12
    1256:	46bd      	mov	sp, r7
    1258:	bc80      	pop	{r7}
    125a:	4770      	bx	lr

0000125c <disable_interrupt>:


void disable_interrupt(int irq){
    125c:	b480      	push	{r7}
    125e:	b083      	sub	sp, #12
    1260:	af00      	add	r7, sp, #0
    1262:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    1264:	687b      	ldr	r3, [r7, #4]
    1266:	2b3b      	cmp	r3, #59	; 0x3b
    1268:	dc0c      	bgt.n	1284 <disable_interrupt+0x28>
	ICER[irq>>5]=(1<<(irq&0x1f));
    126a:	687b      	ldr	r3, [r7, #4]
    126c:	115b      	asrs	r3, r3, #5
    126e:	009a      	lsls	r2, r3, #2
    1270:	4b07      	ldr	r3, [pc, #28]	; (1290 <disable_interrupt+0x34>)
    1272:	4413      	add	r3, r2
    1274:	687a      	ldr	r2, [r7, #4]
    1276:	f002 021f 	and.w	r2, r2, #31
    127a:	2101      	movs	r1, #1
    127c:	fa01 f202 	lsl.w	r2, r1, r2
    1280:	601a      	str	r2, [r3, #0]
    1282:	e000      	b.n	1286 <disable_interrupt+0x2a>
	if (irq>LAST_IRQ) return ;
    1284:	bf00      	nop
}
    1286:	370c      	adds	r7, #12
    1288:	46bd      	mov	sp, r7
    128a:	bc80      	pop	{r7}
    128c:	4770      	bx	lr
    128e:	bf00      	nop
    1290:	e000e180 	.word	0xe000e180

00001294 <get_pending>:

unsigned get_pending(int irq){
    1294:	b480      	push	{r7}
    1296:	b083      	sub	sp, #12
    1298:	af00      	add	r7, sp, #0
    129a:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    129c:	687b      	ldr	r3, [r7, #4]
    129e:	2b3b      	cmp	r3, #59	; 0x3b
    12a0:	dd01      	ble.n	12a6 <get_pending+0x12>
    12a2:	2300      	movs	r3, #0
    12a4:	e00c      	b.n	12c0 <get_pending+0x2c>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    12a6:	687b      	ldr	r3, [r7, #4]
    12a8:	115b      	asrs	r3, r3, #5
    12aa:	009a      	lsls	r2, r3, #2
    12ac:	4b07      	ldr	r3, [pc, #28]	; (12cc <get_pending+0x38>)
    12ae:	4413      	add	r3, r2
    12b0:	681b      	ldr	r3, [r3, #0]
    12b2:	687a      	ldr	r2, [r7, #4]
    12b4:	f002 021f 	and.w	r2, r2, #31
    12b8:	2101      	movs	r1, #1
    12ba:	fa01 f202 	lsl.w	r2, r1, r2
    12be:	4013      	ands	r3, r2
}
    12c0:	4618      	mov	r0, r3
    12c2:	370c      	adds	r7, #12
    12c4:	46bd      	mov	sp, r7
    12c6:	bc80      	pop	{r7}
    12c8:	4770      	bx	lr
    12ca:	bf00      	nop
    12cc:	e000e280 	.word	0xe000e280

000012d0 <get_active>:

unsigned get_active(int irq){
    12d0:	b480      	push	{r7}
    12d2:	b083      	sub	sp, #12
    12d4:	af00      	add	r7, sp, #0
    12d6:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    12d8:	687b      	ldr	r3, [r7, #4]
    12da:	2b3b      	cmp	r3, #59	; 0x3b
    12dc:	dd01      	ble.n	12e2 <get_active+0x12>
    12de:	2300      	movs	r3, #0
    12e0:	e00e      	b.n	1300 <get_active+0x30>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    12e2:	687b      	ldr	r3, [r7, #4]
    12e4:	115b      	asrs	r3, r3, #5
    12e6:	009b      	lsls	r3, r3, #2
    12e8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    12ec:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    12f0:	681b      	ldr	r3, [r3, #0]
    12f2:	687a      	ldr	r2, [r7, #4]
    12f4:	f002 021f 	and.w	r2, r2, #31
    12f8:	2101      	movs	r1, #1
    12fa:	fa01 f202 	lsl.w	r2, r1, r2
    12fe:	4013      	ands	r3, r2
}
    1300:	4618      	mov	r0, r3
    1302:	370c      	adds	r7, #12
    1304:	46bd      	mov	sp, r7
    1306:	bc80      	pop	{r7}
    1308:	4770      	bx	lr

0000130a <set_pending>:

void set_pending(int irq){
    130a:	b480      	push	{r7}
    130c:	b083      	sub	sp, #12
    130e:	af00      	add	r7, sp, #0
    1310:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    1312:	687b      	ldr	r3, [r7, #4]
    1314:	2b3b      	cmp	r3, #59	; 0x3b
    1316:	dc17      	bgt.n	1348 <set_pending+0x3e>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1318:	687b      	ldr	r3, [r7, #4]
    131a:	115b      	asrs	r3, r3, #5
    131c:	009b      	lsls	r3, r3, #2
    131e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1322:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1326:	687a      	ldr	r2, [r7, #4]
    1328:	1152      	asrs	r2, r2, #5
    132a:	0092      	lsls	r2, r2, #2
    132c:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1330:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    1334:	6812      	ldr	r2, [r2, #0]
    1336:	6879      	ldr	r1, [r7, #4]
    1338:	f001 011f 	and.w	r1, r1, #31
    133c:	2001      	movs	r0, #1
    133e:	fa00 f101 	lsl.w	r1, r0, r1
    1342:	430a      	orrs	r2, r1
    1344:	601a      	str	r2, [r3, #0]
    1346:	e000      	b.n	134a <set_pending+0x40>
	if (irq>LAST_IRQ) return;
    1348:	bf00      	nop
}
    134a:	370c      	adds	r7, #12
    134c:	46bd      	mov	sp, r7
    134e:	bc80      	pop	{r7}
    1350:	4770      	bx	lr

00001352 <clear_pending>:

void clear_pending(int irq){
    1352:	b480      	push	{r7}
    1354:	b083      	sub	sp, #12
    1356:	af00      	add	r7, sp, #0
    1358:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    135a:	687b      	ldr	r3, [r7, #4]
    135c:	2b3b      	cmp	r3, #59	; 0x3b
    135e:	dc0c      	bgt.n	137a <clear_pending+0x28>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    1360:	687b      	ldr	r3, [r7, #4]
    1362:	115b      	asrs	r3, r3, #5
    1364:	009a      	lsls	r2, r3, #2
    1366:	4b07      	ldr	r3, [pc, #28]	; (1384 <clear_pending+0x32>)
    1368:	4413      	add	r3, r2
    136a:	687a      	ldr	r2, [r7, #4]
    136c:	f002 021f 	and.w	r2, r2, #31
    1370:	2101      	movs	r1, #1
    1372:	fa01 f202 	lsl.w	r2, r1, r2
    1376:	601a      	str	r2, [r3, #0]
    1378:	e000      	b.n	137c <clear_pending+0x2a>
	if (irq>LAST_IRQ) return;
    137a:	bf00      	nop
}
    137c:	370c      	adds	r7, #12
    137e:	46bd      	mov	sp, r7
    1380:	bc80      	pop	{r7}
    1382:	4770      	bx	lr
    1384:	e000e280 	.word	0xe000e280

00001388 <set_int_priority>:

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
    1388:	b480      	push	{r7}
    138a:	b083      	sub	sp, #12
    138c:	af00      	add	r7, sp, #0
    138e:	6078      	str	r0, [r7, #4]
    1390:	6039      	str	r1, [r7, #0]
	if ((irq>=0) && (irq<=LAST_IRQ)){
    1392:	687b      	ldr	r3, [r7, #4]
    1394:	2b00      	cmp	r3, #0
    1396:	db0d      	blt.n	13b4 <set_int_priority+0x2c>
    1398:	687b      	ldr	r3, [r7, #4]
    139a:	2b3b      	cmp	r3, #59	; 0x3b
    139c:	dc0a      	bgt.n	13b4 <set_int_priority+0x2c>
		IPR[irq]=(uint8_t)((priority&15)<<4);
    139e:	687b      	ldr	r3, [r7, #4]
    13a0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    13a4:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    13a8:	683a      	ldr	r2, [r7, #0]
    13aa:	b2d2      	uxtb	r2, r2
    13ac:	0112      	lsls	r2, r2, #4
    13ae:	b2d2      	uxtb	r2, r2
    13b0:	701a      	strb	r2, [r3, #0]
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
    13b2:	e012      	b.n	13da <set_int_priority+0x52>
	}else if ((irq<0) && (irq>-16)){
    13b4:	687b      	ldr	r3, [r7, #4]
    13b6:	2b00      	cmp	r3, #0
    13b8:	da0f      	bge.n	13da <set_int_priority+0x52>
    13ba:	687b      	ldr	r3, [r7, #4]
    13bc:	f113 0f0f 	cmn.w	r3, #15
    13c0:	db0b      	blt.n	13da <set_int_priority+0x52>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    13c2:	687a      	ldr	r2, [r7, #4]
    13c4:	f06f 0303 	mvn.w	r3, #3
    13c8:	1a9b      	subs	r3, r3, r2
    13ca:	461a      	mov	r2, r3
    13cc:	4b05      	ldr	r3, [pc, #20]	; (13e4 <set_int_priority+0x5c>)
    13ce:	4413      	add	r3, r2
    13d0:	683a      	ldr	r2, [r7, #0]
    13d2:	b2d2      	uxtb	r2, r2
    13d4:	0112      	lsls	r2, r2, #4
    13d6:	b2d2      	uxtb	r2, r2
    13d8:	701a      	strb	r2, [r3, #0]
}
    13da:	bf00      	nop
    13dc:	370c      	adds	r7, #12
    13de:	46bd      	mov	sp, r7
    13e0:	bc80      	pop	{r7}
    13e2:	4770      	bx	lr
    13e4:	e000ed18 	.word	0xe000ed18

000013e8 <leap_year>:
#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
    13e8:	b480      	push	{r7}
    13ea:	b083      	sub	sp, #12
    13ec:	af00      	add	r7, sp, #0
    13ee:	6078      	str	r0, [r7, #4]
	if (!(y&3)){
    13f0:	687b      	ldr	r3, [r7, #4]
    13f2:	f003 0303 	and.w	r3, r3, #3
    13f6:	2b00      	cmp	r3, #0
    13f8:	d11a      	bne.n	1430 <leap_year+0x48>
		if ((y%100==0) && (y%400)){
    13fa:	687a      	ldr	r2, [r7, #4]
    13fc:	4b0f      	ldr	r3, [pc, #60]	; (143c <leap_year+0x54>)
    13fe:	fba3 1302 	umull	r1, r3, r3, r2
    1402:	095b      	lsrs	r3, r3, #5
    1404:	2164      	movs	r1, #100	; 0x64
    1406:	fb01 f303 	mul.w	r3, r1, r3
    140a:	1ad3      	subs	r3, r2, r3
    140c:	2b00      	cmp	r3, #0
    140e:	d10d      	bne.n	142c <leap_year+0x44>
    1410:	687a      	ldr	r2, [r7, #4]
    1412:	4b0a      	ldr	r3, [pc, #40]	; (143c <leap_year+0x54>)
    1414:	fba3 1302 	umull	r1, r3, r3, r2
    1418:	09db      	lsrs	r3, r3, #7
    141a:	f44f 71c8 	mov.w	r1, #400	; 0x190
    141e:	fb01 f303 	mul.w	r3, r1, r3
    1422:	1ad3      	subs	r3, r2, r3
    1424:	2b00      	cmp	r3, #0
    1426:	d001      	beq.n	142c <leap_year+0x44>
			return 0;
    1428:	2300      	movs	r3, #0
    142a:	e002      	b.n	1432 <leap_year+0x4a>
		}
		return 1;
    142c:	2301      	movs	r3, #1
    142e:	e000      	b.n	1432 <leap_year+0x4a>
	}
	return 0;
    1430:	2300      	movs	r3, #0
}
    1432:	4618      	mov	r0, r3
    1434:	370c      	adds	r7, #12
    1436:	46bd      	mov	sp, r7
    1438:	bc80      	pop	{r7}
    143a:	4770      	bx	lr
    143c:	51eb851f 	.word	0x51eb851f

00001440 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
    1440:	b480      	push	{r7}
    1442:	b085      	sub	sp, #20
    1444:	af00      	add	r7, sp, #0
    1446:	6078      	str	r0, [r7, #4]
    1448:	6039      	str	r1, [r7, #0]
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    144a:	4a0d      	ldr	r2, [pc, #52]	; (1480 <sec_per_month+0x40>)
    144c:	683b      	ldr	r3, [r7, #0]
    144e:	4413      	add	r3, r2
    1450:	781b      	ldrb	r3, [r3, #0]
    1452:	461a      	mov	r2, r3
    1454:	4b0b      	ldr	r3, [pc, #44]	; (1484 <sec_per_month+0x44>)
    1456:	fb03 f302 	mul.w	r3, r3, r2
    145a:	60fb      	str	r3, [r7, #12]
	if (month==2 && leap){
    145c:	683b      	ldr	r3, [r7, #0]
    145e:	2b02      	cmp	r3, #2
    1460:	d108      	bne.n	1474 <sec_per_month+0x34>
    1462:	687b      	ldr	r3, [r7, #4]
    1464:	2b00      	cmp	r3, #0
    1466:	d005      	beq.n	1474 <sec_per_month+0x34>
		sec+=SEC_PER_DAY;
    1468:	68fb      	ldr	r3, [r7, #12]
    146a:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    146e:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    1472:	60fb      	str	r3, [r7, #12]
	}
	return sec;
    1474:	68fb      	ldr	r3, [r7, #12]
}
    1476:	4618      	mov	r0, r3
    1478:	3714      	adds	r7, #20
    147a:	46bd      	mov	sp, r7
    147c:	bc80      	pop	{r7}
    147e:	4770      	bx	lr
    1480:	00002c08 	.word	0x00002c08
    1484:	00015180 	.word	0x00015180

00001488 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1488:	b580      	push	{r7, lr}
    148a:	b086      	sub	sp, #24
    148c:	af00      	add	r7, sp, #0
    148e:	6078      	str	r0, [r7, #4]
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    1490:	4b66      	ldr	r3, [pc, #408]	; (162c <get_date_time+0x1a4>)
    1492:	699b      	ldr	r3, [r3, #24]
    1494:	041a      	lsls	r2, r3, #16
    1496:	4b65      	ldr	r3, [pc, #404]	; (162c <get_date_time+0x1a4>)
    1498:	69db      	ldr	r3, [r3, #28]
    149a:	4413      	add	r3, r2
    149c:	617b      	str	r3, [r7, #20]
	dt->year=EPOCH_YEAR;
    149e:	687b      	ldr	r3, [r7, #4]
    14a0:	f240 72b2 	movw	r2, #1970	; 0x7b2
    14a4:	811a      	strh	r2, [r3, #8]
	leap=leap_year(EPOCH_YEAR);
    14a6:	f240 70b2 	movw	r0, #1970	; 0x7b2
    14aa:	f7ff ff9d 	bl	13e8 <leap_year>
    14ae:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    14b0:	e019      	b.n	14e6 <get_date_time+0x5e>
		if (leap){
    14b2:	693b      	ldr	r3, [r7, #16]
    14b4:	2b00      	cmp	r3, #0
    14b6:	d006      	beq.n	14c6 <get_date_time+0x3e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    14b8:	697b      	ldr	r3, [r7, #20]
    14ba:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    14be:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    14c2:	617b      	str	r3, [r7, #20]
    14c4:	e003      	b.n	14ce <get_date_time+0x46>
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    14c6:	697a      	ldr	r2, [r7, #20]
    14c8:	4b59      	ldr	r3, [pc, #356]	; (1630 <get_date_time+0x1a8>)
    14ca:	4413      	add	r3, r2
    14cc:	617b      	str	r3, [r7, #20]
		}
		dt->year++;
    14ce:	687b      	ldr	r3, [r7, #4]
    14d0:	891b      	ldrh	r3, [r3, #8]
    14d2:	3301      	adds	r3, #1
    14d4:	b29a      	uxth	r2, r3
    14d6:	687b      	ldr	r3, [r7, #4]
    14d8:	811a      	strh	r2, [r3, #8]
		leap=leap_year(dt->year);
    14da:	687b      	ldr	r3, [r7, #4]
    14dc:	891b      	ldrh	r3, [r3, #8]
    14de:	4618      	mov	r0, r3
    14e0:	f7ff ff82 	bl	13e8 <leap_year>
    14e4:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    14e6:	693b      	ldr	r3, [r7, #16]
    14e8:	2b00      	cmp	r3, #0
    14ea:	d103      	bne.n	14f4 <get_date_time+0x6c>
    14ec:	697b      	ldr	r3, [r7, #20]
    14ee:	4a51      	ldr	r2, [pc, #324]	; (1634 <get_date_time+0x1ac>)
    14f0:	4293      	cmp	r3, r2
    14f2:	d8de      	bhi.n	14b2 <get_date_time+0x2a>
    14f4:	693b      	ldr	r3, [r7, #16]
    14f6:	2b00      	cmp	r3, #0
    14f8:	d003      	beq.n	1502 <get_date_time+0x7a>
    14fa:	697b      	ldr	r3, [r7, #20]
    14fc:	4a4e      	ldr	r2, [pc, #312]	; (1638 <get_date_time+0x1b0>)
    14fe:	4293      	cmp	r3, r2
    1500:	d8d7      	bhi.n	14b2 <get_date_time+0x2a>
	}//while
	dt->month=1;
    1502:	687a      	ldr	r2, [r7, #4]
    1504:	8853      	ldrh	r3, [r2, #2]
    1506:	2101      	movs	r1, #1
    1508:	f361 1389 	bfi	r3, r1, #6, #4
    150c:	8053      	strh	r3, [r2, #2]
	dt->day=1;
    150e:	687a      	ldr	r2, [r7, #4]
    1510:	7893      	ldrb	r3, [r2, #2]
    1512:	2101      	movs	r1, #1
    1514:	f361 0345 	bfi	r3, r1, #1, #5
    1518:	7093      	strb	r3, [r2, #2]
	dt->hour=0;
    151a:	687a      	ldr	r2, [r7, #4]
    151c:	6813      	ldr	r3, [r2, #0]
    151e:	f36f 3310 	bfc	r3, #12, #5
    1522:	6013      	str	r3, [r2, #0]
	dt->minute=0;
    1524:	687a      	ldr	r2, [r7, #4]
    1526:	8813      	ldrh	r3, [r2, #0]
    1528:	f36f 138b 	bfc	r3, #6, #6
    152c:	8013      	strh	r3, [r2, #0]
	dt->second=0;
    152e:	687a      	ldr	r2, [r7, #4]
    1530:	7813      	ldrb	r3, [r2, #0]
    1532:	f36f 0305 	bfc	r3, #0, #6
    1536:	7013      	strb	r3, [r2, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1538:	e011      	b.n	155e <get_date_time+0xd6>
		dt->month++;
    153a:	687b      	ldr	r3, [r7, #4]
    153c:	885b      	ldrh	r3, [r3, #2]
    153e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1542:	b2db      	uxtb	r3, r3
    1544:	3301      	adds	r3, #1
    1546:	f003 030f 	and.w	r3, r3, #15
    154a:	b2d9      	uxtb	r1, r3
    154c:	687a      	ldr	r2, [r7, #4]
    154e:	8853      	ldrh	r3, [r2, #2]
    1550:	f361 1389 	bfi	r3, r1, #6, #4
    1554:	8053      	strh	r3, [r2, #2]
		rtc_cntr-=sec;
    1556:	697a      	ldr	r2, [r7, #20]
    1558:	68fb      	ldr	r3, [r7, #12]
    155a:	1ad3      	subs	r3, r2, r3
    155c:	617b      	str	r3, [r7, #20]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    155e:	687b      	ldr	r3, [r7, #4]
    1560:	885b      	ldrh	r3, [r3, #2]
    1562:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1566:	b2db      	uxtb	r3, r3
    1568:	4619      	mov	r1, r3
    156a:	6938      	ldr	r0, [r7, #16]
    156c:	f7ff ff68 	bl	1440 <sec_per_month>
    1570:	60f8      	str	r0, [r7, #12]
    1572:	68fa      	ldr	r2, [r7, #12]
    1574:	697b      	ldr	r3, [r7, #20]
    1576:	429a      	cmp	r2, r3
    1578:	d3df      	bcc.n	153a <get_date_time+0xb2>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    157a:	697b      	ldr	r3, [r7, #20]
    157c:	4a2f      	ldr	r2, [pc, #188]	; (163c <get_date_time+0x1b4>)
    157e:	fba2 2303 	umull	r2, r3, r2, r3
    1582:	0c1b      	lsrs	r3, r3, #16
    1584:	b2db      	uxtb	r3, r3
    1586:	3301      	adds	r3, #1
    1588:	b2db      	uxtb	r3, r3
    158a:	f003 031f 	and.w	r3, r3, #31
    158e:	b2d9      	uxtb	r1, r3
    1590:	687a      	ldr	r2, [r7, #4]
    1592:	7893      	ldrb	r3, [r2, #2]
    1594:	f361 0345 	bfi	r3, r1, #1, #5
    1598:	7093      	strb	r3, [r2, #2]
	rtc_cntr%=SEC_PER_DAY;
    159a:	697b      	ldr	r3, [r7, #20]
    159c:	4a27      	ldr	r2, [pc, #156]	; (163c <get_date_time+0x1b4>)
    159e:	fba2 1203 	umull	r1, r2, r2, r3
    15a2:	0c12      	lsrs	r2, r2, #16
    15a4:	4926      	ldr	r1, [pc, #152]	; (1640 <get_date_time+0x1b8>)
    15a6:	fb01 f202 	mul.w	r2, r1, r2
    15aa:	1a9b      	subs	r3, r3, r2
    15ac:	617b      	str	r3, [r7, #20]
	dt->hour=rtc_cntr/SEC_PER_HR;
    15ae:	697b      	ldr	r3, [r7, #20]
    15b0:	4a24      	ldr	r2, [pc, #144]	; (1644 <get_date_time+0x1bc>)
    15b2:	fba2 2303 	umull	r2, r3, r2, r3
    15b6:	0adb      	lsrs	r3, r3, #11
    15b8:	b2db      	uxtb	r3, r3
    15ba:	f003 031f 	and.w	r3, r3, #31
    15be:	b2d9      	uxtb	r1, r3
    15c0:	687a      	ldr	r2, [r7, #4]
    15c2:	6813      	ldr	r3, [r2, #0]
    15c4:	f361 3310 	bfi	r3, r1, #12, #5
    15c8:	6013      	str	r3, [r2, #0]
	rtc_cntr%=SEC_PER_HR;
    15ca:	697b      	ldr	r3, [r7, #20]
    15cc:	4a1d      	ldr	r2, [pc, #116]	; (1644 <get_date_time+0x1bc>)
    15ce:	fba2 1203 	umull	r1, r2, r2, r3
    15d2:	0ad2      	lsrs	r2, r2, #11
    15d4:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    15d8:	fb01 f202 	mul.w	r2, r1, r2
    15dc:	1a9b      	subs	r3, r3, r2
    15de:	617b      	str	r3, [r7, #20]
	dt->minute=rtc_cntr/SEC_PER_MIN;
    15e0:	697b      	ldr	r3, [r7, #20]
    15e2:	4a19      	ldr	r2, [pc, #100]	; (1648 <get_date_time+0x1c0>)
    15e4:	fba2 2303 	umull	r2, r3, r2, r3
    15e8:	095b      	lsrs	r3, r3, #5
    15ea:	b2db      	uxtb	r3, r3
    15ec:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    15f0:	b2d9      	uxtb	r1, r3
    15f2:	687a      	ldr	r2, [r7, #4]
    15f4:	8813      	ldrh	r3, [r2, #0]
    15f6:	f361 138b 	bfi	r3, r1, #6, #6
    15fa:	8013      	strh	r3, [r2, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    15fc:	6979      	ldr	r1, [r7, #20]
    15fe:	4b12      	ldr	r3, [pc, #72]	; (1648 <get_date_time+0x1c0>)
    1600:	fba3 2301 	umull	r2, r3, r3, r1
    1604:	095a      	lsrs	r2, r3, #5
    1606:	4613      	mov	r3, r2
    1608:	011b      	lsls	r3, r3, #4
    160a:	1a9b      	subs	r3, r3, r2
    160c:	009b      	lsls	r3, r3, #2
    160e:	1aca      	subs	r2, r1, r3
    1610:	b2d3      	uxtb	r3, r2
    1612:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1616:	b2d9      	uxtb	r1, r3
    1618:	687a      	ldr	r2, [r7, #4]
    161a:	7813      	ldrb	r3, [r2, #0]
    161c:	f361 0305 	bfi	r3, r1, #0, #6
    1620:	7013      	strb	r3, [r2, #0]
}
    1622:	bf00      	nop
    1624:	3718      	adds	r7, #24
    1626:	46bd      	mov	sp, r7
    1628:	bd80      	pop	{r7, pc}
    162a:	bf00      	nop
    162c:	40002800 	.word	0x40002800
    1630:	fe1ecc80 	.word	0xfe1ecc80
    1634:	01e1337f 	.word	0x01e1337f
    1638:	01e284ff 	.word	0x01e284ff
    163c:	c22e4507 	.word	0xc22e4507
    1640:	00015180 	.word	0x00015180
    1644:	91a2b3c5 	.word	0x91a2b3c5
    1648:	88888889 	.word	0x88888889

0000164c <set_date_time>:

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    164c:	b580      	push	{r7, lr}
    164e:	b086      	sub	sp, #24
    1650:	af00      	add	r7, sp, #0
    1652:	6078      	str	r0, [r7, #4]
	uint32_t i,rtc_cntr=0;
    1654:	2300      	movs	r3, #0
    1656:	613b      	str	r3, [r7, #16]
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    1658:	687b      	ldr	r3, [r7, #4]
    165a:	891b      	ldrh	r3, [r3, #8]
    165c:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1660:	4293      	cmp	r3, r2
    1662:	d803      	bhi.n	166c <set_date_time+0x20>
    1664:	687b      	ldr	r3, [r7, #4]
    1666:	f240 72b2 	movw	r2, #1970	; 0x7b2
    166a:	811a      	strh	r2, [r3, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    166c:	687b      	ldr	r3, [r7, #4]
    166e:	891b      	ldrh	r3, [r3, #8]
    1670:	f640 023a 	movw	r2, #2106	; 0x83a
    1674:	4293      	cmp	r3, r2
    1676:	d903      	bls.n	1680 <set_date_time+0x34>
    1678:	687b      	ldr	r3, [r7, #4]
    167a:	f640 023a 	movw	r2, #2106	; 0x83a
    167e:	811a      	strh	r2, [r3, #8]
	leap=leap_year(dt->year);
    1680:	687b      	ldr	r3, [r7, #4]
    1682:	891b      	ldrh	r3, [r3, #8]
    1684:	4618      	mov	r0, r3
    1686:	f7ff feaf 	bl	13e8 <leap_year>
    168a:	60f8      	str	r0, [r7, #12]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    168c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1690:	617b      	str	r3, [r7, #20]
    1692:	e013      	b.n	16bc <set_date_time+0x70>
		if (leap_year(i)){
    1694:	6978      	ldr	r0, [r7, #20]
    1696:	f7ff fea7 	bl	13e8 <leap_year>
    169a:	4603      	mov	r3, r0
    169c:	2b00      	cmp	r3, #0
    169e:	d006      	beq.n	16ae <set_date_time+0x62>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    16a0:	693b      	ldr	r3, [r7, #16]
    16a2:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    16a6:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    16aa:	613b      	str	r3, [r7, #16]
    16ac:	e003      	b.n	16b6 <set_date_time+0x6a>
		}else{
			rtc_cntr+=SEC_PER_YEAR;
    16ae:	693a      	ldr	r2, [r7, #16]
    16b0:	4b42      	ldr	r3, [pc, #264]	; (17bc <set_date_time+0x170>)
    16b2:	4413      	add	r3, r2
    16b4:	613b      	str	r3, [r7, #16]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    16b6:	697b      	ldr	r3, [r7, #20]
    16b8:	3301      	adds	r3, #1
    16ba:	617b      	str	r3, [r7, #20]
    16bc:	687b      	ldr	r3, [r7, #4]
    16be:	891b      	ldrh	r3, [r3, #8]
    16c0:	461a      	mov	r2, r3
    16c2:	697b      	ldr	r3, [r7, #20]
    16c4:	429a      	cmp	r2, r3
    16c6:	d8e5      	bhi.n	1694 <set_date_time+0x48>
		}
	}
	for (i=1;i<dt->month;i++){
    16c8:	2301      	movs	r3, #1
    16ca:	617b      	str	r3, [r7, #20]
    16cc:	e00a      	b.n	16e4 <set_date_time+0x98>
		rtc_cntr+=sec_per_month(leap,i);
    16ce:	6979      	ldr	r1, [r7, #20]
    16d0:	68f8      	ldr	r0, [r7, #12]
    16d2:	f7ff feb5 	bl	1440 <sec_per_month>
    16d6:	4602      	mov	r2, r0
    16d8:	693b      	ldr	r3, [r7, #16]
    16da:	4413      	add	r3, r2
    16dc:	613b      	str	r3, [r7, #16]
	for (i=1;i<dt->month;i++){
    16de:	697b      	ldr	r3, [r7, #20]
    16e0:	3301      	adds	r3, #1
    16e2:	617b      	str	r3, [r7, #20]
    16e4:	687b      	ldr	r3, [r7, #4]
    16e6:	885b      	ldrh	r3, [r3, #2]
    16e8:	f3c3 1383 	ubfx	r3, r3, #6, #4
    16ec:	b2db      	uxtb	r3, r3
    16ee:	461a      	mov	r2, r3
    16f0:	697b      	ldr	r3, [r7, #20]
    16f2:	429a      	cmp	r2, r3
    16f4:	d8eb      	bhi.n	16ce <set_date_time+0x82>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    16f6:	687b      	ldr	r3, [r7, #4]
    16f8:	789b      	ldrb	r3, [r3, #2]
    16fa:	f3c3 0344 	ubfx	r3, r3, #1, #5
    16fe:	b2db      	uxtb	r3, r3
    1700:	3b01      	subs	r3, #1
    1702:	4a2f      	ldr	r2, [pc, #188]	; (17c0 <set_date_time+0x174>)
    1704:	fb02 f303 	mul.w	r3, r2, r3
    1708:	461a      	mov	r2, r3
    170a:	693b      	ldr	r3, [r7, #16]
    170c:	4413      	add	r3, r2
    170e:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    1710:	687b      	ldr	r3, [r7, #4]
    1712:	681b      	ldr	r3, [r3, #0]
    1714:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1718:	b2db      	uxtb	r3, r3
    171a:	461a      	mov	r2, r3
    171c:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    1720:	fb03 f302 	mul.w	r3, r3, r2
    1724:	461a      	mov	r2, r3
    1726:	693b      	ldr	r3, [r7, #16]
    1728:	4413      	add	r3, r2
    172a:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    172c:	687b      	ldr	r3, [r7, #4]
    172e:	881b      	ldrh	r3, [r3, #0]
    1730:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1734:	b2db      	uxtb	r3, r3
    1736:	461a      	mov	r2, r3
    1738:	4613      	mov	r3, r2
    173a:	011b      	lsls	r3, r3, #4
    173c:	1a9b      	subs	r3, r3, r2
    173e:	009b      	lsls	r3, r3, #2
    1740:	461a      	mov	r2, r3
    1742:	693b      	ldr	r3, [r7, #16]
    1744:	4413      	add	r3, r2
    1746:	613b      	str	r3, [r7, #16]
	rtc_cntr+=dt->second;
    1748:	687b      	ldr	r3, [r7, #4]
    174a:	781b      	ldrb	r3, [r3, #0]
    174c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1750:	b2db      	uxtb	r3, r3
    1752:	461a      	mov	r2, r3
    1754:	693b      	ldr	r3, [r7, #16]
    1756:	4413      	add	r3, r2
    1758:	613b      	str	r3, [r7, #16]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    175a:	4a1a      	ldr	r2, [pc, #104]	; (17c4 <set_date_time+0x178>)
    175c:	4b19      	ldr	r3, [pc, #100]	; (17c4 <set_date_time+0x178>)
    175e:	69db      	ldr	r3, [r3, #28]
    1760:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1764:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1766:	4a18      	ldr	r2, [pc, #96]	; (17c8 <set_date_time+0x17c>)
    1768:	4b17      	ldr	r3, [pc, #92]	; (17c8 <set_date_time+0x17c>)
    176a:	681b      	ldr	r3, [r3, #0]
    176c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1770:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1772:	4a16      	ldr	r2, [pc, #88]	; (17cc <set_date_time+0x180>)
    1774:	4b15      	ldr	r3, [pc, #84]	; (17cc <set_date_time+0x180>)
    1776:	685b      	ldr	r3, [r3, #4]
    1778:	f043 0310 	orr.w	r3, r3, #16
    177c:	6053      	str	r3, [r2, #4]
	RTC->CNTH=rtc_cntr>>16;
    177e:	4a13      	ldr	r2, [pc, #76]	; (17cc <set_date_time+0x180>)
    1780:	693b      	ldr	r3, [r7, #16]
    1782:	0c1b      	lsrs	r3, r3, #16
    1784:	6193      	str	r3, [r2, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    1786:	4a11      	ldr	r2, [pc, #68]	; (17cc <set_date_time+0x180>)
    1788:	693b      	ldr	r3, [r7, #16]
    178a:	b29b      	uxth	r3, r3
    178c:	61d3      	str	r3, [r2, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    178e:	4a0f      	ldr	r2, [pc, #60]	; (17cc <set_date_time+0x180>)
    1790:	4b0e      	ldr	r3, [pc, #56]	; (17cc <set_date_time+0x180>)
    1792:	685b      	ldr	r3, [r3, #4]
    1794:	f023 0310 	bic.w	r3, r3, #16
    1798:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    179a:	bf00      	nop
    179c:	4b0b      	ldr	r3, [pc, #44]	; (17cc <set_date_time+0x180>)
    179e:	685b      	ldr	r3, [r3, #4]
    17a0:	f003 0320 	and.w	r3, r3, #32
    17a4:	2b00      	cmp	r3, #0
    17a6:	d0f9      	beq.n	179c <set_date_time+0x150>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    17a8:	4a07      	ldr	r2, [pc, #28]	; (17c8 <set_date_time+0x17c>)
    17aa:	4b07      	ldr	r3, [pc, #28]	; (17c8 <set_date_time+0x17c>)
    17ac:	681b      	ldr	r3, [r3, #0]
    17ae:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    17b2:	6013      	str	r3, [r2, #0]
}
    17b4:	bf00      	nop
    17b6:	3718      	adds	r7, #24
    17b8:	46bd      	mov	sp, r7
    17ba:	bd80      	pop	{r7, pc}
    17bc:	01e13380 	.word	0x01e13380
    17c0:	00015180 	.word	0x00015180
    17c4:	40021000 	.word	0x40021000
    17c8:	40007000 	.word	0x40007000
    17cc:	40002800 	.word	0x40002800

000017d0 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    17d0:	b580      	push	{r7, lr}
    17d2:	b082      	sub	sp, #8
    17d4:	af00      	add	r7, sp, #0
    17d6:	6078      	str	r0, [r7, #4]
    17d8:	6039      	str	r1, [r7, #0]
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    17da:	4b4a      	ldr	r3, [pc, #296]	; (1904 <rtc_init+0x134>)
    17dc:	685b      	ldr	r3, [r3, #4]
    17de:	f64a 2255 	movw	r2, #43605	; 0xaa55
    17e2:	4293      	cmp	r3, r2
    17e4:	f000 8082 	beq.w	18ec <rtc_init+0x11c>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    17e8:	4a47      	ldr	r2, [pc, #284]	; (1908 <rtc_init+0x138>)
    17ea:	4b47      	ldr	r3, [pc, #284]	; (1908 <rtc_init+0x138>)
    17ec:	69db      	ldr	r3, [r3, #28]
    17ee:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    17f2:	61d3      	str	r3, [r2, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    17f4:	4a45      	ldr	r2, [pc, #276]	; (190c <rtc_init+0x13c>)
    17f6:	4b45      	ldr	r3, [pc, #276]	; (190c <rtc_init+0x13c>)
    17f8:	681b      	ldr	r3, [r3, #0]
    17fa:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    17fe:	6013      	str	r3, [r2, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    1800:	4a41      	ldr	r2, [pc, #260]	; (1908 <rtc_init+0x138>)
    1802:	4b41      	ldr	r3, [pc, #260]	; (1908 <rtc_init+0x138>)
    1804:	6a1b      	ldr	r3, [r3, #32]
    1806:	f043 0301 	orr.w	r3, r3, #1
    180a:	6213      	str	r3, [r2, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    180c:	bf00      	nop
    180e:	4b3e      	ldr	r3, [pc, #248]	; (1908 <rtc_init+0x138>)
    1810:	6a1b      	ldr	r3, [r3, #32]
    1812:	f003 0302 	and.w	r3, r3, #2
    1816:	2b00      	cmp	r3, #0
    1818:	d0f9      	beq.n	180e <rtc_init+0x3e>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    181a:	4a3b      	ldr	r2, [pc, #236]	; (1908 <rtc_init+0x138>)
    181c:	4b3a      	ldr	r3, [pc, #232]	; (1908 <rtc_init+0x138>)
    181e:	6a1b      	ldr	r3, [r3, #32]
    1820:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1824:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    1826:	bf00      	nop
    1828:	4b39      	ldr	r3, [pc, #228]	; (1910 <rtc_init+0x140>)
    182a:	685b      	ldr	r3, [r3, #4]
    182c:	f003 0308 	and.w	r3, r3, #8
    1830:	2b00      	cmp	r3, #0
    1832:	d0f9      	beq.n	1828 <rtc_init+0x58>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    1834:	bf00      	nop
    1836:	4b36      	ldr	r3, [pc, #216]	; (1910 <rtc_init+0x140>)
    1838:	685b      	ldr	r3, [r3, #4]
    183a:	f003 0320 	and.w	r3, r3, #32
    183e:	2b00      	cmp	r3, #0
    1840:	d0f9      	beq.n	1836 <rtc_init+0x66>
		RTC->CRL|=RTC_CRL_CNF;
    1842:	4a33      	ldr	r2, [pc, #204]	; (1910 <rtc_init+0x140>)
    1844:	4b32      	ldr	r3, [pc, #200]	; (1910 <rtc_init+0x140>)
    1846:	685b      	ldr	r3, [r3, #4]
    1848:	f043 0310 	orr.w	r3, r3, #16
    184c:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    184e:	bf00      	nop
    1850:	4b2f      	ldr	r3, [pc, #188]	; (1910 <rtc_init+0x140>)
    1852:	685b      	ldr	r3, [r3, #4]
    1854:	f003 0320 	and.w	r3, r3, #32
    1858:	2b00      	cmp	r3, #0
    185a:	d0f9      	beq.n	1850 <rtc_init+0x80>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    185c:	492c      	ldr	r1, [pc, #176]	; (1910 <rtc_init+0x140>)
    185e:	4b2c      	ldr	r3, [pc, #176]	; (1910 <rtc_init+0x140>)
    1860:	681a      	ldr	r2, [r3, #0]
    1862:	683b      	ldr	r3, [r7, #0]
    1864:	4313      	orrs	r3, r2
    1866:	600b      	str	r3, [r1, #0]
		_wait_rtc_write();
    1868:	bf00      	nop
    186a:	4b29      	ldr	r3, [pc, #164]	; (1910 <rtc_init+0x140>)
    186c:	685b      	ldr	r3, [r3, #4]
    186e:	f003 0320 	and.w	r3, r3, #32
    1872:	2b00      	cmp	r3, #0
    1874:	d0f9      	beq.n	186a <rtc_init+0x9a>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    1876:	4a26      	ldr	r2, [pc, #152]	; (1910 <rtc_init+0x140>)
    1878:	687b      	ldr	r3, [r7, #4]
    187a:	03db      	lsls	r3, r3, #15
    187c:	4925      	ldr	r1, [pc, #148]	; (1914 <rtc_init+0x144>)
    187e:	fba1 1303 	umull	r1, r3, r1, r3
    1882:	099b      	lsrs	r3, r3, #6
    1884:	3b01      	subs	r3, #1
    1886:	b29b      	uxth	r3, r3
    1888:	60d3      	str	r3, [r2, #12]
		_wait_rtc_write();
    188a:	bf00      	nop
    188c:	4b20      	ldr	r3, [pc, #128]	; (1910 <rtc_init+0x140>)
    188e:	685b      	ldr	r3, [r3, #4]
    1890:	f003 0320 	and.w	r3, r3, #32
    1894:	2b00      	cmp	r3, #0
    1896:	d0f9      	beq.n	188c <rtc_init+0xbc>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    1898:	4a1d      	ldr	r2, [pc, #116]	; (1910 <rtc_init+0x140>)
    189a:	687b      	ldr	r3, [r7, #4]
    189c:	03db      	lsls	r3, r3, #15
    189e:	491d      	ldr	r1, [pc, #116]	; (1914 <rtc_init+0x144>)
    18a0:	fba1 1303 	umull	r1, r3, r1, r3
    18a4:	099b      	lsrs	r3, r3, #6
    18a6:	3b01      	subs	r3, #1
    18a8:	0c1b      	lsrs	r3, r3, #16
    18aa:	f003 030f 	and.w	r3, r3, #15
    18ae:	6093      	str	r3, [r2, #8]
		_wait_rtc_write();
    18b0:	bf00      	nop
    18b2:	4b17      	ldr	r3, [pc, #92]	; (1910 <rtc_init+0x140>)
    18b4:	685b      	ldr	r3, [r3, #4]
    18b6:	f003 0320 	and.w	r3, r3, #32
    18ba:	2b00      	cmp	r3, #0
    18bc:	d0f9      	beq.n	18b2 <rtc_init+0xe2>
		BKP->DR[0]=RTC_ACCESS_CODE;
    18be:	4b11      	ldr	r3, [pc, #68]	; (1904 <rtc_init+0x134>)
    18c0:	f64a 2255 	movw	r2, #43605	; 0xaa55
    18c4:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    18c6:	4a12      	ldr	r2, [pc, #72]	; (1910 <rtc_init+0x140>)
    18c8:	4b11      	ldr	r3, [pc, #68]	; (1910 <rtc_init+0x140>)
    18ca:	685b      	ldr	r3, [r3, #4]
    18cc:	f023 0310 	bic.w	r3, r3, #16
    18d0:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    18d2:	bf00      	nop
    18d4:	4b0e      	ldr	r3, [pc, #56]	; (1910 <rtc_init+0x140>)
    18d6:	685b      	ldr	r3, [r3, #4]
    18d8:	f003 0320 	and.w	r3, r3, #32
    18dc:	2b00      	cmp	r3, #0
    18de:	d0f9      	beq.n	18d4 <rtc_init+0x104>
		PWR->CR&=~PWR_CR_DBP;
    18e0:	4a0a      	ldr	r2, [pc, #40]	; (190c <rtc_init+0x13c>)
    18e2:	4b0a      	ldr	r3, [pc, #40]	; (190c <rtc_init+0x13c>)
    18e4:	681b      	ldr	r3, [r3, #0]
    18e6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    18ea:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    18ec:	210f      	movs	r1, #15
    18ee:	2003      	movs	r0, #3
    18f0:	f7ff fd4a 	bl	1388 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    18f4:	2003      	movs	r0, #3
    18f6:	f7ff fc8d 	bl	1214 <enable_interrupt>
}
    18fa:	bf00      	nop
    18fc:	3708      	adds	r7, #8
    18fe:	46bd      	mov	sp, r7
    1900:	bd80      	pop	{r7, pc}
    1902:	bf00      	nop
    1904:	40006c00 	.word	0x40006c00
    1908:	40021000 	.word	0x40021000
    190c:	40007000 	.word	0x40007000
    1910:	40002800 	.word	0x40002800
    1914:	10624dd3 	.word	0x10624dd3

00001918 <reset_backup_domain>:

// réinitialise le backup domain
inline void reset_backup_domain(){
    1918:	b480      	push	{r7}
    191a:	af00      	add	r7, sp, #0
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    191c:	4a0a      	ldr	r2, [pc, #40]	; (1948 <reset_backup_domain+0x30>)
    191e:	4b0a      	ldr	r3, [pc, #40]	; (1948 <reset_backup_domain+0x30>)
    1920:	69db      	ldr	r3, [r3, #28]
    1922:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1926:	61d3      	str	r3, [r2, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    1928:	4a07      	ldr	r2, [pc, #28]	; (1948 <reset_backup_domain+0x30>)
    192a:	4b07      	ldr	r3, [pc, #28]	; (1948 <reset_backup_domain+0x30>)
    192c:	6a1b      	ldr	r3, [r3, #32]
    192e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1932:	6213      	str	r3, [r2, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    1934:	4a04      	ldr	r2, [pc, #16]	; (1948 <reset_backup_domain+0x30>)
    1936:	4b04      	ldr	r3, [pc, #16]	; (1948 <reset_backup_domain+0x30>)
    1938:	6a1b      	ldr	r3, [r3, #32]
    193a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    193e:	6213      	str	r3, [r2, #32]
}
    1940:	bf00      	nop
    1942:	46bd      	mov	sp, r7
    1944:	bc80      	pop	{r7}
    1946:	4770      	bx	lr
    1948:	40021000 	.word	0x40021000

0000194c <rtc_clock_trim>:

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
    194c:	b480      	push	{r7}
    194e:	b083      	sub	sp, #12
    1950:	af00      	add	r7, sp, #0
    1952:	6078      	str	r0, [r7, #4]
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1954:	4a34      	ldr	r2, [pc, #208]	; (1a28 <rtc_clock_trim+0xdc>)
    1956:	4b34      	ldr	r3, [pc, #208]	; (1a28 <rtc_clock_trim+0xdc>)
    1958:	69db      	ldr	r3, [r3, #28]
    195a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    195e:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    1960:	bf00      	nop
    1962:	4b32      	ldr	r3, [pc, #200]	; (1a2c <rtc_clock_trim+0xe0>)
    1964:	685b      	ldr	r3, [r3, #4]
    1966:	f003 0308 	and.w	r3, r3, #8
    196a:	2b00      	cmp	r3, #0
    196c:	d0f9      	beq.n	1962 <rtc_clock_trim+0x16>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    196e:	4a30      	ldr	r2, [pc, #192]	; (1a30 <rtc_clock_trim+0xe4>)
    1970:	4b2f      	ldr	r3, [pc, #188]	; (1a30 <rtc_clock_trim+0xe4>)
    1972:	681b      	ldr	r3, [r3, #0]
    1974:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1978:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    197a:	4a2c      	ldr	r2, [pc, #176]	; (1a2c <rtc_clock_trim+0xe0>)
    197c:	4b2b      	ldr	r3, [pc, #172]	; (1a2c <rtc_clock_trim+0xe0>)
    197e:	685b      	ldr	r3, [r3, #4]
    1980:	f043 0310 	orr.w	r3, r3, #16
    1984:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    1986:	4a2b      	ldr	r2, [pc, #172]	; (1a34 <rtc_clock_trim+0xe8>)
    1988:	4b2a      	ldr	r3, [pc, #168]	; (1a34 <rtc_clock_trim+0xe8>)
    198a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    198c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1990:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    1992:	687b      	ldr	r3, [r7, #4]
    1994:	2b00      	cmp	r3, #0
    1996:	d10a      	bne.n	19ae <rtc_clock_trim+0x62>
		BKP->RTCCR=0;
    1998:	4b26      	ldr	r3, [pc, #152]	; (1a34 <rtc_clock_trim+0xe8>)
    199a:	2200      	movs	r2, #0
    199c:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    199e:	4b23      	ldr	r3, [pc, #140]	; (1a2c <rtc_clock_trim+0xe0>)
    19a0:	f647 72ff 	movw	r2, #32767	; 0x7fff
    19a4:	60da      	str	r2, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    19a6:	4b21      	ldr	r3, [pc, #132]	; (1a2c <rtc_clock_trim+0xe0>)
    19a8:	2200      	movs	r2, #0
    19aa:	609a      	str	r2, [r3, #8]
    19ac:	e023      	b.n	19f6 <rtc_clock_trim+0xaa>
	}else if (trim>0){// trop rapide on ralentie
    19ae:	687b      	ldr	r3, [r7, #4]
    19b0:	2b00      	cmp	r3, #0
    19b2:	dd0a      	ble.n	19ca <rtc_clock_trim+0x7e>
		trim&=0x7f;
    19b4:	687b      	ldr	r3, [r7, #4]
    19b6:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    19ba:	607b      	str	r3, [r7, #4]
		BKP->RTCCR|=trim;
    19bc:	491d      	ldr	r1, [pc, #116]	; (1a34 <rtc_clock_trim+0xe8>)
    19be:	4b1d      	ldr	r3, [pc, #116]	; (1a34 <rtc_clock_trim+0xe8>)
    19c0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    19c2:	687b      	ldr	r3, [r7, #4]
    19c4:	4313      	orrs	r3, r2
    19c6:	62cb      	str	r3, [r1, #44]	; 0x2c
    19c8:	e015      	b.n	19f6 <rtc_clock_trim+0xaa>
	}else{// trop lent on accélère.
		trim=-trim;
    19ca:	687b      	ldr	r3, [r7, #4]
    19cc:	425b      	negs	r3, r3
    19ce:	607b      	str	r3, [r7, #4]
		if (trim>0x7f) {trim=0x7f;}
    19d0:	687b      	ldr	r3, [r7, #4]
    19d2:	2b7f      	cmp	r3, #127	; 0x7f
    19d4:	dd01      	ble.n	19da <rtc_clock_trim+0x8e>
    19d6:	237f      	movs	r3, #127	; 0x7f
    19d8:	607b      	str	r3, [r7, #4]
		BKP->RTCCR=0;
    19da:	4b16      	ldr	r3, [pc, #88]	; (1a34 <rtc_clock_trim+0xe8>)
    19dc:	2200      	movs	r2, #0
    19de:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    19e0:	4a12      	ldr	r2, [pc, #72]	; (1a2c <rtc_clock_trim+0xe0>)
    19e2:	687b      	ldr	r3, [r7, #4]
    19e4:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    19e8:	33ff      	adds	r3, #255	; 0xff
    19ea:	f3c3 030e 	ubfx	r3, r3, #0, #15
    19ee:	60d3      	str	r3, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    19f0:	4b0e      	ldr	r3, [pc, #56]	; (1a2c <rtc_clock_trim+0xe0>)
    19f2:	2200      	movs	r2, #0
    19f4:	609a      	str	r2, [r3, #8]
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    19f6:	4a0d      	ldr	r2, [pc, #52]	; (1a2c <rtc_clock_trim+0xe0>)
    19f8:	4b0c      	ldr	r3, [pc, #48]	; (1a2c <rtc_clock_trim+0xe0>)
    19fa:	685b      	ldr	r3, [r3, #4]
    19fc:	f023 0310 	bic.w	r3, r3, #16
    1a00:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    1a02:	bf00      	nop
    1a04:	4b09      	ldr	r3, [pc, #36]	; (1a2c <rtc_clock_trim+0xe0>)
    1a06:	685b      	ldr	r3, [r3, #4]
    1a08:	f003 0320 	and.w	r3, r3, #32
    1a0c:	2b00      	cmp	r3, #0
    1a0e:	d0f9      	beq.n	1a04 <rtc_clock_trim+0xb8>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1a10:	4a07      	ldr	r2, [pc, #28]	; (1a30 <rtc_clock_trim+0xe4>)
    1a12:	4b07      	ldr	r3, [pc, #28]	; (1a30 <rtc_clock_trim+0xe4>)
    1a14:	681b      	ldr	r3, [r3, #0]
    1a16:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1a1a:	6013      	str	r3, [r2, #0]
}
    1a1c:	bf00      	nop
    1a1e:	370c      	adds	r7, #12
    1a20:	46bd      	mov	sp, r7
    1a22:	bc80      	pop	{r7}
    1a24:	4770      	bx	lr
    1a26:	bf00      	nop
    1a28:	40021000 	.word	0x40021000
    1a2c:	40002800 	.word	0x40002800
    1a30:	40007000 	.word	0x40007000
    1a34:	40006c00 	.word	0x40006c00

00001a38 <rtc_set_alarm>:

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    1a38:	b480      	push	{r7}
    1a3a:	b083      	sub	sp, #12
    1a3c:	af00      	add	r7, sp, #0
    1a3e:	6078      	str	r0, [r7, #4]
}
    1a40:	bf00      	nop
    1a42:	370c      	adds	r7, #12
    1a44:	46bd      	mov	sp, r7
    1a46:	bc80      	pop	{r7}
    1a48:	4770      	bx	lr

00001a4a <str_to_date>:

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    1a4a:	b580      	push	{r7, lr}
    1a4c:	b084      	sub	sp, #16
    1a4e:	af00      	add	r7, sp, #0
    1a50:	6078      	str	r0, [r7, #4]
    1a52:	6039      	str	r1, [r7, #0]
	int i,n;
	
	i=0;
    1a54:	2300      	movs	r3, #0
    1a56:	60fb      	str	r3, [r7, #12]
	n=0;
    1a58:	2300      	movs	r3, #0
    1a5a:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1a5c:	e00f      	b.n	1a7e <str_to_date+0x34>
		n=n*10+date[i++]-'0';
    1a5e:	68ba      	ldr	r2, [r7, #8]
    1a60:	4613      	mov	r3, r2
    1a62:	009b      	lsls	r3, r3, #2
    1a64:	4413      	add	r3, r2
    1a66:	005b      	lsls	r3, r3, #1
    1a68:	4619      	mov	r1, r3
    1a6a:	68fb      	ldr	r3, [r7, #12]
    1a6c:	1c5a      	adds	r2, r3, #1
    1a6e:	60fa      	str	r2, [r7, #12]
    1a70:	461a      	mov	r2, r3
    1a72:	687b      	ldr	r3, [r7, #4]
    1a74:	4413      	add	r3, r2
    1a76:	781b      	ldrb	r3, [r3, #0]
    1a78:	440b      	add	r3, r1
    1a7a:	3b30      	subs	r3, #48	; 0x30
    1a7c:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1a7e:	68fb      	ldr	r3, [r7, #12]
    1a80:	687a      	ldr	r2, [r7, #4]
    1a82:	4413      	add	r3, r2
    1a84:	781b      	ldrb	r3, [r3, #0]
    1a86:	4618      	mov	r0, r3
    1a88:	f7fe feab 	bl	7e2 <digit>
    1a8c:	4603      	mov	r3, r0
    1a8e:	2b00      	cmp	r3, #0
    1a90:	d1e5      	bne.n	1a5e <str_to_date+0x14>
	}
	if ((i<4) || date[i]!='/') return 0;
    1a92:	68fb      	ldr	r3, [r7, #12]
    1a94:	2b03      	cmp	r3, #3
    1a96:	dd05      	ble.n	1aa4 <str_to_date+0x5a>
    1a98:	68fb      	ldr	r3, [r7, #12]
    1a9a:	687a      	ldr	r2, [r7, #4]
    1a9c:	4413      	add	r3, r2
    1a9e:	781b      	ldrb	r3, [r3, #0]
    1aa0:	2b2f      	cmp	r3, #47	; 0x2f
    1aa2:	d001      	beq.n	1aa8 <str_to_date+0x5e>
    1aa4:	2300      	movs	r3, #0
    1aa6:	e068      	b.n	1b7a <str_to_date+0x130>
	dt->year=n;
    1aa8:	68bb      	ldr	r3, [r7, #8]
    1aaa:	b29a      	uxth	r2, r3
    1aac:	683b      	ldr	r3, [r7, #0]
    1aae:	811a      	strh	r2, [r3, #8]
	i++;
    1ab0:	68fb      	ldr	r3, [r7, #12]
    1ab2:	3301      	adds	r3, #1
    1ab4:	60fb      	str	r3, [r7, #12]
	n=0;
    1ab6:	2300      	movs	r3, #0
    1ab8:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1aba:	e00f      	b.n	1adc <str_to_date+0x92>
		n=n*10+date[i++]-'0';
    1abc:	68ba      	ldr	r2, [r7, #8]
    1abe:	4613      	mov	r3, r2
    1ac0:	009b      	lsls	r3, r3, #2
    1ac2:	4413      	add	r3, r2
    1ac4:	005b      	lsls	r3, r3, #1
    1ac6:	4619      	mov	r1, r3
    1ac8:	68fb      	ldr	r3, [r7, #12]
    1aca:	1c5a      	adds	r2, r3, #1
    1acc:	60fa      	str	r2, [r7, #12]
    1ace:	461a      	mov	r2, r3
    1ad0:	687b      	ldr	r3, [r7, #4]
    1ad2:	4413      	add	r3, r2
    1ad4:	781b      	ldrb	r3, [r3, #0]
    1ad6:	440b      	add	r3, r1
    1ad8:	3b30      	subs	r3, #48	; 0x30
    1ada:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1adc:	68fb      	ldr	r3, [r7, #12]
    1ade:	687a      	ldr	r2, [r7, #4]
    1ae0:	4413      	add	r3, r2
    1ae2:	781b      	ldrb	r3, [r3, #0]
    1ae4:	4618      	mov	r0, r3
    1ae6:	f7fe fe7c 	bl	7e2 <digit>
    1aea:	4603      	mov	r3, r0
    1aec:	2b00      	cmp	r3, #0
    1aee:	d1e5      	bne.n	1abc <str_to_date+0x72>
	}
	if ((i<7) || date[i]!='/') return 0;
    1af0:	68fb      	ldr	r3, [r7, #12]
    1af2:	2b06      	cmp	r3, #6
    1af4:	dd05      	ble.n	1b02 <str_to_date+0xb8>
    1af6:	68fb      	ldr	r3, [r7, #12]
    1af8:	687a      	ldr	r2, [r7, #4]
    1afa:	4413      	add	r3, r2
    1afc:	781b      	ldrb	r3, [r3, #0]
    1afe:	2b2f      	cmp	r3, #47	; 0x2f
    1b00:	d001      	beq.n	1b06 <str_to_date+0xbc>
    1b02:	2300      	movs	r3, #0
    1b04:	e039      	b.n	1b7a <str_to_date+0x130>
	dt->month=n;
    1b06:	68bb      	ldr	r3, [r7, #8]
    1b08:	b2db      	uxtb	r3, r3
    1b0a:	f003 030f 	and.w	r3, r3, #15
    1b0e:	b2d9      	uxtb	r1, r3
    1b10:	683a      	ldr	r2, [r7, #0]
    1b12:	8853      	ldrh	r3, [r2, #2]
    1b14:	f361 1389 	bfi	r3, r1, #6, #4
    1b18:	8053      	strh	r3, [r2, #2]
	n=0;
    1b1a:	2300      	movs	r3, #0
    1b1c:	60bb      	str	r3, [r7, #8]
	i++;
    1b1e:	68fb      	ldr	r3, [r7, #12]
    1b20:	3301      	adds	r3, #1
    1b22:	60fb      	str	r3, [r7, #12]
	while (digit(date[i])){
    1b24:	e00f      	b.n	1b46 <str_to_date+0xfc>
		n=n*10+date[i++]-'0';
    1b26:	68ba      	ldr	r2, [r7, #8]
    1b28:	4613      	mov	r3, r2
    1b2a:	009b      	lsls	r3, r3, #2
    1b2c:	4413      	add	r3, r2
    1b2e:	005b      	lsls	r3, r3, #1
    1b30:	4619      	mov	r1, r3
    1b32:	68fb      	ldr	r3, [r7, #12]
    1b34:	1c5a      	adds	r2, r3, #1
    1b36:	60fa      	str	r2, [r7, #12]
    1b38:	461a      	mov	r2, r3
    1b3a:	687b      	ldr	r3, [r7, #4]
    1b3c:	4413      	add	r3, r2
    1b3e:	781b      	ldrb	r3, [r3, #0]
    1b40:	440b      	add	r3, r1
    1b42:	3b30      	subs	r3, #48	; 0x30
    1b44:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1b46:	68fb      	ldr	r3, [r7, #12]
    1b48:	687a      	ldr	r2, [r7, #4]
    1b4a:	4413      	add	r3, r2
    1b4c:	781b      	ldrb	r3, [r3, #0]
    1b4e:	4618      	mov	r0, r3
    1b50:	f7fe fe47 	bl	7e2 <digit>
    1b54:	4603      	mov	r3, r0
    1b56:	2b00      	cmp	r3, #0
    1b58:	d1e5      	bne.n	1b26 <str_to_date+0xdc>
	}
	if (i<10) return 0;
    1b5a:	68fb      	ldr	r3, [r7, #12]
    1b5c:	2b09      	cmp	r3, #9
    1b5e:	dc01      	bgt.n	1b64 <str_to_date+0x11a>
    1b60:	2300      	movs	r3, #0
    1b62:	e00a      	b.n	1b7a <str_to_date+0x130>
	dt->day=n;
    1b64:	68bb      	ldr	r3, [r7, #8]
    1b66:	b2db      	uxtb	r3, r3
    1b68:	f003 031f 	and.w	r3, r3, #31
    1b6c:	b2d9      	uxtb	r1, r3
    1b6e:	683a      	ldr	r2, [r7, #0]
    1b70:	7893      	ldrb	r3, [r2, #2]
    1b72:	f361 0345 	bfi	r3, r1, #1, #5
    1b76:	7093      	strb	r3, [r2, #2]
	return 1;
    1b78:	2301      	movs	r3, #1
}
    1b7a:	4618      	mov	r0, r3
    1b7c:	3710      	adds	r7, #16
    1b7e:	46bd      	mov	sp, r7
    1b80:	bd80      	pop	{r7, pc}

00001b82 <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    1b82:	b580      	push	{r7, lr}
    1b84:	b084      	sub	sp, #16
    1b86:	af00      	add	r7, sp, #0
    1b88:	6078      	str	r0, [r7, #4]
    1b8a:	6039      	str	r1, [r7, #0]
	int i;
	unsigned char n;
	
	i=0;
    1b8c:	2300      	movs	r3, #0
    1b8e:	60fb      	str	r3, [r7, #12]
	n=0;
    1b90:	2300      	movs	r3, #0
    1b92:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1b94:	e010      	b.n	1bb8 <str_to_time+0x36>
		n=n*10+time[i++]-'0';
    1b96:	7afb      	ldrb	r3, [r7, #11]
    1b98:	461a      	mov	r2, r3
    1b9a:	0092      	lsls	r2, r2, #2
    1b9c:	4413      	add	r3, r2
    1b9e:	005b      	lsls	r3, r3, #1
    1ba0:	b2da      	uxtb	r2, r3
    1ba2:	68fb      	ldr	r3, [r7, #12]
    1ba4:	1c59      	adds	r1, r3, #1
    1ba6:	60f9      	str	r1, [r7, #12]
    1ba8:	4619      	mov	r1, r3
    1baa:	687b      	ldr	r3, [r7, #4]
    1bac:	440b      	add	r3, r1
    1bae:	781b      	ldrb	r3, [r3, #0]
    1bb0:	4413      	add	r3, r2
    1bb2:	b2db      	uxtb	r3, r3
    1bb4:	3b30      	subs	r3, #48	; 0x30
    1bb6:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1bb8:	68fb      	ldr	r3, [r7, #12]
    1bba:	687a      	ldr	r2, [r7, #4]
    1bbc:	4413      	add	r3, r2
    1bbe:	781b      	ldrb	r3, [r3, #0]
    1bc0:	4618      	mov	r0, r3
    1bc2:	f7fe fe0e 	bl	7e2 <digit>
    1bc6:	4603      	mov	r3, r0
    1bc8:	2b00      	cmp	r3, #0
    1bca:	d1e4      	bne.n	1b96 <str_to_time+0x14>
	}
	if ((n>23) || time[i]!=':') return 0;
    1bcc:	7afb      	ldrb	r3, [r7, #11]
    1bce:	2b17      	cmp	r3, #23
    1bd0:	d805      	bhi.n	1bde <str_to_time+0x5c>
    1bd2:	68fb      	ldr	r3, [r7, #12]
    1bd4:	687a      	ldr	r2, [r7, #4]
    1bd6:	4413      	add	r3, r2
    1bd8:	781b      	ldrb	r3, [r3, #0]
    1bda:	2b3a      	cmp	r3, #58	; 0x3a
    1bdc:	d001      	beq.n	1be2 <str_to_time+0x60>
    1bde:	2300      	movs	r3, #0
    1be0:	e06d      	b.n	1cbe <str_to_time+0x13c>
	dt->hour=n;
    1be2:	7afb      	ldrb	r3, [r7, #11]
    1be4:	f003 031f 	and.w	r3, r3, #31
    1be8:	b2d9      	uxtb	r1, r3
    1bea:	683a      	ldr	r2, [r7, #0]
    1bec:	6813      	ldr	r3, [r2, #0]
    1bee:	f361 3310 	bfi	r3, r1, #12, #5
    1bf2:	6013      	str	r3, [r2, #0]
	i++;
    1bf4:	68fb      	ldr	r3, [r7, #12]
    1bf6:	3301      	adds	r3, #1
    1bf8:	60fb      	str	r3, [r7, #12]
	n=0;
    1bfa:	2300      	movs	r3, #0
    1bfc:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1bfe:	e010      	b.n	1c22 <str_to_time+0xa0>
		n=n*10+time[i++]-'0';
    1c00:	7afb      	ldrb	r3, [r7, #11]
    1c02:	461a      	mov	r2, r3
    1c04:	0092      	lsls	r2, r2, #2
    1c06:	4413      	add	r3, r2
    1c08:	005b      	lsls	r3, r3, #1
    1c0a:	b2da      	uxtb	r2, r3
    1c0c:	68fb      	ldr	r3, [r7, #12]
    1c0e:	1c59      	adds	r1, r3, #1
    1c10:	60f9      	str	r1, [r7, #12]
    1c12:	4619      	mov	r1, r3
    1c14:	687b      	ldr	r3, [r7, #4]
    1c16:	440b      	add	r3, r1
    1c18:	781b      	ldrb	r3, [r3, #0]
    1c1a:	4413      	add	r3, r2
    1c1c:	b2db      	uxtb	r3, r3
    1c1e:	3b30      	subs	r3, #48	; 0x30
    1c20:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1c22:	68fb      	ldr	r3, [r7, #12]
    1c24:	687a      	ldr	r2, [r7, #4]
    1c26:	4413      	add	r3, r2
    1c28:	781b      	ldrb	r3, [r3, #0]
    1c2a:	4618      	mov	r0, r3
    1c2c:	f7fe fdd9 	bl	7e2 <digit>
    1c30:	4603      	mov	r3, r0
    1c32:	2b00      	cmp	r3, #0
    1c34:	d1e4      	bne.n	1c00 <str_to_time+0x7e>
	}
	if ((n>59) || time[i]!=':') return 0;
    1c36:	7afb      	ldrb	r3, [r7, #11]
    1c38:	2b3b      	cmp	r3, #59	; 0x3b
    1c3a:	d805      	bhi.n	1c48 <str_to_time+0xc6>
    1c3c:	68fb      	ldr	r3, [r7, #12]
    1c3e:	687a      	ldr	r2, [r7, #4]
    1c40:	4413      	add	r3, r2
    1c42:	781b      	ldrb	r3, [r3, #0]
    1c44:	2b3a      	cmp	r3, #58	; 0x3a
    1c46:	d001      	beq.n	1c4c <str_to_time+0xca>
    1c48:	2300      	movs	r3, #0
    1c4a:	e038      	b.n	1cbe <str_to_time+0x13c>
	dt->minute=n;
    1c4c:	7afb      	ldrb	r3, [r7, #11]
    1c4e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1c52:	b2d9      	uxtb	r1, r3
    1c54:	683a      	ldr	r2, [r7, #0]
    1c56:	8813      	ldrh	r3, [r2, #0]
    1c58:	f361 138b 	bfi	r3, r1, #6, #6
    1c5c:	8013      	strh	r3, [r2, #0]
	n=0;
    1c5e:	2300      	movs	r3, #0
    1c60:	72fb      	strb	r3, [r7, #11]
	i++;
    1c62:	68fb      	ldr	r3, [r7, #12]
    1c64:	3301      	adds	r3, #1
    1c66:	60fb      	str	r3, [r7, #12]
	while (digit(time[i])){
    1c68:	e010      	b.n	1c8c <str_to_time+0x10a>
		n=n*10+time[i++]-'0';
    1c6a:	7afb      	ldrb	r3, [r7, #11]
    1c6c:	461a      	mov	r2, r3
    1c6e:	0092      	lsls	r2, r2, #2
    1c70:	4413      	add	r3, r2
    1c72:	005b      	lsls	r3, r3, #1
    1c74:	b2da      	uxtb	r2, r3
    1c76:	68fb      	ldr	r3, [r7, #12]
    1c78:	1c59      	adds	r1, r3, #1
    1c7a:	60f9      	str	r1, [r7, #12]
    1c7c:	4619      	mov	r1, r3
    1c7e:	687b      	ldr	r3, [r7, #4]
    1c80:	440b      	add	r3, r1
    1c82:	781b      	ldrb	r3, [r3, #0]
    1c84:	4413      	add	r3, r2
    1c86:	b2db      	uxtb	r3, r3
    1c88:	3b30      	subs	r3, #48	; 0x30
    1c8a:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    1c8c:	68fb      	ldr	r3, [r7, #12]
    1c8e:	687a      	ldr	r2, [r7, #4]
    1c90:	4413      	add	r3, r2
    1c92:	781b      	ldrb	r3, [r3, #0]
    1c94:	4618      	mov	r0, r3
    1c96:	f7fe fda4 	bl	7e2 <digit>
    1c9a:	4603      	mov	r3, r0
    1c9c:	2b00      	cmp	r3, #0
    1c9e:	d1e4      	bne.n	1c6a <str_to_time+0xe8>
	}
	if (n>59) return 0;
    1ca0:	7afb      	ldrb	r3, [r7, #11]
    1ca2:	2b3b      	cmp	r3, #59	; 0x3b
    1ca4:	d901      	bls.n	1caa <str_to_time+0x128>
    1ca6:	2300      	movs	r3, #0
    1ca8:	e009      	b.n	1cbe <str_to_time+0x13c>
	dt->second=n;
    1caa:	7afb      	ldrb	r3, [r7, #11]
    1cac:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1cb0:	b2d9      	uxtb	r1, r3
    1cb2:	683a      	ldr	r2, [r7, #0]
    1cb4:	7813      	ldrb	r3, [r2, #0]
    1cb6:	f361 0305 	bfi	r3, r1, #0, #6
    1cba:	7013      	strb	r3, [r2, #0]
	return 1;
    1cbc:	2301      	movs	r3, #1
}
    1cbe:	4618      	mov	r0, r3
    1cc0:	3710      	adds	r7, #16
    1cc2:	46bd      	mov	sp, r7
    1cc4:	bd80      	pop	{r7, pc}

00001cc6 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    1cc6:	b480      	push	{r7}
    1cc8:	b085      	sub	sp, #20
    1cca:	af00      	add	r7, sp, #0
    1ccc:	6078      	str	r0, [r7, #4]
    1cce:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    1cd0:	2300      	movs	r3, #0
    1cd2:	60fb      	str	r3, [r7, #12]
	
	n=dt->year;
    1cd4:	687b      	ldr	r3, [r7, #4]
    1cd6:	891b      	ldrh	r3, [r3, #8]
    1cd8:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/1000+'0';
    1cda:	68fb      	ldr	r3, [r7, #12]
    1cdc:	1c5a      	adds	r2, r3, #1
    1cde:	60fa      	str	r2, [r7, #12]
    1ce0:	461a      	mov	r2, r3
    1ce2:	683b      	ldr	r3, [r7, #0]
    1ce4:	4413      	add	r3, r2
    1ce6:	68ba      	ldr	r2, [r7, #8]
    1ce8:	495d      	ldr	r1, [pc, #372]	; (1e60 <date_str+0x19a>)
    1cea:	fba1 1202 	umull	r1, r2, r1, r2
    1cee:	0992      	lsrs	r2, r2, #6
    1cf0:	b2d2      	uxtb	r2, r2
    1cf2:	3230      	adds	r2, #48	; 0x30
    1cf4:	b2d2      	uxtb	r2, r2
    1cf6:	701a      	strb	r2, [r3, #0]
	n%=1000;
    1cf8:	68bb      	ldr	r3, [r7, #8]
    1cfa:	4a59      	ldr	r2, [pc, #356]	; (1e60 <date_str+0x19a>)
    1cfc:	fba2 1203 	umull	r1, r2, r2, r3
    1d00:	0992      	lsrs	r2, r2, #6
    1d02:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1d06:	fb01 f202 	mul.w	r2, r1, r2
    1d0a:	1a9b      	subs	r3, r3, r2
    1d0c:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/100+'0';
    1d0e:	68fb      	ldr	r3, [r7, #12]
    1d10:	1c5a      	adds	r2, r3, #1
    1d12:	60fa      	str	r2, [r7, #12]
    1d14:	461a      	mov	r2, r3
    1d16:	683b      	ldr	r3, [r7, #0]
    1d18:	4413      	add	r3, r2
    1d1a:	68ba      	ldr	r2, [r7, #8]
    1d1c:	4951      	ldr	r1, [pc, #324]	; (1e64 <date_str+0x19e>)
    1d1e:	fba1 1202 	umull	r1, r2, r1, r2
    1d22:	0952      	lsrs	r2, r2, #5
    1d24:	b2d2      	uxtb	r2, r2
    1d26:	3230      	adds	r2, #48	; 0x30
    1d28:	b2d2      	uxtb	r2, r2
    1d2a:	701a      	strb	r2, [r3, #0]
	n%=100;
    1d2c:	68bb      	ldr	r3, [r7, #8]
    1d2e:	4a4d      	ldr	r2, [pc, #308]	; (1e64 <date_str+0x19e>)
    1d30:	fba2 1203 	umull	r1, r2, r2, r3
    1d34:	0952      	lsrs	r2, r2, #5
    1d36:	2164      	movs	r1, #100	; 0x64
    1d38:	fb01 f202 	mul.w	r2, r1, r2
    1d3c:	1a9b      	subs	r3, r3, r2
    1d3e:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1d40:	68fb      	ldr	r3, [r7, #12]
    1d42:	1c5a      	adds	r2, r3, #1
    1d44:	60fa      	str	r2, [r7, #12]
    1d46:	461a      	mov	r2, r3
    1d48:	683b      	ldr	r3, [r7, #0]
    1d4a:	4413      	add	r3, r2
    1d4c:	68ba      	ldr	r2, [r7, #8]
    1d4e:	4946      	ldr	r1, [pc, #280]	; (1e68 <date_str+0x1a2>)
    1d50:	fba1 1202 	umull	r1, r2, r1, r2
    1d54:	08d2      	lsrs	r2, r2, #3
    1d56:	b2d2      	uxtb	r2, r2
    1d58:	3230      	adds	r2, #48	; 0x30
    1d5a:	b2d2      	uxtb	r2, r2
    1d5c:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1d5e:	68fb      	ldr	r3, [r7, #12]
    1d60:	1c5a      	adds	r2, r3, #1
    1d62:	60fa      	str	r2, [r7, #12]
    1d64:	461a      	mov	r2, r3
    1d66:	683b      	ldr	r3, [r7, #0]
    1d68:	1898      	adds	r0, r3, r2
    1d6a:	68b9      	ldr	r1, [r7, #8]
    1d6c:	4b3e      	ldr	r3, [pc, #248]	; (1e68 <date_str+0x1a2>)
    1d6e:	fba3 2301 	umull	r2, r3, r3, r1
    1d72:	08da      	lsrs	r2, r3, #3
    1d74:	4613      	mov	r3, r2
    1d76:	009b      	lsls	r3, r3, #2
    1d78:	4413      	add	r3, r2
    1d7a:	005b      	lsls	r3, r3, #1
    1d7c:	1aca      	subs	r2, r1, r3
    1d7e:	b2d3      	uxtb	r3, r2
    1d80:	3330      	adds	r3, #48	; 0x30
    1d82:	b2db      	uxtb	r3, r3
    1d84:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    1d86:	68fb      	ldr	r3, [r7, #12]
    1d88:	1c5a      	adds	r2, r3, #1
    1d8a:	60fa      	str	r2, [r7, #12]
    1d8c:	461a      	mov	r2, r3
    1d8e:	683b      	ldr	r3, [r7, #0]
    1d90:	4413      	add	r3, r2
    1d92:	222f      	movs	r2, #47	; 0x2f
    1d94:	701a      	strb	r2, [r3, #0]
	n=dt->month;
    1d96:	687b      	ldr	r3, [r7, #4]
    1d98:	885b      	ldrh	r3, [r3, #2]
    1d9a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1d9e:	b2db      	uxtb	r3, r3
    1da0:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1da2:	68fb      	ldr	r3, [r7, #12]
    1da4:	1c5a      	adds	r2, r3, #1
    1da6:	60fa      	str	r2, [r7, #12]
    1da8:	461a      	mov	r2, r3
    1daa:	683b      	ldr	r3, [r7, #0]
    1dac:	4413      	add	r3, r2
    1dae:	68ba      	ldr	r2, [r7, #8]
    1db0:	492d      	ldr	r1, [pc, #180]	; (1e68 <date_str+0x1a2>)
    1db2:	fba1 1202 	umull	r1, r2, r1, r2
    1db6:	08d2      	lsrs	r2, r2, #3
    1db8:	b2d2      	uxtb	r2, r2
    1dba:	3230      	adds	r2, #48	; 0x30
    1dbc:	b2d2      	uxtb	r2, r2
    1dbe:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1dc0:	68fb      	ldr	r3, [r7, #12]
    1dc2:	1c5a      	adds	r2, r3, #1
    1dc4:	60fa      	str	r2, [r7, #12]
    1dc6:	461a      	mov	r2, r3
    1dc8:	683b      	ldr	r3, [r7, #0]
    1dca:	1898      	adds	r0, r3, r2
    1dcc:	68b9      	ldr	r1, [r7, #8]
    1dce:	4b26      	ldr	r3, [pc, #152]	; (1e68 <date_str+0x1a2>)
    1dd0:	fba3 2301 	umull	r2, r3, r3, r1
    1dd4:	08da      	lsrs	r2, r3, #3
    1dd6:	4613      	mov	r3, r2
    1dd8:	009b      	lsls	r3, r3, #2
    1dda:	4413      	add	r3, r2
    1ddc:	005b      	lsls	r3, r3, #1
    1dde:	1aca      	subs	r2, r1, r3
    1de0:	b2d3      	uxtb	r3, r2
    1de2:	3330      	adds	r3, #48	; 0x30
    1de4:	b2db      	uxtb	r3, r3
    1de6:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    1de8:	68fb      	ldr	r3, [r7, #12]
    1dea:	1c5a      	adds	r2, r3, #1
    1dec:	60fa      	str	r2, [r7, #12]
    1dee:	461a      	mov	r2, r3
    1df0:	683b      	ldr	r3, [r7, #0]
    1df2:	4413      	add	r3, r2
    1df4:	222f      	movs	r2, #47	; 0x2f
    1df6:	701a      	strb	r2, [r3, #0]
	n=dt->day;
    1df8:	687b      	ldr	r3, [r7, #4]
    1dfa:	789b      	ldrb	r3, [r3, #2]
    1dfc:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1e00:	b2db      	uxtb	r3, r3
    1e02:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1e04:	68fb      	ldr	r3, [r7, #12]
    1e06:	1c5a      	adds	r2, r3, #1
    1e08:	60fa      	str	r2, [r7, #12]
    1e0a:	461a      	mov	r2, r3
    1e0c:	683b      	ldr	r3, [r7, #0]
    1e0e:	4413      	add	r3, r2
    1e10:	68ba      	ldr	r2, [r7, #8]
    1e12:	4915      	ldr	r1, [pc, #84]	; (1e68 <date_str+0x1a2>)
    1e14:	fba1 1202 	umull	r1, r2, r1, r2
    1e18:	08d2      	lsrs	r2, r2, #3
    1e1a:	b2d2      	uxtb	r2, r2
    1e1c:	3230      	adds	r2, #48	; 0x30
    1e1e:	b2d2      	uxtb	r2, r2
    1e20:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1e22:	68fb      	ldr	r3, [r7, #12]
    1e24:	1c5a      	adds	r2, r3, #1
    1e26:	60fa      	str	r2, [r7, #12]
    1e28:	461a      	mov	r2, r3
    1e2a:	683b      	ldr	r3, [r7, #0]
    1e2c:	1898      	adds	r0, r3, r2
    1e2e:	68b9      	ldr	r1, [r7, #8]
    1e30:	4b0d      	ldr	r3, [pc, #52]	; (1e68 <date_str+0x1a2>)
    1e32:	fba3 2301 	umull	r2, r3, r3, r1
    1e36:	08da      	lsrs	r2, r3, #3
    1e38:	4613      	mov	r3, r2
    1e3a:	009b      	lsls	r3, r3, #2
    1e3c:	4413      	add	r3, r2
    1e3e:	005b      	lsls	r3, r3, #1
    1e40:	1aca      	subs	r2, r1, r3
    1e42:	b2d3      	uxtb	r3, r2
    1e44:	3330      	adds	r3, #48	; 0x30
    1e46:	b2db      	uxtb	r3, r3
    1e48:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    1e4a:	68fb      	ldr	r3, [r7, #12]
    1e4c:	683a      	ldr	r2, [r7, #0]
    1e4e:	4413      	add	r3, r2
    1e50:	2200      	movs	r2, #0
    1e52:	701a      	strb	r2, [r3, #0]

}
    1e54:	bf00      	nop
    1e56:	3714      	adds	r7, #20
    1e58:	46bd      	mov	sp, r7
    1e5a:	bc80      	pop	{r7}
    1e5c:	4770      	bx	lr
    1e5e:	bf00      	nop
    1e60:	10624dd3 	.word	0x10624dd3
    1e64:	51eb851f 	.word	0x51eb851f
    1e68:	cccccccd 	.word	0xcccccccd

00001e6c <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    1e6c:	b480      	push	{r7}
    1e6e:	b085      	sub	sp, #20
    1e70:	af00      	add	r7, sp, #0
    1e72:	6078      	str	r0, [r7, #4]
    1e74:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    1e76:	2300      	movs	r3, #0
    1e78:	60fb      	str	r3, [r7, #12]
	
	n=dt->hour;
    1e7a:	687b      	ldr	r3, [r7, #4]
    1e7c:	681b      	ldr	r3, [r3, #0]
    1e7e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1e82:	b2db      	uxtb	r3, r3
    1e84:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1e86:	68fb      	ldr	r3, [r7, #12]
    1e88:	1c5a      	adds	r2, r3, #1
    1e8a:	60fa      	str	r2, [r7, #12]
    1e8c:	461a      	mov	r2, r3
    1e8e:	683b      	ldr	r3, [r7, #0]
    1e90:	4413      	add	r3, r2
    1e92:	68ba      	ldr	r2, [r7, #8]
    1e94:	4943      	ldr	r1, [pc, #268]	; (1fa4 <time_str+0x138>)
    1e96:	fba1 1202 	umull	r1, r2, r1, r2
    1e9a:	08d2      	lsrs	r2, r2, #3
    1e9c:	b2d2      	uxtb	r2, r2
    1e9e:	3230      	adds	r2, #48	; 0x30
    1ea0:	b2d2      	uxtb	r2, r2
    1ea2:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1ea4:	68fb      	ldr	r3, [r7, #12]
    1ea6:	1c5a      	adds	r2, r3, #1
    1ea8:	60fa      	str	r2, [r7, #12]
    1eaa:	461a      	mov	r2, r3
    1eac:	683b      	ldr	r3, [r7, #0]
    1eae:	1898      	adds	r0, r3, r2
    1eb0:	68b9      	ldr	r1, [r7, #8]
    1eb2:	4b3c      	ldr	r3, [pc, #240]	; (1fa4 <time_str+0x138>)
    1eb4:	fba3 2301 	umull	r2, r3, r3, r1
    1eb8:	08da      	lsrs	r2, r3, #3
    1eba:	4613      	mov	r3, r2
    1ebc:	009b      	lsls	r3, r3, #2
    1ebe:	4413      	add	r3, r2
    1ec0:	005b      	lsls	r3, r3, #1
    1ec2:	1aca      	subs	r2, r1, r3
    1ec4:	b2d3      	uxtb	r3, r2
    1ec6:	3330      	adds	r3, #48	; 0x30
    1ec8:	b2db      	uxtb	r3, r3
    1eca:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    1ecc:	68fb      	ldr	r3, [r7, #12]
    1ece:	1c5a      	adds	r2, r3, #1
    1ed0:	60fa      	str	r2, [r7, #12]
    1ed2:	461a      	mov	r2, r3
    1ed4:	683b      	ldr	r3, [r7, #0]
    1ed6:	4413      	add	r3, r2
    1ed8:	223a      	movs	r2, #58	; 0x3a
    1eda:	701a      	strb	r2, [r3, #0]
	n=dt->minute;
    1edc:	687b      	ldr	r3, [r7, #4]
    1ede:	881b      	ldrh	r3, [r3, #0]
    1ee0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1ee4:	b2db      	uxtb	r3, r3
    1ee6:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1ee8:	68fb      	ldr	r3, [r7, #12]
    1eea:	1c5a      	adds	r2, r3, #1
    1eec:	60fa      	str	r2, [r7, #12]
    1eee:	461a      	mov	r2, r3
    1ef0:	683b      	ldr	r3, [r7, #0]
    1ef2:	4413      	add	r3, r2
    1ef4:	68ba      	ldr	r2, [r7, #8]
    1ef6:	492b      	ldr	r1, [pc, #172]	; (1fa4 <time_str+0x138>)
    1ef8:	fba1 1202 	umull	r1, r2, r1, r2
    1efc:	08d2      	lsrs	r2, r2, #3
    1efe:	b2d2      	uxtb	r2, r2
    1f00:	3230      	adds	r2, #48	; 0x30
    1f02:	b2d2      	uxtb	r2, r2
    1f04:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1f06:	68fb      	ldr	r3, [r7, #12]
    1f08:	1c5a      	adds	r2, r3, #1
    1f0a:	60fa      	str	r2, [r7, #12]
    1f0c:	461a      	mov	r2, r3
    1f0e:	683b      	ldr	r3, [r7, #0]
    1f10:	1898      	adds	r0, r3, r2
    1f12:	68b9      	ldr	r1, [r7, #8]
    1f14:	4b23      	ldr	r3, [pc, #140]	; (1fa4 <time_str+0x138>)
    1f16:	fba3 2301 	umull	r2, r3, r3, r1
    1f1a:	08da      	lsrs	r2, r3, #3
    1f1c:	4613      	mov	r3, r2
    1f1e:	009b      	lsls	r3, r3, #2
    1f20:	4413      	add	r3, r2
    1f22:	005b      	lsls	r3, r3, #1
    1f24:	1aca      	subs	r2, r1, r3
    1f26:	b2d3      	uxtb	r3, r2
    1f28:	3330      	adds	r3, #48	; 0x30
    1f2a:	b2db      	uxtb	r3, r3
    1f2c:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    1f2e:	68fb      	ldr	r3, [r7, #12]
    1f30:	1c5a      	adds	r2, r3, #1
    1f32:	60fa      	str	r2, [r7, #12]
    1f34:	461a      	mov	r2, r3
    1f36:	683b      	ldr	r3, [r7, #0]
    1f38:	4413      	add	r3, r2
    1f3a:	223a      	movs	r2, #58	; 0x3a
    1f3c:	701a      	strb	r2, [r3, #0]
	n=dt->second;
    1f3e:	687b      	ldr	r3, [r7, #4]
    1f40:	781b      	ldrb	r3, [r3, #0]
    1f42:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1f46:	b2db      	uxtb	r3, r3
    1f48:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    1f4a:	68fb      	ldr	r3, [r7, #12]
    1f4c:	1c5a      	adds	r2, r3, #1
    1f4e:	60fa      	str	r2, [r7, #12]
    1f50:	461a      	mov	r2, r3
    1f52:	683b      	ldr	r3, [r7, #0]
    1f54:	4413      	add	r3, r2
    1f56:	68ba      	ldr	r2, [r7, #8]
    1f58:	4912      	ldr	r1, [pc, #72]	; (1fa4 <time_str+0x138>)
    1f5a:	fba1 1202 	umull	r1, r2, r1, r2
    1f5e:	08d2      	lsrs	r2, r2, #3
    1f60:	b2d2      	uxtb	r2, r2
    1f62:	3230      	adds	r2, #48	; 0x30
    1f64:	b2d2      	uxtb	r2, r2
    1f66:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    1f68:	68fb      	ldr	r3, [r7, #12]
    1f6a:	1c5a      	adds	r2, r3, #1
    1f6c:	60fa      	str	r2, [r7, #12]
    1f6e:	461a      	mov	r2, r3
    1f70:	683b      	ldr	r3, [r7, #0]
    1f72:	1898      	adds	r0, r3, r2
    1f74:	68b9      	ldr	r1, [r7, #8]
    1f76:	4b0b      	ldr	r3, [pc, #44]	; (1fa4 <time_str+0x138>)
    1f78:	fba3 2301 	umull	r2, r3, r3, r1
    1f7c:	08da      	lsrs	r2, r3, #3
    1f7e:	4613      	mov	r3, r2
    1f80:	009b      	lsls	r3, r3, #2
    1f82:	4413      	add	r3, r2
    1f84:	005b      	lsls	r3, r3, #1
    1f86:	1aca      	subs	r2, r1, r3
    1f88:	b2d3      	uxtb	r3, r2
    1f8a:	3330      	adds	r3, #48	; 0x30
    1f8c:	b2db      	uxtb	r3, r3
    1f8e:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    1f90:	68fb      	ldr	r3, [r7, #12]
    1f92:	683a      	ldr	r2, [r7, #0]
    1f94:	4413      	add	r3, r2
    1f96:	2200      	movs	r2, #0
    1f98:	701a      	strb	r2, [r3, #0]
}
    1f9a:	bf00      	nop
    1f9c:	3714      	adds	r7, #20
    1f9e:	46bd      	mov	sp, r7
    1fa0:	bc80      	pop	{r7}
    1fa2:	4770      	bx	lr
    1fa4:	cccccccd 	.word	0xcccccccd

00001fa8 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    1fa8:	b580      	push	{r7, lr}
    1faa:	b084      	sub	sp, #16
    1fac:	af00      	add	r7, sp, #0
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    1fae:	463b      	mov	r3, r7
    1fb0:	4618      	mov	r0, r3
    1fb2:	f7ff fa69 	bl	1488 <get_date_time>
	t.fields.second=dt.second/2;
    1fb6:	783b      	ldrb	r3, [r7, #0]
    1fb8:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1fbc:	b2db      	uxtb	r3, r3
    1fbe:	0fda      	lsrs	r2, r3, #31
    1fc0:	4413      	add	r3, r2
    1fc2:	105b      	asrs	r3, r3, #1
    1fc4:	b2db      	uxtb	r3, r3
    1fc6:	f003 031f 	and.w	r3, r3, #31
    1fca:	b2da      	uxtb	r2, r3
    1fcc:	7b3b      	ldrb	r3, [r7, #12]
    1fce:	f362 0304 	bfi	r3, r2, #0, #5
    1fd2:	733b      	strb	r3, [r7, #12]
	t.fields.minute=dt.minute;
    1fd4:	883b      	ldrh	r3, [r7, #0]
    1fd6:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1fda:	b2da      	uxtb	r2, r3
    1fdc:	89bb      	ldrh	r3, [r7, #12]
    1fde:	f362 134a 	bfi	r3, r2, #5, #6
    1fe2:	81bb      	strh	r3, [r7, #12]
	t.fields.hour=dt.hour;
    1fe4:	683b      	ldr	r3, [r7, #0]
    1fe6:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1fea:	b2da      	uxtb	r2, r3
    1fec:	7b7b      	ldrb	r3, [r7, #13]
    1fee:	f362 03c7 	bfi	r3, r2, #3, #5
    1ff2:	737b      	strb	r3, [r7, #13]
	t.fields.day=dt.day;
    1ff4:	78bb      	ldrb	r3, [r7, #2]
    1ff6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1ffa:	b2da      	uxtb	r2, r3
    1ffc:	7bbb      	ldrb	r3, [r7, #14]
    1ffe:	f362 0304 	bfi	r3, r2, #0, #5
    2002:	73bb      	strb	r3, [r7, #14]
	t.fields.month=dt.month;
    2004:	887b      	ldrh	r3, [r7, #2]
    2006:	f3c3 1383 	ubfx	r3, r3, #6, #4
    200a:	b2da      	uxtb	r2, r3
    200c:	89fb      	ldrh	r3, [r7, #14]
    200e:	f362 1348 	bfi	r3, r2, #5, #4
    2012:	81fb      	strh	r3, [r7, #14]
	t.fields.year=dt.year-1980;
    2014:	893b      	ldrh	r3, [r7, #8]
    2016:	b2db      	uxtb	r3, r3
    2018:	3344      	adds	r3, #68	; 0x44
    201a:	b2db      	uxtb	r3, r3
    201c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2020:	b2da      	uxtb	r2, r3
    2022:	7bfb      	ldrb	r3, [r7, #15]
    2024:	f362 0347 	bfi	r3, r2, #1, #7
    2028:	73fb      	strb	r3, [r7, #15]
	return t.u32;
    202a:	68fb      	ldr	r3, [r7, #12]
}
    202c:	4618      	mov	r0, r3
    202e:	3710      	adds	r7, #16
    2030:	46bd      	mov	sp, r7
    2032:	bd80      	pop	{r7, pc}

00002034 <RTC_handler>:


void RTC_handler(){
    2034:	b480      	push	{r7}
    2036:	b083      	sub	sp, #12
    2038:	af00      	add	r7, sp, #0
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    203a:	4b0a      	ldr	r3, [pc, #40]	; (2064 <RTC_handler+0x30>)
    203c:	685b      	ldr	r3, [r3, #4]
    203e:	f003 0301 	and.w	r3, r3, #1
    2042:	2b00      	cmp	r3, #0
    2044:	d001      	beq.n	204a <RTC_handler+0x16>
		RTC->CRL&~RTC_CRL_SECF;
    2046:	4b07      	ldr	r3, [pc, #28]	; (2064 <RTC_handler+0x30>)
    2048:	685b      	ldr	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    204a:	4b06      	ldr	r3, [pc, #24]	; (2064 <RTC_handler+0x30>)
    204c:	685b      	ldr	r3, [r3, #4]
    204e:	f003 0302 	and.w	r3, r3, #2
    2052:	2b00      	cmp	r3, #0
    2054:	d001      	beq.n	205a <RTC_handler+0x26>
		RTC->CRL&~RTC_CRL_ALRF;
    2056:	4b03      	ldr	r3, [pc, #12]	; (2064 <RTC_handler+0x30>)
    2058:	685b      	ldr	r3, [r3, #4]
	}// interruption alarme
}
    205a:	bf00      	nop
    205c:	370c      	adds	r7, #12
    205e:	46bd      	mov	sp, r7
    2060:	bc80      	pop	{r7}
    2062:	4770      	bx	lr
    2064:	40002800 	.word	0x40002800

00002068 <spi_baudrate>:
 */

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
    2068:	b480      	push	{r7}
    206a:	b083      	sub	sp, #12
    206c:	af00      	add	r7, sp, #0
    206e:	6078      	str	r0, [r7, #4]
    2070:	6039      	str	r1, [r7, #0]
	channel->CR1&=SPI_CR1_BR_MASK;
    2072:	687b      	ldr	r3, [r7, #4]
    2074:	681b      	ldr	r3, [r3, #0]
    2076:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    207a:	687b      	ldr	r3, [r7, #4]
    207c:	601a      	str	r2, [r3, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    207e:	687b      	ldr	r3, [r7, #4]
    2080:	681a      	ldr	r2, [r3, #0]
    2082:	683b      	ldr	r3, [r7, #0]
    2084:	00db      	lsls	r3, r3, #3
    2086:	431a      	orrs	r2, r3
    2088:	687b      	ldr	r3, [r7, #4]
    208a:	601a      	str	r2, [r3, #0]
}
    208c:	bf00      	nop
    208e:	370c      	adds	r7, #12
    2090:	46bd      	mov	sp, r7
    2092:	bc80      	pop	{r7}
    2094:	4770      	bx	lr

00002096 <spi_config_port>:

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2096:	b580      	push	{r7, lr}
    2098:	b082      	sub	sp, #8
    209a:	af00      	add	r7, sp, #0
    209c:	6078      	str	r0, [r7, #4]
    209e:	6039      	str	r1, [r7, #0]
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    20a0:	4a33      	ldr	r2, [pc, #204]	; (2170 <spi_config_port+0xda>)
    20a2:	4b33      	ldr	r3, [pc, #204]	; (2170 <spi_config_port+0xda>)
    20a4:	699b      	ldr	r3, [r3, #24]
    20a6:	f043 0301 	orr.w	r3, r3, #1
    20aa:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    20ac:	687b      	ldr	r3, [r7, #4]
    20ae:	4a31      	ldr	r2, [pc, #196]	; (2174 <spi_config_port+0xde>)
    20b0:	4293      	cmp	r3, r2
    20b2:	d13e      	bne.n	2132 <spi_config_port+0x9c>
		if (!afio_cfg){
    20b4:	683b      	ldr	r3, [r7, #0]
    20b6:	2b00      	cmp	r3, #0
    20b8:	d11a      	bne.n	20f0 <spi_config_port+0x5a>
			// activation clock du port
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    20ba:	4a2d      	ldr	r2, [pc, #180]	; (2170 <spi_config_port+0xda>)
    20bc:	4b2c      	ldr	r3, [pc, #176]	; (2170 <spi_config_port+0xda>)
    20be:	699b      	ldr	r3, [r3, #24]
    20c0:	f043 0304 	orr.w	r3, r3, #4
    20c4:	6193      	str	r3, [r2, #24]
			// configuration port
			// PA4 -> NSS output (push-pull)
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    20c6:	2203      	movs	r2, #3
    20c8:	2104      	movs	r1, #4
    20ca:	482b      	ldr	r0, [pc, #172]	; (2178 <spi_config_port+0xe2>)
    20cc:	f7fe fd91 	bl	bf2 <config_pin>
			// PA5 -> SCK output (push-pull)
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    20d0:	220b      	movs	r2, #11
    20d2:	2105      	movs	r1, #5
    20d4:	4828      	ldr	r0, [pc, #160]	; (2178 <spi_config_port+0xe2>)
    20d6:	f7fe fd8c 	bl	bf2 <config_pin>
			// PA6 -> MISO input (floating)
			config_pin(PORTA,6,INPUT_FLOAT);
    20da:	2204      	movs	r2, #4
    20dc:	2106      	movs	r1, #6
    20de:	4826      	ldr	r0, [pc, #152]	; (2178 <spi_config_port+0xe2>)
    20e0:	f7fe fd87 	bl	bf2 <config_pin>
			// PA7 -> MOSI output (push-pull)
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    20e4:	220b      	movs	r2, #11
    20e6:	2107      	movs	r1, #7
    20e8:	4823      	ldr	r0, [pc, #140]	; (2178 <spi_config_port+0xe2>)
    20ea:	f7fe fd82 	bl	bf2 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
	}
}
    20ee:	e03a      	b.n	2166 <spi_config_port+0xd0>
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    20f0:	4a1f      	ldr	r2, [pc, #124]	; (2170 <spi_config_port+0xda>)
    20f2:	4b1f      	ldr	r3, [pc, #124]	; (2170 <spi_config_port+0xda>)
    20f4:	699b      	ldr	r3, [r3, #24]
    20f6:	f043 030d 	orr.w	r3, r3, #13
    20fa:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    20fc:	4a1f      	ldr	r2, [pc, #124]	; (217c <spi_config_port+0xe6>)
    20fe:	4b1f      	ldr	r3, [pc, #124]	; (217c <spi_config_port+0xe6>)
    2100:	685b      	ldr	r3, [r3, #4]
    2102:	f043 0301 	orr.w	r3, r3, #1
    2106:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    2108:	2203      	movs	r2, #3
    210a:	210f      	movs	r1, #15
    210c:	481a      	ldr	r0, [pc, #104]	; (2178 <spi_config_port+0xe2>)
    210e:	f7fe fd70 	bl	bf2 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    2112:	220b      	movs	r2, #11
    2114:	2103      	movs	r1, #3
    2116:	481a      	ldr	r0, [pc, #104]	; (2180 <spi_config_port+0xea>)
    2118:	f7fe fd6b 	bl	bf2 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    211c:	2204      	movs	r2, #4
    211e:	2104      	movs	r1, #4
    2120:	4817      	ldr	r0, [pc, #92]	; (2180 <spi_config_port+0xea>)
    2122:	f7fe fd66 	bl	bf2 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2126:	220b      	movs	r2, #11
    2128:	2105      	movs	r1, #5
    212a:	4815      	ldr	r0, [pc, #84]	; (2180 <spi_config_port+0xea>)
    212c:	f7fe fd61 	bl	bf2 <config_pin>
}
    2130:	e019      	b.n	2166 <spi_config_port+0xd0>
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2132:	4a0f      	ldr	r2, [pc, #60]	; (2170 <spi_config_port+0xda>)
    2134:	4b0e      	ldr	r3, [pc, #56]	; (2170 <spi_config_port+0xda>)
    2136:	699b      	ldr	r3, [r3, #24]
    2138:	f043 0308 	orr.w	r3, r3, #8
    213c:	6193      	str	r3, [r2, #24]
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    213e:	2203      	movs	r2, #3
    2140:	2102      	movs	r1, #2
    2142:	480f      	ldr	r0, [pc, #60]	; (2180 <spi_config_port+0xea>)
    2144:	f7fe fd55 	bl	bf2 <config_pin>
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2148:	220b      	movs	r2, #11
    214a:	210d      	movs	r1, #13
    214c:	480c      	ldr	r0, [pc, #48]	; (2180 <spi_config_port+0xea>)
    214e:	f7fe fd50 	bl	bf2 <config_pin>
		config_pin(PORTB,14,INPUT_FLOAT);
    2152:	2204      	movs	r2, #4
    2154:	210e      	movs	r1, #14
    2156:	480a      	ldr	r0, [pc, #40]	; (2180 <spi_config_port+0xea>)
    2158:	f7fe fd4b 	bl	bf2 <config_pin>
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    215c:	220b      	movs	r2, #11
    215e:	210f      	movs	r1, #15
    2160:	4807      	ldr	r0, [pc, #28]	; (2180 <spi_config_port+0xea>)
    2162:	f7fe fd46 	bl	bf2 <config_pin>
}
    2166:	bf00      	nop
    2168:	3708      	adds	r7, #8
    216a:	46bd      	mov	sp, r7
    216c:	bd80      	pop	{r7, pc}
    216e:	bf00      	nop
    2170:	40021000 	.word	0x40021000
    2174:	40013000 	.word	0x40013000
    2178:	40010800 	.word	0x40010800
    217c:	40010000 	.word	0x40010000
    2180:	40010c00 	.word	0x40010c00

00002184 <spi_init>:

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2184:	b580      	push	{r7, lr}
    2186:	b084      	sub	sp, #16
    2188:	af00      	add	r7, sp, #0
    218a:	60f8      	str	r0, [r7, #12]
    218c:	60b9      	str	r1, [r7, #8]
    218e:	607a      	str	r2, [r7, #4]
    2190:	603b      	str	r3, [r7, #0]
	spi_config_port(channel,afio_cfg);
    2192:	6839      	ldr	r1, [r7, #0]
    2194:	68f8      	ldr	r0, [r7, #12]
    2196:	f7ff ff7e 	bl	2096 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    219a:	68fb      	ldr	r3, [r7, #12]
    219c:	4a10      	ldr	r2, [pc, #64]	; (21e0 <spi_init+0x5c>)
    219e:	4293      	cmp	r3, r2
    21a0:	d106      	bne.n	21b0 <spi_init+0x2c>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    21a2:	4a10      	ldr	r2, [pc, #64]	; (21e4 <spi_init+0x60>)
    21a4:	4b0f      	ldr	r3, [pc, #60]	; (21e4 <spi_init+0x60>)
    21a6:	699b      	ldr	r3, [r3, #24]
    21a8:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    21ac:	6193      	str	r3, [r2, #24]
    21ae:	e005      	b.n	21bc <spi_init+0x38>
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    21b0:	4a0c      	ldr	r2, [pc, #48]	; (21e4 <spi_init+0x60>)
    21b2:	4b0c      	ldr	r3, [pc, #48]	; (21e4 <spi_init+0x60>)
    21b4:	69db      	ldr	r3, [r3, #28]
    21b6:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    21ba:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    21bc:	68fb      	ldr	r3, [r7, #12]
    21be:	687a      	ldr	r2, [r7, #4]
    21c0:	601a      	str	r2, [r3, #0]
	spi_baudrate(channel,baud);
    21c2:	68b9      	ldr	r1, [r7, #8]
    21c4:	68f8      	ldr	r0, [r7, #12]
    21c6:	f7ff ff4f 	bl	2068 <spi_baudrate>
	_spi_enable(channel);
    21ca:	68fb      	ldr	r3, [r7, #12]
    21cc:	681b      	ldr	r3, [r3, #0]
    21ce:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    21d2:	68fb      	ldr	r3, [r7, #12]
    21d4:	601a      	str	r2, [r3, #0]
}
    21d6:	bf00      	nop
    21d8:	3710      	adds	r7, #16
    21da:	46bd      	mov	sp, r7
    21dc:	bd80      	pop	{r7, pc}
    21de:	bf00      	nop
    21e0:	40013000 	.word	0x40013000
    21e4:	40021000 	.word	0x40021000

000021e8 <spi_send>:


// envoie un octet via le canla SPI
inline void spi_send(spi_sfr_t* channel, uint8_t b){
    21e8:	b480      	push	{r7}
    21ea:	b085      	sub	sp, #20
    21ec:	af00      	add	r7, sp, #0
    21ee:	6078      	str	r0, [r7, #4]
    21f0:	460b      	mov	r3, r1
    21f2:	70fb      	strb	r3, [r7, #3]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    21f4:	bf00      	nop
    21f6:	687b      	ldr	r3, [r7, #4]
    21f8:	689b      	ldr	r3, [r3, #8]
    21fa:	f003 0302 	and.w	r3, r3, #2
    21fe:	2b00      	cmp	r3, #0
    2200:	d0f9      	beq.n	21f6 <spi_send+0xe>
	channel->DR=b;
    2202:	78fa      	ldrb	r2, [r7, #3]
    2204:	687b      	ldr	r3, [r7, #4]
    2206:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2208:	bf00      	nop
    220a:	687b      	ldr	r3, [r7, #4]
    220c:	689b      	ldr	r3, [r3, #8]
    220e:	f003 0301 	and.w	r3, r3, #1
    2212:	2b00      	cmp	r3, #0
    2214:	d0f9      	beq.n	220a <spi_send+0x22>
	rx=(uint8_t)channel->DR;
    2216:	687b      	ldr	r3, [r7, #4]
    2218:	68db      	ldr	r3, [r3, #12]
    221a:	73fb      	strb	r3, [r7, #15]
}
    221c:	bf00      	nop
    221e:	3714      	adds	r7, #20
    2220:	46bd      	mov	sp, r7
    2222:	bc80      	pop	{r7}
    2224:	4770      	bx	lr

00002226 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
    2226:	b480      	push	{r7}
    2228:	b085      	sub	sp, #20
    222a:	af00      	add	r7, sp, #0
    222c:	6078      	str	r0, [r7, #4]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    222e:	bf00      	nop
    2230:	687b      	ldr	r3, [r7, #4]
    2232:	689b      	ldr	r3, [r3, #8]
    2234:	f003 0302 	and.w	r3, r3, #2
    2238:	2b00      	cmp	r3, #0
    223a:	d0f9      	beq.n	2230 <spi_receive+0xa>
	channel->DR=255;
    223c:	687b      	ldr	r3, [r7, #4]
    223e:	22ff      	movs	r2, #255	; 0xff
    2240:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    2242:	bf00      	nop
    2244:	687b      	ldr	r3, [r7, #4]
    2246:	689b      	ldr	r3, [r3, #8]
    2248:	f003 0301 	and.w	r3, r3, #1
    224c:	2b00      	cmp	r3, #0
    224e:	d0f9      	beq.n	2244 <spi_receive+0x1e>
	rx=(uint8_t)channel->DR;
    2250:	687b      	ldr	r3, [r7, #4]
    2252:	68db      	ldr	r3, [r3, #12]
    2254:	73fb      	strb	r3, [r7, #15]
	return rx;
    2256:	7bfb      	ldrb	r3, [r7, #15]
}
    2258:	4618      	mov	r0, r3
    225a:	3714      	adds	r7, #20
    225c:	46bd      	mov	sp, r7
    225e:	bc80      	pop	{r7}
    2260:	4770      	bx	lr

00002262 <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
    2262:	b480      	push	{r7}
    2264:	b087      	sub	sp, #28
    2266:	af00      	add	r7, sp, #0
    2268:	60f8      	str	r0, [r7, #12]
    226a:	60b9      	str	r1, [r7, #8]
    226c:	607a      	str	r2, [r7, #4]
	uint8_t rx;
	while (count){
    226e:	e010      	b.n	2292 <spi_send_block+0x30>
		channel->DR=*buffer++;
    2270:	68bb      	ldr	r3, [r7, #8]
    2272:	1c5a      	adds	r2, r3, #1
    2274:	60ba      	str	r2, [r7, #8]
    2276:	781b      	ldrb	r3, [r3, #0]
    2278:	461a      	mov	r2, r3
    227a:	68fb      	ldr	r3, [r7, #12]
    227c:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_TXE));
    227e:	bf00      	nop
    2280:	68fb      	ldr	r3, [r7, #12]
    2282:	689b      	ldr	r3, [r3, #8]
    2284:	f003 0302 	and.w	r3, r3, #2
    2288:	2b00      	cmp	r3, #0
    228a:	d0f9      	beq.n	2280 <spi_send_block+0x1e>
		count--;
    228c:	687b      	ldr	r3, [r7, #4]
    228e:	3b01      	subs	r3, #1
    2290:	607b      	str	r3, [r7, #4]
	while (count){
    2292:	687b      	ldr	r3, [r7, #4]
    2294:	2b00      	cmp	r3, #0
    2296:	d1eb      	bne.n	2270 <spi_send_block+0xe>
	}
	while (channel->SR&SPI_SR_BSY);
    2298:	bf00      	nop
    229a:	68fb      	ldr	r3, [r7, #12]
    229c:	689b      	ldr	r3, [r3, #8]
    229e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    22a2:	2b00      	cmp	r3, #0
    22a4:	d1f9      	bne.n	229a <spi_send_block+0x38>
	rx=(uint8_t)channel->DR;
    22a6:	68fb      	ldr	r3, [r7, #12]
    22a8:	68db      	ldr	r3, [r3, #12]
    22aa:	75fb      	strb	r3, [r7, #23]
}
    22ac:	bf00      	nop
    22ae:	371c      	adds	r7, #28
    22b0:	46bd      	mov	sp, r7
    22b2:	bc80      	pop	{r7}
    22b4:	4770      	bx	lr

000022b6 <spi_receive_block>:

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    22b6:	b480      	push	{r7}
    22b8:	b085      	sub	sp, #20
    22ba:	af00      	add	r7, sp, #0
    22bc:	60f8      	str	r0, [r7, #12]
    22be:	60b9      	str	r1, [r7, #8]
    22c0:	607a      	str	r2, [r7, #4]
	while (count){
    22c2:	e013      	b.n	22ec <spi_receive_block+0x36>
		channel->DR=0;
    22c4:	68fb      	ldr	r3, [r7, #12]
    22c6:	2200      	movs	r2, #0
    22c8:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    22ca:	bf00      	nop
    22cc:	68fb      	ldr	r3, [r7, #12]
    22ce:	689b      	ldr	r3, [r3, #8]
    22d0:	f003 0301 	and.w	r3, r3, #1
    22d4:	2b00      	cmp	r3, #0
    22d6:	d0f9      	beq.n	22cc <spi_receive_block+0x16>
		*buffer++=(uint8_t)channel->DR;
    22d8:	68bb      	ldr	r3, [r7, #8]
    22da:	1c5a      	adds	r2, r3, #1
    22dc:	60ba      	str	r2, [r7, #8]
    22de:	68fa      	ldr	r2, [r7, #12]
    22e0:	68d2      	ldr	r2, [r2, #12]
    22e2:	b2d2      	uxtb	r2, r2
    22e4:	701a      	strb	r2, [r3, #0]
		count--;
    22e6:	687b      	ldr	r3, [r7, #4]
    22e8:	3b01      	subs	r3, #1
    22ea:	607b      	str	r3, [r7, #4]
	while (count){
    22ec:	687b      	ldr	r3, [r7, #4]
    22ee:	2b00      	cmp	r3, #0
    22f0:	d1e8      	bne.n	22c4 <spi_receive_block+0xe>
	}
}
    22f2:	bf00      	nop
    22f4:	3714      	adds	r7, #20
    22f6:	46bd      	mov	sp, r7
    22f8:	bc80      	pop	{r7}
    22fa:	4770      	bx	lr

000022fc <reset_mcu>:
	_reset_mcu();
    22fc:	4b01      	ldr	r3, [pc, #4]	; (2304 <reset_mcu+0x8>)
    22fe:	4a02      	ldr	r2, [pc, #8]	; (2308 <reset_mcu+0xc>)
    2300:	601a      	str	r2, [r3, #0]
}
    2302:	bf00      	nop
    2304:	e000ed0c 	.word	0xe000ed0c
    2308:	05fa0004 	.word	0x05fa0004

0000230c <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    230c:	b580      	push	{r7, lr}
    230e:	b082      	sub	sp, #8
    2310:	af00      	add	r7, sp, #0
    2312:	6078      	str	r0, [r7, #4]
    2314:	6039      	str	r1, [r7, #0]
	gfx_print(msg);
    2316:	6878      	ldr	r0, [r7, #4]
    2318:	f7fe fd6a 	bl	df0 <gfx_print>
	gfx_print("\nat address ");
    231c:	4818      	ldr	r0, [pc, #96]	; (2380 <print_fault+0x74>)
    231e:	f7fe fd67 	bl	df0 <gfx_print>
	if (adr) {
    2322:	683b      	ldr	r3, [r7, #0]
    2324:	2b00      	cmp	r3, #0
    2326:	d004      	beq.n	2332 <print_fault+0x26>
		gfx_print_int(adr,16);
    2328:	683b      	ldr	r3, [r7, #0]
    232a:	2110      	movs	r1, #16
    232c:	4618      	mov	r0, r3
    232e:	f7fe fd82 	bl	e36 <gfx_print_int>
	gfx_putchar(CR);
    2332:	200d      	movs	r0, #13
    2334:	f7fe fd08 	bl	d48 <gfx_putchar>
	gfx_print("\nUFSR=");
    2338:	4812      	ldr	r0, [pc, #72]	; (2384 <print_fault+0x78>)
    233a:	f7fe fd59 	bl	df0 <gfx_print>
	gfx_print_int(CFSR->fsr.usageFalt,16);
    233e:	4b12      	ldr	r3, [pc, #72]	; (2388 <print_fault+0x7c>)
    2340:	681b      	ldr	r3, [r3, #0]
    2342:	f3c3 430f 	ubfx	r3, r3, #16, #16
    2346:	b29b      	uxth	r3, r3
    2348:	2110      	movs	r1, #16
    234a:	4618      	mov	r0, r3
    234c:	f7fe fd73 	bl	e36 <gfx_print_int>
	gfx_print("\nBFSR=");
    2350:	480e      	ldr	r0, [pc, #56]	; (238c <print_fault+0x80>)
    2352:	f7fe fd4d 	bl	df0 <gfx_print>
	gfx_print_int(CFSR->fsr.busFault,16);
    2356:	4b0c      	ldr	r3, [pc, #48]	; (2388 <print_fault+0x7c>)
    2358:	681b      	ldr	r3, [r3, #0]
    235a:	f3c3 2307 	ubfx	r3, r3, #8, #8
    235e:	b2db      	uxtb	r3, r3
    2360:	2110      	movs	r1, #16
    2362:	4618      	mov	r0, r3
    2364:	f7fe fd67 	bl	e36 <gfx_print_int>
	gfx_print("\nMMFSR=");
    2368:	4809      	ldr	r0, [pc, #36]	; (2390 <print_fault+0x84>)
    236a:	f7fe fd41 	bl	df0 <gfx_print>
	gfx_print_int(CFSR->fsr.mmFault,16);
    236e:	4b06      	ldr	r3, [pc, #24]	; (2388 <print_fault+0x7c>)
    2370:	681b      	ldr	r3, [r3, #0]
    2372:	b2db      	uxtb	r3, r3
    2374:	2110      	movs	r1, #16
    2376:	4618      	mov	r0, r3
    2378:	f7fe fd5d 	bl	e36 <gfx_print_int>
	while(1);
    237c:	e7fe      	b.n	237c <print_fault+0x70>
    237e:	bf00      	nop
    2380:	00002c18 	.word	0x00002c18
    2384:	00002c28 	.word	0x00002c28
    2388:	e000ed28 	.word	0xe000ed28
    238c:	00002c30 	.word	0x00002c30
    2390:	00002c38 	.word	0x00002c38

00002394 <config_systicks>:


// configure SYSTICKS pour un cycle 1 msec
// source AHB/8
#define MSEC_DLY FCLK/8/1000
void config_systicks(){
    2394:	b580      	push	{r7, lr}
    2396:	af00      	add	r7, sp, #0
	set_int_priority(IRQ_STK,9);
    2398:	2109      	movs	r1, #9
    239a:	f06f 000e 	mvn.w	r0, #14
    239e:	f7fe fff3 	bl	1388 <set_int_priority>
	*SYST_RVR=MSEC_DLY-1;
    23a2:	4b04      	ldr	r3, [pc, #16]	; (23b4 <config_systicks+0x20>)
    23a4:	f242 22f3 	movw	r2, #8947	; 0x22f3
    23a8:	601a      	str	r2, [r3, #0]
	SYST_CSR->csr=(1<<SYST_TICKINT)|(1<<SYST_ENABLE);
    23aa:	4b03      	ldr	r3, [pc, #12]	; (23b8 <config_systicks+0x24>)
    23ac:	2203      	movs	r2, #3
    23ae:	601a      	str	r2, [r3, #0]
}
    23b0:	bf00      	nop
    23b2:	bd80      	pop	{r7, pc}
    23b4:	e000e014 	.word	0xe000e014
    23b8:	e000e010 	.word	0xe000e010

000023bc <pause>:



void pause(unsigned msec){
    23bc:	b480      	push	{r7}
    23be:	b083      	sub	sp, #12
    23c0:	af00      	add	r7, sp, #0
    23c2:	6078      	str	r0, [r7, #4]
	timer=msec;
    23c4:	4a06      	ldr	r2, [pc, #24]	; (23e0 <pause+0x24>)
    23c6:	687b      	ldr	r3, [r7, #4]
    23c8:	6013      	str	r3, [r2, #0]
	while (timer);
    23ca:	bf00      	nop
    23cc:	4b04      	ldr	r3, [pc, #16]	; (23e0 <pause+0x24>)
    23ce:	681b      	ldr	r3, [r3, #0]
    23d0:	2b00      	cmp	r3, #0
    23d2:	d1fb      	bne.n	23cc <pause+0x10>
}
    23d4:	bf00      	nop
    23d6:	370c      	adds	r7, #12
    23d8:	46bd      	mov	sp, r7
    23da:	bc80      	pop	{r7}
    23dc:	4770      	bx	lr
    23de:	bf00      	nop
    23e0:	2000045c 	.word	0x2000045c

000023e4 <STK_handler>:


// interruption coretimer
void STK_handler(){
    23e4:	b480      	push	{r7}
    23e6:	af00      	add	r7, sp, #0
	ticks++;
    23e8:	4b08      	ldr	r3, [pc, #32]	; (240c <STK_handler+0x28>)
    23ea:	681b      	ldr	r3, [r3, #0]
    23ec:	3301      	adds	r3, #1
    23ee:	4a07      	ldr	r2, [pc, #28]	; (240c <STK_handler+0x28>)
    23f0:	6013      	str	r3, [r2, #0]
	if (timer) {timer--;}
    23f2:	4b07      	ldr	r3, [pc, #28]	; (2410 <STK_handler+0x2c>)
    23f4:	681b      	ldr	r3, [r3, #0]
    23f6:	2b00      	cmp	r3, #0
    23f8:	d004      	beq.n	2404 <STK_handler+0x20>
    23fa:	4b05      	ldr	r3, [pc, #20]	; (2410 <STK_handler+0x2c>)
    23fc:	681b      	ldr	r3, [r3, #0]
    23fe:	3b01      	subs	r3, #1
    2400:	4a03      	ldr	r2, [pc, #12]	; (2410 <STK_handler+0x2c>)
    2402:	6013      	str	r3, [r2, #0]
}
    2404:	bf00      	nop
    2406:	46bd      	mov	sp, r7
    2408:	bc80      	pop	{r7}
    240a:	4770      	bx	lr
    240c:	20000458 	.word	0x20000458
    2410:	2000045c 	.word	0x2000045c

00002414 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    2414:	b580      	push	{r7, lr}
    2416:	af00      	add	r7, sp, #0
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2418:	220a      	movs	r2, #10
    241a:	2108      	movs	r1, #8
    241c:	4848      	ldr	r0, [pc, #288]	; (2540 <tvout_init+0x12c>)
    241e:	f7fe fbe8 	bl	bf2 <config_pin>
    config_pin(SYNC_PORT,9,OUTPUT_PP_SLOW);
    2422:	2202      	movs	r2, #2
    2424:	2109      	movs	r1, #9
    2426:	4846      	ldr	r0, [pc, #280]	; (2540 <tvout_init+0x12c>)
    2428:	f7fe fbe3 	bl	bf2 <config_pin>
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    242c:	4a45      	ldr	r2, [pc, #276]	; (2544 <tvout_init+0x130>)
    242e:	4b45      	ldr	r3, [pc, #276]	; (2544 <tvout_init+0x130>)
    2430:	699b      	ldr	r3, [r3, #24]
    2432:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2436:	6193      	str	r3, [r2, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2438:	4b43      	ldr	r3, [pc, #268]	; (2548 <tvout_init+0x134>)
    243a:	2278      	movs	r2, #120	; 0x78
    243c:	619a      	str	r2, [r3, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    243e:	4b42      	ldr	r3, [pc, #264]	; (2548 <tvout_init+0x134>)
    2440:	2201      	movs	r2, #1
    2442:	621a      	str	r2, [r3, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2444:	4b40      	ldr	r3, [pc, #256]	; (2548 <tvout_init+0x134>)
    2446:	2284      	movs	r2, #132	; 0x84
    2448:	601a      	str	r2, [r3, #0]
    TMR1->ARR=HPERIOD;
    244a:	4b3f      	ldr	r3, [pc, #252]	; (2548 <tvout_init+0x134>)
    244c:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2450:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    2452:	4b3d      	ldr	r3, [pc, #244]	; (2548 <tvout_init+0x134>)
    2454:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2458:	635a      	str	r2, [r3, #52]	; 0x34
    TMR1->CCR2=CHROMA_START;
    245a:	4b3b      	ldr	r3, [pc, #236]	; (2548 <tvout_init+0x134>)
    245c:	f240 126d 	movw	r2, #365	; 0x16d
    2460:	639a      	str	r2, [r3, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    2462:	4a39      	ldr	r2, [pc, #228]	; (2548 <tvout_init+0x134>)
    2464:	4b38      	ldr	r3, [pc, #224]	; (2548 <tvout_init+0x134>)
    2466:	695b      	ldr	r3, [r3, #20]
    2468:	f043 0301 	orr.w	r3, r3, #1
    246c:	6153      	str	r3, [r2, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    246e:	4b36      	ldr	r3, [pc, #216]	; (2548 <tvout_init+0x134>)
    2470:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2474:	645a      	str	r2, [r3, #68]	; 0x44
    TMR1->SR=0;
    2476:	4b34      	ldr	r3, [pc, #208]	; (2548 <tvout_init+0x134>)
    2478:	2200      	movs	r2, #0
    247a:	611a      	str	r2, [r3, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    247c:	4a32      	ldr	r2, [pc, #200]	; (2548 <tvout_init+0x134>)
    247e:	4b32      	ldr	r3, [pc, #200]	; (2548 <tvout_init+0x134>)
    2480:	68db      	ldr	r3, [r3, #12]
    2482:	f043 0301 	orr.w	r3, r3, #1
    2486:	60d3      	str	r3, [r2, #12]
    set_int_priority(IRQ_TIM1_UP,1);
    2488:	2101      	movs	r1, #1
    248a:	2019      	movs	r0, #25
    248c:	f7fe ff7c 	bl	1388 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,1);
    2490:	2101      	movs	r1, #1
    2492:	201b      	movs	r0, #27
    2494:	f7fe ff78 	bl	1388 <set_int_priority>
    enable_interrupt(IRQ_TIM1_CC);    
    2498:	201b      	movs	r0, #27
    249a:	f7fe febb 	bl	1214 <enable_interrupt>
    enable_interrupt(IRQ_TIM1_UP);
    249e:	2019      	movs	r0, #25
    24a0:	f7fe feb8 	bl	1214 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    24a4:	4a28      	ldr	r2, [pc, #160]	; (2548 <tvout_init+0x134>)
    24a6:	4b28      	ldr	r3, [pc, #160]	; (2548 <tvout_init+0x134>)
    24a8:	681b      	ldr	r3, [r3, #0]
    24aa:	f043 0301 	orr.w	r3, r3, #1
    24ae:	6013      	str	r3, [r2, #0]
    // chroma signal generation
    config_pin(PORTA,0,OUTPUT_ALT_PP_SLOW);
    24b0:	220a      	movs	r2, #10
    24b2:	2100      	movs	r1, #0
    24b4:	4822      	ldr	r0, [pc, #136]	; (2540 <tvout_init+0x12c>)
    24b6:	f7fe fb9c 	bl	bf2 <config_pin>
    config_pin(PORTA,1,OUTPUT_ALT_PP_SLOW);
    24ba:	220a      	movs	r2, #10
    24bc:	2101      	movs	r1, #1
    24be:	4820      	ldr	r0, [pc, #128]	; (2540 <tvout_init+0x12c>)
    24c0:	f7fe fb97 	bl	bf2 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    24c4:	4a1f      	ldr	r2, [pc, #124]	; (2544 <tvout_init+0x130>)
    24c6:	4b1f      	ldr	r3, [pc, #124]	; (2544 <tvout_init+0x130>)
    24c8:	69db      	ldr	r3, [r3, #28]
    24ca:	f043 0301 	orr.w	r3, r3, #1
    24ce:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|(6<<TMR_CCMR1_OC2M_POS)|TMR_CCMR1_OC1PE;
    24d0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    24d4:	f246 0278 	movw	r2, #24696	; 0x6078
    24d8:	619a      	str	r2, [r3, #24]
    TMR2->CCER=TMR_CCER_CC1E;
    24da:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    24de:	2201      	movs	r2, #1
    24e0:	621a      	str	r2, [r3, #32]
    TMR2->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    24e2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    24e6:	2284      	movs	r2, #132	; 0x84
    24e8:	601a      	str	r2, [r3, #0]
    TMR2->ARR=19; 
    24ea:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    24ee:	2213      	movs	r2, #19
    24f0:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR2->CCR1=10;
    24f2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    24f6:	220a      	movs	r2, #10
    24f8:	635a      	str	r2, [r3, #52]	; 0x34
    TMR2->CCR2=10;
    24fa:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    24fe:	220a      	movs	r2, #10
    2500:	639a      	str	r2, [r3, #56]	; 0x38
    TMR2->BDTR|=TMR_BDTR_MOE;
    2502:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2506:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    250a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    250c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    2510:	6453      	str	r3, [r2, #68]	; 0x44
    TMR2->EGR|=TMR_EGR_UG;
    2512:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2516:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    251a:	695b      	ldr	r3, [r3, #20]
    251c:	f043 0301 	orr.w	r3, r3, #1
    2520:	6153      	str	r3, [r2, #20]
    TMR2->SR=0;
    2522:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2526:	2200      	movs	r2, #0
    2528:	611a      	str	r2, [r3, #16]
    TMR2->CR1|=TMR_CR1_CEN; 
    252a:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    252e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    2532:	681b      	ldr	r3, [r3, #0]
    2534:	f043 0301 	orr.w	r3, r3, #1
    2538:	6013      	str	r3, [r2, #0]
}
    253a:	bf00      	nop
    253c:	bd80      	pop	{r7, pc}
    253e:	bf00      	nop
    2540:	40010800 	.word	0x40010800
    2544:	40021000 	.word	0x40021000
    2548:	40012c00 	.word	0x40012c00

0000254c <TV_OUT_handler>:


void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    254c:	4668      	mov	r0, sp
    254e:	f020 0107 	bic.w	r1, r0, #7
    2552:	468d      	mov	sp, r1
    2554:	b571      	push	{r0, r4, r5, r6, lr}
    TMR2->CCER=TMR_CCER_CC2E;
    2556:	2210      	movs	r2, #16
    2558:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    255c:	621a      	str	r2, [r3, #32]
    while(TMR1->CNT<(uint16_t)(8.0e-6*(float)FCLK));
    255e:	4a29      	ldr	r2, [pc, #164]	; (2604 <TV_OUT_handler+0xb8>)
    2560:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2562:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    2566:	d3fb      	bcc.n	2560 <TV_OUT_handler+0x14>
    TMR2->CCER&=~TMR_CCER_CC2E;
    2568:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    256c:	6a13      	ldr	r3, [r2, #32]
    256e:	f023 0310 	bic.w	r3, r3, #16
    2572:	6213      	str	r3, [r2, #32]
    if (flags&F_VIDEO){
    2574:	4b24      	ldr	r3, [pc, #144]	; (2608 <TV_OUT_handler+0xbc>)
    2576:	881b      	ldrh	r3, [r3, #0]
    2578:	f013 0f04 	tst.w	r3, #4
    257c:	d039      	beq.n	25f2 <TV_OUT_handler+0xa6>
            int i,r;
            uint8_t s,b,byte;
            while(TMR1->CNT<LEFT_MARGIN);
    257e:	f502 3296 	add.w	r2, r2, #76800	; 0x12c00
    2582:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2584:	f5b3 6f86 	cmp.w	r3, #1072	; 0x430
    2588:	d9fb      	bls.n	2582 <TV_OUT_handler+0x36>
            r=slice/3*BPR;
    258a:	4b20      	ldr	r3, [pc, #128]	; (260c <TV_OUT_handler+0xc0>)
    258c:	881b      	ldrh	r3, [r3, #0]
    258e:	b29b      	uxth	r3, r3
            TMR2->CCER=TMR_CCER_CC1E;
    2590:	2101      	movs	r1, #1
    2592:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    2596:	6211      	str	r1, [r2, #32]
            r=slice/3*BPR;
    2598:	4a1d      	ldr	r2, [pc, #116]	; (2610 <TV_OUT_handler+0xc4>)
    259a:	fba2 2303 	umull	r2, r3, r2, r3
    259e:	40cb      	lsrs	r3, r1
    25a0:	011b      	lsls	r3, r3, #4
    25a2:	4e1c      	ldr	r6, [pc, #112]	; (2614 <TV_OUT_handler+0xc8>)
    25a4:	199d      	adds	r5, r3, r6
    25a6:	3310      	adds	r3, #16
    25a8:	441e      	add	r6, r3
            for (i=0;i<(BPR);i++){
                byte=video_buffer[r+i];
                for(s=128;s;s>>=1){
    25aa:	f04f 0e80 	mov.w	lr, #128	; 0x80
                    b=byte&s;
                    if (b){
                        PORTA->ODR|=BIT9;
                    }else{
                        PORTA->ODR&=~BIT9;
    25ae:	491a      	ldr	r1, [pc, #104]	; (2618 <TV_OUT_handler+0xcc>)
    25b0:	e001      	b.n	25b6 <TV_OUT_handler+0x6a>
            for (i=0;i<(BPR);i++){
    25b2:	42b5      	cmp	r5, r6
    25b4:	d012      	beq.n	25dc <TV_OUT_handler+0x90>
                byte=video_buffer[r+i];
    25b6:	f815 4b01 	ldrb.w	r4, [r5], #1
    25ba:	2308      	movs	r3, #8
                for(s=128;s;s>>=1){
    25bc:	4672      	mov	r2, lr
                    if (b){
    25be:	4214      	tst	r4, r2
                        PORTA->ODR|=BIT9;
    25c0:	68c8      	ldr	r0, [r1, #12]
    25c2:	bf14      	ite	ne
    25c4:	f440 7000 	orrne.w	r0, r0, #512	; 0x200
                        PORTA->ODR&=~BIT9;
    25c8:	f420 7000 	biceq.w	r0, r0, #512	; 0x200
    25cc:	60c8      	str	r0, [r1, #12]
                    }
                    asm("nop\nnop\nnop\n");
    25ce:	bf00      	nop
    25d0:	bf00      	nop
    25d2:	bf00      	nop
                for(s=128;s;s>>=1){
    25d4:	0852      	lsrs	r2, r2, #1
    25d6:	3b01      	subs	r3, #1
    25d8:	d1f1      	bne.n	25be <TV_OUT_handler+0x72>
    25da:	e7ea      	b.n	25b2 <TV_OUT_handler+0x66>
                }
            }
        PORTA->ODR&=~BIT9;
    25dc:	4a0e      	ldr	r2, [pc, #56]	; (2618 <TV_OUT_handler+0xcc>)
    25de:	68d3      	ldr	r3, [r2, #12]
    25e0:	f423 7300 	bic.w	r3, r3, #512	; 0x200
    25e4:	60d3      	str	r3, [r2, #12]
        TMR2->CCER&=~TMR_CCER_CC1E;
    25e6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    25ea:	6a13      	ldr	r3, [r2, #32]
    25ec:	f023 0301 	bic.w	r3, r3, #1
    25f0:	6213      	str	r3, [r2, #32]
    }
    TMR1->SR&=~TMR_SR_CC2IF;
    25f2:	4a04      	ldr	r2, [pc, #16]	; (2604 <TV_OUT_handler+0xb8>)
    25f4:	6913      	ldr	r3, [r2, #16]
    25f6:	f023 0304 	bic.w	r3, r3, #4
    25fa:	6113      	str	r3, [r2, #16]
}
    25fc:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    2600:	4685      	mov	sp, r0
    2602:	4770      	bx	lr
    2604:	40012c00 	.word	0x40012c00
    2608:	20000462 	.word	0x20000462
    260c:	20000464 	.word	0x20000464
    2610:	aaaaaaab 	.word	0xaaaaaaab
    2614:	20000468 	.word	0x20000468
    2618:	40010800 	.word	0x40010800

0000261c <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    261c:	4668      	mov	r0, sp
    261e:	f020 0107 	bic.w	r1, r0, #7
    2622:	468d      	mov	sp, r1
    2624:	b401      	push	{r0}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    2626:	4a79      	ldr	r2, [pc, #484]	; (280c <TV_SYNC_handler+0x1f0>)
    2628:	8813      	ldrh	r3, [r2, #0]
    262a:	3301      	adds	r3, #1
    262c:	b29b      	uxth	r3, r3
    262e:	8013      	strh	r3, [r2, #0]
    switch (task){
    2630:	4b77      	ldr	r3, [pc, #476]	; (2810 <TV_SYNC_handler+0x1f4>)
    2632:	881b      	ldrh	r3, [r3, #0]
    2634:	b29b      	uxth	r3, r3
    2636:	2b06      	cmp	r3, #6
    2638:	f200 808d 	bhi.w	2756 <TV_SYNC_handler+0x13a>
    263c:	e8df f013 	tbh	[pc, r3, lsl #1]
    2640:	00290007 	.word	0x00290007
    2644:	006b0049 	.word	0x006b0049
    2648:	00a70093 	.word	0x00a70093
    264c:	00be      	.short	0x00be
    case PRE_SYNC:
        if (!slice){
    264e:	4b71      	ldr	r3, [pc, #452]	; (2814 <TV_SYNC_handler+0x1f8>)
    2650:	881b      	ldrh	r3, [r3, #0]
    2652:	b29b      	uxth	r3, r3
    2654:	b18b      	cbz	r3, 267a <TV_SYNC_handler+0x5e>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    2656:	4a6f      	ldr	r2, [pc, #444]	; (2814 <TV_SYNC_handler+0x1f8>)
    2658:	8813      	ldrh	r3, [r2, #0]
    265a:	3301      	adds	r3, #1
    265c:	b29b      	uxth	r3, r3
    265e:	8013      	strh	r3, [r2, #0]
    2660:	8813      	ldrh	r3, [r2, #0]
    2662:	b29b      	uxth	r3, r3
    2664:	2b06      	cmp	r3, #6
    2666:	d176      	bne.n	2756 <TV_SYNC_handler+0x13a>
    2668:	2200      	movs	r2, #0
    266a:	4b6a      	ldr	r3, [pc, #424]	; (2814 <TV_SYNC_handler+0x1f8>)
    266c:	801a      	strh	r2, [r3, #0]
    266e:	4a68      	ldr	r2, [pc, #416]	; (2810 <TV_SYNC_handler+0x1f4>)
    2670:	8813      	ldrh	r3, [r2, #0]
    2672:	3301      	adds	r3, #1
    2674:	b29b      	uxth	r3, r3
    2676:	8013      	strh	r3, [r2, #0]
    2678:	e06d      	b.n	2756 <TV_SYNC_handler+0x13a>
            TMR1->ARR=SYNC_LINE;
    267a:	4b67      	ldr	r3, [pc, #412]	; (2818 <TV_SYNC_handler+0x1fc>)
    267c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2680:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    2682:	22a4      	movs	r2, #164	; 0xa4
    2684:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2686:	4a63      	ldr	r2, [pc, #396]	; (2814 <TV_SYNC_handler+0x1f8>)
    2688:	8813      	ldrh	r3, [r2, #0]
    268a:	3301      	adds	r3, #1
    268c:	b29b      	uxth	r3, r3
    268e:	8013      	strh	r3, [r2, #0]
    2690:	e061      	b.n	2756 <TV_SYNC_handler+0x13a>
        }
        break;
    case VSYNC:
        if (!slice){
    2692:	4b60      	ldr	r3, [pc, #384]	; (2814 <TV_SYNC_handler+0x1f8>)
    2694:	881b      	ldrh	r3, [r3, #0]
    2696:	b29b      	uxth	r3, r3
    2698:	b18b      	cbz	r3, 26be <TV_SYNC_handler+0xa2>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    269a:	4a5e      	ldr	r2, [pc, #376]	; (2814 <TV_SYNC_handler+0x1f8>)
    269c:	8813      	ldrh	r3, [r2, #0]
    269e:	3301      	adds	r3, #1
    26a0:	b29b      	uxth	r3, r3
    26a2:	8013      	strh	r3, [r2, #0]
    26a4:	8813      	ldrh	r3, [r2, #0]
    26a6:	b29b      	uxth	r3, r3
    26a8:	2b06      	cmp	r3, #6
    26aa:	d154      	bne.n	2756 <TV_SYNC_handler+0x13a>
    26ac:	2200      	movs	r2, #0
    26ae:	4b59      	ldr	r3, [pc, #356]	; (2814 <TV_SYNC_handler+0x1f8>)
    26b0:	801a      	strh	r2, [r3, #0]
    26b2:	4a57      	ldr	r2, [pc, #348]	; (2810 <TV_SYNC_handler+0x1f4>)
    26b4:	8813      	ldrh	r3, [r2, #0]
    26b6:	3301      	adds	r3, #1
    26b8:	b29b      	uxth	r3, r3
    26ba:	8013      	strh	r3, [r2, #0]
    26bc:	e04b      	b.n	2756 <TV_SYNC_handler+0x13a>
            TMR1->CCR1=SYNC_PULSE;
    26be:	f240 7294 	movw	r2, #1940	; 0x794
    26c2:	4b55      	ldr	r3, [pc, #340]	; (2818 <TV_SYNC_handler+0x1fc>)
    26c4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    26c6:	4a53      	ldr	r2, [pc, #332]	; (2814 <TV_SYNC_handler+0x1f8>)
    26c8:	8813      	ldrh	r3, [r2, #0]
    26ca:	3301      	adds	r3, #1
    26cc:	b29b      	uxth	r3, r3
    26ce:	8013      	strh	r3, [r2, #0]
    26d0:	e041      	b.n	2756 <TV_SYNC_handler+0x13a>
        }
        break;
    case POST_SYNC:
        if (!slice){
    26d2:	4b50      	ldr	r3, [pc, #320]	; (2814 <TV_SYNC_handler+0x1f8>)
    26d4:	881b      	ldrh	r3, [r3, #0]
    26d6:	b29b      	uxth	r3, r3
    26d8:	b153      	cbz	r3, 26f0 <TV_SYNC_handler+0xd4>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    26da:	4b4e      	ldr	r3, [pc, #312]	; (2814 <TV_SYNC_handler+0x1f8>)
    26dc:	881b      	ldrh	r3, [r3, #0]
    26de:	b29b      	uxth	r3, r3
    26e0:	2b06      	cmp	r3, #6
    26e2:	d00e      	beq.n	2702 <TV_SYNC_handler+0xe6>
            task++;
            if (!(flags&F_EVEN_MASK)){
                break;
            }
        }else{
            slice++;
    26e4:	4a4b      	ldr	r2, [pc, #300]	; (2814 <TV_SYNC_handler+0x1f8>)
    26e6:	8813      	ldrh	r3, [r2, #0]
    26e8:	3301      	adds	r3, #1
    26ea:	b29b      	uxth	r3, r3
    26ec:	8013      	strh	r3, [r2, #0]
            break;
    26ee:	e032      	b.n	2756 <TV_SYNC_handler+0x13a>
            TMR1->CCR1=SERRATION;    
    26f0:	22a4      	movs	r2, #164	; 0xa4
    26f2:	4b49      	ldr	r3, [pc, #292]	; (2818 <TV_SYNC_handler+0x1fc>)
    26f4:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    26f6:	4a47      	ldr	r2, [pc, #284]	; (2814 <TV_SYNC_handler+0x1f8>)
    26f8:	8813      	ldrh	r3, [r2, #0]
    26fa:	3301      	adds	r3, #1
    26fc:	b29b      	uxth	r3, r3
    26fe:	8013      	strh	r3, [r2, #0]
            break;
    2700:	e029      	b.n	2756 <TV_SYNC_handler+0x13a>
            task++;
    2702:	4a43      	ldr	r2, [pc, #268]	; (2810 <TV_SYNC_handler+0x1f4>)
    2704:	8813      	ldrh	r3, [r2, #0]
    2706:	3301      	adds	r3, #1
    2708:	b29b      	uxth	r3, r3
    270a:	8013      	strh	r3, [r2, #0]
            if (!(flags&F_EVEN_MASK)){
    270c:	4b43      	ldr	r3, [pc, #268]	; (281c <TV_SYNC_handler+0x200>)
    270e:	881b      	ldrh	r3, [r3, #0]
    2710:	f013 0f01 	tst.w	r3, #1
    2714:	d01f      	beq.n	2756 <TV_SYNC_handler+0x13a>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    2716:	4a40      	ldr	r2, [pc, #256]	; (2818 <TV_SYNC_handler+0x1fc>)
    2718:	f241 13c5 	movw	r3, #4549	; 0x11c5
    271c:	62d3      	str	r3, [r2, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    271e:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2722:	6353      	str	r3, [r2, #52]	; 0x34
        flags&=~F_VSYNC_MASK;
    2724:	493d      	ldr	r1, [pc, #244]	; (281c <TV_SYNC_handler+0x200>)
    2726:	880b      	ldrh	r3, [r1, #0]
    2728:	f023 0302 	bic.w	r3, r3, #2
    272c:	041b      	lsls	r3, r3, #16
    272e:	0c1b      	lsrs	r3, r3, #16
    2730:	800b      	strh	r3, [r1, #0]
        scan_line>>=2;
    2732:	4936      	ldr	r1, [pc, #216]	; (280c <TV_SYNC_handler+0x1f0>)
    2734:	880b      	ldrh	r3, [r1, #0]
    2736:	f3c3 038d 	ubfx	r3, r3, #2, #14
    273a:	800b      	strh	r3, [r1, #0]
        task++;
    273c:	4934      	ldr	r1, [pc, #208]	; (2810 <TV_SYNC_handler+0x1f4>)
    273e:	880b      	ldrh	r3, [r1, #0]
    2740:	3301      	adds	r3, #1
    2742:	b29b      	uxth	r3, r3
    2744:	800b      	strh	r3, [r1, #0]
        TMR1->SR&=~TMR_SR_CC2IF;
    2746:	6913      	ldr	r3, [r2, #16]
    2748:	f023 0304 	bic.w	r3, r3, #4
    274c:	6113      	str	r3, [r2, #16]
        TMR1->DIER|=TMR_DIER_CC2IE;
    274e:	68d3      	ldr	r3, [r2, #12]
    2750:	f043 0304 	orr.w	r3, r3, #4
    2754:	60d3      	str	r3, [r2, #12]
            task=0;
            TMR1->DIER&=~TMR_DIER_CC2IE;
        }
        break;
    }//switch slice
    TMR1->SR&=~TMR_SR_UIF;
    2756:	4a30      	ldr	r2, [pc, #192]	; (2818 <TV_SYNC_handler+0x1fc>)
    2758:	6913      	ldr	r3, [r2, #16]
    275a:	f023 0301 	bic.w	r3, r3, #1
    275e:	6113      	str	r3, [r2, #16]
}
    2760:	bc01      	pop	{r0}
    2762:	4685      	mov	sp, r0
    2764:	4770      	bx	lr
        if (scan_line==FIRST_VIDEO_LINE){
    2766:	4b29      	ldr	r3, [pc, #164]	; (280c <TV_SYNC_handler+0x1f0>)
    2768:	881b      	ldrh	r3, [r3, #0]
    276a:	b29b      	uxth	r3, r3
    276c:	2b14      	cmp	r3, #20
    276e:	d1f2      	bne.n	2756 <TV_SYNC_handler+0x13a>
            task++;
    2770:	4a27      	ldr	r2, [pc, #156]	; (2810 <TV_SYNC_handler+0x1f4>)
    2772:	8813      	ldrh	r3, [r2, #0]
    2774:	3301      	adds	r3, #1
    2776:	b29b      	uxth	r3, r3
    2778:	8013      	strh	r3, [r2, #0]
            slice=0;
    277a:	2200      	movs	r2, #0
    277c:	4b25      	ldr	r3, [pc, #148]	; (2814 <TV_SYNC_handler+0x1f8>)
    277e:	801a      	strh	r2, [r3, #0]
            flags |= F_VIDEO;
    2780:	4a26      	ldr	r2, [pc, #152]	; (281c <TV_SYNC_handler+0x200>)
    2782:	8813      	ldrh	r3, [r2, #0]
    2784:	b29b      	uxth	r3, r3
    2786:	f043 0304 	orr.w	r3, r3, #4
    278a:	8013      	strh	r3, [r2, #0]
    278c:	e7e3      	b.n	2756 <TV_SYNC_handler+0x13a>
        slice++;
    278e:	4a21      	ldr	r2, [pc, #132]	; (2814 <TV_SYNC_handler+0x1f8>)
    2790:	8813      	ldrh	r3, [r2, #0]
    2792:	3301      	adds	r3, #1
    2794:	b29b      	uxth	r3, r3
    2796:	8013      	strh	r3, [r2, #0]
        if (scan_line==(FIRST_VIDEO_LINE+VIDEO_LINES)){
    2798:	4b1c      	ldr	r3, [pc, #112]	; (280c <TV_SYNC_handler+0x1f0>)
    279a:	881b      	ldrh	r3, [r3, #0]
    279c:	b29b      	uxth	r3, r3
    279e:	2bf8      	cmp	r3, #248	; 0xf8
    27a0:	d1d9      	bne.n	2756 <TV_SYNC_handler+0x13a>
            task++;
    27a2:	4a1b      	ldr	r2, [pc, #108]	; (2810 <TV_SYNC_handler+0x1f4>)
    27a4:	8813      	ldrh	r3, [r2, #0]
    27a6:	3301      	adds	r3, #1
    27a8:	b29b      	uxth	r3, r3
    27aa:	8013      	strh	r3, [r2, #0]
            flags &=~F_VIDEO;
    27ac:	4a1b      	ldr	r2, [pc, #108]	; (281c <TV_SYNC_handler+0x200>)
    27ae:	8813      	ldrh	r3, [r2, #0]
    27b0:	f023 0304 	bic.w	r3, r3, #4
    27b4:	041b      	lsls	r3, r3, #16
    27b6:	0c1b      	lsrs	r3, r3, #16
    27b8:	8013      	strh	r3, [r2, #0]
    27ba:	e7cc      	b.n	2756 <TV_SYNC_handler+0x13a>
        if (scan_line==263){
    27bc:	4b13      	ldr	r3, [pc, #76]	; (280c <TV_SYNC_handler+0x1f0>)
    27be:	881b      	ldrh	r3, [r3, #0]
    27c0:	b29b      	uxth	r3, r3
    27c2:	f240 1207 	movw	r2, #263	; 0x107
    27c6:	4293      	cmp	r3, r2
    27c8:	d1c5      	bne.n	2756 <TV_SYNC_handler+0x13a>
            if (flags&F_EVEN_MASK){ // half length
    27ca:	4b14      	ldr	r3, [pc, #80]	; (281c <TV_SYNC_handler+0x200>)
    27cc:	881b      	ldrh	r3, [r3, #0]
    27ce:	f013 0f01 	tst.w	r3, #1
    27d2:	d003      	beq.n	27dc <TV_SYNC_handler+0x1c0>
                TMR1->ARR=SYNC_LINE;
    27d4:	f640 02e2 	movw	r2, #2274	; 0x8e2
    27d8:	4b0f      	ldr	r3, [pc, #60]	; (2818 <TV_SYNC_handler+0x1fc>)
    27da:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN_MASK;
    27dc:	4a0f      	ldr	r2, [pc, #60]	; (281c <TV_SYNC_handler+0x200>)
    27de:	8813      	ldrh	r3, [r2, #0]
    27e0:	b29b      	uxth	r3, r3
    27e2:	f083 0301 	eor.w	r3, r3, #1
    27e6:	8013      	strh	r3, [r2, #0]
            flags|=F_VSYNC_MASK;
    27e8:	8813      	ldrh	r3, [r2, #0]
    27ea:	b29b      	uxth	r3, r3
    27ec:	f043 0302 	orr.w	r3, r3, #2
    27f0:	8013      	strh	r3, [r2, #0]
            scan_line=0;
    27f2:	2300      	movs	r3, #0
    27f4:	4a05      	ldr	r2, [pc, #20]	; (280c <TV_SYNC_handler+0x1f0>)
    27f6:	8013      	strh	r3, [r2, #0]
            slice=0;
    27f8:	4a06      	ldr	r2, [pc, #24]	; (2814 <TV_SYNC_handler+0x1f8>)
    27fa:	8013      	strh	r3, [r2, #0]
            task=0;
    27fc:	4a04      	ldr	r2, [pc, #16]	; (2810 <TV_SYNC_handler+0x1f4>)
    27fe:	8013      	strh	r3, [r2, #0]
            TMR1->DIER&=~TMR_DIER_CC2IE;
    2800:	4a05      	ldr	r2, [pc, #20]	; (2818 <TV_SYNC_handler+0x1fc>)
    2802:	68d3      	ldr	r3, [r2, #12]
    2804:	f023 0304 	bic.w	r3, r3, #4
    2808:	60d3      	str	r3, [r2, #12]
    280a:	e7a4      	b.n	2756 <TV_SYNC_handler+0x13a>
    280c:	20000466 	.word	0x20000466
    2810:	20000460 	.word	0x20000460
    2814:	20000464 	.word	0x20000464
    2818:	40012c00 	.word	0x40012c00
    281c:	20000462 	.word	0x20000462
