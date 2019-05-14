
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 9d 31 00 00     C...I...O....1..
      20:	9d 31 00 00 9d 31 00 00 9d 31 00 00 55 02 00 00     .1...1...1..U...
      30:	9d 31 00 00 9d 31 00 00 5b 02 00 00 85 32 00 00     .1...1..[....2..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 d5 2e 00 00     g...m...y.......
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 9d 31 00 00 9d 31 00 00 b5 02 00 00     .....1...1......
      80:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..
      90:	9d 31 00 00 9d 31 00 00 9d 31 00 00 bb 02 00 00     .1...1...1......
      a0:	9d 31 00 00 99 3a 00 00 9d 31 00 00 ad 39 00 00     .1...:...1...9..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 9d 31 00 00     .............1..
      c0:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..
      d0:	9d 31 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .1..............
      e0:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..
      f0:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..
     100:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..
     110:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..
     120:	9d 31 00 00 9d 31 00 00 9d 31 00 00 9d 31 00 00     .1...1...1...1..

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
     18e:	f001 febf 	bl	1f10 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005a 	.word	0x2000005a
     1a0:	20004cd0 	.word	0x20004cd0
     1a4:	00004400 	.word	0x00004400
     1a8:	20000000 	.word	0x20000000
     1ac:	2000005a 	.word	0x2000005a
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
     1dc:	f002 ffe6 	bl	31ac <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 ffda 	bl	31ac <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 ffce 	bl	31ac <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 ffc9 	bl	31ac <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	000042a8 	.word	0x000042a8
     230:	000042c0 	.word	0x000042c0
     234:	000042cc 	.word	0x000042cc
     238:	000042dc 	.word	0x000042dc

0000023c <NMI_handler>:
     23c:	f002 ffae 	bl	319c <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 ffab 	bl	319c <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 ffa8 	bl	319c <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 ffa5 	bl	319c <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 ffa2 	bl	319c <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 ff9f 	bl	319c <reset_mcu>
     25e:	bf00      	nop
     260:	f002 ff9c 	bl	319c <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 ff99 	bl	319c <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 ff96 	bl	319c <reset_mcu>
     270:	bf00      	nop
     272:	f002 ff93 	bl	319c <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 ff90 	bl	319c <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 ff8d 	bl	319c <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 ff8a 	bl	319c <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 ff87 	bl	319c <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 ff84 	bl	319c <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 ff81 	bl	319c <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 ff7e 	bl	319c <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 ff7b 	bl	319c <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 ff78 	bl	319c <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 ff75 	bl	319c <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 ff72 	bl	319c <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 ff6f 	bl	319c <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 ff6c 	bl	319c <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 ff69 	bl	319c <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 ff66 	bl	319c <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 ff63 	bl	319c <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f002 ff60 	bl	319c <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f002 ff5d 	bl	319c <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f002 ff5a 	bl	319c <reset_mcu>
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
     3c8:	f002 ffa8 	bl	331c <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f002 ff95 	bl	32fc <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 f8dc 	bl	3590 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 f8d9 	bl	3590 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 f8f5 	bl	35d6 <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 f8ee 	bl	35d6 <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 f8e7 	bl	35d6 <print_int>
     408:	f002 ff88 	bl	331c <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 f8bf 	bl	3590 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 f8dc 	bl	35d6 <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 f8b6 	bl	3590 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 f8d3 	bl	35d6 <print_int>
     430:	f002 ff74 	bl	331c <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 f8ab 	bl	3590 <print>
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
     44e:	f003 f8c2 	bl	35d6 <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f002 ff5d 	bl	331c <new_line>
     462:	f003 f9e9 	bl	3838 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	00003d54 	.word	0x00003d54
     474:	2000005c 	.word	0x2000005c
     478:	00003d58 	.word	0x00003d58
     47c:	00003d5c 	.word	0x00003d5c
     480:	00003d64 	.word	0x00003d64

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

0000051e <rand>:
     51e:	b480      	push	{r7}
     520:	af00      	add	r7, sp, #0
     522:	bf00      	nop
     524:	4618      	mov	r0, r3
     526:	46bd      	mov	sp, r7
     528:	bc80      	pop	{r7}
     52a:	4770      	bx	lr

0000052c <schipp>:
     52c:	b590      	push	{r4, r7, lr}
     52e:	b087      	sub	sp, #28
     530:	af02      	add	r7, sp, #8
     532:	4603      	mov	r3, r0
     534:	80fb      	strh	r3, [r7, #6]
     536:	4aaf      	ldr	r2, [pc, #700]	; (7f4 <schipp+0x2c8>)
     538:	88fb      	ldrh	r3, [r7, #6]
     53a:	8013      	strh	r3, [r2, #0]
     53c:	4bad      	ldr	r3, [pc, #692]	; (7f4 <schipp+0x2c8>)
     53e:	2200      	movs	r2, #0
     540:	711a      	strb	r2, [r3, #4]
     542:	4bac      	ldr	r3, [pc, #688]	; (7f4 <schipp+0x2c8>)
     544:	2200      	movs	r2, #0
     546:	805a      	strh	r2, [r3, #2]
     548:	4baa      	ldr	r3, [pc, #680]	; (7f4 <schipp+0x2c8>)
     54a:	881b      	ldrh	r3, [r3, #0]
     54c:	461a      	mov	r2, r3
     54e:	4baa      	ldr	r3, [pc, #680]	; (7f8 <schipp+0x2cc>)
     550:	5c9a      	ldrb	r2, [r3, r2]
     552:	4ba8      	ldr	r3, [pc, #672]	; (7f4 <schipp+0x2c8>)
     554:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
     558:	4ba6      	ldr	r3, [pc, #664]	; (7f4 <schipp+0x2c8>)
     55a:	881b      	ldrh	r3, [r3, #0]
     55c:	3301      	adds	r3, #1
     55e:	4aa6      	ldr	r2, [pc, #664]	; (7f8 <schipp+0x2cc>)
     560:	5cd2      	ldrb	r2, [r2, r3]
     562:	4ba4      	ldr	r3, [pc, #656]	; (7f4 <schipp+0x2c8>)
     564:	f883 2027 	strb.w	r2, [r3, #39]	; 0x27
     568:	4ba2      	ldr	r3, [pc, #648]	; (7f4 <schipp+0x2c8>)
     56a:	881b      	ldrh	r3, [r3, #0]
     56c:	3302      	adds	r3, #2
     56e:	b29a      	uxth	r2, r3
     570:	4ba0      	ldr	r3, [pc, #640]	; (7f4 <schipp+0x2c8>)
     572:	801a      	strh	r2, [r3, #0]
     574:	4b9f      	ldr	r3, [pc, #636]	; (7f4 <schipp+0x2c8>)
     576:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     57a:	f003 030f 	and.w	r3, r3, #15
     57e:	73bb      	strb	r3, [r7, #14]
     580:	4b9c      	ldr	r3, [pc, #624]	; (7f4 <schipp+0x2c8>)
     582:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     586:	091b      	lsrs	r3, r3, #4
     588:	737b      	strb	r3, [r7, #13]
     58a:	4b9a      	ldr	r3, [pc, #616]	; (7f4 <schipp+0x2c8>)
     58c:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     590:	091b      	lsrs	r3, r3, #4
     592:	b2db      	uxtb	r3, r3
     594:	2b0f      	cmp	r3, #15
     596:	d8d7      	bhi.n	548 <schipp+0x1c>
     598:	a201      	add	r2, pc, #4	; (adr r2, 5a0 <schipp+0x74>)
     59a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     59e:	bf00      	nop
     5a0:	000005e1 	.word	0x000005e1
     5a4:	0000070f 	.word	0x0000070f
     5a8:	00000731 	.word	0x00000731
     5ac:	00000773 	.word	0x00000773
     5b0:	00000797 	.word	0x00000797
     5b4:	000007bb 	.word	0x000007bb
     5b8:	000007e1 	.word	0x000007e1
     5bc:	000007fd 	.word	0x000007fd
     5c0:	00000841 	.word	0x00000841
     5c4:	00000a2f 	.word	0x00000a2f
     5c8:	00000cc9 	.word	0x00000cc9
     5cc:	00000ce9 	.word	0x00000ce9
     5d0:	00000d17 	.word	0x00000d17
     5d4:	00000d41 	.word	0x00000d41
     5d8:	00000dcb 	.word	0x00000dcb
     5dc:	00000e2f 	.word	0x00000e2f
     5e0:	4b84      	ldr	r3, [pc, #528]	; (7f4 <schipp+0x2c8>)
     5e2:	f893 2026 	ldrb.w	r2, [r3, #38]	; 0x26
     5e6:	4b83      	ldr	r3, [pc, #524]	; (7f4 <schipp+0x2c8>)
     5e8:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     5ec:	4313      	orrs	r3, r2
     5ee:	b2db      	uxtb	r3, r3
     5f0:	2b00      	cmp	r3, #0
     5f2:	f000 852b 	beq.w	104c <schipp+0xb20>
     5f6:	4b7f      	ldr	r3, [pc, #508]	; (7f4 <schipp+0x2c8>)
     5f8:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     5fc:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     600:	2bc0      	cmp	r3, #192	; 0xc0
     602:	d10a      	bne.n	61a <schipp+0xee>
     604:	4b7b      	ldr	r3, [pc, #492]	; (7f4 <schipp+0x2c8>)
     606:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     60a:	f003 030f 	and.w	r3, r3, #15
     60e:	b2db      	uxtb	r3, r3
     610:	4618      	mov	r0, r3
     612:	f001 fb39 	bl	1c88 <gfx_scroll_down>
     616:	f000 bd19 	b.w	104c <schipp+0xb20>
     61a:	4b76      	ldr	r3, [pc, #472]	; (7f4 <schipp+0x2c8>)
     61c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     620:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     624:	2bd0      	cmp	r3, #208	; 0xd0
     626:	d10a      	bne.n	63e <schipp+0x112>
     628:	4b72      	ldr	r3, [pc, #456]	; (7f4 <schipp+0x2c8>)
     62a:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     62e:	f003 030f 	and.w	r3, r3, #15
     632:	b2db      	uxtb	r3, r3
     634:	4618      	mov	r0, r3
     636:	f001 faf5 	bl	1c24 <gfx_scroll_up>
     63a:	f000 bd07 	b.w	104c <schipp+0xb20>
     63e:	4b6d      	ldr	r3, [pc, #436]	; (7f4 <schipp+0x2c8>)
     640:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     644:	3be0      	subs	r3, #224	; 0xe0
     646:	2b1f      	cmp	r3, #31
     648:	d85b      	bhi.n	702 <schipp+0x1d6>
     64a:	a201      	add	r2, pc, #4	; (adr r2, 650 <schipp+0x124>)
     64c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     650:	000006d1 	.word	0x000006d1
     654:	00000703 	.word	0x00000703
     658:	00000703 	.word	0x00000703
     65c:	00000703 	.word	0x00000703
     660:	00000703 	.word	0x00000703
     664:	00000703 	.word	0x00000703
     668:	00000703 	.word	0x00000703
     66c:	00000703 	.word	0x00000703
     670:	00000703 	.word	0x00000703
     674:	00000703 	.word	0x00000703
     678:	00000703 	.word	0x00000703
     67c:	00000703 	.word	0x00000703
     680:	00000703 	.word	0x00000703
     684:	00000703 	.word	0x00000703
     688:	000006d7 	.word	0x000006d7
     68c:	00000703 	.word	0x00000703
     690:	00000703 	.word	0x00000703
     694:	00000703 	.word	0x00000703
     698:	00000703 	.word	0x00000703
     69c:	00000703 	.word	0x00000703
     6a0:	00000703 	.word	0x00000703
     6a4:	00000703 	.word	0x00000703
     6a8:	00000703 	.word	0x00000703
     6ac:	00000703 	.word	0x00000703
     6b0:	00000703 	.word	0x00000703
     6b4:	00000703 	.word	0x00000703
     6b8:	00000703 	.word	0x00000703
     6bc:	000006f1 	.word	0x000006f1
     6c0:	000006f7 	.word	0x000006f7
     6c4:	000006fd 	.word	0x000006fd
     6c8:	00000709 	.word	0x00000709
     6cc:	00000709 	.word	0x00000709
     6d0:	f003 f8bc 	bl	384c <clear_screen>
     6d4:	e019      	b.n	70a <schipp+0x1de>
     6d6:	4b47      	ldr	r3, [pc, #284]	; (7f4 <schipp+0x2c8>)
     6d8:	791b      	ldrb	r3, [r3, #4]
     6da:	1e5a      	subs	r2, r3, #1
     6dc:	b2d1      	uxtb	r1, r2
     6de:	4a45      	ldr	r2, [pc, #276]	; (7f4 <schipp+0x2c8>)
     6e0:	7111      	strb	r1, [r2, #4]
     6e2:	4a44      	ldr	r2, [pc, #272]	; (7f4 <schipp+0x2c8>)
     6e4:	3314      	adds	r3, #20
     6e6:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     6ea:	4b42      	ldr	r3, [pc, #264]	; (7f4 <schipp+0x2c8>)
     6ec:	801a      	strh	r2, [r3, #0]
     6ee:	e00c      	b.n	70a <schipp+0x1de>
     6f0:	f7ff fec8 	bl	484 <chip_scroll_right>
     6f4:	e009      	b.n	70a <schipp+0x1de>
     6f6:	f7ff fecb 	bl	490 <chip_scroll_left>
     6fa:	e006      	b.n	70a <schipp+0x1de>
     6fc:	2301      	movs	r3, #1
     6fe:	f000 bcb1 	b.w	1064 <schipp+0xb38>
     702:	2302      	movs	r3, #2
     704:	f000 bcae 	b.w	1064 <schipp+0xb38>
     708:	bf00      	nop
     70a:	f000 bc9f 	b.w	104c <schipp+0xb20>
     70e:	4b39      	ldr	r3, [pc, #228]	; (7f4 <schipp+0x2c8>)
     710:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     714:	021b      	lsls	r3, r3, #8
     716:	4a37      	ldr	r2, [pc, #220]	; (7f4 <schipp+0x2c8>)
     718:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     71c:	4313      	orrs	r3, r2
     71e:	005b      	lsls	r3, r3, #1
     720:	b29b      	uxth	r3, r3
     722:	f3c3 030b 	ubfx	r3, r3, #0, #12
     726:	b29a      	uxth	r2, r3
     728:	4b32      	ldr	r3, [pc, #200]	; (7f4 <schipp+0x2c8>)
     72a:	801a      	strh	r2, [r3, #0]
     72c:	f000 bc98 	b.w	1060 <schipp+0xb34>
     730:	4b30      	ldr	r3, [pc, #192]	; (7f4 <schipp+0x2c8>)
     732:	791b      	ldrb	r3, [r3, #4]
     734:	3301      	adds	r3, #1
     736:	b2da      	uxtb	r2, r3
     738:	4b2e      	ldr	r3, [pc, #184]	; (7f4 <schipp+0x2c8>)
     73a:	711a      	strb	r2, [r3, #4]
     73c:	4b2d      	ldr	r3, [pc, #180]	; (7f4 <schipp+0x2c8>)
     73e:	791b      	ldrb	r3, [r3, #4]
     740:	4618      	mov	r0, r3
     742:	4b2c      	ldr	r3, [pc, #176]	; (7f4 <schipp+0x2c8>)
     744:	8819      	ldrh	r1, [r3, #0]
     746:	4a2b      	ldr	r2, [pc, #172]	; (7f4 <schipp+0x2c8>)
     748:	f100 0314 	add.w	r3, r0, #20
     74c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     750:	4b28      	ldr	r3, [pc, #160]	; (7f4 <schipp+0x2c8>)
     752:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     756:	021b      	lsls	r3, r3, #8
     758:	4a26      	ldr	r2, [pc, #152]	; (7f4 <schipp+0x2c8>)
     75a:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     75e:	4313      	orrs	r3, r2
     760:	005b      	lsls	r3, r3, #1
     762:	b29b      	uxth	r3, r3
     764:	f3c3 030b 	ubfx	r3, r3, #0, #12
     768:	b29a      	uxth	r2, r3
     76a:	4b22      	ldr	r3, [pc, #136]	; (7f4 <schipp+0x2c8>)
     76c:	801a      	strh	r2, [r3, #0]
     76e:	f000 bc77 	b.w	1060 <schipp+0xb34>
     772:	7bbb      	ldrb	r3, [r7, #14]
     774:	4a1f      	ldr	r2, [pc, #124]	; (7f4 <schipp+0x2c8>)
     776:	4413      	add	r3, r2
     778:	795a      	ldrb	r2, [r3, #5]
     77a:	4b1e      	ldr	r3, [pc, #120]	; (7f4 <schipp+0x2c8>)
     77c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     780:	429a      	cmp	r2, r3
     782:	f040 8466 	bne.w	1052 <schipp+0xb26>
     786:	4b1b      	ldr	r3, [pc, #108]	; (7f4 <schipp+0x2c8>)
     788:	881b      	ldrh	r3, [r3, #0]
     78a:	3302      	adds	r3, #2
     78c:	b29a      	uxth	r2, r3
     78e:	4b19      	ldr	r3, [pc, #100]	; (7f4 <schipp+0x2c8>)
     790:	801a      	strh	r2, [r3, #0]
     792:	f000 bc5e 	b.w	1052 <schipp+0xb26>
     796:	7bbb      	ldrb	r3, [r7, #14]
     798:	4a16      	ldr	r2, [pc, #88]	; (7f4 <schipp+0x2c8>)
     79a:	4413      	add	r3, r2
     79c:	795a      	ldrb	r2, [r3, #5]
     79e:	4b15      	ldr	r3, [pc, #84]	; (7f4 <schipp+0x2c8>)
     7a0:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     7a4:	429a      	cmp	r2, r3
     7a6:	f000 8457 	beq.w	1058 <schipp+0xb2c>
     7aa:	4b12      	ldr	r3, [pc, #72]	; (7f4 <schipp+0x2c8>)
     7ac:	881b      	ldrh	r3, [r3, #0]
     7ae:	3302      	adds	r3, #2
     7b0:	b29a      	uxth	r2, r3
     7b2:	4b10      	ldr	r3, [pc, #64]	; (7f4 <schipp+0x2c8>)
     7b4:	801a      	strh	r2, [r3, #0]
     7b6:	f000 bc4f 	b.w	1058 <schipp+0xb2c>
     7ba:	7bbb      	ldrb	r3, [r7, #14]
     7bc:	4a0d      	ldr	r2, [pc, #52]	; (7f4 <schipp+0x2c8>)
     7be:	4413      	add	r3, r2
     7c0:	795a      	ldrb	r2, [r3, #5]
     7c2:	7b7b      	ldrb	r3, [r7, #13]
     7c4:	490b      	ldr	r1, [pc, #44]	; (7f4 <schipp+0x2c8>)
     7c6:	440b      	add	r3, r1
     7c8:	795b      	ldrb	r3, [r3, #5]
     7ca:	429a      	cmp	r2, r3
     7cc:	f040 8447 	bne.w	105e <schipp+0xb32>
     7d0:	4b08      	ldr	r3, [pc, #32]	; (7f4 <schipp+0x2c8>)
     7d2:	881b      	ldrh	r3, [r3, #0]
     7d4:	3302      	adds	r3, #2
     7d6:	b29a      	uxth	r2, r3
     7d8:	4b06      	ldr	r3, [pc, #24]	; (7f4 <schipp+0x2c8>)
     7da:	801a      	strh	r2, [r3, #0]
     7dc:	f000 bc3f 	b.w	105e <schipp+0xb32>
     7e0:	7bbb      	ldrb	r3, [r7, #14]
     7e2:	4a04      	ldr	r2, [pc, #16]	; (7f4 <schipp+0x2c8>)
     7e4:	f892 1027 	ldrb.w	r1, [r2, #39]	; 0x27
     7e8:	4a02      	ldr	r2, [pc, #8]	; (7f4 <schipp+0x2c8>)
     7ea:	4413      	add	r3, r2
     7ec:	460a      	mov	r2, r1
     7ee:	715a      	strb	r2, [r3, #5]
     7f0:	f000 bc36 	b.w	1060 <schipp+0xb34>
     7f4:	2000005c 	.word	0x2000005c
     7f8:	200004fc 	.word	0x200004fc
     7fc:	7bbb      	ldrb	r3, [r7, #14]
     7fe:	4aaa      	ldr	r2, [pc, #680]	; (aa8 <schipp+0x57c>)
     800:	4413      	add	r3, r2
     802:	795b      	ldrb	r3, [r3, #5]
     804:	461a      	mov	r2, r3
     806:	4ba8      	ldr	r3, [pc, #672]	; (aa8 <schipp+0x57c>)
     808:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     80c:	4413      	add	r3, r2
     80e:	2bff      	cmp	r3, #255	; 0xff
     810:	bfcc      	ite	gt
     812:	2301      	movgt	r3, #1
     814:	2300      	movle	r3, #0
     816:	b2db      	uxtb	r3, r3
     818:	73fb      	strb	r3, [r7, #15]
     81a:	7bbb      	ldrb	r3, [r7, #14]
     81c:	7bba      	ldrb	r2, [r7, #14]
     81e:	49a2      	ldr	r1, [pc, #648]	; (aa8 <schipp+0x57c>)
     820:	440a      	add	r2, r1
     822:	7951      	ldrb	r1, [r2, #5]
     824:	4aa0      	ldr	r2, [pc, #640]	; (aa8 <schipp+0x57c>)
     826:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     82a:	440a      	add	r2, r1
     82c:	b2d1      	uxtb	r1, r2
     82e:	4a9e      	ldr	r2, [pc, #632]	; (aa8 <schipp+0x57c>)
     830:	4413      	add	r3, r2
     832:	460a      	mov	r2, r1
     834:	715a      	strb	r2, [r3, #5]
     836:	4a9c      	ldr	r2, [pc, #624]	; (aa8 <schipp+0x57c>)
     838:	7bfb      	ldrb	r3, [r7, #15]
     83a:	7513      	strb	r3, [r2, #20]
     83c:	f000 bc10 	b.w	1060 <schipp+0xb34>
     840:	4b99      	ldr	r3, [pc, #612]	; (aa8 <schipp+0x57c>)
     842:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     846:	f003 030f 	and.w	r3, r3, #15
     84a:	2b0e      	cmp	r3, #14
     84c:	f200 80ec 	bhi.w	a28 <schipp+0x4fc>
     850:	a201      	add	r2, pc, #4	; (adr r2, 858 <schipp+0x32c>)
     852:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     856:	bf00      	nop
     858:	00000895 	.word	0x00000895
     85c:	000008a9 	.word	0x000008a9
     860:	000008c9 	.word	0x000008c9
     864:	000008e9 	.word	0x000008e9
     868:	00000909 	.word	0x00000909
     86c:	0000094f 	.word	0x0000094f
     870:	00000991 	.word	0x00000991
     874:	000009bd 	.word	0x000009bd
     878:	00000a29 	.word	0x00000a29
     87c:	00000a29 	.word	0x00000a29
     880:	00000a29 	.word	0x00000a29
     884:	00000a29 	.word	0x00000a29
     888:	00000a29 	.word	0x00000a29
     88c:	00000a29 	.word	0x00000a29
     890:	000009ff 	.word	0x000009ff
     894:	7bbb      	ldrb	r3, [r7, #14]
     896:	7b7a      	ldrb	r2, [r7, #13]
     898:	4983      	ldr	r1, [pc, #524]	; (aa8 <schipp+0x57c>)
     89a:	440a      	add	r2, r1
     89c:	7951      	ldrb	r1, [r2, #5]
     89e:	4a82      	ldr	r2, [pc, #520]	; (aa8 <schipp+0x57c>)
     8a0:	4413      	add	r3, r2
     8a2:	460a      	mov	r2, r1
     8a4:	715a      	strb	r2, [r3, #5]
     8a6:	e0c1      	b.n	a2c <schipp+0x500>
     8a8:	7bbb      	ldrb	r3, [r7, #14]
     8aa:	7bba      	ldrb	r2, [r7, #14]
     8ac:	497e      	ldr	r1, [pc, #504]	; (aa8 <schipp+0x57c>)
     8ae:	440a      	add	r2, r1
     8b0:	7951      	ldrb	r1, [r2, #5]
     8b2:	7b7a      	ldrb	r2, [r7, #13]
     8b4:	487c      	ldr	r0, [pc, #496]	; (aa8 <schipp+0x57c>)
     8b6:	4402      	add	r2, r0
     8b8:	7952      	ldrb	r2, [r2, #5]
     8ba:	430a      	orrs	r2, r1
     8bc:	b2d1      	uxtb	r1, r2
     8be:	4a7a      	ldr	r2, [pc, #488]	; (aa8 <schipp+0x57c>)
     8c0:	4413      	add	r3, r2
     8c2:	460a      	mov	r2, r1
     8c4:	715a      	strb	r2, [r3, #5]
     8c6:	e0b1      	b.n	a2c <schipp+0x500>
     8c8:	7bbb      	ldrb	r3, [r7, #14]
     8ca:	7bba      	ldrb	r2, [r7, #14]
     8cc:	4976      	ldr	r1, [pc, #472]	; (aa8 <schipp+0x57c>)
     8ce:	440a      	add	r2, r1
     8d0:	7951      	ldrb	r1, [r2, #5]
     8d2:	7b7a      	ldrb	r2, [r7, #13]
     8d4:	4874      	ldr	r0, [pc, #464]	; (aa8 <schipp+0x57c>)
     8d6:	4402      	add	r2, r0
     8d8:	7952      	ldrb	r2, [r2, #5]
     8da:	400a      	ands	r2, r1
     8dc:	b2d1      	uxtb	r1, r2
     8de:	4a72      	ldr	r2, [pc, #456]	; (aa8 <schipp+0x57c>)
     8e0:	4413      	add	r3, r2
     8e2:	460a      	mov	r2, r1
     8e4:	715a      	strb	r2, [r3, #5]
     8e6:	e0a1      	b.n	a2c <schipp+0x500>
     8e8:	7bbb      	ldrb	r3, [r7, #14]
     8ea:	7bba      	ldrb	r2, [r7, #14]
     8ec:	496e      	ldr	r1, [pc, #440]	; (aa8 <schipp+0x57c>)
     8ee:	440a      	add	r2, r1
     8f0:	7951      	ldrb	r1, [r2, #5]
     8f2:	7b7a      	ldrb	r2, [r7, #13]
     8f4:	486c      	ldr	r0, [pc, #432]	; (aa8 <schipp+0x57c>)
     8f6:	4402      	add	r2, r0
     8f8:	7952      	ldrb	r2, [r2, #5]
     8fa:	404a      	eors	r2, r1
     8fc:	b2d1      	uxtb	r1, r2
     8fe:	4a6a      	ldr	r2, [pc, #424]	; (aa8 <schipp+0x57c>)
     900:	4413      	add	r3, r2
     902:	460a      	mov	r2, r1
     904:	715a      	strb	r2, [r3, #5]
     906:	e091      	b.n	a2c <schipp+0x500>
     908:	7bbb      	ldrb	r3, [r7, #14]
     90a:	4a67      	ldr	r2, [pc, #412]	; (aa8 <schipp+0x57c>)
     90c:	4413      	add	r3, r2
     90e:	795b      	ldrb	r3, [r3, #5]
     910:	4619      	mov	r1, r3
     912:	7b7b      	ldrb	r3, [r7, #13]
     914:	4a64      	ldr	r2, [pc, #400]	; (aa8 <schipp+0x57c>)
     916:	4413      	add	r3, r2
     918:	795b      	ldrb	r3, [r3, #5]
     91a:	440b      	add	r3, r1
     91c:	2bff      	cmp	r3, #255	; 0xff
     91e:	bfcc      	ite	gt
     920:	2301      	movgt	r3, #1
     922:	2300      	movle	r3, #0
     924:	b2db      	uxtb	r3, r3
     926:	73fb      	strb	r3, [r7, #15]
     928:	7bbb      	ldrb	r3, [r7, #14]
     92a:	7bba      	ldrb	r2, [r7, #14]
     92c:	495e      	ldr	r1, [pc, #376]	; (aa8 <schipp+0x57c>)
     92e:	440a      	add	r2, r1
     930:	7951      	ldrb	r1, [r2, #5]
     932:	7b7a      	ldrb	r2, [r7, #13]
     934:	485c      	ldr	r0, [pc, #368]	; (aa8 <schipp+0x57c>)
     936:	4402      	add	r2, r0
     938:	7952      	ldrb	r2, [r2, #5]
     93a:	440a      	add	r2, r1
     93c:	b2d1      	uxtb	r1, r2
     93e:	4a5a      	ldr	r2, [pc, #360]	; (aa8 <schipp+0x57c>)
     940:	4413      	add	r3, r2
     942:	460a      	mov	r2, r1
     944:	715a      	strb	r2, [r3, #5]
     946:	4a58      	ldr	r2, [pc, #352]	; (aa8 <schipp+0x57c>)
     948:	7bfb      	ldrb	r3, [r7, #15]
     94a:	7513      	strb	r3, [r2, #20]
     94c:	e06e      	b.n	a2c <schipp+0x500>
     94e:	7bbb      	ldrb	r3, [r7, #14]
     950:	4a55      	ldr	r2, [pc, #340]	; (aa8 <schipp+0x57c>)
     952:	4413      	add	r3, r2
     954:	795a      	ldrb	r2, [r3, #5]
     956:	7b7b      	ldrb	r3, [r7, #13]
     958:	4953      	ldr	r1, [pc, #332]	; (aa8 <schipp+0x57c>)
     95a:	440b      	add	r3, r1
     95c:	795b      	ldrb	r3, [r3, #5]
     95e:	429a      	cmp	r2, r3
     960:	bf2c      	ite	cs
     962:	2301      	movcs	r3, #1
     964:	2300      	movcc	r3, #0
     966:	b2db      	uxtb	r3, r3
     968:	73fb      	strb	r3, [r7, #15]
     96a:	7bbb      	ldrb	r3, [r7, #14]
     96c:	7bba      	ldrb	r2, [r7, #14]
     96e:	494e      	ldr	r1, [pc, #312]	; (aa8 <schipp+0x57c>)
     970:	440a      	add	r2, r1
     972:	7951      	ldrb	r1, [r2, #5]
     974:	7b7a      	ldrb	r2, [r7, #13]
     976:	484c      	ldr	r0, [pc, #304]	; (aa8 <schipp+0x57c>)
     978:	4402      	add	r2, r0
     97a:	7952      	ldrb	r2, [r2, #5]
     97c:	1a8a      	subs	r2, r1, r2
     97e:	b2d1      	uxtb	r1, r2
     980:	4a49      	ldr	r2, [pc, #292]	; (aa8 <schipp+0x57c>)
     982:	4413      	add	r3, r2
     984:	460a      	mov	r2, r1
     986:	715a      	strb	r2, [r3, #5]
     988:	4a47      	ldr	r2, [pc, #284]	; (aa8 <schipp+0x57c>)
     98a:	7bfb      	ldrb	r3, [r7, #15]
     98c:	7513      	strb	r3, [r2, #20]
     98e:	e04d      	b.n	a2c <schipp+0x500>
     990:	7bbb      	ldrb	r3, [r7, #14]
     992:	4a45      	ldr	r2, [pc, #276]	; (aa8 <schipp+0x57c>)
     994:	4413      	add	r3, r2
     996:	795b      	ldrb	r3, [r3, #5]
     998:	f003 0301 	and.w	r3, r3, #1
     99c:	73fb      	strb	r3, [r7, #15]
     99e:	7bbb      	ldrb	r3, [r7, #14]
     9a0:	7bba      	ldrb	r2, [r7, #14]
     9a2:	4941      	ldr	r1, [pc, #260]	; (aa8 <schipp+0x57c>)
     9a4:	440a      	add	r2, r1
     9a6:	7952      	ldrb	r2, [r2, #5]
     9a8:	0852      	lsrs	r2, r2, #1
     9aa:	b2d1      	uxtb	r1, r2
     9ac:	4a3e      	ldr	r2, [pc, #248]	; (aa8 <schipp+0x57c>)
     9ae:	4413      	add	r3, r2
     9b0:	460a      	mov	r2, r1
     9b2:	715a      	strb	r2, [r3, #5]
     9b4:	4a3c      	ldr	r2, [pc, #240]	; (aa8 <schipp+0x57c>)
     9b6:	7bfb      	ldrb	r3, [r7, #15]
     9b8:	7513      	strb	r3, [r2, #20]
     9ba:	e037      	b.n	a2c <schipp+0x500>
     9bc:	7b7b      	ldrb	r3, [r7, #13]
     9be:	4a3a      	ldr	r2, [pc, #232]	; (aa8 <schipp+0x57c>)
     9c0:	4413      	add	r3, r2
     9c2:	795a      	ldrb	r2, [r3, #5]
     9c4:	7bbb      	ldrb	r3, [r7, #14]
     9c6:	4938      	ldr	r1, [pc, #224]	; (aa8 <schipp+0x57c>)
     9c8:	440b      	add	r3, r1
     9ca:	795b      	ldrb	r3, [r3, #5]
     9cc:	429a      	cmp	r2, r3
     9ce:	bf2c      	ite	cs
     9d0:	2301      	movcs	r3, #1
     9d2:	2300      	movcc	r3, #0
     9d4:	b2db      	uxtb	r3, r3
     9d6:	73fb      	strb	r3, [r7, #15]
     9d8:	7bbb      	ldrb	r3, [r7, #14]
     9da:	7b7a      	ldrb	r2, [r7, #13]
     9dc:	4932      	ldr	r1, [pc, #200]	; (aa8 <schipp+0x57c>)
     9de:	440a      	add	r2, r1
     9e0:	7951      	ldrb	r1, [r2, #5]
     9e2:	7bba      	ldrb	r2, [r7, #14]
     9e4:	4830      	ldr	r0, [pc, #192]	; (aa8 <schipp+0x57c>)
     9e6:	4402      	add	r2, r0
     9e8:	7952      	ldrb	r2, [r2, #5]
     9ea:	1a8a      	subs	r2, r1, r2
     9ec:	b2d1      	uxtb	r1, r2
     9ee:	4a2e      	ldr	r2, [pc, #184]	; (aa8 <schipp+0x57c>)
     9f0:	4413      	add	r3, r2
     9f2:	460a      	mov	r2, r1
     9f4:	715a      	strb	r2, [r3, #5]
     9f6:	4a2c      	ldr	r2, [pc, #176]	; (aa8 <schipp+0x57c>)
     9f8:	7bfb      	ldrb	r3, [r7, #15]
     9fa:	7513      	strb	r3, [r2, #20]
     9fc:	e016      	b.n	a2c <schipp+0x500>
     9fe:	7bbb      	ldrb	r3, [r7, #14]
     a00:	4a29      	ldr	r2, [pc, #164]	; (aa8 <schipp+0x57c>)
     a02:	4413      	add	r3, r2
     a04:	795b      	ldrb	r3, [r3, #5]
     a06:	09db      	lsrs	r3, r3, #7
     a08:	73fb      	strb	r3, [r7, #15]
     a0a:	7bbb      	ldrb	r3, [r7, #14]
     a0c:	7bba      	ldrb	r2, [r7, #14]
     a0e:	4926      	ldr	r1, [pc, #152]	; (aa8 <schipp+0x57c>)
     a10:	440a      	add	r2, r1
     a12:	7952      	ldrb	r2, [r2, #5]
     a14:	0052      	lsls	r2, r2, #1
     a16:	b2d1      	uxtb	r1, r2
     a18:	4a23      	ldr	r2, [pc, #140]	; (aa8 <schipp+0x57c>)
     a1a:	4413      	add	r3, r2
     a1c:	460a      	mov	r2, r1
     a1e:	715a      	strb	r2, [r3, #5]
     a20:	4a21      	ldr	r2, [pc, #132]	; (aa8 <schipp+0x57c>)
     a22:	7bfb      	ldrb	r3, [r7, #15]
     a24:	7513      	strb	r3, [r2, #20]
     a26:	e001      	b.n	a2c <schipp+0x500>
     a28:	2302      	movs	r3, #2
     a2a:	e31b      	b.n	1064 <schipp+0xb38>
     a2c:	e318      	b.n	1060 <schipp+0xb34>
     a2e:	4b1e      	ldr	r3, [pc, #120]	; (aa8 <schipp+0x57c>)
     a30:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     a34:	f003 030f 	and.w	r3, r3, #15
     a38:	2b0f      	cmp	r3, #15
     a3a:	f200 813d 	bhi.w	cb8 <schipp+0x78c>
     a3e:	a201      	add	r2, pc, #4	; (adr r2, a44 <schipp+0x518>)
     a40:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a44:	00000a85 	.word	0x00000a85
     a48:	00000aad 	.word	0x00000aad
     a4c:	00000ac9 	.word	0x00000ac9
     a50:	00000b1f 	.word	0x00000b1f
     a54:	00000b3d 	.word	0x00000b3d
     a58:	00000b4d 	.word	0x00000b4d
     a5c:	00000b6b 	.word	0x00000b6b
     a60:	00000b93 	.word	0x00000b93
     a64:	00000bb5 	.word	0x00000bb5
     a68:	00000bc1 	.word	0x00000bc1
     a6c:	00000bcd 	.word	0x00000bcd
     a70:	00000bf7 	.word	0x00000bf7
     a74:	00000c25 	.word	0x00000c25
     a78:	00000c4f 	.word	0x00000c4f
     a7c:	00000c79 	.word	0x00000c79
     a80:	00000ca3 	.word	0x00000ca3
     a84:	7bbb      	ldrb	r3, [r7, #14]
     a86:	4a08      	ldr	r2, [pc, #32]	; (aa8 <schipp+0x57c>)
     a88:	4413      	add	r3, r2
     a8a:	795a      	ldrb	r2, [r3, #5]
     a8c:	7b7b      	ldrb	r3, [r7, #13]
     a8e:	4906      	ldr	r1, [pc, #24]	; (aa8 <schipp+0x57c>)
     a90:	440b      	add	r3, r1
     a92:	795b      	ldrb	r3, [r3, #5]
     a94:	429a      	cmp	r2, r3
     a96:	f000 8111 	beq.w	cbc <schipp+0x790>
     a9a:	4b03      	ldr	r3, [pc, #12]	; (aa8 <schipp+0x57c>)
     a9c:	881b      	ldrh	r3, [r3, #0]
     a9e:	3302      	adds	r3, #2
     aa0:	b29a      	uxth	r2, r3
     aa2:	4b01      	ldr	r3, [pc, #4]	; (aa8 <schipp+0x57c>)
     aa4:	801a      	strh	r2, [r3, #0]
     aa6:	e109      	b.n	cbc <schipp+0x790>
     aa8:	2000005c 	.word	0x2000005c
     aac:	7bbb      	ldrb	r3, [r7, #14]
     aae:	4aa2      	ldr	r2, [pc, #648]	; (d38 <schipp+0x80c>)
     ab0:	4413      	add	r3, r2
     ab2:	795b      	ldrb	r3, [r3, #5]
     ab4:	4618      	mov	r0, r3
     ab6:	7b7b      	ldrb	r3, [r7, #13]
     ab8:	4a9f      	ldr	r2, [pc, #636]	; (d38 <schipp+0x80c>)
     aba:	4413      	add	r3, r2
     abc:	795b      	ldrb	r3, [r3, #5]
     abe:	2200      	movs	r2, #0
     ac0:	4619      	mov	r1, r3
     ac2:	f7ff fcf5 	bl	4b0 <key_tone>
     ac6:	e0fe      	b.n	cc6 <schipp+0x79a>
     ac8:	2002      	movs	r0, #2
     aca:	f002 fc17 	bl	32fc <select_font>
     ace:	7bbb      	ldrb	r3, [r7, #14]
     ad0:	4a99      	ldr	r2, [pc, #612]	; (d38 <schipp+0x80c>)
     ad2:	4413      	add	r3, r2
     ad4:	7958      	ldrb	r0, [r3, #5]
     ad6:	7b7b      	ldrb	r3, [r7, #13]
     ad8:	4a97      	ldr	r2, [pc, #604]	; (d38 <schipp+0x80c>)
     ada:	4413      	add	r3, r2
     adc:	795b      	ldrb	r3, [r3, #5]
     ade:	4619      	mov	r1, r3
     ae0:	f002 fd2a 	bl	3538 <set_cursor>
     ae4:	4b94      	ldr	r3, [pc, #592]	; (d38 <schipp+0x80c>)
     ae6:	885b      	ldrh	r3, [r3, #2]
     ae8:	1c5a      	adds	r2, r3, #1
     aea:	b291      	uxth	r1, r2
     aec:	4a92      	ldr	r2, [pc, #584]	; (d38 <schipp+0x80c>)
     aee:	8051      	strh	r1, [r2, #2]
     af0:	461a      	mov	r2, r3
     af2:	4b92      	ldr	r3, [pc, #584]	; (d3c <schipp+0x810>)
     af4:	5c9b      	ldrb	r3, [r3, r2]
     af6:	73fb      	strb	r3, [r7, #15]
     af8:	e00d      	b.n	b16 <schipp+0x5ea>
     afa:	7bfb      	ldrb	r3, [r7, #15]
     afc:	4618      	mov	r0, r3
     afe:	f002 fc8f 	bl	3420 <put_char>
     b02:	4b8d      	ldr	r3, [pc, #564]	; (d38 <schipp+0x80c>)
     b04:	885b      	ldrh	r3, [r3, #2]
     b06:	1c5a      	adds	r2, r3, #1
     b08:	b291      	uxth	r1, r2
     b0a:	4a8b      	ldr	r2, [pc, #556]	; (d38 <schipp+0x80c>)
     b0c:	8051      	strh	r1, [r2, #2]
     b0e:	461a      	mov	r2, r3
     b10:	4b8a      	ldr	r3, [pc, #552]	; (d3c <schipp+0x810>)
     b12:	5c9b      	ldrb	r3, [r3, r2]
     b14:	73fb      	strb	r3, [r7, #15]
     b16:	7bfb      	ldrb	r3, [r7, #15]
     b18:	2b00      	cmp	r3, #0
     b1a:	d1ee      	bne.n	afa <schipp+0x5ce>
     b1c:	e0d3      	b.n	cc6 <schipp+0x79a>
     b1e:	7bbb      	ldrb	r3, [r7, #14]
     b20:	4a85      	ldr	r2, [pc, #532]	; (d38 <schipp+0x80c>)
     b22:	4413      	add	r3, r2
     b24:	795b      	ldrb	r3, [r3, #5]
     b26:	4618      	mov	r0, r3
     b28:	7b7b      	ldrb	r3, [r7, #13]
     b2a:	4a83      	ldr	r2, [pc, #524]	; (d38 <schipp+0x80c>)
     b2c:	4413      	add	r3, r2
     b2e:	795b      	ldrb	r3, [r3, #5]
     b30:	4619      	mov	r1, r3
     b32:	2303      	movs	r3, #3
     b34:	2200      	movs	r2, #0
     b36:	f000 ff2b 	bl	1990 <gfx_blit>
     b3a:	e0c4      	b.n	cc6 <schipp+0x79a>
     b3c:	7bbb      	ldrb	r3, [r7, #14]
     b3e:	011a      	lsls	r2, r3, #4
     b40:	7b7b      	ldrb	r3, [r7, #13]
     b42:	4413      	add	r3, r2
     b44:	4618      	mov	r0, r3
     b46:	f7ff fcbe 	bl	4c6 <noise>
     b4a:	e0bc      	b.n	cc6 <schipp+0x79a>
     b4c:	7bbb      	ldrb	r3, [r7, #14]
     b4e:	4a7a      	ldr	r2, [pc, #488]	; (d38 <schipp+0x80c>)
     b50:	4413      	add	r3, r2
     b52:	795b      	ldrb	r3, [r3, #5]
     b54:	4618      	mov	r0, r3
     b56:	7b7b      	ldrb	r3, [r7, #13]
     b58:	4a77      	ldr	r2, [pc, #476]	; (d38 <schipp+0x80c>)
     b5a:	4413      	add	r3, r2
     b5c:	795b      	ldrb	r3, [r3, #5]
     b5e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     b62:	4619      	mov	r1, r3
     b64:	f7ff fca4 	bl	4b0 <key_tone>
     b68:	e0ad      	b.n	cc6 <schipp+0x79a>
     b6a:	4b73      	ldr	r3, [pc, #460]	; (d38 <schipp+0x80c>)
     b6c:	791b      	ldrb	r3, [r3, #4]
     b6e:	3301      	adds	r3, #1
     b70:	b2da      	uxtb	r2, r3
     b72:	4b71      	ldr	r3, [pc, #452]	; (d38 <schipp+0x80c>)
     b74:	711a      	strb	r2, [r3, #4]
     b76:	4b70      	ldr	r3, [pc, #448]	; (d38 <schipp+0x80c>)
     b78:	791b      	ldrb	r3, [r3, #4]
     b7a:	4618      	mov	r0, r3
     b7c:	7bbb      	ldrb	r3, [r7, #14]
     b7e:	4a6e      	ldr	r2, [pc, #440]	; (d38 <schipp+0x80c>)
     b80:	4413      	add	r3, r2
     b82:	795b      	ldrb	r3, [r3, #5]
     b84:	b299      	uxth	r1, r3
     b86:	4a6c      	ldr	r2, [pc, #432]	; (d38 <schipp+0x80c>)
     b88:	f100 0314 	add.w	r3, r0, #20
     b8c:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     b90:	e099      	b.n	cc6 <schipp+0x79a>
     b92:	7bba      	ldrb	r2, [r7, #14]
     b94:	4b68      	ldr	r3, [pc, #416]	; (d38 <schipp+0x80c>)
     b96:	791b      	ldrb	r3, [r3, #4]
     b98:	1e59      	subs	r1, r3, #1
     b9a:	b2c8      	uxtb	r0, r1
     b9c:	4966      	ldr	r1, [pc, #408]	; (d38 <schipp+0x80c>)
     b9e:	7108      	strb	r0, [r1, #4]
     ba0:	4965      	ldr	r1, [pc, #404]	; (d38 <schipp+0x80c>)
     ba2:	3314      	adds	r3, #20
     ba4:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     ba8:	b2d9      	uxtb	r1, r3
     baa:	4b63      	ldr	r3, [pc, #396]	; (d38 <schipp+0x80c>)
     bac:	4413      	add	r3, r2
     bae:	460a      	mov	r2, r1
     bb0:	715a      	strb	r2, [r3, #5]
     bb2:	e088      	b.n	cc6 <schipp+0x79a>
     bb4:	7bbb      	ldrb	r3, [r7, #14]
     bb6:	4a60      	ldr	r2, [pc, #384]	; (d38 <schipp+0x80c>)
     bb8:	4413      	add	r3, r2
     bba:	22b4      	movs	r2, #180	; 0xb4
     bbc:	715a      	strb	r2, [r3, #5]
     bbe:	e082      	b.n	cc6 <schipp+0x79a>
     bc0:	7bbb      	ldrb	r3, [r7, #14]
     bc2:	4a5d      	ldr	r2, [pc, #372]	; (d38 <schipp+0x80c>)
     bc4:	4413      	add	r3, r2
     bc6:	2270      	movs	r2, #112	; 0x70
     bc8:	715a      	strb	r2, [r3, #5]
     bca:	e07c      	b.n	cc6 <schipp+0x79a>
     bcc:	7bbb      	ldrb	r3, [r7, #14]
     bce:	7bba      	ldrb	r2, [r7, #14]
     bd0:	4959      	ldr	r1, [pc, #356]	; (d38 <schipp+0x80c>)
     bd2:	440a      	add	r2, r1
     bd4:	7952      	ldrb	r2, [r2, #5]
     bd6:	b251      	sxtb	r1, r2
     bd8:	7b7a      	ldrb	r2, [r7, #13]
     bda:	f002 0207 	and.w	r2, r2, #7
     bde:	2001      	movs	r0, #1
     be0:	fa00 f202 	lsl.w	r2, r0, r2
     be4:	b252      	sxtb	r2, r2
     be6:	430a      	orrs	r2, r1
     be8:	b252      	sxtb	r2, r2
     bea:	b2d1      	uxtb	r1, r2
     bec:	4a52      	ldr	r2, [pc, #328]	; (d38 <schipp+0x80c>)
     bee:	4413      	add	r3, r2
     bf0:	460a      	mov	r2, r1
     bf2:	715a      	strb	r2, [r3, #5]
     bf4:	e067      	b.n	cc6 <schipp+0x79a>
     bf6:	7bbb      	ldrb	r3, [r7, #14]
     bf8:	7bba      	ldrb	r2, [r7, #14]
     bfa:	494f      	ldr	r1, [pc, #316]	; (d38 <schipp+0x80c>)
     bfc:	440a      	add	r2, r1
     bfe:	7952      	ldrb	r2, [r2, #5]
     c00:	b251      	sxtb	r1, r2
     c02:	7b7a      	ldrb	r2, [r7, #13]
     c04:	f002 0207 	and.w	r2, r2, #7
     c08:	2001      	movs	r0, #1
     c0a:	fa00 f202 	lsl.w	r2, r0, r2
     c0e:	b252      	sxtb	r2, r2
     c10:	43d2      	mvns	r2, r2
     c12:	b252      	sxtb	r2, r2
     c14:	400a      	ands	r2, r1
     c16:	b252      	sxtb	r2, r2
     c18:	b2d1      	uxtb	r1, r2
     c1a:	4a47      	ldr	r2, [pc, #284]	; (d38 <schipp+0x80c>)
     c1c:	4413      	add	r3, r2
     c1e:	460a      	mov	r2, r1
     c20:	715a      	strb	r2, [r3, #5]
     c22:	e050      	b.n	cc6 <schipp+0x79a>
     c24:	7bbb      	ldrb	r3, [r7, #14]
     c26:	7bba      	ldrb	r2, [r7, #14]
     c28:	4943      	ldr	r1, [pc, #268]	; (d38 <schipp+0x80c>)
     c2a:	440a      	add	r2, r1
     c2c:	7952      	ldrb	r2, [r2, #5]
     c2e:	b251      	sxtb	r1, r2
     c30:	7b7a      	ldrb	r2, [r7, #13]
     c32:	f002 0207 	and.w	r2, r2, #7
     c36:	2001      	movs	r0, #1
     c38:	fa00 f202 	lsl.w	r2, r0, r2
     c3c:	b252      	sxtb	r2, r2
     c3e:	404a      	eors	r2, r1
     c40:	b252      	sxtb	r2, r2
     c42:	b2d1      	uxtb	r1, r2
     c44:	4a3c      	ldr	r2, [pc, #240]	; (d38 <schipp+0x80c>)
     c46:	4413      	add	r3, r2
     c48:	460a      	mov	r2, r1
     c4a:	715a      	strb	r2, [r3, #5]
     c4c:	e03b      	b.n	cc6 <schipp+0x79a>
     c4e:	7bbb      	ldrb	r3, [r7, #14]
     c50:	4a39      	ldr	r2, [pc, #228]	; (d38 <schipp+0x80c>)
     c52:	4413      	add	r3, r2
     c54:	795b      	ldrb	r3, [r3, #5]
     c56:	461a      	mov	r2, r3
     c58:	7b7b      	ldrb	r3, [r7, #13]
     c5a:	f003 0307 	and.w	r3, r3, #7
     c5e:	fa42 f303 	asr.w	r3, r2, r3
     c62:	f003 0301 	and.w	r3, r3, #1
     c66:	2b00      	cmp	r3, #0
     c68:	d02a      	beq.n	cc0 <schipp+0x794>
     c6a:	4b33      	ldr	r3, [pc, #204]	; (d38 <schipp+0x80c>)
     c6c:	881b      	ldrh	r3, [r3, #0]
     c6e:	3302      	adds	r3, #2
     c70:	b29a      	uxth	r2, r3
     c72:	4b31      	ldr	r3, [pc, #196]	; (d38 <schipp+0x80c>)
     c74:	801a      	strh	r2, [r3, #0]
     c76:	e023      	b.n	cc0 <schipp+0x794>
     c78:	7bbb      	ldrb	r3, [r7, #14]
     c7a:	4a2f      	ldr	r2, [pc, #188]	; (d38 <schipp+0x80c>)
     c7c:	4413      	add	r3, r2
     c7e:	795b      	ldrb	r3, [r3, #5]
     c80:	461a      	mov	r2, r3
     c82:	7b7b      	ldrb	r3, [r7, #13]
     c84:	f003 0307 	and.w	r3, r3, #7
     c88:	fa42 f303 	asr.w	r3, r2, r3
     c8c:	f003 0301 	and.w	r3, r3, #1
     c90:	2b00      	cmp	r3, #0
     c92:	d117      	bne.n	cc4 <schipp+0x798>
     c94:	4b28      	ldr	r3, [pc, #160]	; (d38 <schipp+0x80c>)
     c96:	881b      	ldrh	r3, [r3, #0]
     c98:	3302      	adds	r3, #2
     c9a:	b29a      	uxth	r2, r3
     c9c:	4b26      	ldr	r3, [pc, #152]	; (d38 <schipp+0x80c>)
     c9e:	801a      	strh	r2, [r3, #0]
     ca0:	e010      	b.n	cc4 <schipp+0x798>
     ca2:	7bbb      	ldrb	r3, [r7, #14]
     ca4:	7b7a      	ldrb	r2, [r7, #13]
     ca6:	4611      	mov	r1, r2
     ca8:	4618      	mov	r0, r3
     caa:	f001 f893 	bl	1dd4 <gfx_get_pixel>
     cae:	4603      	mov	r3, r0
     cb0:	461a      	mov	r2, r3
     cb2:	4b21      	ldr	r3, [pc, #132]	; (d38 <schipp+0x80c>)
     cb4:	751a      	strb	r2, [r3, #20]
     cb6:	e006      	b.n	cc6 <schipp+0x79a>
     cb8:	2302      	movs	r3, #2
     cba:	e1d3      	b.n	1064 <schipp+0xb38>
     cbc:	bf00      	nop
     cbe:	e1cf      	b.n	1060 <schipp+0xb34>
     cc0:	bf00      	nop
     cc2:	e1cd      	b.n	1060 <schipp+0xb34>
     cc4:	bf00      	nop
     cc6:	e1cb      	b.n	1060 <schipp+0xb34>
     cc8:	4b1b      	ldr	r3, [pc, #108]	; (d38 <schipp+0x80c>)
     cca:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     cce:	021b      	lsls	r3, r3, #8
     cd0:	4a19      	ldr	r2, [pc, #100]	; (d38 <schipp+0x80c>)
     cd2:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     cd6:	4313      	orrs	r3, r2
     cd8:	005b      	lsls	r3, r3, #1
     cda:	b29b      	uxth	r3, r3
     cdc:	f3c3 030b 	ubfx	r3, r3, #0, #12
     ce0:	b29a      	uxth	r2, r3
     ce2:	4b15      	ldr	r3, [pc, #84]	; (d38 <schipp+0x80c>)
     ce4:	805a      	strh	r2, [r3, #2]
     ce6:	e1bb      	b.n	1060 <schipp+0xb34>
     ce8:	4b13      	ldr	r3, [pc, #76]	; (d38 <schipp+0x80c>)
     cea:	795b      	ldrb	r3, [r3, #5]
     cec:	b29b      	uxth	r3, r3
     cee:	005b      	lsls	r3, r3, #1
     cf0:	b29a      	uxth	r2, r3
     cf2:	4b11      	ldr	r3, [pc, #68]	; (d38 <schipp+0x80c>)
     cf4:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     cf8:	021b      	lsls	r3, r3, #8
     cfa:	490f      	ldr	r1, [pc, #60]	; (d38 <schipp+0x80c>)
     cfc:	f891 1027 	ldrb.w	r1, [r1, #39]	; 0x27
     d00:	430b      	orrs	r3, r1
     d02:	005b      	lsls	r3, r3, #1
     d04:	b29b      	uxth	r3, r3
     d06:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d0a:	b29b      	uxth	r3, r3
     d0c:	4413      	add	r3, r2
     d0e:	b29a      	uxth	r2, r3
     d10:	4b09      	ldr	r3, [pc, #36]	; (d38 <schipp+0x80c>)
     d12:	801a      	strh	r2, [r3, #0]
     d14:	e1a4      	b.n	1060 <schipp+0xb34>
     d16:	7bbc      	ldrb	r4, [r7, #14]
     d18:	f7ff fc01 	bl	51e <rand>
     d1c:	4603      	mov	r3, r0
     d1e:	b25a      	sxtb	r2, r3
     d20:	4b05      	ldr	r3, [pc, #20]	; (d38 <schipp+0x80c>)
     d22:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d26:	b25b      	sxtb	r3, r3
     d28:	4013      	ands	r3, r2
     d2a:	b25b      	sxtb	r3, r3
     d2c:	b2da      	uxtb	r2, r3
     d2e:	4b02      	ldr	r3, [pc, #8]	; (d38 <schipp+0x80c>)
     d30:	4423      	add	r3, r4
     d32:	715a      	strb	r2, [r3, #5]
     d34:	e194      	b.n	1060 <schipp+0xb34>
     d36:	bf00      	nop
     d38:	2000005c 	.word	0x2000005c
     d3c:	200004fc 	.word	0x200004fc
     d40:	4ba5      	ldr	r3, [pc, #660]	; (fd8 <schipp+0xaac>)
     d42:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d46:	f003 030f 	and.w	r3, r3, #15
     d4a:	73fb      	strb	r3, [r7, #15]
     d4c:	7bfb      	ldrb	r3, [r7, #15]
     d4e:	2b00      	cmp	r3, #0
     d50:	d11b      	bne.n	d8a <schipp+0x85e>
     d52:	4ba1      	ldr	r3, [pc, #644]	; (fd8 <schipp+0xaac>)
     d54:	885b      	ldrh	r3, [r3, #2]
     d56:	4aa1      	ldr	r2, [pc, #644]	; (fdc <schipp+0xab0>)
     d58:	2120      	movs	r1, #32
     d5a:	4618      	mov	r0, r3
     d5c:	f7ff fbbc 	bl	4d8 <load_block>
     d60:	7bbb      	ldrb	r3, [r7, #14]
     d62:	4a9d      	ldr	r2, [pc, #628]	; (fd8 <schipp+0xaac>)
     d64:	4413      	add	r3, r2
     d66:	795b      	ldrb	r3, [r3, #5]
     d68:	b25b      	sxtb	r3, r3
     d6a:	4618      	mov	r0, r3
     d6c:	7b7b      	ldrb	r3, [r7, #13]
     d6e:	4a9a      	ldr	r2, [pc, #616]	; (fd8 <schipp+0xaac>)
     d70:	4413      	add	r3, r2
     d72:	795b      	ldrb	r3, [r3, #5]
     d74:	b25b      	sxtb	r3, r3
     d76:	4619      	mov	r1, r3
     d78:	4b98      	ldr	r3, [pc, #608]	; (fdc <schipp+0xab0>)
     d7a:	2220      	movs	r2, #32
     d7c:	f7ff fbc2 	bl	504 <put_big_sprite>
     d80:	4603      	mov	r3, r0
     d82:	b2da      	uxtb	r2, r3
     d84:	4b94      	ldr	r3, [pc, #592]	; (fd8 <schipp+0xaac>)
     d86:	751a      	strb	r2, [r3, #20]
     d88:	e16a      	b.n	1060 <schipp+0xb34>
     d8a:	4b93      	ldr	r3, [pc, #588]	; (fd8 <schipp+0xaac>)
     d8c:	885b      	ldrh	r3, [r3, #2]
     d8e:	4618      	mov	r0, r3
     d90:	7bfb      	ldrb	r3, [r7, #15]
     d92:	4a92      	ldr	r2, [pc, #584]	; (fdc <schipp+0xab0>)
     d94:	4619      	mov	r1, r3
     d96:	f7ff fb9f 	bl	4d8 <load_block>
     d9a:	7bbb      	ldrb	r3, [r7, #14]
     d9c:	4a8e      	ldr	r2, [pc, #568]	; (fd8 <schipp+0xaac>)
     d9e:	4413      	add	r3, r2
     da0:	795b      	ldrb	r3, [r3, #5]
     da2:	b25b      	sxtb	r3, r3
     da4:	4618      	mov	r0, r3
     da6:	7b7b      	ldrb	r3, [r7, #13]
     da8:	4a8b      	ldr	r2, [pc, #556]	; (fd8 <schipp+0xaac>)
     daa:	4413      	add	r3, r2
     dac:	795b      	ldrb	r3, [r3, #5]
     dae:	b25b      	sxtb	r3, r3
     db0:	4619      	mov	r1, r3
     db2:	7bfa      	ldrb	r2, [r7, #15]
     db4:	4b89      	ldr	r3, [pc, #548]	; (fdc <schipp+0xab0>)
     db6:	9300      	str	r3, [sp, #0]
     db8:	4613      	mov	r3, r2
     dba:	2208      	movs	r2, #8
     dbc:	f001 f838 	bl	1e30 <gfx_sprite>
     dc0:	4603      	mov	r3, r0
     dc2:	b2da      	uxtb	r2, r3
     dc4:	4b84      	ldr	r3, [pc, #528]	; (fd8 <schipp+0xaac>)
     dc6:	751a      	strb	r2, [r3, #20]
     dc8:	e14a      	b.n	1060 <schipp+0xb34>
     dca:	4b83      	ldr	r3, [pc, #524]	; (fd8 <schipp+0xaac>)
     dcc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     dd0:	2b9e      	cmp	r3, #158	; 0x9e
     dd2:	d002      	beq.n	dda <schipp+0x8ae>
     dd4:	2ba1      	cmp	r3, #161	; 0xa1
     dd6:	d012      	beq.n	dfe <schipp+0x8d2>
     dd8:	e023      	b.n	e22 <schipp+0x8f6>
     dda:	4b81      	ldr	r3, [pc, #516]	; (fe0 <schipp+0xab4>)
     ddc:	881b      	ldrh	r3, [r3, #0]
     dde:	b29b      	uxth	r3, r3
     de0:	4619      	mov	r1, r3
     de2:	7bbb      	ldrb	r3, [r7, #14]
     de4:	4a7c      	ldr	r2, [pc, #496]	; (fd8 <schipp+0xaac>)
     de6:	4413      	add	r3, r2
     de8:	795b      	ldrb	r3, [r3, #5]
     dea:	400b      	ands	r3, r1
     dec:	2b00      	cmp	r3, #0
     dee:	d11a      	bne.n	e26 <schipp+0x8fa>
     df0:	4b79      	ldr	r3, [pc, #484]	; (fd8 <schipp+0xaac>)
     df2:	881b      	ldrh	r3, [r3, #0]
     df4:	3302      	adds	r3, #2
     df6:	b29a      	uxth	r2, r3
     df8:	4b77      	ldr	r3, [pc, #476]	; (fd8 <schipp+0xaac>)
     dfa:	801a      	strh	r2, [r3, #0]
     dfc:	e013      	b.n	e26 <schipp+0x8fa>
     dfe:	4b78      	ldr	r3, [pc, #480]	; (fe0 <schipp+0xab4>)
     e00:	881b      	ldrh	r3, [r3, #0]
     e02:	b29b      	uxth	r3, r3
     e04:	4619      	mov	r1, r3
     e06:	7bbb      	ldrb	r3, [r7, #14]
     e08:	4a73      	ldr	r2, [pc, #460]	; (fd8 <schipp+0xaac>)
     e0a:	4413      	add	r3, r2
     e0c:	795b      	ldrb	r3, [r3, #5]
     e0e:	400b      	ands	r3, r1
     e10:	2b00      	cmp	r3, #0
     e12:	d00a      	beq.n	e2a <schipp+0x8fe>
     e14:	4b70      	ldr	r3, [pc, #448]	; (fd8 <schipp+0xaac>)
     e16:	881b      	ldrh	r3, [r3, #0]
     e18:	3302      	adds	r3, #2
     e1a:	b29a      	uxth	r2, r3
     e1c:	4b6e      	ldr	r3, [pc, #440]	; (fd8 <schipp+0xaac>)
     e1e:	801a      	strh	r2, [r3, #0]
     e20:	e003      	b.n	e2a <schipp+0x8fe>
     e22:	2302      	movs	r3, #2
     e24:	e11e      	b.n	1064 <schipp+0xb38>
     e26:	bf00      	nop
     e28:	e11a      	b.n	1060 <schipp+0xb34>
     e2a:	bf00      	nop
     e2c:	e118      	b.n	1060 <schipp+0xb34>
     e2e:	4b6a      	ldr	r3, [pc, #424]	; (fd8 <schipp+0xaac>)
     e30:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e34:	2b29      	cmp	r3, #41	; 0x29
     e36:	d05b      	beq.n	ef0 <schipp+0x9c4>
     e38:	2b29      	cmp	r3, #41	; 0x29
     e3a:	dc0d      	bgt.n	e58 <schipp+0x92c>
     e3c:	2b15      	cmp	r3, #21
     e3e:	d035      	beq.n	eac <schipp+0x980>
     e40:	2b15      	cmp	r3, #21
     e42:	dc04      	bgt.n	e4e <schipp+0x922>
     e44:	2b07      	cmp	r3, #7
     e46:	d01b      	beq.n	e80 <schipp+0x954>
     e48:	2b0a      	cmp	r3, #10
     e4a:	d026      	beq.n	e9a <schipp+0x96e>
     e4c:	e0fb      	b.n	1046 <schipp+0xb1a>
     e4e:	2b18      	cmp	r3, #24
     e50:	d038      	beq.n	ec4 <schipp+0x998>
     e52:	2b1e      	cmp	r3, #30
     e54:	d040      	beq.n	ed8 <schipp+0x9ac>
     e56:	e0f6      	b.n	1046 <schipp+0xb1a>
     e58:	2b55      	cmp	r3, #85	; 0x55
     e5a:	f000 80a6 	beq.w	faa <schipp+0xa7e>
     e5e:	2b55      	cmp	r3, #85	; 0x55
     e60:	dc04      	bgt.n	e6c <schipp+0x940>
     e62:	2b30      	cmp	r3, #48	; 0x30
     e64:	d058      	beq.n	f18 <schipp+0x9ec>
     e66:	2b33      	cmp	r3, #51	; 0x33
     e68:	d06a      	beq.n	f40 <schipp+0xa14>
     e6a:	e0ec      	b.n	1046 <schipp+0xb1a>
     e6c:	2b75      	cmp	r3, #117	; 0x75
     e6e:	f000 80b0 	beq.w	fd2 <schipp+0xaa6>
     e72:	2b85      	cmp	r3, #133	; 0x85
     e74:	f000 80d3 	beq.w	101e <schipp+0xaf2>
     e78:	2b65      	cmp	r3, #101	; 0x65
     e7a:	f000 80a0 	beq.w	fbe <schipp+0xa92>
     e7e:	e0e2      	b.n	1046 <schipp+0xb1a>
     e80:	7bbb      	ldrb	r3, [r7, #14]
     e82:	4a58      	ldr	r2, [pc, #352]	; (fe4 <schipp+0xab8>)
     e84:	6812      	ldr	r2, [r2, #0]
     e86:	4958      	ldr	r1, [pc, #352]	; (fe8 <schipp+0xabc>)
     e88:	fba1 1202 	umull	r1, r2, r1, r2
     e8c:	0912      	lsrs	r2, r2, #4
     e8e:	b2d1      	uxtb	r1, r2
     e90:	4a51      	ldr	r2, [pc, #324]	; (fd8 <schipp+0xaac>)
     e92:	4413      	add	r3, r2
     e94:	460a      	mov	r2, r1
     e96:	715a      	strb	r2, [r3, #5]
     e98:	e0d7      	b.n	104a <schipp+0xb1e>
     e9a:	7bbc      	ldrb	r4, [r7, #14]
     e9c:	f002 ff40 	bl	3d20 <btn_wait_any>
     ea0:	4603      	mov	r3, r0
     ea2:	b2da      	uxtb	r2, r3
     ea4:	4b4c      	ldr	r3, [pc, #304]	; (fd8 <schipp+0xaac>)
     ea6:	4423      	add	r3, r4
     ea8:	715a      	strb	r2, [r3, #5]
     eaa:	e0ce      	b.n	104a <schipp+0xb1e>
     eac:	7bbb      	ldrb	r3, [r7, #14]
     eae:	4a4a      	ldr	r2, [pc, #296]	; (fd8 <schipp+0xaac>)
     eb0:	4413      	add	r3, r2
     eb2:	795b      	ldrb	r3, [r3, #5]
     eb4:	461a      	mov	r2, r3
     eb6:	4613      	mov	r3, r2
     eb8:	011b      	lsls	r3, r3, #4
     eba:	4413      	add	r3, r2
     ebc:	461a      	mov	r2, r3
     ebe:	4b49      	ldr	r3, [pc, #292]	; (fe4 <schipp+0xab8>)
     ec0:	601a      	str	r2, [r3, #0]
     ec2:	e0c2      	b.n	104a <schipp+0xb1e>
     ec4:	7bbb      	ldrb	r3, [r7, #14]
     ec6:	4a44      	ldr	r2, [pc, #272]	; (fd8 <schipp+0xaac>)
     ec8:	4413      	add	r3, r2
     eca:	795b      	ldrb	r3, [r3, #5]
     ecc:	4619      	mov	r1, r3
     ece:	f240 200b 	movw	r0, #523	; 0x20b
     ed2:	f7ff fae3 	bl	49c <tone>
     ed6:	e0b8      	b.n	104a <schipp+0xb1e>
     ed8:	4b3f      	ldr	r3, [pc, #252]	; (fd8 <schipp+0xaac>)
     eda:	885a      	ldrh	r2, [r3, #2]
     edc:	7bbb      	ldrb	r3, [r7, #14]
     ede:	493e      	ldr	r1, [pc, #248]	; (fd8 <schipp+0xaac>)
     ee0:	440b      	add	r3, r1
     ee2:	795b      	ldrb	r3, [r3, #5]
     ee4:	b29b      	uxth	r3, r3
     ee6:	4413      	add	r3, r2
     ee8:	b29a      	uxth	r2, r3
     eea:	4b3b      	ldr	r3, [pc, #236]	; (fd8 <schipp+0xaac>)
     eec:	805a      	strh	r2, [r3, #2]
     eee:	e0ac      	b.n	104a <schipp+0xb1e>
     ef0:	7bbb      	ldrb	r3, [r7, #14]
     ef2:	4a39      	ldr	r2, [pc, #228]	; (fd8 <schipp+0xaac>)
     ef4:	4413      	add	r3, r2
     ef6:	795b      	ldrb	r3, [r3, #5]
     ef8:	b29b      	uxth	r3, r3
     efa:	461a      	mov	r2, r3
     efc:	0052      	lsls	r2, r2, #1
     efe:	4413      	add	r3, r2
     f00:	005b      	lsls	r3, r3, #1
     f02:	b29a      	uxth	r2, r3
     f04:	4b39      	ldr	r3, [pc, #228]	; (fec <schipp+0xac0>)
     f06:	b29b      	uxth	r3, r3
     f08:	4413      	add	r3, r2
     f0a:	b29a      	uxth	r2, r3
     f0c:	4b32      	ldr	r3, [pc, #200]	; (fd8 <schipp+0xaac>)
     f0e:	805a      	strh	r2, [r3, #2]
     f10:	2000      	movs	r0, #0
     f12:	f002 f9f3 	bl	32fc <select_font>
     f16:	e098      	b.n	104a <schipp+0xb1e>
     f18:	7bbb      	ldrb	r3, [r7, #14]
     f1a:	4a2f      	ldr	r2, [pc, #188]	; (fd8 <schipp+0xaac>)
     f1c:	4413      	add	r3, r2
     f1e:	795b      	ldrb	r3, [r3, #5]
     f20:	b29b      	uxth	r3, r3
     f22:	461a      	mov	r2, r3
     f24:	0092      	lsls	r2, r2, #2
     f26:	4413      	add	r3, r2
     f28:	005b      	lsls	r3, r3, #1
     f2a:	b29a      	uxth	r2, r3
     f2c:	4b30      	ldr	r3, [pc, #192]	; (ff0 <schipp+0xac4>)
     f2e:	b29b      	uxth	r3, r3
     f30:	4413      	add	r3, r2
     f32:	b29a      	uxth	r2, r3
     f34:	4b28      	ldr	r3, [pc, #160]	; (fd8 <schipp+0xaac>)
     f36:	805a      	strh	r2, [r3, #2]
     f38:	2001      	movs	r0, #1
     f3a:	f002 f9df 	bl	32fc <select_font>
     f3e:	e084      	b.n	104a <schipp+0xb1e>
     f40:	7bbb      	ldrb	r3, [r7, #14]
     f42:	4a25      	ldr	r2, [pc, #148]	; (fd8 <schipp+0xaac>)
     f44:	4413      	add	r3, r2
     f46:	795b      	ldrb	r3, [r3, #5]
     f48:	73fb      	strb	r3, [r7, #15]
     f4a:	7bfa      	ldrb	r2, [r7, #15]
     f4c:	4b29      	ldr	r3, [pc, #164]	; (ff4 <schipp+0xac8>)
     f4e:	fba3 1302 	umull	r1, r3, r3, r2
     f52:	08d9      	lsrs	r1, r3, #3
     f54:	460b      	mov	r3, r1
     f56:	009b      	lsls	r3, r3, #2
     f58:	440b      	add	r3, r1
     f5a:	005b      	lsls	r3, r3, #1
     f5c:	1ad3      	subs	r3, r2, r3
     f5e:	b2da      	uxtb	r2, r3
     f60:	4b1e      	ldr	r3, [pc, #120]	; (fdc <schipp+0xab0>)
     f62:	709a      	strb	r2, [r3, #2]
     f64:	7bfb      	ldrb	r3, [r7, #15]
     f66:	4a23      	ldr	r2, [pc, #140]	; (ff4 <schipp+0xac8>)
     f68:	fba2 2303 	umull	r2, r3, r2, r3
     f6c:	08db      	lsrs	r3, r3, #3
     f6e:	73fb      	strb	r3, [r7, #15]
     f70:	7bfa      	ldrb	r2, [r7, #15]
     f72:	4b20      	ldr	r3, [pc, #128]	; (ff4 <schipp+0xac8>)
     f74:	fba3 1302 	umull	r1, r3, r3, r2
     f78:	08d9      	lsrs	r1, r3, #3
     f7a:	460b      	mov	r3, r1
     f7c:	009b      	lsls	r3, r3, #2
     f7e:	440b      	add	r3, r1
     f80:	005b      	lsls	r3, r3, #1
     f82:	1ad3      	subs	r3, r2, r3
     f84:	b2da      	uxtb	r2, r3
     f86:	4b15      	ldr	r3, [pc, #84]	; (fdc <schipp+0xab0>)
     f88:	705a      	strb	r2, [r3, #1]
     f8a:	7bfb      	ldrb	r3, [r7, #15]
     f8c:	4a19      	ldr	r2, [pc, #100]	; (ff4 <schipp+0xac8>)
     f8e:	fba2 2303 	umull	r2, r3, r2, r3
     f92:	08db      	lsrs	r3, r3, #3
     f94:	b2da      	uxtb	r2, r3
     f96:	4b11      	ldr	r3, [pc, #68]	; (fdc <schipp+0xab0>)
     f98:	701a      	strb	r2, [r3, #0]
     f9a:	4b0f      	ldr	r3, [pc, #60]	; (fd8 <schipp+0xaac>)
     f9c:	885b      	ldrh	r3, [r3, #2]
     f9e:	4a0f      	ldr	r2, [pc, #60]	; (fdc <schipp+0xab0>)
     fa0:	2103      	movs	r1, #3
     fa2:	4618      	mov	r0, r3
     fa4:	f7ff faa3 	bl	4ee <store_block>
     fa8:	e04f      	b.n	104a <schipp+0xb1e>
     faa:	4b0b      	ldr	r3, [pc, #44]	; (fd8 <schipp+0xaac>)
     fac:	885b      	ldrh	r3, [r3, #2]
     fae:	4618      	mov	r0, r3
     fb0:	7bbb      	ldrb	r3, [r7, #14]
     fb2:	3301      	adds	r3, #1
     fb4:	4a10      	ldr	r2, [pc, #64]	; (ff8 <schipp+0xacc>)
     fb6:	4619      	mov	r1, r3
     fb8:	f7ff fa99 	bl	4ee <store_block>
     fbc:	e045      	b.n	104a <schipp+0xb1e>
     fbe:	4b06      	ldr	r3, [pc, #24]	; (fd8 <schipp+0xaac>)
     fc0:	885b      	ldrh	r3, [r3, #2]
     fc2:	4618      	mov	r0, r3
     fc4:	7bbb      	ldrb	r3, [r7, #14]
     fc6:	3301      	adds	r3, #1
     fc8:	4a0b      	ldr	r2, [pc, #44]	; (ff8 <schipp+0xacc>)
     fca:	4619      	mov	r1, r3
     fcc:	f7ff fa84 	bl	4d8 <load_block>
     fd0:	e03b      	b.n	104a <schipp+0xb1e>
     fd2:	2300      	movs	r3, #0
     fd4:	73fb      	strb	r3, [r7, #15]
     fd6:	e01d      	b.n	1014 <schipp+0xae8>
     fd8:	2000005c 	.word	0x2000005c
     fdc:	200000c4 	.word	0x200000c4
     fe0:	200024fc 	.word	0x200024fc
     fe4:	200004ec 	.word	0x200004ec
     fe8:	f0f0f0f1 	.word	0xf0f0f0f1
     fec:	00003d6c 	.word	0x00003d6c
     ff0:	00003dcc 	.word	0x00003dcc
     ff4:	cccccccd 	.word	0xcccccccd
     ff8:	20000061 	.word	0x20000061
     ffc:	7bfb      	ldrb	r3, [r7, #15]
     ffe:	7bfa      	ldrb	r2, [r7, #15]
    1000:	491a      	ldr	r1, [pc, #104]	; (106c <schipp+0xb40>)
    1002:	440a      	add	r2, r1
    1004:	7951      	ldrb	r1, [r2, #5]
    1006:	4a19      	ldr	r2, [pc, #100]	; (106c <schipp+0xb40>)
    1008:	4413      	add	r3, r2
    100a:	460a      	mov	r2, r1
    100c:	755a      	strb	r2, [r3, #21]
    100e:	7bfb      	ldrb	r3, [r7, #15]
    1010:	3301      	adds	r3, #1
    1012:	73fb      	strb	r3, [r7, #15]
    1014:	7bfa      	ldrb	r2, [r7, #15]
    1016:	7bbb      	ldrb	r3, [r7, #14]
    1018:	429a      	cmp	r2, r3
    101a:	d9ef      	bls.n	ffc <schipp+0xad0>
    101c:	e015      	b.n	104a <schipp+0xb1e>
    101e:	2300      	movs	r3, #0
    1020:	73fb      	strb	r3, [r7, #15]
    1022:	e00b      	b.n	103c <schipp+0xb10>
    1024:	7bfb      	ldrb	r3, [r7, #15]
    1026:	7bfa      	ldrb	r2, [r7, #15]
    1028:	4910      	ldr	r1, [pc, #64]	; (106c <schipp+0xb40>)
    102a:	440a      	add	r2, r1
    102c:	7d51      	ldrb	r1, [r2, #21]
    102e:	4a0f      	ldr	r2, [pc, #60]	; (106c <schipp+0xb40>)
    1030:	4413      	add	r3, r2
    1032:	460a      	mov	r2, r1
    1034:	715a      	strb	r2, [r3, #5]
    1036:	7bfb      	ldrb	r3, [r7, #15]
    1038:	3301      	adds	r3, #1
    103a:	73fb      	strb	r3, [r7, #15]
    103c:	7bfa      	ldrb	r2, [r7, #15]
    103e:	7bbb      	ldrb	r3, [r7, #14]
    1040:	429a      	cmp	r2, r3
    1042:	d9ef      	bls.n	1024 <schipp+0xaf8>
    1044:	e001      	b.n	104a <schipp+0xb1e>
    1046:	2302      	movs	r3, #2
    1048:	e00c      	b.n	1064 <schipp+0xb38>
    104a:	e009      	b.n	1060 <schipp+0xb34>
    104c:	bf00      	nop
    104e:	f7ff ba7b 	b.w	548 <schipp+0x1c>
    1052:	bf00      	nop
    1054:	f7ff ba78 	b.w	548 <schipp+0x1c>
    1058:	bf00      	nop
    105a:	f7ff ba75 	b.w	548 <schipp+0x1c>
    105e:	bf00      	nop
    1060:	f7ff ba72 	b.w	548 <schipp+0x1c>
    1064:	4618      	mov	r0, r3
    1066:	3714      	adds	r7, #20
    1068:	46bd      	mov	sp, r7
    106a:	bd90      	pop	{r4, r7, pc}
    106c:	2000005c 	.word	0x2000005c

00001070 <flash_enable>:
    1070:	b480      	push	{r7}
    1072:	af00      	add	r7, sp, #0
    1074:	4b14      	ldr	r3, [pc, #80]	; (10c8 <flash_enable+0x58>)
    1076:	2200      	movs	r2, #0
    1078:	701a      	strb	r2, [r3, #0]
    107a:	4b14      	ldr	r3, [pc, #80]	; (10cc <flash_enable+0x5c>)
    107c:	681b      	ldr	r3, [r3, #0]
    107e:	f003 0301 	and.w	r3, r3, #1
    1082:	2b00      	cmp	r3, #0
    1084:	d10c      	bne.n	10a0 <flash_enable+0x30>
    1086:	4a11      	ldr	r2, [pc, #68]	; (10cc <flash_enable+0x5c>)
    1088:	4b10      	ldr	r3, [pc, #64]	; (10cc <flash_enable+0x5c>)
    108a:	681b      	ldr	r3, [r3, #0]
    108c:	f043 0301 	orr.w	r3, r3, #1
    1090:	6013      	str	r3, [r2, #0]
    1092:	bf00      	nop
    1094:	4b0d      	ldr	r3, [pc, #52]	; (10cc <flash_enable+0x5c>)
    1096:	681b      	ldr	r3, [r3, #0]
    1098:	f003 0302 	and.w	r3, r3, #2
    109c:	2b00      	cmp	r3, #0
    109e:	d0f9      	beq.n	1094 <flash_enable+0x24>
    10a0:	4b0b      	ldr	r3, [pc, #44]	; (10d0 <flash_enable+0x60>)
    10a2:	4a0c      	ldr	r2, [pc, #48]	; (10d4 <flash_enable+0x64>)
    10a4:	605a      	str	r2, [r3, #4]
    10a6:	4b0a      	ldr	r3, [pc, #40]	; (10d0 <flash_enable+0x60>)
    10a8:	4a0b      	ldr	r2, [pc, #44]	; (10d8 <flash_enable+0x68>)
    10aa:	605a      	str	r2, [r3, #4]
    10ac:	4b08      	ldr	r3, [pc, #32]	; (10d0 <flash_enable+0x60>)
    10ae:	691b      	ldr	r3, [r3, #16]
    10b0:	f003 0380 	and.w	r3, r3, #128	; 0x80
    10b4:	2b00      	cmp	r3, #0
    10b6:	bf0c      	ite	eq
    10b8:	2301      	moveq	r3, #1
    10ba:	2300      	movne	r3, #0
    10bc:	b2db      	uxtb	r3, r3
    10be:	4618      	mov	r0, r3
    10c0:	46bd      	mov	sp, r7
    10c2:	bc80      	pop	{r7}
    10c4:	4770      	bx	lr
    10c6:	bf00      	nop
    10c8:	200000e4 	.word	0x200000e4
    10cc:	40021000 	.word	0x40021000
    10d0:	40022000 	.word	0x40022000
    10d4:	45670123 	.word	0x45670123
    10d8:	cdef89ab 	.word	0xcdef89ab

000010dc <flash_write_hword>:
    10dc:	b480      	push	{r7}
    10de:	b083      	sub	sp, #12
    10e0:	af00      	add	r7, sp, #0
    10e2:	6078      	str	r0, [r7, #4]
    10e4:	460b      	mov	r3, r1
    10e6:	807b      	strh	r3, [r7, #2]
    10e8:	bf00      	nop
    10ea:	4b16      	ldr	r3, [pc, #88]	; (1144 <flash_write_hword+0x68>)
    10ec:	68db      	ldr	r3, [r3, #12]
    10ee:	f003 0301 	and.w	r3, r3, #1
    10f2:	2b00      	cmp	r3, #0
    10f4:	d1f9      	bne.n	10ea <flash_write_hword+0xe>
    10f6:	4a13      	ldr	r2, [pc, #76]	; (1144 <flash_write_hword+0x68>)
    10f8:	4b12      	ldr	r3, [pc, #72]	; (1144 <flash_write_hword+0x68>)
    10fa:	68db      	ldr	r3, [r3, #12]
    10fc:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1100:	60d3      	str	r3, [r2, #12]
    1102:	4b10      	ldr	r3, [pc, #64]	; (1144 <flash_write_hword+0x68>)
    1104:	2201      	movs	r2, #1
    1106:	611a      	str	r2, [r3, #16]
    1108:	687b      	ldr	r3, [r7, #4]
    110a:	887a      	ldrh	r2, [r7, #2]
    110c:	801a      	strh	r2, [r3, #0]
    110e:	bf00      	nop
    1110:	4b0c      	ldr	r3, [pc, #48]	; (1144 <flash_write_hword+0x68>)
    1112:	68db      	ldr	r3, [r3, #12]
    1114:	f003 0301 	and.w	r3, r3, #1
    1118:	2b00      	cmp	r3, #0
    111a:	d005      	beq.n	1128 <flash_write_hword+0x4c>
    111c:	4b09      	ldr	r3, [pc, #36]	; (1144 <flash_write_hword+0x68>)
    111e:	68db      	ldr	r3, [r3, #12]
    1120:	f003 0320 	and.w	r3, r3, #32
    1124:	2b00      	cmp	r3, #0
    1126:	d0f3      	beq.n	1110 <flash_write_hword+0x34>
    1128:	687b      	ldr	r3, [r7, #4]
    112a:	881b      	ldrh	r3, [r3, #0]
    112c:	887a      	ldrh	r2, [r7, #2]
    112e:	429a      	cmp	r2, r3
    1130:	bf0c      	ite	eq
    1132:	2301      	moveq	r3, #1
    1134:	2300      	movne	r3, #0
    1136:	b2db      	uxtb	r3, r3
    1138:	4618      	mov	r0, r3
    113a:	370c      	adds	r7, #12
    113c:	46bd      	mov	sp, r7
    113e:	bc80      	pop	{r7}
    1140:	4770      	bx	lr
    1142:	bf00      	nop
    1144:	40022000 	.word	0x40022000

00001148 <write_back_buffer>:
    1148:	b580      	push	{r7, lr}
    114a:	b084      	sub	sp, #16
    114c:	af00      	add	r7, sp, #0
    114e:	4b1e      	ldr	r3, [pc, #120]	; (11c8 <write_back_buffer+0x80>)
    1150:	785b      	ldrb	r3, [r3, #1]
    1152:	029b      	lsls	r3, r3, #10
    1154:	60bb      	str	r3, [r7, #8]
    1156:	4b1d      	ldr	r3, [pc, #116]	; (11cc <write_back_buffer+0x84>)
    1158:	607b      	str	r3, [r7, #4]
    115a:	2300      	movs	r3, #0
    115c:	60fb      	str	r3, [r7, #12]
    115e:	e017      	b.n	1190 <write_back_buffer+0x48>
    1160:	687b      	ldr	r3, [r7, #4]
    1162:	881b      	ldrh	r3, [r3, #0]
    1164:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1168:	4293      	cmp	r3, r2
    116a:	d008      	beq.n	117e <write_back_buffer+0x36>
    116c:	687b      	ldr	r3, [r7, #4]
    116e:	881b      	ldrh	r3, [r3, #0]
    1170:	4619      	mov	r1, r3
    1172:	68b8      	ldr	r0, [r7, #8]
    1174:	f7ff ffb2 	bl	10dc <flash_write_hword>
    1178:	4603      	mov	r3, r0
    117a:	2b00      	cmp	r3, #0
    117c:	d00d      	beq.n	119a <write_back_buffer+0x52>
    117e:	68bb      	ldr	r3, [r7, #8]
    1180:	3302      	adds	r3, #2
    1182:	60bb      	str	r3, [r7, #8]
    1184:	687b      	ldr	r3, [r7, #4]
    1186:	3302      	adds	r3, #2
    1188:	607b      	str	r3, [r7, #4]
    118a:	68fb      	ldr	r3, [r7, #12]
    118c:	3301      	adds	r3, #1
    118e:	60fb      	str	r3, [r7, #12]
    1190:	68fb      	ldr	r3, [r7, #12]
    1192:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1196:	dbe3      	blt.n	1160 <write_back_buffer+0x18>
    1198:	e000      	b.n	119c <write_back_buffer+0x54>
    119a:	bf00      	nop
    119c:	68fb      	ldr	r3, [r7, #12]
    119e:	2b00      	cmp	r3, #0
    11a0:	dd06      	ble.n	11b0 <write_back_buffer+0x68>
    11a2:	4b09      	ldr	r3, [pc, #36]	; (11c8 <write_back_buffer+0x80>)
    11a4:	781b      	ldrb	r3, [r3, #0]
    11a6:	f023 0304 	bic.w	r3, r3, #4
    11aa:	b2da      	uxtb	r2, r3
    11ac:	4b06      	ldr	r3, [pc, #24]	; (11c8 <write_back_buffer+0x80>)
    11ae:	701a      	strb	r2, [r3, #0]
    11b0:	68fb      	ldr	r3, [r7, #12]
    11b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    11b6:	d101      	bne.n	11bc <write_back_buffer+0x74>
    11b8:	2301      	movs	r3, #1
    11ba:	e000      	b.n	11be <write_back_buffer+0x76>
    11bc:	2300      	movs	r3, #0
    11be:	4618      	mov	r0, r3
    11c0:	3710      	adds	r7, #16
    11c2:	46bd      	mov	sp, r7
    11c4:	bd80      	pop	{r7, pc}
    11c6:	bf00      	nop
    11c8:	200000e4 	.word	0x200000e4
    11cc:	200000e6 	.word	0x200000e6

000011d0 <load_row>:
    11d0:	b480      	push	{r7}
    11d2:	b087      	sub	sp, #28
    11d4:	af00      	add	r7, sp, #0
    11d6:	6078      	str	r0, [r7, #4]
    11d8:	687b      	ldr	r3, [r7, #4]
    11da:	029b      	lsls	r3, r3, #10
    11dc:	617b      	str	r3, [r7, #20]
    11de:	4b15      	ldr	r3, [pc, #84]	; (1234 <load_row+0x64>)
    11e0:	613b      	str	r3, [r7, #16]
    11e2:	2300      	movs	r3, #0
    11e4:	60fb      	str	r3, [r7, #12]
    11e6:	e00a      	b.n	11fe <load_row+0x2e>
    11e8:	693b      	ldr	r3, [r7, #16]
    11ea:	1c9a      	adds	r2, r3, #2
    11ec:	613a      	str	r2, [r7, #16]
    11ee:	697a      	ldr	r2, [r7, #20]
    11f0:	1c91      	adds	r1, r2, #2
    11f2:	6179      	str	r1, [r7, #20]
    11f4:	8812      	ldrh	r2, [r2, #0]
    11f6:	801a      	strh	r2, [r3, #0]
    11f8:	68fb      	ldr	r3, [r7, #12]
    11fa:	3301      	adds	r3, #1
    11fc:	60fb      	str	r3, [r7, #12]
    11fe:	68fb      	ldr	r3, [r7, #12]
    1200:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1204:	dbf0      	blt.n	11e8 <load_row+0x18>
    1206:	687b      	ldr	r3, [r7, #4]
    1208:	b2da      	uxtb	r2, r3
    120a:	4b0b      	ldr	r3, [pc, #44]	; (1238 <load_row+0x68>)
    120c:	705a      	strb	r2, [r3, #1]
    120e:	4b0a      	ldr	r3, [pc, #40]	; (1238 <load_row+0x68>)
    1210:	781b      	ldrb	r3, [r3, #0]
    1212:	f023 0301 	bic.w	r3, r3, #1
    1216:	b2da      	uxtb	r2, r3
    1218:	4b07      	ldr	r3, [pc, #28]	; (1238 <load_row+0x68>)
    121a:	701a      	strb	r2, [r3, #0]
    121c:	4b06      	ldr	r3, [pc, #24]	; (1238 <load_row+0x68>)
    121e:	781b      	ldrb	r3, [r3, #0]
    1220:	f043 0302 	orr.w	r3, r3, #2
    1224:	b2da      	uxtb	r2, r3
    1226:	4b04      	ldr	r3, [pc, #16]	; (1238 <load_row+0x68>)
    1228:	701a      	strb	r2, [r3, #0]
    122a:	bf00      	nop
    122c:	371c      	adds	r7, #28
    122e:	46bd      	mov	sp, r7
    1230:	bc80      	pop	{r7}
    1232:	4770      	bx	lr
    1234:	200000e6 	.word	0x200000e6
    1238:	200000e4 	.word	0x200000e4

0000123c <is_erased>:
    123c:	b480      	push	{r7}
    123e:	b085      	sub	sp, #20
    1240:	af00      	add	r7, sp, #0
    1242:	6078      	str	r0, [r7, #4]
    1244:	687b      	ldr	r3, [r7, #4]
    1246:	029b      	lsls	r3, r3, #10
    1248:	60fb      	str	r3, [r7, #12]
    124a:	2300      	movs	r3, #0
    124c:	60bb      	str	r3, [r7, #8]
    124e:	e00c      	b.n	126a <is_erased+0x2e>
    1250:	68fb      	ldr	r3, [r7, #12]
    1252:	1c9a      	adds	r2, r3, #2
    1254:	60fa      	str	r2, [r7, #12]
    1256:	881b      	ldrh	r3, [r3, #0]
    1258:	f64f 72ff 	movw	r2, #65535	; 0xffff
    125c:	4293      	cmp	r3, r2
    125e:	d001      	beq.n	1264 <is_erased+0x28>
    1260:	2300      	movs	r3, #0
    1262:	e008      	b.n	1276 <is_erased+0x3a>
    1264:	68bb      	ldr	r3, [r7, #8]
    1266:	3301      	adds	r3, #1
    1268:	60bb      	str	r3, [r7, #8]
    126a:	68bb      	ldr	r3, [r7, #8]
    126c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1270:	dbee      	blt.n	1250 <is_erased+0x14>
    1272:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1276:	4618      	mov	r0, r3
    1278:	3714      	adds	r7, #20
    127a:	46bd      	mov	sp, r7
    127c:	bc80      	pop	{r7}
    127e:	4770      	bx	lr

00001280 <flash_erase_row>:
    1280:	b580      	push	{r7, lr}
    1282:	b086      	sub	sp, #24
    1284:	af00      	add	r7, sp, #0
    1286:	6078      	str	r0, [r7, #4]
    1288:	687b      	ldr	r3, [r7, #4]
    128a:	2b3f      	cmp	r3, #63	; 0x3f
    128c:	d801      	bhi.n	1292 <flash_erase_row+0x12>
    128e:	2300      	movs	r3, #0
    1290:	e052      	b.n	1338 <flash_erase_row+0xb8>
    1292:	6878      	ldr	r0, [r7, #4]
    1294:	f7ff ffd2 	bl	123c <is_erased>
    1298:	4603      	mov	r3, r0
    129a:	2b00      	cmp	r3, #0
    129c:	d001      	beq.n	12a2 <flash_erase_row+0x22>
    129e:	2301      	movs	r3, #1
    12a0:	e04a      	b.n	1338 <flash_erase_row+0xb8>
    12a2:	687b      	ldr	r3, [r7, #4]
    12a4:	029b      	lsls	r3, r3, #10
    12a6:	617b      	str	r3, [r7, #20]
    12a8:	4b25      	ldr	r3, [pc, #148]	; (1340 <flash_erase_row+0xc0>)
    12aa:	691b      	ldr	r3, [r3, #16]
    12ac:	f003 0380 	and.w	r3, r3, #128	; 0x80
    12b0:	2b00      	cmp	r3, #0
    12b2:	d001      	beq.n	12b8 <flash_erase_row+0x38>
    12b4:	2300      	movs	r3, #0
    12b6:	e03f      	b.n	1338 <flash_erase_row+0xb8>
    12b8:	4a21      	ldr	r2, [pc, #132]	; (1340 <flash_erase_row+0xc0>)
    12ba:	4b21      	ldr	r3, [pc, #132]	; (1340 <flash_erase_row+0xc0>)
    12bc:	68db      	ldr	r3, [r3, #12]
    12be:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    12c2:	60d3      	str	r3, [r2, #12]
    12c4:	4b1e      	ldr	r3, [pc, #120]	; (1340 <flash_erase_row+0xc0>)
    12c6:	2202      	movs	r2, #2
    12c8:	611a      	str	r2, [r3, #16]
    12ca:	4a1d      	ldr	r2, [pc, #116]	; (1340 <flash_erase_row+0xc0>)
    12cc:	697b      	ldr	r3, [r7, #20]
    12ce:	6153      	str	r3, [r2, #20]
    12d0:	4a1b      	ldr	r2, [pc, #108]	; (1340 <flash_erase_row+0xc0>)
    12d2:	4b1b      	ldr	r3, [pc, #108]	; (1340 <flash_erase_row+0xc0>)
    12d4:	691b      	ldr	r3, [r3, #16]
    12d6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    12da:	6113      	str	r3, [r2, #16]
    12dc:	bf00      	nop
    12de:	4b18      	ldr	r3, [pc, #96]	; (1340 <flash_erase_row+0xc0>)
    12e0:	68db      	ldr	r3, [r3, #12]
    12e2:	f003 0301 	and.w	r3, r3, #1
    12e6:	2b00      	cmp	r3, #0
    12e8:	d005      	beq.n	12f6 <flash_erase_row+0x76>
    12ea:	4b15      	ldr	r3, [pc, #84]	; (1340 <flash_erase_row+0xc0>)
    12ec:	68db      	ldr	r3, [r3, #12]
    12ee:	f003 0320 	and.w	r3, r3, #32
    12f2:	2b00      	cmp	r3, #0
    12f4:	d0f3      	beq.n	12de <flash_erase_row+0x5e>
    12f6:	687b      	ldr	r3, [r7, #4]
    12f8:	029b      	lsls	r3, r3, #10
    12fa:	617b      	str	r3, [r7, #20]
    12fc:	2300      	movs	r3, #0
    12fe:	60fb      	str	r3, [r7, #12]
    1300:	e00c      	b.n	131c <flash_erase_row+0x9c>
    1302:	697b      	ldr	r3, [r7, #20]
    1304:	1c9a      	adds	r2, r3, #2
    1306:	617a      	str	r2, [r7, #20]
    1308:	881b      	ldrh	r3, [r3, #0]
    130a:	827b      	strh	r3, [r7, #18]
    130c:	8a7b      	ldrh	r3, [r7, #18]
    130e:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1312:	4293      	cmp	r3, r2
    1314:	d107      	bne.n	1326 <flash_erase_row+0xa6>
    1316:	68fb      	ldr	r3, [r7, #12]
    1318:	3301      	adds	r3, #1
    131a:	60fb      	str	r3, [r7, #12]
    131c:	68fb      	ldr	r3, [r7, #12]
    131e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1322:	dbee      	blt.n	1302 <flash_erase_row+0x82>
    1324:	e000      	b.n	1328 <flash_erase_row+0xa8>
    1326:	bf00      	nop
    1328:	8a7b      	ldrh	r3, [r7, #18]
    132a:	f64f 72ff 	movw	r2, #65535	; 0xffff
    132e:	4293      	cmp	r3, r2
    1330:	bf0c      	ite	eq
    1332:	2301      	moveq	r3, #1
    1334:	2300      	movne	r3, #0
    1336:	b2db      	uxtb	r3, r3
    1338:	4618      	mov	r0, r3
    133a:	3718      	adds	r7, #24
    133c:	46bd      	mov	sp, r7
    133e:	bd80      	pop	{r7, pc}
    1340:	40022000 	.word	0x40022000

00001344 <flash_sync>:
    1344:	b580      	push	{r7, lr}
    1346:	af00      	add	r7, sp, #0
    1348:	4b10      	ldr	r3, [pc, #64]	; (138c <flash_sync+0x48>)
    134a:	781b      	ldrb	r3, [r3, #0]
    134c:	f003 0301 	and.w	r3, r3, #1
    1350:	2b00      	cmp	r3, #0
    1352:	d017      	beq.n	1384 <flash_sync+0x40>
    1354:	4b0d      	ldr	r3, [pc, #52]	; (138c <flash_sync+0x48>)
    1356:	785b      	ldrb	r3, [r3, #1]
    1358:	4618      	mov	r0, r3
    135a:	f7ff ff91 	bl	1280 <flash_erase_row>
    135e:	4603      	mov	r3, r0
    1360:	2b00      	cmp	r3, #0
    1362:	d00d      	beq.n	1380 <flash_sync+0x3c>
    1364:	f7ff fef0 	bl	1148 <write_back_buffer>
    1368:	4603      	mov	r3, r0
    136a:	2b00      	cmp	r3, #0
    136c:	d008      	beq.n	1380 <flash_sync+0x3c>
    136e:	4b07      	ldr	r3, [pc, #28]	; (138c <flash_sync+0x48>)
    1370:	781b      	ldrb	r3, [r3, #0]
    1372:	f023 0301 	bic.w	r3, r3, #1
    1376:	b2da      	uxtb	r2, r3
    1378:	4b04      	ldr	r3, [pc, #16]	; (138c <flash_sync+0x48>)
    137a:	701a      	strb	r2, [r3, #0]
    137c:	2301      	movs	r3, #1
    137e:	e002      	b.n	1386 <flash_sync+0x42>
    1380:	2300      	movs	r3, #0
    1382:	e000      	b.n	1386 <flash_sync+0x42>
    1384:	2301      	movs	r3, #1
    1386:	4618      	mov	r0, r3
    1388:	bd80      	pop	{r7, pc}
    138a:	bf00      	nop
    138c:	200000e4 	.word	0x200000e4

00001390 <flash_flush>:
    1390:	b480      	push	{r7}
    1392:	af00      	add	r7, sp, #0
    1394:	4b03      	ldr	r3, [pc, #12]	; (13a4 <flash_flush+0x14>)
    1396:	2200      	movs	r2, #0
    1398:	701a      	strb	r2, [r3, #0]
    139a:	bf00      	nop
    139c:	46bd      	mov	sp, r7
    139e:	bc80      	pop	{r7}
    13a0:	4770      	bx	lr
    13a2:	bf00      	nop
    13a4:	200000e4 	.word	0x200000e4

000013a8 <flash_disable>:
    13a8:	b580      	push	{r7, lr}
    13aa:	af00      	add	r7, sp, #0
    13ac:	f7ff ffca 	bl	1344 <flash_sync>
    13b0:	4b05      	ldr	r3, [pc, #20]	; (13c8 <flash_disable+0x20>)
    13b2:	2200      	movs	r2, #0
    13b4:	701a      	strb	r2, [r3, #0]
    13b6:	4a05      	ldr	r2, [pc, #20]	; (13cc <flash_disable+0x24>)
    13b8:	4b04      	ldr	r3, [pc, #16]	; (13cc <flash_disable+0x24>)
    13ba:	691b      	ldr	r3, [r3, #16]
    13bc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    13c0:	6113      	str	r3, [r2, #16]
    13c2:	bf00      	nop
    13c4:	bd80      	pop	{r7, pc}
    13c6:	bf00      	nop
    13c8:	200000e4 	.word	0x200000e4
    13cc:	40022000 	.word	0x40022000

000013d0 <strcmp>:
    13d0:	b480      	push	{r7}
    13d2:	b085      	sub	sp, #20
    13d4:	af00      	add	r7, sp, #0
    13d6:	6078      	str	r0, [r7, #4]
    13d8:	6039      	str	r1, [r7, #0]
    13da:	2300      	movs	r3, #0
    13dc:	60fb      	str	r3, [r7, #12]
    13de:	e018      	b.n	1412 <strcmp+0x42>
    13e0:	687b      	ldr	r3, [r7, #4]
    13e2:	781a      	ldrb	r2, [r3, #0]
    13e4:	683b      	ldr	r3, [r7, #0]
    13e6:	781b      	ldrb	r3, [r3, #0]
    13e8:	429a      	cmp	r2, r3
    13ea:	d203      	bcs.n	13f4 <strcmp+0x24>
    13ec:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    13f0:	60fb      	str	r3, [r7, #12]
    13f2:	e016      	b.n	1422 <strcmp+0x52>
    13f4:	687b      	ldr	r3, [r7, #4]
    13f6:	781a      	ldrb	r2, [r3, #0]
    13f8:	683b      	ldr	r3, [r7, #0]
    13fa:	781b      	ldrb	r3, [r3, #0]
    13fc:	429a      	cmp	r2, r3
    13fe:	d902      	bls.n	1406 <strcmp+0x36>
    1400:	2301      	movs	r3, #1
    1402:	60fb      	str	r3, [r7, #12]
    1404:	e00d      	b.n	1422 <strcmp+0x52>
    1406:	687b      	ldr	r3, [r7, #4]
    1408:	3301      	adds	r3, #1
    140a:	607b      	str	r3, [r7, #4]
    140c:	683b      	ldr	r3, [r7, #0]
    140e:	3301      	adds	r3, #1
    1410:	603b      	str	r3, [r7, #0]
    1412:	687b      	ldr	r3, [r7, #4]
    1414:	781b      	ldrb	r3, [r3, #0]
    1416:	2b00      	cmp	r3, #0
    1418:	d003      	beq.n	1422 <strcmp+0x52>
    141a:	683b      	ldr	r3, [r7, #0]
    141c:	781b      	ldrb	r3, [r3, #0]
    141e:	2b00      	cmp	r3, #0
    1420:	d1de      	bne.n	13e0 <strcmp+0x10>
    1422:	68fb      	ldr	r3, [r7, #12]
    1424:	2b00      	cmp	r3, #0
    1426:	d115      	bne.n	1454 <strcmp+0x84>
    1428:	687b      	ldr	r3, [r7, #4]
    142a:	781b      	ldrb	r3, [r3, #0]
    142c:	2b00      	cmp	r3, #0
    142e:	d107      	bne.n	1440 <strcmp+0x70>
    1430:	683b      	ldr	r3, [r7, #0]
    1432:	781b      	ldrb	r3, [r3, #0]
    1434:	2b00      	cmp	r3, #0
    1436:	d003      	beq.n	1440 <strcmp+0x70>
    1438:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    143c:	60fb      	str	r3, [r7, #12]
    143e:	e009      	b.n	1454 <strcmp+0x84>
    1440:	687b      	ldr	r3, [r7, #4]
    1442:	781b      	ldrb	r3, [r3, #0]
    1444:	2b00      	cmp	r3, #0
    1446:	d005      	beq.n	1454 <strcmp+0x84>
    1448:	683b      	ldr	r3, [r7, #0]
    144a:	781b      	ldrb	r3, [r3, #0]
    144c:	2b00      	cmp	r3, #0
    144e:	d101      	bne.n	1454 <strcmp+0x84>
    1450:	2301      	movs	r3, #1
    1452:	60fb      	str	r3, [r7, #12]
    1454:	68fb      	ldr	r3, [r7, #12]
    1456:	4618      	mov	r0, r3
    1458:	3714      	adds	r7, #20
    145a:	46bd      	mov	sp, r7
    145c:	bc80      	pop	{r7}
    145e:	4770      	bx	lr

00001460 <alpha>:
    1460:	b480      	push	{r7}
    1462:	b083      	sub	sp, #12
    1464:	af00      	add	r7, sp, #0
    1466:	4603      	mov	r3, r0
    1468:	71fb      	strb	r3, [r7, #7]
    146a:	79fb      	ldrb	r3, [r7, #7]
    146c:	2b60      	cmp	r3, #96	; 0x60
    146e:	d902      	bls.n	1476 <alpha+0x16>
    1470:	79fb      	ldrb	r3, [r7, #7]
    1472:	2b7a      	cmp	r3, #122	; 0x7a
    1474:	d905      	bls.n	1482 <alpha+0x22>
    1476:	79fb      	ldrb	r3, [r7, #7]
    1478:	2b40      	cmp	r3, #64	; 0x40
    147a:	d904      	bls.n	1486 <alpha+0x26>
    147c:	79fb      	ldrb	r3, [r7, #7]
    147e:	2b5a      	cmp	r3, #90	; 0x5a
    1480:	d801      	bhi.n	1486 <alpha+0x26>
    1482:	2301      	movs	r3, #1
    1484:	e000      	b.n	1488 <alpha+0x28>
    1486:	2300      	movs	r3, #0
    1488:	4618      	mov	r0, r3
    148a:	370c      	adds	r7, #12
    148c:	46bd      	mov	sp, r7
    148e:	bc80      	pop	{r7}
    1490:	4770      	bx	lr

00001492 <digit>:
    1492:	b480      	push	{r7}
    1494:	b083      	sub	sp, #12
    1496:	af00      	add	r7, sp, #0
    1498:	4603      	mov	r3, r0
    149a:	71fb      	strb	r3, [r7, #7]
    149c:	79fb      	ldrb	r3, [r7, #7]
    149e:	2b2f      	cmp	r3, #47	; 0x2f
    14a0:	d904      	bls.n	14ac <digit+0x1a>
    14a2:	79fb      	ldrb	r3, [r7, #7]
    14a4:	2b39      	cmp	r3, #57	; 0x39
    14a6:	d801      	bhi.n	14ac <digit+0x1a>
    14a8:	2301      	movs	r3, #1
    14aa:	e000      	b.n	14ae <digit+0x1c>
    14ac:	2300      	movs	r3, #0
    14ae:	4618      	mov	r0, r3
    14b0:	370c      	adds	r7, #12
    14b2:	46bd      	mov	sp, r7
    14b4:	bc80      	pop	{r7}
    14b6:	4770      	bx	lr

000014b8 <hexdigit>:
    14b8:	b580      	push	{r7, lr}
    14ba:	b082      	sub	sp, #8
    14bc:	af00      	add	r7, sp, #0
    14be:	4603      	mov	r3, r0
    14c0:	71fb      	strb	r3, [r7, #7]
    14c2:	79fb      	ldrb	r3, [r7, #7]
    14c4:	2b60      	cmp	r3, #96	; 0x60
    14c6:	d902      	bls.n	14ce <hexdigit+0x16>
    14c8:	79fb      	ldrb	r3, [r7, #7]
    14ca:	3b20      	subs	r3, #32
    14cc:	71fb      	strb	r3, [r7, #7]
    14ce:	79fb      	ldrb	r3, [r7, #7]
    14d0:	4618      	mov	r0, r3
    14d2:	f7ff ffde 	bl	1492 <digit>
    14d6:	4603      	mov	r3, r0
    14d8:	2b00      	cmp	r3, #0
    14da:	d105      	bne.n	14e8 <hexdigit+0x30>
    14dc:	79fb      	ldrb	r3, [r7, #7]
    14de:	2b40      	cmp	r3, #64	; 0x40
    14e0:	d904      	bls.n	14ec <hexdigit+0x34>
    14e2:	79fb      	ldrb	r3, [r7, #7]
    14e4:	2b46      	cmp	r3, #70	; 0x46
    14e6:	d801      	bhi.n	14ec <hexdigit+0x34>
    14e8:	2301      	movs	r3, #1
    14ea:	e000      	b.n	14ee <hexdigit+0x36>
    14ec:	2300      	movs	r3, #0
    14ee:	4618      	mov	r0, r3
    14f0:	3708      	adds	r7, #8
    14f2:	46bd      	mov	sp, r7
    14f4:	bd80      	pop	{r7, pc}

000014f6 <atoi>:
    14f6:	b580      	push	{r7, lr}
    14f8:	b086      	sub	sp, #24
    14fa:	af00      	add	r7, sp, #0
    14fc:	6078      	str	r0, [r7, #4]
    14fe:	2300      	movs	r3, #0
    1500:	617b      	str	r3, [r7, #20]
    1502:	2301      	movs	r3, #1
    1504:	613b      	str	r3, [r7, #16]
    1506:	230a      	movs	r3, #10
    1508:	60fb      	str	r3, [r7, #12]
    150a:	e002      	b.n	1512 <atoi+0x1c>
    150c:	687b      	ldr	r3, [r7, #4]
    150e:	3301      	adds	r3, #1
    1510:	607b      	str	r3, [r7, #4]
    1512:	687b      	ldr	r3, [r7, #4]
    1514:	781b      	ldrb	r3, [r3, #0]
    1516:	2b00      	cmp	r3, #0
    1518:	d003      	beq.n	1522 <atoi+0x2c>
    151a:	687b      	ldr	r3, [r7, #4]
    151c:	781b      	ldrb	r3, [r3, #0]
    151e:	2b20      	cmp	r3, #32
    1520:	d0f4      	beq.n	150c <atoi+0x16>
    1522:	687b      	ldr	r3, [r7, #4]
    1524:	781b      	ldrb	r3, [r3, #0]
    1526:	2b2d      	cmp	r3, #45	; 0x2d
    1528:	d105      	bne.n	1536 <atoi+0x40>
    152a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    152e:	613b      	str	r3, [r7, #16]
    1530:	687b      	ldr	r3, [r7, #4]
    1532:	3301      	adds	r3, #1
    1534:	607b      	str	r3, [r7, #4]
    1536:	687b      	ldr	r3, [r7, #4]
    1538:	781b      	ldrb	r3, [r3, #0]
    153a:	2b24      	cmp	r3, #36	; 0x24
    153c:	d10e      	bne.n	155c <atoi+0x66>
    153e:	687b      	ldr	r3, [r7, #4]
    1540:	3301      	adds	r3, #1
    1542:	781b      	ldrb	r3, [r3, #0]
    1544:	4618      	mov	r0, r3
    1546:	f7ff ffb7 	bl	14b8 <hexdigit>
    154a:	4603      	mov	r3, r0
    154c:	2b00      	cmp	r3, #0
    154e:	d005      	beq.n	155c <atoi+0x66>
    1550:	2310      	movs	r3, #16
    1552:	60fb      	str	r3, [r7, #12]
    1554:	687b      	ldr	r3, [r7, #4]
    1556:	3301      	adds	r3, #1
    1558:	607b      	str	r3, [r7, #4]
    155a:	e012      	b.n	1582 <atoi+0x8c>
    155c:	687b      	ldr	r3, [r7, #4]
    155e:	781b      	ldrb	r3, [r3, #0]
    1560:	2b30      	cmp	r3, #48	; 0x30
    1562:	d128      	bne.n	15b6 <atoi+0xc0>
    1564:	687b      	ldr	r3, [r7, #4]
    1566:	3301      	adds	r3, #1
    1568:	781b      	ldrb	r3, [r3, #0]
    156a:	2b78      	cmp	r3, #120	; 0x78
    156c:	d004      	beq.n	1578 <atoi+0x82>
    156e:	687b      	ldr	r3, [r7, #4]
    1570:	3301      	adds	r3, #1
    1572:	781b      	ldrb	r3, [r3, #0]
    1574:	2b58      	cmp	r3, #88	; 0x58
    1576:	d11e      	bne.n	15b6 <atoi+0xc0>
    1578:	2310      	movs	r3, #16
    157a:	60fb      	str	r3, [r7, #12]
    157c:	687b      	ldr	r3, [r7, #4]
    157e:	3302      	adds	r3, #2
    1580:	607b      	str	r3, [r7, #4]
    1582:	e018      	b.n	15b6 <atoi+0xc0>
    1584:	7afb      	ldrb	r3, [r7, #11]
    1586:	2b60      	cmp	r3, #96	; 0x60
    1588:	d902      	bls.n	1590 <atoi+0x9a>
    158a:	7afb      	ldrb	r3, [r7, #11]
    158c:	3b20      	subs	r3, #32
    158e:	72fb      	strb	r3, [r7, #11]
    1590:	7afb      	ldrb	r3, [r7, #11]
    1592:	3b30      	subs	r3, #48	; 0x30
    1594:	72fb      	strb	r3, [r7, #11]
    1596:	7afb      	ldrb	r3, [r7, #11]
    1598:	2b09      	cmp	r3, #9
    159a:	d902      	bls.n	15a2 <atoi+0xac>
    159c:	7afb      	ldrb	r3, [r7, #11]
    159e:	3b07      	subs	r3, #7
    15a0:	72fb      	strb	r3, [r7, #11]
    15a2:	697b      	ldr	r3, [r7, #20]
    15a4:	68fa      	ldr	r2, [r7, #12]
    15a6:	fb02 f203 	mul.w	r2, r2, r3
    15aa:	7afb      	ldrb	r3, [r7, #11]
    15ac:	4413      	add	r3, r2
    15ae:	617b      	str	r3, [r7, #20]
    15b0:	687b      	ldr	r3, [r7, #4]
    15b2:	3301      	adds	r3, #1
    15b4:	607b      	str	r3, [r7, #4]
    15b6:	687b      	ldr	r3, [r7, #4]
    15b8:	781b      	ldrb	r3, [r3, #0]
    15ba:	72fb      	strb	r3, [r7, #11]
    15bc:	7afb      	ldrb	r3, [r7, #11]
    15be:	2b00      	cmp	r3, #0
    15c0:	d00d      	beq.n	15de <atoi+0xe8>
    15c2:	68fb      	ldr	r3, [r7, #12]
    15c4:	2b0a      	cmp	r3, #10
    15c6:	d10a      	bne.n	15de <atoi+0xe8>
    15c8:	7afb      	ldrb	r3, [r7, #11]
    15ca:	4618      	mov	r0, r3
    15cc:	f7ff ff61 	bl	1492 <digit>
    15d0:	4603      	mov	r3, r0
    15d2:	2b00      	cmp	r3, #0
    15d4:	bf14      	ite	ne
    15d6:	2301      	movne	r3, #1
    15d8:	2300      	moveq	r3, #0
    15da:	b2db      	uxtb	r3, r3
    15dc:	e009      	b.n	15f2 <atoi+0xfc>
    15de:	7afb      	ldrb	r3, [r7, #11]
    15e0:	4618      	mov	r0, r3
    15e2:	f7ff ff69 	bl	14b8 <hexdigit>
    15e6:	4603      	mov	r3, r0
    15e8:	2b00      	cmp	r3, #0
    15ea:	bf14      	ite	ne
    15ec:	2301      	movne	r3, #1
    15ee:	2300      	moveq	r3, #0
    15f0:	b2db      	uxtb	r3, r3
    15f2:	2b00      	cmp	r3, #0
    15f4:	d1c6      	bne.n	1584 <atoi+0x8e>
    15f6:	693b      	ldr	r3, [r7, #16]
    15f8:	697a      	ldr	r2, [r7, #20]
    15fa:	fb02 f303 	mul.w	r3, r2, r3
    15fe:	4618      	mov	r0, r3
    1600:	3718      	adds	r7, #24
    1602:	46bd      	mov	sp, r7
    1604:	bd80      	pop	{r7, pc}

00001606 <move>:
    1606:	b480      	push	{r7}
    1608:	b085      	sub	sp, #20
    160a:	af00      	add	r7, sp, #0
    160c:	60f8      	str	r0, [r7, #12]
    160e:	60b9      	str	r1, [r7, #8]
    1610:	607a      	str	r2, [r7, #4]
    1612:	e00a      	b.n	162a <move+0x24>
    1614:	68bb      	ldr	r3, [r7, #8]
    1616:	1c5a      	adds	r2, r3, #1
    1618:	60ba      	str	r2, [r7, #8]
    161a:	68fa      	ldr	r2, [r7, #12]
    161c:	1c51      	adds	r1, r2, #1
    161e:	60f9      	str	r1, [r7, #12]
    1620:	7812      	ldrb	r2, [r2, #0]
    1622:	701a      	strb	r2, [r3, #0]
    1624:	687b      	ldr	r3, [r7, #4]
    1626:	3b01      	subs	r3, #1
    1628:	607b      	str	r3, [r7, #4]
    162a:	687b      	ldr	r3, [r7, #4]
    162c:	2b00      	cmp	r3, #0
    162e:	d1f1      	bne.n	1614 <move+0xe>
    1630:	bf00      	nop
    1632:	3714      	adds	r7, #20
    1634:	46bd      	mov	sp, r7
    1636:	bc80      	pop	{r7}
    1638:	4770      	bx	lr

0000163a <strlen>:
    163a:	b480      	push	{r7}
    163c:	b085      	sub	sp, #20
    163e:	af00      	add	r7, sp, #0
    1640:	6078      	str	r0, [r7, #4]
    1642:	2300      	movs	r3, #0
    1644:	60fb      	str	r3, [r7, #12]
    1646:	e002      	b.n	164e <strlen+0x14>
    1648:	68fb      	ldr	r3, [r7, #12]
    164a:	3301      	adds	r3, #1
    164c:	60fb      	str	r3, [r7, #12]
    164e:	68fb      	ldr	r3, [r7, #12]
    1650:	687a      	ldr	r2, [r7, #4]
    1652:	4413      	add	r3, r2
    1654:	781b      	ldrb	r3, [r3, #0]
    1656:	2b00      	cmp	r3, #0
    1658:	d1f6      	bne.n	1648 <strlen+0xe>
    165a:	68fb      	ldr	r3, [r7, #12]
    165c:	4618      	mov	r0, r3
    165e:	3714      	adds	r7, #20
    1660:	46bd      	mov	sp, r7
    1662:	bc80      	pop	{r7}
    1664:	4770      	bx	lr

00001666 <fill>:
    1666:	b480      	push	{r7}
    1668:	b087      	sub	sp, #28
    166a:	af00      	add	r7, sp, #0
    166c:	60f8      	str	r0, [r7, #12]
    166e:	60b9      	str	r1, [r7, #8]
    1670:	4613      	mov	r3, r2
    1672:	71fb      	strb	r3, [r7, #7]
    1674:	2300      	movs	r3, #0
    1676:	617b      	str	r3, [r7, #20]
    1678:	e007      	b.n	168a <fill+0x24>
    167a:	68fb      	ldr	r3, [r7, #12]
    167c:	1c5a      	adds	r2, r3, #1
    167e:	60fa      	str	r2, [r7, #12]
    1680:	79fa      	ldrb	r2, [r7, #7]
    1682:	701a      	strb	r2, [r3, #0]
    1684:	697b      	ldr	r3, [r7, #20]
    1686:	3301      	adds	r3, #1
    1688:	617b      	str	r3, [r7, #20]
    168a:	697a      	ldr	r2, [r7, #20]
    168c:	68bb      	ldr	r3, [r7, #8]
    168e:	429a      	cmp	r2, r3
    1690:	d3f3      	bcc.n	167a <fill+0x14>
    1692:	bf00      	nop
    1694:	371c      	adds	r7, #28
    1696:	46bd      	mov	sp, r7
    1698:	bc80      	pop	{r7}
    169a:	4770      	bx	lr

0000169c <is_lower>:
    169c:	b480      	push	{r7}
    169e:	b083      	sub	sp, #12
    16a0:	af00      	add	r7, sp, #0
    16a2:	4603      	mov	r3, r0
    16a4:	71fb      	strb	r3, [r7, #7]
    16a6:	79fb      	ldrb	r3, [r7, #7]
    16a8:	2b60      	cmp	r3, #96	; 0x60
    16aa:	d904      	bls.n	16b6 <is_lower+0x1a>
    16ac:	79fb      	ldrb	r3, [r7, #7]
    16ae:	2b7a      	cmp	r3, #122	; 0x7a
    16b0:	d801      	bhi.n	16b6 <is_lower+0x1a>
    16b2:	2301      	movs	r3, #1
    16b4:	e000      	b.n	16b8 <is_lower+0x1c>
    16b6:	2300      	movs	r3, #0
    16b8:	4618      	mov	r0, r3
    16ba:	370c      	adds	r7, #12
    16bc:	46bd      	mov	sp, r7
    16be:	bc80      	pop	{r7}
    16c0:	4770      	bx	lr

000016c2 <is_upper>:
    16c2:	b480      	push	{r7}
    16c4:	b083      	sub	sp, #12
    16c6:	af00      	add	r7, sp, #0
    16c8:	4603      	mov	r3, r0
    16ca:	71fb      	strb	r3, [r7, #7]
    16cc:	79fb      	ldrb	r3, [r7, #7]
    16ce:	2b40      	cmp	r3, #64	; 0x40
    16d0:	d904      	bls.n	16dc <is_upper+0x1a>
    16d2:	79fb      	ldrb	r3, [r7, #7]
    16d4:	2b5a      	cmp	r3, #90	; 0x5a
    16d6:	d801      	bhi.n	16dc <is_upper+0x1a>
    16d8:	2301      	movs	r3, #1
    16da:	e000      	b.n	16de <is_upper+0x1c>
    16dc:	2300      	movs	r3, #0
    16de:	4618      	mov	r0, r3
    16e0:	370c      	adds	r7, #12
    16e2:	46bd      	mov	sp, r7
    16e4:	bc80      	pop	{r7}
    16e6:	4770      	bx	lr

000016e8 <uppercase>:
    16e8:	b580      	push	{r7, lr}
    16ea:	b082      	sub	sp, #8
    16ec:	af00      	add	r7, sp, #0
    16ee:	6078      	str	r0, [r7, #4]
    16f0:	e010      	b.n	1714 <uppercase+0x2c>
    16f2:	687b      	ldr	r3, [r7, #4]
    16f4:	781b      	ldrb	r3, [r3, #0]
    16f6:	4618      	mov	r0, r3
    16f8:	f7ff ffd0 	bl	169c <is_lower>
    16fc:	4603      	mov	r3, r0
    16fe:	2b00      	cmp	r3, #0
    1700:	d005      	beq.n	170e <uppercase+0x26>
    1702:	687b      	ldr	r3, [r7, #4]
    1704:	781b      	ldrb	r3, [r3, #0]
    1706:	3b20      	subs	r3, #32
    1708:	b2da      	uxtb	r2, r3
    170a:	687b      	ldr	r3, [r7, #4]
    170c:	701a      	strb	r2, [r3, #0]
    170e:	687b      	ldr	r3, [r7, #4]
    1710:	3301      	adds	r3, #1
    1712:	607b      	str	r3, [r7, #4]
    1714:	687b      	ldr	r3, [r7, #4]
    1716:	781b      	ldrb	r3, [r3, #0]
    1718:	2b00      	cmp	r3, #0
    171a:	d1ea      	bne.n	16f2 <uppercase+0xa>
    171c:	bf00      	nop
    171e:	3708      	adds	r7, #8
    1720:	46bd      	mov	sp, r7
    1722:	bd80      	pop	{r7, pc}

00001724 <scan>:
    1724:	b480      	push	{r7}
    1726:	b085      	sub	sp, #20
    1728:	af00      	add	r7, sp, #0
    172a:	60f8      	str	r0, [r7, #12]
    172c:	60b9      	str	r1, [r7, #8]
    172e:	4613      	mov	r3, r2
    1730:	71fb      	strb	r3, [r7, #7]
    1732:	e002      	b.n	173a <scan+0x16>
    1734:	68bb      	ldr	r3, [r7, #8]
    1736:	3301      	adds	r3, #1
    1738:	60bb      	str	r3, [r7, #8]
    173a:	68bb      	ldr	r3, [r7, #8]
    173c:	68fa      	ldr	r2, [r7, #12]
    173e:	4413      	add	r3, r2
    1740:	781b      	ldrb	r3, [r3, #0]
    1742:	2b00      	cmp	r3, #0
    1744:	d006      	beq.n	1754 <scan+0x30>
    1746:	68bb      	ldr	r3, [r7, #8]
    1748:	68fa      	ldr	r2, [r7, #12]
    174a:	4413      	add	r3, r2
    174c:	781b      	ldrb	r3, [r3, #0]
    174e:	79fa      	ldrb	r2, [r7, #7]
    1750:	429a      	cmp	r2, r3
    1752:	d1ef      	bne.n	1734 <scan+0x10>
    1754:	68bb      	ldr	r3, [r7, #8]
    1756:	4618      	mov	r0, r3
    1758:	3714      	adds	r7, #20
    175a:	46bd      	mov	sp, r7
    175c:	bc80      	pop	{r7}
    175e:	4770      	bx	lr

00001760 <skip>:
    1760:	b480      	push	{r7}
    1762:	b085      	sub	sp, #20
    1764:	af00      	add	r7, sp, #0
    1766:	60f8      	str	r0, [r7, #12]
    1768:	60b9      	str	r1, [r7, #8]
    176a:	4613      	mov	r3, r2
    176c:	71fb      	strb	r3, [r7, #7]
    176e:	e002      	b.n	1776 <skip+0x16>
    1770:	68bb      	ldr	r3, [r7, #8]
    1772:	3301      	adds	r3, #1
    1774:	60bb      	str	r3, [r7, #8]
    1776:	68bb      	ldr	r3, [r7, #8]
    1778:	68fa      	ldr	r2, [r7, #12]
    177a:	4413      	add	r3, r2
    177c:	781b      	ldrb	r3, [r3, #0]
    177e:	2b00      	cmp	r3, #0
    1780:	d006      	beq.n	1790 <skip+0x30>
    1782:	68bb      	ldr	r3, [r7, #8]
    1784:	68fa      	ldr	r2, [r7, #12]
    1786:	4413      	add	r3, r2
    1788:	781b      	ldrb	r3, [r3, #0]
    178a:	79fa      	ldrb	r2, [r7, #7]
    178c:	429a      	cmp	r2, r3
    178e:	d0ef      	beq.n	1770 <skip+0x10>
    1790:	68bb      	ldr	r3, [r7, #8]
    1792:	4618      	mov	r0, r3
    1794:	3714      	adds	r7, #20
    1796:	46bd      	mov	sp, r7
    1798:	bc80      	pop	{r7}
    179a:	4770      	bx	lr

0000179c <itoa>:
    179c:	b480      	push	{r7}
    179e:	b087      	sub	sp, #28
    17a0:	af00      	add	r7, sp, #0
    17a2:	60f8      	str	r0, [r7, #12]
    17a4:	60b9      	str	r1, [r7, #8]
    17a6:	607a      	str	r2, [r7, #4]
    17a8:	603b      	str	r3, [r7, #0]
    17aa:	2300      	movs	r3, #0
    17ac:	617b      	str	r3, [r7, #20]
    17ae:	683b      	ldr	r3, [r7, #0]
    17b0:	1e5a      	subs	r2, r3, #1
    17b2:	603a      	str	r2, [r7, #0]
    17b4:	461a      	mov	r2, r3
    17b6:	68bb      	ldr	r3, [r7, #8]
    17b8:	4413      	add	r3, r2
    17ba:	2200      	movs	r2, #0
    17bc:	701a      	strb	r2, [r3, #0]
    17be:	68fb      	ldr	r3, [r7, #12]
    17c0:	2b00      	cmp	r3, #0
    17c2:	da24      	bge.n	180e <itoa+0x72>
    17c4:	68fb      	ldr	r3, [r7, #12]
    17c6:	425b      	negs	r3, r3
    17c8:	60fb      	str	r3, [r7, #12]
    17ca:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    17ce:	617b      	str	r3, [r7, #20]
    17d0:	e01d      	b.n	180e <itoa+0x72>
    17d2:	68fb      	ldr	r3, [r7, #12]
    17d4:	687a      	ldr	r2, [r7, #4]
    17d6:	fb93 f2f2 	sdiv	r2, r3, r2
    17da:	6879      	ldr	r1, [r7, #4]
    17dc:	fb01 f202 	mul.w	r2, r1, r2
    17e0:	1a9b      	subs	r3, r3, r2
    17e2:	b2db      	uxtb	r3, r3
    17e4:	3330      	adds	r3, #48	; 0x30
    17e6:	74fb      	strb	r3, [r7, #19]
    17e8:	7cfb      	ldrb	r3, [r7, #19]
    17ea:	2b39      	cmp	r3, #57	; 0x39
    17ec:	d902      	bls.n	17f4 <itoa+0x58>
    17ee:	7cfb      	ldrb	r3, [r7, #19]
    17f0:	3307      	adds	r3, #7
    17f2:	74fb      	strb	r3, [r7, #19]
    17f4:	683b      	ldr	r3, [r7, #0]
    17f6:	1e5a      	subs	r2, r3, #1
    17f8:	603a      	str	r2, [r7, #0]
    17fa:	461a      	mov	r2, r3
    17fc:	68bb      	ldr	r3, [r7, #8]
    17fe:	4413      	add	r3, r2
    1800:	7cfa      	ldrb	r2, [r7, #19]
    1802:	701a      	strb	r2, [r3, #0]
    1804:	68fa      	ldr	r2, [r7, #12]
    1806:	687b      	ldr	r3, [r7, #4]
    1808:	fb92 f3f3 	sdiv	r3, r2, r3
    180c:	60fb      	str	r3, [r7, #12]
    180e:	68fb      	ldr	r3, [r7, #12]
    1810:	2b00      	cmp	r3, #0
    1812:	d00b      	beq.n	182c <itoa+0x90>
    1814:	683b      	ldr	r3, [r7, #0]
    1816:	2b00      	cmp	r3, #0
    1818:	dadb      	bge.n	17d2 <itoa+0x36>
    181a:	e007      	b.n	182c <itoa+0x90>
    181c:	683b      	ldr	r3, [r7, #0]
    181e:	1e5a      	subs	r2, r3, #1
    1820:	603a      	str	r2, [r7, #0]
    1822:	461a      	mov	r2, r3
    1824:	68bb      	ldr	r3, [r7, #8]
    1826:	4413      	add	r3, r2
    1828:	2230      	movs	r2, #48	; 0x30
    182a:	701a      	strb	r2, [r3, #0]
    182c:	683b      	ldr	r3, [r7, #0]
    182e:	2b00      	cmp	r3, #0
    1830:	dcf4      	bgt.n	181c <itoa+0x80>
    1832:	697b      	ldr	r3, [r7, #20]
    1834:	2b00      	cmp	r3, #0
    1836:	d006      	beq.n	1846 <itoa+0xaa>
    1838:	683b      	ldr	r3, [r7, #0]
    183a:	2b00      	cmp	r3, #0
    183c:	d103      	bne.n	1846 <itoa+0xaa>
    183e:	68bb      	ldr	r3, [r7, #8]
    1840:	222d      	movs	r2, #45	; 0x2d
    1842:	701a      	strb	r2, [r3, #0]
    1844:	e005      	b.n	1852 <itoa+0xb6>
    1846:	683b      	ldr	r3, [r7, #0]
    1848:	2b00      	cmp	r3, #0
    184a:	d102      	bne.n	1852 <itoa+0xb6>
    184c:	68bb      	ldr	r3, [r7, #8]
    184e:	2230      	movs	r2, #48	; 0x30
    1850:	701a      	strb	r2, [r3, #0]
    1852:	68bb      	ldr	r3, [r7, #8]
    1854:	4618      	mov	r0, r3
    1856:	371c      	adds	r7, #28
    1858:	46bd      	mov	sp, r7
    185a:	bc80      	pop	{r7}
    185c:	4770      	bx	lr

0000185e <strcat>:
    185e:	b580      	push	{r7, lr}
    1860:	b082      	sub	sp, #8
    1862:	af00      	add	r7, sp, #0
    1864:	6078      	str	r0, [r7, #4]
    1866:	6039      	str	r1, [r7, #0]
    1868:	6878      	ldr	r0, [r7, #4]
    186a:	f7ff fee6 	bl	163a <strlen>
    186e:	4603      	mov	r3, r0
    1870:	461a      	mov	r2, r3
    1872:	687b      	ldr	r3, [r7, #4]
    1874:	4413      	add	r3, r2
    1876:	607b      	str	r3, [r7, #4]
    1878:	e007      	b.n	188a <strcat+0x2c>
    187a:	687b      	ldr	r3, [r7, #4]
    187c:	1c5a      	adds	r2, r3, #1
    187e:	607a      	str	r2, [r7, #4]
    1880:	683a      	ldr	r2, [r7, #0]
    1882:	1c51      	adds	r1, r2, #1
    1884:	6039      	str	r1, [r7, #0]
    1886:	7812      	ldrb	r2, [r2, #0]
    1888:	701a      	strb	r2, [r3, #0]
    188a:	683b      	ldr	r3, [r7, #0]
    188c:	781b      	ldrb	r3, [r3, #0]
    188e:	2b00      	cmp	r3, #0
    1890:	d1f3      	bne.n	187a <strcat+0x1c>
    1892:	687b      	ldr	r3, [r7, #4]
    1894:	2200      	movs	r2, #0
    1896:	701a      	strb	r2, [r3, #0]
    1898:	687b      	ldr	r3, [r7, #4]
    189a:	4618      	mov	r0, r3
    189c:	3708      	adds	r7, #8
    189e:	46bd      	mov	sp, r7
    18a0:	bd80      	pop	{r7, pc}

000018a2 <config_pin>:
    18a2:	b480      	push	{r7}
    18a4:	b087      	sub	sp, #28
    18a6:	af00      	add	r7, sp, #0
    18a8:	60f8      	str	r0, [r7, #12]
    18aa:	60b9      	str	r1, [r7, #8]
    18ac:	607a      	str	r2, [r7, #4]
    18ae:	68bb      	ldr	r3, [r7, #8]
    18b0:	b2db      	uxtb	r3, r3
    18b2:	009b      	lsls	r3, r3, #2
    18b4:	b2db      	uxtb	r3, r3
    18b6:	f003 031c 	and.w	r3, r3, #28
    18ba:	75fb      	strb	r3, [r7, #23]
    18bc:	68bb      	ldr	r3, [r7, #8]
    18be:	08da      	lsrs	r2, r3, #3
    18c0:	68bb      	ldr	r3, [r7, #8]
    18c2:	08d9      	lsrs	r1, r3, #3
    18c4:	68fb      	ldr	r3, [r7, #12]
    18c6:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    18ca:	7df9      	ldrb	r1, [r7, #23]
    18cc:	200f      	movs	r0, #15
    18ce:	fa00 f101 	lsl.w	r1, r0, r1
    18d2:	43c9      	mvns	r1, r1
    18d4:	4019      	ands	r1, r3
    18d6:	68fb      	ldr	r3, [r7, #12]
    18d8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    18dc:	68bb      	ldr	r3, [r7, #8]
    18de:	08da      	lsrs	r2, r3, #3
    18e0:	68bb      	ldr	r3, [r7, #8]
    18e2:	08d9      	lsrs	r1, r3, #3
    18e4:	68fb      	ldr	r3, [r7, #12]
    18e6:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    18ea:	7dfb      	ldrb	r3, [r7, #23]
    18ec:	6878      	ldr	r0, [r7, #4]
    18ee:	fa00 f303 	lsl.w	r3, r0, r3
    18f2:	4319      	orrs	r1, r3
    18f4:	68fb      	ldr	r3, [r7, #12]
    18f6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    18fa:	bf00      	nop
    18fc:	371c      	adds	r7, #28
    18fe:	46bd      	mov	sp, r7
    1900:	bc80      	pop	{r7}
    1902:	4770      	bx	lr

00001904 <read_pin>:
    1904:	b480      	push	{r7}
    1906:	b083      	sub	sp, #12
    1908:	af00      	add	r7, sp, #0
    190a:	6078      	str	r0, [r7, #4]
    190c:	6039      	str	r1, [r7, #0]
    190e:	687b      	ldr	r3, [r7, #4]
    1910:	689b      	ldr	r3, [r3, #8]
    1912:	2101      	movs	r1, #1
    1914:	683a      	ldr	r2, [r7, #0]
    1916:	fa01 f202 	lsl.w	r2, r1, r2
    191a:	4013      	ands	r3, r2
    191c:	4618      	mov	r0, r3
    191e:	370c      	adds	r7, #12
    1920:	46bd      	mov	sp, r7
    1922:	bc80      	pop	{r7}
    1924:	4770      	bx	lr

00001926 <write_pin>:
    1926:	b480      	push	{r7}
    1928:	b085      	sub	sp, #20
    192a:	af00      	add	r7, sp, #0
    192c:	60f8      	str	r0, [r7, #12]
    192e:	60b9      	str	r1, [r7, #8]
    1930:	607a      	str	r2, [r7, #4]
    1932:	687b      	ldr	r3, [r7, #4]
    1934:	2b00      	cmp	r3, #0
    1936:	d009      	beq.n	194c <write_pin+0x26>
    1938:	68fb      	ldr	r3, [r7, #12]
    193a:	68db      	ldr	r3, [r3, #12]
    193c:	2101      	movs	r1, #1
    193e:	68ba      	ldr	r2, [r7, #8]
    1940:	fa01 f202 	lsl.w	r2, r1, r2
    1944:	431a      	orrs	r2, r3
    1946:	68fb      	ldr	r3, [r7, #12]
    1948:	60da      	str	r2, [r3, #12]
    194a:	e009      	b.n	1960 <write_pin+0x3a>
    194c:	68fb      	ldr	r3, [r7, #12]
    194e:	68db      	ldr	r3, [r3, #12]
    1950:	2101      	movs	r1, #1
    1952:	68ba      	ldr	r2, [r7, #8]
    1954:	fa01 f202 	lsl.w	r2, r1, r2
    1958:	43d2      	mvns	r2, r2
    195a:	401a      	ands	r2, r3
    195c:	68fb      	ldr	r3, [r7, #12]
    195e:	60da      	str	r2, [r3, #12]
    1960:	bf00      	nop
    1962:	3714      	adds	r7, #20
    1964:	46bd      	mov	sp, r7
    1966:	bc80      	pop	{r7}
    1968:	4770      	bx	lr

0000196a <toggle_pin>:
    196a:	b480      	push	{r7}
    196c:	b083      	sub	sp, #12
    196e:	af00      	add	r7, sp, #0
    1970:	6078      	str	r0, [r7, #4]
    1972:	6039      	str	r1, [r7, #0]
    1974:	687b      	ldr	r3, [r7, #4]
    1976:	68db      	ldr	r3, [r3, #12]
    1978:	2101      	movs	r1, #1
    197a:	683a      	ldr	r2, [r7, #0]
    197c:	fa01 f202 	lsl.w	r2, r1, r2
    1980:	405a      	eors	r2, r3
    1982:	687b      	ldr	r3, [r7, #4]
    1984:	60da      	str	r2, [r3, #12]
    1986:	bf00      	nop
    1988:	370c      	adds	r7, #12
    198a:	46bd      	mov	sp, r7
    198c:	bc80      	pop	{r7}
    198e:	4770      	bx	lr

00001990 <gfx_blit>:
    1990:	b4f0      	push	{r4, r5, r6, r7}
    1992:	b084      	sub	sp, #16
    1994:	af00      	add	r7, sp, #0
    1996:	60f8      	str	r0, [r7, #12]
    1998:	60b9      	str	r1, [r7, #8]
    199a:	4611      	mov	r1, r2
    199c:	461a      	mov	r2, r3
    199e:	460b      	mov	r3, r1
    19a0:	71fb      	strb	r3, [r7, #7]
    19a2:	4613      	mov	r3, r2
    19a4:	71bb      	strb	r3, [r7, #6]
    19a6:	68fb      	ldr	r3, [r7, #12]
    19a8:	2b00      	cmp	r3, #0
    19aa:	db08      	blt.n	19be <gfx_blit+0x2e>
    19ac:	68fb      	ldr	r3, [r7, #12]
    19ae:	2bb3      	cmp	r3, #179	; 0xb3
    19b0:	dc05      	bgt.n	19be <gfx_blit+0x2e>
    19b2:	68bb      	ldr	r3, [r7, #8]
    19b4:	2b00      	cmp	r3, #0
    19b6:	db02      	blt.n	19be <gfx_blit+0x2e>
    19b8:	68bb      	ldr	r3, [r7, #8]
    19ba:	2b6f      	cmp	r3, #111	; 0x6f
    19bc:	dd01      	ble.n	19c2 <gfx_blit+0x32>
    19be:	2300      	movs	r3, #0
    19c0:	e04c      	b.n	1a5c <gfx_blit+0xcc>
    19c2:	68bb      	ldr	r3, [r7, #8]
    19c4:	225a      	movs	r2, #90	; 0x5a
    19c6:	fb02 f203 	mul.w	r2, r2, r3
    19ca:	68fb      	ldr	r3, [r7, #12]
    19cc:	0fd9      	lsrs	r1, r3, #31
    19ce:	440b      	add	r3, r1
    19d0:	105b      	asrs	r3, r3, #1
    19d2:	18d6      	adds	r6, r2, r3
    19d4:	79fb      	ldrb	r3, [r7, #7]
    19d6:	f003 030f 	and.w	r3, r3, #15
    19da:	71fb      	strb	r3, [r7, #7]
    19dc:	25f0      	movs	r5, #240	; 0xf0
    19de:	68fb      	ldr	r3, [r7, #12]
    19e0:	f003 0301 	and.w	r3, r3, #1
    19e4:	2b00      	cmp	r3, #0
    19e6:	d103      	bne.n	19f0 <gfx_blit+0x60>
    19e8:	79fb      	ldrb	r3, [r7, #7]
    19ea:	011b      	lsls	r3, r3, #4
    19ec:	71fb      	strb	r3, [r7, #7]
    19ee:	250f      	movs	r5, #15
    19f0:	4b1d      	ldr	r3, [pc, #116]	; (1a68 <gfx_blit+0xd8>)
    19f2:	5d9c      	ldrb	r4, [r3, r6]
    19f4:	79bb      	ldrb	r3, [r7, #6]
    19f6:	2b04      	cmp	r3, #4
    19f8:	d827      	bhi.n	1a4a <gfx_blit+0xba>
    19fa:	a201      	add	r2, pc, #4	; (adr r2, 1a00 <gfx_blit+0x70>)
    19fc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1a00:	00001a15 	.word	0x00001a15
    1a04:	00001a1d 	.word	0x00001a1d
    1a08:	00001a25 	.word	0x00001a25
    1a0c:	00001a2d 	.word	0x00001a2d
    1a10:	00001a3d 	.word	0x00001a3d
    1a14:	79fb      	ldrb	r3, [r7, #7]
    1a16:	4323      	orrs	r3, r4
    1a18:	b2dc      	uxtb	r4, r3
    1a1a:	e016      	b.n	1a4a <gfx_blit+0xba>
    1a1c:	79fb      	ldrb	r3, [r7, #7]
    1a1e:	4023      	ands	r3, r4
    1a20:	b2dc      	uxtb	r4, r3
    1a22:	e012      	b.n	1a4a <gfx_blit+0xba>
    1a24:	79fb      	ldrb	r3, [r7, #7]
    1a26:	4063      	eors	r3, r4
    1a28:	b2dc      	uxtb	r4, r3
    1a2a:	e00e      	b.n	1a4a <gfx_blit+0xba>
    1a2c:	b26b      	sxtb	r3, r5
    1a2e:	43db      	mvns	r3, r3
    1a30:	b25a      	sxtb	r2, r3
    1a32:	b263      	sxtb	r3, r4
    1a34:	4053      	eors	r3, r2
    1a36:	b25b      	sxtb	r3, r3
    1a38:	b2dc      	uxtb	r4, r3
    1a3a:	e006      	b.n	1a4a <gfx_blit+0xba>
    1a3c:	ea04 0305 	and.w	r3, r4, r5
    1a40:	b2dc      	uxtb	r4, r3
    1a42:	79fb      	ldrb	r3, [r7, #7]
    1a44:	4323      	orrs	r3, r4
    1a46:	b2dc      	uxtb	r4, r3
    1a48:	bf00      	nop
    1a4a:	4b07      	ldr	r3, [pc, #28]	; (1a68 <gfx_blit+0xd8>)
    1a4c:	4622      	mov	r2, r4
    1a4e:	559a      	strb	r2, [r3, r6]
    1a50:	ea04 0305 	and.w	r3, r4, r5
    1a54:	b2da      	uxtb	r2, r3
    1a56:	79fb      	ldrb	r3, [r7, #7]
    1a58:	4053      	eors	r3, r2
    1a5a:	b2db      	uxtb	r3, r3
    1a5c:	4618      	mov	r0, r3
    1a5e:	3710      	adds	r7, #16
    1a60:	46bd      	mov	sp, r7
    1a62:	bcf0      	pop	{r4, r5, r6, r7}
    1a64:	4770      	bx	lr
    1a66:	bf00      	nop
    1a68:	20002500 	.word	0x20002500

00001a6c <gfx_plot>:
    1a6c:	b4b0      	push	{r4, r5, r7}
    1a6e:	b085      	sub	sp, #20
    1a70:	af00      	add	r7, sp, #0
    1a72:	60f8      	str	r0, [r7, #12]
    1a74:	60b9      	str	r1, [r7, #8]
    1a76:	4613      	mov	r3, r2
    1a78:	71fb      	strb	r3, [r7, #7]
    1a7a:	68fb      	ldr	r3, [r7, #12]
    1a7c:	2b00      	cmp	r3, #0
    1a7e:	db31      	blt.n	1ae4 <gfx_plot+0x78>
    1a80:	68fb      	ldr	r3, [r7, #12]
    1a82:	2bb3      	cmp	r3, #179	; 0xb3
    1a84:	dc2e      	bgt.n	1ae4 <gfx_plot+0x78>
    1a86:	68bb      	ldr	r3, [r7, #8]
    1a88:	2b00      	cmp	r3, #0
    1a8a:	db2b      	blt.n	1ae4 <gfx_plot+0x78>
    1a8c:	68bb      	ldr	r3, [r7, #8]
    1a8e:	2b6f      	cmp	r3, #111	; 0x6f
    1a90:	dc28      	bgt.n	1ae4 <gfx_plot+0x78>
    1a92:	68bb      	ldr	r3, [r7, #8]
    1a94:	225a      	movs	r2, #90	; 0x5a
    1a96:	fb02 f203 	mul.w	r2, r2, r3
    1a9a:	68fb      	ldr	r3, [r7, #12]
    1a9c:	0fd9      	lsrs	r1, r3, #31
    1a9e:	440b      	add	r3, r1
    1aa0:	105b      	asrs	r3, r3, #1
    1aa2:	18d5      	adds	r5, r2, r3
    1aa4:	79fb      	ldrb	r3, [r7, #7]
    1aa6:	f003 030f 	and.w	r3, r3, #15
    1aaa:	71fb      	strb	r3, [r7, #7]
    1aac:	4b10      	ldr	r3, [pc, #64]	; (1af0 <gfx_plot+0x84>)
    1aae:	5d5c      	ldrb	r4, [r3, r5]
    1ab0:	68fb      	ldr	r3, [r7, #12]
    1ab2:	f003 0301 	and.w	r3, r3, #1
    1ab6:	2b00      	cmp	r3, #0
    1ab8:	d006      	beq.n	1ac8 <gfx_plot+0x5c>
    1aba:	f024 030f 	bic.w	r3, r4, #15
    1abe:	b2dc      	uxtb	r4, r3
    1ac0:	79fb      	ldrb	r3, [r7, #7]
    1ac2:	4323      	orrs	r3, r4
    1ac4:	b2dc      	uxtb	r4, r3
    1ac6:	e009      	b.n	1adc <gfx_plot+0x70>
    1ac8:	f004 030f 	and.w	r3, r4, #15
    1acc:	b2dc      	uxtb	r4, r3
    1ace:	79fb      	ldrb	r3, [r7, #7]
    1ad0:	011b      	lsls	r3, r3, #4
    1ad2:	b25a      	sxtb	r2, r3
    1ad4:	b263      	sxtb	r3, r4
    1ad6:	4313      	orrs	r3, r2
    1ad8:	b25b      	sxtb	r3, r3
    1ada:	b2dc      	uxtb	r4, r3
    1adc:	4b04      	ldr	r3, [pc, #16]	; (1af0 <gfx_plot+0x84>)
    1ade:	4622      	mov	r2, r4
    1ae0:	555a      	strb	r2, [r3, r5]
    1ae2:	e000      	b.n	1ae6 <gfx_plot+0x7a>
    1ae4:	bf00      	nop
    1ae6:	3714      	adds	r7, #20
    1ae8:	46bd      	mov	sp, r7
    1aea:	bcb0      	pop	{r4, r5, r7}
    1aec:	4770      	bx	lr
    1aee:	bf00      	nop
    1af0:	20002500 	.word	0x20002500

00001af4 <gfx_rectangle>:
    1af4:	b580      	push	{r7, lr}
    1af6:	b086      	sub	sp, #24
    1af8:	af00      	add	r7, sp, #0
    1afa:	60f8      	str	r0, [r7, #12]
    1afc:	60b9      	str	r1, [r7, #8]
    1afe:	607a      	str	r2, [r7, #4]
    1b00:	603b      	str	r3, [r7, #0]
    1b02:	68fa      	ldr	r2, [r7, #12]
    1b04:	687b      	ldr	r3, [r7, #4]
    1b06:	429a      	cmp	r2, r3
    1b08:	dd05      	ble.n	1b16 <gfx_rectangle+0x22>
    1b0a:	68fb      	ldr	r3, [r7, #12]
    1b0c:	617b      	str	r3, [r7, #20]
    1b0e:	687b      	ldr	r3, [r7, #4]
    1b10:	60fb      	str	r3, [r7, #12]
    1b12:	697b      	ldr	r3, [r7, #20]
    1b14:	607b      	str	r3, [r7, #4]
    1b16:	68ba      	ldr	r2, [r7, #8]
    1b18:	683b      	ldr	r3, [r7, #0]
    1b1a:	429a      	cmp	r2, r3
    1b1c:	dd05      	ble.n	1b2a <gfx_rectangle+0x36>
    1b1e:	68bb      	ldr	r3, [r7, #8]
    1b20:	617b      	str	r3, [r7, #20]
    1b22:	683b      	ldr	r3, [r7, #0]
    1b24:	60bb      	str	r3, [r7, #8]
    1b26:	697b      	ldr	r3, [r7, #20]
    1b28:	603b      	str	r3, [r7, #0]
    1b2a:	68fb      	ldr	r3, [r7, #12]
    1b2c:	617b      	str	r3, [r7, #20]
    1b2e:	e00c      	b.n	1b4a <gfx_rectangle+0x56>
    1b30:	220f      	movs	r2, #15
    1b32:	68b9      	ldr	r1, [r7, #8]
    1b34:	6978      	ldr	r0, [r7, #20]
    1b36:	f7ff ff99 	bl	1a6c <gfx_plot>
    1b3a:	220f      	movs	r2, #15
    1b3c:	6839      	ldr	r1, [r7, #0]
    1b3e:	6978      	ldr	r0, [r7, #20]
    1b40:	f7ff ff94 	bl	1a6c <gfx_plot>
    1b44:	697b      	ldr	r3, [r7, #20]
    1b46:	3301      	adds	r3, #1
    1b48:	617b      	str	r3, [r7, #20]
    1b4a:	697a      	ldr	r2, [r7, #20]
    1b4c:	687b      	ldr	r3, [r7, #4]
    1b4e:	429a      	cmp	r2, r3
    1b50:	ddee      	ble.n	1b30 <gfx_rectangle+0x3c>
    1b52:	68bb      	ldr	r3, [r7, #8]
    1b54:	3301      	adds	r3, #1
    1b56:	60bb      	str	r3, [r7, #8]
    1b58:	e00c      	b.n	1b74 <gfx_rectangle+0x80>
    1b5a:	220f      	movs	r2, #15
    1b5c:	68b9      	ldr	r1, [r7, #8]
    1b5e:	68f8      	ldr	r0, [r7, #12]
    1b60:	f7ff ff84 	bl	1a6c <gfx_plot>
    1b64:	220f      	movs	r2, #15
    1b66:	68b9      	ldr	r1, [r7, #8]
    1b68:	6878      	ldr	r0, [r7, #4]
    1b6a:	f7ff ff7f 	bl	1a6c <gfx_plot>
    1b6e:	68bb      	ldr	r3, [r7, #8]
    1b70:	3301      	adds	r3, #1
    1b72:	60bb      	str	r3, [r7, #8]
    1b74:	68ba      	ldr	r2, [r7, #8]
    1b76:	683b      	ldr	r3, [r7, #0]
    1b78:	429a      	cmp	r2, r3
    1b7a:	dbee      	blt.n	1b5a <gfx_rectangle+0x66>
    1b7c:	bf00      	nop
    1b7e:	3718      	adds	r7, #24
    1b80:	46bd      	mov	sp, r7
    1b82:	bd80      	pop	{r7, pc}

00001b84 <gfx_cls>:
    1b84:	b480      	push	{r7}
    1b86:	b083      	sub	sp, #12
    1b88:	af00      	add	r7, sp, #0
    1b8a:	2300      	movs	r3, #0
    1b8c:	607b      	str	r3, [r7, #4]
    1b8e:	e007      	b.n	1ba0 <gfx_cls+0x1c>
    1b90:	4a08      	ldr	r2, [pc, #32]	; (1bb4 <gfx_cls+0x30>)
    1b92:	687b      	ldr	r3, [r7, #4]
    1b94:	4413      	add	r3, r2
    1b96:	2200      	movs	r2, #0
    1b98:	701a      	strb	r2, [r3, #0]
    1b9a:	687b      	ldr	r3, [r7, #4]
    1b9c:	3301      	adds	r3, #1
    1b9e:	607b      	str	r3, [r7, #4]
    1ba0:	687b      	ldr	r3, [r7, #4]
    1ba2:	f242 725f 	movw	r2, #10079	; 0x275f
    1ba6:	4293      	cmp	r3, r2
    1ba8:	ddf2      	ble.n	1b90 <gfx_cls+0xc>
    1baa:	bf00      	nop
    1bac:	370c      	adds	r7, #12
    1bae:	46bd      	mov	sp, r7
    1bb0:	bc80      	pop	{r7}
    1bb2:	4770      	bx	lr
    1bb4:	20002500 	.word	0x20002500

00001bb8 <move_up>:
    1bb8:	b480      	push	{r7}
    1bba:	b085      	sub	sp, #20
    1bbc:	af00      	add	r7, sp, #0
    1bbe:	60f8      	str	r0, [r7, #12]
    1bc0:	60b9      	str	r1, [r7, #8]
    1bc2:	607a      	str	r2, [r7, #4]
    1bc4:	e009      	b.n	1bda <move_up+0x22>
    1bc6:	68bb      	ldr	r3, [r7, #8]
    1bc8:	3b01      	subs	r3, #1
    1bca:	60bb      	str	r3, [r7, #8]
    1bcc:	68fb      	ldr	r3, [r7, #12]
    1bce:	3b01      	subs	r3, #1
    1bd0:	60fb      	str	r3, [r7, #12]
    1bd2:	68fb      	ldr	r3, [r7, #12]
    1bd4:	781a      	ldrb	r2, [r3, #0]
    1bd6:	68bb      	ldr	r3, [r7, #8]
    1bd8:	701a      	strb	r2, [r3, #0]
    1bda:	687b      	ldr	r3, [r7, #4]
    1bdc:	1e5a      	subs	r2, r3, #1
    1bde:	607a      	str	r2, [r7, #4]
    1be0:	2b00      	cmp	r3, #0
    1be2:	d1f0      	bne.n	1bc6 <move_up+0xe>
    1be4:	68bb      	ldr	r3, [r7, #8]
    1be6:	4618      	mov	r0, r3
    1be8:	3714      	adds	r7, #20
    1bea:	46bd      	mov	sp, r7
    1bec:	bc80      	pop	{r7}
    1bee:	4770      	bx	lr

00001bf0 <move_down>:
    1bf0:	b480      	push	{r7}
    1bf2:	b085      	sub	sp, #20
    1bf4:	af00      	add	r7, sp, #0
    1bf6:	60f8      	str	r0, [r7, #12]
    1bf8:	60b9      	str	r1, [r7, #8]
    1bfa:	607a      	str	r2, [r7, #4]
    1bfc:	e007      	b.n	1c0e <move_down+0x1e>
    1bfe:	68bb      	ldr	r3, [r7, #8]
    1c00:	1c5a      	adds	r2, r3, #1
    1c02:	60ba      	str	r2, [r7, #8]
    1c04:	68fa      	ldr	r2, [r7, #12]
    1c06:	1c51      	adds	r1, r2, #1
    1c08:	60f9      	str	r1, [r7, #12]
    1c0a:	7812      	ldrb	r2, [r2, #0]
    1c0c:	701a      	strb	r2, [r3, #0]
    1c0e:	687b      	ldr	r3, [r7, #4]
    1c10:	1e5a      	subs	r2, r3, #1
    1c12:	607a      	str	r2, [r7, #4]
    1c14:	2b00      	cmp	r3, #0
    1c16:	d1f2      	bne.n	1bfe <move_down+0xe>
    1c18:	68bb      	ldr	r3, [r7, #8]
    1c1a:	4618      	mov	r0, r3
    1c1c:	3714      	adds	r7, #20
    1c1e:	46bd      	mov	sp, r7
    1c20:	bc80      	pop	{r7}
    1c22:	4770      	bx	lr

00001c24 <gfx_scroll_up>:
    1c24:	b580      	push	{r7, lr}
    1c26:	b086      	sub	sp, #24
    1c28:	af00      	add	r7, sp, #0
    1c2a:	4603      	mov	r3, r0
    1c2c:	71fb      	strb	r3, [r7, #7]
    1c2e:	79fb      	ldrb	r3, [r7, #7]
    1c30:	225a      	movs	r2, #90	; 0x5a
    1c32:	fb02 f303 	mul.w	r3, r2, r3
    1c36:	4a13      	ldr	r2, [pc, #76]	; (1c84 <gfx_scroll_up+0x60>)
    1c38:	4413      	add	r3, r2
    1c3a:	60fb      	str	r3, [r7, #12]
    1c3c:	4b11      	ldr	r3, [pc, #68]	; (1c84 <gfx_scroll_up+0x60>)
    1c3e:	617b      	str	r3, [r7, #20]
    1c40:	79fb      	ldrb	r3, [r7, #7]
    1c42:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1c46:	225a      	movs	r2, #90	; 0x5a
    1c48:	fb02 f303 	mul.w	r3, r2, r3
    1c4c:	613b      	str	r3, [r7, #16]
    1c4e:	693a      	ldr	r2, [r7, #16]
    1c50:	6979      	ldr	r1, [r7, #20]
    1c52:	68f8      	ldr	r0, [r7, #12]
    1c54:	f7ff ffcc 	bl	1bf0 <move_down>
    1c58:	6178      	str	r0, [r7, #20]
    1c5a:	79fb      	ldrb	r3, [r7, #7]
    1c5c:	225a      	movs	r2, #90	; 0x5a
    1c5e:	fb02 f303 	mul.w	r3, r2, r3
    1c62:	613b      	str	r3, [r7, #16]
    1c64:	e004      	b.n	1c70 <gfx_scroll_up+0x4c>
    1c66:	697b      	ldr	r3, [r7, #20]
    1c68:	1c5a      	adds	r2, r3, #1
    1c6a:	617a      	str	r2, [r7, #20]
    1c6c:	2200      	movs	r2, #0
    1c6e:	701a      	strb	r2, [r3, #0]
    1c70:	693b      	ldr	r3, [r7, #16]
    1c72:	1e5a      	subs	r2, r3, #1
    1c74:	613a      	str	r2, [r7, #16]
    1c76:	2b00      	cmp	r3, #0
    1c78:	d1f5      	bne.n	1c66 <gfx_scroll_up+0x42>
    1c7a:	bf00      	nop
    1c7c:	3718      	adds	r7, #24
    1c7e:	46bd      	mov	sp, r7
    1c80:	bd80      	pop	{r7, pc}
    1c82:	bf00      	nop
    1c84:	20002500 	.word	0x20002500

00001c88 <gfx_scroll_down>:
    1c88:	b580      	push	{r7, lr}
    1c8a:	b086      	sub	sp, #24
    1c8c:	af00      	add	r7, sp, #0
    1c8e:	4603      	mov	r3, r0
    1c90:	71fb      	strb	r3, [r7, #7]
    1c92:	79fb      	ldrb	r3, [r7, #7]
    1c94:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1c98:	225a      	movs	r2, #90	; 0x5a
    1c9a:	fb02 f303 	mul.w	r3, r2, r3
    1c9e:	4a13      	ldr	r2, [pc, #76]	; (1cec <gfx_scroll_down+0x64>)
    1ca0:	4413      	add	r3, r2
    1ca2:	60fb      	str	r3, [r7, #12]
    1ca4:	4b12      	ldr	r3, [pc, #72]	; (1cf0 <gfx_scroll_down+0x68>)
    1ca6:	617b      	str	r3, [r7, #20]
    1ca8:	79fb      	ldrb	r3, [r7, #7]
    1caa:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1cae:	225a      	movs	r2, #90	; 0x5a
    1cb0:	fb02 f303 	mul.w	r3, r2, r3
    1cb4:	613b      	str	r3, [r7, #16]
    1cb6:	693a      	ldr	r2, [r7, #16]
    1cb8:	6979      	ldr	r1, [r7, #20]
    1cba:	68f8      	ldr	r0, [r7, #12]
    1cbc:	f7ff ff7c 	bl	1bb8 <move_up>
    1cc0:	6178      	str	r0, [r7, #20]
    1cc2:	79fb      	ldrb	r3, [r7, #7]
    1cc4:	225a      	movs	r2, #90	; 0x5a
    1cc6:	fb02 f303 	mul.w	r3, r2, r3
    1cca:	613b      	str	r3, [r7, #16]
    1ccc:	e005      	b.n	1cda <gfx_scroll_down+0x52>
    1cce:	697b      	ldr	r3, [r7, #20]
    1cd0:	3b01      	subs	r3, #1
    1cd2:	617b      	str	r3, [r7, #20]
    1cd4:	697b      	ldr	r3, [r7, #20]
    1cd6:	2200      	movs	r2, #0
    1cd8:	701a      	strb	r2, [r3, #0]
    1cda:	693b      	ldr	r3, [r7, #16]
    1cdc:	1e5a      	subs	r2, r3, #1
    1cde:	613a      	str	r2, [r7, #16]
    1ce0:	2b00      	cmp	r3, #0
    1ce2:	d1f4      	bne.n	1cce <gfx_scroll_down+0x46>
    1ce4:	bf00      	nop
    1ce6:	3718      	adds	r7, #24
    1ce8:	46bd      	mov	sp, r7
    1cea:	bd80      	pop	{r7, pc}
    1cec:	20002500 	.word	0x20002500
    1cf0:	20004c60 	.word	0x20004c60

00001cf4 <gfx_scroll_left>:
    1cf4:	b580      	push	{r7, lr}
    1cf6:	b086      	sub	sp, #24
    1cf8:	af00      	add	r7, sp, #0
    1cfa:	4603      	mov	r3, r0
    1cfc:	71fb      	strb	r3, [r7, #7]
    1cfe:	2300      	movs	r3, #0
    1d00:	617b      	str	r3, [r7, #20]
    1d02:	e024      	b.n	1d4e <gfx_scroll_left+0x5a>
    1d04:	697b      	ldr	r3, [r7, #20]
    1d06:	225a      	movs	r2, #90	; 0x5a
    1d08:	fb02 f303 	mul.w	r3, r2, r3
    1d0c:	4a13      	ldr	r2, [pc, #76]	; (1d5c <gfx_scroll_left+0x68>)
    1d0e:	4413      	add	r3, r2
    1d10:	60fb      	str	r3, [r7, #12]
    1d12:	79fb      	ldrb	r3, [r7, #7]
    1d14:	68fa      	ldr	r2, [r7, #12]
    1d16:	4413      	add	r3, r2
    1d18:	60bb      	str	r3, [r7, #8]
    1d1a:	79fb      	ldrb	r3, [r7, #7]
    1d1c:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1d20:	613b      	str	r3, [r7, #16]
    1d22:	693a      	ldr	r2, [r7, #16]
    1d24:	68f9      	ldr	r1, [r7, #12]
    1d26:	68b8      	ldr	r0, [r7, #8]
    1d28:	f7ff ff62 	bl	1bf0 <move_down>
    1d2c:	60f8      	str	r0, [r7, #12]
    1d2e:	79fb      	ldrb	r3, [r7, #7]
    1d30:	613b      	str	r3, [r7, #16]
    1d32:	e004      	b.n	1d3e <gfx_scroll_left+0x4a>
    1d34:	68fb      	ldr	r3, [r7, #12]
    1d36:	1c5a      	adds	r2, r3, #1
    1d38:	60fa      	str	r2, [r7, #12]
    1d3a:	2200      	movs	r2, #0
    1d3c:	701a      	strb	r2, [r3, #0]
    1d3e:	693b      	ldr	r3, [r7, #16]
    1d40:	1e5a      	subs	r2, r3, #1
    1d42:	613a      	str	r2, [r7, #16]
    1d44:	2b00      	cmp	r3, #0
    1d46:	d1f5      	bne.n	1d34 <gfx_scroll_left+0x40>
    1d48:	697b      	ldr	r3, [r7, #20]
    1d4a:	3301      	adds	r3, #1
    1d4c:	617b      	str	r3, [r7, #20]
    1d4e:	697b      	ldr	r3, [r7, #20]
    1d50:	2b6f      	cmp	r3, #111	; 0x6f
    1d52:	ddd7      	ble.n	1d04 <gfx_scroll_left+0x10>
    1d54:	bf00      	nop
    1d56:	3718      	adds	r7, #24
    1d58:	46bd      	mov	sp, r7
    1d5a:	bd80      	pop	{r7, pc}
    1d5c:	20002500 	.word	0x20002500

00001d60 <gfx_scroll_right>:
    1d60:	b580      	push	{r7, lr}
    1d62:	b086      	sub	sp, #24
    1d64:	af00      	add	r7, sp, #0
    1d66:	4603      	mov	r3, r0
    1d68:	71fb      	strb	r3, [r7, #7]
    1d6a:	2300      	movs	r3, #0
    1d6c:	617b      	str	r3, [r7, #20]
    1d6e:	e027      	b.n	1dc0 <gfx_scroll_right+0x60>
    1d70:	697b      	ldr	r3, [r7, #20]
    1d72:	225a      	movs	r2, #90	; 0x5a
    1d74:	fb02 f303 	mul.w	r3, r2, r3
    1d78:	4a15      	ldr	r2, [pc, #84]	; (1dd0 <gfx_scroll_right+0x70>)
    1d7a:	4413      	add	r3, r2
    1d7c:	335a      	adds	r3, #90	; 0x5a
    1d7e:	60fb      	str	r3, [r7, #12]
    1d80:	79fb      	ldrb	r3, [r7, #7]
    1d82:	425b      	negs	r3, r3
    1d84:	68fa      	ldr	r2, [r7, #12]
    1d86:	4413      	add	r3, r2
    1d88:	60bb      	str	r3, [r7, #8]
    1d8a:	79fb      	ldrb	r3, [r7, #7]
    1d8c:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1d90:	613b      	str	r3, [r7, #16]
    1d92:	693a      	ldr	r2, [r7, #16]
    1d94:	68f9      	ldr	r1, [r7, #12]
    1d96:	68b8      	ldr	r0, [r7, #8]
    1d98:	f7ff ff0e 	bl	1bb8 <move_up>
    1d9c:	60f8      	str	r0, [r7, #12]
    1d9e:	79fb      	ldrb	r3, [r7, #7]
    1da0:	613b      	str	r3, [r7, #16]
    1da2:	e005      	b.n	1db0 <gfx_scroll_right+0x50>
    1da4:	68fb      	ldr	r3, [r7, #12]
    1da6:	3b01      	subs	r3, #1
    1da8:	60fb      	str	r3, [r7, #12]
    1daa:	68fb      	ldr	r3, [r7, #12]
    1dac:	2200      	movs	r2, #0
    1dae:	701a      	strb	r2, [r3, #0]
    1db0:	693b      	ldr	r3, [r7, #16]
    1db2:	1e5a      	subs	r2, r3, #1
    1db4:	613a      	str	r2, [r7, #16]
    1db6:	2b00      	cmp	r3, #0
    1db8:	d1f4      	bne.n	1da4 <gfx_scroll_right+0x44>
    1dba:	697b      	ldr	r3, [r7, #20]
    1dbc:	3301      	adds	r3, #1
    1dbe:	617b      	str	r3, [r7, #20]
    1dc0:	697b      	ldr	r3, [r7, #20]
    1dc2:	2b6f      	cmp	r3, #111	; 0x6f
    1dc4:	ddd4      	ble.n	1d70 <gfx_scroll_right+0x10>
    1dc6:	bf00      	nop
    1dc8:	3718      	adds	r7, #24
    1dca:	46bd      	mov	sp, r7
    1dcc:	bd80      	pop	{r7, pc}
    1dce:	bf00      	nop
    1dd0:	20002500 	.word	0x20002500

00001dd4 <gfx_get_pixel>:
    1dd4:	b490      	push	{r4, r7}
    1dd6:	b082      	sub	sp, #8
    1dd8:	af00      	add	r7, sp, #0
    1dda:	6078      	str	r0, [r7, #4]
    1ddc:	6039      	str	r1, [r7, #0]
    1dde:	687b      	ldr	r3, [r7, #4]
    1de0:	2b00      	cmp	r3, #0
    1de2:	db08      	blt.n	1df6 <gfx_get_pixel+0x22>
    1de4:	687b      	ldr	r3, [r7, #4]
    1de6:	2bb3      	cmp	r3, #179	; 0xb3
    1de8:	dc05      	bgt.n	1df6 <gfx_get_pixel+0x22>
    1dea:	683b      	ldr	r3, [r7, #0]
    1dec:	2b00      	cmp	r3, #0
    1dee:	db02      	blt.n	1df6 <gfx_get_pixel+0x22>
    1df0:	683b      	ldr	r3, [r7, #0]
    1df2:	2b6f      	cmp	r3, #111	; 0x6f
    1df4:	dd01      	ble.n	1dfa <gfx_get_pixel+0x26>
    1df6:	23ff      	movs	r3, #255	; 0xff
    1df8:	e012      	b.n	1e20 <gfx_get_pixel+0x4c>
    1dfa:	683b      	ldr	r3, [r7, #0]
    1dfc:	225a      	movs	r2, #90	; 0x5a
    1dfe:	fb02 f203 	mul.w	r2, r2, r3
    1e02:	687b      	ldr	r3, [r7, #4]
    1e04:	105b      	asrs	r3, r3, #1
    1e06:	4413      	add	r3, r2
    1e08:	4a08      	ldr	r2, [pc, #32]	; (1e2c <gfx_get_pixel+0x58>)
    1e0a:	5cd4      	ldrb	r4, [r2, r3]
    1e0c:	687b      	ldr	r3, [r7, #4]
    1e0e:	f003 0301 	and.w	r3, r3, #1
    1e12:	2b00      	cmp	r3, #0
    1e14:	d101      	bne.n	1e1a <gfx_get_pixel+0x46>
    1e16:	0923      	lsrs	r3, r4, #4
    1e18:	b2dc      	uxtb	r4, r3
    1e1a:	f004 030f 	and.w	r3, r4, #15
    1e1e:	b2db      	uxtb	r3, r3
    1e20:	4618      	mov	r0, r3
    1e22:	3708      	adds	r7, #8
    1e24:	46bd      	mov	sp, r7
    1e26:	bc90      	pop	{r4, r7}
    1e28:	4770      	bx	lr
    1e2a:	bf00      	nop
    1e2c:	20002500 	.word	0x20002500

00001e30 <gfx_sprite>:
    1e30:	b5f0      	push	{r4, r5, r6, r7, lr}
    1e32:	b087      	sub	sp, #28
    1e34:	af00      	add	r7, sp, #0
    1e36:	60f8      	str	r0, [r7, #12]
    1e38:	60b9      	str	r1, [r7, #8]
    1e3a:	4611      	mov	r1, r2
    1e3c:	461a      	mov	r2, r3
    1e3e:	460b      	mov	r3, r1
    1e40:	71fb      	strb	r3, [r7, #7]
    1e42:	4613      	mov	r3, r2
    1e44:	71bb      	strb	r3, [r7, #6]
    1e46:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1e48:	1c5a      	adds	r2, r3, #1
    1e4a:	633a      	str	r2, [r7, #48]	; 0x30
    1e4c:	781e      	ldrb	r6, [r3, #0]
    1e4e:	68bd      	ldr	r5, [r7, #8]
    1e50:	e01b      	b.n	1e8a <gfx_sprite+0x5a>
    1e52:	68fc      	ldr	r4, [r7, #12]
    1e54:	e013      	b.n	1e7e <gfx_sprite+0x4e>
    1e56:	0933      	lsrs	r3, r6, #4
    1e58:	b2da      	uxtb	r2, r3
    1e5a:	2302      	movs	r3, #2
    1e5c:	4629      	mov	r1, r5
    1e5e:	4620      	mov	r0, r4
    1e60:	f7ff fd96 	bl	1990 <gfx_blit>
    1e64:	3401      	adds	r4, #1
    1e66:	2302      	movs	r3, #2
    1e68:	4632      	mov	r2, r6
    1e6a:	4629      	mov	r1, r5
    1e6c:	4620      	mov	r0, r4
    1e6e:	f7ff fd8f 	bl	1990 <gfx_blit>
    1e72:	6178      	str	r0, [r7, #20]
    1e74:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1e76:	1c5a      	adds	r2, r3, #1
    1e78:	633a      	str	r2, [r7, #48]	; 0x30
    1e7a:	781e      	ldrb	r6, [r3, #0]
    1e7c:	3401      	adds	r4, #1
    1e7e:	79fa      	ldrb	r2, [r7, #7]
    1e80:	68fb      	ldr	r3, [r7, #12]
    1e82:	4413      	add	r3, r2
    1e84:	42a3      	cmp	r3, r4
    1e86:	dce6      	bgt.n	1e56 <gfx_sprite+0x26>
    1e88:	3501      	adds	r5, #1
    1e8a:	79ba      	ldrb	r2, [r7, #6]
    1e8c:	68bb      	ldr	r3, [r7, #8]
    1e8e:	4413      	add	r3, r2
    1e90:	42ab      	cmp	r3, r5
    1e92:	dcde      	bgt.n	1e52 <gfx_sprite+0x22>
    1e94:	697b      	ldr	r3, [r7, #20]
    1e96:	4618      	mov	r0, r3
    1e98:	371c      	adds	r7, #28
    1e9a:	46bd      	mov	sp, r7
    1e9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1e9e:	bf00      	nop

00001ea0 <set_sysclock>:
    1ea0:	b480      	push	{r7}
    1ea2:	af00      	add	r7, sp, #0
    1ea4:	4a18      	ldr	r2, [pc, #96]	; (1f08 <set_sysclock+0x68>)
    1ea6:	4b18      	ldr	r3, [pc, #96]	; (1f08 <set_sysclock+0x68>)
    1ea8:	681b      	ldr	r3, [r3, #0]
    1eaa:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1eae:	6013      	str	r3, [r2, #0]
    1eb0:	bf00      	nop
    1eb2:	4b15      	ldr	r3, [pc, #84]	; (1f08 <set_sysclock+0x68>)
    1eb4:	681b      	ldr	r3, [r3, #0]
    1eb6:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    1eba:	2b00      	cmp	r3, #0
    1ebc:	d0f9      	beq.n	1eb2 <set_sysclock+0x12>
    1ebe:	4a12      	ldr	r2, [pc, #72]	; (1f08 <set_sysclock+0x68>)
    1ec0:	4b11      	ldr	r3, [pc, #68]	; (1f08 <set_sysclock+0x68>)
    1ec2:	685b      	ldr	r3, [r3, #4]
    1ec4:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1ec8:	6053      	str	r3, [r2, #4]
    1eca:	4a0f      	ldr	r2, [pc, #60]	; (1f08 <set_sysclock+0x68>)
    1ecc:	4b0e      	ldr	r3, [pc, #56]	; (1f08 <set_sysclock+0x68>)
    1ece:	681b      	ldr	r3, [r3, #0]
    1ed0:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1ed4:	6013      	str	r3, [r2, #0]
    1ed6:	bf00      	nop
    1ed8:	4b0b      	ldr	r3, [pc, #44]	; (1f08 <set_sysclock+0x68>)
    1eda:	681b      	ldr	r3, [r3, #0]
    1edc:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1ee0:	2b00      	cmp	r3, #0
    1ee2:	d0f9      	beq.n	1ed8 <set_sysclock+0x38>
    1ee4:	4a09      	ldr	r2, [pc, #36]	; (1f0c <set_sysclock+0x6c>)
    1ee6:	4b09      	ldr	r3, [pc, #36]	; (1f0c <set_sysclock+0x6c>)
    1ee8:	681b      	ldr	r3, [r3, #0]
    1eea:	f043 0312 	orr.w	r3, r3, #18
    1eee:	6013      	str	r3, [r2, #0]
    1ef0:	4a05      	ldr	r2, [pc, #20]	; (1f08 <set_sysclock+0x68>)
    1ef2:	4b05      	ldr	r3, [pc, #20]	; (1f08 <set_sysclock+0x68>)
    1ef4:	685b      	ldr	r3, [r3, #4]
    1ef6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1efa:	f043 0302 	orr.w	r3, r3, #2
    1efe:	6053      	str	r3, [r2, #4]
    1f00:	bf00      	nop
    1f02:	46bd      	mov	sp, r7
    1f04:	bc80      	pop	{r7}
    1f06:	4770      	bx	lr
    1f08:	40021000 	.word	0x40021000
    1f0c:	40022000 	.word	0x40022000

00001f10 <main>:
    1f10:	b580      	push	{r7, lr}
    1f12:	b08a      	sub	sp, #40	; 0x28
    1f14:	af02      	add	r7, sp, #8
    1f16:	f7ff ffc3 	bl	1ea0 <set_sysclock>
    1f1a:	f001 f98b 	bl	3234 <config_systicks>
    1f1e:	4b5c      	ldr	r3, [pc, #368]	; (2090 <main+0x180>)
    1f20:	f640 021d 	movw	r2, #2077	; 0x81d
    1f24:	619a      	str	r2, [r3, #24]
    1f26:	2206      	movs	r2, #6
    1f28:	210d      	movs	r1, #13
    1f2a:	485a      	ldr	r0, [pc, #360]	; (2094 <main+0x184>)
    1f2c:	f7ff fcb9 	bl	18a2 <config_pin>
    1f30:	4a58      	ldr	r2, [pc, #352]	; (2094 <main+0x184>)
    1f32:	4b58      	ldr	r3, [pc, #352]	; (2094 <main+0x184>)
    1f34:	68db      	ldr	r3, [r3, #12]
    1f36:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1f3a:	60d3      	str	r3, [r2, #12]
    1f3c:	f001 fc96 	bl	386c <tvout_init>
    1f40:	f7ff fe20 	bl	1b84 <gfx_cls>
    1f44:	2303      	movs	r3, #3
    1f46:	71bb      	strb	r3, [r7, #6]
    1f48:	2354      	movs	r3, #84	; 0x54
    1f4a:	61bb      	str	r3, [r7, #24]
    1f4c:	e01b      	b.n	1f86 <main+0x76>
    1f4e:	2310      	movs	r3, #16
    1f50:	71fb      	strb	r3, [r7, #7]
    1f52:	2300      	movs	r3, #0
    1f54:	61fb      	str	r3, [r7, #28]
    1f56:	e010      	b.n	1f7a <main+0x6a>
    1f58:	69fb      	ldr	r3, [r7, #28]
    1f5a:	f003 0307 	and.w	r3, r3, #7
    1f5e:	2b00      	cmp	r3, #0
    1f60:	d102      	bne.n	1f68 <main+0x58>
    1f62:	79fb      	ldrb	r3, [r7, #7]
    1f64:	3b01      	subs	r3, #1
    1f66:	71fb      	strb	r3, [r7, #7]
    1f68:	79fb      	ldrb	r3, [r7, #7]
    1f6a:	461a      	mov	r2, r3
    1f6c:	69b9      	ldr	r1, [r7, #24]
    1f6e:	69f8      	ldr	r0, [r7, #28]
    1f70:	f7ff fd7c 	bl	1a6c <gfx_plot>
    1f74:	69fb      	ldr	r3, [r7, #28]
    1f76:	3301      	adds	r3, #1
    1f78:	61fb      	str	r3, [r7, #28]
    1f7a:	69fb      	ldr	r3, [r7, #28]
    1f7c:	2b7f      	cmp	r3, #127	; 0x7f
    1f7e:	ddeb      	ble.n	1f58 <main+0x48>
    1f80:	69bb      	ldr	r3, [r7, #24]
    1f82:	3301      	adds	r3, #1
    1f84:	61bb      	str	r3, [r7, #24]
    1f86:	69bb      	ldr	r3, [r7, #24]
    1f88:	2b6f      	cmp	r3, #111	; 0x6f
    1f8a:	dde0      	ble.n	1f4e <main+0x3e>
    1f8c:	4b42      	ldr	r3, [pc, #264]	; (2098 <main+0x188>)
    1f8e:	210a      	movs	r1, #10
    1f90:	4618      	mov	r0, r3
    1f92:	f001 fb20 	bl	35d6 <print_int>
    1f96:	4b41      	ldr	r3, [pc, #260]	; (209c <main+0x18c>)
    1f98:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1f9c:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1fa0:	210a      	movs	r1, #10
    1fa2:	4618      	mov	r0, r3
    1fa4:	f001 fb17 	bl	35d6 <print_int>
    1fa8:	2100      	movs	r1, #0
    1faa:	2078      	movs	r0, #120	; 0x78
    1fac:	f001 fac4 	bl	3538 <set_cursor>
    1fb0:	483b      	ldr	r0, [pc, #236]	; (20a0 <main+0x190>)
    1fb2:	f001 faed 	bl	3590 <print>
    1fb6:	4b3b      	ldr	r3, [pc, #236]	; (20a4 <main+0x194>)
    1fb8:	781b      	ldrb	r3, [r3, #0]
    1fba:	210a      	movs	r1, #10
    1fbc:	4618      	mov	r0, r3
    1fbe:	f001 fb0a 	bl	35d6 <print_int>
    1fc2:	2300      	movs	r3, #0
    1fc4:	613b      	str	r3, [r7, #16]
    1fc6:	693b      	ldr	r3, [r7, #16]
    1fc8:	617b      	str	r3, [r7, #20]
    1fca:	2301      	movs	r3, #1
    1fcc:	60bb      	str	r3, [r7, #8]
    1fce:	68bb      	ldr	r3, [r7, #8]
    1fd0:	60fb      	str	r3, [r7, #12]
    1fd2:	2003      	movs	r0, #3
    1fd4:	f7ff fec4 	bl	1d60 <gfx_scroll_right>
    1fd8:	2003      	movs	r0, #3
    1fda:	f7ff fe8b 	bl	1cf4 <gfx_scroll_left>
    1fde:	4b32      	ldr	r3, [pc, #200]	; (20a8 <main+0x198>)
    1fe0:	9300      	str	r3, [sp, #0]
    1fe2:	2308      	movs	r3, #8
    1fe4:	2208      	movs	r2, #8
    1fe6:	6939      	ldr	r1, [r7, #16]
    1fe8:	6978      	ldr	r0, [r7, #20]
    1fea:	f7ff ff21 	bl	1e30 <gfx_sprite>
    1fee:	4b2f      	ldr	r3, [pc, #188]	; (20ac <main+0x19c>)
    1ff0:	681b      	ldr	r3, [r3, #0]
    1ff2:	330a      	adds	r3, #10
    1ff4:	603b      	str	r3, [r7, #0]
    1ff6:	bf00      	nop
    1ff8:	4b2c      	ldr	r3, [pc, #176]	; (20ac <main+0x19c>)
    1ffa:	681a      	ldr	r2, [r3, #0]
    1ffc:	683b      	ldr	r3, [r7, #0]
    1ffe:	429a      	cmp	r2, r3
    2000:	d3fa      	bcc.n	1ff8 <main+0xe8>
    2002:	f001 fe5f 	bl	3cc4 <frame_sync>
    2006:	4b28      	ldr	r3, [pc, #160]	; (20a8 <main+0x198>)
    2008:	9300      	str	r3, [sp, #0]
    200a:	2308      	movs	r3, #8
    200c:	2208      	movs	r2, #8
    200e:	6939      	ldr	r1, [r7, #16]
    2010:	6978      	ldr	r0, [r7, #20]
    2012:	f7ff ff0d 	bl	1e30 <gfx_sprite>
    2016:	697a      	ldr	r2, [r7, #20]
    2018:	68fb      	ldr	r3, [r7, #12]
    201a:	4413      	add	r3, r2
    201c:	617b      	str	r3, [r7, #20]
    201e:	697b      	ldr	r3, [r7, #20]
    2020:	f113 0f08 	cmn.w	r3, #8
    2024:	db02      	blt.n	202c <main+0x11c>
    2026:	697b      	ldr	r3, [r7, #20]
    2028:	2bb3      	cmp	r3, #179	; 0xb3
    202a:	dd02      	ble.n	2032 <main+0x122>
    202c:	68fb      	ldr	r3, [r7, #12]
    202e:	425b      	negs	r3, r3
    2030:	60fb      	str	r3, [r7, #12]
    2032:	693a      	ldr	r2, [r7, #16]
    2034:	68bb      	ldr	r3, [r7, #8]
    2036:	4413      	add	r3, r2
    2038:	613b      	str	r3, [r7, #16]
    203a:	693b      	ldr	r3, [r7, #16]
    203c:	f113 0f08 	cmn.w	r3, #8
    2040:	db02      	blt.n	2048 <main+0x138>
    2042:	693b      	ldr	r3, [r7, #16]
    2044:	2b6f      	cmp	r3, #111	; 0x6f
    2046:	dd02      	ble.n	204e <main+0x13e>
    2048:	68bb      	ldr	r3, [r7, #8]
    204a:	425b      	negs	r3, r3
    204c:	60bb      	str	r3, [r7, #8]
    204e:	4b18      	ldr	r3, [pc, #96]	; (20b0 <main+0x1a0>)
    2050:	881b      	ldrh	r3, [r3, #0]
    2052:	b29b      	uxth	r3, r3
    2054:	b21b      	sxth	r3, r3
    2056:	2b00      	cmp	r3, #0
    2058:	dbc1      	blt.n	1fde <main+0xce>
    205a:	79bb      	ldrb	r3, [r7, #6]
    205c:	3301      	adds	r3, #1
    205e:	71bb      	strb	r3, [r7, #6]
    2060:	79bb      	ldrb	r3, [r7, #6]
    2062:	4618      	mov	r0, r3
    2064:	f001 fe3e 	bl	3ce4 <set_palette>
    2068:	2100      	movs	r1, #0
    206a:	20a8      	movs	r0, #168	; 0xa8
    206c:	f001 fa64 	bl	3538 <set_cursor>
    2070:	79bb      	ldrb	r3, [r7, #6]
    2072:	f003 0303 	and.w	r3, r3, #3
    2076:	210a      	movs	r1, #10
    2078:	4618      	mov	r0, r3
    207a:	f001 faac 	bl	35d6 <print_int>
    207e:	bf00      	nop
    2080:	4b0b      	ldr	r3, [pc, #44]	; (20b0 <main+0x1a0>)
    2082:	881b      	ldrh	r3, [r3, #0]
    2084:	b29b      	uxth	r3, r3
    2086:	b21b      	sxth	r3, r3
    2088:	2b00      	cmp	r3, #0
    208a:	daf9      	bge.n	2080 <main+0x170>
    208c:	e7a7      	b.n	1fde <main+0xce>
    208e:	bf00      	nop
    2090:	40021000 	.word	0x40021000
    2094:	40011000 	.word	0x40011000
    2098:	00004400 	.word	0x00004400
    209c:	20004cd0 	.word	0x20004cd0
    20a0:	000041b4 	.word	0x000041b4
    20a4:	20004c60 	.word	0x20004c60
    20a8:	00004194 	.word	0x00004194
    20ac:	200004e8 	.word	0x200004e8
    20b0:	200024fc 	.word	0x200024fc

000020b4 <enable_interrupt>:
    20b4:	b480      	push	{r7}
    20b6:	b083      	sub	sp, #12
    20b8:	af00      	add	r7, sp, #0
    20ba:	6078      	str	r0, [r7, #4]
    20bc:	687b      	ldr	r3, [r7, #4]
    20be:	2b3b      	cmp	r3, #59	; 0x3b
    20c0:	dc17      	bgt.n	20f2 <enable_interrupt+0x3e>
    20c2:	687b      	ldr	r3, [r7, #4]
    20c4:	115b      	asrs	r3, r3, #5
    20c6:	009b      	lsls	r3, r3, #2
    20c8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    20cc:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    20d0:	687a      	ldr	r2, [r7, #4]
    20d2:	1152      	asrs	r2, r2, #5
    20d4:	0092      	lsls	r2, r2, #2
    20d6:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    20da:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    20de:	6812      	ldr	r2, [r2, #0]
    20e0:	6879      	ldr	r1, [r7, #4]
    20e2:	f001 011f 	and.w	r1, r1, #31
    20e6:	2001      	movs	r0, #1
    20e8:	fa00 f101 	lsl.w	r1, r0, r1
    20ec:	430a      	orrs	r2, r1
    20ee:	601a      	str	r2, [r3, #0]
    20f0:	e000      	b.n	20f4 <enable_interrupt+0x40>
    20f2:	bf00      	nop
    20f4:	370c      	adds	r7, #12
    20f6:	46bd      	mov	sp, r7
    20f8:	bc80      	pop	{r7}
    20fa:	4770      	bx	lr

000020fc <disable_interrupt>:
    20fc:	b480      	push	{r7}
    20fe:	b083      	sub	sp, #12
    2100:	af00      	add	r7, sp, #0
    2102:	6078      	str	r0, [r7, #4]
    2104:	687b      	ldr	r3, [r7, #4]
    2106:	2b3b      	cmp	r3, #59	; 0x3b
    2108:	dc0c      	bgt.n	2124 <disable_interrupt+0x28>
    210a:	687b      	ldr	r3, [r7, #4]
    210c:	115b      	asrs	r3, r3, #5
    210e:	009a      	lsls	r2, r3, #2
    2110:	4b07      	ldr	r3, [pc, #28]	; (2130 <disable_interrupt+0x34>)
    2112:	4413      	add	r3, r2
    2114:	687a      	ldr	r2, [r7, #4]
    2116:	f002 021f 	and.w	r2, r2, #31
    211a:	2101      	movs	r1, #1
    211c:	fa01 f202 	lsl.w	r2, r1, r2
    2120:	601a      	str	r2, [r3, #0]
    2122:	e000      	b.n	2126 <disable_interrupt+0x2a>
    2124:	bf00      	nop
    2126:	370c      	adds	r7, #12
    2128:	46bd      	mov	sp, r7
    212a:	bc80      	pop	{r7}
    212c:	4770      	bx	lr
    212e:	bf00      	nop
    2130:	e000e180 	.word	0xe000e180

00002134 <get_pending>:
    2134:	b480      	push	{r7}
    2136:	b083      	sub	sp, #12
    2138:	af00      	add	r7, sp, #0
    213a:	6078      	str	r0, [r7, #4]
    213c:	687b      	ldr	r3, [r7, #4]
    213e:	2b3b      	cmp	r3, #59	; 0x3b
    2140:	dd01      	ble.n	2146 <get_pending+0x12>
    2142:	2300      	movs	r3, #0
    2144:	e00c      	b.n	2160 <get_pending+0x2c>
    2146:	687b      	ldr	r3, [r7, #4]
    2148:	115b      	asrs	r3, r3, #5
    214a:	009a      	lsls	r2, r3, #2
    214c:	4b07      	ldr	r3, [pc, #28]	; (216c <get_pending+0x38>)
    214e:	4413      	add	r3, r2
    2150:	681b      	ldr	r3, [r3, #0]
    2152:	687a      	ldr	r2, [r7, #4]
    2154:	f002 021f 	and.w	r2, r2, #31
    2158:	2101      	movs	r1, #1
    215a:	fa01 f202 	lsl.w	r2, r1, r2
    215e:	4013      	ands	r3, r2
    2160:	4618      	mov	r0, r3
    2162:	370c      	adds	r7, #12
    2164:	46bd      	mov	sp, r7
    2166:	bc80      	pop	{r7}
    2168:	4770      	bx	lr
    216a:	bf00      	nop
    216c:	e000e280 	.word	0xe000e280

00002170 <get_active>:
    2170:	b480      	push	{r7}
    2172:	b083      	sub	sp, #12
    2174:	af00      	add	r7, sp, #0
    2176:	6078      	str	r0, [r7, #4]
    2178:	687b      	ldr	r3, [r7, #4]
    217a:	2b3b      	cmp	r3, #59	; 0x3b
    217c:	dd01      	ble.n	2182 <get_active+0x12>
    217e:	2300      	movs	r3, #0
    2180:	e00e      	b.n	21a0 <get_active+0x30>
    2182:	687b      	ldr	r3, [r7, #4]
    2184:	115b      	asrs	r3, r3, #5
    2186:	009b      	lsls	r3, r3, #2
    2188:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    218c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2190:	681b      	ldr	r3, [r3, #0]
    2192:	687a      	ldr	r2, [r7, #4]
    2194:	f002 021f 	and.w	r2, r2, #31
    2198:	2101      	movs	r1, #1
    219a:	fa01 f202 	lsl.w	r2, r1, r2
    219e:	4013      	ands	r3, r2
    21a0:	4618      	mov	r0, r3
    21a2:	370c      	adds	r7, #12
    21a4:	46bd      	mov	sp, r7
    21a6:	bc80      	pop	{r7}
    21a8:	4770      	bx	lr

000021aa <set_pending>:
    21aa:	b480      	push	{r7}
    21ac:	b083      	sub	sp, #12
    21ae:	af00      	add	r7, sp, #0
    21b0:	6078      	str	r0, [r7, #4]
    21b2:	687b      	ldr	r3, [r7, #4]
    21b4:	2b3b      	cmp	r3, #59	; 0x3b
    21b6:	dc17      	bgt.n	21e8 <set_pending+0x3e>
    21b8:	687b      	ldr	r3, [r7, #4]
    21ba:	115b      	asrs	r3, r3, #5
    21bc:	009b      	lsls	r3, r3, #2
    21be:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    21c2:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    21c6:	687a      	ldr	r2, [r7, #4]
    21c8:	1152      	asrs	r2, r2, #5
    21ca:	0092      	lsls	r2, r2, #2
    21cc:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    21d0:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    21d4:	6812      	ldr	r2, [r2, #0]
    21d6:	6879      	ldr	r1, [r7, #4]
    21d8:	f001 011f 	and.w	r1, r1, #31
    21dc:	2001      	movs	r0, #1
    21de:	fa00 f101 	lsl.w	r1, r0, r1
    21e2:	430a      	orrs	r2, r1
    21e4:	601a      	str	r2, [r3, #0]
    21e6:	e000      	b.n	21ea <set_pending+0x40>
    21e8:	bf00      	nop
    21ea:	370c      	adds	r7, #12
    21ec:	46bd      	mov	sp, r7
    21ee:	bc80      	pop	{r7}
    21f0:	4770      	bx	lr

000021f2 <clear_pending>:
    21f2:	b480      	push	{r7}
    21f4:	b083      	sub	sp, #12
    21f6:	af00      	add	r7, sp, #0
    21f8:	6078      	str	r0, [r7, #4]
    21fa:	687b      	ldr	r3, [r7, #4]
    21fc:	2b3b      	cmp	r3, #59	; 0x3b
    21fe:	dc0c      	bgt.n	221a <clear_pending+0x28>
    2200:	687b      	ldr	r3, [r7, #4]
    2202:	115b      	asrs	r3, r3, #5
    2204:	009a      	lsls	r2, r3, #2
    2206:	4b07      	ldr	r3, [pc, #28]	; (2224 <clear_pending+0x32>)
    2208:	4413      	add	r3, r2
    220a:	687a      	ldr	r2, [r7, #4]
    220c:	f002 021f 	and.w	r2, r2, #31
    2210:	2101      	movs	r1, #1
    2212:	fa01 f202 	lsl.w	r2, r1, r2
    2216:	601a      	str	r2, [r3, #0]
    2218:	e000      	b.n	221c <clear_pending+0x2a>
    221a:	bf00      	nop
    221c:	370c      	adds	r7, #12
    221e:	46bd      	mov	sp, r7
    2220:	bc80      	pop	{r7}
    2222:	4770      	bx	lr
    2224:	e000e280 	.word	0xe000e280

00002228 <set_int_priority>:
    2228:	b480      	push	{r7}
    222a:	b083      	sub	sp, #12
    222c:	af00      	add	r7, sp, #0
    222e:	6078      	str	r0, [r7, #4]
    2230:	6039      	str	r1, [r7, #0]
    2232:	687b      	ldr	r3, [r7, #4]
    2234:	2b00      	cmp	r3, #0
    2236:	db0d      	blt.n	2254 <set_int_priority+0x2c>
    2238:	687b      	ldr	r3, [r7, #4]
    223a:	2b3b      	cmp	r3, #59	; 0x3b
    223c:	dc0a      	bgt.n	2254 <set_int_priority+0x2c>
    223e:	687b      	ldr	r3, [r7, #4]
    2240:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2244:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    2248:	683a      	ldr	r2, [r7, #0]
    224a:	b2d2      	uxtb	r2, r2
    224c:	0112      	lsls	r2, r2, #4
    224e:	b2d2      	uxtb	r2, r2
    2250:	701a      	strb	r2, [r3, #0]
    2252:	e012      	b.n	227a <set_int_priority+0x52>
    2254:	687b      	ldr	r3, [r7, #4]
    2256:	2b00      	cmp	r3, #0
    2258:	da0f      	bge.n	227a <set_int_priority+0x52>
    225a:	687b      	ldr	r3, [r7, #4]
    225c:	f113 0f0f 	cmn.w	r3, #15
    2260:	db0b      	blt.n	227a <set_int_priority+0x52>
    2262:	687a      	ldr	r2, [r7, #4]
    2264:	f06f 0303 	mvn.w	r3, #3
    2268:	1a9b      	subs	r3, r3, r2
    226a:	461a      	mov	r2, r3
    226c:	4b05      	ldr	r3, [pc, #20]	; (2284 <set_int_priority+0x5c>)
    226e:	4413      	add	r3, r2
    2270:	683a      	ldr	r2, [r7, #0]
    2272:	b2d2      	uxtb	r2, r2
    2274:	0112      	lsls	r2, r2, #4
    2276:	b2d2      	uxtb	r2, r2
    2278:	701a      	strb	r2, [r3, #0]
    227a:	bf00      	nop
    227c:	370c      	adds	r7, #12
    227e:	46bd      	mov	sp, r7
    2280:	bc80      	pop	{r7}
    2282:	4770      	bx	lr
    2284:	e000ed18 	.word	0xe000ed18

00002288 <leap_year>:
    2288:	b480      	push	{r7}
    228a:	b083      	sub	sp, #12
    228c:	af00      	add	r7, sp, #0
    228e:	6078      	str	r0, [r7, #4]
    2290:	687b      	ldr	r3, [r7, #4]
    2292:	f003 0303 	and.w	r3, r3, #3
    2296:	2b00      	cmp	r3, #0
    2298:	d11a      	bne.n	22d0 <leap_year+0x48>
    229a:	687a      	ldr	r2, [r7, #4]
    229c:	4b0f      	ldr	r3, [pc, #60]	; (22dc <leap_year+0x54>)
    229e:	fba3 1302 	umull	r1, r3, r3, r2
    22a2:	095b      	lsrs	r3, r3, #5
    22a4:	2164      	movs	r1, #100	; 0x64
    22a6:	fb01 f303 	mul.w	r3, r1, r3
    22aa:	1ad3      	subs	r3, r2, r3
    22ac:	2b00      	cmp	r3, #0
    22ae:	d10d      	bne.n	22cc <leap_year+0x44>
    22b0:	687a      	ldr	r2, [r7, #4]
    22b2:	4b0a      	ldr	r3, [pc, #40]	; (22dc <leap_year+0x54>)
    22b4:	fba3 1302 	umull	r1, r3, r3, r2
    22b8:	09db      	lsrs	r3, r3, #7
    22ba:	f44f 71c8 	mov.w	r1, #400	; 0x190
    22be:	fb01 f303 	mul.w	r3, r1, r3
    22c2:	1ad3      	subs	r3, r2, r3
    22c4:	2b00      	cmp	r3, #0
    22c6:	d001      	beq.n	22cc <leap_year+0x44>
    22c8:	2300      	movs	r3, #0
    22ca:	e002      	b.n	22d2 <leap_year+0x4a>
    22cc:	2301      	movs	r3, #1
    22ce:	e000      	b.n	22d2 <leap_year+0x4a>
    22d0:	2300      	movs	r3, #0
    22d2:	4618      	mov	r0, r3
    22d4:	370c      	adds	r7, #12
    22d6:	46bd      	mov	sp, r7
    22d8:	bc80      	pop	{r7}
    22da:	4770      	bx	lr
    22dc:	51eb851f 	.word	0x51eb851f

000022e0 <sec_per_month>:
    22e0:	b480      	push	{r7}
    22e2:	b085      	sub	sp, #20
    22e4:	af00      	add	r7, sp, #0
    22e6:	6078      	str	r0, [r7, #4]
    22e8:	6039      	str	r1, [r7, #0]
    22ea:	4a0d      	ldr	r2, [pc, #52]	; (2320 <sec_per_month+0x40>)
    22ec:	683b      	ldr	r3, [r7, #0]
    22ee:	4413      	add	r3, r2
    22f0:	781b      	ldrb	r3, [r3, #0]
    22f2:	461a      	mov	r2, r3
    22f4:	4b0b      	ldr	r3, [pc, #44]	; (2324 <sec_per_month+0x44>)
    22f6:	fb03 f302 	mul.w	r3, r3, r2
    22fa:	60fb      	str	r3, [r7, #12]
    22fc:	683b      	ldr	r3, [r7, #0]
    22fe:	2b02      	cmp	r3, #2
    2300:	d108      	bne.n	2314 <sec_per_month+0x34>
    2302:	687b      	ldr	r3, [r7, #4]
    2304:	2b00      	cmp	r3, #0
    2306:	d005      	beq.n	2314 <sec_per_month+0x34>
    2308:	68fb      	ldr	r3, [r7, #12]
    230a:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    230e:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    2312:	60fb      	str	r3, [r7, #12]
    2314:	68fb      	ldr	r3, [r7, #12]
    2316:	4618      	mov	r0, r3
    2318:	3714      	adds	r7, #20
    231a:	46bd      	mov	sp, r7
    231c:	bc80      	pop	{r7}
    231e:	4770      	bx	lr
    2320:	00004270 	.word	0x00004270
    2324:	00015180 	.word	0x00015180

00002328 <get_date_time>:
    2328:	b580      	push	{r7, lr}
    232a:	b086      	sub	sp, #24
    232c:	af00      	add	r7, sp, #0
    232e:	6078      	str	r0, [r7, #4]
    2330:	4b66      	ldr	r3, [pc, #408]	; (24cc <get_date_time+0x1a4>)
    2332:	699b      	ldr	r3, [r3, #24]
    2334:	041a      	lsls	r2, r3, #16
    2336:	4b65      	ldr	r3, [pc, #404]	; (24cc <get_date_time+0x1a4>)
    2338:	69db      	ldr	r3, [r3, #28]
    233a:	4413      	add	r3, r2
    233c:	617b      	str	r3, [r7, #20]
    233e:	687b      	ldr	r3, [r7, #4]
    2340:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2344:	811a      	strh	r2, [r3, #8]
    2346:	f240 70b2 	movw	r0, #1970	; 0x7b2
    234a:	f7ff ff9d 	bl	2288 <leap_year>
    234e:	6138      	str	r0, [r7, #16]
    2350:	e019      	b.n	2386 <get_date_time+0x5e>
    2352:	693b      	ldr	r3, [r7, #16]
    2354:	2b00      	cmp	r3, #0
    2356:	d006      	beq.n	2366 <get_date_time+0x3e>
    2358:	697b      	ldr	r3, [r7, #20]
    235a:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    235e:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2362:	617b      	str	r3, [r7, #20]
    2364:	e003      	b.n	236e <get_date_time+0x46>
    2366:	697a      	ldr	r2, [r7, #20]
    2368:	4b59      	ldr	r3, [pc, #356]	; (24d0 <get_date_time+0x1a8>)
    236a:	4413      	add	r3, r2
    236c:	617b      	str	r3, [r7, #20]
    236e:	687b      	ldr	r3, [r7, #4]
    2370:	891b      	ldrh	r3, [r3, #8]
    2372:	3301      	adds	r3, #1
    2374:	b29a      	uxth	r2, r3
    2376:	687b      	ldr	r3, [r7, #4]
    2378:	811a      	strh	r2, [r3, #8]
    237a:	687b      	ldr	r3, [r7, #4]
    237c:	891b      	ldrh	r3, [r3, #8]
    237e:	4618      	mov	r0, r3
    2380:	f7ff ff82 	bl	2288 <leap_year>
    2384:	6138      	str	r0, [r7, #16]
    2386:	693b      	ldr	r3, [r7, #16]
    2388:	2b00      	cmp	r3, #0
    238a:	d103      	bne.n	2394 <get_date_time+0x6c>
    238c:	697b      	ldr	r3, [r7, #20]
    238e:	4a51      	ldr	r2, [pc, #324]	; (24d4 <get_date_time+0x1ac>)
    2390:	4293      	cmp	r3, r2
    2392:	d8de      	bhi.n	2352 <get_date_time+0x2a>
    2394:	693b      	ldr	r3, [r7, #16]
    2396:	2b00      	cmp	r3, #0
    2398:	d003      	beq.n	23a2 <get_date_time+0x7a>
    239a:	697b      	ldr	r3, [r7, #20]
    239c:	4a4e      	ldr	r2, [pc, #312]	; (24d8 <get_date_time+0x1b0>)
    239e:	4293      	cmp	r3, r2
    23a0:	d8d7      	bhi.n	2352 <get_date_time+0x2a>
    23a2:	687a      	ldr	r2, [r7, #4]
    23a4:	8853      	ldrh	r3, [r2, #2]
    23a6:	2101      	movs	r1, #1
    23a8:	f361 1389 	bfi	r3, r1, #6, #4
    23ac:	8053      	strh	r3, [r2, #2]
    23ae:	687a      	ldr	r2, [r7, #4]
    23b0:	7893      	ldrb	r3, [r2, #2]
    23b2:	2101      	movs	r1, #1
    23b4:	f361 0345 	bfi	r3, r1, #1, #5
    23b8:	7093      	strb	r3, [r2, #2]
    23ba:	687a      	ldr	r2, [r7, #4]
    23bc:	6813      	ldr	r3, [r2, #0]
    23be:	f36f 3310 	bfc	r3, #12, #5
    23c2:	6013      	str	r3, [r2, #0]
    23c4:	687a      	ldr	r2, [r7, #4]
    23c6:	8813      	ldrh	r3, [r2, #0]
    23c8:	f36f 138b 	bfc	r3, #6, #6
    23cc:	8013      	strh	r3, [r2, #0]
    23ce:	687a      	ldr	r2, [r7, #4]
    23d0:	7813      	ldrb	r3, [r2, #0]
    23d2:	f36f 0305 	bfc	r3, #0, #6
    23d6:	7013      	strb	r3, [r2, #0]
    23d8:	e011      	b.n	23fe <get_date_time+0xd6>
    23da:	687b      	ldr	r3, [r7, #4]
    23dc:	885b      	ldrh	r3, [r3, #2]
    23de:	f3c3 1383 	ubfx	r3, r3, #6, #4
    23e2:	b2db      	uxtb	r3, r3
    23e4:	3301      	adds	r3, #1
    23e6:	f003 030f 	and.w	r3, r3, #15
    23ea:	b2d9      	uxtb	r1, r3
    23ec:	687a      	ldr	r2, [r7, #4]
    23ee:	8853      	ldrh	r3, [r2, #2]
    23f0:	f361 1389 	bfi	r3, r1, #6, #4
    23f4:	8053      	strh	r3, [r2, #2]
    23f6:	697a      	ldr	r2, [r7, #20]
    23f8:	68fb      	ldr	r3, [r7, #12]
    23fa:	1ad3      	subs	r3, r2, r3
    23fc:	617b      	str	r3, [r7, #20]
    23fe:	687b      	ldr	r3, [r7, #4]
    2400:	885b      	ldrh	r3, [r3, #2]
    2402:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2406:	b2db      	uxtb	r3, r3
    2408:	4619      	mov	r1, r3
    240a:	6938      	ldr	r0, [r7, #16]
    240c:	f7ff ff68 	bl	22e0 <sec_per_month>
    2410:	60f8      	str	r0, [r7, #12]
    2412:	68fa      	ldr	r2, [r7, #12]
    2414:	697b      	ldr	r3, [r7, #20]
    2416:	429a      	cmp	r2, r3
    2418:	d3df      	bcc.n	23da <get_date_time+0xb2>
    241a:	697b      	ldr	r3, [r7, #20]
    241c:	4a2f      	ldr	r2, [pc, #188]	; (24dc <get_date_time+0x1b4>)
    241e:	fba2 2303 	umull	r2, r3, r2, r3
    2422:	0c1b      	lsrs	r3, r3, #16
    2424:	b2db      	uxtb	r3, r3
    2426:	3301      	adds	r3, #1
    2428:	b2db      	uxtb	r3, r3
    242a:	f003 031f 	and.w	r3, r3, #31
    242e:	b2d9      	uxtb	r1, r3
    2430:	687a      	ldr	r2, [r7, #4]
    2432:	7893      	ldrb	r3, [r2, #2]
    2434:	f361 0345 	bfi	r3, r1, #1, #5
    2438:	7093      	strb	r3, [r2, #2]
    243a:	697b      	ldr	r3, [r7, #20]
    243c:	4a27      	ldr	r2, [pc, #156]	; (24dc <get_date_time+0x1b4>)
    243e:	fba2 1203 	umull	r1, r2, r2, r3
    2442:	0c12      	lsrs	r2, r2, #16
    2444:	4926      	ldr	r1, [pc, #152]	; (24e0 <get_date_time+0x1b8>)
    2446:	fb01 f202 	mul.w	r2, r1, r2
    244a:	1a9b      	subs	r3, r3, r2
    244c:	617b      	str	r3, [r7, #20]
    244e:	697b      	ldr	r3, [r7, #20]
    2450:	4a24      	ldr	r2, [pc, #144]	; (24e4 <get_date_time+0x1bc>)
    2452:	fba2 2303 	umull	r2, r3, r2, r3
    2456:	0adb      	lsrs	r3, r3, #11
    2458:	b2db      	uxtb	r3, r3
    245a:	f003 031f 	and.w	r3, r3, #31
    245e:	b2d9      	uxtb	r1, r3
    2460:	687a      	ldr	r2, [r7, #4]
    2462:	6813      	ldr	r3, [r2, #0]
    2464:	f361 3310 	bfi	r3, r1, #12, #5
    2468:	6013      	str	r3, [r2, #0]
    246a:	697b      	ldr	r3, [r7, #20]
    246c:	4a1d      	ldr	r2, [pc, #116]	; (24e4 <get_date_time+0x1bc>)
    246e:	fba2 1203 	umull	r1, r2, r2, r3
    2472:	0ad2      	lsrs	r2, r2, #11
    2474:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2478:	fb01 f202 	mul.w	r2, r1, r2
    247c:	1a9b      	subs	r3, r3, r2
    247e:	617b      	str	r3, [r7, #20]
    2480:	697b      	ldr	r3, [r7, #20]
    2482:	4a19      	ldr	r2, [pc, #100]	; (24e8 <get_date_time+0x1c0>)
    2484:	fba2 2303 	umull	r2, r3, r2, r3
    2488:	095b      	lsrs	r3, r3, #5
    248a:	b2db      	uxtb	r3, r3
    248c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2490:	b2d9      	uxtb	r1, r3
    2492:	687a      	ldr	r2, [r7, #4]
    2494:	8813      	ldrh	r3, [r2, #0]
    2496:	f361 138b 	bfi	r3, r1, #6, #6
    249a:	8013      	strh	r3, [r2, #0]
    249c:	6979      	ldr	r1, [r7, #20]
    249e:	4b12      	ldr	r3, [pc, #72]	; (24e8 <get_date_time+0x1c0>)
    24a0:	fba3 2301 	umull	r2, r3, r3, r1
    24a4:	095a      	lsrs	r2, r3, #5
    24a6:	4613      	mov	r3, r2
    24a8:	011b      	lsls	r3, r3, #4
    24aa:	1a9b      	subs	r3, r3, r2
    24ac:	009b      	lsls	r3, r3, #2
    24ae:	1aca      	subs	r2, r1, r3
    24b0:	b2d3      	uxtb	r3, r2
    24b2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    24b6:	b2d9      	uxtb	r1, r3
    24b8:	687a      	ldr	r2, [r7, #4]
    24ba:	7813      	ldrb	r3, [r2, #0]
    24bc:	f361 0305 	bfi	r3, r1, #0, #6
    24c0:	7013      	strb	r3, [r2, #0]
    24c2:	bf00      	nop
    24c4:	3718      	adds	r7, #24
    24c6:	46bd      	mov	sp, r7
    24c8:	bd80      	pop	{r7, pc}
    24ca:	bf00      	nop
    24cc:	40002800 	.word	0x40002800
    24d0:	fe1ecc80 	.word	0xfe1ecc80
    24d4:	01e1337f 	.word	0x01e1337f
    24d8:	01e284ff 	.word	0x01e284ff
    24dc:	c22e4507 	.word	0xc22e4507
    24e0:	00015180 	.word	0x00015180
    24e4:	91a2b3c5 	.word	0x91a2b3c5
    24e8:	88888889 	.word	0x88888889

000024ec <set_date_time>:
    24ec:	b580      	push	{r7, lr}
    24ee:	b086      	sub	sp, #24
    24f0:	af00      	add	r7, sp, #0
    24f2:	6078      	str	r0, [r7, #4]
    24f4:	2300      	movs	r3, #0
    24f6:	613b      	str	r3, [r7, #16]
    24f8:	687b      	ldr	r3, [r7, #4]
    24fa:	891b      	ldrh	r3, [r3, #8]
    24fc:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2500:	4293      	cmp	r3, r2
    2502:	d803      	bhi.n	250c <set_date_time+0x20>
    2504:	687b      	ldr	r3, [r7, #4]
    2506:	f240 72b2 	movw	r2, #1970	; 0x7b2
    250a:	811a      	strh	r2, [r3, #8]
    250c:	687b      	ldr	r3, [r7, #4]
    250e:	891b      	ldrh	r3, [r3, #8]
    2510:	f640 023a 	movw	r2, #2106	; 0x83a
    2514:	4293      	cmp	r3, r2
    2516:	d903      	bls.n	2520 <set_date_time+0x34>
    2518:	687b      	ldr	r3, [r7, #4]
    251a:	f640 023a 	movw	r2, #2106	; 0x83a
    251e:	811a      	strh	r2, [r3, #8]
    2520:	687b      	ldr	r3, [r7, #4]
    2522:	891b      	ldrh	r3, [r3, #8]
    2524:	4618      	mov	r0, r3
    2526:	f7ff feaf 	bl	2288 <leap_year>
    252a:	60f8      	str	r0, [r7, #12]
    252c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2530:	617b      	str	r3, [r7, #20]
    2532:	e013      	b.n	255c <set_date_time+0x70>
    2534:	6978      	ldr	r0, [r7, #20]
    2536:	f7ff fea7 	bl	2288 <leap_year>
    253a:	4603      	mov	r3, r0
    253c:	2b00      	cmp	r3, #0
    253e:	d006      	beq.n	254e <set_date_time+0x62>
    2540:	693b      	ldr	r3, [r7, #16]
    2542:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2546:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    254a:	613b      	str	r3, [r7, #16]
    254c:	e003      	b.n	2556 <set_date_time+0x6a>
    254e:	693a      	ldr	r2, [r7, #16]
    2550:	4b42      	ldr	r3, [pc, #264]	; (265c <set_date_time+0x170>)
    2552:	4413      	add	r3, r2
    2554:	613b      	str	r3, [r7, #16]
    2556:	697b      	ldr	r3, [r7, #20]
    2558:	3301      	adds	r3, #1
    255a:	617b      	str	r3, [r7, #20]
    255c:	687b      	ldr	r3, [r7, #4]
    255e:	891b      	ldrh	r3, [r3, #8]
    2560:	461a      	mov	r2, r3
    2562:	697b      	ldr	r3, [r7, #20]
    2564:	429a      	cmp	r2, r3
    2566:	d8e5      	bhi.n	2534 <set_date_time+0x48>
    2568:	2301      	movs	r3, #1
    256a:	617b      	str	r3, [r7, #20]
    256c:	e00a      	b.n	2584 <set_date_time+0x98>
    256e:	6979      	ldr	r1, [r7, #20]
    2570:	68f8      	ldr	r0, [r7, #12]
    2572:	f7ff feb5 	bl	22e0 <sec_per_month>
    2576:	4602      	mov	r2, r0
    2578:	693b      	ldr	r3, [r7, #16]
    257a:	4413      	add	r3, r2
    257c:	613b      	str	r3, [r7, #16]
    257e:	697b      	ldr	r3, [r7, #20]
    2580:	3301      	adds	r3, #1
    2582:	617b      	str	r3, [r7, #20]
    2584:	687b      	ldr	r3, [r7, #4]
    2586:	885b      	ldrh	r3, [r3, #2]
    2588:	f3c3 1383 	ubfx	r3, r3, #6, #4
    258c:	b2db      	uxtb	r3, r3
    258e:	461a      	mov	r2, r3
    2590:	697b      	ldr	r3, [r7, #20]
    2592:	429a      	cmp	r2, r3
    2594:	d8eb      	bhi.n	256e <set_date_time+0x82>
    2596:	687b      	ldr	r3, [r7, #4]
    2598:	789b      	ldrb	r3, [r3, #2]
    259a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    259e:	b2db      	uxtb	r3, r3
    25a0:	3b01      	subs	r3, #1
    25a2:	4a2f      	ldr	r2, [pc, #188]	; (2660 <set_date_time+0x174>)
    25a4:	fb02 f303 	mul.w	r3, r2, r3
    25a8:	461a      	mov	r2, r3
    25aa:	693b      	ldr	r3, [r7, #16]
    25ac:	4413      	add	r3, r2
    25ae:	613b      	str	r3, [r7, #16]
    25b0:	687b      	ldr	r3, [r7, #4]
    25b2:	681b      	ldr	r3, [r3, #0]
    25b4:	f3c3 3304 	ubfx	r3, r3, #12, #5
    25b8:	b2db      	uxtb	r3, r3
    25ba:	461a      	mov	r2, r3
    25bc:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    25c0:	fb03 f302 	mul.w	r3, r3, r2
    25c4:	461a      	mov	r2, r3
    25c6:	693b      	ldr	r3, [r7, #16]
    25c8:	4413      	add	r3, r2
    25ca:	613b      	str	r3, [r7, #16]
    25cc:	687b      	ldr	r3, [r7, #4]
    25ce:	881b      	ldrh	r3, [r3, #0]
    25d0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    25d4:	b2db      	uxtb	r3, r3
    25d6:	461a      	mov	r2, r3
    25d8:	4613      	mov	r3, r2
    25da:	011b      	lsls	r3, r3, #4
    25dc:	1a9b      	subs	r3, r3, r2
    25de:	009b      	lsls	r3, r3, #2
    25e0:	461a      	mov	r2, r3
    25e2:	693b      	ldr	r3, [r7, #16]
    25e4:	4413      	add	r3, r2
    25e6:	613b      	str	r3, [r7, #16]
    25e8:	687b      	ldr	r3, [r7, #4]
    25ea:	781b      	ldrb	r3, [r3, #0]
    25ec:	f3c3 0305 	ubfx	r3, r3, #0, #6
    25f0:	b2db      	uxtb	r3, r3
    25f2:	461a      	mov	r2, r3
    25f4:	693b      	ldr	r3, [r7, #16]
    25f6:	4413      	add	r3, r2
    25f8:	613b      	str	r3, [r7, #16]
    25fa:	4a1a      	ldr	r2, [pc, #104]	; (2664 <set_date_time+0x178>)
    25fc:	4b19      	ldr	r3, [pc, #100]	; (2664 <set_date_time+0x178>)
    25fe:	69db      	ldr	r3, [r3, #28]
    2600:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2604:	61d3      	str	r3, [r2, #28]
    2606:	4a18      	ldr	r2, [pc, #96]	; (2668 <set_date_time+0x17c>)
    2608:	4b17      	ldr	r3, [pc, #92]	; (2668 <set_date_time+0x17c>)
    260a:	681b      	ldr	r3, [r3, #0]
    260c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2610:	6013      	str	r3, [r2, #0]
    2612:	4a16      	ldr	r2, [pc, #88]	; (266c <set_date_time+0x180>)
    2614:	4b15      	ldr	r3, [pc, #84]	; (266c <set_date_time+0x180>)
    2616:	685b      	ldr	r3, [r3, #4]
    2618:	f043 0310 	orr.w	r3, r3, #16
    261c:	6053      	str	r3, [r2, #4]
    261e:	4a13      	ldr	r2, [pc, #76]	; (266c <set_date_time+0x180>)
    2620:	693b      	ldr	r3, [r7, #16]
    2622:	0c1b      	lsrs	r3, r3, #16
    2624:	6193      	str	r3, [r2, #24]
    2626:	4a11      	ldr	r2, [pc, #68]	; (266c <set_date_time+0x180>)
    2628:	693b      	ldr	r3, [r7, #16]
    262a:	b29b      	uxth	r3, r3
    262c:	61d3      	str	r3, [r2, #28]
    262e:	4a0f      	ldr	r2, [pc, #60]	; (266c <set_date_time+0x180>)
    2630:	4b0e      	ldr	r3, [pc, #56]	; (266c <set_date_time+0x180>)
    2632:	685b      	ldr	r3, [r3, #4]
    2634:	f023 0310 	bic.w	r3, r3, #16
    2638:	6053      	str	r3, [r2, #4]
    263a:	bf00      	nop
    263c:	4b0b      	ldr	r3, [pc, #44]	; (266c <set_date_time+0x180>)
    263e:	685b      	ldr	r3, [r3, #4]
    2640:	f003 0320 	and.w	r3, r3, #32
    2644:	2b00      	cmp	r3, #0
    2646:	d0f9      	beq.n	263c <set_date_time+0x150>
    2648:	4a07      	ldr	r2, [pc, #28]	; (2668 <set_date_time+0x17c>)
    264a:	4b07      	ldr	r3, [pc, #28]	; (2668 <set_date_time+0x17c>)
    264c:	681b      	ldr	r3, [r3, #0]
    264e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2652:	6013      	str	r3, [r2, #0]
    2654:	bf00      	nop
    2656:	3718      	adds	r7, #24
    2658:	46bd      	mov	sp, r7
    265a:	bd80      	pop	{r7, pc}
    265c:	01e13380 	.word	0x01e13380
    2660:	00015180 	.word	0x00015180
    2664:	40021000 	.word	0x40021000
    2668:	40007000 	.word	0x40007000
    266c:	40002800 	.word	0x40002800

00002670 <rtc_init>:
    2670:	b580      	push	{r7, lr}
    2672:	b082      	sub	sp, #8
    2674:	af00      	add	r7, sp, #0
    2676:	6078      	str	r0, [r7, #4]
    2678:	6039      	str	r1, [r7, #0]
    267a:	4b4a      	ldr	r3, [pc, #296]	; (27a4 <rtc_init+0x134>)
    267c:	685b      	ldr	r3, [r3, #4]
    267e:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2682:	4293      	cmp	r3, r2
    2684:	f000 8082 	beq.w	278c <rtc_init+0x11c>
    2688:	4a47      	ldr	r2, [pc, #284]	; (27a8 <rtc_init+0x138>)
    268a:	4b47      	ldr	r3, [pc, #284]	; (27a8 <rtc_init+0x138>)
    268c:	69db      	ldr	r3, [r3, #28]
    268e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2692:	61d3      	str	r3, [r2, #28]
    2694:	4a45      	ldr	r2, [pc, #276]	; (27ac <rtc_init+0x13c>)
    2696:	4b45      	ldr	r3, [pc, #276]	; (27ac <rtc_init+0x13c>)
    2698:	681b      	ldr	r3, [r3, #0]
    269a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    269e:	6013      	str	r3, [r2, #0]
    26a0:	4a41      	ldr	r2, [pc, #260]	; (27a8 <rtc_init+0x138>)
    26a2:	4b41      	ldr	r3, [pc, #260]	; (27a8 <rtc_init+0x138>)
    26a4:	6a1b      	ldr	r3, [r3, #32]
    26a6:	f043 0301 	orr.w	r3, r3, #1
    26aa:	6213      	str	r3, [r2, #32]
    26ac:	bf00      	nop
    26ae:	4b3e      	ldr	r3, [pc, #248]	; (27a8 <rtc_init+0x138>)
    26b0:	6a1b      	ldr	r3, [r3, #32]
    26b2:	f003 0302 	and.w	r3, r3, #2
    26b6:	2b00      	cmp	r3, #0
    26b8:	d0f9      	beq.n	26ae <rtc_init+0x3e>
    26ba:	4a3b      	ldr	r2, [pc, #236]	; (27a8 <rtc_init+0x138>)
    26bc:	4b3a      	ldr	r3, [pc, #232]	; (27a8 <rtc_init+0x138>)
    26be:	6a1b      	ldr	r3, [r3, #32]
    26c0:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    26c4:	6213      	str	r3, [r2, #32]
    26c6:	bf00      	nop
    26c8:	4b39      	ldr	r3, [pc, #228]	; (27b0 <rtc_init+0x140>)
    26ca:	685b      	ldr	r3, [r3, #4]
    26cc:	f003 0308 	and.w	r3, r3, #8
    26d0:	2b00      	cmp	r3, #0
    26d2:	d0f9      	beq.n	26c8 <rtc_init+0x58>
    26d4:	bf00      	nop
    26d6:	4b36      	ldr	r3, [pc, #216]	; (27b0 <rtc_init+0x140>)
    26d8:	685b      	ldr	r3, [r3, #4]
    26da:	f003 0320 	and.w	r3, r3, #32
    26de:	2b00      	cmp	r3, #0
    26e0:	d0f9      	beq.n	26d6 <rtc_init+0x66>
    26e2:	4a33      	ldr	r2, [pc, #204]	; (27b0 <rtc_init+0x140>)
    26e4:	4b32      	ldr	r3, [pc, #200]	; (27b0 <rtc_init+0x140>)
    26e6:	685b      	ldr	r3, [r3, #4]
    26e8:	f043 0310 	orr.w	r3, r3, #16
    26ec:	6053      	str	r3, [r2, #4]
    26ee:	bf00      	nop
    26f0:	4b2f      	ldr	r3, [pc, #188]	; (27b0 <rtc_init+0x140>)
    26f2:	685b      	ldr	r3, [r3, #4]
    26f4:	f003 0320 	and.w	r3, r3, #32
    26f8:	2b00      	cmp	r3, #0
    26fa:	d0f9      	beq.n	26f0 <rtc_init+0x80>
    26fc:	492c      	ldr	r1, [pc, #176]	; (27b0 <rtc_init+0x140>)
    26fe:	4b2c      	ldr	r3, [pc, #176]	; (27b0 <rtc_init+0x140>)
    2700:	681a      	ldr	r2, [r3, #0]
    2702:	683b      	ldr	r3, [r7, #0]
    2704:	4313      	orrs	r3, r2
    2706:	600b      	str	r3, [r1, #0]
    2708:	bf00      	nop
    270a:	4b29      	ldr	r3, [pc, #164]	; (27b0 <rtc_init+0x140>)
    270c:	685b      	ldr	r3, [r3, #4]
    270e:	f003 0320 	and.w	r3, r3, #32
    2712:	2b00      	cmp	r3, #0
    2714:	d0f9      	beq.n	270a <rtc_init+0x9a>
    2716:	4a26      	ldr	r2, [pc, #152]	; (27b0 <rtc_init+0x140>)
    2718:	687b      	ldr	r3, [r7, #4]
    271a:	03db      	lsls	r3, r3, #15
    271c:	4925      	ldr	r1, [pc, #148]	; (27b4 <rtc_init+0x144>)
    271e:	fba1 1303 	umull	r1, r3, r1, r3
    2722:	099b      	lsrs	r3, r3, #6
    2724:	3b01      	subs	r3, #1
    2726:	b29b      	uxth	r3, r3
    2728:	60d3      	str	r3, [r2, #12]
    272a:	bf00      	nop
    272c:	4b20      	ldr	r3, [pc, #128]	; (27b0 <rtc_init+0x140>)
    272e:	685b      	ldr	r3, [r3, #4]
    2730:	f003 0320 	and.w	r3, r3, #32
    2734:	2b00      	cmp	r3, #0
    2736:	d0f9      	beq.n	272c <rtc_init+0xbc>
    2738:	4a1d      	ldr	r2, [pc, #116]	; (27b0 <rtc_init+0x140>)
    273a:	687b      	ldr	r3, [r7, #4]
    273c:	03db      	lsls	r3, r3, #15
    273e:	491d      	ldr	r1, [pc, #116]	; (27b4 <rtc_init+0x144>)
    2740:	fba1 1303 	umull	r1, r3, r1, r3
    2744:	099b      	lsrs	r3, r3, #6
    2746:	3b01      	subs	r3, #1
    2748:	0c1b      	lsrs	r3, r3, #16
    274a:	f003 030f 	and.w	r3, r3, #15
    274e:	6093      	str	r3, [r2, #8]
    2750:	bf00      	nop
    2752:	4b17      	ldr	r3, [pc, #92]	; (27b0 <rtc_init+0x140>)
    2754:	685b      	ldr	r3, [r3, #4]
    2756:	f003 0320 	and.w	r3, r3, #32
    275a:	2b00      	cmp	r3, #0
    275c:	d0f9      	beq.n	2752 <rtc_init+0xe2>
    275e:	4b11      	ldr	r3, [pc, #68]	; (27a4 <rtc_init+0x134>)
    2760:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2764:	605a      	str	r2, [r3, #4]
    2766:	4a12      	ldr	r2, [pc, #72]	; (27b0 <rtc_init+0x140>)
    2768:	4b11      	ldr	r3, [pc, #68]	; (27b0 <rtc_init+0x140>)
    276a:	685b      	ldr	r3, [r3, #4]
    276c:	f023 0310 	bic.w	r3, r3, #16
    2770:	6053      	str	r3, [r2, #4]
    2772:	bf00      	nop
    2774:	4b0e      	ldr	r3, [pc, #56]	; (27b0 <rtc_init+0x140>)
    2776:	685b      	ldr	r3, [r3, #4]
    2778:	f003 0320 	and.w	r3, r3, #32
    277c:	2b00      	cmp	r3, #0
    277e:	d0f9      	beq.n	2774 <rtc_init+0x104>
    2780:	4a0a      	ldr	r2, [pc, #40]	; (27ac <rtc_init+0x13c>)
    2782:	4b0a      	ldr	r3, [pc, #40]	; (27ac <rtc_init+0x13c>)
    2784:	681b      	ldr	r3, [r3, #0]
    2786:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    278a:	6013      	str	r3, [r2, #0]
    278c:	210f      	movs	r1, #15
    278e:	2003      	movs	r0, #3
    2790:	f7ff fd4a 	bl	2228 <set_int_priority>
    2794:	2003      	movs	r0, #3
    2796:	f7ff fc8d 	bl	20b4 <enable_interrupt>
    279a:	bf00      	nop
    279c:	3708      	adds	r7, #8
    279e:	46bd      	mov	sp, r7
    27a0:	bd80      	pop	{r7, pc}
    27a2:	bf00      	nop
    27a4:	40006c00 	.word	0x40006c00
    27a8:	40021000 	.word	0x40021000
    27ac:	40007000 	.word	0x40007000
    27b0:	40002800 	.word	0x40002800
    27b4:	10624dd3 	.word	0x10624dd3

000027b8 <reset_backup_domain>:
    27b8:	b480      	push	{r7}
    27ba:	af00      	add	r7, sp, #0
    27bc:	4a0a      	ldr	r2, [pc, #40]	; (27e8 <reset_backup_domain+0x30>)
    27be:	4b0a      	ldr	r3, [pc, #40]	; (27e8 <reset_backup_domain+0x30>)
    27c0:	69db      	ldr	r3, [r3, #28]
    27c2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    27c6:	61d3      	str	r3, [r2, #28]
    27c8:	4a07      	ldr	r2, [pc, #28]	; (27e8 <reset_backup_domain+0x30>)
    27ca:	4b07      	ldr	r3, [pc, #28]	; (27e8 <reset_backup_domain+0x30>)
    27cc:	6a1b      	ldr	r3, [r3, #32]
    27ce:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    27d2:	6213      	str	r3, [r2, #32]
    27d4:	4a04      	ldr	r2, [pc, #16]	; (27e8 <reset_backup_domain+0x30>)
    27d6:	4b04      	ldr	r3, [pc, #16]	; (27e8 <reset_backup_domain+0x30>)
    27d8:	6a1b      	ldr	r3, [r3, #32]
    27da:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    27de:	6213      	str	r3, [r2, #32]
    27e0:	bf00      	nop
    27e2:	46bd      	mov	sp, r7
    27e4:	bc80      	pop	{r7}
    27e6:	4770      	bx	lr
    27e8:	40021000 	.word	0x40021000

000027ec <rtc_clock_trim>:
    27ec:	b480      	push	{r7}
    27ee:	b083      	sub	sp, #12
    27f0:	af00      	add	r7, sp, #0
    27f2:	6078      	str	r0, [r7, #4]
    27f4:	4a34      	ldr	r2, [pc, #208]	; (28c8 <rtc_clock_trim+0xdc>)
    27f6:	4b34      	ldr	r3, [pc, #208]	; (28c8 <rtc_clock_trim+0xdc>)
    27f8:	69db      	ldr	r3, [r3, #28]
    27fa:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    27fe:	61d3      	str	r3, [r2, #28]
    2800:	bf00      	nop
    2802:	4b32      	ldr	r3, [pc, #200]	; (28cc <rtc_clock_trim+0xe0>)
    2804:	685b      	ldr	r3, [r3, #4]
    2806:	f003 0308 	and.w	r3, r3, #8
    280a:	2b00      	cmp	r3, #0
    280c:	d0f9      	beq.n	2802 <rtc_clock_trim+0x16>
    280e:	4a30      	ldr	r2, [pc, #192]	; (28d0 <rtc_clock_trim+0xe4>)
    2810:	4b2f      	ldr	r3, [pc, #188]	; (28d0 <rtc_clock_trim+0xe4>)
    2812:	681b      	ldr	r3, [r3, #0]
    2814:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2818:	6013      	str	r3, [r2, #0]
    281a:	4a2c      	ldr	r2, [pc, #176]	; (28cc <rtc_clock_trim+0xe0>)
    281c:	4b2b      	ldr	r3, [pc, #172]	; (28cc <rtc_clock_trim+0xe0>)
    281e:	685b      	ldr	r3, [r3, #4]
    2820:	f043 0310 	orr.w	r3, r3, #16
    2824:	6053      	str	r3, [r2, #4]
    2826:	4a2b      	ldr	r2, [pc, #172]	; (28d4 <rtc_clock_trim+0xe8>)
    2828:	4b2a      	ldr	r3, [pc, #168]	; (28d4 <rtc_clock_trim+0xe8>)
    282a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    282c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2830:	62d3      	str	r3, [r2, #44]	; 0x2c
    2832:	687b      	ldr	r3, [r7, #4]
    2834:	2b00      	cmp	r3, #0
    2836:	d10a      	bne.n	284e <rtc_clock_trim+0x62>
    2838:	4b26      	ldr	r3, [pc, #152]	; (28d4 <rtc_clock_trim+0xe8>)
    283a:	2200      	movs	r2, #0
    283c:	62da      	str	r2, [r3, #44]	; 0x2c
    283e:	4b23      	ldr	r3, [pc, #140]	; (28cc <rtc_clock_trim+0xe0>)
    2840:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2844:	60da      	str	r2, [r3, #12]
    2846:	4b21      	ldr	r3, [pc, #132]	; (28cc <rtc_clock_trim+0xe0>)
    2848:	2200      	movs	r2, #0
    284a:	609a      	str	r2, [r3, #8]
    284c:	e023      	b.n	2896 <rtc_clock_trim+0xaa>
    284e:	687b      	ldr	r3, [r7, #4]
    2850:	2b00      	cmp	r3, #0
    2852:	dd0a      	ble.n	286a <rtc_clock_trim+0x7e>
    2854:	687b      	ldr	r3, [r7, #4]
    2856:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    285a:	607b      	str	r3, [r7, #4]
    285c:	491d      	ldr	r1, [pc, #116]	; (28d4 <rtc_clock_trim+0xe8>)
    285e:	4b1d      	ldr	r3, [pc, #116]	; (28d4 <rtc_clock_trim+0xe8>)
    2860:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2862:	687b      	ldr	r3, [r7, #4]
    2864:	4313      	orrs	r3, r2
    2866:	62cb      	str	r3, [r1, #44]	; 0x2c
    2868:	e015      	b.n	2896 <rtc_clock_trim+0xaa>
    286a:	687b      	ldr	r3, [r7, #4]
    286c:	425b      	negs	r3, r3
    286e:	607b      	str	r3, [r7, #4]
    2870:	687b      	ldr	r3, [r7, #4]
    2872:	2b7f      	cmp	r3, #127	; 0x7f
    2874:	dd01      	ble.n	287a <rtc_clock_trim+0x8e>
    2876:	237f      	movs	r3, #127	; 0x7f
    2878:	607b      	str	r3, [r7, #4]
    287a:	4b16      	ldr	r3, [pc, #88]	; (28d4 <rtc_clock_trim+0xe8>)
    287c:	2200      	movs	r2, #0
    287e:	62da      	str	r2, [r3, #44]	; 0x2c
    2880:	4a12      	ldr	r2, [pc, #72]	; (28cc <rtc_clock_trim+0xe0>)
    2882:	687b      	ldr	r3, [r7, #4]
    2884:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2888:	33ff      	adds	r3, #255	; 0xff
    288a:	f3c3 030e 	ubfx	r3, r3, #0, #15
    288e:	60d3      	str	r3, [r2, #12]
    2890:	4b0e      	ldr	r3, [pc, #56]	; (28cc <rtc_clock_trim+0xe0>)
    2892:	2200      	movs	r2, #0
    2894:	609a      	str	r2, [r3, #8]
    2896:	4a0d      	ldr	r2, [pc, #52]	; (28cc <rtc_clock_trim+0xe0>)
    2898:	4b0c      	ldr	r3, [pc, #48]	; (28cc <rtc_clock_trim+0xe0>)
    289a:	685b      	ldr	r3, [r3, #4]
    289c:	f023 0310 	bic.w	r3, r3, #16
    28a0:	6053      	str	r3, [r2, #4]
    28a2:	bf00      	nop
    28a4:	4b09      	ldr	r3, [pc, #36]	; (28cc <rtc_clock_trim+0xe0>)
    28a6:	685b      	ldr	r3, [r3, #4]
    28a8:	f003 0320 	and.w	r3, r3, #32
    28ac:	2b00      	cmp	r3, #0
    28ae:	d0f9      	beq.n	28a4 <rtc_clock_trim+0xb8>
    28b0:	4a07      	ldr	r2, [pc, #28]	; (28d0 <rtc_clock_trim+0xe4>)
    28b2:	4b07      	ldr	r3, [pc, #28]	; (28d0 <rtc_clock_trim+0xe4>)
    28b4:	681b      	ldr	r3, [r3, #0]
    28b6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    28ba:	6013      	str	r3, [r2, #0]
    28bc:	bf00      	nop
    28be:	370c      	adds	r7, #12
    28c0:	46bd      	mov	sp, r7
    28c2:	bc80      	pop	{r7}
    28c4:	4770      	bx	lr
    28c6:	bf00      	nop
    28c8:	40021000 	.word	0x40021000
    28cc:	40002800 	.word	0x40002800
    28d0:	40007000 	.word	0x40007000
    28d4:	40006c00 	.word	0x40006c00

000028d8 <rtc_set_alarm>:
    28d8:	b480      	push	{r7}
    28da:	b083      	sub	sp, #12
    28dc:	af00      	add	r7, sp, #0
    28de:	6078      	str	r0, [r7, #4]
    28e0:	bf00      	nop
    28e2:	370c      	adds	r7, #12
    28e4:	46bd      	mov	sp, r7
    28e6:	bc80      	pop	{r7}
    28e8:	4770      	bx	lr

000028ea <str_to_date>:
    28ea:	b580      	push	{r7, lr}
    28ec:	b084      	sub	sp, #16
    28ee:	af00      	add	r7, sp, #0
    28f0:	6078      	str	r0, [r7, #4]
    28f2:	6039      	str	r1, [r7, #0]
    28f4:	2300      	movs	r3, #0
    28f6:	60fb      	str	r3, [r7, #12]
    28f8:	2300      	movs	r3, #0
    28fa:	60bb      	str	r3, [r7, #8]
    28fc:	e00f      	b.n	291e <str_to_date+0x34>
    28fe:	68ba      	ldr	r2, [r7, #8]
    2900:	4613      	mov	r3, r2
    2902:	009b      	lsls	r3, r3, #2
    2904:	4413      	add	r3, r2
    2906:	005b      	lsls	r3, r3, #1
    2908:	4619      	mov	r1, r3
    290a:	68fb      	ldr	r3, [r7, #12]
    290c:	1c5a      	adds	r2, r3, #1
    290e:	60fa      	str	r2, [r7, #12]
    2910:	461a      	mov	r2, r3
    2912:	687b      	ldr	r3, [r7, #4]
    2914:	4413      	add	r3, r2
    2916:	781b      	ldrb	r3, [r3, #0]
    2918:	440b      	add	r3, r1
    291a:	3b30      	subs	r3, #48	; 0x30
    291c:	60bb      	str	r3, [r7, #8]
    291e:	68fb      	ldr	r3, [r7, #12]
    2920:	687a      	ldr	r2, [r7, #4]
    2922:	4413      	add	r3, r2
    2924:	781b      	ldrb	r3, [r3, #0]
    2926:	4618      	mov	r0, r3
    2928:	f7fe fdb3 	bl	1492 <digit>
    292c:	4603      	mov	r3, r0
    292e:	2b00      	cmp	r3, #0
    2930:	d1e5      	bne.n	28fe <str_to_date+0x14>
    2932:	68fb      	ldr	r3, [r7, #12]
    2934:	2b03      	cmp	r3, #3
    2936:	dd05      	ble.n	2944 <str_to_date+0x5a>
    2938:	68fb      	ldr	r3, [r7, #12]
    293a:	687a      	ldr	r2, [r7, #4]
    293c:	4413      	add	r3, r2
    293e:	781b      	ldrb	r3, [r3, #0]
    2940:	2b2f      	cmp	r3, #47	; 0x2f
    2942:	d001      	beq.n	2948 <str_to_date+0x5e>
    2944:	2300      	movs	r3, #0
    2946:	e068      	b.n	2a1a <str_to_date+0x130>
    2948:	68bb      	ldr	r3, [r7, #8]
    294a:	b29a      	uxth	r2, r3
    294c:	683b      	ldr	r3, [r7, #0]
    294e:	811a      	strh	r2, [r3, #8]
    2950:	68fb      	ldr	r3, [r7, #12]
    2952:	3301      	adds	r3, #1
    2954:	60fb      	str	r3, [r7, #12]
    2956:	2300      	movs	r3, #0
    2958:	60bb      	str	r3, [r7, #8]
    295a:	e00f      	b.n	297c <str_to_date+0x92>
    295c:	68ba      	ldr	r2, [r7, #8]
    295e:	4613      	mov	r3, r2
    2960:	009b      	lsls	r3, r3, #2
    2962:	4413      	add	r3, r2
    2964:	005b      	lsls	r3, r3, #1
    2966:	4619      	mov	r1, r3
    2968:	68fb      	ldr	r3, [r7, #12]
    296a:	1c5a      	adds	r2, r3, #1
    296c:	60fa      	str	r2, [r7, #12]
    296e:	461a      	mov	r2, r3
    2970:	687b      	ldr	r3, [r7, #4]
    2972:	4413      	add	r3, r2
    2974:	781b      	ldrb	r3, [r3, #0]
    2976:	440b      	add	r3, r1
    2978:	3b30      	subs	r3, #48	; 0x30
    297a:	60bb      	str	r3, [r7, #8]
    297c:	68fb      	ldr	r3, [r7, #12]
    297e:	687a      	ldr	r2, [r7, #4]
    2980:	4413      	add	r3, r2
    2982:	781b      	ldrb	r3, [r3, #0]
    2984:	4618      	mov	r0, r3
    2986:	f7fe fd84 	bl	1492 <digit>
    298a:	4603      	mov	r3, r0
    298c:	2b00      	cmp	r3, #0
    298e:	d1e5      	bne.n	295c <str_to_date+0x72>
    2990:	68fb      	ldr	r3, [r7, #12]
    2992:	2b06      	cmp	r3, #6
    2994:	dd05      	ble.n	29a2 <str_to_date+0xb8>
    2996:	68fb      	ldr	r3, [r7, #12]
    2998:	687a      	ldr	r2, [r7, #4]
    299a:	4413      	add	r3, r2
    299c:	781b      	ldrb	r3, [r3, #0]
    299e:	2b2f      	cmp	r3, #47	; 0x2f
    29a0:	d001      	beq.n	29a6 <str_to_date+0xbc>
    29a2:	2300      	movs	r3, #0
    29a4:	e039      	b.n	2a1a <str_to_date+0x130>
    29a6:	68bb      	ldr	r3, [r7, #8]
    29a8:	b2db      	uxtb	r3, r3
    29aa:	f003 030f 	and.w	r3, r3, #15
    29ae:	b2d9      	uxtb	r1, r3
    29b0:	683a      	ldr	r2, [r7, #0]
    29b2:	8853      	ldrh	r3, [r2, #2]
    29b4:	f361 1389 	bfi	r3, r1, #6, #4
    29b8:	8053      	strh	r3, [r2, #2]
    29ba:	2300      	movs	r3, #0
    29bc:	60bb      	str	r3, [r7, #8]
    29be:	68fb      	ldr	r3, [r7, #12]
    29c0:	3301      	adds	r3, #1
    29c2:	60fb      	str	r3, [r7, #12]
    29c4:	e00f      	b.n	29e6 <str_to_date+0xfc>
    29c6:	68ba      	ldr	r2, [r7, #8]
    29c8:	4613      	mov	r3, r2
    29ca:	009b      	lsls	r3, r3, #2
    29cc:	4413      	add	r3, r2
    29ce:	005b      	lsls	r3, r3, #1
    29d0:	4619      	mov	r1, r3
    29d2:	68fb      	ldr	r3, [r7, #12]
    29d4:	1c5a      	adds	r2, r3, #1
    29d6:	60fa      	str	r2, [r7, #12]
    29d8:	461a      	mov	r2, r3
    29da:	687b      	ldr	r3, [r7, #4]
    29dc:	4413      	add	r3, r2
    29de:	781b      	ldrb	r3, [r3, #0]
    29e0:	440b      	add	r3, r1
    29e2:	3b30      	subs	r3, #48	; 0x30
    29e4:	60bb      	str	r3, [r7, #8]
    29e6:	68fb      	ldr	r3, [r7, #12]
    29e8:	687a      	ldr	r2, [r7, #4]
    29ea:	4413      	add	r3, r2
    29ec:	781b      	ldrb	r3, [r3, #0]
    29ee:	4618      	mov	r0, r3
    29f0:	f7fe fd4f 	bl	1492 <digit>
    29f4:	4603      	mov	r3, r0
    29f6:	2b00      	cmp	r3, #0
    29f8:	d1e5      	bne.n	29c6 <str_to_date+0xdc>
    29fa:	68fb      	ldr	r3, [r7, #12]
    29fc:	2b09      	cmp	r3, #9
    29fe:	dc01      	bgt.n	2a04 <str_to_date+0x11a>
    2a00:	2300      	movs	r3, #0
    2a02:	e00a      	b.n	2a1a <str_to_date+0x130>
    2a04:	68bb      	ldr	r3, [r7, #8]
    2a06:	b2db      	uxtb	r3, r3
    2a08:	f003 031f 	and.w	r3, r3, #31
    2a0c:	b2d9      	uxtb	r1, r3
    2a0e:	683a      	ldr	r2, [r7, #0]
    2a10:	7893      	ldrb	r3, [r2, #2]
    2a12:	f361 0345 	bfi	r3, r1, #1, #5
    2a16:	7093      	strb	r3, [r2, #2]
    2a18:	2301      	movs	r3, #1
    2a1a:	4618      	mov	r0, r3
    2a1c:	3710      	adds	r7, #16
    2a1e:	46bd      	mov	sp, r7
    2a20:	bd80      	pop	{r7, pc}

00002a22 <str_to_time>:
    2a22:	b580      	push	{r7, lr}
    2a24:	b084      	sub	sp, #16
    2a26:	af00      	add	r7, sp, #0
    2a28:	6078      	str	r0, [r7, #4]
    2a2a:	6039      	str	r1, [r7, #0]
    2a2c:	2300      	movs	r3, #0
    2a2e:	60fb      	str	r3, [r7, #12]
    2a30:	2300      	movs	r3, #0
    2a32:	72fb      	strb	r3, [r7, #11]
    2a34:	e010      	b.n	2a58 <str_to_time+0x36>
    2a36:	7afb      	ldrb	r3, [r7, #11]
    2a38:	461a      	mov	r2, r3
    2a3a:	0092      	lsls	r2, r2, #2
    2a3c:	4413      	add	r3, r2
    2a3e:	005b      	lsls	r3, r3, #1
    2a40:	b2da      	uxtb	r2, r3
    2a42:	68fb      	ldr	r3, [r7, #12]
    2a44:	1c59      	adds	r1, r3, #1
    2a46:	60f9      	str	r1, [r7, #12]
    2a48:	4619      	mov	r1, r3
    2a4a:	687b      	ldr	r3, [r7, #4]
    2a4c:	440b      	add	r3, r1
    2a4e:	781b      	ldrb	r3, [r3, #0]
    2a50:	4413      	add	r3, r2
    2a52:	b2db      	uxtb	r3, r3
    2a54:	3b30      	subs	r3, #48	; 0x30
    2a56:	72fb      	strb	r3, [r7, #11]
    2a58:	68fb      	ldr	r3, [r7, #12]
    2a5a:	687a      	ldr	r2, [r7, #4]
    2a5c:	4413      	add	r3, r2
    2a5e:	781b      	ldrb	r3, [r3, #0]
    2a60:	4618      	mov	r0, r3
    2a62:	f7fe fd16 	bl	1492 <digit>
    2a66:	4603      	mov	r3, r0
    2a68:	2b00      	cmp	r3, #0
    2a6a:	d1e4      	bne.n	2a36 <str_to_time+0x14>
    2a6c:	7afb      	ldrb	r3, [r7, #11]
    2a6e:	2b17      	cmp	r3, #23
    2a70:	d805      	bhi.n	2a7e <str_to_time+0x5c>
    2a72:	68fb      	ldr	r3, [r7, #12]
    2a74:	687a      	ldr	r2, [r7, #4]
    2a76:	4413      	add	r3, r2
    2a78:	781b      	ldrb	r3, [r3, #0]
    2a7a:	2b3a      	cmp	r3, #58	; 0x3a
    2a7c:	d001      	beq.n	2a82 <str_to_time+0x60>
    2a7e:	2300      	movs	r3, #0
    2a80:	e06d      	b.n	2b5e <str_to_time+0x13c>
    2a82:	7afb      	ldrb	r3, [r7, #11]
    2a84:	f003 031f 	and.w	r3, r3, #31
    2a88:	b2d9      	uxtb	r1, r3
    2a8a:	683a      	ldr	r2, [r7, #0]
    2a8c:	6813      	ldr	r3, [r2, #0]
    2a8e:	f361 3310 	bfi	r3, r1, #12, #5
    2a92:	6013      	str	r3, [r2, #0]
    2a94:	68fb      	ldr	r3, [r7, #12]
    2a96:	3301      	adds	r3, #1
    2a98:	60fb      	str	r3, [r7, #12]
    2a9a:	2300      	movs	r3, #0
    2a9c:	72fb      	strb	r3, [r7, #11]
    2a9e:	e010      	b.n	2ac2 <str_to_time+0xa0>
    2aa0:	7afb      	ldrb	r3, [r7, #11]
    2aa2:	461a      	mov	r2, r3
    2aa4:	0092      	lsls	r2, r2, #2
    2aa6:	4413      	add	r3, r2
    2aa8:	005b      	lsls	r3, r3, #1
    2aaa:	b2da      	uxtb	r2, r3
    2aac:	68fb      	ldr	r3, [r7, #12]
    2aae:	1c59      	adds	r1, r3, #1
    2ab0:	60f9      	str	r1, [r7, #12]
    2ab2:	4619      	mov	r1, r3
    2ab4:	687b      	ldr	r3, [r7, #4]
    2ab6:	440b      	add	r3, r1
    2ab8:	781b      	ldrb	r3, [r3, #0]
    2aba:	4413      	add	r3, r2
    2abc:	b2db      	uxtb	r3, r3
    2abe:	3b30      	subs	r3, #48	; 0x30
    2ac0:	72fb      	strb	r3, [r7, #11]
    2ac2:	68fb      	ldr	r3, [r7, #12]
    2ac4:	687a      	ldr	r2, [r7, #4]
    2ac6:	4413      	add	r3, r2
    2ac8:	781b      	ldrb	r3, [r3, #0]
    2aca:	4618      	mov	r0, r3
    2acc:	f7fe fce1 	bl	1492 <digit>
    2ad0:	4603      	mov	r3, r0
    2ad2:	2b00      	cmp	r3, #0
    2ad4:	d1e4      	bne.n	2aa0 <str_to_time+0x7e>
    2ad6:	7afb      	ldrb	r3, [r7, #11]
    2ad8:	2b3b      	cmp	r3, #59	; 0x3b
    2ada:	d805      	bhi.n	2ae8 <str_to_time+0xc6>
    2adc:	68fb      	ldr	r3, [r7, #12]
    2ade:	687a      	ldr	r2, [r7, #4]
    2ae0:	4413      	add	r3, r2
    2ae2:	781b      	ldrb	r3, [r3, #0]
    2ae4:	2b3a      	cmp	r3, #58	; 0x3a
    2ae6:	d001      	beq.n	2aec <str_to_time+0xca>
    2ae8:	2300      	movs	r3, #0
    2aea:	e038      	b.n	2b5e <str_to_time+0x13c>
    2aec:	7afb      	ldrb	r3, [r7, #11]
    2aee:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2af2:	b2d9      	uxtb	r1, r3
    2af4:	683a      	ldr	r2, [r7, #0]
    2af6:	8813      	ldrh	r3, [r2, #0]
    2af8:	f361 138b 	bfi	r3, r1, #6, #6
    2afc:	8013      	strh	r3, [r2, #0]
    2afe:	2300      	movs	r3, #0
    2b00:	72fb      	strb	r3, [r7, #11]
    2b02:	68fb      	ldr	r3, [r7, #12]
    2b04:	3301      	adds	r3, #1
    2b06:	60fb      	str	r3, [r7, #12]
    2b08:	e010      	b.n	2b2c <str_to_time+0x10a>
    2b0a:	7afb      	ldrb	r3, [r7, #11]
    2b0c:	461a      	mov	r2, r3
    2b0e:	0092      	lsls	r2, r2, #2
    2b10:	4413      	add	r3, r2
    2b12:	005b      	lsls	r3, r3, #1
    2b14:	b2da      	uxtb	r2, r3
    2b16:	68fb      	ldr	r3, [r7, #12]
    2b18:	1c59      	adds	r1, r3, #1
    2b1a:	60f9      	str	r1, [r7, #12]
    2b1c:	4619      	mov	r1, r3
    2b1e:	687b      	ldr	r3, [r7, #4]
    2b20:	440b      	add	r3, r1
    2b22:	781b      	ldrb	r3, [r3, #0]
    2b24:	4413      	add	r3, r2
    2b26:	b2db      	uxtb	r3, r3
    2b28:	3b30      	subs	r3, #48	; 0x30
    2b2a:	72fb      	strb	r3, [r7, #11]
    2b2c:	68fb      	ldr	r3, [r7, #12]
    2b2e:	687a      	ldr	r2, [r7, #4]
    2b30:	4413      	add	r3, r2
    2b32:	781b      	ldrb	r3, [r3, #0]
    2b34:	4618      	mov	r0, r3
    2b36:	f7fe fcac 	bl	1492 <digit>
    2b3a:	4603      	mov	r3, r0
    2b3c:	2b00      	cmp	r3, #0
    2b3e:	d1e4      	bne.n	2b0a <str_to_time+0xe8>
    2b40:	7afb      	ldrb	r3, [r7, #11]
    2b42:	2b3b      	cmp	r3, #59	; 0x3b
    2b44:	d901      	bls.n	2b4a <str_to_time+0x128>
    2b46:	2300      	movs	r3, #0
    2b48:	e009      	b.n	2b5e <str_to_time+0x13c>
    2b4a:	7afb      	ldrb	r3, [r7, #11]
    2b4c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2b50:	b2d9      	uxtb	r1, r3
    2b52:	683a      	ldr	r2, [r7, #0]
    2b54:	7813      	ldrb	r3, [r2, #0]
    2b56:	f361 0305 	bfi	r3, r1, #0, #6
    2b5a:	7013      	strb	r3, [r2, #0]
    2b5c:	2301      	movs	r3, #1
    2b5e:	4618      	mov	r0, r3
    2b60:	3710      	adds	r7, #16
    2b62:	46bd      	mov	sp, r7
    2b64:	bd80      	pop	{r7, pc}

00002b66 <date_str>:
    2b66:	b480      	push	{r7}
    2b68:	b085      	sub	sp, #20
    2b6a:	af00      	add	r7, sp, #0
    2b6c:	6078      	str	r0, [r7, #4]
    2b6e:	6039      	str	r1, [r7, #0]
    2b70:	2300      	movs	r3, #0
    2b72:	60fb      	str	r3, [r7, #12]
    2b74:	687b      	ldr	r3, [r7, #4]
    2b76:	891b      	ldrh	r3, [r3, #8]
    2b78:	60bb      	str	r3, [r7, #8]
    2b7a:	68fb      	ldr	r3, [r7, #12]
    2b7c:	1c5a      	adds	r2, r3, #1
    2b7e:	60fa      	str	r2, [r7, #12]
    2b80:	461a      	mov	r2, r3
    2b82:	683b      	ldr	r3, [r7, #0]
    2b84:	4413      	add	r3, r2
    2b86:	68ba      	ldr	r2, [r7, #8]
    2b88:	495d      	ldr	r1, [pc, #372]	; (2d00 <date_str+0x19a>)
    2b8a:	fba1 1202 	umull	r1, r2, r1, r2
    2b8e:	0992      	lsrs	r2, r2, #6
    2b90:	b2d2      	uxtb	r2, r2
    2b92:	3230      	adds	r2, #48	; 0x30
    2b94:	b2d2      	uxtb	r2, r2
    2b96:	701a      	strb	r2, [r3, #0]
    2b98:	68bb      	ldr	r3, [r7, #8]
    2b9a:	4a59      	ldr	r2, [pc, #356]	; (2d00 <date_str+0x19a>)
    2b9c:	fba2 1203 	umull	r1, r2, r2, r3
    2ba0:	0992      	lsrs	r2, r2, #6
    2ba2:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    2ba6:	fb01 f202 	mul.w	r2, r1, r2
    2baa:	1a9b      	subs	r3, r3, r2
    2bac:	60bb      	str	r3, [r7, #8]
    2bae:	68fb      	ldr	r3, [r7, #12]
    2bb0:	1c5a      	adds	r2, r3, #1
    2bb2:	60fa      	str	r2, [r7, #12]
    2bb4:	461a      	mov	r2, r3
    2bb6:	683b      	ldr	r3, [r7, #0]
    2bb8:	4413      	add	r3, r2
    2bba:	68ba      	ldr	r2, [r7, #8]
    2bbc:	4951      	ldr	r1, [pc, #324]	; (2d04 <date_str+0x19e>)
    2bbe:	fba1 1202 	umull	r1, r2, r1, r2
    2bc2:	0952      	lsrs	r2, r2, #5
    2bc4:	b2d2      	uxtb	r2, r2
    2bc6:	3230      	adds	r2, #48	; 0x30
    2bc8:	b2d2      	uxtb	r2, r2
    2bca:	701a      	strb	r2, [r3, #0]
    2bcc:	68bb      	ldr	r3, [r7, #8]
    2bce:	4a4d      	ldr	r2, [pc, #308]	; (2d04 <date_str+0x19e>)
    2bd0:	fba2 1203 	umull	r1, r2, r2, r3
    2bd4:	0952      	lsrs	r2, r2, #5
    2bd6:	2164      	movs	r1, #100	; 0x64
    2bd8:	fb01 f202 	mul.w	r2, r1, r2
    2bdc:	1a9b      	subs	r3, r3, r2
    2bde:	60bb      	str	r3, [r7, #8]
    2be0:	68fb      	ldr	r3, [r7, #12]
    2be2:	1c5a      	adds	r2, r3, #1
    2be4:	60fa      	str	r2, [r7, #12]
    2be6:	461a      	mov	r2, r3
    2be8:	683b      	ldr	r3, [r7, #0]
    2bea:	4413      	add	r3, r2
    2bec:	68ba      	ldr	r2, [r7, #8]
    2bee:	4946      	ldr	r1, [pc, #280]	; (2d08 <date_str+0x1a2>)
    2bf0:	fba1 1202 	umull	r1, r2, r1, r2
    2bf4:	08d2      	lsrs	r2, r2, #3
    2bf6:	b2d2      	uxtb	r2, r2
    2bf8:	3230      	adds	r2, #48	; 0x30
    2bfa:	b2d2      	uxtb	r2, r2
    2bfc:	701a      	strb	r2, [r3, #0]
    2bfe:	68fb      	ldr	r3, [r7, #12]
    2c00:	1c5a      	adds	r2, r3, #1
    2c02:	60fa      	str	r2, [r7, #12]
    2c04:	461a      	mov	r2, r3
    2c06:	683b      	ldr	r3, [r7, #0]
    2c08:	1898      	adds	r0, r3, r2
    2c0a:	68b9      	ldr	r1, [r7, #8]
    2c0c:	4b3e      	ldr	r3, [pc, #248]	; (2d08 <date_str+0x1a2>)
    2c0e:	fba3 2301 	umull	r2, r3, r3, r1
    2c12:	08da      	lsrs	r2, r3, #3
    2c14:	4613      	mov	r3, r2
    2c16:	009b      	lsls	r3, r3, #2
    2c18:	4413      	add	r3, r2
    2c1a:	005b      	lsls	r3, r3, #1
    2c1c:	1aca      	subs	r2, r1, r3
    2c1e:	b2d3      	uxtb	r3, r2
    2c20:	3330      	adds	r3, #48	; 0x30
    2c22:	b2db      	uxtb	r3, r3
    2c24:	7003      	strb	r3, [r0, #0]
    2c26:	68fb      	ldr	r3, [r7, #12]
    2c28:	1c5a      	adds	r2, r3, #1
    2c2a:	60fa      	str	r2, [r7, #12]
    2c2c:	461a      	mov	r2, r3
    2c2e:	683b      	ldr	r3, [r7, #0]
    2c30:	4413      	add	r3, r2
    2c32:	222f      	movs	r2, #47	; 0x2f
    2c34:	701a      	strb	r2, [r3, #0]
    2c36:	687b      	ldr	r3, [r7, #4]
    2c38:	885b      	ldrh	r3, [r3, #2]
    2c3a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2c3e:	b2db      	uxtb	r3, r3
    2c40:	60bb      	str	r3, [r7, #8]
    2c42:	68fb      	ldr	r3, [r7, #12]
    2c44:	1c5a      	adds	r2, r3, #1
    2c46:	60fa      	str	r2, [r7, #12]
    2c48:	461a      	mov	r2, r3
    2c4a:	683b      	ldr	r3, [r7, #0]
    2c4c:	4413      	add	r3, r2
    2c4e:	68ba      	ldr	r2, [r7, #8]
    2c50:	492d      	ldr	r1, [pc, #180]	; (2d08 <date_str+0x1a2>)
    2c52:	fba1 1202 	umull	r1, r2, r1, r2
    2c56:	08d2      	lsrs	r2, r2, #3
    2c58:	b2d2      	uxtb	r2, r2
    2c5a:	3230      	adds	r2, #48	; 0x30
    2c5c:	b2d2      	uxtb	r2, r2
    2c5e:	701a      	strb	r2, [r3, #0]
    2c60:	68fb      	ldr	r3, [r7, #12]
    2c62:	1c5a      	adds	r2, r3, #1
    2c64:	60fa      	str	r2, [r7, #12]
    2c66:	461a      	mov	r2, r3
    2c68:	683b      	ldr	r3, [r7, #0]
    2c6a:	1898      	adds	r0, r3, r2
    2c6c:	68b9      	ldr	r1, [r7, #8]
    2c6e:	4b26      	ldr	r3, [pc, #152]	; (2d08 <date_str+0x1a2>)
    2c70:	fba3 2301 	umull	r2, r3, r3, r1
    2c74:	08da      	lsrs	r2, r3, #3
    2c76:	4613      	mov	r3, r2
    2c78:	009b      	lsls	r3, r3, #2
    2c7a:	4413      	add	r3, r2
    2c7c:	005b      	lsls	r3, r3, #1
    2c7e:	1aca      	subs	r2, r1, r3
    2c80:	b2d3      	uxtb	r3, r2
    2c82:	3330      	adds	r3, #48	; 0x30
    2c84:	b2db      	uxtb	r3, r3
    2c86:	7003      	strb	r3, [r0, #0]
    2c88:	68fb      	ldr	r3, [r7, #12]
    2c8a:	1c5a      	adds	r2, r3, #1
    2c8c:	60fa      	str	r2, [r7, #12]
    2c8e:	461a      	mov	r2, r3
    2c90:	683b      	ldr	r3, [r7, #0]
    2c92:	4413      	add	r3, r2
    2c94:	222f      	movs	r2, #47	; 0x2f
    2c96:	701a      	strb	r2, [r3, #0]
    2c98:	687b      	ldr	r3, [r7, #4]
    2c9a:	789b      	ldrb	r3, [r3, #2]
    2c9c:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2ca0:	b2db      	uxtb	r3, r3
    2ca2:	60bb      	str	r3, [r7, #8]
    2ca4:	68fb      	ldr	r3, [r7, #12]
    2ca6:	1c5a      	adds	r2, r3, #1
    2ca8:	60fa      	str	r2, [r7, #12]
    2caa:	461a      	mov	r2, r3
    2cac:	683b      	ldr	r3, [r7, #0]
    2cae:	4413      	add	r3, r2
    2cb0:	68ba      	ldr	r2, [r7, #8]
    2cb2:	4915      	ldr	r1, [pc, #84]	; (2d08 <date_str+0x1a2>)
    2cb4:	fba1 1202 	umull	r1, r2, r1, r2
    2cb8:	08d2      	lsrs	r2, r2, #3
    2cba:	b2d2      	uxtb	r2, r2
    2cbc:	3230      	adds	r2, #48	; 0x30
    2cbe:	b2d2      	uxtb	r2, r2
    2cc0:	701a      	strb	r2, [r3, #0]
    2cc2:	68fb      	ldr	r3, [r7, #12]
    2cc4:	1c5a      	adds	r2, r3, #1
    2cc6:	60fa      	str	r2, [r7, #12]
    2cc8:	461a      	mov	r2, r3
    2cca:	683b      	ldr	r3, [r7, #0]
    2ccc:	1898      	adds	r0, r3, r2
    2cce:	68b9      	ldr	r1, [r7, #8]
    2cd0:	4b0d      	ldr	r3, [pc, #52]	; (2d08 <date_str+0x1a2>)
    2cd2:	fba3 2301 	umull	r2, r3, r3, r1
    2cd6:	08da      	lsrs	r2, r3, #3
    2cd8:	4613      	mov	r3, r2
    2cda:	009b      	lsls	r3, r3, #2
    2cdc:	4413      	add	r3, r2
    2cde:	005b      	lsls	r3, r3, #1
    2ce0:	1aca      	subs	r2, r1, r3
    2ce2:	b2d3      	uxtb	r3, r2
    2ce4:	3330      	adds	r3, #48	; 0x30
    2ce6:	b2db      	uxtb	r3, r3
    2ce8:	7003      	strb	r3, [r0, #0]
    2cea:	68fb      	ldr	r3, [r7, #12]
    2cec:	683a      	ldr	r2, [r7, #0]
    2cee:	4413      	add	r3, r2
    2cf0:	2200      	movs	r2, #0
    2cf2:	701a      	strb	r2, [r3, #0]
    2cf4:	bf00      	nop
    2cf6:	3714      	adds	r7, #20
    2cf8:	46bd      	mov	sp, r7
    2cfa:	bc80      	pop	{r7}
    2cfc:	4770      	bx	lr
    2cfe:	bf00      	nop
    2d00:	10624dd3 	.word	0x10624dd3
    2d04:	51eb851f 	.word	0x51eb851f
    2d08:	cccccccd 	.word	0xcccccccd

00002d0c <time_str>:
    2d0c:	b480      	push	{r7}
    2d0e:	b085      	sub	sp, #20
    2d10:	af00      	add	r7, sp, #0
    2d12:	6078      	str	r0, [r7, #4]
    2d14:	6039      	str	r1, [r7, #0]
    2d16:	2300      	movs	r3, #0
    2d18:	60fb      	str	r3, [r7, #12]
    2d1a:	687b      	ldr	r3, [r7, #4]
    2d1c:	681b      	ldr	r3, [r3, #0]
    2d1e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2d22:	b2db      	uxtb	r3, r3
    2d24:	60bb      	str	r3, [r7, #8]
    2d26:	68fb      	ldr	r3, [r7, #12]
    2d28:	1c5a      	adds	r2, r3, #1
    2d2a:	60fa      	str	r2, [r7, #12]
    2d2c:	461a      	mov	r2, r3
    2d2e:	683b      	ldr	r3, [r7, #0]
    2d30:	4413      	add	r3, r2
    2d32:	68ba      	ldr	r2, [r7, #8]
    2d34:	4943      	ldr	r1, [pc, #268]	; (2e44 <time_str+0x138>)
    2d36:	fba1 1202 	umull	r1, r2, r1, r2
    2d3a:	08d2      	lsrs	r2, r2, #3
    2d3c:	b2d2      	uxtb	r2, r2
    2d3e:	3230      	adds	r2, #48	; 0x30
    2d40:	b2d2      	uxtb	r2, r2
    2d42:	701a      	strb	r2, [r3, #0]
    2d44:	68fb      	ldr	r3, [r7, #12]
    2d46:	1c5a      	adds	r2, r3, #1
    2d48:	60fa      	str	r2, [r7, #12]
    2d4a:	461a      	mov	r2, r3
    2d4c:	683b      	ldr	r3, [r7, #0]
    2d4e:	1898      	adds	r0, r3, r2
    2d50:	68b9      	ldr	r1, [r7, #8]
    2d52:	4b3c      	ldr	r3, [pc, #240]	; (2e44 <time_str+0x138>)
    2d54:	fba3 2301 	umull	r2, r3, r3, r1
    2d58:	08da      	lsrs	r2, r3, #3
    2d5a:	4613      	mov	r3, r2
    2d5c:	009b      	lsls	r3, r3, #2
    2d5e:	4413      	add	r3, r2
    2d60:	005b      	lsls	r3, r3, #1
    2d62:	1aca      	subs	r2, r1, r3
    2d64:	b2d3      	uxtb	r3, r2
    2d66:	3330      	adds	r3, #48	; 0x30
    2d68:	b2db      	uxtb	r3, r3
    2d6a:	7003      	strb	r3, [r0, #0]
    2d6c:	68fb      	ldr	r3, [r7, #12]
    2d6e:	1c5a      	adds	r2, r3, #1
    2d70:	60fa      	str	r2, [r7, #12]
    2d72:	461a      	mov	r2, r3
    2d74:	683b      	ldr	r3, [r7, #0]
    2d76:	4413      	add	r3, r2
    2d78:	223a      	movs	r2, #58	; 0x3a
    2d7a:	701a      	strb	r2, [r3, #0]
    2d7c:	687b      	ldr	r3, [r7, #4]
    2d7e:	881b      	ldrh	r3, [r3, #0]
    2d80:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2d84:	b2db      	uxtb	r3, r3
    2d86:	60bb      	str	r3, [r7, #8]
    2d88:	68fb      	ldr	r3, [r7, #12]
    2d8a:	1c5a      	adds	r2, r3, #1
    2d8c:	60fa      	str	r2, [r7, #12]
    2d8e:	461a      	mov	r2, r3
    2d90:	683b      	ldr	r3, [r7, #0]
    2d92:	4413      	add	r3, r2
    2d94:	68ba      	ldr	r2, [r7, #8]
    2d96:	492b      	ldr	r1, [pc, #172]	; (2e44 <time_str+0x138>)
    2d98:	fba1 1202 	umull	r1, r2, r1, r2
    2d9c:	08d2      	lsrs	r2, r2, #3
    2d9e:	b2d2      	uxtb	r2, r2
    2da0:	3230      	adds	r2, #48	; 0x30
    2da2:	b2d2      	uxtb	r2, r2
    2da4:	701a      	strb	r2, [r3, #0]
    2da6:	68fb      	ldr	r3, [r7, #12]
    2da8:	1c5a      	adds	r2, r3, #1
    2daa:	60fa      	str	r2, [r7, #12]
    2dac:	461a      	mov	r2, r3
    2dae:	683b      	ldr	r3, [r7, #0]
    2db0:	1898      	adds	r0, r3, r2
    2db2:	68b9      	ldr	r1, [r7, #8]
    2db4:	4b23      	ldr	r3, [pc, #140]	; (2e44 <time_str+0x138>)
    2db6:	fba3 2301 	umull	r2, r3, r3, r1
    2dba:	08da      	lsrs	r2, r3, #3
    2dbc:	4613      	mov	r3, r2
    2dbe:	009b      	lsls	r3, r3, #2
    2dc0:	4413      	add	r3, r2
    2dc2:	005b      	lsls	r3, r3, #1
    2dc4:	1aca      	subs	r2, r1, r3
    2dc6:	b2d3      	uxtb	r3, r2
    2dc8:	3330      	adds	r3, #48	; 0x30
    2dca:	b2db      	uxtb	r3, r3
    2dcc:	7003      	strb	r3, [r0, #0]
    2dce:	68fb      	ldr	r3, [r7, #12]
    2dd0:	1c5a      	adds	r2, r3, #1
    2dd2:	60fa      	str	r2, [r7, #12]
    2dd4:	461a      	mov	r2, r3
    2dd6:	683b      	ldr	r3, [r7, #0]
    2dd8:	4413      	add	r3, r2
    2dda:	223a      	movs	r2, #58	; 0x3a
    2ddc:	701a      	strb	r2, [r3, #0]
    2dde:	687b      	ldr	r3, [r7, #4]
    2de0:	781b      	ldrb	r3, [r3, #0]
    2de2:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2de6:	b2db      	uxtb	r3, r3
    2de8:	60bb      	str	r3, [r7, #8]
    2dea:	68fb      	ldr	r3, [r7, #12]
    2dec:	1c5a      	adds	r2, r3, #1
    2dee:	60fa      	str	r2, [r7, #12]
    2df0:	461a      	mov	r2, r3
    2df2:	683b      	ldr	r3, [r7, #0]
    2df4:	4413      	add	r3, r2
    2df6:	68ba      	ldr	r2, [r7, #8]
    2df8:	4912      	ldr	r1, [pc, #72]	; (2e44 <time_str+0x138>)
    2dfa:	fba1 1202 	umull	r1, r2, r1, r2
    2dfe:	08d2      	lsrs	r2, r2, #3
    2e00:	b2d2      	uxtb	r2, r2
    2e02:	3230      	adds	r2, #48	; 0x30
    2e04:	b2d2      	uxtb	r2, r2
    2e06:	701a      	strb	r2, [r3, #0]
    2e08:	68fb      	ldr	r3, [r7, #12]
    2e0a:	1c5a      	adds	r2, r3, #1
    2e0c:	60fa      	str	r2, [r7, #12]
    2e0e:	461a      	mov	r2, r3
    2e10:	683b      	ldr	r3, [r7, #0]
    2e12:	1898      	adds	r0, r3, r2
    2e14:	68b9      	ldr	r1, [r7, #8]
    2e16:	4b0b      	ldr	r3, [pc, #44]	; (2e44 <time_str+0x138>)
    2e18:	fba3 2301 	umull	r2, r3, r3, r1
    2e1c:	08da      	lsrs	r2, r3, #3
    2e1e:	4613      	mov	r3, r2
    2e20:	009b      	lsls	r3, r3, #2
    2e22:	4413      	add	r3, r2
    2e24:	005b      	lsls	r3, r3, #1
    2e26:	1aca      	subs	r2, r1, r3
    2e28:	b2d3      	uxtb	r3, r2
    2e2a:	3330      	adds	r3, #48	; 0x30
    2e2c:	b2db      	uxtb	r3, r3
    2e2e:	7003      	strb	r3, [r0, #0]
    2e30:	68fb      	ldr	r3, [r7, #12]
    2e32:	683a      	ldr	r2, [r7, #0]
    2e34:	4413      	add	r3, r2
    2e36:	2200      	movs	r2, #0
    2e38:	701a      	strb	r2, [r3, #0]
    2e3a:	bf00      	nop
    2e3c:	3714      	adds	r7, #20
    2e3e:	46bd      	mov	sp, r7
    2e40:	bc80      	pop	{r7}
    2e42:	4770      	bx	lr
    2e44:	cccccccd 	.word	0xcccccccd

00002e48 <get_fattime>:
    2e48:	b580      	push	{r7, lr}
    2e4a:	b084      	sub	sp, #16
    2e4c:	af00      	add	r7, sp, #0
    2e4e:	463b      	mov	r3, r7
    2e50:	4618      	mov	r0, r3
    2e52:	f7ff fa69 	bl	2328 <get_date_time>
    2e56:	783b      	ldrb	r3, [r7, #0]
    2e58:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2e5c:	b2db      	uxtb	r3, r3
    2e5e:	0fda      	lsrs	r2, r3, #31
    2e60:	4413      	add	r3, r2
    2e62:	105b      	asrs	r3, r3, #1
    2e64:	b2db      	uxtb	r3, r3
    2e66:	f003 031f 	and.w	r3, r3, #31
    2e6a:	b2da      	uxtb	r2, r3
    2e6c:	7b3b      	ldrb	r3, [r7, #12]
    2e6e:	f362 0304 	bfi	r3, r2, #0, #5
    2e72:	733b      	strb	r3, [r7, #12]
    2e74:	883b      	ldrh	r3, [r7, #0]
    2e76:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2e7a:	b2da      	uxtb	r2, r3
    2e7c:	89bb      	ldrh	r3, [r7, #12]
    2e7e:	f362 134a 	bfi	r3, r2, #5, #6
    2e82:	81bb      	strh	r3, [r7, #12]
    2e84:	683b      	ldr	r3, [r7, #0]
    2e86:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2e8a:	b2da      	uxtb	r2, r3
    2e8c:	7b7b      	ldrb	r3, [r7, #13]
    2e8e:	f362 03c7 	bfi	r3, r2, #3, #5
    2e92:	737b      	strb	r3, [r7, #13]
    2e94:	78bb      	ldrb	r3, [r7, #2]
    2e96:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2e9a:	b2da      	uxtb	r2, r3
    2e9c:	7bbb      	ldrb	r3, [r7, #14]
    2e9e:	f362 0304 	bfi	r3, r2, #0, #5
    2ea2:	73bb      	strb	r3, [r7, #14]
    2ea4:	887b      	ldrh	r3, [r7, #2]
    2ea6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2eaa:	b2da      	uxtb	r2, r3
    2eac:	89fb      	ldrh	r3, [r7, #14]
    2eae:	f362 1348 	bfi	r3, r2, #5, #4
    2eb2:	81fb      	strh	r3, [r7, #14]
    2eb4:	893b      	ldrh	r3, [r7, #8]
    2eb6:	b2db      	uxtb	r3, r3
    2eb8:	3344      	adds	r3, #68	; 0x44
    2eba:	b2db      	uxtb	r3, r3
    2ebc:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2ec0:	b2da      	uxtb	r2, r3
    2ec2:	7bfb      	ldrb	r3, [r7, #15]
    2ec4:	f362 0347 	bfi	r3, r2, #1, #7
    2ec8:	73fb      	strb	r3, [r7, #15]
    2eca:	68fb      	ldr	r3, [r7, #12]
    2ecc:	4618      	mov	r0, r3
    2ece:	3710      	adds	r7, #16
    2ed0:	46bd      	mov	sp, r7
    2ed2:	bd80      	pop	{r7, pc}

00002ed4 <RTC_handler>:
    2ed4:	b480      	push	{r7}
    2ed6:	b083      	sub	sp, #12
    2ed8:	af00      	add	r7, sp, #0
    2eda:	4b0a      	ldr	r3, [pc, #40]	; (2f04 <RTC_handler+0x30>)
    2edc:	685b      	ldr	r3, [r3, #4]
    2ede:	f003 0301 	and.w	r3, r3, #1
    2ee2:	2b00      	cmp	r3, #0
    2ee4:	d001      	beq.n	2eea <RTC_handler+0x16>
    2ee6:	4b07      	ldr	r3, [pc, #28]	; (2f04 <RTC_handler+0x30>)
    2ee8:	685b      	ldr	r3, [r3, #4]
    2eea:	4b06      	ldr	r3, [pc, #24]	; (2f04 <RTC_handler+0x30>)
    2eec:	685b      	ldr	r3, [r3, #4]
    2eee:	f003 0302 	and.w	r3, r3, #2
    2ef2:	2b00      	cmp	r3, #0
    2ef4:	d001      	beq.n	2efa <RTC_handler+0x26>
    2ef6:	4b03      	ldr	r3, [pc, #12]	; (2f04 <RTC_handler+0x30>)
    2ef8:	685b      	ldr	r3, [r3, #4]
    2efa:	bf00      	nop
    2efc:	370c      	adds	r7, #12
    2efe:	46bd      	mov	sp, r7
    2f00:	bc80      	pop	{r7}
    2f02:	4770      	bx	lr
    2f04:	40002800 	.word	0x40002800

00002f08 <spi_baudrate>:
    2f08:	b480      	push	{r7}
    2f0a:	b083      	sub	sp, #12
    2f0c:	af00      	add	r7, sp, #0
    2f0e:	6078      	str	r0, [r7, #4]
    2f10:	6039      	str	r1, [r7, #0]
    2f12:	687b      	ldr	r3, [r7, #4]
    2f14:	681b      	ldr	r3, [r3, #0]
    2f16:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    2f1a:	687b      	ldr	r3, [r7, #4]
    2f1c:	601a      	str	r2, [r3, #0]
    2f1e:	687b      	ldr	r3, [r7, #4]
    2f20:	681a      	ldr	r2, [r3, #0]
    2f22:	683b      	ldr	r3, [r7, #0]
    2f24:	00db      	lsls	r3, r3, #3
    2f26:	431a      	orrs	r2, r3
    2f28:	687b      	ldr	r3, [r7, #4]
    2f2a:	601a      	str	r2, [r3, #0]
    2f2c:	bf00      	nop
    2f2e:	370c      	adds	r7, #12
    2f30:	46bd      	mov	sp, r7
    2f32:	bc80      	pop	{r7}
    2f34:	4770      	bx	lr

00002f36 <spi_config_port>:
    2f36:	b580      	push	{r7, lr}
    2f38:	b082      	sub	sp, #8
    2f3a:	af00      	add	r7, sp, #0
    2f3c:	6078      	str	r0, [r7, #4]
    2f3e:	6039      	str	r1, [r7, #0]
    2f40:	4a33      	ldr	r2, [pc, #204]	; (3010 <spi_config_port+0xda>)
    2f42:	4b33      	ldr	r3, [pc, #204]	; (3010 <spi_config_port+0xda>)
    2f44:	699b      	ldr	r3, [r3, #24]
    2f46:	f043 0301 	orr.w	r3, r3, #1
    2f4a:	6193      	str	r3, [r2, #24]
    2f4c:	687b      	ldr	r3, [r7, #4]
    2f4e:	4a31      	ldr	r2, [pc, #196]	; (3014 <spi_config_port+0xde>)
    2f50:	4293      	cmp	r3, r2
    2f52:	d13e      	bne.n	2fd2 <spi_config_port+0x9c>
    2f54:	683b      	ldr	r3, [r7, #0]
    2f56:	2b00      	cmp	r3, #0
    2f58:	d11a      	bne.n	2f90 <spi_config_port+0x5a>
    2f5a:	4a2d      	ldr	r2, [pc, #180]	; (3010 <spi_config_port+0xda>)
    2f5c:	4b2c      	ldr	r3, [pc, #176]	; (3010 <spi_config_port+0xda>)
    2f5e:	699b      	ldr	r3, [r3, #24]
    2f60:	f043 0304 	orr.w	r3, r3, #4
    2f64:	6193      	str	r3, [r2, #24]
    2f66:	2203      	movs	r2, #3
    2f68:	2104      	movs	r1, #4
    2f6a:	482b      	ldr	r0, [pc, #172]	; (3018 <spi_config_port+0xe2>)
    2f6c:	f7fe fc99 	bl	18a2 <config_pin>
    2f70:	220b      	movs	r2, #11
    2f72:	2105      	movs	r1, #5
    2f74:	4828      	ldr	r0, [pc, #160]	; (3018 <spi_config_port+0xe2>)
    2f76:	f7fe fc94 	bl	18a2 <config_pin>
    2f7a:	2204      	movs	r2, #4
    2f7c:	2106      	movs	r1, #6
    2f7e:	4826      	ldr	r0, [pc, #152]	; (3018 <spi_config_port+0xe2>)
    2f80:	f7fe fc8f 	bl	18a2 <config_pin>
    2f84:	220b      	movs	r2, #11
    2f86:	2107      	movs	r1, #7
    2f88:	4823      	ldr	r0, [pc, #140]	; (3018 <spi_config_port+0xe2>)
    2f8a:	f7fe fc8a 	bl	18a2 <config_pin>
    2f8e:	e03a      	b.n	3006 <spi_config_port+0xd0>
    2f90:	4a1f      	ldr	r2, [pc, #124]	; (3010 <spi_config_port+0xda>)
    2f92:	4b1f      	ldr	r3, [pc, #124]	; (3010 <spi_config_port+0xda>)
    2f94:	699b      	ldr	r3, [r3, #24]
    2f96:	f043 030d 	orr.w	r3, r3, #13
    2f9a:	6193      	str	r3, [r2, #24]
    2f9c:	4a1f      	ldr	r2, [pc, #124]	; (301c <spi_config_port+0xe6>)
    2f9e:	4b1f      	ldr	r3, [pc, #124]	; (301c <spi_config_port+0xe6>)
    2fa0:	685b      	ldr	r3, [r3, #4]
    2fa2:	f043 0301 	orr.w	r3, r3, #1
    2fa6:	6053      	str	r3, [r2, #4]
    2fa8:	2203      	movs	r2, #3
    2faa:	210f      	movs	r1, #15
    2fac:	481a      	ldr	r0, [pc, #104]	; (3018 <spi_config_port+0xe2>)
    2fae:	f7fe fc78 	bl	18a2 <config_pin>
    2fb2:	220b      	movs	r2, #11
    2fb4:	2103      	movs	r1, #3
    2fb6:	481a      	ldr	r0, [pc, #104]	; (3020 <spi_config_port+0xea>)
    2fb8:	f7fe fc73 	bl	18a2 <config_pin>
    2fbc:	2204      	movs	r2, #4
    2fbe:	2104      	movs	r1, #4
    2fc0:	4817      	ldr	r0, [pc, #92]	; (3020 <spi_config_port+0xea>)
    2fc2:	f7fe fc6e 	bl	18a2 <config_pin>
    2fc6:	220b      	movs	r2, #11
    2fc8:	2105      	movs	r1, #5
    2fca:	4815      	ldr	r0, [pc, #84]	; (3020 <spi_config_port+0xea>)
    2fcc:	f7fe fc69 	bl	18a2 <config_pin>
    2fd0:	e019      	b.n	3006 <spi_config_port+0xd0>
    2fd2:	4a0f      	ldr	r2, [pc, #60]	; (3010 <spi_config_port+0xda>)
    2fd4:	4b0e      	ldr	r3, [pc, #56]	; (3010 <spi_config_port+0xda>)
    2fd6:	699b      	ldr	r3, [r3, #24]
    2fd8:	f043 0308 	orr.w	r3, r3, #8
    2fdc:	6193      	str	r3, [r2, #24]
    2fde:	2203      	movs	r2, #3
    2fe0:	2102      	movs	r1, #2
    2fe2:	480f      	ldr	r0, [pc, #60]	; (3020 <spi_config_port+0xea>)
    2fe4:	f7fe fc5d 	bl	18a2 <config_pin>
    2fe8:	220b      	movs	r2, #11
    2fea:	210d      	movs	r1, #13
    2fec:	480c      	ldr	r0, [pc, #48]	; (3020 <spi_config_port+0xea>)
    2fee:	f7fe fc58 	bl	18a2 <config_pin>
    2ff2:	2204      	movs	r2, #4
    2ff4:	210e      	movs	r1, #14
    2ff6:	480a      	ldr	r0, [pc, #40]	; (3020 <spi_config_port+0xea>)
    2ff8:	f7fe fc53 	bl	18a2 <config_pin>
    2ffc:	220b      	movs	r2, #11
    2ffe:	210f      	movs	r1, #15
    3000:	4807      	ldr	r0, [pc, #28]	; (3020 <spi_config_port+0xea>)
    3002:	f7fe fc4e 	bl	18a2 <config_pin>
    3006:	bf00      	nop
    3008:	3708      	adds	r7, #8
    300a:	46bd      	mov	sp, r7
    300c:	bd80      	pop	{r7, pc}
    300e:	bf00      	nop
    3010:	40021000 	.word	0x40021000
    3014:	40013000 	.word	0x40013000
    3018:	40010800 	.word	0x40010800
    301c:	40010000 	.word	0x40010000
    3020:	40010c00 	.word	0x40010c00

00003024 <spi_init>:
    3024:	b580      	push	{r7, lr}
    3026:	b084      	sub	sp, #16
    3028:	af00      	add	r7, sp, #0
    302a:	60f8      	str	r0, [r7, #12]
    302c:	60b9      	str	r1, [r7, #8]
    302e:	607a      	str	r2, [r7, #4]
    3030:	603b      	str	r3, [r7, #0]
    3032:	6839      	ldr	r1, [r7, #0]
    3034:	68f8      	ldr	r0, [r7, #12]
    3036:	f7ff ff7e 	bl	2f36 <spi_config_port>
    303a:	68fb      	ldr	r3, [r7, #12]
    303c:	4a10      	ldr	r2, [pc, #64]	; (3080 <spi_init+0x5c>)
    303e:	4293      	cmp	r3, r2
    3040:	d106      	bne.n	3050 <spi_init+0x2c>
    3042:	4a10      	ldr	r2, [pc, #64]	; (3084 <spi_init+0x60>)
    3044:	4b0f      	ldr	r3, [pc, #60]	; (3084 <spi_init+0x60>)
    3046:	699b      	ldr	r3, [r3, #24]
    3048:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    304c:	6193      	str	r3, [r2, #24]
    304e:	e005      	b.n	305c <spi_init+0x38>
    3050:	4a0c      	ldr	r2, [pc, #48]	; (3084 <spi_init+0x60>)
    3052:	4b0c      	ldr	r3, [pc, #48]	; (3084 <spi_init+0x60>)
    3054:	69db      	ldr	r3, [r3, #28]
    3056:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    305a:	61d3      	str	r3, [r2, #28]
    305c:	68fb      	ldr	r3, [r7, #12]
    305e:	687a      	ldr	r2, [r7, #4]
    3060:	601a      	str	r2, [r3, #0]
    3062:	68b9      	ldr	r1, [r7, #8]
    3064:	68f8      	ldr	r0, [r7, #12]
    3066:	f7ff ff4f 	bl	2f08 <spi_baudrate>
    306a:	68fb      	ldr	r3, [r7, #12]
    306c:	681b      	ldr	r3, [r3, #0]
    306e:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    3072:	68fb      	ldr	r3, [r7, #12]
    3074:	601a      	str	r2, [r3, #0]
    3076:	bf00      	nop
    3078:	3710      	adds	r7, #16
    307a:	46bd      	mov	sp, r7
    307c:	bd80      	pop	{r7, pc}
    307e:	bf00      	nop
    3080:	40013000 	.word	0x40013000
    3084:	40021000 	.word	0x40021000

00003088 <spi_send>:
    3088:	b480      	push	{r7}
    308a:	b085      	sub	sp, #20
    308c:	af00      	add	r7, sp, #0
    308e:	6078      	str	r0, [r7, #4]
    3090:	460b      	mov	r3, r1
    3092:	70fb      	strb	r3, [r7, #3]
    3094:	bf00      	nop
    3096:	687b      	ldr	r3, [r7, #4]
    3098:	689b      	ldr	r3, [r3, #8]
    309a:	f003 0302 	and.w	r3, r3, #2
    309e:	2b00      	cmp	r3, #0
    30a0:	d0f9      	beq.n	3096 <spi_send+0xe>
    30a2:	78fa      	ldrb	r2, [r7, #3]
    30a4:	687b      	ldr	r3, [r7, #4]
    30a6:	60da      	str	r2, [r3, #12]
    30a8:	bf00      	nop
    30aa:	687b      	ldr	r3, [r7, #4]
    30ac:	689b      	ldr	r3, [r3, #8]
    30ae:	f003 0301 	and.w	r3, r3, #1
    30b2:	2b00      	cmp	r3, #0
    30b4:	d0f9      	beq.n	30aa <spi_send+0x22>
    30b6:	687b      	ldr	r3, [r7, #4]
    30b8:	68db      	ldr	r3, [r3, #12]
    30ba:	73fb      	strb	r3, [r7, #15]
    30bc:	bf00      	nop
    30be:	3714      	adds	r7, #20
    30c0:	46bd      	mov	sp, r7
    30c2:	bc80      	pop	{r7}
    30c4:	4770      	bx	lr

000030c6 <spi_receive>:
    30c6:	b480      	push	{r7}
    30c8:	b085      	sub	sp, #20
    30ca:	af00      	add	r7, sp, #0
    30cc:	6078      	str	r0, [r7, #4]
    30ce:	bf00      	nop
    30d0:	687b      	ldr	r3, [r7, #4]
    30d2:	689b      	ldr	r3, [r3, #8]
    30d4:	f003 0302 	and.w	r3, r3, #2
    30d8:	2b00      	cmp	r3, #0
    30da:	d0f9      	beq.n	30d0 <spi_receive+0xa>
    30dc:	687b      	ldr	r3, [r7, #4]
    30de:	22ff      	movs	r2, #255	; 0xff
    30e0:	60da      	str	r2, [r3, #12]
    30e2:	bf00      	nop
    30e4:	687b      	ldr	r3, [r7, #4]
    30e6:	689b      	ldr	r3, [r3, #8]
    30e8:	f003 0301 	and.w	r3, r3, #1
    30ec:	2b00      	cmp	r3, #0
    30ee:	d0f9      	beq.n	30e4 <spi_receive+0x1e>
    30f0:	687b      	ldr	r3, [r7, #4]
    30f2:	68db      	ldr	r3, [r3, #12]
    30f4:	73fb      	strb	r3, [r7, #15]
    30f6:	7bfb      	ldrb	r3, [r7, #15]
    30f8:	4618      	mov	r0, r3
    30fa:	3714      	adds	r7, #20
    30fc:	46bd      	mov	sp, r7
    30fe:	bc80      	pop	{r7}
    3100:	4770      	bx	lr

00003102 <spi_send_block>:
    3102:	b480      	push	{r7}
    3104:	b087      	sub	sp, #28
    3106:	af00      	add	r7, sp, #0
    3108:	60f8      	str	r0, [r7, #12]
    310a:	60b9      	str	r1, [r7, #8]
    310c:	607a      	str	r2, [r7, #4]
    310e:	e010      	b.n	3132 <spi_send_block+0x30>
    3110:	68bb      	ldr	r3, [r7, #8]
    3112:	1c5a      	adds	r2, r3, #1
    3114:	60ba      	str	r2, [r7, #8]
    3116:	781b      	ldrb	r3, [r3, #0]
    3118:	461a      	mov	r2, r3
    311a:	68fb      	ldr	r3, [r7, #12]
    311c:	60da      	str	r2, [r3, #12]
    311e:	bf00      	nop
    3120:	68fb      	ldr	r3, [r7, #12]
    3122:	689b      	ldr	r3, [r3, #8]
    3124:	f003 0302 	and.w	r3, r3, #2
    3128:	2b00      	cmp	r3, #0
    312a:	d0f9      	beq.n	3120 <spi_send_block+0x1e>
    312c:	687b      	ldr	r3, [r7, #4]
    312e:	3b01      	subs	r3, #1
    3130:	607b      	str	r3, [r7, #4]
    3132:	687b      	ldr	r3, [r7, #4]
    3134:	2b00      	cmp	r3, #0
    3136:	d1eb      	bne.n	3110 <spi_send_block+0xe>
    3138:	bf00      	nop
    313a:	68fb      	ldr	r3, [r7, #12]
    313c:	689b      	ldr	r3, [r3, #8]
    313e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    3142:	2b00      	cmp	r3, #0
    3144:	d1f9      	bne.n	313a <spi_send_block+0x38>
    3146:	68fb      	ldr	r3, [r7, #12]
    3148:	68db      	ldr	r3, [r3, #12]
    314a:	75fb      	strb	r3, [r7, #23]
    314c:	bf00      	nop
    314e:	371c      	adds	r7, #28
    3150:	46bd      	mov	sp, r7
    3152:	bc80      	pop	{r7}
    3154:	4770      	bx	lr

00003156 <spi_receive_block>:
    3156:	b480      	push	{r7}
    3158:	b085      	sub	sp, #20
    315a:	af00      	add	r7, sp, #0
    315c:	60f8      	str	r0, [r7, #12]
    315e:	60b9      	str	r1, [r7, #8]
    3160:	607a      	str	r2, [r7, #4]
    3162:	e013      	b.n	318c <spi_receive_block+0x36>
    3164:	68fb      	ldr	r3, [r7, #12]
    3166:	2200      	movs	r2, #0
    3168:	60da      	str	r2, [r3, #12]
    316a:	bf00      	nop
    316c:	68fb      	ldr	r3, [r7, #12]
    316e:	689b      	ldr	r3, [r3, #8]
    3170:	f003 0301 	and.w	r3, r3, #1
    3174:	2b00      	cmp	r3, #0
    3176:	d0f9      	beq.n	316c <spi_receive_block+0x16>
    3178:	68bb      	ldr	r3, [r7, #8]
    317a:	1c5a      	adds	r2, r3, #1
    317c:	60ba      	str	r2, [r7, #8]
    317e:	68fa      	ldr	r2, [r7, #12]
    3180:	68d2      	ldr	r2, [r2, #12]
    3182:	b2d2      	uxtb	r2, r2
    3184:	701a      	strb	r2, [r3, #0]
    3186:	687b      	ldr	r3, [r7, #4]
    3188:	3b01      	subs	r3, #1
    318a:	607b      	str	r3, [r7, #4]
    318c:	687b      	ldr	r3, [r7, #4]
    318e:	2b00      	cmp	r3, #0
    3190:	d1e8      	bne.n	3164 <spi_receive_block+0xe>
    3192:	bf00      	nop
    3194:	3714      	adds	r7, #20
    3196:	46bd      	mov	sp, r7
    3198:	bc80      	pop	{r7}
    319a:	4770      	bx	lr

0000319c <reset_mcu>:
    319c:	4b01      	ldr	r3, [pc, #4]	; (31a4 <reset_mcu+0x8>)
    319e:	4a02      	ldr	r2, [pc, #8]	; (31a8 <reset_mcu+0xc>)
    31a0:	601a      	str	r2, [r3, #0]
    31a2:	bf00      	nop
    31a4:	e000ed0c 	.word	0xe000ed0c
    31a8:	05fa0004 	.word	0x05fa0004

000031ac <print_fault>:
    31ac:	b580      	push	{r7, lr}
    31ae:	b082      	sub	sp, #8
    31b0:	af00      	add	r7, sp, #0
    31b2:	6078      	str	r0, [r7, #4]
    31b4:	6039      	str	r1, [r7, #0]
    31b6:	6878      	ldr	r0, [r7, #4]
    31b8:	f000 f9ea 	bl	3590 <print>
    31bc:	4818      	ldr	r0, [pc, #96]	; (3220 <print_fault+0x74>)
    31be:	f000 f9e7 	bl	3590 <print>
    31c2:	683b      	ldr	r3, [r7, #0]
    31c4:	2b00      	cmp	r3, #0
    31c6:	d004      	beq.n	31d2 <print_fault+0x26>
    31c8:	683b      	ldr	r3, [r7, #0]
    31ca:	2110      	movs	r1, #16
    31cc:	4618      	mov	r0, r3
    31ce:	f000 fa02 	bl	35d6 <print_int>
    31d2:	200d      	movs	r0, #13
    31d4:	f000 f924 	bl	3420 <put_char>
    31d8:	4812      	ldr	r0, [pc, #72]	; (3224 <print_fault+0x78>)
    31da:	f000 f9d9 	bl	3590 <print>
    31de:	4b12      	ldr	r3, [pc, #72]	; (3228 <print_fault+0x7c>)
    31e0:	681b      	ldr	r3, [r3, #0]
    31e2:	f3c3 430f 	ubfx	r3, r3, #16, #16
    31e6:	b29b      	uxth	r3, r3
    31e8:	2110      	movs	r1, #16
    31ea:	4618      	mov	r0, r3
    31ec:	f000 f9f3 	bl	35d6 <print_int>
    31f0:	480e      	ldr	r0, [pc, #56]	; (322c <print_fault+0x80>)
    31f2:	f000 f9cd 	bl	3590 <print>
    31f6:	4b0c      	ldr	r3, [pc, #48]	; (3228 <print_fault+0x7c>)
    31f8:	681b      	ldr	r3, [r3, #0]
    31fa:	f3c3 2307 	ubfx	r3, r3, #8, #8
    31fe:	b2db      	uxtb	r3, r3
    3200:	2110      	movs	r1, #16
    3202:	4618      	mov	r0, r3
    3204:	f000 f9e7 	bl	35d6 <print_int>
    3208:	4809      	ldr	r0, [pc, #36]	; (3230 <print_fault+0x84>)
    320a:	f000 f9c1 	bl	3590 <print>
    320e:	4b06      	ldr	r3, [pc, #24]	; (3228 <print_fault+0x7c>)
    3210:	681b      	ldr	r3, [r3, #0]
    3212:	b2db      	uxtb	r3, r3
    3214:	2110      	movs	r1, #16
    3216:	4618      	mov	r0, r3
    3218:	f000 f9dd 	bl	35d6 <print_int>
    321c:	e7fe      	b.n	321c <print_fault+0x70>
    321e:	bf00      	nop
    3220:	00004280 	.word	0x00004280
    3224:	00004290 	.word	0x00004290
    3228:	e000ed28 	.word	0xe000ed28
    322c:	00004298 	.word	0x00004298
    3230:	000042a0 	.word	0x000042a0

00003234 <config_systicks>:
    3234:	b580      	push	{r7, lr}
    3236:	af00      	add	r7, sp, #0
    3238:	2109      	movs	r1, #9
    323a:	f06f 000e 	mvn.w	r0, #14
    323e:	f7fe fff3 	bl	2228 <set_int_priority>
    3242:	4b04      	ldr	r3, [pc, #16]	; (3254 <config_systicks+0x20>)
    3244:	f242 22f3 	movw	r2, #8947	; 0x22f3
    3248:	601a      	str	r2, [r3, #0]
    324a:	4b03      	ldr	r3, [pc, #12]	; (3258 <config_systicks+0x24>)
    324c:	2203      	movs	r2, #3
    324e:	601a      	str	r2, [r3, #0]
    3250:	bf00      	nop
    3252:	bd80      	pop	{r7, pc}
    3254:	e000e014 	.word	0xe000e014
    3258:	e000e010 	.word	0xe000e010

0000325c <pause>:
    325c:	b480      	push	{r7}
    325e:	b083      	sub	sp, #12
    3260:	af00      	add	r7, sp, #0
    3262:	6078      	str	r0, [r7, #4]
    3264:	4a06      	ldr	r2, [pc, #24]	; (3280 <pause+0x24>)
    3266:	687b      	ldr	r3, [r7, #4]
    3268:	6013      	str	r3, [r2, #0]
    326a:	bf00      	nop
    326c:	4b04      	ldr	r3, [pc, #16]	; (3280 <pause+0x24>)
    326e:	681b      	ldr	r3, [r3, #0]
    3270:	2b00      	cmp	r3, #0
    3272:	d1fb      	bne.n	326c <pause+0x10>
    3274:	bf00      	nop
    3276:	370c      	adds	r7, #12
    3278:	46bd      	mov	sp, r7
    327a:	bc80      	pop	{r7}
    327c:	4770      	bx	lr
    327e:	bf00      	nop
    3280:	200004ec 	.word	0x200004ec

00003284 <STK_handler>:
    3284:	b480      	push	{r7}
    3286:	af00      	add	r7, sp, #0
    3288:	4b08      	ldr	r3, [pc, #32]	; (32ac <STK_handler+0x28>)
    328a:	681b      	ldr	r3, [r3, #0]
    328c:	3301      	adds	r3, #1
    328e:	4a07      	ldr	r2, [pc, #28]	; (32ac <STK_handler+0x28>)
    3290:	6013      	str	r3, [r2, #0]
    3292:	4b07      	ldr	r3, [pc, #28]	; (32b0 <STK_handler+0x2c>)
    3294:	681b      	ldr	r3, [r3, #0]
    3296:	2b00      	cmp	r3, #0
    3298:	d004      	beq.n	32a4 <STK_handler+0x20>
    329a:	4b05      	ldr	r3, [pc, #20]	; (32b0 <STK_handler+0x2c>)
    329c:	681b      	ldr	r3, [r3, #0]
    329e:	3b01      	subs	r3, #1
    32a0:	4a03      	ldr	r2, [pc, #12]	; (32b0 <STK_handler+0x2c>)
    32a2:	6013      	str	r3, [r2, #0]
    32a4:	bf00      	nop
    32a6:	46bd      	mov	sp, r7
    32a8:	bc80      	pop	{r7}
    32aa:	4770      	bx	lr
    32ac:	200004e8 	.word	0x200004e8
    32b0:	200004ec 	.word	0x200004ec

000032b4 <font_color>:
    32b4:	b480      	push	{r7}
    32b6:	b083      	sub	sp, #12
    32b8:	af00      	add	r7, sp, #0
    32ba:	4603      	mov	r3, r0
    32bc:	71fb      	strb	r3, [r7, #7]
    32be:	79fb      	ldrb	r3, [r7, #7]
    32c0:	f003 030f 	and.w	r3, r3, #15
    32c4:	b2da      	uxtb	r2, r3
    32c6:	4b03      	ldr	r3, [pc, #12]	; (32d4 <font_color+0x20>)
    32c8:	705a      	strb	r2, [r3, #1]
    32ca:	bf00      	nop
    32cc:	370c      	adds	r7, #12
    32ce:	46bd      	mov	sp, r7
    32d0:	bc80      	pop	{r7}
    32d2:	4770      	bx	lr
    32d4:	20000058 	.word	0x20000058

000032d8 <bg_color>:
    32d8:	b480      	push	{r7}
    32da:	b083      	sub	sp, #12
    32dc:	af00      	add	r7, sp, #0
    32de:	4603      	mov	r3, r0
    32e0:	71fb      	strb	r3, [r7, #7]
    32e2:	79fb      	ldrb	r3, [r7, #7]
    32e4:	f003 030f 	and.w	r3, r3, #15
    32e8:	b2da      	uxtb	r2, r3
    32ea:	4b03      	ldr	r3, [pc, #12]	; (32f8 <bg_color+0x20>)
    32ec:	701a      	strb	r2, [r3, #0]
    32ee:	bf00      	nop
    32f0:	370c      	adds	r7, #12
    32f2:	46bd      	mov	sp, r7
    32f4:	bc80      	pop	{r7}
    32f6:	4770      	bx	lr
    32f8:	20000058 	.word	0x20000058

000032fc <select_font>:
    32fc:	b480      	push	{r7}
    32fe:	b083      	sub	sp, #12
    3300:	af00      	add	r7, sp, #0
    3302:	4603      	mov	r3, r0
    3304:	71fb      	strb	r3, [r7, #7]
    3306:	4a04      	ldr	r2, [pc, #16]	; (3318 <select_font+0x1c>)
    3308:	79fb      	ldrb	r3, [r7, #7]
    330a:	7013      	strb	r3, [r2, #0]
    330c:	bf00      	nop
    330e:	370c      	adds	r7, #12
    3310:	46bd      	mov	sp, r7
    3312:	bc80      	pop	{r7}
    3314:	4770      	bx	lr
    3316:	bf00      	nop
    3318:	20000054 	.word	0x20000054

0000331c <new_line>:
    331c:	b580      	push	{r7, lr}
    331e:	af00      	add	r7, sp, #0
    3320:	4b1e      	ldr	r3, [pc, #120]	; (339c <new_line+0x80>)
    3322:	2200      	movs	r2, #0
    3324:	701a      	strb	r2, [r3, #0]
    3326:	4b1e      	ldr	r3, [pc, #120]	; (33a0 <new_line+0x84>)
    3328:	781b      	ldrb	r3, [r3, #0]
    332a:	2b01      	cmp	r3, #1
    332c:	d014      	beq.n	3358 <new_line+0x3c>
    332e:	2b02      	cmp	r3, #2
    3330:	d022      	beq.n	3378 <new_line+0x5c>
    3332:	2b00      	cmp	r3, #0
    3334:	d000      	beq.n	3338 <new_line+0x1c>
    3336:	e02f      	b.n	3398 <new_line+0x7c>
    3338:	4b1a      	ldr	r3, [pc, #104]	; (33a4 <new_line+0x88>)
    333a:	781b      	ldrb	r3, [r3, #0]
    333c:	3306      	adds	r3, #6
    333e:	2b6b      	cmp	r3, #107	; 0x6b
    3340:	dc06      	bgt.n	3350 <new_line+0x34>
    3342:	4b18      	ldr	r3, [pc, #96]	; (33a4 <new_line+0x88>)
    3344:	781b      	ldrb	r3, [r3, #0]
    3346:	3306      	adds	r3, #6
    3348:	b2da      	uxtb	r2, r3
    334a:	4b16      	ldr	r3, [pc, #88]	; (33a4 <new_line+0x88>)
    334c:	701a      	strb	r2, [r3, #0]
    334e:	e023      	b.n	3398 <new_line+0x7c>
    3350:	2006      	movs	r0, #6
    3352:	f7fe fc67 	bl	1c24 <gfx_scroll_up>
    3356:	e01f      	b.n	3398 <new_line+0x7c>
    3358:	4b12      	ldr	r3, [pc, #72]	; (33a4 <new_line+0x88>)
    335a:	781b      	ldrb	r3, [r3, #0]
    335c:	330a      	adds	r3, #10
    335e:	2b67      	cmp	r3, #103	; 0x67
    3360:	dc06      	bgt.n	3370 <new_line+0x54>
    3362:	4b10      	ldr	r3, [pc, #64]	; (33a4 <new_line+0x88>)
    3364:	781b      	ldrb	r3, [r3, #0]
    3366:	330a      	adds	r3, #10
    3368:	b2da      	uxtb	r2, r3
    336a:	4b0e      	ldr	r3, [pc, #56]	; (33a4 <new_line+0x88>)
    336c:	701a      	strb	r2, [r3, #0]
    336e:	e013      	b.n	3398 <new_line+0x7c>
    3370:	200a      	movs	r0, #10
    3372:	f7fe fc57 	bl	1c24 <gfx_scroll_up>
    3376:	e00f      	b.n	3398 <new_line+0x7c>
    3378:	4b0a      	ldr	r3, [pc, #40]	; (33a4 <new_line+0x88>)
    337a:	781b      	ldrb	r3, [r3, #0]
    337c:	3308      	adds	r3, #8
    337e:	2b69      	cmp	r3, #105	; 0x69
    3380:	dc06      	bgt.n	3390 <new_line+0x74>
    3382:	4b08      	ldr	r3, [pc, #32]	; (33a4 <new_line+0x88>)
    3384:	781b      	ldrb	r3, [r3, #0]
    3386:	3308      	adds	r3, #8
    3388:	b2da      	uxtb	r2, r3
    338a:	4b06      	ldr	r3, [pc, #24]	; (33a4 <new_line+0x88>)
    338c:	701a      	strb	r2, [r3, #0]
    338e:	e002      	b.n	3396 <new_line+0x7a>
    3390:	2008      	movs	r0, #8
    3392:	f7fe fc47 	bl	1c24 <gfx_scroll_up>
    3396:	bf00      	nop
    3398:	bf00      	nop
    339a:	bd80      	pop	{r7, pc}
    339c:	200004f0 	.word	0x200004f0
    33a0:	20000054 	.word	0x20000054
    33a4:	200004f1 	.word	0x200004f1

000033a8 <draw_char>:
    33a8:	b5b0      	push	{r4, r5, r7, lr}
    33aa:	b086      	sub	sp, #24
    33ac:	af00      	add	r7, sp, #0
    33ae:	60f8      	str	r0, [r7, #12]
    33b0:	60b9      	str	r1, [r7, #8]
    33b2:	607a      	str	r2, [r7, #4]
    33b4:	603b      	str	r3, [r7, #0]
    33b6:	68bc      	ldr	r4, [r7, #8]
    33b8:	e026      	b.n	3408 <draw_char+0x60>
    33ba:	6abb      	ldr	r3, [r7, #40]	; 0x28
    33bc:	1c5a      	adds	r2, r3, #1
    33be:	62ba      	str	r2, [r7, #40]	; 0x28
    33c0:	781b      	ldrb	r3, [r3, #0]
    33c2:	757b      	strb	r3, [r7, #21]
    33c4:	2380      	movs	r3, #128	; 0x80
    33c6:	75bb      	strb	r3, [r7, #22]
    33c8:	68fd      	ldr	r5, [r7, #12]
    33ca:	e017      	b.n	33fc <draw_char+0x54>
    33cc:	7d7a      	ldrb	r2, [r7, #21]
    33ce:	7dbb      	ldrb	r3, [r7, #22]
    33d0:	4013      	ands	r3, r2
    33d2:	753b      	strb	r3, [r7, #20]
    33d4:	7d3b      	ldrb	r3, [r7, #20]
    33d6:	2b00      	cmp	r3, #0
    33d8:	d003      	beq.n	33e2 <draw_char+0x3a>
    33da:	4b10      	ldr	r3, [pc, #64]	; (341c <draw_char+0x74>)
    33dc:	785b      	ldrb	r3, [r3, #1]
    33de:	75fb      	strb	r3, [r7, #23]
    33e0:	e002      	b.n	33e8 <draw_char+0x40>
    33e2:	4b0e      	ldr	r3, [pc, #56]	; (341c <draw_char+0x74>)
    33e4:	781b      	ldrb	r3, [r3, #0]
    33e6:	75fb      	strb	r3, [r7, #23]
    33e8:	7dfb      	ldrb	r3, [r7, #23]
    33ea:	461a      	mov	r2, r3
    33ec:	4621      	mov	r1, r4
    33ee:	4628      	mov	r0, r5
    33f0:	f7fe fb3c 	bl	1a6c <gfx_plot>
    33f4:	7dbb      	ldrb	r3, [r7, #22]
    33f6:	085b      	lsrs	r3, r3, #1
    33f8:	75bb      	strb	r3, [r7, #22]
    33fa:	3501      	adds	r5, #1
    33fc:	68fa      	ldr	r2, [r7, #12]
    33fe:	687b      	ldr	r3, [r7, #4]
    3400:	4413      	add	r3, r2
    3402:	42ab      	cmp	r3, r5
    3404:	dce2      	bgt.n	33cc <draw_char+0x24>
    3406:	3401      	adds	r4, #1
    3408:	68ba      	ldr	r2, [r7, #8]
    340a:	683b      	ldr	r3, [r7, #0]
    340c:	4413      	add	r3, r2
    340e:	42a3      	cmp	r3, r4
    3410:	dcd3      	bgt.n	33ba <draw_char+0x12>
    3412:	bf00      	nop
    3414:	3718      	adds	r7, #24
    3416:	46bd      	mov	sp, r7
    3418:	bdb0      	pop	{r4, r5, r7, pc}
    341a:	bf00      	nop
    341c:	20000058 	.word	0x20000058

00003420 <put_char>:
    3420:	b580      	push	{r7, lr}
    3422:	b084      	sub	sp, #16
    3424:	af02      	add	r7, sp, #8
    3426:	4603      	mov	r3, r0
    3428:	71fb      	strb	r3, [r7, #7]
    342a:	4b3d      	ldr	r3, [pc, #244]	; (3520 <put_char+0x100>)
    342c:	781b      	ldrb	r3, [r3, #0]
    342e:	2b01      	cmp	r3, #1
    3430:	d027      	beq.n	3482 <put_char+0x62>
    3432:	2b02      	cmp	r3, #2
    3434:	d048      	beq.n	34c8 <put_char+0xa8>
    3436:	2b00      	cmp	r3, #0
    3438:	d000      	beq.n	343c <put_char+0x1c>
    343a:	e06d      	b.n	3518 <put_char+0xf8>
    343c:	79fb      	ldrb	r3, [r7, #7]
    343e:	2b0f      	cmp	r3, #15
    3440:	d865      	bhi.n	350e <put_char+0xee>
    3442:	4b38      	ldr	r3, [pc, #224]	; (3524 <put_char+0x104>)
    3444:	781b      	ldrb	r3, [r3, #0]
    3446:	4618      	mov	r0, r3
    3448:	4b37      	ldr	r3, [pc, #220]	; (3528 <put_char+0x108>)
    344a:	781b      	ldrb	r3, [r3, #0]
    344c:	4619      	mov	r1, r3
    344e:	79fa      	ldrb	r2, [r7, #7]
    3450:	4613      	mov	r3, r2
    3452:	005b      	lsls	r3, r3, #1
    3454:	4413      	add	r3, r2
    3456:	005b      	lsls	r3, r3, #1
    3458:	461a      	mov	r2, r3
    345a:	4b34      	ldr	r3, [pc, #208]	; (352c <put_char+0x10c>)
    345c:	4413      	add	r3, r2
    345e:	9300      	str	r3, [sp, #0]
    3460:	2306      	movs	r3, #6
    3462:	2204      	movs	r2, #4
    3464:	f7ff ffa0 	bl	33a8 <draw_char>
    3468:	4b2e      	ldr	r3, [pc, #184]	; (3524 <put_char+0x104>)
    346a:	781b      	ldrb	r3, [r3, #0]
    346c:	3304      	adds	r3, #4
    346e:	b2da      	uxtb	r2, r3
    3470:	4b2c      	ldr	r3, [pc, #176]	; (3524 <put_char+0x104>)
    3472:	701a      	strb	r2, [r3, #0]
    3474:	4b2b      	ldr	r3, [pc, #172]	; (3524 <put_char+0x104>)
    3476:	781b      	ldrb	r3, [r3, #0]
    3478:	2bb1      	cmp	r3, #177	; 0xb1
    347a:	d948      	bls.n	350e <put_char+0xee>
    347c:	f7ff ff4e 	bl	331c <new_line>
    3480:	e045      	b.n	350e <put_char+0xee>
    3482:	79fb      	ldrb	r3, [r7, #7]
    3484:	2b0f      	cmp	r3, #15
    3486:	d844      	bhi.n	3512 <put_char+0xf2>
    3488:	4b26      	ldr	r3, [pc, #152]	; (3524 <put_char+0x104>)
    348a:	781b      	ldrb	r3, [r3, #0]
    348c:	4618      	mov	r0, r3
    348e:	4b26      	ldr	r3, [pc, #152]	; (3528 <put_char+0x108>)
    3490:	781b      	ldrb	r3, [r3, #0]
    3492:	4619      	mov	r1, r3
    3494:	79fa      	ldrb	r2, [r7, #7]
    3496:	4613      	mov	r3, r2
    3498:	009b      	lsls	r3, r3, #2
    349a:	4413      	add	r3, r2
    349c:	005b      	lsls	r3, r3, #1
    349e:	461a      	mov	r2, r3
    34a0:	4b23      	ldr	r3, [pc, #140]	; (3530 <put_char+0x110>)
    34a2:	4413      	add	r3, r2
    34a4:	9300      	str	r3, [sp, #0]
    34a6:	230a      	movs	r3, #10
    34a8:	2208      	movs	r2, #8
    34aa:	f7ff ff7d 	bl	33a8 <draw_char>
    34ae:	4b1d      	ldr	r3, [pc, #116]	; (3524 <put_char+0x104>)
    34b0:	781b      	ldrb	r3, [r3, #0]
    34b2:	3308      	adds	r3, #8
    34b4:	b2da      	uxtb	r2, r3
    34b6:	4b1b      	ldr	r3, [pc, #108]	; (3524 <put_char+0x104>)
    34b8:	701a      	strb	r2, [r3, #0]
    34ba:	4b1a      	ldr	r3, [pc, #104]	; (3524 <put_char+0x104>)
    34bc:	781b      	ldrb	r3, [r3, #0]
    34be:	2bad      	cmp	r3, #173	; 0xad
    34c0:	d927      	bls.n	3512 <put_char+0xf2>
    34c2:	f7ff ff2b 	bl	331c <new_line>
    34c6:	e024      	b.n	3512 <put_char+0xf2>
    34c8:	79fb      	ldrb	r3, [r7, #7]
    34ca:	2b1f      	cmp	r3, #31
    34cc:	d923      	bls.n	3516 <put_char+0xf6>
    34ce:	79fb      	ldrb	r3, [r7, #7]
    34d0:	2b84      	cmp	r3, #132	; 0x84
    34d2:	d820      	bhi.n	3516 <put_char+0xf6>
    34d4:	4b13      	ldr	r3, [pc, #76]	; (3524 <put_char+0x104>)
    34d6:	781b      	ldrb	r3, [r3, #0]
    34d8:	4618      	mov	r0, r3
    34da:	4b13      	ldr	r3, [pc, #76]	; (3528 <put_char+0x108>)
    34dc:	781b      	ldrb	r3, [r3, #0]
    34de:	4619      	mov	r1, r3
    34e0:	79fb      	ldrb	r3, [r7, #7]
    34e2:	3b20      	subs	r3, #32
    34e4:	00db      	lsls	r3, r3, #3
    34e6:	4a13      	ldr	r2, [pc, #76]	; (3534 <put_char+0x114>)
    34e8:	4413      	add	r3, r2
    34ea:	9300      	str	r3, [sp, #0]
    34ec:	2308      	movs	r3, #8
    34ee:	2206      	movs	r2, #6
    34f0:	f7ff ff5a 	bl	33a8 <draw_char>
    34f4:	4b0b      	ldr	r3, [pc, #44]	; (3524 <put_char+0x104>)
    34f6:	781b      	ldrb	r3, [r3, #0]
    34f8:	3306      	adds	r3, #6
    34fa:	b2da      	uxtb	r2, r3
    34fc:	4b09      	ldr	r3, [pc, #36]	; (3524 <put_char+0x104>)
    34fe:	701a      	strb	r2, [r3, #0]
    3500:	4b08      	ldr	r3, [pc, #32]	; (3524 <put_char+0x104>)
    3502:	781b      	ldrb	r3, [r3, #0]
    3504:	2baf      	cmp	r3, #175	; 0xaf
    3506:	d906      	bls.n	3516 <put_char+0xf6>
    3508:	f7ff ff08 	bl	331c <new_line>
    350c:	e003      	b.n	3516 <put_char+0xf6>
    350e:	bf00      	nop
    3510:	e002      	b.n	3518 <put_char+0xf8>
    3512:	bf00      	nop
    3514:	e000      	b.n	3518 <put_char+0xf8>
    3516:	bf00      	nop
    3518:	bf00      	nop
    351a:	3708      	adds	r7, #8
    351c:	46bd      	mov	sp, r7
    351e:	bd80      	pop	{r7, pc}
    3520:	20000054 	.word	0x20000054
    3524:	200004f0 	.word	0x200004f0
    3528:	200004f1 	.word	0x200004f1
    352c:	00003d6c 	.word	0x00003d6c
    3530:	00003dcc 	.word	0x00003dcc
    3534:	00003e6c 	.word	0x00003e6c

00003538 <set_cursor>:
    3538:	b480      	push	{r7}
    353a:	b083      	sub	sp, #12
    353c:	af00      	add	r7, sp, #0
    353e:	4603      	mov	r3, r0
    3540:	460a      	mov	r2, r1
    3542:	71fb      	strb	r3, [r7, #7]
    3544:	4613      	mov	r3, r2
    3546:	71bb      	strb	r3, [r7, #6]
    3548:	4a05      	ldr	r2, [pc, #20]	; (3560 <set_cursor+0x28>)
    354a:	79fb      	ldrb	r3, [r7, #7]
    354c:	7013      	strb	r3, [r2, #0]
    354e:	4a05      	ldr	r2, [pc, #20]	; (3564 <set_cursor+0x2c>)
    3550:	79bb      	ldrb	r3, [r7, #6]
    3552:	7013      	strb	r3, [r2, #0]
    3554:	bf00      	nop
    3556:	370c      	adds	r7, #12
    3558:	46bd      	mov	sp, r7
    355a:	bc80      	pop	{r7}
    355c:	4770      	bx	lr
    355e:	bf00      	nop
    3560:	200004f0 	.word	0x200004f0
    3564:	200004f1 	.word	0x200004f1

00003568 <get_cursor>:
    3568:	b480      	push	{r7}
    356a:	af00      	add	r7, sp, #0
    356c:	4b06      	ldr	r3, [pc, #24]	; (3588 <get_cursor+0x20>)
    356e:	781b      	ldrb	r3, [r3, #0]
    3570:	b29b      	uxth	r3, r3
    3572:	021b      	lsls	r3, r3, #8
    3574:	b29a      	uxth	r2, r3
    3576:	4b05      	ldr	r3, [pc, #20]	; (358c <get_cursor+0x24>)
    3578:	781b      	ldrb	r3, [r3, #0]
    357a:	b29b      	uxth	r3, r3
    357c:	4413      	add	r3, r2
    357e:	b29b      	uxth	r3, r3
    3580:	4618      	mov	r0, r3
    3582:	46bd      	mov	sp, r7
    3584:	bc80      	pop	{r7}
    3586:	4770      	bx	lr
    3588:	200004f0 	.word	0x200004f0
    358c:	200004f1 	.word	0x200004f1

00003590 <print>:
    3590:	b580      	push	{r7, lr}
    3592:	b084      	sub	sp, #16
    3594:	af00      	add	r7, sp, #0
    3596:	6078      	str	r0, [r7, #4]
    3598:	e011      	b.n	35be <print+0x2e>
    359a:	7bfb      	ldrb	r3, [r7, #15]
    359c:	2b0a      	cmp	r3, #10
    359e:	d004      	beq.n	35aa <print+0x1a>
    35a0:	2b0d      	cmp	r3, #13
    35a2:	d002      	beq.n	35aa <print+0x1a>
    35a4:	2b08      	cmp	r3, #8
    35a6:	d003      	beq.n	35b0 <print+0x20>
    35a8:	e005      	b.n	35b6 <print+0x26>
    35aa:	f7ff feb7 	bl	331c <new_line>
    35ae:	e006      	b.n	35be <print+0x2e>
    35b0:	f000 f888 	bl	36c4 <cursor_left>
    35b4:	e003      	b.n	35be <print+0x2e>
    35b6:	7bfb      	ldrb	r3, [r7, #15]
    35b8:	4618      	mov	r0, r3
    35ba:	f7ff ff31 	bl	3420 <put_char>
    35be:	687b      	ldr	r3, [r7, #4]
    35c0:	1c5a      	adds	r2, r3, #1
    35c2:	607a      	str	r2, [r7, #4]
    35c4:	781b      	ldrb	r3, [r3, #0]
    35c6:	73fb      	strb	r3, [r7, #15]
    35c8:	7bfb      	ldrb	r3, [r7, #15]
    35ca:	2b00      	cmp	r3, #0
    35cc:	d1e5      	bne.n	359a <print+0xa>
    35ce:	bf00      	nop
    35d0:	3710      	adds	r7, #16
    35d2:	46bd      	mov	sp, r7
    35d4:	bd80      	pop	{r7, pc}

000035d6 <print_int>:
    35d6:	b580      	push	{r7, lr}
    35d8:	b088      	sub	sp, #32
    35da:	af00      	add	r7, sp, #0
    35dc:	6078      	str	r0, [r7, #4]
    35de:	460b      	mov	r3, r1
    35e0:	70fb      	strb	r3, [r7, #3]
    35e2:	2300      	movs	r3, #0
    35e4:	77fb      	strb	r3, [r7, #31]
    35e6:	2300      	movs	r3, #0
    35e8:	74fb      	strb	r3, [r7, #19]
    35ea:	2320      	movs	r3, #32
    35ec:	74bb      	strb	r3, [r7, #18]
    35ee:	230a      	movs	r3, #10
    35f0:	61bb      	str	r3, [r7, #24]
    35f2:	687b      	ldr	r3, [r7, #4]
    35f4:	2b00      	cmp	r3, #0
    35f6:	da26      	bge.n	3646 <print_int+0x70>
    35f8:	2301      	movs	r3, #1
    35fa:	77fb      	strb	r3, [r7, #31]
    35fc:	687b      	ldr	r3, [r7, #4]
    35fe:	425b      	negs	r3, r3
    3600:	607b      	str	r3, [r7, #4]
    3602:	e020      	b.n	3646 <print_int+0x70>
    3604:	78fa      	ldrb	r2, [r7, #3]
    3606:	687b      	ldr	r3, [r7, #4]
    3608:	fb93 f1f2 	sdiv	r1, r3, r2
    360c:	fb02 f201 	mul.w	r2, r2, r1
    3610:	1a9b      	subs	r3, r3, r2
    3612:	617b      	str	r3, [r7, #20]
    3614:	697b      	ldr	r3, [r7, #20]
    3616:	2b09      	cmp	r3, #9
    3618:	dd02      	ble.n	3620 <print_int+0x4a>
    361a:	697b      	ldr	r3, [r7, #20]
    361c:	3307      	adds	r3, #7
    361e:	617b      	str	r3, [r7, #20]
    3620:	69bb      	ldr	r3, [r7, #24]
    3622:	3b01      	subs	r3, #1
    3624:	61bb      	str	r3, [r7, #24]
    3626:	697b      	ldr	r3, [r7, #20]
    3628:	3330      	adds	r3, #48	; 0x30
    362a:	617b      	str	r3, [r7, #20]
    362c:	697b      	ldr	r3, [r7, #20]
    362e:	b2d9      	uxtb	r1, r3
    3630:	f107 0208 	add.w	r2, r7, #8
    3634:	69bb      	ldr	r3, [r7, #24]
    3636:	4413      	add	r3, r2
    3638:	460a      	mov	r2, r1
    363a:	701a      	strb	r2, [r3, #0]
    363c:	78fb      	ldrb	r3, [r7, #3]
    363e:	687a      	ldr	r2, [r7, #4]
    3640:	fb92 f3f3 	sdiv	r3, r2, r3
    3644:	607b      	str	r3, [r7, #4]
    3646:	687b      	ldr	r3, [r7, #4]
    3648:	2b00      	cmp	r3, #0
    364a:	d1db      	bne.n	3604 <print_int+0x2e>
    364c:	69bb      	ldr	r3, [r7, #24]
    364e:	2b0a      	cmp	r3, #10
    3650:	d108      	bne.n	3664 <print_int+0x8e>
    3652:	69bb      	ldr	r3, [r7, #24]
    3654:	3b01      	subs	r3, #1
    3656:	61bb      	str	r3, [r7, #24]
    3658:	f107 0208 	add.w	r2, r7, #8
    365c:	69bb      	ldr	r3, [r7, #24]
    365e:	4413      	add	r3, r2
    3660:	2230      	movs	r2, #48	; 0x30
    3662:	701a      	strb	r2, [r3, #0]
    3664:	78fb      	ldrb	r3, [r7, #3]
    3666:	2b0a      	cmp	r3, #10
    3668:	d10c      	bne.n	3684 <print_int+0xae>
    366a:	7ffb      	ldrb	r3, [r7, #31]
    366c:	2b00      	cmp	r3, #0
    366e:	d009      	beq.n	3684 <print_int+0xae>
    3670:	69bb      	ldr	r3, [r7, #24]
    3672:	3b01      	subs	r3, #1
    3674:	61bb      	str	r3, [r7, #24]
    3676:	f107 0208 	add.w	r2, r7, #8
    367a:	69bb      	ldr	r3, [r7, #24]
    367c:	4413      	add	r3, r2
    367e:	222d      	movs	r2, #45	; 0x2d
    3680:	701a      	strb	r2, [r3, #0]
    3682:	e014      	b.n	36ae <print_int+0xd8>
    3684:	78fb      	ldrb	r3, [r7, #3]
    3686:	2b10      	cmp	r3, #16
    3688:	d111      	bne.n	36ae <print_int+0xd8>
    368a:	69bb      	ldr	r3, [r7, #24]
    368c:	3b01      	subs	r3, #1
    368e:	61bb      	str	r3, [r7, #24]
    3690:	f107 0208 	add.w	r2, r7, #8
    3694:	69bb      	ldr	r3, [r7, #24]
    3696:	4413      	add	r3, r2
    3698:	2278      	movs	r2, #120	; 0x78
    369a:	701a      	strb	r2, [r3, #0]
    369c:	69bb      	ldr	r3, [r7, #24]
    369e:	3b01      	subs	r3, #1
    36a0:	61bb      	str	r3, [r7, #24]
    36a2:	f107 0208 	add.w	r2, r7, #8
    36a6:	69bb      	ldr	r3, [r7, #24]
    36a8:	4413      	add	r3, r2
    36aa:	2230      	movs	r2, #48	; 0x30
    36ac:	701a      	strb	r2, [r3, #0]
    36ae:	f107 0208 	add.w	r2, r7, #8
    36b2:	69bb      	ldr	r3, [r7, #24]
    36b4:	4413      	add	r3, r2
    36b6:	4618      	mov	r0, r3
    36b8:	f7ff ff6a 	bl	3590 <print>
    36bc:	bf00      	nop
    36be:	3720      	adds	r7, #32
    36c0:	46bd      	mov	sp, r7
    36c2:	bd80      	pop	{r7, pc}

000036c4 <cursor_left>:
    36c4:	b480      	push	{r7}
    36c6:	af00      	add	r7, sp, #0
    36c8:	4b1a      	ldr	r3, [pc, #104]	; (3734 <cursor_left+0x70>)
    36ca:	781b      	ldrb	r3, [r3, #0]
    36cc:	2b01      	cmp	r3, #1
    36ce:	d010      	beq.n	36f2 <cursor_left+0x2e>
    36d0:	2b02      	cmp	r3, #2
    36d2:	d01a      	beq.n	370a <cursor_left+0x46>
    36d4:	2b00      	cmp	r3, #0
    36d6:	d000      	beq.n	36da <cursor_left+0x16>
    36d8:	e028      	b.n	372c <cursor_left+0x68>
    36da:	4b17      	ldr	r3, [pc, #92]	; (3738 <cursor_left+0x74>)
    36dc:	781b      	ldrb	r3, [r3, #0]
    36de:	3b04      	subs	r3, #4
    36e0:	2b00      	cmp	r3, #0
    36e2:	db1e      	blt.n	3722 <cursor_left+0x5e>
    36e4:	4b14      	ldr	r3, [pc, #80]	; (3738 <cursor_left+0x74>)
    36e6:	781b      	ldrb	r3, [r3, #0]
    36e8:	3b04      	subs	r3, #4
    36ea:	b2da      	uxtb	r2, r3
    36ec:	4b12      	ldr	r3, [pc, #72]	; (3738 <cursor_left+0x74>)
    36ee:	701a      	strb	r2, [r3, #0]
    36f0:	e017      	b.n	3722 <cursor_left+0x5e>
    36f2:	4b11      	ldr	r3, [pc, #68]	; (3738 <cursor_left+0x74>)
    36f4:	781b      	ldrb	r3, [r3, #0]
    36f6:	3b08      	subs	r3, #8
    36f8:	2b00      	cmp	r3, #0
    36fa:	db14      	blt.n	3726 <cursor_left+0x62>
    36fc:	4b0e      	ldr	r3, [pc, #56]	; (3738 <cursor_left+0x74>)
    36fe:	781b      	ldrb	r3, [r3, #0]
    3700:	3b08      	subs	r3, #8
    3702:	b2da      	uxtb	r2, r3
    3704:	4b0c      	ldr	r3, [pc, #48]	; (3738 <cursor_left+0x74>)
    3706:	701a      	strb	r2, [r3, #0]
    3708:	e00d      	b.n	3726 <cursor_left+0x62>
    370a:	4b0b      	ldr	r3, [pc, #44]	; (3738 <cursor_left+0x74>)
    370c:	781b      	ldrb	r3, [r3, #0]
    370e:	3b06      	subs	r3, #6
    3710:	2b00      	cmp	r3, #0
    3712:	db0a      	blt.n	372a <cursor_left+0x66>
    3714:	4b08      	ldr	r3, [pc, #32]	; (3738 <cursor_left+0x74>)
    3716:	781b      	ldrb	r3, [r3, #0]
    3718:	3b06      	subs	r3, #6
    371a:	b2da      	uxtb	r2, r3
    371c:	4b06      	ldr	r3, [pc, #24]	; (3738 <cursor_left+0x74>)
    371e:	701a      	strb	r2, [r3, #0]
    3720:	e003      	b.n	372a <cursor_left+0x66>
    3722:	bf00      	nop
    3724:	e002      	b.n	372c <cursor_left+0x68>
    3726:	bf00      	nop
    3728:	e000      	b.n	372c <cursor_left+0x68>
    372a:	bf00      	nop
    372c:	bf00      	nop
    372e:	46bd      	mov	sp, r7
    3730:	bc80      	pop	{r7}
    3732:	4770      	bx	lr
    3734:	20000054 	.word	0x20000054
    3738:	200004f0 	.word	0x200004f0

0000373c <text_scroller>:
    373c:	b580      	push	{r7, lr}
    373e:	b084      	sub	sp, #16
    3740:	af00      	add	r7, sp, #0
    3742:	6078      	str	r0, [r7, #4]
    3744:	460b      	mov	r3, r1
    3746:	70fb      	strb	r3, [r7, #3]
    3748:	f7fe fa1c 	bl	1b84 <gfx_cls>
    374c:	2002      	movs	r0, #2
    374e:	f7ff fdd5 	bl	32fc <select_font>
    3752:	687b      	ldr	r3, [r7, #4]
    3754:	1c5a      	adds	r2, r3, #1
    3756:	607a      	str	r2, [r7, #4]
    3758:	781b      	ldrb	r3, [r3, #0]
    375a:	73fb      	strb	r3, [r7, #15]
    375c:	e038      	b.n	37d0 <text_scroller+0x94>
    375e:	2120      	movs	r1, #32
    3760:	2000      	movs	r0, #0
    3762:	f7ff fee9 	bl	3538 <set_cursor>
    3766:	e00e      	b.n	3786 <text_scroller+0x4a>
    3768:	7bfb      	ldrb	r3, [r7, #15]
    376a:	4618      	mov	r0, r3
    376c:	f7ff fe58 	bl	3420 <put_char>
    3770:	687b      	ldr	r3, [r7, #4]
    3772:	1c5a      	adds	r2, r3, #1
    3774:	607a      	str	r2, [r7, #4]
    3776:	781b      	ldrb	r3, [r3, #0]
    3778:	73fb      	strb	r3, [r7, #15]
    377a:	4b2d      	ldr	r3, [pc, #180]	; (3830 <text_scroller+0xf4>)
    377c:	881b      	ldrh	r3, [r3, #0]
    377e:	b29b      	uxth	r3, r3
    3780:	b21b      	sxth	r3, r3
    3782:	2b00      	cmp	r3, #0
    3784:	da42      	bge.n	380c <text_scroller+0xd0>
    3786:	7bfb      	ldrb	r3, [r7, #15]
    3788:	2b00      	cmp	r3, #0
    378a:	d002      	beq.n	3792 <text_scroller+0x56>
    378c:	7bfb      	ldrb	r3, [r7, #15]
    378e:	2b0a      	cmp	r3, #10
    3790:	d1ea      	bne.n	3768 <text_scroller+0x2c>
    3792:	2300      	movs	r3, #0
    3794:	73bb      	strb	r3, [r7, #14]
    3796:	e013      	b.n	37c0 <text_scroller+0x84>
    3798:	78fb      	ldrb	r3, [r7, #3]
    379a:	4a26      	ldr	r2, [pc, #152]	; (3834 <text_scroller+0xf8>)
    379c:	6013      	str	r3, [r2, #0]
    379e:	bf00      	nop
    37a0:	4b24      	ldr	r3, [pc, #144]	; (3834 <text_scroller+0xf8>)
    37a2:	681b      	ldr	r3, [r3, #0]
    37a4:	2b00      	cmp	r3, #0
    37a6:	d1fb      	bne.n	37a0 <text_scroller+0x64>
    37a8:	2001      	movs	r0, #1
    37aa:	f7fe fa3b 	bl	1c24 <gfx_scroll_up>
    37ae:	4b20      	ldr	r3, [pc, #128]	; (3830 <text_scroller+0xf4>)
    37b0:	881b      	ldrh	r3, [r3, #0]
    37b2:	b29b      	uxth	r3, r3
    37b4:	b21b      	sxth	r3, r3
    37b6:	2b00      	cmp	r3, #0
    37b8:	da2a      	bge.n	3810 <text_scroller+0xd4>
    37ba:	7bbb      	ldrb	r3, [r7, #14]
    37bc:	3301      	adds	r3, #1
    37be:	73bb      	strb	r3, [r7, #14]
    37c0:	7bbb      	ldrb	r3, [r7, #14]
    37c2:	2b07      	cmp	r3, #7
    37c4:	d9e8      	bls.n	3798 <text_scroller+0x5c>
    37c6:	687b      	ldr	r3, [r7, #4]
    37c8:	1c5a      	adds	r2, r3, #1
    37ca:	607a      	str	r2, [r7, #4]
    37cc:	781b      	ldrb	r3, [r3, #0]
    37ce:	73fb      	strb	r3, [r7, #15]
    37d0:	7bfb      	ldrb	r3, [r7, #15]
    37d2:	2b00      	cmp	r3, #0
    37d4:	d1c3      	bne.n	375e <text_scroller+0x22>
    37d6:	2300      	movs	r3, #0
    37d8:	73fb      	strb	r3, [r7, #15]
    37da:	e013      	b.n	3804 <text_scroller+0xc8>
    37dc:	78fb      	ldrb	r3, [r7, #3]
    37de:	4a15      	ldr	r2, [pc, #84]	; (3834 <text_scroller+0xf8>)
    37e0:	6013      	str	r3, [r2, #0]
    37e2:	bf00      	nop
    37e4:	4b13      	ldr	r3, [pc, #76]	; (3834 <text_scroller+0xf8>)
    37e6:	681b      	ldr	r3, [r3, #0]
    37e8:	2b00      	cmp	r3, #0
    37ea:	d1fb      	bne.n	37e4 <text_scroller+0xa8>
    37ec:	2001      	movs	r0, #1
    37ee:	f7fe fa19 	bl	1c24 <gfx_scroll_up>
    37f2:	4b0f      	ldr	r3, [pc, #60]	; (3830 <text_scroller+0xf4>)
    37f4:	881b      	ldrh	r3, [r3, #0]
    37f6:	b29b      	uxth	r3, r3
    37f8:	b21b      	sxth	r3, r3
    37fa:	2b00      	cmp	r3, #0
    37fc:	da0a      	bge.n	3814 <text_scroller+0xd8>
    37fe:	7bfb      	ldrb	r3, [r7, #15]
    3800:	3301      	adds	r3, #1
    3802:	73fb      	strb	r3, [r7, #15]
    3804:	7bfb      	ldrb	r3, [r7, #15]
    3806:	2b1f      	cmp	r3, #31
    3808:	d9e8      	bls.n	37dc <text_scroller+0xa0>
    380a:	e004      	b.n	3816 <text_scroller+0xda>
    380c:	bf00      	nop
    380e:	e002      	b.n	3816 <text_scroller+0xda>
    3810:	bf00      	nop
    3812:	e000      	b.n	3816 <text_scroller+0xda>
    3814:	bf00      	nop
    3816:	f7fe f9b5 	bl	1b84 <gfx_cls>
    381a:	bf00      	nop
    381c:	4b04      	ldr	r3, [pc, #16]	; (3830 <text_scroller+0xf4>)
    381e:	881b      	ldrh	r3, [r3, #0]
    3820:	b29b      	uxth	r3, r3
    3822:	b21b      	sxth	r3, r3
    3824:	2b00      	cmp	r3, #0
    3826:	daf9      	bge.n	381c <text_scroller+0xe0>
    3828:	bf00      	nop
    382a:	3710      	adds	r7, #16
    382c:	46bd      	mov	sp, r7
    382e:	bd80      	pop	{r7, pc}
    3830:	200024fc 	.word	0x200024fc
    3834:	200004ec 	.word	0x200004ec

00003838 <prompt_btn>:
    3838:	b580      	push	{r7, lr}
    383a:	af00      	add	r7, sp, #0
    383c:	4802      	ldr	r0, [pc, #8]	; (3848 <prompt_btn+0x10>)
    383e:	f7ff fea7 	bl	3590 <print>
    3842:	bf00      	nop
    3844:	bd80      	pop	{r7, pc}
    3846:	bf00      	nop
    3848:	000042ec 	.word	0x000042ec

0000384c <clear_screen>:
    384c:	b580      	push	{r7, lr}
    384e:	af00      	add	r7, sp, #0
    3850:	f7fe f998 	bl	1b84 <gfx_cls>
    3854:	4b03      	ldr	r3, [pc, #12]	; (3864 <clear_screen+0x18>)
    3856:	2200      	movs	r2, #0
    3858:	701a      	strb	r2, [r3, #0]
    385a:	4b03      	ldr	r3, [pc, #12]	; (3868 <clear_screen+0x1c>)
    385c:	2200      	movs	r2, #0
    385e:	701a      	strb	r2, [r3, #0]
    3860:	bf00      	nop
    3862:	bd80      	pop	{r7, pc}
    3864:	200004f0 	.word	0x200004f0
    3868:	200004f1 	.word	0x200004f1

0000386c <tvout_init>:
    386c:	b580      	push	{r7, lr}
    386e:	af00      	add	r7, sp, #0
    3870:	2003      	movs	r0, #3
    3872:	f000 fa37 	bl	3ce4 <set_palette>
    3876:	4b45      	ldr	r3, [pc, #276]	; (398c <tvout_init+0x120>)
    3878:	4a45      	ldr	r2, [pc, #276]	; (3990 <tvout_init+0x124>)
    387a:	601a      	str	r2, [r3, #0]
    387c:	4b45      	ldr	r3, [pc, #276]	; (3994 <tvout_init+0x128>)
    387e:	4a46      	ldr	r2, [pc, #280]	; (3998 <tvout_init+0x12c>)
    3880:	601a      	str	r2, [r3, #0]
    3882:	220a      	movs	r2, #10
    3884:	2108      	movs	r1, #8
    3886:	4841      	ldr	r0, [pc, #260]	; (398c <tvout_init+0x120>)
    3888:	f7fe f80b 	bl	18a2 <config_pin>
    388c:	4b3f      	ldr	r3, [pc, #252]	; (398c <tvout_init+0x120>)
    388e:	2200      	movs	r2, #0
    3890:	60da      	str	r2, [r3, #12]
    3892:	4a42      	ldr	r2, [pc, #264]	; (399c <tvout_init+0x130>)
    3894:	4b41      	ldr	r3, [pc, #260]	; (399c <tvout_init+0x130>)
    3896:	699b      	ldr	r3, [r3, #24]
    3898:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    389c:	6193      	str	r3, [r2, #24]
    389e:	4b40      	ldr	r3, [pc, #256]	; (39a0 <tvout_init+0x134>)
    38a0:	2278      	movs	r2, #120	; 0x78
    38a2:	619a      	str	r2, [r3, #24]
    38a4:	4b3e      	ldr	r3, [pc, #248]	; (39a0 <tvout_init+0x134>)
    38a6:	2201      	movs	r2, #1
    38a8:	621a      	str	r2, [r3, #32]
    38aa:	4b3d      	ldr	r3, [pc, #244]	; (39a0 <tvout_init+0x134>)
    38ac:	2284      	movs	r2, #132	; 0x84
    38ae:	601a      	str	r2, [r3, #0]
    38b0:	4b3b      	ldr	r3, [pc, #236]	; (39a0 <tvout_init+0x134>)
    38b2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    38b6:	62da      	str	r2, [r3, #44]	; 0x2c
    38b8:	4b39      	ldr	r3, [pc, #228]	; (39a0 <tvout_init+0x134>)
    38ba:	f44f 72a8 	mov.w	r2, #336	; 0x150
    38be:	635a      	str	r2, [r3, #52]	; 0x34
    38c0:	4b37      	ldr	r3, [pc, #220]	; (39a0 <tvout_init+0x134>)
    38c2:	f240 126d 	movw	r2, #365	; 0x16d
    38c6:	639a      	str	r2, [r3, #56]	; 0x38
    38c8:	4a35      	ldr	r2, [pc, #212]	; (39a0 <tvout_init+0x134>)
    38ca:	4b35      	ldr	r3, [pc, #212]	; (39a0 <tvout_init+0x134>)
    38cc:	695b      	ldr	r3, [r3, #20]
    38ce:	f043 0301 	orr.w	r3, r3, #1
    38d2:	6153      	str	r3, [r2, #20]
    38d4:	4b32      	ldr	r3, [pc, #200]	; (39a0 <tvout_init+0x134>)
    38d6:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    38da:	645a      	str	r2, [r3, #68]	; 0x44
    38dc:	4b30      	ldr	r3, [pc, #192]	; (39a0 <tvout_init+0x134>)
    38de:	2200      	movs	r2, #0
    38e0:	611a      	str	r2, [r3, #16]
    38e2:	4a2f      	ldr	r2, [pc, #188]	; (39a0 <tvout_init+0x134>)
    38e4:	4b2e      	ldr	r3, [pc, #184]	; (39a0 <tvout_init+0x134>)
    38e6:	68db      	ldr	r3, [r3, #12]
    38e8:	f043 0301 	orr.w	r3, r3, #1
    38ec:	60d3      	str	r3, [r2, #12]
    38ee:	2100      	movs	r1, #0
    38f0:	2019      	movs	r0, #25
    38f2:	f7fe fc99 	bl	2228 <set_int_priority>
    38f6:	2100      	movs	r1, #0
    38f8:	201b      	movs	r0, #27
    38fa:	f7fe fc95 	bl	2228 <set_int_priority>
    38fe:	201b      	movs	r0, #27
    3900:	f7fe fbd8 	bl	20b4 <enable_interrupt>
    3904:	2019      	movs	r0, #25
    3906:	f7fe fbd5 	bl	20b4 <enable_interrupt>
    390a:	4a25      	ldr	r2, [pc, #148]	; (39a0 <tvout_init+0x134>)
    390c:	4b24      	ldr	r3, [pc, #144]	; (39a0 <tvout_init+0x134>)
    390e:	681b      	ldr	r3, [r3, #0]
    3910:	f043 0301 	orr.w	r3, r3, #1
    3914:	6013      	str	r3, [r2, #0]
    3916:	220a      	movs	r2, #10
    3918:	2100      	movs	r1, #0
    391a:	4822      	ldr	r0, [pc, #136]	; (39a4 <tvout_init+0x138>)
    391c:	f7fd ffc1 	bl	18a2 <config_pin>
    3920:	220a      	movs	r2, #10
    3922:	2101      	movs	r1, #1
    3924:	481f      	ldr	r0, [pc, #124]	; (39a4 <tvout_init+0x138>)
    3926:	f7fd ffbc 	bl	18a2 <config_pin>
    392a:	4a1c      	ldr	r2, [pc, #112]	; (399c <tvout_init+0x130>)
    392c:	4b1b      	ldr	r3, [pc, #108]	; (399c <tvout_init+0x130>)
    392e:	69db      	ldr	r3, [r3, #28]
    3930:	f043 0302 	orr.w	r3, r3, #2
    3934:	61d3      	str	r3, [r2, #28]
    3936:	4b1c      	ldr	r3, [pc, #112]	; (39a8 <tvout_init+0x13c>)
    3938:	f246 0278 	movw	r2, #24696	; 0x6078
    393c:	61da      	str	r2, [r3, #28]
    393e:	4b1a      	ldr	r3, [pc, #104]	; (39a8 <tvout_init+0x13c>)
    3940:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    3944:	621a      	str	r2, [r3, #32]
    3946:	4b18      	ldr	r3, [pc, #96]	; (39a8 <tvout_init+0x13c>)
    3948:	2284      	movs	r2, #132	; 0x84
    394a:	601a      	str	r2, [r3, #0]
    394c:	4b16      	ldr	r3, [pc, #88]	; (39a8 <tvout_init+0x13c>)
    394e:	2213      	movs	r2, #19
    3950:	62da      	str	r2, [r3, #44]	; 0x2c
    3952:	4b15      	ldr	r3, [pc, #84]	; (39a8 <tvout_init+0x13c>)
    3954:	220a      	movs	r2, #10
    3956:	63da      	str	r2, [r3, #60]	; 0x3c
    3958:	4b13      	ldr	r3, [pc, #76]	; (39a8 <tvout_init+0x13c>)
    395a:	220a      	movs	r2, #10
    395c:	641a      	str	r2, [r3, #64]	; 0x40
    395e:	4a12      	ldr	r2, [pc, #72]	; (39a8 <tvout_init+0x13c>)
    3960:	4b11      	ldr	r3, [pc, #68]	; (39a8 <tvout_init+0x13c>)
    3962:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    3964:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3968:	6453      	str	r3, [r2, #68]	; 0x44
    396a:	4a0f      	ldr	r2, [pc, #60]	; (39a8 <tvout_init+0x13c>)
    396c:	4b0e      	ldr	r3, [pc, #56]	; (39a8 <tvout_init+0x13c>)
    396e:	695b      	ldr	r3, [r3, #20]
    3970:	f043 0301 	orr.w	r3, r3, #1
    3974:	6153      	str	r3, [r2, #20]
    3976:	4b0c      	ldr	r3, [pc, #48]	; (39a8 <tvout_init+0x13c>)
    3978:	2200      	movs	r2, #0
    397a:	611a      	str	r2, [r3, #16]
    397c:	4a0a      	ldr	r2, [pc, #40]	; (39a8 <tvout_init+0x13c>)
    397e:	4b0a      	ldr	r3, [pc, #40]	; (39a8 <tvout_init+0x13c>)
    3980:	681b      	ldr	r3, [r3, #0]
    3982:	f043 0301 	orr.w	r3, r3, #1
    3986:	6013      	str	r3, [r2, #0]
    3988:	bf00      	nop
    398a:	bd80      	pop	{r7, pc}
    398c:	40010800 	.word	0x40010800
    3990:	88883333 	.word	0x88883333
    3994:	40010804 	.word	0x40010804
    3998:	88444444 	.word	0x88444444
    399c:	40021000 	.word	0x40021000
    39a0:	40012c00 	.word	0x40012c00
    39a4:	40010c00 	.word	0x40010c00
    39a8:	40000400 	.word	0x40000400

000039ac <TV_OUT_handler>:
    39ac:	4668      	mov	r0, sp
    39ae:	f020 0107 	bic.w	r1, r0, #7
    39b2:	468d      	mov	sp, r1
    39b4:	b411      	push	{r0, r4}
    39b6:	4a30      	ldr	r2, [pc, #192]	; (3a78 <TV_OUT_handler+0xcc>)
    39b8:	6a13      	ldr	r3, [r2, #32]
    39ba:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    39be:	6213      	str	r3, [r2, #32]
    39c0:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    39c4:	6a53      	ldr	r3, [r2, #36]	; 0x24
    39c6:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    39ca:	d3fb      	bcc.n	39c4 <TV_OUT_handler+0x18>
    39cc:	4a2a      	ldr	r2, [pc, #168]	; (3a78 <TV_OUT_handler+0xcc>)
    39ce:	6a13      	ldr	r3, [r2, #32]
    39d0:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    39d4:	6213      	str	r3, [r2, #32]
    39d6:	4b29      	ldr	r3, [pc, #164]	; (3a7c <TV_OUT_handler+0xd0>)
    39d8:	881b      	ldrh	r3, [r3, #0]
    39da:	f013 0f04 	tst.w	r3, #4
    39de:	d042      	beq.n	3a66 <TV_OUT_handler+0xba>
    39e0:	4927      	ldr	r1, [pc, #156]	; (3a80 <TV_OUT_handler+0xd4>)
    39e2:	f240 32c5 	movw	r2, #965	; 0x3c5
    39e6:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    39e8:	4293      	cmp	r3, r2
    39ea:	d9fc      	bls.n	39e6 <TV_OUT_handler+0x3a>
    39ec:	4a25      	ldr	r2, [pc, #148]	; (3a84 <TV_OUT_handler+0xd8>)
    39ee:	8813      	ldrh	r3, [r2, #0]
    39f0:	f3c3 034e 	ubfx	r3, r3, #1, #15
    39f4:	4924      	ldr	r1, [pc, #144]	; (3a88 <TV_OUT_handler+0xdc>)
    39f6:	205a      	movs	r0, #90	; 0x5a
    39f8:	fb00 1303 	mla	r3, r0, r3, r1
    39fc:	8812      	ldrh	r2, [r2, #0]
    39fe:	491e      	ldr	r1, [pc, #120]	; (3a78 <TV_OUT_handler+0xcc>)
    3a00:	6a08      	ldr	r0, [r1, #32]
    3a02:	f3c2 024e 	ubfx	r2, r2, #1, #15
    3a06:	4c21      	ldr	r4, [pc, #132]	; (3a8c <TV_OUT_handler+0xe0>)
    3a08:	5ca4      	ldrb	r4, [r4, r2]
    3a0a:	4a21      	ldr	r2, [pc, #132]	; (3a90 <TV_OUT_handler+0xe4>)
    3a0c:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    3a10:	4302      	orrs	r2, r0
    3a12:	620a      	str	r2, [r1, #32]
    3a14:	f103 005a 	add.w	r0, r3, #90	; 0x5a
    3a18:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    3a1c:	310c      	adds	r1, #12
    3a1e:	781a      	ldrb	r2, [r3, #0]
    3a20:	0912      	lsrs	r2, r2, #4
    3a22:	800a      	strh	r2, [r1, #0]
    3a24:	bf00      	nop
    3a26:	bf00      	nop
    3a28:	bf00      	nop
    3a2a:	bf00      	nop
    3a2c:	bf00      	nop
    3a2e:	bf00      	nop
    3a30:	bf00      	nop
    3a32:	bf00      	nop
    3a34:	bf00      	nop
    3a36:	bf00      	nop
    3a38:	bf00      	nop
    3a3a:	f813 2b01 	ldrb.w	r2, [r3], #1
    3a3e:	f002 020f 	and.w	r2, r2, #15
    3a42:	800a      	strh	r2, [r1, #0]
    3a44:	bf00      	nop
    3a46:	bf00      	nop
    3a48:	bf00      	nop
    3a4a:	bf00      	nop
    3a4c:	bf00      	nop
    3a4e:	bf00      	nop
    3a50:	bf00      	nop
    3a52:	4298      	cmp	r0, r3
    3a54:	d1e3      	bne.n	3a1e <TV_OUT_handler+0x72>
    3a56:	2200      	movs	r2, #0
    3a58:	4b0e      	ldr	r3, [pc, #56]	; (3a94 <TV_OUT_handler+0xe8>)
    3a5a:	60da      	str	r2, [r3, #12]
    3a5c:	4a06      	ldr	r2, [pc, #24]	; (3a78 <TV_OUT_handler+0xcc>)
    3a5e:	6a13      	ldr	r3, [r2, #32]
    3a60:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    3a64:	6213      	str	r3, [r2, #32]
    3a66:	4a06      	ldr	r2, [pc, #24]	; (3a80 <TV_OUT_handler+0xd4>)
    3a68:	6913      	ldr	r3, [r2, #16]
    3a6a:	f023 0304 	bic.w	r3, r3, #4
    3a6e:	6113      	str	r3, [r2, #16]
    3a70:	bc11      	pop	{r0, r4}
    3a72:	4685      	mov	sp, r0
    3a74:	4770      	bx	lr
    3a76:	bf00      	nop
    3a78:	40000400 	.word	0x40000400
    3a7c:	200004f4 	.word	0x200004f4
    3a80:	40012c00 	.word	0x40012c00
    3a84:	200004f6 	.word	0x200004f6
    3a88:	20002500 	.word	0x20002500
    3a8c:	20004c60 	.word	0x20004c60
    3a90:	000042fc 	.word	0x000042fc
    3a94:	40010800 	.word	0x40010800

00003a98 <TV_SYNC_handler>:
    3a98:	4668      	mov	r0, sp
    3a9a:	f020 0107 	bic.w	r1, r0, #7
    3a9e:	468d      	mov	sp, r1
    3aa0:	b401      	push	{r0}
    3aa2:	4a81      	ldr	r2, [pc, #516]	; (3ca8 <TV_SYNC_handler+0x210>)
    3aa4:	8813      	ldrh	r3, [r2, #0]
    3aa6:	3301      	adds	r3, #1
    3aa8:	b29b      	uxth	r3, r3
    3aaa:	8013      	strh	r3, [r2, #0]
    3aac:	4b7f      	ldr	r3, [pc, #508]	; (3cac <TV_SYNC_handler+0x214>)
    3aae:	881b      	ldrh	r3, [r3, #0]
    3ab0:	b29b      	uxth	r3, r3
    3ab2:	2b07      	cmp	r3, #7
    3ab4:	f200 808e 	bhi.w	3bd4 <TV_SYNC_handler+0x13c>
    3ab8:	e8df f013 	tbh	[pc, r3, lsl #1]
    3abc:	002a0008 	.word	0x002a0008
    3ac0:	006c004a 	.word	0x006c004a
    3ac4:	00a30094 	.word	0x00a30094
    3ac8:	00ce00b7 	.word	0x00ce00b7
    3acc:	4b78      	ldr	r3, [pc, #480]	; (3cb0 <TV_SYNC_handler+0x218>)
    3ace:	881b      	ldrh	r3, [r3, #0]
    3ad0:	b29b      	uxth	r3, r3
    3ad2:	b18b      	cbz	r3, 3af8 <TV_SYNC_handler+0x60>
    3ad4:	4a76      	ldr	r2, [pc, #472]	; (3cb0 <TV_SYNC_handler+0x218>)
    3ad6:	8813      	ldrh	r3, [r2, #0]
    3ad8:	3301      	adds	r3, #1
    3ada:	b29b      	uxth	r3, r3
    3adc:	8013      	strh	r3, [r2, #0]
    3ade:	8813      	ldrh	r3, [r2, #0]
    3ae0:	b29b      	uxth	r3, r3
    3ae2:	2b06      	cmp	r3, #6
    3ae4:	d176      	bne.n	3bd4 <TV_SYNC_handler+0x13c>
    3ae6:	2200      	movs	r2, #0
    3ae8:	4b71      	ldr	r3, [pc, #452]	; (3cb0 <TV_SYNC_handler+0x218>)
    3aea:	801a      	strh	r2, [r3, #0]
    3aec:	4a6f      	ldr	r2, [pc, #444]	; (3cac <TV_SYNC_handler+0x214>)
    3aee:	8813      	ldrh	r3, [r2, #0]
    3af0:	3301      	adds	r3, #1
    3af2:	b29b      	uxth	r3, r3
    3af4:	8013      	strh	r3, [r2, #0]
    3af6:	e06d      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3af8:	4b6e      	ldr	r3, [pc, #440]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3afa:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3afe:	62da      	str	r2, [r3, #44]	; 0x2c
    3b00:	22a4      	movs	r2, #164	; 0xa4
    3b02:	635a      	str	r2, [r3, #52]	; 0x34
    3b04:	4a6a      	ldr	r2, [pc, #424]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b06:	8813      	ldrh	r3, [r2, #0]
    3b08:	3301      	adds	r3, #1
    3b0a:	b29b      	uxth	r3, r3
    3b0c:	8013      	strh	r3, [r2, #0]
    3b0e:	e061      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3b10:	4b67      	ldr	r3, [pc, #412]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b12:	881b      	ldrh	r3, [r3, #0]
    3b14:	b29b      	uxth	r3, r3
    3b16:	b18b      	cbz	r3, 3b3c <TV_SYNC_handler+0xa4>
    3b18:	4a65      	ldr	r2, [pc, #404]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b1a:	8813      	ldrh	r3, [r2, #0]
    3b1c:	3301      	adds	r3, #1
    3b1e:	b29b      	uxth	r3, r3
    3b20:	8013      	strh	r3, [r2, #0]
    3b22:	8813      	ldrh	r3, [r2, #0]
    3b24:	b29b      	uxth	r3, r3
    3b26:	2b06      	cmp	r3, #6
    3b28:	d154      	bne.n	3bd4 <TV_SYNC_handler+0x13c>
    3b2a:	2200      	movs	r2, #0
    3b2c:	4b60      	ldr	r3, [pc, #384]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b2e:	801a      	strh	r2, [r3, #0]
    3b30:	4a5e      	ldr	r2, [pc, #376]	; (3cac <TV_SYNC_handler+0x214>)
    3b32:	8813      	ldrh	r3, [r2, #0]
    3b34:	3301      	adds	r3, #1
    3b36:	b29b      	uxth	r3, r3
    3b38:	8013      	strh	r3, [r2, #0]
    3b3a:	e04b      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3b3c:	f240 7294 	movw	r2, #1940	; 0x794
    3b40:	4b5c      	ldr	r3, [pc, #368]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3b42:	635a      	str	r2, [r3, #52]	; 0x34
    3b44:	4a5a      	ldr	r2, [pc, #360]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b46:	8813      	ldrh	r3, [r2, #0]
    3b48:	3301      	adds	r3, #1
    3b4a:	b29b      	uxth	r3, r3
    3b4c:	8013      	strh	r3, [r2, #0]
    3b4e:	e041      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3b50:	4b57      	ldr	r3, [pc, #348]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b52:	881b      	ldrh	r3, [r3, #0]
    3b54:	b29b      	uxth	r3, r3
    3b56:	b153      	cbz	r3, 3b6e <TV_SYNC_handler+0xd6>
    3b58:	4b55      	ldr	r3, [pc, #340]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b5a:	881b      	ldrh	r3, [r3, #0]
    3b5c:	b29b      	uxth	r3, r3
    3b5e:	2b06      	cmp	r3, #6
    3b60:	d00e      	beq.n	3b80 <TV_SYNC_handler+0xe8>
    3b62:	4a53      	ldr	r2, [pc, #332]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b64:	8813      	ldrh	r3, [r2, #0]
    3b66:	3301      	adds	r3, #1
    3b68:	b29b      	uxth	r3, r3
    3b6a:	8013      	strh	r3, [r2, #0]
    3b6c:	e032      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3b6e:	22a4      	movs	r2, #164	; 0xa4
    3b70:	4b50      	ldr	r3, [pc, #320]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3b72:	635a      	str	r2, [r3, #52]	; 0x34
    3b74:	4a4e      	ldr	r2, [pc, #312]	; (3cb0 <TV_SYNC_handler+0x218>)
    3b76:	8813      	ldrh	r3, [r2, #0]
    3b78:	3301      	adds	r3, #1
    3b7a:	b29b      	uxth	r3, r3
    3b7c:	8013      	strh	r3, [r2, #0]
    3b7e:	e029      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3b80:	4a4a      	ldr	r2, [pc, #296]	; (3cac <TV_SYNC_handler+0x214>)
    3b82:	8813      	ldrh	r3, [r2, #0]
    3b84:	3301      	adds	r3, #1
    3b86:	b29b      	uxth	r3, r3
    3b88:	8013      	strh	r3, [r2, #0]
    3b8a:	4b4b      	ldr	r3, [pc, #300]	; (3cb8 <TV_SYNC_handler+0x220>)
    3b8c:	881b      	ldrh	r3, [r3, #0]
    3b8e:	f013 0f01 	tst.w	r3, #1
    3b92:	d01f      	beq.n	3bd4 <TV_SYNC_handler+0x13c>
    3b94:	4a47      	ldr	r2, [pc, #284]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3b96:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3b9a:	62d3      	str	r3, [r2, #44]	; 0x2c
    3b9c:	f44f 73a8 	mov.w	r3, #336	; 0x150
    3ba0:	6353      	str	r3, [r2, #52]	; 0x34
    3ba2:	4945      	ldr	r1, [pc, #276]	; (3cb8 <TV_SYNC_handler+0x220>)
    3ba4:	880b      	ldrh	r3, [r1, #0]
    3ba6:	f023 0302 	bic.w	r3, r3, #2
    3baa:	041b      	lsls	r3, r3, #16
    3bac:	0c1b      	lsrs	r3, r3, #16
    3bae:	800b      	strh	r3, [r1, #0]
    3bb0:	493d      	ldr	r1, [pc, #244]	; (3ca8 <TV_SYNC_handler+0x210>)
    3bb2:	880b      	ldrh	r3, [r1, #0]
    3bb4:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3bb8:	800b      	strh	r3, [r1, #0]
    3bba:	493c      	ldr	r1, [pc, #240]	; (3cac <TV_SYNC_handler+0x214>)
    3bbc:	880b      	ldrh	r3, [r1, #0]
    3bbe:	3301      	adds	r3, #1
    3bc0:	b29b      	uxth	r3, r3
    3bc2:	800b      	strh	r3, [r1, #0]
    3bc4:	6913      	ldr	r3, [r2, #16]
    3bc6:	f023 0304 	bic.w	r3, r3, #4
    3bca:	6113      	str	r3, [r2, #16]
    3bcc:	68d3      	ldr	r3, [r2, #12]
    3bce:	f043 0304 	orr.w	r3, r3, #4
    3bd2:	60d3      	str	r3, [r2, #12]
    3bd4:	4a37      	ldr	r2, [pc, #220]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3bd6:	6913      	ldr	r3, [r2, #16]
    3bd8:	f023 0301 	bic.w	r3, r3, #1
    3bdc:	6113      	str	r3, [r2, #16]
    3bde:	bc01      	pop	{r0}
    3be0:	4685      	mov	sp, r0
    3be2:	4770      	bx	lr
    3be4:	4b35      	ldr	r3, [pc, #212]	; (3cbc <TV_SYNC_handler+0x224>)
    3be6:	689b      	ldr	r3, [r3, #8]
    3be8:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    3bec:	f023 030f 	bic.w	r3, r3, #15
    3bf0:	b29b      	uxth	r3, r3
    3bf2:	4a33      	ldr	r2, [pc, #204]	; (3cc0 <TV_SYNC_handler+0x228>)
    3bf4:	8013      	strh	r3, [r2, #0]
    3bf6:	4a2d      	ldr	r2, [pc, #180]	; (3cac <TV_SYNC_handler+0x214>)
    3bf8:	8813      	ldrh	r3, [r2, #0]
    3bfa:	3301      	adds	r3, #1
    3bfc:	b29b      	uxth	r3, r3
    3bfe:	8013      	strh	r3, [r2, #0]
    3c00:	e7e8      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3c02:	4b29      	ldr	r3, [pc, #164]	; (3ca8 <TV_SYNC_handler+0x210>)
    3c04:	881b      	ldrh	r3, [r3, #0]
    3c06:	b29b      	uxth	r3, r3
    3c08:	2b16      	cmp	r3, #22
    3c0a:	d1e3      	bne.n	3bd4 <TV_SYNC_handler+0x13c>
    3c0c:	4a27      	ldr	r2, [pc, #156]	; (3cac <TV_SYNC_handler+0x214>)
    3c0e:	8813      	ldrh	r3, [r2, #0]
    3c10:	3301      	adds	r3, #1
    3c12:	b29b      	uxth	r3, r3
    3c14:	8013      	strh	r3, [r2, #0]
    3c16:	2200      	movs	r2, #0
    3c18:	4b25      	ldr	r3, [pc, #148]	; (3cb0 <TV_SYNC_handler+0x218>)
    3c1a:	801a      	strh	r2, [r3, #0]
    3c1c:	4a26      	ldr	r2, [pc, #152]	; (3cb8 <TV_SYNC_handler+0x220>)
    3c1e:	8813      	ldrh	r3, [r2, #0]
    3c20:	b29b      	uxth	r3, r3
    3c22:	f043 0304 	orr.w	r3, r3, #4
    3c26:	8013      	strh	r3, [r2, #0]
    3c28:	e7d4      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3c2a:	4a21      	ldr	r2, [pc, #132]	; (3cb0 <TV_SYNC_handler+0x218>)
    3c2c:	8813      	ldrh	r3, [r2, #0]
    3c2e:	3301      	adds	r3, #1
    3c30:	b29b      	uxth	r3, r3
    3c32:	8013      	strh	r3, [r2, #0]
    3c34:	4b1c      	ldr	r3, [pc, #112]	; (3ca8 <TV_SYNC_handler+0x210>)
    3c36:	881b      	ldrh	r3, [r3, #0]
    3c38:	b29b      	uxth	r3, r3
    3c3a:	2bf6      	cmp	r3, #246	; 0xf6
    3c3c:	d1ca      	bne.n	3bd4 <TV_SYNC_handler+0x13c>
    3c3e:	4a1b      	ldr	r2, [pc, #108]	; (3cac <TV_SYNC_handler+0x214>)
    3c40:	8813      	ldrh	r3, [r2, #0]
    3c42:	3301      	adds	r3, #1
    3c44:	b29b      	uxth	r3, r3
    3c46:	8013      	strh	r3, [r2, #0]
    3c48:	4a1b      	ldr	r2, [pc, #108]	; (3cb8 <TV_SYNC_handler+0x220>)
    3c4a:	8813      	ldrh	r3, [r2, #0]
    3c4c:	f023 0304 	bic.w	r3, r3, #4
    3c50:	041b      	lsls	r3, r3, #16
    3c52:	0c1b      	lsrs	r3, r3, #16
    3c54:	8013      	strh	r3, [r2, #0]
    3c56:	e7bd      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3c58:	4b13      	ldr	r3, [pc, #76]	; (3ca8 <TV_SYNC_handler+0x210>)
    3c5a:	881b      	ldrh	r3, [r3, #0]
    3c5c:	b29b      	uxth	r3, r3
    3c5e:	f240 1207 	movw	r2, #263	; 0x107
    3c62:	4293      	cmp	r3, r2
    3c64:	d1b6      	bne.n	3bd4 <TV_SYNC_handler+0x13c>
    3c66:	4b14      	ldr	r3, [pc, #80]	; (3cb8 <TV_SYNC_handler+0x220>)
    3c68:	881b      	ldrh	r3, [r3, #0]
    3c6a:	f013 0f01 	tst.w	r3, #1
    3c6e:	d003      	beq.n	3c78 <TV_SYNC_handler+0x1e0>
    3c70:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3c74:	4b0f      	ldr	r3, [pc, #60]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3c76:	62da      	str	r2, [r3, #44]	; 0x2c
    3c78:	4a0f      	ldr	r2, [pc, #60]	; (3cb8 <TV_SYNC_handler+0x220>)
    3c7a:	8813      	ldrh	r3, [r2, #0]
    3c7c:	b29b      	uxth	r3, r3
    3c7e:	f083 0301 	eor.w	r3, r3, #1
    3c82:	8013      	strh	r3, [r2, #0]
    3c84:	8813      	ldrh	r3, [r2, #0]
    3c86:	b29b      	uxth	r3, r3
    3c88:	f043 0302 	orr.w	r3, r3, #2
    3c8c:	8013      	strh	r3, [r2, #0]
    3c8e:	2300      	movs	r3, #0
    3c90:	4a05      	ldr	r2, [pc, #20]	; (3ca8 <TV_SYNC_handler+0x210>)
    3c92:	8013      	strh	r3, [r2, #0]
    3c94:	4a06      	ldr	r2, [pc, #24]	; (3cb0 <TV_SYNC_handler+0x218>)
    3c96:	8013      	strh	r3, [r2, #0]
    3c98:	4a04      	ldr	r2, [pc, #16]	; (3cac <TV_SYNC_handler+0x214>)
    3c9a:	8013      	strh	r3, [r2, #0]
    3c9c:	4a05      	ldr	r2, [pc, #20]	; (3cb4 <TV_SYNC_handler+0x21c>)
    3c9e:	68d3      	ldr	r3, [r2, #12]
    3ca0:	f023 0304 	bic.w	r3, r3, #4
    3ca4:	60d3      	str	r3, [r2, #12]
    3ca6:	e795      	b.n	3bd4 <TV_SYNC_handler+0x13c>
    3ca8:	200004f8 	.word	0x200004f8
    3cac:	200004f2 	.word	0x200004f2
    3cb0:	200004f6 	.word	0x200004f6
    3cb4:	40012c00 	.word	0x40012c00
    3cb8:	200004f4 	.word	0x200004f4
    3cbc:	40010800 	.word	0x40010800
    3cc0:	200024fc 	.word	0x200024fc

00003cc4 <frame_sync>:
    3cc4:	b480      	push	{r7}
    3cc6:	af00      	add	r7, sp, #0
    3cc8:	bf00      	nop
    3cca:	4b05      	ldr	r3, [pc, #20]	; (3ce0 <frame_sync+0x1c>)
    3ccc:	881b      	ldrh	r3, [r3, #0]
    3cce:	b29b      	uxth	r3, r3
    3cd0:	f003 0302 	and.w	r3, r3, #2
    3cd4:	2b00      	cmp	r3, #0
    3cd6:	d0f8      	beq.n	3cca <frame_sync+0x6>
    3cd8:	bf00      	nop
    3cda:	46bd      	mov	sp, r7
    3cdc:	bc80      	pop	{r7}
    3cde:	4770      	bx	lr
    3ce0:	200004f4 	.word	0x200004f4

00003ce4 <set_palette>:
    3ce4:	b480      	push	{r7}
    3ce6:	b085      	sub	sp, #20
    3ce8:	af00      	add	r7, sp, #0
    3cea:	4603      	mov	r3, r0
    3cec:	71fb      	strb	r3, [r7, #7]
    3cee:	79fb      	ldrb	r3, [r7, #7]
    3cf0:	f003 0303 	and.w	r3, r3, #3
    3cf4:	71fb      	strb	r3, [r7, #7]
    3cf6:	2300      	movs	r3, #0
    3cf8:	60fb      	str	r3, [r7, #12]
    3cfa:	e007      	b.n	3d0c <set_palette+0x28>
    3cfc:	4a07      	ldr	r2, [pc, #28]	; (3d1c <set_palette+0x38>)
    3cfe:	68fb      	ldr	r3, [r7, #12]
    3d00:	4413      	add	r3, r2
    3d02:	79fa      	ldrb	r2, [r7, #7]
    3d04:	701a      	strb	r2, [r3, #0]
    3d06:	68fb      	ldr	r3, [r7, #12]
    3d08:	3301      	adds	r3, #1
    3d0a:	60fb      	str	r3, [r7, #12]
    3d0c:	68fb      	ldr	r3, [r7, #12]
    3d0e:	2b6f      	cmp	r3, #111	; 0x6f
    3d10:	ddf4      	ble.n	3cfc <set_palette+0x18>
    3d12:	bf00      	nop
    3d14:	3714      	adds	r7, #20
    3d16:	46bd      	mov	sp, r7
    3d18:	bc80      	pop	{r7}
    3d1a:	4770      	bx	lr
    3d1c:	20004c60 	.word	0x20004c60

00003d20 <btn_wait_any>:
    3d20:	b480      	push	{r7}
    3d22:	af00      	add	r7, sp, #0
    3d24:	bf00      	nop
    3d26:	4b0a      	ldr	r3, [pc, #40]	; (3d50 <btn_wait_any+0x30>)
    3d28:	881b      	ldrh	r3, [r3, #0]
    3d2a:	b29b      	uxth	r3, r3
    3d2c:	461a      	mov	r2, r3
    3d2e:	f24c 03f0 	movw	r3, #49392	; 0xc0f0
    3d32:	4013      	ands	r3, r2
    3d34:	f24c 02f0 	movw	r2, #49392	; 0xc0f0
    3d38:	4293      	cmp	r3, r2
    3d3a:	d0f4      	beq.n	3d26 <btn_wait_any+0x6>
    3d3c:	4b04      	ldr	r3, [pc, #16]	; (3d50 <btn_wait_any+0x30>)
    3d3e:	881b      	ldrh	r3, [r3, #0]
    3d40:	b29b      	uxth	r3, r3
    3d42:	43db      	mvns	r3, r3
    3d44:	b29b      	uxth	r3, r3
    3d46:	4618      	mov	r0, r3
    3d48:	46bd      	mov	sp, r7
    3d4a:	bc80      	pop	{r7}
    3d4c:	4770      	bx	lr
    3d4e:	bf00      	nop
    3d50:	200024fc 	.word	0x200024fc
