
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 e5 36 00 00     C...I...O....6..
      20:	e5 36 00 00 e5 36 00 00 e5 36 00 00 55 02 00 00     .6...6...6..U...
      30:	e5 36 00 00 e5 36 00 00 5b 02 00 00 cd 37 00 00     .6...6..[....7..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 1d 34 00 00     g...m...y....4..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 e5 36 00 00 e5 36 00 00 b5 02 00 00     .....6...6......
      80:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..
      90:	e5 36 00 00 e5 36 00 00 e5 36 00 00 bb 02 00 00     .6...6...6......
      a0:	e5 36 00 00 4d 40 00 00 e5 36 00 00 15 3f 00 00     .6..M@...6...?..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 e5 36 00 00     .............6..
      c0:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..
      d0:	e5 36 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .6..............
      e0:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..
      f0:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..
     100:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..
     110:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..
     120:	e5 36 00 00 e5 36 00 00 e5 36 00 00 e5 36 00 00     .6...6...6...6..

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
     18e:	f002 fa13 	bl	25b8 <main>
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
     1dc:	f003 fa8a 	bl	36f4 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 fa7e 	bl	36f4 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 fa72 	bl	36f4 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 fa6d 	bl	36f4 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	000049c4 	.word	0x000049c4
     230:	000049dc 	.word	0x000049dc
     234:	000049e8 	.word	0x000049e8
     238:	000049f8 	.word	0x000049f8

0000023c <NMI_handler>:
     23c:	f003 fa52 	bl	36e4 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 fa4f 	bl	36e4 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 fa4c 	bl	36e4 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 fa49 	bl	36e4 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 fa46 	bl	36e4 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 fa43 	bl	36e4 <reset_mcu>
     25e:	bf00      	nop
     260:	f003 fa40 	bl	36e4 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 fa3d 	bl	36e4 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 fa3a 	bl	36e4 <reset_mcu>
     270:	bf00      	nop
     272:	f003 fa37 	bl	36e4 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 fa34 	bl	36e4 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 fa31 	bl	36e4 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 fa2e 	bl	36e4 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 fa2b 	bl	36e4 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 fa28 	bl	36e4 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 fa25 	bl	36e4 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 fa22 	bl	36e4 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 fa1f 	bl	36e4 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 fa1c 	bl	36e4 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 fa19 	bl	36e4 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 fa16 	bl	36e4 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 fa13 	bl	36e4 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 fa10 	bl	36e4 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 fa0d 	bl	36e4 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 fa0a 	bl	36e4 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 fa07 	bl	36e4 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 fa04 	bl	36e4 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 fa01 	bl	36e4 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 f9fe 	bl	36e4 <reset_mcu>
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
     3c8:	f003 fa4c 	bl	3864 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 fa39 	bl	3844 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fb80 	bl	3ad8 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fb7d 	bl	3ad8 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fba6 	bl	3b38 <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 fb9f 	bl	3b38 <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 fb98 	bl	3b38 <print_int>
     408:	f003 fa2c 	bl	3864 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fb63 	bl	3ad8 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fb8d 	bl	3b38 <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fb5a 	bl	3ad8 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fb84 	bl	3b38 <print_int>
     430:	f003 fa18 	bl	3864 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 fb4f 	bl	3ad8 <print>
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
     44e:	f003 fb73 	bl	3b38 <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 fa01 	bl	3864 <new_line>
     462:	f003 fc9f 	bl	3da4 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	000043d8 	.word	0x000043d8
     474:	2000006c 	.word	0x2000006c
     478:	000043dc 	.word	0x000043dc
     47c:	000043e0 	.word	0x000043e0
     480:	000043e8 	.word	0x000043e8

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
     724:	f003 fb48 	bl	3db8 <clear_screen>
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
     b1e:	f002 fe91 	bl	3844 <select_font>
     b22:	7bbb      	ldrb	r3, [r7, #14]
     b24:	4a99      	ldr	r2, [pc, #612]	; (d8c <schipp+0x80c>)
     b26:	4413      	add	r3, r2
     b28:	7958      	ldrb	r0, [r3, #5]
     b2a:	7b7b      	ldrb	r3, [r7, #13]
     b2c:	4a97      	ldr	r2, [pc, #604]	; (d8c <schipp+0x80c>)
     b2e:	4413      	add	r3, r2
     b30:	795b      	ldrb	r3, [r3, #5]
     b32:	4619      	mov	r1, r3
     b34:	f002 ffa4 	bl	3a80 <set_cursor>
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
     b52:	f002 ff09 	bl	3968 <put_char>
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
     e3a:	f003 fa91 	bl	4360 <btn_query_down>
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
     e5e:	f003 fa7f 	bl	4360 <btn_query_down>
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
     ef4:	f003 f9e4 	bl	42c0 <btn_wait_down>
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
     f6a:	f002 fc6b 	bl	3844 <select_font>
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
     f92:	f002 fc57 	bl	3844 <select_font>
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
    1040:	000043f0 	.word	0x000043f0
    1044:	00004450 	.word	0x00004450
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
    19fa:	f002 fcd9 	bl	43b0 <get_video_params>
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
    1ae2:	f002 fc65 	bl	43b0 <get_video_params>
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
    1c2a:	f001 ff29 	bl	3a80 <set_cursor>
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
    1f9a:	f002 f981 	bl	42a0 <frame_sync>
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
    2080:	f002 f996 	bl	43b0 <get_video_params>
    2084:	6038      	str	r0, [r7, #0]
    2086:	2300      	movs	r3, #0
    2088:	607b      	str	r3, [r7, #4]
    208a:	e0c4      	b.n	2216 <move_balls+0x19c>
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
    2192:	f113 0f07 	cmn.w	r3, #7
    2196:	db0c      	blt.n	21b2 <move_balls+0x138>
    2198:	4936      	ldr	r1, [pc, #216]	; (2274 <move_balls+0x1fa>)
    219a:	687a      	ldr	r2, [r7, #4]
    219c:	4613      	mov	r3, r2
    219e:	009b      	lsls	r3, r3, #2
    21a0:	4413      	add	r3, r2
    21a2:	009b      	lsls	r3, r3, #2
    21a4:	440b      	add	r3, r1
    21a6:	3304      	adds	r3, #4
    21a8:	681b      	ldr	r3, [r3, #0]
    21aa:	683a      	ldr	r2, [r7, #0]
    21ac:	89d2      	ldrh	r2, [r2, #14]
    21ae:	4293      	cmp	r3, r2
    21b0:	db2e      	blt.n	2210 <move_balls+0x196>
    21b2:	4930      	ldr	r1, [pc, #192]	; (2274 <move_balls+0x1fa>)
    21b4:	687a      	ldr	r2, [r7, #4]
    21b6:	4613      	mov	r3, r2
    21b8:	009b      	lsls	r3, r3, #2
    21ba:	4413      	add	r3, r2
    21bc:	009b      	lsls	r3, r3, #2
    21be:	440b      	add	r3, r1
    21c0:	330c      	adds	r3, #12
    21c2:	681b      	ldr	r3, [r3, #0]
    21c4:	4259      	negs	r1, r3
    21c6:	482b      	ldr	r0, [pc, #172]	; (2274 <move_balls+0x1fa>)
    21c8:	687a      	ldr	r2, [r7, #4]
    21ca:	4613      	mov	r3, r2
    21cc:	009b      	lsls	r3, r3, #2
    21ce:	4413      	add	r3, r2
    21d0:	009b      	lsls	r3, r3, #2
    21d2:	4403      	add	r3, r0
    21d4:	330c      	adds	r3, #12
    21d6:	6019      	str	r1, [r3, #0]
    21d8:	4926      	ldr	r1, [pc, #152]	; (2274 <move_balls+0x1fa>)
    21da:	687a      	ldr	r2, [r7, #4]
    21dc:	4613      	mov	r3, r2
    21de:	009b      	lsls	r3, r3, #2
    21e0:	4413      	add	r3, r2
    21e2:	009b      	lsls	r3, r3, #2
    21e4:	440b      	add	r3, r1
    21e6:	3304      	adds	r3, #4
    21e8:	6819      	ldr	r1, [r3, #0]
    21ea:	4822      	ldr	r0, [pc, #136]	; (2274 <move_balls+0x1fa>)
    21ec:	687a      	ldr	r2, [r7, #4]
    21ee:	4613      	mov	r3, r2
    21f0:	009b      	lsls	r3, r3, #2
    21f2:	4413      	add	r3, r2
    21f4:	009b      	lsls	r3, r3, #2
    21f6:	4403      	add	r3, r0
    21f8:	330c      	adds	r3, #12
    21fa:	681b      	ldr	r3, [r3, #0]
    21fc:	4419      	add	r1, r3
    21fe:	481d      	ldr	r0, [pc, #116]	; (2274 <move_balls+0x1fa>)
    2200:	687a      	ldr	r2, [r7, #4]
    2202:	4613      	mov	r3, r2
    2204:	009b      	lsls	r3, r3, #2
    2206:	4413      	add	r3, r2
    2208:	009b      	lsls	r3, r3, #2
    220a:	4403      	add	r3, r0
    220c:	3304      	adds	r3, #4
    220e:	6019      	str	r1, [r3, #0]
    2210:	687b      	ldr	r3, [r7, #4]
    2212:	3301      	adds	r3, #1
    2214:	607b      	str	r3, [r7, #4]
    2216:	687b      	ldr	r3, [r7, #4]
    2218:	2b01      	cmp	r3, #1
    221a:	f77f af37 	ble.w	208c <move_balls+0x12>
    221e:	4916      	ldr	r1, [pc, #88]	; (2278 <move_balls+0x1fe>)
    2220:	4814      	ldr	r0, [pc, #80]	; (2274 <move_balls+0x1fa>)
    2222:	f7ff ff0d 	bl	2040 <distance>
    2226:	4603      	mov	r3, r0
    2228:	2b07      	cmp	r3, #7
    222a:	d81f      	bhi.n	226c <move_balls+0x1f2>
    222c:	4b11      	ldr	r3, [pc, #68]	; (2274 <move_balls+0x1fa>)
    222e:	689a      	ldr	r2, [r3, #8]
    2230:	4b10      	ldr	r3, [pc, #64]	; (2274 <move_balls+0x1fa>)
    2232:	69db      	ldr	r3, [r3, #28]
    2234:	429a      	cmp	r2, r3
    2236:	d009      	beq.n	224c <move_balls+0x1d2>
    2238:	4b0e      	ldr	r3, [pc, #56]	; (2274 <move_balls+0x1fa>)
    223a:	689b      	ldr	r3, [r3, #8]
    223c:	607b      	str	r3, [r7, #4]
    223e:	4b0d      	ldr	r3, [pc, #52]	; (2274 <move_balls+0x1fa>)
    2240:	69db      	ldr	r3, [r3, #28]
    2242:	4a0c      	ldr	r2, [pc, #48]	; (2274 <move_balls+0x1fa>)
    2244:	6093      	str	r3, [r2, #8]
    2246:	4a0b      	ldr	r2, [pc, #44]	; (2274 <move_balls+0x1fa>)
    2248:	687b      	ldr	r3, [r7, #4]
    224a:	61d3      	str	r3, [r2, #28]
    224c:	4b09      	ldr	r3, [pc, #36]	; (2274 <move_balls+0x1fa>)
    224e:	68da      	ldr	r2, [r3, #12]
    2250:	4b08      	ldr	r3, [pc, #32]	; (2274 <move_balls+0x1fa>)
    2252:	6a1b      	ldr	r3, [r3, #32]
    2254:	429a      	cmp	r2, r3
    2256:	d009      	beq.n	226c <move_balls+0x1f2>
    2258:	4b06      	ldr	r3, [pc, #24]	; (2274 <move_balls+0x1fa>)
    225a:	68db      	ldr	r3, [r3, #12]
    225c:	607b      	str	r3, [r7, #4]
    225e:	4b05      	ldr	r3, [pc, #20]	; (2274 <move_balls+0x1fa>)
    2260:	6a1b      	ldr	r3, [r3, #32]
    2262:	4a04      	ldr	r2, [pc, #16]	; (2274 <move_balls+0x1fa>)
    2264:	60d3      	str	r3, [r2, #12]
    2266:	4a03      	ldr	r2, [pc, #12]	; (2274 <move_balls+0x1fa>)
    2268:	687b      	ldr	r3, [r7, #4]
    226a:	6213      	str	r3, [r2, #32]
    226c:	bf00      	nop
    226e:	3708      	adds	r7, #8
    2270:	46bd      	mov	sp, r7
    2272:	bd80      	pop	{r7, pc}
    2274:	2000250c 	.word	0x2000250c
    2278:	20002520 	.word	0x20002520

0000227c <init_balls>:
    227c:	b580      	push	{r7, lr}
    227e:	b082      	sub	sp, #8
    2280:	af00      	add	r7, sp, #0
    2282:	f002 f895 	bl	43b0 <get_video_params>
    2286:	6038      	str	r0, [r7, #0]
    2288:	4b2a      	ldr	r3, [pc, #168]	; (2334 <init_balls+0xb8>)
    228a:	681b      	ldr	r3, [r3, #0]
    228c:	4618      	mov	r0, r3
    228e:	f7fe f946 	bl	51e <srand>
    2292:	2300      	movs	r3, #0
    2294:	607b      	str	r3, [r7, #4]
    2296:	e045      	b.n	2324 <init_balls+0xa8>
    2298:	f7fe f950 	bl	53c <rand>
    229c:	4603      	mov	r3, r0
    229e:	683a      	ldr	r2, [r7, #0]
    22a0:	8992      	ldrh	r2, [r2, #12]
    22a2:	fb93 f1f2 	sdiv	r1, r3, r2
    22a6:	fb02 f201 	mul.w	r2, r2, r1
    22aa:	1a99      	subs	r1, r3, r2
    22ac:	4822      	ldr	r0, [pc, #136]	; (2338 <init_balls+0xbc>)
    22ae:	687a      	ldr	r2, [r7, #4]
    22b0:	4613      	mov	r3, r2
    22b2:	009b      	lsls	r3, r3, #2
    22b4:	4413      	add	r3, r2
    22b6:	009b      	lsls	r3, r3, #2
    22b8:	4403      	add	r3, r0
    22ba:	6019      	str	r1, [r3, #0]
    22bc:	f7fe f93e 	bl	53c <rand>
    22c0:	4603      	mov	r3, r0
    22c2:	683a      	ldr	r2, [r7, #0]
    22c4:	89d2      	ldrh	r2, [r2, #14]
    22c6:	fb93 f1f2 	sdiv	r1, r3, r2
    22ca:	fb02 f201 	mul.w	r2, r2, r1
    22ce:	1a99      	subs	r1, r3, r2
    22d0:	4819      	ldr	r0, [pc, #100]	; (2338 <init_balls+0xbc>)
    22d2:	687a      	ldr	r2, [r7, #4]
    22d4:	4613      	mov	r3, r2
    22d6:	009b      	lsls	r3, r3, #2
    22d8:	4413      	add	r3, r2
    22da:	009b      	lsls	r3, r3, #2
    22dc:	4403      	add	r3, r0
    22de:	3304      	adds	r3, #4
    22e0:	6019      	str	r1, [r3, #0]
    22e2:	4915      	ldr	r1, [pc, #84]	; (2338 <init_balls+0xbc>)
    22e4:	687a      	ldr	r2, [r7, #4]
    22e6:	4613      	mov	r3, r2
    22e8:	009b      	lsls	r3, r3, #2
    22ea:	4413      	add	r3, r2
    22ec:	009b      	lsls	r3, r3, #2
    22ee:	440b      	add	r3, r1
    22f0:	3308      	adds	r3, #8
    22f2:	2201      	movs	r2, #1
    22f4:	601a      	str	r2, [r3, #0]
    22f6:	4910      	ldr	r1, [pc, #64]	; (2338 <init_balls+0xbc>)
    22f8:	687a      	ldr	r2, [r7, #4]
    22fa:	4613      	mov	r3, r2
    22fc:	009b      	lsls	r3, r3, #2
    22fe:	4413      	add	r3, r2
    2300:	009b      	lsls	r3, r3, #2
    2302:	440b      	add	r3, r1
    2304:	330c      	adds	r3, #12
    2306:	2201      	movs	r2, #1
    2308:	601a      	str	r2, [r3, #0]
    230a:	490b      	ldr	r1, [pc, #44]	; (2338 <init_balls+0xbc>)
    230c:	687a      	ldr	r2, [r7, #4]
    230e:	4613      	mov	r3, r2
    2310:	009b      	lsls	r3, r3, #2
    2312:	4413      	add	r3, r2
    2314:	009b      	lsls	r3, r3, #2
    2316:	440b      	add	r3, r1
    2318:	3310      	adds	r3, #16
    231a:	4a08      	ldr	r2, [pc, #32]	; (233c <init_balls+0xc0>)
    231c:	601a      	str	r2, [r3, #0]
    231e:	687b      	ldr	r3, [r7, #4]
    2320:	3301      	adds	r3, #1
    2322:	607b      	str	r3, [r7, #4]
    2324:	687b      	ldr	r3, [r7, #4]
    2326:	2b01      	cmp	r3, #1
    2328:	ddb6      	ble.n	2298 <init_balls+0x1c>
    232a:	bf00      	nop
    232c:	3708      	adds	r7, #8
    232e:	46bd      	mov	sp, r7
    2330:	bd80      	pop	{r7, pc}
    2332:	bf00      	nop
    2334:	200004f8 	.word	0x200004f8
    2338:	2000250c 	.word	0x2000250c
    233c:	00004818 	.word	0x00004818

00002340 <video_test>:
    2340:	b580      	push	{r7, lr}
    2342:	b086      	sub	sp, #24
    2344:	af00      	add	r7, sp, #0
    2346:	2303      	movs	r3, #3
    2348:	73bb      	strb	r3, [r7, #14]
    234a:	f7ff fc59 	bl	1c00 <gfx_cls>
    234e:	f002 f82f 	bl	43b0 <get_video_params>
    2352:	60b8      	str	r0, [r7, #8]
    2354:	68bb      	ldr	r3, [r7, #8]
    2356:	89db      	ldrh	r3, [r3, #14]
    2358:	089b      	lsrs	r3, r3, #2
    235a:	b29b      	uxth	r3, r3
    235c:	461a      	mov	r2, r3
    235e:	4613      	mov	r3, r2
    2360:	005b      	lsls	r3, r3, #1
    2362:	4413      	add	r3, r2
    2364:	613b      	str	r3, [r7, #16]
    2366:	e01b      	b.n	23a0 <video_test+0x60>
    2368:	2310      	movs	r3, #16
    236a:	73fb      	strb	r3, [r7, #15]
    236c:	2300      	movs	r3, #0
    236e:	617b      	str	r3, [r7, #20]
    2370:	e010      	b.n	2394 <video_test+0x54>
    2372:	697b      	ldr	r3, [r7, #20]
    2374:	f003 0307 	and.w	r3, r3, #7
    2378:	2b00      	cmp	r3, #0
    237a:	d102      	bne.n	2382 <video_test+0x42>
    237c:	7bfb      	ldrb	r3, [r7, #15]
    237e:	3b01      	subs	r3, #1
    2380:	73fb      	strb	r3, [r7, #15]
    2382:	7bfb      	ldrb	r3, [r7, #15]
    2384:	461a      	mov	r2, r3
    2386:	6939      	ldr	r1, [r7, #16]
    2388:	6978      	ldr	r0, [r7, #20]
    238a:	f7ff fba3 	bl	1ad4 <gfx_plot>
    238e:	697b      	ldr	r3, [r7, #20]
    2390:	3301      	adds	r3, #1
    2392:	617b      	str	r3, [r7, #20]
    2394:	697b      	ldr	r3, [r7, #20]
    2396:	2b7f      	cmp	r3, #127	; 0x7f
    2398:	ddeb      	ble.n	2372 <video_test+0x32>
    239a:	693b      	ldr	r3, [r7, #16]
    239c:	3301      	adds	r3, #1
    239e:	613b      	str	r3, [r7, #16]
    23a0:	68bb      	ldr	r3, [r7, #8]
    23a2:	89db      	ldrh	r3, [r3, #14]
    23a4:	461a      	mov	r2, r3
    23a6:	693b      	ldr	r3, [r7, #16]
    23a8:	429a      	cmp	r2, r3
    23aa:	dcdd      	bgt.n	2368 <video_test+0x28>
    23ac:	4b30      	ldr	r3, [pc, #192]	; (2470 <video_test+0x130>)
    23ae:	2110      	movs	r1, #16
    23b0:	4618      	mov	r0, r3
    23b2:	f001 fbc1 	bl	3b38 <print_int>
    23b6:	4b2f      	ldr	r3, [pc, #188]	; (2474 <video_test+0x134>)
    23b8:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    23bc:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    23c0:	210a      	movs	r1, #10
    23c2:	4618      	mov	r0, r3
    23c4:	f001 fbb8 	bl	3b38 <print_int>
    23c8:	f7ff ff58 	bl	227c <init_balls>
    23cc:	2300      	movs	r3, #0
    23ce:	73bb      	strb	r3, [r7, #14]
    23d0:	f7ff fde0 	bl	1f94 <draw_balls>
    23d4:	200a      	movs	r0, #10
    23d6:	f001 f9e5 	bl	37a4 <pause>
    23da:	f7ff fddb 	bl	1f94 <draw_balls>
    23de:	f7ff fe4c 	bl	207a <move_balls>
    23e2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    23e6:	f001 ffbb 	bl	4360 <btn_query_down>
    23ea:	4603      	mov	r3, r0
    23ec:	2b00      	cmp	r3, #0
    23ee:	d0ef      	beq.n	23d0 <video_test+0x90>
    23f0:	7bbb      	ldrb	r3, [r7, #14]
    23f2:	3301      	adds	r3, #1
    23f4:	73bb      	strb	r3, [r7, #14]
    23f6:	7bbb      	ldrb	r3, [r7, #14]
    23f8:	f003 0303 	and.w	r3, r3, #3
    23fc:	73bb      	strb	r3, [r7, #14]
    23fe:	7bbb      	ldrb	r3, [r7, #14]
    2400:	4618      	mov	r0, r3
    2402:	f001 ffc3 	bl	438c <set_video_mode>
    2406:	7bbb      	ldrb	r3, [r7, #14]
    2408:	2b03      	cmp	r3, #3
    240a:	d81b      	bhi.n	2444 <video_test+0x104>
    240c:	a201      	add	r2, pc, #4	; (adr r2, 2414 <video_test+0xd4>)
    240e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2412:	bf00      	nop
    2414:	00002425 	.word	0x00002425
    2418:	0000242d 	.word	0x0000242d
    241c:	00002435 	.word	0x00002435
    2420:	0000243d 	.word	0x0000243d
    2424:	4814      	ldr	r0, [pc, #80]	; (2478 <video_test+0x138>)
    2426:	f001 fb57 	bl	3ad8 <print>
    242a:	e00b      	b.n	2444 <video_test+0x104>
    242c:	4813      	ldr	r0, [pc, #76]	; (247c <video_test+0x13c>)
    242e:	f001 fb53 	bl	3ad8 <print>
    2432:	e007      	b.n	2444 <video_test+0x104>
    2434:	4812      	ldr	r0, [pc, #72]	; (2480 <video_test+0x140>)
    2436:	f001 fb4f 	bl	3ad8 <print>
    243a:	e003      	b.n	2444 <video_test+0x104>
    243c:	4811      	ldr	r0, [pc, #68]	; (2484 <video_test+0x144>)
    243e:	f001 fb4b 	bl	3ad8 <print>
    2442:	bf00      	nop
    2444:	f7ff ff1a 	bl	227c <init_balls>
    2448:	4b0f      	ldr	r3, [pc, #60]	; (2488 <video_test+0x148>)
    244a:	681b      	ldr	r3, [r3, #0]
    244c:	f503 737a 	add.w	r3, r3, #1000	; 0x3e8
    2450:	607b      	str	r3, [r7, #4]
    2452:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    2456:	f001 ff61 	bl	431c <btn_wait_up>
    245a:	4b0b      	ldr	r3, [pc, #44]	; (2488 <video_test+0x148>)
    245c:	681a      	ldr	r2, [r3, #0]
    245e:	687b      	ldr	r3, [r7, #4]
    2460:	429a      	cmp	r2, r3
    2462:	d800      	bhi.n	2466 <video_test+0x126>
    2464:	e7b4      	b.n	23d0 <video_test+0x90>
    2466:	bf00      	nop
    2468:	bf00      	nop
    246a:	3718      	adds	r7, #24
    246c:	46bd      	mov	sp, r7
    246e:	bd80      	pop	{r7, pc}
    2470:	00004c00 	.word	0x00004c00
    2474:	20004ca0 	.word	0x20004ca0
    2478:	00004838 	.word	0x00004838
    247c:	00004858 	.word	0x00004858
    2480:	00004874 	.word	0x00004874
    2484:	0000488c 	.word	0x0000488c
    2488:	200004f8 	.word	0x200004f8

0000248c <select_vmode>:
    248c:	b580      	push	{r7, lr}
    248e:	af00      	add	r7, sp, #0
    2490:	f7ff fbb6 	bl	1c00 <gfx_cls>
    2494:	4804      	ldr	r0, [pc, #16]	; (24a8 <select_vmode+0x1c>)
    2496:	f001 fb42 	bl	3b1e <println>
    249a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    249e:	f001 f981 	bl	37a4 <pause>
    24a2:	bf00      	nop
    24a4:	bd80      	pop	{r7, pc}
    24a6:	bf00      	nop
    24a8:	000048a4 	.word	0x000048a4

000024ac <select_game>:
    24ac:	b580      	push	{r7, lr}
    24ae:	af00      	add	r7, sp, #0
    24b0:	f7ff fba6 	bl	1c00 <gfx_cls>
    24b4:	4804      	ldr	r0, [pc, #16]	; (24c8 <select_game+0x1c>)
    24b6:	f001 fb32 	bl	3b1e <println>
    24ba:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    24be:	f001 f971 	bl	37a4 <pause>
    24c2:	bf00      	nop
    24c4:	bd80      	pop	{r7, pc}
    24c6:	bf00      	nop
    24c8:	000048b0 	.word	0x000048b0

000024cc <display_menu>:
    24cc:	b580      	push	{r7, lr}
    24ce:	b082      	sub	sp, #8
    24d0:	af00      	add	r7, sp, #0
    24d2:	2300      	movs	r3, #0
    24d4:	607b      	str	r3, [r7, #4]
    24d6:	e009      	b.n	24ec <display_menu+0x20>
    24d8:	4a08      	ldr	r2, [pc, #32]	; (24fc <display_menu+0x30>)
    24da:	687b      	ldr	r3, [r7, #4]
    24dc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    24e0:	4618      	mov	r0, r3
    24e2:	f001 fb1c 	bl	3b1e <println>
    24e6:	687b      	ldr	r3, [r7, #4]
    24e8:	3301      	adds	r3, #1
    24ea:	607b      	str	r3, [r7, #4]
    24ec:	687b      	ldr	r3, [r7, #4]
    24ee:	2b02      	cmp	r3, #2
    24f0:	ddf2      	ble.n	24d8 <display_menu+0xc>
    24f2:	bf00      	nop
    24f4:	3708      	adds	r7, #8
    24f6:	46bd      	mov	sp, r7
    24f8:	bd80      	pop	{r7, pc}
    24fa:	bf00      	nop
    24fc:	20000004 	.word	0x20000004

00002500 <menu>:
    2500:	b580      	push	{r7, lr}
    2502:	b084      	sub	sp, #16
    2504:	af00      	add	r7, sp, #0
    2506:	2300      	movs	r3, #0
    2508:	60fb      	str	r3, [r7, #12]
    250a:	f001 ff51 	bl	43b0 <get_video_params>
    250e:	60b8      	str	r0, [r7, #8]
    2510:	f7ff ffdc 	bl	24cc <display_menu>
    2514:	68fb      	ldr	r3, [r7, #12]
    2516:	b2db      	uxtb	r3, r3
    2518:	00db      	lsls	r3, r3, #3
    251a:	b2db      	uxtb	r3, r3
    251c:	4619      	mov	r1, r3
    251e:	2000      	movs	r0, #0
    2520:	f001 faae 	bl	3a80 <set_cursor>
    2524:	203e      	movs	r0, #62	; 0x3e
    2526:	f001 fa1f 	bl	3968 <put_char>
    252a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    252e:	f001 fec7 	bl	42c0 <btn_wait_down>
    2532:	4b1f      	ldr	r3, [pc, #124]	; (25b0 <menu+0xb0>)
    2534:	681b      	ldr	r3, [r3, #0]
    2536:	f503 737a 	add.w	r3, r3, #1000	; 0x3e8
    253a:	607b      	str	r3, [r7, #4]
    253c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    2540:	f001 feec 	bl	431c <btn_wait_up>
    2544:	4b1a      	ldr	r3, [pc, #104]	; (25b0 <menu+0xb0>)
    2546:	681a      	ldr	r2, [r3, #0]
    2548:	687b      	ldr	r3, [r7, #4]
    254a:	429a      	cmp	r2, r3
    254c:	d315      	bcc.n	257a <menu+0x7a>
    254e:	68fb      	ldr	r3, [r7, #12]
    2550:	2b01      	cmp	r3, #1
    2552:	d006      	beq.n	2562 <menu+0x62>
    2554:	2b02      	cmp	r3, #2
    2556:	d007      	beq.n	2568 <menu+0x68>
    2558:	2b00      	cmp	r3, #0
    255a:	d108      	bne.n	256e <menu+0x6e>
    255c:	f7ff ff96 	bl	248c <select_vmode>
    2560:	e005      	b.n	256e <menu+0x6e>
    2562:	f7ff ffa3 	bl	24ac <select_game>
    2566:	e002      	b.n	256e <menu+0x6e>
    2568:	f7ff feea 	bl	2340 <video_test>
    256c:	bf00      	nop
    256e:	2000      	movs	r0, #0
    2570:	f001 ff0c 	bl	438c <set_video_mode>
    2574:	f7ff ffaa 	bl	24cc <display_menu>
    2578:	e7cc      	b.n	2514 <menu+0x14>
    257a:	68fb      	ldr	r3, [r7, #12]
    257c:	b2db      	uxtb	r3, r3
    257e:	00db      	lsls	r3, r3, #3
    2580:	b2db      	uxtb	r3, r3
    2582:	4619      	mov	r1, r3
    2584:	2000      	movs	r0, #0
    2586:	f001 fa7b 	bl	3a80 <set_cursor>
    258a:	2020      	movs	r0, #32
    258c:	f001 f9ec 	bl	3968 <put_char>
    2590:	68fb      	ldr	r3, [r7, #12]
    2592:	3301      	adds	r3, #1
    2594:	60fb      	str	r3, [r7, #12]
    2596:	68fa      	ldr	r2, [r7, #12]
    2598:	4b06      	ldr	r3, [pc, #24]	; (25b4 <menu+0xb4>)
    259a:	fb83 3102 	smull	r3, r1, r3, r2
    259e:	17d3      	asrs	r3, r2, #31
    25a0:	1ac9      	subs	r1, r1, r3
    25a2:	460b      	mov	r3, r1
    25a4:	005b      	lsls	r3, r3, #1
    25a6:	440b      	add	r3, r1
    25a8:	1ad3      	subs	r3, r2, r3
    25aa:	60fb      	str	r3, [r7, #12]
    25ac:	e7b2      	b.n	2514 <menu+0x14>
    25ae:	bf00      	nop
    25b0:	200004f8 	.word	0x200004f8
    25b4:	55555556 	.word	0x55555556

000025b8 <main>:
    25b8:	b580      	push	{r7, lr}
    25ba:	af00      	add	r7, sp, #0
    25bc:	f7ff fcb2 	bl	1f24 <set_sysclock>
    25c0:	f001 f8dc 	bl	377c <config_systicks>
    25c4:	4b0b      	ldr	r3, [pc, #44]	; (25f4 <main+0x3c>)
    25c6:	f640 021d 	movw	r2, #2077	; 0x81d
    25ca:	619a      	str	r2, [r3, #24]
    25cc:	2206      	movs	r2, #6
    25ce:	210d      	movs	r1, #13
    25d0:	4809      	ldr	r0, [pc, #36]	; (25f8 <main+0x40>)
    25d2:	f7ff f990 	bl	18f6 <config_pin>
    25d6:	4a08      	ldr	r2, [pc, #32]	; (25f8 <main+0x40>)
    25d8:	4b07      	ldr	r3, [pc, #28]	; (25f8 <main+0x40>)
    25da:	68db      	ldr	r3, [r3, #12]
    25dc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    25e0:	60d3      	str	r3, [r2, #12]
    25e2:	f001 fbf9 	bl	3dd8 <tvout_init>
    25e6:	f7ff fb0b 	bl	1c00 <gfx_cls>
    25ea:	f7ff ff89 	bl	2500 <menu>
    25ee:	bf00      	nop
    25f0:	bd80      	pop	{r7, pc}
    25f2:	bf00      	nop
    25f4:	40021000 	.word	0x40021000
    25f8:	40011000 	.word	0x40011000

000025fc <enable_interrupt>:
    25fc:	b480      	push	{r7}
    25fe:	b083      	sub	sp, #12
    2600:	af00      	add	r7, sp, #0
    2602:	6078      	str	r0, [r7, #4]
    2604:	687b      	ldr	r3, [r7, #4]
    2606:	2b3b      	cmp	r3, #59	; 0x3b
    2608:	dc17      	bgt.n	263a <enable_interrupt+0x3e>
    260a:	687b      	ldr	r3, [r7, #4]
    260c:	115b      	asrs	r3, r3, #5
    260e:	009b      	lsls	r3, r3, #2
    2610:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2614:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2618:	687a      	ldr	r2, [r7, #4]
    261a:	1152      	asrs	r2, r2, #5
    261c:	0092      	lsls	r2, r2, #2
    261e:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2622:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    2626:	6812      	ldr	r2, [r2, #0]
    2628:	6879      	ldr	r1, [r7, #4]
    262a:	f001 011f 	and.w	r1, r1, #31
    262e:	2001      	movs	r0, #1
    2630:	fa00 f101 	lsl.w	r1, r0, r1
    2634:	430a      	orrs	r2, r1
    2636:	601a      	str	r2, [r3, #0]
    2638:	e000      	b.n	263c <enable_interrupt+0x40>
    263a:	bf00      	nop
    263c:	370c      	adds	r7, #12
    263e:	46bd      	mov	sp, r7
    2640:	bc80      	pop	{r7}
    2642:	4770      	bx	lr

00002644 <disable_interrupt>:
    2644:	b480      	push	{r7}
    2646:	b083      	sub	sp, #12
    2648:	af00      	add	r7, sp, #0
    264a:	6078      	str	r0, [r7, #4]
    264c:	687b      	ldr	r3, [r7, #4]
    264e:	2b3b      	cmp	r3, #59	; 0x3b
    2650:	dc0c      	bgt.n	266c <disable_interrupt+0x28>
    2652:	687b      	ldr	r3, [r7, #4]
    2654:	115b      	asrs	r3, r3, #5
    2656:	009a      	lsls	r2, r3, #2
    2658:	4b07      	ldr	r3, [pc, #28]	; (2678 <disable_interrupt+0x34>)
    265a:	4413      	add	r3, r2
    265c:	687a      	ldr	r2, [r7, #4]
    265e:	f002 021f 	and.w	r2, r2, #31
    2662:	2101      	movs	r1, #1
    2664:	fa01 f202 	lsl.w	r2, r1, r2
    2668:	601a      	str	r2, [r3, #0]
    266a:	e000      	b.n	266e <disable_interrupt+0x2a>
    266c:	bf00      	nop
    266e:	370c      	adds	r7, #12
    2670:	46bd      	mov	sp, r7
    2672:	bc80      	pop	{r7}
    2674:	4770      	bx	lr
    2676:	bf00      	nop
    2678:	e000e180 	.word	0xe000e180

0000267c <get_pending>:
    267c:	b480      	push	{r7}
    267e:	b083      	sub	sp, #12
    2680:	af00      	add	r7, sp, #0
    2682:	6078      	str	r0, [r7, #4]
    2684:	687b      	ldr	r3, [r7, #4]
    2686:	2b3b      	cmp	r3, #59	; 0x3b
    2688:	dd01      	ble.n	268e <get_pending+0x12>
    268a:	2300      	movs	r3, #0
    268c:	e00c      	b.n	26a8 <get_pending+0x2c>
    268e:	687b      	ldr	r3, [r7, #4]
    2690:	115b      	asrs	r3, r3, #5
    2692:	009a      	lsls	r2, r3, #2
    2694:	4b07      	ldr	r3, [pc, #28]	; (26b4 <get_pending+0x38>)
    2696:	4413      	add	r3, r2
    2698:	681b      	ldr	r3, [r3, #0]
    269a:	687a      	ldr	r2, [r7, #4]
    269c:	f002 021f 	and.w	r2, r2, #31
    26a0:	2101      	movs	r1, #1
    26a2:	fa01 f202 	lsl.w	r2, r1, r2
    26a6:	4013      	ands	r3, r2
    26a8:	4618      	mov	r0, r3
    26aa:	370c      	adds	r7, #12
    26ac:	46bd      	mov	sp, r7
    26ae:	bc80      	pop	{r7}
    26b0:	4770      	bx	lr
    26b2:	bf00      	nop
    26b4:	e000e280 	.word	0xe000e280

000026b8 <get_active>:
    26b8:	b480      	push	{r7}
    26ba:	b083      	sub	sp, #12
    26bc:	af00      	add	r7, sp, #0
    26be:	6078      	str	r0, [r7, #4]
    26c0:	687b      	ldr	r3, [r7, #4]
    26c2:	2b3b      	cmp	r3, #59	; 0x3b
    26c4:	dd01      	ble.n	26ca <get_active+0x12>
    26c6:	2300      	movs	r3, #0
    26c8:	e00e      	b.n	26e8 <get_active+0x30>
    26ca:	687b      	ldr	r3, [r7, #4]
    26cc:	115b      	asrs	r3, r3, #5
    26ce:	009b      	lsls	r3, r3, #2
    26d0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    26d4:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    26d8:	681b      	ldr	r3, [r3, #0]
    26da:	687a      	ldr	r2, [r7, #4]
    26dc:	f002 021f 	and.w	r2, r2, #31
    26e0:	2101      	movs	r1, #1
    26e2:	fa01 f202 	lsl.w	r2, r1, r2
    26e6:	4013      	ands	r3, r2
    26e8:	4618      	mov	r0, r3
    26ea:	370c      	adds	r7, #12
    26ec:	46bd      	mov	sp, r7
    26ee:	bc80      	pop	{r7}
    26f0:	4770      	bx	lr

000026f2 <set_pending>:
    26f2:	b480      	push	{r7}
    26f4:	b083      	sub	sp, #12
    26f6:	af00      	add	r7, sp, #0
    26f8:	6078      	str	r0, [r7, #4]
    26fa:	687b      	ldr	r3, [r7, #4]
    26fc:	2b3b      	cmp	r3, #59	; 0x3b
    26fe:	dc17      	bgt.n	2730 <set_pending+0x3e>
    2700:	687b      	ldr	r3, [r7, #4]
    2702:	115b      	asrs	r3, r3, #5
    2704:	009b      	lsls	r3, r3, #2
    2706:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    270a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    270e:	687a      	ldr	r2, [r7, #4]
    2710:	1152      	asrs	r2, r2, #5
    2712:	0092      	lsls	r2, r2, #2
    2714:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2718:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    271c:	6812      	ldr	r2, [r2, #0]
    271e:	6879      	ldr	r1, [r7, #4]
    2720:	f001 011f 	and.w	r1, r1, #31
    2724:	2001      	movs	r0, #1
    2726:	fa00 f101 	lsl.w	r1, r0, r1
    272a:	430a      	orrs	r2, r1
    272c:	601a      	str	r2, [r3, #0]
    272e:	e000      	b.n	2732 <set_pending+0x40>
    2730:	bf00      	nop
    2732:	370c      	adds	r7, #12
    2734:	46bd      	mov	sp, r7
    2736:	bc80      	pop	{r7}
    2738:	4770      	bx	lr

0000273a <clear_pending>:
    273a:	b480      	push	{r7}
    273c:	b083      	sub	sp, #12
    273e:	af00      	add	r7, sp, #0
    2740:	6078      	str	r0, [r7, #4]
    2742:	687b      	ldr	r3, [r7, #4]
    2744:	2b3b      	cmp	r3, #59	; 0x3b
    2746:	dc0c      	bgt.n	2762 <clear_pending+0x28>
    2748:	687b      	ldr	r3, [r7, #4]
    274a:	115b      	asrs	r3, r3, #5
    274c:	009a      	lsls	r2, r3, #2
    274e:	4b07      	ldr	r3, [pc, #28]	; (276c <clear_pending+0x32>)
    2750:	4413      	add	r3, r2
    2752:	687a      	ldr	r2, [r7, #4]
    2754:	f002 021f 	and.w	r2, r2, #31
    2758:	2101      	movs	r1, #1
    275a:	fa01 f202 	lsl.w	r2, r1, r2
    275e:	601a      	str	r2, [r3, #0]
    2760:	e000      	b.n	2764 <clear_pending+0x2a>
    2762:	bf00      	nop
    2764:	370c      	adds	r7, #12
    2766:	46bd      	mov	sp, r7
    2768:	bc80      	pop	{r7}
    276a:	4770      	bx	lr
    276c:	e000e280 	.word	0xe000e280

00002770 <set_int_priority>:
    2770:	b480      	push	{r7}
    2772:	b083      	sub	sp, #12
    2774:	af00      	add	r7, sp, #0
    2776:	6078      	str	r0, [r7, #4]
    2778:	6039      	str	r1, [r7, #0]
    277a:	687b      	ldr	r3, [r7, #4]
    277c:	2b00      	cmp	r3, #0
    277e:	db0d      	blt.n	279c <set_int_priority+0x2c>
    2780:	687b      	ldr	r3, [r7, #4]
    2782:	2b3b      	cmp	r3, #59	; 0x3b
    2784:	dc0a      	bgt.n	279c <set_int_priority+0x2c>
    2786:	687b      	ldr	r3, [r7, #4]
    2788:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    278c:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    2790:	683a      	ldr	r2, [r7, #0]
    2792:	b2d2      	uxtb	r2, r2
    2794:	0112      	lsls	r2, r2, #4
    2796:	b2d2      	uxtb	r2, r2
    2798:	701a      	strb	r2, [r3, #0]
    279a:	e012      	b.n	27c2 <set_int_priority+0x52>
    279c:	687b      	ldr	r3, [r7, #4]
    279e:	2b00      	cmp	r3, #0
    27a0:	da0f      	bge.n	27c2 <set_int_priority+0x52>
    27a2:	687b      	ldr	r3, [r7, #4]
    27a4:	f113 0f0f 	cmn.w	r3, #15
    27a8:	db0b      	blt.n	27c2 <set_int_priority+0x52>
    27aa:	687a      	ldr	r2, [r7, #4]
    27ac:	f06f 0303 	mvn.w	r3, #3
    27b0:	1a9b      	subs	r3, r3, r2
    27b2:	461a      	mov	r2, r3
    27b4:	4b05      	ldr	r3, [pc, #20]	; (27cc <set_int_priority+0x5c>)
    27b6:	4413      	add	r3, r2
    27b8:	683a      	ldr	r2, [r7, #0]
    27ba:	b2d2      	uxtb	r2, r2
    27bc:	0112      	lsls	r2, r2, #4
    27be:	b2d2      	uxtb	r2, r2
    27c0:	701a      	strb	r2, [r3, #0]
    27c2:	bf00      	nop
    27c4:	370c      	adds	r7, #12
    27c6:	46bd      	mov	sp, r7
    27c8:	bc80      	pop	{r7}
    27ca:	4770      	bx	lr
    27cc:	e000ed18 	.word	0xe000ed18

000027d0 <leap_year>:
    27d0:	b480      	push	{r7}
    27d2:	b083      	sub	sp, #12
    27d4:	af00      	add	r7, sp, #0
    27d6:	6078      	str	r0, [r7, #4]
    27d8:	687b      	ldr	r3, [r7, #4]
    27da:	f003 0303 	and.w	r3, r3, #3
    27de:	2b00      	cmp	r3, #0
    27e0:	d11a      	bne.n	2818 <leap_year+0x48>
    27e2:	687a      	ldr	r2, [r7, #4]
    27e4:	4b0f      	ldr	r3, [pc, #60]	; (2824 <leap_year+0x54>)
    27e6:	fba3 1302 	umull	r1, r3, r3, r2
    27ea:	095b      	lsrs	r3, r3, #5
    27ec:	2164      	movs	r1, #100	; 0x64
    27ee:	fb01 f303 	mul.w	r3, r1, r3
    27f2:	1ad3      	subs	r3, r2, r3
    27f4:	2b00      	cmp	r3, #0
    27f6:	d10d      	bne.n	2814 <leap_year+0x44>
    27f8:	687a      	ldr	r2, [r7, #4]
    27fa:	4b0a      	ldr	r3, [pc, #40]	; (2824 <leap_year+0x54>)
    27fc:	fba3 1302 	umull	r1, r3, r3, r2
    2800:	09db      	lsrs	r3, r3, #7
    2802:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2806:	fb01 f303 	mul.w	r3, r1, r3
    280a:	1ad3      	subs	r3, r2, r3
    280c:	2b00      	cmp	r3, #0
    280e:	d001      	beq.n	2814 <leap_year+0x44>
    2810:	2300      	movs	r3, #0
    2812:	e002      	b.n	281a <leap_year+0x4a>
    2814:	2301      	movs	r3, #1
    2816:	e000      	b.n	281a <leap_year+0x4a>
    2818:	2300      	movs	r3, #0
    281a:	4618      	mov	r0, r3
    281c:	370c      	adds	r7, #12
    281e:	46bd      	mov	sp, r7
    2820:	bc80      	pop	{r7}
    2822:	4770      	bx	lr
    2824:	51eb851f 	.word	0x51eb851f

00002828 <sec_per_month>:
    2828:	b480      	push	{r7}
    282a:	b085      	sub	sp, #20
    282c:	af00      	add	r7, sp, #0
    282e:	6078      	str	r0, [r7, #4]
    2830:	6039      	str	r1, [r7, #0]
    2832:	4a0d      	ldr	r2, [pc, #52]	; (2868 <sec_per_month+0x40>)
    2834:	683b      	ldr	r3, [r7, #0]
    2836:	4413      	add	r3, r2
    2838:	781b      	ldrb	r3, [r3, #0]
    283a:	461a      	mov	r2, r3
    283c:	4b0b      	ldr	r3, [pc, #44]	; (286c <sec_per_month+0x44>)
    283e:	fb03 f302 	mul.w	r3, r3, r2
    2842:	60fb      	str	r3, [r7, #12]
    2844:	683b      	ldr	r3, [r7, #0]
    2846:	2b02      	cmp	r3, #2
    2848:	d108      	bne.n	285c <sec_per_month+0x34>
    284a:	687b      	ldr	r3, [r7, #4]
    284c:	2b00      	cmp	r3, #0
    284e:	d005      	beq.n	285c <sec_per_month+0x34>
    2850:	68fb      	ldr	r3, [r7, #12]
    2852:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2856:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    285a:	60fb      	str	r3, [r7, #12]
    285c:	68fb      	ldr	r3, [r7, #12]
    285e:	4618      	mov	r0, r3
    2860:	3714      	adds	r7, #20
    2862:	46bd      	mov	sp, r7
    2864:	bc80      	pop	{r7}
    2866:	4770      	bx	lr
    2868:	0000498c 	.word	0x0000498c
    286c:	00015180 	.word	0x00015180

00002870 <get_date_time>:
    2870:	b580      	push	{r7, lr}
    2872:	b086      	sub	sp, #24
    2874:	af00      	add	r7, sp, #0
    2876:	6078      	str	r0, [r7, #4]
    2878:	4b66      	ldr	r3, [pc, #408]	; (2a14 <get_date_time+0x1a4>)
    287a:	699b      	ldr	r3, [r3, #24]
    287c:	041a      	lsls	r2, r3, #16
    287e:	4b65      	ldr	r3, [pc, #404]	; (2a14 <get_date_time+0x1a4>)
    2880:	69db      	ldr	r3, [r3, #28]
    2882:	4413      	add	r3, r2
    2884:	617b      	str	r3, [r7, #20]
    2886:	687b      	ldr	r3, [r7, #4]
    2888:	f240 72b2 	movw	r2, #1970	; 0x7b2
    288c:	811a      	strh	r2, [r3, #8]
    288e:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2892:	f7ff ff9d 	bl	27d0 <leap_year>
    2896:	6138      	str	r0, [r7, #16]
    2898:	e019      	b.n	28ce <get_date_time+0x5e>
    289a:	693b      	ldr	r3, [r7, #16]
    289c:	2b00      	cmp	r3, #0
    289e:	d006      	beq.n	28ae <get_date_time+0x3e>
    28a0:	697b      	ldr	r3, [r7, #20]
    28a2:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    28a6:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    28aa:	617b      	str	r3, [r7, #20]
    28ac:	e003      	b.n	28b6 <get_date_time+0x46>
    28ae:	697a      	ldr	r2, [r7, #20]
    28b0:	4b59      	ldr	r3, [pc, #356]	; (2a18 <get_date_time+0x1a8>)
    28b2:	4413      	add	r3, r2
    28b4:	617b      	str	r3, [r7, #20]
    28b6:	687b      	ldr	r3, [r7, #4]
    28b8:	891b      	ldrh	r3, [r3, #8]
    28ba:	3301      	adds	r3, #1
    28bc:	b29a      	uxth	r2, r3
    28be:	687b      	ldr	r3, [r7, #4]
    28c0:	811a      	strh	r2, [r3, #8]
    28c2:	687b      	ldr	r3, [r7, #4]
    28c4:	891b      	ldrh	r3, [r3, #8]
    28c6:	4618      	mov	r0, r3
    28c8:	f7ff ff82 	bl	27d0 <leap_year>
    28cc:	6138      	str	r0, [r7, #16]
    28ce:	693b      	ldr	r3, [r7, #16]
    28d0:	2b00      	cmp	r3, #0
    28d2:	d103      	bne.n	28dc <get_date_time+0x6c>
    28d4:	697b      	ldr	r3, [r7, #20]
    28d6:	4a51      	ldr	r2, [pc, #324]	; (2a1c <get_date_time+0x1ac>)
    28d8:	4293      	cmp	r3, r2
    28da:	d8de      	bhi.n	289a <get_date_time+0x2a>
    28dc:	693b      	ldr	r3, [r7, #16]
    28de:	2b00      	cmp	r3, #0
    28e0:	d003      	beq.n	28ea <get_date_time+0x7a>
    28e2:	697b      	ldr	r3, [r7, #20]
    28e4:	4a4e      	ldr	r2, [pc, #312]	; (2a20 <get_date_time+0x1b0>)
    28e6:	4293      	cmp	r3, r2
    28e8:	d8d7      	bhi.n	289a <get_date_time+0x2a>
    28ea:	687a      	ldr	r2, [r7, #4]
    28ec:	8853      	ldrh	r3, [r2, #2]
    28ee:	2101      	movs	r1, #1
    28f0:	f361 1389 	bfi	r3, r1, #6, #4
    28f4:	8053      	strh	r3, [r2, #2]
    28f6:	687a      	ldr	r2, [r7, #4]
    28f8:	7893      	ldrb	r3, [r2, #2]
    28fa:	2101      	movs	r1, #1
    28fc:	f361 0345 	bfi	r3, r1, #1, #5
    2900:	7093      	strb	r3, [r2, #2]
    2902:	687a      	ldr	r2, [r7, #4]
    2904:	6813      	ldr	r3, [r2, #0]
    2906:	f36f 3310 	bfc	r3, #12, #5
    290a:	6013      	str	r3, [r2, #0]
    290c:	687a      	ldr	r2, [r7, #4]
    290e:	8813      	ldrh	r3, [r2, #0]
    2910:	f36f 138b 	bfc	r3, #6, #6
    2914:	8013      	strh	r3, [r2, #0]
    2916:	687a      	ldr	r2, [r7, #4]
    2918:	7813      	ldrb	r3, [r2, #0]
    291a:	f36f 0305 	bfc	r3, #0, #6
    291e:	7013      	strb	r3, [r2, #0]
    2920:	e011      	b.n	2946 <get_date_time+0xd6>
    2922:	687b      	ldr	r3, [r7, #4]
    2924:	885b      	ldrh	r3, [r3, #2]
    2926:	f3c3 1383 	ubfx	r3, r3, #6, #4
    292a:	b2db      	uxtb	r3, r3
    292c:	3301      	adds	r3, #1
    292e:	f003 030f 	and.w	r3, r3, #15
    2932:	b2d9      	uxtb	r1, r3
    2934:	687a      	ldr	r2, [r7, #4]
    2936:	8853      	ldrh	r3, [r2, #2]
    2938:	f361 1389 	bfi	r3, r1, #6, #4
    293c:	8053      	strh	r3, [r2, #2]
    293e:	697a      	ldr	r2, [r7, #20]
    2940:	68fb      	ldr	r3, [r7, #12]
    2942:	1ad3      	subs	r3, r2, r3
    2944:	617b      	str	r3, [r7, #20]
    2946:	687b      	ldr	r3, [r7, #4]
    2948:	885b      	ldrh	r3, [r3, #2]
    294a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    294e:	b2db      	uxtb	r3, r3
    2950:	4619      	mov	r1, r3
    2952:	6938      	ldr	r0, [r7, #16]
    2954:	f7ff ff68 	bl	2828 <sec_per_month>
    2958:	60f8      	str	r0, [r7, #12]
    295a:	68fa      	ldr	r2, [r7, #12]
    295c:	697b      	ldr	r3, [r7, #20]
    295e:	429a      	cmp	r2, r3
    2960:	d3df      	bcc.n	2922 <get_date_time+0xb2>
    2962:	697b      	ldr	r3, [r7, #20]
    2964:	4a2f      	ldr	r2, [pc, #188]	; (2a24 <get_date_time+0x1b4>)
    2966:	fba2 2303 	umull	r2, r3, r2, r3
    296a:	0c1b      	lsrs	r3, r3, #16
    296c:	b2db      	uxtb	r3, r3
    296e:	3301      	adds	r3, #1
    2970:	b2db      	uxtb	r3, r3
    2972:	f003 031f 	and.w	r3, r3, #31
    2976:	b2d9      	uxtb	r1, r3
    2978:	687a      	ldr	r2, [r7, #4]
    297a:	7893      	ldrb	r3, [r2, #2]
    297c:	f361 0345 	bfi	r3, r1, #1, #5
    2980:	7093      	strb	r3, [r2, #2]
    2982:	697b      	ldr	r3, [r7, #20]
    2984:	4a27      	ldr	r2, [pc, #156]	; (2a24 <get_date_time+0x1b4>)
    2986:	fba2 1203 	umull	r1, r2, r2, r3
    298a:	0c12      	lsrs	r2, r2, #16
    298c:	4926      	ldr	r1, [pc, #152]	; (2a28 <get_date_time+0x1b8>)
    298e:	fb01 f202 	mul.w	r2, r1, r2
    2992:	1a9b      	subs	r3, r3, r2
    2994:	617b      	str	r3, [r7, #20]
    2996:	697b      	ldr	r3, [r7, #20]
    2998:	4a24      	ldr	r2, [pc, #144]	; (2a2c <get_date_time+0x1bc>)
    299a:	fba2 2303 	umull	r2, r3, r2, r3
    299e:	0adb      	lsrs	r3, r3, #11
    29a0:	b2db      	uxtb	r3, r3
    29a2:	f003 031f 	and.w	r3, r3, #31
    29a6:	b2d9      	uxtb	r1, r3
    29a8:	687a      	ldr	r2, [r7, #4]
    29aa:	6813      	ldr	r3, [r2, #0]
    29ac:	f361 3310 	bfi	r3, r1, #12, #5
    29b0:	6013      	str	r3, [r2, #0]
    29b2:	697b      	ldr	r3, [r7, #20]
    29b4:	4a1d      	ldr	r2, [pc, #116]	; (2a2c <get_date_time+0x1bc>)
    29b6:	fba2 1203 	umull	r1, r2, r2, r3
    29ba:	0ad2      	lsrs	r2, r2, #11
    29bc:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    29c0:	fb01 f202 	mul.w	r2, r1, r2
    29c4:	1a9b      	subs	r3, r3, r2
    29c6:	617b      	str	r3, [r7, #20]
    29c8:	697b      	ldr	r3, [r7, #20]
    29ca:	4a19      	ldr	r2, [pc, #100]	; (2a30 <get_date_time+0x1c0>)
    29cc:	fba2 2303 	umull	r2, r3, r2, r3
    29d0:	095b      	lsrs	r3, r3, #5
    29d2:	b2db      	uxtb	r3, r3
    29d4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    29d8:	b2d9      	uxtb	r1, r3
    29da:	687a      	ldr	r2, [r7, #4]
    29dc:	8813      	ldrh	r3, [r2, #0]
    29de:	f361 138b 	bfi	r3, r1, #6, #6
    29e2:	8013      	strh	r3, [r2, #0]
    29e4:	6979      	ldr	r1, [r7, #20]
    29e6:	4b12      	ldr	r3, [pc, #72]	; (2a30 <get_date_time+0x1c0>)
    29e8:	fba3 2301 	umull	r2, r3, r3, r1
    29ec:	095a      	lsrs	r2, r3, #5
    29ee:	4613      	mov	r3, r2
    29f0:	011b      	lsls	r3, r3, #4
    29f2:	1a9b      	subs	r3, r3, r2
    29f4:	009b      	lsls	r3, r3, #2
    29f6:	1aca      	subs	r2, r1, r3
    29f8:	b2d3      	uxtb	r3, r2
    29fa:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    29fe:	b2d9      	uxtb	r1, r3
    2a00:	687a      	ldr	r2, [r7, #4]
    2a02:	7813      	ldrb	r3, [r2, #0]
    2a04:	f361 0305 	bfi	r3, r1, #0, #6
    2a08:	7013      	strb	r3, [r2, #0]
    2a0a:	bf00      	nop
    2a0c:	3718      	adds	r7, #24
    2a0e:	46bd      	mov	sp, r7
    2a10:	bd80      	pop	{r7, pc}
    2a12:	bf00      	nop
    2a14:	40002800 	.word	0x40002800
    2a18:	fe1ecc80 	.word	0xfe1ecc80
    2a1c:	01e1337f 	.word	0x01e1337f
    2a20:	01e284ff 	.word	0x01e284ff
    2a24:	c22e4507 	.word	0xc22e4507
    2a28:	00015180 	.word	0x00015180
    2a2c:	91a2b3c5 	.word	0x91a2b3c5
    2a30:	88888889 	.word	0x88888889

00002a34 <set_date_time>:
    2a34:	b580      	push	{r7, lr}
    2a36:	b086      	sub	sp, #24
    2a38:	af00      	add	r7, sp, #0
    2a3a:	6078      	str	r0, [r7, #4]
    2a3c:	2300      	movs	r3, #0
    2a3e:	613b      	str	r3, [r7, #16]
    2a40:	687b      	ldr	r3, [r7, #4]
    2a42:	891b      	ldrh	r3, [r3, #8]
    2a44:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2a48:	4293      	cmp	r3, r2
    2a4a:	d803      	bhi.n	2a54 <set_date_time+0x20>
    2a4c:	687b      	ldr	r3, [r7, #4]
    2a4e:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2a52:	811a      	strh	r2, [r3, #8]
    2a54:	687b      	ldr	r3, [r7, #4]
    2a56:	891b      	ldrh	r3, [r3, #8]
    2a58:	f640 023a 	movw	r2, #2106	; 0x83a
    2a5c:	4293      	cmp	r3, r2
    2a5e:	d903      	bls.n	2a68 <set_date_time+0x34>
    2a60:	687b      	ldr	r3, [r7, #4]
    2a62:	f640 023a 	movw	r2, #2106	; 0x83a
    2a66:	811a      	strh	r2, [r3, #8]
    2a68:	687b      	ldr	r3, [r7, #4]
    2a6a:	891b      	ldrh	r3, [r3, #8]
    2a6c:	4618      	mov	r0, r3
    2a6e:	f7ff feaf 	bl	27d0 <leap_year>
    2a72:	60f8      	str	r0, [r7, #12]
    2a74:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2a78:	617b      	str	r3, [r7, #20]
    2a7a:	e013      	b.n	2aa4 <set_date_time+0x70>
    2a7c:	6978      	ldr	r0, [r7, #20]
    2a7e:	f7ff fea7 	bl	27d0 <leap_year>
    2a82:	4603      	mov	r3, r0
    2a84:	2b00      	cmp	r3, #0
    2a86:	d006      	beq.n	2a96 <set_date_time+0x62>
    2a88:	693b      	ldr	r3, [r7, #16]
    2a8a:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2a8e:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    2a92:	613b      	str	r3, [r7, #16]
    2a94:	e003      	b.n	2a9e <set_date_time+0x6a>
    2a96:	693a      	ldr	r2, [r7, #16]
    2a98:	4b42      	ldr	r3, [pc, #264]	; (2ba4 <set_date_time+0x170>)
    2a9a:	4413      	add	r3, r2
    2a9c:	613b      	str	r3, [r7, #16]
    2a9e:	697b      	ldr	r3, [r7, #20]
    2aa0:	3301      	adds	r3, #1
    2aa2:	617b      	str	r3, [r7, #20]
    2aa4:	687b      	ldr	r3, [r7, #4]
    2aa6:	891b      	ldrh	r3, [r3, #8]
    2aa8:	461a      	mov	r2, r3
    2aaa:	697b      	ldr	r3, [r7, #20]
    2aac:	429a      	cmp	r2, r3
    2aae:	d8e5      	bhi.n	2a7c <set_date_time+0x48>
    2ab0:	2301      	movs	r3, #1
    2ab2:	617b      	str	r3, [r7, #20]
    2ab4:	e00a      	b.n	2acc <set_date_time+0x98>
    2ab6:	6979      	ldr	r1, [r7, #20]
    2ab8:	68f8      	ldr	r0, [r7, #12]
    2aba:	f7ff feb5 	bl	2828 <sec_per_month>
    2abe:	4602      	mov	r2, r0
    2ac0:	693b      	ldr	r3, [r7, #16]
    2ac2:	4413      	add	r3, r2
    2ac4:	613b      	str	r3, [r7, #16]
    2ac6:	697b      	ldr	r3, [r7, #20]
    2ac8:	3301      	adds	r3, #1
    2aca:	617b      	str	r3, [r7, #20]
    2acc:	687b      	ldr	r3, [r7, #4]
    2ace:	885b      	ldrh	r3, [r3, #2]
    2ad0:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2ad4:	b2db      	uxtb	r3, r3
    2ad6:	461a      	mov	r2, r3
    2ad8:	697b      	ldr	r3, [r7, #20]
    2ada:	429a      	cmp	r2, r3
    2adc:	d8eb      	bhi.n	2ab6 <set_date_time+0x82>
    2ade:	687b      	ldr	r3, [r7, #4]
    2ae0:	789b      	ldrb	r3, [r3, #2]
    2ae2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2ae6:	b2db      	uxtb	r3, r3
    2ae8:	3b01      	subs	r3, #1
    2aea:	4a2f      	ldr	r2, [pc, #188]	; (2ba8 <set_date_time+0x174>)
    2aec:	fb02 f303 	mul.w	r3, r2, r3
    2af0:	461a      	mov	r2, r3
    2af2:	693b      	ldr	r3, [r7, #16]
    2af4:	4413      	add	r3, r2
    2af6:	613b      	str	r3, [r7, #16]
    2af8:	687b      	ldr	r3, [r7, #4]
    2afa:	681b      	ldr	r3, [r3, #0]
    2afc:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2b00:	b2db      	uxtb	r3, r3
    2b02:	461a      	mov	r2, r3
    2b04:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    2b08:	fb03 f302 	mul.w	r3, r3, r2
    2b0c:	461a      	mov	r2, r3
    2b0e:	693b      	ldr	r3, [r7, #16]
    2b10:	4413      	add	r3, r2
    2b12:	613b      	str	r3, [r7, #16]
    2b14:	687b      	ldr	r3, [r7, #4]
    2b16:	881b      	ldrh	r3, [r3, #0]
    2b18:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2b1c:	b2db      	uxtb	r3, r3
    2b1e:	461a      	mov	r2, r3
    2b20:	4613      	mov	r3, r2
    2b22:	011b      	lsls	r3, r3, #4
    2b24:	1a9b      	subs	r3, r3, r2
    2b26:	009b      	lsls	r3, r3, #2
    2b28:	461a      	mov	r2, r3
    2b2a:	693b      	ldr	r3, [r7, #16]
    2b2c:	4413      	add	r3, r2
    2b2e:	613b      	str	r3, [r7, #16]
    2b30:	687b      	ldr	r3, [r7, #4]
    2b32:	781b      	ldrb	r3, [r3, #0]
    2b34:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2b38:	b2db      	uxtb	r3, r3
    2b3a:	461a      	mov	r2, r3
    2b3c:	693b      	ldr	r3, [r7, #16]
    2b3e:	4413      	add	r3, r2
    2b40:	613b      	str	r3, [r7, #16]
    2b42:	4a1a      	ldr	r2, [pc, #104]	; (2bac <set_date_time+0x178>)
    2b44:	4b19      	ldr	r3, [pc, #100]	; (2bac <set_date_time+0x178>)
    2b46:	69db      	ldr	r3, [r3, #28]
    2b48:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2b4c:	61d3      	str	r3, [r2, #28]
    2b4e:	4a18      	ldr	r2, [pc, #96]	; (2bb0 <set_date_time+0x17c>)
    2b50:	4b17      	ldr	r3, [pc, #92]	; (2bb0 <set_date_time+0x17c>)
    2b52:	681b      	ldr	r3, [r3, #0]
    2b54:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2b58:	6013      	str	r3, [r2, #0]
    2b5a:	4a16      	ldr	r2, [pc, #88]	; (2bb4 <set_date_time+0x180>)
    2b5c:	4b15      	ldr	r3, [pc, #84]	; (2bb4 <set_date_time+0x180>)
    2b5e:	685b      	ldr	r3, [r3, #4]
    2b60:	f043 0310 	orr.w	r3, r3, #16
    2b64:	6053      	str	r3, [r2, #4]
    2b66:	4a13      	ldr	r2, [pc, #76]	; (2bb4 <set_date_time+0x180>)
    2b68:	693b      	ldr	r3, [r7, #16]
    2b6a:	0c1b      	lsrs	r3, r3, #16
    2b6c:	6193      	str	r3, [r2, #24]
    2b6e:	4a11      	ldr	r2, [pc, #68]	; (2bb4 <set_date_time+0x180>)
    2b70:	693b      	ldr	r3, [r7, #16]
    2b72:	b29b      	uxth	r3, r3
    2b74:	61d3      	str	r3, [r2, #28]
    2b76:	4a0f      	ldr	r2, [pc, #60]	; (2bb4 <set_date_time+0x180>)
    2b78:	4b0e      	ldr	r3, [pc, #56]	; (2bb4 <set_date_time+0x180>)
    2b7a:	685b      	ldr	r3, [r3, #4]
    2b7c:	f023 0310 	bic.w	r3, r3, #16
    2b80:	6053      	str	r3, [r2, #4]
    2b82:	bf00      	nop
    2b84:	4b0b      	ldr	r3, [pc, #44]	; (2bb4 <set_date_time+0x180>)
    2b86:	685b      	ldr	r3, [r3, #4]
    2b88:	f003 0320 	and.w	r3, r3, #32
    2b8c:	2b00      	cmp	r3, #0
    2b8e:	d0f9      	beq.n	2b84 <set_date_time+0x150>
    2b90:	4a07      	ldr	r2, [pc, #28]	; (2bb0 <set_date_time+0x17c>)
    2b92:	4b07      	ldr	r3, [pc, #28]	; (2bb0 <set_date_time+0x17c>)
    2b94:	681b      	ldr	r3, [r3, #0]
    2b96:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2b9a:	6013      	str	r3, [r2, #0]
    2b9c:	bf00      	nop
    2b9e:	3718      	adds	r7, #24
    2ba0:	46bd      	mov	sp, r7
    2ba2:	bd80      	pop	{r7, pc}
    2ba4:	01e13380 	.word	0x01e13380
    2ba8:	00015180 	.word	0x00015180
    2bac:	40021000 	.word	0x40021000
    2bb0:	40007000 	.word	0x40007000
    2bb4:	40002800 	.word	0x40002800

00002bb8 <rtc_init>:
    2bb8:	b580      	push	{r7, lr}
    2bba:	b082      	sub	sp, #8
    2bbc:	af00      	add	r7, sp, #0
    2bbe:	6078      	str	r0, [r7, #4]
    2bc0:	6039      	str	r1, [r7, #0]
    2bc2:	4b4a      	ldr	r3, [pc, #296]	; (2cec <rtc_init+0x134>)
    2bc4:	685b      	ldr	r3, [r3, #4]
    2bc6:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2bca:	4293      	cmp	r3, r2
    2bcc:	f000 8082 	beq.w	2cd4 <rtc_init+0x11c>
    2bd0:	4a47      	ldr	r2, [pc, #284]	; (2cf0 <rtc_init+0x138>)
    2bd2:	4b47      	ldr	r3, [pc, #284]	; (2cf0 <rtc_init+0x138>)
    2bd4:	69db      	ldr	r3, [r3, #28]
    2bd6:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2bda:	61d3      	str	r3, [r2, #28]
    2bdc:	4a45      	ldr	r2, [pc, #276]	; (2cf4 <rtc_init+0x13c>)
    2bde:	4b45      	ldr	r3, [pc, #276]	; (2cf4 <rtc_init+0x13c>)
    2be0:	681b      	ldr	r3, [r3, #0]
    2be2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2be6:	6013      	str	r3, [r2, #0]
    2be8:	4a41      	ldr	r2, [pc, #260]	; (2cf0 <rtc_init+0x138>)
    2bea:	4b41      	ldr	r3, [pc, #260]	; (2cf0 <rtc_init+0x138>)
    2bec:	6a1b      	ldr	r3, [r3, #32]
    2bee:	f043 0301 	orr.w	r3, r3, #1
    2bf2:	6213      	str	r3, [r2, #32]
    2bf4:	bf00      	nop
    2bf6:	4b3e      	ldr	r3, [pc, #248]	; (2cf0 <rtc_init+0x138>)
    2bf8:	6a1b      	ldr	r3, [r3, #32]
    2bfa:	f003 0302 	and.w	r3, r3, #2
    2bfe:	2b00      	cmp	r3, #0
    2c00:	d0f9      	beq.n	2bf6 <rtc_init+0x3e>
    2c02:	4a3b      	ldr	r2, [pc, #236]	; (2cf0 <rtc_init+0x138>)
    2c04:	4b3a      	ldr	r3, [pc, #232]	; (2cf0 <rtc_init+0x138>)
    2c06:	6a1b      	ldr	r3, [r3, #32]
    2c08:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2c0c:	6213      	str	r3, [r2, #32]
    2c0e:	bf00      	nop
    2c10:	4b39      	ldr	r3, [pc, #228]	; (2cf8 <rtc_init+0x140>)
    2c12:	685b      	ldr	r3, [r3, #4]
    2c14:	f003 0308 	and.w	r3, r3, #8
    2c18:	2b00      	cmp	r3, #0
    2c1a:	d0f9      	beq.n	2c10 <rtc_init+0x58>
    2c1c:	bf00      	nop
    2c1e:	4b36      	ldr	r3, [pc, #216]	; (2cf8 <rtc_init+0x140>)
    2c20:	685b      	ldr	r3, [r3, #4]
    2c22:	f003 0320 	and.w	r3, r3, #32
    2c26:	2b00      	cmp	r3, #0
    2c28:	d0f9      	beq.n	2c1e <rtc_init+0x66>
    2c2a:	4a33      	ldr	r2, [pc, #204]	; (2cf8 <rtc_init+0x140>)
    2c2c:	4b32      	ldr	r3, [pc, #200]	; (2cf8 <rtc_init+0x140>)
    2c2e:	685b      	ldr	r3, [r3, #4]
    2c30:	f043 0310 	orr.w	r3, r3, #16
    2c34:	6053      	str	r3, [r2, #4]
    2c36:	bf00      	nop
    2c38:	4b2f      	ldr	r3, [pc, #188]	; (2cf8 <rtc_init+0x140>)
    2c3a:	685b      	ldr	r3, [r3, #4]
    2c3c:	f003 0320 	and.w	r3, r3, #32
    2c40:	2b00      	cmp	r3, #0
    2c42:	d0f9      	beq.n	2c38 <rtc_init+0x80>
    2c44:	492c      	ldr	r1, [pc, #176]	; (2cf8 <rtc_init+0x140>)
    2c46:	4b2c      	ldr	r3, [pc, #176]	; (2cf8 <rtc_init+0x140>)
    2c48:	681a      	ldr	r2, [r3, #0]
    2c4a:	683b      	ldr	r3, [r7, #0]
    2c4c:	4313      	orrs	r3, r2
    2c4e:	600b      	str	r3, [r1, #0]
    2c50:	bf00      	nop
    2c52:	4b29      	ldr	r3, [pc, #164]	; (2cf8 <rtc_init+0x140>)
    2c54:	685b      	ldr	r3, [r3, #4]
    2c56:	f003 0320 	and.w	r3, r3, #32
    2c5a:	2b00      	cmp	r3, #0
    2c5c:	d0f9      	beq.n	2c52 <rtc_init+0x9a>
    2c5e:	4a26      	ldr	r2, [pc, #152]	; (2cf8 <rtc_init+0x140>)
    2c60:	687b      	ldr	r3, [r7, #4]
    2c62:	03db      	lsls	r3, r3, #15
    2c64:	4925      	ldr	r1, [pc, #148]	; (2cfc <rtc_init+0x144>)
    2c66:	fba1 1303 	umull	r1, r3, r1, r3
    2c6a:	099b      	lsrs	r3, r3, #6
    2c6c:	3b01      	subs	r3, #1
    2c6e:	b29b      	uxth	r3, r3
    2c70:	60d3      	str	r3, [r2, #12]
    2c72:	bf00      	nop
    2c74:	4b20      	ldr	r3, [pc, #128]	; (2cf8 <rtc_init+0x140>)
    2c76:	685b      	ldr	r3, [r3, #4]
    2c78:	f003 0320 	and.w	r3, r3, #32
    2c7c:	2b00      	cmp	r3, #0
    2c7e:	d0f9      	beq.n	2c74 <rtc_init+0xbc>
    2c80:	4a1d      	ldr	r2, [pc, #116]	; (2cf8 <rtc_init+0x140>)
    2c82:	687b      	ldr	r3, [r7, #4]
    2c84:	03db      	lsls	r3, r3, #15
    2c86:	491d      	ldr	r1, [pc, #116]	; (2cfc <rtc_init+0x144>)
    2c88:	fba1 1303 	umull	r1, r3, r1, r3
    2c8c:	099b      	lsrs	r3, r3, #6
    2c8e:	3b01      	subs	r3, #1
    2c90:	0c1b      	lsrs	r3, r3, #16
    2c92:	f003 030f 	and.w	r3, r3, #15
    2c96:	6093      	str	r3, [r2, #8]
    2c98:	bf00      	nop
    2c9a:	4b17      	ldr	r3, [pc, #92]	; (2cf8 <rtc_init+0x140>)
    2c9c:	685b      	ldr	r3, [r3, #4]
    2c9e:	f003 0320 	and.w	r3, r3, #32
    2ca2:	2b00      	cmp	r3, #0
    2ca4:	d0f9      	beq.n	2c9a <rtc_init+0xe2>
    2ca6:	4b11      	ldr	r3, [pc, #68]	; (2cec <rtc_init+0x134>)
    2ca8:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2cac:	605a      	str	r2, [r3, #4]
    2cae:	4a12      	ldr	r2, [pc, #72]	; (2cf8 <rtc_init+0x140>)
    2cb0:	4b11      	ldr	r3, [pc, #68]	; (2cf8 <rtc_init+0x140>)
    2cb2:	685b      	ldr	r3, [r3, #4]
    2cb4:	f023 0310 	bic.w	r3, r3, #16
    2cb8:	6053      	str	r3, [r2, #4]
    2cba:	bf00      	nop
    2cbc:	4b0e      	ldr	r3, [pc, #56]	; (2cf8 <rtc_init+0x140>)
    2cbe:	685b      	ldr	r3, [r3, #4]
    2cc0:	f003 0320 	and.w	r3, r3, #32
    2cc4:	2b00      	cmp	r3, #0
    2cc6:	d0f9      	beq.n	2cbc <rtc_init+0x104>
    2cc8:	4a0a      	ldr	r2, [pc, #40]	; (2cf4 <rtc_init+0x13c>)
    2cca:	4b0a      	ldr	r3, [pc, #40]	; (2cf4 <rtc_init+0x13c>)
    2ccc:	681b      	ldr	r3, [r3, #0]
    2cce:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2cd2:	6013      	str	r3, [r2, #0]
    2cd4:	210f      	movs	r1, #15
    2cd6:	2003      	movs	r0, #3
    2cd8:	f7ff fd4a 	bl	2770 <set_int_priority>
    2cdc:	2003      	movs	r0, #3
    2cde:	f7ff fc8d 	bl	25fc <enable_interrupt>
    2ce2:	bf00      	nop
    2ce4:	3708      	adds	r7, #8
    2ce6:	46bd      	mov	sp, r7
    2ce8:	bd80      	pop	{r7, pc}
    2cea:	bf00      	nop
    2cec:	40006c00 	.word	0x40006c00
    2cf0:	40021000 	.word	0x40021000
    2cf4:	40007000 	.word	0x40007000
    2cf8:	40002800 	.word	0x40002800
    2cfc:	10624dd3 	.word	0x10624dd3

00002d00 <reset_backup_domain>:
    2d00:	b480      	push	{r7}
    2d02:	af00      	add	r7, sp, #0
    2d04:	4a0a      	ldr	r2, [pc, #40]	; (2d30 <reset_backup_domain+0x30>)
    2d06:	4b0a      	ldr	r3, [pc, #40]	; (2d30 <reset_backup_domain+0x30>)
    2d08:	69db      	ldr	r3, [r3, #28]
    2d0a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2d0e:	61d3      	str	r3, [r2, #28]
    2d10:	4a07      	ldr	r2, [pc, #28]	; (2d30 <reset_backup_domain+0x30>)
    2d12:	4b07      	ldr	r3, [pc, #28]	; (2d30 <reset_backup_domain+0x30>)
    2d14:	6a1b      	ldr	r3, [r3, #32]
    2d16:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2d1a:	6213      	str	r3, [r2, #32]
    2d1c:	4a04      	ldr	r2, [pc, #16]	; (2d30 <reset_backup_domain+0x30>)
    2d1e:	4b04      	ldr	r3, [pc, #16]	; (2d30 <reset_backup_domain+0x30>)
    2d20:	6a1b      	ldr	r3, [r3, #32]
    2d22:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    2d26:	6213      	str	r3, [r2, #32]
    2d28:	bf00      	nop
    2d2a:	46bd      	mov	sp, r7
    2d2c:	bc80      	pop	{r7}
    2d2e:	4770      	bx	lr
    2d30:	40021000 	.word	0x40021000

00002d34 <rtc_clock_trim>:
    2d34:	b480      	push	{r7}
    2d36:	b083      	sub	sp, #12
    2d38:	af00      	add	r7, sp, #0
    2d3a:	6078      	str	r0, [r7, #4]
    2d3c:	4a34      	ldr	r2, [pc, #208]	; (2e10 <rtc_clock_trim+0xdc>)
    2d3e:	4b34      	ldr	r3, [pc, #208]	; (2e10 <rtc_clock_trim+0xdc>)
    2d40:	69db      	ldr	r3, [r3, #28]
    2d42:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2d46:	61d3      	str	r3, [r2, #28]
    2d48:	bf00      	nop
    2d4a:	4b32      	ldr	r3, [pc, #200]	; (2e14 <rtc_clock_trim+0xe0>)
    2d4c:	685b      	ldr	r3, [r3, #4]
    2d4e:	f003 0308 	and.w	r3, r3, #8
    2d52:	2b00      	cmp	r3, #0
    2d54:	d0f9      	beq.n	2d4a <rtc_clock_trim+0x16>
    2d56:	4a30      	ldr	r2, [pc, #192]	; (2e18 <rtc_clock_trim+0xe4>)
    2d58:	4b2f      	ldr	r3, [pc, #188]	; (2e18 <rtc_clock_trim+0xe4>)
    2d5a:	681b      	ldr	r3, [r3, #0]
    2d5c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2d60:	6013      	str	r3, [r2, #0]
    2d62:	4a2c      	ldr	r2, [pc, #176]	; (2e14 <rtc_clock_trim+0xe0>)
    2d64:	4b2b      	ldr	r3, [pc, #172]	; (2e14 <rtc_clock_trim+0xe0>)
    2d66:	685b      	ldr	r3, [r3, #4]
    2d68:	f043 0310 	orr.w	r3, r3, #16
    2d6c:	6053      	str	r3, [r2, #4]
    2d6e:	4a2b      	ldr	r2, [pc, #172]	; (2e1c <rtc_clock_trim+0xe8>)
    2d70:	4b2a      	ldr	r3, [pc, #168]	; (2e1c <rtc_clock_trim+0xe8>)
    2d72:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2d74:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2d78:	62d3      	str	r3, [r2, #44]	; 0x2c
    2d7a:	687b      	ldr	r3, [r7, #4]
    2d7c:	2b00      	cmp	r3, #0
    2d7e:	d10a      	bne.n	2d96 <rtc_clock_trim+0x62>
    2d80:	4b26      	ldr	r3, [pc, #152]	; (2e1c <rtc_clock_trim+0xe8>)
    2d82:	2200      	movs	r2, #0
    2d84:	62da      	str	r2, [r3, #44]	; 0x2c
    2d86:	4b23      	ldr	r3, [pc, #140]	; (2e14 <rtc_clock_trim+0xe0>)
    2d88:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2d8c:	60da      	str	r2, [r3, #12]
    2d8e:	4b21      	ldr	r3, [pc, #132]	; (2e14 <rtc_clock_trim+0xe0>)
    2d90:	2200      	movs	r2, #0
    2d92:	609a      	str	r2, [r3, #8]
    2d94:	e023      	b.n	2dde <rtc_clock_trim+0xaa>
    2d96:	687b      	ldr	r3, [r7, #4]
    2d98:	2b00      	cmp	r3, #0
    2d9a:	dd0a      	ble.n	2db2 <rtc_clock_trim+0x7e>
    2d9c:	687b      	ldr	r3, [r7, #4]
    2d9e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2da2:	607b      	str	r3, [r7, #4]
    2da4:	491d      	ldr	r1, [pc, #116]	; (2e1c <rtc_clock_trim+0xe8>)
    2da6:	4b1d      	ldr	r3, [pc, #116]	; (2e1c <rtc_clock_trim+0xe8>)
    2da8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2daa:	687b      	ldr	r3, [r7, #4]
    2dac:	4313      	orrs	r3, r2
    2dae:	62cb      	str	r3, [r1, #44]	; 0x2c
    2db0:	e015      	b.n	2dde <rtc_clock_trim+0xaa>
    2db2:	687b      	ldr	r3, [r7, #4]
    2db4:	425b      	negs	r3, r3
    2db6:	607b      	str	r3, [r7, #4]
    2db8:	687b      	ldr	r3, [r7, #4]
    2dba:	2b7f      	cmp	r3, #127	; 0x7f
    2dbc:	dd01      	ble.n	2dc2 <rtc_clock_trim+0x8e>
    2dbe:	237f      	movs	r3, #127	; 0x7f
    2dc0:	607b      	str	r3, [r7, #4]
    2dc2:	4b16      	ldr	r3, [pc, #88]	; (2e1c <rtc_clock_trim+0xe8>)
    2dc4:	2200      	movs	r2, #0
    2dc6:	62da      	str	r2, [r3, #44]	; 0x2c
    2dc8:	4a12      	ldr	r2, [pc, #72]	; (2e14 <rtc_clock_trim+0xe0>)
    2dca:	687b      	ldr	r3, [r7, #4]
    2dcc:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2dd0:	33ff      	adds	r3, #255	; 0xff
    2dd2:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2dd6:	60d3      	str	r3, [r2, #12]
    2dd8:	4b0e      	ldr	r3, [pc, #56]	; (2e14 <rtc_clock_trim+0xe0>)
    2dda:	2200      	movs	r2, #0
    2ddc:	609a      	str	r2, [r3, #8]
    2dde:	4a0d      	ldr	r2, [pc, #52]	; (2e14 <rtc_clock_trim+0xe0>)
    2de0:	4b0c      	ldr	r3, [pc, #48]	; (2e14 <rtc_clock_trim+0xe0>)
    2de2:	685b      	ldr	r3, [r3, #4]
    2de4:	f023 0310 	bic.w	r3, r3, #16
    2de8:	6053      	str	r3, [r2, #4]
    2dea:	bf00      	nop
    2dec:	4b09      	ldr	r3, [pc, #36]	; (2e14 <rtc_clock_trim+0xe0>)
    2dee:	685b      	ldr	r3, [r3, #4]
    2df0:	f003 0320 	and.w	r3, r3, #32
    2df4:	2b00      	cmp	r3, #0
    2df6:	d0f9      	beq.n	2dec <rtc_clock_trim+0xb8>
    2df8:	4a07      	ldr	r2, [pc, #28]	; (2e18 <rtc_clock_trim+0xe4>)
    2dfa:	4b07      	ldr	r3, [pc, #28]	; (2e18 <rtc_clock_trim+0xe4>)
    2dfc:	681b      	ldr	r3, [r3, #0]
    2dfe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2e02:	6013      	str	r3, [r2, #0]
    2e04:	bf00      	nop
    2e06:	370c      	adds	r7, #12
    2e08:	46bd      	mov	sp, r7
    2e0a:	bc80      	pop	{r7}
    2e0c:	4770      	bx	lr
    2e0e:	bf00      	nop
    2e10:	40021000 	.word	0x40021000
    2e14:	40002800 	.word	0x40002800
    2e18:	40007000 	.word	0x40007000
    2e1c:	40006c00 	.word	0x40006c00

00002e20 <rtc_set_alarm>:
    2e20:	b480      	push	{r7}
    2e22:	b083      	sub	sp, #12
    2e24:	af00      	add	r7, sp, #0
    2e26:	6078      	str	r0, [r7, #4]
    2e28:	bf00      	nop
    2e2a:	370c      	adds	r7, #12
    2e2c:	46bd      	mov	sp, r7
    2e2e:	bc80      	pop	{r7}
    2e30:	4770      	bx	lr

00002e32 <str_to_date>:
    2e32:	b580      	push	{r7, lr}
    2e34:	b084      	sub	sp, #16
    2e36:	af00      	add	r7, sp, #0
    2e38:	6078      	str	r0, [r7, #4]
    2e3a:	6039      	str	r1, [r7, #0]
    2e3c:	2300      	movs	r3, #0
    2e3e:	60fb      	str	r3, [r7, #12]
    2e40:	2300      	movs	r3, #0
    2e42:	60bb      	str	r3, [r7, #8]
    2e44:	e00f      	b.n	2e66 <str_to_date+0x34>
    2e46:	68ba      	ldr	r2, [r7, #8]
    2e48:	4613      	mov	r3, r2
    2e4a:	009b      	lsls	r3, r3, #2
    2e4c:	4413      	add	r3, r2
    2e4e:	005b      	lsls	r3, r3, #1
    2e50:	4619      	mov	r1, r3
    2e52:	68fb      	ldr	r3, [r7, #12]
    2e54:	1c5a      	adds	r2, r3, #1
    2e56:	60fa      	str	r2, [r7, #12]
    2e58:	461a      	mov	r2, r3
    2e5a:	687b      	ldr	r3, [r7, #4]
    2e5c:	4413      	add	r3, r2
    2e5e:	781b      	ldrb	r3, [r3, #0]
    2e60:	440b      	add	r3, r1
    2e62:	3b30      	subs	r3, #48	; 0x30
    2e64:	60bb      	str	r3, [r7, #8]
    2e66:	68fb      	ldr	r3, [r7, #12]
    2e68:	687a      	ldr	r2, [r7, #4]
    2e6a:	4413      	add	r3, r2
    2e6c:	781b      	ldrb	r3, [r3, #0]
    2e6e:	4618      	mov	r0, r3
    2e70:	f7fe fb39 	bl	14e6 <digit>
    2e74:	4603      	mov	r3, r0
    2e76:	2b00      	cmp	r3, #0
    2e78:	d1e5      	bne.n	2e46 <str_to_date+0x14>
    2e7a:	68fb      	ldr	r3, [r7, #12]
    2e7c:	2b03      	cmp	r3, #3
    2e7e:	dd05      	ble.n	2e8c <str_to_date+0x5a>
    2e80:	68fb      	ldr	r3, [r7, #12]
    2e82:	687a      	ldr	r2, [r7, #4]
    2e84:	4413      	add	r3, r2
    2e86:	781b      	ldrb	r3, [r3, #0]
    2e88:	2b2f      	cmp	r3, #47	; 0x2f
    2e8a:	d001      	beq.n	2e90 <str_to_date+0x5e>
    2e8c:	2300      	movs	r3, #0
    2e8e:	e068      	b.n	2f62 <str_to_date+0x130>
    2e90:	68bb      	ldr	r3, [r7, #8]
    2e92:	b29a      	uxth	r2, r3
    2e94:	683b      	ldr	r3, [r7, #0]
    2e96:	811a      	strh	r2, [r3, #8]
    2e98:	68fb      	ldr	r3, [r7, #12]
    2e9a:	3301      	adds	r3, #1
    2e9c:	60fb      	str	r3, [r7, #12]
    2e9e:	2300      	movs	r3, #0
    2ea0:	60bb      	str	r3, [r7, #8]
    2ea2:	e00f      	b.n	2ec4 <str_to_date+0x92>
    2ea4:	68ba      	ldr	r2, [r7, #8]
    2ea6:	4613      	mov	r3, r2
    2ea8:	009b      	lsls	r3, r3, #2
    2eaa:	4413      	add	r3, r2
    2eac:	005b      	lsls	r3, r3, #1
    2eae:	4619      	mov	r1, r3
    2eb0:	68fb      	ldr	r3, [r7, #12]
    2eb2:	1c5a      	adds	r2, r3, #1
    2eb4:	60fa      	str	r2, [r7, #12]
    2eb6:	461a      	mov	r2, r3
    2eb8:	687b      	ldr	r3, [r7, #4]
    2eba:	4413      	add	r3, r2
    2ebc:	781b      	ldrb	r3, [r3, #0]
    2ebe:	440b      	add	r3, r1
    2ec0:	3b30      	subs	r3, #48	; 0x30
    2ec2:	60bb      	str	r3, [r7, #8]
    2ec4:	68fb      	ldr	r3, [r7, #12]
    2ec6:	687a      	ldr	r2, [r7, #4]
    2ec8:	4413      	add	r3, r2
    2eca:	781b      	ldrb	r3, [r3, #0]
    2ecc:	4618      	mov	r0, r3
    2ece:	f7fe fb0a 	bl	14e6 <digit>
    2ed2:	4603      	mov	r3, r0
    2ed4:	2b00      	cmp	r3, #0
    2ed6:	d1e5      	bne.n	2ea4 <str_to_date+0x72>
    2ed8:	68fb      	ldr	r3, [r7, #12]
    2eda:	2b06      	cmp	r3, #6
    2edc:	dd05      	ble.n	2eea <str_to_date+0xb8>
    2ede:	68fb      	ldr	r3, [r7, #12]
    2ee0:	687a      	ldr	r2, [r7, #4]
    2ee2:	4413      	add	r3, r2
    2ee4:	781b      	ldrb	r3, [r3, #0]
    2ee6:	2b2f      	cmp	r3, #47	; 0x2f
    2ee8:	d001      	beq.n	2eee <str_to_date+0xbc>
    2eea:	2300      	movs	r3, #0
    2eec:	e039      	b.n	2f62 <str_to_date+0x130>
    2eee:	68bb      	ldr	r3, [r7, #8]
    2ef0:	b2db      	uxtb	r3, r3
    2ef2:	f003 030f 	and.w	r3, r3, #15
    2ef6:	b2d9      	uxtb	r1, r3
    2ef8:	683a      	ldr	r2, [r7, #0]
    2efa:	8853      	ldrh	r3, [r2, #2]
    2efc:	f361 1389 	bfi	r3, r1, #6, #4
    2f00:	8053      	strh	r3, [r2, #2]
    2f02:	2300      	movs	r3, #0
    2f04:	60bb      	str	r3, [r7, #8]
    2f06:	68fb      	ldr	r3, [r7, #12]
    2f08:	3301      	adds	r3, #1
    2f0a:	60fb      	str	r3, [r7, #12]
    2f0c:	e00f      	b.n	2f2e <str_to_date+0xfc>
    2f0e:	68ba      	ldr	r2, [r7, #8]
    2f10:	4613      	mov	r3, r2
    2f12:	009b      	lsls	r3, r3, #2
    2f14:	4413      	add	r3, r2
    2f16:	005b      	lsls	r3, r3, #1
    2f18:	4619      	mov	r1, r3
    2f1a:	68fb      	ldr	r3, [r7, #12]
    2f1c:	1c5a      	adds	r2, r3, #1
    2f1e:	60fa      	str	r2, [r7, #12]
    2f20:	461a      	mov	r2, r3
    2f22:	687b      	ldr	r3, [r7, #4]
    2f24:	4413      	add	r3, r2
    2f26:	781b      	ldrb	r3, [r3, #0]
    2f28:	440b      	add	r3, r1
    2f2a:	3b30      	subs	r3, #48	; 0x30
    2f2c:	60bb      	str	r3, [r7, #8]
    2f2e:	68fb      	ldr	r3, [r7, #12]
    2f30:	687a      	ldr	r2, [r7, #4]
    2f32:	4413      	add	r3, r2
    2f34:	781b      	ldrb	r3, [r3, #0]
    2f36:	4618      	mov	r0, r3
    2f38:	f7fe fad5 	bl	14e6 <digit>
    2f3c:	4603      	mov	r3, r0
    2f3e:	2b00      	cmp	r3, #0
    2f40:	d1e5      	bne.n	2f0e <str_to_date+0xdc>
    2f42:	68fb      	ldr	r3, [r7, #12]
    2f44:	2b09      	cmp	r3, #9
    2f46:	dc01      	bgt.n	2f4c <str_to_date+0x11a>
    2f48:	2300      	movs	r3, #0
    2f4a:	e00a      	b.n	2f62 <str_to_date+0x130>
    2f4c:	68bb      	ldr	r3, [r7, #8]
    2f4e:	b2db      	uxtb	r3, r3
    2f50:	f003 031f 	and.w	r3, r3, #31
    2f54:	b2d9      	uxtb	r1, r3
    2f56:	683a      	ldr	r2, [r7, #0]
    2f58:	7893      	ldrb	r3, [r2, #2]
    2f5a:	f361 0345 	bfi	r3, r1, #1, #5
    2f5e:	7093      	strb	r3, [r2, #2]
    2f60:	2301      	movs	r3, #1
    2f62:	4618      	mov	r0, r3
    2f64:	3710      	adds	r7, #16
    2f66:	46bd      	mov	sp, r7
    2f68:	bd80      	pop	{r7, pc}

00002f6a <str_to_time>:
    2f6a:	b580      	push	{r7, lr}
    2f6c:	b084      	sub	sp, #16
    2f6e:	af00      	add	r7, sp, #0
    2f70:	6078      	str	r0, [r7, #4]
    2f72:	6039      	str	r1, [r7, #0]
    2f74:	2300      	movs	r3, #0
    2f76:	60fb      	str	r3, [r7, #12]
    2f78:	2300      	movs	r3, #0
    2f7a:	72fb      	strb	r3, [r7, #11]
    2f7c:	e010      	b.n	2fa0 <str_to_time+0x36>
    2f7e:	7afb      	ldrb	r3, [r7, #11]
    2f80:	461a      	mov	r2, r3
    2f82:	0092      	lsls	r2, r2, #2
    2f84:	4413      	add	r3, r2
    2f86:	005b      	lsls	r3, r3, #1
    2f88:	b2da      	uxtb	r2, r3
    2f8a:	68fb      	ldr	r3, [r7, #12]
    2f8c:	1c59      	adds	r1, r3, #1
    2f8e:	60f9      	str	r1, [r7, #12]
    2f90:	4619      	mov	r1, r3
    2f92:	687b      	ldr	r3, [r7, #4]
    2f94:	440b      	add	r3, r1
    2f96:	781b      	ldrb	r3, [r3, #0]
    2f98:	4413      	add	r3, r2
    2f9a:	b2db      	uxtb	r3, r3
    2f9c:	3b30      	subs	r3, #48	; 0x30
    2f9e:	72fb      	strb	r3, [r7, #11]
    2fa0:	68fb      	ldr	r3, [r7, #12]
    2fa2:	687a      	ldr	r2, [r7, #4]
    2fa4:	4413      	add	r3, r2
    2fa6:	781b      	ldrb	r3, [r3, #0]
    2fa8:	4618      	mov	r0, r3
    2faa:	f7fe fa9c 	bl	14e6 <digit>
    2fae:	4603      	mov	r3, r0
    2fb0:	2b00      	cmp	r3, #0
    2fb2:	d1e4      	bne.n	2f7e <str_to_time+0x14>
    2fb4:	7afb      	ldrb	r3, [r7, #11]
    2fb6:	2b17      	cmp	r3, #23
    2fb8:	d805      	bhi.n	2fc6 <str_to_time+0x5c>
    2fba:	68fb      	ldr	r3, [r7, #12]
    2fbc:	687a      	ldr	r2, [r7, #4]
    2fbe:	4413      	add	r3, r2
    2fc0:	781b      	ldrb	r3, [r3, #0]
    2fc2:	2b3a      	cmp	r3, #58	; 0x3a
    2fc4:	d001      	beq.n	2fca <str_to_time+0x60>
    2fc6:	2300      	movs	r3, #0
    2fc8:	e06d      	b.n	30a6 <str_to_time+0x13c>
    2fca:	7afb      	ldrb	r3, [r7, #11]
    2fcc:	f003 031f 	and.w	r3, r3, #31
    2fd0:	b2d9      	uxtb	r1, r3
    2fd2:	683a      	ldr	r2, [r7, #0]
    2fd4:	6813      	ldr	r3, [r2, #0]
    2fd6:	f361 3310 	bfi	r3, r1, #12, #5
    2fda:	6013      	str	r3, [r2, #0]
    2fdc:	68fb      	ldr	r3, [r7, #12]
    2fde:	3301      	adds	r3, #1
    2fe0:	60fb      	str	r3, [r7, #12]
    2fe2:	2300      	movs	r3, #0
    2fe4:	72fb      	strb	r3, [r7, #11]
    2fe6:	e010      	b.n	300a <str_to_time+0xa0>
    2fe8:	7afb      	ldrb	r3, [r7, #11]
    2fea:	461a      	mov	r2, r3
    2fec:	0092      	lsls	r2, r2, #2
    2fee:	4413      	add	r3, r2
    2ff0:	005b      	lsls	r3, r3, #1
    2ff2:	b2da      	uxtb	r2, r3
    2ff4:	68fb      	ldr	r3, [r7, #12]
    2ff6:	1c59      	adds	r1, r3, #1
    2ff8:	60f9      	str	r1, [r7, #12]
    2ffa:	4619      	mov	r1, r3
    2ffc:	687b      	ldr	r3, [r7, #4]
    2ffe:	440b      	add	r3, r1
    3000:	781b      	ldrb	r3, [r3, #0]
    3002:	4413      	add	r3, r2
    3004:	b2db      	uxtb	r3, r3
    3006:	3b30      	subs	r3, #48	; 0x30
    3008:	72fb      	strb	r3, [r7, #11]
    300a:	68fb      	ldr	r3, [r7, #12]
    300c:	687a      	ldr	r2, [r7, #4]
    300e:	4413      	add	r3, r2
    3010:	781b      	ldrb	r3, [r3, #0]
    3012:	4618      	mov	r0, r3
    3014:	f7fe fa67 	bl	14e6 <digit>
    3018:	4603      	mov	r3, r0
    301a:	2b00      	cmp	r3, #0
    301c:	d1e4      	bne.n	2fe8 <str_to_time+0x7e>
    301e:	7afb      	ldrb	r3, [r7, #11]
    3020:	2b3b      	cmp	r3, #59	; 0x3b
    3022:	d805      	bhi.n	3030 <str_to_time+0xc6>
    3024:	68fb      	ldr	r3, [r7, #12]
    3026:	687a      	ldr	r2, [r7, #4]
    3028:	4413      	add	r3, r2
    302a:	781b      	ldrb	r3, [r3, #0]
    302c:	2b3a      	cmp	r3, #58	; 0x3a
    302e:	d001      	beq.n	3034 <str_to_time+0xca>
    3030:	2300      	movs	r3, #0
    3032:	e038      	b.n	30a6 <str_to_time+0x13c>
    3034:	7afb      	ldrb	r3, [r7, #11]
    3036:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    303a:	b2d9      	uxtb	r1, r3
    303c:	683a      	ldr	r2, [r7, #0]
    303e:	8813      	ldrh	r3, [r2, #0]
    3040:	f361 138b 	bfi	r3, r1, #6, #6
    3044:	8013      	strh	r3, [r2, #0]
    3046:	2300      	movs	r3, #0
    3048:	72fb      	strb	r3, [r7, #11]
    304a:	68fb      	ldr	r3, [r7, #12]
    304c:	3301      	adds	r3, #1
    304e:	60fb      	str	r3, [r7, #12]
    3050:	e010      	b.n	3074 <str_to_time+0x10a>
    3052:	7afb      	ldrb	r3, [r7, #11]
    3054:	461a      	mov	r2, r3
    3056:	0092      	lsls	r2, r2, #2
    3058:	4413      	add	r3, r2
    305a:	005b      	lsls	r3, r3, #1
    305c:	b2da      	uxtb	r2, r3
    305e:	68fb      	ldr	r3, [r7, #12]
    3060:	1c59      	adds	r1, r3, #1
    3062:	60f9      	str	r1, [r7, #12]
    3064:	4619      	mov	r1, r3
    3066:	687b      	ldr	r3, [r7, #4]
    3068:	440b      	add	r3, r1
    306a:	781b      	ldrb	r3, [r3, #0]
    306c:	4413      	add	r3, r2
    306e:	b2db      	uxtb	r3, r3
    3070:	3b30      	subs	r3, #48	; 0x30
    3072:	72fb      	strb	r3, [r7, #11]
    3074:	68fb      	ldr	r3, [r7, #12]
    3076:	687a      	ldr	r2, [r7, #4]
    3078:	4413      	add	r3, r2
    307a:	781b      	ldrb	r3, [r3, #0]
    307c:	4618      	mov	r0, r3
    307e:	f7fe fa32 	bl	14e6 <digit>
    3082:	4603      	mov	r3, r0
    3084:	2b00      	cmp	r3, #0
    3086:	d1e4      	bne.n	3052 <str_to_time+0xe8>
    3088:	7afb      	ldrb	r3, [r7, #11]
    308a:	2b3b      	cmp	r3, #59	; 0x3b
    308c:	d901      	bls.n	3092 <str_to_time+0x128>
    308e:	2300      	movs	r3, #0
    3090:	e009      	b.n	30a6 <str_to_time+0x13c>
    3092:	7afb      	ldrb	r3, [r7, #11]
    3094:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3098:	b2d9      	uxtb	r1, r3
    309a:	683a      	ldr	r2, [r7, #0]
    309c:	7813      	ldrb	r3, [r2, #0]
    309e:	f361 0305 	bfi	r3, r1, #0, #6
    30a2:	7013      	strb	r3, [r2, #0]
    30a4:	2301      	movs	r3, #1
    30a6:	4618      	mov	r0, r3
    30a8:	3710      	adds	r7, #16
    30aa:	46bd      	mov	sp, r7
    30ac:	bd80      	pop	{r7, pc}

000030ae <date_str>:
    30ae:	b480      	push	{r7}
    30b0:	b085      	sub	sp, #20
    30b2:	af00      	add	r7, sp, #0
    30b4:	6078      	str	r0, [r7, #4]
    30b6:	6039      	str	r1, [r7, #0]
    30b8:	2300      	movs	r3, #0
    30ba:	60fb      	str	r3, [r7, #12]
    30bc:	687b      	ldr	r3, [r7, #4]
    30be:	891b      	ldrh	r3, [r3, #8]
    30c0:	60bb      	str	r3, [r7, #8]
    30c2:	68fb      	ldr	r3, [r7, #12]
    30c4:	1c5a      	adds	r2, r3, #1
    30c6:	60fa      	str	r2, [r7, #12]
    30c8:	461a      	mov	r2, r3
    30ca:	683b      	ldr	r3, [r7, #0]
    30cc:	4413      	add	r3, r2
    30ce:	68ba      	ldr	r2, [r7, #8]
    30d0:	495d      	ldr	r1, [pc, #372]	; (3248 <date_str+0x19a>)
    30d2:	fba1 1202 	umull	r1, r2, r1, r2
    30d6:	0992      	lsrs	r2, r2, #6
    30d8:	b2d2      	uxtb	r2, r2
    30da:	3230      	adds	r2, #48	; 0x30
    30dc:	b2d2      	uxtb	r2, r2
    30de:	701a      	strb	r2, [r3, #0]
    30e0:	68bb      	ldr	r3, [r7, #8]
    30e2:	4a59      	ldr	r2, [pc, #356]	; (3248 <date_str+0x19a>)
    30e4:	fba2 1203 	umull	r1, r2, r2, r3
    30e8:	0992      	lsrs	r2, r2, #6
    30ea:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    30ee:	fb01 f202 	mul.w	r2, r1, r2
    30f2:	1a9b      	subs	r3, r3, r2
    30f4:	60bb      	str	r3, [r7, #8]
    30f6:	68fb      	ldr	r3, [r7, #12]
    30f8:	1c5a      	adds	r2, r3, #1
    30fa:	60fa      	str	r2, [r7, #12]
    30fc:	461a      	mov	r2, r3
    30fe:	683b      	ldr	r3, [r7, #0]
    3100:	4413      	add	r3, r2
    3102:	68ba      	ldr	r2, [r7, #8]
    3104:	4951      	ldr	r1, [pc, #324]	; (324c <date_str+0x19e>)
    3106:	fba1 1202 	umull	r1, r2, r1, r2
    310a:	0952      	lsrs	r2, r2, #5
    310c:	b2d2      	uxtb	r2, r2
    310e:	3230      	adds	r2, #48	; 0x30
    3110:	b2d2      	uxtb	r2, r2
    3112:	701a      	strb	r2, [r3, #0]
    3114:	68bb      	ldr	r3, [r7, #8]
    3116:	4a4d      	ldr	r2, [pc, #308]	; (324c <date_str+0x19e>)
    3118:	fba2 1203 	umull	r1, r2, r2, r3
    311c:	0952      	lsrs	r2, r2, #5
    311e:	2164      	movs	r1, #100	; 0x64
    3120:	fb01 f202 	mul.w	r2, r1, r2
    3124:	1a9b      	subs	r3, r3, r2
    3126:	60bb      	str	r3, [r7, #8]
    3128:	68fb      	ldr	r3, [r7, #12]
    312a:	1c5a      	adds	r2, r3, #1
    312c:	60fa      	str	r2, [r7, #12]
    312e:	461a      	mov	r2, r3
    3130:	683b      	ldr	r3, [r7, #0]
    3132:	4413      	add	r3, r2
    3134:	68ba      	ldr	r2, [r7, #8]
    3136:	4946      	ldr	r1, [pc, #280]	; (3250 <date_str+0x1a2>)
    3138:	fba1 1202 	umull	r1, r2, r1, r2
    313c:	08d2      	lsrs	r2, r2, #3
    313e:	b2d2      	uxtb	r2, r2
    3140:	3230      	adds	r2, #48	; 0x30
    3142:	b2d2      	uxtb	r2, r2
    3144:	701a      	strb	r2, [r3, #0]
    3146:	68fb      	ldr	r3, [r7, #12]
    3148:	1c5a      	adds	r2, r3, #1
    314a:	60fa      	str	r2, [r7, #12]
    314c:	461a      	mov	r2, r3
    314e:	683b      	ldr	r3, [r7, #0]
    3150:	1898      	adds	r0, r3, r2
    3152:	68b9      	ldr	r1, [r7, #8]
    3154:	4b3e      	ldr	r3, [pc, #248]	; (3250 <date_str+0x1a2>)
    3156:	fba3 2301 	umull	r2, r3, r3, r1
    315a:	08da      	lsrs	r2, r3, #3
    315c:	4613      	mov	r3, r2
    315e:	009b      	lsls	r3, r3, #2
    3160:	4413      	add	r3, r2
    3162:	005b      	lsls	r3, r3, #1
    3164:	1aca      	subs	r2, r1, r3
    3166:	b2d3      	uxtb	r3, r2
    3168:	3330      	adds	r3, #48	; 0x30
    316a:	b2db      	uxtb	r3, r3
    316c:	7003      	strb	r3, [r0, #0]
    316e:	68fb      	ldr	r3, [r7, #12]
    3170:	1c5a      	adds	r2, r3, #1
    3172:	60fa      	str	r2, [r7, #12]
    3174:	461a      	mov	r2, r3
    3176:	683b      	ldr	r3, [r7, #0]
    3178:	4413      	add	r3, r2
    317a:	222f      	movs	r2, #47	; 0x2f
    317c:	701a      	strb	r2, [r3, #0]
    317e:	687b      	ldr	r3, [r7, #4]
    3180:	885b      	ldrh	r3, [r3, #2]
    3182:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3186:	b2db      	uxtb	r3, r3
    3188:	60bb      	str	r3, [r7, #8]
    318a:	68fb      	ldr	r3, [r7, #12]
    318c:	1c5a      	adds	r2, r3, #1
    318e:	60fa      	str	r2, [r7, #12]
    3190:	461a      	mov	r2, r3
    3192:	683b      	ldr	r3, [r7, #0]
    3194:	4413      	add	r3, r2
    3196:	68ba      	ldr	r2, [r7, #8]
    3198:	492d      	ldr	r1, [pc, #180]	; (3250 <date_str+0x1a2>)
    319a:	fba1 1202 	umull	r1, r2, r1, r2
    319e:	08d2      	lsrs	r2, r2, #3
    31a0:	b2d2      	uxtb	r2, r2
    31a2:	3230      	adds	r2, #48	; 0x30
    31a4:	b2d2      	uxtb	r2, r2
    31a6:	701a      	strb	r2, [r3, #0]
    31a8:	68fb      	ldr	r3, [r7, #12]
    31aa:	1c5a      	adds	r2, r3, #1
    31ac:	60fa      	str	r2, [r7, #12]
    31ae:	461a      	mov	r2, r3
    31b0:	683b      	ldr	r3, [r7, #0]
    31b2:	1898      	adds	r0, r3, r2
    31b4:	68b9      	ldr	r1, [r7, #8]
    31b6:	4b26      	ldr	r3, [pc, #152]	; (3250 <date_str+0x1a2>)
    31b8:	fba3 2301 	umull	r2, r3, r3, r1
    31bc:	08da      	lsrs	r2, r3, #3
    31be:	4613      	mov	r3, r2
    31c0:	009b      	lsls	r3, r3, #2
    31c2:	4413      	add	r3, r2
    31c4:	005b      	lsls	r3, r3, #1
    31c6:	1aca      	subs	r2, r1, r3
    31c8:	b2d3      	uxtb	r3, r2
    31ca:	3330      	adds	r3, #48	; 0x30
    31cc:	b2db      	uxtb	r3, r3
    31ce:	7003      	strb	r3, [r0, #0]
    31d0:	68fb      	ldr	r3, [r7, #12]
    31d2:	1c5a      	adds	r2, r3, #1
    31d4:	60fa      	str	r2, [r7, #12]
    31d6:	461a      	mov	r2, r3
    31d8:	683b      	ldr	r3, [r7, #0]
    31da:	4413      	add	r3, r2
    31dc:	222f      	movs	r2, #47	; 0x2f
    31de:	701a      	strb	r2, [r3, #0]
    31e0:	687b      	ldr	r3, [r7, #4]
    31e2:	789b      	ldrb	r3, [r3, #2]
    31e4:	f3c3 0344 	ubfx	r3, r3, #1, #5
    31e8:	b2db      	uxtb	r3, r3
    31ea:	60bb      	str	r3, [r7, #8]
    31ec:	68fb      	ldr	r3, [r7, #12]
    31ee:	1c5a      	adds	r2, r3, #1
    31f0:	60fa      	str	r2, [r7, #12]
    31f2:	461a      	mov	r2, r3
    31f4:	683b      	ldr	r3, [r7, #0]
    31f6:	4413      	add	r3, r2
    31f8:	68ba      	ldr	r2, [r7, #8]
    31fa:	4915      	ldr	r1, [pc, #84]	; (3250 <date_str+0x1a2>)
    31fc:	fba1 1202 	umull	r1, r2, r1, r2
    3200:	08d2      	lsrs	r2, r2, #3
    3202:	b2d2      	uxtb	r2, r2
    3204:	3230      	adds	r2, #48	; 0x30
    3206:	b2d2      	uxtb	r2, r2
    3208:	701a      	strb	r2, [r3, #0]
    320a:	68fb      	ldr	r3, [r7, #12]
    320c:	1c5a      	adds	r2, r3, #1
    320e:	60fa      	str	r2, [r7, #12]
    3210:	461a      	mov	r2, r3
    3212:	683b      	ldr	r3, [r7, #0]
    3214:	1898      	adds	r0, r3, r2
    3216:	68b9      	ldr	r1, [r7, #8]
    3218:	4b0d      	ldr	r3, [pc, #52]	; (3250 <date_str+0x1a2>)
    321a:	fba3 2301 	umull	r2, r3, r3, r1
    321e:	08da      	lsrs	r2, r3, #3
    3220:	4613      	mov	r3, r2
    3222:	009b      	lsls	r3, r3, #2
    3224:	4413      	add	r3, r2
    3226:	005b      	lsls	r3, r3, #1
    3228:	1aca      	subs	r2, r1, r3
    322a:	b2d3      	uxtb	r3, r2
    322c:	3330      	adds	r3, #48	; 0x30
    322e:	b2db      	uxtb	r3, r3
    3230:	7003      	strb	r3, [r0, #0]
    3232:	68fb      	ldr	r3, [r7, #12]
    3234:	683a      	ldr	r2, [r7, #0]
    3236:	4413      	add	r3, r2
    3238:	2200      	movs	r2, #0
    323a:	701a      	strb	r2, [r3, #0]
    323c:	bf00      	nop
    323e:	3714      	adds	r7, #20
    3240:	46bd      	mov	sp, r7
    3242:	bc80      	pop	{r7}
    3244:	4770      	bx	lr
    3246:	bf00      	nop
    3248:	10624dd3 	.word	0x10624dd3
    324c:	51eb851f 	.word	0x51eb851f
    3250:	cccccccd 	.word	0xcccccccd

00003254 <time_str>:
    3254:	b480      	push	{r7}
    3256:	b085      	sub	sp, #20
    3258:	af00      	add	r7, sp, #0
    325a:	6078      	str	r0, [r7, #4]
    325c:	6039      	str	r1, [r7, #0]
    325e:	2300      	movs	r3, #0
    3260:	60fb      	str	r3, [r7, #12]
    3262:	687b      	ldr	r3, [r7, #4]
    3264:	681b      	ldr	r3, [r3, #0]
    3266:	f3c3 3304 	ubfx	r3, r3, #12, #5
    326a:	b2db      	uxtb	r3, r3
    326c:	60bb      	str	r3, [r7, #8]
    326e:	68fb      	ldr	r3, [r7, #12]
    3270:	1c5a      	adds	r2, r3, #1
    3272:	60fa      	str	r2, [r7, #12]
    3274:	461a      	mov	r2, r3
    3276:	683b      	ldr	r3, [r7, #0]
    3278:	4413      	add	r3, r2
    327a:	68ba      	ldr	r2, [r7, #8]
    327c:	4943      	ldr	r1, [pc, #268]	; (338c <time_str+0x138>)
    327e:	fba1 1202 	umull	r1, r2, r1, r2
    3282:	08d2      	lsrs	r2, r2, #3
    3284:	b2d2      	uxtb	r2, r2
    3286:	3230      	adds	r2, #48	; 0x30
    3288:	b2d2      	uxtb	r2, r2
    328a:	701a      	strb	r2, [r3, #0]
    328c:	68fb      	ldr	r3, [r7, #12]
    328e:	1c5a      	adds	r2, r3, #1
    3290:	60fa      	str	r2, [r7, #12]
    3292:	461a      	mov	r2, r3
    3294:	683b      	ldr	r3, [r7, #0]
    3296:	1898      	adds	r0, r3, r2
    3298:	68b9      	ldr	r1, [r7, #8]
    329a:	4b3c      	ldr	r3, [pc, #240]	; (338c <time_str+0x138>)
    329c:	fba3 2301 	umull	r2, r3, r3, r1
    32a0:	08da      	lsrs	r2, r3, #3
    32a2:	4613      	mov	r3, r2
    32a4:	009b      	lsls	r3, r3, #2
    32a6:	4413      	add	r3, r2
    32a8:	005b      	lsls	r3, r3, #1
    32aa:	1aca      	subs	r2, r1, r3
    32ac:	b2d3      	uxtb	r3, r2
    32ae:	3330      	adds	r3, #48	; 0x30
    32b0:	b2db      	uxtb	r3, r3
    32b2:	7003      	strb	r3, [r0, #0]
    32b4:	68fb      	ldr	r3, [r7, #12]
    32b6:	1c5a      	adds	r2, r3, #1
    32b8:	60fa      	str	r2, [r7, #12]
    32ba:	461a      	mov	r2, r3
    32bc:	683b      	ldr	r3, [r7, #0]
    32be:	4413      	add	r3, r2
    32c0:	223a      	movs	r2, #58	; 0x3a
    32c2:	701a      	strb	r2, [r3, #0]
    32c4:	687b      	ldr	r3, [r7, #4]
    32c6:	881b      	ldrh	r3, [r3, #0]
    32c8:	f3c3 1385 	ubfx	r3, r3, #6, #6
    32cc:	b2db      	uxtb	r3, r3
    32ce:	60bb      	str	r3, [r7, #8]
    32d0:	68fb      	ldr	r3, [r7, #12]
    32d2:	1c5a      	adds	r2, r3, #1
    32d4:	60fa      	str	r2, [r7, #12]
    32d6:	461a      	mov	r2, r3
    32d8:	683b      	ldr	r3, [r7, #0]
    32da:	4413      	add	r3, r2
    32dc:	68ba      	ldr	r2, [r7, #8]
    32de:	492b      	ldr	r1, [pc, #172]	; (338c <time_str+0x138>)
    32e0:	fba1 1202 	umull	r1, r2, r1, r2
    32e4:	08d2      	lsrs	r2, r2, #3
    32e6:	b2d2      	uxtb	r2, r2
    32e8:	3230      	adds	r2, #48	; 0x30
    32ea:	b2d2      	uxtb	r2, r2
    32ec:	701a      	strb	r2, [r3, #0]
    32ee:	68fb      	ldr	r3, [r7, #12]
    32f0:	1c5a      	adds	r2, r3, #1
    32f2:	60fa      	str	r2, [r7, #12]
    32f4:	461a      	mov	r2, r3
    32f6:	683b      	ldr	r3, [r7, #0]
    32f8:	1898      	adds	r0, r3, r2
    32fa:	68b9      	ldr	r1, [r7, #8]
    32fc:	4b23      	ldr	r3, [pc, #140]	; (338c <time_str+0x138>)
    32fe:	fba3 2301 	umull	r2, r3, r3, r1
    3302:	08da      	lsrs	r2, r3, #3
    3304:	4613      	mov	r3, r2
    3306:	009b      	lsls	r3, r3, #2
    3308:	4413      	add	r3, r2
    330a:	005b      	lsls	r3, r3, #1
    330c:	1aca      	subs	r2, r1, r3
    330e:	b2d3      	uxtb	r3, r2
    3310:	3330      	adds	r3, #48	; 0x30
    3312:	b2db      	uxtb	r3, r3
    3314:	7003      	strb	r3, [r0, #0]
    3316:	68fb      	ldr	r3, [r7, #12]
    3318:	1c5a      	adds	r2, r3, #1
    331a:	60fa      	str	r2, [r7, #12]
    331c:	461a      	mov	r2, r3
    331e:	683b      	ldr	r3, [r7, #0]
    3320:	4413      	add	r3, r2
    3322:	223a      	movs	r2, #58	; 0x3a
    3324:	701a      	strb	r2, [r3, #0]
    3326:	687b      	ldr	r3, [r7, #4]
    3328:	781b      	ldrb	r3, [r3, #0]
    332a:	f3c3 0305 	ubfx	r3, r3, #0, #6
    332e:	b2db      	uxtb	r3, r3
    3330:	60bb      	str	r3, [r7, #8]
    3332:	68fb      	ldr	r3, [r7, #12]
    3334:	1c5a      	adds	r2, r3, #1
    3336:	60fa      	str	r2, [r7, #12]
    3338:	461a      	mov	r2, r3
    333a:	683b      	ldr	r3, [r7, #0]
    333c:	4413      	add	r3, r2
    333e:	68ba      	ldr	r2, [r7, #8]
    3340:	4912      	ldr	r1, [pc, #72]	; (338c <time_str+0x138>)
    3342:	fba1 1202 	umull	r1, r2, r1, r2
    3346:	08d2      	lsrs	r2, r2, #3
    3348:	b2d2      	uxtb	r2, r2
    334a:	3230      	adds	r2, #48	; 0x30
    334c:	b2d2      	uxtb	r2, r2
    334e:	701a      	strb	r2, [r3, #0]
    3350:	68fb      	ldr	r3, [r7, #12]
    3352:	1c5a      	adds	r2, r3, #1
    3354:	60fa      	str	r2, [r7, #12]
    3356:	461a      	mov	r2, r3
    3358:	683b      	ldr	r3, [r7, #0]
    335a:	1898      	adds	r0, r3, r2
    335c:	68b9      	ldr	r1, [r7, #8]
    335e:	4b0b      	ldr	r3, [pc, #44]	; (338c <time_str+0x138>)
    3360:	fba3 2301 	umull	r2, r3, r3, r1
    3364:	08da      	lsrs	r2, r3, #3
    3366:	4613      	mov	r3, r2
    3368:	009b      	lsls	r3, r3, #2
    336a:	4413      	add	r3, r2
    336c:	005b      	lsls	r3, r3, #1
    336e:	1aca      	subs	r2, r1, r3
    3370:	b2d3      	uxtb	r3, r2
    3372:	3330      	adds	r3, #48	; 0x30
    3374:	b2db      	uxtb	r3, r3
    3376:	7003      	strb	r3, [r0, #0]
    3378:	68fb      	ldr	r3, [r7, #12]
    337a:	683a      	ldr	r2, [r7, #0]
    337c:	4413      	add	r3, r2
    337e:	2200      	movs	r2, #0
    3380:	701a      	strb	r2, [r3, #0]
    3382:	bf00      	nop
    3384:	3714      	adds	r7, #20
    3386:	46bd      	mov	sp, r7
    3388:	bc80      	pop	{r7}
    338a:	4770      	bx	lr
    338c:	cccccccd 	.word	0xcccccccd

00003390 <get_fattime>:
    3390:	b580      	push	{r7, lr}
    3392:	b084      	sub	sp, #16
    3394:	af00      	add	r7, sp, #0
    3396:	463b      	mov	r3, r7
    3398:	4618      	mov	r0, r3
    339a:	f7ff fa69 	bl	2870 <get_date_time>
    339e:	783b      	ldrb	r3, [r7, #0]
    33a0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    33a4:	b2db      	uxtb	r3, r3
    33a6:	0fda      	lsrs	r2, r3, #31
    33a8:	4413      	add	r3, r2
    33aa:	105b      	asrs	r3, r3, #1
    33ac:	b2db      	uxtb	r3, r3
    33ae:	f003 031f 	and.w	r3, r3, #31
    33b2:	b2da      	uxtb	r2, r3
    33b4:	7b3b      	ldrb	r3, [r7, #12]
    33b6:	f362 0304 	bfi	r3, r2, #0, #5
    33ba:	733b      	strb	r3, [r7, #12]
    33bc:	883b      	ldrh	r3, [r7, #0]
    33be:	f3c3 1385 	ubfx	r3, r3, #6, #6
    33c2:	b2da      	uxtb	r2, r3
    33c4:	89bb      	ldrh	r3, [r7, #12]
    33c6:	f362 134a 	bfi	r3, r2, #5, #6
    33ca:	81bb      	strh	r3, [r7, #12]
    33cc:	683b      	ldr	r3, [r7, #0]
    33ce:	f3c3 3304 	ubfx	r3, r3, #12, #5
    33d2:	b2da      	uxtb	r2, r3
    33d4:	7b7b      	ldrb	r3, [r7, #13]
    33d6:	f362 03c7 	bfi	r3, r2, #3, #5
    33da:	737b      	strb	r3, [r7, #13]
    33dc:	78bb      	ldrb	r3, [r7, #2]
    33de:	f3c3 0344 	ubfx	r3, r3, #1, #5
    33e2:	b2da      	uxtb	r2, r3
    33e4:	7bbb      	ldrb	r3, [r7, #14]
    33e6:	f362 0304 	bfi	r3, r2, #0, #5
    33ea:	73bb      	strb	r3, [r7, #14]
    33ec:	887b      	ldrh	r3, [r7, #2]
    33ee:	f3c3 1383 	ubfx	r3, r3, #6, #4
    33f2:	b2da      	uxtb	r2, r3
    33f4:	89fb      	ldrh	r3, [r7, #14]
    33f6:	f362 1348 	bfi	r3, r2, #5, #4
    33fa:	81fb      	strh	r3, [r7, #14]
    33fc:	893b      	ldrh	r3, [r7, #8]
    33fe:	b2db      	uxtb	r3, r3
    3400:	3344      	adds	r3, #68	; 0x44
    3402:	b2db      	uxtb	r3, r3
    3404:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3408:	b2da      	uxtb	r2, r3
    340a:	7bfb      	ldrb	r3, [r7, #15]
    340c:	f362 0347 	bfi	r3, r2, #1, #7
    3410:	73fb      	strb	r3, [r7, #15]
    3412:	68fb      	ldr	r3, [r7, #12]
    3414:	4618      	mov	r0, r3
    3416:	3710      	adds	r7, #16
    3418:	46bd      	mov	sp, r7
    341a:	bd80      	pop	{r7, pc}

0000341c <RTC_handler>:
    341c:	b480      	push	{r7}
    341e:	b083      	sub	sp, #12
    3420:	af00      	add	r7, sp, #0
    3422:	4b0a      	ldr	r3, [pc, #40]	; (344c <RTC_handler+0x30>)
    3424:	685b      	ldr	r3, [r3, #4]
    3426:	f003 0301 	and.w	r3, r3, #1
    342a:	2b00      	cmp	r3, #0
    342c:	d001      	beq.n	3432 <RTC_handler+0x16>
    342e:	4b07      	ldr	r3, [pc, #28]	; (344c <RTC_handler+0x30>)
    3430:	685b      	ldr	r3, [r3, #4]
    3432:	4b06      	ldr	r3, [pc, #24]	; (344c <RTC_handler+0x30>)
    3434:	685b      	ldr	r3, [r3, #4]
    3436:	f003 0302 	and.w	r3, r3, #2
    343a:	2b00      	cmp	r3, #0
    343c:	d001      	beq.n	3442 <RTC_handler+0x26>
    343e:	4b03      	ldr	r3, [pc, #12]	; (344c <RTC_handler+0x30>)
    3440:	685b      	ldr	r3, [r3, #4]
    3442:	bf00      	nop
    3444:	370c      	adds	r7, #12
    3446:	46bd      	mov	sp, r7
    3448:	bc80      	pop	{r7}
    344a:	4770      	bx	lr
    344c:	40002800 	.word	0x40002800

00003450 <spi_baudrate>:
    3450:	b480      	push	{r7}
    3452:	b083      	sub	sp, #12
    3454:	af00      	add	r7, sp, #0
    3456:	6078      	str	r0, [r7, #4]
    3458:	6039      	str	r1, [r7, #0]
    345a:	687b      	ldr	r3, [r7, #4]
    345c:	681b      	ldr	r3, [r3, #0]
    345e:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    3462:	687b      	ldr	r3, [r7, #4]
    3464:	601a      	str	r2, [r3, #0]
    3466:	687b      	ldr	r3, [r7, #4]
    3468:	681a      	ldr	r2, [r3, #0]
    346a:	683b      	ldr	r3, [r7, #0]
    346c:	00db      	lsls	r3, r3, #3
    346e:	431a      	orrs	r2, r3
    3470:	687b      	ldr	r3, [r7, #4]
    3472:	601a      	str	r2, [r3, #0]
    3474:	bf00      	nop
    3476:	370c      	adds	r7, #12
    3478:	46bd      	mov	sp, r7
    347a:	bc80      	pop	{r7}
    347c:	4770      	bx	lr

0000347e <spi_config_port>:
    347e:	b580      	push	{r7, lr}
    3480:	b082      	sub	sp, #8
    3482:	af00      	add	r7, sp, #0
    3484:	6078      	str	r0, [r7, #4]
    3486:	6039      	str	r1, [r7, #0]
    3488:	4a33      	ldr	r2, [pc, #204]	; (3558 <spi_config_port+0xda>)
    348a:	4b33      	ldr	r3, [pc, #204]	; (3558 <spi_config_port+0xda>)
    348c:	699b      	ldr	r3, [r3, #24]
    348e:	f043 0301 	orr.w	r3, r3, #1
    3492:	6193      	str	r3, [r2, #24]
    3494:	687b      	ldr	r3, [r7, #4]
    3496:	4a31      	ldr	r2, [pc, #196]	; (355c <spi_config_port+0xde>)
    3498:	4293      	cmp	r3, r2
    349a:	d13e      	bne.n	351a <spi_config_port+0x9c>
    349c:	683b      	ldr	r3, [r7, #0]
    349e:	2b00      	cmp	r3, #0
    34a0:	d11a      	bne.n	34d8 <spi_config_port+0x5a>
    34a2:	4a2d      	ldr	r2, [pc, #180]	; (3558 <spi_config_port+0xda>)
    34a4:	4b2c      	ldr	r3, [pc, #176]	; (3558 <spi_config_port+0xda>)
    34a6:	699b      	ldr	r3, [r3, #24]
    34a8:	f043 0304 	orr.w	r3, r3, #4
    34ac:	6193      	str	r3, [r2, #24]
    34ae:	2203      	movs	r2, #3
    34b0:	2104      	movs	r1, #4
    34b2:	482b      	ldr	r0, [pc, #172]	; (3560 <spi_config_port+0xe2>)
    34b4:	f7fe fa1f 	bl	18f6 <config_pin>
    34b8:	220b      	movs	r2, #11
    34ba:	2105      	movs	r1, #5
    34bc:	4828      	ldr	r0, [pc, #160]	; (3560 <spi_config_port+0xe2>)
    34be:	f7fe fa1a 	bl	18f6 <config_pin>
    34c2:	2204      	movs	r2, #4
    34c4:	2106      	movs	r1, #6
    34c6:	4826      	ldr	r0, [pc, #152]	; (3560 <spi_config_port+0xe2>)
    34c8:	f7fe fa15 	bl	18f6 <config_pin>
    34cc:	220b      	movs	r2, #11
    34ce:	2107      	movs	r1, #7
    34d0:	4823      	ldr	r0, [pc, #140]	; (3560 <spi_config_port+0xe2>)
    34d2:	f7fe fa10 	bl	18f6 <config_pin>
    34d6:	e03a      	b.n	354e <spi_config_port+0xd0>
    34d8:	4a1f      	ldr	r2, [pc, #124]	; (3558 <spi_config_port+0xda>)
    34da:	4b1f      	ldr	r3, [pc, #124]	; (3558 <spi_config_port+0xda>)
    34dc:	699b      	ldr	r3, [r3, #24]
    34de:	f043 030d 	orr.w	r3, r3, #13
    34e2:	6193      	str	r3, [r2, #24]
    34e4:	4a1f      	ldr	r2, [pc, #124]	; (3564 <spi_config_port+0xe6>)
    34e6:	4b1f      	ldr	r3, [pc, #124]	; (3564 <spi_config_port+0xe6>)
    34e8:	685b      	ldr	r3, [r3, #4]
    34ea:	f043 0301 	orr.w	r3, r3, #1
    34ee:	6053      	str	r3, [r2, #4]
    34f0:	2203      	movs	r2, #3
    34f2:	210f      	movs	r1, #15
    34f4:	481a      	ldr	r0, [pc, #104]	; (3560 <spi_config_port+0xe2>)
    34f6:	f7fe f9fe 	bl	18f6 <config_pin>
    34fa:	220b      	movs	r2, #11
    34fc:	2103      	movs	r1, #3
    34fe:	481a      	ldr	r0, [pc, #104]	; (3568 <spi_config_port+0xea>)
    3500:	f7fe f9f9 	bl	18f6 <config_pin>
    3504:	2204      	movs	r2, #4
    3506:	2104      	movs	r1, #4
    3508:	4817      	ldr	r0, [pc, #92]	; (3568 <spi_config_port+0xea>)
    350a:	f7fe f9f4 	bl	18f6 <config_pin>
    350e:	220b      	movs	r2, #11
    3510:	2105      	movs	r1, #5
    3512:	4815      	ldr	r0, [pc, #84]	; (3568 <spi_config_port+0xea>)
    3514:	f7fe f9ef 	bl	18f6 <config_pin>
    3518:	e019      	b.n	354e <spi_config_port+0xd0>
    351a:	4a0f      	ldr	r2, [pc, #60]	; (3558 <spi_config_port+0xda>)
    351c:	4b0e      	ldr	r3, [pc, #56]	; (3558 <spi_config_port+0xda>)
    351e:	699b      	ldr	r3, [r3, #24]
    3520:	f043 0308 	orr.w	r3, r3, #8
    3524:	6193      	str	r3, [r2, #24]
    3526:	2203      	movs	r2, #3
    3528:	2102      	movs	r1, #2
    352a:	480f      	ldr	r0, [pc, #60]	; (3568 <spi_config_port+0xea>)
    352c:	f7fe f9e3 	bl	18f6 <config_pin>
    3530:	220b      	movs	r2, #11
    3532:	210d      	movs	r1, #13
    3534:	480c      	ldr	r0, [pc, #48]	; (3568 <spi_config_port+0xea>)
    3536:	f7fe f9de 	bl	18f6 <config_pin>
    353a:	2204      	movs	r2, #4
    353c:	210e      	movs	r1, #14
    353e:	480a      	ldr	r0, [pc, #40]	; (3568 <spi_config_port+0xea>)
    3540:	f7fe f9d9 	bl	18f6 <config_pin>
    3544:	220b      	movs	r2, #11
    3546:	210f      	movs	r1, #15
    3548:	4807      	ldr	r0, [pc, #28]	; (3568 <spi_config_port+0xea>)
    354a:	f7fe f9d4 	bl	18f6 <config_pin>
    354e:	bf00      	nop
    3550:	3708      	adds	r7, #8
    3552:	46bd      	mov	sp, r7
    3554:	bd80      	pop	{r7, pc}
    3556:	bf00      	nop
    3558:	40021000 	.word	0x40021000
    355c:	40013000 	.word	0x40013000
    3560:	40010800 	.word	0x40010800
    3564:	40010000 	.word	0x40010000
    3568:	40010c00 	.word	0x40010c00

0000356c <spi_init>:
    356c:	b580      	push	{r7, lr}
    356e:	b084      	sub	sp, #16
    3570:	af00      	add	r7, sp, #0
    3572:	60f8      	str	r0, [r7, #12]
    3574:	60b9      	str	r1, [r7, #8]
    3576:	607a      	str	r2, [r7, #4]
    3578:	603b      	str	r3, [r7, #0]
    357a:	6839      	ldr	r1, [r7, #0]
    357c:	68f8      	ldr	r0, [r7, #12]
    357e:	f7ff ff7e 	bl	347e <spi_config_port>
    3582:	68fb      	ldr	r3, [r7, #12]
    3584:	4a10      	ldr	r2, [pc, #64]	; (35c8 <spi_init+0x5c>)
    3586:	4293      	cmp	r3, r2
    3588:	d106      	bne.n	3598 <spi_init+0x2c>
    358a:	4a10      	ldr	r2, [pc, #64]	; (35cc <spi_init+0x60>)
    358c:	4b0f      	ldr	r3, [pc, #60]	; (35cc <spi_init+0x60>)
    358e:	699b      	ldr	r3, [r3, #24]
    3590:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    3594:	6193      	str	r3, [r2, #24]
    3596:	e005      	b.n	35a4 <spi_init+0x38>
    3598:	4a0c      	ldr	r2, [pc, #48]	; (35cc <spi_init+0x60>)
    359a:	4b0c      	ldr	r3, [pc, #48]	; (35cc <spi_init+0x60>)
    359c:	69db      	ldr	r3, [r3, #28]
    359e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    35a2:	61d3      	str	r3, [r2, #28]
    35a4:	68fb      	ldr	r3, [r7, #12]
    35a6:	687a      	ldr	r2, [r7, #4]
    35a8:	601a      	str	r2, [r3, #0]
    35aa:	68b9      	ldr	r1, [r7, #8]
    35ac:	68f8      	ldr	r0, [r7, #12]
    35ae:	f7ff ff4f 	bl	3450 <spi_baudrate>
    35b2:	68fb      	ldr	r3, [r7, #12]
    35b4:	681b      	ldr	r3, [r3, #0]
    35b6:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    35ba:	68fb      	ldr	r3, [r7, #12]
    35bc:	601a      	str	r2, [r3, #0]
    35be:	bf00      	nop
    35c0:	3710      	adds	r7, #16
    35c2:	46bd      	mov	sp, r7
    35c4:	bd80      	pop	{r7, pc}
    35c6:	bf00      	nop
    35c8:	40013000 	.word	0x40013000
    35cc:	40021000 	.word	0x40021000

000035d0 <spi_send>:
    35d0:	b480      	push	{r7}
    35d2:	b085      	sub	sp, #20
    35d4:	af00      	add	r7, sp, #0
    35d6:	6078      	str	r0, [r7, #4]
    35d8:	460b      	mov	r3, r1
    35da:	70fb      	strb	r3, [r7, #3]
    35dc:	bf00      	nop
    35de:	687b      	ldr	r3, [r7, #4]
    35e0:	689b      	ldr	r3, [r3, #8]
    35e2:	f003 0302 	and.w	r3, r3, #2
    35e6:	2b00      	cmp	r3, #0
    35e8:	d0f9      	beq.n	35de <spi_send+0xe>
    35ea:	78fa      	ldrb	r2, [r7, #3]
    35ec:	687b      	ldr	r3, [r7, #4]
    35ee:	60da      	str	r2, [r3, #12]
    35f0:	bf00      	nop
    35f2:	687b      	ldr	r3, [r7, #4]
    35f4:	689b      	ldr	r3, [r3, #8]
    35f6:	f003 0301 	and.w	r3, r3, #1
    35fa:	2b00      	cmp	r3, #0
    35fc:	d0f9      	beq.n	35f2 <spi_send+0x22>
    35fe:	687b      	ldr	r3, [r7, #4]
    3600:	68db      	ldr	r3, [r3, #12]
    3602:	73fb      	strb	r3, [r7, #15]
    3604:	bf00      	nop
    3606:	3714      	adds	r7, #20
    3608:	46bd      	mov	sp, r7
    360a:	bc80      	pop	{r7}
    360c:	4770      	bx	lr

0000360e <spi_receive>:
    360e:	b480      	push	{r7}
    3610:	b085      	sub	sp, #20
    3612:	af00      	add	r7, sp, #0
    3614:	6078      	str	r0, [r7, #4]
    3616:	bf00      	nop
    3618:	687b      	ldr	r3, [r7, #4]
    361a:	689b      	ldr	r3, [r3, #8]
    361c:	f003 0302 	and.w	r3, r3, #2
    3620:	2b00      	cmp	r3, #0
    3622:	d0f9      	beq.n	3618 <spi_receive+0xa>
    3624:	687b      	ldr	r3, [r7, #4]
    3626:	22ff      	movs	r2, #255	; 0xff
    3628:	60da      	str	r2, [r3, #12]
    362a:	bf00      	nop
    362c:	687b      	ldr	r3, [r7, #4]
    362e:	689b      	ldr	r3, [r3, #8]
    3630:	f003 0301 	and.w	r3, r3, #1
    3634:	2b00      	cmp	r3, #0
    3636:	d0f9      	beq.n	362c <spi_receive+0x1e>
    3638:	687b      	ldr	r3, [r7, #4]
    363a:	68db      	ldr	r3, [r3, #12]
    363c:	73fb      	strb	r3, [r7, #15]
    363e:	7bfb      	ldrb	r3, [r7, #15]
    3640:	4618      	mov	r0, r3
    3642:	3714      	adds	r7, #20
    3644:	46bd      	mov	sp, r7
    3646:	bc80      	pop	{r7}
    3648:	4770      	bx	lr

0000364a <spi_send_block>:
    364a:	b480      	push	{r7}
    364c:	b087      	sub	sp, #28
    364e:	af00      	add	r7, sp, #0
    3650:	60f8      	str	r0, [r7, #12]
    3652:	60b9      	str	r1, [r7, #8]
    3654:	607a      	str	r2, [r7, #4]
    3656:	e010      	b.n	367a <spi_send_block+0x30>
    3658:	68bb      	ldr	r3, [r7, #8]
    365a:	1c5a      	adds	r2, r3, #1
    365c:	60ba      	str	r2, [r7, #8]
    365e:	781b      	ldrb	r3, [r3, #0]
    3660:	461a      	mov	r2, r3
    3662:	68fb      	ldr	r3, [r7, #12]
    3664:	60da      	str	r2, [r3, #12]
    3666:	bf00      	nop
    3668:	68fb      	ldr	r3, [r7, #12]
    366a:	689b      	ldr	r3, [r3, #8]
    366c:	f003 0302 	and.w	r3, r3, #2
    3670:	2b00      	cmp	r3, #0
    3672:	d0f9      	beq.n	3668 <spi_send_block+0x1e>
    3674:	687b      	ldr	r3, [r7, #4]
    3676:	3b01      	subs	r3, #1
    3678:	607b      	str	r3, [r7, #4]
    367a:	687b      	ldr	r3, [r7, #4]
    367c:	2b00      	cmp	r3, #0
    367e:	d1eb      	bne.n	3658 <spi_send_block+0xe>
    3680:	bf00      	nop
    3682:	68fb      	ldr	r3, [r7, #12]
    3684:	689b      	ldr	r3, [r3, #8]
    3686:	f003 0380 	and.w	r3, r3, #128	; 0x80
    368a:	2b00      	cmp	r3, #0
    368c:	d1f9      	bne.n	3682 <spi_send_block+0x38>
    368e:	68fb      	ldr	r3, [r7, #12]
    3690:	68db      	ldr	r3, [r3, #12]
    3692:	75fb      	strb	r3, [r7, #23]
    3694:	bf00      	nop
    3696:	371c      	adds	r7, #28
    3698:	46bd      	mov	sp, r7
    369a:	bc80      	pop	{r7}
    369c:	4770      	bx	lr

0000369e <spi_receive_block>:
    369e:	b480      	push	{r7}
    36a0:	b085      	sub	sp, #20
    36a2:	af00      	add	r7, sp, #0
    36a4:	60f8      	str	r0, [r7, #12]
    36a6:	60b9      	str	r1, [r7, #8]
    36a8:	607a      	str	r2, [r7, #4]
    36aa:	e013      	b.n	36d4 <spi_receive_block+0x36>
    36ac:	68fb      	ldr	r3, [r7, #12]
    36ae:	2200      	movs	r2, #0
    36b0:	60da      	str	r2, [r3, #12]
    36b2:	bf00      	nop
    36b4:	68fb      	ldr	r3, [r7, #12]
    36b6:	689b      	ldr	r3, [r3, #8]
    36b8:	f003 0301 	and.w	r3, r3, #1
    36bc:	2b00      	cmp	r3, #0
    36be:	d0f9      	beq.n	36b4 <spi_receive_block+0x16>
    36c0:	68bb      	ldr	r3, [r7, #8]
    36c2:	1c5a      	adds	r2, r3, #1
    36c4:	60ba      	str	r2, [r7, #8]
    36c6:	68fa      	ldr	r2, [r7, #12]
    36c8:	68d2      	ldr	r2, [r2, #12]
    36ca:	b2d2      	uxtb	r2, r2
    36cc:	701a      	strb	r2, [r3, #0]
    36ce:	687b      	ldr	r3, [r7, #4]
    36d0:	3b01      	subs	r3, #1
    36d2:	607b      	str	r3, [r7, #4]
    36d4:	687b      	ldr	r3, [r7, #4]
    36d6:	2b00      	cmp	r3, #0
    36d8:	d1e8      	bne.n	36ac <spi_receive_block+0xe>
    36da:	bf00      	nop
    36dc:	3714      	adds	r7, #20
    36de:	46bd      	mov	sp, r7
    36e0:	bc80      	pop	{r7}
    36e2:	4770      	bx	lr

000036e4 <reset_mcu>:
    36e4:	4b01      	ldr	r3, [pc, #4]	; (36ec <reset_mcu+0x8>)
    36e6:	4a02      	ldr	r2, [pc, #8]	; (36f0 <reset_mcu+0xc>)
    36e8:	601a      	str	r2, [r3, #0]
    36ea:	bf00      	nop
    36ec:	e000ed0c 	.word	0xe000ed0c
    36f0:	05fa0004 	.word	0x05fa0004

000036f4 <print_fault>:
    36f4:	b580      	push	{r7, lr}
    36f6:	b082      	sub	sp, #8
    36f8:	af00      	add	r7, sp, #0
    36fa:	6078      	str	r0, [r7, #4]
    36fc:	6039      	str	r1, [r7, #0]
    36fe:	6878      	ldr	r0, [r7, #4]
    3700:	f000 f9ea 	bl	3ad8 <print>
    3704:	4818      	ldr	r0, [pc, #96]	; (3768 <print_fault+0x74>)
    3706:	f000 f9e7 	bl	3ad8 <print>
    370a:	683b      	ldr	r3, [r7, #0]
    370c:	2b00      	cmp	r3, #0
    370e:	d004      	beq.n	371a <print_fault+0x26>
    3710:	683b      	ldr	r3, [r7, #0]
    3712:	2110      	movs	r1, #16
    3714:	4618      	mov	r0, r3
    3716:	f000 fa0f 	bl	3b38 <print_int>
    371a:	200d      	movs	r0, #13
    371c:	f000 f924 	bl	3968 <put_char>
    3720:	4812      	ldr	r0, [pc, #72]	; (376c <print_fault+0x78>)
    3722:	f000 f9d9 	bl	3ad8 <print>
    3726:	4b12      	ldr	r3, [pc, #72]	; (3770 <print_fault+0x7c>)
    3728:	681b      	ldr	r3, [r3, #0]
    372a:	f3c3 430f 	ubfx	r3, r3, #16, #16
    372e:	b29b      	uxth	r3, r3
    3730:	2110      	movs	r1, #16
    3732:	4618      	mov	r0, r3
    3734:	f000 fa00 	bl	3b38 <print_int>
    3738:	480e      	ldr	r0, [pc, #56]	; (3774 <print_fault+0x80>)
    373a:	f000 f9cd 	bl	3ad8 <print>
    373e:	4b0c      	ldr	r3, [pc, #48]	; (3770 <print_fault+0x7c>)
    3740:	681b      	ldr	r3, [r3, #0]
    3742:	f3c3 2307 	ubfx	r3, r3, #8, #8
    3746:	b2db      	uxtb	r3, r3
    3748:	2110      	movs	r1, #16
    374a:	4618      	mov	r0, r3
    374c:	f000 f9f4 	bl	3b38 <print_int>
    3750:	4809      	ldr	r0, [pc, #36]	; (3778 <print_fault+0x84>)
    3752:	f000 f9c1 	bl	3ad8 <print>
    3756:	4b06      	ldr	r3, [pc, #24]	; (3770 <print_fault+0x7c>)
    3758:	681b      	ldr	r3, [r3, #0]
    375a:	b2db      	uxtb	r3, r3
    375c:	2110      	movs	r1, #16
    375e:	4618      	mov	r0, r3
    3760:	f000 f9ea 	bl	3b38 <print_int>
    3764:	e7fe      	b.n	3764 <print_fault+0x70>
    3766:	bf00      	nop
    3768:	0000499c 	.word	0x0000499c
    376c:	000049ac 	.word	0x000049ac
    3770:	e000ed28 	.word	0xe000ed28
    3774:	000049b4 	.word	0x000049b4
    3778:	000049bc 	.word	0x000049bc

0000377c <config_systicks>:
    377c:	b580      	push	{r7, lr}
    377e:	af00      	add	r7, sp, #0
    3780:	2109      	movs	r1, #9
    3782:	f06f 000e 	mvn.w	r0, #14
    3786:	f7fe fff3 	bl	2770 <set_int_priority>
    378a:	4b04      	ldr	r3, [pc, #16]	; (379c <config_systicks+0x20>)
    378c:	f242 22f3 	movw	r2, #8947	; 0x22f3
    3790:	601a      	str	r2, [r3, #0]
    3792:	4b03      	ldr	r3, [pc, #12]	; (37a0 <config_systicks+0x24>)
    3794:	2203      	movs	r2, #3
    3796:	601a      	str	r2, [r3, #0]
    3798:	bf00      	nop
    379a:	bd80      	pop	{r7, pc}
    379c:	e000e014 	.word	0xe000e014
    37a0:	e000e010 	.word	0xe000e010

000037a4 <pause>:
    37a4:	b480      	push	{r7}
    37a6:	b083      	sub	sp, #12
    37a8:	af00      	add	r7, sp, #0
    37aa:	6078      	str	r0, [r7, #4]
    37ac:	4a06      	ldr	r2, [pc, #24]	; (37c8 <pause+0x24>)
    37ae:	687b      	ldr	r3, [r7, #4]
    37b0:	6013      	str	r3, [r2, #0]
    37b2:	bf00      	nop
    37b4:	4b04      	ldr	r3, [pc, #16]	; (37c8 <pause+0x24>)
    37b6:	681b      	ldr	r3, [r3, #0]
    37b8:	2b00      	cmp	r3, #0
    37ba:	d1fb      	bne.n	37b4 <pause+0x10>
    37bc:	bf00      	nop
    37be:	370c      	adds	r7, #12
    37c0:	46bd      	mov	sp, r7
    37c2:	bc80      	pop	{r7}
    37c4:	4770      	bx	lr
    37c6:	bf00      	nop
    37c8:	200004fc 	.word	0x200004fc

000037cc <STK_handler>:
    37cc:	b480      	push	{r7}
    37ce:	af00      	add	r7, sp, #0
    37d0:	4b08      	ldr	r3, [pc, #32]	; (37f4 <STK_handler+0x28>)
    37d2:	681b      	ldr	r3, [r3, #0]
    37d4:	3301      	adds	r3, #1
    37d6:	4a07      	ldr	r2, [pc, #28]	; (37f4 <STK_handler+0x28>)
    37d8:	6013      	str	r3, [r2, #0]
    37da:	4b07      	ldr	r3, [pc, #28]	; (37f8 <STK_handler+0x2c>)
    37dc:	681b      	ldr	r3, [r3, #0]
    37de:	2b00      	cmp	r3, #0
    37e0:	d004      	beq.n	37ec <STK_handler+0x20>
    37e2:	4b05      	ldr	r3, [pc, #20]	; (37f8 <STK_handler+0x2c>)
    37e4:	681b      	ldr	r3, [r3, #0]
    37e6:	3b01      	subs	r3, #1
    37e8:	4a03      	ldr	r2, [pc, #12]	; (37f8 <STK_handler+0x2c>)
    37ea:	6013      	str	r3, [r2, #0]
    37ec:	bf00      	nop
    37ee:	46bd      	mov	sp, r7
    37f0:	bc80      	pop	{r7}
    37f2:	4770      	bx	lr
    37f4:	200004f8 	.word	0x200004f8
    37f8:	200004fc 	.word	0x200004fc

000037fc <font_color>:
    37fc:	b480      	push	{r7}
    37fe:	b083      	sub	sp, #12
    3800:	af00      	add	r7, sp, #0
    3802:	4603      	mov	r3, r0
    3804:	71fb      	strb	r3, [r7, #7]
    3806:	79fb      	ldrb	r3, [r7, #7]
    3808:	f003 030f 	and.w	r3, r3, #15
    380c:	b2da      	uxtb	r2, r3
    380e:	4b03      	ldr	r3, [pc, #12]	; (381c <font_color+0x20>)
    3810:	705a      	strb	r2, [r3, #1]
    3812:	bf00      	nop
    3814:	370c      	adds	r7, #12
    3816:	46bd      	mov	sp, r7
    3818:	bc80      	pop	{r7}
    381a:	4770      	bx	lr
    381c:	20000068 	.word	0x20000068

00003820 <bg_color>:
    3820:	b480      	push	{r7}
    3822:	b083      	sub	sp, #12
    3824:	af00      	add	r7, sp, #0
    3826:	4603      	mov	r3, r0
    3828:	71fb      	strb	r3, [r7, #7]
    382a:	79fb      	ldrb	r3, [r7, #7]
    382c:	f003 030f 	and.w	r3, r3, #15
    3830:	b2da      	uxtb	r2, r3
    3832:	4b03      	ldr	r3, [pc, #12]	; (3840 <bg_color+0x20>)
    3834:	701a      	strb	r2, [r3, #0]
    3836:	bf00      	nop
    3838:	370c      	adds	r7, #12
    383a:	46bd      	mov	sp, r7
    383c:	bc80      	pop	{r7}
    383e:	4770      	bx	lr
    3840:	20000068 	.word	0x20000068

00003844 <select_font>:
    3844:	b480      	push	{r7}
    3846:	b083      	sub	sp, #12
    3848:	af00      	add	r7, sp, #0
    384a:	4603      	mov	r3, r0
    384c:	71fb      	strb	r3, [r7, #7]
    384e:	4a04      	ldr	r2, [pc, #16]	; (3860 <select_font+0x1c>)
    3850:	79fb      	ldrb	r3, [r7, #7]
    3852:	7013      	strb	r3, [r2, #0]
    3854:	bf00      	nop
    3856:	370c      	adds	r7, #12
    3858:	46bd      	mov	sp, r7
    385a:	bc80      	pop	{r7}
    385c:	4770      	bx	lr
    385e:	bf00      	nop
    3860:	20000064 	.word	0x20000064

00003864 <new_line>:
    3864:	b580      	push	{r7, lr}
    3866:	af00      	add	r7, sp, #0
    3868:	4b1e      	ldr	r3, [pc, #120]	; (38e4 <new_line+0x80>)
    386a:	2200      	movs	r2, #0
    386c:	701a      	strb	r2, [r3, #0]
    386e:	4b1e      	ldr	r3, [pc, #120]	; (38e8 <new_line+0x84>)
    3870:	781b      	ldrb	r3, [r3, #0]
    3872:	2b01      	cmp	r3, #1
    3874:	d014      	beq.n	38a0 <new_line+0x3c>
    3876:	2b02      	cmp	r3, #2
    3878:	d022      	beq.n	38c0 <new_line+0x5c>
    387a:	2b00      	cmp	r3, #0
    387c:	d000      	beq.n	3880 <new_line+0x1c>
    387e:	e02f      	b.n	38e0 <new_line+0x7c>
    3880:	4b1a      	ldr	r3, [pc, #104]	; (38ec <new_line+0x88>)
    3882:	781b      	ldrb	r3, [r3, #0]
    3884:	3306      	adds	r3, #6
    3886:	2b6b      	cmp	r3, #107	; 0x6b
    3888:	dc06      	bgt.n	3898 <new_line+0x34>
    388a:	4b18      	ldr	r3, [pc, #96]	; (38ec <new_line+0x88>)
    388c:	781b      	ldrb	r3, [r3, #0]
    388e:	3306      	adds	r3, #6
    3890:	b2da      	uxtb	r2, r3
    3892:	4b16      	ldr	r3, [pc, #88]	; (38ec <new_line+0x88>)
    3894:	701a      	strb	r2, [r3, #0]
    3896:	e023      	b.n	38e0 <new_line+0x7c>
    3898:	2006      	movs	r0, #6
    389a:	f7fe fa05 	bl	1ca8 <gfx_scroll_up>
    389e:	e01f      	b.n	38e0 <new_line+0x7c>
    38a0:	4b12      	ldr	r3, [pc, #72]	; (38ec <new_line+0x88>)
    38a2:	781b      	ldrb	r3, [r3, #0]
    38a4:	330a      	adds	r3, #10
    38a6:	2b67      	cmp	r3, #103	; 0x67
    38a8:	dc06      	bgt.n	38b8 <new_line+0x54>
    38aa:	4b10      	ldr	r3, [pc, #64]	; (38ec <new_line+0x88>)
    38ac:	781b      	ldrb	r3, [r3, #0]
    38ae:	330a      	adds	r3, #10
    38b0:	b2da      	uxtb	r2, r3
    38b2:	4b0e      	ldr	r3, [pc, #56]	; (38ec <new_line+0x88>)
    38b4:	701a      	strb	r2, [r3, #0]
    38b6:	e013      	b.n	38e0 <new_line+0x7c>
    38b8:	200a      	movs	r0, #10
    38ba:	f7fe f9f5 	bl	1ca8 <gfx_scroll_up>
    38be:	e00f      	b.n	38e0 <new_line+0x7c>
    38c0:	4b0a      	ldr	r3, [pc, #40]	; (38ec <new_line+0x88>)
    38c2:	781b      	ldrb	r3, [r3, #0]
    38c4:	3308      	adds	r3, #8
    38c6:	2b69      	cmp	r3, #105	; 0x69
    38c8:	dc06      	bgt.n	38d8 <new_line+0x74>
    38ca:	4b08      	ldr	r3, [pc, #32]	; (38ec <new_line+0x88>)
    38cc:	781b      	ldrb	r3, [r3, #0]
    38ce:	3308      	adds	r3, #8
    38d0:	b2da      	uxtb	r2, r3
    38d2:	4b06      	ldr	r3, [pc, #24]	; (38ec <new_line+0x88>)
    38d4:	701a      	strb	r2, [r3, #0]
    38d6:	e002      	b.n	38de <new_line+0x7a>
    38d8:	2008      	movs	r0, #8
    38da:	f7fe f9e5 	bl	1ca8 <gfx_scroll_up>
    38de:	bf00      	nop
    38e0:	bf00      	nop
    38e2:	bd80      	pop	{r7, pc}
    38e4:	20000500 	.word	0x20000500
    38e8:	20000064 	.word	0x20000064
    38ec:	20000501 	.word	0x20000501

000038f0 <draw_char>:
    38f0:	b5b0      	push	{r4, r5, r7, lr}
    38f2:	b086      	sub	sp, #24
    38f4:	af00      	add	r7, sp, #0
    38f6:	60f8      	str	r0, [r7, #12]
    38f8:	60b9      	str	r1, [r7, #8]
    38fa:	607a      	str	r2, [r7, #4]
    38fc:	603b      	str	r3, [r7, #0]
    38fe:	68bc      	ldr	r4, [r7, #8]
    3900:	e026      	b.n	3950 <draw_char+0x60>
    3902:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3904:	1c5a      	adds	r2, r3, #1
    3906:	62ba      	str	r2, [r7, #40]	; 0x28
    3908:	781b      	ldrb	r3, [r3, #0]
    390a:	757b      	strb	r3, [r7, #21]
    390c:	2380      	movs	r3, #128	; 0x80
    390e:	75bb      	strb	r3, [r7, #22]
    3910:	68fd      	ldr	r5, [r7, #12]
    3912:	e017      	b.n	3944 <draw_char+0x54>
    3914:	7d7a      	ldrb	r2, [r7, #21]
    3916:	7dbb      	ldrb	r3, [r7, #22]
    3918:	4013      	ands	r3, r2
    391a:	753b      	strb	r3, [r7, #20]
    391c:	7d3b      	ldrb	r3, [r7, #20]
    391e:	2b00      	cmp	r3, #0
    3920:	d003      	beq.n	392a <draw_char+0x3a>
    3922:	4b10      	ldr	r3, [pc, #64]	; (3964 <draw_char+0x74>)
    3924:	785b      	ldrb	r3, [r3, #1]
    3926:	75fb      	strb	r3, [r7, #23]
    3928:	e002      	b.n	3930 <draw_char+0x40>
    392a:	4b0e      	ldr	r3, [pc, #56]	; (3964 <draw_char+0x74>)
    392c:	781b      	ldrb	r3, [r3, #0]
    392e:	75fb      	strb	r3, [r7, #23]
    3930:	7dfb      	ldrb	r3, [r7, #23]
    3932:	461a      	mov	r2, r3
    3934:	4621      	mov	r1, r4
    3936:	4628      	mov	r0, r5
    3938:	f7fe f8cc 	bl	1ad4 <gfx_plot>
    393c:	7dbb      	ldrb	r3, [r7, #22]
    393e:	085b      	lsrs	r3, r3, #1
    3940:	75bb      	strb	r3, [r7, #22]
    3942:	3501      	adds	r5, #1
    3944:	68fa      	ldr	r2, [r7, #12]
    3946:	687b      	ldr	r3, [r7, #4]
    3948:	4413      	add	r3, r2
    394a:	42ab      	cmp	r3, r5
    394c:	dce2      	bgt.n	3914 <draw_char+0x24>
    394e:	3401      	adds	r4, #1
    3950:	68ba      	ldr	r2, [r7, #8]
    3952:	683b      	ldr	r3, [r7, #0]
    3954:	4413      	add	r3, r2
    3956:	42a3      	cmp	r3, r4
    3958:	dcd3      	bgt.n	3902 <draw_char+0x12>
    395a:	bf00      	nop
    395c:	3718      	adds	r7, #24
    395e:	46bd      	mov	sp, r7
    3960:	bdb0      	pop	{r4, r5, r7, pc}
    3962:	bf00      	nop
    3964:	20000068 	.word	0x20000068

00003968 <put_char>:
    3968:	b580      	push	{r7, lr}
    396a:	b084      	sub	sp, #16
    396c:	af02      	add	r7, sp, #8
    396e:	4603      	mov	r3, r0
    3970:	71fb      	strb	r3, [r7, #7]
    3972:	4b3d      	ldr	r3, [pc, #244]	; (3a68 <put_char+0x100>)
    3974:	781b      	ldrb	r3, [r3, #0]
    3976:	2b01      	cmp	r3, #1
    3978:	d027      	beq.n	39ca <put_char+0x62>
    397a:	2b02      	cmp	r3, #2
    397c:	d048      	beq.n	3a10 <put_char+0xa8>
    397e:	2b00      	cmp	r3, #0
    3980:	d000      	beq.n	3984 <put_char+0x1c>
    3982:	e06d      	b.n	3a60 <put_char+0xf8>
    3984:	79fb      	ldrb	r3, [r7, #7]
    3986:	2b0f      	cmp	r3, #15
    3988:	d865      	bhi.n	3a56 <put_char+0xee>
    398a:	4b38      	ldr	r3, [pc, #224]	; (3a6c <put_char+0x104>)
    398c:	781b      	ldrb	r3, [r3, #0]
    398e:	4618      	mov	r0, r3
    3990:	4b37      	ldr	r3, [pc, #220]	; (3a70 <put_char+0x108>)
    3992:	781b      	ldrb	r3, [r3, #0]
    3994:	4619      	mov	r1, r3
    3996:	79fa      	ldrb	r2, [r7, #7]
    3998:	4613      	mov	r3, r2
    399a:	005b      	lsls	r3, r3, #1
    399c:	4413      	add	r3, r2
    399e:	005b      	lsls	r3, r3, #1
    39a0:	461a      	mov	r2, r3
    39a2:	4b34      	ldr	r3, [pc, #208]	; (3a74 <put_char+0x10c>)
    39a4:	4413      	add	r3, r2
    39a6:	9300      	str	r3, [sp, #0]
    39a8:	2306      	movs	r3, #6
    39aa:	2204      	movs	r2, #4
    39ac:	f7ff ffa0 	bl	38f0 <draw_char>
    39b0:	4b2e      	ldr	r3, [pc, #184]	; (3a6c <put_char+0x104>)
    39b2:	781b      	ldrb	r3, [r3, #0]
    39b4:	3304      	adds	r3, #4
    39b6:	b2da      	uxtb	r2, r3
    39b8:	4b2c      	ldr	r3, [pc, #176]	; (3a6c <put_char+0x104>)
    39ba:	701a      	strb	r2, [r3, #0]
    39bc:	4b2b      	ldr	r3, [pc, #172]	; (3a6c <put_char+0x104>)
    39be:	781b      	ldrb	r3, [r3, #0]
    39c0:	2bb1      	cmp	r3, #177	; 0xb1
    39c2:	d948      	bls.n	3a56 <put_char+0xee>
    39c4:	f7ff ff4e 	bl	3864 <new_line>
    39c8:	e045      	b.n	3a56 <put_char+0xee>
    39ca:	79fb      	ldrb	r3, [r7, #7]
    39cc:	2b0f      	cmp	r3, #15
    39ce:	d844      	bhi.n	3a5a <put_char+0xf2>
    39d0:	4b26      	ldr	r3, [pc, #152]	; (3a6c <put_char+0x104>)
    39d2:	781b      	ldrb	r3, [r3, #0]
    39d4:	4618      	mov	r0, r3
    39d6:	4b26      	ldr	r3, [pc, #152]	; (3a70 <put_char+0x108>)
    39d8:	781b      	ldrb	r3, [r3, #0]
    39da:	4619      	mov	r1, r3
    39dc:	79fa      	ldrb	r2, [r7, #7]
    39de:	4613      	mov	r3, r2
    39e0:	009b      	lsls	r3, r3, #2
    39e2:	4413      	add	r3, r2
    39e4:	005b      	lsls	r3, r3, #1
    39e6:	461a      	mov	r2, r3
    39e8:	4b23      	ldr	r3, [pc, #140]	; (3a78 <put_char+0x110>)
    39ea:	4413      	add	r3, r2
    39ec:	9300      	str	r3, [sp, #0]
    39ee:	230a      	movs	r3, #10
    39f0:	2208      	movs	r2, #8
    39f2:	f7ff ff7d 	bl	38f0 <draw_char>
    39f6:	4b1d      	ldr	r3, [pc, #116]	; (3a6c <put_char+0x104>)
    39f8:	781b      	ldrb	r3, [r3, #0]
    39fa:	3308      	adds	r3, #8
    39fc:	b2da      	uxtb	r2, r3
    39fe:	4b1b      	ldr	r3, [pc, #108]	; (3a6c <put_char+0x104>)
    3a00:	701a      	strb	r2, [r3, #0]
    3a02:	4b1a      	ldr	r3, [pc, #104]	; (3a6c <put_char+0x104>)
    3a04:	781b      	ldrb	r3, [r3, #0]
    3a06:	2bad      	cmp	r3, #173	; 0xad
    3a08:	d927      	bls.n	3a5a <put_char+0xf2>
    3a0a:	f7ff ff2b 	bl	3864 <new_line>
    3a0e:	e024      	b.n	3a5a <put_char+0xf2>
    3a10:	79fb      	ldrb	r3, [r7, #7]
    3a12:	2b1f      	cmp	r3, #31
    3a14:	d923      	bls.n	3a5e <put_char+0xf6>
    3a16:	79fb      	ldrb	r3, [r7, #7]
    3a18:	2b84      	cmp	r3, #132	; 0x84
    3a1a:	d820      	bhi.n	3a5e <put_char+0xf6>
    3a1c:	4b13      	ldr	r3, [pc, #76]	; (3a6c <put_char+0x104>)
    3a1e:	781b      	ldrb	r3, [r3, #0]
    3a20:	4618      	mov	r0, r3
    3a22:	4b13      	ldr	r3, [pc, #76]	; (3a70 <put_char+0x108>)
    3a24:	781b      	ldrb	r3, [r3, #0]
    3a26:	4619      	mov	r1, r3
    3a28:	79fb      	ldrb	r3, [r7, #7]
    3a2a:	3b20      	subs	r3, #32
    3a2c:	00db      	lsls	r3, r3, #3
    3a2e:	4a13      	ldr	r2, [pc, #76]	; (3a7c <put_char+0x114>)
    3a30:	4413      	add	r3, r2
    3a32:	9300      	str	r3, [sp, #0]
    3a34:	2308      	movs	r3, #8
    3a36:	2206      	movs	r2, #6
    3a38:	f7ff ff5a 	bl	38f0 <draw_char>
    3a3c:	4b0b      	ldr	r3, [pc, #44]	; (3a6c <put_char+0x104>)
    3a3e:	781b      	ldrb	r3, [r3, #0]
    3a40:	3306      	adds	r3, #6
    3a42:	b2da      	uxtb	r2, r3
    3a44:	4b09      	ldr	r3, [pc, #36]	; (3a6c <put_char+0x104>)
    3a46:	701a      	strb	r2, [r3, #0]
    3a48:	4b08      	ldr	r3, [pc, #32]	; (3a6c <put_char+0x104>)
    3a4a:	781b      	ldrb	r3, [r3, #0]
    3a4c:	2baf      	cmp	r3, #175	; 0xaf
    3a4e:	d906      	bls.n	3a5e <put_char+0xf6>
    3a50:	f7ff ff08 	bl	3864 <new_line>
    3a54:	e003      	b.n	3a5e <put_char+0xf6>
    3a56:	bf00      	nop
    3a58:	e002      	b.n	3a60 <put_char+0xf8>
    3a5a:	bf00      	nop
    3a5c:	e000      	b.n	3a60 <put_char+0xf8>
    3a5e:	bf00      	nop
    3a60:	bf00      	nop
    3a62:	3708      	adds	r7, #8
    3a64:	46bd      	mov	sp, r7
    3a66:	bd80      	pop	{r7, pc}
    3a68:	20000064 	.word	0x20000064
    3a6c:	20000500 	.word	0x20000500
    3a70:	20000501 	.word	0x20000501
    3a74:	000043f0 	.word	0x000043f0
    3a78:	00004450 	.word	0x00004450
    3a7c:	000044f0 	.word	0x000044f0

00003a80 <set_cursor>:
    3a80:	b480      	push	{r7}
    3a82:	b083      	sub	sp, #12
    3a84:	af00      	add	r7, sp, #0
    3a86:	4603      	mov	r3, r0
    3a88:	460a      	mov	r2, r1
    3a8a:	71fb      	strb	r3, [r7, #7]
    3a8c:	4613      	mov	r3, r2
    3a8e:	71bb      	strb	r3, [r7, #6]
    3a90:	4a05      	ldr	r2, [pc, #20]	; (3aa8 <set_cursor+0x28>)
    3a92:	79fb      	ldrb	r3, [r7, #7]
    3a94:	7013      	strb	r3, [r2, #0]
    3a96:	4a05      	ldr	r2, [pc, #20]	; (3aac <set_cursor+0x2c>)
    3a98:	79bb      	ldrb	r3, [r7, #6]
    3a9a:	7013      	strb	r3, [r2, #0]
    3a9c:	bf00      	nop
    3a9e:	370c      	adds	r7, #12
    3aa0:	46bd      	mov	sp, r7
    3aa2:	bc80      	pop	{r7}
    3aa4:	4770      	bx	lr
    3aa6:	bf00      	nop
    3aa8:	20000500 	.word	0x20000500
    3aac:	20000501 	.word	0x20000501

00003ab0 <get_cursor>:
    3ab0:	b480      	push	{r7}
    3ab2:	af00      	add	r7, sp, #0
    3ab4:	4b06      	ldr	r3, [pc, #24]	; (3ad0 <get_cursor+0x20>)
    3ab6:	781b      	ldrb	r3, [r3, #0]
    3ab8:	b29b      	uxth	r3, r3
    3aba:	021b      	lsls	r3, r3, #8
    3abc:	b29a      	uxth	r2, r3
    3abe:	4b05      	ldr	r3, [pc, #20]	; (3ad4 <get_cursor+0x24>)
    3ac0:	781b      	ldrb	r3, [r3, #0]
    3ac2:	b29b      	uxth	r3, r3
    3ac4:	4413      	add	r3, r2
    3ac6:	b29b      	uxth	r3, r3
    3ac8:	4618      	mov	r0, r3
    3aca:	46bd      	mov	sp, r7
    3acc:	bc80      	pop	{r7}
    3ace:	4770      	bx	lr
    3ad0:	20000500 	.word	0x20000500
    3ad4:	20000501 	.word	0x20000501

00003ad8 <print>:
    3ad8:	b580      	push	{r7, lr}
    3ada:	b084      	sub	sp, #16
    3adc:	af00      	add	r7, sp, #0
    3ade:	6078      	str	r0, [r7, #4]
    3ae0:	e011      	b.n	3b06 <print+0x2e>
    3ae2:	7bfb      	ldrb	r3, [r7, #15]
    3ae4:	2b0a      	cmp	r3, #10
    3ae6:	d004      	beq.n	3af2 <print+0x1a>
    3ae8:	2b0d      	cmp	r3, #13
    3aea:	d002      	beq.n	3af2 <print+0x1a>
    3aec:	2b08      	cmp	r3, #8
    3aee:	d003      	beq.n	3af8 <print+0x20>
    3af0:	e005      	b.n	3afe <print+0x26>
    3af2:	f7ff feb7 	bl	3864 <new_line>
    3af6:	e006      	b.n	3b06 <print+0x2e>
    3af8:	f000 f89b 	bl	3c32 <cursor_left>
    3afc:	e003      	b.n	3b06 <print+0x2e>
    3afe:	7bfb      	ldrb	r3, [r7, #15]
    3b00:	4618      	mov	r0, r3
    3b02:	f7ff ff31 	bl	3968 <put_char>
    3b06:	687b      	ldr	r3, [r7, #4]
    3b08:	1c5a      	adds	r2, r3, #1
    3b0a:	607a      	str	r2, [r7, #4]
    3b0c:	781b      	ldrb	r3, [r3, #0]
    3b0e:	73fb      	strb	r3, [r7, #15]
    3b10:	7bfb      	ldrb	r3, [r7, #15]
    3b12:	2b00      	cmp	r3, #0
    3b14:	d1e5      	bne.n	3ae2 <print+0xa>
    3b16:	bf00      	nop
    3b18:	3710      	adds	r7, #16
    3b1a:	46bd      	mov	sp, r7
    3b1c:	bd80      	pop	{r7, pc}

00003b1e <println>:
    3b1e:	b580      	push	{r7, lr}
    3b20:	b082      	sub	sp, #8
    3b22:	af00      	add	r7, sp, #0
    3b24:	6078      	str	r0, [r7, #4]
    3b26:	6878      	ldr	r0, [r7, #4]
    3b28:	f7ff ffd6 	bl	3ad8 <print>
    3b2c:	f7ff fe9a 	bl	3864 <new_line>
    3b30:	bf00      	nop
    3b32:	3708      	adds	r7, #8
    3b34:	46bd      	mov	sp, r7
    3b36:	bd80      	pop	{r7, pc}

00003b38 <print_int>:
    3b38:	b580      	push	{r7, lr}
    3b3a:	b08a      	sub	sp, #40	; 0x28
    3b3c:	af00      	add	r7, sp, #0
    3b3e:	6078      	str	r0, [r7, #4]
    3b40:	460b      	mov	r3, r1
    3b42:	70fb      	strb	r3, [r7, #3]
    3b44:	2300      	movs	r3, #0
    3b46:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3b4a:	2300      	movs	r3, #0
    3b4c:	76fb      	strb	r3, [r7, #27]
    3b4e:	2320      	movs	r3, #32
    3b50:	76bb      	strb	r3, [r7, #26]
    3b52:	230e      	movs	r3, #14
    3b54:	623b      	str	r3, [r7, #32]
    3b56:	687b      	ldr	r3, [r7, #4]
    3b58:	2b00      	cmp	r3, #0
    3b5a:	da27      	bge.n	3bac <print_int+0x74>
    3b5c:	2301      	movs	r3, #1
    3b5e:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3b62:	687b      	ldr	r3, [r7, #4]
    3b64:	425b      	negs	r3, r3
    3b66:	607b      	str	r3, [r7, #4]
    3b68:	e020      	b.n	3bac <print_int+0x74>
    3b6a:	78fa      	ldrb	r2, [r7, #3]
    3b6c:	687b      	ldr	r3, [r7, #4]
    3b6e:	fb93 f1f2 	sdiv	r1, r3, r2
    3b72:	fb02 f201 	mul.w	r2, r2, r1
    3b76:	1a9b      	subs	r3, r3, r2
    3b78:	61fb      	str	r3, [r7, #28]
    3b7a:	69fb      	ldr	r3, [r7, #28]
    3b7c:	2b09      	cmp	r3, #9
    3b7e:	dd02      	ble.n	3b86 <print_int+0x4e>
    3b80:	69fb      	ldr	r3, [r7, #28]
    3b82:	3307      	adds	r3, #7
    3b84:	61fb      	str	r3, [r7, #28]
    3b86:	6a3b      	ldr	r3, [r7, #32]
    3b88:	3b01      	subs	r3, #1
    3b8a:	623b      	str	r3, [r7, #32]
    3b8c:	69fb      	ldr	r3, [r7, #28]
    3b8e:	3330      	adds	r3, #48	; 0x30
    3b90:	61fb      	str	r3, [r7, #28]
    3b92:	69fb      	ldr	r3, [r7, #28]
    3b94:	b2d9      	uxtb	r1, r3
    3b96:	f107 020c 	add.w	r2, r7, #12
    3b9a:	6a3b      	ldr	r3, [r7, #32]
    3b9c:	4413      	add	r3, r2
    3b9e:	460a      	mov	r2, r1
    3ba0:	701a      	strb	r2, [r3, #0]
    3ba2:	78fb      	ldrb	r3, [r7, #3]
    3ba4:	687a      	ldr	r2, [r7, #4]
    3ba6:	fb92 f3f3 	sdiv	r3, r2, r3
    3baa:	607b      	str	r3, [r7, #4]
    3bac:	6a3b      	ldr	r3, [r7, #32]
    3bae:	2b01      	cmp	r3, #1
    3bb0:	dd02      	ble.n	3bb8 <print_int+0x80>
    3bb2:	687b      	ldr	r3, [r7, #4]
    3bb4:	2b00      	cmp	r3, #0
    3bb6:	d1d8      	bne.n	3b6a <print_int+0x32>
    3bb8:	6a3b      	ldr	r3, [r7, #32]
    3bba:	2b0e      	cmp	r3, #14
    3bbc:	d108      	bne.n	3bd0 <print_int+0x98>
    3bbe:	6a3b      	ldr	r3, [r7, #32]
    3bc0:	3b01      	subs	r3, #1
    3bc2:	623b      	str	r3, [r7, #32]
    3bc4:	f107 020c 	add.w	r2, r7, #12
    3bc8:	6a3b      	ldr	r3, [r7, #32]
    3bca:	4413      	add	r3, r2
    3bcc:	2230      	movs	r2, #48	; 0x30
    3bce:	701a      	strb	r2, [r3, #0]
    3bd0:	78fb      	ldrb	r3, [r7, #3]
    3bd2:	2b0a      	cmp	r3, #10
    3bd4:	d10d      	bne.n	3bf2 <print_int+0xba>
    3bd6:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    3bda:	2b00      	cmp	r3, #0
    3bdc:	d009      	beq.n	3bf2 <print_int+0xba>
    3bde:	6a3b      	ldr	r3, [r7, #32]
    3be0:	3b01      	subs	r3, #1
    3be2:	623b      	str	r3, [r7, #32]
    3be4:	f107 020c 	add.w	r2, r7, #12
    3be8:	6a3b      	ldr	r3, [r7, #32]
    3bea:	4413      	add	r3, r2
    3bec:	222d      	movs	r2, #45	; 0x2d
    3bee:	701a      	strb	r2, [r3, #0]
    3bf0:	e014      	b.n	3c1c <print_int+0xe4>
    3bf2:	78fb      	ldrb	r3, [r7, #3]
    3bf4:	2b10      	cmp	r3, #16
    3bf6:	d111      	bne.n	3c1c <print_int+0xe4>
    3bf8:	6a3b      	ldr	r3, [r7, #32]
    3bfa:	3b01      	subs	r3, #1
    3bfc:	623b      	str	r3, [r7, #32]
    3bfe:	f107 020c 	add.w	r2, r7, #12
    3c02:	6a3b      	ldr	r3, [r7, #32]
    3c04:	4413      	add	r3, r2
    3c06:	2278      	movs	r2, #120	; 0x78
    3c08:	701a      	strb	r2, [r3, #0]
    3c0a:	6a3b      	ldr	r3, [r7, #32]
    3c0c:	3b01      	subs	r3, #1
    3c0e:	623b      	str	r3, [r7, #32]
    3c10:	f107 020c 	add.w	r2, r7, #12
    3c14:	6a3b      	ldr	r3, [r7, #32]
    3c16:	4413      	add	r3, r2
    3c18:	2230      	movs	r2, #48	; 0x30
    3c1a:	701a      	strb	r2, [r3, #0]
    3c1c:	f107 020c 	add.w	r2, r7, #12
    3c20:	6a3b      	ldr	r3, [r7, #32]
    3c22:	4413      	add	r3, r2
    3c24:	4618      	mov	r0, r3
    3c26:	f7ff ff57 	bl	3ad8 <print>
    3c2a:	bf00      	nop
    3c2c:	3728      	adds	r7, #40	; 0x28
    3c2e:	46bd      	mov	sp, r7
    3c30:	bd80      	pop	{r7, pc}

00003c32 <cursor_left>:
    3c32:	b480      	push	{r7}
    3c34:	af00      	add	r7, sp, #0
    3c36:	4b1b      	ldr	r3, [pc, #108]	; (3ca4 <cursor_left+0x72>)
    3c38:	781b      	ldrb	r3, [r3, #0]
    3c3a:	2b01      	cmp	r3, #1
    3c3c:	d010      	beq.n	3c60 <cursor_left+0x2e>
    3c3e:	2b02      	cmp	r3, #2
    3c40:	d01a      	beq.n	3c78 <cursor_left+0x46>
    3c42:	2b00      	cmp	r3, #0
    3c44:	d000      	beq.n	3c48 <cursor_left+0x16>
    3c46:	e028      	b.n	3c9a <cursor_left+0x68>
    3c48:	4b17      	ldr	r3, [pc, #92]	; (3ca8 <cursor_left+0x76>)
    3c4a:	781b      	ldrb	r3, [r3, #0]
    3c4c:	3b04      	subs	r3, #4
    3c4e:	2b00      	cmp	r3, #0
    3c50:	db1e      	blt.n	3c90 <cursor_left+0x5e>
    3c52:	4b15      	ldr	r3, [pc, #84]	; (3ca8 <cursor_left+0x76>)
    3c54:	781b      	ldrb	r3, [r3, #0]
    3c56:	3b04      	subs	r3, #4
    3c58:	b2da      	uxtb	r2, r3
    3c5a:	4b13      	ldr	r3, [pc, #76]	; (3ca8 <cursor_left+0x76>)
    3c5c:	701a      	strb	r2, [r3, #0]
    3c5e:	e017      	b.n	3c90 <cursor_left+0x5e>
    3c60:	4b11      	ldr	r3, [pc, #68]	; (3ca8 <cursor_left+0x76>)
    3c62:	781b      	ldrb	r3, [r3, #0]
    3c64:	3b08      	subs	r3, #8
    3c66:	2b00      	cmp	r3, #0
    3c68:	db14      	blt.n	3c94 <cursor_left+0x62>
    3c6a:	4b0f      	ldr	r3, [pc, #60]	; (3ca8 <cursor_left+0x76>)
    3c6c:	781b      	ldrb	r3, [r3, #0]
    3c6e:	3b08      	subs	r3, #8
    3c70:	b2da      	uxtb	r2, r3
    3c72:	4b0d      	ldr	r3, [pc, #52]	; (3ca8 <cursor_left+0x76>)
    3c74:	701a      	strb	r2, [r3, #0]
    3c76:	e00d      	b.n	3c94 <cursor_left+0x62>
    3c78:	4b0b      	ldr	r3, [pc, #44]	; (3ca8 <cursor_left+0x76>)
    3c7a:	781b      	ldrb	r3, [r3, #0]
    3c7c:	3b06      	subs	r3, #6
    3c7e:	2b00      	cmp	r3, #0
    3c80:	db0a      	blt.n	3c98 <cursor_left+0x66>
    3c82:	4b09      	ldr	r3, [pc, #36]	; (3ca8 <cursor_left+0x76>)
    3c84:	781b      	ldrb	r3, [r3, #0]
    3c86:	3b06      	subs	r3, #6
    3c88:	b2da      	uxtb	r2, r3
    3c8a:	4b07      	ldr	r3, [pc, #28]	; (3ca8 <cursor_left+0x76>)
    3c8c:	701a      	strb	r2, [r3, #0]
    3c8e:	e003      	b.n	3c98 <cursor_left+0x66>
    3c90:	bf00      	nop
    3c92:	e002      	b.n	3c9a <cursor_left+0x68>
    3c94:	bf00      	nop
    3c96:	e000      	b.n	3c9a <cursor_left+0x68>
    3c98:	bf00      	nop
    3c9a:	bf00      	nop
    3c9c:	46bd      	mov	sp, r7
    3c9e:	bc80      	pop	{r7}
    3ca0:	4770      	bx	lr
    3ca2:	bf00      	nop
    3ca4:	20000064 	.word	0x20000064
    3ca8:	20000500 	.word	0x20000500

00003cac <text_scroller>:
    3cac:	b580      	push	{r7, lr}
    3cae:	b084      	sub	sp, #16
    3cb0:	af00      	add	r7, sp, #0
    3cb2:	6078      	str	r0, [r7, #4]
    3cb4:	460b      	mov	r3, r1
    3cb6:	70fb      	strb	r3, [r7, #3]
    3cb8:	f7fd ffa2 	bl	1c00 <gfx_cls>
    3cbc:	2002      	movs	r0, #2
    3cbe:	f7ff fdc1 	bl	3844 <select_font>
    3cc2:	687b      	ldr	r3, [r7, #4]
    3cc4:	1c5a      	adds	r2, r3, #1
    3cc6:	607a      	str	r2, [r7, #4]
    3cc8:	781b      	ldrb	r3, [r3, #0]
    3cca:	73fb      	strb	r3, [r7, #15]
    3ccc:	e03a      	b.n	3d44 <text_scroller+0x98>
    3cce:	2120      	movs	r1, #32
    3cd0:	2000      	movs	r0, #0
    3cd2:	f7ff fed5 	bl	3a80 <set_cursor>
    3cd6:	e00f      	b.n	3cf8 <text_scroller+0x4c>
    3cd8:	7bfb      	ldrb	r3, [r7, #15]
    3cda:	4618      	mov	r0, r3
    3cdc:	f7ff fe44 	bl	3968 <put_char>
    3ce0:	687b      	ldr	r3, [r7, #4]
    3ce2:	1c5a      	adds	r2, r3, #1
    3ce4:	607a      	str	r2, [r7, #4]
    3ce6:	781b      	ldrb	r3, [r3, #0]
    3ce8:	73fb      	strb	r3, [r7, #15]
    3cea:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3cee:	f000 fb37 	bl	4360 <btn_query_down>
    3cf2:	4603      	mov	r3, r0
    3cf4:	2b00      	cmp	r3, #0
    3cf6:	d144      	bne.n	3d82 <text_scroller+0xd6>
    3cf8:	7bfb      	ldrb	r3, [r7, #15]
    3cfa:	2b00      	cmp	r3, #0
    3cfc:	d002      	beq.n	3d04 <text_scroller+0x58>
    3cfe:	7bfb      	ldrb	r3, [r7, #15]
    3d00:	2b0a      	cmp	r3, #10
    3d02:	d1e9      	bne.n	3cd8 <text_scroller+0x2c>
    3d04:	2300      	movs	r3, #0
    3d06:	73bb      	strb	r3, [r7, #14]
    3d08:	e014      	b.n	3d34 <text_scroller+0x88>
    3d0a:	78fb      	ldrb	r3, [r7, #3]
    3d0c:	4a24      	ldr	r2, [pc, #144]	; (3da0 <text_scroller+0xf4>)
    3d0e:	6013      	str	r3, [r2, #0]
    3d10:	bf00      	nop
    3d12:	4b23      	ldr	r3, [pc, #140]	; (3da0 <text_scroller+0xf4>)
    3d14:	681b      	ldr	r3, [r3, #0]
    3d16:	2b00      	cmp	r3, #0
    3d18:	d1fb      	bne.n	3d12 <text_scroller+0x66>
    3d1a:	2001      	movs	r0, #1
    3d1c:	f7fd ffc4 	bl	1ca8 <gfx_scroll_up>
    3d20:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d24:	f000 fb1c 	bl	4360 <btn_query_down>
    3d28:	4603      	mov	r3, r0
    3d2a:	2b00      	cmp	r3, #0
    3d2c:	d12b      	bne.n	3d86 <text_scroller+0xda>
    3d2e:	7bbb      	ldrb	r3, [r7, #14]
    3d30:	3301      	adds	r3, #1
    3d32:	73bb      	strb	r3, [r7, #14]
    3d34:	7bbb      	ldrb	r3, [r7, #14]
    3d36:	2b07      	cmp	r3, #7
    3d38:	d9e7      	bls.n	3d0a <text_scroller+0x5e>
    3d3a:	687b      	ldr	r3, [r7, #4]
    3d3c:	1c5a      	adds	r2, r3, #1
    3d3e:	607a      	str	r2, [r7, #4]
    3d40:	781b      	ldrb	r3, [r3, #0]
    3d42:	73fb      	strb	r3, [r7, #15]
    3d44:	7bfb      	ldrb	r3, [r7, #15]
    3d46:	2b00      	cmp	r3, #0
    3d48:	d1c1      	bne.n	3cce <text_scroller+0x22>
    3d4a:	2300      	movs	r3, #0
    3d4c:	73fb      	strb	r3, [r7, #15]
    3d4e:	e014      	b.n	3d7a <text_scroller+0xce>
    3d50:	78fb      	ldrb	r3, [r7, #3]
    3d52:	4a13      	ldr	r2, [pc, #76]	; (3da0 <text_scroller+0xf4>)
    3d54:	6013      	str	r3, [r2, #0]
    3d56:	bf00      	nop
    3d58:	4b11      	ldr	r3, [pc, #68]	; (3da0 <text_scroller+0xf4>)
    3d5a:	681b      	ldr	r3, [r3, #0]
    3d5c:	2b00      	cmp	r3, #0
    3d5e:	d1fb      	bne.n	3d58 <text_scroller+0xac>
    3d60:	2001      	movs	r0, #1
    3d62:	f7fd ffa1 	bl	1ca8 <gfx_scroll_up>
    3d66:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d6a:	f000 faf9 	bl	4360 <btn_query_down>
    3d6e:	4603      	mov	r3, r0
    3d70:	2b00      	cmp	r3, #0
    3d72:	d10a      	bne.n	3d8a <text_scroller+0xde>
    3d74:	7bfb      	ldrb	r3, [r7, #15]
    3d76:	3301      	adds	r3, #1
    3d78:	73fb      	strb	r3, [r7, #15]
    3d7a:	7bfb      	ldrb	r3, [r7, #15]
    3d7c:	2b1f      	cmp	r3, #31
    3d7e:	d9e7      	bls.n	3d50 <text_scroller+0xa4>
    3d80:	e004      	b.n	3d8c <text_scroller+0xe0>
    3d82:	bf00      	nop
    3d84:	e002      	b.n	3d8c <text_scroller+0xe0>
    3d86:	bf00      	nop
    3d88:	e000      	b.n	3d8c <text_scroller+0xe0>
    3d8a:	bf00      	nop
    3d8c:	f7fd ff38 	bl	1c00 <gfx_cls>
    3d90:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d94:	f000 fac2 	bl	431c <btn_wait_up>
    3d98:	bf00      	nop
    3d9a:	3710      	adds	r7, #16
    3d9c:	46bd      	mov	sp, r7
    3d9e:	bd80      	pop	{r7, pc}
    3da0:	200004fc 	.word	0x200004fc

00003da4 <prompt_btn>:
    3da4:	b580      	push	{r7, lr}
    3da6:	af00      	add	r7, sp, #0
    3da8:	4802      	ldr	r0, [pc, #8]	; (3db4 <prompt_btn+0x10>)
    3daa:	f7ff fe95 	bl	3ad8 <print>
    3dae:	bf00      	nop
    3db0:	bd80      	pop	{r7, pc}
    3db2:	bf00      	nop
    3db4:	00004a08 	.word	0x00004a08

00003db8 <clear_screen>:
    3db8:	b580      	push	{r7, lr}
    3dba:	af00      	add	r7, sp, #0
    3dbc:	f7fd ff20 	bl	1c00 <gfx_cls>
    3dc0:	4b03      	ldr	r3, [pc, #12]	; (3dd0 <clear_screen+0x18>)
    3dc2:	2200      	movs	r2, #0
    3dc4:	701a      	strb	r2, [r3, #0]
    3dc6:	4b03      	ldr	r3, [pc, #12]	; (3dd4 <clear_screen+0x1c>)
    3dc8:	2200      	movs	r2, #0
    3dca:	701a      	strb	r2, [r3, #0]
    3dcc:	bf00      	nop
    3dce:	bd80      	pop	{r7, pc}
    3dd0:	20000500 	.word	0x20000500
    3dd4:	20000501 	.word	0x20000501

00003dd8 <tvout_init>:
    3dd8:	b580      	push	{r7, lr}
    3dda:	af00      	add	r7, sp, #0
    3ddc:	4b45      	ldr	r3, [pc, #276]	; (3ef4 <tvout_init+0x11c>)
    3dde:	4a46      	ldr	r2, [pc, #280]	; (3ef8 <tvout_init+0x120>)
    3de0:	601a      	str	r2, [r3, #0]
    3de2:	4b46      	ldr	r3, [pc, #280]	; (3efc <tvout_init+0x124>)
    3de4:	4a46      	ldr	r2, [pc, #280]	; (3f00 <tvout_init+0x128>)
    3de6:	601a      	str	r2, [r3, #0]
    3de8:	220a      	movs	r2, #10
    3dea:	2108      	movs	r1, #8
    3dec:	4841      	ldr	r0, [pc, #260]	; (3ef4 <tvout_init+0x11c>)
    3dee:	f7fd fd82 	bl	18f6 <config_pin>
    3df2:	4b40      	ldr	r3, [pc, #256]	; (3ef4 <tvout_init+0x11c>)
    3df4:	2200      	movs	r2, #0
    3df6:	60da      	str	r2, [r3, #12]
    3df8:	4a42      	ldr	r2, [pc, #264]	; (3f04 <tvout_init+0x12c>)
    3dfa:	4b42      	ldr	r3, [pc, #264]	; (3f04 <tvout_init+0x12c>)
    3dfc:	699b      	ldr	r3, [r3, #24]
    3dfe:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3e02:	6193      	str	r3, [r2, #24]
    3e04:	4b40      	ldr	r3, [pc, #256]	; (3f08 <tvout_init+0x130>)
    3e06:	2278      	movs	r2, #120	; 0x78
    3e08:	619a      	str	r2, [r3, #24]
    3e0a:	4b3f      	ldr	r3, [pc, #252]	; (3f08 <tvout_init+0x130>)
    3e0c:	2201      	movs	r2, #1
    3e0e:	621a      	str	r2, [r3, #32]
    3e10:	4b3d      	ldr	r3, [pc, #244]	; (3f08 <tvout_init+0x130>)
    3e12:	2284      	movs	r2, #132	; 0x84
    3e14:	601a      	str	r2, [r3, #0]
    3e16:	4b3c      	ldr	r3, [pc, #240]	; (3f08 <tvout_init+0x130>)
    3e18:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3e1c:	62da      	str	r2, [r3, #44]	; 0x2c
    3e1e:	4b3a      	ldr	r3, [pc, #232]	; (3f08 <tvout_init+0x130>)
    3e20:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3e24:	635a      	str	r2, [r3, #52]	; 0x34
    3e26:	4b38      	ldr	r3, [pc, #224]	; (3f08 <tvout_init+0x130>)
    3e28:	f240 126d 	movw	r2, #365	; 0x16d
    3e2c:	639a      	str	r2, [r3, #56]	; 0x38
    3e2e:	4a36      	ldr	r2, [pc, #216]	; (3f08 <tvout_init+0x130>)
    3e30:	4b35      	ldr	r3, [pc, #212]	; (3f08 <tvout_init+0x130>)
    3e32:	695b      	ldr	r3, [r3, #20]
    3e34:	f043 0301 	orr.w	r3, r3, #1
    3e38:	6153      	str	r3, [r2, #20]
    3e3a:	4b33      	ldr	r3, [pc, #204]	; (3f08 <tvout_init+0x130>)
    3e3c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    3e40:	645a      	str	r2, [r3, #68]	; 0x44
    3e42:	4b31      	ldr	r3, [pc, #196]	; (3f08 <tvout_init+0x130>)
    3e44:	2200      	movs	r2, #0
    3e46:	611a      	str	r2, [r3, #16]
    3e48:	4a2f      	ldr	r2, [pc, #188]	; (3f08 <tvout_init+0x130>)
    3e4a:	4b2f      	ldr	r3, [pc, #188]	; (3f08 <tvout_init+0x130>)
    3e4c:	68db      	ldr	r3, [r3, #12]
    3e4e:	f043 0301 	orr.w	r3, r3, #1
    3e52:	60d3      	str	r3, [r2, #12]
    3e54:	2100      	movs	r1, #0
    3e56:	2019      	movs	r0, #25
    3e58:	f7fe fc8a 	bl	2770 <set_int_priority>
    3e5c:	2100      	movs	r1, #0
    3e5e:	201b      	movs	r0, #27
    3e60:	f7fe fc86 	bl	2770 <set_int_priority>
    3e64:	201b      	movs	r0, #27
    3e66:	f7fe fbc9 	bl	25fc <enable_interrupt>
    3e6a:	2019      	movs	r0, #25
    3e6c:	f7fe fbc6 	bl	25fc <enable_interrupt>
    3e70:	4a25      	ldr	r2, [pc, #148]	; (3f08 <tvout_init+0x130>)
    3e72:	4b25      	ldr	r3, [pc, #148]	; (3f08 <tvout_init+0x130>)
    3e74:	681b      	ldr	r3, [r3, #0]
    3e76:	f043 0301 	orr.w	r3, r3, #1
    3e7a:	6013      	str	r3, [r2, #0]
    3e7c:	220a      	movs	r2, #10
    3e7e:	2100      	movs	r1, #0
    3e80:	4822      	ldr	r0, [pc, #136]	; (3f0c <tvout_init+0x134>)
    3e82:	f7fd fd38 	bl	18f6 <config_pin>
    3e86:	220a      	movs	r2, #10
    3e88:	2101      	movs	r1, #1
    3e8a:	4820      	ldr	r0, [pc, #128]	; (3f0c <tvout_init+0x134>)
    3e8c:	f7fd fd33 	bl	18f6 <config_pin>
    3e90:	4a1c      	ldr	r2, [pc, #112]	; (3f04 <tvout_init+0x12c>)
    3e92:	4b1c      	ldr	r3, [pc, #112]	; (3f04 <tvout_init+0x12c>)
    3e94:	69db      	ldr	r3, [r3, #28]
    3e96:	f043 0302 	orr.w	r3, r3, #2
    3e9a:	61d3      	str	r3, [r2, #28]
    3e9c:	4b1c      	ldr	r3, [pc, #112]	; (3f10 <tvout_init+0x138>)
    3e9e:	f246 0278 	movw	r2, #24696	; 0x6078
    3ea2:	61da      	str	r2, [r3, #28]
    3ea4:	4b1a      	ldr	r3, [pc, #104]	; (3f10 <tvout_init+0x138>)
    3ea6:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    3eaa:	621a      	str	r2, [r3, #32]
    3eac:	4b18      	ldr	r3, [pc, #96]	; (3f10 <tvout_init+0x138>)
    3eae:	2284      	movs	r2, #132	; 0x84
    3eb0:	601a      	str	r2, [r3, #0]
    3eb2:	4b17      	ldr	r3, [pc, #92]	; (3f10 <tvout_init+0x138>)
    3eb4:	2213      	movs	r2, #19
    3eb6:	62da      	str	r2, [r3, #44]	; 0x2c
    3eb8:	4b15      	ldr	r3, [pc, #84]	; (3f10 <tvout_init+0x138>)
    3eba:	220a      	movs	r2, #10
    3ebc:	63da      	str	r2, [r3, #60]	; 0x3c
    3ebe:	4b14      	ldr	r3, [pc, #80]	; (3f10 <tvout_init+0x138>)
    3ec0:	220a      	movs	r2, #10
    3ec2:	641a      	str	r2, [r3, #64]	; 0x40
    3ec4:	4a12      	ldr	r2, [pc, #72]	; (3f10 <tvout_init+0x138>)
    3ec6:	4b12      	ldr	r3, [pc, #72]	; (3f10 <tvout_init+0x138>)
    3ec8:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    3eca:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3ece:	6453      	str	r3, [r2, #68]	; 0x44
    3ed0:	4a0f      	ldr	r2, [pc, #60]	; (3f10 <tvout_init+0x138>)
    3ed2:	4b0f      	ldr	r3, [pc, #60]	; (3f10 <tvout_init+0x138>)
    3ed4:	695b      	ldr	r3, [r3, #20]
    3ed6:	f043 0301 	orr.w	r3, r3, #1
    3eda:	6153      	str	r3, [r2, #20]
    3edc:	4b0c      	ldr	r3, [pc, #48]	; (3f10 <tvout_init+0x138>)
    3ede:	2200      	movs	r2, #0
    3ee0:	611a      	str	r2, [r3, #16]
    3ee2:	4a0b      	ldr	r2, [pc, #44]	; (3f10 <tvout_init+0x138>)
    3ee4:	4b0a      	ldr	r3, [pc, #40]	; (3f10 <tvout_init+0x138>)
    3ee6:	681b      	ldr	r3, [r3, #0]
    3ee8:	f043 0301 	orr.w	r3, r3, #1
    3eec:	6013      	str	r3, [r2, #0]
    3eee:	bf00      	nop
    3ef0:	bd80      	pop	{r7, pc}
    3ef2:	bf00      	nop
    3ef4:	40010800 	.word	0x40010800
    3ef8:	88883333 	.word	0x88883333
    3efc:	40010804 	.word	0x40010804
    3f00:	88444444 	.word	0x88444444
    3f04:	40021000 	.word	0x40021000
    3f08:	40012c00 	.word	0x40012c00
    3f0c:	40010c00 	.word	0x40010c00
    3f10:	40000400 	.word	0x40000400

00003f14 <TV_OUT_handler>:
    3f14:	4668      	mov	r0, sp
    3f16:	f020 0107 	bic.w	r1, r0, #7
    3f1a:	468d      	mov	sp, r1
    3f1c:	b571      	push	{r0, r4, r5, r6, lr}
    3f1e:	4b41      	ldr	r3, [pc, #260]	; (4024 <TV_OUT_handler+0x110>)
    3f20:	7818      	ldrb	r0, [r3, #0]
    3f22:	2801      	cmp	r0, #1
    3f24:	d96d      	bls.n	4002 <TV_OUT_handler+0xee>
    3f26:	4b40      	ldr	r3, [pc, #256]	; (4028 <TV_OUT_handler+0x114>)
    3f28:	881b      	ldrh	r3, [r3, #0]
    3f2a:	f013 0f04 	tst.w	r3, #4
    3f2e:	d05f      	beq.n	3ff0 <TV_OUT_handler+0xdc>
    3f30:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3f34:	4a3d      	ldr	r2, [pc, #244]	; (402c <TV_OUT_handler+0x118>)
    3f36:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    3f3a:	88da      	ldrh	r2, [r3, #6]
    3f3c:	493c      	ldr	r1, [pc, #240]	; (4030 <TV_OUT_handler+0x11c>)
    3f3e:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3f40:	4293      	cmp	r3, r2
    3f42:	d3fc      	bcc.n	3f3e <TV_OUT_handler+0x2a>
    3f44:	4b3b      	ldr	r3, [pc, #236]	; (4034 <TV_OUT_handler+0x120>)
    3f46:	461a      	mov	r2, r3
    3f48:	6812      	ldr	r2, [r2, #0]
    3f4a:	f002 020f 	and.w	r2, r2, #15
    3f4e:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3f52:	4497      	add	pc, r2
    3f54:	bf00      	nop
    3f56:	bf00      	nop
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
    3f74:	4d30      	ldr	r5, [pc, #192]	; (4038 <TV_OUT_handler+0x124>)
    3f76:	6a2e      	ldr	r6, [r5, #32]
    3f78:	4a2c      	ldr	r2, [pc, #176]	; (402c <TV_OUT_handler+0x118>)
    3f7a:	00c1      	lsls	r1, r0, #3
    3f7c:	180b      	adds	r3, r1, r0
    3f7e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    3f82:	8a1c      	ldrh	r4, [r3, #16]
    3f84:	4334      	orrs	r4, r6
    3f86:	622c      	str	r4, [r5, #32]
    3f88:	4c2c      	ldr	r4, [pc, #176]	; (403c <TV_OUT_handler+0x128>)
    3f8a:	8825      	ldrh	r5, [r4, #0]
    3f8c:	b2ad      	uxth	r5, r5
    3f8e:	7a1c      	ldrb	r4, [r3, #8]
    3f90:	7a5b      	ldrb	r3, [r3, #9]
    3f92:	fb95 f5f3 	sdiv	r5, r5, r3
    3f96:	4b2a      	ldr	r3, [pc, #168]	; (4040 <TV_OUT_handler+0x12c>)
    3f98:	fb04 3505 	mla	r5, r4, r5, r3
    3f9c:	4408      	add	r0, r1
    3f9e:	eb02 0240 	add.w	r2, r2, r0, lsl #1
    3fa2:	7a90      	ldrb	r0, [r2, #10]
    3fa4:	b1e4      	cbz	r4, 3fe0 <TV_OUT_handler+0xcc>
    3fa6:	4629      	mov	r1, r5
    3fa8:	4c26      	ldr	r4, [pc, #152]	; (4044 <TV_OUT_handler+0x130>)
    3faa:	4e20      	ldr	r6, [pc, #128]	; (402c <TV_OUT_handler+0x118>)
    3fac:	f8df e074 	ldr.w	lr, [pc, #116]	; 4024 <TV_OUT_handler+0x110>
    3fb0:	780b      	ldrb	r3, [r1, #0]
    3fb2:	091b      	lsrs	r3, r3, #4
    3fb4:	8023      	strh	r3, [r4, #0]
    3fb6:	4602      	mov	r2, r0
    3fb8:	3a01      	subs	r2, #1
    3fba:	d1fd      	bne.n	3fb8 <TV_OUT_handler+0xa4>
    3fbc:	f811 3b01 	ldrb.w	r3, [r1], #1
    3fc0:	f003 030f 	and.w	r3, r3, #15
    3fc4:	8023      	strh	r3, [r4, #0]
    3fc6:	4602      	mov	r2, r0
    3fc8:	3a01      	subs	r2, #1
    3fca:	d1fd      	bne.n	3fc8 <TV_OUT_handler+0xb4>
    3fcc:	1b4a      	subs	r2, r1, r5
    3fce:	f89e 3000 	ldrb.w	r3, [lr]
    3fd2:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    3fd6:	eb06 0343 	add.w	r3, r6, r3, lsl #1
    3fda:	7a1b      	ldrb	r3, [r3, #8]
    3fdc:	429a      	cmp	r2, r3
    3fde:	d3e7      	bcc.n	3fb0 <TV_OUT_handler+0x9c>
    3fe0:	2200      	movs	r2, #0
    3fe2:	4b19      	ldr	r3, [pc, #100]	; (4048 <TV_OUT_handler+0x134>)
    3fe4:	60da      	str	r2, [r3, #12]
    3fe6:	4a14      	ldr	r2, [pc, #80]	; (4038 <TV_OUT_handler+0x124>)
    3fe8:	6a13      	ldr	r3, [r2, #32]
    3fea:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    3fee:	6213      	str	r3, [r2, #32]
    3ff0:	4a0f      	ldr	r2, [pc, #60]	; (4030 <TV_OUT_handler+0x11c>)
    3ff2:	6913      	ldr	r3, [r2, #16]
    3ff4:	f023 0304 	bic.w	r3, r3, #4
    3ff8:	6113      	str	r3, [r2, #16]
    3ffa:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    3ffe:	4685      	mov	sp, r0
    4000:	4770      	bx	lr
    4002:	4a0d      	ldr	r2, [pc, #52]	; (4038 <TV_OUT_handler+0x124>)
    4004:	6a13      	ldr	r3, [r2, #32]
    4006:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    400a:	6213      	str	r3, [r2, #32]
    400c:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4010:	6a53      	ldr	r3, [r2, #36]	; 0x24
    4012:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    4016:	d9fb      	bls.n	4010 <TV_OUT_handler+0xfc>
    4018:	4a07      	ldr	r2, [pc, #28]	; (4038 <TV_OUT_handler+0x124>)
    401a:	6a13      	ldr	r3, [r2, #32]
    401c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4020:	6213      	str	r3, [r2, #32]
    4022:	e780      	b.n	3f26 <TV_OUT_handler+0x12>
    4024:	20000502 	.word	0x20000502
    4028:	20000506 	.word	0x20000506
    402c:	00004a20 	.word	0x00004a20
    4030:	40012c00 	.word	0x40012c00
    4034:	40012c24 	.word	0x40012c24
    4038:	40000400 	.word	0x40000400
    403c:	20000508 	.word	0x20000508
    4040:	20002538 	.word	0x20002538
    4044:	4001080c 	.word	0x4001080c
    4048:	40010800 	.word	0x40010800

0000404c <TV_SYNC_handler>:
    404c:	4668      	mov	r0, sp
    404e:	f020 0107 	bic.w	r1, r0, #7
    4052:	468d      	mov	sp, r1
    4054:	b401      	push	{r0}
    4056:	4a89      	ldr	r2, [pc, #548]	; (427c <TV_SYNC_handler+0x230>)
    4058:	8813      	ldrh	r3, [r2, #0]
    405a:	3301      	adds	r3, #1
    405c:	b29b      	uxth	r3, r3
    405e:	8013      	strh	r3, [r2, #0]
    4060:	4b87      	ldr	r3, [pc, #540]	; (4280 <TV_SYNC_handler+0x234>)
    4062:	881b      	ldrh	r3, [r3, #0]
    4064:	b29b      	uxth	r3, r3
    4066:	2b07      	cmp	r3, #7
    4068:	f200 808e 	bhi.w	4188 <TV_SYNC_handler+0x13c>
    406c:	e8df f013 	tbh	[pc, r3, lsl #1]
    4070:	002a0008 	.word	0x002a0008
    4074:	006c004a 	.word	0x006c004a
    4078:	00a30094 	.word	0x00a30094
    407c:	00de00bf 	.word	0x00de00bf
    4080:	4b80      	ldr	r3, [pc, #512]	; (4284 <TV_SYNC_handler+0x238>)
    4082:	881b      	ldrh	r3, [r3, #0]
    4084:	b29b      	uxth	r3, r3
    4086:	b18b      	cbz	r3, 40ac <TV_SYNC_handler+0x60>
    4088:	4a7e      	ldr	r2, [pc, #504]	; (4284 <TV_SYNC_handler+0x238>)
    408a:	8813      	ldrh	r3, [r2, #0]
    408c:	3301      	adds	r3, #1
    408e:	b29b      	uxth	r3, r3
    4090:	8013      	strh	r3, [r2, #0]
    4092:	8813      	ldrh	r3, [r2, #0]
    4094:	b29b      	uxth	r3, r3
    4096:	2b06      	cmp	r3, #6
    4098:	d176      	bne.n	4188 <TV_SYNC_handler+0x13c>
    409a:	2200      	movs	r2, #0
    409c:	4b79      	ldr	r3, [pc, #484]	; (4284 <TV_SYNC_handler+0x238>)
    409e:	801a      	strh	r2, [r3, #0]
    40a0:	4a77      	ldr	r2, [pc, #476]	; (4280 <TV_SYNC_handler+0x234>)
    40a2:	8813      	ldrh	r3, [r2, #0]
    40a4:	3301      	adds	r3, #1
    40a6:	b29b      	uxth	r3, r3
    40a8:	8013      	strh	r3, [r2, #0]
    40aa:	e06d      	b.n	4188 <TV_SYNC_handler+0x13c>
    40ac:	4b76      	ldr	r3, [pc, #472]	; (4288 <TV_SYNC_handler+0x23c>)
    40ae:	f640 02e2 	movw	r2, #2274	; 0x8e2
    40b2:	62da      	str	r2, [r3, #44]	; 0x2c
    40b4:	22a4      	movs	r2, #164	; 0xa4
    40b6:	635a      	str	r2, [r3, #52]	; 0x34
    40b8:	4a72      	ldr	r2, [pc, #456]	; (4284 <TV_SYNC_handler+0x238>)
    40ba:	8813      	ldrh	r3, [r2, #0]
    40bc:	3301      	adds	r3, #1
    40be:	b29b      	uxth	r3, r3
    40c0:	8013      	strh	r3, [r2, #0]
    40c2:	e061      	b.n	4188 <TV_SYNC_handler+0x13c>
    40c4:	4b6f      	ldr	r3, [pc, #444]	; (4284 <TV_SYNC_handler+0x238>)
    40c6:	881b      	ldrh	r3, [r3, #0]
    40c8:	b29b      	uxth	r3, r3
    40ca:	b18b      	cbz	r3, 40f0 <TV_SYNC_handler+0xa4>
    40cc:	4a6d      	ldr	r2, [pc, #436]	; (4284 <TV_SYNC_handler+0x238>)
    40ce:	8813      	ldrh	r3, [r2, #0]
    40d0:	3301      	adds	r3, #1
    40d2:	b29b      	uxth	r3, r3
    40d4:	8013      	strh	r3, [r2, #0]
    40d6:	8813      	ldrh	r3, [r2, #0]
    40d8:	b29b      	uxth	r3, r3
    40da:	2b06      	cmp	r3, #6
    40dc:	d154      	bne.n	4188 <TV_SYNC_handler+0x13c>
    40de:	2200      	movs	r2, #0
    40e0:	4b68      	ldr	r3, [pc, #416]	; (4284 <TV_SYNC_handler+0x238>)
    40e2:	801a      	strh	r2, [r3, #0]
    40e4:	4a66      	ldr	r2, [pc, #408]	; (4280 <TV_SYNC_handler+0x234>)
    40e6:	8813      	ldrh	r3, [r2, #0]
    40e8:	3301      	adds	r3, #1
    40ea:	b29b      	uxth	r3, r3
    40ec:	8013      	strh	r3, [r2, #0]
    40ee:	e04b      	b.n	4188 <TV_SYNC_handler+0x13c>
    40f0:	f240 7294 	movw	r2, #1940	; 0x794
    40f4:	4b64      	ldr	r3, [pc, #400]	; (4288 <TV_SYNC_handler+0x23c>)
    40f6:	635a      	str	r2, [r3, #52]	; 0x34
    40f8:	4a62      	ldr	r2, [pc, #392]	; (4284 <TV_SYNC_handler+0x238>)
    40fa:	8813      	ldrh	r3, [r2, #0]
    40fc:	3301      	adds	r3, #1
    40fe:	b29b      	uxth	r3, r3
    4100:	8013      	strh	r3, [r2, #0]
    4102:	e041      	b.n	4188 <TV_SYNC_handler+0x13c>
    4104:	4b5f      	ldr	r3, [pc, #380]	; (4284 <TV_SYNC_handler+0x238>)
    4106:	881b      	ldrh	r3, [r3, #0]
    4108:	b29b      	uxth	r3, r3
    410a:	b153      	cbz	r3, 4122 <TV_SYNC_handler+0xd6>
    410c:	4b5d      	ldr	r3, [pc, #372]	; (4284 <TV_SYNC_handler+0x238>)
    410e:	881b      	ldrh	r3, [r3, #0]
    4110:	b29b      	uxth	r3, r3
    4112:	2b06      	cmp	r3, #6
    4114:	d00e      	beq.n	4134 <TV_SYNC_handler+0xe8>
    4116:	4a5b      	ldr	r2, [pc, #364]	; (4284 <TV_SYNC_handler+0x238>)
    4118:	8813      	ldrh	r3, [r2, #0]
    411a:	3301      	adds	r3, #1
    411c:	b29b      	uxth	r3, r3
    411e:	8013      	strh	r3, [r2, #0]
    4120:	e032      	b.n	4188 <TV_SYNC_handler+0x13c>
    4122:	22a4      	movs	r2, #164	; 0xa4
    4124:	4b58      	ldr	r3, [pc, #352]	; (4288 <TV_SYNC_handler+0x23c>)
    4126:	635a      	str	r2, [r3, #52]	; 0x34
    4128:	4a56      	ldr	r2, [pc, #344]	; (4284 <TV_SYNC_handler+0x238>)
    412a:	8813      	ldrh	r3, [r2, #0]
    412c:	3301      	adds	r3, #1
    412e:	b29b      	uxth	r3, r3
    4130:	8013      	strh	r3, [r2, #0]
    4132:	e029      	b.n	4188 <TV_SYNC_handler+0x13c>
    4134:	4a52      	ldr	r2, [pc, #328]	; (4280 <TV_SYNC_handler+0x234>)
    4136:	8813      	ldrh	r3, [r2, #0]
    4138:	3301      	adds	r3, #1
    413a:	b29b      	uxth	r3, r3
    413c:	8013      	strh	r3, [r2, #0]
    413e:	4b53      	ldr	r3, [pc, #332]	; (428c <TV_SYNC_handler+0x240>)
    4140:	881b      	ldrh	r3, [r3, #0]
    4142:	f013 0f01 	tst.w	r3, #1
    4146:	d01f      	beq.n	4188 <TV_SYNC_handler+0x13c>
    4148:	4a4f      	ldr	r2, [pc, #316]	; (4288 <TV_SYNC_handler+0x23c>)
    414a:	f241 13c5 	movw	r3, #4549	; 0x11c5
    414e:	62d3      	str	r3, [r2, #44]	; 0x2c
    4150:	f44f 73a8 	mov.w	r3, #336	; 0x150
    4154:	6353      	str	r3, [r2, #52]	; 0x34
    4156:	494d      	ldr	r1, [pc, #308]	; (428c <TV_SYNC_handler+0x240>)
    4158:	880b      	ldrh	r3, [r1, #0]
    415a:	f023 0302 	bic.w	r3, r3, #2
    415e:	041b      	lsls	r3, r3, #16
    4160:	0c1b      	lsrs	r3, r3, #16
    4162:	800b      	strh	r3, [r1, #0]
    4164:	4945      	ldr	r1, [pc, #276]	; (427c <TV_SYNC_handler+0x230>)
    4166:	880b      	ldrh	r3, [r1, #0]
    4168:	f3c3 038d 	ubfx	r3, r3, #2, #14
    416c:	800b      	strh	r3, [r1, #0]
    416e:	4944      	ldr	r1, [pc, #272]	; (4280 <TV_SYNC_handler+0x234>)
    4170:	880b      	ldrh	r3, [r1, #0]
    4172:	3301      	adds	r3, #1
    4174:	b29b      	uxth	r3, r3
    4176:	800b      	strh	r3, [r1, #0]
    4178:	6913      	ldr	r3, [r2, #16]
    417a:	f023 0304 	bic.w	r3, r3, #4
    417e:	6113      	str	r3, [r2, #16]
    4180:	68d3      	ldr	r3, [r2, #12]
    4182:	f043 0304 	orr.w	r3, r3, #4
    4186:	60d3      	str	r3, [r2, #12]
    4188:	4a3f      	ldr	r2, [pc, #252]	; (4288 <TV_SYNC_handler+0x23c>)
    418a:	6913      	ldr	r3, [r2, #16]
    418c:	f023 0301 	bic.w	r3, r3, #1
    4190:	6113      	str	r3, [r2, #16]
    4192:	bc01      	pop	{r0}
    4194:	4685      	mov	sp, r0
    4196:	4770      	bx	lr
    4198:	4b3d      	ldr	r3, [pc, #244]	; (4290 <TV_SYNC_handler+0x244>)
    419a:	689b      	ldr	r3, [r3, #8]
    419c:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    41a0:	f023 030f 	bic.w	r3, r3, #15
    41a4:	b29b      	uxth	r3, r3
    41a6:	4a3b      	ldr	r2, [pc, #236]	; (4294 <TV_SYNC_handler+0x248>)
    41a8:	8013      	strh	r3, [r2, #0]
    41aa:	4a35      	ldr	r2, [pc, #212]	; (4280 <TV_SYNC_handler+0x234>)
    41ac:	8813      	ldrh	r3, [r2, #0]
    41ae:	3301      	adds	r3, #1
    41b0:	b29b      	uxth	r3, r3
    41b2:	8013      	strh	r3, [r2, #0]
    41b4:	e7e8      	b.n	4188 <TV_SYNC_handler+0x13c>
    41b6:	4b31      	ldr	r3, [pc, #196]	; (427c <TV_SYNC_handler+0x230>)
    41b8:	881a      	ldrh	r2, [r3, #0]
    41ba:	b292      	uxth	r2, r2
    41bc:	4b36      	ldr	r3, [pc, #216]	; (4298 <TV_SYNC_handler+0x24c>)
    41be:	781b      	ldrb	r3, [r3, #0]
    41c0:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    41c4:	4935      	ldr	r1, [pc, #212]	; (429c <TV_SYNC_handler+0x250>)
    41c6:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    41ca:	885b      	ldrh	r3, [r3, #2]
    41cc:	4293      	cmp	r3, r2
    41ce:	d1db      	bne.n	4188 <TV_SYNC_handler+0x13c>
    41d0:	4a2b      	ldr	r2, [pc, #172]	; (4280 <TV_SYNC_handler+0x234>)
    41d2:	8813      	ldrh	r3, [r2, #0]
    41d4:	3301      	adds	r3, #1
    41d6:	b29b      	uxth	r3, r3
    41d8:	8013      	strh	r3, [r2, #0]
    41da:	2200      	movs	r2, #0
    41dc:	4b29      	ldr	r3, [pc, #164]	; (4284 <TV_SYNC_handler+0x238>)
    41de:	801a      	strh	r2, [r3, #0]
    41e0:	4a2a      	ldr	r2, [pc, #168]	; (428c <TV_SYNC_handler+0x240>)
    41e2:	8813      	ldrh	r3, [r2, #0]
    41e4:	b29b      	uxth	r3, r3
    41e6:	f043 0304 	orr.w	r3, r3, #4
    41ea:	8013      	strh	r3, [r2, #0]
    41ec:	e7cc      	b.n	4188 <TV_SYNC_handler+0x13c>
    41ee:	4a25      	ldr	r2, [pc, #148]	; (4284 <TV_SYNC_handler+0x238>)
    41f0:	8813      	ldrh	r3, [r2, #0]
    41f2:	3301      	adds	r3, #1
    41f4:	b29b      	uxth	r3, r3
    41f6:	8013      	strh	r3, [r2, #0]
    41f8:	4b20      	ldr	r3, [pc, #128]	; (427c <TV_SYNC_handler+0x230>)
    41fa:	881a      	ldrh	r2, [r3, #0]
    41fc:	b292      	uxth	r2, r2
    41fe:	4b26      	ldr	r3, [pc, #152]	; (4298 <TV_SYNC_handler+0x24c>)
    4200:	781b      	ldrb	r3, [r3, #0]
    4202:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    4206:	4925      	ldr	r1, [pc, #148]	; (429c <TV_SYNC_handler+0x250>)
    4208:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    420c:	889b      	ldrh	r3, [r3, #4]
    420e:	4293      	cmp	r3, r2
    4210:	d1ba      	bne.n	4188 <TV_SYNC_handler+0x13c>
    4212:	4a1b      	ldr	r2, [pc, #108]	; (4280 <TV_SYNC_handler+0x234>)
    4214:	8813      	ldrh	r3, [r2, #0]
    4216:	3301      	adds	r3, #1
    4218:	b29b      	uxth	r3, r3
    421a:	8013      	strh	r3, [r2, #0]
    421c:	4a1b      	ldr	r2, [pc, #108]	; (428c <TV_SYNC_handler+0x240>)
    421e:	8813      	ldrh	r3, [r2, #0]
    4220:	f023 0304 	bic.w	r3, r3, #4
    4224:	041b      	lsls	r3, r3, #16
    4226:	0c1b      	lsrs	r3, r3, #16
    4228:	8013      	strh	r3, [r2, #0]
    422a:	e7ad      	b.n	4188 <TV_SYNC_handler+0x13c>
    422c:	4b13      	ldr	r3, [pc, #76]	; (427c <TV_SYNC_handler+0x230>)
    422e:	881b      	ldrh	r3, [r3, #0]
    4230:	b29b      	uxth	r3, r3
    4232:	f240 1207 	movw	r2, #263	; 0x107
    4236:	4293      	cmp	r3, r2
    4238:	d1a6      	bne.n	4188 <TV_SYNC_handler+0x13c>
    423a:	4b14      	ldr	r3, [pc, #80]	; (428c <TV_SYNC_handler+0x240>)
    423c:	881b      	ldrh	r3, [r3, #0]
    423e:	f013 0f01 	tst.w	r3, #1
    4242:	d003      	beq.n	424c <TV_SYNC_handler+0x200>
    4244:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4248:	4b0f      	ldr	r3, [pc, #60]	; (4288 <TV_SYNC_handler+0x23c>)
    424a:	62da      	str	r2, [r3, #44]	; 0x2c
    424c:	4a0f      	ldr	r2, [pc, #60]	; (428c <TV_SYNC_handler+0x240>)
    424e:	8813      	ldrh	r3, [r2, #0]
    4250:	b29b      	uxth	r3, r3
    4252:	f083 0301 	eor.w	r3, r3, #1
    4256:	8013      	strh	r3, [r2, #0]
    4258:	8813      	ldrh	r3, [r2, #0]
    425a:	b29b      	uxth	r3, r3
    425c:	f043 0302 	orr.w	r3, r3, #2
    4260:	8013      	strh	r3, [r2, #0]
    4262:	2300      	movs	r3, #0
    4264:	4a05      	ldr	r2, [pc, #20]	; (427c <TV_SYNC_handler+0x230>)
    4266:	8013      	strh	r3, [r2, #0]
    4268:	4a06      	ldr	r2, [pc, #24]	; (4284 <TV_SYNC_handler+0x238>)
    426a:	8013      	strh	r3, [r2, #0]
    426c:	4a04      	ldr	r2, [pc, #16]	; (4280 <TV_SYNC_handler+0x234>)
    426e:	8013      	strh	r3, [r2, #0]
    4270:	4a05      	ldr	r2, [pc, #20]	; (4288 <TV_SYNC_handler+0x23c>)
    4272:	68d3      	ldr	r3, [r2, #12]
    4274:	f023 0304 	bic.w	r3, r3, #4
    4278:	60d3      	str	r3, [r2, #12]
    427a:	e785      	b.n	4188 <TV_SYNC_handler+0x13c>
    427c:	2000050a 	.word	0x2000050a
    4280:	20000504 	.word	0x20000504
    4284:	20000508 	.word	0x20000508
    4288:	40012c00 	.word	0x40012c00
    428c:	20000506 	.word	0x20000506
    4290:	40010800 	.word	0x40010800
    4294:	20002534 	.word	0x20002534
    4298:	20000502 	.word	0x20000502
    429c:	00004a20 	.word	0x00004a20

000042a0 <frame_sync>:
    42a0:	b480      	push	{r7}
    42a2:	af00      	add	r7, sp, #0
    42a4:	bf00      	nop
    42a6:	4b05      	ldr	r3, [pc, #20]	; (42bc <frame_sync+0x1c>)
    42a8:	881b      	ldrh	r3, [r3, #0]
    42aa:	b29b      	uxth	r3, r3
    42ac:	f003 0302 	and.w	r3, r3, #2
    42b0:	2b00      	cmp	r3, #0
    42b2:	d0f8      	beq.n	42a6 <frame_sync+0x6>
    42b4:	bf00      	nop
    42b6:	46bd      	mov	sp, r7
    42b8:	bc80      	pop	{r7}
    42ba:	4770      	bx	lr
    42bc:	20000506 	.word	0x20000506

000042c0 <btn_wait_down>:
    42c0:	b580      	push	{r7, lr}
    42c2:	b084      	sub	sp, #16
    42c4:	af00      	add	r7, sp, #0
    42c6:	4603      	mov	r3, r0
    42c8:	80fb      	strh	r3, [r7, #6]
    42ca:	2300      	movs	r3, #0
    42cc:	60fb      	str	r3, [r7, #12]
    42ce:	e014      	b.n	42fa <btn_wait_down+0x3a>
    42d0:	4b10      	ldr	r3, [pc, #64]	; (4314 <btn_wait_down+0x54>)
    42d2:	689b      	ldr	r3, [r3, #8]
    42d4:	b29a      	uxth	r2, r3
    42d6:	88fb      	ldrh	r3, [r7, #6]
    42d8:	4013      	ands	r3, r2
    42da:	b29b      	uxth	r3, r3
    42dc:	4a0e      	ldr	r2, [pc, #56]	; (4318 <btn_wait_down+0x58>)
    42de:	4619      	mov	r1, r3
    42e0:	8011      	strh	r1, [r2, #0]
    42e2:	88fa      	ldrh	r2, [r7, #6]
    42e4:	429a      	cmp	r2, r3
    42e6:	d102      	bne.n	42ee <btn_wait_down+0x2e>
    42e8:	2300      	movs	r3, #0
    42ea:	60fb      	str	r3, [r7, #12]
    42ec:	e002      	b.n	42f4 <btn_wait_down+0x34>
    42ee:	68fb      	ldr	r3, [r7, #12]
    42f0:	3301      	adds	r3, #1
    42f2:	60fb      	str	r3, [r7, #12]
    42f4:	2001      	movs	r0, #1
    42f6:	f7ff fa55 	bl	37a4 <pause>
    42fa:	68fb      	ldr	r3, [r7, #12]
    42fc:	2b13      	cmp	r3, #19
    42fe:	dde7      	ble.n	42d0 <btn_wait_down+0x10>
    4300:	4b05      	ldr	r3, [pc, #20]	; (4318 <btn_wait_down+0x58>)
    4302:	881b      	ldrh	r3, [r3, #0]
    4304:	b29b      	uxth	r3, r3
    4306:	43db      	mvns	r3, r3
    4308:	b29b      	uxth	r3, r3
    430a:	4618      	mov	r0, r3
    430c:	3710      	adds	r7, #16
    430e:	46bd      	mov	sp, r7
    4310:	bd80      	pop	{r7, pc}
    4312:	bf00      	nop
    4314:	40010800 	.word	0x40010800
    4318:	20002534 	.word	0x20002534

0000431c <btn_wait_up>:
    431c:	b580      	push	{r7, lr}
    431e:	b084      	sub	sp, #16
    4320:	af00      	add	r7, sp, #0
    4322:	4603      	mov	r3, r0
    4324:	80fb      	strh	r3, [r7, #6]
    4326:	2300      	movs	r3, #0
    4328:	60fb      	str	r3, [r7, #12]
    432a:	e00f      	b.n	434c <btn_wait_up+0x30>
    432c:	4b0b      	ldr	r3, [pc, #44]	; (435c <btn_wait_up+0x40>)
    432e:	689a      	ldr	r2, [r3, #8]
    4330:	88fb      	ldrh	r3, [r7, #6]
    4332:	401a      	ands	r2, r3
    4334:	88fb      	ldrh	r3, [r7, #6]
    4336:	429a      	cmp	r2, r3
    4338:	d002      	beq.n	4340 <btn_wait_up+0x24>
    433a:	2300      	movs	r3, #0
    433c:	60fb      	str	r3, [r7, #12]
    433e:	e002      	b.n	4346 <btn_wait_up+0x2a>
    4340:	68fb      	ldr	r3, [r7, #12]
    4342:	3301      	adds	r3, #1
    4344:	60fb      	str	r3, [r7, #12]
    4346:	2001      	movs	r0, #1
    4348:	f7ff fa2c 	bl	37a4 <pause>
    434c:	68fb      	ldr	r3, [r7, #12]
    434e:	2b13      	cmp	r3, #19
    4350:	ddec      	ble.n	432c <btn_wait_up+0x10>
    4352:	bf00      	nop
    4354:	3710      	adds	r7, #16
    4356:	46bd      	mov	sp, r7
    4358:	bd80      	pop	{r7, pc}
    435a:	bf00      	nop
    435c:	40010800 	.word	0x40010800

00004360 <btn_query_down>:
    4360:	b480      	push	{r7}
    4362:	b083      	sub	sp, #12
    4364:	af00      	add	r7, sp, #0
    4366:	4603      	mov	r3, r0
    4368:	80fb      	strh	r3, [r7, #6]
    436a:	4b07      	ldr	r3, [pc, #28]	; (4388 <btn_query_down+0x28>)
    436c:	689a      	ldr	r2, [r3, #8]
    436e:	88fb      	ldrh	r3, [r7, #6]
    4370:	4013      	ands	r3, r2
    4372:	2b00      	cmp	r3, #0
    4374:	bf0c      	ite	eq
    4376:	2301      	moveq	r3, #1
    4378:	2300      	movne	r3, #0
    437a:	b2db      	uxtb	r3, r3
    437c:	4618      	mov	r0, r3
    437e:	370c      	adds	r7, #12
    4380:	46bd      	mov	sp, r7
    4382:	bc80      	pop	{r7}
    4384:	4770      	bx	lr
    4386:	bf00      	nop
    4388:	40010800 	.word	0x40010800

0000438c <set_video_mode>:
    438c:	b580      	push	{r7, lr}
    438e:	b082      	sub	sp, #8
    4390:	af00      	add	r7, sp, #0
    4392:	4603      	mov	r3, r0
    4394:	71fb      	strb	r3, [r7, #7]
    4396:	f7fd fc33 	bl	1c00 <gfx_cls>
    439a:	f7ff ff81 	bl	42a0 <frame_sync>
    439e:	4a03      	ldr	r2, [pc, #12]	; (43ac <set_video_mode+0x20>)
    43a0:	79fb      	ldrb	r3, [r7, #7]
    43a2:	7013      	strb	r3, [r2, #0]
    43a4:	bf00      	nop
    43a6:	3708      	adds	r7, #8
    43a8:	46bd      	mov	sp, r7
    43aa:	bd80      	pop	{r7, pc}
    43ac:	20000502 	.word	0x20000502

000043b0 <get_video_params>:
    43b0:	b480      	push	{r7}
    43b2:	af00      	add	r7, sp, #0
    43b4:	4b06      	ldr	r3, [pc, #24]	; (43d0 <get_video_params+0x20>)
    43b6:	781b      	ldrb	r3, [r3, #0]
    43b8:	461a      	mov	r2, r3
    43ba:	4613      	mov	r3, r2
    43bc:	00db      	lsls	r3, r3, #3
    43be:	4413      	add	r3, r2
    43c0:	005b      	lsls	r3, r3, #1
    43c2:	4a04      	ldr	r2, [pc, #16]	; (43d4 <get_video_params+0x24>)
    43c4:	4413      	add	r3, r2
    43c6:	4618      	mov	r0, r3
    43c8:	46bd      	mov	sp, r7
    43ca:	bc80      	pop	{r7}
    43cc:	4770      	bx	lr
    43ce:	bf00      	nop
    43d0:	20000502 	.word	0x20000502
    43d4:	00004a20 	.word	0x00004a20
