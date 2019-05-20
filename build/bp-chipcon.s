
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 e9 36 00 00     C...I...O....6..
      20:	e9 36 00 00 e9 36 00 00 e9 36 00 00 55 02 00 00     .6...6...6..U...
      30:	e9 36 00 00 e9 36 00 00 5b 02 00 00 d1 37 00 00     .6...6..[....7..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 21 34 00 00     g...m...y...!4..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 e9 36 00 00 e9 36 00 00 b5 02 00 00     .....6...6......
      80:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..
      90:	e9 36 00 00 e9 36 00 00 e9 36 00 00 bb 02 00 00     .6...6...6......
      a0:	e9 36 00 00 51 40 00 00 e9 36 00 00 19 3f 00 00     .6..Q@...6...?..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 e9 36 00 00     .............6..
      c0:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..
      d0:	e9 36 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .6..............
      e0:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..
      f0:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..
     100:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..
     110:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..
     120:	e9 36 00 00 e9 36 00 00 e9 36 00 00 e9 36 00 00     .6...6...6...6..

00000130 <startup>:
     130:	b580      	push	{r7, lr}
     132:	b086      	sub	sp, #24
     134:	af00      	add	r7, sp, #0
     136:	4b19      	ldr	r3, [pc, #100]	; (19c <startup+0x6c>)
     138:	617b      	str	r3, [r7, #20]
     13a:	4b19      	ldr	r3, [pc, #100]	; (1a0 <startup+0x70>)
     13c:	60bb      	str	r3, [r7, #8]
     13e:	e005      	b.n	14c <startup+0x1c>
     140:	697b      	ldr	r3, [r7, #20]
     142:	2200      	movs	r2, #0
     144:	601a      	str	r2, [r3, #0]
     146:	697b      	ldr	r3, [r7, #20]
     148:	3304      	adds	r3, #4
     14a:	617b      	str	r3, [r7, #20]
     14c:	697a      	ldr	r2, [r7, #20]
     14e:	68bb      	ldr	r3, [r7, #8]
     150:	429a      	cmp	r2, r3
     152:	d3f5      	bcc.n	140 <startup+0x10>
     154:	4b13      	ldr	r3, [pc, #76]	; (1a4 <startup+0x74>)
     156:	613b      	str	r3, [r7, #16]
     158:	4b13      	ldr	r3, [pc, #76]	; (1a8 <startup+0x78>)
     15a:	60fb      	str	r3, [r7, #12]
     15c:	4b13      	ldr	r3, [pc, #76]	; (1ac <startup+0x7c>)
     15e:	607b      	str	r3, [r7, #4]
     160:	e009      	b.n	176 <startup+0x46>
     162:	693b      	ldr	r3, [r7, #16]
     164:	681a      	ldr	r2, [r3, #0]
     166:	68fb      	ldr	r3, [r7, #12]
     168:	601a      	str	r2, [r3, #0]
     16a:	68fb      	ldr	r3, [r7, #12]
     16c:	3304      	adds	r3, #4
     16e:	60fb      	str	r3, [r7, #12]
     170:	693b      	ldr	r3, [r7, #16]
     172:	3304      	adds	r3, #4
     174:	613b      	str	r3, [r7, #16]
     176:	68fa      	ldr	r2, [r7, #12]
     178:	687b      	ldr	r3, [r7, #4]
     17a:	429a      	cmp	r2, r3
     17c:	d3f1      	bcc.n	162 <startup+0x32>
     17e:	4a0c      	ldr	r2, [pc, #48]	; (1b0 <startup+0x80>)
     180:	4b0b      	ldr	r3, [pc, #44]	; (1b0 <startup+0x80>)
     182:	681b      	ldr	r3, [r3, #0]
     184:	f043 0319 	orr.w	r3, r3, #25
     188:	6013      	str	r3, [r2, #0]
     18a:	b662      	cpsie	i
     18c:	b661      	cpsie	f
     18e:	f002 fa15 	bl	25bc <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000006a 	.word	0x2000006a
     1a0:	20004c98 	.word	0x20004c98
     1a4:	00004c00 	.word	0x00004c00
     1a8:	20000000 	.word	0x20000000
     1ac:	2000006a 	.word	0x2000006a
     1b0:	e000ed14 	.word	0xe000ed14

000001b4 <HARD_FAULT_handler>:
     1b4:	4668      	mov	r0, sp
     1b6:	f020 0107 	bic.w	r1, r0, #7
     1ba:	468d      	mov	sp, r1
     1bc:	b581      	push	{r0, r7, lr}
     1be:	b083      	sub	sp, #12
     1c0:	af00      	add	r7, sp, #0
     1c2:	f3ef 8009 	mrs	r0, PSP
     1c6:	6983      	ldr	r3, [r0, #24]
     1c8:	607b      	str	r3, [r7, #4]
     1ca:	4b17      	ldr	r3, [pc, #92]	; (228 <HARD_FAULT_handler+0x74>)
     1cc:	681b      	ldr	r3, [r3, #0]
     1ce:	b2db      	uxtb	r3, r3
     1d0:	f003 037f 	and.w	r3, r3, #127	; 0x7f
     1d4:	2b00      	cmp	r3, #0
     1d6:	d004      	beq.n	1e2 <HARD_FAULT_handler+0x2e>
     1d8:	6879      	ldr	r1, [r7, #4]
     1da:	4814      	ldr	r0, [pc, #80]	; (22c <HARD_FAULT_handler+0x78>)
     1dc:	f003 fa8c 	bl	36f8 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 fa80 	bl	36f8 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 fa74 	bl	36f8 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 fa6f 	bl	36f8 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	000049c8 	.word	0x000049c8
     230:	000049e0 	.word	0x000049e0
     234:	000049ec 	.word	0x000049ec
     238:	000049fc 	.word	0x000049fc

0000023c <NMI_handler>:
     23c:	f003 fa54 	bl	36e8 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 fa51 	bl	36e8 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 fa4e 	bl	36e8 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 fa4b 	bl	36e8 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 fa48 	bl	36e8 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 fa45 	bl	36e8 <reset_mcu>
     25e:	bf00      	nop
     260:	f003 fa42 	bl	36e8 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 fa3f 	bl	36e8 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 fa3c 	bl	36e8 <reset_mcu>
     270:	bf00      	nop
     272:	f003 fa39 	bl	36e8 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 fa36 	bl	36e8 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 fa33 	bl	36e8 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 fa30 	bl	36e8 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 fa2d 	bl	36e8 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 fa2a 	bl	36e8 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 fa27 	bl	36e8 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 fa24 	bl	36e8 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 fa21 	bl	36e8 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 fa1e 	bl	36e8 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 fa1b 	bl	36e8 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 fa18 	bl	36e8 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 fa15 	bl	36e8 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 fa12 	bl	36e8 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 fa0f 	bl	36e8 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 fa0c 	bl	36e8 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 fa09 	bl	36e8 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 fa06 	bl	36e8 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 fa03 	bl	36e8 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 fa00 	bl	36e8 <reset_mcu>
     2e8:	bf00      	nop
	...

000002ec <bkp_read_register>:
     2ec:	b480      	push	{r7}
     2ee:	b083      	sub	sp, #12
     2f0:	af00      	add	r7, sp, #0
     2f2:	6078      	str	r0, [r7, #4]
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
     316:	4618      	mov	r0, r3
     318:	370c      	adds	r7, #12
     31a:	46bd      	mov	sp, r7
     31c:	bc80      	pop	{r7}
     31e:	4770      	bx	lr
     320:	40006c00 	.word	0x40006c00
     324:	66666667 	.word	0x66666667

00000328 <bkp_write_register>:
     328:	b480      	push	{r7}
     32a:	b083      	sub	sp, #12
     32c:	af00      	add	r7, sp, #0
     32e:	6078      	str	r0, [r7, #4]
     330:	460b      	mov	r3, r1
     332:	807b      	strh	r3, [r7, #2]
     334:	4a1d      	ldr	r2, [pc, #116]	; (3ac <bkp_write_register+0x84>)
     336:	4b1d      	ldr	r3, [pc, #116]	; (3ac <bkp_write_register+0x84>)
     338:	69db      	ldr	r3, [r3, #28]
     33a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     33e:	61d3      	str	r3, [r2, #28]
     340:	4a1b      	ldr	r2, [pc, #108]	; (3b0 <bkp_write_register+0x88>)
     342:	4b1b      	ldr	r3, [pc, #108]	; (3b0 <bkp_write_register+0x88>)
     344:	681b      	ldr	r3, [r3, #0]
     346:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     34a:	6013      	str	r3, [r2, #0]
     34c:	4a19      	ldr	r2, [pc, #100]	; (3b4 <bkp_write_register+0x8c>)
     34e:	4b19      	ldr	r3, [pc, #100]	; (3b4 <bkp_write_register+0x8c>)
     350:	685b      	ldr	r3, [r3, #4]
     352:	f043 0310 	orr.w	r3, r3, #16
     356:	6053      	str	r3, [r2, #4]
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
     37a:	4a0e      	ldr	r2, [pc, #56]	; (3b4 <bkp_write_register+0x8c>)
     37c:	4b0d      	ldr	r3, [pc, #52]	; (3b4 <bkp_write_register+0x8c>)
     37e:	685b      	ldr	r3, [r3, #4]
     380:	f023 0310 	bic.w	r3, r3, #16
     384:	6053      	str	r3, [r2, #4]
     386:	bf00      	nop
     388:	4b0a      	ldr	r3, [pc, #40]	; (3b4 <bkp_write_register+0x8c>)
     38a:	685b      	ldr	r3, [r3, #4]
     38c:	f003 0320 	and.w	r3, r3, #32
     390:	2b00      	cmp	r3, #0
     392:	d0f9      	beq.n	388 <bkp_write_register+0x60>
     394:	4a06      	ldr	r2, [pc, #24]	; (3b0 <bkp_write_register+0x88>)
     396:	4b06      	ldr	r3, [pc, #24]	; (3b0 <bkp_write_register+0x88>)
     398:	681b      	ldr	r3, [r3, #0]
     39a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     39e:	6013      	str	r3, [r2, #0]
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
     3c0:	b580      	push	{r7, lr}
     3c2:	b084      	sub	sp, #16
     3c4:	af00      	add	r7, sp, #0
     3c6:	6078      	str	r0, [r7, #4]
     3c8:	f003 fa4e 	bl	3868 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 fa3b 	bl	3848 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fb82 	bl	3adc <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fb7f 	bl	3adc <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fba8 	bl	3b3c <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 fba1 	bl	3b3c <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 fb9a 	bl	3b3c <print_int>
     408:	f003 fa2e 	bl	3868 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fb65 	bl	3adc <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fb8f 	bl	3b3c <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fb5c 	bl	3adc <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fb86 	bl	3b3c <print_int>
     430:	f003 fa1a 	bl	3868 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 fb51 	bl	3adc <print>
     43a:	2300      	movs	r3, #0
     43c:	60fb      	str	r3, [r7, #12]
     43e:	e00b      	b.n	458 <print_vms+0x98>
     440:	4a0c      	ldr	r2, [pc, #48]	; (474 <print_vms+0xb4>)
     442:	68fb      	ldr	r3, [r7, #12]
     444:	4413      	add	r3, r2
     446:	3305      	adds	r3, #5
     448:	781b      	ldrb	r3, [r3, #0]
     44a:	2110      	movs	r1, #16
     44c:	4618      	mov	r0, r3
     44e:	f003 fb75 	bl	3b3c <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 fa03 	bl	3868 <new_line>
     462:	f003 fca1 	bl	3da8 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	000043dc 	.word	0x000043dc
     474:	2000006c 	.word	0x2000006c
     478:	000043e0 	.word	0x000043e0
     47c:	000043e4 	.word	0x000043e4
     480:	000043ec 	.word	0x000043ec

00000484 <chip_scroll_right>:
     484:	b480      	push	{r7}
     486:	af00      	add	r7, sp, #0
     488:	bf00      	nop
     48a:	46bd      	mov	sp, r7
     48c:	bc80      	pop	{r7}
     48e:	4770      	bx	lr

00000490 <chip_scroll_left>:
     490:	b480      	push	{r7}
     492:	af00      	add	r7, sp, #0
     494:	bf00      	nop
     496:	46bd      	mov	sp, r7
     498:	bc80      	pop	{r7}
     49a:	4770      	bx	lr

0000049c <tone>:
     49c:	b480      	push	{r7}
     49e:	b083      	sub	sp, #12
     4a0:	af00      	add	r7, sp, #0
     4a2:	6078      	str	r0, [r7, #4]
     4a4:	6039      	str	r1, [r7, #0]
     4a6:	bf00      	nop
     4a8:	370c      	adds	r7, #12
     4aa:	46bd      	mov	sp, r7
     4ac:	bc80      	pop	{r7}
     4ae:	4770      	bx	lr

000004b0 <key_tone>:
     4b0:	b480      	push	{r7}
     4b2:	b085      	sub	sp, #20
     4b4:	af00      	add	r7, sp, #0
     4b6:	60f8      	str	r0, [r7, #12]
     4b8:	60b9      	str	r1, [r7, #8]
     4ba:	607a      	str	r2, [r7, #4]
     4bc:	bf00      	nop
     4be:	3714      	adds	r7, #20
     4c0:	46bd      	mov	sp, r7
     4c2:	bc80      	pop	{r7}
     4c4:	4770      	bx	lr

000004c6 <noise>:
     4c6:	b480      	push	{r7}
     4c8:	b083      	sub	sp, #12
     4ca:	af00      	add	r7, sp, #0
     4cc:	6078      	str	r0, [r7, #4]
     4ce:	bf00      	nop
     4d0:	370c      	adds	r7, #12
     4d2:	46bd      	mov	sp, r7
     4d4:	bc80      	pop	{r7}
     4d6:	4770      	bx	lr

000004d8 <load_block>:
     4d8:	b480      	push	{r7}
     4da:	b085      	sub	sp, #20
     4dc:	af00      	add	r7, sp, #0
     4de:	60f8      	str	r0, [r7, #12]
     4e0:	60b9      	str	r1, [r7, #8]
     4e2:	607a      	str	r2, [r7, #4]
     4e4:	bf00      	nop
     4e6:	3714      	adds	r7, #20
     4e8:	46bd      	mov	sp, r7
     4ea:	bc80      	pop	{r7}
     4ec:	4770      	bx	lr

000004ee <store_block>:
     4ee:	b480      	push	{r7}
     4f0:	b085      	sub	sp, #20
     4f2:	af00      	add	r7, sp, #0
     4f4:	60f8      	str	r0, [r7, #12]
     4f6:	60b9      	str	r1, [r7, #8]
     4f8:	607a      	str	r2, [r7, #4]
     4fa:	bf00      	nop
     4fc:	3714      	adds	r7, #20
     4fe:	46bd      	mov	sp, r7
     500:	bc80      	pop	{r7}
     502:	4770      	bx	lr

00000504 <put_big_sprite>:
     504:	b480      	push	{r7}
     506:	b085      	sub	sp, #20
     508:	af00      	add	r7, sp, #0
     50a:	60f8      	str	r0, [r7, #12]
     50c:	60b9      	str	r1, [r7, #8]
     50e:	607a      	str	r2, [r7, #4]
     510:	603b      	str	r3, [r7, #0]
     512:	bf00      	nop
     514:	4618      	mov	r0, r3
     516:	3714      	adds	r7, #20
     518:	46bd      	mov	sp, r7
     51a:	bc80      	pop	{r7}
     51c:	4770      	bx	lr

0000051e <srand>:
     51e:	b480      	push	{r7}
     520:	b083      	sub	sp, #12
     522:	af00      	add	r7, sp, #0
     524:	6078      	str	r0, [r7, #4]
     526:	4a04      	ldr	r2, [pc, #16]	; (538 <srand+0x1a>)
     528:	687b      	ldr	r3, [r7, #4]
     52a:	6013      	str	r3, [r2, #0]
     52c:	bf00      	nop
     52e:	370c      	adds	r7, #12
     530:	46bd      	mov	sp, r7
     532:	bc80      	pop	{r7}
     534:	4770      	bx	lr
     536:	bf00      	nop
     538:	20000000 	.word	0x20000000

0000053c <rand>:
     53c:	b480      	push	{r7}
     53e:	b083      	sub	sp, #12
     540:	af00      	add	r7, sp, #0
     542:	4b0e      	ldr	r3, [pc, #56]	; (57c <rand+0x40>)
     544:	681b      	ldr	r3, [r3, #0]
     546:	607b      	str	r3, [r7, #4]
     548:	687b      	ldr	r3, [r7, #4]
     54a:	035b      	lsls	r3, r3, #13
     54c:	687a      	ldr	r2, [r7, #4]
     54e:	4053      	eors	r3, r2
     550:	607b      	str	r3, [r7, #4]
     552:	687b      	ldr	r3, [r7, #4]
     554:	0c5b      	lsrs	r3, r3, #17
     556:	687a      	ldr	r2, [r7, #4]
     558:	4053      	eors	r3, r2
     55a:	607b      	str	r3, [r7, #4]
     55c:	687b      	ldr	r3, [r7, #4]
     55e:	015b      	lsls	r3, r3, #5
     560:	687a      	ldr	r2, [r7, #4]
     562:	4053      	eors	r3, r2
     564:	607b      	str	r3, [r7, #4]
     566:	4a05      	ldr	r2, [pc, #20]	; (57c <rand+0x40>)
     568:	687b      	ldr	r3, [r7, #4]
     56a:	6013      	str	r3, [r2, #0]
     56c:	687b      	ldr	r3, [r7, #4]
     56e:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
     572:	4618      	mov	r0, r3
     574:	370c      	adds	r7, #12
     576:	46bd      	mov	sp, r7
     578:	bc80      	pop	{r7}
     57a:	4770      	bx	lr
     57c:	20000000 	.word	0x20000000

00000580 <schipp>:
     580:	b590      	push	{r4, r7, lr}
     582:	b087      	sub	sp, #28
     584:	af02      	add	r7, sp, #8
     586:	4603      	mov	r3, r0
     588:	80fb      	strh	r3, [r7, #6]
     58a:	4aaf      	ldr	r2, [pc, #700]	; (848 <schipp+0x2c8>)
     58c:	88fb      	ldrh	r3, [r7, #6]
     58e:	8013      	strh	r3, [r2, #0]
     590:	4bad      	ldr	r3, [pc, #692]	; (848 <schipp+0x2c8>)
     592:	2200      	movs	r2, #0
     594:	711a      	strb	r2, [r3, #4]
     596:	4bac      	ldr	r3, [pc, #688]	; (848 <schipp+0x2c8>)
     598:	2200      	movs	r2, #0
     59a:	805a      	strh	r2, [r3, #2]
     59c:	4baa      	ldr	r3, [pc, #680]	; (848 <schipp+0x2c8>)
     59e:	881b      	ldrh	r3, [r3, #0]
     5a0:	461a      	mov	r2, r3
     5a2:	4baa      	ldr	r3, [pc, #680]	; (84c <schipp+0x2cc>)
     5a4:	5c9a      	ldrb	r2, [r3, r2]
     5a6:	4ba8      	ldr	r3, [pc, #672]	; (848 <schipp+0x2c8>)
     5a8:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
     5ac:	4ba6      	ldr	r3, [pc, #664]	; (848 <schipp+0x2c8>)
     5ae:	881b      	ldrh	r3, [r3, #0]
     5b0:	3301      	adds	r3, #1
     5b2:	4aa6      	ldr	r2, [pc, #664]	; (84c <schipp+0x2cc>)
     5b4:	5cd2      	ldrb	r2, [r2, r3]
     5b6:	4ba4      	ldr	r3, [pc, #656]	; (848 <schipp+0x2c8>)
     5b8:	f883 2027 	strb.w	r2, [r3, #39]	; 0x27
     5bc:	4ba2      	ldr	r3, [pc, #648]	; (848 <schipp+0x2c8>)
     5be:	881b      	ldrh	r3, [r3, #0]
     5c0:	3302      	adds	r3, #2
     5c2:	b29a      	uxth	r2, r3
     5c4:	4ba0      	ldr	r3, [pc, #640]	; (848 <schipp+0x2c8>)
     5c6:	801a      	strh	r2, [r3, #0]
     5c8:	4b9f      	ldr	r3, [pc, #636]	; (848 <schipp+0x2c8>)
     5ca:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     5ce:	f003 030f 	and.w	r3, r3, #15
     5d2:	73bb      	strb	r3, [r7, #14]
     5d4:	4b9c      	ldr	r3, [pc, #624]	; (848 <schipp+0x2c8>)
     5d6:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     5da:	091b      	lsrs	r3, r3, #4
     5dc:	737b      	strb	r3, [r7, #13]
     5de:	4b9a      	ldr	r3, [pc, #616]	; (848 <schipp+0x2c8>)
     5e0:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     5e4:	091b      	lsrs	r3, r3, #4
     5e6:	b2db      	uxtb	r3, r3
     5e8:	2b0f      	cmp	r3, #15
     5ea:	d8d7      	bhi.n	59c <schipp+0x1c>
     5ec:	a201      	add	r2, pc, #4	; (adr r2, 5f4 <schipp+0x74>)
     5ee:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     5f2:	bf00      	nop
     5f4:	00000635 	.word	0x00000635
     5f8:	00000763 	.word	0x00000763
     5fc:	00000785 	.word	0x00000785
     600:	000007c7 	.word	0x000007c7
     604:	000007eb 	.word	0x000007eb
     608:	0000080f 	.word	0x0000080f
     60c:	00000835 	.word	0x00000835
     610:	00000851 	.word	0x00000851
     614:	00000895 	.word	0x00000895
     618:	00000a83 	.word	0x00000a83
     61c:	00000d1d 	.word	0x00000d1d
     620:	00000d3d 	.word	0x00000d3d
     624:	00000d6b 	.word	0x00000d6b
     628:	00000d95 	.word	0x00000d95
     62c:	00000e1f 	.word	0x00000e1f
     630:	00000e83 	.word	0x00000e83
     634:	4b84      	ldr	r3, [pc, #528]	; (848 <schipp+0x2c8>)
     636:	f893 2026 	ldrb.w	r2, [r3, #38]	; 0x26
     63a:	4b83      	ldr	r3, [pc, #524]	; (848 <schipp+0x2c8>)
     63c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     640:	4313      	orrs	r3, r2
     642:	b2db      	uxtb	r3, r3
     644:	2b00      	cmp	r3, #0
     646:	f000 852b 	beq.w	10a0 <schipp+0xb20>
     64a:	4b7f      	ldr	r3, [pc, #508]	; (848 <schipp+0x2c8>)
     64c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     650:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     654:	2bc0      	cmp	r3, #192	; 0xc0
     656:	d10a      	bne.n	66e <schipp+0xee>
     658:	4b7b      	ldr	r3, [pc, #492]	; (848 <schipp+0x2c8>)
     65a:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     65e:	f003 030f 	and.w	r3, r3, #15
     662:	b2db      	uxtb	r3, r3
     664:	4618      	mov	r0, r3
     666:	f001 fb51 	bl	1d0c <gfx_scroll_down>
     66a:	f000 bd19 	b.w	10a0 <schipp+0xb20>
     66e:	4b76      	ldr	r3, [pc, #472]	; (848 <schipp+0x2c8>)
     670:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     674:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     678:	2bd0      	cmp	r3, #208	; 0xd0
     67a:	d10a      	bne.n	692 <schipp+0x112>
     67c:	4b72      	ldr	r3, [pc, #456]	; (848 <schipp+0x2c8>)
     67e:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     682:	f003 030f 	and.w	r3, r3, #15
     686:	b2db      	uxtb	r3, r3
     688:	4618      	mov	r0, r3
     68a:	f001 fb0d 	bl	1ca8 <gfx_scroll_up>
     68e:	f000 bd07 	b.w	10a0 <schipp+0xb20>
     692:	4b6d      	ldr	r3, [pc, #436]	; (848 <schipp+0x2c8>)
     694:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     698:	3be0      	subs	r3, #224	; 0xe0
     69a:	2b1f      	cmp	r3, #31
     69c:	d85b      	bhi.n	756 <schipp+0x1d6>
     69e:	a201      	add	r2, pc, #4	; (adr r2, 6a4 <schipp+0x124>)
     6a0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     6a4:	00000725 	.word	0x00000725
     6a8:	00000757 	.word	0x00000757
     6ac:	00000757 	.word	0x00000757
     6b0:	00000757 	.word	0x00000757
     6b4:	00000757 	.word	0x00000757
     6b8:	00000757 	.word	0x00000757
     6bc:	00000757 	.word	0x00000757
     6c0:	00000757 	.word	0x00000757
     6c4:	00000757 	.word	0x00000757
     6c8:	00000757 	.word	0x00000757
     6cc:	00000757 	.word	0x00000757
     6d0:	00000757 	.word	0x00000757
     6d4:	00000757 	.word	0x00000757
     6d8:	00000757 	.word	0x00000757
     6dc:	0000072b 	.word	0x0000072b
     6e0:	00000757 	.word	0x00000757
     6e4:	00000757 	.word	0x00000757
     6e8:	00000757 	.word	0x00000757
     6ec:	00000757 	.word	0x00000757
     6f0:	00000757 	.word	0x00000757
     6f4:	00000757 	.word	0x00000757
     6f8:	00000757 	.word	0x00000757
     6fc:	00000757 	.word	0x00000757
     700:	00000757 	.word	0x00000757
     704:	00000757 	.word	0x00000757
     708:	00000757 	.word	0x00000757
     70c:	00000757 	.word	0x00000757
     710:	00000745 	.word	0x00000745
     714:	0000074b 	.word	0x0000074b
     718:	00000751 	.word	0x00000751
     71c:	0000075d 	.word	0x0000075d
     720:	0000075d 	.word	0x0000075d
     724:	f003 fb4a 	bl	3dbc <clear_screen>
     728:	e019      	b.n	75e <schipp+0x1de>
     72a:	4b47      	ldr	r3, [pc, #284]	; (848 <schipp+0x2c8>)
     72c:	791b      	ldrb	r3, [r3, #4]
     72e:	1e5a      	subs	r2, r3, #1
     730:	b2d1      	uxtb	r1, r2
     732:	4a45      	ldr	r2, [pc, #276]	; (848 <schipp+0x2c8>)
     734:	7111      	strb	r1, [r2, #4]
     736:	4a44      	ldr	r2, [pc, #272]	; (848 <schipp+0x2c8>)
     738:	3314      	adds	r3, #20
     73a:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     73e:	4b42      	ldr	r3, [pc, #264]	; (848 <schipp+0x2c8>)
     740:	801a      	strh	r2, [r3, #0]
     742:	e00c      	b.n	75e <schipp+0x1de>
     744:	f7ff fe9e 	bl	484 <chip_scroll_right>
     748:	e009      	b.n	75e <schipp+0x1de>
     74a:	f7ff fea1 	bl	490 <chip_scroll_left>
     74e:	e006      	b.n	75e <schipp+0x1de>
     750:	2301      	movs	r3, #1
     752:	f000 bcb1 	b.w	10b8 <schipp+0xb38>
     756:	2302      	movs	r3, #2
     758:	f000 bcae 	b.w	10b8 <schipp+0xb38>
     75c:	bf00      	nop
     75e:	f000 bc9f 	b.w	10a0 <schipp+0xb20>
     762:	4b39      	ldr	r3, [pc, #228]	; (848 <schipp+0x2c8>)
     764:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     768:	021b      	lsls	r3, r3, #8
     76a:	4a37      	ldr	r2, [pc, #220]	; (848 <schipp+0x2c8>)
     76c:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     770:	4313      	orrs	r3, r2
     772:	005b      	lsls	r3, r3, #1
     774:	b29b      	uxth	r3, r3
     776:	f3c3 030b 	ubfx	r3, r3, #0, #12
     77a:	b29a      	uxth	r2, r3
     77c:	4b32      	ldr	r3, [pc, #200]	; (848 <schipp+0x2c8>)
     77e:	801a      	strh	r2, [r3, #0]
     780:	f000 bc98 	b.w	10b4 <schipp+0xb34>
     784:	4b30      	ldr	r3, [pc, #192]	; (848 <schipp+0x2c8>)
     786:	791b      	ldrb	r3, [r3, #4]
     788:	3301      	adds	r3, #1
     78a:	b2da      	uxtb	r2, r3
     78c:	4b2e      	ldr	r3, [pc, #184]	; (848 <schipp+0x2c8>)
     78e:	711a      	strb	r2, [r3, #4]
     790:	4b2d      	ldr	r3, [pc, #180]	; (848 <schipp+0x2c8>)
     792:	791b      	ldrb	r3, [r3, #4]
     794:	4618      	mov	r0, r3
     796:	4b2c      	ldr	r3, [pc, #176]	; (848 <schipp+0x2c8>)
     798:	8819      	ldrh	r1, [r3, #0]
     79a:	4a2b      	ldr	r2, [pc, #172]	; (848 <schipp+0x2c8>)
     79c:	f100 0314 	add.w	r3, r0, #20
     7a0:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     7a4:	4b28      	ldr	r3, [pc, #160]	; (848 <schipp+0x2c8>)
     7a6:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     7aa:	021b      	lsls	r3, r3, #8
     7ac:	4a26      	ldr	r2, [pc, #152]	; (848 <schipp+0x2c8>)
     7ae:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     7b2:	4313      	orrs	r3, r2
     7b4:	005b      	lsls	r3, r3, #1
     7b6:	b29b      	uxth	r3, r3
     7b8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     7bc:	b29a      	uxth	r2, r3
     7be:	4b22      	ldr	r3, [pc, #136]	; (848 <schipp+0x2c8>)
     7c0:	801a      	strh	r2, [r3, #0]
     7c2:	f000 bc77 	b.w	10b4 <schipp+0xb34>
     7c6:	7bbb      	ldrb	r3, [r7, #14]
     7c8:	4a1f      	ldr	r2, [pc, #124]	; (848 <schipp+0x2c8>)
     7ca:	4413      	add	r3, r2
     7cc:	795a      	ldrb	r2, [r3, #5]
     7ce:	4b1e      	ldr	r3, [pc, #120]	; (848 <schipp+0x2c8>)
     7d0:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     7d4:	429a      	cmp	r2, r3
     7d6:	f040 8466 	bne.w	10a6 <schipp+0xb26>
     7da:	4b1b      	ldr	r3, [pc, #108]	; (848 <schipp+0x2c8>)
     7dc:	881b      	ldrh	r3, [r3, #0]
     7de:	3302      	adds	r3, #2
     7e0:	b29a      	uxth	r2, r3
     7e2:	4b19      	ldr	r3, [pc, #100]	; (848 <schipp+0x2c8>)
     7e4:	801a      	strh	r2, [r3, #0]
     7e6:	f000 bc5e 	b.w	10a6 <schipp+0xb26>
     7ea:	7bbb      	ldrb	r3, [r7, #14]
     7ec:	4a16      	ldr	r2, [pc, #88]	; (848 <schipp+0x2c8>)
     7ee:	4413      	add	r3, r2
     7f0:	795a      	ldrb	r2, [r3, #5]
     7f2:	4b15      	ldr	r3, [pc, #84]	; (848 <schipp+0x2c8>)
     7f4:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     7f8:	429a      	cmp	r2, r3
     7fa:	f000 8457 	beq.w	10ac <schipp+0xb2c>
     7fe:	4b12      	ldr	r3, [pc, #72]	; (848 <schipp+0x2c8>)
     800:	881b      	ldrh	r3, [r3, #0]
     802:	3302      	adds	r3, #2
     804:	b29a      	uxth	r2, r3
     806:	4b10      	ldr	r3, [pc, #64]	; (848 <schipp+0x2c8>)
     808:	801a      	strh	r2, [r3, #0]
     80a:	f000 bc4f 	b.w	10ac <schipp+0xb2c>
     80e:	7bbb      	ldrb	r3, [r7, #14]
     810:	4a0d      	ldr	r2, [pc, #52]	; (848 <schipp+0x2c8>)
     812:	4413      	add	r3, r2
     814:	795a      	ldrb	r2, [r3, #5]
     816:	7b7b      	ldrb	r3, [r7, #13]
     818:	490b      	ldr	r1, [pc, #44]	; (848 <schipp+0x2c8>)
     81a:	440b      	add	r3, r1
     81c:	795b      	ldrb	r3, [r3, #5]
     81e:	429a      	cmp	r2, r3
     820:	f040 8447 	bne.w	10b2 <schipp+0xb32>
     824:	4b08      	ldr	r3, [pc, #32]	; (848 <schipp+0x2c8>)
     826:	881b      	ldrh	r3, [r3, #0]
     828:	3302      	adds	r3, #2
     82a:	b29a      	uxth	r2, r3
     82c:	4b06      	ldr	r3, [pc, #24]	; (848 <schipp+0x2c8>)
     82e:	801a      	strh	r2, [r3, #0]
     830:	f000 bc3f 	b.w	10b2 <schipp+0xb32>
     834:	7bbb      	ldrb	r3, [r7, #14]
     836:	4a04      	ldr	r2, [pc, #16]	; (848 <schipp+0x2c8>)
     838:	f892 1027 	ldrb.w	r1, [r2, #39]	; 0x27
     83c:	4a02      	ldr	r2, [pc, #8]	; (848 <schipp+0x2c8>)
     83e:	4413      	add	r3, r2
     840:	460a      	mov	r2, r1
     842:	715a      	strb	r2, [r3, #5]
     844:	f000 bc36 	b.w	10b4 <schipp+0xb34>
     848:	2000006c 	.word	0x2000006c
     84c:	2000050c 	.word	0x2000050c
     850:	7bbb      	ldrb	r3, [r7, #14]
     852:	4aaa      	ldr	r2, [pc, #680]	; (afc <schipp+0x57c>)
     854:	4413      	add	r3, r2
     856:	795b      	ldrb	r3, [r3, #5]
     858:	461a      	mov	r2, r3
     85a:	4ba8      	ldr	r3, [pc, #672]	; (afc <schipp+0x57c>)
     85c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     860:	4413      	add	r3, r2
     862:	2bff      	cmp	r3, #255	; 0xff
     864:	bfcc      	ite	gt
     866:	2301      	movgt	r3, #1
     868:	2300      	movle	r3, #0
     86a:	b2db      	uxtb	r3, r3
     86c:	73fb      	strb	r3, [r7, #15]
     86e:	7bbb      	ldrb	r3, [r7, #14]
     870:	7bba      	ldrb	r2, [r7, #14]
     872:	49a2      	ldr	r1, [pc, #648]	; (afc <schipp+0x57c>)
     874:	440a      	add	r2, r1
     876:	7951      	ldrb	r1, [r2, #5]
     878:	4aa0      	ldr	r2, [pc, #640]	; (afc <schipp+0x57c>)
     87a:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     87e:	440a      	add	r2, r1
     880:	b2d1      	uxtb	r1, r2
     882:	4a9e      	ldr	r2, [pc, #632]	; (afc <schipp+0x57c>)
     884:	4413      	add	r3, r2
     886:	460a      	mov	r2, r1
     888:	715a      	strb	r2, [r3, #5]
     88a:	4a9c      	ldr	r2, [pc, #624]	; (afc <schipp+0x57c>)
     88c:	7bfb      	ldrb	r3, [r7, #15]
     88e:	7513      	strb	r3, [r2, #20]
     890:	f000 bc10 	b.w	10b4 <schipp+0xb34>
     894:	4b99      	ldr	r3, [pc, #612]	; (afc <schipp+0x57c>)
     896:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     89a:	f003 030f 	and.w	r3, r3, #15
     89e:	2b0e      	cmp	r3, #14
     8a0:	f200 80ec 	bhi.w	a7c <schipp+0x4fc>
     8a4:	a201      	add	r2, pc, #4	; (adr r2, 8ac <schipp+0x32c>)
     8a6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     8aa:	bf00      	nop
     8ac:	000008e9 	.word	0x000008e9
     8b0:	000008fd 	.word	0x000008fd
     8b4:	0000091d 	.word	0x0000091d
     8b8:	0000093d 	.word	0x0000093d
     8bc:	0000095d 	.word	0x0000095d
     8c0:	000009a3 	.word	0x000009a3
     8c4:	000009e5 	.word	0x000009e5
     8c8:	00000a11 	.word	0x00000a11
     8cc:	00000a7d 	.word	0x00000a7d
     8d0:	00000a7d 	.word	0x00000a7d
     8d4:	00000a7d 	.word	0x00000a7d
     8d8:	00000a7d 	.word	0x00000a7d
     8dc:	00000a7d 	.word	0x00000a7d
     8e0:	00000a7d 	.word	0x00000a7d
     8e4:	00000a53 	.word	0x00000a53
     8e8:	7bbb      	ldrb	r3, [r7, #14]
     8ea:	7b7a      	ldrb	r2, [r7, #13]
     8ec:	4983      	ldr	r1, [pc, #524]	; (afc <schipp+0x57c>)
     8ee:	440a      	add	r2, r1
     8f0:	7951      	ldrb	r1, [r2, #5]
     8f2:	4a82      	ldr	r2, [pc, #520]	; (afc <schipp+0x57c>)
     8f4:	4413      	add	r3, r2
     8f6:	460a      	mov	r2, r1
     8f8:	715a      	strb	r2, [r3, #5]
     8fa:	e0c1      	b.n	a80 <schipp+0x500>
     8fc:	7bbb      	ldrb	r3, [r7, #14]
     8fe:	7bba      	ldrb	r2, [r7, #14]
     900:	497e      	ldr	r1, [pc, #504]	; (afc <schipp+0x57c>)
     902:	440a      	add	r2, r1
     904:	7951      	ldrb	r1, [r2, #5]
     906:	7b7a      	ldrb	r2, [r7, #13]
     908:	487c      	ldr	r0, [pc, #496]	; (afc <schipp+0x57c>)
     90a:	4402      	add	r2, r0
     90c:	7952      	ldrb	r2, [r2, #5]
     90e:	430a      	orrs	r2, r1
     910:	b2d1      	uxtb	r1, r2
     912:	4a7a      	ldr	r2, [pc, #488]	; (afc <schipp+0x57c>)
     914:	4413      	add	r3, r2
     916:	460a      	mov	r2, r1
     918:	715a      	strb	r2, [r3, #5]
     91a:	e0b1      	b.n	a80 <schipp+0x500>
     91c:	7bbb      	ldrb	r3, [r7, #14]
     91e:	7bba      	ldrb	r2, [r7, #14]
     920:	4976      	ldr	r1, [pc, #472]	; (afc <schipp+0x57c>)
     922:	440a      	add	r2, r1
     924:	7951      	ldrb	r1, [r2, #5]
     926:	7b7a      	ldrb	r2, [r7, #13]
     928:	4874      	ldr	r0, [pc, #464]	; (afc <schipp+0x57c>)
     92a:	4402      	add	r2, r0
     92c:	7952      	ldrb	r2, [r2, #5]
     92e:	400a      	ands	r2, r1
     930:	b2d1      	uxtb	r1, r2
     932:	4a72      	ldr	r2, [pc, #456]	; (afc <schipp+0x57c>)
     934:	4413      	add	r3, r2
     936:	460a      	mov	r2, r1
     938:	715a      	strb	r2, [r3, #5]
     93a:	e0a1      	b.n	a80 <schipp+0x500>
     93c:	7bbb      	ldrb	r3, [r7, #14]
     93e:	7bba      	ldrb	r2, [r7, #14]
     940:	496e      	ldr	r1, [pc, #440]	; (afc <schipp+0x57c>)
     942:	440a      	add	r2, r1
     944:	7951      	ldrb	r1, [r2, #5]
     946:	7b7a      	ldrb	r2, [r7, #13]
     948:	486c      	ldr	r0, [pc, #432]	; (afc <schipp+0x57c>)
     94a:	4402      	add	r2, r0
     94c:	7952      	ldrb	r2, [r2, #5]
     94e:	404a      	eors	r2, r1
     950:	b2d1      	uxtb	r1, r2
     952:	4a6a      	ldr	r2, [pc, #424]	; (afc <schipp+0x57c>)
     954:	4413      	add	r3, r2
     956:	460a      	mov	r2, r1
     958:	715a      	strb	r2, [r3, #5]
     95a:	e091      	b.n	a80 <schipp+0x500>
     95c:	7bbb      	ldrb	r3, [r7, #14]
     95e:	4a67      	ldr	r2, [pc, #412]	; (afc <schipp+0x57c>)
     960:	4413      	add	r3, r2
     962:	795b      	ldrb	r3, [r3, #5]
     964:	4619      	mov	r1, r3
     966:	7b7b      	ldrb	r3, [r7, #13]
     968:	4a64      	ldr	r2, [pc, #400]	; (afc <schipp+0x57c>)
     96a:	4413      	add	r3, r2
     96c:	795b      	ldrb	r3, [r3, #5]
     96e:	440b      	add	r3, r1
     970:	2bff      	cmp	r3, #255	; 0xff
     972:	bfcc      	ite	gt
     974:	2301      	movgt	r3, #1
     976:	2300      	movle	r3, #0
     978:	b2db      	uxtb	r3, r3
     97a:	73fb      	strb	r3, [r7, #15]
     97c:	7bbb      	ldrb	r3, [r7, #14]
     97e:	7bba      	ldrb	r2, [r7, #14]
     980:	495e      	ldr	r1, [pc, #376]	; (afc <schipp+0x57c>)
     982:	440a      	add	r2, r1
     984:	7951      	ldrb	r1, [r2, #5]
     986:	7b7a      	ldrb	r2, [r7, #13]
     988:	485c      	ldr	r0, [pc, #368]	; (afc <schipp+0x57c>)
     98a:	4402      	add	r2, r0
     98c:	7952      	ldrb	r2, [r2, #5]
     98e:	440a      	add	r2, r1
     990:	b2d1      	uxtb	r1, r2
     992:	4a5a      	ldr	r2, [pc, #360]	; (afc <schipp+0x57c>)
     994:	4413      	add	r3, r2
     996:	460a      	mov	r2, r1
     998:	715a      	strb	r2, [r3, #5]
     99a:	4a58      	ldr	r2, [pc, #352]	; (afc <schipp+0x57c>)
     99c:	7bfb      	ldrb	r3, [r7, #15]
     99e:	7513      	strb	r3, [r2, #20]
     9a0:	e06e      	b.n	a80 <schipp+0x500>
     9a2:	7bbb      	ldrb	r3, [r7, #14]
     9a4:	4a55      	ldr	r2, [pc, #340]	; (afc <schipp+0x57c>)
     9a6:	4413      	add	r3, r2
     9a8:	795a      	ldrb	r2, [r3, #5]
     9aa:	7b7b      	ldrb	r3, [r7, #13]
     9ac:	4953      	ldr	r1, [pc, #332]	; (afc <schipp+0x57c>)
     9ae:	440b      	add	r3, r1
     9b0:	795b      	ldrb	r3, [r3, #5]
     9b2:	429a      	cmp	r2, r3
     9b4:	bf2c      	ite	cs
     9b6:	2301      	movcs	r3, #1
     9b8:	2300      	movcc	r3, #0
     9ba:	b2db      	uxtb	r3, r3
     9bc:	73fb      	strb	r3, [r7, #15]
     9be:	7bbb      	ldrb	r3, [r7, #14]
     9c0:	7bba      	ldrb	r2, [r7, #14]
     9c2:	494e      	ldr	r1, [pc, #312]	; (afc <schipp+0x57c>)
     9c4:	440a      	add	r2, r1
     9c6:	7951      	ldrb	r1, [r2, #5]
     9c8:	7b7a      	ldrb	r2, [r7, #13]
     9ca:	484c      	ldr	r0, [pc, #304]	; (afc <schipp+0x57c>)
     9cc:	4402      	add	r2, r0
     9ce:	7952      	ldrb	r2, [r2, #5]
     9d0:	1a8a      	subs	r2, r1, r2
     9d2:	b2d1      	uxtb	r1, r2
     9d4:	4a49      	ldr	r2, [pc, #292]	; (afc <schipp+0x57c>)
     9d6:	4413      	add	r3, r2
     9d8:	460a      	mov	r2, r1
     9da:	715a      	strb	r2, [r3, #5]
     9dc:	4a47      	ldr	r2, [pc, #284]	; (afc <schipp+0x57c>)
     9de:	7bfb      	ldrb	r3, [r7, #15]
     9e0:	7513      	strb	r3, [r2, #20]
     9e2:	e04d      	b.n	a80 <schipp+0x500>
     9e4:	7bbb      	ldrb	r3, [r7, #14]
     9e6:	4a45      	ldr	r2, [pc, #276]	; (afc <schipp+0x57c>)
     9e8:	4413      	add	r3, r2
     9ea:	795b      	ldrb	r3, [r3, #5]
     9ec:	f003 0301 	and.w	r3, r3, #1
     9f0:	73fb      	strb	r3, [r7, #15]
     9f2:	7bbb      	ldrb	r3, [r7, #14]
     9f4:	7bba      	ldrb	r2, [r7, #14]
     9f6:	4941      	ldr	r1, [pc, #260]	; (afc <schipp+0x57c>)
     9f8:	440a      	add	r2, r1
     9fa:	7952      	ldrb	r2, [r2, #5]
     9fc:	0852      	lsrs	r2, r2, #1
     9fe:	b2d1      	uxtb	r1, r2
     a00:	4a3e      	ldr	r2, [pc, #248]	; (afc <schipp+0x57c>)
     a02:	4413      	add	r3, r2
     a04:	460a      	mov	r2, r1
     a06:	715a      	strb	r2, [r3, #5]
     a08:	4a3c      	ldr	r2, [pc, #240]	; (afc <schipp+0x57c>)
     a0a:	7bfb      	ldrb	r3, [r7, #15]
     a0c:	7513      	strb	r3, [r2, #20]
     a0e:	e037      	b.n	a80 <schipp+0x500>
     a10:	7b7b      	ldrb	r3, [r7, #13]
     a12:	4a3a      	ldr	r2, [pc, #232]	; (afc <schipp+0x57c>)
     a14:	4413      	add	r3, r2
     a16:	795a      	ldrb	r2, [r3, #5]
     a18:	7bbb      	ldrb	r3, [r7, #14]
     a1a:	4938      	ldr	r1, [pc, #224]	; (afc <schipp+0x57c>)
     a1c:	440b      	add	r3, r1
     a1e:	795b      	ldrb	r3, [r3, #5]
     a20:	429a      	cmp	r2, r3
     a22:	bf2c      	ite	cs
     a24:	2301      	movcs	r3, #1
     a26:	2300      	movcc	r3, #0
     a28:	b2db      	uxtb	r3, r3
     a2a:	73fb      	strb	r3, [r7, #15]
     a2c:	7bbb      	ldrb	r3, [r7, #14]
     a2e:	7b7a      	ldrb	r2, [r7, #13]
     a30:	4932      	ldr	r1, [pc, #200]	; (afc <schipp+0x57c>)
     a32:	440a      	add	r2, r1
     a34:	7951      	ldrb	r1, [r2, #5]
     a36:	7bba      	ldrb	r2, [r7, #14]
     a38:	4830      	ldr	r0, [pc, #192]	; (afc <schipp+0x57c>)
     a3a:	4402      	add	r2, r0
     a3c:	7952      	ldrb	r2, [r2, #5]
     a3e:	1a8a      	subs	r2, r1, r2
     a40:	b2d1      	uxtb	r1, r2
     a42:	4a2e      	ldr	r2, [pc, #184]	; (afc <schipp+0x57c>)
     a44:	4413      	add	r3, r2
     a46:	460a      	mov	r2, r1
     a48:	715a      	strb	r2, [r3, #5]
     a4a:	4a2c      	ldr	r2, [pc, #176]	; (afc <schipp+0x57c>)
     a4c:	7bfb      	ldrb	r3, [r7, #15]
     a4e:	7513      	strb	r3, [r2, #20]
     a50:	e016      	b.n	a80 <schipp+0x500>
     a52:	7bbb      	ldrb	r3, [r7, #14]
     a54:	4a29      	ldr	r2, [pc, #164]	; (afc <schipp+0x57c>)
     a56:	4413      	add	r3, r2
     a58:	795b      	ldrb	r3, [r3, #5]
     a5a:	09db      	lsrs	r3, r3, #7
     a5c:	73fb      	strb	r3, [r7, #15]
     a5e:	7bbb      	ldrb	r3, [r7, #14]
     a60:	7bba      	ldrb	r2, [r7, #14]
     a62:	4926      	ldr	r1, [pc, #152]	; (afc <schipp+0x57c>)
     a64:	440a      	add	r2, r1
     a66:	7952      	ldrb	r2, [r2, #5]
     a68:	0052      	lsls	r2, r2, #1
     a6a:	b2d1      	uxtb	r1, r2
     a6c:	4a23      	ldr	r2, [pc, #140]	; (afc <schipp+0x57c>)
     a6e:	4413      	add	r3, r2
     a70:	460a      	mov	r2, r1
     a72:	715a      	strb	r2, [r3, #5]
     a74:	4a21      	ldr	r2, [pc, #132]	; (afc <schipp+0x57c>)
     a76:	7bfb      	ldrb	r3, [r7, #15]
     a78:	7513      	strb	r3, [r2, #20]
     a7a:	e001      	b.n	a80 <schipp+0x500>
     a7c:	2302      	movs	r3, #2
     a7e:	e31b      	b.n	10b8 <schipp+0xb38>
     a80:	e318      	b.n	10b4 <schipp+0xb34>
     a82:	4b1e      	ldr	r3, [pc, #120]	; (afc <schipp+0x57c>)
     a84:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     a88:	f003 030f 	and.w	r3, r3, #15
     a8c:	2b0f      	cmp	r3, #15
     a8e:	f200 813d 	bhi.w	d0c <schipp+0x78c>
     a92:	a201      	add	r2, pc, #4	; (adr r2, a98 <schipp+0x518>)
     a94:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a98:	00000ad9 	.word	0x00000ad9
     a9c:	00000b01 	.word	0x00000b01
     aa0:	00000b1d 	.word	0x00000b1d
     aa4:	00000b73 	.word	0x00000b73
     aa8:	00000b91 	.word	0x00000b91
     aac:	00000ba1 	.word	0x00000ba1
     ab0:	00000bbf 	.word	0x00000bbf
     ab4:	00000be7 	.word	0x00000be7
     ab8:	00000c09 	.word	0x00000c09
     abc:	00000c15 	.word	0x00000c15
     ac0:	00000c21 	.word	0x00000c21
     ac4:	00000c4b 	.word	0x00000c4b
     ac8:	00000c79 	.word	0x00000c79
     acc:	00000ca3 	.word	0x00000ca3
     ad0:	00000ccd 	.word	0x00000ccd
     ad4:	00000cf7 	.word	0x00000cf7
     ad8:	7bbb      	ldrb	r3, [r7, #14]
     ada:	4a08      	ldr	r2, [pc, #32]	; (afc <schipp+0x57c>)
     adc:	4413      	add	r3, r2
     ade:	795a      	ldrb	r2, [r3, #5]
     ae0:	7b7b      	ldrb	r3, [r7, #13]
     ae2:	4906      	ldr	r1, [pc, #24]	; (afc <schipp+0x57c>)
     ae4:	440b      	add	r3, r1
     ae6:	795b      	ldrb	r3, [r3, #5]
     ae8:	429a      	cmp	r2, r3
     aea:	f000 8111 	beq.w	d10 <schipp+0x790>
     aee:	4b03      	ldr	r3, [pc, #12]	; (afc <schipp+0x57c>)
     af0:	881b      	ldrh	r3, [r3, #0]
     af2:	3302      	adds	r3, #2
     af4:	b29a      	uxth	r2, r3
     af6:	4b01      	ldr	r3, [pc, #4]	; (afc <schipp+0x57c>)
     af8:	801a      	strh	r2, [r3, #0]
     afa:	e109      	b.n	d10 <schipp+0x790>
     afc:	2000006c 	.word	0x2000006c
     b00:	7bbb      	ldrb	r3, [r7, #14]
     b02:	4aa2      	ldr	r2, [pc, #648]	; (d8c <schipp+0x80c>)
     b04:	4413      	add	r3, r2
     b06:	795b      	ldrb	r3, [r3, #5]
     b08:	4618      	mov	r0, r3
     b0a:	7b7b      	ldrb	r3, [r7, #13]
     b0c:	4a9f      	ldr	r2, [pc, #636]	; (d8c <schipp+0x80c>)
     b0e:	4413      	add	r3, r2
     b10:	795b      	ldrb	r3, [r3, #5]
     b12:	2200      	movs	r2, #0
     b14:	4619      	mov	r1, r3
     b16:	f7ff fccb 	bl	4b0 <key_tone>
     b1a:	e0fe      	b.n	d1a <schipp+0x79a>
     b1c:	2002      	movs	r0, #2
     b1e:	f002 fe93 	bl	3848 <select_font>
     b22:	7bbb      	ldrb	r3, [r7, #14]
     b24:	4a99      	ldr	r2, [pc, #612]	; (d8c <schipp+0x80c>)
     b26:	4413      	add	r3, r2
     b28:	7958      	ldrb	r0, [r3, #5]
     b2a:	7b7b      	ldrb	r3, [r7, #13]
     b2c:	4a97      	ldr	r2, [pc, #604]	; (d8c <schipp+0x80c>)
     b2e:	4413      	add	r3, r2
     b30:	795b      	ldrb	r3, [r3, #5]
     b32:	4619      	mov	r1, r3
     b34:	f002 ffa6 	bl	3a84 <set_cursor>
     b38:	4b94      	ldr	r3, [pc, #592]	; (d8c <schipp+0x80c>)
     b3a:	885b      	ldrh	r3, [r3, #2]
     b3c:	1c5a      	adds	r2, r3, #1
     b3e:	b291      	uxth	r1, r2
     b40:	4a92      	ldr	r2, [pc, #584]	; (d8c <schipp+0x80c>)
     b42:	8051      	strh	r1, [r2, #2]
     b44:	461a      	mov	r2, r3
     b46:	4b92      	ldr	r3, [pc, #584]	; (d90 <schipp+0x810>)
     b48:	5c9b      	ldrb	r3, [r3, r2]
     b4a:	73fb      	strb	r3, [r7, #15]
     b4c:	e00d      	b.n	b6a <schipp+0x5ea>
     b4e:	7bfb      	ldrb	r3, [r7, #15]
     b50:	4618      	mov	r0, r3
     b52:	f002 ff0b 	bl	396c <put_char>
     b56:	4b8d      	ldr	r3, [pc, #564]	; (d8c <schipp+0x80c>)
     b58:	885b      	ldrh	r3, [r3, #2]
     b5a:	1c5a      	adds	r2, r3, #1
     b5c:	b291      	uxth	r1, r2
     b5e:	4a8b      	ldr	r2, [pc, #556]	; (d8c <schipp+0x80c>)
     b60:	8051      	strh	r1, [r2, #2]
     b62:	461a      	mov	r2, r3
     b64:	4b8a      	ldr	r3, [pc, #552]	; (d90 <schipp+0x810>)
     b66:	5c9b      	ldrb	r3, [r3, r2]
     b68:	73fb      	strb	r3, [r7, #15]
     b6a:	7bfb      	ldrb	r3, [r7, #15]
     b6c:	2b00      	cmp	r3, #0
     b6e:	d1ee      	bne.n	b4e <schipp+0x5ce>
     b70:	e0d3      	b.n	d1a <schipp+0x79a>
     b72:	7bbb      	ldrb	r3, [r7, #14]
     b74:	4a85      	ldr	r2, [pc, #532]	; (d8c <schipp+0x80c>)
     b76:	4413      	add	r3, r2
     b78:	795b      	ldrb	r3, [r3, #5]
     b7a:	4618      	mov	r0, r3
     b7c:	7b7b      	ldrb	r3, [r7, #13]
     b7e:	4a83      	ldr	r2, [pc, #524]	; (d8c <schipp+0x80c>)
     b80:	4413      	add	r3, r2
     b82:	795b      	ldrb	r3, [r3, #5]
     b84:	4619      	mov	r1, r3
     b86:	2303      	movs	r3, #3
     b88:	2200      	movs	r2, #0
     b8a:	f000 ff2b 	bl	19e4 <gfx_blit>
     b8e:	e0c4      	b.n	d1a <schipp+0x79a>
     b90:	7bbb      	ldrb	r3, [r7, #14]
     b92:	011a      	lsls	r2, r3, #4
     b94:	7b7b      	ldrb	r3, [r7, #13]
     b96:	4413      	add	r3, r2
     b98:	4618      	mov	r0, r3
     b9a:	f7ff fc94 	bl	4c6 <noise>
     b9e:	e0bc      	b.n	d1a <schipp+0x79a>
     ba0:	7bbb      	ldrb	r3, [r7, #14]
     ba2:	4a7a      	ldr	r2, [pc, #488]	; (d8c <schipp+0x80c>)
     ba4:	4413      	add	r3, r2
     ba6:	795b      	ldrb	r3, [r3, #5]
     ba8:	4618      	mov	r0, r3
     baa:	7b7b      	ldrb	r3, [r7, #13]
     bac:	4a77      	ldr	r2, [pc, #476]	; (d8c <schipp+0x80c>)
     bae:	4413      	add	r3, r2
     bb0:	795b      	ldrb	r3, [r3, #5]
     bb2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     bb6:	4619      	mov	r1, r3
     bb8:	f7ff fc7a 	bl	4b0 <key_tone>
     bbc:	e0ad      	b.n	d1a <schipp+0x79a>
     bbe:	4b73      	ldr	r3, [pc, #460]	; (d8c <schipp+0x80c>)
     bc0:	791b      	ldrb	r3, [r3, #4]
     bc2:	3301      	adds	r3, #1
     bc4:	b2da      	uxtb	r2, r3
     bc6:	4b71      	ldr	r3, [pc, #452]	; (d8c <schipp+0x80c>)
     bc8:	711a      	strb	r2, [r3, #4]
     bca:	4b70      	ldr	r3, [pc, #448]	; (d8c <schipp+0x80c>)
     bcc:	791b      	ldrb	r3, [r3, #4]
     bce:	4618      	mov	r0, r3
     bd0:	7bbb      	ldrb	r3, [r7, #14]
     bd2:	4a6e      	ldr	r2, [pc, #440]	; (d8c <schipp+0x80c>)
     bd4:	4413      	add	r3, r2
     bd6:	795b      	ldrb	r3, [r3, #5]
     bd8:	b299      	uxth	r1, r3
     bda:	4a6c      	ldr	r2, [pc, #432]	; (d8c <schipp+0x80c>)
     bdc:	f100 0314 	add.w	r3, r0, #20
     be0:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     be4:	e099      	b.n	d1a <schipp+0x79a>
     be6:	7bba      	ldrb	r2, [r7, #14]
     be8:	4b68      	ldr	r3, [pc, #416]	; (d8c <schipp+0x80c>)
     bea:	791b      	ldrb	r3, [r3, #4]
     bec:	1e59      	subs	r1, r3, #1
     bee:	b2c8      	uxtb	r0, r1
     bf0:	4966      	ldr	r1, [pc, #408]	; (d8c <schipp+0x80c>)
     bf2:	7108      	strb	r0, [r1, #4]
     bf4:	4965      	ldr	r1, [pc, #404]	; (d8c <schipp+0x80c>)
     bf6:	3314      	adds	r3, #20
     bf8:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     bfc:	b2d9      	uxtb	r1, r3
     bfe:	4b63      	ldr	r3, [pc, #396]	; (d8c <schipp+0x80c>)
     c00:	4413      	add	r3, r2
     c02:	460a      	mov	r2, r1
     c04:	715a      	strb	r2, [r3, #5]
     c06:	e088      	b.n	d1a <schipp+0x79a>
     c08:	7bbb      	ldrb	r3, [r7, #14]
     c0a:	4a60      	ldr	r2, [pc, #384]	; (d8c <schipp+0x80c>)
     c0c:	4413      	add	r3, r2
     c0e:	22b4      	movs	r2, #180	; 0xb4
     c10:	715a      	strb	r2, [r3, #5]
     c12:	e082      	b.n	d1a <schipp+0x79a>
     c14:	7bbb      	ldrb	r3, [r7, #14]
     c16:	4a5d      	ldr	r2, [pc, #372]	; (d8c <schipp+0x80c>)
     c18:	4413      	add	r3, r2
     c1a:	2270      	movs	r2, #112	; 0x70
     c1c:	715a      	strb	r2, [r3, #5]
     c1e:	e07c      	b.n	d1a <schipp+0x79a>
     c20:	7bbb      	ldrb	r3, [r7, #14]
     c22:	7bba      	ldrb	r2, [r7, #14]
     c24:	4959      	ldr	r1, [pc, #356]	; (d8c <schipp+0x80c>)
     c26:	440a      	add	r2, r1
     c28:	7952      	ldrb	r2, [r2, #5]
     c2a:	b251      	sxtb	r1, r2
     c2c:	7b7a      	ldrb	r2, [r7, #13]
     c2e:	f002 0207 	and.w	r2, r2, #7
     c32:	2001      	movs	r0, #1
     c34:	fa00 f202 	lsl.w	r2, r0, r2
     c38:	b252      	sxtb	r2, r2
     c3a:	430a      	orrs	r2, r1
     c3c:	b252      	sxtb	r2, r2
     c3e:	b2d1      	uxtb	r1, r2
     c40:	4a52      	ldr	r2, [pc, #328]	; (d8c <schipp+0x80c>)
     c42:	4413      	add	r3, r2
     c44:	460a      	mov	r2, r1
     c46:	715a      	strb	r2, [r3, #5]
     c48:	e067      	b.n	d1a <schipp+0x79a>
     c4a:	7bbb      	ldrb	r3, [r7, #14]
     c4c:	7bba      	ldrb	r2, [r7, #14]
     c4e:	494f      	ldr	r1, [pc, #316]	; (d8c <schipp+0x80c>)
     c50:	440a      	add	r2, r1
     c52:	7952      	ldrb	r2, [r2, #5]
     c54:	b251      	sxtb	r1, r2
     c56:	7b7a      	ldrb	r2, [r7, #13]
     c58:	f002 0207 	and.w	r2, r2, #7
     c5c:	2001      	movs	r0, #1
     c5e:	fa00 f202 	lsl.w	r2, r0, r2
     c62:	b252      	sxtb	r2, r2
     c64:	43d2      	mvns	r2, r2
     c66:	b252      	sxtb	r2, r2
     c68:	400a      	ands	r2, r1
     c6a:	b252      	sxtb	r2, r2
     c6c:	b2d1      	uxtb	r1, r2
     c6e:	4a47      	ldr	r2, [pc, #284]	; (d8c <schipp+0x80c>)
     c70:	4413      	add	r3, r2
     c72:	460a      	mov	r2, r1
     c74:	715a      	strb	r2, [r3, #5]
     c76:	e050      	b.n	d1a <schipp+0x79a>
     c78:	7bbb      	ldrb	r3, [r7, #14]
     c7a:	7bba      	ldrb	r2, [r7, #14]
     c7c:	4943      	ldr	r1, [pc, #268]	; (d8c <schipp+0x80c>)
     c7e:	440a      	add	r2, r1
     c80:	7952      	ldrb	r2, [r2, #5]
     c82:	b251      	sxtb	r1, r2
     c84:	7b7a      	ldrb	r2, [r7, #13]
     c86:	f002 0207 	and.w	r2, r2, #7
     c8a:	2001      	movs	r0, #1
     c8c:	fa00 f202 	lsl.w	r2, r0, r2
     c90:	b252      	sxtb	r2, r2
     c92:	404a      	eors	r2, r1
     c94:	b252      	sxtb	r2, r2
     c96:	b2d1      	uxtb	r1, r2
     c98:	4a3c      	ldr	r2, [pc, #240]	; (d8c <schipp+0x80c>)
     c9a:	4413      	add	r3, r2
     c9c:	460a      	mov	r2, r1
     c9e:	715a      	strb	r2, [r3, #5]
     ca0:	e03b      	b.n	d1a <schipp+0x79a>
     ca2:	7bbb      	ldrb	r3, [r7, #14]
     ca4:	4a39      	ldr	r2, [pc, #228]	; (d8c <schipp+0x80c>)
     ca6:	4413      	add	r3, r2
     ca8:	795b      	ldrb	r3, [r3, #5]
     caa:	461a      	mov	r2, r3
     cac:	7b7b      	ldrb	r3, [r7, #13]
     cae:	f003 0307 	and.w	r3, r3, #7
     cb2:	fa42 f303 	asr.w	r3, r2, r3
     cb6:	f003 0301 	and.w	r3, r3, #1
     cba:	2b00      	cmp	r3, #0
     cbc:	d02a      	beq.n	d14 <schipp+0x794>
     cbe:	4b33      	ldr	r3, [pc, #204]	; (d8c <schipp+0x80c>)
     cc0:	881b      	ldrh	r3, [r3, #0]
     cc2:	3302      	adds	r3, #2
     cc4:	b29a      	uxth	r2, r3
     cc6:	4b31      	ldr	r3, [pc, #196]	; (d8c <schipp+0x80c>)
     cc8:	801a      	strh	r2, [r3, #0]
     cca:	e023      	b.n	d14 <schipp+0x794>
     ccc:	7bbb      	ldrb	r3, [r7, #14]
     cce:	4a2f      	ldr	r2, [pc, #188]	; (d8c <schipp+0x80c>)
     cd0:	4413      	add	r3, r2
     cd2:	795b      	ldrb	r3, [r3, #5]
     cd4:	461a      	mov	r2, r3
     cd6:	7b7b      	ldrb	r3, [r7, #13]
     cd8:	f003 0307 	and.w	r3, r3, #7
     cdc:	fa42 f303 	asr.w	r3, r2, r3
     ce0:	f003 0301 	and.w	r3, r3, #1
     ce4:	2b00      	cmp	r3, #0
     ce6:	d117      	bne.n	d18 <schipp+0x798>
     ce8:	4b28      	ldr	r3, [pc, #160]	; (d8c <schipp+0x80c>)
     cea:	881b      	ldrh	r3, [r3, #0]
     cec:	3302      	adds	r3, #2
     cee:	b29a      	uxth	r2, r3
     cf0:	4b26      	ldr	r3, [pc, #152]	; (d8c <schipp+0x80c>)
     cf2:	801a      	strh	r2, [r3, #0]
     cf4:	e010      	b.n	d18 <schipp+0x798>
     cf6:	7bbb      	ldrb	r3, [r7, #14]
     cf8:	7b7a      	ldrb	r2, [r7, #13]
     cfa:	4611      	mov	r1, r2
     cfc:	4618      	mov	r0, r3
     cfe:	f001 f8ab 	bl	1e58 <gfx_get_pixel>
     d02:	4603      	mov	r3, r0
     d04:	461a      	mov	r2, r3
     d06:	4b21      	ldr	r3, [pc, #132]	; (d8c <schipp+0x80c>)
     d08:	751a      	strb	r2, [r3, #20]
     d0a:	e006      	b.n	d1a <schipp+0x79a>
     d0c:	2302      	movs	r3, #2
     d0e:	e1d3      	b.n	10b8 <schipp+0xb38>
     d10:	bf00      	nop
     d12:	e1cf      	b.n	10b4 <schipp+0xb34>
     d14:	bf00      	nop
     d16:	e1cd      	b.n	10b4 <schipp+0xb34>
     d18:	bf00      	nop
     d1a:	e1cb      	b.n	10b4 <schipp+0xb34>
     d1c:	4b1b      	ldr	r3, [pc, #108]	; (d8c <schipp+0x80c>)
     d1e:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     d22:	021b      	lsls	r3, r3, #8
     d24:	4a19      	ldr	r2, [pc, #100]	; (d8c <schipp+0x80c>)
     d26:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     d2a:	4313      	orrs	r3, r2
     d2c:	005b      	lsls	r3, r3, #1
     d2e:	b29b      	uxth	r3, r3
     d30:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d34:	b29a      	uxth	r2, r3
     d36:	4b15      	ldr	r3, [pc, #84]	; (d8c <schipp+0x80c>)
     d38:	805a      	strh	r2, [r3, #2]
     d3a:	e1bb      	b.n	10b4 <schipp+0xb34>
     d3c:	4b13      	ldr	r3, [pc, #76]	; (d8c <schipp+0x80c>)
     d3e:	795b      	ldrb	r3, [r3, #5]
     d40:	b29b      	uxth	r3, r3
     d42:	005b      	lsls	r3, r3, #1
     d44:	b29a      	uxth	r2, r3
     d46:	4b11      	ldr	r3, [pc, #68]	; (d8c <schipp+0x80c>)
     d48:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     d4c:	021b      	lsls	r3, r3, #8
     d4e:	490f      	ldr	r1, [pc, #60]	; (d8c <schipp+0x80c>)
     d50:	f891 1027 	ldrb.w	r1, [r1, #39]	; 0x27
     d54:	430b      	orrs	r3, r1
     d56:	005b      	lsls	r3, r3, #1
     d58:	b29b      	uxth	r3, r3
     d5a:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d5e:	b29b      	uxth	r3, r3
     d60:	4413      	add	r3, r2
     d62:	b29a      	uxth	r2, r3
     d64:	4b09      	ldr	r3, [pc, #36]	; (d8c <schipp+0x80c>)
     d66:	801a      	strh	r2, [r3, #0]
     d68:	e1a4      	b.n	10b4 <schipp+0xb34>
     d6a:	7bbc      	ldrb	r4, [r7, #14]
     d6c:	f7ff fbe6 	bl	53c <rand>
     d70:	4603      	mov	r3, r0
     d72:	b25a      	sxtb	r2, r3
     d74:	4b05      	ldr	r3, [pc, #20]	; (d8c <schipp+0x80c>)
     d76:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d7a:	b25b      	sxtb	r3, r3
     d7c:	4013      	ands	r3, r2
     d7e:	b25b      	sxtb	r3, r3
     d80:	b2da      	uxtb	r2, r3
     d82:	4b02      	ldr	r3, [pc, #8]	; (d8c <schipp+0x80c>)
     d84:	4423      	add	r3, r4
     d86:	715a      	strb	r2, [r3, #5]
     d88:	e194      	b.n	10b4 <schipp+0xb34>
     d8a:	bf00      	nop
     d8c:	2000006c 	.word	0x2000006c
     d90:	2000050c 	.word	0x2000050c
     d94:	4ba6      	ldr	r3, [pc, #664]	; (1030 <schipp+0xab0>)
     d96:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d9a:	f003 030f 	and.w	r3, r3, #15
     d9e:	73fb      	strb	r3, [r7, #15]
     da0:	7bfb      	ldrb	r3, [r7, #15]
     da2:	2b00      	cmp	r3, #0
     da4:	d11b      	bne.n	dde <schipp+0x85e>
     da6:	4ba2      	ldr	r3, [pc, #648]	; (1030 <schipp+0xab0>)
     da8:	885b      	ldrh	r3, [r3, #2]
     daa:	4aa2      	ldr	r2, [pc, #648]	; (1034 <schipp+0xab4>)
     dac:	2120      	movs	r1, #32
     dae:	4618      	mov	r0, r3
     db0:	f7ff fb92 	bl	4d8 <load_block>
     db4:	7bbb      	ldrb	r3, [r7, #14]
     db6:	4a9e      	ldr	r2, [pc, #632]	; (1030 <schipp+0xab0>)
     db8:	4413      	add	r3, r2
     dba:	795b      	ldrb	r3, [r3, #5]
     dbc:	b25b      	sxtb	r3, r3
     dbe:	4618      	mov	r0, r3
     dc0:	7b7b      	ldrb	r3, [r7, #13]
     dc2:	4a9b      	ldr	r2, [pc, #620]	; (1030 <schipp+0xab0>)
     dc4:	4413      	add	r3, r2
     dc6:	795b      	ldrb	r3, [r3, #5]
     dc8:	b25b      	sxtb	r3, r3
     dca:	4619      	mov	r1, r3
     dcc:	4b99      	ldr	r3, [pc, #612]	; (1034 <schipp+0xab4>)
     dce:	2220      	movs	r2, #32
     dd0:	f7ff fb98 	bl	504 <put_big_sprite>
     dd4:	4603      	mov	r3, r0
     dd6:	b2da      	uxtb	r2, r3
     dd8:	4b95      	ldr	r3, [pc, #596]	; (1030 <schipp+0xab0>)
     dda:	751a      	strb	r2, [r3, #20]
     ddc:	e16a      	b.n	10b4 <schipp+0xb34>
     dde:	4b94      	ldr	r3, [pc, #592]	; (1030 <schipp+0xab0>)
     de0:	885b      	ldrh	r3, [r3, #2]
     de2:	4618      	mov	r0, r3
     de4:	7bfb      	ldrb	r3, [r7, #15]
     de6:	4a93      	ldr	r2, [pc, #588]	; (1034 <schipp+0xab4>)
     de8:	4619      	mov	r1, r3
     dea:	f7ff fb75 	bl	4d8 <load_block>
     dee:	7bbb      	ldrb	r3, [r7, #14]
     df0:	4a8f      	ldr	r2, [pc, #572]	; (1030 <schipp+0xab0>)
     df2:	4413      	add	r3, r2
     df4:	795b      	ldrb	r3, [r3, #5]
     df6:	b25b      	sxtb	r3, r3
     df8:	4618      	mov	r0, r3
     dfa:	7b7b      	ldrb	r3, [r7, #13]
     dfc:	4a8c      	ldr	r2, [pc, #560]	; (1030 <schipp+0xab0>)
     dfe:	4413      	add	r3, r2
     e00:	795b      	ldrb	r3, [r3, #5]
     e02:	b25b      	sxtb	r3, r3
     e04:	4619      	mov	r1, r3
     e06:	7bfa      	ldrb	r2, [r7, #15]
     e08:	4b8a      	ldr	r3, [pc, #552]	; (1034 <schipp+0xab4>)
     e0a:	9300      	str	r3, [sp, #0]
     e0c:	4613      	mov	r3, r2
     e0e:	2208      	movs	r2, #8
     e10:	f001 f850 	bl	1eb4 <gfx_sprite>
     e14:	4603      	mov	r3, r0
     e16:	b2da      	uxtb	r2, r3
     e18:	4b85      	ldr	r3, [pc, #532]	; (1030 <schipp+0xab0>)
     e1a:	751a      	strb	r2, [r3, #20]
     e1c:	e14a      	b.n	10b4 <schipp+0xb34>
     e1e:	4b84      	ldr	r3, [pc, #528]	; (1030 <schipp+0xab0>)
     e20:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e24:	2b9e      	cmp	r3, #158	; 0x9e
     e26:	d002      	beq.n	e2e <schipp+0x8ae>
     e28:	2ba1      	cmp	r3, #161	; 0xa1
     e2a:	d012      	beq.n	e52 <schipp+0x8d2>
     e2c:	e023      	b.n	e76 <schipp+0x8f6>
     e2e:	7bbb      	ldrb	r3, [r7, #14]
     e30:	4a7f      	ldr	r2, [pc, #508]	; (1030 <schipp+0xab0>)
     e32:	4413      	add	r3, r2
     e34:	795b      	ldrb	r3, [r3, #5]
     e36:	b29b      	uxth	r3, r3
     e38:	4618      	mov	r0, r3
     e3a:	f003 fa93 	bl	4364 <btn_query_down>
     e3e:	4603      	mov	r3, r0
     e40:	2b00      	cmp	r3, #0
     e42:	d01a      	beq.n	e7a <schipp+0x8fa>
     e44:	4b7a      	ldr	r3, [pc, #488]	; (1030 <schipp+0xab0>)
     e46:	881b      	ldrh	r3, [r3, #0]
     e48:	3302      	adds	r3, #2
     e4a:	b29a      	uxth	r2, r3
     e4c:	4b78      	ldr	r3, [pc, #480]	; (1030 <schipp+0xab0>)
     e4e:	801a      	strh	r2, [r3, #0]
     e50:	e013      	b.n	e7a <schipp+0x8fa>
     e52:	7bbb      	ldrb	r3, [r7, #14]
     e54:	4a76      	ldr	r2, [pc, #472]	; (1030 <schipp+0xab0>)
     e56:	4413      	add	r3, r2
     e58:	795b      	ldrb	r3, [r3, #5]
     e5a:	b29b      	uxth	r3, r3
     e5c:	4618      	mov	r0, r3
     e5e:	f003 fa81 	bl	4364 <btn_query_down>
     e62:	4603      	mov	r3, r0
     e64:	2b00      	cmp	r3, #0
     e66:	d10a      	bne.n	e7e <schipp+0x8fe>
     e68:	4b71      	ldr	r3, [pc, #452]	; (1030 <schipp+0xab0>)
     e6a:	881b      	ldrh	r3, [r3, #0]
     e6c:	3302      	adds	r3, #2
     e6e:	b29a      	uxth	r2, r3
     e70:	4b6f      	ldr	r3, [pc, #444]	; (1030 <schipp+0xab0>)
     e72:	801a      	strh	r2, [r3, #0]
     e74:	e003      	b.n	e7e <schipp+0x8fe>
     e76:	2302      	movs	r3, #2
     e78:	e11e      	b.n	10b8 <schipp+0xb38>
     e7a:	bf00      	nop
     e7c:	e11a      	b.n	10b4 <schipp+0xb34>
     e7e:	bf00      	nop
     e80:	e118      	b.n	10b4 <schipp+0xb34>
     e82:	4b6b      	ldr	r3, [pc, #428]	; (1030 <schipp+0xab0>)
     e84:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e88:	2b29      	cmp	r3, #41	; 0x29
     e8a:	d05d      	beq.n	f48 <schipp+0x9c8>
     e8c:	2b29      	cmp	r3, #41	; 0x29
     e8e:	dc0d      	bgt.n	eac <schipp+0x92c>
     e90:	2b15      	cmp	r3, #21
     e92:	d037      	beq.n	f04 <schipp+0x984>
     e94:	2b15      	cmp	r3, #21
     e96:	dc04      	bgt.n	ea2 <schipp+0x922>
     e98:	2b07      	cmp	r3, #7
     e9a:	d01b      	beq.n	ed4 <schipp+0x954>
     e9c:	2b0a      	cmp	r3, #10
     e9e:	d026      	beq.n	eee <schipp+0x96e>
     ea0:	e0fb      	b.n	109a <schipp+0xb1a>
     ea2:	2b18      	cmp	r3, #24
     ea4:	d03a      	beq.n	f1c <schipp+0x99c>
     ea6:	2b1e      	cmp	r3, #30
     ea8:	d042      	beq.n	f30 <schipp+0x9b0>
     eaa:	e0f6      	b.n	109a <schipp+0xb1a>
     eac:	2b55      	cmp	r3, #85	; 0x55
     eae:	f000 80a8 	beq.w	1002 <schipp+0xa82>
     eb2:	2b55      	cmp	r3, #85	; 0x55
     eb4:	dc04      	bgt.n	ec0 <schipp+0x940>
     eb6:	2b30      	cmp	r3, #48	; 0x30
     eb8:	d05a      	beq.n	f70 <schipp+0x9f0>
     eba:	2b33      	cmp	r3, #51	; 0x33
     ebc:	d06c      	beq.n	f98 <schipp+0xa18>
     ebe:	e0ec      	b.n	109a <schipp+0xb1a>
     ec0:	2b75      	cmp	r3, #117	; 0x75
     ec2:	f000 80b2 	beq.w	102a <schipp+0xaaa>
     ec6:	2b85      	cmp	r3, #133	; 0x85
     ec8:	f000 80d3 	beq.w	1072 <schipp+0xaf2>
     ecc:	2b65      	cmp	r3, #101	; 0x65
     ece:	f000 80a2 	beq.w	1016 <schipp+0xa96>
     ed2:	e0e2      	b.n	109a <schipp+0xb1a>
     ed4:	7bbb      	ldrb	r3, [r7, #14]
     ed6:	4a58      	ldr	r2, [pc, #352]	; (1038 <schipp+0xab8>)
     ed8:	6812      	ldr	r2, [r2, #0]
     eda:	4958      	ldr	r1, [pc, #352]	; (103c <schipp+0xabc>)
     edc:	fba1 1202 	umull	r1, r2, r1, r2
     ee0:	0912      	lsrs	r2, r2, #4
     ee2:	b2d1      	uxtb	r1, r2
     ee4:	4a52      	ldr	r2, [pc, #328]	; (1030 <schipp+0xab0>)
     ee6:	4413      	add	r3, r2
     ee8:	460a      	mov	r2, r1
     eea:	715a      	strb	r2, [r3, #5]
     eec:	e0d7      	b.n	109e <schipp+0xb1e>
     eee:	7bbc      	ldrb	r4, [r7, #14]
     ef0:	f249 00f0 	movw	r0, #37104	; 0x90f0
     ef4:	f003 f9e6 	bl	42c4 <btn_wait_down>
     ef8:	4603      	mov	r3, r0
     efa:	b2da      	uxtb	r2, r3
     efc:	4b4c      	ldr	r3, [pc, #304]	; (1030 <schipp+0xab0>)
     efe:	4423      	add	r3, r4
     f00:	715a      	strb	r2, [r3, #5]
     f02:	e0cc      	b.n	109e <schipp+0xb1e>
     f04:	7bbb      	ldrb	r3, [r7, #14]
     f06:	4a4a      	ldr	r2, [pc, #296]	; (1030 <schipp+0xab0>)
     f08:	4413      	add	r3, r2
     f0a:	795b      	ldrb	r3, [r3, #5]
     f0c:	461a      	mov	r2, r3
     f0e:	4613      	mov	r3, r2
     f10:	011b      	lsls	r3, r3, #4
     f12:	4413      	add	r3, r2
     f14:	461a      	mov	r2, r3
     f16:	4b48      	ldr	r3, [pc, #288]	; (1038 <schipp+0xab8>)
     f18:	601a      	str	r2, [r3, #0]
     f1a:	e0c0      	b.n	109e <schipp+0xb1e>
     f1c:	7bbb      	ldrb	r3, [r7, #14]
     f1e:	4a44      	ldr	r2, [pc, #272]	; (1030 <schipp+0xab0>)
     f20:	4413      	add	r3, r2
     f22:	795b      	ldrb	r3, [r3, #5]
     f24:	4619      	mov	r1, r3
     f26:	f240 200b 	movw	r0, #523	; 0x20b
     f2a:	f7ff fab7 	bl	49c <tone>
     f2e:	e0b6      	b.n	109e <schipp+0xb1e>
     f30:	4b3f      	ldr	r3, [pc, #252]	; (1030 <schipp+0xab0>)
     f32:	885a      	ldrh	r2, [r3, #2]
     f34:	7bbb      	ldrb	r3, [r7, #14]
     f36:	493e      	ldr	r1, [pc, #248]	; (1030 <schipp+0xab0>)
     f38:	440b      	add	r3, r1
     f3a:	795b      	ldrb	r3, [r3, #5]
     f3c:	b29b      	uxth	r3, r3
     f3e:	4413      	add	r3, r2
     f40:	b29a      	uxth	r2, r3
     f42:	4b3b      	ldr	r3, [pc, #236]	; (1030 <schipp+0xab0>)
     f44:	805a      	strh	r2, [r3, #2]
     f46:	e0aa      	b.n	109e <schipp+0xb1e>
     f48:	7bbb      	ldrb	r3, [r7, #14]
     f4a:	4a39      	ldr	r2, [pc, #228]	; (1030 <schipp+0xab0>)
     f4c:	4413      	add	r3, r2
     f4e:	795b      	ldrb	r3, [r3, #5]
     f50:	b29b      	uxth	r3, r3
     f52:	461a      	mov	r2, r3
     f54:	0052      	lsls	r2, r2, #1
     f56:	4413      	add	r3, r2
     f58:	005b      	lsls	r3, r3, #1
     f5a:	b29a      	uxth	r2, r3
     f5c:	4b38      	ldr	r3, [pc, #224]	; (1040 <schipp+0xac0>)
     f5e:	b29b      	uxth	r3, r3
     f60:	4413      	add	r3, r2
     f62:	b29a      	uxth	r2, r3
     f64:	4b32      	ldr	r3, [pc, #200]	; (1030 <schipp+0xab0>)
     f66:	805a      	strh	r2, [r3, #2]
     f68:	2000      	movs	r0, #0
     f6a:	f002 fc6d 	bl	3848 <select_font>
     f6e:	e096      	b.n	109e <schipp+0xb1e>
     f70:	7bbb      	ldrb	r3, [r7, #14]
     f72:	4a2f      	ldr	r2, [pc, #188]	; (1030 <schipp+0xab0>)
     f74:	4413      	add	r3, r2
     f76:	795b      	ldrb	r3, [r3, #5]
     f78:	b29b      	uxth	r3, r3
     f7a:	461a      	mov	r2, r3
     f7c:	0092      	lsls	r2, r2, #2
     f7e:	4413      	add	r3, r2
     f80:	005b      	lsls	r3, r3, #1
     f82:	b29a      	uxth	r2, r3
     f84:	4b2f      	ldr	r3, [pc, #188]	; (1044 <schipp+0xac4>)
     f86:	b29b      	uxth	r3, r3
     f88:	4413      	add	r3, r2
     f8a:	b29a      	uxth	r2, r3
     f8c:	4b28      	ldr	r3, [pc, #160]	; (1030 <schipp+0xab0>)
     f8e:	805a      	strh	r2, [r3, #2]
     f90:	2001      	movs	r0, #1
     f92:	f002 fc59 	bl	3848 <select_font>
     f96:	e082      	b.n	109e <schipp+0xb1e>
     f98:	7bbb      	ldrb	r3, [r7, #14]
     f9a:	4a25      	ldr	r2, [pc, #148]	; (1030 <schipp+0xab0>)
     f9c:	4413      	add	r3, r2
     f9e:	795b      	ldrb	r3, [r3, #5]
     fa0:	73fb      	strb	r3, [r7, #15]
     fa2:	7bfa      	ldrb	r2, [r7, #15]
     fa4:	4b28      	ldr	r3, [pc, #160]	; (1048 <schipp+0xac8>)
     fa6:	fba3 1302 	umull	r1, r3, r3, r2
     faa:	08d9      	lsrs	r1, r3, #3
     fac:	460b      	mov	r3, r1
     fae:	009b      	lsls	r3, r3, #2
     fb0:	440b      	add	r3, r1
     fb2:	005b      	lsls	r3, r3, #1
     fb4:	1ad3      	subs	r3, r2, r3
     fb6:	b2da      	uxtb	r2, r3
     fb8:	4b1e      	ldr	r3, [pc, #120]	; (1034 <schipp+0xab4>)
     fba:	709a      	strb	r2, [r3, #2]
     fbc:	7bfb      	ldrb	r3, [r7, #15]
     fbe:	4a22      	ldr	r2, [pc, #136]	; (1048 <schipp+0xac8>)
     fc0:	fba2 2303 	umull	r2, r3, r2, r3
     fc4:	08db      	lsrs	r3, r3, #3
     fc6:	73fb      	strb	r3, [r7, #15]
     fc8:	7bfa      	ldrb	r2, [r7, #15]
     fca:	4b1f      	ldr	r3, [pc, #124]	; (1048 <schipp+0xac8>)
     fcc:	fba3 1302 	umull	r1, r3, r3, r2
     fd0:	08d9      	lsrs	r1, r3, #3
     fd2:	460b      	mov	r3, r1
     fd4:	009b      	lsls	r3, r3, #2
     fd6:	440b      	add	r3, r1
     fd8:	005b      	lsls	r3, r3, #1
     fda:	1ad3      	subs	r3, r2, r3
     fdc:	b2da      	uxtb	r2, r3
     fde:	4b15      	ldr	r3, [pc, #84]	; (1034 <schipp+0xab4>)
     fe0:	705a      	strb	r2, [r3, #1]
     fe2:	7bfb      	ldrb	r3, [r7, #15]
     fe4:	4a18      	ldr	r2, [pc, #96]	; (1048 <schipp+0xac8>)
     fe6:	fba2 2303 	umull	r2, r3, r2, r3
     fea:	08db      	lsrs	r3, r3, #3
     fec:	b2da      	uxtb	r2, r3
     fee:	4b11      	ldr	r3, [pc, #68]	; (1034 <schipp+0xab4>)
     ff0:	701a      	strb	r2, [r3, #0]
     ff2:	4b0f      	ldr	r3, [pc, #60]	; (1030 <schipp+0xab0>)
     ff4:	885b      	ldrh	r3, [r3, #2]
     ff6:	4a0f      	ldr	r2, [pc, #60]	; (1034 <schipp+0xab4>)
     ff8:	2103      	movs	r1, #3
     ffa:	4618      	mov	r0, r3
     ffc:	f7ff fa77 	bl	4ee <store_block>
    1000:	e04d      	b.n	109e <schipp+0xb1e>
    1002:	4b0b      	ldr	r3, [pc, #44]	; (1030 <schipp+0xab0>)
    1004:	885b      	ldrh	r3, [r3, #2]
    1006:	4618      	mov	r0, r3
    1008:	7bbb      	ldrb	r3, [r7, #14]
    100a:	3301      	adds	r3, #1
    100c:	4a0f      	ldr	r2, [pc, #60]	; (104c <schipp+0xacc>)
    100e:	4619      	mov	r1, r3
    1010:	f7ff fa6d 	bl	4ee <store_block>
    1014:	e043      	b.n	109e <schipp+0xb1e>
    1016:	4b06      	ldr	r3, [pc, #24]	; (1030 <schipp+0xab0>)
    1018:	885b      	ldrh	r3, [r3, #2]
    101a:	4618      	mov	r0, r3
    101c:	7bbb      	ldrb	r3, [r7, #14]
    101e:	3301      	adds	r3, #1
    1020:	4a0a      	ldr	r2, [pc, #40]	; (104c <schipp+0xacc>)
    1022:	4619      	mov	r1, r3
    1024:	f7ff fa58 	bl	4d8 <load_block>
    1028:	e039      	b.n	109e <schipp+0xb1e>
    102a:	2300      	movs	r3, #0
    102c:	73fb      	strb	r3, [r7, #15]
    102e:	e01b      	b.n	1068 <schipp+0xae8>
    1030:	2000006c 	.word	0x2000006c
    1034:	200000d4 	.word	0x200000d4
    1038:	200004fc 	.word	0x200004fc
    103c:	f0f0f0f1 	.word	0xf0f0f0f1
    1040:	000043f4 	.word	0x000043f4
    1044:	00004454 	.word	0x00004454
    1048:	cccccccd 	.word	0xcccccccd
    104c:	20000071 	.word	0x20000071
    1050:	7bfb      	ldrb	r3, [r7, #15]
    1052:	7bfa      	ldrb	r2, [r7, #15]
    1054:	491a      	ldr	r1, [pc, #104]	; (10c0 <schipp+0xb40>)
    1056:	440a      	add	r2, r1
    1058:	7951      	ldrb	r1, [r2, #5]
    105a:	4a19      	ldr	r2, [pc, #100]	; (10c0 <schipp+0xb40>)
    105c:	4413      	add	r3, r2
    105e:	460a      	mov	r2, r1
    1060:	755a      	strb	r2, [r3, #21]
    1062:	7bfb      	ldrb	r3, [r7, #15]
    1064:	3301      	adds	r3, #1
    1066:	73fb      	strb	r3, [r7, #15]
    1068:	7bfa      	ldrb	r2, [r7, #15]
    106a:	7bbb      	ldrb	r3, [r7, #14]
    106c:	429a      	cmp	r2, r3
    106e:	d9ef      	bls.n	1050 <schipp+0xad0>
    1070:	e015      	b.n	109e <schipp+0xb1e>
    1072:	2300      	movs	r3, #0
    1074:	73fb      	strb	r3, [r7, #15]
    1076:	e00b      	b.n	1090 <schipp+0xb10>
    1078:	7bfb      	ldrb	r3, [r7, #15]
    107a:	7bfa      	ldrb	r2, [r7, #15]
    107c:	4910      	ldr	r1, [pc, #64]	; (10c0 <schipp+0xb40>)
    107e:	440a      	add	r2, r1
    1080:	7d51      	ldrb	r1, [r2, #21]
    1082:	4a0f      	ldr	r2, [pc, #60]	; (10c0 <schipp+0xb40>)
    1084:	4413      	add	r3, r2
    1086:	460a      	mov	r2, r1
    1088:	715a      	strb	r2, [r3, #5]
    108a:	7bfb      	ldrb	r3, [r7, #15]
    108c:	3301      	adds	r3, #1
    108e:	73fb      	strb	r3, [r7, #15]
    1090:	7bfa      	ldrb	r2, [r7, #15]
    1092:	7bbb      	ldrb	r3, [r7, #14]
    1094:	429a      	cmp	r2, r3
    1096:	d9ef      	bls.n	1078 <schipp+0xaf8>
    1098:	e001      	b.n	109e <schipp+0xb1e>
    109a:	2302      	movs	r3, #2
    109c:	e00c      	b.n	10b8 <schipp+0xb38>
    109e:	e009      	b.n	10b4 <schipp+0xb34>
    10a0:	bf00      	nop
    10a2:	f7ff ba7b 	b.w	59c <schipp+0x1c>
    10a6:	bf00      	nop
    10a8:	f7ff ba78 	b.w	59c <schipp+0x1c>
    10ac:	bf00      	nop
    10ae:	f7ff ba75 	b.w	59c <schipp+0x1c>
    10b2:	bf00      	nop
    10b4:	f7ff ba72 	b.w	59c <schipp+0x1c>
    10b8:	4618      	mov	r0, r3
    10ba:	3714      	adds	r7, #20
    10bc:	46bd      	mov	sp, r7
    10be:	bd90      	pop	{r4, r7, pc}
    10c0:	2000006c 	.word	0x2000006c

000010c4 <flash_enable>:
    10c4:	b480      	push	{r7}
    10c6:	af00      	add	r7, sp, #0
    10c8:	4b14      	ldr	r3, [pc, #80]	; (111c <flash_enable+0x58>)
    10ca:	2200      	movs	r2, #0
    10cc:	701a      	strb	r2, [r3, #0]
    10ce:	4b14      	ldr	r3, [pc, #80]	; (1120 <flash_enable+0x5c>)
    10d0:	681b      	ldr	r3, [r3, #0]
    10d2:	f003 0301 	and.w	r3, r3, #1
    10d6:	2b00      	cmp	r3, #0
    10d8:	d10c      	bne.n	10f4 <flash_enable+0x30>
    10da:	4a11      	ldr	r2, [pc, #68]	; (1120 <flash_enable+0x5c>)
    10dc:	4b10      	ldr	r3, [pc, #64]	; (1120 <flash_enable+0x5c>)
    10de:	681b      	ldr	r3, [r3, #0]
    10e0:	f043 0301 	orr.w	r3, r3, #1
    10e4:	6013      	str	r3, [r2, #0]
    10e6:	bf00      	nop
    10e8:	4b0d      	ldr	r3, [pc, #52]	; (1120 <flash_enable+0x5c>)
    10ea:	681b      	ldr	r3, [r3, #0]
    10ec:	f003 0302 	and.w	r3, r3, #2
    10f0:	2b00      	cmp	r3, #0
    10f2:	d0f9      	beq.n	10e8 <flash_enable+0x24>
    10f4:	4b0b      	ldr	r3, [pc, #44]	; (1124 <flash_enable+0x60>)
    10f6:	4a0c      	ldr	r2, [pc, #48]	; (1128 <flash_enable+0x64>)
    10f8:	605a      	str	r2, [r3, #4]
    10fa:	4b0a      	ldr	r3, [pc, #40]	; (1124 <flash_enable+0x60>)
    10fc:	4a0b      	ldr	r2, [pc, #44]	; (112c <flash_enable+0x68>)
    10fe:	605a      	str	r2, [r3, #4]
    1100:	4b08      	ldr	r3, [pc, #32]	; (1124 <flash_enable+0x60>)
    1102:	691b      	ldr	r3, [r3, #16]
    1104:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1108:	2b00      	cmp	r3, #0
    110a:	bf0c      	ite	eq
    110c:	2301      	moveq	r3, #1
    110e:	2300      	movne	r3, #0
    1110:	b2db      	uxtb	r3, r3
    1112:	4618      	mov	r0, r3
    1114:	46bd      	mov	sp, r7
    1116:	bc80      	pop	{r7}
    1118:	4770      	bx	lr
    111a:	bf00      	nop
    111c:	200000f4 	.word	0x200000f4
    1120:	40021000 	.word	0x40021000
    1124:	40022000 	.word	0x40022000
    1128:	45670123 	.word	0x45670123
    112c:	cdef89ab 	.word	0xcdef89ab

00001130 <flash_write_hword>:
    1130:	b480      	push	{r7}
    1132:	b083      	sub	sp, #12
    1134:	af00      	add	r7, sp, #0
    1136:	6078      	str	r0, [r7, #4]
    1138:	460b      	mov	r3, r1
    113a:	807b      	strh	r3, [r7, #2]
    113c:	bf00      	nop
    113e:	4b16      	ldr	r3, [pc, #88]	; (1198 <flash_write_hword+0x68>)
    1140:	68db      	ldr	r3, [r3, #12]
    1142:	f003 0301 	and.w	r3, r3, #1
    1146:	2b00      	cmp	r3, #0
    1148:	d1f9      	bne.n	113e <flash_write_hword+0xe>
    114a:	4a13      	ldr	r2, [pc, #76]	; (1198 <flash_write_hword+0x68>)
    114c:	4b12      	ldr	r3, [pc, #72]	; (1198 <flash_write_hword+0x68>)
    114e:	68db      	ldr	r3, [r3, #12]
    1150:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1154:	60d3      	str	r3, [r2, #12]
    1156:	4b10      	ldr	r3, [pc, #64]	; (1198 <flash_write_hword+0x68>)
    1158:	2201      	movs	r2, #1
    115a:	611a      	str	r2, [r3, #16]
    115c:	687b      	ldr	r3, [r7, #4]
    115e:	887a      	ldrh	r2, [r7, #2]
    1160:	801a      	strh	r2, [r3, #0]
    1162:	bf00      	nop
    1164:	4b0c      	ldr	r3, [pc, #48]	; (1198 <flash_write_hword+0x68>)
    1166:	68db      	ldr	r3, [r3, #12]
    1168:	f003 0301 	and.w	r3, r3, #1
    116c:	2b00      	cmp	r3, #0
    116e:	d005      	beq.n	117c <flash_write_hword+0x4c>
    1170:	4b09      	ldr	r3, [pc, #36]	; (1198 <flash_write_hword+0x68>)
    1172:	68db      	ldr	r3, [r3, #12]
    1174:	f003 0320 	and.w	r3, r3, #32
    1178:	2b00      	cmp	r3, #0
    117a:	d0f3      	beq.n	1164 <flash_write_hword+0x34>
    117c:	687b      	ldr	r3, [r7, #4]
    117e:	881b      	ldrh	r3, [r3, #0]
    1180:	887a      	ldrh	r2, [r7, #2]
    1182:	429a      	cmp	r2, r3
    1184:	bf0c      	ite	eq
    1186:	2301      	moveq	r3, #1
    1188:	2300      	movne	r3, #0
    118a:	b2db      	uxtb	r3, r3
    118c:	4618      	mov	r0, r3
    118e:	370c      	adds	r7, #12
    1190:	46bd      	mov	sp, r7
    1192:	bc80      	pop	{r7}
    1194:	4770      	bx	lr
    1196:	bf00      	nop
    1198:	40022000 	.word	0x40022000

0000119c <write_back_buffer>:
    119c:	b580      	push	{r7, lr}
    119e:	b084      	sub	sp, #16
    11a0:	af00      	add	r7, sp, #0
    11a2:	4b1e      	ldr	r3, [pc, #120]	; (121c <write_back_buffer+0x80>)
    11a4:	785b      	ldrb	r3, [r3, #1]
    11a6:	029b      	lsls	r3, r3, #10
    11a8:	60bb      	str	r3, [r7, #8]
    11aa:	4b1d      	ldr	r3, [pc, #116]	; (1220 <write_back_buffer+0x84>)
    11ac:	607b      	str	r3, [r7, #4]
    11ae:	2300      	movs	r3, #0
    11b0:	60fb      	str	r3, [r7, #12]
    11b2:	e017      	b.n	11e4 <write_back_buffer+0x48>
    11b4:	687b      	ldr	r3, [r7, #4]
    11b6:	881b      	ldrh	r3, [r3, #0]
    11b8:	f64f 72ff 	movw	r2, #65535	; 0xffff
    11bc:	4293      	cmp	r3, r2
    11be:	d008      	beq.n	11d2 <write_back_buffer+0x36>
    11c0:	687b      	ldr	r3, [r7, #4]
    11c2:	881b      	ldrh	r3, [r3, #0]
    11c4:	4619      	mov	r1, r3
    11c6:	68b8      	ldr	r0, [r7, #8]
    11c8:	f7ff ffb2 	bl	1130 <flash_write_hword>
    11cc:	4603      	mov	r3, r0
    11ce:	2b00      	cmp	r3, #0
    11d0:	d00d      	beq.n	11ee <write_back_buffer+0x52>
    11d2:	68bb      	ldr	r3, [r7, #8]
    11d4:	3302      	adds	r3, #2
    11d6:	60bb      	str	r3, [r7, #8]
    11d8:	687b      	ldr	r3, [r7, #4]
    11da:	3302      	adds	r3, #2
    11dc:	607b      	str	r3, [r7, #4]
    11de:	68fb      	ldr	r3, [r7, #12]
    11e0:	3301      	adds	r3, #1
    11e2:	60fb      	str	r3, [r7, #12]
    11e4:	68fb      	ldr	r3, [r7, #12]
    11e6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    11ea:	dbe3      	blt.n	11b4 <write_back_buffer+0x18>
    11ec:	e000      	b.n	11f0 <write_back_buffer+0x54>
    11ee:	bf00      	nop
    11f0:	68fb      	ldr	r3, [r7, #12]
    11f2:	2b00      	cmp	r3, #0
    11f4:	dd06      	ble.n	1204 <write_back_buffer+0x68>
    11f6:	4b09      	ldr	r3, [pc, #36]	; (121c <write_back_buffer+0x80>)
    11f8:	781b      	ldrb	r3, [r3, #0]
    11fa:	f023 0304 	bic.w	r3, r3, #4
    11fe:	b2da      	uxtb	r2, r3
    1200:	4b06      	ldr	r3, [pc, #24]	; (121c <write_back_buffer+0x80>)
    1202:	701a      	strb	r2, [r3, #0]
    1204:	68fb      	ldr	r3, [r7, #12]
    1206:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    120a:	d101      	bne.n	1210 <write_back_buffer+0x74>
    120c:	2301      	movs	r3, #1
    120e:	e000      	b.n	1212 <write_back_buffer+0x76>
    1210:	2300      	movs	r3, #0
    1212:	4618      	mov	r0, r3
    1214:	3710      	adds	r7, #16
    1216:	46bd      	mov	sp, r7
    1218:	bd80      	pop	{r7, pc}
    121a:	bf00      	nop
    121c:	200000f4 	.word	0x200000f4
    1220:	200000f6 	.word	0x200000f6

00001224 <load_row>:
    1224:	b480      	push	{r7}
    1226:	b087      	sub	sp, #28
    1228:	af00      	add	r7, sp, #0
    122a:	6078      	str	r0, [r7, #4]
    122c:	687b      	ldr	r3, [r7, #4]
    122e:	029b      	lsls	r3, r3, #10
    1230:	617b      	str	r3, [r7, #20]
    1232:	4b15      	ldr	r3, [pc, #84]	; (1288 <load_row+0x64>)
    1234:	613b      	str	r3, [r7, #16]
    1236:	2300      	movs	r3, #0
    1238:	60fb      	str	r3, [r7, #12]
    123a:	e00a      	b.n	1252 <load_row+0x2e>
    123c:	693b      	ldr	r3, [r7, #16]
    123e:	1c9a      	adds	r2, r3, #2
    1240:	613a      	str	r2, [r7, #16]
    1242:	697a      	ldr	r2, [r7, #20]
    1244:	1c91      	adds	r1, r2, #2
    1246:	6179      	str	r1, [r7, #20]
    1248:	8812      	ldrh	r2, [r2, #0]
    124a:	801a      	strh	r2, [r3, #0]
    124c:	68fb      	ldr	r3, [r7, #12]
    124e:	3301      	adds	r3, #1
    1250:	60fb      	str	r3, [r7, #12]
    1252:	68fb      	ldr	r3, [r7, #12]
    1254:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1258:	dbf0      	blt.n	123c <load_row+0x18>
    125a:	687b      	ldr	r3, [r7, #4]
    125c:	b2da      	uxtb	r2, r3
    125e:	4b0b      	ldr	r3, [pc, #44]	; (128c <load_row+0x68>)
    1260:	705a      	strb	r2, [r3, #1]
    1262:	4b0a      	ldr	r3, [pc, #40]	; (128c <load_row+0x68>)
    1264:	781b      	ldrb	r3, [r3, #0]
    1266:	f023 0301 	bic.w	r3, r3, #1
    126a:	b2da      	uxtb	r2, r3
    126c:	4b07      	ldr	r3, [pc, #28]	; (128c <load_row+0x68>)
    126e:	701a      	strb	r2, [r3, #0]
    1270:	4b06      	ldr	r3, [pc, #24]	; (128c <load_row+0x68>)
    1272:	781b      	ldrb	r3, [r3, #0]
    1274:	f043 0302 	orr.w	r3, r3, #2
    1278:	b2da      	uxtb	r2, r3
    127a:	4b04      	ldr	r3, [pc, #16]	; (128c <load_row+0x68>)
    127c:	701a      	strb	r2, [r3, #0]
    127e:	bf00      	nop
    1280:	371c      	adds	r7, #28
    1282:	46bd      	mov	sp, r7
    1284:	bc80      	pop	{r7}
    1286:	4770      	bx	lr
    1288:	200000f6 	.word	0x200000f6
    128c:	200000f4 	.word	0x200000f4

00001290 <is_erased>:
    1290:	b480      	push	{r7}
    1292:	b085      	sub	sp, #20
    1294:	af00      	add	r7, sp, #0
    1296:	6078      	str	r0, [r7, #4]
    1298:	687b      	ldr	r3, [r7, #4]
    129a:	029b      	lsls	r3, r3, #10
    129c:	60fb      	str	r3, [r7, #12]
    129e:	2300      	movs	r3, #0
    12a0:	60bb      	str	r3, [r7, #8]
    12a2:	e00c      	b.n	12be <is_erased+0x2e>
    12a4:	68fb      	ldr	r3, [r7, #12]
    12a6:	1c9a      	adds	r2, r3, #2
    12a8:	60fa      	str	r2, [r7, #12]
    12aa:	881b      	ldrh	r3, [r3, #0]
    12ac:	f64f 72ff 	movw	r2, #65535	; 0xffff
    12b0:	4293      	cmp	r3, r2
    12b2:	d001      	beq.n	12b8 <is_erased+0x28>
    12b4:	2300      	movs	r3, #0
    12b6:	e008      	b.n	12ca <is_erased+0x3a>
    12b8:	68bb      	ldr	r3, [r7, #8]
    12ba:	3301      	adds	r3, #1
    12bc:	60bb      	str	r3, [r7, #8]
    12be:	68bb      	ldr	r3, [r7, #8]
    12c0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    12c4:	dbee      	blt.n	12a4 <is_erased+0x14>
    12c6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    12ca:	4618      	mov	r0, r3
    12cc:	3714      	adds	r7, #20
    12ce:	46bd      	mov	sp, r7
    12d0:	bc80      	pop	{r7}
    12d2:	4770      	bx	lr

000012d4 <flash_erase_row>:
    12d4:	b580      	push	{r7, lr}
    12d6:	b086      	sub	sp, #24
    12d8:	af00      	add	r7, sp, #0
    12da:	6078      	str	r0, [r7, #4]
    12dc:	687b      	ldr	r3, [r7, #4]
    12de:	2b3f      	cmp	r3, #63	; 0x3f
    12e0:	d801      	bhi.n	12e6 <flash_erase_row+0x12>
    12e2:	2300      	movs	r3, #0
    12e4:	e052      	b.n	138c <flash_erase_row+0xb8>
    12e6:	6878      	ldr	r0, [r7, #4]
    12e8:	f7ff ffd2 	bl	1290 <is_erased>
    12ec:	4603      	mov	r3, r0
    12ee:	2b00      	cmp	r3, #0
    12f0:	d001      	beq.n	12f6 <flash_erase_row+0x22>
    12f2:	2301      	movs	r3, #1
    12f4:	e04a      	b.n	138c <flash_erase_row+0xb8>
    12f6:	687b      	ldr	r3, [r7, #4]
    12f8:	029b      	lsls	r3, r3, #10
    12fa:	617b      	str	r3, [r7, #20]
    12fc:	4b25      	ldr	r3, [pc, #148]	; (1394 <flash_erase_row+0xc0>)
    12fe:	691b      	ldr	r3, [r3, #16]
    1300:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1304:	2b00      	cmp	r3, #0
    1306:	d001      	beq.n	130c <flash_erase_row+0x38>
    1308:	2300      	movs	r3, #0
    130a:	e03f      	b.n	138c <flash_erase_row+0xb8>
    130c:	4a21      	ldr	r2, [pc, #132]	; (1394 <flash_erase_row+0xc0>)
    130e:	4b21      	ldr	r3, [pc, #132]	; (1394 <flash_erase_row+0xc0>)
    1310:	68db      	ldr	r3, [r3, #12]
    1312:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1316:	60d3      	str	r3, [r2, #12]
    1318:	4b1e      	ldr	r3, [pc, #120]	; (1394 <flash_erase_row+0xc0>)
    131a:	2202      	movs	r2, #2
    131c:	611a      	str	r2, [r3, #16]
    131e:	4a1d      	ldr	r2, [pc, #116]	; (1394 <flash_erase_row+0xc0>)
    1320:	697b      	ldr	r3, [r7, #20]
    1322:	6153      	str	r3, [r2, #20]
    1324:	4a1b      	ldr	r2, [pc, #108]	; (1394 <flash_erase_row+0xc0>)
    1326:	4b1b      	ldr	r3, [pc, #108]	; (1394 <flash_erase_row+0xc0>)
    1328:	691b      	ldr	r3, [r3, #16]
    132a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    132e:	6113      	str	r3, [r2, #16]
    1330:	bf00      	nop
    1332:	4b18      	ldr	r3, [pc, #96]	; (1394 <flash_erase_row+0xc0>)
    1334:	68db      	ldr	r3, [r3, #12]
    1336:	f003 0301 	and.w	r3, r3, #1
    133a:	2b00      	cmp	r3, #0
    133c:	d005      	beq.n	134a <flash_erase_row+0x76>
    133e:	4b15      	ldr	r3, [pc, #84]	; (1394 <flash_erase_row+0xc0>)
    1340:	68db      	ldr	r3, [r3, #12]
    1342:	f003 0320 	and.w	r3, r3, #32
    1346:	2b00      	cmp	r3, #0
    1348:	d0f3      	beq.n	1332 <flash_erase_row+0x5e>
    134a:	687b      	ldr	r3, [r7, #4]
    134c:	029b      	lsls	r3, r3, #10
    134e:	617b      	str	r3, [r7, #20]
    1350:	2300      	movs	r3, #0
    1352:	60fb      	str	r3, [r7, #12]
    1354:	e00c      	b.n	1370 <flash_erase_row+0x9c>
    1356:	697b      	ldr	r3, [r7, #20]
    1358:	1c9a      	adds	r2, r3, #2
    135a:	617a      	str	r2, [r7, #20]
    135c:	881b      	ldrh	r3, [r3, #0]
    135e:	827b      	strh	r3, [r7, #18]
    1360:	8a7b      	ldrh	r3, [r7, #18]
    1362:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1366:	4293      	cmp	r3, r2
    1368:	d107      	bne.n	137a <flash_erase_row+0xa6>
    136a:	68fb      	ldr	r3, [r7, #12]
    136c:	3301      	adds	r3, #1
    136e:	60fb      	str	r3, [r7, #12]
    1370:	68fb      	ldr	r3, [r7, #12]
    1372:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1376:	dbee      	blt.n	1356 <flash_erase_row+0x82>
    1378:	e000      	b.n	137c <flash_erase_row+0xa8>
    137a:	bf00      	nop
    137c:	8a7b      	ldrh	r3, [r7, #18]
    137e:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1382:	4293      	cmp	r3, r2
    1384:	bf0c      	ite	eq
    1386:	2301      	moveq	r3, #1
    1388:	2300      	movne	r3, #0
    138a:	b2db      	uxtb	r3, r3
    138c:	4618      	mov	r0, r3
    138e:	3718      	adds	r7, #24
    1390:	46bd      	mov	sp, r7
    1392:	bd80      	pop	{r7, pc}
    1394:	40022000 	.word	0x40022000

00001398 <flash_sync>:
    1398:	b580      	push	{r7, lr}
    139a:	af00      	add	r7, sp, #0
    139c:	4b10      	ldr	r3, [pc, #64]	; (13e0 <flash_sync+0x48>)
    139e:	781b      	ldrb	r3, [r3, #0]
    13a0:	f003 0301 	and.w	r3, r3, #1
    13a4:	2b00      	cmp	r3, #0
    13a6:	d017      	beq.n	13d8 <flash_sync+0x40>
    13a8:	4b0d      	ldr	r3, [pc, #52]	; (13e0 <flash_sync+0x48>)
    13aa:	785b      	ldrb	r3, [r3, #1]
    13ac:	4618      	mov	r0, r3
    13ae:	f7ff ff91 	bl	12d4 <flash_erase_row>
    13b2:	4603      	mov	r3, r0
    13b4:	2b00      	cmp	r3, #0
    13b6:	d00d      	beq.n	13d4 <flash_sync+0x3c>
    13b8:	f7ff fef0 	bl	119c <write_back_buffer>
    13bc:	4603      	mov	r3, r0
    13be:	2b00      	cmp	r3, #0
    13c0:	d008      	beq.n	13d4 <flash_sync+0x3c>
    13c2:	4b07      	ldr	r3, [pc, #28]	; (13e0 <flash_sync+0x48>)
    13c4:	781b      	ldrb	r3, [r3, #0]
    13c6:	f023 0301 	bic.w	r3, r3, #1
    13ca:	b2da      	uxtb	r2, r3
    13cc:	4b04      	ldr	r3, [pc, #16]	; (13e0 <flash_sync+0x48>)
    13ce:	701a      	strb	r2, [r3, #0]
    13d0:	2301      	movs	r3, #1
    13d2:	e002      	b.n	13da <flash_sync+0x42>
    13d4:	2300      	movs	r3, #0
    13d6:	e000      	b.n	13da <flash_sync+0x42>
    13d8:	2301      	movs	r3, #1
    13da:	4618      	mov	r0, r3
    13dc:	bd80      	pop	{r7, pc}
    13de:	bf00      	nop
    13e0:	200000f4 	.word	0x200000f4

000013e4 <flash_flush>:
    13e4:	b480      	push	{r7}
    13e6:	af00      	add	r7, sp, #0
    13e8:	4b03      	ldr	r3, [pc, #12]	; (13f8 <flash_flush+0x14>)
    13ea:	2200      	movs	r2, #0
    13ec:	701a      	strb	r2, [r3, #0]
    13ee:	bf00      	nop
    13f0:	46bd      	mov	sp, r7
    13f2:	bc80      	pop	{r7}
    13f4:	4770      	bx	lr
    13f6:	bf00      	nop
    13f8:	200000f4 	.word	0x200000f4

000013fc <flash_disable>:
    13fc:	b580      	push	{r7, lr}
    13fe:	af00      	add	r7, sp, #0
    1400:	f7ff ffca 	bl	1398 <flash_sync>
    1404:	4b05      	ldr	r3, [pc, #20]	; (141c <flash_disable+0x20>)
    1406:	2200      	movs	r2, #0
    1408:	701a      	strb	r2, [r3, #0]
    140a:	4a05      	ldr	r2, [pc, #20]	; (1420 <flash_disable+0x24>)
    140c:	4b04      	ldr	r3, [pc, #16]	; (1420 <flash_disable+0x24>)
    140e:	691b      	ldr	r3, [r3, #16]
    1410:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    1414:	6113      	str	r3, [r2, #16]
    1416:	bf00      	nop
    1418:	bd80      	pop	{r7, pc}
    141a:	bf00      	nop
    141c:	200000f4 	.word	0x200000f4
    1420:	40022000 	.word	0x40022000

00001424 <strcmp>:
    1424:	b480      	push	{r7}
    1426:	b085      	sub	sp, #20
    1428:	af00      	add	r7, sp, #0
    142a:	6078      	str	r0, [r7, #4]
    142c:	6039      	str	r1, [r7, #0]
    142e:	2300      	movs	r3, #0
    1430:	60fb      	str	r3, [r7, #12]
    1432:	e018      	b.n	1466 <strcmp+0x42>
    1434:	687b      	ldr	r3, [r7, #4]
    1436:	781a      	ldrb	r2, [r3, #0]
    1438:	683b      	ldr	r3, [r7, #0]
    143a:	781b      	ldrb	r3, [r3, #0]
    143c:	429a      	cmp	r2, r3
    143e:	d203      	bcs.n	1448 <strcmp+0x24>
    1440:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1444:	60fb      	str	r3, [r7, #12]
    1446:	e016      	b.n	1476 <strcmp+0x52>
    1448:	687b      	ldr	r3, [r7, #4]
    144a:	781a      	ldrb	r2, [r3, #0]
    144c:	683b      	ldr	r3, [r7, #0]
    144e:	781b      	ldrb	r3, [r3, #0]
    1450:	429a      	cmp	r2, r3
    1452:	d902      	bls.n	145a <strcmp+0x36>
    1454:	2301      	movs	r3, #1
    1456:	60fb      	str	r3, [r7, #12]
    1458:	e00d      	b.n	1476 <strcmp+0x52>
    145a:	687b      	ldr	r3, [r7, #4]
    145c:	3301      	adds	r3, #1
    145e:	607b      	str	r3, [r7, #4]
    1460:	683b      	ldr	r3, [r7, #0]
    1462:	3301      	adds	r3, #1
    1464:	603b      	str	r3, [r7, #0]
    1466:	687b      	ldr	r3, [r7, #4]
    1468:	781b      	ldrb	r3, [r3, #0]
    146a:	2b00      	cmp	r3, #0
    146c:	d003      	beq.n	1476 <strcmp+0x52>
    146e:	683b      	ldr	r3, [r7, #0]
    1470:	781b      	ldrb	r3, [r3, #0]
    1472:	2b00      	cmp	r3, #0
    1474:	d1de      	bne.n	1434 <strcmp+0x10>
    1476:	68fb      	ldr	r3, [r7, #12]
    1478:	2b00      	cmp	r3, #0
    147a:	d115      	bne.n	14a8 <strcmp+0x84>
    147c:	687b      	ldr	r3, [r7, #4]
    147e:	781b      	ldrb	r3, [r3, #0]
    1480:	2b00      	cmp	r3, #0
    1482:	d107      	bne.n	1494 <strcmp+0x70>
    1484:	683b      	ldr	r3, [r7, #0]
    1486:	781b      	ldrb	r3, [r3, #0]
    1488:	2b00      	cmp	r3, #0
    148a:	d003      	beq.n	1494 <strcmp+0x70>
    148c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1490:	60fb      	str	r3, [r7, #12]
    1492:	e009      	b.n	14a8 <strcmp+0x84>
    1494:	687b      	ldr	r3, [r7, #4]
    1496:	781b      	ldrb	r3, [r3, #0]
    1498:	2b00      	cmp	r3, #0
    149a:	d005      	beq.n	14a8 <strcmp+0x84>
    149c:	683b      	ldr	r3, [r7, #0]
    149e:	781b      	ldrb	r3, [r3, #0]
    14a0:	2b00      	cmp	r3, #0
    14a2:	d101      	bne.n	14a8 <strcmp+0x84>
    14a4:	2301      	movs	r3, #1
    14a6:	60fb      	str	r3, [r7, #12]
    14a8:	68fb      	ldr	r3, [r7, #12]
    14aa:	4618      	mov	r0, r3
    14ac:	3714      	adds	r7, #20
    14ae:	46bd      	mov	sp, r7
    14b0:	bc80      	pop	{r7}
    14b2:	4770      	bx	lr

000014b4 <alpha>:
    14b4:	b480      	push	{r7}
    14b6:	b083      	sub	sp, #12
    14b8:	af00      	add	r7, sp, #0
    14ba:	4603      	mov	r3, r0
    14bc:	71fb      	strb	r3, [r7, #7]
    14be:	79fb      	ldrb	r3, [r7, #7]
    14c0:	2b60      	cmp	r3, #96	; 0x60
    14c2:	d902      	bls.n	14ca <alpha+0x16>
    14c4:	79fb      	ldrb	r3, [r7, #7]
    14c6:	2b7a      	cmp	r3, #122	; 0x7a
    14c8:	d905      	bls.n	14d6 <alpha+0x22>
    14ca:	79fb      	ldrb	r3, [r7, #7]
    14cc:	2b40      	cmp	r3, #64	; 0x40
    14ce:	d904      	bls.n	14da <alpha+0x26>
    14d0:	79fb      	ldrb	r3, [r7, #7]
    14d2:	2b5a      	cmp	r3, #90	; 0x5a
    14d4:	d801      	bhi.n	14da <alpha+0x26>
    14d6:	2301      	movs	r3, #1
    14d8:	e000      	b.n	14dc <alpha+0x28>
    14da:	2300      	movs	r3, #0
    14dc:	4618      	mov	r0, r3
    14de:	370c      	adds	r7, #12
    14e0:	46bd      	mov	sp, r7
    14e2:	bc80      	pop	{r7}
    14e4:	4770      	bx	lr

000014e6 <digit>:
    14e6:	b480      	push	{r7}
    14e8:	b083      	sub	sp, #12
    14ea:	af00      	add	r7, sp, #0
    14ec:	4603      	mov	r3, r0
    14ee:	71fb      	strb	r3, [r7, #7]
    14f0:	79fb      	ldrb	r3, [r7, #7]
    14f2:	2b2f      	cmp	r3, #47	; 0x2f
    14f4:	d904      	bls.n	1500 <digit+0x1a>
    14f6:	79fb      	ldrb	r3, [r7, #7]
    14f8:	2b39      	cmp	r3, #57	; 0x39
    14fa:	d801      	bhi.n	1500 <digit+0x1a>
    14fc:	2301      	movs	r3, #1
    14fe:	e000      	b.n	1502 <digit+0x1c>
    1500:	2300      	movs	r3, #0
    1502:	4618      	mov	r0, r3
    1504:	370c      	adds	r7, #12
    1506:	46bd      	mov	sp, r7
    1508:	bc80      	pop	{r7}
    150a:	4770      	bx	lr

0000150c <hexdigit>:
    150c:	b580      	push	{r7, lr}
    150e:	b082      	sub	sp, #8
    1510:	af00      	add	r7, sp, #0
    1512:	4603      	mov	r3, r0
    1514:	71fb      	strb	r3, [r7, #7]
    1516:	79fb      	ldrb	r3, [r7, #7]
    1518:	2b60      	cmp	r3, #96	; 0x60
    151a:	d902      	bls.n	1522 <hexdigit+0x16>
    151c:	79fb      	ldrb	r3, [r7, #7]
    151e:	3b20      	subs	r3, #32
    1520:	71fb      	strb	r3, [r7, #7]
    1522:	79fb      	ldrb	r3, [r7, #7]
    1524:	4618      	mov	r0, r3
    1526:	f7ff ffde 	bl	14e6 <digit>
    152a:	4603      	mov	r3, r0
    152c:	2b00      	cmp	r3, #0
    152e:	d105      	bne.n	153c <hexdigit+0x30>
    1530:	79fb      	ldrb	r3, [r7, #7]
    1532:	2b40      	cmp	r3, #64	; 0x40
    1534:	d904      	bls.n	1540 <hexdigit+0x34>
    1536:	79fb      	ldrb	r3, [r7, #7]
    1538:	2b46      	cmp	r3, #70	; 0x46
    153a:	d801      	bhi.n	1540 <hexdigit+0x34>
    153c:	2301      	movs	r3, #1
    153e:	e000      	b.n	1542 <hexdigit+0x36>
    1540:	2300      	movs	r3, #0
    1542:	4618      	mov	r0, r3
    1544:	3708      	adds	r7, #8
    1546:	46bd      	mov	sp, r7
    1548:	bd80      	pop	{r7, pc}

0000154a <atoi>:
    154a:	b580      	push	{r7, lr}
    154c:	b086      	sub	sp, #24
    154e:	af00      	add	r7, sp, #0
    1550:	6078      	str	r0, [r7, #4]
    1552:	2300      	movs	r3, #0
    1554:	617b      	str	r3, [r7, #20]
    1556:	2301      	movs	r3, #1
    1558:	613b      	str	r3, [r7, #16]
    155a:	230a      	movs	r3, #10
    155c:	60fb      	str	r3, [r7, #12]
    155e:	e002      	b.n	1566 <atoi+0x1c>
    1560:	687b      	ldr	r3, [r7, #4]
    1562:	3301      	adds	r3, #1
    1564:	607b      	str	r3, [r7, #4]
    1566:	687b      	ldr	r3, [r7, #4]
    1568:	781b      	ldrb	r3, [r3, #0]
    156a:	2b00      	cmp	r3, #0
    156c:	d003      	beq.n	1576 <atoi+0x2c>
    156e:	687b      	ldr	r3, [r7, #4]
    1570:	781b      	ldrb	r3, [r3, #0]
    1572:	2b20      	cmp	r3, #32
    1574:	d0f4      	beq.n	1560 <atoi+0x16>
    1576:	687b      	ldr	r3, [r7, #4]
    1578:	781b      	ldrb	r3, [r3, #0]
    157a:	2b2d      	cmp	r3, #45	; 0x2d
    157c:	d105      	bne.n	158a <atoi+0x40>
    157e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1582:	613b      	str	r3, [r7, #16]
    1584:	687b      	ldr	r3, [r7, #4]
    1586:	3301      	adds	r3, #1
    1588:	607b      	str	r3, [r7, #4]
    158a:	687b      	ldr	r3, [r7, #4]
    158c:	781b      	ldrb	r3, [r3, #0]
    158e:	2b24      	cmp	r3, #36	; 0x24
    1590:	d10e      	bne.n	15b0 <atoi+0x66>
    1592:	687b      	ldr	r3, [r7, #4]
    1594:	3301      	adds	r3, #1
    1596:	781b      	ldrb	r3, [r3, #0]
    1598:	4618      	mov	r0, r3
    159a:	f7ff ffb7 	bl	150c <hexdigit>
    159e:	4603      	mov	r3, r0
    15a0:	2b00      	cmp	r3, #0
    15a2:	d005      	beq.n	15b0 <atoi+0x66>
    15a4:	2310      	movs	r3, #16
    15a6:	60fb      	str	r3, [r7, #12]
    15a8:	687b      	ldr	r3, [r7, #4]
    15aa:	3301      	adds	r3, #1
    15ac:	607b      	str	r3, [r7, #4]
    15ae:	e012      	b.n	15d6 <atoi+0x8c>
    15b0:	687b      	ldr	r3, [r7, #4]
    15b2:	781b      	ldrb	r3, [r3, #0]
    15b4:	2b30      	cmp	r3, #48	; 0x30
    15b6:	d128      	bne.n	160a <atoi+0xc0>
    15b8:	687b      	ldr	r3, [r7, #4]
    15ba:	3301      	adds	r3, #1
    15bc:	781b      	ldrb	r3, [r3, #0]
    15be:	2b78      	cmp	r3, #120	; 0x78
    15c0:	d004      	beq.n	15cc <atoi+0x82>
    15c2:	687b      	ldr	r3, [r7, #4]
    15c4:	3301      	adds	r3, #1
    15c6:	781b      	ldrb	r3, [r3, #0]
    15c8:	2b58      	cmp	r3, #88	; 0x58
    15ca:	d11e      	bne.n	160a <atoi+0xc0>
    15cc:	2310      	movs	r3, #16
    15ce:	60fb      	str	r3, [r7, #12]
    15d0:	687b      	ldr	r3, [r7, #4]
    15d2:	3302      	adds	r3, #2
    15d4:	607b      	str	r3, [r7, #4]
    15d6:	e018      	b.n	160a <atoi+0xc0>
    15d8:	7afb      	ldrb	r3, [r7, #11]
    15da:	2b60      	cmp	r3, #96	; 0x60
    15dc:	d902      	bls.n	15e4 <atoi+0x9a>
    15de:	7afb      	ldrb	r3, [r7, #11]
    15e0:	3b20      	subs	r3, #32
    15e2:	72fb      	strb	r3, [r7, #11]
    15e4:	7afb      	ldrb	r3, [r7, #11]
    15e6:	3b30      	subs	r3, #48	; 0x30
    15e8:	72fb      	strb	r3, [r7, #11]
    15ea:	7afb      	ldrb	r3, [r7, #11]
    15ec:	2b09      	cmp	r3, #9
    15ee:	d902      	bls.n	15f6 <atoi+0xac>
    15f0:	7afb      	ldrb	r3, [r7, #11]
    15f2:	3b07      	subs	r3, #7
    15f4:	72fb      	strb	r3, [r7, #11]
    15f6:	697b      	ldr	r3, [r7, #20]
    15f8:	68fa      	ldr	r2, [r7, #12]
    15fa:	fb02 f203 	mul.w	r2, r2, r3
    15fe:	7afb      	ldrb	r3, [r7, #11]
    1600:	4413      	add	r3, r2
    1602:	617b      	str	r3, [r7, #20]
    1604:	687b      	ldr	r3, [r7, #4]
    1606:	3301      	adds	r3, #1
    1608:	607b      	str	r3, [r7, #4]
    160a:	687b      	ldr	r3, [r7, #4]
    160c:	781b      	ldrb	r3, [r3, #0]
    160e:	72fb      	strb	r3, [r7, #11]
    1610:	7afb      	ldrb	r3, [r7, #11]
    1612:	2b00      	cmp	r3, #0
    1614:	d00d      	beq.n	1632 <atoi+0xe8>
    1616:	68fb      	ldr	r3, [r7, #12]
    1618:	2b0a      	cmp	r3, #10
    161a:	d10a      	bne.n	1632 <atoi+0xe8>
    161c:	7afb      	ldrb	r3, [r7, #11]
    161e:	4618      	mov	r0, r3
    1620:	f7ff ff61 	bl	14e6 <digit>
    1624:	4603      	mov	r3, r0
    1626:	2b00      	cmp	r3, #0
    1628:	bf14      	ite	ne
    162a:	2301      	movne	r3, #1
    162c:	2300      	moveq	r3, #0
    162e:	b2db      	uxtb	r3, r3
    1630:	e009      	b.n	1646 <atoi+0xfc>
    1632:	7afb      	ldrb	r3, [r7, #11]
    1634:	4618      	mov	r0, r3
    1636:	f7ff ff69 	bl	150c <hexdigit>
    163a:	4603      	mov	r3, r0
    163c:	2b00      	cmp	r3, #0
    163e:	bf14      	ite	ne
    1640:	2301      	movne	r3, #1
    1642:	2300      	moveq	r3, #0
    1644:	b2db      	uxtb	r3, r3
    1646:	2b00      	cmp	r3, #0
    1648:	d1c6      	bne.n	15d8 <atoi+0x8e>
    164a:	693b      	ldr	r3, [r7, #16]
    164c:	697a      	ldr	r2, [r7, #20]
    164e:	fb02 f303 	mul.w	r3, r2, r3
    1652:	4618      	mov	r0, r3
    1654:	3718      	adds	r7, #24
    1656:	46bd      	mov	sp, r7
    1658:	bd80      	pop	{r7, pc}

0000165a <move>:
    165a:	b480      	push	{r7}
    165c:	b085      	sub	sp, #20
    165e:	af00      	add	r7, sp, #0
    1660:	60f8      	str	r0, [r7, #12]
    1662:	60b9      	str	r1, [r7, #8]
    1664:	607a      	str	r2, [r7, #4]
    1666:	e00a      	b.n	167e <move+0x24>
    1668:	68bb      	ldr	r3, [r7, #8]
    166a:	1c5a      	adds	r2, r3, #1
    166c:	60ba      	str	r2, [r7, #8]
    166e:	68fa      	ldr	r2, [r7, #12]
    1670:	1c51      	adds	r1, r2, #1
    1672:	60f9      	str	r1, [r7, #12]
    1674:	7812      	ldrb	r2, [r2, #0]
    1676:	701a      	strb	r2, [r3, #0]
    1678:	687b      	ldr	r3, [r7, #4]
    167a:	3b01      	subs	r3, #1
    167c:	607b      	str	r3, [r7, #4]
    167e:	687b      	ldr	r3, [r7, #4]
    1680:	2b00      	cmp	r3, #0
    1682:	d1f1      	bne.n	1668 <move+0xe>
    1684:	bf00      	nop
    1686:	3714      	adds	r7, #20
    1688:	46bd      	mov	sp, r7
    168a:	bc80      	pop	{r7}
    168c:	4770      	bx	lr

0000168e <strlen>:
    168e:	b480      	push	{r7}
    1690:	b085      	sub	sp, #20
    1692:	af00      	add	r7, sp, #0
    1694:	6078      	str	r0, [r7, #4]
    1696:	2300      	movs	r3, #0
    1698:	60fb      	str	r3, [r7, #12]
    169a:	e002      	b.n	16a2 <strlen+0x14>
    169c:	68fb      	ldr	r3, [r7, #12]
    169e:	3301      	adds	r3, #1
    16a0:	60fb      	str	r3, [r7, #12]
    16a2:	68fb      	ldr	r3, [r7, #12]
    16a4:	687a      	ldr	r2, [r7, #4]
    16a6:	4413      	add	r3, r2
    16a8:	781b      	ldrb	r3, [r3, #0]
    16aa:	2b00      	cmp	r3, #0
    16ac:	d1f6      	bne.n	169c <strlen+0xe>
    16ae:	68fb      	ldr	r3, [r7, #12]
    16b0:	4618      	mov	r0, r3
    16b2:	3714      	adds	r7, #20
    16b4:	46bd      	mov	sp, r7
    16b6:	bc80      	pop	{r7}
    16b8:	4770      	bx	lr

000016ba <fill>:
    16ba:	b480      	push	{r7}
    16bc:	b087      	sub	sp, #28
    16be:	af00      	add	r7, sp, #0
    16c0:	60f8      	str	r0, [r7, #12]
    16c2:	60b9      	str	r1, [r7, #8]
    16c4:	4613      	mov	r3, r2
    16c6:	71fb      	strb	r3, [r7, #7]
    16c8:	2300      	movs	r3, #0
    16ca:	617b      	str	r3, [r7, #20]
    16cc:	e007      	b.n	16de <fill+0x24>
    16ce:	68fb      	ldr	r3, [r7, #12]
    16d0:	1c5a      	adds	r2, r3, #1
    16d2:	60fa      	str	r2, [r7, #12]
    16d4:	79fa      	ldrb	r2, [r7, #7]
    16d6:	701a      	strb	r2, [r3, #0]
    16d8:	697b      	ldr	r3, [r7, #20]
    16da:	3301      	adds	r3, #1
    16dc:	617b      	str	r3, [r7, #20]
    16de:	697a      	ldr	r2, [r7, #20]
    16e0:	68bb      	ldr	r3, [r7, #8]
    16e2:	429a      	cmp	r2, r3
    16e4:	d3f3      	bcc.n	16ce <fill+0x14>
    16e6:	bf00      	nop
    16e8:	371c      	adds	r7, #28
    16ea:	46bd      	mov	sp, r7
    16ec:	bc80      	pop	{r7}
    16ee:	4770      	bx	lr

000016f0 <is_lower>:
    16f0:	b480      	push	{r7}
    16f2:	b083      	sub	sp, #12
    16f4:	af00      	add	r7, sp, #0
    16f6:	4603      	mov	r3, r0
    16f8:	71fb      	strb	r3, [r7, #7]
    16fa:	79fb      	ldrb	r3, [r7, #7]
    16fc:	2b60      	cmp	r3, #96	; 0x60
    16fe:	d904      	bls.n	170a <is_lower+0x1a>
    1700:	79fb      	ldrb	r3, [r7, #7]
    1702:	2b7a      	cmp	r3, #122	; 0x7a
    1704:	d801      	bhi.n	170a <is_lower+0x1a>
    1706:	2301      	movs	r3, #1
    1708:	e000      	b.n	170c <is_lower+0x1c>
    170a:	2300      	movs	r3, #0
    170c:	4618      	mov	r0, r3
    170e:	370c      	adds	r7, #12
    1710:	46bd      	mov	sp, r7
    1712:	bc80      	pop	{r7}
    1714:	4770      	bx	lr

00001716 <is_upper>:
    1716:	b480      	push	{r7}
    1718:	b083      	sub	sp, #12
    171a:	af00      	add	r7, sp, #0
    171c:	4603      	mov	r3, r0
    171e:	71fb      	strb	r3, [r7, #7]
    1720:	79fb      	ldrb	r3, [r7, #7]
    1722:	2b40      	cmp	r3, #64	; 0x40
    1724:	d904      	bls.n	1730 <is_upper+0x1a>
    1726:	79fb      	ldrb	r3, [r7, #7]
    1728:	2b5a      	cmp	r3, #90	; 0x5a
    172a:	d801      	bhi.n	1730 <is_upper+0x1a>
    172c:	2301      	movs	r3, #1
    172e:	e000      	b.n	1732 <is_upper+0x1c>
    1730:	2300      	movs	r3, #0
    1732:	4618      	mov	r0, r3
    1734:	370c      	adds	r7, #12
    1736:	46bd      	mov	sp, r7
    1738:	bc80      	pop	{r7}
    173a:	4770      	bx	lr

0000173c <uppercase>:
    173c:	b580      	push	{r7, lr}
    173e:	b082      	sub	sp, #8
    1740:	af00      	add	r7, sp, #0
    1742:	6078      	str	r0, [r7, #4]
    1744:	e010      	b.n	1768 <uppercase+0x2c>
    1746:	687b      	ldr	r3, [r7, #4]
    1748:	781b      	ldrb	r3, [r3, #0]
    174a:	4618      	mov	r0, r3
    174c:	f7ff ffd0 	bl	16f0 <is_lower>
    1750:	4603      	mov	r3, r0
    1752:	2b00      	cmp	r3, #0
    1754:	d005      	beq.n	1762 <uppercase+0x26>
    1756:	687b      	ldr	r3, [r7, #4]
    1758:	781b      	ldrb	r3, [r3, #0]
    175a:	3b20      	subs	r3, #32
    175c:	b2da      	uxtb	r2, r3
    175e:	687b      	ldr	r3, [r7, #4]
    1760:	701a      	strb	r2, [r3, #0]
    1762:	687b      	ldr	r3, [r7, #4]
    1764:	3301      	adds	r3, #1
    1766:	607b      	str	r3, [r7, #4]
    1768:	687b      	ldr	r3, [r7, #4]
    176a:	781b      	ldrb	r3, [r3, #0]
    176c:	2b00      	cmp	r3, #0
    176e:	d1ea      	bne.n	1746 <uppercase+0xa>
    1770:	bf00      	nop
    1772:	3708      	adds	r7, #8
    1774:	46bd      	mov	sp, r7
    1776:	bd80      	pop	{r7, pc}

00001778 <scan>:
    1778:	b480      	push	{r7}
    177a:	b085      	sub	sp, #20
    177c:	af00      	add	r7, sp, #0
    177e:	60f8      	str	r0, [r7, #12]
    1780:	60b9      	str	r1, [r7, #8]
    1782:	4613      	mov	r3, r2
    1784:	71fb      	strb	r3, [r7, #7]
    1786:	e002      	b.n	178e <scan+0x16>
    1788:	68bb      	ldr	r3, [r7, #8]
    178a:	3301      	adds	r3, #1
    178c:	60bb      	str	r3, [r7, #8]
    178e:	68bb      	ldr	r3, [r7, #8]
    1790:	68fa      	ldr	r2, [r7, #12]
    1792:	4413      	add	r3, r2
    1794:	781b      	ldrb	r3, [r3, #0]
    1796:	2b00      	cmp	r3, #0
    1798:	d006      	beq.n	17a8 <scan+0x30>
    179a:	68bb      	ldr	r3, [r7, #8]
    179c:	68fa      	ldr	r2, [r7, #12]
    179e:	4413      	add	r3, r2
    17a0:	781b      	ldrb	r3, [r3, #0]
    17a2:	79fa      	ldrb	r2, [r7, #7]
    17a4:	429a      	cmp	r2, r3
    17a6:	d1ef      	bne.n	1788 <scan+0x10>
    17a8:	68bb      	ldr	r3, [r7, #8]
    17aa:	4618      	mov	r0, r3
    17ac:	3714      	adds	r7, #20
    17ae:	46bd      	mov	sp, r7
    17b0:	bc80      	pop	{r7}
    17b2:	4770      	bx	lr

000017b4 <skip>:
    17b4:	b480      	push	{r7}
    17b6:	b085      	sub	sp, #20
    17b8:	af00      	add	r7, sp, #0
    17ba:	60f8      	str	r0, [r7, #12]
    17bc:	60b9      	str	r1, [r7, #8]
    17be:	4613      	mov	r3, r2
    17c0:	71fb      	strb	r3, [r7, #7]
    17c2:	e002      	b.n	17ca <skip+0x16>
    17c4:	68bb      	ldr	r3, [r7, #8]
    17c6:	3301      	adds	r3, #1
    17c8:	60bb      	str	r3, [r7, #8]
    17ca:	68bb      	ldr	r3, [r7, #8]
    17cc:	68fa      	ldr	r2, [r7, #12]
    17ce:	4413      	add	r3, r2
    17d0:	781b      	ldrb	r3, [r3, #0]
    17d2:	2b00      	cmp	r3, #0
    17d4:	d006      	beq.n	17e4 <skip+0x30>
    17d6:	68bb      	ldr	r3, [r7, #8]
    17d8:	68fa      	ldr	r2, [r7, #12]
    17da:	4413      	add	r3, r2
    17dc:	781b      	ldrb	r3, [r3, #0]
    17de:	79fa      	ldrb	r2, [r7, #7]
    17e0:	429a      	cmp	r2, r3
    17e2:	d0ef      	beq.n	17c4 <skip+0x10>
    17e4:	68bb      	ldr	r3, [r7, #8]
    17e6:	4618      	mov	r0, r3
    17e8:	3714      	adds	r7, #20
    17ea:	46bd      	mov	sp, r7
    17ec:	bc80      	pop	{r7}
    17ee:	4770      	bx	lr

000017f0 <itoa>:
    17f0:	b480      	push	{r7}
    17f2:	b087      	sub	sp, #28
    17f4:	af00      	add	r7, sp, #0
    17f6:	60f8      	str	r0, [r7, #12]
    17f8:	60b9      	str	r1, [r7, #8]
    17fa:	607a      	str	r2, [r7, #4]
    17fc:	603b      	str	r3, [r7, #0]
    17fe:	2300      	movs	r3, #0
    1800:	617b      	str	r3, [r7, #20]
    1802:	683b      	ldr	r3, [r7, #0]
    1804:	1e5a      	subs	r2, r3, #1
    1806:	603a      	str	r2, [r7, #0]
    1808:	461a      	mov	r2, r3
    180a:	68bb      	ldr	r3, [r7, #8]
    180c:	4413      	add	r3, r2
    180e:	2200      	movs	r2, #0
    1810:	701a      	strb	r2, [r3, #0]
    1812:	68fb      	ldr	r3, [r7, #12]
    1814:	2b00      	cmp	r3, #0
    1816:	da24      	bge.n	1862 <itoa+0x72>
    1818:	68fb      	ldr	r3, [r7, #12]
    181a:	425b      	negs	r3, r3
    181c:	60fb      	str	r3, [r7, #12]
    181e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1822:	617b      	str	r3, [r7, #20]
    1824:	e01d      	b.n	1862 <itoa+0x72>
    1826:	68fb      	ldr	r3, [r7, #12]
    1828:	687a      	ldr	r2, [r7, #4]
    182a:	fb93 f2f2 	sdiv	r2, r3, r2
    182e:	6879      	ldr	r1, [r7, #4]
    1830:	fb01 f202 	mul.w	r2, r1, r2
    1834:	1a9b      	subs	r3, r3, r2
    1836:	b2db      	uxtb	r3, r3
    1838:	3330      	adds	r3, #48	; 0x30
    183a:	74fb      	strb	r3, [r7, #19]
    183c:	7cfb      	ldrb	r3, [r7, #19]
    183e:	2b39      	cmp	r3, #57	; 0x39
    1840:	d902      	bls.n	1848 <itoa+0x58>
    1842:	7cfb      	ldrb	r3, [r7, #19]
    1844:	3307      	adds	r3, #7
    1846:	74fb      	strb	r3, [r7, #19]
    1848:	683b      	ldr	r3, [r7, #0]
    184a:	1e5a      	subs	r2, r3, #1
    184c:	603a      	str	r2, [r7, #0]
    184e:	461a      	mov	r2, r3
    1850:	68bb      	ldr	r3, [r7, #8]
    1852:	4413      	add	r3, r2
    1854:	7cfa      	ldrb	r2, [r7, #19]
    1856:	701a      	strb	r2, [r3, #0]
    1858:	68fa      	ldr	r2, [r7, #12]
    185a:	687b      	ldr	r3, [r7, #4]
    185c:	fb92 f3f3 	sdiv	r3, r2, r3
    1860:	60fb      	str	r3, [r7, #12]
    1862:	68fb      	ldr	r3, [r7, #12]
    1864:	2b00      	cmp	r3, #0
    1866:	d00b      	beq.n	1880 <itoa+0x90>
    1868:	683b      	ldr	r3, [r7, #0]
    186a:	2b00      	cmp	r3, #0
    186c:	dadb      	bge.n	1826 <itoa+0x36>
    186e:	e007      	b.n	1880 <itoa+0x90>
    1870:	683b      	ldr	r3, [r7, #0]
    1872:	1e5a      	subs	r2, r3, #1
    1874:	603a      	str	r2, [r7, #0]
    1876:	461a      	mov	r2, r3
    1878:	68bb      	ldr	r3, [r7, #8]
    187a:	4413      	add	r3, r2
    187c:	2230      	movs	r2, #48	; 0x30
    187e:	701a      	strb	r2, [r3, #0]
    1880:	683b      	ldr	r3, [r7, #0]
    1882:	2b00      	cmp	r3, #0
    1884:	dcf4      	bgt.n	1870 <itoa+0x80>
    1886:	697b      	ldr	r3, [r7, #20]
    1888:	2b00      	cmp	r3, #0
    188a:	d006      	beq.n	189a <itoa+0xaa>
    188c:	683b      	ldr	r3, [r7, #0]
    188e:	2b00      	cmp	r3, #0
    1890:	d103      	bne.n	189a <itoa+0xaa>
    1892:	68bb      	ldr	r3, [r7, #8]
    1894:	222d      	movs	r2, #45	; 0x2d
    1896:	701a      	strb	r2, [r3, #0]
    1898:	e005      	b.n	18a6 <itoa+0xb6>
    189a:	683b      	ldr	r3, [r7, #0]
    189c:	2b00      	cmp	r3, #0
    189e:	d102      	bne.n	18a6 <itoa+0xb6>
    18a0:	68bb      	ldr	r3, [r7, #8]
    18a2:	2230      	movs	r2, #48	; 0x30
    18a4:	701a      	strb	r2, [r3, #0]
    18a6:	68bb      	ldr	r3, [r7, #8]
    18a8:	4618      	mov	r0, r3
    18aa:	371c      	adds	r7, #28
    18ac:	46bd      	mov	sp, r7
    18ae:	bc80      	pop	{r7}
    18b0:	4770      	bx	lr

000018b2 <strcat>:
    18b2:	b580      	push	{r7, lr}
    18b4:	b082      	sub	sp, #8
    18b6:	af00      	add	r7, sp, #0
    18b8:	6078      	str	r0, [r7, #4]
    18ba:	6039      	str	r1, [r7, #0]
    18bc:	6878      	ldr	r0, [r7, #4]
    18be:	f7ff fee6 	bl	168e <strlen>
    18c2:	4603      	mov	r3, r0
    18c4:	461a      	mov	r2, r3
    18c6:	687b      	ldr	r3, [r7, #4]
    18c8:	4413      	add	r3, r2
    18ca:	607b      	str	r3, [r7, #4]
    18cc:	e007      	b.n	18de <strcat+0x2c>
    18ce:	687b      	ldr	r3, [r7, #4]
    18d0:	1c5a      	adds	r2, r3, #1
    18d2:	607a      	str	r2, [r7, #4]
    18d4:	683a      	ldr	r2, [r7, #0]
    18d6:	1c51      	adds	r1, r2, #1
    18d8:	6039      	str	r1, [r7, #0]
    18da:	7812      	ldrb	r2, [r2, #0]
    18dc:	701a      	strb	r2, [r3, #0]
    18de:	683b      	ldr	r3, [r7, #0]
    18e0:	781b      	ldrb	r3, [r3, #0]
    18e2:	2b00      	cmp	r3, #0
    18e4:	d1f3      	bne.n	18ce <strcat+0x1c>
    18e6:	687b      	ldr	r3, [r7, #4]
    18e8:	2200      	movs	r2, #0
    18ea:	701a      	strb	r2, [r3, #0]
    18ec:	687b      	ldr	r3, [r7, #4]
    18ee:	4618      	mov	r0, r3
    18f0:	3708      	adds	r7, #8
    18f2:	46bd      	mov	sp, r7
    18f4:	bd80      	pop	{r7, pc}

000018f6 <config_pin>:
    18f6:	b480      	push	{r7}
    18f8:	b087      	sub	sp, #28
    18fa:	af00      	add	r7, sp, #0
    18fc:	60f8      	str	r0, [r7, #12]
    18fe:	60b9      	str	r1, [r7, #8]
    1900:	607a      	str	r2, [r7, #4]
    1902:	68bb      	ldr	r3, [r7, #8]
    1904:	b2db      	uxtb	r3, r3
    1906:	009b      	lsls	r3, r3, #2
    1908:	b2db      	uxtb	r3, r3
    190a:	f003 031c 	and.w	r3, r3, #28
    190e:	75fb      	strb	r3, [r7, #23]
    1910:	68bb      	ldr	r3, [r7, #8]
    1912:	08da      	lsrs	r2, r3, #3
    1914:	68bb      	ldr	r3, [r7, #8]
    1916:	08d9      	lsrs	r1, r3, #3
    1918:	68fb      	ldr	r3, [r7, #12]
    191a:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    191e:	7df9      	ldrb	r1, [r7, #23]
    1920:	200f      	movs	r0, #15
    1922:	fa00 f101 	lsl.w	r1, r0, r1
    1926:	43c9      	mvns	r1, r1
    1928:	4019      	ands	r1, r3
    192a:	68fb      	ldr	r3, [r7, #12]
    192c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1930:	68bb      	ldr	r3, [r7, #8]
    1932:	08da      	lsrs	r2, r3, #3
    1934:	68bb      	ldr	r3, [r7, #8]
    1936:	08d9      	lsrs	r1, r3, #3
    1938:	68fb      	ldr	r3, [r7, #12]
    193a:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    193e:	7dfb      	ldrb	r3, [r7, #23]
    1940:	6878      	ldr	r0, [r7, #4]
    1942:	fa00 f303 	lsl.w	r3, r0, r3
    1946:	4319      	orrs	r1, r3
    1948:	68fb      	ldr	r3, [r7, #12]
    194a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    194e:	bf00      	nop
    1950:	371c      	adds	r7, #28
    1952:	46bd      	mov	sp, r7
    1954:	bc80      	pop	{r7}
    1956:	4770      	bx	lr

00001958 <read_pin>:
    1958:	b480      	push	{r7}
    195a:	b083      	sub	sp, #12
    195c:	af00      	add	r7, sp, #0
    195e:	6078      	str	r0, [r7, #4]
    1960:	6039      	str	r1, [r7, #0]
    1962:	687b      	ldr	r3, [r7, #4]
    1964:	689b      	ldr	r3, [r3, #8]
    1966:	2101      	movs	r1, #1
    1968:	683a      	ldr	r2, [r7, #0]
    196a:	fa01 f202 	lsl.w	r2, r1, r2
    196e:	4013      	ands	r3, r2
    1970:	4618      	mov	r0, r3
    1972:	370c      	adds	r7, #12
    1974:	46bd      	mov	sp, r7
    1976:	bc80      	pop	{r7}
    1978:	4770      	bx	lr

0000197a <write_pin>:
    197a:	b480      	push	{r7}
    197c:	b085      	sub	sp, #20
    197e:	af00      	add	r7, sp, #0
    1980:	60f8      	str	r0, [r7, #12]
    1982:	60b9      	str	r1, [r7, #8]
    1984:	607a      	str	r2, [r7, #4]
    1986:	687b      	ldr	r3, [r7, #4]
    1988:	2b00      	cmp	r3, #0
    198a:	d009      	beq.n	19a0 <write_pin+0x26>
    198c:	68fb      	ldr	r3, [r7, #12]
    198e:	68db      	ldr	r3, [r3, #12]
    1990:	2101      	movs	r1, #1
    1992:	68ba      	ldr	r2, [r7, #8]
    1994:	fa01 f202 	lsl.w	r2, r1, r2
    1998:	431a      	orrs	r2, r3
    199a:	68fb      	ldr	r3, [r7, #12]
    199c:	60da      	str	r2, [r3, #12]
    199e:	e009      	b.n	19b4 <write_pin+0x3a>
    19a0:	68fb      	ldr	r3, [r7, #12]
    19a2:	68db      	ldr	r3, [r3, #12]
    19a4:	2101      	movs	r1, #1
    19a6:	68ba      	ldr	r2, [r7, #8]
    19a8:	fa01 f202 	lsl.w	r2, r1, r2
    19ac:	43d2      	mvns	r2, r2
    19ae:	401a      	ands	r2, r3
    19b0:	68fb      	ldr	r3, [r7, #12]
    19b2:	60da      	str	r2, [r3, #12]
    19b4:	bf00      	nop
    19b6:	3714      	adds	r7, #20
    19b8:	46bd      	mov	sp, r7
    19ba:	bc80      	pop	{r7}
    19bc:	4770      	bx	lr

000019be <toggle_pin>:
    19be:	b480      	push	{r7}
    19c0:	b083      	sub	sp, #12
    19c2:	af00      	add	r7, sp, #0
    19c4:	6078      	str	r0, [r7, #4]
    19c6:	6039      	str	r1, [r7, #0]
    19c8:	687b      	ldr	r3, [r7, #4]
    19ca:	68db      	ldr	r3, [r3, #12]
    19cc:	2101      	movs	r1, #1
    19ce:	683a      	ldr	r2, [r7, #0]
    19d0:	fa01 f202 	lsl.w	r2, r1, r2
    19d4:	405a      	eors	r2, r3
    19d6:	687b      	ldr	r3, [r7, #4]
    19d8:	60da      	str	r2, [r3, #12]
    19da:	bf00      	nop
    19dc:	370c      	adds	r7, #12
    19de:	46bd      	mov	sp, r7
    19e0:	bc80      	pop	{r7}
    19e2:	4770      	bx	lr

000019e4 <gfx_blit>:
    19e4:	b5f0      	push	{r4, r5, r6, r7, lr}
    19e6:	b087      	sub	sp, #28
    19e8:	af00      	add	r7, sp, #0
    19ea:	60f8      	str	r0, [r7, #12]
    19ec:	60b9      	str	r1, [r7, #8]
    19ee:	4611      	mov	r1, r2
    19f0:	461a      	mov	r2, r3
    19f2:	460b      	mov	r3, r1
    19f4:	71fb      	strb	r3, [r7, #7]
    19f6:	4613      	mov	r3, r2
    19f8:	71bb      	strb	r3, [r7, #6]
    19fa:	f002 fcdb 	bl	43b4 <get_video_params>
    19fe:	6178      	str	r0, [r7, #20]
    1a00:	68fb      	ldr	r3, [r7, #12]
    1a02:	2b00      	cmp	r3, #0
    1a04:	db0e      	blt.n	1a24 <gfx_blit+0x40>
    1a06:	697b      	ldr	r3, [r7, #20]
    1a08:	899b      	ldrh	r3, [r3, #12]
    1a0a:	461a      	mov	r2, r3
    1a0c:	68fb      	ldr	r3, [r7, #12]
    1a0e:	429a      	cmp	r2, r3
    1a10:	dd08      	ble.n	1a24 <gfx_blit+0x40>
    1a12:	68bb      	ldr	r3, [r7, #8]
    1a14:	2b00      	cmp	r3, #0
    1a16:	db05      	blt.n	1a24 <gfx_blit+0x40>
    1a18:	697b      	ldr	r3, [r7, #20]
    1a1a:	89db      	ldrh	r3, [r3, #14]
    1a1c:	461a      	mov	r2, r3
    1a1e:	68bb      	ldr	r3, [r7, #8]
    1a20:	429a      	cmp	r2, r3
    1a22:	dc01      	bgt.n	1a28 <gfx_blit+0x44>
    1a24:	2300      	movs	r3, #0
    1a26:	e04f      	b.n	1ac8 <gfx_blit+0xe4>
    1a28:	697b      	ldr	r3, [r7, #20]
    1a2a:	7a1b      	ldrb	r3, [r3, #8]
    1a2c:	461a      	mov	r2, r3
    1a2e:	68bb      	ldr	r3, [r7, #8]
    1a30:	fb03 f202 	mul.w	r2, r3, r2
    1a34:	68fb      	ldr	r3, [r7, #12]
    1a36:	0fd9      	lsrs	r1, r3, #31
    1a38:	440b      	add	r3, r1
    1a3a:	105b      	asrs	r3, r3, #1
    1a3c:	18d6      	adds	r6, r2, r3
    1a3e:	79fb      	ldrb	r3, [r7, #7]
    1a40:	f003 030f 	and.w	r3, r3, #15
    1a44:	71fb      	strb	r3, [r7, #7]
    1a46:	25f0      	movs	r5, #240	; 0xf0
    1a48:	68fb      	ldr	r3, [r7, #12]
    1a4a:	f003 0301 	and.w	r3, r3, #1
    1a4e:	2b00      	cmp	r3, #0
    1a50:	d103      	bne.n	1a5a <gfx_blit+0x76>
    1a52:	79fb      	ldrb	r3, [r7, #7]
    1a54:	011b      	lsls	r3, r3, #4
    1a56:	71fb      	strb	r3, [r7, #7]
    1a58:	250f      	movs	r5, #15
    1a5a:	4b1d      	ldr	r3, [pc, #116]	; (1ad0 <gfx_blit+0xec>)
    1a5c:	5d9c      	ldrb	r4, [r3, r6]
    1a5e:	79bb      	ldrb	r3, [r7, #6]
    1a60:	2b04      	cmp	r3, #4
    1a62:	d828      	bhi.n	1ab6 <gfx_blit+0xd2>
    1a64:	a201      	add	r2, pc, #4	; (adr r2, 1a6c <gfx_blit+0x88>)
    1a66:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1a6a:	bf00      	nop
    1a6c:	00001a81 	.word	0x00001a81
    1a70:	00001a89 	.word	0x00001a89
    1a74:	00001a91 	.word	0x00001a91
    1a78:	00001a99 	.word	0x00001a99
    1a7c:	00001aa9 	.word	0x00001aa9
    1a80:	79fb      	ldrb	r3, [r7, #7]
    1a82:	4323      	orrs	r3, r4
    1a84:	b2dc      	uxtb	r4, r3
    1a86:	e016      	b.n	1ab6 <gfx_blit+0xd2>
    1a88:	79fb      	ldrb	r3, [r7, #7]
    1a8a:	4023      	ands	r3, r4
    1a8c:	b2dc      	uxtb	r4, r3
    1a8e:	e012      	b.n	1ab6 <gfx_blit+0xd2>
    1a90:	79fb      	ldrb	r3, [r7, #7]
    1a92:	4063      	eors	r3, r4
    1a94:	b2dc      	uxtb	r4, r3
    1a96:	e00e      	b.n	1ab6 <gfx_blit+0xd2>
    1a98:	b26b      	sxtb	r3, r5
    1a9a:	43db      	mvns	r3, r3
    1a9c:	b25a      	sxtb	r2, r3
    1a9e:	b263      	sxtb	r3, r4
    1aa0:	4053      	eors	r3, r2
    1aa2:	b25b      	sxtb	r3, r3
    1aa4:	b2dc      	uxtb	r4, r3
    1aa6:	e006      	b.n	1ab6 <gfx_blit+0xd2>
    1aa8:	ea04 0305 	and.w	r3, r4, r5
    1aac:	b2dc      	uxtb	r4, r3
    1aae:	79fb      	ldrb	r3, [r7, #7]
    1ab0:	4323      	orrs	r3, r4
    1ab2:	b2dc      	uxtb	r4, r3
    1ab4:	bf00      	nop
    1ab6:	4b06      	ldr	r3, [pc, #24]	; (1ad0 <gfx_blit+0xec>)
    1ab8:	4622      	mov	r2, r4
    1aba:	559a      	strb	r2, [r3, r6]
    1abc:	ea04 0305 	and.w	r3, r4, r5
    1ac0:	b2da      	uxtb	r2, r3
    1ac2:	79fb      	ldrb	r3, [r7, #7]
    1ac4:	4053      	eors	r3, r2
    1ac6:	b2db      	uxtb	r3, r3
    1ac8:	4618      	mov	r0, r3
    1aca:	371c      	adds	r7, #28
    1acc:	46bd      	mov	sp, r7
    1ace:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1ad0:	20002538 	.word	0x20002538

00001ad4 <gfx_plot>:
    1ad4:	b5b0      	push	{r4, r5, r7, lr}
    1ad6:	b086      	sub	sp, #24
    1ad8:	af00      	add	r7, sp, #0
    1ada:	60f8      	str	r0, [r7, #12]
    1adc:	60b9      	str	r1, [r7, #8]
    1ade:	4613      	mov	r3, r2
    1ae0:	71fb      	strb	r3, [r7, #7]
    1ae2:	f002 fc67 	bl	43b4 <get_video_params>
    1ae6:	6178      	str	r0, [r7, #20]
    1ae8:	68fb      	ldr	r3, [r7, #12]
    1aea:	2b00      	cmp	r3, #0
    1aec:	db39      	blt.n	1b62 <gfx_plot+0x8e>
    1aee:	697b      	ldr	r3, [r7, #20]
    1af0:	899b      	ldrh	r3, [r3, #12]
    1af2:	461a      	mov	r2, r3
    1af4:	68fb      	ldr	r3, [r7, #12]
    1af6:	429a      	cmp	r2, r3
    1af8:	dd33      	ble.n	1b62 <gfx_plot+0x8e>
    1afa:	68bb      	ldr	r3, [r7, #8]
    1afc:	2b00      	cmp	r3, #0
    1afe:	db30      	blt.n	1b62 <gfx_plot+0x8e>
    1b00:	697b      	ldr	r3, [r7, #20]
    1b02:	89db      	ldrh	r3, [r3, #14]
    1b04:	461a      	mov	r2, r3
    1b06:	68bb      	ldr	r3, [r7, #8]
    1b08:	429a      	cmp	r2, r3
    1b0a:	dd2a      	ble.n	1b62 <gfx_plot+0x8e>
    1b0c:	697b      	ldr	r3, [r7, #20]
    1b0e:	7a1b      	ldrb	r3, [r3, #8]
    1b10:	461a      	mov	r2, r3
    1b12:	68bb      	ldr	r3, [r7, #8]
    1b14:	fb03 f202 	mul.w	r2, r3, r2
    1b18:	68fb      	ldr	r3, [r7, #12]
    1b1a:	0fd9      	lsrs	r1, r3, #31
    1b1c:	440b      	add	r3, r1
    1b1e:	105b      	asrs	r3, r3, #1
    1b20:	18d5      	adds	r5, r2, r3
    1b22:	79fb      	ldrb	r3, [r7, #7]
    1b24:	f003 030f 	and.w	r3, r3, #15
    1b28:	71fb      	strb	r3, [r7, #7]
    1b2a:	4b10      	ldr	r3, [pc, #64]	; (1b6c <gfx_plot+0x98>)
    1b2c:	5d5c      	ldrb	r4, [r3, r5]
    1b2e:	68fb      	ldr	r3, [r7, #12]
    1b30:	f003 0301 	and.w	r3, r3, #1
    1b34:	2b00      	cmp	r3, #0
    1b36:	d006      	beq.n	1b46 <gfx_plot+0x72>
    1b38:	f024 030f 	bic.w	r3, r4, #15
    1b3c:	b2dc      	uxtb	r4, r3
    1b3e:	79fb      	ldrb	r3, [r7, #7]
    1b40:	4323      	orrs	r3, r4
    1b42:	b2dc      	uxtb	r4, r3
    1b44:	e009      	b.n	1b5a <gfx_plot+0x86>
    1b46:	f004 030f 	and.w	r3, r4, #15
    1b4a:	b2dc      	uxtb	r4, r3
    1b4c:	79fb      	ldrb	r3, [r7, #7]
    1b4e:	011b      	lsls	r3, r3, #4
    1b50:	b25a      	sxtb	r2, r3
    1b52:	b263      	sxtb	r3, r4
    1b54:	4313      	orrs	r3, r2
    1b56:	b25b      	sxtb	r3, r3
    1b58:	b2dc      	uxtb	r4, r3
    1b5a:	4b04      	ldr	r3, [pc, #16]	; (1b6c <gfx_plot+0x98>)
    1b5c:	4622      	mov	r2, r4
    1b5e:	555a      	strb	r2, [r3, r5]
    1b60:	e000      	b.n	1b64 <gfx_plot+0x90>
    1b62:	bf00      	nop
    1b64:	3718      	adds	r7, #24
    1b66:	46bd      	mov	sp, r7
    1b68:	bdb0      	pop	{r4, r5, r7, pc}
    1b6a:	bf00      	nop
    1b6c:	20002538 	.word	0x20002538

00001b70 <gfx_rectangle>:
    1b70:	b580      	push	{r7, lr}
    1b72:	b086      	sub	sp, #24
    1b74:	af00      	add	r7, sp, #0
    1b76:	60f8      	str	r0, [r7, #12]
    1b78:	60b9      	str	r1, [r7, #8]
    1b7a:	607a      	str	r2, [r7, #4]
    1b7c:	603b      	str	r3, [r7, #0]
    1b7e:	68fa      	ldr	r2, [r7, #12]
    1b80:	687b      	ldr	r3, [r7, #4]
    1b82:	429a      	cmp	r2, r3
    1b84:	dd05      	ble.n	1b92 <gfx_rectangle+0x22>
    1b86:	68fb      	ldr	r3, [r7, #12]
    1b88:	617b      	str	r3, [r7, #20]
    1b8a:	687b      	ldr	r3, [r7, #4]
    1b8c:	60fb      	str	r3, [r7, #12]
    1b8e:	697b      	ldr	r3, [r7, #20]
    1b90:	607b      	str	r3, [r7, #4]
    1b92:	68ba      	ldr	r2, [r7, #8]
    1b94:	683b      	ldr	r3, [r7, #0]
    1b96:	429a      	cmp	r2, r3
    1b98:	dd05      	ble.n	1ba6 <gfx_rectangle+0x36>
    1b9a:	68bb      	ldr	r3, [r7, #8]
    1b9c:	617b      	str	r3, [r7, #20]
    1b9e:	683b      	ldr	r3, [r7, #0]
    1ba0:	60bb      	str	r3, [r7, #8]
    1ba2:	697b      	ldr	r3, [r7, #20]
    1ba4:	603b      	str	r3, [r7, #0]
    1ba6:	68fb      	ldr	r3, [r7, #12]
    1ba8:	617b      	str	r3, [r7, #20]
    1baa:	e00c      	b.n	1bc6 <gfx_rectangle+0x56>
    1bac:	220f      	movs	r2, #15
    1bae:	68b9      	ldr	r1, [r7, #8]
    1bb0:	6978      	ldr	r0, [r7, #20]
    1bb2:	f7ff ff8f 	bl	1ad4 <gfx_plot>
    1bb6:	220f      	movs	r2, #15
    1bb8:	6839      	ldr	r1, [r7, #0]
    1bba:	6978      	ldr	r0, [r7, #20]
    1bbc:	f7ff ff8a 	bl	1ad4 <gfx_plot>
    1bc0:	697b      	ldr	r3, [r7, #20]
    1bc2:	3301      	adds	r3, #1
    1bc4:	617b      	str	r3, [r7, #20]
    1bc6:	697a      	ldr	r2, [r7, #20]
    1bc8:	687b      	ldr	r3, [r7, #4]
    1bca:	429a      	cmp	r2, r3
    1bcc:	ddee      	ble.n	1bac <gfx_rectangle+0x3c>
    1bce:	68bb      	ldr	r3, [r7, #8]
    1bd0:	3301      	adds	r3, #1
    1bd2:	60bb      	str	r3, [r7, #8]
    1bd4:	e00c      	b.n	1bf0 <gfx_rectangle+0x80>
    1bd6:	220f      	movs	r2, #15
    1bd8:	68b9      	ldr	r1, [r7, #8]
    1bda:	68f8      	ldr	r0, [r7, #12]
    1bdc:	f7ff ff7a 	bl	1ad4 <gfx_plot>
    1be0:	220f      	movs	r2, #15
    1be2:	68b9      	ldr	r1, [r7, #8]
    1be4:	6878      	ldr	r0, [r7, #4]
    1be6:	f7ff ff75 	bl	1ad4 <gfx_plot>
    1bea:	68bb      	ldr	r3, [r7, #8]
    1bec:	3301      	adds	r3, #1
    1bee:	60bb      	str	r3, [r7, #8]
    1bf0:	68ba      	ldr	r2, [r7, #8]
    1bf2:	683b      	ldr	r3, [r7, #0]
    1bf4:	429a      	cmp	r2, r3
    1bf6:	dbee      	blt.n	1bd6 <gfx_rectangle+0x66>
    1bf8:	bf00      	nop
    1bfa:	3718      	adds	r7, #24
    1bfc:	46bd      	mov	sp, r7
    1bfe:	bd80      	pop	{r7, pc}

00001c00 <gfx_cls>:
    1c00:	b580      	push	{r7, lr}
    1c02:	b082      	sub	sp, #8
    1c04:	af00      	add	r7, sp, #0
    1c06:	2300      	movs	r3, #0
    1c08:	607b      	str	r3, [r7, #4]
    1c0a:	e007      	b.n	1c1c <gfx_cls+0x1c>
    1c0c:	4a0a      	ldr	r2, [pc, #40]	; (1c38 <gfx_cls+0x38>)
    1c0e:	687b      	ldr	r3, [r7, #4]
    1c10:	4413      	add	r3, r2
    1c12:	2200      	movs	r2, #0
    1c14:	701a      	strb	r2, [r3, #0]
    1c16:	687b      	ldr	r3, [r7, #4]
    1c18:	3301      	adds	r3, #1
    1c1a:	607b      	str	r3, [r7, #4]
    1c1c:	687b      	ldr	r3, [r7, #4]
    1c1e:	f242 725f 	movw	r2, #10079	; 0x275f
    1c22:	4293      	cmp	r3, r2
    1c24:	ddf2      	ble.n	1c0c <gfx_cls+0xc>
    1c26:	2100      	movs	r1, #0
    1c28:	2000      	movs	r0, #0
    1c2a:	f001 ff2b 	bl	3a84 <set_cursor>
    1c2e:	bf00      	nop
    1c30:	3708      	adds	r7, #8
    1c32:	46bd      	mov	sp, r7
    1c34:	bd80      	pop	{r7, pc}
    1c36:	bf00      	nop
    1c38:	20002538 	.word	0x20002538

00001c3c <move_up>:
    1c3c:	b480      	push	{r7}
    1c3e:	b085      	sub	sp, #20
    1c40:	af00      	add	r7, sp, #0
    1c42:	60f8      	str	r0, [r7, #12]
    1c44:	60b9      	str	r1, [r7, #8]
    1c46:	607a      	str	r2, [r7, #4]
    1c48:	e009      	b.n	1c5e <move_up+0x22>
    1c4a:	68bb      	ldr	r3, [r7, #8]
    1c4c:	3b01      	subs	r3, #1
    1c4e:	60bb      	str	r3, [r7, #8]
    1c50:	68fb      	ldr	r3, [r7, #12]
    1c52:	3b01      	subs	r3, #1
    1c54:	60fb      	str	r3, [r7, #12]
    1c56:	68fb      	ldr	r3, [r7, #12]
    1c58:	781a      	ldrb	r2, [r3, #0]
    1c5a:	68bb      	ldr	r3, [r7, #8]
    1c5c:	701a      	strb	r2, [r3, #0]
    1c5e:	687b      	ldr	r3, [r7, #4]
    1c60:	1e5a      	subs	r2, r3, #1
    1c62:	607a      	str	r2, [r7, #4]
    1c64:	2b00      	cmp	r3, #0
    1c66:	d1f0      	bne.n	1c4a <move_up+0xe>
    1c68:	68bb      	ldr	r3, [r7, #8]
    1c6a:	4618      	mov	r0, r3
    1c6c:	3714      	adds	r7, #20
    1c6e:	46bd      	mov	sp, r7
    1c70:	bc80      	pop	{r7}
    1c72:	4770      	bx	lr

00001c74 <move_down>:
    1c74:	b480      	push	{r7}
    1c76:	b085      	sub	sp, #20
    1c78:	af00      	add	r7, sp, #0
    1c7a:	60f8      	str	r0, [r7, #12]
    1c7c:	60b9      	str	r1, [r7, #8]
    1c7e:	607a      	str	r2, [r7, #4]
    1c80:	e007      	b.n	1c92 <move_down+0x1e>
    1c82:	68bb      	ldr	r3, [r7, #8]
    1c84:	1c5a      	adds	r2, r3, #1
    1c86:	60ba      	str	r2, [r7, #8]
    1c88:	68fa      	ldr	r2, [r7, #12]
    1c8a:	1c51      	adds	r1, r2, #1
    1c8c:	60f9      	str	r1, [r7, #12]
    1c8e:	7812      	ldrb	r2, [r2, #0]
    1c90:	701a      	strb	r2, [r3, #0]
    1c92:	687b      	ldr	r3, [r7, #4]
    1c94:	1e5a      	subs	r2, r3, #1
    1c96:	607a      	str	r2, [r7, #4]
    1c98:	2b00      	cmp	r3, #0
    1c9a:	d1f2      	bne.n	1c82 <move_down+0xe>
    1c9c:	68bb      	ldr	r3, [r7, #8]
    1c9e:	4618      	mov	r0, r3
    1ca0:	3714      	adds	r7, #20
    1ca2:	46bd      	mov	sp, r7
    1ca4:	bc80      	pop	{r7}
    1ca6:	4770      	bx	lr

00001ca8 <gfx_scroll_up>:
    1ca8:	b580      	push	{r7, lr}
    1caa:	b086      	sub	sp, #24
    1cac:	af00      	add	r7, sp, #0
    1cae:	4603      	mov	r3, r0
    1cb0:	71fb      	strb	r3, [r7, #7]
    1cb2:	79fb      	ldrb	r3, [r7, #7]
    1cb4:	225a      	movs	r2, #90	; 0x5a
    1cb6:	fb02 f303 	mul.w	r3, r2, r3
    1cba:	4a13      	ldr	r2, [pc, #76]	; (1d08 <gfx_scroll_up+0x60>)
    1cbc:	4413      	add	r3, r2
    1cbe:	60fb      	str	r3, [r7, #12]
    1cc0:	4b11      	ldr	r3, [pc, #68]	; (1d08 <gfx_scroll_up+0x60>)
    1cc2:	617b      	str	r3, [r7, #20]
    1cc4:	79fb      	ldrb	r3, [r7, #7]
    1cc6:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1cca:	225a      	movs	r2, #90	; 0x5a
    1ccc:	fb02 f303 	mul.w	r3, r2, r3
    1cd0:	613b      	str	r3, [r7, #16]
    1cd2:	693a      	ldr	r2, [r7, #16]
    1cd4:	6979      	ldr	r1, [r7, #20]
    1cd6:	68f8      	ldr	r0, [r7, #12]
    1cd8:	f7ff ffcc 	bl	1c74 <move_down>
    1cdc:	6178      	str	r0, [r7, #20]
    1cde:	79fb      	ldrb	r3, [r7, #7]
    1ce0:	225a      	movs	r2, #90	; 0x5a
    1ce2:	fb02 f303 	mul.w	r3, r2, r3
    1ce6:	613b      	str	r3, [r7, #16]
    1ce8:	e004      	b.n	1cf4 <gfx_scroll_up+0x4c>
    1cea:	697b      	ldr	r3, [r7, #20]
    1cec:	1c5a      	adds	r2, r3, #1
    1cee:	617a      	str	r2, [r7, #20]
    1cf0:	2200      	movs	r2, #0
    1cf2:	701a      	strb	r2, [r3, #0]
    1cf4:	693b      	ldr	r3, [r7, #16]
    1cf6:	1e5a      	subs	r2, r3, #1
    1cf8:	613a      	str	r2, [r7, #16]
    1cfa:	2b00      	cmp	r3, #0
    1cfc:	d1f5      	bne.n	1cea <gfx_scroll_up+0x42>
    1cfe:	bf00      	nop
    1d00:	3718      	adds	r7, #24
    1d02:	46bd      	mov	sp, r7
    1d04:	bd80      	pop	{r7, pc}
    1d06:	bf00      	nop
    1d08:	20002538 	.word	0x20002538

00001d0c <gfx_scroll_down>:
    1d0c:	b580      	push	{r7, lr}
    1d0e:	b086      	sub	sp, #24
    1d10:	af00      	add	r7, sp, #0
    1d12:	4603      	mov	r3, r0
    1d14:	71fb      	strb	r3, [r7, #7]
    1d16:	79fb      	ldrb	r3, [r7, #7]
    1d18:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1d1c:	225a      	movs	r2, #90	; 0x5a
    1d1e:	fb02 f303 	mul.w	r3, r2, r3
    1d22:	4a13      	ldr	r2, [pc, #76]	; (1d70 <gfx_scroll_down+0x64>)
    1d24:	4413      	add	r3, r2
    1d26:	60fb      	str	r3, [r7, #12]
    1d28:	4b12      	ldr	r3, [pc, #72]	; (1d74 <gfx_scroll_down+0x68>)
    1d2a:	617b      	str	r3, [r7, #20]
    1d2c:	79fb      	ldrb	r3, [r7, #7]
    1d2e:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1d32:	225a      	movs	r2, #90	; 0x5a
    1d34:	fb02 f303 	mul.w	r3, r2, r3
    1d38:	613b      	str	r3, [r7, #16]
    1d3a:	693a      	ldr	r2, [r7, #16]
    1d3c:	6979      	ldr	r1, [r7, #20]
    1d3e:	68f8      	ldr	r0, [r7, #12]
    1d40:	f7ff ff7c 	bl	1c3c <move_up>
    1d44:	6178      	str	r0, [r7, #20]
    1d46:	79fb      	ldrb	r3, [r7, #7]
    1d48:	225a      	movs	r2, #90	; 0x5a
    1d4a:	fb02 f303 	mul.w	r3, r2, r3
    1d4e:	613b      	str	r3, [r7, #16]
    1d50:	e005      	b.n	1d5e <gfx_scroll_down+0x52>
    1d52:	697b      	ldr	r3, [r7, #20]
    1d54:	3b01      	subs	r3, #1
    1d56:	617b      	str	r3, [r7, #20]
    1d58:	697b      	ldr	r3, [r7, #20]
    1d5a:	2200      	movs	r2, #0
    1d5c:	701a      	strb	r2, [r3, #0]
    1d5e:	693b      	ldr	r3, [r7, #16]
    1d60:	1e5a      	subs	r2, r3, #1
    1d62:	613a      	str	r2, [r7, #16]
    1d64:	2b00      	cmp	r3, #0
    1d66:	d1f4      	bne.n	1d52 <gfx_scroll_down+0x46>
    1d68:	bf00      	nop
    1d6a:	3718      	adds	r7, #24
    1d6c:	46bd      	mov	sp, r7
    1d6e:	bd80      	pop	{r7, pc}
    1d70:	20002538 	.word	0x20002538
    1d74:	20004c98 	.word	0x20004c98

00001d78 <gfx_scroll_left>:
    1d78:	b580      	push	{r7, lr}
    1d7a:	b086      	sub	sp, #24
    1d7c:	af00      	add	r7, sp, #0
    1d7e:	4603      	mov	r3, r0
    1d80:	71fb      	strb	r3, [r7, #7]
    1d82:	2300      	movs	r3, #0
    1d84:	617b      	str	r3, [r7, #20]
    1d86:	e024      	b.n	1dd2 <gfx_scroll_left+0x5a>
    1d88:	697b      	ldr	r3, [r7, #20]
    1d8a:	225a      	movs	r2, #90	; 0x5a
    1d8c:	fb02 f303 	mul.w	r3, r2, r3
    1d90:	4a13      	ldr	r2, [pc, #76]	; (1de0 <gfx_scroll_left+0x68>)
    1d92:	4413      	add	r3, r2
    1d94:	60fb      	str	r3, [r7, #12]
    1d96:	79fb      	ldrb	r3, [r7, #7]
    1d98:	68fa      	ldr	r2, [r7, #12]
    1d9a:	4413      	add	r3, r2
    1d9c:	60bb      	str	r3, [r7, #8]
    1d9e:	79fb      	ldrb	r3, [r7, #7]
    1da0:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1da4:	613b      	str	r3, [r7, #16]
    1da6:	693a      	ldr	r2, [r7, #16]
    1da8:	68f9      	ldr	r1, [r7, #12]
    1daa:	68b8      	ldr	r0, [r7, #8]
    1dac:	f7ff ff62 	bl	1c74 <move_down>
    1db0:	60f8      	str	r0, [r7, #12]
    1db2:	79fb      	ldrb	r3, [r7, #7]
    1db4:	613b      	str	r3, [r7, #16]
    1db6:	e004      	b.n	1dc2 <gfx_scroll_left+0x4a>
    1db8:	68fb      	ldr	r3, [r7, #12]
    1dba:	1c5a      	adds	r2, r3, #1
    1dbc:	60fa      	str	r2, [r7, #12]
    1dbe:	2200      	movs	r2, #0
    1dc0:	701a      	strb	r2, [r3, #0]
    1dc2:	693b      	ldr	r3, [r7, #16]
    1dc4:	1e5a      	subs	r2, r3, #1
    1dc6:	613a      	str	r2, [r7, #16]
    1dc8:	2b00      	cmp	r3, #0
    1dca:	d1f5      	bne.n	1db8 <gfx_scroll_left+0x40>
    1dcc:	697b      	ldr	r3, [r7, #20]
    1dce:	3301      	adds	r3, #1
    1dd0:	617b      	str	r3, [r7, #20]
    1dd2:	697b      	ldr	r3, [r7, #20]
    1dd4:	2b6f      	cmp	r3, #111	; 0x6f
    1dd6:	ddd7      	ble.n	1d88 <gfx_scroll_left+0x10>
    1dd8:	bf00      	nop
    1dda:	3718      	adds	r7, #24
    1ddc:	46bd      	mov	sp, r7
    1dde:	bd80      	pop	{r7, pc}
    1de0:	20002538 	.word	0x20002538

00001de4 <gfx_scroll_right>:
    1de4:	b580      	push	{r7, lr}
    1de6:	b086      	sub	sp, #24
    1de8:	af00      	add	r7, sp, #0
    1dea:	4603      	mov	r3, r0
    1dec:	71fb      	strb	r3, [r7, #7]
    1dee:	2300      	movs	r3, #0
    1df0:	617b      	str	r3, [r7, #20]
    1df2:	e027      	b.n	1e44 <gfx_scroll_right+0x60>
    1df4:	697b      	ldr	r3, [r7, #20]
    1df6:	225a      	movs	r2, #90	; 0x5a
    1df8:	fb02 f303 	mul.w	r3, r2, r3
    1dfc:	4a15      	ldr	r2, [pc, #84]	; (1e54 <gfx_scroll_right+0x70>)
    1dfe:	4413      	add	r3, r2
    1e00:	335a      	adds	r3, #90	; 0x5a
    1e02:	60fb      	str	r3, [r7, #12]
    1e04:	79fb      	ldrb	r3, [r7, #7]
    1e06:	425b      	negs	r3, r3
    1e08:	68fa      	ldr	r2, [r7, #12]
    1e0a:	4413      	add	r3, r2
    1e0c:	60bb      	str	r3, [r7, #8]
    1e0e:	79fb      	ldrb	r3, [r7, #7]
    1e10:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1e14:	613b      	str	r3, [r7, #16]
    1e16:	693a      	ldr	r2, [r7, #16]
    1e18:	68f9      	ldr	r1, [r7, #12]
    1e1a:	68b8      	ldr	r0, [r7, #8]
    1e1c:	f7ff ff0e 	bl	1c3c <move_up>
    1e20:	60f8      	str	r0, [r7, #12]
    1e22:	79fb      	ldrb	r3, [r7, #7]
    1e24:	613b      	str	r3, [r7, #16]
    1e26:	e005      	b.n	1e34 <gfx_scroll_right+0x50>
    1e28:	68fb      	ldr	r3, [r7, #12]
    1e2a:	3b01      	subs	r3, #1
    1e2c:	60fb      	str	r3, [r7, #12]
    1e2e:	68fb      	ldr	r3, [r7, #12]
    1e30:	2200      	movs	r2, #0
    1e32:	701a      	strb	r2, [r3, #0]
    1e34:	693b      	ldr	r3, [r7, #16]
    1e36:	1e5a      	subs	r2, r3, #1
    1e38:	613a      	str	r2, [r7, #16]
    1e3a:	2b00      	cmp	r3, #0
    1e3c:	d1f4      	bne.n	1e28 <gfx_scroll_right+0x44>
    1e3e:	697b      	ldr	r3, [r7, #20]
    1e40:	3301      	adds	r3, #1
    1e42:	617b      	str	r3, [r7, #20]
    1e44:	697b      	ldr	r3, [r7, #20]
    1e46:	2b6f      	cmp	r3, #111	; 0x6f
    1e48:	ddd4      	ble.n	1df4 <gfx_scroll_right+0x10>
    1e4a:	bf00      	nop
    1e4c:	3718      	adds	r7, #24
    1e4e:	46bd      	mov	sp, r7
    1e50:	bd80      	pop	{r7, pc}
    1e52:	bf00      	nop
    1e54:	20002538 	.word	0x20002538

00001e58 <gfx_get_pixel>:
    1e58:	b490      	push	{r4, r7}
    1e5a:	b082      	sub	sp, #8
    1e5c:	af00      	add	r7, sp, #0
    1e5e:	6078      	str	r0, [r7, #4]
    1e60:	6039      	str	r1, [r7, #0]
    1e62:	687b      	ldr	r3, [r7, #4]
    1e64:	2b00      	cmp	r3, #0
    1e66:	db08      	blt.n	1e7a <gfx_get_pixel+0x22>
    1e68:	687b      	ldr	r3, [r7, #4]
    1e6a:	2bb3      	cmp	r3, #179	; 0xb3
    1e6c:	dc05      	bgt.n	1e7a <gfx_get_pixel+0x22>
    1e6e:	683b      	ldr	r3, [r7, #0]
    1e70:	2b00      	cmp	r3, #0
    1e72:	db02      	blt.n	1e7a <gfx_get_pixel+0x22>
    1e74:	683b      	ldr	r3, [r7, #0]
    1e76:	2b6f      	cmp	r3, #111	; 0x6f
    1e78:	dd01      	ble.n	1e7e <gfx_get_pixel+0x26>
    1e7a:	23ff      	movs	r3, #255	; 0xff
    1e7c:	e012      	b.n	1ea4 <gfx_get_pixel+0x4c>
    1e7e:	683b      	ldr	r3, [r7, #0]
    1e80:	225a      	movs	r2, #90	; 0x5a
    1e82:	fb02 f203 	mul.w	r2, r2, r3
    1e86:	687b      	ldr	r3, [r7, #4]
    1e88:	105b      	asrs	r3, r3, #1
    1e8a:	4413      	add	r3, r2
    1e8c:	4a08      	ldr	r2, [pc, #32]	; (1eb0 <gfx_get_pixel+0x58>)
    1e8e:	5cd4      	ldrb	r4, [r2, r3]
    1e90:	687b      	ldr	r3, [r7, #4]
    1e92:	f003 0301 	and.w	r3, r3, #1
    1e96:	2b00      	cmp	r3, #0
    1e98:	d101      	bne.n	1e9e <gfx_get_pixel+0x46>
    1e9a:	0923      	lsrs	r3, r4, #4
    1e9c:	b2dc      	uxtb	r4, r3
    1e9e:	f004 030f 	and.w	r3, r4, #15
    1ea2:	b2db      	uxtb	r3, r3
    1ea4:	4618      	mov	r0, r3
    1ea6:	3708      	adds	r7, #8
    1ea8:	46bd      	mov	sp, r7
    1eaa:	bc90      	pop	{r4, r7}
    1eac:	4770      	bx	lr
    1eae:	bf00      	nop
    1eb0:	20002538 	.word	0x20002538

00001eb4 <gfx_sprite>:
    1eb4:	b5f0      	push	{r4, r5, r6, r7, lr}
    1eb6:	b087      	sub	sp, #28
    1eb8:	af00      	add	r7, sp, #0
    1eba:	60f8      	str	r0, [r7, #12]
    1ebc:	60b9      	str	r1, [r7, #8]
    1ebe:	4611      	mov	r1, r2
    1ec0:	461a      	mov	r2, r3
    1ec2:	460b      	mov	r3, r1
    1ec4:	71fb      	strb	r3, [r7, #7]
    1ec6:	4613      	mov	r3, r2
    1ec8:	71bb      	strb	r3, [r7, #6]
    1eca:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1ecc:	1c5a      	adds	r2, r3, #1
    1ece:	633a      	str	r2, [r7, #48]	; 0x30
    1ed0:	781e      	ldrb	r6, [r3, #0]
    1ed2:	68bd      	ldr	r5, [r7, #8]
    1ed4:	e01b      	b.n	1f0e <gfx_sprite+0x5a>
    1ed6:	68fc      	ldr	r4, [r7, #12]
    1ed8:	e013      	b.n	1f02 <gfx_sprite+0x4e>
    1eda:	0933      	lsrs	r3, r6, #4
    1edc:	b2da      	uxtb	r2, r3
    1ede:	2302      	movs	r3, #2
    1ee0:	4629      	mov	r1, r5
    1ee2:	4620      	mov	r0, r4
    1ee4:	f7ff fd7e 	bl	19e4 <gfx_blit>
    1ee8:	3401      	adds	r4, #1
    1eea:	2302      	movs	r3, #2
    1eec:	4632      	mov	r2, r6
    1eee:	4629      	mov	r1, r5
    1ef0:	4620      	mov	r0, r4
    1ef2:	f7ff fd77 	bl	19e4 <gfx_blit>
    1ef6:	6178      	str	r0, [r7, #20]
    1ef8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1efa:	1c5a      	adds	r2, r3, #1
    1efc:	633a      	str	r2, [r7, #48]	; 0x30
    1efe:	781e      	ldrb	r6, [r3, #0]
    1f00:	3401      	adds	r4, #1
    1f02:	79fa      	ldrb	r2, [r7, #7]
    1f04:	68fb      	ldr	r3, [r7, #12]
    1f06:	4413      	add	r3, r2
    1f08:	42a3      	cmp	r3, r4
    1f0a:	dce6      	bgt.n	1eda <gfx_sprite+0x26>
    1f0c:	3501      	adds	r5, #1
    1f0e:	79ba      	ldrb	r2, [r7, #6]
    1f10:	68bb      	ldr	r3, [r7, #8]
    1f12:	4413      	add	r3, r2
    1f14:	42ab      	cmp	r3, r5
    1f16:	dcde      	bgt.n	1ed6 <gfx_sprite+0x22>
    1f18:	697b      	ldr	r3, [r7, #20]
    1f1a:	4618      	mov	r0, r3
    1f1c:	371c      	adds	r7, #28
    1f1e:	46bd      	mov	sp, r7
    1f20:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1f22:	bf00      	nop

00001f24 <set_sysclock>:
    1f24:	b480      	push	{r7}
    1f26:	af00      	add	r7, sp, #0
    1f28:	4a18      	ldr	r2, [pc, #96]	; (1f8c <set_sysclock+0x68>)
    1f2a:	4b18      	ldr	r3, [pc, #96]	; (1f8c <set_sysclock+0x68>)
    1f2c:	681b      	ldr	r3, [r3, #0]
    1f2e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1f32:	6013      	str	r3, [r2, #0]
    1f34:	bf00      	nop
    1f36:	4b15      	ldr	r3, [pc, #84]	; (1f8c <set_sysclock+0x68>)
    1f38:	681b      	ldr	r3, [r3, #0]
    1f3a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    1f3e:	2b00      	cmp	r3, #0
    1f40:	d0f9      	beq.n	1f36 <set_sysclock+0x12>
    1f42:	4a12      	ldr	r2, [pc, #72]	; (1f8c <set_sysclock+0x68>)
    1f44:	4b11      	ldr	r3, [pc, #68]	; (1f8c <set_sysclock+0x68>)
    1f46:	685b      	ldr	r3, [r3, #4]
    1f48:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1f4c:	6053      	str	r3, [r2, #4]
    1f4e:	4a0f      	ldr	r2, [pc, #60]	; (1f8c <set_sysclock+0x68>)
    1f50:	4b0e      	ldr	r3, [pc, #56]	; (1f8c <set_sysclock+0x68>)
    1f52:	681b      	ldr	r3, [r3, #0]
    1f54:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1f58:	6013      	str	r3, [r2, #0]
    1f5a:	bf00      	nop
    1f5c:	4b0b      	ldr	r3, [pc, #44]	; (1f8c <set_sysclock+0x68>)
    1f5e:	681b      	ldr	r3, [r3, #0]
    1f60:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1f64:	2b00      	cmp	r3, #0
    1f66:	d0f9      	beq.n	1f5c <set_sysclock+0x38>
    1f68:	4a09      	ldr	r2, [pc, #36]	; (1f90 <set_sysclock+0x6c>)
    1f6a:	4b09      	ldr	r3, [pc, #36]	; (1f90 <set_sysclock+0x6c>)
    1f6c:	681b      	ldr	r3, [r3, #0]
    1f6e:	f043 0312 	orr.w	r3, r3, #18
    1f72:	6013      	str	r3, [r2, #0]
    1f74:	4a05      	ldr	r2, [pc, #20]	; (1f8c <set_sysclock+0x68>)
    1f76:	4b05      	ldr	r3, [pc, #20]	; (1f8c <set_sysclock+0x68>)
    1f78:	685b      	ldr	r3, [r3, #4]
    1f7a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1f7e:	f043 0302 	orr.w	r3, r3, #2
    1f82:	6053      	str	r3, [r2, #4]
    1f84:	bf00      	nop
    1f86:	46bd      	mov	sp, r7
    1f88:	bc80      	pop	{r7}
    1f8a:	4770      	bx	lr
    1f8c:	40021000 	.word	0x40021000
    1f90:	40022000 	.word	0x40022000

00001f94 <draw_balls>:
    1f94:	b590      	push	{r4, r7, lr}
    1f96:	b085      	sub	sp, #20
    1f98:	af02      	add	r7, sp, #8
    1f9a:	f002 f983 	bl	42a4 <frame_sync>
    1f9e:	2300      	movs	r3, #0
    1fa0:	607b      	str	r3, [r7, #4]
    1fa2:	e022      	b.n	1fea <draw_balls+0x56>
    1fa4:	4914      	ldr	r1, [pc, #80]	; (1ff8 <draw_balls+0x64>)
    1fa6:	687a      	ldr	r2, [r7, #4]
    1fa8:	4613      	mov	r3, r2
    1faa:	009b      	lsls	r3, r3, #2
    1fac:	4413      	add	r3, r2
    1fae:	009b      	lsls	r3, r3, #2
    1fb0:	440b      	add	r3, r1
    1fb2:	6818      	ldr	r0, [r3, #0]
    1fb4:	4910      	ldr	r1, [pc, #64]	; (1ff8 <draw_balls+0x64>)
    1fb6:	687a      	ldr	r2, [r7, #4]
    1fb8:	4613      	mov	r3, r2
    1fba:	009b      	lsls	r3, r3, #2
    1fbc:	4413      	add	r3, r2
    1fbe:	009b      	lsls	r3, r3, #2
    1fc0:	440b      	add	r3, r1
    1fc2:	3304      	adds	r3, #4
    1fc4:	681c      	ldr	r4, [r3, #0]
    1fc6:	490c      	ldr	r1, [pc, #48]	; (1ff8 <draw_balls+0x64>)
    1fc8:	687a      	ldr	r2, [r7, #4]
    1fca:	4613      	mov	r3, r2
    1fcc:	009b      	lsls	r3, r3, #2
    1fce:	4413      	add	r3, r2
    1fd0:	009b      	lsls	r3, r3, #2
    1fd2:	440b      	add	r3, r1
    1fd4:	3310      	adds	r3, #16
    1fd6:	681b      	ldr	r3, [r3, #0]
    1fd8:	9300      	str	r3, [sp, #0]
    1fda:	2308      	movs	r3, #8
    1fdc:	2208      	movs	r2, #8
    1fde:	4621      	mov	r1, r4
    1fe0:	f7ff ff68 	bl	1eb4 <gfx_sprite>
    1fe4:	687b      	ldr	r3, [r7, #4]
    1fe6:	3301      	adds	r3, #1
    1fe8:	607b      	str	r3, [r7, #4]
    1fea:	687b      	ldr	r3, [r7, #4]
    1fec:	2b01      	cmp	r3, #1
    1fee:	ddd9      	ble.n	1fa4 <draw_balls+0x10>
    1ff0:	bf00      	nop
    1ff2:	370c      	adds	r7, #12
    1ff4:	46bd      	mov	sp, r7
    1ff6:	bd90      	pop	{r4, r7, pc}
    1ff8:	2000250c 	.word	0x2000250c

00001ffc <isqrt>:
    1ffc:	b580      	push	{r7, lr}
    1ffe:	b084      	sub	sp, #16
    2000:	af00      	add	r7, sp, #0
    2002:	6078      	str	r0, [r7, #4]
    2004:	687b      	ldr	r3, [r7, #4]
    2006:	2b01      	cmp	r3, #1
    2008:	dc01      	bgt.n	200e <isqrt+0x12>
    200a:	687b      	ldr	r3, [r7, #4]
    200c:	e014      	b.n	2038 <isqrt+0x3c>
    200e:	687b      	ldr	r3, [r7, #4]
    2010:	109b      	asrs	r3, r3, #2
    2012:	4618      	mov	r0, r3
    2014:	f7ff fff2 	bl	1ffc <isqrt>
    2018:	4603      	mov	r3, r0
    201a:	005b      	lsls	r3, r3, #1
    201c:	60fb      	str	r3, [r7, #12]
    201e:	68fb      	ldr	r3, [r7, #12]
    2020:	3301      	adds	r3, #1
    2022:	60bb      	str	r3, [r7, #8]
    2024:	68bb      	ldr	r3, [r7, #8]
    2026:	68ba      	ldr	r2, [r7, #8]
    2028:	fb02 f203 	mul.w	r2, r2, r3
    202c:	687b      	ldr	r3, [r7, #4]
    202e:	429a      	cmp	r2, r3
    2030:	dd01      	ble.n	2036 <isqrt+0x3a>
    2032:	68fb      	ldr	r3, [r7, #12]
    2034:	e000      	b.n	2038 <isqrt+0x3c>
    2036:	68bb      	ldr	r3, [r7, #8]
    2038:	4618      	mov	r0, r3
    203a:	3710      	adds	r7, #16
    203c:	46bd      	mov	sp, r7
    203e:	bd80      	pop	{r7, pc}

00002040 <distance>:
    2040:	b580      	push	{r7, lr}
    2042:	b082      	sub	sp, #8
    2044:	af00      	add	r7, sp, #0
    2046:	6078      	str	r0, [r7, #4]
    2048:	6039      	str	r1, [r7, #0]
    204a:	687b      	ldr	r3, [r7, #4]
    204c:	681b      	ldr	r3, [r3, #0]
    204e:	683a      	ldr	r2, [r7, #0]
    2050:	6812      	ldr	r2, [r2, #0]
    2052:	fb02 f203 	mul.w	r2, r2, r3
    2056:	687b      	ldr	r3, [r7, #4]
    2058:	685b      	ldr	r3, [r3, #4]
    205a:	6839      	ldr	r1, [r7, #0]
    205c:	6849      	ldr	r1, [r1, #4]
    205e:	fb01 f303 	mul.w	r3, r1, r3
    2062:	4413      	add	r3, r2
    2064:	2b00      	cmp	r3, #0
    2066:	bfb8      	it	lt
    2068:	425b      	neglt	r3, r3
    206a:	4618      	mov	r0, r3
    206c:	f7ff ffc6 	bl	1ffc <isqrt>
    2070:	4603      	mov	r3, r0
    2072:	4618      	mov	r0, r3
    2074:	3708      	adds	r7, #8
    2076:	46bd      	mov	sp, r7
    2078:	bd80      	pop	{r7, pc}

0000207a <move_balls>:
    207a:	b580      	push	{r7, lr}
    207c:	b082      	sub	sp, #8
    207e:	af00      	add	r7, sp, #0
    2080:	f002 f998 	bl	43b4 <get_video_params>
    2084:	6038      	str	r0, [r7, #0]
    2086:	2300      	movs	r3, #0
    2088:	607b      	str	r3, [r7, #4]
    208a:	e0c3      	b.n	2214 <move_balls+0x19a>
    208c:	4979      	ldr	r1, [pc, #484]	; (2274 <move_balls+0x1fa>)
    208e:	687a      	ldr	r2, [r7, #4]
    2090:	4613      	mov	r3, r2
    2092:	009b      	lsls	r3, r3, #2
    2094:	4413      	add	r3, r2
    2096:	009b      	lsls	r3, r3, #2
    2098:	440b      	add	r3, r1
    209a:	6819      	ldr	r1, [r3, #0]
    209c:	4875      	ldr	r0, [pc, #468]	; (2274 <move_balls+0x1fa>)
    209e:	687a      	ldr	r2, [r7, #4]
    20a0:	4613      	mov	r3, r2
    20a2:	009b      	lsls	r3, r3, #2
    20a4:	4413      	add	r3, r2
    20a6:	009b      	lsls	r3, r3, #2
    20a8:	4403      	add	r3, r0
    20aa:	3308      	adds	r3, #8
    20ac:	681b      	ldr	r3, [r3, #0]
    20ae:	4419      	add	r1, r3
    20b0:	4870      	ldr	r0, [pc, #448]	; (2274 <move_balls+0x1fa>)
    20b2:	687a      	ldr	r2, [r7, #4]
    20b4:	4613      	mov	r3, r2
    20b6:	009b      	lsls	r3, r3, #2
    20b8:	4413      	add	r3, r2
    20ba:	009b      	lsls	r3, r3, #2
    20bc:	4403      	add	r3, r0
    20be:	6019      	str	r1, [r3, #0]
    20c0:	496c      	ldr	r1, [pc, #432]	; (2274 <move_balls+0x1fa>)
    20c2:	687a      	ldr	r2, [r7, #4]
    20c4:	4613      	mov	r3, r2
    20c6:	009b      	lsls	r3, r3, #2
    20c8:	4413      	add	r3, r2
    20ca:	009b      	lsls	r3, r3, #2
    20cc:	440b      	add	r3, r1
    20ce:	681b      	ldr	r3, [r3, #0]
    20d0:	f113 0f07 	cmn.w	r3, #7
    20d4:	db0b      	blt.n	20ee <move_balls+0x74>
    20d6:	4967      	ldr	r1, [pc, #412]	; (2274 <move_balls+0x1fa>)
    20d8:	687a      	ldr	r2, [r7, #4]
    20da:	4613      	mov	r3, r2
    20dc:	009b      	lsls	r3, r3, #2
    20de:	4413      	add	r3, r2
    20e0:	009b      	lsls	r3, r3, #2
    20e2:	440b      	add	r3, r1
    20e4:	681b      	ldr	r3, [r3, #0]
    20e6:	683a      	ldr	r2, [r7, #0]
    20e8:	8992      	ldrh	r2, [r2, #12]
    20ea:	4293      	cmp	r3, r2
    20ec:	db2c      	blt.n	2148 <move_balls+0xce>
    20ee:	4961      	ldr	r1, [pc, #388]	; (2274 <move_balls+0x1fa>)
    20f0:	687a      	ldr	r2, [r7, #4]
    20f2:	4613      	mov	r3, r2
    20f4:	009b      	lsls	r3, r3, #2
    20f6:	4413      	add	r3, r2
    20f8:	009b      	lsls	r3, r3, #2
    20fa:	440b      	add	r3, r1
    20fc:	3308      	adds	r3, #8
    20fe:	681b      	ldr	r3, [r3, #0]
    2100:	4259      	negs	r1, r3
    2102:	485c      	ldr	r0, [pc, #368]	; (2274 <move_balls+0x1fa>)
    2104:	687a      	ldr	r2, [r7, #4]
    2106:	4613      	mov	r3, r2
    2108:	009b      	lsls	r3, r3, #2
    210a:	4413      	add	r3, r2
    210c:	009b      	lsls	r3, r3, #2
    210e:	4403      	add	r3, r0
    2110:	3308      	adds	r3, #8
    2112:	6019      	str	r1, [r3, #0]
    2114:	4957      	ldr	r1, [pc, #348]	; (2274 <move_balls+0x1fa>)
    2116:	687a      	ldr	r2, [r7, #4]
    2118:	4613      	mov	r3, r2
    211a:	009b      	lsls	r3, r3, #2
    211c:	4413      	add	r3, r2
    211e:	009b      	lsls	r3, r3, #2
    2120:	440b      	add	r3, r1
    2122:	6819      	ldr	r1, [r3, #0]
    2124:	4853      	ldr	r0, [pc, #332]	; (2274 <move_balls+0x1fa>)
    2126:	687a      	ldr	r2, [r7, #4]
    2128:	4613      	mov	r3, r2
    212a:	009b      	lsls	r3, r3, #2
    212c:	4413      	add	r3, r2
    212e:	009b      	lsls	r3, r3, #2
    2130:	4403      	add	r3, r0
    2132:	3308      	adds	r3, #8
    2134:	681b      	ldr	r3, [r3, #0]
    2136:	4419      	add	r1, r3
    2138:	484e      	ldr	r0, [pc, #312]	; (2274 <move_balls+0x1fa>)
    213a:	687a      	ldr	r2, [r7, #4]
    213c:	4613      	mov	r3, r2
    213e:	009b      	lsls	r3, r3, #2
    2140:	4413      	add	r3, r2
    2142:	009b      	lsls	r3, r3, #2
    2144:	4403      	add	r3, r0
    2146:	6019      	str	r1, [r3, #0]
    2148:	494a      	ldr	r1, [pc, #296]	; (2274 <move_balls+0x1fa>)
    214a:	687a      	ldr	r2, [r7, #4]
    214c:	4613      	mov	r3, r2
    214e:	009b      	lsls	r3, r3, #2
    2150:	4413      	add	r3, r2
    2152:	009b      	lsls	r3, r3, #2
    2154:	440b      	add	r3, r1
    2156:	3304      	adds	r3, #4
    2158:	6819      	ldr	r1, [r3, #0]
    215a:	4846      	ldr	r0, [pc, #280]	; (2274 <move_balls+0x1fa>)
    215c:	687a      	ldr	r2, [r7, #4]
    215e:	4613      	mov	r3, r2
    2160:	009b      	lsls	r3, r3, #2
    2162:	4413      	add	r3, r2
    2164:	009b      	lsls	r3, r3, #2
    2166:	4403      	add	r3, r0
    2168:	330c      	adds	r3, #12
    216a:	681b      	ldr	r3, [r3, #0]
    216c:	4419      	add	r1, r3
    216e:	4841      	ldr	r0, [pc, #260]	; (2274 <move_balls+0x1fa>)
    2170:	687a      	ldr	r2, [r7, #4]
    2172:	4613      	mov	r3, r2
    2174:	009b      	lsls	r3, r3, #2
    2176:	4413      	add	r3, r2
    2178:	009b      	lsls	r3, r3, #2
    217a:	4403      	add	r3, r0
    217c:	3304      	adds	r3, #4
    217e:	6019      	str	r1, [r3, #0]
    2180:	493c      	ldr	r1, [pc, #240]	; (2274 <move_balls+0x1fa>)
    2182:	687a      	ldr	r2, [r7, #4]
    2184:	4613      	mov	r3, r2
    2186:	009b      	lsls	r3, r3, #2
    2188:	4413      	add	r3, r2
    218a:	009b      	lsls	r3, r3, #2
    218c:	440b      	add	r3, r1
    218e:	3304      	adds	r3, #4
    2190:	681b      	ldr	r3, [r3, #0]
    2192:	2b0f      	cmp	r3, #15
    2194:	dd0c      	ble.n	21b0 <move_balls+0x136>
    2196:	4937      	ldr	r1, [pc, #220]	; (2274 <move_balls+0x1fa>)
    2198:	687a      	ldr	r2, [r7, #4]
    219a:	4613      	mov	r3, r2
    219c:	009b      	lsls	r3, r3, #2
    219e:	4413      	add	r3, r2
    21a0:	009b      	lsls	r3, r3, #2
    21a2:	440b      	add	r3, r1
    21a4:	3304      	adds	r3, #4
    21a6:	681b      	ldr	r3, [r3, #0]
    21a8:	683a      	ldr	r2, [r7, #0]
    21aa:	89d2      	ldrh	r2, [r2, #14]
    21ac:	4293      	cmp	r3, r2
    21ae:	db2e      	blt.n	220e <move_balls+0x194>
    21b0:	4930      	ldr	r1, [pc, #192]	; (2274 <move_balls+0x1fa>)
    21b2:	687a      	ldr	r2, [r7, #4]
    21b4:	4613      	mov	r3, r2
    21b6:	009b      	lsls	r3, r3, #2
    21b8:	4413      	add	r3, r2
    21ba:	009b      	lsls	r3, r3, #2
    21bc:	440b      	add	r3, r1
    21be:	330c      	adds	r3, #12
    21c0:	681b      	ldr	r3, [r3, #0]
    21c2:	4259      	negs	r1, r3
    21c4:	482b      	ldr	r0, [pc, #172]	; (2274 <move_balls+0x1fa>)
    21c6:	687a      	ldr	r2, [r7, #4]
    21c8:	4613      	mov	r3, r2
    21ca:	009b      	lsls	r3, r3, #2
    21cc:	4413      	add	r3, r2
    21ce:	009b      	lsls	r3, r3, #2
    21d0:	4403      	add	r3, r0
    21d2:	330c      	adds	r3, #12
    21d4:	6019      	str	r1, [r3, #0]
    21d6:	4927      	ldr	r1, [pc, #156]	; (2274 <move_balls+0x1fa>)
    21d8:	687a      	ldr	r2, [r7, #4]
    21da:	4613      	mov	r3, r2
    21dc:	009b      	lsls	r3, r3, #2
    21de:	4413      	add	r3, r2
    21e0:	009b      	lsls	r3, r3, #2
    21e2:	440b      	add	r3, r1
    21e4:	3304      	adds	r3, #4
    21e6:	6819      	ldr	r1, [r3, #0]
    21e8:	4822      	ldr	r0, [pc, #136]	; (2274 <move_balls+0x1fa>)
    21ea:	687a      	ldr	r2, [r7, #4]
    21ec:	4613      	mov	r3, r2
    21ee:	009b      	lsls	r3, r3, #2
    21f0:	4413      	add	r3, r2
    21f2:	009b      	lsls	r3, r3, #2
    21f4:	4403      	add	r3, r0
    21f6:	330c      	adds	r3, #12
    21f8:	681b      	ldr	r3, [r3, #0]
    21fa:	4419      	add	r1, r3
    21fc:	481d      	ldr	r0, [pc, #116]	; (2274 <move_balls+0x1fa>)
    21fe:	687a      	ldr	r2, [r7, #4]
    2200:	4613      	mov	r3, r2
    2202:	009b      	lsls	r3, r3, #2
    2204:	4413      	add	r3, r2
    2206:	009b      	lsls	r3, r3, #2
    2208:	4403      	add	r3, r0
    220a:	3304      	adds	r3, #4
    220c:	6019      	str	r1, [r3, #0]
    220e:	687b      	ldr	r3, [r7, #4]
    2210:	3301      	adds	r3, #1
    2212:	607b      	str	r3, [r7, #4]
    2214:	687b      	ldr	r3, [r7, #4]
    2216:	2b01      	cmp	r3, #1
    2218:	f77f af38 	ble.w	208c <move_balls+0x12>
    221c:	4916      	ldr	r1, [pc, #88]	; (2278 <move_balls+0x1fe>)
    221e:	4815      	ldr	r0, [pc, #84]	; (2274 <move_balls+0x1fa>)
    2220:	f7ff ff0e 	bl	2040 <distance>
    2224:	4603      	mov	r3, r0
    2226:	2b07      	cmp	r3, #7
    2228:	d81f      	bhi.n	226a <move_balls+0x1f0>
    222a:	4b12      	ldr	r3, [pc, #72]	; (2274 <move_balls+0x1fa>)
    222c:	689a      	ldr	r2, [r3, #8]
    222e:	4b11      	ldr	r3, [pc, #68]	; (2274 <move_balls+0x1fa>)
    2230:	69db      	ldr	r3, [r3, #28]
    2232:	429a      	cmp	r2, r3
    2234:	d009      	beq.n	224a <move_balls+0x1d0>
    2236:	4b0f      	ldr	r3, [pc, #60]	; (2274 <move_balls+0x1fa>)
    2238:	689b      	ldr	r3, [r3, #8]
    223a:	607b      	str	r3, [r7, #4]
    223c:	4b0d      	ldr	r3, [pc, #52]	; (2274 <move_balls+0x1fa>)
    223e:	69db      	ldr	r3, [r3, #28]
    2240:	4a0c      	ldr	r2, [pc, #48]	; (2274 <move_balls+0x1fa>)
    2242:	6093      	str	r3, [r2, #8]
    2244:	4a0b      	ldr	r2, [pc, #44]	; (2274 <move_balls+0x1fa>)
    2246:	687b      	ldr	r3, [r7, #4]
    2248:	61d3      	str	r3, [r2, #28]
    224a:	4b0a      	ldr	r3, [pc, #40]	; (2274 <move_balls+0x1fa>)
    224c:	68da      	ldr	r2, [r3, #12]
    224e:	4b09      	ldr	r3, [pc, #36]	; (2274 <move_balls+0x1fa>)
    2250:	6a1b      	ldr	r3, [r3, #32]
    2252:	429a      	cmp	r2, r3
    2254:	d009      	beq.n	226a <move_balls+0x1f0>
    2256:	4b07      	ldr	r3, [pc, #28]	; (2274 <move_balls+0x1fa>)
    2258:	68db      	ldr	r3, [r3, #12]
    225a:	607b      	str	r3, [r7, #4]
    225c:	4b05      	ldr	r3, [pc, #20]	; (2274 <move_balls+0x1fa>)
    225e:	6a1b      	ldr	r3, [r3, #32]
    2260:	4a04      	ldr	r2, [pc, #16]	; (2274 <move_balls+0x1fa>)
    2262:	60d3      	str	r3, [r2, #12]
    2264:	4a03      	ldr	r2, [pc, #12]	; (2274 <move_balls+0x1fa>)
    2266:	687b      	ldr	r3, [r7, #4]
    2268:	6213      	str	r3, [r2, #32]
    226a:	bf00      	nop
    226c:	3708      	adds	r7, #8
    226e:	46bd      	mov	sp, r7
    2270:	bd80      	pop	{r7, pc}
    2272:	bf00      	nop
    2274:	2000250c 	.word	0x2000250c
    2278:	20002520 	.word	0x20002520

0000227c <init_balls>:
    227c:	b580      	push	{r7, lr}
    227e:	b082      	sub	sp, #8
    2280:	af00      	add	r7, sp, #0
    2282:	f002 f897 	bl	43b4 <get_video_params>
    2286:	6038      	str	r0, [r7, #0]
    2288:	4b2b      	ldr	r3, [pc, #172]	; (2338 <init_balls+0xbc>)
    228a:	681b      	ldr	r3, [r3, #0]
    228c:	4618      	mov	r0, r3
    228e:	f7fe f946 	bl	51e <srand>
    2292:	2300      	movs	r3, #0
    2294:	607b      	str	r3, [r7, #4]
    2296:	e048      	b.n	232a <init_balls+0xae>
    2298:	f7fe f950 	bl	53c <rand>
    229c:	4603      	mov	r3, r0
    229e:	683a      	ldr	r2, [r7, #0]
    22a0:	8992      	ldrh	r2, [r2, #12]
    22a2:	fb93 f1f2 	sdiv	r1, r3, r2
    22a6:	fb02 f201 	mul.w	r2, r2, r1
    22aa:	1a99      	subs	r1, r3, r2
    22ac:	4823      	ldr	r0, [pc, #140]	; (233c <init_balls+0xc0>)
    22ae:	687a      	ldr	r2, [r7, #4]
    22b0:	4613      	mov	r3, r2
    22b2:	009b      	lsls	r3, r3, #2
    22b4:	4413      	add	r3, r2
    22b6:	009b      	lsls	r3, r3, #2
    22b8:	4403      	add	r3, r0
    22ba:	6019      	str	r1, [r3, #0]
    22bc:	f7fe f93e 	bl	53c <rand>
    22c0:	4602      	mov	r2, r0
    22c2:	683b      	ldr	r3, [r7, #0]
    22c4:	89db      	ldrh	r3, [r3, #14]
    22c6:	3b10      	subs	r3, #16
    22c8:	fb92 f1f3 	sdiv	r1, r2, r3
    22cc:	fb03 f301 	mul.w	r3, r3, r1
    22d0:	1ad3      	subs	r3, r2, r3
    22d2:	f103 0110 	add.w	r1, r3, #16
    22d6:	4819      	ldr	r0, [pc, #100]	; (233c <init_balls+0xc0>)
    22d8:	687a      	ldr	r2, [r7, #4]
    22da:	4613      	mov	r3, r2
    22dc:	009b      	lsls	r3, r3, #2
    22de:	4413      	add	r3, r2
    22e0:	009b      	lsls	r3, r3, #2
    22e2:	4403      	add	r3, r0
    22e4:	3304      	adds	r3, #4
    22e6:	6019      	str	r1, [r3, #0]
    22e8:	4914      	ldr	r1, [pc, #80]	; (233c <init_balls+0xc0>)
    22ea:	687a      	ldr	r2, [r7, #4]
    22ec:	4613      	mov	r3, r2
    22ee:	009b      	lsls	r3, r3, #2
    22f0:	4413      	add	r3, r2
    22f2:	009b      	lsls	r3, r3, #2
    22f4:	440b      	add	r3, r1
    22f6:	3308      	adds	r3, #8
    22f8:	2201      	movs	r2, #1
    22fa:	601a      	str	r2, [r3, #0]
    22fc:	490f      	ldr	r1, [pc, #60]	; (233c <init_balls+0xc0>)
    22fe:	687a      	ldr	r2, [r7, #4]
    2300:	4613      	mov	r3, r2
    2302:	009b      	lsls	r3, r3, #2
    2304:	4413      	add	r3, r2
    2306:	009b      	lsls	r3, r3, #2
    2308:	440b      	add	r3, r1
    230a:	330c      	adds	r3, #12
    230c:	2201      	movs	r2, #1
    230e:	601a      	str	r2, [r3, #0]
    2310:	490a      	ldr	r1, [pc, #40]	; (233c <init_balls+0xc0>)
    2312:	687a      	ldr	r2, [r7, #4]
    2314:	4613      	mov	r3, r2
    2316:	009b      	lsls	r3, r3, #2
    2318:	4413      	add	r3, r2
    231a:	009b      	lsls	r3, r3, #2
    231c:	440b      	add	r3, r1
    231e:	3310      	adds	r3, #16
    2320:	4a07      	ldr	r2, [pc, #28]	; (2340 <init_balls+0xc4>)
    2322:	601a      	str	r2, [r3, #0]
    2324:	687b      	ldr	r3, [r7, #4]
    2326:	3301      	adds	r3, #1
    2328:	607b      	str	r3, [r7, #4]
    232a:	687b      	ldr	r3, [r7, #4]
    232c:	2b01      	cmp	r3, #1
    232e:	ddb3      	ble.n	2298 <init_balls+0x1c>
    2330:	bf00      	nop
    2332:	3708      	adds	r7, #8
    2334:	46bd      	mov	sp, r7
    2336:	bd80      	pop	{r7, pc}
    2338:	200004f8 	.word	0x200004f8
    233c:	2000250c 	.word	0x2000250c
    2340:	0000481c 	.word	0x0000481c

00002344 <video_test>:
    2344:	b580      	push	{r7, lr}
    2346:	b086      	sub	sp, #24
    2348:	af00      	add	r7, sp, #0
    234a:	2303      	movs	r3, #3
    234c:	73bb      	strb	r3, [r7, #14]
    234e:	f7ff fc57 	bl	1c00 <gfx_cls>
    2352:	f002 f82f 	bl	43b4 <get_video_params>
    2356:	60b8      	str	r0, [r7, #8]
    2358:	68bb      	ldr	r3, [r7, #8]
    235a:	89db      	ldrh	r3, [r3, #14]
    235c:	089b      	lsrs	r3, r3, #2
    235e:	b29b      	uxth	r3, r3
    2360:	461a      	mov	r2, r3
    2362:	4613      	mov	r3, r2
    2364:	005b      	lsls	r3, r3, #1
    2366:	4413      	add	r3, r2
    2368:	613b      	str	r3, [r7, #16]
    236a:	e01b      	b.n	23a4 <video_test+0x60>
    236c:	2310      	movs	r3, #16
    236e:	73fb      	strb	r3, [r7, #15]
    2370:	2300      	movs	r3, #0
    2372:	617b      	str	r3, [r7, #20]
    2374:	e010      	b.n	2398 <video_test+0x54>
    2376:	697b      	ldr	r3, [r7, #20]
    2378:	f003 0307 	and.w	r3, r3, #7
    237c:	2b00      	cmp	r3, #0
    237e:	d102      	bne.n	2386 <video_test+0x42>
    2380:	7bfb      	ldrb	r3, [r7, #15]
    2382:	3b01      	subs	r3, #1
    2384:	73fb      	strb	r3, [r7, #15]
    2386:	7bfb      	ldrb	r3, [r7, #15]
    2388:	461a      	mov	r2, r3
    238a:	6939      	ldr	r1, [r7, #16]
    238c:	6978      	ldr	r0, [r7, #20]
    238e:	f7ff fba1 	bl	1ad4 <gfx_plot>
    2392:	697b      	ldr	r3, [r7, #20]
    2394:	3301      	adds	r3, #1
    2396:	617b      	str	r3, [r7, #20]
    2398:	697b      	ldr	r3, [r7, #20]
    239a:	2b7f      	cmp	r3, #127	; 0x7f
    239c:	ddeb      	ble.n	2376 <video_test+0x32>
    239e:	693b      	ldr	r3, [r7, #16]
    23a0:	3301      	adds	r3, #1
    23a2:	613b      	str	r3, [r7, #16]
    23a4:	68bb      	ldr	r3, [r7, #8]
    23a6:	89db      	ldrh	r3, [r3, #14]
    23a8:	461a      	mov	r2, r3
    23aa:	693b      	ldr	r3, [r7, #16]
    23ac:	429a      	cmp	r2, r3
    23ae:	dcdd      	bgt.n	236c <video_test+0x28>
    23b0:	4b30      	ldr	r3, [pc, #192]	; (2474 <video_test+0x130>)
    23b2:	2110      	movs	r1, #16
    23b4:	4618      	mov	r0, r3
    23b6:	f001 fbc1 	bl	3b3c <print_int>
    23ba:	4b2f      	ldr	r3, [pc, #188]	; (2478 <video_test+0x134>)
    23bc:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    23c0:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    23c4:	210a      	movs	r1, #10
    23c6:	4618      	mov	r0, r3
    23c8:	f001 fbb8 	bl	3b3c <print_int>
    23cc:	f7ff ff56 	bl	227c <init_balls>
    23d0:	2300      	movs	r3, #0
    23d2:	73bb      	strb	r3, [r7, #14]
    23d4:	f7ff fdde 	bl	1f94 <draw_balls>
    23d8:	200a      	movs	r0, #10
    23da:	f001 f9e5 	bl	37a8 <pause>
    23de:	f7ff fdd9 	bl	1f94 <draw_balls>
    23e2:	f7ff fe4a 	bl	207a <move_balls>
    23e6:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    23ea:	f001 ffbb 	bl	4364 <btn_query_down>
    23ee:	4603      	mov	r3, r0
    23f0:	2b00      	cmp	r3, #0
    23f2:	d0ef      	beq.n	23d4 <video_test+0x90>
    23f4:	7bbb      	ldrb	r3, [r7, #14]
    23f6:	3301      	adds	r3, #1
    23f8:	73bb      	strb	r3, [r7, #14]
    23fa:	7bbb      	ldrb	r3, [r7, #14]
    23fc:	f003 0303 	and.w	r3, r3, #3
    2400:	73bb      	strb	r3, [r7, #14]
    2402:	7bbb      	ldrb	r3, [r7, #14]
    2404:	4618      	mov	r0, r3
    2406:	f001 ffc3 	bl	4390 <set_video_mode>
    240a:	7bbb      	ldrb	r3, [r7, #14]
    240c:	2b03      	cmp	r3, #3
    240e:	d81b      	bhi.n	2448 <video_test+0x104>
    2410:	a201      	add	r2, pc, #4	; (adr r2, 2418 <video_test+0xd4>)
    2412:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2416:	bf00      	nop
    2418:	00002429 	.word	0x00002429
    241c:	00002431 	.word	0x00002431
    2420:	00002439 	.word	0x00002439
    2424:	00002441 	.word	0x00002441
    2428:	4814      	ldr	r0, [pc, #80]	; (247c <video_test+0x138>)
    242a:	f001 fb57 	bl	3adc <print>
    242e:	e00b      	b.n	2448 <video_test+0x104>
    2430:	4813      	ldr	r0, [pc, #76]	; (2480 <video_test+0x13c>)
    2432:	f001 fb53 	bl	3adc <print>
    2436:	e007      	b.n	2448 <video_test+0x104>
    2438:	4812      	ldr	r0, [pc, #72]	; (2484 <video_test+0x140>)
    243a:	f001 fb4f 	bl	3adc <print>
    243e:	e003      	b.n	2448 <video_test+0x104>
    2440:	4811      	ldr	r0, [pc, #68]	; (2488 <video_test+0x144>)
    2442:	f001 fb4b 	bl	3adc <print>
    2446:	bf00      	nop
    2448:	f7ff ff18 	bl	227c <init_balls>
    244c:	4b0f      	ldr	r3, [pc, #60]	; (248c <video_test+0x148>)
    244e:	681b      	ldr	r3, [r3, #0]
    2450:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
    2454:	607b      	str	r3, [r7, #4]
    2456:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    245a:	f001 ff61 	bl	4320 <btn_wait_up>
    245e:	4b0b      	ldr	r3, [pc, #44]	; (248c <video_test+0x148>)
    2460:	681a      	ldr	r2, [r3, #0]
    2462:	687b      	ldr	r3, [r7, #4]
    2464:	429a      	cmp	r2, r3
    2466:	d800      	bhi.n	246a <video_test+0x126>
    2468:	e7b4      	b.n	23d4 <video_test+0x90>
    246a:	bf00      	nop
    246c:	bf00      	nop
    246e:	3718      	adds	r7, #24
    2470:	46bd      	mov	sp, r7
    2472:	bd80      	pop	{r7, pc}
    2474:	00004c00 	.word	0x00004c00
    2478:	20004ca0 	.word	0x20004ca0
    247c:	0000483c 	.word	0x0000483c
    2480:	0000485c 	.word	0x0000485c
    2484:	00004878 	.word	0x00004878
    2488:	00004890 	.word	0x00004890
    248c:	200004f8 	.word	0x200004f8

00002490 <select_vmode>:
    2490:	b580      	push	{r7, lr}
    2492:	af00      	add	r7, sp, #0
    2494:	f7ff fbb4 	bl	1c00 <gfx_cls>
    2498:	4804      	ldr	r0, [pc, #16]	; (24ac <select_vmode+0x1c>)
    249a:	f001 fb42 	bl	3b22 <println>
    249e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    24a2:	f001 f981 	bl	37a8 <pause>
    24a6:	bf00      	nop
    24a8:	bd80      	pop	{r7, pc}
    24aa:	bf00      	nop
    24ac:	000048a8 	.word	0x000048a8

000024b0 <select_game>:
    24b0:	b580      	push	{r7, lr}
    24b2:	af00      	add	r7, sp, #0
    24b4:	f7ff fba4 	bl	1c00 <gfx_cls>
    24b8:	4804      	ldr	r0, [pc, #16]	; (24cc <select_game+0x1c>)
    24ba:	f001 fb32 	bl	3b22 <println>
    24be:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    24c2:	f001 f971 	bl	37a8 <pause>
    24c6:	bf00      	nop
    24c8:	bd80      	pop	{r7, pc}
    24ca:	bf00      	nop
    24cc:	000048b4 	.word	0x000048b4

000024d0 <display_menu>:
    24d0:	b580      	push	{r7, lr}
    24d2:	b082      	sub	sp, #8
    24d4:	af00      	add	r7, sp, #0
    24d6:	2300      	movs	r3, #0
    24d8:	607b      	str	r3, [r7, #4]
    24da:	e009      	b.n	24f0 <display_menu+0x20>
    24dc:	4a08      	ldr	r2, [pc, #32]	; (2500 <display_menu+0x30>)
    24de:	687b      	ldr	r3, [r7, #4]
    24e0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    24e4:	4618      	mov	r0, r3
    24e6:	f001 fb1c 	bl	3b22 <println>
    24ea:	687b      	ldr	r3, [r7, #4]
    24ec:	3301      	adds	r3, #1
    24ee:	607b      	str	r3, [r7, #4]
    24f0:	687b      	ldr	r3, [r7, #4]
    24f2:	2b02      	cmp	r3, #2
    24f4:	ddf2      	ble.n	24dc <display_menu+0xc>
    24f6:	bf00      	nop
    24f8:	3708      	adds	r7, #8
    24fa:	46bd      	mov	sp, r7
    24fc:	bd80      	pop	{r7, pc}
    24fe:	bf00      	nop
    2500:	20000004 	.word	0x20000004

00002504 <menu>:
    2504:	b580      	push	{r7, lr}
    2506:	b084      	sub	sp, #16
    2508:	af00      	add	r7, sp, #0
    250a:	2300      	movs	r3, #0
    250c:	60fb      	str	r3, [r7, #12]
    250e:	f001 ff51 	bl	43b4 <get_video_params>
    2512:	60b8      	str	r0, [r7, #8]
    2514:	f7ff ffdc 	bl	24d0 <display_menu>
    2518:	68fb      	ldr	r3, [r7, #12]
    251a:	b2db      	uxtb	r3, r3
    251c:	00db      	lsls	r3, r3, #3
    251e:	b2db      	uxtb	r3, r3
    2520:	4619      	mov	r1, r3
    2522:	2000      	movs	r0, #0
    2524:	f001 faae 	bl	3a84 <set_cursor>
    2528:	203e      	movs	r0, #62	; 0x3e
    252a:	f001 fa1f 	bl	396c <put_char>
    252e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    2532:	f001 fec7 	bl	42c4 <btn_wait_down>
    2536:	4b1f      	ldr	r3, [pc, #124]	; (25b4 <menu+0xb0>)
    2538:	681b      	ldr	r3, [r3, #0]
    253a:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
    253e:	607b      	str	r3, [r7, #4]
    2540:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    2544:	f001 feec 	bl	4320 <btn_wait_up>
    2548:	4b1a      	ldr	r3, [pc, #104]	; (25b4 <menu+0xb0>)
    254a:	681a      	ldr	r2, [r3, #0]
    254c:	687b      	ldr	r3, [r7, #4]
    254e:	429a      	cmp	r2, r3
    2550:	d315      	bcc.n	257e <menu+0x7a>
    2552:	68fb      	ldr	r3, [r7, #12]
    2554:	2b01      	cmp	r3, #1
    2556:	d006      	beq.n	2566 <menu+0x62>
    2558:	2b02      	cmp	r3, #2
    255a:	d007      	beq.n	256c <menu+0x68>
    255c:	2b00      	cmp	r3, #0
    255e:	d108      	bne.n	2572 <menu+0x6e>
    2560:	f7ff ff96 	bl	2490 <select_vmode>
    2564:	e005      	b.n	2572 <menu+0x6e>
    2566:	f7ff ffa3 	bl	24b0 <select_game>
    256a:	e002      	b.n	2572 <menu+0x6e>
    256c:	f7ff feea 	bl	2344 <video_test>
    2570:	bf00      	nop
    2572:	2000      	movs	r0, #0
    2574:	f001 ff0c 	bl	4390 <set_video_mode>
    2578:	f7ff ffaa 	bl	24d0 <display_menu>
    257c:	e7cc      	b.n	2518 <menu+0x14>
    257e:	68fb      	ldr	r3, [r7, #12]
    2580:	b2db      	uxtb	r3, r3
    2582:	00db      	lsls	r3, r3, #3
    2584:	b2db      	uxtb	r3, r3
    2586:	4619      	mov	r1, r3
    2588:	2000      	movs	r0, #0
    258a:	f001 fa7b 	bl	3a84 <set_cursor>
    258e:	2020      	movs	r0, #32
    2590:	f001 f9ec 	bl	396c <put_char>
    2594:	68fb      	ldr	r3, [r7, #12]
    2596:	3301      	adds	r3, #1
    2598:	60fb      	str	r3, [r7, #12]
    259a:	68fa      	ldr	r2, [r7, #12]
    259c:	4b06      	ldr	r3, [pc, #24]	; (25b8 <menu+0xb4>)
    259e:	fb83 3102 	smull	r3, r1, r3, r2
    25a2:	17d3      	asrs	r3, r2, #31
    25a4:	1ac9      	subs	r1, r1, r3
    25a6:	460b      	mov	r3, r1
    25a8:	005b      	lsls	r3, r3, #1
    25aa:	440b      	add	r3, r1
    25ac:	1ad3      	subs	r3, r2, r3
    25ae:	60fb      	str	r3, [r7, #12]
    25b0:	e7b2      	b.n	2518 <menu+0x14>
    25b2:	bf00      	nop
    25b4:	200004f8 	.word	0x200004f8
    25b8:	55555556 	.word	0x55555556

000025bc <main>:
    25bc:	b580      	push	{r7, lr}
    25be:	af00      	add	r7, sp, #0
    25c0:	f7ff fcb0 	bl	1f24 <set_sysclock>
    25c4:	f001 f8dc 	bl	3780 <config_systicks>
    25c8:	4b0b      	ldr	r3, [pc, #44]	; (25f8 <main+0x3c>)
    25ca:	f640 021d 	movw	r2, #2077	; 0x81d
    25ce:	619a      	str	r2, [r3, #24]
    25d0:	2206      	movs	r2, #6
    25d2:	210d      	movs	r1, #13
    25d4:	4809      	ldr	r0, [pc, #36]	; (25fc <main+0x40>)
    25d6:	f7ff f98e 	bl	18f6 <config_pin>
    25da:	4a08      	ldr	r2, [pc, #32]	; (25fc <main+0x40>)
    25dc:	4b07      	ldr	r3, [pc, #28]	; (25fc <main+0x40>)
    25de:	68db      	ldr	r3, [r3, #12]
    25e0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    25e4:	60d3      	str	r3, [r2, #12]
    25e6:	f001 fbf9 	bl	3ddc <tvout_init>
    25ea:	f7ff fb09 	bl	1c00 <gfx_cls>
    25ee:	f7ff ff89 	bl	2504 <menu>
    25f2:	bf00      	nop
    25f4:	bd80      	pop	{r7, pc}
    25f6:	bf00      	nop
    25f8:	40021000 	.word	0x40021000
    25fc:	40011000 	.word	0x40011000

00002600 <enable_interrupt>:
    2600:	b480      	push	{r7}
    2602:	b083      	sub	sp, #12
    2604:	af00      	add	r7, sp, #0
    2606:	6078      	str	r0, [r7, #4]
    2608:	687b      	ldr	r3, [r7, #4]
    260a:	2b3b      	cmp	r3, #59	; 0x3b
    260c:	dc17      	bgt.n	263e <enable_interrupt+0x3e>
    260e:	687b      	ldr	r3, [r7, #4]
    2610:	115b      	asrs	r3, r3, #5
    2612:	009b      	lsls	r3, r3, #2
    2614:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2618:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    261c:	687a      	ldr	r2, [r7, #4]
    261e:	1152      	asrs	r2, r2, #5
    2620:	0092      	lsls	r2, r2, #2
    2622:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2626:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    262a:	6812      	ldr	r2, [r2, #0]
    262c:	6879      	ldr	r1, [r7, #4]
    262e:	f001 011f 	and.w	r1, r1, #31
    2632:	2001      	movs	r0, #1
    2634:	fa00 f101 	lsl.w	r1, r0, r1
    2638:	430a      	orrs	r2, r1
    263a:	601a      	str	r2, [r3, #0]
    263c:	e000      	b.n	2640 <enable_interrupt+0x40>
    263e:	bf00      	nop
    2640:	370c      	adds	r7, #12
    2642:	46bd      	mov	sp, r7
    2644:	bc80      	pop	{r7}
    2646:	4770      	bx	lr

00002648 <disable_interrupt>:
    2648:	b480      	push	{r7}
    264a:	b083      	sub	sp, #12
    264c:	af00      	add	r7, sp, #0
    264e:	6078      	str	r0, [r7, #4]
    2650:	687b      	ldr	r3, [r7, #4]
    2652:	2b3b      	cmp	r3, #59	; 0x3b
    2654:	dc0c      	bgt.n	2670 <disable_interrupt+0x28>
    2656:	687b      	ldr	r3, [r7, #4]
    2658:	115b      	asrs	r3, r3, #5
    265a:	009a      	lsls	r2, r3, #2
    265c:	4b07      	ldr	r3, [pc, #28]	; (267c <disable_interrupt+0x34>)
    265e:	4413      	add	r3, r2
    2660:	687a      	ldr	r2, [r7, #4]
    2662:	f002 021f 	and.w	r2, r2, #31
    2666:	2101      	movs	r1, #1
    2668:	fa01 f202 	lsl.w	r2, r1, r2
    266c:	601a      	str	r2, [r3, #0]
    266e:	e000      	b.n	2672 <disable_interrupt+0x2a>
    2670:	bf00      	nop
    2672:	370c      	adds	r7, #12
    2674:	46bd      	mov	sp, r7
    2676:	bc80      	pop	{r7}
    2678:	4770      	bx	lr
    267a:	bf00      	nop
    267c:	e000e180 	.word	0xe000e180

00002680 <get_pending>:
    2680:	b480      	push	{r7}
    2682:	b083      	sub	sp, #12
    2684:	af00      	add	r7, sp, #0
    2686:	6078      	str	r0, [r7, #4]
    2688:	687b      	ldr	r3, [r7, #4]
    268a:	2b3b      	cmp	r3, #59	; 0x3b
    268c:	dd01      	ble.n	2692 <get_pending+0x12>
    268e:	2300      	movs	r3, #0
    2690:	e00c      	b.n	26ac <get_pending+0x2c>
    2692:	687b      	ldr	r3, [r7, #4]
    2694:	115b      	asrs	r3, r3, #5
    2696:	009a      	lsls	r2, r3, #2
    2698:	4b07      	ldr	r3, [pc, #28]	; (26b8 <get_pending+0x38>)
    269a:	4413      	add	r3, r2
    269c:	681b      	ldr	r3, [r3, #0]
    269e:	687a      	ldr	r2, [r7, #4]
    26a0:	f002 021f 	and.w	r2, r2, #31
    26a4:	2101      	movs	r1, #1
    26a6:	fa01 f202 	lsl.w	r2, r1, r2
    26aa:	4013      	ands	r3, r2
    26ac:	4618      	mov	r0, r3
    26ae:	370c      	adds	r7, #12
    26b0:	46bd      	mov	sp, r7
    26b2:	bc80      	pop	{r7}
    26b4:	4770      	bx	lr
    26b6:	bf00      	nop
    26b8:	e000e280 	.word	0xe000e280

000026bc <get_active>:
    26bc:	b480      	push	{r7}
    26be:	b083      	sub	sp, #12
    26c0:	af00      	add	r7, sp, #0
    26c2:	6078      	str	r0, [r7, #4]
    26c4:	687b      	ldr	r3, [r7, #4]
    26c6:	2b3b      	cmp	r3, #59	; 0x3b
    26c8:	dd01      	ble.n	26ce <get_active+0x12>
    26ca:	2300      	movs	r3, #0
    26cc:	e00e      	b.n	26ec <get_active+0x30>
    26ce:	687b      	ldr	r3, [r7, #4]
    26d0:	115b      	asrs	r3, r3, #5
    26d2:	009b      	lsls	r3, r3, #2
    26d4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    26d8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    26dc:	681b      	ldr	r3, [r3, #0]
    26de:	687a      	ldr	r2, [r7, #4]
    26e0:	f002 021f 	and.w	r2, r2, #31
    26e4:	2101      	movs	r1, #1
    26e6:	fa01 f202 	lsl.w	r2, r1, r2
    26ea:	4013      	ands	r3, r2
    26ec:	4618      	mov	r0, r3
    26ee:	370c      	adds	r7, #12
    26f0:	46bd      	mov	sp, r7
    26f2:	bc80      	pop	{r7}
    26f4:	4770      	bx	lr

000026f6 <set_pending>:
    26f6:	b480      	push	{r7}
    26f8:	b083      	sub	sp, #12
    26fa:	af00      	add	r7, sp, #0
    26fc:	6078      	str	r0, [r7, #4]
    26fe:	687b      	ldr	r3, [r7, #4]
    2700:	2b3b      	cmp	r3, #59	; 0x3b
    2702:	dc17      	bgt.n	2734 <set_pending+0x3e>
    2704:	687b      	ldr	r3, [r7, #4]
    2706:	115b      	asrs	r3, r3, #5
    2708:	009b      	lsls	r3, r3, #2
    270a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    270e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2712:	687a      	ldr	r2, [r7, #4]
    2714:	1152      	asrs	r2, r2, #5
    2716:	0092      	lsls	r2, r2, #2
    2718:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    271c:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    2720:	6812      	ldr	r2, [r2, #0]
    2722:	6879      	ldr	r1, [r7, #4]
    2724:	f001 011f 	and.w	r1, r1, #31
    2728:	2001      	movs	r0, #1
    272a:	fa00 f101 	lsl.w	r1, r0, r1
    272e:	430a      	orrs	r2, r1
    2730:	601a      	str	r2, [r3, #0]
    2732:	e000      	b.n	2736 <set_pending+0x40>
    2734:	bf00      	nop
    2736:	370c      	adds	r7, #12
    2738:	46bd      	mov	sp, r7
    273a:	bc80      	pop	{r7}
    273c:	4770      	bx	lr

0000273e <clear_pending>:
    273e:	b480      	push	{r7}
    2740:	b083      	sub	sp, #12
    2742:	af00      	add	r7, sp, #0
    2744:	6078      	str	r0, [r7, #4]
    2746:	687b      	ldr	r3, [r7, #4]
    2748:	2b3b      	cmp	r3, #59	; 0x3b
    274a:	dc0c      	bgt.n	2766 <clear_pending+0x28>
    274c:	687b      	ldr	r3, [r7, #4]
    274e:	115b      	asrs	r3, r3, #5
    2750:	009a      	lsls	r2, r3, #2
    2752:	4b07      	ldr	r3, [pc, #28]	; (2770 <clear_pending+0x32>)
    2754:	4413      	add	r3, r2
    2756:	687a      	ldr	r2, [r7, #4]
    2758:	f002 021f 	and.w	r2, r2, #31
    275c:	2101      	movs	r1, #1
    275e:	fa01 f202 	lsl.w	r2, r1, r2
    2762:	601a      	str	r2, [r3, #0]
    2764:	e000      	b.n	2768 <clear_pending+0x2a>
    2766:	bf00      	nop
    2768:	370c      	adds	r7, #12
    276a:	46bd      	mov	sp, r7
    276c:	bc80      	pop	{r7}
    276e:	4770      	bx	lr
    2770:	e000e280 	.word	0xe000e280

00002774 <set_int_priority>:
    2774:	b480      	push	{r7}
    2776:	b083      	sub	sp, #12
    2778:	af00      	add	r7, sp, #0
    277a:	6078      	str	r0, [r7, #4]
    277c:	6039      	str	r1, [r7, #0]
    277e:	687b      	ldr	r3, [r7, #4]
    2780:	2b00      	cmp	r3, #0
    2782:	db0d      	blt.n	27a0 <set_int_priority+0x2c>
    2784:	687b      	ldr	r3, [r7, #4]
    2786:	2b3b      	cmp	r3, #59	; 0x3b
    2788:	dc0a      	bgt.n	27a0 <set_int_priority+0x2c>
    278a:	687b      	ldr	r3, [r7, #4]
    278c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2790:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    2794:	683a      	ldr	r2, [r7, #0]
    2796:	b2d2      	uxtb	r2, r2
    2798:	0112      	lsls	r2, r2, #4
    279a:	b2d2      	uxtb	r2, r2
    279c:	701a      	strb	r2, [r3, #0]
    279e:	e012      	b.n	27c6 <set_int_priority+0x52>
    27a0:	687b      	ldr	r3, [r7, #4]
    27a2:	2b00      	cmp	r3, #0
    27a4:	da0f      	bge.n	27c6 <set_int_priority+0x52>
    27a6:	687b      	ldr	r3, [r7, #4]
    27a8:	f113 0f0f 	cmn.w	r3, #15
    27ac:	db0b      	blt.n	27c6 <set_int_priority+0x52>
    27ae:	687a      	ldr	r2, [r7, #4]
    27b0:	f06f 0303 	mvn.w	r3, #3
    27b4:	1a9b      	subs	r3, r3, r2
    27b6:	461a      	mov	r2, r3
    27b8:	4b05      	ldr	r3, [pc, #20]	; (27d0 <set_int_priority+0x5c>)
    27ba:	4413      	add	r3, r2
    27bc:	683a      	ldr	r2, [r7, #0]
    27be:	b2d2      	uxtb	r2, r2
    27c0:	0112      	lsls	r2, r2, #4
    27c2:	b2d2      	uxtb	r2, r2
    27c4:	701a      	strb	r2, [r3, #0]
    27c6:	bf00      	nop
    27c8:	370c      	adds	r7, #12
    27ca:	46bd      	mov	sp, r7
    27cc:	bc80      	pop	{r7}
    27ce:	4770      	bx	lr
    27d0:	e000ed18 	.word	0xe000ed18

000027d4 <leap_year>:
    27d4:	b480      	push	{r7}
    27d6:	b083      	sub	sp, #12
    27d8:	af00      	add	r7, sp, #0
    27da:	6078      	str	r0, [r7, #4]
    27dc:	687b      	ldr	r3, [r7, #4]
    27de:	f003 0303 	and.w	r3, r3, #3
    27e2:	2b00      	cmp	r3, #0
    27e4:	d11a      	bne.n	281c <leap_year+0x48>
    27e6:	687a      	ldr	r2, [r7, #4]
    27e8:	4b0f      	ldr	r3, [pc, #60]	; (2828 <leap_year+0x54>)
    27ea:	fba3 1302 	umull	r1, r3, r3, r2
    27ee:	095b      	lsrs	r3, r3, #5
    27f0:	2164      	movs	r1, #100	; 0x64
    27f2:	fb01 f303 	mul.w	r3, r1, r3
    27f6:	1ad3      	subs	r3, r2, r3
    27f8:	2b00      	cmp	r3, #0
    27fa:	d10d      	bne.n	2818 <leap_year+0x44>
    27fc:	687a      	ldr	r2, [r7, #4]
    27fe:	4b0a      	ldr	r3, [pc, #40]	; (2828 <leap_year+0x54>)
    2800:	fba3 1302 	umull	r1, r3, r3, r2
    2804:	09db      	lsrs	r3, r3, #7
    2806:	f44f 71c8 	mov.w	r1, #400	; 0x190
    280a:	fb01 f303 	mul.w	r3, r1, r3
    280e:	1ad3      	subs	r3, r2, r3
    2810:	2b00      	cmp	r3, #0
    2812:	d001      	beq.n	2818 <leap_year+0x44>
    2814:	2300      	movs	r3, #0
    2816:	e002      	b.n	281e <leap_year+0x4a>
    2818:	2301      	movs	r3, #1
    281a:	e000      	b.n	281e <leap_year+0x4a>
    281c:	2300      	movs	r3, #0
    281e:	4618      	mov	r0, r3
    2820:	370c      	adds	r7, #12
    2822:	46bd      	mov	sp, r7
    2824:	bc80      	pop	{r7}
    2826:	4770      	bx	lr
    2828:	51eb851f 	.word	0x51eb851f

0000282c <sec_per_month>:
    282c:	b480      	push	{r7}
    282e:	b085      	sub	sp, #20
    2830:	af00      	add	r7, sp, #0
    2832:	6078      	str	r0, [r7, #4]
    2834:	6039      	str	r1, [r7, #0]
    2836:	4a0d      	ldr	r2, [pc, #52]	; (286c <sec_per_month+0x40>)
    2838:	683b      	ldr	r3, [r7, #0]
    283a:	4413      	add	r3, r2
    283c:	781b      	ldrb	r3, [r3, #0]
    283e:	461a      	mov	r2, r3
    2840:	4b0b      	ldr	r3, [pc, #44]	; (2870 <sec_per_month+0x44>)
    2842:	fb03 f302 	mul.w	r3, r3, r2
    2846:	60fb      	str	r3, [r7, #12]
    2848:	683b      	ldr	r3, [r7, #0]
    284a:	2b02      	cmp	r3, #2
    284c:	d108      	bne.n	2860 <sec_per_month+0x34>
    284e:	687b      	ldr	r3, [r7, #4]
    2850:	2b00      	cmp	r3, #0
    2852:	d005      	beq.n	2860 <sec_per_month+0x34>
    2854:	68fb      	ldr	r3, [r7, #12]
    2856:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    285a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    285e:	60fb      	str	r3, [r7, #12]
    2860:	68fb      	ldr	r3, [r7, #12]
    2862:	4618      	mov	r0, r3
    2864:	3714      	adds	r7, #20
    2866:	46bd      	mov	sp, r7
    2868:	bc80      	pop	{r7}
    286a:	4770      	bx	lr
    286c:	00004990 	.word	0x00004990
    2870:	00015180 	.word	0x00015180

00002874 <get_date_time>:
    2874:	b580      	push	{r7, lr}
    2876:	b086      	sub	sp, #24
    2878:	af00      	add	r7, sp, #0
    287a:	6078      	str	r0, [r7, #4]
    287c:	4b66      	ldr	r3, [pc, #408]	; (2a18 <get_date_time+0x1a4>)
    287e:	699b      	ldr	r3, [r3, #24]
    2880:	041a      	lsls	r2, r3, #16
    2882:	4b65      	ldr	r3, [pc, #404]	; (2a18 <get_date_time+0x1a4>)
    2884:	69db      	ldr	r3, [r3, #28]
    2886:	4413      	add	r3, r2
    2888:	617b      	str	r3, [r7, #20]
    288a:	687b      	ldr	r3, [r7, #4]
    288c:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2890:	811a      	strh	r2, [r3, #8]
    2892:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2896:	f7ff ff9d 	bl	27d4 <leap_year>
    289a:	6138      	str	r0, [r7, #16]
    289c:	e019      	b.n	28d2 <get_date_time+0x5e>
    289e:	693b      	ldr	r3, [r7, #16]
    28a0:	2b00      	cmp	r3, #0
    28a2:	d006      	beq.n	28b2 <get_date_time+0x3e>
    28a4:	697b      	ldr	r3, [r7, #20]
    28a6:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    28aa:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    28ae:	617b      	str	r3, [r7, #20]
    28b0:	e003      	b.n	28ba <get_date_time+0x46>
    28b2:	697a      	ldr	r2, [r7, #20]
    28b4:	4b59      	ldr	r3, [pc, #356]	; (2a1c <get_date_time+0x1a8>)
    28b6:	4413      	add	r3, r2
    28b8:	617b      	str	r3, [r7, #20]
    28ba:	687b      	ldr	r3, [r7, #4]
    28bc:	891b      	ldrh	r3, [r3, #8]
    28be:	3301      	adds	r3, #1
    28c0:	b29a      	uxth	r2, r3
    28c2:	687b      	ldr	r3, [r7, #4]
    28c4:	811a      	strh	r2, [r3, #8]
    28c6:	687b      	ldr	r3, [r7, #4]
    28c8:	891b      	ldrh	r3, [r3, #8]
    28ca:	4618      	mov	r0, r3
    28cc:	f7ff ff82 	bl	27d4 <leap_year>
    28d0:	6138      	str	r0, [r7, #16]
    28d2:	693b      	ldr	r3, [r7, #16]
    28d4:	2b00      	cmp	r3, #0
    28d6:	d103      	bne.n	28e0 <get_date_time+0x6c>
    28d8:	697b      	ldr	r3, [r7, #20]
    28da:	4a51      	ldr	r2, [pc, #324]	; (2a20 <get_date_time+0x1ac>)
    28dc:	4293      	cmp	r3, r2
    28de:	d8de      	bhi.n	289e <get_date_time+0x2a>
    28e0:	693b      	ldr	r3, [r7, #16]
    28e2:	2b00      	cmp	r3, #0
    28e4:	d003      	beq.n	28ee <get_date_time+0x7a>
    28e6:	697b      	ldr	r3, [r7, #20]
    28e8:	4a4e      	ldr	r2, [pc, #312]	; (2a24 <get_date_time+0x1b0>)
    28ea:	4293      	cmp	r3, r2
    28ec:	d8d7      	bhi.n	289e <get_date_time+0x2a>
    28ee:	687a      	ldr	r2, [r7, #4]
    28f0:	8853      	ldrh	r3, [r2, #2]
    28f2:	2101      	movs	r1, #1
    28f4:	f361 1389 	bfi	r3, r1, #6, #4
    28f8:	8053      	strh	r3, [r2, #2]
    28fa:	687a      	ldr	r2, [r7, #4]
    28fc:	7893      	ldrb	r3, [r2, #2]
    28fe:	2101      	movs	r1, #1
    2900:	f361 0345 	bfi	r3, r1, #1, #5
    2904:	7093      	strb	r3, [r2, #2]
    2906:	687a      	ldr	r2, [r7, #4]
    2908:	6813      	ldr	r3, [r2, #0]
    290a:	f36f 3310 	bfc	r3, #12, #5
    290e:	6013      	str	r3, [r2, #0]
    2910:	687a      	ldr	r2, [r7, #4]
    2912:	8813      	ldrh	r3, [r2, #0]
    2914:	f36f 138b 	bfc	r3, #6, #6
    2918:	8013      	strh	r3, [r2, #0]
    291a:	687a      	ldr	r2, [r7, #4]
    291c:	7813      	ldrb	r3, [r2, #0]
    291e:	f36f 0305 	bfc	r3, #0, #6
    2922:	7013      	strb	r3, [r2, #0]
    2924:	e011      	b.n	294a <get_date_time+0xd6>
    2926:	687b      	ldr	r3, [r7, #4]
    2928:	885b      	ldrh	r3, [r3, #2]
    292a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    292e:	b2db      	uxtb	r3, r3
    2930:	3301      	adds	r3, #1
    2932:	f003 030f 	and.w	r3, r3, #15
    2936:	b2d9      	uxtb	r1, r3
    2938:	687a      	ldr	r2, [r7, #4]
    293a:	8853      	ldrh	r3, [r2, #2]
    293c:	f361 1389 	bfi	r3, r1, #6, #4
    2940:	8053      	strh	r3, [r2, #2]
    2942:	697a      	ldr	r2, [r7, #20]
    2944:	68fb      	ldr	r3, [r7, #12]
    2946:	1ad3      	subs	r3, r2, r3
    2948:	617b      	str	r3, [r7, #20]
    294a:	687b      	ldr	r3, [r7, #4]
    294c:	885b      	ldrh	r3, [r3, #2]
    294e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2952:	b2db      	uxtb	r3, r3
    2954:	4619      	mov	r1, r3
    2956:	6938      	ldr	r0, [r7, #16]
    2958:	f7ff ff68 	bl	282c <sec_per_month>
    295c:	60f8      	str	r0, [r7, #12]
    295e:	68fa      	ldr	r2, [r7, #12]
    2960:	697b      	ldr	r3, [r7, #20]
    2962:	429a      	cmp	r2, r3
    2964:	d3df      	bcc.n	2926 <get_date_time+0xb2>
    2966:	697b      	ldr	r3, [r7, #20]
    2968:	4a2f      	ldr	r2, [pc, #188]	; (2a28 <get_date_time+0x1b4>)
    296a:	fba2 2303 	umull	r2, r3, r2, r3
    296e:	0c1b      	lsrs	r3, r3, #16
    2970:	b2db      	uxtb	r3, r3
    2972:	3301      	adds	r3, #1
    2974:	b2db      	uxtb	r3, r3
    2976:	f003 031f 	and.w	r3, r3, #31
    297a:	b2d9      	uxtb	r1, r3
    297c:	687a      	ldr	r2, [r7, #4]
    297e:	7893      	ldrb	r3, [r2, #2]
    2980:	f361 0345 	bfi	r3, r1, #1, #5
    2984:	7093      	strb	r3, [r2, #2]
    2986:	697b      	ldr	r3, [r7, #20]
    2988:	4a27      	ldr	r2, [pc, #156]	; (2a28 <get_date_time+0x1b4>)
    298a:	fba2 1203 	umull	r1, r2, r2, r3
    298e:	0c12      	lsrs	r2, r2, #16
    2990:	4926      	ldr	r1, [pc, #152]	; (2a2c <get_date_time+0x1b8>)
    2992:	fb01 f202 	mul.w	r2, r1, r2
    2996:	1a9b      	subs	r3, r3, r2
    2998:	617b      	str	r3, [r7, #20]
    299a:	697b      	ldr	r3, [r7, #20]
    299c:	4a24      	ldr	r2, [pc, #144]	; (2a30 <get_date_time+0x1bc>)
    299e:	fba2 2303 	umull	r2, r3, r2, r3
    29a2:	0adb      	lsrs	r3, r3, #11
    29a4:	b2db      	uxtb	r3, r3
    29a6:	f003 031f 	and.w	r3, r3, #31
    29aa:	b2d9      	uxtb	r1, r3
    29ac:	687a      	ldr	r2, [r7, #4]
    29ae:	6813      	ldr	r3, [r2, #0]
    29b0:	f361 3310 	bfi	r3, r1, #12, #5
    29b4:	6013      	str	r3, [r2, #0]
    29b6:	697b      	ldr	r3, [r7, #20]
    29b8:	4a1d      	ldr	r2, [pc, #116]	; (2a30 <get_date_time+0x1bc>)
    29ba:	fba2 1203 	umull	r1, r2, r2, r3
    29be:	0ad2      	lsrs	r2, r2, #11
    29c0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    29c4:	fb01 f202 	mul.w	r2, r1, r2
    29c8:	1a9b      	subs	r3, r3, r2
    29ca:	617b      	str	r3, [r7, #20]
    29cc:	697b      	ldr	r3, [r7, #20]
    29ce:	4a19      	ldr	r2, [pc, #100]	; (2a34 <get_date_time+0x1c0>)
    29d0:	fba2 2303 	umull	r2, r3, r2, r3
    29d4:	095b      	lsrs	r3, r3, #5
    29d6:	b2db      	uxtb	r3, r3
    29d8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    29dc:	b2d9      	uxtb	r1, r3
    29de:	687a      	ldr	r2, [r7, #4]
    29e0:	8813      	ldrh	r3, [r2, #0]
    29e2:	f361 138b 	bfi	r3, r1, #6, #6
    29e6:	8013      	strh	r3, [r2, #0]
    29e8:	6979      	ldr	r1, [r7, #20]
    29ea:	4b12      	ldr	r3, [pc, #72]	; (2a34 <get_date_time+0x1c0>)
    29ec:	fba3 2301 	umull	r2, r3, r3, r1
    29f0:	095a      	lsrs	r2, r3, #5
    29f2:	4613      	mov	r3, r2
    29f4:	011b      	lsls	r3, r3, #4
    29f6:	1a9b      	subs	r3, r3, r2
    29f8:	009b      	lsls	r3, r3, #2
    29fa:	1aca      	subs	r2, r1, r3
    29fc:	b2d3      	uxtb	r3, r2
    29fe:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2a02:	b2d9      	uxtb	r1, r3
    2a04:	687a      	ldr	r2, [r7, #4]
    2a06:	7813      	ldrb	r3, [r2, #0]
    2a08:	f361 0305 	bfi	r3, r1, #0, #6
    2a0c:	7013      	strb	r3, [r2, #0]
    2a0e:	bf00      	nop
    2a10:	3718      	adds	r7, #24
    2a12:	46bd      	mov	sp, r7
    2a14:	bd80      	pop	{r7, pc}
    2a16:	bf00      	nop
    2a18:	40002800 	.word	0x40002800
    2a1c:	fe1ecc80 	.word	0xfe1ecc80
    2a20:	01e1337f 	.word	0x01e1337f
    2a24:	01e284ff 	.word	0x01e284ff
    2a28:	c22e4507 	.word	0xc22e4507
    2a2c:	00015180 	.word	0x00015180
    2a30:	91a2b3c5 	.word	0x91a2b3c5
    2a34:	88888889 	.word	0x88888889

00002a38 <set_date_time>:
    2a38:	b580      	push	{r7, lr}
    2a3a:	b086      	sub	sp, #24
    2a3c:	af00      	add	r7, sp, #0
    2a3e:	6078      	str	r0, [r7, #4]
    2a40:	2300      	movs	r3, #0
    2a42:	613b      	str	r3, [r7, #16]
    2a44:	687b      	ldr	r3, [r7, #4]
    2a46:	891b      	ldrh	r3, [r3, #8]
    2a48:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2a4c:	4293      	cmp	r3, r2
    2a4e:	d803      	bhi.n	2a58 <set_date_time+0x20>
    2a50:	687b      	ldr	r3, [r7, #4]
    2a52:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2a56:	811a      	strh	r2, [r3, #8]
    2a58:	687b      	ldr	r3, [r7, #4]
    2a5a:	891b      	ldrh	r3, [r3, #8]
    2a5c:	f640 023a 	movw	r2, #2106	; 0x83a
    2a60:	4293      	cmp	r3, r2
    2a62:	d903      	bls.n	2a6c <set_date_time+0x34>
    2a64:	687b      	ldr	r3, [r7, #4]
    2a66:	f640 023a 	movw	r2, #2106	; 0x83a
    2a6a:	811a      	strh	r2, [r3, #8]
    2a6c:	687b      	ldr	r3, [r7, #4]
    2a6e:	891b      	ldrh	r3, [r3, #8]
    2a70:	4618      	mov	r0, r3
    2a72:	f7ff feaf 	bl	27d4 <leap_year>
    2a76:	60f8      	str	r0, [r7, #12]
    2a78:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2a7c:	617b      	str	r3, [r7, #20]
    2a7e:	e013      	b.n	2aa8 <set_date_time+0x70>
    2a80:	6978      	ldr	r0, [r7, #20]
    2a82:	f7ff fea7 	bl	27d4 <leap_year>
    2a86:	4603      	mov	r3, r0
    2a88:	2b00      	cmp	r3, #0
    2a8a:	d006      	beq.n	2a9a <set_date_time+0x62>
    2a8c:	693b      	ldr	r3, [r7, #16]
    2a8e:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2a92:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    2a96:	613b      	str	r3, [r7, #16]
    2a98:	e003      	b.n	2aa2 <set_date_time+0x6a>
    2a9a:	693a      	ldr	r2, [r7, #16]
    2a9c:	4b42      	ldr	r3, [pc, #264]	; (2ba8 <set_date_time+0x170>)
    2a9e:	4413      	add	r3, r2
    2aa0:	613b      	str	r3, [r7, #16]
    2aa2:	697b      	ldr	r3, [r7, #20]
    2aa4:	3301      	adds	r3, #1
    2aa6:	617b      	str	r3, [r7, #20]
    2aa8:	687b      	ldr	r3, [r7, #4]
    2aaa:	891b      	ldrh	r3, [r3, #8]
    2aac:	461a      	mov	r2, r3
    2aae:	697b      	ldr	r3, [r7, #20]
    2ab0:	429a      	cmp	r2, r3
    2ab2:	d8e5      	bhi.n	2a80 <set_date_time+0x48>
    2ab4:	2301      	movs	r3, #1
    2ab6:	617b      	str	r3, [r7, #20]
    2ab8:	e00a      	b.n	2ad0 <set_date_time+0x98>
    2aba:	6979      	ldr	r1, [r7, #20]
    2abc:	68f8      	ldr	r0, [r7, #12]
    2abe:	f7ff feb5 	bl	282c <sec_per_month>
    2ac2:	4602      	mov	r2, r0
    2ac4:	693b      	ldr	r3, [r7, #16]
    2ac6:	4413      	add	r3, r2
    2ac8:	613b      	str	r3, [r7, #16]
    2aca:	697b      	ldr	r3, [r7, #20]
    2acc:	3301      	adds	r3, #1
    2ace:	617b      	str	r3, [r7, #20]
    2ad0:	687b      	ldr	r3, [r7, #4]
    2ad2:	885b      	ldrh	r3, [r3, #2]
    2ad4:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2ad8:	b2db      	uxtb	r3, r3
    2ada:	461a      	mov	r2, r3
    2adc:	697b      	ldr	r3, [r7, #20]
    2ade:	429a      	cmp	r2, r3
    2ae0:	d8eb      	bhi.n	2aba <set_date_time+0x82>
    2ae2:	687b      	ldr	r3, [r7, #4]
    2ae4:	789b      	ldrb	r3, [r3, #2]
    2ae6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2aea:	b2db      	uxtb	r3, r3
    2aec:	3b01      	subs	r3, #1
    2aee:	4a2f      	ldr	r2, [pc, #188]	; (2bac <set_date_time+0x174>)
    2af0:	fb02 f303 	mul.w	r3, r2, r3
    2af4:	461a      	mov	r2, r3
    2af6:	693b      	ldr	r3, [r7, #16]
    2af8:	4413      	add	r3, r2
    2afa:	613b      	str	r3, [r7, #16]
    2afc:	687b      	ldr	r3, [r7, #4]
    2afe:	681b      	ldr	r3, [r3, #0]
    2b00:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2b04:	b2db      	uxtb	r3, r3
    2b06:	461a      	mov	r2, r3
    2b08:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    2b0c:	fb03 f302 	mul.w	r3, r3, r2
    2b10:	461a      	mov	r2, r3
    2b12:	693b      	ldr	r3, [r7, #16]
    2b14:	4413      	add	r3, r2
    2b16:	613b      	str	r3, [r7, #16]
    2b18:	687b      	ldr	r3, [r7, #4]
    2b1a:	881b      	ldrh	r3, [r3, #0]
    2b1c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2b20:	b2db      	uxtb	r3, r3
    2b22:	461a      	mov	r2, r3
    2b24:	4613      	mov	r3, r2
    2b26:	011b      	lsls	r3, r3, #4
    2b28:	1a9b      	subs	r3, r3, r2
    2b2a:	009b      	lsls	r3, r3, #2
    2b2c:	461a      	mov	r2, r3
    2b2e:	693b      	ldr	r3, [r7, #16]
    2b30:	4413      	add	r3, r2
    2b32:	613b      	str	r3, [r7, #16]
    2b34:	687b      	ldr	r3, [r7, #4]
    2b36:	781b      	ldrb	r3, [r3, #0]
    2b38:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2b3c:	b2db      	uxtb	r3, r3
    2b3e:	461a      	mov	r2, r3
    2b40:	693b      	ldr	r3, [r7, #16]
    2b42:	4413      	add	r3, r2
    2b44:	613b      	str	r3, [r7, #16]
    2b46:	4a1a      	ldr	r2, [pc, #104]	; (2bb0 <set_date_time+0x178>)
    2b48:	4b19      	ldr	r3, [pc, #100]	; (2bb0 <set_date_time+0x178>)
    2b4a:	69db      	ldr	r3, [r3, #28]
    2b4c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2b50:	61d3      	str	r3, [r2, #28]
    2b52:	4a18      	ldr	r2, [pc, #96]	; (2bb4 <set_date_time+0x17c>)
    2b54:	4b17      	ldr	r3, [pc, #92]	; (2bb4 <set_date_time+0x17c>)
    2b56:	681b      	ldr	r3, [r3, #0]
    2b58:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2b5c:	6013      	str	r3, [r2, #0]
    2b5e:	4a16      	ldr	r2, [pc, #88]	; (2bb8 <set_date_time+0x180>)
    2b60:	4b15      	ldr	r3, [pc, #84]	; (2bb8 <set_date_time+0x180>)
    2b62:	685b      	ldr	r3, [r3, #4]
    2b64:	f043 0310 	orr.w	r3, r3, #16
    2b68:	6053      	str	r3, [r2, #4]
    2b6a:	4a13      	ldr	r2, [pc, #76]	; (2bb8 <set_date_time+0x180>)
    2b6c:	693b      	ldr	r3, [r7, #16]
    2b6e:	0c1b      	lsrs	r3, r3, #16
    2b70:	6193      	str	r3, [r2, #24]
    2b72:	4a11      	ldr	r2, [pc, #68]	; (2bb8 <set_date_time+0x180>)
    2b74:	693b      	ldr	r3, [r7, #16]
    2b76:	b29b      	uxth	r3, r3
    2b78:	61d3      	str	r3, [r2, #28]
    2b7a:	4a0f      	ldr	r2, [pc, #60]	; (2bb8 <set_date_time+0x180>)
    2b7c:	4b0e      	ldr	r3, [pc, #56]	; (2bb8 <set_date_time+0x180>)
    2b7e:	685b      	ldr	r3, [r3, #4]
    2b80:	f023 0310 	bic.w	r3, r3, #16
    2b84:	6053      	str	r3, [r2, #4]
    2b86:	bf00      	nop
    2b88:	4b0b      	ldr	r3, [pc, #44]	; (2bb8 <set_date_time+0x180>)
    2b8a:	685b      	ldr	r3, [r3, #4]
    2b8c:	f003 0320 	and.w	r3, r3, #32
    2b90:	2b00      	cmp	r3, #0
    2b92:	d0f9      	beq.n	2b88 <set_date_time+0x150>
    2b94:	4a07      	ldr	r2, [pc, #28]	; (2bb4 <set_date_time+0x17c>)
    2b96:	4b07      	ldr	r3, [pc, #28]	; (2bb4 <set_date_time+0x17c>)
    2b98:	681b      	ldr	r3, [r3, #0]
    2b9a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2b9e:	6013      	str	r3, [r2, #0]
    2ba0:	bf00      	nop
    2ba2:	3718      	adds	r7, #24
    2ba4:	46bd      	mov	sp, r7
    2ba6:	bd80      	pop	{r7, pc}
    2ba8:	01e13380 	.word	0x01e13380
    2bac:	00015180 	.word	0x00015180
    2bb0:	40021000 	.word	0x40021000
    2bb4:	40007000 	.word	0x40007000
    2bb8:	40002800 	.word	0x40002800

00002bbc <rtc_init>:
    2bbc:	b580      	push	{r7, lr}
    2bbe:	b082      	sub	sp, #8
    2bc0:	af00      	add	r7, sp, #0
    2bc2:	6078      	str	r0, [r7, #4]
    2bc4:	6039      	str	r1, [r7, #0]
    2bc6:	4b4a      	ldr	r3, [pc, #296]	; (2cf0 <rtc_init+0x134>)
    2bc8:	685b      	ldr	r3, [r3, #4]
    2bca:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2bce:	4293      	cmp	r3, r2
    2bd0:	f000 8082 	beq.w	2cd8 <rtc_init+0x11c>
    2bd4:	4a47      	ldr	r2, [pc, #284]	; (2cf4 <rtc_init+0x138>)
    2bd6:	4b47      	ldr	r3, [pc, #284]	; (2cf4 <rtc_init+0x138>)
    2bd8:	69db      	ldr	r3, [r3, #28]
    2bda:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2bde:	61d3      	str	r3, [r2, #28]
    2be0:	4a45      	ldr	r2, [pc, #276]	; (2cf8 <rtc_init+0x13c>)
    2be2:	4b45      	ldr	r3, [pc, #276]	; (2cf8 <rtc_init+0x13c>)
    2be4:	681b      	ldr	r3, [r3, #0]
    2be6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2bea:	6013      	str	r3, [r2, #0]
    2bec:	4a41      	ldr	r2, [pc, #260]	; (2cf4 <rtc_init+0x138>)
    2bee:	4b41      	ldr	r3, [pc, #260]	; (2cf4 <rtc_init+0x138>)
    2bf0:	6a1b      	ldr	r3, [r3, #32]
    2bf2:	f043 0301 	orr.w	r3, r3, #1
    2bf6:	6213      	str	r3, [r2, #32]
    2bf8:	bf00      	nop
    2bfa:	4b3e      	ldr	r3, [pc, #248]	; (2cf4 <rtc_init+0x138>)
    2bfc:	6a1b      	ldr	r3, [r3, #32]
    2bfe:	f003 0302 	and.w	r3, r3, #2
    2c02:	2b00      	cmp	r3, #0
    2c04:	d0f9      	beq.n	2bfa <rtc_init+0x3e>
    2c06:	4a3b      	ldr	r2, [pc, #236]	; (2cf4 <rtc_init+0x138>)
    2c08:	4b3a      	ldr	r3, [pc, #232]	; (2cf4 <rtc_init+0x138>)
    2c0a:	6a1b      	ldr	r3, [r3, #32]
    2c0c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2c10:	6213      	str	r3, [r2, #32]
    2c12:	bf00      	nop
    2c14:	4b39      	ldr	r3, [pc, #228]	; (2cfc <rtc_init+0x140>)
    2c16:	685b      	ldr	r3, [r3, #4]
    2c18:	f003 0308 	and.w	r3, r3, #8
    2c1c:	2b00      	cmp	r3, #0
    2c1e:	d0f9      	beq.n	2c14 <rtc_init+0x58>
    2c20:	bf00      	nop
    2c22:	4b36      	ldr	r3, [pc, #216]	; (2cfc <rtc_init+0x140>)
    2c24:	685b      	ldr	r3, [r3, #4]
    2c26:	f003 0320 	and.w	r3, r3, #32
    2c2a:	2b00      	cmp	r3, #0
    2c2c:	d0f9      	beq.n	2c22 <rtc_init+0x66>
    2c2e:	4a33      	ldr	r2, [pc, #204]	; (2cfc <rtc_init+0x140>)
    2c30:	4b32      	ldr	r3, [pc, #200]	; (2cfc <rtc_init+0x140>)
    2c32:	685b      	ldr	r3, [r3, #4]
    2c34:	f043 0310 	orr.w	r3, r3, #16
    2c38:	6053      	str	r3, [r2, #4]
    2c3a:	bf00      	nop
    2c3c:	4b2f      	ldr	r3, [pc, #188]	; (2cfc <rtc_init+0x140>)
    2c3e:	685b      	ldr	r3, [r3, #4]
    2c40:	f003 0320 	and.w	r3, r3, #32
    2c44:	2b00      	cmp	r3, #0
    2c46:	d0f9      	beq.n	2c3c <rtc_init+0x80>
    2c48:	492c      	ldr	r1, [pc, #176]	; (2cfc <rtc_init+0x140>)
    2c4a:	4b2c      	ldr	r3, [pc, #176]	; (2cfc <rtc_init+0x140>)
    2c4c:	681a      	ldr	r2, [r3, #0]
    2c4e:	683b      	ldr	r3, [r7, #0]
    2c50:	4313      	orrs	r3, r2
    2c52:	600b      	str	r3, [r1, #0]
    2c54:	bf00      	nop
    2c56:	4b29      	ldr	r3, [pc, #164]	; (2cfc <rtc_init+0x140>)
    2c58:	685b      	ldr	r3, [r3, #4]
    2c5a:	f003 0320 	and.w	r3, r3, #32
    2c5e:	2b00      	cmp	r3, #0
    2c60:	d0f9      	beq.n	2c56 <rtc_init+0x9a>
    2c62:	4a26      	ldr	r2, [pc, #152]	; (2cfc <rtc_init+0x140>)
    2c64:	687b      	ldr	r3, [r7, #4]
    2c66:	03db      	lsls	r3, r3, #15
    2c68:	4925      	ldr	r1, [pc, #148]	; (2d00 <rtc_init+0x144>)
    2c6a:	fba1 1303 	umull	r1, r3, r1, r3
    2c6e:	099b      	lsrs	r3, r3, #6
    2c70:	3b01      	subs	r3, #1
    2c72:	b29b      	uxth	r3, r3
    2c74:	60d3      	str	r3, [r2, #12]
    2c76:	bf00      	nop
    2c78:	4b20      	ldr	r3, [pc, #128]	; (2cfc <rtc_init+0x140>)
    2c7a:	685b      	ldr	r3, [r3, #4]
    2c7c:	f003 0320 	and.w	r3, r3, #32
    2c80:	2b00      	cmp	r3, #0
    2c82:	d0f9      	beq.n	2c78 <rtc_init+0xbc>
    2c84:	4a1d      	ldr	r2, [pc, #116]	; (2cfc <rtc_init+0x140>)
    2c86:	687b      	ldr	r3, [r7, #4]
    2c88:	03db      	lsls	r3, r3, #15
    2c8a:	491d      	ldr	r1, [pc, #116]	; (2d00 <rtc_init+0x144>)
    2c8c:	fba1 1303 	umull	r1, r3, r1, r3
    2c90:	099b      	lsrs	r3, r3, #6
    2c92:	3b01      	subs	r3, #1
    2c94:	0c1b      	lsrs	r3, r3, #16
    2c96:	f003 030f 	and.w	r3, r3, #15
    2c9a:	6093      	str	r3, [r2, #8]
    2c9c:	bf00      	nop
    2c9e:	4b17      	ldr	r3, [pc, #92]	; (2cfc <rtc_init+0x140>)
    2ca0:	685b      	ldr	r3, [r3, #4]
    2ca2:	f003 0320 	and.w	r3, r3, #32
    2ca6:	2b00      	cmp	r3, #0
    2ca8:	d0f9      	beq.n	2c9e <rtc_init+0xe2>
    2caa:	4b11      	ldr	r3, [pc, #68]	; (2cf0 <rtc_init+0x134>)
    2cac:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2cb0:	605a      	str	r2, [r3, #4]
    2cb2:	4a12      	ldr	r2, [pc, #72]	; (2cfc <rtc_init+0x140>)
    2cb4:	4b11      	ldr	r3, [pc, #68]	; (2cfc <rtc_init+0x140>)
    2cb6:	685b      	ldr	r3, [r3, #4]
    2cb8:	f023 0310 	bic.w	r3, r3, #16
    2cbc:	6053      	str	r3, [r2, #4]
    2cbe:	bf00      	nop
    2cc0:	4b0e      	ldr	r3, [pc, #56]	; (2cfc <rtc_init+0x140>)
    2cc2:	685b      	ldr	r3, [r3, #4]
    2cc4:	f003 0320 	and.w	r3, r3, #32
    2cc8:	2b00      	cmp	r3, #0
    2cca:	d0f9      	beq.n	2cc0 <rtc_init+0x104>
    2ccc:	4a0a      	ldr	r2, [pc, #40]	; (2cf8 <rtc_init+0x13c>)
    2cce:	4b0a      	ldr	r3, [pc, #40]	; (2cf8 <rtc_init+0x13c>)
    2cd0:	681b      	ldr	r3, [r3, #0]
    2cd2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2cd6:	6013      	str	r3, [r2, #0]
    2cd8:	210f      	movs	r1, #15
    2cda:	2003      	movs	r0, #3
    2cdc:	f7ff fd4a 	bl	2774 <set_int_priority>
    2ce0:	2003      	movs	r0, #3
    2ce2:	f7ff fc8d 	bl	2600 <enable_interrupt>
    2ce6:	bf00      	nop
    2ce8:	3708      	adds	r7, #8
    2cea:	46bd      	mov	sp, r7
    2cec:	bd80      	pop	{r7, pc}
    2cee:	bf00      	nop
    2cf0:	40006c00 	.word	0x40006c00
    2cf4:	40021000 	.word	0x40021000
    2cf8:	40007000 	.word	0x40007000
    2cfc:	40002800 	.word	0x40002800
    2d00:	10624dd3 	.word	0x10624dd3

00002d04 <reset_backup_domain>:
    2d04:	b480      	push	{r7}
    2d06:	af00      	add	r7, sp, #0
    2d08:	4a0a      	ldr	r2, [pc, #40]	; (2d34 <reset_backup_domain+0x30>)
    2d0a:	4b0a      	ldr	r3, [pc, #40]	; (2d34 <reset_backup_domain+0x30>)
    2d0c:	69db      	ldr	r3, [r3, #28]
    2d0e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2d12:	61d3      	str	r3, [r2, #28]
    2d14:	4a07      	ldr	r2, [pc, #28]	; (2d34 <reset_backup_domain+0x30>)
    2d16:	4b07      	ldr	r3, [pc, #28]	; (2d34 <reset_backup_domain+0x30>)
    2d18:	6a1b      	ldr	r3, [r3, #32]
    2d1a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2d1e:	6213      	str	r3, [r2, #32]
    2d20:	4a04      	ldr	r2, [pc, #16]	; (2d34 <reset_backup_domain+0x30>)
    2d22:	4b04      	ldr	r3, [pc, #16]	; (2d34 <reset_backup_domain+0x30>)
    2d24:	6a1b      	ldr	r3, [r3, #32]
    2d26:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    2d2a:	6213      	str	r3, [r2, #32]
    2d2c:	bf00      	nop
    2d2e:	46bd      	mov	sp, r7
    2d30:	bc80      	pop	{r7}
    2d32:	4770      	bx	lr
    2d34:	40021000 	.word	0x40021000

00002d38 <rtc_clock_trim>:
    2d38:	b480      	push	{r7}
    2d3a:	b083      	sub	sp, #12
    2d3c:	af00      	add	r7, sp, #0
    2d3e:	6078      	str	r0, [r7, #4]
    2d40:	4a34      	ldr	r2, [pc, #208]	; (2e14 <rtc_clock_trim+0xdc>)
    2d42:	4b34      	ldr	r3, [pc, #208]	; (2e14 <rtc_clock_trim+0xdc>)
    2d44:	69db      	ldr	r3, [r3, #28]
    2d46:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2d4a:	61d3      	str	r3, [r2, #28]
    2d4c:	bf00      	nop
    2d4e:	4b32      	ldr	r3, [pc, #200]	; (2e18 <rtc_clock_trim+0xe0>)
    2d50:	685b      	ldr	r3, [r3, #4]
    2d52:	f003 0308 	and.w	r3, r3, #8
    2d56:	2b00      	cmp	r3, #0
    2d58:	d0f9      	beq.n	2d4e <rtc_clock_trim+0x16>
    2d5a:	4a30      	ldr	r2, [pc, #192]	; (2e1c <rtc_clock_trim+0xe4>)
    2d5c:	4b2f      	ldr	r3, [pc, #188]	; (2e1c <rtc_clock_trim+0xe4>)
    2d5e:	681b      	ldr	r3, [r3, #0]
    2d60:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2d64:	6013      	str	r3, [r2, #0]
    2d66:	4a2c      	ldr	r2, [pc, #176]	; (2e18 <rtc_clock_trim+0xe0>)
    2d68:	4b2b      	ldr	r3, [pc, #172]	; (2e18 <rtc_clock_trim+0xe0>)
    2d6a:	685b      	ldr	r3, [r3, #4]
    2d6c:	f043 0310 	orr.w	r3, r3, #16
    2d70:	6053      	str	r3, [r2, #4]
    2d72:	4a2b      	ldr	r2, [pc, #172]	; (2e20 <rtc_clock_trim+0xe8>)
    2d74:	4b2a      	ldr	r3, [pc, #168]	; (2e20 <rtc_clock_trim+0xe8>)
    2d76:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2d78:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2d7c:	62d3      	str	r3, [r2, #44]	; 0x2c
    2d7e:	687b      	ldr	r3, [r7, #4]
    2d80:	2b00      	cmp	r3, #0
    2d82:	d10a      	bne.n	2d9a <rtc_clock_trim+0x62>
    2d84:	4b26      	ldr	r3, [pc, #152]	; (2e20 <rtc_clock_trim+0xe8>)
    2d86:	2200      	movs	r2, #0
    2d88:	62da      	str	r2, [r3, #44]	; 0x2c
    2d8a:	4b23      	ldr	r3, [pc, #140]	; (2e18 <rtc_clock_trim+0xe0>)
    2d8c:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2d90:	60da      	str	r2, [r3, #12]
    2d92:	4b21      	ldr	r3, [pc, #132]	; (2e18 <rtc_clock_trim+0xe0>)
    2d94:	2200      	movs	r2, #0
    2d96:	609a      	str	r2, [r3, #8]
    2d98:	e023      	b.n	2de2 <rtc_clock_trim+0xaa>
    2d9a:	687b      	ldr	r3, [r7, #4]
    2d9c:	2b00      	cmp	r3, #0
    2d9e:	dd0a      	ble.n	2db6 <rtc_clock_trim+0x7e>
    2da0:	687b      	ldr	r3, [r7, #4]
    2da2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2da6:	607b      	str	r3, [r7, #4]
    2da8:	491d      	ldr	r1, [pc, #116]	; (2e20 <rtc_clock_trim+0xe8>)
    2daa:	4b1d      	ldr	r3, [pc, #116]	; (2e20 <rtc_clock_trim+0xe8>)
    2dac:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2dae:	687b      	ldr	r3, [r7, #4]
    2db0:	4313      	orrs	r3, r2
    2db2:	62cb      	str	r3, [r1, #44]	; 0x2c
    2db4:	e015      	b.n	2de2 <rtc_clock_trim+0xaa>
    2db6:	687b      	ldr	r3, [r7, #4]
    2db8:	425b      	negs	r3, r3
    2dba:	607b      	str	r3, [r7, #4]
    2dbc:	687b      	ldr	r3, [r7, #4]
    2dbe:	2b7f      	cmp	r3, #127	; 0x7f
    2dc0:	dd01      	ble.n	2dc6 <rtc_clock_trim+0x8e>
    2dc2:	237f      	movs	r3, #127	; 0x7f
    2dc4:	607b      	str	r3, [r7, #4]
    2dc6:	4b16      	ldr	r3, [pc, #88]	; (2e20 <rtc_clock_trim+0xe8>)
    2dc8:	2200      	movs	r2, #0
    2dca:	62da      	str	r2, [r3, #44]	; 0x2c
    2dcc:	4a12      	ldr	r2, [pc, #72]	; (2e18 <rtc_clock_trim+0xe0>)
    2dce:	687b      	ldr	r3, [r7, #4]
    2dd0:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2dd4:	33ff      	adds	r3, #255	; 0xff
    2dd6:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2dda:	60d3      	str	r3, [r2, #12]
    2ddc:	4b0e      	ldr	r3, [pc, #56]	; (2e18 <rtc_clock_trim+0xe0>)
    2dde:	2200      	movs	r2, #0
    2de0:	609a      	str	r2, [r3, #8]
    2de2:	4a0d      	ldr	r2, [pc, #52]	; (2e18 <rtc_clock_trim+0xe0>)
    2de4:	4b0c      	ldr	r3, [pc, #48]	; (2e18 <rtc_clock_trim+0xe0>)
    2de6:	685b      	ldr	r3, [r3, #4]
    2de8:	f023 0310 	bic.w	r3, r3, #16
    2dec:	6053      	str	r3, [r2, #4]
    2dee:	bf00      	nop
    2df0:	4b09      	ldr	r3, [pc, #36]	; (2e18 <rtc_clock_trim+0xe0>)
    2df2:	685b      	ldr	r3, [r3, #4]
    2df4:	f003 0320 	and.w	r3, r3, #32
    2df8:	2b00      	cmp	r3, #0
    2dfa:	d0f9      	beq.n	2df0 <rtc_clock_trim+0xb8>
    2dfc:	4a07      	ldr	r2, [pc, #28]	; (2e1c <rtc_clock_trim+0xe4>)
    2dfe:	4b07      	ldr	r3, [pc, #28]	; (2e1c <rtc_clock_trim+0xe4>)
    2e00:	681b      	ldr	r3, [r3, #0]
    2e02:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2e06:	6013      	str	r3, [r2, #0]
    2e08:	bf00      	nop
    2e0a:	370c      	adds	r7, #12
    2e0c:	46bd      	mov	sp, r7
    2e0e:	bc80      	pop	{r7}
    2e10:	4770      	bx	lr
    2e12:	bf00      	nop
    2e14:	40021000 	.word	0x40021000
    2e18:	40002800 	.word	0x40002800
    2e1c:	40007000 	.word	0x40007000
    2e20:	40006c00 	.word	0x40006c00

00002e24 <rtc_set_alarm>:
    2e24:	b480      	push	{r7}
    2e26:	b083      	sub	sp, #12
    2e28:	af00      	add	r7, sp, #0
    2e2a:	6078      	str	r0, [r7, #4]
    2e2c:	bf00      	nop
    2e2e:	370c      	adds	r7, #12
    2e30:	46bd      	mov	sp, r7
    2e32:	bc80      	pop	{r7}
    2e34:	4770      	bx	lr

00002e36 <str_to_date>:
    2e36:	b580      	push	{r7, lr}
    2e38:	b084      	sub	sp, #16
    2e3a:	af00      	add	r7, sp, #0
    2e3c:	6078      	str	r0, [r7, #4]
    2e3e:	6039      	str	r1, [r7, #0]
    2e40:	2300      	movs	r3, #0
    2e42:	60fb      	str	r3, [r7, #12]
    2e44:	2300      	movs	r3, #0
    2e46:	60bb      	str	r3, [r7, #8]
    2e48:	e00f      	b.n	2e6a <str_to_date+0x34>
    2e4a:	68ba      	ldr	r2, [r7, #8]
    2e4c:	4613      	mov	r3, r2
    2e4e:	009b      	lsls	r3, r3, #2
    2e50:	4413      	add	r3, r2
    2e52:	005b      	lsls	r3, r3, #1
    2e54:	4619      	mov	r1, r3
    2e56:	68fb      	ldr	r3, [r7, #12]
    2e58:	1c5a      	adds	r2, r3, #1
    2e5a:	60fa      	str	r2, [r7, #12]
    2e5c:	461a      	mov	r2, r3
    2e5e:	687b      	ldr	r3, [r7, #4]
    2e60:	4413      	add	r3, r2
    2e62:	781b      	ldrb	r3, [r3, #0]
    2e64:	440b      	add	r3, r1
    2e66:	3b30      	subs	r3, #48	; 0x30
    2e68:	60bb      	str	r3, [r7, #8]
    2e6a:	68fb      	ldr	r3, [r7, #12]
    2e6c:	687a      	ldr	r2, [r7, #4]
    2e6e:	4413      	add	r3, r2
    2e70:	781b      	ldrb	r3, [r3, #0]
    2e72:	4618      	mov	r0, r3
    2e74:	f7fe fb37 	bl	14e6 <digit>
    2e78:	4603      	mov	r3, r0
    2e7a:	2b00      	cmp	r3, #0
    2e7c:	d1e5      	bne.n	2e4a <str_to_date+0x14>
    2e7e:	68fb      	ldr	r3, [r7, #12]
    2e80:	2b03      	cmp	r3, #3
    2e82:	dd05      	ble.n	2e90 <str_to_date+0x5a>
    2e84:	68fb      	ldr	r3, [r7, #12]
    2e86:	687a      	ldr	r2, [r7, #4]
    2e88:	4413      	add	r3, r2
    2e8a:	781b      	ldrb	r3, [r3, #0]
    2e8c:	2b2f      	cmp	r3, #47	; 0x2f
    2e8e:	d001      	beq.n	2e94 <str_to_date+0x5e>
    2e90:	2300      	movs	r3, #0
    2e92:	e068      	b.n	2f66 <str_to_date+0x130>
    2e94:	68bb      	ldr	r3, [r7, #8]
    2e96:	b29a      	uxth	r2, r3
    2e98:	683b      	ldr	r3, [r7, #0]
    2e9a:	811a      	strh	r2, [r3, #8]
    2e9c:	68fb      	ldr	r3, [r7, #12]
    2e9e:	3301      	adds	r3, #1
    2ea0:	60fb      	str	r3, [r7, #12]
    2ea2:	2300      	movs	r3, #0
    2ea4:	60bb      	str	r3, [r7, #8]
    2ea6:	e00f      	b.n	2ec8 <str_to_date+0x92>
    2ea8:	68ba      	ldr	r2, [r7, #8]
    2eaa:	4613      	mov	r3, r2
    2eac:	009b      	lsls	r3, r3, #2
    2eae:	4413      	add	r3, r2
    2eb0:	005b      	lsls	r3, r3, #1
    2eb2:	4619      	mov	r1, r3
    2eb4:	68fb      	ldr	r3, [r7, #12]
    2eb6:	1c5a      	adds	r2, r3, #1
    2eb8:	60fa      	str	r2, [r7, #12]
    2eba:	461a      	mov	r2, r3
    2ebc:	687b      	ldr	r3, [r7, #4]
    2ebe:	4413      	add	r3, r2
    2ec0:	781b      	ldrb	r3, [r3, #0]
    2ec2:	440b      	add	r3, r1
    2ec4:	3b30      	subs	r3, #48	; 0x30
    2ec6:	60bb      	str	r3, [r7, #8]
    2ec8:	68fb      	ldr	r3, [r7, #12]
    2eca:	687a      	ldr	r2, [r7, #4]
    2ecc:	4413      	add	r3, r2
    2ece:	781b      	ldrb	r3, [r3, #0]
    2ed0:	4618      	mov	r0, r3
    2ed2:	f7fe fb08 	bl	14e6 <digit>
    2ed6:	4603      	mov	r3, r0
    2ed8:	2b00      	cmp	r3, #0
    2eda:	d1e5      	bne.n	2ea8 <str_to_date+0x72>
    2edc:	68fb      	ldr	r3, [r7, #12]
    2ede:	2b06      	cmp	r3, #6
    2ee0:	dd05      	ble.n	2eee <str_to_date+0xb8>
    2ee2:	68fb      	ldr	r3, [r7, #12]
    2ee4:	687a      	ldr	r2, [r7, #4]
    2ee6:	4413      	add	r3, r2
    2ee8:	781b      	ldrb	r3, [r3, #0]
    2eea:	2b2f      	cmp	r3, #47	; 0x2f
    2eec:	d001      	beq.n	2ef2 <str_to_date+0xbc>
    2eee:	2300      	movs	r3, #0
    2ef0:	e039      	b.n	2f66 <str_to_date+0x130>
    2ef2:	68bb      	ldr	r3, [r7, #8]
    2ef4:	b2db      	uxtb	r3, r3
    2ef6:	f003 030f 	and.w	r3, r3, #15
    2efa:	b2d9      	uxtb	r1, r3
    2efc:	683a      	ldr	r2, [r7, #0]
    2efe:	8853      	ldrh	r3, [r2, #2]
    2f00:	f361 1389 	bfi	r3, r1, #6, #4
    2f04:	8053      	strh	r3, [r2, #2]
    2f06:	2300      	movs	r3, #0
    2f08:	60bb      	str	r3, [r7, #8]
    2f0a:	68fb      	ldr	r3, [r7, #12]
    2f0c:	3301      	adds	r3, #1
    2f0e:	60fb      	str	r3, [r7, #12]
    2f10:	e00f      	b.n	2f32 <str_to_date+0xfc>
    2f12:	68ba      	ldr	r2, [r7, #8]
    2f14:	4613      	mov	r3, r2
    2f16:	009b      	lsls	r3, r3, #2
    2f18:	4413      	add	r3, r2
    2f1a:	005b      	lsls	r3, r3, #1
    2f1c:	4619      	mov	r1, r3
    2f1e:	68fb      	ldr	r3, [r7, #12]
    2f20:	1c5a      	adds	r2, r3, #1
    2f22:	60fa      	str	r2, [r7, #12]
    2f24:	461a      	mov	r2, r3
    2f26:	687b      	ldr	r3, [r7, #4]
    2f28:	4413      	add	r3, r2
    2f2a:	781b      	ldrb	r3, [r3, #0]
    2f2c:	440b      	add	r3, r1
    2f2e:	3b30      	subs	r3, #48	; 0x30
    2f30:	60bb      	str	r3, [r7, #8]
    2f32:	68fb      	ldr	r3, [r7, #12]
    2f34:	687a      	ldr	r2, [r7, #4]
    2f36:	4413      	add	r3, r2
    2f38:	781b      	ldrb	r3, [r3, #0]
    2f3a:	4618      	mov	r0, r3
    2f3c:	f7fe fad3 	bl	14e6 <digit>
    2f40:	4603      	mov	r3, r0
    2f42:	2b00      	cmp	r3, #0
    2f44:	d1e5      	bne.n	2f12 <str_to_date+0xdc>
    2f46:	68fb      	ldr	r3, [r7, #12]
    2f48:	2b09      	cmp	r3, #9
    2f4a:	dc01      	bgt.n	2f50 <str_to_date+0x11a>
    2f4c:	2300      	movs	r3, #0
    2f4e:	e00a      	b.n	2f66 <str_to_date+0x130>
    2f50:	68bb      	ldr	r3, [r7, #8]
    2f52:	b2db      	uxtb	r3, r3
    2f54:	f003 031f 	and.w	r3, r3, #31
    2f58:	b2d9      	uxtb	r1, r3
    2f5a:	683a      	ldr	r2, [r7, #0]
    2f5c:	7893      	ldrb	r3, [r2, #2]
    2f5e:	f361 0345 	bfi	r3, r1, #1, #5
    2f62:	7093      	strb	r3, [r2, #2]
    2f64:	2301      	movs	r3, #1
    2f66:	4618      	mov	r0, r3
    2f68:	3710      	adds	r7, #16
    2f6a:	46bd      	mov	sp, r7
    2f6c:	bd80      	pop	{r7, pc}

00002f6e <str_to_time>:
    2f6e:	b580      	push	{r7, lr}
    2f70:	b084      	sub	sp, #16
    2f72:	af00      	add	r7, sp, #0
    2f74:	6078      	str	r0, [r7, #4]
    2f76:	6039      	str	r1, [r7, #0]
    2f78:	2300      	movs	r3, #0
    2f7a:	60fb      	str	r3, [r7, #12]
    2f7c:	2300      	movs	r3, #0
    2f7e:	72fb      	strb	r3, [r7, #11]
    2f80:	e010      	b.n	2fa4 <str_to_time+0x36>
    2f82:	7afb      	ldrb	r3, [r7, #11]
    2f84:	461a      	mov	r2, r3
    2f86:	0092      	lsls	r2, r2, #2
    2f88:	4413      	add	r3, r2
    2f8a:	005b      	lsls	r3, r3, #1
    2f8c:	b2da      	uxtb	r2, r3
    2f8e:	68fb      	ldr	r3, [r7, #12]
    2f90:	1c59      	adds	r1, r3, #1
    2f92:	60f9      	str	r1, [r7, #12]
    2f94:	4619      	mov	r1, r3
    2f96:	687b      	ldr	r3, [r7, #4]
    2f98:	440b      	add	r3, r1
    2f9a:	781b      	ldrb	r3, [r3, #0]
    2f9c:	4413      	add	r3, r2
    2f9e:	b2db      	uxtb	r3, r3
    2fa0:	3b30      	subs	r3, #48	; 0x30
    2fa2:	72fb      	strb	r3, [r7, #11]
    2fa4:	68fb      	ldr	r3, [r7, #12]
    2fa6:	687a      	ldr	r2, [r7, #4]
    2fa8:	4413      	add	r3, r2
    2faa:	781b      	ldrb	r3, [r3, #0]
    2fac:	4618      	mov	r0, r3
    2fae:	f7fe fa9a 	bl	14e6 <digit>
    2fb2:	4603      	mov	r3, r0
    2fb4:	2b00      	cmp	r3, #0
    2fb6:	d1e4      	bne.n	2f82 <str_to_time+0x14>
    2fb8:	7afb      	ldrb	r3, [r7, #11]
    2fba:	2b17      	cmp	r3, #23
    2fbc:	d805      	bhi.n	2fca <str_to_time+0x5c>
    2fbe:	68fb      	ldr	r3, [r7, #12]
    2fc0:	687a      	ldr	r2, [r7, #4]
    2fc2:	4413      	add	r3, r2
    2fc4:	781b      	ldrb	r3, [r3, #0]
    2fc6:	2b3a      	cmp	r3, #58	; 0x3a
    2fc8:	d001      	beq.n	2fce <str_to_time+0x60>
    2fca:	2300      	movs	r3, #0
    2fcc:	e06d      	b.n	30aa <str_to_time+0x13c>
    2fce:	7afb      	ldrb	r3, [r7, #11]
    2fd0:	f003 031f 	and.w	r3, r3, #31
    2fd4:	b2d9      	uxtb	r1, r3
    2fd6:	683a      	ldr	r2, [r7, #0]
    2fd8:	6813      	ldr	r3, [r2, #0]
    2fda:	f361 3310 	bfi	r3, r1, #12, #5
    2fde:	6013      	str	r3, [r2, #0]
    2fe0:	68fb      	ldr	r3, [r7, #12]
    2fe2:	3301      	adds	r3, #1
    2fe4:	60fb      	str	r3, [r7, #12]
    2fe6:	2300      	movs	r3, #0
    2fe8:	72fb      	strb	r3, [r7, #11]
    2fea:	e010      	b.n	300e <str_to_time+0xa0>
    2fec:	7afb      	ldrb	r3, [r7, #11]
    2fee:	461a      	mov	r2, r3
    2ff0:	0092      	lsls	r2, r2, #2
    2ff2:	4413      	add	r3, r2
    2ff4:	005b      	lsls	r3, r3, #1
    2ff6:	b2da      	uxtb	r2, r3
    2ff8:	68fb      	ldr	r3, [r7, #12]
    2ffa:	1c59      	adds	r1, r3, #1
    2ffc:	60f9      	str	r1, [r7, #12]
    2ffe:	4619      	mov	r1, r3
    3000:	687b      	ldr	r3, [r7, #4]
    3002:	440b      	add	r3, r1
    3004:	781b      	ldrb	r3, [r3, #0]
    3006:	4413      	add	r3, r2
    3008:	b2db      	uxtb	r3, r3
    300a:	3b30      	subs	r3, #48	; 0x30
    300c:	72fb      	strb	r3, [r7, #11]
    300e:	68fb      	ldr	r3, [r7, #12]
    3010:	687a      	ldr	r2, [r7, #4]
    3012:	4413      	add	r3, r2
    3014:	781b      	ldrb	r3, [r3, #0]
    3016:	4618      	mov	r0, r3
    3018:	f7fe fa65 	bl	14e6 <digit>
    301c:	4603      	mov	r3, r0
    301e:	2b00      	cmp	r3, #0
    3020:	d1e4      	bne.n	2fec <str_to_time+0x7e>
    3022:	7afb      	ldrb	r3, [r7, #11]
    3024:	2b3b      	cmp	r3, #59	; 0x3b
    3026:	d805      	bhi.n	3034 <str_to_time+0xc6>
    3028:	68fb      	ldr	r3, [r7, #12]
    302a:	687a      	ldr	r2, [r7, #4]
    302c:	4413      	add	r3, r2
    302e:	781b      	ldrb	r3, [r3, #0]
    3030:	2b3a      	cmp	r3, #58	; 0x3a
    3032:	d001      	beq.n	3038 <str_to_time+0xca>
    3034:	2300      	movs	r3, #0
    3036:	e038      	b.n	30aa <str_to_time+0x13c>
    3038:	7afb      	ldrb	r3, [r7, #11]
    303a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    303e:	b2d9      	uxtb	r1, r3
    3040:	683a      	ldr	r2, [r7, #0]
    3042:	8813      	ldrh	r3, [r2, #0]
    3044:	f361 138b 	bfi	r3, r1, #6, #6
    3048:	8013      	strh	r3, [r2, #0]
    304a:	2300      	movs	r3, #0
    304c:	72fb      	strb	r3, [r7, #11]
    304e:	68fb      	ldr	r3, [r7, #12]
    3050:	3301      	adds	r3, #1
    3052:	60fb      	str	r3, [r7, #12]
    3054:	e010      	b.n	3078 <str_to_time+0x10a>
    3056:	7afb      	ldrb	r3, [r7, #11]
    3058:	461a      	mov	r2, r3
    305a:	0092      	lsls	r2, r2, #2
    305c:	4413      	add	r3, r2
    305e:	005b      	lsls	r3, r3, #1
    3060:	b2da      	uxtb	r2, r3
    3062:	68fb      	ldr	r3, [r7, #12]
    3064:	1c59      	adds	r1, r3, #1
    3066:	60f9      	str	r1, [r7, #12]
    3068:	4619      	mov	r1, r3
    306a:	687b      	ldr	r3, [r7, #4]
    306c:	440b      	add	r3, r1
    306e:	781b      	ldrb	r3, [r3, #0]
    3070:	4413      	add	r3, r2
    3072:	b2db      	uxtb	r3, r3
    3074:	3b30      	subs	r3, #48	; 0x30
    3076:	72fb      	strb	r3, [r7, #11]
    3078:	68fb      	ldr	r3, [r7, #12]
    307a:	687a      	ldr	r2, [r7, #4]
    307c:	4413      	add	r3, r2
    307e:	781b      	ldrb	r3, [r3, #0]
    3080:	4618      	mov	r0, r3
    3082:	f7fe fa30 	bl	14e6 <digit>
    3086:	4603      	mov	r3, r0
    3088:	2b00      	cmp	r3, #0
    308a:	d1e4      	bne.n	3056 <str_to_time+0xe8>
    308c:	7afb      	ldrb	r3, [r7, #11]
    308e:	2b3b      	cmp	r3, #59	; 0x3b
    3090:	d901      	bls.n	3096 <str_to_time+0x128>
    3092:	2300      	movs	r3, #0
    3094:	e009      	b.n	30aa <str_to_time+0x13c>
    3096:	7afb      	ldrb	r3, [r7, #11]
    3098:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    309c:	b2d9      	uxtb	r1, r3
    309e:	683a      	ldr	r2, [r7, #0]
    30a0:	7813      	ldrb	r3, [r2, #0]
    30a2:	f361 0305 	bfi	r3, r1, #0, #6
    30a6:	7013      	strb	r3, [r2, #0]
    30a8:	2301      	movs	r3, #1
    30aa:	4618      	mov	r0, r3
    30ac:	3710      	adds	r7, #16
    30ae:	46bd      	mov	sp, r7
    30b0:	bd80      	pop	{r7, pc}

000030b2 <date_str>:
    30b2:	b480      	push	{r7}
    30b4:	b085      	sub	sp, #20
    30b6:	af00      	add	r7, sp, #0
    30b8:	6078      	str	r0, [r7, #4]
    30ba:	6039      	str	r1, [r7, #0]
    30bc:	2300      	movs	r3, #0
    30be:	60fb      	str	r3, [r7, #12]
    30c0:	687b      	ldr	r3, [r7, #4]
    30c2:	891b      	ldrh	r3, [r3, #8]
    30c4:	60bb      	str	r3, [r7, #8]
    30c6:	68fb      	ldr	r3, [r7, #12]
    30c8:	1c5a      	adds	r2, r3, #1
    30ca:	60fa      	str	r2, [r7, #12]
    30cc:	461a      	mov	r2, r3
    30ce:	683b      	ldr	r3, [r7, #0]
    30d0:	4413      	add	r3, r2
    30d2:	68ba      	ldr	r2, [r7, #8]
    30d4:	495d      	ldr	r1, [pc, #372]	; (324c <date_str+0x19a>)
    30d6:	fba1 1202 	umull	r1, r2, r1, r2
    30da:	0992      	lsrs	r2, r2, #6
    30dc:	b2d2      	uxtb	r2, r2
    30de:	3230      	adds	r2, #48	; 0x30
    30e0:	b2d2      	uxtb	r2, r2
    30e2:	701a      	strb	r2, [r3, #0]
    30e4:	68bb      	ldr	r3, [r7, #8]
    30e6:	4a59      	ldr	r2, [pc, #356]	; (324c <date_str+0x19a>)
    30e8:	fba2 1203 	umull	r1, r2, r2, r3
    30ec:	0992      	lsrs	r2, r2, #6
    30ee:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    30f2:	fb01 f202 	mul.w	r2, r1, r2
    30f6:	1a9b      	subs	r3, r3, r2
    30f8:	60bb      	str	r3, [r7, #8]
    30fa:	68fb      	ldr	r3, [r7, #12]
    30fc:	1c5a      	adds	r2, r3, #1
    30fe:	60fa      	str	r2, [r7, #12]
    3100:	461a      	mov	r2, r3
    3102:	683b      	ldr	r3, [r7, #0]
    3104:	4413      	add	r3, r2
    3106:	68ba      	ldr	r2, [r7, #8]
    3108:	4951      	ldr	r1, [pc, #324]	; (3250 <date_str+0x19e>)
    310a:	fba1 1202 	umull	r1, r2, r1, r2
    310e:	0952      	lsrs	r2, r2, #5
    3110:	b2d2      	uxtb	r2, r2
    3112:	3230      	adds	r2, #48	; 0x30
    3114:	b2d2      	uxtb	r2, r2
    3116:	701a      	strb	r2, [r3, #0]
    3118:	68bb      	ldr	r3, [r7, #8]
    311a:	4a4d      	ldr	r2, [pc, #308]	; (3250 <date_str+0x19e>)
    311c:	fba2 1203 	umull	r1, r2, r2, r3
    3120:	0952      	lsrs	r2, r2, #5
    3122:	2164      	movs	r1, #100	; 0x64
    3124:	fb01 f202 	mul.w	r2, r1, r2
    3128:	1a9b      	subs	r3, r3, r2
    312a:	60bb      	str	r3, [r7, #8]
    312c:	68fb      	ldr	r3, [r7, #12]
    312e:	1c5a      	adds	r2, r3, #1
    3130:	60fa      	str	r2, [r7, #12]
    3132:	461a      	mov	r2, r3
    3134:	683b      	ldr	r3, [r7, #0]
    3136:	4413      	add	r3, r2
    3138:	68ba      	ldr	r2, [r7, #8]
    313a:	4946      	ldr	r1, [pc, #280]	; (3254 <date_str+0x1a2>)
    313c:	fba1 1202 	umull	r1, r2, r1, r2
    3140:	08d2      	lsrs	r2, r2, #3
    3142:	b2d2      	uxtb	r2, r2
    3144:	3230      	adds	r2, #48	; 0x30
    3146:	b2d2      	uxtb	r2, r2
    3148:	701a      	strb	r2, [r3, #0]
    314a:	68fb      	ldr	r3, [r7, #12]
    314c:	1c5a      	adds	r2, r3, #1
    314e:	60fa      	str	r2, [r7, #12]
    3150:	461a      	mov	r2, r3
    3152:	683b      	ldr	r3, [r7, #0]
    3154:	1898      	adds	r0, r3, r2
    3156:	68b9      	ldr	r1, [r7, #8]
    3158:	4b3e      	ldr	r3, [pc, #248]	; (3254 <date_str+0x1a2>)
    315a:	fba3 2301 	umull	r2, r3, r3, r1
    315e:	08da      	lsrs	r2, r3, #3
    3160:	4613      	mov	r3, r2
    3162:	009b      	lsls	r3, r3, #2
    3164:	4413      	add	r3, r2
    3166:	005b      	lsls	r3, r3, #1
    3168:	1aca      	subs	r2, r1, r3
    316a:	b2d3      	uxtb	r3, r2
    316c:	3330      	adds	r3, #48	; 0x30
    316e:	b2db      	uxtb	r3, r3
    3170:	7003      	strb	r3, [r0, #0]
    3172:	68fb      	ldr	r3, [r7, #12]
    3174:	1c5a      	adds	r2, r3, #1
    3176:	60fa      	str	r2, [r7, #12]
    3178:	461a      	mov	r2, r3
    317a:	683b      	ldr	r3, [r7, #0]
    317c:	4413      	add	r3, r2
    317e:	222f      	movs	r2, #47	; 0x2f
    3180:	701a      	strb	r2, [r3, #0]
    3182:	687b      	ldr	r3, [r7, #4]
    3184:	885b      	ldrh	r3, [r3, #2]
    3186:	f3c3 1383 	ubfx	r3, r3, #6, #4
    318a:	b2db      	uxtb	r3, r3
    318c:	60bb      	str	r3, [r7, #8]
    318e:	68fb      	ldr	r3, [r7, #12]
    3190:	1c5a      	adds	r2, r3, #1
    3192:	60fa      	str	r2, [r7, #12]
    3194:	461a      	mov	r2, r3
    3196:	683b      	ldr	r3, [r7, #0]
    3198:	4413      	add	r3, r2
    319a:	68ba      	ldr	r2, [r7, #8]
    319c:	492d      	ldr	r1, [pc, #180]	; (3254 <date_str+0x1a2>)
    319e:	fba1 1202 	umull	r1, r2, r1, r2
    31a2:	08d2      	lsrs	r2, r2, #3
    31a4:	b2d2      	uxtb	r2, r2
    31a6:	3230      	adds	r2, #48	; 0x30
    31a8:	b2d2      	uxtb	r2, r2
    31aa:	701a      	strb	r2, [r3, #0]
    31ac:	68fb      	ldr	r3, [r7, #12]
    31ae:	1c5a      	adds	r2, r3, #1
    31b0:	60fa      	str	r2, [r7, #12]
    31b2:	461a      	mov	r2, r3
    31b4:	683b      	ldr	r3, [r7, #0]
    31b6:	1898      	adds	r0, r3, r2
    31b8:	68b9      	ldr	r1, [r7, #8]
    31ba:	4b26      	ldr	r3, [pc, #152]	; (3254 <date_str+0x1a2>)
    31bc:	fba3 2301 	umull	r2, r3, r3, r1
    31c0:	08da      	lsrs	r2, r3, #3
    31c2:	4613      	mov	r3, r2
    31c4:	009b      	lsls	r3, r3, #2
    31c6:	4413      	add	r3, r2
    31c8:	005b      	lsls	r3, r3, #1
    31ca:	1aca      	subs	r2, r1, r3
    31cc:	b2d3      	uxtb	r3, r2
    31ce:	3330      	adds	r3, #48	; 0x30
    31d0:	b2db      	uxtb	r3, r3
    31d2:	7003      	strb	r3, [r0, #0]
    31d4:	68fb      	ldr	r3, [r7, #12]
    31d6:	1c5a      	adds	r2, r3, #1
    31d8:	60fa      	str	r2, [r7, #12]
    31da:	461a      	mov	r2, r3
    31dc:	683b      	ldr	r3, [r7, #0]
    31de:	4413      	add	r3, r2
    31e0:	222f      	movs	r2, #47	; 0x2f
    31e2:	701a      	strb	r2, [r3, #0]
    31e4:	687b      	ldr	r3, [r7, #4]
    31e6:	789b      	ldrb	r3, [r3, #2]
    31e8:	f3c3 0344 	ubfx	r3, r3, #1, #5
    31ec:	b2db      	uxtb	r3, r3
    31ee:	60bb      	str	r3, [r7, #8]
    31f0:	68fb      	ldr	r3, [r7, #12]
    31f2:	1c5a      	adds	r2, r3, #1
    31f4:	60fa      	str	r2, [r7, #12]
    31f6:	461a      	mov	r2, r3
    31f8:	683b      	ldr	r3, [r7, #0]
    31fa:	4413      	add	r3, r2
    31fc:	68ba      	ldr	r2, [r7, #8]
    31fe:	4915      	ldr	r1, [pc, #84]	; (3254 <date_str+0x1a2>)
    3200:	fba1 1202 	umull	r1, r2, r1, r2
    3204:	08d2      	lsrs	r2, r2, #3
    3206:	b2d2      	uxtb	r2, r2
    3208:	3230      	adds	r2, #48	; 0x30
    320a:	b2d2      	uxtb	r2, r2
    320c:	701a      	strb	r2, [r3, #0]
    320e:	68fb      	ldr	r3, [r7, #12]
    3210:	1c5a      	adds	r2, r3, #1
    3212:	60fa      	str	r2, [r7, #12]
    3214:	461a      	mov	r2, r3
    3216:	683b      	ldr	r3, [r7, #0]
    3218:	1898      	adds	r0, r3, r2
    321a:	68b9      	ldr	r1, [r7, #8]
    321c:	4b0d      	ldr	r3, [pc, #52]	; (3254 <date_str+0x1a2>)
    321e:	fba3 2301 	umull	r2, r3, r3, r1
    3222:	08da      	lsrs	r2, r3, #3
    3224:	4613      	mov	r3, r2
    3226:	009b      	lsls	r3, r3, #2
    3228:	4413      	add	r3, r2
    322a:	005b      	lsls	r3, r3, #1
    322c:	1aca      	subs	r2, r1, r3
    322e:	b2d3      	uxtb	r3, r2
    3230:	3330      	adds	r3, #48	; 0x30
    3232:	b2db      	uxtb	r3, r3
    3234:	7003      	strb	r3, [r0, #0]
    3236:	68fb      	ldr	r3, [r7, #12]
    3238:	683a      	ldr	r2, [r7, #0]
    323a:	4413      	add	r3, r2
    323c:	2200      	movs	r2, #0
    323e:	701a      	strb	r2, [r3, #0]
    3240:	bf00      	nop
    3242:	3714      	adds	r7, #20
    3244:	46bd      	mov	sp, r7
    3246:	bc80      	pop	{r7}
    3248:	4770      	bx	lr
    324a:	bf00      	nop
    324c:	10624dd3 	.word	0x10624dd3
    3250:	51eb851f 	.word	0x51eb851f
    3254:	cccccccd 	.word	0xcccccccd

00003258 <time_str>:
    3258:	b480      	push	{r7}
    325a:	b085      	sub	sp, #20
    325c:	af00      	add	r7, sp, #0
    325e:	6078      	str	r0, [r7, #4]
    3260:	6039      	str	r1, [r7, #0]
    3262:	2300      	movs	r3, #0
    3264:	60fb      	str	r3, [r7, #12]
    3266:	687b      	ldr	r3, [r7, #4]
    3268:	681b      	ldr	r3, [r3, #0]
    326a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    326e:	b2db      	uxtb	r3, r3
    3270:	60bb      	str	r3, [r7, #8]
    3272:	68fb      	ldr	r3, [r7, #12]
    3274:	1c5a      	adds	r2, r3, #1
    3276:	60fa      	str	r2, [r7, #12]
    3278:	461a      	mov	r2, r3
    327a:	683b      	ldr	r3, [r7, #0]
    327c:	4413      	add	r3, r2
    327e:	68ba      	ldr	r2, [r7, #8]
    3280:	4943      	ldr	r1, [pc, #268]	; (3390 <time_str+0x138>)
    3282:	fba1 1202 	umull	r1, r2, r1, r2
    3286:	08d2      	lsrs	r2, r2, #3
    3288:	b2d2      	uxtb	r2, r2
    328a:	3230      	adds	r2, #48	; 0x30
    328c:	b2d2      	uxtb	r2, r2
    328e:	701a      	strb	r2, [r3, #0]
    3290:	68fb      	ldr	r3, [r7, #12]
    3292:	1c5a      	adds	r2, r3, #1
    3294:	60fa      	str	r2, [r7, #12]
    3296:	461a      	mov	r2, r3
    3298:	683b      	ldr	r3, [r7, #0]
    329a:	1898      	adds	r0, r3, r2
    329c:	68b9      	ldr	r1, [r7, #8]
    329e:	4b3c      	ldr	r3, [pc, #240]	; (3390 <time_str+0x138>)
    32a0:	fba3 2301 	umull	r2, r3, r3, r1
    32a4:	08da      	lsrs	r2, r3, #3
    32a6:	4613      	mov	r3, r2
    32a8:	009b      	lsls	r3, r3, #2
    32aa:	4413      	add	r3, r2
    32ac:	005b      	lsls	r3, r3, #1
    32ae:	1aca      	subs	r2, r1, r3
    32b0:	b2d3      	uxtb	r3, r2
    32b2:	3330      	adds	r3, #48	; 0x30
    32b4:	b2db      	uxtb	r3, r3
    32b6:	7003      	strb	r3, [r0, #0]
    32b8:	68fb      	ldr	r3, [r7, #12]
    32ba:	1c5a      	adds	r2, r3, #1
    32bc:	60fa      	str	r2, [r7, #12]
    32be:	461a      	mov	r2, r3
    32c0:	683b      	ldr	r3, [r7, #0]
    32c2:	4413      	add	r3, r2
    32c4:	223a      	movs	r2, #58	; 0x3a
    32c6:	701a      	strb	r2, [r3, #0]
    32c8:	687b      	ldr	r3, [r7, #4]
    32ca:	881b      	ldrh	r3, [r3, #0]
    32cc:	f3c3 1385 	ubfx	r3, r3, #6, #6
    32d0:	b2db      	uxtb	r3, r3
    32d2:	60bb      	str	r3, [r7, #8]
    32d4:	68fb      	ldr	r3, [r7, #12]
    32d6:	1c5a      	adds	r2, r3, #1
    32d8:	60fa      	str	r2, [r7, #12]
    32da:	461a      	mov	r2, r3
    32dc:	683b      	ldr	r3, [r7, #0]
    32de:	4413      	add	r3, r2
    32e0:	68ba      	ldr	r2, [r7, #8]
    32e2:	492b      	ldr	r1, [pc, #172]	; (3390 <time_str+0x138>)
    32e4:	fba1 1202 	umull	r1, r2, r1, r2
    32e8:	08d2      	lsrs	r2, r2, #3
    32ea:	b2d2      	uxtb	r2, r2
    32ec:	3230      	adds	r2, #48	; 0x30
    32ee:	b2d2      	uxtb	r2, r2
    32f0:	701a      	strb	r2, [r3, #0]
    32f2:	68fb      	ldr	r3, [r7, #12]
    32f4:	1c5a      	adds	r2, r3, #1
    32f6:	60fa      	str	r2, [r7, #12]
    32f8:	461a      	mov	r2, r3
    32fa:	683b      	ldr	r3, [r7, #0]
    32fc:	1898      	adds	r0, r3, r2
    32fe:	68b9      	ldr	r1, [r7, #8]
    3300:	4b23      	ldr	r3, [pc, #140]	; (3390 <time_str+0x138>)
    3302:	fba3 2301 	umull	r2, r3, r3, r1
    3306:	08da      	lsrs	r2, r3, #3
    3308:	4613      	mov	r3, r2
    330a:	009b      	lsls	r3, r3, #2
    330c:	4413      	add	r3, r2
    330e:	005b      	lsls	r3, r3, #1
    3310:	1aca      	subs	r2, r1, r3
    3312:	b2d3      	uxtb	r3, r2
    3314:	3330      	adds	r3, #48	; 0x30
    3316:	b2db      	uxtb	r3, r3
    3318:	7003      	strb	r3, [r0, #0]
    331a:	68fb      	ldr	r3, [r7, #12]
    331c:	1c5a      	adds	r2, r3, #1
    331e:	60fa      	str	r2, [r7, #12]
    3320:	461a      	mov	r2, r3
    3322:	683b      	ldr	r3, [r7, #0]
    3324:	4413      	add	r3, r2
    3326:	223a      	movs	r2, #58	; 0x3a
    3328:	701a      	strb	r2, [r3, #0]
    332a:	687b      	ldr	r3, [r7, #4]
    332c:	781b      	ldrb	r3, [r3, #0]
    332e:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3332:	b2db      	uxtb	r3, r3
    3334:	60bb      	str	r3, [r7, #8]
    3336:	68fb      	ldr	r3, [r7, #12]
    3338:	1c5a      	adds	r2, r3, #1
    333a:	60fa      	str	r2, [r7, #12]
    333c:	461a      	mov	r2, r3
    333e:	683b      	ldr	r3, [r7, #0]
    3340:	4413      	add	r3, r2
    3342:	68ba      	ldr	r2, [r7, #8]
    3344:	4912      	ldr	r1, [pc, #72]	; (3390 <time_str+0x138>)
    3346:	fba1 1202 	umull	r1, r2, r1, r2
    334a:	08d2      	lsrs	r2, r2, #3
    334c:	b2d2      	uxtb	r2, r2
    334e:	3230      	adds	r2, #48	; 0x30
    3350:	b2d2      	uxtb	r2, r2
    3352:	701a      	strb	r2, [r3, #0]
    3354:	68fb      	ldr	r3, [r7, #12]
    3356:	1c5a      	adds	r2, r3, #1
    3358:	60fa      	str	r2, [r7, #12]
    335a:	461a      	mov	r2, r3
    335c:	683b      	ldr	r3, [r7, #0]
    335e:	1898      	adds	r0, r3, r2
    3360:	68b9      	ldr	r1, [r7, #8]
    3362:	4b0b      	ldr	r3, [pc, #44]	; (3390 <time_str+0x138>)
    3364:	fba3 2301 	umull	r2, r3, r3, r1
    3368:	08da      	lsrs	r2, r3, #3
    336a:	4613      	mov	r3, r2
    336c:	009b      	lsls	r3, r3, #2
    336e:	4413      	add	r3, r2
    3370:	005b      	lsls	r3, r3, #1
    3372:	1aca      	subs	r2, r1, r3
    3374:	b2d3      	uxtb	r3, r2
    3376:	3330      	adds	r3, #48	; 0x30
    3378:	b2db      	uxtb	r3, r3
    337a:	7003      	strb	r3, [r0, #0]
    337c:	68fb      	ldr	r3, [r7, #12]
    337e:	683a      	ldr	r2, [r7, #0]
    3380:	4413      	add	r3, r2
    3382:	2200      	movs	r2, #0
    3384:	701a      	strb	r2, [r3, #0]
    3386:	bf00      	nop
    3388:	3714      	adds	r7, #20
    338a:	46bd      	mov	sp, r7
    338c:	bc80      	pop	{r7}
    338e:	4770      	bx	lr
    3390:	cccccccd 	.word	0xcccccccd

00003394 <get_fattime>:
    3394:	b580      	push	{r7, lr}
    3396:	b084      	sub	sp, #16
    3398:	af00      	add	r7, sp, #0
    339a:	463b      	mov	r3, r7
    339c:	4618      	mov	r0, r3
    339e:	f7ff fa69 	bl	2874 <get_date_time>
    33a2:	783b      	ldrb	r3, [r7, #0]
    33a4:	f3c3 0305 	ubfx	r3, r3, #0, #6
    33a8:	b2db      	uxtb	r3, r3
    33aa:	0fda      	lsrs	r2, r3, #31
    33ac:	4413      	add	r3, r2
    33ae:	105b      	asrs	r3, r3, #1
    33b0:	b2db      	uxtb	r3, r3
    33b2:	f003 031f 	and.w	r3, r3, #31
    33b6:	b2da      	uxtb	r2, r3
    33b8:	7b3b      	ldrb	r3, [r7, #12]
    33ba:	f362 0304 	bfi	r3, r2, #0, #5
    33be:	733b      	strb	r3, [r7, #12]
    33c0:	883b      	ldrh	r3, [r7, #0]
    33c2:	f3c3 1385 	ubfx	r3, r3, #6, #6
    33c6:	b2da      	uxtb	r2, r3
    33c8:	89bb      	ldrh	r3, [r7, #12]
    33ca:	f362 134a 	bfi	r3, r2, #5, #6
    33ce:	81bb      	strh	r3, [r7, #12]
    33d0:	683b      	ldr	r3, [r7, #0]
    33d2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    33d6:	b2da      	uxtb	r2, r3
    33d8:	7b7b      	ldrb	r3, [r7, #13]
    33da:	f362 03c7 	bfi	r3, r2, #3, #5
    33de:	737b      	strb	r3, [r7, #13]
    33e0:	78bb      	ldrb	r3, [r7, #2]
    33e2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    33e6:	b2da      	uxtb	r2, r3
    33e8:	7bbb      	ldrb	r3, [r7, #14]
    33ea:	f362 0304 	bfi	r3, r2, #0, #5
    33ee:	73bb      	strb	r3, [r7, #14]
    33f0:	887b      	ldrh	r3, [r7, #2]
    33f2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    33f6:	b2da      	uxtb	r2, r3
    33f8:	89fb      	ldrh	r3, [r7, #14]
    33fa:	f362 1348 	bfi	r3, r2, #5, #4
    33fe:	81fb      	strh	r3, [r7, #14]
    3400:	893b      	ldrh	r3, [r7, #8]
    3402:	b2db      	uxtb	r3, r3
    3404:	3344      	adds	r3, #68	; 0x44
    3406:	b2db      	uxtb	r3, r3
    3408:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    340c:	b2da      	uxtb	r2, r3
    340e:	7bfb      	ldrb	r3, [r7, #15]
    3410:	f362 0347 	bfi	r3, r2, #1, #7
    3414:	73fb      	strb	r3, [r7, #15]
    3416:	68fb      	ldr	r3, [r7, #12]
    3418:	4618      	mov	r0, r3
    341a:	3710      	adds	r7, #16
    341c:	46bd      	mov	sp, r7
    341e:	bd80      	pop	{r7, pc}

00003420 <RTC_handler>:
    3420:	b480      	push	{r7}
    3422:	b083      	sub	sp, #12
    3424:	af00      	add	r7, sp, #0
    3426:	4b0a      	ldr	r3, [pc, #40]	; (3450 <RTC_handler+0x30>)
    3428:	685b      	ldr	r3, [r3, #4]
    342a:	f003 0301 	and.w	r3, r3, #1
    342e:	2b00      	cmp	r3, #0
    3430:	d001      	beq.n	3436 <RTC_handler+0x16>
    3432:	4b07      	ldr	r3, [pc, #28]	; (3450 <RTC_handler+0x30>)
    3434:	685b      	ldr	r3, [r3, #4]
    3436:	4b06      	ldr	r3, [pc, #24]	; (3450 <RTC_handler+0x30>)
    3438:	685b      	ldr	r3, [r3, #4]
    343a:	f003 0302 	and.w	r3, r3, #2
    343e:	2b00      	cmp	r3, #0
    3440:	d001      	beq.n	3446 <RTC_handler+0x26>
    3442:	4b03      	ldr	r3, [pc, #12]	; (3450 <RTC_handler+0x30>)
    3444:	685b      	ldr	r3, [r3, #4]
    3446:	bf00      	nop
    3448:	370c      	adds	r7, #12
    344a:	46bd      	mov	sp, r7
    344c:	bc80      	pop	{r7}
    344e:	4770      	bx	lr
    3450:	40002800 	.word	0x40002800

00003454 <spi_baudrate>:
    3454:	b480      	push	{r7}
    3456:	b083      	sub	sp, #12
    3458:	af00      	add	r7, sp, #0
    345a:	6078      	str	r0, [r7, #4]
    345c:	6039      	str	r1, [r7, #0]
    345e:	687b      	ldr	r3, [r7, #4]
    3460:	681b      	ldr	r3, [r3, #0]
    3462:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    3466:	687b      	ldr	r3, [r7, #4]
    3468:	601a      	str	r2, [r3, #0]
    346a:	687b      	ldr	r3, [r7, #4]
    346c:	681a      	ldr	r2, [r3, #0]
    346e:	683b      	ldr	r3, [r7, #0]
    3470:	00db      	lsls	r3, r3, #3
    3472:	431a      	orrs	r2, r3
    3474:	687b      	ldr	r3, [r7, #4]
    3476:	601a      	str	r2, [r3, #0]
    3478:	bf00      	nop
    347a:	370c      	adds	r7, #12
    347c:	46bd      	mov	sp, r7
    347e:	bc80      	pop	{r7}
    3480:	4770      	bx	lr

00003482 <spi_config_port>:
    3482:	b580      	push	{r7, lr}
    3484:	b082      	sub	sp, #8
    3486:	af00      	add	r7, sp, #0
    3488:	6078      	str	r0, [r7, #4]
    348a:	6039      	str	r1, [r7, #0]
    348c:	4a33      	ldr	r2, [pc, #204]	; (355c <spi_config_port+0xda>)
    348e:	4b33      	ldr	r3, [pc, #204]	; (355c <spi_config_port+0xda>)
    3490:	699b      	ldr	r3, [r3, #24]
    3492:	f043 0301 	orr.w	r3, r3, #1
    3496:	6193      	str	r3, [r2, #24]
    3498:	687b      	ldr	r3, [r7, #4]
    349a:	4a31      	ldr	r2, [pc, #196]	; (3560 <spi_config_port+0xde>)
    349c:	4293      	cmp	r3, r2
    349e:	d13e      	bne.n	351e <spi_config_port+0x9c>
    34a0:	683b      	ldr	r3, [r7, #0]
    34a2:	2b00      	cmp	r3, #0
    34a4:	d11a      	bne.n	34dc <spi_config_port+0x5a>
    34a6:	4a2d      	ldr	r2, [pc, #180]	; (355c <spi_config_port+0xda>)
    34a8:	4b2c      	ldr	r3, [pc, #176]	; (355c <spi_config_port+0xda>)
    34aa:	699b      	ldr	r3, [r3, #24]
    34ac:	f043 0304 	orr.w	r3, r3, #4
    34b0:	6193      	str	r3, [r2, #24]
    34b2:	2203      	movs	r2, #3
    34b4:	2104      	movs	r1, #4
    34b6:	482b      	ldr	r0, [pc, #172]	; (3564 <spi_config_port+0xe2>)
    34b8:	f7fe fa1d 	bl	18f6 <config_pin>
    34bc:	220b      	movs	r2, #11
    34be:	2105      	movs	r1, #5
    34c0:	4828      	ldr	r0, [pc, #160]	; (3564 <spi_config_port+0xe2>)
    34c2:	f7fe fa18 	bl	18f6 <config_pin>
    34c6:	2204      	movs	r2, #4
    34c8:	2106      	movs	r1, #6
    34ca:	4826      	ldr	r0, [pc, #152]	; (3564 <spi_config_port+0xe2>)
    34cc:	f7fe fa13 	bl	18f6 <config_pin>
    34d0:	220b      	movs	r2, #11
    34d2:	2107      	movs	r1, #7
    34d4:	4823      	ldr	r0, [pc, #140]	; (3564 <spi_config_port+0xe2>)
    34d6:	f7fe fa0e 	bl	18f6 <config_pin>
    34da:	e03a      	b.n	3552 <spi_config_port+0xd0>
    34dc:	4a1f      	ldr	r2, [pc, #124]	; (355c <spi_config_port+0xda>)
    34de:	4b1f      	ldr	r3, [pc, #124]	; (355c <spi_config_port+0xda>)
    34e0:	699b      	ldr	r3, [r3, #24]
    34e2:	f043 030d 	orr.w	r3, r3, #13
    34e6:	6193      	str	r3, [r2, #24]
    34e8:	4a1f      	ldr	r2, [pc, #124]	; (3568 <spi_config_port+0xe6>)
    34ea:	4b1f      	ldr	r3, [pc, #124]	; (3568 <spi_config_port+0xe6>)
    34ec:	685b      	ldr	r3, [r3, #4]
    34ee:	f043 0301 	orr.w	r3, r3, #1
    34f2:	6053      	str	r3, [r2, #4]
    34f4:	2203      	movs	r2, #3
    34f6:	210f      	movs	r1, #15
    34f8:	481a      	ldr	r0, [pc, #104]	; (3564 <spi_config_port+0xe2>)
    34fa:	f7fe f9fc 	bl	18f6 <config_pin>
    34fe:	220b      	movs	r2, #11
    3500:	2103      	movs	r1, #3
    3502:	481a      	ldr	r0, [pc, #104]	; (356c <spi_config_port+0xea>)
    3504:	f7fe f9f7 	bl	18f6 <config_pin>
    3508:	2204      	movs	r2, #4
    350a:	2104      	movs	r1, #4
    350c:	4817      	ldr	r0, [pc, #92]	; (356c <spi_config_port+0xea>)
    350e:	f7fe f9f2 	bl	18f6 <config_pin>
    3512:	220b      	movs	r2, #11
    3514:	2105      	movs	r1, #5
    3516:	4815      	ldr	r0, [pc, #84]	; (356c <spi_config_port+0xea>)
    3518:	f7fe f9ed 	bl	18f6 <config_pin>
    351c:	e019      	b.n	3552 <spi_config_port+0xd0>
    351e:	4a0f      	ldr	r2, [pc, #60]	; (355c <spi_config_port+0xda>)
    3520:	4b0e      	ldr	r3, [pc, #56]	; (355c <spi_config_port+0xda>)
    3522:	699b      	ldr	r3, [r3, #24]
    3524:	f043 0308 	orr.w	r3, r3, #8
    3528:	6193      	str	r3, [r2, #24]
    352a:	2203      	movs	r2, #3
    352c:	2102      	movs	r1, #2
    352e:	480f      	ldr	r0, [pc, #60]	; (356c <spi_config_port+0xea>)
    3530:	f7fe f9e1 	bl	18f6 <config_pin>
    3534:	220b      	movs	r2, #11
    3536:	210d      	movs	r1, #13
    3538:	480c      	ldr	r0, [pc, #48]	; (356c <spi_config_port+0xea>)
    353a:	f7fe f9dc 	bl	18f6 <config_pin>
    353e:	2204      	movs	r2, #4
    3540:	210e      	movs	r1, #14
    3542:	480a      	ldr	r0, [pc, #40]	; (356c <spi_config_port+0xea>)
    3544:	f7fe f9d7 	bl	18f6 <config_pin>
    3548:	220b      	movs	r2, #11
    354a:	210f      	movs	r1, #15
    354c:	4807      	ldr	r0, [pc, #28]	; (356c <spi_config_port+0xea>)
    354e:	f7fe f9d2 	bl	18f6 <config_pin>
    3552:	bf00      	nop
    3554:	3708      	adds	r7, #8
    3556:	46bd      	mov	sp, r7
    3558:	bd80      	pop	{r7, pc}
    355a:	bf00      	nop
    355c:	40021000 	.word	0x40021000
    3560:	40013000 	.word	0x40013000
    3564:	40010800 	.word	0x40010800
    3568:	40010000 	.word	0x40010000
    356c:	40010c00 	.word	0x40010c00

00003570 <spi_init>:
    3570:	b580      	push	{r7, lr}
    3572:	b084      	sub	sp, #16
    3574:	af00      	add	r7, sp, #0
    3576:	60f8      	str	r0, [r7, #12]
    3578:	60b9      	str	r1, [r7, #8]
    357a:	607a      	str	r2, [r7, #4]
    357c:	603b      	str	r3, [r7, #0]
    357e:	6839      	ldr	r1, [r7, #0]
    3580:	68f8      	ldr	r0, [r7, #12]
    3582:	f7ff ff7e 	bl	3482 <spi_config_port>
    3586:	68fb      	ldr	r3, [r7, #12]
    3588:	4a10      	ldr	r2, [pc, #64]	; (35cc <spi_init+0x5c>)
    358a:	4293      	cmp	r3, r2
    358c:	d106      	bne.n	359c <spi_init+0x2c>
    358e:	4a10      	ldr	r2, [pc, #64]	; (35d0 <spi_init+0x60>)
    3590:	4b0f      	ldr	r3, [pc, #60]	; (35d0 <spi_init+0x60>)
    3592:	699b      	ldr	r3, [r3, #24]
    3594:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    3598:	6193      	str	r3, [r2, #24]
    359a:	e005      	b.n	35a8 <spi_init+0x38>
    359c:	4a0c      	ldr	r2, [pc, #48]	; (35d0 <spi_init+0x60>)
    359e:	4b0c      	ldr	r3, [pc, #48]	; (35d0 <spi_init+0x60>)
    35a0:	69db      	ldr	r3, [r3, #28]
    35a2:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    35a6:	61d3      	str	r3, [r2, #28]
    35a8:	68fb      	ldr	r3, [r7, #12]
    35aa:	687a      	ldr	r2, [r7, #4]
    35ac:	601a      	str	r2, [r3, #0]
    35ae:	68b9      	ldr	r1, [r7, #8]
    35b0:	68f8      	ldr	r0, [r7, #12]
    35b2:	f7ff ff4f 	bl	3454 <spi_baudrate>
    35b6:	68fb      	ldr	r3, [r7, #12]
    35b8:	681b      	ldr	r3, [r3, #0]
    35ba:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    35be:	68fb      	ldr	r3, [r7, #12]
    35c0:	601a      	str	r2, [r3, #0]
    35c2:	bf00      	nop
    35c4:	3710      	adds	r7, #16
    35c6:	46bd      	mov	sp, r7
    35c8:	bd80      	pop	{r7, pc}
    35ca:	bf00      	nop
    35cc:	40013000 	.word	0x40013000
    35d0:	40021000 	.word	0x40021000

000035d4 <spi_send>:
    35d4:	b480      	push	{r7}
    35d6:	b085      	sub	sp, #20
    35d8:	af00      	add	r7, sp, #0
    35da:	6078      	str	r0, [r7, #4]
    35dc:	460b      	mov	r3, r1
    35de:	70fb      	strb	r3, [r7, #3]
    35e0:	bf00      	nop
    35e2:	687b      	ldr	r3, [r7, #4]
    35e4:	689b      	ldr	r3, [r3, #8]
    35e6:	f003 0302 	and.w	r3, r3, #2
    35ea:	2b00      	cmp	r3, #0
    35ec:	d0f9      	beq.n	35e2 <spi_send+0xe>
    35ee:	78fa      	ldrb	r2, [r7, #3]
    35f0:	687b      	ldr	r3, [r7, #4]
    35f2:	60da      	str	r2, [r3, #12]
    35f4:	bf00      	nop
    35f6:	687b      	ldr	r3, [r7, #4]
    35f8:	689b      	ldr	r3, [r3, #8]
    35fa:	f003 0301 	and.w	r3, r3, #1
    35fe:	2b00      	cmp	r3, #0
    3600:	d0f9      	beq.n	35f6 <spi_send+0x22>
    3602:	687b      	ldr	r3, [r7, #4]
    3604:	68db      	ldr	r3, [r3, #12]
    3606:	73fb      	strb	r3, [r7, #15]
    3608:	bf00      	nop
    360a:	3714      	adds	r7, #20
    360c:	46bd      	mov	sp, r7
    360e:	bc80      	pop	{r7}
    3610:	4770      	bx	lr

00003612 <spi_receive>:
    3612:	b480      	push	{r7}
    3614:	b085      	sub	sp, #20
    3616:	af00      	add	r7, sp, #0
    3618:	6078      	str	r0, [r7, #4]
    361a:	bf00      	nop
    361c:	687b      	ldr	r3, [r7, #4]
    361e:	689b      	ldr	r3, [r3, #8]
    3620:	f003 0302 	and.w	r3, r3, #2
    3624:	2b00      	cmp	r3, #0
    3626:	d0f9      	beq.n	361c <spi_receive+0xa>
    3628:	687b      	ldr	r3, [r7, #4]
    362a:	22ff      	movs	r2, #255	; 0xff
    362c:	60da      	str	r2, [r3, #12]
    362e:	bf00      	nop
    3630:	687b      	ldr	r3, [r7, #4]
    3632:	689b      	ldr	r3, [r3, #8]
    3634:	f003 0301 	and.w	r3, r3, #1
    3638:	2b00      	cmp	r3, #0
    363a:	d0f9      	beq.n	3630 <spi_receive+0x1e>
    363c:	687b      	ldr	r3, [r7, #4]
    363e:	68db      	ldr	r3, [r3, #12]
    3640:	73fb      	strb	r3, [r7, #15]
    3642:	7bfb      	ldrb	r3, [r7, #15]
    3644:	4618      	mov	r0, r3
    3646:	3714      	adds	r7, #20
    3648:	46bd      	mov	sp, r7
    364a:	bc80      	pop	{r7}
    364c:	4770      	bx	lr

0000364e <spi_send_block>:
    364e:	b480      	push	{r7}
    3650:	b087      	sub	sp, #28
    3652:	af00      	add	r7, sp, #0
    3654:	60f8      	str	r0, [r7, #12]
    3656:	60b9      	str	r1, [r7, #8]
    3658:	607a      	str	r2, [r7, #4]
    365a:	e010      	b.n	367e <spi_send_block+0x30>
    365c:	68bb      	ldr	r3, [r7, #8]
    365e:	1c5a      	adds	r2, r3, #1
    3660:	60ba      	str	r2, [r7, #8]
    3662:	781b      	ldrb	r3, [r3, #0]
    3664:	461a      	mov	r2, r3
    3666:	68fb      	ldr	r3, [r7, #12]
    3668:	60da      	str	r2, [r3, #12]
    366a:	bf00      	nop
    366c:	68fb      	ldr	r3, [r7, #12]
    366e:	689b      	ldr	r3, [r3, #8]
    3670:	f003 0302 	and.w	r3, r3, #2
    3674:	2b00      	cmp	r3, #0
    3676:	d0f9      	beq.n	366c <spi_send_block+0x1e>
    3678:	687b      	ldr	r3, [r7, #4]
    367a:	3b01      	subs	r3, #1
    367c:	607b      	str	r3, [r7, #4]
    367e:	687b      	ldr	r3, [r7, #4]
    3680:	2b00      	cmp	r3, #0
    3682:	d1eb      	bne.n	365c <spi_send_block+0xe>
    3684:	bf00      	nop
    3686:	68fb      	ldr	r3, [r7, #12]
    3688:	689b      	ldr	r3, [r3, #8]
    368a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    368e:	2b00      	cmp	r3, #0
    3690:	d1f9      	bne.n	3686 <spi_send_block+0x38>
    3692:	68fb      	ldr	r3, [r7, #12]
    3694:	68db      	ldr	r3, [r3, #12]
    3696:	75fb      	strb	r3, [r7, #23]
    3698:	bf00      	nop
    369a:	371c      	adds	r7, #28
    369c:	46bd      	mov	sp, r7
    369e:	bc80      	pop	{r7}
    36a0:	4770      	bx	lr

000036a2 <spi_receive_block>:
    36a2:	b480      	push	{r7}
    36a4:	b085      	sub	sp, #20
    36a6:	af00      	add	r7, sp, #0
    36a8:	60f8      	str	r0, [r7, #12]
    36aa:	60b9      	str	r1, [r7, #8]
    36ac:	607a      	str	r2, [r7, #4]
    36ae:	e013      	b.n	36d8 <spi_receive_block+0x36>
    36b0:	68fb      	ldr	r3, [r7, #12]
    36b2:	2200      	movs	r2, #0
    36b4:	60da      	str	r2, [r3, #12]
    36b6:	bf00      	nop
    36b8:	68fb      	ldr	r3, [r7, #12]
    36ba:	689b      	ldr	r3, [r3, #8]
    36bc:	f003 0301 	and.w	r3, r3, #1
    36c0:	2b00      	cmp	r3, #0
    36c2:	d0f9      	beq.n	36b8 <spi_receive_block+0x16>
    36c4:	68bb      	ldr	r3, [r7, #8]
    36c6:	1c5a      	adds	r2, r3, #1
    36c8:	60ba      	str	r2, [r7, #8]
    36ca:	68fa      	ldr	r2, [r7, #12]
    36cc:	68d2      	ldr	r2, [r2, #12]
    36ce:	b2d2      	uxtb	r2, r2
    36d0:	701a      	strb	r2, [r3, #0]
    36d2:	687b      	ldr	r3, [r7, #4]
    36d4:	3b01      	subs	r3, #1
    36d6:	607b      	str	r3, [r7, #4]
    36d8:	687b      	ldr	r3, [r7, #4]
    36da:	2b00      	cmp	r3, #0
    36dc:	d1e8      	bne.n	36b0 <spi_receive_block+0xe>
    36de:	bf00      	nop
    36e0:	3714      	adds	r7, #20
    36e2:	46bd      	mov	sp, r7
    36e4:	bc80      	pop	{r7}
    36e6:	4770      	bx	lr

000036e8 <reset_mcu>:
    36e8:	4b01      	ldr	r3, [pc, #4]	; (36f0 <reset_mcu+0x8>)
    36ea:	4a02      	ldr	r2, [pc, #8]	; (36f4 <reset_mcu+0xc>)
    36ec:	601a      	str	r2, [r3, #0]
    36ee:	bf00      	nop
    36f0:	e000ed0c 	.word	0xe000ed0c
    36f4:	05fa0004 	.word	0x05fa0004

000036f8 <print_fault>:
    36f8:	b580      	push	{r7, lr}
    36fa:	b082      	sub	sp, #8
    36fc:	af00      	add	r7, sp, #0
    36fe:	6078      	str	r0, [r7, #4]
    3700:	6039      	str	r1, [r7, #0]
    3702:	6878      	ldr	r0, [r7, #4]
    3704:	f000 f9ea 	bl	3adc <print>
    3708:	4818      	ldr	r0, [pc, #96]	; (376c <print_fault+0x74>)
    370a:	f000 f9e7 	bl	3adc <print>
    370e:	683b      	ldr	r3, [r7, #0]
    3710:	2b00      	cmp	r3, #0
    3712:	d004      	beq.n	371e <print_fault+0x26>
    3714:	683b      	ldr	r3, [r7, #0]
    3716:	2110      	movs	r1, #16
    3718:	4618      	mov	r0, r3
    371a:	f000 fa0f 	bl	3b3c <print_int>
    371e:	200d      	movs	r0, #13
    3720:	f000 f924 	bl	396c <put_char>
    3724:	4812      	ldr	r0, [pc, #72]	; (3770 <print_fault+0x78>)
    3726:	f000 f9d9 	bl	3adc <print>
    372a:	4b12      	ldr	r3, [pc, #72]	; (3774 <print_fault+0x7c>)
    372c:	681b      	ldr	r3, [r3, #0]
    372e:	f3c3 430f 	ubfx	r3, r3, #16, #16
    3732:	b29b      	uxth	r3, r3
    3734:	2110      	movs	r1, #16
    3736:	4618      	mov	r0, r3
    3738:	f000 fa00 	bl	3b3c <print_int>
    373c:	480e      	ldr	r0, [pc, #56]	; (3778 <print_fault+0x80>)
    373e:	f000 f9cd 	bl	3adc <print>
    3742:	4b0c      	ldr	r3, [pc, #48]	; (3774 <print_fault+0x7c>)
    3744:	681b      	ldr	r3, [r3, #0]
    3746:	f3c3 2307 	ubfx	r3, r3, #8, #8
    374a:	b2db      	uxtb	r3, r3
    374c:	2110      	movs	r1, #16
    374e:	4618      	mov	r0, r3
    3750:	f000 f9f4 	bl	3b3c <print_int>
    3754:	4809      	ldr	r0, [pc, #36]	; (377c <print_fault+0x84>)
    3756:	f000 f9c1 	bl	3adc <print>
    375a:	4b06      	ldr	r3, [pc, #24]	; (3774 <print_fault+0x7c>)
    375c:	681b      	ldr	r3, [r3, #0]
    375e:	b2db      	uxtb	r3, r3
    3760:	2110      	movs	r1, #16
    3762:	4618      	mov	r0, r3
    3764:	f000 f9ea 	bl	3b3c <print_int>
    3768:	e7fe      	b.n	3768 <print_fault+0x70>
    376a:	bf00      	nop
    376c:	000049a0 	.word	0x000049a0
    3770:	000049b0 	.word	0x000049b0
    3774:	e000ed28 	.word	0xe000ed28
    3778:	000049b8 	.word	0x000049b8
    377c:	000049c0 	.word	0x000049c0

00003780 <config_systicks>:
    3780:	b580      	push	{r7, lr}
    3782:	af00      	add	r7, sp, #0
    3784:	2109      	movs	r1, #9
    3786:	f06f 000e 	mvn.w	r0, #14
    378a:	f7fe fff3 	bl	2774 <set_int_priority>
    378e:	4b04      	ldr	r3, [pc, #16]	; (37a0 <config_systicks+0x20>)
    3790:	f242 22f3 	movw	r2, #8947	; 0x22f3
    3794:	601a      	str	r2, [r3, #0]
    3796:	4b03      	ldr	r3, [pc, #12]	; (37a4 <config_systicks+0x24>)
    3798:	2203      	movs	r2, #3
    379a:	601a      	str	r2, [r3, #0]
    379c:	bf00      	nop
    379e:	bd80      	pop	{r7, pc}
    37a0:	e000e014 	.word	0xe000e014
    37a4:	e000e010 	.word	0xe000e010

000037a8 <pause>:
    37a8:	b480      	push	{r7}
    37aa:	b083      	sub	sp, #12
    37ac:	af00      	add	r7, sp, #0
    37ae:	6078      	str	r0, [r7, #4]
    37b0:	4a06      	ldr	r2, [pc, #24]	; (37cc <pause+0x24>)
    37b2:	687b      	ldr	r3, [r7, #4]
    37b4:	6013      	str	r3, [r2, #0]
    37b6:	bf00      	nop
    37b8:	4b04      	ldr	r3, [pc, #16]	; (37cc <pause+0x24>)
    37ba:	681b      	ldr	r3, [r3, #0]
    37bc:	2b00      	cmp	r3, #0
    37be:	d1fb      	bne.n	37b8 <pause+0x10>
    37c0:	bf00      	nop
    37c2:	370c      	adds	r7, #12
    37c4:	46bd      	mov	sp, r7
    37c6:	bc80      	pop	{r7}
    37c8:	4770      	bx	lr
    37ca:	bf00      	nop
    37cc:	200004fc 	.word	0x200004fc

000037d0 <STK_handler>:
    37d0:	b480      	push	{r7}
    37d2:	af00      	add	r7, sp, #0
    37d4:	4b08      	ldr	r3, [pc, #32]	; (37f8 <STK_handler+0x28>)
    37d6:	681b      	ldr	r3, [r3, #0]
    37d8:	3301      	adds	r3, #1
    37da:	4a07      	ldr	r2, [pc, #28]	; (37f8 <STK_handler+0x28>)
    37dc:	6013      	str	r3, [r2, #0]
    37de:	4b07      	ldr	r3, [pc, #28]	; (37fc <STK_handler+0x2c>)
    37e0:	681b      	ldr	r3, [r3, #0]
    37e2:	2b00      	cmp	r3, #0
    37e4:	d004      	beq.n	37f0 <STK_handler+0x20>
    37e6:	4b05      	ldr	r3, [pc, #20]	; (37fc <STK_handler+0x2c>)
    37e8:	681b      	ldr	r3, [r3, #0]
    37ea:	3b01      	subs	r3, #1
    37ec:	4a03      	ldr	r2, [pc, #12]	; (37fc <STK_handler+0x2c>)
    37ee:	6013      	str	r3, [r2, #0]
    37f0:	bf00      	nop
    37f2:	46bd      	mov	sp, r7
    37f4:	bc80      	pop	{r7}
    37f6:	4770      	bx	lr
    37f8:	200004f8 	.word	0x200004f8
    37fc:	200004fc 	.word	0x200004fc

00003800 <font_color>:
    3800:	b480      	push	{r7}
    3802:	b083      	sub	sp, #12
    3804:	af00      	add	r7, sp, #0
    3806:	4603      	mov	r3, r0
    3808:	71fb      	strb	r3, [r7, #7]
    380a:	79fb      	ldrb	r3, [r7, #7]
    380c:	f003 030f 	and.w	r3, r3, #15
    3810:	b2da      	uxtb	r2, r3
    3812:	4b03      	ldr	r3, [pc, #12]	; (3820 <font_color+0x20>)
    3814:	705a      	strb	r2, [r3, #1]
    3816:	bf00      	nop
    3818:	370c      	adds	r7, #12
    381a:	46bd      	mov	sp, r7
    381c:	bc80      	pop	{r7}
    381e:	4770      	bx	lr
    3820:	20000068 	.word	0x20000068

00003824 <bg_color>:
    3824:	b480      	push	{r7}
    3826:	b083      	sub	sp, #12
    3828:	af00      	add	r7, sp, #0
    382a:	4603      	mov	r3, r0
    382c:	71fb      	strb	r3, [r7, #7]
    382e:	79fb      	ldrb	r3, [r7, #7]
    3830:	f003 030f 	and.w	r3, r3, #15
    3834:	b2da      	uxtb	r2, r3
    3836:	4b03      	ldr	r3, [pc, #12]	; (3844 <bg_color+0x20>)
    3838:	701a      	strb	r2, [r3, #0]
    383a:	bf00      	nop
    383c:	370c      	adds	r7, #12
    383e:	46bd      	mov	sp, r7
    3840:	bc80      	pop	{r7}
    3842:	4770      	bx	lr
    3844:	20000068 	.word	0x20000068

00003848 <select_font>:
    3848:	b480      	push	{r7}
    384a:	b083      	sub	sp, #12
    384c:	af00      	add	r7, sp, #0
    384e:	4603      	mov	r3, r0
    3850:	71fb      	strb	r3, [r7, #7]
    3852:	4a04      	ldr	r2, [pc, #16]	; (3864 <select_font+0x1c>)
    3854:	79fb      	ldrb	r3, [r7, #7]
    3856:	7013      	strb	r3, [r2, #0]
    3858:	bf00      	nop
    385a:	370c      	adds	r7, #12
    385c:	46bd      	mov	sp, r7
    385e:	bc80      	pop	{r7}
    3860:	4770      	bx	lr
    3862:	bf00      	nop
    3864:	20000064 	.word	0x20000064

00003868 <new_line>:
    3868:	b580      	push	{r7, lr}
    386a:	af00      	add	r7, sp, #0
    386c:	4b1e      	ldr	r3, [pc, #120]	; (38e8 <new_line+0x80>)
    386e:	2200      	movs	r2, #0
    3870:	701a      	strb	r2, [r3, #0]
    3872:	4b1e      	ldr	r3, [pc, #120]	; (38ec <new_line+0x84>)
    3874:	781b      	ldrb	r3, [r3, #0]
    3876:	2b01      	cmp	r3, #1
    3878:	d014      	beq.n	38a4 <new_line+0x3c>
    387a:	2b02      	cmp	r3, #2
    387c:	d022      	beq.n	38c4 <new_line+0x5c>
    387e:	2b00      	cmp	r3, #0
    3880:	d000      	beq.n	3884 <new_line+0x1c>
    3882:	e02f      	b.n	38e4 <new_line+0x7c>
    3884:	4b1a      	ldr	r3, [pc, #104]	; (38f0 <new_line+0x88>)
    3886:	781b      	ldrb	r3, [r3, #0]
    3888:	3306      	adds	r3, #6
    388a:	2b6b      	cmp	r3, #107	; 0x6b
    388c:	dc06      	bgt.n	389c <new_line+0x34>
    388e:	4b18      	ldr	r3, [pc, #96]	; (38f0 <new_line+0x88>)
    3890:	781b      	ldrb	r3, [r3, #0]
    3892:	3306      	adds	r3, #6
    3894:	b2da      	uxtb	r2, r3
    3896:	4b16      	ldr	r3, [pc, #88]	; (38f0 <new_line+0x88>)
    3898:	701a      	strb	r2, [r3, #0]
    389a:	e023      	b.n	38e4 <new_line+0x7c>
    389c:	2006      	movs	r0, #6
    389e:	f7fe fa03 	bl	1ca8 <gfx_scroll_up>
    38a2:	e01f      	b.n	38e4 <new_line+0x7c>
    38a4:	4b12      	ldr	r3, [pc, #72]	; (38f0 <new_line+0x88>)
    38a6:	781b      	ldrb	r3, [r3, #0]
    38a8:	330a      	adds	r3, #10
    38aa:	2b67      	cmp	r3, #103	; 0x67
    38ac:	dc06      	bgt.n	38bc <new_line+0x54>
    38ae:	4b10      	ldr	r3, [pc, #64]	; (38f0 <new_line+0x88>)
    38b0:	781b      	ldrb	r3, [r3, #0]
    38b2:	330a      	adds	r3, #10
    38b4:	b2da      	uxtb	r2, r3
    38b6:	4b0e      	ldr	r3, [pc, #56]	; (38f0 <new_line+0x88>)
    38b8:	701a      	strb	r2, [r3, #0]
    38ba:	e013      	b.n	38e4 <new_line+0x7c>
    38bc:	200a      	movs	r0, #10
    38be:	f7fe f9f3 	bl	1ca8 <gfx_scroll_up>
    38c2:	e00f      	b.n	38e4 <new_line+0x7c>
    38c4:	4b0a      	ldr	r3, [pc, #40]	; (38f0 <new_line+0x88>)
    38c6:	781b      	ldrb	r3, [r3, #0]
    38c8:	3308      	adds	r3, #8
    38ca:	2b69      	cmp	r3, #105	; 0x69
    38cc:	dc06      	bgt.n	38dc <new_line+0x74>
    38ce:	4b08      	ldr	r3, [pc, #32]	; (38f0 <new_line+0x88>)
    38d0:	781b      	ldrb	r3, [r3, #0]
    38d2:	3308      	adds	r3, #8
    38d4:	b2da      	uxtb	r2, r3
    38d6:	4b06      	ldr	r3, [pc, #24]	; (38f0 <new_line+0x88>)
    38d8:	701a      	strb	r2, [r3, #0]
    38da:	e002      	b.n	38e2 <new_line+0x7a>
    38dc:	2008      	movs	r0, #8
    38de:	f7fe f9e3 	bl	1ca8 <gfx_scroll_up>
    38e2:	bf00      	nop
    38e4:	bf00      	nop
    38e6:	bd80      	pop	{r7, pc}
    38e8:	20000500 	.word	0x20000500
    38ec:	20000064 	.word	0x20000064
    38f0:	20000501 	.word	0x20000501

000038f4 <draw_char>:
    38f4:	b5b0      	push	{r4, r5, r7, lr}
    38f6:	b086      	sub	sp, #24
    38f8:	af00      	add	r7, sp, #0
    38fa:	60f8      	str	r0, [r7, #12]
    38fc:	60b9      	str	r1, [r7, #8]
    38fe:	607a      	str	r2, [r7, #4]
    3900:	603b      	str	r3, [r7, #0]
    3902:	68bc      	ldr	r4, [r7, #8]
    3904:	e026      	b.n	3954 <draw_char+0x60>
    3906:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3908:	1c5a      	adds	r2, r3, #1
    390a:	62ba      	str	r2, [r7, #40]	; 0x28
    390c:	781b      	ldrb	r3, [r3, #0]
    390e:	757b      	strb	r3, [r7, #21]
    3910:	2380      	movs	r3, #128	; 0x80
    3912:	75bb      	strb	r3, [r7, #22]
    3914:	68fd      	ldr	r5, [r7, #12]
    3916:	e017      	b.n	3948 <draw_char+0x54>
    3918:	7d7a      	ldrb	r2, [r7, #21]
    391a:	7dbb      	ldrb	r3, [r7, #22]
    391c:	4013      	ands	r3, r2
    391e:	753b      	strb	r3, [r7, #20]
    3920:	7d3b      	ldrb	r3, [r7, #20]
    3922:	2b00      	cmp	r3, #0
    3924:	d003      	beq.n	392e <draw_char+0x3a>
    3926:	4b10      	ldr	r3, [pc, #64]	; (3968 <draw_char+0x74>)
    3928:	785b      	ldrb	r3, [r3, #1]
    392a:	75fb      	strb	r3, [r7, #23]
    392c:	e002      	b.n	3934 <draw_char+0x40>
    392e:	4b0e      	ldr	r3, [pc, #56]	; (3968 <draw_char+0x74>)
    3930:	781b      	ldrb	r3, [r3, #0]
    3932:	75fb      	strb	r3, [r7, #23]
    3934:	7dfb      	ldrb	r3, [r7, #23]
    3936:	461a      	mov	r2, r3
    3938:	4621      	mov	r1, r4
    393a:	4628      	mov	r0, r5
    393c:	f7fe f8ca 	bl	1ad4 <gfx_plot>
    3940:	7dbb      	ldrb	r3, [r7, #22]
    3942:	085b      	lsrs	r3, r3, #1
    3944:	75bb      	strb	r3, [r7, #22]
    3946:	3501      	adds	r5, #1
    3948:	68fa      	ldr	r2, [r7, #12]
    394a:	687b      	ldr	r3, [r7, #4]
    394c:	4413      	add	r3, r2
    394e:	42ab      	cmp	r3, r5
    3950:	dce2      	bgt.n	3918 <draw_char+0x24>
    3952:	3401      	adds	r4, #1
    3954:	68ba      	ldr	r2, [r7, #8]
    3956:	683b      	ldr	r3, [r7, #0]
    3958:	4413      	add	r3, r2
    395a:	42a3      	cmp	r3, r4
    395c:	dcd3      	bgt.n	3906 <draw_char+0x12>
    395e:	bf00      	nop
    3960:	3718      	adds	r7, #24
    3962:	46bd      	mov	sp, r7
    3964:	bdb0      	pop	{r4, r5, r7, pc}
    3966:	bf00      	nop
    3968:	20000068 	.word	0x20000068

0000396c <put_char>:
    396c:	b580      	push	{r7, lr}
    396e:	b084      	sub	sp, #16
    3970:	af02      	add	r7, sp, #8
    3972:	4603      	mov	r3, r0
    3974:	71fb      	strb	r3, [r7, #7]
    3976:	4b3d      	ldr	r3, [pc, #244]	; (3a6c <put_char+0x100>)
    3978:	781b      	ldrb	r3, [r3, #0]
    397a:	2b01      	cmp	r3, #1
    397c:	d027      	beq.n	39ce <put_char+0x62>
    397e:	2b02      	cmp	r3, #2
    3980:	d048      	beq.n	3a14 <put_char+0xa8>
    3982:	2b00      	cmp	r3, #0
    3984:	d000      	beq.n	3988 <put_char+0x1c>
    3986:	e06d      	b.n	3a64 <put_char+0xf8>
    3988:	79fb      	ldrb	r3, [r7, #7]
    398a:	2b0f      	cmp	r3, #15
    398c:	d865      	bhi.n	3a5a <put_char+0xee>
    398e:	4b38      	ldr	r3, [pc, #224]	; (3a70 <put_char+0x104>)
    3990:	781b      	ldrb	r3, [r3, #0]
    3992:	4618      	mov	r0, r3
    3994:	4b37      	ldr	r3, [pc, #220]	; (3a74 <put_char+0x108>)
    3996:	781b      	ldrb	r3, [r3, #0]
    3998:	4619      	mov	r1, r3
    399a:	79fa      	ldrb	r2, [r7, #7]
    399c:	4613      	mov	r3, r2
    399e:	005b      	lsls	r3, r3, #1
    39a0:	4413      	add	r3, r2
    39a2:	005b      	lsls	r3, r3, #1
    39a4:	461a      	mov	r2, r3
    39a6:	4b34      	ldr	r3, [pc, #208]	; (3a78 <put_char+0x10c>)
    39a8:	4413      	add	r3, r2
    39aa:	9300      	str	r3, [sp, #0]
    39ac:	2306      	movs	r3, #6
    39ae:	2204      	movs	r2, #4
    39b0:	f7ff ffa0 	bl	38f4 <draw_char>
    39b4:	4b2e      	ldr	r3, [pc, #184]	; (3a70 <put_char+0x104>)
    39b6:	781b      	ldrb	r3, [r3, #0]
    39b8:	3304      	adds	r3, #4
    39ba:	b2da      	uxtb	r2, r3
    39bc:	4b2c      	ldr	r3, [pc, #176]	; (3a70 <put_char+0x104>)
    39be:	701a      	strb	r2, [r3, #0]
    39c0:	4b2b      	ldr	r3, [pc, #172]	; (3a70 <put_char+0x104>)
    39c2:	781b      	ldrb	r3, [r3, #0]
    39c4:	2bb1      	cmp	r3, #177	; 0xb1
    39c6:	d948      	bls.n	3a5a <put_char+0xee>
    39c8:	f7ff ff4e 	bl	3868 <new_line>
    39cc:	e045      	b.n	3a5a <put_char+0xee>
    39ce:	79fb      	ldrb	r3, [r7, #7]
    39d0:	2b0f      	cmp	r3, #15
    39d2:	d844      	bhi.n	3a5e <put_char+0xf2>
    39d4:	4b26      	ldr	r3, [pc, #152]	; (3a70 <put_char+0x104>)
    39d6:	781b      	ldrb	r3, [r3, #0]
    39d8:	4618      	mov	r0, r3
    39da:	4b26      	ldr	r3, [pc, #152]	; (3a74 <put_char+0x108>)
    39dc:	781b      	ldrb	r3, [r3, #0]
    39de:	4619      	mov	r1, r3
    39e0:	79fa      	ldrb	r2, [r7, #7]
    39e2:	4613      	mov	r3, r2
    39e4:	009b      	lsls	r3, r3, #2
    39e6:	4413      	add	r3, r2
    39e8:	005b      	lsls	r3, r3, #1
    39ea:	461a      	mov	r2, r3
    39ec:	4b23      	ldr	r3, [pc, #140]	; (3a7c <put_char+0x110>)
    39ee:	4413      	add	r3, r2
    39f0:	9300      	str	r3, [sp, #0]
    39f2:	230a      	movs	r3, #10
    39f4:	2208      	movs	r2, #8
    39f6:	f7ff ff7d 	bl	38f4 <draw_char>
    39fa:	4b1d      	ldr	r3, [pc, #116]	; (3a70 <put_char+0x104>)
    39fc:	781b      	ldrb	r3, [r3, #0]
    39fe:	3308      	adds	r3, #8
    3a00:	b2da      	uxtb	r2, r3
    3a02:	4b1b      	ldr	r3, [pc, #108]	; (3a70 <put_char+0x104>)
    3a04:	701a      	strb	r2, [r3, #0]
    3a06:	4b1a      	ldr	r3, [pc, #104]	; (3a70 <put_char+0x104>)
    3a08:	781b      	ldrb	r3, [r3, #0]
    3a0a:	2bad      	cmp	r3, #173	; 0xad
    3a0c:	d927      	bls.n	3a5e <put_char+0xf2>
    3a0e:	f7ff ff2b 	bl	3868 <new_line>
    3a12:	e024      	b.n	3a5e <put_char+0xf2>
    3a14:	79fb      	ldrb	r3, [r7, #7]
    3a16:	2b1f      	cmp	r3, #31
    3a18:	d923      	bls.n	3a62 <put_char+0xf6>
    3a1a:	79fb      	ldrb	r3, [r7, #7]
    3a1c:	2b84      	cmp	r3, #132	; 0x84
    3a1e:	d820      	bhi.n	3a62 <put_char+0xf6>
    3a20:	4b13      	ldr	r3, [pc, #76]	; (3a70 <put_char+0x104>)
    3a22:	781b      	ldrb	r3, [r3, #0]
    3a24:	4618      	mov	r0, r3
    3a26:	4b13      	ldr	r3, [pc, #76]	; (3a74 <put_char+0x108>)
    3a28:	781b      	ldrb	r3, [r3, #0]
    3a2a:	4619      	mov	r1, r3
    3a2c:	79fb      	ldrb	r3, [r7, #7]
    3a2e:	3b20      	subs	r3, #32
    3a30:	00db      	lsls	r3, r3, #3
    3a32:	4a13      	ldr	r2, [pc, #76]	; (3a80 <put_char+0x114>)
    3a34:	4413      	add	r3, r2
    3a36:	9300      	str	r3, [sp, #0]
    3a38:	2308      	movs	r3, #8
    3a3a:	2206      	movs	r2, #6
    3a3c:	f7ff ff5a 	bl	38f4 <draw_char>
    3a40:	4b0b      	ldr	r3, [pc, #44]	; (3a70 <put_char+0x104>)
    3a42:	781b      	ldrb	r3, [r3, #0]
    3a44:	3306      	adds	r3, #6
    3a46:	b2da      	uxtb	r2, r3
    3a48:	4b09      	ldr	r3, [pc, #36]	; (3a70 <put_char+0x104>)
    3a4a:	701a      	strb	r2, [r3, #0]
    3a4c:	4b08      	ldr	r3, [pc, #32]	; (3a70 <put_char+0x104>)
    3a4e:	781b      	ldrb	r3, [r3, #0]
    3a50:	2baf      	cmp	r3, #175	; 0xaf
    3a52:	d906      	bls.n	3a62 <put_char+0xf6>
    3a54:	f7ff ff08 	bl	3868 <new_line>
    3a58:	e003      	b.n	3a62 <put_char+0xf6>
    3a5a:	bf00      	nop
    3a5c:	e002      	b.n	3a64 <put_char+0xf8>
    3a5e:	bf00      	nop
    3a60:	e000      	b.n	3a64 <put_char+0xf8>
    3a62:	bf00      	nop
    3a64:	bf00      	nop
    3a66:	3708      	adds	r7, #8
    3a68:	46bd      	mov	sp, r7
    3a6a:	bd80      	pop	{r7, pc}
    3a6c:	20000064 	.word	0x20000064
    3a70:	20000500 	.word	0x20000500
    3a74:	20000501 	.word	0x20000501
    3a78:	000043f4 	.word	0x000043f4
    3a7c:	00004454 	.word	0x00004454
    3a80:	000044f4 	.word	0x000044f4

00003a84 <set_cursor>:
    3a84:	b480      	push	{r7}
    3a86:	b083      	sub	sp, #12
    3a88:	af00      	add	r7, sp, #0
    3a8a:	4603      	mov	r3, r0
    3a8c:	460a      	mov	r2, r1
    3a8e:	71fb      	strb	r3, [r7, #7]
    3a90:	4613      	mov	r3, r2
    3a92:	71bb      	strb	r3, [r7, #6]
    3a94:	4a05      	ldr	r2, [pc, #20]	; (3aac <set_cursor+0x28>)
    3a96:	79fb      	ldrb	r3, [r7, #7]
    3a98:	7013      	strb	r3, [r2, #0]
    3a9a:	4a05      	ldr	r2, [pc, #20]	; (3ab0 <set_cursor+0x2c>)
    3a9c:	79bb      	ldrb	r3, [r7, #6]
    3a9e:	7013      	strb	r3, [r2, #0]
    3aa0:	bf00      	nop
    3aa2:	370c      	adds	r7, #12
    3aa4:	46bd      	mov	sp, r7
    3aa6:	bc80      	pop	{r7}
    3aa8:	4770      	bx	lr
    3aaa:	bf00      	nop
    3aac:	20000500 	.word	0x20000500
    3ab0:	20000501 	.word	0x20000501

00003ab4 <get_cursor>:
    3ab4:	b480      	push	{r7}
    3ab6:	af00      	add	r7, sp, #0
    3ab8:	4b06      	ldr	r3, [pc, #24]	; (3ad4 <get_cursor+0x20>)
    3aba:	781b      	ldrb	r3, [r3, #0]
    3abc:	b29b      	uxth	r3, r3
    3abe:	021b      	lsls	r3, r3, #8
    3ac0:	b29a      	uxth	r2, r3
    3ac2:	4b05      	ldr	r3, [pc, #20]	; (3ad8 <get_cursor+0x24>)
    3ac4:	781b      	ldrb	r3, [r3, #0]
    3ac6:	b29b      	uxth	r3, r3
    3ac8:	4413      	add	r3, r2
    3aca:	b29b      	uxth	r3, r3
    3acc:	4618      	mov	r0, r3
    3ace:	46bd      	mov	sp, r7
    3ad0:	bc80      	pop	{r7}
    3ad2:	4770      	bx	lr
    3ad4:	20000500 	.word	0x20000500
    3ad8:	20000501 	.word	0x20000501

00003adc <print>:
    3adc:	b580      	push	{r7, lr}
    3ade:	b084      	sub	sp, #16
    3ae0:	af00      	add	r7, sp, #0
    3ae2:	6078      	str	r0, [r7, #4]
    3ae4:	e011      	b.n	3b0a <print+0x2e>
    3ae6:	7bfb      	ldrb	r3, [r7, #15]
    3ae8:	2b0a      	cmp	r3, #10
    3aea:	d004      	beq.n	3af6 <print+0x1a>
    3aec:	2b0d      	cmp	r3, #13
    3aee:	d002      	beq.n	3af6 <print+0x1a>
    3af0:	2b08      	cmp	r3, #8
    3af2:	d003      	beq.n	3afc <print+0x20>
    3af4:	e005      	b.n	3b02 <print+0x26>
    3af6:	f7ff feb7 	bl	3868 <new_line>
    3afa:	e006      	b.n	3b0a <print+0x2e>
    3afc:	f000 f89b 	bl	3c36 <cursor_left>
    3b00:	e003      	b.n	3b0a <print+0x2e>
    3b02:	7bfb      	ldrb	r3, [r7, #15]
    3b04:	4618      	mov	r0, r3
    3b06:	f7ff ff31 	bl	396c <put_char>
    3b0a:	687b      	ldr	r3, [r7, #4]
    3b0c:	1c5a      	adds	r2, r3, #1
    3b0e:	607a      	str	r2, [r7, #4]
    3b10:	781b      	ldrb	r3, [r3, #0]
    3b12:	73fb      	strb	r3, [r7, #15]
    3b14:	7bfb      	ldrb	r3, [r7, #15]
    3b16:	2b00      	cmp	r3, #0
    3b18:	d1e5      	bne.n	3ae6 <print+0xa>
    3b1a:	bf00      	nop
    3b1c:	3710      	adds	r7, #16
    3b1e:	46bd      	mov	sp, r7
    3b20:	bd80      	pop	{r7, pc}

00003b22 <println>:
    3b22:	b580      	push	{r7, lr}
    3b24:	b082      	sub	sp, #8
    3b26:	af00      	add	r7, sp, #0
    3b28:	6078      	str	r0, [r7, #4]
    3b2a:	6878      	ldr	r0, [r7, #4]
    3b2c:	f7ff ffd6 	bl	3adc <print>
    3b30:	f7ff fe9a 	bl	3868 <new_line>
    3b34:	bf00      	nop
    3b36:	3708      	adds	r7, #8
    3b38:	46bd      	mov	sp, r7
    3b3a:	bd80      	pop	{r7, pc}

00003b3c <print_int>:
    3b3c:	b580      	push	{r7, lr}
    3b3e:	b08a      	sub	sp, #40	; 0x28
    3b40:	af00      	add	r7, sp, #0
    3b42:	6078      	str	r0, [r7, #4]
    3b44:	460b      	mov	r3, r1
    3b46:	70fb      	strb	r3, [r7, #3]
    3b48:	2300      	movs	r3, #0
    3b4a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3b4e:	2300      	movs	r3, #0
    3b50:	76fb      	strb	r3, [r7, #27]
    3b52:	2320      	movs	r3, #32
    3b54:	76bb      	strb	r3, [r7, #26]
    3b56:	230e      	movs	r3, #14
    3b58:	623b      	str	r3, [r7, #32]
    3b5a:	687b      	ldr	r3, [r7, #4]
    3b5c:	2b00      	cmp	r3, #0
    3b5e:	da27      	bge.n	3bb0 <print_int+0x74>
    3b60:	2301      	movs	r3, #1
    3b62:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3b66:	687b      	ldr	r3, [r7, #4]
    3b68:	425b      	negs	r3, r3
    3b6a:	607b      	str	r3, [r7, #4]
    3b6c:	e020      	b.n	3bb0 <print_int+0x74>
    3b6e:	78fa      	ldrb	r2, [r7, #3]
    3b70:	687b      	ldr	r3, [r7, #4]
    3b72:	fb93 f1f2 	sdiv	r1, r3, r2
    3b76:	fb02 f201 	mul.w	r2, r2, r1
    3b7a:	1a9b      	subs	r3, r3, r2
    3b7c:	61fb      	str	r3, [r7, #28]
    3b7e:	69fb      	ldr	r3, [r7, #28]
    3b80:	2b09      	cmp	r3, #9
    3b82:	dd02      	ble.n	3b8a <print_int+0x4e>
    3b84:	69fb      	ldr	r3, [r7, #28]
    3b86:	3307      	adds	r3, #7
    3b88:	61fb      	str	r3, [r7, #28]
    3b8a:	6a3b      	ldr	r3, [r7, #32]
    3b8c:	3b01      	subs	r3, #1
    3b8e:	623b      	str	r3, [r7, #32]
    3b90:	69fb      	ldr	r3, [r7, #28]
    3b92:	3330      	adds	r3, #48	; 0x30
    3b94:	61fb      	str	r3, [r7, #28]
    3b96:	69fb      	ldr	r3, [r7, #28]
    3b98:	b2d9      	uxtb	r1, r3
    3b9a:	f107 020c 	add.w	r2, r7, #12
    3b9e:	6a3b      	ldr	r3, [r7, #32]
    3ba0:	4413      	add	r3, r2
    3ba2:	460a      	mov	r2, r1
    3ba4:	701a      	strb	r2, [r3, #0]
    3ba6:	78fb      	ldrb	r3, [r7, #3]
    3ba8:	687a      	ldr	r2, [r7, #4]
    3baa:	fb92 f3f3 	sdiv	r3, r2, r3
    3bae:	607b      	str	r3, [r7, #4]
    3bb0:	6a3b      	ldr	r3, [r7, #32]
    3bb2:	2b01      	cmp	r3, #1
    3bb4:	dd02      	ble.n	3bbc <print_int+0x80>
    3bb6:	687b      	ldr	r3, [r7, #4]
    3bb8:	2b00      	cmp	r3, #0
    3bba:	d1d8      	bne.n	3b6e <print_int+0x32>
    3bbc:	6a3b      	ldr	r3, [r7, #32]
    3bbe:	2b0e      	cmp	r3, #14
    3bc0:	d108      	bne.n	3bd4 <print_int+0x98>
    3bc2:	6a3b      	ldr	r3, [r7, #32]
    3bc4:	3b01      	subs	r3, #1
    3bc6:	623b      	str	r3, [r7, #32]
    3bc8:	f107 020c 	add.w	r2, r7, #12
    3bcc:	6a3b      	ldr	r3, [r7, #32]
    3bce:	4413      	add	r3, r2
    3bd0:	2230      	movs	r2, #48	; 0x30
    3bd2:	701a      	strb	r2, [r3, #0]
    3bd4:	78fb      	ldrb	r3, [r7, #3]
    3bd6:	2b0a      	cmp	r3, #10
    3bd8:	d10d      	bne.n	3bf6 <print_int+0xba>
    3bda:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    3bde:	2b00      	cmp	r3, #0
    3be0:	d009      	beq.n	3bf6 <print_int+0xba>
    3be2:	6a3b      	ldr	r3, [r7, #32]
    3be4:	3b01      	subs	r3, #1
    3be6:	623b      	str	r3, [r7, #32]
    3be8:	f107 020c 	add.w	r2, r7, #12
    3bec:	6a3b      	ldr	r3, [r7, #32]
    3bee:	4413      	add	r3, r2
    3bf0:	222d      	movs	r2, #45	; 0x2d
    3bf2:	701a      	strb	r2, [r3, #0]
    3bf4:	e014      	b.n	3c20 <print_int+0xe4>
    3bf6:	78fb      	ldrb	r3, [r7, #3]
    3bf8:	2b10      	cmp	r3, #16
    3bfa:	d111      	bne.n	3c20 <print_int+0xe4>
    3bfc:	6a3b      	ldr	r3, [r7, #32]
    3bfe:	3b01      	subs	r3, #1
    3c00:	623b      	str	r3, [r7, #32]
    3c02:	f107 020c 	add.w	r2, r7, #12
    3c06:	6a3b      	ldr	r3, [r7, #32]
    3c08:	4413      	add	r3, r2
    3c0a:	2278      	movs	r2, #120	; 0x78
    3c0c:	701a      	strb	r2, [r3, #0]
    3c0e:	6a3b      	ldr	r3, [r7, #32]
    3c10:	3b01      	subs	r3, #1
    3c12:	623b      	str	r3, [r7, #32]
    3c14:	f107 020c 	add.w	r2, r7, #12
    3c18:	6a3b      	ldr	r3, [r7, #32]
    3c1a:	4413      	add	r3, r2
    3c1c:	2230      	movs	r2, #48	; 0x30
    3c1e:	701a      	strb	r2, [r3, #0]
    3c20:	f107 020c 	add.w	r2, r7, #12
    3c24:	6a3b      	ldr	r3, [r7, #32]
    3c26:	4413      	add	r3, r2
    3c28:	4618      	mov	r0, r3
    3c2a:	f7ff ff57 	bl	3adc <print>
    3c2e:	bf00      	nop
    3c30:	3728      	adds	r7, #40	; 0x28
    3c32:	46bd      	mov	sp, r7
    3c34:	bd80      	pop	{r7, pc}

00003c36 <cursor_left>:
    3c36:	b480      	push	{r7}
    3c38:	af00      	add	r7, sp, #0
    3c3a:	4b1b      	ldr	r3, [pc, #108]	; (3ca8 <cursor_left+0x72>)
    3c3c:	781b      	ldrb	r3, [r3, #0]
    3c3e:	2b01      	cmp	r3, #1
    3c40:	d010      	beq.n	3c64 <cursor_left+0x2e>
    3c42:	2b02      	cmp	r3, #2
    3c44:	d01a      	beq.n	3c7c <cursor_left+0x46>
    3c46:	2b00      	cmp	r3, #0
    3c48:	d000      	beq.n	3c4c <cursor_left+0x16>
    3c4a:	e028      	b.n	3c9e <cursor_left+0x68>
    3c4c:	4b17      	ldr	r3, [pc, #92]	; (3cac <cursor_left+0x76>)
    3c4e:	781b      	ldrb	r3, [r3, #0]
    3c50:	3b04      	subs	r3, #4
    3c52:	2b00      	cmp	r3, #0
    3c54:	db1e      	blt.n	3c94 <cursor_left+0x5e>
    3c56:	4b15      	ldr	r3, [pc, #84]	; (3cac <cursor_left+0x76>)
    3c58:	781b      	ldrb	r3, [r3, #0]
    3c5a:	3b04      	subs	r3, #4
    3c5c:	b2da      	uxtb	r2, r3
    3c5e:	4b13      	ldr	r3, [pc, #76]	; (3cac <cursor_left+0x76>)
    3c60:	701a      	strb	r2, [r3, #0]
    3c62:	e017      	b.n	3c94 <cursor_left+0x5e>
    3c64:	4b11      	ldr	r3, [pc, #68]	; (3cac <cursor_left+0x76>)
    3c66:	781b      	ldrb	r3, [r3, #0]
    3c68:	3b08      	subs	r3, #8
    3c6a:	2b00      	cmp	r3, #0
    3c6c:	db14      	blt.n	3c98 <cursor_left+0x62>
    3c6e:	4b0f      	ldr	r3, [pc, #60]	; (3cac <cursor_left+0x76>)
    3c70:	781b      	ldrb	r3, [r3, #0]
    3c72:	3b08      	subs	r3, #8
    3c74:	b2da      	uxtb	r2, r3
    3c76:	4b0d      	ldr	r3, [pc, #52]	; (3cac <cursor_left+0x76>)
    3c78:	701a      	strb	r2, [r3, #0]
    3c7a:	e00d      	b.n	3c98 <cursor_left+0x62>
    3c7c:	4b0b      	ldr	r3, [pc, #44]	; (3cac <cursor_left+0x76>)
    3c7e:	781b      	ldrb	r3, [r3, #0]
    3c80:	3b06      	subs	r3, #6
    3c82:	2b00      	cmp	r3, #0
    3c84:	db0a      	blt.n	3c9c <cursor_left+0x66>
    3c86:	4b09      	ldr	r3, [pc, #36]	; (3cac <cursor_left+0x76>)
    3c88:	781b      	ldrb	r3, [r3, #0]
    3c8a:	3b06      	subs	r3, #6
    3c8c:	b2da      	uxtb	r2, r3
    3c8e:	4b07      	ldr	r3, [pc, #28]	; (3cac <cursor_left+0x76>)
    3c90:	701a      	strb	r2, [r3, #0]
    3c92:	e003      	b.n	3c9c <cursor_left+0x66>
    3c94:	bf00      	nop
    3c96:	e002      	b.n	3c9e <cursor_left+0x68>
    3c98:	bf00      	nop
    3c9a:	e000      	b.n	3c9e <cursor_left+0x68>
    3c9c:	bf00      	nop
    3c9e:	bf00      	nop
    3ca0:	46bd      	mov	sp, r7
    3ca2:	bc80      	pop	{r7}
    3ca4:	4770      	bx	lr
    3ca6:	bf00      	nop
    3ca8:	20000064 	.word	0x20000064
    3cac:	20000500 	.word	0x20000500

00003cb0 <text_scroller>:
    3cb0:	b580      	push	{r7, lr}
    3cb2:	b084      	sub	sp, #16
    3cb4:	af00      	add	r7, sp, #0
    3cb6:	6078      	str	r0, [r7, #4]
    3cb8:	460b      	mov	r3, r1
    3cba:	70fb      	strb	r3, [r7, #3]
    3cbc:	f7fd ffa0 	bl	1c00 <gfx_cls>
    3cc0:	2002      	movs	r0, #2
    3cc2:	f7ff fdc1 	bl	3848 <select_font>
    3cc6:	687b      	ldr	r3, [r7, #4]
    3cc8:	1c5a      	adds	r2, r3, #1
    3cca:	607a      	str	r2, [r7, #4]
    3ccc:	781b      	ldrb	r3, [r3, #0]
    3cce:	73fb      	strb	r3, [r7, #15]
    3cd0:	e03a      	b.n	3d48 <text_scroller+0x98>
    3cd2:	2120      	movs	r1, #32
    3cd4:	2000      	movs	r0, #0
    3cd6:	f7ff fed5 	bl	3a84 <set_cursor>
    3cda:	e00f      	b.n	3cfc <text_scroller+0x4c>
    3cdc:	7bfb      	ldrb	r3, [r7, #15]
    3cde:	4618      	mov	r0, r3
    3ce0:	f7ff fe44 	bl	396c <put_char>
    3ce4:	687b      	ldr	r3, [r7, #4]
    3ce6:	1c5a      	adds	r2, r3, #1
    3ce8:	607a      	str	r2, [r7, #4]
    3cea:	781b      	ldrb	r3, [r3, #0]
    3cec:	73fb      	strb	r3, [r7, #15]
    3cee:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3cf2:	f000 fb37 	bl	4364 <btn_query_down>
    3cf6:	4603      	mov	r3, r0
    3cf8:	2b00      	cmp	r3, #0
    3cfa:	d144      	bne.n	3d86 <text_scroller+0xd6>
    3cfc:	7bfb      	ldrb	r3, [r7, #15]
    3cfe:	2b00      	cmp	r3, #0
    3d00:	d002      	beq.n	3d08 <text_scroller+0x58>
    3d02:	7bfb      	ldrb	r3, [r7, #15]
    3d04:	2b0a      	cmp	r3, #10
    3d06:	d1e9      	bne.n	3cdc <text_scroller+0x2c>
    3d08:	2300      	movs	r3, #0
    3d0a:	73bb      	strb	r3, [r7, #14]
    3d0c:	e014      	b.n	3d38 <text_scroller+0x88>
    3d0e:	78fb      	ldrb	r3, [r7, #3]
    3d10:	4a24      	ldr	r2, [pc, #144]	; (3da4 <text_scroller+0xf4>)
    3d12:	6013      	str	r3, [r2, #0]
    3d14:	bf00      	nop
    3d16:	4b23      	ldr	r3, [pc, #140]	; (3da4 <text_scroller+0xf4>)
    3d18:	681b      	ldr	r3, [r3, #0]
    3d1a:	2b00      	cmp	r3, #0
    3d1c:	d1fb      	bne.n	3d16 <text_scroller+0x66>
    3d1e:	2001      	movs	r0, #1
    3d20:	f7fd ffc2 	bl	1ca8 <gfx_scroll_up>
    3d24:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d28:	f000 fb1c 	bl	4364 <btn_query_down>
    3d2c:	4603      	mov	r3, r0
    3d2e:	2b00      	cmp	r3, #0
    3d30:	d12b      	bne.n	3d8a <text_scroller+0xda>
    3d32:	7bbb      	ldrb	r3, [r7, #14]
    3d34:	3301      	adds	r3, #1
    3d36:	73bb      	strb	r3, [r7, #14]
    3d38:	7bbb      	ldrb	r3, [r7, #14]
    3d3a:	2b07      	cmp	r3, #7
    3d3c:	d9e7      	bls.n	3d0e <text_scroller+0x5e>
    3d3e:	687b      	ldr	r3, [r7, #4]
    3d40:	1c5a      	adds	r2, r3, #1
    3d42:	607a      	str	r2, [r7, #4]
    3d44:	781b      	ldrb	r3, [r3, #0]
    3d46:	73fb      	strb	r3, [r7, #15]
    3d48:	7bfb      	ldrb	r3, [r7, #15]
    3d4a:	2b00      	cmp	r3, #0
    3d4c:	d1c1      	bne.n	3cd2 <text_scroller+0x22>
    3d4e:	2300      	movs	r3, #0
    3d50:	73fb      	strb	r3, [r7, #15]
    3d52:	e014      	b.n	3d7e <text_scroller+0xce>
    3d54:	78fb      	ldrb	r3, [r7, #3]
    3d56:	4a13      	ldr	r2, [pc, #76]	; (3da4 <text_scroller+0xf4>)
    3d58:	6013      	str	r3, [r2, #0]
    3d5a:	bf00      	nop
    3d5c:	4b11      	ldr	r3, [pc, #68]	; (3da4 <text_scroller+0xf4>)
    3d5e:	681b      	ldr	r3, [r3, #0]
    3d60:	2b00      	cmp	r3, #0
    3d62:	d1fb      	bne.n	3d5c <text_scroller+0xac>
    3d64:	2001      	movs	r0, #1
    3d66:	f7fd ff9f 	bl	1ca8 <gfx_scroll_up>
    3d6a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d6e:	f000 faf9 	bl	4364 <btn_query_down>
    3d72:	4603      	mov	r3, r0
    3d74:	2b00      	cmp	r3, #0
    3d76:	d10a      	bne.n	3d8e <text_scroller+0xde>
    3d78:	7bfb      	ldrb	r3, [r7, #15]
    3d7a:	3301      	adds	r3, #1
    3d7c:	73fb      	strb	r3, [r7, #15]
    3d7e:	7bfb      	ldrb	r3, [r7, #15]
    3d80:	2b1f      	cmp	r3, #31
    3d82:	d9e7      	bls.n	3d54 <text_scroller+0xa4>
    3d84:	e004      	b.n	3d90 <text_scroller+0xe0>
    3d86:	bf00      	nop
    3d88:	e002      	b.n	3d90 <text_scroller+0xe0>
    3d8a:	bf00      	nop
    3d8c:	e000      	b.n	3d90 <text_scroller+0xe0>
    3d8e:	bf00      	nop
    3d90:	f7fd ff36 	bl	1c00 <gfx_cls>
    3d94:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d98:	f000 fac2 	bl	4320 <btn_wait_up>
    3d9c:	bf00      	nop
    3d9e:	3710      	adds	r7, #16
    3da0:	46bd      	mov	sp, r7
    3da2:	bd80      	pop	{r7, pc}
    3da4:	200004fc 	.word	0x200004fc

00003da8 <prompt_btn>:
    3da8:	b580      	push	{r7, lr}
    3daa:	af00      	add	r7, sp, #0
    3dac:	4802      	ldr	r0, [pc, #8]	; (3db8 <prompt_btn+0x10>)
    3dae:	f7ff fe95 	bl	3adc <print>
    3db2:	bf00      	nop
    3db4:	bd80      	pop	{r7, pc}
    3db6:	bf00      	nop
    3db8:	00004a0c 	.word	0x00004a0c

00003dbc <clear_screen>:
    3dbc:	b580      	push	{r7, lr}
    3dbe:	af00      	add	r7, sp, #0
    3dc0:	f7fd ff1e 	bl	1c00 <gfx_cls>
    3dc4:	4b03      	ldr	r3, [pc, #12]	; (3dd4 <clear_screen+0x18>)
    3dc6:	2200      	movs	r2, #0
    3dc8:	701a      	strb	r2, [r3, #0]
    3dca:	4b03      	ldr	r3, [pc, #12]	; (3dd8 <clear_screen+0x1c>)
    3dcc:	2200      	movs	r2, #0
    3dce:	701a      	strb	r2, [r3, #0]
    3dd0:	bf00      	nop
    3dd2:	bd80      	pop	{r7, pc}
    3dd4:	20000500 	.word	0x20000500
    3dd8:	20000501 	.word	0x20000501

00003ddc <tvout_init>:
    3ddc:	b580      	push	{r7, lr}
    3dde:	af00      	add	r7, sp, #0
    3de0:	4b45      	ldr	r3, [pc, #276]	; (3ef8 <tvout_init+0x11c>)
    3de2:	4a46      	ldr	r2, [pc, #280]	; (3efc <tvout_init+0x120>)
    3de4:	601a      	str	r2, [r3, #0]
    3de6:	4b46      	ldr	r3, [pc, #280]	; (3f00 <tvout_init+0x124>)
    3de8:	4a46      	ldr	r2, [pc, #280]	; (3f04 <tvout_init+0x128>)
    3dea:	601a      	str	r2, [r3, #0]
    3dec:	220a      	movs	r2, #10
    3dee:	2108      	movs	r1, #8
    3df0:	4841      	ldr	r0, [pc, #260]	; (3ef8 <tvout_init+0x11c>)
    3df2:	f7fd fd80 	bl	18f6 <config_pin>
    3df6:	4b40      	ldr	r3, [pc, #256]	; (3ef8 <tvout_init+0x11c>)
    3df8:	2200      	movs	r2, #0
    3dfa:	60da      	str	r2, [r3, #12]
    3dfc:	4a42      	ldr	r2, [pc, #264]	; (3f08 <tvout_init+0x12c>)
    3dfe:	4b42      	ldr	r3, [pc, #264]	; (3f08 <tvout_init+0x12c>)
    3e00:	699b      	ldr	r3, [r3, #24]
    3e02:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3e06:	6193      	str	r3, [r2, #24]
    3e08:	4b40      	ldr	r3, [pc, #256]	; (3f0c <tvout_init+0x130>)
    3e0a:	2278      	movs	r2, #120	; 0x78
    3e0c:	619a      	str	r2, [r3, #24]
    3e0e:	4b3f      	ldr	r3, [pc, #252]	; (3f0c <tvout_init+0x130>)
    3e10:	2201      	movs	r2, #1
    3e12:	621a      	str	r2, [r3, #32]
    3e14:	4b3d      	ldr	r3, [pc, #244]	; (3f0c <tvout_init+0x130>)
    3e16:	2284      	movs	r2, #132	; 0x84
    3e18:	601a      	str	r2, [r3, #0]
    3e1a:	4b3c      	ldr	r3, [pc, #240]	; (3f0c <tvout_init+0x130>)
    3e1c:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3e20:	62da      	str	r2, [r3, #44]	; 0x2c
    3e22:	4b3a      	ldr	r3, [pc, #232]	; (3f0c <tvout_init+0x130>)
    3e24:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3e28:	635a      	str	r2, [r3, #52]	; 0x34
    3e2a:	4b38      	ldr	r3, [pc, #224]	; (3f0c <tvout_init+0x130>)
    3e2c:	f240 126d 	movw	r2, #365	; 0x16d
    3e30:	639a      	str	r2, [r3, #56]	; 0x38
    3e32:	4a36      	ldr	r2, [pc, #216]	; (3f0c <tvout_init+0x130>)
    3e34:	4b35      	ldr	r3, [pc, #212]	; (3f0c <tvout_init+0x130>)
    3e36:	695b      	ldr	r3, [r3, #20]
    3e38:	f043 0301 	orr.w	r3, r3, #1
    3e3c:	6153      	str	r3, [r2, #20]
    3e3e:	4b33      	ldr	r3, [pc, #204]	; (3f0c <tvout_init+0x130>)
    3e40:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    3e44:	645a      	str	r2, [r3, #68]	; 0x44
    3e46:	4b31      	ldr	r3, [pc, #196]	; (3f0c <tvout_init+0x130>)
    3e48:	2200      	movs	r2, #0
    3e4a:	611a      	str	r2, [r3, #16]
    3e4c:	4a2f      	ldr	r2, [pc, #188]	; (3f0c <tvout_init+0x130>)
    3e4e:	4b2f      	ldr	r3, [pc, #188]	; (3f0c <tvout_init+0x130>)
    3e50:	68db      	ldr	r3, [r3, #12]
    3e52:	f043 0301 	orr.w	r3, r3, #1
    3e56:	60d3      	str	r3, [r2, #12]
    3e58:	2100      	movs	r1, #0
    3e5a:	2019      	movs	r0, #25
    3e5c:	f7fe fc8a 	bl	2774 <set_int_priority>
    3e60:	2100      	movs	r1, #0
    3e62:	201b      	movs	r0, #27
    3e64:	f7fe fc86 	bl	2774 <set_int_priority>
    3e68:	201b      	movs	r0, #27
    3e6a:	f7fe fbc9 	bl	2600 <enable_interrupt>
    3e6e:	2019      	movs	r0, #25
    3e70:	f7fe fbc6 	bl	2600 <enable_interrupt>
    3e74:	4a25      	ldr	r2, [pc, #148]	; (3f0c <tvout_init+0x130>)
    3e76:	4b25      	ldr	r3, [pc, #148]	; (3f0c <tvout_init+0x130>)
    3e78:	681b      	ldr	r3, [r3, #0]
    3e7a:	f043 0301 	orr.w	r3, r3, #1
    3e7e:	6013      	str	r3, [r2, #0]
    3e80:	220a      	movs	r2, #10
    3e82:	2100      	movs	r1, #0
    3e84:	4822      	ldr	r0, [pc, #136]	; (3f10 <tvout_init+0x134>)
    3e86:	f7fd fd36 	bl	18f6 <config_pin>
    3e8a:	220a      	movs	r2, #10
    3e8c:	2101      	movs	r1, #1
    3e8e:	4820      	ldr	r0, [pc, #128]	; (3f10 <tvout_init+0x134>)
    3e90:	f7fd fd31 	bl	18f6 <config_pin>
    3e94:	4a1c      	ldr	r2, [pc, #112]	; (3f08 <tvout_init+0x12c>)
    3e96:	4b1c      	ldr	r3, [pc, #112]	; (3f08 <tvout_init+0x12c>)
    3e98:	69db      	ldr	r3, [r3, #28]
    3e9a:	f043 0302 	orr.w	r3, r3, #2
    3e9e:	61d3      	str	r3, [r2, #28]
    3ea0:	4b1c      	ldr	r3, [pc, #112]	; (3f14 <tvout_init+0x138>)
    3ea2:	f246 0278 	movw	r2, #24696	; 0x6078
    3ea6:	61da      	str	r2, [r3, #28]
    3ea8:	4b1a      	ldr	r3, [pc, #104]	; (3f14 <tvout_init+0x138>)
    3eaa:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    3eae:	621a      	str	r2, [r3, #32]
    3eb0:	4b18      	ldr	r3, [pc, #96]	; (3f14 <tvout_init+0x138>)
    3eb2:	2284      	movs	r2, #132	; 0x84
    3eb4:	601a      	str	r2, [r3, #0]
    3eb6:	4b17      	ldr	r3, [pc, #92]	; (3f14 <tvout_init+0x138>)
    3eb8:	2213      	movs	r2, #19
    3eba:	62da      	str	r2, [r3, #44]	; 0x2c
    3ebc:	4b15      	ldr	r3, [pc, #84]	; (3f14 <tvout_init+0x138>)
    3ebe:	220a      	movs	r2, #10
    3ec0:	63da      	str	r2, [r3, #60]	; 0x3c
    3ec2:	4b14      	ldr	r3, [pc, #80]	; (3f14 <tvout_init+0x138>)
    3ec4:	220a      	movs	r2, #10
    3ec6:	641a      	str	r2, [r3, #64]	; 0x40
    3ec8:	4a12      	ldr	r2, [pc, #72]	; (3f14 <tvout_init+0x138>)
    3eca:	4b12      	ldr	r3, [pc, #72]	; (3f14 <tvout_init+0x138>)
    3ecc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    3ece:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3ed2:	6453      	str	r3, [r2, #68]	; 0x44
    3ed4:	4a0f      	ldr	r2, [pc, #60]	; (3f14 <tvout_init+0x138>)
    3ed6:	4b0f      	ldr	r3, [pc, #60]	; (3f14 <tvout_init+0x138>)
    3ed8:	695b      	ldr	r3, [r3, #20]
    3eda:	f043 0301 	orr.w	r3, r3, #1
    3ede:	6153      	str	r3, [r2, #20]
    3ee0:	4b0c      	ldr	r3, [pc, #48]	; (3f14 <tvout_init+0x138>)
    3ee2:	2200      	movs	r2, #0
    3ee4:	611a      	str	r2, [r3, #16]
    3ee6:	4a0b      	ldr	r2, [pc, #44]	; (3f14 <tvout_init+0x138>)
    3ee8:	4b0a      	ldr	r3, [pc, #40]	; (3f14 <tvout_init+0x138>)
    3eea:	681b      	ldr	r3, [r3, #0]
    3eec:	f043 0301 	orr.w	r3, r3, #1
    3ef0:	6013      	str	r3, [r2, #0]
    3ef2:	bf00      	nop
    3ef4:	bd80      	pop	{r7, pc}
    3ef6:	bf00      	nop
    3ef8:	40010800 	.word	0x40010800
    3efc:	88883333 	.word	0x88883333
    3f00:	40010804 	.word	0x40010804
    3f04:	88444444 	.word	0x88444444
    3f08:	40021000 	.word	0x40021000
    3f0c:	40012c00 	.word	0x40012c00
    3f10:	40010c00 	.word	0x40010c00
    3f14:	40000400 	.word	0x40000400

00003f18 <TV_OUT_handler>:
    3f18:	4668      	mov	r0, sp
    3f1a:	f020 0107 	bic.w	r1, r0, #7
    3f1e:	468d      	mov	sp, r1
    3f20:	b571      	push	{r0, r4, r5, r6, lr}
    3f22:	4b41      	ldr	r3, [pc, #260]	; (4028 <TV_OUT_handler+0x110>)
    3f24:	7818      	ldrb	r0, [r3, #0]
    3f26:	2801      	cmp	r0, #1
    3f28:	d96d      	bls.n	4006 <TV_OUT_handler+0xee>
    3f2a:	4b40      	ldr	r3, [pc, #256]	; (402c <TV_OUT_handler+0x114>)
    3f2c:	881b      	ldrh	r3, [r3, #0]
    3f2e:	f013 0f04 	tst.w	r3, #4
    3f32:	d05f      	beq.n	3ff4 <TV_OUT_handler+0xdc>
    3f34:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3f38:	4a3d      	ldr	r2, [pc, #244]	; (4030 <TV_OUT_handler+0x118>)
    3f3a:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    3f3e:	88da      	ldrh	r2, [r3, #6]
    3f40:	493c      	ldr	r1, [pc, #240]	; (4034 <TV_OUT_handler+0x11c>)
    3f42:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3f44:	4293      	cmp	r3, r2
    3f46:	d3fc      	bcc.n	3f42 <TV_OUT_handler+0x2a>
    3f48:	4b3b      	ldr	r3, [pc, #236]	; (4038 <TV_OUT_handler+0x120>)
    3f4a:	461a      	mov	r2, r3
    3f4c:	6812      	ldr	r2, [r2, #0]
    3f4e:	f002 020f 	and.w	r2, r2, #15
    3f52:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3f56:	4497      	add	pc, r2
    3f58:	bf00      	nop
    3f5a:	bf00      	nop
    3f5c:	bf00      	nop
    3f5e:	bf00      	nop
    3f60:	bf00      	nop
    3f62:	bf00      	nop
    3f64:	bf00      	nop
    3f66:	bf00      	nop
    3f68:	bf00      	nop
    3f6a:	bf00      	nop
    3f6c:	bf00      	nop
    3f6e:	bf00      	nop
    3f70:	bf00      	nop
    3f72:	bf00      	nop
    3f74:	bf00      	nop
    3f76:	bf00      	nop
    3f78:	4d30      	ldr	r5, [pc, #192]	; (403c <TV_OUT_handler+0x124>)
    3f7a:	6a2e      	ldr	r6, [r5, #32]
    3f7c:	4a2c      	ldr	r2, [pc, #176]	; (4030 <TV_OUT_handler+0x118>)
    3f7e:	00c1      	lsls	r1, r0, #3
    3f80:	180b      	adds	r3, r1, r0
    3f82:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    3f86:	8a1c      	ldrh	r4, [r3, #16]
    3f88:	4334      	orrs	r4, r6
    3f8a:	622c      	str	r4, [r5, #32]
    3f8c:	4c2c      	ldr	r4, [pc, #176]	; (4040 <TV_OUT_handler+0x128>)
    3f8e:	8825      	ldrh	r5, [r4, #0]
    3f90:	b2ad      	uxth	r5, r5
    3f92:	7a1c      	ldrb	r4, [r3, #8]
    3f94:	7a5b      	ldrb	r3, [r3, #9]
    3f96:	fb95 f5f3 	sdiv	r5, r5, r3
    3f9a:	4b2a      	ldr	r3, [pc, #168]	; (4044 <TV_OUT_handler+0x12c>)
    3f9c:	fb04 3505 	mla	r5, r4, r5, r3
    3fa0:	4408      	add	r0, r1
    3fa2:	eb02 0240 	add.w	r2, r2, r0, lsl #1
    3fa6:	7a90      	ldrb	r0, [r2, #10]
    3fa8:	b1e4      	cbz	r4, 3fe4 <TV_OUT_handler+0xcc>
    3faa:	4629      	mov	r1, r5
    3fac:	4c26      	ldr	r4, [pc, #152]	; (4048 <TV_OUT_handler+0x130>)
    3fae:	4e20      	ldr	r6, [pc, #128]	; (4030 <TV_OUT_handler+0x118>)
    3fb0:	f8df e074 	ldr.w	lr, [pc, #116]	; 4028 <TV_OUT_handler+0x110>
    3fb4:	780b      	ldrb	r3, [r1, #0]
    3fb6:	091b      	lsrs	r3, r3, #4
    3fb8:	8023      	strh	r3, [r4, #0]
    3fba:	4602      	mov	r2, r0
    3fbc:	3a01      	subs	r2, #1
    3fbe:	d1fd      	bne.n	3fbc <TV_OUT_handler+0xa4>
    3fc0:	f811 3b01 	ldrb.w	r3, [r1], #1
    3fc4:	f003 030f 	and.w	r3, r3, #15
    3fc8:	8023      	strh	r3, [r4, #0]
    3fca:	4602      	mov	r2, r0
    3fcc:	3a01      	subs	r2, #1
    3fce:	d1fd      	bne.n	3fcc <TV_OUT_handler+0xb4>
    3fd0:	1b4a      	subs	r2, r1, r5
    3fd2:	f89e 3000 	ldrb.w	r3, [lr]
    3fd6:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    3fda:	eb06 0343 	add.w	r3, r6, r3, lsl #1
    3fde:	7a1b      	ldrb	r3, [r3, #8]
    3fe0:	429a      	cmp	r2, r3
    3fe2:	d3e7      	bcc.n	3fb4 <TV_OUT_handler+0x9c>
    3fe4:	2200      	movs	r2, #0
    3fe6:	4b19      	ldr	r3, [pc, #100]	; (404c <TV_OUT_handler+0x134>)
    3fe8:	60da      	str	r2, [r3, #12]
    3fea:	4a14      	ldr	r2, [pc, #80]	; (403c <TV_OUT_handler+0x124>)
    3fec:	6a13      	ldr	r3, [r2, #32]
    3fee:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    3ff2:	6213      	str	r3, [r2, #32]
    3ff4:	4a0f      	ldr	r2, [pc, #60]	; (4034 <TV_OUT_handler+0x11c>)
    3ff6:	6913      	ldr	r3, [r2, #16]
    3ff8:	f023 0304 	bic.w	r3, r3, #4
    3ffc:	6113      	str	r3, [r2, #16]
    3ffe:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    4002:	4685      	mov	sp, r0
    4004:	4770      	bx	lr
    4006:	4a0d      	ldr	r2, [pc, #52]	; (403c <TV_OUT_handler+0x124>)
    4008:	6a13      	ldr	r3, [r2, #32]
    400a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    400e:	6213      	str	r3, [r2, #32]
    4010:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4014:	6a53      	ldr	r3, [r2, #36]	; 0x24
    4016:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    401a:	d9fb      	bls.n	4014 <TV_OUT_handler+0xfc>
    401c:	4a07      	ldr	r2, [pc, #28]	; (403c <TV_OUT_handler+0x124>)
    401e:	6a13      	ldr	r3, [r2, #32]
    4020:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4024:	6213      	str	r3, [r2, #32]
    4026:	e780      	b.n	3f2a <TV_OUT_handler+0x12>
    4028:	20000502 	.word	0x20000502
    402c:	20000506 	.word	0x20000506
    4030:	00004a24 	.word	0x00004a24
    4034:	40012c00 	.word	0x40012c00
    4038:	40012c24 	.word	0x40012c24
    403c:	40000400 	.word	0x40000400
    4040:	20000508 	.word	0x20000508
    4044:	20002538 	.word	0x20002538
    4048:	4001080c 	.word	0x4001080c
    404c:	40010800 	.word	0x40010800

00004050 <TV_SYNC_handler>:
    4050:	4668      	mov	r0, sp
    4052:	f020 0107 	bic.w	r1, r0, #7
    4056:	468d      	mov	sp, r1
    4058:	b401      	push	{r0}
    405a:	4a89      	ldr	r2, [pc, #548]	; (4280 <TV_SYNC_handler+0x230>)
    405c:	8813      	ldrh	r3, [r2, #0]
    405e:	3301      	adds	r3, #1
    4060:	b29b      	uxth	r3, r3
    4062:	8013      	strh	r3, [r2, #0]
    4064:	4b87      	ldr	r3, [pc, #540]	; (4284 <TV_SYNC_handler+0x234>)
    4066:	881b      	ldrh	r3, [r3, #0]
    4068:	b29b      	uxth	r3, r3
    406a:	2b07      	cmp	r3, #7
    406c:	f200 808e 	bhi.w	418c <TV_SYNC_handler+0x13c>
    4070:	e8df f013 	tbh	[pc, r3, lsl #1]
    4074:	002a0008 	.word	0x002a0008
    4078:	006c004a 	.word	0x006c004a
    407c:	00a30094 	.word	0x00a30094
    4080:	00de00bf 	.word	0x00de00bf
    4084:	4b80      	ldr	r3, [pc, #512]	; (4288 <TV_SYNC_handler+0x238>)
    4086:	881b      	ldrh	r3, [r3, #0]
    4088:	b29b      	uxth	r3, r3
    408a:	b18b      	cbz	r3, 40b0 <TV_SYNC_handler+0x60>
    408c:	4a7e      	ldr	r2, [pc, #504]	; (4288 <TV_SYNC_handler+0x238>)
    408e:	8813      	ldrh	r3, [r2, #0]
    4090:	3301      	adds	r3, #1
    4092:	b29b      	uxth	r3, r3
    4094:	8013      	strh	r3, [r2, #0]
    4096:	8813      	ldrh	r3, [r2, #0]
    4098:	b29b      	uxth	r3, r3
    409a:	2b06      	cmp	r3, #6
    409c:	d176      	bne.n	418c <TV_SYNC_handler+0x13c>
    409e:	2200      	movs	r2, #0
    40a0:	4b79      	ldr	r3, [pc, #484]	; (4288 <TV_SYNC_handler+0x238>)
    40a2:	801a      	strh	r2, [r3, #0]
    40a4:	4a77      	ldr	r2, [pc, #476]	; (4284 <TV_SYNC_handler+0x234>)
    40a6:	8813      	ldrh	r3, [r2, #0]
    40a8:	3301      	adds	r3, #1
    40aa:	b29b      	uxth	r3, r3
    40ac:	8013      	strh	r3, [r2, #0]
    40ae:	e06d      	b.n	418c <TV_SYNC_handler+0x13c>
    40b0:	4b76      	ldr	r3, [pc, #472]	; (428c <TV_SYNC_handler+0x23c>)
    40b2:	f640 02e2 	movw	r2, #2274	; 0x8e2
    40b6:	62da      	str	r2, [r3, #44]	; 0x2c
    40b8:	22a4      	movs	r2, #164	; 0xa4
    40ba:	635a      	str	r2, [r3, #52]	; 0x34
    40bc:	4a72      	ldr	r2, [pc, #456]	; (4288 <TV_SYNC_handler+0x238>)
    40be:	8813      	ldrh	r3, [r2, #0]
    40c0:	3301      	adds	r3, #1
    40c2:	b29b      	uxth	r3, r3
    40c4:	8013      	strh	r3, [r2, #0]
    40c6:	e061      	b.n	418c <TV_SYNC_handler+0x13c>
    40c8:	4b6f      	ldr	r3, [pc, #444]	; (4288 <TV_SYNC_handler+0x238>)
    40ca:	881b      	ldrh	r3, [r3, #0]
    40cc:	b29b      	uxth	r3, r3
    40ce:	b18b      	cbz	r3, 40f4 <TV_SYNC_handler+0xa4>
    40d0:	4a6d      	ldr	r2, [pc, #436]	; (4288 <TV_SYNC_handler+0x238>)
    40d2:	8813      	ldrh	r3, [r2, #0]
    40d4:	3301      	adds	r3, #1
    40d6:	b29b      	uxth	r3, r3
    40d8:	8013      	strh	r3, [r2, #0]
    40da:	8813      	ldrh	r3, [r2, #0]
    40dc:	b29b      	uxth	r3, r3
    40de:	2b06      	cmp	r3, #6
    40e0:	d154      	bne.n	418c <TV_SYNC_handler+0x13c>
    40e2:	2200      	movs	r2, #0
    40e4:	4b68      	ldr	r3, [pc, #416]	; (4288 <TV_SYNC_handler+0x238>)
    40e6:	801a      	strh	r2, [r3, #0]
    40e8:	4a66      	ldr	r2, [pc, #408]	; (4284 <TV_SYNC_handler+0x234>)
    40ea:	8813      	ldrh	r3, [r2, #0]
    40ec:	3301      	adds	r3, #1
    40ee:	b29b      	uxth	r3, r3
    40f0:	8013      	strh	r3, [r2, #0]
    40f2:	e04b      	b.n	418c <TV_SYNC_handler+0x13c>
    40f4:	f240 7294 	movw	r2, #1940	; 0x794
    40f8:	4b64      	ldr	r3, [pc, #400]	; (428c <TV_SYNC_handler+0x23c>)
    40fa:	635a      	str	r2, [r3, #52]	; 0x34
    40fc:	4a62      	ldr	r2, [pc, #392]	; (4288 <TV_SYNC_handler+0x238>)
    40fe:	8813      	ldrh	r3, [r2, #0]
    4100:	3301      	adds	r3, #1
    4102:	b29b      	uxth	r3, r3
    4104:	8013      	strh	r3, [r2, #0]
    4106:	e041      	b.n	418c <TV_SYNC_handler+0x13c>
    4108:	4b5f      	ldr	r3, [pc, #380]	; (4288 <TV_SYNC_handler+0x238>)
    410a:	881b      	ldrh	r3, [r3, #0]
    410c:	b29b      	uxth	r3, r3
    410e:	b153      	cbz	r3, 4126 <TV_SYNC_handler+0xd6>
    4110:	4b5d      	ldr	r3, [pc, #372]	; (4288 <TV_SYNC_handler+0x238>)
    4112:	881b      	ldrh	r3, [r3, #0]
    4114:	b29b      	uxth	r3, r3
    4116:	2b06      	cmp	r3, #6
    4118:	d00e      	beq.n	4138 <TV_SYNC_handler+0xe8>
    411a:	4a5b      	ldr	r2, [pc, #364]	; (4288 <TV_SYNC_handler+0x238>)
    411c:	8813      	ldrh	r3, [r2, #0]
    411e:	3301      	adds	r3, #1
    4120:	b29b      	uxth	r3, r3
    4122:	8013      	strh	r3, [r2, #0]
    4124:	e032      	b.n	418c <TV_SYNC_handler+0x13c>
    4126:	22a4      	movs	r2, #164	; 0xa4
    4128:	4b58      	ldr	r3, [pc, #352]	; (428c <TV_SYNC_handler+0x23c>)
    412a:	635a      	str	r2, [r3, #52]	; 0x34
    412c:	4a56      	ldr	r2, [pc, #344]	; (4288 <TV_SYNC_handler+0x238>)
    412e:	8813      	ldrh	r3, [r2, #0]
    4130:	3301      	adds	r3, #1
    4132:	b29b      	uxth	r3, r3
    4134:	8013      	strh	r3, [r2, #0]
    4136:	e029      	b.n	418c <TV_SYNC_handler+0x13c>
    4138:	4a52      	ldr	r2, [pc, #328]	; (4284 <TV_SYNC_handler+0x234>)
    413a:	8813      	ldrh	r3, [r2, #0]
    413c:	3301      	adds	r3, #1
    413e:	b29b      	uxth	r3, r3
    4140:	8013      	strh	r3, [r2, #0]
    4142:	4b53      	ldr	r3, [pc, #332]	; (4290 <TV_SYNC_handler+0x240>)
    4144:	881b      	ldrh	r3, [r3, #0]
    4146:	f013 0f01 	tst.w	r3, #1
    414a:	d01f      	beq.n	418c <TV_SYNC_handler+0x13c>
    414c:	4a4f      	ldr	r2, [pc, #316]	; (428c <TV_SYNC_handler+0x23c>)
    414e:	f241 13c5 	movw	r3, #4549	; 0x11c5
    4152:	62d3      	str	r3, [r2, #44]	; 0x2c
    4154:	f44f 73a8 	mov.w	r3, #336	; 0x150
    4158:	6353      	str	r3, [r2, #52]	; 0x34
    415a:	494d      	ldr	r1, [pc, #308]	; (4290 <TV_SYNC_handler+0x240>)
    415c:	880b      	ldrh	r3, [r1, #0]
    415e:	f023 0302 	bic.w	r3, r3, #2
    4162:	041b      	lsls	r3, r3, #16
    4164:	0c1b      	lsrs	r3, r3, #16
    4166:	800b      	strh	r3, [r1, #0]
    4168:	4945      	ldr	r1, [pc, #276]	; (4280 <TV_SYNC_handler+0x230>)
    416a:	880b      	ldrh	r3, [r1, #0]
    416c:	f3c3 038d 	ubfx	r3, r3, #2, #14
    4170:	800b      	strh	r3, [r1, #0]
    4172:	4944      	ldr	r1, [pc, #272]	; (4284 <TV_SYNC_handler+0x234>)
    4174:	880b      	ldrh	r3, [r1, #0]
    4176:	3301      	adds	r3, #1
    4178:	b29b      	uxth	r3, r3
    417a:	800b      	strh	r3, [r1, #0]
    417c:	6913      	ldr	r3, [r2, #16]
    417e:	f023 0304 	bic.w	r3, r3, #4
    4182:	6113      	str	r3, [r2, #16]
    4184:	68d3      	ldr	r3, [r2, #12]
    4186:	f043 0304 	orr.w	r3, r3, #4
    418a:	60d3      	str	r3, [r2, #12]
    418c:	4a3f      	ldr	r2, [pc, #252]	; (428c <TV_SYNC_handler+0x23c>)
    418e:	6913      	ldr	r3, [r2, #16]
    4190:	f023 0301 	bic.w	r3, r3, #1
    4194:	6113      	str	r3, [r2, #16]
    4196:	bc01      	pop	{r0}
    4198:	4685      	mov	sp, r0
    419a:	4770      	bx	lr
    419c:	4b3d      	ldr	r3, [pc, #244]	; (4294 <TV_SYNC_handler+0x244>)
    419e:	689b      	ldr	r3, [r3, #8]
    41a0:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    41a4:	f023 030f 	bic.w	r3, r3, #15
    41a8:	b29b      	uxth	r3, r3
    41aa:	4a3b      	ldr	r2, [pc, #236]	; (4298 <TV_SYNC_handler+0x248>)
    41ac:	8013      	strh	r3, [r2, #0]
    41ae:	4a35      	ldr	r2, [pc, #212]	; (4284 <TV_SYNC_handler+0x234>)
    41b0:	8813      	ldrh	r3, [r2, #0]
    41b2:	3301      	adds	r3, #1
    41b4:	b29b      	uxth	r3, r3
    41b6:	8013      	strh	r3, [r2, #0]
    41b8:	e7e8      	b.n	418c <TV_SYNC_handler+0x13c>
    41ba:	4b31      	ldr	r3, [pc, #196]	; (4280 <TV_SYNC_handler+0x230>)
    41bc:	881a      	ldrh	r2, [r3, #0]
    41be:	b292      	uxth	r2, r2
    41c0:	4b36      	ldr	r3, [pc, #216]	; (429c <TV_SYNC_handler+0x24c>)
    41c2:	781b      	ldrb	r3, [r3, #0]
    41c4:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    41c8:	4935      	ldr	r1, [pc, #212]	; (42a0 <TV_SYNC_handler+0x250>)
    41ca:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    41ce:	885b      	ldrh	r3, [r3, #2]
    41d0:	4293      	cmp	r3, r2
    41d2:	d1db      	bne.n	418c <TV_SYNC_handler+0x13c>
    41d4:	4a2b      	ldr	r2, [pc, #172]	; (4284 <TV_SYNC_handler+0x234>)
    41d6:	8813      	ldrh	r3, [r2, #0]
    41d8:	3301      	adds	r3, #1
    41da:	b29b      	uxth	r3, r3
    41dc:	8013      	strh	r3, [r2, #0]
    41de:	2200      	movs	r2, #0
    41e0:	4b29      	ldr	r3, [pc, #164]	; (4288 <TV_SYNC_handler+0x238>)
    41e2:	801a      	strh	r2, [r3, #0]
    41e4:	4a2a      	ldr	r2, [pc, #168]	; (4290 <TV_SYNC_handler+0x240>)
    41e6:	8813      	ldrh	r3, [r2, #0]
    41e8:	b29b      	uxth	r3, r3
    41ea:	f043 0304 	orr.w	r3, r3, #4
    41ee:	8013      	strh	r3, [r2, #0]
    41f0:	e7cc      	b.n	418c <TV_SYNC_handler+0x13c>
    41f2:	4a25      	ldr	r2, [pc, #148]	; (4288 <TV_SYNC_handler+0x238>)
    41f4:	8813      	ldrh	r3, [r2, #0]
    41f6:	3301      	adds	r3, #1
    41f8:	b29b      	uxth	r3, r3
    41fa:	8013      	strh	r3, [r2, #0]
    41fc:	4b20      	ldr	r3, [pc, #128]	; (4280 <TV_SYNC_handler+0x230>)
    41fe:	881a      	ldrh	r2, [r3, #0]
    4200:	b292      	uxth	r2, r2
    4202:	4b26      	ldr	r3, [pc, #152]	; (429c <TV_SYNC_handler+0x24c>)
    4204:	781b      	ldrb	r3, [r3, #0]
    4206:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    420a:	4925      	ldr	r1, [pc, #148]	; (42a0 <TV_SYNC_handler+0x250>)
    420c:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    4210:	889b      	ldrh	r3, [r3, #4]
    4212:	4293      	cmp	r3, r2
    4214:	d1ba      	bne.n	418c <TV_SYNC_handler+0x13c>
    4216:	4a1b      	ldr	r2, [pc, #108]	; (4284 <TV_SYNC_handler+0x234>)
    4218:	8813      	ldrh	r3, [r2, #0]
    421a:	3301      	adds	r3, #1
    421c:	b29b      	uxth	r3, r3
    421e:	8013      	strh	r3, [r2, #0]
    4220:	4a1b      	ldr	r2, [pc, #108]	; (4290 <TV_SYNC_handler+0x240>)
    4222:	8813      	ldrh	r3, [r2, #0]
    4224:	f023 0304 	bic.w	r3, r3, #4
    4228:	041b      	lsls	r3, r3, #16
    422a:	0c1b      	lsrs	r3, r3, #16
    422c:	8013      	strh	r3, [r2, #0]
    422e:	e7ad      	b.n	418c <TV_SYNC_handler+0x13c>
    4230:	4b13      	ldr	r3, [pc, #76]	; (4280 <TV_SYNC_handler+0x230>)
    4232:	881b      	ldrh	r3, [r3, #0]
    4234:	b29b      	uxth	r3, r3
    4236:	f240 1207 	movw	r2, #263	; 0x107
    423a:	4293      	cmp	r3, r2
    423c:	d1a6      	bne.n	418c <TV_SYNC_handler+0x13c>
    423e:	4b14      	ldr	r3, [pc, #80]	; (4290 <TV_SYNC_handler+0x240>)
    4240:	881b      	ldrh	r3, [r3, #0]
    4242:	f013 0f01 	tst.w	r3, #1
    4246:	d003      	beq.n	4250 <TV_SYNC_handler+0x200>
    4248:	f640 02e2 	movw	r2, #2274	; 0x8e2
    424c:	4b0f      	ldr	r3, [pc, #60]	; (428c <TV_SYNC_handler+0x23c>)
    424e:	62da      	str	r2, [r3, #44]	; 0x2c
    4250:	4a0f      	ldr	r2, [pc, #60]	; (4290 <TV_SYNC_handler+0x240>)
    4252:	8813      	ldrh	r3, [r2, #0]
    4254:	b29b      	uxth	r3, r3
    4256:	f083 0301 	eor.w	r3, r3, #1
    425a:	8013      	strh	r3, [r2, #0]
    425c:	8813      	ldrh	r3, [r2, #0]
    425e:	b29b      	uxth	r3, r3
    4260:	f043 0302 	orr.w	r3, r3, #2
    4264:	8013      	strh	r3, [r2, #0]
    4266:	2300      	movs	r3, #0
    4268:	4a05      	ldr	r2, [pc, #20]	; (4280 <TV_SYNC_handler+0x230>)
    426a:	8013      	strh	r3, [r2, #0]
    426c:	4a06      	ldr	r2, [pc, #24]	; (4288 <TV_SYNC_handler+0x238>)
    426e:	8013      	strh	r3, [r2, #0]
    4270:	4a04      	ldr	r2, [pc, #16]	; (4284 <TV_SYNC_handler+0x234>)
    4272:	8013      	strh	r3, [r2, #0]
    4274:	4a05      	ldr	r2, [pc, #20]	; (428c <TV_SYNC_handler+0x23c>)
    4276:	68d3      	ldr	r3, [r2, #12]
    4278:	f023 0304 	bic.w	r3, r3, #4
    427c:	60d3      	str	r3, [r2, #12]
    427e:	e785      	b.n	418c <TV_SYNC_handler+0x13c>
    4280:	2000050a 	.word	0x2000050a
    4284:	20000504 	.word	0x20000504
    4288:	20000508 	.word	0x20000508
    428c:	40012c00 	.word	0x40012c00
    4290:	20000506 	.word	0x20000506
    4294:	40010800 	.word	0x40010800
    4298:	20002534 	.word	0x20002534
    429c:	20000502 	.word	0x20000502
    42a0:	00004a24 	.word	0x00004a24

000042a4 <frame_sync>:
    42a4:	b480      	push	{r7}
    42a6:	af00      	add	r7, sp, #0
    42a8:	bf00      	nop
    42aa:	4b05      	ldr	r3, [pc, #20]	; (42c0 <frame_sync+0x1c>)
    42ac:	881b      	ldrh	r3, [r3, #0]
    42ae:	b29b      	uxth	r3, r3
    42b0:	f003 0302 	and.w	r3, r3, #2
    42b4:	2b00      	cmp	r3, #0
    42b6:	d0f8      	beq.n	42aa <frame_sync+0x6>
    42b8:	bf00      	nop
    42ba:	46bd      	mov	sp, r7
    42bc:	bc80      	pop	{r7}
    42be:	4770      	bx	lr
    42c0:	20000506 	.word	0x20000506

000042c4 <btn_wait_down>:
    42c4:	b580      	push	{r7, lr}
    42c6:	b084      	sub	sp, #16
    42c8:	af00      	add	r7, sp, #0
    42ca:	4603      	mov	r3, r0
    42cc:	80fb      	strh	r3, [r7, #6]
    42ce:	2300      	movs	r3, #0
    42d0:	60fb      	str	r3, [r7, #12]
    42d2:	e014      	b.n	42fe <btn_wait_down+0x3a>
    42d4:	4b10      	ldr	r3, [pc, #64]	; (4318 <btn_wait_down+0x54>)
    42d6:	689b      	ldr	r3, [r3, #8]
    42d8:	b29a      	uxth	r2, r3
    42da:	88fb      	ldrh	r3, [r7, #6]
    42dc:	4013      	ands	r3, r2
    42de:	b29b      	uxth	r3, r3
    42e0:	4a0e      	ldr	r2, [pc, #56]	; (431c <btn_wait_down+0x58>)
    42e2:	4619      	mov	r1, r3
    42e4:	8011      	strh	r1, [r2, #0]
    42e6:	88fa      	ldrh	r2, [r7, #6]
    42e8:	429a      	cmp	r2, r3
    42ea:	d102      	bne.n	42f2 <btn_wait_down+0x2e>
    42ec:	2300      	movs	r3, #0
    42ee:	60fb      	str	r3, [r7, #12]
    42f0:	e002      	b.n	42f8 <btn_wait_down+0x34>
    42f2:	68fb      	ldr	r3, [r7, #12]
    42f4:	3301      	adds	r3, #1
    42f6:	60fb      	str	r3, [r7, #12]
    42f8:	2001      	movs	r0, #1
    42fa:	f7ff fa55 	bl	37a8 <pause>
    42fe:	68fb      	ldr	r3, [r7, #12]
    4300:	2b13      	cmp	r3, #19
    4302:	dde7      	ble.n	42d4 <btn_wait_down+0x10>
    4304:	4b05      	ldr	r3, [pc, #20]	; (431c <btn_wait_down+0x58>)
    4306:	881b      	ldrh	r3, [r3, #0]
    4308:	b29b      	uxth	r3, r3
    430a:	43db      	mvns	r3, r3
    430c:	b29b      	uxth	r3, r3
    430e:	4618      	mov	r0, r3
    4310:	3710      	adds	r7, #16
    4312:	46bd      	mov	sp, r7
    4314:	bd80      	pop	{r7, pc}
    4316:	bf00      	nop
    4318:	40010800 	.word	0x40010800
    431c:	20002534 	.word	0x20002534

00004320 <btn_wait_up>:
    4320:	b580      	push	{r7, lr}
    4322:	b084      	sub	sp, #16
    4324:	af00      	add	r7, sp, #0
    4326:	4603      	mov	r3, r0
    4328:	80fb      	strh	r3, [r7, #6]
    432a:	2300      	movs	r3, #0
    432c:	60fb      	str	r3, [r7, #12]
    432e:	e00f      	b.n	4350 <btn_wait_up+0x30>
    4330:	4b0b      	ldr	r3, [pc, #44]	; (4360 <btn_wait_up+0x40>)
    4332:	689a      	ldr	r2, [r3, #8]
    4334:	88fb      	ldrh	r3, [r7, #6]
    4336:	401a      	ands	r2, r3
    4338:	88fb      	ldrh	r3, [r7, #6]
    433a:	429a      	cmp	r2, r3
    433c:	d002      	beq.n	4344 <btn_wait_up+0x24>
    433e:	2300      	movs	r3, #0
    4340:	60fb      	str	r3, [r7, #12]
    4342:	e002      	b.n	434a <btn_wait_up+0x2a>
    4344:	68fb      	ldr	r3, [r7, #12]
    4346:	3301      	adds	r3, #1
    4348:	60fb      	str	r3, [r7, #12]
    434a:	2001      	movs	r0, #1
    434c:	f7ff fa2c 	bl	37a8 <pause>
    4350:	68fb      	ldr	r3, [r7, #12]
    4352:	2b13      	cmp	r3, #19
    4354:	ddec      	ble.n	4330 <btn_wait_up+0x10>
    4356:	bf00      	nop
    4358:	3710      	adds	r7, #16
    435a:	46bd      	mov	sp, r7
    435c:	bd80      	pop	{r7, pc}
    435e:	bf00      	nop
    4360:	40010800 	.word	0x40010800

00004364 <btn_query_down>:
    4364:	b480      	push	{r7}
    4366:	b083      	sub	sp, #12
    4368:	af00      	add	r7, sp, #0
    436a:	4603      	mov	r3, r0
    436c:	80fb      	strh	r3, [r7, #6]
    436e:	4b07      	ldr	r3, [pc, #28]	; (438c <btn_query_down+0x28>)
    4370:	689a      	ldr	r2, [r3, #8]
    4372:	88fb      	ldrh	r3, [r7, #6]
    4374:	4013      	ands	r3, r2
    4376:	2b00      	cmp	r3, #0
    4378:	bf0c      	ite	eq
    437a:	2301      	moveq	r3, #1
    437c:	2300      	movne	r3, #0
    437e:	b2db      	uxtb	r3, r3
    4380:	4618      	mov	r0, r3
    4382:	370c      	adds	r7, #12
    4384:	46bd      	mov	sp, r7
    4386:	bc80      	pop	{r7}
    4388:	4770      	bx	lr
    438a:	bf00      	nop
    438c:	40010800 	.word	0x40010800

00004390 <set_video_mode>:
    4390:	b580      	push	{r7, lr}
    4392:	b082      	sub	sp, #8
    4394:	af00      	add	r7, sp, #0
    4396:	4603      	mov	r3, r0
    4398:	71fb      	strb	r3, [r7, #7]
    439a:	f7fd fc31 	bl	1c00 <gfx_cls>
    439e:	f7ff ff81 	bl	42a4 <frame_sync>
    43a2:	4a03      	ldr	r2, [pc, #12]	; (43b0 <set_video_mode+0x20>)
    43a4:	79fb      	ldrb	r3, [r7, #7]
    43a6:	7013      	strb	r3, [r2, #0]
    43a8:	bf00      	nop
    43aa:	3708      	adds	r7, #8
    43ac:	46bd      	mov	sp, r7
    43ae:	bd80      	pop	{r7, pc}
    43b0:	20000502 	.word	0x20000502

000043b4 <get_video_params>:
    43b4:	b480      	push	{r7}
    43b6:	af00      	add	r7, sp, #0
    43b8:	4b06      	ldr	r3, [pc, #24]	; (43d4 <get_video_params+0x20>)
    43ba:	781b      	ldrb	r3, [r3, #0]
    43bc:	461a      	mov	r2, r3
    43be:	4613      	mov	r3, r2
    43c0:	00db      	lsls	r3, r3, #3
    43c2:	4413      	add	r3, r2
    43c4:	005b      	lsls	r3, r3, #1
    43c6:	4a04      	ldr	r2, [pc, #16]	; (43d8 <get_video_params+0x24>)
    43c8:	4413      	add	r3, r2
    43ca:	4618      	mov	r0, r3
    43cc:	46bd      	mov	sp, r7
    43ce:	bc80      	pop	{r7}
    43d0:	4770      	bx	lr
    43d2:	bf00      	nop
    43d4:	20000502 	.word	0x20000502
    43d8:	00004a24 	.word	0x00004a24
