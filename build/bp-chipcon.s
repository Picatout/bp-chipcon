
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 9d 35 00 00     C...I...O....5..
      20:	9d 35 00 00 9d 35 00 00 9d 35 00 00 55 02 00 00     .5...5...5..U...
      30:	9d 35 00 00 9d 35 00 00 5b 02 00 00 85 36 00 00     .5...5..[....6..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 d5 32 00 00     g...m...y....2..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 9d 35 00 00 9d 35 00 00 b5 02 00 00     .....5...5......
      80:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..
      90:	9d 35 00 00 9d 35 00 00 9d 35 00 00 bb 02 00 00     .5...5...5......
      a0:	9d 35 00 00 09 3f 00 00 9d 35 00 00 b5 3d 00 00     .5...?...5...=..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 9d 35 00 00     .............5..
      c0:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..
      d0:	9d 35 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .5..............
      e0:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..
      f0:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..
     100:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..
     110:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..
     120:	9d 35 00 00 9d 35 00 00 9d 35 00 00 9d 35 00 00     .5...5...5...5..

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
     18e:	f002 f8d7 	bl	2340 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005e 	.word	0x2000005e
     1a0:	20004cb4 	.word	0x20004cb4
     1a4:	00004c00 	.word	0x00004c00
     1a8:	20000000 	.word	0x20000000
     1ac:	2000005e 	.word	0x2000005e
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
     1dc:	f003 f9e6 	bl	35ac <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 f9da 	bl	35ac <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 f9ce 	bl	35ac <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 f9c9 	bl	35ac <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	000047a0 	.word	0x000047a0
     230:	000047b8 	.word	0x000047b8
     234:	000047c4 	.word	0x000047c4
     238:	000047d4 	.word	0x000047d4

0000023c <NMI_handler>:
     23c:	f003 f9ae 	bl	359c <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 f9ab 	bl	359c <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 f9a8 	bl	359c <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 f9a5 	bl	359c <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 f9a2 	bl	359c <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 f99f 	bl	359c <reset_mcu>
     25e:	bf00      	nop
     260:	f003 f99c 	bl	359c <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 f999 	bl	359c <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 f996 	bl	359c <reset_mcu>
     270:	bf00      	nop
     272:	f003 f993 	bl	359c <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 f990 	bl	359c <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 f98d 	bl	359c <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 f98a 	bl	359c <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 f987 	bl	359c <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 f984 	bl	359c <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 f981 	bl	359c <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 f97e 	bl	359c <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 f97b 	bl	359c <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 f978 	bl	359c <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 f975 	bl	359c <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 f972 	bl	359c <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 f96f 	bl	359c <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 f96c 	bl	359c <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 f969 	bl	359c <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 f966 	bl	359c <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 f963 	bl	359c <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 f960 	bl	359c <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 f95d 	bl	359c <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 f95a 	bl	359c <reset_mcu>
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
     3c8:	f003 f9a8 	bl	371c <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 f995 	bl	36fc <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fadc 	bl	3990 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fad9 	bl	3990 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 faf5 	bl	39d6 <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 faee 	bl	39d6 <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 fae7 	bl	39d6 <print_int>
     408:	f003 f988 	bl	371c <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fabf 	bl	3990 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fadc 	bl	39d6 <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fab6 	bl	3990 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fad3 	bl	39d6 <print_int>
     430:	f003 f974 	bl	371c <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 faab 	bl	3990 <print>
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
     44e:	f003 fac2 	bl	39d6 <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 f95d 	bl	371c <new_line>
     462:	f003 fbef 	bl	3c44 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	000041ec 	.word	0x000041ec
     474:	20000060 	.word	0x20000060
     478:	000041f0 	.word	0x000041f0
     47c:	000041f4 	.word	0x000041f4
     480:	000041fc 	.word	0x000041fc

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
     724:	f003 fa98 	bl	3c58 <clear_screen>
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
     848:	20000060 	.word	0x20000060
     84c:	20000500 	.word	0x20000500
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
     afc:	20000060 	.word	0x20000060
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
     b1e:	f002 fded 	bl	36fc <select_font>
     b22:	7bbb      	ldrb	r3, [r7, #14]
     b24:	4a99      	ldr	r2, [pc, #612]	; (d8c <schipp+0x80c>)
     b26:	4413      	add	r3, r2
     b28:	7958      	ldrb	r0, [r3, #5]
     b2a:	7b7b      	ldrb	r3, [r7, #13]
     b2c:	4a97      	ldr	r2, [pc, #604]	; (d8c <schipp+0x80c>)
     b2e:	4413      	add	r3, r2
     b30:	795b      	ldrb	r3, [r3, #5]
     b32:	4619      	mov	r1, r3
     b34:	f002 ff00 	bl	3938 <set_cursor>
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
     b52:	f002 fe65 	bl	3820 <put_char>
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
     d8c:	20000060 	.word	0x20000060
     d90:	20000500 	.word	0x20000500
     d94:	4ba5      	ldr	r3, [pc, #660]	; (102c <schipp+0xaac>)
     d96:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d9a:	f003 030f 	and.w	r3, r3, #15
     d9e:	73fb      	strb	r3, [r7, #15]
     da0:	7bfb      	ldrb	r3, [r7, #15]
     da2:	2b00      	cmp	r3, #0
     da4:	d11b      	bne.n	dde <schipp+0x85e>
     da6:	4ba1      	ldr	r3, [pc, #644]	; (102c <schipp+0xaac>)
     da8:	885b      	ldrh	r3, [r3, #2]
     daa:	4aa1      	ldr	r2, [pc, #644]	; (1030 <schipp+0xab0>)
     dac:	2120      	movs	r1, #32
     dae:	4618      	mov	r0, r3
     db0:	f7ff fb92 	bl	4d8 <load_block>
     db4:	7bbb      	ldrb	r3, [r7, #14]
     db6:	4a9d      	ldr	r2, [pc, #628]	; (102c <schipp+0xaac>)
     db8:	4413      	add	r3, r2
     dba:	795b      	ldrb	r3, [r3, #5]
     dbc:	b25b      	sxtb	r3, r3
     dbe:	4618      	mov	r0, r3
     dc0:	7b7b      	ldrb	r3, [r7, #13]
     dc2:	4a9a      	ldr	r2, [pc, #616]	; (102c <schipp+0xaac>)
     dc4:	4413      	add	r3, r2
     dc6:	795b      	ldrb	r3, [r3, #5]
     dc8:	b25b      	sxtb	r3, r3
     dca:	4619      	mov	r1, r3
     dcc:	4b98      	ldr	r3, [pc, #608]	; (1030 <schipp+0xab0>)
     dce:	2220      	movs	r2, #32
     dd0:	f7ff fb98 	bl	504 <put_big_sprite>
     dd4:	4603      	mov	r3, r0
     dd6:	b2da      	uxtb	r2, r3
     dd8:	4b94      	ldr	r3, [pc, #592]	; (102c <schipp+0xaac>)
     dda:	751a      	strb	r2, [r3, #20]
     ddc:	e16a      	b.n	10b4 <schipp+0xb34>
     dde:	4b93      	ldr	r3, [pc, #588]	; (102c <schipp+0xaac>)
     de0:	885b      	ldrh	r3, [r3, #2]
     de2:	4618      	mov	r0, r3
     de4:	7bfb      	ldrb	r3, [r7, #15]
     de6:	4a92      	ldr	r2, [pc, #584]	; (1030 <schipp+0xab0>)
     de8:	4619      	mov	r1, r3
     dea:	f7ff fb75 	bl	4d8 <load_block>
     dee:	7bbb      	ldrb	r3, [r7, #14]
     df0:	4a8e      	ldr	r2, [pc, #568]	; (102c <schipp+0xaac>)
     df2:	4413      	add	r3, r2
     df4:	795b      	ldrb	r3, [r3, #5]
     df6:	b25b      	sxtb	r3, r3
     df8:	4618      	mov	r0, r3
     dfa:	7b7b      	ldrb	r3, [r7, #13]
     dfc:	4a8b      	ldr	r2, [pc, #556]	; (102c <schipp+0xaac>)
     dfe:	4413      	add	r3, r2
     e00:	795b      	ldrb	r3, [r3, #5]
     e02:	b25b      	sxtb	r3, r3
     e04:	4619      	mov	r1, r3
     e06:	7bfa      	ldrb	r2, [r7, #15]
     e08:	4b89      	ldr	r3, [pc, #548]	; (1030 <schipp+0xab0>)
     e0a:	9300      	str	r3, [sp, #0]
     e0c:	4613      	mov	r3, r2
     e0e:	2208      	movs	r2, #8
     e10:	f001 f850 	bl	1eb4 <gfx_sprite>
     e14:	4603      	mov	r3, r0
     e16:	b2da      	uxtb	r2, r3
     e18:	4b84      	ldr	r3, [pc, #528]	; (102c <schipp+0xaac>)
     e1a:	751a      	strb	r2, [r3, #20]
     e1c:	e14a      	b.n	10b4 <schipp+0xb34>
     e1e:	4b83      	ldr	r3, [pc, #524]	; (102c <schipp+0xaac>)
     e20:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e24:	2b9e      	cmp	r3, #158	; 0x9e
     e26:	d002      	beq.n	e2e <schipp+0x8ae>
     e28:	2ba1      	cmp	r3, #161	; 0xa1
     e2a:	d012      	beq.n	e52 <schipp+0x8d2>
     e2c:	e023      	b.n	e76 <schipp+0x8f6>
     e2e:	4b81      	ldr	r3, [pc, #516]	; (1034 <schipp+0xab4>)
     e30:	881b      	ldrh	r3, [r3, #0]
     e32:	b29b      	uxth	r3, r3
     e34:	4619      	mov	r1, r3
     e36:	7bbb      	ldrb	r3, [r7, #14]
     e38:	4a7c      	ldr	r2, [pc, #496]	; (102c <schipp+0xaac>)
     e3a:	4413      	add	r3, r2
     e3c:	795b      	ldrb	r3, [r3, #5]
     e3e:	400b      	ands	r3, r1
     e40:	2b00      	cmp	r3, #0
     e42:	d11a      	bne.n	e7a <schipp+0x8fa>
     e44:	4b79      	ldr	r3, [pc, #484]	; (102c <schipp+0xaac>)
     e46:	881b      	ldrh	r3, [r3, #0]
     e48:	3302      	adds	r3, #2
     e4a:	b29a      	uxth	r2, r3
     e4c:	4b77      	ldr	r3, [pc, #476]	; (102c <schipp+0xaac>)
     e4e:	801a      	strh	r2, [r3, #0]
     e50:	e013      	b.n	e7a <schipp+0x8fa>
     e52:	4b78      	ldr	r3, [pc, #480]	; (1034 <schipp+0xab4>)
     e54:	881b      	ldrh	r3, [r3, #0]
     e56:	b29b      	uxth	r3, r3
     e58:	4619      	mov	r1, r3
     e5a:	7bbb      	ldrb	r3, [r7, #14]
     e5c:	4a73      	ldr	r2, [pc, #460]	; (102c <schipp+0xaac>)
     e5e:	4413      	add	r3, r2
     e60:	795b      	ldrb	r3, [r3, #5]
     e62:	400b      	ands	r3, r1
     e64:	2b00      	cmp	r3, #0
     e66:	d00a      	beq.n	e7e <schipp+0x8fe>
     e68:	4b70      	ldr	r3, [pc, #448]	; (102c <schipp+0xaac>)
     e6a:	881b      	ldrh	r3, [r3, #0]
     e6c:	3302      	adds	r3, #2
     e6e:	b29a      	uxth	r2, r3
     e70:	4b6e      	ldr	r3, [pc, #440]	; (102c <schipp+0xaac>)
     e72:	801a      	strh	r2, [r3, #0]
     e74:	e003      	b.n	e7e <schipp+0x8fe>
     e76:	2302      	movs	r3, #2
     e78:	e11e      	b.n	10b8 <schipp+0xb38>
     e7a:	bf00      	nop
     e7c:	e11a      	b.n	10b4 <schipp+0xb34>
     e7e:	bf00      	nop
     e80:	e118      	b.n	10b4 <schipp+0xb34>
     e82:	4b6a      	ldr	r3, [pc, #424]	; (102c <schipp+0xaac>)
     e84:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e88:	2b29      	cmp	r3, #41	; 0x29
     e8a:	d05b      	beq.n	f44 <schipp+0x9c4>
     e8c:	2b29      	cmp	r3, #41	; 0x29
     e8e:	dc0d      	bgt.n	eac <schipp+0x92c>
     e90:	2b15      	cmp	r3, #21
     e92:	d035      	beq.n	f00 <schipp+0x980>
     e94:	2b15      	cmp	r3, #21
     e96:	dc04      	bgt.n	ea2 <schipp+0x922>
     e98:	2b07      	cmp	r3, #7
     e9a:	d01b      	beq.n	ed4 <schipp+0x954>
     e9c:	2b0a      	cmp	r3, #10
     e9e:	d026      	beq.n	eee <schipp+0x96e>
     ea0:	e0fb      	b.n	109a <schipp+0xb1a>
     ea2:	2b18      	cmp	r3, #24
     ea4:	d038      	beq.n	f18 <schipp+0x998>
     ea6:	2b1e      	cmp	r3, #30
     ea8:	d040      	beq.n	f2c <schipp+0x9ac>
     eaa:	e0f6      	b.n	109a <schipp+0xb1a>
     eac:	2b55      	cmp	r3, #85	; 0x55
     eae:	f000 80a6 	beq.w	ffe <schipp+0xa7e>
     eb2:	2b55      	cmp	r3, #85	; 0x55
     eb4:	dc04      	bgt.n	ec0 <schipp+0x940>
     eb6:	2b30      	cmp	r3, #48	; 0x30
     eb8:	d058      	beq.n	f6c <schipp+0x9ec>
     eba:	2b33      	cmp	r3, #51	; 0x33
     ebc:	d06a      	beq.n	f94 <schipp+0xa14>
     ebe:	e0ec      	b.n	109a <schipp+0xb1a>
     ec0:	2b75      	cmp	r3, #117	; 0x75
     ec2:	f000 80b0 	beq.w	1026 <schipp+0xaa6>
     ec6:	2b85      	cmp	r3, #133	; 0x85
     ec8:	f000 80d3 	beq.w	1072 <schipp+0xaf2>
     ecc:	2b65      	cmp	r3, #101	; 0x65
     ece:	f000 80a0 	beq.w	1012 <schipp+0xa92>
     ed2:	e0e2      	b.n	109a <schipp+0xb1a>
     ed4:	7bbb      	ldrb	r3, [r7, #14]
     ed6:	4a58      	ldr	r2, [pc, #352]	; (1038 <schipp+0xab8>)
     ed8:	6812      	ldr	r2, [r2, #0]
     eda:	4958      	ldr	r1, [pc, #352]	; (103c <schipp+0xabc>)
     edc:	fba1 1202 	umull	r1, r2, r1, r2
     ee0:	0912      	lsrs	r2, r2, #4
     ee2:	b2d1      	uxtb	r1, r2
     ee4:	4a51      	ldr	r2, [pc, #324]	; (102c <schipp+0xaac>)
     ee6:	4413      	add	r3, r2
     ee8:	460a      	mov	r2, r1
     eea:	715a      	strb	r2, [r3, #5]
     eec:	e0d7      	b.n	109e <schipp+0xb1e>
     eee:	7bbc      	ldrb	r4, [r7, #14]
     ef0:	f003 f940 	bl	4174 <btn_wait_any>
     ef4:	4603      	mov	r3, r0
     ef6:	b2da      	uxtb	r2, r3
     ef8:	4b4c      	ldr	r3, [pc, #304]	; (102c <schipp+0xaac>)
     efa:	4423      	add	r3, r4
     efc:	715a      	strb	r2, [r3, #5]
     efe:	e0ce      	b.n	109e <schipp+0xb1e>
     f00:	7bbb      	ldrb	r3, [r7, #14]
     f02:	4a4a      	ldr	r2, [pc, #296]	; (102c <schipp+0xaac>)
     f04:	4413      	add	r3, r2
     f06:	795b      	ldrb	r3, [r3, #5]
     f08:	461a      	mov	r2, r3
     f0a:	4613      	mov	r3, r2
     f0c:	011b      	lsls	r3, r3, #4
     f0e:	4413      	add	r3, r2
     f10:	461a      	mov	r2, r3
     f12:	4b49      	ldr	r3, [pc, #292]	; (1038 <schipp+0xab8>)
     f14:	601a      	str	r2, [r3, #0]
     f16:	e0c2      	b.n	109e <schipp+0xb1e>
     f18:	7bbb      	ldrb	r3, [r7, #14]
     f1a:	4a44      	ldr	r2, [pc, #272]	; (102c <schipp+0xaac>)
     f1c:	4413      	add	r3, r2
     f1e:	795b      	ldrb	r3, [r3, #5]
     f20:	4619      	mov	r1, r3
     f22:	f240 200b 	movw	r0, #523	; 0x20b
     f26:	f7ff fab9 	bl	49c <tone>
     f2a:	e0b8      	b.n	109e <schipp+0xb1e>
     f2c:	4b3f      	ldr	r3, [pc, #252]	; (102c <schipp+0xaac>)
     f2e:	885a      	ldrh	r2, [r3, #2]
     f30:	7bbb      	ldrb	r3, [r7, #14]
     f32:	493e      	ldr	r1, [pc, #248]	; (102c <schipp+0xaac>)
     f34:	440b      	add	r3, r1
     f36:	795b      	ldrb	r3, [r3, #5]
     f38:	b29b      	uxth	r3, r3
     f3a:	4413      	add	r3, r2
     f3c:	b29a      	uxth	r2, r3
     f3e:	4b3b      	ldr	r3, [pc, #236]	; (102c <schipp+0xaac>)
     f40:	805a      	strh	r2, [r3, #2]
     f42:	e0ac      	b.n	109e <schipp+0xb1e>
     f44:	7bbb      	ldrb	r3, [r7, #14]
     f46:	4a39      	ldr	r2, [pc, #228]	; (102c <schipp+0xaac>)
     f48:	4413      	add	r3, r2
     f4a:	795b      	ldrb	r3, [r3, #5]
     f4c:	b29b      	uxth	r3, r3
     f4e:	461a      	mov	r2, r3
     f50:	0052      	lsls	r2, r2, #1
     f52:	4413      	add	r3, r2
     f54:	005b      	lsls	r3, r3, #1
     f56:	b29a      	uxth	r2, r3
     f58:	4b39      	ldr	r3, [pc, #228]	; (1040 <schipp+0xac0>)
     f5a:	b29b      	uxth	r3, r3
     f5c:	4413      	add	r3, r2
     f5e:	b29a      	uxth	r2, r3
     f60:	4b32      	ldr	r3, [pc, #200]	; (102c <schipp+0xaac>)
     f62:	805a      	strh	r2, [r3, #2]
     f64:	2000      	movs	r0, #0
     f66:	f002 fbc9 	bl	36fc <select_font>
     f6a:	e098      	b.n	109e <schipp+0xb1e>
     f6c:	7bbb      	ldrb	r3, [r7, #14]
     f6e:	4a2f      	ldr	r2, [pc, #188]	; (102c <schipp+0xaac>)
     f70:	4413      	add	r3, r2
     f72:	795b      	ldrb	r3, [r3, #5]
     f74:	b29b      	uxth	r3, r3
     f76:	461a      	mov	r2, r3
     f78:	0092      	lsls	r2, r2, #2
     f7a:	4413      	add	r3, r2
     f7c:	005b      	lsls	r3, r3, #1
     f7e:	b29a      	uxth	r2, r3
     f80:	4b30      	ldr	r3, [pc, #192]	; (1044 <schipp+0xac4>)
     f82:	b29b      	uxth	r3, r3
     f84:	4413      	add	r3, r2
     f86:	b29a      	uxth	r2, r3
     f88:	4b28      	ldr	r3, [pc, #160]	; (102c <schipp+0xaac>)
     f8a:	805a      	strh	r2, [r3, #2]
     f8c:	2001      	movs	r0, #1
     f8e:	f002 fbb5 	bl	36fc <select_font>
     f92:	e084      	b.n	109e <schipp+0xb1e>
     f94:	7bbb      	ldrb	r3, [r7, #14]
     f96:	4a25      	ldr	r2, [pc, #148]	; (102c <schipp+0xaac>)
     f98:	4413      	add	r3, r2
     f9a:	795b      	ldrb	r3, [r3, #5]
     f9c:	73fb      	strb	r3, [r7, #15]
     f9e:	7bfa      	ldrb	r2, [r7, #15]
     fa0:	4b29      	ldr	r3, [pc, #164]	; (1048 <schipp+0xac8>)
     fa2:	fba3 1302 	umull	r1, r3, r3, r2
     fa6:	08d9      	lsrs	r1, r3, #3
     fa8:	460b      	mov	r3, r1
     faa:	009b      	lsls	r3, r3, #2
     fac:	440b      	add	r3, r1
     fae:	005b      	lsls	r3, r3, #1
     fb0:	1ad3      	subs	r3, r2, r3
     fb2:	b2da      	uxtb	r2, r3
     fb4:	4b1e      	ldr	r3, [pc, #120]	; (1030 <schipp+0xab0>)
     fb6:	709a      	strb	r2, [r3, #2]
     fb8:	7bfb      	ldrb	r3, [r7, #15]
     fba:	4a23      	ldr	r2, [pc, #140]	; (1048 <schipp+0xac8>)
     fbc:	fba2 2303 	umull	r2, r3, r2, r3
     fc0:	08db      	lsrs	r3, r3, #3
     fc2:	73fb      	strb	r3, [r7, #15]
     fc4:	7bfa      	ldrb	r2, [r7, #15]
     fc6:	4b20      	ldr	r3, [pc, #128]	; (1048 <schipp+0xac8>)
     fc8:	fba3 1302 	umull	r1, r3, r3, r2
     fcc:	08d9      	lsrs	r1, r3, #3
     fce:	460b      	mov	r3, r1
     fd0:	009b      	lsls	r3, r3, #2
     fd2:	440b      	add	r3, r1
     fd4:	005b      	lsls	r3, r3, #1
     fd6:	1ad3      	subs	r3, r2, r3
     fd8:	b2da      	uxtb	r2, r3
     fda:	4b15      	ldr	r3, [pc, #84]	; (1030 <schipp+0xab0>)
     fdc:	705a      	strb	r2, [r3, #1]
     fde:	7bfb      	ldrb	r3, [r7, #15]
     fe0:	4a19      	ldr	r2, [pc, #100]	; (1048 <schipp+0xac8>)
     fe2:	fba2 2303 	umull	r2, r3, r2, r3
     fe6:	08db      	lsrs	r3, r3, #3
     fe8:	b2da      	uxtb	r2, r3
     fea:	4b11      	ldr	r3, [pc, #68]	; (1030 <schipp+0xab0>)
     fec:	701a      	strb	r2, [r3, #0]
     fee:	4b0f      	ldr	r3, [pc, #60]	; (102c <schipp+0xaac>)
     ff0:	885b      	ldrh	r3, [r3, #2]
     ff2:	4a0f      	ldr	r2, [pc, #60]	; (1030 <schipp+0xab0>)
     ff4:	2103      	movs	r1, #3
     ff6:	4618      	mov	r0, r3
     ff8:	f7ff fa79 	bl	4ee <store_block>
     ffc:	e04f      	b.n	109e <schipp+0xb1e>
     ffe:	4b0b      	ldr	r3, [pc, #44]	; (102c <schipp+0xaac>)
    1000:	885b      	ldrh	r3, [r3, #2]
    1002:	4618      	mov	r0, r3
    1004:	7bbb      	ldrb	r3, [r7, #14]
    1006:	3301      	adds	r3, #1
    1008:	4a10      	ldr	r2, [pc, #64]	; (104c <schipp+0xacc>)
    100a:	4619      	mov	r1, r3
    100c:	f7ff fa6f 	bl	4ee <store_block>
    1010:	e045      	b.n	109e <schipp+0xb1e>
    1012:	4b06      	ldr	r3, [pc, #24]	; (102c <schipp+0xaac>)
    1014:	885b      	ldrh	r3, [r3, #2]
    1016:	4618      	mov	r0, r3
    1018:	7bbb      	ldrb	r3, [r7, #14]
    101a:	3301      	adds	r3, #1
    101c:	4a0b      	ldr	r2, [pc, #44]	; (104c <schipp+0xacc>)
    101e:	4619      	mov	r1, r3
    1020:	f7ff fa5a 	bl	4d8 <load_block>
    1024:	e03b      	b.n	109e <schipp+0xb1e>
    1026:	2300      	movs	r3, #0
    1028:	73fb      	strb	r3, [r7, #15]
    102a:	e01d      	b.n	1068 <schipp+0xae8>
    102c:	20000060 	.word	0x20000060
    1030:	200000c8 	.word	0x200000c8
    1034:	20002550 	.word	0x20002550
    1038:	200004f0 	.word	0x200004f0
    103c:	f0f0f0f1 	.word	0xf0f0f0f1
    1040:	00004204 	.word	0x00004204
    1044:	00004264 	.word	0x00004264
    1048:	cccccccd 	.word	0xcccccccd
    104c:	20000065 	.word	0x20000065
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
    10c0:	20000060 	.word	0x20000060

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
    111c:	200000e8 	.word	0x200000e8
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
    121c:	200000e8 	.word	0x200000e8
    1220:	200000ea 	.word	0x200000ea

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
    1288:	200000ea 	.word	0x200000ea
    128c:	200000e8 	.word	0x200000e8

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
    13e0:	200000e8 	.word	0x200000e8

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
    13f8:	200000e8 	.word	0x200000e8

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
    141c:	200000e8 	.word	0x200000e8
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
    19fa:	f002 fbe7 	bl	41cc <get_video_params>
    19fe:	6178      	str	r0, [r7, #20]
    1a00:	68fb      	ldr	r3, [r7, #12]
    1a02:	2b00      	cmp	r3, #0
    1a04:	db0e      	blt.n	1a24 <gfx_blit+0x40>
    1a06:	697b      	ldr	r3, [r7, #20]
    1a08:	895b      	ldrh	r3, [r3, #10]
    1a0a:	461a      	mov	r2, r3
    1a0c:	68fb      	ldr	r3, [r7, #12]
    1a0e:	429a      	cmp	r2, r3
    1a10:	dd08      	ble.n	1a24 <gfx_blit+0x40>
    1a12:	68bb      	ldr	r3, [r7, #8]
    1a14:	2b00      	cmp	r3, #0
    1a16:	db05      	blt.n	1a24 <gfx_blit+0x40>
    1a18:	697b      	ldr	r3, [r7, #20]
    1a1a:	899b      	ldrh	r3, [r3, #12]
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
    1ad0:	20002554 	.word	0x20002554

00001ad4 <gfx_plot>:
    1ad4:	b5b0      	push	{r4, r5, r7, lr}
    1ad6:	b086      	sub	sp, #24
    1ad8:	af00      	add	r7, sp, #0
    1ada:	60f8      	str	r0, [r7, #12]
    1adc:	60b9      	str	r1, [r7, #8]
    1ade:	4613      	mov	r3, r2
    1ae0:	71fb      	strb	r3, [r7, #7]
    1ae2:	f002 fb73 	bl	41cc <get_video_params>
    1ae6:	6178      	str	r0, [r7, #20]
    1ae8:	68fb      	ldr	r3, [r7, #12]
    1aea:	2b00      	cmp	r3, #0
    1aec:	db39      	blt.n	1b62 <gfx_plot+0x8e>
    1aee:	697b      	ldr	r3, [r7, #20]
    1af0:	895b      	ldrh	r3, [r3, #10]
    1af2:	461a      	mov	r2, r3
    1af4:	68fb      	ldr	r3, [r7, #12]
    1af6:	429a      	cmp	r2, r3
    1af8:	dd33      	ble.n	1b62 <gfx_plot+0x8e>
    1afa:	68bb      	ldr	r3, [r7, #8]
    1afc:	2b00      	cmp	r3, #0
    1afe:	db30      	blt.n	1b62 <gfx_plot+0x8e>
    1b00:	697b      	ldr	r3, [r7, #20]
    1b02:	899b      	ldrh	r3, [r3, #12]
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
    1b6c:	20002554 	.word	0x20002554

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
    1c2a:	f001 fe85 	bl	3938 <set_cursor>
    1c2e:	bf00      	nop
    1c30:	3708      	adds	r7, #8
    1c32:	46bd      	mov	sp, r7
    1c34:	bd80      	pop	{r7, pc}
    1c36:	bf00      	nop
    1c38:	20002554 	.word	0x20002554

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
    1d08:	20002554 	.word	0x20002554

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
    1d70:	20002554 	.word	0x20002554
    1d74:	20004cb4 	.word	0x20004cb4

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
    1de0:	20002554 	.word	0x20002554

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
    1e54:	20002554 	.word	0x20002554

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
    1eb0:	20002554 	.word	0x20002554

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
    1f9a:	f002 f8db 	bl	4154 <frame_sync>
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
    1fec:	2b03      	cmp	r3, #3
    1fee:	ddd9      	ble.n	1fa4 <draw_balls+0x10>
    1ff0:	bf00      	nop
    1ff2:	370c      	adds	r7, #12
    1ff4:	46bd      	mov	sp, r7
    1ff6:	bd90      	pop	{r4, r7, pc}
    1ff8:	20002500 	.word	0x20002500

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
    2080:	f002 f8a4 	bl	41cc <get_video_params>
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
    20e8:	8952      	ldrh	r2, [r2, #10]
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
    21ac:	8992      	ldrh	r2, [r2, #12]
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
    2218:	2b03      	cmp	r3, #3
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
    2274:	20002500 	.word	0x20002500
    2278:	20002514 	.word	0x20002514

0000227c <init_balls>:
    227c:	b580      	push	{r7, lr}
    227e:	b082      	sub	sp, #8
    2280:	af00      	add	r7, sp, #0
    2282:	f001 ffa3 	bl	41cc <get_video_params>
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
    22a0:	8952      	ldrh	r2, [r2, #10]
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
    22c4:	8992      	ldrh	r2, [r2, #12]
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
    2326:	2b03      	cmp	r3, #3
    2328:	ddb6      	ble.n	2298 <init_balls+0x1c>
    232a:	bf00      	nop
    232c:	3708      	adds	r7, #8
    232e:	46bd      	mov	sp, r7
    2330:	bd80      	pop	{r7, pc}
    2332:	bf00      	nop
    2334:	200004ec 	.word	0x200004ec
    2338:	20002500 	.word	0x20002500
    233c:	0000462c 	.word	0x0000462c

00002340 <main>:
    2340:	b580      	push	{r7, lr}
    2342:	b086      	sub	sp, #24
    2344:	af00      	add	r7, sp, #0
    2346:	f7ff fded 	bl	1f24 <set_sysclock>
    234a:	f001 f973 	bl	3634 <config_systicks>
    234e:	4b4f      	ldr	r3, [pc, #316]	; (248c <main+0x14c>)
    2350:	f640 021d 	movw	r2, #2077	; 0x81d
    2354:	619a      	str	r2, [r3, #24]
    2356:	2206      	movs	r2, #6
    2358:	210d      	movs	r1, #13
    235a:	484d      	ldr	r0, [pc, #308]	; (2490 <main+0x150>)
    235c:	f7ff facb 	bl	18f6 <config_pin>
    2360:	4a4b      	ldr	r2, [pc, #300]	; (2490 <main+0x150>)
    2362:	4b4b      	ldr	r3, [pc, #300]	; (2490 <main+0x150>)
    2364:	68db      	ldr	r3, [r3, #12]
    2366:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    236a:	60d3      	str	r3, [r2, #12]
    236c:	f001 fc84 	bl	3c78 <tvout_init>
    2370:	f7ff fc46 	bl	1c00 <gfx_cls>
    2374:	2303      	movs	r3, #3
    2376:	73bb      	strb	r3, [r7, #14]
    2378:	f001 ff28 	bl	41cc <get_video_params>
    237c:	60b8      	str	r0, [r7, #8]
    237e:	68bb      	ldr	r3, [r7, #8]
    2380:	899b      	ldrh	r3, [r3, #12]
    2382:	089b      	lsrs	r3, r3, #2
    2384:	b29b      	uxth	r3, r3
    2386:	461a      	mov	r2, r3
    2388:	4613      	mov	r3, r2
    238a:	005b      	lsls	r3, r3, #1
    238c:	4413      	add	r3, r2
    238e:	613b      	str	r3, [r7, #16]
    2390:	e01b      	b.n	23ca <main+0x8a>
    2392:	2310      	movs	r3, #16
    2394:	73fb      	strb	r3, [r7, #15]
    2396:	2300      	movs	r3, #0
    2398:	617b      	str	r3, [r7, #20]
    239a:	e010      	b.n	23be <main+0x7e>
    239c:	697b      	ldr	r3, [r7, #20]
    239e:	f003 0307 	and.w	r3, r3, #7
    23a2:	2b00      	cmp	r3, #0
    23a4:	d102      	bne.n	23ac <main+0x6c>
    23a6:	7bfb      	ldrb	r3, [r7, #15]
    23a8:	3b01      	subs	r3, #1
    23aa:	73fb      	strb	r3, [r7, #15]
    23ac:	7bfb      	ldrb	r3, [r7, #15]
    23ae:	461a      	mov	r2, r3
    23b0:	6939      	ldr	r1, [r7, #16]
    23b2:	6978      	ldr	r0, [r7, #20]
    23b4:	f7ff fb8e 	bl	1ad4 <gfx_plot>
    23b8:	697b      	ldr	r3, [r7, #20]
    23ba:	3301      	adds	r3, #1
    23bc:	617b      	str	r3, [r7, #20]
    23be:	697b      	ldr	r3, [r7, #20]
    23c0:	2b7f      	cmp	r3, #127	; 0x7f
    23c2:	ddeb      	ble.n	239c <main+0x5c>
    23c4:	693b      	ldr	r3, [r7, #16]
    23c6:	3301      	adds	r3, #1
    23c8:	613b      	str	r3, [r7, #16]
    23ca:	68bb      	ldr	r3, [r7, #8]
    23cc:	899b      	ldrh	r3, [r3, #12]
    23ce:	461a      	mov	r2, r3
    23d0:	693b      	ldr	r3, [r7, #16]
    23d2:	429a      	cmp	r2, r3
    23d4:	dcdd      	bgt.n	2392 <main+0x52>
    23d6:	4b2f      	ldr	r3, [pc, #188]	; (2494 <main+0x154>)
    23d8:	2110      	movs	r1, #16
    23da:	4618      	mov	r0, r3
    23dc:	f001 fafb 	bl	39d6 <print_int>
    23e0:	4b2d      	ldr	r3, [pc, #180]	; (2498 <main+0x158>)
    23e2:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    23e6:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    23ea:	210a      	movs	r1, #10
    23ec:	4618      	mov	r0, r3
    23ee:	f001 faf2 	bl	39d6 <print_int>
    23f2:	f7ff ff43 	bl	227c <init_balls>
    23f6:	2300      	movs	r3, #0
    23f8:	73bb      	strb	r3, [r7, #14]
    23fa:	f7ff fdcb 	bl	1f94 <draw_balls>
    23fe:	4b27      	ldr	r3, [pc, #156]	; (249c <main+0x15c>)
    2400:	681b      	ldr	r3, [r3, #0]
    2402:	330a      	adds	r3, #10
    2404:	607b      	str	r3, [r7, #4]
    2406:	bf00      	nop
    2408:	4b24      	ldr	r3, [pc, #144]	; (249c <main+0x15c>)
    240a:	681a      	ldr	r2, [r3, #0]
    240c:	687b      	ldr	r3, [r7, #4]
    240e:	429a      	cmp	r2, r3
    2410:	d3fa      	bcc.n	2408 <main+0xc8>
    2412:	f7ff fdbf 	bl	1f94 <draw_balls>
    2416:	f7ff fe30 	bl	207a <move_balls>
    241a:	4b21      	ldr	r3, [pc, #132]	; (24a0 <main+0x160>)
    241c:	881b      	ldrh	r3, [r3, #0]
    241e:	b29b      	uxth	r3, r3
    2420:	b21b      	sxth	r3, r3
    2422:	2b00      	cmp	r3, #0
    2424:	dbe9      	blt.n	23fa <main+0xba>
    2426:	7bbb      	ldrb	r3, [r7, #14]
    2428:	3301      	adds	r3, #1
    242a:	73bb      	strb	r3, [r7, #14]
    242c:	7bbb      	ldrb	r3, [r7, #14]
    242e:	f003 0303 	and.w	r3, r3, #3
    2432:	73bb      	strb	r3, [r7, #14]
    2434:	7bbb      	ldrb	r3, [r7, #14]
    2436:	4618      	mov	r0, r3
    2438:	f001 feb6 	bl	41a8 <set_video_mode>
    243c:	7bbb      	ldrb	r3, [r7, #14]
    243e:	2b03      	cmp	r3, #3
    2440:	d81a      	bhi.n	2478 <main+0x138>
    2442:	a201      	add	r2, pc, #4	; (adr r2, 2448 <main+0x108>)
    2444:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2448:	00002459 	.word	0x00002459
    244c:	00002461 	.word	0x00002461
    2450:	00002469 	.word	0x00002469
    2454:	00002471 	.word	0x00002471
    2458:	4812      	ldr	r0, [pc, #72]	; (24a4 <main+0x164>)
    245a:	f001 fa99 	bl	3990 <print>
    245e:	e00b      	b.n	2478 <main+0x138>
    2460:	4811      	ldr	r0, [pc, #68]	; (24a8 <main+0x168>)
    2462:	f001 fa95 	bl	3990 <print>
    2466:	e007      	b.n	2478 <main+0x138>
    2468:	4810      	ldr	r0, [pc, #64]	; (24ac <main+0x16c>)
    246a:	f001 fa91 	bl	3990 <print>
    246e:	e003      	b.n	2478 <main+0x138>
    2470:	480f      	ldr	r0, [pc, #60]	; (24b0 <main+0x170>)
    2472:	f001 fa8d 	bl	3990 <print>
    2476:	bf00      	nop
    2478:	f7ff ff00 	bl	227c <init_balls>
    247c:	bf00      	nop
    247e:	4b08      	ldr	r3, [pc, #32]	; (24a0 <main+0x160>)
    2480:	881b      	ldrh	r3, [r3, #0]
    2482:	b29b      	uxth	r3, r3
    2484:	b21b      	sxth	r3, r3
    2486:	2b00      	cmp	r3, #0
    2488:	daf9      	bge.n	247e <main+0x13e>
    248a:	e7b6      	b.n	23fa <main+0xba>
    248c:	40021000 	.word	0x40021000
    2490:	40011000 	.word	0x40011000
    2494:	00004c00 	.word	0x00004c00
    2498:	20004cc0 	.word	0x20004cc0
    249c:	200004ec 	.word	0x200004ec
    24a0:	20002550 	.word	0x20002550
    24a4:	0000464c 	.word	0x0000464c
    24a8:	0000466c 	.word	0x0000466c
    24ac:	00004688 	.word	0x00004688
    24b0:	000046a0 	.word	0x000046a0

000024b4 <enable_interrupt>:
    24b4:	b480      	push	{r7}
    24b6:	b083      	sub	sp, #12
    24b8:	af00      	add	r7, sp, #0
    24ba:	6078      	str	r0, [r7, #4]
    24bc:	687b      	ldr	r3, [r7, #4]
    24be:	2b3b      	cmp	r3, #59	; 0x3b
    24c0:	dc17      	bgt.n	24f2 <enable_interrupt+0x3e>
    24c2:	687b      	ldr	r3, [r7, #4]
    24c4:	115b      	asrs	r3, r3, #5
    24c6:	009b      	lsls	r3, r3, #2
    24c8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    24cc:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    24d0:	687a      	ldr	r2, [r7, #4]
    24d2:	1152      	asrs	r2, r2, #5
    24d4:	0092      	lsls	r2, r2, #2
    24d6:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    24da:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    24de:	6812      	ldr	r2, [r2, #0]
    24e0:	6879      	ldr	r1, [r7, #4]
    24e2:	f001 011f 	and.w	r1, r1, #31
    24e6:	2001      	movs	r0, #1
    24e8:	fa00 f101 	lsl.w	r1, r0, r1
    24ec:	430a      	orrs	r2, r1
    24ee:	601a      	str	r2, [r3, #0]
    24f0:	e000      	b.n	24f4 <enable_interrupt+0x40>
    24f2:	bf00      	nop
    24f4:	370c      	adds	r7, #12
    24f6:	46bd      	mov	sp, r7
    24f8:	bc80      	pop	{r7}
    24fa:	4770      	bx	lr

000024fc <disable_interrupt>:
    24fc:	b480      	push	{r7}
    24fe:	b083      	sub	sp, #12
    2500:	af00      	add	r7, sp, #0
    2502:	6078      	str	r0, [r7, #4]
    2504:	687b      	ldr	r3, [r7, #4]
    2506:	2b3b      	cmp	r3, #59	; 0x3b
    2508:	dc0c      	bgt.n	2524 <disable_interrupt+0x28>
    250a:	687b      	ldr	r3, [r7, #4]
    250c:	115b      	asrs	r3, r3, #5
    250e:	009a      	lsls	r2, r3, #2
    2510:	4b07      	ldr	r3, [pc, #28]	; (2530 <disable_interrupt+0x34>)
    2512:	4413      	add	r3, r2
    2514:	687a      	ldr	r2, [r7, #4]
    2516:	f002 021f 	and.w	r2, r2, #31
    251a:	2101      	movs	r1, #1
    251c:	fa01 f202 	lsl.w	r2, r1, r2
    2520:	601a      	str	r2, [r3, #0]
    2522:	e000      	b.n	2526 <disable_interrupt+0x2a>
    2524:	bf00      	nop
    2526:	370c      	adds	r7, #12
    2528:	46bd      	mov	sp, r7
    252a:	bc80      	pop	{r7}
    252c:	4770      	bx	lr
    252e:	bf00      	nop
    2530:	e000e180 	.word	0xe000e180

00002534 <get_pending>:
    2534:	b480      	push	{r7}
    2536:	b083      	sub	sp, #12
    2538:	af00      	add	r7, sp, #0
    253a:	6078      	str	r0, [r7, #4]
    253c:	687b      	ldr	r3, [r7, #4]
    253e:	2b3b      	cmp	r3, #59	; 0x3b
    2540:	dd01      	ble.n	2546 <get_pending+0x12>
    2542:	2300      	movs	r3, #0
    2544:	e00c      	b.n	2560 <get_pending+0x2c>
    2546:	687b      	ldr	r3, [r7, #4]
    2548:	115b      	asrs	r3, r3, #5
    254a:	009a      	lsls	r2, r3, #2
    254c:	4b07      	ldr	r3, [pc, #28]	; (256c <get_pending+0x38>)
    254e:	4413      	add	r3, r2
    2550:	681b      	ldr	r3, [r3, #0]
    2552:	687a      	ldr	r2, [r7, #4]
    2554:	f002 021f 	and.w	r2, r2, #31
    2558:	2101      	movs	r1, #1
    255a:	fa01 f202 	lsl.w	r2, r1, r2
    255e:	4013      	ands	r3, r2
    2560:	4618      	mov	r0, r3
    2562:	370c      	adds	r7, #12
    2564:	46bd      	mov	sp, r7
    2566:	bc80      	pop	{r7}
    2568:	4770      	bx	lr
    256a:	bf00      	nop
    256c:	e000e280 	.word	0xe000e280

00002570 <get_active>:
    2570:	b480      	push	{r7}
    2572:	b083      	sub	sp, #12
    2574:	af00      	add	r7, sp, #0
    2576:	6078      	str	r0, [r7, #4]
    2578:	687b      	ldr	r3, [r7, #4]
    257a:	2b3b      	cmp	r3, #59	; 0x3b
    257c:	dd01      	ble.n	2582 <get_active+0x12>
    257e:	2300      	movs	r3, #0
    2580:	e00e      	b.n	25a0 <get_active+0x30>
    2582:	687b      	ldr	r3, [r7, #4]
    2584:	115b      	asrs	r3, r3, #5
    2586:	009b      	lsls	r3, r3, #2
    2588:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    258c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2590:	681b      	ldr	r3, [r3, #0]
    2592:	687a      	ldr	r2, [r7, #4]
    2594:	f002 021f 	and.w	r2, r2, #31
    2598:	2101      	movs	r1, #1
    259a:	fa01 f202 	lsl.w	r2, r1, r2
    259e:	4013      	ands	r3, r2
    25a0:	4618      	mov	r0, r3
    25a2:	370c      	adds	r7, #12
    25a4:	46bd      	mov	sp, r7
    25a6:	bc80      	pop	{r7}
    25a8:	4770      	bx	lr

000025aa <set_pending>:
    25aa:	b480      	push	{r7}
    25ac:	b083      	sub	sp, #12
    25ae:	af00      	add	r7, sp, #0
    25b0:	6078      	str	r0, [r7, #4]
    25b2:	687b      	ldr	r3, [r7, #4]
    25b4:	2b3b      	cmp	r3, #59	; 0x3b
    25b6:	dc17      	bgt.n	25e8 <set_pending+0x3e>
    25b8:	687b      	ldr	r3, [r7, #4]
    25ba:	115b      	asrs	r3, r3, #5
    25bc:	009b      	lsls	r3, r3, #2
    25be:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    25c2:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    25c6:	687a      	ldr	r2, [r7, #4]
    25c8:	1152      	asrs	r2, r2, #5
    25ca:	0092      	lsls	r2, r2, #2
    25cc:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    25d0:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    25d4:	6812      	ldr	r2, [r2, #0]
    25d6:	6879      	ldr	r1, [r7, #4]
    25d8:	f001 011f 	and.w	r1, r1, #31
    25dc:	2001      	movs	r0, #1
    25de:	fa00 f101 	lsl.w	r1, r0, r1
    25e2:	430a      	orrs	r2, r1
    25e4:	601a      	str	r2, [r3, #0]
    25e6:	e000      	b.n	25ea <set_pending+0x40>
    25e8:	bf00      	nop
    25ea:	370c      	adds	r7, #12
    25ec:	46bd      	mov	sp, r7
    25ee:	bc80      	pop	{r7}
    25f0:	4770      	bx	lr

000025f2 <clear_pending>:
    25f2:	b480      	push	{r7}
    25f4:	b083      	sub	sp, #12
    25f6:	af00      	add	r7, sp, #0
    25f8:	6078      	str	r0, [r7, #4]
    25fa:	687b      	ldr	r3, [r7, #4]
    25fc:	2b3b      	cmp	r3, #59	; 0x3b
    25fe:	dc0c      	bgt.n	261a <clear_pending+0x28>
    2600:	687b      	ldr	r3, [r7, #4]
    2602:	115b      	asrs	r3, r3, #5
    2604:	009a      	lsls	r2, r3, #2
    2606:	4b07      	ldr	r3, [pc, #28]	; (2624 <clear_pending+0x32>)
    2608:	4413      	add	r3, r2
    260a:	687a      	ldr	r2, [r7, #4]
    260c:	f002 021f 	and.w	r2, r2, #31
    2610:	2101      	movs	r1, #1
    2612:	fa01 f202 	lsl.w	r2, r1, r2
    2616:	601a      	str	r2, [r3, #0]
    2618:	e000      	b.n	261c <clear_pending+0x2a>
    261a:	bf00      	nop
    261c:	370c      	adds	r7, #12
    261e:	46bd      	mov	sp, r7
    2620:	bc80      	pop	{r7}
    2622:	4770      	bx	lr
    2624:	e000e280 	.word	0xe000e280

00002628 <set_int_priority>:
    2628:	b480      	push	{r7}
    262a:	b083      	sub	sp, #12
    262c:	af00      	add	r7, sp, #0
    262e:	6078      	str	r0, [r7, #4]
    2630:	6039      	str	r1, [r7, #0]
    2632:	687b      	ldr	r3, [r7, #4]
    2634:	2b00      	cmp	r3, #0
    2636:	db0d      	blt.n	2654 <set_int_priority+0x2c>
    2638:	687b      	ldr	r3, [r7, #4]
    263a:	2b3b      	cmp	r3, #59	; 0x3b
    263c:	dc0a      	bgt.n	2654 <set_int_priority+0x2c>
    263e:	687b      	ldr	r3, [r7, #4]
    2640:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2644:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    2648:	683a      	ldr	r2, [r7, #0]
    264a:	b2d2      	uxtb	r2, r2
    264c:	0112      	lsls	r2, r2, #4
    264e:	b2d2      	uxtb	r2, r2
    2650:	701a      	strb	r2, [r3, #0]
    2652:	e012      	b.n	267a <set_int_priority+0x52>
    2654:	687b      	ldr	r3, [r7, #4]
    2656:	2b00      	cmp	r3, #0
    2658:	da0f      	bge.n	267a <set_int_priority+0x52>
    265a:	687b      	ldr	r3, [r7, #4]
    265c:	f113 0f0f 	cmn.w	r3, #15
    2660:	db0b      	blt.n	267a <set_int_priority+0x52>
    2662:	687a      	ldr	r2, [r7, #4]
    2664:	f06f 0303 	mvn.w	r3, #3
    2668:	1a9b      	subs	r3, r3, r2
    266a:	461a      	mov	r2, r3
    266c:	4b05      	ldr	r3, [pc, #20]	; (2684 <set_int_priority+0x5c>)
    266e:	4413      	add	r3, r2
    2670:	683a      	ldr	r2, [r7, #0]
    2672:	b2d2      	uxtb	r2, r2
    2674:	0112      	lsls	r2, r2, #4
    2676:	b2d2      	uxtb	r2, r2
    2678:	701a      	strb	r2, [r3, #0]
    267a:	bf00      	nop
    267c:	370c      	adds	r7, #12
    267e:	46bd      	mov	sp, r7
    2680:	bc80      	pop	{r7}
    2682:	4770      	bx	lr
    2684:	e000ed18 	.word	0xe000ed18

00002688 <leap_year>:
    2688:	b480      	push	{r7}
    268a:	b083      	sub	sp, #12
    268c:	af00      	add	r7, sp, #0
    268e:	6078      	str	r0, [r7, #4]
    2690:	687b      	ldr	r3, [r7, #4]
    2692:	f003 0303 	and.w	r3, r3, #3
    2696:	2b00      	cmp	r3, #0
    2698:	d11a      	bne.n	26d0 <leap_year+0x48>
    269a:	687a      	ldr	r2, [r7, #4]
    269c:	4b0f      	ldr	r3, [pc, #60]	; (26dc <leap_year+0x54>)
    269e:	fba3 1302 	umull	r1, r3, r3, r2
    26a2:	095b      	lsrs	r3, r3, #5
    26a4:	2164      	movs	r1, #100	; 0x64
    26a6:	fb01 f303 	mul.w	r3, r1, r3
    26aa:	1ad3      	subs	r3, r2, r3
    26ac:	2b00      	cmp	r3, #0
    26ae:	d10d      	bne.n	26cc <leap_year+0x44>
    26b0:	687a      	ldr	r2, [r7, #4]
    26b2:	4b0a      	ldr	r3, [pc, #40]	; (26dc <leap_year+0x54>)
    26b4:	fba3 1302 	umull	r1, r3, r3, r2
    26b8:	09db      	lsrs	r3, r3, #7
    26ba:	f44f 71c8 	mov.w	r1, #400	; 0x190
    26be:	fb01 f303 	mul.w	r3, r1, r3
    26c2:	1ad3      	subs	r3, r2, r3
    26c4:	2b00      	cmp	r3, #0
    26c6:	d001      	beq.n	26cc <leap_year+0x44>
    26c8:	2300      	movs	r3, #0
    26ca:	e002      	b.n	26d2 <leap_year+0x4a>
    26cc:	2301      	movs	r3, #1
    26ce:	e000      	b.n	26d2 <leap_year+0x4a>
    26d0:	2300      	movs	r3, #0
    26d2:	4618      	mov	r0, r3
    26d4:	370c      	adds	r7, #12
    26d6:	46bd      	mov	sp, r7
    26d8:	bc80      	pop	{r7}
    26da:	4770      	bx	lr
    26dc:	51eb851f 	.word	0x51eb851f

000026e0 <sec_per_month>:
    26e0:	b480      	push	{r7}
    26e2:	b085      	sub	sp, #20
    26e4:	af00      	add	r7, sp, #0
    26e6:	6078      	str	r0, [r7, #4]
    26e8:	6039      	str	r1, [r7, #0]
    26ea:	4a0d      	ldr	r2, [pc, #52]	; (2720 <sec_per_month+0x40>)
    26ec:	683b      	ldr	r3, [r7, #0]
    26ee:	4413      	add	r3, r2
    26f0:	781b      	ldrb	r3, [r3, #0]
    26f2:	461a      	mov	r2, r3
    26f4:	4b0b      	ldr	r3, [pc, #44]	; (2724 <sec_per_month+0x44>)
    26f6:	fb03 f302 	mul.w	r3, r3, r2
    26fa:	60fb      	str	r3, [r7, #12]
    26fc:	683b      	ldr	r3, [r7, #0]
    26fe:	2b02      	cmp	r3, #2
    2700:	d108      	bne.n	2714 <sec_per_month+0x34>
    2702:	687b      	ldr	r3, [r7, #4]
    2704:	2b00      	cmp	r3, #0
    2706:	d005      	beq.n	2714 <sec_per_month+0x34>
    2708:	68fb      	ldr	r3, [r7, #12]
    270a:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    270e:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    2712:	60fb      	str	r3, [r7, #12]
    2714:	68fb      	ldr	r3, [r7, #12]
    2716:	4618      	mov	r0, r3
    2718:	3714      	adds	r7, #20
    271a:	46bd      	mov	sp, r7
    271c:	bc80      	pop	{r7}
    271e:	4770      	bx	lr
    2720:	00004768 	.word	0x00004768
    2724:	00015180 	.word	0x00015180

00002728 <get_date_time>:
    2728:	b580      	push	{r7, lr}
    272a:	b086      	sub	sp, #24
    272c:	af00      	add	r7, sp, #0
    272e:	6078      	str	r0, [r7, #4]
    2730:	4b66      	ldr	r3, [pc, #408]	; (28cc <get_date_time+0x1a4>)
    2732:	699b      	ldr	r3, [r3, #24]
    2734:	041a      	lsls	r2, r3, #16
    2736:	4b65      	ldr	r3, [pc, #404]	; (28cc <get_date_time+0x1a4>)
    2738:	69db      	ldr	r3, [r3, #28]
    273a:	4413      	add	r3, r2
    273c:	617b      	str	r3, [r7, #20]
    273e:	687b      	ldr	r3, [r7, #4]
    2740:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2744:	811a      	strh	r2, [r3, #8]
    2746:	f240 70b2 	movw	r0, #1970	; 0x7b2
    274a:	f7ff ff9d 	bl	2688 <leap_year>
    274e:	6138      	str	r0, [r7, #16]
    2750:	e019      	b.n	2786 <get_date_time+0x5e>
    2752:	693b      	ldr	r3, [r7, #16]
    2754:	2b00      	cmp	r3, #0
    2756:	d006      	beq.n	2766 <get_date_time+0x3e>
    2758:	697b      	ldr	r3, [r7, #20]
    275a:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    275e:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2762:	617b      	str	r3, [r7, #20]
    2764:	e003      	b.n	276e <get_date_time+0x46>
    2766:	697a      	ldr	r2, [r7, #20]
    2768:	4b59      	ldr	r3, [pc, #356]	; (28d0 <get_date_time+0x1a8>)
    276a:	4413      	add	r3, r2
    276c:	617b      	str	r3, [r7, #20]
    276e:	687b      	ldr	r3, [r7, #4]
    2770:	891b      	ldrh	r3, [r3, #8]
    2772:	3301      	adds	r3, #1
    2774:	b29a      	uxth	r2, r3
    2776:	687b      	ldr	r3, [r7, #4]
    2778:	811a      	strh	r2, [r3, #8]
    277a:	687b      	ldr	r3, [r7, #4]
    277c:	891b      	ldrh	r3, [r3, #8]
    277e:	4618      	mov	r0, r3
    2780:	f7ff ff82 	bl	2688 <leap_year>
    2784:	6138      	str	r0, [r7, #16]
    2786:	693b      	ldr	r3, [r7, #16]
    2788:	2b00      	cmp	r3, #0
    278a:	d103      	bne.n	2794 <get_date_time+0x6c>
    278c:	697b      	ldr	r3, [r7, #20]
    278e:	4a51      	ldr	r2, [pc, #324]	; (28d4 <get_date_time+0x1ac>)
    2790:	4293      	cmp	r3, r2
    2792:	d8de      	bhi.n	2752 <get_date_time+0x2a>
    2794:	693b      	ldr	r3, [r7, #16]
    2796:	2b00      	cmp	r3, #0
    2798:	d003      	beq.n	27a2 <get_date_time+0x7a>
    279a:	697b      	ldr	r3, [r7, #20]
    279c:	4a4e      	ldr	r2, [pc, #312]	; (28d8 <get_date_time+0x1b0>)
    279e:	4293      	cmp	r3, r2
    27a0:	d8d7      	bhi.n	2752 <get_date_time+0x2a>
    27a2:	687a      	ldr	r2, [r7, #4]
    27a4:	8853      	ldrh	r3, [r2, #2]
    27a6:	2101      	movs	r1, #1
    27a8:	f361 1389 	bfi	r3, r1, #6, #4
    27ac:	8053      	strh	r3, [r2, #2]
    27ae:	687a      	ldr	r2, [r7, #4]
    27b0:	7893      	ldrb	r3, [r2, #2]
    27b2:	2101      	movs	r1, #1
    27b4:	f361 0345 	bfi	r3, r1, #1, #5
    27b8:	7093      	strb	r3, [r2, #2]
    27ba:	687a      	ldr	r2, [r7, #4]
    27bc:	6813      	ldr	r3, [r2, #0]
    27be:	f36f 3310 	bfc	r3, #12, #5
    27c2:	6013      	str	r3, [r2, #0]
    27c4:	687a      	ldr	r2, [r7, #4]
    27c6:	8813      	ldrh	r3, [r2, #0]
    27c8:	f36f 138b 	bfc	r3, #6, #6
    27cc:	8013      	strh	r3, [r2, #0]
    27ce:	687a      	ldr	r2, [r7, #4]
    27d0:	7813      	ldrb	r3, [r2, #0]
    27d2:	f36f 0305 	bfc	r3, #0, #6
    27d6:	7013      	strb	r3, [r2, #0]
    27d8:	e011      	b.n	27fe <get_date_time+0xd6>
    27da:	687b      	ldr	r3, [r7, #4]
    27dc:	885b      	ldrh	r3, [r3, #2]
    27de:	f3c3 1383 	ubfx	r3, r3, #6, #4
    27e2:	b2db      	uxtb	r3, r3
    27e4:	3301      	adds	r3, #1
    27e6:	f003 030f 	and.w	r3, r3, #15
    27ea:	b2d9      	uxtb	r1, r3
    27ec:	687a      	ldr	r2, [r7, #4]
    27ee:	8853      	ldrh	r3, [r2, #2]
    27f0:	f361 1389 	bfi	r3, r1, #6, #4
    27f4:	8053      	strh	r3, [r2, #2]
    27f6:	697a      	ldr	r2, [r7, #20]
    27f8:	68fb      	ldr	r3, [r7, #12]
    27fa:	1ad3      	subs	r3, r2, r3
    27fc:	617b      	str	r3, [r7, #20]
    27fe:	687b      	ldr	r3, [r7, #4]
    2800:	885b      	ldrh	r3, [r3, #2]
    2802:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2806:	b2db      	uxtb	r3, r3
    2808:	4619      	mov	r1, r3
    280a:	6938      	ldr	r0, [r7, #16]
    280c:	f7ff ff68 	bl	26e0 <sec_per_month>
    2810:	60f8      	str	r0, [r7, #12]
    2812:	68fa      	ldr	r2, [r7, #12]
    2814:	697b      	ldr	r3, [r7, #20]
    2816:	429a      	cmp	r2, r3
    2818:	d3df      	bcc.n	27da <get_date_time+0xb2>
    281a:	697b      	ldr	r3, [r7, #20]
    281c:	4a2f      	ldr	r2, [pc, #188]	; (28dc <get_date_time+0x1b4>)
    281e:	fba2 2303 	umull	r2, r3, r2, r3
    2822:	0c1b      	lsrs	r3, r3, #16
    2824:	b2db      	uxtb	r3, r3
    2826:	3301      	adds	r3, #1
    2828:	b2db      	uxtb	r3, r3
    282a:	f003 031f 	and.w	r3, r3, #31
    282e:	b2d9      	uxtb	r1, r3
    2830:	687a      	ldr	r2, [r7, #4]
    2832:	7893      	ldrb	r3, [r2, #2]
    2834:	f361 0345 	bfi	r3, r1, #1, #5
    2838:	7093      	strb	r3, [r2, #2]
    283a:	697b      	ldr	r3, [r7, #20]
    283c:	4a27      	ldr	r2, [pc, #156]	; (28dc <get_date_time+0x1b4>)
    283e:	fba2 1203 	umull	r1, r2, r2, r3
    2842:	0c12      	lsrs	r2, r2, #16
    2844:	4926      	ldr	r1, [pc, #152]	; (28e0 <get_date_time+0x1b8>)
    2846:	fb01 f202 	mul.w	r2, r1, r2
    284a:	1a9b      	subs	r3, r3, r2
    284c:	617b      	str	r3, [r7, #20]
    284e:	697b      	ldr	r3, [r7, #20]
    2850:	4a24      	ldr	r2, [pc, #144]	; (28e4 <get_date_time+0x1bc>)
    2852:	fba2 2303 	umull	r2, r3, r2, r3
    2856:	0adb      	lsrs	r3, r3, #11
    2858:	b2db      	uxtb	r3, r3
    285a:	f003 031f 	and.w	r3, r3, #31
    285e:	b2d9      	uxtb	r1, r3
    2860:	687a      	ldr	r2, [r7, #4]
    2862:	6813      	ldr	r3, [r2, #0]
    2864:	f361 3310 	bfi	r3, r1, #12, #5
    2868:	6013      	str	r3, [r2, #0]
    286a:	697b      	ldr	r3, [r7, #20]
    286c:	4a1d      	ldr	r2, [pc, #116]	; (28e4 <get_date_time+0x1bc>)
    286e:	fba2 1203 	umull	r1, r2, r2, r3
    2872:	0ad2      	lsrs	r2, r2, #11
    2874:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2878:	fb01 f202 	mul.w	r2, r1, r2
    287c:	1a9b      	subs	r3, r3, r2
    287e:	617b      	str	r3, [r7, #20]
    2880:	697b      	ldr	r3, [r7, #20]
    2882:	4a19      	ldr	r2, [pc, #100]	; (28e8 <get_date_time+0x1c0>)
    2884:	fba2 2303 	umull	r2, r3, r2, r3
    2888:	095b      	lsrs	r3, r3, #5
    288a:	b2db      	uxtb	r3, r3
    288c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2890:	b2d9      	uxtb	r1, r3
    2892:	687a      	ldr	r2, [r7, #4]
    2894:	8813      	ldrh	r3, [r2, #0]
    2896:	f361 138b 	bfi	r3, r1, #6, #6
    289a:	8013      	strh	r3, [r2, #0]
    289c:	6979      	ldr	r1, [r7, #20]
    289e:	4b12      	ldr	r3, [pc, #72]	; (28e8 <get_date_time+0x1c0>)
    28a0:	fba3 2301 	umull	r2, r3, r3, r1
    28a4:	095a      	lsrs	r2, r3, #5
    28a6:	4613      	mov	r3, r2
    28a8:	011b      	lsls	r3, r3, #4
    28aa:	1a9b      	subs	r3, r3, r2
    28ac:	009b      	lsls	r3, r3, #2
    28ae:	1aca      	subs	r2, r1, r3
    28b0:	b2d3      	uxtb	r3, r2
    28b2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    28b6:	b2d9      	uxtb	r1, r3
    28b8:	687a      	ldr	r2, [r7, #4]
    28ba:	7813      	ldrb	r3, [r2, #0]
    28bc:	f361 0305 	bfi	r3, r1, #0, #6
    28c0:	7013      	strb	r3, [r2, #0]
    28c2:	bf00      	nop
    28c4:	3718      	adds	r7, #24
    28c6:	46bd      	mov	sp, r7
    28c8:	bd80      	pop	{r7, pc}
    28ca:	bf00      	nop
    28cc:	40002800 	.word	0x40002800
    28d0:	fe1ecc80 	.word	0xfe1ecc80
    28d4:	01e1337f 	.word	0x01e1337f
    28d8:	01e284ff 	.word	0x01e284ff
    28dc:	c22e4507 	.word	0xc22e4507
    28e0:	00015180 	.word	0x00015180
    28e4:	91a2b3c5 	.word	0x91a2b3c5
    28e8:	88888889 	.word	0x88888889

000028ec <set_date_time>:
    28ec:	b580      	push	{r7, lr}
    28ee:	b086      	sub	sp, #24
    28f0:	af00      	add	r7, sp, #0
    28f2:	6078      	str	r0, [r7, #4]
    28f4:	2300      	movs	r3, #0
    28f6:	613b      	str	r3, [r7, #16]
    28f8:	687b      	ldr	r3, [r7, #4]
    28fa:	891b      	ldrh	r3, [r3, #8]
    28fc:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2900:	4293      	cmp	r3, r2
    2902:	d803      	bhi.n	290c <set_date_time+0x20>
    2904:	687b      	ldr	r3, [r7, #4]
    2906:	f240 72b2 	movw	r2, #1970	; 0x7b2
    290a:	811a      	strh	r2, [r3, #8]
    290c:	687b      	ldr	r3, [r7, #4]
    290e:	891b      	ldrh	r3, [r3, #8]
    2910:	f640 023a 	movw	r2, #2106	; 0x83a
    2914:	4293      	cmp	r3, r2
    2916:	d903      	bls.n	2920 <set_date_time+0x34>
    2918:	687b      	ldr	r3, [r7, #4]
    291a:	f640 023a 	movw	r2, #2106	; 0x83a
    291e:	811a      	strh	r2, [r3, #8]
    2920:	687b      	ldr	r3, [r7, #4]
    2922:	891b      	ldrh	r3, [r3, #8]
    2924:	4618      	mov	r0, r3
    2926:	f7ff feaf 	bl	2688 <leap_year>
    292a:	60f8      	str	r0, [r7, #12]
    292c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2930:	617b      	str	r3, [r7, #20]
    2932:	e013      	b.n	295c <set_date_time+0x70>
    2934:	6978      	ldr	r0, [r7, #20]
    2936:	f7ff fea7 	bl	2688 <leap_year>
    293a:	4603      	mov	r3, r0
    293c:	2b00      	cmp	r3, #0
    293e:	d006      	beq.n	294e <set_date_time+0x62>
    2940:	693b      	ldr	r3, [r7, #16]
    2942:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2946:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    294a:	613b      	str	r3, [r7, #16]
    294c:	e003      	b.n	2956 <set_date_time+0x6a>
    294e:	693a      	ldr	r2, [r7, #16]
    2950:	4b42      	ldr	r3, [pc, #264]	; (2a5c <set_date_time+0x170>)
    2952:	4413      	add	r3, r2
    2954:	613b      	str	r3, [r7, #16]
    2956:	697b      	ldr	r3, [r7, #20]
    2958:	3301      	adds	r3, #1
    295a:	617b      	str	r3, [r7, #20]
    295c:	687b      	ldr	r3, [r7, #4]
    295e:	891b      	ldrh	r3, [r3, #8]
    2960:	461a      	mov	r2, r3
    2962:	697b      	ldr	r3, [r7, #20]
    2964:	429a      	cmp	r2, r3
    2966:	d8e5      	bhi.n	2934 <set_date_time+0x48>
    2968:	2301      	movs	r3, #1
    296a:	617b      	str	r3, [r7, #20]
    296c:	e00a      	b.n	2984 <set_date_time+0x98>
    296e:	6979      	ldr	r1, [r7, #20]
    2970:	68f8      	ldr	r0, [r7, #12]
    2972:	f7ff feb5 	bl	26e0 <sec_per_month>
    2976:	4602      	mov	r2, r0
    2978:	693b      	ldr	r3, [r7, #16]
    297a:	4413      	add	r3, r2
    297c:	613b      	str	r3, [r7, #16]
    297e:	697b      	ldr	r3, [r7, #20]
    2980:	3301      	adds	r3, #1
    2982:	617b      	str	r3, [r7, #20]
    2984:	687b      	ldr	r3, [r7, #4]
    2986:	885b      	ldrh	r3, [r3, #2]
    2988:	f3c3 1383 	ubfx	r3, r3, #6, #4
    298c:	b2db      	uxtb	r3, r3
    298e:	461a      	mov	r2, r3
    2990:	697b      	ldr	r3, [r7, #20]
    2992:	429a      	cmp	r2, r3
    2994:	d8eb      	bhi.n	296e <set_date_time+0x82>
    2996:	687b      	ldr	r3, [r7, #4]
    2998:	789b      	ldrb	r3, [r3, #2]
    299a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    299e:	b2db      	uxtb	r3, r3
    29a0:	3b01      	subs	r3, #1
    29a2:	4a2f      	ldr	r2, [pc, #188]	; (2a60 <set_date_time+0x174>)
    29a4:	fb02 f303 	mul.w	r3, r2, r3
    29a8:	461a      	mov	r2, r3
    29aa:	693b      	ldr	r3, [r7, #16]
    29ac:	4413      	add	r3, r2
    29ae:	613b      	str	r3, [r7, #16]
    29b0:	687b      	ldr	r3, [r7, #4]
    29b2:	681b      	ldr	r3, [r3, #0]
    29b4:	f3c3 3304 	ubfx	r3, r3, #12, #5
    29b8:	b2db      	uxtb	r3, r3
    29ba:	461a      	mov	r2, r3
    29bc:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    29c0:	fb03 f302 	mul.w	r3, r3, r2
    29c4:	461a      	mov	r2, r3
    29c6:	693b      	ldr	r3, [r7, #16]
    29c8:	4413      	add	r3, r2
    29ca:	613b      	str	r3, [r7, #16]
    29cc:	687b      	ldr	r3, [r7, #4]
    29ce:	881b      	ldrh	r3, [r3, #0]
    29d0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    29d4:	b2db      	uxtb	r3, r3
    29d6:	461a      	mov	r2, r3
    29d8:	4613      	mov	r3, r2
    29da:	011b      	lsls	r3, r3, #4
    29dc:	1a9b      	subs	r3, r3, r2
    29de:	009b      	lsls	r3, r3, #2
    29e0:	461a      	mov	r2, r3
    29e2:	693b      	ldr	r3, [r7, #16]
    29e4:	4413      	add	r3, r2
    29e6:	613b      	str	r3, [r7, #16]
    29e8:	687b      	ldr	r3, [r7, #4]
    29ea:	781b      	ldrb	r3, [r3, #0]
    29ec:	f3c3 0305 	ubfx	r3, r3, #0, #6
    29f0:	b2db      	uxtb	r3, r3
    29f2:	461a      	mov	r2, r3
    29f4:	693b      	ldr	r3, [r7, #16]
    29f6:	4413      	add	r3, r2
    29f8:	613b      	str	r3, [r7, #16]
    29fa:	4a1a      	ldr	r2, [pc, #104]	; (2a64 <set_date_time+0x178>)
    29fc:	4b19      	ldr	r3, [pc, #100]	; (2a64 <set_date_time+0x178>)
    29fe:	69db      	ldr	r3, [r3, #28]
    2a00:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2a04:	61d3      	str	r3, [r2, #28]
    2a06:	4a18      	ldr	r2, [pc, #96]	; (2a68 <set_date_time+0x17c>)
    2a08:	4b17      	ldr	r3, [pc, #92]	; (2a68 <set_date_time+0x17c>)
    2a0a:	681b      	ldr	r3, [r3, #0]
    2a0c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2a10:	6013      	str	r3, [r2, #0]
    2a12:	4a16      	ldr	r2, [pc, #88]	; (2a6c <set_date_time+0x180>)
    2a14:	4b15      	ldr	r3, [pc, #84]	; (2a6c <set_date_time+0x180>)
    2a16:	685b      	ldr	r3, [r3, #4]
    2a18:	f043 0310 	orr.w	r3, r3, #16
    2a1c:	6053      	str	r3, [r2, #4]
    2a1e:	4a13      	ldr	r2, [pc, #76]	; (2a6c <set_date_time+0x180>)
    2a20:	693b      	ldr	r3, [r7, #16]
    2a22:	0c1b      	lsrs	r3, r3, #16
    2a24:	6193      	str	r3, [r2, #24]
    2a26:	4a11      	ldr	r2, [pc, #68]	; (2a6c <set_date_time+0x180>)
    2a28:	693b      	ldr	r3, [r7, #16]
    2a2a:	b29b      	uxth	r3, r3
    2a2c:	61d3      	str	r3, [r2, #28]
    2a2e:	4a0f      	ldr	r2, [pc, #60]	; (2a6c <set_date_time+0x180>)
    2a30:	4b0e      	ldr	r3, [pc, #56]	; (2a6c <set_date_time+0x180>)
    2a32:	685b      	ldr	r3, [r3, #4]
    2a34:	f023 0310 	bic.w	r3, r3, #16
    2a38:	6053      	str	r3, [r2, #4]
    2a3a:	bf00      	nop
    2a3c:	4b0b      	ldr	r3, [pc, #44]	; (2a6c <set_date_time+0x180>)
    2a3e:	685b      	ldr	r3, [r3, #4]
    2a40:	f003 0320 	and.w	r3, r3, #32
    2a44:	2b00      	cmp	r3, #0
    2a46:	d0f9      	beq.n	2a3c <set_date_time+0x150>
    2a48:	4a07      	ldr	r2, [pc, #28]	; (2a68 <set_date_time+0x17c>)
    2a4a:	4b07      	ldr	r3, [pc, #28]	; (2a68 <set_date_time+0x17c>)
    2a4c:	681b      	ldr	r3, [r3, #0]
    2a4e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2a52:	6013      	str	r3, [r2, #0]
    2a54:	bf00      	nop
    2a56:	3718      	adds	r7, #24
    2a58:	46bd      	mov	sp, r7
    2a5a:	bd80      	pop	{r7, pc}
    2a5c:	01e13380 	.word	0x01e13380
    2a60:	00015180 	.word	0x00015180
    2a64:	40021000 	.word	0x40021000
    2a68:	40007000 	.word	0x40007000
    2a6c:	40002800 	.word	0x40002800

00002a70 <rtc_init>:
    2a70:	b580      	push	{r7, lr}
    2a72:	b082      	sub	sp, #8
    2a74:	af00      	add	r7, sp, #0
    2a76:	6078      	str	r0, [r7, #4]
    2a78:	6039      	str	r1, [r7, #0]
    2a7a:	4b4a      	ldr	r3, [pc, #296]	; (2ba4 <rtc_init+0x134>)
    2a7c:	685b      	ldr	r3, [r3, #4]
    2a7e:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2a82:	4293      	cmp	r3, r2
    2a84:	f000 8082 	beq.w	2b8c <rtc_init+0x11c>
    2a88:	4a47      	ldr	r2, [pc, #284]	; (2ba8 <rtc_init+0x138>)
    2a8a:	4b47      	ldr	r3, [pc, #284]	; (2ba8 <rtc_init+0x138>)
    2a8c:	69db      	ldr	r3, [r3, #28]
    2a8e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2a92:	61d3      	str	r3, [r2, #28]
    2a94:	4a45      	ldr	r2, [pc, #276]	; (2bac <rtc_init+0x13c>)
    2a96:	4b45      	ldr	r3, [pc, #276]	; (2bac <rtc_init+0x13c>)
    2a98:	681b      	ldr	r3, [r3, #0]
    2a9a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2a9e:	6013      	str	r3, [r2, #0]
    2aa0:	4a41      	ldr	r2, [pc, #260]	; (2ba8 <rtc_init+0x138>)
    2aa2:	4b41      	ldr	r3, [pc, #260]	; (2ba8 <rtc_init+0x138>)
    2aa4:	6a1b      	ldr	r3, [r3, #32]
    2aa6:	f043 0301 	orr.w	r3, r3, #1
    2aaa:	6213      	str	r3, [r2, #32]
    2aac:	bf00      	nop
    2aae:	4b3e      	ldr	r3, [pc, #248]	; (2ba8 <rtc_init+0x138>)
    2ab0:	6a1b      	ldr	r3, [r3, #32]
    2ab2:	f003 0302 	and.w	r3, r3, #2
    2ab6:	2b00      	cmp	r3, #0
    2ab8:	d0f9      	beq.n	2aae <rtc_init+0x3e>
    2aba:	4a3b      	ldr	r2, [pc, #236]	; (2ba8 <rtc_init+0x138>)
    2abc:	4b3a      	ldr	r3, [pc, #232]	; (2ba8 <rtc_init+0x138>)
    2abe:	6a1b      	ldr	r3, [r3, #32]
    2ac0:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2ac4:	6213      	str	r3, [r2, #32]
    2ac6:	bf00      	nop
    2ac8:	4b39      	ldr	r3, [pc, #228]	; (2bb0 <rtc_init+0x140>)
    2aca:	685b      	ldr	r3, [r3, #4]
    2acc:	f003 0308 	and.w	r3, r3, #8
    2ad0:	2b00      	cmp	r3, #0
    2ad2:	d0f9      	beq.n	2ac8 <rtc_init+0x58>
    2ad4:	bf00      	nop
    2ad6:	4b36      	ldr	r3, [pc, #216]	; (2bb0 <rtc_init+0x140>)
    2ad8:	685b      	ldr	r3, [r3, #4]
    2ada:	f003 0320 	and.w	r3, r3, #32
    2ade:	2b00      	cmp	r3, #0
    2ae0:	d0f9      	beq.n	2ad6 <rtc_init+0x66>
    2ae2:	4a33      	ldr	r2, [pc, #204]	; (2bb0 <rtc_init+0x140>)
    2ae4:	4b32      	ldr	r3, [pc, #200]	; (2bb0 <rtc_init+0x140>)
    2ae6:	685b      	ldr	r3, [r3, #4]
    2ae8:	f043 0310 	orr.w	r3, r3, #16
    2aec:	6053      	str	r3, [r2, #4]
    2aee:	bf00      	nop
    2af0:	4b2f      	ldr	r3, [pc, #188]	; (2bb0 <rtc_init+0x140>)
    2af2:	685b      	ldr	r3, [r3, #4]
    2af4:	f003 0320 	and.w	r3, r3, #32
    2af8:	2b00      	cmp	r3, #0
    2afa:	d0f9      	beq.n	2af0 <rtc_init+0x80>
    2afc:	492c      	ldr	r1, [pc, #176]	; (2bb0 <rtc_init+0x140>)
    2afe:	4b2c      	ldr	r3, [pc, #176]	; (2bb0 <rtc_init+0x140>)
    2b00:	681a      	ldr	r2, [r3, #0]
    2b02:	683b      	ldr	r3, [r7, #0]
    2b04:	4313      	orrs	r3, r2
    2b06:	600b      	str	r3, [r1, #0]
    2b08:	bf00      	nop
    2b0a:	4b29      	ldr	r3, [pc, #164]	; (2bb0 <rtc_init+0x140>)
    2b0c:	685b      	ldr	r3, [r3, #4]
    2b0e:	f003 0320 	and.w	r3, r3, #32
    2b12:	2b00      	cmp	r3, #0
    2b14:	d0f9      	beq.n	2b0a <rtc_init+0x9a>
    2b16:	4a26      	ldr	r2, [pc, #152]	; (2bb0 <rtc_init+0x140>)
    2b18:	687b      	ldr	r3, [r7, #4]
    2b1a:	03db      	lsls	r3, r3, #15
    2b1c:	4925      	ldr	r1, [pc, #148]	; (2bb4 <rtc_init+0x144>)
    2b1e:	fba1 1303 	umull	r1, r3, r1, r3
    2b22:	099b      	lsrs	r3, r3, #6
    2b24:	3b01      	subs	r3, #1
    2b26:	b29b      	uxth	r3, r3
    2b28:	60d3      	str	r3, [r2, #12]
    2b2a:	bf00      	nop
    2b2c:	4b20      	ldr	r3, [pc, #128]	; (2bb0 <rtc_init+0x140>)
    2b2e:	685b      	ldr	r3, [r3, #4]
    2b30:	f003 0320 	and.w	r3, r3, #32
    2b34:	2b00      	cmp	r3, #0
    2b36:	d0f9      	beq.n	2b2c <rtc_init+0xbc>
    2b38:	4a1d      	ldr	r2, [pc, #116]	; (2bb0 <rtc_init+0x140>)
    2b3a:	687b      	ldr	r3, [r7, #4]
    2b3c:	03db      	lsls	r3, r3, #15
    2b3e:	491d      	ldr	r1, [pc, #116]	; (2bb4 <rtc_init+0x144>)
    2b40:	fba1 1303 	umull	r1, r3, r1, r3
    2b44:	099b      	lsrs	r3, r3, #6
    2b46:	3b01      	subs	r3, #1
    2b48:	0c1b      	lsrs	r3, r3, #16
    2b4a:	f003 030f 	and.w	r3, r3, #15
    2b4e:	6093      	str	r3, [r2, #8]
    2b50:	bf00      	nop
    2b52:	4b17      	ldr	r3, [pc, #92]	; (2bb0 <rtc_init+0x140>)
    2b54:	685b      	ldr	r3, [r3, #4]
    2b56:	f003 0320 	and.w	r3, r3, #32
    2b5a:	2b00      	cmp	r3, #0
    2b5c:	d0f9      	beq.n	2b52 <rtc_init+0xe2>
    2b5e:	4b11      	ldr	r3, [pc, #68]	; (2ba4 <rtc_init+0x134>)
    2b60:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2b64:	605a      	str	r2, [r3, #4]
    2b66:	4a12      	ldr	r2, [pc, #72]	; (2bb0 <rtc_init+0x140>)
    2b68:	4b11      	ldr	r3, [pc, #68]	; (2bb0 <rtc_init+0x140>)
    2b6a:	685b      	ldr	r3, [r3, #4]
    2b6c:	f023 0310 	bic.w	r3, r3, #16
    2b70:	6053      	str	r3, [r2, #4]
    2b72:	bf00      	nop
    2b74:	4b0e      	ldr	r3, [pc, #56]	; (2bb0 <rtc_init+0x140>)
    2b76:	685b      	ldr	r3, [r3, #4]
    2b78:	f003 0320 	and.w	r3, r3, #32
    2b7c:	2b00      	cmp	r3, #0
    2b7e:	d0f9      	beq.n	2b74 <rtc_init+0x104>
    2b80:	4a0a      	ldr	r2, [pc, #40]	; (2bac <rtc_init+0x13c>)
    2b82:	4b0a      	ldr	r3, [pc, #40]	; (2bac <rtc_init+0x13c>)
    2b84:	681b      	ldr	r3, [r3, #0]
    2b86:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2b8a:	6013      	str	r3, [r2, #0]
    2b8c:	210f      	movs	r1, #15
    2b8e:	2003      	movs	r0, #3
    2b90:	f7ff fd4a 	bl	2628 <set_int_priority>
    2b94:	2003      	movs	r0, #3
    2b96:	f7ff fc8d 	bl	24b4 <enable_interrupt>
    2b9a:	bf00      	nop
    2b9c:	3708      	adds	r7, #8
    2b9e:	46bd      	mov	sp, r7
    2ba0:	bd80      	pop	{r7, pc}
    2ba2:	bf00      	nop
    2ba4:	40006c00 	.word	0x40006c00
    2ba8:	40021000 	.word	0x40021000
    2bac:	40007000 	.word	0x40007000
    2bb0:	40002800 	.word	0x40002800
    2bb4:	10624dd3 	.word	0x10624dd3

00002bb8 <reset_backup_domain>:
    2bb8:	b480      	push	{r7}
    2bba:	af00      	add	r7, sp, #0
    2bbc:	4a0a      	ldr	r2, [pc, #40]	; (2be8 <reset_backup_domain+0x30>)
    2bbe:	4b0a      	ldr	r3, [pc, #40]	; (2be8 <reset_backup_domain+0x30>)
    2bc0:	69db      	ldr	r3, [r3, #28]
    2bc2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2bc6:	61d3      	str	r3, [r2, #28]
    2bc8:	4a07      	ldr	r2, [pc, #28]	; (2be8 <reset_backup_domain+0x30>)
    2bca:	4b07      	ldr	r3, [pc, #28]	; (2be8 <reset_backup_domain+0x30>)
    2bcc:	6a1b      	ldr	r3, [r3, #32]
    2bce:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2bd2:	6213      	str	r3, [r2, #32]
    2bd4:	4a04      	ldr	r2, [pc, #16]	; (2be8 <reset_backup_domain+0x30>)
    2bd6:	4b04      	ldr	r3, [pc, #16]	; (2be8 <reset_backup_domain+0x30>)
    2bd8:	6a1b      	ldr	r3, [r3, #32]
    2bda:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    2bde:	6213      	str	r3, [r2, #32]
    2be0:	bf00      	nop
    2be2:	46bd      	mov	sp, r7
    2be4:	bc80      	pop	{r7}
    2be6:	4770      	bx	lr
    2be8:	40021000 	.word	0x40021000

00002bec <rtc_clock_trim>:
    2bec:	b480      	push	{r7}
    2bee:	b083      	sub	sp, #12
    2bf0:	af00      	add	r7, sp, #0
    2bf2:	6078      	str	r0, [r7, #4]
    2bf4:	4a34      	ldr	r2, [pc, #208]	; (2cc8 <rtc_clock_trim+0xdc>)
    2bf6:	4b34      	ldr	r3, [pc, #208]	; (2cc8 <rtc_clock_trim+0xdc>)
    2bf8:	69db      	ldr	r3, [r3, #28]
    2bfa:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2bfe:	61d3      	str	r3, [r2, #28]
    2c00:	bf00      	nop
    2c02:	4b32      	ldr	r3, [pc, #200]	; (2ccc <rtc_clock_trim+0xe0>)
    2c04:	685b      	ldr	r3, [r3, #4]
    2c06:	f003 0308 	and.w	r3, r3, #8
    2c0a:	2b00      	cmp	r3, #0
    2c0c:	d0f9      	beq.n	2c02 <rtc_clock_trim+0x16>
    2c0e:	4a30      	ldr	r2, [pc, #192]	; (2cd0 <rtc_clock_trim+0xe4>)
    2c10:	4b2f      	ldr	r3, [pc, #188]	; (2cd0 <rtc_clock_trim+0xe4>)
    2c12:	681b      	ldr	r3, [r3, #0]
    2c14:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2c18:	6013      	str	r3, [r2, #0]
    2c1a:	4a2c      	ldr	r2, [pc, #176]	; (2ccc <rtc_clock_trim+0xe0>)
    2c1c:	4b2b      	ldr	r3, [pc, #172]	; (2ccc <rtc_clock_trim+0xe0>)
    2c1e:	685b      	ldr	r3, [r3, #4]
    2c20:	f043 0310 	orr.w	r3, r3, #16
    2c24:	6053      	str	r3, [r2, #4]
    2c26:	4a2b      	ldr	r2, [pc, #172]	; (2cd4 <rtc_clock_trim+0xe8>)
    2c28:	4b2a      	ldr	r3, [pc, #168]	; (2cd4 <rtc_clock_trim+0xe8>)
    2c2a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2c2c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2c30:	62d3      	str	r3, [r2, #44]	; 0x2c
    2c32:	687b      	ldr	r3, [r7, #4]
    2c34:	2b00      	cmp	r3, #0
    2c36:	d10a      	bne.n	2c4e <rtc_clock_trim+0x62>
    2c38:	4b26      	ldr	r3, [pc, #152]	; (2cd4 <rtc_clock_trim+0xe8>)
    2c3a:	2200      	movs	r2, #0
    2c3c:	62da      	str	r2, [r3, #44]	; 0x2c
    2c3e:	4b23      	ldr	r3, [pc, #140]	; (2ccc <rtc_clock_trim+0xe0>)
    2c40:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2c44:	60da      	str	r2, [r3, #12]
    2c46:	4b21      	ldr	r3, [pc, #132]	; (2ccc <rtc_clock_trim+0xe0>)
    2c48:	2200      	movs	r2, #0
    2c4a:	609a      	str	r2, [r3, #8]
    2c4c:	e023      	b.n	2c96 <rtc_clock_trim+0xaa>
    2c4e:	687b      	ldr	r3, [r7, #4]
    2c50:	2b00      	cmp	r3, #0
    2c52:	dd0a      	ble.n	2c6a <rtc_clock_trim+0x7e>
    2c54:	687b      	ldr	r3, [r7, #4]
    2c56:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2c5a:	607b      	str	r3, [r7, #4]
    2c5c:	491d      	ldr	r1, [pc, #116]	; (2cd4 <rtc_clock_trim+0xe8>)
    2c5e:	4b1d      	ldr	r3, [pc, #116]	; (2cd4 <rtc_clock_trim+0xe8>)
    2c60:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2c62:	687b      	ldr	r3, [r7, #4]
    2c64:	4313      	orrs	r3, r2
    2c66:	62cb      	str	r3, [r1, #44]	; 0x2c
    2c68:	e015      	b.n	2c96 <rtc_clock_trim+0xaa>
    2c6a:	687b      	ldr	r3, [r7, #4]
    2c6c:	425b      	negs	r3, r3
    2c6e:	607b      	str	r3, [r7, #4]
    2c70:	687b      	ldr	r3, [r7, #4]
    2c72:	2b7f      	cmp	r3, #127	; 0x7f
    2c74:	dd01      	ble.n	2c7a <rtc_clock_trim+0x8e>
    2c76:	237f      	movs	r3, #127	; 0x7f
    2c78:	607b      	str	r3, [r7, #4]
    2c7a:	4b16      	ldr	r3, [pc, #88]	; (2cd4 <rtc_clock_trim+0xe8>)
    2c7c:	2200      	movs	r2, #0
    2c7e:	62da      	str	r2, [r3, #44]	; 0x2c
    2c80:	4a12      	ldr	r2, [pc, #72]	; (2ccc <rtc_clock_trim+0xe0>)
    2c82:	687b      	ldr	r3, [r7, #4]
    2c84:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2c88:	33ff      	adds	r3, #255	; 0xff
    2c8a:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2c8e:	60d3      	str	r3, [r2, #12]
    2c90:	4b0e      	ldr	r3, [pc, #56]	; (2ccc <rtc_clock_trim+0xe0>)
    2c92:	2200      	movs	r2, #0
    2c94:	609a      	str	r2, [r3, #8]
    2c96:	4a0d      	ldr	r2, [pc, #52]	; (2ccc <rtc_clock_trim+0xe0>)
    2c98:	4b0c      	ldr	r3, [pc, #48]	; (2ccc <rtc_clock_trim+0xe0>)
    2c9a:	685b      	ldr	r3, [r3, #4]
    2c9c:	f023 0310 	bic.w	r3, r3, #16
    2ca0:	6053      	str	r3, [r2, #4]
    2ca2:	bf00      	nop
    2ca4:	4b09      	ldr	r3, [pc, #36]	; (2ccc <rtc_clock_trim+0xe0>)
    2ca6:	685b      	ldr	r3, [r3, #4]
    2ca8:	f003 0320 	and.w	r3, r3, #32
    2cac:	2b00      	cmp	r3, #0
    2cae:	d0f9      	beq.n	2ca4 <rtc_clock_trim+0xb8>
    2cb0:	4a07      	ldr	r2, [pc, #28]	; (2cd0 <rtc_clock_trim+0xe4>)
    2cb2:	4b07      	ldr	r3, [pc, #28]	; (2cd0 <rtc_clock_trim+0xe4>)
    2cb4:	681b      	ldr	r3, [r3, #0]
    2cb6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2cba:	6013      	str	r3, [r2, #0]
    2cbc:	bf00      	nop
    2cbe:	370c      	adds	r7, #12
    2cc0:	46bd      	mov	sp, r7
    2cc2:	bc80      	pop	{r7}
    2cc4:	4770      	bx	lr
    2cc6:	bf00      	nop
    2cc8:	40021000 	.word	0x40021000
    2ccc:	40002800 	.word	0x40002800
    2cd0:	40007000 	.word	0x40007000
    2cd4:	40006c00 	.word	0x40006c00

00002cd8 <rtc_set_alarm>:
    2cd8:	b480      	push	{r7}
    2cda:	b083      	sub	sp, #12
    2cdc:	af00      	add	r7, sp, #0
    2cde:	6078      	str	r0, [r7, #4]
    2ce0:	bf00      	nop
    2ce2:	370c      	adds	r7, #12
    2ce4:	46bd      	mov	sp, r7
    2ce6:	bc80      	pop	{r7}
    2ce8:	4770      	bx	lr

00002cea <str_to_date>:
    2cea:	b580      	push	{r7, lr}
    2cec:	b084      	sub	sp, #16
    2cee:	af00      	add	r7, sp, #0
    2cf0:	6078      	str	r0, [r7, #4]
    2cf2:	6039      	str	r1, [r7, #0]
    2cf4:	2300      	movs	r3, #0
    2cf6:	60fb      	str	r3, [r7, #12]
    2cf8:	2300      	movs	r3, #0
    2cfa:	60bb      	str	r3, [r7, #8]
    2cfc:	e00f      	b.n	2d1e <str_to_date+0x34>
    2cfe:	68ba      	ldr	r2, [r7, #8]
    2d00:	4613      	mov	r3, r2
    2d02:	009b      	lsls	r3, r3, #2
    2d04:	4413      	add	r3, r2
    2d06:	005b      	lsls	r3, r3, #1
    2d08:	4619      	mov	r1, r3
    2d0a:	68fb      	ldr	r3, [r7, #12]
    2d0c:	1c5a      	adds	r2, r3, #1
    2d0e:	60fa      	str	r2, [r7, #12]
    2d10:	461a      	mov	r2, r3
    2d12:	687b      	ldr	r3, [r7, #4]
    2d14:	4413      	add	r3, r2
    2d16:	781b      	ldrb	r3, [r3, #0]
    2d18:	440b      	add	r3, r1
    2d1a:	3b30      	subs	r3, #48	; 0x30
    2d1c:	60bb      	str	r3, [r7, #8]
    2d1e:	68fb      	ldr	r3, [r7, #12]
    2d20:	687a      	ldr	r2, [r7, #4]
    2d22:	4413      	add	r3, r2
    2d24:	781b      	ldrb	r3, [r3, #0]
    2d26:	4618      	mov	r0, r3
    2d28:	f7fe fbdd 	bl	14e6 <digit>
    2d2c:	4603      	mov	r3, r0
    2d2e:	2b00      	cmp	r3, #0
    2d30:	d1e5      	bne.n	2cfe <str_to_date+0x14>
    2d32:	68fb      	ldr	r3, [r7, #12]
    2d34:	2b03      	cmp	r3, #3
    2d36:	dd05      	ble.n	2d44 <str_to_date+0x5a>
    2d38:	68fb      	ldr	r3, [r7, #12]
    2d3a:	687a      	ldr	r2, [r7, #4]
    2d3c:	4413      	add	r3, r2
    2d3e:	781b      	ldrb	r3, [r3, #0]
    2d40:	2b2f      	cmp	r3, #47	; 0x2f
    2d42:	d001      	beq.n	2d48 <str_to_date+0x5e>
    2d44:	2300      	movs	r3, #0
    2d46:	e068      	b.n	2e1a <str_to_date+0x130>
    2d48:	68bb      	ldr	r3, [r7, #8]
    2d4a:	b29a      	uxth	r2, r3
    2d4c:	683b      	ldr	r3, [r7, #0]
    2d4e:	811a      	strh	r2, [r3, #8]
    2d50:	68fb      	ldr	r3, [r7, #12]
    2d52:	3301      	adds	r3, #1
    2d54:	60fb      	str	r3, [r7, #12]
    2d56:	2300      	movs	r3, #0
    2d58:	60bb      	str	r3, [r7, #8]
    2d5a:	e00f      	b.n	2d7c <str_to_date+0x92>
    2d5c:	68ba      	ldr	r2, [r7, #8]
    2d5e:	4613      	mov	r3, r2
    2d60:	009b      	lsls	r3, r3, #2
    2d62:	4413      	add	r3, r2
    2d64:	005b      	lsls	r3, r3, #1
    2d66:	4619      	mov	r1, r3
    2d68:	68fb      	ldr	r3, [r7, #12]
    2d6a:	1c5a      	adds	r2, r3, #1
    2d6c:	60fa      	str	r2, [r7, #12]
    2d6e:	461a      	mov	r2, r3
    2d70:	687b      	ldr	r3, [r7, #4]
    2d72:	4413      	add	r3, r2
    2d74:	781b      	ldrb	r3, [r3, #0]
    2d76:	440b      	add	r3, r1
    2d78:	3b30      	subs	r3, #48	; 0x30
    2d7a:	60bb      	str	r3, [r7, #8]
    2d7c:	68fb      	ldr	r3, [r7, #12]
    2d7e:	687a      	ldr	r2, [r7, #4]
    2d80:	4413      	add	r3, r2
    2d82:	781b      	ldrb	r3, [r3, #0]
    2d84:	4618      	mov	r0, r3
    2d86:	f7fe fbae 	bl	14e6 <digit>
    2d8a:	4603      	mov	r3, r0
    2d8c:	2b00      	cmp	r3, #0
    2d8e:	d1e5      	bne.n	2d5c <str_to_date+0x72>
    2d90:	68fb      	ldr	r3, [r7, #12]
    2d92:	2b06      	cmp	r3, #6
    2d94:	dd05      	ble.n	2da2 <str_to_date+0xb8>
    2d96:	68fb      	ldr	r3, [r7, #12]
    2d98:	687a      	ldr	r2, [r7, #4]
    2d9a:	4413      	add	r3, r2
    2d9c:	781b      	ldrb	r3, [r3, #0]
    2d9e:	2b2f      	cmp	r3, #47	; 0x2f
    2da0:	d001      	beq.n	2da6 <str_to_date+0xbc>
    2da2:	2300      	movs	r3, #0
    2da4:	e039      	b.n	2e1a <str_to_date+0x130>
    2da6:	68bb      	ldr	r3, [r7, #8]
    2da8:	b2db      	uxtb	r3, r3
    2daa:	f003 030f 	and.w	r3, r3, #15
    2dae:	b2d9      	uxtb	r1, r3
    2db0:	683a      	ldr	r2, [r7, #0]
    2db2:	8853      	ldrh	r3, [r2, #2]
    2db4:	f361 1389 	bfi	r3, r1, #6, #4
    2db8:	8053      	strh	r3, [r2, #2]
    2dba:	2300      	movs	r3, #0
    2dbc:	60bb      	str	r3, [r7, #8]
    2dbe:	68fb      	ldr	r3, [r7, #12]
    2dc0:	3301      	adds	r3, #1
    2dc2:	60fb      	str	r3, [r7, #12]
    2dc4:	e00f      	b.n	2de6 <str_to_date+0xfc>
    2dc6:	68ba      	ldr	r2, [r7, #8]
    2dc8:	4613      	mov	r3, r2
    2dca:	009b      	lsls	r3, r3, #2
    2dcc:	4413      	add	r3, r2
    2dce:	005b      	lsls	r3, r3, #1
    2dd0:	4619      	mov	r1, r3
    2dd2:	68fb      	ldr	r3, [r7, #12]
    2dd4:	1c5a      	adds	r2, r3, #1
    2dd6:	60fa      	str	r2, [r7, #12]
    2dd8:	461a      	mov	r2, r3
    2dda:	687b      	ldr	r3, [r7, #4]
    2ddc:	4413      	add	r3, r2
    2dde:	781b      	ldrb	r3, [r3, #0]
    2de0:	440b      	add	r3, r1
    2de2:	3b30      	subs	r3, #48	; 0x30
    2de4:	60bb      	str	r3, [r7, #8]
    2de6:	68fb      	ldr	r3, [r7, #12]
    2de8:	687a      	ldr	r2, [r7, #4]
    2dea:	4413      	add	r3, r2
    2dec:	781b      	ldrb	r3, [r3, #0]
    2dee:	4618      	mov	r0, r3
    2df0:	f7fe fb79 	bl	14e6 <digit>
    2df4:	4603      	mov	r3, r0
    2df6:	2b00      	cmp	r3, #0
    2df8:	d1e5      	bne.n	2dc6 <str_to_date+0xdc>
    2dfa:	68fb      	ldr	r3, [r7, #12]
    2dfc:	2b09      	cmp	r3, #9
    2dfe:	dc01      	bgt.n	2e04 <str_to_date+0x11a>
    2e00:	2300      	movs	r3, #0
    2e02:	e00a      	b.n	2e1a <str_to_date+0x130>
    2e04:	68bb      	ldr	r3, [r7, #8]
    2e06:	b2db      	uxtb	r3, r3
    2e08:	f003 031f 	and.w	r3, r3, #31
    2e0c:	b2d9      	uxtb	r1, r3
    2e0e:	683a      	ldr	r2, [r7, #0]
    2e10:	7893      	ldrb	r3, [r2, #2]
    2e12:	f361 0345 	bfi	r3, r1, #1, #5
    2e16:	7093      	strb	r3, [r2, #2]
    2e18:	2301      	movs	r3, #1
    2e1a:	4618      	mov	r0, r3
    2e1c:	3710      	adds	r7, #16
    2e1e:	46bd      	mov	sp, r7
    2e20:	bd80      	pop	{r7, pc}

00002e22 <str_to_time>:
    2e22:	b580      	push	{r7, lr}
    2e24:	b084      	sub	sp, #16
    2e26:	af00      	add	r7, sp, #0
    2e28:	6078      	str	r0, [r7, #4]
    2e2a:	6039      	str	r1, [r7, #0]
    2e2c:	2300      	movs	r3, #0
    2e2e:	60fb      	str	r3, [r7, #12]
    2e30:	2300      	movs	r3, #0
    2e32:	72fb      	strb	r3, [r7, #11]
    2e34:	e010      	b.n	2e58 <str_to_time+0x36>
    2e36:	7afb      	ldrb	r3, [r7, #11]
    2e38:	461a      	mov	r2, r3
    2e3a:	0092      	lsls	r2, r2, #2
    2e3c:	4413      	add	r3, r2
    2e3e:	005b      	lsls	r3, r3, #1
    2e40:	b2da      	uxtb	r2, r3
    2e42:	68fb      	ldr	r3, [r7, #12]
    2e44:	1c59      	adds	r1, r3, #1
    2e46:	60f9      	str	r1, [r7, #12]
    2e48:	4619      	mov	r1, r3
    2e4a:	687b      	ldr	r3, [r7, #4]
    2e4c:	440b      	add	r3, r1
    2e4e:	781b      	ldrb	r3, [r3, #0]
    2e50:	4413      	add	r3, r2
    2e52:	b2db      	uxtb	r3, r3
    2e54:	3b30      	subs	r3, #48	; 0x30
    2e56:	72fb      	strb	r3, [r7, #11]
    2e58:	68fb      	ldr	r3, [r7, #12]
    2e5a:	687a      	ldr	r2, [r7, #4]
    2e5c:	4413      	add	r3, r2
    2e5e:	781b      	ldrb	r3, [r3, #0]
    2e60:	4618      	mov	r0, r3
    2e62:	f7fe fb40 	bl	14e6 <digit>
    2e66:	4603      	mov	r3, r0
    2e68:	2b00      	cmp	r3, #0
    2e6a:	d1e4      	bne.n	2e36 <str_to_time+0x14>
    2e6c:	7afb      	ldrb	r3, [r7, #11]
    2e6e:	2b17      	cmp	r3, #23
    2e70:	d805      	bhi.n	2e7e <str_to_time+0x5c>
    2e72:	68fb      	ldr	r3, [r7, #12]
    2e74:	687a      	ldr	r2, [r7, #4]
    2e76:	4413      	add	r3, r2
    2e78:	781b      	ldrb	r3, [r3, #0]
    2e7a:	2b3a      	cmp	r3, #58	; 0x3a
    2e7c:	d001      	beq.n	2e82 <str_to_time+0x60>
    2e7e:	2300      	movs	r3, #0
    2e80:	e06d      	b.n	2f5e <str_to_time+0x13c>
    2e82:	7afb      	ldrb	r3, [r7, #11]
    2e84:	f003 031f 	and.w	r3, r3, #31
    2e88:	b2d9      	uxtb	r1, r3
    2e8a:	683a      	ldr	r2, [r7, #0]
    2e8c:	6813      	ldr	r3, [r2, #0]
    2e8e:	f361 3310 	bfi	r3, r1, #12, #5
    2e92:	6013      	str	r3, [r2, #0]
    2e94:	68fb      	ldr	r3, [r7, #12]
    2e96:	3301      	adds	r3, #1
    2e98:	60fb      	str	r3, [r7, #12]
    2e9a:	2300      	movs	r3, #0
    2e9c:	72fb      	strb	r3, [r7, #11]
    2e9e:	e010      	b.n	2ec2 <str_to_time+0xa0>
    2ea0:	7afb      	ldrb	r3, [r7, #11]
    2ea2:	461a      	mov	r2, r3
    2ea4:	0092      	lsls	r2, r2, #2
    2ea6:	4413      	add	r3, r2
    2ea8:	005b      	lsls	r3, r3, #1
    2eaa:	b2da      	uxtb	r2, r3
    2eac:	68fb      	ldr	r3, [r7, #12]
    2eae:	1c59      	adds	r1, r3, #1
    2eb0:	60f9      	str	r1, [r7, #12]
    2eb2:	4619      	mov	r1, r3
    2eb4:	687b      	ldr	r3, [r7, #4]
    2eb6:	440b      	add	r3, r1
    2eb8:	781b      	ldrb	r3, [r3, #0]
    2eba:	4413      	add	r3, r2
    2ebc:	b2db      	uxtb	r3, r3
    2ebe:	3b30      	subs	r3, #48	; 0x30
    2ec0:	72fb      	strb	r3, [r7, #11]
    2ec2:	68fb      	ldr	r3, [r7, #12]
    2ec4:	687a      	ldr	r2, [r7, #4]
    2ec6:	4413      	add	r3, r2
    2ec8:	781b      	ldrb	r3, [r3, #0]
    2eca:	4618      	mov	r0, r3
    2ecc:	f7fe fb0b 	bl	14e6 <digit>
    2ed0:	4603      	mov	r3, r0
    2ed2:	2b00      	cmp	r3, #0
    2ed4:	d1e4      	bne.n	2ea0 <str_to_time+0x7e>
    2ed6:	7afb      	ldrb	r3, [r7, #11]
    2ed8:	2b3b      	cmp	r3, #59	; 0x3b
    2eda:	d805      	bhi.n	2ee8 <str_to_time+0xc6>
    2edc:	68fb      	ldr	r3, [r7, #12]
    2ede:	687a      	ldr	r2, [r7, #4]
    2ee0:	4413      	add	r3, r2
    2ee2:	781b      	ldrb	r3, [r3, #0]
    2ee4:	2b3a      	cmp	r3, #58	; 0x3a
    2ee6:	d001      	beq.n	2eec <str_to_time+0xca>
    2ee8:	2300      	movs	r3, #0
    2eea:	e038      	b.n	2f5e <str_to_time+0x13c>
    2eec:	7afb      	ldrb	r3, [r7, #11]
    2eee:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2ef2:	b2d9      	uxtb	r1, r3
    2ef4:	683a      	ldr	r2, [r7, #0]
    2ef6:	8813      	ldrh	r3, [r2, #0]
    2ef8:	f361 138b 	bfi	r3, r1, #6, #6
    2efc:	8013      	strh	r3, [r2, #0]
    2efe:	2300      	movs	r3, #0
    2f00:	72fb      	strb	r3, [r7, #11]
    2f02:	68fb      	ldr	r3, [r7, #12]
    2f04:	3301      	adds	r3, #1
    2f06:	60fb      	str	r3, [r7, #12]
    2f08:	e010      	b.n	2f2c <str_to_time+0x10a>
    2f0a:	7afb      	ldrb	r3, [r7, #11]
    2f0c:	461a      	mov	r2, r3
    2f0e:	0092      	lsls	r2, r2, #2
    2f10:	4413      	add	r3, r2
    2f12:	005b      	lsls	r3, r3, #1
    2f14:	b2da      	uxtb	r2, r3
    2f16:	68fb      	ldr	r3, [r7, #12]
    2f18:	1c59      	adds	r1, r3, #1
    2f1a:	60f9      	str	r1, [r7, #12]
    2f1c:	4619      	mov	r1, r3
    2f1e:	687b      	ldr	r3, [r7, #4]
    2f20:	440b      	add	r3, r1
    2f22:	781b      	ldrb	r3, [r3, #0]
    2f24:	4413      	add	r3, r2
    2f26:	b2db      	uxtb	r3, r3
    2f28:	3b30      	subs	r3, #48	; 0x30
    2f2a:	72fb      	strb	r3, [r7, #11]
    2f2c:	68fb      	ldr	r3, [r7, #12]
    2f2e:	687a      	ldr	r2, [r7, #4]
    2f30:	4413      	add	r3, r2
    2f32:	781b      	ldrb	r3, [r3, #0]
    2f34:	4618      	mov	r0, r3
    2f36:	f7fe fad6 	bl	14e6 <digit>
    2f3a:	4603      	mov	r3, r0
    2f3c:	2b00      	cmp	r3, #0
    2f3e:	d1e4      	bne.n	2f0a <str_to_time+0xe8>
    2f40:	7afb      	ldrb	r3, [r7, #11]
    2f42:	2b3b      	cmp	r3, #59	; 0x3b
    2f44:	d901      	bls.n	2f4a <str_to_time+0x128>
    2f46:	2300      	movs	r3, #0
    2f48:	e009      	b.n	2f5e <str_to_time+0x13c>
    2f4a:	7afb      	ldrb	r3, [r7, #11]
    2f4c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2f50:	b2d9      	uxtb	r1, r3
    2f52:	683a      	ldr	r2, [r7, #0]
    2f54:	7813      	ldrb	r3, [r2, #0]
    2f56:	f361 0305 	bfi	r3, r1, #0, #6
    2f5a:	7013      	strb	r3, [r2, #0]
    2f5c:	2301      	movs	r3, #1
    2f5e:	4618      	mov	r0, r3
    2f60:	3710      	adds	r7, #16
    2f62:	46bd      	mov	sp, r7
    2f64:	bd80      	pop	{r7, pc}

00002f66 <date_str>:
    2f66:	b480      	push	{r7}
    2f68:	b085      	sub	sp, #20
    2f6a:	af00      	add	r7, sp, #0
    2f6c:	6078      	str	r0, [r7, #4]
    2f6e:	6039      	str	r1, [r7, #0]
    2f70:	2300      	movs	r3, #0
    2f72:	60fb      	str	r3, [r7, #12]
    2f74:	687b      	ldr	r3, [r7, #4]
    2f76:	891b      	ldrh	r3, [r3, #8]
    2f78:	60bb      	str	r3, [r7, #8]
    2f7a:	68fb      	ldr	r3, [r7, #12]
    2f7c:	1c5a      	adds	r2, r3, #1
    2f7e:	60fa      	str	r2, [r7, #12]
    2f80:	461a      	mov	r2, r3
    2f82:	683b      	ldr	r3, [r7, #0]
    2f84:	4413      	add	r3, r2
    2f86:	68ba      	ldr	r2, [r7, #8]
    2f88:	495d      	ldr	r1, [pc, #372]	; (3100 <date_str+0x19a>)
    2f8a:	fba1 1202 	umull	r1, r2, r1, r2
    2f8e:	0992      	lsrs	r2, r2, #6
    2f90:	b2d2      	uxtb	r2, r2
    2f92:	3230      	adds	r2, #48	; 0x30
    2f94:	b2d2      	uxtb	r2, r2
    2f96:	701a      	strb	r2, [r3, #0]
    2f98:	68bb      	ldr	r3, [r7, #8]
    2f9a:	4a59      	ldr	r2, [pc, #356]	; (3100 <date_str+0x19a>)
    2f9c:	fba2 1203 	umull	r1, r2, r2, r3
    2fa0:	0992      	lsrs	r2, r2, #6
    2fa2:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    2fa6:	fb01 f202 	mul.w	r2, r1, r2
    2faa:	1a9b      	subs	r3, r3, r2
    2fac:	60bb      	str	r3, [r7, #8]
    2fae:	68fb      	ldr	r3, [r7, #12]
    2fb0:	1c5a      	adds	r2, r3, #1
    2fb2:	60fa      	str	r2, [r7, #12]
    2fb4:	461a      	mov	r2, r3
    2fb6:	683b      	ldr	r3, [r7, #0]
    2fb8:	4413      	add	r3, r2
    2fba:	68ba      	ldr	r2, [r7, #8]
    2fbc:	4951      	ldr	r1, [pc, #324]	; (3104 <date_str+0x19e>)
    2fbe:	fba1 1202 	umull	r1, r2, r1, r2
    2fc2:	0952      	lsrs	r2, r2, #5
    2fc4:	b2d2      	uxtb	r2, r2
    2fc6:	3230      	adds	r2, #48	; 0x30
    2fc8:	b2d2      	uxtb	r2, r2
    2fca:	701a      	strb	r2, [r3, #0]
    2fcc:	68bb      	ldr	r3, [r7, #8]
    2fce:	4a4d      	ldr	r2, [pc, #308]	; (3104 <date_str+0x19e>)
    2fd0:	fba2 1203 	umull	r1, r2, r2, r3
    2fd4:	0952      	lsrs	r2, r2, #5
    2fd6:	2164      	movs	r1, #100	; 0x64
    2fd8:	fb01 f202 	mul.w	r2, r1, r2
    2fdc:	1a9b      	subs	r3, r3, r2
    2fde:	60bb      	str	r3, [r7, #8]
    2fe0:	68fb      	ldr	r3, [r7, #12]
    2fe2:	1c5a      	adds	r2, r3, #1
    2fe4:	60fa      	str	r2, [r7, #12]
    2fe6:	461a      	mov	r2, r3
    2fe8:	683b      	ldr	r3, [r7, #0]
    2fea:	4413      	add	r3, r2
    2fec:	68ba      	ldr	r2, [r7, #8]
    2fee:	4946      	ldr	r1, [pc, #280]	; (3108 <date_str+0x1a2>)
    2ff0:	fba1 1202 	umull	r1, r2, r1, r2
    2ff4:	08d2      	lsrs	r2, r2, #3
    2ff6:	b2d2      	uxtb	r2, r2
    2ff8:	3230      	adds	r2, #48	; 0x30
    2ffa:	b2d2      	uxtb	r2, r2
    2ffc:	701a      	strb	r2, [r3, #0]
    2ffe:	68fb      	ldr	r3, [r7, #12]
    3000:	1c5a      	adds	r2, r3, #1
    3002:	60fa      	str	r2, [r7, #12]
    3004:	461a      	mov	r2, r3
    3006:	683b      	ldr	r3, [r7, #0]
    3008:	1898      	adds	r0, r3, r2
    300a:	68b9      	ldr	r1, [r7, #8]
    300c:	4b3e      	ldr	r3, [pc, #248]	; (3108 <date_str+0x1a2>)
    300e:	fba3 2301 	umull	r2, r3, r3, r1
    3012:	08da      	lsrs	r2, r3, #3
    3014:	4613      	mov	r3, r2
    3016:	009b      	lsls	r3, r3, #2
    3018:	4413      	add	r3, r2
    301a:	005b      	lsls	r3, r3, #1
    301c:	1aca      	subs	r2, r1, r3
    301e:	b2d3      	uxtb	r3, r2
    3020:	3330      	adds	r3, #48	; 0x30
    3022:	b2db      	uxtb	r3, r3
    3024:	7003      	strb	r3, [r0, #0]
    3026:	68fb      	ldr	r3, [r7, #12]
    3028:	1c5a      	adds	r2, r3, #1
    302a:	60fa      	str	r2, [r7, #12]
    302c:	461a      	mov	r2, r3
    302e:	683b      	ldr	r3, [r7, #0]
    3030:	4413      	add	r3, r2
    3032:	222f      	movs	r2, #47	; 0x2f
    3034:	701a      	strb	r2, [r3, #0]
    3036:	687b      	ldr	r3, [r7, #4]
    3038:	885b      	ldrh	r3, [r3, #2]
    303a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    303e:	b2db      	uxtb	r3, r3
    3040:	60bb      	str	r3, [r7, #8]
    3042:	68fb      	ldr	r3, [r7, #12]
    3044:	1c5a      	adds	r2, r3, #1
    3046:	60fa      	str	r2, [r7, #12]
    3048:	461a      	mov	r2, r3
    304a:	683b      	ldr	r3, [r7, #0]
    304c:	4413      	add	r3, r2
    304e:	68ba      	ldr	r2, [r7, #8]
    3050:	492d      	ldr	r1, [pc, #180]	; (3108 <date_str+0x1a2>)
    3052:	fba1 1202 	umull	r1, r2, r1, r2
    3056:	08d2      	lsrs	r2, r2, #3
    3058:	b2d2      	uxtb	r2, r2
    305a:	3230      	adds	r2, #48	; 0x30
    305c:	b2d2      	uxtb	r2, r2
    305e:	701a      	strb	r2, [r3, #0]
    3060:	68fb      	ldr	r3, [r7, #12]
    3062:	1c5a      	adds	r2, r3, #1
    3064:	60fa      	str	r2, [r7, #12]
    3066:	461a      	mov	r2, r3
    3068:	683b      	ldr	r3, [r7, #0]
    306a:	1898      	adds	r0, r3, r2
    306c:	68b9      	ldr	r1, [r7, #8]
    306e:	4b26      	ldr	r3, [pc, #152]	; (3108 <date_str+0x1a2>)
    3070:	fba3 2301 	umull	r2, r3, r3, r1
    3074:	08da      	lsrs	r2, r3, #3
    3076:	4613      	mov	r3, r2
    3078:	009b      	lsls	r3, r3, #2
    307a:	4413      	add	r3, r2
    307c:	005b      	lsls	r3, r3, #1
    307e:	1aca      	subs	r2, r1, r3
    3080:	b2d3      	uxtb	r3, r2
    3082:	3330      	adds	r3, #48	; 0x30
    3084:	b2db      	uxtb	r3, r3
    3086:	7003      	strb	r3, [r0, #0]
    3088:	68fb      	ldr	r3, [r7, #12]
    308a:	1c5a      	adds	r2, r3, #1
    308c:	60fa      	str	r2, [r7, #12]
    308e:	461a      	mov	r2, r3
    3090:	683b      	ldr	r3, [r7, #0]
    3092:	4413      	add	r3, r2
    3094:	222f      	movs	r2, #47	; 0x2f
    3096:	701a      	strb	r2, [r3, #0]
    3098:	687b      	ldr	r3, [r7, #4]
    309a:	789b      	ldrb	r3, [r3, #2]
    309c:	f3c3 0344 	ubfx	r3, r3, #1, #5
    30a0:	b2db      	uxtb	r3, r3
    30a2:	60bb      	str	r3, [r7, #8]
    30a4:	68fb      	ldr	r3, [r7, #12]
    30a6:	1c5a      	adds	r2, r3, #1
    30a8:	60fa      	str	r2, [r7, #12]
    30aa:	461a      	mov	r2, r3
    30ac:	683b      	ldr	r3, [r7, #0]
    30ae:	4413      	add	r3, r2
    30b0:	68ba      	ldr	r2, [r7, #8]
    30b2:	4915      	ldr	r1, [pc, #84]	; (3108 <date_str+0x1a2>)
    30b4:	fba1 1202 	umull	r1, r2, r1, r2
    30b8:	08d2      	lsrs	r2, r2, #3
    30ba:	b2d2      	uxtb	r2, r2
    30bc:	3230      	adds	r2, #48	; 0x30
    30be:	b2d2      	uxtb	r2, r2
    30c0:	701a      	strb	r2, [r3, #0]
    30c2:	68fb      	ldr	r3, [r7, #12]
    30c4:	1c5a      	adds	r2, r3, #1
    30c6:	60fa      	str	r2, [r7, #12]
    30c8:	461a      	mov	r2, r3
    30ca:	683b      	ldr	r3, [r7, #0]
    30cc:	1898      	adds	r0, r3, r2
    30ce:	68b9      	ldr	r1, [r7, #8]
    30d0:	4b0d      	ldr	r3, [pc, #52]	; (3108 <date_str+0x1a2>)
    30d2:	fba3 2301 	umull	r2, r3, r3, r1
    30d6:	08da      	lsrs	r2, r3, #3
    30d8:	4613      	mov	r3, r2
    30da:	009b      	lsls	r3, r3, #2
    30dc:	4413      	add	r3, r2
    30de:	005b      	lsls	r3, r3, #1
    30e0:	1aca      	subs	r2, r1, r3
    30e2:	b2d3      	uxtb	r3, r2
    30e4:	3330      	adds	r3, #48	; 0x30
    30e6:	b2db      	uxtb	r3, r3
    30e8:	7003      	strb	r3, [r0, #0]
    30ea:	68fb      	ldr	r3, [r7, #12]
    30ec:	683a      	ldr	r2, [r7, #0]
    30ee:	4413      	add	r3, r2
    30f0:	2200      	movs	r2, #0
    30f2:	701a      	strb	r2, [r3, #0]
    30f4:	bf00      	nop
    30f6:	3714      	adds	r7, #20
    30f8:	46bd      	mov	sp, r7
    30fa:	bc80      	pop	{r7}
    30fc:	4770      	bx	lr
    30fe:	bf00      	nop
    3100:	10624dd3 	.word	0x10624dd3
    3104:	51eb851f 	.word	0x51eb851f
    3108:	cccccccd 	.word	0xcccccccd

0000310c <time_str>:
    310c:	b480      	push	{r7}
    310e:	b085      	sub	sp, #20
    3110:	af00      	add	r7, sp, #0
    3112:	6078      	str	r0, [r7, #4]
    3114:	6039      	str	r1, [r7, #0]
    3116:	2300      	movs	r3, #0
    3118:	60fb      	str	r3, [r7, #12]
    311a:	687b      	ldr	r3, [r7, #4]
    311c:	681b      	ldr	r3, [r3, #0]
    311e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3122:	b2db      	uxtb	r3, r3
    3124:	60bb      	str	r3, [r7, #8]
    3126:	68fb      	ldr	r3, [r7, #12]
    3128:	1c5a      	adds	r2, r3, #1
    312a:	60fa      	str	r2, [r7, #12]
    312c:	461a      	mov	r2, r3
    312e:	683b      	ldr	r3, [r7, #0]
    3130:	4413      	add	r3, r2
    3132:	68ba      	ldr	r2, [r7, #8]
    3134:	4943      	ldr	r1, [pc, #268]	; (3244 <time_str+0x138>)
    3136:	fba1 1202 	umull	r1, r2, r1, r2
    313a:	08d2      	lsrs	r2, r2, #3
    313c:	b2d2      	uxtb	r2, r2
    313e:	3230      	adds	r2, #48	; 0x30
    3140:	b2d2      	uxtb	r2, r2
    3142:	701a      	strb	r2, [r3, #0]
    3144:	68fb      	ldr	r3, [r7, #12]
    3146:	1c5a      	adds	r2, r3, #1
    3148:	60fa      	str	r2, [r7, #12]
    314a:	461a      	mov	r2, r3
    314c:	683b      	ldr	r3, [r7, #0]
    314e:	1898      	adds	r0, r3, r2
    3150:	68b9      	ldr	r1, [r7, #8]
    3152:	4b3c      	ldr	r3, [pc, #240]	; (3244 <time_str+0x138>)
    3154:	fba3 2301 	umull	r2, r3, r3, r1
    3158:	08da      	lsrs	r2, r3, #3
    315a:	4613      	mov	r3, r2
    315c:	009b      	lsls	r3, r3, #2
    315e:	4413      	add	r3, r2
    3160:	005b      	lsls	r3, r3, #1
    3162:	1aca      	subs	r2, r1, r3
    3164:	b2d3      	uxtb	r3, r2
    3166:	3330      	adds	r3, #48	; 0x30
    3168:	b2db      	uxtb	r3, r3
    316a:	7003      	strb	r3, [r0, #0]
    316c:	68fb      	ldr	r3, [r7, #12]
    316e:	1c5a      	adds	r2, r3, #1
    3170:	60fa      	str	r2, [r7, #12]
    3172:	461a      	mov	r2, r3
    3174:	683b      	ldr	r3, [r7, #0]
    3176:	4413      	add	r3, r2
    3178:	223a      	movs	r2, #58	; 0x3a
    317a:	701a      	strb	r2, [r3, #0]
    317c:	687b      	ldr	r3, [r7, #4]
    317e:	881b      	ldrh	r3, [r3, #0]
    3180:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3184:	b2db      	uxtb	r3, r3
    3186:	60bb      	str	r3, [r7, #8]
    3188:	68fb      	ldr	r3, [r7, #12]
    318a:	1c5a      	adds	r2, r3, #1
    318c:	60fa      	str	r2, [r7, #12]
    318e:	461a      	mov	r2, r3
    3190:	683b      	ldr	r3, [r7, #0]
    3192:	4413      	add	r3, r2
    3194:	68ba      	ldr	r2, [r7, #8]
    3196:	492b      	ldr	r1, [pc, #172]	; (3244 <time_str+0x138>)
    3198:	fba1 1202 	umull	r1, r2, r1, r2
    319c:	08d2      	lsrs	r2, r2, #3
    319e:	b2d2      	uxtb	r2, r2
    31a0:	3230      	adds	r2, #48	; 0x30
    31a2:	b2d2      	uxtb	r2, r2
    31a4:	701a      	strb	r2, [r3, #0]
    31a6:	68fb      	ldr	r3, [r7, #12]
    31a8:	1c5a      	adds	r2, r3, #1
    31aa:	60fa      	str	r2, [r7, #12]
    31ac:	461a      	mov	r2, r3
    31ae:	683b      	ldr	r3, [r7, #0]
    31b0:	1898      	adds	r0, r3, r2
    31b2:	68b9      	ldr	r1, [r7, #8]
    31b4:	4b23      	ldr	r3, [pc, #140]	; (3244 <time_str+0x138>)
    31b6:	fba3 2301 	umull	r2, r3, r3, r1
    31ba:	08da      	lsrs	r2, r3, #3
    31bc:	4613      	mov	r3, r2
    31be:	009b      	lsls	r3, r3, #2
    31c0:	4413      	add	r3, r2
    31c2:	005b      	lsls	r3, r3, #1
    31c4:	1aca      	subs	r2, r1, r3
    31c6:	b2d3      	uxtb	r3, r2
    31c8:	3330      	adds	r3, #48	; 0x30
    31ca:	b2db      	uxtb	r3, r3
    31cc:	7003      	strb	r3, [r0, #0]
    31ce:	68fb      	ldr	r3, [r7, #12]
    31d0:	1c5a      	adds	r2, r3, #1
    31d2:	60fa      	str	r2, [r7, #12]
    31d4:	461a      	mov	r2, r3
    31d6:	683b      	ldr	r3, [r7, #0]
    31d8:	4413      	add	r3, r2
    31da:	223a      	movs	r2, #58	; 0x3a
    31dc:	701a      	strb	r2, [r3, #0]
    31de:	687b      	ldr	r3, [r7, #4]
    31e0:	781b      	ldrb	r3, [r3, #0]
    31e2:	f3c3 0305 	ubfx	r3, r3, #0, #6
    31e6:	b2db      	uxtb	r3, r3
    31e8:	60bb      	str	r3, [r7, #8]
    31ea:	68fb      	ldr	r3, [r7, #12]
    31ec:	1c5a      	adds	r2, r3, #1
    31ee:	60fa      	str	r2, [r7, #12]
    31f0:	461a      	mov	r2, r3
    31f2:	683b      	ldr	r3, [r7, #0]
    31f4:	4413      	add	r3, r2
    31f6:	68ba      	ldr	r2, [r7, #8]
    31f8:	4912      	ldr	r1, [pc, #72]	; (3244 <time_str+0x138>)
    31fa:	fba1 1202 	umull	r1, r2, r1, r2
    31fe:	08d2      	lsrs	r2, r2, #3
    3200:	b2d2      	uxtb	r2, r2
    3202:	3230      	adds	r2, #48	; 0x30
    3204:	b2d2      	uxtb	r2, r2
    3206:	701a      	strb	r2, [r3, #0]
    3208:	68fb      	ldr	r3, [r7, #12]
    320a:	1c5a      	adds	r2, r3, #1
    320c:	60fa      	str	r2, [r7, #12]
    320e:	461a      	mov	r2, r3
    3210:	683b      	ldr	r3, [r7, #0]
    3212:	1898      	adds	r0, r3, r2
    3214:	68b9      	ldr	r1, [r7, #8]
    3216:	4b0b      	ldr	r3, [pc, #44]	; (3244 <time_str+0x138>)
    3218:	fba3 2301 	umull	r2, r3, r3, r1
    321c:	08da      	lsrs	r2, r3, #3
    321e:	4613      	mov	r3, r2
    3220:	009b      	lsls	r3, r3, #2
    3222:	4413      	add	r3, r2
    3224:	005b      	lsls	r3, r3, #1
    3226:	1aca      	subs	r2, r1, r3
    3228:	b2d3      	uxtb	r3, r2
    322a:	3330      	adds	r3, #48	; 0x30
    322c:	b2db      	uxtb	r3, r3
    322e:	7003      	strb	r3, [r0, #0]
    3230:	68fb      	ldr	r3, [r7, #12]
    3232:	683a      	ldr	r2, [r7, #0]
    3234:	4413      	add	r3, r2
    3236:	2200      	movs	r2, #0
    3238:	701a      	strb	r2, [r3, #0]
    323a:	bf00      	nop
    323c:	3714      	adds	r7, #20
    323e:	46bd      	mov	sp, r7
    3240:	bc80      	pop	{r7}
    3242:	4770      	bx	lr
    3244:	cccccccd 	.word	0xcccccccd

00003248 <get_fattime>:
    3248:	b580      	push	{r7, lr}
    324a:	b084      	sub	sp, #16
    324c:	af00      	add	r7, sp, #0
    324e:	463b      	mov	r3, r7
    3250:	4618      	mov	r0, r3
    3252:	f7ff fa69 	bl	2728 <get_date_time>
    3256:	783b      	ldrb	r3, [r7, #0]
    3258:	f3c3 0305 	ubfx	r3, r3, #0, #6
    325c:	b2db      	uxtb	r3, r3
    325e:	0fda      	lsrs	r2, r3, #31
    3260:	4413      	add	r3, r2
    3262:	105b      	asrs	r3, r3, #1
    3264:	b2db      	uxtb	r3, r3
    3266:	f003 031f 	and.w	r3, r3, #31
    326a:	b2da      	uxtb	r2, r3
    326c:	7b3b      	ldrb	r3, [r7, #12]
    326e:	f362 0304 	bfi	r3, r2, #0, #5
    3272:	733b      	strb	r3, [r7, #12]
    3274:	883b      	ldrh	r3, [r7, #0]
    3276:	f3c3 1385 	ubfx	r3, r3, #6, #6
    327a:	b2da      	uxtb	r2, r3
    327c:	89bb      	ldrh	r3, [r7, #12]
    327e:	f362 134a 	bfi	r3, r2, #5, #6
    3282:	81bb      	strh	r3, [r7, #12]
    3284:	683b      	ldr	r3, [r7, #0]
    3286:	f3c3 3304 	ubfx	r3, r3, #12, #5
    328a:	b2da      	uxtb	r2, r3
    328c:	7b7b      	ldrb	r3, [r7, #13]
    328e:	f362 03c7 	bfi	r3, r2, #3, #5
    3292:	737b      	strb	r3, [r7, #13]
    3294:	78bb      	ldrb	r3, [r7, #2]
    3296:	f3c3 0344 	ubfx	r3, r3, #1, #5
    329a:	b2da      	uxtb	r2, r3
    329c:	7bbb      	ldrb	r3, [r7, #14]
    329e:	f362 0304 	bfi	r3, r2, #0, #5
    32a2:	73bb      	strb	r3, [r7, #14]
    32a4:	887b      	ldrh	r3, [r7, #2]
    32a6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    32aa:	b2da      	uxtb	r2, r3
    32ac:	89fb      	ldrh	r3, [r7, #14]
    32ae:	f362 1348 	bfi	r3, r2, #5, #4
    32b2:	81fb      	strh	r3, [r7, #14]
    32b4:	893b      	ldrh	r3, [r7, #8]
    32b6:	b2db      	uxtb	r3, r3
    32b8:	3344      	adds	r3, #68	; 0x44
    32ba:	b2db      	uxtb	r3, r3
    32bc:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    32c0:	b2da      	uxtb	r2, r3
    32c2:	7bfb      	ldrb	r3, [r7, #15]
    32c4:	f362 0347 	bfi	r3, r2, #1, #7
    32c8:	73fb      	strb	r3, [r7, #15]
    32ca:	68fb      	ldr	r3, [r7, #12]
    32cc:	4618      	mov	r0, r3
    32ce:	3710      	adds	r7, #16
    32d0:	46bd      	mov	sp, r7
    32d2:	bd80      	pop	{r7, pc}

000032d4 <RTC_handler>:
    32d4:	b480      	push	{r7}
    32d6:	b083      	sub	sp, #12
    32d8:	af00      	add	r7, sp, #0
    32da:	4b0a      	ldr	r3, [pc, #40]	; (3304 <RTC_handler+0x30>)
    32dc:	685b      	ldr	r3, [r3, #4]
    32de:	f003 0301 	and.w	r3, r3, #1
    32e2:	2b00      	cmp	r3, #0
    32e4:	d001      	beq.n	32ea <RTC_handler+0x16>
    32e6:	4b07      	ldr	r3, [pc, #28]	; (3304 <RTC_handler+0x30>)
    32e8:	685b      	ldr	r3, [r3, #4]
    32ea:	4b06      	ldr	r3, [pc, #24]	; (3304 <RTC_handler+0x30>)
    32ec:	685b      	ldr	r3, [r3, #4]
    32ee:	f003 0302 	and.w	r3, r3, #2
    32f2:	2b00      	cmp	r3, #0
    32f4:	d001      	beq.n	32fa <RTC_handler+0x26>
    32f6:	4b03      	ldr	r3, [pc, #12]	; (3304 <RTC_handler+0x30>)
    32f8:	685b      	ldr	r3, [r3, #4]
    32fa:	bf00      	nop
    32fc:	370c      	adds	r7, #12
    32fe:	46bd      	mov	sp, r7
    3300:	bc80      	pop	{r7}
    3302:	4770      	bx	lr
    3304:	40002800 	.word	0x40002800

00003308 <spi_baudrate>:
    3308:	b480      	push	{r7}
    330a:	b083      	sub	sp, #12
    330c:	af00      	add	r7, sp, #0
    330e:	6078      	str	r0, [r7, #4]
    3310:	6039      	str	r1, [r7, #0]
    3312:	687b      	ldr	r3, [r7, #4]
    3314:	681b      	ldr	r3, [r3, #0]
    3316:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    331a:	687b      	ldr	r3, [r7, #4]
    331c:	601a      	str	r2, [r3, #0]
    331e:	687b      	ldr	r3, [r7, #4]
    3320:	681a      	ldr	r2, [r3, #0]
    3322:	683b      	ldr	r3, [r7, #0]
    3324:	00db      	lsls	r3, r3, #3
    3326:	431a      	orrs	r2, r3
    3328:	687b      	ldr	r3, [r7, #4]
    332a:	601a      	str	r2, [r3, #0]
    332c:	bf00      	nop
    332e:	370c      	adds	r7, #12
    3330:	46bd      	mov	sp, r7
    3332:	bc80      	pop	{r7}
    3334:	4770      	bx	lr

00003336 <spi_config_port>:
    3336:	b580      	push	{r7, lr}
    3338:	b082      	sub	sp, #8
    333a:	af00      	add	r7, sp, #0
    333c:	6078      	str	r0, [r7, #4]
    333e:	6039      	str	r1, [r7, #0]
    3340:	4a33      	ldr	r2, [pc, #204]	; (3410 <spi_config_port+0xda>)
    3342:	4b33      	ldr	r3, [pc, #204]	; (3410 <spi_config_port+0xda>)
    3344:	699b      	ldr	r3, [r3, #24]
    3346:	f043 0301 	orr.w	r3, r3, #1
    334a:	6193      	str	r3, [r2, #24]
    334c:	687b      	ldr	r3, [r7, #4]
    334e:	4a31      	ldr	r2, [pc, #196]	; (3414 <spi_config_port+0xde>)
    3350:	4293      	cmp	r3, r2
    3352:	d13e      	bne.n	33d2 <spi_config_port+0x9c>
    3354:	683b      	ldr	r3, [r7, #0]
    3356:	2b00      	cmp	r3, #0
    3358:	d11a      	bne.n	3390 <spi_config_port+0x5a>
    335a:	4a2d      	ldr	r2, [pc, #180]	; (3410 <spi_config_port+0xda>)
    335c:	4b2c      	ldr	r3, [pc, #176]	; (3410 <spi_config_port+0xda>)
    335e:	699b      	ldr	r3, [r3, #24]
    3360:	f043 0304 	orr.w	r3, r3, #4
    3364:	6193      	str	r3, [r2, #24]
    3366:	2203      	movs	r2, #3
    3368:	2104      	movs	r1, #4
    336a:	482b      	ldr	r0, [pc, #172]	; (3418 <spi_config_port+0xe2>)
    336c:	f7fe fac3 	bl	18f6 <config_pin>
    3370:	220b      	movs	r2, #11
    3372:	2105      	movs	r1, #5
    3374:	4828      	ldr	r0, [pc, #160]	; (3418 <spi_config_port+0xe2>)
    3376:	f7fe fabe 	bl	18f6 <config_pin>
    337a:	2204      	movs	r2, #4
    337c:	2106      	movs	r1, #6
    337e:	4826      	ldr	r0, [pc, #152]	; (3418 <spi_config_port+0xe2>)
    3380:	f7fe fab9 	bl	18f6 <config_pin>
    3384:	220b      	movs	r2, #11
    3386:	2107      	movs	r1, #7
    3388:	4823      	ldr	r0, [pc, #140]	; (3418 <spi_config_port+0xe2>)
    338a:	f7fe fab4 	bl	18f6 <config_pin>
    338e:	e03a      	b.n	3406 <spi_config_port+0xd0>
    3390:	4a1f      	ldr	r2, [pc, #124]	; (3410 <spi_config_port+0xda>)
    3392:	4b1f      	ldr	r3, [pc, #124]	; (3410 <spi_config_port+0xda>)
    3394:	699b      	ldr	r3, [r3, #24]
    3396:	f043 030d 	orr.w	r3, r3, #13
    339a:	6193      	str	r3, [r2, #24]
    339c:	4a1f      	ldr	r2, [pc, #124]	; (341c <spi_config_port+0xe6>)
    339e:	4b1f      	ldr	r3, [pc, #124]	; (341c <spi_config_port+0xe6>)
    33a0:	685b      	ldr	r3, [r3, #4]
    33a2:	f043 0301 	orr.w	r3, r3, #1
    33a6:	6053      	str	r3, [r2, #4]
    33a8:	2203      	movs	r2, #3
    33aa:	210f      	movs	r1, #15
    33ac:	481a      	ldr	r0, [pc, #104]	; (3418 <spi_config_port+0xe2>)
    33ae:	f7fe faa2 	bl	18f6 <config_pin>
    33b2:	220b      	movs	r2, #11
    33b4:	2103      	movs	r1, #3
    33b6:	481a      	ldr	r0, [pc, #104]	; (3420 <spi_config_port+0xea>)
    33b8:	f7fe fa9d 	bl	18f6 <config_pin>
    33bc:	2204      	movs	r2, #4
    33be:	2104      	movs	r1, #4
    33c0:	4817      	ldr	r0, [pc, #92]	; (3420 <spi_config_port+0xea>)
    33c2:	f7fe fa98 	bl	18f6 <config_pin>
    33c6:	220b      	movs	r2, #11
    33c8:	2105      	movs	r1, #5
    33ca:	4815      	ldr	r0, [pc, #84]	; (3420 <spi_config_port+0xea>)
    33cc:	f7fe fa93 	bl	18f6 <config_pin>
    33d0:	e019      	b.n	3406 <spi_config_port+0xd0>
    33d2:	4a0f      	ldr	r2, [pc, #60]	; (3410 <spi_config_port+0xda>)
    33d4:	4b0e      	ldr	r3, [pc, #56]	; (3410 <spi_config_port+0xda>)
    33d6:	699b      	ldr	r3, [r3, #24]
    33d8:	f043 0308 	orr.w	r3, r3, #8
    33dc:	6193      	str	r3, [r2, #24]
    33de:	2203      	movs	r2, #3
    33e0:	2102      	movs	r1, #2
    33e2:	480f      	ldr	r0, [pc, #60]	; (3420 <spi_config_port+0xea>)
    33e4:	f7fe fa87 	bl	18f6 <config_pin>
    33e8:	220b      	movs	r2, #11
    33ea:	210d      	movs	r1, #13
    33ec:	480c      	ldr	r0, [pc, #48]	; (3420 <spi_config_port+0xea>)
    33ee:	f7fe fa82 	bl	18f6 <config_pin>
    33f2:	2204      	movs	r2, #4
    33f4:	210e      	movs	r1, #14
    33f6:	480a      	ldr	r0, [pc, #40]	; (3420 <spi_config_port+0xea>)
    33f8:	f7fe fa7d 	bl	18f6 <config_pin>
    33fc:	220b      	movs	r2, #11
    33fe:	210f      	movs	r1, #15
    3400:	4807      	ldr	r0, [pc, #28]	; (3420 <spi_config_port+0xea>)
    3402:	f7fe fa78 	bl	18f6 <config_pin>
    3406:	bf00      	nop
    3408:	3708      	adds	r7, #8
    340a:	46bd      	mov	sp, r7
    340c:	bd80      	pop	{r7, pc}
    340e:	bf00      	nop
    3410:	40021000 	.word	0x40021000
    3414:	40013000 	.word	0x40013000
    3418:	40010800 	.word	0x40010800
    341c:	40010000 	.word	0x40010000
    3420:	40010c00 	.word	0x40010c00

00003424 <spi_init>:
    3424:	b580      	push	{r7, lr}
    3426:	b084      	sub	sp, #16
    3428:	af00      	add	r7, sp, #0
    342a:	60f8      	str	r0, [r7, #12]
    342c:	60b9      	str	r1, [r7, #8]
    342e:	607a      	str	r2, [r7, #4]
    3430:	603b      	str	r3, [r7, #0]
    3432:	6839      	ldr	r1, [r7, #0]
    3434:	68f8      	ldr	r0, [r7, #12]
    3436:	f7ff ff7e 	bl	3336 <spi_config_port>
    343a:	68fb      	ldr	r3, [r7, #12]
    343c:	4a10      	ldr	r2, [pc, #64]	; (3480 <spi_init+0x5c>)
    343e:	4293      	cmp	r3, r2
    3440:	d106      	bne.n	3450 <spi_init+0x2c>
    3442:	4a10      	ldr	r2, [pc, #64]	; (3484 <spi_init+0x60>)
    3444:	4b0f      	ldr	r3, [pc, #60]	; (3484 <spi_init+0x60>)
    3446:	699b      	ldr	r3, [r3, #24]
    3448:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    344c:	6193      	str	r3, [r2, #24]
    344e:	e005      	b.n	345c <spi_init+0x38>
    3450:	4a0c      	ldr	r2, [pc, #48]	; (3484 <spi_init+0x60>)
    3452:	4b0c      	ldr	r3, [pc, #48]	; (3484 <spi_init+0x60>)
    3454:	69db      	ldr	r3, [r3, #28]
    3456:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    345a:	61d3      	str	r3, [r2, #28]
    345c:	68fb      	ldr	r3, [r7, #12]
    345e:	687a      	ldr	r2, [r7, #4]
    3460:	601a      	str	r2, [r3, #0]
    3462:	68b9      	ldr	r1, [r7, #8]
    3464:	68f8      	ldr	r0, [r7, #12]
    3466:	f7ff ff4f 	bl	3308 <spi_baudrate>
    346a:	68fb      	ldr	r3, [r7, #12]
    346c:	681b      	ldr	r3, [r3, #0]
    346e:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    3472:	68fb      	ldr	r3, [r7, #12]
    3474:	601a      	str	r2, [r3, #0]
    3476:	bf00      	nop
    3478:	3710      	adds	r7, #16
    347a:	46bd      	mov	sp, r7
    347c:	bd80      	pop	{r7, pc}
    347e:	bf00      	nop
    3480:	40013000 	.word	0x40013000
    3484:	40021000 	.word	0x40021000

00003488 <spi_send>:
    3488:	b480      	push	{r7}
    348a:	b085      	sub	sp, #20
    348c:	af00      	add	r7, sp, #0
    348e:	6078      	str	r0, [r7, #4]
    3490:	460b      	mov	r3, r1
    3492:	70fb      	strb	r3, [r7, #3]
    3494:	bf00      	nop
    3496:	687b      	ldr	r3, [r7, #4]
    3498:	689b      	ldr	r3, [r3, #8]
    349a:	f003 0302 	and.w	r3, r3, #2
    349e:	2b00      	cmp	r3, #0
    34a0:	d0f9      	beq.n	3496 <spi_send+0xe>
    34a2:	78fa      	ldrb	r2, [r7, #3]
    34a4:	687b      	ldr	r3, [r7, #4]
    34a6:	60da      	str	r2, [r3, #12]
    34a8:	bf00      	nop
    34aa:	687b      	ldr	r3, [r7, #4]
    34ac:	689b      	ldr	r3, [r3, #8]
    34ae:	f003 0301 	and.w	r3, r3, #1
    34b2:	2b00      	cmp	r3, #0
    34b4:	d0f9      	beq.n	34aa <spi_send+0x22>
    34b6:	687b      	ldr	r3, [r7, #4]
    34b8:	68db      	ldr	r3, [r3, #12]
    34ba:	73fb      	strb	r3, [r7, #15]
    34bc:	bf00      	nop
    34be:	3714      	adds	r7, #20
    34c0:	46bd      	mov	sp, r7
    34c2:	bc80      	pop	{r7}
    34c4:	4770      	bx	lr

000034c6 <spi_receive>:
    34c6:	b480      	push	{r7}
    34c8:	b085      	sub	sp, #20
    34ca:	af00      	add	r7, sp, #0
    34cc:	6078      	str	r0, [r7, #4]
    34ce:	bf00      	nop
    34d0:	687b      	ldr	r3, [r7, #4]
    34d2:	689b      	ldr	r3, [r3, #8]
    34d4:	f003 0302 	and.w	r3, r3, #2
    34d8:	2b00      	cmp	r3, #0
    34da:	d0f9      	beq.n	34d0 <spi_receive+0xa>
    34dc:	687b      	ldr	r3, [r7, #4]
    34de:	22ff      	movs	r2, #255	; 0xff
    34e0:	60da      	str	r2, [r3, #12]
    34e2:	bf00      	nop
    34e4:	687b      	ldr	r3, [r7, #4]
    34e6:	689b      	ldr	r3, [r3, #8]
    34e8:	f003 0301 	and.w	r3, r3, #1
    34ec:	2b00      	cmp	r3, #0
    34ee:	d0f9      	beq.n	34e4 <spi_receive+0x1e>
    34f0:	687b      	ldr	r3, [r7, #4]
    34f2:	68db      	ldr	r3, [r3, #12]
    34f4:	73fb      	strb	r3, [r7, #15]
    34f6:	7bfb      	ldrb	r3, [r7, #15]
    34f8:	4618      	mov	r0, r3
    34fa:	3714      	adds	r7, #20
    34fc:	46bd      	mov	sp, r7
    34fe:	bc80      	pop	{r7}
    3500:	4770      	bx	lr

00003502 <spi_send_block>:
    3502:	b480      	push	{r7}
    3504:	b087      	sub	sp, #28
    3506:	af00      	add	r7, sp, #0
    3508:	60f8      	str	r0, [r7, #12]
    350a:	60b9      	str	r1, [r7, #8]
    350c:	607a      	str	r2, [r7, #4]
    350e:	e010      	b.n	3532 <spi_send_block+0x30>
    3510:	68bb      	ldr	r3, [r7, #8]
    3512:	1c5a      	adds	r2, r3, #1
    3514:	60ba      	str	r2, [r7, #8]
    3516:	781b      	ldrb	r3, [r3, #0]
    3518:	461a      	mov	r2, r3
    351a:	68fb      	ldr	r3, [r7, #12]
    351c:	60da      	str	r2, [r3, #12]
    351e:	bf00      	nop
    3520:	68fb      	ldr	r3, [r7, #12]
    3522:	689b      	ldr	r3, [r3, #8]
    3524:	f003 0302 	and.w	r3, r3, #2
    3528:	2b00      	cmp	r3, #0
    352a:	d0f9      	beq.n	3520 <spi_send_block+0x1e>
    352c:	687b      	ldr	r3, [r7, #4]
    352e:	3b01      	subs	r3, #1
    3530:	607b      	str	r3, [r7, #4]
    3532:	687b      	ldr	r3, [r7, #4]
    3534:	2b00      	cmp	r3, #0
    3536:	d1eb      	bne.n	3510 <spi_send_block+0xe>
    3538:	bf00      	nop
    353a:	68fb      	ldr	r3, [r7, #12]
    353c:	689b      	ldr	r3, [r3, #8]
    353e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    3542:	2b00      	cmp	r3, #0
    3544:	d1f9      	bne.n	353a <spi_send_block+0x38>
    3546:	68fb      	ldr	r3, [r7, #12]
    3548:	68db      	ldr	r3, [r3, #12]
    354a:	75fb      	strb	r3, [r7, #23]
    354c:	bf00      	nop
    354e:	371c      	adds	r7, #28
    3550:	46bd      	mov	sp, r7
    3552:	bc80      	pop	{r7}
    3554:	4770      	bx	lr

00003556 <spi_receive_block>:
    3556:	b480      	push	{r7}
    3558:	b085      	sub	sp, #20
    355a:	af00      	add	r7, sp, #0
    355c:	60f8      	str	r0, [r7, #12]
    355e:	60b9      	str	r1, [r7, #8]
    3560:	607a      	str	r2, [r7, #4]
    3562:	e013      	b.n	358c <spi_receive_block+0x36>
    3564:	68fb      	ldr	r3, [r7, #12]
    3566:	2200      	movs	r2, #0
    3568:	60da      	str	r2, [r3, #12]
    356a:	bf00      	nop
    356c:	68fb      	ldr	r3, [r7, #12]
    356e:	689b      	ldr	r3, [r3, #8]
    3570:	f003 0301 	and.w	r3, r3, #1
    3574:	2b00      	cmp	r3, #0
    3576:	d0f9      	beq.n	356c <spi_receive_block+0x16>
    3578:	68bb      	ldr	r3, [r7, #8]
    357a:	1c5a      	adds	r2, r3, #1
    357c:	60ba      	str	r2, [r7, #8]
    357e:	68fa      	ldr	r2, [r7, #12]
    3580:	68d2      	ldr	r2, [r2, #12]
    3582:	b2d2      	uxtb	r2, r2
    3584:	701a      	strb	r2, [r3, #0]
    3586:	687b      	ldr	r3, [r7, #4]
    3588:	3b01      	subs	r3, #1
    358a:	607b      	str	r3, [r7, #4]
    358c:	687b      	ldr	r3, [r7, #4]
    358e:	2b00      	cmp	r3, #0
    3590:	d1e8      	bne.n	3564 <spi_receive_block+0xe>
    3592:	bf00      	nop
    3594:	3714      	adds	r7, #20
    3596:	46bd      	mov	sp, r7
    3598:	bc80      	pop	{r7}
    359a:	4770      	bx	lr

0000359c <reset_mcu>:
    359c:	4b01      	ldr	r3, [pc, #4]	; (35a4 <reset_mcu+0x8>)
    359e:	4a02      	ldr	r2, [pc, #8]	; (35a8 <reset_mcu+0xc>)
    35a0:	601a      	str	r2, [r3, #0]
    35a2:	bf00      	nop
    35a4:	e000ed0c 	.word	0xe000ed0c
    35a8:	05fa0004 	.word	0x05fa0004

000035ac <print_fault>:
    35ac:	b580      	push	{r7, lr}
    35ae:	b082      	sub	sp, #8
    35b0:	af00      	add	r7, sp, #0
    35b2:	6078      	str	r0, [r7, #4]
    35b4:	6039      	str	r1, [r7, #0]
    35b6:	6878      	ldr	r0, [r7, #4]
    35b8:	f000 f9ea 	bl	3990 <print>
    35bc:	4818      	ldr	r0, [pc, #96]	; (3620 <print_fault+0x74>)
    35be:	f000 f9e7 	bl	3990 <print>
    35c2:	683b      	ldr	r3, [r7, #0]
    35c4:	2b00      	cmp	r3, #0
    35c6:	d004      	beq.n	35d2 <print_fault+0x26>
    35c8:	683b      	ldr	r3, [r7, #0]
    35ca:	2110      	movs	r1, #16
    35cc:	4618      	mov	r0, r3
    35ce:	f000 fa02 	bl	39d6 <print_int>
    35d2:	200d      	movs	r0, #13
    35d4:	f000 f924 	bl	3820 <put_char>
    35d8:	4812      	ldr	r0, [pc, #72]	; (3624 <print_fault+0x78>)
    35da:	f000 f9d9 	bl	3990 <print>
    35de:	4b12      	ldr	r3, [pc, #72]	; (3628 <print_fault+0x7c>)
    35e0:	681b      	ldr	r3, [r3, #0]
    35e2:	f3c3 430f 	ubfx	r3, r3, #16, #16
    35e6:	b29b      	uxth	r3, r3
    35e8:	2110      	movs	r1, #16
    35ea:	4618      	mov	r0, r3
    35ec:	f000 f9f3 	bl	39d6 <print_int>
    35f0:	480e      	ldr	r0, [pc, #56]	; (362c <print_fault+0x80>)
    35f2:	f000 f9cd 	bl	3990 <print>
    35f6:	4b0c      	ldr	r3, [pc, #48]	; (3628 <print_fault+0x7c>)
    35f8:	681b      	ldr	r3, [r3, #0]
    35fa:	f3c3 2307 	ubfx	r3, r3, #8, #8
    35fe:	b2db      	uxtb	r3, r3
    3600:	2110      	movs	r1, #16
    3602:	4618      	mov	r0, r3
    3604:	f000 f9e7 	bl	39d6 <print_int>
    3608:	4809      	ldr	r0, [pc, #36]	; (3630 <print_fault+0x84>)
    360a:	f000 f9c1 	bl	3990 <print>
    360e:	4b06      	ldr	r3, [pc, #24]	; (3628 <print_fault+0x7c>)
    3610:	681b      	ldr	r3, [r3, #0]
    3612:	b2db      	uxtb	r3, r3
    3614:	2110      	movs	r1, #16
    3616:	4618      	mov	r0, r3
    3618:	f000 f9dd 	bl	39d6 <print_int>
    361c:	e7fe      	b.n	361c <print_fault+0x70>
    361e:	bf00      	nop
    3620:	00004778 	.word	0x00004778
    3624:	00004788 	.word	0x00004788
    3628:	e000ed28 	.word	0xe000ed28
    362c:	00004790 	.word	0x00004790
    3630:	00004798 	.word	0x00004798

00003634 <config_systicks>:
    3634:	b580      	push	{r7, lr}
    3636:	af00      	add	r7, sp, #0
    3638:	2109      	movs	r1, #9
    363a:	f06f 000e 	mvn.w	r0, #14
    363e:	f7fe fff3 	bl	2628 <set_int_priority>
    3642:	4b04      	ldr	r3, [pc, #16]	; (3654 <config_systicks+0x20>)
    3644:	f242 22f3 	movw	r2, #8947	; 0x22f3
    3648:	601a      	str	r2, [r3, #0]
    364a:	4b03      	ldr	r3, [pc, #12]	; (3658 <config_systicks+0x24>)
    364c:	2203      	movs	r2, #3
    364e:	601a      	str	r2, [r3, #0]
    3650:	bf00      	nop
    3652:	bd80      	pop	{r7, pc}
    3654:	e000e014 	.word	0xe000e014
    3658:	e000e010 	.word	0xe000e010

0000365c <pause>:
    365c:	b480      	push	{r7}
    365e:	b083      	sub	sp, #12
    3660:	af00      	add	r7, sp, #0
    3662:	6078      	str	r0, [r7, #4]
    3664:	4a06      	ldr	r2, [pc, #24]	; (3680 <pause+0x24>)
    3666:	687b      	ldr	r3, [r7, #4]
    3668:	6013      	str	r3, [r2, #0]
    366a:	bf00      	nop
    366c:	4b04      	ldr	r3, [pc, #16]	; (3680 <pause+0x24>)
    366e:	681b      	ldr	r3, [r3, #0]
    3670:	2b00      	cmp	r3, #0
    3672:	d1fb      	bne.n	366c <pause+0x10>
    3674:	bf00      	nop
    3676:	370c      	adds	r7, #12
    3678:	46bd      	mov	sp, r7
    367a:	bc80      	pop	{r7}
    367c:	4770      	bx	lr
    367e:	bf00      	nop
    3680:	200004f0 	.word	0x200004f0

00003684 <STK_handler>:
    3684:	b480      	push	{r7}
    3686:	af00      	add	r7, sp, #0
    3688:	4b08      	ldr	r3, [pc, #32]	; (36ac <STK_handler+0x28>)
    368a:	681b      	ldr	r3, [r3, #0]
    368c:	3301      	adds	r3, #1
    368e:	4a07      	ldr	r2, [pc, #28]	; (36ac <STK_handler+0x28>)
    3690:	6013      	str	r3, [r2, #0]
    3692:	4b07      	ldr	r3, [pc, #28]	; (36b0 <STK_handler+0x2c>)
    3694:	681b      	ldr	r3, [r3, #0]
    3696:	2b00      	cmp	r3, #0
    3698:	d004      	beq.n	36a4 <STK_handler+0x20>
    369a:	4b05      	ldr	r3, [pc, #20]	; (36b0 <STK_handler+0x2c>)
    369c:	681b      	ldr	r3, [r3, #0]
    369e:	3b01      	subs	r3, #1
    36a0:	4a03      	ldr	r2, [pc, #12]	; (36b0 <STK_handler+0x2c>)
    36a2:	6013      	str	r3, [r2, #0]
    36a4:	bf00      	nop
    36a6:	46bd      	mov	sp, r7
    36a8:	bc80      	pop	{r7}
    36aa:	4770      	bx	lr
    36ac:	200004ec 	.word	0x200004ec
    36b0:	200004f0 	.word	0x200004f0

000036b4 <font_color>:
    36b4:	b480      	push	{r7}
    36b6:	b083      	sub	sp, #12
    36b8:	af00      	add	r7, sp, #0
    36ba:	4603      	mov	r3, r0
    36bc:	71fb      	strb	r3, [r7, #7]
    36be:	79fb      	ldrb	r3, [r7, #7]
    36c0:	f003 030f 	and.w	r3, r3, #15
    36c4:	b2da      	uxtb	r2, r3
    36c6:	4b03      	ldr	r3, [pc, #12]	; (36d4 <font_color+0x20>)
    36c8:	705a      	strb	r2, [r3, #1]
    36ca:	bf00      	nop
    36cc:	370c      	adds	r7, #12
    36ce:	46bd      	mov	sp, r7
    36d0:	bc80      	pop	{r7}
    36d2:	4770      	bx	lr
    36d4:	2000005c 	.word	0x2000005c

000036d8 <bg_color>:
    36d8:	b480      	push	{r7}
    36da:	b083      	sub	sp, #12
    36dc:	af00      	add	r7, sp, #0
    36de:	4603      	mov	r3, r0
    36e0:	71fb      	strb	r3, [r7, #7]
    36e2:	79fb      	ldrb	r3, [r7, #7]
    36e4:	f003 030f 	and.w	r3, r3, #15
    36e8:	b2da      	uxtb	r2, r3
    36ea:	4b03      	ldr	r3, [pc, #12]	; (36f8 <bg_color+0x20>)
    36ec:	701a      	strb	r2, [r3, #0]
    36ee:	bf00      	nop
    36f0:	370c      	adds	r7, #12
    36f2:	46bd      	mov	sp, r7
    36f4:	bc80      	pop	{r7}
    36f6:	4770      	bx	lr
    36f8:	2000005c 	.word	0x2000005c

000036fc <select_font>:
    36fc:	b480      	push	{r7}
    36fe:	b083      	sub	sp, #12
    3700:	af00      	add	r7, sp, #0
    3702:	4603      	mov	r3, r0
    3704:	71fb      	strb	r3, [r7, #7]
    3706:	4a04      	ldr	r2, [pc, #16]	; (3718 <select_font+0x1c>)
    3708:	79fb      	ldrb	r3, [r7, #7]
    370a:	7013      	strb	r3, [r2, #0]
    370c:	bf00      	nop
    370e:	370c      	adds	r7, #12
    3710:	46bd      	mov	sp, r7
    3712:	bc80      	pop	{r7}
    3714:	4770      	bx	lr
    3716:	bf00      	nop
    3718:	20000058 	.word	0x20000058

0000371c <new_line>:
    371c:	b580      	push	{r7, lr}
    371e:	af00      	add	r7, sp, #0
    3720:	4b1e      	ldr	r3, [pc, #120]	; (379c <new_line+0x80>)
    3722:	2200      	movs	r2, #0
    3724:	701a      	strb	r2, [r3, #0]
    3726:	4b1e      	ldr	r3, [pc, #120]	; (37a0 <new_line+0x84>)
    3728:	781b      	ldrb	r3, [r3, #0]
    372a:	2b01      	cmp	r3, #1
    372c:	d014      	beq.n	3758 <new_line+0x3c>
    372e:	2b02      	cmp	r3, #2
    3730:	d022      	beq.n	3778 <new_line+0x5c>
    3732:	2b00      	cmp	r3, #0
    3734:	d000      	beq.n	3738 <new_line+0x1c>
    3736:	e02f      	b.n	3798 <new_line+0x7c>
    3738:	4b1a      	ldr	r3, [pc, #104]	; (37a4 <new_line+0x88>)
    373a:	781b      	ldrb	r3, [r3, #0]
    373c:	3306      	adds	r3, #6
    373e:	2b6b      	cmp	r3, #107	; 0x6b
    3740:	dc06      	bgt.n	3750 <new_line+0x34>
    3742:	4b18      	ldr	r3, [pc, #96]	; (37a4 <new_line+0x88>)
    3744:	781b      	ldrb	r3, [r3, #0]
    3746:	3306      	adds	r3, #6
    3748:	b2da      	uxtb	r2, r3
    374a:	4b16      	ldr	r3, [pc, #88]	; (37a4 <new_line+0x88>)
    374c:	701a      	strb	r2, [r3, #0]
    374e:	e023      	b.n	3798 <new_line+0x7c>
    3750:	2006      	movs	r0, #6
    3752:	f7fe faa9 	bl	1ca8 <gfx_scroll_up>
    3756:	e01f      	b.n	3798 <new_line+0x7c>
    3758:	4b12      	ldr	r3, [pc, #72]	; (37a4 <new_line+0x88>)
    375a:	781b      	ldrb	r3, [r3, #0]
    375c:	330a      	adds	r3, #10
    375e:	2b67      	cmp	r3, #103	; 0x67
    3760:	dc06      	bgt.n	3770 <new_line+0x54>
    3762:	4b10      	ldr	r3, [pc, #64]	; (37a4 <new_line+0x88>)
    3764:	781b      	ldrb	r3, [r3, #0]
    3766:	330a      	adds	r3, #10
    3768:	b2da      	uxtb	r2, r3
    376a:	4b0e      	ldr	r3, [pc, #56]	; (37a4 <new_line+0x88>)
    376c:	701a      	strb	r2, [r3, #0]
    376e:	e013      	b.n	3798 <new_line+0x7c>
    3770:	200a      	movs	r0, #10
    3772:	f7fe fa99 	bl	1ca8 <gfx_scroll_up>
    3776:	e00f      	b.n	3798 <new_line+0x7c>
    3778:	4b0a      	ldr	r3, [pc, #40]	; (37a4 <new_line+0x88>)
    377a:	781b      	ldrb	r3, [r3, #0]
    377c:	3308      	adds	r3, #8
    377e:	2b69      	cmp	r3, #105	; 0x69
    3780:	dc06      	bgt.n	3790 <new_line+0x74>
    3782:	4b08      	ldr	r3, [pc, #32]	; (37a4 <new_line+0x88>)
    3784:	781b      	ldrb	r3, [r3, #0]
    3786:	3308      	adds	r3, #8
    3788:	b2da      	uxtb	r2, r3
    378a:	4b06      	ldr	r3, [pc, #24]	; (37a4 <new_line+0x88>)
    378c:	701a      	strb	r2, [r3, #0]
    378e:	e002      	b.n	3796 <new_line+0x7a>
    3790:	2008      	movs	r0, #8
    3792:	f7fe fa89 	bl	1ca8 <gfx_scroll_up>
    3796:	bf00      	nop
    3798:	bf00      	nop
    379a:	bd80      	pop	{r7, pc}
    379c:	200004f4 	.word	0x200004f4
    37a0:	20000058 	.word	0x20000058
    37a4:	200004f5 	.word	0x200004f5

000037a8 <draw_char>:
    37a8:	b5b0      	push	{r4, r5, r7, lr}
    37aa:	b086      	sub	sp, #24
    37ac:	af00      	add	r7, sp, #0
    37ae:	60f8      	str	r0, [r7, #12]
    37b0:	60b9      	str	r1, [r7, #8]
    37b2:	607a      	str	r2, [r7, #4]
    37b4:	603b      	str	r3, [r7, #0]
    37b6:	68bc      	ldr	r4, [r7, #8]
    37b8:	e026      	b.n	3808 <draw_char+0x60>
    37ba:	6abb      	ldr	r3, [r7, #40]	; 0x28
    37bc:	1c5a      	adds	r2, r3, #1
    37be:	62ba      	str	r2, [r7, #40]	; 0x28
    37c0:	781b      	ldrb	r3, [r3, #0]
    37c2:	757b      	strb	r3, [r7, #21]
    37c4:	2380      	movs	r3, #128	; 0x80
    37c6:	75bb      	strb	r3, [r7, #22]
    37c8:	68fd      	ldr	r5, [r7, #12]
    37ca:	e017      	b.n	37fc <draw_char+0x54>
    37cc:	7d7a      	ldrb	r2, [r7, #21]
    37ce:	7dbb      	ldrb	r3, [r7, #22]
    37d0:	4013      	ands	r3, r2
    37d2:	753b      	strb	r3, [r7, #20]
    37d4:	7d3b      	ldrb	r3, [r7, #20]
    37d6:	2b00      	cmp	r3, #0
    37d8:	d003      	beq.n	37e2 <draw_char+0x3a>
    37da:	4b10      	ldr	r3, [pc, #64]	; (381c <draw_char+0x74>)
    37dc:	785b      	ldrb	r3, [r3, #1]
    37de:	75fb      	strb	r3, [r7, #23]
    37e0:	e002      	b.n	37e8 <draw_char+0x40>
    37e2:	4b0e      	ldr	r3, [pc, #56]	; (381c <draw_char+0x74>)
    37e4:	781b      	ldrb	r3, [r3, #0]
    37e6:	75fb      	strb	r3, [r7, #23]
    37e8:	7dfb      	ldrb	r3, [r7, #23]
    37ea:	461a      	mov	r2, r3
    37ec:	4621      	mov	r1, r4
    37ee:	4628      	mov	r0, r5
    37f0:	f7fe f970 	bl	1ad4 <gfx_plot>
    37f4:	7dbb      	ldrb	r3, [r7, #22]
    37f6:	085b      	lsrs	r3, r3, #1
    37f8:	75bb      	strb	r3, [r7, #22]
    37fa:	3501      	adds	r5, #1
    37fc:	68fa      	ldr	r2, [r7, #12]
    37fe:	687b      	ldr	r3, [r7, #4]
    3800:	4413      	add	r3, r2
    3802:	42ab      	cmp	r3, r5
    3804:	dce2      	bgt.n	37cc <draw_char+0x24>
    3806:	3401      	adds	r4, #1
    3808:	68ba      	ldr	r2, [r7, #8]
    380a:	683b      	ldr	r3, [r7, #0]
    380c:	4413      	add	r3, r2
    380e:	42a3      	cmp	r3, r4
    3810:	dcd3      	bgt.n	37ba <draw_char+0x12>
    3812:	bf00      	nop
    3814:	3718      	adds	r7, #24
    3816:	46bd      	mov	sp, r7
    3818:	bdb0      	pop	{r4, r5, r7, pc}
    381a:	bf00      	nop
    381c:	2000005c 	.word	0x2000005c

00003820 <put_char>:
    3820:	b580      	push	{r7, lr}
    3822:	b084      	sub	sp, #16
    3824:	af02      	add	r7, sp, #8
    3826:	4603      	mov	r3, r0
    3828:	71fb      	strb	r3, [r7, #7]
    382a:	4b3d      	ldr	r3, [pc, #244]	; (3920 <put_char+0x100>)
    382c:	781b      	ldrb	r3, [r3, #0]
    382e:	2b01      	cmp	r3, #1
    3830:	d027      	beq.n	3882 <put_char+0x62>
    3832:	2b02      	cmp	r3, #2
    3834:	d048      	beq.n	38c8 <put_char+0xa8>
    3836:	2b00      	cmp	r3, #0
    3838:	d000      	beq.n	383c <put_char+0x1c>
    383a:	e06d      	b.n	3918 <put_char+0xf8>
    383c:	79fb      	ldrb	r3, [r7, #7]
    383e:	2b0f      	cmp	r3, #15
    3840:	d865      	bhi.n	390e <put_char+0xee>
    3842:	4b38      	ldr	r3, [pc, #224]	; (3924 <put_char+0x104>)
    3844:	781b      	ldrb	r3, [r3, #0]
    3846:	4618      	mov	r0, r3
    3848:	4b37      	ldr	r3, [pc, #220]	; (3928 <put_char+0x108>)
    384a:	781b      	ldrb	r3, [r3, #0]
    384c:	4619      	mov	r1, r3
    384e:	79fa      	ldrb	r2, [r7, #7]
    3850:	4613      	mov	r3, r2
    3852:	005b      	lsls	r3, r3, #1
    3854:	4413      	add	r3, r2
    3856:	005b      	lsls	r3, r3, #1
    3858:	461a      	mov	r2, r3
    385a:	4b34      	ldr	r3, [pc, #208]	; (392c <put_char+0x10c>)
    385c:	4413      	add	r3, r2
    385e:	9300      	str	r3, [sp, #0]
    3860:	2306      	movs	r3, #6
    3862:	2204      	movs	r2, #4
    3864:	f7ff ffa0 	bl	37a8 <draw_char>
    3868:	4b2e      	ldr	r3, [pc, #184]	; (3924 <put_char+0x104>)
    386a:	781b      	ldrb	r3, [r3, #0]
    386c:	3304      	adds	r3, #4
    386e:	b2da      	uxtb	r2, r3
    3870:	4b2c      	ldr	r3, [pc, #176]	; (3924 <put_char+0x104>)
    3872:	701a      	strb	r2, [r3, #0]
    3874:	4b2b      	ldr	r3, [pc, #172]	; (3924 <put_char+0x104>)
    3876:	781b      	ldrb	r3, [r3, #0]
    3878:	2bb1      	cmp	r3, #177	; 0xb1
    387a:	d948      	bls.n	390e <put_char+0xee>
    387c:	f7ff ff4e 	bl	371c <new_line>
    3880:	e045      	b.n	390e <put_char+0xee>
    3882:	79fb      	ldrb	r3, [r7, #7]
    3884:	2b0f      	cmp	r3, #15
    3886:	d844      	bhi.n	3912 <put_char+0xf2>
    3888:	4b26      	ldr	r3, [pc, #152]	; (3924 <put_char+0x104>)
    388a:	781b      	ldrb	r3, [r3, #0]
    388c:	4618      	mov	r0, r3
    388e:	4b26      	ldr	r3, [pc, #152]	; (3928 <put_char+0x108>)
    3890:	781b      	ldrb	r3, [r3, #0]
    3892:	4619      	mov	r1, r3
    3894:	79fa      	ldrb	r2, [r7, #7]
    3896:	4613      	mov	r3, r2
    3898:	009b      	lsls	r3, r3, #2
    389a:	4413      	add	r3, r2
    389c:	005b      	lsls	r3, r3, #1
    389e:	461a      	mov	r2, r3
    38a0:	4b23      	ldr	r3, [pc, #140]	; (3930 <put_char+0x110>)
    38a2:	4413      	add	r3, r2
    38a4:	9300      	str	r3, [sp, #0]
    38a6:	230a      	movs	r3, #10
    38a8:	2208      	movs	r2, #8
    38aa:	f7ff ff7d 	bl	37a8 <draw_char>
    38ae:	4b1d      	ldr	r3, [pc, #116]	; (3924 <put_char+0x104>)
    38b0:	781b      	ldrb	r3, [r3, #0]
    38b2:	3308      	adds	r3, #8
    38b4:	b2da      	uxtb	r2, r3
    38b6:	4b1b      	ldr	r3, [pc, #108]	; (3924 <put_char+0x104>)
    38b8:	701a      	strb	r2, [r3, #0]
    38ba:	4b1a      	ldr	r3, [pc, #104]	; (3924 <put_char+0x104>)
    38bc:	781b      	ldrb	r3, [r3, #0]
    38be:	2bad      	cmp	r3, #173	; 0xad
    38c0:	d927      	bls.n	3912 <put_char+0xf2>
    38c2:	f7ff ff2b 	bl	371c <new_line>
    38c6:	e024      	b.n	3912 <put_char+0xf2>
    38c8:	79fb      	ldrb	r3, [r7, #7]
    38ca:	2b1f      	cmp	r3, #31
    38cc:	d923      	bls.n	3916 <put_char+0xf6>
    38ce:	79fb      	ldrb	r3, [r7, #7]
    38d0:	2b84      	cmp	r3, #132	; 0x84
    38d2:	d820      	bhi.n	3916 <put_char+0xf6>
    38d4:	4b13      	ldr	r3, [pc, #76]	; (3924 <put_char+0x104>)
    38d6:	781b      	ldrb	r3, [r3, #0]
    38d8:	4618      	mov	r0, r3
    38da:	4b13      	ldr	r3, [pc, #76]	; (3928 <put_char+0x108>)
    38dc:	781b      	ldrb	r3, [r3, #0]
    38de:	4619      	mov	r1, r3
    38e0:	79fb      	ldrb	r3, [r7, #7]
    38e2:	3b20      	subs	r3, #32
    38e4:	00db      	lsls	r3, r3, #3
    38e6:	4a13      	ldr	r2, [pc, #76]	; (3934 <put_char+0x114>)
    38e8:	4413      	add	r3, r2
    38ea:	9300      	str	r3, [sp, #0]
    38ec:	2308      	movs	r3, #8
    38ee:	2206      	movs	r2, #6
    38f0:	f7ff ff5a 	bl	37a8 <draw_char>
    38f4:	4b0b      	ldr	r3, [pc, #44]	; (3924 <put_char+0x104>)
    38f6:	781b      	ldrb	r3, [r3, #0]
    38f8:	3306      	adds	r3, #6
    38fa:	b2da      	uxtb	r2, r3
    38fc:	4b09      	ldr	r3, [pc, #36]	; (3924 <put_char+0x104>)
    38fe:	701a      	strb	r2, [r3, #0]
    3900:	4b08      	ldr	r3, [pc, #32]	; (3924 <put_char+0x104>)
    3902:	781b      	ldrb	r3, [r3, #0]
    3904:	2baf      	cmp	r3, #175	; 0xaf
    3906:	d906      	bls.n	3916 <put_char+0xf6>
    3908:	f7ff ff08 	bl	371c <new_line>
    390c:	e003      	b.n	3916 <put_char+0xf6>
    390e:	bf00      	nop
    3910:	e002      	b.n	3918 <put_char+0xf8>
    3912:	bf00      	nop
    3914:	e000      	b.n	3918 <put_char+0xf8>
    3916:	bf00      	nop
    3918:	bf00      	nop
    391a:	3708      	adds	r7, #8
    391c:	46bd      	mov	sp, r7
    391e:	bd80      	pop	{r7, pc}
    3920:	20000058 	.word	0x20000058
    3924:	200004f4 	.word	0x200004f4
    3928:	200004f5 	.word	0x200004f5
    392c:	00004204 	.word	0x00004204
    3930:	00004264 	.word	0x00004264
    3934:	00004304 	.word	0x00004304

00003938 <set_cursor>:
    3938:	b480      	push	{r7}
    393a:	b083      	sub	sp, #12
    393c:	af00      	add	r7, sp, #0
    393e:	4603      	mov	r3, r0
    3940:	460a      	mov	r2, r1
    3942:	71fb      	strb	r3, [r7, #7]
    3944:	4613      	mov	r3, r2
    3946:	71bb      	strb	r3, [r7, #6]
    3948:	4a05      	ldr	r2, [pc, #20]	; (3960 <set_cursor+0x28>)
    394a:	79fb      	ldrb	r3, [r7, #7]
    394c:	7013      	strb	r3, [r2, #0]
    394e:	4a05      	ldr	r2, [pc, #20]	; (3964 <set_cursor+0x2c>)
    3950:	79bb      	ldrb	r3, [r7, #6]
    3952:	7013      	strb	r3, [r2, #0]
    3954:	bf00      	nop
    3956:	370c      	adds	r7, #12
    3958:	46bd      	mov	sp, r7
    395a:	bc80      	pop	{r7}
    395c:	4770      	bx	lr
    395e:	bf00      	nop
    3960:	200004f4 	.word	0x200004f4
    3964:	200004f5 	.word	0x200004f5

00003968 <get_cursor>:
    3968:	b480      	push	{r7}
    396a:	af00      	add	r7, sp, #0
    396c:	4b06      	ldr	r3, [pc, #24]	; (3988 <get_cursor+0x20>)
    396e:	781b      	ldrb	r3, [r3, #0]
    3970:	b29b      	uxth	r3, r3
    3972:	021b      	lsls	r3, r3, #8
    3974:	b29a      	uxth	r2, r3
    3976:	4b05      	ldr	r3, [pc, #20]	; (398c <get_cursor+0x24>)
    3978:	781b      	ldrb	r3, [r3, #0]
    397a:	b29b      	uxth	r3, r3
    397c:	4413      	add	r3, r2
    397e:	b29b      	uxth	r3, r3
    3980:	4618      	mov	r0, r3
    3982:	46bd      	mov	sp, r7
    3984:	bc80      	pop	{r7}
    3986:	4770      	bx	lr
    3988:	200004f4 	.word	0x200004f4
    398c:	200004f5 	.word	0x200004f5

00003990 <print>:
    3990:	b580      	push	{r7, lr}
    3992:	b084      	sub	sp, #16
    3994:	af00      	add	r7, sp, #0
    3996:	6078      	str	r0, [r7, #4]
    3998:	e011      	b.n	39be <print+0x2e>
    399a:	7bfb      	ldrb	r3, [r7, #15]
    399c:	2b0a      	cmp	r3, #10
    399e:	d004      	beq.n	39aa <print+0x1a>
    39a0:	2b0d      	cmp	r3, #13
    39a2:	d002      	beq.n	39aa <print+0x1a>
    39a4:	2b08      	cmp	r3, #8
    39a6:	d003      	beq.n	39b0 <print+0x20>
    39a8:	e005      	b.n	39b6 <print+0x26>
    39aa:	f7ff feb7 	bl	371c <new_line>
    39ae:	e006      	b.n	39be <print+0x2e>
    39b0:	f000 f88e 	bl	3ad0 <cursor_left>
    39b4:	e003      	b.n	39be <print+0x2e>
    39b6:	7bfb      	ldrb	r3, [r7, #15]
    39b8:	4618      	mov	r0, r3
    39ba:	f7ff ff31 	bl	3820 <put_char>
    39be:	687b      	ldr	r3, [r7, #4]
    39c0:	1c5a      	adds	r2, r3, #1
    39c2:	607a      	str	r2, [r7, #4]
    39c4:	781b      	ldrb	r3, [r3, #0]
    39c6:	73fb      	strb	r3, [r7, #15]
    39c8:	7bfb      	ldrb	r3, [r7, #15]
    39ca:	2b00      	cmp	r3, #0
    39cc:	d1e5      	bne.n	399a <print+0xa>
    39ce:	bf00      	nop
    39d0:	3710      	adds	r7, #16
    39d2:	46bd      	mov	sp, r7
    39d4:	bd80      	pop	{r7, pc}

000039d6 <print_int>:
    39d6:	b580      	push	{r7, lr}
    39d8:	b08a      	sub	sp, #40	; 0x28
    39da:	af00      	add	r7, sp, #0
    39dc:	6078      	str	r0, [r7, #4]
    39de:	460b      	mov	r3, r1
    39e0:	70fb      	strb	r3, [r7, #3]
    39e2:	2300      	movs	r3, #0
    39e4:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    39e8:	2300      	movs	r3, #0
    39ea:	76fb      	strb	r3, [r7, #27]
    39ec:	2320      	movs	r3, #32
    39ee:	76bb      	strb	r3, [r7, #26]
    39f0:	230e      	movs	r3, #14
    39f2:	623b      	str	r3, [r7, #32]
    39f4:	687b      	ldr	r3, [r7, #4]
    39f6:	2b00      	cmp	r3, #0
    39f8:	da27      	bge.n	3a4a <print_int+0x74>
    39fa:	2301      	movs	r3, #1
    39fc:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3a00:	687b      	ldr	r3, [r7, #4]
    3a02:	425b      	negs	r3, r3
    3a04:	607b      	str	r3, [r7, #4]
    3a06:	e020      	b.n	3a4a <print_int+0x74>
    3a08:	78fa      	ldrb	r2, [r7, #3]
    3a0a:	687b      	ldr	r3, [r7, #4]
    3a0c:	fb93 f1f2 	sdiv	r1, r3, r2
    3a10:	fb02 f201 	mul.w	r2, r2, r1
    3a14:	1a9b      	subs	r3, r3, r2
    3a16:	61fb      	str	r3, [r7, #28]
    3a18:	69fb      	ldr	r3, [r7, #28]
    3a1a:	2b09      	cmp	r3, #9
    3a1c:	dd02      	ble.n	3a24 <print_int+0x4e>
    3a1e:	69fb      	ldr	r3, [r7, #28]
    3a20:	3307      	adds	r3, #7
    3a22:	61fb      	str	r3, [r7, #28]
    3a24:	6a3b      	ldr	r3, [r7, #32]
    3a26:	3b01      	subs	r3, #1
    3a28:	623b      	str	r3, [r7, #32]
    3a2a:	69fb      	ldr	r3, [r7, #28]
    3a2c:	3330      	adds	r3, #48	; 0x30
    3a2e:	61fb      	str	r3, [r7, #28]
    3a30:	69fb      	ldr	r3, [r7, #28]
    3a32:	b2d9      	uxtb	r1, r3
    3a34:	f107 020c 	add.w	r2, r7, #12
    3a38:	6a3b      	ldr	r3, [r7, #32]
    3a3a:	4413      	add	r3, r2
    3a3c:	460a      	mov	r2, r1
    3a3e:	701a      	strb	r2, [r3, #0]
    3a40:	78fb      	ldrb	r3, [r7, #3]
    3a42:	687a      	ldr	r2, [r7, #4]
    3a44:	fb92 f3f3 	sdiv	r3, r2, r3
    3a48:	607b      	str	r3, [r7, #4]
    3a4a:	6a3b      	ldr	r3, [r7, #32]
    3a4c:	2b01      	cmp	r3, #1
    3a4e:	dd02      	ble.n	3a56 <print_int+0x80>
    3a50:	687b      	ldr	r3, [r7, #4]
    3a52:	2b00      	cmp	r3, #0
    3a54:	d1d8      	bne.n	3a08 <print_int+0x32>
    3a56:	6a3b      	ldr	r3, [r7, #32]
    3a58:	2b0e      	cmp	r3, #14
    3a5a:	d108      	bne.n	3a6e <print_int+0x98>
    3a5c:	6a3b      	ldr	r3, [r7, #32]
    3a5e:	3b01      	subs	r3, #1
    3a60:	623b      	str	r3, [r7, #32]
    3a62:	f107 020c 	add.w	r2, r7, #12
    3a66:	6a3b      	ldr	r3, [r7, #32]
    3a68:	4413      	add	r3, r2
    3a6a:	2230      	movs	r2, #48	; 0x30
    3a6c:	701a      	strb	r2, [r3, #0]
    3a6e:	78fb      	ldrb	r3, [r7, #3]
    3a70:	2b0a      	cmp	r3, #10
    3a72:	d10d      	bne.n	3a90 <print_int+0xba>
    3a74:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    3a78:	2b00      	cmp	r3, #0
    3a7a:	d009      	beq.n	3a90 <print_int+0xba>
    3a7c:	6a3b      	ldr	r3, [r7, #32]
    3a7e:	3b01      	subs	r3, #1
    3a80:	623b      	str	r3, [r7, #32]
    3a82:	f107 020c 	add.w	r2, r7, #12
    3a86:	6a3b      	ldr	r3, [r7, #32]
    3a88:	4413      	add	r3, r2
    3a8a:	222d      	movs	r2, #45	; 0x2d
    3a8c:	701a      	strb	r2, [r3, #0]
    3a8e:	e014      	b.n	3aba <print_int+0xe4>
    3a90:	78fb      	ldrb	r3, [r7, #3]
    3a92:	2b10      	cmp	r3, #16
    3a94:	d111      	bne.n	3aba <print_int+0xe4>
    3a96:	6a3b      	ldr	r3, [r7, #32]
    3a98:	3b01      	subs	r3, #1
    3a9a:	623b      	str	r3, [r7, #32]
    3a9c:	f107 020c 	add.w	r2, r7, #12
    3aa0:	6a3b      	ldr	r3, [r7, #32]
    3aa2:	4413      	add	r3, r2
    3aa4:	2278      	movs	r2, #120	; 0x78
    3aa6:	701a      	strb	r2, [r3, #0]
    3aa8:	6a3b      	ldr	r3, [r7, #32]
    3aaa:	3b01      	subs	r3, #1
    3aac:	623b      	str	r3, [r7, #32]
    3aae:	f107 020c 	add.w	r2, r7, #12
    3ab2:	6a3b      	ldr	r3, [r7, #32]
    3ab4:	4413      	add	r3, r2
    3ab6:	2230      	movs	r2, #48	; 0x30
    3ab8:	701a      	strb	r2, [r3, #0]
    3aba:	f107 020c 	add.w	r2, r7, #12
    3abe:	6a3b      	ldr	r3, [r7, #32]
    3ac0:	4413      	add	r3, r2
    3ac2:	4618      	mov	r0, r3
    3ac4:	f7ff ff64 	bl	3990 <print>
    3ac8:	bf00      	nop
    3aca:	3728      	adds	r7, #40	; 0x28
    3acc:	46bd      	mov	sp, r7
    3ace:	bd80      	pop	{r7, pc}

00003ad0 <cursor_left>:
    3ad0:	b480      	push	{r7}
    3ad2:	af00      	add	r7, sp, #0
    3ad4:	4b1a      	ldr	r3, [pc, #104]	; (3b40 <cursor_left+0x70>)
    3ad6:	781b      	ldrb	r3, [r3, #0]
    3ad8:	2b01      	cmp	r3, #1
    3ada:	d010      	beq.n	3afe <cursor_left+0x2e>
    3adc:	2b02      	cmp	r3, #2
    3ade:	d01a      	beq.n	3b16 <cursor_left+0x46>
    3ae0:	2b00      	cmp	r3, #0
    3ae2:	d000      	beq.n	3ae6 <cursor_left+0x16>
    3ae4:	e028      	b.n	3b38 <cursor_left+0x68>
    3ae6:	4b17      	ldr	r3, [pc, #92]	; (3b44 <cursor_left+0x74>)
    3ae8:	781b      	ldrb	r3, [r3, #0]
    3aea:	3b04      	subs	r3, #4
    3aec:	2b00      	cmp	r3, #0
    3aee:	db1e      	blt.n	3b2e <cursor_left+0x5e>
    3af0:	4b14      	ldr	r3, [pc, #80]	; (3b44 <cursor_left+0x74>)
    3af2:	781b      	ldrb	r3, [r3, #0]
    3af4:	3b04      	subs	r3, #4
    3af6:	b2da      	uxtb	r2, r3
    3af8:	4b12      	ldr	r3, [pc, #72]	; (3b44 <cursor_left+0x74>)
    3afa:	701a      	strb	r2, [r3, #0]
    3afc:	e017      	b.n	3b2e <cursor_left+0x5e>
    3afe:	4b11      	ldr	r3, [pc, #68]	; (3b44 <cursor_left+0x74>)
    3b00:	781b      	ldrb	r3, [r3, #0]
    3b02:	3b08      	subs	r3, #8
    3b04:	2b00      	cmp	r3, #0
    3b06:	db14      	blt.n	3b32 <cursor_left+0x62>
    3b08:	4b0e      	ldr	r3, [pc, #56]	; (3b44 <cursor_left+0x74>)
    3b0a:	781b      	ldrb	r3, [r3, #0]
    3b0c:	3b08      	subs	r3, #8
    3b0e:	b2da      	uxtb	r2, r3
    3b10:	4b0c      	ldr	r3, [pc, #48]	; (3b44 <cursor_left+0x74>)
    3b12:	701a      	strb	r2, [r3, #0]
    3b14:	e00d      	b.n	3b32 <cursor_left+0x62>
    3b16:	4b0b      	ldr	r3, [pc, #44]	; (3b44 <cursor_left+0x74>)
    3b18:	781b      	ldrb	r3, [r3, #0]
    3b1a:	3b06      	subs	r3, #6
    3b1c:	2b00      	cmp	r3, #0
    3b1e:	db0a      	blt.n	3b36 <cursor_left+0x66>
    3b20:	4b08      	ldr	r3, [pc, #32]	; (3b44 <cursor_left+0x74>)
    3b22:	781b      	ldrb	r3, [r3, #0]
    3b24:	3b06      	subs	r3, #6
    3b26:	b2da      	uxtb	r2, r3
    3b28:	4b06      	ldr	r3, [pc, #24]	; (3b44 <cursor_left+0x74>)
    3b2a:	701a      	strb	r2, [r3, #0]
    3b2c:	e003      	b.n	3b36 <cursor_left+0x66>
    3b2e:	bf00      	nop
    3b30:	e002      	b.n	3b38 <cursor_left+0x68>
    3b32:	bf00      	nop
    3b34:	e000      	b.n	3b38 <cursor_left+0x68>
    3b36:	bf00      	nop
    3b38:	bf00      	nop
    3b3a:	46bd      	mov	sp, r7
    3b3c:	bc80      	pop	{r7}
    3b3e:	4770      	bx	lr
    3b40:	20000058 	.word	0x20000058
    3b44:	200004f4 	.word	0x200004f4

00003b48 <text_scroller>:
    3b48:	b580      	push	{r7, lr}
    3b4a:	b084      	sub	sp, #16
    3b4c:	af00      	add	r7, sp, #0
    3b4e:	6078      	str	r0, [r7, #4]
    3b50:	460b      	mov	r3, r1
    3b52:	70fb      	strb	r3, [r7, #3]
    3b54:	f7fe f854 	bl	1c00 <gfx_cls>
    3b58:	2002      	movs	r0, #2
    3b5a:	f7ff fdcf 	bl	36fc <select_font>
    3b5e:	687b      	ldr	r3, [r7, #4]
    3b60:	1c5a      	adds	r2, r3, #1
    3b62:	607a      	str	r2, [r7, #4]
    3b64:	781b      	ldrb	r3, [r3, #0]
    3b66:	73fb      	strb	r3, [r7, #15]
    3b68:	e038      	b.n	3bdc <text_scroller+0x94>
    3b6a:	2120      	movs	r1, #32
    3b6c:	2000      	movs	r0, #0
    3b6e:	f7ff fee3 	bl	3938 <set_cursor>
    3b72:	e00e      	b.n	3b92 <text_scroller+0x4a>
    3b74:	7bfb      	ldrb	r3, [r7, #15]
    3b76:	4618      	mov	r0, r3
    3b78:	f7ff fe52 	bl	3820 <put_char>
    3b7c:	687b      	ldr	r3, [r7, #4]
    3b7e:	1c5a      	adds	r2, r3, #1
    3b80:	607a      	str	r2, [r7, #4]
    3b82:	781b      	ldrb	r3, [r3, #0]
    3b84:	73fb      	strb	r3, [r7, #15]
    3b86:	4b2d      	ldr	r3, [pc, #180]	; (3c3c <text_scroller+0xf4>)
    3b88:	881b      	ldrh	r3, [r3, #0]
    3b8a:	b29b      	uxth	r3, r3
    3b8c:	b21b      	sxth	r3, r3
    3b8e:	2b00      	cmp	r3, #0
    3b90:	da42      	bge.n	3c18 <text_scroller+0xd0>
    3b92:	7bfb      	ldrb	r3, [r7, #15]
    3b94:	2b00      	cmp	r3, #0
    3b96:	d002      	beq.n	3b9e <text_scroller+0x56>
    3b98:	7bfb      	ldrb	r3, [r7, #15]
    3b9a:	2b0a      	cmp	r3, #10
    3b9c:	d1ea      	bne.n	3b74 <text_scroller+0x2c>
    3b9e:	2300      	movs	r3, #0
    3ba0:	73bb      	strb	r3, [r7, #14]
    3ba2:	e013      	b.n	3bcc <text_scroller+0x84>
    3ba4:	78fb      	ldrb	r3, [r7, #3]
    3ba6:	4a26      	ldr	r2, [pc, #152]	; (3c40 <text_scroller+0xf8>)
    3ba8:	6013      	str	r3, [r2, #0]
    3baa:	bf00      	nop
    3bac:	4b24      	ldr	r3, [pc, #144]	; (3c40 <text_scroller+0xf8>)
    3bae:	681b      	ldr	r3, [r3, #0]
    3bb0:	2b00      	cmp	r3, #0
    3bb2:	d1fb      	bne.n	3bac <text_scroller+0x64>
    3bb4:	2001      	movs	r0, #1
    3bb6:	f7fe f877 	bl	1ca8 <gfx_scroll_up>
    3bba:	4b20      	ldr	r3, [pc, #128]	; (3c3c <text_scroller+0xf4>)
    3bbc:	881b      	ldrh	r3, [r3, #0]
    3bbe:	b29b      	uxth	r3, r3
    3bc0:	b21b      	sxth	r3, r3
    3bc2:	2b00      	cmp	r3, #0
    3bc4:	da2a      	bge.n	3c1c <text_scroller+0xd4>
    3bc6:	7bbb      	ldrb	r3, [r7, #14]
    3bc8:	3301      	adds	r3, #1
    3bca:	73bb      	strb	r3, [r7, #14]
    3bcc:	7bbb      	ldrb	r3, [r7, #14]
    3bce:	2b07      	cmp	r3, #7
    3bd0:	d9e8      	bls.n	3ba4 <text_scroller+0x5c>
    3bd2:	687b      	ldr	r3, [r7, #4]
    3bd4:	1c5a      	adds	r2, r3, #1
    3bd6:	607a      	str	r2, [r7, #4]
    3bd8:	781b      	ldrb	r3, [r3, #0]
    3bda:	73fb      	strb	r3, [r7, #15]
    3bdc:	7bfb      	ldrb	r3, [r7, #15]
    3bde:	2b00      	cmp	r3, #0
    3be0:	d1c3      	bne.n	3b6a <text_scroller+0x22>
    3be2:	2300      	movs	r3, #0
    3be4:	73fb      	strb	r3, [r7, #15]
    3be6:	e013      	b.n	3c10 <text_scroller+0xc8>
    3be8:	78fb      	ldrb	r3, [r7, #3]
    3bea:	4a15      	ldr	r2, [pc, #84]	; (3c40 <text_scroller+0xf8>)
    3bec:	6013      	str	r3, [r2, #0]
    3bee:	bf00      	nop
    3bf0:	4b13      	ldr	r3, [pc, #76]	; (3c40 <text_scroller+0xf8>)
    3bf2:	681b      	ldr	r3, [r3, #0]
    3bf4:	2b00      	cmp	r3, #0
    3bf6:	d1fb      	bne.n	3bf0 <text_scroller+0xa8>
    3bf8:	2001      	movs	r0, #1
    3bfa:	f7fe f855 	bl	1ca8 <gfx_scroll_up>
    3bfe:	4b0f      	ldr	r3, [pc, #60]	; (3c3c <text_scroller+0xf4>)
    3c00:	881b      	ldrh	r3, [r3, #0]
    3c02:	b29b      	uxth	r3, r3
    3c04:	b21b      	sxth	r3, r3
    3c06:	2b00      	cmp	r3, #0
    3c08:	da0a      	bge.n	3c20 <text_scroller+0xd8>
    3c0a:	7bfb      	ldrb	r3, [r7, #15]
    3c0c:	3301      	adds	r3, #1
    3c0e:	73fb      	strb	r3, [r7, #15]
    3c10:	7bfb      	ldrb	r3, [r7, #15]
    3c12:	2b1f      	cmp	r3, #31
    3c14:	d9e8      	bls.n	3be8 <text_scroller+0xa0>
    3c16:	e004      	b.n	3c22 <text_scroller+0xda>
    3c18:	bf00      	nop
    3c1a:	e002      	b.n	3c22 <text_scroller+0xda>
    3c1c:	bf00      	nop
    3c1e:	e000      	b.n	3c22 <text_scroller+0xda>
    3c20:	bf00      	nop
    3c22:	f7fd ffed 	bl	1c00 <gfx_cls>
    3c26:	bf00      	nop
    3c28:	4b04      	ldr	r3, [pc, #16]	; (3c3c <text_scroller+0xf4>)
    3c2a:	881b      	ldrh	r3, [r3, #0]
    3c2c:	b29b      	uxth	r3, r3
    3c2e:	b21b      	sxth	r3, r3
    3c30:	2b00      	cmp	r3, #0
    3c32:	daf9      	bge.n	3c28 <text_scroller+0xe0>
    3c34:	bf00      	nop
    3c36:	3710      	adds	r7, #16
    3c38:	46bd      	mov	sp, r7
    3c3a:	bd80      	pop	{r7, pc}
    3c3c:	20002550 	.word	0x20002550
    3c40:	200004f0 	.word	0x200004f0

00003c44 <prompt_btn>:
    3c44:	b580      	push	{r7, lr}
    3c46:	af00      	add	r7, sp, #0
    3c48:	4802      	ldr	r0, [pc, #8]	; (3c54 <prompt_btn+0x10>)
    3c4a:	f7ff fea1 	bl	3990 <print>
    3c4e:	bf00      	nop
    3c50:	bd80      	pop	{r7, pc}
    3c52:	bf00      	nop
    3c54:	000047e4 	.word	0x000047e4

00003c58 <clear_screen>:
    3c58:	b580      	push	{r7, lr}
    3c5a:	af00      	add	r7, sp, #0
    3c5c:	f7fd ffd0 	bl	1c00 <gfx_cls>
    3c60:	4b03      	ldr	r3, [pc, #12]	; (3c70 <clear_screen+0x18>)
    3c62:	2200      	movs	r2, #0
    3c64:	701a      	strb	r2, [r3, #0]
    3c66:	4b03      	ldr	r3, [pc, #12]	; (3c74 <clear_screen+0x1c>)
    3c68:	2200      	movs	r2, #0
    3c6a:	701a      	strb	r2, [r3, #0]
    3c6c:	bf00      	nop
    3c6e:	bd80      	pop	{r7, pc}
    3c70:	200004f4 	.word	0x200004f4
    3c74:	200004f5 	.word	0x200004f5

00003c78 <tvout_init>:
    3c78:	b580      	push	{r7, lr}
    3c7a:	af00      	add	r7, sp, #0
    3c7c:	4b45      	ldr	r3, [pc, #276]	; (3d94 <tvout_init+0x11c>)
    3c7e:	4a46      	ldr	r2, [pc, #280]	; (3d98 <tvout_init+0x120>)
    3c80:	601a      	str	r2, [r3, #0]
    3c82:	4b46      	ldr	r3, [pc, #280]	; (3d9c <tvout_init+0x124>)
    3c84:	4a46      	ldr	r2, [pc, #280]	; (3da0 <tvout_init+0x128>)
    3c86:	601a      	str	r2, [r3, #0]
    3c88:	220a      	movs	r2, #10
    3c8a:	2108      	movs	r1, #8
    3c8c:	4841      	ldr	r0, [pc, #260]	; (3d94 <tvout_init+0x11c>)
    3c8e:	f7fd fe32 	bl	18f6 <config_pin>
    3c92:	4b40      	ldr	r3, [pc, #256]	; (3d94 <tvout_init+0x11c>)
    3c94:	2200      	movs	r2, #0
    3c96:	60da      	str	r2, [r3, #12]
    3c98:	4a42      	ldr	r2, [pc, #264]	; (3da4 <tvout_init+0x12c>)
    3c9a:	4b42      	ldr	r3, [pc, #264]	; (3da4 <tvout_init+0x12c>)
    3c9c:	699b      	ldr	r3, [r3, #24]
    3c9e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3ca2:	6193      	str	r3, [r2, #24]
    3ca4:	4b40      	ldr	r3, [pc, #256]	; (3da8 <tvout_init+0x130>)
    3ca6:	2278      	movs	r2, #120	; 0x78
    3ca8:	619a      	str	r2, [r3, #24]
    3caa:	4b3f      	ldr	r3, [pc, #252]	; (3da8 <tvout_init+0x130>)
    3cac:	2201      	movs	r2, #1
    3cae:	621a      	str	r2, [r3, #32]
    3cb0:	4b3d      	ldr	r3, [pc, #244]	; (3da8 <tvout_init+0x130>)
    3cb2:	2284      	movs	r2, #132	; 0x84
    3cb4:	601a      	str	r2, [r3, #0]
    3cb6:	4b3c      	ldr	r3, [pc, #240]	; (3da8 <tvout_init+0x130>)
    3cb8:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3cbc:	62da      	str	r2, [r3, #44]	; 0x2c
    3cbe:	4b3a      	ldr	r3, [pc, #232]	; (3da8 <tvout_init+0x130>)
    3cc0:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3cc4:	635a      	str	r2, [r3, #52]	; 0x34
    3cc6:	4b38      	ldr	r3, [pc, #224]	; (3da8 <tvout_init+0x130>)
    3cc8:	f240 126d 	movw	r2, #365	; 0x16d
    3ccc:	639a      	str	r2, [r3, #56]	; 0x38
    3cce:	4a36      	ldr	r2, [pc, #216]	; (3da8 <tvout_init+0x130>)
    3cd0:	4b35      	ldr	r3, [pc, #212]	; (3da8 <tvout_init+0x130>)
    3cd2:	695b      	ldr	r3, [r3, #20]
    3cd4:	f043 0301 	orr.w	r3, r3, #1
    3cd8:	6153      	str	r3, [r2, #20]
    3cda:	4b33      	ldr	r3, [pc, #204]	; (3da8 <tvout_init+0x130>)
    3cdc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    3ce0:	645a      	str	r2, [r3, #68]	; 0x44
    3ce2:	4b31      	ldr	r3, [pc, #196]	; (3da8 <tvout_init+0x130>)
    3ce4:	2200      	movs	r2, #0
    3ce6:	611a      	str	r2, [r3, #16]
    3ce8:	4a2f      	ldr	r2, [pc, #188]	; (3da8 <tvout_init+0x130>)
    3cea:	4b2f      	ldr	r3, [pc, #188]	; (3da8 <tvout_init+0x130>)
    3cec:	68db      	ldr	r3, [r3, #12]
    3cee:	f043 0301 	orr.w	r3, r3, #1
    3cf2:	60d3      	str	r3, [r2, #12]
    3cf4:	2100      	movs	r1, #0
    3cf6:	2019      	movs	r0, #25
    3cf8:	f7fe fc96 	bl	2628 <set_int_priority>
    3cfc:	2100      	movs	r1, #0
    3cfe:	201b      	movs	r0, #27
    3d00:	f7fe fc92 	bl	2628 <set_int_priority>
    3d04:	201b      	movs	r0, #27
    3d06:	f7fe fbd5 	bl	24b4 <enable_interrupt>
    3d0a:	2019      	movs	r0, #25
    3d0c:	f7fe fbd2 	bl	24b4 <enable_interrupt>
    3d10:	4a25      	ldr	r2, [pc, #148]	; (3da8 <tvout_init+0x130>)
    3d12:	4b25      	ldr	r3, [pc, #148]	; (3da8 <tvout_init+0x130>)
    3d14:	681b      	ldr	r3, [r3, #0]
    3d16:	f043 0301 	orr.w	r3, r3, #1
    3d1a:	6013      	str	r3, [r2, #0]
    3d1c:	220a      	movs	r2, #10
    3d1e:	2100      	movs	r1, #0
    3d20:	4822      	ldr	r0, [pc, #136]	; (3dac <tvout_init+0x134>)
    3d22:	f7fd fde8 	bl	18f6 <config_pin>
    3d26:	220a      	movs	r2, #10
    3d28:	2101      	movs	r1, #1
    3d2a:	4820      	ldr	r0, [pc, #128]	; (3dac <tvout_init+0x134>)
    3d2c:	f7fd fde3 	bl	18f6 <config_pin>
    3d30:	4a1c      	ldr	r2, [pc, #112]	; (3da4 <tvout_init+0x12c>)
    3d32:	4b1c      	ldr	r3, [pc, #112]	; (3da4 <tvout_init+0x12c>)
    3d34:	69db      	ldr	r3, [r3, #28]
    3d36:	f043 0302 	orr.w	r3, r3, #2
    3d3a:	61d3      	str	r3, [r2, #28]
    3d3c:	4b1c      	ldr	r3, [pc, #112]	; (3db0 <tvout_init+0x138>)
    3d3e:	f246 0278 	movw	r2, #24696	; 0x6078
    3d42:	61da      	str	r2, [r3, #28]
    3d44:	4b1a      	ldr	r3, [pc, #104]	; (3db0 <tvout_init+0x138>)
    3d46:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    3d4a:	621a      	str	r2, [r3, #32]
    3d4c:	4b18      	ldr	r3, [pc, #96]	; (3db0 <tvout_init+0x138>)
    3d4e:	2284      	movs	r2, #132	; 0x84
    3d50:	601a      	str	r2, [r3, #0]
    3d52:	4b17      	ldr	r3, [pc, #92]	; (3db0 <tvout_init+0x138>)
    3d54:	2213      	movs	r2, #19
    3d56:	62da      	str	r2, [r3, #44]	; 0x2c
    3d58:	4b15      	ldr	r3, [pc, #84]	; (3db0 <tvout_init+0x138>)
    3d5a:	220a      	movs	r2, #10
    3d5c:	63da      	str	r2, [r3, #60]	; 0x3c
    3d5e:	4b14      	ldr	r3, [pc, #80]	; (3db0 <tvout_init+0x138>)
    3d60:	220a      	movs	r2, #10
    3d62:	641a      	str	r2, [r3, #64]	; 0x40
    3d64:	4a12      	ldr	r2, [pc, #72]	; (3db0 <tvout_init+0x138>)
    3d66:	4b12      	ldr	r3, [pc, #72]	; (3db0 <tvout_init+0x138>)
    3d68:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    3d6a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3d6e:	6453      	str	r3, [r2, #68]	; 0x44
    3d70:	4a0f      	ldr	r2, [pc, #60]	; (3db0 <tvout_init+0x138>)
    3d72:	4b0f      	ldr	r3, [pc, #60]	; (3db0 <tvout_init+0x138>)
    3d74:	695b      	ldr	r3, [r3, #20]
    3d76:	f043 0301 	orr.w	r3, r3, #1
    3d7a:	6153      	str	r3, [r2, #20]
    3d7c:	4b0c      	ldr	r3, [pc, #48]	; (3db0 <tvout_init+0x138>)
    3d7e:	2200      	movs	r2, #0
    3d80:	611a      	str	r2, [r3, #16]
    3d82:	4a0b      	ldr	r2, [pc, #44]	; (3db0 <tvout_init+0x138>)
    3d84:	4b0a      	ldr	r3, [pc, #40]	; (3db0 <tvout_init+0x138>)
    3d86:	681b      	ldr	r3, [r3, #0]
    3d88:	f043 0301 	orr.w	r3, r3, #1
    3d8c:	6013      	str	r3, [r2, #0]
    3d8e:	bf00      	nop
    3d90:	bd80      	pop	{r7, pc}
    3d92:	bf00      	nop
    3d94:	40010800 	.word	0x40010800
    3d98:	88883333 	.word	0x88883333
    3d9c:	40010804 	.word	0x40010804
    3da0:	88444444 	.word	0x88444444
    3da4:	40021000 	.word	0x40021000
    3da8:	40012c00 	.word	0x40012c00
    3dac:	40010c00 	.word	0x40010c00
    3db0:	40000400 	.word	0x40000400

00003db4 <TV_OUT_handler>:
    3db4:	4668      	mov	r0, sp
    3db6:	f020 0107 	bic.w	r1, r0, #7
    3dba:	468d      	mov	sp, r1
    3dbc:	b431      	push	{r0, r4, r5}
    3dbe:	4b48      	ldr	r3, [pc, #288]	; (3ee0 <TV_OUT_handler+0x12c>)
    3dc0:	781c      	ldrb	r4, [r3, #0]
    3dc2:	2c01      	cmp	r4, #1
    3dc4:	d95b      	bls.n	3e7e <TV_OUT_handler+0xca>
    3dc6:	4b47      	ldr	r3, [pc, #284]	; (3ee4 <TV_OUT_handler+0x130>)
    3dc8:	881b      	ldrh	r3, [r3, #0]
    3dca:	f013 0f04 	tst.w	r3, #4
    3dce:	d04e      	beq.n	3e6e <TV_OUT_handler+0xba>
    3dd0:	4b45      	ldr	r3, [pc, #276]	; (3ee8 <TV_OUT_handler+0x134>)
    3dd2:	eb03 1304 	add.w	r3, r3, r4, lsl #4
    3dd6:	7a18      	ldrb	r0, [r3, #8]
    3dd8:	88da      	ldrh	r2, [r3, #6]
    3dda:	4944      	ldr	r1, [pc, #272]	; (3eec <TV_OUT_handler+0x138>)
    3ddc:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3dde:	4293      	cmp	r3, r2
    3de0:	d3fc      	bcc.n	3ddc <TV_OUT_handler+0x28>
    3de2:	4b43      	ldr	r3, [pc, #268]	; (3ef0 <TV_OUT_handler+0x13c>)
    3de4:	461a      	mov	r2, r3
    3de6:	6812      	ldr	r2, [r2, #0]
    3de8:	f002 020f 	and.w	r2, r2, #15
    3dec:	ea4f 0242 	mov.w	r2, r2, lsl #1
    3df0:	4497      	add	pc, r2
    3df2:	bf00      	nop
    3df4:	bf00      	nop
    3df6:	bf00      	nop
    3df8:	bf00      	nop
    3dfa:	bf00      	nop
    3dfc:	bf00      	nop
    3dfe:	bf00      	nop
    3e00:	bf00      	nop
    3e02:	bf00      	nop
    3e04:	bf00      	nop
    3e06:	bf00      	nop
    3e08:	bf00      	nop
    3e0a:	bf00      	nop
    3e0c:	bf00      	nop
    3e0e:	bf00      	nop
    3e10:	bf00      	nop
    3e12:	4938      	ldr	r1, [pc, #224]	; (3ef4 <TV_OUT_handler+0x140>)
    3e14:	6a0d      	ldr	r5, [r1, #32]
    3e16:	4a34      	ldr	r2, [pc, #208]	; (3ee8 <TV_OUT_handler+0x134>)
    3e18:	eb02 1204 	add.w	r2, r2, r4, lsl #4
    3e1c:	89d3      	ldrh	r3, [r2, #14]
    3e1e:	432b      	orrs	r3, r5
    3e20:	620b      	str	r3, [r1, #32]
    3e22:	2c03      	cmp	r4, #3
    3e24:	d03c      	beq.n	3ea0 <TV_OUT_handler+0xec>
    3e26:	4b34      	ldr	r3, [pc, #208]	; (3ef8 <TV_OUT_handler+0x144>)
    3e28:	881b      	ldrh	r3, [r3, #0]
    3e2a:	f3c3 034e 	ubfx	r3, r3, #1, #15
    3e2e:	4a33      	ldr	r2, [pc, #204]	; (3efc <TV_OUT_handler+0x148>)
    3e30:	fb00 2303 	mla	r3, r0, r3, r2
    3e34:	b198      	cbz	r0, 3e5e <TV_OUT_handler+0xaa>
    3e36:	4418      	add	r0, r3
    3e38:	4931      	ldr	r1, [pc, #196]	; (3f00 <TV_OUT_handler+0x14c>)
    3e3a:	781a      	ldrb	r2, [r3, #0]
    3e3c:	0912      	lsrs	r2, r2, #4
    3e3e:	800a      	strh	r2, [r1, #0]
    3e40:	f04f 0202 	mov.w	r2, #2
    3e44:	3a01      	subs	r2, #1
    3e46:	d1fd      	bne.n	3e44 <TV_OUT_handler+0x90>
    3e48:	f813 2b01 	ldrb.w	r2, [r3], #1
    3e4c:	f002 020f 	and.w	r2, r2, #15
    3e50:	800a      	strh	r2, [r1, #0]
    3e52:	f04f 0202 	mov.w	r2, #2
    3e56:	3a01      	subs	r2, #1
    3e58:	d1fd      	bne.n	3e56 <TV_OUT_handler+0xa2>
    3e5a:	4283      	cmp	r3, r0
    3e5c:	d1ed      	bne.n	3e3a <TV_OUT_handler+0x86>
    3e5e:	2200      	movs	r2, #0
    3e60:	4b28      	ldr	r3, [pc, #160]	; (3f04 <TV_OUT_handler+0x150>)
    3e62:	60da      	str	r2, [r3, #12]
    3e64:	4a23      	ldr	r2, [pc, #140]	; (3ef4 <TV_OUT_handler+0x140>)
    3e66:	6a13      	ldr	r3, [r2, #32]
    3e68:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    3e6c:	6213      	str	r3, [r2, #32]
    3e6e:	4a1f      	ldr	r2, [pc, #124]	; (3eec <TV_OUT_handler+0x138>)
    3e70:	6913      	ldr	r3, [r2, #16]
    3e72:	f023 0304 	bic.w	r3, r3, #4
    3e76:	6113      	str	r3, [r2, #16]
    3e78:	bc31      	pop	{r0, r4, r5}
    3e7a:	4685      	mov	sp, r0
    3e7c:	4770      	bx	lr
    3e7e:	4a1d      	ldr	r2, [pc, #116]	; (3ef4 <TV_OUT_handler+0x140>)
    3e80:	6a13      	ldr	r3, [r2, #32]
    3e82:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3e86:	6213      	str	r3, [r2, #32]
    3e88:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    3e8c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3e8e:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    3e92:	d9fb      	bls.n	3e8c <TV_OUT_handler+0xd8>
    3e94:	4a17      	ldr	r2, [pc, #92]	; (3ef4 <TV_OUT_handler+0x140>)
    3e96:	6a13      	ldr	r3, [r2, #32]
    3e98:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3e9c:	6213      	str	r3, [r2, #32]
    3e9e:	e792      	b.n	3dc6 <TV_OUT_handler+0x12>
    3ea0:	4b15      	ldr	r3, [pc, #84]	; (3ef8 <TV_OUT_handler+0x144>)
    3ea2:	881b      	ldrh	r3, [r3, #0]
    3ea4:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3ea8:	4a14      	ldr	r2, [pc, #80]	; (3efc <TV_OUT_handler+0x148>)
    3eaa:	fb00 2303 	mla	r3, r0, r3, r2
    3eae:	2800      	cmp	r0, #0
    3eb0:	d0d5      	beq.n	3e5e <TV_OUT_handler+0xaa>
    3eb2:	4418      	add	r0, r3
    3eb4:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    3eb8:	310c      	adds	r1, #12
    3eba:	781a      	ldrb	r2, [r3, #0]
    3ebc:	0912      	lsrs	r2, r2, #4
    3ebe:	800a      	strh	r2, [r1, #0]
    3ec0:	f04f 0205 	mov.w	r2, #5
    3ec4:	3a01      	subs	r2, #1
    3ec6:	d1fd      	bne.n	3ec4 <TV_OUT_handler+0x110>
    3ec8:	f813 2b01 	ldrb.w	r2, [r3], #1
    3ecc:	f002 020f 	and.w	r2, r2, #15
    3ed0:	800a      	strh	r2, [r1, #0]
    3ed2:	f04f 0205 	mov.w	r2, #5
    3ed6:	3a01      	subs	r2, #1
    3ed8:	d1fd      	bne.n	3ed6 <TV_OUT_handler+0x122>
    3eda:	4298      	cmp	r0, r3
    3edc:	d1ed      	bne.n	3eba <TV_OUT_handler+0x106>
    3ede:	e7be      	b.n	3e5e <TV_OUT_handler+0xaa>
    3ee0:	200004f6 	.word	0x200004f6
    3ee4:	200004fa 	.word	0x200004fa
    3ee8:	000047fc 	.word	0x000047fc
    3eec:	40012c00 	.word	0x40012c00
    3ef0:	40012c24 	.word	0x40012c24
    3ef4:	40000400 	.word	0x40000400
    3ef8:	200004fc 	.word	0x200004fc
    3efc:	20002554 	.word	0x20002554
    3f00:	4001080c 	.word	0x4001080c
    3f04:	40010800 	.word	0x40010800

00003f08 <TV_SYNC_handler>:
    3f08:	4668      	mov	r0, sp
    3f0a:	f020 0107 	bic.w	r1, r0, #7
    3f0e:	468d      	mov	sp, r1
    3f10:	b401      	push	{r0}
    3f12:	4a87      	ldr	r2, [pc, #540]	; (4130 <TV_SYNC_handler+0x228>)
    3f14:	8813      	ldrh	r3, [r2, #0]
    3f16:	3301      	adds	r3, #1
    3f18:	b29b      	uxth	r3, r3
    3f1a:	8013      	strh	r3, [r2, #0]
    3f1c:	4b85      	ldr	r3, [pc, #532]	; (4134 <TV_SYNC_handler+0x22c>)
    3f1e:	881b      	ldrh	r3, [r3, #0]
    3f20:	b29b      	uxth	r3, r3
    3f22:	2b07      	cmp	r3, #7
    3f24:	f200 808e 	bhi.w	4044 <TV_SYNC_handler+0x13c>
    3f28:	e8df f013 	tbh	[pc, r3, lsl #1]
    3f2c:	002a0008 	.word	0x002a0008
    3f30:	006c004a 	.word	0x006c004a
    3f34:	00a30094 	.word	0x00a30094
    3f38:	00da00bd 	.word	0x00da00bd
    3f3c:	4b7e      	ldr	r3, [pc, #504]	; (4138 <TV_SYNC_handler+0x230>)
    3f3e:	881b      	ldrh	r3, [r3, #0]
    3f40:	b29b      	uxth	r3, r3
    3f42:	b18b      	cbz	r3, 3f68 <TV_SYNC_handler+0x60>
    3f44:	4a7c      	ldr	r2, [pc, #496]	; (4138 <TV_SYNC_handler+0x230>)
    3f46:	8813      	ldrh	r3, [r2, #0]
    3f48:	3301      	adds	r3, #1
    3f4a:	b29b      	uxth	r3, r3
    3f4c:	8013      	strh	r3, [r2, #0]
    3f4e:	8813      	ldrh	r3, [r2, #0]
    3f50:	b29b      	uxth	r3, r3
    3f52:	2b06      	cmp	r3, #6
    3f54:	d176      	bne.n	4044 <TV_SYNC_handler+0x13c>
    3f56:	2200      	movs	r2, #0
    3f58:	4b77      	ldr	r3, [pc, #476]	; (4138 <TV_SYNC_handler+0x230>)
    3f5a:	801a      	strh	r2, [r3, #0]
    3f5c:	4a75      	ldr	r2, [pc, #468]	; (4134 <TV_SYNC_handler+0x22c>)
    3f5e:	8813      	ldrh	r3, [r2, #0]
    3f60:	3301      	adds	r3, #1
    3f62:	b29b      	uxth	r3, r3
    3f64:	8013      	strh	r3, [r2, #0]
    3f66:	e06d      	b.n	4044 <TV_SYNC_handler+0x13c>
    3f68:	4b74      	ldr	r3, [pc, #464]	; (413c <TV_SYNC_handler+0x234>)
    3f6a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3f6e:	62da      	str	r2, [r3, #44]	; 0x2c
    3f70:	22a4      	movs	r2, #164	; 0xa4
    3f72:	635a      	str	r2, [r3, #52]	; 0x34
    3f74:	4a70      	ldr	r2, [pc, #448]	; (4138 <TV_SYNC_handler+0x230>)
    3f76:	8813      	ldrh	r3, [r2, #0]
    3f78:	3301      	adds	r3, #1
    3f7a:	b29b      	uxth	r3, r3
    3f7c:	8013      	strh	r3, [r2, #0]
    3f7e:	e061      	b.n	4044 <TV_SYNC_handler+0x13c>
    3f80:	4b6d      	ldr	r3, [pc, #436]	; (4138 <TV_SYNC_handler+0x230>)
    3f82:	881b      	ldrh	r3, [r3, #0]
    3f84:	b29b      	uxth	r3, r3
    3f86:	b18b      	cbz	r3, 3fac <TV_SYNC_handler+0xa4>
    3f88:	4a6b      	ldr	r2, [pc, #428]	; (4138 <TV_SYNC_handler+0x230>)
    3f8a:	8813      	ldrh	r3, [r2, #0]
    3f8c:	3301      	adds	r3, #1
    3f8e:	b29b      	uxth	r3, r3
    3f90:	8013      	strh	r3, [r2, #0]
    3f92:	8813      	ldrh	r3, [r2, #0]
    3f94:	b29b      	uxth	r3, r3
    3f96:	2b06      	cmp	r3, #6
    3f98:	d154      	bne.n	4044 <TV_SYNC_handler+0x13c>
    3f9a:	2200      	movs	r2, #0
    3f9c:	4b66      	ldr	r3, [pc, #408]	; (4138 <TV_SYNC_handler+0x230>)
    3f9e:	801a      	strh	r2, [r3, #0]
    3fa0:	4a64      	ldr	r2, [pc, #400]	; (4134 <TV_SYNC_handler+0x22c>)
    3fa2:	8813      	ldrh	r3, [r2, #0]
    3fa4:	3301      	adds	r3, #1
    3fa6:	b29b      	uxth	r3, r3
    3fa8:	8013      	strh	r3, [r2, #0]
    3faa:	e04b      	b.n	4044 <TV_SYNC_handler+0x13c>
    3fac:	f240 7294 	movw	r2, #1940	; 0x794
    3fb0:	4b62      	ldr	r3, [pc, #392]	; (413c <TV_SYNC_handler+0x234>)
    3fb2:	635a      	str	r2, [r3, #52]	; 0x34
    3fb4:	4a60      	ldr	r2, [pc, #384]	; (4138 <TV_SYNC_handler+0x230>)
    3fb6:	8813      	ldrh	r3, [r2, #0]
    3fb8:	3301      	adds	r3, #1
    3fba:	b29b      	uxth	r3, r3
    3fbc:	8013      	strh	r3, [r2, #0]
    3fbe:	e041      	b.n	4044 <TV_SYNC_handler+0x13c>
    3fc0:	4b5d      	ldr	r3, [pc, #372]	; (4138 <TV_SYNC_handler+0x230>)
    3fc2:	881b      	ldrh	r3, [r3, #0]
    3fc4:	b29b      	uxth	r3, r3
    3fc6:	b153      	cbz	r3, 3fde <TV_SYNC_handler+0xd6>
    3fc8:	4b5b      	ldr	r3, [pc, #364]	; (4138 <TV_SYNC_handler+0x230>)
    3fca:	881b      	ldrh	r3, [r3, #0]
    3fcc:	b29b      	uxth	r3, r3
    3fce:	2b06      	cmp	r3, #6
    3fd0:	d00e      	beq.n	3ff0 <TV_SYNC_handler+0xe8>
    3fd2:	4a59      	ldr	r2, [pc, #356]	; (4138 <TV_SYNC_handler+0x230>)
    3fd4:	8813      	ldrh	r3, [r2, #0]
    3fd6:	3301      	adds	r3, #1
    3fd8:	b29b      	uxth	r3, r3
    3fda:	8013      	strh	r3, [r2, #0]
    3fdc:	e032      	b.n	4044 <TV_SYNC_handler+0x13c>
    3fde:	22a4      	movs	r2, #164	; 0xa4
    3fe0:	4b56      	ldr	r3, [pc, #344]	; (413c <TV_SYNC_handler+0x234>)
    3fe2:	635a      	str	r2, [r3, #52]	; 0x34
    3fe4:	4a54      	ldr	r2, [pc, #336]	; (4138 <TV_SYNC_handler+0x230>)
    3fe6:	8813      	ldrh	r3, [r2, #0]
    3fe8:	3301      	adds	r3, #1
    3fea:	b29b      	uxth	r3, r3
    3fec:	8013      	strh	r3, [r2, #0]
    3fee:	e029      	b.n	4044 <TV_SYNC_handler+0x13c>
    3ff0:	4a50      	ldr	r2, [pc, #320]	; (4134 <TV_SYNC_handler+0x22c>)
    3ff2:	8813      	ldrh	r3, [r2, #0]
    3ff4:	3301      	adds	r3, #1
    3ff6:	b29b      	uxth	r3, r3
    3ff8:	8013      	strh	r3, [r2, #0]
    3ffa:	4b51      	ldr	r3, [pc, #324]	; (4140 <TV_SYNC_handler+0x238>)
    3ffc:	881b      	ldrh	r3, [r3, #0]
    3ffe:	f013 0f01 	tst.w	r3, #1
    4002:	d01f      	beq.n	4044 <TV_SYNC_handler+0x13c>
    4004:	4a4d      	ldr	r2, [pc, #308]	; (413c <TV_SYNC_handler+0x234>)
    4006:	f241 13c5 	movw	r3, #4549	; 0x11c5
    400a:	62d3      	str	r3, [r2, #44]	; 0x2c
    400c:	f44f 73a8 	mov.w	r3, #336	; 0x150
    4010:	6353      	str	r3, [r2, #52]	; 0x34
    4012:	494b      	ldr	r1, [pc, #300]	; (4140 <TV_SYNC_handler+0x238>)
    4014:	880b      	ldrh	r3, [r1, #0]
    4016:	f023 0302 	bic.w	r3, r3, #2
    401a:	041b      	lsls	r3, r3, #16
    401c:	0c1b      	lsrs	r3, r3, #16
    401e:	800b      	strh	r3, [r1, #0]
    4020:	4943      	ldr	r1, [pc, #268]	; (4130 <TV_SYNC_handler+0x228>)
    4022:	880b      	ldrh	r3, [r1, #0]
    4024:	f3c3 038d 	ubfx	r3, r3, #2, #14
    4028:	800b      	strh	r3, [r1, #0]
    402a:	4942      	ldr	r1, [pc, #264]	; (4134 <TV_SYNC_handler+0x22c>)
    402c:	880b      	ldrh	r3, [r1, #0]
    402e:	3301      	adds	r3, #1
    4030:	b29b      	uxth	r3, r3
    4032:	800b      	strh	r3, [r1, #0]
    4034:	6913      	ldr	r3, [r2, #16]
    4036:	f023 0304 	bic.w	r3, r3, #4
    403a:	6113      	str	r3, [r2, #16]
    403c:	68d3      	ldr	r3, [r2, #12]
    403e:	f043 0304 	orr.w	r3, r3, #4
    4042:	60d3      	str	r3, [r2, #12]
    4044:	4a3d      	ldr	r2, [pc, #244]	; (413c <TV_SYNC_handler+0x234>)
    4046:	6913      	ldr	r3, [r2, #16]
    4048:	f023 0301 	bic.w	r3, r3, #1
    404c:	6113      	str	r3, [r2, #16]
    404e:	bc01      	pop	{r0}
    4050:	4685      	mov	sp, r0
    4052:	4770      	bx	lr
    4054:	4b3b      	ldr	r3, [pc, #236]	; (4144 <TV_SYNC_handler+0x23c>)
    4056:	689b      	ldr	r3, [r3, #8]
    4058:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    405c:	f023 030f 	bic.w	r3, r3, #15
    4060:	b29b      	uxth	r3, r3
    4062:	4a39      	ldr	r2, [pc, #228]	; (4148 <TV_SYNC_handler+0x240>)
    4064:	8013      	strh	r3, [r2, #0]
    4066:	4a33      	ldr	r2, [pc, #204]	; (4134 <TV_SYNC_handler+0x22c>)
    4068:	8813      	ldrh	r3, [r2, #0]
    406a:	3301      	adds	r3, #1
    406c:	b29b      	uxth	r3, r3
    406e:	8013      	strh	r3, [r2, #0]
    4070:	e7e8      	b.n	4044 <TV_SYNC_handler+0x13c>
    4072:	4b2f      	ldr	r3, [pc, #188]	; (4130 <TV_SYNC_handler+0x228>)
    4074:	881b      	ldrh	r3, [r3, #0]
    4076:	b29b      	uxth	r3, r3
    4078:	4a34      	ldr	r2, [pc, #208]	; (414c <TV_SYNC_handler+0x244>)
    407a:	7811      	ldrb	r1, [r2, #0]
    407c:	4a34      	ldr	r2, [pc, #208]	; (4150 <TV_SYNC_handler+0x248>)
    407e:	eb02 1201 	add.w	r2, r2, r1, lsl #4
    4082:	8852      	ldrh	r2, [r2, #2]
    4084:	429a      	cmp	r2, r3
    4086:	d1dd      	bne.n	4044 <TV_SYNC_handler+0x13c>
    4088:	4a2a      	ldr	r2, [pc, #168]	; (4134 <TV_SYNC_handler+0x22c>)
    408a:	8813      	ldrh	r3, [r2, #0]
    408c:	3301      	adds	r3, #1
    408e:	b29b      	uxth	r3, r3
    4090:	8013      	strh	r3, [r2, #0]
    4092:	2200      	movs	r2, #0
    4094:	4b28      	ldr	r3, [pc, #160]	; (4138 <TV_SYNC_handler+0x230>)
    4096:	801a      	strh	r2, [r3, #0]
    4098:	4a29      	ldr	r2, [pc, #164]	; (4140 <TV_SYNC_handler+0x238>)
    409a:	8813      	ldrh	r3, [r2, #0]
    409c:	b29b      	uxth	r3, r3
    409e:	f043 0304 	orr.w	r3, r3, #4
    40a2:	8013      	strh	r3, [r2, #0]
    40a4:	e7ce      	b.n	4044 <TV_SYNC_handler+0x13c>
    40a6:	4a24      	ldr	r2, [pc, #144]	; (4138 <TV_SYNC_handler+0x230>)
    40a8:	8813      	ldrh	r3, [r2, #0]
    40aa:	3301      	adds	r3, #1
    40ac:	b29b      	uxth	r3, r3
    40ae:	8013      	strh	r3, [r2, #0]
    40b0:	4b1f      	ldr	r3, [pc, #124]	; (4130 <TV_SYNC_handler+0x228>)
    40b2:	881b      	ldrh	r3, [r3, #0]
    40b4:	b29b      	uxth	r3, r3
    40b6:	4a25      	ldr	r2, [pc, #148]	; (414c <TV_SYNC_handler+0x244>)
    40b8:	7811      	ldrb	r1, [r2, #0]
    40ba:	4a25      	ldr	r2, [pc, #148]	; (4150 <TV_SYNC_handler+0x248>)
    40bc:	eb02 1201 	add.w	r2, r2, r1, lsl #4
    40c0:	8892      	ldrh	r2, [r2, #4]
    40c2:	429a      	cmp	r2, r3
    40c4:	d1be      	bne.n	4044 <TV_SYNC_handler+0x13c>
    40c6:	4a1b      	ldr	r2, [pc, #108]	; (4134 <TV_SYNC_handler+0x22c>)
    40c8:	8813      	ldrh	r3, [r2, #0]
    40ca:	3301      	adds	r3, #1
    40cc:	b29b      	uxth	r3, r3
    40ce:	8013      	strh	r3, [r2, #0]
    40d0:	4a1b      	ldr	r2, [pc, #108]	; (4140 <TV_SYNC_handler+0x238>)
    40d2:	8813      	ldrh	r3, [r2, #0]
    40d4:	f023 0304 	bic.w	r3, r3, #4
    40d8:	041b      	lsls	r3, r3, #16
    40da:	0c1b      	lsrs	r3, r3, #16
    40dc:	8013      	strh	r3, [r2, #0]
    40de:	e7b1      	b.n	4044 <TV_SYNC_handler+0x13c>
    40e0:	4b13      	ldr	r3, [pc, #76]	; (4130 <TV_SYNC_handler+0x228>)
    40e2:	881b      	ldrh	r3, [r3, #0]
    40e4:	b29b      	uxth	r3, r3
    40e6:	f240 1207 	movw	r2, #263	; 0x107
    40ea:	4293      	cmp	r3, r2
    40ec:	d1aa      	bne.n	4044 <TV_SYNC_handler+0x13c>
    40ee:	4b14      	ldr	r3, [pc, #80]	; (4140 <TV_SYNC_handler+0x238>)
    40f0:	881b      	ldrh	r3, [r3, #0]
    40f2:	f013 0f01 	tst.w	r3, #1
    40f6:	d003      	beq.n	4100 <TV_SYNC_handler+0x1f8>
    40f8:	f640 02e2 	movw	r2, #2274	; 0x8e2
    40fc:	4b0f      	ldr	r3, [pc, #60]	; (413c <TV_SYNC_handler+0x234>)
    40fe:	62da      	str	r2, [r3, #44]	; 0x2c
    4100:	4a0f      	ldr	r2, [pc, #60]	; (4140 <TV_SYNC_handler+0x238>)
    4102:	8813      	ldrh	r3, [r2, #0]
    4104:	b29b      	uxth	r3, r3
    4106:	f083 0301 	eor.w	r3, r3, #1
    410a:	8013      	strh	r3, [r2, #0]
    410c:	8813      	ldrh	r3, [r2, #0]
    410e:	b29b      	uxth	r3, r3
    4110:	f043 0302 	orr.w	r3, r3, #2
    4114:	8013      	strh	r3, [r2, #0]
    4116:	2300      	movs	r3, #0
    4118:	4a05      	ldr	r2, [pc, #20]	; (4130 <TV_SYNC_handler+0x228>)
    411a:	8013      	strh	r3, [r2, #0]
    411c:	4a06      	ldr	r2, [pc, #24]	; (4138 <TV_SYNC_handler+0x230>)
    411e:	8013      	strh	r3, [r2, #0]
    4120:	4a04      	ldr	r2, [pc, #16]	; (4134 <TV_SYNC_handler+0x22c>)
    4122:	8013      	strh	r3, [r2, #0]
    4124:	4a05      	ldr	r2, [pc, #20]	; (413c <TV_SYNC_handler+0x234>)
    4126:	68d3      	ldr	r3, [r2, #12]
    4128:	f023 0304 	bic.w	r3, r3, #4
    412c:	60d3      	str	r3, [r2, #12]
    412e:	e789      	b.n	4044 <TV_SYNC_handler+0x13c>
    4130:	200004fe 	.word	0x200004fe
    4134:	200004f8 	.word	0x200004f8
    4138:	200004fc 	.word	0x200004fc
    413c:	40012c00 	.word	0x40012c00
    4140:	200004fa 	.word	0x200004fa
    4144:	40010800 	.word	0x40010800
    4148:	20002550 	.word	0x20002550
    414c:	200004f6 	.word	0x200004f6
    4150:	000047fc 	.word	0x000047fc

00004154 <frame_sync>:
    4154:	b480      	push	{r7}
    4156:	af00      	add	r7, sp, #0
    4158:	bf00      	nop
    415a:	4b05      	ldr	r3, [pc, #20]	; (4170 <frame_sync+0x1c>)
    415c:	881b      	ldrh	r3, [r3, #0]
    415e:	b29b      	uxth	r3, r3
    4160:	f003 0302 	and.w	r3, r3, #2
    4164:	2b00      	cmp	r3, #0
    4166:	d0f8      	beq.n	415a <frame_sync+0x6>
    4168:	bf00      	nop
    416a:	46bd      	mov	sp, r7
    416c:	bc80      	pop	{r7}
    416e:	4770      	bx	lr
    4170:	200004fa 	.word	0x200004fa

00004174 <btn_wait_any>:
    4174:	b480      	push	{r7}
    4176:	af00      	add	r7, sp, #0
    4178:	bf00      	nop
    417a:	4b0a      	ldr	r3, [pc, #40]	; (41a4 <btn_wait_any+0x30>)
    417c:	881b      	ldrh	r3, [r3, #0]
    417e:	b29b      	uxth	r3, r3
    4180:	461a      	mov	r2, r3
    4182:	f24c 03f0 	movw	r3, #49392	; 0xc0f0
    4186:	4013      	ands	r3, r2
    4188:	f24c 02f0 	movw	r2, #49392	; 0xc0f0
    418c:	4293      	cmp	r3, r2
    418e:	d0f4      	beq.n	417a <btn_wait_any+0x6>
    4190:	4b04      	ldr	r3, [pc, #16]	; (41a4 <btn_wait_any+0x30>)
    4192:	881b      	ldrh	r3, [r3, #0]
    4194:	b29b      	uxth	r3, r3
    4196:	43db      	mvns	r3, r3
    4198:	b29b      	uxth	r3, r3
    419a:	4618      	mov	r0, r3
    419c:	46bd      	mov	sp, r7
    419e:	bc80      	pop	{r7}
    41a0:	4770      	bx	lr
    41a2:	bf00      	nop
    41a4:	20002550 	.word	0x20002550

000041a8 <set_video_mode>:
    41a8:	b580      	push	{r7, lr}
    41aa:	b082      	sub	sp, #8
    41ac:	af00      	add	r7, sp, #0
    41ae:	4603      	mov	r3, r0
    41b0:	71fb      	strb	r3, [r7, #7]
    41b2:	f7fd fd25 	bl	1c00 <gfx_cls>
    41b6:	f7ff ffcd 	bl	4154 <frame_sync>
    41ba:	4a03      	ldr	r2, [pc, #12]	; (41c8 <set_video_mode+0x20>)
    41bc:	79fb      	ldrb	r3, [r7, #7]
    41be:	7013      	strb	r3, [r2, #0]
    41c0:	bf00      	nop
    41c2:	3708      	adds	r7, #8
    41c4:	46bd      	mov	sp, r7
    41c6:	bd80      	pop	{r7, pc}
    41c8:	200004f6 	.word	0x200004f6

000041cc <get_video_params>:
    41cc:	b480      	push	{r7}
    41ce:	af00      	add	r7, sp, #0
    41d0:	4b04      	ldr	r3, [pc, #16]	; (41e4 <get_video_params+0x18>)
    41d2:	781b      	ldrb	r3, [r3, #0]
    41d4:	011b      	lsls	r3, r3, #4
    41d6:	4a04      	ldr	r2, [pc, #16]	; (41e8 <get_video_params+0x1c>)
    41d8:	4413      	add	r3, r2
    41da:	4618      	mov	r0, r3
    41dc:	46bd      	mov	sp, r7
    41de:	bc80      	pop	{r7}
    41e0:	4770      	bx	lr
    41e2:	bf00      	nop
    41e4:	200004f6 	.word	0x200004f6
    41e8:	000047fc 	.word	0x000047fc
