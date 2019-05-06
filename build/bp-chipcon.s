
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 59 02 00 00 d1 01 00 00     .P. 1...Y.......
      10:	5f 02 00 00 65 02 00 00 6b 02 00 00 e9 27 00 00     _...e...k....'..
      20:	e9 27 00 00 e9 27 00 00 e9 27 00 00 71 02 00 00     .'...'...'..q...
      30:	e9 27 00 00 e9 27 00 00 77 02 00 00 cd 28 00 00     .'...'..w....(..
      40:	83 02 00 00 89 02 00 00 95 02 00 00 21 25 00 00     ............!%..
      50:	9b 02 00 00 a1 02 00 00 a7 02 00 00 ad 02 00 00     ................
      60:	b3 02 00 00 b9 02 00 00 bf 02 00 00 c5 02 00 00     ................
      70:	cb 02 00 00 e9 27 00 00 e9 27 00 00 d1 02 00 00     .....'...'......
      80:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..
      90:	e9 27 00 00 e9 27 00 00 e9 27 00 00 d7 02 00 00     .'...'...'......
      a0:	e9 27 00 00 85 29 00 00 e9 27 00 00 e9 27 00 00     .'...)...'...'..
      b0:	e3 02 00 00 e9 02 00 00 ef 02 00 00 e9 27 00 00     .............'..
      c0:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..
      d0:	e9 27 00 00 f5 02 00 00 c5 31 00 00 01 03 00 00     .'.......1......
      e0:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..
      f0:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..
     100:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..
     110:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..
     120:	e9 27 00 00 e9 27 00 00 e9 27 00 00 e9 27 00 00     .'...'...'...'..

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
     136:	4b1c      	ldr	r3, [pc, #112]	; (1a8 <startup+0x78>)
     138:	617b      	str	r3, [r7, #20]
    unsigned int * bss_end_p = &_BSS_END;
     13a:	4b1c      	ldr	r3, [pc, #112]	; (1ac <startup+0x7c>)
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
     154:	4b16      	ldr	r3, [pc, #88]	; (1b0 <startup+0x80>)
     156:	613b      	str	r3, [r7, #16]
    unsigned int * data_ram_start_p = &_DATA_RAM_START;
     158:	4b16      	ldr	r3, [pc, #88]	; (1b4 <startup+0x84>)
     15a:	60fb      	str	r3, [r7, #12]
    unsigned int * data_ram_end_p = &_DATA_RAM_END;
     15c:	4b16      	ldr	r3, [pc, #88]	; (1b8 <startup+0x88>)
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
    }
	here=(void*)&_TPA_START;
     17e:	4b0f      	ldr	r3, [pc, #60]	; (1bc <startup+0x8c>)
     180:	4a0f      	ldr	r2, [pc, #60]	; (1c0 <startup+0x90>)
     182:	601a      	str	r2, [r3, #0]
	ffa=(uint16_t*)&_FLASH_FREE;
     184:	4b0f      	ldr	r3, [pc, #60]	; (1c4 <startup+0x94>)
     186:	4a10      	ldr	r2, [pc, #64]	; (1c8 <startup+0x98>)
     188:	601a      	str	r2, [r3, #0]
	// active les interruptions et les fault handler
	//SCB_CCR->fld_ccr.unalign_trp=1;
	//SCB_CCR->fld_ccr.div_0_trp=1;
	CCR->ccr|=1|(1<<3)|(1<<4);
     18a:	4a10      	ldr	r2, [pc, #64]	; (1cc <startup+0x9c>)
     18c:	4b0f      	ldr	r3, [pc, #60]	; (1cc <startup+0x9c>)
     18e:	681b      	ldr	r3, [r3, #0]
     190:	f043 0319 	orr.w	r3, r3, #25
     194:	6013      	str	r3, [r2, #0]
    __enable_irq();
     196:	b662      	cpsie	i
    __enable_fault_irq();
     198:	b661      	cpsie	f
    "isb\n"
    :: [psp_top] "r" (PSP_TOP)
    );
*/    
    /* Now we are ready to start the main function */
    main();
     19a:	f001 fa87 	bl	16ac <main>
}
     19e:	bf00      	nop
     1a0:	3718      	adds	r7, #24
     1a2:	46bd      	mov	sp, r7
     1a4:	bd80      	pop	{r7, pc}
     1a6:	bf00      	nop
     1a8:	2000005c 	.word	0x2000005c
     1ac:	200009d4 	.word	0x200009d4
     1b0:	00003400 	.word	0x00003400
     1b4:	20000000 	.word	0x20000000
     1b8:	2000005c 	.word	0x2000005c
     1bc:	200004d0 	.word	0x200004d0
     1c0:	20000a00 	.word	0x20000a00
     1c4:	200004cc 	.word	0x200004cc
     1c8:	00003400 	.word	0x00003400
     1cc:	e000ed14 	.word	0xe000ed14

000001d0 <HARD_FAULT_handler>:
_exception(HARD_FAULT_handler){
     1d0:	4668      	mov	r0, sp
     1d2:	f020 0107 	bic.w	r1, r0, #7
     1d6:	468d      	mov	sp, r1
     1d8:	b581      	push	{r0, r7, lr}
     1da:	b083      	sub	sp, #12
     1dc:	af00      	add	r7, sp, #0
		asm volatile (
     1de:	f3ef 8009 	mrs	r0, PSP
     1e2:	6983      	ldr	r3, [r0, #24]
     1e4:	607b      	str	r3, [r7, #4]
	if ((CFSR->fsr.mmFault)&0x7f){
     1e6:	4b17      	ldr	r3, [pc, #92]	; (244 <HARD_FAULT_handler+0x74>)
     1e8:	681b      	ldr	r3, [r3, #0]
     1ea:	b2db      	uxtb	r3, r3
     1ec:	f003 037f 	and.w	r3, r3, #127	; 0x7f
     1f0:	2b00      	cmp	r3, #0
     1f2:	d004      	beq.n	1fe <HARD_FAULT_handler+0x2e>
		print_fault("memory manager fault ",adr);
     1f4:	6879      	ldr	r1, [r7, #4]
     1f6:	4814      	ldr	r0, [pc, #80]	; (248 <HARD_FAULT_handler+0x78>)
     1f8:	f002 fafe 	bl	27f8 <print_fault>
}
     1fc:	e01b      	b.n	236 <HARD_FAULT_handler+0x66>
	}else if ((CFSR->fsr.busFault)&0xff){
     1fe:	4b11      	ldr	r3, [pc, #68]	; (244 <HARD_FAULT_handler+0x74>)
     200:	681b      	ldr	r3, [r3, #0]
     202:	f3c3 2307 	ubfx	r3, r3, #8, #8
     206:	b2db      	uxtb	r3, r3
     208:	2b00      	cmp	r3, #0
     20a:	d004      	beq.n	216 <HARD_FAULT_handler+0x46>
		print_fault("bus fault ",adr);
     20c:	6879      	ldr	r1, [r7, #4]
     20e:	480f      	ldr	r0, [pc, #60]	; (24c <HARD_FAULT_handler+0x7c>)
     210:	f002 faf2 	bl	27f8 <print_fault>
}
     214:	e00f      	b.n	236 <HARD_FAULT_handler+0x66>
	}else if ((CFSR->fsr.usageFalt)&0xffff){
     216:	4b0b      	ldr	r3, [pc, #44]	; (244 <HARD_FAULT_handler+0x74>)
     218:	681b      	ldr	r3, [r3, #0]
     21a:	f3c3 430f 	ubfx	r3, r3, #16, #16
     21e:	b29b      	uxth	r3, r3
     220:	2b00      	cmp	r3, #0
     222:	d004      	beq.n	22e <HARD_FAULT_handler+0x5e>
		print_fault("usage fault ",adr);
     224:	6879      	ldr	r1, [r7, #4]
     226:	480a      	ldr	r0, [pc, #40]	; (250 <HARD_FAULT_handler+0x80>)
     228:	f002 fae6 	bl	27f8 <print_fault>
}
     22c:	e003      	b.n	236 <HARD_FAULT_handler+0x66>
		print_fault("hard fault  ",adr);
     22e:	6879      	ldr	r1, [r7, #4]
     230:	4808      	ldr	r0, [pc, #32]	; (254 <HARD_FAULT_handler+0x84>)
     232:	f002 fae1 	bl	27f8 <print_fault>
}
     236:	bf00      	nop
     238:	370c      	adds	r7, #12
     23a:	46bd      	mov	sp, r7
     23c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     240:	4685      	mov	sp, r0
     242:	4770      	bx	lr
     244:	e000ed28 	.word	0xe000ed28
     248:	00003304 	.word	0x00003304
     24c:	0000331c 	.word	0x0000331c
     250:	00003328 	.word	0x00003328
     254:	00003338 	.word	0x00003338

00000258 <NMI_handler>:
_default_handler(NMI_handler) // 2
     258:	f002 fac6 	bl	27e8 <reset_mcu>
     25c:	bf00      	nop

0000025e <MM_FAULT_handler>:
_default_handler(MM_FAULT_handler)
     25e:	f002 fac3 	bl	27e8 <reset_mcu>
     262:	bf00      	nop

00000264 <BUS_FAULT_handler>:
_default_handler(BUS_FAULT_handler)
     264:	f002 fac0 	bl	27e8 <reset_mcu>
     268:	bf00      	nop

0000026a <USAGE_FAULT_handler>:
_default_handler(USAGE_FAULT_handler)
     26a:	f002 fabd 	bl	27e8 <reset_mcu>
     26e:	bf00      	nop

00000270 <SVC_handler>:
_default_handler(SVC_handler) // 11
     270:	f002 faba 	bl	27e8 <reset_mcu>
     274:	bf00      	nop

00000276 <PENDSV_handler>:
_default_handler(PENDSV_handler) // 14
     276:	f002 fab7 	bl	27e8 <reset_mcu>
     27a:	bf00      	nop
_default_handler(STK_handler) // 15
     27c:	f002 fab4 	bl	27e8 <reset_mcu>
     280:	bf00      	nop

00000282 <WWDG_handler>:
_default_handler(WWDG_handler) // 0
     282:	f002 fab1 	bl	27e8 <reset_mcu>
     286:	bf00      	nop

00000288 <PVD_handler>:
_default_handler(PVD_handler) // 1
     288:	f002 faae 	bl	27e8 <reset_mcu>
     28c:	bf00      	nop
_default_handler(RTC_handler) // 2
     28e:	f002 faab 	bl	27e8 <reset_mcu>
     292:	bf00      	nop

00000294 <TAMPER_handler>:
_default_handler(TAMPER_handler) // 3
     294:	f002 faa8 	bl	27e8 <reset_mcu>
     298:	bf00      	nop

0000029a <FLASH_handler>:
_default_handler(FLASH_handler) // 4
     29a:	f002 faa5 	bl	27e8 <reset_mcu>
     29e:	bf00      	nop

000002a0 <RCC_handler>:
_default_handler(RCC_handler) // 5
     2a0:	f002 faa2 	bl	27e8 <reset_mcu>
     2a4:	bf00      	nop

000002a6 <EXTI0_handler>:
_default_handler(EXTI0_handler) // 6
     2a6:	f002 fa9f 	bl	27e8 <reset_mcu>
     2aa:	bf00      	nop

000002ac <EXTI1_handler>:
_default_handler(EXTI1_handler) // 7
     2ac:	f002 fa9c 	bl	27e8 <reset_mcu>
     2b0:	bf00      	nop

000002b2 <EXTI2_handler>:
_default_handler(EXTI2_handler) // 8
     2b2:	f002 fa99 	bl	27e8 <reset_mcu>
     2b6:	bf00      	nop

000002b8 <EXTI3_handler>:
_default_handler(EXTI3_handler) // 9
     2b8:	f002 fa96 	bl	27e8 <reset_mcu>
     2bc:	bf00      	nop

000002be <EXTI4_handler>:
_default_handler(EXTI4_handler) // 10
     2be:	f002 fa93 	bl	27e8 <reset_mcu>
     2c2:	bf00      	nop

000002c4 <DMA1CH1_handler>:
_default_handler(DMA1CH1_handler) // 11
     2c4:	f002 fa90 	bl	27e8 <reset_mcu>
     2c8:	bf00      	nop

000002ca <DMA1CH2_handler>:
_default_handler(DMA1CH2_handler) // 12
     2ca:	f002 fa8d 	bl	27e8 <reset_mcu>
     2ce:	bf00      	nop

000002d0 <DMA1CH5_handler>:
_default_handler(DMA1CH5_handler) // 12
     2d0:	f002 fa8a 	bl	27e8 <reset_mcu>
     2d4:	bf00      	nop

000002d6 <EXTI9_5_handler>:
_default_handler(EXTI9_5_handler) // 23
     2d6:	f002 fa87 	bl	27e8 <reset_mcu>
     2da:	bf00      	nop

000002dc <TIM1_CC_handler>:
_default_handler(TIM1_CC_handler) // 27
     2dc:	f002 fa84 	bl	27e8 <reset_mcu>
     2e0:	bf00      	nop

000002e2 <TIM2_handler>:
_default_handler(TIM2_handler) // 28
     2e2:	f002 fa81 	bl	27e8 <reset_mcu>
     2e6:	bf00      	nop

000002e8 <TIM3_handler>:
_default_handler(TIM3_handler) // 29
     2e8:	f002 fa7e 	bl	27e8 <reset_mcu>
     2ec:	bf00      	nop

000002ee <TIM4_handler>:
_default_handler(TIM4_handler) // 30
     2ee:	f002 fa7b 	bl	27e8 <reset_mcu>
     2f2:	bf00      	nop

000002f4 <USART1_handler>:
_default_handler(USART1_handler) // 37
     2f4:	f002 fa78 	bl	27e8 <reset_mcu>
     2f8:	bf00      	nop
_default_handler(USART2_handler) // 38
     2fa:	f002 fa75 	bl	27e8 <reset_mcu>
     2fe:	bf00      	nop

00000300 <USART3_handler>:
_default_handler(USART3_handler) // 39
     300:	f002 fa72 	bl	27e8 <reset_mcu>
     304:	bf00      	nop
	...

00000308 <align>:
#include "include/bpos.h"

// aligne le pointeur 'here'
// argument:
//		bit  nombre de bit à zéro.
void *align(unsigned char bit){
     308:	b480      	push	{r7}
     30a:	b083      	sub	sp, #12
     30c:	af00      	add	r7, sp, #0
     30e:	4603      	mov	r3, r0
     310:	71fb      	strb	r3, [r7, #7]
	switch(bit){
     312:	79fb      	ldrb	r3, [r7, #7]
     314:	2b02      	cmp	r3, #2
     316:	d002      	beq.n	31e <align+0x16>
     318:	2b04      	cmp	r3, #4
     31a:	d00d      	beq.n	338 <align+0x30>
     31c:	e019      	b.n	352 <align+0x4a>
	case 2:
		here+=1;
     31e:	4b10      	ldr	r3, [pc, #64]	; (360 <align+0x58>)
     320:	681b      	ldr	r3, [r3, #0]
     322:	3301      	adds	r3, #1
     324:	4a0e      	ldr	r2, [pc, #56]	; (360 <align+0x58>)
     326:	6013      	str	r3, [r2, #0]
		here=(void*)((uint32_t)here&0xfffffffe);
     328:	4b0d      	ldr	r3, [pc, #52]	; (360 <align+0x58>)
     32a:	681b      	ldr	r3, [r3, #0]
     32c:	f023 0301 	bic.w	r3, r3, #1
     330:	461a      	mov	r2, r3
     332:	4b0b      	ldr	r3, [pc, #44]	; (360 <align+0x58>)
     334:	601a      	str	r2, [r3, #0]
		break;
     336:	e00c      	b.n	352 <align+0x4a>
	case 4:
		here+=3;
     338:	4b09      	ldr	r3, [pc, #36]	; (360 <align+0x58>)
     33a:	681b      	ldr	r3, [r3, #0]
     33c:	3303      	adds	r3, #3
     33e:	4a08      	ldr	r2, [pc, #32]	; (360 <align+0x58>)
     340:	6013      	str	r3, [r2, #0]
		here=(void*)((uint32_t)here&0xfffffffc);
     342:	4b07      	ldr	r3, [pc, #28]	; (360 <align+0x58>)
     344:	681b      	ldr	r3, [r3, #0]
     346:	f023 0303 	bic.w	r3, r3, #3
     34a:	461a      	mov	r2, r3
     34c:	4b04      	ldr	r3, [pc, #16]	; (360 <align+0x58>)
     34e:	601a      	str	r2, [r3, #0]
		break;
     350:	bf00      	nop
	}//swicth
	return here;
     352:	4b03      	ldr	r3, [pc, #12]	; (360 <align+0x58>)
     354:	681b      	ldr	r3, [r3, #0]
}
     356:	4618      	mov	r0, r3
     358:	370c      	adds	r7, #12
     35a:	46bd      	mov	sp, r7
     35c:	bc80      	pop	{r7}
     35e:	4770      	bx	lr
     360:	200004d0 	.word	0x200004d0

00000364 <alloc>:

// size est en octets.
void* alloc(unsigned size){
     364:	b480      	push	{r7}
     366:	b085      	sub	sp, #20
     368:	af00      	add	r7, sp, #0
     36a:	6078      	str	r0, [r7, #4]
	void *ptr;
	if ((here+size)>TPA_TOP) return 0;
     36c:	4b0c      	ldr	r3, [pc, #48]	; (3a0 <alloc+0x3c>)
     36e:	681a      	ldr	r2, [r3, #0]
     370:	687b      	ldr	r3, [r7, #4]
     372:	441a      	add	r2, r3
     374:	4b0b      	ldr	r3, [pc, #44]	; (3a4 <alloc+0x40>)
     376:	681b      	ldr	r3, [r3, #0]
     378:	429a      	cmp	r2, r3
     37a:	d901      	bls.n	380 <alloc+0x1c>
     37c:	2300      	movs	r3, #0
     37e:	e009      	b.n	394 <alloc+0x30>
	ptr=here;
     380:	4b07      	ldr	r3, [pc, #28]	; (3a0 <alloc+0x3c>)
     382:	681b      	ldr	r3, [r3, #0]
     384:	60fb      	str	r3, [r7, #12]
	here+=size;
     386:	4b06      	ldr	r3, [pc, #24]	; (3a0 <alloc+0x3c>)
     388:	681a      	ldr	r2, [r3, #0]
     38a:	687b      	ldr	r3, [r7, #4]
     38c:	4413      	add	r3, r2
     38e:	4a04      	ldr	r2, [pc, #16]	; (3a0 <alloc+0x3c>)
     390:	6013      	str	r3, [r2, #0]
	return ptr;
     392:	68fb      	ldr	r3, [r7, #12]
}
     394:	4618      	mov	r0, r3
     396:	3714      	adds	r7, #20
     398:	46bd      	mov	sp, r7
     39a:	bc80      	pop	{r7}
     39c:	4770      	bx	lr
     39e:	bf00      	nop
     3a0:	200004d0 	.word	0x200004d0
     3a4:	20000004 	.word	0x20000004

000003a8 <free>:

// ptr valeur retournée par alloc()
// tout ce qui a été alloué après 'ptr' est limité
// comme dans FORTH.
void free(void* ptr){
     3a8:	b480      	push	{r7}
     3aa:	b083      	sub	sp, #12
     3ac:	af00      	add	r7, sp, #0
     3ae:	6078      	str	r0, [r7, #4]
	here=ptr;
     3b0:	4a03      	ldr	r2, [pc, #12]	; (3c0 <free+0x18>)
     3b2:	687b      	ldr	r3, [r7, #4]
     3b4:	6013      	str	r3, [r2, #0]
}
     3b6:	bf00      	nop
     3b8:	370c      	adds	r7, #12
     3ba:	46bd      	mov	sp, r7
     3bc:	bc80      	pop	{r7}
     3be:	4770      	bx	lr
     3c0:	200004d0 	.word	0x200004d0

000003c4 <free_heap>:

unsigned free_heap(){
     3c4:	b480      	push	{r7}
     3c6:	af00      	add	r7, sp, #0
	return (uint32_t)(TPA_TOP-here);
     3c8:	4b04      	ldr	r3, [pc, #16]	; (3dc <free_heap+0x18>)
     3ca:	681b      	ldr	r3, [r3, #0]
     3cc:	461a      	mov	r2, r3
     3ce:	4b04      	ldr	r3, [pc, #16]	; (3e0 <free_heap+0x1c>)
     3d0:	681b      	ldr	r3, [r3, #0]
     3d2:	1ad3      	subs	r3, r2, r3
}
     3d4:	4618      	mov	r0, r3
     3d6:	46bd      	mov	sp, r7
     3d8:	bc80      	pop	{r7}
     3da:	4770      	bx	lr
     3dc:	20000004 	.word	0x20000004
     3e0:	200004d0 	.word	0x200004d0

000003e4 <reset_heap>:

unsigned reset_heap(){
     3e4:	b480      	push	{r7}
     3e6:	af00      	add	r7, sp, #0
	here=(void*)&_TPA_START;;
     3e8:	4b03      	ldr	r3, [pc, #12]	; (3f8 <reset_heap+0x14>)
     3ea:	4a04      	ldr	r2, [pc, #16]	; (3fc <reset_heap+0x18>)
     3ec:	601a      	str	r2, [r3, #0]
}
     3ee:	bf00      	nop
     3f0:	4618      	mov	r0, r3
     3f2:	46bd      	mov	sp, r7
     3f4:	bc80      	pop	{r7}
     3f6:	4770      	bx	lr
     3f8:	200004d0 	.word	0x200004d0
     3fc:	20000a00 	.word	0x20000a00

00000400 <bkp_read_register>:

#include "../include/stm32f103c8.h"

// lecture d'un registre BKP->DR[]
// r->{0..9}
uint16_t bkp_read_register(int r){
     400:	b480      	push	{r7}
     402:	b083      	sub	sp, #12
     404:	af00      	add	r7, sp, #0
     406:	6078      	str	r0, [r7, #4]
	return BKP->DR[r%10];
     408:	480a      	ldr	r0, [pc, #40]	; (434 <bkp_read_register+0x34>)
     40a:	6879      	ldr	r1, [r7, #4]
     40c:	4b0a      	ldr	r3, [pc, #40]	; (438 <bkp_read_register+0x38>)
     40e:	fb83 2301 	smull	r2, r3, r3, r1
     412:	109a      	asrs	r2, r3, #2
     414:	17cb      	asrs	r3, r1, #31
     416:	1ad2      	subs	r2, r2, r3
     418:	4613      	mov	r3, r2
     41a:	009b      	lsls	r3, r3, #2
     41c:	4413      	add	r3, r2
     41e:	005b      	lsls	r3, r3, #1
     420:	1aca      	subs	r2, r1, r3
     422:	0093      	lsls	r3, r2, #2
     424:	4403      	add	r3, r0
     426:	685b      	ldr	r3, [r3, #4]
     428:	b29b      	uxth	r3, r3
}
     42a:	4618      	mov	r0, r3
     42c:	370c      	adds	r7, #12
     42e:	46bd      	mov	sp, r7
     430:	bc80      	pop	{r7}
     432:	4770      	bx	lr
     434:	40006c00 	.word	0x40006c00
     438:	66666667 	.word	0x66666667

0000043c <bkp_write_register>:

// écriture d'un registre BKP->DR[]
// r->{0..9}
void bkp_write_register(int r, uint16_t value){
     43c:	b480      	push	{r7}
     43e:	b083      	sub	sp, #12
     440:	af00      	add	r7, sp, #0
     442:	6078      	str	r0, [r7, #4]
     444:	460b      	mov	r3, r1
     446:	807b      	strh	r3, [r7, #2]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
     448:	4a1d      	ldr	r2, [pc, #116]	; (4c0 <bkp_write_register+0x84>)
     44a:	4b1d      	ldr	r3, [pc, #116]	; (4c0 <bkp_write_register+0x84>)
     44c:	69db      	ldr	r3, [r3, #28]
     44e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     452:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
     454:	4a1b      	ldr	r2, [pc, #108]	; (4c4 <bkp_write_register+0x88>)
     456:	4b1b      	ldr	r3, [pc, #108]	; (4c4 <bkp_write_register+0x88>)
     458:	681b      	ldr	r3, [r3, #0]
     45a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     45e:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
     460:	4a19      	ldr	r2, [pc, #100]	; (4c8 <bkp_write_register+0x8c>)
     462:	4b19      	ldr	r3, [pc, #100]	; (4c8 <bkp_write_register+0x8c>)
     464:	685b      	ldr	r3, [r3, #4]
     466:	f043 0310 	orr.w	r3, r3, #16
     46a:	6053      	str	r3, [r2, #4]
	BKP->DR[r%10]=value;
     46c:	4817      	ldr	r0, [pc, #92]	; (4cc <bkp_write_register+0x90>)
     46e:	6879      	ldr	r1, [r7, #4]
     470:	4b17      	ldr	r3, [pc, #92]	; (4d0 <bkp_write_register+0x94>)
     472:	fb83 2301 	smull	r2, r3, r3, r1
     476:	109a      	asrs	r2, r3, #2
     478:	17cb      	asrs	r3, r1, #31
     47a:	1ad2      	subs	r2, r2, r3
     47c:	4613      	mov	r3, r2
     47e:	009b      	lsls	r3, r3, #2
     480:	4413      	add	r3, r2
     482:	005b      	lsls	r3, r3, #1
     484:	1aca      	subs	r2, r1, r3
     486:	8879      	ldrh	r1, [r7, #2]
     488:	0093      	lsls	r3, r2, #2
     48a:	4403      	add	r3, r0
     48c:	6059      	str	r1, [r3, #4]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
     48e:	4a0e      	ldr	r2, [pc, #56]	; (4c8 <bkp_write_register+0x8c>)
     490:	4b0d      	ldr	r3, [pc, #52]	; (4c8 <bkp_write_register+0x8c>)
     492:	685b      	ldr	r3, [r3, #4]
     494:	f023 0310 	bic.w	r3, r3, #16
     498:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
     49a:	bf00      	nop
     49c:	4b0a      	ldr	r3, [pc, #40]	; (4c8 <bkp_write_register+0x8c>)
     49e:	685b      	ldr	r3, [r3, #4]
     4a0:	f003 0320 	and.w	r3, r3, #32
     4a4:	2b00      	cmp	r3, #0
     4a6:	d0f9      	beq.n	49c <bkp_write_register+0x60>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
     4a8:	4a06      	ldr	r2, [pc, #24]	; (4c4 <bkp_write_register+0x88>)
     4aa:	4b06      	ldr	r3, [pc, #24]	; (4c4 <bkp_write_register+0x88>)
     4ac:	681b      	ldr	r3, [r3, #0]
     4ae:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     4b2:	6013      	str	r3, [r2, #0]
}
     4b4:	bf00      	nop
     4b6:	370c      	adds	r7, #12
     4b8:	46bd      	mov	sp, r7
     4ba:	bc80      	pop	{r7}
     4bc:	4770      	bx	lr
     4be:	bf00      	nop
     4c0:	40021000 	.word	0x40021000
     4c4:	40007000 	.word	0x40007000
     4c8:	40002800 	.word	0x40002800
     4cc:	40006c00 	.word	0x40006c00
     4d0:	66666667 	.word	0x66666667

000004d4 <cursor_home>:
static int screen_width, screen_height;

//static int cursor_visible=0;
//static int cursor_blink=0;

static void cursor_home(){
     4d4:	b480      	push	{r7}
     4d6:	af00      	add	r7, sp, #0
	cursor_x=0;
     4d8:	4b04      	ldr	r3, [pc, #16]	; (4ec <cursor_home+0x18>)
     4da:	2200      	movs	r2, #0
     4dc:	601a      	str	r2, [r3, #0]
	cursor_y=0;
     4de:	4b04      	ldr	r3, [pc, #16]	; (4f0 <cursor_home+0x1c>)
     4e0:	2200      	movs	r2, #0
     4e2:	601a      	str	r2, [r3, #0]
}
     4e4:	bf00      	nop
     4e6:	46bd      	mov	sp, r7
     4e8:	bc80      	pop	{r7}
     4ea:	4770      	bx	lr
     4ec:	2000005c 	.word	0x2000005c
     4f0:	20000060 	.word	0x20000060

000004f4 <serial_cursor_crlf>:
/**********************************
 * fonctions console sérielle
 **********************************/
 
// cursor au début de la ligne suivante.
static void serial_cursor_crlf(){
     4f4:	b480      	push	{r7}
     4f6:	af00      	add	r7, sp, #0
	cursor_x=0;
     4f8:	4b09      	ldr	r3, [pc, #36]	; (520 <serial_cursor_crlf+0x2c>)
     4fa:	2200      	movs	r2, #0
     4fc:	601a      	str	r2, [r3, #0]
	if (cursor_y<(screen_height-1)){
     4fe:	4b09      	ldr	r3, [pc, #36]	; (524 <serial_cursor_crlf+0x30>)
     500:	681b      	ldr	r3, [r3, #0]
     502:	1e5a      	subs	r2, r3, #1
     504:	4b08      	ldr	r3, [pc, #32]	; (528 <serial_cursor_crlf+0x34>)
     506:	681b      	ldr	r3, [r3, #0]
     508:	429a      	cmp	r2, r3
     50a:	dd04      	ble.n	516 <serial_cursor_crlf+0x22>
		cursor_y++;
     50c:	4b06      	ldr	r3, [pc, #24]	; (528 <serial_cursor_crlf+0x34>)
     50e:	681b      	ldr	r3, [r3, #0]
     510:	3301      	adds	r3, #1
     512:	4a05      	ldr	r2, [pc, #20]	; (528 <serial_cursor_crlf+0x34>)
     514:	6013      	str	r3, [r2, #0]
	}
	
}
     516:	bf00      	nop
     518:	46bd      	mov	sp, r7
     51a:	bc80      	pop	{r7}
     51c:	4770      	bx	lr
     51e:	bf00      	nop
     520:	2000005c 	.word	0x2000005c
     524:	20000068 	.word	0x20000068
     528:	20000060 	.word	0x20000060

0000052c <serial_cursor_left>:

static void serial_cursor_left(){
     52c:	b480      	push	{r7}
     52e:	af00      	add	r7, sp, #0
	if (cursor_x){
     530:	4b0d      	ldr	r3, [pc, #52]	; (568 <serial_cursor_left+0x3c>)
     532:	681b      	ldr	r3, [r3, #0]
     534:	2b00      	cmp	r3, #0
     536:	d005      	beq.n	544 <serial_cursor_left+0x18>
		cursor_x--;
     538:	4b0b      	ldr	r3, [pc, #44]	; (568 <serial_cursor_left+0x3c>)
     53a:	681b      	ldr	r3, [r3, #0]
     53c:	3b01      	subs	r3, #1
     53e:	4a0a      	ldr	r2, [pc, #40]	; (568 <serial_cursor_left+0x3c>)
     540:	6013      	str	r3, [r2, #0]
	}else if (cursor_y){
		cursor_x=screen_width-1;
		cursor_y--;
	}
}
     542:	e00d      	b.n	560 <serial_cursor_left+0x34>
	}else if (cursor_y){
     544:	4b09      	ldr	r3, [pc, #36]	; (56c <serial_cursor_left+0x40>)
     546:	681b      	ldr	r3, [r3, #0]
     548:	2b00      	cmp	r3, #0
     54a:	d009      	beq.n	560 <serial_cursor_left+0x34>
		cursor_x=screen_width-1;
     54c:	4b08      	ldr	r3, [pc, #32]	; (570 <serial_cursor_left+0x44>)
     54e:	681b      	ldr	r3, [r3, #0]
     550:	3b01      	subs	r3, #1
     552:	4a05      	ldr	r2, [pc, #20]	; (568 <serial_cursor_left+0x3c>)
     554:	6013      	str	r3, [r2, #0]
		cursor_y--;
     556:	4b05      	ldr	r3, [pc, #20]	; (56c <serial_cursor_left+0x40>)
     558:	681b      	ldr	r3, [r3, #0]
     55a:	3b01      	subs	r3, #1
     55c:	4a03      	ldr	r2, [pc, #12]	; (56c <serial_cursor_left+0x40>)
     55e:	6013      	str	r3, [r2, #0]
}
     560:	bf00      	nop
     562:	46bd      	mov	sp, r7
     564:	bc80      	pop	{r7}
     566:	4770      	bx	lr
     568:	2000005c 	.word	0x2000005c
     56c:	20000060 	.word	0x20000060
     570:	20000064 	.word	0x20000064

00000574 <serial_cursor_right>:

static void serial_cursor_right(){
     574:	b580      	push	{r7, lr}
     576:	af00      	add	r7, sp, #0
	cursor_x++;
     578:	4b07      	ldr	r3, [pc, #28]	; (598 <serial_cursor_right+0x24>)
     57a:	681b      	ldr	r3, [r3, #0]
     57c:	3301      	adds	r3, #1
     57e:	4a06      	ldr	r2, [pc, #24]	; (598 <serial_cursor_right+0x24>)
     580:	6013      	str	r3, [r2, #0]
	if (cursor_x>=screen_width){
     582:	4b05      	ldr	r3, [pc, #20]	; (598 <serial_cursor_right+0x24>)
     584:	681a      	ldr	r2, [r3, #0]
     586:	4b05      	ldr	r3, [pc, #20]	; (59c <serial_cursor_right+0x28>)
     588:	681b      	ldr	r3, [r3, #0]
     58a:	429a      	cmp	r2, r3
     58c:	db01      	blt.n	592 <serial_cursor_right+0x1e>
		serial_cursor_crlf();
     58e:	f7ff ffb1 	bl	4f4 <serial_cursor_crlf>
	}
}
     592:	bf00      	nop
     594:	bd80      	pop	{r7, pc}
     596:	bf00      	nop
     598:	2000005c 	.word	0x2000005c
     59c:	20000064 	.word	0x20000064

000005a0 <serial_putc>:

static void serial_putc(char c){
     5a0:	b580      	push	{r7, lr}
     5a2:	b082      	sub	sp, #8
     5a4:	af00      	add	r7, sp, #0
     5a6:	4603      	mov	r3, r0
     5a8:	71fb      	strb	r3, [r7, #7]
	vt_putc(c);
     5aa:	79fb      	ldrb	r3, [r7, #7]
     5ac:	4618      	mov	r0, r3
     5ae:	f002 fd79 	bl	30a4 <vt_putc>
	serial_cursor_right();
     5b2:	f7ff ffdf 	bl	574 <serial_cursor_right>
}
     5b6:	bf00      	nop
     5b8:	3708      	adds	r7, #8
     5ba:	46bd      	mov	sp, r7
     5bc:	bd80      	pop	{r7, pc}

000005be <serial_crlf>:

static void serial_crlf(){
     5be:	b580      	push	{r7, lr}
     5c0:	af00      	add	r7, sp, #0
	vt_putc(CR);
     5c2:	200d      	movs	r0, #13
     5c4:	f002 fd6e 	bl	30a4 <vt_putc>
	serial_cursor_crlf();
     5c8:	f7ff ff94 	bl	4f4 <serial_cursor_crlf>
}
     5cc:	bf00      	nop
     5ce:	bd80      	pop	{r7, pc}

000005d0 <serial_clear_line>:

static void serial_clear_line(){
     5d0:	b580      	push	{r7, lr}
     5d2:	af00      	add	r7, sp, #0
	vt_clear_line(cursor_y+1);
     5d4:	4b03      	ldr	r3, [pc, #12]	; (5e4 <serial_clear_line+0x14>)
     5d6:	681b      	ldr	r3, [r3, #0]
     5d8:	3301      	adds	r3, #1
     5da:	4618      	mov	r0, r3
     5dc:	f002 fda2 	bl	3124 <vt_clear_line>
}
     5e0:	bf00      	nop
     5e2:	bd80      	pop	{r7, pc}
     5e4:	20000060 	.word	0x20000060

000005e8 <serial_clear_screen>:

static void serial_clear_screen(){
     5e8:	b580      	push	{r7, lr}
     5ea:	af00      	add	r7, sp, #0
	vt_cls();
     5ec:	f002 fd8a 	bl	3104 <vt_cls>
	cursor_home();
     5f0:	f7ff ff70 	bl	4d4 <cursor_home>
}
     5f4:	bf00      	nop
     5f6:	bd80      	pop	{r7, pc}

000005f8 <serial_flow_ctrl>:

static void serial_flow_ctrl(int i){
     5f8:	b580      	push	{r7, lr}
     5fa:	b082      	sub	sp, #8
     5fc:	af00      	add	r7, sp, #0
     5fe:	6078      	str	r0, [r7, #4]
		vt_flow_ctrl(i);
     600:	6878      	ldr	r0, [r7, #4]
     602:	f002 fdf9 	bl	31f8 <vt_flow_ctrl>
}	
     606:	bf00      	nop
     608:	3708      	adds	r7, #8
     60a:	46bd      	mov	sp, r7
     60c:	bd80      	pop	{r7, pc}

0000060e <queue_insert>:

//************************************************

static void queue_insert(char c){
     60e:	b580      	push	{r7, lr}
     610:	b084      	sub	sp, #16
     612:	af00      	add	r7, sp, #0
     614:	4603      	mov	r3, r0
     616:	71fb      	strb	r3, [r7, #7]
	unsigned count;
		con.queue[con.head++]=c;
     618:	4b16      	ldr	r3, [pc, #88]	; (674 <queue_insert+0x66>)
     61a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     61c:	1c5a      	adds	r2, r3, #1
     61e:	4915      	ldr	r1, [pc, #84]	; (674 <queue_insert+0x66>)
     620:	624a      	str	r2, [r1, #36]	; 0x24
     622:	4a14      	ldr	r2, [pc, #80]	; (674 <queue_insert+0x66>)
     624:	4413      	add	r3, r2
     626:	79fa      	ldrb	r2, [r7, #7]
     628:	705a      	strb	r2, [r3, #1]
		con.head&=CON_QUEUE_SIZE-1;
     62a:	4b12      	ldr	r3, [pc, #72]	; (674 <queue_insert+0x66>)
     62c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     62e:	f003 031f 	and.w	r3, r3, #31
     632:	4a10      	ldr	r2, [pc, #64]	; (674 <queue_insert+0x66>)
     634:	6253      	str	r3, [r2, #36]	; 0x24
		if (con.head>con.tail){
     636:	4b0f      	ldr	r3, [pc, #60]	; (674 <queue_insert+0x66>)
     638:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     63a:	4b0e      	ldr	r3, [pc, #56]	; (674 <queue_insert+0x66>)
     63c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     63e:	429a      	cmp	r2, r3
     640:	d906      	bls.n	650 <queue_insert+0x42>
			count=con.head-con.tail;
     642:	4b0c      	ldr	r3, [pc, #48]	; (674 <queue_insert+0x66>)
     644:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     646:	4b0b      	ldr	r3, [pc, #44]	; (674 <queue_insert+0x66>)
     648:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     64a:	1ad3      	subs	r3, r2, r3
     64c:	60fb      	str	r3, [r7, #12]
     64e:	e006      	b.n	65e <queue_insert+0x50>
		}else{
			count=CON_QUEUE_SIZE-con.tail+con.head;
     650:	4b08      	ldr	r3, [pc, #32]	; (674 <queue_insert+0x66>)
     652:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     654:	4b07      	ldr	r3, [pc, #28]	; (674 <queue_insert+0x66>)
     656:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     658:	1ad3      	subs	r3, r2, r3
     65a:	3320      	adds	r3, #32
     65c:	60fb      	str	r3, [r7, #12]
		}
		if (count>(CON_QUEUE_SIZE/2))con.flow_ctrl(0);
     65e:	68fb      	ldr	r3, [r7, #12]
     660:	2b10      	cmp	r3, #16
     662:	d903      	bls.n	66c <queue_insert+0x5e>
     664:	4b03      	ldr	r3, [pc, #12]	; (674 <queue_insert+0x66>)
     666:	6c9b      	ldr	r3, [r3, #72]	; 0x48
     668:	2000      	movs	r0, #0
     66a:	4798      	blx	r3
}
     66c:	bf00      	nop
     66e:	3710      	adds	r7, #16
     670:	46bd      	mov	sp, r7
     672:	bd80      	pop	{r7, pc}
     674:	20000480 	.word	0x20000480

00000678 <queue_getc>:

static char queue_getc(){
     678:	b580      	push	{r7, lr}
     67a:	b082      	sub	sp, #8
     67c:	af00      	add	r7, sp, #0
	char c;
	if (!get_active(IRQ_VT) && (con.head==con.tail))con.flow_ctrl(1);
     67e:	2026      	movs	r0, #38	; 0x26
     680:	f001 f89c 	bl	17bc <get_active>
     684:	4603      	mov	r3, r0
     686:	2b00      	cmp	r3, #0
     688:	d109      	bne.n	69e <queue_getc+0x26>
     68a:	4b12      	ldr	r3, [pc, #72]	; (6d4 <queue_getc+0x5c>)
     68c:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     68e:	4b11      	ldr	r3, [pc, #68]	; (6d4 <queue_getc+0x5c>)
     690:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     692:	429a      	cmp	r2, r3
     694:	d103      	bne.n	69e <queue_getc+0x26>
     696:	4b0f      	ldr	r3, [pc, #60]	; (6d4 <queue_getc+0x5c>)
     698:	6c9b      	ldr	r3, [r3, #72]	; 0x48
     69a:	2001      	movs	r0, #1
     69c:	4798      	blx	r3
	while (con.head==con.tail);
     69e:	bf00      	nop
     6a0:	4b0c      	ldr	r3, [pc, #48]	; (6d4 <queue_getc+0x5c>)
     6a2:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     6a4:	4b0b      	ldr	r3, [pc, #44]	; (6d4 <queue_getc+0x5c>)
     6a6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     6a8:	429a      	cmp	r2, r3
     6aa:	d0f9      	beq.n	6a0 <queue_getc+0x28>
	c=con.queue[con.tail++];
     6ac:	4b09      	ldr	r3, [pc, #36]	; (6d4 <queue_getc+0x5c>)
     6ae:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     6b0:	1c5a      	adds	r2, r3, #1
     6b2:	4908      	ldr	r1, [pc, #32]	; (6d4 <queue_getc+0x5c>)
     6b4:	628a      	str	r2, [r1, #40]	; 0x28
     6b6:	4a07      	ldr	r2, [pc, #28]	; (6d4 <queue_getc+0x5c>)
     6b8:	4413      	add	r3, r2
     6ba:	785b      	ldrb	r3, [r3, #1]
     6bc:	71fb      	strb	r3, [r7, #7]
	con.tail&=CON_QUEUE_SIZE-1;
     6be:	4b05      	ldr	r3, [pc, #20]	; (6d4 <queue_getc+0x5c>)
     6c0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     6c2:	f003 031f 	and.w	r3, r3, #31
     6c6:	4a03      	ldr	r2, [pc, #12]	; (6d4 <queue_getc+0x5c>)
     6c8:	6293      	str	r3, [r2, #40]	; 0x28
	return c;
     6ca:	79fb      	ldrb	r3, [r7, #7]
}
     6cc:	4618      	mov	r0, r3
     6ce:	3708      	adds	r7, #8
     6d0:	46bd      	mov	sp, r7
     6d2:	bd80      	pop	{r7, pc}
     6d4:	20000480 	.word	0x20000480

000006d8 <con_queue_flush>:


void con_queue_flush(){
     6d8:	b480      	push	{r7}
     6da:	af00      	add	r7, sp, #0
	con.tail=con.head=0;
     6dc:	2300      	movs	r3, #0
     6de:	4a04      	ldr	r2, [pc, #16]	; (6f0 <con_queue_flush+0x18>)
     6e0:	6253      	str	r3, [r2, #36]	; 0x24
     6e2:	4a03      	ldr	r2, [pc, #12]	; (6f0 <con_queue_flush+0x18>)
     6e4:	6293      	str	r3, [r2, #40]	; 0x28
}
     6e6:	bf00      	nop
     6e8:	46bd      	mov	sp, r7
     6ea:	bc80      	pop	{r7}
     6ec:	4770      	bx	lr
     6ee:	bf00      	nop
     6f0:	20000480 	.word	0x20000480

000006f4 <con_select>:

//static const char PROMPT[]=" OK\n";

void con_select(console_dev_t dev){
     6f4:	b580      	push	{r7, lr}
     6f6:	b082      	sub	sp, #8
     6f8:	af00      	add	r7, sp, #0
     6fa:	4603      	mov	r3, r0
     6fc:	71fb      	strb	r3, [r7, #7]
/* 2019/01/12 no more used
	local_text_cursor(0);
	kbd_enable(0);
*/
	disable_interrupt(IRQ_VT);
     6fe:	2026      	movs	r0, #38	; 0x26
     700:	f001 f822 	bl	1748 <disable_interrupt>
	con_queue_flush();
     704:	f7ff ffe8 	bl	6d8 <con_queue_flush>
	con.dev=dev;
     708:	4a12      	ldr	r2, [pc, #72]	; (754 <con_select+0x60>)
     70a:	79fb      	ldrb	r3, [r7, #7]
     70c:	7013      	strb	r3, [r2, #0]
	cursor_home();
     70e:	f7ff fee1 	bl	4d4 <cursor_home>

		kbd_enable(1);
		local_text_cursor(1);
*/ 
//	}else{
		screen_width=VT_SCREEN_WIDTH;
     712:	4b11      	ldr	r3, [pc, #68]	; (758 <con_select+0x64>)
     714:	2250      	movs	r2, #80	; 0x50
     716:	601a      	str	r2, [r3, #0]
		screen_height=VT_SCREEN_HEIGHT;
     718:	4b10      	ldr	r3, [pc, #64]	; (75c <con_select+0x68>)
     71a:	2218      	movs	r2, #24
     71c:	601a      	str	r2, [r3, #0]
		con.putc=serial_putc;
     71e:	4b0d      	ldr	r3, [pc, #52]	; (754 <con_select+0x60>)
     720:	4a0f      	ldr	r2, [pc, #60]	; (760 <con_select+0x6c>)
     722:	635a      	str	r2, [r3, #52]	; 0x34
		con.cls=serial_clear_screen;
     724:	4b0b      	ldr	r3, [pc, #44]	; (754 <con_select+0x60>)
     726:	4a0f      	ldr	r2, [pc, #60]	; (764 <con_select+0x70>)
     728:	63da      	str	r2, [r3, #60]	; 0x3c
		con.delete_back=vt_del_back;
     72a:	4b0a      	ldr	r3, [pc, #40]	; (754 <con_select+0x60>)
     72c:	4a0e      	ldr	r2, [pc, #56]	; (768 <con_select+0x74>)
     72e:	639a      	str	r2, [r3, #56]	; 0x38
		con.clrln=serial_clear_line;
     730:	4b08      	ldr	r3, [pc, #32]	; (754 <con_select+0x60>)
     732:	4a0e      	ldr	r2, [pc, #56]	; (76c <con_select+0x78>)
     734:	641a      	str	r2, [r3, #64]	; 0x40
		con.crlf=serial_crlf;
     736:	4b07      	ldr	r3, [pc, #28]	; (754 <con_select+0x60>)
     738:	4a0d      	ldr	r2, [pc, #52]	; (770 <con_select+0x7c>)
     73a:	645a      	str	r2, [r3, #68]	; 0x44
		con.flow_ctrl=serial_flow_ctrl;
     73c:	4b05      	ldr	r3, [pc, #20]	; (754 <con_select+0x60>)
     73e:	4a0d      	ldr	r2, [pc, #52]	; (774 <con_select+0x80>)
     740:	649a      	str	r2, [r3, #72]	; 0x48
		enable_interrupt(IRQ_VT);
     742:	2026      	movs	r0, #38	; 0x26
     744:	f000 ffdc 	bl	1700 <enable_interrupt>
//	}
	cls();
     748:	f000 fac8 	bl	cdc <cls>
//	print(PROMPT);
}
     74c:	bf00      	nop
     74e:	3708      	adds	r7, #8
     750:	46bd      	mov	sp, r7
     752:	bd80      	pop	{r7, pc}
     754:	20000480 	.word	0x20000480
     758:	20000064 	.word	0x20000064
     75c:	20000068 	.word	0x20000068
     760:	000005a1 	.word	0x000005a1
     764:	000005e9 	.word	0x000005e9
     768:	000030c5 	.word	0x000030c5
     76c:	000005d1 	.word	0x000005d1
     770:	000005bf 	.word	0x000005bf
     774:	000005f9 	.word	0x000005f9

00000778 <console_init>:

void console_init(console_dev_t dev){
     778:	b580      	push	{r7, lr}
     77a:	b082      	sub	sp, #8
     77c:	af00      	add	r7, sp, #0
     77e:	4603      	mov	r3, r0
     780:	71fb      	strb	r3, [r7, #7]
	con.getc=queue_getc;
     782:	4b07      	ldr	r3, [pc, #28]	; (7a0 <console_init+0x28>)
     784:	4a07      	ldr	r2, [pc, #28]	; (7a4 <console_init+0x2c>)
     786:	631a      	str	r2, [r3, #48]	; 0x30
	con.insert=queue_insert;
     788:	4b05      	ldr	r3, [pc, #20]	; (7a0 <console_init+0x28>)
     78a:	4a07      	ldr	r2, [pc, #28]	; (7a8 <console_init+0x30>)
     78c:	62da      	str	r2, [r3, #44]	; 0x2c
	con_select(dev);
     78e:	79fb      	ldrb	r3, [r7, #7]
     790:	4618      	mov	r0, r3
     792:	f7ff ffaf 	bl	6f4 <con_select>
}
     796:	bf00      	nop
     798:	3708      	adds	r7, #8
     79a:	46bd      	mov	sp, r7
     79c:	bd80      	pop	{r7, pc}
     79e:	bf00      	nop
     7a0:	20000480 	.word	0x20000480
     7a4:	00000679 	.word	0x00000679
     7a8:	0000060f 	.word	0x0000060f

000007ac <constat>:

// vérifie s'il y a un caractère en attente.
char constat(){
     7ac:	b480      	push	{r7}
     7ae:	af00      	add	r7, sp, #0
	return con.tail!=con.head;
     7b0:	4b06      	ldr	r3, [pc, #24]	; (7cc <constat+0x20>)
     7b2:	6a9a      	ldr	r2, [r3, #40]	; 0x28
     7b4:	4b05      	ldr	r3, [pc, #20]	; (7cc <constat+0x20>)
     7b6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     7b8:	429a      	cmp	r2, r3
     7ba:	bf14      	ite	ne
     7bc:	2301      	movne	r3, #1
     7be:	2300      	moveq	r3, #0
     7c0:	b2db      	uxtb	r3, r3
}
     7c2:	4618      	mov	r0, r3
     7c4:	46bd      	mov	sp, r7
     7c6:	bc80      	pop	{r7}
     7c8:	4770      	bx	lr
     7ca:	bf00      	nop
     7cc:	20000480 	.word	0x20000480

000007d0 <conout>:

// envoie d'un caractère à la console
void conout(char c){
     7d0:	b580      	push	{r7, lr}
     7d2:	b082      	sub	sp, #8
     7d4:	af00      	add	r7, sp, #0
     7d6:	4603      	mov	r3, r0
     7d8:	71fb      	strb	r3, [r7, #7]
	switch(c){
     7da:	79fb      	ldrb	r3, [r7, #7]
     7dc:	3b08      	subs	r3, #8
     7de:	2b05      	cmp	r3, #5
     7e0:	d839      	bhi.n	856 <conout+0x86>
     7e2:	a201      	add	r2, pc, #4	; (adr r2, 7e8 <conout+0x18>)
     7e4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     7e8:	0000083d 	.word	0x0000083d
     7ec:	00000809 	.word	0x00000809
     7f0:	00000801 	.word	0x00000801
     7f4:	00000857 	.word	0x00000857
     7f8:	00000857 	.word	0x00000857
     7fc:	00000801 	.word	0x00000801
		case CR:
		case '\n':
			con.crlf();
     800:	4b1b      	ldr	r3, [pc, #108]	; (870 <conout+0xa0>)
     802:	6c5b      	ldr	r3, [r3, #68]	; 0x44
     804:	4798      	blx	r3
			break;
     806:	e02f      	b.n	868 <conout+0x98>
		case TAB:
			con.putc(SPACE);
     808:	4b19      	ldr	r3, [pc, #100]	; (870 <conout+0xa0>)
     80a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     80c:	2020      	movs	r0, #32
     80e:	4798      	blx	r3
			if (!cursor_x){
     810:	4b18      	ldr	r3, [pc, #96]	; (874 <conout+0xa4>)
     812:	681b      	ldr	r3, [r3, #0]
     814:	2b00      	cmp	r3, #0
     816:	d024      	beq.n	862 <conout+0x92>
				break;
			}
			while (cursor_x%tab_width){
     818:	e003      	b.n	822 <conout+0x52>
				con.putc(SPACE);
     81a:	4b15      	ldr	r3, [pc, #84]	; (870 <conout+0xa0>)
     81c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     81e:	2020      	movs	r0, #32
     820:	4798      	blx	r3
			while (cursor_x%tab_width){
     822:	4b14      	ldr	r3, [pc, #80]	; (874 <conout+0xa4>)
     824:	681b      	ldr	r3, [r3, #0]
     826:	461a      	mov	r2, r3
     828:	4b13      	ldr	r3, [pc, #76]	; (878 <conout+0xa8>)
     82a:	681b      	ldr	r3, [r3, #0]
     82c:	fbb2 f1f3 	udiv	r1, r2, r3
     830:	fb03 f301 	mul.w	r3, r3, r1
     834:	1ad3      	subs	r3, r2, r3
     836:	2b00      	cmp	r3, #0
     838:	d1ef      	bne.n	81a <conout+0x4a>
			}
			break;
     83a:	e015      	b.n	868 <conout+0x98>
		case BS:
			if (cursor_x){
     83c:	4b0d      	ldr	r3, [pc, #52]	; (874 <conout+0xa4>)
     83e:	681b      	ldr	r3, [r3, #0]
     840:	2b00      	cmp	r3, #0
     842:	d010      	beq.n	866 <conout+0x96>
				con.delete_back();
     844:	4b0a      	ldr	r3, [pc, #40]	; (870 <conout+0xa0>)
     846:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     848:	4798      	blx	r3
				cursor_x--;
     84a:	4b0a      	ldr	r3, [pc, #40]	; (874 <conout+0xa4>)
     84c:	681b      	ldr	r3, [r3, #0]
     84e:	3b01      	subs	r3, #1
     850:	4a08      	ldr	r2, [pc, #32]	; (874 <conout+0xa4>)
     852:	6013      	str	r3, [r2, #0]
			}
			break;
     854:	e007      	b.n	866 <conout+0x96>
		default:
			con.putc(c);
     856:	4b06      	ldr	r3, [pc, #24]	; (870 <conout+0xa0>)
     858:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     85a:	79fa      	ldrb	r2, [r7, #7]
     85c:	4610      	mov	r0, r2
     85e:	4798      	blx	r3
	}
}
     860:	e002      	b.n	868 <conout+0x98>
				break;
     862:	bf00      	nop
     864:	e000      	b.n	868 <conout+0x98>
			break;
     866:	bf00      	nop
}
     868:	bf00      	nop
     86a:	3708      	adds	r7, #8
     86c:	46bd      	mov	sp, r7
     86e:	bd80      	pop	{r7, pc}
     870:	20000480 	.word	0x20000480
     874:	2000005c 	.word	0x2000005c
     878:	20000000 	.word	0x20000000

0000087c <conin>:


// réception d'un caractère de la console
char conin(){
     87c:	b580      	push	{r7, lr}
     87e:	af00      	add	r7, sp, #0
	return con.getc();
     880:	4b02      	ldr	r3, [pc, #8]	; (88c <conin+0x10>)
     882:	6b1b      	ldr	r3, [r3, #48]	; 0x30
     884:	4798      	blx	r3
     886:	4603      	mov	r3, r0
}
     888:	4618      	mov	r0, r3
     88a:	bd80      	pop	{r7, pc}
     88c:	20000480 	.word	0x20000480

00000890 <print>:

// imprime un chaîne sur la console
void print(const char *str){
     890:	b580      	push	{r7, lr}
     892:	b082      	sub	sp, #8
     894:	af00      	add	r7, sp, #0
     896:	6078      	str	r0, [r7, #4]
	while (*str) {conout(*str++);}
     898:	e006      	b.n	8a8 <print+0x18>
     89a:	687b      	ldr	r3, [r7, #4]
     89c:	1c5a      	adds	r2, r3, #1
     89e:	607a      	str	r2, [r7, #4]
     8a0:	781b      	ldrb	r3, [r3, #0]
     8a2:	4618      	mov	r0, r3
     8a4:	f7ff ff94 	bl	7d0 <conout>
     8a8:	687b      	ldr	r3, [r7, #4]
     8aa:	781b      	ldrb	r3, [r3, #0]
     8ac:	2b00      	cmp	r3, #0
     8ae:	d1f4      	bne.n	89a <print+0xa>
}
     8b0:	bf00      	nop
     8b2:	3708      	adds	r7, #8
     8b4:	46bd      	mov	sp, r7
     8b6:	bd80      	pop	{r7, pc}

000008b8 <println>:

// imprime une chaîne et force un retour
// à la ligne.
void println(const char *str){
     8b8:	b580      	push	{r7, lr}
     8ba:	b082      	sub	sp, #8
     8bc:	af00      	add	r7, sp, #0
     8be:	6078      	str	r0, [r7, #4]
	while (*str) {conout(*str++);}
     8c0:	e006      	b.n	8d0 <println+0x18>
     8c2:	687b      	ldr	r3, [r7, #4]
     8c4:	1c5a      	adds	r2, r3, #1
     8c6:	607a      	str	r2, [r7, #4]
     8c8:	781b      	ldrb	r3, [r3, #0]
     8ca:	4618      	mov	r0, r3
     8cc:	f7ff ff80 	bl	7d0 <conout>
     8d0:	687b      	ldr	r3, [r7, #4]
     8d2:	781b      	ldrb	r3, [r3, #0]
     8d4:	2b00      	cmp	r3, #0
     8d6:	d1f4      	bne.n	8c2 <println+0xa>
	conout(CR);
     8d8:	200d      	movs	r0, #13
     8da:	f7ff ff79 	bl	7d0 <conout>
}
     8de:	bf00      	nop
     8e0:	3708      	adds	r7, #8
     8e2:	46bd      	mov	sp, r7
     8e4:	bd80      	pop	{r7, pc}

000008e6 <delete_back>:

// efface le caractère à gauche du curseur
void delete_back(){
     8e6:	b580      	push	{r7, lr}
     8e8:	af00      	add	r7, sp, #0
	con.delete_back();
     8ea:	4b02      	ldr	r3, [pc, #8]	; (8f4 <delete_back+0xe>)
     8ec:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     8ee:	4798      	blx	r3
}
     8f0:	bf00      	nop
     8f2:	bd80      	pop	{r7, pc}
     8f4:	20000480 	.word	0x20000480

000008f8 <delete_nchar>:

// efface n caractères
static void delete_nchar(int n){
     8f8:	b580      	push	{r7, lr}
     8fa:	b082      	sub	sp, #8
     8fc:	af00      	add	r7, sp, #0
     8fe:	6078      	str	r0, [r7, #4]
	while (n){
     900:	e005      	b.n	90e <delete_nchar+0x16>
		con.delete_back();
     902:	4b06      	ldr	r3, [pc, #24]	; (91c <delete_nchar+0x24>)
     904:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     906:	4798      	blx	r3
		n--;
     908:	687b      	ldr	r3, [r7, #4]
     90a:	3b01      	subs	r3, #1
     90c:	607b      	str	r3, [r7, #4]
	while (n){
     90e:	687b      	ldr	r3, [r7, #4]
     910:	2b00      	cmp	r3, #0
     912:	d1f6      	bne.n	902 <delete_nchar+0xa>
	}
}
     914:	bf00      	nop
     916:	3708      	adds	r7, #8
     918:	46bd      	mov	sp, r7
     91a:	bd80      	pop	{r7, pc}
     91c:	20000480 	.word	0x20000480

00000920 <beep>:

static void beep(){
     920:	b480      	push	{r7}
     922:	af00      	add	r7, sp, #0
}
     924:	bf00      	nop
     926:	46bd      	mov	sp, r7
     928:	bc80      	pop	{r7}
     92a:	4770      	bx	lr

0000092c <read_line>:

// reçoit une ligne de texte de la console
// si buffer contient du texte une copie est préservée.
unsigned read_line(char *buffer,unsigned buf_len){
     92c:	b580      	push	{r7, lr}
     92e:	b086      	sub	sp, #24
     930:	af00      	add	r7, sp, #0
     932:	6078      	str	r0, [r7, #4]
     934:	6039      	str	r1, [r7, #0]
	unsigned ll, line_len=0;
     936:	2300      	movs	r3, #0
     938:	617b      	str	r3, [r7, #20]
	char c=0;
     93a:	2300      	movs	r3, #0
     93c:	74fb      	strb	r3, [r7, #19]
	char *new_buff=alloc(buf_len);
     93e:	6838      	ldr	r0, [r7, #0]
     940:	f7ff fd10 	bl	364 <alloc>
     944:	60f8      	str	r0, [r7, #12]
	
	buf_len--;
     946:	683b      	ldr	r3, [r7, #0]
     948:	3b01      	subs	r3, #1
     94a:	603b      	str	r3, [r7, #0]
	if (buf_len>(screen_width-cursor_x-1)){
     94c:	4b6c      	ldr	r3, [pc, #432]	; (b00 <read_line+0x1d4>)
     94e:	681a      	ldr	r2, [r3, #0]
     950:	4b6c      	ldr	r3, [pc, #432]	; (b04 <read_line+0x1d8>)
     952:	681b      	ldr	r3, [r3, #0]
     954:	1ad3      	subs	r3, r2, r3
     956:	3b01      	subs	r3, #1
     958:	461a      	mov	r2, r3
     95a:	683b      	ldr	r3, [r7, #0]
     95c:	429a      	cmp	r2, r3
     95e:	f080 80b8 	bcs.w	ad2 <read_line+0x1a6>
		buf_len=screen_width-cursor_x-1;
     962:	4b67      	ldr	r3, [pc, #412]	; (b00 <read_line+0x1d4>)
     964:	681a      	ldr	r2, [r3, #0]
     966:	4b67      	ldr	r3, [pc, #412]	; (b04 <read_line+0x1d8>)
     968:	681b      	ldr	r3, [r3, #0]
     96a:	1ad3      	subs	r3, r2, r3
     96c:	3b01      	subs	r3, #1
     96e:	603b      	str	r3, [r7, #0]
	}
	while (c!=CR){
     970:	e0af      	b.n	ad2 <read_line+0x1a6>
			c=con.getc();
     972:	4b65      	ldr	r3, [pc, #404]	; (b08 <read_line+0x1dc>)
     974:	6b1b      	ldr	r3, [r3, #48]	; 0x30
     976:	4798      	blx	r3
     978:	4603      	mov	r3, r0
     97a:	74fb      	strb	r3, [r7, #19]
			switch(c){
     97c:	7cfb      	ldrb	r3, [r7, #19]
     97e:	2b18      	cmp	r3, #24
     980:	f200 8091 	bhi.w	aa6 <read_line+0x17a>
     984:	a201      	add	r2, pc, #4	; (adr r2, 98c <read_line+0x60>)
     986:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     98a:	bf00      	nop
     98c:	00000ad3 	.word	0x00000ad3
     990:	00000aa7 	.word	0x00000aa7
     994:	00000aa7 	.word	0x00000aa7
     998:	00000aa7 	.word	0x00000aa7
     99c:	00000aa7 	.word	0x00000aa7
     9a0:	00000a97 	.word	0x00000a97
     9a4:	00000aa7 	.word	0x00000aa7
     9a8:	00000aa7 	.word	0x00000aa7
     9ac:	00000a83 	.word	0x00000a83
     9b0:	00000aa3 	.word	0x00000aa3
     9b4:	000009f1 	.word	0x000009f1
     9b8:	00000aa7 	.word	0x00000aa7
     9bc:	00000aa7 	.word	0x00000aa7
     9c0:	000009f1 	.word	0x000009f1
     9c4:	00000aa7 	.word	0x00000aa7
     9c8:	00000aa7 	.word	0x00000aa7
     9cc:	00000aa7 	.word	0x00000aa7
     9d0:	00000aa7 	.word	0x00000aa7
     9d4:	000009fd 	.word	0x000009fd
     9d8:	00000aa7 	.word	0x00000aa7
     9dc:	00000aa7 	.word	0x00000aa7
     9e0:	00000a31 	.word	0x00000a31
     9e4:	00000aa7 	.word	0x00000aa7
     9e8:	00000a4b 	.word	0x00000a4b
     9ec:	00000a31 	.word	0x00000a31
			case NUL:
				break;
			case CR:
			case LF:
				c=CR;
     9f0:	230d      	movs	r3, #13
     9f2:	74fb      	strb	r3, [r7, #19]
				con.crlf();
     9f4:	4b44      	ldr	r3, [pc, #272]	; (b08 <read_line+0x1dc>)
     9f6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
     9f8:	4798      	blx	r3
				break;
     9fa:	e06a      	b.n	ad2 <read_line+0x1a6>
			case CTRL_R:
				if (strlen(buffer)){
     9fc:	687b      	ldr	r3, [r7, #4]
     9fe:	781b      	ldrb	r3, [r3, #0]
     a00:	2b00      	cmp	r3, #0
     a02:	d066      	beq.n	ad2 <read_line+0x1a6>
					ll=strlen(buffer);
     a04:	6878      	ldr	r0, [r7, #4]
     a06:	f000 fc6e 	bl	12e6 <strlen>
     a0a:	4603      	mov	r3, r0
     a0c:	60bb      	str	r3, [r7, #8]
					move(buffer,new_buff,ll+1);
     a0e:	68bb      	ldr	r3, [r7, #8]
     a10:	3301      	adds	r3, #1
     a12:	461a      	mov	r2, r3
     a14:	68f9      	ldr	r1, [r7, #12]
     a16:	6878      	ldr	r0, [r7, #4]
     a18:	f000 fc4b 	bl	12b2 <move>
					delete_nchar(line_len);
     a1c:	697b      	ldr	r3, [r7, #20]
     a1e:	4618      	mov	r0, r3
     a20:	f7ff ff6a 	bl	8f8 <delete_nchar>
					print(new_buff);
     a24:	68f8      	ldr	r0, [r7, #12]
     a26:	f7ff ff33 	bl	890 <print>
					line_len=ll;
     a2a:	68bb      	ldr	r3, [r7, #8]
     a2c:	617b      	str	r3, [r7, #20]
				}
				break;
     a2e:	e050      	b.n	ad2 <read_line+0x1a6>
			case CTRL_X:
			case CTRL_U: // efface la ligne
				delete_nchar(line_len);
     a30:	697b      	ldr	r3, [r7, #20]
     a32:	4618      	mov	r0, r3
     a34:	f7ff ff60 	bl	8f8 <delete_nchar>
				line_len=0;
     a38:	2300      	movs	r3, #0
     a3a:	617b      	str	r3, [r7, #20]
				break;
     a3c:	e049      	b.n	ad2 <read_line+0x1a6>
			case CTRL_W: // efacce le dernier mot
				while (line_len && (new_buff[line_len-1]==SPACE)){
					con.delete_back();
     a3e:	4b32      	ldr	r3, [pc, #200]	; (b08 <read_line+0x1dc>)
     a40:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     a42:	4798      	blx	r3
					line_len--;
     a44:	697b      	ldr	r3, [r7, #20]
     a46:	3b01      	subs	r3, #1
     a48:	617b      	str	r3, [r7, #20]
				while (line_len && (new_buff[line_len-1]==SPACE)){
     a4a:	697b      	ldr	r3, [r7, #20]
     a4c:	2b00      	cmp	r3, #0
     a4e:	d00d      	beq.n	a6c <read_line+0x140>
     a50:	697b      	ldr	r3, [r7, #20]
     a52:	3b01      	subs	r3, #1
     a54:	68fa      	ldr	r2, [r7, #12]
     a56:	4413      	add	r3, r2
     a58:	781b      	ldrb	r3, [r3, #0]
     a5a:	2b20      	cmp	r3, #32
     a5c:	d0ef      	beq.n	a3e <read_line+0x112>
				}
				while (line_len && (new_buff[line_len-1]!=SPACE)){
     a5e:	e005      	b.n	a6c <read_line+0x140>
					con.delete_back();
     a60:	4b29      	ldr	r3, [pc, #164]	; (b08 <read_line+0x1dc>)
     a62:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     a64:	4798      	blx	r3
					line_len--;
     a66:	697b      	ldr	r3, [r7, #20]
     a68:	3b01      	subs	r3, #1
     a6a:	617b      	str	r3, [r7, #20]
				while (line_len && (new_buff[line_len-1]!=SPACE)){
     a6c:	697b      	ldr	r3, [r7, #20]
     a6e:	2b00      	cmp	r3, #0
     a70:	d02f      	beq.n	ad2 <read_line+0x1a6>
     a72:	697b      	ldr	r3, [r7, #20]
     a74:	3b01      	subs	r3, #1
     a76:	68fa      	ldr	r2, [r7, #12]
     a78:	4413      	add	r3, r2
     a7a:	781b      	ldrb	r3, [r3, #0]
     a7c:	2b20      	cmp	r3, #32
     a7e:	d1ef      	bne.n	a60 <read_line+0x134>
				}
				break;
     a80:	e027      	b.n	ad2 <read_line+0x1a6>
			case BS:
				if (line_len){
     a82:	697b      	ldr	r3, [r7, #20]
     a84:	2b00      	cmp	r3, #0
     a86:	d024      	beq.n	ad2 <read_line+0x1a6>
					con.delete_back();
     a88:	4b1f      	ldr	r3, [pc, #124]	; (b08 <read_line+0x1dc>)
     a8a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     a8c:	4798      	blx	r3
					line_len--;
     a8e:	697b      	ldr	r3, [r7, #20]
     a90:	3b01      	subs	r3, #1
     a92:	617b      	str	r3, [r7, #20]
				}
				break;
     a94:	e01d      	b.n	ad2 <read_line+0x1a6>
			case CTRL_E: // efface l'écran
				con.cls();
     a96:	4b1c      	ldr	r3, [pc, #112]	; (b08 <read_line+0x1dc>)
     a98:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
     a9a:	4798      	blx	r3
				line_len=0;
     a9c:	2300      	movs	r3, #0
     a9e:	617b      	str	r3, [r7, #20]
				break;
     aa0:	e017      	b.n	ad2 <read_line+0x1a6>
			case TAB:
				c=SPACE;
     aa2:	2320      	movs	r3, #32
     aa4:	74fb      	strb	r3, [r7, #19]
			default:
				if ((line_len<buf_len) && (c>=32)){
     aa6:	697a      	ldr	r2, [r7, #20]
     aa8:	683b      	ldr	r3, [r7, #0]
     aaa:	429a      	cmp	r2, r3
     aac:	d20f      	bcs.n	ace <read_line+0x1a2>
     aae:	7cfb      	ldrb	r3, [r7, #19]
     ab0:	2b1f      	cmp	r3, #31
     ab2:	d90c      	bls.n	ace <read_line+0x1a2>
					new_buff[line_len++]=c;
     ab4:	697b      	ldr	r3, [r7, #20]
     ab6:	1c5a      	adds	r2, r3, #1
     ab8:	617a      	str	r2, [r7, #20]
     aba:	68fa      	ldr	r2, [r7, #12]
     abc:	4413      	add	r3, r2
     abe:	7cfa      	ldrb	r2, [r7, #19]
     ac0:	701a      	strb	r2, [r3, #0]
					con.putc(c);
     ac2:	4b11      	ldr	r3, [pc, #68]	; (b08 <read_line+0x1dc>)
     ac4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     ac6:	7cfa      	ldrb	r2, [r7, #19]
     ac8:	4610      	mov	r0, r2
     aca:	4798      	blx	r3
     acc:	e001      	b.n	ad2 <read_line+0x1a6>
				}else{
					beep();
     ace:	f7ff ff27 	bl	920 <beep>
	while (c!=CR){
     ad2:	7cfb      	ldrb	r3, [r7, #19]
     ad4:	2b0d      	cmp	r3, #13
     ad6:	f47f af4c 	bne.w	972 <read_line+0x46>
				}
			}
	}
	move(new_buff,buffer,line_len);
     ada:	697a      	ldr	r2, [r7, #20]
     adc:	6879      	ldr	r1, [r7, #4]
     ade:	68f8      	ldr	r0, [r7, #12]
     ae0:	f000 fbe7 	bl	12b2 <move>
	buffer[line_len]=0;
     ae4:	687a      	ldr	r2, [r7, #4]
     ae6:	697b      	ldr	r3, [r7, #20]
     ae8:	4413      	add	r3, r2
     aea:	2200      	movs	r2, #0
     aec:	701a      	strb	r2, [r3, #0]
	free(new_buff);
     aee:	68f8      	ldr	r0, [r7, #12]
     af0:	f7ff fc5a 	bl	3a8 <free>
	return line_len;
     af4:	697b      	ldr	r3, [r7, #20]
}
     af6:	4618      	mov	r0, r3
     af8:	3718      	adds	r7, #24
     afa:	46bd      	mov	sp, r7
     afc:	bd80      	pop	{r7, pc}
     afe:	bf00      	nop
     b00:	20000064 	.word	0x20000064
     b04:	2000005c 	.word	0x2000005c
     b08:	20000480 	.word	0x20000480

00000b0c <print_int>:

// imprime un entier
// i entier à imprimer
// base  numérique
void print_int(int i, unsigned base){
     b0c:	b580      	push	{r7, lr}
     b0e:	b08e      	sub	sp, #56	; 0x38
     b10:	af00      	add	r7, sp, #0
     b12:	6078      	str	r0, [r7, #4]
     b14:	6039      	str	r1, [r7, #0]
	char fmt[36];
	int sign=1;
     b16:	2301      	movs	r3, #1
     b18:	637b      	str	r3, [r7, #52]	; 0x34
	int pos=33;
     b1a:	2321      	movs	r3, #33	; 0x21
     b1c:	633b      	str	r3, [r7, #48]	; 0x30
	fmt[35]=0;
     b1e:	2300      	movs	r3, #0
     b20:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
	fmt[34]=' ';
     b24:	2320      	movs	r3, #32
     b26:	f887 302e 	strb.w	r3, [r7, #46]	; 0x2e
	if (i<0) {sign=-1; i=-i;}
     b2a:	687b      	ldr	r3, [r7, #4]
     b2c:	2b00      	cmp	r3, #0
     b2e:	da33      	bge.n	b98 <print_int+0x8c>
     b30:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     b34:	637b      	str	r3, [r7, #52]	; 0x34
     b36:	687b      	ldr	r3, [r7, #4]
     b38:	425b      	negs	r3, r3
     b3a:	607b      	str	r3, [r7, #4]
	while (i){
     b3c:	e02c      	b.n	b98 <print_int+0x8c>
		fmt[pos]=i%base+'0';
     b3e:	687b      	ldr	r3, [r7, #4]
     b40:	683a      	ldr	r2, [r7, #0]
     b42:	fbb3 f2f2 	udiv	r2, r3, r2
     b46:	6839      	ldr	r1, [r7, #0]
     b48:	fb01 f202 	mul.w	r2, r1, r2
     b4c:	1a9b      	subs	r3, r3, r2
     b4e:	b2db      	uxtb	r3, r3
     b50:	3330      	adds	r3, #48	; 0x30
     b52:	b2d9      	uxtb	r1, r3
     b54:	f107 020c 	add.w	r2, r7, #12
     b58:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b5a:	4413      	add	r3, r2
     b5c:	460a      	mov	r2, r1
     b5e:	701a      	strb	r2, [r3, #0]
		if (fmt[pos]>'9') {fmt[pos]+=7;}
     b60:	f107 020c 	add.w	r2, r7, #12
     b64:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b66:	4413      	add	r3, r2
     b68:	781b      	ldrb	r3, [r3, #0]
     b6a:	2b39      	cmp	r3, #57	; 0x39
     b6c:	d90c      	bls.n	b88 <print_int+0x7c>
     b6e:	f107 020c 	add.w	r2, r7, #12
     b72:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b74:	4413      	add	r3, r2
     b76:	781b      	ldrb	r3, [r3, #0]
     b78:	3307      	adds	r3, #7
     b7a:	b2d9      	uxtb	r1, r3
     b7c:	f107 020c 	add.w	r2, r7, #12
     b80:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b82:	4413      	add	r3, r2
     b84:	460a      	mov	r2, r1
     b86:	701a      	strb	r2, [r3, #0]
		pos--;
     b88:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b8a:	3b01      	subs	r3, #1
     b8c:	633b      	str	r3, [r7, #48]	; 0x30
		i/=base;
     b8e:	687a      	ldr	r2, [r7, #4]
     b90:	683b      	ldr	r3, [r7, #0]
     b92:	fbb2 f3f3 	udiv	r3, r2, r3
     b96:	607b      	str	r3, [r7, #4]
	while (i){
     b98:	687b      	ldr	r3, [r7, #4]
     b9a:	2b00      	cmp	r3, #0
     b9c:	d1cf      	bne.n	b3e <print_int+0x32>
	}
	if (pos==33){ fmt[pos--]='0';}
     b9e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ba0:	2b21      	cmp	r3, #33	; 0x21
     ba2:	d108      	bne.n	bb6 <print_int+0xaa>
     ba4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ba6:	1e5a      	subs	r2, r3, #1
     ba8:	633a      	str	r2, [r7, #48]	; 0x30
     baa:	f107 0238 	add.w	r2, r7, #56	; 0x38
     bae:	4413      	add	r3, r2
     bb0:	2230      	movs	r2, #48	; 0x30
     bb2:	f803 2c2c 	strb.w	r2, [r3, #-44]
	if (sign<0) {fmt[pos]='-';}else{fmt[pos]=' ';}
     bb6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     bb8:	2b00      	cmp	r3, #0
     bba:	da06      	bge.n	bca <print_int+0xbe>
     bbc:	f107 020c 	add.w	r2, r7, #12
     bc0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bc2:	4413      	add	r3, r2
     bc4:	222d      	movs	r2, #45	; 0x2d
     bc6:	701a      	strb	r2, [r3, #0]
     bc8:	e005      	b.n	bd6 <print_int+0xca>
     bca:	f107 020c 	add.w	r2, r7, #12
     bce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bd0:	4413      	add	r3, r2
     bd2:	2220      	movs	r2, #32
     bd4:	701a      	strb	r2, [r3, #0]
	print(&fmt[pos]);
     bd6:	f107 020c 	add.w	r2, r7, #12
     bda:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bdc:	4413      	add	r3, r2
     bde:	4618      	mov	r0, r3
     be0:	f7ff fe56 	bl	890 <print>
}
     be4:	bf00      	nop
     be6:	3738      	adds	r7, #56	; 0x38
     be8:	46bd      	mov	sp, r7
     bea:	bd80      	pop	{r7, pc}

00000bec <print_hex>:

// imprime un entier non signé en hexadécimal
void print_hex(unsigned u, int w){
     bec:	b580      	push	{r7, lr}
     bee:	b086      	sub	sp, #24
     bf0:	af00      	add	r7, sp, #0
     bf2:	6078      	str	r0, [r7, #4]
     bf4:	6039      	str	r1, [r7, #0]
	char fmt[12];
	int pos=11;
     bf6:	230b      	movs	r3, #11
     bf8:	617b      	str	r3, [r7, #20]
	fmt[pos--]=0;
     bfa:	697b      	ldr	r3, [r7, #20]
     bfc:	1e5a      	subs	r2, r3, #1
     bfe:	617a      	str	r2, [r7, #20]
     c00:	f107 0218 	add.w	r2, r7, #24
     c04:	4413      	add	r3, r2
     c06:	2200      	movs	r2, #0
     c08:	f803 2c10 	strb.w	r2, [r3, #-16]
	fmt[pos--]=' ';
     c0c:	697b      	ldr	r3, [r7, #20]
     c0e:	1e5a      	subs	r2, r3, #1
     c10:	617a      	str	r2, [r7, #20]
     c12:	f107 0218 	add.w	r2, r7, #24
     c16:	4413      	add	r3, r2
     c18:	2220      	movs	r2, #32
     c1a:	f803 2c10 	strb.w	r2, [r3, #-16]
	if (!u) fmt[pos--]='0';
     c1e:	687b      	ldr	r3, [r7, #4]
     c20:	2b00      	cmp	r3, #0
     c22:	d108      	bne.n	c36 <print_hex+0x4a>
     c24:	697b      	ldr	r3, [r7, #20]
     c26:	1e5a      	subs	r2, r3, #1
     c28:	617a      	str	r2, [r7, #20]
     c2a:	f107 0218 	add.w	r2, r7, #24
     c2e:	4413      	add	r3, r2
     c30:	2230      	movs	r2, #48	; 0x30
     c32:	f803 2c10 	strb.w	r2, [r3, #-16]
	w=9-w;
     c36:	683b      	ldr	r3, [r7, #0]
     c38:	f1c3 0309 	rsb	r3, r3, #9
     c3c:	603b      	str	r3, [r7, #0]
	if (w<1) w=1;
     c3e:	683b      	ldr	r3, [r7, #0]
     c40:	2b00      	cmp	r3, #0
     c42:	dc29      	bgt.n	c98 <print_hex+0xac>
     c44:	2301      	movs	r3, #1
     c46:	603b      	str	r3, [r7, #0]
	while (u){
     c48:	e026      	b.n	c98 <print_hex+0xac>
		fmt[pos]=u%16+'0';
     c4a:	687b      	ldr	r3, [r7, #4]
     c4c:	b2db      	uxtb	r3, r3
     c4e:	f003 030f 	and.w	r3, r3, #15
     c52:	b2db      	uxtb	r3, r3
     c54:	3330      	adds	r3, #48	; 0x30
     c56:	b2d9      	uxtb	r1, r3
     c58:	f107 0208 	add.w	r2, r7, #8
     c5c:	697b      	ldr	r3, [r7, #20]
     c5e:	4413      	add	r3, r2
     c60:	460a      	mov	r2, r1
     c62:	701a      	strb	r2, [r3, #0]
		if (fmt[pos]>'9'){fmt[pos]+=7;}
     c64:	f107 0208 	add.w	r2, r7, #8
     c68:	697b      	ldr	r3, [r7, #20]
     c6a:	4413      	add	r3, r2
     c6c:	781b      	ldrb	r3, [r3, #0]
     c6e:	2b39      	cmp	r3, #57	; 0x39
     c70:	d90c      	bls.n	c8c <print_hex+0xa0>
     c72:	f107 0208 	add.w	r2, r7, #8
     c76:	697b      	ldr	r3, [r7, #20]
     c78:	4413      	add	r3, r2
     c7a:	781b      	ldrb	r3, [r3, #0]
     c7c:	3307      	adds	r3, #7
     c7e:	b2d9      	uxtb	r1, r3
     c80:	f107 0208 	add.w	r2, r7, #8
     c84:	697b      	ldr	r3, [r7, #20]
     c86:	4413      	add	r3, r2
     c88:	460a      	mov	r2, r1
     c8a:	701a      	strb	r2, [r3, #0]
		pos--;
     c8c:	697b      	ldr	r3, [r7, #20]
     c8e:	3b01      	subs	r3, #1
     c90:	617b      	str	r3, [r7, #20]
		u/=16;
     c92:	687b      	ldr	r3, [r7, #4]
     c94:	091b      	lsrs	r3, r3, #4
     c96:	607b      	str	r3, [r7, #4]
	while (u){
     c98:	687b      	ldr	r3, [r7, #4]
     c9a:	2b00      	cmp	r3, #0
     c9c:	d1d5      	bne.n	c4a <print_hex+0x5e>
	}
	while (pos>w){
     c9e:	e008      	b.n	cb2 <print_hex+0xc6>
		 fmt[pos--]='0';
     ca0:	697b      	ldr	r3, [r7, #20]
     ca2:	1e5a      	subs	r2, r3, #1
     ca4:	617a      	str	r2, [r7, #20]
     ca6:	f107 0218 	add.w	r2, r7, #24
     caa:	4413      	add	r3, r2
     cac:	2230      	movs	r2, #48	; 0x30
     cae:	f803 2c10 	strb.w	r2, [r3, #-16]
	while (pos>w){
     cb2:	697a      	ldr	r2, [r7, #20]
     cb4:	683b      	ldr	r3, [r7, #0]
     cb6:	429a      	cmp	r2, r3
     cb8:	dcf2      	bgt.n	ca0 <print_hex+0xb4>
	 }
	fmt[pos]='$';
     cba:	f107 0208 	add.w	r2, r7, #8
     cbe:	697b      	ldr	r3, [r7, #20]
     cc0:	4413      	add	r3, r2
     cc2:	2224      	movs	r2, #36	; 0x24
     cc4:	701a      	strb	r2, [r3, #0]
	print(&fmt[pos]);
     cc6:	f107 0208 	add.w	r2, r7, #8
     cca:	697b      	ldr	r3, [r7, #20]
     ccc:	4413      	add	r3, r2
     cce:	4618      	mov	r0, r3
     cd0:	f7ff fdde 	bl	890 <print>
}
     cd4:	bf00      	nop
     cd6:	3718      	adds	r7, #24
     cd8:	46bd      	mov	sp, r7
     cda:	bd80      	pop	{r7, pc}

00000cdc <cls>:

void cls(){
     cdc:	b580      	push	{r7, lr}
     cde:	af00      	add	r7, sp, #0
	con.cls();
     ce0:	4b02      	ldr	r3, [pc, #8]	; (cec <cls+0x10>)
     ce2:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
     ce4:	4798      	blx	r3
}
     ce6:	bf00      	nop
     ce8:	bd80      	pop	{r7, pc}
     cea:	bf00      	nop
     cec:	20000480 	.word	0x20000480

00000cf0 <con_cursor_pos>:

// retourne la position du curseur texte
// x=low(pos), y=high(pos)
uint16_t con_cursor_pos(){
     cf0:	b480      	push	{r7}
     cf2:	af00      	add	r7, sp, #0
	return (BYTE)cursor_x+(((BYTE)cursor_y)<<8);
     cf4:	4b07      	ldr	r3, [pc, #28]	; (d14 <con_cursor_pos+0x24>)
     cf6:	681b      	ldr	r3, [r3, #0]
     cf8:	b2db      	uxtb	r3, r3
     cfa:	b29a      	uxth	r2, r3
     cfc:	4b06      	ldr	r3, [pc, #24]	; (d18 <con_cursor_pos+0x28>)
     cfe:	681b      	ldr	r3, [r3, #0]
     d00:	b2db      	uxtb	r3, r3
     d02:	b29b      	uxth	r3, r3
     d04:	021b      	lsls	r3, r3, #8
     d06:	b29b      	uxth	r3, r3
     d08:	4413      	add	r3, r2
     d0a:	b29b      	uxth	r3, r3
}
     d0c:	4618      	mov	r0, r3
     d0e:	46bd      	mov	sp, r7
     d10:	bc80      	pop	{r7}
     d12:	4770      	bx	lr
     d14:	2000005c 	.word	0x2000005c
     d18:	20000060 	.word	0x20000060

00000d1c <flash_enable>:
static row_buffer_t row_buff;


// activation interface de programmation
//mémoire flash du mcu
int flash_enable(){
     d1c:	b480      	push	{r7}
     d1e:	af00      	add	r7, sp, #0
//	align(2);
//	row_buff.data=(BYTE*)alloc(FLASH_ROW_SIZE_BYTES);
	if (!row_buff.data) return 0;
	row_buff.flags=0;
     d20:	4b14      	ldr	r3, [pc, #80]	; (d74 <flash_enable+0x58>)
     d22:	2200      	movs	r2, #0
     d24:	701a      	strb	r2, [r3, #0]
	if (!(RCC->CR&RCC_CR_HSION)){ // activation clock HSI
     d26:	4b14      	ldr	r3, [pc, #80]	; (d78 <flash_enable+0x5c>)
     d28:	681b      	ldr	r3, [r3, #0]
     d2a:	f003 0301 	and.w	r3, r3, #1
     d2e:	2b00      	cmp	r3, #0
     d30:	d10c      	bne.n	d4c <flash_enable+0x30>
		RCC->CR|=RCC_CR_HSION;
     d32:	4a11      	ldr	r2, [pc, #68]	; (d78 <flash_enable+0x5c>)
     d34:	4b10      	ldr	r3, [pc, #64]	; (d78 <flash_enable+0x5c>)
     d36:	681b      	ldr	r3, [r3, #0]
     d38:	f043 0301 	orr.w	r3, r3, #1
     d3c:	6013      	str	r3, [r2, #0]
		while (!(RCC->CR&RCC_CR_HSIRDY));
     d3e:	bf00      	nop
     d40:	4b0d      	ldr	r3, [pc, #52]	; (d78 <flash_enable+0x5c>)
     d42:	681b      	ldr	r3, [r3, #0]
     d44:	f003 0302 	and.w	r3, r3, #2
     d48:	2b00      	cmp	r3, #0
     d4a:	d0f9      	beq.n	d40 <flash_enable+0x24>
	}
	FLASH->KEYR=0x45670123;
     d4c:	4b0b      	ldr	r3, [pc, #44]	; (d7c <flash_enable+0x60>)
     d4e:	4a0c      	ldr	r2, [pc, #48]	; (d80 <flash_enable+0x64>)
     d50:	605a      	str	r2, [r3, #4]
	FLASH->KEYR=0xCDEF89AB;
     d52:	4b0a      	ldr	r3, [pc, #40]	; (d7c <flash_enable+0x60>)
     d54:	4a0b      	ldr	r2, [pc, #44]	; (d84 <flash_enable+0x68>)
     d56:	605a      	str	r2, [r3, #4]
	return !(FLASH->CR&FLASH_CR_LOCK);
     d58:	4b08      	ldr	r3, [pc, #32]	; (d7c <flash_enable+0x60>)
     d5a:	691b      	ldr	r3, [r3, #16]
     d5c:	f003 0380 	and.w	r3, r3, #128	; 0x80
     d60:	2b00      	cmp	r3, #0
     d62:	bf0c      	ite	eq
     d64:	2301      	moveq	r3, #1
     d66:	2300      	movne	r3, #0
     d68:	b2db      	uxtb	r3, r3
}
     d6a:	4618      	mov	r0, r3
     d6c:	46bd      	mov	sp, r7
     d6e:	bc80      	pop	{r7}
     d70:	4770      	bx	lr
     d72:	bf00      	nop
     d74:	2000006c 	.word	0x2000006c
     d78:	40021000 	.word	0x40021000
     d7c:	40022000 	.word	0x40022000
     d80:	45670123 	.word	0x45670123
     d84:	cdef89ab 	.word	0xcdef89ab

00000d88 <flash_write_hword>:
}
*/

// écriture dans la mémoire flash du MCU
// cett écriture se fait par mot de 16 bits.
int flash_write_hword(uint16_t *address, uint16_t hword){
     d88:	b480      	push	{r7}
     d8a:	b083      	sub	sp, #12
     d8c:	af00      	add	r7, sp, #0
     d8e:	6078      	str	r0, [r7, #4]
     d90:	460b      	mov	r3, r1
     d92:	807b      	strh	r3, [r7, #2]
	while (_flash_busy);
     d94:	bf00      	nop
     d96:	4b16      	ldr	r3, [pc, #88]	; (df0 <flash_write_hword+0x68>)
     d98:	68db      	ldr	r3, [r3, #12]
     d9a:	f003 0301 	and.w	r3, r3, #1
     d9e:	2b00      	cmp	r3, #0
     da0:	d1f9      	bne.n	d96 <flash_write_hword+0xe>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     da2:	4a13      	ldr	r2, [pc, #76]	; (df0 <flash_write_hword+0x68>)
     da4:	4b12      	ldr	r3, [pc, #72]	; (df0 <flash_write_hword+0x68>)
     da6:	68db      	ldr	r3, [r3, #12]
     da8:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     dac:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PG;
     dae:	4b10      	ldr	r3, [pc, #64]	; (df0 <flash_write_hword+0x68>)
     db0:	2201      	movs	r2, #1
     db2:	611a      	str	r2, [r3, #16]
	*address=hword;
     db4:	687b      	ldr	r3, [r7, #4]
     db6:	887a      	ldrh	r2, [r7, #2]
     db8:	801a      	strh	r2, [r3, #0]
	while (_flash_busy && ! _flash_eop);
     dba:	bf00      	nop
     dbc:	4b0c      	ldr	r3, [pc, #48]	; (df0 <flash_write_hword+0x68>)
     dbe:	68db      	ldr	r3, [r3, #12]
     dc0:	f003 0301 	and.w	r3, r3, #1
     dc4:	2b00      	cmp	r3, #0
     dc6:	d005      	beq.n	dd4 <flash_write_hword+0x4c>
     dc8:	4b09      	ldr	r3, [pc, #36]	; (df0 <flash_write_hword+0x68>)
     dca:	68db      	ldr	r3, [r3, #12]
     dcc:	f003 0320 	and.w	r3, r3, #32
     dd0:	2b00      	cmp	r3, #0
     dd2:	d0f3      	beq.n	dbc <flash_write_hword+0x34>
	return *address==hword;
     dd4:	687b      	ldr	r3, [r7, #4]
     dd6:	881b      	ldrh	r3, [r3, #0]
     dd8:	887a      	ldrh	r2, [r7, #2]
     dda:	429a      	cmp	r2, r3
     ddc:	bf0c      	ite	eq
     dde:	2301      	moveq	r3, #1
     de0:	2300      	movne	r3, #0
     de2:	b2db      	uxtb	r3, r3
}
     de4:	4618      	mov	r0, r3
     de6:	370c      	adds	r7, #12
     de8:	46bd      	mov	sp, r7
     dea:	bc80      	pop	{r7}
     dec:	4770      	bx	lr
     dee:	bf00      	nop
     df0:	40022000 	.word	0x40022000

00000df4 <write_back_buffer>:

// met à jour la mémoire flash du mcu à partir du tampon 'row_buff.data'
static int write_back_buffer(){
     df4:	b580      	push	{r7, lr}
     df6:	b084      	sub	sp, #16
     df8:	af00      	add	r7, sp, #0
	int i;
	uint16_t *dest, *src;
	
	dest=_row2addr(row_buff.row);
     dfa:	4b1e      	ldr	r3, [pc, #120]	; (e74 <write_back_buffer+0x80>)
     dfc:	785b      	ldrb	r3, [r3, #1]
     dfe:	029b      	lsls	r3, r3, #10
     e00:	60bb      	str	r3, [r7, #8]
	src=(uint16_t*)row_buff.data;
     e02:	4b1d      	ldr	r3, [pc, #116]	; (e78 <write_back_buffer+0x84>)
     e04:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e06:	2300      	movs	r3, #0
     e08:	60fb      	str	r3, [r7, #12]
     e0a:	e017      	b.n	e3c <write_back_buffer+0x48>
		if (*src!=(uint16_t)FLASH_ERASED){
     e0c:	687b      	ldr	r3, [r7, #4]
     e0e:	881b      	ldrh	r3, [r3, #0]
     e10:	f64f 72ff 	movw	r2, #65535	; 0xffff
     e14:	4293      	cmp	r3, r2
     e16:	d008      	beq.n	e2a <write_back_buffer+0x36>
			if (!flash_write_hword(dest,*src)) break;
     e18:	687b      	ldr	r3, [r7, #4]
     e1a:	881b      	ldrh	r3, [r3, #0]
     e1c:	4619      	mov	r1, r3
     e1e:	68b8      	ldr	r0, [r7, #8]
     e20:	f7ff ffb2 	bl	d88 <flash_write_hword>
     e24:	4603      	mov	r3, r0
     e26:	2b00      	cmp	r3, #0
     e28:	d00d      	beq.n	e46 <write_back_buffer+0x52>
		}
		dest++;
     e2a:	68bb      	ldr	r3, [r7, #8]
     e2c:	3302      	adds	r3, #2
     e2e:	60bb      	str	r3, [r7, #8]
		src++;
     e30:	687b      	ldr	r3, [r7, #4]
     e32:	3302      	adds	r3, #2
     e34:	607b      	str	r3, [r7, #4]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e36:	68fb      	ldr	r3, [r7, #12]
     e38:	3301      	adds	r3, #1
     e3a:	60fb      	str	r3, [r7, #12]
     e3c:	68fb      	ldr	r3, [r7, #12]
     e3e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     e42:	dbe3      	blt.n	e0c <write_back_buffer+0x18>
     e44:	e000      	b.n	e48 <write_back_buffer+0x54>
			if (!flash_write_hword(dest,*src)) break;
     e46:	bf00      	nop
	}
	if (i>0) row_buff.flags&=~F_ERASED;
     e48:	68fb      	ldr	r3, [r7, #12]
     e4a:	2b00      	cmp	r3, #0
     e4c:	dd06      	ble.n	e5c <write_back_buffer+0x68>
     e4e:	4b09      	ldr	r3, [pc, #36]	; (e74 <write_back_buffer+0x80>)
     e50:	781b      	ldrb	r3, [r3, #0]
     e52:	f023 0304 	bic.w	r3, r3, #4
     e56:	b2da      	uxtb	r2, r3
     e58:	4b06      	ldr	r3, [pc, #24]	; (e74 <write_back_buffer+0x80>)
     e5a:	701a      	strb	r2, [r3, #0]
	if (i==FLASH_ROW_SIZE_HWORD) return 1;
     e5c:	68fb      	ldr	r3, [r7, #12]
     e5e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     e62:	d101      	bne.n	e68 <write_back_buffer+0x74>
     e64:	2301      	movs	r3, #1
     e66:	e000      	b.n	e6a <write_back_buffer+0x76>
	return 0;
     e68:	2300      	movs	r3, #0
}
     e6a:	4618      	mov	r0, r3
     e6c:	3710      	adds	r7, #16
     e6e:	46bd      	mov	sp, r7
     e70:	bd80      	pop	{r7, pc}
     e72:	bf00      	nop
     e74:	2000006c 	.word	0x2000006c
     e78:	2000006e 	.word	0x2000006e

00000e7c <load_row>:

// charge le tampon de ligne avec le contenu de la mémoire flash
// argument:
//		r   numéro de la ligne à charger.
static void load_row(unsigned int r){
     e7c:	b480      	push	{r7}
     e7e:	b087      	sub	sp, #28
     e80:	af00      	add	r7, sp, #0
     e82:	6078      	str	r0, [r7, #4]
	uint16_t *src, *dest;
	int i;
	src=(uint16_t*)_row2addr(r);
     e84:	687b      	ldr	r3, [r7, #4]
     e86:	029b      	lsls	r3, r3, #10
     e88:	617b      	str	r3, [r7, #20]
	dest=(uint16_t*)row_buff.data;
     e8a:	4b15      	ldr	r3, [pc, #84]	; (ee0 <load_row+0x64>)
     e8c:	613b      	str	r3, [r7, #16]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     e8e:	2300      	movs	r3, #0
     e90:	60fb      	str	r3, [r7, #12]
     e92:	e00a      	b.n	eaa <load_row+0x2e>
		*dest++=*src++;
     e94:	693b      	ldr	r3, [r7, #16]
     e96:	1c9a      	adds	r2, r3, #2
     e98:	613a      	str	r2, [r7, #16]
     e9a:	697a      	ldr	r2, [r7, #20]
     e9c:	1c91      	adds	r1, r2, #2
     e9e:	6179      	str	r1, [r7, #20]
     ea0:	8812      	ldrh	r2, [r2, #0]
     ea2:	801a      	strh	r2, [r3, #0]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ea4:	68fb      	ldr	r3, [r7, #12]
     ea6:	3301      	adds	r3, #1
     ea8:	60fb      	str	r3, [r7, #12]
     eaa:	68fb      	ldr	r3, [r7, #12]
     eac:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     eb0:	dbf0      	blt.n	e94 <load_row+0x18>
	}
	row_buff.row=r;
     eb2:	687b      	ldr	r3, [r7, #4]
     eb4:	b2da      	uxtb	r2, r3
     eb6:	4b0b      	ldr	r3, [pc, #44]	; (ee4 <load_row+0x68>)
     eb8:	705a      	strb	r2, [r3, #1]
	row_buff.flags&=~(F_MODIFIED);
     eba:	4b0a      	ldr	r3, [pc, #40]	; (ee4 <load_row+0x68>)
     ebc:	781b      	ldrb	r3, [r3, #0]
     ebe:	f023 0301 	bic.w	r3, r3, #1
     ec2:	b2da      	uxtb	r2, r3
     ec4:	4b07      	ldr	r3, [pc, #28]	; (ee4 <load_row+0x68>)
     ec6:	701a      	strb	r2, [r3, #0]
	row_buff.flags|=F_LOADED;
     ec8:	4b06      	ldr	r3, [pc, #24]	; (ee4 <load_row+0x68>)
     eca:	781b      	ldrb	r3, [r3, #0]
     ecc:	f043 0302 	orr.w	r3, r3, #2
     ed0:	b2da      	uxtb	r2, r3
     ed2:	4b04      	ldr	r3, [pc, #16]	; (ee4 <load_row+0x68>)
     ed4:	701a      	strb	r2, [r3, #0]
}
     ed6:	bf00      	nop
     ed8:	371c      	adds	r7, #28
     eda:	46bd      	mov	sp, r7
     edc:	bc80      	pop	{r7}
     ede:	4770      	bx	lr
     ee0:	2000006e 	.word	0x2000006e
     ee4:	2000006c 	.word	0x2000006c

00000ee8 <is_erased>:

// vérifie si une ligne est effacée
// c.à.d. ne contient que des 0xffff
static bool is_erased(unsigned row){
     ee8:	b480      	push	{r7}
     eea:	b085      	sub	sp, #20
     eec:	af00      	add	r7, sp, #0
     eee:	6078      	str	r0, [r7, #4]
	uint16_t* addr;
	int i;
	
	addr=_row2addr(row);
     ef0:	687b      	ldr	r3, [r7, #4]
     ef2:	029b      	lsls	r3, r3, #10
     ef4:	60fb      	str	r3, [r7, #12]
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     ef6:	2300      	movs	r3, #0
     ef8:	60bb      	str	r3, [r7, #8]
     efa:	e00c      	b.n	f16 <is_erased+0x2e>
		if (*addr++!=FLASH_ERASED) return false;
     efc:	68fb      	ldr	r3, [r7, #12]
     efe:	1c9a      	adds	r2, r3, #2
     f00:	60fa      	str	r2, [r7, #12]
     f02:	881b      	ldrh	r3, [r3, #0]
     f04:	f64f 72ff 	movw	r2, #65535	; 0xffff
     f08:	4293      	cmp	r3, r2
     f0a:	d001      	beq.n	f10 <is_erased+0x28>
     f0c:	2300      	movs	r3, #0
     f0e:	e008      	b.n	f22 <is_erased+0x3a>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     f10:	68bb      	ldr	r3, [r7, #8]
     f12:	3301      	adds	r3, #1
     f14:	60bb      	str	r3, [r7, #8]
     f16:	68bb      	ldr	r3, [r7, #8]
     f18:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     f1c:	dbee      	blt.n	efc <is_erased+0x14>
	}
	return true;
     f1e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
     f22:	4618      	mov	r0, r3
     f24:	3714      	adds	r7, #20
     f26:	46bd      	mov	sp, r7
     f28:	bc80      	pop	{r7}
     f2a:	4770      	bx	lr

00000f2c <flash_erase_row>:

// efface une ligne de 1024 octets
int flash_erase_row(unsigned int row_nbr){
     f2c:	b580      	push	{r7, lr}
     f2e:	b086      	sub	sp, #24
     f30:	af00      	add	r7, sp, #0
     f32:	6078      	str	r0, [r7, #4]
	uint16_t *addr, u16;
	int i;
	if (row_nbr<FIRST_WRITABLE_ROW) return 0;
     f34:	687b      	ldr	r3, [r7, #4]
     f36:	2b3f      	cmp	r3, #63	; 0x3f
     f38:	d801      	bhi.n	f3e <flash_erase_row+0x12>
     f3a:	2300      	movs	r3, #0
     f3c:	e052      	b.n	fe4 <flash_erase_row+0xb8>
	// n'efface pas si déjà effacée.
	if (is_erased(row_nbr)) return 1;
     f3e:	6878      	ldr	r0, [r7, #4]
     f40:	f7ff ffd2 	bl	ee8 <is_erased>
     f44:	4603      	mov	r3, r0
     f46:	2b00      	cmp	r3, #0
     f48:	d001      	beq.n	f4e <flash_erase_row+0x22>
     f4a:	2301      	movs	r3, #1
     f4c:	e04a      	b.n	fe4 <flash_erase_row+0xb8>
	addr=_row2addr(row_nbr);
     f4e:	687b      	ldr	r3, [r7, #4]
     f50:	029b      	lsls	r3, r3, #10
     f52:	617b      	str	r3, [r7, #20]
	if (FLASH->CR&FLASH_CR_LOCK) return 0; 
     f54:	4b25      	ldr	r3, [pc, #148]	; (fec <flash_erase_row+0xc0>)
     f56:	691b      	ldr	r3, [r3, #16]
     f58:	f003 0380 	and.w	r3, r3, #128	; 0x80
     f5c:	2b00      	cmp	r3, #0
     f5e:	d001      	beq.n	f64 <flash_erase_row+0x38>
     f60:	2300      	movs	r3, #0
     f62:	e03f      	b.n	fe4 <flash_erase_row+0xb8>
	FLASH->SR|=FLASH_SR_PGERR|FLASH_SR_WRPTRERR|FLASH_SR_EOP;
     f64:	4a21      	ldr	r2, [pc, #132]	; (fec <flash_erase_row+0xc0>)
     f66:	4b21      	ldr	r3, [pc, #132]	; (fec <flash_erase_row+0xc0>)
     f68:	68db      	ldr	r3, [r3, #12]
     f6a:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     f6e:	60d3      	str	r3, [r2, #12]
	FLASH->CR=FLASH_CR_PER;
     f70:	4b1e      	ldr	r3, [pc, #120]	; (fec <flash_erase_row+0xc0>)
     f72:	2202      	movs	r2, #2
     f74:	611a      	str	r2, [r3, #16]
	FLASH->AR=(uint32_t)addr;
     f76:	4a1d      	ldr	r2, [pc, #116]	; (fec <flash_erase_row+0xc0>)
     f78:	697b      	ldr	r3, [r7, #20]
     f7a:	6153      	str	r3, [r2, #20]
	FLASH->CR|=FLASH_CR_STRT;
     f7c:	4a1b      	ldr	r2, [pc, #108]	; (fec <flash_erase_row+0xc0>)
     f7e:	4b1b      	ldr	r3, [pc, #108]	; (fec <flash_erase_row+0xc0>)
     f80:	691b      	ldr	r3, [r3, #16]
     f82:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     f86:	6113      	str	r3, [r2, #16]
	while (_flash_busy && ! _flash_eop);
     f88:	bf00      	nop
     f8a:	4b18      	ldr	r3, [pc, #96]	; (fec <flash_erase_row+0xc0>)
     f8c:	68db      	ldr	r3, [r3, #12]
     f8e:	f003 0301 	and.w	r3, r3, #1
     f92:	2b00      	cmp	r3, #0
     f94:	d005      	beq.n	fa2 <flash_erase_row+0x76>
     f96:	4b15      	ldr	r3, [pc, #84]	; (fec <flash_erase_row+0xc0>)
     f98:	68db      	ldr	r3, [r3, #12]
     f9a:	f003 0320 	and.w	r3, r3, #32
     f9e:	2b00      	cmp	r3, #0
     fa0:	d0f3      	beq.n	f8a <flash_erase_row+0x5e>
	addr=_row2addr(row_nbr);
     fa2:	687b      	ldr	r3, [r7, #4]
     fa4:	029b      	lsls	r3, r3, #10
     fa6:	617b      	str	r3, [r7, #20]
	// vérification de l'effacement
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fa8:	2300      	movs	r3, #0
     faa:	60fb      	str	r3, [r7, #12]
     fac:	e00c      	b.n	fc8 <flash_erase_row+0x9c>
		u16=*addr++;
     fae:	697b      	ldr	r3, [r7, #20]
     fb0:	1c9a      	adds	r2, r3, #2
     fb2:	617a      	str	r2, [r7, #20]
     fb4:	881b      	ldrh	r3, [r3, #0]
     fb6:	827b      	strh	r3, [r7, #18]
		if (u16!=FLASH_ERASED) break;
     fb8:	8a7b      	ldrh	r3, [r7, #18]
     fba:	f64f 72ff 	movw	r2, #65535	; 0xffff
     fbe:	4293      	cmp	r3, r2
     fc0:	d107      	bne.n	fd2 <flash_erase_row+0xa6>
	for (i=0;i<FLASH_ROW_SIZE_HWORD;i++){
     fc2:	68fb      	ldr	r3, [r7, #12]
     fc4:	3301      	adds	r3, #1
     fc6:	60fb      	str	r3, [r7, #12]
     fc8:	68fb      	ldr	r3, [r7, #12]
     fca:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     fce:	dbee      	blt.n	fae <flash_erase_row+0x82>
     fd0:	e000      	b.n	fd4 <flash_erase_row+0xa8>
		if (u16!=FLASH_ERASED) break;
     fd2:	bf00      	nop
	}
	return u16==FLASH_ERASED;
     fd4:	8a7b      	ldrh	r3, [r7, #18]
     fd6:	f64f 72ff 	movw	r2, #65535	; 0xffff
     fda:	4293      	cmp	r3, r2
     fdc:	bf0c      	ite	eq
     fde:	2301      	moveq	r3, #1
     fe0:	2300      	movne	r3, #0
     fe2:	b2db      	uxtb	r3, r3
}
     fe4:	4618      	mov	r0, r3
     fe6:	3718      	adds	r7, #24
     fe8:	46bd      	mov	sp, r7
     fea:	bd80      	pop	{r7, pc}
     fec:	40022000 	.word	0x40022000

00000ff0 <flash_sync>:

//écris le buffer s'il a été modifié.
int flash_sync(){
     ff0:	b580      	push	{r7, lr}
     ff2:	af00      	add	r7, sp, #0
	if (row_buff.flags&(F_LOADED|F_MODIFIED)==(F_LOADED|F_MODIFIED)){
     ff4:	4b10      	ldr	r3, [pc, #64]	; (1038 <flash_sync+0x48>)
     ff6:	781b      	ldrb	r3, [r3, #0]
     ff8:	f003 0301 	and.w	r3, r3, #1
     ffc:	2b00      	cmp	r3, #0
     ffe:	d017      	beq.n	1030 <flash_sync+0x40>
		if (flash_erase_row(row_buff.row) && write_back_buffer()){
    1000:	4b0d      	ldr	r3, [pc, #52]	; (1038 <flash_sync+0x48>)
    1002:	785b      	ldrb	r3, [r3, #1]
    1004:	4618      	mov	r0, r3
    1006:	f7ff ff91 	bl	f2c <flash_erase_row>
    100a:	4603      	mov	r3, r0
    100c:	2b00      	cmp	r3, #0
    100e:	d00d      	beq.n	102c <flash_sync+0x3c>
    1010:	f7ff fef0 	bl	df4 <write_back_buffer>
    1014:	4603      	mov	r3, r0
    1016:	2b00      	cmp	r3, #0
    1018:	d008      	beq.n	102c <flash_sync+0x3c>
			row_buff.flags&=~F_MODIFIED;
    101a:	4b07      	ldr	r3, [pc, #28]	; (1038 <flash_sync+0x48>)
    101c:	781b      	ldrb	r3, [r3, #0]
    101e:	f023 0301 	bic.w	r3, r3, #1
    1022:	b2da      	uxtb	r2, r3
    1024:	4b04      	ldr	r3, [pc, #16]	; (1038 <flash_sync+0x48>)
    1026:	701a      	strb	r2, [r3, #0]
			return 1;
    1028:	2301      	movs	r3, #1
    102a:	e002      	b.n	1032 <flash_sync+0x42>
		}
		return 0;
    102c:	2300      	movs	r3, #0
    102e:	e000      	b.n	1032 <flash_sync+0x42>
	}
	return 1;
    1030:	2301      	movs	r3, #1
}
    1032:	4618      	mov	r0, r3
    1034:	bd80      	pop	{r7, pc}
    1036:	bf00      	nop
    1038:	2000006c 	.word	0x2000006c

0000103c <flash_flush>:

// abandonne le buffer même s'il est modifié
void flash_flush(){
    103c:	b480      	push	{r7}
    103e:	af00      	add	r7, sp, #0
	row_buff.flags=0;
    1040:	4b03      	ldr	r3, [pc, #12]	; (1050 <flash_flush+0x14>)
    1042:	2200      	movs	r2, #0
    1044:	701a      	strb	r2, [r3, #0]
}
    1046:	bf00      	nop
    1048:	46bd      	mov	sp, r7
    104a:	bc80      	pop	{r7}
    104c:	4770      	bx	lr
    104e:	bf00      	nop
    1050:	2000006c 	.word	0x2000006c

00001054 <flash_disable>:


// désactivation interface de programmation
// mémoire flash
void flash_disable(){
    1054:	b580      	push	{r7, lr}
    1056:	af00      	add	r7, sp, #0
	flash_sync();
    1058:	f7ff ffca 	bl	ff0 <flash_sync>
	row_buff.flags=0;
    105c:	4b05      	ldr	r3, [pc, #20]	; (1074 <flash_disable+0x20>)
    105e:	2200      	movs	r2, #0
    1060:	701a      	strb	r2, [r3, #0]
	FLASH->CR|=FLASH_CR_LOCK;
    1062:	4a05      	ldr	r2, [pc, #20]	; (1078 <flash_disable+0x24>)
    1064:	4b04      	ldr	r3, [pc, #16]	; (1078 <flash_disable+0x24>)
    1066:	691b      	ldr	r3, [r3, #16]
    1068:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    106c:	6113      	str	r3, [r2, #16]
}
    106e:	bf00      	nop
    1070:	bd80      	pop	{r7, pc}
    1072:	bf00      	nop
    1074:	2000006c 	.word	0x2000006c
    1078:	40022000 	.word	0x40022000

0000107c <strcmp>:
 * 
 */

#include "include/ascii.h"

int strcmp(const char *s1, const char *s2){
    107c:	b480      	push	{r7}
    107e:	b085      	sub	sp, #20
    1080:	af00      	add	r7, sp, #0
    1082:	6078      	str	r0, [r7, #4]
    1084:	6039      	str	r1, [r7, #0]
	int result=0;
    1086:	2300      	movs	r3, #0
    1088:	60fb      	str	r3, [r7, #12]
	while (*s1 && *s2){
    108a:	e018      	b.n	10be <strcmp+0x42>
		if (*s1<*s2){
    108c:	687b      	ldr	r3, [r7, #4]
    108e:	781a      	ldrb	r2, [r3, #0]
    1090:	683b      	ldr	r3, [r7, #0]
    1092:	781b      	ldrb	r3, [r3, #0]
    1094:	429a      	cmp	r2, r3
    1096:	d203      	bcs.n	10a0 <strcmp+0x24>
			result=-1;
    1098:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    109c:	60fb      	str	r3, [r7, #12]
			break;
    109e:	e016      	b.n	10ce <strcmp+0x52>
		}else if (*s1>*s2){
    10a0:	687b      	ldr	r3, [r7, #4]
    10a2:	781a      	ldrb	r2, [r3, #0]
    10a4:	683b      	ldr	r3, [r7, #0]
    10a6:	781b      	ldrb	r3, [r3, #0]
    10a8:	429a      	cmp	r2, r3
    10aa:	d902      	bls.n	10b2 <strcmp+0x36>
			result=1;
    10ac:	2301      	movs	r3, #1
    10ae:	60fb      	str	r3, [r7, #12]
			break;
    10b0:	e00d      	b.n	10ce <strcmp+0x52>
		}
		s1++;
    10b2:	687b      	ldr	r3, [r7, #4]
    10b4:	3301      	adds	r3, #1
    10b6:	607b      	str	r3, [r7, #4]
		s2++;
    10b8:	683b      	ldr	r3, [r7, #0]
    10ba:	3301      	adds	r3, #1
    10bc:	603b      	str	r3, [r7, #0]
	while (*s1 && *s2){
    10be:	687b      	ldr	r3, [r7, #4]
    10c0:	781b      	ldrb	r3, [r3, #0]
    10c2:	2b00      	cmp	r3, #0
    10c4:	d003      	beq.n	10ce <strcmp+0x52>
    10c6:	683b      	ldr	r3, [r7, #0]
    10c8:	781b      	ldrb	r3, [r3, #0]
    10ca:	2b00      	cmp	r3, #0
    10cc:	d1de      	bne.n	108c <strcmp+0x10>
	}
	if (!result){
    10ce:	68fb      	ldr	r3, [r7, #12]
    10d0:	2b00      	cmp	r3, #0
    10d2:	d115      	bne.n	1100 <strcmp+0x84>
		if (!*s1 && *s2){
    10d4:	687b      	ldr	r3, [r7, #4]
    10d6:	781b      	ldrb	r3, [r3, #0]
    10d8:	2b00      	cmp	r3, #0
    10da:	d107      	bne.n	10ec <strcmp+0x70>
    10dc:	683b      	ldr	r3, [r7, #0]
    10de:	781b      	ldrb	r3, [r3, #0]
    10e0:	2b00      	cmp	r3, #0
    10e2:	d003      	beq.n	10ec <strcmp+0x70>
			result=-1;
    10e4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    10e8:	60fb      	str	r3, [r7, #12]
    10ea:	e009      	b.n	1100 <strcmp+0x84>
		}else if (*s1 && !*s2) {
    10ec:	687b      	ldr	r3, [r7, #4]
    10ee:	781b      	ldrb	r3, [r3, #0]
    10f0:	2b00      	cmp	r3, #0
    10f2:	d005      	beq.n	1100 <strcmp+0x84>
    10f4:	683b      	ldr	r3, [r7, #0]
    10f6:	781b      	ldrb	r3, [r3, #0]
    10f8:	2b00      	cmp	r3, #0
    10fa:	d101      	bne.n	1100 <strcmp+0x84>
			result=1;
    10fc:	2301      	movs	r3, #1
    10fe:	60fb      	str	r3, [r7, #12]
		}
	}
	return result;
    1100:	68fb      	ldr	r3, [r7, #12]
}
    1102:	4618      	mov	r0, r3
    1104:	3714      	adds	r7, #20
    1106:	46bd      	mov	sp, r7
    1108:	bc80      	pop	{r7}
    110a:	4770      	bx	lr

0000110c <alpha>:

// retourne vrai si c'est une lettre
int alpha(char c){
    110c:	b480      	push	{r7}
    110e:	b083      	sub	sp, #12
    1110:	af00      	add	r7, sp, #0
    1112:	4603      	mov	r3, r0
    1114:	71fb      	strb	r3, [r7, #7]
	return ((c>='a') && (c<='z') ) || ((c>='A') && (c<='Z'));
    1116:	79fb      	ldrb	r3, [r7, #7]
    1118:	2b60      	cmp	r3, #96	; 0x60
    111a:	d902      	bls.n	1122 <alpha+0x16>
    111c:	79fb      	ldrb	r3, [r7, #7]
    111e:	2b7a      	cmp	r3, #122	; 0x7a
    1120:	d905      	bls.n	112e <alpha+0x22>
    1122:	79fb      	ldrb	r3, [r7, #7]
    1124:	2b40      	cmp	r3, #64	; 0x40
    1126:	d904      	bls.n	1132 <alpha+0x26>
    1128:	79fb      	ldrb	r3, [r7, #7]
    112a:	2b5a      	cmp	r3, #90	; 0x5a
    112c:	d801      	bhi.n	1132 <alpha+0x26>
    112e:	2301      	movs	r3, #1
    1130:	e000      	b.n	1134 <alpha+0x28>
    1132:	2300      	movs	r3, #0
}
    1134:	4618      	mov	r0, r3
    1136:	370c      	adds	r7, #12
    1138:	46bd      	mov	sp, r7
    113a:	bc80      	pop	{r7}
    113c:	4770      	bx	lr

0000113e <digit>:

int digit(char c){
    113e:	b480      	push	{r7}
    1140:	b083      	sub	sp, #12
    1142:	af00      	add	r7, sp, #0
    1144:	4603      	mov	r3, r0
    1146:	71fb      	strb	r3, [r7, #7]
   return ((c>='0') && (c<='9'));
    1148:	79fb      	ldrb	r3, [r7, #7]
    114a:	2b2f      	cmp	r3, #47	; 0x2f
    114c:	d904      	bls.n	1158 <digit+0x1a>
    114e:	79fb      	ldrb	r3, [r7, #7]
    1150:	2b39      	cmp	r3, #57	; 0x39
    1152:	d801      	bhi.n	1158 <digit+0x1a>
    1154:	2301      	movs	r3, #1
    1156:	e000      	b.n	115a <digit+0x1c>
    1158:	2300      	movs	r3, #0
}
    115a:	4618      	mov	r0, r3
    115c:	370c      	adds	r7, #12
    115e:	46bd      	mov	sp, r7
    1160:	bc80      	pop	{r7}
    1162:	4770      	bx	lr

00001164 <hexdigit>:

int hexdigit(char c){
    1164:	b580      	push	{r7, lr}
    1166:	b082      	sub	sp, #8
    1168:	af00      	add	r7, sp, #0
    116a:	4603      	mov	r3, r0
    116c:	71fb      	strb	r3, [r7, #7]
	if (c>='a') c-=32;
    116e:	79fb      	ldrb	r3, [r7, #7]
    1170:	2b60      	cmp	r3, #96	; 0x60
    1172:	d902      	bls.n	117a <hexdigit+0x16>
    1174:	79fb      	ldrb	r3, [r7, #7]
    1176:	3b20      	subs	r3, #32
    1178:	71fb      	strb	r3, [r7, #7]
	return (digit(c) || (c>='A' && c<='F'));
    117a:	79fb      	ldrb	r3, [r7, #7]
    117c:	4618      	mov	r0, r3
    117e:	f7ff ffde 	bl	113e <digit>
    1182:	4603      	mov	r3, r0
    1184:	2b00      	cmp	r3, #0
    1186:	d105      	bne.n	1194 <hexdigit+0x30>
    1188:	79fb      	ldrb	r3, [r7, #7]
    118a:	2b40      	cmp	r3, #64	; 0x40
    118c:	d904      	bls.n	1198 <hexdigit+0x34>
    118e:	79fb      	ldrb	r3, [r7, #7]
    1190:	2b46      	cmp	r3, #70	; 0x46
    1192:	d801      	bhi.n	1198 <hexdigit+0x34>
    1194:	2301      	movs	r3, #1
    1196:	e000      	b.n	119a <hexdigit+0x36>
    1198:	2300      	movs	r3, #0
}
    119a:	4618      	mov	r0, r3
    119c:	3708      	adds	r7, #8
    119e:	46bd      	mov	sp, r7
    11a0:	bd80      	pop	{r7, pc}

000011a2 <atoi>:

int atoi(const char *str){
    11a2:	b580      	push	{r7, lr}
    11a4:	b086      	sub	sp, #24
    11a6:	af00      	add	r7, sp, #0
    11a8:	6078      	str	r0, [r7, #4]
	int n=0,sign=1,base=10;
    11aa:	2300      	movs	r3, #0
    11ac:	617b      	str	r3, [r7, #20]
    11ae:	2301      	movs	r3, #1
    11b0:	613b      	str	r3, [r7, #16]
    11b2:	230a      	movs	r3, #10
    11b4:	60fb      	str	r3, [r7, #12]
    char c;
    
	while (*str && (*str==SPACE)) str++;
    11b6:	e002      	b.n	11be <atoi+0x1c>
    11b8:	687b      	ldr	r3, [r7, #4]
    11ba:	3301      	adds	r3, #1
    11bc:	607b      	str	r3, [r7, #4]
    11be:	687b      	ldr	r3, [r7, #4]
    11c0:	781b      	ldrb	r3, [r3, #0]
    11c2:	2b00      	cmp	r3, #0
    11c4:	d003      	beq.n	11ce <atoi+0x2c>
    11c6:	687b      	ldr	r3, [r7, #4]
    11c8:	781b      	ldrb	r3, [r3, #0]
    11ca:	2b20      	cmp	r3, #32
    11cc:	d0f4      	beq.n	11b8 <atoi+0x16>
	if (*str=='-'){
    11ce:	687b      	ldr	r3, [r7, #4]
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	2b2d      	cmp	r3, #45	; 0x2d
    11d4:	d105      	bne.n	11e2 <atoi+0x40>
		sign=-1;
    11d6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    11da:	613b      	str	r3, [r7, #16]
		str++;
    11dc:	687b      	ldr	r3, [r7, #4]
    11de:	3301      	adds	r3, #1
    11e0:	607b      	str	r3, [r7, #4]
	}
	if (*str=='$' && hexdigit(*(str+1))){
    11e2:	687b      	ldr	r3, [r7, #4]
    11e4:	781b      	ldrb	r3, [r3, #0]
    11e6:	2b24      	cmp	r3, #36	; 0x24
    11e8:	d10e      	bne.n	1208 <atoi+0x66>
    11ea:	687b      	ldr	r3, [r7, #4]
    11ec:	3301      	adds	r3, #1
    11ee:	781b      	ldrb	r3, [r3, #0]
    11f0:	4618      	mov	r0, r3
    11f2:	f7ff ffb7 	bl	1164 <hexdigit>
    11f6:	4603      	mov	r3, r0
    11f8:	2b00      	cmp	r3, #0
    11fa:	d005      	beq.n	1208 <atoi+0x66>
		base=16;
    11fc:	2310      	movs	r3, #16
    11fe:	60fb      	str	r3, [r7, #12]
		str++;
    1200:	687b      	ldr	r3, [r7, #4]
    1202:	3301      	adds	r3, #1
    1204:	607b      	str	r3, [r7, #4]
    1206:	e012      	b.n	122e <atoi+0x8c>
	}
	else if (*str=='0' && ((*(str+1)=='x')||(*(str+1)=='X'))){
    1208:	687b      	ldr	r3, [r7, #4]
    120a:	781b      	ldrb	r3, [r3, #0]
    120c:	2b30      	cmp	r3, #48	; 0x30
    120e:	d128      	bne.n	1262 <atoi+0xc0>
    1210:	687b      	ldr	r3, [r7, #4]
    1212:	3301      	adds	r3, #1
    1214:	781b      	ldrb	r3, [r3, #0]
    1216:	2b78      	cmp	r3, #120	; 0x78
    1218:	d004      	beq.n	1224 <atoi+0x82>
    121a:	687b      	ldr	r3, [r7, #4]
    121c:	3301      	adds	r3, #1
    121e:	781b      	ldrb	r3, [r3, #0]
    1220:	2b58      	cmp	r3, #88	; 0x58
    1222:	d11e      	bne.n	1262 <atoi+0xc0>
		base=16;
    1224:	2310      	movs	r3, #16
    1226:	60fb      	str	r3, [r7, #12]
		str+=2;
    1228:	687b      	ldr	r3, [r7, #4]
    122a:	3302      	adds	r3, #2
    122c:	607b      	str	r3, [r7, #4]
	}
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    122e:	e018      	b.n	1262 <atoi+0xc0>
		if (c>='a'){c-=32;}
    1230:	7afb      	ldrb	r3, [r7, #11]
    1232:	2b60      	cmp	r3, #96	; 0x60
    1234:	d902      	bls.n	123c <atoi+0x9a>
    1236:	7afb      	ldrb	r3, [r7, #11]
    1238:	3b20      	subs	r3, #32
    123a:	72fb      	strb	r3, [r7, #11]
		c-='0';
    123c:	7afb      	ldrb	r3, [r7, #11]
    123e:	3b30      	subs	r3, #48	; 0x30
    1240:	72fb      	strb	r3, [r7, #11]
		if (c>9){c-=7;}
    1242:	7afb      	ldrb	r3, [r7, #11]
    1244:	2b09      	cmp	r3, #9
    1246:	d902      	bls.n	124e <atoi+0xac>
    1248:	7afb      	ldrb	r3, [r7, #11]
    124a:	3b07      	subs	r3, #7
    124c:	72fb      	strb	r3, [r7, #11]
		n=n*base+c;
    124e:	697b      	ldr	r3, [r7, #20]
    1250:	68fa      	ldr	r2, [r7, #12]
    1252:	fb02 f203 	mul.w	r2, r2, r3
    1256:	7afb      	ldrb	r3, [r7, #11]
    1258:	4413      	add	r3, r2
    125a:	617b      	str	r3, [r7, #20]
		str++;
    125c:	687b      	ldr	r3, [r7, #4]
    125e:	3301      	adds	r3, #1
    1260:	607b      	str	r3, [r7, #4]
	while ((c=*str) && base==10?digit(c):hexdigit(c)){
    1262:	687b      	ldr	r3, [r7, #4]
    1264:	781b      	ldrb	r3, [r3, #0]
    1266:	72fb      	strb	r3, [r7, #11]
    1268:	7afb      	ldrb	r3, [r7, #11]
    126a:	2b00      	cmp	r3, #0
    126c:	d00d      	beq.n	128a <atoi+0xe8>
    126e:	68fb      	ldr	r3, [r7, #12]
    1270:	2b0a      	cmp	r3, #10
    1272:	d10a      	bne.n	128a <atoi+0xe8>
    1274:	7afb      	ldrb	r3, [r7, #11]
    1276:	4618      	mov	r0, r3
    1278:	f7ff ff61 	bl	113e <digit>
    127c:	4603      	mov	r3, r0
    127e:	2b00      	cmp	r3, #0
    1280:	bf14      	ite	ne
    1282:	2301      	movne	r3, #1
    1284:	2300      	moveq	r3, #0
    1286:	b2db      	uxtb	r3, r3
    1288:	e009      	b.n	129e <atoi+0xfc>
    128a:	7afb      	ldrb	r3, [r7, #11]
    128c:	4618      	mov	r0, r3
    128e:	f7ff ff69 	bl	1164 <hexdigit>
    1292:	4603      	mov	r3, r0
    1294:	2b00      	cmp	r3, #0
    1296:	bf14      	ite	ne
    1298:	2301      	movne	r3, #1
    129a:	2300      	moveq	r3, #0
    129c:	b2db      	uxtb	r3, r3
    129e:	2b00      	cmp	r3, #0
    12a0:	d1c6      	bne.n	1230 <atoi+0x8e>
	}
	return sign*n;
    12a2:	693b      	ldr	r3, [r7, #16]
    12a4:	697a      	ldr	r2, [r7, #20]
    12a6:	fb02 f303 	mul.w	r3, r2, r3
}
    12aa:	4618      	mov	r0, r3
    12ac:	3718      	adds	r7, #24
    12ae:	46bd      	mov	sp, r7
    12b0:	bd80      	pop	{r7, pc}

000012b2 <move>:

// copie 'len' caractères de src vers dest
void move(const char *src , char *dest, unsigned int len){
    12b2:	b480      	push	{r7}
    12b4:	b085      	sub	sp, #20
    12b6:	af00      	add	r7, sp, #0
    12b8:	60f8      	str	r0, [r7, #12]
    12ba:	60b9      	str	r1, [r7, #8]
    12bc:	607a      	str	r2, [r7, #4]
	while (len){
    12be:	e00a      	b.n	12d6 <move+0x24>
		*dest++=*src++;
    12c0:	68bb      	ldr	r3, [r7, #8]
    12c2:	1c5a      	adds	r2, r3, #1
    12c4:	60ba      	str	r2, [r7, #8]
    12c6:	68fa      	ldr	r2, [r7, #12]
    12c8:	1c51      	adds	r1, r2, #1
    12ca:	60f9      	str	r1, [r7, #12]
    12cc:	7812      	ldrb	r2, [r2, #0]
    12ce:	701a      	strb	r2, [r3, #0]
		len--;
    12d0:	687b      	ldr	r3, [r7, #4]
    12d2:	3b01      	subs	r3, #1
    12d4:	607b      	str	r3, [r7, #4]
	while (len){
    12d6:	687b      	ldr	r3, [r7, #4]
    12d8:	2b00      	cmp	r3, #0
    12da:	d1f1      	bne.n	12c0 <move+0xe>
	}
}
    12dc:	bf00      	nop
    12de:	3714      	adds	r7, #20
    12e0:	46bd      	mov	sp, r7
    12e2:	bc80      	pop	{r7}
    12e4:	4770      	bx	lr

000012e6 <strlen>:

int strlen(const char* str){
    12e6:	b480      	push	{r7}
    12e8:	b085      	sub	sp, #20
    12ea:	af00      	add	r7, sp, #0
    12ec:	6078      	str	r0, [r7, #4]
	int ll=0;
    12ee:	2300      	movs	r3, #0
    12f0:	60fb      	str	r3, [r7, #12]
	while (str[ll]){ll++;}
    12f2:	e002      	b.n	12fa <strlen+0x14>
    12f4:	68fb      	ldr	r3, [r7, #12]
    12f6:	3301      	adds	r3, #1
    12f8:	60fb      	str	r3, [r7, #12]
    12fa:	68fb      	ldr	r3, [r7, #12]
    12fc:	687a      	ldr	r2, [r7, #4]
    12fe:	4413      	add	r3, r2
    1300:	781b      	ldrb	r3, [r3, #0]
    1302:	2b00      	cmp	r3, #0
    1304:	d1f6      	bne.n	12f4 <strlen+0xe>
	return ll;
    1306:	68fb      	ldr	r3, [r7, #12]
}
    1308:	4618      	mov	r0, r3
    130a:	3714      	adds	r7, #20
    130c:	46bd      	mov	sp, r7
    130e:	bc80      	pop	{r7}
    1310:	4770      	bx	lr

00001312 <fill>:

void fill(void *buffer, unsigned int size, char c){
    1312:	b480      	push	{r7}
    1314:	b087      	sub	sp, #28
    1316:	af00      	add	r7, sp, #0
    1318:	60f8      	str	r0, [r7, #12]
    131a:	60b9      	str	r1, [r7, #8]
    131c:	4613      	mov	r3, r2
    131e:	71fb      	strb	r3, [r7, #7]
	int i;
	for (i=0;i<size;i++)*(char*)buffer++=c;
    1320:	2300      	movs	r3, #0
    1322:	617b      	str	r3, [r7, #20]
    1324:	e007      	b.n	1336 <fill+0x24>
    1326:	68fb      	ldr	r3, [r7, #12]
    1328:	1c5a      	adds	r2, r3, #1
    132a:	60fa      	str	r2, [r7, #12]
    132c:	79fa      	ldrb	r2, [r7, #7]
    132e:	701a      	strb	r2, [r3, #0]
    1330:	697b      	ldr	r3, [r7, #20]
    1332:	3301      	adds	r3, #1
    1334:	617b      	str	r3, [r7, #20]
    1336:	697a      	ldr	r2, [r7, #20]
    1338:	68bb      	ldr	r3, [r7, #8]
    133a:	429a      	cmp	r2, r3
    133c:	d3f3      	bcc.n	1326 <fill+0x14>
}
    133e:	bf00      	nop
    1340:	371c      	adds	r7, #28
    1342:	46bd      	mov	sp, r7
    1344:	bc80      	pop	{r7}
    1346:	4770      	bx	lr

00001348 <is_lower>:

//retourne vrai si caractère en minuscule
int is_lower(char c){
    1348:	b480      	push	{r7}
    134a:	b083      	sub	sp, #12
    134c:	af00      	add	r7, sp, #0
    134e:	4603      	mov	r3, r0
    1350:	71fb      	strb	r3, [r7, #7]
	return (c>='a') && (c<='z');
    1352:	79fb      	ldrb	r3, [r7, #7]
    1354:	2b60      	cmp	r3, #96	; 0x60
    1356:	d904      	bls.n	1362 <is_lower+0x1a>
    1358:	79fb      	ldrb	r3, [r7, #7]
    135a:	2b7a      	cmp	r3, #122	; 0x7a
    135c:	d801      	bhi.n	1362 <is_lower+0x1a>
    135e:	2301      	movs	r3, #1
    1360:	e000      	b.n	1364 <is_lower+0x1c>
    1362:	2300      	movs	r3, #0
}
    1364:	4618      	mov	r0, r3
    1366:	370c      	adds	r7, #12
    1368:	46bd      	mov	sp, r7
    136a:	bc80      	pop	{r7}
    136c:	4770      	bx	lr

0000136e <is_upper>:

//retourne vrai si caractère en majuscule
int is_upper(char c){
    136e:	b480      	push	{r7}
    1370:	b083      	sub	sp, #12
    1372:	af00      	add	r7, sp, #0
    1374:	4603      	mov	r3, r0
    1376:	71fb      	strb	r3, [r7, #7]
	return (c>='A') && (c<='Z');
    1378:	79fb      	ldrb	r3, [r7, #7]
    137a:	2b40      	cmp	r3, #64	; 0x40
    137c:	d904      	bls.n	1388 <is_upper+0x1a>
    137e:	79fb      	ldrb	r3, [r7, #7]
    1380:	2b5a      	cmp	r3, #90	; 0x5a
    1382:	d801      	bhi.n	1388 <is_upper+0x1a>
    1384:	2301      	movs	r3, #1
    1386:	e000      	b.n	138a <is_upper+0x1c>
    1388:	2300      	movs	r3, #0
}
    138a:	4618      	mov	r0, r3
    138c:	370c      	adds	r7, #12
    138e:	46bd      	mov	sp, r7
    1390:	bc80      	pop	{r7}
    1392:	4770      	bx	lr

00001394 <uppercase>:

// conversion en majuscule in situ
void uppercase(char *buffer){
    1394:	b580      	push	{r7, lr}
    1396:	b082      	sub	sp, #8
    1398:	af00      	add	r7, sp, #0
    139a:	6078      	str	r0, [r7, #4]
	while (*buffer){
    139c:	e010      	b.n	13c0 <uppercase+0x2c>
		if (is_lower(*buffer)){*buffer-=32;}
    139e:	687b      	ldr	r3, [r7, #4]
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	4618      	mov	r0, r3
    13a4:	f7ff ffd0 	bl	1348 <is_lower>
    13a8:	4603      	mov	r3, r0
    13aa:	2b00      	cmp	r3, #0
    13ac:	d005      	beq.n	13ba <uppercase+0x26>
    13ae:	687b      	ldr	r3, [r7, #4]
    13b0:	781b      	ldrb	r3, [r3, #0]
    13b2:	3b20      	subs	r3, #32
    13b4:	b2da      	uxtb	r2, r3
    13b6:	687b      	ldr	r3, [r7, #4]
    13b8:	701a      	strb	r2, [r3, #0]
		buffer++;
    13ba:	687b      	ldr	r3, [r7, #4]
    13bc:	3301      	adds	r3, #1
    13be:	607b      	str	r3, [r7, #4]
	while (*buffer){
    13c0:	687b      	ldr	r3, [r7, #4]
    13c2:	781b      	ldrb	r3, [r3, #0]
    13c4:	2b00      	cmp	r3, #0
    13c6:	d1ea      	bne.n	139e <uppercase+0xa>
	}
}
    13c8:	bf00      	nop
    13ca:	3708      	adds	r7, #8
    13cc:	46bd      	mov	sp, r7
    13ce:	bd80      	pop	{r7, pc}

000013d0 <scan>:

// recherche la première occurance de 'c'
int scan(const char *buffer, int start, char c){
    13d0:	b480      	push	{r7}
    13d2:	b085      	sub	sp, #20
    13d4:	af00      	add	r7, sp, #0
    13d6:	60f8      	str	r0, [r7, #12]
    13d8:	60b9      	str	r1, [r7, #8]
    13da:	4613      	mov	r3, r2
    13dc:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]!=c) start++;
    13de:	e002      	b.n	13e6 <scan+0x16>
    13e0:	68bb      	ldr	r3, [r7, #8]
    13e2:	3301      	adds	r3, #1
    13e4:	60bb      	str	r3, [r7, #8]
    13e6:	68bb      	ldr	r3, [r7, #8]
    13e8:	68fa      	ldr	r2, [r7, #12]
    13ea:	4413      	add	r3, r2
    13ec:	781b      	ldrb	r3, [r3, #0]
    13ee:	2b00      	cmp	r3, #0
    13f0:	d006      	beq.n	1400 <scan+0x30>
    13f2:	68bb      	ldr	r3, [r7, #8]
    13f4:	68fa      	ldr	r2, [r7, #12]
    13f6:	4413      	add	r3, r2
    13f8:	781b      	ldrb	r3, [r3, #0]
    13fa:	79fa      	ldrb	r2, [r7, #7]
    13fc:	429a      	cmp	r2, r3
    13fe:	d1ef      	bne.n	13e0 <scan+0x10>
	return start;
    1400:	68bb      	ldr	r3, [r7, #8]
}
    1402:	4618      	mov	r0, r3
    1404:	3714      	adds	r7, #20
    1406:	46bd      	mov	sp, r7
    1408:	bc80      	pop	{r7}
    140a:	4770      	bx	lr

0000140c <skip>:

// saute tous les caractères 'c' à partir de la position 'start'
// retourne la nouvelle position
int skip(const char *buffer, int start, char c){
    140c:	b480      	push	{r7}
    140e:	b085      	sub	sp, #20
    1410:	af00      	add	r7, sp, #0
    1412:	60f8      	str	r0, [r7, #12]
    1414:	60b9      	str	r1, [r7, #8]
    1416:	4613      	mov	r3, r2
    1418:	71fb      	strb	r3, [r7, #7]
	while (buffer[start] && buffer[start]==c) start++;
    141a:	e002      	b.n	1422 <skip+0x16>
    141c:	68bb      	ldr	r3, [r7, #8]
    141e:	3301      	adds	r3, #1
    1420:	60bb      	str	r3, [r7, #8]
    1422:	68bb      	ldr	r3, [r7, #8]
    1424:	68fa      	ldr	r2, [r7, #12]
    1426:	4413      	add	r3, r2
    1428:	781b      	ldrb	r3, [r3, #0]
    142a:	2b00      	cmp	r3, #0
    142c:	d006      	beq.n	143c <skip+0x30>
    142e:	68bb      	ldr	r3, [r7, #8]
    1430:	68fa      	ldr	r2, [r7, #12]
    1432:	4413      	add	r3, r2
    1434:	781b      	ldrb	r3, [r3, #0]
    1436:	79fa      	ldrb	r2, [r7, #7]
    1438:	429a      	cmp	r2, r3
    143a:	d0ef      	beq.n	141c <skip+0x10>
	return start;
    143c:	68bb      	ldr	r3, [r7, #8]
}
    143e:	4618      	mov	r0, r3
    1440:	3714      	adds	r7, #20
    1442:	46bd      	mov	sp, r7
    1444:	bc80      	pop	{r7}
    1446:	4770      	bx	lr

00001448 <itoa>:

// converti un entier en chaîne.
char* itoa(int i, char *buff,int base,int width){
    1448:	b480      	push	{r7}
    144a:	b087      	sub	sp, #28
    144c:	af00      	add	r7, sp, #0
    144e:	60f8      	str	r0, [r7, #12]
    1450:	60b9      	str	r1, [r7, #8]
    1452:	607a      	str	r2, [r7, #4]
    1454:	603b      	str	r3, [r7, #0]
	int sign=0;
    1456:	2300      	movs	r3, #0
    1458:	617b      	str	r3, [r7, #20]
	char c;
	buff[width--]=0;
    145a:	683b      	ldr	r3, [r7, #0]
    145c:	1e5a      	subs	r2, r3, #1
    145e:	603a      	str	r2, [r7, #0]
    1460:	461a      	mov	r2, r3
    1462:	68bb      	ldr	r3, [r7, #8]
    1464:	4413      	add	r3, r2
    1466:	2200      	movs	r2, #0
    1468:	701a      	strb	r2, [r3, #0]
	if (i<0){i=-i;sign=-1;}
    146a:	68fb      	ldr	r3, [r7, #12]
    146c:	2b00      	cmp	r3, #0
    146e:	da24      	bge.n	14ba <itoa+0x72>
    1470:	68fb      	ldr	r3, [r7, #12]
    1472:	425b      	negs	r3, r3
    1474:	60fb      	str	r3, [r7, #12]
    1476:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    147a:	617b      	str	r3, [r7, #20]
	while (i && (width>=0)){
    147c:	e01d      	b.n	14ba <itoa+0x72>
		c=i%base+'0';
    147e:	68fb      	ldr	r3, [r7, #12]
    1480:	687a      	ldr	r2, [r7, #4]
    1482:	fb93 f2f2 	sdiv	r2, r3, r2
    1486:	6879      	ldr	r1, [r7, #4]
    1488:	fb01 f202 	mul.w	r2, r1, r2
    148c:	1a9b      	subs	r3, r3, r2
    148e:	b2db      	uxtb	r3, r3
    1490:	3330      	adds	r3, #48	; 0x30
    1492:	74fb      	strb	r3, [r7, #19]
		if (c>'9'){c+=7;}
    1494:	7cfb      	ldrb	r3, [r7, #19]
    1496:	2b39      	cmp	r3, #57	; 0x39
    1498:	d902      	bls.n	14a0 <itoa+0x58>
    149a:	7cfb      	ldrb	r3, [r7, #19]
    149c:	3307      	adds	r3, #7
    149e:	74fb      	strb	r3, [r7, #19]
		buff[width--]=c;
    14a0:	683b      	ldr	r3, [r7, #0]
    14a2:	1e5a      	subs	r2, r3, #1
    14a4:	603a      	str	r2, [r7, #0]
    14a6:	461a      	mov	r2, r3
    14a8:	68bb      	ldr	r3, [r7, #8]
    14aa:	4413      	add	r3, r2
    14ac:	7cfa      	ldrb	r2, [r7, #19]
    14ae:	701a      	strb	r2, [r3, #0]
		i/=base;
    14b0:	68fa      	ldr	r2, [r7, #12]
    14b2:	687b      	ldr	r3, [r7, #4]
    14b4:	fb92 f3f3 	sdiv	r3, r2, r3
    14b8:	60fb      	str	r3, [r7, #12]
	while (i && (width>=0)){
    14ba:	68fb      	ldr	r3, [r7, #12]
    14bc:	2b00      	cmp	r3, #0
    14be:	d00b      	beq.n	14d8 <itoa+0x90>
    14c0:	683b      	ldr	r3, [r7, #0]
    14c2:	2b00      	cmp	r3, #0
    14c4:	dadb      	bge.n	147e <itoa+0x36>
	}
	while(width>0) buff[width--]='0';
    14c6:	e007      	b.n	14d8 <itoa+0x90>
    14c8:	683b      	ldr	r3, [r7, #0]
    14ca:	1e5a      	subs	r2, r3, #1
    14cc:	603a      	str	r2, [r7, #0]
    14ce:	461a      	mov	r2, r3
    14d0:	68bb      	ldr	r3, [r7, #8]
    14d2:	4413      	add	r3, r2
    14d4:	2230      	movs	r2, #48	; 0x30
    14d6:	701a      	strb	r2, [r3, #0]
    14d8:	683b      	ldr	r3, [r7, #0]
    14da:	2b00      	cmp	r3, #0
    14dc:	dcf4      	bgt.n	14c8 <itoa+0x80>
	if (sign && width==0) buff[0]='-';else if (width==0) buff[0]='0';
    14de:	697b      	ldr	r3, [r7, #20]
    14e0:	2b00      	cmp	r3, #0
    14e2:	d006      	beq.n	14f2 <itoa+0xaa>
    14e4:	683b      	ldr	r3, [r7, #0]
    14e6:	2b00      	cmp	r3, #0
    14e8:	d103      	bne.n	14f2 <itoa+0xaa>
    14ea:	68bb      	ldr	r3, [r7, #8]
    14ec:	222d      	movs	r2, #45	; 0x2d
    14ee:	701a      	strb	r2, [r3, #0]
    14f0:	e005      	b.n	14fe <itoa+0xb6>
    14f2:	683b      	ldr	r3, [r7, #0]
    14f4:	2b00      	cmp	r3, #0
    14f6:	d102      	bne.n	14fe <itoa+0xb6>
    14f8:	68bb      	ldr	r3, [r7, #8]
    14fa:	2230      	movs	r2, #48	; 0x30
    14fc:	701a      	strb	r2, [r3, #0]
	return buff;
    14fe:	68bb      	ldr	r3, [r7, #8]
}
    1500:	4618      	mov	r0, r3
    1502:	371c      	adds	r7, #28
    1504:	46bd      	mov	sp, r7
    1506:	bc80      	pop	{r7}
    1508:	4770      	bx	lr

0000150a <strcat>:

// concatenation de la chaîne s2 à la fin de s1
char* strcat(char* s1, const char* s2){
    150a:	b580      	push	{r7, lr}
    150c:	b082      	sub	sp, #8
    150e:	af00      	add	r7, sp, #0
    1510:	6078      	str	r0, [r7, #4]
    1512:	6039      	str	r1, [r7, #0]
	s1+=strlen(s1);
    1514:	6878      	ldr	r0, [r7, #4]
    1516:	f7ff fee6 	bl	12e6 <strlen>
    151a:	4603      	mov	r3, r0
    151c:	461a      	mov	r2, r3
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	4413      	add	r3, r2
    1522:	607b      	str	r3, [r7, #4]
	while (*s2){
    1524:	e007      	b.n	1536 <strcat+0x2c>
		*s1++=*s2++;
    1526:	687b      	ldr	r3, [r7, #4]
    1528:	1c5a      	adds	r2, r3, #1
    152a:	607a      	str	r2, [r7, #4]
    152c:	683a      	ldr	r2, [r7, #0]
    152e:	1c51      	adds	r1, r2, #1
    1530:	6039      	str	r1, [r7, #0]
    1532:	7812      	ldrb	r2, [r2, #0]
    1534:	701a      	strb	r2, [r3, #0]
	while (*s2){
    1536:	683b      	ldr	r3, [r7, #0]
    1538:	781b      	ldrb	r3, [r3, #0]
    153a:	2b00      	cmp	r3, #0
    153c:	d1f3      	bne.n	1526 <strcat+0x1c>
	}
	*s1=0;
    153e:	687b      	ldr	r3, [r7, #4]
    1540:	2200      	movs	r2, #0
    1542:	701a      	strb	r2, [r3, #0]
	return s1;
    1544:	687b      	ldr	r3, [r7, #4]
}
    1546:	4618      	mov	r0, r3
    1548:	3708      	adds	r7, #8
    154a:	46bd      	mov	sp, r7
    154c:	bd80      	pop	{r7, pc}

0000154e <config_pin>:
// configuration d'une broche gpio
// arguments:
// 	port -> {GPIOA,GPIOB,GPIOC}
//	pin -> {0..15}
//  config -> {OUTPUT..., INPUT...}
void config_pin(gpio_t* port, unsigned pin, unsigned config){
    154e:	b480      	push	{r7}
    1550:	b087      	sub	sp, #28
    1552:	af00      	add	r7, sp, #0
    1554:	60f8      	str	r0, [r7, #12]
    1556:	60b9      	str	r1, [r7, #8]
    1558:	607a      	str	r2, [r7, #4]
	uint8_t shift;
	shift=(pin&7)<<2;
    155a:	68bb      	ldr	r3, [r7, #8]
    155c:	b2db      	uxtb	r3, r3
    155e:	009b      	lsls	r3, r3, #2
    1560:	b2db      	uxtb	r3, r3
    1562:	f003 031c 	and.w	r3, r3, #28
    1566:	75fb      	strb	r3, [r7, #23]
	port->CR[pin>>3]&=~(15<<shift);
    1568:	68bb      	ldr	r3, [r7, #8]
    156a:	08da      	lsrs	r2, r3, #3
    156c:	68bb      	ldr	r3, [r7, #8]
    156e:	08d9      	lsrs	r1, r3, #3
    1570:	68fb      	ldr	r3, [r7, #12]
    1572:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1576:	7df9      	ldrb	r1, [r7, #23]
    1578:	200f      	movs	r0, #15
    157a:	fa00 f101 	lsl.w	r1, r0, r1
    157e:	43c9      	mvns	r1, r1
    1580:	4019      	ands	r1, r3
    1582:	68fb      	ldr	r3, [r7, #12]
    1584:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
	port->CR[pin>>3]|=config<<shift;
    1588:	68bb      	ldr	r3, [r7, #8]
    158a:	08da      	lsrs	r2, r3, #3
    158c:	68bb      	ldr	r3, [r7, #8]
    158e:	08d9      	lsrs	r1, r3, #3
    1590:	68fb      	ldr	r3, [r7, #12]
    1592:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1596:	7dfb      	ldrb	r3, [r7, #23]
    1598:	6878      	ldr	r0, [r7, #4]
    159a:	fa00 f303 	lsl.w	r3, r0, r3
    159e:	4319      	orrs	r1, r3
    15a0:	68fb      	ldr	r3, [r7, #12]
    15a2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
    15a6:	bf00      	nop
    15a8:	371c      	adds	r7, #28
    15aa:	46bd      	mov	sp, r7
    15ac:	bc80      	pop	{r7}
    15ae:	4770      	bx	lr

000015b0 <read_pin>:

inline int read_pin(gpio_t* port, unsigned pin){
    15b0:	b480      	push	{r7}
    15b2:	b083      	sub	sp, #12
    15b4:	af00      	add	r7, sp, #0
    15b6:	6078      	str	r0, [r7, #4]
    15b8:	6039      	str	r1, [r7, #0]
	return port->IDR&(1<<pin);
    15ba:	687b      	ldr	r3, [r7, #4]
    15bc:	689b      	ldr	r3, [r3, #8]
    15be:	2101      	movs	r1, #1
    15c0:	683a      	ldr	r2, [r7, #0]
    15c2:	fa01 f202 	lsl.w	r2, r1, r2
    15c6:	4013      	ands	r3, r2
}
    15c8:	4618      	mov	r0, r3
    15ca:	370c      	adds	r7, #12
    15cc:	46bd      	mov	sp, r7
    15ce:	bc80      	pop	{r7}
    15d0:	4770      	bx	lr

000015d2 <write_pin>:

void write_pin(gpio_t* port, unsigned pin, int value){
    15d2:	b480      	push	{r7}
    15d4:	b085      	sub	sp, #20
    15d6:	af00      	add	r7, sp, #0
    15d8:	60f8      	str	r0, [r7, #12]
    15da:	60b9      	str	r1, [r7, #8]
    15dc:	607a      	str	r2, [r7, #4]
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15de:	687b      	ldr	r3, [r7, #4]
    15e0:	2b00      	cmp	r3, #0
    15e2:	d009      	beq.n	15f8 <write_pin+0x26>
    15e4:	68fb      	ldr	r3, [r7, #12]
    15e6:	68db      	ldr	r3, [r3, #12]
    15e8:	2101      	movs	r1, #1
    15ea:	68ba      	ldr	r2, [r7, #8]
    15ec:	fa01 f202 	lsl.w	r2, r1, r2
    15f0:	431a      	orrs	r2, r3
    15f2:	68fb      	ldr	r3, [r7, #12]
    15f4:	60da      	str	r2, [r3, #12]
}
    15f6:	e009      	b.n	160c <write_pin+0x3a>
	value?(port->ODR|=(1<<pin)):(port->ODR&=~(1<<pin));
    15f8:	68fb      	ldr	r3, [r7, #12]
    15fa:	68db      	ldr	r3, [r3, #12]
    15fc:	2101      	movs	r1, #1
    15fe:	68ba      	ldr	r2, [r7, #8]
    1600:	fa01 f202 	lsl.w	r2, r1, r2
    1604:	43d2      	mvns	r2, r2
    1606:	401a      	ands	r2, r3
    1608:	68fb      	ldr	r3, [r7, #12]
    160a:	60da      	str	r2, [r3, #12]
}
    160c:	bf00      	nop
    160e:	3714      	adds	r7, #20
    1610:	46bd      	mov	sp, r7
    1612:	bc80      	pop	{r7}
    1614:	4770      	bx	lr

00001616 <toggle_pin>:

inline void toggle_pin(gpio_t* port, unsigned pin){
    1616:	b480      	push	{r7}
    1618:	b083      	sub	sp, #12
    161a:	af00      	add	r7, sp, #0
    161c:	6078      	str	r0, [r7, #4]
    161e:	6039      	str	r1, [r7, #0]
	port->ODR^=(1<<pin);
    1620:	687b      	ldr	r3, [r7, #4]
    1622:	68db      	ldr	r3, [r3, #12]
    1624:	2101      	movs	r1, #1
    1626:	683a      	ldr	r2, [r7, #0]
    1628:	fa01 f202 	lsl.w	r2, r1, r2
    162c:	405a      	eors	r2, r3
    162e:	687b      	ldr	r3, [r7, #4]
    1630:	60da      	str	r2, [r3, #12]
}
    1632:	bf00      	nop
    1634:	370c      	adds	r7, #12
    1636:	46bd      	mov	sp, r7
    1638:	bc80      	pop	{r7}
    163a:	4770      	bx	lr

0000163c <set_sysclock>:
void* ffa;


// configure SYSCLK à la fréquence maximale de 72 Mhz
// en utilisant le cristal externe (HSE) et le PLL
static void set_sysclock(){
    163c:	b480      	push	{r7}
    163e:	af00      	add	r7, sp, #0
	 // active l'oscillateur externe
	RCC->CR|=RCC_CR_HSEON;
    1640:	4a18      	ldr	r2, [pc, #96]	; (16a4 <set_sysclock+0x68>)
    1642:	4b18      	ldr	r3, [pc, #96]	; (16a4 <set_sysclock+0x68>)
    1644:	681b      	ldr	r3, [r3, #0]
    1646:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    164a:	6013      	str	r3, [r2, #0]
	 // attend que l'oscillateur soit prêt
   while (!(RCC->CR&RCC_CR_HSERDY));
    164c:	bf00      	nop
    164e:	4b15      	ldr	r3, [pc, #84]	; (16a4 <set_sysclock+0x68>)
    1650:	681b      	ldr	r3, [r3, #0]
    1652:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    1656:	2b00      	cmp	r3, #0
    1658:	d0f9      	beq.n	164e <set_sysclock+0x12>
     // sélection PREDIV1 pour la source du PLL
     // multiplie la fréquence HSE par 5 
     // pour une fréquence  Fsysclk de 64 Mhz
    RCC->CFGR|=RCC_CFGR_PLLSRC_HSE|(PLLMUL<<RCC_CFGR_PLLMUL_POS);
    165a:	4a12      	ldr	r2, [pc, #72]	; (16a4 <set_sysclock+0x68>)
    165c:	4b11      	ldr	r3, [pc, #68]	; (16a4 <set_sysclock+0x68>)
    165e:	685b      	ldr	r3, [r3, #4]
    1660:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1664:	6053      	str	r3, [r2, #4]
    // active le PLL
    RCC->CR|=RCC_CR_PLLON;
    1666:	4a0f      	ldr	r2, [pc, #60]	; (16a4 <set_sysclock+0x68>)
    1668:	4b0e      	ldr	r3, [pc, #56]	; (16a4 <set_sysclock+0x68>)
    166a:	681b      	ldr	r3, [r3, #0]
    166c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1670:	6013      	str	r3, [r2, #0]
    // Attend que le PLL soit prêt
    while (!(RCC->CR&RCC_CR_PLLRDY));
    1672:	bf00      	nop
    1674:	4b0b      	ldr	r3, [pc, #44]	; (16a4 <set_sysclock+0x68>)
    1676:	681b      	ldr	r3, [r3, #0]
    1678:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    167c:	2b00      	cmp	r3, #0
    167e:	d0f9      	beq.n	1674 <set_sysclock+0x38>
    // ajoute délais d'accès à la mémoire flash
    // active le prefetch buffer
    FLASH->ACR|=(WAIT_2_CY<<FLASH_ACR_LATENCY_POS)|FLASH_ACR_PRFTBE;
    1680:	4a09      	ldr	r2, [pc, #36]	; (16a8 <set_sysclock+0x6c>)
    1682:	4b09      	ldr	r3, [pc, #36]	; (16a8 <set_sysclock+0x6c>)
    1684:	681b      	ldr	r3, [r3, #0]
    1686:	f043 0312 	orr.w	r3, r3, #18
    168a:	6013      	str	r3, [r2, #0]
	// La fréquence maximale pour APB1 doit-être de <=36 Mhz
	// donc divise SYSCLK/2
    // Sélectionne le PLL comme source pour SYSCLK dans CR
	RCC->CFGR|=(RCC_CFGR_PPREx_DIV2<<RCC_CFGR_PPRE1_POS)|(RCC_CFGR_SW_PLL<<RCC_CFGR_SW_POS);
    168c:	4a05      	ldr	r2, [pc, #20]	; (16a4 <set_sysclock+0x68>)
    168e:	4b05      	ldr	r3, [pc, #20]	; (16a4 <set_sysclock+0x68>)
    1690:	685b      	ldr	r3, [r3, #4]
    1692:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1696:	f043 0302 	orr.w	r3, r3, #2
    169a:	6053      	str	r3, [r2, #4]
}
    169c:	bf00      	nop
    169e:	46bd      	mov	sp, r7
    16a0:	bc80      	pop	{r7}
    16a2:	4770      	bx	lr
    16a4:	40021000 	.word	0x40021000
    16a8:	40022000 	.word	0x40022000

000016ac <main>:


extern void print_fault(const char *msg, sfrp_t adr);


void main(void){
    16ac:	b580      	push	{r7, lr}
    16ae:	af00      	add	r7, sp, #0
	set_sysclock();
    16b0:	f7ff ffc4 	bl	163c <set_sysclock>
//	set_int_priority(IRQ_SVC,15);
	config_systicks();
    16b4:	f001 f8e2 	bl	287c <config_systicks>
//	rtc_init(1000,RTC_SECIE|RTC_ALRIE);
	RCC->APB2ENR=RCC_APB2ENR_IOPAEN|RCC_APB2ENR_IOPBEN|RCC_APB2ENR_IOPCEN|RCC_APB2ENR_AFIOEN|RCC_APB2ENR_TIM1EN;
    16b8:	4b0f      	ldr	r3, [pc, #60]	; (16f8 <main+0x4c>)
    16ba:	f640 021d 	movw	r2, #2077	; 0x81d
    16be:	619a      	str	r2, [r3, #24]
//	RCC->APB1ENR=RCC_APB1ENR_SPI2EN;
//	RCC->AHBENR|=RCC_AHBENR_DMA1EN; // activation DMA1
	config_pin(LED_PORT,LED_PIN,OUTPUT_OD_SLOW);
    16c0:	2206      	movs	r2, #6
    16c2:	210d      	movs	r1, #13
    16c4:	480d      	ldr	r0, [pc, #52]	; (16fc <main+0x50>)
    16c6:	f7ff ff42 	bl	154e <config_pin>
	vt100_init();
    16ca:	f001 fcd9 	bl	3080 <vt100_init>
	console_init(SERIAL);
    16ce:	2002      	movs	r0, #2
    16d0:	f7ff f852 	bl	778 <console_init>
	tvout_init();
    16d4:	f001 f912 	bl	28fc <tvout_init>
	//if (!vt_ready()){con_select(LOCAL);}
	write_pin(PORTC,LED_PIN,1);
    16d8:	2201      	movs	r2, #1
    16da:	210d      	movs	r1, #13
    16dc:	4807      	ldr	r0, [pc, #28]	; (16fc <main+0x50>)
    16de:	f7ff ff78 	bl	15d2 <write_pin>
	while(1){
		conout(conin());
    16e2:	f7ff f8cb 	bl	87c <conin>
    16e6:	4603      	mov	r3, r0
    16e8:	4618      	mov	r0, r3
    16ea:	f7ff f871 	bl	7d0 <conout>
		toggle_pin(PORTC,LED_PIN);
    16ee:	210d      	movs	r1, #13
    16f0:	4802      	ldr	r0, [pc, #8]	; (16fc <main+0x50>)
    16f2:	f7ff ff90 	bl	1616 <toggle_pin>
		conout(conin());
    16f6:	e7f4      	b.n	16e2 <main+0x36>
    16f8:	40021000 	.word	0x40021000
    16fc:	40011000 	.word	0x40011000

00001700 <enable_interrupt>:

#include "../include/blue_pill.h"



void enable_interrupt(int irq){
    1700:	b480      	push	{r7}
    1702:	b083      	sub	sp, #12
    1704:	af00      	add	r7, sp, #0
    1706:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    1708:	687b      	ldr	r3, [r7, #4]
    170a:	2b3b      	cmp	r3, #59	; 0x3b
    170c:	dc17      	bgt.n	173e <enable_interrupt+0x3e>
	ISER[irq>>5]|=1<<(irq&0x1f);
    170e:	687b      	ldr	r3, [r7, #4]
    1710:	115b      	asrs	r3, r3, #5
    1712:	009b      	lsls	r3, r3, #2
    1714:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1718:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    171c:	687a      	ldr	r2, [r7, #4]
    171e:	1152      	asrs	r2, r2, #5
    1720:	0092      	lsls	r2, r2, #2
    1722:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1726:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    172a:	6812      	ldr	r2, [r2, #0]
    172c:	6879      	ldr	r1, [r7, #4]
    172e:	f001 011f 	and.w	r1, r1, #31
    1732:	2001      	movs	r0, #1
    1734:	fa00 f101 	lsl.w	r1, r0, r1
    1738:	430a      	orrs	r2, r1
    173a:	601a      	str	r2, [r3, #0]
    173c:	e000      	b.n	1740 <enable_interrupt+0x40>
	if (irq>LAST_IRQ) return ;
    173e:	bf00      	nop
}
    1740:	370c      	adds	r7, #12
    1742:	46bd      	mov	sp, r7
    1744:	bc80      	pop	{r7}
    1746:	4770      	bx	lr

00001748 <disable_interrupt>:


void disable_interrupt(int irq){
    1748:	b480      	push	{r7}
    174a:	b083      	sub	sp, #12
    174c:	af00      	add	r7, sp, #0
    174e:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return ;
    1750:	687b      	ldr	r3, [r7, #4]
    1752:	2b3b      	cmp	r3, #59	; 0x3b
    1754:	dc0c      	bgt.n	1770 <disable_interrupt+0x28>
	ICER[irq>>5]=(1<<(irq&0x1f));
    1756:	687b      	ldr	r3, [r7, #4]
    1758:	115b      	asrs	r3, r3, #5
    175a:	009a      	lsls	r2, r3, #2
    175c:	4b07      	ldr	r3, [pc, #28]	; (177c <disable_interrupt+0x34>)
    175e:	4413      	add	r3, r2
    1760:	687a      	ldr	r2, [r7, #4]
    1762:	f002 021f 	and.w	r2, r2, #31
    1766:	2101      	movs	r1, #1
    1768:	fa01 f202 	lsl.w	r2, r1, r2
    176c:	601a      	str	r2, [r3, #0]
    176e:	e000      	b.n	1772 <disable_interrupt+0x2a>
	if (irq>LAST_IRQ) return ;
    1770:	bf00      	nop
}
    1772:	370c      	adds	r7, #12
    1774:	46bd      	mov	sp, r7
    1776:	bc80      	pop	{r7}
    1778:	4770      	bx	lr
    177a:	bf00      	nop
    177c:	e000e180 	.word	0xe000e180

00001780 <get_pending>:

unsigned get_pending(int irq){
    1780:	b480      	push	{r7}
    1782:	b083      	sub	sp, #12
    1784:	af00      	add	r7, sp, #0
    1786:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    1788:	687b      	ldr	r3, [r7, #4]
    178a:	2b3b      	cmp	r3, #59	; 0x3b
    178c:	dd01      	ble.n	1792 <get_pending+0x12>
    178e:	2300      	movs	r3, #0
    1790:	e00c      	b.n	17ac <get_pending+0x2c>
	return ICPR[irq>>5]&(1<<(irq&0x1f));
    1792:	687b      	ldr	r3, [r7, #4]
    1794:	115b      	asrs	r3, r3, #5
    1796:	009a      	lsls	r2, r3, #2
    1798:	4b07      	ldr	r3, [pc, #28]	; (17b8 <get_pending+0x38>)
    179a:	4413      	add	r3, r2
    179c:	681b      	ldr	r3, [r3, #0]
    179e:	687a      	ldr	r2, [r7, #4]
    17a0:	f002 021f 	and.w	r2, r2, #31
    17a4:	2101      	movs	r1, #1
    17a6:	fa01 f202 	lsl.w	r2, r1, r2
    17aa:	4013      	ands	r3, r2
}
    17ac:	4618      	mov	r0, r3
    17ae:	370c      	adds	r7, #12
    17b0:	46bd      	mov	sp, r7
    17b2:	bc80      	pop	{r7}
    17b4:	4770      	bx	lr
    17b6:	bf00      	nop
    17b8:	e000e280 	.word	0xe000e280

000017bc <get_active>:

unsigned get_active(int irq){
    17bc:	b480      	push	{r7}
    17be:	b083      	sub	sp, #12
    17c0:	af00      	add	r7, sp, #0
    17c2:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return 0;
    17c4:	687b      	ldr	r3, [r7, #4]
    17c6:	2b3b      	cmp	r3, #59	; 0x3b
    17c8:	dd01      	ble.n	17ce <get_active+0x12>
    17ca:	2300      	movs	r3, #0
    17cc:	e00e      	b.n	17ec <get_active+0x30>
	return IABR[irq>>5]&(1<<(irq&0x1f));
    17ce:	687b      	ldr	r3, [r7, #4]
    17d0:	115b      	asrs	r3, r3, #5
    17d2:	009b      	lsls	r3, r3, #2
    17d4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    17d8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    17dc:	681b      	ldr	r3, [r3, #0]
    17de:	687a      	ldr	r2, [r7, #4]
    17e0:	f002 021f 	and.w	r2, r2, #31
    17e4:	2101      	movs	r1, #1
    17e6:	fa01 f202 	lsl.w	r2, r1, r2
    17ea:	4013      	ands	r3, r2
}
    17ec:	4618      	mov	r0, r3
    17ee:	370c      	adds	r7, #12
    17f0:	46bd      	mov	sp, r7
    17f2:	bc80      	pop	{r7}
    17f4:	4770      	bx	lr

000017f6 <set_pending>:

void set_pending(int irq){
    17f6:	b480      	push	{r7}
    17f8:	b083      	sub	sp, #12
    17fa:	af00      	add	r7, sp, #0
    17fc:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    17fe:	687b      	ldr	r3, [r7, #4]
    1800:	2b3b      	cmp	r3, #59	; 0x3b
    1802:	dc17      	bgt.n	1834 <set_pending+0x3e>
	ISPR[irq>>5]|=1<<(irq&0x1f);
    1804:	687b      	ldr	r3, [r7, #4]
    1806:	115b      	asrs	r3, r3, #5
    1808:	009b      	lsls	r3, r3, #2
    180a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    180e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1812:	687a      	ldr	r2, [r7, #4]
    1814:	1152      	asrs	r2, r2, #5
    1816:	0092      	lsls	r2, r2, #2
    1818:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    181c:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    1820:	6812      	ldr	r2, [r2, #0]
    1822:	6879      	ldr	r1, [r7, #4]
    1824:	f001 011f 	and.w	r1, r1, #31
    1828:	2001      	movs	r0, #1
    182a:	fa00 f101 	lsl.w	r1, r0, r1
    182e:	430a      	orrs	r2, r1
    1830:	601a      	str	r2, [r3, #0]
    1832:	e000      	b.n	1836 <set_pending+0x40>
	if (irq>LAST_IRQ) return;
    1834:	bf00      	nop
}
    1836:	370c      	adds	r7, #12
    1838:	46bd      	mov	sp, r7
    183a:	bc80      	pop	{r7}
    183c:	4770      	bx	lr

0000183e <clear_pending>:

void clear_pending(int irq){
    183e:	b480      	push	{r7}
    1840:	b083      	sub	sp, #12
    1842:	af00      	add	r7, sp, #0
    1844:	6078      	str	r0, [r7, #4]
	if (irq>LAST_IRQ) return;
    1846:	687b      	ldr	r3, [r7, #4]
    1848:	2b3b      	cmp	r3, #59	; 0x3b
    184a:	dc0c      	bgt.n	1866 <clear_pending+0x28>
	ICPR[irq>>5]=(1<<(irq&0x1f));
    184c:	687b      	ldr	r3, [r7, #4]
    184e:	115b      	asrs	r3, r3, #5
    1850:	009a      	lsls	r2, r3, #2
    1852:	4b07      	ldr	r3, [pc, #28]	; (1870 <clear_pending+0x32>)
    1854:	4413      	add	r3, r2
    1856:	687a      	ldr	r2, [r7, #4]
    1858:	f002 021f 	and.w	r2, r2, #31
    185c:	2101      	movs	r1, #1
    185e:	fa01 f202 	lsl.w	r2, r1, r2
    1862:	601a      	str	r2, [r3, #0]
    1864:	e000      	b.n	1868 <clear_pending+0x2a>
	if (irq>LAST_IRQ) return;
    1866:	bf00      	nop
}
    1868:	370c      	adds	r7, #12
    186a:	46bd      	mov	sp, r7
    186c:	bc80      	pop	{r7}
    186e:	4770      	bx	lr
    1870:	e000e280 	.word	0xe000e280

00001874 <set_int_priority>:

// priority: 0-15  0=highest, 15=lowest
void set_int_priority(int irq, unsigned priority){
    1874:	b480      	push	{r7}
    1876:	b083      	sub	sp, #12
    1878:	af00      	add	r7, sp, #0
    187a:	6078      	str	r0, [r7, #4]
    187c:	6039      	str	r1, [r7, #0]
	if ((irq>=0) && (irq<=LAST_IRQ)){
    187e:	687b      	ldr	r3, [r7, #4]
    1880:	2b00      	cmp	r3, #0
    1882:	db0d      	blt.n	18a0 <set_int_priority+0x2c>
    1884:	687b      	ldr	r3, [r7, #4]
    1886:	2b3b      	cmp	r3, #59	; 0x3b
    1888:	dc0a      	bgt.n	18a0 <set_int_priority+0x2c>
		IPR[irq]=(uint8_t)((priority&15)<<4);
    188a:	687b      	ldr	r3, [r7, #4]
    188c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1890:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1894:	683a      	ldr	r2, [r7, #0]
    1896:	b2d2      	uxtb	r2, r2
    1898:	0112      	lsls	r2, r2, #4
    189a:	b2d2      	uxtb	r2, r2
    189c:	701a      	strb	r2, [r3, #0]
	}else if ((irq<0) && (irq>-16)){
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
	}
}
    189e:	e012      	b.n	18c6 <set_int_priority+0x52>
	}else if ((irq<0) && (irq>-16)){
    18a0:	687b      	ldr	r3, [r7, #4]
    18a2:	2b00      	cmp	r3, #0
    18a4:	da0f      	bge.n	18c6 <set_int_priority+0x52>
    18a6:	687b      	ldr	r3, [r7, #4]
    18a8:	f113 0f0f 	cmn.w	r3, #15
    18ac:	db0b      	blt.n	18c6 <set_int_priority+0x52>
		SHPR[-(irq+4)]=(uint8_t)((priority&15)<<4);
    18ae:	687a      	ldr	r2, [r7, #4]
    18b0:	f06f 0303 	mvn.w	r3, #3
    18b4:	1a9b      	subs	r3, r3, r2
    18b6:	461a      	mov	r2, r3
    18b8:	4b05      	ldr	r3, [pc, #20]	; (18d0 <set_int_priority+0x5c>)
    18ba:	4413      	add	r3, r2
    18bc:	683a      	ldr	r2, [r7, #0]
    18be:	b2d2      	uxtb	r2, r2
    18c0:	0112      	lsls	r2, r2, #4
    18c2:	b2d2      	uxtb	r2, r2
    18c4:	701a      	strb	r2, [r3, #0]
}
    18c6:	bf00      	nop
    18c8:	370c      	adds	r7, #12
    18ca:	46bd      	mov	sp, r7
    18cc:	bc80      	pop	{r7}
    18ce:	4770      	bx	lr
    18d0:	e000ed18 	.word	0xe000ed18

000018d4 <leap_year>:
#define RTC_ACCESS_CODE 0xAA55

static const uint8_t days_per_month[13]={0,31,28,31,30,31,30,31,31,30,31,30,31};

// retourne vrai si c'est une année bisextile
int leap_year(unsigned y){
    18d4:	b480      	push	{r7}
    18d6:	b083      	sub	sp, #12
    18d8:	af00      	add	r7, sp, #0
    18da:	6078      	str	r0, [r7, #4]
	if (!(y&3)){
    18dc:	687b      	ldr	r3, [r7, #4]
    18de:	f003 0303 	and.w	r3, r3, #3
    18e2:	2b00      	cmp	r3, #0
    18e4:	d11a      	bne.n	191c <leap_year+0x48>
		if ((y%100==0) && (y%400)){
    18e6:	687a      	ldr	r2, [r7, #4]
    18e8:	4b0f      	ldr	r3, [pc, #60]	; (1928 <leap_year+0x54>)
    18ea:	fba3 1302 	umull	r1, r3, r3, r2
    18ee:	095b      	lsrs	r3, r3, #5
    18f0:	2164      	movs	r1, #100	; 0x64
    18f2:	fb01 f303 	mul.w	r3, r1, r3
    18f6:	1ad3      	subs	r3, r2, r3
    18f8:	2b00      	cmp	r3, #0
    18fa:	d10d      	bne.n	1918 <leap_year+0x44>
    18fc:	687a      	ldr	r2, [r7, #4]
    18fe:	4b0a      	ldr	r3, [pc, #40]	; (1928 <leap_year+0x54>)
    1900:	fba3 1302 	umull	r1, r3, r3, r2
    1904:	09db      	lsrs	r3, r3, #7
    1906:	f44f 71c8 	mov.w	r1, #400	; 0x190
    190a:	fb01 f303 	mul.w	r3, r1, r3
    190e:	1ad3      	subs	r3, r2, r3
    1910:	2b00      	cmp	r3, #0
    1912:	d001      	beq.n	1918 <leap_year+0x44>
			return 0;
    1914:	2300      	movs	r3, #0
    1916:	e002      	b.n	191e <leap_year+0x4a>
		}
		return 1;
    1918:	2301      	movs	r3, #1
    191a:	e000      	b.n	191e <leap_year+0x4a>
	}
	return 0;
    191c:	2300      	movs	r3, #0
}
    191e:	4618      	mov	r0, r3
    1920:	370c      	adds	r7, #12
    1922:	46bd      	mov	sp, r7
    1924:	bc80      	pop	{r7}
    1926:	4770      	bx	lr
    1928:	51eb851f 	.word	0x51eb851f

0000192c <sec_per_month>:


uint32_t sec_per_month(int leap, uint32_t month){
    192c:	b480      	push	{r7}
    192e:	b085      	sub	sp, #20
    1930:	af00      	add	r7, sp, #0
    1932:	6078      	str	r0, [r7, #4]
    1934:	6039      	str	r1, [r7, #0]
	uint32_t sec;
	sec=SEC_PER_DAY*days_per_month[month];
    1936:	4a0d      	ldr	r2, [pc, #52]	; (196c <sec_per_month+0x40>)
    1938:	683b      	ldr	r3, [r7, #0]
    193a:	4413      	add	r3, r2
    193c:	781b      	ldrb	r3, [r3, #0]
    193e:	461a      	mov	r2, r3
    1940:	4b0b      	ldr	r3, [pc, #44]	; (1970 <sec_per_month+0x44>)
    1942:	fb03 f302 	mul.w	r3, r3, r2
    1946:	60fb      	str	r3, [r7, #12]
	if (month==2 && leap){
    1948:	683b      	ldr	r3, [r7, #0]
    194a:	2b02      	cmp	r3, #2
    194c:	d108      	bne.n	1960 <sec_per_month+0x34>
    194e:	687b      	ldr	r3, [r7, #4]
    1950:	2b00      	cmp	r3, #0
    1952:	d005      	beq.n	1960 <sec_per_month+0x34>
		sec+=SEC_PER_DAY;
    1954:	68fb      	ldr	r3, [r7, #12]
    1956:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    195a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    195e:	60fb      	str	r3, [r7, #12]
	}
	return sec;
    1960:	68fb      	ldr	r3, [r7, #12]
}
    1962:	4618      	mov	r0, r3
    1964:	3714      	adds	r7, #20
    1966:	46bd      	mov	sp, r7
    1968:	bc80      	pop	{r7}
    196a:	4770      	bx	lr
    196c:	000032cc 	.word	0x000032cc
    1970:	00015180 	.word	0x00015180

00001974 <get_date_time>:

// convertie le compteur de secondes du RTC en date et heure
void get_date_time(date_time_t *dt){
    1974:	b580      	push	{r7, lr}
    1976:	b086      	sub	sp, #24
    1978:	af00      	add	r7, sp, #0
    197a:	6078      	str	r0, [r7, #4]
	uint32_t rtc_cntr,sec;
	int i,leap;
	
	rtc_cntr=(RTC->CNTH<<16)+RTC->CNTL;
    197c:	4b66      	ldr	r3, [pc, #408]	; (1b18 <get_date_time+0x1a4>)
    197e:	699b      	ldr	r3, [r3, #24]
    1980:	041a      	lsls	r2, r3, #16
    1982:	4b65      	ldr	r3, [pc, #404]	; (1b18 <get_date_time+0x1a4>)
    1984:	69db      	ldr	r3, [r3, #28]
    1986:	4413      	add	r3, r2
    1988:	617b      	str	r3, [r7, #20]
	dt->year=EPOCH_YEAR;
    198a:	687b      	ldr	r3, [r7, #4]
    198c:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1990:	811a      	strh	r2, [r3, #8]
	leap=leap_year(EPOCH_YEAR);
    1992:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1996:	f7ff ff9d 	bl	18d4 <leap_year>
    199a:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    199c:	e019      	b.n	19d2 <get_date_time+0x5e>
		if (leap){
    199e:	693b      	ldr	r3, [r7, #16]
    19a0:	2b00      	cmp	r3, #0
    19a2:	d006      	beq.n	19b2 <get_date_time+0x3e>
			rtc_cntr-=SEC_PER_LEAP_YEAR;
    19a4:	697b      	ldr	r3, [r7, #20]
    19a6:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    19aa:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    19ae:	617b      	str	r3, [r7, #20]
    19b0:	e003      	b.n	19ba <get_date_time+0x46>
		}else{
			rtc_cntr-=SEC_PER_YEAR;
    19b2:	697a      	ldr	r2, [r7, #20]
    19b4:	4b59      	ldr	r3, [pc, #356]	; (1b1c <get_date_time+0x1a8>)
    19b6:	4413      	add	r3, r2
    19b8:	617b      	str	r3, [r7, #20]
		}
		dt->year++;
    19ba:	687b      	ldr	r3, [r7, #4]
    19bc:	891b      	ldrh	r3, [r3, #8]
    19be:	3301      	adds	r3, #1
    19c0:	b29a      	uxth	r2, r3
    19c2:	687b      	ldr	r3, [r7, #4]
    19c4:	811a      	strh	r2, [r3, #8]
		leap=leap_year(dt->year);
    19c6:	687b      	ldr	r3, [r7, #4]
    19c8:	891b      	ldrh	r3, [r3, #8]
    19ca:	4618      	mov	r0, r3
    19cc:	f7ff ff82 	bl	18d4 <leap_year>
    19d0:	6138      	str	r0, [r7, #16]
	while (!leap && (rtc_cntr>=SEC_PER_YEAR) || leap && rtc_cntr>=SEC_PER_LEAP_YEAR){
    19d2:	693b      	ldr	r3, [r7, #16]
    19d4:	2b00      	cmp	r3, #0
    19d6:	d103      	bne.n	19e0 <get_date_time+0x6c>
    19d8:	697b      	ldr	r3, [r7, #20]
    19da:	4a51      	ldr	r2, [pc, #324]	; (1b20 <get_date_time+0x1ac>)
    19dc:	4293      	cmp	r3, r2
    19de:	d8de      	bhi.n	199e <get_date_time+0x2a>
    19e0:	693b      	ldr	r3, [r7, #16]
    19e2:	2b00      	cmp	r3, #0
    19e4:	d003      	beq.n	19ee <get_date_time+0x7a>
    19e6:	697b      	ldr	r3, [r7, #20]
    19e8:	4a4e      	ldr	r2, [pc, #312]	; (1b24 <get_date_time+0x1b0>)
    19ea:	4293      	cmp	r3, r2
    19ec:	d8d7      	bhi.n	199e <get_date_time+0x2a>
	}//while
	dt->month=1;
    19ee:	687a      	ldr	r2, [r7, #4]
    19f0:	8853      	ldrh	r3, [r2, #2]
    19f2:	2101      	movs	r1, #1
    19f4:	f361 1389 	bfi	r3, r1, #6, #4
    19f8:	8053      	strh	r3, [r2, #2]
	dt->day=1;
    19fa:	687a      	ldr	r2, [r7, #4]
    19fc:	7893      	ldrb	r3, [r2, #2]
    19fe:	2101      	movs	r1, #1
    1a00:	f361 0345 	bfi	r3, r1, #1, #5
    1a04:	7093      	strb	r3, [r2, #2]
	dt->hour=0;
    1a06:	687a      	ldr	r2, [r7, #4]
    1a08:	6813      	ldr	r3, [r2, #0]
    1a0a:	f36f 3310 	bfc	r3, #12, #5
    1a0e:	6013      	str	r3, [r2, #0]
	dt->minute=0;
    1a10:	687a      	ldr	r2, [r7, #4]
    1a12:	8813      	ldrh	r3, [r2, #0]
    1a14:	f36f 138b 	bfc	r3, #6, #6
    1a18:	8013      	strh	r3, [r2, #0]
	dt->second=0;
    1a1a:	687a      	ldr	r2, [r7, #4]
    1a1c:	7813      	ldrb	r3, [r2, #0]
    1a1e:	f36f 0305 	bfc	r3, #0, #6
    1a22:	7013      	strb	r3, [r2, #0]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1a24:	e011      	b.n	1a4a <get_date_time+0xd6>
		dt->month++;
    1a26:	687b      	ldr	r3, [r7, #4]
    1a28:	885b      	ldrh	r3, [r3, #2]
    1a2a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1a2e:	b2db      	uxtb	r3, r3
    1a30:	3301      	adds	r3, #1
    1a32:	f003 030f 	and.w	r3, r3, #15
    1a36:	b2d9      	uxtb	r1, r3
    1a38:	687a      	ldr	r2, [r7, #4]
    1a3a:	8853      	ldrh	r3, [r2, #2]
    1a3c:	f361 1389 	bfi	r3, r1, #6, #4
    1a40:	8053      	strh	r3, [r2, #2]
		rtc_cntr-=sec;
    1a42:	697a      	ldr	r2, [r7, #20]
    1a44:	68fb      	ldr	r3, [r7, #12]
    1a46:	1ad3      	subs	r3, r2, r3
    1a48:	617b      	str	r3, [r7, #20]
	while (rtc_cntr>(sec=sec_per_month(leap,dt->month))){
    1a4a:	687b      	ldr	r3, [r7, #4]
    1a4c:	885b      	ldrh	r3, [r3, #2]
    1a4e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1a52:	b2db      	uxtb	r3, r3
    1a54:	4619      	mov	r1, r3
    1a56:	6938      	ldr	r0, [r7, #16]
    1a58:	f7ff ff68 	bl	192c <sec_per_month>
    1a5c:	60f8      	str	r0, [r7, #12]
    1a5e:	68fa      	ldr	r2, [r7, #12]
    1a60:	697b      	ldr	r3, [r7, #20]
    1a62:	429a      	cmp	r2, r3
    1a64:	d3df      	bcc.n	1a26 <get_date_time+0xb2>
	}//while
	dt->day=1+rtc_cntr/SEC_PER_DAY;
    1a66:	697b      	ldr	r3, [r7, #20]
    1a68:	4a2f      	ldr	r2, [pc, #188]	; (1b28 <get_date_time+0x1b4>)
    1a6a:	fba2 2303 	umull	r2, r3, r2, r3
    1a6e:	0c1b      	lsrs	r3, r3, #16
    1a70:	b2db      	uxtb	r3, r3
    1a72:	3301      	adds	r3, #1
    1a74:	b2db      	uxtb	r3, r3
    1a76:	f003 031f 	and.w	r3, r3, #31
    1a7a:	b2d9      	uxtb	r1, r3
    1a7c:	687a      	ldr	r2, [r7, #4]
    1a7e:	7893      	ldrb	r3, [r2, #2]
    1a80:	f361 0345 	bfi	r3, r1, #1, #5
    1a84:	7093      	strb	r3, [r2, #2]
	rtc_cntr%=SEC_PER_DAY;
    1a86:	697b      	ldr	r3, [r7, #20]
    1a88:	4a27      	ldr	r2, [pc, #156]	; (1b28 <get_date_time+0x1b4>)
    1a8a:	fba2 1203 	umull	r1, r2, r2, r3
    1a8e:	0c12      	lsrs	r2, r2, #16
    1a90:	4926      	ldr	r1, [pc, #152]	; (1b2c <get_date_time+0x1b8>)
    1a92:	fb01 f202 	mul.w	r2, r1, r2
    1a96:	1a9b      	subs	r3, r3, r2
    1a98:	617b      	str	r3, [r7, #20]
	dt->hour=rtc_cntr/SEC_PER_HR;
    1a9a:	697b      	ldr	r3, [r7, #20]
    1a9c:	4a24      	ldr	r2, [pc, #144]	; (1b30 <get_date_time+0x1bc>)
    1a9e:	fba2 2303 	umull	r2, r3, r2, r3
    1aa2:	0adb      	lsrs	r3, r3, #11
    1aa4:	b2db      	uxtb	r3, r3
    1aa6:	f003 031f 	and.w	r3, r3, #31
    1aaa:	b2d9      	uxtb	r1, r3
    1aac:	687a      	ldr	r2, [r7, #4]
    1aae:	6813      	ldr	r3, [r2, #0]
    1ab0:	f361 3310 	bfi	r3, r1, #12, #5
    1ab4:	6013      	str	r3, [r2, #0]
	rtc_cntr%=SEC_PER_HR;
    1ab6:	697b      	ldr	r3, [r7, #20]
    1ab8:	4a1d      	ldr	r2, [pc, #116]	; (1b30 <get_date_time+0x1bc>)
    1aba:	fba2 1203 	umull	r1, r2, r2, r3
    1abe:	0ad2      	lsrs	r2, r2, #11
    1ac0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1ac4:	fb01 f202 	mul.w	r2, r1, r2
    1ac8:	1a9b      	subs	r3, r3, r2
    1aca:	617b      	str	r3, [r7, #20]
	dt->minute=rtc_cntr/SEC_PER_MIN;
    1acc:	697b      	ldr	r3, [r7, #20]
    1ace:	4a19      	ldr	r2, [pc, #100]	; (1b34 <get_date_time+0x1c0>)
    1ad0:	fba2 2303 	umull	r2, r3, r2, r3
    1ad4:	095b      	lsrs	r3, r3, #5
    1ad6:	b2db      	uxtb	r3, r3
    1ad8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1adc:	b2d9      	uxtb	r1, r3
    1ade:	687a      	ldr	r2, [r7, #4]
    1ae0:	8813      	ldrh	r3, [r2, #0]
    1ae2:	f361 138b 	bfi	r3, r1, #6, #6
    1ae6:	8013      	strh	r3, [r2, #0]
	dt->second=rtc_cntr%SEC_PER_MIN;
    1ae8:	6979      	ldr	r1, [r7, #20]
    1aea:	4b12      	ldr	r3, [pc, #72]	; (1b34 <get_date_time+0x1c0>)
    1aec:	fba3 2301 	umull	r2, r3, r3, r1
    1af0:	095a      	lsrs	r2, r3, #5
    1af2:	4613      	mov	r3, r2
    1af4:	011b      	lsls	r3, r3, #4
    1af6:	1a9b      	subs	r3, r3, r2
    1af8:	009b      	lsls	r3, r3, #2
    1afa:	1aca      	subs	r2, r1, r3
    1afc:	b2d3      	uxtb	r3, r2
    1afe:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1b02:	b2d9      	uxtb	r1, r3
    1b04:	687a      	ldr	r2, [r7, #4]
    1b06:	7813      	ldrb	r3, [r2, #0]
    1b08:	f361 0305 	bfi	r3, r1, #0, #6
    1b0c:	7013      	strb	r3, [r2, #0]
}
    1b0e:	bf00      	nop
    1b10:	3718      	adds	r7, #24
    1b12:	46bd      	mov	sp, r7
    1b14:	bd80      	pop	{r7, pc}
    1b16:	bf00      	nop
    1b18:	40002800 	.word	0x40002800
    1b1c:	fe1ecc80 	.word	0xfe1ecc80
    1b20:	01e1337f 	.word	0x01e1337f
    1b24:	01e284ff 	.word	0x01e284ff
    1b28:	c22e4507 	.word	0xc22e4507
    1b2c:	00015180 	.word	0x00015180
    1b30:	91a2b3c5 	.word	0x91a2b3c5
    1b34:	88888889 	.word	0x88888889

00001b38 <set_date_time>:

// convertie date et heure en valeur RTC_CNT
void set_date_time(date_time_t *dt){
    1b38:	b580      	push	{r7, lr}
    1b3a:	b086      	sub	sp, #24
    1b3c:	af00      	add	r7, sp, #0
    1b3e:	6078      	str	r0, [r7, #4]
	uint32_t i,rtc_cntr=0;
    1b40:	2300      	movs	r3, #0
    1b42:	613b      	str	r3, [r7, #16]
	int leap;
	
	if (dt->year<EPOCH_YEAR) dt->year=EPOCH_YEAR;
    1b44:	687b      	ldr	r3, [r7, #4]
    1b46:	891b      	ldrh	r3, [r3, #8]
    1b48:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1b4c:	4293      	cmp	r3, r2
    1b4e:	d803      	bhi.n	1b58 <set_date_time+0x20>
    1b50:	687b      	ldr	r3, [r7, #4]
    1b52:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1b56:	811a      	strh	r2, [r3, #8]
	if (dt->year>MAX_YEAR) dt->year=MAX_YEAR;
    1b58:	687b      	ldr	r3, [r7, #4]
    1b5a:	891b      	ldrh	r3, [r3, #8]
    1b5c:	f640 023a 	movw	r2, #2106	; 0x83a
    1b60:	4293      	cmp	r3, r2
    1b62:	d903      	bls.n	1b6c <set_date_time+0x34>
    1b64:	687b      	ldr	r3, [r7, #4]
    1b66:	f640 023a 	movw	r2, #2106	; 0x83a
    1b6a:	811a      	strh	r2, [r3, #8]
	leap=leap_year(dt->year);
    1b6c:	687b      	ldr	r3, [r7, #4]
    1b6e:	891b      	ldrh	r3, [r3, #8]
    1b70:	4618      	mov	r0, r3
    1b72:	f7ff feaf 	bl	18d4 <leap_year>
    1b76:	60f8      	str	r0, [r7, #12]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1b78:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1b7c:	617b      	str	r3, [r7, #20]
    1b7e:	e013      	b.n	1ba8 <set_date_time+0x70>
		if (leap_year(i)){
    1b80:	6978      	ldr	r0, [r7, #20]
    1b82:	f7ff fea7 	bl	18d4 <leap_year>
    1b86:	4603      	mov	r3, r0
    1b88:	2b00      	cmp	r3, #0
    1b8a:	d006      	beq.n	1b9a <set_date_time+0x62>
			rtc_cntr+=SEC_PER_LEAP_YEAR;
    1b8c:	693b      	ldr	r3, [r7, #16]
    1b8e:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1b92:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    1b96:	613b      	str	r3, [r7, #16]
    1b98:	e003      	b.n	1ba2 <set_date_time+0x6a>
		}else{
			rtc_cntr+=SEC_PER_YEAR;
    1b9a:	693a      	ldr	r2, [r7, #16]
    1b9c:	4b42      	ldr	r3, [pc, #264]	; (1ca8 <set_date_time+0x170>)
    1b9e:	4413      	add	r3, r2
    1ba0:	613b      	str	r3, [r7, #16]
	for (i=EPOCH_YEAR;i<dt->year;i++){
    1ba2:	697b      	ldr	r3, [r7, #20]
    1ba4:	3301      	adds	r3, #1
    1ba6:	617b      	str	r3, [r7, #20]
    1ba8:	687b      	ldr	r3, [r7, #4]
    1baa:	891b      	ldrh	r3, [r3, #8]
    1bac:	461a      	mov	r2, r3
    1bae:	697b      	ldr	r3, [r7, #20]
    1bb0:	429a      	cmp	r2, r3
    1bb2:	d8e5      	bhi.n	1b80 <set_date_time+0x48>
		}
	}
	for (i=1;i<dt->month;i++){
    1bb4:	2301      	movs	r3, #1
    1bb6:	617b      	str	r3, [r7, #20]
    1bb8:	e00a      	b.n	1bd0 <set_date_time+0x98>
		rtc_cntr+=sec_per_month(leap,i);
    1bba:	6979      	ldr	r1, [r7, #20]
    1bbc:	68f8      	ldr	r0, [r7, #12]
    1bbe:	f7ff feb5 	bl	192c <sec_per_month>
    1bc2:	4602      	mov	r2, r0
    1bc4:	693b      	ldr	r3, [r7, #16]
    1bc6:	4413      	add	r3, r2
    1bc8:	613b      	str	r3, [r7, #16]
	for (i=1;i<dt->month;i++){
    1bca:	697b      	ldr	r3, [r7, #20]
    1bcc:	3301      	adds	r3, #1
    1bce:	617b      	str	r3, [r7, #20]
    1bd0:	687b      	ldr	r3, [r7, #4]
    1bd2:	885b      	ldrh	r3, [r3, #2]
    1bd4:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1bd8:	b2db      	uxtb	r3, r3
    1bda:	461a      	mov	r2, r3
    1bdc:	697b      	ldr	r3, [r7, #20]
    1bde:	429a      	cmp	r2, r3
    1be0:	d8eb      	bhi.n	1bba <set_date_time+0x82>
	}
	rtc_cntr+=SEC_PER_DAY*(dt->day-1);
    1be2:	687b      	ldr	r3, [r7, #4]
    1be4:	789b      	ldrb	r3, [r3, #2]
    1be6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1bea:	b2db      	uxtb	r3, r3
    1bec:	3b01      	subs	r3, #1
    1bee:	4a2f      	ldr	r2, [pc, #188]	; (1cac <set_date_time+0x174>)
    1bf0:	fb02 f303 	mul.w	r3, r2, r3
    1bf4:	461a      	mov	r2, r3
    1bf6:	693b      	ldr	r3, [r7, #16]
    1bf8:	4413      	add	r3, r2
    1bfa:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_HR*(dt->hour);
    1bfc:	687b      	ldr	r3, [r7, #4]
    1bfe:	681b      	ldr	r3, [r3, #0]
    1c00:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1c04:	b2db      	uxtb	r3, r3
    1c06:	461a      	mov	r2, r3
    1c08:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    1c0c:	fb03 f302 	mul.w	r3, r3, r2
    1c10:	461a      	mov	r2, r3
    1c12:	693b      	ldr	r3, [r7, #16]
    1c14:	4413      	add	r3, r2
    1c16:	613b      	str	r3, [r7, #16]
	rtc_cntr+=SEC_PER_MIN*(dt->minute);
    1c18:	687b      	ldr	r3, [r7, #4]
    1c1a:	881b      	ldrh	r3, [r3, #0]
    1c1c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1c20:	b2db      	uxtb	r3, r3
    1c22:	461a      	mov	r2, r3
    1c24:	4613      	mov	r3, r2
    1c26:	011b      	lsls	r3, r3, #4
    1c28:	1a9b      	subs	r3, r3, r2
    1c2a:	009b      	lsls	r3, r3, #2
    1c2c:	461a      	mov	r2, r3
    1c2e:	693b      	ldr	r3, [r7, #16]
    1c30:	4413      	add	r3, r2
    1c32:	613b      	str	r3, [r7, #16]
	rtc_cntr+=dt->second;
    1c34:	687b      	ldr	r3, [r7, #4]
    1c36:	781b      	ldrb	r3, [r3, #0]
    1c38:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1c3c:	b2db      	uxtb	r3, r3
    1c3e:	461a      	mov	r2, r3
    1c40:	693b      	ldr	r3, [r7, #16]
    1c42:	4413      	add	r3, r2
    1c44:	613b      	str	r3, [r7, #16]
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1c46:	4a1a      	ldr	r2, [pc, #104]	; (1cb0 <set_date_time+0x178>)
    1c48:	4b19      	ldr	r3, [pc, #100]	; (1cb0 <set_date_time+0x178>)
    1c4a:	69db      	ldr	r3, [r3, #28]
    1c4c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1c50:	61d3      	str	r3, [r2, #28]
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1c52:	4a18      	ldr	r2, [pc, #96]	; (1cb4 <set_date_time+0x17c>)
    1c54:	4b17      	ldr	r3, [pc, #92]	; (1cb4 <set_date_time+0x17c>)
    1c56:	681b      	ldr	r3, [r3, #0]
    1c58:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1c5c:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1c5e:	4a16      	ldr	r2, [pc, #88]	; (1cb8 <set_date_time+0x180>)
    1c60:	4b15      	ldr	r3, [pc, #84]	; (1cb8 <set_date_time+0x180>)
    1c62:	685b      	ldr	r3, [r3, #4]
    1c64:	f043 0310 	orr.w	r3, r3, #16
    1c68:	6053      	str	r3, [r2, #4]
	RTC->CNTH=rtc_cntr>>16;
    1c6a:	4a13      	ldr	r2, [pc, #76]	; (1cb8 <set_date_time+0x180>)
    1c6c:	693b      	ldr	r3, [r7, #16]
    1c6e:	0c1b      	lsrs	r3, r3, #16
    1c70:	6193      	str	r3, [r2, #24]
	RTC->CNTL=rtc_cntr&0xffff;
    1c72:	4a11      	ldr	r2, [pc, #68]	; (1cb8 <set_date_time+0x180>)
    1c74:	693b      	ldr	r3, [r7, #16]
    1c76:	b29b      	uxth	r3, r3
    1c78:	61d3      	str	r3, [r2, #28]
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1c7a:	4a0f      	ldr	r2, [pc, #60]	; (1cb8 <set_date_time+0x180>)
    1c7c:	4b0e      	ldr	r3, [pc, #56]	; (1cb8 <set_date_time+0x180>)
    1c7e:	685b      	ldr	r3, [r3, #4]
    1c80:	f023 0310 	bic.w	r3, r3, #16
    1c84:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    1c86:	bf00      	nop
    1c88:	4b0b      	ldr	r3, [pc, #44]	; (1cb8 <set_date_time+0x180>)
    1c8a:	685b      	ldr	r3, [r3, #4]
    1c8c:	f003 0320 	and.w	r3, r3, #32
    1c90:	2b00      	cmp	r3, #0
    1c92:	d0f9      	beq.n	1c88 <set_date_time+0x150>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1c94:	4a07      	ldr	r2, [pc, #28]	; (1cb4 <set_date_time+0x17c>)
    1c96:	4b07      	ldr	r3, [pc, #28]	; (1cb4 <set_date_time+0x17c>)
    1c98:	681b      	ldr	r3, [r3, #0]
    1c9a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1c9e:	6013      	str	r3, [r2, #0]
}
    1ca0:	bf00      	nop
    1ca2:	3718      	adds	r7, #24
    1ca4:	46bd      	mov	sp, r7
    1ca6:	bd80      	pop	{r7, pc}
    1ca8:	01e13380 	.word	0x01e13380
    1cac:	00015180 	.word	0x00015180
    1cb0:	40021000 	.word	0x40021000
    1cb4:	40007000 	.word	0x40007000
    1cb8:	40002800 	.word	0x40002800

00001cbc <rtc_init>:



// activation du RTC avec LSE comme source
// ref: note applicative AN2821
void rtc_init(unsigned period, unsigned interrupts){
    1cbc:	b580      	push	{r7, lr}
    1cbe:	b082      	sub	sp, #8
    1cc0:	af00      	add	r7, sp, #0
    1cc2:	6078      	str	r0, [r7, #4]
    1cc4:	6039      	str	r1, [r7, #0]
	if (BKP->DR[0]!=RTC_ACCESS_CODE){
    1cc6:	4b4a      	ldr	r3, [pc, #296]	; (1df0 <rtc_init+0x134>)
    1cc8:	685b      	ldr	r3, [r3, #4]
    1cca:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1cce:	4293      	cmp	r3, r2
    1cd0:	f000 8082 	beq.w	1dd8 <rtc_init+0x11c>
		// activation signaux clock sur power interface et backup domain interface
		RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1cd4:	4a47      	ldr	r2, [pc, #284]	; (1df4 <rtc_init+0x138>)
    1cd6:	4b47      	ldr	r3, [pc, #284]	; (1df4 <rtc_init+0x138>)
    1cd8:	69db      	ldr	r3, [r3, #28]
    1cda:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1cde:	61d3      	str	r3, [r2, #28]
		//_wait_rtc_sync();
		// donne un accès en modification à RCC_BDCR
		PWR->CR|=PWR_CR_DBP;
    1ce0:	4a45      	ldr	r2, [pc, #276]	; (1df8 <rtc_init+0x13c>)
    1ce2:	4b45      	ldr	r3, [pc, #276]	; (1df8 <rtc_init+0x13c>)
    1ce4:	681b      	ldr	r3, [r3, #0]
    1ce6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1cea:	6013      	str	r3, [r2, #0]
		// active l'oscillateur LSE
		RCC->BDCR|=RCC_BDCR_LSEON;
    1cec:	4a41      	ldr	r2, [pc, #260]	; (1df4 <rtc_init+0x138>)
    1cee:	4b41      	ldr	r3, [pc, #260]	; (1df4 <rtc_init+0x138>)
    1cf0:	6a1b      	ldr	r3, [r3, #32]
    1cf2:	f043 0301 	orr.w	r3, r3, #1
    1cf6:	6213      	str	r3, [r2, #32]
		// attend qu'il soit prêt
		while (!(RCC->BDCR&RCC_BDCR_LSERDY));
    1cf8:	bf00      	nop
    1cfa:	4b3e      	ldr	r3, [pc, #248]	; (1df4 <rtc_init+0x138>)
    1cfc:	6a1b      	ldr	r3, [r3, #32]
    1cfe:	f003 0302 	and.w	r3, r3, #2
    1d02:	2b00      	cmp	r3, #0
    1d04:	d0f9      	beq.n	1cfa <rtc_init+0x3e>
		// sélection LSE clock et active le RTC
		RCC->BDCR|=RCC_BDCR_RTCEN|(RCC_BDCR_RTCSEL_LSE<<RCC_BDCR_RTCSEL_POS);
    1d06:	4a3b      	ldr	r2, [pc, #236]	; (1df4 <rtc_init+0x138>)
    1d08:	4b3a      	ldr	r3, [pc, #232]	; (1df4 <rtc_init+0x138>)
    1d0a:	6a1b      	ldr	r3, [r3, #32]
    1d0c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1d10:	6213      	str	r3, [r2, #32]
		// attend la synchronisation de l'horloge LSE et du clock de APB1 
		_wait_rtc_sync();
    1d12:	bf00      	nop
    1d14:	4b39      	ldr	r3, [pc, #228]	; (1dfc <rtc_init+0x140>)
    1d16:	685b      	ldr	r3, [r3, #4]
    1d18:	f003 0308 	and.w	r3, r3, #8
    1d1c:	2b00      	cmp	r3, #0
    1d1e:	d0f9      	beq.n	1d14 <rtc_init+0x58>
		// attend que la dernière opération d'écriture dans RTC_CRL soit complétée.
		_wait_rtc_write();
    1d20:	bf00      	nop
    1d22:	4b36      	ldr	r3, [pc, #216]	; (1dfc <rtc_init+0x140>)
    1d24:	685b      	ldr	r3, [r3, #4]
    1d26:	f003 0320 	and.w	r3, r3, #32
    1d2a:	2b00      	cmp	r3, #0
    1d2c:	d0f9      	beq.n	1d22 <rtc_init+0x66>
		RTC->CRL|=RTC_CRL_CNF;
    1d2e:	4a33      	ldr	r2, [pc, #204]	; (1dfc <rtc_init+0x140>)
    1d30:	4b32      	ldr	r3, [pc, #200]	; (1dfc <rtc_init+0x140>)
    1d32:	685b      	ldr	r3, [r3, #4]
    1d34:	f043 0310 	orr.w	r3, r3, #16
    1d38:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1d3a:	bf00      	nop
    1d3c:	4b2f      	ldr	r3, [pc, #188]	; (1dfc <rtc_init+0x140>)
    1d3e:	685b      	ldr	r3, [r3, #4]
    1d40:	f003 0320 	and.w	r3, r3, #32
    1d44:	2b00      	cmp	r3, #0
    1d46:	d0f9      	beq.n	1d3c <rtc_init+0x80>
		// activation des interruptions désirées.
		RTC->CRH|=interrupts;
    1d48:	492c      	ldr	r1, [pc, #176]	; (1dfc <rtc_init+0x140>)
    1d4a:	4b2c      	ldr	r3, [pc, #176]	; (1dfc <rtc_init+0x140>)
    1d4c:	681a      	ldr	r2, [r3, #0]
    1d4e:	683b      	ldr	r3, [r7, #0]
    1d50:	4313      	orrs	r3, r2
    1d52:	600b      	str	r3, [r1, #0]
		_wait_rtc_write();
    1d54:	bf00      	nop
    1d56:	4b29      	ldr	r3, [pc, #164]	; (1dfc <rtc_init+0x140>)
    1d58:	685b      	ldr	r3, [r3, #4]
    1d5a:	f003 0320 	and.w	r3, r3, #32
    1d5e:	2b00      	cmp	r3, #0
    1d60:	d0f9      	beq.n	1d56 <rtc_init+0x9a>
		// configuration de la valeur du prescaler
		RTC->PRLL=_rtc_period_msec(period)&0xffff;
    1d62:	4a26      	ldr	r2, [pc, #152]	; (1dfc <rtc_init+0x140>)
    1d64:	687b      	ldr	r3, [r7, #4]
    1d66:	03db      	lsls	r3, r3, #15
    1d68:	4925      	ldr	r1, [pc, #148]	; (1e00 <rtc_init+0x144>)
    1d6a:	fba1 1303 	umull	r1, r3, r1, r3
    1d6e:	099b      	lsrs	r3, r3, #6
    1d70:	3b01      	subs	r3, #1
    1d72:	b29b      	uxth	r3, r3
    1d74:	60d3      	str	r3, [r2, #12]
		_wait_rtc_write();
    1d76:	bf00      	nop
    1d78:	4b20      	ldr	r3, [pc, #128]	; (1dfc <rtc_init+0x140>)
    1d7a:	685b      	ldr	r3, [r3, #4]
    1d7c:	f003 0320 	and.w	r3, r3, #32
    1d80:	2b00      	cmp	r3, #0
    1d82:	d0f9      	beq.n	1d78 <rtc_init+0xbc>
		RTC->PRLH=(_rtc_period_msec(period)>>16)&0xf;
    1d84:	4a1d      	ldr	r2, [pc, #116]	; (1dfc <rtc_init+0x140>)
    1d86:	687b      	ldr	r3, [r7, #4]
    1d88:	03db      	lsls	r3, r3, #15
    1d8a:	491d      	ldr	r1, [pc, #116]	; (1e00 <rtc_init+0x144>)
    1d8c:	fba1 1303 	umull	r1, r3, r1, r3
    1d90:	099b      	lsrs	r3, r3, #6
    1d92:	3b01      	subs	r3, #1
    1d94:	0c1b      	lsrs	r3, r3, #16
    1d96:	f003 030f 	and.w	r3, r3, #15
    1d9a:	6093      	str	r3, [r2, #8]
		_wait_rtc_write();
    1d9c:	bf00      	nop
    1d9e:	4b17      	ldr	r3, [pc, #92]	; (1dfc <rtc_init+0x140>)
    1da0:	685b      	ldr	r3, [r3, #4]
    1da2:	f003 0320 	and.w	r3, r3, #32
    1da6:	2b00      	cmp	r3, #0
    1da8:	d0f9      	beq.n	1d9e <rtc_init+0xe2>
		BKP->DR[0]=RTC_ACCESS_CODE;
    1daa:	4b11      	ldr	r3, [pc, #68]	; (1df0 <rtc_init+0x134>)
    1dac:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1db0:	605a      	str	r2, [r3, #4]
		RTC->CRL&=~RTC_CRL_CNF;
    1db2:	4a12      	ldr	r2, [pc, #72]	; (1dfc <rtc_init+0x140>)
    1db4:	4b11      	ldr	r3, [pc, #68]	; (1dfc <rtc_init+0x140>)
    1db6:	685b      	ldr	r3, [r3, #4]
    1db8:	f023 0310 	bic.w	r3, r3, #16
    1dbc:	6053      	str	r3, [r2, #4]
		_wait_rtc_write();
    1dbe:	bf00      	nop
    1dc0:	4b0e      	ldr	r3, [pc, #56]	; (1dfc <rtc_init+0x140>)
    1dc2:	685b      	ldr	r3, [r3, #4]
    1dc4:	f003 0320 	and.w	r3, r3, #32
    1dc8:	2b00      	cmp	r3, #0
    1dca:	d0f9      	beq.n	1dc0 <rtc_init+0x104>
		PWR->CR&=~PWR_CR_DBP;
    1dcc:	4a0a      	ldr	r2, [pc, #40]	; (1df8 <rtc_init+0x13c>)
    1dce:	4b0a      	ldr	r3, [pc, #40]	; (1df8 <rtc_init+0x13c>)
    1dd0:	681b      	ldr	r3, [r3, #0]
    1dd2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1dd6:	6013      	str	r3, [r2, #0]
	}
	set_int_priority(IRQ_RTC,15);
    1dd8:	210f      	movs	r1, #15
    1dda:	2003      	movs	r0, #3
    1ddc:	f7ff fd4a 	bl	1874 <set_int_priority>
	enable_interrupt(IRQ_RTC);
    1de0:	2003      	movs	r0, #3
    1de2:	f7ff fc8d 	bl	1700 <enable_interrupt>
}
    1de6:	bf00      	nop
    1de8:	3708      	adds	r7, #8
    1dea:	46bd      	mov	sp, r7
    1dec:	bd80      	pop	{r7, pc}
    1dee:	bf00      	nop
    1df0:	40006c00 	.word	0x40006c00
    1df4:	40021000 	.word	0x40021000
    1df8:	40007000 	.word	0x40007000
    1dfc:	40002800 	.word	0x40002800
    1e00:	10624dd3 	.word	0x10624dd3

00001e04 <reset_backup_domain>:

// réinitialise le backup domain
inline void reset_backup_domain(){
    1e04:	b480      	push	{r7}
    1e06:	af00      	add	r7, sp, #0
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1e08:	4a0a      	ldr	r2, [pc, #40]	; (1e34 <reset_backup_domain+0x30>)
    1e0a:	4b0a      	ldr	r3, [pc, #40]	; (1e34 <reset_backup_domain+0x30>)
    1e0c:	69db      	ldr	r3, [r3, #28]
    1e0e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1e12:	61d3      	str	r3, [r2, #28]
	RCC->BDCR|=RCC_BDCR_BDRST;
    1e14:	4a07      	ldr	r2, [pc, #28]	; (1e34 <reset_backup_domain+0x30>)
    1e16:	4b07      	ldr	r3, [pc, #28]	; (1e34 <reset_backup_domain+0x30>)
    1e18:	6a1b      	ldr	r3, [r3, #32]
    1e1a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1e1e:	6213      	str	r3, [r2, #32]
	RCC->BDCR&=~RCC_BDCR_BDRST;
    1e20:	4a04      	ldr	r2, [pc, #16]	; (1e34 <reset_backup_domain+0x30>)
    1e22:	4b04      	ldr	r3, [pc, #16]	; (1e34 <reset_backup_domain+0x30>)
    1e24:	6a1b      	ldr	r3, [r3, #32]
    1e26:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1e2a:	6213      	str	r3, [r2, #32]
}
    1e2c:	bf00      	nop
    1e2e:	46bd      	mov	sp, r7
    1e30:	bc80      	pop	{r7}
    1e32:	4770      	bx	lr
    1e34:	40021000 	.word	0x40021000

00001e38 <rtc_clock_trim>:

// ajustement de la fréquence du clock RTC pour améliorer
// la précision.
void rtc_clock_trim(int trim){
    1e38:	b480      	push	{r7}
    1e3a:	b083      	sub	sp, #12
    1e3c:	af00      	add	r7, sp, #0
    1e3e:	6078      	str	r0, [r7, #4]
	uint16_t rtc_cr;
	
	// activation signaux clock sur power interface et backup domain interface
	RCC->APB1ENR|=RCC_APB1ENR_BKPEN|RCC_APB1ENR_PWREN;
    1e40:	4a34      	ldr	r2, [pc, #208]	; (1f14 <rtc_clock_trim+0xdc>)
    1e42:	4b34      	ldr	r3, [pc, #208]	; (1f14 <rtc_clock_trim+0xdc>)
    1e44:	69db      	ldr	r3, [r3, #28]
    1e46:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1e4a:	61d3      	str	r3, [r2, #28]
	_wait_rtc_sync();
    1e4c:	bf00      	nop
    1e4e:	4b32      	ldr	r3, [pc, #200]	; (1f18 <rtc_clock_trim+0xe0>)
    1e50:	685b      	ldr	r3, [r3, #4]
    1e52:	f003 0308 	and.w	r3, r3, #8
    1e56:	2b00      	cmp	r3, #0
    1e58:	d0f9      	beq.n	1e4e <rtc_clock_trim+0x16>
	// désactive la protection du backup domain
	PWR->CR|=PWR_CR_DBP;
    1e5a:	4a30      	ldr	r2, [pc, #192]	; (1f1c <rtc_clock_trim+0xe4>)
    1e5c:	4b2f      	ldr	r3, [pc, #188]	; (1f1c <rtc_clock_trim+0xe4>)
    1e5e:	681b      	ldr	r3, [r3, #0]
    1e60:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1e64:	6013      	str	r3, [r2, #0]
	// active le flag configuration RTC
	RTC->CRL|=RTC_CRL_CNF;
    1e66:	4a2c      	ldr	r2, [pc, #176]	; (1f18 <rtc_clock_trim+0xe0>)
    1e68:	4b2b      	ldr	r3, [pc, #172]	; (1f18 <rtc_clock_trim+0xe0>)
    1e6a:	685b      	ldr	r3, [r3, #4]
    1e6c:	f043 0310 	orr.w	r3, r3, #16
    1e70:	6053      	str	r3, [r2, #4]
	BKP->RTCCR&=~0x7f;
    1e72:	4a2b      	ldr	r2, [pc, #172]	; (1f20 <rtc_clock_trim+0xe8>)
    1e74:	4b2a      	ldr	r3, [pc, #168]	; (1f20 <rtc_clock_trim+0xe8>)
    1e76:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1e78:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1e7c:	62d3      	str	r3, [r2, #44]	; 0x2c
	if (!trim){ // annule tous les trimming.
    1e7e:	687b      	ldr	r3, [r7, #4]
    1e80:	2b00      	cmp	r3, #0
    1e82:	d10a      	bne.n	1e9a <rtc_clock_trim+0x62>
		BKP->RTCCR=0;
    1e84:	4b26      	ldr	r3, [pc, #152]	; (1f20 <rtc_clock_trim+0xe8>)
    1e86:	2200      	movs	r2, #0
    1e88:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff;
    1e8a:	4b23      	ldr	r3, [pc, #140]	; (1f18 <rtc_clock_trim+0xe0>)
    1e8c:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1e90:	60da      	str	r2, [r3, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1e92:	4b21      	ldr	r3, [pc, #132]	; (1f18 <rtc_clock_trim+0xe0>)
    1e94:	2200      	movs	r2, #0
    1e96:	609a      	str	r2, [r3, #8]
    1e98:	e023      	b.n	1ee2 <rtc_clock_trim+0xaa>
	}else if (trim>0){// trop rapide on ralentie
    1e9a:	687b      	ldr	r3, [r7, #4]
    1e9c:	2b00      	cmp	r3, #0
    1e9e:	dd0a      	ble.n	1eb6 <rtc_clock_trim+0x7e>
		trim&=0x7f;
    1ea0:	687b      	ldr	r3, [r7, #4]
    1ea2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1ea6:	607b      	str	r3, [r7, #4]
		BKP->RTCCR|=trim;
    1ea8:	491d      	ldr	r1, [pc, #116]	; (1f20 <rtc_clock_trim+0xe8>)
    1eaa:	4b1d      	ldr	r3, [pc, #116]	; (1f20 <rtc_clock_trim+0xe8>)
    1eac:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1eae:	687b      	ldr	r3, [r7, #4]
    1eb0:	4313      	orrs	r3, r2
    1eb2:	62cb      	str	r3, [r1, #44]	; 0x2c
    1eb4:	e015      	b.n	1ee2 <rtc_clock_trim+0xaa>
	}else{// trop lent on accélère.
		trim=-trim;
    1eb6:	687b      	ldr	r3, [r7, #4]
    1eb8:	425b      	negs	r3, r3
    1eba:	607b      	str	r3, [r7, #4]
		if (trim>0x7f) {trim=0x7f;}
    1ebc:	687b      	ldr	r3, [r7, #4]
    1ebe:	2b7f      	cmp	r3, #127	; 0x7f
    1ec0:	dd01      	ble.n	1ec6 <rtc_clock_trim+0x8e>
    1ec2:	237f      	movs	r3, #127	; 0x7f
    1ec4:	607b      	str	r3, [r7, #4]
		BKP->RTCCR=0;
    1ec6:	4b16      	ldr	r3, [pc, #88]	; (1f20 <rtc_clock_trim+0xe8>)
    1ec8:	2200      	movs	r2, #0
    1eca:	62da      	str	r2, [r3, #44]	; 0x2c
		RTC->PRLL=_rtc_period_msec(1000)&0xffff-trim;
    1ecc:	4a12      	ldr	r2, [pc, #72]	; (1f18 <rtc_clock_trim+0xe0>)
    1ece:	687b      	ldr	r3, [r7, #4]
    1ed0:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1ed4:	33ff      	adds	r3, #255	; 0xff
    1ed6:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1eda:	60d3      	str	r3, [r2, #12]
		RTC->PRLH=_rtc_period_msec(1000)>>16&0xf;
    1edc:	4b0e      	ldr	r3, [pc, #56]	; (1f18 <rtc_clock_trim+0xe0>)
    1ede:	2200      	movs	r2, #0
    1ee0:	609a      	str	r2, [r3, #8]
	}
	// désactive le flag de configuration RTC.
	RTC->CRL&=~RTC_CRL_CNF;
    1ee2:	4a0d      	ldr	r2, [pc, #52]	; (1f18 <rtc_clock_trim+0xe0>)
    1ee4:	4b0c      	ldr	r3, [pc, #48]	; (1f18 <rtc_clock_trim+0xe0>)
    1ee6:	685b      	ldr	r3, [r3, #4]
    1ee8:	f023 0310 	bic.w	r3, r3, #16
    1eec:	6053      	str	r3, [r2, #4]
	_wait_rtc_write();
    1eee:	bf00      	nop
    1ef0:	4b09      	ldr	r3, [pc, #36]	; (1f18 <rtc_clock_trim+0xe0>)
    1ef2:	685b      	ldr	r3, [r3, #4]
    1ef4:	f003 0320 	and.w	r3, r3, #32
    1ef8:	2b00      	cmp	r3, #0
    1efa:	d0f9      	beq.n	1ef0 <rtc_clock_trim+0xb8>
	// réactive la protection du backup domain 
	PWR->CR&=~PWR_CR_DBP;
    1efc:	4a07      	ldr	r2, [pc, #28]	; (1f1c <rtc_clock_trim+0xe4>)
    1efe:	4b07      	ldr	r3, [pc, #28]	; (1f1c <rtc_clock_trim+0xe4>)
    1f00:	681b      	ldr	r3, [r3, #0]
    1f02:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1f06:	6013      	str	r3, [r2, #0]
}
    1f08:	bf00      	nop
    1f0a:	370c      	adds	r7, #12
    1f0c:	46bd      	mov	sp, r7
    1f0e:	bc80      	pop	{r7}
    1f10:	4770      	bx	lr
    1f12:	bf00      	nop
    1f14:	40021000 	.word	0x40021000
    1f18:	40002800 	.word	0x40002800
    1f1c:	40007000 	.word	0x40007000
    1f20:	40006c00 	.word	0x40006c00

00001f24 <rtc_set_alarm>:

// configure l'alarme RTC.
void rtc_set_alarm(date_time_t* dt){
    1f24:	b480      	push	{r7}
    1f26:	b083      	sub	sp, #12
    1f28:	af00      	add	r7, sp, #0
    1f2a:	6078      	str	r0, [r7, #4]
}
    1f2c:	bf00      	nop
    1f2e:	370c      	adds	r7, #12
    1f30:	46bd      	mov	sp, r7
    1f32:	bc80      	pop	{r7}
    1f34:	4770      	bx	lr

00001f36 <str_to_date>:

// convertie chaîne date "yyyy/mm/dd" en format date_time_t
// champs heure mis à zéro.
// retourne 0 si format chaîne invalide
int str_to_date(const char *date, date_time_t *dt){
    1f36:	b580      	push	{r7, lr}
    1f38:	b084      	sub	sp, #16
    1f3a:	af00      	add	r7, sp, #0
    1f3c:	6078      	str	r0, [r7, #4]
    1f3e:	6039      	str	r1, [r7, #0]
	int i,n;
	
	i=0;
    1f40:	2300      	movs	r3, #0
    1f42:	60fb      	str	r3, [r7, #12]
	n=0;
    1f44:	2300      	movs	r3, #0
    1f46:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1f48:	e00f      	b.n	1f6a <str_to_date+0x34>
		n=n*10+date[i++]-'0';
    1f4a:	68ba      	ldr	r2, [r7, #8]
    1f4c:	4613      	mov	r3, r2
    1f4e:	009b      	lsls	r3, r3, #2
    1f50:	4413      	add	r3, r2
    1f52:	005b      	lsls	r3, r3, #1
    1f54:	4619      	mov	r1, r3
    1f56:	68fb      	ldr	r3, [r7, #12]
    1f58:	1c5a      	adds	r2, r3, #1
    1f5a:	60fa      	str	r2, [r7, #12]
    1f5c:	461a      	mov	r2, r3
    1f5e:	687b      	ldr	r3, [r7, #4]
    1f60:	4413      	add	r3, r2
    1f62:	781b      	ldrb	r3, [r3, #0]
    1f64:	440b      	add	r3, r1
    1f66:	3b30      	subs	r3, #48	; 0x30
    1f68:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1f6a:	68fb      	ldr	r3, [r7, #12]
    1f6c:	687a      	ldr	r2, [r7, #4]
    1f6e:	4413      	add	r3, r2
    1f70:	781b      	ldrb	r3, [r3, #0]
    1f72:	4618      	mov	r0, r3
    1f74:	f7ff f8e3 	bl	113e <digit>
    1f78:	4603      	mov	r3, r0
    1f7a:	2b00      	cmp	r3, #0
    1f7c:	d1e5      	bne.n	1f4a <str_to_date+0x14>
	}
	if ((i<4) || date[i]!='/') return 0;
    1f7e:	68fb      	ldr	r3, [r7, #12]
    1f80:	2b03      	cmp	r3, #3
    1f82:	dd05      	ble.n	1f90 <str_to_date+0x5a>
    1f84:	68fb      	ldr	r3, [r7, #12]
    1f86:	687a      	ldr	r2, [r7, #4]
    1f88:	4413      	add	r3, r2
    1f8a:	781b      	ldrb	r3, [r3, #0]
    1f8c:	2b2f      	cmp	r3, #47	; 0x2f
    1f8e:	d001      	beq.n	1f94 <str_to_date+0x5e>
    1f90:	2300      	movs	r3, #0
    1f92:	e068      	b.n	2066 <str_to_date+0x130>
	dt->year=n;
    1f94:	68bb      	ldr	r3, [r7, #8]
    1f96:	b29a      	uxth	r2, r3
    1f98:	683b      	ldr	r3, [r7, #0]
    1f9a:	811a      	strh	r2, [r3, #8]
	i++;
    1f9c:	68fb      	ldr	r3, [r7, #12]
    1f9e:	3301      	adds	r3, #1
    1fa0:	60fb      	str	r3, [r7, #12]
	n=0;
    1fa2:	2300      	movs	r3, #0
    1fa4:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1fa6:	e00f      	b.n	1fc8 <str_to_date+0x92>
		n=n*10+date[i++]-'0';
    1fa8:	68ba      	ldr	r2, [r7, #8]
    1faa:	4613      	mov	r3, r2
    1fac:	009b      	lsls	r3, r3, #2
    1fae:	4413      	add	r3, r2
    1fb0:	005b      	lsls	r3, r3, #1
    1fb2:	4619      	mov	r1, r3
    1fb4:	68fb      	ldr	r3, [r7, #12]
    1fb6:	1c5a      	adds	r2, r3, #1
    1fb8:	60fa      	str	r2, [r7, #12]
    1fba:	461a      	mov	r2, r3
    1fbc:	687b      	ldr	r3, [r7, #4]
    1fbe:	4413      	add	r3, r2
    1fc0:	781b      	ldrb	r3, [r3, #0]
    1fc2:	440b      	add	r3, r1
    1fc4:	3b30      	subs	r3, #48	; 0x30
    1fc6:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    1fc8:	68fb      	ldr	r3, [r7, #12]
    1fca:	687a      	ldr	r2, [r7, #4]
    1fcc:	4413      	add	r3, r2
    1fce:	781b      	ldrb	r3, [r3, #0]
    1fd0:	4618      	mov	r0, r3
    1fd2:	f7ff f8b4 	bl	113e <digit>
    1fd6:	4603      	mov	r3, r0
    1fd8:	2b00      	cmp	r3, #0
    1fda:	d1e5      	bne.n	1fa8 <str_to_date+0x72>
	}
	if ((i<7) || date[i]!='/') return 0;
    1fdc:	68fb      	ldr	r3, [r7, #12]
    1fde:	2b06      	cmp	r3, #6
    1fe0:	dd05      	ble.n	1fee <str_to_date+0xb8>
    1fe2:	68fb      	ldr	r3, [r7, #12]
    1fe4:	687a      	ldr	r2, [r7, #4]
    1fe6:	4413      	add	r3, r2
    1fe8:	781b      	ldrb	r3, [r3, #0]
    1fea:	2b2f      	cmp	r3, #47	; 0x2f
    1fec:	d001      	beq.n	1ff2 <str_to_date+0xbc>
    1fee:	2300      	movs	r3, #0
    1ff0:	e039      	b.n	2066 <str_to_date+0x130>
	dt->month=n;
    1ff2:	68bb      	ldr	r3, [r7, #8]
    1ff4:	b2db      	uxtb	r3, r3
    1ff6:	f003 030f 	and.w	r3, r3, #15
    1ffa:	b2d9      	uxtb	r1, r3
    1ffc:	683a      	ldr	r2, [r7, #0]
    1ffe:	8853      	ldrh	r3, [r2, #2]
    2000:	f361 1389 	bfi	r3, r1, #6, #4
    2004:	8053      	strh	r3, [r2, #2]
	n=0;
    2006:	2300      	movs	r3, #0
    2008:	60bb      	str	r3, [r7, #8]
	i++;
    200a:	68fb      	ldr	r3, [r7, #12]
    200c:	3301      	adds	r3, #1
    200e:	60fb      	str	r3, [r7, #12]
	while (digit(date[i])){
    2010:	e00f      	b.n	2032 <str_to_date+0xfc>
		n=n*10+date[i++]-'0';
    2012:	68ba      	ldr	r2, [r7, #8]
    2014:	4613      	mov	r3, r2
    2016:	009b      	lsls	r3, r3, #2
    2018:	4413      	add	r3, r2
    201a:	005b      	lsls	r3, r3, #1
    201c:	4619      	mov	r1, r3
    201e:	68fb      	ldr	r3, [r7, #12]
    2020:	1c5a      	adds	r2, r3, #1
    2022:	60fa      	str	r2, [r7, #12]
    2024:	461a      	mov	r2, r3
    2026:	687b      	ldr	r3, [r7, #4]
    2028:	4413      	add	r3, r2
    202a:	781b      	ldrb	r3, [r3, #0]
    202c:	440b      	add	r3, r1
    202e:	3b30      	subs	r3, #48	; 0x30
    2030:	60bb      	str	r3, [r7, #8]
	while (digit(date[i])){
    2032:	68fb      	ldr	r3, [r7, #12]
    2034:	687a      	ldr	r2, [r7, #4]
    2036:	4413      	add	r3, r2
    2038:	781b      	ldrb	r3, [r3, #0]
    203a:	4618      	mov	r0, r3
    203c:	f7ff f87f 	bl	113e <digit>
    2040:	4603      	mov	r3, r0
    2042:	2b00      	cmp	r3, #0
    2044:	d1e5      	bne.n	2012 <str_to_date+0xdc>
	}
	if (i<10) return 0;
    2046:	68fb      	ldr	r3, [r7, #12]
    2048:	2b09      	cmp	r3, #9
    204a:	dc01      	bgt.n	2050 <str_to_date+0x11a>
    204c:	2300      	movs	r3, #0
    204e:	e00a      	b.n	2066 <str_to_date+0x130>
	dt->day=n;
    2050:	68bb      	ldr	r3, [r7, #8]
    2052:	b2db      	uxtb	r3, r3
    2054:	f003 031f 	and.w	r3, r3, #31
    2058:	b2d9      	uxtb	r1, r3
    205a:	683a      	ldr	r2, [r7, #0]
    205c:	7893      	ldrb	r3, [r2, #2]
    205e:	f361 0345 	bfi	r3, r1, #1, #5
    2062:	7093      	strb	r3, [r2, #2]
	return 1;
    2064:	2301      	movs	r3, #1
}
    2066:	4618      	mov	r0, r3
    2068:	3710      	adds	r7, #16
    206a:	46bd      	mov	sp, r7
    206c:	bd80      	pop	{r7, pc}

0000206e <str_to_time>:

// convertie chaîne heure "hh:mm:ss" en format date_time_t
// champs date non modifiés.
// retourne 0 si format chaîne invalide
int str_to_time(const char*time, date_time_t *dt){
    206e:	b580      	push	{r7, lr}
    2070:	b084      	sub	sp, #16
    2072:	af00      	add	r7, sp, #0
    2074:	6078      	str	r0, [r7, #4]
    2076:	6039      	str	r1, [r7, #0]
	int i;
	unsigned char n;
	
	i=0;
    2078:	2300      	movs	r3, #0
    207a:	60fb      	str	r3, [r7, #12]
	n=0;
    207c:	2300      	movs	r3, #0
    207e:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    2080:	e010      	b.n	20a4 <str_to_time+0x36>
		n=n*10+time[i++]-'0';
    2082:	7afb      	ldrb	r3, [r7, #11]
    2084:	461a      	mov	r2, r3
    2086:	0092      	lsls	r2, r2, #2
    2088:	4413      	add	r3, r2
    208a:	005b      	lsls	r3, r3, #1
    208c:	b2da      	uxtb	r2, r3
    208e:	68fb      	ldr	r3, [r7, #12]
    2090:	1c59      	adds	r1, r3, #1
    2092:	60f9      	str	r1, [r7, #12]
    2094:	4619      	mov	r1, r3
    2096:	687b      	ldr	r3, [r7, #4]
    2098:	440b      	add	r3, r1
    209a:	781b      	ldrb	r3, [r3, #0]
    209c:	4413      	add	r3, r2
    209e:	b2db      	uxtb	r3, r3
    20a0:	3b30      	subs	r3, #48	; 0x30
    20a2:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    20a4:	68fb      	ldr	r3, [r7, #12]
    20a6:	687a      	ldr	r2, [r7, #4]
    20a8:	4413      	add	r3, r2
    20aa:	781b      	ldrb	r3, [r3, #0]
    20ac:	4618      	mov	r0, r3
    20ae:	f7ff f846 	bl	113e <digit>
    20b2:	4603      	mov	r3, r0
    20b4:	2b00      	cmp	r3, #0
    20b6:	d1e4      	bne.n	2082 <str_to_time+0x14>
	}
	if ((n>23) || time[i]!=':') return 0;
    20b8:	7afb      	ldrb	r3, [r7, #11]
    20ba:	2b17      	cmp	r3, #23
    20bc:	d805      	bhi.n	20ca <str_to_time+0x5c>
    20be:	68fb      	ldr	r3, [r7, #12]
    20c0:	687a      	ldr	r2, [r7, #4]
    20c2:	4413      	add	r3, r2
    20c4:	781b      	ldrb	r3, [r3, #0]
    20c6:	2b3a      	cmp	r3, #58	; 0x3a
    20c8:	d001      	beq.n	20ce <str_to_time+0x60>
    20ca:	2300      	movs	r3, #0
    20cc:	e06d      	b.n	21aa <str_to_time+0x13c>
	dt->hour=n;
    20ce:	7afb      	ldrb	r3, [r7, #11]
    20d0:	f003 031f 	and.w	r3, r3, #31
    20d4:	b2d9      	uxtb	r1, r3
    20d6:	683a      	ldr	r2, [r7, #0]
    20d8:	6813      	ldr	r3, [r2, #0]
    20da:	f361 3310 	bfi	r3, r1, #12, #5
    20de:	6013      	str	r3, [r2, #0]
	i++;
    20e0:	68fb      	ldr	r3, [r7, #12]
    20e2:	3301      	adds	r3, #1
    20e4:	60fb      	str	r3, [r7, #12]
	n=0;
    20e6:	2300      	movs	r3, #0
    20e8:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    20ea:	e010      	b.n	210e <str_to_time+0xa0>
		n=n*10+time[i++]-'0';
    20ec:	7afb      	ldrb	r3, [r7, #11]
    20ee:	461a      	mov	r2, r3
    20f0:	0092      	lsls	r2, r2, #2
    20f2:	4413      	add	r3, r2
    20f4:	005b      	lsls	r3, r3, #1
    20f6:	b2da      	uxtb	r2, r3
    20f8:	68fb      	ldr	r3, [r7, #12]
    20fa:	1c59      	adds	r1, r3, #1
    20fc:	60f9      	str	r1, [r7, #12]
    20fe:	4619      	mov	r1, r3
    2100:	687b      	ldr	r3, [r7, #4]
    2102:	440b      	add	r3, r1
    2104:	781b      	ldrb	r3, [r3, #0]
    2106:	4413      	add	r3, r2
    2108:	b2db      	uxtb	r3, r3
    210a:	3b30      	subs	r3, #48	; 0x30
    210c:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    210e:	68fb      	ldr	r3, [r7, #12]
    2110:	687a      	ldr	r2, [r7, #4]
    2112:	4413      	add	r3, r2
    2114:	781b      	ldrb	r3, [r3, #0]
    2116:	4618      	mov	r0, r3
    2118:	f7ff f811 	bl	113e <digit>
    211c:	4603      	mov	r3, r0
    211e:	2b00      	cmp	r3, #0
    2120:	d1e4      	bne.n	20ec <str_to_time+0x7e>
	}
	if ((n>59) || time[i]!=':') return 0;
    2122:	7afb      	ldrb	r3, [r7, #11]
    2124:	2b3b      	cmp	r3, #59	; 0x3b
    2126:	d805      	bhi.n	2134 <str_to_time+0xc6>
    2128:	68fb      	ldr	r3, [r7, #12]
    212a:	687a      	ldr	r2, [r7, #4]
    212c:	4413      	add	r3, r2
    212e:	781b      	ldrb	r3, [r3, #0]
    2130:	2b3a      	cmp	r3, #58	; 0x3a
    2132:	d001      	beq.n	2138 <str_to_time+0xca>
    2134:	2300      	movs	r3, #0
    2136:	e038      	b.n	21aa <str_to_time+0x13c>
	dt->minute=n;
    2138:	7afb      	ldrb	r3, [r7, #11]
    213a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    213e:	b2d9      	uxtb	r1, r3
    2140:	683a      	ldr	r2, [r7, #0]
    2142:	8813      	ldrh	r3, [r2, #0]
    2144:	f361 138b 	bfi	r3, r1, #6, #6
    2148:	8013      	strh	r3, [r2, #0]
	n=0;
    214a:	2300      	movs	r3, #0
    214c:	72fb      	strb	r3, [r7, #11]
	i++;
    214e:	68fb      	ldr	r3, [r7, #12]
    2150:	3301      	adds	r3, #1
    2152:	60fb      	str	r3, [r7, #12]
	while (digit(time[i])){
    2154:	e010      	b.n	2178 <str_to_time+0x10a>
		n=n*10+time[i++]-'0';
    2156:	7afb      	ldrb	r3, [r7, #11]
    2158:	461a      	mov	r2, r3
    215a:	0092      	lsls	r2, r2, #2
    215c:	4413      	add	r3, r2
    215e:	005b      	lsls	r3, r3, #1
    2160:	b2da      	uxtb	r2, r3
    2162:	68fb      	ldr	r3, [r7, #12]
    2164:	1c59      	adds	r1, r3, #1
    2166:	60f9      	str	r1, [r7, #12]
    2168:	4619      	mov	r1, r3
    216a:	687b      	ldr	r3, [r7, #4]
    216c:	440b      	add	r3, r1
    216e:	781b      	ldrb	r3, [r3, #0]
    2170:	4413      	add	r3, r2
    2172:	b2db      	uxtb	r3, r3
    2174:	3b30      	subs	r3, #48	; 0x30
    2176:	72fb      	strb	r3, [r7, #11]
	while (digit(time[i])){
    2178:	68fb      	ldr	r3, [r7, #12]
    217a:	687a      	ldr	r2, [r7, #4]
    217c:	4413      	add	r3, r2
    217e:	781b      	ldrb	r3, [r3, #0]
    2180:	4618      	mov	r0, r3
    2182:	f7fe ffdc 	bl	113e <digit>
    2186:	4603      	mov	r3, r0
    2188:	2b00      	cmp	r3, #0
    218a:	d1e4      	bne.n	2156 <str_to_time+0xe8>
	}
	if (n>59) return 0;
    218c:	7afb      	ldrb	r3, [r7, #11]
    218e:	2b3b      	cmp	r3, #59	; 0x3b
    2190:	d901      	bls.n	2196 <str_to_time+0x128>
    2192:	2300      	movs	r3, #0
    2194:	e009      	b.n	21aa <str_to_time+0x13c>
	dt->second=n;
    2196:	7afb      	ldrb	r3, [r7, #11]
    2198:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    219c:	b2d9      	uxtb	r1, r3
    219e:	683a      	ldr	r2, [r7, #0]
    21a0:	7813      	ldrb	r3, [r2, #0]
    21a2:	f361 0305 	bfi	r3, r1, #0, #6
    21a6:	7013      	strb	r3, [r2, #0]
	return 1;
    21a8:	2301      	movs	r3, #1
}
    21aa:	4618      	mov	r0, r3
    21ac:	3710      	adds	r7, #16
    21ae:	46bd      	mov	sp, r7
    21b0:	bd80      	pop	{r7, pc}

000021b2 <date_str>:


//extrait date de la structure date_time_t
//et forme une chaîne yyyy/mm/dd
void date_str(date_time_t *dt, char *buffer){
    21b2:	b480      	push	{r7}
    21b4:	b085      	sub	sp, #20
    21b6:	af00      	add	r7, sp, #0
    21b8:	6078      	str	r0, [r7, #4]
    21ba:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    21bc:	2300      	movs	r3, #0
    21be:	60fb      	str	r3, [r7, #12]
	
	n=dt->year;
    21c0:	687b      	ldr	r3, [r7, #4]
    21c2:	891b      	ldrh	r3, [r3, #8]
    21c4:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/1000+'0';
    21c6:	68fb      	ldr	r3, [r7, #12]
    21c8:	1c5a      	adds	r2, r3, #1
    21ca:	60fa      	str	r2, [r7, #12]
    21cc:	461a      	mov	r2, r3
    21ce:	683b      	ldr	r3, [r7, #0]
    21d0:	4413      	add	r3, r2
    21d2:	68ba      	ldr	r2, [r7, #8]
    21d4:	495d      	ldr	r1, [pc, #372]	; (234c <date_str+0x19a>)
    21d6:	fba1 1202 	umull	r1, r2, r1, r2
    21da:	0992      	lsrs	r2, r2, #6
    21dc:	b2d2      	uxtb	r2, r2
    21de:	3230      	adds	r2, #48	; 0x30
    21e0:	b2d2      	uxtb	r2, r2
    21e2:	701a      	strb	r2, [r3, #0]
	n%=1000;
    21e4:	68bb      	ldr	r3, [r7, #8]
    21e6:	4a59      	ldr	r2, [pc, #356]	; (234c <date_str+0x19a>)
    21e8:	fba2 1203 	umull	r1, r2, r2, r3
    21ec:	0992      	lsrs	r2, r2, #6
    21ee:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    21f2:	fb01 f202 	mul.w	r2, r1, r2
    21f6:	1a9b      	subs	r3, r3, r2
    21f8:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/100+'0';
    21fa:	68fb      	ldr	r3, [r7, #12]
    21fc:	1c5a      	adds	r2, r3, #1
    21fe:	60fa      	str	r2, [r7, #12]
    2200:	461a      	mov	r2, r3
    2202:	683b      	ldr	r3, [r7, #0]
    2204:	4413      	add	r3, r2
    2206:	68ba      	ldr	r2, [r7, #8]
    2208:	4951      	ldr	r1, [pc, #324]	; (2350 <date_str+0x19e>)
    220a:	fba1 1202 	umull	r1, r2, r1, r2
    220e:	0952      	lsrs	r2, r2, #5
    2210:	b2d2      	uxtb	r2, r2
    2212:	3230      	adds	r2, #48	; 0x30
    2214:	b2d2      	uxtb	r2, r2
    2216:	701a      	strb	r2, [r3, #0]
	n%=100;
    2218:	68bb      	ldr	r3, [r7, #8]
    221a:	4a4d      	ldr	r2, [pc, #308]	; (2350 <date_str+0x19e>)
    221c:	fba2 1203 	umull	r1, r2, r2, r3
    2220:	0952      	lsrs	r2, r2, #5
    2222:	2164      	movs	r1, #100	; 0x64
    2224:	fb01 f202 	mul.w	r2, r1, r2
    2228:	1a9b      	subs	r3, r3, r2
    222a:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    222c:	68fb      	ldr	r3, [r7, #12]
    222e:	1c5a      	adds	r2, r3, #1
    2230:	60fa      	str	r2, [r7, #12]
    2232:	461a      	mov	r2, r3
    2234:	683b      	ldr	r3, [r7, #0]
    2236:	4413      	add	r3, r2
    2238:	68ba      	ldr	r2, [r7, #8]
    223a:	4946      	ldr	r1, [pc, #280]	; (2354 <date_str+0x1a2>)
    223c:	fba1 1202 	umull	r1, r2, r1, r2
    2240:	08d2      	lsrs	r2, r2, #3
    2242:	b2d2      	uxtb	r2, r2
    2244:	3230      	adds	r2, #48	; 0x30
    2246:	b2d2      	uxtb	r2, r2
    2248:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    224a:	68fb      	ldr	r3, [r7, #12]
    224c:	1c5a      	adds	r2, r3, #1
    224e:	60fa      	str	r2, [r7, #12]
    2250:	461a      	mov	r2, r3
    2252:	683b      	ldr	r3, [r7, #0]
    2254:	1898      	adds	r0, r3, r2
    2256:	68b9      	ldr	r1, [r7, #8]
    2258:	4b3e      	ldr	r3, [pc, #248]	; (2354 <date_str+0x1a2>)
    225a:	fba3 2301 	umull	r2, r3, r3, r1
    225e:	08da      	lsrs	r2, r3, #3
    2260:	4613      	mov	r3, r2
    2262:	009b      	lsls	r3, r3, #2
    2264:	4413      	add	r3, r2
    2266:	005b      	lsls	r3, r3, #1
    2268:	1aca      	subs	r2, r1, r3
    226a:	b2d3      	uxtb	r3, r2
    226c:	3330      	adds	r3, #48	; 0x30
    226e:	b2db      	uxtb	r3, r3
    2270:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    2272:	68fb      	ldr	r3, [r7, #12]
    2274:	1c5a      	adds	r2, r3, #1
    2276:	60fa      	str	r2, [r7, #12]
    2278:	461a      	mov	r2, r3
    227a:	683b      	ldr	r3, [r7, #0]
    227c:	4413      	add	r3, r2
    227e:	222f      	movs	r2, #47	; 0x2f
    2280:	701a      	strb	r2, [r3, #0]
	n=dt->month;
    2282:	687b      	ldr	r3, [r7, #4]
    2284:	885b      	ldrh	r3, [r3, #2]
    2286:	f3c3 1383 	ubfx	r3, r3, #6, #4
    228a:	b2db      	uxtb	r3, r3
    228c:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    228e:	68fb      	ldr	r3, [r7, #12]
    2290:	1c5a      	adds	r2, r3, #1
    2292:	60fa      	str	r2, [r7, #12]
    2294:	461a      	mov	r2, r3
    2296:	683b      	ldr	r3, [r7, #0]
    2298:	4413      	add	r3, r2
    229a:	68ba      	ldr	r2, [r7, #8]
    229c:	492d      	ldr	r1, [pc, #180]	; (2354 <date_str+0x1a2>)
    229e:	fba1 1202 	umull	r1, r2, r1, r2
    22a2:	08d2      	lsrs	r2, r2, #3
    22a4:	b2d2      	uxtb	r2, r2
    22a6:	3230      	adds	r2, #48	; 0x30
    22a8:	b2d2      	uxtb	r2, r2
    22aa:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    22ac:	68fb      	ldr	r3, [r7, #12]
    22ae:	1c5a      	adds	r2, r3, #1
    22b0:	60fa      	str	r2, [r7, #12]
    22b2:	461a      	mov	r2, r3
    22b4:	683b      	ldr	r3, [r7, #0]
    22b6:	1898      	adds	r0, r3, r2
    22b8:	68b9      	ldr	r1, [r7, #8]
    22ba:	4b26      	ldr	r3, [pc, #152]	; (2354 <date_str+0x1a2>)
    22bc:	fba3 2301 	umull	r2, r3, r3, r1
    22c0:	08da      	lsrs	r2, r3, #3
    22c2:	4613      	mov	r3, r2
    22c4:	009b      	lsls	r3, r3, #2
    22c6:	4413      	add	r3, r2
    22c8:	005b      	lsls	r3, r3, #1
    22ca:	1aca      	subs	r2, r1, r3
    22cc:	b2d3      	uxtb	r3, r2
    22ce:	3330      	adds	r3, #48	; 0x30
    22d0:	b2db      	uxtb	r3, r3
    22d2:	7003      	strb	r3, [r0, #0]
	buffer[i++]='/';
    22d4:	68fb      	ldr	r3, [r7, #12]
    22d6:	1c5a      	adds	r2, r3, #1
    22d8:	60fa      	str	r2, [r7, #12]
    22da:	461a      	mov	r2, r3
    22dc:	683b      	ldr	r3, [r7, #0]
    22de:	4413      	add	r3, r2
    22e0:	222f      	movs	r2, #47	; 0x2f
    22e2:	701a      	strb	r2, [r3, #0]
	n=dt->day;
    22e4:	687b      	ldr	r3, [r7, #4]
    22e6:	789b      	ldrb	r3, [r3, #2]
    22e8:	f3c3 0344 	ubfx	r3, r3, #1, #5
    22ec:	b2db      	uxtb	r3, r3
    22ee:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    22f0:	68fb      	ldr	r3, [r7, #12]
    22f2:	1c5a      	adds	r2, r3, #1
    22f4:	60fa      	str	r2, [r7, #12]
    22f6:	461a      	mov	r2, r3
    22f8:	683b      	ldr	r3, [r7, #0]
    22fa:	4413      	add	r3, r2
    22fc:	68ba      	ldr	r2, [r7, #8]
    22fe:	4915      	ldr	r1, [pc, #84]	; (2354 <date_str+0x1a2>)
    2300:	fba1 1202 	umull	r1, r2, r1, r2
    2304:	08d2      	lsrs	r2, r2, #3
    2306:	b2d2      	uxtb	r2, r2
    2308:	3230      	adds	r2, #48	; 0x30
    230a:	b2d2      	uxtb	r2, r2
    230c:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    230e:	68fb      	ldr	r3, [r7, #12]
    2310:	1c5a      	adds	r2, r3, #1
    2312:	60fa      	str	r2, [r7, #12]
    2314:	461a      	mov	r2, r3
    2316:	683b      	ldr	r3, [r7, #0]
    2318:	1898      	adds	r0, r3, r2
    231a:	68b9      	ldr	r1, [r7, #8]
    231c:	4b0d      	ldr	r3, [pc, #52]	; (2354 <date_str+0x1a2>)
    231e:	fba3 2301 	umull	r2, r3, r3, r1
    2322:	08da      	lsrs	r2, r3, #3
    2324:	4613      	mov	r3, r2
    2326:	009b      	lsls	r3, r3, #2
    2328:	4413      	add	r3, r2
    232a:	005b      	lsls	r3, r3, #1
    232c:	1aca      	subs	r2, r1, r3
    232e:	b2d3      	uxtb	r3, r2
    2330:	3330      	adds	r3, #48	; 0x30
    2332:	b2db      	uxtb	r3, r3
    2334:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    2336:	68fb      	ldr	r3, [r7, #12]
    2338:	683a      	ldr	r2, [r7, #0]
    233a:	4413      	add	r3, r2
    233c:	2200      	movs	r2, #0
    233e:	701a      	strb	r2, [r3, #0]

}
    2340:	bf00      	nop
    2342:	3714      	adds	r7, #20
    2344:	46bd      	mov	sp, r7
    2346:	bc80      	pop	{r7}
    2348:	4770      	bx	lr
    234a:	bf00      	nop
    234c:	10624dd3 	.word	0x10624dd3
    2350:	51eb851f 	.word	0x51eb851f
    2354:	cccccccd 	.word	0xcccccccd

00002358 <time_str>:

//extrait l'heure de la structure date_time_t
// et forme une chaîne hh:mm:sec
void time_str(date_time_t *dt, char *buffer){
    2358:	b480      	push	{r7}
    235a:	b085      	sub	sp, #20
    235c:	af00      	add	r7, sp, #0
    235e:	6078      	str	r0, [r7, #4]
    2360:	6039      	str	r1, [r7, #0]
	uint32_t n;
	int i=0;
    2362:	2300      	movs	r3, #0
    2364:	60fb      	str	r3, [r7, #12]
	
	n=dt->hour;
    2366:	687b      	ldr	r3, [r7, #4]
    2368:	681b      	ldr	r3, [r3, #0]
    236a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    236e:	b2db      	uxtb	r3, r3
    2370:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    2372:	68fb      	ldr	r3, [r7, #12]
    2374:	1c5a      	adds	r2, r3, #1
    2376:	60fa      	str	r2, [r7, #12]
    2378:	461a      	mov	r2, r3
    237a:	683b      	ldr	r3, [r7, #0]
    237c:	4413      	add	r3, r2
    237e:	68ba      	ldr	r2, [r7, #8]
    2380:	4943      	ldr	r1, [pc, #268]	; (2490 <time_str+0x138>)
    2382:	fba1 1202 	umull	r1, r2, r1, r2
    2386:	08d2      	lsrs	r2, r2, #3
    2388:	b2d2      	uxtb	r2, r2
    238a:	3230      	adds	r2, #48	; 0x30
    238c:	b2d2      	uxtb	r2, r2
    238e:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    2390:	68fb      	ldr	r3, [r7, #12]
    2392:	1c5a      	adds	r2, r3, #1
    2394:	60fa      	str	r2, [r7, #12]
    2396:	461a      	mov	r2, r3
    2398:	683b      	ldr	r3, [r7, #0]
    239a:	1898      	adds	r0, r3, r2
    239c:	68b9      	ldr	r1, [r7, #8]
    239e:	4b3c      	ldr	r3, [pc, #240]	; (2490 <time_str+0x138>)
    23a0:	fba3 2301 	umull	r2, r3, r3, r1
    23a4:	08da      	lsrs	r2, r3, #3
    23a6:	4613      	mov	r3, r2
    23a8:	009b      	lsls	r3, r3, #2
    23aa:	4413      	add	r3, r2
    23ac:	005b      	lsls	r3, r3, #1
    23ae:	1aca      	subs	r2, r1, r3
    23b0:	b2d3      	uxtb	r3, r2
    23b2:	3330      	adds	r3, #48	; 0x30
    23b4:	b2db      	uxtb	r3, r3
    23b6:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    23b8:	68fb      	ldr	r3, [r7, #12]
    23ba:	1c5a      	adds	r2, r3, #1
    23bc:	60fa      	str	r2, [r7, #12]
    23be:	461a      	mov	r2, r3
    23c0:	683b      	ldr	r3, [r7, #0]
    23c2:	4413      	add	r3, r2
    23c4:	223a      	movs	r2, #58	; 0x3a
    23c6:	701a      	strb	r2, [r3, #0]
	n=dt->minute;
    23c8:	687b      	ldr	r3, [r7, #4]
    23ca:	881b      	ldrh	r3, [r3, #0]
    23cc:	f3c3 1385 	ubfx	r3, r3, #6, #6
    23d0:	b2db      	uxtb	r3, r3
    23d2:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    23d4:	68fb      	ldr	r3, [r7, #12]
    23d6:	1c5a      	adds	r2, r3, #1
    23d8:	60fa      	str	r2, [r7, #12]
    23da:	461a      	mov	r2, r3
    23dc:	683b      	ldr	r3, [r7, #0]
    23de:	4413      	add	r3, r2
    23e0:	68ba      	ldr	r2, [r7, #8]
    23e2:	492b      	ldr	r1, [pc, #172]	; (2490 <time_str+0x138>)
    23e4:	fba1 1202 	umull	r1, r2, r1, r2
    23e8:	08d2      	lsrs	r2, r2, #3
    23ea:	b2d2      	uxtb	r2, r2
    23ec:	3230      	adds	r2, #48	; 0x30
    23ee:	b2d2      	uxtb	r2, r2
    23f0:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    23f2:	68fb      	ldr	r3, [r7, #12]
    23f4:	1c5a      	adds	r2, r3, #1
    23f6:	60fa      	str	r2, [r7, #12]
    23f8:	461a      	mov	r2, r3
    23fa:	683b      	ldr	r3, [r7, #0]
    23fc:	1898      	adds	r0, r3, r2
    23fe:	68b9      	ldr	r1, [r7, #8]
    2400:	4b23      	ldr	r3, [pc, #140]	; (2490 <time_str+0x138>)
    2402:	fba3 2301 	umull	r2, r3, r3, r1
    2406:	08da      	lsrs	r2, r3, #3
    2408:	4613      	mov	r3, r2
    240a:	009b      	lsls	r3, r3, #2
    240c:	4413      	add	r3, r2
    240e:	005b      	lsls	r3, r3, #1
    2410:	1aca      	subs	r2, r1, r3
    2412:	b2d3      	uxtb	r3, r2
    2414:	3330      	adds	r3, #48	; 0x30
    2416:	b2db      	uxtb	r3, r3
    2418:	7003      	strb	r3, [r0, #0]
	buffer[i++]=':';
    241a:	68fb      	ldr	r3, [r7, #12]
    241c:	1c5a      	adds	r2, r3, #1
    241e:	60fa      	str	r2, [r7, #12]
    2420:	461a      	mov	r2, r3
    2422:	683b      	ldr	r3, [r7, #0]
    2424:	4413      	add	r3, r2
    2426:	223a      	movs	r2, #58	; 0x3a
    2428:	701a      	strb	r2, [r3, #0]
	n=dt->second;
    242a:	687b      	ldr	r3, [r7, #4]
    242c:	781b      	ldrb	r3, [r3, #0]
    242e:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2432:	b2db      	uxtb	r3, r3
    2434:	60bb      	str	r3, [r7, #8]
	buffer[i++]=n/10+'0';
    2436:	68fb      	ldr	r3, [r7, #12]
    2438:	1c5a      	adds	r2, r3, #1
    243a:	60fa      	str	r2, [r7, #12]
    243c:	461a      	mov	r2, r3
    243e:	683b      	ldr	r3, [r7, #0]
    2440:	4413      	add	r3, r2
    2442:	68ba      	ldr	r2, [r7, #8]
    2444:	4912      	ldr	r1, [pc, #72]	; (2490 <time_str+0x138>)
    2446:	fba1 1202 	umull	r1, r2, r1, r2
    244a:	08d2      	lsrs	r2, r2, #3
    244c:	b2d2      	uxtb	r2, r2
    244e:	3230      	adds	r2, #48	; 0x30
    2450:	b2d2      	uxtb	r2, r2
    2452:	701a      	strb	r2, [r3, #0]
	buffer[i++]=n%10+'0';
    2454:	68fb      	ldr	r3, [r7, #12]
    2456:	1c5a      	adds	r2, r3, #1
    2458:	60fa      	str	r2, [r7, #12]
    245a:	461a      	mov	r2, r3
    245c:	683b      	ldr	r3, [r7, #0]
    245e:	1898      	adds	r0, r3, r2
    2460:	68b9      	ldr	r1, [r7, #8]
    2462:	4b0b      	ldr	r3, [pc, #44]	; (2490 <time_str+0x138>)
    2464:	fba3 2301 	umull	r2, r3, r3, r1
    2468:	08da      	lsrs	r2, r3, #3
    246a:	4613      	mov	r3, r2
    246c:	009b      	lsls	r3, r3, #2
    246e:	4413      	add	r3, r2
    2470:	005b      	lsls	r3, r3, #1
    2472:	1aca      	subs	r2, r1, r3
    2474:	b2d3      	uxtb	r3, r2
    2476:	3330      	adds	r3, #48	; 0x30
    2478:	b2db      	uxtb	r3, r3
    247a:	7003      	strb	r3, [r0, #0]
	buffer[i]=0;
    247c:	68fb      	ldr	r3, [r7, #12]
    247e:	683a      	ldr	r2, [r7, #0]
    2480:	4413      	add	r3, r2
    2482:	2200      	movs	r2, #0
    2484:	701a      	strb	r2, [r3, #0]
}
    2486:	bf00      	nop
    2488:	3714      	adds	r7, #20
    248a:	46bd      	mov	sp, r7
    248c:	bc80      	pop	{r7}
    248e:	4770      	bx	lr
    2490:	cccccccd 	.word	0xcccccccd

00002494 <get_fattime>:

// retourne timbre horaire pour système de fichier
uint32_t get_fattime(){
    2494:	b580      	push	{r7, lr}
    2496:	b084      	sub	sp, #16
    2498:	af00      	add	r7, sp, #0
	timestamp_t t;
	date_time_t dt;
	
	get_date_time(&dt);
    249a:	463b      	mov	r3, r7
    249c:	4618      	mov	r0, r3
    249e:	f7ff fa69 	bl	1974 <get_date_time>
	t.fields.second=dt.second/2;
    24a2:	783b      	ldrb	r3, [r7, #0]
    24a4:	f3c3 0305 	ubfx	r3, r3, #0, #6
    24a8:	b2db      	uxtb	r3, r3
    24aa:	0fda      	lsrs	r2, r3, #31
    24ac:	4413      	add	r3, r2
    24ae:	105b      	asrs	r3, r3, #1
    24b0:	b2db      	uxtb	r3, r3
    24b2:	f003 031f 	and.w	r3, r3, #31
    24b6:	b2da      	uxtb	r2, r3
    24b8:	7b3b      	ldrb	r3, [r7, #12]
    24ba:	f362 0304 	bfi	r3, r2, #0, #5
    24be:	733b      	strb	r3, [r7, #12]
	t.fields.minute=dt.minute;
    24c0:	883b      	ldrh	r3, [r7, #0]
    24c2:	f3c3 1385 	ubfx	r3, r3, #6, #6
    24c6:	b2da      	uxtb	r2, r3
    24c8:	89bb      	ldrh	r3, [r7, #12]
    24ca:	f362 134a 	bfi	r3, r2, #5, #6
    24ce:	81bb      	strh	r3, [r7, #12]
	t.fields.hour=dt.hour;
    24d0:	683b      	ldr	r3, [r7, #0]
    24d2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    24d6:	b2da      	uxtb	r2, r3
    24d8:	7b7b      	ldrb	r3, [r7, #13]
    24da:	f362 03c7 	bfi	r3, r2, #3, #5
    24de:	737b      	strb	r3, [r7, #13]
	t.fields.day=dt.day;
    24e0:	78bb      	ldrb	r3, [r7, #2]
    24e2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    24e6:	b2da      	uxtb	r2, r3
    24e8:	7bbb      	ldrb	r3, [r7, #14]
    24ea:	f362 0304 	bfi	r3, r2, #0, #5
    24ee:	73bb      	strb	r3, [r7, #14]
	t.fields.month=dt.month;
    24f0:	887b      	ldrh	r3, [r7, #2]
    24f2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    24f6:	b2da      	uxtb	r2, r3
    24f8:	89fb      	ldrh	r3, [r7, #14]
    24fa:	f362 1348 	bfi	r3, r2, #5, #4
    24fe:	81fb      	strh	r3, [r7, #14]
	t.fields.year=dt.year-1980;
    2500:	893b      	ldrh	r3, [r7, #8]
    2502:	b2db      	uxtb	r3, r3
    2504:	3344      	adds	r3, #68	; 0x44
    2506:	b2db      	uxtb	r3, r3
    2508:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    250c:	b2da      	uxtb	r2, r3
    250e:	7bfb      	ldrb	r3, [r7, #15]
    2510:	f362 0347 	bfi	r3, r2, #1, #7
    2514:	73fb      	strb	r3, [r7, #15]
	return t.u32;
    2516:	68fb      	ldr	r3, [r7, #12]
}
    2518:	4618      	mov	r0, r3
    251a:	3710      	adds	r7, #16
    251c:	46bd      	mov	sp, r7
    251e:	bd80      	pop	{r7, pc}

00002520 <RTC_handler>:


void RTC_handler(){
    2520:	b480      	push	{r7}
    2522:	b083      	sub	sp, #12
    2524:	af00      	add	r7, sp, #0
	u16_to_u8_t u;
	if (RTC->CRL&RTC_CRL_SECF){
    2526:	4b0a      	ldr	r3, [pc, #40]	; (2550 <RTC_handler+0x30>)
    2528:	685b      	ldr	r3, [r3, #4]
    252a:	f003 0301 	and.w	r3, r3, #1
    252e:	2b00      	cmp	r3, #0
    2530:	d001      	beq.n	2536 <RTC_handler+0x16>
		RTC->CRL&~RTC_CRL_SECF;
    2532:	4b07      	ldr	r3, [pc, #28]	; (2550 <RTC_handler+0x30>)
    2534:	685b      	ldr	r3, [r3, #4]
	}// interruption secondes
	if (RTC->CRL&RTC_CRL_ALRF){
    2536:	4b06      	ldr	r3, [pc, #24]	; (2550 <RTC_handler+0x30>)
    2538:	685b      	ldr	r3, [r3, #4]
    253a:	f003 0302 	and.w	r3, r3, #2
    253e:	2b00      	cmp	r3, #0
    2540:	d001      	beq.n	2546 <RTC_handler+0x26>
		RTC->CRL&~RTC_CRL_ALRF;
    2542:	4b03      	ldr	r3, [pc, #12]	; (2550 <RTC_handler+0x30>)
    2544:	685b      	ldr	r3, [r3, #4]
	}// interruption alarme
}
    2546:	bf00      	nop
    2548:	370c      	adds	r7, #12
    254a:	46bd      	mov	sp, r7
    254c:	bc80      	pop	{r7}
    254e:	4770      	bx	lr
    2550:	40002800 	.word	0x40002800

00002554 <spi_baudrate>:
 */

#include "../include/blue_pill.h"


void spi_baudrate(spi_sfr_t* channel, unsigned baud){
    2554:	b480      	push	{r7}
    2556:	b083      	sub	sp, #12
    2558:	af00      	add	r7, sp, #0
    255a:	6078      	str	r0, [r7, #4]
    255c:	6039      	str	r1, [r7, #0]
	channel->CR1&=SPI_CR1_BR_MASK;
    255e:	687b      	ldr	r3, [r7, #4]
    2560:	681b      	ldr	r3, [r3, #0]
    2562:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    2566:	687b      	ldr	r3, [r7, #4]
    2568:	601a      	str	r2, [r3, #0]
	channel->CR1|=baud<<SPI_CR1_BR_POS;
    256a:	687b      	ldr	r3, [r7, #4]
    256c:	681a      	ldr	r2, [r3, #0]
    256e:	683b      	ldr	r3, [r7, #0]
    2570:	00db      	lsls	r3, r3, #3
    2572:	431a      	orrs	r2, r3
    2574:	687b      	ldr	r3, [r7, #4]
    2576:	601a      	str	r2, [r3, #0]
}
    2578:	bf00      	nop
    257a:	370c      	adds	r7, #12
    257c:	46bd      	mov	sp, r7
    257e:	bc80      	pop	{r7}
    2580:	4770      	bx	lr

00002582 <spi_config_port>:

void spi_config_port(spi_sfr_t *channel, int afio_cfg){
    2582:	b580      	push	{r7, lr}
    2584:	b082      	sub	sp, #8
    2586:	af00      	add	r7, sp, #0
    2588:	6078      	str	r0, [r7, #4]
    258a:	6039      	str	r1, [r7, #0]
	RCC->APB2ENR|=RCC_APB2ENR_AFIOEN;
    258c:	4a33      	ldr	r2, [pc, #204]	; (265c <spi_config_port+0xda>)
    258e:	4b33      	ldr	r3, [pc, #204]	; (265c <spi_config_port+0xda>)
    2590:	699b      	ldr	r3, [r3, #24]
    2592:	f043 0301 	orr.w	r3, r3, #1
    2596:	6193      	str	r3, [r2, #24]
	if (channel==SPI1){
    2598:	687b      	ldr	r3, [r7, #4]
    259a:	4a31      	ldr	r2, [pc, #196]	; (2660 <spi_config_port+0xde>)
    259c:	4293      	cmp	r3, r2
    259e:	d13e      	bne.n	261e <spi_config_port+0x9c>
		if (!afio_cfg){
    25a0:	683b      	ldr	r3, [r7, #0]
    25a2:	2b00      	cmp	r3, #0
    25a4:	d11a      	bne.n	25dc <spi_config_port+0x5a>
			// activation clock du port
			RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    25a6:	4a2d      	ldr	r2, [pc, #180]	; (265c <spi_config_port+0xda>)
    25a8:	4b2c      	ldr	r3, [pc, #176]	; (265c <spi_config_port+0xda>)
    25aa:	699b      	ldr	r3, [r3, #24]
    25ac:	f043 0304 	orr.w	r3, r3, #4
    25b0:	6193      	str	r3, [r2, #24]
			// configuration port
			// PA4 -> NSS output (push-pull)
			config_pin(PORTA,4,OUTPUT_PP_FAST);
    25b2:	2203      	movs	r2, #3
    25b4:	2104      	movs	r1, #4
    25b6:	482b      	ldr	r0, [pc, #172]	; (2664 <spi_config_port+0xe2>)
    25b8:	f7fe ffc9 	bl	154e <config_pin>
			// PA5 -> SCK output (push-pull)
			config_pin(PORTA,5,OUTPUT_ALT_PP_FAST);
    25bc:	220b      	movs	r2, #11
    25be:	2105      	movs	r1, #5
    25c0:	4828      	ldr	r0, [pc, #160]	; (2664 <spi_config_port+0xe2>)
    25c2:	f7fe ffc4 	bl	154e <config_pin>
			// PA6 -> MISO input (floating)
			config_pin(PORTA,6,INPUT_FLOAT);
    25c6:	2204      	movs	r2, #4
    25c8:	2106      	movs	r1, #6
    25ca:	4826      	ldr	r0, [pc, #152]	; (2664 <spi_config_port+0xe2>)
    25cc:	f7fe ffbf 	bl	154e <config_pin>
			// PA7 -> MOSI output (push-pull)
			config_pin(PORTA,7,OUTPUT_ALT_PP_FAST);
    25d0:	220b      	movs	r2, #11
    25d2:	2107      	movs	r1, #7
    25d4:	4823      	ldr	r0, [pc, #140]	; (2664 <spi_config_port+0xe2>)
    25d6:	f7fe ffba 	bl	154e <config_pin>
		// PB14 MISO input (floating)
		config_pin(PORTB,14,INPUT_FLOAT);
		// PB15 MOSI output (push-pull)
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
	}
}
    25da:	e03a      	b.n	2652 <spi_config_port+0xd0>
			RCC->APB2ENR|=RCC_APB2ENR_IOPBEN+RCC_APB2ENR_IOPAEN+RCC_APB2ENR_AFIOEN;
    25dc:	4a1f      	ldr	r2, [pc, #124]	; (265c <spi_config_port+0xda>)
    25de:	4b1f      	ldr	r3, [pc, #124]	; (265c <spi_config_port+0xda>)
    25e0:	699b      	ldr	r3, [r3, #24]
    25e2:	f043 030d 	orr.w	r3, r3, #13
    25e6:	6193      	str	r3, [r2, #24]
			AFIO->MAPR|=AFIO_MAPR_SPI1_REMAP;
    25e8:	4a1f      	ldr	r2, [pc, #124]	; (2668 <spi_config_port+0xe6>)
    25ea:	4b1f      	ldr	r3, [pc, #124]	; (2668 <spi_config_port+0xe6>)
    25ec:	685b      	ldr	r3, [r3, #4]
    25ee:	f043 0301 	orr.w	r3, r3, #1
    25f2:	6053      	str	r3, [r2, #4]
			config_pin(PORTA,15,OUTPUT_PP_FAST);
    25f4:	2203      	movs	r2, #3
    25f6:	210f      	movs	r1, #15
    25f8:	481a      	ldr	r0, [pc, #104]	; (2664 <spi_config_port+0xe2>)
    25fa:	f7fe ffa8 	bl	154e <config_pin>
			config_pin(PORTB,3,OUTPUT_ALT_PP_FAST);
    25fe:	220b      	movs	r2, #11
    2600:	2103      	movs	r1, #3
    2602:	481a      	ldr	r0, [pc, #104]	; (266c <spi_config_port+0xea>)
    2604:	f7fe ffa3 	bl	154e <config_pin>
			config_pin(PORTB,4,INPUT_FLOAT);
    2608:	2204      	movs	r2, #4
    260a:	2104      	movs	r1, #4
    260c:	4817      	ldr	r0, [pc, #92]	; (266c <spi_config_port+0xea>)
    260e:	f7fe ff9e 	bl	154e <config_pin>
			config_pin(PORTB,5,OUTPUT_ALT_PP_FAST);
    2612:	220b      	movs	r2, #11
    2614:	2105      	movs	r1, #5
    2616:	4815      	ldr	r0, [pc, #84]	; (266c <spi_config_port+0xea>)
    2618:	f7fe ff99 	bl	154e <config_pin>
}
    261c:	e019      	b.n	2652 <spi_config_port+0xd0>
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    261e:	4a0f      	ldr	r2, [pc, #60]	; (265c <spi_config_port+0xda>)
    2620:	4b0e      	ldr	r3, [pc, #56]	; (265c <spi_config_port+0xda>)
    2622:	699b      	ldr	r3, [r3, #24]
    2624:	f043 0308 	orr.w	r3, r3, #8
    2628:	6193      	str	r3, [r2, #24]
		config_pin(PORTB,2,OUTPUT_PP_FAST);
    262a:	2203      	movs	r2, #3
    262c:	2102      	movs	r1, #2
    262e:	480f      	ldr	r0, [pc, #60]	; (266c <spi_config_port+0xea>)
    2630:	f7fe ff8d 	bl	154e <config_pin>
		config_pin(PORTB,13,OUTPUT_ALT_PP_FAST);
    2634:	220b      	movs	r2, #11
    2636:	210d      	movs	r1, #13
    2638:	480c      	ldr	r0, [pc, #48]	; (266c <spi_config_port+0xea>)
    263a:	f7fe ff88 	bl	154e <config_pin>
		config_pin(PORTB,14,INPUT_FLOAT);
    263e:	2204      	movs	r2, #4
    2640:	210e      	movs	r1, #14
    2642:	480a      	ldr	r0, [pc, #40]	; (266c <spi_config_port+0xea>)
    2644:	f7fe ff83 	bl	154e <config_pin>
		config_pin(PORTB,15,OUTPUT_ALT_PP_FAST);
    2648:	220b      	movs	r2, #11
    264a:	210f      	movs	r1, #15
    264c:	4807      	ldr	r0, [pc, #28]	; (266c <spi_config_port+0xea>)
    264e:	f7fe ff7e 	bl	154e <config_pin>
}
    2652:	bf00      	nop
    2654:	3708      	adds	r7, #8
    2656:	46bd      	mov	sp, r7
    2658:	bd80      	pop	{r7, pc}
    265a:	bf00      	nop
    265c:	40021000 	.word	0x40021000
    2660:	40013000 	.word	0x40013000
    2664:	40010800 	.word	0x40010800
    2668:	40010000 	.word	0x40010000
    266c:	40010c00 	.word	0x40010c00

00002670 <spi_init>:

void spi_init(spi_sfr_t* channel, unsigned baud,unsigned mode, int afio_cfg){
    2670:	b580      	push	{r7, lr}
    2672:	b084      	sub	sp, #16
    2674:	af00      	add	r7, sp, #0
    2676:	60f8      	str	r0, [r7, #12]
    2678:	60b9      	str	r1, [r7, #8]
    267a:	607a      	str	r2, [r7, #4]
    267c:	603b      	str	r3, [r7, #0]
	spi_config_port(channel,afio_cfg);
    267e:	6839      	ldr	r1, [r7, #0]
    2680:	68f8      	ldr	r0, [r7, #12]
    2682:	f7ff ff7e 	bl	2582 <spi_config_port>
	// activation clock SPI
	if (channel==SPI1){
    2686:	68fb      	ldr	r3, [r7, #12]
    2688:	4a10      	ldr	r2, [pc, #64]	; (26cc <spi_init+0x5c>)
    268a:	4293      	cmp	r3, r2
    268c:	d106      	bne.n	269c <spi_init+0x2c>
		RCC->APB2ENR|=RCC_APB2ENR_SPI1EN;
    268e:	4a10      	ldr	r2, [pc, #64]	; (26d0 <spi_init+0x60>)
    2690:	4b0f      	ldr	r3, [pc, #60]	; (26d0 <spi_init+0x60>)
    2692:	699b      	ldr	r3, [r3, #24]
    2694:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2698:	6193      	str	r3, [r2, #24]
    269a:	e005      	b.n	26a8 <spi_init+0x38>
	}else{
		RCC->APB1ENR|=RCC_APB1ENR_SPI2EN;
    269c:	4a0c      	ldr	r2, [pc, #48]	; (26d0 <spi_init+0x60>)
    269e:	4b0c      	ldr	r3, [pc, #48]	; (26d0 <spi_init+0x60>)
    26a0:	69db      	ldr	r3, [r3, #28]
    26a2:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    26a6:	61d3      	str	r3, [r2, #28]
	}
	channel->CR1=mode;
    26a8:	68fb      	ldr	r3, [r7, #12]
    26aa:	687a      	ldr	r2, [r7, #4]
    26ac:	601a      	str	r2, [r3, #0]
	spi_baudrate(channel,baud);
    26ae:	68b9      	ldr	r1, [r7, #8]
    26b0:	68f8      	ldr	r0, [r7, #12]
    26b2:	f7ff ff4f 	bl	2554 <spi_baudrate>
	_spi_enable(channel);
    26b6:	68fb      	ldr	r3, [r7, #12]
    26b8:	681b      	ldr	r3, [r3, #0]
    26ba:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    26be:	68fb      	ldr	r3, [r7, #12]
    26c0:	601a      	str	r2, [r3, #0]
}
    26c2:	bf00      	nop
    26c4:	3710      	adds	r7, #16
    26c6:	46bd      	mov	sp, r7
    26c8:	bd80      	pop	{r7, pc}
    26ca:	bf00      	nop
    26cc:	40013000 	.word	0x40013000
    26d0:	40021000 	.word	0x40021000

000026d4 <spi_send>:


// envoie un octet via le canla SPI
inline void spi_send(spi_sfr_t* channel, uint8_t b){
    26d4:	b480      	push	{r7}
    26d6:	b085      	sub	sp, #20
    26d8:	af00      	add	r7, sp, #0
    26da:	6078      	str	r0, [r7, #4]
    26dc:	460b      	mov	r3, r1
    26de:	70fb      	strb	r3, [r7, #3]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    26e0:	bf00      	nop
    26e2:	687b      	ldr	r3, [r7, #4]
    26e4:	689b      	ldr	r3, [r3, #8]
    26e6:	f003 0302 	and.w	r3, r3, #2
    26ea:	2b00      	cmp	r3, #0
    26ec:	d0f9      	beq.n	26e2 <spi_send+0xe>
	channel->DR=b;
    26ee:	78fa      	ldrb	r2, [r7, #3]
    26f0:	687b      	ldr	r3, [r7, #4]
    26f2:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    26f4:	bf00      	nop
    26f6:	687b      	ldr	r3, [r7, #4]
    26f8:	689b      	ldr	r3, [r3, #8]
    26fa:	f003 0301 	and.w	r3, r3, #1
    26fe:	2b00      	cmp	r3, #0
    2700:	d0f9      	beq.n	26f6 <spi_send+0x22>
	rx=(uint8_t)channel->DR;
    2702:	687b      	ldr	r3, [r7, #4]
    2704:	68db      	ldr	r3, [r3, #12]
    2706:	73fb      	strb	r3, [r7, #15]
}
    2708:	bf00      	nop
    270a:	3714      	adds	r7, #20
    270c:	46bd      	mov	sp, r7
    270e:	bc80      	pop	{r7}
    2710:	4770      	bx	lr

00002712 <spi_receive>:

// reçois un octet du canal SPI
uint8_t spi_receive(spi_sfr_t* channel){
    2712:	b480      	push	{r7}
    2714:	b085      	sub	sp, #20
    2716:	af00      	add	r7, sp, #0
    2718:	6078      	str	r0, [r7, #4]
	uint8_t rx;
	while (!(channel->SR&SPI_SR_TXE));
    271a:	bf00      	nop
    271c:	687b      	ldr	r3, [r7, #4]
    271e:	689b      	ldr	r3, [r3, #8]
    2720:	f003 0302 	and.w	r3, r3, #2
    2724:	2b00      	cmp	r3, #0
    2726:	d0f9      	beq.n	271c <spi_receive+0xa>
	channel->DR=255;
    2728:	687b      	ldr	r3, [r7, #4]
    272a:	22ff      	movs	r2, #255	; 0xff
    272c:	60da      	str	r2, [r3, #12]
	while (!(channel->SR&SPI_SR_RXNE));
    272e:	bf00      	nop
    2730:	687b      	ldr	r3, [r7, #4]
    2732:	689b      	ldr	r3, [r3, #8]
    2734:	f003 0301 	and.w	r3, r3, #1
    2738:	2b00      	cmp	r3, #0
    273a:	d0f9      	beq.n	2730 <spi_receive+0x1e>
	rx=(uint8_t)channel->DR;
    273c:	687b      	ldr	r3, [r7, #4]
    273e:	68db      	ldr	r3, [r3, #12]
    2740:	73fb      	strb	r3, [r7, #15]
	return rx;
    2742:	7bfb      	ldrb	r3, [r7, #15]
}
    2744:	4618      	mov	r0, r3
    2746:	3714      	adds	r7, #20
    2748:	46bd      	mov	sp, r7
    274a:	bc80      	pop	{r7}
    274c:	4770      	bx	lr

0000274e <spi_send_block>:

// envoie d'un bloc d'octet
void spi_send_block(spi_sfr_t* channel, const char *buffer, int count){
    274e:	b480      	push	{r7}
    2750:	b087      	sub	sp, #28
    2752:	af00      	add	r7, sp, #0
    2754:	60f8      	str	r0, [r7, #12]
    2756:	60b9      	str	r1, [r7, #8]
    2758:	607a      	str	r2, [r7, #4]
	uint8_t rx;
	while (count){
    275a:	e010      	b.n	277e <spi_send_block+0x30>
		channel->DR=*buffer++;
    275c:	68bb      	ldr	r3, [r7, #8]
    275e:	1c5a      	adds	r2, r3, #1
    2760:	60ba      	str	r2, [r7, #8]
    2762:	781b      	ldrb	r3, [r3, #0]
    2764:	461a      	mov	r2, r3
    2766:	68fb      	ldr	r3, [r7, #12]
    2768:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_TXE));
    276a:	bf00      	nop
    276c:	68fb      	ldr	r3, [r7, #12]
    276e:	689b      	ldr	r3, [r3, #8]
    2770:	f003 0302 	and.w	r3, r3, #2
    2774:	2b00      	cmp	r3, #0
    2776:	d0f9      	beq.n	276c <spi_send_block+0x1e>
		count--;
    2778:	687b      	ldr	r3, [r7, #4]
    277a:	3b01      	subs	r3, #1
    277c:	607b      	str	r3, [r7, #4]
	while (count){
    277e:	687b      	ldr	r3, [r7, #4]
    2780:	2b00      	cmp	r3, #0
    2782:	d1eb      	bne.n	275c <spi_send_block+0xe>
	}
	while (channel->SR&SPI_SR_BSY);
    2784:	bf00      	nop
    2786:	68fb      	ldr	r3, [r7, #12]
    2788:	689b      	ldr	r3, [r3, #8]
    278a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    278e:	2b00      	cmp	r3, #0
    2790:	d1f9      	bne.n	2786 <spi_send_block+0x38>
	rx=(uint8_t)channel->DR;
    2792:	68fb      	ldr	r3, [r7, #12]
    2794:	68db      	ldr	r3, [r3, #12]
    2796:	75fb      	strb	r3, [r7, #23]
}
    2798:	bf00      	nop
    279a:	371c      	adds	r7, #28
    279c:	46bd      	mov	sp, r7
    279e:	bc80      	pop	{r7}
    27a0:	4770      	bx	lr

000027a2 <spi_receive_block>:

// réception d'un bloc d'octets
void spi_receive_block(spi_sfr_t* channel, char *buffer, int count){
    27a2:	b480      	push	{r7}
    27a4:	b085      	sub	sp, #20
    27a6:	af00      	add	r7, sp, #0
    27a8:	60f8      	str	r0, [r7, #12]
    27aa:	60b9      	str	r1, [r7, #8]
    27ac:	607a      	str	r2, [r7, #4]
	while (count){
    27ae:	e013      	b.n	27d8 <spi_receive_block+0x36>
		channel->DR=0;
    27b0:	68fb      	ldr	r3, [r7, #12]
    27b2:	2200      	movs	r2, #0
    27b4:	60da      	str	r2, [r3, #12]
		while (!(channel->SR&SPI_SR_RXNE));
    27b6:	bf00      	nop
    27b8:	68fb      	ldr	r3, [r7, #12]
    27ba:	689b      	ldr	r3, [r3, #8]
    27bc:	f003 0301 	and.w	r3, r3, #1
    27c0:	2b00      	cmp	r3, #0
    27c2:	d0f9      	beq.n	27b8 <spi_receive_block+0x16>
		*buffer++=(uint8_t)channel->DR;
    27c4:	68bb      	ldr	r3, [r7, #8]
    27c6:	1c5a      	adds	r2, r3, #1
    27c8:	60ba      	str	r2, [r7, #8]
    27ca:	68fa      	ldr	r2, [r7, #12]
    27cc:	68d2      	ldr	r2, [r2, #12]
    27ce:	b2d2      	uxtb	r2, r2
    27d0:	701a      	strb	r2, [r3, #0]
		count--;
    27d2:	687b      	ldr	r3, [r7, #4]
    27d4:	3b01      	subs	r3, #1
    27d6:	607b      	str	r3, [r7, #4]
	while (count){
    27d8:	687b      	ldr	r3, [r7, #4]
    27da:	2b00      	cmp	r3, #0
    27dc:	d1e8      	bne.n	27b0 <spi_receive_block+0xe>
	}
}
    27de:	bf00      	nop
    27e0:	3714      	adds	r7, #20
    27e2:	46bd      	mov	sp, r7
    27e4:	bc80      	pop	{r7}
    27e6:	4770      	bx	lr

000027e8 <reset_mcu>:
	_reset_mcu();
    27e8:	4b01      	ldr	r3, [pc, #4]	; (27f0 <reset_mcu+0x8>)
    27ea:	4a02      	ldr	r2, [pc, #8]	; (27f4 <reset_mcu+0xc>)
    27ec:	601a      	str	r2, [r3, #0]
}
    27ee:	bf00      	nop
    27f0:	e000ed0c 	.word	0xe000ed0c
    27f4:	05fa0004 	.word	0x05fa0004

000027f8 <print_fault>:
void print_fault(const char *msg, uint32_t adr){
    27f8:	b580      	push	{r7, lr}
    27fa:	b082      	sub	sp, #8
    27fc:	af00      	add	r7, sp, #0
    27fe:	6078      	str	r0, [r7, #4]
    2800:	6039      	str	r1, [r7, #0]
	print(msg);
    2802:	6878      	ldr	r0, [r7, #4]
    2804:	f7fe f844 	bl	890 <print>
	print("at address ");
    2808:	4817      	ldr	r0, [pc, #92]	; (2868 <print_fault+0x70>)
    280a:	f7fe f841 	bl	890 <print>
	if (adr) {
    280e:	683b      	ldr	r3, [r7, #0]
    2810:	2b00      	cmp	r3, #0
    2812:	d003      	beq.n	281c <print_fault+0x24>
		print_hex(adr,0);
    2814:	2100      	movs	r1, #0
    2816:	6838      	ldr	r0, [r7, #0]
    2818:	f7fe f9e8 	bl	bec <print_hex>
	conout(CR);
    281c:	200d      	movs	r0, #13
    281e:	f7fd ffd7 	bl	7d0 <conout>
	print("UFSR=");
    2822:	4812      	ldr	r0, [pc, #72]	; (286c <print_fault+0x74>)
    2824:	f7fe f834 	bl	890 <print>
	print_hex(CFSR->fsr.usageFalt,0);
    2828:	4b11      	ldr	r3, [pc, #68]	; (2870 <print_fault+0x78>)
    282a:	681b      	ldr	r3, [r3, #0]
    282c:	f3c3 430f 	ubfx	r3, r3, #16, #16
    2830:	b29b      	uxth	r3, r3
    2832:	2100      	movs	r1, #0
    2834:	4618      	mov	r0, r3
    2836:	f7fe f9d9 	bl	bec <print_hex>
	print(", BFSR=");
    283a:	480e      	ldr	r0, [pc, #56]	; (2874 <print_fault+0x7c>)
    283c:	f7fe f828 	bl	890 <print>
	print_hex(CFSR->fsr.busFault,0);
    2840:	4b0b      	ldr	r3, [pc, #44]	; (2870 <print_fault+0x78>)
    2842:	681b      	ldr	r3, [r3, #0]
    2844:	f3c3 2307 	ubfx	r3, r3, #8, #8
    2848:	b2db      	uxtb	r3, r3
    284a:	2100      	movs	r1, #0
    284c:	4618      	mov	r0, r3
    284e:	f7fe f9cd 	bl	bec <print_hex>
	print(", MMFSR=");
    2852:	4809      	ldr	r0, [pc, #36]	; (2878 <print_fault+0x80>)
    2854:	f7fe f81c 	bl	890 <print>
	print_hex(CFSR->fsr.mmFault,0);
    2858:	4b05      	ldr	r3, [pc, #20]	; (2870 <print_fault+0x78>)
    285a:	681b      	ldr	r3, [r3, #0]
    285c:	b2db      	uxtb	r3, r3
    285e:	2100      	movs	r1, #0
    2860:	4618      	mov	r0, r3
    2862:	f7fe f9c3 	bl	bec <print_hex>
	while(1);
    2866:	e7fe      	b.n	2866 <print_fault+0x6e>
    2868:	000032dc 	.word	0x000032dc
    286c:	000032e8 	.word	0x000032e8
    2870:	e000ed28 	.word	0xe000ed28
    2874:	000032f0 	.word	0x000032f0
    2878:	000032f8 	.word	0x000032f8

0000287c <config_systicks>:


// configure SYSTICKS pour un cycle 1 msec
// source AHB/8
#define MSEC_DLY FCLK/8/1000
void config_systicks(){
    287c:	b580      	push	{r7, lr}
    287e:	af00      	add	r7, sp, #0
	set_int_priority(IRQ_STK,9);
    2880:	2109      	movs	r1, #9
    2882:	f06f 000e 	mvn.w	r0, #14
    2886:	f7fe fff5 	bl	1874 <set_int_priority>
	*SYST_RVR=MSEC_DLY-1;
    288a:	4b04      	ldr	r3, [pc, #16]	; (289c <config_systicks+0x20>)
    288c:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2890:	601a      	str	r2, [r3, #0]
	SYST_CSR->csr=(1<<SYST_TICKINT)|(1<<SYST_ENABLE);
    2892:	4b03      	ldr	r3, [pc, #12]	; (28a0 <config_systicks+0x24>)
    2894:	2203      	movs	r2, #3
    2896:	601a      	str	r2, [r3, #0]
}
    2898:	bf00      	nop
    289a:	bd80      	pop	{r7, pc}
    289c:	e000e014 	.word	0xe000e014
    28a0:	e000e010 	.word	0xe000e010

000028a4 <pause>:



void pause(unsigned msec){
    28a4:	b480      	push	{r7}
    28a6:	b083      	sub	sp, #12
    28a8:	af00      	add	r7, sp, #0
    28aa:	6078      	str	r0, [r7, #4]
	timer=msec;
    28ac:	4a06      	ldr	r2, [pc, #24]	; (28c8 <pause+0x24>)
    28ae:	687b      	ldr	r3, [r7, #4]
    28b0:	6013      	str	r3, [r2, #0]
	while (timer);
    28b2:	bf00      	nop
    28b4:	4b04      	ldr	r3, [pc, #16]	; (28c8 <pause+0x24>)
    28b6:	681b      	ldr	r3, [r3, #0]
    28b8:	2b00      	cmp	r3, #0
    28ba:	d1fb      	bne.n	28b4 <pause+0x10>
}
    28bc:	bf00      	nop
    28be:	370c      	adds	r7, #12
    28c0:	46bd      	mov	sp, r7
    28c2:	bc80      	pop	{r7}
    28c4:	4770      	bx	lr
    28c6:	bf00      	nop
    28c8:	20000474 	.word	0x20000474

000028cc <STK_handler>:


// interruption coretimer
void STK_handler(){
    28cc:	b480      	push	{r7}
    28ce:	af00      	add	r7, sp, #0
	ticks++;
    28d0:	4b08      	ldr	r3, [pc, #32]	; (28f4 <STK_handler+0x28>)
    28d2:	681b      	ldr	r3, [r3, #0]
    28d4:	3301      	adds	r3, #1
    28d6:	4a07      	ldr	r2, [pc, #28]	; (28f4 <STK_handler+0x28>)
    28d8:	6013      	str	r3, [r2, #0]
	if (timer) {timer--;}
    28da:	4b07      	ldr	r3, [pc, #28]	; (28f8 <STK_handler+0x2c>)
    28dc:	681b      	ldr	r3, [r3, #0]
    28de:	2b00      	cmp	r3, #0
    28e0:	d004      	beq.n	28ec <STK_handler+0x20>
    28e2:	4b05      	ldr	r3, [pc, #20]	; (28f8 <STK_handler+0x2c>)
    28e4:	681b      	ldr	r3, [r3, #0]
    28e6:	3b01      	subs	r3, #1
    28e8:	4a03      	ldr	r2, [pc, #12]	; (28f8 <STK_handler+0x2c>)
    28ea:	6013      	str	r3, [r2, #0]
}
    28ec:	bf00      	nop
    28ee:	46bd      	mov	sp, r7
    28f0:	bc80      	pop	{r7}
    28f2:	4770      	bx	lr
    28f4:	20000470 	.word	0x20000470
    28f8:	20000474 	.word	0x20000474

000028fc <tvout_init>:

uint8_t video_buffer[VRES*HRES*BPP/8];

// use TIMER1 CH1  to generate video synchronization
// output PORT A8.
void tvout_init(){
    28fc:	b580      	push	{r7, lr}
    28fe:	af00      	add	r7, sp, #0
    config_pin(SYNC_PORT,SYNC_PIN,OUTPUT_ALT_PP_SLOW);
    2900:	220a      	movs	r2, #10
    2902:	2108      	movs	r1, #8
    2904:	481d      	ldr	r0, [pc, #116]	; (297c <tvout_init+0x80>)
    2906:	f7fe fe22 	bl	154e <config_pin>
    config_pin(SYNC_PORT,9,OUTPUT_PP_SLOW);
    290a:	2202      	movs	r2, #2
    290c:	2109      	movs	r1, #9
    290e:	481b      	ldr	r0, [pc, #108]	; (297c <tvout_init+0x80>)
    2910:	f7fe fe1d 	bl	154e <config_pin>
    TMR1->CCMR1=(7<<TMR_CCMR1_OC1M_POS)|TMR_CCMR1_OC1PE;
    2914:	4b1a      	ldr	r3, [pc, #104]	; (2980 <tvout_init+0x84>)
    2916:	2278      	movs	r2, #120	; 0x78
    2918:	619a      	str	r2, [r3, #24]
    TMR1->CCER=TMR_CCER_CC1E;
    291a:	4b19      	ldr	r3, [pc, #100]	; (2980 <tvout_init+0x84>)
    291c:	2201      	movs	r2, #1
    291e:	621a      	str	r2, [r3, #32]
    TMR1->CR1=TMR_CR1_ARPE|TMR_CR1_URS;
    2920:	4b17      	ldr	r3, [pc, #92]	; (2980 <tvout_init+0x84>)
    2922:	2284      	movs	r2, #132	; 0x84
    2924:	601a      	str	r2, [r3, #0]
    TMR1->ARR=HPERIOD;
    2926:	4b16      	ldr	r3, [pc, #88]	; (2980 <tvout_init+0x84>)
    2928:	f241 12c5 	movw	r2, #4549	; 0x11c5
    292c:	62da      	str	r2, [r3, #44]	; 0x2c
    TMR1->CCR1=HPULSE;
    292e:	4b14      	ldr	r3, [pc, #80]	; (2980 <tvout_init+0x84>)
    2930:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2934:	635a      	str	r2, [r3, #52]	; 0x34
    TMR1->EGR|=TMR_EGR_UG;
    2936:	4a12      	ldr	r2, [pc, #72]	; (2980 <tvout_init+0x84>)
    2938:	4b11      	ldr	r3, [pc, #68]	; (2980 <tvout_init+0x84>)
    293a:	695b      	ldr	r3, [r3, #20]
    293c:	f043 0301 	orr.w	r3, r3, #1
    2940:	6153      	str	r3, [r2, #20]
    TMR1->BDTR=TMR_BDTR_MOE;
    2942:	4b0f      	ldr	r3, [pc, #60]	; (2980 <tvout_init+0x84>)
    2944:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2948:	645a      	str	r2, [r3, #68]	; 0x44
    TMR1->SR=0;
    294a:	4b0d      	ldr	r3, [pc, #52]	; (2980 <tvout_init+0x84>)
    294c:	2200      	movs	r2, #0
    294e:	611a      	str	r2, [r3, #16]
    TMR1->DIER|=TMR_DIER_UIE;
    2950:	4a0b      	ldr	r2, [pc, #44]	; (2980 <tvout_init+0x84>)
    2952:	4b0b      	ldr	r3, [pc, #44]	; (2980 <tvout_init+0x84>)
    2954:	68db      	ldr	r3, [r3, #12]
    2956:	f043 0301 	orr.w	r3, r3, #1
    295a:	60d3      	str	r3, [r2, #12]
    set_int_priority(IRQ_TIM1_UP,1);    
    295c:	2101      	movs	r1, #1
    295e:	2019      	movs	r0, #25
    2960:	f7fe ff88 	bl	1874 <set_int_priority>
    enable_interrupt(IRQ_TIM1_UP);
    2964:	2019      	movs	r0, #25
    2966:	f7fe fecb 	bl	1700 <enable_interrupt>
    TMR1->CR1|=TMR_CR1_CEN; 
    296a:	4a05      	ldr	r2, [pc, #20]	; (2980 <tvout_init+0x84>)
    296c:	4b04      	ldr	r3, [pc, #16]	; (2980 <tvout_init+0x84>)
    296e:	681b      	ldr	r3, [r3, #0]
    2970:	f043 0301 	orr.w	r3, r3, #1
    2974:	6013      	str	r3, [r2, #0]
}
    2976:	bf00      	nop
    2978:	bd80      	pop	{r7, pc}
    297a:	bf00      	nop
    297c:	40010800 	.word	0x40010800
    2980:	40012c00 	.word	0x40012c00

00002984 <TV_SYNC_handler>:



void __attribute__((__interrupt__)) TV_SYNC_handler(){
    2984:	4668      	mov	r0, sp
    2986:	f020 0107 	bic.w	r1, r0, #7
    298a:	468d      	mov	sp, r1
    298c:	b481      	push	{r0, r7}
    298e:	b084      	sub	sp, #16
    2990:	af00      	add	r7, sp, #0
#define next_task(n)  ({slice++; if (slice==n){slice=0;task++;}})
    scan_line++;
    2992:	4b80      	ldr	r3, [pc, #512]	; (2b94 <TV_SYNC_handler+0x210>)
    2994:	881b      	ldrh	r3, [r3, #0]
    2996:	b29b      	uxth	r3, r3
    2998:	3301      	adds	r3, #1
    299a:	b29a      	uxth	r2, r3
    299c:	4b7d      	ldr	r3, [pc, #500]	; (2b94 <TV_SYNC_handler+0x210>)
    299e:	801a      	strh	r2, [r3, #0]
    switch (task){
    29a0:	4b7d      	ldr	r3, [pc, #500]	; (2b98 <TV_SYNC_handler+0x214>)
    29a2:	881b      	ldrh	r3, [r3, #0]
    29a4:	b29b      	uxth	r3, r3
    29a6:	2b06      	cmp	r3, #6
    29a8:	f200 8168 	bhi.w	2c7c <TV_SYNC_handler+0x2f8>
    29ac:	a201      	add	r2, pc, #4	; (adr r2, 29b4 <TV_SYNC_handler+0x30>)
    29ae:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    29b2:	bf00      	nop
    29b4:	000029d1 	.word	0x000029d1
    29b8:	00002a29 	.word	0x00002a29
    29bc:	00002a7b 	.word	0x00002a7b
    29c0:	00002ad3 	.word	0x00002ad3
    29c4:	00002b11 	.word	0x00002b11
    29c8:	00002b33 	.word	0x00002b33
    29cc:	00002c13 	.word	0x00002c13
    case PRE_SYNC:
        if (!slice){
    29d0:	4b72      	ldr	r3, [pc, #456]	; (2b9c <TV_SYNC_handler+0x218>)
    29d2:	881b      	ldrh	r3, [r3, #0]
    29d4:	b29b      	uxth	r3, r3
    29d6:	2b00      	cmp	r3, #0
    29d8:	d10e      	bne.n	29f8 <TV_SYNC_handler+0x74>
            // set pre-sync pulse
            TMR1->ARR=SYNC_LINE;
    29da:	4b71      	ldr	r3, [pc, #452]	; (2ba0 <TV_SYNC_handler+0x21c>)
    29dc:	f640 02e2 	movw	r2, #2274	; 0x8e2
    29e0:	62da      	str	r2, [r3, #44]	; 0x2c
            TMR1->CCR1=SERRATION;
    29e2:	4b6f      	ldr	r3, [pc, #444]	; (2ba0 <TV_SYNC_handler+0x21c>)
    29e4:	22a4      	movs	r2, #164	; 0xa4
    29e6:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    29e8:	4b6c      	ldr	r3, [pc, #432]	; (2b9c <TV_SYNC_handler+0x218>)
    29ea:	881b      	ldrh	r3, [r3, #0]
    29ec:	b29b      	uxth	r3, r3
    29ee:	3301      	adds	r3, #1
    29f0:	b29a      	uxth	r2, r3
    29f2:	4b6a      	ldr	r3, [pc, #424]	; (2b9c <TV_SYNC_handler+0x218>)
    29f4:	801a      	strh	r2, [r3, #0]
        }else{
            next_task(6);
        }
        break;
    29f6:	e138      	b.n	2c6a <TV_SYNC_handler+0x2e6>
            next_task(6);
    29f8:	4b68      	ldr	r3, [pc, #416]	; (2b9c <TV_SYNC_handler+0x218>)
    29fa:	881b      	ldrh	r3, [r3, #0]
    29fc:	b29b      	uxth	r3, r3
    29fe:	3301      	adds	r3, #1
    2a00:	b29a      	uxth	r2, r3
    2a02:	4b66      	ldr	r3, [pc, #408]	; (2b9c <TV_SYNC_handler+0x218>)
    2a04:	801a      	strh	r2, [r3, #0]
    2a06:	4b65      	ldr	r3, [pc, #404]	; (2b9c <TV_SYNC_handler+0x218>)
    2a08:	881b      	ldrh	r3, [r3, #0]
    2a0a:	b29b      	uxth	r3, r3
    2a0c:	2b06      	cmp	r3, #6
    2a0e:	f040 812c 	bne.w	2c6a <TV_SYNC_handler+0x2e6>
    2a12:	4b62      	ldr	r3, [pc, #392]	; (2b9c <TV_SYNC_handler+0x218>)
    2a14:	2200      	movs	r2, #0
    2a16:	801a      	strh	r2, [r3, #0]
    2a18:	4b5f      	ldr	r3, [pc, #380]	; (2b98 <TV_SYNC_handler+0x214>)
    2a1a:	881b      	ldrh	r3, [r3, #0]
    2a1c:	b29b      	uxth	r3, r3
    2a1e:	3301      	adds	r3, #1
    2a20:	b29a      	uxth	r2, r3
    2a22:	4b5d      	ldr	r3, [pc, #372]	; (2b98 <TV_SYNC_handler+0x214>)
    2a24:	801a      	strh	r2, [r3, #0]
        break;
    2a26:	e120      	b.n	2c6a <TV_SYNC_handler+0x2e6>
    case VSYNC:
        if (!slice){
    2a28:	4b5c      	ldr	r3, [pc, #368]	; (2b9c <TV_SYNC_handler+0x218>)
    2a2a:	881b      	ldrh	r3, [r3, #0]
    2a2c:	b29b      	uxth	r3, r3
    2a2e:	2b00      	cmp	r3, #0
    2a30:	d10b      	bne.n	2a4a <TV_SYNC_handler+0xc6>
            // set vsync pulse
            TMR1->CCR1=SYNC_PULSE;
    2a32:	4b5b      	ldr	r3, [pc, #364]	; (2ba0 <TV_SYNC_handler+0x21c>)
    2a34:	f240 7294 	movw	r2, #1940	; 0x794
    2a38:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2a3a:	4b58      	ldr	r3, [pc, #352]	; (2b9c <TV_SYNC_handler+0x218>)
    2a3c:	881b      	ldrh	r3, [r3, #0]
    2a3e:	b29b      	uxth	r3, r3
    2a40:	3301      	adds	r3, #1
    2a42:	b29a      	uxth	r2, r3
    2a44:	4b55      	ldr	r3, [pc, #340]	; (2b9c <TV_SYNC_handler+0x218>)
    2a46:	801a      	strh	r2, [r3, #0]
        }else{
            next_task(6);
        }
        break;
    2a48:	e111      	b.n	2c6e <TV_SYNC_handler+0x2ea>
            next_task(6);
    2a4a:	4b54      	ldr	r3, [pc, #336]	; (2b9c <TV_SYNC_handler+0x218>)
    2a4c:	881b      	ldrh	r3, [r3, #0]
    2a4e:	b29b      	uxth	r3, r3
    2a50:	3301      	adds	r3, #1
    2a52:	b29a      	uxth	r2, r3
    2a54:	4b51      	ldr	r3, [pc, #324]	; (2b9c <TV_SYNC_handler+0x218>)
    2a56:	801a      	strh	r2, [r3, #0]
    2a58:	4b50      	ldr	r3, [pc, #320]	; (2b9c <TV_SYNC_handler+0x218>)
    2a5a:	881b      	ldrh	r3, [r3, #0]
    2a5c:	b29b      	uxth	r3, r3
    2a5e:	2b06      	cmp	r3, #6
    2a60:	f040 8105 	bne.w	2c6e <TV_SYNC_handler+0x2ea>
    2a64:	4b4d      	ldr	r3, [pc, #308]	; (2b9c <TV_SYNC_handler+0x218>)
    2a66:	2200      	movs	r2, #0
    2a68:	801a      	strh	r2, [r3, #0]
    2a6a:	4b4b      	ldr	r3, [pc, #300]	; (2b98 <TV_SYNC_handler+0x214>)
    2a6c:	881b      	ldrh	r3, [r3, #0]
    2a6e:	b29b      	uxth	r3, r3
    2a70:	3301      	adds	r3, #1
    2a72:	b29a      	uxth	r2, r3
    2a74:	4b48      	ldr	r3, [pc, #288]	; (2b98 <TV_SYNC_handler+0x214>)
    2a76:	801a      	strh	r2, [r3, #0]
        break;
    2a78:	e0f9      	b.n	2c6e <TV_SYNC_handler+0x2ea>
    case POST_SYNC:
        if (!slice){
    2a7a:	4b48      	ldr	r3, [pc, #288]	; (2b9c <TV_SYNC_handler+0x218>)
    2a7c:	881b      	ldrh	r3, [r3, #0]
    2a7e:	b29b      	uxth	r3, r3
    2a80:	2b00      	cmp	r3, #0
    2a82:	d10a      	bne.n	2a9a <TV_SYNC_handler+0x116>
            // set post-sync pulse
            TMR1->CCR1=SERRATION;    
    2a84:	4b46      	ldr	r3, [pc, #280]	; (2ba0 <TV_SYNC_handler+0x21c>)
    2a86:	22a4      	movs	r2, #164	; 0xa4
    2a88:	635a      	str	r2, [r3, #52]	; 0x34
            slice++;
    2a8a:	4b44      	ldr	r3, [pc, #272]	; (2b9c <TV_SYNC_handler+0x218>)
    2a8c:	881b      	ldrh	r3, [r3, #0]
    2a8e:	b29b      	uxth	r3, r3
    2a90:	3301      	adds	r3, #1
    2a92:	b29a      	uxth	r2, r3
    2a94:	4b41      	ldr	r3, [pc, #260]	; (2b9c <TV_SYNC_handler+0x218>)
    2a96:	801a      	strh	r2, [r3, #0]
            break;
    2a98:	e0f0      	b.n	2c7c <TV_SYNC_handler+0x2f8>
        }else if (slice==6){
    2a9a:	4b40      	ldr	r3, [pc, #256]	; (2b9c <TV_SYNC_handler+0x218>)
    2a9c:	881b      	ldrh	r3, [r3, #0]
    2a9e:	b29b      	uxth	r3, r3
    2aa0:	2b06      	cmp	r3, #6
    2aa2:	d10e      	bne.n	2ac2 <TV_SYNC_handler+0x13e>
            task++;
    2aa4:	4b3c      	ldr	r3, [pc, #240]	; (2b98 <TV_SYNC_handler+0x214>)
    2aa6:	881b      	ldrh	r3, [r3, #0]
    2aa8:	b29b      	uxth	r3, r3
    2aaa:	3301      	adds	r3, #1
    2aac:	b29a      	uxth	r2, r3
    2aae:	4b3a      	ldr	r3, [pc, #232]	; (2b98 <TV_SYNC_handler+0x214>)
    2ab0:	801a      	strh	r2, [r3, #0]
            if (!(flags&F_EVEN_MASK)){
    2ab2:	4b3c      	ldr	r3, [pc, #240]	; (2ba4 <TV_SYNC_handler+0x220>)
    2ab4:	881b      	ldrh	r3, [r3, #0]
    2ab6:	b29b      	uxth	r3, r3
    2ab8:	f003 0301 	and.w	r3, r3, #1
    2abc:	2b00      	cmp	r3, #0
    2abe:	d108      	bne.n	2ad2 <TV_SYNC_handler+0x14e>
                break;
    2ac0:	e0dc      	b.n	2c7c <TV_SYNC_handler+0x2f8>
            }
        }else{
            slice++;
    2ac2:	4b36      	ldr	r3, [pc, #216]	; (2b9c <TV_SYNC_handler+0x218>)
    2ac4:	881b      	ldrh	r3, [r3, #0]
    2ac6:	b29b      	uxth	r3, r3
    2ac8:	3301      	adds	r3, #1
    2aca:	b29a      	uxth	r2, r3
    2acc:	4b33      	ldr	r3, [pc, #204]	; (2b9c <TV_SYNC_handler+0x218>)
    2ace:	801a      	strh	r2, [r3, #0]
            break;
    2ad0:	e0d4      	b.n	2c7c <TV_SYNC_handler+0x2f8>
        }
    case VSYNC_END:
        // set normal horizontal line pulse
        TMR1->ARR=HPERIOD;
    2ad2:	4b33      	ldr	r3, [pc, #204]	; (2ba0 <TV_SYNC_handler+0x21c>)
    2ad4:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2ad8:	62da      	str	r2, [r3, #44]	; 0x2c
        TMR1->CCR1=HPULSE;
    2ada:	4b31      	ldr	r3, [pc, #196]	; (2ba0 <TV_SYNC_handler+0x21c>)
    2adc:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2ae0:	635a      	str	r2, [r3, #52]	; 0x34
        flags&=~F_VSYNC_MASK;
    2ae2:	4b30      	ldr	r3, [pc, #192]	; (2ba4 <TV_SYNC_handler+0x220>)
    2ae4:	881b      	ldrh	r3, [r3, #0]
    2ae6:	b29b      	uxth	r3, r3
    2ae8:	f023 0302 	bic.w	r3, r3, #2
    2aec:	b29a      	uxth	r2, r3
    2aee:	4b2d      	ldr	r3, [pc, #180]	; (2ba4 <TV_SYNC_handler+0x220>)
    2af0:	801a      	strh	r2, [r3, #0]
        scan_line>>=2;
    2af2:	4b28      	ldr	r3, [pc, #160]	; (2b94 <TV_SYNC_handler+0x210>)
    2af4:	881b      	ldrh	r3, [r3, #0]
    2af6:	b29b      	uxth	r3, r3
    2af8:	089b      	lsrs	r3, r3, #2
    2afa:	b29a      	uxth	r2, r3
    2afc:	4b25      	ldr	r3, [pc, #148]	; (2b94 <TV_SYNC_handler+0x210>)
    2afe:	801a      	strh	r2, [r3, #0]
        task++;
    2b00:	4b25      	ldr	r3, [pc, #148]	; (2b98 <TV_SYNC_handler+0x214>)
    2b02:	881b      	ldrh	r3, [r3, #0]
    2b04:	b29b      	uxth	r3, r3
    2b06:	3301      	adds	r3, #1
    2b08:	b29a      	uxth	r2, r3
    2b0a:	4b23      	ldr	r3, [pc, #140]	; (2b98 <TV_SYNC_handler+0x214>)
    2b0c:	801a      	strh	r2, [r3, #0]
        break;
    2b0e:	e0b5      	b.n	2c7c <TV_SYNC_handler+0x2f8>
    case WAIT_FIRST_VIDEO:
        if (scan_line==24){
    2b10:	4b20      	ldr	r3, [pc, #128]	; (2b94 <TV_SYNC_handler+0x210>)
    2b12:	881b      	ldrh	r3, [r3, #0]
    2b14:	b29b      	uxth	r3, r3
    2b16:	2b18      	cmp	r3, #24
    2b18:	f040 80ab 	bne.w	2c72 <TV_SYNC_handler+0x2ee>
            task++;
    2b1c:	4b1e      	ldr	r3, [pc, #120]	; (2b98 <TV_SYNC_handler+0x214>)
    2b1e:	881b      	ldrh	r3, [r3, #0]
    2b20:	b29b      	uxth	r3, r3
    2b22:	3301      	adds	r3, #1
    2b24:	b29a      	uxth	r2, r3
    2b26:	4b1c      	ldr	r3, [pc, #112]	; (2b98 <TV_SYNC_handler+0x214>)
    2b28:	801a      	strh	r2, [r3, #0]
            slice=0;
    2b2a:	4b1c      	ldr	r3, [pc, #112]	; (2b9c <TV_SYNC_handler+0x218>)
    2b2c:	2200      	movs	r2, #0
    2b2e:	801a      	strh	r2, [r3, #0]
        }
        break;
    2b30:	e09f      	b.n	2c72 <TV_SYNC_handler+0x2ee>
    case VIDEO_OUT:
        {
            int i,r;
            uint8_t s,b,byte;
            while(TMR1->CNT<(uint16_t)(11e-6*(float)FCLK));
    2b32:	bf00      	nop
    2b34:	4b1a      	ldr	r3, [pc, #104]	; (2ba0 <TV_SYNC_handler+0x21c>)
    2b36:	6a5b      	ldr	r3, [r3, #36]	; 0x24
    2b38:	f240 3212 	movw	r2, #786	; 0x312
    2b3c:	4293      	cmp	r3, r2
    2b3e:	d9f9      	bls.n	2b34 <TV_SYNC_handler+0x1b0>
            PORTA->ODR|=BIT9;
    2b40:	4a19      	ldr	r2, [pc, #100]	; (2ba8 <TV_SYNC_handler+0x224>)
    2b42:	4b19      	ldr	r3, [pc, #100]	; (2ba8 <TV_SYNC_handler+0x224>)
    2b44:	68db      	ldr	r3, [r3, #12]
    2b46:	f443 7300 	orr.w	r3, r3, #512	; 0x200
    2b4a:	60d3      	str	r3, [r2, #12]
            r=slice/3*32;
    2b4c:	4b13      	ldr	r3, [pc, #76]	; (2b9c <TV_SYNC_handler+0x218>)
    2b4e:	881b      	ldrh	r3, [r3, #0]
    2b50:	b29b      	uxth	r3, r3
    2b52:	4a16      	ldr	r2, [pc, #88]	; (2bac <TV_SYNC_handler+0x228>)
    2b54:	fba2 2303 	umull	r2, r3, r2, r3
    2b58:	085b      	lsrs	r3, r3, #1
    2b5a:	b29b      	uxth	r3, r3
    2b5c:	015b      	lsls	r3, r3, #5
    2b5e:	607b      	str	r3, [r7, #4]
            for (i=0;i<7;i++){
    2b60:	2300      	movs	r3, #0
    2b62:	60fb      	str	r3, [r7, #12]
    2b64:	e035      	b.n	2bd2 <TV_SYNC_handler+0x24e>
                byte=video_buffer[r+i];
    2b66:	687a      	ldr	r2, [r7, #4]
    2b68:	68fb      	ldr	r3, [r7, #12]
    2b6a:	4413      	add	r3, r2
    2b6c:	4a10      	ldr	r2, [pc, #64]	; (2bb0 <TV_SYNC_handler+0x22c>)
    2b6e:	5cd3      	ldrb	r3, [r2, r3]
    2b70:	70fb      	strb	r3, [r7, #3]
                for(s=128;s;s>>=1){
    2b72:	2380      	movs	r3, #128	; 0x80
    2b74:	72fb      	strb	r3, [r7, #11]
    2b76:	e026      	b.n	2bc6 <TV_SYNC_handler+0x242>
                    b=byte&s;
    2b78:	78fa      	ldrb	r2, [r7, #3]
    2b7a:	7afb      	ldrb	r3, [r7, #11]
    2b7c:	4013      	ands	r3, r2
    2b7e:	70bb      	strb	r3, [r7, #2]
                    if (b)PORTA->ODR|=BIT9;else PORTA->ODR&=~BIT9;
    2b80:	78bb      	ldrb	r3, [r7, #2]
    2b82:	2b00      	cmp	r3, #0
    2b84:	d016      	beq.n	2bb4 <TV_SYNC_handler+0x230>
    2b86:	4a08      	ldr	r2, [pc, #32]	; (2ba8 <TV_SYNC_handler+0x224>)
    2b88:	4b07      	ldr	r3, [pc, #28]	; (2ba8 <TV_SYNC_handler+0x224>)
    2b8a:	68db      	ldr	r3, [r3, #12]
    2b8c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
    2b90:	60d3      	str	r3, [r2, #12]
    2b92:	e015      	b.n	2bc0 <TV_SYNC_handler+0x23c>
    2b94:	2000047e 	.word	0x2000047e
    2b98:	20000478 	.word	0x20000478
    2b9c:	2000047c 	.word	0x2000047c
    2ba0:	40012c00 	.word	0x40012c00
    2ba4:	2000047a 	.word	0x2000047a
    2ba8:	40010800 	.word	0x40010800
    2bac:	aaaaaaab 	.word	0xaaaaaaab
    2bb0:	200004d4 	.word	0x200004d4
    2bb4:	4a36      	ldr	r2, [pc, #216]	; (2c90 <TV_SYNC_handler+0x30c>)
    2bb6:	4b36      	ldr	r3, [pc, #216]	; (2c90 <TV_SYNC_handler+0x30c>)
    2bb8:	68db      	ldr	r3, [r3, #12]
    2bba:	f423 7300 	bic.w	r3, r3, #512	; 0x200
    2bbe:	60d3      	str	r3, [r2, #12]
                for(s=128;s;s>>=1){
    2bc0:	7afb      	ldrb	r3, [r7, #11]
    2bc2:	085b      	lsrs	r3, r3, #1
    2bc4:	72fb      	strb	r3, [r7, #11]
    2bc6:	7afb      	ldrb	r3, [r7, #11]
    2bc8:	2b00      	cmp	r3, #0
    2bca:	d1d5      	bne.n	2b78 <TV_SYNC_handler+0x1f4>
            for (i=0;i<7;i++){
    2bcc:	68fb      	ldr	r3, [r7, #12]
    2bce:	3301      	adds	r3, #1
    2bd0:	60fb      	str	r3, [r7, #12]
    2bd2:	68fb      	ldr	r3, [r7, #12]
    2bd4:	2b06      	cmp	r3, #6
    2bd6:	ddc6      	ble.n	2b66 <TV_SYNC_handler+0x1e2>
                }
            }
        }
        //while(TMR1->CNT<(uint16_t)(40e-6*(float)FCLK));
        PORTA->ODR&=~BIT9;
    2bd8:	4a2d      	ldr	r2, [pc, #180]	; (2c90 <TV_SYNC_handler+0x30c>)
    2bda:	4b2d      	ldr	r3, [pc, #180]	; (2c90 <TV_SYNC_handler+0x30c>)
    2bdc:	68db      	ldr	r3, [r3, #12]
    2bde:	f423 7300 	bic.w	r3, r3, #512	; 0x200
    2be2:	60d3      	str	r3, [r2, #12]
        next_task(222);
    2be4:	4b2b      	ldr	r3, [pc, #172]	; (2c94 <TV_SYNC_handler+0x310>)
    2be6:	881b      	ldrh	r3, [r3, #0]
    2be8:	b29b      	uxth	r3, r3
    2bea:	3301      	adds	r3, #1
    2bec:	b29a      	uxth	r2, r3
    2bee:	4b29      	ldr	r3, [pc, #164]	; (2c94 <TV_SYNC_handler+0x310>)
    2bf0:	801a      	strh	r2, [r3, #0]
    2bf2:	4b28      	ldr	r3, [pc, #160]	; (2c94 <TV_SYNC_handler+0x310>)
    2bf4:	881b      	ldrh	r3, [r3, #0]
    2bf6:	b29b      	uxth	r3, r3
    2bf8:	2bde      	cmp	r3, #222	; 0xde
    2bfa:	d13c      	bne.n	2c76 <TV_SYNC_handler+0x2f2>
    2bfc:	4b25      	ldr	r3, [pc, #148]	; (2c94 <TV_SYNC_handler+0x310>)
    2bfe:	2200      	movs	r2, #0
    2c00:	801a      	strh	r2, [r3, #0]
    2c02:	4b25      	ldr	r3, [pc, #148]	; (2c98 <TV_SYNC_handler+0x314>)
    2c04:	881b      	ldrh	r3, [r3, #0]
    2c06:	b29b      	uxth	r3, r3
    2c08:	3301      	adds	r3, #1
    2c0a:	b29a      	uxth	r2, r3
    2c0c:	4b22      	ldr	r3, [pc, #136]	; (2c98 <TV_SYNC_handler+0x314>)
    2c0e:	801a      	strh	r2, [r3, #0]
        break;
    2c10:	e031      	b.n	2c76 <TV_SYNC_handler+0x2f2>
    case WAIT_FIELD_END:
        if (scan_line==263){
    2c12:	4b22      	ldr	r3, [pc, #136]	; (2c9c <TV_SYNC_handler+0x318>)
    2c14:	881b      	ldrh	r3, [r3, #0]
    2c16:	b29b      	uxth	r3, r3
    2c18:	f240 1207 	movw	r2, #263	; 0x107
    2c1c:	4293      	cmp	r3, r2
    2c1e:	d12c      	bne.n	2c7a <TV_SYNC_handler+0x2f6>
            if (flags&F_EVEN_MASK){ // half length
    2c20:	4b1f      	ldr	r3, [pc, #124]	; (2ca0 <TV_SYNC_handler+0x31c>)
    2c22:	881b      	ldrh	r3, [r3, #0]
    2c24:	b29b      	uxth	r3, r3
    2c26:	f003 0301 	and.w	r3, r3, #1
    2c2a:	2b00      	cmp	r3, #0
    2c2c:	d003      	beq.n	2c36 <TV_SYNC_handler+0x2b2>
                TMR1->ARR=SYNC_LINE;
    2c2e:	4b1d      	ldr	r3, [pc, #116]	; (2ca4 <TV_SYNC_handler+0x320>)
    2c30:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2c34:	62da      	str	r2, [r3, #44]	; 0x2c
            }
            flags^=F_EVEN_MASK;
    2c36:	4b1a      	ldr	r3, [pc, #104]	; (2ca0 <TV_SYNC_handler+0x31c>)
    2c38:	881b      	ldrh	r3, [r3, #0]
    2c3a:	b29b      	uxth	r3, r3
    2c3c:	f083 0301 	eor.w	r3, r3, #1
    2c40:	b29a      	uxth	r2, r3
    2c42:	4b17      	ldr	r3, [pc, #92]	; (2ca0 <TV_SYNC_handler+0x31c>)
    2c44:	801a      	strh	r2, [r3, #0]
            flags|=F_VSYNC_MASK;
    2c46:	4b16      	ldr	r3, [pc, #88]	; (2ca0 <TV_SYNC_handler+0x31c>)
    2c48:	881b      	ldrh	r3, [r3, #0]
    2c4a:	b29b      	uxth	r3, r3
    2c4c:	f043 0302 	orr.w	r3, r3, #2
    2c50:	b29a      	uxth	r2, r3
    2c52:	4b13      	ldr	r3, [pc, #76]	; (2ca0 <TV_SYNC_handler+0x31c>)
    2c54:	801a      	strh	r2, [r3, #0]
            scan_line=0;
    2c56:	4b11      	ldr	r3, [pc, #68]	; (2c9c <TV_SYNC_handler+0x318>)
    2c58:	2200      	movs	r2, #0
    2c5a:	801a      	strh	r2, [r3, #0]
            slice=0;
    2c5c:	4b0d      	ldr	r3, [pc, #52]	; (2c94 <TV_SYNC_handler+0x310>)
    2c5e:	2200      	movs	r2, #0
    2c60:	801a      	strh	r2, [r3, #0]
            task=0;
    2c62:	4b0d      	ldr	r3, [pc, #52]	; (2c98 <TV_SYNC_handler+0x314>)
    2c64:	2200      	movs	r2, #0
    2c66:	801a      	strh	r2, [r3, #0]
        }
        break;
    2c68:	e007      	b.n	2c7a <TV_SYNC_handler+0x2f6>
        break;
    2c6a:	bf00      	nop
    2c6c:	e006      	b.n	2c7c <TV_SYNC_handler+0x2f8>
        break;
    2c6e:	bf00      	nop
    2c70:	e004      	b.n	2c7c <TV_SYNC_handler+0x2f8>
        break;
    2c72:	bf00      	nop
    2c74:	e002      	b.n	2c7c <TV_SYNC_handler+0x2f8>
        break;
    2c76:	bf00      	nop
    2c78:	e000      	b.n	2c7c <TV_SYNC_handler+0x2f8>
        break;
    2c7a:	bf00      	nop
    }//switch slice
    TMR1->SR =0;
    2c7c:	4b09      	ldr	r3, [pc, #36]	; (2ca4 <TV_SYNC_handler+0x320>)
    2c7e:	2200      	movs	r2, #0
    2c80:	611a      	str	r2, [r3, #16]
}
    2c82:	bf00      	nop
    2c84:	3710      	adds	r7, #16
    2c86:	46bd      	mov	sp, r7
    2c88:	bc81      	pop	{r0, r7}
    2c8a:	4685      	mov	sp, r0
    2c8c:	4770      	bx	lr
    2c8e:	bf00      	nop
    2c90:	40010800 	.word	0x40010800
    2c94:	2000047c 	.word	0x2000047c
    2c98:	20000478 	.word	0x20000478
    2c9c:	2000047e 	.word	0x2000047e
    2ca0:	2000047a 	.word	0x2000047a
    2ca4:	40012c00 	.word	0x40012c00

00002ca8 <usart_config_port>:

#define _usart_select(n)  USART##n_
#define _usart_sfr_sel(n,s) USART##n_##s 

// configuration dse broches
void usart_config_port(usart_t* channel, gpio_t *port, unsigned flow_ctrl){
    2ca8:	b480      	push	{r7}
    2caa:	b085      	sub	sp, #20
    2cac:	af00      	add	r7, sp, #0
    2cae:	60f8      	str	r0, [r7, #12]
    2cb0:	60b9      	str	r1, [r7, #8]
    2cb2:	607a      	str	r2, [r7, #4]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    2cb4:	68fb      	ldr	r3, [r7, #12]
    2cb6:	4a45      	ldr	r2, [pc, #276]	; (2dcc <usart_config_port+0x124>)
    2cb8:	4293      	cmp	r3, r2
    2cba:	d058      	beq.n	2d6e <usart_config_port+0xc6>
    2cbc:	4a44      	ldr	r2, [pc, #272]	; (2dd0 <usart_config_port+0x128>)
    2cbe:	4293      	cmp	r3, r2
    2cc0:	d003      	beq.n	2cca <usart_config_port+0x22>
    2cc2:	4a44      	ldr	r2, [pc, #272]	; (2dd4 <usart_config_port+0x12c>)
    2cc4:	4293      	cmp	r3, r2
    2cc6:	d029      	beq.n	2d1c <usart_config_port+0x74>
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
		}
		break;
	}
}
    2cc8:	e07a      	b.n	2dc0 <usart_config_port+0x118>
		RCC->APB2ENR|=RCC_APB2ENR_USART1EN|RCC_APB2ENR_IOPAEN;
    2cca:	4a43      	ldr	r2, [pc, #268]	; (2dd8 <usart_config_port+0x130>)
    2ccc:	4b42      	ldr	r3, [pc, #264]	; (2dd8 <usart_config_port+0x130>)
    2cce:	699b      	ldr	r3, [r3, #24]
    2cd0:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2cd4:	f043 0304 	orr.w	r3, r3, #4
    2cd8:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    2cda:	687b      	ldr	r3, [r7, #4]
    2cdc:	2b01      	cmp	r3, #1
    2cde:	d110      	bne.n	2d02 <usart_config_port+0x5a>
			port->CR[1]&=~((15<<((USART1_TX_PIN-8)*4))|(15<<((USART1_RTS_PIN-8)*4)));
    2ce0:	68bb      	ldr	r3, [r7, #8]
    2ce2:	685b      	ldr	r3, [r3, #4]
    2ce4:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    2ce8:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
    2cec:	68ba      	ldr	r2, [r7, #8]
    2cee:	6053      	str	r3, [r2, #4]
			port->CR[1]|=(0xA<<((USART1_TX_PIN-8)*4))|(0xA<<((USART1_RTS_PIN-8)*4));
    2cf0:	68bb      	ldr	r3, [r7, #8]
    2cf2:	685b      	ldr	r3, [r3, #4]
    2cf4:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    2cf8:	f043 03a0 	orr.w	r3, r3, #160	; 0xa0
    2cfc:	68ba      	ldr	r2, [r7, #8]
    2cfe:	6053      	str	r3, [r2, #4]
		break;
    2d00:	e05e      	b.n	2dc0 <usart_config_port+0x118>
			port->CR[1]&=~(15<<((USART1_TX_PIN-8)*4));
    2d02:	68bb      	ldr	r3, [r7, #8]
    2d04:	685b      	ldr	r3, [r3, #4]
    2d06:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
    2d0a:	68bb      	ldr	r3, [r7, #8]
    2d0c:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART1_TX_PIN-8)*4);
    2d0e:	68bb      	ldr	r3, [r7, #8]
    2d10:	685b      	ldr	r3, [r3, #4]
    2d12:	f043 02a0 	orr.w	r2, r3, #160	; 0xa0
    2d16:	68bb      	ldr	r3, [r7, #8]
    2d18:	605a      	str	r2, [r3, #4]
		break;
    2d1a:	e051      	b.n	2dc0 <usart_config_port+0x118>
		RCC->APB1ENR|=RCC_APB1ENR_USART2EN;
    2d1c:	4a2e      	ldr	r2, [pc, #184]	; (2dd8 <usart_config_port+0x130>)
    2d1e:	4b2e      	ldr	r3, [pc, #184]	; (2dd8 <usart_config_port+0x130>)
    2d20:	69db      	ldr	r3, [r3, #28]
    2d22:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
    2d26:	61d3      	str	r3, [r2, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPAEN;
    2d28:	4a2b      	ldr	r2, [pc, #172]	; (2dd8 <usart_config_port+0x130>)
    2d2a:	4b2b      	ldr	r3, [pc, #172]	; (2dd8 <usart_config_port+0x130>)
    2d2c:	699b      	ldr	r3, [r3, #24]
    2d2e:	f043 0304 	orr.w	r3, r3, #4
    2d32:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    2d34:	687b      	ldr	r3, [r7, #4]
    2d36:	2b01      	cmp	r3, #1
    2d38:	d10c      	bne.n	2d54 <usart_config_port+0xac>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4))|(15<<(USART2_RTS_PIN*4)));
    2d3a:	68bb      	ldr	r3, [r7, #8]
    2d3c:	681b      	ldr	r3, [r3, #0]
    2d3e:	f423 627f 	bic.w	r2, r3, #4080	; 0xff0
    2d42:	68bb      	ldr	r3, [r7, #8]
    2d44:	601a      	str	r2, [r3, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4))|(0xA<<(USART2_RTS_PIN*4));
    2d46:	68bb      	ldr	r3, [r7, #8]
    2d48:	681b      	ldr	r3, [r3, #0]
    2d4a:	f443 622a 	orr.w	r2, r3, #2720	; 0xaa0
    2d4e:	68bb      	ldr	r3, [r7, #8]
    2d50:	601a      	str	r2, [r3, #0]
		break;
    2d52:	e035      	b.n	2dc0 <usart_config_port+0x118>
			port->CR[0]&=~((15<<(USART2_TX_PIN*4)));
    2d54:	68bb      	ldr	r3, [r7, #8]
    2d56:	681b      	ldr	r3, [r3, #0]
    2d58:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2d5c:	68bb      	ldr	r3, [r7, #8]
    2d5e:	601a      	str	r2, [r3, #0]
			port->CR[0]|=(0xA<<(USART2_TX_PIN*4));
    2d60:	68bb      	ldr	r3, [r7, #8]
    2d62:	681b      	ldr	r3, [r3, #0]
    2d64:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2d68:	68bb      	ldr	r3, [r7, #8]
    2d6a:	601a      	str	r2, [r3, #0]
		break;
    2d6c:	e028      	b.n	2dc0 <usart_config_port+0x118>
		RCC->APB1ENR|=RCC_APB1ENR_USART3EN;
    2d6e:	4a1a      	ldr	r2, [pc, #104]	; (2dd8 <usart_config_port+0x130>)
    2d70:	4b19      	ldr	r3, [pc, #100]	; (2dd8 <usart_config_port+0x130>)
    2d72:	69db      	ldr	r3, [r3, #28]
    2d74:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
    2d78:	61d3      	str	r3, [r2, #28]
		RCC->APB2ENR|=RCC_APB2ENR_IOPBEN;
    2d7a:	4a17      	ldr	r2, [pc, #92]	; (2dd8 <usart_config_port+0x130>)
    2d7c:	4b16      	ldr	r3, [pc, #88]	; (2dd8 <usart_config_port+0x130>)
    2d7e:	699b      	ldr	r3, [r3, #24]
    2d80:	f043 0308 	orr.w	r3, r3, #8
    2d84:	6193      	str	r3, [r2, #24]
		if (flow_ctrl==FLOW_HARD){
    2d86:	687b      	ldr	r3, [r7, #4]
    2d88:	2b01      	cmp	r3, #1
    2d8a:	d10c      	bne.n	2da6 <usart_config_port+0xfe>
			port->CR[1]&=~((15<<((USART3_TX_PIN-8)*4))|(15<<((USART3_RTS_PIN-8)*4)));
    2d8c:	68bb      	ldr	r3, [r7, #8]
    2d8e:	685b      	ldr	r3, [r3, #4]
    2d90:	f023 220f 	bic.w	r2, r3, #251662080	; 0xf000f00
    2d94:	68bb      	ldr	r3, [r7, #8]
    2d96:	605a      	str	r2, [r3, #4]
			port->CR[1]|=(0xA<<((USART3_TX_PIN-8)*4))|(0xA<<((USART3_RTS_PIN-8)*4));
    2d98:	68bb      	ldr	r3, [r7, #8]
    2d9a:	685b      	ldr	r3, [r3, #4]
    2d9c:	f043 220a 	orr.w	r2, r3, #167774720	; 0xa000a00
    2da0:	68bb      	ldr	r3, [r7, #8]
    2da2:	605a      	str	r2, [r3, #4]
		break;
    2da4:	e00b      	b.n	2dbe <usart_config_port+0x116>
			port->CR[1]&=~(15<<((USART3_TX_PIN-8)*4));
    2da6:	68bb      	ldr	r3, [r7, #8]
    2da8:	685b      	ldr	r3, [r3, #4]
    2daa:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2dae:	68bb      	ldr	r3, [r7, #8]
    2db0:	605a      	str	r2, [r3, #4]
			port->CR[1]|=0xA<<((USART3_TX_PIN-8)*4);
    2db2:	68bb      	ldr	r3, [r7, #8]
    2db4:	685b      	ldr	r3, [r3, #4]
    2db6:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2dba:	68bb      	ldr	r3, [r7, #8]
    2dbc:	605a      	str	r2, [r3, #4]
		break;
    2dbe:	bf00      	nop
}
    2dc0:	bf00      	nop
    2dc2:	3714      	adds	r7, #20
    2dc4:	46bd      	mov	sp, r7
    2dc6:	bc80      	pop	{r7}
    2dc8:	4770      	bx	lr
    2dca:	bf00      	nop
    2dcc:	40004800 	.word	0x40004800
    2dd0:	40013800 	.word	0x40013800
    2dd4:	40004400 	.word	0x40004400
    2dd8:	40021000 	.word	0x40021000

00002ddc <usart_set_baud>:

// vitesse de transmission
void usart_set_baud(usart_t* channel, unsigned baud){
    2ddc:	b480      	push	{r7}
    2dde:	b085      	sub	sp, #20
    2de0:	af00      	add	r7, sp, #0
    2de2:	6078      	str	r0, [r7, #4]
    2de4:	6039      	str	r1, [r7, #0]
	uint32_t rate;
    if ((uint32_t)channel==(uint32_t)USART1){
    2de6:	687b      	ldr	r3, [r7, #4]
    2de8:	4a15      	ldr	r2, [pc, #84]	; (2e40 <usart_set_baud+0x64>)
    2dea:	4293      	cmp	r3, r2
    2dec:	d110      	bne.n	2e10 <usart_set_baud+0x34>
		rate=(FAPB2/baud/16)<<4;
    2dee:	4a15      	ldr	r2, [pc, #84]	; (2e44 <usart_set_baud+0x68>)
    2df0:	683b      	ldr	r3, [r7, #0]
    2df2:	fbb2 f3f3 	udiv	r3, r2, r3
    2df6:	091b      	lsrs	r3, r3, #4
    2df8:	011b      	lsls	r3, r3, #4
    2dfa:	60fb      	str	r3, [r7, #12]
		rate|=(FAPB2/baud)%16;
    2dfc:	4a11      	ldr	r2, [pc, #68]	; (2e44 <usart_set_baud+0x68>)
    2dfe:	683b      	ldr	r3, [r7, #0]
    2e00:	fbb2 f3f3 	udiv	r3, r2, r3
    2e04:	f003 030f 	and.w	r3, r3, #15
    2e08:	68fa      	ldr	r2, [r7, #12]
    2e0a:	4313      	orrs	r3, r2
    2e0c:	60fb      	str	r3, [r7, #12]
    2e0e:	e00f      	b.n	2e30 <usart_set_baud+0x54>
	}else{
		rate=(FAPB1/baud/16)<<4;
    2e10:	4a0d      	ldr	r2, [pc, #52]	; (2e48 <usart_set_baud+0x6c>)
    2e12:	683b      	ldr	r3, [r7, #0]
    2e14:	fbb2 f3f3 	udiv	r3, r2, r3
    2e18:	091b      	lsrs	r3, r3, #4
    2e1a:	011b      	lsls	r3, r3, #4
    2e1c:	60fb      	str	r3, [r7, #12]
		rate|=(FAPB1/baud)%16;
    2e1e:	4a0a      	ldr	r2, [pc, #40]	; (2e48 <usart_set_baud+0x6c>)
    2e20:	683b      	ldr	r3, [r7, #0]
    2e22:	fbb2 f3f3 	udiv	r3, r2, r3
    2e26:	f003 030f 	and.w	r3, r3, #15
    2e2a:	68fa      	ldr	r2, [r7, #12]
    2e2c:	4313      	orrs	r3, r2
    2e2e:	60fb      	str	r3, [r7, #12]
	}
	channel->BRR=rate;
    2e30:	687b      	ldr	r3, [r7, #4]
    2e32:	68fa      	ldr	r2, [r7, #12]
    2e34:	609a      	str	r2, [r3, #8]
}
    2e36:	bf00      	nop
    2e38:	3714      	adds	r7, #20
    2e3a:	46bd      	mov	sp, r7
    2e3c:	bc80      	pop	{r7}
    2e3e:	4770      	bx	lr
    2e40:	40013800 	.word	0x40013800
    2e44:	044463f4 	.word	0x044463f4
    2e48:	022231fa 	.word	0x022231fa

00002e4c <usart_comm_dir>:

// direction communication 
void usart_comm_dir(usart_t* channel, unsigned direction){
    2e4c:	b480      	push	{r7}
    2e4e:	b083      	sub	sp, #12
    2e50:	af00      	add	r7, sp, #0
    2e52:	6078      	str	r0, [r7, #4]
    2e54:	6039      	str	r1, [r7, #0]
	channel->CR1&=USART_CR1_DIR_MASK;
    2e56:	687b      	ldr	r3, [r7, #4]
    2e58:	68db      	ldr	r3, [r3, #12]
    2e5a:	f023 020c 	bic.w	r2, r3, #12
    2e5e:	687b      	ldr	r3, [r7, #4]
    2e60:	60da      	str	r2, [r3, #12]
	channel->CR1|=direction<<USART_CR1_DIR_POS;
    2e62:	687b      	ldr	r3, [r7, #4]
    2e64:	68da      	ldr	r2, [r3, #12]
    2e66:	683b      	ldr	r3, [r7, #0]
    2e68:	009b      	lsls	r3, r3, #2
    2e6a:	431a      	orrs	r2, r3
    2e6c:	687b      	ldr	r3, [r7, #4]
    2e6e:	60da      	str	r2, [r3, #12]
}
    2e70:	bf00      	nop
    2e72:	370c      	adds	r7, #12
    2e74:	46bd      	mov	sp, r7
    2e76:	bc80      	pop	{r7}
    2e78:	4770      	bx	lr

00002e7a <usart_open_channel>:


// configure l'USART pour communication selon protocole RS-232
void usart_open_channel(usart_t* channel, unsigned baud, unsigned parity, unsigned dir, unsigned flow_ctrl){
    2e7a:	b580      	push	{r7, lr}
    2e7c:	b084      	sub	sp, #16
    2e7e:	af00      	add	r7, sp, #0
    2e80:	60f8      	str	r0, [r7, #12]
    2e82:	60b9      	str	r1, [r7, #8]
    2e84:	607a      	str	r2, [r7, #4]
    2e86:	603b      	str	r3, [r7, #0]
	switch((uint32_t)channel){ // activation du périphérique USART et du PORT
    2e88:	68fb      	ldr	r3, [r7, #12]
    2e8a:	4a33      	ldr	r2, [pc, #204]	; (2f58 <usart_open_channel+0xde>)
    2e8c:	4293      	cmp	r3, r2
    2e8e:	d020      	beq.n	2ed2 <usart_open_channel+0x58>
    2e90:	4a32      	ldr	r2, [pc, #200]	; (2f5c <usart_open_channel+0xe2>)
    2e92:	4293      	cmp	r3, r2
    2e94:	d003      	beq.n	2e9e <usart_open_channel+0x24>
    2e96:	4a32      	ldr	r2, [pc, #200]	; (2f60 <usart_open_channel+0xe6>)
    2e98:	4293      	cmp	r3, r2
    2e9a:	d00d      	beq.n	2eb8 <usart_open_channel+0x3e>
    2e9c:	e026      	b.n	2eec <usart_open_channel+0x72>
	case (uint32_t)USART1:
		usart_config_port(channel,USART1_PORT,flow_ctrl);
    2e9e:	69ba      	ldr	r2, [r7, #24]
    2ea0:	4930      	ldr	r1, [pc, #192]	; (2f64 <usart_open_channel+0xea>)
    2ea2:	68f8      	ldr	r0, [r7, #12]
    2ea4:	f7ff ff00 	bl	2ca8 <usart_config_port>
		set_int_priority(IRQ_USART1,7);
    2ea8:	2107      	movs	r1, #7
    2eaa:	2025      	movs	r0, #37	; 0x25
    2eac:	f7fe fce2 	bl	1874 <set_int_priority>
		enable_interrupt(IRQ_USART1);
    2eb0:	2025      	movs	r0, #37	; 0x25
    2eb2:	f7fe fc25 	bl	1700 <enable_interrupt>
		break;
    2eb6:	e019      	b.n	2eec <usart_open_channel+0x72>
	case (uint32_t)USART2:
		usart_config_port(channel,USART2_PORT,flow_ctrl);
    2eb8:	69ba      	ldr	r2, [r7, #24]
    2eba:	492a      	ldr	r1, [pc, #168]	; (2f64 <usart_open_channel+0xea>)
    2ebc:	68f8      	ldr	r0, [r7, #12]
    2ebe:	f7ff fef3 	bl	2ca8 <usart_config_port>
		set_int_priority(IRQ_USART2,7);
    2ec2:	2107      	movs	r1, #7
    2ec4:	2026      	movs	r0, #38	; 0x26
    2ec6:	f7fe fcd5 	bl	1874 <set_int_priority>
		enable_interrupt(IRQ_USART2);
    2eca:	2026      	movs	r0, #38	; 0x26
    2ecc:	f7fe fc18 	bl	1700 <enable_interrupt>
		break;
    2ed0:	e00c      	b.n	2eec <usart_open_channel+0x72>
	case (uint32_t)USART3:
		usart_config_port(channel,USART3_PORT,flow_ctrl);
    2ed2:	69ba      	ldr	r2, [r7, #24]
    2ed4:	4924      	ldr	r1, [pc, #144]	; (2f68 <usart_open_channel+0xee>)
    2ed6:	68f8      	ldr	r0, [r7, #12]
    2ed8:	f7ff fee6 	bl	2ca8 <usart_config_port>
		set_int_priority(IRQ_USART3,7);
    2edc:	2107      	movs	r1, #7
    2ede:	2027      	movs	r0, #39	; 0x27
    2ee0:	f7fe fcc8 	bl	1874 <set_int_priority>
		enable_interrupt(IRQ_USART3);
    2ee4:	2027      	movs	r0, #39	; 0x27
    2ee6:	f7fe fc0b 	bl	1700 <enable_interrupt>
		break;
    2eea:	bf00      	nop
	}
	if (flow_ctrl==FLOW_HARD){
    2eec:	69bb      	ldr	r3, [r7, #24]
    2eee:	2b01      	cmp	r3, #1
    2ef0:	d103      	bne.n	2efa <usart_open_channel+0x80>
		channel->CR3=USART_CR3_CTSE|USART_CR3_RTSE;
    2ef2:	68fb      	ldr	r3, [r7, #12]
    2ef4:	f44f 7240 	mov.w	r2, #768	; 0x300
    2ef8:	615a      	str	r2, [r3, #20]
	}
	usart_comm_dir(channel,dir);
    2efa:	6839      	ldr	r1, [r7, #0]
    2efc:	68f8      	ldr	r0, [r7, #12]
    2efe:	f7ff ffa5 	bl	2e4c <usart_comm_dir>
	switch (parity){
    2f02:	687b      	ldr	r3, [r7, #4]
    2f04:	2b01      	cmp	r3, #1
    2f06:	d00b      	beq.n	2f20 <usart_open_channel+0xa6>
    2f08:	2b01      	cmp	r3, #1
    2f0a:	d302      	bcc.n	2f12 <usart_open_channel+0x98>
    2f0c:	2b02      	cmp	r3, #2
    2f0e:	d00e      	beq.n	2f2e <usart_open_channel+0xb4>
    2f10:	e014      	b.n	2f3c <usart_open_channel+0xc2>
	case PARITY_NONE:
		channel->CR1|=USART_CR1_RXNEIE;
    2f12:	68fb      	ldr	r3, [r7, #12]
    2f14:	68db      	ldr	r3, [r3, #12]
    2f16:	f043 0220 	orr.w	r2, r3, #32
    2f1a:	68fb      	ldr	r3, [r7, #12]
    2f1c:	60da      	str	r2, [r3, #12]
		break;
    2f1e:	e00d      	b.n	2f3c <usart_open_channel+0xc2>
	case PARITY_ODD:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_PS|USART_CR1_RXNEIE;
    2f20:	68fb      	ldr	r3, [r7, #12]
    2f22:	68db      	ldr	r3, [r3, #12]
    2f24:	f443 62e4 	orr.w	r2, r3, #1824	; 0x720
    2f28:	68fb      	ldr	r3, [r7, #12]
    2f2a:	60da      	str	r2, [r3, #12]
		break;
    2f2c:	e006      	b.n	2f3c <usart_open_channel+0xc2>
	case PARITY_EVEN:
		channel->CR1|=USART_CR1_PEIE|USART_CR1_PCE|USART_CR1_RXNEIE;
    2f2e:	68fb      	ldr	r3, [r7, #12]
    2f30:	68db      	ldr	r3, [r3, #12]
    2f32:	f443 62a4 	orr.w	r2, r3, #1312	; 0x520
    2f36:	68fb      	ldr	r3, [r7, #12]
    2f38:	60da      	str	r2, [r3, #12]
		break;
    2f3a:	bf00      	nop
    }
	usart_set_baud(channel,baud);
    2f3c:	68b9      	ldr	r1, [r7, #8]
    2f3e:	68f8      	ldr	r0, [r7, #12]
    2f40:	f7ff ff4c 	bl	2ddc <usart_set_baud>
    channel->CR1|=USART_CR1_UE;
    2f44:	68fb      	ldr	r3, [r7, #12]
    2f46:	68db      	ldr	r3, [r3, #12]
    2f48:	f443 5200 	orr.w	r2, r3, #8192	; 0x2000
    2f4c:	68fb      	ldr	r3, [r7, #12]
    2f4e:	60da      	str	r2, [r3, #12]
}
    2f50:	bf00      	nop
    2f52:	3710      	adds	r7, #16
    2f54:	46bd      	mov	sp, r7
    2f56:	bd80      	pop	{r7, pc}
    2f58:	40004800 	.word	0x40004800
    2f5c:	40013800 	.word	0x40013800
    2f60:	40004400 	.word	0x40004400
    2f64:	40010800 	.word	0x40010800
    2f68:	40010c00 	.word	0x40010c00

00002f6c <usart_stat>:

// status de la console récepction
// retourne 0 si pas de caractère disponible
// retourne -1 si caractère disponible
int usart_stat(usart_t* channel){
    2f6c:	b480      	push	{r7}
    2f6e:	b083      	sub	sp, #12
    2f70:	af00      	add	r7, sp, #0
    2f72:	6078      	str	r0, [r7, #4]
	return channel->SR&USART_SR_RXNE;
    2f74:	687b      	ldr	r3, [r7, #4]
    2f76:	681b      	ldr	r3, [r3, #0]
    2f78:	f003 0320 	and.w	r3, r3, #32
}
    2f7c:	4618      	mov	r0, r3
    2f7e:	370c      	adds	r7, #12
    2f80:	46bd      	mov	sp, r7
    2f82:	bc80      	pop	{r7}
    2f84:	4770      	bx	lr

00002f86 <usart_getc>:

// reçoit un caractère de la console
char usart_getc(usart_t* channel){
    2f86:	b480      	push	{r7}
    2f88:	b083      	sub	sp, #12
    2f8a:	af00      	add	r7, sp, #0
    2f8c:	6078      	str	r0, [r7, #4]
	if (channel->SR&USART_SR_RXNE){
    2f8e:	687b      	ldr	r3, [r7, #4]
    2f90:	681b      	ldr	r3, [r3, #0]
    2f92:	f003 0320 	and.w	r3, r3, #32
    2f96:	2b00      	cmp	r3, #0
    2f98:	d003      	beq.n	2fa2 <usart_getc+0x1c>
		return channel->DR;
    2f9a:	687b      	ldr	r3, [r7, #4]
    2f9c:	685b      	ldr	r3, [r3, #4]
    2f9e:	b2db      	uxtb	r3, r3
    2fa0:	e000      	b.n	2fa4 <usart_getc+0x1e>
	}else{
		return 0;
    2fa2:	2300      	movs	r3, #0
	}
		
}
    2fa4:	4618      	mov	r0, r3
    2fa6:	370c      	adds	r7, #12
    2fa8:	46bd      	mov	sp, r7
    2faa:	bc80      	pop	{r7}
    2fac:	4770      	bx	lr

00002fae <usart_getc_dly>:

// attend un caractère jusqu'à expiration du délais
char usart_getc_dly(usart_t* channel,unsigned dly){
    2fae:	b480      	push	{r7}
    2fb0:	b083      	sub	sp, #12
    2fb2:	af00      	add	r7, sp, #0
    2fb4:	6078      	str	r0, [r7, #4]
    2fb6:	6039      	str	r1, [r7, #0]
	timer=dly;
    2fb8:	4a0d      	ldr	r2, [pc, #52]	; (2ff0 <usart_getc_dly+0x42>)
    2fba:	683b      	ldr	r3, [r7, #0]
    2fbc:	6013      	str	r3, [r2, #0]
	while (timer && !(channel->SR&USART_SR_RXNE));
    2fbe:	bf00      	nop
    2fc0:	4b0b      	ldr	r3, [pc, #44]	; (2ff0 <usart_getc_dly+0x42>)
    2fc2:	681b      	ldr	r3, [r3, #0]
    2fc4:	2b00      	cmp	r3, #0
    2fc6:	d005      	beq.n	2fd4 <usart_getc_dly+0x26>
    2fc8:	687b      	ldr	r3, [r7, #4]
    2fca:	681b      	ldr	r3, [r3, #0]
    2fcc:	f003 0320 	and.w	r3, r3, #32
    2fd0:	2b00      	cmp	r3, #0
    2fd2:	d0f5      	beq.n	2fc0 <usart_getc_dly+0x12>
	if (timer) return channel->DR; else return 0;
    2fd4:	4b06      	ldr	r3, [pc, #24]	; (2ff0 <usart_getc_dly+0x42>)
    2fd6:	681b      	ldr	r3, [r3, #0]
    2fd8:	2b00      	cmp	r3, #0
    2fda:	d003      	beq.n	2fe4 <usart_getc_dly+0x36>
    2fdc:	687b      	ldr	r3, [r7, #4]
    2fde:	685b      	ldr	r3, [r3, #4]
    2fe0:	b2db      	uxtb	r3, r3
    2fe2:	e000      	b.n	2fe6 <usart_getc_dly+0x38>
    2fe4:	2300      	movs	r3, #0
}
    2fe6:	4618      	mov	r0, r3
    2fe8:	370c      	adds	r7, #12
    2fea:	46bd      	mov	sp, r7
    2fec:	bc80      	pop	{r7}
    2fee:	4770      	bx	lr
    2ff0:	20000474 	.word	0x20000474

00002ff4 <usart_putc>:

// transmet un caractère à la console
void usart_putc(usart_t* channel, char c){
    2ff4:	b480      	push	{r7}
    2ff6:	b083      	sub	sp, #12
    2ff8:	af00      	add	r7, sp, #0
    2ffa:	6078      	str	r0, [r7, #4]
    2ffc:	460b      	mov	r3, r1
    2ffe:	70fb      	strb	r3, [r7, #3]
	//attend que dr soit vide
	while (!(channel->SR&USART_SR_TXE));
    3000:	bf00      	nop
    3002:	687b      	ldr	r3, [r7, #4]
    3004:	681b      	ldr	r3, [r3, #0]
    3006:	f003 0380 	and.w	r3, r3, #128	; 0x80
    300a:	2b00      	cmp	r3, #0
    300c:	d0f9      	beq.n	3002 <usart_putc+0xe>
	channel->DR=c;
    300e:	78fa      	ldrb	r2, [r7, #3]
    3010:	687b      	ldr	r3, [r7, #4]
    3012:	605a      	str	r2, [r3, #4]
}
    3014:	bf00      	nop
    3016:	370c      	adds	r7, #12
    3018:	46bd      	mov	sp, r7
    301a:	bc80      	pop	{r7}
    301c:	4770      	bx	lr

0000301e <usart_cts>:


int usart_cts(usart_t* channel){
    301e:	b480      	push	{r7}
    3020:	b085      	sub	sp, #20
    3022:	af00      	add	r7, sp, #0
    3024:	6078      	str	r0, [r7, #4]
	int cts;
	switch ((uint32_t)channel){
    3026:	687b      	ldr	r3, [r7, #4]
    3028:	4a10      	ldr	r2, [pc, #64]	; (306c <usart_cts+0x4e>)
    302a:	4293      	cmp	r3, r2
    302c:	d012      	beq.n	3054 <usart_cts+0x36>
    302e:	4a10      	ldr	r2, [pc, #64]	; (3070 <usart_cts+0x52>)
    3030:	4293      	cmp	r3, r2
    3032:	d003      	beq.n	303c <usart_cts+0x1e>
    3034:	4a0f      	ldr	r2, [pc, #60]	; (3074 <usart_cts+0x56>)
    3036:	4293      	cmp	r3, r2
    3038:	d006      	beq.n	3048 <usart_cts+0x2a>
    303a:	e011      	b.n	3060 <usart_cts+0x42>
		case (uint32_t)USART1:
			cts=USART1_PORT->IDR&USART1_CTS_BIT;
    303c:	4b0e      	ldr	r3, [pc, #56]	; (3078 <usart_cts+0x5a>)
    303e:	689b      	ldr	r3, [r3, #8]
    3040:	f403 6300 	and.w	r3, r3, #2048	; 0x800
    3044:	60fb      	str	r3, [r7, #12]
			break;
    3046:	e00b      	b.n	3060 <usart_cts+0x42>
		case (uint32_t)USART2:
			cts=USART2_PORT->IDR&USART2_CTS_BIT;
    3048:	4b0b      	ldr	r3, [pc, #44]	; (3078 <usart_cts+0x5a>)
    304a:	689b      	ldr	r3, [r3, #8]
    304c:	f003 0301 	and.w	r3, r3, #1
    3050:	60fb      	str	r3, [r7, #12]
			break;
    3052:	e005      	b.n	3060 <usart_cts+0x42>
		case (uint32_t)USART3:
			cts=USART3_PORT->IDR&USART3_CTS_BIT;
    3054:	4b09      	ldr	r3, [pc, #36]	; (307c <usart_cts+0x5e>)
    3056:	689b      	ldr	r3, [r3, #8]
    3058:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
    305c:	60fb      	str	r3, [r7, #12]
			break;
    305e:	bf00      	nop
	}
	return cts;
    3060:	68fb      	ldr	r3, [r7, #12]
}
    3062:	4618      	mov	r0, r3
    3064:	3714      	adds	r7, #20
    3066:	46bd      	mov	sp, r7
    3068:	bc80      	pop	{r7}
    306a:	4770      	bx	lr
    306c:	40004800 	.word	0x40004800
    3070:	40013800 	.word	0x40013800
    3074:	40004400 	.word	0x40004400
    3078:	40010800 	.word	0x40010800
    307c:	40010c00 	.word	0x40010c00

00003080 <vt100_init>:

#include "include/blue_pill.h"
#include "include/vt100.h"
#include "include/console.h"

void vt100_init(){
    3080:	b580      	push	{r7, lr}
    3082:	b082      	sub	sp, #8
    3084:	af02      	add	r7, sp, #8
	usart_open_channel(VT_USART,115200,PARITY_NONE,USART_DIR_BIDI,FLOW_HARD);
    3086:	2301      	movs	r3, #1
    3088:	9300      	str	r3, [sp, #0]
    308a:	2303      	movs	r3, #3
    308c:	2200      	movs	r2, #0
    308e:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    3092:	4803      	ldr	r0, [pc, #12]	; (30a0 <vt100_init+0x20>)
    3094:	f7ff fef1 	bl	2e7a <usart_open_channel>
}
    3098:	bf00      	nop
    309a:	46bd      	mov	sp, r7
    309c:	bd80      	pop	{r7, pc}
    309e:	bf00      	nop
    30a0:	40004400 	.word	0x40004400

000030a4 <vt_putc>:

void vt_putc(char c){
    30a4:	b580      	push	{r7, lr}
    30a6:	b082      	sub	sp, #8
    30a8:	af00      	add	r7, sp, #0
    30aa:	4603      	mov	r3, r0
    30ac:	71fb      	strb	r3, [r7, #7]
	usart_putc(VT_USART,c);
    30ae:	79fb      	ldrb	r3, [r7, #7]
    30b0:	4619      	mov	r1, r3
    30b2:	4803      	ldr	r0, [pc, #12]	; (30c0 <vt_putc+0x1c>)
    30b4:	f7ff ff9e 	bl	2ff4 <usart_putc>
}
    30b8:	bf00      	nop
    30ba:	3708      	adds	r7, #8
    30bc:	46bd      	mov	sp, r7
    30be:	bd80      	pop	{r7, pc}
    30c0:	40004400 	.word	0x40004400

000030c4 <vt_del_back>:

void vt_del_back(){
    30c4:	b580      	push	{r7, lr}
    30c6:	af00      	add	r7, sp, #0
	usart_putc(VT_USART,BS);
    30c8:	2108      	movs	r1, #8
    30ca:	4806      	ldr	r0, [pc, #24]	; (30e4 <vt_del_back+0x20>)
    30cc:	f7ff ff92 	bl	2ff4 <usart_putc>
	usart_putc(VT_USART,SPACE);
    30d0:	2120      	movs	r1, #32
    30d2:	4804      	ldr	r0, [pc, #16]	; (30e4 <vt_del_back+0x20>)
    30d4:	f7ff ff8e 	bl	2ff4 <usart_putc>
	usart_putc(VT_USART,BS);
    30d8:	2108      	movs	r1, #8
    30da:	4802      	ldr	r0, [pc, #8]	; (30e4 <vt_del_back+0x20>)
    30dc:	f7ff ff8a 	bl	2ff4 <usart_putc>
}
    30e0:	bf00      	nop
    30e2:	bd80      	pop	{r7, pc}
    30e4:	40004400 	.word	0x40004400

000030e8 <vt_esc_seq>:

static void vt_esc_seq(){
    30e8:	b580      	push	{r7, lr}
    30ea:	af00      	add	r7, sp, #0
	usart_putc(VT_USART,ESC);
    30ec:	211b      	movs	r1, #27
    30ee:	4804      	ldr	r0, [pc, #16]	; (3100 <vt_esc_seq+0x18>)
    30f0:	f7ff ff80 	bl	2ff4 <usart_putc>
	usart_putc(VT_USART,'[');
    30f4:	215b      	movs	r1, #91	; 0x5b
    30f6:	4802      	ldr	r0, [pc, #8]	; (3100 <vt_esc_seq+0x18>)
    30f8:	f7ff ff7c 	bl	2ff4 <usart_putc>
}
    30fc:	bf00      	nop
    30fe:	bd80      	pop	{r7, pc}
    3100:	40004400 	.word	0x40004400

00003104 <vt_cls>:


// vide l'écran de la console
void vt_cls(){
    3104:	b580      	push	{r7, lr}
    3106:	af00      	add	r7, sp, #0
	vt_esc_seq();
    3108:	f7ff ffee 	bl	30e8 <vt_esc_seq>
	usart_putc(VT_USART,'2');
    310c:	2132      	movs	r1, #50	; 0x32
    310e:	4804      	ldr	r0, [pc, #16]	; (3120 <vt_cls+0x1c>)
    3110:	f7ff ff70 	bl	2ff4 <usart_putc>
	usart_putc(VT_USART,'J');
    3114:	214a      	movs	r1, #74	; 0x4a
    3116:	4802      	ldr	r0, [pc, #8]	; (3120 <vt_cls+0x1c>)
    3118:	f7ff ff6c 	bl	2ff4 <usart_putc>
}
    311c:	bf00      	nop
    311e:	bd80      	pop	{r7, pc}
    3120:	40004400 	.word	0x40004400

00003124 <vt_clear_line>:

// vide la ligne du curseur
// n -> nombre de caractère à effacer.
void vt_clear_line(unsigned n){
    3124:	b580      	push	{r7, lr}
    3126:	b082      	sub	sp, #8
    3128:	af00      	add	r7, sp, #0
    312a:	6078      	str	r0, [r7, #4]
	vt_esc_seq();
    312c:	f7ff ffdc 	bl	30e8 <vt_esc_seq>
	usart_putc(VT_USART,'2');
    3130:	2132      	movs	r1, #50	; 0x32
    3132:	480b      	ldr	r0, [pc, #44]	; (3160 <vt_clear_line+0x3c>)
    3134:	f7ff ff5e 	bl	2ff4 <usart_putc>
	usart_putc(VT_USART,'K');
    3138:	214b      	movs	r1, #75	; 0x4b
    313a:	4809      	ldr	r0, [pc, #36]	; (3160 <vt_clear_line+0x3c>)
    313c:	f7ff ff5a 	bl	2ff4 <usart_putc>
	while (n){usart_putc(VT_USART,BS);n--;}
    3140:	e006      	b.n	3150 <vt_clear_line+0x2c>
    3142:	2108      	movs	r1, #8
    3144:	4806      	ldr	r0, [pc, #24]	; (3160 <vt_clear_line+0x3c>)
    3146:	f7ff ff55 	bl	2ff4 <usart_putc>
    314a:	687b      	ldr	r3, [r7, #4]
    314c:	3b01      	subs	r3, #1
    314e:	607b      	str	r3, [r7, #4]
    3150:	687b      	ldr	r3, [r7, #4]
    3152:	2b00      	cmp	r3, #0
    3154:	d1f5      	bne.n	3142 <vt_clear_line+0x1e>
}
    3156:	bf00      	nop
    3158:	3708      	adds	r7, #8
    315a:	46bd      	mov	sp, r7
    315c:	bd80      	pop	{r7, pc}
    315e:	bf00      	nop
    3160:	40004400 	.word	0x40004400

00003164 <vt_ready>:

// vérifie si le terminal est prêt
int vt_ready(){
    3164:	b480      	push	{r7}
    3166:	af00      	add	r7, sp, #0
	return !(VT_PORT->IDR&VT_CTS_BIT);
    3168:	4b06      	ldr	r3, [pc, #24]	; (3184 <vt_ready+0x20>)
    316a:	689b      	ldr	r3, [r3, #8]
    316c:	f003 0301 	and.w	r3, r3, #1
    3170:	2b00      	cmp	r3, #0
    3172:	bf0c      	ite	eq
    3174:	2301      	moveq	r3, #1
    3176:	2300      	movne	r3, #0
    3178:	b2db      	uxtb	r3, r3
}
    317a:	4618      	mov	r0, r3
    317c:	46bd      	mov	sp, r7
    317e:	bc80      	pop	{r7}
    3180:	4770      	bx	lr
    3182:	bf00      	nop
    3184:	40010800 	.word	0x40010800

00003188 <vt_rx_enable>:

void vt_rx_enable(int enable){
    3188:	b480      	push	{r7}
    318a:	b085      	sub	sp, #20
    318c:	af00      	add	r7, sp, #0
    318e:	6078      	str	r0, [r7, #4]
	char c;
	if (enable){
    3190:	687b      	ldr	r3, [r7, #4]
    3192:	2b00      	cmp	r3, #0
    3194:	d006      	beq.n	31a4 <vt_rx_enable+0x1c>
		VT_USART->CR1|=USART_CR1_RXNEIE;
    3196:	4a0a      	ldr	r2, [pc, #40]	; (31c0 <vt_rx_enable+0x38>)
    3198:	4b09      	ldr	r3, [pc, #36]	; (31c0 <vt_rx_enable+0x38>)
    319a:	68db      	ldr	r3, [r3, #12]
    319c:	f043 0320 	orr.w	r3, r3, #32
    31a0:	60d3      	str	r3, [r2, #12]
	}else{
		c=VT_USART->DR;
		VT_USART->CR1&=~USART_CR1_RXNEIE;
	}
}
    31a2:	e008      	b.n	31b6 <vt_rx_enable+0x2e>
		c=VT_USART->DR;
    31a4:	4b06      	ldr	r3, [pc, #24]	; (31c0 <vt_rx_enable+0x38>)
    31a6:	685b      	ldr	r3, [r3, #4]
    31a8:	73fb      	strb	r3, [r7, #15]
		VT_USART->CR1&=~USART_CR1_RXNEIE;
    31aa:	4a05      	ldr	r2, [pc, #20]	; (31c0 <vt_rx_enable+0x38>)
    31ac:	4b04      	ldr	r3, [pc, #16]	; (31c0 <vt_rx_enable+0x38>)
    31ae:	68db      	ldr	r3, [r3, #12]
    31b0:	f023 0320 	bic.w	r3, r3, #32
    31b4:	60d3      	str	r3, [r2, #12]
}
    31b6:	bf00      	nop
    31b8:	3714      	adds	r7, #20
    31ba:	46bd      	mov	sp, r7
    31bc:	bc80      	pop	{r7}
    31be:	4770      	bx	lr
    31c0:	40004400 	.word	0x40004400

000031c4 <USART2_handler>:

// interruption serial console
void VT_handler(){
    31c4:	b580      	push	{r7, lr}
    31c6:	af00      	add	r7, sp, #0
	if ((con.dev==SERIAL) && (VT_USART->SR&USART_SR_RXNE)){
    31c8:	4b09      	ldr	r3, [pc, #36]	; (31f0 <USART2_handler+0x2c>)
    31ca:	781b      	ldrb	r3, [r3, #0]
    31cc:	2b02      	cmp	r3, #2
    31ce:	d10c      	bne.n	31ea <USART2_handler+0x26>
    31d0:	4b08      	ldr	r3, [pc, #32]	; (31f4 <USART2_handler+0x30>)
    31d2:	681b      	ldr	r3, [r3, #0]
    31d4:	f003 0320 	and.w	r3, r3, #32
    31d8:	2b00      	cmp	r3, #0
    31da:	d006      	beq.n	31ea <USART2_handler+0x26>
		con.insert(VT_USART->DR);
    31dc:	4b04      	ldr	r3, [pc, #16]	; (31f0 <USART2_handler+0x2c>)
    31de:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    31e0:	4a04      	ldr	r2, [pc, #16]	; (31f4 <USART2_handler+0x30>)
    31e2:	6852      	ldr	r2, [r2, #4]
    31e4:	b2d2      	uxtb	r2, r2
    31e6:	4610      	mov	r0, r2
    31e8:	4798      	blx	r3
	}
}
    31ea:	bf00      	nop
    31ec:	bd80      	pop	{r7, pc}
    31ee:	bf00      	nop
    31f0:	20000480 	.word	0x20000480
    31f4:	40004400 	.word	0x40004400

000031f8 <vt_flow_ctrl>:

// contrôle de flux
void vt_flow_ctrl(int i){
    31f8:	b580      	push	{r7, lr}
    31fa:	b082      	sub	sp, #8
    31fc:	af00      	add	r7, sp, #0
    31fe:	6078      	str	r0, [r7, #4]
	if (i){
    3200:	687b      	ldr	r3, [r7, #4]
    3202:	2b00      	cmp	r3, #0
    3204:	d003      	beq.n	320e <vt_flow_ctrl+0x16>
		enable_interrupt(IRQ_VT);
    3206:	2026      	movs	r0, #38	; 0x26
    3208:	f7fe fa7a 	bl	1700 <enable_interrupt>
	}else{
		disable_interrupt(IRQ_VT);
	}
}
    320c:	e002      	b.n	3214 <vt_flow_ctrl+0x1c>
		disable_interrupt(IRQ_VT);
    320e:	2026      	movs	r0, #38	; 0x26
    3210:	f7fe fa9a 	bl	1748 <disable_interrupt>
}
    3214:	bf00      	nop
    3216:	3708      	adds	r7, #8
    3218:	46bd      	mov	sp, r7
    321a:	bd80      	pop	{r7, pc}
