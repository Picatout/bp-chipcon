
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 a5 47 00 00     .P. 1...=....G..
      10:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
      20:	a5 47 00 00 a5 47 00 00 a5 47 00 00 55 02 00 00     .G...G...G..U...
      30:	a5 47 00 00 a5 47 00 00 5b 02 00 00 61 02 00 00     .G...G..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 dd 41 00 00     g...m...y....A..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 a5 47 00 00 a5 47 00 00 b5 02 00 00     .....G...G......
      80:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
      90:	a5 47 00 00 a5 47 00 00 a5 47 00 00 bb 02 00 00     .G...G...G......
      a0:	a5 47 00 00 81 50 00 00 a5 47 00 00 81 4f 00 00     .G...P...G...O..
      b0:	7d 44 00 00 cd 02 00 00 d3 02 00 00 a5 47 00 00     }D...........G..
      c0:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
      d0:	a5 47 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .G..............
      e0:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
      f0:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
     100:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
     110:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..
     120:	a5 47 00 00 a5 47 00 00 a5 47 00 00 a5 47 00 00     .G...G...G...G..

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
     18e:	f003 f8d8 	bl	3342 <main>
}
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000210 	.word	0x20000210
     1a0:	20004e4a 	.word	0x20004e4a
     1a4:	0000b028 	.word	0x0000b028
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
     1dc:	f004 faea 	bl	47b4 <print_fault>
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
     1f4:	f004 fade 	bl	47b4 <print_fault>
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
     20c:	f004 fad2 	bl	47b4 <print_fault>
}
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
		print_fault("hard fault  ",adr);
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 facd 	bl	47b4 <print_fault>
}
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00005b58 	.word	0x00005b58
     230:	00005b70 	.word	0x00005b70
     234:	00005b7c 	.word	0x00005b7c
     238:	00005b8c 	.word	0x00005b8c

0000023c <NMI_handler>:
_default_handler(NMI_handler) // 2
     23c:	f004 fab2 	bl	47a4 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     242:	f004 faaf 	bl	47a4 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     248:	f004 faac 	bl	47a4 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     24e:	f004 faa9 	bl	47a4 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
_default_handler(SVC_handler) // 11
     254:	f004 faa6 	bl	47a4 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     25a:	f004 faa3 	bl	47a4 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
_default_handler(STK_handler) // 15
     260:	f004 faa0 	bl	47a4 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     266:	f004 fa9d 	bl	47a4 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
_default_handler(PVD_handler) // 1
     26c:	f004 fa9a 	bl	47a4 <reset_mcu>
     270:	bf00      	nop
_default_handler(RTC_handler) // 2
     272:	f004 fa97 	bl	47a4 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     278:	f004 fa94 	bl	47a4 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     27e:	f004 fa91 	bl	47a4 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
_default_handler(RCC_handler) // 5
     284:	f004 fa8e 	bl	47a4 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     28a:	f004 fa8b 	bl	47a4 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     290:	f004 fa88 	bl	47a4 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     296:	f004 fa85 	bl	47a4 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     29c:	f004 fa82 	bl	47a4 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     2a2:	f004 fa7f 	bl	47a4 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     2a8:	f004 fa7c 	bl	47a4 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     2ae:	f004 fa79 	bl	47a4 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     2b4:	f004 fa76 	bl	47a4 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     2ba:	f004 fa73 	bl	47a4 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     2c0:	f004 fa70 	bl	47a4 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     2c6:	f004 fa6d 	bl	47a4 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     2cc:	f004 fa6a 	bl	47a4 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     2d2:	f004 fa67 	bl	47a4 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
_default_handler(USART1_handler) // 37
     2d8:	f004 fa64 	bl	47a4 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
_default_handler(USART2_handler) // 38
     2de:	f004 fa61 	bl	47a4 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
_default_handler(USART3_handler) // 39
     2e4:	f004 fa5e 	bl	47a4 <reset_mcu>
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
     3c8:	f004 fa6c 	bl	48a4 <new_line>
	select_font(FONT_ASCII);
     3cc:	2002      	movs	r0, #2
     3ce:	f004 fa59 	bl	4884 <select_font>
	print(msg);
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 fbb2 	bl	4b3c <print>
	print("PC:");
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 fbaf 	bl	4b3c <print>
	print_hex(vms.pc-2);
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 fbd8 	bl	4b9c <print_int>
	print_hex(vms.b2);
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7ddb      	ldrb	r3, [r3, #23]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 fbd2 	bl	4b9c <print_int>
	print_hex(vms.b1);
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7d9b      	ldrb	r3, [r3, #22]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 fbcc 	bl	4b9c <print_int>
	new_line();
     404:	f004 fa4e 	bl	48a4 <new_line>
	print("I:");
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 fb97 	bl	4b3c <print>
	print_hex(vms.ix);
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 fbc1 	bl	4b9c <print_int>
	print(" SP:");
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 fb8e 	bl	4b3c <print>
	print_hex(vms.sp);
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 fbb8 	bl	4b9c <print_int>
	new_line();
     42c:	f004 fa3a 	bl	48a4 <new_line>
	print("var[]:");
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 fb83 	bl	4b3c <print>
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
     44a:	f004 fba7 	bl	4b9c <print_int>
	for (int i=0;i<16;i++){
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
	}
	new_line();
     45a:	f004 fa23 	bl	48a4 <new_line>
	prompt_btn();
     45e:	f004 fcbd 	bl	4ddc <prompt_btn>
}
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	00005510 	.word	0x00005510
     470:	20000210 	.word	0x20000210
     474:	00005514 	.word	0x00005514
     478:	00005518 	.word	0x00005518
     47c:	00005520 	.word	0x00005520

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
uint8_t chip_vm(uint16_t program_address){
     4e0:	b590      	push	{r4, r7, lr}
     4e2:	b089      	sub	sp, #36	; 0x24
     4e4:	af02      	add	r7, sp, #8
     4e6:	4603      	mov	r3, r0
     4e8:	80fb      	strh	r3, [r7, #6]
	uint8_t x,y,n;
	uint16_t code;
	vms.pc=program_address;
     4ea:	4ab1      	ldr	r2, [pc, #708]	; (7b0 <chip_vm+0x2d0>)
     4ec:	88fb      	ldrh	r3, [r7, #6]
     4ee:	8013      	strh	r3, [r2, #0]
	vms.sp=0;
     4f0:	4baf      	ldr	r3, [pc, #700]	; (7b0 <chip_vm+0x2d0>)
     4f2:	2200      	movs	r2, #0
     4f4:	711a      	strb	r2, [r3, #4]
	vms.ix=0;
     4f6:	4bae      	ldr	r3, [pc, #696]	; (7b0 <chip_vm+0x2d0>)
     4f8:	2200      	movs	r2, #0
     4fa:	805a      	strh	r2, [r3, #2]
 	while (1){
		//if (joystick_break()) return CHIP_EXIT_OK;
		_get_opcode(vms.pc);
     4fc:	4bac      	ldr	r3, [pc, #688]	; (7b0 <chip_vm+0x2d0>)
     4fe:	881b      	ldrh	r3, [r3, #0]
     500:	461a      	mov	r2, r3
     502:	4bac      	ldr	r3, [pc, #688]	; (7b4 <chip_vm+0x2d4>)
     504:	5c9a      	ldrb	r2, [r3, r2]
     506:	4baa      	ldr	r3, [pc, #680]	; (7b0 <chip_vm+0x2d0>)
     508:	759a      	strb	r2, [r3, #22]
     50a:	4ba9      	ldr	r3, [pc, #676]	; (7b0 <chip_vm+0x2d0>)
     50c:	881b      	ldrh	r3, [r3, #0]
     50e:	3301      	adds	r3, #1
     510:	4aa8      	ldr	r2, [pc, #672]	; (7b4 <chip_vm+0x2d4>)
     512:	5cd2      	ldrb	r2, [r2, r3]
     514:	4ba6      	ldr	r3, [pc, #664]	; (7b0 <chip_vm+0x2d0>)
     516:	75da      	strb	r2, [r3, #23]
		vms.pc+=2;
     518:	4ba5      	ldr	r3, [pc, #660]	; (7b0 <chip_vm+0x2d0>)
     51a:	881b      	ldrh	r3, [r3, #0]
     51c:	3302      	adds	r3, #2
     51e:	b29a      	uxth	r2, r3
     520:	4ba3      	ldr	r3, [pc, #652]	; (7b0 <chip_vm+0x2d0>)
     522:	801a      	strh	r2, [r3, #0]
		x=rx(vms.b1);
     524:	4ba2      	ldr	r3, [pc, #648]	; (7b0 <chip_vm+0x2d0>)
     526:	7d9b      	ldrb	r3, [r3, #22]
     528:	f003 030f 	and.w	r3, r3, #15
     52c:	75fb      	strb	r3, [r7, #23]
		y=ry(vms.b2);
     52e:	4ba0      	ldr	r3, [pc, #640]	; (7b0 <chip_vm+0x2d0>)
     530:	7ddb      	ldrb	r3, [r3, #23]
     532:	091b      	lsrs	r3, r3, #4
     534:	75bb      	strb	r3, [r7, #22]
	    switch (vms.b1>>4){
     536:	4b9e      	ldr	r3, [pc, #632]	; (7b0 <chip_vm+0x2d0>)
     538:	7d9b      	ldrb	r3, [r3, #22]
     53a:	091b      	lsrs	r3, r3, #4
     53c:	b2db      	uxtb	r3, r3
     53e:	2b0f      	cmp	r3, #15
     540:	d8dc      	bhi.n	4fc <chip_vm+0x1c>
     542:	a201      	add	r2, pc, #4	; (adr r2, 548 <chip_vm+0x68>)
     544:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     548:	00000589 	.word	0x00000589
     54c:	000006c5 	.word	0x000006c5
     550:	000006fd 	.word	0x000006fd
     554:	00000755 	.word	0x00000755
     558:	00000777 	.word	0x00000777
     55c:	00000799 	.word	0x00000799
     560:	0000084d 	.word	0x0000084d
     564:	0000085f 	.word	0x0000085f
     568:	0000089f 	.word	0x0000089f
     56c:	00000a97 	.word	0x00000a97
     570:	00000d4b 	.word	0x00000d4b
     574:	00000d85 	.word	0x00000d85
     578:	00000dc9 	.word	0x00000dc9
     57c:	00000de7 	.word	0x00000de7
     580:	00000ed7 	.word	0x00000ed7
     584:	00000f41 	.word	0x00000f41
		case 0:
		    if ((vms.b1|vms.b2)==0){
     588:	4b89      	ldr	r3, [pc, #548]	; (7b0 <chip_vm+0x2d0>)
     58a:	7d9a      	ldrb	r2, [r3, #22]
     58c:	4b88      	ldr	r3, [pc, #544]	; (7b0 <chip_vm+0x2d0>)
     58e:	7ddb      	ldrb	r3, [r3, #23]
     590:	4313      	orrs	r3, r2
     592:	b2db      	uxtb	r3, r3
     594:	2b00      	cmp	r3, #0
     596:	f000 86c8 	beq.w	132a <chip_vm+0xe4a>
				//NOP 
			}else if ((vms.b2&0xf0)==0xc0){ // 00CN scroll screen down  ; SCHIP
     59a:	4b85      	ldr	r3, [pc, #532]	; (7b0 <chip_vm+0x2d0>)
     59c:	7ddb      	ldrb	r3, [r3, #23]
     59e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5a2:	2bc0      	cmp	r3, #192	; 0xc0
     5a4:	d109      	bne.n	5ba <chip_vm+0xda>
				gfx_scroll_down(vms.b2&0xf); 
     5a6:	4b82      	ldr	r3, [pc, #520]	; (7b0 <chip_vm+0x2d0>)
     5a8:	7ddb      	ldrb	r3, [r3, #23]
     5aa:	f003 030f 	and.w	r3, r3, #15
     5ae:	b2db      	uxtb	r3, r3
     5b0:	4618      	mov	r0, r3
     5b2:	f001 ff27 	bl	2404 <gfx_scroll_down>
					set_video_mode(VM_BPCHIP);
					break;
				default:
					return CHIP_BAD_OPCODE;
			}//switch(b2)
			break;
     5b6:	f000 beb8 	b.w	132a <chip_vm+0xe4a>
			}else if ((vms.b2&0xf0)==0xd0){ // 00DN scroll screen up ; XO-CHIP, BP-CHIP
     5ba:	4b7d      	ldr	r3, [pc, #500]	; (7b0 <chip_vm+0x2d0>)
     5bc:	7ddb      	ldrb	r3, [r3, #23]
     5be:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5c2:	2bd0      	cmp	r3, #208	; 0xd0
     5c4:	d109      	bne.n	5da <chip_vm+0xfa>
				gfx_scroll_up(vms.b2&0xf);					
     5c6:	4b7a      	ldr	r3, [pc, #488]	; (7b0 <chip_vm+0x2d0>)
     5c8:	7ddb      	ldrb	r3, [r3, #23]
     5ca:	f003 030f 	and.w	r3, r3, #15
     5ce:	b2db      	uxtb	r3, r3
     5d0:	4618      	mov	r0, r3
     5d2:	f001 fedd 	bl	2390 <gfx_scroll_up>
			break;
     5d6:	f000 bea8 	b.w	132a <chip_vm+0xe4a>
			}else switch(vms.b2){
     5da:	4b75      	ldr	r3, [pc, #468]	; (7b0 <chip_vm+0x2d0>)
     5dc:	7ddb      	ldrb	r3, [r3, #23]
     5de:	3be0      	subs	r3, #224	; 0xe0
     5e0:	2b1f      	cmp	r3, #31
     5e2:	d86a      	bhi.n	6ba <chip_vm+0x1da>
     5e4:	a201      	add	r2, pc, #4	; (adr r2, 5ec <chip_vm+0x10c>)
     5e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     5ea:	bf00      	nop
     5ec:	0000066d 	.word	0x0000066d
     5f0:	000006bb 	.word	0x000006bb
     5f4:	000006bb 	.word	0x000006bb
     5f8:	000006bb 	.word	0x000006bb
     5fc:	000006bb 	.word	0x000006bb
     600:	000006bb 	.word	0x000006bb
     604:	000006bb 	.word	0x000006bb
     608:	000006bb 	.word	0x000006bb
     60c:	000006bb 	.word	0x000006bb
     610:	000006bb 	.word	0x000006bb
     614:	000006bb 	.word	0x000006bb
     618:	000006bb 	.word	0x000006bb
     61c:	000006bb 	.word	0x000006bb
     620:	000006bb 	.word	0x000006bb
     624:	00000673 	.word	0x00000673
     628:	000006bb 	.word	0x000006bb
     62c:	000006bb 	.word	0x000006bb
     630:	000006bb 	.word	0x000006bb
     634:	000006bb 	.word	0x000006bb
     638:	000006bb 	.word	0x000006bb
     63c:	000006bb 	.word	0x000006bb
     640:	000006bb 	.word	0x000006bb
     644:	000006bb 	.word	0x000006bb
     648:	000006bb 	.word	0x000006bb
     64c:	000006bb 	.word	0x000006bb
     650:	000006bb 	.word	0x000006bb
     654:	000006b3 	.word	0x000006b3
     658:	0000068d 	.word	0x0000068d
     65c:	00000695 	.word	0x00000695
     660:	0000069d 	.word	0x0000069d
     664:	000006a3 	.word	0x000006a3
     668:	000006ab 	.word	0x000006ab
					gfx_cls();
     66c:	f001 fe34 	bl	22d8 <gfx_cls>
					break;
     670:	e026      	b.n	6c0 <chip_vm+0x1e0>
					vms.pc=vms.stack[vms.sp--];
     672:	4b4f      	ldr	r3, [pc, #316]	; (7b0 <chip_vm+0x2d0>)
     674:	791b      	ldrb	r3, [r3, #4]
     676:	1e5a      	subs	r2, r3, #1
     678:	b2d1      	uxtb	r1, r2
     67a:	4a4d      	ldr	r2, [pc, #308]	; (7b0 <chip_vm+0x2d0>)
     67c:	7111      	strb	r1, [r2, #4]
     67e:	4a4c      	ldr	r2, [pc, #304]	; (7b0 <chip_vm+0x2d0>)
     680:	330c      	adds	r3, #12
     682:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     686:	4b4a      	ldr	r3, [pc, #296]	; (7b0 <chip_vm+0x2d0>)
     688:	801a      	strh	r2, [r3, #0]
					break;
     68a:	e019      	b.n	6c0 <chip_vm+0x1e0>
					gfx_scroll_right(4);
     68c:	2004      	movs	r0, #4
     68e:	f001 ff43 	bl	2518 <gfx_scroll_right>
					break;
     692:	e015      	b.n	6c0 <chip_vm+0x1e0>
					gfx_scroll_left(4);
     694:	2004      	movs	r0, #4
     696:	f001 fefd 	bl	2494 <gfx_scroll_left>
					break;
     69a:	e011      	b.n	6c0 <chip_vm+0x1e0>
					return CHIP_EXIT_OK;
     69c:	2301      	movs	r3, #1
     69e:	f000 be56 	b.w	134e <chip_vm+0xe6e>
					set_video_mode(VM_CHIP8);
     6a2:	2002      	movs	r0, #2
     6a4:	f004 fe5c 	bl	5360 <set_video_mode>
					break; 
     6a8:	e00a      	b.n	6c0 <chip_vm+0x1e0>
					set_video_mode(VM_SCHIP);
     6aa:	2001      	movs	r0, #1
     6ac:	f004 fe58 	bl	5360 <set_video_mode>
					break; 
     6b0:	e006      	b.n	6c0 <chip_vm+0x1e0>
					set_video_mode(VM_BPCHIP);
     6b2:	2000      	movs	r0, #0
     6b4:	f004 fe54 	bl	5360 <set_video_mode>
					break;
     6b8:	e002      	b.n	6c0 <chip_vm+0x1e0>
					return CHIP_BAD_OPCODE;
     6ba:	2302      	movs	r3, #2
     6bc:	f000 be47 	b.w	134e <chip_vm+0xe6e>
			break;
     6c0:	f000 be33 	b.w	132a <chip_vm+0xe4a>
		case 0x1: // 1NNN JP label  ;saut vers 'label'  adresse=2*NNN
			vms.pc=caddr(vms.b1,vms.b2);
     6c4:	4b3a      	ldr	r3, [pc, #232]	; (7b0 <chip_vm+0x2d0>)
     6c6:	7d9b      	ldrb	r3, [r3, #22]
     6c8:	021b      	lsls	r3, r3, #8
     6ca:	b21a      	sxth	r2, r3
     6cc:	4b38      	ldr	r3, [pc, #224]	; (7b0 <chip_vm+0x2d0>)
     6ce:	7ddb      	ldrb	r3, [r3, #23]
     6d0:	b21b      	sxth	r3, r3
     6d2:	4313      	orrs	r3, r2
     6d4:	b21b      	sxth	r3, r3
     6d6:	b29b      	uxth	r3, r3
     6d8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     6dc:	b29a      	uxth	r2, r3
     6de:	4b34      	ldr	r3, [pc, #208]	; (7b0 <chip_vm+0x2d0>)
     6e0:	801a      	strh	r2, [r3, #0]
			if (video_mode!=VM_CHIP8){
     6e2:	4b35      	ldr	r3, [pc, #212]	; (7b8 <chip_vm+0x2d8>)
     6e4:	781b      	ldrb	r3, [r3, #0]
     6e6:	2b02      	cmp	r3, #2
     6e8:	f000 8622 	beq.w	1330 <chip_vm+0xe50>
				vms.pc<<=1;
     6ec:	4b30      	ldr	r3, [pc, #192]	; (7b0 <chip_vm+0x2d0>)
     6ee:	881b      	ldrh	r3, [r3, #0]
     6f0:	005b      	lsls	r3, r3, #1
     6f2:	b29a      	uxth	r2, r3
     6f4:	4b2e      	ldr	r3, [pc, #184]	; (7b0 <chip_vm+0x2d0>)
     6f6:	801a      	strh	r2, [r3, #0]
			}
			break;
     6f8:	f000 be1a 	b.w	1330 <chip_vm+0xe50>
		case 0x2: // 2NNN  CALL label  ; appelle la sous-routine 'label' adresse=2*NNN
			vms.stack[++vms.sp]=vms.pc;
     6fc:	4b2c      	ldr	r3, [pc, #176]	; (7b0 <chip_vm+0x2d0>)
     6fe:	791b      	ldrb	r3, [r3, #4]
     700:	3301      	adds	r3, #1
     702:	b2da      	uxtb	r2, r3
     704:	4b2a      	ldr	r3, [pc, #168]	; (7b0 <chip_vm+0x2d0>)
     706:	711a      	strb	r2, [r3, #4]
     708:	4b29      	ldr	r3, [pc, #164]	; (7b0 <chip_vm+0x2d0>)
     70a:	791b      	ldrb	r3, [r3, #4]
     70c:	4618      	mov	r0, r3
     70e:	4b28      	ldr	r3, [pc, #160]	; (7b0 <chip_vm+0x2d0>)
     710:	8819      	ldrh	r1, [r3, #0]
     712:	4a27      	ldr	r2, [pc, #156]	; (7b0 <chip_vm+0x2d0>)
     714:	f100 030c 	add.w	r3, r0, #12
     718:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
			vms.pc=caddr(vms.b1,vms.b2);
     71c:	4b24      	ldr	r3, [pc, #144]	; (7b0 <chip_vm+0x2d0>)
     71e:	7d9b      	ldrb	r3, [r3, #22]
     720:	021b      	lsls	r3, r3, #8
     722:	b21a      	sxth	r2, r3
     724:	4b22      	ldr	r3, [pc, #136]	; (7b0 <chip_vm+0x2d0>)
     726:	7ddb      	ldrb	r3, [r3, #23]
     728:	b21b      	sxth	r3, r3
     72a:	4313      	orrs	r3, r2
     72c:	b21b      	sxth	r3, r3
     72e:	b29b      	uxth	r3, r3
     730:	f3c3 030b 	ubfx	r3, r3, #0, #12
     734:	b29a      	uxth	r2, r3
     736:	4b1e      	ldr	r3, [pc, #120]	; (7b0 <chip_vm+0x2d0>)
     738:	801a      	strh	r2, [r3, #0]
			if (video_mode!=VM_CHIP8){
     73a:	4b1f      	ldr	r3, [pc, #124]	; (7b8 <chip_vm+0x2d8>)
     73c:	781b      	ldrb	r3, [r3, #0]
     73e:	2b02      	cmp	r3, #2
     740:	f000 85f9 	beq.w	1336 <chip_vm+0xe56>
				vms.pc<<=1;
     744:	4b1a      	ldr	r3, [pc, #104]	; (7b0 <chip_vm+0x2d0>)
     746:	881b      	ldrh	r3, [r3, #0]
     748:	005b      	lsls	r3, r3, #1
     74a:	b29a      	uxth	r2, r3
     74c:	4b18      	ldr	r3, [pc, #96]	; (7b0 <chip_vm+0x2d0>)
     74e:	801a      	strh	r2, [r3, #0]
			}
			break;
     750:	f000 bdf1 	b.w	1336 <chip_vm+0xe56>
		case 0x3: // 3XKK   SE VX, KK  ;saute l'instruction suivante si VX == KK
			if (vms.var[x]==vms.b2) vms.pc+=2;
     754:	7dfb      	ldrb	r3, [r7, #23]
     756:	4a16      	ldr	r2, [pc, #88]	; (7b0 <chip_vm+0x2d0>)
     758:	4413      	add	r3, r2
     75a:	799a      	ldrb	r2, [r3, #6]
     75c:	4b14      	ldr	r3, [pc, #80]	; (7b0 <chip_vm+0x2d0>)
     75e:	7ddb      	ldrb	r3, [r3, #23]
     760:	429a      	cmp	r2, r3
     762:	f040 85eb 	bne.w	133c <chip_vm+0xe5c>
     766:	4b12      	ldr	r3, [pc, #72]	; (7b0 <chip_vm+0x2d0>)
     768:	881b      	ldrh	r3, [r3, #0]
     76a:	3302      	adds	r3, #2
     76c:	b29a      	uxth	r2, r3
     76e:	4b10      	ldr	r3, [pc, #64]	; (7b0 <chip_vm+0x2d0>)
     770:	801a      	strh	r2, [r3, #0]
			break;
     772:	f000 bde3 	b.w	133c <chip_vm+0xe5c>
		case 0x4: // 4XKK  SNE VX,VY  ;Saute l'instruction suivante si VX <> KK
			if (vms.var[x]!=vms.b2)vms.pc+=2;
     776:	7dfb      	ldrb	r3, [r7, #23]
     778:	4a0d      	ldr	r2, [pc, #52]	; (7b0 <chip_vm+0x2d0>)
     77a:	4413      	add	r3, r2
     77c:	799a      	ldrb	r2, [r3, #6]
     77e:	4b0c      	ldr	r3, [pc, #48]	; (7b0 <chip_vm+0x2d0>)
     780:	7ddb      	ldrb	r3, [r3, #23]
     782:	429a      	cmp	r2, r3
     784:	f000 85dd 	beq.w	1342 <chip_vm+0xe62>
     788:	4b09      	ldr	r3, [pc, #36]	; (7b0 <chip_vm+0x2d0>)
     78a:	881b      	ldrh	r3, [r3, #0]
     78c:	3302      	adds	r3, #2
     78e:	b29a      	uxth	r2, r3
     790:	4b07      	ldr	r3, [pc, #28]	; (7b0 <chip_vm+0x2d0>)
     792:	801a      	strh	r2, [r3, #0]
			break;
     794:	f000 bdd5 	b.w	1342 <chip_vm+0xe62>
		case 0x5:
			switch(vms.b2&0xf){
     798:	4b05      	ldr	r3, [pc, #20]	; (7b0 <chip_vm+0x2d0>)
     79a:	7ddb      	ldrb	r3, [r3, #23]
     79c:	f003 030f 	and.w	r3, r3, #15
     7a0:	2b02      	cmp	r3, #2
     7a2:	d01c      	beq.n	7de <chip_vm+0x2fe>
     7a4:	2b03      	cmp	r3, #3
     7a6:	d034      	beq.n	812 <chip_vm+0x332>
     7a8:	2b00      	cmp	r3, #0
     7aa:	d007      	beq.n	7bc <chip_vm+0x2dc>
				break;
			case 3: // 5XY3   load VX..VY from adress pointed by I, I not incremented ; XO-CHIP, BP-CHIP
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
				break;
			}
			break;
     7ac:	f000 bdcd 	b.w	134a <chip_vm+0xe6a>
     7b0:	20000210 	.word	0x20000210
     7b4:	200006b4 	.word	0x200006b4
     7b8:	200006b0 	.word	0x200006b0
				if (vms.var[x]==vms.var[y]) vms.pc+=2;
     7bc:	7dfb      	ldrb	r3, [r7, #23]
     7be:	4a96      	ldr	r2, [pc, #600]	; (a18 <chip_vm+0x538>)
     7c0:	4413      	add	r3, r2
     7c2:	799a      	ldrb	r2, [r3, #6]
     7c4:	7dbb      	ldrb	r3, [r7, #22]
     7c6:	4994      	ldr	r1, [pc, #592]	; (a18 <chip_vm+0x538>)
     7c8:	440b      	add	r3, r1
     7ca:	799b      	ldrb	r3, [r3, #6]
     7cc:	429a      	cmp	r2, r3
     7ce:	d13a      	bne.n	846 <chip_vm+0x366>
     7d0:	4b91      	ldr	r3, [pc, #580]	; (a18 <chip_vm+0x538>)
     7d2:	881b      	ldrh	r3, [r3, #0]
     7d4:	3302      	adds	r3, #2
     7d6:	b29a      	uxth	r2, r3
     7d8:	4b8f      	ldr	r3, [pc, #572]	; (a18 <chip_vm+0x538>)
     7da:	801a      	strh	r2, [r3, #0]
				break;
     7dc:	e033      	b.n	846 <chip_vm+0x366>
				move((const uint8_t*)&vms.var[x<y?x:y],(uint8_t*)&game_ram[vms.ix],abs(y-x)+1);
     7de:	7dfa      	ldrb	r2, [r7, #23]
     7e0:	7dbb      	ldrb	r3, [r7, #22]
     7e2:	429a      	cmp	r2, r3
     7e4:	d201      	bcs.n	7ea <chip_vm+0x30a>
     7e6:	7dfb      	ldrb	r3, [r7, #23]
     7e8:	e000      	b.n	7ec <chip_vm+0x30c>
     7ea:	7dbb      	ldrb	r3, [r7, #22]
     7ec:	4a8a      	ldr	r2, [pc, #552]	; (a18 <chip_vm+0x538>)
     7ee:	4413      	add	r3, r2
     7f0:	1d98      	adds	r0, r3, #6
     7f2:	4b89      	ldr	r3, [pc, #548]	; (a18 <chip_vm+0x538>)
     7f4:	885b      	ldrh	r3, [r3, #2]
     7f6:	461a      	mov	r2, r3
     7f8:	4b88      	ldr	r3, [pc, #544]	; (a1c <chip_vm+0x53c>)
     7fa:	18d1      	adds	r1, r2, r3
     7fc:	7dba      	ldrb	r2, [r7, #22]
     7fe:	7dfb      	ldrb	r3, [r7, #23]
     800:	1ad3      	subs	r3, r2, r3
     802:	2b00      	cmp	r3, #0
     804:	bfb8      	it	lt
     806:	425b      	neglt	r3, r3
     808:	3301      	adds	r3, #1
     80a:	461a      	mov	r2, r3
     80c:	f001 fb13 	bl	1e36 <move>
				break;
     810:	e01a      	b.n	848 <chip_vm+0x368>
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)&vms.var[x<y?x:y],abs(y-x)+1);
     812:	4b81      	ldr	r3, [pc, #516]	; (a18 <chip_vm+0x538>)
     814:	885b      	ldrh	r3, [r3, #2]
     816:	461a      	mov	r2, r3
     818:	4b80      	ldr	r3, [pc, #512]	; (a1c <chip_vm+0x53c>)
     81a:	18d0      	adds	r0, r2, r3
     81c:	7dfa      	ldrb	r2, [r7, #23]
     81e:	7dbb      	ldrb	r3, [r7, #22]
     820:	429a      	cmp	r2, r3
     822:	d201      	bcs.n	828 <chip_vm+0x348>
     824:	7dfb      	ldrb	r3, [r7, #23]
     826:	e000      	b.n	82a <chip_vm+0x34a>
     828:	7dbb      	ldrb	r3, [r7, #22]
     82a:	4a7b      	ldr	r2, [pc, #492]	; (a18 <chip_vm+0x538>)
     82c:	4413      	add	r3, r2
     82e:	1d99      	adds	r1, r3, #6
     830:	7dba      	ldrb	r2, [r7, #22]
     832:	7dfb      	ldrb	r3, [r7, #23]
     834:	1ad3      	subs	r3, r2, r3
     836:	2b00      	cmp	r3, #0
     838:	bfb8      	it	lt
     83a:	425b      	neglt	r3, r3
     83c:	3301      	adds	r3, #1
     83e:	461a      	mov	r2, r3
     840:	f001 faf9 	bl	1e36 <move>
				break;
     844:	e000      	b.n	848 <chip_vm+0x368>
				break;
     846:	bf00      	nop
			break;
     848:	f000 bd7f 	b.w	134a <chip_vm+0xe6a>
		case 0x6: // 6XKK   LD VX,KK  ; VX := KK
			vms.var[x]=vms.b2;
     84c:	7dfb      	ldrb	r3, [r7, #23]
     84e:	4a72      	ldr	r2, [pc, #456]	; (a18 <chip_vm+0x538>)
     850:	7dd1      	ldrb	r1, [r2, #23]
     852:	4a71      	ldr	r2, [pc, #452]	; (a18 <chip_vm+0x538>)
     854:	4413      	add	r3, r2
     856:	460a      	mov	r2, r1
     858:	719a      	strb	r2, [r3, #6]
			break;
     85a:	f000 bd76 	b.w	134a <chip_vm+0xe6a>
		case 0x7: // 7XKK   ADD VX,KK  ; VX := VX + KK
		    n=(vms.var[x]+vms.b2)>255;
     85e:	7dfb      	ldrb	r3, [r7, #23]
     860:	4a6d      	ldr	r2, [pc, #436]	; (a18 <chip_vm+0x538>)
     862:	4413      	add	r3, r2
     864:	799b      	ldrb	r3, [r3, #6]
     866:	461a      	mov	r2, r3
     868:	4b6b      	ldr	r3, [pc, #428]	; (a18 <chip_vm+0x538>)
     86a:	7ddb      	ldrb	r3, [r3, #23]
     86c:	4413      	add	r3, r2
     86e:	2bff      	cmp	r3, #255	; 0xff
     870:	bfcc      	ite	gt
     872:	2301      	movgt	r3, #1
     874:	2300      	movle	r3, #0
     876:	b2db      	uxtb	r3, r3
     878:	757b      	strb	r3, [r7, #21]
			vms.var[x]+=vms.b2;
     87a:	7dfb      	ldrb	r3, [r7, #23]
     87c:	7dfa      	ldrb	r2, [r7, #23]
     87e:	4966      	ldr	r1, [pc, #408]	; (a18 <chip_vm+0x538>)
     880:	440a      	add	r2, r1
     882:	7991      	ldrb	r1, [r2, #6]
     884:	4a64      	ldr	r2, [pc, #400]	; (a18 <chip_vm+0x538>)
     886:	7dd2      	ldrb	r2, [r2, #23]
     888:	440a      	add	r2, r1
     88a:	b2d1      	uxtb	r1, r2
     88c:	4a62      	ldr	r2, [pc, #392]	; (a18 <chip_vm+0x538>)
     88e:	4413      	add	r3, r2
     890:	460a      	mov	r2, r1
     892:	719a      	strb	r2, [r3, #6]
			vms.var[15]=n;
     894:	4a60      	ldr	r2, [pc, #384]	; (a18 <chip_vm+0x538>)
     896:	7d7b      	ldrb	r3, [r7, #21]
     898:	7553      	strb	r3, [r2, #21]
			break;
     89a:	f000 bd56 	b.w	134a <chip_vm+0xe6a>
		case 0x8: 
			switch(vms.b2&0xf){
     89e:	4b5e      	ldr	r3, [pc, #376]	; (a18 <chip_vm+0x538>)
     8a0:	7ddb      	ldrb	r3, [r3, #23]
     8a2:	f003 030f 	and.w	r3, r3, #15
     8a6:	2b0e      	cmp	r3, #14
     8a8:	f200 80f0 	bhi.w	a8c <chip_vm+0x5ac>
     8ac:	a201      	add	r2, pc, #4	; (adr r2, 8b4 <chip_vm+0x3d4>)
     8ae:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     8b2:	bf00      	nop
     8b4:	000008f1 	.word	0x000008f1
     8b8:	00000905 	.word	0x00000905
     8bc:	00000925 	.word	0x00000925
     8c0:	00000945 	.word	0x00000945
     8c4:	00000965 	.word	0x00000965
     8c8:	000009ab 	.word	0x000009ab
     8cc:	000009ed 	.word	0x000009ed
     8d0:	00000a21 	.word	0x00000a21
     8d4:	00000a8d 	.word	0x00000a8d
     8d8:	00000a8d 	.word	0x00000a8d
     8dc:	00000a8d 	.word	0x00000a8d
     8e0:	00000a8d 	.word	0x00000a8d
     8e4:	00000a8d 	.word	0x00000a8d
     8e8:	00000a8d 	.word	0x00000a8d
     8ec:	00000a63 	.word	0x00000a63
			case 0: // 8XY0   LD VX, VY  ; VX := VY
				vms.var[x]=vms.var[y];
     8f0:	7dfb      	ldrb	r3, [r7, #23]
     8f2:	7dba      	ldrb	r2, [r7, #22]
     8f4:	4948      	ldr	r1, [pc, #288]	; (a18 <chip_vm+0x538>)
     8f6:	440a      	add	r2, r1
     8f8:	7991      	ldrb	r1, [r2, #6]
     8fa:	4a47      	ldr	r2, [pc, #284]	; (a18 <chip_vm+0x538>)
     8fc:	4413      	add	r3, r2
     8fe:	460a      	mov	r2, r1
     900:	719a      	strb	r2, [r3, #6]
				break;
     902:	e0c6      	b.n	a92 <chip_vm+0x5b2>
			case 1: // 8XY1  OR VX, VY  ; VX := VX OR VY
				vms.var[x]|=vms.var[y];
     904:	7dfb      	ldrb	r3, [r7, #23]
     906:	7dfa      	ldrb	r2, [r7, #23]
     908:	4943      	ldr	r1, [pc, #268]	; (a18 <chip_vm+0x538>)
     90a:	440a      	add	r2, r1
     90c:	7991      	ldrb	r1, [r2, #6]
     90e:	7dba      	ldrb	r2, [r7, #22]
     910:	4841      	ldr	r0, [pc, #260]	; (a18 <chip_vm+0x538>)
     912:	4402      	add	r2, r0
     914:	7992      	ldrb	r2, [r2, #6]
     916:	430a      	orrs	r2, r1
     918:	b2d1      	uxtb	r1, r2
     91a:	4a3f      	ldr	r2, [pc, #252]	; (a18 <chip_vm+0x538>)
     91c:	4413      	add	r3, r2
     91e:	460a      	mov	r2, r1
     920:	719a      	strb	r2, [r3, #6]
				break;
     922:	e0b6      	b.n	a92 <chip_vm+0x5b2>
			case 0x2: // 8XY2  AND VX,VY  ; VX := VX AND VY
				vms.var[x]&=vms.var[y];
     924:	7dfb      	ldrb	r3, [r7, #23]
     926:	7dfa      	ldrb	r2, [r7, #23]
     928:	493b      	ldr	r1, [pc, #236]	; (a18 <chip_vm+0x538>)
     92a:	440a      	add	r2, r1
     92c:	7991      	ldrb	r1, [r2, #6]
     92e:	7dba      	ldrb	r2, [r7, #22]
     930:	4839      	ldr	r0, [pc, #228]	; (a18 <chip_vm+0x538>)
     932:	4402      	add	r2, r0
     934:	7992      	ldrb	r2, [r2, #6]
     936:	400a      	ands	r2, r1
     938:	b2d1      	uxtb	r1, r2
     93a:	4a37      	ldr	r2, [pc, #220]	; (a18 <chip_vm+0x538>)
     93c:	4413      	add	r3, r2
     93e:	460a      	mov	r2, r1
     940:	719a      	strb	r2, [r3, #6]
				break;
     942:	e0a6      	b.n	a92 <chip_vm+0x5b2>
			case 0x3: // 8XY3  XOR VX,VY  ; VX := VX XOR VY
				vms.var[x]^=vms.var[y];
     944:	7dfb      	ldrb	r3, [r7, #23]
     946:	7dfa      	ldrb	r2, [r7, #23]
     948:	4933      	ldr	r1, [pc, #204]	; (a18 <chip_vm+0x538>)
     94a:	440a      	add	r2, r1
     94c:	7991      	ldrb	r1, [r2, #6]
     94e:	7dba      	ldrb	r2, [r7, #22]
     950:	4831      	ldr	r0, [pc, #196]	; (a18 <chip_vm+0x538>)
     952:	4402      	add	r2, r0
     954:	7992      	ldrb	r2, [r2, #6]
     956:	404a      	eors	r2, r1
     958:	b2d1      	uxtb	r1, r2
     95a:	4a2f      	ldr	r2, [pc, #188]	; (a18 <chip_vm+0x538>)
     95c:	4413      	add	r3, r2
     95e:	460a      	mov	r2, r1
     960:	719a      	strb	r2, [r3, #6]
				break;
     962:	e096      	b.n	a92 <chip_vm+0x5b2>
			case 0x4: // 8XY4  ADD VX,VY  ; VX := VX + VY, VF := carry
				n=(vms.var[x]+vms.var[y])>255;
     964:	7dfb      	ldrb	r3, [r7, #23]
     966:	4a2c      	ldr	r2, [pc, #176]	; (a18 <chip_vm+0x538>)
     968:	4413      	add	r3, r2
     96a:	799b      	ldrb	r3, [r3, #6]
     96c:	4619      	mov	r1, r3
     96e:	7dbb      	ldrb	r3, [r7, #22]
     970:	4a29      	ldr	r2, [pc, #164]	; (a18 <chip_vm+0x538>)
     972:	4413      	add	r3, r2
     974:	799b      	ldrb	r3, [r3, #6]
     976:	440b      	add	r3, r1
     978:	2bff      	cmp	r3, #255	; 0xff
     97a:	bfcc      	ite	gt
     97c:	2301      	movgt	r3, #1
     97e:	2300      	movle	r3, #0
     980:	b2db      	uxtb	r3, r3
     982:	757b      	strb	r3, [r7, #21]
				vms.var[x]+=vms.var[y];
     984:	7dfb      	ldrb	r3, [r7, #23]
     986:	7dfa      	ldrb	r2, [r7, #23]
     988:	4923      	ldr	r1, [pc, #140]	; (a18 <chip_vm+0x538>)
     98a:	440a      	add	r2, r1
     98c:	7991      	ldrb	r1, [r2, #6]
     98e:	7dba      	ldrb	r2, [r7, #22]
     990:	4821      	ldr	r0, [pc, #132]	; (a18 <chip_vm+0x538>)
     992:	4402      	add	r2, r0
     994:	7992      	ldrb	r2, [r2, #6]
     996:	440a      	add	r2, r1
     998:	b2d1      	uxtb	r1, r2
     99a:	4a1f      	ldr	r2, [pc, #124]	; (a18 <chip_vm+0x538>)
     99c:	4413      	add	r3, r2
     99e:	460a      	mov	r2, r1
     9a0:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     9a2:	4a1d      	ldr	r2, [pc, #116]	; (a18 <chip_vm+0x538>)
     9a4:	7d7b      	ldrb	r3, [r7, #21]
     9a6:	7553      	strb	r3, [r2, #21]
				break;
     9a8:	e073      	b.n	a92 <chip_vm+0x5b2>
			case 0x5: // 8XY5  SUB VX,VY  ; VX := VX - VY, VF := not borrow
				n=vms.var[x]>=vms.var[y];
     9aa:	7dfb      	ldrb	r3, [r7, #23]
     9ac:	4a1a      	ldr	r2, [pc, #104]	; (a18 <chip_vm+0x538>)
     9ae:	4413      	add	r3, r2
     9b0:	799a      	ldrb	r2, [r3, #6]
     9b2:	7dbb      	ldrb	r3, [r7, #22]
     9b4:	4918      	ldr	r1, [pc, #96]	; (a18 <chip_vm+0x538>)
     9b6:	440b      	add	r3, r1
     9b8:	799b      	ldrb	r3, [r3, #6]
     9ba:	429a      	cmp	r2, r3
     9bc:	bf2c      	ite	cs
     9be:	2301      	movcs	r3, #1
     9c0:	2300      	movcc	r3, #0
     9c2:	b2db      	uxtb	r3, r3
     9c4:	757b      	strb	r3, [r7, #21]
				vms.var[x]-=vms.var[y];
     9c6:	7dfb      	ldrb	r3, [r7, #23]
     9c8:	7dfa      	ldrb	r2, [r7, #23]
     9ca:	4913      	ldr	r1, [pc, #76]	; (a18 <chip_vm+0x538>)
     9cc:	440a      	add	r2, r1
     9ce:	7991      	ldrb	r1, [r2, #6]
     9d0:	7dba      	ldrb	r2, [r7, #22]
     9d2:	4811      	ldr	r0, [pc, #68]	; (a18 <chip_vm+0x538>)
     9d4:	4402      	add	r2, r0
     9d6:	7992      	ldrb	r2, [r2, #6]
     9d8:	1a8a      	subs	r2, r1, r2
     9da:	b2d1      	uxtb	r1, r2
     9dc:	4a0e      	ldr	r2, [pc, #56]	; (a18 <chip_vm+0x538>)
     9de:	4413      	add	r3, r2
     9e0:	460a      	mov	r2, r1
     9e2:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     9e4:	4a0c      	ldr	r2, [pc, #48]	; (a18 <chip_vm+0x538>)
     9e6:	7d7b      	ldrb	r3, [r7, #21]
     9e8:	7553      	strb	r3, [r2, #21]
				break;
     9ea:	e052      	b.n	a92 <chip_vm+0x5b2>
			case 0x6: // 8XY6  SHR VX  ; VX := VX shr 1, VF := carry
				n=(vms.var[x]&1u);
     9ec:	7dfb      	ldrb	r3, [r7, #23]
     9ee:	4a0a      	ldr	r2, [pc, #40]	; (a18 <chip_vm+0x538>)
     9f0:	4413      	add	r3, r2
     9f2:	799b      	ldrb	r3, [r3, #6]
     9f4:	f003 0301 	and.w	r3, r3, #1
     9f8:	757b      	strb	r3, [r7, #21]
				vms.var[x]>>=1;
     9fa:	7dfb      	ldrb	r3, [r7, #23]
     9fc:	7dfa      	ldrb	r2, [r7, #23]
     9fe:	4906      	ldr	r1, [pc, #24]	; (a18 <chip_vm+0x538>)
     a00:	440a      	add	r2, r1
     a02:	7992      	ldrb	r2, [r2, #6]
     a04:	0852      	lsrs	r2, r2, #1
     a06:	b2d1      	uxtb	r1, r2
     a08:	4a03      	ldr	r2, [pc, #12]	; (a18 <chip_vm+0x538>)
     a0a:	4413      	add	r3, r2
     a0c:	460a      	mov	r2, r1
     a0e:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     a10:	4a01      	ldr	r2, [pc, #4]	; (a18 <chip_vm+0x538>)
     a12:	7d7b      	ldrb	r3, [r7, #21]
     a14:	7553      	strb	r3, [r2, #21]
				break;
     a16:	e03c      	b.n	a92 <chip_vm+0x5b2>
     a18:	20000210 	.word	0x20000210
     a1c:	200006b4 	.word	0x200006b4
			case 0x7: // 8XY7  SUBN VX,VY  ; VX := VY - VX, VF := not borrow
				n=vms.var[y]>=vms.var[x];
     a20:	7dbb      	ldrb	r3, [r7, #22]
     a22:	4aa9      	ldr	r2, [pc, #676]	; (cc8 <chip_vm+0x7e8>)
     a24:	4413      	add	r3, r2
     a26:	799a      	ldrb	r2, [r3, #6]
     a28:	7dfb      	ldrb	r3, [r7, #23]
     a2a:	49a7      	ldr	r1, [pc, #668]	; (cc8 <chip_vm+0x7e8>)
     a2c:	440b      	add	r3, r1
     a2e:	799b      	ldrb	r3, [r3, #6]
     a30:	429a      	cmp	r2, r3
     a32:	bf2c      	ite	cs
     a34:	2301      	movcs	r3, #1
     a36:	2300      	movcc	r3, #0
     a38:	b2db      	uxtb	r3, r3
     a3a:	757b      	strb	r3, [r7, #21]
				vms.var[x]=vms.var[y]-vms.var[x];
     a3c:	7dfb      	ldrb	r3, [r7, #23]
     a3e:	7dba      	ldrb	r2, [r7, #22]
     a40:	49a1      	ldr	r1, [pc, #644]	; (cc8 <chip_vm+0x7e8>)
     a42:	440a      	add	r2, r1
     a44:	7991      	ldrb	r1, [r2, #6]
     a46:	7dfa      	ldrb	r2, [r7, #23]
     a48:	489f      	ldr	r0, [pc, #636]	; (cc8 <chip_vm+0x7e8>)
     a4a:	4402      	add	r2, r0
     a4c:	7992      	ldrb	r2, [r2, #6]
     a4e:	1a8a      	subs	r2, r1, r2
     a50:	b2d1      	uxtb	r1, r2
     a52:	4a9d      	ldr	r2, [pc, #628]	; (cc8 <chip_vm+0x7e8>)
     a54:	4413      	add	r3, r2
     a56:	460a      	mov	r2, r1
     a58:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     a5a:	4a9b      	ldr	r2, [pc, #620]	; (cc8 <chip_vm+0x7e8>)
     a5c:	7d7b      	ldrb	r3, [r7, #21]
     a5e:	7553      	strb	r3, [r2, #21]
				break;
     a60:	e017      	b.n	a92 <chip_vm+0x5b2>
			case 0xe: // 8XYE  SHL VX  ; VX := VX shl 1, VF := carry
				n=(vms.var[x]&128)>>7;
     a62:	7dfb      	ldrb	r3, [r7, #23]
     a64:	4a98      	ldr	r2, [pc, #608]	; (cc8 <chip_vm+0x7e8>)
     a66:	4413      	add	r3, r2
     a68:	799b      	ldrb	r3, [r3, #6]
     a6a:	09db      	lsrs	r3, r3, #7
     a6c:	757b      	strb	r3, [r7, #21]
				vms.var[x]<<=1;
     a6e:	7dfb      	ldrb	r3, [r7, #23]
     a70:	7dfa      	ldrb	r2, [r7, #23]
     a72:	4995      	ldr	r1, [pc, #596]	; (cc8 <chip_vm+0x7e8>)
     a74:	440a      	add	r2, r1
     a76:	7992      	ldrb	r2, [r2, #6]
     a78:	0052      	lsls	r2, r2, #1
     a7a:	b2d1      	uxtb	r1, r2
     a7c:	4a92      	ldr	r2, [pc, #584]	; (cc8 <chip_vm+0x7e8>)
     a7e:	4413      	add	r3, r2
     a80:	460a      	mov	r2, r1
     a82:	719a      	strb	r2, [r3, #6]
				vms.var[15]=n;
     a84:	4a90      	ldr	r2, [pc, #576]	; (cc8 <chip_vm+0x7e8>)
     a86:	7d7b      	ldrb	r3, [r7, #21]
     a88:	7553      	strb	r3, [r2, #21]
				break;
     a8a:	e002      	b.n	a92 <chip_vm+0x5b2>
			default:
				return CHIP_BAD_OPCODE;
     a8c:	2302      	movs	r3, #2
     a8e:	f000 bc5e 	b.w	134e <chip_vm+0xe6e>
			}//switch(vms.b2&0xf)
			break;
     a92:	f000 bc5a 	b.w	134a <chip_vm+0xe6a>
		case 0x9:
			switch (vms.b2&0xf){
     a96:	4b8c      	ldr	r3, [pc, #560]	; (cc8 <chip_vm+0x7e8>)
     a98:	7ddb      	ldrb	r3, [r3, #23]
     a9a:	f003 030f 	and.w	r3, r3, #15
     a9e:	2b0f      	cmp	r3, #15
     aa0:	f200 814b 	bhi.w	d3a <chip_vm+0x85a>
     aa4:	a201      	add	r2, pc, #4	; (adr r2, aac <chip_vm+0x5cc>)
     aa6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     aaa:	bf00      	nop
     aac:	00000aed 	.word	0x00000aed
     ab0:	00000b11 	.word	0x00000b11
     ab4:	00000b2d 	.word	0x00000b2d
     ab8:	00000b7f 	.word	0x00000b7f
     abc:	00000b9d 	.word	0x00000b9d
     ac0:	00000bad 	.word	0x00000bad
     ac4:	00000bcb 	.word	0x00000bcb
     ac8:	00000bf3 	.word	0x00000bf3
     acc:	00000c15 	.word	0x00000c15
     ad0:	00000c2d 	.word	0x00000c2d
     ad4:	00000c45 	.word	0x00000c45
     ad8:	00000c6f 	.word	0x00000c6f
     adc:	00000c9d 	.word	0x00000c9d
     ae0:	00000cd1 	.word	0x00000cd1
     ae4:	00000cfb 	.word	0x00000cfb
     ae8:	00000d25 	.word	0x00000d25
			case 0x0: // 9XY0  SNE VX,VY  ; skip if VX <> VY
				if (vms.var[x]!=vms.var[y]) vms.pc+=2;
     aec:	7dfb      	ldrb	r3, [r7, #23]
     aee:	4a76      	ldr	r2, [pc, #472]	; (cc8 <chip_vm+0x7e8>)
     af0:	4413      	add	r3, r2
     af2:	799a      	ldrb	r2, [r3, #6]
     af4:	7dbb      	ldrb	r3, [r7, #22]
     af6:	4974      	ldr	r1, [pc, #464]	; (cc8 <chip_vm+0x7e8>)
     af8:	440b      	add	r3, r1
     afa:	799b      	ldrb	r3, [r3, #6]
     afc:	429a      	cmp	r2, r3
     afe:	f000 811e 	beq.w	d3e <chip_vm+0x85e>
     b02:	4b71      	ldr	r3, [pc, #452]	; (cc8 <chip_vm+0x7e8>)
     b04:	881b      	ldrh	r3, [r3, #0]
     b06:	3302      	adds	r3, #2
     b08:	b29a      	uxth	r2, r3
     b0a:	4b6f      	ldr	r3, [pc, #444]	; (cc8 <chip_vm+0x7e8>)
     b0c:	801a      	strh	r2, [r3, #0]
				break;
     b0e:	e116      	b.n	d3e <chip_vm+0x85e>
			case 0x1: // 9XY1  TONE VX, VY ; play a tempered scale note. VX=note, VY=length
				key_tone(vms.var[x],vms.var[y],false);
     b10:	7dfb      	ldrb	r3, [r7, #23]
     b12:	4a6d      	ldr	r2, [pc, #436]	; (cc8 <chip_vm+0x7e8>)
     b14:	4413      	add	r3, r2
     b16:	799b      	ldrb	r3, [r3, #6]
     b18:	4618      	mov	r0, r3
     b1a:	7dbb      	ldrb	r3, [r7, #22]
     b1c:	4a6a      	ldr	r2, [pc, #424]	; (cc8 <chip_vm+0x7e8>)
     b1e:	4413      	add	r3, r2
     b20:	799b      	ldrb	r3, [r3, #6]
     b22:	2200      	movs	r2, #0
     b24:	4619      	mov	r1, r3
     b26:	f003 fc5f 	bl	43e8 <key_tone>
				break;
     b2a:	e10d      	b.n	d48 <chip_vm+0x868>
			case 0x2: // 9XY2  PRT VX, VY ; print text pointed by I at position x,y. I is incremented ; BP-CHIP
				select_font(FONT_ASCII);
     b2c:	2002      	movs	r0, #2
     b2e:	f003 fea9 	bl	4884 <select_font>
				set_cursor(vms.var[x],vms.var[y]);
     b32:	7dfb      	ldrb	r3, [r7, #23]
     b34:	4a64      	ldr	r2, [pc, #400]	; (cc8 <chip_vm+0x7e8>)
     b36:	4413      	add	r3, r2
     b38:	7998      	ldrb	r0, [r3, #6]
     b3a:	7dbb      	ldrb	r3, [r7, #22]
     b3c:	4a62      	ldr	r2, [pc, #392]	; (cc8 <chip_vm+0x7e8>)
     b3e:	4413      	add	r3, r2
     b40:	799b      	ldrb	r3, [r3, #6]
     b42:	4619      	mov	r1, r3
     b44:	f003 ffce 	bl	4ae4 <set_cursor>
				print((const char*)&game_ram[vms.ix]);
     b48:	4b5f      	ldr	r3, [pc, #380]	; (cc8 <chip_vm+0x7e8>)
     b4a:	885b      	ldrh	r3, [r3, #2]
     b4c:	461a      	mov	r2, r3
     b4e:	4b5f      	ldr	r3, [pc, #380]	; (ccc <chip_vm+0x7ec>)
     b50:	4413      	add	r3, r2
     b52:	4618      	mov	r0, r3
     b54:	f003 fff2 	bl	4b3c <print>
				vms.ix+=strlen((const char*)&game_ram[vms.ix])+1;
     b58:	4b5b      	ldr	r3, [pc, #364]	; (cc8 <chip_vm+0x7e8>)
     b5a:	885c      	ldrh	r4, [r3, #2]
     b5c:	4b5a      	ldr	r3, [pc, #360]	; (cc8 <chip_vm+0x7e8>)
     b5e:	885b      	ldrh	r3, [r3, #2]
     b60:	461a      	mov	r2, r3
     b62:	4b5a      	ldr	r3, [pc, #360]	; (ccc <chip_vm+0x7ec>)
     b64:	4413      	add	r3, r2
     b66:	4618      	mov	r0, r3
     b68:	f001 f97f 	bl	1e6a <strlen>
     b6c:	4603      	mov	r3, r0
     b6e:	b29b      	uxth	r3, r3
     b70:	4423      	add	r3, r4
     b72:	b29b      	uxth	r3, r3
     b74:	3301      	adds	r3, #1
     b76:	b29a      	uxth	r2, r3
     b78:	4b53      	ldr	r3, [pc, #332]	; (cc8 <chip_vm+0x7e8>)
     b7a:	805a      	strh	r2, [r3, #2]
				//while (game_ram[vms.ix++]);
				break;
     b7c:	e0e4      	b.n	d48 <chip_vm+0x868>
			case 0x3: // 9XY3 PIXI VX, VY  ; invert pixel at coordinates VX,VY
				gfx_blit(vms.var[x],vms.var[y],0,BIT_INVERT);
     b7e:	7dfb      	ldrb	r3, [r7, #23]
     b80:	4a51      	ldr	r2, [pc, #324]	; (cc8 <chip_vm+0x7e8>)
     b82:	4413      	add	r3, r2
     b84:	799b      	ldrb	r3, [r3, #6]
     b86:	4618      	mov	r0, r3
     b88:	7dbb      	ldrb	r3, [r7, #22]
     b8a:	4a4f      	ldr	r2, [pc, #316]	; (cc8 <chip_vm+0x7e8>)
     b8c:	4413      	add	r3, r2
     b8e:	799b      	ldrb	r3, [r3, #6]
     b90:	4619      	mov	r1, r3
     b92:	2303      	movs	r3, #3
     b94:	2200      	movs	r2, #0
     b96:	f001 facf 	bl	2138 <gfx_blit>
				break;
     b9a:	e0d5      	b.n	d48 <chip_vm+0x868>
			case 0x4: // 9NN4  NOISE NN ; noise length NN
				noise((x<<4)+y);
     b9c:	7dfb      	ldrb	r3, [r7, #23]
     b9e:	011a      	lsls	r2, r3, #4
     ba0:	7dbb      	ldrb	r3, [r7, #22]
     ba2:	4413      	add	r3, r2
     ba4:	4618      	mov	r0, r3
     ba6:	f003 fc41 	bl	442c <noise>
				break;
     baa:	e0cd      	b.n	d48 <chip_vm+0x868>
			case 0x5: // 9XY5 TONE VX, VY, WAIT ; play tempered scale note, wait end. VX=note, VY=length ; BP-CHIP
				key_tone(vms.var[x],vms.var[y],true);
     bac:	7dfb      	ldrb	r3, [r7, #23]
     bae:	4a46      	ldr	r2, [pc, #280]	; (cc8 <chip_vm+0x7e8>)
     bb0:	4413      	add	r3, r2
     bb2:	799b      	ldrb	r3, [r3, #6]
     bb4:	4618      	mov	r0, r3
     bb6:	7dbb      	ldrb	r3, [r7, #22]
     bb8:	4a43      	ldr	r2, [pc, #268]	; (cc8 <chip_vm+0x7e8>)
     bba:	4413      	add	r3, r2
     bbc:	799b      	ldrb	r3, [r3, #6]
     bbe:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     bc2:	4619      	mov	r1, r3
     bc4:	f003 fc10 	bl	43e8 <key_tone>
				break;
     bc8:	e0be      	b.n	d48 <chip_vm+0x868>
			case 0x6: // 9X06, PUSH VX  ; push VX on stack ; BP-CHIP
				vms.stack[++vms.sp]=vms.var[x];
     bca:	4b3f      	ldr	r3, [pc, #252]	; (cc8 <chip_vm+0x7e8>)
     bcc:	791b      	ldrb	r3, [r3, #4]
     bce:	3301      	adds	r3, #1
     bd0:	b2da      	uxtb	r2, r3
     bd2:	4b3d      	ldr	r3, [pc, #244]	; (cc8 <chip_vm+0x7e8>)
     bd4:	711a      	strb	r2, [r3, #4]
     bd6:	4b3c      	ldr	r3, [pc, #240]	; (cc8 <chip_vm+0x7e8>)
     bd8:	791b      	ldrb	r3, [r3, #4]
     bda:	4618      	mov	r0, r3
     bdc:	7dfb      	ldrb	r3, [r7, #23]
     bde:	4a3a      	ldr	r2, [pc, #232]	; (cc8 <chip_vm+0x7e8>)
     be0:	4413      	add	r3, r2
     be2:	799b      	ldrb	r3, [r3, #6]
     be4:	b299      	uxth	r1, r3
     be6:	4a38      	ldr	r2, [pc, #224]	; (cc8 <chip_vm+0x7e8>)
     be8:	f100 030c 	add.w	r3, r0, #12
     bec:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
				break;
     bf0:	e0aa      	b.n	d48 <chip_vm+0x868>
			case 0x7: // 9X07, POP VX  ; pop VX from stack ; BP-CHIP
				vms.var[x]=vms.stack[vms.sp--];
     bf2:	7dfa      	ldrb	r2, [r7, #23]
     bf4:	4b34      	ldr	r3, [pc, #208]	; (cc8 <chip_vm+0x7e8>)
     bf6:	791b      	ldrb	r3, [r3, #4]
     bf8:	1e59      	subs	r1, r3, #1
     bfa:	b2c8      	uxtb	r0, r1
     bfc:	4932      	ldr	r1, [pc, #200]	; (cc8 <chip_vm+0x7e8>)
     bfe:	7108      	strb	r0, [r1, #4]
     c00:	4931      	ldr	r1, [pc, #196]	; (cc8 <chip_vm+0x7e8>)
     c02:	330c      	adds	r3, #12
     c04:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     c08:	b2d9      	uxtb	r1, r3
     c0a:	4b2f      	ldr	r3, [pc, #188]	; (cc8 <chip_vm+0x7e8>)
     c0c:	4413      	add	r3, r2
     c0e:	460a      	mov	r2, r1
     c10:	719a      	strb	r2, [r3, #6]
				break;
     c12:	e099      	b.n	d48 <chip_vm+0x868>
			case 0x8: // 9X08, SCRX  ;  VX=HRES screen width in pixels.
				{ 	vmode_params_t *vparams=get_video_params();
     c14:	f004 fc3c 	bl	5490 <get_video_params>
     c18:	6138      	str	r0, [r7, #16]
					vms.var[x]=vparams->hres;
     c1a:	7dfb      	ldrb	r3, [r7, #23]
     c1c:	693a      	ldr	r2, [r7, #16]
     c1e:	8992      	ldrh	r2, [r2, #12]
     c20:	b2d1      	uxtb	r1, r2
     c22:	4a29      	ldr	r2, [pc, #164]	; (cc8 <chip_vm+0x7e8>)
     c24:	4413      	add	r3, r2
     c26:	460a      	mov	r2, r1
     c28:	719a      	strb	r2, [r3, #6]
				}
				break;
     c2a:	e08d      	b.n	d48 <chip_vm+0x868>
			case 0x9: // 9X09, SCRY  ; VX=VRES  screen height in pixels
				{
					vmode_params_t *vparams=get_video_params();
     c2c:	f004 fc30 	bl	5490 <get_video_params>
     c30:	60f8      	str	r0, [r7, #12]
					vms.var[x]=vparams->vres;
     c32:	7dfb      	ldrb	r3, [r7, #23]
     c34:	68fa      	ldr	r2, [r7, #12]
     c36:	89d2      	ldrh	r2, [r2, #14]
     c38:	b2d1      	uxtb	r1, r2
     c3a:	4a23      	ldr	r2, [pc, #140]	; (cc8 <chip_vm+0x7e8>)
     c3c:	4413      	add	r3, r2
     c3e:	460a      	mov	r2, r1
     c40:	719a      	strb	r2, [r3, #6]
				}
				break;
     c42:	e081      	b.n	d48 <chip_vm+0x868>
			case 0xA: // 9XNA, BSET VX,N  ; set VX bit N
			    vms.var[x] |= (1<<(y&0x7));
     c44:	7dfb      	ldrb	r3, [r7, #23]
     c46:	7dfa      	ldrb	r2, [r7, #23]
     c48:	491f      	ldr	r1, [pc, #124]	; (cc8 <chip_vm+0x7e8>)
     c4a:	440a      	add	r2, r1
     c4c:	7992      	ldrb	r2, [r2, #6]
     c4e:	b251      	sxtb	r1, r2
     c50:	7dba      	ldrb	r2, [r7, #22]
     c52:	f002 0207 	and.w	r2, r2, #7
     c56:	2001      	movs	r0, #1
     c58:	fa00 f202 	lsl.w	r2, r0, r2
     c5c:	b252      	sxtb	r2, r2
     c5e:	430a      	orrs	r2, r1
     c60:	b252      	sxtb	r2, r2
     c62:	b2d1      	uxtb	r1, r2
     c64:	4a18      	ldr	r2, [pc, #96]	; (cc8 <chip_vm+0x7e8>)
     c66:	4413      	add	r3, r2
     c68:	460a      	mov	r2, r1
     c6a:	719a      	strb	r2, [r3, #6]
			    break;
     c6c:	e06c      	b.n	d48 <chip_vm+0x868>
		    case 0xB: // 9XNB  BCLR VX,N  ; clear VX bit N
			    vms.var[x] &= ~(1<<(y&0x7));
     c6e:	7dfb      	ldrb	r3, [r7, #23]
     c70:	7dfa      	ldrb	r2, [r7, #23]
     c72:	4915      	ldr	r1, [pc, #84]	; (cc8 <chip_vm+0x7e8>)
     c74:	440a      	add	r2, r1
     c76:	7992      	ldrb	r2, [r2, #6]
     c78:	b251      	sxtb	r1, r2
     c7a:	7dba      	ldrb	r2, [r7, #22]
     c7c:	f002 0207 	and.w	r2, r2, #7
     c80:	2001      	movs	r0, #1
     c82:	fa00 f202 	lsl.w	r2, r0, r2
     c86:	b252      	sxtb	r2, r2
     c88:	43d2      	mvns	r2, r2
     c8a:	b252      	sxtb	r2, r2
     c8c:	400a      	ands	r2, r1
     c8e:	b252      	sxtb	r2, r2
     c90:	b2d1      	uxtb	r1, r2
     c92:	4a0d      	ldr	r2, [pc, #52]	; (cc8 <chip_vm+0x7e8>)
     c94:	4413      	add	r3, r2
     c96:	460a      	mov	r2, r1
     c98:	719a      	strb	r2, [r3, #6]
			    break;
     c9a:	e055      	b.n	d48 <chip_vm+0x868>
			case 0xC: // 9XNC  BINV VX,N  ; invert VX bit N
   			    vms.var[x] ^= (1<<(y&0x7));
     c9c:	7dfb      	ldrb	r3, [r7, #23]
     c9e:	7dfa      	ldrb	r2, [r7, #23]
     ca0:	4909      	ldr	r1, [pc, #36]	; (cc8 <chip_vm+0x7e8>)
     ca2:	440a      	add	r2, r1
     ca4:	7992      	ldrb	r2, [r2, #6]
     ca6:	b251      	sxtb	r1, r2
     ca8:	7dba      	ldrb	r2, [r7, #22]
     caa:	f002 0207 	and.w	r2, r2, #7
     cae:	2001      	movs	r0, #1
     cb0:	fa00 f202 	lsl.w	r2, r0, r2
     cb4:	b252      	sxtb	r2, r2
     cb6:	404a      	eors	r2, r1
     cb8:	b252      	sxtb	r2, r2
     cba:	b2d1      	uxtb	r1, r2
     cbc:	4a02      	ldr	r2, [pc, #8]	; (cc8 <chip_vm+0x7e8>)
     cbe:	4413      	add	r3, r2
     cc0:	460a      	mov	r2, r1
     cc2:	719a      	strb	r2, [r3, #6]
				break;
     cc4:	e040      	b.n	d48 <chip_vm+0x868>
     cc6:	bf00      	nop
     cc8:	20000210 	.word	0x20000210
     ccc:	200006b4 	.word	0x200006b4
			case 0xD: // 9XND  BTSS VX,N  ; skip if VX bit N==1
			    if (vms.var[x]&(1<<(y&0x7))) vms.pc+=2;
     cd0:	7dfb      	ldrb	r3, [r7, #23]
     cd2:	4a98      	ldr	r2, [pc, #608]	; (f34 <chip_vm+0xa54>)
     cd4:	4413      	add	r3, r2
     cd6:	799b      	ldrb	r3, [r3, #6]
     cd8:	461a      	mov	r2, r3
     cda:	7dbb      	ldrb	r3, [r7, #22]
     cdc:	f003 0307 	and.w	r3, r3, #7
     ce0:	fa42 f303 	asr.w	r3, r2, r3
     ce4:	f003 0301 	and.w	r3, r3, #1
     ce8:	2b00      	cmp	r3, #0
     cea:	d02a      	beq.n	d42 <chip_vm+0x862>
     cec:	4b91      	ldr	r3, [pc, #580]	; (f34 <chip_vm+0xa54>)
     cee:	881b      	ldrh	r3, [r3, #0]
     cf0:	3302      	adds	r3, #2
     cf2:	b29a      	uxth	r2, r3
     cf4:	4b8f      	ldr	r3, [pc, #572]	; (f34 <chip_vm+0xa54>)
     cf6:	801a      	strh	r2, [r3, #0]
				break;
     cf8:	e023      	b.n	d42 <chip_vm+0x862>
			case 0xE: // 9XNE  BTSC VX,N  ; skip if VX bit N==0
			    if (!(vms.var[x]&(1<<(y&0x7)))) vms.pc+=2;
     cfa:	7dfb      	ldrb	r3, [r7, #23]
     cfc:	4a8d      	ldr	r2, [pc, #564]	; (f34 <chip_vm+0xa54>)
     cfe:	4413      	add	r3, r2
     d00:	799b      	ldrb	r3, [r3, #6]
     d02:	461a      	mov	r2, r3
     d04:	7dbb      	ldrb	r3, [r7, #22]
     d06:	f003 0307 	and.w	r3, r3, #7
     d0a:	fa42 f303 	asr.w	r3, r2, r3
     d0e:	f003 0301 	and.w	r3, r3, #1
     d12:	2b00      	cmp	r3, #0
     d14:	d117      	bne.n	d46 <chip_vm+0x866>
     d16:	4b87      	ldr	r3, [pc, #540]	; (f34 <chip_vm+0xa54>)
     d18:	881b      	ldrh	r3, [r3, #0]
     d1a:	3302      	adds	r3, #2
     d1c:	b29a      	uxth	r2, r3
     d1e:	4b85      	ldr	r3, [pc, #532]	; (f34 <chip_vm+0xa54>)
     d20:	801a      	strh	r2, [r3, #0]
				break;
     d22:	e010      	b.n	d46 <chip_vm+0x866>
			case 0xF: // 9XYF GPIX,  VF=pixel((vx),(vy))
			    vms.var[15]=gfx_get_pixel(x,y);
     d24:	7dfb      	ldrb	r3, [r7, #23]
     d26:	7dba      	ldrb	r2, [r7, #22]
     d28:	4611      	mov	r1, r2
     d2a:	4618      	mov	r0, r3
     d2c:	f001 fc3c 	bl	25a8 <gfx_get_pixel>
     d30:	4603      	mov	r3, r0
     d32:	461a      	mov	r2, r3
     d34:	4b7f      	ldr	r3, [pc, #508]	; (f34 <chip_vm+0xa54>)
     d36:	755a      	strb	r2, [r3, #21]
				break;  	
     d38:	e006      	b.n	d48 <chip_vm+0x868>
			default:
				return CHIP_BAD_OPCODE;
     d3a:	2302      	movs	r3, #2
     d3c:	e307      	b.n	134e <chip_vm+0xe6e>
				break;
     d3e:	bf00      	nop
     d40:	e303      	b.n	134a <chip_vm+0xe6a>
				break;
     d42:	bf00      	nop
     d44:	e301      	b.n	134a <chip_vm+0xe6a>
				break;
     d46:	bf00      	nop
			}//switch(vms.b2&0xf)
			break;
     d48:	e2ff      	b.n	134a <chip_vm+0xe6a>
		case 0xa: // ANNN    LD I, NNN  ; I := 2*NNN
			vms.ix=caddr(vms.b1,vms.b2);
     d4a:	4b7a      	ldr	r3, [pc, #488]	; (f34 <chip_vm+0xa54>)
     d4c:	7d9b      	ldrb	r3, [r3, #22]
     d4e:	021b      	lsls	r3, r3, #8
     d50:	b21a      	sxth	r2, r3
     d52:	4b78      	ldr	r3, [pc, #480]	; (f34 <chip_vm+0xa54>)
     d54:	7ddb      	ldrb	r3, [r3, #23]
     d56:	b21b      	sxth	r3, r3
     d58:	4313      	orrs	r3, r2
     d5a:	b21b      	sxth	r3, r3
     d5c:	b29b      	uxth	r3, r3
     d5e:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d62:	b29a      	uxth	r2, r3
     d64:	4b73      	ldr	r3, [pc, #460]	; (f34 <chip_vm+0xa54>)
     d66:	805a      	strh	r2, [r3, #2]
			if (video_mode!=VM_CHIP8){
     d68:	4b73      	ldr	r3, [pc, #460]	; (f38 <chip_vm+0xa58>)
     d6a:	781b      	ldrb	r3, [r3, #0]
     d6c:	2b02      	cmp	r3, #2
     d6e:	d005      	beq.n	d7c <chip_vm+0x89c>
				vms.ix<<=1;
     d70:	4b70      	ldr	r3, [pc, #448]	; (f34 <chip_vm+0xa54>)
     d72:	885b      	ldrh	r3, [r3, #2]
     d74:	005b      	lsls	r3, r3, #1
     d76:	b29a      	uxth	r2, r3
     d78:	4b6e      	ldr	r3, [pc, #440]	; (f34 <chip_vm+0xa54>)
     d7a:	805a      	strh	r2, [r3, #2]
			}
			vms.sprite_mem=RAM_MEM;
     d7c:	4b6d      	ldr	r3, [pc, #436]	; (f34 <chip_vm+0xa54>)
     d7e:	2200      	movs	r2, #0
     d80:	715a      	strb	r2, [r3, #5]
			break;
     d82:	e2e2      	b.n	134a <chip_vm+0xe6a>
		case 0xb: // BNNN     JP V0, NNN  ;  skip to 2*(NNN+V0)
			vms.pc=(vms.var[0]<<1)+caddr(vms.b1,vms.b2);
     d84:	4b6b      	ldr	r3, [pc, #428]	; (f34 <chip_vm+0xa54>)
     d86:	799b      	ldrb	r3, [r3, #6]
     d88:	b29b      	uxth	r3, r3
     d8a:	005b      	lsls	r3, r3, #1
     d8c:	b29a      	uxth	r2, r3
     d8e:	4b69      	ldr	r3, [pc, #420]	; (f34 <chip_vm+0xa54>)
     d90:	7d9b      	ldrb	r3, [r3, #22]
     d92:	021b      	lsls	r3, r3, #8
     d94:	b219      	sxth	r1, r3
     d96:	4b67      	ldr	r3, [pc, #412]	; (f34 <chip_vm+0xa54>)
     d98:	7ddb      	ldrb	r3, [r3, #23]
     d9a:	b21b      	sxth	r3, r3
     d9c:	430b      	orrs	r3, r1
     d9e:	b21b      	sxth	r3, r3
     da0:	b29b      	uxth	r3, r3
     da2:	f3c3 030b 	ubfx	r3, r3, #0, #12
     da6:	b29b      	uxth	r3, r3
     da8:	4413      	add	r3, r2
     daa:	b29a      	uxth	r2, r3
     dac:	4b61      	ldr	r3, [pc, #388]	; (f34 <chip_vm+0xa54>)
     dae:	801a      	strh	r2, [r3, #0]
			if (video_mode!=VM_CHIP8){
     db0:	4b61      	ldr	r3, [pc, #388]	; (f38 <chip_vm+0xa58>)
     db2:	781b      	ldrb	r3, [r3, #0]
     db4:	2b02      	cmp	r3, #2
     db6:	f000 82c7 	beq.w	1348 <chip_vm+0xe68>
				vms.pc<<=1;
     dba:	4b5e      	ldr	r3, [pc, #376]	; (f34 <chip_vm+0xa54>)
     dbc:	881b      	ldrh	r3, [r3, #0]
     dbe:	005b      	lsls	r3, r3, #1
     dc0:	b29a      	uxth	r2, r3
     dc2:	4b5c      	ldr	r3, [pc, #368]	; (f34 <chip_vm+0xa54>)
     dc4:	801a      	strh	r2, [r3, #0]
			}
			break;
     dc6:	e2bf      	b.n	1348 <chip_vm+0xe68>
		case 0xc: //CXKK  RND VX,KK  ; VX=random_number&KK
			vms.var[x]=rand()&vms.b2;
     dc8:	7dfc      	ldrb	r4, [r7, #23]
     dca:	f7ff fb67 	bl	49c <rand>
     dce:	4603      	mov	r3, r0
     dd0:	b25a      	sxtb	r2, r3
     dd2:	4b58      	ldr	r3, [pc, #352]	; (f34 <chip_vm+0xa54>)
     dd4:	7ddb      	ldrb	r3, [r3, #23]
     dd6:	b25b      	sxtb	r3, r3
     dd8:	4013      	ands	r3, r2
     dda:	b25b      	sxtb	r3, r3
     ddc:	b2da      	uxtb	r2, r3
     dde:	4b55      	ldr	r3, [pc, #340]	; (f34 <chip_vm+0xa54>)
     de0:	4423      	add	r3, r4
     de2:	719a      	strb	r2, [r3, #6]
			break;
     de4:	e2b1      	b.n	134a <chip_vm+0xe6a>
		case 0xd: //DXYN DRW VX,VY   draw a sprite, SCHIP and BP-CHIP can draw 16x16 sprites
			n=vms.b2&0xf;
     de6:	4b53      	ldr	r3, [pc, #332]	; (f34 <chip_vm+0xa54>)
     de8:	7ddb      	ldrb	r3, [r3, #23]
     dea:	f003 030f 	and.w	r3, r3, #15
     dee:	757b      	strb	r3, [r7, #21]
			if (!n){
     df0:	7d7b      	ldrb	r3, [r7, #21]
     df2:	2b00      	cmp	r3, #0
     df4:	d136      	bne.n	e64 <chip_vm+0x984>
				if (vms.sprite_mem==RAM_MEM){
     df6:	4b4f      	ldr	r3, [pc, #316]	; (f34 <chip_vm+0xa54>)
     df8:	795b      	ldrb	r3, [r3, #5]
     dfa:	2b00      	cmp	r3, #0
     dfc:	d11a      	bne.n	e34 <chip_vm+0x954>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)&game_ram[vms.ix]);
     dfe:	7dfb      	ldrb	r3, [r7, #23]
     e00:	4a4c      	ldr	r2, [pc, #304]	; (f34 <chip_vm+0xa54>)
     e02:	4413      	add	r3, r2
     e04:	799b      	ldrb	r3, [r3, #6]
     e06:	b25b      	sxtb	r3, r3
     e08:	4618      	mov	r0, r3
     e0a:	7dbb      	ldrb	r3, [r7, #22]
     e0c:	4a49      	ldr	r2, [pc, #292]	; (f34 <chip_vm+0xa54>)
     e0e:	4413      	add	r3, r2
     e10:	799b      	ldrb	r3, [r3, #6]
     e12:	b25b      	sxtb	r3, r3
     e14:	4619      	mov	r1, r3
     e16:	4b47      	ldr	r3, [pc, #284]	; (f34 <chip_vm+0xa54>)
     e18:	885b      	ldrh	r3, [r3, #2]
     e1a:	461a      	mov	r2, r3
     e1c:	4b47      	ldr	r3, [pc, #284]	; (f3c <chip_vm+0xa5c>)
     e1e:	4413      	add	r3, r2
     e20:	9300      	str	r3, [sp, #0]
     e22:	2310      	movs	r3, #16
     e24:	2210      	movs	r2, #16
     e26:	f001 fbf7 	bl	2618 <gfx_sprite>
     e2a:	4603      	mov	r3, r0
     e2c:	b2da      	uxtb	r2, r3
     e2e:	4b41      	ldr	r3, [pc, #260]	; (f34 <chip_vm+0xa54>)
     e30:	755a      	strb	r2, [r3, #21]
				}else{
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
				}
			}
			
			break;
     e32:	e28a      	b.n	134a <chip_vm+0xe6a>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],16,16,(const uint8_t*)(uint32_t)vms.ix);
     e34:	7dfb      	ldrb	r3, [r7, #23]
     e36:	4a3f      	ldr	r2, [pc, #252]	; (f34 <chip_vm+0xa54>)
     e38:	4413      	add	r3, r2
     e3a:	799b      	ldrb	r3, [r3, #6]
     e3c:	b25b      	sxtb	r3, r3
     e3e:	4618      	mov	r0, r3
     e40:	7dbb      	ldrb	r3, [r7, #22]
     e42:	4a3c      	ldr	r2, [pc, #240]	; (f34 <chip_vm+0xa54>)
     e44:	4413      	add	r3, r2
     e46:	799b      	ldrb	r3, [r3, #6]
     e48:	b25b      	sxtb	r3, r3
     e4a:	4619      	mov	r1, r3
     e4c:	4b39      	ldr	r3, [pc, #228]	; (f34 <chip_vm+0xa54>)
     e4e:	885b      	ldrh	r3, [r3, #2]
     e50:	9300      	str	r3, [sp, #0]
     e52:	2310      	movs	r3, #16
     e54:	2210      	movs	r2, #16
     e56:	f001 fbdf 	bl	2618 <gfx_sprite>
     e5a:	4603      	mov	r3, r0
     e5c:	b2da      	uxtb	r2, r3
     e5e:	4b35      	ldr	r3, [pc, #212]	; (f34 <chip_vm+0xa54>)
     e60:	755a      	strb	r2, [r3, #21]
			break;
     e62:	e272      	b.n	134a <chip_vm+0xe6a>
				if (vms.sprite_mem==RAM_MEM){
     e64:	4b33      	ldr	r3, [pc, #204]	; (f34 <chip_vm+0xa54>)
     e66:	795b      	ldrb	r3, [r3, #5]
     e68:	2b00      	cmp	r3, #0
     e6a:	d11b      	bne.n	ea4 <chip_vm+0x9c4>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)&game_ram[vms.ix]);
     e6c:	7dfb      	ldrb	r3, [r7, #23]
     e6e:	4a31      	ldr	r2, [pc, #196]	; (f34 <chip_vm+0xa54>)
     e70:	4413      	add	r3, r2
     e72:	799b      	ldrb	r3, [r3, #6]
     e74:	b25b      	sxtb	r3, r3
     e76:	4618      	mov	r0, r3
     e78:	7dbb      	ldrb	r3, [r7, #22]
     e7a:	4a2e      	ldr	r2, [pc, #184]	; (f34 <chip_vm+0xa54>)
     e7c:	4413      	add	r3, r2
     e7e:	799b      	ldrb	r3, [r3, #6]
     e80:	b25b      	sxtb	r3, r3
     e82:	4619      	mov	r1, r3
     e84:	4b2b      	ldr	r3, [pc, #172]	; (f34 <chip_vm+0xa54>)
     e86:	885b      	ldrh	r3, [r3, #2]
     e88:	461a      	mov	r2, r3
     e8a:	4b2c      	ldr	r3, [pc, #176]	; (f3c <chip_vm+0xa5c>)
     e8c:	4413      	add	r3, r2
     e8e:	7d7a      	ldrb	r2, [r7, #21]
     e90:	9300      	str	r3, [sp, #0]
     e92:	4613      	mov	r3, r2
     e94:	2208      	movs	r2, #8
     e96:	f001 fbbf 	bl	2618 <gfx_sprite>
     e9a:	4603      	mov	r3, r0
     e9c:	b2da      	uxtb	r2, r3
     e9e:	4b25      	ldr	r3, [pc, #148]	; (f34 <chip_vm+0xa54>)
     ea0:	755a      	strb	r2, [r3, #21]
			break;
     ea2:	e252      	b.n	134a <chip_vm+0xe6a>
					vms.var[15]=gfx_sprite((int8_t)vms.var[x],(int8_t)vms.var[y],8,n,(const uint8_t*)(uint32_t)vms.ix);
     ea4:	7dfb      	ldrb	r3, [r7, #23]
     ea6:	4a23      	ldr	r2, [pc, #140]	; (f34 <chip_vm+0xa54>)
     ea8:	4413      	add	r3, r2
     eaa:	799b      	ldrb	r3, [r3, #6]
     eac:	b25b      	sxtb	r3, r3
     eae:	4618      	mov	r0, r3
     eb0:	7dbb      	ldrb	r3, [r7, #22]
     eb2:	4a20      	ldr	r2, [pc, #128]	; (f34 <chip_vm+0xa54>)
     eb4:	4413      	add	r3, r2
     eb6:	799b      	ldrb	r3, [r3, #6]
     eb8:	b25b      	sxtb	r3, r3
     eba:	4619      	mov	r1, r3
     ebc:	4b1d      	ldr	r3, [pc, #116]	; (f34 <chip_vm+0xa54>)
     ebe:	885b      	ldrh	r3, [r3, #2]
     ec0:	461a      	mov	r2, r3
     ec2:	7d7b      	ldrb	r3, [r7, #21]
     ec4:	9200      	str	r2, [sp, #0]
     ec6:	2208      	movs	r2, #8
     ec8:	f001 fba6 	bl	2618 <gfx_sprite>
     ecc:	4603      	mov	r3, r0
     ece:	b2da      	uxtb	r2, r3
     ed0:	4b18      	ldr	r3, [pc, #96]	; (f34 <chip_vm+0xa54>)
     ed2:	755a      	strb	r2, [r3, #21]
			break;
     ed4:	e239      	b.n	134a <chip_vm+0xe6a>
		case 0xe:
				switch(vms.b2){
     ed6:	4b17      	ldr	r3, [pc, #92]	; (f34 <chip_vm+0xa54>)
     ed8:	7ddb      	ldrb	r3, [r3, #23]
     eda:	2b9e      	cmp	r3, #158	; 0x9e
     edc:	d002      	beq.n	ee4 <chip_vm+0xa04>
     ede:	2ba1      	cmp	r3, #161	; 0xa1
     ee0:	d011      	beq.n	f06 <chip_vm+0xa26>
     ee2:	e021      	b.n	f28 <chip_vm+0xa48>
				case 0x9e: //EX9E, SKP VX   ; skip if VX key is down
					if (btn_query_down(vms.var[x])) vms.pc+=2;
     ee4:	7dfb      	ldrb	r3, [r7, #23]
     ee6:	4a13      	ldr	r2, [pc, #76]	; (f34 <chip_vm+0xa54>)
     ee8:	4413      	add	r3, r2
     eea:	799b      	ldrb	r3, [r3, #6]
     eec:	4618      	mov	r0, r3
     eee:	f000 fdab 	bl	1a48 <btn_query_down>
     ef2:	4603      	mov	r3, r0
     ef4:	2b00      	cmp	r3, #0
     ef6:	d019      	beq.n	f2c <chip_vm+0xa4c>
     ef8:	4b0e      	ldr	r3, [pc, #56]	; (f34 <chip_vm+0xa54>)
     efa:	881b      	ldrh	r3, [r3, #0]
     efc:	3302      	adds	r3, #2
     efe:	b29a      	uxth	r2, r3
     f00:	4b0c      	ldr	r3, [pc, #48]	; (f34 <chip_vm+0xa54>)
     f02:	801a      	strh	r2, [r3, #0]
					break;
     f04:	e012      	b.n	f2c <chip_vm+0xa4c>
				case 0xa1: //EXA1, SKNP VX  ; skip if VX key is up
					if (!btn_query_down(vms.var[x])) vms.pc+=2;
     f06:	7dfb      	ldrb	r3, [r7, #23]
     f08:	4a0a      	ldr	r2, [pc, #40]	; (f34 <chip_vm+0xa54>)
     f0a:	4413      	add	r3, r2
     f0c:	799b      	ldrb	r3, [r3, #6]
     f0e:	4618      	mov	r0, r3
     f10:	f000 fd9a 	bl	1a48 <btn_query_down>
     f14:	4603      	mov	r3, r0
     f16:	2b00      	cmp	r3, #0
     f18:	d10a      	bne.n	f30 <chip_vm+0xa50>
     f1a:	4b06      	ldr	r3, [pc, #24]	; (f34 <chip_vm+0xa54>)
     f1c:	881b      	ldrh	r3, [r3, #0]
     f1e:	3302      	adds	r3, #2
     f20:	b29a      	uxth	r2, r3
     f22:	4b04      	ldr	r3, [pc, #16]	; (f34 <chip_vm+0xa54>)
     f24:	801a      	strh	r2, [r3, #0]
					break;
     f26:	e003      	b.n	f30 <chip_vm+0xa50>
				default:
					return CHIP_BAD_OPCODE;
     f28:	2302      	movs	r3, #2
     f2a:	e210      	b.n	134e <chip_vm+0xe6e>
					break;
     f2c:	bf00      	nop
     f2e:	e20c      	b.n	134a <chip_vm+0xe6a>
					break;
     f30:	bf00      	nop
				}//switch(vms.b2)
				break;
     f32:	e20a      	b.n	134a <chip_vm+0xe6a>
     f34:	20000210 	.word	0x20000210
     f38:	200006b0 	.word	0x200006b0
     f3c:	200006b4 	.word	0x200006b4
		case 0xf:
			switch(vms.b2){
     f40:	4bc2      	ldr	r3, [pc, #776]	; (124c <chip_vm+0xd6c>)
     f42:	7ddb      	ldrb	r3, [r3, #23]
     f44:	3b01      	subs	r3, #1
     f46:	2b84      	cmp	r3, #132	; 0x84
     f48:	f200 81ec 	bhi.w	1324 <chip_vm+0xe44>
     f4c:	a201      	add	r2, pc, #4	; (adr r2, f54 <chip_vm+0xa74>)
     f4e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     f52:	bf00      	nop
     f54:	00001169 	.word	0x00001169
     f58:	00001179 	.word	0x00001179
     f5c:	00001325 	.word	0x00001325
     f60:	00001325 	.word	0x00001325
     f64:	00001325 	.word	0x00001325
     f68:	00001325 	.word	0x00001325
     f6c:	0000118b 	.word	0x0000118b
     f70:	00001325 	.word	0x00001325
     f74:	00001325 	.word	0x00001325
     f78:	0000119f 	.word	0x0000119f
     f7c:	00001325 	.word	0x00001325
     f80:	00001325 	.word	0x00001325
     f84:	00001325 	.word	0x00001325
     f88:	00001325 	.word	0x00001325
     f8c:	00001325 	.word	0x00001325
     f90:	00001325 	.word	0x00001325
     f94:	00001325 	.word	0x00001325
     f98:	00001325 	.word	0x00001325
     f9c:	00001325 	.word	0x00001325
     fa0:	00001325 	.word	0x00001325
     fa4:	000011b1 	.word	0x000011b1
     fa8:	00001325 	.word	0x00001325
     fac:	00001325 	.word	0x00001325
     fb0:	000011c1 	.word	0x000011c1
     fb4:	00001325 	.word	0x00001325
     fb8:	00001325 	.word	0x00001325
     fbc:	00001325 	.word	0x00001325
     fc0:	00001325 	.word	0x00001325
     fc4:	00001325 	.word	0x00001325
     fc8:	000011d7 	.word	0x000011d7
     fcc:	00001325 	.word	0x00001325
     fd0:	00001325 	.word	0x00001325
     fd4:	00001325 	.word	0x00001325
     fd8:	00001325 	.word	0x00001325
     fdc:	00001325 	.word	0x00001325
     fe0:	00001325 	.word	0x00001325
     fe4:	00001325 	.word	0x00001325
     fe8:	00001325 	.word	0x00001325
     fec:	00001325 	.word	0x00001325
     ff0:	00001325 	.word	0x00001325
     ff4:	000011ef 	.word	0x000011ef
     ff8:	00001325 	.word	0x00001325
     ffc:	00001325 	.word	0x00001325
    1000:	00001325 	.word	0x00001325
    1004:	00001325 	.word	0x00001325
    1008:	00001325 	.word	0x00001325
    100c:	00001325 	.word	0x00001325
    1010:	0000121d 	.word	0x0000121d
    1014:	00001325 	.word	0x00001325
    1018:	00001325 	.word	0x00001325
    101c:	00001265 	.word	0x00001265
    1020:	00001325 	.word	0x00001325
    1024:	00001325 	.word	0x00001325
    1028:	00001325 	.word	0x00001325
    102c:	00001325 	.word	0x00001325
    1030:	00001325 	.word	0x00001325
    1034:	00001325 	.word	0x00001325
    1038:	00001325 	.word	0x00001325
    103c:	00001325 	.word	0x00001325
    1040:	00001325 	.word	0x00001325
    1044:	00001325 	.word	0x00001325
    1048:	00001325 	.word	0x00001325
    104c:	00001325 	.word	0x00001325
    1050:	00001325 	.word	0x00001325
    1054:	00001325 	.word	0x00001325
    1058:	00001325 	.word	0x00001325
    105c:	00001325 	.word	0x00001325
    1060:	00001325 	.word	0x00001325
    1064:	00001325 	.word	0x00001325
    1068:	00001325 	.word	0x00001325
    106c:	00001325 	.word	0x00001325
    1070:	00001325 	.word	0x00001325
    1074:	00001325 	.word	0x00001325
    1078:	00001325 	.word	0x00001325
    107c:	00001325 	.word	0x00001325
    1080:	00001325 	.word	0x00001325
    1084:	00001325 	.word	0x00001325
    1088:	00001325 	.word	0x00001325
    108c:	00001325 	.word	0x00001325
    1090:	00001325 	.word	0x00001325
    1094:	00001325 	.word	0x00001325
    1098:	00001325 	.word	0x00001325
    109c:	00001325 	.word	0x00001325
    10a0:	00001325 	.word	0x00001325
    10a4:	000012d5 	.word	0x000012d5
    10a8:	00001325 	.word	0x00001325
    10ac:	00001325 	.word	0x00001325
    10b0:	00001325 	.word	0x00001325
    10b4:	00001325 	.word	0x00001325
    10b8:	00001325 	.word	0x00001325
    10bc:	00001325 	.word	0x00001325
    10c0:	00001325 	.word	0x00001325
    10c4:	00001325 	.word	0x00001325
    10c8:	00001325 	.word	0x00001325
    10cc:	00001325 	.word	0x00001325
    10d0:	00001325 	.word	0x00001325
    10d4:	00001325 	.word	0x00001325
    10d8:	00001325 	.word	0x00001325
    10dc:	00001325 	.word	0x00001325
    10e0:	00001325 	.word	0x00001325
    10e4:	000012ed 	.word	0x000012ed
    10e8:	00001325 	.word	0x00001325
    10ec:	00001325 	.word	0x00001325
    10f0:	00001325 	.word	0x00001325
    10f4:	00001325 	.word	0x00001325
    10f8:	00001325 	.word	0x00001325
    10fc:	00001325 	.word	0x00001325
    1100:	00001325 	.word	0x00001325
    1104:	00001325 	.word	0x00001325
    1108:	00001325 	.word	0x00001325
    110c:	00001325 	.word	0x00001325
    1110:	00001325 	.word	0x00001325
    1114:	00001325 	.word	0x00001325
    1118:	00001325 	.word	0x00001325
    111c:	00001325 	.word	0x00001325
    1120:	00001325 	.word	0x00001325
    1124:	00001305 	.word	0x00001305
    1128:	00001325 	.word	0x00001325
    112c:	00001325 	.word	0x00001325
    1130:	00001325 	.word	0x00001325
    1134:	00001325 	.word	0x00001325
    1138:	00001325 	.word	0x00001325
    113c:	00001325 	.word	0x00001325
    1140:	00001325 	.word	0x00001325
    1144:	00001325 	.word	0x00001325
    1148:	00001325 	.word	0x00001325
    114c:	00001325 	.word	0x00001325
    1150:	00001325 	.word	0x00001325
    1154:	00001325 	.word	0x00001325
    1158:	00001325 	.word	0x00001325
    115c:	00001325 	.word	0x00001325
    1160:	00001325 	.word	0x00001325
    1164:	00001315 	.word	0x00001315
//			case 0: // F000 NNNN  load i with a 16-bit address, XO-CHIP
//				break;
			case 1: // FN01  set sprite bitS  per pixels 1,2,4
				sprite_bpp=vms.b1&0x3;
    1168:	4b38      	ldr	r3, [pc, #224]	; (124c <chip_vm+0xd6c>)
    116a:	7d9b      	ldrb	r3, [r3, #22]
    116c:	f003 0303 	and.w	r3, r3, #3
    1170:	b2da      	uxtb	r2, r3
    1172:	4b37      	ldr	r3, [pc, #220]	; (1250 <chip_vm+0xd70>)
    1174:	701a      	strb	r2, [r3, #0]
				break;
    1176:	e0d7      	b.n	1328 <chip_vm+0xe48>
			case 2: // FN02   store 16 bytes starting at i in the audio pattern buffer, XO-CHIP and BP-CHIPCON
				load_sound_buffer(&game_ram[vms.ix]);
    1178:	4b34      	ldr	r3, [pc, #208]	; (124c <chip_vm+0xd6c>)
    117a:	885b      	ldrh	r3, [r3, #2]
    117c:	461a      	mov	r2, r3
    117e:	4b35      	ldr	r3, [pc, #212]	; (1254 <chip_vm+0xd74>)
    1180:	4413      	add	r3, r2
    1182:	4618      	mov	r0, r3
    1184:	f003 f8b9 	bl	42fa <load_sound_buffer>
				break;	
    1188:	e0ce      	b.n	1328 <chip_vm+0xe48>
			case 0x07: // FX07  LD VX, DT   VX := game_timer
				vms.var[x]=game_timer;
    118a:	7dfb      	ldrb	r3, [r7, #23]
    118c:	4a32      	ldr	r2, [pc, #200]	; (1258 <chip_vm+0xd78>)
    118e:	8812      	ldrh	r2, [r2, #0]
    1190:	b292      	uxth	r2, r2
    1192:	b2d1      	uxtb	r1, r2
    1194:	4a2d      	ldr	r2, [pc, #180]	; (124c <chip_vm+0xd6c>)
    1196:	4413      	add	r3, r2
    1198:	460a      	mov	r2, r1
    119a:	719a      	strb	r2, [r3, #6]
				break;
    119c:	e0c4      	b.n	1328 <chip_vm+0xe48>
			case 0x0a: // FX0A  LD VX, K  ; wait for key down and put it in VX.
				vms.var[x]=btn_wait_any();
    119e:	7dfc      	ldrb	r4, [r7, #23]
    11a0:	f000 fcbe 	bl	1b20 <btn_wait_any>
    11a4:	4603      	mov	r3, r0
    11a6:	461a      	mov	r2, r3
    11a8:	4b28      	ldr	r3, [pc, #160]	; (124c <chip_vm+0xd6c>)
    11aa:	4423      	add	r3, r4
    11ac:	719a      	strb	r2, [r3, #6]
				break;
    11ae:	e0bb      	b.n	1328 <chip_vm+0xe48>
			case 0x15: // FX15  LD DT, VX  ; initialize game_timer with value in VX.
				game_timer=vms.var[x];
    11b0:	7dfb      	ldrb	r3, [r7, #23]
    11b2:	4a26      	ldr	r2, [pc, #152]	; (124c <chip_vm+0xd6c>)
    11b4:	4413      	add	r3, r2
    11b6:	799b      	ldrb	r3, [r3, #6]
    11b8:	b29a      	uxth	r2, r3
    11ba:	4b27      	ldr	r3, [pc, #156]	; (1258 <chip_vm+0xd78>)
    11bc:	801a      	strh	r2, [r3, #0]
				break;
    11be:	e0b3      	b.n	1328 <chip_vm+0xe48>
			case 0x18: // FX18  LD ST, VX  ; beep sound of length VX (multiple de 16.7 msec)
				tone(523,vms.var[x]);
    11c0:	7dfb      	ldrb	r3, [r7, #23]
    11c2:	4a22      	ldr	r2, [pc, #136]	; (124c <chip_vm+0xd6c>)
    11c4:	4413      	add	r3, r2
    11c6:	799b      	ldrb	r3, [r3, #6]
    11c8:	b29b      	uxth	r3, r3
    11ca:	4619      	mov	r1, r3
    11cc:	f240 200b 	movw	r0, #523	; 0x20b
    11d0:	f003 f83e 	bl	4250 <tone>
				break;
    11d4:	e0a8      	b.n	1328 <chip_vm+0xe48>
			case 0x1e: // FX1E  ADD I, VX  ;  I := I + VX
				vms.ix += vms.var[x];
    11d6:	4b1d      	ldr	r3, [pc, #116]	; (124c <chip_vm+0xd6c>)
    11d8:	885a      	ldrh	r2, [r3, #2]
    11da:	7dfb      	ldrb	r3, [r7, #23]
    11dc:	491b      	ldr	r1, [pc, #108]	; (124c <chip_vm+0xd6c>)
    11de:	440b      	add	r3, r1
    11e0:	799b      	ldrb	r3, [r3, #6]
    11e2:	b29b      	uxth	r3, r3
    11e4:	4413      	add	r3, r2
    11e6:	b29a      	uxth	r2, r3
    11e8:	4b18      	ldr	r3, [pc, #96]	; (124c <chip_vm+0xd6c>)
    11ea:	805a      	strh	r2, [r3, #2]
				break;
    11ec:	e09c      	b.n	1328 <chip_vm+0xe48>
			case 0x29: // FX29  LD F,VX   ; set I to point to character VX in FONT_SHEX table.
				vms.ix=(uint32_t)font_hex_4x6+vms.var[x]*SHEX_HEIGHT;
    11ee:	7dfb      	ldrb	r3, [r7, #23]
    11f0:	4a16      	ldr	r2, [pc, #88]	; (124c <chip_vm+0xd6c>)
    11f2:	4413      	add	r3, r2
    11f4:	799b      	ldrb	r3, [r3, #6]
    11f6:	b29b      	uxth	r3, r3
    11f8:	461a      	mov	r2, r3
    11fa:	0052      	lsls	r2, r2, #1
    11fc:	4413      	add	r3, r2
    11fe:	005b      	lsls	r3, r3, #1
    1200:	b29a      	uxth	r2, r3
    1202:	4b16      	ldr	r3, [pc, #88]	; (125c <chip_vm+0xd7c>)
    1204:	b29b      	uxth	r3, r3
    1206:	4413      	add	r3, r2
    1208:	b29a      	uxth	r2, r3
    120a:	4b10      	ldr	r3, [pc, #64]	; (124c <chip_vm+0xd6c>)
    120c:	805a      	strh	r2, [r3, #2]
				vms.sprite_mem=FLASH_MEM;
    120e:	4b0f      	ldr	r3, [pc, #60]	; (124c <chip_vm+0xd6c>)
    1210:	2201      	movs	r2, #1
    1212:	715a      	strb	r2, [r3, #5]
				select_font(FONT_SHEX);
    1214:	2000      	movs	r0, #0
    1216:	f003 fb35 	bl	4884 <select_font>
				break;
    121a:	e085      	b.n	1328 <chip_vm+0xe48>
			case 0x30: // FX30 LD LF,VX  set I to point to character VX in FONT_LHEX table
				vms.ix=(uint32_t)font_hex_8x10+vms.var[x]*LHEX_HEIGHT;
    121c:	7dfb      	ldrb	r3, [r7, #23]
    121e:	4a0b      	ldr	r2, [pc, #44]	; (124c <chip_vm+0xd6c>)
    1220:	4413      	add	r3, r2
    1222:	799b      	ldrb	r3, [r3, #6]
    1224:	b29b      	uxth	r3, r3
    1226:	461a      	mov	r2, r3
    1228:	0092      	lsls	r2, r2, #2
    122a:	4413      	add	r3, r2
    122c:	005b      	lsls	r3, r3, #1
    122e:	b29a      	uxth	r2, r3
    1230:	4b0b      	ldr	r3, [pc, #44]	; (1260 <chip_vm+0xd80>)
    1232:	b29b      	uxth	r3, r3
    1234:	4413      	add	r3, r2
    1236:	b29a      	uxth	r2, r3
    1238:	4b04      	ldr	r3, [pc, #16]	; (124c <chip_vm+0xd6c>)
    123a:	805a      	strh	r2, [r3, #2]
				vms.sprite_mem=FLASH_MEM;
    123c:	4b03      	ldr	r3, [pc, #12]	; (124c <chip_vm+0xd6c>)
    123e:	2201      	movs	r2, #1
    1240:	715a      	strb	r2, [r3, #5]
				select_font(FONT_LHEX);
    1242:	2001      	movs	r0, #1
    1244:	f003 fb1e 	bl	4884 <select_font>
				break;
    1248:	e06e      	b.n	1328 <chip_vm+0xe48>
    124a:	bf00      	nop
    124c:	20000210 	.word	0x20000210
    1250:	20000190 	.word	0x20000190
    1254:	200006b4 	.word	0x200006b4
    1258:	20004e40 	.word	0x20004e40
    125c:	00005528 	.word	0x00005528
    1260:	00005588 	.word	0x00005588
			case 0x33: // FX33 LD B, VX  ;  set I to point BCD value of VX, i.e. M[I]..M[I+2]
				n=vms.var[x];
    1264:	7dfb      	ldrb	r3, [r7, #23]
    1266:	4a3c      	ldr	r2, [pc, #240]	; (1358 <chip_vm+0xe78>)
    1268:	4413      	add	r3, r2
    126a:	799b      	ldrb	r3, [r3, #6]
    126c:	757b      	strb	r3, [r7, #21]
				block[2]=n%10;
    126e:	7d7a      	ldrb	r2, [r7, #21]
    1270:	4b3a      	ldr	r3, [pc, #232]	; (135c <chip_vm+0xe7c>)
    1272:	fba3 1302 	umull	r1, r3, r3, r2
    1276:	08d9      	lsrs	r1, r3, #3
    1278:	460b      	mov	r3, r1
    127a:	009b      	lsls	r3, r3, #2
    127c:	440b      	add	r3, r1
    127e:	005b      	lsls	r3, r3, #1
    1280:	1ad3      	subs	r3, r2, r3
    1282:	b2da      	uxtb	r2, r3
    1284:	4b36      	ldr	r3, [pc, #216]	; (1360 <chip_vm+0xe80>)
    1286:	709a      	strb	r2, [r3, #2]
				n /=10;
    1288:	7d7b      	ldrb	r3, [r7, #21]
    128a:	4a34      	ldr	r2, [pc, #208]	; (135c <chip_vm+0xe7c>)
    128c:	fba2 2303 	umull	r2, r3, r2, r3
    1290:	08db      	lsrs	r3, r3, #3
    1292:	757b      	strb	r3, [r7, #21]
				block[1]=n%10;
    1294:	7d7a      	ldrb	r2, [r7, #21]
    1296:	4b31      	ldr	r3, [pc, #196]	; (135c <chip_vm+0xe7c>)
    1298:	fba3 1302 	umull	r1, r3, r3, r2
    129c:	08d9      	lsrs	r1, r3, #3
    129e:	460b      	mov	r3, r1
    12a0:	009b      	lsls	r3, r3, #2
    12a2:	440b      	add	r3, r1
    12a4:	005b      	lsls	r3, r3, #1
    12a6:	1ad3      	subs	r3, r2, r3
    12a8:	b2da      	uxtb	r2, r3
    12aa:	4b2d      	ldr	r3, [pc, #180]	; (1360 <chip_vm+0xe80>)
    12ac:	705a      	strb	r2, [r3, #1]
				block[0]=n/10;
    12ae:	7d7b      	ldrb	r3, [r7, #21]
    12b0:	4a2a      	ldr	r2, [pc, #168]	; (135c <chip_vm+0xe7c>)
    12b2:	fba2 2303 	umull	r2, r3, r2, r3
    12b6:	08db      	lsrs	r3, r3, #3
    12b8:	b2da      	uxtb	r2, r3
    12ba:	4b29      	ldr	r3, [pc, #164]	; (1360 <chip_vm+0xe80>)
    12bc:	701a      	strb	r2, [r3, #0]
				//store_block(vms.ix,3,block);
				move((const uint8_t*)block,(uint8_t*)&game_ram[vms.ix],3);
    12be:	4b26      	ldr	r3, [pc, #152]	; (1358 <chip_vm+0xe78>)
    12c0:	885b      	ldrh	r3, [r3, #2]
    12c2:	461a      	mov	r2, r3
    12c4:	4b27      	ldr	r3, [pc, #156]	; (1364 <chip_vm+0xe84>)
    12c6:	4413      	add	r3, r2
    12c8:	2203      	movs	r2, #3
    12ca:	4619      	mov	r1, r3
    12cc:	4824      	ldr	r0, [pc, #144]	; (1360 <chip_vm+0xe80>)
    12ce:	f000 fdb2 	bl	1e36 <move>
				break;
    12d2:	e029      	b.n	1328 <chip_vm+0xe48>
			case 0x55: // FX55  LD [I], VX  save registers V0..VX in ram pointed by I
				move((const uint8_t*)vms.var,&game_ram[vms.ix],x+1);
    12d4:	4b20      	ldr	r3, [pc, #128]	; (1358 <chip_vm+0xe78>)
    12d6:	885b      	ldrh	r3, [r3, #2]
    12d8:	461a      	mov	r2, r3
    12da:	4b22      	ldr	r3, [pc, #136]	; (1364 <chip_vm+0xe84>)
    12dc:	18d1      	adds	r1, r2, r3
    12de:	7dfb      	ldrb	r3, [r7, #23]
    12e0:	3301      	adds	r3, #1
    12e2:	461a      	mov	r2, r3
    12e4:	4820      	ldr	r0, [pc, #128]	; (1368 <chip_vm+0xe88>)
    12e6:	f000 fda6 	bl	1e36 <move>
				//vms.ix+=x+1;
				//store_block(vms.ix,x+1,vms.var);
				break;
    12ea:	e01d      	b.n	1328 <chip_vm+0xe48>
			case 0x65: // FX65 LD VX,[I]  load registers V0-VX from ram pointed by I
				//load_block(vms.ix,x+1,vms.var);
				move((const uint8_t*)&game_ram[vms.ix],(uint8_t*)vms.var,x+1);
    12ec:	4b1a      	ldr	r3, [pc, #104]	; (1358 <chip_vm+0xe78>)
    12ee:	885b      	ldrh	r3, [r3, #2]
    12f0:	461a      	mov	r2, r3
    12f2:	4b1c      	ldr	r3, [pc, #112]	; (1364 <chip_vm+0xe84>)
    12f4:	18d0      	adds	r0, r2, r3
    12f6:	7dfb      	ldrb	r3, [r7, #23]
    12f8:	3301      	adds	r3, #1
    12fa:	461a      	mov	r2, r3
    12fc:	491a      	ldr	r1, [pc, #104]	; (1368 <chip_vm+0xe88>)
    12fe:	f000 fd9a 	bl	1e36 <move>
				//vms.ix+=x+1;
				break;
    1302:	e011      	b.n	1328 <chip_vm+0xe48>
			case 0x75: // FX75 LD R,VX  ; save registers V0-VX in mcu flash  ; SCHIP
				//flash_write_block(PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)vms.var,block,x+1);
    1304:	7dfb      	ldrb	r3, [r7, #23]
    1306:	3301      	adds	r3, #1
    1308:	461a      	mov	r2, r3
    130a:	4915      	ldr	r1, [pc, #84]	; (1360 <chip_vm+0xe80>)
    130c:	4816      	ldr	r0, [pc, #88]	; (1368 <chip_vm+0xe88>)
    130e:	f000 fd92 	bl	1e36 <move>
				break;
    1312:	e009      	b.n	1328 <chip_vm+0xe48>
			case 0x85: // FX85 LD VX, R  restore V0..VX from mcu flash
				//flash_read_block((const uint8_t*)PERSIST_STORE,vms.var,x+1);
				move((const uint8_t*)block,vms.var,x+1);
    1314:	7dfb      	ldrb	r3, [r7, #23]
    1316:	3301      	adds	r3, #1
    1318:	461a      	mov	r2, r3
    131a:	4913      	ldr	r1, [pc, #76]	; (1368 <chip_vm+0xe88>)
    131c:	4810      	ldr	r0, [pc, #64]	; (1360 <chip_vm+0xe80>)
    131e:	f000 fd8a 	bl	1e36 <move>
				break;
    1322:	e001      	b.n	1328 <chip_vm+0xe48>
			default:
				return CHIP_BAD_OPCODE;
    1324:	2302      	movs	r3, #2
    1326:	e012      	b.n	134e <chip_vm+0xe6e>
				
			}//switch(vms.b2)
			break;	
    1328:	e00f      	b.n	134a <chip_vm+0xe6a>
			break;
    132a:	bf00      	nop
    132c:	f7ff b8e6 	b.w	4fc <chip_vm+0x1c>
			break;
    1330:	bf00      	nop
    1332:	f7ff b8e3 	b.w	4fc <chip_vm+0x1c>
			break;
    1336:	bf00      	nop
    1338:	f7ff b8e0 	b.w	4fc <chip_vm+0x1c>
			break;
    133c:	bf00      	nop
    133e:	f7ff b8dd 	b.w	4fc <chip_vm+0x1c>
			break;
    1342:	bf00      	nop
    1344:	f7ff b8da 	b.w	4fc <chip_vm+0x1c>
			break;
    1348:	bf00      	nop
		_get_opcode(vms.pc);
    134a:	f7ff b8d7 	b.w	4fc <chip_vm+0x1c>
		}//switch (vms.b1>>4)
	}//while(1)
}//schipp()
    134e:	4618      	mov	r0, r3
    1350:	371c      	adds	r7, #28
    1352:	46bd      	mov	sp, r7
    1354:	bd90      	pop	{r4, r7, pc}
    1356:	bf00      	nop
    1358:	20000210 	.word	0x20000210
    135c:	cccccccd 	.word	0xcccccccd
    1360:	20000268 	.word	0x20000268
    1364:	200006b4 	.word	0x200006b4
    1368:	20000216 	.word	0x20000216

0000136c <flash_enable>:
extern uint32_t _FLASH_FREE;
#define ffa  ((void*)_FLASH_FREE)

// activation interface de programmation
//mémoire flash du mcu
int flash_enable(){
    136c:	b480      	push	{r7}
    136e:	af00      	add	r7, sp, #0
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
    1370:	4b14      	ldr	r3, [pc, #80]	; (13c4 <flash_enable+0x58>)
    1372:	2200      	movs	r2, #0
    1374:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
    1376:	4b14      	ldr	r3, [pc, #80]	; (13c8 <flash_enable+0x5c>)
    1378:	681b      	ldr	r3, [r3, #0]
    137a:	f003 0301 	and.w	r3, r3, #1
    137e:	2b00      	cmp	r3, #0
    1380:	d10c      	bne.n	139c <flash_enable+0x30>
		RCC->CR|=RCC_CR_HSION;
    1382:	4a11      	ldr	r2, [pc, #68]	; (13c8 <flash_enable+0x5c>)
    1384:	4b10      	ldr	r3, [pc, #64]	; (13c8 <flash_enable+0x5c>)
    1386:	681b      	ldr	r3, [r3, #0]
    1388:	f043 0301 	orr.w	r3, r3, #1
    138c:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
    138e:	bf00      	nop
    1390:	4b0d      	ldr	r3, [pc, #52]	; (13c8 <flash_enable+0x5c>)
    1392:	681b      	ldr	r3, [r3, #0]
    1394:	f003 0302 	and.w	r3, r3, #2
    1398:	2b00      	cmp	r3, #0
    139a:	d0f9      	beq.n	1390 <flash_enable+0x24>
	}
	FLASH->KEYR=0x45670123;
    139c:	4b0b      	ldr	r3, [pc, #44]	; (13cc <flash_enable+0x60>)
    139e:	4a0c      	ldr	r2, [pc, #48]	; (13d0 <flash_enable+0x64>)
    13a0:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
    13a2:	4b0a      	ldr	r3, [pc, #40]	; (13cc <flash_enable+0x60>)
    13a4:	4a0b      	ldr	r2, [pc, #44]	; (13d4 <flash_enable+0x68>)
    13a6:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
    13a8:	4b08      	ldr	r3, [pc, #32]	; (13cc <flash_enable+0x60>)
    13aa:	691b      	ldr	r3, [r3, #16]
    13ac:	f003 0380 	and.w	r3, r3, #128	; 0x80
    13b0:	2b00      	cmp	r3, #0
    13b2:	bf0c      	ite	eq
    13b4:	2301      	moveq	r3, #1
    13b6:	2300      	movne	r3, #0
    13b8:	b2db      	uxtb	r3, r3
}
    13ba:	4618      	mov	r0, r3
    13bc:	46bd      	mov	sp, r7
    13be:	bc80      	pop	{r7}
    13c0:	4770      	bx	lr
    13c2:	bf00      	nop
    13c4:	20000288 	.word	0x20000288
    13c8:	40021000 	.word	0x40021000
    13cc:	40022000 	.word	0x40022000
    13d0:	45670123 	.word	0x45670123
    13d4:	cdef89ab 	.word	0xcdef89ab

000013d8 <read_byte>:
// accède le tampon si 'address' est déjà dans le tampon.
// arguments:
//		address   adresse de la mémoire flash à lire
// retourne:
//		valeur lue à cette adresse
static uint8_t read_byte(const uint8_t *address){
    13d8:	b480      	push	{r7}
    13da:	b085      	sub	sp, #20
    13dc:	af00      	add	r7, sp, #0
    13de:	6078      	str	r0, [r7, #4]
		uint32_t i;
		if (_addr2row(address)==row_buff.row){
    13e0:	687b      	ldr	r3, [r7, #4]
    13e2:	0a9b      	lsrs	r3, r3, #10
    13e4:	4a0a      	ldr	r2, [pc, #40]	; (1410 <read_byte+0x38>)
    13e6:	7852      	ldrb	r2, [r2, #1]
    13e8:	4293      	cmp	r3, r2
    13ea:	d109      	bne.n	1400 <read_byte+0x28>
			i=((uint32_t)address&FLASH_ROW_MASK);
    13ec:	687b      	ldr	r3, [r7, #4]
    13ee:	f3c3 0309 	ubfx	r3, r3, #0, #10
    13f2:	60fb      	str	r3, [r7, #12]
			return row_buff.data[i];
    13f4:	4a06      	ldr	r2, [pc, #24]	; (1410 <read_byte+0x38>)
    13f6:	68fb      	ldr	r3, [r7, #12]
    13f8:	4413      	add	r3, r2
    13fa:	3302      	adds	r3, #2
    13fc:	781b      	ldrb	r3, [r3, #0]
    13fe:	e001      	b.n	1404 <read_byte+0x2c>
		}else{
			return *address;
    1400:	687b      	ldr	r3, [r7, #4]
    1402:	781b      	ldrb	r3, [r3, #0]
		}
}
    1404:	4618      	mov	r0, r3
    1406:	3714      	adds	r7, #20
    1408:	46bd      	mov	sp, r7
    140a:	bc80      	pop	{r7}
    140c:	4770      	bx	lr
    140e:	bf00      	nop
    1410:	20000288 	.word	0x20000288

00001414 <flash_write_hword>:
}


// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
    1414:	b480      	push	{r7}
    1416:	b083      	sub	sp, #12
    1418:	af00      	add	r7, sp, #0
    141a:	6078      	str	r0, [r7, #4]
    141c:	460b      	mov	r3, r1
    141e:	807b      	strh	r3, [r7, #2]
	while (_flash_busy);
    1420:	bf00      	nop
    1422:	4b16      	ldr	r3, [pc, #88]	; (147c <flash_write_hword+0x68>)
    1424:	68db      	ldr	r3, [r3, #12]
    1426:	f003 0301 	and.w	r3, r3, #1
    142a:	2b00      	cmp	r3, #0
    142c:	d1f9      	bne.n	1422 <flash_write_hword+0xe>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
    142e:	4a13      	ldr	r2, [pc, #76]	; (147c <flash_write_hword+0x68>)
    1430:	4b12      	ldr	r3, [pc, #72]	; (147c <flash_write_hword+0x68>)
    1432:	68db      	ldr	r3, [r3, #12]
    1434:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1438:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PG;
    143a:	4b10      	ldr	r3, [pc, #64]	; (147c <flash_write_hword+0x68>)
    143c:	2201      	movs	r2, #1
    143e:	611a      	str	r2, [r3, #16]
	*address=hword;
    1440:	687b      	ldr	r3, [r7, #4]
    1442:	887a      	ldrh	r2, [r7, #2]
    1444:	801a      	strh	r2, [r3, #0]
	while (_flash_busy && ! _flash_eop);
    1446:	bf00      	nop
    1448:	4b0c      	ldr	r3, [pc, #48]	; (147c <flash_write_hword+0x68>)
    144a:	68db      	ldr	r3, [r3, #12]
    144c:	f003 0301 	and.w	r3, r3, #1
    1450:	2b00      	cmp	r3, #0
    1452:	d005      	beq.n	1460 <flash_write_hword+0x4c>
    1454:	4b09      	ldr	r3, [pc, #36]	; (147c <flash_write_hword+0x68>)
    1456:	68db      	ldr	r3, [r3, #12]
    1458:	f003 0320 	and.w	r3, r3, #32
    145c:	2b00      	cmp	r3, #0
    145e:	d0f3      	beq.n	1448 <flash_write_hword+0x34>
	return *address==hword;
    1460:	687b      	ldr	r3, [r7, #4]
    1462:	881b      	ldrh	r3, [r3, #0]
    1464:	887a      	ldrh	r2, [r7, #2]
    1466:	429a      	cmp	r2, r3
    1468:	bf0c      	ite	eq
    146a:	2301      	moveq	r3, #1
    146c:	2300      	movne	r3, #0
    146e:	b2db      	uxtb	r3, r3
}
    1470:	4618      	mov	r0, r3
    1472:	370c      	adds	r7, #12
    1474:	46bd      	mov	sp, r7
    1476:	bc80      	pop	{r7}
    1478:	4770      	bx	lr
    147a:	bf00      	nop
    147c:	40022000 	.word	0x40022000

00001480 <write_back_buffer>:

// met à jour la mémoire flash du mcu à partir du tampon 'row_buff.data'
static int write_back_buffer(){
    1480:	b580      	push	{r7, lr}
    1482:	b084      	sub	sp, #16
    1484:	af00      	add	r7, sp, #0
	int i;
	uint16_t *dest, *src;
	
	dest=_row2addr(row_buff.row);
    1486:	4b1e      	ldr	r3, [pc, #120]	; (1500 <write_back_buffer+0x80>)
    1488:	785b      	ldrb	r3, [r3, #1]
    148a:	029b      	lsls	r3, r3, #10
    148c:	60bb      	str	r3, [r7, #8]
	src=(uint16_t*)row_buff.data;
    148e:	4b1d      	ldr	r3, [pc, #116]	; (1504 <write_back_buffer+0x84>)
    1490:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1492:	2300      	movs	r3, #0
    1494:	60fb      	str	r3, [r7, #12]
    1496:	e017      	b.n	14c8 <write_back_buffer+0x48>
		if (*src!=(uint16_t)FLASH_ERASED){
    1498:	687b      	ldr	r3, [r7, #4]
    149a:	881b      	ldrh	r3, [r3, #0]
    149c:	f64f 72ff 	movw	r2, #65535	; 0xffff
    14a0:	4293      	cmp	r3, r2
    14a2:	d008      	beq.n	14b6 <write_back_buffer+0x36>
			if (!flash_write_hword(dest,*src)) break;
    14a4:	687b      	ldr	r3, [r7, #4]
    14a6:	881b      	ldrh	r3, [r3, #0]
    14a8:	4619      	mov	r1, r3
    14aa:	68b8      	ldr	r0, [r7, #8]
    14ac:	f7ff ffb2 	bl	1414 <flash_write_hword>
    14b0:	4603      	mov	r3, r0
    14b2:	2b00      	cmp	r3, #0
    14b4:	d00d      	beq.n	14d2 <write_back_buffer+0x52>
		}
		dest++;
    14b6:	68bb      	ldr	r3, [r7, #8]
    14b8:	3302      	adds	r3, #2
    14ba:	60bb      	str	r3, [r7, #8]
		src++;
    14bc:	687b      	ldr	r3, [r7, #4]
    14be:	3302      	adds	r3, #2
    14c0:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    14c2:	68fb      	ldr	r3, [r7, #12]
    14c4:	3301      	adds	r3, #1
    14c6:	60fb      	str	r3, [r7, #12]
    14c8:	68fb      	ldr	r3, [r7, #12]
    14ca:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    14ce:	dbe3      	blt.n	1498 <write_back_buffer+0x18>
    14d0:	e000      	b.n	14d4 <write_back_buffer+0x54>
			if (!flash_write_hword(dest,*src)) break;
    14d2:	bf00      	nop
	}
	if (i>0) row_buff.flags&=~F_ERASED;
    14d4:	68fb      	ldr	r3, [r7, #12]
    14d6:	2b00      	cmp	r3, #0
    14d8:	dd06      	ble.n	14e8 <write_back_buffer+0x68>
    14da:	4b09      	ldr	r3, [pc, #36]	; (1500 <write_back_buffer+0x80>)
    14dc:	781b      	ldrb	r3, [r3, #0]
    14de:	f023 0304 	bic.w	r3, r3, #4
    14e2:	b2da      	uxtb	r2, r3
    14e4:	4b06      	ldr	r3, [pc, #24]	; (1500 <write_back_buffer+0x80>)
    14e6:	701a      	strb	r2, [r3, #0]
	if (i==FLASH_ROW_SIZE_HWORD) return 1;
    14e8:	68fb      	ldr	r3, [r7, #12]
    14ea:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    14ee:	d101      	bne.n	14f4 <write_back_buffer+0x74>
    14f0:	2301      	movs	r3, #1
    14f2:	e000      	b.n	14f6 <write_back_buffer+0x76>
	return 0;
    14f4:	2300      	movs	r3, #0
}
    14f6:	4618      	mov	r0, r3
    14f8:	3710      	adds	r7, #16
    14fa:	46bd      	mov	sp, r7
    14fc:	bd80      	pop	{r7, pc}
    14fe:	bf00      	nop
    1500:	20000288 	.word	0x20000288
    1504:	2000028a 	.word	0x2000028a

00001508 <load_row>:

// charge le tampon de ligne avec le contenu de la mémoire flash
// argument:
//		r   numéro de la ligne à charger.
static void load_row(unsigned int r){
    1508:	b480      	push	{r7}
    150a:	b087      	sub	sp, #28
    150c:	af00      	add	r7, sp, #0
    150e:	6078      	str	r0, [r7, #4]
	uint16_t *src, *dest;
	int i;
	src=(uint16_t*)_row2addr(r);
    1510:	687b      	ldr	r3, [r7, #4]
    1512:	029b      	lsls	r3, r3, #10
    1514:	617b      	str	r3, [r7, #20]
	dest=(uint16_t*)row_buff.data;
    1516:	4b15      	ldr	r3, [pc, #84]	; (156c <load_row+0x64>)
    1518:	613b      	str	r3, [r7, #16]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    151a:	2300      	movs	r3, #0
    151c:	60fb      	str	r3, [r7, #12]
    151e:	e00a      	b.n	1536 <load_row+0x2e>
		*dest++=*src++;
    1520:	693b      	ldr	r3, [r7, #16]
    1522:	1c9a      	adds	r2, r3, #2
    1524:	613a      	str	r2, [r7, #16]
    1526:	697a      	ldr	r2, [r7, #20]
    1528:	1c91      	adds	r1, r2, #2
    152a:	6179      	str	r1, [r7, #20]
    152c:	8812      	ldrh	r2, [r2, #0]
    152e:	801a      	strh	r2, [r3, #0]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1530:	68fb      	ldr	r3, [r7, #12]
    1532:	3301      	adds	r3, #1
    1534:	60fb      	str	r3, [r7, #12]
    1536:	68fb      	ldr	r3, [r7, #12]
    1538:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    153c:	dbf0      	blt.n	1520 <load_row+0x18>
	}
	row_buff.row=r;
    153e:	687b      	ldr	r3, [r7, #4]
    1540:	b2da      	uxtb	r2, r3
    1542:	4b0b      	ldr	r3, [pc, #44]	; (1570 <load_row+0x68>)
    1544:	705a      	strb	r2, [r3, #1]
	row_buff.flags&=~(F_MODIFIED);
    1546:	4b0a      	ldr	r3, [pc, #40]	; (1570 <load_row+0x68>)
    1548:	781b      	ldrb	r3, [r3, #0]
    154a:	f023 0301 	bic.w	r3, r3, #1
    154e:	b2da      	uxtb	r2, r3
    1550:	4b07      	ldr	r3, [pc, #28]	; (1570 <load_row+0x68>)
    1552:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_LOADED;
    1554:	4b06      	ldr	r3, [pc, #24]	; (1570 <load_row+0x68>)
    1556:	781b      	ldrb	r3, [r3, #0]
    1558:	f043 0302 	orr.w	r3, r3, #2
    155c:	b2da      	uxtb	r2, r3
    155e:	4b04      	ldr	r3, [pc, #16]	; (1570 <load_row+0x68>)
    1560:	701a      	strb	r2, [r3, #0]
}
    1562:	bf00      	nop
    1564:	371c      	adds	r7, #28
    1566:	46bd      	mov	sp, r7
    1568:	bc80      	pop	{r7}
    156a:	4770      	bx	lr
    156c:	2000028a 	.word	0x2000028a
    1570:	20000288 	.word	0x20000288

00001574 <is_erased>:

// vérifie si une ligne est effacée
// c.à.d. ne contient que des 0xffff
static bool is_erased(unsigned row){
    1574:	b480      	push	{r7}
    1576:	b085      	sub	sp, #20
    1578:	af00      	add	r7, sp, #0
    157a:	6078      	str	r0, [r7, #4]
	uint16_t* addr;
	int i;
	
	addr=_row2addr(row);
    157c:	687b      	ldr	r3, [r7, #4]
    157e:	029b      	lsls	r3, r3, #10
    1580:	60fb      	str	r3, [r7, #12]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1582:	2300      	movs	r3, #0
    1584:	60bb      	str	r3, [r7, #8]
    1586:	e00c      	b.n	15a2 <is_erased+0x2e>
		if (*addr++!=FLASH_ERASED) return false;
    1588:	68fb      	ldr	r3, [r7, #12]
    158a:	1c9a      	adds	r2, r3, #2
    158c:	60fa      	str	r2, [r7, #12]
    158e:	881b      	ldrh	r3, [r3, #0]
    1590:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1594:	4293      	cmp	r3, r2
    1596:	d001      	beq.n	159c <is_erased+0x28>
    1598:	2300      	movs	r3, #0
    159a:	e008      	b.n	15ae <is_erased+0x3a>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    159c:	68bb      	ldr	r3, [r7, #8]
    159e:	3301      	adds	r3, #1
    15a0:	60bb      	str	r3, [r7, #8]
    15a2:	68bb      	ldr	r3, [r7, #8]
    15a4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    15a8:	dbee      	blt.n	1588 <is_erased+0x14>
	}
	return true;
    15aa:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
    15ae:	4618      	mov	r0, r3
    15b0:	3714      	adds	r7, #20
    15b2:	46bd      	mov	sp, r7
    15b4:	bc80      	pop	{r7}
    15b6:	4770      	bx	lr

000015b8 <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
    15b8:	b580      	push	{r7, lr}
    15ba:	b086      	sub	sp, #24
    15bc:	af00      	add	r7, sp, #0
    15be:	6078      	str	r0, [r7, #4]
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
    15c0:	687b      	ldr	r3, [r7, #4]
    15c2:	2b3f      	cmp	r3, #63	; 0x3f
    15c4:	d801      	bhi.n	15ca <flash_erase_row+0x12>
    15c6:	2300      	movs	r3, #0
    15c8:	e052      	b.n	1670 <flash_erase_row+0xb8>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
    15ca:	6878      	ldr	r0, [r7, #4]
    15cc:	f7ff ffd2 	bl	1574 <is_erased>
    15d0:	4603      	mov	r3, r0
    15d2:	2b00      	cmp	r3, #0
    15d4:	d001      	beq.n	15da <flash_erase_row+0x22>
    15d6:	2301      	movs	r3, #1
    15d8:	e04a      	b.n	1670 <flash_erase_row+0xb8>
	addr=_row2addr(row_nbr);
    15da:	687b      	ldr	r3, [r7, #4]
    15dc:	029b      	lsls	r3, r3, #10
    15de:	617b      	str	r3, [r7, #20]
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
    15e0:	4b25      	ldr	r3, [pc, #148]	; (1678 <flash_erase_row+0xc0>)
    15e2:	691b      	ldr	r3, [r3, #16]
    15e4:	f003 0380 	and.w	r3, r3, #128	; 0x80
    15e8:	2b00      	cmp	r3, #0
    15ea:	d001      	beq.n	15f0 <flash_erase_row+0x38>
    15ec:	2300      	movs	r3, #0
    15ee:	e03f      	b.n	1670 <flash_erase_row+0xb8>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
    15f0:	4a21      	ldr	r2, [pc, #132]	; (1678 <flash_erase_row+0xc0>)
    15f2:	4b21      	ldr	r3, [pc, #132]	; (1678 <flash_erase_row+0xc0>)
    15f4:	68db      	ldr	r3, [r3, #12]
    15f6:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    15fa:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PER;
    15fc:	4b1e      	ldr	r3, [pc, #120]	; (1678 <flash_erase_row+0xc0>)
    15fe:	2202      	movs	r2, #2
    1600:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
    1602:	4a1d      	ldr	r2, [pc, #116]	; (1678 <flash_erase_row+0xc0>)
    1604:	697b      	ldr	r3, [r7, #20]
    1606:	6153      	str	r3, [r2, #20]
	FLASH->CR|=FLASH_CR_STRT;
    1608:	4a1b      	ldr	r2, [pc, #108]	; (1678 <flash_erase_row+0xc0>)
    160a:	4b1b      	ldr	r3, [pc, #108]	; (1678 <flash_erase_row+0xc0>)
    160c:	691b      	ldr	r3, [r3, #16]
    160e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1612:	6113      	str	r3, [r2, #16]
	while (_flash_busy && ! _flash_eop);
    1614:	bf00      	nop
    1616:	4b18      	ldr	r3, [pc, #96]	; (1678 <flash_erase_row+0xc0>)
    1618:	68db      	ldr	r3, [r3, #12]
    161a:	f003 0301 	and.w	r3, r3, #1
    161e:	2b00      	cmp	r3, #0
    1620:	d005      	beq.n	162e <flash_erase_row+0x76>
    1622:	4b15      	ldr	r3, [pc, #84]	; (1678 <flash_erase_row+0xc0>)
    1624:	68db      	ldr	r3, [r3, #12]
    1626:	f003 0320 	and.w	r3, r3, #32
    162a:	2b00      	cmp	r3, #0
    162c:	d0f3      	beq.n	1616 <flash_erase_row+0x5e>
	addr=_row2addr(row_nbr);
    162e:	687b      	ldr	r3, [r7, #4]
    1630:	029b      	lsls	r3, r3, #10
    1632:	617b      	str	r3, [r7, #20]
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    1634:	2300      	movs	r3, #0
    1636:	60fb      	str	r3, [r7, #12]
    1638:	e00c      	b.n	1654 <flash_erase_row+0x9c>
		u16=*addr++;
    163a:	697b      	ldr	r3, [r7, #20]
    163c:	1c9a      	adds	r2, r3, #2
    163e:	617a      	str	r2, [r7, #20]
    1640:	881b      	ldrh	r3, [r3, #0]
    1642:	827b      	strh	r3, [r7, #18]
		if (u16!=FLASH_ERASED) break;
    1644:	8a7b      	ldrh	r3, [r7, #18]
    1646:	f64f 72ff 	movw	r2, #65535	; 0xffff
    164a:	4293      	cmp	r3, r2
    164c:	d107      	bne.n	165e <flash_erase_row+0xa6>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
    164e:	68fb      	ldr	r3, [r7, #12]
    1650:	3301      	adds	r3, #1
    1652:	60fb      	str	r3, [r7, #12]
    1654:	68fb      	ldr	r3, [r7, #12]
    1656:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    165a:	dbee      	blt.n	163a <flash_erase_row+0x82>
    165c:	e000      	b.n	1660 <flash_erase_row+0xa8>
		if (u16!=FLASH_ERASED) break;
    165e:	bf00      	nop
	}
	return u16==FLASH_ERASED;
    1660:	8a7b      	ldrh	r3, [r7, #18]
    1662:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1666:	4293      	cmp	r3, r2
    1668:	bf0c      	ite	eq
    166a:	2301      	moveq	r3, #1
    166c:	2300      	movne	r3, #0
    166e:	b2db      	uxtb	r3, r3
}
    1670:	4618      	mov	r0, r3
    1672:	3718      	adds	r7, #24
    1674:	46bd      	mov	sp, r7
    1676:	bd80      	pop	{r7, pc}
    1678:	40022000 	.word	0x40022000

0000167c <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
    167c:	b580      	push	{r7, lr}
    167e:	af00      	add	r7, sp, #0
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
    1680:	4b10      	ldr	r3, [pc, #64]	; (16c4 <flash_sync+0x48>)
    1682:	781b      	ldrb	r3, [r3, #0]
    1684:	f003 0301 	and.w	r3, r3, #1
    1688:	2b00      	cmp	r3, #0
    168a:	d017      	beq.n	16bc <flash_sync+0x40>
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
    168c:	4b0d      	ldr	r3, [pc, #52]	; (16c4 <flash_sync+0x48>)
    168e:	785b      	ldrb	r3, [r3, #1]
    1690:	4618      	mov	r0, r3
    1692:	f7ff ff91 	bl	15b8 <flash_erase_row>
    1696:	4603      	mov	r3, r0
    1698:	2b00      	cmp	r3, #0
    169a:	d00d      	beq.n	16b8 <flash_sync+0x3c>
    169c:	f7ff fef0 	bl	1480 <write_back_buffer>
    16a0:	4603      	mov	r3, r0
    16a2:	2b00      	cmp	r3, #0
    16a4:	d008      	beq.n	16b8 <flash_sync+0x3c>
			row_buff.flags&=~F_MODIFIED;
    16a6:	4b07      	ldr	r3, [pc, #28]	; (16c4 <flash_sync+0x48>)
    16a8:	781b      	ldrb	r3, [r3, #0]
    16aa:	f023 0301 	bic.w	r3, r3, #1
    16ae:	b2da      	uxtb	r2, r3
    16b0:	4b04      	ldr	r3, [pc, #16]	; (16c4 <flash_sync+0x48>)
    16b2:	701a      	strb	r2, [r3, #0]
			return 1;
    16b4:	2301      	movs	r3, #1
    16b6:	e002      	b.n	16be <flash_sync+0x42>
		}
		return 0;
    16b8:	2300      	movs	r3, #0
    16ba:	e000      	b.n	16be <flash_sync+0x42>
	}
	return 1;
    16bc:	2301      	movs	r3, #1
}
    16be:	4618      	mov	r0, r3
    16c0:	bd80      	pop	{r7, pc}
    16c2:	bf00      	nop
    16c4:	20000288 	.word	0x20000288

000016c8 <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
    16c8:	b480      	push	{r7}
    16ca:	af00      	add	r7, sp, #0
	row_buff.flags=0;
    16cc:	4b03      	ldr	r3, [pc, #12]	; (16dc <flash_flush+0x14>)
    16ce:	2200      	movs	r2, #0
    16d0:	701a      	strb	r2, [r3, #0]
}
    16d2:	bf00      	nop
    16d4:	46bd      	mov	sp, r7
    16d6:	bc80      	pop	{r7}
    16d8:	4770      	bx	lr
    16da:	bf00      	nop
    16dc:	20000288 	.word	0x20000288

000016e0 <flash_disable>:


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
    16e0:	b580      	push	{r7, lr}
    16e2:	af00      	add	r7, sp, #0
	flash_sync();
    16e4:	f7ff ffca 	bl	167c <flash_sync>
	row_buff.flags=0;
    16e8:	4b05      	ldr	r3, [pc, #20]	; (1700 <flash_disable+0x20>)
    16ea:	2200      	movs	r2, #0
    16ec:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
    16ee:	4a05      	ldr	r2, [pc, #20]	; (1704 <flash_disable+0x24>)
    16f0:	4b04      	ldr	r3, [pc, #16]	; (1704 <flash_disable+0x24>)
    16f2:	691b      	ldr	r3, [r3, #16]
    16f4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    16f8:	6113      	str	r3, [r2, #16]
}
    16fa:	bf00      	nop
    16fc:	bd80      	pop	{r7, pc}
    16fe:	bf00      	nop
    1700:	20000288 	.word	0x20000288
    1704:	40022000 	.word	0x40022000

00001708 <flash_write_byte>:
// l'écriture est faite dans le tampon 'row_buff.data'
// Si l'écriture doit-être faite dans un autre ligne que 
// celle qui est dans le tampon. la fonction flash_sync()
// est appellée suivie d'un load_row() avec le nouveau no. de ligne.

int flash_write_byte(uint8_t* address, BYTE b){
    1708:	b580      	push	{r7, lr}
    170a:	b084      	sub	sp, #16
    170c:	af00      	add	r7, sp, #0
    170e:	6078      	str	r0, [r7, #4]
    1710:	460b      	mov	r3, r1
    1712:	70fb      	strb	r3, [r7, #3]
	uint32_t offset, row;
	
	row=_addr2row(address);
    1714:	687b      	ldr	r3, [r7, #4]
    1716:	0a9b      	lsrs	r3, r3, #10
    1718:	60fb      	str	r3, [r7, #12]
	if (row<FIRST_WRITABLE_ROW) return 0;
    171a:	68fb      	ldr	r3, [r7, #12]
    171c:	2b3f      	cmp	r3, #63	; 0x3f
    171e:	d801      	bhi.n	1724 <flash_write_byte+0x1c>
    1720:	2300      	movs	r3, #0
    1722:	e021      	b.n	1768 <flash_write_byte+0x60>
	if (row!=row_buff.row){
    1724:	4b12      	ldr	r3, [pc, #72]	; (1770 <flash_write_byte+0x68>)
    1726:	785b      	ldrb	r3, [r3, #1]
    1728:	461a      	mov	r2, r3
    172a:	68fb      	ldr	r3, [r7, #12]
    172c:	429a      	cmp	r2, r3
    172e:	d009      	beq.n	1744 <flash_write_byte+0x3c>
		if (!flash_sync()) return 0;
    1730:	f7ff ffa4 	bl	167c <flash_sync>
    1734:	4603      	mov	r3, r0
    1736:	2b00      	cmp	r3, #0
    1738:	d101      	bne.n	173e <flash_write_byte+0x36>
    173a:	2300      	movs	r3, #0
    173c:	e014      	b.n	1768 <flash_write_byte+0x60>
		load_row(row);
    173e:	68f8      	ldr	r0, [r7, #12]
    1740:	f7ff fee2 	bl	1508 <load_row>
	}
	offset=(uint32_t)address&FLASH_ROW_MASK;
    1744:	687b      	ldr	r3, [r7, #4]
    1746:	f3c3 0309 	ubfx	r3, r3, #0, #10
    174a:	60bb      	str	r3, [r7, #8]
	row_buff.data[offset]=b;
    174c:	4a08      	ldr	r2, [pc, #32]	; (1770 <flash_write_byte+0x68>)
    174e:	68bb      	ldr	r3, [r7, #8]
    1750:	4413      	add	r3, r2
    1752:	3302      	adds	r3, #2
    1754:	78fa      	ldrb	r2, [r7, #3]
    1756:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_MODIFIED;
    1758:	4b05      	ldr	r3, [pc, #20]	; (1770 <flash_write_byte+0x68>)
    175a:	781b      	ldrb	r3, [r3, #0]
    175c:	f043 0301 	orr.w	r3, r3, #1
    1760:	b2da      	uxtb	r2, r3
    1762:	4b03      	ldr	r3, [pc, #12]	; (1770 <flash_write_byte+0x68>)
    1764:	701a      	strb	r2, [r3, #0]
	return 1;
    1766:	2301      	movs	r3, #1
}
    1768:	4618      	mov	r0, r3
    176a:	3710      	adds	r7, #16
    176c:	46bd      	mov	sp, r7
    176e:	bd80      	pop	{r7, pc}
    1770:	20000288 	.word	0x20000288

00001774 <flash_read_block>:
// arguments:
//		address,  adresse de début du bloc.
//		buffer,   tampon recevant les données.
//		size,     nombre d'octets à lire.

void flash_read_block(const uint8_t *address, uint8_t *buffer,int size){
    1774:	b590      	push	{r4, r7, lr}
    1776:	b087      	sub	sp, #28
    1778:	af00      	add	r7, sp, #0
    177a:	60f8      	str	r0, [r7, #12]
    177c:	60b9      	str	r1, [r7, #8]
    177e:	607a      	str	r2, [r7, #4]
	int i;
	for (i=0;i<size;i++){*buffer++=read_byte(address++);}
    1780:	2300      	movs	r3, #0
    1782:	617b      	str	r3, [r7, #20]
    1784:	e00d      	b.n	17a2 <flash_read_block+0x2e>
    1786:	68bc      	ldr	r4, [r7, #8]
    1788:	1c63      	adds	r3, r4, #1
    178a:	60bb      	str	r3, [r7, #8]
    178c:	68fb      	ldr	r3, [r7, #12]
    178e:	1c5a      	adds	r2, r3, #1
    1790:	60fa      	str	r2, [r7, #12]
    1792:	4618      	mov	r0, r3
    1794:	f7ff fe20 	bl	13d8 <read_byte>
    1798:	4603      	mov	r3, r0
    179a:	7023      	strb	r3, [r4, #0]
    179c:	697b      	ldr	r3, [r7, #20]
    179e:	3301      	adds	r3, #1
    17a0:	617b      	str	r3, [r7, #20]
    17a2:	697a      	ldr	r2, [r7, #20]
    17a4:	687b      	ldr	r3, [r7, #4]
    17a6:	429a      	cmp	r2, r3
    17a8:	dbed      	blt.n	1786 <flash_read_block+0x12>
}
    17aa:	bf00      	nop
    17ac:	371c      	adds	r7, #28
    17ae:	46bd      	mov	sp, r7
    17b0:	bd90      	pop	{r4, r7, pc}

000017b2 <flash_write_block>:
// est faite dans le tampon 'row_buff.data'.
//	arguments:
//		address  addresse flash de destination
//		buffer   données à écrire
//		size     nombre d'octets à écrire.
int flash_write_block(uint8_t *address, const uint8_t *buffer, int size){
    17b2:	b580      	push	{r7, lr}
    17b4:	b086      	sub	sp, #24
    17b6:	af00      	add	r7, sp, #0
    17b8:	60f8      	str	r0, [r7, #12]
    17ba:	60b9      	str	r1, [r7, #8]
    17bc:	607a      	str	r2, [r7, #4]
	int i;
	if ((void*)address<ffa) return 0;
    17be:	4b18      	ldr	r3, [pc, #96]	; (1820 <flash_write_block+0x6e>)
    17c0:	681b      	ldr	r3, [r3, #0]
    17c2:	461a      	mov	r2, r3
    17c4:	68fb      	ldr	r3, [r7, #12]
    17c6:	4293      	cmp	r3, r2
    17c8:	d201      	bcs.n	17ce <flash_write_block+0x1c>
    17ca:	2300      	movs	r3, #0
    17cc:	e023      	b.n	1816 <flash_write_block+0x64>
	if (!flash_enable()) return 0;	
    17ce:	f7ff fdcd 	bl	136c <flash_enable>
    17d2:	4603      	mov	r3, r0
    17d4:	2b00      	cmp	r3, #0
    17d6:	d101      	bne.n	17dc <flash_write_block+0x2a>
    17d8:	2300      	movs	r3, #0
    17da:	e01c      	b.n	1816 <flash_write_block+0x64>
	for (i=0;i<size;i++){
    17dc:	2300      	movs	r3, #0
    17de:	617b      	str	r3, [r7, #20]
    17e0:	e012      	b.n	1808 <flash_write_block+0x56>
		if (!flash_write_byte(address++,*buffer++)){
    17e2:	68fa      	ldr	r2, [r7, #12]
    17e4:	1c53      	adds	r3, r2, #1
    17e6:	60fb      	str	r3, [r7, #12]
    17e8:	68bb      	ldr	r3, [r7, #8]
    17ea:	1c59      	adds	r1, r3, #1
    17ec:	60b9      	str	r1, [r7, #8]
    17ee:	781b      	ldrb	r3, [r3, #0]
    17f0:	4619      	mov	r1, r3
    17f2:	4610      	mov	r0, r2
    17f4:	f7ff ff88 	bl	1708 <flash_write_byte>
    17f8:	4603      	mov	r3, r0
    17fa:	2b00      	cmp	r3, #0
    17fc:	d101      	bne.n	1802 <flash_write_block+0x50>
			return 0;
    17fe:	2300      	movs	r3, #0
    1800:	e009      	b.n	1816 <flash_write_block+0x64>
	for (i=0;i<size;i++){
    1802:	697b      	ldr	r3, [r7, #20]
    1804:	3301      	adds	r3, #1
    1806:	617b      	str	r3, [r7, #20]
    1808:	697a      	ldr	r2, [r7, #20]
    180a:	687b      	ldr	r3, [r7, #4]
    180c:	429a      	cmp	r2, r3
    180e:	dbe8      	blt.n	17e2 <flash_write_block+0x30>
		}
	}
	flash_disable();
    1810:	f7ff ff66 	bl	16e0 <flash_disable>
	return 1;
    1814:	2301      	movs	r3, #1
}
    1816:	4618      	mov	r0, r3
    1818:	3718      	adds	r7, #24
    181a:	46bd      	mov	sp, r7
    181c:	bd80      	pop	{r7, pc}
    181e:	bf00      	nop
    1820:	00005c00 	.word	0x00005c00

00001824 <btn_idx>:
// à partir de sont bitmask
// input:
//      mask masque binaire du bouton
// output:
//      idx  index dans la table
static uint8_t btn_idx(uint8_t mask){
    1824:	b480      	push	{r7}
    1826:	b085      	sub	sp, #20
    1828:	af00      	add	r7, sp, #0
    182a:	4603      	mov	r3, r0
    182c:	71fb      	strb	r3, [r7, #7]
    uint8_t idx=0;
    182e:	2300      	movs	r3, #0
    1830:	73fb      	strb	r3, [r7, #15]
    mask>>=1;
    1832:	79fb      	ldrb	r3, [r7, #7]
    1834:	085b      	lsrs	r3, r3, #1
    1836:	71fb      	strb	r3, [r7, #7]
    while(mask){idx++; mask>>=1;}
    1838:	e005      	b.n	1846 <btn_idx+0x22>
    183a:	7bfb      	ldrb	r3, [r7, #15]
    183c:	3301      	adds	r3, #1
    183e:	73fb      	strb	r3, [r7, #15]
    1840:	79fb      	ldrb	r3, [r7, #7]
    1842:	085b      	lsrs	r3, r3, #1
    1844:	71fb      	strb	r3, [r7, #7]
    1846:	79fb      	ldrb	r3, [r7, #7]
    1848:	2b00      	cmp	r3, #0
    184a:	d1f6      	bne.n	183a <btn_idx+0x16>
    return idx;
    184c:	7bfb      	ldrb	r3, [r7, #15]
}
    184e:	4618      	mov	r0, r3
    1850:	3714      	adds	r7, #20
    1852:	46bd      	mov	sp, r7
    1854:	bc80      	pop	{r7}
    1856:	4770      	bx	lr

00001858 <btn_mask>:
// retourne la mask du bouton à partir de sa valeur hexadécimal
// input:
//      btn_value   valeur hexadécimal du bouton inscrite dans la table buttons[]
// output:
//      mask   retourne le masque de bit, si trouvé dans la table sinon retourne 255.
static uint8_t btn_mask(uint8_t btn_value){
    1858:	b480      	push	{r7}
    185a:	b085      	sub	sp, #20
    185c:	af00      	add	r7, sp, #0
    185e:	4603      	mov	r3, r0
    1860:	71fb      	strb	r3, [r7, #7]
    int i;
    for (i=0;i<8;i++){
    1862:	2300      	movs	r3, #0
    1864:	60fb      	str	r3, [r7, #12]
    1866:	e00f      	b.n	1888 <btn_mask+0x30>
        if (buttons[i]==btn_value) return 1<<i;
    1868:	4a0c      	ldr	r2, [pc, #48]	; (189c <btn_mask+0x44>)
    186a:	68fb      	ldr	r3, [r7, #12]
    186c:	4413      	add	r3, r2
    186e:	781b      	ldrb	r3, [r3, #0]
    1870:	79fa      	ldrb	r2, [r7, #7]
    1872:	429a      	cmp	r2, r3
    1874:	d105      	bne.n	1882 <btn_mask+0x2a>
    1876:	2201      	movs	r2, #1
    1878:	68fb      	ldr	r3, [r7, #12]
    187a:	fa02 f303 	lsl.w	r3, r2, r3
    187e:	b2db      	uxtb	r3, r3
    1880:	e006      	b.n	1890 <btn_mask+0x38>
    for (i=0;i<8;i++){
    1882:	68fb      	ldr	r3, [r7, #12]
    1884:	3301      	adds	r3, #1
    1886:	60fb      	str	r3, [r7, #12]
    1888:	68fb      	ldr	r3, [r7, #12]
    188a:	2b07      	cmp	r3, #7
    188c:	ddec      	ble.n	1868 <btn_mask+0x10>
    }
    return 255;
    188e:	23ff      	movs	r3, #255	; 0xff
}
    1890:	4618      	mov	r0, r3
    1892:	3714      	adds	r7, #20
    1894:	46bd      	mov	sp, r7
    1896:	bc80      	pop	{r7}
    1898:	4770      	bx	lr
    189a:	bf00      	nop
    189c:	2000068c 	.word	0x2000068c

000018a0 <set_keymap>:

// set buttons map
void set_keymap(const uint8_t *kmap){
    18a0:	b480      	push	{r7}
    18a2:	b085      	sub	sp, #20
    18a4:	af00      	add	r7, sp, #0
    18a6:	6078      	str	r0, [r7, #4]
    int i;
    for (i=0;i<8;i++) buttons[i]=kmap[i];
    18a8:	2300      	movs	r3, #0
    18aa:	60fb      	str	r3, [r7, #12]
    18ac:	e00b      	b.n	18c6 <set_keymap+0x26>
    18ae:	68fb      	ldr	r3, [r7, #12]
    18b0:	687a      	ldr	r2, [r7, #4]
    18b2:	4413      	add	r3, r2
    18b4:	7819      	ldrb	r1, [r3, #0]
    18b6:	4a08      	ldr	r2, [pc, #32]	; (18d8 <set_keymap+0x38>)
    18b8:	68fb      	ldr	r3, [r7, #12]
    18ba:	4413      	add	r3, r2
    18bc:	460a      	mov	r2, r1
    18be:	701a      	strb	r2, [r3, #0]
    18c0:	68fb      	ldr	r3, [r7, #12]
    18c2:	3301      	adds	r3, #1
    18c4:	60fb      	str	r3, [r7, #12]
    18c6:	68fb      	ldr	r3, [r7, #12]
    18c8:	2b07      	cmp	r3, #7
    18ca:	ddf0      	ble.n	18ae <set_keymap+0xe>
}
    18cc:	bf00      	nop
    18ce:	3714      	adds	r7, #20
    18d0:	46bd      	mov	sp, r7
    18d2:	bc80      	pop	{r7}
    18d4:	4770      	bx	lr
    18d6:	bf00      	nop
    18d8:	2000068c 	.word	0x2000068c

000018dc <gamepad_init>:

// initialisation matérielle.
void gamepad_init(){
    18dc:	b580      	push	{r7, lr}
    18de:	af00      	add	r7, sp, #0
    config_pin(GAMEPAD_PORT,SEND_PIN,OUTPUT_PP_SLOW);
    18e0:	2202      	movs	r2, #2
    18e2:	210f      	movs	r1, #15
    18e4:	480a      	ldr	r0, [pc, #40]	; (1910 <gamepad_init+0x34>)
    18e6:	f000 fb93 	bl	2010 <config_pin>
    config_pin(GAMEPAD_PORT,CLK_PIN,OUTPUT_PP_SLOW);
    18ea:	2202      	movs	r2, #2
    18ec:	210d      	movs	r1, #13
    18ee:	4808      	ldr	r0, [pc, #32]	; (1910 <gamepad_init+0x34>)
    18f0:	f000 fb8e 	bl	2010 <config_pin>
    config_pin(GAMEPAD_PORT,RX_PIN,INPUT_PULL);
    18f4:	2208      	movs	r2, #8
    18f6:	210e      	movs	r1, #14
    18f8:	4805      	ldr	r0, [pc, #20]	; (1910 <gamepad_init+0x34>)
    18fa:	f000 fb89 	bl	2010 <config_pin>
    btn_state=0xff;
    18fe:	4b05      	ldr	r3, [pc, #20]	; (1914 <gamepad_init+0x38>)
    1900:	22ff      	movs	r2, #255	; 0xff
    1902:	701a      	strb	r2, [r3, #0]
    set_keymap(default_kmap);
    1904:	4804      	ldr	r0, [pc, #16]	; (1918 <gamepad_init+0x3c>)
    1906:	f7ff ffcb 	bl	18a0 <set_keymap>
}
    190a:	bf00      	nop
    190c:	bd80      	pop	{r7, pc}
    190e:	bf00      	nop
    1910:	40010c00 	.word	0x40010c00
    1914:	200026b4 	.word	0x200026b4
    1918:	00005950 	.word	0x00005950

0000191c <count_zeros>:

static int count_zeros(uint8_t u8){
    191c:	b480      	push	{r7}
    191e:	b085      	sub	sp, #20
    1920:	af00      	add	r7, sp, #0
    1922:	4603      	mov	r3, r0
    1924:	71fb      	strb	r3, [r7, #7]
    int count=0;
    1926:	2300      	movs	r3, #0
    1928:	60fb      	str	r3, [r7, #12]
    while (u8){
    192a:	e00a      	b.n	1942 <count_zeros+0x26>
        if (!(u8&1)) count++;
    192c:	79fb      	ldrb	r3, [r7, #7]
    192e:	f003 0301 	and.w	r3, r3, #1
    1932:	2b00      	cmp	r3, #0
    1934:	d102      	bne.n	193c <count_zeros+0x20>
    1936:	68fb      	ldr	r3, [r7, #12]
    1938:	3301      	adds	r3, #1
    193a:	60fb      	str	r3, [r7, #12]
        u8>>=1;
    193c:	79fb      	ldrb	r3, [r7, #7]
    193e:	085b      	lsrs	r3, r3, #1
    1940:	71fb      	strb	r3, [r7, #7]
    while (u8){
    1942:	79fb      	ldrb	r3, [r7, #7]
    1944:	2b00      	cmp	r3, #0
    1946:	d1f1      	bne.n	192c <count_zeros+0x10>
    }
    return count;
    1948:	68fb      	ldr	r3, [r7, #12]
}
    194a:	4618      	mov	r0, r3
    194c:	3714      	adds	r7, #20
    194e:	46bd      	mov	sp, r7
    1950:	bc80      	pop	{r7}
    1952:	4770      	bx	lr

00001954 <shift_out>:

static uint8_t shift_out(uint8_t byte){
    1954:	b480      	push	{r7}
    1956:	b085      	sub	sp, #20
    1958:	af00      	add	r7, sp, #0
    195a:	4603      	mov	r3, r0
    195c:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=1,rx_byte=0;
    195e:	2301      	movs	r3, #1
    1960:	73fb      	strb	r3, [r7, #15]
    1962:	2300      	movs	r3, #0
    1964:	73bb      	strb	r3, [r7, #14]

#define _clk_delay()  asm volatile("nop\n\tnop\n\tnop\n\t")

    while (mask){
    1966:	e033      	b.n	19d0 <shift_out+0x7c>
        if (byte&mask){
    1968:	79fa      	ldrb	r2, [r7, #7]
    196a:	7bfb      	ldrb	r3, [r7, #15]
    196c:	4013      	ands	r3, r2
    196e:	b2db      	uxtb	r3, r3
    1970:	2b00      	cmp	r3, #0
    1972:	d006      	beq.n	1982 <shift_out+0x2e>
            GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    1974:	4a25      	ldr	r2, [pc, #148]	; (1a0c <shift_out+0xb8>)
    1976:	4b25      	ldr	r3, [pc, #148]	; (1a0c <shift_out+0xb8>)
    1978:	68db      	ldr	r3, [r3, #12]
    197a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    197e:	60d3      	str	r3, [r2, #12]
    1980:	e005      	b.n	198e <shift_out+0x3a>
        }else{
            GAMEPAD_PORT->ODR&=~(1<<SEND_PIN);
    1982:	4a22      	ldr	r2, [pc, #136]	; (1a0c <shift_out+0xb8>)
    1984:	4b21      	ldr	r3, [pc, #132]	; (1a0c <shift_out+0xb8>)
    1986:	68db      	ldr	r3, [r3, #12]
    1988:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    198c:	60d3      	str	r3, [r2, #12]
        }
        GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    198e:	4a1f      	ldr	r2, [pc, #124]	; (1a0c <shift_out+0xb8>)
    1990:	4b1e      	ldr	r3, [pc, #120]	; (1a0c <shift_out+0xb8>)
    1992:	68db      	ldr	r3, [r3, #12]
    1994:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1998:	60d3      	str	r3, [r2, #12]
        _clk_delay();
    199a:	bf00      	nop
    199c:	bf00      	nop
    199e:	bf00      	nop
        GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    19a0:	4a1a      	ldr	r2, [pc, #104]	; (1a0c <shift_out+0xb8>)
    19a2:	4b1a      	ldr	r3, [pc, #104]	; (1a0c <shift_out+0xb8>)
    19a4:	68db      	ldr	r3, [r3, #12]
    19a6:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    19aa:	60d3      	str	r3, [r2, #12]
        rx_byte>>=1;
    19ac:	7bbb      	ldrb	r3, [r7, #14]
    19ae:	085b      	lsrs	r3, r3, #1
    19b0:	73bb      	strb	r3, [r7, #14]
        if (GAMEPAD_PORT->IDR&=(1<<RX_PIN)) rx_byte|=128;    
    19b2:	4a16      	ldr	r2, [pc, #88]	; (1a0c <shift_out+0xb8>)
    19b4:	4b15      	ldr	r3, [pc, #84]	; (1a0c <shift_out+0xb8>)
    19b6:	689b      	ldr	r3, [r3, #8]
    19b8:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    19bc:	6093      	str	r3, [r2, #8]
    19be:	2b00      	cmp	r3, #0
    19c0:	d003      	beq.n	19ca <shift_out+0x76>
    19c2:	7bbb      	ldrb	r3, [r7, #14]
    19c4:	f063 037f 	orn	r3, r3, #127	; 0x7f
    19c8:	73bb      	strb	r3, [r7, #14]
        mask<<=1;
    19ca:	7bfb      	ldrb	r3, [r7, #15]
    19cc:	005b      	lsls	r3, r3, #1
    19ce:	73fb      	strb	r3, [r7, #15]
    while (mask){
    19d0:	7bfb      	ldrb	r3, [r7, #15]
    19d2:	2b00      	cmp	r3, #0
    19d4:	d1c8      	bne.n	1968 <shift_out+0x14>
    }
    GAMEPAD_PORT->ODR|=(1<<SEND_PIN);
    19d6:	4a0d      	ldr	r2, [pc, #52]	; (1a0c <shift_out+0xb8>)
    19d8:	4b0c      	ldr	r3, [pc, #48]	; (1a0c <shift_out+0xb8>)
    19da:	68db      	ldr	r3, [r3, #12]
    19dc:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    19e0:	60d3      	str	r3, [r2, #12]
    GAMEPAD_PORT->ODR|=(1<<CLK_PIN);
    19e2:	4a0a      	ldr	r2, [pc, #40]	; (1a0c <shift_out+0xb8>)
    19e4:	4b09      	ldr	r3, [pc, #36]	; (1a0c <shift_out+0xb8>)
    19e6:	68db      	ldr	r3, [r3, #12]
    19e8:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    19ec:	60d3      	str	r3, [r2, #12]
    _clk_delay();
    19ee:	bf00      	nop
    19f0:	bf00      	nop
    19f2:	bf00      	nop
    GAMEPAD_PORT->ODR&=~(1<<CLK_PIN);
    19f4:	4a05      	ldr	r2, [pc, #20]	; (1a0c <shift_out+0xb8>)
    19f6:	4b05      	ldr	r3, [pc, #20]	; (1a0c <shift_out+0xb8>)
    19f8:	68db      	ldr	r3, [r3, #12]
    19fa:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    19fe:	60d3      	str	r3, [r2, #12]
    return rx_byte;
    1a00:	7bbb      	ldrb	r3, [r7, #14]
}
    1a02:	4618      	mov	r0, r3
    1a04:	3714      	adds	r7, #20
    1a06:	46bd      	mov	sp, r7
    1a08:	bc80      	pop	{r7}
    1a0a:	4770      	bx	lr
    1a0c:	40010c00 	.word	0x40010c00

00001a10 <read_gamepad>:

// lecture du gamepad
// cette fonction est appellée
// à partir de TV_SYNC_handler()
void read_gamepad(){
    1a10:	b580      	push	{r7, lr}
    1a12:	af00      	add	r7, sp, #0
    btn_state=shift_out(0xfe);
    1a14:	20fe      	movs	r0, #254	; 0xfe
    1a16:	f7ff ff9d 	bl	1954 <shift_out>
    1a1a:	4603      	mov	r3, r0
    1a1c:	461a      	mov	r2, r3
    1a1e:	4b07      	ldr	r3, [pc, #28]	; (1a3c <read_gamepad+0x2c>)
    1a20:	701a      	strb	r2, [r3, #0]
    if ((btn_state&(BTN_RIGHT_MASK|BTN_C_MASK))==0)_reset_mcu();
    1a22:	4b06      	ldr	r3, [pc, #24]	; (1a3c <read_gamepad+0x2c>)
    1a24:	781b      	ldrb	r3, [r3, #0]
    1a26:	b2db      	uxtb	r3, r3
    1a28:	f003 0312 	and.w	r3, r3, #18
    1a2c:	2b00      	cmp	r3, #0
    1a2e:	d102      	bne.n	1a36 <read_gamepad+0x26>
    1a30:	4b03      	ldr	r3, [pc, #12]	; (1a40 <read_gamepad+0x30>)
    1a32:	4a04      	ldr	r2, [pc, #16]	; (1a44 <read_gamepad+0x34>)
    1a34:	601a      	str	r2, [r3, #0]
}
    1a36:	bf00      	nop
    1a38:	bd80      	pop	{r7, pc}
    1a3a:	bf00      	nop
    1a3c:	200026b4 	.word	0x200026b4
    1a40:	e000ed0c 	.word	0xe000ed0c
    1a44:	05fa0004 	.word	0x05fa0004

00001a48 <btn_query_down>:
// véririfie si le bouton est enfoncé.
// input:
//    button  bouton à vérifier.
//  output:
//      1->bouton enfoncé, 0->relâché.
int btn_query_down(uint8_t btn){
    1a48:	b580      	push	{r7, lr}
    1a4a:	b084      	sub	sp, #16
    1a4c:	af00      	add	r7, sp, #0
    1a4e:	4603      	mov	r3, r0
    1a50:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1a52:	79fb      	ldrb	r3, [r7, #7]
    1a54:	4618      	mov	r0, r3
    1a56:	f7ff feff 	bl	1858 <btn_mask>
    1a5a:	4603      	mov	r3, r0
    1a5c:	73fb      	strb	r3, [r7, #15]
    return !(btn_state&mask);
    1a5e:	4b07      	ldr	r3, [pc, #28]	; (1a7c <btn_query_down+0x34>)
    1a60:	781b      	ldrb	r3, [r3, #0]
    1a62:	b2da      	uxtb	r2, r3
    1a64:	7bfb      	ldrb	r3, [r7, #15]
    1a66:	4013      	ands	r3, r2
    1a68:	b2db      	uxtb	r3, r3
    1a6a:	2b00      	cmp	r3, #0
    1a6c:	bf0c      	ite	eq
    1a6e:	2301      	moveq	r3, #1
    1a70:	2300      	movne	r3, #0
    1a72:	b2db      	uxtb	r3, r3
}
    1a74:	4618      	mov	r0, r3
    1a76:	3710      	adds	r7, #16
    1a78:	46bd      	mov	sp, r7
    1a7a:	bd80      	pop	{r7, pc}
    1a7c:	200026b4 	.word	0x200026b4

00001a80 <btn_wait_down>:
// demeuré enfoncé pour 3 frames vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_down(uint8_t btn){
    1a80:	b580      	push	{r7, lr}
    1a82:	b084      	sub	sp, #16
    1a84:	af00      	add	r7, sp, #0
    1a86:	4603      	mov	r3, r0
    1a88:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1a8a:	79fb      	ldrb	r3, [r7, #7]
    1a8c:	4618      	mov	r0, r3
    1a8e:	f7ff fee3 	bl	1858 <btn_mask>
    1a92:	4603      	mov	r3, r0
    1a94:	72fb      	strb	r3, [r7, #11]
    int frame_count=0;
    1a96:	2300      	movs	r3, #0
    1a98:	60fb      	str	r3, [r7, #12]
    while (frame_count<4){
    1a9a:	e00f      	b.n	1abc <btn_wait_down+0x3c>
        frame_sync();
    1a9c:	f003 fc40 	bl	5320 <frame_sync>
        if (!(btn_state&mask)){
    1aa0:	4b0a      	ldr	r3, [pc, #40]	; (1acc <btn_wait_down+0x4c>)
    1aa2:	781b      	ldrb	r3, [r3, #0]
    1aa4:	b2da      	uxtb	r2, r3
    1aa6:	7afb      	ldrb	r3, [r7, #11]
    1aa8:	4013      	ands	r3, r2
    1aaa:	b2db      	uxtb	r3, r3
    1aac:	2b00      	cmp	r3, #0
    1aae:	d103      	bne.n	1ab8 <btn_wait_down+0x38>
            frame_count++;
    1ab0:	68fb      	ldr	r3, [r7, #12]
    1ab2:	3301      	adds	r3, #1
    1ab4:	60fb      	str	r3, [r7, #12]
    1ab6:	e001      	b.n	1abc <btn_wait_down+0x3c>
        }else{
            frame_count=0;
    1ab8:	2300      	movs	r3, #0
    1aba:	60fb      	str	r3, [r7, #12]
    while (frame_count<4){
    1abc:	68fb      	ldr	r3, [r7, #12]
    1abe:	2b03      	cmp	r3, #3
    1ac0:	ddec      	ble.n	1a9c <btn_wait_down+0x1c>
        }
    }
}
    1ac2:	bf00      	nop
    1ac4:	3710      	adds	r7, #16
    1ac6:	46bd      	mov	sp, r7
    1ac8:	bd80      	pop	{r7, pc}
    1aca:	bf00      	nop
    1acc:	200026b4 	.word	0x200026b4

00001ad0 <btn_wait_up>:
//  bouton doit-être relâché 3 frame vidéo consécutifs.
//  input:
//      button  le bouton à vérifier
//  output:
//      
void btn_wait_up(uint8_t btn){
    1ad0:	b580      	push	{r7, lr}
    1ad2:	b084      	sub	sp, #16
    1ad4:	af00      	add	r7, sp, #0
    1ad6:	4603      	mov	r3, r0
    1ad8:	71fb      	strb	r3, [r7, #7]
    uint8_t mask=btn_mask(btn);
    1ada:	79fb      	ldrb	r3, [r7, #7]
    1adc:	4618      	mov	r0, r3
    1ade:	f7ff febb 	bl	1858 <btn_mask>
    1ae2:	4603      	mov	r3, r0
    1ae4:	72fb      	strb	r3, [r7, #11]
    int frame_count=0;
    1ae6:	2300      	movs	r3, #0
    1ae8:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1aea:	e00f      	b.n	1b0c <btn_wait_up+0x3c>
        frame_sync();
    1aec:	f003 fc18 	bl	5320 <frame_sync>
        if ((btn_state&mask)){
    1af0:	4b0a      	ldr	r3, [pc, #40]	; (1b1c <btn_wait_up+0x4c>)
    1af2:	781b      	ldrb	r3, [r3, #0]
    1af4:	b2da      	uxtb	r2, r3
    1af6:	7afb      	ldrb	r3, [r7, #11]
    1af8:	4013      	ands	r3, r2
    1afa:	b2db      	uxtb	r3, r3
    1afc:	2b00      	cmp	r3, #0
    1afe:	d003      	beq.n	1b08 <btn_wait_up+0x38>
            frame_count++;
    1b00:	68fb      	ldr	r3, [r7, #12]
    1b02:	3301      	adds	r3, #1
    1b04:	60fb      	str	r3, [r7, #12]
    1b06:	e001      	b.n	1b0c <btn_wait_up+0x3c>
        }else{
            frame_count=0;
    1b08:	2300      	movs	r3, #0
    1b0a:	60fb      	str	r3, [r7, #12]
    while (frame_count<3){
    1b0c:	68fb      	ldr	r3, [r7, #12]
    1b0e:	2b02      	cmp	r3, #2
    1b10:	ddec      	ble.n	1aec <btn_wait_up+0x1c>
        }
    }
}
    1b12:	bf00      	nop
    1b14:	3710      	adds	r7, #16
    1b16:	46bd      	mov	sp, r7
    1b18:	bd80      	pop	{r7, pc}
    1b1a:	bf00      	nop
    1b1c:	200026b4 	.word	0x200026b4

00001b20 <btn_wait_any>:
// le demeuré pour 3 frame vidéo consécutif.
//  input:
//  
//  output:
//      État de tous les boutons, bit à 0->relâché, bit à 1->enfoncé
uint8_t btn_wait_any(){
    1b20:	b580      	push	{r7, lr}
    1b22:	b082      	sub	sp, #8
    1b24:	af00      	add	r7, sp, #0
    uint8_t last_state=btn_state;
    1b26:	4b16      	ldr	r3, [pc, #88]	; (1b80 <btn_wait_any+0x60>)
    1b28:	781b      	ldrb	r3, [r3, #0]
    1b2a:	71fb      	strb	r3, [r7, #7]
    int frame_count=0;
    1b2c:	2300      	movs	r3, #0
    1b2e:	603b      	str	r3, [r7, #0]
    while (frame_count<3){
    1b30:	e015      	b.n	1b5e <btn_wait_any+0x3e>
        frame_sync();
    1b32:	f003 fbf5 	bl	5320 <frame_sync>
        if (last_state!=btn_state){
    1b36:	4b12      	ldr	r3, [pc, #72]	; (1b80 <btn_wait_any+0x60>)
    1b38:	781b      	ldrb	r3, [r3, #0]
    1b3a:	b2db      	uxtb	r3, r3
    1b3c:	79fa      	ldrb	r2, [r7, #7]
    1b3e:	429a      	cmp	r2, r3
    1b40:	d005      	beq.n	1b4e <btn_wait_any+0x2e>
            frame_count=0;
    1b42:	2300      	movs	r3, #0
    1b44:	603b      	str	r3, [r7, #0]
            last_state=btn_state;
    1b46:	4b0e      	ldr	r3, [pc, #56]	; (1b80 <btn_wait_any+0x60>)
    1b48:	781b      	ldrb	r3, [r3, #0]
    1b4a:	71fb      	strb	r3, [r7, #7]
    1b4c:	e007      	b.n	1b5e <btn_wait_any+0x3e>
        }else if(btn_state!=0xff){
    1b4e:	4b0c      	ldr	r3, [pc, #48]	; (1b80 <btn_wait_any+0x60>)
    1b50:	781b      	ldrb	r3, [r3, #0]
    1b52:	b2db      	uxtb	r3, r3
    1b54:	2bff      	cmp	r3, #255	; 0xff
    1b56:	d002      	beq.n	1b5e <btn_wait_any+0x3e>
            frame_count++;
    1b58:	683b      	ldr	r3, [r7, #0]
    1b5a:	3301      	adds	r3, #1
    1b5c:	603b      	str	r3, [r7, #0]
    while (frame_count<3){
    1b5e:	683b      	ldr	r3, [r7, #0]
    1b60:	2b02      	cmp	r3, #2
    1b62:	dde6      	ble.n	1b32 <btn_wait_any+0x12>
        }       
    }
    return buttons[btn_idx(last_state^0xff)];
    1b64:	79fb      	ldrb	r3, [r7, #7]
    1b66:	43db      	mvns	r3, r3
    1b68:	b2db      	uxtb	r3, r3
    1b6a:	4618      	mov	r0, r3
    1b6c:	f7ff fe5a 	bl	1824 <btn_idx>
    1b70:	4603      	mov	r3, r0
    1b72:	461a      	mov	r2, r3
    1b74:	4b03      	ldr	r3, [pc, #12]	; (1b84 <btn_wait_any+0x64>)
    1b76:	5c9b      	ldrb	r3, [r3, r2]
}
    1b78:	4618      	mov	r0, r3
    1b7a:	3708      	adds	r7, #8
    1b7c:	46bd      	mov	sp, r7
    1b7e:	bd80      	pop	{r7, pc}
    1b80:	200026b4 	.word	0x200026b4
    1b84:	2000068c 	.word	0x2000068c

00001b88 <btn_set_value>:

// modifie la transcription d'un bouton
// input:
//      btn   index dans la table {0..7}
void btn_set_value(uint8_t idx,uint8_t value){
    1b88:	b480      	push	{r7}
    1b8a:	b083      	sub	sp, #12
    1b8c:	af00      	add	r7, sp, #0
    1b8e:	4603      	mov	r3, r0
    1b90:	460a      	mov	r2, r1
    1b92:	71fb      	strb	r3, [r7, #7]
    1b94:	4613      	mov	r3, r2
    1b96:	71bb      	strb	r3, [r7, #6]
    buttons[idx]=value;
    1b98:	79fb      	ldrb	r3, [r7, #7]
    1b9a:	4904      	ldr	r1, [pc, #16]	; (1bac <btn_set_value+0x24>)
    1b9c:	79ba      	ldrb	r2, [r7, #6]
    1b9e:	54ca      	strb	r2, [r1, r3]
}
    1ba0:	bf00      	nop
    1ba2:	370c      	adds	r7, #12
    1ba4:	46bd      	mov	sp, r7
    1ba6:	bc80      	pop	{r7}
    1ba8:	4770      	bx	lr
    1baa:	bf00      	nop
    1bac:	2000068c 	.word	0x2000068c

00001bb0 <get_keymap>:

// retourne la table buttons
uint8_t* get_keymap(){
    1bb0:	b480      	push	{r7}
    1bb2:	af00      	add	r7, sp, #0
    return buttons;
    1bb4:	4b02      	ldr	r3, [pc, #8]	; (1bc0 <get_keymap+0x10>)
}
    1bb6:	4618      	mov	r0, r3
    1bb8:	46bd      	mov	sp, r7
    1bba:	bc80      	pop	{r7}
    1bbc:	4770      	bx	lr
    1bbe:	bf00      	nop
    1bc0:	2000068c 	.word	0x2000068c

00001bc4 <games_count>:
    {VM_SCHIP,"spacefig",SPACEFIG_SIZE,spacefig,default_kmap},
    {0,"",0,NULL}
};


unsigned games_count(){
    1bc4:	b480      	push	{r7}
    1bc6:	b083      	sub	sp, #12
    1bc8:	af00      	add	r7, sp, #0
    unsigned i;
    for (i=0;;i++){
    1bca:	2300      	movs	r3, #0
    1bcc:	607b      	str	r3, [r7, #4]
        if (!games_list[i].size) break;
    1bce:	490b      	ldr	r1, [pc, #44]	; (1bfc <games_count+0x38>)
    1bd0:	687a      	ldr	r2, [r7, #4]
    1bd2:	4613      	mov	r3, r2
    1bd4:	00db      	lsls	r3, r3, #3
    1bd6:	1a9b      	subs	r3, r3, r2
    1bd8:	009b      	lsls	r3, r3, #2
    1bda:	440b      	add	r3, r1
    1bdc:	3310      	adds	r3, #16
    1bde:	681b      	ldr	r3, [r3, #0]
    1be0:	2b00      	cmp	r3, #0
    1be2:	d003      	beq.n	1bec <games_count+0x28>
    for (i=0;;i++){
    1be4:	687b      	ldr	r3, [r7, #4]
    1be6:	3301      	adds	r3, #1
    1be8:	607b      	str	r3, [r7, #4]
        if (!games_list[i].size) break;
    1bea:	e7f0      	b.n	1bce <games_count+0xa>
    1bec:	bf00      	nop
    }
    return i;
    1bee:	687b      	ldr	r3, [r7, #4]
}
    1bf0:	4618      	mov	r0, r3
    1bf2:	370c      	adds	r7, #12
    1bf4:	46bd      	mov	sp, r7
    1bf6:	bc80      	pop	{r7}
    1bf8:	4770      	bx	lr
    1bfa:	bf00      	nop
    1bfc:	20000008 	.word	0x20000008

00001c00 <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    1c00:	b480      	push	{r7}
    1c02:	b085      	sub	sp, #20
    1c04:	af00      	add	r7, sp, #0
    1c06:	6078      	str	r0, [r7, #4]
    1c08:	6039      	str	r1, [r7, #0]
	int result=0;
    1c0a:	2300      	movs	r3, #0
    1c0c:	60fb      	str	r3, [r7, #12]
	while (*s1 && *s2){
    1c0e:	e018      	b.n	1c42 <strcmp+0x42>
		if (*s1<*s2){
    1c10:	687b      	ldr	r3, [r7, #4]
    1c12:	781a      	ldrb	r2, [r3, #0]
    1c14:	683b      	ldr	r3, [r7, #0]
    1c16:	781b      	ldrb	r3, [r3, #0]
    1c18:	429a      	cmp	r2, r3
    1c1a:	d203      	bcs.n	1c24 <strcmp+0x24>
			result=-1;
    1c1c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1c20:	60fb      	str	r3, [r7, #12]
			break;
    1c22:	e016      	b.n	1c52 <strcmp+0x52>
		}else if (*s1>*s2){
    1c24:	687b      	ldr	r3, [r7, #4]
    1c26:	781a      	ldrb	r2, [r3, #0]
    1c28:	683b      	ldr	r3, [r7, #0]
    1c2a:	781b      	ldrb	r3, [r3, #0]
    1c2c:	429a      	cmp	r2, r3
    1c2e:	d902      	bls.n	1c36 <strcmp+0x36>
			result=1;
    1c30:	2301      	movs	r3, #1
    1c32:	60fb      	str	r3, [r7, #12]
			break;
    1c34:	e00d      	b.n	1c52 <strcmp+0x52>
		}
		s1++;
    1c36:	687b      	ldr	r3, [r7, #4]
    1c38:	3301      	adds	r3, #1
    1c3a:	607b      	str	r3, [r7, #4]
		s2++;
    1c3c:	683b      	ldr	r3, [r7, #0]
    1c3e:	3301      	adds	r3, #1
    1c40:	603b      	str	r3, [r7, #0]
	while (*s1 && *s2){
    1c42:	687b      	ldr	r3, [r7, #4]
    1c44:	781b      	ldrb	r3, [r3, #0]
    1c46:	2b00      	cmp	r3, #0
    1c48:	d003      	beq.n	1c52 <strcmp+0x52>
    1c4a:	683b      	ldr	r3, [r7, #0]
    1c4c:	781b      	ldrb	r3, [r3, #0]
    1c4e:	2b00      	cmp	r3, #0
    1c50:	d1de      	bne.n	1c10 <strcmp+0x10>
	}
	if (!result){
    1c52:	68fb      	ldr	r3, [r7, #12]
    1c54:	2b00      	cmp	r3, #0
    1c56:	d115      	bne.n	1c84 <strcmp+0x84>
		if (!*s1 && *s2){
    1c58:	687b      	ldr	r3, [r7, #4]
    1c5a:	781b      	ldrb	r3, [r3, #0]
    1c5c:	2b00      	cmp	r3, #0
    1c5e:	d107      	bne.n	1c70 <strcmp+0x70>
    1c60:	683b      	ldr	r3, [r7, #0]
    1c62:	781b      	ldrb	r3, [r3, #0]
    1c64:	2b00      	cmp	r3, #0
    1c66:	d003      	beq.n	1c70 <strcmp+0x70>
			result=-1;
    1c68:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1c6c:	60fb      	str	r3, [r7, #12]
    1c6e:	e009      	b.n	1c84 <strcmp+0x84>
		}else if (*s1 && !*s2) {
    1c70:	687b      	ldr	r3, [r7, #4]
    1c72:	781b      	ldrb	r3, [r3, #0]
    1c74:	2b00      	cmp	r3, #0
    1c76:	d005      	beq.n	1c84 <strcmp+0x84>
    1c78:	683b      	ldr	r3, [r7, #0]
    1c7a:	781b      	ldrb	r3, [r3, #0]
    1c7c:	2b00      	cmp	r3, #0
    1c7e:	d101      	bne.n	1c84 <strcmp+0x84>
			result=1;
    1c80:	2301      	movs	r3, #1
    1c82:	60fb      	str	r3, [r7, #12]
		}
	}
	return result;
    1c84:	68fb      	ldr	r3, [r7, #12]
}
    1c86:	4618      	mov	r0, r3
    1c88:	3714      	adds	r7, #20
    1c8a:	46bd      	mov	sp, r7
    1c8c:	bc80      	pop	{r7}
    1c8e:	4770      	bx	lr

00001c90 <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
    1c90:	b480      	push	{r7}
    1c92:	b083      	sub	sp, #12
    1c94:	af00      	add	r7, sp, #0
    1c96:	4603      	mov	r3, r0
    1c98:	71fb      	strb	r3, [r7, #7]
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1c9a:	79fb      	ldrb	r3, [r7, #7]
    1c9c:	2b60      	cmp	r3, #96	; 0x60
    1c9e:	d902      	bls.n	1ca6 <alpha+0x16>
    1ca0:	79fb      	ldrb	r3, [r7, #7]
    1ca2:	2b7a      	cmp	r3, #122	; 0x7a
    1ca4:	d905      	bls.n	1cb2 <alpha+0x22>
    1ca6:	79fb      	ldrb	r3, [r7, #7]
    1ca8:	2b40      	cmp	r3, #64	; 0x40
    1caa:	d904      	bls.n	1cb6 <alpha+0x26>
    1cac:	79fb      	ldrb	r3, [r7, #7]
    1cae:	2b5a      	cmp	r3, #90	; 0x5a
    1cb0:	d801      	bhi.n	1cb6 <alpha+0x26>
    1cb2:	2301      	movs	r3, #1
    1cb4:	e000      	b.n	1cb8 <alpha+0x28>
    1cb6:	2300      	movs	r3, #0
}
    1cb8:	4618      	mov	r0, r3
    1cba:	370c      	adds	r7, #12
    1cbc:	46bd      	mov	sp, r7
    1cbe:	bc80      	pop	{r7}
    1cc0:	4770      	bx	lr

00001cc2 <digit>:

int digit(char c){
    1cc2:	b480      	push	{r7}
    1cc4:	b083      	sub	sp, #12
    1cc6:	af00      	add	r7, sp, #0
    1cc8:	4603      	mov	r3, r0
    1cca:	71fb      	strb	r3, [r7, #7]
   return ((c>='0') && (c<='9'));
    1ccc:	79fb      	ldrb	r3, [r7, #7]
    1cce:	2b2f      	cmp	r3, #47	; 0x2f
    1cd0:	d904      	bls.n	1cdc <digit+0x1a>
    1cd2:	79fb      	ldrb	r3, [r7, #7]
    1cd4:	2b39      	cmp	r3, #57	; 0x39
    1cd6:	d801      	bhi.n	1cdc <digit+0x1a>
    1cd8:	2301      	movs	r3, #1
    1cda:	e000      	b.n	1cde <digit+0x1c>
    1cdc:	2300      	movs	r3, #0
}
    1cde:	4618      	mov	r0, r3
    1ce0:	370c      	adds	r7, #12
    1ce2:	46bd      	mov	sp, r7
    1ce4:	bc80      	pop	{r7}
    1ce6:	4770      	bx	lr

00001ce8 <hexdigit>:

int hexdigit(char c){
    1ce8:	b580      	push	{r7, lr}
    1cea:	b082      	sub	sp, #8
    1cec:	af00      	add	r7, sp, #0
    1cee:	4603      	mov	r3, r0
    1cf0:	71fb      	strb	r3, [r7, #7]
	if (c>='a') c-=32;
    1cf2:	79fb      	ldrb	r3, [r7, #7]
    1cf4:	2b60      	cmp	r3, #96	; 0x60
    1cf6:	d902      	bls.n	1cfe <hexdigit+0x16>
    1cf8:	79fb      	ldrb	r3, [r7, #7]
    1cfa:	3b20      	subs	r3, #32
    1cfc:	71fb      	strb	r3, [r7, #7]
	return (digit(c) || (c>='A' && c<='F'));
    1cfe:	79fb      	ldrb	r3, [r7, #7]
    1d00:	4618      	mov	r0, r3
    1d02:	f7ff ffde 	bl	1cc2 <digit>
    1d06:	4603      	mov	r3, r0
    1d08:	2b00      	cmp	r3, #0
    1d0a:	d105      	bne.n	1d18 <hexdigit+0x30>
    1d0c:	79fb      	ldrb	r3, [r7, #7]
    1d0e:	2b40      	cmp	r3, #64	; 0x40
    1d10:	d904      	bls.n	1d1c <hexdigit+0x34>
    1d12:	79fb      	ldrb	r3, [r7, #7]
    1d14:	2b46      	cmp	r3, #70	; 0x46
    1d16:	d801      	bhi.n	1d1c <hexdigit+0x34>
    1d18:	2301      	movs	r3, #1
    1d1a:	e000      	b.n	1d1e <hexdigit+0x36>
    1d1c:	2300      	movs	r3, #0
}
    1d1e:	4618      	mov	r0, r3
    1d20:	3708      	adds	r7, #8
    1d22:	46bd      	mov	sp, r7
    1d24:	bd80      	pop	{r7, pc}

00001d26 <atoi>:

int atoi(const char *str){
    1d26:	b580      	push	{r7, lr}
    1d28:	b086      	sub	sp, #24
    1d2a:	af00      	add	r7, sp, #0
    1d2c:	6078      	str	r0, [r7, #4]
	int n=0,sign=1,base=10;
    1d2e:	2300      	movs	r3, #0
    1d30:	617b      	str	r3, [r7, #20]
    1d32:	2301      	movs	r3, #1
    1d34:	613b      	str	r3, [r7, #16]
    1d36:	230a      	movs	r3, #10
    1d38:	60fb      	str	r3, [r7, #12]
    char c;
    
	while (*str && (*str==SPACE)) str++;
    1d3a:	e002      	b.n	1d42 <atoi+0x1c>
    1d3c:	687b      	ldr	r3, [r7, #4]
    1d3e:	3301      	adds	r3, #1
    1d40:	607b      	str	r3, [r7, #4]
    1d42:	687b      	ldr	r3, [r7, #4]
    1d44:	781b      	ldrb	r3, [r3, #0]
    1d46:	2b00      	cmp	r3, #0
    1d48:	d003      	beq.n	1d52 <atoi+0x2c>
    1d4a:	687b      	ldr	r3, [r7, #4]
    1d4c:	781b      	ldrb	r3, [r3, #0]
    1d4e:	2b20      	cmp	r3, #32
    1d50:	d0f4      	beq.n	1d3c <atoi+0x16>
	if (*str=='-'){
    1d52:	687b      	ldr	r3, [r7, #4]
    1d54:	781b      	ldrb	r3, [r3, #0]
    1d56:	2b2d      	cmp	r3, #45	; 0x2d
    1d58:	d105      	bne.n	1d66 <atoi+0x40>
		sign=-1;
    1d5a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1d5e:	613b      	str	r3, [r7, #16]
		str++;
    1d60:	687b      	ldr	r3, [r7, #4]
    1d62:	3301      	adds	r3, #1
    1d64:	607b      	str	r3, [r7, #4]
	}
	if (*str=='$' && hexdigit(*(str+1))){
    1d66:	687b      	ldr	r3, [r7, #4]
    1d68:	781b      	ldrb	r3, [r3, #0]
    1d6a:	2b24      	cmp	r3, #36	; 0x24
    1d6c:	d10e      	bne.n	1d8c <atoi+0x66>
    1d6e:	687b      	ldr	r3, [r7, #4]
    1d70:	3301      	adds	r3, #1
    1d72:	781b      	ldrb	r3, [r3, #0]
    1d74:	4618      	mov	r0, r3
    1d76:	f7ff ffb7 	bl	1ce8 <hexdigit>
    1d7a:	4603      	mov	r3, r0
    1d7c:	2b00      	cmp	r3, #0
    1d7e:	d005      	beq.n	1d8c <atoi+0x66>
		base=16;
    1d80:	2310      	movs	r3, #16
    1d82:	60fb      	str	r3, [r7, #12]
		str++;
    1d84:	687b      	ldr	r3, [r7, #4]
    1d86:	3301      	adds	r3, #1
    1d88:	607b      	str	r3, [r7, #4]
    1d8a:	e012      	b.n	1db2 <atoi+0x8c>
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1d8c:	687b      	ldr	r3, [r7, #4]
    1d8e:	781b      	ldrb	r3, [r3, #0]
    1d90:	2b30      	cmp	r3, #48	; 0x30
    1d92:	d128      	bne.n	1de6 <atoi+0xc0>
    1d94:	687b      	ldr	r3, [r7, #4]
    1d96:	3301      	adds	r3, #1
    1d98:	781b      	ldrb	r3, [r3, #0]
    1d9a:	2b78      	cmp	r3, #120	; 0x78
    1d9c:	d004      	beq.n	1da8 <atoi+0x82>
    1d9e:	687b      	ldr	r3, [r7, #4]
    1da0:	3301      	adds	r3, #1
    1da2:	781b      	ldrb	r3, [r3, #0]
    1da4:	2b58      	cmp	r3, #88	; 0x58
    1da6:	d11e      	bne.n	1de6 <atoi+0xc0>
		base=16;
    1da8:	2310      	movs	r3, #16
    1daa:	60fb      	str	r3, [r7, #12]
		str+=2;
    1dac:	687b      	ldr	r3, [r7, #4]
    1dae:	3302      	adds	r3, #2
    1db0:	607b      	str	r3, [r7, #4]
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1db2:	e018      	b.n	1de6 <atoi+0xc0>
		if (c>='a'){c-=32;}
    1db4:	7afb      	ldrb	r3, [r7, #11]
    1db6:	2b60      	cmp	r3, #96	; 0x60
    1db8:	d902      	bls.n	1dc0 <atoi+0x9a>
    1dba:	7afb      	ldrb	r3, [r7, #11]
    1dbc:	3b20      	subs	r3, #32
    1dbe:	72fb      	strb	r3, [r7, #11]
		c-='0';
    1dc0:	7afb      	ldrb	r3, [r7, #11]
    1dc2:	3b30      	subs	r3, #48	; 0x30
    1dc4:	72fb      	strb	r3, [r7, #11]
		if (c>9){c-=7;}
    1dc6:	7afb      	ldrb	r3, [r7, #11]
    1dc8:	2b09      	cmp	r3, #9
    1dca:	d902      	bls.n	1dd2 <atoi+0xac>
    1dcc:	7afb      	ldrb	r3, [r7, #11]
    1dce:	3b07      	subs	r3, #7
    1dd0:	72fb      	strb	r3, [r7, #11]
		n=n*base+c;
    1dd2:	697b      	ldr	r3, [r7, #20]
    1dd4:	68fa      	ldr	r2, [r7, #12]
    1dd6:	fb02 f203 	mul.w	r2, r2, r3
    1dda:	7afb      	ldrb	r3, [r7, #11]
    1ddc:	4413      	add	r3, r2
    1dde:	617b      	str	r3, [r7, #20]
		str++;
    1de0:	687b      	ldr	r3, [r7, #4]
    1de2:	3301      	adds	r3, #1
    1de4:	607b      	str	r3, [r7, #4]
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1de6:	687b      	ldr	r3, [r7, #4]
    1de8:	781b      	ldrb	r3, [r3, #0]
    1dea:	72fb      	strb	r3, [r7, #11]
    1dec:	7afb      	ldrb	r3, [r7, #11]
    1dee:	2b00      	cmp	r3, #0
    1df0:	d00d      	beq.n	1e0e <atoi+0xe8>
    1df2:	68fb      	ldr	r3, [r7, #12]
    1df4:	2b0a      	cmp	r3, #10
    1df6:	d10a      	bne.n	1e0e <atoi+0xe8>
    1df8:	7afb      	ldrb	r3, [r7, #11]
    1dfa:	4618      	mov	r0, r3
    1dfc:	f7ff ff61 	bl	1cc2 <digit>
    1e00:	4603      	mov	r3, r0
    1e02:	2b00      	cmp	r3, #0
    1e04:	bf14      	ite	ne
    1e06:	2301      	movne	r3, #1
    1e08:	2300      	moveq	r3, #0
    1e0a:	b2db      	uxtb	r3, r3
    1e0c:	e009      	b.n	1e22 <atoi+0xfc>
    1e0e:	7afb      	ldrb	r3, [r7, #11]
    1e10:	4618      	mov	r0, r3
    1e12:	f7ff ff69 	bl	1ce8 <hexdigit>
    1e16:	4603      	mov	r3, r0
    1e18:	2b00      	cmp	r3, #0
    1e1a:	bf14      	ite	ne
    1e1c:	2301      	movne	r3, #1
    1e1e:	2300      	moveq	r3, #0
    1e20:	b2db      	uxtb	r3, r3
    1e22:	2b00      	cmp	r3, #0
    1e24:	d1c6      	bne.n	1db4 <atoi+0x8e>
	}
	return sign*n;
    1e26:	693b      	ldr	r3, [r7, #16]
    1e28:	697a      	ldr	r2, [r7, #20]
    1e2a:	fb02 f303 	mul.w	r3, r2, r3
}
    1e2e:	4618      	mov	r0, r3
    1e30:	3718      	adds	r7, #24
    1e32:	46bd      	mov	sp, r7
    1e34:	bd80      	pop	{r7, pc}

00001e36 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
    1e36:	b480      	push	{r7}
    1e38:	b085      	sub	sp, #20
    1e3a:	af00      	add	r7, sp, #0
    1e3c:	60f8      	str	r0, [r7, #12]
    1e3e:	60b9      	str	r1, [r7, #8]
    1e40:	607a      	str	r2, [r7, #4]
	while (len){
    1e42:	e00a      	b.n	1e5a <move+0x24>
		*dest++=*src++;
    1e44:	68bb      	ldr	r3, [r7, #8]
    1e46:	1c5a      	adds	r2, r3, #1
    1e48:	60ba      	str	r2, [r7, #8]
    1e4a:	68fa      	ldr	r2, [r7, #12]
    1e4c:	1c51      	adds	r1, r2, #1
    1e4e:	60f9      	str	r1, [r7, #12]
    1e50:	7812      	ldrb	r2, [r2, #0]
    1e52:	701a      	strb	r2, [r3, #0]
		len--;
    1e54:	687b      	ldr	r3, [r7, #4]
    1e56:	3b01      	subs	r3, #1
    1e58:	607b      	str	r3, [r7, #4]
	while (len){
    1e5a:	687b      	ldr	r3, [r7, #4]
    1e5c:	2b00      	cmp	r3, #0
    1e5e:	d1f1      	bne.n	1e44 <move+0xe>
	}
}
    1e60:	bf00      	nop
    1e62:	3714      	adds	r7, #20
    1e64:	46bd      	mov	sp, r7
    1e66:	bc80      	pop	{r7}
    1e68:	4770      	bx	lr

00001e6a <strlen>:

int strlen(const char* str){
    1e6a:	b480      	push	{r7}
    1e6c:	b085      	sub	sp, #20
    1e6e:	af00      	add	r7, sp, #0
    1e70:	6078      	str	r0, [r7, #4]
	int ll=0;
    1e72:	2300      	movs	r3, #0
    1e74:	60fb      	str	r3, [r7, #12]
	while (str[ll]){ll++;}
    1e76:	e002      	b.n	1e7e <strlen+0x14>
    1e78:	68fb      	ldr	r3, [r7, #12]
    1e7a:	3301      	adds	r3, #1
    1e7c:	60fb      	str	r3, [r7, #12]
    1e7e:	68fb      	ldr	r3, [r7, #12]
    1e80:	687a      	ldr	r2, [r7, #4]
    1e82:	4413      	add	r3, r2
    1e84:	781b      	ldrb	r3, [r3, #0]
    1e86:	2b00      	cmp	r3, #0
    1e88:	d1f6      	bne.n	1e78 <strlen+0xe>
	return ll;
    1e8a:	68fb      	ldr	r3, [r7, #12]
}
    1e8c:	4618      	mov	r0, r3
    1e8e:	3714      	adds	r7, #20
    1e90:	46bd      	mov	sp, r7
    1e92:	bc80      	pop	{r7}
    1e94:	4770      	bx	lr

00001e96 <fill>:

void fill(void *buffer, unsigned int size, char c){
    1e96:	b480      	push	{r7}
    1e98:	b087      	sub	sp, #28
    1e9a:	af00      	add	r7, sp, #0
    1e9c:	60f8      	str	r0, [r7, #12]
    1e9e:	60b9      	str	r1, [r7, #8]
    1ea0:	4613      	mov	r3, r2
    1ea2:	71fb      	strb	r3, [r7, #7]
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1ea4:	2300      	movs	r3, #0
    1ea6:	617b      	str	r3, [r7, #20]
    1ea8:	e007      	b.n	1eba <fill+0x24>
    1eaa:	68fb      	ldr	r3, [r7, #12]
    1eac:	1c5a      	adds	r2, r3, #1
    1eae:	60fa      	str	r2, [r7, #12]
    1eb0:	79fa      	ldrb	r2, [r7, #7]
    1eb2:	701a      	strb	r2, [r3, #0]
    1eb4:	697b      	ldr	r3, [r7, #20]
    1eb6:	3301      	adds	r3, #1
    1eb8:	617b      	str	r3, [r7, #20]
    1eba:	697a      	ldr	r2, [r7, #20]
    1ebc:	68bb      	ldr	r3, [r7, #8]
    1ebe:	429a      	cmp	r2, r3
    1ec0:	d3f3      	bcc.n	1eaa <fill+0x14>
}
    1ec2:	bf00      	nop
    1ec4:	371c      	adds	r7, #28
    1ec6:	46bd      	mov	sp, r7
    1ec8:	bc80      	pop	{r7}
    1eca:	4770      	bx	lr

00001ecc <is_lower>:

//retourne vrai si caractère en minuscule
int is_lower(char c){
    1ecc:	b480      	push	{r7}
    1ece:	b083      	sub	sp, #12
    1ed0:	af00      	add	r7, sp, #0
    1ed2:	4603      	mov	r3, r0
    1ed4:	71fb      	strb	r3, [r7, #7]
	return (c>='a') && (c<='z');
    1ed6:	79fb      	ldrb	r3, [r7, #7]
    1ed8:	2b60      	cmp	r3, #96	; 0x60
    1eda:	d904      	bls.n	1ee6 <is_lower+0x1a>
    1edc:	79fb      	ldrb	r3, [r7, #7]
    1ede:	2b7a      	cmp	r3, #122	; 0x7a
    1ee0:	d801      	bhi.n	1ee6 <is_lower+0x1a>
    1ee2:	2301      	movs	r3, #1
    1ee4:	e000      	b.n	1ee8 <is_lower+0x1c>
    1ee6:	2300      	movs	r3, #0
}
    1ee8:	4618      	mov	r0, r3
    1eea:	370c      	adds	r7, #12
    1eec:	46bd      	mov	sp, r7
    1eee:	bc80      	pop	{r7}
    1ef0:	4770      	bx	lr

00001ef2 <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
    1ef2:	b480      	push	{r7}
    1ef4:	b083      	sub	sp, #12
    1ef6:	af00      	add	r7, sp, #0
    1ef8:	4603      	mov	r3, r0
    1efa:	71fb      	strb	r3, [r7, #7]
	return (c>='A') && (c<='Z');
    1efc:	79fb      	ldrb	r3, [r7, #7]
    1efe:	2b40      	cmp	r3, #64	; 0x40
    1f00:	d904      	bls.n	1f0c <is_upper+0x1a>
    1f02:	79fb      	ldrb	r3, [r7, #7]
    1f04:	2b5a      	cmp	r3, #90	; 0x5a
    1f06:	d801      	bhi.n	1f0c <is_upper+0x1a>
    1f08:	2301      	movs	r3, #1
    1f0a:	e000      	b.n	1f0e <is_upper+0x1c>
    1f0c:	2300      	movs	r3, #0
}
    1f0e:	4618      	mov	r0, r3
    1f10:	370c      	adds	r7, #12
    1f12:	46bd      	mov	sp, r7
    1f14:	bc80      	pop	{r7}
    1f16:	4770      	bx	lr

00001f18 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
    1f18:	b580      	push	{r7, lr}
    1f1a:	b082      	sub	sp, #8
    1f1c:	af00      	add	r7, sp, #0
    1f1e:	6078      	str	r0, [r7, #4]
	while (*buffer){
    1f20:	e010      	b.n	1f44 <uppercase+0x2c>
		if (is_lower(*buffer)){*buffer-=32;}
    1f22:	687b      	ldr	r3, [r7, #4]
    1f24:	781b      	ldrb	r3, [r3, #0]
    1f26:	4618      	mov	r0, r3
    1f28:	f7ff ffd0 	bl	1ecc <is_lower>
    1f2c:	4603      	mov	r3, r0
    1f2e:	2b00      	cmp	r3, #0
    1f30:	d005      	beq.n	1f3e <uppercase+0x26>
    1f32:	687b      	ldr	r3, [r7, #4]
    1f34:	781b      	ldrb	r3, [r3, #0]
    1f36:	3b20      	subs	r3, #32
    1f38:	b2da      	uxtb	r2, r3
    1f3a:	687b      	ldr	r3, [r7, #4]
    1f3c:	701a      	strb	r2, [r3, #0]
		buffer++;
    1f3e:	687b      	ldr	r3, [r7, #4]
    1f40:	3301      	adds	r3, #1
    1f42:	607b      	str	r3, [r7, #4]
	while (*buffer){
    1f44:	687b      	ldr	r3, [r7, #4]
    1f46:	781b      	ldrb	r3, [r3, #0]
    1f48:	2b00      	cmp	r3, #0
    1f4a:	d1ea      	bne.n	1f22 <uppercase+0xa>
	}
}
    1f4c:	bf00      	nop
    1f4e:	3708      	adds	r7, #8
    1f50:	46bd      	mov	sp, r7
    1f52:	bd80      	pop	{r7, pc}

00001f54 <scan>:

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    1f54:	b480      	push	{r7}
    1f56:	b085      	sub	sp, #20
    1f58:	af00      	add	r7, sp, #0
    1f5a:	60f8      	str	r0, [r7, #12]
    1f5c:	60b9      	str	r1, [r7, #8]
    1f5e:	4613      	mov	r3, r2
    1f60:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]!=c) start++;
    1f62:	e002      	b.n	1f6a <scan+0x16>
    1f64:	68bb      	ldr	r3, [r7, #8]
    1f66:	3301      	adds	r3, #1
    1f68:	60bb      	str	r3, [r7, #8]
    1f6a:	68bb      	ldr	r3, [r7, #8]
    1f6c:	68fa      	ldr	r2, [r7, #12]
    1f6e:	4413      	add	r3, r2
    1f70:	781b      	ldrb	r3, [r3, #0]
    1f72:	2b00      	cmp	r3, #0
    1f74:	d006      	beq.n	1f84 <scan+0x30>
    1f76:	68bb      	ldr	r3, [r7, #8]
    1f78:	68fa      	ldr	r2, [r7, #12]
    1f7a:	4413      	add	r3, r2
    1f7c:	781b      	ldrb	r3, [r3, #0]
    1f7e:	79fa      	ldrb	r2, [r7, #7]
    1f80:	429a      	cmp	r2, r3
    1f82:	d1ef      	bne.n	1f64 <scan+0x10>
	return start;
    1f84:	68bb      	ldr	r3, [r7, #8]
}
    1f86:	4618      	mov	r0, r3
    1f88:	3714      	adds	r7, #20
    1f8a:	46bd      	mov	sp, r7
    1f8c:	bc80      	pop	{r7}
    1f8e:	4770      	bx	lr

00001f90 <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    1f90:	b480      	push	{r7}
    1f92:	b085      	sub	sp, #20
    1f94:	af00      	add	r7, sp, #0
    1f96:	60f8      	str	r0, [r7, #12]
    1f98:	60b9      	str	r1, [r7, #8]
    1f9a:	4613      	mov	r3, r2
    1f9c:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]==c) start++;
    1f9e:	e002      	b.n	1fa6 <skip+0x16>
    1fa0:	68bb      	ldr	r3, [r7, #8]
    1fa2:	3301      	adds	r3, #1
    1fa4:	60bb      	str	r3, [r7, #8]
    1fa6:	68bb      	ldr	r3, [r7, #8]
    1fa8:	68fa      	ldr	r2, [r7, #12]
    1faa:	4413      	add	r3, r2
    1fac:	781b      	ldrb	r3, [r3, #0]
    1fae:	2b00      	cmp	r3, #0
    1fb0:	d006      	beq.n	1fc0 <skip+0x30>
    1fb2:	68bb      	ldr	r3, [r7, #8]
    1fb4:	68fa      	ldr	r2, [r7, #12]
    1fb6:	4413      	add	r3, r2
    1fb8:	781b      	ldrb	r3, [r3, #0]
    1fba:	79fa      	ldrb	r2, [r7, #7]
    1fbc:	429a      	cmp	r2, r3
    1fbe:	d0ef      	beq.n	1fa0 <skip+0x10>
	return start;
    1fc0:	68bb      	ldr	r3, [r7, #8]
}
    1fc2:	4618      	mov	r0, r3
    1fc4:	3714      	adds	r7, #20
    1fc6:	46bd      	mov	sp, r7
    1fc8:	bc80      	pop	{r7}
    1fca:	4770      	bx	lr

00001fcc <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    1fcc:	b580      	push	{r7, lr}
    1fce:	b082      	sub	sp, #8
    1fd0:	af00      	add	r7, sp, #0
    1fd2:	6078      	str	r0, [r7, #4]
    1fd4:	6039      	str	r1, [r7, #0]
	s1+=strlen(s1);
    1fd6:	6878      	ldr	r0, [r7, #4]
    1fd8:	f7ff ff47 	bl	1e6a <strlen>
    1fdc:	4603      	mov	r3, r0
    1fde:	461a      	mov	r2, r3
    1fe0:	687b      	ldr	r3, [r7, #4]
    1fe2:	4413      	add	r3, r2
    1fe4:	607b      	str	r3, [r7, #4]
	while (*s2){
    1fe6:	e007      	b.n	1ff8 <strcat+0x2c>
		*s1++=*s2++;
    1fe8:	687b      	ldr	r3, [r7, #4]
    1fea:	1c5a      	adds	r2, r3, #1
    1fec:	607a      	str	r2, [r7, #4]
    1fee:	683a      	ldr	r2, [r7, #0]
    1ff0:	1c51      	adds	r1, r2, #1
    1ff2:	6039      	str	r1, [r7, #0]
    1ff4:	7812      	ldrb	r2, [r2, #0]
    1ff6:	701a      	strb	r2, [r3, #0]
	while (*s2){
    1ff8:	683b      	ldr	r3, [r7, #0]
    1ffa:	781b      	ldrb	r3, [r3, #0]
    1ffc:	2b00      	cmp	r3, #0
    1ffe:	d1f3      	bne.n	1fe8 <strcat+0x1c>
	}
	*s1=0;
    2000:	687b      	ldr	r3, [r7, #4]
    2002:	2200      	movs	r2, #0
    2004:	701a      	strb	r2, [r3, #0]
	return s1;
    2006:	687b      	ldr	r3, [r7, #4]
}
    2008:	4618      	mov	r0, r3
    200a:	3708      	adds	r7, #8
    200c:	46bd      	mov	sp, r7
    200e:	bd80      	pop	{r7, pc}

00002010 <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    2010:	b480      	push	{r7}
    2012:	b087      	sub	sp, #28
    2014:	af00      	add	r7, sp, #0
    2016:	60f8      	str	r0, [r7, #12]
    2018:	60b9      	str	r1, [r7, #8]
    201a:	607a      	str	r2, [r7, #4]
	uint8_t shift;
	shift=(pin&7)<<2;
    201c:	68bb      	ldr	r3, [r7, #8]
    201e:	b2db      	uxtb	r3, r3
    2020:	009b      	lsls	r3, r3, #2
    2022:	b2db      	uxtb	r3, r3
    2024:	f003 031c 	and.w	r3, r3, #28
    2028:	75fb      	strb	r3, [r7, #23]
	port->CR[pin>>3]&=~(15<<shift);
    202a:	68bb      	ldr	r3, [r7, #8]
    202c:	08da      	lsrs	r2, r3, #3
    202e:	68bb      	ldr	r3, [r7, #8]
    2030:	08d9      	lsrs	r1, r3, #3
    2032:	68fb      	ldr	r3, [r7, #12]
    2034:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    2038:	7df9      	ldrb	r1, [r7, #23]
    203a:	200f      	movs	r0, #15
    203c:	fa00 f101 	lsl.w	r1, r0, r1
    2040:	43c9      	mvns	r1, r1
    2042:	4019      	ands	r1, r3
    2044:	68fb      	ldr	r3, [r7, #12]
    2046:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    204a:	68bb      	ldr	r3, [r7, #8]
    204c:	08da      	lsrs	r2, r3, #3
    204e:	68bb      	ldr	r3, [r7, #8]
    2050:	08d9      	lsrs	r1, r3, #3
    2052:	68fb      	ldr	r3, [r7, #12]
    2054:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    2058:	7dfb      	ldrb	r3, [r7, #23]
    205a:	6878      	ldr	r0, [r7, #4]
    205c:	fa00 f303 	lsl.w	r3, r0, r3
    2060:	4319      	orrs	r1, r3
    2062:	68fb      	ldr	r3, [r7, #12]
    2064:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
    2068:	bf00      	nop
    206a:	371c      	adds	r7, #28
    206c:	46bd      	mov	sp, r7
    206e:	bc80      	pop	{r7}
    2070:	4770      	bx	lr

00002072 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
    2072:	b480      	push	{r7}
    2074:	b083      	sub	sp, #12
    2076:	af00      	add	r7, sp, #0
    2078:	6078      	str	r0, [r7, #4]
    207a:	6039      	str	r1, [r7, #0]
	return port->IDR&(1<<pin);
    207c:	687b      	ldr	r3, [r7, #4]
    207e:	689b      	ldr	r3, [r3, #8]
    2080:	2101      	movs	r1, #1
    2082:	683a      	ldr	r2, [r7, #0]
    2084:	fa01 f202 	lsl.w	r2, r1, r2
    2088:	4013      	ands	r3, r2
}
    208a:	4618      	mov	r0, r3
    208c:	370c      	adds	r7, #12
    208e:	46bd      	mov	sp, r7
    2090:	bc80      	pop	{r7}
    2092:	4770      	bx	lr

00002094 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
    2094:	b480      	push	{r7}
    2096:	b085      	sub	sp, #20
    2098:	af00      	add	r7, sp, #0
    209a:	60f8      	str	r0, [r7, #12]
    209c:	60b9      	str	r1, [r7, #8]
    209e:	607a      	str	r2, [r7, #4]
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    20a0:	687b      	ldr	r3, [r7, #4]
    20a2:	2b00      	cmp	r3, #0
    20a4:	d009      	beq.n	20ba <write_pin+0x26>
    20a6:	68fb      	ldr	r3, [r7, #12]
    20a8:	68db      	ldr	r3, [r3, #12]
    20aa:	2101      	movs	r1, #1
    20ac:	68ba      	ldr	r2, [r7, #8]
    20ae:	fa01 f202 	lsl.w	r2, r1, r2
    20b2:	431a      	orrs	r2, r3
    20b4:	68fb      	ldr	r3, [r7, #12]
    20b6:	60da      	str	r2, [r3, #12]
}
    20b8:	e009      	b.n	20ce <write_pin+0x3a>
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    20ba:	68fb      	ldr	r3, [r7, #12]
    20bc:	68db      	ldr	r3, [r3, #12]
    20be:	2101      	movs	r1, #1
    20c0:	68ba      	ldr	r2, [r7, #8]
    20c2:	fa01 f202 	lsl.w	r2, r1, r2
    20c6:	43d2      	mvns	r2, r2
    20c8:	401a      	ands	r2, r3
    20ca:	68fb      	ldr	r3, [r7, #12]
    20cc:	60da      	str	r2, [r3, #12]
}
    20ce:	bf00      	nop
    20d0:	3714      	adds	r7, #20
    20d2:	46bd      	mov	sp, r7
    20d4:	bc80      	pop	{r7}
    20d6:	4770      	bx	lr

000020d8 <toggle_pin>:

inline void toggle_pin(gpio_t* port, unsigned pin){
    20d8:	b480      	push	{r7}
    20da:	b083      	sub	sp, #12
    20dc:	af00      	add	r7, sp, #0
    20de:	6078      	str	r0, [r7, #4]
    20e0:	6039      	str	r1, [r7, #0]
	port->ODR^=(1<<pin);
    20e2:	687b      	ldr	r3, [r7, #4]
    20e4:	68db      	ldr	r3, [r3, #12]
    20e6:	2101      	movs	r1, #1
    20e8:	683a      	ldr	r2, [r7, #0]
    20ea:	fa01 f202 	lsl.w	r2, r1, r2
    20ee:	405a      	eors	r2, r3
    20f0:	687b      	ldr	r3, [r7, #4]
    20f2:	60da      	str	r2, [r3, #12]
}
    20f4:	bf00      	nop
    20f6:	370c      	adds	r7, #12
    20f8:	46bd      	mov	sp, r7
    20fa:	bc80      	pop	{r7}
    20fc:	4770      	bx	lr
	...

00002100 <set_palette>:
uint8_t sprite_bpp=4;
// palette 4 couleurs pour les sprites 1 ou 2 bits/pixel
static uint8_t palette[4]={0,15,3,5};


void set_palette(const uint8_t new[4]){
    2100:	b480      	push	{r7}
    2102:	b083      	sub	sp, #12
    2104:	af00      	add	r7, sp, #0
    2106:	6078      	str	r0, [r7, #4]
    palette[0]=new[0];
    2108:	687b      	ldr	r3, [r7, #4]
    210a:	781a      	ldrb	r2, [r3, #0]
    210c:	4b09      	ldr	r3, [pc, #36]	; (2134 <set_palette+0x34>)
    210e:	701a      	strb	r2, [r3, #0]
    palette[1]=new[1];
    2110:	687b      	ldr	r3, [r7, #4]
    2112:	785a      	ldrb	r2, [r3, #1]
    2114:	4b07      	ldr	r3, [pc, #28]	; (2134 <set_palette+0x34>)
    2116:	705a      	strb	r2, [r3, #1]
    palette[2]=new[2];
    2118:	687b      	ldr	r3, [r7, #4]
    211a:	789a      	ldrb	r2, [r3, #2]
    211c:	4b05      	ldr	r3, [pc, #20]	; (2134 <set_palette+0x34>)
    211e:	709a      	strb	r2, [r3, #2]
    palette[3]=new[3];
    2120:	687b      	ldr	r3, [r7, #4]
    2122:	78da      	ldrb	r2, [r3, #3]
    2124:	4b03      	ldr	r3, [pc, #12]	; (2134 <set_palette+0x34>)
    2126:	70da      	strb	r2, [r3, #3]
}
    2128:	bf00      	nop
    212a:	370c      	adds	r7, #12
    212c:	46bd      	mov	sp, r7
    212e:	bc80      	pop	{r7}
    2130:	4770      	bx	lr
    2132:	bf00      	nop
    2134:	20000194 	.word	0x20000194

00002138 <gfx_blit>:

int gfx_blit(int x, int y, uint8_t color, blit_op_t op){
    2138:	b5f0      	push	{r4, r5, r6, r7, lr}
    213a:	b087      	sub	sp, #28
    213c:	af00      	add	r7, sp, #0
    213e:	60f8      	str	r0, [r7, #12]
    2140:	60b9      	str	r1, [r7, #8]
    2142:	4611      	mov	r1, r2
    2144:	461a      	mov	r2, r3
    2146:	460b      	mov	r3, r1
    2148:	71fb      	strb	r3, [r7, #7]
    214a:	4613      	mov	r3, r2
    214c:	71bb      	strb	r3, [r7, #6]
	register int idx;
    int collision;
    register uint8_t byte,mask;
    vmode_params_t *vparams=get_video_params();
    214e:	f003 f99f 	bl	5490 <get_video_params>
    2152:	6178      	str	r0, [r7, #20]
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres)) return 0;
    2154:	68fb      	ldr	r3, [r7, #12]
    2156:	2b00      	cmp	r3, #0
    2158:	db0e      	blt.n	2178 <gfx_blit+0x40>
    215a:	697b      	ldr	r3, [r7, #20]
    215c:	899b      	ldrh	r3, [r3, #12]
    215e:	461a      	mov	r2, r3
    2160:	68fb      	ldr	r3, [r7, #12]
    2162:	429a      	cmp	r2, r3
    2164:	dd08      	ble.n	2178 <gfx_blit+0x40>
    2166:	68bb      	ldr	r3, [r7, #8]
    2168:	2b00      	cmp	r3, #0
    216a:	db05      	blt.n	2178 <gfx_blit+0x40>
    216c:	697b      	ldr	r3, [r7, #20]
    216e:	89db      	ldrh	r3, [r3, #14]
    2170:	461a      	mov	r2, r3
    2172:	68bb      	ldr	r3, [r7, #8]
    2174:	429a      	cmp	r2, r3
    2176:	dc01      	bgt.n	217c <gfx_blit+0x44>
    2178:	2300      	movs	r3, #0
    217a:	e058      	b.n	222e <gfx_blit+0xf6>
    idx=y*vparams->bpr+x/2;
    217c:	697b      	ldr	r3, [r7, #20]
    217e:	7a1b      	ldrb	r3, [r3, #8]
    2180:	461a      	mov	r2, r3
    2182:	68bb      	ldr	r3, [r7, #8]
    2184:	fb03 f202 	mul.w	r2, r3, r2
    2188:	68fb      	ldr	r3, [r7, #12]
    218a:	0fd9      	lsrs	r1, r3, #31
    218c:	440b      	add	r3, r1
    218e:	105b      	asrs	r3, r3, #1
    2190:	18d6      	adds	r6, r2, r3
    color&=0xf;
    2192:	79fb      	ldrb	r3, [r7, #7]
    2194:	f003 030f 	and.w	r3, r3, #15
    2198:	71fb      	strb	r3, [r7, #7]
    mask=0xf0;
    219a:	25f0      	movs	r5, #240	; 0xf0
    if (!(x&1)){
    219c:	68fb      	ldr	r3, [r7, #12]
    219e:	f003 0301 	and.w	r3, r3, #1
    21a2:	2b00      	cmp	r3, #0
    21a4:	d103      	bne.n	21ae <gfx_blit+0x76>
         color<<=4;
    21a6:	79fb      	ldrb	r3, [r7, #7]
    21a8:	011b      	lsls	r3, r3, #4
    21aa:	71fb      	strb	r3, [r7, #7]
         mask=0x0f;
    21ac:	250f      	movs	r5, #15
    }
    byte=video_buffer[idx];
    21ae:	4b22      	ldr	r3, [pc, #136]	; (2238 <gfx_blit+0x100>)
    21b0:	5d9c      	ldrb	r4, [r3, r6]
    switch (op){
    21b2:	79bb      	ldrb	r3, [r7, #6]
    21b4:	2b04      	cmp	r3, #4
    21b6:	d828      	bhi.n	220a <gfx_blit+0xd2>
    21b8:	a201      	add	r2, pc, #4	; (adr r2, 21c0 <gfx_blit+0x88>)
    21ba:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    21be:	bf00      	nop
    21c0:	000021d5 	.word	0x000021d5
    21c4:	000021dd 	.word	0x000021dd
    21c8:	000021e5 	.word	0x000021e5
    21cc:	000021ed 	.word	0x000021ed
    21d0:	000021fd 	.word	0x000021fd
    case BIT_OR:
        byte|=color;
    21d4:	79fb      	ldrb	r3, [r7, #7]
    21d6:	4323      	orrs	r3, r4
    21d8:	b2dc      	uxtb	r4, r3
        break;
    21da:	e016      	b.n	220a <gfx_blit+0xd2>
    case BIT_AND:
        byte&=color;
    21dc:	79fb      	ldrb	r3, [r7, #7]
    21de:	4023      	ands	r3, r4
    21e0:	b2dc      	uxtb	r4, r3
        break;
    21e2:	e012      	b.n	220a <gfx_blit+0xd2>
    case BIT_XOR:
        byte^=color;
    21e4:	79fb      	ldrb	r3, [r7, #7]
    21e6:	4063      	eors	r3, r4
    21e8:	b2dc      	uxtb	r4, r3
        break;
    21ea:	e00e      	b.n	220a <gfx_blit+0xd2>
    case BIT_INVERT:
        byte^=~mask;
    21ec:	b26b      	sxtb	r3, r5
    21ee:	43db      	mvns	r3, r3
    21f0:	b25a      	sxtb	r2, r3
    21f2:	b263      	sxtb	r3, r4
    21f4:	4053      	eors	r3, r2
    21f6:	b25b      	sxtb	r3, r3
    21f8:	b2dc      	uxtb	r4, r3
        break;
    21fa:	e006      	b.n	220a <gfx_blit+0xd2>
    case BIT_SET:
        byte &=mask;
    21fc:	ea04 0305 	and.w	r3, r4, r5
    2200:	b2dc      	uxtb	r4, r3
        byte|=color;
    2202:	79fb      	ldrb	r3, [r7, #7]
    2204:	4323      	orrs	r3, r4
    2206:	b2dc      	uxtb	r4, r3
        break;
    2208:	bf00      	nop
    }//switch (op)
    video_buffer[idx]=byte;
    220a:	4b0b      	ldr	r3, [pc, #44]	; (2238 <gfx_blit+0x100>)
    220c:	4622      	mov	r2, r4
    220e:	559a      	strb	r2, [r3, r6]
    return !((byte&~mask)^color==0);
    2210:	4622      	mov	r2, r4
    2212:	462b      	mov	r3, r5
    2214:	43db      	mvns	r3, r3
    2216:	4013      	ands	r3, r2
    2218:	79fa      	ldrb	r2, [r7, #7]
    221a:	2a00      	cmp	r2, #0
    221c:	bf0c      	ite	eq
    221e:	2201      	moveq	r2, #1
    2220:	2200      	movne	r2, #0
    2222:	b2d2      	uxtb	r2, r2
    2224:	4293      	cmp	r3, r2
    2226:	bf0c      	ite	eq
    2228:	2301      	moveq	r3, #1
    222a:	2300      	movne	r3, #0
    222c:	b2db      	uxtb	r3, r3
}
    222e:	4618      	mov	r0, r3
    2230:	371c      	adds	r7, #28
    2232:	46bd      	mov	sp, r7
    2234:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2236:	bf00      	nop
    2238:	200026e0 	.word	0x200026e0

0000223c <gfx_plot>:

void gfx_plot (int x,int y,uint8_t color){
    223c:	b5b0      	push	{r4, r5, r7, lr}
    223e:	b086      	sub	sp, #24
    2240:	af00      	add	r7, sp, #0
    2242:	60f8      	str	r0, [r7, #12]
    2244:	60b9      	str	r1, [r7, #8]
    2246:	4613      	mov	r3, r2
    2248:	71fb      	strb	r3, [r7, #7]
	register int idx;
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    224a:	f003 f921 	bl	5490 <get_video_params>
    224e:	6178      	str	r0, [r7, #20]
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    2250:	68fb      	ldr	r3, [r7, #12]
    2252:	2b00      	cmp	r3, #0
    2254:	db39      	blt.n	22ca <gfx_plot+0x8e>
    2256:	697b      	ldr	r3, [r7, #20]
    2258:	899b      	ldrh	r3, [r3, #12]
    225a:	461a      	mov	r2, r3
    225c:	68fb      	ldr	r3, [r7, #12]
    225e:	429a      	cmp	r2, r3
    2260:	dd33      	ble.n	22ca <gfx_plot+0x8e>
    2262:	68bb      	ldr	r3, [r7, #8]
    2264:	2b00      	cmp	r3, #0
    2266:	db30      	blt.n	22ca <gfx_plot+0x8e>
    2268:	697b      	ldr	r3, [r7, #20]
    226a:	89db      	ldrh	r3, [r3, #14]
    226c:	461a      	mov	r2, r3
    226e:	68bb      	ldr	r3, [r7, #8]
    2270:	429a      	cmp	r2, r3
    2272:	dd2a      	ble.n	22ca <gfx_plot+0x8e>
    idx=y*vparams->bpr+x/2;
    2274:	697b      	ldr	r3, [r7, #20]
    2276:	7a1b      	ldrb	r3, [r3, #8]
    2278:	461a      	mov	r2, r3
    227a:	68bb      	ldr	r3, [r7, #8]
    227c:	fb03 f202 	mul.w	r2, r3, r2
    2280:	68fb      	ldr	r3, [r7, #12]
    2282:	0fd9      	lsrs	r1, r3, #31
    2284:	440b      	add	r3, r1
    2286:	105b      	asrs	r3, r3, #1
    2288:	18d5      	adds	r5, r2, r3
    color&=0xf;
    228a:	79fb      	ldrb	r3, [r7, #7]
    228c:	f003 030f 	and.w	r3, r3, #15
    2290:	71fb      	strb	r3, [r7, #7]
    byte=video_buffer[idx];
    2292:	4b10      	ldr	r3, [pc, #64]	; (22d4 <gfx_plot+0x98>)
    2294:	5d5c      	ldrb	r4, [r3, r5]
    if (x&1){
    2296:	68fb      	ldr	r3, [r7, #12]
    2298:	f003 0301 	and.w	r3, r3, #1
    229c:	2b00      	cmp	r3, #0
    229e:	d006      	beq.n	22ae <gfx_plot+0x72>
        byte&=0xf0;
    22a0:	f024 030f 	bic.w	r3, r4, #15
    22a4:	b2dc      	uxtb	r4, r3
        byte|=color;
    22a6:	79fb      	ldrb	r3, [r7, #7]
    22a8:	4323      	orrs	r3, r4
    22aa:	b2dc      	uxtb	r4, r3
    22ac:	e009      	b.n	22c2 <gfx_plot+0x86>
    }else{
        byte&=0xf;
    22ae:	f004 030f 	and.w	r3, r4, #15
    22b2:	b2dc      	uxtb	r4, r3
        byte|=color<<4;
    22b4:	79fb      	ldrb	r3, [r7, #7]
    22b6:	011b      	lsls	r3, r3, #4
    22b8:	b25a      	sxtb	r2, r3
    22ba:	b263      	sxtb	r3, r4
    22bc:	4313      	orrs	r3, r2
    22be:	b25b      	sxtb	r3, r3
    22c0:	b2dc      	uxtb	r4, r3
    }
    video_buffer[idx]=byte;
    22c2:	4b04      	ldr	r3, [pc, #16]	; (22d4 <gfx_plot+0x98>)
    22c4:	4622      	mov	r2, r4
    22c6:	555a      	strb	r2, [r3, r5]
    22c8:	e000      	b.n	22cc <gfx_plot+0x90>
	if ((x<0) || (x>=vparams->hres) || (y<0) || (y>=vparams->vres) ) return;
    22ca:	bf00      	nop
}
    22cc:	3718      	adds	r7, #24
    22ce:	46bd      	mov	sp, r7
    22d0:	bdb0      	pop	{r4, r5, r7, pc}
    22d2:	bf00      	nop
    22d4:	200026e0 	.word	0x200026e0

000022d8 <gfx_cls>:

void gfx_cls(){
    22d8:	b580      	push	{r7, lr}
    22da:	b082      	sub	sp, #8
    22dc:	af00      	add	r7, sp, #0
	int x;
    vmode_params_t *vparams=get_video_params();
    22de:	f003 f8d7 	bl	5490 <get_video_params>
    22e2:	6038      	str	r0, [r7, #0]
	for (x=0;x<vparams->vres*vparams->bpr;x++) video_buffer[x]=0;
    22e4:	2300      	movs	r3, #0
    22e6:	607b      	str	r3, [r7, #4]
    22e8:	e007      	b.n	22fa <gfx_cls+0x22>
    22ea:	4a0d      	ldr	r2, [pc, #52]	; (2320 <gfx_cls+0x48>)
    22ec:	687b      	ldr	r3, [r7, #4]
    22ee:	4413      	add	r3, r2
    22f0:	2200      	movs	r2, #0
    22f2:	701a      	strb	r2, [r3, #0]
    22f4:	687b      	ldr	r3, [r7, #4]
    22f6:	3301      	adds	r3, #1
    22f8:	607b      	str	r3, [r7, #4]
    22fa:	683b      	ldr	r3, [r7, #0]
    22fc:	89db      	ldrh	r3, [r3, #14]
    22fe:	461a      	mov	r2, r3
    2300:	683b      	ldr	r3, [r7, #0]
    2302:	7a1b      	ldrb	r3, [r3, #8]
    2304:	fb03 f202 	mul.w	r2, r3, r2
    2308:	687b      	ldr	r3, [r7, #4]
    230a:	429a      	cmp	r2, r3
    230c:	dced      	bgt.n	22ea <gfx_cls+0x12>
    set_cursor(0,0);
    230e:	2100      	movs	r1, #0
    2310:	2000      	movs	r0, #0
    2312:	f002 fbe7 	bl	4ae4 <set_cursor>
}
    2316:	bf00      	nop
    2318:	3708      	adds	r7, #8
    231a:	46bd      	mov	sp, r7
    231c:	bd80      	pop	{r7, pc}
    231e:	bf00      	nop
    2320:	200026e0 	.word	0x200026e0

00002324 <move_up>:

static uint8_t* move_up(uint8_t* src, uint8_t* dest, int size){
    2324:	b480      	push	{r7}
    2326:	b085      	sub	sp, #20
    2328:	af00      	add	r7, sp, #0
    232a:	60f8      	str	r0, [r7, #12]
    232c:	60b9      	str	r1, [r7, #8]
    232e:	607a      	str	r2, [r7, #4]
    while (size--) *--dest=*--src;
    2330:	e009      	b.n	2346 <move_up+0x22>
    2332:	68bb      	ldr	r3, [r7, #8]
    2334:	3b01      	subs	r3, #1
    2336:	60bb      	str	r3, [r7, #8]
    2338:	68fb      	ldr	r3, [r7, #12]
    233a:	3b01      	subs	r3, #1
    233c:	60fb      	str	r3, [r7, #12]
    233e:	68fb      	ldr	r3, [r7, #12]
    2340:	781a      	ldrb	r2, [r3, #0]
    2342:	68bb      	ldr	r3, [r7, #8]
    2344:	701a      	strb	r2, [r3, #0]
    2346:	687b      	ldr	r3, [r7, #4]
    2348:	1e5a      	subs	r2, r3, #1
    234a:	607a      	str	r2, [r7, #4]
    234c:	2b00      	cmp	r3, #0
    234e:	d1f0      	bne.n	2332 <move_up+0xe>
    return dest;
    2350:	68bb      	ldr	r3, [r7, #8]
}
    2352:	4618      	mov	r0, r3
    2354:	3714      	adds	r7, #20
    2356:	46bd      	mov	sp, r7
    2358:	bc80      	pop	{r7}
    235a:	4770      	bx	lr

0000235c <move_down>:

static uint8_t* move_down(uint8_t* src, uint8_t* dest, int size){
    235c:	b480      	push	{r7}
    235e:	b085      	sub	sp, #20
    2360:	af00      	add	r7, sp, #0
    2362:	60f8      	str	r0, [r7, #12]
    2364:	60b9      	str	r1, [r7, #8]
    2366:	607a      	str	r2, [r7, #4]
    while (size--) *dest++=*src++;
    2368:	e007      	b.n	237a <move_down+0x1e>
    236a:	68bb      	ldr	r3, [r7, #8]
    236c:	1c5a      	adds	r2, r3, #1
    236e:	60ba      	str	r2, [r7, #8]
    2370:	68fa      	ldr	r2, [r7, #12]
    2372:	1c51      	adds	r1, r2, #1
    2374:	60f9      	str	r1, [r7, #12]
    2376:	7812      	ldrb	r2, [r2, #0]
    2378:	701a      	strb	r2, [r3, #0]
    237a:	687b      	ldr	r3, [r7, #4]
    237c:	1e5a      	subs	r2, r3, #1
    237e:	607a      	str	r2, [r7, #4]
    2380:	2b00      	cmp	r3, #0
    2382:	d1f2      	bne.n	236a <move_down+0xe>
    return dest;
    2384:	68bb      	ldr	r3, [r7, #8]
}
    2386:	4618      	mov	r0, r3
    2388:	3714      	adds	r7, #20
    238a:	46bd      	mov	sp, r7
    238c:	bc80      	pop	{r7}
    238e:	4770      	bx	lr

00002390 <gfx_scroll_up>:


void gfx_scroll_up(uint8_t n){
    2390:	b580      	push	{r7, lr}
    2392:	b086      	sub	sp, #24
    2394:	af00      	add	r7, sp, #0
    2396:	4603      	mov	r3, r0
    2398:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    239a:	f003 f879 	bl	5490 <get_video_params>
    239e:	60f8      	str	r0, [r7, #12]
    src=&video_buffer[n*vparams->bpr];
    23a0:	79fb      	ldrb	r3, [r7, #7]
    23a2:	68fa      	ldr	r2, [r7, #12]
    23a4:	7a12      	ldrb	r2, [r2, #8]
    23a6:	fb02 f303 	mul.w	r3, r2, r3
    23aa:	4a15      	ldr	r2, [pc, #84]	; (2400 <gfx_scroll_up+0x70>)
    23ac:	4413      	add	r3, r2
    23ae:	60bb      	str	r3, [r7, #8]
    dest=video_buffer;
    23b0:	4b13      	ldr	r3, [pc, #76]	; (2400 <gfx_scroll_up+0x70>)
    23b2:	617b      	str	r3, [r7, #20]
    size = (vparams->vres-n)*vparams->bpr;
    23b4:	68fb      	ldr	r3, [r7, #12]
    23b6:	89db      	ldrh	r3, [r3, #14]
    23b8:	461a      	mov	r2, r3
    23ba:	79fb      	ldrb	r3, [r7, #7]
    23bc:	1ad3      	subs	r3, r2, r3
    23be:	68fa      	ldr	r2, [r7, #12]
    23c0:	7a12      	ldrb	r2, [r2, #8]
    23c2:	fb02 f303 	mul.w	r3, r2, r3
    23c6:	613b      	str	r3, [r7, #16]
    dest=move_down(src,dest,size);
    23c8:	693a      	ldr	r2, [r7, #16]
    23ca:	6979      	ldr	r1, [r7, #20]
    23cc:	68b8      	ldr	r0, [r7, #8]
    23ce:	f7ff ffc5 	bl	235c <move_down>
    23d2:	6178      	str	r0, [r7, #20]
    size=vparams->bpr*n;
    23d4:	68fb      	ldr	r3, [r7, #12]
    23d6:	7a1b      	ldrb	r3, [r3, #8]
    23d8:	461a      	mov	r2, r3
    23da:	79fb      	ldrb	r3, [r7, #7]
    23dc:	fb03 f302 	mul.w	r3, r3, r2
    23e0:	613b      	str	r3, [r7, #16]
    while (size--) *dest++=0;
    23e2:	e004      	b.n	23ee <gfx_scroll_up+0x5e>
    23e4:	697b      	ldr	r3, [r7, #20]
    23e6:	1c5a      	adds	r2, r3, #1
    23e8:	617a      	str	r2, [r7, #20]
    23ea:	2200      	movs	r2, #0
    23ec:	701a      	strb	r2, [r3, #0]
    23ee:	693b      	ldr	r3, [r7, #16]
    23f0:	1e5a      	subs	r2, r3, #1
    23f2:	613a      	str	r2, [r7, #16]
    23f4:	2b00      	cmp	r3, #0
    23f6:	d1f5      	bne.n	23e4 <gfx_scroll_up+0x54>
}
    23f8:	bf00      	nop
    23fa:	3718      	adds	r7, #24
    23fc:	46bd      	mov	sp, r7
    23fe:	bd80      	pop	{r7, pc}
    2400:	200026e0 	.word	0x200026e0

00002404 <gfx_scroll_down>:

void gfx_scroll_down(uint8_t n){
    2404:	b580      	push	{r7, lr}
    2406:	b086      	sub	sp, #24
    2408:	af00      	add	r7, sp, #0
    240a:	4603      	mov	r3, r0
    240c:	71fb      	strb	r3, [r7, #7]
    uint8_t *src,*dest;
    int size;
    vmode_params_t *vparams=get_video_params();
    240e:	f003 f83f 	bl	5490 <get_video_params>
    2412:	60f8      	str	r0, [r7, #12]
    src=&video_buffer[(vparams->vres-n)*vparams->bpr];
    2414:	68fb      	ldr	r3, [r7, #12]
    2416:	89db      	ldrh	r3, [r3, #14]
    2418:	461a      	mov	r2, r3
    241a:	79fb      	ldrb	r3, [r7, #7]
    241c:	1ad3      	subs	r3, r2, r3
    241e:	68fa      	ldr	r2, [r7, #12]
    2420:	7a12      	ldrb	r2, [r2, #8]
    2422:	fb02 f303 	mul.w	r3, r2, r3
    2426:	4a1a      	ldr	r2, [pc, #104]	; (2490 <gfx_scroll_down+0x8c>)
    2428:	4413      	add	r3, r2
    242a:	60bb      	str	r3, [r7, #8]
    dest=&video_buffer[vparams->vres*vparams->bpr];
    242c:	68fb      	ldr	r3, [r7, #12]
    242e:	89db      	ldrh	r3, [r3, #14]
    2430:	461a      	mov	r2, r3
    2432:	68fb      	ldr	r3, [r7, #12]
    2434:	7a1b      	ldrb	r3, [r3, #8]
    2436:	fb03 f302 	mul.w	r3, r3, r2
    243a:	4a15      	ldr	r2, [pc, #84]	; (2490 <gfx_scroll_down+0x8c>)
    243c:	4413      	add	r3, r2
    243e:	617b      	str	r3, [r7, #20]
    size = (vparams->vres-n)*vparams->bpr;
    2440:	68fb      	ldr	r3, [r7, #12]
    2442:	89db      	ldrh	r3, [r3, #14]
    2444:	461a      	mov	r2, r3
    2446:	79fb      	ldrb	r3, [r7, #7]
    2448:	1ad3      	subs	r3, r2, r3
    244a:	68fa      	ldr	r2, [r7, #12]
    244c:	7a12      	ldrb	r2, [r2, #8]
    244e:	fb02 f303 	mul.w	r3, r2, r3
    2452:	613b      	str	r3, [r7, #16]
    dest=move_up(src,dest,size);
    2454:	693a      	ldr	r2, [r7, #16]
    2456:	6979      	ldr	r1, [r7, #20]
    2458:	68b8      	ldr	r0, [r7, #8]
    245a:	f7ff ff63 	bl	2324 <move_up>
    245e:	6178      	str	r0, [r7, #20]
    size=vparams->bpr*n;
    2460:	68fb      	ldr	r3, [r7, #12]
    2462:	7a1b      	ldrb	r3, [r3, #8]
    2464:	461a      	mov	r2, r3
    2466:	79fb      	ldrb	r3, [r7, #7]
    2468:	fb03 f302 	mul.w	r3, r3, r2
    246c:	613b      	str	r3, [r7, #16]
    while (size--) *--dest=0;
    246e:	e005      	b.n	247c <gfx_scroll_down+0x78>
    2470:	697b      	ldr	r3, [r7, #20]
    2472:	3b01      	subs	r3, #1
    2474:	617b      	str	r3, [r7, #20]
    2476:	697b      	ldr	r3, [r7, #20]
    2478:	2200      	movs	r2, #0
    247a:	701a      	strb	r2, [r3, #0]
    247c:	693b      	ldr	r3, [r7, #16]
    247e:	1e5a      	subs	r2, r3, #1
    2480:	613a      	str	r2, [r7, #16]
    2482:	2b00      	cmp	r3, #0
    2484:	d1f4      	bne.n	2470 <gfx_scroll_down+0x6c>
}
    2486:	bf00      	nop
    2488:	3718      	adds	r7, #24
    248a:	46bd      	mov	sp, r7
    248c:	bd80      	pop	{r7, pc}
    248e:	bf00      	nop
    2490:	200026e0 	.word	0x200026e0

00002494 <gfx_scroll_left>:

// pixels shift is 2*n
void gfx_scroll_left(uint8_t n){
    2494:	b580      	push	{r7, lr}
    2496:	b088      	sub	sp, #32
    2498:	af00      	add	r7, sp, #0
    249a:	4603      	mov	r3, r0
    249c:	71fb      	strb	r3, [r7, #7]
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    249e:	f002 fff7 	bl	5490 <get_video_params>
    24a2:	6138      	str	r0, [r7, #16]
    for (y=0;y<vparams->vres;y++){
    24a4:	2300      	movs	r3, #0
    24a6:	61fb      	str	r3, [r7, #28]
    24a8:	e02a      	b.n	2500 <gfx_scroll_left+0x6c>
        dest=&video_buffer[y*vparams->bpr];
    24aa:	693b      	ldr	r3, [r7, #16]
    24ac:	7a1b      	ldrb	r3, [r3, #8]
    24ae:	461a      	mov	r2, r3
    24b0:	69fb      	ldr	r3, [r7, #28]
    24b2:	fb03 f302 	mul.w	r3, r3, r2
    24b6:	4a17      	ldr	r2, [pc, #92]	; (2514 <gfx_scroll_left+0x80>)
    24b8:	4413      	add	r3, r2
    24ba:	617b      	str	r3, [r7, #20]
        src=dest+n;
    24bc:	79fb      	ldrb	r3, [r7, #7]
    24be:	697a      	ldr	r2, [r7, #20]
    24c0:	4413      	add	r3, r2
    24c2:	60fb      	str	r3, [r7, #12]
        size=vparams->hres/2-n;
    24c4:	693b      	ldr	r3, [r7, #16]
    24c6:	899b      	ldrh	r3, [r3, #12]
    24c8:	085b      	lsrs	r3, r3, #1
    24ca:	b29b      	uxth	r3, r3
    24cc:	461a      	mov	r2, r3
    24ce:	79fb      	ldrb	r3, [r7, #7]
    24d0:	1ad3      	subs	r3, r2, r3
    24d2:	61bb      	str	r3, [r7, #24]
        dest=move_down(src,dest,size);
    24d4:	69ba      	ldr	r2, [r7, #24]
    24d6:	6979      	ldr	r1, [r7, #20]
    24d8:	68f8      	ldr	r0, [r7, #12]
    24da:	f7ff ff3f 	bl	235c <move_down>
    24de:	6178      	str	r0, [r7, #20]
        size=n;
    24e0:	79fb      	ldrb	r3, [r7, #7]
    24e2:	61bb      	str	r3, [r7, #24]
        while (size--) *dest++=0;
    24e4:	e004      	b.n	24f0 <gfx_scroll_left+0x5c>
    24e6:	697b      	ldr	r3, [r7, #20]
    24e8:	1c5a      	adds	r2, r3, #1
    24ea:	617a      	str	r2, [r7, #20]
    24ec:	2200      	movs	r2, #0
    24ee:	701a      	strb	r2, [r3, #0]
    24f0:	69bb      	ldr	r3, [r7, #24]
    24f2:	1e5a      	subs	r2, r3, #1
    24f4:	61ba      	str	r2, [r7, #24]
    24f6:	2b00      	cmp	r3, #0
    24f8:	d1f5      	bne.n	24e6 <gfx_scroll_left+0x52>
    for (y=0;y<vparams->vres;y++){
    24fa:	69fb      	ldr	r3, [r7, #28]
    24fc:	3301      	adds	r3, #1
    24fe:	61fb      	str	r3, [r7, #28]
    2500:	693b      	ldr	r3, [r7, #16]
    2502:	89db      	ldrh	r3, [r3, #14]
    2504:	461a      	mov	r2, r3
    2506:	69fb      	ldr	r3, [r7, #28]
    2508:	429a      	cmp	r2, r3
    250a:	dcce      	bgt.n	24aa <gfx_scroll_left+0x16>
    }
}
    250c:	bf00      	nop
    250e:	3720      	adds	r7, #32
    2510:	46bd      	mov	sp, r7
    2512:	bd80      	pop	{r7, pc}
    2514:	200026e0 	.word	0x200026e0

00002518 <gfx_scroll_right>:

// pixels shift is 2*n
void gfx_scroll_right(uint8_t n){
    2518:	b580      	push	{r7, lr}
    251a:	b088      	sub	sp, #32
    251c:	af00      	add	r7, sp, #0
    251e:	4603      	mov	r3, r0
    2520:	71fb      	strb	r3, [r7, #7]
    int y,size;
    uint8_t *src, *dest;
    vmode_params_t *vparams=get_video_params();
    2522:	f002 ffb5 	bl	5490 <get_video_params>
    2526:	6138      	str	r0, [r7, #16]
    for (y=0;y<vparams->vres;y++){
    2528:	2300      	movs	r3, #0
    252a:	61fb      	str	r3, [r7, #28]
    252c:	e02f      	b.n	258e <gfx_scroll_right+0x76>
        dest=&video_buffer[y*vparams->bpr]+vparams->bpr;
    252e:	693b      	ldr	r3, [r7, #16]
    2530:	7a1b      	ldrb	r3, [r3, #8]
    2532:	461a      	mov	r2, r3
    2534:	69fb      	ldr	r3, [r7, #28]
    2536:	fb03 f302 	mul.w	r3, r3, r2
    253a:	4a1a      	ldr	r2, [pc, #104]	; (25a4 <gfx_scroll_right+0x8c>)
    253c:	4413      	add	r3, r2
    253e:	693a      	ldr	r2, [r7, #16]
    2540:	7a12      	ldrb	r2, [r2, #8]
    2542:	4413      	add	r3, r2
    2544:	617b      	str	r3, [r7, #20]
        src=dest-n;
    2546:	79fb      	ldrb	r3, [r7, #7]
    2548:	425b      	negs	r3, r3
    254a:	697a      	ldr	r2, [r7, #20]
    254c:	4413      	add	r3, r2
    254e:	60fb      	str	r3, [r7, #12]
        size=vparams->hres/2-n;
    2550:	693b      	ldr	r3, [r7, #16]
    2552:	899b      	ldrh	r3, [r3, #12]
    2554:	085b      	lsrs	r3, r3, #1
    2556:	b29b      	uxth	r3, r3
    2558:	461a      	mov	r2, r3
    255a:	79fb      	ldrb	r3, [r7, #7]
    255c:	1ad3      	subs	r3, r2, r3
    255e:	61bb      	str	r3, [r7, #24]
        dest=move_up(src,dest,size);
    2560:	69ba      	ldr	r2, [r7, #24]
    2562:	6979      	ldr	r1, [r7, #20]
    2564:	68f8      	ldr	r0, [r7, #12]
    2566:	f7ff fedd 	bl	2324 <move_up>
    256a:	6178      	str	r0, [r7, #20]
        size=n;
    256c:	79fb      	ldrb	r3, [r7, #7]
    256e:	61bb      	str	r3, [r7, #24]
        while (size--) *--dest=0;
    2570:	e005      	b.n	257e <gfx_scroll_right+0x66>
    2572:	697b      	ldr	r3, [r7, #20]
    2574:	3b01      	subs	r3, #1
    2576:	617b      	str	r3, [r7, #20]
    2578:	697b      	ldr	r3, [r7, #20]
    257a:	2200      	movs	r2, #0
    257c:	701a      	strb	r2, [r3, #0]
    257e:	69bb      	ldr	r3, [r7, #24]
    2580:	1e5a      	subs	r2, r3, #1
    2582:	61ba      	str	r2, [r7, #24]
    2584:	2b00      	cmp	r3, #0
    2586:	d1f4      	bne.n	2572 <gfx_scroll_right+0x5a>
    for (y=0;y<vparams->vres;y++){
    2588:	69fb      	ldr	r3, [r7, #28]
    258a:	3301      	adds	r3, #1
    258c:	61fb      	str	r3, [r7, #28]
    258e:	693b      	ldr	r3, [r7, #16]
    2590:	89db      	ldrh	r3, [r3, #14]
    2592:	461a      	mov	r2, r3
    2594:	69fb      	ldr	r3, [r7, #28]
    2596:	429a      	cmp	r2, r3
    2598:	dcc9      	bgt.n	252e <gfx_scroll_right+0x16>
    }
}
    259a:	bf00      	nop
    259c:	3720      	adds	r7, #32
    259e:	46bd      	mov	sp, r7
    25a0:	bd80      	pop	{r7, pc}
    25a2:	bf00      	nop
    25a4:	200026e0 	.word	0x200026e0

000025a8 <gfx_get_pixel>:


uint8_t gfx_get_pixel(int x, int y){
    25a8:	b590      	push	{r4, r7, lr}
    25aa:	b085      	sub	sp, #20
    25ac:	af00      	add	r7, sp, #0
    25ae:	6078      	str	r0, [r7, #4]
    25b0:	6039      	str	r1, [r7, #0]
    register uint8_t byte;
    vmode_params_t *vparams=get_video_params();
    25b2:	f002 ff6d 	bl	5490 <get_video_params>
    25b6:	60f8      	str	r0, [r7, #12]
    if (x<0 || x>=vparams->hres || y<0 || y>=vparams->vres) return 255;
    25b8:	687b      	ldr	r3, [r7, #4]
    25ba:	2b00      	cmp	r3, #0
    25bc:	db0e      	blt.n	25dc <gfx_get_pixel+0x34>
    25be:	68fb      	ldr	r3, [r7, #12]
    25c0:	899b      	ldrh	r3, [r3, #12]
    25c2:	461a      	mov	r2, r3
    25c4:	687b      	ldr	r3, [r7, #4]
    25c6:	429a      	cmp	r2, r3
    25c8:	dd08      	ble.n	25dc <gfx_get_pixel+0x34>
    25ca:	683b      	ldr	r3, [r7, #0]
    25cc:	2b00      	cmp	r3, #0
    25ce:	db05      	blt.n	25dc <gfx_get_pixel+0x34>
    25d0:	68fb      	ldr	r3, [r7, #12]
    25d2:	89db      	ldrh	r3, [r3, #14]
    25d4:	461a      	mov	r2, r3
    25d6:	683b      	ldr	r3, [r7, #0]
    25d8:	429a      	cmp	r2, r3
    25da:	dc01      	bgt.n	25e0 <gfx_get_pixel+0x38>
    25dc:	23ff      	movs	r3, #255	; 0xff
    25de:	e014      	b.n	260a <gfx_get_pixel+0x62>
    byte=video_buffer[y*vparams->bpr+(x>>1)];
    25e0:	68fb      	ldr	r3, [r7, #12]
    25e2:	7a1b      	ldrb	r3, [r3, #8]
    25e4:	461a      	mov	r2, r3
    25e6:	683b      	ldr	r3, [r7, #0]
    25e8:	fb03 f202 	mul.w	r2, r3, r2
    25ec:	687b      	ldr	r3, [r7, #4]
    25ee:	105b      	asrs	r3, r3, #1
    25f0:	4413      	add	r3, r2
    25f2:	4a08      	ldr	r2, [pc, #32]	; (2614 <gfx_get_pixel+0x6c>)
    25f4:	5cd4      	ldrb	r4, [r2, r3]
    if (!(x&1)) byte>>=4;
    25f6:	687b      	ldr	r3, [r7, #4]
    25f8:	f003 0301 	and.w	r3, r3, #1
    25fc:	2b00      	cmp	r3, #0
    25fe:	d101      	bne.n	2604 <gfx_get_pixel+0x5c>
    2600:	0923      	lsrs	r3, r4, #4
    2602:	b2dc      	uxtb	r4, r3
    return byte&0xf;
    2604:	f004 030f 	and.w	r3, r4, #15
    2608:	b2db      	uxtb	r3, r3
}
    260a:	4618      	mov	r0, r3
    260c:	3714      	adds	r7, #20
    260e:	46bd      	mov	sp, r7
    2610:	bd90      	pop	{r4, r7, pc}
    2612:	bf00      	nop
    2614:	200026e0 	.word	0x200026e0

00002618 <gfx_sprite>:

static const uint8_t bit_mask[5]={0,128,0xc0,0,0xf0};
static const uint8_t bit_shift[5]={0,7,6,0,4};
// put sprite on screen using BIT_XOR
int gfx_sprite(int x, int y, uint8_t width, uint8_t height, const uint8_t *sprite){
    2618:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    261c:	b086      	sub	sp, #24
    261e:	af00      	add	r7, sp, #0
    2620:	60f8      	str	r0, [r7, #12]
    2622:	60b9      	str	r1, [r7, #8]
    2624:	4611      	mov	r1, r2
    2626:	461a      	mov	r2, r3
    2628:	460b      	mov	r3, r1
    262a:	71fb      	strb	r3, [r7, #7]
    262c:	4613      	mov	r3, r2
    262e:	71bb      	strb	r3, [r7, #6]
    register uint8_t color,bmp_byte,mask,shift,ppb;
    register int x0,y0;
    int collision=0;
    2630:	2300      	movs	r3, #0
    2632:	617b      	str	r3, [r7, #20]

    shift=bit_shift[sprite_bpp];
    2634:	4b34      	ldr	r3, [pc, #208]	; (2708 <gfx_sprite+0xf0>)
    2636:	781b      	ldrb	r3, [r3, #0]
    2638:	461a      	mov	r2, r3
    263a:	4b34      	ldr	r3, [pc, #208]	; (270c <gfx_sprite+0xf4>)
    263c:	f813 a002 	ldrb.w	sl, [r3, r2]
    bmp_byte=*sprite++;
    2640:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    2642:	1c5a      	adds	r2, r3, #1
    2644:	63ba      	str	r2, [r7, #56]	; 0x38
    2646:	781c      	ldrb	r4, [r3, #0]
    mask=bit_mask[sprite_bpp];
    2648:	4b2f      	ldr	r3, [pc, #188]	; (2708 <gfx_sprite+0xf0>)
    264a:	781b      	ldrb	r3, [r3, #0]
    264c:	461a      	mov	r2, r3
    264e:	4b30      	ldr	r3, [pc, #192]	; (2710 <gfx_sprite+0xf8>)
    2650:	f813 8002 	ldrb.w	r8, [r3, r2]
    ppb=8/sprite_bpp;
    2654:	4b2c      	ldr	r3, [pc, #176]	; (2708 <gfx_sprite+0xf0>)
    2656:	781b      	ldrb	r3, [r3, #0]
    2658:	461a      	mov	r2, r3
    265a:	2308      	movs	r3, #8
    265c:	fb93 f3f2 	sdiv	r3, r3, r2
    2660:	b2de      	uxtb	r6, r3
    for (y0=y;y0<(y+height);y0++){
    2662:	68bd      	ldr	r5, [r7, #8]
    2664:	e045      	b.n	26f2 <gfx_sprite+0xda>
        for(x0=x;x0<(x+width);x0++){
    2666:	68fb      	ldr	r3, [r7, #12]
    2668:	603b      	str	r3, [r7, #0]
    266a:	e03b      	b.n	26e4 <gfx_sprite+0xcc>
            if (sprite_bpp<4){
    266c:	4b26      	ldr	r3, [pc, #152]	; (2708 <gfx_sprite+0xf0>)
    266e:	781b      	ldrb	r3, [r3, #0]
    2670:	2b03      	cmp	r3, #3
    2672:	d80a      	bhi.n	268a <gfx_sprite+0x72>
                color=palette[(bmp_byte&mask)>>shift];
    2674:	ea04 0308 	and.w	r3, r4, r8
    2678:	b2db      	uxtb	r3, r3
    267a:	461a      	mov	r2, r3
    267c:	4653      	mov	r3, sl
    267e:	fa42 f303 	asr.w	r3, r2, r3
    2682:	4a24      	ldr	r2, [pc, #144]	; (2714 <gfx_sprite+0xfc>)
    2684:	f812 9003 	ldrb.w	r9, [r2, r3]
    2688:	e008      	b.n	269c <gfx_sprite+0x84>
            }else{
                color=(bmp_byte&mask)>>shift;
    268a:	ea04 0308 	and.w	r3, r4, r8
    268e:	b2db      	uxtb	r3, r3
    2690:	461a      	mov	r2, r3
    2692:	4653      	mov	r3, sl
    2694:	fa42 f303 	asr.w	r3, r2, r3
    2698:	fa5f f983 	uxtb.w	r9, r3
            }
            collision|=gfx_blit(x0,y0,color,BIT_XOR);
    269c:	2302      	movs	r3, #2
    269e:	464a      	mov	r2, r9
    26a0:	4629      	mov	r1, r5
    26a2:	6838      	ldr	r0, [r7, #0]
    26a4:	f7ff fd48 	bl	2138 <gfx_blit>
    26a8:	4602      	mov	r2, r0
    26aa:	697b      	ldr	r3, [r7, #20]
    26ac:	4313      	orrs	r3, r2
    26ae:	617b      	str	r3, [r7, #20]
            bmp_byte<<=(8-shift);
    26b0:	4622      	mov	r2, r4
    26b2:	4653      	mov	r3, sl
    26b4:	f1c3 0308 	rsb	r3, r3, #8
    26b8:	fa02 f303 	lsl.w	r3, r2, r3
    26bc:	b2dc      	uxtb	r4, r3
            ppb--;
    26be:	4633      	mov	r3, r6
    26c0:	3b01      	subs	r3, #1
    26c2:	b2de      	uxtb	r6, r3
            if (!ppb){
    26c4:	2e00      	cmp	r6, #0
    26c6:	d10a      	bne.n	26de <gfx_sprite+0xc6>
                bmp_byte=*sprite++;
    26c8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    26ca:	1c5a      	adds	r2, r3, #1
    26cc:	63ba      	str	r2, [r7, #56]	; 0x38
    26ce:	781c      	ldrb	r4, [r3, #0]
                ppb=8/sprite_bpp;
    26d0:	4b0d      	ldr	r3, [pc, #52]	; (2708 <gfx_sprite+0xf0>)
    26d2:	781b      	ldrb	r3, [r3, #0]
    26d4:	461a      	mov	r2, r3
    26d6:	2308      	movs	r3, #8
    26d8:	fb93 f3f2 	sdiv	r3, r3, r2
    26dc:	b2de      	uxtb	r6, r3
        for(x0=x;x0<(x+width);x0++){
    26de:	683b      	ldr	r3, [r7, #0]
    26e0:	3301      	adds	r3, #1
    26e2:	603b      	str	r3, [r7, #0]
    26e4:	79fa      	ldrb	r2, [r7, #7]
    26e6:	68fb      	ldr	r3, [r7, #12]
    26e8:	4413      	add	r3, r2
    26ea:	683a      	ldr	r2, [r7, #0]
    26ec:	4293      	cmp	r3, r2
    26ee:	dcbd      	bgt.n	266c <gfx_sprite+0x54>
    for (y0=y;y0<(y+height);y0++){
    26f0:	3501      	adds	r5, #1
    26f2:	79ba      	ldrb	r2, [r7, #6]
    26f4:	68bb      	ldr	r3, [r7, #8]
    26f6:	4413      	add	r3, r2
    26f8:	42ab      	cmp	r3, r5
    26fa:	dcb4      	bgt.n	2666 <gfx_sprite+0x4e>
            }
        }
    }
    return collision;
    26fc:	697b      	ldr	r3, [r7, #20]
}
    26fe:	4618      	mov	r0, r3
    2700:	3718      	adds	r7, #24
    2702:	46bd      	mov	sp, r7
    2704:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    2708:	20000190 	.word	0x20000190
    270c:	00005960 	.word	0x00005960
    2710:	00005958 	.word	0x00005958
    2714:	20000194 	.word	0x20000194

00002718 <set_sysclock>:
//void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
    2718:	b480      	push	{r7}
    271a:	af00      	add	r7, sp, #0
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
    271c:	4a18      	ldr	r2, [pc, #96]	; (2780 <set_sysclock+0x68>)
    271e:	4b18      	ldr	r3, [pc, #96]	; (2780 <set_sysclock+0x68>)
    2720:	681b      	ldr	r3, [r3, #0]
    2722:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2726:	6013      	str	r3, [r2, #0]
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
    2728:	bf00      	nop
    272a:	4b15      	ldr	r3, [pc, #84]	; (2780 <set_sysclock+0x68>)
    272c:	681b      	ldr	r3, [r3, #0]
    272e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    2732:	2b00      	cmp	r3, #0
    2734:	d0f9      	beq.n	272a <set_sysclock+0x12>
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    2736:	4a12      	ldr	r2, [pc, #72]	; (2780 <set_sysclock+0x68>)
    2738:	4b11      	ldr	r3, [pc, #68]	; (2780 <set_sysclock+0x68>)
    273a:	685b      	ldr	r3, [r3, #4]
    273c:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    2740:	6053      	str	r3, [r2, #4]
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    2742:	4a0f      	ldr	r2, [pc, #60]	; (2780 <set_sysclock+0x68>)
    2744:	4b0e      	ldr	r3, [pc, #56]	; (2780 <set_sysclock+0x68>)
    2746:	681b      	ldr	r3, [r3, #0]
    2748:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    274c:	6013      	str	r3, [r2, #0]
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    274e:	bf00      	nop
    2750:	4b0b      	ldr	r3, [pc, #44]	; (2780 <set_sysclock+0x68>)
    2752:	681b      	ldr	r3, [r3, #0]
    2754:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    2758:	2b00      	cmp	r3, #0
    275a:	d0f9      	beq.n	2750 <set_sysclock+0x38>
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    275c:	4a09      	ldr	r2, [pc, #36]	; (2784 <set_sysclock+0x6c>)
    275e:	4b09      	ldr	r3, [pc, #36]	; (2784 <set_sysclock+0x6c>)
    2760:	681b      	ldr	r3, [r3, #0]
    2762:	f043 0312 	orr.w	r3, r3, #18
    2766:	6013      	str	r3, [r2, #0]
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    2768:	4a05      	ldr	r2, [pc, #20]	; (2780 <set_sysclock+0x68>)
    276a:	4b05      	ldr	r3, [pc, #20]	; (2780 <set_sysclock+0x68>)
    276c:	685b      	ldr	r3, [r3, #4]
    276e:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    2772:	f043 0302 	orr.w	r3, r3, #2
    2776:	6053      	str	r3, [r2, #4]
}
    2778:	bf00      	nop
    277a:	46bd      	mov	sp, r7
    277c:	bc80      	pop	{r7}
    277e:	4770      	bx	lr
    2780:	40021000 	.word	0x40021000
    2784:	40022000 	.word	0x40022000

00002788 <draw_balls>:
}ball_t;

#define BALL_COUNT 2
ball_t balls[BALL_COUNT];

void draw_balls(){
    2788:	b590      	push	{r4, r7, lr}
    278a:	b085      	sub	sp, #20
    278c:	af02      	add	r7, sp, #8
	int i;
	frame_sync();
    278e:	f002 fdc7 	bl	5320 <frame_sync>
	for (i=0;i<BALL_COUNT;i++){
    2792:	2300      	movs	r3, #0
    2794:	607b      	str	r3, [r7, #4]
    2796:	e022      	b.n	27de <draw_balls+0x56>
		gfx_sprite(balls[i].x,balls[i].y,8,8,balls[i].ball_sprite);
    2798:	4915      	ldr	r1, [pc, #84]	; (27f0 <draw_balls+0x68>)
    279a:	687a      	ldr	r2, [r7, #4]
    279c:	4613      	mov	r3, r2
    279e:	009b      	lsls	r3, r3, #2
    27a0:	4413      	add	r3, r2
    27a2:	009b      	lsls	r3, r3, #2
    27a4:	440b      	add	r3, r1
    27a6:	6818      	ldr	r0, [r3, #0]
    27a8:	4911      	ldr	r1, [pc, #68]	; (27f0 <draw_balls+0x68>)
    27aa:	687a      	ldr	r2, [r7, #4]
    27ac:	4613      	mov	r3, r2
    27ae:	009b      	lsls	r3, r3, #2
    27b0:	4413      	add	r3, r2
    27b2:	009b      	lsls	r3, r3, #2
    27b4:	440b      	add	r3, r1
    27b6:	3304      	adds	r3, #4
    27b8:	681c      	ldr	r4, [r3, #0]
    27ba:	490d      	ldr	r1, [pc, #52]	; (27f0 <draw_balls+0x68>)
    27bc:	687a      	ldr	r2, [r7, #4]
    27be:	4613      	mov	r3, r2
    27c0:	009b      	lsls	r3, r3, #2
    27c2:	4413      	add	r3, r2
    27c4:	009b      	lsls	r3, r3, #2
    27c6:	440b      	add	r3, r1
    27c8:	3310      	adds	r3, #16
    27ca:	681b      	ldr	r3, [r3, #0]
    27cc:	9300      	str	r3, [sp, #0]
    27ce:	2308      	movs	r3, #8
    27d0:	2208      	movs	r2, #8
    27d2:	4621      	mov	r1, r4
    27d4:	f7ff ff20 	bl	2618 <gfx_sprite>
	for (i=0;i<BALL_COUNT;i++){
    27d8:	687b      	ldr	r3, [r7, #4]
    27da:	3301      	adds	r3, #1
    27dc:	607b      	str	r3, [r7, #4]
    27de:	687b      	ldr	r3, [r7, #4]
    27e0:	2b01      	cmp	r3, #1
    27e2:	ddd9      	ble.n	2798 <draw_balls+0x10>
	}
	wait_sync_end();
    27e4:	f002 fdac 	bl	5340 <wait_sync_end>
}
    27e8:	bf00      	nop
    27ea:	370c      	adds	r7, #12
    27ec:	46bd      	mov	sp, r7
    27ee:	bd90      	pop	{r4, r7, pc}
    27f0:	200026b8 	.word	0x200026b8

000027f4 <isqrt>:

//REF: https://en.wikipedia.org/wiki/Integer_square_root
int isqrt(int n){
    27f4:	b580      	push	{r7, lr}
    27f6:	b084      	sub	sp, #16
    27f8:	af00      	add	r7, sp, #0
    27fa:	6078      	str	r0, [r7, #4]
	int small, large;
	if (n<2) return n;
    27fc:	687b      	ldr	r3, [r7, #4]
    27fe:	2b01      	cmp	r3, #1
    2800:	dc01      	bgt.n	2806 <isqrt+0x12>
    2802:	687b      	ldr	r3, [r7, #4]
    2804:	e014      	b.n	2830 <isqrt+0x3c>
  	small = isqrt(n >> 2) << 1;
    2806:	687b      	ldr	r3, [r7, #4]
    2808:	109b      	asrs	r3, r3, #2
    280a:	4618      	mov	r0, r3
    280c:	f7ff fff2 	bl	27f4 <isqrt>
    2810:	4603      	mov	r3, r0
    2812:	005b      	lsls	r3, r3, #1
    2814:	60fb      	str	r3, [r7, #12]
	large = small + 1;
    2816:	68fb      	ldr	r3, [r7, #12]
    2818:	3301      	adds	r3, #1
    281a:	60bb      	str	r3, [r7, #8]
	if (large*large > n)
    281c:	68bb      	ldr	r3, [r7, #8]
    281e:	68ba      	ldr	r2, [r7, #8]
    2820:	fb02 f203 	mul.w	r2, r2, r3
    2824:	687b      	ldr	r3, [r7, #4]
    2826:	429a      	cmp	r2, r3
    2828:	dd01      	ble.n	282e <isqrt+0x3a>
		return small;
    282a:	68fb      	ldr	r3, [r7, #12]
    282c:	e000      	b.n	2830 <isqrt+0x3c>
	else
		return large;	
    282e:	68bb      	ldr	r3, [r7, #8]
}
    2830:	4618      	mov	r0, r3
    2832:	3710      	adds	r7, #16
    2834:	46bd      	mov	sp, r7
    2836:	bd80      	pop	{r7, pc}

00002838 <distance>:

unsigned distance(ball_t *ball1, ball_t *ball2){
    2838:	b580      	push	{r7, lr}
    283a:	b082      	sub	sp, #8
    283c:	af00      	add	r7, sp, #0
    283e:	6078      	str	r0, [r7, #4]
    2840:	6039      	str	r1, [r7, #0]
	return isqrt(abs(ball1->x*ball2->x+ball1->y*ball2->y));
    2842:	687b      	ldr	r3, [r7, #4]
    2844:	681b      	ldr	r3, [r3, #0]
    2846:	683a      	ldr	r2, [r7, #0]
    2848:	6812      	ldr	r2, [r2, #0]
    284a:	fb02 f203 	mul.w	r2, r2, r3
    284e:	687b      	ldr	r3, [r7, #4]
    2850:	685b      	ldr	r3, [r3, #4]
    2852:	6839      	ldr	r1, [r7, #0]
    2854:	6849      	ldr	r1, [r1, #4]
    2856:	fb01 f303 	mul.w	r3, r1, r3
    285a:	4413      	add	r3, r2
    285c:	2b00      	cmp	r3, #0
    285e:	bfb8      	it	lt
    2860:	425b      	neglt	r3, r3
    2862:	4618      	mov	r0, r3
    2864:	f7ff ffc6 	bl	27f4 <isqrt>
    2868:	4603      	mov	r3, r0
}
    286a:	4618      	mov	r0, r3
    286c:	3708      	adds	r7, #8
    286e:	46bd      	mov	sp, r7
    2870:	bd80      	pop	{r7, pc}

00002872 <move_balls>:

void move_balls(){
    2872:	b580      	push	{r7, lr}
    2874:	b082      	sub	sp, #8
    2876:	af00      	add	r7, sp, #0
	int i;
	vmode_params_t *vparams=get_video_params();
    2878:	f002 fe0a 	bl	5490 <get_video_params>
    287c:	6038      	str	r0, [r7, #0]
	for (i=0;i<BALL_COUNT;i++){
    287e:	2300      	movs	r3, #0
    2880:	607b      	str	r3, [r7, #4]
    2882:	e0c3      	b.n	2a0c <move_balls+0x19a>
		balls[i].x+=balls[i].dx;
    2884:	4979      	ldr	r1, [pc, #484]	; (2a6c <move_balls+0x1fa>)
    2886:	687a      	ldr	r2, [r7, #4]
    2888:	4613      	mov	r3, r2
    288a:	009b      	lsls	r3, r3, #2
    288c:	4413      	add	r3, r2
    288e:	009b      	lsls	r3, r3, #2
    2890:	440b      	add	r3, r1
    2892:	6819      	ldr	r1, [r3, #0]
    2894:	4875      	ldr	r0, [pc, #468]	; (2a6c <move_balls+0x1fa>)
    2896:	687a      	ldr	r2, [r7, #4]
    2898:	4613      	mov	r3, r2
    289a:	009b      	lsls	r3, r3, #2
    289c:	4413      	add	r3, r2
    289e:	009b      	lsls	r3, r3, #2
    28a0:	4403      	add	r3, r0
    28a2:	3308      	adds	r3, #8
    28a4:	681b      	ldr	r3, [r3, #0]
    28a6:	4419      	add	r1, r3
    28a8:	4870      	ldr	r0, [pc, #448]	; (2a6c <move_balls+0x1fa>)
    28aa:	687a      	ldr	r2, [r7, #4]
    28ac:	4613      	mov	r3, r2
    28ae:	009b      	lsls	r3, r3, #2
    28b0:	4413      	add	r3, r2
    28b2:	009b      	lsls	r3, r3, #2
    28b4:	4403      	add	r3, r0
    28b6:	6019      	str	r1, [r3, #0]
		if ((balls[i].x<-7)||(balls[i].x>=vparams->hres)){
    28b8:	496c      	ldr	r1, [pc, #432]	; (2a6c <move_balls+0x1fa>)
    28ba:	687a      	ldr	r2, [r7, #4]
    28bc:	4613      	mov	r3, r2
    28be:	009b      	lsls	r3, r3, #2
    28c0:	4413      	add	r3, r2
    28c2:	009b      	lsls	r3, r3, #2
    28c4:	440b      	add	r3, r1
    28c6:	681b      	ldr	r3, [r3, #0]
    28c8:	f113 0f07 	cmn.w	r3, #7
    28cc:	db0b      	blt.n	28e6 <move_balls+0x74>
    28ce:	4967      	ldr	r1, [pc, #412]	; (2a6c <move_balls+0x1fa>)
    28d0:	687a      	ldr	r2, [r7, #4]
    28d2:	4613      	mov	r3, r2
    28d4:	009b      	lsls	r3, r3, #2
    28d6:	4413      	add	r3, r2
    28d8:	009b      	lsls	r3, r3, #2
    28da:	440b      	add	r3, r1
    28dc:	681b      	ldr	r3, [r3, #0]
    28de:	683a      	ldr	r2, [r7, #0]
    28e0:	8992      	ldrh	r2, [r2, #12]
    28e2:	4293      	cmp	r3, r2
    28e4:	db2c      	blt.n	2940 <move_balls+0xce>
			balls[i].dx=-balls[i].dx;
    28e6:	4961      	ldr	r1, [pc, #388]	; (2a6c <move_balls+0x1fa>)
    28e8:	687a      	ldr	r2, [r7, #4]
    28ea:	4613      	mov	r3, r2
    28ec:	009b      	lsls	r3, r3, #2
    28ee:	4413      	add	r3, r2
    28f0:	009b      	lsls	r3, r3, #2
    28f2:	440b      	add	r3, r1
    28f4:	3308      	adds	r3, #8
    28f6:	681b      	ldr	r3, [r3, #0]
    28f8:	4259      	negs	r1, r3
    28fa:	485c      	ldr	r0, [pc, #368]	; (2a6c <move_balls+0x1fa>)
    28fc:	687a      	ldr	r2, [r7, #4]
    28fe:	4613      	mov	r3, r2
    2900:	009b      	lsls	r3, r3, #2
    2902:	4413      	add	r3, r2
    2904:	009b      	lsls	r3, r3, #2
    2906:	4403      	add	r3, r0
    2908:	3308      	adds	r3, #8
    290a:	6019      	str	r1, [r3, #0]
			balls[i].x+=balls[i].dx;
    290c:	4957      	ldr	r1, [pc, #348]	; (2a6c <move_balls+0x1fa>)
    290e:	687a      	ldr	r2, [r7, #4]
    2910:	4613      	mov	r3, r2
    2912:	009b      	lsls	r3, r3, #2
    2914:	4413      	add	r3, r2
    2916:	009b      	lsls	r3, r3, #2
    2918:	440b      	add	r3, r1
    291a:	6819      	ldr	r1, [r3, #0]
    291c:	4853      	ldr	r0, [pc, #332]	; (2a6c <move_balls+0x1fa>)
    291e:	687a      	ldr	r2, [r7, #4]
    2920:	4613      	mov	r3, r2
    2922:	009b      	lsls	r3, r3, #2
    2924:	4413      	add	r3, r2
    2926:	009b      	lsls	r3, r3, #2
    2928:	4403      	add	r3, r0
    292a:	3308      	adds	r3, #8
    292c:	681b      	ldr	r3, [r3, #0]
    292e:	4419      	add	r1, r3
    2930:	484e      	ldr	r0, [pc, #312]	; (2a6c <move_balls+0x1fa>)
    2932:	687a      	ldr	r2, [r7, #4]
    2934:	4613      	mov	r3, r2
    2936:	009b      	lsls	r3, r3, #2
    2938:	4413      	add	r3, r2
    293a:	009b      	lsls	r3, r3, #2
    293c:	4403      	add	r3, r0
    293e:	6019      	str	r1, [r3, #0]
		}
		balls[i].y+=balls[i].dy;
    2940:	494a      	ldr	r1, [pc, #296]	; (2a6c <move_balls+0x1fa>)
    2942:	687a      	ldr	r2, [r7, #4]
    2944:	4613      	mov	r3, r2
    2946:	009b      	lsls	r3, r3, #2
    2948:	4413      	add	r3, r2
    294a:	009b      	lsls	r3, r3, #2
    294c:	440b      	add	r3, r1
    294e:	3304      	adds	r3, #4
    2950:	6819      	ldr	r1, [r3, #0]
    2952:	4846      	ldr	r0, [pc, #280]	; (2a6c <move_balls+0x1fa>)
    2954:	687a      	ldr	r2, [r7, #4]
    2956:	4613      	mov	r3, r2
    2958:	009b      	lsls	r3, r3, #2
    295a:	4413      	add	r3, r2
    295c:	009b      	lsls	r3, r3, #2
    295e:	4403      	add	r3, r0
    2960:	330c      	adds	r3, #12
    2962:	681b      	ldr	r3, [r3, #0]
    2964:	4419      	add	r1, r3
    2966:	4841      	ldr	r0, [pc, #260]	; (2a6c <move_balls+0x1fa>)
    2968:	687a      	ldr	r2, [r7, #4]
    296a:	4613      	mov	r3, r2
    296c:	009b      	lsls	r3, r3, #2
    296e:	4413      	add	r3, r2
    2970:	009b      	lsls	r3, r3, #2
    2972:	4403      	add	r3, r0
    2974:	3304      	adds	r3, #4
    2976:	6019      	str	r1, [r3, #0]
		if ((balls[i].y<(2*CHAR_HEIGHT))||(balls[i].y>=vparams->vres)){
    2978:	493c      	ldr	r1, [pc, #240]	; (2a6c <move_balls+0x1fa>)
    297a:	687a      	ldr	r2, [r7, #4]
    297c:	4613      	mov	r3, r2
    297e:	009b      	lsls	r3, r3, #2
    2980:	4413      	add	r3, r2
    2982:	009b      	lsls	r3, r3, #2
    2984:	440b      	add	r3, r1
    2986:	3304      	adds	r3, #4
    2988:	681b      	ldr	r3, [r3, #0]
    298a:	2b0f      	cmp	r3, #15
    298c:	dd0c      	ble.n	29a8 <move_balls+0x136>
    298e:	4937      	ldr	r1, [pc, #220]	; (2a6c <move_balls+0x1fa>)
    2990:	687a      	ldr	r2, [r7, #4]
    2992:	4613      	mov	r3, r2
    2994:	009b      	lsls	r3, r3, #2
    2996:	4413      	add	r3, r2
    2998:	009b      	lsls	r3, r3, #2
    299a:	440b      	add	r3, r1
    299c:	3304      	adds	r3, #4
    299e:	681b      	ldr	r3, [r3, #0]
    29a0:	683a      	ldr	r2, [r7, #0]
    29a2:	89d2      	ldrh	r2, [r2, #14]
    29a4:	4293      	cmp	r3, r2
    29a6:	db2e      	blt.n	2a06 <move_balls+0x194>
			balls[i].dy=-balls[i].dy;
    29a8:	4930      	ldr	r1, [pc, #192]	; (2a6c <move_balls+0x1fa>)
    29aa:	687a      	ldr	r2, [r7, #4]
    29ac:	4613      	mov	r3, r2
    29ae:	009b      	lsls	r3, r3, #2
    29b0:	4413      	add	r3, r2
    29b2:	009b      	lsls	r3, r3, #2
    29b4:	440b      	add	r3, r1
    29b6:	330c      	adds	r3, #12
    29b8:	681b      	ldr	r3, [r3, #0]
    29ba:	4259      	negs	r1, r3
    29bc:	482b      	ldr	r0, [pc, #172]	; (2a6c <move_balls+0x1fa>)
    29be:	687a      	ldr	r2, [r7, #4]
    29c0:	4613      	mov	r3, r2
    29c2:	009b      	lsls	r3, r3, #2
    29c4:	4413      	add	r3, r2
    29c6:	009b      	lsls	r3, r3, #2
    29c8:	4403      	add	r3, r0
    29ca:	330c      	adds	r3, #12
    29cc:	6019      	str	r1, [r3, #0]
			balls[i].y+=balls[i].dy;
    29ce:	4927      	ldr	r1, [pc, #156]	; (2a6c <move_balls+0x1fa>)
    29d0:	687a      	ldr	r2, [r7, #4]
    29d2:	4613      	mov	r3, r2
    29d4:	009b      	lsls	r3, r3, #2
    29d6:	4413      	add	r3, r2
    29d8:	009b      	lsls	r3, r3, #2
    29da:	440b      	add	r3, r1
    29dc:	3304      	adds	r3, #4
    29de:	6819      	ldr	r1, [r3, #0]
    29e0:	4822      	ldr	r0, [pc, #136]	; (2a6c <move_balls+0x1fa>)
    29e2:	687a      	ldr	r2, [r7, #4]
    29e4:	4613      	mov	r3, r2
    29e6:	009b      	lsls	r3, r3, #2
    29e8:	4413      	add	r3, r2
    29ea:	009b      	lsls	r3, r3, #2
    29ec:	4403      	add	r3, r0
    29ee:	330c      	adds	r3, #12
    29f0:	681b      	ldr	r3, [r3, #0]
    29f2:	4419      	add	r1, r3
    29f4:	481d      	ldr	r0, [pc, #116]	; (2a6c <move_balls+0x1fa>)
    29f6:	687a      	ldr	r2, [r7, #4]
    29f8:	4613      	mov	r3, r2
    29fa:	009b      	lsls	r3, r3, #2
    29fc:	4413      	add	r3, r2
    29fe:	009b      	lsls	r3, r3, #2
    2a00:	4403      	add	r3, r0
    2a02:	3304      	adds	r3, #4
    2a04:	6019      	str	r1, [r3, #0]
	for (i=0;i<BALL_COUNT;i++){
    2a06:	687b      	ldr	r3, [r7, #4]
    2a08:	3301      	adds	r3, #1
    2a0a:	607b      	str	r3, [r7, #4]
    2a0c:	687b      	ldr	r3, [r7, #4]
    2a0e:	2b01      	cmp	r3, #1
    2a10:	f77f af38 	ble.w	2884 <move_balls+0x12>
		} 
	}
	// collision between balls
	if (distance(&balls[0],&balls[1])<8){
    2a14:	4916      	ldr	r1, [pc, #88]	; (2a70 <move_balls+0x1fe>)
    2a16:	4815      	ldr	r0, [pc, #84]	; (2a6c <move_balls+0x1fa>)
    2a18:	f7ff ff0e 	bl	2838 <distance>
    2a1c:	4603      	mov	r3, r0
    2a1e:	2b07      	cmp	r3, #7
    2a20:	d81f      	bhi.n	2a62 <move_balls+0x1f0>
		if (balls[0].dx!=balls[1].dx){
    2a22:	4b12      	ldr	r3, [pc, #72]	; (2a6c <move_balls+0x1fa>)
    2a24:	689a      	ldr	r2, [r3, #8]
    2a26:	4b11      	ldr	r3, [pc, #68]	; (2a6c <move_balls+0x1fa>)
    2a28:	69db      	ldr	r3, [r3, #28]
    2a2a:	429a      	cmp	r2, r3
    2a2c:	d009      	beq.n	2a42 <move_balls+0x1d0>
			i=balls[0].dx;
    2a2e:	4b0f      	ldr	r3, [pc, #60]	; (2a6c <move_balls+0x1fa>)
    2a30:	689b      	ldr	r3, [r3, #8]
    2a32:	607b      	str	r3, [r7, #4]
			balls[0].dx=balls[1].dx;
    2a34:	4b0d      	ldr	r3, [pc, #52]	; (2a6c <move_balls+0x1fa>)
    2a36:	69db      	ldr	r3, [r3, #28]
    2a38:	4a0c      	ldr	r2, [pc, #48]	; (2a6c <move_balls+0x1fa>)
    2a3a:	6093      	str	r3, [r2, #8]
			balls[1].dx=i;
    2a3c:	4a0b      	ldr	r2, [pc, #44]	; (2a6c <move_balls+0x1fa>)
    2a3e:	687b      	ldr	r3, [r7, #4]
    2a40:	61d3      	str	r3, [r2, #28]
		}
		if (balls[0].dy!=balls[1].dy){
    2a42:	4b0a      	ldr	r3, [pc, #40]	; (2a6c <move_balls+0x1fa>)
    2a44:	68da      	ldr	r2, [r3, #12]
    2a46:	4b09      	ldr	r3, [pc, #36]	; (2a6c <move_balls+0x1fa>)
    2a48:	6a1b      	ldr	r3, [r3, #32]
    2a4a:	429a      	cmp	r2, r3
    2a4c:	d009      	beq.n	2a62 <move_balls+0x1f0>
			i=balls[0].dy;
    2a4e:	4b07      	ldr	r3, [pc, #28]	; (2a6c <move_balls+0x1fa>)
    2a50:	68db      	ldr	r3, [r3, #12]
    2a52:	607b      	str	r3, [r7, #4]
			balls[0].dy=balls[1].dy;
    2a54:	4b05      	ldr	r3, [pc, #20]	; (2a6c <move_balls+0x1fa>)
    2a56:	6a1b      	ldr	r3, [r3, #32]
    2a58:	4a04      	ldr	r2, [pc, #16]	; (2a6c <move_balls+0x1fa>)
    2a5a:	60d3      	str	r3, [r2, #12]
			balls[1].dy=i;
    2a5c:	4a03      	ldr	r2, [pc, #12]	; (2a6c <move_balls+0x1fa>)
    2a5e:	687b      	ldr	r3, [r7, #4]
    2a60:	6213      	str	r3, [r2, #32]
		}
	}
}
    2a62:	bf00      	nop
    2a64:	3708      	adds	r7, #8
    2a66:	46bd      	mov	sp, r7
    2a68:	bd80      	pop	{r7, pc}
    2a6a:	bf00      	nop
    2a6c:	200026b8 	.word	0x200026b8
    2a70:	200026cc 	.word	0x200026cc

00002a74 <init_balls>:


void init_balls(){
    2a74:	b580      	push	{r7, lr}
    2a76:	b082      	sub	sp, #8
    2a78:	af00      	add	r7, sp, #0
	int i;
	vmode_params_t *vparams=get_video_params();
    2a7a:	f002 fd09 	bl	5490 <get_video_params>
    2a7e:	6038      	str	r0, [r7, #0]
	srand(ntsc_ticks);
    2a80:	4b33      	ldr	r3, [pc, #204]	; (2b50 <init_balls+0xdc>)
    2a82:	681b      	ldr	r3, [r3, #0]
    2a84:	4618      	mov	r0, r3
    2a86:	f7fd fcfb 	bl	480 <srand>
	for (i=0;i<BALL_COUNT;i++){
    2a8a:	2300      	movs	r3, #0
    2a8c:	607b      	str	r3, [r7, #4]
    2a8e:	e057      	b.n	2b40 <init_balls+0xcc>
		balls[i].x=rand()%vparams->hres;
    2a90:	f7fd fd04 	bl	49c <rand>
    2a94:	4603      	mov	r3, r0
    2a96:	683a      	ldr	r2, [r7, #0]
    2a98:	8992      	ldrh	r2, [r2, #12]
    2a9a:	fb93 f1f2 	sdiv	r1, r3, r2
    2a9e:	fb02 f201 	mul.w	r2, r2, r1
    2aa2:	1a99      	subs	r1, r3, r2
    2aa4:	482b      	ldr	r0, [pc, #172]	; (2b54 <init_balls+0xe0>)
    2aa6:	687a      	ldr	r2, [r7, #4]
    2aa8:	4613      	mov	r3, r2
    2aaa:	009b      	lsls	r3, r3, #2
    2aac:	4413      	add	r3, r2
    2aae:	009b      	lsls	r3, r3, #2
    2ab0:	4403      	add	r3, r0
    2ab2:	6019      	str	r1, [r3, #0]
		balls[i].y=2*CHAR_HEIGHT+rand()%(vparams->vres-2*CHAR_HEIGHT);
    2ab4:	f7fd fcf2 	bl	49c <rand>
    2ab8:	4602      	mov	r2, r0
    2aba:	683b      	ldr	r3, [r7, #0]
    2abc:	89db      	ldrh	r3, [r3, #14]
    2abe:	3b10      	subs	r3, #16
    2ac0:	fb92 f1f3 	sdiv	r1, r2, r3
    2ac4:	fb03 f301 	mul.w	r3, r3, r1
    2ac8:	1ad3      	subs	r3, r2, r3
    2aca:	f103 0110 	add.w	r1, r3, #16
    2ace:	4821      	ldr	r0, [pc, #132]	; (2b54 <init_balls+0xe0>)
    2ad0:	687a      	ldr	r2, [r7, #4]
    2ad2:	4613      	mov	r3, r2
    2ad4:	009b      	lsls	r3, r3, #2
    2ad6:	4413      	add	r3, r2
    2ad8:	009b      	lsls	r3, r3, #2
    2ada:	4403      	add	r3, r0
    2adc:	3304      	adds	r3, #4
    2ade:	6019      	str	r1, [r3, #0]
		balls[i].dx=1;
    2ae0:	491c      	ldr	r1, [pc, #112]	; (2b54 <init_balls+0xe0>)
    2ae2:	687a      	ldr	r2, [r7, #4]
    2ae4:	4613      	mov	r3, r2
    2ae6:	009b      	lsls	r3, r3, #2
    2ae8:	4413      	add	r3, r2
    2aea:	009b      	lsls	r3, r3, #2
    2aec:	440b      	add	r3, r1
    2aee:	3308      	adds	r3, #8
    2af0:	2201      	movs	r2, #1
    2af2:	601a      	str	r2, [r3, #0]
		balls[i].dy=1;
    2af4:	4917      	ldr	r1, [pc, #92]	; (2b54 <init_balls+0xe0>)
    2af6:	687a      	ldr	r2, [r7, #4]
    2af8:	4613      	mov	r3, r2
    2afa:	009b      	lsls	r3, r3, #2
    2afc:	4413      	add	r3, r2
    2afe:	009b      	lsls	r3, r3, #2
    2b00:	440b      	add	r3, r1
    2b02:	330c      	adds	r3, #12
    2b04:	2201      	movs	r2, #1
    2b06:	601a      	str	r2, [r3, #0]
		if (vparams->mode==VM_BPCHIP){
    2b08:	683b      	ldr	r3, [r7, #0]
    2b0a:	781b      	ldrb	r3, [r3, #0]
    2b0c:	2b00      	cmp	r3, #0
    2b0e:	d10a      	bne.n	2b26 <init_balls+0xb2>
			balls[i].ball_sprite=ball8x8;
    2b10:	4910      	ldr	r1, [pc, #64]	; (2b54 <init_balls+0xe0>)
    2b12:	687a      	ldr	r2, [r7, #4]
    2b14:	4613      	mov	r3, r2
    2b16:	009b      	lsls	r3, r3, #2
    2b18:	4413      	add	r3, r2
    2b1a:	009b      	lsls	r3, r3, #2
    2b1c:	440b      	add	r3, r1
    2b1e:	3310      	adds	r3, #16
    2b20:	4a0d      	ldr	r2, [pc, #52]	; (2b58 <init_balls+0xe4>)
    2b22:	601a      	str	r2, [r3, #0]
    2b24:	e009      	b.n	2b3a <init_balls+0xc6>
		}else{
			balls[i].ball_sprite=ball8x8_1bpp;
    2b26:	490b      	ldr	r1, [pc, #44]	; (2b54 <init_balls+0xe0>)
    2b28:	687a      	ldr	r2, [r7, #4]
    2b2a:	4613      	mov	r3, r2
    2b2c:	009b      	lsls	r3, r3, #2
    2b2e:	4413      	add	r3, r2
    2b30:	009b      	lsls	r3, r3, #2
    2b32:	440b      	add	r3, r1
    2b34:	3310      	adds	r3, #16
    2b36:	4a09      	ldr	r2, [pc, #36]	; (2b5c <init_balls+0xe8>)
    2b38:	601a      	str	r2, [r3, #0]
	for (i=0;i<BALL_COUNT;i++){
    2b3a:	687b      	ldr	r3, [r7, #4]
    2b3c:	3301      	adds	r3, #1
    2b3e:	607b      	str	r3, [r7, #4]
    2b40:	687b      	ldr	r3, [r7, #4]
    2b42:	2b01      	cmp	r3, #1
    2b44:	dda4      	ble.n	2a90 <init_balls+0x1c>
		}
	}
}
    2b46:	bf00      	nop
    2b48:	3708      	adds	r7, #8
    2b4a:	46bd      	mov	sp, r7
    2b4c:	bd80      	pop	{r7, pc}
    2b4e:	bf00      	nop
    2b50:	20004e44 	.word	0x20004e44
    2b54:	200026b8 	.word	0x200026b8
    2b58:	00005970 	.word	0x00005970
    2b5c:	00005990 	.word	0x00005990

00002b60 <color_bars>:

static void color_bars(){
    2b60:	b580      	push	{r7, lr}
    2b62:	b084      	sub	sp, #16
    2b64:	af00      	add	r7, sp, #0
	int x,y;
	uint8_t c=0;
    2b66:	2300      	movs	r3, #0
    2b68:	71fb      	strb	r3, [r7, #7]
	vmode_params_t* vparams=get_video_params();
    2b6a:	f002 fc91 	bl	5490 <get_video_params>
    2b6e:	6038      	str	r0, [r7, #0]
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    2b70:	683b      	ldr	r3, [r7, #0]
    2b72:	89db      	ldrh	r3, [r3, #14]
    2b74:	089b      	lsrs	r3, r3, #2
    2b76:	b29b      	uxth	r3, r3
    2b78:	461a      	mov	r2, r3
    2b7a:	4613      	mov	r3, r2
    2b7c:	005b      	lsls	r3, r3, #1
    2b7e:	4413      	add	r3, r2
    2b80:	60bb      	str	r3, [r7, #8]
    2b82:	e01b      	b.n	2bbc <color_bars+0x5c>
		c=0x10;
    2b84:	2310      	movs	r3, #16
    2b86:	71fb      	strb	r3, [r7, #7]
		for (x=0;x<128;x++){
    2b88:	2300      	movs	r3, #0
    2b8a:	60fb      	str	r3, [r7, #12]
    2b8c:	e010      	b.n	2bb0 <color_bars+0x50>
			if (x%8==0){
    2b8e:	68fb      	ldr	r3, [r7, #12]
    2b90:	f003 0307 	and.w	r3, r3, #7
    2b94:	2b00      	cmp	r3, #0
    2b96:	d102      	bne.n	2b9e <color_bars+0x3e>
				c--;
    2b98:	79fb      	ldrb	r3, [r7, #7]
    2b9a:	3b01      	subs	r3, #1
    2b9c:	71fb      	strb	r3, [r7, #7]
			}
			gfx_plot(x,y,c);
    2b9e:	79fb      	ldrb	r3, [r7, #7]
    2ba0:	461a      	mov	r2, r3
    2ba2:	68b9      	ldr	r1, [r7, #8]
    2ba4:	68f8      	ldr	r0, [r7, #12]
    2ba6:	f7ff fb49 	bl	223c <gfx_plot>
		for (x=0;x<128;x++){
    2baa:	68fb      	ldr	r3, [r7, #12]
    2bac:	3301      	adds	r3, #1
    2bae:	60fb      	str	r3, [r7, #12]
    2bb0:	68fb      	ldr	r3, [r7, #12]
    2bb2:	2b7f      	cmp	r3, #127	; 0x7f
    2bb4:	ddeb      	ble.n	2b8e <color_bars+0x2e>
	for (y=vparams->vres/4*3;y<vparams->vres;y++){
    2bb6:	68bb      	ldr	r3, [r7, #8]
    2bb8:	3301      	adds	r3, #1
    2bba:	60bb      	str	r3, [r7, #8]
    2bbc:	683b      	ldr	r3, [r7, #0]
    2bbe:	89db      	ldrh	r3, [r3, #14]
    2bc0:	461a      	mov	r2, r3
    2bc2:	68bb      	ldr	r3, [r7, #8]
    2bc4:	429a      	cmp	r2, r3
    2bc6:	dcdd      	bgt.n	2b84 <color_bars+0x24>
		}
	}
		

}
    2bc8:	bf00      	nop
    2bca:	3710      	adds	r7, #16
    2bcc:	46bd      	mov	sp, r7
    2bce:	bd80      	pop	{r7, pc}

00002bd0 <vertical_bars>:

static void vertical_bars(){
    2bd0:	b580      	push	{r7, lr}
    2bd2:	b082      	sub	sp, #8
    2bd4:	af00      	add	r7, sp, #0
	int y;
	vmode_params_t* vparams=get_video_params();
    2bd6:	f002 fc5b 	bl	5490 <get_video_params>
    2bda:	6038      	str	r0, [r7, #0]
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    2bdc:	2310      	movs	r3, #16
    2bde:	607b      	str	r3, [r7, #4]
    2be0:	e00f      	b.n	2c02 <vertical_bars+0x32>
		gfx_plot(0,y,15);
    2be2:	220f      	movs	r2, #15
    2be4:	6879      	ldr	r1, [r7, #4]
    2be6:	2000      	movs	r0, #0
    2be8:	f7ff fb28 	bl	223c <gfx_plot>
		gfx_plot(vparams->hres-1,y,15);
    2bec:	683b      	ldr	r3, [r7, #0]
    2bee:	899b      	ldrh	r3, [r3, #12]
    2bf0:	3b01      	subs	r3, #1
    2bf2:	220f      	movs	r2, #15
    2bf4:	6879      	ldr	r1, [r7, #4]
    2bf6:	4618      	mov	r0, r3
    2bf8:	f7ff fb20 	bl	223c <gfx_plot>
	for (y=2*CHAR_HEIGHT;y<vparams->vres;y++){
    2bfc:	687b      	ldr	r3, [r7, #4]
    2bfe:	3301      	adds	r3, #1
    2c00:	607b      	str	r3, [r7, #4]
    2c02:	683b      	ldr	r3, [r7, #0]
    2c04:	89db      	ldrh	r3, [r3, #14]
    2c06:	461a      	mov	r2, r3
    2c08:	687b      	ldr	r3, [r7, #4]
    2c0a:	429a      	cmp	r2, r3
    2c0c:	dce9      	bgt.n	2be2 <vertical_bars+0x12>
	}
}
    2c0e:	bf00      	nop
    2c10:	3708      	adds	r7, #8
    2c12:	46bd      	mov	sp, r7
    2c14:	bd80      	pop	{r7, pc}

00002c16 <horiz_bars>:

static void horiz_bars(){
    2c16:	b580      	push	{r7, lr}
    2c18:	b082      	sub	sp, #8
    2c1a:	af00      	add	r7, sp, #0
	int x;
	vmode_params_t* vparams=get_video_params();
    2c1c:	f002 fc38 	bl	5490 <get_video_params>
    2c20:	6038      	str	r0, [r7, #0]
	for (x=0;x<vparams->hres;x++){
    2c22:	2300      	movs	r3, #0
    2c24:	607b      	str	r3, [r7, #4]
    2c26:	e00f      	b.n	2c48 <horiz_bars+0x32>
		gfx_plot(x,0,15);
    2c28:	220f      	movs	r2, #15
    2c2a:	2100      	movs	r1, #0
    2c2c:	6878      	ldr	r0, [r7, #4]
    2c2e:	f7ff fb05 	bl	223c <gfx_plot>
		gfx_plot(x,vparams->vres-1,15);
    2c32:	683b      	ldr	r3, [r7, #0]
    2c34:	89db      	ldrh	r3, [r3, #14]
    2c36:	3b01      	subs	r3, #1
    2c38:	220f      	movs	r2, #15
    2c3a:	4619      	mov	r1, r3
    2c3c:	6878      	ldr	r0, [r7, #4]
    2c3e:	f7ff fafd 	bl	223c <gfx_plot>
	for (x=0;x<vparams->hres;x++){
    2c42:	687b      	ldr	r3, [r7, #4]
    2c44:	3301      	adds	r3, #1
    2c46:	607b      	str	r3, [r7, #4]
    2c48:	683b      	ldr	r3, [r7, #0]
    2c4a:	899b      	ldrh	r3, [r3, #12]
    2c4c:	461a      	mov	r2, r3
    2c4e:	687b      	ldr	r3, [r7, #4]
    2c50:	429a      	cmp	r2, r3
    2c52:	dce9      	bgt.n	2c28 <horiz_bars+0x12>
	}
}
    2c54:	bf00      	nop
    2c56:	3708      	adds	r7, #8
    2c58:	46bd      	mov	sp, r7
    2c5a:	bd80      	pop	{r7, pc}

00002c5c <video_test>:

static void video_test(){
    2c5c:	b580      	push	{r7, lr}
    2c5e:	b082      	sub	sp, #8
    2c60:	af00      	add	r7, sp, #0
	int x,y,sx,sy,dx,dy;
	uint8_t c,p=0;
    2c62:	2300      	movs	r3, #0
    2c64:	71fb      	strb	r3, [r7, #7]

	set_video_mode(p);
    2c66:	79fb      	ldrb	r3, [r7, #7]
    2c68:	4618      	mov	r0, r3
    2c6a:	f002 fb79 	bl	5360 <set_video_mode>
	color_bars();
    2c6e:	f7ff ff77 	bl	2b60 <color_bars>
	vertical_bars();
    2c72:	f7ff ffad 	bl	2bd0 <vertical_bars>
	horiz_bars();
    2c76:	f7ff ffce 	bl	2c16 <horiz_bars>
    print_int((int)&_FLASH_FREE,16);	
    2c7a:	4b2f      	ldr	r3, [pc, #188]	; (2d38 <video_test+0xdc>)
    2c7c:	2110      	movs	r1, #16
    2c7e:	4618      	mov	r0, r3
    2c80:	f001 ff8c 	bl	4b9c <print_int>
	print_int(0x20005000-(int)(&_TPA_START),10);
    2c84:	4b2d      	ldr	r3, [pc, #180]	; (2d3c <video_test+0xe0>)
    2c86:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2c8a:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2c8e:	210a      	movs	r1, #10
    2c90:	4618      	mov	r0, r3
    2c92:	f001 ff83 	bl	4b9c <print_int>
	init_balls();
    2c96:	f7ff feed 	bl	2a74 <init_balls>
	p=0;
    2c9a:	2300      	movs	r3, #0
    2c9c:	71fb      	strb	r3, [r7, #7]
	while(1){
		draw_balls();
    2c9e:	f7ff fd73 	bl	2788 <draw_balls>
		//game_pause(1);
		draw_balls();
    2ca2:	f7ff fd71 	bl	2788 <draw_balls>
		move_balls();
    2ca6:	f7ff fde4 	bl	2872 <move_balls>
		if (btn_query_down(KEY_RIGHT)){
    2caa:	2010      	movs	r0, #16
    2cac:	f7fe fecc 	bl	1a48 <btn_query_down>
    2cb0:	4603      	mov	r3, r0
    2cb2:	2b00      	cmp	r3, #0
    2cb4:	d02f      	beq.n	2d16 <video_test+0xba>
			p=++p%3;
    2cb6:	79fb      	ldrb	r3, [r7, #7]
    2cb8:	3301      	adds	r3, #1
    2cba:	71fb      	strb	r3, [r7, #7]
    2cbc:	79fa      	ldrb	r2, [r7, #7]
    2cbe:	4b20      	ldr	r3, [pc, #128]	; (2d40 <video_test+0xe4>)
    2cc0:	fba3 1302 	umull	r1, r3, r3, r2
    2cc4:	0859      	lsrs	r1, r3, #1
    2cc6:	460b      	mov	r3, r1
    2cc8:	005b      	lsls	r3, r3, #1
    2cca:	440b      	add	r3, r1
    2ccc:	1ad3      	subs	r3, r2, r3
    2cce:	71fb      	strb	r3, [r7, #7]
			set_video_mode(p);
    2cd0:	79fb      	ldrb	r3, [r7, #7]
    2cd2:	4618      	mov	r0, r3
    2cd4:	f002 fb44 	bl	5360 <set_video_mode>
			switch(p){
    2cd8:	79fb      	ldrb	r3, [r7, #7]
    2cda:	2b01      	cmp	r3, #1
    2cdc:	d009      	beq.n	2cf2 <video_test+0x96>
    2cde:	2b02      	cmp	r3, #2
    2ce0:	d00b      	beq.n	2cfa <video_test+0x9e>
    2ce2:	2b00      	cmp	r3, #0
    2ce4:	d10d      	bne.n	2d02 <video_test+0xa6>
			case VM_BPCHIP:
				print("BPCHIP mode\n180x112 16 colors");
    2ce6:	4817      	ldr	r0, [pc, #92]	; (2d44 <video_test+0xe8>)
    2ce8:	f001 ff28 	bl	4b3c <print>
				color_bars();
    2cec:	f7ff ff38 	bl	2b60 <color_bars>
				break;
    2cf0:	e007      	b.n	2d02 <video_test+0xa6>
			case VM_SCHIP:
				print("SCHIP mode\n128x64 mono");
    2cf2:	4815      	ldr	r0, [pc, #84]	; (2d48 <video_test+0xec>)
    2cf4:	f001 ff22 	bl	4b3c <print>
				break;
    2cf8:	e003      	b.n	2d02 <video_test+0xa6>
			case VM_CHIP8:
				print("CHIP8 mode\n64x32 mono");
    2cfa:	4814      	ldr	r0, [pc, #80]	; (2d4c <video_test+0xf0>)
    2cfc:	f001 ff1e 	bl	4b3c <print>
				break;
    2d00:	bf00      	nop
			}
			vertical_bars();
    2d02:	f7ff ff65 	bl	2bd0 <vertical_bars>
			horiz_bars();
    2d06:	f7ff ff86 	bl	2c16 <horiz_bars>
			init_balls();
    2d0a:	f7ff feb3 	bl	2a74 <init_balls>
			btn_wait_up(KEY_RIGHT);
    2d0e:	2010      	movs	r0, #16
    2d10:	f7fe fede 	bl	1ad0 <btn_wait_up>
    2d14:	e7c3      	b.n	2c9e <video_test+0x42>
		}else if (btn_query_down(KEY_B)){
    2d16:	2020      	movs	r0, #32
    2d18:	f7fe fe96 	bl	1a48 <btn_query_down>
    2d1c:	4603      	mov	r3, r0
    2d1e:	2b00      	cmp	r3, #0
    2d20:	d0bd      	beq.n	2c9e <video_test+0x42>
			btn_wait_up(KEY_B);
    2d22:	2020      	movs	r0, #32
    2d24:	f7fe fed4 	bl	1ad0 <btn_wait_up>
			break;
    2d28:	bf00      	nop
		}
	}//while(1)
	set_video_mode(VM_BPCHIP);
    2d2a:	2000      	movs	r0, #0
    2d2c:	f002 fb18 	bl	5360 <set_video_mode>
}
    2d30:	bf00      	nop
    2d32:	3708      	adds	r7, #8
    2d34:	46bd      	mov	sp, r7
    2d36:	bd80      	pop	{r7, pc}
    2d38:	00005c00 	.word	0x00005c00
    2d3c:	20004e50 	.word	0x20004e50
    2d40:	aaaaaaab 	.word	0xaaaaaaab
    2d44:	00005998 	.word	0x00005998
    2d48:	000059b8 	.word	0x000059b8
    2d4c:	000059d0 	.word	0x000059d0

00002d50 <sound_test>:

static void sound_test(){
    2d50:	b580      	push	{r7, lr}
    2d52:	b082      	sub	sp, #8
    2d54:	af00      	add	r7, sp, #0
	uint8_t key=255;
    2d56:	23ff      	movs	r3, #255	; 0xff
    2d58:	71fb      	strb	r3, [r7, #7]
	uint16_t freq;
	gfx_cls();
    2d5a:	f7ff fabd 	bl	22d8 <gfx_cls>
	print("press buttons\n");
    2d5e:	4829      	ldr	r0, [pc, #164]	; (2e04 <sound_test+0xb4>)
    2d60:	f001 feec 	bl	4b3c <print>
	while (key!=KEY_B){
    2d64:	e040      	b.n	2de8 <sound_test+0x98>
		key=btn_wait_any();
    2d66:	f7fe fedb 	bl	1b20 <btn_wait_any>
    2d6a:	4603      	mov	r3, r0
    2d6c:	71fb      	strb	r3, [r7, #7]
		switch(key){
    2d6e:	79fb      	ldrb	r3, [r7, #7]
    2d70:	2b08      	cmp	r3, #8
    2d72:	d01c      	beq.n	2dae <sound_test+0x5e>
    2d74:	2b08      	cmp	r3, #8
    2d76:	dc06      	bgt.n	2d86 <sound_test+0x36>
    2d78:	2b02      	cmp	r3, #2
    2d7a:	d010      	beq.n	2d9e <sound_test+0x4e>
    2d7c:	2b04      	cmp	r3, #4
    2d7e:	d012      	beq.n	2da6 <sound_test+0x56>
    2d80:	2b01      	cmp	r3, #1
    2d82:	d01c      	beq.n	2dbe <sound_test+0x6e>
    2d84:	e02b      	b.n	2dde <sound_test+0x8e>
    2d86:	2b20      	cmp	r3, #32
    2d88:	d01d      	beq.n	2dc6 <sound_test+0x76>
    2d8a:	2b20      	cmp	r3, #32
    2d8c:	dc02      	bgt.n	2d94 <sound_test+0x44>
    2d8e:	2b10      	cmp	r3, #16
    2d90:	d011      	beq.n	2db6 <sound_test+0x66>
    2d92:	e024      	b.n	2dde <sound_test+0x8e>
    2d94:	2b40      	cmp	r3, #64	; 0x40
    2d96:	d01a      	beq.n	2dce <sound_test+0x7e>
    2d98:	2b80      	cmp	r3, #128	; 0x80
    2d9a:	d01c      	beq.n	2dd6 <sound_test+0x86>
    2d9c:	e01f      	b.n	2dde <sound_test+0x8e>
		case KEY_UP:
			freq=440;
    2d9e:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2da2:	80bb      	strh	r3, [r7, #4]
			break;
    2da4:	e01b      	b.n	2dde <sound_test+0x8e>
		case KEY_DOWN:
			freq=466;
    2da6:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2daa:	80bb      	strh	r3, [r7, #4]
			break;
    2dac:	e017      	b.n	2dde <sound_test+0x8e>
		case KEY_LEFT:
			freq=493;
    2dae:	f240 13ed 	movw	r3, #493	; 0x1ed
    2db2:	80bb      	strh	r3, [r7, #4]
			break;
    2db4:	e013      	b.n	2dde <sound_test+0x8e>
		case KEY_RIGHT:
			freq=523;
    2db6:	f240 230b 	movw	r3, #523	; 0x20b
    2dba:	80bb      	strh	r3, [r7, #4]
			break;
    2dbc:	e00f      	b.n	2dde <sound_test+0x8e>
		case KEY_A:
			freq=554;
    2dbe:	f240 232a 	movw	r3, #554	; 0x22a
    2dc2:	80bb      	strh	r3, [r7, #4]
			break;
    2dc4:	e00b      	b.n	2dde <sound_test+0x8e>
		case KEY_B:
			freq=587;
    2dc6:	f240 234b 	movw	r3, #587	; 0x24b
    2dca:	80bb      	strh	r3, [r7, #4]
			break;
    2dcc:	e007      	b.n	2dde <sound_test+0x8e>
		case KEY_C:
			freq=622;
    2dce:	f240 236e 	movw	r3, #622	; 0x26e
    2dd2:	80bb      	strh	r3, [r7, #4]
			break;
    2dd4:	e003      	b.n	2dde <sound_test+0x8e>
		case KEY_D:
			freq=659;
    2dd6:	f240 2393 	movw	r3, #659	; 0x293
    2dda:	80bb      	strh	r3, [r7, #4]
			break;
    2ddc:	bf00      	nop
		}//swtich
		tone(freq,3);
    2dde:	88bb      	ldrh	r3, [r7, #4]
    2de0:	2103      	movs	r1, #3
    2de2:	4618      	mov	r0, r3
    2de4:	f001 fa34 	bl	4250 <tone>
	while (key!=KEY_B){
    2de8:	79fb      	ldrb	r3, [r7, #7]
    2dea:	2b20      	cmp	r3, #32
    2dec:	d1bb      	bne.n	2d66 <sound_test+0x16>
		//btn_wait_up(key);
	}
	btn_wait_up(key);
    2dee:	79fb      	ldrb	r3, [r7, #7]
    2df0:	4618      	mov	r0, r3
    2df2:	f7fe fe6d 	bl	1ad0 <btn_wait_up>
	sound_sampler(60);
    2df6:	203c      	movs	r0, #60	; 0x3c
    2df8:	f001 fa9c 	bl	4334 <sound_sampler>
}
    2dfc:	bf00      	nop
    2dfe:	3708      	adds	r7, #8
    2e00:	46bd      	mov	sp, r7
    2e02:	bd80      	pop	{r7, pc}
    2e04:	000059e8 	.word	0x000059e8

00002e08 <display_keymap>:

static void display_keymap(uint8_t*map){
    2e08:	b580      	push	{r7, lr}
    2e0a:	b084      	sub	sp, #16
    2e0c:	af00      	add	r7, sp, #0
    2e0e:	6078      	str	r0, [r7, #4]
	int i;
	set_cursor(0,CHAR_HEIGHT);
    2e10:	2108      	movs	r1, #8
    2e12:	2000      	movs	r0, #0
    2e14:	f001 fe66 	bl	4ae4 <set_cursor>
	for (i=0;i<8;i++) print_int(map[i],16);
    2e18:	2300      	movs	r3, #0
    2e1a:	60fb      	str	r3, [r7, #12]
    2e1c:	e00a      	b.n	2e34 <display_keymap+0x2c>
    2e1e:	68fb      	ldr	r3, [r7, #12]
    2e20:	687a      	ldr	r2, [r7, #4]
    2e22:	4413      	add	r3, r2
    2e24:	781b      	ldrb	r3, [r3, #0]
    2e26:	2110      	movs	r1, #16
    2e28:	4618      	mov	r0, r3
    2e2a:	f001 feb7 	bl	4b9c <print_int>
    2e2e:	68fb      	ldr	r3, [r7, #12]
    2e30:	3301      	adds	r3, #1
    2e32:	60fb      	str	r3, [r7, #12]
    2e34:	68fb      	ldr	r3, [r7, #12]
    2e36:	2b07      	cmp	r3, #7
    2e38:	ddf1      	ble.n	2e1e <display_keymap+0x16>
}
    2e3a:	bf00      	nop
    2e3c:	3710      	adds	r7, #16
    2e3e:	46bd      	mov	sp, r7
    2e40:	bd80      	pop	{r7, pc}

00002e42 <buttons_map>:

static void buttons_map(){
    2e42:	b580      	push	{r7, lr}
    2e44:	b086      	sub	sp, #24
    2e46:	af00      	add	r7, sp, #0
	int i;
	uint8_t btn=255,key;
    2e48:	23ff      	movs	r3, #255	; 0xff
    2e4a:	74fb      	strb	r3, [r7, #19]
	uint8_t* keymap=get_keymap(),newmap[8];
    2e4c:	f7fe feb0 	bl	1bb0 <get_keymap>
    2e50:	60f8      	str	r0, [r7, #12]
	gfx_cls();
    2e52:	f7ff fa41 	bl	22d8 <gfx_cls>
	println("buttons map table");
    2e56:	487d      	ldr	r0, [pc, #500]	; (304c <buttons_map+0x20a>)
    2e58:	f001 fe93 	bl	4b82 <println>
	for (i=0;i<8;i++){
    2e5c:	2300      	movs	r3, #0
    2e5e:	617b      	str	r3, [r7, #20]
    2e60:	e00b      	b.n	2e7a <buttons_map+0x38>
		newmap[i]=keymap[i];
    2e62:	697b      	ldr	r3, [r7, #20]
    2e64:	68fa      	ldr	r2, [r7, #12]
    2e66:	4413      	add	r3, r2
    2e68:	7819      	ldrb	r1, [r3, #0]
    2e6a:	1d3a      	adds	r2, r7, #4
    2e6c:	697b      	ldr	r3, [r7, #20]
    2e6e:	4413      	add	r3, r2
    2e70:	460a      	mov	r2, r1
    2e72:	701a      	strb	r2, [r3, #0]
	for (i=0;i<8;i++){
    2e74:	697b      	ldr	r3, [r7, #20]
    2e76:	3301      	adds	r3, #1
    2e78:	617b      	str	r3, [r7, #20]
    2e7a:	697b      	ldr	r3, [r7, #20]
    2e7c:	2b07      	cmp	r3, #7
    2e7e:	ddf0      	ble.n	2e62 <buttons_map+0x20>
	}
	display_keymap(newmap);
    2e80:	1d3b      	adds	r3, r7, #4
    2e82:	4618      	mov	r0, r3
    2e84:	f7ff ffc0 	bl	2e08 <display_keymap>
	set_cursor(0,CHAR_HEIGHT);
    2e88:	2108      	movs	r1, #8
    2e8a:	2000      	movs	r0, #0
    2e8c:	f001 fe2a 	bl	4ae4 <set_cursor>
	show_cursor(1);
    2e90:	2001      	movs	r0, #1
    2e92:	f001 ffbd 	bl	4e10 <show_cursor>
	i=0;
    2e96:	2300      	movs	r3, #0
    2e98:	617b      	str	r3, [r7, #20]
	key=newmap[i];
    2e9a:	1d3a      	adds	r2, r7, #4
    2e9c:	697b      	ldr	r3, [r7, #20]
    2e9e:	4413      	add	r3, r2
    2ea0:	781b      	ldrb	r3, [r3, #0]
    2ea2:	74bb      	strb	r3, [r7, #18]
	while(btn!=KEY_B){
    2ea4:	e0b8      	b.n	3018 <buttons_map+0x1d6>
		btn=btn_wait_any();
    2ea6:	f7fe fe3b 	bl	1b20 <btn_wait_any>
    2eaa:	4603      	mov	r3, r0
    2eac:	74fb      	strb	r3, [r7, #19]
		switch(btn){
    2eae:	7cfb      	ldrb	r3, [r7, #19]
    2eb0:	2b08      	cmp	r3, #8
    2eb2:	d00b      	beq.n	2ecc <buttons_map+0x8a>
    2eb4:	2b08      	cmp	r3, #8
    2eb6:	dc04      	bgt.n	2ec2 <buttons_map+0x80>
    2eb8:	2b02      	cmp	r3, #2
    2eba:	d042      	beq.n	2f42 <buttons_map+0x100>
    2ebc:	2b04      	cmp	r3, #4
    2ebe:	d05f      	beq.n	2f80 <buttons_map+0x13e>
    2ec0:	e0a6      	b.n	3010 <buttons_map+0x1ce>
    2ec2:	2b10      	cmp	r3, #16
    2ec4:	d020      	beq.n	2f08 <buttons_map+0xc6>
    2ec6:	2b40      	cmp	r3, #64	; 0x40
    2ec8:	d079      	beq.n	2fbe <buttons_map+0x17c>
    2eca:	e0a1      	b.n	3010 <buttons_map+0x1ce>
		case KEY_LEFT:
			if (i){
    2ecc:	697b      	ldr	r3, [r7, #20]
    2ece:	2b00      	cmp	r3, #0
    2ed0:	f000 8097 	beq.w	3002 <buttons_map+0x1c0>
				show_cursor(0);
    2ed4:	2000      	movs	r0, #0
    2ed6:	f001 ff9b 	bl	4e10 <show_cursor>
				i--;
    2eda:	697b      	ldr	r3, [r7, #20]
    2edc:	3b01      	subs	r3, #1
    2ede:	617b      	str	r3, [r7, #20]
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    2ee0:	697b      	ldr	r3, [r7, #20]
    2ee2:	b2db      	uxtb	r3, r3
    2ee4:	461a      	mov	r2, r3
    2ee6:	00d2      	lsls	r2, r2, #3
    2ee8:	4413      	add	r3, r2
    2eea:	005b      	lsls	r3, r3, #1
    2eec:	b2db      	uxtb	r3, r3
    2eee:	2108      	movs	r1, #8
    2ef0:	4618      	mov	r0, r3
    2ef2:	f001 fdf7 	bl	4ae4 <set_cursor>
				show_cursor(1);
    2ef6:	2001      	movs	r0, #1
    2ef8:	f001 ff8a 	bl	4e10 <show_cursor>
				key=newmap[i];
    2efc:	1d3a      	adds	r2, r7, #4
    2efe:	697b      	ldr	r3, [r7, #20]
    2f00:	4413      	add	r3, r2
    2f02:	781b      	ldrb	r3, [r3, #0]
    2f04:	74bb      	strb	r3, [r7, #18]
			}
			break;
    2f06:	e07c      	b.n	3002 <buttons_map+0x1c0>
		case KEY_RIGHT:
			if (i<7){
    2f08:	697b      	ldr	r3, [r7, #20]
    2f0a:	2b06      	cmp	r3, #6
    2f0c:	dc7b      	bgt.n	3006 <buttons_map+0x1c4>
				show_cursor(0);
    2f0e:	2000      	movs	r0, #0
    2f10:	f001 ff7e 	bl	4e10 <show_cursor>
				i++;
    2f14:	697b      	ldr	r3, [r7, #20]
    2f16:	3301      	adds	r3, #1
    2f18:	617b      	str	r3, [r7, #20]
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    2f1a:	697b      	ldr	r3, [r7, #20]
    2f1c:	b2db      	uxtb	r3, r3
    2f1e:	461a      	mov	r2, r3
    2f20:	00d2      	lsls	r2, r2, #3
    2f22:	4413      	add	r3, r2
    2f24:	005b      	lsls	r3, r3, #1
    2f26:	b2db      	uxtb	r3, r3
    2f28:	2108      	movs	r1, #8
    2f2a:	4618      	mov	r0, r3
    2f2c:	f001 fdda 	bl	4ae4 <set_cursor>
				show_cursor(1);
    2f30:	2001      	movs	r0, #1
    2f32:	f001 ff6d 	bl	4e10 <show_cursor>
				key=newmap[i];
    2f36:	1d3a      	adds	r2, r7, #4
    2f38:	697b      	ldr	r3, [r7, #20]
    2f3a:	4413      	add	r3, r2
    2f3c:	781b      	ldrb	r3, [r3, #0]
    2f3e:	74bb      	strb	r3, [r7, #18]
			}
			break;
    2f40:	e061      	b.n	3006 <buttons_map+0x1c4>
		case KEY_UP:
			if (key<15){
    2f42:	7cbb      	ldrb	r3, [r7, #18]
    2f44:	2b0e      	cmp	r3, #14
    2f46:	d860      	bhi.n	300a <buttons_map+0x1c8>
				key++;
    2f48:	7cbb      	ldrb	r3, [r7, #18]
    2f4a:	3301      	adds	r3, #1
    2f4c:	74bb      	strb	r3, [r7, #18]
				newmap[i]=key;
    2f4e:	1d3a      	adds	r2, r7, #4
    2f50:	697b      	ldr	r3, [r7, #20]
    2f52:	4413      	add	r3, r2
    2f54:	7cba      	ldrb	r2, [r7, #18]
    2f56:	701a      	strb	r2, [r3, #0]
				print_int(key,16);
    2f58:	7cbb      	ldrb	r3, [r7, #18]
    2f5a:	2110      	movs	r1, #16
    2f5c:	4618      	mov	r0, r3
    2f5e:	f001 fe1d 	bl	4b9c <print_int>
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    2f62:	697b      	ldr	r3, [r7, #20]
    2f64:	b2db      	uxtb	r3, r3
    2f66:	461a      	mov	r2, r3
    2f68:	00d2      	lsls	r2, r2, #3
    2f6a:	4413      	add	r3, r2
    2f6c:	005b      	lsls	r3, r3, #1
    2f6e:	b2db      	uxtb	r3, r3
    2f70:	2108      	movs	r1, #8
    2f72:	4618      	mov	r0, r3
    2f74:	f001 fdb6 	bl	4ae4 <set_cursor>
				show_cursor(1);
    2f78:	2001      	movs	r0, #1
    2f7a:	f001 ff49 	bl	4e10 <show_cursor>
			}
			break;
    2f7e:	e044      	b.n	300a <buttons_map+0x1c8>
		case KEY_DOWN:
			if (key){
    2f80:	7cbb      	ldrb	r3, [r7, #18]
    2f82:	2b00      	cmp	r3, #0
    2f84:	d043      	beq.n	300e <buttons_map+0x1cc>
				key--;
    2f86:	7cbb      	ldrb	r3, [r7, #18]
    2f88:	3b01      	subs	r3, #1
    2f8a:	74bb      	strb	r3, [r7, #18]
				newmap[i]=key;
    2f8c:	1d3a      	adds	r2, r7, #4
    2f8e:	697b      	ldr	r3, [r7, #20]
    2f90:	4413      	add	r3, r2
    2f92:	7cba      	ldrb	r2, [r7, #18]
    2f94:	701a      	strb	r2, [r3, #0]
				print_int(key,16);
    2f96:	7cbb      	ldrb	r3, [r7, #18]
    2f98:	2110      	movs	r1, #16
    2f9a:	4618      	mov	r0, r3
    2f9c:	f001 fdfe 	bl	4b9c <print_int>
				set_cursor(i*CHAR_WIDTH*3,CHAR_HEIGHT);
    2fa0:	697b      	ldr	r3, [r7, #20]
    2fa2:	b2db      	uxtb	r3, r3
    2fa4:	461a      	mov	r2, r3
    2fa6:	00d2      	lsls	r2, r2, #3
    2fa8:	4413      	add	r3, r2
    2faa:	005b      	lsls	r3, r3, #1
    2fac:	b2db      	uxtb	r3, r3
    2fae:	2108      	movs	r1, #8
    2fb0:	4618      	mov	r0, r3
    2fb2:	f001 fd97 	bl	4ae4 <set_cursor>
				show_cursor(1);
    2fb6:	2001      	movs	r0, #1
    2fb8:	f001 ff2a 	bl	4e10 <show_cursor>
			}
			break;
    2fbc:	e027      	b.n	300e <buttons_map+0x1cc>
		case KEY_C:
			for (i=0;i<8;i++)newmap[i]=keymap[i];
    2fbe:	2300      	movs	r3, #0
    2fc0:	617b      	str	r3, [r7, #20]
    2fc2:	e00b      	b.n	2fdc <buttons_map+0x19a>
    2fc4:	697b      	ldr	r3, [r7, #20]
    2fc6:	68fa      	ldr	r2, [r7, #12]
    2fc8:	4413      	add	r3, r2
    2fca:	7819      	ldrb	r1, [r3, #0]
    2fcc:	1d3a      	adds	r2, r7, #4
    2fce:	697b      	ldr	r3, [r7, #20]
    2fd0:	4413      	add	r3, r2
    2fd2:	460a      	mov	r2, r1
    2fd4:	701a      	strb	r2, [r3, #0]
    2fd6:	697b      	ldr	r3, [r7, #20]
    2fd8:	3301      	adds	r3, #1
    2fda:	617b      	str	r3, [r7, #20]
    2fdc:	697b      	ldr	r3, [r7, #20]
    2fde:	2b07      	cmp	r3, #7
    2fe0:	ddf0      	ble.n	2fc4 <buttons_map+0x182>
			display_keymap(newmap);
    2fe2:	1d3b      	adds	r3, r7, #4
    2fe4:	4618      	mov	r0, r3
    2fe6:	f7ff ff0f 	bl	2e08 <display_keymap>
			set_cursor(0,CHAR_HEIGHT);
    2fea:	2108      	movs	r1, #8
    2fec:	2000      	movs	r0, #0
    2fee:	f001 fd79 	bl	4ae4 <set_cursor>
			i=0;
    2ff2:	2300      	movs	r3, #0
    2ff4:	617b      	str	r3, [r7, #20]
			key=newmap[i];
    2ff6:	1d3a      	adds	r2, r7, #4
    2ff8:	697b      	ldr	r3, [r7, #20]
    2ffa:	4413      	add	r3, r2
    2ffc:	781b      	ldrb	r3, [r3, #0]
    2ffe:	74bb      	strb	r3, [r7, #18]
			break;	
    3000:	e006      	b.n	3010 <buttons_map+0x1ce>
			break;
    3002:	bf00      	nop
    3004:	e004      	b.n	3010 <buttons_map+0x1ce>
			break;
    3006:	bf00      	nop
    3008:	e002      	b.n	3010 <buttons_map+0x1ce>
			break;
    300a:	bf00      	nop
    300c:	e000      	b.n	3010 <buttons_map+0x1ce>
			break;
    300e:	bf00      	nop
		}//switch
		btn_wait_up(btn);
    3010:	7cfb      	ldrb	r3, [r7, #19]
    3012:	4618      	mov	r0, r3
    3014:	f7fe fd5c 	bl	1ad0 <btn_wait_up>
	while(btn!=KEY_B){
    3018:	7cfb      	ldrb	r3, [r7, #19]
    301a:	2b20      	cmp	r3, #32
    301c:	f47f af43 	bne.w	2ea6 <buttons_map+0x64>
	}
	for (i=0;i<8;i++)keymap[i]=newmap[i];
    3020:	2300      	movs	r3, #0
    3022:	617b      	str	r3, [r7, #20]
    3024:	e00a      	b.n	303c <buttons_map+0x1fa>
    3026:	697b      	ldr	r3, [r7, #20]
    3028:	68fa      	ldr	r2, [r7, #12]
    302a:	4413      	add	r3, r2
    302c:	1d39      	adds	r1, r7, #4
    302e:	697a      	ldr	r2, [r7, #20]
    3030:	440a      	add	r2, r1
    3032:	7812      	ldrb	r2, [r2, #0]
    3034:	701a      	strb	r2, [r3, #0]
    3036:	697b      	ldr	r3, [r7, #20]
    3038:	3301      	adds	r3, #1
    303a:	617b      	str	r3, [r7, #20]
    303c:	697b      	ldr	r3, [r7, #20]
    303e:	2b07      	cmp	r3, #7
    3040:	ddf1      	ble.n	3026 <buttons_map+0x1e4>
}
    3042:	bf00      	nop
    3044:	3718      	adds	r7, #24
    3046:	46bd      	mov	sp, r7
    3048:	bd80      	pop	{r7, pc}
    304a:	bf00      	nop
    304c:	000059f8 	.word	0x000059f8

00003050 <print_games_list>:

static void print_games_list(unsigned first, unsigned rows){
    3050:	b580      	push	{r7, lr}
    3052:	b084      	sub	sp, #16
    3054:	af00      	add	r7, sp, #0
    3056:	6078      	str	r0, [r7, #4]
    3058:	6039      	str	r1, [r7, #0]
	int r=1;
    305a:	2301      	movs	r3, #1
    305c:	60fb      	str	r3, [r7, #12]

	set_cursor(0,0);
    305e:	2100      	movs	r1, #0
    3060:	2000      	movs	r0, #0
    3062:	f001 fd3f 	bl	4ae4 <set_cursor>
	print("**** GAMES ****");
    3066:	4815      	ldr	r0, [pc, #84]	; (30bc <print_games_list+0x6c>)
    3068:	f001 fd68 	bl	4b3c <print>
	while ((r<rows) && games_list[first].size){
    306c:	e012      	b.n	3094 <print_games_list+0x44>
		new_line();
    306e:	f001 fc19 	bl	48a4 <new_line>
		put_char(' ');
    3072:	2020      	movs	r0, #32
    3074:	f001 fcaa 	bl	49cc <put_char>
		print(games_list[first].name);
    3078:	687a      	ldr	r2, [r7, #4]
    307a:	4613      	mov	r3, r2
    307c:	00db      	lsls	r3, r3, #3
    307e:	1a9b      	subs	r3, r3, r2
    3080:	009b      	lsls	r3, r3, #2
    3082:	4a0f      	ldr	r2, [pc, #60]	; (30c0 <print_games_list+0x70>)
    3084:	4413      	add	r3, r2
    3086:	3301      	adds	r3, #1
    3088:	4618      	mov	r0, r3
    308a:	f001 fd57 	bl	4b3c <print>
		first++;
    308e:	687b      	ldr	r3, [r7, #4]
    3090:	3301      	adds	r3, #1
    3092:	607b      	str	r3, [r7, #4]
	while ((r<rows) && games_list[first].size){
    3094:	68fa      	ldr	r2, [r7, #12]
    3096:	683b      	ldr	r3, [r7, #0]
    3098:	429a      	cmp	r2, r3
    309a:	d20a      	bcs.n	30b2 <print_games_list+0x62>
    309c:	4908      	ldr	r1, [pc, #32]	; (30c0 <print_games_list+0x70>)
    309e:	687a      	ldr	r2, [r7, #4]
    30a0:	4613      	mov	r3, r2
    30a2:	00db      	lsls	r3, r3, #3
    30a4:	1a9b      	subs	r3, r3, r2
    30a6:	009b      	lsls	r3, r3, #2
    30a8:	440b      	add	r3, r1
    30aa:	3310      	adds	r3, #16
    30ac:	681b      	ldr	r3, [r3, #0]
    30ae:	2b00      	cmp	r3, #0
    30b0:	d1dd      	bne.n	306e <print_games_list+0x1e>
	}
}
    30b2:	bf00      	nop
    30b4:	3710      	adds	r7, #16
    30b6:	46bd      	mov	sp, r7
    30b8:	bd80      	pop	{r7, pc}
    30ba:	bf00      	nop
    30bc:	00005a0c 	.word	0x00005a0c
    30c0:	20000008 	.word	0x20000008

000030c4 <run_game>:

static void run_game(unsigned idx){
    30c4:	b590      	push	{r4, r7, lr}
    30c6:	b085      	sub	sp, #20
    30c8:	af00      	add	r7, sp, #0
    30ca:	6078      	str	r0, [r7, #4]
	int i;
	uint16_t addr=0;
    30cc:	2300      	movs	r3, #0
    30ce:	81fb      	strh	r3, [r7, #14]
	if (games_list[idx].vmode==VM_CHIP8){
    30d0:	4923      	ldr	r1, [pc, #140]	; (3160 <run_game+0x9c>)
    30d2:	687a      	ldr	r2, [r7, #4]
    30d4:	4613      	mov	r3, r2
    30d6:	00db      	lsls	r3, r3, #3
    30d8:	1a9b      	subs	r3, r3, r2
    30da:	009b      	lsls	r3, r3, #2
    30dc:	440b      	add	r3, r1
    30de:	781b      	ldrb	r3, [r3, #0]
    30e0:	2b02      	cmp	r3, #2
    30e2:	d102      	bne.n	30ea <run_game+0x26>
		addr=512;
    30e4:	f44f 7300 	mov.w	r3, #512	; 0x200
    30e8:	81fb      	strh	r3, [r7, #14]
	}
	move(games_list[idx].data,&game_ram[addr],games_list[idx].size);
    30ea:	491d      	ldr	r1, [pc, #116]	; (3160 <run_game+0x9c>)
    30ec:	687a      	ldr	r2, [r7, #4]
    30ee:	4613      	mov	r3, r2
    30f0:	00db      	lsls	r3, r3, #3
    30f2:	1a9b      	subs	r3, r3, r2
    30f4:	009b      	lsls	r3, r3, #2
    30f6:	440b      	add	r3, r1
    30f8:	3314      	adds	r3, #20
    30fa:	6818      	ldr	r0, [r3, #0]
    30fc:	89fb      	ldrh	r3, [r7, #14]
    30fe:	4a19      	ldr	r2, [pc, #100]	; (3164 <run_game+0xa0>)
    3100:	189c      	adds	r4, r3, r2
    3102:	4917      	ldr	r1, [pc, #92]	; (3160 <run_game+0x9c>)
    3104:	687a      	ldr	r2, [r7, #4]
    3106:	4613      	mov	r3, r2
    3108:	00db      	lsls	r3, r3, #3
    310a:	1a9b      	subs	r3, r3, r2
    310c:	009b      	lsls	r3, r3, #2
    310e:	440b      	add	r3, r1
    3110:	3310      	adds	r3, #16
    3112:	681b      	ldr	r3, [r3, #0]
    3114:	461a      	mov	r2, r3
    3116:	4621      	mov	r1, r4
    3118:	f7fe fe8d 	bl	1e36 <move>
	set_keymap(games_list[idx].keymap);
    311c:	4910      	ldr	r1, [pc, #64]	; (3160 <run_game+0x9c>)
    311e:	687a      	ldr	r2, [r7, #4]
    3120:	4613      	mov	r3, r2
    3122:	00db      	lsls	r3, r3, #3
    3124:	1a9b      	subs	r3, r3, r2
    3126:	009b      	lsls	r3, r3, #2
    3128:	440b      	add	r3, r1
    312a:	3318      	adds	r3, #24
    312c:	681b      	ldr	r3, [r3, #0]
    312e:	4618      	mov	r0, r3
    3130:	f7fe fbb6 	bl	18a0 <set_keymap>
	set_video_mode(games_list[idx].vmode);
    3134:	490a      	ldr	r1, [pc, #40]	; (3160 <run_game+0x9c>)
    3136:	687a      	ldr	r2, [r7, #4]
    3138:	4613      	mov	r3, r2
    313a:	00db      	lsls	r3, r3, #3
    313c:	1a9b      	subs	r3, r3, r2
    313e:	009b      	lsls	r3, r3, #2
    3140:	440b      	add	r3, r1
    3142:	781b      	ldrb	r3, [r3, #0]
    3144:	4618      	mov	r0, r3
    3146:	f002 f90b 	bl	5360 <set_video_mode>
	chip_vm(addr);
    314a:	89fb      	ldrh	r3, [r7, #14]
    314c:	4618      	mov	r0, r3
    314e:	f7fd f9c7 	bl	4e0 <chip_vm>
	set_video_mode(VM_BPCHIP);
    3152:	2000      	movs	r0, #0
    3154:	f002 f904 	bl	5360 <set_video_mode>
}
    3158:	bf00      	nop
    315a:	3714      	adds	r7, #20
    315c:	46bd      	mov	sp, r7
    315e:	bd90      	pop	{r4, r7, pc}
    3160:	20000008 	.word	0x20000008
    3164:	200006b4 	.word	0x200006b4

00003168 <select_game>:

static void select_game(){
    3168:	b580      	push	{r7, lr}
    316a:	b088      	sub	sp, #32
    316c:	af00      	add	r7, sp, #0
	int i=0,first=0,count,rows,selected=1;
    316e:	2300      	movs	r3, #0
    3170:	613b      	str	r3, [r7, #16]
    3172:	2300      	movs	r3, #0
    3174:	61fb      	str	r3, [r7, #28]
    3176:	2301      	movs	r3, #1
    3178:	61bb      	str	r3, [r7, #24]
	int loop=1;
    317a:	2301      	movs	r3, #1
    317c:	617b      	str	r3, [r7, #20]
	uint8_t btn;
	vmode_params_t *vparams;
	count=games_count();
    317e:	f7fe fd21 	bl	1bc4 <games_count>
    3182:	4603      	mov	r3, r0
    3184:	60fb      	str	r3, [r7, #12]
	set_video_mode(VM_BPCHIP);
    3186:	2000      	movs	r0, #0
    3188:	f002 f8ea 	bl	5360 <set_video_mode>
	vparams=get_video_params();
    318c:	f002 f980 	bl	5490 <get_video_params>
    3190:	60b8      	str	r0, [r7, #8]
	rows=vparams->vres/CHAR_HEIGHT;
    3192:	68bb      	ldr	r3, [r7, #8]
    3194:	89db      	ldrh	r3, [r3, #14]
    3196:	08db      	lsrs	r3, r3, #3
    3198:	b29b      	uxth	r3, r3
    319a:	607b      	str	r3, [r7, #4]
	while(loop){
    319c:	e048      	b.n	3230 <select_game+0xc8>
		print_games_list(first,rows);
    319e:	69fb      	ldr	r3, [r7, #28]
    31a0:	687a      	ldr	r2, [r7, #4]
    31a2:	4611      	mov	r1, r2
    31a4:	4618      	mov	r0, r3
    31a6:	f7ff ff53 	bl	3050 <print_games_list>
		set_cursor(0,selected*CHAR_HEIGHT);
    31aa:	69bb      	ldr	r3, [r7, #24]
    31ac:	b2db      	uxtb	r3, r3
    31ae:	00db      	lsls	r3, r3, #3
    31b0:	b2db      	uxtb	r3, r3
    31b2:	4619      	mov	r1, r3
    31b4:	2000      	movs	r0, #0
    31b6:	f001 fc95 	bl	4ae4 <set_cursor>
		put_char('>');
    31ba:	203e      	movs	r0, #62	; 0x3e
    31bc:	f001 fc06 	bl	49cc <put_char>
		btn=btn_wait_any();
    31c0:	f7fe fcae 	bl	1b20 <btn_wait_any>
    31c4:	4603      	mov	r3, r0
    31c6:	70fb      	strb	r3, [r7, #3]
		btn_wait_up(btn);
    31c8:	78fb      	ldrb	r3, [r7, #3]
    31ca:	4618      	mov	r0, r3
    31cc:	f7fe fc80 	bl	1ad0 <btn_wait_up>
		switch(btn){
    31d0:	78fb      	ldrb	r3, [r7, #3]
    31d2:	2b04      	cmp	r3, #4
    31d4:	d016      	beq.n	3204 <select_game+0x9c>
    31d6:	2b04      	cmp	r3, #4
    31d8:	dc02      	bgt.n	31e0 <select_game+0x78>
    31da:	2b02      	cmp	r3, #2
    31dc:	d005      	beq.n	31ea <select_game+0x82>
    31de:	e027      	b.n	3230 <select_game+0xc8>
    31e0:	2b20      	cmp	r3, #32
    31e2:	d022      	beq.n	322a <select_game+0xc2>
    31e4:	2b40      	cmp	r3, #64	; 0x40
    31e6:	d02e      	beq.n	3246 <select_game+0xde>
    31e8:	e022      	b.n	3230 <select_game+0xc8>
		case KEY_UP:
			if (first) first--;
    31ea:	69fb      	ldr	r3, [r7, #28]
    31ec:	2b00      	cmp	r3, #0
    31ee:	d002      	beq.n	31f6 <select_game+0x8e>
    31f0:	69fb      	ldr	r3, [r7, #28]
    31f2:	3b01      	subs	r3, #1
    31f4:	61fb      	str	r3, [r7, #28]
			if (selected>1) selected--;
    31f6:	69bb      	ldr	r3, [r7, #24]
    31f8:	2b01      	cmp	r3, #1
    31fa:	dd19      	ble.n	3230 <select_game+0xc8>
    31fc:	69bb      	ldr	r3, [r7, #24]
    31fe:	3b01      	subs	r3, #1
    3200:	61bb      	str	r3, [r7, #24]
			break;
    3202:	e015      	b.n	3230 <select_game+0xc8>
		case KEY_DOWN:
			if ((first+selected-1)<(count-1)){
    3204:	69fa      	ldr	r2, [r7, #28]
    3206:	69bb      	ldr	r3, [r7, #24]
    3208:	4413      	add	r3, r2
    320a:	1e5a      	subs	r2, r3, #1
    320c:	68fb      	ldr	r3, [r7, #12]
    320e:	3b01      	subs	r3, #1
    3210:	429a      	cmp	r2, r3
    3212:	da0d      	bge.n	3230 <select_game+0xc8>
				selected++;
    3214:	69bb      	ldr	r3, [r7, #24]
    3216:	3301      	adds	r3, #1
    3218:	61bb      	str	r3, [r7, #24]
				if (selected>=rows) first++;
    321a:	69ba      	ldr	r2, [r7, #24]
    321c:	687b      	ldr	r3, [r7, #4]
    321e:	429a      	cmp	r2, r3
    3220:	db06      	blt.n	3230 <select_game+0xc8>
    3222:	69fb      	ldr	r3, [r7, #28]
    3224:	3301      	adds	r3, #1
    3226:	61fb      	str	r3, [r7, #28]
			}
			break;
    3228:	e002      	b.n	3230 <select_game+0xc8>
		case KEY_B:
			loop=false;
    322a:	2300      	movs	r3, #0
    322c:	617b      	str	r3, [r7, #20]
			break;	
    322e:	bf00      	nop
	while(loop){
    3230:	697b      	ldr	r3, [r7, #20]
    3232:	2b00      	cmp	r3, #0
    3234:	d1b3      	bne.n	319e <select_game+0x36>
		case KEY_C:
			return;	
		}
	}
	run_game(first+selected-1);
    3236:	69fa      	ldr	r2, [r7, #28]
    3238:	69bb      	ldr	r3, [r7, #24]
    323a:	4413      	add	r3, r2
    323c:	3b01      	subs	r3, #1
    323e:	4618      	mov	r0, r3
    3240:	f7ff ff40 	bl	30c4 <run_game>
    3244:	e000      	b.n	3248 <select_game+0xe0>
			return;	
    3246:	bf00      	nop
}
    3248:	3720      	adds	r7, #32
    324a:	46bd      	mov	sp, r7
    324c:	bd80      	pop	{r7, pc}

0000324e <display_menu>:
	" Games list",
	" Video test",
	" Sound test",
};

static void display_menu(){
    324e:	b580      	push	{r7, lr}
    3250:	b082      	sub	sp, #8
    3252:	af00      	add	r7, sp, #0
	int i;
	gfx_cls();
    3254:	f7ff f840 	bl	22d8 <gfx_cls>
	for (i=0;i<MENU_ITEMS;i++){
    3258:	2300      	movs	r3, #0
    325a:	607b      	str	r3, [r7, #4]
    325c:	e009      	b.n	3272 <display_menu+0x24>
		println(menu_list[i]);
    325e:	4a08      	ldr	r2, [pc, #32]	; (3280 <display_menu+0x32>)
    3260:	687b      	ldr	r3, [r7, #4]
    3262:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    3266:	4618      	mov	r0, r3
    3268:	f001 fc8b 	bl	4b82 <println>
	for (i=0;i<MENU_ITEMS;i++){
    326c:	687b      	ldr	r3, [r7, #4]
    326e:	3301      	adds	r3, #1
    3270:	607b      	str	r3, [r7, #4]
    3272:	687b      	ldr	r3, [r7, #4]
    3274:	2b03      	cmp	r3, #3
    3276:	ddf2      	ble.n	325e <display_menu+0x10>
	}
}
    3278:	bf00      	nop
    327a:	3708      	adds	r7, #8
    327c:	46bd      	mov	sp, r7
    327e:	bd80      	pop	{r7, pc}
    3280:	20000198 	.word	0x20000198

00003284 <menu>:

static void menu(){
    3284:	b580      	push	{r7, lr}
    3286:	b084      	sub	sp, #16
    3288:	af00      	add	r7, sp, #0
	int i=0;
    328a:	2300      	movs	r3, #0
    328c:	60fb      	str	r3, [r7, #12]
	uint8_t btn;
	vmode_params_t* vparams=get_video_params();
    328e:	f002 f8ff 	bl	5490 <get_video_params>
    3292:	60b8      	str	r0, [r7, #8]
	display_menu();
    3294:	f7ff ffdb 	bl	324e <display_menu>
	while (1){
		set_cursor(0,i*CHAR_HEIGHT);
    3298:	68fb      	ldr	r3, [r7, #12]
    329a:	b2db      	uxtb	r3, r3
    329c:	00db      	lsls	r3, r3, #3
    329e:	b2db      	uxtb	r3, r3
    32a0:	4619      	mov	r1, r3
    32a2:	2000      	movs	r0, #0
    32a4:	f001 fc1e 	bl	4ae4 <set_cursor>
		put_char('>');
    32a8:	203e      	movs	r0, #62	; 0x3e
    32aa:	f001 fb8f 	bl	49cc <put_char>
		btn=btn_wait_any();
    32ae:	f7fe fc37 	bl	1b20 <btn_wait_any>
    32b2:	4603      	mov	r3, r0
    32b4:	71fb      	strb	r3, [r7, #7]
		btn_wait_up(btn);
    32b6:	79fb      	ldrb	r3, [r7, #7]
    32b8:	4618      	mov	r0, r3
    32ba:	f7fe fc09 	bl	1ad0 <btn_wait_up>
		set_cursor(0,i*CHAR_HEIGHT);
    32be:	68fb      	ldr	r3, [r7, #12]
    32c0:	b2db      	uxtb	r3, r3
    32c2:	00db      	lsls	r3, r3, #3
    32c4:	b2db      	uxtb	r3, r3
    32c6:	4619      	mov	r1, r3
    32c8:	2000      	movs	r0, #0
    32ca:	f001 fc0b 	bl	4ae4 <set_cursor>
		put_char(' ');
    32ce:	2020      	movs	r0, #32
    32d0:	f001 fb7c 	bl	49cc <put_char>
		switch(btn){
    32d4:	79fb      	ldrb	r3, [r7, #7]
    32d6:	2b04      	cmp	r3, #4
    32d8:	d00a      	beq.n	32f0 <menu+0x6c>
    32da:	2b20      	cmp	r3, #32
    32dc:	d00f      	beq.n	32fe <menu+0x7a>
    32de:	2b02      	cmp	r3, #2
    32e0:	d12e      	bne.n	3340 <menu+0xbc>
		case KEY_UP:
			if (i) i--;
    32e2:	68fb      	ldr	r3, [r7, #12]
    32e4:	2b00      	cmp	r3, #0
    32e6:	d028      	beq.n	333a <menu+0xb6>
    32e8:	68fb      	ldr	r3, [r7, #12]
    32ea:	3b01      	subs	r3, #1
    32ec:	60fb      	str	r3, [r7, #12]
			break;
    32ee:	e024      	b.n	333a <menu+0xb6>
		case KEY_DOWN:
			if (i<(MENU_ITEMS-1)) i++;
    32f0:	68fb      	ldr	r3, [r7, #12]
    32f2:	2b02      	cmp	r3, #2
    32f4:	dc23      	bgt.n	333e <menu+0xba>
    32f6:	68fb      	ldr	r3, [r7, #12]
    32f8:	3301      	adds	r3, #1
    32fa:	60fb      	str	r3, [r7, #12]
			break;
    32fc:	e01f      	b.n	333e <menu+0xba>
		case KEY_B:
			switch(i){
    32fe:	68fb      	ldr	r3, [r7, #12]
    3300:	2b03      	cmp	r3, #3
    3302:	d817      	bhi.n	3334 <menu+0xb0>
    3304:	a201      	add	r2, pc, #4	; (adr r2, 330c <menu+0x88>)
    3306:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    330a:	bf00      	nop
    330c:	0000331d 	.word	0x0000331d
    3310:	00003323 	.word	0x00003323
    3314:	00003329 	.word	0x00003329
    3318:	0000332f 	.word	0x0000332f
			case 0:
				buttons_map();
    331c:	f7ff fd91 	bl	2e42 <buttons_map>
				break;
    3320:	e008      	b.n	3334 <menu+0xb0>
			case 1:
				select_game();
    3322:	f7ff ff21 	bl	3168 <select_game>
				break;
    3326:	e005      	b.n	3334 <menu+0xb0>
			case 2:
				video_test();
    3328:	f7ff fc98 	bl	2c5c <video_test>
				break;
    332c:	e002      	b.n	3334 <menu+0xb0>
			case 3:
				sound_test();
    332e:	f7ff fd0f 	bl	2d50 <sound_test>
				break;	
    3332:	bf00      	nop
			}
			//set_video_mode(VM_BPCHIP);
			display_menu();
    3334:	f7ff ff8b 	bl	324e <display_menu>
			break;	
    3338:	e002      	b.n	3340 <menu+0xbc>
			break;
    333a:	bf00      	nop
    333c:	e7ac      	b.n	3298 <menu+0x14>
			break;
    333e:	bf00      	nop
		set_cursor(0,i*CHAR_HEIGHT);
    3340:	e7aa      	b.n	3298 <menu+0x14>

00003342 <main>:
		}
	}//while
}

//const uint8_t sample[16]={0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA,0xAA};
void main(void){
    3342:	b580      	push	{r7, lr}
    3344:	b086      	sub	sp, #24
    3346:	af00      	add	r7, sp, #0
	set_sysclock();
    3348:	f7ff f9e6 	bl	2718 <set_sysclock>
//	config_systicks();
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    334c:	4b19      	ldr	r3, [pc, #100]	; (33b4 <main+0x72>)
    334e:	f640 021d 	movw	r2, #2077	; 0x81d
    3352:	619a      	str	r2, [r3, #24]
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    3354:	2206      	movs	r2, #6
    3356:	210d      	movs	r1, #13
    3358:	4817      	ldr	r0, [pc, #92]	; (33b8 <main+0x76>)
    335a:	f7fe fe59 	bl	2010 <config_pin>
	_led_off();
    335e:	4a16      	ldr	r2, [pc, #88]	; (33b8 <main+0x76>)
    3360:	4b15      	ldr	r3, [pc, #84]	; (33b8 <main+0x76>)
    3362:	68db      	ldr	r3, [r3, #12]
    3364:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3368:	60d3      	str	r3, [r2, #12]
	gamepad_init();
    336a:	f7fe fab7 	bl	18dc <gamepad_init>
	tvout_init();
    336e:	f001 fd77 	bl	4e60 <tvout_init>
	sound_init();
    3372:	f000 ff4d 	bl	4210 <sound_init>
	uint8_t sample[16];
	int i;
	for (i=0;i<16;i++)sample[i]=rand()&255;
    3376:	2300      	movs	r3, #0
    3378:	617b      	str	r3, [r7, #20]
    337a:	e00b      	b.n	3394 <main+0x52>
    337c:	f7fd f88e 	bl	49c <rand>
    3380:	4603      	mov	r3, r0
    3382:	b2d9      	uxtb	r1, r3
    3384:	1d3a      	adds	r2, r7, #4
    3386:	697b      	ldr	r3, [r7, #20]
    3388:	4413      	add	r3, r2
    338a:	460a      	mov	r2, r1
    338c:	701a      	strb	r2, [r3, #0]
    338e:	697b      	ldr	r3, [r7, #20]
    3390:	3301      	adds	r3, #1
    3392:	617b      	str	r3, [r7, #20]
    3394:	697b      	ldr	r3, [r7, #20]
    3396:	2b0f      	cmp	r3, #15
    3398:	ddf0      	ble.n	337c <main+0x3a>
	load_sound_buffer((const uint8_t*)sample);
    339a:	1d3b      	adds	r3, r7, #4
    339c:	4618      	mov	r0, r3
    339e:	f000 ffac 	bl	42fa <load_sound_buffer>
	gfx_cls();
    33a2:	f7fe ff99 	bl	22d8 <gfx_cls>
	menu();
    33a6:	f7ff ff6d 	bl	3284 <menu>
}
    33aa:	bf00      	nop
    33ac:	3718      	adds	r7, #24
    33ae:	46bd      	mov	sp, r7
    33b0:	bd80      	pop	{r7, pc}
    33b2:	bf00      	nop
    33b4:	40021000 	.word	0x40021000
    33b8:	40011000 	.word	0x40011000

000033bc <enable_interrupt>:

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
    33bc:	b480      	push	{r7}
    33be:	b083      	sub	sp, #12
    33c0:	af00      	add	r7, sp, #0
    33c2:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    33c4:	687b      	ldr	r3, [r7, #4]
    33c6:	2b3b      	cmp	r3, #59	; 0x3b
    33c8:	dc17      	bgt.n	33fa <enable_interrupt+0x3e>
	ISER[irq>>5]|=1<<(irq&0x1f);
    33ca:	687b      	ldr	r3, [r7, #4]
    33cc:	115b      	asrs	r3, r3, #5
    33ce:	009b      	lsls	r3, r3, #2
    33d0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    33d4:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    33d8:	687a      	ldr	r2, [r7, #4]
    33da:	1152      	asrs	r2, r2, #5
    33dc:	0092      	lsls	r2, r2, #2
    33de:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    33e2:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    33e6:	6812      	ldr	r2, [r2, #0]
    33e8:	6879      	ldr	r1, [r7, #4]
    33ea:	f001 011f 	and.w	r1, r1, #31
    33ee:	2001      	movs	r0, #1
    33f0:	fa00 f101 	lsl.w	r1, r0, r1
    33f4:	430a      	orrs	r2, r1
    33f6:	601a      	str	r2, [r3, #0]
    33f8:	e000      	b.n	33fc <enable_interrupt+0x40>
	if (irq>LAST_IRQ) return ;
    33fa:	bf00      	nop
}
    33fc:	370c      	adds	r7, #12
    33fe:	46bd      	mov	sp, r7
    3400:	bc80      	pop	{r7}
    3402:	4770      	bx	lr

00003404 <disable_interrupt>:


void disable_interrupt(int irq){
    3404:	b480      	push	{r7}
    3406:	b083      	sub	sp, #12
    3408:	af00      	add	r7, sp, #0
    340a:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    340c:	687b      	ldr	r3, [r7, #4]
    340e:	2b3b      	cmp	r3, #59	; 0x3b
    3410:	dc0c      	bgt.n	342c <disable_interrupt+0x28>
	ICER[irq>>5]=(1<<(irq&0x1f));
    3412:	687b      	ldr	r3, [r7, #4]
    3414:	115b      	asrs	r3, r3, #5
    3416:	009a      	lsls	r2, r3, #2
    3418:	4b07      	ldr	r3, [pc, #28]	; (3438 <disable_interrupt+0x34>)
    341a:	4413      	add	r3, r2
    341c:	687a      	ldr	r2, [r7, #4]
    341e:	f002 021f 	and.w	r2, r2, #31
    3422:	2101      	movs	r1, #1
    3424:	fa01 f202 	lsl.w	r2, r1, r2
    3428:	601a      	str	r2, [r3, #0]
    342a:	e000      	b.n	342e <disable_interrupt+0x2a>
	if (irq>LAST_IRQ) return ;
    342c:	bf00      	nop
}
    342e:	370c      	adds	r7, #12
    3430:	46bd      	mov	sp, r7
    3432:	bc80      	pop	{r7}
    3434:	4770      	bx	lr
    3436:	bf00      	nop
    3438:	e000e180 	.word	0xe000e180

0000343c <get_pending>:

unsigned get_pending(int irq){
    343c:	b480      	push	{r7}
    343e:	b083      	sub	sp, #12
    3440:	af00      	add	r7, sp, #0
    3442:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    3444:	687b      	ldr	r3, [r7, #4]
    3446:	2b3b      	cmp	r3, #59	; 0x3b
    3448:	dd01      	ble.n	344e <get_pending+0x12>
    344a:	2300      	movs	r3, #0
    344c:	e00c      	b.n	3468 <get_pending+0x2c>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    344e:	687b      	ldr	r3, [r7, #4]
    3450:	115b      	asrs	r3, r3, #5
    3452:	009a      	lsls	r2, r3, #2
    3454:	4b07      	ldr	r3, [pc, #28]	; (3474 <get_pending+0x38>)
    3456:	4413      	add	r3, r2
    3458:	681b      	ldr	r3, [r3, #0]
    345a:	687a      	ldr	r2, [r7, #4]
    345c:	f002 021f 	and.w	r2, r2, #31
    3460:	2101      	movs	r1, #1
    3462:	fa01 f202 	lsl.w	r2, r1, r2
    3466:	4013      	ands	r3, r2
}
    3468:	4618      	mov	r0, r3
    346a:	370c      	adds	r7, #12
    346c:	46bd      	mov	sp, r7
    346e:	bc80      	pop	{r7}
    3470:	4770      	bx	lr
    3472:	bf00      	nop
    3474:	e000e280 	.word	0xe000e280

00003478 <get_active>:

unsigned get_active(int irq){
    3478:	b480      	push	{r7}
    347a:	b083      	sub	sp, #12
    347c:	af00      	add	r7, sp, #0
    347e:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    3480:	687b      	ldr	r3, [r7, #4]
    3482:	2b3b      	cmp	r3, #59	; 0x3b
    3484:	dd01      	ble.n	348a <get_active+0x12>
    3486:	2300      	movs	r3, #0
    3488:	e00e      	b.n	34a8 <get_active+0x30>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    348a:	687b      	ldr	r3, [r7, #4]
    348c:	115b      	asrs	r3, r3, #5
    348e:	009b      	lsls	r3, r3, #2
    3490:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3494:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    3498:	681b      	ldr	r3, [r3, #0]
    349a:	687a      	ldr	r2, [r7, #4]
    349c:	f002 021f 	and.w	r2, r2, #31
    34a0:	2101      	movs	r1, #1
    34a2:	fa01 f202 	lsl.w	r2, r1, r2
    34a6:	4013      	ands	r3, r2
}
    34a8:	4618      	mov	r0, r3
    34aa:	370c      	adds	r7, #12
    34ac:	46bd      	mov	sp, r7
    34ae:	bc80      	pop	{r7}
    34b0:	4770      	bx	lr

000034b2 <set_pending>:

void set_pending(int irq){
    34b2:	b480      	push	{r7}
    34b4:	b083      	sub	sp, #12
    34b6:	af00      	add	r7, sp, #0
    34b8:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    34ba:	687b      	ldr	r3, [r7, #4]
    34bc:	2b3b      	cmp	r3, #59	; 0x3b
    34be:	dc17      	bgt.n	34f0 <set_pending+0x3e>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    34c0:	687b      	ldr	r3, [r7, #4]
    34c2:	115b      	asrs	r3, r3, #5
    34c4:	009b      	lsls	r3, r3, #2
    34c6:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    34ca:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    34ce:	687a      	ldr	r2, [r7, #4]
    34d0:	1152      	asrs	r2, r2, #5
    34d2:	0092      	lsls	r2, r2, #2
    34d4:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    34d8:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    34dc:	6812      	ldr	r2, [r2, #0]
    34de:	6879      	ldr	r1, [r7, #4]
    34e0:	f001 011f 	and.w	r1, r1, #31
    34e4:	2001      	movs	r0, #1
    34e6:	fa00 f101 	lsl.w	r1, r0, r1
    34ea:	430a      	orrs	r2, r1
    34ec:	601a      	str	r2, [r3, #0]
    34ee:	e000      	b.n	34f2 <set_pending+0x40>
	if (irq>LAST_IRQ) return;
    34f0:	bf00      	nop
}
    34f2:	370c      	adds	r7, #12
    34f4:	46bd      	mov	sp, r7
    34f6:	bc80      	pop	{r7}
    34f8:	4770      	bx	lr

000034fa <clear_pending>:

void clear_pending(int irq){
    34fa:	b480      	push	{r7}
    34fc:	b083      	sub	sp, #12
    34fe:	af00      	add	r7, sp, #0
    3500:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    3502:	687b      	ldr	r3, [r7, #4]
    3504:	2b3b      	cmp	r3, #59	; 0x3b
    3506:	dc0c      	bgt.n	3522 <clear_pending+0x28>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    3508:	687b      	ldr	r3, [r7, #4]
    350a:	115b      	asrs	r3, r3, #5
    350c:	009a      	lsls	r2, r3, #2
    350e:	4b07      	ldr	r3, [pc, #28]	; (352c <clear_pending+0x32>)
    3510:	4413      	add	r3, r2
    3512:	687a      	ldr	r2, [r7, #4]
    3514:	f002 021f 	and.w	r2, r2, #31
    3518:	2101      	movs	r1, #1
    351a:	fa01 f202 	lsl.w	r2, r1, r2
    351e:	601a      	str	r2, [r3, #0]
    3520:	e000      	b.n	3524 <clear_pending+0x2a>
	if (irq>LAST_IRQ) return;
    3522:	bf00      	nop
}
    3524:	370c      	adds	r7, #12
    3526:	46bd      	mov	sp, r7
    3528:	bc80      	pop	{r7}
    352a:	4770      	bx	lr
    352c:	e000e280 	.word	0xe000e280

00003530 <set_int_priority>:

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
    3530:	b480      	push	{r7}
    3532:	b083      	sub	sp, #12
    3534:	af00      	add	r7, sp, #0
    3536:	6078      	str	r0, [r7, #4]
    3538:	6039      	str	r1, [r7, #0]
	if ((irq>=0) && (irq<=LAST_IRQ)){
    353a:	687b      	ldr	r3, [r7, #4]
    353c:	2b00      	cmp	r3, #0
    353e:	db0d      	blt.n	355c <set_int_priority+0x2c>
    3540:	687b      	ldr	r3, [r7, #4]
    3542:	2b3b      	cmp	r3, #59	; 0x3b
    3544:	dc0a      	bgt.n	355c <set_int_priority+0x2c>
		IPR[irq]=(uint8_t)((priority&15)<<4);
    3546:	687b      	ldr	r3, [r7, #4]
    3548:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    354c:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    3550:	683a      	ldr	r2, [r7, #0]
    3552:	b2d2      	uxtb	r2, r2
    3554:	0112      	lsls	r2, r2, #4
    3556:	b2d2      	uxtb	r2, r2
    3558:	701a      	strb	r2, [r3, #0]
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
    355a:	e012      	b.n	3582 <set_int_priority+0x52>
	}else if ((irq<0) && (irq>-16)){
    355c:	687b      	ldr	r3, [r7, #4]
    355e:	2b00      	cmp	r3, #0
    3560:	da0f      	bge.n	3582 <set_int_priority+0x52>
    3562:	687b      	ldr	r3, [r7, #4]
    3564:	f113 0f0f 	cmn.w	r3, #15
    3568:	db0b      	blt.n	3582 <set_int_priority+0x52>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    356a:	687a      	ldr	r2, [r7, #4]
    356c:	f06f 0303 	mvn.w	r3, #3
    3570:	1a9b      	subs	r3, r3, r2
    3572:	461a      	mov	r2, r3
    3574:	4b05      	ldr	r3, [pc, #20]	; (358c <set_int_priority+0x5c>)
    3576:	4413      	add	r3, r2
    3578:	683a      	ldr	r2, [r7, #0]
    357a:	b2d2      	uxtb	r2, r2
    357c:	0112      	lsls	r2, r2, #4
    357e:	b2d2      	uxtb	r2, r2
    3580:	701a      	strb	r2, [r3, #0]
}
    3582:	bf00      	nop
    3584:	370c      	adds	r7, #12
    3586:	46bd      	mov	sp, r7
    3588:	bc80      	pop	{r7}
    358a:	4770      	bx	lr
    358c:	e000ed18 	.word	0xe000ed18

00003590 <leap_year>:
#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
    3590:	b480      	push	{r7}
    3592:	b083      	sub	sp, #12
    3594:	af00      	add	r7, sp, #0
    3596:	6078      	str	r0, [r7, #4]
	if (!(y&3)){
    3598:	687b      	ldr	r3, [r7, #4]
    359a:	f003 0303 	and.w	r3, r3, #3
    359e:	2b00      	cmp	r3, #0
    35a0:	d11a      	bne.n	35d8 <leap_year+0x48>
		if ((y%100==0) && (y%400)){
    35a2:	687a      	ldr	r2, [r7, #4]
    35a4:	4b0f      	ldr	r3, [pc, #60]	; (35e4 <leap_year+0x54>)
    35a6:	fba3 1302 	umull	r1, r3, r3, r2
    35aa:	095b      	lsrs	r3, r3, #5
    35ac:	2164      	movs	r1, #100	; 0x64
    35ae:	fb01 f303 	mul.w	r3, r1, r3
    35b2:	1ad3      	subs	r3, r2, r3
    35b4:	2b00      	cmp	r3, #0
    35b6:	d10d      	bne.n	35d4 <leap_year+0x44>
    35b8:	687a      	ldr	r2, [r7, #4]
    35ba:	4b0a      	ldr	r3, [pc, #40]	; (35e4 <leap_year+0x54>)
    35bc:	fba3 1302 	umull	r1, r3, r3, r2
    35c0:	09db      	lsrs	r3, r3, #7
    35c2:	f44f 71c8 	mov.w	r1, #400	; 0x190
    35c6:	fb01 f303 	mul.w	r3, r1, r3
    35ca:	1ad3      	subs	r3, r2, r3
    35cc:	2b00      	cmp	r3, #0
    35ce:	d001      	beq.n	35d4 <leap_year+0x44>
			return 0;
    35d0:	2300      	movs	r3, #0
    35d2:	e002      	b.n	35da <leap_year+0x4a>
		}
		return 1;
    35d4:	2301      	movs	r3, #1
    35d6:	e000      	b.n	35da <leap_year+0x4a>
	}
	return 0;
    35d8:	2300      	movs	r3, #0
}
    35da:	4618      	mov	r0, r3
    35dc:	370c      	adds	r7, #12
    35de:	46bd      	mov	sp, r7
    35e0:	bc80      	pop	{r7}
    35e2:	4770      	bx	lr
    35e4:	51eb851f 	.word	0x51eb851f

000035e8 <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
    35e8:	b480      	push	{r7}
    35ea:	b085      	sub	sp, #20
    35ec:	af00      	add	r7, sp, #0
    35ee:	6078      	str	r0, [r7, #4]
    35f0:	6039      	str	r1, [r7, #0]
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    35f2:	4a0d      	ldr	r2, [pc, #52]	; (3628 <sec_per_month+0x40>)
    35f4:	683b      	ldr	r3, [r7, #0]
    35f6:	4413      	add	r3, r2
    35f8:	781b      	ldrb	r3, [r3, #0]
    35fa:	461a      	mov	r2, r3
    35fc:	4b0b      	ldr	r3, [pc, #44]	; (362c <sec_per_month+0x44>)
    35fe:	fb03 f302 	mul.w	r3, r3, r2
    3602:	60fb      	str	r3, [r7, #12]
	if (month==2 && leap){
    3604:	683b      	ldr	r3, [r7, #0]
    3606:	2b02      	cmp	r3, #2
    3608:	d108      	bne.n	361c <sec_per_month+0x34>
    360a:	687b      	ldr	r3, [r7, #4]
    360c:	2b00      	cmp	r3, #0
    360e:	d005      	beq.n	361c <sec_per_month+0x34>
		sec+=SEC_PER_DAY;
    3610:	68fb      	ldr	r3, [r7, #12]
    3612:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    3616:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    361a:	60fb      	str	r3, [r7, #12]
	}
	return sec;
    361c:	68fb      	ldr	r3, [r7, #12]
}
    361e:	4618      	mov	r0, r3
    3620:	3714      	adds	r7, #20
    3622:	46bd      	mov	sp, r7
    3624:	bc80      	pop	{r7}
    3626:	4770      	bx	lr
    3628:	00005b00 	.word	0x00005b00
    362c:	00015180 	.word	0x00015180

00003630 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    3630:	b580      	push	{r7, lr}
    3632:	b086      	sub	sp, #24
    3634:	af00      	add	r7, sp, #0
    3636:	6078      	str	r0, [r7, #4]
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    3638:	4b66      	ldr	r3, [pc, #408]	; (37d4 <get_date_time+0x1a4>)
    363a:	699b      	ldr	r3, [r3, #24]
    363c:	041a      	lsls	r2, r3, #16
    363e:	4b65      	ldr	r3, [pc, #404]	; (37d4 <get_date_time+0x1a4>)
    3640:	69db      	ldr	r3, [r3, #28]
    3642:	4413      	add	r3, r2
    3644:	617b      	str	r3, [r7, #20]
	dt->year=EPOCH_YEAR;
    3646:	687b      	ldr	r3, [r7, #4]
    3648:	f240 72b2 	movw	r2, #1970	; 0x7b2
    364c:	811a      	strh	r2, [r3, #8]
	leap=leap_year(EPOCH_YEAR);
    364e:	f240 70b2 	movw	r0, #1970	; 0x7b2
    3652:	f7ff ff9d 	bl	3590 <leap_year>
    3656:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    3658:	e019      	b.n	368e <get_date_time+0x5e>
		if (leap){
    365a:	693b      	ldr	r3, [r7, #16]
    365c:	2b00      	cmp	r3, #0
    365e:	d006      	beq.n	366e <get_date_time+0x3e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    3660:	697b      	ldr	r3, [r7, #20]
    3662:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    3666:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    366a:	617b      	str	r3, [r7, #20]
    366c:	e003      	b.n	3676 <get_date_time+0x46>
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    366e:	697a      	ldr	r2, [r7, #20]
    3670:	4b59      	ldr	r3, [pc, #356]	; (37d8 <get_date_time+0x1a8>)
    3672:	4413      	add	r3, r2
    3674:	617b      	str	r3, [r7, #20]
		}
		dt->year++;
    3676:	687b      	ldr	r3, [r7, #4]
    3678:	891b      	ldrh	r3, [r3, #8]
    367a:	3301      	adds	r3, #1
    367c:	b29a      	uxth	r2, r3
    367e:	687b      	ldr	r3, [r7, #4]
    3680:	811a      	strh	r2, [r3, #8]
		leap=leap_year(dt->year);
    3682:	687b      	ldr	r3, [r7, #4]
    3684:	891b      	ldrh	r3, [r3, #8]
    3686:	4618      	mov	r0, r3
    3688:	f7ff ff82 	bl	3590 <leap_year>
    368c:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    368e:	693b      	ldr	r3, [r7, #16]
    3690:	2b00      	cmp	r3, #0
    3692:	d103      	bne.n	369c <get_date_time+0x6c>
    3694:	697b      	ldr	r3, [r7, #20]
    3696:	4a51      	ldr	r2, [pc, #324]	; (37dc <get_date_time+0x1ac>)
    3698:	4293      	cmp	r3, r2
    369a:	d8de      	bhi.n	365a <get_date_time+0x2a>
    369c:	693b      	ldr	r3, [r7, #16]
    369e:	2b00      	cmp	r3, #0
    36a0:	d003      	beq.n	36aa <get_date_time+0x7a>
    36a2:	697b      	ldr	r3, [r7, #20]
    36a4:	4a4e      	ldr	r2, [pc, #312]	; (37e0 <get_date_time+0x1b0>)
    36a6:	4293      	cmp	r3, r2
    36a8:	d8d7      	bhi.n	365a <get_date_time+0x2a>
	}//while
	dt->month=1;
    36aa:	687a      	ldr	r2, [r7, #4]
    36ac:	8853      	ldrh	r3, [r2, #2]
    36ae:	2101      	movs	r1, #1
    36b0:	f361 1389 	bfi	r3, r1, #6, #4
    36b4:	8053      	strh	r3, [r2, #2]
	dt->day=1;
    36b6:	687a      	ldr	r2, [r7, #4]
    36b8:	7893      	ldrb	r3, [r2, #2]
    36ba:	2101      	movs	r1, #1
    36bc:	f361 0345 	bfi	r3, r1, #1, #5
    36c0:	7093      	strb	r3, [r2, #2]
	dt->hour=0;
    36c2:	687a      	ldr	r2, [r7, #4]
    36c4:	6813      	ldr	r3, [r2, #0]
    36c6:	f36f 3310 	bfc	r3, #12, #5
    36ca:	6013      	str	r3, [r2, #0]
	dt->minute=0;
    36cc:	687a      	ldr	r2, [r7, #4]
    36ce:	8813      	ldrh	r3, [r2, #0]
    36d0:	f36f 138b 	bfc	r3, #6, #6
    36d4:	8013      	strh	r3, [r2, #0]
	dt->second=0;
    36d6:	687a      	ldr	r2, [r7, #4]
    36d8:	7813      	ldrb	r3, [r2, #0]
    36da:	f36f 0305 	bfc	r3, #0, #6
    36de:	7013      	strb	r3, [r2, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    36e0:	e011      	b.n	3706 <get_date_time+0xd6>
		dt->month++;
    36e2:	687b      	ldr	r3, [r7, #4]
    36e4:	885b      	ldrh	r3, [r3, #2]
    36e6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    36ea:	b2db      	uxtb	r3, r3
    36ec:	3301      	adds	r3, #1
    36ee:	f003 030f 	and.w	r3, r3, #15
    36f2:	b2d9      	uxtb	r1, r3
    36f4:	687a      	ldr	r2, [r7, #4]
    36f6:	8853      	ldrh	r3, [r2, #2]
    36f8:	f361 1389 	bfi	r3, r1, #6, #4
    36fc:	8053      	strh	r3, [r2, #2]
		rtc_cntr-=sec;
    36fe:	697a      	ldr	r2, [r7, #20]
    3700:	68fb      	ldr	r3, [r7, #12]
    3702:	1ad3      	subs	r3, r2, r3
    3704:	617b      	str	r3, [r7, #20]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    3706:	687b      	ldr	r3, [r7, #4]
    3708:	885b      	ldrh	r3, [r3, #2]
    370a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    370e:	b2db      	uxtb	r3, r3
    3710:	4619      	mov	r1, r3
    3712:	6938      	ldr	r0, [r7, #16]
    3714:	f7ff ff68 	bl	35e8 <sec_per_month>
    3718:	60f8      	str	r0, [r7, #12]
    371a:	68fa      	ldr	r2, [r7, #12]
    371c:	697b      	ldr	r3, [r7, #20]
    371e:	429a      	cmp	r2, r3
    3720:	d3df      	bcc.n	36e2 <get_date_time+0xb2>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    3722:	697b      	ldr	r3, [r7, #20]
    3724:	4a2f      	ldr	r2, [pc, #188]	; (37e4 <get_date_time+0x1b4>)
    3726:	fba2 2303 	umull	r2, r3, r2, r3
    372a:	0c1b      	lsrs	r3, r3, #16
    372c:	b2db      	uxtb	r3, r3
    372e:	3301      	adds	r3, #1
    3730:	b2db      	uxtb	r3, r3
    3732:	f003 031f 	and.w	r3, r3, #31
    3736:	b2d9      	uxtb	r1, r3
    3738:	687a      	ldr	r2, [r7, #4]
    373a:	7893      	ldrb	r3, [r2, #2]
    373c:	f361 0345 	bfi	r3, r1, #1, #5
    3740:	7093      	strb	r3, [r2, #2]
	rtc_cntr%=SEC_PER_DAY;
    3742:	697b      	ldr	r3, [r7, #20]
    3744:	4a27      	ldr	r2, [pc, #156]	; (37e4 <get_date_time+0x1b4>)
    3746:	fba2 1203 	umull	r1, r2, r2, r3
    374a:	0c12      	lsrs	r2, r2, #16
    374c:	4926      	ldr	r1, [pc, #152]	; (37e8 <get_date_time+0x1b8>)
    374e:	fb01 f202 	mul.w	r2, r1, r2
    3752:	1a9b      	subs	r3, r3, r2
    3754:	617b      	str	r3, [r7, #20]
	dt->hour=rtc_cntr/SEC_PER_HR;
    3756:	697b      	ldr	r3, [r7, #20]
    3758:	4a24      	ldr	r2, [pc, #144]	; (37ec <get_date_time+0x1bc>)
    375a:	fba2 2303 	umull	r2, r3, r2, r3
    375e:	0adb      	lsrs	r3, r3, #11
    3760:	b2db      	uxtb	r3, r3
    3762:	f003 031f 	and.w	r3, r3, #31
    3766:	b2d9      	uxtb	r1, r3
    3768:	687a      	ldr	r2, [r7, #4]
    376a:	6813      	ldr	r3, [r2, #0]
    376c:	f361 3310 	bfi	r3, r1, #12, #5
    3770:	6013      	str	r3, [r2, #0]
	rtc_cntr%=SEC_PER_HR;
    3772:	697b      	ldr	r3, [r7, #20]
    3774:	4a1d      	ldr	r2, [pc, #116]	; (37ec <get_date_time+0x1bc>)
    3776:	fba2 1203 	umull	r1, r2, r2, r3
    377a:	0ad2      	lsrs	r2, r2, #11
    377c:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    3780:	fb01 f202 	mul.w	r2, r1, r2
    3784:	1a9b      	subs	r3, r3, r2
    3786:	617b      	str	r3, [r7, #20]
	dt->minute=rtc_cntr/SEC_PER_MIN;
    3788:	697b      	ldr	r3, [r7, #20]
    378a:	4a19      	ldr	r2, [pc, #100]	; (37f0 <get_date_time+0x1c0>)
    378c:	fba2 2303 	umull	r2, r3, r2, r3
    3790:	095b      	lsrs	r3, r3, #5
    3792:	b2db      	uxtb	r3, r3
    3794:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3798:	b2d9      	uxtb	r1, r3
    379a:	687a      	ldr	r2, [r7, #4]
    379c:	8813      	ldrh	r3, [r2, #0]
    379e:	f361 138b 	bfi	r3, r1, #6, #6
    37a2:	8013      	strh	r3, [r2, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    37a4:	6979      	ldr	r1, [r7, #20]
    37a6:	4b12      	ldr	r3, [pc, #72]	; (37f0 <get_date_time+0x1c0>)
    37a8:	fba3 2301 	umull	r2, r3, r3, r1
    37ac:	095a      	lsrs	r2, r3, #5
    37ae:	4613      	mov	r3, r2
    37b0:	011b      	lsls	r3, r3, #4
    37b2:	1a9b      	subs	r3, r3, r2
    37b4:	009b      	lsls	r3, r3, #2
    37b6:	1aca      	subs	r2, r1, r3
    37b8:	b2d3      	uxtb	r3, r2
    37ba:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    37be:	b2d9      	uxtb	r1, r3
    37c0:	687a      	ldr	r2, [r7, #4]
    37c2:	7813      	ldrb	r3, [r2, #0]
    37c4:	f361 0305 	bfi	r3, r1, #0, #6
    37c8:	7013      	strb	r3, [r2, #0]
}
    37ca:	bf00      	nop
    37cc:	3718      	adds	r7, #24
    37ce:	46bd      	mov	sp, r7
    37d0:	bd80      	pop	{r7, pc}
    37d2:	bf00      	nop
    37d4:	40002800 	.word	0x40002800
    37d8:	fe1ecc80 	.word	0xfe1ecc80
    37dc:	01e1337f 	.word	0x01e1337f
    37e0:	01e284ff 	.word	0x01e284ff
    37e4:	c22e4507 	.word	0xc22e4507
    37e8:	00015180 	.word	0x00015180
    37ec:	91a2b3c5 	.word	0x91a2b3c5
    37f0:	88888889 	.word	0x88888889

000037f4 <set_date_time>:

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    37f4:	b580      	push	{r7, lr}
    37f6:	b086      	sub	sp, #24
    37f8:	af00      	add	r7, sp, #0
    37fa:	6078      	str	r0, [r7, #4]
	uint32_t i,rtc_cntr=0;
    37fc:	2300      	movs	r3, #0
    37fe:	613b      	str	r3, [r7, #16]
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    3800:	687b      	ldr	r3, [r7, #4]
    3802:	891b      	ldrh	r3, [r3, #8]
    3804:	f240 72b1 	movw	r2, #1969	; 0x7b1
    3808:	4293      	cmp	r3, r2
    380a:	d803      	bhi.n	3814 <set_date_time+0x20>
    380c:	687b      	ldr	r3, [r7, #4]
    380e:	f240 72b2 	movw	r2, #1970	; 0x7b2
    3812:	811a      	strh	r2, [r3, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    3814:	687b      	ldr	r3, [r7, #4]
    3816:	891b      	ldrh	r3, [r3, #8]
    3818:	f640 023a 	movw	r2, #2106	; 0x83a
    381c:	4293      	cmp	r3, r2
    381e:	d903      	bls.n	3828 <set_date_time+0x34>
    3820:	687b      	ldr	r3, [r7, #4]
    3822:	f640 023a 	movw	r2, #2106	; 0x83a
    3826:	811a      	strh	r2, [r3, #8]
	leap=leap_year(dt->year);
    3828:	687b      	ldr	r3, [r7, #4]
    382a:	891b      	ldrh	r3, [r3, #8]
    382c:	4618      	mov	r0, r3
    382e:	f7ff feaf 	bl	3590 <leap_year>
    3832:	60f8      	str	r0, [r7, #12]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    3834:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3838:	617b      	str	r3, [r7, #20]
    383a:	e013      	b.n	3864 <set_date_time+0x70>
		if (leap_year(i)){
    383c:	6978      	ldr	r0, [r7, #20]
    383e:	f7ff fea7 	bl	3590 <leap_year>
    3842:	4603      	mov	r3, r0
    3844:	2b00      	cmp	r3, #0
    3846:	d006      	beq.n	3856 <set_date_time+0x62>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    3848:	693b      	ldr	r3, [r7, #16]
    384a:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    384e:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    3852:	613b      	str	r3, [r7, #16]
    3854:	e003      	b.n	385e <set_date_time+0x6a>
		}else{
			rtc_cntr+=SEC_PER_YEAR;
    3856:	693a      	ldr	r2, [r7, #16]
    3858:	4b42      	ldr	r3, [pc, #264]	; (3964 <set_date_time+0x170>)
    385a:	4413      	add	r3, r2
    385c:	613b      	str	r3, [r7, #16]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    385e:	697b      	ldr	r3, [r7, #20]
    3860:	3301      	adds	r3, #1
    3862:	617b      	str	r3, [r7, #20]
    3864:	687b      	ldr	r3, [r7, #4]
    3866:	891b      	ldrh	r3, [r3, #8]
    3868:	461a      	mov	r2, r3
    386a:	697b      	ldr	r3, [r7, #20]
    386c:	429a      	cmp	r2, r3
    386e:	d8e5      	bhi.n	383c <set_date_time+0x48>
		}
	}
	for (i=1;i<dt->month;i++){
    3870:	2301      	movs	r3, #1
    3872:	617b      	str	r3, [r7, #20]
    3874:	e00a      	b.n	388c <set_date_time+0x98>
		rtc_cntr+=sec_per_month(leap,i);
    3876:	6979      	ldr	r1, [r7, #20]
    3878:	68f8      	ldr	r0, [r7, #12]
    387a:	f7ff feb5 	bl	35e8 <sec_per_month>
    387e:	4602      	mov	r2, r0
    3880:	693b      	ldr	r3, [r7, #16]
    3882:	4413      	add	r3, r2
    3884:	613b      	str	r3, [r7, #16]
	for (i=1;i<dt->month;i++){
    3886:	697b      	ldr	r3, [r7, #20]
    3888:	3301      	adds	r3, #1
    388a:	617b      	str	r3, [r7, #20]
    388c:	687b      	ldr	r3, [r7, #4]
    388e:	885b      	ldrh	r3, [r3, #2]
    3890:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3894:	b2db      	uxtb	r3, r3
    3896:	461a      	mov	r2, r3
    3898:	697b      	ldr	r3, [r7, #20]
    389a:	429a      	cmp	r2, r3
    389c:	d8eb      	bhi.n	3876 <set_date_time+0x82>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    389e:	687b      	ldr	r3, [r7, #4]
    38a0:	789b      	ldrb	r3, [r3, #2]
    38a2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    38a6:	b2db      	uxtb	r3, r3
    38a8:	3b01      	subs	r3, #1
    38aa:	4a2f      	ldr	r2, [pc, #188]	; (3968 <set_date_time+0x174>)
    38ac:	fb02 f303 	mul.w	r3, r2, r3
    38b0:	461a      	mov	r2, r3
    38b2:	693b      	ldr	r3, [r7, #16]
    38b4:	4413      	add	r3, r2
    38b6:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    38b8:	687b      	ldr	r3, [r7, #4]
    38ba:	681b      	ldr	r3, [r3, #0]
    38bc:	f3c3 3304 	ubfx	r3, r3, #12, #5
    38c0:	b2db      	uxtb	r3, r3
    38c2:	461a      	mov	r2, r3
    38c4:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    38c8:	fb03 f302 	mul.w	r3, r3, r2
    38cc:	461a      	mov	r2, r3
    38ce:	693b      	ldr	r3, [r7, #16]
    38d0:	4413      	add	r3, r2
    38d2:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    38d4:	687b      	ldr	r3, [r7, #4]
    38d6:	881b      	ldrh	r3, [r3, #0]
    38d8:	f3c3 1385 	ubfx	r3, r3, #6, #6
    38dc:	b2db      	uxtb	r3, r3
    38de:	461a      	mov	r2, r3
    38e0:	4613      	mov	r3, r2
    38e2:	011b      	lsls	r3, r3, #4
    38e4:	1a9b      	subs	r3, r3, r2
    38e6:	009b      	lsls	r3, r3, #2
    38e8:	461a      	mov	r2, r3
    38ea:	693b      	ldr	r3, [r7, #16]
    38ec:	4413      	add	r3, r2
    38ee:	613b      	str	r3, [r7, #16]
	rtc_cntr+=dt->second;
    38f0:	687b      	ldr	r3, [r7, #4]
    38f2:	781b      	ldrb	r3, [r3, #0]
    38f4:	f3c3 0305 	ubfx	r3, r3, #0, #6
    38f8:	b2db      	uxtb	r3, r3
    38fa:	461a      	mov	r2, r3
    38fc:	693b      	ldr	r3, [r7, #16]
    38fe:	4413      	add	r3, r2
    3900:	613b      	str	r3, [r7, #16]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3902:	4a1a      	ldr	r2, [pc, #104]	; (396c <set_date_time+0x178>)
    3904:	4b19      	ldr	r3, [pc, #100]	; (396c <set_date_time+0x178>)
    3906:	69db      	ldr	r3, [r3, #28]
    3908:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    390c:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    390e:	4a18      	ldr	r2, [pc, #96]	; (3970 <set_date_time+0x17c>)
    3910:	4b17      	ldr	r3, [pc, #92]	; (3970 <set_date_time+0x17c>)
    3912:	681b      	ldr	r3, [r3, #0]
    3914:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3918:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    391a:	4a16      	ldr	r2, [pc, #88]	; (3974 <set_date_time+0x180>)
    391c:	4b15      	ldr	r3, [pc, #84]	; (3974 <set_date_time+0x180>)
    391e:	685b      	ldr	r3, [r3, #4]
    3920:	f043 0310 	orr.w	r3, r3, #16
    3924:	6053      	str	r3, [r2, #4]
	RTC->CNTH=rtc_cntr>>16;
    3926:	4a13      	ldr	r2, [pc, #76]	; (3974 <set_date_time+0x180>)
    3928:	693b      	ldr	r3, [r7, #16]
    392a:	0c1b      	lsrs	r3, r3, #16
    392c:	6193      	str	r3, [r2, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    392e:	4a11      	ldr	r2, [pc, #68]	; (3974 <set_date_time+0x180>)
    3930:	693b      	ldr	r3, [r7, #16]
    3932:	b29b      	uxth	r3, r3
    3934:	61d3      	str	r3, [r2, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    3936:	4a0f      	ldr	r2, [pc, #60]	; (3974 <set_date_time+0x180>)
    3938:	4b0e      	ldr	r3, [pc, #56]	; (3974 <set_date_time+0x180>)
    393a:	685b      	ldr	r3, [r3, #4]
    393c:	f023 0310 	bic.w	r3, r3, #16
    3940:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    3942:	bf00      	nop
    3944:	4b0b      	ldr	r3, [pc, #44]	; (3974 <set_date_time+0x180>)
    3946:	685b      	ldr	r3, [r3, #4]
    3948:	f003 0320 	and.w	r3, r3, #32
    394c:	2b00      	cmp	r3, #0
    394e:	d0f9      	beq.n	3944 <set_date_time+0x150>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    3950:	4a07      	ldr	r2, [pc, #28]	; (3970 <set_date_time+0x17c>)
    3952:	4b07      	ldr	r3, [pc, #28]	; (3970 <set_date_time+0x17c>)
    3954:	681b      	ldr	r3, [r3, #0]
    3956:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    395a:	6013      	str	r3, [r2, #0]
}
    395c:	bf00      	nop
    395e:	3718      	adds	r7, #24
    3960:	46bd      	mov	sp, r7
    3962:	bd80      	pop	{r7, pc}
    3964:	01e13380 	.word	0x01e13380
    3968:	00015180 	.word	0x00015180
    396c:	40021000 	.word	0x40021000
    3970:	40007000 	.word	0x40007000
    3974:	40002800 	.word	0x40002800

00003978 <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    3978:	b580      	push	{r7, lr}
    397a:	b082      	sub	sp, #8
    397c:	af00      	add	r7, sp, #0
    397e:	6078      	str	r0, [r7, #4]
    3980:	6039      	str	r1, [r7, #0]
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    3982:	4b4a      	ldr	r3, [pc, #296]	; (3aac <rtc_init+0x134>)
    3984:	685b      	ldr	r3, [r3, #4]
    3986:	f64a 2255 	movw	r2, #43605	; 0xaa55
    398a:	4293      	cmp	r3, r2
    398c:	f000 8082 	beq.w	3a94 <rtc_init+0x11c>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3990:	4a47      	ldr	r2, [pc, #284]	; (3ab0 <rtc_init+0x138>)
    3992:	4b47      	ldr	r3, [pc, #284]	; (3ab0 <rtc_init+0x138>)
    3994:	69db      	ldr	r3, [r3, #28]
    3996:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    399a:	61d3      	str	r3, [r2, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    399c:	4a45      	ldr	r2, [pc, #276]	; (3ab4 <rtc_init+0x13c>)
    399e:	4b45      	ldr	r3, [pc, #276]	; (3ab4 <rtc_init+0x13c>)
    39a0:	681b      	ldr	r3, [r3, #0]
    39a2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    39a6:	6013      	str	r3, [r2, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    39a8:	4a41      	ldr	r2, [pc, #260]	; (3ab0 <rtc_init+0x138>)
    39aa:	4b41      	ldr	r3, [pc, #260]	; (3ab0 <rtc_init+0x138>)
    39ac:	6a1b      	ldr	r3, [r3, #32]
    39ae:	f043 0301 	orr.w	r3, r3, #1
    39b2:	6213      	str	r3, [r2, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    39b4:	bf00      	nop
    39b6:	4b3e      	ldr	r3, [pc, #248]	; (3ab0 <rtc_init+0x138>)
    39b8:	6a1b      	ldr	r3, [r3, #32]
    39ba:	f003 0302 	and.w	r3, r3, #2
    39be:	2b00      	cmp	r3, #0
    39c0:	d0f9      	beq.n	39b6 <rtc_init+0x3e>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    39c2:	4a3b      	ldr	r2, [pc, #236]	; (3ab0 <rtc_init+0x138>)
    39c4:	4b3a      	ldr	r3, [pc, #232]	; (3ab0 <rtc_init+0x138>)
    39c6:	6a1b      	ldr	r3, [r3, #32]
    39c8:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    39cc:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    39ce:	bf00      	nop
    39d0:	4b39      	ldr	r3, [pc, #228]	; (3ab8 <rtc_init+0x140>)
    39d2:	685b      	ldr	r3, [r3, #4]
    39d4:	f003 0308 	and.w	r3, r3, #8
    39d8:	2b00      	cmp	r3, #0
    39da:	d0f9      	beq.n	39d0 <rtc_init+0x58>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    39dc:	bf00      	nop
    39de:	4b36      	ldr	r3, [pc, #216]	; (3ab8 <rtc_init+0x140>)
    39e0:	685b      	ldr	r3, [r3, #4]
    39e2:	f003 0320 	and.w	r3, r3, #32
    39e6:	2b00      	cmp	r3, #0
    39e8:	d0f9      	beq.n	39de <rtc_init+0x66>
		RTC->CRL|=RTC_CRL_CNF;
    39ea:	4a33      	ldr	r2, [pc, #204]	; (3ab8 <rtc_init+0x140>)
    39ec:	4b32      	ldr	r3, [pc, #200]	; (3ab8 <rtc_init+0x140>)
    39ee:	685b      	ldr	r3, [r3, #4]
    39f0:	f043 0310 	orr.w	r3, r3, #16
    39f4:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    39f6:	bf00      	nop
    39f8:	4b2f      	ldr	r3, [pc, #188]	; (3ab8 <rtc_init+0x140>)
    39fa:	685b      	ldr	r3, [r3, #4]
    39fc:	f003 0320 	and.w	r3, r3, #32
    3a00:	2b00      	cmp	r3, #0
    3a02:	d0f9      	beq.n	39f8 <rtc_init+0x80>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    3a04:	492c      	ldr	r1, [pc, #176]	; (3ab8 <rtc_init+0x140>)
    3a06:	4b2c      	ldr	r3, [pc, #176]	; (3ab8 <rtc_init+0x140>)
    3a08:	681a      	ldr	r2, [r3, #0]
    3a0a:	683b      	ldr	r3, [r7, #0]
    3a0c:	4313      	orrs	r3, r2
    3a0e:	600b      	str	r3, [r1, #0]
		_wait_rtc_write();
    3a10:	bf00      	nop
    3a12:	4b29      	ldr	r3, [pc, #164]	; (3ab8 <rtc_init+0x140>)
    3a14:	685b      	ldr	r3, [r3, #4]
    3a16:	f003 0320 	and.w	r3, r3, #32
    3a1a:	2b00      	cmp	r3, #0
    3a1c:	d0f9      	beq.n	3a12 <rtc_init+0x9a>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    3a1e:	4a26      	ldr	r2, [pc, #152]	; (3ab8 <rtc_init+0x140>)
    3a20:	687b      	ldr	r3, [r7, #4]
    3a22:	03db      	lsls	r3, r3, #15
    3a24:	4925      	ldr	r1, [pc, #148]	; (3abc <rtc_init+0x144>)
    3a26:	fba1 1303 	umull	r1, r3, r1, r3
    3a2a:	099b      	lsrs	r3, r3, #6
    3a2c:	3b01      	subs	r3, #1
    3a2e:	b29b      	uxth	r3, r3
    3a30:	60d3      	str	r3, [r2, #12]
		_wait_rtc_write();
    3a32:	bf00      	nop
    3a34:	4b20      	ldr	r3, [pc, #128]	; (3ab8 <rtc_init+0x140>)
    3a36:	685b      	ldr	r3, [r3, #4]
    3a38:	f003 0320 	and.w	r3, r3, #32
    3a3c:	2b00      	cmp	r3, #0
    3a3e:	d0f9      	beq.n	3a34 <rtc_init+0xbc>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    3a40:	4a1d      	ldr	r2, [pc, #116]	; (3ab8 <rtc_init+0x140>)
    3a42:	687b      	ldr	r3, [r7, #4]
    3a44:	03db      	lsls	r3, r3, #15
    3a46:	491d      	ldr	r1, [pc, #116]	; (3abc <rtc_init+0x144>)
    3a48:	fba1 1303 	umull	r1, r3, r1, r3
    3a4c:	099b      	lsrs	r3, r3, #6
    3a4e:	3b01      	subs	r3, #1
    3a50:	0c1b      	lsrs	r3, r3, #16
    3a52:	f003 030f 	and.w	r3, r3, #15
    3a56:	6093      	str	r3, [r2, #8]
		_wait_rtc_write();
    3a58:	bf00      	nop
    3a5a:	4b17      	ldr	r3, [pc, #92]	; (3ab8 <rtc_init+0x140>)
    3a5c:	685b      	ldr	r3, [r3, #4]
    3a5e:	f003 0320 	and.w	r3, r3, #32
    3a62:	2b00      	cmp	r3, #0
    3a64:	d0f9      	beq.n	3a5a <rtc_init+0xe2>
		BKP->DR[0]=RTC_ACCESS_CODE;
    3a66:	4b11      	ldr	r3, [pc, #68]	; (3aac <rtc_init+0x134>)
    3a68:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3a6c:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    3a6e:	4a12      	ldr	r2, [pc, #72]	; (3ab8 <rtc_init+0x140>)
    3a70:	4b11      	ldr	r3, [pc, #68]	; (3ab8 <rtc_init+0x140>)
    3a72:	685b      	ldr	r3, [r3, #4]
    3a74:	f023 0310 	bic.w	r3, r3, #16
    3a78:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    3a7a:	bf00      	nop
    3a7c:	4b0e      	ldr	r3, [pc, #56]	; (3ab8 <rtc_init+0x140>)
    3a7e:	685b      	ldr	r3, [r3, #4]
    3a80:	f003 0320 	and.w	r3, r3, #32
    3a84:	2b00      	cmp	r3, #0
    3a86:	d0f9      	beq.n	3a7c <rtc_init+0x104>
		PWR->CR&=~PWR_CR_DBP;
    3a88:	4a0a      	ldr	r2, [pc, #40]	; (3ab4 <rtc_init+0x13c>)
    3a8a:	4b0a      	ldr	r3, [pc, #40]	; (3ab4 <rtc_init+0x13c>)
    3a8c:	681b      	ldr	r3, [r3, #0]
    3a8e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3a92:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    3a94:	210f      	movs	r1, #15
    3a96:	2003      	movs	r0, #3
    3a98:	f7ff fd4a 	bl	3530 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    3a9c:	2003      	movs	r0, #3
    3a9e:	f7ff fc8d 	bl	33bc <enable_interrupt>
}
    3aa2:	bf00      	nop
    3aa4:	3708      	adds	r7, #8
    3aa6:	46bd      	mov	sp, r7
    3aa8:	bd80      	pop	{r7, pc}
    3aaa:	bf00      	nop
    3aac:	40006c00 	.word	0x40006c00
    3ab0:	40021000 	.word	0x40021000
    3ab4:	40007000 	.word	0x40007000
    3ab8:	40002800 	.word	0x40002800
    3abc:	10624dd3 	.word	0x10624dd3

00003ac0 <reset_backup_domain>:

// réinitialise le backup domain
inline void reset_backup_domain(){
    3ac0:	b480      	push	{r7}
    3ac2:	af00      	add	r7, sp, #0
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3ac4:	4a0a      	ldr	r2, [pc, #40]	; (3af0 <reset_backup_domain+0x30>)
    3ac6:	4b0a      	ldr	r3, [pc, #40]	; (3af0 <reset_backup_domain+0x30>)
    3ac8:	69db      	ldr	r3, [r3, #28]
    3aca:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3ace:	61d3      	str	r3, [r2, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    3ad0:	4a07      	ldr	r2, [pc, #28]	; (3af0 <reset_backup_domain+0x30>)
    3ad2:	4b07      	ldr	r3, [pc, #28]	; (3af0 <reset_backup_domain+0x30>)
    3ad4:	6a1b      	ldr	r3, [r3, #32]
    3ad6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    3ada:	6213      	str	r3, [r2, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    3adc:	4a04      	ldr	r2, [pc, #16]	; (3af0 <reset_backup_domain+0x30>)
    3ade:	4b04      	ldr	r3, [pc, #16]	; (3af0 <reset_backup_domain+0x30>)
    3ae0:	6a1b      	ldr	r3, [r3, #32]
    3ae2:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    3ae6:	6213      	str	r3, [r2, #32]
}
    3ae8:	bf00      	nop
    3aea:	46bd      	mov	sp, r7
    3aec:	bc80      	pop	{r7}
    3aee:	4770      	bx	lr
    3af0:	40021000 	.word	0x40021000

00003af4 <rtc_clock_trim>:

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
    3af4:	b480      	push	{r7}
    3af6:	b083      	sub	sp, #12
    3af8:	af00      	add	r7, sp, #0
    3afa:	6078      	str	r0, [r7, #4]
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    3afc:	4a34      	ldr	r2, [pc, #208]	; (3bd0 <rtc_clock_trim+0xdc>)
    3afe:	4b34      	ldr	r3, [pc, #208]	; (3bd0 <rtc_clock_trim+0xdc>)
    3b00:	69db      	ldr	r3, [r3, #28]
    3b02:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3b06:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    3b08:	bf00      	nop
    3b0a:	4b32      	ldr	r3, [pc, #200]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b0c:	685b      	ldr	r3, [r3, #4]
    3b0e:	f003 0308 	and.w	r3, r3, #8
    3b12:	2b00      	cmp	r3, #0
    3b14:	d0f9      	beq.n	3b0a <rtc_clock_trim+0x16>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    3b16:	4a30      	ldr	r2, [pc, #192]	; (3bd8 <rtc_clock_trim+0xe4>)
    3b18:	4b2f      	ldr	r3, [pc, #188]	; (3bd8 <rtc_clock_trim+0xe4>)
    3b1a:	681b      	ldr	r3, [r3, #0]
    3b1c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3b20:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    3b22:	4a2c      	ldr	r2, [pc, #176]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b24:	4b2b      	ldr	r3, [pc, #172]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b26:	685b      	ldr	r3, [r3, #4]
    3b28:	f043 0310 	orr.w	r3, r3, #16
    3b2c:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    3b2e:	4a2b      	ldr	r2, [pc, #172]	; (3bdc <rtc_clock_trim+0xe8>)
    3b30:	4b2a      	ldr	r3, [pc, #168]	; (3bdc <rtc_clock_trim+0xe8>)
    3b32:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3b34:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3b38:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    3b3a:	687b      	ldr	r3, [r7, #4]
    3b3c:	2b00      	cmp	r3, #0
    3b3e:	d10a      	bne.n	3b56 <rtc_clock_trim+0x62>
		BKP->RTCCR=0;
    3b40:	4b26      	ldr	r3, [pc, #152]	; (3bdc <rtc_clock_trim+0xe8>)
    3b42:	2200      	movs	r2, #0
    3b44:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    3b46:	4b23      	ldr	r3, [pc, #140]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b48:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3b4c:	60da      	str	r2, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    3b4e:	4b21      	ldr	r3, [pc, #132]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b50:	2200      	movs	r2, #0
    3b52:	609a      	str	r2, [r3, #8]
    3b54:	e023      	b.n	3b9e <rtc_clock_trim+0xaa>
	}else if (trim>0){// trop rapide on ralentie
    3b56:	687b      	ldr	r3, [r7, #4]
    3b58:	2b00      	cmp	r3, #0
    3b5a:	dd0a      	ble.n	3b72 <rtc_clock_trim+0x7e>
		trim&=0x7f;
    3b5c:	687b      	ldr	r3, [r7, #4]
    3b5e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3b62:	607b      	str	r3, [r7, #4]
		BKP->RTCCR|=trim;
    3b64:	491d      	ldr	r1, [pc, #116]	; (3bdc <rtc_clock_trim+0xe8>)
    3b66:	4b1d      	ldr	r3, [pc, #116]	; (3bdc <rtc_clock_trim+0xe8>)
    3b68:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3b6a:	687b      	ldr	r3, [r7, #4]
    3b6c:	4313      	orrs	r3, r2
    3b6e:	62cb      	str	r3, [r1, #44]	; 0x2c
    3b70:	e015      	b.n	3b9e <rtc_clock_trim+0xaa>
	}else{// trop lent on accélère.
		trim=-trim;
    3b72:	687b      	ldr	r3, [r7, #4]
    3b74:	425b      	negs	r3, r3
    3b76:	607b      	str	r3, [r7, #4]
		if (trim>0x7f) {trim=0x7f;}
    3b78:	687b      	ldr	r3, [r7, #4]
    3b7a:	2b7f      	cmp	r3, #127	; 0x7f
    3b7c:	dd01      	ble.n	3b82 <rtc_clock_trim+0x8e>
    3b7e:	237f      	movs	r3, #127	; 0x7f
    3b80:	607b      	str	r3, [r7, #4]
		BKP->RTCCR=0;
    3b82:	4b16      	ldr	r3, [pc, #88]	; (3bdc <rtc_clock_trim+0xe8>)
    3b84:	2200      	movs	r2, #0
    3b86:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    3b88:	4a12      	ldr	r2, [pc, #72]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b8a:	687b      	ldr	r3, [r7, #4]
    3b8c:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3b90:	33ff      	adds	r3, #255	; 0xff
    3b92:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3b96:	60d3      	str	r3, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    3b98:	4b0e      	ldr	r3, [pc, #56]	; (3bd4 <rtc_clock_trim+0xe0>)
    3b9a:	2200      	movs	r2, #0
    3b9c:	609a      	str	r2, [r3, #8]
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    3b9e:	4a0d      	ldr	r2, [pc, #52]	; (3bd4 <rtc_clock_trim+0xe0>)
    3ba0:	4b0c      	ldr	r3, [pc, #48]	; (3bd4 <rtc_clock_trim+0xe0>)
    3ba2:	685b      	ldr	r3, [r3, #4]
    3ba4:	f023 0310 	bic.w	r3, r3, #16
    3ba8:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    3baa:	bf00      	nop
    3bac:	4b09      	ldr	r3, [pc, #36]	; (3bd4 <rtc_clock_trim+0xe0>)
    3bae:	685b      	ldr	r3, [r3, #4]
    3bb0:	f003 0320 	and.w	r3, r3, #32
    3bb4:	2b00      	cmp	r3, #0
    3bb6:	d0f9      	beq.n	3bac <rtc_clock_trim+0xb8>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    3bb8:	4a07      	ldr	r2, [pc, #28]	; (3bd8 <rtc_clock_trim+0xe4>)
    3bba:	4b07      	ldr	r3, [pc, #28]	; (3bd8 <rtc_clock_trim+0xe4>)
    3bbc:	681b      	ldr	r3, [r3, #0]
    3bbe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3bc2:	6013      	str	r3, [r2, #0]
}
    3bc4:	bf00      	nop
    3bc6:	370c      	adds	r7, #12
    3bc8:	46bd      	mov	sp, r7
    3bca:	bc80      	pop	{r7}
    3bcc:	4770      	bx	lr
    3bce:	bf00      	nop
    3bd0:	40021000 	.word	0x40021000
    3bd4:	40002800 	.word	0x40002800
    3bd8:	40007000 	.word	0x40007000
    3bdc:	40006c00 	.word	0x40006c00

00003be0 <rtc_set_alarm>:

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    3be0:	b480      	push	{r7}
    3be2:	b083      	sub	sp, #12
    3be4:	af00      	add	r7, sp, #0
    3be6:	6078      	str	r0, [r7, #4]
}
    3be8:	bf00      	nop
    3bea:	370c      	adds	r7, #12
    3bec:	46bd      	mov	sp, r7
    3bee:	bc80      	pop	{r7}
    3bf0:	4770      	bx	lr

00003bf2 <str_to_date>:

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    3bf2:	b580      	push	{r7, lr}
    3bf4:	b084      	sub	sp, #16
    3bf6:	af00      	add	r7, sp, #0
    3bf8:	6078      	str	r0, [r7, #4]
    3bfa:	6039      	str	r1, [r7, #0]
	int i,n;
	
	i=0;
    3bfc:	2300      	movs	r3, #0
    3bfe:	60fb      	str	r3, [r7, #12]
	n=0;
    3c00:	2300      	movs	r3, #0
    3c02:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3c04:	e00f      	b.n	3c26 <str_to_date+0x34>
		n=n*10+date[i++]-'0';
    3c06:	68ba      	ldr	r2, [r7, #8]
    3c08:	4613      	mov	r3, r2
    3c0a:	009b      	lsls	r3, r3, #2
    3c0c:	4413      	add	r3, r2
    3c0e:	005b      	lsls	r3, r3, #1
    3c10:	4619      	mov	r1, r3
    3c12:	68fb      	ldr	r3, [r7, #12]
    3c14:	1c5a      	adds	r2, r3, #1
    3c16:	60fa      	str	r2, [r7, #12]
    3c18:	461a      	mov	r2, r3
    3c1a:	687b      	ldr	r3, [r7, #4]
    3c1c:	4413      	add	r3, r2
    3c1e:	781b      	ldrb	r3, [r3, #0]
    3c20:	440b      	add	r3, r1
    3c22:	3b30      	subs	r3, #48	; 0x30
    3c24:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3c26:	68fb      	ldr	r3, [r7, #12]
    3c28:	687a      	ldr	r2, [r7, #4]
    3c2a:	4413      	add	r3, r2
    3c2c:	781b      	ldrb	r3, [r3, #0]
    3c2e:	4618      	mov	r0, r3
    3c30:	f7fe f847 	bl	1cc2 <digit>
    3c34:	4603      	mov	r3, r0
    3c36:	2b00      	cmp	r3, #0
    3c38:	d1e5      	bne.n	3c06 <str_to_date+0x14>
	}
	if ((i<4) || date[i]!='/') return 0;
    3c3a:	68fb      	ldr	r3, [r7, #12]
    3c3c:	2b03      	cmp	r3, #3
    3c3e:	dd05      	ble.n	3c4c <str_to_date+0x5a>
    3c40:	68fb      	ldr	r3, [r7, #12]
    3c42:	687a      	ldr	r2, [r7, #4]
    3c44:	4413      	add	r3, r2
    3c46:	781b      	ldrb	r3, [r3, #0]
    3c48:	2b2f      	cmp	r3, #47	; 0x2f
    3c4a:	d001      	beq.n	3c50 <str_to_date+0x5e>
    3c4c:	2300      	movs	r3, #0
    3c4e:	e068      	b.n	3d22 <str_to_date+0x130>
	dt->year=n;
    3c50:	68bb      	ldr	r3, [r7, #8]
    3c52:	b29a      	uxth	r2, r3
    3c54:	683b      	ldr	r3, [r7, #0]
    3c56:	811a      	strh	r2, [r3, #8]
	i++;
    3c58:	68fb      	ldr	r3, [r7, #12]
    3c5a:	3301      	adds	r3, #1
    3c5c:	60fb      	str	r3, [r7, #12]
	n=0;
    3c5e:	2300      	movs	r3, #0
    3c60:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3c62:	e00f      	b.n	3c84 <str_to_date+0x92>
		n=n*10+date[i++]-'0';
    3c64:	68ba      	ldr	r2, [r7, #8]
    3c66:	4613      	mov	r3, r2
    3c68:	009b      	lsls	r3, r3, #2
    3c6a:	4413      	add	r3, r2
    3c6c:	005b      	lsls	r3, r3, #1
    3c6e:	4619      	mov	r1, r3
    3c70:	68fb      	ldr	r3, [r7, #12]
    3c72:	1c5a      	adds	r2, r3, #1
    3c74:	60fa      	str	r2, [r7, #12]
    3c76:	461a      	mov	r2, r3
    3c78:	687b      	ldr	r3, [r7, #4]
    3c7a:	4413      	add	r3, r2
    3c7c:	781b      	ldrb	r3, [r3, #0]
    3c7e:	440b      	add	r3, r1
    3c80:	3b30      	subs	r3, #48	; 0x30
    3c82:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3c84:	68fb      	ldr	r3, [r7, #12]
    3c86:	687a      	ldr	r2, [r7, #4]
    3c88:	4413      	add	r3, r2
    3c8a:	781b      	ldrb	r3, [r3, #0]
    3c8c:	4618      	mov	r0, r3
    3c8e:	f7fe f818 	bl	1cc2 <digit>
    3c92:	4603      	mov	r3, r0
    3c94:	2b00      	cmp	r3, #0
    3c96:	d1e5      	bne.n	3c64 <str_to_date+0x72>
	}
	if ((i<7) || date[i]!='/') return 0;
    3c98:	68fb      	ldr	r3, [r7, #12]
    3c9a:	2b06      	cmp	r3, #6
    3c9c:	dd05      	ble.n	3caa <str_to_date+0xb8>
    3c9e:	68fb      	ldr	r3, [r7, #12]
    3ca0:	687a      	ldr	r2, [r7, #4]
    3ca2:	4413      	add	r3, r2
    3ca4:	781b      	ldrb	r3, [r3, #0]
    3ca6:	2b2f      	cmp	r3, #47	; 0x2f
    3ca8:	d001      	beq.n	3cae <str_to_date+0xbc>
    3caa:	2300      	movs	r3, #0
    3cac:	e039      	b.n	3d22 <str_to_date+0x130>
	dt->month=n;
    3cae:	68bb      	ldr	r3, [r7, #8]
    3cb0:	b2db      	uxtb	r3, r3
    3cb2:	f003 030f 	and.w	r3, r3, #15
    3cb6:	b2d9      	uxtb	r1, r3
    3cb8:	683a      	ldr	r2, [r7, #0]
    3cba:	8853      	ldrh	r3, [r2, #2]
    3cbc:	f361 1389 	bfi	r3, r1, #6, #4
    3cc0:	8053      	strh	r3, [r2, #2]
	n=0;
    3cc2:	2300      	movs	r3, #0
    3cc4:	60bb      	str	r3, [r7, #8]
	i++;
    3cc6:	68fb      	ldr	r3, [r7, #12]
    3cc8:	3301      	adds	r3, #1
    3cca:	60fb      	str	r3, [r7, #12]
	while (digit(date[i])){
    3ccc:	e00f      	b.n	3cee <str_to_date+0xfc>
		n=n*10+date[i++]-'0';
    3cce:	68ba      	ldr	r2, [r7, #8]
    3cd0:	4613      	mov	r3, r2
    3cd2:	009b      	lsls	r3, r3, #2
    3cd4:	4413      	add	r3, r2
    3cd6:	005b      	lsls	r3, r3, #1
    3cd8:	4619      	mov	r1, r3
    3cda:	68fb      	ldr	r3, [r7, #12]
    3cdc:	1c5a      	adds	r2, r3, #1
    3cde:	60fa      	str	r2, [r7, #12]
    3ce0:	461a      	mov	r2, r3
    3ce2:	687b      	ldr	r3, [r7, #4]
    3ce4:	4413      	add	r3, r2
    3ce6:	781b      	ldrb	r3, [r3, #0]
    3ce8:	440b      	add	r3, r1
    3cea:	3b30      	subs	r3, #48	; 0x30
    3cec:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    3cee:	68fb      	ldr	r3, [r7, #12]
    3cf0:	687a      	ldr	r2, [r7, #4]
    3cf2:	4413      	add	r3, r2
    3cf4:	781b      	ldrb	r3, [r3, #0]
    3cf6:	4618      	mov	r0, r3
    3cf8:	f7fd ffe3 	bl	1cc2 <digit>
    3cfc:	4603      	mov	r3, r0
    3cfe:	2b00      	cmp	r3, #0
    3d00:	d1e5      	bne.n	3cce <str_to_date+0xdc>
	}
	if (i<10) return 0;
    3d02:	68fb      	ldr	r3, [r7, #12]
    3d04:	2b09      	cmp	r3, #9
    3d06:	dc01      	bgt.n	3d0c <str_to_date+0x11a>
    3d08:	2300      	movs	r3, #0
    3d0a:	e00a      	b.n	3d22 <str_to_date+0x130>
	dt->day=n;
    3d0c:	68bb      	ldr	r3, [r7, #8]
    3d0e:	b2db      	uxtb	r3, r3
    3d10:	f003 031f 	and.w	r3, r3, #31
    3d14:	b2d9      	uxtb	r1, r3
    3d16:	683a      	ldr	r2, [r7, #0]
    3d18:	7893      	ldrb	r3, [r2, #2]
    3d1a:	f361 0345 	bfi	r3, r1, #1, #5
    3d1e:	7093      	strb	r3, [r2, #2]
	return 1;
    3d20:	2301      	movs	r3, #1
}
    3d22:	4618      	mov	r0, r3
    3d24:	3710      	adds	r7, #16
    3d26:	46bd      	mov	sp, r7
    3d28:	bd80      	pop	{r7, pc}

00003d2a <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    3d2a:	b580      	push	{r7, lr}
    3d2c:	b084      	sub	sp, #16
    3d2e:	af00      	add	r7, sp, #0
    3d30:	6078      	str	r0, [r7, #4]
    3d32:	6039      	str	r1, [r7, #0]
	int i;
	unsigned char n;
	
	i=0;
    3d34:	2300      	movs	r3, #0
    3d36:	60fb      	str	r3, [r7, #12]
	n=0;
    3d38:	2300      	movs	r3, #0
    3d3a:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3d3c:	e010      	b.n	3d60 <str_to_time+0x36>
		n=n*10+time[i++]-'0';
    3d3e:	7afb      	ldrb	r3, [r7, #11]
    3d40:	461a      	mov	r2, r3
    3d42:	0092      	lsls	r2, r2, #2
    3d44:	4413      	add	r3, r2
    3d46:	005b      	lsls	r3, r3, #1
    3d48:	b2da      	uxtb	r2, r3
    3d4a:	68fb      	ldr	r3, [r7, #12]
    3d4c:	1c59      	adds	r1, r3, #1
    3d4e:	60f9      	str	r1, [r7, #12]
    3d50:	4619      	mov	r1, r3
    3d52:	687b      	ldr	r3, [r7, #4]
    3d54:	440b      	add	r3, r1
    3d56:	781b      	ldrb	r3, [r3, #0]
    3d58:	4413      	add	r3, r2
    3d5a:	b2db      	uxtb	r3, r3
    3d5c:	3b30      	subs	r3, #48	; 0x30
    3d5e:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3d60:	68fb      	ldr	r3, [r7, #12]
    3d62:	687a      	ldr	r2, [r7, #4]
    3d64:	4413      	add	r3, r2
    3d66:	781b      	ldrb	r3, [r3, #0]
    3d68:	4618      	mov	r0, r3
    3d6a:	f7fd ffaa 	bl	1cc2 <digit>
    3d6e:	4603      	mov	r3, r0
    3d70:	2b00      	cmp	r3, #0
    3d72:	d1e4      	bne.n	3d3e <str_to_time+0x14>
	}
	if ((n>23) || time[i]!=':') return 0;
    3d74:	7afb      	ldrb	r3, [r7, #11]
    3d76:	2b17      	cmp	r3, #23
    3d78:	d805      	bhi.n	3d86 <str_to_time+0x5c>
    3d7a:	68fb      	ldr	r3, [r7, #12]
    3d7c:	687a      	ldr	r2, [r7, #4]
    3d7e:	4413      	add	r3, r2
    3d80:	781b      	ldrb	r3, [r3, #0]
    3d82:	2b3a      	cmp	r3, #58	; 0x3a
    3d84:	d001      	beq.n	3d8a <str_to_time+0x60>
    3d86:	2300      	movs	r3, #0
    3d88:	e06d      	b.n	3e66 <str_to_time+0x13c>
	dt->hour=n;
    3d8a:	7afb      	ldrb	r3, [r7, #11]
    3d8c:	f003 031f 	and.w	r3, r3, #31
    3d90:	b2d9      	uxtb	r1, r3
    3d92:	683a      	ldr	r2, [r7, #0]
    3d94:	6813      	ldr	r3, [r2, #0]
    3d96:	f361 3310 	bfi	r3, r1, #12, #5
    3d9a:	6013      	str	r3, [r2, #0]
	i++;
    3d9c:	68fb      	ldr	r3, [r7, #12]
    3d9e:	3301      	adds	r3, #1
    3da0:	60fb      	str	r3, [r7, #12]
	n=0;
    3da2:	2300      	movs	r3, #0
    3da4:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3da6:	e010      	b.n	3dca <str_to_time+0xa0>
		n=n*10+time[i++]-'0';
    3da8:	7afb      	ldrb	r3, [r7, #11]
    3daa:	461a      	mov	r2, r3
    3dac:	0092      	lsls	r2, r2, #2
    3dae:	4413      	add	r3, r2
    3db0:	005b      	lsls	r3, r3, #1
    3db2:	b2da      	uxtb	r2, r3
    3db4:	68fb      	ldr	r3, [r7, #12]
    3db6:	1c59      	adds	r1, r3, #1
    3db8:	60f9      	str	r1, [r7, #12]
    3dba:	4619      	mov	r1, r3
    3dbc:	687b      	ldr	r3, [r7, #4]
    3dbe:	440b      	add	r3, r1
    3dc0:	781b      	ldrb	r3, [r3, #0]
    3dc2:	4413      	add	r3, r2
    3dc4:	b2db      	uxtb	r3, r3
    3dc6:	3b30      	subs	r3, #48	; 0x30
    3dc8:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3dca:	68fb      	ldr	r3, [r7, #12]
    3dcc:	687a      	ldr	r2, [r7, #4]
    3dce:	4413      	add	r3, r2
    3dd0:	781b      	ldrb	r3, [r3, #0]
    3dd2:	4618      	mov	r0, r3
    3dd4:	f7fd ff75 	bl	1cc2 <digit>
    3dd8:	4603      	mov	r3, r0
    3dda:	2b00      	cmp	r3, #0
    3ddc:	d1e4      	bne.n	3da8 <str_to_time+0x7e>
	}
	if ((n>59) || time[i]!=':') return 0;
    3dde:	7afb      	ldrb	r3, [r7, #11]
    3de0:	2b3b      	cmp	r3, #59	; 0x3b
    3de2:	d805      	bhi.n	3df0 <str_to_time+0xc6>
    3de4:	68fb      	ldr	r3, [r7, #12]
    3de6:	687a      	ldr	r2, [r7, #4]
    3de8:	4413      	add	r3, r2
    3dea:	781b      	ldrb	r3, [r3, #0]
    3dec:	2b3a      	cmp	r3, #58	; 0x3a
    3dee:	d001      	beq.n	3df4 <str_to_time+0xca>
    3df0:	2300      	movs	r3, #0
    3df2:	e038      	b.n	3e66 <str_to_time+0x13c>
	dt->minute=n;
    3df4:	7afb      	ldrb	r3, [r7, #11]
    3df6:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3dfa:	b2d9      	uxtb	r1, r3
    3dfc:	683a      	ldr	r2, [r7, #0]
    3dfe:	8813      	ldrh	r3, [r2, #0]
    3e00:	f361 138b 	bfi	r3, r1, #6, #6
    3e04:	8013      	strh	r3, [r2, #0]
	n=0;
    3e06:	2300      	movs	r3, #0
    3e08:	72fb      	strb	r3, [r7, #11]
	i++;
    3e0a:	68fb      	ldr	r3, [r7, #12]
    3e0c:	3301      	adds	r3, #1
    3e0e:	60fb      	str	r3, [r7, #12]
	while (digit(time[i])){
    3e10:	e010      	b.n	3e34 <str_to_time+0x10a>
		n=n*10+time[i++]-'0';
    3e12:	7afb      	ldrb	r3, [r7, #11]
    3e14:	461a      	mov	r2, r3
    3e16:	0092      	lsls	r2, r2, #2
    3e18:	4413      	add	r3, r2
    3e1a:	005b      	lsls	r3, r3, #1
    3e1c:	b2da      	uxtb	r2, r3
    3e1e:	68fb      	ldr	r3, [r7, #12]
    3e20:	1c59      	adds	r1, r3, #1
    3e22:	60f9      	str	r1, [r7, #12]
    3e24:	4619      	mov	r1, r3
    3e26:	687b      	ldr	r3, [r7, #4]
    3e28:	440b      	add	r3, r1
    3e2a:	781b      	ldrb	r3, [r3, #0]
    3e2c:	4413      	add	r3, r2
    3e2e:	b2db      	uxtb	r3, r3
    3e30:	3b30      	subs	r3, #48	; 0x30
    3e32:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    3e34:	68fb      	ldr	r3, [r7, #12]
    3e36:	687a      	ldr	r2, [r7, #4]
    3e38:	4413      	add	r3, r2
    3e3a:	781b      	ldrb	r3, [r3, #0]
    3e3c:	4618      	mov	r0, r3
    3e3e:	f7fd ff40 	bl	1cc2 <digit>
    3e42:	4603      	mov	r3, r0
    3e44:	2b00      	cmp	r3, #0
    3e46:	d1e4      	bne.n	3e12 <str_to_time+0xe8>
	}
	if (n>59) return 0;
    3e48:	7afb      	ldrb	r3, [r7, #11]
    3e4a:	2b3b      	cmp	r3, #59	; 0x3b
    3e4c:	d901      	bls.n	3e52 <str_to_time+0x128>
    3e4e:	2300      	movs	r3, #0
    3e50:	e009      	b.n	3e66 <str_to_time+0x13c>
	dt->second=n;
    3e52:	7afb      	ldrb	r3, [r7, #11]
    3e54:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3e58:	b2d9      	uxtb	r1, r3
    3e5a:	683a      	ldr	r2, [r7, #0]
    3e5c:	7813      	ldrb	r3, [r2, #0]
    3e5e:	f361 0305 	bfi	r3, r1, #0, #6
    3e62:	7013      	strb	r3, [r2, #0]
	return 1;
    3e64:	2301      	movs	r3, #1
}
    3e66:	4618      	mov	r0, r3
    3e68:	3710      	adds	r7, #16
    3e6a:	46bd      	mov	sp, r7
    3e6c:	bd80      	pop	{r7, pc}

00003e6e <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    3e6e:	b480      	push	{r7}
    3e70:	b085      	sub	sp, #20
    3e72:	af00      	add	r7, sp, #0
    3e74:	6078      	str	r0, [r7, #4]
    3e76:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    3e78:	2300      	movs	r3, #0
    3e7a:	60fb      	str	r3, [r7, #12]
	
	n=dt->year;
    3e7c:	687b      	ldr	r3, [r7, #4]
    3e7e:	891b      	ldrh	r3, [r3, #8]
    3e80:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/1000+'0';
    3e82:	68fb      	ldr	r3, [r7, #12]
    3e84:	1c5a      	adds	r2, r3, #1
    3e86:	60fa      	str	r2, [r7, #12]
    3e88:	461a      	mov	r2, r3
    3e8a:	683b      	ldr	r3, [r7, #0]
    3e8c:	4413      	add	r3, r2
    3e8e:	68ba      	ldr	r2, [r7, #8]
    3e90:	495d      	ldr	r1, [pc, #372]	; (4008 <date_str+0x19a>)
    3e92:	fba1 1202 	umull	r1, r2, r1, r2
    3e96:	0992      	lsrs	r2, r2, #6
    3e98:	b2d2      	uxtb	r2, r2
    3e9a:	3230      	adds	r2, #48	; 0x30
    3e9c:	b2d2      	uxtb	r2, r2
    3e9e:	701a      	strb	r2, [r3, #0]
	n%=1000;
    3ea0:	68bb      	ldr	r3, [r7, #8]
    3ea2:	4a59      	ldr	r2, [pc, #356]	; (4008 <date_str+0x19a>)
    3ea4:	fba2 1203 	umull	r1, r2, r2, r3
    3ea8:	0992      	lsrs	r2, r2, #6
    3eaa:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3eae:	fb01 f202 	mul.w	r2, r1, r2
    3eb2:	1a9b      	subs	r3, r3, r2
    3eb4:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/100+'0';
    3eb6:	68fb      	ldr	r3, [r7, #12]
    3eb8:	1c5a      	adds	r2, r3, #1
    3eba:	60fa      	str	r2, [r7, #12]
    3ebc:	461a      	mov	r2, r3
    3ebe:	683b      	ldr	r3, [r7, #0]
    3ec0:	4413      	add	r3, r2
    3ec2:	68ba      	ldr	r2, [r7, #8]
    3ec4:	4951      	ldr	r1, [pc, #324]	; (400c <date_str+0x19e>)
    3ec6:	fba1 1202 	umull	r1, r2, r1, r2
    3eca:	0952      	lsrs	r2, r2, #5
    3ecc:	b2d2      	uxtb	r2, r2
    3ece:	3230      	adds	r2, #48	; 0x30
    3ed0:	b2d2      	uxtb	r2, r2
    3ed2:	701a      	strb	r2, [r3, #0]
	n%=100;
    3ed4:	68bb      	ldr	r3, [r7, #8]
    3ed6:	4a4d      	ldr	r2, [pc, #308]	; (400c <date_str+0x19e>)
    3ed8:	fba2 1203 	umull	r1, r2, r2, r3
    3edc:	0952      	lsrs	r2, r2, #5
    3ede:	2164      	movs	r1, #100	; 0x64
    3ee0:	fb01 f202 	mul.w	r2, r1, r2
    3ee4:	1a9b      	subs	r3, r3, r2
    3ee6:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    3ee8:	68fb      	ldr	r3, [r7, #12]
    3eea:	1c5a      	adds	r2, r3, #1
    3eec:	60fa      	str	r2, [r7, #12]
    3eee:	461a      	mov	r2, r3
    3ef0:	683b      	ldr	r3, [r7, #0]
    3ef2:	4413      	add	r3, r2
    3ef4:	68ba      	ldr	r2, [r7, #8]
    3ef6:	4946      	ldr	r1, [pc, #280]	; (4010 <date_str+0x1a2>)
    3ef8:	fba1 1202 	umull	r1, r2, r1, r2
    3efc:	08d2      	lsrs	r2, r2, #3
    3efe:	b2d2      	uxtb	r2, r2
    3f00:	3230      	adds	r2, #48	; 0x30
    3f02:	b2d2      	uxtb	r2, r2
    3f04:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    3f06:	68fb      	ldr	r3, [r7, #12]
    3f08:	1c5a      	adds	r2, r3, #1
    3f0a:	60fa      	str	r2, [r7, #12]
    3f0c:	461a      	mov	r2, r3
    3f0e:	683b      	ldr	r3, [r7, #0]
    3f10:	1898      	adds	r0, r3, r2
    3f12:	68b9      	ldr	r1, [r7, #8]
    3f14:	4b3e      	ldr	r3, [pc, #248]	; (4010 <date_str+0x1a2>)
    3f16:	fba3 2301 	umull	r2, r3, r3, r1
    3f1a:	08da      	lsrs	r2, r3, #3
    3f1c:	4613      	mov	r3, r2
    3f1e:	009b      	lsls	r3, r3, #2
    3f20:	4413      	add	r3, r2
    3f22:	005b      	lsls	r3, r3, #1
    3f24:	1aca      	subs	r2, r1, r3
    3f26:	b2d3      	uxtb	r3, r2
    3f28:	3330      	adds	r3, #48	; 0x30
    3f2a:	b2db      	uxtb	r3, r3
    3f2c:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    3f2e:	68fb      	ldr	r3, [r7, #12]
    3f30:	1c5a      	adds	r2, r3, #1
    3f32:	60fa      	str	r2, [r7, #12]
    3f34:	461a      	mov	r2, r3
    3f36:	683b      	ldr	r3, [r7, #0]
    3f38:	4413      	add	r3, r2
    3f3a:	222f      	movs	r2, #47	; 0x2f
    3f3c:	701a      	strb	r2, [r3, #0]
	n=dt->month;
    3f3e:	687b      	ldr	r3, [r7, #4]
    3f40:	885b      	ldrh	r3, [r3, #2]
    3f42:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3f46:	b2db      	uxtb	r3, r3
    3f48:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    3f4a:	68fb      	ldr	r3, [r7, #12]
    3f4c:	1c5a      	adds	r2, r3, #1
    3f4e:	60fa      	str	r2, [r7, #12]
    3f50:	461a      	mov	r2, r3
    3f52:	683b      	ldr	r3, [r7, #0]
    3f54:	4413      	add	r3, r2
    3f56:	68ba      	ldr	r2, [r7, #8]
    3f58:	492d      	ldr	r1, [pc, #180]	; (4010 <date_str+0x1a2>)
    3f5a:	fba1 1202 	umull	r1, r2, r1, r2
    3f5e:	08d2      	lsrs	r2, r2, #3
    3f60:	b2d2      	uxtb	r2, r2
    3f62:	3230      	adds	r2, #48	; 0x30
    3f64:	b2d2      	uxtb	r2, r2
    3f66:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    3f68:	68fb      	ldr	r3, [r7, #12]
    3f6a:	1c5a      	adds	r2, r3, #1
    3f6c:	60fa      	str	r2, [r7, #12]
    3f6e:	461a      	mov	r2, r3
    3f70:	683b      	ldr	r3, [r7, #0]
    3f72:	1898      	adds	r0, r3, r2
    3f74:	68b9      	ldr	r1, [r7, #8]
    3f76:	4b26      	ldr	r3, [pc, #152]	; (4010 <date_str+0x1a2>)
    3f78:	fba3 2301 	umull	r2, r3, r3, r1
    3f7c:	08da      	lsrs	r2, r3, #3
    3f7e:	4613      	mov	r3, r2
    3f80:	009b      	lsls	r3, r3, #2
    3f82:	4413      	add	r3, r2
    3f84:	005b      	lsls	r3, r3, #1
    3f86:	1aca      	subs	r2, r1, r3
    3f88:	b2d3      	uxtb	r3, r2
    3f8a:	3330      	adds	r3, #48	; 0x30
    3f8c:	b2db      	uxtb	r3, r3
    3f8e:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    3f90:	68fb      	ldr	r3, [r7, #12]
    3f92:	1c5a      	adds	r2, r3, #1
    3f94:	60fa      	str	r2, [r7, #12]
    3f96:	461a      	mov	r2, r3
    3f98:	683b      	ldr	r3, [r7, #0]
    3f9a:	4413      	add	r3, r2
    3f9c:	222f      	movs	r2, #47	; 0x2f
    3f9e:	701a      	strb	r2, [r3, #0]
	n=dt->day;
    3fa0:	687b      	ldr	r3, [r7, #4]
    3fa2:	789b      	ldrb	r3, [r3, #2]
    3fa4:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3fa8:	b2db      	uxtb	r3, r3
    3faa:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    3fac:	68fb      	ldr	r3, [r7, #12]
    3fae:	1c5a      	adds	r2, r3, #1
    3fb0:	60fa      	str	r2, [r7, #12]
    3fb2:	461a      	mov	r2, r3
    3fb4:	683b      	ldr	r3, [r7, #0]
    3fb6:	4413      	add	r3, r2
    3fb8:	68ba      	ldr	r2, [r7, #8]
    3fba:	4915      	ldr	r1, [pc, #84]	; (4010 <date_str+0x1a2>)
    3fbc:	fba1 1202 	umull	r1, r2, r1, r2
    3fc0:	08d2      	lsrs	r2, r2, #3
    3fc2:	b2d2      	uxtb	r2, r2
    3fc4:	3230      	adds	r2, #48	; 0x30
    3fc6:	b2d2      	uxtb	r2, r2
    3fc8:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    3fca:	68fb      	ldr	r3, [r7, #12]
    3fcc:	1c5a      	adds	r2, r3, #1
    3fce:	60fa      	str	r2, [r7, #12]
    3fd0:	461a      	mov	r2, r3
    3fd2:	683b      	ldr	r3, [r7, #0]
    3fd4:	1898      	adds	r0, r3, r2
    3fd6:	68b9      	ldr	r1, [r7, #8]
    3fd8:	4b0d      	ldr	r3, [pc, #52]	; (4010 <date_str+0x1a2>)
    3fda:	fba3 2301 	umull	r2, r3, r3, r1
    3fde:	08da      	lsrs	r2, r3, #3
    3fe0:	4613      	mov	r3, r2
    3fe2:	009b      	lsls	r3, r3, #2
    3fe4:	4413      	add	r3, r2
    3fe6:	005b      	lsls	r3, r3, #1
    3fe8:	1aca      	subs	r2, r1, r3
    3fea:	b2d3      	uxtb	r3, r2
    3fec:	3330      	adds	r3, #48	; 0x30
    3fee:	b2db      	uxtb	r3, r3
    3ff0:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    3ff2:	68fb      	ldr	r3, [r7, #12]
    3ff4:	683a      	ldr	r2, [r7, #0]
    3ff6:	4413      	add	r3, r2
    3ff8:	2200      	movs	r2, #0
    3ffa:	701a      	strb	r2, [r3, #0]

}
    3ffc:	bf00      	nop
    3ffe:	3714      	adds	r7, #20
    4000:	46bd      	mov	sp, r7
    4002:	bc80      	pop	{r7}
    4004:	4770      	bx	lr
    4006:	bf00      	nop
    4008:	10624dd3 	.word	0x10624dd3
    400c:	51eb851f 	.word	0x51eb851f
    4010:	cccccccd 	.word	0xcccccccd

00004014 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    4014:	b480      	push	{r7}
    4016:	b085      	sub	sp, #20
    4018:	af00      	add	r7, sp, #0
    401a:	6078      	str	r0, [r7, #4]
    401c:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    401e:	2300      	movs	r3, #0
    4020:	60fb      	str	r3, [r7, #12]
	
	n=dt->hour;
    4022:	687b      	ldr	r3, [r7, #4]
    4024:	681b      	ldr	r3, [r3, #0]
    4026:	f3c3 3304 	ubfx	r3, r3, #12, #5
    402a:	b2db      	uxtb	r3, r3
    402c:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    402e:	68fb      	ldr	r3, [r7, #12]
    4030:	1c5a      	adds	r2, r3, #1
    4032:	60fa      	str	r2, [r7, #12]
    4034:	461a      	mov	r2, r3
    4036:	683b      	ldr	r3, [r7, #0]
    4038:	4413      	add	r3, r2
    403a:	68ba      	ldr	r2, [r7, #8]
    403c:	4943      	ldr	r1, [pc, #268]	; (414c <time_str+0x138>)
    403e:	fba1 1202 	umull	r1, r2, r1, r2
    4042:	08d2      	lsrs	r2, r2, #3
    4044:	b2d2      	uxtb	r2, r2
    4046:	3230      	adds	r2, #48	; 0x30
    4048:	b2d2      	uxtb	r2, r2
    404a:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    404c:	68fb      	ldr	r3, [r7, #12]
    404e:	1c5a      	adds	r2, r3, #1
    4050:	60fa      	str	r2, [r7, #12]
    4052:	461a      	mov	r2, r3
    4054:	683b      	ldr	r3, [r7, #0]
    4056:	1898      	adds	r0, r3, r2
    4058:	68b9      	ldr	r1, [r7, #8]
    405a:	4b3c      	ldr	r3, [pc, #240]	; (414c <time_str+0x138>)
    405c:	fba3 2301 	umull	r2, r3, r3, r1
    4060:	08da      	lsrs	r2, r3, #3
    4062:	4613      	mov	r3, r2
    4064:	009b      	lsls	r3, r3, #2
    4066:	4413      	add	r3, r2
    4068:	005b      	lsls	r3, r3, #1
    406a:	1aca      	subs	r2, r1, r3
    406c:	b2d3      	uxtb	r3, r2
    406e:	3330      	adds	r3, #48	; 0x30
    4070:	b2db      	uxtb	r3, r3
    4072:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    4074:	68fb      	ldr	r3, [r7, #12]
    4076:	1c5a      	adds	r2, r3, #1
    4078:	60fa      	str	r2, [r7, #12]
    407a:	461a      	mov	r2, r3
    407c:	683b      	ldr	r3, [r7, #0]
    407e:	4413      	add	r3, r2
    4080:	223a      	movs	r2, #58	; 0x3a
    4082:	701a      	strb	r2, [r3, #0]
	n=dt->minute;
    4084:	687b      	ldr	r3, [r7, #4]
    4086:	881b      	ldrh	r3, [r3, #0]
    4088:	f3c3 1385 	ubfx	r3, r3, #6, #6
    408c:	b2db      	uxtb	r3, r3
    408e:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    4090:	68fb      	ldr	r3, [r7, #12]
    4092:	1c5a      	adds	r2, r3, #1
    4094:	60fa      	str	r2, [r7, #12]
    4096:	461a      	mov	r2, r3
    4098:	683b      	ldr	r3, [r7, #0]
    409a:	4413      	add	r3, r2
    409c:	68ba      	ldr	r2, [r7, #8]
    409e:	492b      	ldr	r1, [pc, #172]	; (414c <time_str+0x138>)
    40a0:	fba1 1202 	umull	r1, r2, r1, r2
    40a4:	08d2      	lsrs	r2, r2, #3
    40a6:	b2d2      	uxtb	r2, r2
    40a8:	3230      	adds	r2, #48	; 0x30
    40aa:	b2d2      	uxtb	r2, r2
    40ac:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    40ae:	68fb      	ldr	r3, [r7, #12]
    40b0:	1c5a      	adds	r2, r3, #1
    40b2:	60fa      	str	r2, [r7, #12]
    40b4:	461a      	mov	r2, r3
    40b6:	683b      	ldr	r3, [r7, #0]
    40b8:	1898      	adds	r0, r3, r2
    40ba:	68b9      	ldr	r1, [r7, #8]
    40bc:	4b23      	ldr	r3, [pc, #140]	; (414c <time_str+0x138>)
    40be:	fba3 2301 	umull	r2, r3, r3, r1
    40c2:	08da      	lsrs	r2, r3, #3
    40c4:	4613      	mov	r3, r2
    40c6:	009b      	lsls	r3, r3, #2
    40c8:	4413      	add	r3, r2
    40ca:	005b      	lsls	r3, r3, #1
    40cc:	1aca      	subs	r2, r1, r3
    40ce:	b2d3      	uxtb	r3, r2
    40d0:	3330      	adds	r3, #48	; 0x30
    40d2:	b2db      	uxtb	r3, r3
    40d4:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    40d6:	68fb      	ldr	r3, [r7, #12]
    40d8:	1c5a      	adds	r2, r3, #1
    40da:	60fa      	str	r2, [r7, #12]
    40dc:	461a      	mov	r2, r3
    40de:	683b      	ldr	r3, [r7, #0]
    40e0:	4413      	add	r3, r2
    40e2:	223a      	movs	r2, #58	; 0x3a
    40e4:	701a      	strb	r2, [r3, #0]
	n=dt->second;
    40e6:	687b      	ldr	r3, [r7, #4]
    40e8:	781b      	ldrb	r3, [r3, #0]
    40ea:	f3c3 0305 	ubfx	r3, r3, #0, #6
    40ee:	b2db      	uxtb	r3, r3
    40f0:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    40f2:	68fb      	ldr	r3, [r7, #12]
    40f4:	1c5a      	adds	r2, r3, #1
    40f6:	60fa      	str	r2, [r7, #12]
    40f8:	461a      	mov	r2, r3
    40fa:	683b      	ldr	r3, [r7, #0]
    40fc:	4413      	add	r3, r2
    40fe:	68ba      	ldr	r2, [r7, #8]
    4100:	4912      	ldr	r1, [pc, #72]	; (414c <time_str+0x138>)
    4102:	fba1 1202 	umull	r1, r2, r1, r2
    4106:	08d2      	lsrs	r2, r2, #3
    4108:	b2d2      	uxtb	r2, r2
    410a:	3230      	adds	r2, #48	; 0x30
    410c:	b2d2      	uxtb	r2, r2
    410e:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    4110:	68fb      	ldr	r3, [r7, #12]
    4112:	1c5a      	adds	r2, r3, #1
    4114:	60fa      	str	r2, [r7, #12]
    4116:	461a      	mov	r2, r3
    4118:	683b      	ldr	r3, [r7, #0]
    411a:	1898      	adds	r0, r3, r2
    411c:	68b9      	ldr	r1, [r7, #8]
    411e:	4b0b      	ldr	r3, [pc, #44]	; (414c <time_str+0x138>)
    4120:	fba3 2301 	umull	r2, r3, r3, r1
    4124:	08da      	lsrs	r2, r3, #3
    4126:	4613      	mov	r3, r2
    4128:	009b      	lsls	r3, r3, #2
    412a:	4413      	add	r3, r2
    412c:	005b      	lsls	r3, r3, #1
    412e:	1aca      	subs	r2, r1, r3
    4130:	b2d3      	uxtb	r3, r2
    4132:	3330      	adds	r3, #48	; 0x30
    4134:	b2db      	uxtb	r3, r3
    4136:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    4138:	68fb      	ldr	r3, [r7, #12]
    413a:	683a      	ldr	r2, [r7, #0]
    413c:	4413      	add	r3, r2
    413e:	2200      	movs	r2, #0
    4140:	701a      	strb	r2, [r3, #0]
}
    4142:	bf00      	nop
    4144:	3714      	adds	r7, #20
    4146:	46bd      	mov	sp, r7
    4148:	bc80      	pop	{r7}
    414a:	4770      	bx	lr
    414c:	cccccccd 	.word	0xcccccccd

00004150 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    4150:	b580      	push	{r7, lr}
    4152:	b084      	sub	sp, #16
    4154:	af00      	add	r7, sp, #0
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    4156:	463b      	mov	r3, r7
    4158:	4618      	mov	r0, r3
    415a:	f7ff fa69 	bl	3630 <get_date_time>
	t.fields.second=dt.second/2;
    415e:	783b      	ldrb	r3, [r7, #0]
    4160:	f3c3 0305 	ubfx	r3, r3, #0, #6
    4164:	b2db      	uxtb	r3, r3
    4166:	0fda      	lsrs	r2, r3, #31
    4168:	4413      	add	r3, r2
    416a:	105b      	asrs	r3, r3, #1
    416c:	b2db      	uxtb	r3, r3
    416e:	f003 031f 	and.w	r3, r3, #31
    4172:	b2da      	uxtb	r2, r3
    4174:	7b3b      	ldrb	r3, [r7, #12]
    4176:	f362 0304 	bfi	r3, r2, #0, #5
    417a:	733b      	strb	r3, [r7, #12]
	t.fields.minute=dt.minute;
    417c:	883b      	ldrh	r3, [r7, #0]
    417e:	f3c3 1385 	ubfx	r3, r3, #6, #6
    4182:	b2da      	uxtb	r2, r3
    4184:	89bb      	ldrh	r3, [r7, #12]
    4186:	f362 134a 	bfi	r3, r2, #5, #6
    418a:	81bb      	strh	r3, [r7, #12]
	t.fields.hour=dt.hour;
    418c:	683b      	ldr	r3, [r7, #0]
    418e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    4192:	b2da      	uxtb	r2, r3
    4194:	7b7b      	ldrb	r3, [r7, #13]
    4196:	f362 03c7 	bfi	r3, r2, #3, #5
    419a:	737b      	strb	r3, [r7, #13]
	t.fields.day=dt.day;
    419c:	78bb      	ldrb	r3, [r7, #2]
    419e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    41a2:	b2da      	uxtb	r2, r3
    41a4:	7bbb      	ldrb	r3, [r7, #14]
    41a6:	f362 0304 	bfi	r3, r2, #0, #5
    41aa:	73bb      	strb	r3, [r7, #14]
	t.fields.month=dt.month;
    41ac:	887b      	ldrh	r3, [r7, #2]
    41ae:	f3c3 1383 	ubfx	r3, r3, #6, #4
    41b2:	b2da      	uxtb	r2, r3
    41b4:	89fb      	ldrh	r3, [r7, #14]
    41b6:	f362 1348 	bfi	r3, r2, #5, #4
    41ba:	81fb      	strh	r3, [r7, #14]
	t.fields.year=dt.year-1980;
    41bc:	893b      	ldrh	r3, [r7, #8]
    41be:	b2db      	uxtb	r3, r3
    41c0:	3344      	adds	r3, #68	; 0x44
    41c2:	b2db      	uxtb	r3, r3
    41c4:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    41c8:	b2da      	uxtb	r2, r3
    41ca:	7bfb      	ldrb	r3, [r7, #15]
    41cc:	f362 0347 	bfi	r3, r2, #1, #7
    41d0:	73fb      	strb	r3, [r7, #15]
	return t.u32;
    41d2:	68fb      	ldr	r3, [r7, #12]
}
    41d4:	4618      	mov	r0, r3
    41d6:	3710      	adds	r7, #16
    41d8:	46bd      	mov	sp, r7
    41da:	bd80      	pop	{r7, pc}

000041dc <RTC_handler>:


void RTC_handler(){
    41dc:	b480      	push	{r7}
    41de:	b083      	sub	sp, #12
    41e0:	af00      	add	r7, sp, #0
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    41e2:	4b0a      	ldr	r3, [pc, #40]	; (420c <RTC_handler+0x30>)
    41e4:	685b      	ldr	r3, [r3, #4]
    41e6:	f003 0301 	and.w	r3, r3, #1
    41ea:	2b00      	cmp	r3, #0
    41ec:	d001      	beq.n	41f2 <RTC_handler+0x16>
		RTC->CRL&~RTC_CRL_SECF;
    41ee:	4b07      	ldr	r3, [pc, #28]	; (420c <RTC_handler+0x30>)
    41f0:	685b      	ldr	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    41f2:	4b06      	ldr	r3, [pc, #24]	; (420c <RTC_handler+0x30>)
    41f4:	685b      	ldr	r3, [r3, #4]
    41f6:	f003 0302 	and.w	r3, r3, #2
    41fa:	2b00      	cmp	r3, #0
    41fc:	d001      	beq.n	4202 <RTC_handler+0x26>
		RTC->CRL&~RTC_CRL_ALRF;
    41fe:	4b03      	ldr	r3, [pc, #12]	; (420c <RTC_handler+0x30>)
    4200:	685b      	ldr	r3, [r3, #4]
	}// interruption alarme
}
    4202:	bf00      	nop
    4204:	370c      	adds	r7, #12
    4206:	46bd      	mov	sp, r7
    4208:	bc80      	pop	{r7}
    420a:	4770      	bx	lr
    420c:	40002800 	.word	0x40002800

00004210 <sound_init>:

#define SOUND_BUFFER_SIZE 16
static uint8_t sound_buffer[SOUND_BUFFER_SIZE];
static uint8_t bit_pos;

void sound_init(){
    4210:	b580      	push	{r7, lr}
    4212:	af00      	add	r7, sp, #0
    RCC->APB1ENR|=RCC_APB1ENR_TIM2EN;
    4214:	4a0d      	ldr	r2, [pc, #52]	; (424c <sound_init+0x3c>)
    4216:	4b0d      	ldr	r3, [pc, #52]	; (424c <sound_init+0x3c>)
    4218:	69db      	ldr	r3, [r3, #28]
    421a:	f043 0301 	orr.w	r3, r3, #1
    421e:	61d3      	str	r3, [r2, #28]
    TMR2->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    4220:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4224:	2278      	movs	r2, #120	; 0x78
    4226:	61da      	str	r2, [r3, #28]
    TMR2->CCER=TMR_CCER_CC3E;
    4228:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    422c:	f44f 7280 	mov.w	r2, #256	; 0x100
    4230:	621a      	str	r2, [r3, #32]
    TMR2->PSC=9; //FCLK/10
    4232:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4236:	2209      	movs	r2, #9
    4238:	629a      	str	r2, [r3, #40]	; 0x28
    set_int_priority(IRQ_TIM2,0);
    423a:	2100      	movs	r1, #0
    423c:	201c      	movs	r0, #28
    423e:	f7ff f977 	bl	3530 <set_int_priority>
    enable_interrupt(IRQ_TIM2);
    4242:	201c      	movs	r0, #28
    4244:	f7ff f8ba 	bl	33bc <enable_interrupt>
}
    4248:	bf00      	nop
    424a:	bd80      	pop	{r7, pc}
    424c:	40021000 	.word	0x40021000

00004250 <tone>:

void tone(uint16_t freq, uint16_t duration){
    4250:	b580      	push	{r7, lr}
    4252:	b082      	sub	sp, #8
    4254:	af00      	add	r7, sp, #0
    4256:	4603      	mov	r3, r0
    4258:	460a      	mov	r2, r1
    425a:	80fb      	strh	r3, [r7, #6]
    425c:	4613      	mov	r3, r2
    425e:	80bb      	strh	r3, [r7, #4]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    4260:	4a1a      	ldr	r2, [pc, #104]	; (42cc <tone+0x7c>)
    4262:	4b1a      	ldr	r3, [pc, #104]	; (42cc <tone+0x7c>)
    4264:	685b      	ldr	r3, [r3, #4]
    4266:	f403 7340 	and.w	r3, r3, #768	; 0x300
    426a:	6053      	str	r3, [r2, #4]
    AFIO->MAPR|=3<<AFIO_MAPR_TIM2_REMAP_POS;
    426c:	4a17      	ldr	r2, [pc, #92]	; (42cc <tone+0x7c>)
    426e:	4b17      	ldr	r3, [pc, #92]	; (42cc <tone+0x7c>)
    4270:	685b      	ldr	r3, [r3, #4]
    4272:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    4276:	6053      	str	r3, [r2, #4]
    config_pin(PORTB,10,OUTPUT_ALT_PP_SLOW);
    4278:	220a      	movs	r2, #10
    427a:	210a      	movs	r1, #10
    427c:	4814      	ldr	r0, [pc, #80]	; (42d0 <tone+0x80>)
    427e:	f7fd fec7 	bl	2010 <config_pin>
    TMR2->ARR=FCLK/10/freq;
    4282:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4286:	88fb      	ldrh	r3, [r7, #6]
    4288:	4912      	ldr	r1, [pc, #72]	; (42d4 <tone+0x84>)
    428a:	fbb1 f3f3 	udiv	r3, r1, r3
    428e:	62d3      	str	r3, [r2, #44]	; 0x2c
    TMR2->CCR3=TMR2->ARR/2;
    4290:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4294:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4298:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    429a:	085b      	lsrs	r3, r3, #1
    429c:	63d3      	str	r3, [r2, #60]	; 0x3c
    TMR2->DIER&=~TMR_DIER_CC3IE;
    429e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    42a2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42a6:	68db      	ldr	r3, [r3, #12]
    42a8:	f023 0308 	bic.w	r3, r3, #8
    42ac:	60d3      	str	r3, [r2, #12]
    TMR2->CR1|=TMR_CR1_CEN;
    42ae:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    42b2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42b6:	681b      	ldr	r3, [r3, #0]
    42b8:	f043 0301 	orr.w	r3, r3, #1
    42bc:	6013      	str	r3, [r2, #0]
    sound_timer=duration;
    42be:	4a06      	ldr	r2, [pc, #24]	; (42d8 <tone+0x88>)
    42c0:	88bb      	ldrh	r3, [r7, #4]
    42c2:	8013      	strh	r3, [r2, #0]
}
    42c4:	bf00      	nop
    42c6:	3708      	adds	r7, #8
    42c8:	46bd      	mov	sp, r7
    42ca:	bd80      	pop	{r7, pc}
    42cc:	40010000 	.word	0x40010000
    42d0:	40010c00 	.word	0x40010c00
    42d4:	006d3d32 	.word	0x006d3d32
    42d8:	20004e48 	.word	0x20004e48

000042dc <beep>:

void beep(uint16_t duration){
    42dc:	b580      	push	{r7, lr}
    42de:	b082      	sub	sp, #8
    42e0:	af00      	add	r7, sp, #0
    42e2:	4603      	mov	r3, r0
    42e4:	80fb      	strh	r3, [r7, #6]
    tone(1000,duration);
    42e6:	88fb      	ldrh	r3, [r7, #6]
    42e8:	4619      	mov	r1, r3
    42ea:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    42ee:	f7ff ffaf 	bl	4250 <tone>
}
    42f2:	bf00      	nop
    42f4:	3708      	adds	r7, #8
    42f6:	46bd      	mov	sp, r7
    42f8:	bd80      	pop	{r7, pc}

000042fa <load_sound_buffer>:

void load_sound_buffer(const uint8_t* buffer){
    42fa:	b480      	push	{r7}
    42fc:	b085      	sub	sp, #20
    42fe:	af00      	add	r7, sp, #0
    4300:	6078      	str	r0, [r7, #4]
    int i;
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    4302:	2300      	movs	r3, #0
    4304:	60fb      	str	r3, [r7, #12]
    4306:	e00b      	b.n	4320 <load_sound_buffer+0x26>
        sound_buffer[i]=*buffer++;
    4308:	687b      	ldr	r3, [r7, #4]
    430a:	1c5a      	adds	r2, r3, #1
    430c:	607a      	str	r2, [r7, #4]
    430e:	7819      	ldrb	r1, [r3, #0]
    4310:	4a07      	ldr	r2, [pc, #28]	; (4330 <load_sound_buffer+0x36>)
    4312:	68fb      	ldr	r3, [r7, #12]
    4314:	4413      	add	r3, r2
    4316:	460a      	mov	r2, r1
    4318:	701a      	strb	r2, [r3, #0]
    for (i=0;i<SOUND_BUFFER_SIZE;i++){
    431a:	68fb      	ldr	r3, [r7, #12]
    431c:	3301      	adds	r3, #1
    431e:	60fb      	str	r3, [r7, #12]
    4320:	68fb      	ldr	r3, [r7, #12]
    4322:	2b0f      	cmp	r3, #15
    4324:	ddf0      	ble.n	4308 <load_sound_buffer+0xe>
    }
}
    4326:	bf00      	nop
    4328:	3714      	adds	r7, #20
    432a:	46bd      	mov	sp, r7
    432c:	bc80      	pop	{r7}
    432e:	4770      	bx	lr
    4330:	20000694 	.word	0x20000694

00004334 <sound_sampler>:

// configure son pour sortie buffer
void sound_sampler(uint16_t duration){
    4334:	b580      	push	{r7, lr}
    4336:	b082      	sub	sp, #8
    4338:	af00      	add	r7, sp, #0
    433a:	4603      	mov	r3, r0
    433c:	80fb      	strh	r3, [r7, #6]
    bit_pos=0;
    433e:	4b1b      	ldr	r3, [pc, #108]	; (43ac <sound_sampler+0x78>)
    4340:	2200      	movs	r2, #0
    4342:	701a      	strb	r2, [r3, #0]
    AFIO->MAPR&=~AFIO_MAPR_TIM2_REMAP_MASK;
    4344:	4a1a      	ldr	r2, [pc, #104]	; (43b0 <sound_sampler+0x7c>)
    4346:	4b1a      	ldr	r3, [pc, #104]	; (43b0 <sound_sampler+0x7c>)
    4348:	685b      	ldr	r3, [r3, #4]
    434a:	f403 7340 	and.w	r3, r3, #768	; 0x300
    434e:	6053      	str	r3, [r2, #4]
    PORTB->ODR&=~BIT10;
    4350:	4a18      	ldr	r2, [pc, #96]	; (43b4 <sound_sampler+0x80>)
    4352:	4b18      	ldr	r3, [pc, #96]	; (43b4 <sound_sampler+0x80>)
    4354:	68db      	ldr	r3, [r3, #12]
    4356:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    435a:	60d3      	str	r3, [r2, #12]
    config_pin(PORTB,10,OUTPUT_PP_SLOW);
    435c:	2202      	movs	r2, #2
    435e:	210a      	movs	r1, #10
    4360:	4814      	ldr	r0, [pc, #80]	; (43b4 <sound_sampler+0x80>)
    4362:	f7fd fe55 	bl	2010 <config_pin>
    TMR2->DIER|=TMR_DIER_UIE;
    4366:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    436a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    436e:	68db      	ldr	r3, [r3, #12]
    4370:	f043 0301 	orr.w	r3, r3, #1
    4374:	60d3      	str	r3, [r2, #12]
    TMR2->ARR=FCLK/10/4000;
    4376:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    437a:	f240 62fd 	movw	r2, #1789	; 0x6fd
    437e:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR2->CCR2=TMR2->ARR;
    4380:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4384:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4388:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    438a:	6393      	str	r3, [r2, #56]	; 0x38
    TMR2->CR1|=TMR_CR1_CEN;
    438c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4390:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4394:	681b      	ldr	r3, [r3, #0]
    4396:	f043 0301 	orr.w	r3, r3, #1
    439a:	6013      	str	r3, [r2, #0]
    sound_timer=duration;
    439c:	4a06      	ldr	r2, [pc, #24]	; (43b8 <sound_sampler+0x84>)
    439e:	88fb      	ldrh	r3, [r7, #6]
    43a0:	8013      	strh	r3, [r2, #0]
}
    43a2:	bf00      	nop
    43a4:	3708      	adds	r7, #8
    43a6:	46bd      	mov	sp, r7
    43a8:	bd80      	pop	{r7, pc}
    43aa:	bf00      	nop
    43ac:	200006a4 	.word	0x200006a4
    43b0:	40010000 	.word	0x40010000
    43b4:	40010c00 	.word	0x40010c00
    43b8:	20004e48 	.word	0x20004e48

000043bc <sound_stop>:

void sound_stop(){
    43bc:	b480      	push	{r7}
    43be:	af00      	add	r7, sp, #0
    TMR2->CR1&=~TMR_CR1_CEN;
    43c0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    43c4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    43c8:	681b      	ldr	r3, [r3, #0]
    43ca:	f023 0301 	bic.w	r3, r3, #1
    43ce:	6013      	str	r3, [r2, #0]
    TMR2->DIER&=~TMR_DIER_UIE;
    43d0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    43d4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    43d8:	68db      	ldr	r3, [r3, #12]
    43da:	f023 0301 	bic.w	r3, r3, #1
    43de:	60d3      	str	r3, [r2, #12]
}
    43e0:	bf00      	nop
    43e2:	46bd      	mov	sp, r7
    43e4:	bc80      	pop	{r7}
    43e6:	4770      	bx	lr

000043e8 <key_tone>:
static const uint16_t tempered_scale[16]={
    440,466,494,523,554,587,622,659,698,740,784,831,880,932,988,1046
};

// joue une note de la gamme tempérée
void key_tone(int note, int length,int wait_end){
    43e8:	b580      	push	{r7, lr}
    43ea:	b084      	sub	sp, #16
    43ec:	af00      	add	r7, sp, #0
    43ee:	60f8      	str	r0, [r7, #12]
    43f0:	60b9      	str	r1, [r7, #8]
    43f2:	607a      	str	r2, [r7, #4]
    tone(tempered_scale[note],length);
    43f4:	4a0b      	ldr	r2, [pc, #44]	; (4424 <key_tone+0x3c>)
    43f6:	68fb      	ldr	r3, [r7, #12]
    43f8:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
    43fc:	68ba      	ldr	r2, [r7, #8]
    43fe:	b292      	uxth	r2, r2
    4400:	4611      	mov	r1, r2
    4402:	4618      	mov	r0, r3
    4404:	f7ff ff24 	bl	4250 <tone>
    if (wait_end) while (sound_timer);
    4408:	687b      	ldr	r3, [r7, #4]
    440a:	2b00      	cmp	r3, #0
    440c:	d005      	beq.n	441a <key_tone+0x32>
    440e:	bf00      	nop
    4410:	4b05      	ldr	r3, [pc, #20]	; (4428 <key_tone+0x40>)
    4412:	881b      	ldrh	r3, [r3, #0]
    4414:	b29b      	uxth	r3, r3
    4416:	2b00      	cmp	r3, #0
    4418:	d1fa      	bne.n	4410 <key_tone+0x28>
}
    441a:	bf00      	nop
    441c:	3710      	adds	r7, #16
    441e:	46bd      	mov	sp, r7
    4420:	bd80      	pop	{r7, pc}
    4422:	bf00      	nop
    4424:	00005b10 	.word	0x00005b10
    4428:	20004e48 	.word	0x20004e48

0000442c <noise>:

// produit un bruit 
void noise(int length){
    442c:	b580      	push	{r7, lr}
    442e:	b084      	sub	sp, #16
    4430:	af00      	add	r7, sp, #0
    4432:	6078      	str	r0, [r7, #4]
    int i;
    srand(ntsc_ticks);
    4434:	4b0f      	ldr	r3, [pc, #60]	; (4474 <noise+0x48>)
    4436:	681b      	ldr	r3, [r3, #0]
    4438:	4618      	mov	r0, r3
    443a:	f7fc f821 	bl	480 <srand>
    for (i=0;i<16;i++) sound_buffer[i]=rand()&0xff;
    443e:	2300      	movs	r3, #0
    4440:	60fb      	str	r3, [r7, #12]
    4442:	e00b      	b.n	445c <noise+0x30>
    4444:	f7fc f82a 	bl	49c <rand>
    4448:	4603      	mov	r3, r0
    444a:	b2d9      	uxtb	r1, r3
    444c:	4a0a      	ldr	r2, [pc, #40]	; (4478 <noise+0x4c>)
    444e:	68fb      	ldr	r3, [r7, #12]
    4450:	4413      	add	r3, r2
    4452:	460a      	mov	r2, r1
    4454:	701a      	strb	r2, [r3, #0]
    4456:	68fb      	ldr	r3, [r7, #12]
    4458:	3301      	adds	r3, #1
    445a:	60fb      	str	r3, [r7, #12]
    445c:	68fb      	ldr	r3, [r7, #12]
    445e:	2b0f      	cmp	r3, #15
    4460:	ddf0      	ble.n	4444 <noise+0x18>
    sound_sampler(length);
    4462:	687b      	ldr	r3, [r7, #4]
    4464:	b29b      	uxth	r3, r3
    4466:	4618      	mov	r0, r3
    4468:	f7ff ff64 	bl	4334 <sound_sampler>
}
    446c:	bf00      	nop
    446e:	3710      	adds	r7, #16
    4470:	46bd      	mov	sp, r7
    4472:	bd80      	pop	{r7, pc}
    4474:	20004e44 	.word	0x20004e44
    4478:	20000694 	.word	0x20000694

0000447c <sound_handler>:

void __attribute__((__interrupt__)) sound_handler(){
    447c:	4668      	mov	r0, sp
    447e:	f020 0107 	bic.w	r1, r0, #7
    4482:	468d      	mov	sp, r1
    4484:	b481      	push	{r0, r7}
    4486:	b082      	sub	sp, #8
    4488:	af00      	add	r7, sp, #0
    uint8_t byte,mask;
    byte=bit_pos/8;
    448a:	4b1e      	ldr	r3, [pc, #120]	; (4504 <sound_handler+0x88>)
    448c:	781b      	ldrb	r3, [r3, #0]
    448e:	08db      	lsrs	r3, r3, #3
    4490:	71fb      	strb	r3, [r7, #7]
    mask=1<<(7-bit_pos%8);
    4492:	4b1c      	ldr	r3, [pc, #112]	; (4504 <sound_handler+0x88>)
    4494:	781b      	ldrb	r3, [r3, #0]
    4496:	43db      	mvns	r3, r3
    4498:	f003 0307 	and.w	r3, r3, #7
    449c:	2201      	movs	r2, #1
    449e:	fa02 f303 	lsl.w	r3, r2, r3
    44a2:	71bb      	strb	r3, [r7, #6]
    if (sound_buffer[byte]&mask){
    44a4:	79fb      	ldrb	r3, [r7, #7]
    44a6:	4a18      	ldr	r2, [pc, #96]	; (4508 <sound_handler+0x8c>)
    44a8:	5cd2      	ldrb	r2, [r2, r3]
    44aa:	79bb      	ldrb	r3, [r7, #6]
    44ac:	4013      	ands	r3, r2
    44ae:	b2db      	uxtb	r3, r3
    44b0:	2b00      	cmp	r3, #0
    44b2:	d006      	beq.n	44c2 <sound_handler+0x46>
        PORTB->ODR|=BIT10;
    44b4:	4a15      	ldr	r2, [pc, #84]	; (450c <sound_handler+0x90>)
    44b6:	4b15      	ldr	r3, [pc, #84]	; (450c <sound_handler+0x90>)
    44b8:	68db      	ldr	r3, [r3, #12]
    44ba:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    44be:	60d3      	str	r3, [r2, #12]
    44c0:	e005      	b.n	44ce <sound_handler+0x52>
    }else{
        PORTB->ODR&=~BIT10;
    44c2:	4a12      	ldr	r2, [pc, #72]	; (450c <sound_handler+0x90>)
    44c4:	4b11      	ldr	r3, [pc, #68]	; (450c <sound_handler+0x90>)
    44c6:	68db      	ldr	r3, [r3, #12]
    44c8:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    44cc:	60d3      	str	r3, [r2, #12]
    }
    bit_pos++;
    44ce:	4b0d      	ldr	r3, [pc, #52]	; (4504 <sound_handler+0x88>)
    44d0:	781b      	ldrb	r3, [r3, #0]
    44d2:	3301      	adds	r3, #1
    44d4:	b2da      	uxtb	r2, r3
    44d6:	4b0b      	ldr	r3, [pc, #44]	; (4504 <sound_handler+0x88>)
    44d8:	701a      	strb	r2, [r3, #0]
    bit_pos%=SOUND_BUFFER_SIZE;
    44da:	4b0a      	ldr	r3, [pc, #40]	; (4504 <sound_handler+0x88>)
    44dc:	781b      	ldrb	r3, [r3, #0]
    44de:	f003 030f 	and.w	r3, r3, #15
    44e2:	b2da      	uxtb	r2, r3
    44e4:	4b07      	ldr	r3, [pc, #28]	; (4504 <sound_handler+0x88>)
    44e6:	701a      	strb	r2, [r3, #0]
    TMR2->SR&=~TMR_SR_UIF;
    44e8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    44ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    44f0:	691b      	ldr	r3, [r3, #16]
    44f2:	f023 0301 	bic.w	r3, r3, #1
    44f6:	6113      	str	r3, [r2, #16]
}
    44f8:	bf00      	nop
    44fa:	3708      	adds	r7, #8
    44fc:	46bd      	mov	sp, r7
    44fe:	bc81      	pop	{r0, r7}
    4500:	4685      	mov	sp, r0
    4502:	4770      	bx	lr
    4504:	200006a4 	.word	0x200006a4
    4508:	20000694 	.word	0x20000694
    450c:	40010c00 	.word	0x40010c00

00004510 <spi_baudrate>:
 */

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
    4510:	b480      	push	{r7}
    4512:	b083      	sub	sp, #12
    4514:	af00      	add	r7, sp, #0
    4516:	6078      	str	r0, [r7, #4]
    4518:	6039      	str	r1, [r7, #0]
	channel->CR1&=SPI_CR1_BR_MASK;
    451a:	687b      	ldr	r3, [r7, #4]
    451c:	681b      	ldr	r3, [r3, #0]
    451e:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    4522:	687b      	ldr	r3, [r7, #4]
    4524:	601a      	str	r2, [r3, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    4526:	687b      	ldr	r3, [r7, #4]
    4528:	681a      	ldr	r2, [r3, #0]
    452a:	683b      	ldr	r3, [r7, #0]
    452c:	00db      	lsls	r3, r3, #3
    452e:	431a      	orrs	r2, r3
    4530:	687b      	ldr	r3, [r7, #4]
    4532:	601a      	str	r2, [r3, #0]
}
    4534:	bf00      	nop
    4536:	370c      	adds	r7, #12
    4538:	46bd      	mov	sp, r7
    453a:	bc80      	pop	{r7}
    453c:	4770      	bx	lr

0000453e <spi_config_port>:

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    453e:	b580      	push	{r7, lr}
    4540:	b082      	sub	sp, #8
    4542:	af00      	add	r7, sp, #0
    4544:	6078      	str	r0, [r7, #4]
    4546:	6039      	str	r1, [r7, #0]
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    4548:	4a33      	ldr	r2, [pc, #204]	; (4618 <spi_config_port+0xda>)
    454a:	4b33      	ldr	r3, [pc, #204]	; (4618 <spi_config_port+0xda>)
    454c:	699b      	ldr	r3, [r3, #24]
    454e:	f043 0301 	orr.w	r3, r3, #1
    4552:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    4554:	687b      	ldr	r3, [r7, #4]
    4556:	4a31      	ldr	r2, [pc, #196]	; (461c <spi_config_port+0xde>)
    4558:	4293      	cmp	r3, r2
    455a:	d13e      	bne.n	45da <spi_config_port+0x9c>
		if (!afio_cfg){
    455c:	683b      	ldr	r3, [r7, #0]
    455e:	2b00      	cmp	r3, #0
    4560:	d11a      	bne.n	4598 <spi_config_port+0x5a>
			// activation clock du port
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    4562:	4a2d      	ldr	r2, [pc, #180]	; (4618 <spi_config_port+0xda>)
    4564:	4b2c      	ldr	r3, [pc, #176]	; (4618 <spi_config_port+0xda>)
    4566:	699b      	ldr	r3, [r3, #24]
    4568:	f043 0304 	orr.w	r3, r3, #4
    456c:	6193      	str	r3, [r2, #24]
			// configuration port
			// PA4 -> NSS output (push-pull)
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    456e:	2203      	movs	r2, #3
    4570:	2104      	movs	r1, #4
    4572:	482b      	ldr	r0, [pc, #172]	; (4620 <spi_config_port+0xe2>)
    4574:	f7fd fd4c 	bl	2010 <config_pin>
			// PA5 -> SCK output (push-pull)
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    4578:	220b      	movs	r2, #11
    457a:	2105      	movs	r1, #5
    457c:	4828      	ldr	r0, [pc, #160]	; (4620 <spi_config_port+0xe2>)
    457e:	f7fd fd47 	bl	2010 <config_pin>
			// PA6 -> MISO input (floating)
			config_pin(PORTA,6,INPUT_FLOAT);
    4582:	2204      	movs	r2, #4
    4584:	2106      	movs	r1, #6
    4586:	4826      	ldr	r0, [pc, #152]	; (4620 <spi_config_port+0xe2>)
    4588:	f7fd fd42 	bl	2010 <config_pin>
			// PA7 -> MOSI output (push-pull)
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    458c:	220b      	movs	r2, #11
    458e:	2107      	movs	r1, #7
    4590:	4823      	ldr	r0, [pc, #140]	; (4620 <spi_config_port+0xe2>)
    4592:	f7fd fd3d 	bl	2010 <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
	}
}
    4596:	e03a      	b.n	460e <spi_config_port+0xd0>
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    4598:	4a1f      	ldr	r2, [pc, #124]	; (4618 <spi_config_port+0xda>)
    459a:	4b1f      	ldr	r3, [pc, #124]	; (4618 <spi_config_port+0xda>)
    459c:	699b      	ldr	r3, [r3, #24]
    459e:	f043 030d 	orr.w	r3, r3, #13
    45a2:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    45a4:	4a1f      	ldr	r2, [pc, #124]	; (4624 <spi_config_port+0xe6>)
    45a6:	4b1f      	ldr	r3, [pc, #124]	; (4624 <spi_config_port+0xe6>)
    45a8:	685b      	ldr	r3, [r3, #4]
    45aa:	f043 0301 	orr.w	r3, r3, #1
    45ae:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    45b0:	2203      	movs	r2, #3
    45b2:	210f      	movs	r1, #15
    45b4:	481a      	ldr	r0, [pc, #104]	; (4620 <spi_config_port+0xe2>)
    45b6:	f7fd fd2b 	bl	2010 <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    45ba:	220b      	movs	r2, #11
    45bc:	2103      	movs	r1, #3
    45be:	481a      	ldr	r0, [pc, #104]	; (4628 <spi_config_port+0xea>)
    45c0:	f7fd fd26 	bl	2010 <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    45c4:	2204      	movs	r2, #4
    45c6:	2104      	movs	r1, #4
    45c8:	4817      	ldr	r0, [pc, #92]	; (4628 <spi_config_port+0xea>)
    45ca:	f7fd fd21 	bl	2010 <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    45ce:	220b      	movs	r2, #11
    45d0:	2105      	movs	r1, #5
    45d2:	4815      	ldr	r0, [pc, #84]	; (4628 <spi_config_port+0xea>)
    45d4:	f7fd fd1c 	bl	2010 <config_pin>
}
    45d8:	e019      	b.n	460e <spi_config_port+0xd0>
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    45da:	4a0f      	ldr	r2, [pc, #60]	; (4618 <spi_config_port+0xda>)
    45dc:	4b0e      	ldr	r3, [pc, #56]	; (4618 <spi_config_port+0xda>)
    45de:	699b      	ldr	r3, [r3, #24]
    45e0:	f043 0308 	orr.w	r3, r3, #8
    45e4:	6193      	str	r3, [r2, #24]
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    45e6:	2203      	movs	r2, #3
    45e8:	2102      	movs	r1, #2
    45ea:	480f      	ldr	r0, [pc, #60]	; (4628 <spi_config_port+0xea>)
    45ec:	f7fd fd10 	bl	2010 <config_pin>
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    45f0:	220b      	movs	r2, #11
    45f2:	210d      	movs	r1, #13
    45f4:	480c      	ldr	r0, [pc, #48]	; (4628 <spi_config_port+0xea>)
    45f6:	f7fd fd0b 	bl	2010 <config_pin>
		config_pin(PORTB,14,INPUT_FLOAT);
    45fa:	2204      	movs	r2, #4
    45fc:	210e      	movs	r1, #14
    45fe:	480a      	ldr	r0, [pc, #40]	; (4628 <spi_config_port+0xea>)
    4600:	f7fd fd06 	bl	2010 <config_pin>
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    4604:	220b      	movs	r2, #11
    4606:	210f      	movs	r1, #15
    4608:	4807      	ldr	r0, [pc, #28]	; (4628 <spi_config_port+0xea>)
    460a:	f7fd fd01 	bl	2010 <config_pin>
}
    460e:	bf00      	nop
    4610:	3708      	adds	r7, #8
    4612:	46bd      	mov	sp, r7
    4614:	bd80      	pop	{r7, pc}
    4616:	bf00      	nop
    4618:	40021000 	.word	0x40021000
    461c:	40013000 	.word	0x40013000
    4620:	40010800 	.word	0x40010800
    4624:	40010000 	.word	0x40010000
    4628:	40010c00 	.word	0x40010c00

0000462c <spi_init>:

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    462c:	b580      	push	{r7, lr}
    462e:	b084      	sub	sp, #16
    4630:	af00      	add	r7, sp, #0
    4632:	60f8      	str	r0, [r7, #12]
    4634:	60b9      	str	r1, [r7, #8]
    4636:	607a      	str	r2, [r7, #4]
    4638:	603b      	str	r3, [r7, #0]
	spi_config_port(channel,afio_cfg);
    463a:	6839      	ldr	r1, [r7, #0]
    463c:	68f8      	ldr	r0, [r7, #12]
    463e:	f7ff ff7e 	bl	453e <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    4642:	68fb      	ldr	r3, [r7, #12]
    4644:	4a10      	ldr	r2, [pc, #64]	; (4688 <spi_init+0x5c>)
    4646:	4293      	cmp	r3, r2
    4648:	d106      	bne.n	4658 <spi_init+0x2c>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    464a:	4a10      	ldr	r2, [pc, #64]	; (468c <spi_init+0x60>)
    464c:	4b0f      	ldr	r3, [pc, #60]	; (468c <spi_init+0x60>)
    464e:	699b      	ldr	r3, [r3, #24]
    4650:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    4654:	6193      	str	r3, [r2, #24]
    4656:	e005      	b.n	4664 <spi_init+0x38>
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    4658:	4a0c      	ldr	r2, [pc, #48]	; (468c <spi_init+0x60>)
    465a:	4b0c      	ldr	r3, [pc, #48]	; (468c <spi_init+0x60>)
    465c:	69db      	ldr	r3, [r3, #28]
    465e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    4662:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    4664:	68fb      	ldr	r3, [r7, #12]
    4666:	687a      	ldr	r2, [r7, #4]
    4668:	601a      	str	r2, [r3, #0]
	spi_baudrate(channel,baud);
    466a:	68b9      	ldr	r1, [r7, #8]
    466c:	68f8      	ldr	r0, [r7, #12]
    466e:	f7ff ff4f 	bl	4510 <spi_baudrate>
	_spi_enable(channel);
    4672:	68fb      	ldr	r3, [r7, #12]
    4674:	681b      	ldr	r3, [r3, #0]
    4676:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    467a:	68fb      	ldr	r3, [r7, #12]
    467c:	601a      	str	r2, [r3, #0]
}
    467e:	bf00      	nop
    4680:	3710      	adds	r7, #16
    4682:	46bd      	mov	sp, r7
    4684:	bd80      	pop	{r7, pc}
    4686:	bf00      	nop
    4688:	40013000 	.word	0x40013000
    468c:	40021000 	.word	0x40021000

00004690 <spi_send>:


// envoie un octet via le canla SPI
inline uint8_t spi_send(spi_sfr_t* channel, uint8_t b){
    4690:	b480      	push	{r7}
    4692:	b083      	sub	sp, #12
    4694:	af00      	add	r7, sp, #0
    4696:	6078      	str	r0, [r7, #4]
    4698:	460b      	mov	r3, r1
    469a:	70fb      	strb	r3, [r7, #3]
	while (!(channel->SR&SPI_SR_TXE));
    469c:	bf00      	nop
    469e:	687b      	ldr	r3, [r7, #4]
    46a0:	689b      	ldr	r3, [r3, #8]
    46a2:	f003 0302 	and.w	r3, r3, #2
    46a6:	2b00      	cmp	r3, #0
    46a8:	d0f9      	beq.n	469e <spi_send+0xe>
	channel->DR=b;
    46aa:	78fa      	ldrb	r2, [r7, #3]
    46ac:	687b      	ldr	r3, [r7, #4]
    46ae:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    46b0:	bf00      	nop
    46b2:	687b      	ldr	r3, [r7, #4]
    46b4:	689b      	ldr	r3, [r3, #8]
    46b6:	f003 0301 	and.w	r3, r3, #1
    46ba:	2b00      	cmp	r3, #0
    46bc:	d0f9      	beq.n	46b2 <spi_send+0x22>
	return (uint8_t)channel->DR;
    46be:	687b      	ldr	r3, [r7, #4]
    46c0:	68db      	ldr	r3, [r3, #12]
    46c2:	b2db      	uxtb	r3, r3
}
    46c4:	4618      	mov	r0, r3
    46c6:	370c      	adds	r7, #12
    46c8:	46bd      	mov	sp, r7
    46ca:	bc80      	pop	{r7}
    46cc:	4770      	bx	lr

000046ce <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
    46ce:	b480      	push	{r7}
    46d0:	b085      	sub	sp, #20
    46d2:	af00      	add	r7, sp, #0
    46d4:	6078      	str	r0, [r7, #4]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    46d6:	bf00      	nop
    46d8:	687b      	ldr	r3, [r7, #4]
    46da:	689b      	ldr	r3, [r3, #8]
    46dc:	f003 0302 	and.w	r3, r3, #2
    46e0:	2b00      	cmp	r3, #0
    46e2:	d0f9      	beq.n	46d8 <spi_receive+0xa>
	channel->DR=255;
    46e4:	687b      	ldr	r3, [r7, #4]
    46e6:	22ff      	movs	r2, #255	; 0xff
    46e8:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    46ea:	bf00      	nop
    46ec:	687b      	ldr	r3, [r7, #4]
    46ee:	689b      	ldr	r3, [r3, #8]
    46f0:	f003 0301 	and.w	r3, r3, #1
    46f4:	2b00      	cmp	r3, #0
    46f6:	d0f9      	beq.n	46ec <spi_receive+0x1e>
	rx=(uint8_t)channel->DR;
    46f8:	687b      	ldr	r3, [r7, #4]
    46fa:	68db      	ldr	r3, [r3, #12]
    46fc:	73fb      	strb	r3, [r7, #15]
	return rx;
    46fe:	7bfb      	ldrb	r3, [r7, #15]
}
    4700:	4618      	mov	r0, r3
    4702:	3714      	adds	r7, #20
    4704:	46bd      	mov	sp, r7
    4706:	bc80      	pop	{r7}
    4708:	4770      	bx	lr

0000470a <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
    470a:	b480      	push	{r7}
    470c:	b087      	sub	sp, #28
    470e:	af00      	add	r7, sp, #0
    4710:	60f8      	str	r0, [r7, #12]
    4712:	60b9      	str	r1, [r7, #8]
    4714:	607a      	str	r2, [r7, #4]
	uint8_t rx;
	while (count){
    4716:	e010      	b.n	473a <spi_send_block+0x30>
		channel->DR=*buffer++;
    4718:	68bb      	ldr	r3, [r7, #8]
    471a:	1c5a      	adds	r2, r3, #1
    471c:	60ba      	str	r2, [r7, #8]
    471e:	781b      	ldrb	r3, [r3, #0]
    4720:	461a      	mov	r2, r3
    4722:	68fb      	ldr	r3, [r7, #12]
    4724:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_TXE));
    4726:	bf00      	nop
    4728:	68fb      	ldr	r3, [r7, #12]
    472a:	689b      	ldr	r3, [r3, #8]
    472c:	f003 0302 	and.w	r3, r3, #2
    4730:	2b00      	cmp	r3, #0
    4732:	d0f9      	beq.n	4728 <spi_send_block+0x1e>
		count--;
    4734:	687b      	ldr	r3, [r7, #4]
    4736:	3b01      	subs	r3, #1
    4738:	607b      	str	r3, [r7, #4]
	while (count){
    473a:	687b      	ldr	r3, [r7, #4]
    473c:	2b00      	cmp	r3, #0
    473e:	d1eb      	bne.n	4718 <spi_send_block+0xe>
	}
	while (channel->SR&SPI_SR_BSY);
    4740:	bf00      	nop
    4742:	68fb      	ldr	r3, [r7, #12]
    4744:	689b      	ldr	r3, [r3, #8]
    4746:	f003 0380 	and.w	r3, r3, #128	; 0x80
    474a:	2b00      	cmp	r3, #0
    474c:	d1f9      	bne.n	4742 <spi_send_block+0x38>
	rx=(uint8_t)channel->DR;
    474e:	68fb      	ldr	r3, [r7, #12]
    4750:	68db      	ldr	r3, [r3, #12]
    4752:	75fb      	strb	r3, [r7, #23]
}
    4754:	bf00      	nop
    4756:	371c      	adds	r7, #28
    4758:	46bd      	mov	sp, r7
    475a:	bc80      	pop	{r7}
    475c:	4770      	bx	lr

0000475e <spi_receive_block>:

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    475e:	b480      	push	{r7}
    4760:	b085      	sub	sp, #20
    4762:	af00      	add	r7, sp, #0
    4764:	60f8      	str	r0, [r7, #12]
    4766:	60b9      	str	r1, [r7, #8]
    4768:	607a      	str	r2, [r7, #4]
	while (count){
    476a:	e013      	b.n	4794 <spi_receive_block+0x36>
		channel->DR=0;
    476c:	68fb      	ldr	r3, [r7, #12]
    476e:	2200      	movs	r2, #0
    4770:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    4772:	bf00      	nop
    4774:	68fb      	ldr	r3, [r7, #12]
    4776:	689b      	ldr	r3, [r3, #8]
    4778:	f003 0301 	and.w	r3, r3, #1
    477c:	2b00      	cmp	r3, #0
    477e:	d0f9      	beq.n	4774 <spi_receive_block+0x16>
		*buffer++=(uint8_t)channel->DR;
    4780:	68bb      	ldr	r3, [r7, #8]
    4782:	1c5a      	adds	r2, r3, #1
    4784:	60ba      	str	r2, [r7, #8]
    4786:	68fa      	ldr	r2, [r7, #12]
    4788:	68d2      	ldr	r2, [r2, #12]
    478a:	b2d2      	uxtb	r2, r2
    478c:	701a      	strb	r2, [r3, #0]
		count--;
    478e:	687b      	ldr	r3, [r7, #4]
    4790:	3b01      	subs	r3, #1
    4792:	607b      	str	r3, [r7, #4]
	while (count){
    4794:	687b      	ldr	r3, [r7, #4]
    4796:	2b00      	cmp	r3, #0
    4798:	d1e8      	bne.n	476c <spi_receive_block+0xe>
	}
}
    479a:	bf00      	nop
    479c:	3714      	adds	r7, #20
    479e:	46bd      	mov	sp, r7
    47a0:	bc80      	pop	{r7}
    47a2:	4770      	bx	lr

000047a4 <reset_mcu>:
	_reset_mcu();
    47a4:	4b01      	ldr	r3, [pc, #4]	; (47ac <reset_mcu+0x8>)
    47a6:	4a02      	ldr	r2, [pc, #8]	; (47b0 <reset_mcu+0xc>)
    47a8:	601a      	str	r2, [r3, #0]
}
    47aa:	bf00      	nop
    47ac:	e000ed0c 	.word	0xe000ed0c
    47b0:	05fa0004 	.word	0x05fa0004

000047b4 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    47b4:	b580      	push	{r7, lr}
    47b6:	b082      	sub	sp, #8
    47b8:	af00      	add	r7, sp, #0
    47ba:	6078      	str	r0, [r7, #4]
    47bc:	6039      	str	r1, [r7, #0]
	print(msg);
    47be:	6878      	ldr	r0, [r7, #4]
    47c0:	f000 f9bc 	bl	4b3c <print>
	print("\nat address ");
    47c4:	4818      	ldr	r0, [pc, #96]	; (4828 <print_fault+0x74>)
    47c6:	f000 f9b9 	bl	4b3c <print>
	if (adr) {
    47ca:	683b      	ldr	r3, [r7, #0]
    47cc:	2b00      	cmp	r3, #0
    47ce:	d004      	beq.n	47da <print_fault+0x26>
		print_int(adr,16);
    47d0:	683b      	ldr	r3, [r7, #0]
    47d2:	2110      	movs	r1, #16
    47d4:	4618      	mov	r0, r3
    47d6:	f000 f9e1 	bl	4b9c <print_int>
	put_char(CR);
    47da:	200d      	movs	r0, #13
    47dc:	f000 f8f6 	bl	49cc <put_char>
	print("\nUFSR=");
    47e0:	4812      	ldr	r0, [pc, #72]	; (482c <print_fault+0x78>)
    47e2:	f000 f9ab 	bl	4b3c <print>
	print_int(CFSR->fsr.usageFalt,16);
    47e6:	4b12      	ldr	r3, [pc, #72]	; (4830 <print_fault+0x7c>)
    47e8:	681b      	ldr	r3, [r3, #0]
    47ea:	f3c3 430f 	ubfx	r3, r3, #16, #16
    47ee:	b29b      	uxth	r3, r3
    47f0:	2110      	movs	r1, #16
    47f2:	4618      	mov	r0, r3
    47f4:	f000 f9d2 	bl	4b9c <print_int>
	print("\nBFSR=");
    47f8:	480e      	ldr	r0, [pc, #56]	; (4834 <print_fault+0x80>)
    47fa:	f000 f99f 	bl	4b3c <print>
	print_int(CFSR->fsr.busFault,16);
    47fe:	4b0c      	ldr	r3, [pc, #48]	; (4830 <print_fault+0x7c>)
    4800:	681b      	ldr	r3, [r3, #0]
    4802:	f3c3 2307 	ubfx	r3, r3, #8, #8
    4806:	b2db      	uxtb	r3, r3
    4808:	2110      	movs	r1, #16
    480a:	4618      	mov	r0, r3
    480c:	f000 f9c6 	bl	4b9c <print_int>
	print("\nMMFSR=");
    4810:	4809      	ldr	r0, [pc, #36]	; (4838 <print_fault+0x84>)
    4812:	f000 f993 	bl	4b3c <print>
	print_int(CFSR->fsr.mmFault,16);
    4816:	4b06      	ldr	r3, [pc, #24]	; (4830 <print_fault+0x7c>)
    4818:	681b      	ldr	r3, [r3, #0]
    481a:	b2db      	uxtb	r3, r3
    481c:	2110      	movs	r1, #16
    481e:	4618      	mov	r0, r3
    4820:	f000 f9bc 	bl	4b9c <print_int>
	while(1);
    4824:	e7fe      	b.n	4824 <print_fault+0x70>
    4826:	bf00      	nop
    4828:	00005b30 	.word	0x00005b30
    482c:	00005b40 	.word	0x00005b40
    4830:	e000ed28 	.word	0xe000ed28
    4834:	00005b48 	.word	0x00005b48
    4838:	00005b50 	.word	0x00005b50

0000483c <font_color>:
#define BG 0 // background
#define FG 1 // foreground
static uint8_t text_colors[2]={0,15};


void font_color(uint8_t color){
    483c:	b480      	push	{r7}
    483e:	b083      	sub	sp, #12
    4840:	af00      	add	r7, sp, #0
    4842:	4603      	mov	r3, r0
    4844:	71fb      	strb	r3, [r7, #7]
	text_colors[FG]=color&0xf;
    4846:	79fb      	ldrb	r3, [r7, #7]
    4848:	f003 030f 	and.w	r3, r3, #15
    484c:	b2da      	uxtb	r2, r3
    484e:	4b03      	ldr	r3, [pc, #12]	; (485c <font_color+0x20>)
    4850:	705a      	strb	r2, [r3, #1]
}
    4852:	bf00      	nop
    4854:	370c      	adds	r7, #12
    4856:	46bd      	mov	sp, r7
    4858:	bc80      	pop	{r7}
    485a:	4770      	bx	lr
    485c:	20000200 	.word	0x20000200

00004860 <bg_color>:

void bg_color(uint8_t color){
    4860:	b480      	push	{r7}
    4862:	b083      	sub	sp, #12
    4864:	af00      	add	r7, sp, #0
    4866:	4603      	mov	r3, r0
    4868:	71fb      	strb	r3, [r7, #7]
	text_colors[BG]=color&0xf;
    486a:	79fb      	ldrb	r3, [r7, #7]
    486c:	f003 030f 	and.w	r3, r3, #15
    4870:	b2da      	uxtb	r2, r3
    4872:	4b03      	ldr	r3, [pc, #12]	; (4880 <bg_color+0x20>)
    4874:	701a      	strb	r2, [r3, #0]
}
    4876:	bf00      	nop
    4878:	370c      	adds	r7, #12
    487a:	46bd      	mov	sp, r7
    487c:	bc80      	pop	{r7}
    487e:	4770      	bx	lr
    4880:	20000200 	.word	0x20000200

00004884 <select_font>:

void select_font(uint8_t font_id){
    4884:	b480      	push	{r7}
    4886:	b083      	sub	sp, #12
    4888:	af00      	add	r7, sp, #0
    488a:	4603      	mov	r3, r0
    488c:	71fb      	strb	r3, [r7, #7]
	font=font_id;
    488e:	4a04      	ldr	r2, [pc, #16]	; (48a0 <select_font+0x1c>)
    4890:	79fb      	ldrb	r3, [r7, #7]
    4892:	7013      	strb	r3, [r2, #0]
}
    4894:	bf00      	nop
    4896:	370c      	adds	r7, #12
    4898:	46bd      	mov	sp, r7
    489a:	bc80      	pop	{r7}
    489c:	4770      	bx	lr
    489e:	bf00      	nop
    48a0:	200001fc 	.word	0x200001fc

000048a4 <new_line>:


void new_line(){
    48a4:	b580      	push	{r7, lr}
    48a6:	b082      	sub	sp, #8
    48a8:	af00      	add	r7, sp, #0
	xpos=0;
    48aa:	4b27      	ldr	r3, [pc, #156]	; (4948 <new_line+0xa4>)
    48ac:	2200      	movs	r2, #0
    48ae:	701a      	strb	r2, [r3, #0]
	vmode_params_t *vparams=get_video_params();	
    48b0:	f000 fdee 	bl	5490 <get_video_params>
    48b4:	6078      	str	r0, [r7, #4]
	switch (font){
    48b6:	4b25      	ldr	r3, [pc, #148]	; (494c <new_line+0xa8>)
    48b8:	781b      	ldrb	r3, [r3, #0]
    48ba:	2b01      	cmp	r3, #1
    48bc:	d017      	beq.n	48ee <new_line+0x4a>
    48be:	2b02      	cmp	r3, #2
    48c0:	d029      	beq.n	4916 <new_line+0x72>
    48c2:	2b00      	cmp	r3, #0
    48c4:	d000      	beq.n	48c8 <new_line+0x24>
			gfx_scroll_up(CHAR_HEIGHT);
		}
		break;	
	}//swtich

}
    48c6:	e03a      	b.n	493e <new_line+0x9a>
		if ((ypos+SHEX_HEIGHT)<=(vparams->vres-SHEX_HEIGHT+1)){
    48c8:	4b21      	ldr	r3, [pc, #132]	; (4950 <new_line+0xac>)
    48ca:	781b      	ldrb	r3, [r3, #0]
    48cc:	1d9a      	adds	r2, r3, #6
    48ce:	687b      	ldr	r3, [r7, #4]
    48d0:	89db      	ldrh	r3, [r3, #14]
    48d2:	3b05      	subs	r3, #5
    48d4:	429a      	cmp	r2, r3
    48d6:	dc06      	bgt.n	48e6 <new_line+0x42>
			ypos+=SHEX_HEIGHT;
    48d8:	4b1d      	ldr	r3, [pc, #116]	; (4950 <new_line+0xac>)
    48da:	781b      	ldrb	r3, [r3, #0]
    48dc:	3306      	adds	r3, #6
    48de:	b2da      	uxtb	r2, r3
    48e0:	4b1b      	ldr	r3, [pc, #108]	; (4950 <new_line+0xac>)
    48e2:	701a      	strb	r2, [r3, #0]
		break;
    48e4:	e02b      	b.n	493e <new_line+0x9a>
			gfx_scroll_up(SHEX_HEIGHT);
    48e6:	2006      	movs	r0, #6
    48e8:	f7fd fd52 	bl	2390 <gfx_scroll_up>
		break;
    48ec:	e027      	b.n	493e <new_line+0x9a>
		if ((ypos+LHEX_HEIGHT)<=(vparams->vres-LHEX_HEIGHT+1)){
    48ee:	4b18      	ldr	r3, [pc, #96]	; (4950 <new_line+0xac>)
    48f0:	781b      	ldrb	r3, [r3, #0]
    48f2:	f103 020a 	add.w	r2, r3, #10
    48f6:	687b      	ldr	r3, [r7, #4]
    48f8:	89db      	ldrh	r3, [r3, #14]
    48fa:	3b09      	subs	r3, #9
    48fc:	429a      	cmp	r2, r3
    48fe:	dc06      	bgt.n	490e <new_line+0x6a>
			ypos+=LHEX_HEIGHT;
    4900:	4b13      	ldr	r3, [pc, #76]	; (4950 <new_line+0xac>)
    4902:	781b      	ldrb	r3, [r3, #0]
    4904:	330a      	adds	r3, #10
    4906:	b2da      	uxtb	r2, r3
    4908:	4b11      	ldr	r3, [pc, #68]	; (4950 <new_line+0xac>)
    490a:	701a      	strb	r2, [r3, #0]
		break;
    490c:	e017      	b.n	493e <new_line+0x9a>
			gfx_scroll_up(LHEX_HEIGHT);
    490e:	200a      	movs	r0, #10
    4910:	f7fd fd3e 	bl	2390 <gfx_scroll_up>
		break;
    4914:	e013      	b.n	493e <new_line+0x9a>
		if ((ypos+CHAR_HEIGHT)<=(vparams->vres-CHAR_HEIGHT+1)){
    4916:	4b0e      	ldr	r3, [pc, #56]	; (4950 <new_line+0xac>)
    4918:	781b      	ldrb	r3, [r3, #0]
    491a:	f103 0208 	add.w	r2, r3, #8
    491e:	687b      	ldr	r3, [r7, #4]
    4920:	89db      	ldrh	r3, [r3, #14]
    4922:	3b07      	subs	r3, #7
    4924:	429a      	cmp	r2, r3
    4926:	dc06      	bgt.n	4936 <new_line+0x92>
			ypos+=CHAR_HEIGHT;
    4928:	4b09      	ldr	r3, [pc, #36]	; (4950 <new_line+0xac>)
    492a:	781b      	ldrb	r3, [r3, #0]
    492c:	3308      	adds	r3, #8
    492e:	b2da      	uxtb	r2, r3
    4930:	4b07      	ldr	r3, [pc, #28]	; (4950 <new_line+0xac>)
    4932:	701a      	strb	r2, [r3, #0]
		break;	
    4934:	e002      	b.n	493c <new_line+0x98>
			gfx_scroll_up(CHAR_HEIGHT);
    4936:	2008      	movs	r0, #8
    4938:	f7fd fd2a 	bl	2390 <gfx_scroll_up>
		break;	
    493c:	bf00      	nop
}
    493e:	bf00      	nop
    4940:	3708      	adds	r7, #8
    4942:	46bd      	mov	sp, r7
    4944:	bd80      	pop	{r7, pc}
    4946:	bf00      	nop
    4948:	200006a5 	.word	0x200006a5
    494c:	200001fc 	.word	0x200001fc
    4950:	200006a6 	.word	0x200006a6

00004954 <draw_char>:

static void draw_char(int x,int y,int w, int h, const char* glyph){
    4954:	b5b0      	push	{r4, r5, r7, lr}
    4956:	b086      	sub	sp, #24
    4958:	af00      	add	r7, sp, #0
    495a:	60f8      	str	r0, [r7, #12]
    495c:	60b9      	str	r1, [r7, #8]
    495e:	607a      	str	r2, [r7, #4]
    4960:	603b      	str	r3, [r7, #0]
	register int x0,y0;
	uint8_t c,byte,bit,mask;

	for (y0=y;y0<(y+h);y0++){
    4962:	68bc      	ldr	r4, [r7, #8]
    4964:	e026      	b.n	49b4 <draw_char+0x60>
		byte=*glyph++;
    4966:	6abb      	ldr	r3, [r7, #40]	; 0x28
    4968:	1c5a      	adds	r2, r3, #1
    496a:	62ba      	str	r2, [r7, #40]	; 0x28
    496c:	781b      	ldrb	r3, [r3, #0]
    496e:	757b      	strb	r3, [r7, #21]
		mask=128;
    4970:	2380      	movs	r3, #128	; 0x80
    4972:	75bb      	strb	r3, [r7, #22]
		for (x0=x;x0<(x+w);x0++){
    4974:	68fd      	ldr	r5, [r7, #12]
    4976:	e017      	b.n	49a8 <draw_char+0x54>
			bit=byte&mask;
    4978:	7d7a      	ldrb	r2, [r7, #21]
    497a:	7dbb      	ldrb	r3, [r7, #22]
    497c:	4013      	ands	r3, r2
    497e:	753b      	strb	r3, [r7, #20]
			if (bit)c=text_colors[FG];else c=text_colors[BG];
    4980:	7d3b      	ldrb	r3, [r7, #20]
    4982:	2b00      	cmp	r3, #0
    4984:	d003      	beq.n	498e <draw_char+0x3a>
    4986:	4b10      	ldr	r3, [pc, #64]	; (49c8 <draw_char+0x74>)
    4988:	785b      	ldrb	r3, [r3, #1]
    498a:	75fb      	strb	r3, [r7, #23]
    498c:	e002      	b.n	4994 <draw_char+0x40>
    498e:	4b0e      	ldr	r3, [pc, #56]	; (49c8 <draw_char+0x74>)
    4990:	781b      	ldrb	r3, [r3, #0]
    4992:	75fb      	strb	r3, [r7, #23]
			gfx_plot(x0,y0,c);
    4994:	7dfb      	ldrb	r3, [r7, #23]
    4996:	461a      	mov	r2, r3
    4998:	4621      	mov	r1, r4
    499a:	4628      	mov	r0, r5
    499c:	f7fd fc4e 	bl	223c <gfx_plot>
			mask>>=1;
    49a0:	7dbb      	ldrb	r3, [r7, #22]
    49a2:	085b      	lsrs	r3, r3, #1
    49a4:	75bb      	strb	r3, [r7, #22]
		for (x0=x;x0<(x+w);x0++){
    49a6:	3501      	adds	r5, #1
    49a8:	68fa      	ldr	r2, [r7, #12]
    49aa:	687b      	ldr	r3, [r7, #4]
    49ac:	4413      	add	r3, r2
    49ae:	42ab      	cmp	r3, r5
    49b0:	dce2      	bgt.n	4978 <draw_char+0x24>
	for (y0=y;y0<(y+h);y0++){
    49b2:	3401      	adds	r4, #1
    49b4:	68ba      	ldr	r2, [r7, #8]
    49b6:	683b      	ldr	r3, [r7, #0]
    49b8:	4413      	add	r3, r2
    49ba:	42a3      	cmp	r3, r4
    49bc:	dcd3      	bgt.n	4966 <draw_char+0x12>
		}
	}
}
    49be:	bf00      	nop
    49c0:	3718      	adds	r7, #24
    49c2:	46bd      	mov	sp, r7
    49c4:	bdb0      	pop	{r4, r5, r7, pc}
    49c6:	bf00      	nop
    49c8:	20000200 	.word	0x20000200

000049cc <put_char>:

void put_char(uint8_t c){
    49cc:	b580      	push	{r7, lr}
    49ce:	b084      	sub	sp, #16
    49d0:	af02      	add	r7, sp, #8
    49d2:	4603      	mov	r3, r0
    49d4:	71fb      	strb	r3, [r7, #7]
	switch(font){
    49d6:	4b3d      	ldr	r3, [pc, #244]	; (4acc <put_char+0x100>)
    49d8:	781b      	ldrb	r3, [r3, #0]
    49da:	2b01      	cmp	r3, #1
    49dc:	d027      	beq.n	4a2e <put_char+0x62>
    49de:	2b02      	cmp	r3, #2
    49e0:	d048      	beq.n	4a74 <put_char+0xa8>
    49e2:	2b00      	cmp	r3, #0
    49e4:	d000      	beq.n	49e8 <put_char+0x1c>
				new_line();
			}
		}
		break;		
	}
}
    49e6:	e06d      	b.n	4ac4 <put_char+0xf8>
		if (c<16){
    49e8:	79fb      	ldrb	r3, [r7, #7]
    49ea:	2b0f      	cmp	r3, #15
    49ec:	d865      	bhi.n	4aba <put_char+0xee>
			draw_char(xpos,ypos,SHEX_WIDTH,SHEX_HEIGHT,&font_hex_4x6[c*SHEX_HEIGHT]);
    49ee:	4b38      	ldr	r3, [pc, #224]	; (4ad0 <put_char+0x104>)
    49f0:	781b      	ldrb	r3, [r3, #0]
    49f2:	4618      	mov	r0, r3
    49f4:	4b37      	ldr	r3, [pc, #220]	; (4ad4 <put_char+0x108>)
    49f6:	781b      	ldrb	r3, [r3, #0]
    49f8:	4619      	mov	r1, r3
    49fa:	79fa      	ldrb	r2, [r7, #7]
    49fc:	4613      	mov	r3, r2
    49fe:	005b      	lsls	r3, r3, #1
    4a00:	4413      	add	r3, r2
    4a02:	005b      	lsls	r3, r3, #1
    4a04:	461a      	mov	r2, r3
    4a06:	4b34      	ldr	r3, [pc, #208]	; (4ad8 <put_char+0x10c>)
    4a08:	4413      	add	r3, r2
    4a0a:	9300      	str	r3, [sp, #0]
    4a0c:	2306      	movs	r3, #6
    4a0e:	2204      	movs	r2, #4
    4a10:	f7ff ffa0 	bl	4954 <draw_char>
			xpos+=SHEX_WIDTH;
    4a14:	4b2e      	ldr	r3, [pc, #184]	; (4ad0 <put_char+0x104>)
    4a16:	781b      	ldrb	r3, [r3, #0]
    4a18:	3304      	adds	r3, #4
    4a1a:	b2da      	uxtb	r2, r3
    4a1c:	4b2c      	ldr	r3, [pc, #176]	; (4ad0 <put_char+0x104>)
    4a1e:	701a      	strb	r2, [r3, #0]
			if (xpos>(HRES-SHEX_WIDTH+1)){
    4a20:	4b2b      	ldr	r3, [pc, #172]	; (4ad0 <put_char+0x104>)
    4a22:	781b      	ldrb	r3, [r3, #0]
    4a24:	2bb1      	cmp	r3, #177	; 0xb1
    4a26:	d948      	bls.n	4aba <put_char+0xee>
				new_line();
    4a28:	f7ff ff3c 	bl	48a4 <new_line>
		break;
    4a2c:	e045      	b.n	4aba <put_char+0xee>
		if (c<16){
    4a2e:	79fb      	ldrb	r3, [r7, #7]
    4a30:	2b0f      	cmp	r3, #15
    4a32:	d844      	bhi.n	4abe <put_char+0xf2>
			draw_char(xpos,ypos,LHEX_WIDTH,LHEX_HEIGHT,&font_hex_8x10[c*LHEX_HEIGHT]);
    4a34:	4b26      	ldr	r3, [pc, #152]	; (4ad0 <put_char+0x104>)
    4a36:	781b      	ldrb	r3, [r3, #0]
    4a38:	4618      	mov	r0, r3
    4a3a:	4b26      	ldr	r3, [pc, #152]	; (4ad4 <put_char+0x108>)
    4a3c:	781b      	ldrb	r3, [r3, #0]
    4a3e:	4619      	mov	r1, r3
    4a40:	79fa      	ldrb	r2, [r7, #7]
    4a42:	4613      	mov	r3, r2
    4a44:	009b      	lsls	r3, r3, #2
    4a46:	4413      	add	r3, r2
    4a48:	005b      	lsls	r3, r3, #1
    4a4a:	461a      	mov	r2, r3
    4a4c:	4b23      	ldr	r3, [pc, #140]	; (4adc <put_char+0x110>)
    4a4e:	4413      	add	r3, r2
    4a50:	9300      	str	r3, [sp, #0]
    4a52:	230a      	movs	r3, #10
    4a54:	2208      	movs	r2, #8
    4a56:	f7ff ff7d 	bl	4954 <draw_char>
			xpos+=LHEX_WIDTH;
    4a5a:	4b1d      	ldr	r3, [pc, #116]	; (4ad0 <put_char+0x104>)
    4a5c:	781b      	ldrb	r3, [r3, #0]
    4a5e:	3308      	adds	r3, #8
    4a60:	b2da      	uxtb	r2, r3
    4a62:	4b1b      	ldr	r3, [pc, #108]	; (4ad0 <put_char+0x104>)
    4a64:	701a      	strb	r2, [r3, #0]
			if (xpos>(HRES-LHEX_WIDTH+1)){
    4a66:	4b1a      	ldr	r3, [pc, #104]	; (4ad0 <put_char+0x104>)
    4a68:	781b      	ldrb	r3, [r3, #0]
    4a6a:	2bad      	cmp	r3, #173	; 0xad
    4a6c:	d927      	bls.n	4abe <put_char+0xf2>
				new_line();
    4a6e:	f7ff ff19 	bl	48a4 <new_line>
		break;
    4a72:	e024      	b.n	4abe <put_char+0xf2>
		if ((c>31) && (c<(FONT_SIZE+32))){
    4a74:	79fb      	ldrb	r3, [r7, #7]
    4a76:	2b1f      	cmp	r3, #31
    4a78:	d923      	bls.n	4ac2 <put_char+0xf6>
    4a7a:	79fb      	ldrb	r3, [r7, #7]
    4a7c:	2b84      	cmp	r3, #132	; 0x84
    4a7e:	d820      	bhi.n	4ac2 <put_char+0xf6>
			draw_char(xpos,ypos,CHAR_WIDTH,CHAR_HEIGHT,&font_6x8[(c-32)*CHAR_HEIGHT]);
    4a80:	4b13      	ldr	r3, [pc, #76]	; (4ad0 <put_char+0x104>)
    4a82:	781b      	ldrb	r3, [r3, #0]
    4a84:	4618      	mov	r0, r3
    4a86:	4b13      	ldr	r3, [pc, #76]	; (4ad4 <put_char+0x108>)
    4a88:	781b      	ldrb	r3, [r3, #0]
    4a8a:	4619      	mov	r1, r3
    4a8c:	79fb      	ldrb	r3, [r7, #7]
    4a8e:	3b20      	subs	r3, #32
    4a90:	00db      	lsls	r3, r3, #3
    4a92:	4a13      	ldr	r2, [pc, #76]	; (4ae0 <put_char+0x114>)
    4a94:	4413      	add	r3, r2
    4a96:	9300      	str	r3, [sp, #0]
    4a98:	2308      	movs	r3, #8
    4a9a:	2206      	movs	r2, #6
    4a9c:	f7ff ff5a 	bl	4954 <draw_char>
			xpos+=CHAR_WIDTH;
    4aa0:	4b0b      	ldr	r3, [pc, #44]	; (4ad0 <put_char+0x104>)
    4aa2:	781b      	ldrb	r3, [r3, #0]
    4aa4:	3306      	adds	r3, #6
    4aa6:	b2da      	uxtb	r2, r3
    4aa8:	4b09      	ldr	r3, [pc, #36]	; (4ad0 <put_char+0x104>)
    4aaa:	701a      	strb	r2, [r3, #0]
			if (xpos>(HRES-CHAR_WIDTH+1)){
    4aac:	4b08      	ldr	r3, [pc, #32]	; (4ad0 <put_char+0x104>)
    4aae:	781b      	ldrb	r3, [r3, #0]
    4ab0:	2baf      	cmp	r3, #175	; 0xaf
    4ab2:	d906      	bls.n	4ac2 <put_char+0xf6>
				new_line();
    4ab4:	f7ff fef6 	bl	48a4 <new_line>
		break;		
    4ab8:	e003      	b.n	4ac2 <put_char+0xf6>
		break;
    4aba:	bf00      	nop
    4abc:	e002      	b.n	4ac4 <put_char+0xf8>
		break;
    4abe:	bf00      	nop
    4ac0:	e000      	b.n	4ac4 <put_char+0xf8>
		break;		
    4ac2:	bf00      	nop
}
    4ac4:	bf00      	nop
    4ac6:	3708      	adds	r7, #8
    4ac8:	46bd      	mov	sp, r7
    4aca:	bd80      	pop	{r7, pc}
    4acc:	200001fc 	.word	0x200001fc
    4ad0:	200006a5 	.word	0x200006a5
    4ad4:	200006a6 	.word	0x200006a6
    4ad8:	00005528 	.word	0x00005528
    4adc:	00005588 	.word	0x00005588
    4ae0:	00005628 	.word	0x00005628

00004ae4 <set_cursor>:

void set_cursor(uint8_t x, uint8_t y){
    4ae4:	b480      	push	{r7}
    4ae6:	b083      	sub	sp, #12
    4ae8:	af00      	add	r7, sp, #0
    4aea:	4603      	mov	r3, r0
    4aec:	460a      	mov	r2, r1
    4aee:	71fb      	strb	r3, [r7, #7]
    4af0:	4613      	mov	r3, r2
    4af2:	71bb      	strb	r3, [r7, #6]
	xpos=x;
    4af4:	4a05      	ldr	r2, [pc, #20]	; (4b0c <set_cursor+0x28>)
    4af6:	79fb      	ldrb	r3, [r7, #7]
    4af8:	7013      	strb	r3, [r2, #0]
	ypos=y;
    4afa:	4a05      	ldr	r2, [pc, #20]	; (4b10 <set_cursor+0x2c>)
    4afc:	79bb      	ldrb	r3, [r7, #6]
    4afe:	7013      	strb	r3, [r2, #0]
}
    4b00:	bf00      	nop
    4b02:	370c      	adds	r7, #12
    4b04:	46bd      	mov	sp, r7
    4b06:	bc80      	pop	{r7}
    4b08:	4770      	bx	lr
    4b0a:	bf00      	nop
    4b0c:	200006a5 	.word	0x200006a5
    4b10:	200006a6 	.word	0x200006a6

00004b14 <get_cursor>:

uint16_t get_cursor(){
    4b14:	b480      	push	{r7}
    4b16:	af00      	add	r7, sp, #0
	return (xpos<<8)+ypos;
    4b18:	4b06      	ldr	r3, [pc, #24]	; (4b34 <get_cursor+0x20>)
    4b1a:	781b      	ldrb	r3, [r3, #0]
    4b1c:	b29b      	uxth	r3, r3
    4b1e:	021b      	lsls	r3, r3, #8
    4b20:	b29a      	uxth	r2, r3
    4b22:	4b05      	ldr	r3, [pc, #20]	; (4b38 <get_cursor+0x24>)
    4b24:	781b      	ldrb	r3, [r3, #0]
    4b26:	b29b      	uxth	r3, r3
    4b28:	4413      	add	r3, r2
    4b2a:	b29b      	uxth	r3, r3
}
    4b2c:	4618      	mov	r0, r3
    4b2e:	46bd      	mov	sp, r7
    4b30:	bc80      	pop	{r7}
    4b32:	4770      	bx	lr
    4b34:	200006a5 	.word	0x200006a5
    4b38:	200006a6 	.word	0x200006a6

00004b3c <print>:

void print(const char* str){
    4b3c:	b580      	push	{r7, lr}
    4b3e:	b084      	sub	sp, #16
    4b40:	af00      	add	r7, sp, #0
    4b42:	6078      	str	r0, [r7, #4]
    char c;
    while ((c=*str++)){
    4b44:	e011      	b.n	4b6a <print+0x2e>
        switch(c){
    4b46:	7bfb      	ldrb	r3, [r7, #15]
    4b48:	2b0a      	cmp	r3, #10
    4b4a:	d004      	beq.n	4b56 <print+0x1a>
    4b4c:	2b0d      	cmp	r3, #13
    4b4e:	d002      	beq.n	4b56 <print+0x1a>
    4b50:	2b08      	cmp	r3, #8
    4b52:	d003      	beq.n	4b5c <print+0x20>
    4b54:	e005      	b.n	4b62 <print+0x26>
        case LF:
        case CR:
            new_line();
    4b56:	f7ff fea5 	bl	48a4 <new_line>
            break;
    4b5a:	e006      	b.n	4b6a <print+0x2e>
        case BS:
            cursor_left();    
    4b5c:	f000 f892 	bl	4c84 <cursor_left>
            break;
    4b60:	e003      	b.n	4b6a <print+0x2e>
        default:
            put_char(c);
    4b62:	7bfb      	ldrb	r3, [r7, #15]
    4b64:	4618      	mov	r0, r3
    4b66:	f7ff ff31 	bl	49cc <put_char>
    while ((c=*str++)){
    4b6a:	687b      	ldr	r3, [r7, #4]
    4b6c:	1c5a      	adds	r2, r3, #1
    4b6e:	607a      	str	r2, [r7, #4]
    4b70:	781b      	ldrb	r3, [r3, #0]
    4b72:	73fb      	strb	r3, [r7, #15]
    4b74:	7bfb      	ldrb	r3, [r7, #15]
    4b76:	2b00      	cmp	r3, #0
    4b78:	d1e5      	bne.n	4b46 <print+0xa>
        }
    }
}
    4b7a:	bf00      	nop
    4b7c:	3710      	adds	r7, #16
    4b7e:	46bd      	mov	sp, r7
    4b80:	bd80      	pop	{r7, pc}

00004b82 <println>:

// print text and do crlf()
void println(const char *text){
    4b82:	b580      	push	{r7, lr}
    4b84:	b082      	sub	sp, #8
    4b86:	af00      	add	r7, sp, #0
    4b88:	6078      	str	r0, [r7, #4]
	print(text);
    4b8a:	6878      	ldr	r0, [r7, #4]
    4b8c:	f7ff ffd6 	bl	4b3c <print>
	new_line();
    4b90:	f7ff fe88 	bl	48a4 <new_line>
}
    4b94:	bf00      	nop
    4b96:	3708      	adds	r7, #8
    4b98:	46bd      	mov	sp, r7
    4b9a:	bd80      	pop	{r7, pc}

00004b9c <print_int>:

void print_int(int i,uint8_t base){
    4b9c:	b580      	push	{r7, lr}
    4b9e:	b08a      	sub	sp, #40	; 0x28
    4ba0:	af00      	add	r7, sp, #0
    4ba2:	6078      	str	r0, [r7, #4]
    4ba4:	460b      	mov	r3, r1
    4ba6:	70fb      	strb	r3, [r7, #3]
    char fmt[16],sign=0;
    4ba8:	2300      	movs	r3, #0
    4baa:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    int idx,d;

    fmt[15]=0;
    4bae:	2300      	movs	r3, #0
    4bb0:	76fb      	strb	r3, [r7, #27]
    fmt[14]=' ';
    4bb2:	2320      	movs	r3, #32
    4bb4:	76bb      	strb	r3, [r7, #26]
    idx=14;
    4bb6:	230e      	movs	r3, #14
    4bb8:	623b      	str	r3, [r7, #32]
    if (i<0){
    4bba:	687b      	ldr	r3, [r7, #4]
    4bbc:	2b00      	cmp	r3, #0
    4bbe:	da27      	bge.n	4c10 <print_int+0x74>
        sign=1;
    4bc0:	2301      	movs	r3, #1
    4bc2:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
        i=-i;
    4bc6:	687b      	ldr	r3, [r7, #4]
    4bc8:	425b      	negs	r3, r3
    4bca:	607b      	str	r3, [r7, #4]
    }
    while (idx>1 && i){
    4bcc:	e020      	b.n	4c10 <print_int+0x74>
        d=i%base;
    4bce:	78fa      	ldrb	r2, [r7, #3]
    4bd0:	687b      	ldr	r3, [r7, #4]
    4bd2:	fb93 f1f2 	sdiv	r1, r3, r2
    4bd6:	fb02 f201 	mul.w	r2, r2, r1
    4bda:	1a9b      	subs	r3, r3, r2
    4bdc:	61fb      	str	r3, [r7, #28]
        if (d>9) d+=7;
    4bde:	69fb      	ldr	r3, [r7, #28]
    4be0:	2b09      	cmp	r3, #9
    4be2:	dd02      	ble.n	4bea <print_int+0x4e>
    4be4:	69fb      	ldr	r3, [r7, #28]
    4be6:	3307      	adds	r3, #7
    4be8:	61fb      	str	r3, [r7, #28]
        fmt[--idx]=d+='0';
    4bea:	6a3b      	ldr	r3, [r7, #32]
    4bec:	3b01      	subs	r3, #1
    4bee:	623b      	str	r3, [r7, #32]
    4bf0:	69fb      	ldr	r3, [r7, #28]
    4bf2:	3330      	adds	r3, #48	; 0x30
    4bf4:	61fb      	str	r3, [r7, #28]
    4bf6:	69fb      	ldr	r3, [r7, #28]
    4bf8:	b2d9      	uxtb	r1, r3
    4bfa:	f107 020c 	add.w	r2, r7, #12
    4bfe:	6a3b      	ldr	r3, [r7, #32]
    4c00:	4413      	add	r3, r2
    4c02:	460a      	mov	r2, r1
    4c04:	701a      	strb	r2, [r3, #0]
        i/=base;
    4c06:	78fb      	ldrb	r3, [r7, #3]
    4c08:	687a      	ldr	r2, [r7, #4]
    4c0a:	fb92 f3f3 	sdiv	r3, r2, r3
    4c0e:	607b      	str	r3, [r7, #4]
    while (idx>1 && i){
    4c10:	6a3b      	ldr	r3, [r7, #32]
    4c12:	2b01      	cmp	r3, #1
    4c14:	dd02      	ble.n	4c1c <print_int+0x80>
    4c16:	687b      	ldr	r3, [r7, #4]
    4c18:	2b00      	cmp	r3, #0
    4c1a:	d1d8      	bne.n	4bce <print_int+0x32>
    }
    if (idx==14)fmt[--idx]='0';
    4c1c:	6a3b      	ldr	r3, [r7, #32]
    4c1e:	2b0e      	cmp	r3, #14
    4c20:	d108      	bne.n	4c34 <print_int+0x98>
    4c22:	6a3b      	ldr	r3, [r7, #32]
    4c24:	3b01      	subs	r3, #1
    4c26:	623b      	str	r3, [r7, #32]
    4c28:	f107 020c 	add.w	r2, r7, #12
    4c2c:	6a3b      	ldr	r3, [r7, #32]
    4c2e:	4413      	add	r3, r2
    4c30:	2230      	movs	r2, #48	; 0x30
    4c32:	701a      	strb	r2, [r3, #0]
    if (base==10 && sign){
    4c34:	78fb      	ldrb	r3, [r7, #3]
    4c36:	2b0a      	cmp	r3, #10
    4c38:	d10d      	bne.n	4c56 <print_int+0xba>
    4c3a:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4c3e:	2b00      	cmp	r3, #0
    4c40:	d009      	beq.n	4c56 <print_int+0xba>
        fmt[--idx]='-';
    4c42:	6a3b      	ldr	r3, [r7, #32]
    4c44:	3b01      	subs	r3, #1
    4c46:	623b      	str	r3, [r7, #32]
    4c48:	f107 020c 	add.w	r2, r7, #12
    4c4c:	6a3b      	ldr	r3, [r7, #32]
    4c4e:	4413      	add	r3, r2
    4c50:	222d      	movs	r2, #45	; 0x2d
    4c52:	701a      	strb	r2, [r3, #0]
    4c54:	e00b      	b.n	4c6e <print_int+0xd2>
    }else if (base==16){
    4c56:	78fb      	ldrb	r3, [r7, #3]
    4c58:	2b10      	cmp	r3, #16
    4c5a:	d108      	bne.n	4c6e <print_int+0xd2>
        fmt[--idx]='$';
    4c5c:	6a3b      	ldr	r3, [r7, #32]
    4c5e:	3b01      	subs	r3, #1
    4c60:	623b      	str	r3, [r7, #32]
    4c62:	f107 020c 	add.w	r2, r7, #12
    4c66:	6a3b      	ldr	r3, [r7, #32]
    4c68:	4413      	add	r3, r2
    4c6a:	2224      	movs	r2, #36	; 0x24
    4c6c:	701a      	strb	r2, [r3, #0]
    }
    print(&fmt[idx]);
    4c6e:	f107 020c 	add.w	r2, r7, #12
    4c72:	6a3b      	ldr	r3, [r7, #32]
    4c74:	4413      	add	r3, r2
    4c76:	4618      	mov	r0, r3
    4c78:	f7ff ff60 	bl	4b3c <print>
}
    4c7c:	bf00      	nop
    4c7e:	3728      	adds	r7, #40	; 0x28
    4c80:	46bd      	mov	sp, r7
    4c82:	bd80      	pop	{r7, pc}

00004c84 <cursor_left>:

void cursor_left(){
    4c84:	b480      	push	{r7}
    4c86:	af00      	add	r7, sp, #0
	switch(font){
    4c88:	4b1a      	ldr	r3, [pc, #104]	; (4cf4 <cursor_left+0x70>)
    4c8a:	781b      	ldrb	r3, [r3, #0]
    4c8c:	2b01      	cmp	r3, #1
    4c8e:	d010      	beq.n	4cb2 <cursor_left+0x2e>
    4c90:	2b02      	cmp	r3, #2
    4c92:	d01a      	beq.n	4cca <cursor_left+0x46>
    4c94:	2b00      	cmp	r3, #0
    4c96:	d000      	beq.n	4c9a <cursor_left+0x16>
		break;
	case FONT_ASCII:
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
		break;	
	}
}
    4c98:	e028      	b.n	4cec <cursor_left+0x68>
		if (xpos-SHEX_WIDTH>=0) xpos-=SHEX_WIDTH;
    4c9a:	4b17      	ldr	r3, [pc, #92]	; (4cf8 <cursor_left+0x74>)
    4c9c:	781b      	ldrb	r3, [r3, #0]
    4c9e:	3b04      	subs	r3, #4
    4ca0:	2b00      	cmp	r3, #0
    4ca2:	db1e      	blt.n	4ce2 <cursor_left+0x5e>
    4ca4:	4b14      	ldr	r3, [pc, #80]	; (4cf8 <cursor_left+0x74>)
    4ca6:	781b      	ldrb	r3, [r3, #0]
    4ca8:	3b04      	subs	r3, #4
    4caa:	b2da      	uxtb	r2, r3
    4cac:	4b12      	ldr	r3, [pc, #72]	; (4cf8 <cursor_left+0x74>)
    4cae:	701a      	strb	r2, [r3, #0]
		break;
    4cb0:	e017      	b.n	4ce2 <cursor_left+0x5e>
		if (xpos-LHEX_WIDTH>=0) xpos-=LHEX_WIDTH;
    4cb2:	4b11      	ldr	r3, [pc, #68]	; (4cf8 <cursor_left+0x74>)
    4cb4:	781b      	ldrb	r3, [r3, #0]
    4cb6:	3b08      	subs	r3, #8
    4cb8:	2b00      	cmp	r3, #0
    4cba:	db14      	blt.n	4ce6 <cursor_left+0x62>
    4cbc:	4b0e      	ldr	r3, [pc, #56]	; (4cf8 <cursor_left+0x74>)
    4cbe:	781b      	ldrb	r3, [r3, #0]
    4cc0:	3b08      	subs	r3, #8
    4cc2:	b2da      	uxtb	r2, r3
    4cc4:	4b0c      	ldr	r3, [pc, #48]	; (4cf8 <cursor_left+0x74>)
    4cc6:	701a      	strb	r2, [r3, #0]
		break;
    4cc8:	e00d      	b.n	4ce6 <cursor_left+0x62>
		if (xpos-CHAR_WIDTH>=0) xpos-=CHAR_WIDTH;
    4cca:	4b0b      	ldr	r3, [pc, #44]	; (4cf8 <cursor_left+0x74>)
    4ccc:	781b      	ldrb	r3, [r3, #0]
    4cce:	3b06      	subs	r3, #6
    4cd0:	2b00      	cmp	r3, #0
    4cd2:	db0a      	blt.n	4cea <cursor_left+0x66>
    4cd4:	4b08      	ldr	r3, [pc, #32]	; (4cf8 <cursor_left+0x74>)
    4cd6:	781b      	ldrb	r3, [r3, #0]
    4cd8:	3b06      	subs	r3, #6
    4cda:	b2da      	uxtb	r2, r3
    4cdc:	4b06      	ldr	r3, [pc, #24]	; (4cf8 <cursor_left+0x74>)
    4cde:	701a      	strb	r2, [r3, #0]
		break;	
    4ce0:	e003      	b.n	4cea <cursor_left+0x66>
		break;
    4ce2:	bf00      	nop
    4ce4:	e002      	b.n	4cec <cursor_left+0x68>
		break;
    4ce6:	bf00      	nop
    4ce8:	e000      	b.n	4cec <cursor_left+0x68>
		break;	
    4cea:	bf00      	nop
}
    4cec:	bf00      	nop
    4cee:	46bd      	mov	sp, r7
    4cf0:	bc80      	pop	{r7}
    4cf2:	4770      	bx	lr
    4cf4:	200001fc 	.word	0x200001fc
    4cf8:	200006a5 	.word	0x200006a5

00004cfc <text_scroller>:

void text_scroller(const uint8_t *text, uint8_t speed){
    4cfc:	b580      	push	{r7, lr}
    4cfe:	b084      	sub	sp, #16
    4d00:	af00      	add	r7, sp, #0
    4d02:	6078      	str	r0, [r7, #4]
    4d04:	460b      	mov	r3, r1
    4d06:	70fb      	strb	r3, [r7, #3]
	uint8_t c,j;

	gfx_cls();
    4d08:	f7fd fae6 	bl	22d8 <gfx_cls>
	select_font(FONT_ASCII);
    4d0c:	2002      	movs	r0, #2
    4d0e:	f7ff fdb9 	bl	4884 <select_font>
	c=*text++;
    4d12:	687b      	ldr	r3, [r7, #4]
    4d14:	1c5a      	adds	r2, r3, #1
    4d16:	607a      	str	r2, [r7, #4]
    4d18:	781b      	ldrb	r3, [r3, #0]
    4d1a:	73fb      	strb	r3, [r7, #15]
	while (c){
    4d1c:	e035      	b.n	4d8a <text_scroller+0x8e>
		set_cursor(0,4*CHAR_HEIGHT);
    4d1e:	2120      	movs	r1, #32
    4d20:	2000      	movs	r0, #0
    4d22:	f7ff fedf 	bl	4ae4 <set_cursor>
		while (c && c!='\n'){
    4d26:	e00e      	b.n	4d46 <text_scroller+0x4a>
			put_char(c);
    4d28:	7bfb      	ldrb	r3, [r7, #15]
    4d2a:	4618      	mov	r0, r3
    4d2c:	f7ff fe4e 	bl	49cc <put_char>
			c=*text++;
    4d30:	687b      	ldr	r3, [r7, #4]
    4d32:	1c5a      	adds	r2, r3, #1
    4d34:	607a      	str	r2, [r7, #4]
    4d36:	781b      	ldrb	r3, [r3, #0]
    4d38:	73fb      	strb	r3, [r7, #15]
			if (btn_query_down(KEY_B)) {goto break_out;}
    4d3a:	2020      	movs	r0, #32
    4d3c:	f7fc fe84 	bl	1a48 <btn_query_down>
    4d40:	4603      	mov	r3, r0
    4d42:	2b00      	cmp	r3, #0
    4d44:	d13c      	bne.n	4dc0 <text_scroller+0xc4>
		while (c && c!='\n'){
    4d46:	7bfb      	ldrb	r3, [r7, #15]
    4d48:	2b00      	cmp	r3, #0
    4d4a:	d002      	beq.n	4d52 <text_scroller+0x56>
    4d4c:	7bfb      	ldrb	r3, [r7, #15]
    4d4e:	2b0a      	cmp	r3, #10
    4d50:	d1ea      	bne.n	4d28 <text_scroller+0x2c>
		}
		for (j=0;j<CHAR_HEIGHT;j++){
    4d52:	2300      	movs	r3, #0
    4d54:	73bb      	strb	r3, [r7, #14]
    4d56:	e010      	b.n	4d7a <text_scroller+0x7e>
			game_pause(speed);
    4d58:	78fb      	ldrb	r3, [r7, #3]
    4d5a:	b29b      	uxth	r3, r3
    4d5c:	4618      	mov	r0, r3
    4d5e:	f000 fbab 	bl	54b8 <game_pause>
			gfx_scroll_up(1);
    4d62:	2001      	movs	r0, #1
    4d64:	f7fd fb14 	bl	2390 <gfx_scroll_up>
			if (btn_query_down(KEY_B)) {goto break_out;}
    4d68:	2020      	movs	r0, #32
    4d6a:	f7fc fe6d 	bl	1a48 <btn_query_down>
    4d6e:	4603      	mov	r3, r0
    4d70:	2b00      	cmp	r3, #0
    4d72:	d127      	bne.n	4dc4 <text_scroller+0xc8>
		for (j=0;j<CHAR_HEIGHT;j++){
    4d74:	7bbb      	ldrb	r3, [r7, #14]
    4d76:	3301      	adds	r3, #1
    4d78:	73bb      	strb	r3, [r7, #14]
    4d7a:	7bbb      	ldrb	r3, [r7, #14]
    4d7c:	2b07      	cmp	r3, #7
    4d7e:	d9eb      	bls.n	4d58 <text_scroller+0x5c>
		}
		c=*text++;
    4d80:	687b      	ldr	r3, [r7, #4]
    4d82:	1c5a      	adds	r2, r3, #1
    4d84:	607a      	str	r2, [r7, #4]
    4d86:	781b      	ldrb	r3, [r3, #0]
    4d88:	73fb      	strb	r3, [r7, #15]
	while (c){
    4d8a:	7bfb      	ldrb	r3, [r7, #15]
    4d8c:	2b00      	cmp	r3, #0
    4d8e:	d1c6      	bne.n	4d1e <text_scroller+0x22>
	}//while
	for (c=0;c<4*CHAR_HEIGHT;c++){
    4d90:	2300      	movs	r3, #0
    4d92:	73fb      	strb	r3, [r7, #15]
    4d94:	e010      	b.n	4db8 <text_scroller+0xbc>
		game_pause(speed);
    4d96:	78fb      	ldrb	r3, [r7, #3]
    4d98:	b29b      	uxth	r3, r3
    4d9a:	4618      	mov	r0, r3
    4d9c:	f000 fb8c 	bl	54b8 <game_pause>
		gfx_scroll_up(1);
    4da0:	2001      	movs	r0, #1
    4da2:	f7fd faf5 	bl	2390 <gfx_scroll_up>
		if (btn_query_down(KEY_B)) { break;}
    4da6:	2020      	movs	r0, #32
    4da8:	f7fc fe4e 	bl	1a48 <btn_query_down>
    4dac:	4603      	mov	r3, r0
    4dae:	2b00      	cmp	r3, #0
    4db0:	d10a      	bne.n	4dc8 <text_scroller+0xcc>
	for (c=0;c<4*CHAR_HEIGHT;c++){
    4db2:	7bfb      	ldrb	r3, [r7, #15]
    4db4:	3301      	adds	r3, #1
    4db6:	73fb      	strb	r3, [r7, #15]
    4db8:	7bfb      	ldrb	r3, [r7, #15]
    4dba:	2b1f      	cmp	r3, #31
    4dbc:	d9eb      	bls.n	4d96 <text_scroller+0x9a>
    4dbe:	e004      	b.n	4dca <text_scroller+0xce>
			if (btn_query_down(KEY_B)) {goto break_out;}
    4dc0:	bf00      	nop
    4dc2:	e002      	b.n	4dca <text_scroller+0xce>
			if (btn_query_down(KEY_B)) {goto break_out;}
    4dc4:	bf00      	nop
    4dc6:	e000      	b.n	4dca <text_scroller+0xce>
		if (btn_query_down(KEY_B)) { break;}
    4dc8:	bf00      	nop
	}//for
break_out:	
	gfx_cls();
    4dca:	f7fd fa85 	bl	22d8 <gfx_cls>
	btn_wait_up(KEY_B); 
    4dce:	2020      	movs	r0, #32
    4dd0:	f7fc fe7e 	bl	1ad0 <btn_wait_up>
}
    4dd4:	bf00      	nop
    4dd6:	3710      	adds	r7, #16
    4dd8:	46bd      	mov	sp, r7
    4dda:	bd80      	pop	{r7, pc}

00004ddc <prompt_btn>:

void prompt_btn(){
    4ddc:	b580      	push	{r7, lr}
    4dde:	af00      	add	r7, sp, #0
	print("press button");
    4de0:	4802      	ldr	r0, [pc, #8]	; (4dec <prompt_btn+0x10>)
    4de2:	f7ff feab 	bl	4b3c <print>
}
    4de6:	bf00      	nop
    4de8:	bd80      	pop	{r7, pc}
    4dea:	bf00      	nop
    4dec:	00005ba4 	.word	0x00005ba4

00004df0 <clear_screen>:

void clear_screen(){
    4df0:	b580      	push	{r7, lr}
    4df2:	af00      	add	r7, sp, #0
	gfx_cls();
    4df4:	f7fd fa70 	bl	22d8 <gfx_cls>
	xpos=0;
    4df8:	4b03      	ldr	r3, [pc, #12]	; (4e08 <clear_screen+0x18>)
    4dfa:	2200      	movs	r2, #0
    4dfc:	701a      	strb	r2, [r3, #0]
	ypos=0;
    4dfe:	4b03      	ldr	r3, [pc, #12]	; (4e0c <clear_screen+0x1c>)
    4e00:	2200      	movs	r2, #0
    4e02:	701a      	strb	r2, [r3, #0]
}
    4e04:	bf00      	nop
    4e06:	bd80      	pop	{r7, pc}
    4e08:	200006a5 	.word	0x200006a5
    4e0c:	200006a6 	.word	0x200006a6

00004e10 <show_cursor>:

// affiche un curseur texte
void show_cursor(int show){
    4e10:	b580      	push	{r7, lr}
    4e12:	b084      	sub	sp, #16
    4e14:	af00      	add	r7, sp, #0
    4e16:	6078      	str	r0, [r7, #4]
	int x,y;
	uint8_t color=show?15:0;
    4e18:	687b      	ldr	r3, [r7, #4]
    4e1a:	2b00      	cmp	r3, #0
    4e1c:	d001      	beq.n	4e22 <show_cursor+0x12>
    4e1e:	230f      	movs	r3, #15
    4e20:	e000      	b.n	4e24 <show_cursor+0x14>
    4e22:	2300      	movs	r3, #0
    4e24:	72fb      	strb	r3, [r7, #11]
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    4e26:	4b0c      	ldr	r3, [pc, #48]	; (4e58 <show_cursor+0x48>)
    4e28:	781b      	ldrb	r3, [r3, #0]
    4e2a:	60fb      	str	r3, [r7, #12]
    4e2c:	e00a      	b.n	4e44 <show_cursor+0x34>
			gfx_plot(x,ypos+CHAR_HEIGHT-1,color);
    4e2e:	4b0b      	ldr	r3, [pc, #44]	; (4e5c <show_cursor+0x4c>)
    4e30:	781b      	ldrb	r3, [r3, #0]
    4e32:	3307      	adds	r3, #7
    4e34:	7afa      	ldrb	r2, [r7, #11]
    4e36:	4619      	mov	r1, r3
    4e38:	68f8      	ldr	r0, [r7, #12]
    4e3a:	f7fd f9ff 	bl	223c <gfx_plot>
		for (x=xpos;x<xpos+CHAR_WIDTH;x++){
    4e3e:	68fb      	ldr	r3, [r7, #12]
    4e40:	3301      	adds	r3, #1
    4e42:	60fb      	str	r3, [r7, #12]
    4e44:	4b04      	ldr	r3, [pc, #16]	; (4e58 <show_cursor+0x48>)
    4e46:	781b      	ldrb	r3, [r3, #0]
    4e48:	1d9a      	adds	r2, r3, #6
    4e4a:	68fb      	ldr	r3, [r7, #12]
    4e4c:	429a      	cmp	r2, r3
    4e4e:	dcee      	bgt.n	4e2e <show_cursor+0x1e>
		}
}
    4e50:	bf00      	nop
    4e52:	3710      	adds	r7, #16
    4e54:	46bd      	mov	sp, r7
    4e56:	bd80      	pop	{r7, pc}
    4e58:	200006a5 	.word	0x200006a5
    4e5c:	200006a6 	.word	0x200006a6

00004e60 <tvout_init>:

// use TIMER1 CH1  to generate video synchronization
// use TIMER1 CH2 for video_out delay
// use TIMER2 CH1 for chroma reference signal
// output PORT A8.
void tvout_init(){
    4e60:	b580      	push	{r7, lr}
    4e62:	af00      	add	r7, sp, #0
    *GPIOA_CNF_CRL=0x88883333; // video bits 0-3, 4-7 input pullup (buttons)
    4e64:	4b3e      	ldr	r3, [pc, #248]	; (4f60 <tvout_init+0x100>)
    4e66:	4a3f      	ldr	r2, [pc, #252]	; (4f64 <tvout_init+0x104>)
    4e68:	601a      	str	r2, [r3, #0]
    *GPIOA_CNF_CRH=0x84484444; // 12,15  input pullup (buttons)
    4e6a:	4b3f      	ldr	r3, [pc, #252]	; (4f68 <tvout_init+0x108>)
    4e6c:	4a3f      	ldr	r2, [pc, #252]	; (4f6c <tvout_init+0x10c>)
    4e6e:	601a      	str	r2, [r3, #0]
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    4e70:	220a      	movs	r2, #10
    4e72:	2108      	movs	r1, #8
    4e74:	483a      	ldr	r0, [pc, #232]	; (4f60 <tvout_init+0x100>)
    4e76:	f7fd f8cb 	bl	2010 <config_pin>
    PORTA->ODR=0;
    4e7a:	4b39      	ldr	r3, [pc, #228]	; (4f60 <tvout_init+0x100>)
    4e7c:	2200      	movs	r2, #0
    4e7e:	60da      	str	r2, [r3, #12]
    RCC->APB2ENR|=RCC_APB2ENR_TIM1EN;
    4e80:	4a3b      	ldr	r2, [pc, #236]	; (4f70 <tvout_init+0x110>)
    4e82:	4b3b      	ldr	r3, [pc, #236]	; (4f70 <tvout_init+0x110>)
    4e84:	699b      	ldr	r3, [r3, #24]
    4e86:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4e8a:	6193      	str	r3, [r2, #24]
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    4e8c:	4b39      	ldr	r3, [pc, #228]	; (4f74 <tvout_init+0x114>)
    4e8e:	2278      	movs	r2, #120	; 0x78
    4e90:	619a      	str	r2, [r3, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    4e92:	4b38      	ldr	r3, [pc, #224]	; (4f74 <tvout_init+0x114>)
    4e94:	2201      	movs	r2, #1
    4e96:	621a      	str	r2, [r3, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    4e98:	4b36      	ldr	r3, [pc, #216]	; (4f74 <tvout_init+0x114>)
    4e9a:	2284      	movs	r2, #132	; 0x84
    4e9c:	601a      	str	r2, [r3, #0]
    TMR1->ARR=HPERIOD;
    4e9e:	4b35      	ldr	r3, [pc, #212]	; (4f74 <tvout_init+0x114>)
    4ea0:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4ea4:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    4ea6:	4b33      	ldr	r3, [pc, #204]	; (4f74 <tvout_init+0x114>)
    4ea8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4eac:	635a      	str	r2, [r3, #52]	; 0x34
    TMR1->CCR2=BURST_START;
    4eae:	4b31      	ldr	r3, [pc, #196]	; (4f74 <tvout_init+0x114>)
    4eb0:	f240 1265 	movw	r2, #357	; 0x165
    4eb4:	639a      	str	r2, [r3, #56]	; 0x38
    TMR1->EGR|=TMR_EGR_UG;
    4eb6:	4a2f      	ldr	r2, [pc, #188]	; (4f74 <tvout_init+0x114>)
    4eb8:	4b2e      	ldr	r3, [pc, #184]	; (4f74 <tvout_init+0x114>)
    4eba:	695b      	ldr	r3, [r3, #20]
    4ebc:	f043 0301 	orr.w	r3, r3, #1
    4ec0:	6153      	str	r3, [r2, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    4ec2:	4b2c      	ldr	r3, [pc, #176]	; (4f74 <tvout_init+0x114>)
    4ec4:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4ec8:	645a      	str	r2, [r3, #68]	; 0x44
    TMR1->SR=0;
    4eca:	4b2a      	ldr	r3, [pc, #168]	; (4f74 <tvout_init+0x114>)
    4ecc:	2200      	movs	r2, #0
    4ece:	611a      	str	r2, [r3, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    4ed0:	4a28      	ldr	r2, [pc, #160]	; (4f74 <tvout_init+0x114>)
    4ed2:	4b28      	ldr	r3, [pc, #160]	; (4f74 <tvout_init+0x114>)
    4ed4:	68db      	ldr	r3, [r3, #12]
    4ed6:	f043 0301 	orr.w	r3, r3, #1
    4eda:	60d3      	str	r3, [r2, #12]
    set_int_priority(IRQ_TIM1_UP,0);
    4edc:	2100      	movs	r1, #0
    4ede:	2019      	movs	r0, #25
    4ee0:	f7fe fb26 	bl	3530 <set_int_priority>
    set_int_priority(IRQ_TIM1_CC,0);
    4ee4:	2100      	movs	r1, #0
    4ee6:	201b      	movs	r0, #27
    4ee8:	f7fe fb22 	bl	3530 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    4eec:	2019      	movs	r0, #25
    4eee:	f7fe fa65 	bl	33bc <enable_interrupt>
    enable_interrupt(IRQ_TIM1_CC);
    4ef2:	201b      	movs	r0, #27
    4ef4:	f7fe fa62 	bl	33bc <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    4ef8:	4a1e      	ldr	r2, [pc, #120]	; (4f74 <tvout_init+0x114>)
    4efa:	4b1e      	ldr	r3, [pc, #120]	; (4f74 <tvout_init+0x114>)
    4efc:	681b      	ldr	r3, [r3, #0]
    4efe:	f043 0301 	orr.w	r3, r3, #1
    4f02:	6013      	str	r3, [r2, #0]
    // chroma signal generation
    config_pin(PORTB,0,OUTPUT_ALT_PP_SLOW); // TIMER3 CH3
    4f04:	220a      	movs	r2, #10
    4f06:	2100      	movs	r1, #0
    4f08:	481b      	ldr	r0, [pc, #108]	; (4f78 <tvout_init+0x118>)
    4f0a:	f7fd f881 	bl	2010 <config_pin>
	RCC->APB1ENR|=RCC_APB1ENR_TIM3EN;
    4f0e:	4a18      	ldr	r2, [pc, #96]	; (4f70 <tvout_init+0x110>)
    4f10:	4b17      	ldr	r3, [pc, #92]	; (4f70 <tvout_init+0x110>)
    4f12:	69db      	ldr	r3, [r3, #28]
    4f14:	f043 0302 	orr.w	r3, r3, #2
    4f18:	61d3      	str	r3, [r2, #28]
    TMR3->CCMR2=(7<<TMR_CCMR2_OC3M_POS)|TMR_CCMR2_OC3PE;
    4f1a:	4b18      	ldr	r3, [pc, #96]	; (4f7c <tvout_init+0x11c>)
    4f1c:	2278      	movs	r2, #120	; 0x78
    4f1e:	61da      	str	r2, [r3, #28]
    TMR3->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    4f20:	4b16      	ldr	r3, [pc, #88]	; (4f7c <tvout_init+0x11c>)
    4f22:	2284      	movs	r2, #132	; 0x84
    4f24:	601a      	str	r2, [r3, #0]
    TMR3->ARR=19; 
    4f26:	4b15      	ldr	r3, [pc, #84]	; (4f7c <tvout_init+0x11c>)
    4f28:	2213      	movs	r2, #19
    4f2a:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR3->CCR3=10;
    4f2c:	4b13      	ldr	r3, [pc, #76]	; (4f7c <tvout_init+0x11c>)
    4f2e:	220a      	movs	r2, #10
    4f30:	63da      	str	r2, [r3, #60]	; 0x3c
    TMR3->BDTR|=TMR_BDTR_MOE;
    4f32:	4a12      	ldr	r2, [pc, #72]	; (4f7c <tvout_init+0x11c>)
    4f34:	4b11      	ldr	r3, [pc, #68]	; (4f7c <tvout_init+0x11c>)
    4f36:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4f38:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4f3c:	6453      	str	r3, [r2, #68]	; 0x44
    TMR3->EGR|=TMR_EGR_UG;
    4f3e:	4a0f      	ldr	r2, [pc, #60]	; (4f7c <tvout_init+0x11c>)
    4f40:	4b0e      	ldr	r3, [pc, #56]	; (4f7c <tvout_init+0x11c>)
    4f42:	695b      	ldr	r3, [r3, #20]
    4f44:	f043 0301 	orr.w	r3, r3, #1
    4f48:	6153      	str	r3, [r2, #20]
    TMR3->SR=0;
    4f4a:	4b0c      	ldr	r3, [pc, #48]	; (4f7c <tvout_init+0x11c>)
    4f4c:	2200      	movs	r2, #0
    4f4e:	611a      	str	r2, [r3, #16]
    TMR3->CR1|=TMR_CR1_CEN; 
    4f50:	4a0a      	ldr	r2, [pc, #40]	; (4f7c <tvout_init+0x11c>)
    4f52:	4b0a      	ldr	r3, [pc, #40]	; (4f7c <tvout_init+0x11c>)
    4f54:	681b      	ldr	r3, [r3, #0]
    4f56:	f043 0301 	orr.w	r3, r3, #1
    4f5a:	6013      	str	r3, [r2, #0]
}
    4f5c:	bf00      	nop
    4f5e:	bd80      	pop	{r7, pc}
    4f60:	40010800 	.word	0x40010800
    4f64:	88883333 	.word	0x88883333
    4f68:	40010804 	.word	0x40010804
    4f6c:	84484444 	.word	0x84484444
    4f70:	40021000 	.word	0x40021000
    4f74:	40012c00 	.word	0x40012c00
    4f78:	40010c00 	.word	0x40010c00
    4f7c:	40000400 	.word	0x40000400

00004f80 <TV_OUT_handler>:
                              "mov r2,%0\n"\
                              "1: subs r2,#1\n\t"\
                              "bne.n 1b\n\t"\
                              ::"r" (dly):"r2")

void __attribute__((__interrupt__,optimize("O1")))TV_OUT_handler(){
    4f80:	4668      	mov	r0, sp
    4f82:	f020 0107 	bic.w	r1, r0, #7
    4f86:	468d      	mov	sp, r1
    4f88:	b471      	push	{r0, r4, r5, r6}
    register uint8_t *video_data;
    register uint16_t *video_port;
    register uint32_t i;
//    if (video_mode<VM_SCHIP){
        TMR3->CCER|=TMR_CCER_CC3E;
    4f8a:	4a31      	ldr	r2, [pc, #196]	; (5050 <TV_OUT_handler+0xd0>)
    4f8c:	6a13      	ldr	r3, [r2, #32]
    4f8e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4f92:	6213      	str	r3, [r2, #32]
        while(TMR1->CNT<BURST_END); //(uint16_t)(8.0e-6*(float)FCLK));
    4f94:	492f      	ldr	r1, [pc, #188]	; (5054 <TV_OUT_handler+0xd4>)
    4f96:	f240 2209 	movw	r2, #521	; 0x209
    4f9a:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4f9c:	4293      	cmp	r3, r2
    4f9e:	d9fc      	bls.n	4f9a <TV_OUT_handler+0x1a>
        //_wait_tmr1_cnt();
        TMR3->CCER&=~TMR_CCER_CC3E;
    4fa0:	4a2b      	ldr	r2, [pc, #172]	; (5050 <TV_OUT_handler+0xd0>)
    4fa2:	6a13      	ldr	r3, [r2, #32]
    4fa4:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4fa8:	6213      	str	r3, [r2, #32]
//    }
    video_port=(uint16_t*)&PORTA->ODR;
    video_data=&video_buffer[slice/lines_repeat*byte_per_row];
    4faa:	4b2b      	ldr	r3, [pc, #172]	; (5058 <TV_OUT_handler+0xd8>)
    4fac:	881d      	ldrh	r5, [r3, #0]
    4fae:	b2ad      	uxth	r5, r5
    4fb0:	4b2a      	ldr	r3, [pc, #168]	; (505c <TV_OUT_handler+0xdc>)
    4fb2:	7818      	ldrb	r0, [r3, #0]
    4fb4:	4b2a      	ldr	r3, [pc, #168]	; (5060 <TV_OUT_handler+0xe0>)
    4fb6:	781b      	ldrb	r3, [r3, #0]
    4fb8:	fb95 f5f3 	sdiv	r5, r5, r3
    4fbc:	4b29      	ldr	r3, [pc, #164]	; (5064 <TV_OUT_handler+0xe4>)
    4fbe:	fb00 3505 	mla	r5, r0, r5, r3
    while(TMR1->CNT<left_margin);
    4fc2:	4b29      	ldr	r3, [pc, #164]	; (5068 <TV_OUT_handler+0xe8>)
    4fc4:	881a      	ldrh	r2, [r3, #0]
    4fc6:	4923      	ldr	r1, [pc, #140]	; (5054 <TV_OUT_handler+0xd4>)
    4fc8:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4fca:	4293      	cmp	r3, r2
    4fcc:	d3fc      	bcc.n	4fc8 <TV_OUT_handler+0x48>
    _jitter_cancel();
    4fce:	4b27      	ldr	r3, [pc, #156]	; (506c <TV_OUT_handler+0xec>)
    4fd0:	461a      	mov	r2, r3
    4fd2:	6812      	ldr	r2, [r2, #0]
    4fd4:	f002 0207 	and.w	r2, r2, #7
    4fd8:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4fdc:	4497      	add	pc, r2
    4fde:	bf00      	nop
    4fe0:	bf00      	nop
    4fe2:	bf00      	nop
    4fe4:	bf00      	nop
    4fe6:	bf00      	nop
    4fe8:	bf00      	nop
    4fea:	bf00      	nop
    4fec:	bf00      	nop
    TMR3->CCER|=chroma_cfg;
    4fee:	4a18      	ldr	r2, [pc, #96]	; (5050 <TV_OUT_handler+0xd0>)
    4ff0:	6a11      	ldr	r1, [r2, #32]
    4ff2:	4b1f      	ldr	r3, [pc, #124]	; (5070 <TV_OUT_handler+0xf0>)
    4ff4:	881b      	ldrh	r3, [r3, #0]
    4ff6:	430b      	orrs	r3, r1
    4ff8:	6213      	str	r3, [r2, #32]
    for (i=0;i<byte_per_row;i++){
    4ffa:	b1b8      	cbz	r0, 502c <TV_OUT_handler+0xac>
    4ffc:	462b      	mov	r3, r5
        *video_port=(*video_data)>>4;
    4ffe:	481d      	ldr	r0, [pc, #116]	; (5074 <TV_OUT_handler+0xf4>)
        _pixel_delay(pixel_delay);
    5000:	491d      	ldr	r1, [pc, #116]	; (5078 <TV_OUT_handler+0xf8>)
    for (i=0;i<byte_per_row;i++){
    5002:	4e16      	ldr	r6, [pc, #88]	; (505c <TV_OUT_handler+0xdc>)
        *video_port=(*video_data)>>4;
    5004:	781a      	ldrb	r2, [r3, #0]
    5006:	0912      	lsrs	r2, r2, #4
    5008:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    500a:	780c      	ldrb	r4, [r1, #0]
    500c:	4622      	mov	r2, r4
    500e:	3a01      	subs	r2, #1
    5010:	d1fd      	bne.n	500e <TV_OUT_handler+0x8e>
        *video_port=(*video_data++)&0xf;
    5012:	f813 2b01 	ldrb.w	r2, [r3], #1
    5016:	f002 020f 	and.w	r2, r2, #15
    501a:	8002      	strh	r2, [r0, #0]
        _pixel_delay(pixel_delay);
    501c:	780c      	ldrb	r4, [r1, #0]
    501e:	4622      	mov	r2, r4
    5020:	3a01      	subs	r2, #1
    5022:	d1fd      	bne.n	5020 <TV_OUT_handler+0xa0>
    for (i=0;i<byte_per_row;i++){
    5024:	1b5c      	subs	r4, r3, r5
    5026:	7832      	ldrb	r2, [r6, #0]
    5028:	4294      	cmp	r4, r2
    502a:	d3eb      	bcc.n	5004 <TV_OUT_handler+0x84>
    }
    PORTA->ODR=0;
    502c:	2200      	movs	r2, #0
    502e:	4b13      	ldr	r3, [pc, #76]	; (507c <TV_OUT_handler+0xfc>)
    5030:	60da      	str	r2, [r3, #12]
    TMR3->CCER&=~(TMR_CCER_CC3E);
    5032:	4a07      	ldr	r2, [pc, #28]	; (5050 <TV_OUT_handler+0xd0>)
    5034:	6a13      	ldr	r3, [r2, #32]
    5036:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    503a:	6213      	str	r3, [r2, #32]
    TMR1->SR&=~TMR_SR_CC2IF;
    503c:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    5040:	6913      	ldr	r3, [r2, #16]
    5042:	f023 0304 	bic.w	r3, r3, #4
    5046:	6113      	str	r3, [r2, #16]
}
    5048:	bc71      	pop	{r0, r4, r5, r6}
    504a:	4685      	mov	sp, r0
    504c:	4770      	bx	lr
    504e:	bf00      	nop
    5050:	40000400 	.word	0x40000400
    5054:	40012c00 	.word	0x40012c00
    5058:	200006ac 	.word	0x200006ac
    505c:	20000208 	.word	0x20000208
    5060:	20000209 	.word	0x20000209
    5064:	200026e0 	.word	0x200026e0
    5068:	20000206 	.word	0x20000206
    506c:	40012c24 	.word	0x40012c24
    5070:	2000020e 	.word	0x2000020e
    5074:	4001080c 	.word	0x4001080c
    5078:	2000020a 	.word	0x2000020a
    507c:	40010800 	.word	0x40010800

00005080 <TV_SYNC_handler>:

void __attribute__((__interrupt__,optimize("O1"))) TV_SYNC_handler(){
    5080:	4668      	mov	r0, sp
    5082:	f020 0107 	bic.w	r1, r0, #7
    5086:	468d      	mov	sp, r1
    5088:	b501      	push	{r0, lr}
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    508a:	4a84      	ldr	r2, [pc, #528]	; (529c <TV_SYNC_handler+0x21c>)
    508c:	8813      	ldrh	r3, [r2, #0]
    508e:	3301      	adds	r3, #1
    5090:	b29b      	uxth	r3, r3
    5092:	8013      	strh	r3, [r2, #0]
    ntsc_ticks++;
    5094:	4a82      	ldr	r2, [pc, #520]	; (52a0 <TV_SYNC_handler+0x220>)
    5096:	6813      	ldr	r3, [r2, #0]
    5098:	3301      	adds	r3, #1
    509a:	6013      	str	r3, [r2, #0]
    switch (task){
    509c:	4b81      	ldr	r3, [pc, #516]	; (52a4 <TV_SYNC_handler+0x224>)
    509e:	881b      	ldrh	r3, [r3, #0]
    50a0:	b29b      	uxth	r3, r3
    50a2:	2b09      	cmp	r3, #9
    50a4:	f200 8088 	bhi.w	51b8 <TV_SYNC_handler+0x138>
    50a8:	e8df f013 	tbh	[pc, r3, lsl #1]
    50ac:	002c000a 	.word	0x002c000a
    50b0:	006e004c 	.word	0x006e004c
    50b4:	0097008f 	.word	0x0097008f
    50b8:	00bb00ac 	.word	0x00bb00ac
    50bc:	010c00da 	.word	0x010c00da
    case PRE_SYNC:
        if (!slice){
    50c0:	4b79      	ldr	r3, [pc, #484]	; (52a8 <TV_SYNC_handler+0x228>)
    50c2:	881b      	ldrh	r3, [r3, #0]
    50c4:	b29b      	uxth	r3, r3
    50c6:	b18b      	cbz	r3, 50ec <TV_SYNC_handler+0x6c>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
            TMR1->CCR1=SERRATION;
            slice++;
        }else{
            next_task(6);
    50c8:	4a77      	ldr	r2, [pc, #476]	; (52a8 <TV_SYNC_handler+0x228>)
    50ca:	8813      	ldrh	r3, [r2, #0]
    50cc:	3301      	adds	r3, #1
    50ce:	b29b      	uxth	r3, r3
    50d0:	8013      	strh	r3, [r2, #0]
    50d2:	8813      	ldrh	r3, [r2, #0]
    50d4:	b29b      	uxth	r3, r3
    50d6:	2b06      	cmp	r3, #6
    50d8:	d16e      	bne.n	51b8 <TV_SYNC_handler+0x138>
    50da:	2200      	movs	r2, #0
    50dc:	4b72      	ldr	r3, [pc, #456]	; (52a8 <TV_SYNC_handler+0x228>)
    50de:	801a      	strh	r2, [r3, #0]
    50e0:	4a70      	ldr	r2, [pc, #448]	; (52a4 <TV_SYNC_handler+0x224>)
    50e2:	8813      	ldrh	r3, [r2, #0]
    50e4:	3301      	adds	r3, #1
    50e6:	b29b      	uxth	r3, r3
    50e8:	8013      	strh	r3, [r2, #0]
    50ea:	e065      	b.n	51b8 <TV_SYNC_handler+0x138>
            TMR1->ARR=SYNC_LINE;
    50ec:	4b6f      	ldr	r3, [pc, #444]	; (52ac <TV_SYNC_handler+0x22c>)
    50ee:	f640 02e2 	movw	r2, #2274	; 0x8e2
    50f2:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    50f4:	22a4      	movs	r2, #164	; 0xa4
    50f6:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    50f8:	4a6b      	ldr	r2, [pc, #428]	; (52a8 <TV_SYNC_handler+0x228>)
    50fa:	8813      	ldrh	r3, [r2, #0]
    50fc:	3301      	adds	r3, #1
    50fe:	b29b      	uxth	r3, r3
    5100:	8013      	strh	r3, [r2, #0]
    5102:	e059      	b.n	51b8 <TV_SYNC_handler+0x138>
        }
        break;
    case VSYNC:
        if (!slice){
    5104:	4b68      	ldr	r3, [pc, #416]	; (52a8 <TV_SYNC_handler+0x228>)
    5106:	881b      	ldrh	r3, [r3, #0]
    5108:	b29b      	uxth	r3, r3
    510a:	b18b      	cbz	r3, 5130 <TV_SYNC_handler+0xb0>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
            slice++;
        }else{
            next_task(6);
    510c:	4a66      	ldr	r2, [pc, #408]	; (52a8 <TV_SYNC_handler+0x228>)
    510e:	8813      	ldrh	r3, [r2, #0]
    5110:	3301      	adds	r3, #1
    5112:	b29b      	uxth	r3, r3
    5114:	8013      	strh	r3, [r2, #0]
    5116:	8813      	ldrh	r3, [r2, #0]
    5118:	b29b      	uxth	r3, r3
    511a:	2b06      	cmp	r3, #6
    511c:	d14c      	bne.n	51b8 <TV_SYNC_handler+0x138>
    511e:	2200      	movs	r2, #0
    5120:	4b61      	ldr	r3, [pc, #388]	; (52a8 <TV_SYNC_handler+0x228>)
    5122:	801a      	strh	r2, [r3, #0]
    5124:	4a5f      	ldr	r2, [pc, #380]	; (52a4 <TV_SYNC_handler+0x224>)
    5126:	8813      	ldrh	r3, [r2, #0]
    5128:	3301      	adds	r3, #1
    512a:	b29b      	uxth	r3, r3
    512c:	8013      	strh	r3, [r2, #0]
    512e:	e043      	b.n	51b8 <TV_SYNC_handler+0x138>
            TMR1->CCR1=SYNC_PULSE;
    5130:	f240 7294 	movw	r2, #1940	; 0x794
    5134:	4b5d      	ldr	r3, [pc, #372]	; (52ac <TV_SYNC_handler+0x22c>)
    5136:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    5138:	4a5b      	ldr	r2, [pc, #364]	; (52a8 <TV_SYNC_handler+0x228>)
    513a:	8813      	ldrh	r3, [r2, #0]
    513c:	3301      	adds	r3, #1
    513e:	b29b      	uxth	r3, r3
    5140:	8013      	strh	r3, [r2, #0]
    5142:	e039      	b.n	51b8 <TV_SYNC_handler+0x138>
        }
        break;
    case POST_SYNC:
        if (!slice){
    5144:	4b58      	ldr	r3, [pc, #352]	; (52a8 <TV_SYNC_handler+0x228>)
    5146:	881b      	ldrh	r3, [r3, #0]
    5148:	b29b      	uxth	r3, r3
    514a:	b153      	cbz	r3, 5162 <TV_SYNC_handler+0xe2>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
            slice++;
            break;
        }else if (slice==6){
    514c:	4b56      	ldr	r3, [pc, #344]	; (52a8 <TV_SYNC_handler+0x228>)
    514e:	881b      	ldrh	r3, [r3, #0]
    5150:	b29b      	uxth	r3, r3
    5152:	2b06      	cmp	r3, #6
    5154:	d00e      	beq.n	5174 <TV_SYNC_handler+0xf4>
            task++;
            if (!(flags&F_EVEN)){
                break;
            }
        }else{
            slice++;
    5156:	4a54      	ldr	r2, [pc, #336]	; (52a8 <TV_SYNC_handler+0x228>)
    5158:	8813      	ldrh	r3, [r2, #0]
    515a:	3301      	adds	r3, #1
    515c:	b29b      	uxth	r3, r3
    515e:	8013      	strh	r3, [r2, #0]
            break;
    5160:	e02a      	b.n	51b8 <TV_SYNC_handler+0x138>
            TMR1->CCR1=SERRATION;    
    5162:	22a4      	movs	r2, #164	; 0xa4
    5164:	4b51      	ldr	r3, [pc, #324]	; (52ac <TV_SYNC_handler+0x22c>)
    5166:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    5168:	4a4f      	ldr	r2, [pc, #316]	; (52a8 <TV_SYNC_handler+0x228>)
    516a:	8813      	ldrh	r3, [r2, #0]
    516c:	3301      	adds	r3, #1
    516e:	b29b      	uxth	r3, r3
    5170:	8013      	strh	r3, [r2, #0]
            break;
    5172:	e021      	b.n	51b8 <TV_SYNC_handler+0x138>
            task++;
    5174:	4a4b      	ldr	r2, [pc, #300]	; (52a4 <TV_SYNC_handler+0x224>)
    5176:	8813      	ldrh	r3, [r2, #0]
    5178:	3301      	adds	r3, #1
    517a:	b29b      	uxth	r3, r3
    517c:	8013      	strh	r3, [r2, #0]
            if (!(flags&F_EVEN)){
    517e:	4b4c      	ldr	r3, [pc, #304]	; (52b0 <TV_SYNC_handler+0x230>)
    5180:	881b      	ldrh	r3, [r3, #0]
    5182:	f013 0f01 	tst.w	r3, #1
    5186:	d017      	beq.n	51b8 <TV_SYNC_handler+0x138>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    5188:	4b48      	ldr	r3, [pc, #288]	; (52ac <TV_SYNC_handler+0x22c>)
    518a:	f241 12c5 	movw	r2, #4549	; 0x11c5
    518e:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    5190:	f44f 72a8 	mov.w	r2, #336	; 0x150
    5194:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC;
    5196:	4a46      	ldr	r2, [pc, #280]	; (52b0 <TV_SYNC_handler+0x230>)
    5198:	8813      	ldrh	r3, [r2, #0]
    519a:	f023 0302 	bic.w	r3, r3, #2
    519e:	041b      	lsls	r3, r3, #16
    51a0:	0c1b      	lsrs	r3, r3, #16
    51a2:	8013      	strh	r3, [r2, #0]
        scan_line>>=2;
    51a4:	4a3d      	ldr	r2, [pc, #244]	; (529c <TV_SYNC_handler+0x21c>)
    51a6:	8813      	ldrh	r3, [r2, #0]
    51a8:	f3c3 038d 	ubfx	r3, r3, #2, #14
    51ac:	8013      	strh	r3, [r2, #0]
        task++;
    51ae:	4a3d      	ldr	r2, [pc, #244]	; (52a4 <TV_SYNC_handler+0x224>)
    51b0:	8813      	ldrh	r3, [r2, #0]
    51b2:	3301      	adds	r3, #1
    51b4:	b29b      	uxth	r3, r3
    51b6:	8013      	strh	r3, [r2, #0]
            slice=0;
            task=0;
        }
        break;
    }//switch task
    TMR1->SR&=~TMR_SR_UIF;
    51b8:	4a3c      	ldr	r2, [pc, #240]	; (52ac <TV_SYNC_handler+0x22c>)
    51ba:	6913      	ldr	r3, [r2, #16]
    51bc:	f023 0301 	bic.w	r3, r3, #1
    51c0:	6113      	str	r3, [r2, #16]
}
    51c2:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    51c6:	4685      	mov	sp, r0
    51c8:	4770      	bx	lr
        read_gamepad();
    51ca:	f7fc fc21 	bl	1a10 <read_gamepad>
        task++;
    51ce:	4a35      	ldr	r2, [pc, #212]	; (52a4 <TV_SYNC_handler+0x224>)
    51d0:	8813      	ldrh	r3, [r2, #0]
    51d2:	3301      	adds	r3, #1
    51d4:	b29b      	uxth	r3, r3
    51d6:	8013      	strh	r3, [r2, #0]
        break;    
    51d8:	e7ee      	b.n	51b8 <TV_SYNC_handler+0x138>
        if (sound_timer){
    51da:	4b36      	ldr	r3, [pc, #216]	; (52b4 <TV_SYNC_handler+0x234>)
    51dc:	881b      	ldrh	r3, [r3, #0]
    51de:	b29b      	uxth	r3, r3
    51e0:	b13b      	cbz	r3, 51f2 <TV_SYNC_handler+0x172>
            sound_timer--;
    51e2:	4a34      	ldr	r2, [pc, #208]	; (52b4 <TV_SYNC_handler+0x234>)
    51e4:	8813      	ldrh	r3, [r2, #0]
    51e6:	3b01      	subs	r3, #1
    51e8:	b29b      	uxth	r3, r3
    51ea:	8013      	strh	r3, [r2, #0]
            if (!sound_timer){
    51ec:	8813      	ldrh	r3, [r2, #0]
    51ee:	b29b      	uxth	r3, r3
    51f0:	b12b      	cbz	r3, 51fe <TV_SYNC_handler+0x17e>
        task++;
    51f2:	4a2c      	ldr	r2, [pc, #176]	; (52a4 <TV_SYNC_handler+0x224>)
    51f4:	8813      	ldrh	r3, [r2, #0]
    51f6:	3301      	adds	r3, #1
    51f8:	b29b      	uxth	r3, r3
    51fa:	8013      	strh	r3, [r2, #0]
        break;    
    51fc:	e7dc      	b.n	51b8 <TV_SYNC_handler+0x138>
                sound_stop();
    51fe:	f7ff f8dd 	bl	43bc <sound_stop>
    5202:	e7f6      	b.n	51f2 <TV_SYNC_handler+0x172>
        if (game_timer){
    5204:	4b2c      	ldr	r3, [pc, #176]	; (52b8 <TV_SYNC_handler+0x238>)
    5206:	881b      	ldrh	r3, [r3, #0]
    5208:	b29b      	uxth	r3, r3
    520a:	b123      	cbz	r3, 5216 <TV_SYNC_handler+0x196>
            game_timer--;
    520c:	4a2a      	ldr	r2, [pc, #168]	; (52b8 <TV_SYNC_handler+0x238>)
    520e:	8813      	ldrh	r3, [r2, #0]
    5210:	3b01      	subs	r3, #1
    5212:	b29b      	uxth	r3, r3
    5214:	8013      	strh	r3, [r2, #0]
        task++;
    5216:	4a23      	ldr	r2, [pc, #140]	; (52a4 <TV_SYNC_handler+0x224>)
    5218:	8813      	ldrh	r3, [r2, #0]
    521a:	3301      	adds	r3, #1
    521c:	b29b      	uxth	r3, r3
    521e:	8013      	strh	r3, [r2, #0]
        break;
    5220:	e7ca      	b.n	51b8 <TV_SYNC_handler+0x138>
        if (scan_line==video_start){
    5222:	4b1e      	ldr	r3, [pc, #120]	; (529c <TV_SYNC_handler+0x21c>)
    5224:	881b      	ldrh	r3, [r3, #0]
    5226:	b29b      	uxth	r3, r3
    5228:	4a24      	ldr	r2, [pc, #144]	; (52bc <TV_SYNC_handler+0x23c>)
    522a:	8812      	ldrh	r2, [r2, #0]
    522c:	429a      	cmp	r2, r3
    522e:	d1c3      	bne.n	51b8 <TV_SYNC_handler+0x138>
            TMR1->SR&=~TMR_SR_CC2IF;
    5230:	4b1e      	ldr	r3, [pc, #120]	; (52ac <TV_SYNC_handler+0x22c>)
    5232:	691a      	ldr	r2, [r3, #16]
    5234:	f022 0204 	bic.w	r2, r2, #4
    5238:	611a      	str	r2, [r3, #16]
            TMR1->DIER|=TMR_DIER_CC2IE;
    523a:	68da      	ldr	r2, [r3, #12]
    523c:	f042 0204 	orr.w	r2, r2, #4
    5240:	60da      	str	r2, [r3, #12]
            flags |= F_VIDEO;
    5242:	4a1b      	ldr	r2, [pc, #108]	; (52b0 <TV_SYNC_handler+0x230>)
    5244:	8813      	ldrh	r3, [r2, #0]
    5246:	b29b      	uxth	r3, r3
    5248:	f043 0304 	orr.w	r3, r3, #4
    524c:	8013      	strh	r3, [r2, #0]
            task++;
    524e:	4a15      	ldr	r2, [pc, #84]	; (52a4 <TV_SYNC_handler+0x224>)
    5250:	8813      	ldrh	r3, [r2, #0]
    5252:	3301      	adds	r3, #1
    5254:	b29b      	uxth	r3, r3
    5256:	8013      	strh	r3, [r2, #0]
            slice=0;
    5258:	2200      	movs	r2, #0
    525a:	4b13      	ldr	r3, [pc, #76]	; (52a8 <TV_SYNC_handler+0x228>)
    525c:	801a      	strh	r2, [r3, #0]
    525e:	e7ab      	b.n	51b8 <TV_SYNC_handler+0x138>
        slice++;
    5260:	4a11      	ldr	r2, [pc, #68]	; (52a8 <TV_SYNC_handler+0x228>)
    5262:	8813      	ldrh	r3, [r2, #0]
    5264:	3301      	adds	r3, #1
    5266:	b29b      	uxth	r3, r3
    5268:	8013      	strh	r3, [r2, #0]
        if (scan_line==video_end){
    526a:	4b0c      	ldr	r3, [pc, #48]	; (529c <TV_SYNC_handler+0x21c>)
    526c:	881b      	ldrh	r3, [r3, #0]
    526e:	b29b      	uxth	r3, r3
    5270:	4a13      	ldr	r2, [pc, #76]	; (52c0 <TV_SYNC_handler+0x240>)
    5272:	8812      	ldrh	r2, [r2, #0]
    5274:	429a      	cmp	r2, r3
    5276:	d19f      	bne.n	51b8 <TV_SYNC_handler+0x138>
            TMR1->DIER&=~TMR_DIER_CC2IE;
    5278:	4a0c      	ldr	r2, [pc, #48]	; (52ac <TV_SYNC_handler+0x22c>)
    527a:	68d3      	ldr	r3, [r2, #12]
    527c:	f023 0304 	bic.w	r3, r3, #4
    5280:	60d3      	str	r3, [r2, #12]
            flags &=~F_VIDEO;
    5282:	4a0b      	ldr	r2, [pc, #44]	; (52b0 <TV_SYNC_handler+0x230>)
    5284:	8813      	ldrh	r3, [r2, #0]
    5286:	f023 0304 	bic.w	r3, r3, #4
    528a:	041b      	lsls	r3, r3, #16
    528c:	0c1b      	lsrs	r3, r3, #16
    528e:	8013      	strh	r3, [r2, #0]
            task++;
    5290:	4a04      	ldr	r2, [pc, #16]	; (52a4 <TV_SYNC_handler+0x224>)
    5292:	8813      	ldrh	r3, [r2, #0]
    5294:	3301      	adds	r3, #1
    5296:	b29b      	uxth	r3, r3
    5298:	8013      	strh	r3, [r2, #0]
    529a:	e78d      	b.n	51b8 <TV_SYNC_handler+0x138>
    529c:	200006ae 	.word	0x200006ae
    52a0:	20004e44 	.word	0x20004e44
    52a4:	200006a8 	.word	0x200006a8
    52a8:	200006ac 	.word	0x200006ac
    52ac:	40012c00 	.word	0x40012c00
    52b0:	200006aa 	.word	0x200006aa
    52b4:	20004e48 	.word	0x20004e48
    52b8:	20004e40 	.word	0x20004e40
    52bc:	20000202 	.word	0x20000202
    52c0:	20000204 	.word	0x20000204
        if (scan_line==263){
    52c4:	4b11      	ldr	r3, [pc, #68]	; (530c <TV_SYNC_handler+0x28c>)
    52c6:	881b      	ldrh	r3, [r3, #0]
    52c8:	b29b      	uxth	r3, r3
    52ca:	f240 1207 	movw	r2, #263	; 0x107
    52ce:	4293      	cmp	r3, r2
    52d0:	f47f af72 	bne.w	51b8 <TV_SYNC_handler+0x138>
            if (flags&F_EVEN){ // half length
    52d4:	4b0e      	ldr	r3, [pc, #56]	; (5310 <TV_SYNC_handler+0x290>)
    52d6:	881b      	ldrh	r3, [r3, #0]
    52d8:	f013 0f01 	tst.w	r3, #1
    52dc:	d003      	beq.n	52e6 <TV_SYNC_handler+0x266>
                TMR1->ARR=SYNC_LINE;
    52de:	f640 02e2 	movw	r2, #2274	; 0x8e2
    52e2:	4b0c      	ldr	r3, [pc, #48]	; (5314 <TV_SYNC_handler+0x294>)
    52e4:	62da      	str	r2, [r3, #44]	; 0x2c
            flags^=F_EVEN;
    52e6:	4a0a      	ldr	r2, [pc, #40]	; (5310 <TV_SYNC_handler+0x290>)
    52e8:	8813      	ldrh	r3, [r2, #0]
    52ea:	b29b      	uxth	r3, r3
    52ec:	f083 0301 	eor.w	r3, r3, #1
    52f0:	8013      	strh	r3, [r2, #0]
            flags|=F_VSYNC;
    52f2:	8813      	ldrh	r3, [r2, #0]
    52f4:	b29b      	uxth	r3, r3
    52f6:	f043 0302 	orr.w	r3, r3, #2
    52fa:	8013      	strh	r3, [r2, #0]
            scan_line=0;
    52fc:	2300      	movs	r3, #0
    52fe:	4a03      	ldr	r2, [pc, #12]	; (530c <TV_SYNC_handler+0x28c>)
    5300:	8013      	strh	r3, [r2, #0]
            slice=0;
    5302:	4a05      	ldr	r2, [pc, #20]	; (5318 <TV_SYNC_handler+0x298>)
    5304:	8013      	strh	r3, [r2, #0]
            task=0;
    5306:	4a05      	ldr	r2, [pc, #20]	; (531c <TV_SYNC_handler+0x29c>)
    5308:	8013      	strh	r3, [r2, #0]
    530a:	e755      	b.n	51b8 <TV_SYNC_handler+0x138>
    530c:	200006ae 	.word	0x200006ae
    5310:	200006aa 	.word	0x200006aa
    5314:	40012c00 	.word	0x40012c00
    5318:	200006ac 	.word	0x200006ac
    531c:	200006a8 	.word	0x200006a8

00005320 <frame_sync>:

void frame_sync(){
    5320:	b480      	push	{r7}
    5322:	af00      	add	r7, sp, #0
    while (!(flags&F_VSYNC));
    5324:	bf00      	nop
    5326:	4b05      	ldr	r3, [pc, #20]	; (533c <frame_sync+0x1c>)
    5328:	881b      	ldrh	r3, [r3, #0]
    532a:	b29b      	uxth	r3, r3
    532c:	f003 0302 	and.w	r3, r3, #2
    5330:	2b00      	cmp	r3, #0
    5332:	d0f8      	beq.n	5326 <frame_sync+0x6>
}
    5334:	bf00      	nop
    5336:	46bd      	mov	sp, r7
    5338:	bc80      	pop	{r7}
    533a:	4770      	bx	lr
    533c:	200006aa 	.word	0x200006aa

00005340 <wait_sync_end>:

void wait_sync_end(){
    5340:	b480      	push	{r7}
    5342:	af00      	add	r7, sp, #0
    while (flags&F_VSYNC);
    5344:	bf00      	nop
    5346:	4b05      	ldr	r3, [pc, #20]	; (535c <wait_sync_end+0x1c>)
    5348:	881b      	ldrh	r3, [r3, #0]
    534a:	b29b      	uxth	r3, r3
    534c:	f003 0302 	and.w	r3, r3, #2
    5350:	2b00      	cmp	r3, #0
    5352:	d1f8      	bne.n	5346 <wait_sync_end+0x6>
}
    5354:	bf00      	nop
    5356:	46bd      	mov	sp, r7
    5358:	bc80      	pop	{r7}
    535a:	4770      	bx	lr
    535c:	200006aa 	.word	0x200006aa

00005360 <set_video_mode>:

void set_video_mode(vmode_t mode){
    5360:	b580      	push	{r7, lr}
    5362:	b082      	sub	sp, #8
    5364:	af00      	add	r7, sp, #0
    5366:	4603      	mov	r3, r0
    5368:	71fb      	strb	r3, [r7, #7]
    frame_sync();
    536a:	f7ff ffd9 	bl	5320 <frame_sync>
    video_mode=mode;
    536e:	4a3c      	ldr	r2, [pc, #240]	; (5460 <set_video_mode+0x100>)
    5370:	79fb      	ldrb	r3, [r7, #7]
    5372:	7013      	strb	r3, [r2, #0]
    if (mode==VM_BPCHIP) sprite_bpp=4;else sprite_bpp=1;
    5374:	79fb      	ldrb	r3, [r7, #7]
    5376:	2b00      	cmp	r3, #0
    5378:	d103      	bne.n	5382 <set_video_mode+0x22>
    537a:	4b3a      	ldr	r3, [pc, #232]	; (5464 <set_video_mode+0x104>)
    537c:	2204      	movs	r2, #4
    537e:	701a      	strb	r2, [r3, #0]
    5380:	e002      	b.n	5388 <set_video_mode+0x28>
    5382:	4b38      	ldr	r3, [pc, #224]	; (5464 <set_video_mode+0x104>)
    5384:	2201      	movs	r2, #1
    5386:	701a      	strb	r2, [r3, #0]
    video_start=video_params[mode].video_start;
    5388:	79fa      	ldrb	r2, [r7, #7]
    538a:	4937      	ldr	r1, [pc, #220]	; (5468 <set_video_mode+0x108>)
    538c:	4613      	mov	r3, r2
    538e:	00db      	lsls	r3, r3, #3
    5390:	4413      	add	r3, r2
    5392:	005b      	lsls	r3, r3, #1
    5394:	440b      	add	r3, r1
    5396:	3302      	adds	r3, #2
    5398:	881a      	ldrh	r2, [r3, #0]
    539a:	4b34      	ldr	r3, [pc, #208]	; (546c <set_video_mode+0x10c>)
    539c:	801a      	strh	r2, [r3, #0]
    video_end=video_params[mode].video_end;
    539e:	79fa      	ldrb	r2, [r7, #7]
    53a0:	4931      	ldr	r1, [pc, #196]	; (5468 <set_video_mode+0x108>)
    53a2:	4613      	mov	r3, r2
    53a4:	00db      	lsls	r3, r3, #3
    53a6:	4413      	add	r3, r2
    53a8:	005b      	lsls	r3, r3, #1
    53aa:	440b      	add	r3, r1
    53ac:	3304      	adds	r3, #4
    53ae:	881a      	ldrh	r2, [r3, #0]
    53b0:	4b2f      	ldr	r3, [pc, #188]	; (5470 <set_video_mode+0x110>)
    53b2:	801a      	strh	r2, [r3, #0]
    left_margin=video_params[mode].left_margin;
    53b4:	79fa      	ldrb	r2, [r7, #7]
    53b6:	492c      	ldr	r1, [pc, #176]	; (5468 <set_video_mode+0x108>)
    53b8:	4613      	mov	r3, r2
    53ba:	00db      	lsls	r3, r3, #3
    53bc:	4413      	add	r3, r2
    53be:	005b      	lsls	r3, r3, #1
    53c0:	440b      	add	r3, r1
    53c2:	3306      	adds	r3, #6
    53c4:	881a      	ldrh	r2, [r3, #0]
    53c6:	4b2b      	ldr	r3, [pc, #172]	; (5474 <set_video_mode+0x114>)
    53c8:	801a      	strh	r2, [r3, #0]
    byte_per_row=video_params[mode].bpr;
    53ca:	79fa      	ldrb	r2, [r7, #7]
    53cc:	4926      	ldr	r1, [pc, #152]	; (5468 <set_video_mode+0x108>)
    53ce:	4613      	mov	r3, r2
    53d0:	00db      	lsls	r3, r3, #3
    53d2:	4413      	add	r3, r2
    53d4:	005b      	lsls	r3, r3, #1
    53d6:	440b      	add	r3, r1
    53d8:	3308      	adds	r3, #8
    53da:	781a      	ldrb	r2, [r3, #0]
    53dc:	4b26      	ldr	r3, [pc, #152]	; (5478 <set_video_mode+0x118>)
    53de:	701a      	strb	r2, [r3, #0]
    lines_repeat=video_params[mode].rpt;
    53e0:	79fa      	ldrb	r2, [r7, #7]
    53e2:	4921      	ldr	r1, [pc, #132]	; (5468 <set_video_mode+0x108>)
    53e4:	4613      	mov	r3, r2
    53e6:	00db      	lsls	r3, r3, #3
    53e8:	4413      	add	r3, r2
    53ea:	005b      	lsls	r3, r3, #1
    53ec:	440b      	add	r3, r1
    53ee:	3309      	adds	r3, #9
    53f0:	781a      	ldrb	r2, [r3, #0]
    53f2:	4b22      	ldr	r3, [pc, #136]	; (547c <set_video_mode+0x11c>)
    53f4:	701a      	strb	r2, [r3, #0]
    pixel_delay=video_params[mode].pdly;
    53f6:	79fa      	ldrb	r2, [r7, #7]
    53f8:	491b      	ldr	r1, [pc, #108]	; (5468 <set_video_mode+0x108>)
    53fa:	4613      	mov	r3, r2
    53fc:	00db      	lsls	r3, r3, #3
    53fe:	4413      	add	r3, r2
    5400:	005b      	lsls	r3, r3, #1
    5402:	440b      	add	r3, r1
    5404:	330a      	adds	r3, #10
    5406:	781a      	ldrb	r2, [r3, #0]
    5408:	4b1d      	ldr	r3, [pc, #116]	; (5480 <set_video_mode+0x120>)
    540a:	701a      	strb	r2, [r3, #0]
    hres=video_params[mode].hres;
    540c:	79fa      	ldrb	r2, [r7, #7]
    540e:	4916      	ldr	r1, [pc, #88]	; (5468 <set_video_mode+0x108>)
    5410:	4613      	mov	r3, r2
    5412:	00db      	lsls	r3, r3, #3
    5414:	4413      	add	r3, r2
    5416:	005b      	lsls	r3, r3, #1
    5418:	440b      	add	r3, r1
    541a:	330c      	adds	r3, #12
    541c:	881b      	ldrh	r3, [r3, #0]
    541e:	b2da      	uxtb	r2, r3
    5420:	4b18      	ldr	r3, [pc, #96]	; (5484 <set_video_mode+0x124>)
    5422:	701a      	strb	r2, [r3, #0]
    vres=video_params[mode].vres;
    5424:	79fa      	ldrb	r2, [r7, #7]
    5426:	4910      	ldr	r1, [pc, #64]	; (5468 <set_video_mode+0x108>)
    5428:	4613      	mov	r3, r2
    542a:	00db      	lsls	r3, r3, #3
    542c:	4413      	add	r3, r2
    542e:	005b      	lsls	r3, r3, #1
    5430:	440b      	add	r3, r1
    5432:	330e      	adds	r3, #14
    5434:	881b      	ldrh	r3, [r3, #0]
    5436:	b2da      	uxtb	r2, r3
    5438:	4b13      	ldr	r3, [pc, #76]	; (5488 <set_video_mode+0x128>)
    543a:	701a      	strb	r2, [r3, #0]
    chroma_cfg=video_params[mode].chroma_cfg;
    543c:	79fa      	ldrb	r2, [r7, #7]
    543e:	490a      	ldr	r1, [pc, #40]	; (5468 <set_video_mode+0x108>)
    5440:	4613      	mov	r3, r2
    5442:	00db      	lsls	r3, r3, #3
    5444:	4413      	add	r3, r2
    5446:	005b      	lsls	r3, r3, #1
    5448:	440b      	add	r3, r1
    544a:	3310      	adds	r3, #16
    544c:	881a      	ldrh	r2, [r3, #0]
    544e:	4b0f      	ldr	r3, [pc, #60]	; (548c <set_video_mode+0x12c>)
    5450:	801a      	strh	r2, [r3, #0]
    gfx_cls();
    5452:	f7fc ff41 	bl	22d8 <gfx_cls>
}
    5456:	bf00      	nop
    5458:	3708      	adds	r7, #8
    545a:	46bd      	mov	sp, r7
    545c:	bd80      	pop	{r7, pc}
    545e:	bf00      	nop
    5460:	200006b0 	.word	0x200006b0
    5464:	20000190 	.word	0x20000190
    5468:	00005bb4 	.word	0x00005bb4
    546c:	20000202 	.word	0x20000202
    5470:	20000204 	.word	0x20000204
    5474:	20000206 	.word	0x20000206
    5478:	20000208 	.word	0x20000208
    547c:	20000209 	.word	0x20000209
    5480:	2000020a 	.word	0x2000020a
    5484:	2000020b 	.word	0x2000020b
    5488:	2000020c 	.word	0x2000020c
    548c:	2000020e 	.word	0x2000020e

00005490 <get_video_params>:

vmode_params_t* get_video_params(){
    5490:	b480      	push	{r7}
    5492:	af00      	add	r7, sp, #0
    return (vmode_params_t*)&video_params[video_mode];
    5494:	4b06      	ldr	r3, [pc, #24]	; (54b0 <get_video_params+0x20>)
    5496:	781b      	ldrb	r3, [r3, #0]
    5498:	461a      	mov	r2, r3
    549a:	4613      	mov	r3, r2
    549c:	00db      	lsls	r3, r3, #3
    549e:	4413      	add	r3, r2
    54a0:	005b      	lsls	r3, r3, #1
    54a2:	4a04      	ldr	r2, [pc, #16]	; (54b4 <get_video_params+0x24>)
    54a4:	4413      	add	r3, r2
}
    54a6:	4618      	mov	r0, r3
    54a8:	46bd      	mov	sp, r7
    54aa:	bc80      	pop	{r7}
    54ac:	4770      	bx	lr
    54ae:	bf00      	nop
    54b0:	200006b0 	.word	0x200006b0
    54b4:	00005bb4 	.word	0x00005bb4

000054b8 <game_pause>:

void game_pause(uint16_t frame_count){
    54b8:	b480      	push	{r7}
    54ba:	b083      	sub	sp, #12
    54bc:	af00      	add	r7, sp, #0
    54be:	4603      	mov	r3, r0
    54c0:	80fb      	strh	r3, [r7, #6]
    game_timer=frame_count;
    54c2:	4a07      	ldr	r2, [pc, #28]	; (54e0 <game_pause+0x28>)
    54c4:	88fb      	ldrh	r3, [r7, #6]
    54c6:	8013      	strh	r3, [r2, #0]
    while (game_timer);
    54c8:	bf00      	nop
    54ca:	4b05      	ldr	r3, [pc, #20]	; (54e0 <game_pause+0x28>)
    54cc:	881b      	ldrh	r3, [r3, #0]
    54ce:	b29b      	uxth	r3, r3
    54d0:	2b00      	cmp	r3, #0
    54d2:	d1fa      	bne.n	54ca <game_pause+0x12>
}
    54d4:	bf00      	nop
    54d6:	370c      	adds	r7, #12
    54d8:	46bd      	mov	sp, r7
    54da:	bc80      	pop	{r7}
    54dc:	4770      	bx	lr
    54de:	bf00      	nop
    54e0:	20004e40 	.word	0x20004e40

000054e4 <micro_pause>:

// pause in scan lines count.
// input:
//      count number of scan lines to wait.
void micro_pause(uint32_t count){
    54e4:	b480      	push	{r7}
    54e6:	b085      	sub	sp, #20
    54e8:	af00      	add	r7, sp, #0
    54ea:	6078      	str	r0, [r7, #4]
    uint32_t t0;
    t0=ntsc_ticks+count;
    54ec:	4b07      	ldr	r3, [pc, #28]	; (550c <micro_pause+0x28>)
    54ee:	681a      	ldr	r2, [r3, #0]
    54f0:	687b      	ldr	r3, [r7, #4]
    54f2:	4413      	add	r3, r2
    54f4:	60fb      	str	r3, [r7, #12]
    while (ntsc_ticks<t0);
    54f6:	bf00      	nop
    54f8:	4b04      	ldr	r3, [pc, #16]	; (550c <micro_pause+0x28>)
    54fa:	681a      	ldr	r2, [r3, #0]
    54fc:	68fb      	ldr	r3, [r7, #12]
    54fe:	429a      	cmp	r2, r3
    5500:	d3fa      	bcc.n	54f8 <micro_pause+0x14>
}
    5502:	bf00      	nop
    5504:	3714      	adds	r7, #20
    5506:	46bd      	mov	sp, r7
    5508:	bc80      	pop	{r7}
    550a:	4770      	bx	lr
    550c:	20004e44 	.word	0x20004e44
