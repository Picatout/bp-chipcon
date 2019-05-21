
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 51 37 00 00     C...I...O...Q7..
      20:	51 37 00 00 51 37 00 00 51 37 00 00 55 02 00 00     Q7..Q7..Q7..U...
      30:	51 37 00 00 51 37 00 00 5b 02 00 00 39 38 00 00     Q7..Q7..[...98..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 89 34 00 00     g...m...y....4..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 51 37 00 00 51 37 00 00 b5 02 00 00     ....Q7..Q7......
      80:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..
      90:	51 37 00 00 51 37 00 00 51 37 00 00 bb 02 00 00     Q7..Q7..Q7......
      a0:	51 37 00 00 95 40 00 00 51 37 00 00 6d 3f 00 00     Q7...@..Q7..m?..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 51 37 00 00     ............Q7..
      c0:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..
      d0:	51 37 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     Q7..............
      e0:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..
      f0:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..
     100:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..
     110:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..
     120:	51 37 00 00 51 37 00 00 51 37 00 00 51 37 00 00     Q7..Q7..Q7..Q7..

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
     18e:	f002 fa49 	bl	2624 <main>
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
     1dc:	f003 fac0 	bl	3760 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 fab4 	bl	3760 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 faa8 	bl	3760 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 faa3 	bl	3760 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00004a0c 	.word	0x00004a0c
     230:	00004a24 	.word	0x00004a24
     234:	00004a30 	.word	0x00004a30
     238:	00004a40 	.word	0x00004a40

0000023c <NMI_handler>:
     23c:	f003 fa88 	bl	3750 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 fa85 	bl	3750 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 fa82 	bl	3750 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 fa7f 	bl	3750 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 fa7c 	bl	3750 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 fa79 	bl	3750 <reset_mcu>
     25e:	bf00      	nop
     260:	f003 fa76 	bl	3750 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 fa73 	bl	3750 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 fa70 	bl	3750 <reset_mcu>
     270:	bf00      	nop
     272:	f003 fa6d 	bl	3750 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 fa6a 	bl	3750 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 fa67 	bl	3750 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 fa64 	bl	3750 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 fa61 	bl	3750 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 fa5e 	bl	3750 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 fa5b 	bl	3750 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 fa58 	bl	3750 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 fa55 	bl	3750 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 fa52 	bl	3750 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 fa4f 	bl	3750 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 fa4c 	bl	3750 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 fa49 	bl	3750 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 fa46 	bl	3750 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 fa43 	bl	3750 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 fa40 	bl	3750 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 fa3d 	bl	3750 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 fa3a 	bl	3750 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 fa37 	bl	3750 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 fa34 	bl	3750 <reset_mcu>
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
     3c8:	f003 fa82 	bl	38d0 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 fa6f 	bl	38b0 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fbb6 	bl	3b44 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fbb3 	bl	3b44 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fbdc 	bl	3ba4 <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 fbd5 	bl	3ba4 <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 fbce 	bl	3ba4 <print_int>
     408:	f003 fa62 	bl	38d0 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fb99 	bl	3b44 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fbc3 	bl	3ba4 <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fb90 	bl	3b44 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fbba 	bl	3ba4 <print_int>
     430:	f003 fa4e 	bl	38d0 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 fb85 	bl	3b44 <print>
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
     44e:	f003 fba9 	bl	3ba4 <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 fa37 	bl	38d0 <new_line>
     462:	f003 fcd5 	bl	3e10 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	00004420 	.word	0x00004420
     474:	2000006c 	.word	0x2000006c
     478:	00004424 	.word	0x00004424
     47c:	00004428 	.word	0x00004428
     480:	00004430 	.word	0x00004430

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
     724:	f003 fb7e 	bl	3e24 <clear_screen>
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
     b1e:	f002 fec7 	bl	38b0 <select_font>
     b22:	7bbb      	ldrb	r3, [r7, #14]
     b24:	4a99      	ldr	r2, [pc, #612]	; (d8c <schipp+0x80c>)
     b26:	4413      	add	r3, r2
     b28:	7958      	ldrb	r0, [r3, #5]
     b2a:	7b7b      	ldrb	r3, [r7, #13]
     b2c:	4a97      	ldr	r2, [pc, #604]	; (d8c <schipp+0x80c>)
     b2e:	4413      	add	r3, r2
     b30:	795b      	ldrb	r3, [r3, #5]
     b32:	4619      	mov	r1, r3
     b34:	f002 ffda 	bl	3aec <set_cursor>
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
     b52:	f002 ff3f 	bl	39d4 <put_char>
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
     e3a:	f003 fab5 	bl	43a8 <btn_query_down>
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
     e5e:	f003 faa3 	bl	43a8 <btn_query_down>
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
     ef4:	f003 fa08 	bl	4308 <btn_wait_down>
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
     f6a:	f002 fca1 	bl	38b0 <select_font>
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
     f92:	f002 fc8d 	bl	38b0 <select_font>
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
    1040:	00004438 	.word	0x00004438
    1044:	00004498 	.word	0x00004498
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
    19fa:	f002 fcfd 	bl	43f8 <get_video_params>
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
    1ae2:	f002 fc89 	bl	43f8 <get_video_params>
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
    1c2a:	f001 ff5f 	bl	3aec <set_cursor>
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
    1f9a:	f002 f9a5 	bl	42e8 <frame_sync>
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
    2080:	f002 f9ba 	bl	43f8 <get_video_params>
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
    2282:	f002 f8b9 	bl	43f8 <get_video_params>
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
    2340:	00004860 	.word	0x00004860

00002344 <color_bars>:
    2344:	b580      	push	{r7, lr}
    2346:	b084      	sub	sp, #16
    2348:	af00      	add	r7, sp, #0
    234a:	2300      	movs	r3, #0
    234c:	71fb      	strb	r3, [r7, #7]
    234e:	f002 f853 	bl	43f8 <get_video_params>
    2352:	6038      	str	r0, [r7, #0]
    2354:	683b      	ldr	r3, [r7, #0]
    2356:	89db      	ldrh	r3, [r3, #14]
    2358:	089b      	lsrs	r3, r3, #2
    235a:	b29b      	uxth	r3, r3
    235c:	461a      	mov	r2, r3
    235e:	4613      	mov	r3, r2
    2360:	005b      	lsls	r3, r3, #1
    2362:	4413      	add	r3, r2
    2364:	60bb      	str	r3, [r7, #8]
    2366:	e01b      	b.n	23a0 <color_bars+0x5c>
    2368:	2310      	movs	r3, #16
    236a:	71fb      	strb	r3, [r7, #7]
    236c:	2300      	movs	r3, #0
    236e:	60fb      	str	r3, [r7, #12]
    2370:	e010      	b.n	2394 <color_bars+0x50>
    2372:	68fb      	ldr	r3, [r7, #12]
    2374:	f003 0307 	and.w	r3, r3, #7
    2378:	2b00      	cmp	r3, #0
    237a:	d102      	bne.n	2382 <color_bars+0x3e>
    237c:	79fb      	ldrb	r3, [r7, #7]
    237e:	3b01      	subs	r3, #1
    2380:	71fb      	strb	r3, [r7, #7]
    2382:	79fb      	ldrb	r3, [r7, #7]
    2384:	461a      	mov	r2, r3
    2386:	68b9      	ldr	r1, [r7, #8]
    2388:	68f8      	ldr	r0, [r7, #12]
    238a:	f7ff fba3 	bl	1ad4 <gfx_plot>
    238e:	68fb      	ldr	r3, [r7, #12]
    2390:	3301      	adds	r3, #1
    2392:	60fb      	str	r3, [r7, #12]
    2394:	68fb      	ldr	r3, [r7, #12]
    2396:	2b7f      	cmp	r3, #127	; 0x7f
    2398:	ddeb      	ble.n	2372 <color_bars+0x2e>
    239a:	68bb      	ldr	r3, [r7, #8]
    239c:	3301      	adds	r3, #1
    239e:	60bb      	str	r3, [r7, #8]
    23a0:	683b      	ldr	r3, [r7, #0]
    23a2:	89db      	ldrh	r3, [r3, #14]
    23a4:	461a      	mov	r2, r3
    23a6:	68bb      	ldr	r3, [r7, #8]
    23a8:	429a      	cmp	r2, r3
    23aa:	dcdd      	bgt.n	2368 <color_bars+0x24>
    23ac:	bf00      	nop
    23ae:	3710      	adds	r7, #16
    23b0:	46bd      	mov	sp, r7
    23b2:	bd80      	pop	{r7, pc}

000023b4 <vertical_bars>:
    23b4:	b580      	push	{r7, lr}
    23b6:	b082      	sub	sp, #8
    23b8:	af00      	add	r7, sp, #0
    23ba:	f002 f81d 	bl	43f8 <get_video_params>
    23be:	6038      	str	r0, [r7, #0]
    23c0:	2310      	movs	r3, #16
    23c2:	607b      	str	r3, [r7, #4]
    23c4:	e00f      	b.n	23e6 <vertical_bars+0x32>
    23c6:	220f      	movs	r2, #15
    23c8:	6879      	ldr	r1, [r7, #4]
    23ca:	2000      	movs	r0, #0
    23cc:	f7ff fb82 	bl	1ad4 <gfx_plot>
    23d0:	683b      	ldr	r3, [r7, #0]
    23d2:	899b      	ldrh	r3, [r3, #12]
    23d4:	3b01      	subs	r3, #1
    23d6:	220f      	movs	r2, #15
    23d8:	6879      	ldr	r1, [r7, #4]
    23da:	4618      	mov	r0, r3
    23dc:	f7ff fb7a 	bl	1ad4 <gfx_plot>
    23e0:	687b      	ldr	r3, [r7, #4]
    23e2:	3301      	adds	r3, #1
    23e4:	607b      	str	r3, [r7, #4]
    23e6:	683b      	ldr	r3, [r7, #0]
    23e8:	89db      	ldrh	r3, [r3, #14]
    23ea:	461a      	mov	r2, r3
    23ec:	687b      	ldr	r3, [r7, #4]
    23ee:	429a      	cmp	r2, r3
    23f0:	dce9      	bgt.n	23c6 <vertical_bars+0x12>
    23f2:	bf00      	nop
    23f4:	3708      	adds	r7, #8
    23f6:	46bd      	mov	sp, r7
    23f8:	bd80      	pop	{r7, pc}

000023fa <video_test>:
    23fa:	b580      	push	{r7, lr}
    23fc:	b082      	sub	sp, #8
    23fe:	af00      	add	r7, sp, #0
    2400:	2303      	movs	r3, #3
    2402:	71fb      	strb	r3, [r7, #7]
    2404:	f7ff fbfc 	bl	1c00 <gfx_cls>
    2408:	f7ff ff9c 	bl	2344 <color_bars>
    240c:	f7ff ffd2 	bl	23b4 <vertical_bars>
    2410:	4b32      	ldr	r3, [pc, #200]	; (24dc <video_test+0xe2>)
    2412:	2110      	movs	r1, #16
    2414:	4618      	mov	r0, r3
    2416:	f001 fbc5 	bl	3ba4 <print_int>
    241a:	4b31      	ldr	r3, [pc, #196]	; (24e0 <video_test+0xe6>)
    241c:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2420:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2424:	210a      	movs	r1, #10
    2426:	4618      	mov	r0, r3
    2428:	f001 fbbc 	bl	3ba4 <print_int>
    242c:	f7ff ff26 	bl	227c <init_balls>
    2430:	2300      	movs	r3, #0
    2432:	71fb      	strb	r3, [r7, #7]
    2434:	f7ff fdae 	bl	1f94 <draw_balls>
    2438:	200a      	movs	r0, #10
    243a:	f001 f9e9 	bl	3810 <pause>
    243e:	f7ff fda9 	bl	1f94 <draw_balls>
    2442:	f7ff fe1a 	bl	207a <move_balls>
    2446:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    244a:	f001 ffad 	bl	43a8 <btn_query_down>
    244e:	4603      	mov	r3, r0
    2450:	2b00      	cmp	r3, #0
    2452:	d0ef      	beq.n	2434 <video_test+0x3a>
    2454:	79fb      	ldrb	r3, [r7, #7]
    2456:	3301      	adds	r3, #1
    2458:	71fb      	strb	r3, [r7, #7]
    245a:	79fb      	ldrb	r3, [r7, #7]
    245c:	f003 0303 	and.w	r3, r3, #3
    2460:	71fb      	strb	r3, [r7, #7]
    2462:	79fb      	ldrb	r3, [r7, #7]
    2464:	4618      	mov	r0, r3
    2466:	f001 ffb5 	bl	43d4 <set_video_mode>
    246a:	79fb      	ldrb	r3, [r7, #7]
    246c:	2b03      	cmp	r3, #3
    246e:	d81d      	bhi.n	24ac <video_test+0xb2>
    2470:	a201      	add	r2, pc, #4	; (adr r2, 2478 <video_test+0x7e>)
    2472:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2476:	bf00      	nop
    2478:	00002489 	.word	0x00002489
    247c:	00002495 	.word	0x00002495
    2480:	0000249d 	.word	0x0000249d
    2484:	000024a5 	.word	0x000024a5
    2488:	4816      	ldr	r0, [pc, #88]	; (24e4 <video_test+0xea>)
    248a:	f001 fb5b 	bl	3b44 <print>
    248e:	f7ff ff59 	bl	2344 <color_bars>
    2492:	e00b      	b.n	24ac <video_test+0xb2>
    2494:	4814      	ldr	r0, [pc, #80]	; (24e8 <video_test+0xee>)
    2496:	f001 fb55 	bl	3b44 <print>
    249a:	e007      	b.n	24ac <video_test+0xb2>
    249c:	4813      	ldr	r0, [pc, #76]	; (24ec <video_test+0xf2>)
    249e:	f001 fb51 	bl	3b44 <print>
    24a2:	e003      	b.n	24ac <video_test+0xb2>
    24a4:	4812      	ldr	r0, [pc, #72]	; (24f0 <video_test+0xf6>)
    24a6:	f001 fb4d 	bl	3b44 <print>
    24aa:	bf00      	nop
    24ac:	f7ff ff82 	bl	23b4 <vertical_bars>
    24b0:	f7ff fee4 	bl	227c <init_balls>
    24b4:	4b0f      	ldr	r3, [pc, #60]	; (24f4 <video_test+0xfa>)
    24b6:	681b      	ldr	r3, [r3, #0]
    24b8:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
    24bc:	603b      	str	r3, [r7, #0]
    24be:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    24c2:	f001 ff4f 	bl	4364 <btn_wait_up>
    24c6:	4b0b      	ldr	r3, [pc, #44]	; (24f4 <video_test+0xfa>)
    24c8:	681a      	ldr	r2, [r3, #0]
    24ca:	683b      	ldr	r3, [r7, #0]
    24cc:	429a      	cmp	r2, r3
    24ce:	d800      	bhi.n	24d2 <video_test+0xd8>
    24d0:	e7b0      	b.n	2434 <video_test+0x3a>
    24d2:	bf00      	nop
    24d4:	bf00      	nop
    24d6:	3708      	adds	r7, #8
    24d8:	46bd      	mov	sp, r7
    24da:	bd80      	pop	{r7, pc}
    24dc:	00004c00 	.word	0x00004c00
    24e0:	20004ca0 	.word	0x20004ca0
    24e4:	00004880 	.word	0x00004880
    24e8:	000048a0 	.word	0x000048a0
    24ec:	000048bc 	.word	0x000048bc
    24f0:	000048d4 	.word	0x000048d4
    24f4:	200004f8 	.word	0x200004f8

000024f8 <select_vmode>:
    24f8:	b580      	push	{r7, lr}
    24fa:	af00      	add	r7, sp, #0
    24fc:	f7ff fb80 	bl	1c00 <gfx_cls>
    2500:	4804      	ldr	r0, [pc, #16]	; (2514 <select_vmode+0x1c>)
    2502:	f001 fb42 	bl	3b8a <println>
    2506:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    250a:	f001 f981 	bl	3810 <pause>
    250e:	bf00      	nop
    2510:	bd80      	pop	{r7, pc}
    2512:	bf00      	nop
    2514:	000048ec 	.word	0x000048ec

00002518 <select_game>:
    2518:	b580      	push	{r7, lr}
    251a:	af00      	add	r7, sp, #0
    251c:	f7ff fb70 	bl	1c00 <gfx_cls>
    2520:	4804      	ldr	r0, [pc, #16]	; (2534 <select_game+0x1c>)
    2522:	f001 fb32 	bl	3b8a <println>
    2526:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    252a:	f001 f971 	bl	3810 <pause>
    252e:	bf00      	nop
    2530:	bd80      	pop	{r7, pc}
    2532:	bf00      	nop
    2534:	000048f8 	.word	0x000048f8

00002538 <display_menu>:
    2538:	b580      	push	{r7, lr}
    253a:	b082      	sub	sp, #8
    253c:	af00      	add	r7, sp, #0
    253e:	2300      	movs	r3, #0
    2540:	607b      	str	r3, [r7, #4]
    2542:	e009      	b.n	2558 <display_menu+0x20>
    2544:	4a08      	ldr	r2, [pc, #32]	; (2568 <display_menu+0x30>)
    2546:	687b      	ldr	r3, [r7, #4]
    2548:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    254c:	4618      	mov	r0, r3
    254e:	f001 fb1c 	bl	3b8a <println>
    2552:	687b      	ldr	r3, [r7, #4]
    2554:	3301      	adds	r3, #1
    2556:	607b      	str	r3, [r7, #4]
    2558:	687b      	ldr	r3, [r7, #4]
    255a:	2b02      	cmp	r3, #2
    255c:	ddf2      	ble.n	2544 <display_menu+0xc>
    255e:	bf00      	nop
    2560:	3708      	adds	r7, #8
    2562:	46bd      	mov	sp, r7
    2564:	bd80      	pop	{r7, pc}
    2566:	bf00      	nop
    2568:	20000004 	.word	0x20000004

0000256c <menu>:
    256c:	b580      	push	{r7, lr}
    256e:	b084      	sub	sp, #16
    2570:	af00      	add	r7, sp, #0
    2572:	2300      	movs	r3, #0
    2574:	60fb      	str	r3, [r7, #12]
    2576:	f001 ff3f 	bl	43f8 <get_video_params>
    257a:	60b8      	str	r0, [r7, #8]
    257c:	f7ff ffdc 	bl	2538 <display_menu>
    2580:	68fb      	ldr	r3, [r7, #12]
    2582:	b2db      	uxtb	r3, r3
    2584:	00db      	lsls	r3, r3, #3
    2586:	b2db      	uxtb	r3, r3
    2588:	4619      	mov	r1, r3
    258a:	2000      	movs	r0, #0
    258c:	f001 faae 	bl	3aec <set_cursor>
    2590:	203e      	movs	r0, #62	; 0x3e
    2592:	f001 fa1f 	bl	39d4 <put_char>
    2596:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    259a:	f001 feb5 	bl	4308 <btn_wait_down>
    259e:	4b1f      	ldr	r3, [pc, #124]	; (261c <menu+0xb0>)
    25a0:	681b      	ldr	r3, [r3, #0]
    25a2:	f503 73fa 	add.w	r3, r3, #500	; 0x1f4
    25a6:	607b      	str	r3, [r7, #4]
    25a8:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    25ac:	f001 feda 	bl	4364 <btn_wait_up>
    25b0:	4b1a      	ldr	r3, [pc, #104]	; (261c <menu+0xb0>)
    25b2:	681a      	ldr	r2, [r3, #0]
    25b4:	687b      	ldr	r3, [r7, #4]
    25b6:	429a      	cmp	r2, r3
    25b8:	d315      	bcc.n	25e6 <menu+0x7a>
    25ba:	68fb      	ldr	r3, [r7, #12]
    25bc:	2b01      	cmp	r3, #1
    25be:	d006      	beq.n	25ce <menu+0x62>
    25c0:	2b02      	cmp	r3, #2
    25c2:	d007      	beq.n	25d4 <menu+0x68>
    25c4:	2b00      	cmp	r3, #0
    25c6:	d108      	bne.n	25da <menu+0x6e>
    25c8:	f7ff ff96 	bl	24f8 <select_vmode>
    25cc:	e005      	b.n	25da <menu+0x6e>
    25ce:	f7ff ffa3 	bl	2518 <select_game>
    25d2:	e002      	b.n	25da <menu+0x6e>
    25d4:	f7ff ff11 	bl	23fa <video_test>
    25d8:	bf00      	nop
    25da:	2000      	movs	r0, #0
    25dc:	f001 fefa 	bl	43d4 <set_video_mode>
    25e0:	f7ff ffaa 	bl	2538 <display_menu>
    25e4:	e7cc      	b.n	2580 <menu+0x14>
    25e6:	68fb      	ldr	r3, [r7, #12]
    25e8:	b2db      	uxtb	r3, r3
    25ea:	00db      	lsls	r3, r3, #3
    25ec:	b2db      	uxtb	r3, r3
    25ee:	4619      	mov	r1, r3
    25f0:	2000      	movs	r0, #0
    25f2:	f001 fa7b 	bl	3aec <set_cursor>
    25f6:	2020      	movs	r0, #32
    25f8:	f001 f9ec 	bl	39d4 <put_char>
    25fc:	68fb      	ldr	r3, [r7, #12]
    25fe:	3301      	adds	r3, #1
    2600:	60fb      	str	r3, [r7, #12]
    2602:	68fa      	ldr	r2, [r7, #12]
    2604:	4b06      	ldr	r3, [pc, #24]	; (2620 <menu+0xb4>)
    2606:	fb83 3102 	smull	r3, r1, r3, r2
    260a:	17d3      	asrs	r3, r2, #31
    260c:	1ac9      	subs	r1, r1, r3
    260e:	460b      	mov	r3, r1
    2610:	005b      	lsls	r3, r3, #1
    2612:	440b      	add	r3, r1
    2614:	1ad3      	subs	r3, r2, r3
    2616:	60fb      	str	r3, [r7, #12]
    2618:	e7b2      	b.n	2580 <menu+0x14>
    261a:	bf00      	nop
    261c:	200004f8 	.word	0x200004f8
    2620:	55555556 	.word	0x55555556

00002624 <main>:
    2624:	b580      	push	{r7, lr}
    2626:	af00      	add	r7, sp, #0
    2628:	f7ff fc7c 	bl	1f24 <set_sysclock>
    262c:	f001 f8dc 	bl	37e8 <config_systicks>
    2630:	4b0b      	ldr	r3, [pc, #44]	; (2660 <main+0x3c>)
    2632:	f640 021d 	movw	r2, #2077	; 0x81d
    2636:	619a      	str	r2, [r3, #24]
    2638:	2206      	movs	r2, #6
    263a:	210d      	movs	r1, #13
    263c:	4809      	ldr	r0, [pc, #36]	; (2664 <main+0x40>)
    263e:	f7ff f95a 	bl	18f6 <config_pin>
    2642:	4a08      	ldr	r2, [pc, #32]	; (2664 <main+0x40>)
    2644:	4b07      	ldr	r3, [pc, #28]	; (2664 <main+0x40>)
    2646:	68db      	ldr	r3, [r3, #12]
    2648:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    264c:	60d3      	str	r3, [r2, #12]
    264e:	f001 fbf9 	bl	3e44 <tvout_init>
    2652:	f7ff fad5 	bl	1c00 <gfx_cls>
    2656:	f7ff ff89 	bl	256c <menu>
    265a:	bf00      	nop
    265c:	bd80      	pop	{r7, pc}
    265e:	bf00      	nop
    2660:	40021000 	.word	0x40021000
    2664:	40011000 	.word	0x40011000

00002668 <enable_interrupt>:
    2668:	b480      	push	{r7}
    266a:	b083      	sub	sp, #12
    266c:	af00      	add	r7, sp, #0
    266e:	6078      	str	r0, [r7, #4]
    2670:	687b      	ldr	r3, [r7, #4]
    2672:	2b3b      	cmp	r3, #59	; 0x3b
    2674:	dc17      	bgt.n	26a6 <enable_interrupt+0x3e>
    2676:	687b      	ldr	r3, [r7, #4]
    2678:	115b      	asrs	r3, r3, #5
    267a:	009b      	lsls	r3, r3, #2
    267c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2680:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2684:	687a      	ldr	r2, [r7, #4]
    2686:	1152      	asrs	r2, r2, #5
    2688:	0092      	lsls	r2, r2, #2
    268a:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    268e:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    2692:	6812      	ldr	r2, [r2, #0]
    2694:	6879      	ldr	r1, [r7, #4]
    2696:	f001 011f 	and.w	r1, r1, #31
    269a:	2001      	movs	r0, #1
    269c:	fa00 f101 	lsl.w	r1, r0, r1
    26a0:	430a      	orrs	r2, r1
    26a2:	601a      	str	r2, [r3, #0]
    26a4:	e000      	b.n	26a8 <enable_interrupt+0x40>
    26a6:	bf00      	nop
    26a8:	370c      	adds	r7, #12
    26aa:	46bd      	mov	sp, r7
    26ac:	bc80      	pop	{r7}
    26ae:	4770      	bx	lr

000026b0 <disable_interrupt>:
    26b0:	b480      	push	{r7}
    26b2:	b083      	sub	sp, #12
    26b4:	af00      	add	r7, sp, #0
    26b6:	6078      	str	r0, [r7, #4]
    26b8:	687b      	ldr	r3, [r7, #4]
    26ba:	2b3b      	cmp	r3, #59	; 0x3b
    26bc:	dc0c      	bgt.n	26d8 <disable_interrupt+0x28>
    26be:	687b      	ldr	r3, [r7, #4]
    26c0:	115b      	asrs	r3, r3, #5
    26c2:	009a      	lsls	r2, r3, #2
    26c4:	4b07      	ldr	r3, [pc, #28]	; (26e4 <disable_interrupt+0x34>)
    26c6:	4413      	add	r3, r2
    26c8:	687a      	ldr	r2, [r7, #4]
    26ca:	f002 021f 	and.w	r2, r2, #31
    26ce:	2101      	movs	r1, #1
    26d0:	fa01 f202 	lsl.w	r2, r1, r2
    26d4:	601a      	str	r2, [r3, #0]
    26d6:	e000      	b.n	26da <disable_interrupt+0x2a>
    26d8:	bf00      	nop
    26da:	370c      	adds	r7, #12
    26dc:	46bd      	mov	sp, r7
    26de:	bc80      	pop	{r7}
    26e0:	4770      	bx	lr
    26e2:	bf00      	nop
    26e4:	e000e180 	.word	0xe000e180

000026e8 <get_pending>:
    26e8:	b480      	push	{r7}
    26ea:	b083      	sub	sp, #12
    26ec:	af00      	add	r7, sp, #0
    26ee:	6078      	str	r0, [r7, #4]
    26f0:	687b      	ldr	r3, [r7, #4]
    26f2:	2b3b      	cmp	r3, #59	; 0x3b
    26f4:	dd01      	ble.n	26fa <get_pending+0x12>
    26f6:	2300      	movs	r3, #0
    26f8:	e00c      	b.n	2714 <get_pending+0x2c>
    26fa:	687b      	ldr	r3, [r7, #4]
    26fc:	115b      	asrs	r3, r3, #5
    26fe:	009a      	lsls	r2, r3, #2
    2700:	4b07      	ldr	r3, [pc, #28]	; (2720 <get_pending+0x38>)
    2702:	4413      	add	r3, r2
    2704:	681b      	ldr	r3, [r3, #0]
    2706:	687a      	ldr	r2, [r7, #4]
    2708:	f002 021f 	and.w	r2, r2, #31
    270c:	2101      	movs	r1, #1
    270e:	fa01 f202 	lsl.w	r2, r1, r2
    2712:	4013      	ands	r3, r2
    2714:	4618      	mov	r0, r3
    2716:	370c      	adds	r7, #12
    2718:	46bd      	mov	sp, r7
    271a:	bc80      	pop	{r7}
    271c:	4770      	bx	lr
    271e:	bf00      	nop
    2720:	e000e280 	.word	0xe000e280

00002724 <get_active>:
    2724:	b480      	push	{r7}
    2726:	b083      	sub	sp, #12
    2728:	af00      	add	r7, sp, #0
    272a:	6078      	str	r0, [r7, #4]
    272c:	687b      	ldr	r3, [r7, #4]
    272e:	2b3b      	cmp	r3, #59	; 0x3b
    2730:	dd01      	ble.n	2736 <get_active+0x12>
    2732:	2300      	movs	r3, #0
    2734:	e00e      	b.n	2754 <get_active+0x30>
    2736:	687b      	ldr	r3, [r7, #4]
    2738:	115b      	asrs	r3, r3, #5
    273a:	009b      	lsls	r3, r3, #2
    273c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2740:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2744:	681b      	ldr	r3, [r3, #0]
    2746:	687a      	ldr	r2, [r7, #4]
    2748:	f002 021f 	and.w	r2, r2, #31
    274c:	2101      	movs	r1, #1
    274e:	fa01 f202 	lsl.w	r2, r1, r2
    2752:	4013      	ands	r3, r2
    2754:	4618      	mov	r0, r3
    2756:	370c      	adds	r7, #12
    2758:	46bd      	mov	sp, r7
    275a:	bc80      	pop	{r7}
    275c:	4770      	bx	lr

0000275e <set_pending>:
    275e:	b480      	push	{r7}
    2760:	b083      	sub	sp, #12
    2762:	af00      	add	r7, sp, #0
    2764:	6078      	str	r0, [r7, #4]
    2766:	687b      	ldr	r3, [r7, #4]
    2768:	2b3b      	cmp	r3, #59	; 0x3b
    276a:	dc17      	bgt.n	279c <set_pending+0x3e>
    276c:	687b      	ldr	r3, [r7, #4]
    276e:	115b      	asrs	r3, r3, #5
    2770:	009b      	lsls	r3, r3, #2
    2772:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2776:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    277a:	687a      	ldr	r2, [r7, #4]
    277c:	1152      	asrs	r2, r2, #5
    277e:	0092      	lsls	r2, r2, #2
    2780:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2784:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    2788:	6812      	ldr	r2, [r2, #0]
    278a:	6879      	ldr	r1, [r7, #4]
    278c:	f001 011f 	and.w	r1, r1, #31
    2790:	2001      	movs	r0, #1
    2792:	fa00 f101 	lsl.w	r1, r0, r1
    2796:	430a      	orrs	r2, r1
    2798:	601a      	str	r2, [r3, #0]
    279a:	e000      	b.n	279e <set_pending+0x40>
    279c:	bf00      	nop
    279e:	370c      	adds	r7, #12
    27a0:	46bd      	mov	sp, r7
    27a2:	bc80      	pop	{r7}
    27a4:	4770      	bx	lr

000027a6 <clear_pending>:
    27a6:	b480      	push	{r7}
    27a8:	b083      	sub	sp, #12
    27aa:	af00      	add	r7, sp, #0
    27ac:	6078      	str	r0, [r7, #4]
    27ae:	687b      	ldr	r3, [r7, #4]
    27b0:	2b3b      	cmp	r3, #59	; 0x3b
    27b2:	dc0c      	bgt.n	27ce <clear_pending+0x28>
    27b4:	687b      	ldr	r3, [r7, #4]
    27b6:	115b      	asrs	r3, r3, #5
    27b8:	009a      	lsls	r2, r3, #2
    27ba:	4b07      	ldr	r3, [pc, #28]	; (27d8 <clear_pending+0x32>)
    27bc:	4413      	add	r3, r2
    27be:	687a      	ldr	r2, [r7, #4]
    27c0:	f002 021f 	and.w	r2, r2, #31
    27c4:	2101      	movs	r1, #1
    27c6:	fa01 f202 	lsl.w	r2, r1, r2
    27ca:	601a      	str	r2, [r3, #0]
    27cc:	e000      	b.n	27d0 <clear_pending+0x2a>
    27ce:	bf00      	nop
    27d0:	370c      	adds	r7, #12
    27d2:	46bd      	mov	sp, r7
    27d4:	bc80      	pop	{r7}
    27d6:	4770      	bx	lr
    27d8:	e000e280 	.word	0xe000e280

000027dc <set_int_priority>:
    27dc:	b480      	push	{r7}
    27de:	b083      	sub	sp, #12
    27e0:	af00      	add	r7, sp, #0
    27e2:	6078      	str	r0, [r7, #4]
    27e4:	6039      	str	r1, [r7, #0]
    27e6:	687b      	ldr	r3, [r7, #4]
    27e8:	2b00      	cmp	r3, #0
    27ea:	db0d      	blt.n	2808 <set_int_priority+0x2c>
    27ec:	687b      	ldr	r3, [r7, #4]
    27ee:	2b3b      	cmp	r3, #59	; 0x3b
    27f0:	dc0a      	bgt.n	2808 <set_int_priority+0x2c>
    27f2:	687b      	ldr	r3, [r7, #4]
    27f4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    27f8:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    27fc:	683a      	ldr	r2, [r7, #0]
    27fe:	b2d2      	uxtb	r2, r2
    2800:	0112      	lsls	r2, r2, #4
    2802:	b2d2      	uxtb	r2, r2
    2804:	701a      	strb	r2, [r3, #0]
    2806:	e012      	b.n	282e <set_int_priority+0x52>
    2808:	687b      	ldr	r3, [r7, #4]
    280a:	2b00      	cmp	r3, #0
    280c:	da0f      	bge.n	282e <set_int_priority+0x52>
    280e:	687b      	ldr	r3, [r7, #4]
    2810:	f113 0f0f 	cmn.w	r3, #15
    2814:	db0b      	blt.n	282e <set_int_priority+0x52>
    2816:	687a      	ldr	r2, [r7, #4]
    2818:	f06f 0303 	mvn.w	r3, #3
    281c:	1a9b      	subs	r3, r3, r2
    281e:	461a      	mov	r2, r3
    2820:	4b05      	ldr	r3, [pc, #20]	; (2838 <set_int_priority+0x5c>)
    2822:	4413      	add	r3, r2
    2824:	683a      	ldr	r2, [r7, #0]
    2826:	b2d2      	uxtb	r2, r2
    2828:	0112      	lsls	r2, r2, #4
    282a:	b2d2      	uxtb	r2, r2
    282c:	701a      	strb	r2, [r3, #0]
    282e:	bf00      	nop
    2830:	370c      	adds	r7, #12
    2832:	46bd      	mov	sp, r7
    2834:	bc80      	pop	{r7}
    2836:	4770      	bx	lr
    2838:	e000ed18 	.word	0xe000ed18

0000283c <leap_year>:
    283c:	b480      	push	{r7}
    283e:	b083      	sub	sp, #12
    2840:	af00      	add	r7, sp, #0
    2842:	6078      	str	r0, [r7, #4]
    2844:	687b      	ldr	r3, [r7, #4]
    2846:	f003 0303 	and.w	r3, r3, #3
    284a:	2b00      	cmp	r3, #0
    284c:	d11a      	bne.n	2884 <leap_year+0x48>
    284e:	687a      	ldr	r2, [r7, #4]
    2850:	4b0f      	ldr	r3, [pc, #60]	; (2890 <leap_year+0x54>)
    2852:	fba3 1302 	umull	r1, r3, r3, r2
    2856:	095b      	lsrs	r3, r3, #5
    2858:	2164      	movs	r1, #100	; 0x64
    285a:	fb01 f303 	mul.w	r3, r1, r3
    285e:	1ad3      	subs	r3, r2, r3
    2860:	2b00      	cmp	r3, #0
    2862:	d10d      	bne.n	2880 <leap_year+0x44>
    2864:	687a      	ldr	r2, [r7, #4]
    2866:	4b0a      	ldr	r3, [pc, #40]	; (2890 <leap_year+0x54>)
    2868:	fba3 1302 	umull	r1, r3, r3, r2
    286c:	09db      	lsrs	r3, r3, #7
    286e:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2872:	fb01 f303 	mul.w	r3, r1, r3
    2876:	1ad3      	subs	r3, r2, r3
    2878:	2b00      	cmp	r3, #0
    287a:	d001      	beq.n	2880 <leap_year+0x44>
    287c:	2300      	movs	r3, #0
    287e:	e002      	b.n	2886 <leap_year+0x4a>
    2880:	2301      	movs	r3, #1
    2882:	e000      	b.n	2886 <leap_year+0x4a>
    2884:	2300      	movs	r3, #0
    2886:	4618      	mov	r0, r3
    2888:	370c      	adds	r7, #12
    288a:	46bd      	mov	sp, r7
    288c:	bc80      	pop	{r7}
    288e:	4770      	bx	lr
    2890:	51eb851f 	.word	0x51eb851f

00002894 <sec_per_month>:
    2894:	b480      	push	{r7}
    2896:	b085      	sub	sp, #20
    2898:	af00      	add	r7, sp, #0
    289a:	6078      	str	r0, [r7, #4]
    289c:	6039      	str	r1, [r7, #0]
    289e:	4a0d      	ldr	r2, [pc, #52]	; (28d4 <sec_per_month+0x40>)
    28a0:	683b      	ldr	r3, [r7, #0]
    28a2:	4413      	add	r3, r2
    28a4:	781b      	ldrb	r3, [r3, #0]
    28a6:	461a      	mov	r2, r3
    28a8:	4b0b      	ldr	r3, [pc, #44]	; (28d8 <sec_per_month+0x44>)
    28aa:	fb03 f302 	mul.w	r3, r3, r2
    28ae:	60fb      	str	r3, [r7, #12]
    28b0:	683b      	ldr	r3, [r7, #0]
    28b2:	2b02      	cmp	r3, #2
    28b4:	d108      	bne.n	28c8 <sec_per_month+0x34>
    28b6:	687b      	ldr	r3, [r7, #4]
    28b8:	2b00      	cmp	r3, #0
    28ba:	d005      	beq.n	28c8 <sec_per_month+0x34>
    28bc:	68fb      	ldr	r3, [r7, #12]
    28be:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    28c2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    28c6:	60fb      	str	r3, [r7, #12]
    28c8:	68fb      	ldr	r3, [r7, #12]
    28ca:	4618      	mov	r0, r3
    28cc:	3714      	adds	r7, #20
    28ce:	46bd      	mov	sp, r7
    28d0:	bc80      	pop	{r7}
    28d2:	4770      	bx	lr
    28d4:	000049d4 	.word	0x000049d4
    28d8:	00015180 	.word	0x00015180

000028dc <get_date_time>:
    28dc:	b580      	push	{r7, lr}
    28de:	b086      	sub	sp, #24
    28e0:	af00      	add	r7, sp, #0
    28e2:	6078      	str	r0, [r7, #4]
    28e4:	4b66      	ldr	r3, [pc, #408]	; (2a80 <get_date_time+0x1a4>)
    28e6:	699b      	ldr	r3, [r3, #24]
    28e8:	041a      	lsls	r2, r3, #16
    28ea:	4b65      	ldr	r3, [pc, #404]	; (2a80 <get_date_time+0x1a4>)
    28ec:	69db      	ldr	r3, [r3, #28]
    28ee:	4413      	add	r3, r2
    28f0:	617b      	str	r3, [r7, #20]
    28f2:	687b      	ldr	r3, [r7, #4]
    28f4:	f240 72b2 	movw	r2, #1970	; 0x7b2
    28f8:	811a      	strh	r2, [r3, #8]
    28fa:	f240 70b2 	movw	r0, #1970	; 0x7b2
    28fe:	f7ff ff9d 	bl	283c <leap_year>
    2902:	6138      	str	r0, [r7, #16]
    2904:	e019      	b.n	293a <get_date_time+0x5e>
    2906:	693b      	ldr	r3, [r7, #16]
    2908:	2b00      	cmp	r3, #0
    290a:	d006      	beq.n	291a <get_date_time+0x3e>
    290c:	697b      	ldr	r3, [r7, #20]
    290e:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    2912:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2916:	617b      	str	r3, [r7, #20]
    2918:	e003      	b.n	2922 <get_date_time+0x46>
    291a:	697a      	ldr	r2, [r7, #20]
    291c:	4b59      	ldr	r3, [pc, #356]	; (2a84 <get_date_time+0x1a8>)
    291e:	4413      	add	r3, r2
    2920:	617b      	str	r3, [r7, #20]
    2922:	687b      	ldr	r3, [r7, #4]
    2924:	891b      	ldrh	r3, [r3, #8]
    2926:	3301      	adds	r3, #1
    2928:	b29a      	uxth	r2, r3
    292a:	687b      	ldr	r3, [r7, #4]
    292c:	811a      	strh	r2, [r3, #8]
    292e:	687b      	ldr	r3, [r7, #4]
    2930:	891b      	ldrh	r3, [r3, #8]
    2932:	4618      	mov	r0, r3
    2934:	f7ff ff82 	bl	283c <leap_year>
    2938:	6138      	str	r0, [r7, #16]
    293a:	693b      	ldr	r3, [r7, #16]
    293c:	2b00      	cmp	r3, #0
    293e:	d103      	bne.n	2948 <get_date_time+0x6c>
    2940:	697b      	ldr	r3, [r7, #20]
    2942:	4a51      	ldr	r2, [pc, #324]	; (2a88 <get_date_time+0x1ac>)
    2944:	4293      	cmp	r3, r2
    2946:	d8de      	bhi.n	2906 <get_date_time+0x2a>
    2948:	693b      	ldr	r3, [r7, #16]
    294a:	2b00      	cmp	r3, #0
    294c:	d003      	beq.n	2956 <get_date_time+0x7a>
    294e:	697b      	ldr	r3, [r7, #20]
    2950:	4a4e      	ldr	r2, [pc, #312]	; (2a8c <get_date_time+0x1b0>)
    2952:	4293      	cmp	r3, r2
    2954:	d8d7      	bhi.n	2906 <get_date_time+0x2a>
    2956:	687a      	ldr	r2, [r7, #4]
    2958:	8853      	ldrh	r3, [r2, #2]
    295a:	2101      	movs	r1, #1
    295c:	f361 1389 	bfi	r3, r1, #6, #4
    2960:	8053      	strh	r3, [r2, #2]
    2962:	687a      	ldr	r2, [r7, #4]
    2964:	7893      	ldrb	r3, [r2, #2]
    2966:	2101      	movs	r1, #1
    2968:	f361 0345 	bfi	r3, r1, #1, #5
    296c:	7093      	strb	r3, [r2, #2]
    296e:	687a      	ldr	r2, [r7, #4]
    2970:	6813      	ldr	r3, [r2, #0]
    2972:	f36f 3310 	bfc	r3, #12, #5
    2976:	6013      	str	r3, [r2, #0]
    2978:	687a      	ldr	r2, [r7, #4]
    297a:	8813      	ldrh	r3, [r2, #0]
    297c:	f36f 138b 	bfc	r3, #6, #6
    2980:	8013      	strh	r3, [r2, #0]
    2982:	687a      	ldr	r2, [r7, #4]
    2984:	7813      	ldrb	r3, [r2, #0]
    2986:	f36f 0305 	bfc	r3, #0, #6
    298a:	7013      	strb	r3, [r2, #0]
    298c:	e011      	b.n	29b2 <get_date_time+0xd6>
    298e:	687b      	ldr	r3, [r7, #4]
    2990:	885b      	ldrh	r3, [r3, #2]
    2992:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2996:	b2db      	uxtb	r3, r3
    2998:	3301      	adds	r3, #1
    299a:	f003 030f 	and.w	r3, r3, #15
    299e:	b2d9      	uxtb	r1, r3
    29a0:	687a      	ldr	r2, [r7, #4]
    29a2:	8853      	ldrh	r3, [r2, #2]
    29a4:	f361 1389 	bfi	r3, r1, #6, #4
    29a8:	8053      	strh	r3, [r2, #2]
    29aa:	697a      	ldr	r2, [r7, #20]
    29ac:	68fb      	ldr	r3, [r7, #12]
    29ae:	1ad3      	subs	r3, r2, r3
    29b0:	617b      	str	r3, [r7, #20]
    29b2:	687b      	ldr	r3, [r7, #4]
    29b4:	885b      	ldrh	r3, [r3, #2]
    29b6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    29ba:	b2db      	uxtb	r3, r3
    29bc:	4619      	mov	r1, r3
    29be:	6938      	ldr	r0, [r7, #16]
    29c0:	f7ff ff68 	bl	2894 <sec_per_month>
    29c4:	60f8      	str	r0, [r7, #12]
    29c6:	68fa      	ldr	r2, [r7, #12]
    29c8:	697b      	ldr	r3, [r7, #20]
    29ca:	429a      	cmp	r2, r3
    29cc:	d3df      	bcc.n	298e <get_date_time+0xb2>
    29ce:	697b      	ldr	r3, [r7, #20]
    29d0:	4a2f      	ldr	r2, [pc, #188]	; (2a90 <get_date_time+0x1b4>)
    29d2:	fba2 2303 	umull	r2, r3, r2, r3
    29d6:	0c1b      	lsrs	r3, r3, #16
    29d8:	b2db      	uxtb	r3, r3
    29da:	3301      	adds	r3, #1
    29dc:	b2db      	uxtb	r3, r3
    29de:	f003 031f 	and.w	r3, r3, #31
    29e2:	b2d9      	uxtb	r1, r3
    29e4:	687a      	ldr	r2, [r7, #4]
    29e6:	7893      	ldrb	r3, [r2, #2]
    29e8:	f361 0345 	bfi	r3, r1, #1, #5
    29ec:	7093      	strb	r3, [r2, #2]
    29ee:	697b      	ldr	r3, [r7, #20]
    29f0:	4a27      	ldr	r2, [pc, #156]	; (2a90 <get_date_time+0x1b4>)
    29f2:	fba2 1203 	umull	r1, r2, r2, r3
    29f6:	0c12      	lsrs	r2, r2, #16
    29f8:	4926      	ldr	r1, [pc, #152]	; (2a94 <get_date_time+0x1b8>)
    29fa:	fb01 f202 	mul.w	r2, r1, r2
    29fe:	1a9b      	subs	r3, r3, r2
    2a00:	617b      	str	r3, [r7, #20]
    2a02:	697b      	ldr	r3, [r7, #20]
    2a04:	4a24      	ldr	r2, [pc, #144]	; (2a98 <get_date_time+0x1bc>)
    2a06:	fba2 2303 	umull	r2, r3, r2, r3
    2a0a:	0adb      	lsrs	r3, r3, #11
    2a0c:	b2db      	uxtb	r3, r3
    2a0e:	f003 031f 	and.w	r3, r3, #31
    2a12:	b2d9      	uxtb	r1, r3
    2a14:	687a      	ldr	r2, [r7, #4]
    2a16:	6813      	ldr	r3, [r2, #0]
    2a18:	f361 3310 	bfi	r3, r1, #12, #5
    2a1c:	6013      	str	r3, [r2, #0]
    2a1e:	697b      	ldr	r3, [r7, #20]
    2a20:	4a1d      	ldr	r2, [pc, #116]	; (2a98 <get_date_time+0x1bc>)
    2a22:	fba2 1203 	umull	r1, r2, r2, r3
    2a26:	0ad2      	lsrs	r2, r2, #11
    2a28:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2a2c:	fb01 f202 	mul.w	r2, r1, r2
    2a30:	1a9b      	subs	r3, r3, r2
    2a32:	617b      	str	r3, [r7, #20]
    2a34:	697b      	ldr	r3, [r7, #20]
    2a36:	4a19      	ldr	r2, [pc, #100]	; (2a9c <get_date_time+0x1c0>)
    2a38:	fba2 2303 	umull	r2, r3, r2, r3
    2a3c:	095b      	lsrs	r3, r3, #5
    2a3e:	b2db      	uxtb	r3, r3
    2a40:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2a44:	b2d9      	uxtb	r1, r3
    2a46:	687a      	ldr	r2, [r7, #4]
    2a48:	8813      	ldrh	r3, [r2, #0]
    2a4a:	f361 138b 	bfi	r3, r1, #6, #6
    2a4e:	8013      	strh	r3, [r2, #0]
    2a50:	6979      	ldr	r1, [r7, #20]
    2a52:	4b12      	ldr	r3, [pc, #72]	; (2a9c <get_date_time+0x1c0>)
    2a54:	fba3 2301 	umull	r2, r3, r3, r1
    2a58:	095a      	lsrs	r2, r3, #5
    2a5a:	4613      	mov	r3, r2
    2a5c:	011b      	lsls	r3, r3, #4
    2a5e:	1a9b      	subs	r3, r3, r2
    2a60:	009b      	lsls	r3, r3, #2
    2a62:	1aca      	subs	r2, r1, r3
    2a64:	b2d3      	uxtb	r3, r2
    2a66:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2a6a:	b2d9      	uxtb	r1, r3
    2a6c:	687a      	ldr	r2, [r7, #4]
    2a6e:	7813      	ldrb	r3, [r2, #0]
    2a70:	f361 0305 	bfi	r3, r1, #0, #6
    2a74:	7013      	strb	r3, [r2, #0]
    2a76:	bf00      	nop
    2a78:	3718      	adds	r7, #24
    2a7a:	46bd      	mov	sp, r7
    2a7c:	bd80      	pop	{r7, pc}
    2a7e:	bf00      	nop
    2a80:	40002800 	.word	0x40002800
    2a84:	fe1ecc80 	.word	0xfe1ecc80
    2a88:	01e1337f 	.word	0x01e1337f
    2a8c:	01e284ff 	.word	0x01e284ff
    2a90:	c22e4507 	.word	0xc22e4507
    2a94:	00015180 	.word	0x00015180
    2a98:	91a2b3c5 	.word	0x91a2b3c5
    2a9c:	88888889 	.word	0x88888889

00002aa0 <set_date_time>:
    2aa0:	b580      	push	{r7, lr}
    2aa2:	b086      	sub	sp, #24
    2aa4:	af00      	add	r7, sp, #0
    2aa6:	6078      	str	r0, [r7, #4]
    2aa8:	2300      	movs	r3, #0
    2aaa:	613b      	str	r3, [r7, #16]
    2aac:	687b      	ldr	r3, [r7, #4]
    2aae:	891b      	ldrh	r3, [r3, #8]
    2ab0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2ab4:	4293      	cmp	r3, r2
    2ab6:	d803      	bhi.n	2ac0 <set_date_time+0x20>
    2ab8:	687b      	ldr	r3, [r7, #4]
    2aba:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2abe:	811a      	strh	r2, [r3, #8]
    2ac0:	687b      	ldr	r3, [r7, #4]
    2ac2:	891b      	ldrh	r3, [r3, #8]
    2ac4:	f640 023a 	movw	r2, #2106	; 0x83a
    2ac8:	4293      	cmp	r3, r2
    2aca:	d903      	bls.n	2ad4 <set_date_time+0x34>
    2acc:	687b      	ldr	r3, [r7, #4]
    2ace:	f640 023a 	movw	r2, #2106	; 0x83a
    2ad2:	811a      	strh	r2, [r3, #8]
    2ad4:	687b      	ldr	r3, [r7, #4]
    2ad6:	891b      	ldrh	r3, [r3, #8]
    2ad8:	4618      	mov	r0, r3
    2ada:	f7ff feaf 	bl	283c <leap_year>
    2ade:	60f8      	str	r0, [r7, #12]
    2ae0:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2ae4:	617b      	str	r3, [r7, #20]
    2ae6:	e013      	b.n	2b10 <set_date_time+0x70>
    2ae8:	6978      	ldr	r0, [r7, #20]
    2aea:	f7ff fea7 	bl	283c <leap_year>
    2aee:	4603      	mov	r3, r0
    2af0:	2b00      	cmp	r3, #0
    2af2:	d006      	beq.n	2b02 <set_date_time+0x62>
    2af4:	693b      	ldr	r3, [r7, #16]
    2af6:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2afa:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    2afe:	613b      	str	r3, [r7, #16]
    2b00:	e003      	b.n	2b0a <set_date_time+0x6a>
    2b02:	693a      	ldr	r2, [r7, #16]
    2b04:	4b42      	ldr	r3, [pc, #264]	; (2c10 <set_date_time+0x170>)
    2b06:	4413      	add	r3, r2
    2b08:	613b      	str	r3, [r7, #16]
    2b0a:	697b      	ldr	r3, [r7, #20]
    2b0c:	3301      	adds	r3, #1
    2b0e:	617b      	str	r3, [r7, #20]
    2b10:	687b      	ldr	r3, [r7, #4]
    2b12:	891b      	ldrh	r3, [r3, #8]
    2b14:	461a      	mov	r2, r3
    2b16:	697b      	ldr	r3, [r7, #20]
    2b18:	429a      	cmp	r2, r3
    2b1a:	d8e5      	bhi.n	2ae8 <set_date_time+0x48>
    2b1c:	2301      	movs	r3, #1
    2b1e:	617b      	str	r3, [r7, #20]
    2b20:	e00a      	b.n	2b38 <set_date_time+0x98>
    2b22:	6979      	ldr	r1, [r7, #20]
    2b24:	68f8      	ldr	r0, [r7, #12]
    2b26:	f7ff feb5 	bl	2894 <sec_per_month>
    2b2a:	4602      	mov	r2, r0
    2b2c:	693b      	ldr	r3, [r7, #16]
    2b2e:	4413      	add	r3, r2
    2b30:	613b      	str	r3, [r7, #16]
    2b32:	697b      	ldr	r3, [r7, #20]
    2b34:	3301      	adds	r3, #1
    2b36:	617b      	str	r3, [r7, #20]
    2b38:	687b      	ldr	r3, [r7, #4]
    2b3a:	885b      	ldrh	r3, [r3, #2]
    2b3c:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2b40:	b2db      	uxtb	r3, r3
    2b42:	461a      	mov	r2, r3
    2b44:	697b      	ldr	r3, [r7, #20]
    2b46:	429a      	cmp	r2, r3
    2b48:	d8eb      	bhi.n	2b22 <set_date_time+0x82>
    2b4a:	687b      	ldr	r3, [r7, #4]
    2b4c:	789b      	ldrb	r3, [r3, #2]
    2b4e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2b52:	b2db      	uxtb	r3, r3
    2b54:	3b01      	subs	r3, #1
    2b56:	4a2f      	ldr	r2, [pc, #188]	; (2c14 <set_date_time+0x174>)
    2b58:	fb02 f303 	mul.w	r3, r2, r3
    2b5c:	461a      	mov	r2, r3
    2b5e:	693b      	ldr	r3, [r7, #16]
    2b60:	4413      	add	r3, r2
    2b62:	613b      	str	r3, [r7, #16]
    2b64:	687b      	ldr	r3, [r7, #4]
    2b66:	681b      	ldr	r3, [r3, #0]
    2b68:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2b6c:	b2db      	uxtb	r3, r3
    2b6e:	461a      	mov	r2, r3
    2b70:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    2b74:	fb03 f302 	mul.w	r3, r3, r2
    2b78:	461a      	mov	r2, r3
    2b7a:	693b      	ldr	r3, [r7, #16]
    2b7c:	4413      	add	r3, r2
    2b7e:	613b      	str	r3, [r7, #16]
    2b80:	687b      	ldr	r3, [r7, #4]
    2b82:	881b      	ldrh	r3, [r3, #0]
    2b84:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2b88:	b2db      	uxtb	r3, r3
    2b8a:	461a      	mov	r2, r3
    2b8c:	4613      	mov	r3, r2
    2b8e:	011b      	lsls	r3, r3, #4
    2b90:	1a9b      	subs	r3, r3, r2
    2b92:	009b      	lsls	r3, r3, #2
    2b94:	461a      	mov	r2, r3
    2b96:	693b      	ldr	r3, [r7, #16]
    2b98:	4413      	add	r3, r2
    2b9a:	613b      	str	r3, [r7, #16]
    2b9c:	687b      	ldr	r3, [r7, #4]
    2b9e:	781b      	ldrb	r3, [r3, #0]
    2ba0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2ba4:	b2db      	uxtb	r3, r3
    2ba6:	461a      	mov	r2, r3
    2ba8:	693b      	ldr	r3, [r7, #16]
    2baa:	4413      	add	r3, r2
    2bac:	613b      	str	r3, [r7, #16]
    2bae:	4a1a      	ldr	r2, [pc, #104]	; (2c18 <set_date_time+0x178>)
    2bb0:	4b19      	ldr	r3, [pc, #100]	; (2c18 <set_date_time+0x178>)
    2bb2:	69db      	ldr	r3, [r3, #28]
    2bb4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2bb8:	61d3      	str	r3, [r2, #28]
    2bba:	4a18      	ldr	r2, [pc, #96]	; (2c1c <set_date_time+0x17c>)
    2bbc:	4b17      	ldr	r3, [pc, #92]	; (2c1c <set_date_time+0x17c>)
    2bbe:	681b      	ldr	r3, [r3, #0]
    2bc0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2bc4:	6013      	str	r3, [r2, #0]
    2bc6:	4a16      	ldr	r2, [pc, #88]	; (2c20 <set_date_time+0x180>)
    2bc8:	4b15      	ldr	r3, [pc, #84]	; (2c20 <set_date_time+0x180>)
    2bca:	685b      	ldr	r3, [r3, #4]
    2bcc:	f043 0310 	orr.w	r3, r3, #16
    2bd0:	6053      	str	r3, [r2, #4]
    2bd2:	4a13      	ldr	r2, [pc, #76]	; (2c20 <set_date_time+0x180>)
    2bd4:	693b      	ldr	r3, [r7, #16]
    2bd6:	0c1b      	lsrs	r3, r3, #16
    2bd8:	6193      	str	r3, [r2, #24]
    2bda:	4a11      	ldr	r2, [pc, #68]	; (2c20 <set_date_time+0x180>)
    2bdc:	693b      	ldr	r3, [r7, #16]
    2bde:	b29b      	uxth	r3, r3
    2be0:	61d3      	str	r3, [r2, #28]
    2be2:	4a0f      	ldr	r2, [pc, #60]	; (2c20 <set_date_time+0x180>)
    2be4:	4b0e      	ldr	r3, [pc, #56]	; (2c20 <set_date_time+0x180>)
    2be6:	685b      	ldr	r3, [r3, #4]
    2be8:	f023 0310 	bic.w	r3, r3, #16
    2bec:	6053      	str	r3, [r2, #4]
    2bee:	bf00      	nop
    2bf0:	4b0b      	ldr	r3, [pc, #44]	; (2c20 <set_date_time+0x180>)
    2bf2:	685b      	ldr	r3, [r3, #4]
    2bf4:	f003 0320 	and.w	r3, r3, #32
    2bf8:	2b00      	cmp	r3, #0
    2bfa:	d0f9      	beq.n	2bf0 <set_date_time+0x150>
    2bfc:	4a07      	ldr	r2, [pc, #28]	; (2c1c <set_date_time+0x17c>)
    2bfe:	4b07      	ldr	r3, [pc, #28]	; (2c1c <set_date_time+0x17c>)
    2c00:	681b      	ldr	r3, [r3, #0]
    2c02:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2c06:	6013      	str	r3, [r2, #0]
    2c08:	bf00      	nop
    2c0a:	3718      	adds	r7, #24
    2c0c:	46bd      	mov	sp, r7
    2c0e:	bd80      	pop	{r7, pc}
    2c10:	01e13380 	.word	0x01e13380
    2c14:	00015180 	.word	0x00015180
    2c18:	40021000 	.word	0x40021000
    2c1c:	40007000 	.word	0x40007000
    2c20:	40002800 	.word	0x40002800

00002c24 <rtc_init>:
    2c24:	b580      	push	{r7, lr}
    2c26:	b082      	sub	sp, #8
    2c28:	af00      	add	r7, sp, #0
    2c2a:	6078      	str	r0, [r7, #4]
    2c2c:	6039      	str	r1, [r7, #0]
    2c2e:	4b4a      	ldr	r3, [pc, #296]	; (2d58 <rtc_init+0x134>)
    2c30:	685b      	ldr	r3, [r3, #4]
    2c32:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2c36:	4293      	cmp	r3, r2
    2c38:	f000 8082 	beq.w	2d40 <rtc_init+0x11c>
    2c3c:	4a47      	ldr	r2, [pc, #284]	; (2d5c <rtc_init+0x138>)
    2c3e:	4b47      	ldr	r3, [pc, #284]	; (2d5c <rtc_init+0x138>)
    2c40:	69db      	ldr	r3, [r3, #28]
    2c42:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2c46:	61d3      	str	r3, [r2, #28]
    2c48:	4a45      	ldr	r2, [pc, #276]	; (2d60 <rtc_init+0x13c>)
    2c4a:	4b45      	ldr	r3, [pc, #276]	; (2d60 <rtc_init+0x13c>)
    2c4c:	681b      	ldr	r3, [r3, #0]
    2c4e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2c52:	6013      	str	r3, [r2, #0]
    2c54:	4a41      	ldr	r2, [pc, #260]	; (2d5c <rtc_init+0x138>)
    2c56:	4b41      	ldr	r3, [pc, #260]	; (2d5c <rtc_init+0x138>)
    2c58:	6a1b      	ldr	r3, [r3, #32]
    2c5a:	f043 0301 	orr.w	r3, r3, #1
    2c5e:	6213      	str	r3, [r2, #32]
    2c60:	bf00      	nop
    2c62:	4b3e      	ldr	r3, [pc, #248]	; (2d5c <rtc_init+0x138>)
    2c64:	6a1b      	ldr	r3, [r3, #32]
    2c66:	f003 0302 	and.w	r3, r3, #2
    2c6a:	2b00      	cmp	r3, #0
    2c6c:	d0f9      	beq.n	2c62 <rtc_init+0x3e>
    2c6e:	4a3b      	ldr	r2, [pc, #236]	; (2d5c <rtc_init+0x138>)
    2c70:	4b3a      	ldr	r3, [pc, #232]	; (2d5c <rtc_init+0x138>)
    2c72:	6a1b      	ldr	r3, [r3, #32]
    2c74:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2c78:	6213      	str	r3, [r2, #32]
    2c7a:	bf00      	nop
    2c7c:	4b39      	ldr	r3, [pc, #228]	; (2d64 <rtc_init+0x140>)
    2c7e:	685b      	ldr	r3, [r3, #4]
    2c80:	f003 0308 	and.w	r3, r3, #8
    2c84:	2b00      	cmp	r3, #0
    2c86:	d0f9      	beq.n	2c7c <rtc_init+0x58>
    2c88:	bf00      	nop
    2c8a:	4b36      	ldr	r3, [pc, #216]	; (2d64 <rtc_init+0x140>)
    2c8c:	685b      	ldr	r3, [r3, #4]
    2c8e:	f003 0320 	and.w	r3, r3, #32
    2c92:	2b00      	cmp	r3, #0
    2c94:	d0f9      	beq.n	2c8a <rtc_init+0x66>
    2c96:	4a33      	ldr	r2, [pc, #204]	; (2d64 <rtc_init+0x140>)
    2c98:	4b32      	ldr	r3, [pc, #200]	; (2d64 <rtc_init+0x140>)
    2c9a:	685b      	ldr	r3, [r3, #4]
    2c9c:	f043 0310 	orr.w	r3, r3, #16
    2ca0:	6053      	str	r3, [r2, #4]
    2ca2:	bf00      	nop
    2ca4:	4b2f      	ldr	r3, [pc, #188]	; (2d64 <rtc_init+0x140>)
    2ca6:	685b      	ldr	r3, [r3, #4]
    2ca8:	f003 0320 	and.w	r3, r3, #32
    2cac:	2b00      	cmp	r3, #0
    2cae:	d0f9      	beq.n	2ca4 <rtc_init+0x80>
    2cb0:	492c      	ldr	r1, [pc, #176]	; (2d64 <rtc_init+0x140>)
    2cb2:	4b2c      	ldr	r3, [pc, #176]	; (2d64 <rtc_init+0x140>)
    2cb4:	681a      	ldr	r2, [r3, #0]
    2cb6:	683b      	ldr	r3, [r7, #0]
    2cb8:	4313      	orrs	r3, r2
    2cba:	600b      	str	r3, [r1, #0]
    2cbc:	bf00      	nop
    2cbe:	4b29      	ldr	r3, [pc, #164]	; (2d64 <rtc_init+0x140>)
    2cc0:	685b      	ldr	r3, [r3, #4]
    2cc2:	f003 0320 	and.w	r3, r3, #32
    2cc6:	2b00      	cmp	r3, #0
    2cc8:	d0f9      	beq.n	2cbe <rtc_init+0x9a>
    2cca:	4a26      	ldr	r2, [pc, #152]	; (2d64 <rtc_init+0x140>)
    2ccc:	687b      	ldr	r3, [r7, #4]
    2cce:	03db      	lsls	r3, r3, #15
    2cd0:	4925      	ldr	r1, [pc, #148]	; (2d68 <rtc_init+0x144>)
    2cd2:	fba1 1303 	umull	r1, r3, r1, r3
    2cd6:	099b      	lsrs	r3, r3, #6
    2cd8:	3b01      	subs	r3, #1
    2cda:	b29b      	uxth	r3, r3
    2cdc:	60d3      	str	r3, [r2, #12]
    2cde:	bf00      	nop
    2ce0:	4b20      	ldr	r3, [pc, #128]	; (2d64 <rtc_init+0x140>)
    2ce2:	685b      	ldr	r3, [r3, #4]
    2ce4:	f003 0320 	and.w	r3, r3, #32
    2ce8:	2b00      	cmp	r3, #0
    2cea:	d0f9      	beq.n	2ce0 <rtc_init+0xbc>
    2cec:	4a1d      	ldr	r2, [pc, #116]	; (2d64 <rtc_init+0x140>)
    2cee:	687b      	ldr	r3, [r7, #4]
    2cf0:	03db      	lsls	r3, r3, #15
    2cf2:	491d      	ldr	r1, [pc, #116]	; (2d68 <rtc_init+0x144>)
    2cf4:	fba1 1303 	umull	r1, r3, r1, r3
    2cf8:	099b      	lsrs	r3, r3, #6
    2cfa:	3b01      	subs	r3, #1
    2cfc:	0c1b      	lsrs	r3, r3, #16
    2cfe:	f003 030f 	and.w	r3, r3, #15
    2d02:	6093      	str	r3, [r2, #8]
    2d04:	bf00      	nop
    2d06:	4b17      	ldr	r3, [pc, #92]	; (2d64 <rtc_init+0x140>)
    2d08:	685b      	ldr	r3, [r3, #4]
    2d0a:	f003 0320 	and.w	r3, r3, #32
    2d0e:	2b00      	cmp	r3, #0
    2d10:	d0f9      	beq.n	2d06 <rtc_init+0xe2>
    2d12:	4b11      	ldr	r3, [pc, #68]	; (2d58 <rtc_init+0x134>)
    2d14:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2d18:	605a      	str	r2, [r3, #4]
    2d1a:	4a12      	ldr	r2, [pc, #72]	; (2d64 <rtc_init+0x140>)
    2d1c:	4b11      	ldr	r3, [pc, #68]	; (2d64 <rtc_init+0x140>)
    2d1e:	685b      	ldr	r3, [r3, #4]
    2d20:	f023 0310 	bic.w	r3, r3, #16
    2d24:	6053      	str	r3, [r2, #4]
    2d26:	bf00      	nop
    2d28:	4b0e      	ldr	r3, [pc, #56]	; (2d64 <rtc_init+0x140>)
    2d2a:	685b      	ldr	r3, [r3, #4]
    2d2c:	f003 0320 	and.w	r3, r3, #32
    2d30:	2b00      	cmp	r3, #0
    2d32:	d0f9      	beq.n	2d28 <rtc_init+0x104>
    2d34:	4a0a      	ldr	r2, [pc, #40]	; (2d60 <rtc_init+0x13c>)
    2d36:	4b0a      	ldr	r3, [pc, #40]	; (2d60 <rtc_init+0x13c>)
    2d38:	681b      	ldr	r3, [r3, #0]
    2d3a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2d3e:	6013      	str	r3, [r2, #0]
    2d40:	210f      	movs	r1, #15
    2d42:	2003      	movs	r0, #3
    2d44:	f7ff fd4a 	bl	27dc <set_int_priority>
    2d48:	2003      	movs	r0, #3
    2d4a:	f7ff fc8d 	bl	2668 <enable_interrupt>
    2d4e:	bf00      	nop
    2d50:	3708      	adds	r7, #8
    2d52:	46bd      	mov	sp, r7
    2d54:	bd80      	pop	{r7, pc}
    2d56:	bf00      	nop
    2d58:	40006c00 	.word	0x40006c00
    2d5c:	40021000 	.word	0x40021000
    2d60:	40007000 	.word	0x40007000
    2d64:	40002800 	.word	0x40002800
    2d68:	10624dd3 	.word	0x10624dd3

00002d6c <reset_backup_domain>:
    2d6c:	b480      	push	{r7}
    2d6e:	af00      	add	r7, sp, #0
    2d70:	4a0a      	ldr	r2, [pc, #40]	; (2d9c <reset_backup_domain+0x30>)
    2d72:	4b0a      	ldr	r3, [pc, #40]	; (2d9c <reset_backup_domain+0x30>)
    2d74:	69db      	ldr	r3, [r3, #28]
    2d76:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2d7a:	61d3      	str	r3, [r2, #28]
    2d7c:	4a07      	ldr	r2, [pc, #28]	; (2d9c <reset_backup_domain+0x30>)
    2d7e:	4b07      	ldr	r3, [pc, #28]	; (2d9c <reset_backup_domain+0x30>)
    2d80:	6a1b      	ldr	r3, [r3, #32]
    2d82:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2d86:	6213      	str	r3, [r2, #32]
    2d88:	4a04      	ldr	r2, [pc, #16]	; (2d9c <reset_backup_domain+0x30>)
    2d8a:	4b04      	ldr	r3, [pc, #16]	; (2d9c <reset_backup_domain+0x30>)
    2d8c:	6a1b      	ldr	r3, [r3, #32]
    2d8e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    2d92:	6213      	str	r3, [r2, #32]
    2d94:	bf00      	nop
    2d96:	46bd      	mov	sp, r7
    2d98:	bc80      	pop	{r7}
    2d9a:	4770      	bx	lr
    2d9c:	40021000 	.word	0x40021000

00002da0 <rtc_clock_trim>:
    2da0:	b480      	push	{r7}
    2da2:	b083      	sub	sp, #12
    2da4:	af00      	add	r7, sp, #0
    2da6:	6078      	str	r0, [r7, #4]
    2da8:	4a34      	ldr	r2, [pc, #208]	; (2e7c <rtc_clock_trim+0xdc>)
    2daa:	4b34      	ldr	r3, [pc, #208]	; (2e7c <rtc_clock_trim+0xdc>)
    2dac:	69db      	ldr	r3, [r3, #28]
    2dae:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2db2:	61d3      	str	r3, [r2, #28]
    2db4:	bf00      	nop
    2db6:	4b32      	ldr	r3, [pc, #200]	; (2e80 <rtc_clock_trim+0xe0>)
    2db8:	685b      	ldr	r3, [r3, #4]
    2dba:	f003 0308 	and.w	r3, r3, #8
    2dbe:	2b00      	cmp	r3, #0
    2dc0:	d0f9      	beq.n	2db6 <rtc_clock_trim+0x16>
    2dc2:	4a30      	ldr	r2, [pc, #192]	; (2e84 <rtc_clock_trim+0xe4>)
    2dc4:	4b2f      	ldr	r3, [pc, #188]	; (2e84 <rtc_clock_trim+0xe4>)
    2dc6:	681b      	ldr	r3, [r3, #0]
    2dc8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2dcc:	6013      	str	r3, [r2, #0]
    2dce:	4a2c      	ldr	r2, [pc, #176]	; (2e80 <rtc_clock_trim+0xe0>)
    2dd0:	4b2b      	ldr	r3, [pc, #172]	; (2e80 <rtc_clock_trim+0xe0>)
    2dd2:	685b      	ldr	r3, [r3, #4]
    2dd4:	f043 0310 	orr.w	r3, r3, #16
    2dd8:	6053      	str	r3, [r2, #4]
    2dda:	4a2b      	ldr	r2, [pc, #172]	; (2e88 <rtc_clock_trim+0xe8>)
    2ddc:	4b2a      	ldr	r3, [pc, #168]	; (2e88 <rtc_clock_trim+0xe8>)
    2dde:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2de0:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2de4:	62d3      	str	r3, [r2, #44]	; 0x2c
    2de6:	687b      	ldr	r3, [r7, #4]
    2de8:	2b00      	cmp	r3, #0
    2dea:	d10a      	bne.n	2e02 <rtc_clock_trim+0x62>
    2dec:	4b26      	ldr	r3, [pc, #152]	; (2e88 <rtc_clock_trim+0xe8>)
    2dee:	2200      	movs	r2, #0
    2df0:	62da      	str	r2, [r3, #44]	; 0x2c
    2df2:	4b23      	ldr	r3, [pc, #140]	; (2e80 <rtc_clock_trim+0xe0>)
    2df4:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2df8:	60da      	str	r2, [r3, #12]
    2dfa:	4b21      	ldr	r3, [pc, #132]	; (2e80 <rtc_clock_trim+0xe0>)
    2dfc:	2200      	movs	r2, #0
    2dfe:	609a      	str	r2, [r3, #8]
    2e00:	e023      	b.n	2e4a <rtc_clock_trim+0xaa>
    2e02:	687b      	ldr	r3, [r7, #4]
    2e04:	2b00      	cmp	r3, #0
    2e06:	dd0a      	ble.n	2e1e <rtc_clock_trim+0x7e>
    2e08:	687b      	ldr	r3, [r7, #4]
    2e0a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2e0e:	607b      	str	r3, [r7, #4]
    2e10:	491d      	ldr	r1, [pc, #116]	; (2e88 <rtc_clock_trim+0xe8>)
    2e12:	4b1d      	ldr	r3, [pc, #116]	; (2e88 <rtc_clock_trim+0xe8>)
    2e14:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2e16:	687b      	ldr	r3, [r7, #4]
    2e18:	4313      	orrs	r3, r2
    2e1a:	62cb      	str	r3, [r1, #44]	; 0x2c
    2e1c:	e015      	b.n	2e4a <rtc_clock_trim+0xaa>
    2e1e:	687b      	ldr	r3, [r7, #4]
    2e20:	425b      	negs	r3, r3
    2e22:	607b      	str	r3, [r7, #4]
    2e24:	687b      	ldr	r3, [r7, #4]
    2e26:	2b7f      	cmp	r3, #127	; 0x7f
    2e28:	dd01      	ble.n	2e2e <rtc_clock_trim+0x8e>
    2e2a:	237f      	movs	r3, #127	; 0x7f
    2e2c:	607b      	str	r3, [r7, #4]
    2e2e:	4b16      	ldr	r3, [pc, #88]	; (2e88 <rtc_clock_trim+0xe8>)
    2e30:	2200      	movs	r2, #0
    2e32:	62da      	str	r2, [r3, #44]	; 0x2c
    2e34:	4a12      	ldr	r2, [pc, #72]	; (2e80 <rtc_clock_trim+0xe0>)
    2e36:	687b      	ldr	r3, [r7, #4]
    2e38:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2e3c:	33ff      	adds	r3, #255	; 0xff
    2e3e:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2e42:	60d3      	str	r3, [r2, #12]
    2e44:	4b0e      	ldr	r3, [pc, #56]	; (2e80 <rtc_clock_trim+0xe0>)
    2e46:	2200      	movs	r2, #0
    2e48:	609a      	str	r2, [r3, #8]
    2e4a:	4a0d      	ldr	r2, [pc, #52]	; (2e80 <rtc_clock_trim+0xe0>)
    2e4c:	4b0c      	ldr	r3, [pc, #48]	; (2e80 <rtc_clock_trim+0xe0>)
    2e4e:	685b      	ldr	r3, [r3, #4]
    2e50:	f023 0310 	bic.w	r3, r3, #16
    2e54:	6053      	str	r3, [r2, #4]
    2e56:	bf00      	nop
    2e58:	4b09      	ldr	r3, [pc, #36]	; (2e80 <rtc_clock_trim+0xe0>)
    2e5a:	685b      	ldr	r3, [r3, #4]
    2e5c:	f003 0320 	and.w	r3, r3, #32
    2e60:	2b00      	cmp	r3, #0
    2e62:	d0f9      	beq.n	2e58 <rtc_clock_trim+0xb8>
    2e64:	4a07      	ldr	r2, [pc, #28]	; (2e84 <rtc_clock_trim+0xe4>)
    2e66:	4b07      	ldr	r3, [pc, #28]	; (2e84 <rtc_clock_trim+0xe4>)
    2e68:	681b      	ldr	r3, [r3, #0]
    2e6a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2e6e:	6013      	str	r3, [r2, #0]
    2e70:	bf00      	nop
    2e72:	370c      	adds	r7, #12
    2e74:	46bd      	mov	sp, r7
    2e76:	bc80      	pop	{r7}
    2e78:	4770      	bx	lr
    2e7a:	bf00      	nop
    2e7c:	40021000 	.word	0x40021000
    2e80:	40002800 	.word	0x40002800
    2e84:	40007000 	.word	0x40007000
    2e88:	40006c00 	.word	0x40006c00

00002e8c <rtc_set_alarm>:
    2e8c:	b480      	push	{r7}
    2e8e:	b083      	sub	sp, #12
    2e90:	af00      	add	r7, sp, #0
    2e92:	6078      	str	r0, [r7, #4]
    2e94:	bf00      	nop
    2e96:	370c      	adds	r7, #12
    2e98:	46bd      	mov	sp, r7
    2e9a:	bc80      	pop	{r7}
    2e9c:	4770      	bx	lr

00002e9e <str_to_date>:
    2e9e:	b580      	push	{r7, lr}
    2ea0:	b084      	sub	sp, #16
    2ea2:	af00      	add	r7, sp, #0
    2ea4:	6078      	str	r0, [r7, #4]
    2ea6:	6039      	str	r1, [r7, #0]
    2ea8:	2300      	movs	r3, #0
    2eaa:	60fb      	str	r3, [r7, #12]
    2eac:	2300      	movs	r3, #0
    2eae:	60bb      	str	r3, [r7, #8]
    2eb0:	e00f      	b.n	2ed2 <str_to_date+0x34>
    2eb2:	68ba      	ldr	r2, [r7, #8]
    2eb4:	4613      	mov	r3, r2
    2eb6:	009b      	lsls	r3, r3, #2
    2eb8:	4413      	add	r3, r2
    2eba:	005b      	lsls	r3, r3, #1
    2ebc:	4619      	mov	r1, r3
    2ebe:	68fb      	ldr	r3, [r7, #12]
    2ec0:	1c5a      	adds	r2, r3, #1
    2ec2:	60fa      	str	r2, [r7, #12]
    2ec4:	461a      	mov	r2, r3
    2ec6:	687b      	ldr	r3, [r7, #4]
    2ec8:	4413      	add	r3, r2
    2eca:	781b      	ldrb	r3, [r3, #0]
    2ecc:	440b      	add	r3, r1
    2ece:	3b30      	subs	r3, #48	; 0x30
    2ed0:	60bb      	str	r3, [r7, #8]
    2ed2:	68fb      	ldr	r3, [r7, #12]
    2ed4:	687a      	ldr	r2, [r7, #4]
    2ed6:	4413      	add	r3, r2
    2ed8:	781b      	ldrb	r3, [r3, #0]
    2eda:	4618      	mov	r0, r3
    2edc:	f7fe fb03 	bl	14e6 <digit>
    2ee0:	4603      	mov	r3, r0
    2ee2:	2b00      	cmp	r3, #0
    2ee4:	d1e5      	bne.n	2eb2 <str_to_date+0x14>
    2ee6:	68fb      	ldr	r3, [r7, #12]
    2ee8:	2b03      	cmp	r3, #3
    2eea:	dd05      	ble.n	2ef8 <str_to_date+0x5a>
    2eec:	68fb      	ldr	r3, [r7, #12]
    2eee:	687a      	ldr	r2, [r7, #4]
    2ef0:	4413      	add	r3, r2
    2ef2:	781b      	ldrb	r3, [r3, #0]
    2ef4:	2b2f      	cmp	r3, #47	; 0x2f
    2ef6:	d001      	beq.n	2efc <str_to_date+0x5e>
    2ef8:	2300      	movs	r3, #0
    2efa:	e068      	b.n	2fce <str_to_date+0x130>
    2efc:	68bb      	ldr	r3, [r7, #8]
    2efe:	b29a      	uxth	r2, r3
    2f00:	683b      	ldr	r3, [r7, #0]
    2f02:	811a      	strh	r2, [r3, #8]
    2f04:	68fb      	ldr	r3, [r7, #12]
    2f06:	3301      	adds	r3, #1
    2f08:	60fb      	str	r3, [r7, #12]
    2f0a:	2300      	movs	r3, #0
    2f0c:	60bb      	str	r3, [r7, #8]
    2f0e:	e00f      	b.n	2f30 <str_to_date+0x92>
    2f10:	68ba      	ldr	r2, [r7, #8]
    2f12:	4613      	mov	r3, r2
    2f14:	009b      	lsls	r3, r3, #2
    2f16:	4413      	add	r3, r2
    2f18:	005b      	lsls	r3, r3, #1
    2f1a:	4619      	mov	r1, r3
    2f1c:	68fb      	ldr	r3, [r7, #12]
    2f1e:	1c5a      	adds	r2, r3, #1
    2f20:	60fa      	str	r2, [r7, #12]
    2f22:	461a      	mov	r2, r3
    2f24:	687b      	ldr	r3, [r7, #4]
    2f26:	4413      	add	r3, r2
    2f28:	781b      	ldrb	r3, [r3, #0]
    2f2a:	440b      	add	r3, r1
    2f2c:	3b30      	subs	r3, #48	; 0x30
    2f2e:	60bb      	str	r3, [r7, #8]
    2f30:	68fb      	ldr	r3, [r7, #12]
    2f32:	687a      	ldr	r2, [r7, #4]
    2f34:	4413      	add	r3, r2
    2f36:	781b      	ldrb	r3, [r3, #0]
    2f38:	4618      	mov	r0, r3
    2f3a:	f7fe fad4 	bl	14e6 <digit>
    2f3e:	4603      	mov	r3, r0
    2f40:	2b00      	cmp	r3, #0
    2f42:	d1e5      	bne.n	2f10 <str_to_date+0x72>
    2f44:	68fb      	ldr	r3, [r7, #12]
    2f46:	2b06      	cmp	r3, #6
    2f48:	dd05      	ble.n	2f56 <str_to_date+0xb8>
    2f4a:	68fb      	ldr	r3, [r7, #12]
    2f4c:	687a      	ldr	r2, [r7, #4]
    2f4e:	4413      	add	r3, r2
    2f50:	781b      	ldrb	r3, [r3, #0]
    2f52:	2b2f      	cmp	r3, #47	; 0x2f
    2f54:	d001      	beq.n	2f5a <str_to_date+0xbc>
    2f56:	2300      	movs	r3, #0
    2f58:	e039      	b.n	2fce <str_to_date+0x130>
    2f5a:	68bb      	ldr	r3, [r7, #8]
    2f5c:	b2db      	uxtb	r3, r3
    2f5e:	f003 030f 	and.w	r3, r3, #15
    2f62:	b2d9      	uxtb	r1, r3
    2f64:	683a      	ldr	r2, [r7, #0]
    2f66:	8853      	ldrh	r3, [r2, #2]
    2f68:	f361 1389 	bfi	r3, r1, #6, #4
    2f6c:	8053      	strh	r3, [r2, #2]
    2f6e:	2300      	movs	r3, #0
    2f70:	60bb      	str	r3, [r7, #8]
    2f72:	68fb      	ldr	r3, [r7, #12]
    2f74:	3301      	adds	r3, #1
    2f76:	60fb      	str	r3, [r7, #12]
    2f78:	e00f      	b.n	2f9a <str_to_date+0xfc>
    2f7a:	68ba      	ldr	r2, [r7, #8]
    2f7c:	4613      	mov	r3, r2
    2f7e:	009b      	lsls	r3, r3, #2
    2f80:	4413      	add	r3, r2
    2f82:	005b      	lsls	r3, r3, #1
    2f84:	4619      	mov	r1, r3
    2f86:	68fb      	ldr	r3, [r7, #12]
    2f88:	1c5a      	adds	r2, r3, #1
    2f8a:	60fa      	str	r2, [r7, #12]
    2f8c:	461a      	mov	r2, r3
    2f8e:	687b      	ldr	r3, [r7, #4]
    2f90:	4413      	add	r3, r2
    2f92:	781b      	ldrb	r3, [r3, #0]
    2f94:	440b      	add	r3, r1
    2f96:	3b30      	subs	r3, #48	; 0x30
    2f98:	60bb      	str	r3, [r7, #8]
    2f9a:	68fb      	ldr	r3, [r7, #12]
    2f9c:	687a      	ldr	r2, [r7, #4]
    2f9e:	4413      	add	r3, r2
    2fa0:	781b      	ldrb	r3, [r3, #0]
    2fa2:	4618      	mov	r0, r3
    2fa4:	f7fe fa9f 	bl	14e6 <digit>
    2fa8:	4603      	mov	r3, r0
    2faa:	2b00      	cmp	r3, #0
    2fac:	d1e5      	bne.n	2f7a <str_to_date+0xdc>
    2fae:	68fb      	ldr	r3, [r7, #12]
    2fb0:	2b09      	cmp	r3, #9
    2fb2:	dc01      	bgt.n	2fb8 <str_to_date+0x11a>
    2fb4:	2300      	movs	r3, #0
    2fb6:	e00a      	b.n	2fce <str_to_date+0x130>
    2fb8:	68bb      	ldr	r3, [r7, #8]
    2fba:	b2db      	uxtb	r3, r3
    2fbc:	f003 031f 	and.w	r3, r3, #31
    2fc0:	b2d9      	uxtb	r1, r3
    2fc2:	683a      	ldr	r2, [r7, #0]
    2fc4:	7893      	ldrb	r3, [r2, #2]
    2fc6:	f361 0345 	bfi	r3, r1, #1, #5
    2fca:	7093      	strb	r3, [r2, #2]
    2fcc:	2301      	movs	r3, #1
    2fce:	4618      	mov	r0, r3
    2fd0:	3710      	adds	r7, #16
    2fd2:	46bd      	mov	sp, r7
    2fd4:	bd80      	pop	{r7, pc}

00002fd6 <str_to_time>:
    2fd6:	b580      	push	{r7, lr}
    2fd8:	b084      	sub	sp, #16
    2fda:	af00      	add	r7, sp, #0
    2fdc:	6078      	str	r0, [r7, #4]
    2fde:	6039      	str	r1, [r7, #0]
    2fe0:	2300      	movs	r3, #0
    2fe2:	60fb      	str	r3, [r7, #12]
    2fe4:	2300      	movs	r3, #0
    2fe6:	72fb      	strb	r3, [r7, #11]
    2fe8:	e010      	b.n	300c <str_to_time+0x36>
    2fea:	7afb      	ldrb	r3, [r7, #11]
    2fec:	461a      	mov	r2, r3
    2fee:	0092      	lsls	r2, r2, #2
    2ff0:	4413      	add	r3, r2
    2ff2:	005b      	lsls	r3, r3, #1
    2ff4:	b2da      	uxtb	r2, r3
    2ff6:	68fb      	ldr	r3, [r7, #12]
    2ff8:	1c59      	adds	r1, r3, #1
    2ffa:	60f9      	str	r1, [r7, #12]
    2ffc:	4619      	mov	r1, r3
    2ffe:	687b      	ldr	r3, [r7, #4]
    3000:	440b      	add	r3, r1
    3002:	781b      	ldrb	r3, [r3, #0]
    3004:	4413      	add	r3, r2
    3006:	b2db      	uxtb	r3, r3
    3008:	3b30      	subs	r3, #48	; 0x30
    300a:	72fb      	strb	r3, [r7, #11]
    300c:	68fb      	ldr	r3, [r7, #12]
    300e:	687a      	ldr	r2, [r7, #4]
    3010:	4413      	add	r3, r2
    3012:	781b      	ldrb	r3, [r3, #0]
    3014:	4618      	mov	r0, r3
    3016:	f7fe fa66 	bl	14e6 <digit>
    301a:	4603      	mov	r3, r0
    301c:	2b00      	cmp	r3, #0
    301e:	d1e4      	bne.n	2fea <str_to_time+0x14>
    3020:	7afb      	ldrb	r3, [r7, #11]
    3022:	2b17      	cmp	r3, #23
    3024:	d805      	bhi.n	3032 <str_to_time+0x5c>
    3026:	68fb      	ldr	r3, [r7, #12]
    3028:	687a      	ldr	r2, [r7, #4]
    302a:	4413      	add	r3, r2
    302c:	781b      	ldrb	r3, [r3, #0]
    302e:	2b3a      	cmp	r3, #58	; 0x3a
    3030:	d001      	beq.n	3036 <str_to_time+0x60>
    3032:	2300      	movs	r3, #0
    3034:	e06d      	b.n	3112 <str_to_time+0x13c>
    3036:	7afb      	ldrb	r3, [r7, #11]
    3038:	f003 031f 	and.w	r3, r3, #31
    303c:	b2d9      	uxtb	r1, r3
    303e:	683a      	ldr	r2, [r7, #0]
    3040:	6813      	ldr	r3, [r2, #0]
    3042:	f361 3310 	bfi	r3, r1, #12, #5
    3046:	6013      	str	r3, [r2, #0]
    3048:	68fb      	ldr	r3, [r7, #12]
    304a:	3301      	adds	r3, #1
    304c:	60fb      	str	r3, [r7, #12]
    304e:	2300      	movs	r3, #0
    3050:	72fb      	strb	r3, [r7, #11]
    3052:	e010      	b.n	3076 <str_to_time+0xa0>
    3054:	7afb      	ldrb	r3, [r7, #11]
    3056:	461a      	mov	r2, r3
    3058:	0092      	lsls	r2, r2, #2
    305a:	4413      	add	r3, r2
    305c:	005b      	lsls	r3, r3, #1
    305e:	b2da      	uxtb	r2, r3
    3060:	68fb      	ldr	r3, [r7, #12]
    3062:	1c59      	adds	r1, r3, #1
    3064:	60f9      	str	r1, [r7, #12]
    3066:	4619      	mov	r1, r3
    3068:	687b      	ldr	r3, [r7, #4]
    306a:	440b      	add	r3, r1
    306c:	781b      	ldrb	r3, [r3, #0]
    306e:	4413      	add	r3, r2
    3070:	b2db      	uxtb	r3, r3
    3072:	3b30      	subs	r3, #48	; 0x30
    3074:	72fb      	strb	r3, [r7, #11]
    3076:	68fb      	ldr	r3, [r7, #12]
    3078:	687a      	ldr	r2, [r7, #4]
    307a:	4413      	add	r3, r2
    307c:	781b      	ldrb	r3, [r3, #0]
    307e:	4618      	mov	r0, r3
    3080:	f7fe fa31 	bl	14e6 <digit>
    3084:	4603      	mov	r3, r0
    3086:	2b00      	cmp	r3, #0
    3088:	d1e4      	bne.n	3054 <str_to_time+0x7e>
    308a:	7afb      	ldrb	r3, [r7, #11]
    308c:	2b3b      	cmp	r3, #59	; 0x3b
    308e:	d805      	bhi.n	309c <str_to_time+0xc6>
    3090:	68fb      	ldr	r3, [r7, #12]
    3092:	687a      	ldr	r2, [r7, #4]
    3094:	4413      	add	r3, r2
    3096:	781b      	ldrb	r3, [r3, #0]
    3098:	2b3a      	cmp	r3, #58	; 0x3a
    309a:	d001      	beq.n	30a0 <str_to_time+0xca>
    309c:	2300      	movs	r3, #0
    309e:	e038      	b.n	3112 <str_to_time+0x13c>
    30a0:	7afb      	ldrb	r3, [r7, #11]
    30a2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    30a6:	b2d9      	uxtb	r1, r3
    30a8:	683a      	ldr	r2, [r7, #0]
    30aa:	8813      	ldrh	r3, [r2, #0]
    30ac:	f361 138b 	bfi	r3, r1, #6, #6
    30b0:	8013      	strh	r3, [r2, #0]
    30b2:	2300      	movs	r3, #0
    30b4:	72fb      	strb	r3, [r7, #11]
    30b6:	68fb      	ldr	r3, [r7, #12]
    30b8:	3301      	adds	r3, #1
    30ba:	60fb      	str	r3, [r7, #12]
    30bc:	e010      	b.n	30e0 <str_to_time+0x10a>
    30be:	7afb      	ldrb	r3, [r7, #11]
    30c0:	461a      	mov	r2, r3
    30c2:	0092      	lsls	r2, r2, #2
    30c4:	4413      	add	r3, r2
    30c6:	005b      	lsls	r3, r3, #1
    30c8:	b2da      	uxtb	r2, r3
    30ca:	68fb      	ldr	r3, [r7, #12]
    30cc:	1c59      	adds	r1, r3, #1
    30ce:	60f9      	str	r1, [r7, #12]
    30d0:	4619      	mov	r1, r3
    30d2:	687b      	ldr	r3, [r7, #4]
    30d4:	440b      	add	r3, r1
    30d6:	781b      	ldrb	r3, [r3, #0]
    30d8:	4413      	add	r3, r2
    30da:	b2db      	uxtb	r3, r3
    30dc:	3b30      	subs	r3, #48	; 0x30
    30de:	72fb      	strb	r3, [r7, #11]
    30e0:	68fb      	ldr	r3, [r7, #12]
    30e2:	687a      	ldr	r2, [r7, #4]
    30e4:	4413      	add	r3, r2
    30e6:	781b      	ldrb	r3, [r3, #0]
    30e8:	4618      	mov	r0, r3
    30ea:	f7fe f9fc 	bl	14e6 <digit>
    30ee:	4603      	mov	r3, r0
    30f0:	2b00      	cmp	r3, #0
    30f2:	d1e4      	bne.n	30be <str_to_time+0xe8>
    30f4:	7afb      	ldrb	r3, [r7, #11]
    30f6:	2b3b      	cmp	r3, #59	; 0x3b
    30f8:	d901      	bls.n	30fe <str_to_time+0x128>
    30fa:	2300      	movs	r3, #0
    30fc:	e009      	b.n	3112 <str_to_time+0x13c>
    30fe:	7afb      	ldrb	r3, [r7, #11]
    3100:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3104:	b2d9      	uxtb	r1, r3
    3106:	683a      	ldr	r2, [r7, #0]
    3108:	7813      	ldrb	r3, [r2, #0]
    310a:	f361 0305 	bfi	r3, r1, #0, #6
    310e:	7013      	strb	r3, [r2, #0]
    3110:	2301      	movs	r3, #1
    3112:	4618      	mov	r0, r3
    3114:	3710      	adds	r7, #16
    3116:	46bd      	mov	sp, r7
    3118:	bd80      	pop	{r7, pc}

0000311a <date_str>:
    311a:	b480      	push	{r7}
    311c:	b085      	sub	sp, #20
    311e:	af00      	add	r7, sp, #0
    3120:	6078      	str	r0, [r7, #4]
    3122:	6039      	str	r1, [r7, #0]
    3124:	2300      	movs	r3, #0
    3126:	60fb      	str	r3, [r7, #12]
    3128:	687b      	ldr	r3, [r7, #4]
    312a:	891b      	ldrh	r3, [r3, #8]
    312c:	60bb      	str	r3, [r7, #8]
    312e:	68fb      	ldr	r3, [r7, #12]
    3130:	1c5a      	adds	r2, r3, #1
    3132:	60fa      	str	r2, [r7, #12]
    3134:	461a      	mov	r2, r3
    3136:	683b      	ldr	r3, [r7, #0]
    3138:	4413      	add	r3, r2
    313a:	68ba      	ldr	r2, [r7, #8]
    313c:	495d      	ldr	r1, [pc, #372]	; (32b4 <date_str+0x19a>)
    313e:	fba1 1202 	umull	r1, r2, r1, r2
    3142:	0992      	lsrs	r2, r2, #6
    3144:	b2d2      	uxtb	r2, r2
    3146:	3230      	adds	r2, #48	; 0x30
    3148:	b2d2      	uxtb	r2, r2
    314a:	701a      	strb	r2, [r3, #0]
    314c:	68bb      	ldr	r3, [r7, #8]
    314e:	4a59      	ldr	r2, [pc, #356]	; (32b4 <date_str+0x19a>)
    3150:	fba2 1203 	umull	r1, r2, r2, r3
    3154:	0992      	lsrs	r2, r2, #6
    3156:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    315a:	fb01 f202 	mul.w	r2, r1, r2
    315e:	1a9b      	subs	r3, r3, r2
    3160:	60bb      	str	r3, [r7, #8]
    3162:	68fb      	ldr	r3, [r7, #12]
    3164:	1c5a      	adds	r2, r3, #1
    3166:	60fa      	str	r2, [r7, #12]
    3168:	461a      	mov	r2, r3
    316a:	683b      	ldr	r3, [r7, #0]
    316c:	4413      	add	r3, r2
    316e:	68ba      	ldr	r2, [r7, #8]
    3170:	4951      	ldr	r1, [pc, #324]	; (32b8 <date_str+0x19e>)
    3172:	fba1 1202 	umull	r1, r2, r1, r2
    3176:	0952      	lsrs	r2, r2, #5
    3178:	b2d2      	uxtb	r2, r2
    317a:	3230      	adds	r2, #48	; 0x30
    317c:	b2d2      	uxtb	r2, r2
    317e:	701a      	strb	r2, [r3, #0]
    3180:	68bb      	ldr	r3, [r7, #8]
    3182:	4a4d      	ldr	r2, [pc, #308]	; (32b8 <date_str+0x19e>)
    3184:	fba2 1203 	umull	r1, r2, r2, r3
    3188:	0952      	lsrs	r2, r2, #5
    318a:	2164      	movs	r1, #100	; 0x64
    318c:	fb01 f202 	mul.w	r2, r1, r2
    3190:	1a9b      	subs	r3, r3, r2
    3192:	60bb      	str	r3, [r7, #8]
    3194:	68fb      	ldr	r3, [r7, #12]
    3196:	1c5a      	adds	r2, r3, #1
    3198:	60fa      	str	r2, [r7, #12]
    319a:	461a      	mov	r2, r3
    319c:	683b      	ldr	r3, [r7, #0]
    319e:	4413      	add	r3, r2
    31a0:	68ba      	ldr	r2, [r7, #8]
    31a2:	4946      	ldr	r1, [pc, #280]	; (32bc <date_str+0x1a2>)
    31a4:	fba1 1202 	umull	r1, r2, r1, r2
    31a8:	08d2      	lsrs	r2, r2, #3
    31aa:	b2d2      	uxtb	r2, r2
    31ac:	3230      	adds	r2, #48	; 0x30
    31ae:	b2d2      	uxtb	r2, r2
    31b0:	701a      	strb	r2, [r3, #0]
    31b2:	68fb      	ldr	r3, [r7, #12]
    31b4:	1c5a      	adds	r2, r3, #1
    31b6:	60fa      	str	r2, [r7, #12]
    31b8:	461a      	mov	r2, r3
    31ba:	683b      	ldr	r3, [r7, #0]
    31bc:	1898      	adds	r0, r3, r2
    31be:	68b9      	ldr	r1, [r7, #8]
    31c0:	4b3e      	ldr	r3, [pc, #248]	; (32bc <date_str+0x1a2>)
    31c2:	fba3 2301 	umull	r2, r3, r3, r1
    31c6:	08da      	lsrs	r2, r3, #3
    31c8:	4613      	mov	r3, r2
    31ca:	009b      	lsls	r3, r3, #2
    31cc:	4413      	add	r3, r2
    31ce:	005b      	lsls	r3, r3, #1
    31d0:	1aca      	subs	r2, r1, r3
    31d2:	b2d3      	uxtb	r3, r2
    31d4:	3330      	adds	r3, #48	; 0x30
    31d6:	b2db      	uxtb	r3, r3
    31d8:	7003      	strb	r3, [r0, #0]
    31da:	68fb      	ldr	r3, [r7, #12]
    31dc:	1c5a      	adds	r2, r3, #1
    31de:	60fa      	str	r2, [r7, #12]
    31e0:	461a      	mov	r2, r3
    31e2:	683b      	ldr	r3, [r7, #0]
    31e4:	4413      	add	r3, r2
    31e6:	222f      	movs	r2, #47	; 0x2f
    31e8:	701a      	strb	r2, [r3, #0]
    31ea:	687b      	ldr	r3, [r7, #4]
    31ec:	885b      	ldrh	r3, [r3, #2]
    31ee:	f3c3 1383 	ubfx	r3, r3, #6, #4
    31f2:	b2db      	uxtb	r3, r3
    31f4:	60bb      	str	r3, [r7, #8]
    31f6:	68fb      	ldr	r3, [r7, #12]
    31f8:	1c5a      	adds	r2, r3, #1
    31fa:	60fa      	str	r2, [r7, #12]
    31fc:	461a      	mov	r2, r3
    31fe:	683b      	ldr	r3, [r7, #0]
    3200:	4413      	add	r3, r2
    3202:	68ba      	ldr	r2, [r7, #8]
    3204:	492d      	ldr	r1, [pc, #180]	; (32bc <date_str+0x1a2>)
    3206:	fba1 1202 	umull	r1, r2, r1, r2
    320a:	08d2      	lsrs	r2, r2, #3
    320c:	b2d2      	uxtb	r2, r2
    320e:	3230      	adds	r2, #48	; 0x30
    3210:	b2d2      	uxtb	r2, r2
    3212:	701a      	strb	r2, [r3, #0]
    3214:	68fb      	ldr	r3, [r7, #12]
    3216:	1c5a      	adds	r2, r3, #1
    3218:	60fa      	str	r2, [r7, #12]
    321a:	461a      	mov	r2, r3
    321c:	683b      	ldr	r3, [r7, #0]
    321e:	1898      	adds	r0, r3, r2
    3220:	68b9      	ldr	r1, [r7, #8]
    3222:	4b26      	ldr	r3, [pc, #152]	; (32bc <date_str+0x1a2>)
    3224:	fba3 2301 	umull	r2, r3, r3, r1
    3228:	08da      	lsrs	r2, r3, #3
    322a:	4613      	mov	r3, r2
    322c:	009b      	lsls	r3, r3, #2
    322e:	4413      	add	r3, r2
    3230:	005b      	lsls	r3, r3, #1
    3232:	1aca      	subs	r2, r1, r3
    3234:	b2d3      	uxtb	r3, r2
    3236:	3330      	adds	r3, #48	; 0x30
    3238:	b2db      	uxtb	r3, r3
    323a:	7003      	strb	r3, [r0, #0]
    323c:	68fb      	ldr	r3, [r7, #12]
    323e:	1c5a      	adds	r2, r3, #1
    3240:	60fa      	str	r2, [r7, #12]
    3242:	461a      	mov	r2, r3
    3244:	683b      	ldr	r3, [r7, #0]
    3246:	4413      	add	r3, r2
    3248:	222f      	movs	r2, #47	; 0x2f
    324a:	701a      	strb	r2, [r3, #0]
    324c:	687b      	ldr	r3, [r7, #4]
    324e:	789b      	ldrb	r3, [r3, #2]
    3250:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3254:	b2db      	uxtb	r3, r3
    3256:	60bb      	str	r3, [r7, #8]
    3258:	68fb      	ldr	r3, [r7, #12]
    325a:	1c5a      	adds	r2, r3, #1
    325c:	60fa      	str	r2, [r7, #12]
    325e:	461a      	mov	r2, r3
    3260:	683b      	ldr	r3, [r7, #0]
    3262:	4413      	add	r3, r2
    3264:	68ba      	ldr	r2, [r7, #8]
    3266:	4915      	ldr	r1, [pc, #84]	; (32bc <date_str+0x1a2>)
    3268:	fba1 1202 	umull	r1, r2, r1, r2
    326c:	08d2      	lsrs	r2, r2, #3
    326e:	b2d2      	uxtb	r2, r2
    3270:	3230      	adds	r2, #48	; 0x30
    3272:	b2d2      	uxtb	r2, r2
    3274:	701a      	strb	r2, [r3, #0]
    3276:	68fb      	ldr	r3, [r7, #12]
    3278:	1c5a      	adds	r2, r3, #1
    327a:	60fa      	str	r2, [r7, #12]
    327c:	461a      	mov	r2, r3
    327e:	683b      	ldr	r3, [r7, #0]
    3280:	1898      	adds	r0, r3, r2
    3282:	68b9      	ldr	r1, [r7, #8]
    3284:	4b0d      	ldr	r3, [pc, #52]	; (32bc <date_str+0x1a2>)
    3286:	fba3 2301 	umull	r2, r3, r3, r1
    328a:	08da      	lsrs	r2, r3, #3
    328c:	4613      	mov	r3, r2
    328e:	009b      	lsls	r3, r3, #2
    3290:	4413      	add	r3, r2
    3292:	005b      	lsls	r3, r3, #1
    3294:	1aca      	subs	r2, r1, r3
    3296:	b2d3      	uxtb	r3, r2
    3298:	3330      	adds	r3, #48	; 0x30
    329a:	b2db      	uxtb	r3, r3
    329c:	7003      	strb	r3, [r0, #0]
    329e:	68fb      	ldr	r3, [r7, #12]
    32a0:	683a      	ldr	r2, [r7, #0]
    32a2:	4413      	add	r3, r2
    32a4:	2200      	movs	r2, #0
    32a6:	701a      	strb	r2, [r3, #0]
    32a8:	bf00      	nop
    32aa:	3714      	adds	r7, #20
    32ac:	46bd      	mov	sp, r7
    32ae:	bc80      	pop	{r7}
    32b0:	4770      	bx	lr
    32b2:	bf00      	nop
    32b4:	10624dd3 	.word	0x10624dd3
    32b8:	51eb851f 	.word	0x51eb851f
    32bc:	cccccccd 	.word	0xcccccccd

000032c0 <time_str>:
    32c0:	b480      	push	{r7}
    32c2:	b085      	sub	sp, #20
    32c4:	af00      	add	r7, sp, #0
    32c6:	6078      	str	r0, [r7, #4]
    32c8:	6039      	str	r1, [r7, #0]
    32ca:	2300      	movs	r3, #0
    32cc:	60fb      	str	r3, [r7, #12]
    32ce:	687b      	ldr	r3, [r7, #4]
    32d0:	681b      	ldr	r3, [r3, #0]
    32d2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    32d6:	b2db      	uxtb	r3, r3
    32d8:	60bb      	str	r3, [r7, #8]
    32da:	68fb      	ldr	r3, [r7, #12]
    32dc:	1c5a      	adds	r2, r3, #1
    32de:	60fa      	str	r2, [r7, #12]
    32e0:	461a      	mov	r2, r3
    32e2:	683b      	ldr	r3, [r7, #0]
    32e4:	4413      	add	r3, r2
    32e6:	68ba      	ldr	r2, [r7, #8]
    32e8:	4943      	ldr	r1, [pc, #268]	; (33f8 <time_str+0x138>)
    32ea:	fba1 1202 	umull	r1, r2, r1, r2
    32ee:	08d2      	lsrs	r2, r2, #3
    32f0:	b2d2      	uxtb	r2, r2
    32f2:	3230      	adds	r2, #48	; 0x30
    32f4:	b2d2      	uxtb	r2, r2
    32f6:	701a      	strb	r2, [r3, #0]
    32f8:	68fb      	ldr	r3, [r7, #12]
    32fa:	1c5a      	adds	r2, r3, #1
    32fc:	60fa      	str	r2, [r7, #12]
    32fe:	461a      	mov	r2, r3
    3300:	683b      	ldr	r3, [r7, #0]
    3302:	1898      	adds	r0, r3, r2
    3304:	68b9      	ldr	r1, [r7, #8]
    3306:	4b3c      	ldr	r3, [pc, #240]	; (33f8 <time_str+0x138>)
    3308:	fba3 2301 	umull	r2, r3, r3, r1
    330c:	08da      	lsrs	r2, r3, #3
    330e:	4613      	mov	r3, r2
    3310:	009b      	lsls	r3, r3, #2
    3312:	4413      	add	r3, r2
    3314:	005b      	lsls	r3, r3, #1
    3316:	1aca      	subs	r2, r1, r3
    3318:	b2d3      	uxtb	r3, r2
    331a:	3330      	adds	r3, #48	; 0x30
    331c:	b2db      	uxtb	r3, r3
    331e:	7003      	strb	r3, [r0, #0]
    3320:	68fb      	ldr	r3, [r7, #12]
    3322:	1c5a      	adds	r2, r3, #1
    3324:	60fa      	str	r2, [r7, #12]
    3326:	461a      	mov	r2, r3
    3328:	683b      	ldr	r3, [r7, #0]
    332a:	4413      	add	r3, r2
    332c:	223a      	movs	r2, #58	; 0x3a
    332e:	701a      	strb	r2, [r3, #0]
    3330:	687b      	ldr	r3, [r7, #4]
    3332:	881b      	ldrh	r3, [r3, #0]
    3334:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3338:	b2db      	uxtb	r3, r3
    333a:	60bb      	str	r3, [r7, #8]
    333c:	68fb      	ldr	r3, [r7, #12]
    333e:	1c5a      	adds	r2, r3, #1
    3340:	60fa      	str	r2, [r7, #12]
    3342:	461a      	mov	r2, r3
    3344:	683b      	ldr	r3, [r7, #0]
    3346:	4413      	add	r3, r2
    3348:	68ba      	ldr	r2, [r7, #8]
    334a:	492b      	ldr	r1, [pc, #172]	; (33f8 <time_str+0x138>)
    334c:	fba1 1202 	umull	r1, r2, r1, r2
    3350:	08d2      	lsrs	r2, r2, #3
    3352:	b2d2      	uxtb	r2, r2
    3354:	3230      	adds	r2, #48	; 0x30
    3356:	b2d2      	uxtb	r2, r2
    3358:	701a      	strb	r2, [r3, #0]
    335a:	68fb      	ldr	r3, [r7, #12]
    335c:	1c5a      	adds	r2, r3, #1
    335e:	60fa      	str	r2, [r7, #12]
    3360:	461a      	mov	r2, r3
    3362:	683b      	ldr	r3, [r7, #0]
    3364:	1898      	adds	r0, r3, r2
    3366:	68b9      	ldr	r1, [r7, #8]
    3368:	4b23      	ldr	r3, [pc, #140]	; (33f8 <time_str+0x138>)
    336a:	fba3 2301 	umull	r2, r3, r3, r1
    336e:	08da      	lsrs	r2, r3, #3
    3370:	4613      	mov	r3, r2
    3372:	009b      	lsls	r3, r3, #2
    3374:	4413      	add	r3, r2
    3376:	005b      	lsls	r3, r3, #1
    3378:	1aca      	subs	r2, r1, r3
    337a:	b2d3      	uxtb	r3, r2
    337c:	3330      	adds	r3, #48	; 0x30
    337e:	b2db      	uxtb	r3, r3
    3380:	7003      	strb	r3, [r0, #0]
    3382:	68fb      	ldr	r3, [r7, #12]
    3384:	1c5a      	adds	r2, r3, #1
    3386:	60fa      	str	r2, [r7, #12]
    3388:	461a      	mov	r2, r3
    338a:	683b      	ldr	r3, [r7, #0]
    338c:	4413      	add	r3, r2
    338e:	223a      	movs	r2, #58	; 0x3a
    3390:	701a      	strb	r2, [r3, #0]
    3392:	687b      	ldr	r3, [r7, #4]
    3394:	781b      	ldrb	r3, [r3, #0]
    3396:	f3c3 0305 	ubfx	r3, r3, #0, #6
    339a:	b2db      	uxtb	r3, r3
    339c:	60bb      	str	r3, [r7, #8]
    339e:	68fb      	ldr	r3, [r7, #12]
    33a0:	1c5a      	adds	r2, r3, #1
    33a2:	60fa      	str	r2, [r7, #12]
    33a4:	461a      	mov	r2, r3
    33a6:	683b      	ldr	r3, [r7, #0]
    33a8:	4413      	add	r3, r2
    33aa:	68ba      	ldr	r2, [r7, #8]
    33ac:	4912      	ldr	r1, [pc, #72]	; (33f8 <time_str+0x138>)
    33ae:	fba1 1202 	umull	r1, r2, r1, r2
    33b2:	08d2      	lsrs	r2, r2, #3
    33b4:	b2d2      	uxtb	r2, r2
    33b6:	3230      	adds	r2, #48	; 0x30
    33b8:	b2d2      	uxtb	r2, r2
    33ba:	701a      	strb	r2, [r3, #0]
    33bc:	68fb      	ldr	r3, [r7, #12]
    33be:	1c5a      	adds	r2, r3, #1
    33c0:	60fa      	str	r2, [r7, #12]
    33c2:	461a      	mov	r2, r3
    33c4:	683b      	ldr	r3, [r7, #0]
    33c6:	1898      	adds	r0, r3, r2
    33c8:	68b9      	ldr	r1, [r7, #8]
    33ca:	4b0b      	ldr	r3, [pc, #44]	; (33f8 <time_str+0x138>)
    33cc:	fba3 2301 	umull	r2, r3, r3, r1
    33d0:	08da      	lsrs	r2, r3, #3
    33d2:	4613      	mov	r3, r2
    33d4:	009b      	lsls	r3, r3, #2
    33d6:	4413      	add	r3, r2
    33d8:	005b      	lsls	r3, r3, #1
    33da:	1aca      	subs	r2, r1, r3
    33dc:	b2d3      	uxtb	r3, r2
    33de:	3330      	adds	r3, #48	; 0x30
    33e0:	b2db      	uxtb	r3, r3
    33e2:	7003      	strb	r3, [r0, #0]
    33e4:	68fb      	ldr	r3, [r7, #12]
    33e6:	683a      	ldr	r2, [r7, #0]
    33e8:	4413      	add	r3, r2
    33ea:	2200      	movs	r2, #0
    33ec:	701a      	strb	r2, [r3, #0]
    33ee:	bf00      	nop
    33f0:	3714      	adds	r7, #20
    33f2:	46bd      	mov	sp, r7
    33f4:	bc80      	pop	{r7}
    33f6:	4770      	bx	lr
    33f8:	cccccccd 	.word	0xcccccccd

000033fc <get_fattime>:
    33fc:	b580      	push	{r7, lr}
    33fe:	b084      	sub	sp, #16
    3400:	af00      	add	r7, sp, #0
    3402:	463b      	mov	r3, r7
    3404:	4618      	mov	r0, r3
    3406:	f7ff fa69 	bl	28dc <get_date_time>
    340a:	783b      	ldrb	r3, [r7, #0]
    340c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3410:	b2db      	uxtb	r3, r3
    3412:	0fda      	lsrs	r2, r3, #31
    3414:	4413      	add	r3, r2
    3416:	105b      	asrs	r3, r3, #1
    3418:	b2db      	uxtb	r3, r3
    341a:	f003 031f 	and.w	r3, r3, #31
    341e:	b2da      	uxtb	r2, r3
    3420:	7b3b      	ldrb	r3, [r7, #12]
    3422:	f362 0304 	bfi	r3, r2, #0, #5
    3426:	733b      	strb	r3, [r7, #12]
    3428:	883b      	ldrh	r3, [r7, #0]
    342a:	f3c3 1385 	ubfx	r3, r3, #6, #6
    342e:	b2da      	uxtb	r2, r3
    3430:	89bb      	ldrh	r3, [r7, #12]
    3432:	f362 134a 	bfi	r3, r2, #5, #6
    3436:	81bb      	strh	r3, [r7, #12]
    3438:	683b      	ldr	r3, [r7, #0]
    343a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    343e:	b2da      	uxtb	r2, r3
    3440:	7b7b      	ldrb	r3, [r7, #13]
    3442:	f362 03c7 	bfi	r3, r2, #3, #5
    3446:	737b      	strb	r3, [r7, #13]
    3448:	78bb      	ldrb	r3, [r7, #2]
    344a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    344e:	b2da      	uxtb	r2, r3
    3450:	7bbb      	ldrb	r3, [r7, #14]
    3452:	f362 0304 	bfi	r3, r2, #0, #5
    3456:	73bb      	strb	r3, [r7, #14]
    3458:	887b      	ldrh	r3, [r7, #2]
    345a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    345e:	b2da      	uxtb	r2, r3
    3460:	89fb      	ldrh	r3, [r7, #14]
    3462:	f362 1348 	bfi	r3, r2, #5, #4
    3466:	81fb      	strh	r3, [r7, #14]
    3468:	893b      	ldrh	r3, [r7, #8]
    346a:	b2db      	uxtb	r3, r3
    346c:	3344      	adds	r3, #68	; 0x44
    346e:	b2db      	uxtb	r3, r3
    3470:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3474:	b2da      	uxtb	r2, r3
    3476:	7bfb      	ldrb	r3, [r7, #15]
    3478:	f362 0347 	bfi	r3, r2, #1, #7
    347c:	73fb      	strb	r3, [r7, #15]
    347e:	68fb      	ldr	r3, [r7, #12]
    3480:	4618      	mov	r0, r3
    3482:	3710      	adds	r7, #16
    3484:	46bd      	mov	sp, r7
    3486:	bd80      	pop	{r7, pc}

00003488 <RTC_handler>:
    3488:	b480      	push	{r7}
    348a:	b083      	sub	sp, #12
    348c:	af00      	add	r7, sp, #0
    348e:	4b0a      	ldr	r3, [pc, #40]	; (34b8 <RTC_handler+0x30>)
    3490:	685b      	ldr	r3, [r3, #4]
    3492:	f003 0301 	and.w	r3, r3, #1
    3496:	2b00      	cmp	r3, #0
    3498:	d001      	beq.n	349e <RTC_handler+0x16>
    349a:	4b07      	ldr	r3, [pc, #28]	; (34b8 <RTC_handler+0x30>)
    349c:	685b      	ldr	r3, [r3, #4]
    349e:	4b06      	ldr	r3, [pc, #24]	; (34b8 <RTC_handler+0x30>)
    34a0:	685b      	ldr	r3, [r3, #4]
    34a2:	f003 0302 	and.w	r3, r3, #2
    34a6:	2b00      	cmp	r3, #0
    34a8:	d001      	beq.n	34ae <RTC_handler+0x26>
    34aa:	4b03      	ldr	r3, [pc, #12]	; (34b8 <RTC_handler+0x30>)
    34ac:	685b      	ldr	r3, [r3, #4]
    34ae:	bf00      	nop
    34b0:	370c      	adds	r7, #12
    34b2:	46bd      	mov	sp, r7
    34b4:	bc80      	pop	{r7}
    34b6:	4770      	bx	lr
    34b8:	40002800 	.word	0x40002800

000034bc <spi_baudrate>:
    34bc:	b480      	push	{r7}
    34be:	b083      	sub	sp, #12
    34c0:	af00      	add	r7, sp, #0
    34c2:	6078      	str	r0, [r7, #4]
    34c4:	6039      	str	r1, [r7, #0]
    34c6:	687b      	ldr	r3, [r7, #4]
    34c8:	681b      	ldr	r3, [r3, #0]
    34ca:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    34ce:	687b      	ldr	r3, [r7, #4]
    34d0:	601a      	str	r2, [r3, #0]
    34d2:	687b      	ldr	r3, [r7, #4]
    34d4:	681a      	ldr	r2, [r3, #0]
    34d6:	683b      	ldr	r3, [r7, #0]
    34d8:	00db      	lsls	r3, r3, #3
    34da:	431a      	orrs	r2, r3
    34dc:	687b      	ldr	r3, [r7, #4]
    34de:	601a      	str	r2, [r3, #0]
    34e0:	bf00      	nop
    34e2:	370c      	adds	r7, #12
    34e4:	46bd      	mov	sp, r7
    34e6:	bc80      	pop	{r7}
    34e8:	4770      	bx	lr

000034ea <spi_config_port>:
    34ea:	b580      	push	{r7, lr}
    34ec:	b082      	sub	sp, #8
    34ee:	af00      	add	r7, sp, #0
    34f0:	6078      	str	r0, [r7, #4]
    34f2:	6039      	str	r1, [r7, #0]
    34f4:	4a33      	ldr	r2, [pc, #204]	; (35c4 <spi_config_port+0xda>)
    34f6:	4b33      	ldr	r3, [pc, #204]	; (35c4 <spi_config_port+0xda>)
    34f8:	699b      	ldr	r3, [r3, #24]
    34fa:	f043 0301 	orr.w	r3, r3, #1
    34fe:	6193      	str	r3, [r2, #24]
    3500:	687b      	ldr	r3, [r7, #4]
    3502:	4a31      	ldr	r2, [pc, #196]	; (35c8 <spi_config_port+0xde>)
    3504:	4293      	cmp	r3, r2
    3506:	d13e      	bne.n	3586 <spi_config_port+0x9c>
    3508:	683b      	ldr	r3, [r7, #0]
    350a:	2b00      	cmp	r3, #0
    350c:	d11a      	bne.n	3544 <spi_config_port+0x5a>
    350e:	4a2d      	ldr	r2, [pc, #180]	; (35c4 <spi_config_port+0xda>)
    3510:	4b2c      	ldr	r3, [pc, #176]	; (35c4 <spi_config_port+0xda>)
    3512:	699b      	ldr	r3, [r3, #24]
    3514:	f043 0304 	orr.w	r3, r3, #4
    3518:	6193      	str	r3, [r2, #24]
    351a:	2203      	movs	r2, #3
    351c:	2104      	movs	r1, #4
    351e:	482b      	ldr	r0, [pc, #172]	; (35cc <spi_config_port+0xe2>)
    3520:	f7fe f9e9 	bl	18f6 <config_pin>
    3524:	220b      	movs	r2, #11
    3526:	2105      	movs	r1, #5
    3528:	4828      	ldr	r0, [pc, #160]	; (35cc <spi_config_port+0xe2>)
    352a:	f7fe f9e4 	bl	18f6 <config_pin>
    352e:	2204      	movs	r2, #4
    3530:	2106      	movs	r1, #6
    3532:	4826      	ldr	r0, [pc, #152]	; (35cc <spi_config_port+0xe2>)
    3534:	f7fe f9df 	bl	18f6 <config_pin>
    3538:	220b      	movs	r2, #11
    353a:	2107      	movs	r1, #7
    353c:	4823      	ldr	r0, [pc, #140]	; (35cc <spi_config_port+0xe2>)
    353e:	f7fe f9da 	bl	18f6 <config_pin>
    3542:	e03a      	b.n	35ba <spi_config_port+0xd0>
    3544:	4a1f      	ldr	r2, [pc, #124]	; (35c4 <spi_config_port+0xda>)
    3546:	4b1f      	ldr	r3, [pc, #124]	; (35c4 <spi_config_port+0xda>)
    3548:	699b      	ldr	r3, [r3, #24]
    354a:	f043 030d 	orr.w	r3, r3, #13
    354e:	6193      	str	r3, [r2, #24]
    3550:	4a1f      	ldr	r2, [pc, #124]	; (35d0 <spi_config_port+0xe6>)
    3552:	4b1f      	ldr	r3, [pc, #124]	; (35d0 <spi_config_port+0xe6>)
    3554:	685b      	ldr	r3, [r3, #4]
    3556:	f043 0301 	orr.w	r3, r3, #1
    355a:	6053      	str	r3, [r2, #4]
    355c:	2203      	movs	r2, #3
    355e:	210f      	movs	r1, #15
    3560:	481a      	ldr	r0, [pc, #104]	; (35cc <spi_config_port+0xe2>)
    3562:	f7fe f9c8 	bl	18f6 <config_pin>
    3566:	220b      	movs	r2, #11
    3568:	2103      	movs	r1, #3
    356a:	481a      	ldr	r0, [pc, #104]	; (35d4 <spi_config_port+0xea>)
    356c:	f7fe f9c3 	bl	18f6 <config_pin>
    3570:	2204      	movs	r2, #4
    3572:	2104      	movs	r1, #4
    3574:	4817      	ldr	r0, [pc, #92]	; (35d4 <spi_config_port+0xea>)
    3576:	f7fe f9be 	bl	18f6 <config_pin>
    357a:	220b      	movs	r2, #11
    357c:	2105      	movs	r1, #5
    357e:	4815      	ldr	r0, [pc, #84]	; (35d4 <spi_config_port+0xea>)
    3580:	f7fe f9b9 	bl	18f6 <config_pin>
    3584:	e019      	b.n	35ba <spi_config_port+0xd0>
    3586:	4a0f      	ldr	r2, [pc, #60]	; (35c4 <spi_config_port+0xda>)
    3588:	4b0e      	ldr	r3, [pc, #56]	; (35c4 <spi_config_port+0xda>)
    358a:	699b      	ldr	r3, [r3, #24]
    358c:	f043 0308 	orr.w	r3, r3, #8
    3590:	6193      	str	r3, [r2, #24]
    3592:	2203      	movs	r2, #3
    3594:	2102      	movs	r1, #2
    3596:	480f      	ldr	r0, [pc, #60]	; (35d4 <spi_config_port+0xea>)
    3598:	f7fe f9ad 	bl	18f6 <config_pin>
    359c:	220b      	movs	r2, #11
    359e:	210d      	movs	r1, #13
    35a0:	480c      	ldr	r0, [pc, #48]	; (35d4 <spi_config_port+0xea>)
    35a2:	f7fe f9a8 	bl	18f6 <config_pin>
    35a6:	2204      	movs	r2, #4
    35a8:	210e      	movs	r1, #14
    35aa:	480a      	ldr	r0, [pc, #40]	; (35d4 <spi_config_port+0xea>)
    35ac:	f7fe f9a3 	bl	18f6 <config_pin>
    35b0:	220b      	movs	r2, #11
    35b2:	210f      	movs	r1, #15
    35b4:	4807      	ldr	r0, [pc, #28]	; (35d4 <spi_config_port+0xea>)
    35b6:	f7fe f99e 	bl	18f6 <config_pin>
    35ba:	bf00      	nop
    35bc:	3708      	adds	r7, #8
    35be:	46bd      	mov	sp, r7
    35c0:	bd80      	pop	{r7, pc}
    35c2:	bf00      	nop
    35c4:	40021000 	.word	0x40021000
    35c8:	40013000 	.word	0x40013000
    35cc:	40010800 	.word	0x40010800
    35d0:	40010000 	.word	0x40010000
    35d4:	40010c00 	.word	0x40010c00

000035d8 <spi_init>:
    35d8:	b580      	push	{r7, lr}
    35da:	b084      	sub	sp, #16
    35dc:	af00      	add	r7, sp, #0
    35de:	60f8      	str	r0, [r7, #12]
    35e0:	60b9      	str	r1, [r7, #8]
    35e2:	607a      	str	r2, [r7, #4]
    35e4:	603b      	str	r3, [r7, #0]
    35e6:	6839      	ldr	r1, [r7, #0]
    35e8:	68f8      	ldr	r0, [r7, #12]
    35ea:	f7ff ff7e 	bl	34ea <spi_config_port>
    35ee:	68fb      	ldr	r3, [r7, #12]
    35f0:	4a10      	ldr	r2, [pc, #64]	; (3634 <spi_init+0x5c>)
    35f2:	4293      	cmp	r3, r2
    35f4:	d106      	bne.n	3604 <spi_init+0x2c>
    35f6:	4a10      	ldr	r2, [pc, #64]	; (3638 <spi_init+0x60>)
    35f8:	4b0f      	ldr	r3, [pc, #60]	; (3638 <spi_init+0x60>)
    35fa:	699b      	ldr	r3, [r3, #24]
    35fc:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    3600:	6193      	str	r3, [r2, #24]
    3602:	e005      	b.n	3610 <spi_init+0x38>
    3604:	4a0c      	ldr	r2, [pc, #48]	; (3638 <spi_init+0x60>)
    3606:	4b0c      	ldr	r3, [pc, #48]	; (3638 <spi_init+0x60>)
    3608:	69db      	ldr	r3, [r3, #28]
    360a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    360e:	61d3      	str	r3, [r2, #28]
    3610:	68fb      	ldr	r3, [r7, #12]
    3612:	687a      	ldr	r2, [r7, #4]
    3614:	601a      	str	r2, [r3, #0]
    3616:	68b9      	ldr	r1, [r7, #8]
    3618:	68f8      	ldr	r0, [r7, #12]
    361a:	f7ff ff4f 	bl	34bc <spi_baudrate>
    361e:	68fb      	ldr	r3, [r7, #12]
    3620:	681b      	ldr	r3, [r3, #0]
    3622:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    3626:	68fb      	ldr	r3, [r7, #12]
    3628:	601a      	str	r2, [r3, #0]
    362a:	bf00      	nop
    362c:	3710      	adds	r7, #16
    362e:	46bd      	mov	sp, r7
    3630:	bd80      	pop	{r7, pc}
    3632:	bf00      	nop
    3634:	40013000 	.word	0x40013000
    3638:	40021000 	.word	0x40021000

0000363c <spi_send>:
    363c:	b480      	push	{r7}
    363e:	b085      	sub	sp, #20
    3640:	af00      	add	r7, sp, #0
    3642:	6078      	str	r0, [r7, #4]
    3644:	460b      	mov	r3, r1
    3646:	70fb      	strb	r3, [r7, #3]
    3648:	bf00      	nop
    364a:	687b      	ldr	r3, [r7, #4]
    364c:	689b      	ldr	r3, [r3, #8]
    364e:	f003 0302 	and.w	r3, r3, #2
    3652:	2b00      	cmp	r3, #0
    3654:	d0f9      	beq.n	364a <spi_send+0xe>
    3656:	78fa      	ldrb	r2, [r7, #3]
    3658:	687b      	ldr	r3, [r7, #4]
    365a:	60da      	str	r2, [r3, #12]
    365c:	bf00      	nop
    365e:	687b      	ldr	r3, [r7, #4]
    3660:	689b      	ldr	r3, [r3, #8]
    3662:	f003 0301 	and.w	r3, r3, #1
    3666:	2b00      	cmp	r3, #0
    3668:	d0f9      	beq.n	365e <spi_send+0x22>
    366a:	687b      	ldr	r3, [r7, #4]
    366c:	68db      	ldr	r3, [r3, #12]
    366e:	73fb      	strb	r3, [r7, #15]
    3670:	bf00      	nop
    3672:	3714      	adds	r7, #20
    3674:	46bd      	mov	sp, r7
    3676:	bc80      	pop	{r7}
    3678:	4770      	bx	lr

0000367a <spi_receive>:
    367a:	b480      	push	{r7}
    367c:	b085      	sub	sp, #20
    367e:	af00      	add	r7, sp, #0
    3680:	6078      	str	r0, [r7, #4]
    3682:	bf00      	nop
    3684:	687b      	ldr	r3, [r7, #4]
    3686:	689b      	ldr	r3, [r3, #8]
    3688:	f003 0302 	and.w	r3, r3, #2
    368c:	2b00      	cmp	r3, #0
    368e:	d0f9      	beq.n	3684 <spi_receive+0xa>
    3690:	687b      	ldr	r3, [r7, #4]
    3692:	22ff      	movs	r2, #255	; 0xff
    3694:	60da      	str	r2, [r3, #12]
    3696:	bf00      	nop
    3698:	687b      	ldr	r3, [r7, #4]
    369a:	689b      	ldr	r3, [r3, #8]
    369c:	f003 0301 	and.w	r3, r3, #1
    36a0:	2b00      	cmp	r3, #0
    36a2:	d0f9      	beq.n	3698 <spi_receive+0x1e>
    36a4:	687b      	ldr	r3, [r7, #4]
    36a6:	68db      	ldr	r3, [r3, #12]
    36a8:	73fb      	strb	r3, [r7, #15]
    36aa:	7bfb      	ldrb	r3, [r7, #15]
    36ac:	4618      	mov	r0, r3
    36ae:	3714      	adds	r7, #20
    36b0:	46bd      	mov	sp, r7
    36b2:	bc80      	pop	{r7}
    36b4:	4770      	bx	lr

000036b6 <spi_send_block>:
    36b6:	b480      	push	{r7}
    36b8:	b087      	sub	sp, #28
    36ba:	af00      	add	r7, sp, #0
    36bc:	60f8      	str	r0, [r7, #12]
    36be:	60b9      	str	r1, [r7, #8]
    36c0:	607a      	str	r2, [r7, #4]
    36c2:	e010      	b.n	36e6 <spi_send_block+0x30>
    36c4:	68bb      	ldr	r3, [r7, #8]
    36c6:	1c5a      	adds	r2, r3, #1
    36c8:	60ba      	str	r2, [r7, #8]
    36ca:	781b      	ldrb	r3, [r3, #0]
    36cc:	461a      	mov	r2, r3
    36ce:	68fb      	ldr	r3, [r7, #12]
    36d0:	60da      	str	r2, [r3, #12]
    36d2:	bf00      	nop
    36d4:	68fb      	ldr	r3, [r7, #12]
    36d6:	689b      	ldr	r3, [r3, #8]
    36d8:	f003 0302 	and.w	r3, r3, #2
    36dc:	2b00      	cmp	r3, #0
    36de:	d0f9      	beq.n	36d4 <spi_send_block+0x1e>
    36e0:	687b      	ldr	r3, [r7, #4]
    36e2:	3b01      	subs	r3, #1
    36e4:	607b      	str	r3, [r7, #4]
    36e6:	687b      	ldr	r3, [r7, #4]
    36e8:	2b00      	cmp	r3, #0
    36ea:	d1eb      	bne.n	36c4 <spi_send_block+0xe>
    36ec:	bf00      	nop
    36ee:	68fb      	ldr	r3, [r7, #12]
    36f0:	689b      	ldr	r3, [r3, #8]
    36f2:	f003 0380 	and.w	r3, r3, #128	; 0x80
    36f6:	2b00      	cmp	r3, #0
    36f8:	d1f9      	bne.n	36ee <spi_send_block+0x38>
    36fa:	68fb      	ldr	r3, [r7, #12]
    36fc:	68db      	ldr	r3, [r3, #12]
    36fe:	75fb      	strb	r3, [r7, #23]
    3700:	bf00      	nop
    3702:	371c      	adds	r7, #28
    3704:	46bd      	mov	sp, r7
    3706:	bc80      	pop	{r7}
    3708:	4770      	bx	lr

0000370a <spi_receive_block>:
    370a:	b480      	push	{r7}
    370c:	b085      	sub	sp, #20
    370e:	af00      	add	r7, sp, #0
    3710:	60f8      	str	r0, [r7, #12]
    3712:	60b9      	str	r1, [r7, #8]
    3714:	607a      	str	r2, [r7, #4]
    3716:	e013      	b.n	3740 <spi_receive_block+0x36>
    3718:	68fb      	ldr	r3, [r7, #12]
    371a:	2200      	movs	r2, #0
    371c:	60da      	str	r2, [r3, #12]
    371e:	bf00      	nop
    3720:	68fb      	ldr	r3, [r7, #12]
    3722:	689b      	ldr	r3, [r3, #8]
    3724:	f003 0301 	and.w	r3, r3, #1
    3728:	2b00      	cmp	r3, #0
    372a:	d0f9      	beq.n	3720 <spi_receive_block+0x16>
    372c:	68bb      	ldr	r3, [r7, #8]
    372e:	1c5a      	adds	r2, r3, #1
    3730:	60ba      	str	r2, [r7, #8]
    3732:	68fa      	ldr	r2, [r7, #12]
    3734:	68d2      	ldr	r2, [r2, #12]
    3736:	b2d2      	uxtb	r2, r2
    3738:	701a      	strb	r2, [r3, #0]
    373a:	687b      	ldr	r3, [r7, #4]
    373c:	3b01      	subs	r3, #1
    373e:	607b      	str	r3, [r7, #4]
    3740:	687b      	ldr	r3, [r7, #4]
    3742:	2b00      	cmp	r3, #0
    3744:	d1e8      	bne.n	3718 <spi_receive_block+0xe>
    3746:	bf00      	nop
    3748:	3714      	adds	r7, #20
    374a:	46bd      	mov	sp, r7
    374c:	bc80      	pop	{r7}
    374e:	4770      	bx	lr

00003750 <reset_mcu>:
    3750:	4b01      	ldr	r3, [pc, #4]	; (3758 <reset_mcu+0x8>)
    3752:	4a02      	ldr	r2, [pc, #8]	; (375c <reset_mcu+0xc>)
    3754:	601a      	str	r2, [r3, #0]
    3756:	bf00      	nop
    3758:	e000ed0c 	.word	0xe000ed0c
    375c:	05fa0004 	.word	0x05fa0004

00003760 <print_fault>:
    3760:	b580      	push	{r7, lr}
    3762:	b082      	sub	sp, #8
    3764:	af00      	add	r7, sp, #0
    3766:	6078      	str	r0, [r7, #4]
    3768:	6039      	str	r1, [r7, #0]
    376a:	6878      	ldr	r0, [r7, #4]
    376c:	f000 f9ea 	bl	3b44 <print>
    3770:	4818      	ldr	r0, [pc, #96]	; (37d4 <print_fault+0x74>)
    3772:	f000 f9e7 	bl	3b44 <print>
    3776:	683b      	ldr	r3, [r7, #0]
    3778:	2b00      	cmp	r3, #0
    377a:	d004      	beq.n	3786 <print_fault+0x26>
    377c:	683b      	ldr	r3, [r7, #0]
    377e:	2110      	movs	r1, #16
    3780:	4618      	mov	r0, r3
    3782:	f000 fa0f 	bl	3ba4 <print_int>
    3786:	200d      	movs	r0, #13
    3788:	f000 f924 	bl	39d4 <put_char>
    378c:	4812      	ldr	r0, [pc, #72]	; (37d8 <print_fault+0x78>)
    378e:	f000 f9d9 	bl	3b44 <print>
    3792:	4b12      	ldr	r3, [pc, #72]	; (37dc <print_fault+0x7c>)
    3794:	681b      	ldr	r3, [r3, #0]
    3796:	f3c3 430f 	ubfx	r3, r3, #16, #16
    379a:	b29b      	uxth	r3, r3
    379c:	2110      	movs	r1, #16
    379e:	4618      	mov	r0, r3
    37a0:	f000 fa00 	bl	3ba4 <print_int>
    37a4:	480e      	ldr	r0, [pc, #56]	; (37e0 <print_fault+0x80>)
    37a6:	f000 f9cd 	bl	3b44 <print>
    37aa:	4b0c      	ldr	r3, [pc, #48]	; (37dc <print_fault+0x7c>)
    37ac:	681b      	ldr	r3, [r3, #0]
    37ae:	f3c3 2307 	ubfx	r3, r3, #8, #8
    37b2:	b2db      	uxtb	r3, r3
    37b4:	2110      	movs	r1, #16
    37b6:	4618      	mov	r0, r3
    37b8:	f000 f9f4 	bl	3ba4 <print_int>
    37bc:	4809      	ldr	r0, [pc, #36]	; (37e4 <print_fault+0x84>)
    37be:	f000 f9c1 	bl	3b44 <print>
    37c2:	4b06      	ldr	r3, [pc, #24]	; (37dc <print_fault+0x7c>)
    37c4:	681b      	ldr	r3, [r3, #0]
    37c6:	b2db      	uxtb	r3, r3
    37c8:	2110      	movs	r1, #16
    37ca:	4618      	mov	r0, r3
    37cc:	f000 f9ea 	bl	3ba4 <print_int>
    37d0:	e7fe      	b.n	37d0 <print_fault+0x70>
    37d2:	bf00      	nop
    37d4:	000049e4 	.word	0x000049e4
    37d8:	000049f4 	.word	0x000049f4
    37dc:	e000ed28 	.word	0xe000ed28
    37e0:	000049fc 	.word	0x000049fc
    37e4:	00004a04 	.word	0x00004a04

000037e8 <config_systicks>:
    37e8:	b580      	push	{r7, lr}
    37ea:	af00      	add	r7, sp, #0
    37ec:	2109      	movs	r1, #9
    37ee:	f06f 000e 	mvn.w	r0, #14
    37f2:	f7fe fff3 	bl	27dc <set_int_priority>
    37f6:	4b04      	ldr	r3, [pc, #16]	; (3808 <config_systicks+0x20>)
    37f8:	f242 22f3 	movw	r2, #8947	; 0x22f3
    37fc:	601a      	str	r2, [r3, #0]
    37fe:	4b03      	ldr	r3, [pc, #12]	; (380c <config_systicks+0x24>)
    3800:	2203      	movs	r2, #3
    3802:	601a      	str	r2, [r3, #0]
    3804:	bf00      	nop
    3806:	bd80      	pop	{r7, pc}
    3808:	e000e014 	.word	0xe000e014
    380c:	e000e010 	.word	0xe000e010

00003810 <pause>:
    3810:	b480      	push	{r7}
    3812:	b083      	sub	sp, #12
    3814:	af00      	add	r7, sp, #0
    3816:	6078      	str	r0, [r7, #4]
    3818:	4a06      	ldr	r2, [pc, #24]	; (3834 <pause+0x24>)
    381a:	687b      	ldr	r3, [r7, #4]
    381c:	6013      	str	r3, [r2, #0]
    381e:	bf00      	nop
    3820:	4b04      	ldr	r3, [pc, #16]	; (3834 <pause+0x24>)
    3822:	681b      	ldr	r3, [r3, #0]
    3824:	2b00      	cmp	r3, #0
    3826:	d1fb      	bne.n	3820 <pause+0x10>
    3828:	bf00      	nop
    382a:	370c      	adds	r7, #12
    382c:	46bd      	mov	sp, r7
    382e:	bc80      	pop	{r7}
    3830:	4770      	bx	lr
    3832:	bf00      	nop
    3834:	200004fc 	.word	0x200004fc

00003838 <STK_handler>:
    3838:	b480      	push	{r7}
    383a:	af00      	add	r7, sp, #0
    383c:	4b08      	ldr	r3, [pc, #32]	; (3860 <STK_handler+0x28>)
    383e:	681b      	ldr	r3, [r3, #0]
    3840:	3301      	adds	r3, #1
    3842:	4a07      	ldr	r2, [pc, #28]	; (3860 <STK_handler+0x28>)
    3844:	6013      	str	r3, [r2, #0]
    3846:	4b07      	ldr	r3, [pc, #28]	; (3864 <STK_handler+0x2c>)
    3848:	681b      	ldr	r3, [r3, #0]
    384a:	2b00      	cmp	r3, #0
    384c:	d004      	beq.n	3858 <STK_handler+0x20>
    384e:	4b05      	ldr	r3, [pc, #20]	; (3864 <STK_handler+0x2c>)
    3850:	681b      	ldr	r3, [r3, #0]
    3852:	3b01      	subs	r3, #1
    3854:	4a03      	ldr	r2, [pc, #12]	; (3864 <STK_handler+0x2c>)
    3856:	6013      	str	r3, [r2, #0]
    3858:	bf00      	nop
    385a:	46bd      	mov	sp, r7
    385c:	bc80      	pop	{r7}
    385e:	4770      	bx	lr
    3860:	200004f8 	.word	0x200004f8
    3864:	200004fc 	.word	0x200004fc

00003868 <font_color>:
    3868:	b480      	push	{r7}
    386a:	b083      	sub	sp, #12
    386c:	af00      	add	r7, sp, #0
    386e:	4603      	mov	r3, r0
    3870:	71fb      	strb	r3, [r7, #7]
    3872:	79fb      	ldrb	r3, [r7, #7]
    3874:	f003 030f 	and.w	r3, r3, #15
    3878:	b2da      	uxtb	r2, r3
    387a:	4b03      	ldr	r3, [pc, #12]	; (3888 <font_color+0x20>)
    387c:	705a      	strb	r2, [r3, #1]
    387e:	bf00      	nop
    3880:	370c      	adds	r7, #12
    3882:	46bd      	mov	sp, r7
    3884:	bc80      	pop	{r7}
    3886:	4770      	bx	lr
    3888:	20000068 	.word	0x20000068

0000388c <bg_color>:
    388c:	b480      	push	{r7}
    388e:	b083      	sub	sp, #12
    3890:	af00      	add	r7, sp, #0
    3892:	4603      	mov	r3, r0
    3894:	71fb      	strb	r3, [r7, #7]
    3896:	79fb      	ldrb	r3, [r7, #7]
    3898:	f003 030f 	and.w	r3, r3, #15
    389c:	b2da      	uxtb	r2, r3
    389e:	4b03      	ldr	r3, [pc, #12]	; (38ac <bg_color+0x20>)
    38a0:	701a      	strb	r2, [r3, #0]
    38a2:	bf00      	nop
    38a4:	370c      	adds	r7, #12
    38a6:	46bd      	mov	sp, r7
    38a8:	bc80      	pop	{r7}
    38aa:	4770      	bx	lr
    38ac:	20000068 	.word	0x20000068

000038b0 <select_font>:
    38b0:	b480      	push	{r7}
    38b2:	b083      	sub	sp, #12
    38b4:	af00      	add	r7, sp, #0
    38b6:	4603      	mov	r3, r0
    38b8:	71fb      	strb	r3, [r7, #7]
    38ba:	4a04      	ldr	r2, [pc, #16]	; (38cc <select_font+0x1c>)
    38bc:	79fb      	ldrb	r3, [r7, #7]
    38be:	7013      	strb	r3, [r2, #0]
    38c0:	bf00      	nop
    38c2:	370c      	adds	r7, #12
    38c4:	46bd      	mov	sp, r7
    38c6:	bc80      	pop	{r7}
    38c8:	4770      	bx	lr
    38ca:	bf00      	nop
    38cc:	20000064 	.word	0x20000064

000038d0 <new_line>:
    38d0:	b580      	push	{r7, lr}
    38d2:	af00      	add	r7, sp, #0
    38d4:	4b1e      	ldr	r3, [pc, #120]	; (3950 <new_line+0x80>)
    38d6:	2200      	movs	r2, #0
    38d8:	701a      	strb	r2, [r3, #0]
    38da:	4b1e      	ldr	r3, [pc, #120]	; (3954 <new_line+0x84>)
    38dc:	781b      	ldrb	r3, [r3, #0]
    38de:	2b01      	cmp	r3, #1
    38e0:	d014      	beq.n	390c <new_line+0x3c>
    38e2:	2b02      	cmp	r3, #2
    38e4:	d022      	beq.n	392c <new_line+0x5c>
    38e6:	2b00      	cmp	r3, #0
    38e8:	d000      	beq.n	38ec <new_line+0x1c>
    38ea:	e02f      	b.n	394c <new_line+0x7c>
    38ec:	4b1a      	ldr	r3, [pc, #104]	; (3958 <new_line+0x88>)
    38ee:	781b      	ldrb	r3, [r3, #0]
    38f0:	3306      	adds	r3, #6
    38f2:	2b6b      	cmp	r3, #107	; 0x6b
    38f4:	dc06      	bgt.n	3904 <new_line+0x34>
    38f6:	4b18      	ldr	r3, [pc, #96]	; (3958 <new_line+0x88>)
    38f8:	781b      	ldrb	r3, [r3, #0]
    38fa:	3306      	adds	r3, #6
    38fc:	b2da      	uxtb	r2, r3
    38fe:	4b16      	ldr	r3, [pc, #88]	; (3958 <new_line+0x88>)
    3900:	701a      	strb	r2, [r3, #0]
    3902:	e023      	b.n	394c <new_line+0x7c>
    3904:	2006      	movs	r0, #6
    3906:	f7fe f9cf 	bl	1ca8 <gfx_scroll_up>
    390a:	e01f      	b.n	394c <new_line+0x7c>
    390c:	4b12      	ldr	r3, [pc, #72]	; (3958 <new_line+0x88>)
    390e:	781b      	ldrb	r3, [r3, #0]
    3910:	330a      	adds	r3, #10
    3912:	2b67      	cmp	r3, #103	; 0x67
    3914:	dc06      	bgt.n	3924 <new_line+0x54>
    3916:	4b10      	ldr	r3, [pc, #64]	; (3958 <new_line+0x88>)
    3918:	781b      	ldrb	r3, [r3, #0]
    391a:	330a      	adds	r3, #10
    391c:	b2da      	uxtb	r2, r3
    391e:	4b0e      	ldr	r3, [pc, #56]	; (3958 <new_line+0x88>)
    3920:	701a      	strb	r2, [r3, #0]
    3922:	e013      	b.n	394c <new_line+0x7c>
    3924:	200a      	movs	r0, #10
    3926:	f7fe f9bf 	bl	1ca8 <gfx_scroll_up>
    392a:	e00f      	b.n	394c <new_line+0x7c>
    392c:	4b0a      	ldr	r3, [pc, #40]	; (3958 <new_line+0x88>)
    392e:	781b      	ldrb	r3, [r3, #0]
    3930:	3308      	adds	r3, #8
    3932:	2b69      	cmp	r3, #105	; 0x69
    3934:	dc06      	bgt.n	3944 <new_line+0x74>
    3936:	4b08      	ldr	r3, [pc, #32]	; (3958 <new_line+0x88>)
    3938:	781b      	ldrb	r3, [r3, #0]
    393a:	3308      	adds	r3, #8
    393c:	b2da      	uxtb	r2, r3
    393e:	4b06      	ldr	r3, [pc, #24]	; (3958 <new_line+0x88>)
    3940:	701a      	strb	r2, [r3, #0]
    3942:	e002      	b.n	394a <new_line+0x7a>
    3944:	2008      	movs	r0, #8
    3946:	f7fe f9af 	bl	1ca8 <gfx_scroll_up>
    394a:	bf00      	nop
    394c:	bf00      	nop
    394e:	bd80      	pop	{r7, pc}
    3950:	20000500 	.word	0x20000500
    3954:	20000064 	.word	0x20000064
    3958:	20000501 	.word	0x20000501

0000395c <draw_char>:
    395c:	b5b0      	push	{r4, r5, r7, lr}
    395e:	b086      	sub	sp, #24
    3960:	af00      	add	r7, sp, #0
    3962:	60f8      	str	r0, [r7, #12]
    3964:	60b9      	str	r1, [r7, #8]
    3966:	607a      	str	r2, [r7, #4]
    3968:	603b      	str	r3, [r7, #0]
    396a:	68bc      	ldr	r4, [r7, #8]
    396c:	e026      	b.n	39bc <draw_char+0x60>
    396e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3970:	1c5a      	adds	r2, r3, #1
    3972:	62ba      	str	r2, [r7, #40]	; 0x28
    3974:	781b      	ldrb	r3, [r3, #0]
    3976:	757b      	strb	r3, [r7, #21]
    3978:	2380      	movs	r3, #128	; 0x80
    397a:	75bb      	strb	r3, [r7, #22]
    397c:	68fd      	ldr	r5, [r7, #12]
    397e:	e017      	b.n	39b0 <draw_char+0x54>
    3980:	7d7a      	ldrb	r2, [r7, #21]
    3982:	7dbb      	ldrb	r3, [r7, #22]
    3984:	4013      	ands	r3, r2
    3986:	753b      	strb	r3, [r7, #20]
    3988:	7d3b      	ldrb	r3, [r7, #20]
    398a:	2b00      	cmp	r3, #0
    398c:	d003      	beq.n	3996 <draw_char+0x3a>
    398e:	4b10      	ldr	r3, [pc, #64]	; (39d0 <draw_char+0x74>)
    3990:	785b      	ldrb	r3, [r3, #1]
    3992:	75fb      	strb	r3, [r7, #23]
    3994:	e002      	b.n	399c <draw_char+0x40>
    3996:	4b0e      	ldr	r3, [pc, #56]	; (39d0 <draw_char+0x74>)
    3998:	781b      	ldrb	r3, [r3, #0]
    399a:	75fb      	strb	r3, [r7, #23]
    399c:	7dfb      	ldrb	r3, [r7, #23]
    399e:	461a      	mov	r2, r3
    39a0:	4621      	mov	r1, r4
    39a2:	4628      	mov	r0, r5
    39a4:	f7fe f896 	bl	1ad4 <gfx_plot>
    39a8:	7dbb      	ldrb	r3, [r7, #22]
    39aa:	085b      	lsrs	r3, r3, #1
    39ac:	75bb      	strb	r3, [r7, #22]
    39ae:	3501      	adds	r5, #1
    39b0:	68fa      	ldr	r2, [r7, #12]
    39b2:	687b      	ldr	r3, [r7, #4]
    39b4:	4413      	add	r3, r2
    39b6:	42ab      	cmp	r3, r5
    39b8:	dce2      	bgt.n	3980 <draw_char+0x24>
    39ba:	3401      	adds	r4, #1
    39bc:	68ba      	ldr	r2, [r7, #8]
    39be:	683b      	ldr	r3, [r7, #0]
    39c0:	4413      	add	r3, r2
    39c2:	42a3      	cmp	r3, r4
    39c4:	dcd3      	bgt.n	396e <draw_char+0x12>
    39c6:	bf00      	nop
    39c8:	3718      	adds	r7, #24
    39ca:	46bd      	mov	sp, r7
    39cc:	bdb0      	pop	{r4, r5, r7, pc}
    39ce:	bf00      	nop
    39d0:	20000068 	.word	0x20000068

000039d4 <put_char>:
    39d4:	b580      	push	{r7, lr}
    39d6:	b084      	sub	sp, #16
    39d8:	af02      	add	r7, sp, #8
    39da:	4603      	mov	r3, r0
    39dc:	71fb      	strb	r3, [r7, #7]
    39de:	4b3d      	ldr	r3, [pc, #244]	; (3ad4 <put_char+0x100>)
    39e0:	781b      	ldrb	r3, [r3, #0]
    39e2:	2b01      	cmp	r3, #1
    39e4:	d027      	beq.n	3a36 <put_char+0x62>
    39e6:	2b02      	cmp	r3, #2
    39e8:	d048      	beq.n	3a7c <put_char+0xa8>
    39ea:	2b00      	cmp	r3, #0
    39ec:	d000      	beq.n	39f0 <put_char+0x1c>
    39ee:	e06d      	b.n	3acc <put_char+0xf8>
    39f0:	79fb      	ldrb	r3, [r7, #7]
    39f2:	2b0f      	cmp	r3, #15
    39f4:	d865      	bhi.n	3ac2 <put_char+0xee>
    39f6:	4b38      	ldr	r3, [pc, #224]	; (3ad8 <put_char+0x104>)
    39f8:	781b      	ldrb	r3, [r3, #0]
    39fa:	4618      	mov	r0, r3
    39fc:	4b37      	ldr	r3, [pc, #220]	; (3adc <put_char+0x108>)
    39fe:	781b      	ldrb	r3, [r3, #0]
    3a00:	4619      	mov	r1, r3
    3a02:	79fa      	ldrb	r2, [r7, #7]
    3a04:	4613      	mov	r3, r2
    3a06:	005b      	lsls	r3, r3, #1
    3a08:	4413      	add	r3, r2
    3a0a:	005b      	lsls	r3, r3, #1
    3a0c:	461a      	mov	r2, r3
    3a0e:	4b34      	ldr	r3, [pc, #208]	; (3ae0 <put_char+0x10c>)
    3a10:	4413      	add	r3, r2
    3a12:	9300      	str	r3, [sp, #0]
    3a14:	2306      	movs	r3, #6
    3a16:	2204      	movs	r2, #4
    3a18:	f7ff ffa0 	bl	395c <draw_char>
    3a1c:	4b2e      	ldr	r3, [pc, #184]	; (3ad8 <put_char+0x104>)
    3a1e:	781b      	ldrb	r3, [r3, #0]
    3a20:	3304      	adds	r3, #4
    3a22:	b2da      	uxtb	r2, r3
    3a24:	4b2c      	ldr	r3, [pc, #176]	; (3ad8 <put_char+0x104>)
    3a26:	701a      	strb	r2, [r3, #0]
    3a28:	4b2b      	ldr	r3, [pc, #172]	; (3ad8 <put_char+0x104>)
    3a2a:	781b      	ldrb	r3, [r3, #0]
    3a2c:	2bb1      	cmp	r3, #177	; 0xb1
    3a2e:	d948      	bls.n	3ac2 <put_char+0xee>
    3a30:	f7ff ff4e 	bl	38d0 <new_line>
    3a34:	e045      	b.n	3ac2 <put_char+0xee>
    3a36:	79fb      	ldrb	r3, [r7, #7]
    3a38:	2b0f      	cmp	r3, #15
    3a3a:	d844      	bhi.n	3ac6 <put_char+0xf2>
    3a3c:	4b26      	ldr	r3, [pc, #152]	; (3ad8 <put_char+0x104>)
    3a3e:	781b      	ldrb	r3, [r3, #0]
    3a40:	4618      	mov	r0, r3
    3a42:	4b26      	ldr	r3, [pc, #152]	; (3adc <put_char+0x108>)
    3a44:	781b      	ldrb	r3, [r3, #0]
    3a46:	4619      	mov	r1, r3
    3a48:	79fa      	ldrb	r2, [r7, #7]
    3a4a:	4613      	mov	r3, r2
    3a4c:	009b      	lsls	r3, r3, #2
    3a4e:	4413      	add	r3, r2
    3a50:	005b      	lsls	r3, r3, #1
    3a52:	461a      	mov	r2, r3
    3a54:	4b23      	ldr	r3, [pc, #140]	; (3ae4 <put_char+0x110>)
    3a56:	4413      	add	r3, r2
    3a58:	9300      	str	r3, [sp, #0]
    3a5a:	230a      	movs	r3, #10
    3a5c:	2208      	movs	r2, #8
    3a5e:	f7ff ff7d 	bl	395c <draw_char>
    3a62:	4b1d      	ldr	r3, [pc, #116]	; (3ad8 <put_char+0x104>)
    3a64:	781b      	ldrb	r3, [r3, #0]
    3a66:	3308      	adds	r3, #8
    3a68:	b2da      	uxtb	r2, r3
    3a6a:	4b1b      	ldr	r3, [pc, #108]	; (3ad8 <put_char+0x104>)
    3a6c:	701a      	strb	r2, [r3, #0]
    3a6e:	4b1a      	ldr	r3, [pc, #104]	; (3ad8 <put_char+0x104>)
    3a70:	781b      	ldrb	r3, [r3, #0]
    3a72:	2bad      	cmp	r3, #173	; 0xad
    3a74:	d927      	bls.n	3ac6 <put_char+0xf2>
    3a76:	f7ff ff2b 	bl	38d0 <new_line>
    3a7a:	e024      	b.n	3ac6 <put_char+0xf2>
    3a7c:	79fb      	ldrb	r3, [r7, #7]
    3a7e:	2b1f      	cmp	r3, #31
    3a80:	d923      	bls.n	3aca <put_char+0xf6>
    3a82:	79fb      	ldrb	r3, [r7, #7]
    3a84:	2b84      	cmp	r3, #132	; 0x84
    3a86:	d820      	bhi.n	3aca <put_char+0xf6>
    3a88:	4b13      	ldr	r3, [pc, #76]	; (3ad8 <put_char+0x104>)
    3a8a:	781b      	ldrb	r3, [r3, #0]
    3a8c:	4618      	mov	r0, r3
    3a8e:	4b13      	ldr	r3, [pc, #76]	; (3adc <put_char+0x108>)
    3a90:	781b      	ldrb	r3, [r3, #0]
    3a92:	4619      	mov	r1, r3
    3a94:	79fb      	ldrb	r3, [r7, #7]
    3a96:	3b20      	subs	r3, #32
    3a98:	00db      	lsls	r3, r3, #3
    3a9a:	4a13      	ldr	r2, [pc, #76]	; (3ae8 <put_char+0x114>)
    3a9c:	4413      	add	r3, r2
    3a9e:	9300      	str	r3, [sp, #0]
    3aa0:	2308      	movs	r3, #8
    3aa2:	2206      	movs	r2, #6
    3aa4:	f7ff ff5a 	bl	395c <draw_char>
    3aa8:	4b0b      	ldr	r3, [pc, #44]	; (3ad8 <put_char+0x104>)
    3aaa:	781b      	ldrb	r3, [r3, #0]
    3aac:	3306      	adds	r3, #6
    3aae:	b2da      	uxtb	r2, r3
    3ab0:	4b09      	ldr	r3, [pc, #36]	; (3ad8 <put_char+0x104>)
    3ab2:	701a      	strb	r2, [r3, #0]
    3ab4:	4b08      	ldr	r3, [pc, #32]	; (3ad8 <put_char+0x104>)
    3ab6:	781b      	ldrb	r3, [r3, #0]
    3ab8:	2baf      	cmp	r3, #175	; 0xaf
    3aba:	d906      	bls.n	3aca <put_char+0xf6>
    3abc:	f7ff ff08 	bl	38d0 <new_line>
    3ac0:	e003      	b.n	3aca <put_char+0xf6>
    3ac2:	bf00      	nop
    3ac4:	e002      	b.n	3acc <put_char+0xf8>
    3ac6:	bf00      	nop
    3ac8:	e000      	b.n	3acc <put_char+0xf8>
    3aca:	bf00      	nop
    3acc:	bf00      	nop
    3ace:	3708      	adds	r7, #8
    3ad0:	46bd      	mov	sp, r7
    3ad2:	bd80      	pop	{r7, pc}
    3ad4:	20000064 	.word	0x20000064
    3ad8:	20000500 	.word	0x20000500
    3adc:	20000501 	.word	0x20000501
    3ae0:	00004438 	.word	0x00004438
    3ae4:	00004498 	.word	0x00004498
    3ae8:	00004538 	.word	0x00004538

00003aec <set_cursor>:
    3aec:	b480      	push	{r7}
    3aee:	b083      	sub	sp, #12
    3af0:	af00      	add	r7, sp, #0
    3af2:	4603      	mov	r3, r0
    3af4:	460a      	mov	r2, r1
    3af6:	71fb      	strb	r3, [r7, #7]
    3af8:	4613      	mov	r3, r2
    3afa:	71bb      	strb	r3, [r7, #6]
    3afc:	4a05      	ldr	r2, [pc, #20]	; (3b14 <set_cursor+0x28>)
    3afe:	79fb      	ldrb	r3, [r7, #7]
    3b00:	7013      	strb	r3, [r2, #0]
    3b02:	4a05      	ldr	r2, [pc, #20]	; (3b18 <set_cursor+0x2c>)
    3b04:	79bb      	ldrb	r3, [r7, #6]
    3b06:	7013      	strb	r3, [r2, #0]
    3b08:	bf00      	nop
    3b0a:	370c      	adds	r7, #12
    3b0c:	46bd      	mov	sp, r7
    3b0e:	bc80      	pop	{r7}
    3b10:	4770      	bx	lr
    3b12:	bf00      	nop
    3b14:	20000500 	.word	0x20000500
    3b18:	20000501 	.word	0x20000501

00003b1c <get_cursor>:
    3b1c:	b480      	push	{r7}
    3b1e:	af00      	add	r7, sp, #0
    3b20:	4b06      	ldr	r3, [pc, #24]	; (3b3c <get_cursor+0x20>)
    3b22:	781b      	ldrb	r3, [r3, #0]
    3b24:	b29b      	uxth	r3, r3
    3b26:	021b      	lsls	r3, r3, #8
    3b28:	b29a      	uxth	r2, r3
    3b2a:	4b05      	ldr	r3, [pc, #20]	; (3b40 <get_cursor+0x24>)
    3b2c:	781b      	ldrb	r3, [r3, #0]
    3b2e:	b29b      	uxth	r3, r3
    3b30:	4413      	add	r3, r2
    3b32:	b29b      	uxth	r3, r3
    3b34:	4618      	mov	r0, r3
    3b36:	46bd      	mov	sp, r7
    3b38:	bc80      	pop	{r7}
    3b3a:	4770      	bx	lr
    3b3c:	20000500 	.word	0x20000500
    3b40:	20000501 	.word	0x20000501

00003b44 <print>:
    3b44:	b580      	push	{r7, lr}
    3b46:	b084      	sub	sp, #16
    3b48:	af00      	add	r7, sp, #0
    3b4a:	6078      	str	r0, [r7, #4]
    3b4c:	e011      	b.n	3b72 <print+0x2e>
    3b4e:	7bfb      	ldrb	r3, [r7, #15]
    3b50:	2b0a      	cmp	r3, #10
    3b52:	d004      	beq.n	3b5e <print+0x1a>
    3b54:	2b0d      	cmp	r3, #13
    3b56:	d002      	beq.n	3b5e <print+0x1a>
    3b58:	2b08      	cmp	r3, #8
    3b5a:	d003      	beq.n	3b64 <print+0x20>
    3b5c:	e005      	b.n	3b6a <print+0x26>
    3b5e:	f7ff feb7 	bl	38d0 <new_line>
    3b62:	e006      	b.n	3b72 <print+0x2e>
    3b64:	f000 f89b 	bl	3c9e <cursor_left>
    3b68:	e003      	b.n	3b72 <print+0x2e>
    3b6a:	7bfb      	ldrb	r3, [r7, #15]
    3b6c:	4618      	mov	r0, r3
    3b6e:	f7ff ff31 	bl	39d4 <put_char>
    3b72:	687b      	ldr	r3, [r7, #4]
    3b74:	1c5a      	adds	r2, r3, #1
    3b76:	607a      	str	r2, [r7, #4]
    3b78:	781b      	ldrb	r3, [r3, #0]
    3b7a:	73fb      	strb	r3, [r7, #15]
    3b7c:	7bfb      	ldrb	r3, [r7, #15]
    3b7e:	2b00      	cmp	r3, #0
    3b80:	d1e5      	bne.n	3b4e <print+0xa>
    3b82:	bf00      	nop
    3b84:	3710      	adds	r7, #16
    3b86:	46bd      	mov	sp, r7
    3b88:	bd80      	pop	{r7, pc}

00003b8a <println>:
    3b8a:	b580      	push	{r7, lr}
    3b8c:	b082      	sub	sp, #8
    3b8e:	af00      	add	r7, sp, #0
    3b90:	6078      	str	r0, [r7, #4]
    3b92:	6878      	ldr	r0, [r7, #4]
    3b94:	f7ff ffd6 	bl	3b44 <print>
    3b98:	f7ff fe9a 	bl	38d0 <new_line>
    3b9c:	bf00      	nop
    3b9e:	3708      	adds	r7, #8
    3ba0:	46bd      	mov	sp, r7
    3ba2:	bd80      	pop	{r7, pc}

00003ba4 <print_int>:
    3ba4:	b580      	push	{r7, lr}
    3ba6:	b08a      	sub	sp, #40	; 0x28
    3ba8:	af00      	add	r7, sp, #0
    3baa:	6078      	str	r0, [r7, #4]
    3bac:	460b      	mov	r3, r1
    3bae:	70fb      	strb	r3, [r7, #3]
    3bb0:	2300      	movs	r3, #0
    3bb2:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3bb6:	2300      	movs	r3, #0
    3bb8:	76fb      	strb	r3, [r7, #27]
    3bba:	2320      	movs	r3, #32
    3bbc:	76bb      	strb	r3, [r7, #26]
    3bbe:	230e      	movs	r3, #14
    3bc0:	623b      	str	r3, [r7, #32]
    3bc2:	687b      	ldr	r3, [r7, #4]
    3bc4:	2b00      	cmp	r3, #0
    3bc6:	da27      	bge.n	3c18 <print_int+0x74>
    3bc8:	2301      	movs	r3, #1
    3bca:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3bce:	687b      	ldr	r3, [r7, #4]
    3bd0:	425b      	negs	r3, r3
    3bd2:	607b      	str	r3, [r7, #4]
    3bd4:	e020      	b.n	3c18 <print_int+0x74>
    3bd6:	78fa      	ldrb	r2, [r7, #3]
    3bd8:	687b      	ldr	r3, [r7, #4]
    3bda:	fb93 f1f2 	sdiv	r1, r3, r2
    3bde:	fb02 f201 	mul.w	r2, r2, r1
    3be2:	1a9b      	subs	r3, r3, r2
    3be4:	61fb      	str	r3, [r7, #28]
    3be6:	69fb      	ldr	r3, [r7, #28]
    3be8:	2b09      	cmp	r3, #9
    3bea:	dd02      	ble.n	3bf2 <print_int+0x4e>
    3bec:	69fb      	ldr	r3, [r7, #28]
    3bee:	3307      	adds	r3, #7
    3bf0:	61fb      	str	r3, [r7, #28]
    3bf2:	6a3b      	ldr	r3, [r7, #32]
    3bf4:	3b01      	subs	r3, #1
    3bf6:	623b      	str	r3, [r7, #32]
    3bf8:	69fb      	ldr	r3, [r7, #28]
    3bfa:	3330      	adds	r3, #48	; 0x30
    3bfc:	61fb      	str	r3, [r7, #28]
    3bfe:	69fb      	ldr	r3, [r7, #28]
    3c00:	b2d9      	uxtb	r1, r3
    3c02:	f107 020c 	add.w	r2, r7, #12
    3c06:	6a3b      	ldr	r3, [r7, #32]
    3c08:	4413      	add	r3, r2
    3c0a:	460a      	mov	r2, r1
    3c0c:	701a      	strb	r2, [r3, #0]
    3c0e:	78fb      	ldrb	r3, [r7, #3]
    3c10:	687a      	ldr	r2, [r7, #4]
    3c12:	fb92 f3f3 	sdiv	r3, r2, r3
    3c16:	607b      	str	r3, [r7, #4]
    3c18:	6a3b      	ldr	r3, [r7, #32]
    3c1a:	2b01      	cmp	r3, #1
    3c1c:	dd02      	ble.n	3c24 <print_int+0x80>
    3c1e:	687b      	ldr	r3, [r7, #4]
    3c20:	2b00      	cmp	r3, #0
    3c22:	d1d8      	bne.n	3bd6 <print_int+0x32>
    3c24:	6a3b      	ldr	r3, [r7, #32]
    3c26:	2b0e      	cmp	r3, #14
    3c28:	d108      	bne.n	3c3c <print_int+0x98>
    3c2a:	6a3b      	ldr	r3, [r7, #32]
    3c2c:	3b01      	subs	r3, #1
    3c2e:	623b      	str	r3, [r7, #32]
    3c30:	f107 020c 	add.w	r2, r7, #12
    3c34:	6a3b      	ldr	r3, [r7, #32]
    3c36:	4413      	add	r3, r2
    3c38:	2230      	movs	r2, #48	; 0x30
    3c3a:	701a      	strb	r2, [r3, #0]
    3c3c:	78fb      	ldrb	r3, [r7, #3]
    3c3e:	2b0a      	cmp	r3, #10
    3c40:	d10d      	bne.n	3c5e <print_int+0xba>
    3c42:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    3c46:	2b00      	cmp	r3, #0
    3c48:	d009      	beq.n	3c5e <print_int+0xba>
    3c4a:	6a3b      	ldr	r3, [r7, #32]
    3c4c:	3b01      	subs	r3, #1
    3c4e:	623b      	str	r3, [r7, #32]
    3c50:	f107 020c 	add.w	r2, r7, #12
    3c54:	6a3b      	ldr	r3, [r7, #32]
    3c56:	4413      	add	r3, r2
    3c58:	222d      	movs	r2, #45	; 0x2d
    3c5a:	701a      	strb	r2, [r3, #0]
    3c5c:	e014      	b.n	3c88 <print_int+0xe4>
    3c5e:	78fb      	ldrb	r3, [r7, #3]
    3c60:	2b10      	cmp	r3, #16
    3c62:	d111      	bne.n	3c88 <print_int+0xe4>
    3c64:	6a3b      	ldr	r3, [r7, #32]
    3c66:	3b01      	subs	r3, #1
    3c68:	623b      	str	r3, [r7, #32]
    3c6a:	f107 020c 	add.w	r2, r7, #12
    3c6e:	6a3b      	ldr	r3, [r7, #32]
    3c70:	4413      	add	r3, r2
    3c72:	2278      	movs	r2, #120	; 0x78
    3c74:	701a      	strb	r2, [r3, #0]
    3c76:	6a3b      	ldr	r3, [r7, #32]
    3c78:	3b01      	subs	r3, #1
    3c7a:	623b      	str	r3, [r7, #32]
    3c7c:	f107 020c 	add.w	r2, r7, #12
    3c80:	6a3b      	ldr	r3, [r7, #32]
    3c82:	4413      	add	r3, r2
    3c84:	2230      	movs	r2, #48	; 0x30
    3c86:	701a      	strb	r2, [r3, #0]
    3c88:	f107 020c 	add.w	r2, r7, #12
    3c8c:	6a3b      	ldr	r3, [r7, #32]
    3c8e:	4413      	add	r3, r2
    3c90:	4618      	mov	r0, r3
    3c92:	f7ff ff57 	bl	3b44 <print>
    3c96:	bf00      	nop
    3c98:	3728      	adds	r7, #40	; 0x28
    3c9a:	46bd      	mov	sp, r7
    3c9c:	bd80      	pop	{r7, pc}

00003c9e <cursor_left>:
    3c9e:	b480      	push	{r7}
    3ca0:	af00      	add	r7, sp, #0
    3ca2:	4b1b      	ldr	r3, [pc, #108]	; (3d10 <cursor_left+0x72>)
    3ca4:	781b      	ldrb	r3, [r3, #0]
    3ca6:	2b01      	cmp	r3, #1
    3ca8:	d010      	beq.n	3ccc <cursor_left+0x2e>
    3caa:	2b02      	cmp	r3, #2
    3cac:	d01a      	beq.n	3ce4 <cursor_left+0x46>
    3cae:	2b00      	cmp	r3, #0
    3cb0:	d000      	beq.n	3cb4 <cursor_left+0x16>
    3cb2:	e028      	b.n	3d06 <cursor_left+0x68>
    3cb4:	4b17      	ldr	r3, [pc, #92]	; (3d14 <cursor_left+0x76>)
    3cb6:	781b      	ldrb	r3, [r3, #0]
    3cb8:	3b04      	subs	r3, #4
    3cba:	2b00      	cmp	r3, #0
    3cbc:	db1e      	blt.n	3cfc <cursor_left+0x5e>
    3cbe:	4b15      	ldr	r3, [pc, #84]	; (3d14 <cursor_left+0x76>)
    3cc0:	781b      	ldrb	r3, [r3, #0]
    3cc2:	3b04      	subs	r3, #4
    3cc4:	b2da      	uxtb	r2, r3
    3cc6:	4b13      	ldr	r3, [pc, #76]	; (3d14 <cursor_left+0x76>)
    3cc8:	701a      	strb	r2, [r3, #0]
    3cca:	e017      	b.n	3cfc <cursor_left+0x5e>
    3ccc:	4b11      	ldr	r3, [pc, #68]	; (3d14 <cursor_left+0x76>)
    3cce:	781b      	ldrb	r3, [r3, #0]
    3cd0:	3b08      	subs	r3, #8
    3cd2:	2b00      	cmp	r3, #0
    3cd4:	db14      	blt.n	3d00 <cursor_left+0x62>
    3cd6:	4b0f      	ldr	r3, [pc, #60]	; (3d14 <cursor_left+0x76>)
    3cd8:	781b      	ldrb	r3, [r3, #0]
    3cda:	3b08      	subs	r3, #8
    3cdc:	b2da      	uxtb	r2, r3
    3cde:	4b0d      	ldr	r3, [pc, #52]	; (3d14 <cursor_left+0x76>)
    3ce0:	701a      	strb	r2, [r3, #0]
    3ce2:	e00d      	b.n	3d00 <cursor_left+0x62>
    3ce4:	4b0b      	ldr	r3, [pc, #44]	; (3d14 <cursor_left+0x76>)
    3ce6:	781b      	ldrb	r3, [r3, #0]
    3ce8:	3b06      	subs	r3, #6
    3cea:	2b00      	cmp	r3, #0
    3cec:	db0a      	blt.n	3d04 <cursor_left+0x66>
    3cee:	4b09      	ldr	r3, [pc, #36]	; (3d14 <cursor_left+0x76>)
    3cf0:	781b      	ldrb	r3, [r3, #0]
    3cf2:	3b06      	subs	r3, #6
    3cf4:	b2da      	uxtb	r2, r3
    3cf6:	4b07      	ldr	r3, [pc, #28]	; (3d14 <cursor_left+0x76>)
    3cf8:	701a      	strb	r2, [r3, #0]
    3cfa:	e003      	b.n	3d04 <cursor_left+0x66>
    3cfc:	bf00      	nop
    3cfe:	e002      	b.n	3d06 <cursor_left+0x68>
    3d00:	bf00      	nop
    3d02:	e000      	b.n	3d06 <cursor_left+0x68>
    3d04:	bf00      	nop
    3d06:	bf00      	nop
    3d08:	46bd      	mov	sp, r7
    3d0a:	bc80      	pop	{r7}
    3d0c:	4770      	bx	lr
    3d0e:	bf00      	nop
    3d10:	20000064 	.word	0x20000064
    3d14:	20000500 	.word	0x20000500

00003d18 <text_scroller>:
    3d18:	b580      	push	{r7, lr}
    3d1a:	b084      	sub	sp, #16
    3d1c:	af00      	add	r7, sp, #0
    3d1e:	6078      	str	r0, [r7, #4]
    3d20:	460b      	mov	r3, r1
    3d22:	70fb      	strb	r3, [r7, #3]
    3d24:	f7fd ff6c 	bl	1c00 <gfx_cls>
    3d28:	2002      	movs	r0, #2
    3d2a:	f7ff fdc1 	bl	38b0 <select_font>
    3d2e:	687b      	ldr	r3, [r7, #4]
    3d30:	1c5a      	adds	r2, r3, #1
    3d32:	607a      	str	r2, [r7, #4]
    3d34:	781b      	ldrb	r3, [r3, #0]
    3d36:	73fb      	strb	r3, [r7, #15]
    3d38:	e03a      	b.n	3db0 <text_scroller+0x98>
    3d3a:	2120      	movs	r1, #32
    3d3c:	2000      	movs	r0, #0
    3d3e:	f7ff fed5 	bl	3aec <set_cursor>
    3d42:	e00f      	b.n	3d64 <text_scroller+0x4c>
    3d44:	7bfb      	ldrb	r3, [r7, #15]
    3d46:	4618      	mov	r0, r3
    3d48:	f7ff fe44 	bl	39d4 <put_char>
    3d4c:	687b      	ldr	r3, [r7, #4]
    3d4e:	1c5a      	adds	r2, r3, #1
    3d50:	607a      	str	r2, [r7, #4]
    3d52:	781b      	ldrb	r3, [r3, #0]
    3d54:	73fb      	strb	r3, [r7, #15]
    3d56:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d5a:	f000 fb25 	bl	43a8 <btn_query_down>
    3d5e:	4603      	mov	r3, r0
    3d60:	2b00      	cmp	r3, #0
    3d62:	d144      	bne.n	3dee <text_scroller+0xd6>
    3d64:	7bfb      	ldrb	r3, [r7, #15]
    3d66:	2b00      	cmp	r3, #0
    3d68:	d002      	beq.n	3d70 <text_scroller+0x58>
    3d6a:	7bfb      	ldrb	r3, [r7, #15]
    3d6c:	2b0a      	cmp	r3, #10
    3d6e:	d1e9      	bne.n	3d44 <text_scroller+0x2c>
    3d70:	2300      	movs	r3, #0
    3d72:	73bb      	strb	r3, [r7, #14]
    3d74:	e014      	b.n	3da0 <text_scroller+0x88>
    3d76:	78fb      	ldrb	r3, [r7, #3]
    3d78:	4a24      	ldr	r2, [pc, #144]	; (3e0c <text_scroller+0xf4>)
    3d7a:	6013      	str	r3, [r2, #0]
    3d7c:	bf00      	nop
    3d7e:	4b23      	ldr	r3, [pc, #140]	; (3e0c <text_scroller+0xf4>)
    3d80:	681b      	ldr	r3, [r3, #0]
    3d82:	2b00      	cmp	r3, #0
    3d84:	d1fb      	bne.n	3d7e <text_scroller+0x66>
    3d86:	2001      	movs	r0, #1
    3d88:	f7fd ff8e 	bl	1ca8 <gfx_scroll_up>
    3d8c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3d90:	f000 fb0a 	bl	43a8 <btn_query_down>
    3d94:	4603      	mov	r3, r0
    3d96:	2b00      	cmp	r3, #0
    3d98:	d12b      	bne.n	3df2 <text_scroller+0xda>
    3d9a:	7bbb      	ldrb	r3, [r7, #14]
    3d9c:	3301      	adds	r3, #1
    3d9e:	73bb      	strb	r3, [r7, #14]
    3da0:	7bbb      	ldrb	r3, [r7, #14]
    3da2:	2b07      	cmp	r3, #7
    3da4:	d9e7      	bls.n	3d76 <text_scroller+0x5e>
    3da6:	687b      	ldr	r3, [r7, #4]
    3da8:	1c5a      	adds	r2, r3, #1
    3daa:	607a      	str	r2, [r7, #4]
    3dac:	781b      	ldrb	r3, [r3, #0]
    3dae:	73fb      	strb	r3, [r7, #15]
    3db0:	7bfb      	ldrb	r3, [r7, #15]
    3db2:	2b00      	cmp	r3, #0
    3db4:	d1c1      	bne.n	3d3a <text_scroller+0x22>
    3db6:	2300      	movs	r3, #0
    3db8:	73fb      	strb	r3, [r7, #15]
    3dba:	e014      	b.n	3de6 <text_scroller+0xce>
    3dbc:	78fb      	ldrb	r3, [r7, #3]
    3dbe:	4a13      	ldr	r2, [pc, #76]	; (3e0c <text_scroller+0xf4>)
    3dc0:	6013      	str	r3, [r2, #0]
    3dc2:	bf00      	nop
    3dc4:	4b11      	ldr	r3, [pc, #68]	; (3e0c <text_scroller+0xf4>)
    3dc6:	681b      	ldr	r3, [r3, #0]
    3dc8:	2b00      	cmp	r3, #0
    3dca:	d1fb      	bne.n	3dc4 <text_scroller+0xac>
    3dcc:	2001      	movs	r0, #1
    3dce:	f7fd ff6b 	bl	1ca8 <gfx_scroll_up>
    3dd2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3dd6:	f000 fae7 	bl	43a8 <btn_query_down>
    3dda:	4603      	mov	r3, r0
    3ddc:	2b00      	cmp	r3, #0
    3dde:	d10a      	bne.n	3df6 <text_scroller+0xde>
    3de0:	7bfb      	ldrb	r3, [r7, #15]
    3de2:	3301      	adds	r3, #1
    3de4:	73fb      	strb	r3, [r7, #15]
    3de6:	7bfb      	ldrb	r3, [r7, #15]
    3de8:	2b1f      	cmp	r3, #31
    3dea:	d9e7      	bls.n	3dbc <text_scroller+0xa4>
    3dec:	e004      	b.n	3df8 <text_scroller+0xe0>
    3dee:	bf00      	nop
    3df0:	e002      	b.n	3df8 <text_scroller+0xe0>
    3df2:	bf00      	nop
    3df4:	e000      	b.n	3df8 <text_scroller+0xe0>
    3df6:	bf00      	nop
    3df8:	f7fd ff02 	bl	1c00 <gfx_cls>
    3dfc:	f44f 4000 	mov.w	r0, #32768	; 0x8000
    3e00:	f000 fab0 	bl	4364 <btn_wait_up>
    3e04:	bf00      	nop
    3e06:	3710      	adds	r7, #16
    3e08:	46bd      	mov	sp, r7
    3e0a:	bd80      	pop	{r7, pc}
    3e0c:	200004fc 	.word	0x200004fc

00003e10 <prompt_btn>:
    3e10:	b580      	push	{r7, lr}
    3e12:	af00      	add	r7, sp, #0
    3e14:	4802      	ldr	r0, [pc, #8]	; (3e20 <prompt_btn+0x10>)
    3e16:	f7ff fe95 	bl	3b44 <print>
    3e1a:	bf00      	nop
    3e1c:	bd80      	pop	{r7, pc}
    3e1e:	bf00      	nop
    3e20:	00004a50 	.word	0x00004a50

00003e24 <clear_screen>:
    3e24:	b580      	push	{r7, lr}
    3e26:	af00      	add	r7, sp, #0
    3e28:	f7fd feea 	bl	1c00 <gfx_cls>
    3e2c:	4b03      	ldr	r3, [pc, #12]	; (3e3c <clear_screen+0x18>)
    3e2e:	2200      	movs	r2, #0
    3e30:	701a      	strb	r2, [r3, #0]
    3e32:	4b03      	ldr	r3, [pc, #12]	; (3e40 <clear_screen+0x1c>)
    3e34:	2200      	movs	r2, #0
    3e36:	701a      	strb	r2, [r3, #0]
    3e38:	bf00      	nop
    3e3a:	bd80      	pop	{r7, pc}
    3e3c:	20000500 	.word	0x20000500
    3e40:	20000501 	.word	0x20000501

00003e44 <tvout_init>:
    3e44:	b580      	push	{r7, lr}
    3e46:	af00      	add	r7, sp, #0
    3e48:	4b40      	ldr	r3, [pc, #256]	; (3f4c <tvout_init+0x108>)
    3e4a:	4a41      	ldr	r2, [pc, #260]	; (3f50 <tvout_init+0x10c>)
    3e4c:	601a      	str	r2, [r3, #0]
    3e4e:	4b41      	ldr	r3, [pc, #260]	; (3f54 <tvout_init+0x110>)
    3e50:	4a41      	ldr	r2, [pc, #260]	; (3f58 <tvout_init+0x114>)
    3e52:	601a      	str	r2, [r3, #0]
    3e54:	220a      	movs	r2, #10
    3e56:	2108      	movs	r1, #8
    3e58:	483c      	ldr	r0, [pc, #240]	; (3f4c <tvout_init+0x108>)
    3e5a:	f7fd fd4c 	bl	18f6 <config_pin>
    3e5e:	4b3b      	ldr	r3, [pc, #236]	; (3f4c <tvout_init+0x108>)
    3e60:	2200      	movs	r2, #0
    3e62:	60da      	str	r2, [r3, #12]
    3e64:	4a3d      	ldr	r2, [pc, #244]	; (3f5c <tvout_init+0x118>)
    3e66:	4b3d      	ldr	r3, [pc, #244]	; (3f5c <tvout_init+0x118>)
    3e68:	699b      	ldr	r3, [r3, #24]
    3e6a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3e6e:	6193      	str	r3, [r2, #24]
    3e70:	4b3b      	ldr	r3, [pc, #236]	; (3f60 <tvout_init+0x11c>)
    3e72:	2278      	movs	r2, #120	; 0x78
    3e74:	619a      	str	r2, [r3, #24]
    3e76:	4b3a      	ldr	r3, [pc, #232]	; (3f60 <tvout_init+0x11c>)
    3e78:	2201      	movs	r2, #1
    3e7a:	621a      	str	r2, [r3, #32]
    3e7c:	4b38      	ldr	r3, [pc, #224]	; (3f60 <tvout_init+0x11c>)
    3e7e:	2284      	movs	r2, #132	; 0x84
    3e80:	601a      	str	r2, [r3, #0]
    3e82:	4b37      	ldr	r3, [pc, #220]	; (3f60 <tvout_init+0x11c>)
    3e84:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3e88:	62da      	str	r2, [r3, #44]	; 0x2c
    3e8a:	4b35      	ldr	r3, [pc, #212]	; (3f60 <tvout_init+0x11c>)
    3e8c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3e90:	635a      	str	r2, [r3, #52]	; 0x34
    3e92:	4b33      	ldr	r3, [pc, #204]	; (3f60 <tvout_init+0x11c>)
    3e94:	f240 126d 	movw	r2, #365	; 0x16d
    3e98:	639a      	str	r2, [r3, #56]	; 0x38
    3e9a:	4a31      	ldr	r2, [pc, #196]	; (3f60 <tvout_init+0x11c>)
    3e9c:	4b30      	ldr	r3, [pc, #192]	; (3f60 <tvout_init+0x11c>)
    3e9e:	695b      	ldr	r3, [r3, #20]
    3ea0:	f043 0301 	orr.w	r3, r3, #1
    3ea4:	6153      	str	r3, [r2, #20]
    3ea6:	4b2e      	ldr	r3, [pc, #184]	; (3f60 <tvout_init+0x11c>)
    3ea8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    3eac:	645a      	str	r2, [r3, #68]	; 0x44
    3eae:	4b2c      	ldr	r3, [pc, #176]	; (3f60 <tvout_init+0x11c>)
    3eb0:	2200      	movs	r2, #0
    3eb2:	611a      	str	r2, [r3, #16]
    3eb4:	4a2a      	ldr	r2, [pc, #168]	; (3f60 <tvout_init+0x11c>)
    3eb6:	4b2a      	ldr	r3, [pc, #168]	; (3f60 <tvout_init+0x11c>)
    3eb8:	68db      	ldr	r3, [r3, #12]
    3eba:	f043 0301 	orr.w	r3, r3, #1
    3ebe:	60d3      	str	r3, [r2, #12]
    3ec0:	2100      	movs	r1, #0
    3ec2:	2019      	movs	r0, #25
    3ec4:	f7fe fc8a 	bl	27dc <set_int_priority>
    3ec8:	2100      	movs	r1, #0
    3eca:	201b      	movs	r0, #27
    3ecc:	f7fe fc86 	bl	27dc <set_int_priority>
    3ed0:	201b      	movs	r0, #27
    3ed2:	f7fe fbc9 	bl	2668 <enable_interrupt>
    3ed6:	2019      	movs	r0, #25
    3ed8:	f7fe fbc6 	bl	2668 <enable_interrupt>
    3edc:	4a20      	ldr	r2, [pc, #128]	; (3f60 <tvout_init+0x11c>)
    3ede:	4b20      	ldr	r3, [pc, #128]	; (3f60 <tvout_init+0x11c>)
    3ee0:	681b      	ldr	r3, [r3, #0]
    3ee2:	f043 0301 	orr.w	r3, r3, #1
    3ee6:	6013      	str	r3, [r2, #0]
    3ee8:	220a      	movs	r2, #10
    3eea:	2100      	movs	r1, #0
    3eec:	481d      	ldr	r0, [pc, #116]	; (3f64 <tvout_init+0x120>)
    3eee:	f7fd fd02 	bl	18f6 <config_pin>
    3ef2:	4a1a      	ldr	r2, [pc, #104]	; (3f5c <tvout_init+0x118>)
    3ef4:	4b19      	ldr	r3, [pc, #100]	; (3f5c <tvout_init+0x118>)
    3ef6:	69db      	ldr	r3, [r3, #28]
    3ef8:	f043 0302 	orr.w	r3, r3, #2
    3efc:	61d3      	str	r3, [r2, #28]
    3efe:	4b1a      	ldr	r3, [pc, #104]	; (3f68 <tvout_init+0x124>)
    3f00:	2278      	movs	r2, #120	; 0x78
    3f02:	61da      	str	r2, [r3, #28]
    3f04:	4b18      	ldr	r3, [pc, #96]	; (3f68 <tvout_init+0x124>)
    3f06:	f44f 7280 	mov.w	r2, #256	; 0x100
    3f0a:	621a      	str	r2, [r3, #32]
    3f0c:	4b16      	ldr	r3, [pc, #88]	; (3f68 <tvout_init+0x124>)
    3f0e:	2284      	movs	r2, #132	; 0x84
    3f10:	601a      	str	r2, [r3, #0]
    3f12:	4b15      	ldr	r3, [pc, #84]	; (3f68 <tvout_init+0x124>)
    3f14:	2213      	movs	r2, #19
    3f16:	62da      	str	r2, [r3, #44]	; 0x2c
    3f18:	4b13      	ldr	r3, [pc, #76]	; (3f68 <tvout_init+0x124>)
    3f1a:	220a      	movs	r2, #10
    3f1c:	63da      	str	r2, [r3, #60]	; 0x3c
    3f1e:	4a12      	ldr	r2, [pc, #72]	; (3f68 <tvout_init+0x124>)
    3f20:	4b11      	ldr	r3, [pc, #68]	; (3f68 <tvout_init+0x124>)
    3f22:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    3f24:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3f28:	6453      	str	r3, [r2, #68]	; 0x44
    3f2a:	4a0f      	ldr	r2, [pc, #60]	; (3f68 <tvout_init+0x124>)
    3f2c:	4b0e      	ldr	r3, [pc, #56]	; (3f68 <tvout_init+0x124>)
    3f2e:	695b      	ldr	r3, [r3, #20]
    3f30:	f043 0301 	orr.w	r3, r3, #1
    3f34:	6153      	str	r3, [r2, #20]
    3f36:	4b0c      	ldr	r3, [pc, #48]	; (3f68 <tvout_init+0x124>)
    3f38:	2200      	movs	r2, #0
    3f3a:	611a      	str	r2, [r3, #16]
    3f3c:	4a0a      	ldr	r2, [pc, #40]	; (3f68 <tvout_init+0x124>)
    3f3e:	4b0a      	ldr	r3, [pc, #40]	; (3f68 <tvout_init+0x124>)
    3f40:	681b      	ldr	r3, [r3, #0]
    3f42:	f043 0301 	orr.w	r3, r3, #1
    3f46:	6013      	str	r3, [r2, #0]
    3f48:	bf00      	nop
    3f4a:	bd80      	pop	{r7, pc}
    3f4c:	40010800 	.word	0x40010800
    3f50:	88883333 	.word	0x88883333
    3f54:	40010804 	.word	0x40010804
    3f58:	84484444 	.word	0x84484444
    3f5c:	40021000 	.word	0x40021000
    3f60:	40012c00 	.word	0x40012c00
    3f64:	40010c00 	.word	0x40010c00
    3f68:	40000400 	.word	0x40000400

00003f6c <TV_OUT_handler>:
    3f6c:	4668      	mov	r0, sp
    3f6e:	f020 0107 	bic.w	r1, r0, #7
    3f72:	468d      	mov	sp, r1
    3f74:	b571      	push	{r0, r4, r5, r6, lr}
    3f76:	4b3e      	ldr	r3, [pc, #248]	; (4070 <TV_OUT_handler+0x104>)
    3f78:	7818      	ldrb	r0, [r3, #0]
    3f7a:	2801      	cmp	r0, #1
    3f7c:	d966      	bls.n	404c <TV_OUT_handler+0xe0>
    3f7e:	4b3d      	ldr	r3, [pc, #244]	; (4074 <TV_OUT_handler+0x108>)
    3f80:	881b      	ldrh	r3, [r3, #0]
    3f82:	f013 0f04 	tst.w	r3, #4
    3f86:	d058      	beq.n	403a <TV_OUT_handler+0xce>
    3f88:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    3f8c:	4a3a      	ldr	r2, [pc, #232]	; (4078 <TV_OUT_handler+0x10c>)
    3f8e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    3f92:	88da      	ldrh	r2, [r3, #6]
    3f94:	4939      	ldr	r1, [pc, #228]	; (407c <TV_OUT_handler+0x110>)
    3f96:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3f98:	4293      	cmp	r3, r2
    3f9a:	d3fc      	bcc.n	3f96 <TV_OUT_handler+0x2a>
    3f9c:	4936      	ldr	r1, [pc, #216]	; (4078 <TV_OUT_handler+0x10c>)
    3f9e:	00c5      	lsls	r5, r0, #3
    3fa0:	182a      	adds	r2, r5, r0
    3fa2:	eb01 0242 	add.w	r2, r1, r2, lsl #1
    3fa6:	7a14      	ldrb	r4, [r2, #8]
    3fa8:	4e35      	ldr	r6, [pc, #212]	; (4080 <TV_OUT_handler+0x114>)
    3faa:	f8d6 e020 	ldr.w	lr, [r6, #32]
    3fae:	8a13      	ldrh	r3, [r2, #16]
    3fb0:	ea43 030e 	orr.w	r3, r3, lr
    3fb4:	6233      	str	r3, [r6, #32]
    3fb6:	4b33      	ldr	r3, [pc, #204]	; (4084 <TV_OUT_handler+0x118>)
    3fb8:	881b      	ldrh	r3, [r3, #0]
    3fba:	b29b      	uxth	r3, r3
    3fbc:	7a52      	ldrb	r2, [r2, #9]
    3fbe:	fb93 f3f2 	sdiv	r3, r3, r2
    3fc2:	4a31      	ldr	r2, [pc, #196]	; (4088 <TV_OUT_handler+0x11c>)
    3fc4:	fb04 2303 	mla	r3, r4, r3, r2
    3fc8:	4428      	add	r0, r5
    3fca:	eb01 0140 	add.w	r1, r1, r0, lsl #1
    3fce:	7a89      	ldrb	r1, [r1, #10]
    3fd0:	482e      	ldr	r0, [pc, #184]	; (408c <TV_OUT_handler+0x120>)
    3fd2:	4602      	mov	r2, r0
    3fd4:	6812      	ldr	r2, [r2, #0]
    3fd6:	f002 020f 	and.w	r2, r2, #15
    3fda:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3fde:	4497      	add	pc, r2
    3fe0:	bf00      	nop
    3fe2:	bf00      	nop
    3fe4:	bf00      	nop
    3fe6:	bf00      	nop
    3fe8:	bf00      	nop
    3fea:	bf00      	nop
    3fec:	bf00      	nop
    3fee:	bf00      	nop
    3ff0:	bf00      	nop
    3ff2:	bf00      	nop
    3ff4:	bf00      	nop
    3ff6:	bf00      	nop
    3ff8:	bf00      	nop
    3ffa:	bf00      	nop
    3ffc:	bf00      	nop
    3ffe:	bf00      	nop
    4000:	b19c      	cbz	r4, 402a <TV_OUT_handler+0xbe>
    4002:	441c      	add	r4, r3
    4004:	f5a0 5010 	sub.w	r0, r0, #9216	; 0x2400
    4008:	3818      	subs	r0, #24
    400a:	781a      	ldrb	r2, [r3, #0]
    400c:	0912      	lsrs	r2, r2, #4
    400e:	8002      	strh	r2, [r0, #0]
    4010:	460a      	mov	r2, r1
    4012:	3a01      	subs	r2, #1
    4014:	d1fd      	bne.n	4012 <TV_OUT_handler+0xa6>
    4016:	f813 2b01 	ldrb.w	r2, [r3], #1
    401a:	f002 020f 	and.w	r2, r2, #15
    401e:	8002      	strh	r2, [r0, #0]
    4020:	460a      	mov	r2, r1
    4022:	3a01      	subs	r2, #1
    4024:	d1fd      	bne.n	4022 <TV_OUT_handler+0xb6>
    4026:	429c      	cmp	r4, r3
    4028:	d1ef      	bne.n	400a <TV_OUT_handler+0x9e>
    402a:	2200      	movs	r2, #0
    402c:	4b18      	ldr	r3, [pc, #96]	; (4090 <TV_OUT_handler+0x124>)
    402e:	60da      	str	r2, [r3, #12]
    4030:	4a13      	ldr	r2, [pc, #76]	; (4080 <TV_OUT_handler+0x114>)
    4032:	6a13      	ldr	r3, [r2, #32]
    4034:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    4038:	6213      	str	r3, [r2, #32]
    403a:	4a10      	ldr	r2, [pc, #64]	; (407c <TV_OUT_handler+0x110>)
    403c:	6913      	ldr	r3, [r2, #16]
    403e:	f023 0304 	bic.w	r3, r3, #4
    4042:	6113      	str	r3, [r2, #16]
    4044:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    4048:	4685      	mov	sp, r0
    404a:	4770      	bx	lr
    404c:	4a0c      	ldr	r2, [pc, #48]	; (4080 <TV_OUT_handler+0x114>)
    404e:	6a13      	ldr	r3, [r2, #32]
    4050:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4054:	6213      	str	r3, [r2, #32]
    4056:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    405a:	6a53      	ldr	r3, [r2, #36]	; 0x24
    405c:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    4060:	d9fb      	bls.n	405a <TV_OUT_handler+0xee>
    4062:	4a07      	ldr	r2, [pc, #28]	; (4080 <TV_OUT_handler+0x114>)
    4064:	6a13      	ldr	r3, [r2, #32]
    4066:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    406a:	6213      	str	r3, [r2, #32]
    406c:	e787      	b.n	3f7e <TV_OUT_handler+0x12>
    406e:	bf00      	nop
    4070:	20000502 	.word	0x20000502
    4074:	20000506 	.word	0x20000506
    4078:	00004a60 	.word	0x00004a60
    407c:	40012c00 	.word	0x40012c00
    4080:	40000400 	.word	0x40000400
    4084:	20000508 	.word	0x20000508
    4088:	20002538 	.word	0x20002538
    408c:	40012c24 	.word	0x40012c24
    4090:	40010800 	.word	0x40010800

00004094 <TV_SYNC_handler>:
    4094:	4668      	mov	r0, sp
    4096:	f020 0107 	bic.w	r1, r0, #7
    409a:	468d      	mov	sp, r1
    409c:	b401      	push	{r0}
    409e:	4a89      	ldr	r2, [pc, #548]	; (42c4 <TV_SYNC_handler+0x230>)
    40a0:	8813      	ldrh	r3, [r2, #0]
    40a2:	3301      	adds	r3, #1
    40a4:	b29b      	uxth	r3, r3
    40a6:	8013      	strh	r3, [r2, #0]
    40a8:	4b87      	ldr	r3, [pc, #540]	; (42c8 <TV_SYNC_handler+0x234>)
    40aa:	881b      	ldrh	r3, [r3, #0]
    40ac:	b29b      	uxth	r3, r3
    40ae:	2b07      	cmp	r3, #7
    40b0:	f200 808e 	bhi.w	41d0 <TV_SYNC_handler+0x13c>
    40b4:	e8df f013 	tbh	[pc, r3, lsl #1]
    40b8:	002a0008 	.word	0x002a0008
    40bc:	006c004a 	.word	0x006c004a
    40c0:	00a30094 	.word	0x00a30094
    40c4:	00de00bf 	.word	0x00de00bf
    40c8:	4b80      	ldr	r3, [pc, #512]	; (42cc <TV_SYNC_handler+0x238>)
    40ca:	881b      	ldrh	r3, [r3, #0]
    40cc:	b29b      	uxth	r3, r3
    40ce:	b18b      	cbz	r3, 40f4 <TV_SYNC_handler+0x60>
    40d0:	4a7e      	ldr	r2, [pc, #504]	; (42cc <TV_SYNC_handler+0x238>)
    40d2:	8813      	ldrh	r3, [r2, #0]
    40d4:	3301      	adds	r3, #1
    40d6:	b29b      	uxth	r3, r3
    40d8:	8013      	strh	r3, [r2, #0]
    40da:	8813      	ldrh	r3, [r2, #0]
    40dc:	b29b      	uxth	r3, r3
    40de:	2b06      	cmp	r3, #6
    40e0:	d176      	bne.n	41d0 <TV_SYNC_handler+0x13c>
    40e2:	2200      	movs	r2, #0
    40e4:	4b79      	ldr	r3, [pc, #484]	; (42cc <TV_SYNC_handler+0x238>)
    40e6:	801a      	strh	r2, [r3, #0]
    40e8:	4a77      	ldr	r2, [pc, #476]	; (42c8 <TV_SYNC_handler+0x234>)
    40ea:	8813      	ldrh	r3, [r2, #0]
    40ec:	3301      	adds	r3, #1
    40ee:	b29b      	uxth	r3, r3
    40f0:	8013      	strh	r3, [r2, #0]
    40f2:	e06d      	b.n	41d0 <TV_SYNC_handler+0x13c>
    40f4:	4b76      	ldr	r3, [pc, #472]	; (42d0 <TV_SYNC_handler+0x23c>)
    40f6:	f640 02e2 	movw	r2, #2274	; 0x8e2
    40fa:	62da      	str	r2, [r3, #44]	; 0x2c
    40fc:	22a4      	movs	r2, #164	; 0xa4
    40fe:	635a      	str	r2, [r3, #52]	; 0x34
    4100:	4a72      	ldr	r2, [pc, #456]	; (42cc <TV_SYNC_handler+0x238>)
    4102:	8813      	ldrh	r3, [r2, #0]
    4104:	3301      	adds	r3, #1
    4106:	b29b      	uxth	r3, r3
    4108:	8013      	strh	r3, [r2, #0]
    410a:	e061      	b.n	41d0 <TV_SYNC_handler+0x13c>
    410c:	4b6f      	ldr	r3, [pc, #444]	; (42cc <TV_SYNC_handler+0x238>)
    410e:	881b      	ldrh	r3, [r3, #0]
    4110:	b29b      	uxth	r3, r3
    4112:	b18b      	cbz	r3, 4138 <TV_SYNC_handler+0xa4>
    4114:	4a6d      	ldr	r2, [pc, #436]	; (42cc <TV_SYNC_handler+0x238>)
    4116:	8813      	ldrh	r3, [r2, #0]
    4118:	3301      	adds	r3, #1
    411a:	b29b      	uxth	r3, r3
    411c:	8013      	strh	r3, [r2, #0]
    411e:	8813      	ldrh	r3, [r2, #0]
    4120:	b29b      	uxth	r3, r3
    4122:	2b06      	cmp	r3, #6
    4124:	d154      	bne.n	41d0 <TV_SYNC_handler+0x13c>
    4126:	2200      	movs	r2, #0
    4128:	4b68      	ldr	r3, [pc, #416]	; (42cc <TV_SYNC_handler+0x238>)
    412a:	801a      	strh	r2, [r3, #0]
    412c:	4a66      	ldr	r2, [pc, #408]	; (42c8 <TV_SYNC_handler+0x234>)
    412e:	8813      	ldrh	r3, [r2, #0]
    4130:	3301      	adds	r3, #1
    4132:	b29b      	uxth	r3, r3
    4134:	8013      	strh	r3, [r2, #0]
    4136:	e04b      	b.n	41d0 <TV_SYNC_handler+0x13c>
    4138:	f240 7294 	movw	r2, #1940	; 0x794
    413c:	4b64      	ldr	r3, [pc, #400]	; (42d0 <TV_SYNC_handler+0x23c>)
    413e:	635a      	str	r2, [r3, #52]	; 0x34
    4140:	4a62      	ldr	r2, [pc, #392]	; (42cc <TV_SYNC_handler+0x238>)
    4142:	8813      	ldrh	r3, [r2, #0]
    4144:	3301      	adds	r3, #1
    4146:	b29b      	uxth	r3, r3
    4148:	8013      	strh	r3, [r2, #0]
    414a:	e041      	b.n	41d0 <TV_SYNC_handler+0x13c>
    414c:	4b5f      	ldr	r3, [pc, #380]	; (42cc <TV_SYNC_handler+0x238>)
    414e:	881b      	ldrh	r3, [r3, #0]
    4150:	b29b      	uxth	r3, r3
    4152:	b153      	cbz	r3, 416a <TV_SYNC_handler+0xd6>
    4154:	4b5d      	ldr	r3, [pc, #372]	; (42cc <TV_SYNC_handler+0x238>)
    4156:	881b      	ldrh	r3, [r3, #0]
    4158:	b29b      	uxth	r3, r3
    415a:	2b06      	cmp	r3, #6
    415c:	d00e      	beq.n	417c <TV_SYNC_handler+0xe8>
    415e:	4a5b      	ldr	r2, [pc, #364]	; (42cc <TV_SYNC_handler+0x238>)
    4160:	8813      	ldrh	r3, [r2, #0]
    4162:	3301      	adds	r3, #1
    4164:	b29b      	uxth	r3, r3
    4166:	8013      	strh	r3, [r2, #0]
    4168:	e032      	b.n	41d0 <TV_SYNC_handler+0x13c>
    416a:	22a4      	movs	r2, #164	; 0xa4
    416c:	4b58      	ldr	r3, [pc, #352]	; (42d0 <TV_SYNC_handler+0x23c>)
    416e:	635a      	str	r2, [r3, #52]	; 0x34
    4170:	4a56      	ldr	r2, [pc, #344]	; (42cc <TV_SYNC_handler+0x238>)
    4172:	8813      	ldrh	r3, [r2, #0]
    4174:	3301      	adds	r3, #1
    4176:	b29b      	uxth	r3, r3
    4178:	8013      	strh	r3, [r2, #0]
    417a:	e029      	b.n	41d0 <TV_SYNC_handler+0x13c>
    417c:	4a52      	ldr	r2, [pc, #328]	; (42c8 <TV_SYNC_handler+0x234>)
    417e:	8813      	ldrh	r3, [r2, #0]
    4180:	3301      	adds	r3, #1
    4182:	b29b      	uxth	r3, r3
    4184:	8013      	strh	r3, [r2, #0]
    4186:	4b53      	ldr	r3, [pc, #332]	; (42d4 <TV_SYNC_handler+0x240>)
    4188:	881b      	ldrh	r3, [r3, #0]
    418a:	f013 0f01 	tst.w	r3, #1
    418e:	d01f      	beq.n	41d0 <TV_SYNC_handler+0x13c>
    4190:	4a4f      	ldr	r2, [pc, #316]	; (42d0 <TV_SYNC_handler+0x23c>)
    4192:	f241 13c5 	movw	r3, #4549	; 0x11c5
    4196:	62d3      	str	r3, [r2, #44]	; 0x2c
    4198:	f44f 73a8 	mov.w	r3, #336	; 0x150
    419c:	6353      	str	r3, [r2, #52]	; 0x34
    419e:	494d      	ldr	r1, [pc, #308]	; (42d4 <TV_SYNC_handler+0x240>)
    41a0:	880b      	ldrh	r3, [r1, #0]
    41a2:	f023 0302 	bic.w	r3, r3, #2
    41a6:	041b      	lsls	r3, r3, #16
    41a8:	0c1b      	lsrs	r3, r3, #16
    41aa:	800b      	strh	r3, [r1, #0]
    41ac:	4945      	ldr	r1, [pc, #276]	; (42c4 <TV_SYNC_handler+0x230>)
    41ae:	880b      	ldrh	r3, [r1, #0]
    41b0:	f3c3 038d 	ubfx	r3, r3, #2, #14
    41b4:	800b      	strh	r3, [r1, #0]
    41b6:	4944      	ldr	r1, [pc, #272]	; (42c8 <TV_SYNC_handler+0x234>)
    41b8:	880b      	ldrh	r3, [r1, #0]
    41ba:	3301      	adds	r3, #1
    41bc:	b29b      	uxth	r3, r3
    41be:	800b      	strh	r3, [r1, #0]
    41c0:	6913      	ldr	r3, [r2, #16]
    41c2:	f023 0304 	bic.w	r3, r3, #4
    41c6:	6113      	str	r3, [r2, #16]
    41c8:	68d3      	ldr	r3, [r2, #12]
    41ca:	f043 0304 	orr.w	r3, r3, #4
    41ce:	60d3      	str	r3, [r2, #12]
    41d0:	4a3f      	ldr	r2, [pc, #252]	; (42d0 <TV_SYNC_handler+0x23c>)
    41d2:	6913      	ldr	r3, [r2, #16]
    41d4:	f023 0301 	bic.w	r3, r3, #1
    41d8:	6113      	str	r3, [r2, #16]
    41da:	bc01      	pop	{r0}
    41dc:	4685      	mov	sp, r0
    41de:	4770      	bx	lr
    41e0:	4b3d      	ldr	r3, [pc, #244]	; (42d8 <TV_SYNC_handler+0x244>)
    41e2:	689b      	ldr	r3, [r3, #8]
    41e4:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    41e8:	f023 030f 	bic.w	r3, r3, #15
    41ec:	b29b      	uxth	r3, r3
    41ee:	4a3b      	ldr	r2, [pc, #236]	; (42dc <TV_SYNC_handler+0x248>)
    41f0:	8013      	strh	r3, [r2, #0]
    41f2:	4a35      	ldr	r2, [pc, #212]	; (42c8 <TV_SYNC_handler+0x234>)
    41f4:	8813      	ldrh	r3, [r2, #0]
    41f6:	3301      	adds	r3, #1
    41f8:	b29b      	uxth	r3, r3
    41fa:	8013      	strh	r3, [r2, #0]
    41fc:	e7e8      	b.n	41d0 <TV_SYNC_handler+0x13c>
    41fe:	4b31      	ldr	r3, [pc, #196]	; (42c4 <TV_SYNC_handler+0x230>)
    4200:	881a      	ldrh	r2, [r3, #0]
    4202:	b292      	uxth	r2, r2
    4204:	4b36      	ldr	r3, [pc, #216]	; (42e0 <TV_SYNC_handler+0x24c>)
    4206:	781b      	ldrb	r3, [r3, #0]
    4208:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    420c:	4935      	ldr	r1, [pc, #212]	; (42e4 <TV_SYNC_handler+0x250>)
    420e:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    4212:	885b      	ldrh	r3, [r3, #2]
    4214:	4293      	cmp	r3, r2
    4216:	d1db      	bne.n	41d0 <TV_SYNC_handler+0x13c>
    4218:	4a2b      	ldr	r2, [pc, #172]	; (42c8 <TV_SYNC_handler+0x234>)
    421a:	8813      	ldrh	r3, [r2, #0]
    421c:	3301      	adds	r3, #1
    421e:	b29b      	uxth	r3, r3
    4220:	8013      	strh	r3, [r2, #0]
    4222:	2200      	movs	r2, #0
    4224:	4b29      	ldr	r3, [pc, #164]	; (42cc <TV_SYNC_handler+0x238>)
    4226:	801a      	strh	r2, [r3, #0]
    4228:	4a2a      	ldr	r2, [pc, #168]	; (42d4 <TV_SYNC_handler+0x240>)
    422a:	8813      	ldrh	r3, [r2, #0]
    422c:	b29b      	uxth	r3, r3
    422e:	f043 0304 	orr.w	r3, r3, #4
    4232:	8013      	strh	r3, [r2, #0]
    4234:	e7cc      	b.n	41d0 <TV_SYNC_handler+0x13c>
    4236:	4a25      	ldr	r2, [pc, #148]	; (42cc <TV_SYNC_handler+0x238>)
    4238:	8813      	ldrh	r3, [r2, #0]
    423a:	3301      	adds	r3, #1
    423c:	b29b      	uxth	r3, r3
    423e:	8013      	strh	r3, [r2, #0]
    4240:	4b20      	ldr	r3, [pc, #128]	; (42c4 <TV_SYNC_handler+0x230>)
    4242:	881a      	ldrh	r2, [r3, #0]
    4244:	b292      	uxth	r2, r2
    4246:	4b26      	ldr	r3, [pc, #152]	; (42e0 <TV_SYNC_handler+0x24c>)
    4248:	781b      	ldrb	r3, [r3, #0]
    424a:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    424e:	4925      	ldr	r1, [pc, #148]	; (42e4 <TV_SYNC_handler+0x250>)
    4250:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    4254:	889b      	ldrh	r3, [r3, #4]
    4256:	4293      	cmp	r3, r2
    4258:	d1ba      	bne.n	41d0 <TV_SYNC_handler+0x13c>
    425a:	4a1b      	ldr	r2, [pc, #108]	; (42c8 <TV_SYNC_handler+0x234>)
    425c:	8813      	ldrh	r3, [r2, #0]
    425e:	3301      	adds	r3, #1
    4260:	b29b      	uxth	r3, r3
    4262:	8013      	strh	r3, [r2, #0]
    4264:	4a1b      	ldr	r2, [pc, #108]	; (42d4 <TV_SYNC_handler+0x240>)
    4266:	8813      	ldrh	r3, [r2, #0]
    4268:	f023 0304 	bic.w	r3, r3, #4
    426c:	041b      	lsls	r3, r3, #16
    426e:	0c1b      	lsrs	r3, r3, #16
    4270:	8013      	strh	r3, [r2, #0]
    4272:	e7ad      	b.n	41d0 <TV_SYNC_handler+0x13c>
    4274:	4b13      	ldr	r3, [pc, #76]	; (42c4 <TV_SYNC_handler+0x230>)
    4276:	881b      	ldrh	r3, [r3, #0]
    4278:	b29b      	uxth	r3, r3
    427a:	f240 1207 	movw	r2, #263	; 0x107
    427e:	4293      	cmp	r3, r2
    4280:	d1a6      	bne.n	41d0 <TV_SYNC_handler+0x13c>
    4282:	4b14      	ldr	r3, [pc, #80]	; (42d4 <TV_SYNC_handler+0x240>)
    4284:	881b      	ldrh	r3, [r3, #0]
    4286:	f013 0f01 	tst.w	r3, #1
    428a:	d003      	beq.n	4294 <TV_SYNC_handler+0x200>
    428c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4290:	4b0f      	ldr	r3, [pc, #60]	; (42d0 <TV_SYNC_handler+0x23c>)
    4292:	62da      	str	r2, [r3, #44]	; 0x2c
    4294:	4a0f      	ldr	r2, [pc, #60]	; (42d4 <TV_SYNC_handler+0x240>)
    4296:	8813      	ldrh	r3, [r2, #0]
    4298:	b29b      	uxth	r3, r3
    429a:	f083 0301 	eor.w	r3, r3, #1
    429e:	8013      	strh	r3, [r2, #0]
    42a0:	8813      	ldrh	r3, [r2, #0]
    42a2:	b29b      	uxth	r3, r3
    42a4:	f043 0302 	orr.w	r3, r3, #2
    42a8:	8013      	strh	r3, [r2, #0]
    42aa:	2300      	movs	r3, #0
    42ac:	4a05      	ldr	r2, [pc, #20]	; (42c4 <TV_SYNC_handler+0x230>)
    42ae:	8013      	strh	r3, [r2, #0]
    42b0:	4a06      	ldr	r2, [pc, #24]	; (42cc <TV_SYNC_handler+0x238>)
    42b2:	8013      	strh	r3, [r2, #0]
    42b4:	4a04      	ldr	r2, [pc, #16]	; (42c8 <TV_SYNC_handler+0x234>)
    42b6:	8013      	strh	r3, [r2, #0]
    42b8:	4a05      	ldr	r2, [pc, #20]	; (42d0 <TV_SYNC_handler+0x23c>)
    42ba:	68d3      	ldr	r3, [r2, #12]
    42bc:	f023 0304 	bic.w	r3, r3, #4
    42c0:	60d3      	str	r3, [r2, #12]
    42c2:	e785      	b.n	41d0 <TV_SYNC_handler+0x13c>
    42c4:	2000050a 	.word	0x2000050a
    42c8:	20000504 	.word	0x20000504
    42cc:	20000508 	.word	0x20000508
    42d0:	40012c00 	.word	0x40012c00
    42d4:	20000506 	.word	0x20000506
    42d8:	40010800 	.word	0x40010800
    42dc:	20002534 	.word	0x20002534
    42e0:	20000502 	.word	0x20000502
    42e4:	00004a60 	.word	0x00004a60

000042e8 <frame_sync>:
    42e8:	b480      	push	{r7}
    42ea:	af00      	add	r7, sp, #0
    42ec:	bf00      	nop
    42ee:	4b05      	ldr	r3, [pc, #20]	; (4304 <frame_sync+0x1c>)
    42f0:	881b      	ldrh	r3, [r3, #0]
    42f2:	b29b      	uxth	r3, r3
    42f4:	f003 0302 	and.w	r3, r3, #2
    42f8:	2b00      	cmp	r3, #0
    42fa:	d0f8      	beq.n	42ee <frame_sync+0x6>
    42fc:	bf00      	nop
    42fe:	46bd      	mov	sp, r7
    4300:	bc80      	pop	{r7}
    4302:	4770      	bx	lr
    4304:	20000506 	.word	0x20000506

00004308 <btn_wait_down>:
    4308:	b580      	push	{r7, lr}
    430a:	b084      	sub	sp, #16
    430c:	af00      	add	r7, sp, #0
    430e:	4603      	mov	r3, r0
    4310:	80fb      	strh	r3, [r7, #6]
    4312:	2300      	movs	r3, #0
    4314:	60fb      	str	r3, [r7, #12]
    4316:	e014      	b.n	4342 <btn_wait_down+0x3a>
    4318:	4b10      	ldr	r3, [pc, #64]	; (435c <btn_wait_down+0x54>)
    431a:	689b      	ldr	r3, [r3, #8]
    431c:	b29a      	uxth	r2, r3
    431e:	88fb      	ldrh	r3, [r7, #6]
    4320:	4013      	ands	r3, r2
    4322:	b29b      	uxth	r3, r3
    4324:	4a0e      	ldr	r2, [pc, #56]	; (4360 <btn_wait_down+0x58>)
    4326:	4619      	mov	r1, r3
    4328:	8011      	strh	r1, [r2, #0]
    432a:	88fa      	ldrh	r2, [r7, #6]
    432c:	429a      	cmp	r2, r3
    432e:	d102      	bne.n	4336 <btn_wait_down+0x2e>
    4330:	2300      	movs	r3, #0
    4332:	60fb      	str	r3, [r7, #12]
    4334:	e002      	b.n	433c <btn_wait_down+0x34>
    4336:	68fb      	ldr	r3, [r7, #12]
    4338:	3301      	adds	r3, #1
    433a:	60fb      	str	r3, [r7, #12]
    433c:	2001      	movs	r0, #1
    433e:	f7ff fa67 	bl	3810 <pause>
    4342:	68fb      	ldr	r3, [r7, #12]
    4344:	2b13      	cmp	r3, #19
    4346:	dde7      	ble.n	4318 <btn_wait_down+0x10>
    4348:	4b05      	ldr	r3, [pc, #20]	; (4360 <btn_wait_down+0x58>)
    434a:	881b      	ldrh	r3, [r3, #0]
    434c:	b29b      	uxth	r3, r3
    434e:	43db      	mvns	r3, r3
    4350:	b29b      	uxth	r3, r3
    4352:	4618      	mov	r0, r3
    4354:	3710      	adds	r7, #16
    4356:	46bd      	mov	sp, r7
    4358:	bd80      	pop	{r7, pc}
    435a:	bf00      	nop
    435c:	40010800 	.word	0x40010800
    4360:	20002534 	.word	0x20002534

00004364 <btn_wait_up>:
    4364:	b580      	push	{r7, lr}
    4366:	b084      	sub	sp, #16
    4368:	af00      	add	r7, sp, #0
    436a:	4603      	mov	r3, r0
    436c:	80fb      	strh	r3, [r7, #6]
    436e:	2300      	movs	r3, #0
    4370:	60fb      	str	r3, [r7, #12]
    4372:	e00f      	b.n	4394 <btn_wait_up+0x30>
    4374:	4b0b      	ldr	r3, [pc, #44]	; (43a4 <btn_wait_up+0x40>)
    4376:	689a      	ldr	r2, [r3, #8]
    4378:	88fb      	ldrh	r3, [r7, #6]
    437a:	401a      	ands	r2, r3
    437c:	88fb      	ldrh	r3, [r7, #6]
    437e:	429a      	cmp	r2, r3
    4380:	d002      	beq.n	4388 <btn_wait_up+0x24>
    4382:	2300      	movs	r3, #0
    4384:	60fb      	str	r3, [r7, #12]
    4386:	e002      	b.n	438e <btn_wait_up+0x2a>
    4388:	68fb      	ldr	r3, [r7, #12]
    438a:	3301      	adds	r3, #1
    438c:	60fb      	str	r3, [r7, #12]
    438e:	2001      	movs	r0, #1
    4390:	f7ff fa3e 	bl	3810 <pause>
    4394:	68fb      	ldr	r3, [r7, #12]
    4396:	2b13      	cmp	r3, #19
    4398:	ddec      	ble.n	4374 <btn_wait_up+0x10>
    439a:	bf00      	nop
    439c:	3710      	adds	r7, #16
    439e:	46bd      	mov	sp, r7
    43a0:	bd80      	pop	{r7, pc}
    43a2:	bf00      	nop
    43a4:	40010800 	.word	0x40010800

000043a8 <btn_query_down>:
    43a8:	b480      	push	{r7}
    43aa:	b083      	sub	sp, #12
    43ac:	af00      	add	r7, sp, #0
    43ae:	4603      	mov	r3, r0
    43b0:	80fb      	strh	r3, [r7, #6]
    43b2:	4b07      	ldr	r3, [pc, #28]	; (43d0 <btn_query_down+0x28>)
    43b4:	689a      	ldr	r2, [r3, #8]
    43b6:	88fb      	ldrh	r3, [r7, #6]
    43b8:	4013      	ands	r3, r2
    43ba:	2b00      	cmp	r3, #0
    43bc:	bf0c      	ite	eq
    43be:	2301      	moveq	r3, #1
    43c0:	2300      	movne	r3, #0
    43c2:	b2db      	uxtb	r3, r3
    43c4:	4618      	mov	r0, r3
    43c6:	370c      	adds	r7, #12
    43c8:	46bd      	mov	sp, r7
    43ca:	bc80      	pop	{r7}
    43cc:	4770      	bx	lr
    43ce:	bf00      	nop
    43d0:	40010800 	.word	0x40010800

000043d4 <set_video_mode>:
    43d4:	b580      	push	{r7, lr}
    43d6:	b082      	sub	sp, #8
    43d8:	af00      	add	r7, sp, #0
    43da:	4603      	mov	r3, r0
    43dc:	71fb      	strb	r3, [r7, #7]
    43de:	f7fd fc0f 	bl	1c00 <gfx_cls>
    43e2:	f7ff ff81 	bl	42e8 <frame_sync>
    43e6:	4a03      	ldr	r2, [pc, #12]	; (43f4 <set_video_mode+0x20>)
    43e8:	79fb      	ldrb	r3, [r7, #7]
    43ea:	7013      	strb	r3, [r2, #0]
    43ec:	bf00      	nop
    43ee:	3708      	adds	r7, #8
    43f0:	46bd      	mov	sp, r7
    43f2:	bd80      	pop	{r7, pc}
    43f4:	20000502 	.word	0x20000502

000043f8 <get_video_params>:
    43f8:	b480      	push	{r7}
    43fa:	af00      	add	r7, sp, #0
    43fc:	4b06      	ldr	r3, [pc, #24]	; (4418 <get_video_params+0x20>)
    43fe:	781b      	ldrb	r3, [r3, #0]
    4400:	461a      	mov	r2, r3
    4402:	4613      	mov	r3, r2
    4404:	00db      	lsls	r3, r3, #3
    4406:	4413      	add	r3, r2
    4408:	005b      	lsls	r3, r3, #1
    440a:	4a04      	ldr	r2, [pc, #16]	; (441c <get_video_params+0x24>)
    440c:	4413      	add	r3, r2
    440e:	4618      	mov	r0, r3
    4410:	46bd      	mov	sp, r7
    4412:	bc80      	pop	{r7}
    4414:	4770      	bx	lr
    4416:	bf00      	nop
    4418:	20000502 	.word	0x20000502
    441c:	00004a60 	.word	0x00004a60
