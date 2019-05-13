
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 71 30 00 00     C...I...O...q0..
      20:	71 30 00 00 71 30 00 00 71 30 00 00 55 02 00 00     q0..q0..q0..U...
      30:	71 30 00 00 71 30 00 00 5b 02 00 00 59 31 00 00     q0..q0..[...Y1..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 a9 2d 00 00     g...m...y....-..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 71 30 00 00 71 30 00 00 b5 02 00 00     ....q0..q0......
      80:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..
      90:	71 30 00 00 71 30 00 00 71 30 00 00 bb 02 00 00     q0..q0..q0......
      a0:	71 30 00 00 71 39 00 00 71 30 00 00 85 38 00 00     q0..q9..q0...8..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 71 30 00 00     ............q0..
      c0:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..
      d0:	71 30 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     q0..............
      e0:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..
      f0:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..
     100:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..
     110:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..
     120:	71 30 00 00 71 30 00 00 71 30 00 00 71 30 00 00     q0..q0..q0..q0..

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
     18e:	f001 fe2b 	bl	1de8 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005a 	.word	0x2000005a
     1a0:	20003cd0 	.word	0x20003cd0
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
     1dc:	f002 ff50 	bl	3080 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 ff44 	bl	3080 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 ff38 	bl	3080 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 ff33 	bl	3080 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00004180 	.word	0x00004180
     230:	00004198 	.word	0x00004198
     234:	000041a4 	.word	0x000041a4
     238:	000041b4 	.word	0x000041b4

0000023c <NMI_handler>:
     23c:	f002 ff18 	bl	3070 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 ff15 	bl	3070 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 ff12 	bl	3070 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 ff0f 	bl	3070 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 ff0c 	bl	3070 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 ff09 	bl	3070 <reset_mcu>
     25e:	bf00      	nop
     260:	f002 ff06 	bl	3070 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 ff03 	bl	3070 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 ff00 	bl	3070 <reset_mcu>
     270:	bf00      	nop
     272:	f002 fefd 	bl	3070 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 fefa 	bl	3070 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 fef7 	bl	3070 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 fef4 	bl	3070 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 fef1 	bl	3070 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 feee 	bl	3070 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 feeb 	bl	3070 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 fee8 	bl	3070 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 fee5 	bl	3070 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 fee2 	bl	3070 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 fedf 	bl	3070 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 fedc 	bl	3070 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 fed9 	bl	3070 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 fed6 	bl	3070 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 fed3 	bl	3070 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 fed0 	bl	3070 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 fecd 	bl	3070 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f002 feca 	bl	3070 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f002 fec7 	bl	3070 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f002 fec4 	bl	3070 <reset_mcu>
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
     3c8:	f002 ff12 	bl	31f0 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f002 feff 	bl	31d0 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 f848 	bl	3468 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 f845 	bl	3468 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 f861 	bl	34ae <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 f85a 	bl	34ae <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 f853 	bl	34ae <print_int>
     408:	f002 fef2 	bl	31f0 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 f82b 	bl	3468 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 f848 	bl	34ae <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 f822 	bl	3468 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 f83f 	bl	34ae <print_int>
     430:	f002 fede 	bl	31f0 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 f817 	bl	3468 <print>
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
     44e:	f003 f82e 	bl	34ae <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f002 fec7 	bl	31f0 <new_line>
     462:	f003 f955 	bl	3710 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	00003c2c 	.word	0x00003c2c
     474:	2000005c 	.word	0x2000005c
     478:	00003c30 	.word	0x00003c30
     47c:	00003c34 	.word	0x00003c34
     480:	00003c3c 	.word	0x00003c3c

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
     52e:	b085      	sub	sp, #20
     530:	af02      	add	r7, sp, #8
     532:	4bc0      	ldr	r3, [pc, #768]	; (834 <schipp+0x308>)
     534:	2200      	movs	r2, #0
     536:	801a      	strh	r2, [r3, #0]
     538:	4bbe      	ldr	r3, [pc, #760]	; (834 <schipp+0x308>)
     53a:	2200      	movs	r2, #0
     53c:	711a      	strb	r2, [r3, #4]
     53e:	4bbd      	ldr	r3, [pc, #756]	; (834 <schipp+0x308>)
     540:	2200      	movs	r2, #0
     542:	805a      	strh	r2, [r3, #2]
     544:	4bbb      	ldr	r3, [pc, #748]	; (834 <schipp+0x308>)
     546:	881b      	ldrh	r3, [r3, #0]
     548:	461a      	mov	r2, r3
     54a:	4bbb      	ldr	r3, [pc, #748]	; (838 <schipp+0x30c>)
     54c:	5c9a      	ldrb	r2, [r3, r2]
     54e:	4bb9      	ldr	r3, [pc, #740]	; (834 <schipp+0x308>)
     550:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
     554:	4bb7      	ldr	r3, [pc, #732]	; (834 <schipp+0x308>)
     556:	881b      	ldrh	r3, [r3, #0]
     558:	3301      	adds	r3, #1
     55a:	4ab7      	ldr	r2, [pc, #732]	; (838 <schipp+0x30c>)
     55c:	5cd2      	ldrb	r2, [r2, r3]
     55e:	4bb5      	ldr	r3, [pc, #724]	; (834 <schipp+0x308>)
     560:	f883 2027 	strb.w	r2, [r3, #39]	; 0x27
     564:	4bb3      	ldr	r3, [pc, #716]	; (834 <schipp+0x308>)
     566:	881b      	ldrh	r3, [r3, #0]
     568:	3302      	adds	r3, #2
     56a:	b29a      	uxth	r2, r3
     56c:	4bb1      	ldr	r3, [pc, #708]	; (834 <schipp+0x308>)
     56e:	801a      	strh	r2, [r3, #0]
     570:	4bb0      	ldr	r3, [pc, #704]	; (834 <schipp+0x308>)
     572:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     576:	f003 030f 	and.w	r3, r3, #15
     57a:	71bb      	strb	r3, [r7, #6]
     57c:	4bad      	ldr	r3, [pc, #692]	; (834 <schipp+0x308>)
     57e:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     582:	091b      	lsrs	r3, r3, #4
     584:	717b      	strb	r3, [r7, #5]
     586:	4bab      	ldr	r3, [pc, #684]	; (834 <schipp+0x308>)
     588:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     58c:	091b      	lsrs	r3, r3, #4
     58e:	b2db      	uxtb	r3, r3
     590:	2b0f      	cmp	r3, #15
     592:	d8d7      	bhi.n	544 <schipp+0x18>
     594:	a201      	add	r2, pc, #4	; (adr r2, 59c <schipp+0x70>)
     596:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     59a:	bf00      	nop
     59c:	000005dd 	.word	0x000005dd
     5a0:	0000070b 	.word	0x0000070b
     5a4:	0000072d 	.word	0x0000072d
     5a8:	0000076f 	.word	0x0000076f
     5ac:	00000793 	.word	0x00000793
     5b0:	000007b7 	.word	0x000007b7
     5b4:	000007dd 	.word	0x000007dd
     5b8:	000007f1 	.word	0x000007f1
     5bc:	0000083d 	.word	0x0000083d
     5c0:	00000a2b 	.word	0x00000a2b
     5c4:	00000cc5 	.word	0x00000cc5
     5c8:	00000ce5 	.word	0x00000ce5
     5cc:	00000d13 	.word	0x00000d13
     5d0:	00000d3d 	.word	0x00000d3d
     5d4:	00000dc7 	.word	0x00000dc7
     5d8:	00000e2b 	.word	0x00000e2b
     5dc:	4b95      	ldr	r3, [pc, #596]	; (834 <schipp+0x308>)
     5de:	f893 2026 	ldrb.w	r2, [r3, #38]	; 0x26
     5e2:	4b94      	ldr	r3, [pc, #592]	; (834 <schipp+0x308>)
     5e4:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     5e8:	4313      	orrs	r3, r2
     5ea:	b2db      	uxtb	r3, r3
     5ec:	2b00      	cmp	r3, #0
     5ee:	f000 852b 	beq.w	1048 <schipp+0xb1c>
     5f2:	4b90      	ldr	r3, [pc, #576]	; (834 <schipp+0x308>)
     5f4:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     5f8:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5fc:	2bc0      	cmp	r3, #192	; 0xc0
     5fe:	d10a      	bne.n	616 <schipp+0xea>
     600:	4b8c      	ldr	r3, [pc, #560]	; (834 <schipp+0x308>)
     602:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     606:	f003 030f 	and.w	r3, r3, #15
     60a:	b2db      	uxtb	r3, r3
     60c:	4618      	mov	r0, r3
     60e:	f001 fb0b 	bl	1c28 <gfx_scrolldown>
     612:	f000 bd19 	b.w	1048 <schipp+0xb1c>
     616:	4b87      	ldr	r3, [pc, #540]	; (834 <schipp+0x308>)
     618:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     61c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     620:	2bd0      	cmp	r3, #208	; 0xd0
     622:	d10a      	bne.n	63a <schipp+0x10e>
     624:	4b83      	ldr	r3, [pc, #524]	; (834 <schipp+0x308>)
     626:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     62a:	f003 030f 	and.w	r3, r3, #15
     62e:	b2db      	uxtb	r3, r3
     630:	4618      	mov	r0, r3
     632:	f001 fabf 	bl	1bb4 <gfx_scrollup>
     636:	f000 bd07 	b.w	1048 <schipp+0xb1c>
     63a:	4b7e      	ldr	r3, [pc, #504]	; (834 <schipp+0x308>)
     63c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     640:	3be0      	subs	r3, #224	; 0xe0
     642:	2b1f      	cmp	r3, #31
     644:	d85b      	bhi.n	6fe <schipp+0x1d2>
     646:	a201      	add	r2, pc, #4	; (adr r2, 64c <schipp+0x120>)
     648:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     64c:	000006cd 	.word	0x000006cd
     650:	000006ff 	.word	0x000006ff
     654:	000006ff 	.word	0x000006ff
     658:	000006ff 	.word	0x000006ff
     65c:	000006ff 	.word	0x000006ff
     660:	000006ff 	.word	0x000006ff
     664:	000006ff 	.word	0x000006ff
     668:	000006ff 	.word	0x000006ff
     66c:	000006ff 	.word	0x000006ff
     670:	000006ff 	.word	0x000006ff
     674:	000006ff 	.word	0x000006ff
     678:	000006ff 	.word	0x000006ff
     67c:	000006ff 	.word	0x000006ff
     680:	000006ff 	.word	0x000006ff
     684:	000006d3 	.word	0x000006d3
     688:	000006ff 	.word	0x000006ff
     68c:	000006ff 	.word	0x000006ff
     690:	000006ff 	.word	0x000006ff
     694:	000006ff 	.word	0x000006ff
     698:	000006ff 	.word	0x000006ff
     69c:	000006ff 	.word	0x000006ff
     6a0:	000006ff 	.word	0x000006ff
     6a4:	000006ff 	.word	0x000006ff
     6a8:	000006ff 	.word	0x000006ff
     6ac:	000006ff 	.word	0x000006ff
     6b0:	000006ff 	.word	0x000006ff
     6b4:	000006ff 	.word	0x000006ff
     6b8:	000006ed 	.word	0x000006ed
     6bc:	000006f3 	.word	0x000006f3
     6c0:	000006f9 	.word	0x000006f9
     6c4:	00000705 	.word	0x00000705
     6c8:	00000705 	.word	0x00000705
     6cc:	f003 f82a 	bl	3724 <clear_screen>
     6d0:	e019      	b.n	706 <schipp+0x1da>
     6d2:	4b58      	ldr	r3, [pc, #352]	; (834 <schipp+0x308>)
     6d4:	791b      	ldrb	r3, [r3, #4]
     6d6:	1e5a      	subs	r2, r3, #1
     6d8:	b2d1      	uxtb	r1, r2
     6da:	4a56      	ldr	r2, [pc, #344]	; (834 <schipp+0x308>)
     6dc:	7111      	strb	r1, [r2, #4]
     6de:	4a55      	ldr	r2, [pc, #340]	; (834 <schipp+0x308>)
     6e0:	3314      	adds	r3, #20
     6e2:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     6e6:	4b53      	ldr	r3, [pc, #332]	; (834 <schipp+0x308>)
     6e8:	801a      	strh	r2, [r3, #0]
     6ea:	e00c      	b.n	706 <schipp+0x1da>
     6ec:	f7ff feca 	bl	484 <chip_scroll_right>
     6f0:	e009      	b.n	706 <schipp+0x1da>
     6f2:	f7ff fecd 	bl	490 <chip_scroll_left>
     6f6:	e006      	b.n	706 <schipp+0x1da>
     6f8:	2301      	movs	r3, #1
     6fa:	f000 bcb1 	b.w	1060 <schipp+0xb34>
     6fe:	2302      	movs	r3, #2
     700:	f000 bcae 	b.w	1060 <schipp+0xb34>
     704:	bf00      	nop
     706:	f000 bc9f 	b.w	1048 <schipp+0xb1c>
     70a:	4b4a      	ldr	r3, [pc, #296]	; (834 <schipp+0x308>)
     70c:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     710:	021b      	lsls	r3, r3, #8
     712:	4a48      	ldr	r2, [pc, #288]	; (834 <schipp+0x308>)
     714:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     718:	4313      	orrs	r3, r2
     71a:	005b      	lsls	r3, r3, #1
     71c:	b29b      	uxth	r3, r3
     71e:	f3c3 030b 	ubfx	r3, r3, #0, #12
     722:	b29a      	uxth	r2, r3
     724:	4b43      	ldr	r3, [pc, #268]	; (834 <schipp+0x308>)
     726:	801a      	strh	r2, [r3, #0]
     728:	f000 bc98 	b.w	105c <schipp+0xb30>
     72c:	4b41      	ldr	r3, [pc, #260]	; (834 <schipp+0x308>)
     72e:	791b      	ldrb	r3, [r3, #4]
     730:	3301      	adds	r3, #1
     732:	b2da      	uxtb	r2, r3
     734:	4b3f      	ldr	r3, [pc, #252]	; (834 <schipp+0x308>)
     736:	711a      	strb	r2, [r3, #4]
     738:	4b3e      	ldr	r3, [pc, #248]	; (834 <schipp+0x308>)
     73a:	791b      	ldrb	r3, [r3, #4]
     73c:	4618      	mov	r0, r3
     73e:	4b3d      	ldr	r3, [pc, #244]	; (834 <schipp+0x308>)
     740:	8819      	ldrh	r1, [r3, #0]
     742:	4a3c      	ldr	r2, [pc, #240]	; (834 <schipp+0x308>)
     744:	f100 0314 	add.w	r3, r0, #20
     748:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     74c:	4b39      	ldr	r3, [pc, #228]	; (834 <schipp+0x308>)
     74e:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     752:	021b      	lsls	r3, r3, #8
     754:	4a37      	ldr	r2, [pc, #220]	; (834 <schipp+0x308>)
     756:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     75a:	4313      	orrs	r3, r2
     75c:	005b      	lsls	r3, r3, #1
     75e:	b29b      	uxth	r3, r3
     760:	f3c3 030b 	ubfx	r3, r3, #0, #12
     764:	b29a      	uxth	r2, r3
     766:	4b33      	ldr	r3, [pc, #204]	; (834 <schipp+0x308>)
     768:	801a      	strh	r2, [r3, #0]
     76a:	f000 bc77 	b.w	105c <schipp+0xb30>
     76e:	79bb      	ldrb	r3, [r7, #6]
     770:	4a30      	ldr	r2, [pc, #192]	; (834 <schipp+0x308>)
     772:	4413      	add	r3, r2
     774:	795a      	ldrb	r2, [r3, #5]
     776:	4b2f      	ldr	r3, [pc, #188]	; (834 <schipp+0x308>)
     778:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     77c:	429a      	cmp	r2, r3
     77e:	f040 8466 	bne.w	104e <schipp+0xb22>
     782:	4b2c      	ldr	r3, [pc, #176]	; (834 <schipp+0x308>)
     784:	881b      	ldrh	r3, [r3, #0]
     786:	3302      	adds	r3, #2
     788:	b29a      	uxth	r2, r3
     78a:	4b2a      	ldr	r3, [pc, #168]	; (834 <schipp+0x308>)
     78c:	801a      	strh	r2, [r3, #0]
     78e:	f000 bc5e 	b.w	104e <schipp+0xb22>
     792:	79bb      	ldrb	r3, [r7, #6]
     794:	4a27      	ldr	r2, [pc, #156]	; (834 <schipp+0x308>)
     796:	4413      	add	r3, r2
     798:	795a      	ldrb	r2, [r3, #5]
     79a:	4b26      	ldr	r3, [pc, #152]	; (834 <schipp+0x308>)
     79c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     7a0:	429a      	cmp	r2, r3
     7a2:	f000 8457 	beq.w	1054 <schipp+0xb28>
     7a6:	4b23      	ldr	r3, [pc, #140]	; (834 <schipp+0x308>)
     7a8:	881b      	ldrh	r3, [r3, #0]
     7aa:	3302      	adds	r3, #2
     7ac:	b29a      	uxth	r2, r3
     7ae:	4b21      	ldr	r3, [pc, #132]	; (834 <schipp+0x308>)
     7b0:	801a      	strh	r2, [r3, #0]
     7b2:	f000 bc4f 	b.w	1054 <schipp+0xb28>
     7b6:	79bb      	ldrb	r3, [r7, #6]
     7b8:	4a1e      	ldr	r2, [pc, #120]	; (834 <schipp+0x308>)
     7ba:	4413      	add	r3, r2
     7bc:	795a      	ldrb	r2, [r3, #5]
     7be:	797b      	ldrb	r3, [r7, #5]
     7c0:	491c      	ldr	r1, [pc, #112]	; (834 <schipp+0x308>)
     7c2:	440b      	add	r3, r1
     7c4:	795b      	ldrb	r3, [r3, #5]
     7c6:	429a      	cmp	r2, r3
     7c8:	f040 8447 	bne.w	105a <schipp+0xb2e>
     7cc:	4b19      	ldr	r3, [pc, #100]	; (834 <schipp+0x308>)
     7ce:	881b      	ldrh	r3, [r3, #0]
     7d0:	3302      	adds	r3, #2
     7d2:	b29a      	uxth	r2, r3
     7d4:	4b17      	ldr	r3, [pc, #92]	; (834 <schipp+0x308>)
     7d6:	801a      	strh	r2, [r3, #0]
     7d8:	f000 bc3f 	b.w	105a <schipp+0xb2e>
     7dc:	79bb      	ldrb	r3, [r7, #6]
     7de:	4a15      	ldr	r2, [pc, #84]	; (834 <schipp+0x308>)
     7e0:	f892 1027 	ldrb.w	r1, [r2, #39]	; 0x27
     7e4:	4a13      	ldr	r2, [pc, #76]	; (834 <schipp+0x308>)
     7e6:	4413      	add	r3, r2
     7e8:	460a      	mov	r2, r1
     7ea:	715a      	strb	r2, [r3, #5]
     7ec:	f000 bc36 	b.w	105c <schipp+0xb30>
     7f0:	79bb      	ldrb	r3, [r7, #6]
     7f2:	4a10      	ldr	r2, [pc, #64]	; (834 <schipp+0x308>)
     7f4:	4413      	add	r3, r2
     7f6:	795b      	ldrb	r3, [r3, #5]
     7f8:	461a      	mov	r2, r3
     7fa:	4b0e      	ldr	r3, [pc, #56]	; (834 <schipp+0x308>)
     7fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     800:	4413      	add	r3, r2
     802:	2bff      	cmp	r3, #255	; 0xff
     804:	bfcc      	ite	gt
     806:	2301      	movgt	r3, #1
     808:	2300      	movle	r3, #0
     80a:	b2db      	uxtb	r3, r3
     80c:	71fb      	strb	r3, [r7, #7]
     80e:	79bb      	ldrb	r3, [r7, #6]
     810:	79ba      	ldrb	r2, [r7, #6]
     812:	4908      	ldr	r1, [pc, #32]	; (834 <schipp+0x308>)
     814:	440a      	add	r2, r1
     816:	7951      	ldrb	r1, [r2, #5]
     818:	4a06      	ldr	r2, [pc, #24]	; (834 <schipp+0x308>)
     81a:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     81e:	440a      	add	r2, r1
     820:	b2d1      	uxtb	r1, r2
     822:	4a04      	ldr	r2, [pc, #16]	; (834 <schipp+0x308>)
     824:	4413      	add	r3, r2
     826:	460a      	mov	r2, r1
     828:	715a      	strb	r2, [r3, #5]
     82a:	4a02      	ldr	r2, [pc, #8]	; (834 <schipp+0x308>)
     82c:	79fb      	ldrb	r3, [r7, #7]
     82e:	7513      	strb	r3, [r2, #20]
     830:	f000 bc14 	b.w	105c <schipp+0xb30>
     834:	2000005c 	.word	0x2000005c
     838:	200004fc 	.word	0x200004fc
     83c:	4ba0      	ldr	r3, [pc, #640]	; (ac0 <schipp+0x594>)
     83e:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     842:	f003 030f 	and.w	r3, r3, #15
     846:	2b0e      	cmp	r3, #14
     848:	f200 80ec 	bhi.w	a24 <schipp+0x4f8>
     84c:	a201      	add	r2, pc, #4	; (adr r2, 854 <schipp+0x328>)
     84e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     852:	bf00      	nop
     854:	00000891 	.word	0x00000891
     858:	000008a5 	.word	0x000008a5
     85c:	000008c5 	.word	0x000008c5
     860:	000008e5 	.word	0x000008e5
     864:	00000905 	.word	0x00000905
     868:	0000094b 	.word	0x0000094b
     86c:	0000098d 	.word	0x0000098d
     870:	000009b9 	.word	0x000009b9
     874:	00000a25 	.word	0x00000a25
     878:	00000a25 	.word	0x00000a25
     87c:	00000a25 	.word	0x00000a25
     880:	00000a25 	.word	0x00000a25
     884:	00000a25 	.word	0x00000a25
     888:	00000a25 	.word	0x00000a25
     88c:	000009fb 	.word	0x000009fb
     890:	79bb      	ldrb	r3, [r7, #6]
     892:	797a      	ldrb	r2, [r7, #5]
     894:	498a      	ldr	r1, [pc, #552]	; (ac0 <schipp+0x594>)
     896:	440a      	add	r2, r1
     898:	7951      	ldrb	r1, [r2, #5]
     89a:	4a89      	ldr	r2, [pc, #548]	; (ac0 <schipp+0x594>)
     89c:	4413      	add	r3, r2
     89e:	460a      	mov	r2, r1
     8a0:	715a      	strb	r2, [r3, #5]
     8a2:	e0c1      	b.n	a28 <schipp+0x4fc>
     8a4:	79bb      	ldrb	r3, [r7, #6]
     8a6:	79ba      	ldrb	r2, [r7, #6]
     8a8:	4985      	ldr	r1, [pc, #532]	; (ac0 <schipp+0x594>)
     8aa:	440a      	add	r2, r1
     8ac:	7951      	ldrb	r1, [r2, #5]
     8ae:	797a      	ldrb	r2, [r7, #5]
     8b0:	4883      	ldr	r0, [pc, #524]	; (ac0 <schipp+0x594>)
     8b2:	4402      	add	r2, r0
     8b4:	7952      	ldrb	r2, [r2, #5]
     8b6:	430a      	orrs	r2, r1
     8b8:	b2d1      	uxtb	r1, r2
     8ba:	4a81      	ldr	r2, [pc, #516]	; (ac0 <schipp+0x594>)
     8bc:	4413      	add	r3, r2
     8be:	460a      	mov	r2, r1
     8c0:	715a      	strb	r2, [r3, #5]
     8c2:	e0b1      	b.n	a28 <schipp+0x4fc>
     8c4:	79bb      	ldrb	r3, [r7, #6]
     8c6:	79ba      	ldrb	r2, [r7, #6]
     8c8:	497d      	ldr	r1, [pc, #500]	; (ac0 <schipp+0x594>)
     8ca:	440a      	add	r2, r1
     8cc:	7951      	ldrb	r1, [r2, #5]
     8ce:	797a      	ldrb	r2, [r7, #5]
     8d0:	487b      	ldr	r0, [pc, #492]	; (ac0 <schipp+0x594>)
     8d2:	4402      	add	r2, r0
     8d4:	7952      	ldrb	r2, [r2, #5]
     8d6:	400a      	ands	r2, r1
     8d8:	b2d1      	uxtb	r1, r2
     8da:	4a79      	ldr	r2, [pc, #484]	; (ac0 <schipp+0x594>)
     8dc:	4413      	add	r3, r2
     8de:	460a      	mov	r2, r1
     8e0:	715a      	strb	r2, [r3, #5]
     8e2:	e0a1      	b.n	a28 <schipp+0x4fc>
     8e4:	79bb      	ldrb	r3, [r7, #6]
     8e6:	79ba      	ldrb	r2, [r7, #6]
     8e8:	4975      	ldr	r1, [pc, #468]	; (ac0 <schipp+0x594>)
     8ea:	440a      	add	r2, r1
     8ec:	7951      	ldrb	r1, [r2, #5]
     8ee:	797a      	ldrb	r2, [r7, #5]
     8f0:	4873      	ldr	r0, [pc, #460]	; (ac0 <schipp+0x594>)
     8f2:	4402      	add	r2, r0
     8f4:	7952      	ldrb	r2, [r2, #5]
     8f6:	404a      	eors	r2, r1
     8f8:	b2d1      	uxtb	r1, r2
     8fa:	4a71      	ldr	r2, [pc, #452]	; (ac0 <schipp+0x594>)
     8fc:	4413      	add	r3, r2
     8fe:	460a      	mov	r2, r1
     900:	715a      	strb	r2, [r3, #5]
     902:	e091      	b.n	a28 <schipp+0x4fc>
     904:	79bb      	ldrb	r3, [r7, #6]
     906:	4a6e      	ldr	r2, [pc, #440]	; (ac0 <schipp+0x594>)
     908:	4413      	add	r3, r2
     90a:	795b      	ldrb	r3, [r3, #5]
     90c:	4619      	mov	r1, r3
     90e:	797b      	ldrb	r3, [r7, #5]
     910:	4a6b      	ldr	r2, [pc, #428]	; (ac0 <schipp+0x594>)
     912:	4413      	add	r3, r2
     914:	795b      	ldrb	r3, [r3, #5]
     916:	440b      	add	r3, r1
     918:	2bff      	cmp	r3, #255	; 0xff
     91a:	bfcc      	ite	gt
     91c:	2301      	movgt	r3, #1
     91e:	2300      	movle	r3, #0
     920:	b2db      	uxtb	r3, r3
     922:	71fb      	strb	r3, [r7, #7]
     924:	79bb      	ldrb	r3, [r7, #6]
     926:	79ba      	ldrb	r2, [r7, #6]
     928:	4965      	ldr	r1, [pc, #404]	; (ac0 <schipp+0x594>)
     92a:	440a      	add	r2, r1
     92c:	7951      	ldrb	r1, [r2, #5]
     92e:	797a      	ldrb	r2, [r7, #5]
     930:	4863      	ldr	r0, [pc, #396]	; (ac0 <schipp+0x594>)
     932:	4402      	add	r2, r0
     934:	7952      	ldrb	r2, [r2, #5]
     936:	440a      	add	r2, r1
     938:	b2d1      	uxtb	r1, r2
     93a:	4a61      	ldr	r2, [pc, #388]	; (ac0 <schipp+0x594>)
     93c:	4413      	add	r3, r2
     93e:	460a      	mov	r2, r1
     940:	715a      	strb	r2, [r3, #5]
     942:	4a5f      	ldr	r2, [pc, #380]	; (ac0 <schipp+0x594>)
     944:	79fb      	ldrb	r3, [r7, #7]
     946:	7513      	strb	r3, [r2, #20]
     948:	e06e      	b.n	a28 <schipp+0x4fc>
     94a:	79bb      	ldrb	r3, [r7, #6]
     94c:	4a5c      	ldr	r2, [pc, #368]	; (ac0 <schipp+0x594>)
     94e:	4413      	add	r3, r2
     950:	795a      	ldrb	r2, [r3, #5]
     952:	797b      	ldrb	r3, [r7, #5]
     954:	495a      	ldr	r1, [pc, #360]	; (ac0 <schipp+0x594>)
     956:	440b      	add	r3, r1
     958:	795b      	ldrb	r3, [r3, #5]
     95a:	429a      	cmp	r2, r3
     95c:	bf2c      	ite	cs
     95e:	2301      	movcs	r3, #1
     960:	2300      	movcc	r3, #0
     962:	b2db      	uxtb	r3, r3
     964:	71fb      	strb	r3, [r7, #7]
     966:	79bb      	ldrb	r3, [r7, #6]
     968:	79ba      	ldrb	r2, [r7, #6]
     96a:	4955      	ldr	r1, [pc, #340]	; (ac0 <schipp+0x594>)
     96c:	440a      	add	r2, r1
     96e:	7951      	ldrb	r1, [r2, #5]
     970:	797a      	ldrb	r2, [r7, #5]
     972:	4853      	ldr	r0, [pc, #332]	; (ac0 <schipp+0x594>)
     974:	4402      	add	r2, r0
     976:	7952      	ldrb	r2, [r2, #5]
     978:	1a8a      	subs	r2, r1, r2
     97a:	b2d1      	uxtb	r1, r2
     97c:	4a50      	ldr	r2, [pc, #320]	; (ac0 <schipp+0x594>)
     97e:	4413      	add	r3, r2
     980:	460a      	mov	r2, r1
     982:	715a      	strb	r2, [r3, #5]
     984:	4a4e      	ldr	r2, [pc, #312]	; (ac0 <schipp+0x594>)
     986:	79fb      	ldrb	r3, [r7, #7]
     988:	7513      	strb	r3, [r2, #20]
     98a:	e04d      	b.n	a28 <schipp+0x4fc>
     98c:	79bb      	ldrb	r3, [r7, #6]
     98e:	4a4c      	ldr	r2, [pc, #304]	; (ac0 <schipp+0x594>)
     990:	4413      	add	r3, r2
     992:	795b      	ldrb	r3, [r3, #5]
     994:	f003 0301 	and.w	r3, r3, #1
     998:	71fb      	strb	r3, [r7, #7]
     99a:	79bb      	ldrb	r3, [r7, #6]
     99c:	79ba      	ldrb	r2, [r7, #6]
     99e:	4948      	ldr	r1, [pc, #288]	; (ac0 <schipp+0x594>)
     9a0:	440a      	add	r2, r1
     9a2:	7952      	ldrb	r2, [r2, #5]
     9a4:	0852      	lsrs	r2, r2, #1
     9a6:	b2d1      	uxtb	r1, r2
     9a8:	4a45      	ldr	r2, [pc, #276]	; (ac0 <schipp+0x594>)
     9aa:	4413      	add	r3, r2
     9ac:	460a      	mov	r2, r1
     9ae:	715a      	strb	r2, [r3, #5]
     9b0:	4a43      	ldr	r2, [pc, #268]	; (ac0 <schipp+0x594>)
     9b2:	79fb      	ldrb	r3, [r7, #7]
     9b4:	7513      	strb	r3, [r2, #20]
     9b6:	e037      	b.n	a28 <schipp+0x4fc>
     9b8:	797b      	ldrb	r3, [r7, #5]
     9ba:	4a41      	ldr	r2, [pc, #260]	; (ac0 <schipp+0x594>)
     9bc:	4413      	add	r3, r2
     9be:	795a      	ldrb	r2, [r3, #5]
     9c0:	79bb      	ldrb	r3, [r7, #6]
     9c2:	493f      	ldr	r1, [pc, #252]	; (ac0 <schipp+0x594>)
     9c4:	440b      	add	r3, r1
     9c6:	795b      	ldrb	r3, [r3, #5]
     9c8:	429a      	cmp	r2, r3
     9ca:	bf2c      	ite	cs
     9cc:	2301      	movcs	r3, #1
     9ce:	2300      	movcc	r3, #0
     9d0:	b2db      	uxtb	r3, r3
     9d2:	71fb      	strb	r3, [r7, #7]
     9d4:	79bb      	ldrb	r3, [r7, #6]
     9d6:	797a      	ldrb	r2, [r7, #5]
     9d8:	4939      	ldr	r1, [pc, #228]	; (ac0 <schipp+0x594>)
     9da:	440a      	add	r2, r1
     9dc:	7951      	ldrb	r1, [r2, #5]
     9de:	79ba      	ldrb	r2, [r7, #6]
     9e0:	4837      	ldr	r0, [pc, #220]	; (ac0 <schipp+0x594>)
     9e2:	4402      	add	r2, r0
     9e4:	7952      	ldrb	r2, [r2, #5]
     9e6:	1a8a      	subs	r2, r1, r2
     9e8:	b2d1      	uxtb	r1, r2
     9ea:	4a35      	ldr	r2, [pc, #212]	; (ac0 <schipp+0x594>)
     9ec:	4413      	add	r3, r2
     9ee:	460a      	mov	r2, r1
     9f0:	715a      	strb	r2, [r3, #5]
     9f2:	4a33      	ldr	r2, [pc, #204]	; (ac0 <schipp+0x594>)
     9f4:	79fb      	ldrb	r3, [r7, #7]
     9f6:	7513      	strb	r3, [r2, #20]
     9f8:	e016      	b.n	a28 <schipp+0x4fc>
     9fa:	79bb      	ldrb	r3, [r7, #6]
     9fc:	4a30      	ldr	r2, [pc, #192]	; (ac0 <schipp+0x594>)
     9fe:	4413      	add	r3, r2
     a00:	795b      	ldrb	r3, [r3, #5]
     a02:	09db      	lsrs	r3, r3, #7
     a04:	71fb      	strb	r3, [r7, #7]
     a06:	79bb      	ldrb	r3, [r7, #6]
     a08:	79ba      	ldrb	r2, [r7, #6]
     a0a:	492d      	ldr	r1, [pc, #180]	; (ac0 <schipp+0x594>)
     a0c:	440a      	add	r2, r1
     a0e:	7952      	ldrb	r2, [r2, #5]
     a10:	0052      	lsls	r2, r2, #1
     a12:	b2d1      	uxtb	r1, r2
     a14:	4a2a      	ldr	r2, [pc, #168]	; (ac0 <schipp+0x594>)
     a16:	4413      	add	r3, r2
     a18:	460a      	mov	r2, r1
     a1a:	715a      	strb	r2, [r3, #5]
     a1c:	4a28      	ldr	r2, [pc, #160]	; (ac0 <schipp+0x594>)
     a1e:	79fb      	ldrb	r3, [r7, #7]
     a20:	7513      	strb	r3, [r2, #20]
     a22:	e001      	b.n	a28 <schipp+0x4fc>
     a24:	2302      	movs	r3, #2
     a26:	e31b      	b.n	1060 <schipp+0xb34>
     a28:	e318      	b.n	105c <schipp+0xb30>
     a2a:	4b25      	ldr	r3, [pc, #148]	; (ac0 <schipp+0x594>)
     a2c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     a30:	f003 030f 	and.w	r3, r3, #15
     a34:	2b0f      	cmp	r3, #15
     a36:	f200 813d 	bhi.w	cb4 <schipp+0x788>
     a3a:	a201      	add	r2, pc, #4	; (adr r2, a40 <schipp+0x514>)
     a3c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a40:	00000a81 	.word	0x00000a81
     a44:	00000aa5 	.word	0x00000aa5
     a48:	00000ac5 	.word	0x00000ac5
     a4c:	00000b1b 	.word	0x00000b1b
     a50:	00000b39 	.word	0x00000b39
     a54:	00000b49 	.word	0x00000b49
     a58:	00000b67 	.word	0x00000b67
     a5c:	00000b8f 	.word	0x00000b8f
     a60:	00000bb1 	.word	0x00000bb1
     a64:	00000bbd 	.word	0x00000bbd
     a68:	00000bc9 	.word	0x00000bc9
     a6c:	00000bf3 	.word	0x00000bf3
     a70:	00000c21 	.word	0x00000c21
     a74:	00000c4b 	.word	0x00000c4b
     a78:	00000c75 	.word	0x00000c75
     a7c:	00000c9f 	.word	0x00000c9f
     a80:	79bb      	ldrb	r3, [r7, #6]
     a82:	4a0f      	ldr	r2, [pc, #60]	; (ac0 <schipp+0x594>)
     a84:	4413      	add	r3, r2
     a86:	795a      	ldrb	r2, [r3, #5]
     a88:	797b      	ldrb	r3, [r7, #5]
     a8a:	490d      	ldr	r1, [pc, #52]	; (ac0 <schipp+0x594>)
     a8c:	440b      	add	r3, r1
     a8e:	795b      	ldrb	r3, [r3, #5]
     a90:	429a      	cmp	r2, r3
     a92:	f000 8111 	beq.w	cb8 <schipp+0x78c>
     a96:	4b0a      	ldr	r3, [pc, #40]	; (ac0 <schipp+0x594>)
     a98:	881b      	ldrh	r3, [r3, #0]
     a9a:	3302      	adds	r3, #2
     a9c:	b29a      	uxth	r2, r3
     a9e:	4b08      	ldr	r3, [pc, #32]	; (ac0 <schipp+0x594>)
     aa0:	801a      	strh	r2, [r3, #0]
     aa2:	e109      	b.n	cb8 <schipp+0x78c>
     aa4:	79bb      	ldrb	r3, [r7, #6]
     aa6:	4a06      	ldr	r2, [pc, #24]	; (ac0 <schipp+0x594>)
     aa8:	4413      	add	r3, r2
     aaa:	795b      	ldrb	r3, [r3, #5]
     aac:	4618      	mov	r0, r3
     aae:	797b      	ldrb	r3, [r7, #5]
     ab0:	4a03      	ldr	r2, [pc, #12]	; (ac0 <schipp+0x594>)
     ab2:	4413      	add	r3, r2
     ab4:	795b      	ldrb	r3, [r3, #5]
     ab6:	2200      	movs	r2, #0
     ab8:	4619      	mov	r1, r3
     aba:	f7ff fcf9 	bl	4b0 <key_tone>
     abe:	e100      	b.n	cc2 <schipp+0x796>
     ac0:	2000005c 	.word	0x2000005c
     ac4:	2002      	movs	r0, #2
     ac6:	f002 fb83 	bl	31d0 <select_font>
     aca:	79bb      	ldrb	r3, [r7, #6]
     acc:	4a99      	ldr	r2, [pc, #612]	; (d34 <schipp+0x808>)
     ace:	4413      	add	r3, r2
     ad0:	7958      	ldrb	r0, [r3, #5]
     ad2:	797b      	ldrb	r3, [r7, #5]
     ad4:	4a97      	ldr	r2, [pc, #604]	; (d34 <schipp+0x808>)
     ad6:	4413      	add	r3, r2
     ad8:	795b      	ldrb	r3, [r3, #5]
     ada:	4619      	mov	r1, r3
     adc:	f002 fc98 	bl	3410 <set_cursor>
     ae0:	4b94      	ldr	r3, [pc, #592]	; (d34 <schipp+0x808>)
     ae2:	885b      	ldrh	r3, [r3, #2]
     ae4:	1c5a      	adds	r2, r3, #1
     ae6:	b291      	uxth	r1, r2
     ae8:	4a92      	ldr	r2, [pc, #584]	; (d34 <schipp+0x808>)
     aea:	8051      	strh	r1, [r2, #2]
     aec:	461a      	mov	r2, r3
     aee:	4b92      	ldr	r3, [pc, #584]	; (d38 <schipp+0x80c>)
     af0:	5c9b      	ldrb	r3, [r3, r2]
     af2:	71fb      	strb	r3, [r7, #7]
     af4:	e00d      	b.n	b12 <schipp+0x5e6>
     af6:	79fb      	ldrb	r3, [r7, #7]
     af8:	4618      	mov	r0, r3
     afa:	f002 fbfd 	bl	32f8 <put_char>
     afe:	4b8d      	ldr	r3, [pc, #564]	; (d34 <schipp+0x808>)
     b00:	885b      	ldrh	r3, [r3, #2]
     b02:	1c5a      	adds	r2, r3, #1
     b04:	b291      	uxth	r1, r2
     b06:	4a8b      	ldr	r2, [pc, #556]	; (d34 <schipp+0x808>)
     b08:	8051      	strh	r1, [r2, #2]
     b0a:	461a      	mov	r2, r3
     b0c:	4b8a      	ldr	r3, [pc, #552]	; (d38 <schipp+0x80c>)
     b0e:	5c9b      	ldrb	r3, [r3, r2]
     b10:	71fb      	strb	r3, [r7, #7]
     b12:	79fb      	ldrb	r3, [r7, #7]
     b14:	2b00      	cmp	r3, #0
     b16:	d1ee      	bne.n	af6 <schipp+0x5ca>
     b18:	e0d3      	b.n	cc2 <schipp+0x796>
     b1a:	79bb      	ldrb	r3, [r7, #6]
     b1c:	4a85      	ldr	r2, [pc, #532]	; (d34 <schipp+0x808>)
     b1e:	4413      	add	r3, r2
     b20:	795b      	ldrb	r3, [r3, #5]
     b22:	4618      	mov	r0, r3
     b24:	797b      	ldrb	r3, [r7, #5]
     b26:	4a83      	ldr	r2, [pc, #524]	; (d34 <schipp+0x808>)
     b28:	4413      	add	r3, r2
     b2a:	795b      	ldrb	r3, [r3, #5]
     b2c:	4619      	mov	r1, r3
     b2e:	2303      	movs	r3, #3
     b30:	2200      	movs	r2, #0
     b32:	f000 ff2b 	bl	198c <gfx_blit>
     b36:	e0c4      	b.n	cc2 <schipp+0x796>
     b38:	79bb      	ldrb	r3, [r7, #6]
     b3a:	011a      	lsls	r2, r3, #4
     b3c:	797b      	ldrb	r3, [r7, #5]
     b3e:	4413      	add	r3, r2
     b40:	4618      	mov	r0, r3
     b42:	f7ff fcc0 	bl	4c6 <noise>
     b46:	e0bc      	b.n	cc2 <schipp+0x796>
     b48:	79bb      	ldrb	r3, [r7, #6]
     b4a:	4a7a      	ldr	r2, [pc, #488]	; (d34 <schipp+0x808>)
     b4c:	4413      	add	r3, r2
     b4e:	795b      	ldrb	r3, [r3, #5]
     b50:	4618      	mov	r0, r3
     b52:	797b      	ldrb	r3, [r7, #5]
     b54:	4a77      	ldr	r2, [pc, #476]	; (d34 <schipp+0x808>)
     b56:	4413      	add	r3, r2
     b58:	795b      	ldrb	r3, [r3, #5]
     b5a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     b5e:	4619      	mov	r1, r3
     b60:	f7ff fca6 	bl	4b0 <key_tone>
     b64:	e0ad      	b.n	cc2 <schipp+0x796>
     b66:	4b73      	ldr	r3, [pc, #460]	; (d34 <schipp+0x808>)
     b68:	791b      	ldrb	r3, [r3, #4]
     b6a:	3301      	adds	r3, #1
     b6c:	b2da      	uxtb	r2, r3
     b6e:	4b71      	ldr	r3, [pc, #452]	; (d34 <schipp+0x808>)
     b70:	711a      	strb	r2, [r3, #4]
     b72:	4b70      	ldr	r3, [pc, #448]	; (d34 <schipp+0x808>)
     b74:	791b      	ldrb	r3, [r3, #4]
     b76:	4618      	mov	r0, r3
     b78:	79bb      	ldrb	r3, [r7, #6]
     b7a:	4a6e      	ldr	r2, [pc, #440]	; (d34 <schipp+0x808>)
     b7c:	4413      	add	r3, r2
     b7e:	795b      	ldrb	r3, [r3, #5]
     b80:	b299      	uxth	r1, r3
     b82:	4a6c      	ldr	r2, [pc, #432]	; (d34 <schipp+0x808>)
     b84:	f100 0314 	add.w	r3, r0, #20
     b88:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     b8c:	e099      	b.n	cc2 <schipp+0x796>
     b8e:	79ba      	ldrb	r2, [r7, #6]
     b90:	4b68      	ldr	r3, [pc, #416]	; (d34 <schipp+0x808>)
     b92:	791b      	ldrb	r3, [r3, #4]
     b94:	1e59      	subs	r1, r3, #1
     b96:	b2c8      	uxtb	r0, r1
     b98:	4966      	ldr	r1, [pc, #408]	; (d34 <schipp+0x808>)
     b9a:	7108      	strb	r0, [r1, #4]
     b9c:	4965      	ldr	r1, [pc, #404]	; (d34 <schipp+0x808>)
     b9e:	3314      	adds	r3, #20
     ba0:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     ba4:	b2d9      	uxtb	r1, r3
     ba6:	4b63      	ldr	r3, [pc, #396]	; (d34 <schipp+0x808>)
     ba8:	4413      	add	r3, r2
     baa:	460a      	mov	r2, r1
     bac:	715a      	strb	r2, [r3, #5]
     bae:	e088      	b.n	cc2 <schipp+0x796>
     bb0:	79bb      	ldrb	r3, [r7, #6]
     bb2:	4a60      	ldr	r2, [pc, #384]	; (d34 <schipp+0x808>)
     bb4:	4413      	add	r3, r2
     bb6:	22b4      	movs	r2, #180	; 0xb4
     bb8:	715a      	strb	r2, [r3, #5]
     bba:	e082      	b.n	cc2 <schipp+0x796>
     bbc:	79bb      	ldrb	r3, [r7, #6]
     bbe:	4a5d      	ldr	r2, [pc, #372]	; (d34 <schipp+0x808>)
     bc0:	4413      	add	r3, r2
     bc2:	2270      	movs	r2, #112	; 0x70
     bc4:	715a      	strb	r2, [r3, #5]
     bc6:	e07c      	b.n	cc2 <schipp+0x796>
     bc8:	79bb      	ldrb	r3, [r7, #6]
     bca:	79ba      	ldrb	r2, [r7, #6]
     bcc:	4959      	ldr	r1, [pc, #356]	; (d34 <schipp+0x808>)
     bce:	440a      	add	r2, r1
     bd0:	7952      	ldrb	r2, [r2, #5]
     bd2:	b251      	sxtb	r1, r2
     bd4:	797a      	ldrb	r2, [r7, #5]
     bd6:	f002 0207 	and.w	r2, r2, #7
     bda:	2001      	movs	r0, #1
     bdc:	fa00 f202 	lsl.w	r2, r0, r2
     be0:	b252      	sxtb	r2, r2
     be2:	430a      	orrs	r2, r1
     be4:	b252      	sxtb	r2, r2
     be6:	b2d1      	uxtb	r1, r2
     be8:	4a52      	ldr	r2, [pc, #328]	; (d34 <schipp+0x808>)
     bea:	4413      	add	r3, r2
     bec:	460a      	mov	r2, r1
     bee:	715a      	strb	r2, [r3, #5]
     bf0:	e067      	b.n	cc2 <schipp+0x796>
     bf2:	79bb      	ldrb	r3, [r7, #6]
     bf4:	79ba      	ldrb	r2, [r7, #6]
     bf6:	494f      	ldr	r1, [pc, #316]	; (d34 <schipp+0x808>)
     bf8:	440a      	add	r2, r1
     bfa:	7952      	ldrb	r2, [r2, #5]
     bfc:	b251      	sxtb	r1, r2
     bfe:	797a      	ldrb	r2, [r7, #5]
     c00:	f002 0207 	and.w	r2, r2, #7
     c04:	2001      	movs	r0, #1
     c06:	fa00 f202 	lsl.w	r2, r0, r2
     c0a:	b252      	sxtb	r2, r2
     c0c:	43d2      	mvns	r2, r2
     c0e:	b252      	sxtb	r2, r2
     c10:	400a      	ands	r2, r1
     c12:	b252      	sxtb	r2, r2
     c14:	b2d1      	uxtb	r1, r2
     c16:	4a47      	ldr	r2, [pc, #284]	; (d34 <schipp+0x808>)
     c18:	4413      	add	r3, r2
     c1a:	460a      	mov	r2, r1
     c1c:	715a      	strb	r2, [r3, #5]
     c1e:	e050      	b.n	cc2 <schipp+0x796>
     c20:	79bb      	ldrb	r3, [r7, #6]
     c22:	79ba      	ldrb	r2, [r7, #6]
     c24:	4943      	ldr	r1, [pc, #268]	; (d34 <schipp+0x808>)
     c26:	440a      	add	r2, r1
     c28:	7952      	ldrb	r2, [r2, #5]
     c2a:	b251      	sxtb	r1, r2
     c2c:	797a      	ldrb	r2, [r7, #5]
     c2e:	f002 0207 	and.w	r2, r2, #7
     c32:	2001      	movs	r0, #1
     c34:	fa00 f202 	lsl.w	r2, r0, r2
     c38:	b252      	sxtb	r2, r2
     c3a:	404a      	eors	r2, r1
     c3c:	b252      	sxtb	r2, r2
     c3e:	b2d1      	uxtb	r1, r2
     c40:	4a3c      	ldr	r2, [pc, #240]	; (d34 <schipp+0x808>)
     c42:	4413      	add	r3, r2
     c44:	460a      	mov	r2, r1
     c46:	715a      	strb	r2, [r3, #5]
     c48:	e03b      	b.n	cc2 <schipp+0x796>
     c4a:	79bb      	ldrb	r3, [r7, #6]
     c4c:	4a39      	ldr	r2, [pc, #228]	; (d34 <schipp+0x808>)
     c4e:	4413      	add	r3, r2
     c50:	795b      	ldrb	r3, [r3, #5]
     c52:	461a      	mov	r2, r3
     c54:	797b      	ldrb	r3, [r7, #5]
     c56:	f003 0307 	and.w	r3, r3, #7
     c5a:	fa42 f303 	asr.w	r3, r2, r3
     c5e:	f003 0301 	and.w	r3, r3, #1
     c62:	2b00      	cmp	r3, #0
     c64:	d02a      	beq.n	cbc <schipp+0x790>
     c66:	4b33      	ldr	r3, [pc, #204]	; (d34 <schipp+0x808>)
     c68:	881b      	ldrh	r3, [r3, #0]
     c6a:	3302      	adds	r3, #2
     c6c:	b29a      	uxth	r2, r3
     c6e:	4b31      	ldr	r3, [pc, #196]	; (d34 <schipp+0x808>)
     c70:	801a      	strh	r2, [r3, #0]
     c72:	e023      	b.n	cbc <schipp+0x790>
     c74:	79bb      	ldrb	r3, [r7, #6]
     c76:	4a2f      	ldr	r2, [pc, #188]	; (d34 <schipp+0x808>)
     c78:	4413      	add	r3, r2
     c7a:	795b      	ldrb	r3, [r3, #5]
     c7c:	461a      	mov	r2, r3
     c7e:	797b      	ldrb	r3, [r7, #5]
     c80:	f003 0307 	and.w	r3, r3, #7
     c84:	fa42 f303 	asr.w	r3, r2, r3
     c88:	f003 0301 	and.w	r3, r3, #1
     c8c:	2b00      	cmp	r3, #0
     c8e:	d117      	bne.n	cc0 <schipp+0x794>
     c90:	4b28      	ldr	r3, [pc, #160]	; (d34 <schipp+0x808>)
     c92:	881b      	ldrh	r3, [r3, #0]
     c94:	3302      	adds	r3, #2
     c96:	b29a      	uxth	r2, r3
     c98:	4b26      	ldr	r3, [pc, #152]	; (d34 <schipp+0x808>)
     c9a:	801a      	strh	r2, [r3, #0]
     c9c:	e010      	b.n	cc0 <schipp+0x794>
     c9e:	79bb      	ldrb	r3, [r7, #6]
     ca0:	797a      	ldrb	r2, [r7, #5]
     ca2:	4611      	mov	r1, r2
     ca4:	4618      	mov	r0, r3
     ca6:	f001 f801 	bl	1cac <gfx_get_pixel>
     caa:	4603      	mov	r3, r0
     cac:	461a      	mov	r2, r3
     cae:	4b21      	ldr	r3, [pc, #132]	; (d34 <schipp+0x808>)
     cb0:	751a      	strb	r2, [r3, #20]
     cb2:	e006      	b.n	cc2 <schipp+0x796>
     cb4:	2302      	movs	r3, #2
     cb6:	e1d3      	b.n	1060 <schipp+0xb34>
     cb8:	bf00      	nop
     cba:	e1cf      	b.n	105c <schipp+0xb30>
     cbc:	bf00      	nop
     cbe:	e1cd      	b.n	105c <schipp+0xb30>
     cc0:	bf00      	nop
     cc2:	e1cb      	b.n	105c <schipp+0xb30>
     cc4:	4b1b      	ldr	r3, [pc, #108]	; (d34 <schipp+0x808>)
     cc6:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     cca:	021b      	lsls	r3, r3, #8
     ccc:	4a19      	ldr	r2, [pc, #100]	; (d34 <schipp+0x808>)
     cce:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     cd2:	4313      	orrs	r3, r2
     cd4:	005b      	lsls	r3, r3, #1
     cd6:	b29b      	uxth	r3, r3
     cd8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     cdc:	b29a      	uxth	r2, r3
     cde:	4b15      	ldr	r3, [pc, #84]	; (d34 <schipp+0x808>)
     ce0:	805a      	strh	r2, [r3, #2]
     ce2:	e1bb      	b.n	105c <schipp+0xb30>
     ce4:	4b13      	ldr	r3, [pc, #76]	; (d34 <schipp+0x808>)
     ce6:	795b      	ldrb	r3, [r3, #5]
     ce8:	b29b      	uxth	r3, r3
     cea:	005b      	lsls	r3, r3, #1
     cec:	b29a      	uxth	r2, r3
     cee:	4b11      	ldr	r3, [pc, #68]	; (d34 <schipp+0x808>)
     cf0:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     cf4:	021b      	lsls	r3, r3, #8
     cf6:	490f      	ldr	r1, [pc, #60]	; (d34 <schipp+0x808>)
     cf8:	f891 1027 	ldrb.w	r1, [r1, #39]	; 0x27
     cfc:	430b      	orrs	r3, r1
     cfe:	005b      	lsls	r3, r3, #1
     d00:	b29b      	uxth	r3, r3
     d02:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d06:	b29b      	uxth	r3, r3
     d08:	4413      	add	r3, r2
     d0a:	b29a      	uxth	r2, r3
     d0c:	4b09      	ldr	r3, [pc, #36]	; (d34 <schipp+0x808>)
     d0e:	801a      	strh	r2, [r3, #0]
     d10:	e1a4      	b.n	105c <schipp+0xb30>
     d12:	79bc      	ldrb	r4, [r7, #6]
     d14:	f7ff fc03 	bl	51e <rand>
     d18:	4603      	mov	r3, r0
     d1a:	b25a      	sxtb	r2, r3
     d1c:	4b05      	ldr	r3, [pc, #20]	; (d34 <schipp+0x808>)
     d1e:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d22:	b25b      	sxtb	r3, r3
     d24:	4013      	ands	r3, r2
     d26:	b25b      	sxtb	r3, r3
     d28:	b2da      	uxtb	r2, r3
     d2a:	4b02      	ldr	r3, [pc, #8]	; (d34 <schipp+0x808>)
     d2c:	4423      	add	r3, r4
     d2e:	715a      	strb	r2, [r3, #5]
     d30:	e194      	b.n	105c <schipp+0xb30>
     d32:	bf00      	nop
     d34:	2000005c 	.word	0x2000005c
     d38:	200004fc 	.word	0x200004fc
     d3c:	4ba5      	ldr	r3, [pc, #660]	; (fd4 <schipp+0xaa8>)
     d3e:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d42:	f003 030f 	and.w	r3, r3, #15
     d46:	71fb      	strb	r3, [r7, #7]
     d48:	79fb      	ldrb	r3, [r7, #7]
     d4a:	2b00      	cmp	r3, #0
     d4c:	d11b      	bne.n	d86 <schipp+0x85a>
     d4e:	4ba1      	ldr	r3, [pc, #644]	; (fd4 <schipp+0xaa8>)
     d50:	885b      	ldrh	r3, [r3, #2]
     d52:	4aa1      	ldr	r2, [pc, #644]	; (fd8 <schipp+0xaac>)
     d54:	2120      	movs	r1, #32
     d56:	4618      	mov	r0, r3
     d58:	f7ff fbbe 	bl	4d8 <load_block>
     d5c:	79bb      	ldrb	r3, [r7, #6]
     d5e:	4a9d      	ldr	r2, [pc, #628]	; (fd4 <schipp+0xaa8>)
     d60:	4413      	add	r3, r2
     d62:	795b      	ldrb	r3, [r3, #5]
     d64:	b25b      	sxtb	r3, r3
     d66:	4618      	mov	r0, r3
     d68:	797b      	ldrb	r3, [r7, #5]
     d6a:	4a9a      	ldr	r2, [pc, #616]	; (fd4 <schipp+0xaa8>)
     d6c:	4413      	add	r3, r2
     d6e:	795b      	ldrb	r3, [r3, #5]
     d70:	b25b      	sxtb	r3, r3
     d72:	4619      	mov	r1, r3
     d74:	4b98      	ldr	r3, [pc, #608]	; (fd8 <schipp+0xaac>)
     d76:	2220      	movs	r2, #32
     d78:	f7ff fbc4 	bl	504 <put_big_sprite>
     d7c:	4603      	mov	r3, r0
     d7e:	b2da      	uxtb	r2, r3
     d80:	4b94      	ldr	r3, [pc, #592]	; (fd4 <schipp+0xaa8>)
     d82:	751a      	strb	r2, [r3, #20]
     d84:	e16a      	b.n	105c <schipp+0xb30>
     d86:	4b93      	ldr	r3, [pc, #588]	; (fd4 <schipp+0xaa8>)
     d88:	885b      	ldrh	r3, [r3, #2]
     d8a:	4618      	mov	r0, r3
     d8c:	79fb      	ldrb	r3, [r7, #7]
     d8e:	4a92      	ldr	r2, [pc, #584]	; (fd8 <schipp+0xaac>)
     d90:	4619      	mov	r1, r3
     d92:	f7ff fba1 	bl	4d8 <load_block>
     d96:	79bb      	ldrb	r3, [r7, #6]
     d98:	4a8e      	ldr	r2, [pc, #568]	; (fd4 <schipp+0xaa8>)
     d9a:	4413      	add	r3, r2
     d9c:	795b      	ldrb	r3, [r3, #5]
     d9e:	b25b      	sxtb	r3, r3
     da0:	4618      	mov	r0, r3
     da2:	797b      	ldrb	r3, [r7, #5]
     da4:	4a8b      	ldr	r2, [pc, #556]	; (fd4 <schipp+0xaa8>)
     da6:	4413      	add	r3, r2
     da8:	795b      	ldrb	r3, [r3, #5]
     daa:	b25b      	sxtb	r3, r3
     dac:	4619      	mov	r1, r3
     dae:	79fa      	ldrb	r2, [r7, #7]
     db0:	4b89      	ldr	r3, [pc, #548]	; (fd8 <schipp+0xaac>)
     db2:	9300      	str	r3, [sp, #0]
     db4:	4613      	mov	r3, r2
     db6:	2208      	movs	r2, #8
     db8:	f000 ffa6 	bl	1d08 <gfx_sprite>
     dbc:	4603      	mov	r3, r0
     dbe:	b2da      	uxtb	r2, r3
     dc0:	4b84      	ldr	r3, [pc, #528]	; (fd4 <schipp+0xaa8>)
     dc2:	751a      	strb	r2, [r3, #20]
     dc4:	e14a      	b.n	105c <schipp+0xb30>
     dc6:	4b83      	ldr	r3, [pc, #524]	; (fd4 <schipp+0xaa8>)
     dc8:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     dcc:	2b9e      	cmp	r3, #158	; 0x9e
     dce:	d002      	beq.n	dd6 <schipp+0x8aa>
     dd0:	2ba1      	cmp	r3, #161	; 0xa1
     dd2:	d012      	beq.n	dfa <schipp+0x8ce>
     dd4:	e023      	b.n	e1e <schipp+0x8f2>
     dd6:	4b81      	ldr	r3, [pc, #516]	; (fdc <schipp+0xab0>)
     dd8:	881b      	ldrh	r3, [r3, #0]
     dda:	b29b      	uxth	r3, r3
     ddc:	4619      	mov	r1, r3
     dde:	79bb      	ldrb	r3, [r7, #6]
     de0:	4a7c      	ldr	r2, [pc, #496]	; (fd4 <schipp+0xaa8>)
     de2:	4413      	add	r3, r2
     de4:	795b      	ldrb	r3, [r3, #5]
     de6:	400b      	ands	r3, r1
     de8:	2b00      	cmp	r3, #0
     dea:	d11a      	bne.n	e22 <schipp+0x8f6>
     dec:	4b79      	ldr	r3, [pc, #484]	; (fd4 <schipp+0xaa8>)
     dee:	881b      	ldrh	r3, [r3, #0]
     df0:	3302      	adds	r3, #2
     df2:	b29a      	uxth	r2, r3
     df4:	4b77      	ldr	r3, [pc, #476]	; (fd4 <schipp+0xaa8>)
     df6:	801a      	strh	r2, [r3, #0]
     df8:	e013      	b.n	e22 <schipp+0x8f6>
     dfa:	4b78      	ldr	r3, [pc, #480]	; (fdc <schipp+0xab0>)
     dfc:	881b      	ldrh	r3, [r3, #0]
     dfe:	b29b      	uxth	r3, r3
     e00:	4619      	mov	r1, r3
     e02:	79bb      	ldrb	r3, [r7, #6]
     e04:	4a73      	ldr	r2, [pc, #460]	; (fd4 <schipp+0xaa8>)
     e06:	4413      	add	r3, r2
     e08:	795b      	ldrb	r3, [r3, #5]
     e0a:	400b      	ands	r3, r1
     e0c:	2b00      	cmp	r3, #0
     e0e:	d00a      	beq.n	e26 <schipp+0x8fa>
     e10:	4b70      	ldr	r3, [pc, #448]	; (fd4 <schipp+0xaa8>)
     e12:	881b      	ldrh	r3, [r3, #0]
     e14:	3302      	adds	r3, #2
     e16:	b29a      	uxth	r2, r3
     e18:	4b6e      	ldr	r3, [pc, #440]	; (fd4 <schipp+0xaa8>)
     e1a:	801a      	strh	r2, [r3, #0]
     e1c:	e003      	b.n	e26 <schipp+0x8fa>
     e1e:	2302      	movs	r3, #2
     e20:	e11e      	b.n	1060 <schipp+0xb34>
     e22:	bf00      	nop
     e24:	e11a      	b.n	105c <schipp+0xb30>
     e26:	bf00      	nop
     e28:	e118      	b.n	105c <schipp+0xb30>
     e2a:	4b6a      	ldr	r3, [pc, #424]	; (fd4 <schipp+0xaa8>)
     e2c:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e30:	2b29      	cmp	r3, #41	; 0x29
     e32:	d05b      	beq.n	eec <schipp+0x9c0>
     e34:	2b29      	cmp	r3, #41	; 0x29
     e36:	dc0d      	bgt.n	e54 <schipp+0x928>
     e38:	2b15      	cmp	r3, #21
     e3a:	d035      	beq.n	ea8 <schipp+0x97c>
     e3c:	2b15      	cmp	r3, #21
     e3e:	dc04      	bgt.n	e4a <schipp+0x91e>
     e40:	2b07      	cmp	r3, #7
     e42:	d01b      	beq.n	e7c <schipp+0x950>
     e44:	2b0a      	cmp	r3, #10
     e46:	d026      	beq.n	e96 <schipp+0x96a>
     e48:	e0fb      	b.n	1042 <schipp+0xb16>
     e4a:	2b18      	cmp	r3, #24
     e4c:	d038      	beq.n	ec0 <schipp+0x994>
     e4e:	2b1e      	cmp	r3, #30
     e50:	d040      	beq.n	ed4 <schipp+0x9a8>
     e52:	e0f6      	b.n	1042 <schipp+0xb16>
     e54:	2b55      	cmp	r3, #85	; 0x55
     e56:	f000 80a6 	beq.w	fa6 <schipp+0xa7a>
     e5a:	2b55      	cmp	r3, #85	; 0x55
     e5c:	dc04      	bgt.n	e68 <schipp+0x93c>
     e5e:	2b30      	cmp	r3, #48	; 0x30
     e60:	d058      	beq.n	f14 <schipp+0x9e8>
     e62:	2b33      	cmp	r3, #51	; 0x33
     e64:	d06a      	beq.n	f3c <schipp+0xa10>
     e66:	e0ec      	b.n	1042 <schipp+0xb16>
     e68:	2b75      	cmp	r3, #117	; 0x75
     e6a:	f000 80b0 	beq.w	fce <schipp+0xaa2>
     e6e:	2b85      	cmp	r3, #133	; 0x85
     e70:	f000 80d3 	beq.w	101a <schipp+0xaee>
     e74:	2b65      	cmp	r3, #101	; 0x65
     e76:	f000 80a0 	beq.w	fba <schipp+0xa8e>
     e7a:	e0e2      	b.n	1042 <schipp+0xb16>
     e7c:	79bb      	ldrb	r3, [r7, #6]
     e7e:	4a58      	ldr	r2, [pc, #352]	; (fe0 <schipp+0xab4>)
     e80:	6812      	ldr	r2, [r2, #0]
     e82:	4958      	ldr	r1, [pc, #352]	; (fe4 <schipp+0xab8>)
     e84:	fba1 1202 	umull	r1, r2, r1, r2
     e88:	0912      	lsrs	r2, r2, #4
     e8a:	b2d1      	uxtb	r1, r2
     e8c:	4a51      	ldr	r2, [pc, #324]	; (fd4 <schipp+0xaa8>)
     e8e:	4413      	add	r3, r2
     e90:	460a      	mov	r2, r1
     e92:	715a      	strb	r2, [r3, #5]
     e94:	e0d7      	b.n	1046 <schipp+0xb1a>
     e96:	79bc      	ldrb	r4, [r7, #6]
     e98:	f002 feae 	bl	3bf8 <btn_wait_any>
     e9c:	4603      	mov	r3, r0
     e9e:	b2da      	uxtb	r2, r3
     ea0:	4b4c      	ldr	r3, [pc, #304]	; (fd4 <schipp+0xaa8>)
     ea2:	4423      	add	r3, r4
     ea4:	715a      	strb	r2, [r3, #5]
     ea6:	e0ce      	b.n	1046 <schipp+0xb1a>
     ea8:	79bb      	ldrb	r3, [r7, #6]
     eaa:	4a4a      	ldr	r2, [pc, #296]	; (fd4 <schipp+0xaa8>)
     eac:	4413      	add	r3, r2
     eae:	795b      	ldrb	r3, [r3, #5]
     eb0:	461a      	mov	r2, r3
     eb2:	4613      	mov	r3, r2
     eb4:	011b      	lsls	r3, r3, #4
     eb6:	4413      	add	r3, r2
     eb8:	461a      	mov	r2, r3
     eba:	4b49      	ldr	r3, [pc, #292]	; (fe0 <schipp+0xab4>)
     ebc:	601a      	str	r2, [r3, #0]
     ebe:	e0c2      	b.n	1046 <schipp+0xb1a>
     ec0:	79bb      	ldrb	r3, [r7, #6]
     ec2:	4a44      	ldr	r2, [pc, #272]	; (fd4 <schipp+0xaa8>)
     ec4:	4413      	add	r3, r2
     ec6:	795b      	ldrb	r3, [r3, #5]
     ec8:	4619      	mov	r1, r3
     eca:	f240 200b 	movw	r0, #523	; 0x20b
     ece:	f7ff fae5 	bl	49c <tone>
     ed2:	e0b8      	b.n	1046 <schipp+0xb1a>
     ed4:	4b3f      	ldr	r3, [pc, #252]	; (fd4 <schipp+0xaa8>)
     ed6:	885a      	ldrh	r2, [r3, #2]
     ed8:	79bb      	ldrb	r3, [r7, #6]
     eda:	493e      	ldr	r1, [pc, #248]	; (fd4 <schipp+0xaa8>)
     edc:	440b      	add	r3, r1
     ede:	795b      	ldrb	r3, [r3, #5]
     ee0:	b29b      	uxth	r3, r3
     ee2:	4413      	add	r3, r2
     ee4:	b29a      	uxth	r2, r3
     ee6:	4b3b      	ldr	r3, [pc, #236]	; (fd4 <schipp+0xaa8>)
     ee8:	805a      	strh	r2, [r3, #2]
     eea:	e0ac      	b.n	1046 <schipp+0xb1a>
     eec:	79bb      	ldrb	r3, [r7, #6]
     eee:	4a39      	ldr	r2, [pc, #228]	; (fd4 <schipp+0xaa8>)
     ef0:	4413      	add	r3, r2
     ef2:	795b      	ldrb	r3, [r3, #5]
     ef4:	b29b      	uxth	r3, r3
     ef6:	461a      	mov	r2, r3
     ef8:	0052      	lsls	r2, r2, #1
     efa:	4413      	add	r3, r2
     efc:	005b      	lsls	r3, r3, #1
     efe:	b29a      	uxth	r2, r3
     f00:	4b39      	ldr	r3, [pc, #228]	; (fe8 <schipp+0xabc>)
     f02:	b29b      	uxth	r3, r3
     f04:	4413      	add	r3, r2
     f06:	b29a      	uxth	r2, r3
     f08:	4b32      	ldr	r3, [pc, #200]	; (fd4 <schipp+0xaa8>)
     f0a:	805a      	strh	r2, [r3, #2]
     f0c:	2000      	movs	r0, #0
     f0e:	f002 f95f 	bl	31d0 <select_font>
     f12:	e098      	b.n	1046 <schipp+0xb1a>
     f14:	79bb      	ldrb	r3, [r7, #6]
     f16:	4a2f      	ldr	r2, [pc, #188]	; (fd4 <schipp+0xaa8>)
     f18:	4413      	add	r3, r2
     f1a:	795b      	ldrb	r3, [r3, #5]
     f1c:	b29b      	uxth	r3, r3
     f1e:	461a      	mov	r2, r3
     f20:	0092      	lsls	r2, r2, #2
     f22:	4413      	add	r3, r2
     f24:	005b      	lsls	r3, r3, #1
     f26:	b29a      	uxth	r2, r3
     f28:	4b30      	ldr	r3, [pc, #192]	; (fec <schipp+0xac0>)
     f2a:	b29b      	uxth	r3, r3
     f2c:	4413      	add	r3, r2
     f2e:	b29a      	uxth	r2, r3
     f30:	4b28      	ldr	r3, [pc, #160]	; (fd4 <schipp+0xaa8>)
     f32:	805a      	strh	r2, [r3, #2]
     f34:	2001      	movs	r0, #1
     f36:	f002 f94b 	bl	31d0 <select_font>
     f3a:	e084      	b.n	1046 <schipp+0xb1a>
     f3c:	79bb      	ldrb	r3, [r7, #6]
     f3e:	4a25      	ldr	r2, [pc, #148]	; (fd4 <schipp+0xaa8>)
     f40:	4413      	add	r3, r2
     f42:	795b      	ldrb	r3, [r3, #5]
     f44:	71fb      	strb	r3, [r7, #7]
     f46:	79fa      	ldrb	r2, [r7, #7]
     f48:	4b29      	ldr	r3, [pc, #164]	; (ff0 <schipp+0xac4>)
     f4a:	fba3 1302 	umull	r1, r3, r3, r2
     f4e:	08d9      	lsrs	r1, r3, #3
     f50:	460b      	mov	r3, r1
     f52:	009b      	lsls	r3, r3, #2
     f54:	440b      	add	r3, r1
     f56:	005b      	lsls	r3, r3, #1
     f58:	1ad3      	subs	r3, r2, r3
     f5a:	b2da      	uxtb	r2, r3
     f5c:	4b1e      	ldr	r3, [pc, #120]	; (fd8 <schipp+0xaac>)
     f5e:	709a      	strb	r2, [r3, #2]
     f60:	79fb      	ldrb	r3, [r7, #7]
     f62:	4a23      	ldr	r2, [pc, #140]	; (ff0 <schipp+0xac4>)
     f64:	fba2 2303 	umull	r2, r3, r2, r3
     f68:	08db      	lsrs	r3, r3, #3
     f6a:	71fb      	strb	r3, [r7, #7]
     f6c:	79fa      	ldrb	r2, [r7, #7]
     f6e:	4b20      	ldr	r3, [pc, #128]	; (ff0 <schipp+0xac4>)
     f70:	fba3 1302 	umull	r1, r3, r3, r2
     f74:	08d9      	lsrs	r1, r3, #3
     f76:	460b      	mov	r3, r1
     f78:	009b      	lsls	r3, r3, #2
     f7a:	440b      	add	r3, r1
     f7c:	005b      	lsls	r3, r3, #1
     f7e:	1ad3      	subs	r3, r2, r3
     f80:	b2da      	uxtb	r2, r3
     f82:	4b15      	ldr	r3, [pc, #84]	; (fd8 <schipp+0xaac>)
     f84:	705a      	strb	r2, [r3, #1]
     f86:	79fb      	ldrb	r3, [r7, #7]
     f88:	4a19      	ldr	r2, [pc, #100]	; (ff0 <schipp+0xac4>)
     f8a:	fba2 2303 	umull	r2, r3, r2, r3
     f8e:	08db      	lsrs	r3, r3, #3
     f90:	b2da      	uxtb	r2, r3
     f92:	4b11      	ldr	r3, [pc, #68]	; (fd8 <schipp+0xaac>)
     f94:	701a      	strb	r2, [r3, #0]
     f96:	4b0f      	ldr	r3, [pc, #60]	; (fd4 <schipp+0xaa8>)
     f98:	885b      	ldrh	r3, [r3, #2]
     f9a:	4a0f      	ldr	r2, [pc, #60]	; (fd8 <schipp+0xaac>)
     f9c:	2103      	movs	r1, #3
     f9e:	4618      	mov	r0, r3
     fa0:	f7ff faa5 	bl	4ee <store_block>
     fa4:	e04f      	b.n	1046 <schipp+0xb1a>
     fa6:	4b0b      	ldr	r3, [pc, #44]	; (fd4 <schipp+0xaa8>)
     fa8:	885b      	ldrh	r3, [r3, #2]
     faa:	4618      	mov	r0, r3
     fac:	79bb      	ldrb	r3, [r7, #6]
     fae:	3301      	adds	r3, #1
     fb0:	4a10      	ldr	r2, [pc, #64]	; (ff4 <schipp+0xac8>)
     fb2:	4619      	mov	r1, r3
     fb4:	f7ff fa9b 	bl	4ee <store_block>
     fb8:	e045      	b.n	1046 <schipp+0xb1a>
     fba:	4b06      	ldr	r3, [pc, #24]	; (fd4 <schipp+0xaa8>)
     fbc:	885b      	ldrh	r3, [r3, #2]
     fbe:	4618      	mov	r0, r3
     fc0:	79bb      	ldrb	r3, [r7, #6]
     fc2:	3301      	adds	r3, #1
     fc4:	4a0b      	ldr	r2, [pc, #44]	; (ff4 <schipp+0xac8>)
     fc6:	4619      	mov	r1, r3
     fc8:	f7ff fa86 	bl	4d8 <load_block>
     fcc:	e03b      	b.n	1046 <schipp+0xb1a>
     fce:	2300      	movs	r3, #0
     fd0:	71fb      	strb	r3, [r7, #7]
     fd2:	e01d      	b.n	1010 <schipp+0xae4>
     fd4:	2000005c 	.word	0x2000005c
     fd8:	200000c4 	.word	0x200000c4
     fdc:	200014fc 	.word	0x200014fc
     fe0:	200004ec 	.word	0x200004ec
     fe4:	f0f0f0f1 	.word	0xf0f0f0f1
     fe8:	00003c44 	.word	0x00003c44
     fec:	00003ca4 	.word	0x00003ca4
     ff0:	cccccccd 	.word	0xcccccccd
     ff4:	20000061 	.word	0x20000061
     ff8:	79fb      	ldrb	r3, [r7, #7]
     ffa:	79fa      	ldrb	r2, [r7, #7]
     ffc:	491a      	ldr	r1, [pc, #104]	; (1068 <schipp+0xb3c>)
     ffe:	440a      	add	r2, r1
    1000:	7951      	ldrb	r1, [r2, #5]
    1002:	4a19      	ldr	r2, [pc, #100]	; (1068 <schipp+0xb3c>)
    1004:	4413      	add	r3, r2
    1006:	460a      	mov	r2, r1
    1008:	755a      	strb	r2, [r3, #21]
    100a:	79fb      	ldrb	r3, [r7, #7]
    100c:	3301      	adds	r3, #1
    100e:	71fb      	strb	r3, [r7, #7]
    1010:	79fa      	ldrb	r2, [r7, #7]
    1012:	79bb      	ldrb	r3, [r7, #6]
    1014:	429a      	cmp	r2, r3
    1016:	d9ef      	bls.n	ff8 <schipp+0xacc>
    1018:	e015      	b.n	1046 <schipp+0xb1a>
    101a:	2300      	movs	r3, #0
    101c:	71fb      	strb	r3, [r7, #7]
    101e:	e00b      	b.n	1038 <schipp+0xb0c>
    1020:	79fb      	ldrb	r3, [r7, #7]
    1022:	79fa      	ldrb	r2, [r7, #7]
    1024:	4910      	ldr	r1, [pc, #64]	; (1068 <schipp+0xb3c>)
    1026:	440a      	add	r2, r1
    1028:	7d51      	ldrb	r1, [r2, #21]
    102a:	4a0f      	ldr	r2, [pc, #60]	; (1068 <schipp+0xb3c>)
    102c:	4413      	add	r3, r2
    102e:	460a      	mov	r2, r1
    1030:	715a      	strb	r2, [r3, #5]
    1032:	79fb      	ldrb	r3, [r7, #7]
    1034:	3301      	adds	r3, #1
    1036:	71fb      	strb	r3, [r7, #7]
    1038:	79fa      	ldrb	r2, [r7, #7]
    103a:	79bb      	ldrb	r3, [r7, #6]
    103c:	429a      	cmp	r2, r3
    103e:	d9ef      	bls.n	1020 <schipp+0xaf4>
    1040:	e001      	b.n	1046 <schipp+0xb1a>
    1042:	2302      	movs	r3, #2
    1044:	e00c      	b.n	1060 <schipp+0xb34>
    1046:	e009      	b.n	105c <schipp+0xb30>
    1048:	bf00      	nop
    104a:	f7ff ba7b 	b.w	544 <schipp+0x18>
    104e:	bf00      	nop
    1050:	f7ff ba78 	b.w	544 <schipp+0x18>
    1054:	bf00      	nop
    1056:	f7ff ba75 	b.w	544 <schipp+0x18>
    105a:	bf00      	nop
    105c:	f7ff ba72 	b.w	544 <schipp+0x18>
    1060:	4618      	mov	r0, r3
    1062:	370c      	adds	r7, #12
    1064:	46bd      	mov	sp, r7
    1066:	bd90      	pop	{r4, r7, pc}
    1068:	2000005c 	.word	0x2000005c

0000106c <flash_enable>:
    106c:	b480      	push	{r7}
    106e:	af00      	add	r7, sp, #0
    1070:	4b14      	ldr	r3, [pc, #80]	; (10c4 <flash_enable+0x58>)
    1072:	2200      	movs	r2, #0
    1074:	701a      	strb	r2, [r3, #0]
    1076:	4b14      	ldr	r3, [pc, #80]	; (10c8 <flash_enable+0x5c>)
    1078:	681b      	ldr	r3, [r3, #0]
    107a:	f003 0301 	and.w	r3, r3, #1
    107e:	2b00      	cmp	r3, #0
    1080:	d10c      	bne.n	109c <flash_enable+0x30>
    1082:	4a11      	ldr	r2, [pc, #68]	; (10c8 <flash_enable+0x5c>)
    1084:	4b10      	ldr	r3, [pc, #64]	; (10c8 <flash_enable+0x5c>)
    1086:	681b      	ldr	r3, [r3, #0]
    1088:	f043 0301 	orr.w	r3, r3, #1
    108c:	6013      	str	r3, [r2, #0]
    108e:	bf00      	nop
    1090:	4b0d      	ldr	r3, [pc, #52]	; (10c8 <flash_enable+0x5c>)
    1092:	681b      	ldr	r3, [r3, #0]
    1094:	f003 0302 	and.w	r3, r3, #2
    1098:	2b00      	cmp	r3, #0
    109a:	d0f9      	beq.n	1090 <flash_enable+0x24>
    109c:	4b0b      	ldr	r3, [pc, #44]	; (10cc <flash_enable+0x60>)
    109e:	4a0c      	ldr	r2, [pc, #48]	; (10d0 <flash_enable+0x64>)
    10a0:	605a      	str	r2, [r3, #4]
    10a2:	4b0a      	ldr	r3, [pc, #40]	; (10cc <flash_enable+0x60>)
    10a4:	4a0b      	ldr	r2, [pc, #44]	; (10d4 <flash_enable+0x68>)
    10a6:	605a      	str	r2, [r3, #4]
    10a8:	4b08      	ldr	r3, [pc, #32]	; (10cc <flash_enable+0x60>)
    10aa:	691b      	ldr	r3, [r3, #16]
    10ac:	f003 0380 	and.w	r3, r3, #128	; 0x80
    10b0:	2b00      	cmp	r3, #0
    10b2:	bf0c      	ite	eq
    10b4:	2301      	moveq	r3, #1
    10b6:	2300      	movne	r3, #0
    10b8:	b2db      	uxtb	r3, r3
    10ba:	4618      	mov	r0, r3
    10bc:	46bd      	mov	sp, r7
    10be:	bc80      	pop	{r7}
    10c0:	4770      	bx	lr
    10c2:	bf00      	nop
    10c4:	200000e4 	.word	0x200000e4
    10c8:	40021000 	.word	0x40021000
    10cc:	40022000 	.word	0x40022000
    10d0:	45670123 	.word	0x45670123
    10d4:	cdef89ab 	.word	0xcdef89ab

000010d8 <flash_write_hword>:
    10d8:	b480      	push	{r7}
    10da:	b083      	sub	sp, #12
    10dc:	af00      	add	r7, sp, #0
    10de:	6078      	str	r0, [r7, #4]
    10e0:	460b      	mov	r3, r1
    10e2:	807b      	strh	r3, [r7, #2]
    10e4:	bf00      	nop
    10e6:	4b16      	ldr	r3, [pc, #88]	; (1140 <flash_write_hword+0x68>)
    10e8:	68db      	ldr	r3, [r3, #12]
    10ea:	f003 0301 	and.w	r3, r3, #1
    10ee:	2b00      	cmp	r3, #0
    10f0:	d1f9      	bne.n	10e6 <flash_write_hword+0xe>
    10f2:	4a13      	ldr	r2, [pc, #76]	; (1140 <flash_write_hword+0x68>)
    10f4:	4b12      	ldr	r3, [pc, #72]	; (1140 <flash_write_hword+0x68>)
    10f6:	68db      	ldr	r3, [r3, #12]
    10f8:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    10fc:	60d3      	str	r3, [r2, #12]
    10fe:	4b10      	ldr	r3, [pc, #64]	; (1140 <flash_write_hword+0x68>)
    1100:	2201      	movs	r2, #1
    1102:	611a      	str	r2, [r3, #16]
    1104:	687b      	ldr	r3, [r7, #4]
    1106:	887a      	ldrh	r2, [r7, #2]
    1108:	801a      	strh	r2, [r3, #0]
    110a:	bf00      	nop
    110c:	4b0c      	ldr	r3, [pc, #48]	; (1140 <flash_write_hword+0x68>)
    110e:	68db      	ldr	r3, [r3, #12]
    1110:	f003 0301 	and.w	r3, r3, #1
    1114:	2b00      	cmp	r3, #0
    1116:	d005      	beq.n	1124 <flash_write_hword+0x4c>
    1118:	4b09      	ldr	r3, [pc, #36]	; (1140 <flash_write_hword+0x68>)
    111a:	68db      	ldr	r3, [r3, #12]
    111c:	f003 0320 	and.w	r3, r3, #32
    1120:	2b00      	cmp	r3, #0
    1122:	d0f3      	beq.n	110c <flash_write_hword+0x34>
    1124:	687b      	ldr	r3, [r7, #4]
    1126:	881b      	ldrh	r3, [r3, #0]
    1128:	887a      	ldrh	r2, [r7, #2]
    112a:	429a      	cmp	r2, r3
    112c:	bf0c      	ite	eq
    112e:	2301      	moveq	r3, #1
    1130:	2300      	movne	r3, #0
    1132:	b2db      	uxtb	r3, r3
    1134:	4618      	mov	r0, r3
    1136:	370c      	adds	r7, #12
    1138:	46bd      	mov	sp, r7
    113a:	bc80      	pop	{r7}
    113c:	4770      	bx	lr
    113e:	bf00      	nop
    1140:	40022000 	.word	0x40022000

00001144 <write_back_buffer>:
    1144:	b580      	push	{r7, lr}
    1146:	b084      	sub	sp, #16
    1148:	af00      	add	r7, sp, #0
    114a:	4b1e      	ldr	r3, [pc, #120]	; (11c4 <write_back_buffer+0x80>)
    114c:	785b      	ldrb	r3, [r3, #1]
    114e:	029b      	lsls	r3, r3, #10
    1150:	60bb      	str	r3, [r7, #8]
    1152:	4b1d      	ldr	r3, [pc, #116]	; (11c8 <write_back_buffer+0x84>)
    1154:	607b      	str	r3, [r7, #4]
    1156:	2300      	movs	r3, #0
    1158:	60fb      	str	r3, [r7, #12]
    115a:	e017      	b.n	118c <write_back_buffer+0x48>
    115c:	687b      	ldr	r3, [r7, #4]
    115e:	881b      	ldrh	r3, [r3, #0]
    1160:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1164:	4293      	cmp	r3, r2
    1166:	d008      	beq.n	117a <write_back_buffer+0x36>
    1168:	687b      	ldr	r3, [r7, #4]
    116a:	881b      	ldrh	r3, [r3, #0]
    116c:	4619      	mov	r1, r3
    116e:	68b8      	ldr	r0, [r7, #8]
    1170:	f7ff ffb2 	bl	10d8 <flash_write_hword>
    1174:	4603      	mov	r3, r0
    1176:	2b00      	cmp	r3, #0
    1178:	d00d      	beq.n	1196 <write_back_buffer+0x52>
    117a:	68bb      	ldr	r3, [r7, #8]
    117c:	3302      	adds	r3, #2
    117e:	60bb      	str	r3, [r7, #8]
    1180:	687b      	ldr	r3, [r7, #4]
    1182:	3302      	adds	r3, #2
    1184:	607b      	str	r3, [r7, #4]
    1186:	68fb      	ldr	r3, [r7, #12]
    1188:	3301      	adds	r3, #1
    118a:	60fb      	str	r3, [r7, #12]
    118c:	68fb      	ldr	r3, [r7, #12]
    118e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1192:	dbe3      	blt.n	115c <write_back_buffer+0x18>
    1194:	e000      	b.n	1198 <write_back_buffer+0x54>
    1196:	bf00      	nop
    1198:	68fb      	ldr	r3, [r7, #12]
    119a:	2b00      	cmp	r3, #0
    119c:	dd06      	ble.n	11ac <write_back_buffer+0x68>
    119e:	4b09      	ldr	r3, [pc, #36]	; (11c4 <write_back_buffer+0x80>)
    11a0:	781b      	ldrb	r3, [r3, #0]
    11a2:	f023 0304 	bic.w	r3, r3, #4
    11a6:	b2da      	uxtb	r2, r3
    11a8:	4b06      	ldr	r3, [pc, #24]	; (11c4 <write_back_buffer+0x80>)
    11aa:	701a      	strb	r2, [r3, #0]
    11ac:	68fb      	ldr	r3, [r7, #12]
    11ae:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    11b2:	d101      	bne.n	11b8 <write_back_buffer+0x74>
    11b4:	2301      	movs	r3, #1
    11b6:	e000      	b.n	11ba <write_back_buffer+0x76>
    11b8:	2300      	movs	r3, #0
    11ba:	4618      	mov	r0, r3
    11bc:	3710      	adds	r7, #16
    11be:	46bd      	mov	sp, r7
    11c0:	bd80      	pop	{r7, pc}
    11c2:	bf00      	nop
    11c4:	200000e4 	.word	0x200000e4
    11c8:	200000e6 	.word	0x200000e6

000011cc <load_row>:
    11cc:	b480      	push	{r7}
    11ce:	b087      	sub	sp, #28
    11d0:	af00      	add	r7, sp, #0
    11d2:	6078      	str	r0, [r7, #4]
    11d4:	687b      	ldr	r3, [r7, #4]
    11d6:	029b      	lsls	r3, r3, #10
    11d8:	617b      	str	r3, [r7, #20]
    11da:	4b15      	ldr	r3, [pc, #84]	; (1230 <load_row+0x64>)
    11dc:	613b      	str	r3, [r7, #16]
    11de:	2300      	movs	r3, #0
    11e0:	60fb      	str	r3, [r7, #12]
    11e2:	e00a      	b.n	11fa <load_row+0x2e>
    11e4:	693b      	ldr	r3, [r7, #16]
    11e6:	1c9a      	adds	r2, r3, #2
    11e8:	613a      	str	r2, [r7, #16]
    11ea:	697a      	ldr	r2, [r7, #20]
    11ec:	1c91      	adds	r1, r2, #2
    11ee:	6179      	str	r1, [r7, #20]
    11f0:	8812      	ldrh	r2, [r2, #0]
    11f2:	801a      	strh	r2, [r3, #0]
    11f4:	68fb      	ldr	r3, [r7, #12]
    11f6:	3301      	adds	r3, #1
    11f8:	60fb      	str	r3, [r7, #12]
    11fa:	68fb      	ldr	r3, [r7, #12]
    11fc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1200:	dbf0      	blt.n	11e4 <load_row+0x18>
    1202:	687b      	ldr	r3, [r7, #4]
    1204:	b2da      	uxtb	r2, r3
    1206:	4b0b      	ldr	r3, [pc, #44]	; (1234 <load_row+0x68>)
    1208:	705a      	strb	r2, [r3, #1]
    120a:	4b0a      	ldr	r3, [pc, #40]	; (1234 <load_row+0x68>)
    120c:	781b      	ldrb	r3, [r3, #0]
    120e:	f023 0301 	bic.w	r3, r3, #1
    1212:	b2da      	uxtb	r2, r3
    1214:	4b07      	ldr	r3, [pc, #28]	; (1234 <load_row+0x68>)
    1216:	701a      	strb	r2, [r3, #0]
    1218:	4b06      	ldr	r3, [pc, #24]	; (1234 <load_row+0x68>)
    121a:	781b      	ldrb	r3, [r3, #0]
    121c:	f043 0302 	orr.w	r3, r3, #2
    1220:	b2da      	uxtb	r2, r3
    1222:	4b04      	ldr	r3, [pc, #16]	; (1234 <load_row+0x68>)
    1224:	701a      	strb	r2, [r3, #0]
    1226:	bf00      	nop
    1228:	371c      	adds	r7, #28
    122a:	46bd      	mov	sp, r7
    122c:	bc80      	pop	{r7}
    122e:	4770      	bx	lr
    1230:	200000e6 	.word	0x200000e6
    1234:	200000e4 	.word	0x200000e4

00001238 <is_erased>:
    1238:	b480      	push	{r7}
    123a:	b085      	sub	sp, #20
    123c:	af00      	add	r7, sp, #0
    123e:	6078      	str	r0, [r7, #4]
    1240:	687b      	ldr	r3, [r7, #4]
    1242:	029b      	lsls	r3, r3, #10
    1244:	60fb      	str	r3, [r7, #12]
    1246:	2300      	movs	r3, #0
    1248:	60bb      	str	r3, [r7, #8]
    124a:	e00c      	b.n	1266 <is_erased+0x2e>
    124c:	68fb      	ldr	r3, [r7, #12]
    124e:	1c9a      	adds	r2, r3, #2
    1250:	60fa      	str	r2, [r7, #12]
    1252:	881b      	ldrh	r3, [r3, #0]
    1254:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1258:	4293      	cmp	r3, r2
    125a:	d001      	beq.n	1260 <is_erased+0x28>
    125c:	2300      	movs	r3, #0
    125e:	e008      	b.n	1272 <is_erased+0x3a>
    1260:	68bb      	ldr	r3, [r7, #8]
    1262:	3301      	adds	r3, #1
    1264:	60bb      	str	r3, [r7, #8]
    1266:	68bb      	ldr	r3, [r7, #8]
    1268:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    126c:	dbee      	blt.n	124c <is_erased+0x14>
    126e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1272:	4618      	mov	r0, r3
    1274:	3714      	adds	r7, #20
    1276:	46bd      	mov	sp, r7
    1278:	bc80      	pop	{r7}
    127a:	4770      	bx	lr

0000127c <flash_erase_row>:
    127c:	b580      	push	{r7, lr}
    127e:	b086      	sub	sp, #24
    1280:	af00      	add	r7, sp, #0
    1282:	6078      	str	r0, [r7, #4]
    1284:	687b      	ldr	r3, [r7, #4]
    1286:	2b3f      	cmp	r3, #63	; 0x3f
    1288:	d801      	bhi.n	128e <flash_erase_row+0x12>
    128a:	2300      	movs	r3, #0
    128c:	e052      	b.n	1334 <flash_erase_row+0xb8>
    128e:	6878      	ldr	r0, [r7, #4]
    1290:	f7ff ffd2 	bl	1238 <is_erased>
    1294:	4603      	mov	r3, r0
    1296:	2b00      	cmp	r3, #0
    1298:	d001      	beq.n	129e <flash_erase_row+0x22>
    129a:	2301      	movs	r3, #1
    129c:	e04a      	b.n	1334 <flash_erase_row+0xb8>
    129e:	687b      	ldr	r3, [r7, #4]
    12a0:	029b      	lsls	r3, r3, #10
    12a2:	617b      	str	r3, [r7, #20]
    12a4:	4b25      	ldr	r3, [pc, #148]	; (133c <flash_erase_row+0xc0>)
    12a6:	691b      	ldr	r3, [r3, #16]
    12a8:	f003 0380 	and.w	r3, r3, #128	; 0x80
    12ac:	2b00      	cmp	r3, #0
    12ae:	d001      	beq.n	12b4 <flash_erase_row+0x38>
    12b0:	2300      	movs	r3, #0
    12b2:	e03f      	b.n	1334 <flash_erase_row+0xb8>
    12b4:	4a21      	ldr	r2, [pc, #132]	; (133c <flash_erase_row+0xc0>)
    12b6:	4b21      	ldr	r3, [pc, #132]	; (133c <flash_erase_row+0xc0>)
    12b8:	68db      	ldr	r3, [r3, #12]
    12ba:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    12be:	60d3      	str	r3, [r2, #12]
    12c0:	4b1e      	ldr	r3, [pc, #120]	; (133c <flash_erase_row+0xc0>)
    12c2:	2202      	movs	r2, #2
    12c4:	611a      	str	r2, [r3, #16]
    12c6:	4a1d      	ldr	r2, [pc, #116]	; (133c <flash_erase_row+0xc0>)
    12c8:	697b      	ldr	r3, [r7, #20]
    12ca:	6153      	str	r3, [r2, #20]
    12cc:	4a1b      	ldr	r2, [pc, #108]	; (133c <flash_erase_row+0xc0>)
    12ce:	4b1b      	ldr	r3, [pc, #108]	; (133c <flash_erase_row+0xc0>)
    12d0:	691b      	ldr	r3, [r3, #16]
    12d2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    12d6:	6113      	str	r3, [r2, #16]
    12d8:	bf00      	nop
    12da:	4b18      	ldr	r3, [pc, #96]	; (133c <flash_erase_row+0xc0>)
    12dc:	68db      	ldr	r3, [r3, #12]
    12de:	f003 0301 	and.w	r3, r3, #1
    12e2:	2b00      	cmp	r3, #0
    12e4:	d005      	beq.n	12f2 <flash_erase_row+0x76>
    12e6:	4b15      	ldr	r3, [pc, #84]	; (133c <flash_erase_row+0xc0>)
    12e8:	68db      	ldr	r3, [r3, #12]
    12ea:	f003 0320 	and.w	r3, r3, #32
    12ee:	2b00      	cmp	r3, #0
    12f0:	d0f3      	beq.n	12da <flash_erase_row+0x5e>
    12f2:	687b      	ldr	r3, [r7, #4]
    12f4:	029b      	lsls	r3, r3, #10
    12f6:	617b      	str	r3, [r7, #20]
    12f8:	2300      	movs	r3, #0
    12fa:	60fb      	str	r3, [r7, #12]
    12fc:	e00c      	b.n	1318 <flash_erase_row+0x9c>
    12fe:	697b      	ldr	r3, [r7, #20]
    1300:	1c9a      	adds	r2, r3, #2
    1302:	617a      	str	r2, [r7, #20]
    1304:	881b      	ldrh	r3, [r3, #0]
    1306:	827b      	strh	r3, [r7, #18]
    1308:	8a7b      	ldrh	r3, [r7, #18]
    130a:	f64f 72ff 	movw	r2, #65535	; 0xffff
    130e:	4293      	cmp	r3, r2
    1310:	d107      	bne.n	1322 <flash_erase_row+0xa6>
    1312:	68fb      	ldr	r3, [r7, #12]
    1314:	3301      	adds	r3, #1
    1316:	60fb      	str	r3, [r7, #12]
    1318:	68fb      	ldr	r3, [r7, #12]
    131a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    131e:	dbee      	blt.n	12fe <flash_erase_row+0x82>
    1320:	e000      	b.n	1324 <flash_erase_row+0xa8>
    1322:	bf00      	nop
    1324:	8a7b      	ldrh	r3, [r7, #18]
    1326:	f64f 72ff 	movw	r2, #65535	; 0xffff
    132a:	4293      	cmp	r3, r2
    132c:	bf0c      	ite	eq
    132e:	2301      	moveq	r3, #1
    1330:	2300      	movne	r3, #0
    1332:	b2db      	uxtb	r3, r3
    1334:	4618      	mov	r0, r3
    1336:	3718      	adds	r7, #24
    1338:	46bd      	mov	sp, r7
    133a:	bd80      	pop	{r7, pc}
    133c:	40022000 	.word	0x40022000

00001340 <flash_sync>:
    1340:	b580      	push	{r7, lr}
    1342:	af00      	add	r7, sp, #0
    1344:	4b10      	ldr	r3, [pc, #64]	; (1388 <flash_sync+0x48>)
    1346:	781b      	ldrb	r3, [r3, #0]
    1348:	f003 0301 	and.w	r3, r3, #1
    134c:	2b00      	cmp	r3, #0
    134e:	d017      	beq.n	1380 <flash_sync+0x40>
    1350:	4b0d      	ldr	r3, [pc, #52]	; (1388 <flash_sync+0x48>)
    1352:	785b      	ldrb	r3, [r3, #1]
    1354:	4618      	mov	r0, r3
    1356:	f7ff ff91 	bl	127c <flash_erase_row>
    135a:	4603      	mov	r3, r0
    135c:	2b00      	cmp	r3, #0
    135e:	d00d      	beq.n	137c <flash_sync+0x3c>
    1360:	f7ff fef0 	bl	1144 <write_back_buffer>
    1364:	4603      	mov	r3, r0
    1366:	2b00      	cmp	r3, #0
    1368:	d008      	beq.n	137c <flash_sync+0x3c>
    136a:	4b07      	ldr	r3, [pc, #28]	; (1388 <flash_sync+0x48>)
    136c:	781b      	ldrb	r3, [r3, #0]
    136e:	f023 0301 	bic.w	r3, r3, #1
    1372:	b2da      	uxtb	r2, r3
    1374:	4b04      	ldr	r3, [pc, #16]	; (1388 <flash_sync+0x48>)
    1376:	701a      	strb	r2, [r3, #0]
    1378:	2301      	movs	r3, #1
    137a:	e002      	b.n	1382 <flash_sync+0x42>
    137c:	2300      	movs	r3, #0
    137e:	e000      	b.n	1382 <flash_sync+0x42>
    1380:	2301      	movs	r3, #1
    1382:	4618      	mov	r0, r3
    1384:	bd80      	pop	{r7, pc}
    1386:	bf00      	nop
    1388:	200000e4 	.word	0x200000e4

0000138c <flash_flush>:
    138c:	b480      	push	{r7}
    138e:	af00      	add	r7, sp, #0
    1390:	4b03      	ldr	r3, [pc, #12]	; (13a0 <flash_flush+0x14>)
    1392:	2200      	movs	r2, #0
    1394:	701a      	strb	r2, [r3, #0]
    1396:	bf00      	nop
    1398:	46bd      	mov	sp, r7
    139a:	bc80      	pop	{r7}
    139c:	4770      	bx	lr
    139e:	bf00      	nop
    13a0:	200000e4 	.word	0x200000e4

000013a4 <flash_disable>:
    13a4:	b580      	push	{r7, lr}
    13a6:	af00      	add	r7, sp, #0
    13a8:	f7ff ffca 	bl	1340 <flash_sync>
    13ac:	4b05      	ldr	r3, [pc, #20]	; (13c4 <flash_disable+0x20>)
    13ae:	2200      	movs	r2, #0
    13b0:	701a      	strb	r2, [r3, #0]
    13b2:	4a05      	ldr	r2, [pc, #20]	; (13c8 <flash_disable+0x24>)
    13b4:	4b04      	ldr	r3, [pc, #16]	; (13c8 <flash_disable+0x24>)
    13b6:	691b      	ldr	r3, [r3, #16]
    13b8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    13bc:	6113      	str	r3, [r2, #16]
    13be:	bf00      	nop
    13c0:	bd80      	pop	{r7, pc}
    13c2:	bf00      	nop
    13c4:	200000e4 	.word	0x200000e4
    13c8:	40022000 	.word	0x40022000

000013cc <strcmp>:
    13cc:	b480      	push	{r7}
    13ce:	b085      	sub	sp, #20
    13d0:	af00      	add	r7, sp, #0
    13d2:	6078      	str	r0, [r7, #4]
    13d4:	6039      	str	r1, [r7, #0]
    13d6:	2300      	movs	r3, #0
    13d8:	60fb      	str	r3, [r7, #12]
    13da:	e018      	b.n	140e <strcmp+0x42>
    13dc:	687b      	ldr	r3, [r7, #4]
    13de:	781a      	ldrb	r2, [r3, #0]
    13e0:	683b      	ldr	r3, [r7, #0]
    13e2:	781b      	ldrb	r3, [r3, #0]
    13e4:	429a      	cmp	r2, r3
    13e6:	d203      	bcs.n	13f0 <strcmp+0x24>
    13e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    13ec:	60fb      	str	r3, [r7, #12]
    13ee:	e016      	b.n	141e <strcmp+0x52>
    13f0:	687b      	ldr	r3, [r7, #4]
    13f2:	781a      	ldrb	r2, [r3, #0]
    13f4:	683b      	ldr	r3, [r7, #0]
    13f6:	781b      	ldrb	r3, [r3, #0]
    13f8:	429a      	cmp	r2, r3
    13fa:	d902      	bls.n	1402 <strcmp+0x36>
    13fc:	2301      	movs	r3, #1
    13fe:	60fb      	str	r3, [r7, #12]
    1400:	e00d      	b.n	141e <strcmp+0x52>
    1402:	687b      	ldr	r3, [r7, #4]
    1404:	3301      	adds	r3, #1
    1406:	607b      	str	r3, [r7, #4]
    1408:	683b      	ldr	r3, [r7, #0]
    140a:	3301      	adds	r3, #1
    140c:	603b      	str	r3, [r7, #0]
    140e:	687b      	ldr	r3, [r7, #4]
    1410:	781b      	ldrb	r3, [r3, #0]
    1412:	2b00      	cmp	r3, #0
    1414:	d003      	beq.n	141e <strcmp+0x52>
    1416:	683b      	ldr	r3, [r7, #0]
    1418:	781b      	ldrb	r3, [r3, #0]
    141a:	2b00      	cmp	r3, #0
    141c:	d1de      	bne.n	13dc <strcmp+0x10>
    141e:	68fb      	ldr	r3, [r7, #12]
    1420:	2b00      	cmp	r3, #0
    1422:	d115      	bne.n	1450 <strcmp+0x84>
    1424:	687b      	ldr	r3, [r7, #4]
    1426:	781b      	ldrb	r3, [r3, #0]
    1428:	2b00      	cmp	r3, #0
    142a:	d107      	bne.n	143c <strcmp+0x70>
    142c:	683b      	ldr	r3, [r7, #0]
    142e:	781b      	ldrb	r3, [r3, #0]
    1430:	2b00      	cmp	r3, #0
    1432:	d003      	beq.n	143c <strcmp+0x70>
    1434:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1438:	60fb      	str	r3, [r7, #12]
    143a:	e009      	b.n	1450 <strcmp+0x84>
    143c:	687b      	ldr	r3, [r7, #4]
    143e:	781b      	ldrb	r3, [r3, #0]
    1440:	2b00      	cmp	r3, #0
    1442:	d005      	beq.n	1450 <strcmp+0x84>
    1444:	683b      	ldr	r3, [r7, #0]
    1446:	781b      	ldrb	r3, [r3, #0]
    1448:	2b00      	cmp	r3, #0
    144a:	d101      	bne.n	1450 <strcmp+0x84>
    144c:	2301      	movs	r3, #1
    144e:	60fb      	str	r3, [r7, #12]
    1450:	68fb      	ldr	r3, [r7, #12]
    1452:	4618      	mov	r0, r3
    1454:	3714      	adds	r7, #20
    1456:	46bd      	mov	sp, r7
    1458:	bc80      	pop	{r7}
    145a:	4770      	bx	lr

0000145c <alpha>:
    145c:	b480      	push	{r7}
    145e:	b083      	sub	sp, #12
    1460:	af00      	add	r7, sp, #0
    1462:	4603      	mov	r3, r0
    1464:	71fb      	strb	r3, [r7, #7]
    1466:	79fb      	ldrb	r3, [r7, #7]
    1468:	2b60      	cmp	r3, #96	; 0x60
    146a:	d902      	bls.n	1472 <alpha+0x16>
    146c:	79fb      	ldrb	r3, [r7, #7]
    146e:	2b7a      	cmp	r3, #122	; 0x7a
    1470:	d905      	bls.n	147e <alpha+0x22>
    1472:	79fb      	ldrb	r3, [r7, #7]
    1474:	2b40      	cmp	r3, #64	; 0x40
    1476:	d904      	bls.n	1482 <alpha+0x26>
    1478:	79fb      	ldrb	r3, [r7, #7]
    147a:	2b5a      	cmp	r3, #90	; 0x5a
    147c:	d801      	bhi.n	1482 <alpha+0x26>
    147e:	2301      	movs	r3, #1
    1480:	e000      	b.n	1484 <alpha+0x28>
    1482:	2300      	movs	r3, #0
    1484:	4618      	mov	r0, r3
    1486:	370c      	adds	r7, #12
    1488:	46bd      	mov	sp, r7
    148a:	bc80      	pop	{r7}
    148c:	4770      	bx	lr

0000148e <digit>:
    148e:	b480      	push	{r7}
    1490:	b083      	sub	sp, #12
    1492:	af00      	add	r7, sp, #0
    1494:	4603      	mov	r3, r0
    1496:	71fb      	strb	r3, [r7, #7]
    1498:	79fb      	ldrb	r3, [r7, #7]
    149a:	2b2f      	cmp	r3, #47	; 0x2f
    149c:	d904      	bls.n	14a8 <digit+0x1a>
    149e:	79fb      	ldrb	r3, [r7, #7]
    14a0:	2b39      	cmp	r3, #57	; 0x39
    14a2:	d801      	bhi.n	14a8 <digit+0x1a>
    14a4:	2301      	movs	r3, #1
    14a6:	e000      	b.n	14aa <digit+0x1c>
    14a8:	2300      	movs	r3, #0
    14aa:	4618      	mov	r0, r3
    14ac:	370c      	adds	r7, #12
    14ae:	46bd      	mov	sp, r7
    14b0:	bc80      	pop	{r7}
    14b2:	4770      	bx	lr

000014b4 <hexdigit>:
    14b4:	b580      	push	{r7, lr}
    14b6:	b082      	sub	sp, #8
    14b8:	af00      	add	r7, sp, #0
    14ba:	4603      	mov	r3, r0
    14bc:	71fb      	strb	r3, [r7, #7]
    14be:	79fb      	ldrb	r3, [r7, #7]
    14c0:	2b60      	cmp	r3, #96	; 0x60
    14c2:	d902      	bls.n	14ca <hexdigit+0x16>
    14c4:	79fb      	ldrb	r3, [r7, #7]
    14c6:	3b20      	subs	r3, #32
    14c8:	71fb      	strb	r3, [r7, #7]
    14ca:	79fb      	ldrb	r3, [r7, #7]
    14cc:	4618      	mov	r0, r3
    14ce:	f7ff ffde 	bl	148e <digit>
    14d2:	4603      	mov	r3, r0
    14d4:	2b00      	cmp	r3, #0
    14d6:	d105      	bne.n	14e4 <hexdigit+0x30>
    14d8:	79fb      	ldrb	r3, [r7, #7]
    14da:	2b40      	cmp	r3, #64	; 0x40
    14dc:	d904      	bls.n	14e8 <hexdigit+0x34>
    14de:	79fb      	ldrb	r3, [r7, #7]
    14e0:	2b46      	cmp	r3, #70	; 0x46
    14e2:	d801      	bhi.n	14e8 <hexdigit+0x34>
    14e4:	2301      	movs	r3, #1
    14e6:	e000      	b.n	14ea <hexdigit+0x36>
    14e8:	2300      	movs	r3, #0
    14ea:	4618      	mov	r0, r3
    14ec:	3708      	adds	r7, #8
    14ee:	46bd      	mov	sp, r7
    14f0:	bd80      	pop	{r7, pc}

000014f2 <atoi>:
    14f2:	b580      	push	{r7, lr}
    14f4:	b086      	sub	sp, #24
    14f6:	af00      	add	r7, sp, #0
    14f8:	6078      	str	r0, [r7, #4]
    14fa:	2300      	movs	r3, #0
    14fc:	617b      	str	r3, [r7, #20]
    14fe:	2301      	movs	r3, #1
    1500:	613b      	str	r3, [r7, #16]
    1502:	230a      	movs	r3, #10
    1504:	60fb      	str	r3, [r7, #12]
    1506:	e002      	b.n	150e <atoi+0x1c>
    1508:	687b      	ldr	r3, [r7, #4]
    150a:	3301      	adds	r3, #1
    150c:	607b      	str	r3, [r7, #4]
    150e:	687b      	ldr	r3, [r7, #4]
    1510:	781b      	ldrb	r3, [r3, #0]
    1512:	2b00      	cmp	r3, #0
    1514:	d003      	beq.n	151e <atoi+0x2c>
    1516:	687b      	ldr	r3, [r7, #4]
    1518:	781b      	ldrb	r3, [r3, #0]
    151a:	2b20      	cmp	r3, #32
    151c:	d0f4      	beq.n	1508 <atoi+0x16>
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	781b      	ldrb	r3, [r3, #0]
    1522:	2b2d      	cmp	r3, #45	; 0x2d
    1524:	d105      	bne.n	1532 <atoi+0x40>
    1526:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    152a:	613b      	str	r3, [r7, #16]
    152c:	687b      	ldr	r3, [r7, #4]
    152e:	3301      	adds	r3, #1
    1530:	607b      	str	r3, [r7, #4]
    1532:	687b      	ldr	r3, [r7, #4]
    1534:	781b      	ldrb	r3, [r3, #0]
    1536:	2b24      	cmp	r3, #36	; 0x24
    1538:	d10e      	bne.n	1558 <atoi+0x66>
    153a:	687b      	ldr	r3, [r7, #4]
    153c:	3301      	adds	r3, #1
    153e:	781b      	ldrb	r3, [r3, #0]
    1540:	4618      	mov	r0, r3
    1542:	f7ff ffb7 	bl	14b4 <hexdigit>
    1546:	4603      	mov	r3, r0
    1548:	2b00      	cmp	r3, #0
    154a:	d005      	beq.n	1558 <atoi+0x66>
    154c:	2310      	movs	r3, #16
    154e:	60fb      	str	r3, [r7, #12]
    1550:	687b      	ldr	r3, [r7, #4]
    1552:	3301      	adds	r3, #1
    1554:	607b      	str	r3, [r7, #4]
    1556:	e012      	b.n	157e <atoi+0x8c>
    1558:	687b      	ldr	r3, [r7, #4]
    155a:	781b      	ldrb	r3, [r3, #0]
    155c:	2b30      	cmp	r3, #48	; 0x30
    155e:	d128      	bne.n	15b2 <atoi+0xc0>
    1560:	687b      	ldr	r3, [r7, #4]
    1562:	3301      	adds	r3, #1
    1564:	781b      	ldrb	r3, [r3, #0]
    1566:	2b78      	cmp	r3, #120	; 0x78
    1568:	d004      	beq.n	1574 <atoi+0x82>
    156a:	687b      	ldr	r3, [r7, #4]
    156c:	3301      	adds	r3, #1
    156e:	781b      	ldrb	r3, [r3, #0]
    1570:	2b58      	cmp	r3, #88	; 0x58
    1572:	d11e      	bne.n	15b2 <atoi+0xc0>
    1574:	2310      	movs	r3, #16
    1576:	60fb      	str	r3, [r7, #12]
    1578:	687b      	ldr	r3, [r7, #4]
    157a:	3302      	adds	r3, #2
    157c:	607b      	str	r3, [r7, #4]
    157e:	e018      	b.n	15b2 <atoi+0xc0>
    1580:	7afb      	ldrb	r3, [r7, #11]
    1582:	2b60      	cmp	r3, #96	; 0x60
    1584:	d902      	bls.n	158c <atoi+0x9a>
    1586:	7afb      	ldrb	r3, [r7, #11]
    1588:	3b20      	subs	r3, #32
    158a:	72fb      	strb	r3, [r7, #11]
    158c:	7afb      	ldrb	r3, [r7, #11]
    158e:	3b30      	subs	r3, #48	; 0x30
    1590:	72fb      	strb	r3, [r7, #11]
    1592:	7afb      	ldrb	r3, [r7, #11]
    1594:	2b09      	cmp	r3, #9
    1596:	d902      	bls.n	159e <atoi+0xac>
    1598:	7afb      	ldrb	r3, [r7, #11]
    159a:	3b07      	subs	r3, #7
    159c:	72fb      	strb	r3, [r7, #11]
    159e:	697b      	ldr	r3, [r7, #20]
    15a0:	68fa      	ldr	r2, [r7, #12]
    15a2:	fb02 f203 	mul.w	r2, r2, r3
    15a6:	7afb      	ldrb	r3, [r7, #11]
    15a8:	4413      	add	r3, r2
    15aa:	617b      	str	r3, [r7, #20]
    15ac:	687b      	ldr	r3, [r7, #4]
    15ae:	3301      	adds	r3, #1
    15b0:	607b      	str	r3, [r7, #4]
    15b2:	687b      	ldr	r3, [r7, #4]
    15b4:	781b      	ldrb	r3, [r3, #0]
    15b6:	72fb      	strb	r3, [r7, #11]
    15b8:	7afb      	ldrb	r3, [r7, #11]
    15ba:	2b00      	cmp	r3, #0
    15bc:	d00d      	beq.n	15da <atoi+0xe8>
    15be:	68fb      	ldr	r3, [r7, #12]
    15c0:	2b0a      	cmp	r3, #10
    15c2:	d10a      	bne.n	15da <atoi+0xe8>
    15c4:	7afb      	ldrb	r3, [r7, #11]
    15c6:	4618      	mov	r0, r3
    15c8:	f7ff ff61 	bl	148e <digit>
    15cc:	4603      	mov	r3, r0
    15ce:	2b00      	cmp	r3, #0
    15d0:	bf14      	ite	ne
    15d2:	2301      	movne	r3, #1
    15d4:	2300      	moveq	r3, #0
    15d6:	b2db      	uxtb	r3, r3
    15d8:	e009      	b.n	15ee <atoi+0xfc>
    15da:	7afb      	ldrb	r3, [r7, #11]
    15dc:	4618      	mov	r0, r3
    15de:	f7ff ff69 	bl	14b4 <hexdigit>
    15e2:	4603      	mov	r3, r0
    15e4:	2b00      	cmp	r3, #0
    15e6:	bf14      	ite	ne
    15e8:	2301      	movne	r3, #1
    15ea:	2300      	moveq	r3, #0
    15ec:	b2db      	uxtb	r3, r3
    15ee:	2b00      	cmp	r3, #0
    15f0:	d1c6      	bne.n	1580 <atoi+0x8e>
    15f2:	693b      	ldr	r3, [r7, #16]
    15f4:	697a      	ldr	r2, [r7, #20]
    15f6:	fb02 f303 	mul.w	r3, r2, r3
    15fa:	4618      	mov	r0, r3
    15fc:	3718      	adds	r7, #24
    15fe:	46bd      	mov	sp, r7
    1600:	bd80      	pop	{r7, pc}

00001602 <move>:
    1602:	b480      	push	{r7}
    1604:	b085      	sub	sp, #20
    1606:	af00      	add	r7, sp, #0
    1608:	60f8      	str	r0, [r7, #12]
    160a:	60b9      	str	r1, [r7, #8]
    160c:	607a      	str	r2, [r7, #4]
    160e:	e00a      	b.n	1626 <move+0x24>
    1610:	68bb      	ldr	r3, [r7, #8]
    1612:	1c5a      	adds	r2, r3, #1
    1614:	60ba      	str	r2, [r7, #8]
    1616:	68fa      	ldr	r2, [r7, #12]
    1618:	1c51      	adds	r1, r2, #1
    161a:	60f9      	str	r1, [r7, #12]
    161c:	7812      	ldrb	r2, [r2, #0]
    161e:	701a      	strb	r2, [r3, #0]
    1620:	687b      	ldr	r3, [r7, #4]
    1622:	3b01      	subs	r3, #1
    1624:	607b      	str	r3, [r7, #4]
    1626:	687b      	ldr	r3, [r7, #4]
    1628:	2b00      	cmp	r3, #0
    162a:	d1f1      	bne.n	1610 <move+0xe>
    162c:	bf00      	nop
    162e:	3714      	adds	r7, #20
    1630:	46bd      	mov	sp, r7
    1632:	bc80      	pop	{r7}
    1634:	4770      	bx	lr

00001636 <strlen>:
    1636:	b480      	push	{r7}
    1638:	b085      	sub	sp, #20
    163a:	af00      	add	r7, sp, #0
    163c:	6078      	str	r0, [r7, #4]
    163e:	2300      	movs	r3, #0
    1640:	60fb      	str	r3, [r7, #12]
    1642:	e002      	b.n	164a <strlen+0x14>
    1644:	68fb      	ldr	r3, [r7, #12]
    1646:	3301      	adds	r3, #1
    1648:	60fb      	str	r3, [r7, #12]
    164a:	68fb      	ldr	r3, [r7, #12]
    164c:	687a      	ldr	r2, [r7, #4]
    164e:	4413      	add	r3, r2
    1650:	781b      	ldrb	r3, [r3, #0]
    1652:	2b00      	cmp	r3, #0
    1654:	d1f6      	bne.n	1644 <strlen+0xe>
    1656:	68fb      	ldr	r3, [r7, #12]
    1658:	4618      	mov	r0, r3
    165a:	3714      	adds	r7, #20
    165c:	46bd      	mov	sp, r7
    165e:	bc80      	pop	{r7}
    1660:	4770      	bx	lr

00001662 <fill>:
    1662:	b480      	push	{r7}
    1664:	b087      	sub	sp, #28
    1666:	af00      	add	r7, sp, #0
    1668:	60f8      	str	r0, [r7, #12]
    166a:	60b9      	str	r1, [r7, #8]
    166c:	4613      	mov	r3, r2
    166e:	71fb      	strb	r3, [r7, #7]
    1670:	2300      	movs	r3, #0
    1672:	617b      	str	r3, [r7, #20]
    1674:	e007      	b.n	1686 <fill+0x24>
    1676:	68fb      	ldr	r3, [r7, #12]
    1678:	1c5a      	adds	r2, r3, #1
    167a:	60fa      	str	r2, [r7, #12]
    167c:	79fa      	ldrb	r2, [r7, #7]
    167e:	701a      	strb	r2, [r3, #0]
    1680:	697b      	ldr	r3, [r7, #20]
    1682:	3301      	adds	r3, #1
    1684:	617b      	str	r3, [r7, #20]
    1686:	697a      	ldr	r2, [r7, #20]
    1688:	68bb      	ldr	r3, [r7, #8]
    168a:	429a      	cmp	r2, r3
    168c:	d3f3      	bcc.n	1676 <fill+0x14>
    168e:	bf00      	nop
    1690:	371c      	adds	r7, #28
    1692:	46bd      	mov	sp, r7
    1694:	bc80      	pop	{r7}
    1696:	4770      	bx	lr

00001698 <is_lower>:
    1698:	b480      	push	{r7}
    169a:	b083      	sub	sp, #12
    169c:	af00      	add	r7, sp, #0
    169e:	4603      	mov	r3, r0
    16a0:	71fb      	strb	r3, [r7, #7]
    16a2:	79fb      	ldrb	r3, [r7, #7]
    16a4:	2b60      	cmp	r3, #96	; 0x60
    16a6:	d904      	bls.n	16b2 <is_lower+0x1a>
    16a8:	79fb      	ldrb	r3, [r7, #7]
    16aa:	2b7a      	cmp	r3, #122	; 0x7a
    16ac:	d801      	bhi.n	16b2 <is_lower+0x1a>
    16ae:	2301      	movs	r3, #1
    16b0:	e000      	b.n	16b4 <is_lower+0x1c>
    16b2:	2300      	movs	r3, #0
    16b4:	4618      	mov	r0, r3
    16b6:	370c      	adds	r7, #12
    16b8:	46bd      	mov	sp, r7
    16ba:	bc80      	pop	{r7}
    16bc:	4770      	bx	lr

000016be <is_upper>:
    16be:	b480      	push	{r7}
    16c0:	b083      	sub	sp, #12
    16c2:	af00      	add	r7, sp, #0
    16c4:	4603      	mov	r3, r0
    16c6:	71fb      	strb	r3, [r7, #7]
    16c8:	79fb      	ldrb	r3, [r7, #7]
    16ca:	2b40      	cmp	r3, #64	; 0x40
    16cc:	d904      	bls.n	16d8 <is_upper+0x1a>
    16ce:	79fb      	ldrb	r3, [r7, #7]
    16d0:	2b5a      	cmp	r3, #90	; 0x5a
    16d2:	d801      	bhi.n	16d8 <is_upper+0x1a>
    16d4:	2301      	movs	r3, #1
    16d6:	e000      	b.n	16da <is_upper+0x1c>
    16d8:	2300      	movs	r3, #0
    16da:	4618      	mov	r0, r3
    16dc:	370c      	adds	r7, #12
    16de:	46bd      	mov	sp, r7
    16e0:	bc80      	pop	{r7}
    16e2:	4770      	bx	lr

000016e4 <uppercase>:
    16e4:	b580      	push	{r7, lr}
    16e6:	b082      	sub	sp, #8
    16e8:	af00      	add	r7, sp, #0
    16ea:	6078      	str	r0, [r7, #4]
    16ec:	e010      	b.n	1710 <uppercase+0x2c>
    16ee:	687b      	ldr	r3, [r7, #4]
    16f0:	781b      	ldrb	r3, [r3, #0]
    16f2:	4618      	mov	r0, r3
    16f4:	f7ff ffd0 	bl	1698 <is_lower>
    16f8:	4603      	mov	r3, r0
    16fa:	2b00      	cmp	r3, #0
    16fc:	d005      	beq.n	170a <uppercase+0x26>
    16fe:	687b      	ldr	r3, [r7, #4]
    1700:	781b      	ldrb	r3, [r3, #0]
    1702:	3b20      	subs	r3, #32
    1704:	b2da      	uxtb	r2, r3
    1706:	687b      	ldr	r3, [r7, #4]
    1708:	701a      	strb	r2, [r3, #0]
    170a:	687b      	ldr	r3, [r7, #4]
    170c:	3301      	adds	r3, #1
    170e:	607b      	str	r3, [r7, #4]
    1710:	687b      	ldr	r3, [r7, #4]
    1712:	781b      	ldrb	r3, [r3, #0]
    1714:	2b00      	cmp	r3, #0
    1716:	d1ea      	bne.n	16ee <uppercase+0xa>
    1718:	bf00      	nop
    171a:	3708      	adds	r7, #8
    171c:	46bd      	mov	sp, r7
    171e:	bd80      	pop	{r7, pc}

00001720 <scan>:
    1720:	b480      	push	{r7}
    1722:	b085      	sub	sp, #20
    1724:	af00      	add	r7, sp, #0
    1726:	60f8      	str	r0, [r7, #12]
    1728:	60b9      	str	r1, [r7, #8]
    172a:	4613      	mov	r3, r2
    172c:	71fb      	strb	r3, [r7, #7]
    172e:	e002      	b.n	1736 <scan+0x16>
    1730:	68bb      	ldr	r3, [r7, #8]
    1732:	3301      	adds	r3, #1
    1734:	60bb      	str	r3, [r7, #8]
    1736:	68bb      	ldr	r3, [r7, #8]
    1738:	68fa      	ldr	r2, [r7, #12]
    173a:	4413      	add	r3, r2
    173c:	781b      	ldrb	r3, [r3, #0]
    173e:	2b00      	cmp	r3, #0
    1740:	d006      	beq.n	1750 <scan+0x30>
    1742:	68bb      	ldr	r3, [r7, #8]
    1744:	68fa      	ldr	r2, [r7, #12]
    1746:	4413      	add	r3, r2
    1748:	781b      	ldrb	r3, [r3, #0]
    174a:	79fa      	ldrb	r2, [r7, #7]
    174c:	429a      	cmp	r2, r3
    174e:	d1ef      	bne.n	1730 <scan+0x10>
    1750:	68bb      	ldr	r3, [r7, #8]
    1752:	4618      	mov	r0, r3
    1754:	3714      	adds	r7, #20
    1756:	46bd      	mov	sp, r7
    1758:	bc80      	pop	{r7}
    175a:	4770      	bx	lr

0000175c <skip>:
    175c:	b480      	push	{r7}
    175e:	b085      	sub	sp, #20
    1760:	af00      	add	r7, sp, #0
    1762:	60f8      	str	r0, [r7, #12]
    1764:	60b9      	str	r1, [r7, #8]
    1766:	4613      	mov	r3, r2
    1768:	71fb      	strb	r3, [r7, #7]
    176a:	e002      	b.n	1772 <skip+0x16>
    176c:	68bb      	ldr	r3, [r7, #8]
    176e:	3301      	adds	r3, #1
    1770:	60bb      	str	r3, [r7, #8]
    1772:	68bb      	ldr	r3, [r7, #8]
    1774:	68fa      	ldr	r2, [r7, #12]
    1776:	4413      	add	r3, r2
    1778:	781b      	ldrb	r3, [r3, #0]
    177a:	2b00      	cmp	r3, #0
    177c:	d006      	beq.n	178c <skip+0x30>
    177e:	68bb      	ldr	r3, [r7, #8]
    1780:	68fa      	ldr	r2, [r7, #12]
    1782:	4413      	add	r3, r2
    1784:	781b      	ldrb	r3, [r3, #0]
    1786:	79fa      	ldrb	r2, [r7, #7]
    1788:	429a      	cmp	r2, r3
    178a:	d0ef      	beq.n	176c <skip+0x10>
    178c:	68bb      	ldr	r3, [r7, #8]
    178e:	4618      	mov	r0, r3
    1790:	3714      	adds	r7, #20
    1792:	46bd      	mov	sp, r7
    1794:	bc80      	pop	{r7}
    1796:	4770      	bx	lr

00001798 <itoa>:
    1798:	b480      	push	{r7}
    179a:	b087      	sub	sp, #28
    179c:	af00      	add	r7, sp, #0
    179e:	60f8      	str	r0, [r7, #12]
    17a0:	60b9      	str	r1, [r7, #8]
    17a2:	607a      	str	r2, [r7, #4]
    17a4:	603b      	str	r3, [r7, #0]
    17a6:	2300      	movs	r3, #0
    17a8:	617b      	str	r3, [r7, #20]
    17aa:	683b      	ldr	r3, [r7, #0]
    17ac:	1e5a      	subs	r2, r3, #1
    17ae:	603a      	str	r2, [r7, #0]
    17b0:	461a      	mov	r2, r3
    17b2:	68bb      	ldr	r3, [r7, #8]
    17b4:	4413      	add	r3, r2
    17b6:	2200      	movs	r2, #0
    17b8:	701a      	strb	r2, [r3, #0]
    17ba:	68fb      	ldr	r3, [r7, #12]
    17bc:	2b00      	cmp	r3, #0
    17be:	da24      	bge.n	180a <itoa+0x72>
    17c0:	68fb      	ldr	r3, [r7, #12]
    17c2:	425b      	negs	r3, r3
    17c4:	60fb      	str	r3, [r7, #12]
    17c6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    17ca:	617b      	str	r3, [r7, #20]
    17cc:	e01d      	b.n	180a <itoa+0x72>
    17ce:	68fb      	ldr	r3, [r7, #12]
    17d0:	687a      	ldr	r2, [r7, #4]
    17d2:	fb93 f2f2 	sdiv	r2, r3, r2
    17d6:	6879      	ldr	r1, [r7, #4]
    17d8:	fb01 f202 	mul.w	r2, r1, r2
    17dc:	1a9b      	subs	r3, r3, r2
    17de:	b2db      	uxtb	r3, r3
    17e0:	3330      	adds	r3, #48	; 0x30
    17e2:	74fb      	strb	r3, [r7, #19]
    17e4:	7cfb      	ldrb	r3, [r7, #19]
    17e6:	2b39      	cmp	r3, #57	; 0x39
    17e8:	d902      	bls.n	17f0 <itoa+0x58>
    17ea:	7cfb      	ldrb	r3, [r7, #19]
    17ec:	3307      	adds	r3, #7
    17ee:	74fb      	strb	r3, [r7, #19]
    17f0:	683b      	ldr	r3, [r7, #0]
    17f2:	1e5a      	subs	r2, r3, #1
    17f4:	603a      	str	r2, [r7, #0]
    17f6:	461a      	mov	r2, r3
    17f8:	68bb      	ldr	r3, [r7, #8]
    17fa:	4413      	add	r3, r2
    17fc:	7cfa      	ldrb	r2, [r7, #19]
    17fe:	701a      	strb	r2, [r3, #0]
    1800:	68fa      	ldr	r2, [r7, #12]
    1802:	687b      	ldr	r3, [r7, #4]
    1804:	fb92 f3f3 	sdiv	r3, r2, r3
    1808:	60fb      	str	r3, [r7, #12]
    180a:	68fb      	ldr	r3, [r7, #12]
    180c:	2b00      	cmp	r3, #0
    180e:	d00b      	beq.n	1828 <itoa+0x90>
    1810:	683b      	ldr	r3, [r7, #0]
    1812:	2b00      	cmp	r3, #0
    1814:	dadb      	bge.n	17ce <itoa+0x36>
    1816:	e007      	b.n	1828 <itoa+0x90>
    1818:	683b      	ldr	r3, [r7, #0]
    181a:	1e5a      	subs	r2, r3, #1
    181c:	603a      	str	r2, [r7, #0]
    181e:	461a      	mov	r2, r3
    1820:	68bb      	ldr	r3, [r7, #8]
    1822:	4413      	add	r3, r2
    1824:	2230      	movs	r2, #48	; 0x30
    1826:	701a      	strb	r2, [r3, #0]
    1828:	683b      	ldr	r3, [r7, #0]
    182a:	2b00      	cmp	r3, #0
    182c:	dcf4      	bgt.n	1818 <itoa+0x80>
    182e:	697b      	ldr	r3, [r7, #20]
    1830:	2b00      	cmp	r3, #0
    1832:	d006      	beq.n	1842 <itoa+0xaa>
    1834:	683b      	ldr	r3, [r7, #0]
    1836:	2b00      	cmp	r3, #0
    1838:	d103      	bne.n	1842 <itoa+0xaa>
    183a:	68bb      	ldr	r3, [r7, #8]
    183c:	222d      	movs	r2, #45	; 0x2d
    183e:	701a      	strb	r2, [r3, #0]
    1840:	e005      	b.n	184e <itoa+0xb6>
    1842:	683b      	ldr	r3, [r7, #0]
    1844:	2b00      	cmp	r3, #0
    1846:	d102      	bne.n	184e <itoa+0xb6>
    1848:	68bb      	ldr	r3, [r7, #8]
    184a:	2230      	movs	r2, #48	; 0x30
    184c:	701a      	strb	r2, [r3, #0]
    184e:	68bb      	ldr	r3, [r7, #8]
    1850:	4618      	mov	r0, r3
    1852:	371c      	adds	r7, #28
    1854:	46bd      	mov	sp, r7
    1856:	bc80      	pop	{r7}
    1858:	4770      	bx	lr

0000185a <strcat>:
    185a:	b580      	push	{r7, lr}
    185c:	b082      	sub	sp, #8
    185e:	af00      	add	r7, sp, #0
    1860:	6078      	str	r0, [r7, #4]
    1862:	6039      	str	r1, [r7, #0]
    1864:	6878      	ldr	r0, [r7, #4]
    1866:	f7ff fee6 	bl	1636 <strlen>
    186a:	4603      	mov	r3, r0
    186c:	461a      	mov	r2, r3
    186e:	687b      	ldr	r3, [r7, #4]
    1870:	4413      	add	r3, r2
    1872:	607b      	str	r3, [r7, #4]
    1874:	e007      	b.n	1886 <strcat+0x2c>
    1876:	687b      	ldr	r3, [r7, #4]
    1878:	1c5a      	adds	r2, r3, #1
    187a:	607a      	str	r2, [r7, #4]
    187c:	683a      	ldr	r2, [r7, #0]
    187e:	1c51      	adds	r1, r2, #1
    1880:	6039      	str	r1, [r7, #0]
    1882:	7812      	ldrb	r2, [r2, #0]
    1884:	701a      	strb	r2, [r3, #0]
    1886:	683b      	ldr	r3, [r7, #0]
    1888:	781b      	ldrb	r3, [r3, #0]
    188a:	2b00      	cmp	r3, #0
    188c:	d1f3      	bne.n	1876 <strcat+0x1c>
    188e:	687b      	ldr	r3, [r7, #4]
    1890:	2200      	movs	r2, #0
    1892:	701a      	strb	r2, [r3, #0]
    1894:	687b      	ldr	r3, [r7, #4]
    1896:	4618      	mov	r0, r3
    1898:	3708      	adds	r7, #8
    189a:	46bd      	mov	sp, r7
    189c:	bd80      	pop	{r7, pc}

0000189e <config_pin>:
    189e:	b480      	push	{r7}
    18a0:	b087      	sub	sp, #28
    18a2:	af00      	add	r7, sp, #0
    18a4:	60f8      	str	r0, [r7, #12]
    18a6:	60b9      	str	r1, [r7, #8]
    18a8:	607a      	str	r2, [r7, #4]
    18aa:	68bb      	ldr	r3, [r7, #8]
    18ac:	b2db      	uxtb	r3, r3
    18ae:	009b      	lsls	r3, r3, #2
    18b0:	b2db      	uxtb	r3, r3
    18b2:	f003 031c 	and.w	r3, r3, #28
    18b6:	75fb      	strb	r3, [r7, #23]
    18b8:	68bb      	ldr	r3, [r7, #8]
    18ba:	08da      	lsrs	r2, r3, #3
    18bc:	68bb      	ldr	r3, [r7, #8]
    18be:	08d9      	lsrs	r1, r3, #3
    18c0:	68fb      	ldr	r3, [r7, #12]
    18c2:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    18c6:	7df9      	ldrb	r1, [r7, #23]
    18c8:	200f      	movs	r0, #15
    18ca:	fa00 f101 	lsl.w	r1, r0, r1
    18ce:	43c9      	mvns	r1, r1
    18d0:	4019      	ands	r1, r3
    18d2:	68fb      	ldr	r3, [r7, #12]
    18d4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    18d8:	68bb      	ldr	r3, [r7, #8]
    18da:	08da      	lsrs	r2, r3, #3
    18dc:	68bb      	ldr	r3, [r7, #8]
    18de:	08d9      	lsrs	r1, r3, #3
    18e0:	68fb      	ldr	r3, [r7, #12]
    18e2:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    18e6:	7dfb      	ldrb	r3, [r7, #23]
    18e8:	6878      	ldr	r0, [r7, #4]
    18ea:	fa00 f303 	lsl.w	r3, r0, r3
    18ee:	4319      	orrs	r1, r3
    18f0:	68fb      	ldr	r3, [r7, #12]
    18f2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    18f6:	bf00      	nop
    18f8:	371c      	adds	r7, #28
    18fa:	46bd      	mov	sp, r7
    18fc:	bc80      	pop	{r7}
    18fe:	4770      	bx	lr

00001900 <read_pin>:
    1900:	b480      	push	{r7}
    1902:	b083      	sub	sp, #12
    1904:	af00      	add	r7, sp, #0
    1906:	6078      	str	r0, [r7, #4]
    1908:	6039      	str	r1, [r7, #0]
    190a:	687b      	ldr	r3, [r7, #4]
    190c:	689b      	ldr	r3, [r3, #8]
    190e:	2101      	movs	r1, #1
    1910:	683a      	ldr	r2, [r7, #0]
    1912:	fa01 f202 	lsl.w	r2, r1, r2
    1916:	4013      	ands	r3, r2
    1918:	4618      	mov	r0, r3
    191a:	370c      	adds	r7, #12
    191c:	46bd      	mov	sp, r7
    191e:	bc80      	pop	{r7}
    1920:	4770      	bx	lr

00001922 <write_pin>:
    1922:	b480      	push	{r7}
    1924:	b085      	sub	sp, #20
    1926:	af00      	add	r7, sp, #0
    1928:	60f8      	str	r0, [r7, #12]
    192a:	60b9      	str	r1, [r7, #8]
    192c:	607a      	str	r2, [r7, #4]
    192e:	687b      	ldr	r3, [r7, #4]
    1930:	2b00      	cmp	r3, #0
    1932:	d009      	beq.n	1948 <write_pin+0x26>
    1934:	68fb      	ldr	r3, [r7, #12]
    1936:	68db      	ldr	r3, [r3, #12]
    1938:	2101      	movs	r1, #1
    193a:	68ba      	ldr	r2, [r7, #8]
    193c:	fa01 f202 	lsl.w	r2, r1, r2
    1940:	431a      	orrs	r2, r3
    1942:	68fb      	ldr	r3, [r7, #12]
    1944:	60da      	str	r2, [r3, #12]
    1946:	e009      	b.n	195c <write_pin+0x3a>
    1948:	68fb      	ldr	r3, [r7, #12]
    194a:	68db      	ldr	r3, [r3, #12]
    194c:	2101      	movs	r1, #1
    194e:	68ba      	ldr	r2, [r7, #8]
    1950:	fa01 f202 	lsl.w	r2, r1, r2
    1954:	43d2      	mvns	r2, r2
    1956:	401a      	ands	r2, r3
    1958:	68fb      	ldr	r3, [r7, #12]
    195a:	60da      	str	r2, [r3, #12]
    195c:	bf00      	nop
    195e:	3714      	adds	r7, #20
    1960:	46bd      	mov	sp, r7
    1962:	bc80      	pop	{r7}
    1964:	4770      	bx	lr

00001966 <toggle_pin>:
    1966:	b480      	push	{r7}
    1968:	b083      	sub	sp, #12
    196a:	af00      	add	r7, sp, #0
    196c:	6078      	str	r0, [r7, #4]
    196e:	6039      	str	r1, [r7, #0]
    1970:	687b      	ldr	r3, [r7, #4]
    1972:	68db      	ldr	r3, [r3, #12]
    1974:	2101      	movs	r1, #1
    1976:	683a      	ldr	r2, [r7, #0]
    1978:	fa01 f202 	lsl.w	r2, r1, r2
    197c:	405a      	eors	r2, r3
    197e:	687b      	ldr	r3, [r7, #4]
    1980:	60da      	str	r2, [r3, #12]
    1982:	bf00      	nop
    1984:	370c      	adds	r7, #12
    1986:	46bd      	mov	sp, r7
    1988:	bc80      	pop	{r7}
    198a:	4770      	bx	lr

0000198c <gfx_blit>:
    198c:	b4f0      	push	{r4, r5, r6, r7}
    198e:	b084      	sub	sp, #16
    1990:	af00      	add	r7, sp, #0
    1992:	60f8      	str	r0, [r7, #12]
    1994:	60b9      	str	r1, [r7, #8]
    1996:	4611      	mov	r1, r2
    1998:	461a      	mov	r2, r3
    199a:	460b      	mov	r3, r1
    199c:	71fb      	strb	r3, [r7, #7]
    199e:	4613      	mov	r3, r2
    19a0:	71bb      	strb	r3, [r7, #6]
    19a2:	68fb      	ldr	r3, [r7, #12]
    19a4:	2b00      	cmp	r3, #0
    19a6:	db08      	blt.n	19ba <gfx_blit+0x2e>
    19a8:	68fb      	ldr	r3, [r7, #12]
    19aa:	2bb3      	cmp	r3, #179	; 0xb3
    19ac:	dc05      	bgt.n	19ba <gfx_blit+0x2e>
    19ae:	68bb      	ldr	r3, [r7, #8]
    19b0:	2b00      	cmp	r3, #0
    19b2:	db02      	blt.n	19ba <gfx_blit+0x2e>
    19b4:	68bb      	ldr	r3, [r7, #8]
    19b6:	2b6f      	cmp	r3, #111	; 0x6f
    19b8:	dd01      	ble.n	19be <gfx_blit+0x32>
    19ba:	2300      	movs	r3, #0
    19bc:	e04c      	b.n	1a58 <gfx_blit+0xcc>
    19be:	68bb      	ldr	r3, [r7, #8]
    19c0:	225a      	movs	r2, #90	; 0x5a
    19c2:	fb02 f203 	mul.w	r2, r2, r3
    19c6:	68fb      	ldr	r3, [r7, #12]
    19c8:	0fd9      	lsrs	r1, r3, #31
    19ca:	440b      	add	r3, r1
    19cc:	105b      	asrs	r3, r3, #1
    19ce:	18d6      	adds	r6, r2, r3
    19d0:	79fb      	ldrb	r3, [r7, #7]
    19d2:	f003 030f 	and.w	r3, r3, #15
    19d6:	71fb      	strb	r3, [r7, #7]
    19d8:	25f0      	movs	r5, #240	; 0xf0
    19da:	68fb      	ldr	r3, [r7, #12]
    19dc:	f003 0301 	and.w	r3, r3, #1
    19e0:	2b00      	cmp	r3, #0
    19e2:	d103      	bne.n	19ec <gfx_blit+0x60>
    19e4:	79fb      	ldrb	r3, [r7, #7]
    19e6:	011b      	lsls	r3, r3, #4
    19e8:	71fb      	strb	r3, [r7, #7]
    19ea:	250f      	movs	r5, #15
    19ec:	4b1d      	ldr	r3, [pc, #116]	; (1a64 <gfx_blit+0xd8>)
    19ee:	5d9c      	ldrb	r4, [r3, r6]
    19f0:	79bb      	ldrb	r3, [r7, #6]
    19f2:	2b04      	cmp	r3, #4
    19f4:	d827      	bhi.n	1a46 <gfx_blit+0xba>
    19f6:	a201      	add	r2, pc, #4	; (adr r2, 19fc <gfx_blit+0x70>)
    19f8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    19fc:	00001a11 	.word	0x00001a11
    1a00:	00001a19 	.word	0x00001a19
    1a04:	00001a21 	.word	0x00001a21
    1a08:	00001a29 	.word	0x00001a29
    1a0c:	00001a39 	.word	0x00001a39
    1a10:	79fb      	ldrb	r3, [r7, #7]
    1a12:	4323      	orrs	r3, r4
    1a14:	b2dc      	uxtb	r4, r3
    1a16:	e016      	b.n	1a46 <gfx_blit+0xba>
    1a18:	79fb      	ldrb	r3, [r7, #7]
    1a1a:	4023      	ands	r3, r4
    1a1c:	b2dc      	uxtb	r4, r3
    1a1e:	e012      	b.n	1a46 <gfx_blit+0xba>
    1a20:	79fb      	ldrb	r3, [r7, #7]
    1a22:	4063      	eors	r3, r4
    1a24:	b2dc      	uxtb	r4, r3
    1a26:	e00e      	b.n	1a46 <gfx_blit+0xba>
    1a28:	b26b      	sxtb	r3, r5
    1a2a:	43db      	mvns	r3, r3
    1a2c:	b25a      	sxtb	r2, r3
    1a2e:	b263      	sxtb	r3, r4
    1a30:	4053      	eors	r3, r2
    1a32:	b25b      	sxtb	r3, r3
    1a34:	b2dc      	uxtb	r4, r3
    1a36:	e006      	b.n	1a46 <gfx_blit+0xba>
    1a38:	ea04 0305 	and.w	r3, r4, r5
    1a3c:	b2dc      	uxtb	r4, r3
    1a3e:	79fb      	ldrb	r3, [r7, #7]
    1a40:	4323      	orrs	r3, r4
    1a42:	b2dc      	uxtb	r4, r3
    1a44:	bf00      	nop
    1a46:	4b07      	ldr	r3, [pc, #28]	; (1a64 <gfx_blit+0xd8>)
    1a48:	4622      	mov	r2, r4
    1a4a:	559a      	strb	r2, [r3, r6]
    1a4c:	ea04 0305 	and.w	r3, r4, r5
    1a50:	b2da      	uxtb	r2, r3
    1a52:	79fb      	ldrb	r3, [r7, #7]
    1a54:	4053      	eors	r3, r2
    1a56:	b2db      	uxtb	r3, r3
    1a58:	4618      	mov	r0, r3
    1a5a:	3710      	adds	r7, #16
    1a5c:	46bd      	mov	sp, r7
    1a5e:	bcf0      	pop	{r4, r5, r6, r7}
    1a60:	4770      	bx	lr
    1a62:	bf00      	nop
    1a64:	20001500 	.word	0x20001500

00001a68 <gfx_plot>:
    1a68:	b4b0      	push	{r4, r5, r7}
    1a6a:	b085      	sub	sp, #20
    1a6c:	af00      	add	r7, sp, #0
    1a6e:	60f8      	str	r0, [r7, #12]
    1a70:	60b9      	str	r1, [r7, #8]
    1a72:	4613      	mov	r3, r2
    1a74:	71fb      	strb	r3, [r7, #7]
    1a76:	68fb      	ldr	r3, [r7, #12]
    1a78:	2b00      	cmp	r3, #0
    1a7a:	db31      	blt.n	1ae0 <gfx_plot+0x78>
    1a7c:	68fb      	ldr	r3, [r7, #12]
    1a7e:	2bb3      	cmp	r3, #179	; 0xb3
    1a80:	dc2e      	bgt.n	1ae0 <gfx_plot+0x78>
    1a82:	68bb      	ldr	r3, [r7, #8]
    1a84:	2b00      	cmp	r3, #0
    1a86:	db2b      	blt.n	1ae0 <gfx_plot+0x78>
    1a88:	68bb      	ldr	r3, [r7, #8]
    1a8a:	2b6f      	cmp	r3, #111	; 0x6f
    1a8c:	dc28      	bgt.n	1ae0 <gfx_plot+0x78>
    1a8e:	68bb      	ldr	r3, [r7, #8]
    1a90:	225a      	movs	r2, #90	; 0x5a
    1a92:	fb02 f203 	mul.w	r2, r2, r3
    1a96:	68fb      	ldr	r3, [r7, #12]
    1a98:	0fd9      	lsrs	r1, r3, #31
    1a9a:	440b      	add	r3, r1
    1a9c:	105b      	asrs	r3, r3, #1
    1a9e:	18d5      	adds	r5, r2, r3
    1aa0:	79fb      	ldrb	r3, [r7, #7]
    1aa2:	f003 030f 	and.w	r3, r3, #15
    1aa6:	71fb      	strb	r3, [r7, #7]
    1aa8:	4b10      	ldr	r3, [pc, #64]	; (1aec <gfx_plot+0x84>)
    1aaa:	5d5c      	ldrb	r4, [r3, r5]
    1aac:	68fb      	ldr	r3, [r7, #12]
    1aae:	f003 0301 	and.w	r3, r3, #1
    1ab2:	2b00      	cmp	r3, #0
    1ab4:	d006      	beq.n	1ac4 <gfx_plot+0x5c>
    1ab6:	f024 030f 	bic.w	r3, r4, #15
    1aba:	b2dc      	uxtb	r4, r3
    1abc:	79fb      	ldrb	r3, [r7, #7]
    1abe:	4323      	orrs	r3, r4
    1ac0:	b2dc      	uxtb	r4, r3
    1ac2:	e009      	b.n	1ad8 <gfx_plot+0x70>
    1ac4:	f004 030f 	and.w	r3, r4, #15
    1ac8:	b2dc      	uxtb	r4, r3
    1aca:	79fb      	ldrb	r3, [r7, #7]
    1acc:	011b      	lsls	r3, r3, #4
    1ace:	b25a      	sxtb	r2, r3
    1ad0:	b263      	sxtb	r3, r4
    1ad2:	4313      	orrs	r3, r2
    1ad4:	b25b      	sxtb	r3, r3
    1ad6:	b2dc      	uxtb	r4, r3
    1ad8:	4b04      	ldr	r3, [pc, #16]	; (1aec <gfx_plot+0x84>)
    1ada:	4622      	mov	r2, r4
    1adc:	555a      	strb	r2, [r3, r5]
    1ade:	e000      	b.n	1ae2 <gfx_plot+0x7a>
    1ae0:	bf00      	nop
    1ae2:	3714      	adds	r7, #20
    1ae4:	46bd      	mov	sp, r7
    1ae6:	bcb0      	pop	{r4, r5, r7}
    1ae8:	4770      	bx	lr
    1aea:	bf00      	nop
    1aec:	20001500 	.word	0x20001500

00001af0 <gfx_rectangle>:
    1af0:	b580      	push	{r7, lr}
    1af2:	b086      	sub	sp, #24
    1af4:	af00      	add	r7, sp, #0
    1af6:	60f8      	str	r0, [r7, #12]
    1af8:	60b9      	str	r1, [r7, #8]
    1afa:	607a      	str	r2, [r7, #4]
    1afc:	603b      	str	r3, [r7, #0]
    1afe:	68fa      	ldr	r2, [r7, #12]
    1b00:	687b      	ldr	r3, [r7, #4]
    1b02:	429a      	cmp	r2, r3
    1b04:	dd05      	ble.n	1b12 <gfx_rectangle+0x22>
    1b06:	68fb      	ldr	r3, [r7, #12]
    1b08:	617b      	str	r3, [r7, #20]
    1b0a:	687b      	ldr	r3, [r7, #4]
    1b0c:	60fb      	str	r3, [r7, #12]
    1b0e:	697b      	ldr	r3, [r7, #20]
    1b10:	607b      	str	r3, [r7, #4]
    1b12:	68ba      	ldr	r2, [r7, #8]
    1b14:	683b      	ldr	r3, [r7, #0]
    1b16:	429a      	cmp	r2, r3
    1b18:	dd05      	ble.n	1b26 <gfx_rectangle+0x36>
    1b1a:	68bb      	ldr	r3, [r7, #8]
    1b1c:	617b      	str	r3, [r7, #20]
    1b1e:	683b      	ldr	r3, [r7, #0]
    1b20:	60bb      	str	r3, [r7, #8]
    1b22:	697b      	ldr	r3, [r7, #20]
    1b24:	603b      	str	r3, [r7, #0]
    1b26:	68fb      	ldr	r3, [r7, #12]
    1b28:	617b      	str	r3, [r7, #20]
    1b2a:	e00c      	b.n	1b46 <gfx_rectangle+0x56>
    1b2c:	220f      	movs	r2, #15
    1b2e:	68b9      	ldr	r1, [r7, #8]
    1b30:	6978      	ldr	r0, [r7, #20]
    1b32:	f7ff ff99 	bl	1a68 <gfx_plot>
    1b36:	220f      	movs	r2, #15
    1b38:	6839      	ldr	r1, [r7, #0]
    1b3a:	6978      	ldr	r0, [r7, #20]
    1b3c:	f7ff ff94 	bl	1a68 <gfx_plot>
    1b40:	697b      	ldr	r3, [r7, #20]
    1b42:	3301      	adds	r3, #1
    1b44:	617b      	str	r3, [r7, #20]
    1b46:	697a      	ldr	r2, [r7, #20]
    1b48:	687b      	ldr	r3, [r7, #4]
    1b4a:	429a      	cmp	r2, r3
    1b4c:	ddee      	ble.n	1b2c <gfx_rectangle+0x3c>
    1b4e:	68bb      	ldr	r3, [r7, #8]
    1b50:	3301      	adds	r3, #1
    1b52:	60bb      	str	r3, [r7, #8]
    1b54:	e00c      	b.n	1b70 <gfx_rectangle+0x80>
    1b56:	220f      	movs	r2, #15
    1b58:	68b9      	ldr	r1, [r7, #8]
    1b5a:	68f8      	ldr	r0, [r7, #12]
    1b5c:	f7ff ff84 	bl	1a68 <gfx_plot>
    1b60:	220f      	movs	r2, #15
    1b62:	68b9      	ldr	r1, [r7, #8]
    1b64:	6878      	ldr	r0, [r7, #4]
    1b66:	f7ff ff7f 	bl	1a68 <gfx_plot>
    1b6a:	68bb      	ldr	r3, [r7, #8]
    1b6c:	3301      	adds	r3, #1
    1b6e:	60bb      	str	r3, [r7, #8]
    1b70:	68ba      	ldr	r2, [r7, #8]
    1b72:	683b      	ldr	r3, [r7, #0]
    1b74:	429a      	cmp	r2, r3
    1b76:	dbee      	blt.n	1b56 <gfx_rectangle+0x66>
    1b78:	bf00      	nop
    1b7a:	3718      	adds	r7, #24
    1b7c:	46bd      	mov	sp, r7
    1b7e:	bd80      	pop	{r7, pc}

00001b80 <gfx_cls>:
    1b80:	b480      	push	{r7}
    1b82:	b083      	sub	sp, #12
    1b84:	af00      	add	r7, sp, #0
    1b86:	2300      	movs	r3, #0
    1b88:	607b      	str	r3, [r7, #4]
    1b8a:	e007      	b.n	1b9c <gfx_cls+0x1c>
    1b8c:	4a08      	ldr	r2, [pc, #32]	; (1bb0 <gfx_cls+0x30>)
    1b8e:	687b      	ldr	r3, [r7, #4]
    1b90:	4413      	add	r3, r2
    1b92:	2200      	movs	r2, #0
    1b94:	701a      	strb	r2, [r3, #0]
    1b96:	687b      	ldr	r3, [r7, #4]
    1b98:	3301      	adds	r3, #1
    1b9a:	607b      	str	r3, [r7, #4]
    1b9c:	687b      	ldr	r3, [r7, #4]
    1b9e:	f242 725f 	movw	r2, #10079	; 0x275f
    1ba2:	4293      	cmp	r3, r2
    1ba4:	ddf2      	ble.n	1b8c <gfx_cls+0xc>
    1ba6:	bf00      	nop
    1ba8:	370c      	adds	r7, #12
    1baa:	46bd      	mov	sp, r7
    1bac:	bc80      	pop	{r7}
    1bae:	4770      	bx	lr
    1bb0:	20001500 	.word	0x20001500

00001bb4 <gfx_scrollup>:
    1bb4:	b480      	push	{r7}
    1bb6:	b087      	sub	sp, #28
    1bb8:	af00      	add	r7, sp, #0
    1bba:	4603      	mov	r3, r0
    1bbc:	71fb      	strb	r3, [r7, #7]
    1bbe:	79fb      	ldrb	r3, [r7, #7]
    1bc0:	225a      	movs	r2, #90	; 0x5a
    1bc2:	fb02 f303 	mul.w	r3, r2, r3
    1bc6:	4a17      	ldr	r2, [pc, #92]	; (1c24 <gfx_scrollup+0x70>)
    1bc8:	4413      	add	r3, r2
    1bca:	617b      	str	r3, [r7, #20]
    1bcc:	4b15      	ldr	r3, [pc, #84]	; (1c24 <gfx_scrollup+0x70>)
    1bce:	613b      	str	r3, [r7, #16]
    1bd0:	79fb      	ldrb	r3, [r7, #7]
    1bd2:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1bd6:	225a      	movs	r2, #90	; 0x5a
    1bd8:	fb02 f303 	mul.w	r3, r2, r3
    1bdc:	60fb      	str	r3, [r7, #12]
    1bde:	e007      	b.n	1bf0 <gfx_scrollup+0x3c>
    1be0:	693b      	ldr	r3, [r7, #16]
    1be2:	1c5a      	adds	r2, r3, #1
    1be4:	613a      	str	r2, [r7, #16]
    1be6:	697a      	ldr	r2, [r7, #20]
    1be8:	1c51      	adds	r1, r2, #1
    1bea:	6179      	str	r1, [r7, #20]
    1bec:	7812      	ldrb	r2, [r2, #0]
    1bee:	701a      	strb	r2, [r3, #0]
    1bf0:	68fb      	ldr	r3, [r7, #12]
    1bf2:	1e5a      	subs	r2, r3, #1
    1bf4:	60fa      	str	r2, [r7, #12]
    1bf6:	2b00      	cmp	r3, #0
    1bf8:	d1f2      	bne.n	1be0 <gfx_scrollup+0x2c>
    1bfa:	79fb      	ldrb	r3, [r7, #7]
    1bfc:	225a      	movs	r2, #90	; 0x5a
    1bfe:	fb02 f303 	mul.w	r3, r2, r3
    1c02:	60fb      	str	r3, [r7, #12]
    1c04:	e004      	b.n	1c10 <gfx_scrollup+0x5c>
    1c06:	693b      	ldr	r3, [r7, #16]
    1c08:	1c5a      	adds	r2, r3, #1
    1c0a:	613a      	str	r2, [r7, #16]
    1c0c:	2200      	movs	r2, #0
    1c0e:	701a      	strb	r2, [r3, #0]
    1c10:	68fb      	ldr	r3, [r7, #12]
    1c12:	1e5a      	subs	r2, r3, #1
    1c14:	60fa      	str	r2, [r7, #12]
    1c16:	2b00      	cmp	r3, #0
    1c18:	d1f5      	bne.n	1c06 <gfx_scrollup+0x52>
    1c1a:	bf00      	nop
    1c1c:	371c      	adds	r7, #28
    1c1e:	46bd      	mov	sp, r7
    1c20:	bc80      	pop	{r7}
    1c22:	4770      	bx	lr
    1c24:	20001500 	.word	0x20001500

00001c28 <gfx_scrolldown>:
    1c28:	b480      	push	{r7}
    1c2a:	b087      	sub	sp, #28
    1c2c:	af00      	add	r7, sp, #0
    1c2e:	4603      	mov	r3, r0
    1c30:	71fb      	strb	r3, [r7, #7]
    1c32:	79fb      	ldrb	r3, [r7, #7]
    1c34:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1c38:	225a      	movs	r2, #90	; 0x5a
    1c3a:	fb02 f303 	mul.w	r3, r2, r3
    1c3e:	4a19      	ldr	r2, [pc, #100]	; (1ca4 <gfx_scrolldown+0x7c>)
    1c40:	4413      	add	r3, r2
    1c42:	617b      	str	r3, [r7, #20]
    1c44:	4b18      	ldr	r3, [pc, #96]	; (1ca8 <gfx_scrolldown+0x80>)
    1c46:	613b      	str	r3, [r7, #16]
    1c48:	79fb      	ldrb	r3, [r7, #7]
    1c4a:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1c4e:	225a      	movs	r2, #90	; 0x5a
    1c50:	fb02 f303 	mul.w	r3, r2, r3
    1c54:	60fb      	str	r3, [r7, #12]
    1c56:	e009      	b.n	1c6c <gfx_scrolldown+0x44>
    1c58:	693b      	ldr	r3, [r7, #16]
    1c5a:	3b01      	subs	r3, #1
    1c5c:	613b      	str	r3, [r7, #16]
    1c5e:	697b      	ldr	r3, [r7, #20]
    1c60:	3b01      	subs	r3, #1
    1c62:	617b      	str	r3, [r7, #20]
    1c64:	697b      	ldr	r3, [r7, #20]
    1c66:	781a      	ldrb	r2, [r3, #0]
    1c68:	693b      	ldr	r3, [r7, #16]
    1c6a:	701a      	strb	r2, [r3, #0]
    1c6c:	68fb      	ldr	r3, [r7, #12]
    1c6e:	1e5a      	subs	r2, r3, #1
    1c70:	60fa      	str	r2, [r7, #12]
    1c72:	2b00      	cmp	r3, #0
    1c74:	d1f0      	bne.n	1c58 <gfx_scrolldown+0x30>
    1c76:	79fb      	ldrb	r3, [r7, #7]
    1c78:	225a      	movs	r2, #90	; 0x5a
    1c7a:	fb02 f303 	mul.w	r3, r2, r3
    1c7e:	60fb      	str	r3, [r7, #12]
    1c80:	e005      	b.n	1c8e <gfx_scrolldown+0x66>
    1c82:	693b      	ldr	r3, [r7, #16]
    1c84:	3b01      	subs	r3, #1
    1c86:	613b      	str	r3, [r7, #16]
    1c88:	693b      	ldr	r3, [r7, #16]
    1c8a:	2200      	movs	r2, #0
    1c8c:	701a      	strb	r2, [r3, #0]
    1c8e:	68fb      	ldr	r3, [r7, #12]
    1c90:	1e5a      	subs	r2, r3, #1
    1c92:	60fa      	str	r2, [r7, #12]
    1c94:	2b00      	cmp	r3, #0
    1c96:	d1f4      	bne.n	1c82 <gfx_scrolldown+0x5a>
    1c98:	bf00      	nop
    1c9a:	371c      	adds	r7, #28
    1c9c:	46bd      	mov	sp, r7
    1c9e:	bc80      	pop	{r7}
    1ca0:	4770      	bx	lr
    1ca2:	bf00      	nop
    1ca4:	20001500 	.word	0x20001500
    1ca8:	20003c60 	.word	0x20003c60

00001cac <gfx_get_pixel>:
    1cac:	b490      	push	{r4, r7}
    1cae:	b082      	sub	sp, #8
    1cb0:	af00      	add	r7, sp, #0
    1cb2:	6078      	str	r0, [r7, #4]
    1cb4:	6039      	str	r1, [r7, #0]
    1cb6:	687b      	ldr	r3, [r7, #4]
    1cb8:	2b00      	cmp	r3, #0
    1cba:	db08      	blt.n	1cce <gfx_get_pixel+0x22>
    1cbc:	687b      	ldr	r3, [r7, #4]
    1cbe:	2bb3      	cmp	r3, #179	; 0xb3
    1cc0:	dc05      	bgt.n	1cce <gfx_get_pixel+0x22>
    1cc2:	683b      	ldr	r3, [r7, #0]
    1cc4:	2b00      	cmp	r3, #0
    1cc6:	db02      	blt.n	1cce <gfx_get_pixel+0x22>
    1cc8:	683b      	ldr	r3, [r7, #0]
    1cca:	2b6f      	cmp	r3, #111	; 0x6f
    1ccc:	dd01      	ble.n	1cd2 <gfx_get_pixel+0x26>
    1cce:	23ff      	movs	r3, #255	; 0xff
    1cd0:	e012      	b.n	1cf8 <gfx_get_pixel+0x4c>
    1cd2:	683b      	ldr	r3, [r7, #0]
    1cd4:	225a      	movs	r2, #90	; 0x5a
    1cd6:	fb02 f203 	mul.w	r2, r2, r3
    1cda:	687b      	ldr	r3, [r7, #4]
    1cdc:	105b      	asrs	r3, r3, #1
    1cde:	4413      	add	r3, r2
    1ce0:	4a08      	ldr	r2, [pc, #32]	; (1d04 <gfx_get_pixel+0x58>)
    1ce2:	5cd4      	ldrb	r4, [r2, r3]
    1ce4:	687b      	ldr	r3, [r7, #4]
    1ce6:	f003 0301 	and.w	r3, r3, #1
    1cea:	2b00      	cmp	r3, #0
    1cec:	d101      	bne.n	1cf2 <gfx_get_pixel+0x46>
    1cee:	0923      	lsrs	r3, r4, #4
    1cf0:	b2dc      	uxtb	r4, r3
    1cf2:	f004 030f 	and.w	r3, r4, #15
    1cf6:	b2db      	uxtb	r3, r3
    1cf8:	4618      	mov	r0, r3
    1cfa:	3708      	adds	r7, #8
    1cfc:	46bd      	mov	sp, r7
    1cfe:	bc90      	pop	{r4, r7}
    1d00:	4770      	bx	lr
    1d02:	bf00      	nop
    1d04:	20001500 	.word	0x20001500

00001d08 <gfx_sprite>:
    1d08:	b5f0      	push	{r4, r5, r6, r7, lr}
    1d0a:	b087      	sub	sp, #28
    1d0c:	af00      	add	r7, sp, #0
    1d0e:	60f8      	str	r0, [r7, #12]
    1d10:	60b9      	str	r1, [r7, #8]
    1d12:	4611      	mov	r1, r2
    1d14:	461a      	mov	r2, r3
    1d16:	460b      	mov	r3, r1
    1d18:	71fb      	strb	r3, [r7, #7]
    1d1a:	4613      	mov	r3, r2
    1d1c:	71bb      	strb	r3, [r7, #6]
    1d1e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1d20:	1c5a      	adds	r2, r3, #1
    1d22:	633a      	str	r2, [r7, #48]	; 0x30
    1d24:	781e      	ldrb	r6, [r3, #0]
    1d26:	68bd      	ldr	r5, [r7, #8]
    1d28:	e01b      	b.n	1d62 <gfx_sprite+0x5a>
    1d2a:	68fc      	ldr	r4, [r7, #12]
    1d2c:	e013      	b.n	1d56 <gfx_sprite+0x4e>
    1d2e:	0933      	lsrs	r3, r6, #4
    1d30:	b2da      	uxtb	r2, r3
    1d32:	2302      	movs	r3, #2
    1d34:	4629      	mov	r1, r5
    1d36:	4620      	mov	r0, r4
    1d38:	f7ff fe28 	bl	198c <gfx_blit>
    1d3c:	3401      	adds	r4, #1
    1d3e:	2302      	movs	r3, #2
    1d40:	4632      	mov	r2, r6
    1d42:	4629      	mov	r1, r5
    1d44:	4620      	mov	r0, r4
    1d46:	f7ff fe21 	bl	198c <gfx_blit>
    1d4a:	6178      	str	r0, [r7, #20]
    1d4c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1d4e:	1c5a      	adds	r2, r3, #1
    1d50:	633a      	str	r2, [r7, #48]	; 0x30
    1d52:	781e      	ldrb	r6, [r3, #0]
    1d54:	3401      	adds	r4, #1
    1d56:	79fa      	ldrb	r2, [r7, #7]
    1d58:	68fb      	ldr	r3, [r7, #12]
    1d5a:	4413      	add	r3, r2
    1d5c:	42a3      	cmp	r3, r4
    1d5e:	dce6      	bgt.n	1d2e <gfx_sprite+0x26>
    1d60:	3501      	adds	r5, #1
    1d62:	79ba      	ldrb	r2, [r7, #6]
    1d64:	68bb      	ldr	r3, [r7, #8]
    1d66:	4413      	add	r3, r2
    1d68:	42ab      	cmp	r3, r5
    1d6a:	dcde      	bgt.n	1d2a <gfx_sprite+0x22>
    1d6c:	697b      	ldr	r3, [r7, #20]
    1d6e:	4618      	mov	r0, r3
    1d70:	371c      	adds	r7, #28
    1d72:	46bd      	mov	sp, r7
    1d74:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1d76:	bf00      	nop

00001d78 <set_sysclock>:
    1d78:	b480      	push	{r7}
    1d7a:	af00      	add	r7, sp, #0
    1d7c:	4a18      	ldr	r2, [pc, #96]	; (1de0 <set_sysclock+0x68>)
    1d7e:	4b18      	ldr	r3, [pc, #96]	; (1de0 <set_sysclock+0x68>)
    1d80:	681b      	ldr	r3, [r3, #0]
    1d82:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1d86:	6013      	str	r3, [r2, #0]
    1d88:	bf00      	nop
    1d8a:	4b15      	ldr	r3, [pc, #84]	; (1de0 <set_sysclock+0x68>)
    1d8c:	681b      	ldr	r3, [r3, #0]
    1d8e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    1d92:	2b00      	cmp	r3, #0
    1d94:	d0f9      	beq.n	1d8a <set_sysclock+0x12>
    1d96:	4a12      	ldr	r2, [pc, #72]	; (1de0 <set_sysclock+0x68>)
    1d98:	4b11      	ldr	r3, [pc, #68]	; (1de0 <set_sysclock+0x68>)
    1d9a:	685b      	ldr	r3, [r3, #4]
    1d9c:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1da0:	6053      	str	r3, [r2, #4]
    1da2:	4a0f      	ldr	r2, [pc, #60]	; (1de0 <set_sysclock+0x68>)
    1da4:	4b0e      	ldr	r3, [pc, #56]	; (1de0 <set_sysclock+0x68>)
    1da6:	681b      	ldr	r3, [r3, #0]
    1da8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1dac:	6013      	str	r3, [r2, #0]
    1dae:	bf00      	nop
    1db0:	4b0b      	ldr	r3, [pc, #44]	; (1de0 <set_sysclock+0x68>)
    1db2:	681b      	ldr	r3, [r3, #0]
    1db4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1db8:	2b00      	cmp	r3, #0
    1dba:	d0f9      	beq.n	1db0 <set_sysclock+0x38>
    1dbc:	4a09      	ldr	r2, [pc, #36]	; (1de4 <set_sysclock+0x6c>)
    1dbe:	4b09      	ldr	r3, [pc, #36]	; (1de4 <set_sysclock+0x6c>)
    1dc0:	681b      	ldr	r3, [r3, #0]
    1dc2:	f043 0312 	orr.w	r3, r3, #18
    1dc6:	6013      	str	r3, [r2, #0]
    1dc8:	4a05      	ldr	r2, [pc, #20]	; (1de0 <set_sysclock+0x68>)
    1dca:	4b05      	ldr	r3, [pc, #20]	; (1de0 <set_sysclock+0x68>)
    1dcc:	685b      	ldr	r3, [r3, #4]
    1dce:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1dd2:	f043 0302 	orr.w	r3, r3, #2
    1dd6:	6053      	str	r3, [r2, #4]
    1dd8:	bf00      	nop
    1dda:	46bd      	mov	sp, r7
    1ddc:	bc80      	pop	{r7}
    1dde:	4770      	bx	lr
    1de0:	40021000 	.word	0x40021000
    1de4:	40022000 	.word	0x40022000

00001de8 <main>:
    1de8:	b580      	push	{r7, lr}
    1dea:	b08a      	sub	sp, #40	; 0x28
    1dec:	af02      	add	r7, sp, #8
    1dee:	f7ff ffc3 	bl	1d78 <set_sysclock>
    1df2:	f001 f989 	bl	3108 <config_systicks>
    1df6:	4b5a      	ldr	r3, [pc, #360]	; (1f60 <main+0x178>)
    1df8:	f640 021d 	movw	r2, #2077	; 0x81d
    1dfc:	619a      	str	r2, [r3, #24]
    1dfe:	2206      	movs	r2, #6
    1e00:	210d      	movs	r1, #13
    1e02:	4858      	ldr	r0, [pc, #352]	; (1f64 <main+0x17c>)
    1e04:	f7ff fd4b 	bl	189e <config_pin>
    1e08:	4a56      	ldr	r2, [pc, #344]	; (1f64 <main+0x17c>)
    1e0a:	4b56      	ldr	r3, [pc, #344]	; (1f64 <main+0x17c>)
    1e0c:	68db      	ldr	r3, [r3, #12]
    1e0e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1e12:	60d3      	str	r3, [r2, #12]
    1e14:	f001 fc96 	bl	3744 <tvout_init>
    1e18:	f7ff feb2 	bl	1b80 <gfx_cls>
    1e1c:	2303      	movs	r3, #3
    1e1e:	71bb      	strb	r3, [r7, #6]
    1e20:	2354      	movs	r3, #84	; 0x54
    1e22:	61bb      	str	r3, [r7, #24]
    1e24:	e01b      	b.n	1e5e <main+0x76>
    1e26:	2310      	movs	r3, #16
    1e28:	71fb      	strb	r3, [r7, #7]
    1e2a:	2300      	movs	r3, #0
    1e2c:	61fb      	str	r3, [r7, #28]
    1e2e:	e010      	b.n	1e52 <main+0x6a>
    1e30:	69fb      	ldr	r3, [r7, #28]
    1e32:	f003 0307 	and.w	r3, r3, #7
    1e36:	2b00      	cmp	r3, #0
    1e38:	d102      	bne.n	1e40 <main+0x58>
    1e3a:	79fb      	ldrb	r3, [r7, #7]
    1e3c:	3b01      	subs	r3, #1
    1e3e:	71fb      	strb	r3, [r7, #7]
    1e40:	79fb      	ldrb	r3, [r7, #7]
    1e42:	461a      	mov	r2, r3
    1e44:	69b9      	ldr	r1, [r7, #24]
    1e46:	69f8      	ldr	r0, [r7, #28]
    1e48:	f7ff fe0e 	bl	1a68 <gfx_plot>
    1e4c:	69fb      	ldr	r3, [r7, #28]
    1e4e:	3301      	adds	r3, #1
    1e50:	61fb      	str	r3, [r7, #28]
    1e52:	69fb      	ldr	r3, [r7, #28]
    1e54:	2b7f      	cmp	r3, #127	; 0x7f
    1e56:	ddeb      	ble.n	1e30 <main+0x48>
    1e58:	69bb      	ldr	r3, [r7, #24]
    1e5a:	3301      	adds	r3, #1
    1e5c:	61bb      	str	r3, [r7, #24]
    1e5e:	69bb      	ldr	r3, [r7, #24]
    1e60:	2b6f      	cmp	r3, #111	; 0x6f
    1e62:	dde0      	ble.n	1e26 <main+0x3e>
    1e64:	4b40      	ldr	r3, [pc, #256]	; (1f68 <main+0x180>)
    1e66:	210a      	movs	r1, #10
    1e68:	4618      	mov	r0, r3
    1e6a:	f001 fb20 	bl	34ae <print_int>
    1e6e:	4b3f      	ldr	r3, [pc, #252]	; (1f6c <main+0x184>)
    1e70:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    1e74:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    1e78:	210a      	movs	r1, #10
    1e7a:	4618      	mov	r0, r3
    1e7c:	f001 fb17 	bl	34ae <print_int>
    1e80:	2100      	movs	r1, #0
    1e82:	2078      	movs	r0, #120	; 0x78
    1e84:	f001 fac4 	bl	3410 <set_cursor>
    1e88:	4839      	ldr	r0, [pc, #228]	; (1f70 <main+0x188>)
    1e8a:	f001 faed 	bl	3468 <print>
    1e8e:	4b39      	ldr	r3, [pc, #228]	; (1f74 <main+0x18c>)
    1e90:	781b      	ldrb	r3, [r3, #0]
    1e92:	210a      	movs	r1, #10
    1e94:	4618      	mov	r0, r3
    1e96:	f001 fb0a 	bl	34ae <print_int>
    1e9a:	2300      	movs	r3, #0
    1e9c:	613b      	str	r3, [r7, #16]
    1e9e:	693b      	ldr	r3, [r7, #16]
    1ea0:	617b      	str	r3, [r7, #20]
    1ea2:	2301      	movs	r3, #1
    1ea4:	60bb      	str	r3, [r7, #8]
    1ea6:	68bb      	ldr	r3, [r7, #8]
    1ea8:	60fb      	str	r3, [r7, #12]
    1eaa:	4b33      	ldr	r3, [pc, #204]	; (1f78 <main+0x190>)
    1eac:	2264      	movs	r2, #100	; 0x64
    1eae:	601a      	str	r2, [r3, #0]
    1eb0:	4b32      	ldr	r3, [pc, #200]	; (1f7c <main+0x194>)
    1eb2:	9300      	str	r3, [sp, #0]
    1eb4:	2308      	movs	r3, #8
    1eb6:	2208      	movs	r2, #8
    1eb8:	6939      	ldr	r1, [r7, #16]
    1eba:	6978      	ldr	r0, [r7, #20]
    1ebc:	f7ff ff24 	bl	1d08 <gfx_sprite>
    1ec0:	4b2f      	ldr	r3, [pc, #188]	; (1f80 <main+0x198>)
    1ec2:	681b      	ldr	r3, [r3, #0]
    1ec4:	330a      	adds	r3, #10
    1ec6:	603b      	str	r3, [r7, #0]
    1ec8:	bf00      	nop
    1eca:	4b2d      	ldr	r3, [pc, #180]	; (1f80 <main+0x198>)
    1ecc:	681a      	ldr	r2, [r3, #0]
    1ece:	683b      	ldr	r3, [r7, #0]
    1ed0:	429a      	cmp	r2, r3
    1ed2:	d3fa      	bcc.n	1eca <main+0xe2>
    1ed4:	f001 fe62 	bl	3b9c <frame_sync>
    1ed8:	4b28      	ldr	r3, [pc, #160]	; (1f7c <main+0x194>)
    1eda:	9300      	str	r3, [sp, #0]
    1edc:	2308      	movs	r3, #8
    1ede:	2208      	movs	r2, #8
    1ee0:	6939      	ldr	r1, [r7, #16]
    1ee2:	6978      	ldr	r0, [r7, #20]
    1ee4:	f7ff ff10 	bl	1d08 <gfx_sprite>
    1ee8:	697a      	ldr	r2, [r7, #20]
    1eea:	68fb      	ldr	r3, [r7, #12]
    1eec:	4413      	add	r3, r2
    1eee:	617b      	str	r3, [r7, #20]
    1ef0:	697b      	ldr	r3, [r7, #20]
    1ef2:	f113 0f08 	cmn.w	r3, #8
    1ef6:	db02      	blt.n	1efe <main+0x116>
    1ef8:	697b      	ldr	r3, [r7, #20]
    1efa:	2bb3      	cmp	r3, #179	; 0xb3
    1efc:	dd02      	ble.n	1f04 <main+0x11c>
    1efe:	68fb      	ldr	r3, [r7, #12]
    1f00:	425b      	negs	r3, r3
    1f02:	60fb      	str	r3, [r7, #12]
    1f04:	693a      	ldr	r2, [r7, #16]
    1f06:	68bb      	ldr	r3, [r7, #8]
    1f08:	4413      	add	r3, r2
    1f0a:	613b      	str	r3, [r7, #16]
    1f0c:	693b      	ldr	r3, [r7, #16]
    1f0e:	f113 0f08 	cmn.w	r3, #8
    1f12:	db02      	blt.n	1f1a <main+0x132>
    1f14:	693b      	ldr	r3, [r7, #16]
    1f16:	2b6f      	cmp	r3, #111	; 0x6f
    1f18:	dd02      	ble.n	1f20 <main+0x138>
    1f1a:	68bb      	ldr	r3, [r7, #8]
    1f1c:	425b      	negs	r3, r3
    1f1e:	60bb      	str	r3, [r7, #8]
    1f20:	4b18      	ldr	r3, [pc, #96]	; (1f84 <main+0x19c>)
    1f22:	881b      	ldrh	r3, [r3, #0]
    1f24:	b29b      	uxth	r3, r3
    1f26:	b21b      	sxth	r3, r3
    1f28:	2b00      	cmp	r3, #0
    1f2a:	dbc1      	blt.n	1eb0 <main+0xc8>
    1f2c:	79bb      	ldrb	r3, [r7, #6]
    1f2e:	3301      	adds	r3, #1
    1f30:	71bb      	strb	r3, [r7, #6]
    1f32:	79bb      	ldrb	r3, [r7, #6]
    1f34:	4618      	mov	r0, r3
    1f36:	f001 fe41 	bl	3bbc <set_palette>
    1f3a:	2100      	movs	r1, #0
    1f3c:	20a8      	movs	r0, #168	; 0xa8
    1f3e:	f001 fa67 	bl	3410 <set_cursor>
    1f42:	79bb      	ldrb	r3, [r7, #6]
    1f44:	f003 0303 	and.w	r3, r3, #3
    1f48:	210a      	movs	r1, #10
    1f4a:	4618      	mov	r0, r3
    1f4c:	f001 faaf 	bl	34ae <print_int>
    1f50:	bf00      	nop
    1f52:	4b0c      	ldr	r3, [pc, #48]	; (1f84 <main+0x19c>)
    1f54:	881b      	ldrh	r3, [r3, #0]
    1f56:	b29b      	uxth	r3, r3
    1f58:	b21b      	sxth	r3, r3
    1f5a:	2b00      	cmp	r3, #0
    1f5c:	daf9      	bge.n	1f52 <main+0x16a>
    1f5e:	e7a7      	b.n	1eb0 <main+0xc8>
    1f60:	40021000 	.word	0x40021000
    1f64:	40011000 	.word	0x40011000
    1f68:	00004400 	.word	0x00004400
    1f6c:	20003cd0 	.word	0x20003cd0
    1f70:	0000408c 	.word	0x0000408c
    1f74:	20003c60 	.word	0x20003c60
    1f78:	200004ec 	.word	0x200004ec
    1f7c:	0000406c 	.word	0x0000406c
    1f80:	200004e8 	.word	0x200004e8
    1f84:	200014fc 	.word	0x200014fc

00001f88 <enable_interrupt>:
    1f88:	b480      	push	{r7}
    1f8a:	b083      	sub	sp, #12
    1f8c:	af00      	add	r7, sp, #0
    1f8e:	6078      	str	r0, [r7, #4]
    1f90:	687b      	ldr	r3, [r7, #4]
    1f92:	2b3b      	cmp	r3, #59	; 0x3b
    1f94:	dc17      	bgt.n	1fc6 <enable_interrupt+0x3e>
    1f96:	687b      	ldr	r3, [r7, #4]
    1f98:	115b      	asrs	r3, r3, #5
    1f9a:	009b      	lsls	r3, r3, #2
    1f9c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1fa0:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1fa4:	687a      	ldr	r2, [r7, #4]
    1fa6:	1152      	asrs	r2, r2, #5
    1fa8:	0092      	lsls	r2, r2, #2
    1faa:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1fae:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    1fb2:	6812      	ldr	r2, [r2, #0]
    1fb4:	6879      	ldr	r1, [r7, #4]
    1fb6:	f001 011f 	and.w	r1, r1, #31
    1fba:	2001      	movs	r0, #1
    1fbc:	fa00 f101 	lsl.w	r1, r0, r1
    1fc0:	430a      	orrs	r2, r1
    1fc2:	601a      	str	r2, [r3, #0]
    1fc4:	e000      	b.n	1fc8 <enable_interrupt+0x40>
    1fc6:	bf00      	nop
    1fc8:	370c      	adds	r7, #12
    1fca:	46bd      	mov	sp, r7
    1fcc:	bc80      	pop	{r7}
    1fce:	4770      	bx	lr

00001fd0 <disable_interrupt>:
    1fd0:	b480      	push	{r7}
    1fd2:	b083      	sub	sp, #12
    1fd4:	af00      	add	r7, sp, #0
    1fd6:	6078      	str	r0, [r7, #4]
    1fd8:	687b      	ldr	r3, [r7, #4]
    1fda:	2b3b      	cmp	r3, #59	; 0x3b
    1fdc:	dc0c      	bgt.n	1ff8 <disable_interrupt+0x28>
    1fde:	687b      	ldr	r3, [r7, #4]
    1fe0:	115b      	asrs	r3, r3, #5
    1fe2:	009a      	lsls	r2, r3, #2
    1fe4:	4b07      	ldr	r3, [pc, #28]	; (2004 <disable_interrupt+0x34>)
    1fe6:	4413      	add	r3, r2
    1fe8:	687a      	ldr	r2, [r7, #4]
    1fea:	f002 021f 	and.w	r2, r2, #31
    1fee:	2101      	movs	r1, #1
    1ff0:	fa01 f202 	lsl.w	r2, r1, r2
    1ff4:	601a      	str	r2, [r3, #0]
    1ff6:	e000      	b.n	1ffa <disable_interrupt+0x2a>
    1ff8:	bf00      	nop
    1ffa:	370c      	adds	r7, #12
    1ffc:	46bd      	mov	sp, r7
    1ffe:	bc80      	pop	{r7}
    2000:	4770      	bx	lr
    2002:	bf00      	nop
    2004:	e000e180 	.word	0xe000e180

00002008 <get_pending>:
    2008:	b480      	push	{r7}
    200a:	b083      	sub	sp, #12
    200c:	af00      	add	r7, sp, #0
    200e:	6078      	str	r0, [r7, #4]
    2010:	687b      	ldr	r3, [r7, #4]
    2012:	2b3b      	cmp	r3, #59	; 0x3b
    2014:	dd01      	ble.n	201a <get_pending+0x12>
    2016:	2300      	movs	r3, #0
    2018:	e00c      	b.n	2034 <get_pending+0x2c>
    201a:	687b      	ldr	r3, [r7, #4]
    201c:	115b      	asrs	r3, r3, #5
    201e:	009a      	lsls	r2, r3, #2
    2020:	4b07      	ldr	r3, [pc, #28]	; (2040 <get_pending+0x38>)
    2022:	4413      	add	r3, r2
    2024:	681b      	ldr	r3, [r3, #0]
    2026:	687a      	ldr	r2, [r7, #4]
    2028:	f002 021f 	and.w	r2, r2, #31
    202c:	2101      	movs	r1, #1
    202e:	fa01 f202 	lsl.w	r2, r1, r2
    2032:	4013      	ands	r3, r2
    2034:	4618      	mov	r0, r3
    2036:	370c      	adds	r7, #12
    2038:	46bd      	mov	sp, r7
    203a:	bc80      	pop	{r7}
    203c:	4770      	bx	lr
    203e:	bf00      	nop
    2040:	e000e280 	.word	0xe000e280

00002044 <get_active>:
    2044:	b480      	push	{r7}
    2046:	b083      	sub	sp, #12
    2048:	af00      	add	r7, sp, #0
    204a:	6078      	str	r0, [r7, #4]
    204c:	687b      	ldr	r3, [r7, #4]
    204e:	2b3b      	cmp	r3, #59	; 0x3b
    2050:	dd01      	ble.n	2056 <get_active+0x12>
    2052:	2300      	movs	r3, #0
    2054:	e00e      	b.n	2074 <get_active+0x30>
    2056:	687b      	ldr	r3, [r7, #4]
    2058:	115b      	asrs	r3, r3, #5
    205a:	009b      	lsls	r3, r3, #2
    205c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2060:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2064:	681b      	ldr	r3, [r3, #0]
    2066:	687a      	ldr	r2, [r7, #4]
    2068:	f002 021f 	and.w	r2, r2, #31
    206c:	2101      	movs	r1, #1
    206e:	fa01 f202 	lsl.w	r2, r1, r2
    2072:	4013      	ands	r3, r2
    2074:	4618      	mov	r0, r3
    2076:	370c      	adds	r7, #12
    2078:	46bd      	mov	sp, r7
    207a:	bc80      	pop	{r7}
    207c:	4770      	bx	lr

0000207e <set_pending>:
    207e:	b480      	push	{r7}
    2080:	b083      	sub	sp, #12
    2082:	af00      	add	r7, sp, #0
    2084:	6078      	str	r0, [r7, #4]
    2086:	687b      	ldr	r3, [r7, #4]
    2088:	2b3b      	cmp	r3, #59	; 0x3b
    208a:	dc17      	bgt.n	20bc <set_pending+0x3e>
    208c:	687b      	ldr	r3, [r7, #4]
    208e:	115b      	asrs	r3, r3, #5
    2090:	009b      	lsls	r3, r3, #2
    2092:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2096:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    209a:	687a      	ldr	r2, [r7, #4]
    209c:	1152      	asrs	r2, r2, #5
    209e:	0092      	lsls	r2, r2, #2
    20a0:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    20a4:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    20a8:	6812      	ldr	r2, [r2, #0]
    20aa:	6879      	ldr	r1, [r7, #4]
    20ac:	f001 011f 	and.w	r1, r1, #31
    20b0:	2001      	movs	r0, #1
    20b2:	fa00 f101 	lsl.w	r1, r0, r1
    20b6:	430a      	orrs	r2, r1
    20b8:	601a      	str	r2, [r3, #0]
    20ba:	e000      	b.n	20be <set_pending+0x40>
    20bc:	bf00      	nop
    20be:	370c      	adds	r7, #12
    20c0:	46bd      	mov	sp, r7
    20c2:	bc80      	pop	{r7}
    20c4:	4770      	bx	lr

000020c6 <clear_pending>:
    20c6:	b480      	push	{r7}
    20c8:	b083      	sub	sp, #12
    20ca:	af00      	add	r7, sp, #0
    20cc:	6078      	str	r0, [r7, #4]
    20ce:	687b      	ldr	r3, [r7, #4]
    20d0:	2b3b      	cmp	r3, #59	; 0x3b
    20d2:	dc0c      	bgt.n	20ee <clear_pending+0x28>
    20d4:	687b      	ldr	r3, [r7, #4]
    20d6:	115b      	asrs	r3, r3, #5
    20d8:	009a      	lsls	r2, r3, #2
    20da:	4b07      	ldr	r3, [pc, #28]	; (20f8 <clear_pending+0x32>)
    20dc:	4413      	add	r3, r2
    20de:	687a      	ldr	r2, [r7, #4]
    20e0:	f002 021f 	and.w	r2, r2, #31
    20e4:	2101      	movs	r1, #1
    20e6:	fa01 f202 	lsl.w	r2, r1, r2
    20ea:	601a      	str	r2, [r3, #0]
    20ec:	e000      	b.n	20f0 <clear_pending+0x2a>
    20ee:	bf00      	nop
    20f0:	370c      	adds	r7, #12
    20f2:	46bd      	mov	sp, r7
    20f4:	bc80      	pop	{r7}
    20f6:	4770      	bx	lr
    20f8:	e000e280 	.word	0xe000e280

000020fc <set_int_priority>:
    20fc:	b480      	push	{r7}
    20fe:	b083      	sub	sp, #12
    2100:	af00      	add	r7, sp, #0
    2102:	6078      	str	r0, [r7, #4]
    2104:	6039      	str	r1, [r7, #0]
    2106:	687b      	ldr	r3, [r7, #4]
    2108:	2b00      	cmp	r3, #0
    210a:	db0d      	blt.n	2128 <set_int_priority+0x2c>
    210c:	687b      	ldr	r3, [r7, #4]
    210e:	2b3b      	cmp	r3, #59	; 0x3b
    2110:	dc0a      	bgt.n	2128 <set_int_priority+0x2c>
    2112:	687b      	ldr	r3, [r7, #4]
    2114:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2118:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    211c:	683a      	ldr	r2, [r7, #0]
    211e:	b2d2      	uxtb	r2, r2
    2120:	0112      	lsls	r2, r2, #4
    2122:	b2d2      	uxtb	r2, r2
    2124:	701a      	strb	r2, [r3, #0]
    2126:	e012      	b.n	214e <set_int_priority+0x52>
    2128:	687b      	ldr	r3, [r7, #4]
    212a:	2b00      	cmp	r3, #0
    212c:	da0f      	bge.n	214e <set_int_priority+0x52>
    212e:	687b      	ldr	r3, [r7, #4]
    2130:	f113 0f0f 	cmn.w	r3, #15
    2134:	db0b      	blt.n	214e <set_int_priority+0x52>
    2136:	687a      	ldr	r2, [r7, #4]
    2138:	f06f 0303 	mvn.w	r3, #3
    213c:	1a9b      	subs	r3, r3, r2
    213e:	461a      	mov	r2, r3
    2140:	4b05      	ldr	r3, [pc, #20]	; (2158 <set_int_priority+0x5c>)
    2142:	4413      	add	r3, r2
    2144:	683a      	ldr	r2, [r7, #0]
    2146:	b2d2      	uxtb	r2, r2
    2148:	0112      	lsls	r2, r2, #4
    214a:	b2d2      	uxtb	r2, r2
    214c:	701a      	strb	r2, [r3, #0]
    214e:	bf00      	nop
    2150:	370c      	adds	r7, #12
    2152:	46bd      	mov	sp, r7
    2154:	bc80      	pop	{r7}
    2156:	4770      	bx	lr
    2158:	e000ed18 	.word	0xe000ed18

0000215c <leap_year>:
    215c:	b480      	push	{r7}
    215e:	b083      	sub	sp, #12
    2160:	af00      	add	r7, sp, #0
    2162:	6078      	str	r0, [r7, #4]
    2164:	687b      	ldr	r3, [r7, #4]
    2166:	f003 0303 	and.w	r3, r3, #3
    216a:	2b00      	cmp	r3, #0
    216c:	d11a      	bne.n	21a4 <leap_year+0x48>
    216e:	687a      	ldr	r2, [r7, #4]
    2170:	4b0f      	ldr	r3, [pc, #60]	; (21b0 <leap_year+0x54>)
    2172:	fba3 1302 	umull	r1, r3, r3, r2
    2176:	095b      	lsrs	r3, r3, #5
    2178:	2164      	movs	r1, #100	; 0x64
    217a:	fb01 f303 	mul.w	r3, r1, r3
    217e:	1ad3      	subs	r3, r2, r3
    2180:	2b00      	cmp	r3, #0
    2182:	d10d      	bne.n	21a0 <leap_year+0x44>
    2184:	687a      	ldr	r2, [r7, #4]
    2186:	4b0a      	ldr	r3, [pc, #40]	; (21b0 <leap_year+0x54>)
    2188:	fba3 1302 	umull	r1, r3, r3, r2
    218c:	09db      	lsrs	r3, r3, #7
    218e:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2192:	fb01 f303 	mul.w	r3, r1, r3
    2196:	1ad3      	subs	r3, r2, r3
    2198:	2b00      	cmp	r3, #0
    219a:	d001      	beq.n	21a0 <leap_year+0x44>
    219c:	2300      	movs	r3, #0
    219e:	e002      	b.n	21a6 <leap_year+0x4a>
    21a0:	2301      	movs	r3, #1
    21a2:	e000      	b.n	21a6 <leap_year+0x4a>
    21a4:	2300      	movs	r3, #0
    21a6:	4618      	mov	r0, r3
    21a8:	370c      	adds	r7, #12
    21aa:	46bd      	mov	sp, r7
    21ac:	bc80      	pop	{r7}
    21ae:	4770      	bx	lr
    21b0:	51eb851f 	.word	0x51eb851f

000021b4 <sec_per_month>:
    21b4:	b480      	push	{r7}
    21b6:	b085      	sub	sp, #20
    21b8:	af00      	add	r7, sp, #0
    21ba:	6078      	str	r0, [r7, #4]
    21bc:	6039      	str	r1, [r7, #0]
    21be:	4a0d      	ldr	r2, [pc, #52]	; (21f4 <sec_per_month+0x40>)
    21c0:	683b      	ldr	r3, [r7, #0]
    21c2:	4413      	add	r3, r2
    21c4:	781b      	ldrb	r3, [r3, #0]
    21c6:	461a      	mov	r2, r3
    21c8:	4b0b      	ldr	r3, [pc, #44]	; (21f8 <sec_per_month+0x44>)
    21ca:	fb03 f302 	mul.w	r3, r3, r2
    21ce:	60fb      	str	r3, [r7, #12]
    21d0:	683b      	ldr	r3, [r7, #0]
    21d2:	2b02      	cmp	r3, #2
    21d4:	d108      	bne.n	21e8 <sec_per_month+0x34>
    21d6:	687b      	ldr	r3, [r7, #4]
    21d8:	2b00      	cmp	r3, #0
    21da:	d005      	beq.n	21e8 <sec_per_month+0x34>
    21dc:	68fb      	ldr	r3, [r7, #12]
    21de:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    21e2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    21e6:	60fb      	str	r3, [r7, #12]
    21e8:	68fb      	ldr	r3, [r7, #12]
    21ea:	4618      	mov	r0, r3
    21ec:	3714      	adds	r7, #20
    21ee:	46bd      	mov	sp, r7
    21f0:	bc80      	pop	{r7}
    21f2:	4770      	bx	lr
    21f4:	00004148 	.word	0x00004148
    21f8:	00015180 	.word	0x00015180

000021fc <get_date_time>:
    21fc:	b580      	push	{r7, lr}
    21fe:	b086      	sub	sp, #24
    2200:	af00      	add	r7, sp, #0
    2202:	6078      	str	r0, [r7, #4]
    2204:	4b66      	ldr	r3, [pc, #408]	; (23a0 <get_date_time+0x1a4>)
    2206:	699b      	ldr	r3, [r3, #24]
    2208:	041a      	lsls	r2, r3, #16
    220a:	4b65      	ldr	r3, [pc, #404]	; (23a0 <get_date_time+0x1a4>)
    220c:	69db      	ldr	r3, [r3, #28]
    220e:	4413      	add	r3, r2
    2210:	617b      	str	r3, [r7, #20]
    2212:	687b      	ldr	r3, [r7, #4]
    2214:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2218:	811a      	strh	r2, [r3, #8]
    221a:	f240 70b2 	movw	r0, #1970	; 0x7b2
    221e:	f7ff ff9d 	bl	215c <leap_year>
    2222:	6138      	str	r0, [r7, #16]
    2224:	e019      	b.n	225a <get_date_time+0x5e>
    2226:	693b      	ldr	r3, [r7, #16]
    2228:	2b00      	cmp	r3, #0
    222a:	d006      	beq.n	223a <get_date_time+0x3e>
    222c:	697b      	ldr	r3, [r7, #20]
    222e:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    2232:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2236:	617b      	str	r3, [r7, #20]
    2238:	e003      	b.n	2242 <get_date_time+0x46>
    223a:	697a      	ldr	r2, [r7, #20]
    223c:	4b59      	ldr	r3, [pc, #356]	; (23a4 <get_date_time+0x1a8>)
    223e:	4413      	add	r3, r2
    2240:	617b      	str	r3, [r7, #20]
    2242:	687b      	ldr	r3, [r7, #4]
    2244:	891b      	ldrh	r3, [r3, #8]
    2246:	3301      	adds	r3, #1
    2248:	b29a      	uxth	r2, r3
    224a:	687b      	ldr	r3, [r7, #4]
    224c:	811a      	strh	r2, [r3, #8]
    224e:	687b      	ldr	r3, [r7, #4]
    2250:	891b      	ldrh	r3, [r3, #8]
    2252:	4618      	mov	r0, r3
    2254:	f7ff ff82 	bl	215c <leap_year>
    2258:	6138      	str	r0, [r7, #16]
    225a:	693b      	ldr	r3, [r7, #16]
    225c:	2b00      	cmp	r3, #0
    225e:	d103      	bne.n	2268 <get_date_time+0x6c>
    2260:	697b      	ldr	r3, [r7, #20]
    2262:	4a51      	ldr	r2, [pc, #324]	; (23a8 <get_date_time+0x1ac>)
    2264:	4293      	cmp	r3, r2
    2266:	d8de      	bhi.n	2226 <get_date_time+0x2a>
    2268:	693b      	ldr	r3, [r7, #16]
    226a:	2b00      	cmp	r3, #0
    226c:	d003      	beq.n	2276 <get_date_time+0x7a>
    226e:	697b      	ldr	r3, [r7, #20]
    2270:	4a4e      	ldr	r2, [pc, #312]	; (23ac <get_date_time+0x1b0>)
    2272:	4293      	cmp	r3, r2
    2274:	d8d7      	bhi.n	2226 <get_date_time+0x2a>
    2276:	687a      	ldr	r2, [r7, #4]
    2278:	8853      	ldrh	r3, [r2, #2]
    227a:	2101      	movs	r1, #1
    227c:	f361 1389 	bfi	r3, r1, #6, #4
    2280:	8053      	strh	r3, [r2, #2]
    2282:	687a      	ldr	r2, [r7, #4]
    2284:	7893      	ldrb	r3, [r2, #2]
    2286:	2101      	movs	r1, #1
    2288:	f361 0345 	bfi	r3, r1, #1, #5
    228c:	7093      	strb	r3, [r2, #2]
    228e:	687a      	ldr	r2, [r7, #4]
    2290:	6813      	ldr	r3, [r2, #0]
    2292:	f36f 3310 	bfc	r3, #12, #5
    2296:	6013      	str	r3, [r2, #0]
    2298:	687a      	ldr	r2, [r7, #4]
    229a:	8813      	ldrh	r3, [r2, #0]
    229c:	f36f 138b 	bfc	r3, #6, #6
    22a0:	8013      	strh	r3, [r2, #0]
    22a2:	687a      	ldr	r2, [r7, #4]
    22a4:	7813      	ldrb	r3, [r2, #0]
    22a6:	f36f 0305 	bfc	r3, #0, #6
    22aa:	7013      	strb	r3, [r2, #0]
    22ac:	e011      	b.n	22d2 <get_date_time+0xd6>
    22ae:	687b      	ldr	r3, [r7, #4]
    22b0:	885b      	ldrh	r3, [r3, #2]
    22b2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    22b6:	b2db      	uxtb	r3, r3
    22b8:	3301      	adds	r3, #1
    22ba:	f003 030f 	and.w	r3, r3, #15
    22be:	b2d9      	uxtb	r1, r3
    22c0:	687a      	ldr	r2, [r7, #4]
    22c2:	8853      	ldrh	r3, [r2, #2]
    22c4:	f361 1389 	bfi	r3, r1, #6, #4
    22c8:	8053      	strh	r3, [r2, #2]
    22ca:	697a      	ldr	r2, [r7, #20]
    22cc:	68fb      	ldr	r3, [r7, #12]
    22ce:	1ad3      	subs	r3, r2, r3
    22d0:	617b      	str	r3, [r7, #20]
    22d2:	687b      	ldr	r3, [r7, #4]
    22d4:	885b      	ldrh	r3, [r3, #2]
    22d6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    22da:	b2db      	uxtb	r3, r3
    22dc:	4619      	mov	r1, r3
    22de:	6938      	ldr	r0, [r7, #16]
    22e0:	f7ff ff68 	bl	21b4 <sec_per_month>
    22e4:	60f8      	str	r0, [r7, #12]
    22e6:	68fa      	ldr	r2, [r7, #12]
    22e8:	697b      	ldr	r3, [r7, #20]
    22ea:	429a      	cmp	r2, r3
    22ec:	d3df      	bcc.n	22ae <get_date_time+0xb2>
    22ee:	697b      	ldr	r3, [r7, #20]
    22f0:	4a2f      	ldr	r2, [pc, #188]	; (23b0 <get_date_time+0x1b4>)
    22f2:	fba2 2303 	umull	r2, r3, r2, r3
    22f6:	0c1b      	lsrs	r3, r3, #16
    22f8:	b2db      	uxtb	r3, r3
    22fa:	3301      	adds	r3, #1
    22fc:	b2db      	uxtb	r3, r3
    22fe:	f003 031f 	and.w	r3, r3, #31
    2302:	b2d9      	uxtb	r1, r3
    2304:	687a      	ldr	r2, [r7, #4]
    2306:	7893      	ldrb	r3, [r2, #2]
    2308:	f361 0345 	bfi	r3, r1, #1, #5
    230c:	7093      	strb	r3, [r2, #2]
    230e:	697b      	ldr	r3, [r7, #20]
    2310:	4a27      	ldr	r2, [pc, #156]	; (23b0 <get_date_time+0x1b4>)
    2312:	fba2 1203 	umull	r1, r2, r2, r3
    2316:	0c12      	lsrs	r2, r2, #16
    2318:	4926      	ldr	r1, [pc, #152]	; (23b4 <get_date_time+0x1b8>)
    231a:	fb01 f202 	mul.w	r2, r1, r2
    231e:	1a9b      	subs	r3, r3, r2
    2320:	617b      	str	r3, [r7, #20]
    2322:	697b      	ldr	r3, [r7, #20]
    2324:	4a24      	ldr	r2, [pc, #144]	; (23b8 <get_date_time+0x1bc>)
    2326:	fba2 2303 	umull	r2, r3, r2, r3
    232a:	0adb      	lsrs	r3, r3, #11
    232c:	b2db      	uxtb	r3, r3
    232e:	f003 031f 	and.w	r3, r3, #31
    2332:	b2d9      	uxtb	r1, r3
    2334:	687a      	ldr	r2, [r7, #4]
    2336:	6813      	ldr	r3, [r2, #0]
    2338:	f361 3310 	bfi	r3, r1, #12, #5
    233c:	6013      	str	r3, [r2, #0]
    233e:	697b      	ldr	r3, [r7, #20]
    2340:	4a1d      	ldr	r2, [pc, #116]	; (23b8 <get_date_time+0x1bc>)
    2342:	fba2 1203 	umull	r1, r2, r2, r3
    2346:	0ad2      	lsrs	r2, r2, #11
    2348:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    234c:	fb01 f202 	mul.w	r2, r1, r2
    2350:	1a9b      	subs	r3, r3, r2
    2352:	617b      	str	r3, [r7, #20]
    2354:	697b      	ldr	r3, [r7, #20]
    2356:	4a19      	ldr	r2, [pc, #100]	; (23bc <get_date_time+0x1c0>)
    2358:	fba2 2303 	umull	r2, r3, r2, r3
    235c:	095b      	lsrs	r3, r3, #5
    235e:	b2db      	uxtb	r3, r3
    2360:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2364:	b2d9      	uxtb	r1, r3
    2366:	687a      	ldr	r2, [r7, #4]
    2368:	8813      	ldrh	r3, [r2, #0]
    236a:	f361 138b 	bfi	r3, r1, #6, #6
    236e:	8013      	strh	r3, [r2, #0]
    2370:	6979      	ldr	r1, [r7, #20]
    2372:	4b12      	ldr	r3, [pc, #72]	; (23bc <get_date_time+0x1c0>)
    2374:	fba3 2301 	umull	r2, r3, r3, r1
    2378:	095a      	lsrs	r2, r3, #5
    237a:	4613      	mov	r3, r2
    237c:	011b      	lsls	r3, r3, #4
    237e:	1a9b      	subs	r3, r3, r2
    2380:	009b      	lsls	r3, r3, #2
    2382:	1aca      	subs	r2, r1, r3
    2384:	b2d3      	uxtb	r3, r2
    2386:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    238a:	b2d9      	uxtb	r1, r3
    238c:	687a      	ldr	r2, [r7, #4]
    238e:	7813      	ldrb	r3, [r2, #0]
    2390:	f361 0305 	bfi	r3, r1, #0, #6
    2394:	7013      	strb	r3, [r2, #0]
    2396:	bf00      	nop
    2398:	3718      	adds	r7, #24
    239a:	46bd      	mov	sp, r7
    239c:	bd80      	pop	{r7, pc}
    239e:	bf00      	nop
    23a0:	40002800 	.word	0x40002800
    23a4:	fe1ecc80 	.word	0xfe1ecc80
    23a8:	01e1337f 	.word	0x01e1337f
    23ac:	01e284ff 	.word	0x01e284ff
    23b0:	c22e4507 	.word	0xc22e4507
    23b4:	00015180 	.word	0x00015180
    23b8:	91a2b3c5 	.word	0x91a2b3c5
    23bc:	88888889 	.word	0x88888889

000023c0 <set_date_time>:
    23c0:	b580      	push	{r7, lr}
    23c2:	b086      	sub	sp, #24
    23c4:	af00      	add	r7, sp, #0
    23c6:	6078      	str	r0, [r7, #4]
    23c8:	2300      	movs	r3, #0
    23ca:	613b      	str	r3, [r7, #16]
    23cc:	687b      	ldr	r3, [r7, #4]
    23ce:	891b      	ldrh	r3, [r3, #8]
    23d0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    23d4:	4293      	cmp	r3, r2
    23d6:	d803      	bhi.n	23e0 <set_date_time+0x20>
    23d8:	687b      	ldr	r3, [r7, #4]
    23da:	f240 72b2 	movw	r2, #1970	; 0x7b2
    23de:	811a      	strh	r2, [r3, #8]
    23e0:	687b      	ldr	r3, [r7, #4]
    23e2:	891b      	ldrh	r3, [r3, #8]
    23e4:	f640 023a 	movw	r2, #2106	; 0x83a
    23e8:	4293      	cmp	r3, r2
    23ea:	d903      	bls.n	23f4 <set_date_time+0x34>
    23ec:	687b      	ldr	r3, [r7, #4]
    23ee:	f640 023a 	movw	r2, #2106	; 0x83a
    23f2:	811a      	strh	r2, [r3, #8]
    23f4:	687b      	ldr	r3, [r7, #4]
    23f6:	891b      	ldrh	r3, [r3, #8]
    23f8:	4618      	mov	r0, r3
    23fa:	f7ff feaf 	bl	215c <leap_year>
    23fe:	60f8      	str	r0, [r7, #12]
    2400:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2404:	617b      	str	r3, [r7, #20]
    2406:	e013      	b.n	2430 <set_date_time+0x70>
    2408:	6978      	ldr	r0, [r7, #20]
    240a:	f7ff fea7 	bl	215c <leap_year>
    240e:	4603      	mov	r3, r0
    2410:	2b00      	cmp	r3, #0
    2412:	d006      	beq.n	2422 <set_date_time+0x62>
    2414:	693b      	ldr	r3, [r7, #16]
    2416:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    241a:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    241e:	613b      	str	r3, [r7, #16]
    2420:	e003      	b.n	242a <set_date_time+0x6a>
    2422:	693a      	ldr	r2, [r7, #16]
    2424:	4b42      	ldr	r3, [pc, #264]	; (2530 <set_date_time+0x170>)
    2426:	4413      	add	r3, r2
    2428:	613b      	str	r3, [r7, #16]
    242a:	697b      	ldr	r3, [r7, #20]
    242c:	3301      	adds	r3, #1
    242e:	617b      	str	r3, [r7, #20]
    2430:	687b      	ldr	r3, [r7, #4]
    2432:	891b      	ldrh	r3, [r3, #8]
    2434:	461a      	mov	r2, r3
    2436:	697b      	ldr	r3, [r7, #20]
    2438:	429a      	cmp	r2, r3
    243a:	d8e5      	bhi.n	2408 <set_date_time+0x48>
    243c:	2301      	movs	r3, #1
    243e:	617b      	str	r3, [r7, #20]
    2440:	e00a      	b.n	2458 <set_date_time+0x98>
    2442:	6979      	ldr	r1, [r7, #20]
    2444:	68f8      	ldr	r0, [r7, #12]
    2446:	f7ff feb5 	bl	21b4 <sec_per_month>
    244a:	4602      	mov	r2, r0
    244c:	693b      	ldr	r3, [r7, #16]
    244e:	4413      	add	r3, r2
    2450:	613b      	str	r3, [r7, #16]
    2452:	697b      	ldr	r3, [r7, #20]
    2454:	3301      	adds	r3, #1
    2456:	617b      	str	r3, [r7, #20]
    2458:	687b      	ldr	r3, [r7, #4]
    245a:	885b      	ldrh	r3, [r3, #2]
    245c:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2460:	b2db      	uxtb	r3, r3
    2462:	461a      	mov	r2, r3
    2464:	697b      	ldr	r3, [r7, #20]
    2466:	429a      	cmp	r2, r3
    2468:	d8eb      	bhi.n	2442 <set_date_time+0x82>
    246a:	687b      	ldr	r3, [r7, #4]
    246c:	789b      	ldrb	r3, [r3, #2]
    246e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2472:	b2db      	uxtb	r3, r3
    2474:	3b01      	subs	r3, #1
    2476:	4a2f      	ldr	r2, [pc, #188]	; (2534 <set_date_time+0x174>)
    2478:	fb02 f303 	mul.w	r3, r2, r3
    247c:	461a      	mov	r2, r3
    247e:	693b      	ldr	r3, [r7, #16]
    2480:	4413      	add	r3, r2
    2482:	613b      	str	r3, [r7, #16]
    2484:	687b      	ldr	r3, [r7, #4]
    2486:	681b      	ldr	r3, [r3, #0]
    2488:	f3c3 3304 	ubfx	r3, r3, #12, #5
    248c:	b2db      	uxtb	r3, r3
    248e:	461a      	mov	r2, r3
    2490:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    2494:	fb03 f302 	mul.w	r3, r3, r2
    2498:	461a      	mov	r2, r3
    249a:	693b      	ldr	r3, [r7, #16]
    249c:	4413      	add	r3, r2
    249e:	613b      	str	r3, [r7, #16]
    24a0:	687b      	ldr	r3, [r7, #4]
    24a2:	881b      	ldrh	r3, [r3, #0]
    24a4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    24a8:	b2db      	uxtb	r3, r3
    24aa:	461a      	mov	r2, r3
    24ac:	4613      	mov	r3, r2
    24ae:	011b      	lsls	r3, r3, #4
    24b0:	1a9b      	subs	r3, r3, r2
    24b2:	009b      	lsls	r3, r3, #2
    24b4:	461a      	mov	r2, r3
    24b6:	693b      	ldr	r3, [r7, #16]
    24b8:	4413      	add	r3, r2
    24ba:	613b      	str	r3, [r7, #16]
    24bc:	687b      	ldr	r3, [r7, #4]
    24be:	781b      	ldrb	r3, [r3, #0]
    24c0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    24c4:	b2db      	uxtb	r3, r3
    24c6:	461a      	mov	r2, r3
    24c8:	693b      	ldr	r3, [r7, #16]
    24ca:	4413      	add	r3, r2
    24cc:	613b      	str	r3, [r7, #16]
    24ce:	4a1a      	ldr	r2, [pc, #104]	; (2538 <set_date_time+0x178>)
    24d0:	4b19      	ldr	r3, [pc, #100]	; (2538 <set_date_time+0x178>)
    24d2:	69db      	ldr	r3, [r3, #28]
    24d4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    24d8:	61d3      	str	r3, [r2, #28]
    24da:	4a18      	ldr	r2, [pc, #96]	; (253c <set_date_time+0x17c>)
    24dc:	4b17      	ldr	r3, [pc, #92]	; (253c <set_date_time+0x17c>)
    24de:	681b      	ldr	r3, [r3, #0]
    24e0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    24e4:	6013      	str	r3, [r2, #0]
    24e6:	4a16      	ldr	r2, [pc, #88]	; (2540 <set_date_time+0x180>)
    24e8:	4b15      	ldr	r3, [pc, #84]	; (2540 <set_date_time+0x180>)
    24ea:	685b      	ldr	r3, [r3, #4]
    24ec:	f043 0310 	orr.w	r3, r3, #16
    24f0:	6053      	str	r3, [r2, #4]
    24f2:	4a13      	ldr	r2, [pc, #76]	; (2540 <set_date_time+0x180>)
    24f4:	693b      	ldr	r3, [r7, #16]
    24f6:	0c1b      	lsrs	r3, r3, #16
    24f8:	6193      	str	r3, [r2, #24]
    24fa:	4a11      	ldr	r2, [pc, #68]	; (2540 <set_date_time+0x180>)
    24fc:	693b      	ldr	r3, [r7, #16]
    24fe:	b29b      	uxth	r3, r3
    2500:	61d3      	str	r3, [r2, #28]
    2502:	4a0f      	ldr	r2, [pc, #60]	; (2540 <set_date_time+0x180>)
    2504:	4b0e      	ldr	r3, [pc, #56]	; (2540 <set_date_time+0x180>)
    2506:	685b      	ldr	r3, [r3, #4]
    2508:	f023 0310 	bic.w	r3, r3, #16
    250c:	6053      	str	r3, [r2, #4]
    250e:	bf00      	nop
    2510:	4b0b      	ldr	r3, [pc, #44]	; (2540 <set_date_time+0x180>)
    2512:	685b      	ldr	r3, [r3, #4]
    2514:	f003 0320 	and.w	r3, r3, #32
    2518:	2b00      	cmp	r3, #0
    251a:	d0f9      	beq.n	2510 <set_date_time+0x150>
    251c:	4a07      	ldr	r2, [pc, #28]	; (253c <set_date_time+0x17c>)
    251e:	4b07      	ldr	r3, [pc, #28]	; (253c <set_date_time+0x17c>)
    2520:	681b      	ldr	r3, [r3, #0]
    2522:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2526:	6013      	str	r3, [r2, #0]
    2528:	bf00      	nop
    252a:	3718      	adds	r7, #24
    252c:	46bd      	mov	sp, r7
    252e:	bd80      	pop	{r7, pc}
    2530:	01e13380 	.word	0x01e13380
    2534:	00015180 	.word	0x00015180
    2538:	40021000 	.word	0x40021000
    253c:	40007000 	.word	0x40007000
    2540:	40002800 	.word	0x40002800

00002544 <rtc_init>:
    2544:	b580      	push	{r7, lr}
    2546:	b082      	sub	sp, #8
    2548:	af00      	add	r7, sp, #0
    254a:	6078      	str	r0, [r7, #4]
    254c:	6039      	str	r1, [r7, #0]
    254e:	4b4a      	ldr	r3, [pc, #296]	; (2678 <rtc_init+0x134>)
    2550:	685b      	ldr	r3, [r3, #4]
    2552:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2556:	4293      	cmp	r3, r2
    2558:	f000 8082 	beq.w	2660 <rtc_init+0x11c>
    255c:	4a47      	ldr	r2, [pc, #284]	; (267c <rtc_init+0x138>)
    255e:	4b47      	ldr	r3, [pc, #284]	; (267c <rtc_init+0x138>)
    2560:	69db      	ldr	r3, [r3, #28]
    2562:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2566:	61d3      	str	r3, [r2, #28]
    2568:	4a45      	ldr	r2, [pc, #276]	; (2680 <rtc_init+0x13c>)
    256a:	4b45      	ldr	r3, [pc, #276]	; (2680 <rtc_init+0x13c>)
    256c:	681b      	ldr	r3, [r3, #0]
    256e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2572:	6013      	str	r3, [r2, #0]
    2574:	4a41      	ldr	r2, [pc, #260]	; (267c <rtc_init+0x138>)
    2576:	4b41      	ldr	r3, [pc, #260]	; (267c <rtc_init+0x138>)
    2578:	6a1b      	ldr	r3, [r3, #32]
    257a:	f043 0301 	orr.w	r3, r3, #1
    257e:	6213      	str	r3, [r2, #32]
    2580:	bf00      	nop
    2582:	4b3e      	ldr	r3, [pc, #248]	; (267c <rtc_init+0x138>)
    2584:	6a1b      	ldr	r3, [r3, #32]
    2586:	f003 0302 	and.w	r3, r3, #2
    258a:	2b00      	cmp	r3, #0
    258c:	d0f9      	beq.n	2582 <rtc_init+0x3e>
    258e:	4a3b      	ldr	r2, [pc, #236]	; (267c <rtc_init+0x138>)
    2590:	4b3a      	ldr	r3, [pc, #232]	; (267c <rtc_init+0x138>)
    2592:	6a1b      	ldr	r3, [r3, #32]
    2594:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2598:	6213      	str	r3, [r2, #32]
    259a:	bf00      	nop
    259c:	4b39      	ldr	r3, [pc, #228]	; (2684 <rtc_init+0x140>)
    259e:	685b      	ldr	r3, [r3, #4]
    25a0:	f003 0308 	and.w	r3, r3, #8
    25a4:	2b00      	cmp	r3, #0
    25a6:	d0f9      	beq.n	259c <rtc_init+0x58>
    25a8:	bf00      	nop
    25aa:	4b36      	ldr	r3, [pc, #216]	; (2684 <rtc_init+0x140>)
    25ac:	685b      	ldr	r3, [r3, #4]
    25ae:	f003 0320 	and.w	r3, r3, #32
    25b2:	2b00      	cmp	r3, #0
    25b4:	d0f9      	beq.n	25aa <rtc_init+0x66>
    25b6:	4a33      	ldr	r2, [pc, #204]	; (2684 <rtc_init+0x140>)
    25b8:	4b32      	ldr	r3, [pc, #200]	; (2684 <rtc_init+0x140>)
    25ba:	685b      	ldr	r3, [r3, #4]
    25bc:	f043 0310 	orr.w	r3, r3, #16
    25c0:	6053      	str	r3, [r2, #4]
    25c2:	bf00      	nop
    25c4:	4b2f      	ldr	r3, [pc, #188]	; (2684 <rtc_init+0x140>)
    25c6:	685b      	ldr	r3, [r3, #4]
    25c8:	f003 0320 	and.w	r3, r3, #32
    25cc:	2b00      	cmp	r3, #0
    25ce:	d0f9      	beq.n	25c4 <rtc_init+0x80>
    25d0:	492c      	ldr	r1, [pc, #176]	; (2684 <rtc_init+0x140>)
    25d2:	4b2c      	ldr	r3, [pc, #176]	; (2684 <rtc_init+0x140>)
    25d4:	681a      	ldr	r2, [r3, #0]
    25d6:	683b      	ldr	r3, [r7, #0]
    25d8:	4313      	orrs	r3, r2
    25da:	600b      	str	r3, [r1, #0]
    25dc:	bf00      	nop
    25de:	4b29      	ldr	r3, [pc, #164]	; (2684 <rtc_init+0x140>)
    25e0:	685b      	ldr	r3, [r3, #4]
    25e2:	f003 0320 	and.w	r3, r3, #32
    25e6:	2b00      	cmp	r3, #0
    25e8:	d0f9      	beq.n	25de <rtc_init+0x9a>
    25ea:	4a26      	ldr	r2, [pc, #152]	; (2684 <rtc_init+0x140>)
    25ec:	687b      	ldr	r3, [r7, #4]
    25ee:	03db      	lsls	r3, r3, #15
    25f0:	4925      	ldr	r1, [pc, #148]	; (2688 <rtc_init+0x144>)
    25f2:	fba1 1303 	umull	r1, r3, r1, r3
    25f6:	099b      	lsrs	r3, r3, #6
    25f8:	3b01      	subs	r3, #1
    25fa:	b29b      	uxth	r3, r3
    25fc:	60d3      	str	r3, [r2, #12]
    25fe:	bf00      	nop
    2600:	4b20      	ldr	r3, [pc, #128]	; (2684 <rtc_init+0x140>)
    2602:	685b      	ldr	r3, [r3, #4]
    2604:	f003 0320 	and.w	r3, r3, #32
    2608:	2b00      	cmp	r3, #0
    260a:	d0f9      	beq.n	2600 <rtc_init+0xbc>
    260c:	4a1d      	ldr	r2, [pc, #116]	; (2684 <rtc_init+0x140>)
    260e:	687b      	ldr	r3, [r7, #4]
    2610:	03db      	lsls	r3, r3, #15
    2612:	491d      	ldr	r1, [pc, #116]	; (2688 <rtc_init+0x144>)
    2614:	fba1 1303 	umull	r1, r3, r1, r3
    2618:	099b      	lsrs	r3, r3, #6
    261a:	3b01      	subs	r3, #1
    261c:	0c1b      	lsrs	r3, r3, #16
    261e:	f003 030f 	and.w	r3, r3, #15
    2622:	6093      	str	r3, [r2, #8]
    2624:	bf00      	nop
    2626:	4b17      	ldr	r3, [pc, #92]	; (2684 <rtc_init+0x140>)
    2628:	685b      	ldr	r3, [r3, #4]
    262a:	f003 0320 	and.w	r3, r3, #32
    262e:	2b00      	cmp	r3, #0
    2630:	d0f9      	beq.n	2626 <rtc_init+0xe2>
    2632:	4b11      	ldr	r3, [pc, #68]	; (2678 <rtc_init+0x134>)
    2634:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2638:	605a      	str	r2, [r3, #4]
    263a:	4a12      	ldr	r2, [pc, #72]	; (2684 <rtc_init+0x140>)
    263c:	4b11      	ldr	r3, [pc, #68]	; (2684 <rtc_init+0x140>)
    263e:	685b      	ldr	r3, [r3, #4]
    2640:	f023 0310 	bic.w	r3, r3, #16
    2644:	6053      	str	r3, [r2, #4]
    2646:	bf00      	nop
    2648:	4b0e      	ldr	r3, [pc, #56]	; (2684 <rtc_init+0x140>)
    264a:	685b      	ldr	r3, [r3, #4]
    264c:	f003 0320 	and.w	r3, r3, #32
    2650:	2b00      	cmp	r3, #0
    2652:	d0f9      	beq.n	2648 <rtc_init+0x104>
    2654:	4a0a      	ldr	r2, [pc, #40]	; (2680 <rtc_init+0x13c>)
    2656:	4b0a      	ldr	r3, [pc, #40]	; (2680 <rtc_init+0x13c>)
    2658:	681b      	ldr	r3, [r3, #0]
    265a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    265e:	6013      	str	r3, [r2, #0]
    2660:	210f      	movs	r1, #15
    2662:	2003      	movs	r0, #3
    2664:	f7ff fd4a 	bl	20fc <set_int_priority>
    2668:	2003      	movs	r0, #3
    266a:	f7ff fc8d 	bl	1f88 <enable_interrupt>
    266e:	bf00      	nop
    2670:	3708      	adds	r7, #8
    2672:	46bd      	mov	sp, r7
    2674:	bd80      	pop	{r7, pc}
    2676:	bf00      	nop
    2678:	40006c00 	.word	0x40006c00
    267c:	40021000 	.word	0x40021000
    2680:	40007000 	.word	0x40007000
    2684:	40002800 	.word	0x40002800
    2688:	10624dd3 	.word	0x10624dd3

0000268c <reset_backup_domain>:
    268c:	b480      	push	{r7}
    268e:	af00      	add	r7, sp, #0
    2690:	4a0a      	ldr	r2, [pc, #40]	; (26bc <reset_backup_domain+0x30>)
    2692:	4b0a      	ldr	r3, [pc, #40]	; (26bc <reset_backup_domain+0x30>)
    2694:	69db      	ldr	r3, [r3, #28]
    2696:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    269a:	61d3      	str	r3, [r2, #28]
    269c:	4a07      	ldr	r2, [pc, #28]	; (26bc <reset_backup_domain+0x30>)
    269e:	4b07      	ldr	r3, [pc, #28]	; (26bc <reset_backup_domain+0x30>)
    26a0:	6a1b      	ldr	r3, [r3, #32]
    26a2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    26a6:	6213      	str	r3, [r2, #32]
    26a8:	4a04      	ldr	r2, [pc, #16]	; (26bc <reset_backup_domain+0x30>)
    26aa:	4b04      	ldr	r3, [pc, #16]	; (26bc <reset_backup_domain+0x30>)
    26ac:	6a1b      	ldr	r3, [r3, #32]
    26ae:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    26b2:	6213      	str	r3, [r2, #32]
    26b4:	bf00      	nop
    26b6:	46bd      	mov	sp, r7
    26b8:	bc80      	pop	{r7}
    26ba:	4770      	bx	lr
    26bc:	40021000 	.word	0x40021000

000026c0 <rtc_clock_trim>:
    26c0:	b480      	push	{r7}
    26c2:	b083      	sub	sp, #12
    26c4:	af00      	add	r7, sp, #0
    26c6:	6078      	str	r0, [r7, #4]
    26c8:	4a34      	ldr	r2, [pc, #208]	; (279c <rtc_clock_trim+0xdc>)
    26ca:	4b34      	ldr	r3, [pc, #208]	; (279c <rtc_clock_trim+0xdc>)
    26cc:	69db      	ldr	r3, [r3, #28]
    26ce:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    26d2:	61d3      	str	r3, [r2, #28]
    26d4:	bf00      	nop
    26d6:	4b32      	ldr	r3, [pc, #200]	; (27a0 <rtc_clock_trim+0xe0>)
    26d8:	685b      	ldr	r3, [r3, #4]
    26da:	f003 0308 	and.w	r3, r3, #8
    26de:	2b00      	cmp	r3, #0
    26e0:	d0f9      	beq.n	26d6 <rtc_clock_trim+0x16>
    26e2:	4a30      	ldr	r2, [pc, #192]	; (27a4 <rtc_clock_trim+0xe4>)
    26e4:	4b2f      	ldr	r3, [pc, #188]	; (27a4 <rtc_clock_trim+0xe4>)
    26e6:	681b      	ldr	r3, [r3, #0]
    26e8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    26ec:	6013      	str	r3, [r2, #0]
    26ee:	4a2c      	ldr	r2, [pc, #176]	; (27a0 <rtc_clock_trim+0xe0>)
    26f0:	4b2b      	ldr	r3, [pc, #172]	; (27a0 <rtc_clock_trim+0xe0>)
    26f2:	685b      	ldr	r3, [r3, #4]
    26f4:	f043 0310 	orr.w	r3, r3, #16
    26f8:	6053      	str	r3, [r2, #4]
    26fa:	4a2b      	ldr	r2, [pc, #172]	; (27a8 <rtc_clock_trim+0xe8>)
    26fc:	4b2a      	ldr	r3, [pc, #168]	; (27a8 <rtc_clock_trim+0xe8>)
    26fe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2700:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2704:	62d3      	str	r3, [r2, #44]	; 0x2c
    2706:	687b      	ldr	r3, [r7, #4]
    2708:	2b00      	cmp	r3, #0
    270a:	d10a      	bne.n	2722 <rtc_clock_trim+0x62>
    270c:	4b26      	ldr	r3, [pc, #152]	; (27a8 <rtc_clock_trim+0xe8>)
    270e:	2200      	movs	r2, #0
    2710:	62da      	str	r2, [r3, #44]	; 0x2c
    2712:	4b23      	ldr	r3, [pc, #140]	; (27a0 <rtc_clock_trim+0xe0>)
    2714:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2718:	60da      	str	r2, [r3, #12]
    271a:	4b21      	ldr	r3, [pc, #132]	; (27a0 <rtc_clock_trim+0xe0>)
    271c:	2200      	movs	r2, #0
    271e:	609a      	str	r2, [r3, #8]
    2720:	e023      	b.n	276a <rtc_clock_trim+0xaa>
    2722:	687b      	ldr	r3, [r7, #4]
    2724:	2b00      	cmp	r3, #0
    2726:	dd0a      	ble.n	273e <rtc_clock_trim+0x7e>
    2728:	687b      	ldr	r3, [r7, #4]
    272a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    272e:	607b      	str	r3, [r7, #4]
    2730:	491d      	ldr	r1, [pc, #116]	; (27a8 <rtc_clock_trim+0xe8>)
    2732:	4b1d      	ldr	r3, [pc, #116]	; (27a8 <rtc_clock_trim+0xe8>)
    2734:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2736:	687b      	ldr	r3, [r7, #4]
    2738:	4313      	orrs	r3, r2
    273a:	62cb      	str	r3, [r1, #44]	; 0x2c
    273c:	e015      	b.n	276a <rtc_clock_trim+0xaa>
    273e:	687b      	ldr	r3, [r7, #4]
    2740:	425b      	negs	r3, r3
    2742:	607b      	str	r3, [r7, #4]
    2744:	687b      	ldr	r3, [r7, #4]
    2746:	2b7f      	cmp	r3, #127	; 0x7f
    2748:	dd01      	ble.n	274e <rtc_clock_trim+0x8e>
    274a:	237f      	movs	r3, #127	; 0x7f
    274c:	607b      	str	r3, [r7, #4]
    274e:	4b16      	ldr	r3, [pc, #88]	; (27a8 <rtc_clock_trim+0xe8>)
    2750:	2200      	movs	r2, #0
    2752:	62da      	str	r2, [r3, #44]	; 0x2c
    2754:	4a12      	ldr	r2, [pc, #72]	; (27a0 <rtc_clock_trim+0xe0>)
    2756:	687b      	ldr	r3, [r7, #4]
    2758:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    275c:	33ff      	adds	r3, #255	; 0xff
    275e:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2762:	60d3      	str	r3, [r2, #12]
    2764:	4b0e      	ldr	r3, [pc, #56]	; (27a0 <rtc_clock_trim+0xe0>)
    2766:	2200      	movs	r2, #0
    2768:	609a      	str	r2, [r3, #8]
    276a:	4a0d      	ldr	r2, [pc, #52]	; (27a0 <rtc_clock_trim+0xe0>)
    276c:	4b0c      	ldr	r3, [pc, #48]	; (27a0 <rtc_clock_trim+0xe0>)
    276e:	685b      	ldr	r3, [r3, #4]
    2770:	f023 0310 	bic.w	r3, r3, #16
    2774:	6053      	str	r3, [r2, #4]
    2776:	bf00      	nop
    2778:	4b09      	ldr	r3, [pc, #36]	; (27a0 <rtc_clock_trim+0xe0>)
    277a:	685b      	ldr	r3, [r3, #4]
    277c:	f003 0320 	and.w	r3, r3, #32
    2780:	2b00      	cmp	r3, #0
    2782:	d0f9      	beq.n	2778 <rtc_clock_trim+0xb8>
    2784:	4a07      	ldr	r2, [pc, #28]	; (27a4 <rtc_clock_trim+0xe4>)
    2786:	4b07      	ldr	r3, [pc, #28]	; (27a4 <rtc_clock_trim+0xe4>)
    2788:	681b      	ldr	r3, [r3, #0]
    278a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    278e:	6013      	str	r3, [r2, #0]
    2790:	bf00      	nop
    2792:	370c      	adds	r7, #12
    2794:	46bd      	mov	sp, r7
    2796:	bc80      	pop	{r7}
    2798:	4770      	bx	lr
    279a:	bf00      	nop
    279c:	40021000 	.word	0x40021000
    27a0:	40002800 	.word	0x40002800
    27a4:	40007000 	.word	0x40007000
    27a8:	40006c00 	.word	0x40006c00

000027ac <rtc_set_alarm>:
    27ac:	b480      	push	{r7}
    27ae:	b083      	sub	sp, #12
    27b0:	af00      	add	r7, sp, #0
    27b2:	6078      	str	r0, [r7, #4]
    27b4:	bf00      	nop
    27b6:	370c      	adds	r7, #12
    27b8:	46bd      	mov	sp, r7
    27ba:	bc80      	pop	{r7}
    27bc:	4770      	bx	lr

000027be <str_to_date>:
    27be:	b580      	push	{r7, lr}
    27c0:	b084      	sub	sp, #16
    27c2:	af00      	add	r7, sp, #0
    27c4:	6078      	str	r0, [r7, #4]
    27c6:	6039      	str	r1, [r7, #0]
    27c8:	2300      	movs	r3, #0
    27ca:	60fb      	str	r3, [r7, #12]
    27cc:	2300      	movs	r3, #0
    27ce:	60bb      	str	r3, [r7, #8]
    27d0:	e00f      	b.n	27f2 <str_to_date+0x34>
    27d2:	68ba      	ldr	r2, [r7, #8]
    27d4:	4613      	mov	r3, r2
    27d6:	009b      	lsls	r3, r3, #2
    27d8:	4413      	add	r3, r2
    27da:	005b      	lsls	r3, r3, #1
    27dc:	4619      	mov	r1, r3
    27de:	68fb      	ldr	r3, [r7, #12]
    27e0:	1c5a      	adds	r2, r3, #1
    27e2:	60fa      	str	r2, [r7, #12]
    27e4:	461a      	mov	r2, r3
    27e6:	687b      	ldr	r3, [r7, #4]
    27e8:	4413      	add	r3, r2
    27ea:	781b      	ldrb	r3, [r3, #0]
    27ec:	440b      	add	r3, r1
    27ee:	3b30      	subs	r3, #48	; 0x30
    27f0:	60bb      	str	r3, [r7, #8]
    27f2:	68fb      	ldr	r3, [r7, #12]
    27f4:	687a      	ldr	r2, [r7, #4]
    27f6:	4413      	add	r3, r2
    27f8:	781b      	ldrb	r3, [r3, #0]
    27fa:	4618      	mov	r0, r3
    27fc:	f7fe fe47 	bl	148e <digit>
    2800:	4603      	mov	r3, r0
    2802:	2b00      	cmp	r3, #0
    2804:	d1e5      	bne.n	27d2 <str_to_date+0x14>
    2806:	68fb      	ldr	r3, [r7, #12]
    2808:	2b03      	cmp	r3, #3
    280a:	dd05      	ble.n	2818 <str_to_date+0x5a>
    280c:	68fb      	ldr	r3, [r7, #12]
    280e:	687a      	ldr	r2, [r7, #4]
    2810:	4413      	add	r3, r2
    2812:	781b      	ldrb	r3, [r3, #0]
    2814:	2b2f      	cmp	r3, #47	; 0x2f
    2816:	d001      	beq.n	281c <str_to_date+0x5e>
    2818:	2300      	movs	r3, #0
    281a:	e068      	b.n	28ee <str_to_date+0x130>
    281c:	68bb      	ldr	r3, [r7, #8]
    281e:	b29a      	uxth	r2, r3
    2820:	683b      	ldr	r3, [r7, #0]
    2822:	811a      	strh	r2, [r3, #8]
    2824:	68fb      	ldr	r3, [r7, #12]
    2826:	3301      	adds	r3, #1
    2828:	60fb      	str	r3, [r7, #12]
    282a:	2300      	movs	r3, #0
    282c:	60bb      	str	r3, [r7, #8]
    282e:	e00f      	b.n	2850 <str_to_date+0x92>
    2830:	68ba      	ldr	r2, [r7, #8]
    2832:	4613      	mov	r3, r2
    2834:	009b      	lsls	r3, r3, #2
    2836:	4413      	add	r3, r2
    2838:	005b      	lsls	r3, r3, #1
    283a:	4619      	mov	r1, r3
    283c:	68fb      	ldr	r3, [r7, #12]
    283e:	1c5a      	adds	r2, r3, #1
    2840:	60fa      	str	r2, [r7, #12]
    2842:	461a      	mov	r2, r3
    2844:	687b      	ldr	r3, [r7, #4]
    2846:	4413      	add	r3, r2
    2848:	781b      	ldrb	r3, [r3, #0]
    284a:	440b      	add	r3, r1
    284c:	3b30      	subs	r3, #48	; 0x30
    284e:	60bb      	str	r3, [r7, #8]
    2850:	68fb      	ldr	r3, [r7, #12]
    2852:	687a      	ldr	r2, [r7, #4]
    2854:	4413      	add	r3, r2
    2856:	781b      	ldrb	r3, [r3, #0]
    2858:	4618      	mov	r0, r3
    285a:	f7fe fe18 	bl	148e <digit>
    285e:	4603      	mov	r3, r0
    2860:	2b00      	cmp	r3, #0
    2862:	d1e5      	bne.n	2830 <str_to_date+0x72>
    2864:	68fb      	ldr	r3, [r7, #12]
    2866:	2b06      	cmp	r3, #6
    2868:	dd05      	ble.n	2876 <str_to_date+0xb8>
    286a:	68fb      	ldr	r3, [r7, #12]
    286c:	687a      	ldr	r2, [r7, #4]
    286e:	4413      	add	r3, r2
    2870:	781b      	ldrb	r3, [r3, #0]
    2872:	2b2f      	cmp	r3, #47	; 0x2f
    2874:	d001      	beq.n	287a <str_to_date+0xbc>
    2876:	2300      	movs	r3, #0
    2878:	e039      	b.n	28ee <str_to_date+0x130>
    287a:	68bb      	ldr	r3, [r7, #8]
    287c:	b2db      	uxtb	r3, r3
    287e:	f003 030f 	and.w	r3, r3, #15
    2882:	b2d9      	uxtb	r1, r3
    2884:	683a      	ldr	r2, [r7, #0]
    2886:	8853      	ldrh	r3, [r2, #2]
    2888:	f361 1389 	bfi	r3, r1, #6, #4
    288c:	8053      	strh	r3, [r2, #2]
    288e:	2300      	movs	r3, #0
    2890:	60bb      	str	r3, [r7, #8]
    2892:	68fb      	ldr	r3, [r7, #12]
    2894:	3301      	adds	r3, #1
    2896:	60fb      	str	r3, [r7, #12]
    2898:	e00f      	b.n	28ba <str_to_date+0xfc>
    289a:	68ba      	ldr	r2, [r7, #8]
    289c:	4613      	mov	r3, r2
    289e:	009b      	lsls	r3, r3, #2
    28a0:	4413      	add	r3, r2
    28a2:	005b      	lsls	r3, r3, #1
    28a4:	4619      	mov	r1, r3
    28a6:	68fb      	ldr	r3, [r7, #12]
    28a8:	1c5a      	adds	r2, r3, #1
    28aa:	60fa      	str	r2, [r7, #12]
    28ac:	461a      	mov	r2, r3
    28ae:	687b      	ldr	r3, [r7, #4]
    28b0:	4413      	add	r3, r2
    28b2:	781b      	ldrb	r3, [r3, #0]
    28b4:	440b      	add	r3, r1
    28b6:	3b30      	subs	r3, #48	; 0x30
    28b8:	60bb      	str	r3, [r7, #8]
    28ba:	68fb      	ldr	r3, [r7, #12]
    28bc:	687a      	ldr	r2, [r7, #4]
    28be:	4413      	add	r3, r2
    28c0:	781b      	ldrb	r3, [r3, #0]
    28c2:	4618      	mov	r0, r3
    28c4:	f7fe fde3 	bl	148e <digit>
    28c8:	4603      	mov	r3, r0
    28ca:	2b00      	cmp	r3, #0
    28cc:	d1e5      	bne.n	289a <str_to_date+0xdc>
    28ce:	68fb      	ldr	r3, [r7, #12]
    28d0:	2b09      	cmp	r3, #9
    28d2:	dc01      	bgt.n	28d8 <str_to_date+0x11a>
    28d4:	2300      	movs	r3, #0
    28d6:	e00a      	b.n	28ee <str_to_date+0x130>
    28d8:	68bb      	ldr	r3, [r7, #8]
    28da:	b2db      	uxtb	r3, r3
    28dc:	f003 031f 	and.w	r3, r3, #31
    28e0:	b2d9      	uxtb	r1, r3
    28e2:	683a      	ldr	r2, [r7, #0]
    28e4:	7893      	ldrb	r3, [r2, #2]
    28e6:	f361 0345 	bfi	r3, r1, #1, #5
    28ea:	7093      	strb	r3, [r2, #2]
    28ec:	2301      	movs	r3, #1
    28ee:	4618      	mov	r0, r3
    28f0:	3710      	adds	r7, #16
    28f2:	46bd      	mov	sp, r7
    28f4:	bd80      	pop	{r7, pc}

000028f6 <str_to_time>:
    28f6:	b580      	push	{r7, lr}
    28f8:	b084      	sub	sp, #16
    28fa:	af00      	add	r7, sp, #0
    28fc:	6078      	str	r0, [r7, #4]
    28fe:	6039      	str	r1, [r7, #0]
    2900:	2300      	movs	r3, #0
    2902:	60fb      	str	r3, [r7, #12]
    2904:	2300      	movs	r3, #0
    2906:	72fb      	strb	r3, [r7, #11]
    2908:	e010      	b.n	292c <str_to_time+0x36>
    290a:	7afb      	ldrb	r3, [r7, #11]
    290c:	461a      	mov	r2, r3
    290e:	0092      	lsls	r2, r2, #2
    2910:	4413      	add	r3, r2
    2912:	005b      	lsls	r3, r3, #1
    2914:	b2da      	uxtb	r2, r3
    2916:	68fb      	ldr	r3, [r7, #12]
    2918:	1c59      	adds	r1, r3, #1
    291a:	60f9      	str	r1, [r7, #12]
    291c:	4619      	mov	r1, r3
    291e:	687b      	ldr	r3, [r7, #4]
    2920:	440b      	add	r3, r1
    2922:	781b      	ldrb	r3, [r3, #0]
    2924:	4413      	add	r3, r2
    2926:	b2db      	uxtb	r3, r3
    2928:	3b30      	subs	r3, #48	; 0x30
    292a:	72fb      	strb	r3, [r7, #11]
    292c:	68fb      	ldr	r3, [r7, #12]
    292e:	687a      	ldr	r2, [r7, #4]
    2930:	4413      	add	r3, r2
    2932:	781b      	ldrb	r3, [r3, #0]
    2934:	4618      	mov	r0, r3
    2936:	f7fe fdaa 	bl	148e <digit>
    293a:	4603      	mov	r3, r0
    293c:	2b00      	cmp	r3, #0
    293e:	d1e4      	bne.n	290a <str_to_time+0x14>
    2940:	7afb      	ldrb	r3, [r7, #11]
    2942:	2b17      	cmp	r3, #23
    2944:	d805      	bhi.n	2952 <str_to_time+0x5c>
    2946:	68fb      	ldr	r3, [r7, #12]
    2948:	687a      	ldr	r2, [r7, #4]
    294a:	4413      	add	r3, r2
    294c:	781b      	ldrb	r3, [r3, #0]
    294e:	2b3a      	cmp	r3, #58	; 0x3a
    2950:	d001      	beq.n	2956 <str_to_time+0x60>
    2952:	2300      	movs	r3, #0
    2954:	e06d      	b.n	2a32 <str_to_time+0x13c>
    2956:	7afb      	ldrb	r3, [r7, #11]
    2958:	f003 031f 	and.w	r3, r3, #31
    295c:	b2d9      	uxtb	r1, r3
    295e:	683a      	ldr	r2, [r7, #0]
    2960:	6813      	ldr	r3, [r2, #0]
    2962:	f361 3310 	bfi	r3, r1, #12, #5
    2966:	6013      	str	r3, [r2, #0]
    2968:	68fb      	ldr	r3, [r7, #12]
    296a:	3301      	adds	r3, #1
    296c:	60fb      	str	r3, [r7, #12]
    296e:	2300      	movs	r3, #0
    2970:	72fb      	strb	r3, [r7, #11]
    2972:	e010      	b.n	2996 <str_to_time+0xa0>
    2974:	7afb      	ldrb	r3, [r7, #11]
    2976:	461a      	mov	r2, r3
    2978:	0092      	lsls	r2, r2, #2
    297a:	4413      	add	r3, r2
    297c:	005b      	lsls	r3, r3, #1
    297e:	b2da      	uxtb	r2, r3
    2980:	68fb      	ldr	r3, [r7, #12]
    2982:	1c59      	adds	r1, r3, #1
    2984:	60f9      	str	r1, [r7, #12]
    2986:	4619      	mov	r1, r3
    2988:	687b      	ldr	r3, [r7, #4]
    298a:	440b      	add	r3, r1
    298c:	781b      	ldrb	r3, [r3, #0]
    298e:	4413      	add	r3, r2
    2990:	b2db      	uxtb	r3, r3
    2992:	3b30      	subs	r3, #48	; 0x30
    2994:	72fb      	strb	r3, [r7, #11]
    2996:	68fb      	ldr	r3, [r7, #12]
    2998:	687a      	ldr	r2, [r7, #4]
    299a:	4413      	add	r3, r2
    299c:	781b      	ldrb	r3, [r3, #0]
    299e:	4618      	mov	r0, r3
    29a0:	f7fe fd75 	bl	148e <digit>
    29a4:	4603      	mov	r3, r0
    29a6:	2b00      	cmp	r3, #0
    29a8:	d1e4      	bne.n	2974 <str_to_time+0x7e>
    29aa:	7afb      	ldrb	r3, [r7, #11]
    29ac:	2b3b      	cmp	r3, #59	; 0x3b
    29ae:	d805      	bhi.n	29bc <str_to_time+0xc6>
    29b0:	68fb      	ldr	r3, [r7, #12]
    29b2:	687a      	ldr	r2, [r7, #4]
    29b4:	4413      	add	r3, r2
    29b6:	781b      	ldrb	r3, [r3, #0]
    29b8:	2b3a      	cmp	r3, #58	; 0x3a
    29ba:	d001      	beq.n	29c0 <str_to_time+0xca>
    29bc:	2300      	movs	r3, #0
    29be:	e038      	b.n	2a32 <str_to_time+0x13c>
    29c0:	7afb      	ldrb	r3, [r7, #11]
    29c2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    29c6:	b2d9      	uxtb	r1, r3
    29c8:	683a      	ldr	r2, [r7, #0]
    29ca:	8813      	ldrh	r3, [r2, #0]
    29cc:	f361 138b 	bfi	r3, r1, #6, #6
    29d0:	8013      	strh	r3, [r2, #0]
    29d2:	2300      	movs	r3, #0
    29d4:	72fb      	strb	r3, [r7, #11]
    29d6:	68fb      	ldr	r3, [r7, #12]
    29d8:	3301      	adds	r3, #1
    29da:	60fb      	str	r3, [r7, #12]
    29dc:	e010      	b.n	2a00 <str_to_time+0x10a>
    29de:	7afb      	ldrb	r3, [r7, #11]
    29e0:	461a      	mov	r2, r3
    29e2:	0092      	lsls	r2, r2, #2
    29e4:	4413      	add	r3, r2
    29e6:	005b      	lsls	r3, r3, #1
    29e8:	b2da      	uxtb	r2, r3
    29ea:	68fb      	ldr	r3, [r7, #12]
    29ec:	1c59      	adds	r1, r3, #1
    29ee:	60f9      	str	r1, [r7, #12]
    29f0:	4619      	mov	r1, r3
    29f2:	687b      	ldr	r3, [r7, #4]
    29f4:	440b      	add	r3, r1
    29f6:	781b      	ldrb	r3, [r3, #0]
    29f8:	4413      	add	r3, r2
    29fa:	b2db      	uxtb	r3, r3
    29fc:	3b30      	subs	r3, #48	; 0x30
    29fe:	72fb      	strb	r3, [r7, #11]
    2a00:	68fb      	ldr	r3, [r7, #12]
    2a02:	687a      	ldr	r2, [r7, #4]
    2a04:	4413      	add	r3, r2
    2a06:	781b      	ldrb	r3, [r3, #0]
    2a08:	4618      	mov	r0, r3
    2a0a:	f7fe fd40 	bl	148e <digit>
    2a0e:	4603      	mov	r3, r0
    2a10:	2b00      	cmp	r3, #0
    2a12:	d1e4      	bne.n	29de <str_to_time+0xe8>
    2a14:	7afb      	ldrb	r3, [r7, #11]
    2a16:	2b3b      	cmp	r3, #59	; 0x3b
    2a18:	d901      	bls.n	2a1e <str_to_time+0x128>
    2a1a:	2300      	movs	r3, #0
    2a1c:	e009      	b.n	2a32 <str_to_time+0x13c>
    2a1e:	7afb      	ldrb	r3, [r7, #11]
    2a20:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2a24:	b2d9      	uxtb	r1, r3
    2a26:	683a      	ldr	r2, [r7, #0]
    2a28:	7813      	ldrb	r3, [r2, #0]
    2a2a:	f361 0305 	bfi	r3, r1, #0, #6
    2a2e:	7013      	strb	r3, [r2, #0]
    2a30:	2301      	movs	r3, #1
    2a32:	4618      	mov	r0, r3
    2a34:	3710      	adds	r7, #16
    2a36:	46bd      	mov	sp, r7
    2a38:	bd80      	pop	{r7, pc}

00002a3a <date_str>:
    2a3a:	b480      	push	{r7}
    2a3c:	b085      	sub	sp, #20
    2a3e:	af00      	add	r7, sp, #0
    2a40:	6078      	str	r0, [r7, #4]
    2a42:	6039      	str	r1, [r7, #0]
    2a44:	2300      	movs	r3, #0
    2a46:	60fb      	str	r3, [r7, #12]
    2a48:	687b      	ldr	r3, [r7, #4]
    2a4a:	891b      	ldrh	r3, [r3, #8]
    2a4c:	60bb      	str	r3, [r7, #8]
    2a4e:	68fb      	ldr	r3, [r7, #12]
    2a50:	1c5a      	adds	r2, r3, #1
    2a52:	60fa      	str	r2, [r7, #12]
    2a54:	461a      	mov	r2, r3
    2a56:	683b      	ldr	r3, [r7, #0]
    2a58:	4413      	add	r3, r2
    2a5a:	68ba      	ldr	r2, [r7, #8]
    2a5c:	495d      	ldr	r1, [pc, #372]	; (2bd4 <date_str+0x19a>)
    2a5e:	fba1 1202 	umull	r1, r2, r1, r2
    2a62:	0992      	lsrs	r2, r2, #6
    2a64:	b2d2      	uxtb	r2, r2
    2a66:	3230      	adds	r2, #48	; 0x30
    2a68:	b2d2      	uxtb	r2, r2
    2a6a:	701a      	strb	r2, [r3, #0]
    2a6c:	68bb      	ldr	r3, [r7, #8]
    2a6e:	4a59      	ldr	r2, [pc, #356]	; (2bd4 <date_str+0x19a>)
    2a70:	fba2 1203 	umull	r1, r2, r2, r3
    2a74:	0992      	lsrs	r2, r2, #6
    2a76:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    2a7a:	fb01 f202 	mul.w	r2, r1, r2
    2a7e:	1a9b      	subs	r3, r3, r2
    2a80:	60bb      	str	r3, [r7, #8]
    2a82:	68fb      	ldr	r3, [r7, #12]
    2a84:	1c5a      	adds	r2, r3, #1
    2a86:	60fa      	str	r2, [r7, #12]
    2a88:	461a      	mov	r2, r3
    2a8a:	683b      	ldr	r3, [r7, #0]
    2a8c:	4413      	add	r3, r2
    2a8e:	68ba      	ldr	r2, [r7, #8]
    2a90:	4951      	ldr	r1, [pc, #324]	; (2bd8 <date_str+0x19e>)
    2a92:	fba1 1202 	umull	r1, r2, r1, r2
    2a96:	0952      	lsrs	r2, r2, #5
    2a98:	b2d2      	uxtb	r2, r2
    2a9a:	3230      	adds	r2, #48	; 0x30
    2a9c:	b2d2      	uxtb	r2, r2
    2a9e:	701a      	strb	r2, [r3, #0]
    2aa0:	68bb      	ldr	r3, [r7, #8]
    2aa2:	4a4d      	ldr	r2, [pc, #308]	; (2bd8 <date_str+0x19e>)
    2aa4:	fba2 1203 	umull	r1, r2, r2, r3
    2aa8:	0952      	lsrs	r2, r2, #5
    2aaa:	2164      	movs	r1, #100	; 0x64
    2aac:	fb01 f202 	mul.w	r2, r1, r2
    2ab0:	1a9b      	subs	r3, r3, r2
    2ab2:	60bb      	str	r3, [r7, #8]
    2ab4:	68fb      	ldr	r3, [r7, #12]
    2ab6:	1c5a      	adds	r2, r3, #1
    2ab8:	60fa      	str	r2, [r7, #12]
    2aba:	461a      	mov	r2, r3
    2abc:	683b      	ldr	r3, [r7, #0]
    2abe:	4413      	add	r3, r2
    2ac0:	68ba      	ldr	r2, [r7, #8]
    2ac2:	4946      	ldr	r1, [pc, #280]	; (2bdc <date_str+0x1a2>)
    2ac4:	fba1 1202 	umull	r1, r2, r1, r2
    2ac8:	08d2      	lsrs	r2, r2, #3
    2aca:	b2d2      	uxtb	r2, r2
    2acc:	3230      	adds	r2, #48	; 0x30
    2ace:	b2d2      	uxtb	r2, r2
    2ad0:	701a      	strb	r2, [r3, #0]
    2ad2:	68fb      	ldr	r3, [r7, #12]
    2ad4:	1c5a      	adds	r2, r3, #1
    2ad6:	60fa      	str	r2, [r7, #12]
    2ad8:	461a      	mov	r2, r3
    2ada:	683b      	ldr	r3, [r7, #0]
    2adc:	1898      	adds	r0, r3, r2
    2ade:	68b9      	ldr	r1, [r7, #8]
    2ae0:	4b3e      	ldr	r3, [pc, #248]	; (2bdc <date_str+0x1a2>)
    2ae2:	fba3 2301 	umull	r2, r3, r3, r1
    2ae6:	08da      	lsrs	r2, r3, #3
    2ae8:	4613      	mov	r3, r2
    2aea:	009b      	lsls	r3, r3, #2
    2aec:	4413      	add	r3, r2
    2aee:	005b      	lsls	r3, r3, #1
    2af0:	1aca      	subs	r2, r1, r3
    2af2:	b2d3      	uxtb	r3, r2
    2af4:	3330      	adds	r3, #48	; 0x30
    2af6:	b2db      	uxtb	r3, r3
    2af8:	7003      	strb	r3, [r0, #0]
    2afa:	68fb      	ldr	r3, [r7, #12]
    2afc:	1c5a      	adds	r2, r3, #1
    2afe:	60fa      	str	r2, [r7, #12]
    2b00:	461a      	mov	r2, r3
    2b02:	683b      	ldr	r3, [r7, #0]
    2b04:	4413      	add	r3, r2
    2b06:	222f      	movs	r2, #47	; 0x2f
    2b08:	701a      	strb	r2, [r3, #0]
    2b0a:	687b      	ldr	r3, [r7, #4]
    2b0c:	885b      	ldrh	r3, [r3, #2]
    2b0e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2b12:	b2db      	uxtb	r3, r3
    2b14:	60bb      	str	r3, [r7, #8]
    2b16:	68fb      	ldr	r3, [r7, #12]
    2b18:	1c5a      	adds	r2, r3, #1
    2b1a:	60fa      	str	r2, [r7, #12]
    2b1c:	461a      	mov	r2, r3
    2b1e:	683b      	ldr	r3, [r7, #0]
    2b20:	4413      	add	r3, r2
    2b22:	68ba      	ldr	r2, [r7, #8]
    2b24:	492d      	ldr	r1, [pc, #180]	; (2bdc <date_str+0x1a2>)
    2b26:	fba1 1202 	umull	r1, r2, r1, r2
    2b2a:	08d2      	lsrs	r2, r2, #3
    2b2c:	b2d2      	uxtb	r2, r2
    2b2e:	3230      	adds	r2, #48	; 0x30
    2b30:	b2d2      	uxtb	r2, r2
    2b32:	701a      	strb	r2, [r3, #0]
    2b34:	68fb      	ldr	r3, [r7, #12]
    2b36:	1c5a      	adds	r2, r3, #1
    2b38:	60fa      	str	r2, [r7, #12]
    2b3a:	461a      	mov	r2, r3
    2b3c:	683b      	ldr	r3, [r7, #0]
    2b3e:	1898      	adds	r0, r3, r2
    2b40:	68b9      	ldr	r1, [r7, #8]
    2b42:	4b26      	ldr	r3, [pc, #152]	; (2bdc <date_str+0x1a2>)
    2b44:	fba3 2301 	umull	r2, r3, r3, r1
    2b48:	08da      	lsrs	r2, r3, #3
    2b4a:	4613      	mov	r3, r2
    2b4c:	009b      	lsls	r3, r3, #2
    2b4e:	4413      	add	r3, r2
    2b50:	005b      	lsls	r3, r3, #1
    2b52:	1aca      	subs	r2, r1, r3
    2b54:	b2d3      	uxtb	r3, r2
    2b56:	3330      	adds	r3, #48	; 0x30
    2b58:	b2db      	uxtb	r3, r3
    2b5a:	7003      	strb	r3, [r0, #0]
    2b5c:	68fb      	ldr	r3, [r7, #12]
    2b5e:	1c5a      	adds	r2, r3, #1
    2b60:	60fa      	str	r2, [r7, #12]
    2b62:	461a      	mov	r2, r3
    2b64:	683b      	ldr	r3, [r7, #0]
    2b66:	4413      	add	r3, r2
    2b68:	222f      	movs	r2, #47	; 0x2f
    2b6a:	701a      	strb	r2, [r3, #0]
    2b6c:	687b      	ldr	r3, [r7, #4]
    2b6e:	789b      	ldrb	r3, [r3, #2]
    2b70:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2b74:	b2db      	uxtb	r3, r3
    2b76:	60bb      	str	r3, [r7, #8]
    2b78:	68fb      	ldr	r3, [r7, #12]
    2b7a:	1c5a      	adds	r2, r3, #1
    2b7c:	60fa      	str	r2, [r7, #12]
    2b7e:	461a      	mov	r2, r3
    2b80:	683b      	ldr	r3, [r7, #0]
    2b82:	4413      	add	r3, r2
    2b84:	68ba      	ldr	r2, [r7, #8]
    2b86:	4915      	ldr	r1, [pc, #84]	; (2bdc <date_str+0x1a2>)
    2b88:	fba1 1202 	umull	r1, r2, r1, r2
    2b8c:	08d2      	lsrs	r2, r2, #3
    2b8e:	b2d2      	uxtb	r2, r2
    2b90:	3230      	adds	r2, #48	; 0x30
    2b92:	b2d2      	uxtb	r2, r2
    2b94:	701a      	strb	r2, [r3, #0]
    2b96:	68fb      	ldr	r3, [r7, #12]
    2b98:	1c5a      	adds	r2, r3, #1
    2b9a:	60fa      	str	r2, [r7, #12]
    2b9c:	461a      	mov	r2, r3
    2b9e:	683b      	ldr	r3, [r7, #0]
    2ba0:	1898      	adds	r0, r3, r2
    2ba2:	68b9      	ldr	r1, [r7, #8]
    2ba4:	4b0d      	ldr	r3, [pc, #52]	; (2bdc <date_str+0x1a2>)
    2ba6:	fba3 2301 	umull	r2, r3, r3, r1
    2baa:	08da      	lsrs	r2, r3, #3
    2bac:	4613      	mov	r3, r2
    2bae:	009b      	lsls	r3, r3, #2
    2bb0:	4413      	add	r3, r2
    2bb2:	005b      	lsls	r3, r3, #1
    2bb4:	1aca      	subs	r2, r1, r3
    2bb6:	b2d3      	uxtb	r3, r2
    2bb8:	3330      	adds	r3, #48	; 0x30
    2bba:	b2db      	uxtb	r3, r3
    2bbc:	7003      	strb	r3, [r0, #0]
    2bbe:	68fb      	ldr	r3, [r7, #12]
    2bc0:	683a      	ldr	r2, [r7, #0]
    2bc2:	4413      	add	r3, r2
    2bc4:	2200      	movs	r2, #0
    2bc6:	701a      	strb	r2, [r3, #0]
    2bc8:	bf00      	nop
    2bca:	3714      	adds	r7, #20
    2bcc:	46bd      	mov	sp, r7
    2bce:	bc80      	pop	{r7}
    2bd0:	4770      	bx	lr
    2bd2:	bf00      	nop
    2bd4:	10624dd3 	.word	0x10624dd3
    2bd8:	51eb851f 	.word	0x51eb851f
    2bdc:	cccccccd 	.word	0xcccccccd

00002be0 <time_str>:
    2be0:	b480      	push	{r7}
    2be2:	b085      	sub	sp, #20
    2be4:	af00      	add	r7, sp, #0
    2be6:	6078      	str	r0, [r7, #4]
    2be8:	6039      	str	r1, [r7, #0]
    2bea:	2300      	movs	r3, #0
    2bec:	60fb      	str	r3, [r7, #12]
    2bee:	687b      	ldr	r3, [r7, #4]
    2bf0:	681b      	ldr	r3, [r3, #0]
    2bf2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2bf6:	b2db      	uxtb	r3, r3
    2bf8:	60bb      	str	r3, [r7, #8]
    2bfa:	68fb      	ldr	r3, [r7, #12]
    2bfc:	1c5a      	adds	r2, r3, #1
    2bfe:	60fa      	str	r2, [r7, #12]
    2c00:	461a      	mov	r2, r3
    2c02:	683b      	ldr	r3, [r7, #0]
    2c04:	4413      	add	r3, r2
    2c06:	68ba      	ldr	r2, [r7, #8]
    2c08:	4943      	ldr	r1, [pc, #268]	; (2d18 <time_str+0x138>)
    2c0a:	fba1 1202 	umull	r1, r2, r1, r2
    2c0e:	08d2      	lsrs	r2, r2, #3
    2c10:	b2d2      	uxtb	r2, r2
    2c12:	3230      	adds	r2, #48	; 0x30
    2c14:	b2d2      	uxtb	r2, r2
    2c16:	701a      	strb	r2, [r3, #0]
    2c18:	68fb      	ldr	r3, [r7, #12]
    2c1a:	1c5a      	adds	r2, r3, #1
    2c1c:	60fa      	str	r2, [r7, #12]
    2c1e:	461a      	mov	r2, r3
    2c20:	683b      	ldr	r3, [r7, #0]
    2c22:	1898      	adds	r0, r3, r2
    2c24:	68b9      	ldr	r1, [r7, #8]
    2c26:	4b3c      	ldr	r3, [pc, #240]	; (2d18 <time_str+0x138>)
    2c28:	fba3 2301 	umull	r2, r3, r3, r1
    2c2c:	08da      	lsrs	r2, r3, #3
    2c2e:	4613      	mov	r3, r2
    2c30:	009b      	lsls	r3, r3, #2
    2c32:	4413      	add	r3, r2
    2c34:	005b      	lsls	r3, r3, #1
    2c36:	1aca      	subs	r2, r1, r3
    2c38:	b2d3      	uxtb	r3, r2
    2c3a:	3330      	adds	r3, #48	; 0x30
    2c3c:	b2db      	uxtb	r3, r3
    2c3e:	7003      	strb	r3, [r0, #0]
    2c40:	68fb      	ldr	r3, [r7, #12]
    2c42:	1c5a      	adds	r2, r3, #1
    2c44:	60fa      	str	r2, [r7, #12]
    2c46:	461a      	mov	r2, r3
    2c48:	683b      	ldr	r3, [r7, #0]
    2c4a:	4413      	add	r3, r2
    2c4c:	223a      	movs	r2, #58	; 0x3a
    2c4e:	701a      	strb	r2, [r3, #0]
    2c50:	687b      	ldr	r3, [r7, #4]
    2c52:	881b      	ldrh	r3, [r3, #0]
    2c54:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2c58:	b2db      	uxtb	r3, r3
    2c5a:	60bb      	str	r3, [r7, #8]
    2c5c:	68fb      	ldr	r3, [r7, #12]
    2c5e:	1c5a      	adds	r2, r3, #1
    2c60:	60fa      	str	r2, [r7, #12]
    2c62:	461a      	mov	r2, r3
    2c64:	683b      	ldr	r3, [r7, #0]
    2c66:	4413      	add	r3, r2
    2c68:	68ba      	ldr	r2, [r7, #8]
    2c6a:	492b      	ldr	r1, [pc, #172]	; (2d18 <time_str+0x138>)
    2c6c:	fba1 1202 	umull	r1, r2, r1, r2
    2c70:	08d2      	lsrs	r2, r2, #3
    2c72:	b2d2      	uxtb	r2, r2
    2c74:	3230      	adds	r2, #48	; 0x30
    2c76:	b2d2      	uxtb	r2, r2
    2c78:	701a      	strb	r2, [r3, #0]
    2c7a:	68fb      	ldr	r3, [r7, #12]
    2c7c:	1c5a      	adds	r2, r3, #1
    2c7e:	60fa      	str	r2, [r7, #12]
    2c80:	461a      	mov	r2, r3
    2c82:	683b      	ldr	r3, [r7, #0]
    2c84:	1898      	adds	r0, r3, r2
    2c86:	68b9      	ldr	r1, [r7, #8]
    2c88:	4b23      	ldr	r3, [pc, #140]	; (2d18 <time_str+0x138>)
    2c8a:	fba3 2301 	umull	r2, r3, r3, r1
    2c8e:	08da      	lsrs	r2, r3, #3
    2c90:	4613      	mov	r3, r2
    2c92:	009b      	lsls	r3, r3, #2
    2c94:	4413      	add	r3, r2
    2c96:	005b      	lsls	r3, r3, #1
    2c98:	1aca      	subs	r2, r1, r3
    2c9a:	b2d3      	uxtb	r3, r2
    2c9c:	3330      	adds	r3, #48	; 0x30
    2c9e:	b2db      	uxtb	r3, r3
    2ca0:	7003      	strb	r3, [r0, #0]
    2ca2:	68fb      	ldr	r3, [r7, #12]
    2ca4:	1c5a      	adds	r2, r3, #1
    2ca6:	60fa      	str	r2, [r7, #12]
    2ca8:	461a      	mov	r2, r3
    2caa:	683b      	ldr	r3, [r7, #0]
    2cac:	4413      	add	r3, r2
    2cae:	223a      	movs	r2, #58	; 0x3a
    2cb0:	701a      	strb	r2, [r3, #0]
    2cb2:	687b      	ldr	r3, [r7, #4]
    2cb4:	781b      	ldrb	r3, [r3, #0]
    2cb6:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2cba:	b2db      	uxtb	r3, r3
    2cbc:	60bb      	str	r3, [r7, #8]
    2cbe:	68fb      	ldr	r3, [r7, #12]
    2cc0:	1c5a      	adds	r2, r3, #1
    2cc2:	60fa      	str	r2, [r7, #12]
    2cc4:	461a      	mov	r2, r3
    2cc6:	683b      	ldr	r3, [r7, #0]
    2cc8:	4413      	add	r3, r2
    2cca:	68ba      	ldr	r2, [r7, #8]
    2ccc:	4912      	ldr	r1, [pc, #72]	; (2d18 <time_str+0x138>)
    2cce:	fba1 1202 	umull	r1, r2, r1, r2
    2cd2:	08d2      	lsrs	r2, r2, #3
    2cd4:	b2d2      	uxtb	r2, r2
    2cd6:	3230      	adds	r2, #48	; 0x30
    2cd8:	b2d2      	uxtb	r2, r2
    2cda:	701a      	strb	r2, [r3, #0]
    2cdc:	68fb      	ldr	r3, [r7, #12]
    2cde:	1c5a      	adds	r2, r3, #1
    2ce0:	60fa      	str	r2, [r7, #12]
    2ce2:	461a      	mov	r2, r3
    2ce4:	683b      	ldr	r3, [r7, #0]
    2ce6:	1898      	adds	r0, r3, r2
    2ce8:	68b9      	ldr	r1, [r7, #8]
    2cea:	4b0b      	ldr	r3, [pc, #44]	; (2d18 <time_str+0x138>)
    2cec:	fba3 2301 	umull	r2, r3, r3, r1
    2cf0:	08da      	lsrs	r2, r3, #3
    2cf2:	4613      	mov	r3, r2
    2cf4:	009b      	lsls	r3, r3, #2
    2cf6:	4413      	add	r3, r2
    2cf8:	005b      	lsls	r3, r3, #1
    2cfa:	1aca      	subs	r2, r1, r3
    2cfc:	b2d3      	uxtb	r3, r2
    2cfe:	3330      	adds	r3, #48	; 0x30
    2d00:	b2db      	uxtb	r3, r3
    2d02:	7003      	strb	r3, [r0, #0]
    2d04:	68fb      	ldr	r3, [r7, #12]
    2d06:	683a      	ldr	r2, [r7, #0]
    2d08:	4413      	add	r3, r2
    2d0a:	2200      	movs	r2, #0
    2d0c:	701a      	strb	r2, [r3, #0]
    2d0e:	bf00      	nop
    2d10:	3714      	adds	r7, #20
    2d12:	46bd      	mov	sp, r7
    2d14:	bc80      	pop	{r7}
    2d16:	4770      	bx	lr
    2d18:	cccccccd 	.word	0xcccccccd

00002d1c <get_fattime>:
    2d1c:	b580      	push	{r7, lr}
    2d1e:	b084      	sub	sp, #16
    2d20:	af00      	add	r7, sp, #0
    2d22:	463b      	mov	r3, r7
    2d24:	4618      	mov	r0, r3
    2d26:	f7ff fa69 	bl	21fc <get_date_time>
    2d2a:	783b      	ldrb	r3, [r7, #0]
    2d2c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2d30:	b2db      	uxtb	r3, r3
    2d32:	0fda      	lsrs	r2, r3, #31
    2d34:	4413      	add	r3, r2
    2d36:	105b      	asrs	r3, r3, #1
    2d38:	b2db      	uxtb	r3, r3
    2d3a:	f003 031f 	and.w	r3, r3, #31
    2d3e:	b2da      	uxtb	r2, r3
    2d40:	7b3b      	ldrb	r3, [r7, #12]
    2d42:	f362 0304 	bfi	r3, r2, #0, #5
    2d46:	733b      	strb	r3, [r7, #12]
    2d48:	883b      	ldrh	r3, [r7, #0]
    2d4a:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2d4e:	b2da      	uxtb	r2, r3
    2d50:	89bb      	ldrh	r3, [r7, #12]
    2d52:	f362 134a 	bfi	r3, r2, #5, #6
    2d56:	81bb      	strh	r3, [r7, #12]
    2d58:	683b      	ldr	r3, [r7, #0]
    2d5a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2d5e:	b2da      	uxtb	r2, r3
    2d60:	7b7b      	ldrb	r3, [r7, #13]
    2d62:	f362 03c7 	bfi	r3, r2, #3, #5
    2d66:	737b      	strb	r3, [r7, #13]
    2d68:	78bb      	ldrb	r3, [r7, #2]
    2d6a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2d6e:	b2da      	uxtb	r2, r3
    2d70:	7bbb      	ldrb	r3, [r7, #14]
    2d72:	f362 0304 	bfi	r3, r2, #0, #5
    2d76:	73bb      	strb	r3, [r7, #14]
    2d78:	887b      	ldrh	r3, [r7, #2]
    2d7a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2d7e:	b2da      	uxtb	r2, r3
    2d80:	89fb      	ldrh	r3, [r7, #14]
    2d82:	f362 1348 	bfi	r3, r2, #5, #4
    2d86:	81fb      	strh	r3, [r7, #14]
    2d88:	893b      	ldrh	r3, [r7, #8]
    2d8a:	b2db      	uxtb	r3, r3
    2d8c:	3344      	adds	r3, #68	; 0x44
    2d8e:	b2db      	uxtb	r3, r3
    2d90:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2d94:	b2da      	uxtb	r2, r3
    2d96:	7bfb      	ldrb	r3, [r7, #15]
    2d98:	f362 0347 	bfi	r3, r2, #1, #7
    2d9c:	73fb      	strb	r3, [r7, #15]
    2d9e:	68fb      	ldr	r3, [r7, #12]
    2da0:	4618      	mov	r0, r3
    2da2:	3710      	adds	r7, #16
    2da4:	46bd      	mov	sp, r7
    2da6:	bd80      	pop	{r7, pc}

00002da8 <RTC_handler>:
    2da8:	b480      	push	{r7}
    2daa:	b083      	sub	sp, #12
    2dac:	af00      	add	r7, sp, #0
    2dae:	4b0a      	ldr	r3, [pc, #40]	; (2dd8 <RTC_handler+0x30>)
    2db0:	685b      	ldr	r3, [r3, #4]
    2db2:	f003 0301 	and.w	r3, r3, #1
    2db6:	2b00      	cmp	r3, #0
    2db8:	d001      	beq.n	2dbe <RTC_handler+0x16>
    2dba:	4b07      	ldr	r3, [pc, #28]	; (2dd8 <RTC_handler+0x30>)
    2dbc:	685b      	ldr	r3, [r3, #4]
    2dbe:	4b06      	ldr	r3, [pc, #24]	; (2dd8 <RTC_handler+0x30>)
    2dc0:	685b      	ldr	r3, [r3, #4]
    2dc2:	f003 0302 	and.w	r3, r3, #2
    2dc6:	2b00      	cmp	r3, #0
    2dc8:	d001      	beq.n	2dce <RTC_handler+0x26>
    2dca:	4b03      	ldr	r3, [pc, #12]	; (2dd8 <RTC_handler+0x30>)
    2dcc:	685b      	ldr	r3, [r3, #4]
    2dce:	bf00      	nop
    2dd0:	370c      	adds	r7, #12
    2dd2:	46bd      	mov	sp, r7
    2dd4:	bc80      	pop	{r7}
    2dd6:	4770      	bx	lr
    2dd8:	40002800 	.word	0x40002800

00002ddc <spi_baudrate>:
    2ddc:	b480      	push	{r7}
    2dde:	b083      	sub	sp, #12
    2de0:	af00      	add	r7, sp, #0
    2de2:	6078      	str	r0, [r7, #4]
    2de4:	6039      	str	r1, [r7, #0]
    2de6:	687b      	ldr	r3, [r7, #4]
    2de8:	681b      	ldr	r3, [r3, #0]
    2dea:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    2dee:	687b      	ldr	r3, [r7, #4]
    2df0:	601a      	str	r2, [r3, #0]
    2df2:	687b      	ldr	r3, [r7, #4]
    2df4:	681a      	ldr	r2, [r3, #0]
    2df6:	683b      	ldr	r3, [r7, #0]
    2df8:	00db      	lsls	r3, r3, #3
    2dfa:	431a      	orrs	r2, r3
    2dfc:	687b      	ldr	r3, [r7, #4]
    2dfe:	601a      	str	r2, [r3, #0]
    2e00:	bf00      	nop
    2e02:	370c      	adds	r7, #12
    2e04:	46bd      	mov	sp, r7
    2e06:	bc80      	pop	{r7}
    2e08:	4770      	bx	lr

00002e0a <spi_config_port>:
    2e0a:	b580      	push	{r7, lr}
    2e0c:	b082      	sub	sp, #8
    2e0e:	af00      	add	r7, sp, #0
    2e10:	6078      	str	r0, [r7, #4]
    2e12:	6039      	str	r1, [r7, #0]
    2e14:	4a33      	ldr	r2, [pc, #204]	; (2ee4 <spi_config_port+0xda>)
    2e16:	4b33      	ldr	r3, [pc, #204]	; (2ee4 <spi_config_port+0xda>)
    2e18:	699b      	ldr	r3, [r3, #24]
    2e1a:	f043 0301 	orr.w	r3, r3, #1
    2e1e:	6193      	str	r3, [r2, #24]
    2e20:	687b      	ldr	r3, [r7, #4]
    2e22:	4a31      	ldr	r2, [pc, #196]	; (2ee8 <spi_config_port+0xde>)
    2e24:	4293      	cmp	r3, r2
    2e26:	d13e      	bne.n	2ea6 <spi_config_port+0x9c>
    2e28:	683b      	ldr	r3, [r7, #0]
    2e2a:	2b00      	cmp	r3, #0
    2e2c:	d11a      	bne.n	2e64 <spi_config_port+0x5a>
    2e2e:	4a2d      	ldr	r2, [pc, #180]	; (2ee4 <spi_config_port+0xda>)
    2e30:	4b2c      	ldr	r3, [pc, #176]	; (2ee4 <spi_config_port+0xda>)
    2e32:	699b      	ldr	r3, [r3, #24]
    2e34:	f043 0304 	orr.w	r3, r3, #4
    2e38:	6193      	str	r3, [r2, #24]
    2e3a:	2203      	movs	r2, #3
    2e3c:	2104      	movs	r1, #4
    2e3e:	482b      	ldr	r0, [pc, #172]	; (2eec <spi_config_port+0xe2>)
    2e40:	f7fe fd2d 	bl	189e <config_pin>
    2e44:	220b      	movs	r2, #11
    2e46:	2105      	movs	r1, #5
    2e48:	4828      	ldr	r0, [pc, #160]	; (2eec <spi_config_port+0xe2>)
    2e4a:	f7fe fd28 	bl	189e <config_pin>
    2e4e:	2204      	movs	r2, #4
    2e50:	2106      	movs	r1, #6
    2e52:	4826      	ldr	r0, [pc, #152]	; (2eec <spi_config_port+0xe2>)
    2e54:	f7fe fd23 	bl	189e <config_pin>
    2e58:	220b      	movs	r2, #11
    2e5a:	2107      	movs	r1, #7
    2e5c:	4823      	ldr	r0, [pc, #140]	; (2eec <spi_config_port+0xe2>)
    2e5e:	f7fe fd1e 	bl	189e <config_pin>
    2e62:	e03a      	b.n	2eda <spi_config_port+0xd0>
    2e64:	4a1f      	ldr	r2, [pc, #124]	; (2ee4 <spi_config_port+0xda>)
    2e66:	4b1f      	ldr	r3, [pc, #124]	; (2ee4 <spi_config_port+0xda>)
    2e68:	699b      	ldr	r3, [r3, #24]
    2e6a:	f043 030d 	orr.w	r3, r3, #13
    2e6e:	6193      	str	r3, [r2, #24]
    2e70:	4a1f      	ldr	r2, [pc, #124]	; (2ef0 <spi_config_port+0xe6>)
    2e72:	4b1f      	ldr	r3, [pc, #124]	; (2ef0 <spi_config_port+0xe6>)
    2e74:	685b      	ldr	r3, [r3, #4]
    2e76:	f043 0301 	orr.w	r3, r3, #1
    2e7a:	6053      	str	r3, [r2, #4]
    2e7c:	2203      	movs	r2, #3
    2e7e:	210f      	movs	r1, #15
    2e80:	481a      	ldr	r0, [pc, #104]	; (2eec <spi_config_port+0xe2>)
    2e82:	f7fe fd0c 	bl	189e <config_pin>
    2e86:	220b      	movs	r2, #11
    2e88:	2103      	movs	r1, #3
    2e8a:	481a      	ldr	r0, [pc, #104]	; (2ef4 <spi_config_port+0xea>)
    2e8c:	f7fe fd07 	bl	189e <config_pin>
    2e90:	2204      	movs	r2, #4
    2e92:	2104      	movs	r1, #4
    2e94:	4817      	ldr	r0, [pc, #92]	; (2ef4 <spi_config_port+0xea>)
    2e96:	f7fe fd02 	bl	189e <config_pin>
    2e9a:	220b      	movs	r2, #11
    2e9c:	2105      	movs	r1, #5
    2e9e:	4815      	ldr	r0, [pc, #84]	; (2ef4 <spi_config_port+0xea>)
    2ea0:	f7fe fcfd 	bl	189e <config_pin>
    2ea4:	e019      	b.n	2eda <spi_config_port+0xd0>
    2ea6:	4a0f      	ldr	r2, [pc, #60]	; (2ee4 <spi_config_port+0xda>)
    2ea8:	4b0e      	ldr	r3, [pc, #56]	; (2ee4 <spi_config_port+0xda>)
    2eaa:	699b      	ldr	r3, [r3, #24]
    2eac:	f043 0308 	orr.w	r3, r3, #8
    2eb0:	6193      	str	r3, [r2, #24]
    2eb2:	2203      	movs	r2, #3
    2eb4:	2102      	movs	r1, #2
    2eb6:	480f      	ldr	r0, [pc, #60]	; (2ef4 <spi_config_port+0xea>)
    2eb8:	f7fe fcf1 	bl	189e <config_pin>
    2ebc:	220b      	movs	r2, #11
    2ebe:	210d      	movs	r1, #13
    2ec0:	480c      	ldr	r0, [pc, #48]	; (2ef4 <spi_config_port+0xea>)
    2ec2:	f7fe fcec 	bl	189e <config_pin>
    2ec6:	2204      	movs	r2, #4
    2ec8:	210e      	movs	r1, #14
    2eca:	480a      	ldr	r0, [pc, #40]	; (2ef4 <spi_config_port+0xea>)
    2ecc:	f7fe fce7 	bl	189e <config_pin>
    2ed0:	220b      	movs	r2, #11
    2ed2:	210f      	movs	r1, #15
    2ed4:	4807      	ldr	r0, [pc, #28]	; (2ef4 <spi_config_port+0xea>)
    2ed6:	f7fe fce2 	bl	189e <config_pin>
    2eda:	bf00      	nop
    2edc:	3708      	adds	r7, #8
    2ede:	46bd      	mov	sp, r7
    2ee0:	bd80      	pop	{r7, pc}
    2ee2:	bf00      	nop
    2ee4:	40021000 	.word	0x40021000
    2ee8:	40013000 	.word	0x40013000
    2eec:	40010800 	.word	0x40010800
    2ef0:	40010000 	.word	0x40010000
    2ef4:	40010c00 	.word	0x40010c00

00002ef8 <spi_init>:
    2ef8:	b580      	push	{r7, lr}
    2efa:	b084      	sub	sp, #16
    2efc:	af00      	add	r7, sp, #0
    2efe:	60f8      	str	r0, [r7, #12]
    2f00:	60b9      	str	r1, [r7, #8]
    2f02:	607a      	str	r2, [r7, #4]
    2f04:	603b      	str	r3, [r7, #0]
    2f06:	6839      	ldr	r1, [r7, #0]
    2f08:	68f8      	ldr	r0, [r7, #12]
    2f0a:	f7ff ff7e 	bl	2e0a <spi_config_port>
    2f0e:	68fb      	ldr	r3, [r7, #12]
    2f10:	4a10      	ldr	r2, [pc, #64]	; (2f54 <spi_init+0x5c>)
    2f12:	4293      	cmp	r3, r2
    2f14:	d106      	bne.n	2f24 <spi_init+0x2c>
    2f16:	4a10      	ldr	r2, [pc, #64]	; (2f58 <spi_init+0x60>)
    2f18:	4b0f      	ldr	r3, [pc, #60]	; (2f58 <spi_init+0x60>)
    2f1a:	699b      	ldr	r3, [r3, #24]
    2f1c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2f20:	6193      	str	r3, [r2, #24]
    2f22:	e005      	b.n	2f30 <spi_init+0x38>
    2f24:	4a0c      	ldr	r2, [pc, #48]	; (2f58 <spi_init+0x60>)
    2f26:	4b0c      	ldr	r3, [pc, #48]	; (2f58 <spi_init+0x60>)
    2f28:	69db      	ldr	r3, [r3, #28]
    2f2a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2f2e:	61d3      	str	r3, [r2, #28]
    2f30:	68fb      	ldr	r3, [r7, #12]
    2f32:	687a      	ldr	r2, [r7, #4]
    2f34:	601a      	str	r2, [r3, #0]
    2f36:	68b9      	ldr	r1, [r7, #8]
    2f38:	68f8      	ldr	r0, [r7, #12]
    2f3a:	f7ff ff4f 	bl	2ddc <spi_baudrate>
    2f3e:	68fb      	ldr	r3, [r7, #12]
    2f40:	681b      	ldr	r3, [r3, #0]
    2f42:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    2f46:	68fb      	ldr	r3, [r7, #12]
    2f48:	601a      	str	r2, [r3, #0]
    2f4a:	bf00      	nop
    2f4c:	3710      	adds	r7, #16
    2f4e:	46bd      	mov	sp, r7
    2f50:	bd80      	pop	{r7, pc}
    2f52:	bf00      	nop
    2f54:	40013000 	.word	0x40013000
    2f58:	40021000 	.word	0x40021000

00002f5c <spi_send>:
    2f5c:	b480      	push	{r7}
    2f5e:	b085      	sub	sp, #20
    2f60:	af00      	add	r7, sp, #0
    2f62:	6078      	str	r0, [r7, #4]
    2f64:	460b      	mov	r3, r1
    2f66:	70fb      	strb	r3, [r7, #3]
    2f68:	bf00      	nop
    2f6a:	687b      	ldr	r3, [r7, #4]
    2f6c:	689b      	ldr	r3, [r3, #8]
    2f6e:	f003 0302 	and.w	r3, r3, #2
    2f72:	2b00      	cmp	r3, #0
    2f74:	d0f9      	beq.n	2f6a <spi_send+0xe>
    2f76:	78fa      	ldrb	r2, [r7, #3]
    2f78:	687b      	ldr	r3, [r7, #4]
    2f7a:	60da      	str	r2, [r3, #12]
    2f7c:	bf00      	nop
    2f7e:	687b      	ldr	r3, [r7, #4]
    2f80:	689b      	ldr	r3, [r3, #8]
    2f82:	f003 0301 	and.w	r3, r3, #1
    2f86:	2b00      	cmp	r3, #0
    2f88:	d0f9      	beq.n	2f7e <spi_send+0x22>
    2f8a:	687b      	ldr	r3, [r7, #4]
    2f8c:	68db      	ldr	r3, [r3, #12]
    2f8e:	73fb      	strb	r3, [r7, #15]
    2f90:	bf00      	nop
    2f92:	3714      	adds	r7, #20
    2f94:	46bd      	mov	sp, r7
    2f96:	bc80      	pop	{r7}
    2f98:	4770      	bx	lr

00002f9a <spi_receive>:
    2f9a:	b480      	push	{r7}
    2f9c:	b085      	sub	sp, #20
    2f9e:	af00      	add	r7, sp, #0
    2fa0:	6078      	str	r0, [r7, #4]
    2fa2:	bf00      	nop
    2fa4:	687b      	ldr	r3, [r7, #4]
    2fa6:	689b      	ldr	r3, [r3, #8]
    2fa8:	f003 0302 	and.w	r3, r3, #2
    2fac:	2b00      	cmp	r3, #0
    2fae:	d0f9      	beq.n	2fa4 <spi_receive+0xa>
    2fb0:	687b      	ldr	r3, [r7, #4]
    2fb2:	22ff      	movs	r2, #255	; 0xff
    2fb4:	60da      	str	r2, [r3, #12]
    2fb6:	bf00      	nop
    2fb8:	687b      	ldr	r3, [r7, #4]
    2fba:	689b      	ldr	r3, [r3, #8]
    2fbc:	f003 0301 	and.w	r3, r3, #1
    2fc0:	2b00      	cmp	r3, #0
    2fc2:	d0f9      	beq.n	2fb8 <spi_receive+0x1e>
    2fc4:	687b      	ldr	r3, [r7, #4]
    2fc6:	68db      	ldr	r3, [r3, #12]
    2fc8:	73fb      	strb	r3, [r7, #15]
    2fca:	7bfb      	ldrb	r3, [r7, #15]
    2fcc:	4618      	mov	r0, r3
    2fce:	3714      	adds	r7, #20
    2fd0:	46bd      	mov	sp, r7
    2fd2:	bc80      	pop	{r7}
    2fd4:	4770      	bx	lr

00002fd6 <spi_send_block>:
    2fd6:	b480      	push	{r7}
    2fd8:	b087      	sub	sp, #28
    2fda:	af00      	add	r7, sp, #0
    2fdc:	60f8      	str	r0, [r7, #12]
    2fde:	60b9      	str	r1, [r7, #8]
    2fe0:	607a      	str	r2, [r7, #4]
    2fe2:	e010      	b.n	3006 <spi_send_block+0x30>
    2fe4:	68bb      	ldr	r3, [r7, #8]
    2fe6:	1c5a      	adds	r2, r3, #1
    2fe8:	60ba      	str	r2, [r7, #8]
    2fea:	781b      	ldrb	r3, [r3, #0]
    2fec:	461a      	mov	r2, r3
    2fee:	68fb      	ldr	r3, [r7, #12]
    2ff0:	60da      	str	r2, [r3, #12]
    2ff2:	bf00      	nop
    2ff4:	68fb      	ldr	r3, [r7, #12]
    2ff6:	689b      	ldr	r3, [r3, #8]
    2ff8:	f003 0302 	and.w	r3, r3, #2
    2ffc:	2b00      	cmp	r3, #0
    2ffe:	d0f9      	beq.n	2ff4 <spi_send_block+0x1e>
    3000:	687b      	ldr	r3, [r7, #4]
    3002:	3b01      	subs	r3, #1
    3004:	607b      	str	r3, [r7, #4]
    3006:	687b      	ldr	r3, [r7, #4]
    3008:	2b00      	cmp	r3, #0
    300a:	d1eb      	bne.n	2fe4 <spi_send_block+0xe>
    300c:	bf00      	nop
    300e:	68fb      	ldr	r3, [r7, #12]
    3010:	689b      	ldr	r3, [r3, #8]
    3012:	f003 0380 	and.w	r3, r3, #128	; 0x80
    3016:	2b00      	cmp	r3, #0
    3018:	d1f9      	bne.n	300e <spi_send_block+0x38>
    301a:	68fb      	ldr	r3, [r7, #12]
    301c:	68db      	ldr	r3, [r3, #12]
    301e:	75fb      	strb	r3, [r7, #23]
    3020:	bf00      	nop
    3022:	371c      	adds	r7, #28
    3024:	46bd      	mov	sp, r7
    3026:	bc80      	pop	{r7}
    3028:	4770      	bx	lr

0000302a <spi_receive_block>:
    302a:	b480      	push	{r7}
    302c:	b085      	sub	sp, #20
    302e:	af00      	add	r7, sp, #0
    3030:	60f8      	str	r0, [r7, #12]
    3032:	60b9      	str	r1, [r7, #8]
    3034:	607a      	str	r2, [r7, #4]
    3036:	e013      	b.n	3060 <spi_receive_block+0x36>
    3038:	68fb      	ldr	r3, [r7, #12]
    303a:	2200      	movs	r2, #0
    303c:	60da      	str	r2, [r3, #12]
    303e:	bf00      	nop
    3040:	68fb      	ldr	r3, [r7, #12]
    3042:	689b      	ldr	r3, [r3, #8]
    3044:	f003 0301 	and.w	r3, r3, #1
    3048:	2b00      	cmp	r3, #0
    304a:	d0f9      	beq.n	3040 <spi_receive_block+0x16>
    304c:	68bb      	ldr	r3, [r7, #8]
    304e:	1c5a      	adds	r2, r3, #1
    3050:	60ba      	str	r2, [r7, #8]
    3052:	68fa      	ldr	r2, [r7, #12]
    3054:	68d2      	ldr	r2, [r2, #12]
    3056:	b2d2      	uxtb	r2, r2
    3058:	701a      	strb	r2, [r3, #0]
    305a:	687b      	ldr	r3, [r7, #4]
    305c:	3b01      	subs	r3, #1
    305e:	607b      	str	r3, [r7, #4]
    3060:	687b      	ldr	r3, [r7, #4]
    3062:	2b00      	cmp	r3, #0
    3064:	d1e8      	bne.n	3038 <spi_receive_block+0xe>
    3066:	bf00      	nop
    3068:	3714      	adds	r7, #20
    306a:	46bd      	mov	sp, r7
    306c:	bc80      	pop	{r7}
    306e:	4770      	bx	lr

00003070 <reset_mcu>:
    3070:	4b01      	ldr	r3, [pc, #4]	; (3078 <reset_mcu+0x8>)
    3072:	4a02      	ldr	r2, [pc, #8]	; (307c <reset_mcu+0xc>)
    3074:	601a      	str	r2, [r3, #0]
    3076:	bf00      	nop
    3078:	e000ed0c 	.word	0xe000ed0c
    307c:	05fa0004 	.word	0x05fa0004

00003080 <print_fault>:
    3080:	b580      	push	{r7, lr}
    3082:	b082      	sub	sp, #8
    3084:	af00      	add	r7, sp, #0
    3086:	6078      	str	r0, [r7, #4]
    3088:	6039      	str	r1, [r7, #0]
    308a:	6878      	ldr	r0, [r7, #4]
    308c:	f000 f9ec 	bl	3468 <print>
    3090:	4818      	ldr	r0, [pc, #96]	; (30f4 <print_fault+0x74>)
    3092:	f000 f9e9 	bl	3468 <print>
    3096:	683b      	ldr	r3, [r7, #0]
    3098:	2b00      	cmp	r3, #0
    309a:	d004      	beq.n	30a6 <print_fault+0x26>
    309c:	683b      	ldr	r3, [r7, #0]
    309e:	2110      	movs	r1, #16
    30a0:	4618      	mov	r0, r3
    30a2:	f000 fa04 	bl	34ae <print_int>
    30a6:	200d      	movs	r0, #13
    30a8:	f000 f926 	bl	32f8 <put_char>
    30ac:	4812      	ldr	r0, [pc, #72]	; (30f8 <print_fault+0x78>)
    30ae:	f000 f9db 	bl	3468 <print>
    30b2:	4b12      	ldr	r3, [pc, #72]	; (30fc <print_fault+0x7c>)
    30b4:	681b      	ldr	r3, [r3, #0]
    30b6:	f3c3 430f 	ubfx	r3, r3, #16, #16
    30ba:	b29b      	uxth	r3, r3
    30bc:	2110      	movs	r1, #16
    30be:	4618      	mov	r0, r3
    30c0:	f000 f9f5 	bl	34ae <print_int>
    30c4:	480e      	ldr	r0, [pc, #56]	; (3100 <print_fault+0x80>)
    30c6:	f000 f9cf 	bl	3468 <print>
    30ca:	4b0c      	ldr	r3, [pc, #48]	; (30fc <print_fault+0x7c>)
    30cc:	681b      	ldr	r3, [r3, #0]
    30ce:	f3c3 2307 	ubfx	r3, r3, #8, #8
    30d2:	b2db      	uxtb	r3, r3
    30d4:	2110      	movs	r1, #16
    30d6:	4618      	mov	r0, r3
    30d8:	f000 f9e9 	bl	34ae <print_int>
    30dc:	4809      	ldr	r0, [pc, #36]	; (3104 <print_fault+0x84>)
    30de:	f000 f9c3 	bl	3468 <print>
    30e2:	4b06      	ldr	r3, [pc, #24]	; (30fc <print_fault+0x7c>)
    30e4:	681b      	ldr	r3, [r3, #0]
    30e6:	b2db      	uxtb	r3, r3
    30e8:	2110      	movs	r1, #16
    30ea:	4618      	mov	r0, r3
    30ec:	f000 f9df 	bl	34ae <print_int>
    30f0:	e7fe      	b.n	30f0 <print_fault+0x70>
    30f2:	bf00      	nop
    30f4:	00004158 	.word	0x00004158
    30f8:	00004168 	.word	0x00004168
    30fc:	e000ed28 	.word	0xe000ed28
    3100:	00004170 	.word	0x00004170
    3104:	00004178 	.word	0x00004178

00003108 <config_systicks>:
    3108:	b580      	push	{r7, lr}
    310a:	af00      	add	r7, sp, #0
    310c:	2109      	movs	r1, #9
    310e:	f06f 000e 	mvn.w	r0, #14
    3112:	f7fe fff3 	bl	20fc <set_int_priority>
    3116:	4b04      	ldr	r3, [pc, #16]	; (3128 <config_systicks+0x20>)
    3118:	f242 22f3 	movw	r2, #8947	; 0x22f3
    311c:	601a      	str	r2, [r3, #0]
    311e:	4b03      	ldr	r3, [pc, #12]	; (312c <config_systicks+0x24>)
    3120:	2203      	movs	r2, #3
    3122:	601a      	str	r2, [r3, #0]
    3124:	bf00      	nop
    3126:	bd80      	pop	{r7, pc}
    3128:	e000e014 	.word	0xe000e014
    312c:	e000e010 	.word	0xe000e010

00003130 <pause>:
    3130:	b480      	push	{r7}
    3132:	b083      	sub	sp, #12
    3134:	af00      	add	r7, sp, #0
    3136:	6078      	str	r0, [r7, #4]
    3138:	4a06      	ldr	r2, [pc, #24]	; (3154 <pause+0x24>)
    313a:	687b      	ldr	r3, [r7, #4]
    313c:	6013      	str	r3, [r2, #0]
    313e:	bf00      	nop
    3140:	4b04      	ldr	r3, [pc, #16]	; (3154 <pause+0x24>)
    3142:	681b      	ldr	r3, [r3, #0]
    3144:	2b00      	cmp	r3, #0
    3146:	d1fb      	bne.n	3140 <pause+0x10>
    3148:	bf00      	nop
    314a:	370c      	adds	r7, #12
    314c:	46bd      	mov	sp, r7
    314e:	bc80      	pop	{r7}
    3150:	4770      	bx	lr
    3152:	bf00      	nop
    3154:	200004ec 	.word	0x200004ec

00003158 <STK_handler>:
    3158:	b480      	push	{r7}
    315a:	af00      	add	r7, sp, #0
    315c:	4b08      	ldr	r3, [pc, #32]	; (3180 <STK_handler+0x28>)
    315e:	681b      	ldr	r3, [r3, #0]
    3160:	3301      	adds	r3, #1
    3162:	4a07      	ldr	r2, [pc, #28]	; (3180 <STK_handler+0x28>)
    3164:	6013      	str	r3, [r2, #0]
    3166:	4b07      	ldr	r3, [pc, #28]	; (3184 <STK_handler+0x2c>)
    3168:	681b      	ldr	r3, [r3, #0]
    316a:	2b00      	cmp	r3, #0
    316c:	d004      	beq.n	3178 <STK_handler+0x20>
    316e:	4b05      	ldr	r3, [pc, #20]	; (3184 <STK_handler+0x2c>)
    3170:	681b      	ldr	r3, [r3, #0]
    3172:	3b01      	subs	r3, #1
    3174:	4a03      	ldr	r2, [pc, #12]	; (3184 <STK_handler+0x2c>)
    3176:	6013      	str	r3, [r2, #0]
    3178:	bf00      	nop
    317a:	46bd      	mov	sp, r7
    317c:	bc80      	pop	{r7}
    317e:	4770      	bx	lr
    3180:	200004e8 	.word	0x200004e8
    3184:	200004ec 	.word	0x200004ec

00003188 <font_color>:
    3188:	b480      	push	{r7}
    318a:	b083      	sub	sp, #12
    318c:	af00      	add	r7, sp, #0
    318e:	4603      	mov	r3, r0
    3190:	71fb      	strb	r3, [r7, #7]
    3192:	79fb      	ldrb	r3, [r7, #7]
    3194:	f003 030f 	and.w	r3, r3, #15
    3198:	b2da      	uxtb	r2, r3
    319a:	4b03      	ldr	r3, [pc, #12]	; (31a8 <font_color+0x20>)
    319c:	705a      	strb	r2, [r3, #1]
    319e:	bf00      	nop
    31a0:	370c      	adds	r7, #12
    31a2:	46bd      	mov	sp, r7
    31a4:	bc80      	pop	{r7}
    31a6:	4770      	bx	lr
    31a8:	20000058 	.word	0x20000058

000031ac <bg_color>:
    31ac:	b480      	push	{r7}
    31ae:	b083      	sub	sp, #12
    31b0:	af00      	add	r7, sp, #0
    31b2:	4603      	mov	r3, r0
    31b4:	71fb      	strb	r3, [r7, #7]
    31b6:	79fb      	ldrb	r3, [r7, #7]
    31b8:	f003 030f 	and.w	r3, r3, #15
    31bc:	b2da      	uxtb	r2, r3
    31be:	4b03      	ldr	r3, [pc, #12]	; (31cc <bg_color+0x20>)
    31c0:	701a      	strb	r2, [r3, #0]
    31c2:	bf00      	nop
    31c4:	370c      	adds	r7, #12
    31c6:	46bd      	mov	sp, r7
    31c8:	bc80      	pop	{r7}
    31ca:	4770      	bx	lr
    31cc:	20000058 	.word	0x20000058

000031d0 <select_font>:
    31d0:	b480      	push	{r7}
    31d2:	b083      	sub	sp, #12
    31d4:	af00      	add	r7, sp, #0
    31d6:	4603      	mov	r3, r0
    31d8:	71fb      	strb	r3, [r7, #7]
    31da:	4a04      	ldr	r2, [pc, #16]	; (31ec <select_font+0x1c>)
    31dc:	79fb      	ldrb	r3, [r7, #7]
    31de:	7013      	strb	r3, [r2, #0]
    31e0:	bf00      	nop
    31e2:	370c      	adds	r7, #12
    31e4:	46bd      	mov	sp, r7
    31e6:	bc80      	pop	{r7}
    31e8:	4770      	bx	lr
    31ea:	bf00      	nop
    31ec:	20000054 	.word	0x20000054

000031f0 <new_line>:
    31f0:	b580      	push	{r7, lr}
    31f2:	af00      	add	r7, sp, #0
    31f4:	4b1e      	ldr	r3, [pc, #120]	; (3270 <new_line+0x80>)
    31f6:	2200      	movs	r2, #0
    31f8:	701a      	strb	r2, [r3, #0]
    31fa:	4b1e      	ldr	r3, [pc, #120]	; (3274 <new_line+0x84>)
    31fc:	781b      	ldrb	r3, [r3, #0]
    31fe:	2b01      	cmp	r3, #1
    3200:	d014      	beq.n	322c <new_line+0x3c>
    3202:	2b02      	cmp	r3, #2
    3204:	d022      	beq.n	324c <new_line+0x5c>
    3206:	2b00      	cmp	r3, #0
    3208:	d000      	beq.n	320c <new_line+0x1c>
    320a:	e02f      	b.n	326c <new_line+0x7c>
    320c:	4b1a      	ldr	r3, [pc, #104]	; (3278 <new_line+0x88>)
    320e:	781b      	ldrb	r3, [r3, #0]
    3210:	3306      	adds	r3, #6
    3212:	2b6b      	cmp	r3, #107	; 0x6b
    3214:	dc06      	bgt.n	3224 <new_line+0x34>
    3216:	4b18      	ldr	r3, [pc, #96]	; (3278 <new_line+0x88>)
    3218:	781b      	ldrb	r3, [r3, #0]
    321a:	3306      	adds	r3, #6
    321c:	b2da      	uxtb	r2, r3
    321e:	4b16      	ldr	r3, [pc, #88]	; (3278 <new_line+0x88>)
    3220:	701a      	strb	r2, [r3, #0]
    3222:	e023      	b.n	326c <new_line+0x7c>
    3224:	2006      	movs	r0, #6
    3226:	f7fe fcc5 	bl	1bb4 <gfx_scrollup>
    322a:	e01f      	b.n	326c <new_line+0x7c>
    322c:	4b12      	ldr	r3, [pc, #72]	; (3278 <new_line+0x88>)
    322e:	781b      	ldrb	r3, [r3, #0]
    3230:	330a      	adds	r3, #10
    3232:	2b67      	cmp	r3, #103	; 0x67
    3234:	dc06      	bgt.n	3244 <new_line+0x54>
    3236:	4b10      	ldr	r3, [pc, #64]	; (3278 <new_line+0x88>)
    3238:	781b      	ldrb	r3, [r3, #0]
    323a:	330a      	adds	r3, #10
    323c:	b2da      	uxtb	r2, r3
    323e:	4b0e      	ldr	r3, [pc, #56]	; (3278 <new_line+0x88>)
    3240:	701a      	strb	r2, [r3, #0]
    3242:	e013      	b.n	326c <new_line+0x7c>
    3244:	200a      	movs	r0, #10
    3246:	f7fe fcb5 	bl	1bb4 <gfx_scrollup>
    324a:	e00f      	b.n	326c <new_line+0x7c>
    324c:	4b0a      	ldr	r3, [pc, #40]	; (3278 <new_line+0x88>)
    324e:	781b      	ldrb	r3, [r3, #0]
    3250:	3308      	adds	r3, #8
    3252:	2b69      	cmp	r3, #105	; 0x69
    3254:	dc06      	bgt.n	3264 <new_line+0x74>
    3256:	4b08      	ldr	r3, [pc, #32]	; (3278 <new_line+0x88>)
    3258:	781b      	ldrb	r3, [r3, #0]
    325a:	3308      	adds	r3, #8
    325c:	b2da      	uxtb	r2, r3
    325e:	4b06      	ldr	r3, [pc, #24]	; (3278 <new_line+0x88>)
    3260:	701a      	strb	r2, [r3, #0]
    3262:	e002      	b.n	326a <new_line+0x7a>
    3264:	2008      	movs	r0, #8
    3266:	f7fe fca5 	bl	1bb4 <gfx_scrollup>
    326a:	bf00      	nop
    326c:	bf00      	nop
    326e:	bd80      	pop	{r7, pc}
    3270:	200004f0 	.word	0x200004f0
    3274:	20000054 	.word	0x20000054
    3278:	200004f1 	.word	0x200004f1

0000327c <draw_char>:
    327c:	b5b0      	push	{r4, r5, r7, lr}
    327e:	b086      	sub	sp, #24
    3280:	af00      	add	r7, sp, #0
    3282:	60f8      	str	r0, [r7, #12]
    3284:	60b9      	str	r1, [r7, #8]
    3286:	607a      	str	r2, [r7, #4]
    3288:	603b      	str	r3, [r7, #0]
    328a:	68bc      	ldr	r4, [r7, #8]
    328c:	e028      	b.n	32e0 <draw_char+0x64>
    328e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3290:	1c5a      	adds	r2, r3, #1
    3292:	62ba      	str	r2, [r7, #40]	; 0x28
    3294:	781b      	ldrb	r3, [r3, #0]
    3296:	757b      	strb	r3, [r7, #21]
    3298:	2380      	movs	r3, #128	; 0x80
    329a:	75bb      	strb	r3, [r7, #22]
    329c:	68fd      	ldr	r5, [r7, #12]
    329e:	e019      	b.n	32d4 <draw_char+0x58>
    32a0:	7d7a      	ldrb	r2, [r7, #21]
    32a2:	7dbb      	ldrb	r3, [r7, #22]
    32a4:	4013      	ands	r3, r2
    32a6:	753b      	strb	r3, [r7, #20]
    32a8:	7d3b      	ldrb	r3, [r7, #20]
    32aa:	2b00      	cmp	r3, #0
    32ac:	d003      	beq.n	32b6 <draw_char+0x3a>
    32ae:	4b11      	ldr	r3, [pc, #68]	; (32f4 <draw_char+0x78>)
    32b0:	785b      	ldrb	r3, [r3, #1]
    32b2:	75fb      	strb	r3, [r7, #23]
    32b4:	e002      	b.n	32bc <draw_char+0x40>
    32b6:	4b0f      	ldr	r3, [pc, #60]	; (32f4 <draw_char+0x78>)
    32b8:	781b      	ldrb	r3, [r3, #0]
    32ba:	75fb      	strb	r3, [r7, #23]
    32bc:	7dfb      	ldrb	r3, [r7, #23]
    32be:	461a      	mov	r2, r3
    32c0:	4621      	mov	r1, r4
    32c2:	4628      	mov	r0, r5
    32c4:	f7fe fbd0 	bl	1a68 <gfx_plot>
    32c8:	7dbb      	ldrb	r3, [r7, #22]
    32ca:	085b      	lsrs	r3, r3, #1
    32cc:	75bb      	strb	r3, [r7, #22]
    32ce:	68fb      	ldr	r3, [r7, #12]
    32d0:	3301      	adds	r3, #1
    32d2:	60fb      	str	r3, [r7, #12]
    32d4:	68fa      	ldr	r2, [r7, #12]
    32d6:	687b      	ldr	r3, [r7, #4]
    32d8:	4413      	add	r3, r2
    32da:	42ab      	cmp	r3, r5
    32dc:	dce0      	bgt.n	32a0 <draw_char+0x24>
    32de:	3401      	adds	r4, #1
    32e0:	68ba      	ldr	r2, [r7, #8]
    32e2:	683b      	ldr	r3, [r7, #0]
    32e4:	4413      	add	r3, r2
    32e6:	42a3      	cmp	r3, r4
    32e8:	dcd1      	bgt.n	328e <draw_char+0x12>
    32ea:	bf00      	nop
    32ec:	3718      	adds	r7, #24
    32ee:	46bd      	mov	sp, r7
    32f0:	bdb0      	pop	{r4, r5, r7, pc}
    32f2:	bf00      	nop
    32f4:	20000058 	.word	0x20000058

000032f8 <put_char>:
    32f8:	b580      	push	{r7, lr}
    32fa:	b084      	sub	sp, #16
    32fc:	af02      	add	r7, sp, #8
    32fe:	4603      	mov	r3, r0
    3300:	71fb      	strb	r3, [r7, #7]
    3302:	4b3d      	ldr	r3, [pc, #244]	; (33f8 <put_char+0x100>)
    3304:	781b      	ldrb	r3, [r3, #0]
    3306:	2b01      	cmp	r3, #1
    3308:	d027      	beq.n	335a <put_char+0x62>
    330a:	2b02      	cmp	r3, #2
    330c:	d048      	beq.n	33a0 <put_char+0xa8>
    330e:	2b00      	cmp	r3, #0
    3310:	d000      	beq.n	3314 <put_char+0x1c>
    3312:	e06d      	b.n	33f0 <put_char+0xf8>
    3314:	79fb      	ldrb	r3, [r7, #7]
    3316:	2b0f      	cmp	r3, #15
    3318:	d865      	bhi.n	33e6 <put_char+0xee>
    331a:	4b38      	ldr	r3, [pc, #224]	; (33fc <put_char+0x104>)
    331c:	781b      	ldrb	r3, [r3, #0]
    331e:	4618      	mov	r0, r3
    3320:	4b37      	ldr	r3, [pc, #220]	; (3400 <put_char+0x108>)
    3322:	781b      	ldrb	r3, [r3, #0]
    3324:	4619      	mov	r1, r3
    3326:	79fa      	ldrb	r2, [r7, #7]
    3328:	4613      	mov	r3, r2
    332a:	005b      	lsls	r3, r3, #1
    332c:	4413      	add	r3, r2
    332e:	005b      	lsls	r3, r3, #1
    3330:	461a      	mov	r2, r3
    3332:	4b34      	ldr	r3, [pc, #208]	; (3404 <put_char+0x10c>)
    3334:	4413      	add	r3, r2
    3336:	9300      	str	r3, [sp, #0]
    3338:	2306      	movs	r3, #6
    333a:	2204      	movs	r2, #4
    333c:	f7ff ff9e 	bl	327c <draw_char>
    3340:	4b2e      	ldr	r3, [pc, #184]	; (33fc <put_char+0x104>)
    3342:	781b      	ldrb	r3, [r3, #0]
    3344:	3304      	adds	r3, #4
    3346:	b2da      	uxtb	r2, r3
    3348:	4b2c      	ldr	r3, [pc, #176]	; (33fc <put_char+0x104>)
    334a:	701a      	strb	r2, [r3, #0]
    334c:	4b2b      	ldr	r3, [pc, #172]	; (33fc <put_char+0x104>)
    334e:	781b      	ldrb	r3, [r3, #0]
    3350:	2bb1      	cmp	r3, #177	; 0xb1
    3352:	d948      	bls.n	33e6 <put_char+0xee>
    3354:	f7ff ff4c 	bl	31f0 <new_line>
    3358:	e045      	b.n	33e6 <put_char+0xee>
    335a:	79fb      	ldrb	r3, [r7, #7]
    335c:	2b0f      	cmp	r3, #15
    335e:	d844      	bhi.n	33ea <put_char+0xf2>
    3360:	4b26      	ldr	r3, [pc, #152]	; (33fc <put_char+0x104>)
    3362:	781b      	ldrb	r3, [r3, #0]
    3364:	4618      	mov	r0, r3
    3366:	4b26      	ldr	r3, [pc, #152]	; (3400 <put_char+0x108>)
    3368:	781b      	ldrb	r3, [r3, #0]
    336a:	4619      	mov	r1, r3
    336c:	79fa      	ldrb	r2, [r7, #7]
    336e:	4613      	mov	r3, r2
    3370:	009b      	lsls	r3, r3, #2
    3372:	4413      	add	r3, r2
    3374:	005b      	lsls	r3, r3, #1
    3376:	461a      	mov	r2, r3
    3378:	4b23      	ldr	r3, [pc, #140]	; (3408 <put_char+0x110>)
    337a:	4413      	add	r3, r2
    337c:	9300      	str	r3, [sp, #0]
    337e:	230a      	movs	r3, #10
    3380:	2208      	movs	r2, #8
    3382:	f7ff ff7b 	bl	327c <draw_char>
    3386:	4b1d      	ldr	r3, [pc, #116]	; (33fc <put_char+0x104>)
    3388:	781b      	ldrb	r3, [r3, #0]
    338a:	3308      	adds	r3, #8
    338c:	b2da      	uxtb	r2, r3
    338e:	4b1b      	ldr	r3, [pc, #108]	; (33fc <put_char+0x104>)
    3390:	701a      	strb	r2, [r3, #0]
    3392:	4b1a      	ldr	r3, [pc, #104]	; (33fc <put_char+0x104>)
    3394:	781b      	ldrb	r3, [r3, #0]
    3396:	2bad      	cmp	r3, #173	; 0xad
    3398:	d927      	bls.n	33ea <put_char+0xf2>
    339a:	f7ff ff29 	bl	31f0 <new_line>
    339e:	e024      	b.n	33ea <put_char+0xf2>
    33a0:	79fb      	ldrb	r3, [r7, #7]
    33a2:	2b1f      	cmp	r3, #31
    33a4:	d923      	bls.n	33ee <put_char+0xf6>
    33a6:	79fb      	ldrb	r3, [r7, #7]
    33a8:	2b84      	cmp	r3, #132	; 0x84
    33aa:	d820      	bhi.n	33ee <put_char+0xf6>
    33ac:	4b13      	ldr	r3, [pc, #76]	; (33fc <put_char+0x104>)
    33ae:	781b      	ldrb	r3, [r3, #0]
    33b0:	4618      	mov	r0, r3
    33b2:	4b13      	ldr	r3, [pc, #76]	; (3400 <put_char+0x108>)
    33b4:	781b      	ldrb	r3, [r3, #0]
    33b6:	4619      	mov	r1, r3
    33b8:	79fb      	ldrb	r3, [r7, #7]
    33ba:	3b20      	subs	r3, #32
    33bc:	00db      	lsls	r3, r3, #3
    33be:	4a13      	ldr	r2, [pc, #76]	; (340c <put_char+0x114>)
    33c0:	4413      	add	r3, r2
    33c2:	9300      	str	r3, [sp, #0]
    33c4:	2308      	movs	r3, #8
    33c6:	2206      	movs	r2, #6
    33c8:	f7ff ff58 	bl	327c <draw_char>
    33cc:	4b0b      	ldr	r3, [pc, #44]	; (33fc <put_char+0x104>)
    33ce:	781b      	ldrb	r3, [r3, #0]
    33d0:	3306      	adds	r3, #6
    33d2:	b2da      	uxtb	r2, r3
    33d4:	4b09      	ldr	r3, [pc, #36]	; (33fc <put_char+0x104>)
    33d6:	701a      	strb	r2, [r3, #0]
    33d8:	4b08      	ldr	r3, [pc, #32]	; (33fc <put_char+0x104>)
    33da:	781b      	ldrb	r3, [r3, #0]
    33dc:	2baf      	cmp	r3, #175	; 0xaf
    33de:	d906      	bls.n	33ee <put_char+0xf6>
    33e0:	f7ff ff06 	bl	31f0 <new_line>
    33e4:	e003      	b.n	33ee <put_char+0xf6>
    33e6:	bf00      	nop
    33e8:	e002      	b.n	33f0 <put_char+0xf8>
    33ea:	bf00      	nop
    33ec:	e000      	b.n	33f0 <put_char+0xf8>
    33ee:	bf00      	nop
    33f0:	bf00      	nop
    33f2:	3708      	adds	r7, #8
    33f4:	46bd      	mov	sp, r7
    33f6:	bd80      	pop	{r7, pc}
    33f8:	20000054 	.word	0x20000054
    33fc:	200004f0 	.word	0x200004f0
    3400:	200004f1 	.word	0x200004f1
    3404:	00003c44 	.word	0x00003c44
    3408:	00003ca4 	.word	0x00003ca4
    340c:	00003d44 	.word	0x00003d44

00003410 <set_cursor>:
    3410:	b480      	push	{r7}
    3412:	b083      	sub	sp, #12
    3414:	af00      	add	r7, sp, #0
    3416:	4603      	mov	r3, r0
    3418:	460a      	mov	r2, r1
    341a:	71fb      	strb	r3, [r7, #7]
    341c:	4613      	mov	r3, r2
    341e:	71bb      	strb	r3, [r7, #6]
    3420:	4a05      	ldr	r2, [pc, #20]	; (3438 <set_cursor+0x28>)
    3422:	79fb      	ldrb	r3, [r7, #7]
    3424:	7013      	strb	r3, [r2, #0]
    3426:	4a05      	ldr	r2, [pc, #20]	; (343c <set_cursor+0x2c>)
    3428:	79bb      	ldrb	r3, [r7, #6]
    342a:	7013      	strb	r3, [r2, #0]
    342c:	bf00      	nop
    342e:	370c      	adds	r7, #12
    3430:	46bd      	mov	sp, r7
    3432:	bc80      	pop	{r7}
    3434:	4770      	bx	lr
    3436:	bf00      	nop
    3438:	200004f0 	.word	0x200004f0
    343c:	200004f1 	.word	0x200004f1

00003440 <get_cursor>:
    3440:	b480      	push	{r7}
    3442:	af00      	add	r7, sp, #0
    3444:	4b06      	ldr	r3, [pc, #24]	; (3460 <get_cursor+0x20>)
    3446:	781b      	ldrb	r3, [r3, #0]
    3448:	b29b      	uxth	r3, r3
    344a:	021b      	lsls	r3, r3, #8
    344c:	b29a      	uxth	r2, r3
    344e:	4b05      	ldr	r3, [pc, #20]	; (3464 <get_cursor+0x24>)
    3450:	781b      	ldrb	r3, [r3, #0]
    3452:	b29b      	uxth	r3, r3
    3454:	4413      	add	r3, r2
    3456:	b29b      	uxth	r3, r3
    3458:	4618      	mov	r0, r3
    345a:	46bd      	mov	sp, r7
    345c:	bc80      	pop	{r7}
    345e:	4770      	bx	lr
    3460:	200004f0 	.word	0x200004f0
    3464:	200004f1 	.word	0x200004f1

00003468 <print>:
    3468:	b580      	push	{r7, lr}
    346a:	b084      	sub	sp, #16
    346c:	af00      	add	r7, sp, #0
    346e:	6078      	str	r0, [r7, #4]
    3470:	e011      	b.n	3496 <print+0x2e>
    3472:	7bfb      	ldrb	r3, [r7, #15]
    3474:	2b0a      	cmp	r3, #10
    3476:	d004      	beq.n	3482 <print+0x1a>
    3478:	2b0d      	cmp	r3, #13
    347a:	d002      	beq.n	3482 <print+0x1a>
    347c:	2b08      	cmp	r3, #8
    347e:	d003      	beq.n	3488 <print+0x20>
    3480:	e005      	b.n	348e <print+0x26>
    3482:	f7ff feb5 	bl	31f0 <new_line>
    3486:	e006      	b.n	3496 <print+0x2e>
    3488:	f000 f888 	bl	359c <cursor_left>
    348c:	e003      	b.n	3496 <print+0x2e>
    348e:	7bfb      	ldrb	r3, [r7, #15]
    3490:	4618      	mov	r0, r3
    3492:	f7ff ff31 	bl	32f8 <put_char>
    3496:	687b      	ldr	r3, [r7, #4]
    3498:	1c5a      	adds	r2, r3, #1
    349a:	607a      	str	r2, [r7, #4]
    349c:	781b      	ldrb	r3, [r3, #0]
    349e:	73fb      	strb	r3, [r7, #15]
    34a0:	7bfb      	ldrb	r3, [r7, #15]
    34a2:	2b00      	cmp	r3, #0
    34a4:	d1e5      	bne.n	3472 <print+0xa>
    34a6:	bf00      	nop
    34a8:	3710      	adds	r7, #16
    34aa:	46bd      	mov	sp, r7
    34ac:	bd80      	pop	{r7, pc}

000034ae <print_int>:
    34ae:	b580      	push	{r7, lr}
    34b0:	b088      	sub	sp, #32
    34b2:	af00      	add	r7, sp, #0
    34b4:	6078      	str	r0, [r7, #4]
    34b6:	460b      	mov	r3, r1
    34b8:	70fb      	strb	r3, [r7, #3]
    34ba:	2300      	movs	r3, #0
    34bc:	77fb      	strb	r3, [r7, #31]
    34be:	2300      	movs	r3, #0
    34c0:	74fb      	strb	r3, [r7, #19]
    34c2:	2320      	movs	r3, #32
    34c4:	74bb      	strb	r3, [r7, #18]
    34c6:	230a      	movs	r3, #10
    34c8:	61bb      	str	r3, [r7, #24]
    34ca:	687b      	ldr	r3, [r7, #4]
    34cc:	2b00      	cmp	r3, #0
    34ce:	da26      	bge.n	351e <print_int+0x70>
    34d0:	2301      	movs	r3, #1
    34d2:	77fb      	strb	r3, [r7, #31]
    34d4:	687b      	ldr	r3, [r7, #4]
    34d6:	425b      	negs	r3, r3
    34d8:	607b      	str	r3, [r7, #4]
    34da:	e020      	b.n	351e <print_int+0x70>
    34dc:	78fa      	ldrb	r2, [r7, #3]
    34de:	687b      	ldr	r3, [r7, #4]
    34e0:	fb93 f1f2 	sdiv	r1, r3, r2
    34e4:	fb02 f201 	mul.w	r2, r2, r1
    34e8:	1a9b      	subs	r3, r3, r2
    34ea:	617b      	str	r3, [r7, #20]
    34ec:	697b      	ldr	r3, [r7, #20]
    34ee:	2b09      	cmp	r3, #9
    34f0:	dd02      	ble.n	34f8 <print_int+0x4a>
    34f2:	697b      	ldr	r3, [r7, #20]
    34f4:	3307      	adds	r3, #7
    34f6:	617b      	str	r3, [r7, #20]
    34f8:	69bb      	ldr	r3, [r7, #24]
    34fa:	3b01      	subs	r3, #1
    34fc:	61bb      	str	r3, [r7, #24]
    34fe:	697b      	ldr	r3, [r7, #20]
    3500:	3330      	adds	r3, #48	; 0x30
    3502:	617b      	str	r3, [r7, #20]
    3504:	697b      	ldr	r3, [r7, #20]
    3506:	b2d9      	uxtb	r1, r3
    3508:	f107 0208 	add.w	r2, r7, #8
    350c:	69bb      	ldr	r3, [r7, #24]
    350e:	4413      	add	r3, r2
    3510:	460a      	mov	r2, r1
    3512:	701a      	strb	r2, [r3, #0]
    3514:	78fb      	ldrb	r3, [r7, #3]
    3516:	687a      	ldr	r2, [r7, #4]
    3518:	fb92 f3f3 	sdiv	r3, r2, r3
    351c:	607b      	str	r3, [r7, #4]
    351e:	687b      	ldr	r3, [r7, #4]
    3520:	2b00      	cmp	r3, #0
    3522:	d1db      	bne.n	34dc <print_int+0x2e>
    3524:	69bb      	ldr	r3, [r7, #24]
    3526:	2b0a      	cmp	r3, #10
    3528:	d108      	bne.n	353c <print_int+0x8e>
    352a:	69bb      	ldr	r3, [r7, #24]
    352c:	3b01      	subs	r3, #1
    352e:	61bb      	str	r3, [r7, #24]
    3530:	f107 0208 	add.w	r2, r7, #8
    3534:	69bb      	ldr	r3, [r7, #24]
    3536:	4413      	add	r3, r2
    3538:	2230      	movs	r2, #48	; 0x30
    353a:	701a      	strb	r2, [r3, #0]
    353c:	78fb      	ldrb	r3, [r7, #3]
    353e:	2b0a      	cmp	r3, #10
    3540:	d10c      	bne.n	355c <print_int+0xae>
    3542:	7ffb      	ldrb	r3, [r7, #31]
    3544:	2b00      	cmp	r3, #0
    3546:	d009      	beq.n	355c <print_int+0xae>
    3548:	69bb      	ldr	r3, [r7, #24]
    354a:	3b01      	subs	r3, #1
    354c:	61bb      	str	r3, [r7, #24]
    354e:	f107 0208 	add.w	r2, r7, #8
    3552:	69bb      	ldr	r3, [r7, #24]
    3554:	4413      	add	r3, r2
    3556:	222d      	movs	r2, #45	; 0x2d
    3558:	701a      	strb	r2, [r3, #0]
    355a:	e014      	b.n	3586 <print_int+0xd8>
    355c:	78fb      	ldrb	r3, [r7, #3]
    355e:	2b10      	cmp	r3, #16
    3560:	d111      	bne.n	3586 <print_int+0xd8>
    3562:	69bb      	ldr	r3, [r7, #24]
    3564:	3b01      	subs	r3, #1
    3566:	61bb      	str	r3, [r7, #24]
    3568:	f107 0208 	add.w	r2, r7, #8
    356c:	69bb      	ldr	r3, [r7, #24]
    356e:	4413      	add	r3, r2
    3570:	2278      	movs	r2, #120	; 0x78
    3572:	701a      	strb	r2, [r3, #0]
    3574:	69bb      	ldr	r3, [r7, #24]
    3576:	3b01      	subs	r3, #1
    3578:	61bb      	str	r3, [r7, #24]
    357a:	f107 0208 	add.w	r2, r7, #8
    357e:	69bb      	ldr	r3, [r7, #24]
    3580:	4413      	add	r3, r2
    3582:	2230      	movs	r2, #48	; 0x30
    3584:	701a      	strb	r2, [r3, #0]
    3586:	f107 0208 	add.w	r2, r7, #8
    358a:	69bb      	ldr	r3, [r7, #24]
    358c:	4413      	add	r3, r2
    358e:	4618      	mov	r0, r3
    3590:	f7ff ff6a 	bl	3468 <print>
    3594:	bf00      	nop
    3596:	3720      	adds	r7, #32
    3598:	46bd      	mov	sp, r7
    359a:	bd80      	pop	{r7, pc}

0000359c <cursor_left>:
    359c:	b480      	push	{r7}
    359e:	af00      	add	r7, sp, #0
    35a0:	4b1a      	ldr	r3, [pc, #104]	; (360c <cursor_left+0x70>)
    35a2:	781b      	ldrb	r3, [r3, #0]
    35a4:	2b01      	cmp	r3, #1
    35a6:	d010      	beq.n	35ca <cursor_left+0x2e>
    35a8:	2b02      	cmp	r3, #2
    35aa:	d01a      	beq.n	35e2 <cursor_left+0x46>
    35ac:	2b00      	cmp	r3, #0
    35ae:	d000      	beq.n	35b2 <cursor_left+0x16>
    35b0:	e028      	b.n	3604 <cursor_left+0x68>
    35b2:	4b17      	ldr	r3, [pc, #92]	; (3610 <cursor_left+0x74>)
    35b4:	781b      	ldrb	r3, [r3, #0]
    35b6:	3b04      	subs	r3, #4
    35b8:	2b00      	cmp	r3, #0
    35ba:	db1e      	blt.n	35fa <cursor_left+0x5e>
    35bc:	4b14      	ldr	r3, [pc, #80]	; (3610 <cursor_left+0x74>)
    35be:	781b      	ldrb	r3, [r3, #0]
    35c0:	3b04      	subs	r3, #4
    35c2:	b2da      	uxtb	r2, r3
    35c4:	4b12      	ldr	r3, [pc, #72]	; (3610 <cursor_left+0x74>)
    35c6:	701a      	strb	r2, [r3, #0]
    35c8:	e017      	b.n	35fa <cursor_left+0x5e>
    35ca:	4b11      	ldr	r3, [pc, #68]	; (3610 <cursor_left+0x74>)
    35cc:	781b      	ldrb	r3, [r3, #0]
    35ce:	3b08      	subs	r3, #8
    35d0:	2b00      	cmp	r3, #0
    35d2:	db14      	blt.n	35fe <cursor_left+0x62>
    35d4:	4b0e      	ldr	r3, [pc, #56]	; (3610 <cursor_left+0x74>)
    35d6:	781b      	ldrb	r3, [r3, #0]
    35d8:	3b08      	subs	r3, #8
    35da:	b2da      	uxtb	r2, r3
    35dc:	4b0c      	ldr	r3, [pc, #48]	; (3610 <cursor_left+0x74>)
    35de:	701a      	strb	r2, [r3, #0]
    35e0:	e00d      	b.n	35fe <cursor_left+0x62>
    35e2:	4b0b      	ldr	r3, [pc, #44]	; (3610 <cursor_left+0x74>)
    35e4:	781b      	ldrb	r3, [r3, #0]
    35e6:	3b06      	subs	r3, #6
    35e8:	2b00      	cmp	r3, #0
    35ea:	db0a      	blt.n	3602 <cursor_left+0x66>
    35ec:	4b08      	ldr	r3, [pc, #32]	; (3610 <cursor_left+0x74>)
    35ee:	781b      	ldrb	r3, [r3, #0]
    35f0:	3b06      	subs	r3, #6
    35f2:	b2da      	uxtb	r2, r3
    35f4:	4b06      	ldr	r3, [pc, #24]	; (3610 <cursor_left+0x74>)
    35f6:	701a      	strb	r2, [r3, #0]
    35f8:	e003      	b.n	3602 <cursor_left+0x66>
    35fa:	bf00      	nop
    35fc:	e002      	b.n	3604 <cursor_left+0x68>
    35fe:	bf00      	nop
    3600:	e000      	b.n	3604 <cursor_left+0x68>
    3602:	bf00      	nop
    3604:	bf00      	nop
    3606:	46bd      	mov	sp, r7
    3608:	bc80      	pop	{r7}
    360a:	4770      	bx	lr
    360c:	20000054 	.word	0x20000054
    3610:	200004f0 	.word	0x200004f0

00003614 <text_scroller>:
    3614:	b580      	push	{r7, lr}
    3616:	b084      	sub	sp, #16
    3618:	af00      	add	r7, sp, #0
    361a:	6078      	str	r0, [r7, #4]
    361c:	460b      	mov	r3, r1
    361e:	70fb      	strb	r3, [r7, #3]
    3620:	f7fe faae 	bl	1b80 <gfx_cls>
    3624:	2002      	movs	r0, #2
    3626:	f7ff fdd3 	bl	31d0 <select_font>
    362a:	687b      	ldr	r3, [r7, #4]
    362c:	1c5a      	adds	r2, r3, #1
    362e:	607a      	str	r2, [r7, #4]
    3630:	781b      	ldrb	r3, [r3, #0]
    3632:	73fb      	strb	r3, [r7, #15]
    3634:	e038      	b.n	36a8 <text_scroller+0x94>
    3636:	2120      	movs	r1, #32
    3638:	2000      	movs	r0, #0
    363a:	f7ff fee9 	bl	3410 <set_cursor>
    363e:	e00e      	b.n	365e <text_scroller+0x4a>
    3640:	7bfb      	ldrb	r3, [r7, #15]
    3642:	4618      	mov	r0, r3
    3644:	f7ff fe58 	bl	32f8 <put_char>
    3648:	687b      	ldr	r3, [r7, #4]
    364a:	1c5a      	adds	r2, r3, #1
    364c:	607a      	str	r2, [r7, #4]
    364e:	781b      	ldrb	r3, [r3, #0]
    3650:	73fb      	strb	r3, [r7, #15]
    3652:	4b2d      	ldr	r3, [pc, #180]	; (3708 <text_scroller+0xf4>)
    3654:	881b      	ldrh	r3, [r3, #0]
    3656:	b29b      	uxth	r3, r3
    3658:	b21b      	sxth	r3, r3
    365a:	2b00      	cmp	r3, #0
    365c:	da42      	bge.n	36e4 <text_scroller+0xd0>
    365e:	7bfb      	ldrb	r3, [r7, #15]
    3660:	2b00      	cmp	r3, #0
    3662:	d002      	beq.n	366a <text_scroller+0x56>
    3664:	7bfb      	ldrb	r3, [r7, #15]
    3666:	2b0a      	cmp	r3, #10
    3668:	d1ea      	bne.n	3640 <text_scroller+0x2c>
    366a:	2300      	movs	r3, #0
    366c:	73bb      	strb	r3, [r7, #14]
    366e:	e013      	b.n	3698 <text_scroller+0x84>
    3670:	78fb      	ldrb	r3, [r7, #3]
    3672:	4a26      	ldr	r2, [pc, #152]	; (370c <text_scroller+0xf8>)
    3674:	6013      	str	r3, [r2, #0]
    3676:	bf00      	nop
    3678:	4b24      	ldr	r3, [pc, #144]	; (370c <text_scroller+0xf8>)
    367a:	681b      	ldr	r3, [r3, #0]
    367c:	2b00      	cmp	r3, #0
    367e:	d1fb      	bne.n	3678 <text_scroller+0x64>
    3680:	2001      	movs	r0, #1
    3682:	f7fe fa97 	bl	1bb4 <gfx_scrollup>
    3686:	4b20      	ldr	r3, [pc, #128]	; (3708 <text_scroller+0xf4>)
    3688:	881b      	ldrh	r3, [r3, #0]
    368a:	b29b      	uxth	r3, r3
    368c:	b21b      	sxth	r3, r3
    368e:	2b00      	cmp	r3, #0
    3690:	da2a      	bge.n	36e8 <text_scroller+0xd4>
    3692:	7bbb      	ldrb	r3, [r7, #14]
    3694:	3301      	adds	r3, #1
    3696:	73bb      	strb	r3, [r7, #14]
    3698:	7bbb      	ldrb	r3, [r7, #14]
    369a:	2b07      	cmp	r3, #7
    369c:	d9e8      	bls.n	3670 <text_scroller+0x5c>
    369e:	687b      	ldr	r3, [r7, #4]
    36a0:	1c5a      	adds	r2, r3, #1
    36a2:	607a      	str	r2, [r7, #4]
    36a4:	781b      	ldrb	r3, [r3, #0]
    36a6:	73fb      	strb	r3, [r7, #15]
    36a8:	7bfb      	ldrb	r3, [r7, #15]
    36aa:	2b00      	cmp	r3, #0
    36ac:	d1c3      	bne.n	3636 <text_scroller+0x22>
    36ae:	2300      	movs	r3, #0
    36b0:	73fb      	strb	r3, [r7, #15]
    36b2:	e013      	b.n	36dc <text_scroller+0xc8>
    36b4:	78fb      	ldrb	r3, [r7, #3]
    36b6:	4a15      	ldr	r2, [pc, #84]	; (370c <text_scroller+0xf8>)
    36b8:	6013      	str	r3, [r2, #0]
    36ba:	bf00      	nop
    36bc:	4b13      	ldr	r3, [pc, #76]	; (370c <text_scroller+0xf8>)
    36be:	681b      	ldr	r3, [r3, #0]
    36c0:	2b00      	cmp	r3, #0
    36c2:	d1fb      	bne.n	36bc <text_scroller+0xa8>
    36c4:	2001      	movs	r0, #1
    36c6:	f7fe fa75 	bl	1bb4 <gfx_scrollup>
    36ca:	4b0f      	ldr	r3, [pc, #60]	; (3708 <text_scroller+0xf4>)
    36cc:	881b      	ldrh	r3, [r3, #0]
    36ce:	b29b      	uxth	r3, r3
    36d0:	b21b      	sxth	r3, r3
    36d2:	2b00      	cmp	r3, #0
    36d4:	da0a      	bge.n	36ec <text_scroller+0xd8>
    36d6:	7bfb      	ldrb	r3, [r7, #15]
    36d8:	3301      	adds	r3, #1
    36da:	73fb      	strb	r3, [r7, #15]
    36dc:	7bfb      	ldrb	r3, [r7, #15]
    36de:	2b1f      	cmp	r3, #31
    36e0:	d9e8      	bls.n	36b4 <text_scroller+0xa0>
    36e2:	e004      	b.n	36ee <text_scroller+0xda>
    36e4:	bf00      	nop
    36e6:	e002      	b.n	36ee <text_scroller+0xda>
    36e8:	bf00      	nop
    36ea:	e000      	b.n	36ee <text_scroller+0xda>
    36ec:	bf00      	nop
    36ee:	f7fe fa47 	bl	1b80 <gfx_cls>
    36f2:	bf00      	nop
    36f4:	4b04      	ldr	r3, [pc, #16]	; (3708 <text_scroller+0xf4>)
    36f6:	881b      	ldrh	r3, [r3, #0]
    36f8:	b29b      	uxth	r3, r3
    36fa:	b21b      	sxth	r3, r3
    36fc:	2b00      	cmp	r3, #0
    36fe:	daf9      	bge.n	36f4 <text_scroller+0xe0>
    3700:	bf00      	nop
    3702:	3710      	adds	r7, #16
    3704:	46bd      	mov	sp, r7
    3706:	bd80      	pop	{r7, pc}
    3708:	200014fc 	.word	0x200014fc
    370c:	200004ec 	.word	0x200004ec

00003710 <prompt_btn>:
    3710:	b580      	push	{r7, lr}
    3712:	af00      	add	r7, sp, #0
    3714:	4802      	ldr	r0, [pc, #8]	; (3720 <prompt_btn+0x10>)
    3716:	f7ff fea7 	bl	3468 <print>
    371a:	bf00      	nop
    371c:	bd80      	pop	{r7, pc}
    371e:	bf00      	nop
    3720:	000041c4 	.word	0x000041c4

00003724 <clear_screen>:
    3724:	b580      	push	{r7, lr}
    3726:	af00      	add	r7, sp, #0
    3728:	f7fe fa2a 	bl	1b80 <gfx_cls>
    372c:	4b03      	ldr	r3, [pc, #12]	; (373c <clear_screen+0x18>)
    372e:	2200      	movs	r2, #0
    3730:	701a      	strb	r2, [r3, #0]
    3732:	4b03      	ldr	r3, [pc, #12]	; (3740 <clear_screen+0x1c>)
    3734:	2200      	movs	r2, #0
    3736:	701a      	strb	r2, [r3, #0]
    3738:	bf00      	nop
    373a:	bd80      	pop	{r7, pc}
    373c:	200004f0 	.word	0x200004f0
    3740:	200004f1 	.word	0x200004f1

00003744 <tvout_init>:
    3744:	b580      	push	{r7, lr}
    3746:	af00      	add	r7, sp, #0
    3748:	2003      	movs	r0, #3
    374a:	f000 fa37 	bl	3bbc <set_palette>
    374e:	4b45      	ldr	r3, [pc, #276]	; (3864 <tvout_init+0x120>)
    3750:	4a45      	ldr	r2, [pc, #276]	; (3868 <tvout_init+0x124>)
    3752:	601a      	str	r2, [r3, #0]
    3754:	4b45      	ldr	r3, [pc, #276]	; (386c <tvout_init+0x128>)
    3756:	4a46      	ldr	r2, [pc, #280]	; (3870 <tvout_init+0x12c>)
    3758:	601a      	str	r2, [r3, #0]
    375a:	220a      	movs	r2, #10
    375c:	2108      	movs	r1, #8
    375e:	4841      	ldr	r0, [pc, #260]	; (3864 <tvout_init+0x120>)
    3760:	f7fe f89d 	bl	189e <config_pin>
    3764:	4b3f      	ldr	r3, [pc, #252]	; (3864 <tvout_init+0x120>)
    3766:	2200      	movs	r2, #0
    3768:	60da      	str	r2, [r3, #12]
    376a:	4a42      	ldr	r2, [pc, #264]	; (3874 <tvout_init+0x130>)
    376c:	4b41      	ldr	r3, [pc, #260]	; (3874 <tvout_init+0x130>)
    376e:	699b      	ldr	r3, [r3, #24]
    3770:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3774:	6193      	str	r3, [r2, #24]
    3776:	4b40      	ldr	r3, [pc, #256]	; (3878 <tvout_init+0x134>)
    3778:	2278      	movs	r2, #120	; 0x78
    377a:	619a      	str	r2, [r3, #24]
    377c:	4b3e      	ldr	r3, [pc, #248]	; (3878 <tvout_init+0x134>)
    377e:	2201      	movs	r2, #1
    3780:	621a      	str	r2, [r3, #32]
    3782:	4b3d      	ldr	r3, [pc, #244]	; (3878 <tvout_init+0x134>)
    3784:	2284      	movs	r2, #132	; 0x84
    3786:	601a      	str	r2, [r3, #0]
    3788:	4b3b      	ldr	r3, [pc, #236]	; (3878 <tvout_init+0x134>)
    378a:	f241 12c5 	movw	r2, #4549	; 0x11c5
    378e:	62da      	str	r2, [r3, #44]	; 0x2c
    3790:	4b39      	ldr	r3, [pc, #228]	; (3878 <tvout_init+0x134>)
    3792:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3796:	635a      	str	r2, [r3, #52]	; 0x34
    3798:	4b37      	ldr	r3, [pc, #220]	; (3878 <tvout_init+0x134>)
    379a:	f240 126d 	movw	r2, #365	; 0x16d
    379e:	639a      	str	r2, [r3, #56]	; 0x38
    37a0:	4a35      	ldr	r2, [pc, #212]	; (3878 <tvout_init+0x134>)
    37a2:	4b35      	ldr	r3, [pc, #212]	; (3878 <tvout_init+0x134>)
    37a4:	695b      	ldr	r3, [r3, #20]
    37a6:	f043 0301 	orr.w	r3, r3, #1
    37aa:	6153      	str	r3, [r2, #20]
    37ac:	4b32      	ldr	r3, [pc, #200]	; (3878 <tvout_init+0x134>)
    37ae:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    37b2:	645a      	str	r2, [r3, #68]	; 0x44
    37b4:	4b30      	ldr	r3, [pc, #192]	; (3878 <tvout_init+0x134>)
    37b6:	2200      	movs	r2, #0
    37b8:	611a      	str	r2, [r3, #16]
    37ba:	4a2f      	ldr	r2, [pc, #188]	; (3878 <tvout_init+0x134>)
    37bc:	4b2e      	ldr	r3, [pc, #184]	; (3878 <tvout_init+0x134>)
    37be:	68db      	ldr	r3, [r3, #12]
    37c0:	f043 0301 	orr.w	r3, r3, #1
    37c4:	60d3      	str	r3, [r2, #12]
    37c6:	2101      	movs	r1, #1
    37c8:	2019      	movs	r0, #25
    37ca:	f7fe fc97 	bl	20fc <set_int_priority>
    37ce:	2101      	movs	r1, #1
    37d0:	201b      	movs	r0, #27
    37d2:	f7fe fc93 	bl	20fc <set_int_priority>
    37d6:	201b      	movs	r0, #27
    37d8:	f7fe fbd6 	bl	1f88 <enable_interrupt>
    37dc:	2019      	movs	r0, #25
    37de:	f7fe fbd3 	bl	1f88 <enable_interrupt>
    37e2:	4a25      	ldr	r2, [pc, #148]	; (3878 <tvout_init+0x134>)
    37e4:	4b24      	ldr	r3, [pc, #144]	; (3878 <tvout_init+0x134>)
    37e6:	681b      	ldr	r3, [r3, #0]
    37e8:	f043 0301 	orr.w	r3, r3, #1
    37ec:	6013      	str	r3, [r2, #0]
    37ee:	220a      	movs	r2, #10
    37f0:	2100      	movs	r1, #0
    37f2:	4822      	ldr	r0, [pc, #136]	; (387c <tvout_init+0x138>)
    37f4:	f7fe f853 	bl	189e <config_pin>
    37f8:	220a      	movs	r2, #10
    37fa:	2101      	movs	r1, #1
    37fc:	481f      	ldr	r0, [pc, #124]	; (387c <tvout_init+0x138>)
    37fe:	f7fe f84e 	bl	189e <config_pin>
    3802:	4a1c      	ldr	r2, [pc, #112]	; (3874 <tvout_init+0x130>)
    3804:	4b1b      	ldr	r3, [pc, #108]	; (3874 <tvout_init+0x130>)
    3806:	69db      	ldr	r3, [r3, #28]
    3808:	f043 0302 	orr.w	r3, r3, #2
    380c:	61d3      	str	r3, [r2, #28]
    380e:	4b1c      	ldr	r3, [pc, #112]	; (3880 <tvout_init+0x13c>)
    3810:	f246 0278 	movw	r2, #24696	; 0x6078
    3814:	61da      	str	r2, [r3, #28]
    3816:	4b1a      	ldr	r3, [pc, #104]	; (3880 <tvout_init+0x13c>)
    3818:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    381c:	621a      	str	r2, [r3, #32]
    381e:	4b18      	ldr	r3, [pc, #96]	; (3880 <tvout_init+0x13c>)
    3820:	2284      	movs	r2, #132	; 0x84
    3822:	601a      	str	r2, [r3, #0]
    3824:	4b16      	ldr	r3, [pc, #88]	; (3880 <tvout_init+0x13c>)
    3826:	2213      	movs	r2, #19
    3828:	62da      	str	r2, [r3, #44]	; 0x2c
    382a:	4b15      	ldr	r3, [pc, #84]	; (3880 <tvout_init+0x13c>)
    382c:	220a      	movs	r2, #10
    382e:	63da      	str	r2, [r3, #60]	; 0x3c
    3830:	4b13      	ldr	r3, [pc, #76]	; (3880 <tvout_init+0x13c>)
    3832:	220a      	movs	r2, #10
    3834:	641a      	str	r2, [r3, #64]	; 0x40
    3836:	4a12      	ldr	r2, [pc, #72]	; (3880 <tvout_init+0x13c>)
    3838:	4b11      	ldr	r3, [pc, #68]	; (3880 <tvout_init+0x13c>)
    383a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    383c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3840:	6453      	str	r3, [r2, #68]	; 0x44
    3842:	4a0f      	ldr	r2, [pc, #60]	; (3880 <tvout_init+0x13c>)
    3844:	4b0e      	ldr	r3, [pc, #56]	; (3880 <tvout_init+0x13c>)
    3846:	695b      	ldr	r3, [r3, #20]
    3848:	f043 0301 	orr.w	r3, r3, #1
    384c:	6153      	str	r3, [r2, #20]
    384e:	4b0c      	ldr	r3, [pc, #48]	; (3880 <tvout_init+0x13c>)
    3850:	2200      	movs	r2, #0
    3852:	611a      	str	r2, [r3, #16]
    3854:	4a0a      	ldr	r2, [pc, #40]	; (3880 <tvout_init+0x13c>)
    3856:	4b0a      	ldr	r3, [pc, #40]	; (3880 <tvout_init+0x13c>)
    3858:	681b      	ldr	r3, [r3, #0]
    385a:	f043 0301 	orr.w	r3, r3, #1
    385e:	6013      	str	r3, [r2, #0]
    3860:	bf00      	nop
    3862:	bd80      	pop	{r7, pc}
    3864:	40010800 	.word	0x40010800
    3868:	88883333 	.word	0x88883333
    386c:	40010804 	.word	0x40010804
    3870:	88444444 	.word	0x88444444
    3874:	40021000 	.word	0x40021000
    3878:	40012c00 	.word	0x40012c00
    387c:	40010c00 	.word	0x40010c00
    3880:	40000400 	.word	0x40000400

00003884 <TV_OUT_handler>:
    3884:	4668      	mov	r0, sp
    3886:	f020 0107 	bic.w	r1, r0, #7
    388a:	468d      	mov	sp, r1
    388c:	b411      	push	{r0, r4}
    388e:	4a30      	ldr	r2, [pc, #192]	; (3950 <TV_OUT_handler+0xcc>)
    3890:	6a13      	ldr	r3, [r2, #32]
    3892:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3896:	6213      	str	r3, [r2, #32]
    3898:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    389c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    389e:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    38a2:	d3fb      	bcc.n	389c <TV_OUT_handler+0x18>
    38a4:	4a2a      	ldr	r2, [pc, #168]	; (3950 <TV_OUT_handler+0xcc>)
    38a6:	6a13      	ldr	r3, [r2, #32]
    38a8:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    38ac:	6213      	str	r3, [r2, #32]
    38ae:	4b29      	ldr	r3, [pc, #164]	; (3954 <TV_OUT_handler+0xd0>)
    38b0:	881b      	ldrh	r3, [r3, #0]
    38b2:	f013 0f04 	tst.w	r3, #4
    38b6:	d042      	beq.n	393e <TV_OUT_handler+0xba>
    38b8:	4927      	ldr	r1, [pc, #156]	; (3958 <TV_OUT_handler+0xd4>)
    38ba:	f240 32c5 	movw	r2, #965	; 0x3c5
    38be:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    38c0:	4293      	cmp	r3, r2
    38c2:	d9fc      	bls.n	38be <TV_OUT_handler+0x3a>
    38c4:	4a25      	ldr	r2, [pc, #148]	; (395c <TV_OUT_handler+0xd8>)
    38c6:	8813      	ldrh	r3, [r2, #0]
    38c8:	f3c3 034e 	ubfx	r3, r3, #1, #15
    38cc:	4924      	ldr	r1, [pc, #144]	; (3960 <TV_OUT_handler+0xdc>)
    38ce:	205a      	movs	r0, #90	; 0x5a
    38d0:	fb00 1303 	mla	r3, r0, r3, r1
    38d4:	8812      	ldrh	r2, [r2, #0]
    38d6:	491e      	ldr	r1, [pc, #120]	; (3950 <TV_OUT_handler+0xcc>)
    38d8:	6a08      	ldr	r0, [r1, #32]
    38da:	f3c2 024e 	ubfx	r2, r2, #1, #15
    38de:	4c21      	ldr	r4, [pc, #132]	; (3964 <TV_OUT_handler+0xe0>)
    38e0:	5ca4      	ldrb	r4, [r4, r2]
    38e2:	4a21      	ldr	r2, [pc, #132]	; (3968 <TV_OUT_handler+0xe4>)
    38e4:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    38e8:	4302      	orrs	r2, r0
    38ea:	620a      	str	r2, [r1, #32]
    38ec:	f103 005a 	add.w	r0, r3, #90	; 0x5a
    38f0:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    38f4:	310c      	adds	r1, #12
    38f6:	781a      	ldrb	r2, [r3, #0]
    38f8:	0912      	lsrs	r2, r2, #4
    38fa:	800a      	strh	r2, [r1, #0]
    38fc:	bf00      	nop
    38fe:	bf00      	nop
    3900:	bf00      	nop
    3902:	bf00      	nop
    3904:	bf00      	nop
    3906:	bf00      	nop
    3908:	bf00      	nop
    390a:	bf00      	nop
    390c:	bf00      	nop
    390e:	bf00      	nop
    3910:	bf00      	nop
    3912:	f813 2b01 	ldrb.w	r2, [r3], #1
    3916:	f002 020f 	and.w	r2, r2, #15
    391a:	800a      	strh	r2, [r1, #0]
    391c:	bf00      	nop
    391e:	bf00      	nop
    3920:	bf00      	nop
    3922:	bf00      	nop
    3924:	bf00      	nop
    3926:	bf00      	nop
    3928:	bf00      	nop
    392a:	4298      	cmp	r0, r3
    392c:	d1e3      	bne.n	38f6 <TV_OUT_handler+0x72>
    392e:	2200      	movs	r2, #0
    3930:	4b0e      	ldr	r3, [pc, #56]	; (396c <TV_OUT_handler+0xe8>)
    3932:	60da      	str	r2, [r3, #12]
    3934:	4a06      	ldr	r2, [pc, #24]	; (3950 <TV_OUT_handler+0xcc>)
    3936:	6a13      	ldr	r3, [r2, #32]
    3938:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    393c:	6213      	str	r3, [r2, #32]
    393e:	4a06      	ldr	r2, [pc, #24]	; (3958 <TV_OUT_handler+0xd4>)
    3940:	6913      	ldr	r3, [r2, #16]
    3942:	f023 0304 	bic.w	r3, r3, #4
    3946:	6113      	str	r3, [r2, #16]
    3948:	bc11      	pop	{r0, r4}
    394a:	4685      	mov	sp, r0
    394c:	4770      	bx	lr
    394e:	bf00      	nop
    3950:	40000400 	.word	0x40000400
    3954:	200004f4 	.word	0x200004f4
    3958:	40012c00 	.word	0x40012c00
    395c:	200004f6 	.word	0x200004f6
    3960:	20001500 	.word	0x20001500
    3964:	20003c60 	.word	0x20003c60
    3968:	000041d4 	.word	0x000041d4
    396c:	40010800 	.word	0x40010800

00003970 <TV_SYNC_handler>:
    3970:	4668      	mov	r0, sp
    3972:	f020 0107 	bic.w	r1, r0, #7
    3976:	468d      	mov	sp, r1
    3978:	b401      	push	{r0}
    397a:	4a81      	ldr	r2, [pc, #516]	; (3b80 <TV_SYNC_handler+0x210>)
    397c:	8813      	ldrh	r3, [r2, #0]
    397e:	3301      	adds	r3, #1
    3980:	b29b      	uxth	r3, r3
    3982:	8013      	strh	r3, [r2, #0]
    3984:	4b7f      	ldr	r3, [pc, #508]	; (3b84 <TV_SYNC_handler+0x214>)
    3986:	881b      	ldrh	r3, [r3, #0]
    3988:	b29b      	uxth	r3, r3
    398a:	2b07      	cmp	r3, #7
    398c:	f200 808e 	bhi.w	3aac <TV_SYNC_handler+0x13c>
    3990:	e8df f013 	tbh	[pc, r3, lsl #1]
    3994:	002a0008 	.word	0x002a0008
    3998:	006c004a 	.word	0x006c004a
    399c:	00a30094 	.word	0x00a30094
    39a0:	00ce00b7 	.word	0x00ce00b7
    39a4:	4b78      	ldr	r3, [pc, #480]	; (3b88 <TV_SYNC_handler+0x218>)
    39a6:	881b      	ldrh	r3, [r3, #0]
    39a8:	b29b      	uxth	r3, r3
    39aa:	b18b      	cbz	r3, 39d0 <TV_SYNC_handler+0x60>
    39ac:	4a76      	ldr	r2, [pc, #472]	; (3b88 <TV_SYNC_handler+0x218>)
    39ae:	8813      	ldrh	r3, [r2, #0]
    39b0:	3301      	adds	r3, #1
    39b2:	b29b      	uxth	r3, r3
    39b4:	8013      	strh	r3, [r2, #0]
    39b6:	8813      	ldrh	r3, [r2, #0]
    39b8:	b29b      	uxth	r3, r3
    39ba:	2b06      	cmp	r3, #6
    39bc:	d176      	bne.n	3aac <TV_SYNC_handler+0x13c>
    39be:	2200      	movs	r2, #0
    39c0:	4b71      	ldr	r3, [pc, #452]	; (3b88 <TV_SYNC_handler+0x218>)
    39c2:	801a      	strh	r2, [r3, #0]
    39c4:	4a6f      	ldr	r2, [pc, #444]	; (3b84 <TV_SYNC_handler+0x214>)
    39c6:	8813      	ldrh	r3, [r2, #0]
    39c8:	3301      	adds	r3, #1
    39ca:	b29b      	uxth	r3, r3
    39cc:	8013      	strh	r3, [r2, #0]
    39ce:	e06d      	b.n	3aac <TV_SYNC_handler+0x13c>
    39d0:	4b6e      	ldr	r3, [pc, #440]	; (3b8c <TV_SYNC_handler+0x21c>)
    39d2:	f640 02e2 	movw	r2, #2274	; 0x8e2
    39d6:	62da      	str	r2, [r3, #44]	; 0x2c
    39d8:	22a4      	movs	r2, #164	; 0xa4
    39da:	635a      	str	r2, [r3, #52]	; 0x34
    39dc:	4a6a      	ldr	r2, [pc, #424]	; (3b88 <TV_SYNC_handler+0x218>)
    39de:	8813      	ldrh	r3, [r2, #0]
    39e0:	3301      	adds	r3, #1
    39e2:	b29b      	uxth	r3, r3
    39e4:	8013      	strh	r3, [r2, #0]
    39e6:	e061      	b.n	3aac <TV_SYNC_handler+0x13c>
    39e8:	4b67      	ldr	r3, [pc, #412]	; (3b88 <TV_SYNC_handler+0x218>)
    39ea:	881b      	ldrh	r3, [r3, #0]
    39ec:	b29b      	uxth	r3, r3
    39ee:	b18b      	cbz	r3, 3a14 <TV_SYNC_handler+0xa4>
    39f0:	4a65      	ldr	r2, [pc, #404]	; (3b88 <TV_SYNC_handler+0x218>)
    39f2:	8813      	ldrh	r3, [r2, #0]
    39f4:	3301      	adds	r3, #1
    39f6:	b29b      	uxth	r3, r3
    39f8:	8013      	strh	r3, [r2, #0]
    39fa:	8813      	ldrh	r3, [r2, #0]
    39fc:	b29b      	uxth	r3, r3
    39fe:	2b06      	cmp	r3, #6
    3a00:	d154      	bne.n	3aac <TV_SYNC_handler+0x13c>
    3a02:	2200      	movs	r2, #0
    3a04:	4b60      	ldr	r3, [pc, #384]	; (3b88 <TV_SYNC_handler+0x218>)
    3a06:	801a      	strh	r2, [r3, #0]
    3a08:	4a5e      	ldr	r2, [pc, #376]	; (3b84 <TV_SYNC_handler+0x214>)
    3a0a:	8813      	ldrh	r3, [r2, #0]
    3a0c:	3301      	adds	r3, #1
    3a0e:	b29b      	uxth	r3, r3
    3a10:	8013      	strh	r3, [r2, #0]
    3a12:	e04b      	b.n	3aac <TV_SYNC_handler+0x13c>
    3a14:	f240 7294 	movw	r2, #1940	; 0x794
    3a18:	4b5c      	ldr	r3, [pc, #368]	; (3b8c <TV_SYNC_handler+0x21c>)
    3a1a:	635a      	str	r2, [r3, #52]	; 0x34
    3a1c:	4a5a      	ldr	r2, [pc, #360]	; (3b88 <TV_SYNC_handler+0x218>)
    3a1e:	8813      	ldrh	r3, [r2, #0]
    3a20:	3301      	adds	r3, #1
    3a22:	b29b      	uxth	r3, r3
    3a24:	8013      	strh	r3, [r2, #0]
    3a26:	e041      	b.n	3aac <TV_SYNC_handler+0x13c>
    3a28:	4b57      	ldr	r3, [pc, #348]	; (3b88 <TV_SYNC_handler+0x218>)
    3a2a:	881b      	ldrh	r3, [r3, #0]
    3a2c:	b29b      	uxth	r3, r3
    3a2e:	b153      	cbz	r3, 3a46 <TV_SYNC_handler+0xd6>
    3a30:	4b55      	ldr	r3, [pc, #340]	; (3b88 <TV_SYNC_handler+0x218>)
    3a32:	881b      	ldrh	r3, [r3, #0]
    3a34:	b29b      	uxth	r3, r3
    3a36:	2b06      	cmp	r3, #6
    3a38:	d00e      	beq.n	3a58 <TV_SYNC_handler+0xe8>
    3a3a:	4a53      	ldr	r2, [pc, #332]	; (3b88 <TV_SYNC_handler+0x218>)
    3a3c:	8813      	ldrh	r3, [r2, #0]
    3a3e:	3301      	adds	r3, #1
    3a40:	b29b      	uxth	r3, r3
    3a42:	8013      	strh	r3, [r2, #0]
    3a44:	e032      	b.n	3aac <TV_SYNC_handler+0x13c>
    3a46:	22a4      	movs	r2, #164	; 0xa4
    3a48:	4b50      	ldr	r3, [pc, #320]	; (3b8c <TV_SYNC_handler+0x21c>)
    3a4a:	635a      	str	r2, [r3, #52]	; 0x34
    3a4c:	4a4e      	ldr	r2, [pc, #312]	; (3b88 <TV_SYNC_handler+0x218>)
    3a4e:	8813      	ldrh	r3, [r2, #0]
    3a50:	3301      	adds	r3, #1
    3a52:	b29b      	uxth	r3, r3
    3a54:	8013      	strh	r3, [r2, #0]
    3a56:	e029      	b.n	3aac <TV_SYNC_handler+0x13c>
    3a58:	4a4a      	ldr	r2, [pc, #296]	; (3b84 <TV_SYNC_handler+0x214>)
    3a5a:	8813      	ldrh	r3, [r2, #0]
    3a5c:	3301      	adds	r3, #1
    3a5e:	b29b      	uxth	r3, r3
    3a60:	8013      	strh	r3, [r2, #0]
    3a62:	4b4b      	ldr	r3, [pc, #300]	; (3b90 <TV_SYNC_handler+0x220>)
    3a64:	881b      	ldrh	r3, [r3, #0]
    3a66:	f013 0f01 	tst.w	r3, #1
    3a6a:	d01f      	beq.n	3aac <TV_SYNC_handler+0x13c>
    3a6c:	4a47      	ldr	r2, [pc, #284]	; (3b8c <TV_SYNC_handler+0x21c>)
    3a6e:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3a72:	62d3      	str	r3, [r2, #44]	; 0x2c
    3a74:	f44f 73a8 	mov.w	r3, #336	; 0x150
    3a78:	6353      	str	r3, [r2, #52]	; 0x34
    3a7a:	4945      	ldr	r1, [pc, #276]	; (3b90 <TV_SYNC_handler+0x220>)
    3a7c:	880b      	ldrh	r3, [r1, #0]
    3a7e:	f023 0302 	bic.w	r3, r3, #2
    3a82:	041b      	lsls	r3, r3, #16
    3a84:	0c1b      	lsrs	r3, r3, #16
    3a86:	800b      	strh	r3, [r1, #0]
    3a88:	493d      	ldr	r1, [pc, #244]	; (3b80 <TV_SYNC_handler+0x210>)
    3a8a:	880b      	ldrh	r3, [r1, #0]
    3a8c:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3a90:	800b      	strh	r3, [r1, #0]
    3a92:	493c      	ldr	r1, [pc, #240]	; (3b84 <TV_SYNC_handler+0x214>)
    3a94:	880b      	ldrh	r3, [r1, #0]
    3a96:	3301      	adds	r3, #1
    3a98:	b29b      	uxth	r3, r3
    3a9a:	800b      	strh	r3, [r1, #0]
    3a9c:	6913      	ldr	r3, [r2, #16]
    3a9e:	f023 0304 	bic.w	r3, r3, #4
    3aa2:	6113      	str	r3, [r2, #16]
    3aa4:	68d3      	ldr	r3, [r2, #12]
    3aa6:	f043 0304 	orr.w	r3, r3, #4
    3aaa:	60d3      	str	r3, [r2, #12]
    3aac:	4a37      	ldr	r2, [pc, #220]	; (3b8c <TV_SYNC_handler+0x21c>)
    3aae:	6913      	ldr	r3, [r2, #16]
    3ab0:	f023 0301 	bic.w	r3, r3, #1
    3ab4:	6113      	str	r3, [r2, #16]
    3ab6:	bc01      	pop	{r0}
    3ab8:	4685      	mov	sp, r0
    3aba:	4770      	bx	lr
    3abc:	4b35      	ldr	r3, [pc, #212]	; (3b94 <TV_SYNC_handler+0x224>)
    3abe:	689b      	ldr	r3, [r3, #8]
    3ac0:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    3ac4:	f023 030f 	bic.w	r3, r3, #15
    3ac8:	b29b      	uxth	r3, r3
    3aca:	4a33      	ldr	r2, [pc, #204]	; (3b98 <TV_SYNC_handler+0x228>)
    3acc:	8013      	strh	r3, [r2, #0]
    3ace:	4a2d      	ldr	r2, [pc, #180]	; (3b84 <TV_SYNC_handler+0x214>)
    3ad0:	8813      	ldrh	r3, [r2, #0]
    3ad2:	3301      	adds	r3, #1
    3ad4:	b29b      	uxth	r3, r3
    3ad6:	8013      	strh	r3, [r2, #0]
    3ad8:	e7e8      	b.n	3aac <TV_SYNC_handler+0x13c>
    3ada:	4b29      	ldr	r3, [pc, #164]	; (3b80 <TV_SYNC_handler+0x210>)
    3adc:	881b      	ldrh	r3, [r3, #0]
    3ade:	b29b      	uxth	r3, r3
    3ae0:	2b16      	cmp	r3, #22
    3ae2:	d1e3      	bne.n	3aac <TV_SYNC_handler+0x13c>
    3ae4:	4a27      	ldr	r2, [pc, #156]	; (3b84 <TV_SYNC_handler+0x214>)
    3ae6:	8813      	ldrh	r3, [r2, #0]
    3ae8:	3301      	adds	r3, #1
    3aea:	b29b      	uxth	r3, r3
    3aec:	8013      	strh	r3, [r2, #0]
    3aee:	2200      	movs	r2, #0
    3af0:	4b25      	ldr	r3, [pc, #148]	; (3b88 <TV_SYNC_handler+0x218>)
    3af2:	801a      	strh	r2, [r3, #0]
    3af4:	4a26      	ldr	r2, [pc, #152]	; (3b90 <TV_SYNC_handler+0x220>)
    3af6:	8813      	ldrh	r3, [r2, #0]
    3af8:	b29b      	uxth	r3, r3
    3afa:	f043 0304 	orr.w	r3, r3, #4
    3afe:	8013      	strh	r3, [r2, #0]
    3b00:	e7d4      	b.n	3aac <TV_SYNC_handler+0x13c>
    3b02:	4a21      	ldr	r2, [pc, #132]	; (3b88 <TV_SYNC_handler+0x218>)
    3b04:	8813      	ldrh	r3, [r2, #0]
    3b06:	3301      	adds	r3, #1
    3b08:	b29b      	uxth	r3, r3
    3b0a:	8013      	strh	r3, [r2, #0]
    3b0c:	4b1c      	ldr	r3, [pc, #112]	; (3b80 <TV_SYNC_handler+0x210>)
    3b0e:	881b      	ldrh	r3, [r3, #0]
    3b10:	b29b      	uxth	r3, r3
    3b12:	2bf6      	cmp	r3, #246	; 0xf6
    3b14:	d1ca      	bne.n	3aac <TV_SYNC_handler+0x13c>
    3b16:	4a1b      	ldr	r2, [pc, #108]	; (3b84 <TV_SYNC_handler+0x214>)
    3b18:	8813      	ldrh	r3, [r2, #0]
    3b1a:	3301      	adds	r3, #1
    3b1c:	b29b      	uxth	r3, r3
    3b1e:	8013      	strh	r3, [r2, #0]
    3b20:	4a1b      	ldr	r2, [pc, #108]	; (3b90 <TV_SYNC_handler+0x220>)
    3b22:	8813      	ldrh	r3, [r2, #0]
    3b24:	f023 0304 	bic.w	r3, r3, #4
    3b28:	041b      	lsls	r3, r3, #16
    3b2a:	0c1b      	lsrs	r3, r3, #16
    3b2c:	8013      	strh	r3, [r2, #0]
    3b2e:	e7bd      	b.n	3aac <TV_SYNC_handler+0x13c>
    3b30:	4b13      	ldr	r3, [pc, #76]	; (3b80 <TV_SYNC_handler+0x210>)
    3b32:	881b      	ldrh	r3, [r3, #0]
    3b34:	b29b      	uxth	r3, r3
    3b36:	f240 1207 	movw	r2, #263	; 0x107
    3b3a:	4293      	cmp	r3, r2
    3b3c:	d1b6      	bne.n	3aac <TV_SYNC_handler+0x13c>
    3b3e:	4b14      	ldr	r3, [pc, #80]	; (3b90 <TV_SYNC_handler+0x220>)
    3b40:	881b      	ldrh	r3, [r3, #0]
    3b42:	f013 0f01 	tst.w	r3, #1
    3b46:	d003      	beq.n	3b50 <TV_SYNC_handler+0x1e0>
    3b48:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3b4c:	4b0f      	ldr	r3, [pc, #60]	; (3b8c <TV_SYNC_handler+0x21c>)
    3b4e:	62da      	str	r2, [r3, #44]	; 0x2c
    3b50:	4a0f      	ldr	r2, [pc, #60]	; (3b90 <TV_SYNC_handler+0x220>)
    3b52:	8813      	ldrh	r3, [r2, #0]
    3b54:	b29b      	uxth	r3, r3
    3b56:	f083 0301 	eor.w	r3, r3, #1
    3b5a:	8013      	strh	r3, [r2, #0]
    3b5c:	8813      	ldrh	r3, [r2, #0]
    3b5e:	b29b      	uxth	r3, r3
    3b60:	f043 0302 	orr.w	r3, r3, #2
    3b64:	8013      	strh	r3, [r2, #0]
    3b66:	2300      	movs	r3, #0
    3b68:	4a05      	ldr	r2, [pc, #20]	; (3b80 <TV_SYNC_handler+0x210>)
    3b6a:	8013      	strh	r3, [r2, #0]
    3b6c:	4a06      	ldr	r2, [pc, #24]	; (3b88 <TV_SYNC_handler+0x218>)
    3b6e:	8013      	strh	r3, [r2, #0]
    3b70:	4a04      	ldr	r2, [pc, #16]	; (3b84 <TV_SYNC_handler+0x214>)
    3b72:	8013      	strh	r3, [r2, #0]
    3b74:	4a05      	ldr	r2, [pc, #20]	; (3b8c <TV_SYNC_handler+0x21c>)
    3b76:	68d3      	ldr	r3, [r2, #12]
    3b78:	f023 0304 	bic.w	r3, r3, #4
    3b7c:	60d3      	str	r3, [r2, #12]
    3b7e:	e795      	b.n	3aac <TV_SYNC_handler+0x13c>
    3b80:	200004f8 	.word	0x200004f8
    3b84:	200004f2 	.word	0x200004f2
    3b88:	200004f6 	.word	0x200004f6
    3b8c:	40012c00 	.word	0x40012c00
    3b90:	200004f4 	.word	0x200004f4
    3b94:	40010800 	.word	0x40010800
    3b98:	200014fc 	.word	0x200014fc

00003b9c <frame_sync>:
    3b9c:	b480      	push	{r7}
    3b9e:	af00      	add	r7, sp, #0
    3ba0:	bf00      	nop
    3ba2:	4b05      	ldr	r3, [pc, #20]	; (3bb8 <frame_sync+0x1c>)
    3ba4:	881b      	ldrh	r3, [r3, #0]
    3ba6:	b29b      	uxth	r3, r3
    3ba8:	f003 0302 	and.w	r3, r3, #2
    3bac:	2b00      	cmp	r3, #0
    3bae:	d0f8      	beq.n	3ba2 <frame_sync+0x6>
    3bb0:	bf00      	nop
    3bb2:	46bd      	mov	sp, r7
    3bb4:	bc80      	pop	{r7}
    3bb6:	4770      	bx	lr
    3bb8:	200004f4 	.word	0x200004f4

00003bbc <set_palette>:
    3bbc:	b480      	push	{r7}
    3bbe:	b085      	sub	sp, #20
    3bc0:	af00      	add	r7, sp, #0
    3bc2:	4603      	mov	r3, r0
    3bc4:	71fb      	strb	r3, [r7, #7]
    3bc6:	79fb      	ldrb	r3, [r7, #7]
    3bc8:	f003 0303 	and.w	r3, r3, #3
    3bcc:	71fb      	strb	r3, [r7, #7]
    3bce:	2300      	movs	r3, #0
    3bd0:	60fb      	str	r3, [r7, #12]
    3bd2:	e007      	b.n	3be4 <set_palette+0x28>
    3bd4:	4a07      	ldr	r2, [pc, #28]	; (3bf4 <set_palette+0x38>)
    3bd6:	68fb      	ldr	r3, [r7, #12]
    3bd8:	4413      	add	r3, r2
    3bda:	79fa      	ldrb	r2, [r7, #7]
    3bdc:	701a      	strb	r2, [r3, #0]
    3bde:	68fb      	ldr	r3, [r7, #12]
    3be0:	3301      	adds	r3, #1
    3be2:	60fb      	str	r3, [r7, #12]
    3be4:	68fb      	ldr	r3, [r7, #12]
    3be6:	2b6f      	cmp	r3, #111	; 0x6f
    3be8:	ddf4      	ble.n	3bd4 <set_palette+0x18>
    3bea:	bf00      	nop
    3bec:	3714      	adds	r7, #20
    3bee:	46bd      	mov	sp, r7
    3bf0:	bc80      	pop	{r7}
    3bf2:	4770      	bx	lr
    3bf4:	20003c60 	.word	0x20003c60

00003bf8 <btn_wait_any>:
    3bf8:	b480      	push	{r7}
    3bfa:	af00      	add	r7, sp, #0
    3bfc:	bf00      	nop
    3bfe:	4b0a      	ldr	r3, [pc, #40]	; (3c28 <btn_wait_any+0x30>)
    3c00:	881b      	ldrh	r3, [r3, #0]
    3c02:	b29b      	uxth	r3, r3
    3c04:	461a      	mov	r2, r3
    3c06:	f24c 03f0 	movw	r3, #49392	; 0xc0f0
    3c0a:	4013      	ands	r3, r2
    3c0c:	f24c 02f0 	movw	r2, #49392	; 0xc0f0
    3c10:	4293      	cmp	r3, r2
    3c12:	d0f4      	beq.n	3bfe <btn_wait_any+0x6>
    3c14:	4b04      	ldr	r3, [pc, #16]	; (3c28 <btn_wait_any+0x30>)
    3c16:	881b      	ldrh	r3, [r3, #0]
    3c18:	b29b      	uxth	r3, r3
    3c1a:	43db      	mvns	r3, r3
    3c1c:	b29b      	uxth	r3, r3
    3c1e:	4618      	mov	r0, r3
    3c20:	46bd      	mov	sp, r7
    3c22:	bc80      	pop	{r7}
    3c24:	4770      	bx	lr
    3c26:	bf00      	nop
    3c28:	200014fc 	.word	0x200014fc
