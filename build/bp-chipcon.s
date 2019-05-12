
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 ed 25 00 00     C...I...O....%..
      20:	ed 25 00 00 ed 25 00 00 ed 25 00 00 55 02 00 00     .%...%...%..U...
      30:	ed 25 00 00 ed 25 00 00 5b 02 00 00 d5 26 00 00     .%...%..[....&..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 25 23 00 00     g...m...y...%#..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 ed 25 00 00 ed 25 00 00 b5 02 00 00     .....%...%......
      80:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..
      90:	ed 25 00 00 ed 25 00 00 ed 25 00 00 bb 02 00 00     .%...%...%......
      a0:	ed 25 00 00 31 29 00 00 ed 25 00 00 45 28 00 00     .%..1)...%..E(..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 ed 25 00 00     .............%..
      c0:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..
      d0:	ed 25 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .%..............
      e0:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..
      f0:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..
     100:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..
     110:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..
     120:	ed 25 00 00 ed 25 00 00 ed 25 00 00 ed 25 00 00     .%...%...%...%..

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
     18e:	f001 f8e9 	bl	1364 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000058 	.word	0x20000058
     1a0:	20002c40 	.word	0x20002c40
     1a4:	00003400 	.word	0x00003400
     1a8:	20000000 	.word	0x20000000
     1ac:	20000058 	.word	0x20000058
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
     1dc:	f002 fa0e 	bl	25fc <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 fa02 	bl	25fc <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 f9f6 	bl	25fc <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f9f1 	bl	25fc <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002ff4 	.word	0x00002ff4
     230:	0000300c 	.word	0x0000300c
     234:	00003018 	.word	0x00003018
     238:	00003028 	.word	0x00003028

0000023c <NMI_handler>:
     23c:	f002 f9d6 	bl	25ec <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 f9d3 	bl	25ec <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 f9d0 	bl	25ec <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 f9cd 	bl	25ec <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 f9ca 	bl	25ec <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 f9c7 	bl	25ec <reset_mcu>
     25e:	bf00      	nop
     260:	f002 f9c4 	bl	25ec <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 f9c1 	bl	25ec <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 f9be 	bl	25ec <reset_mcu>
     270:	bf00      	nop
     272:	f002 f9bb 	bl	25ec <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 f9b8 	bl	25ec <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 f9b5 	bl	25ec <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 f9b2 	bl	25ec <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 f9af 	bl	25ec <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 f9ac 	bl	25ec <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 f9a9 	bl	25ec <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 f9a6 	bl	25ec <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 f9a3 	bl	25ec <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 f9a0 	bl	25ec <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 f99d 	bl	25ec <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 f99a 	bl	25ec <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 f997 	bl	25ec <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 f994 	bl	25ec <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 f991 	bl	25ec <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 f98e 	bl	25ec <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 f98b 	bl	25ec <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f002 f988 	bl	25ec <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f002 f985 	bl	25ec <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f002 f982 	bl	25ec <reset_mcu>
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

000003c0 <flash_enable>:
     3c0:	b480      	push	{r7}
     3c2:	af00      	add	r7, sp, #0
     3c4:	4b14      	ldr	r3, [pc, #80]	; (418 <flash_enable+0x58>)
     3c6:	2200      	movs	r2, #0
     3c8:	701a      	strb	r2, [r3, #0]
     3ca:	4b14      	ldr	r3, [pc, #80]	; (41c <flash_enable+0x5c>)
     3cc:	681b      	ldr	r3, [r3, #0]
     3ce:	f003 0301 	and.w	r3, r3, #1
     3d2:	2b00      	cmp	r3, #0
     3d4:	d10c      	bne.n	3f0 <flash_enable+0x30>
     3d6:	4a11      	ldr	r2, [pc, #68]	; (41c <flash_enable+0x5c>)
     3d8:	4b10      	ldr	r3, [pc, #64]	; (41c <flash_enable+0x5c>)
     3da:	681b      	ldr	r3, [r3, #0]
     3dc:	f043 0301 	orr.w	r3, r3, #1
     3e0:	6013      	str	r3, [r2, #0]
     3e2:	bf00      	nop
     3e4:	4b0d      	ldr	r3, [pc, #52]	; (41c <flash_enable+0x5c>)
     3e6:	681b      	ldr	r3, [r3, #0]
     3e8:	f003 0302 	and.w	r3, r3, #2
     3ec:	2b00      	cmp	r3, #0
     3ee:	d0f9      	beq.n	3e4 <flash_enable+0x24>
     3f0:	4b0b      	ldr	r3, [pc, #44]	; (420 <flash_enable+0x60>)
     3f2:	4a0c      	ldr	r2, [pc, #48]	; (424 <flash_enable+0x64>)
     3f4:	605a      	str	r2, [r3, #4]
     3f6:	4b0a      	ldr	r3, [pc, #40]	; (420 <flash_enable+0x60>)
     3f8:	4a0b      	ldr	r2, [pc, #44]	; (428 <flash_enable+0x68>)
     3fa:	605a      	str	r2, [r3, #4]
     3fc:	4b08      	ldr	r3, [pc, #32]	; (420 <flash_enable+0x60>)
     3fe:	691b      	ldr	r3, [r3, #16]
     400:	f003 0380 	and.w	r3, r3, #128	; 0x80
     404:	2b00      	cmp	r3, #0
     406:	bf0c      	ite	eq
     408:	2301      	moveq	r3, #1
     40a:	2300      	movne	r3, #0
     40c:	b2db      	uxtb	r3, r3
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
     42c:	b480      	push	{r7}
     42e:	b083      	sub	sp, #12
     430:	af00      	add	r7, sp, #0
     432:	6078      	str	r0, [r7, #4]
     434:	460b      	mov	r3, r1
     436:	807b      	strh	r3, [r7, #2]
     438:	bf00      	nop
     43a:	4b16      	ldr	r3, [pc, #88]	; (494 <flash_write_hword+0x68>)
     43c:	68db      	ldr	r3, [r3, #12]
     43e:	f003 0301 	and.w	r3, r3, #1
     442:	2b00      	cmp	r3, #0
     444:	d1f9      	bne.n	43a <flash_write_hword+0xe>
     446:	4a13      	ldr	r2, [pc, #76]	; (494 <flash_write_hword+0x68>)
     448:	4b12      	ldr	r3, [pc, #72]	; (494 <flash_write_hword+0x68>)
     44a:	68db      	ldr	r3, [r3, #12]
     44c:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     450:	60d3      	str	r3, [r2, #12]
     452:	4b10      	ldr	r3, [pc, #64]	; (494 <flash_write_hword+0x68>)
     454:	2201      	movs	r2, #1
     456:	611a      	str	r2, [r3, #16]
     458:	687b      	ldr	r3, [r7, #4]
     45a:	887a      	ldrh	r2, [r7, #2]
     45c:	801a      	strh	r2, [r3, #0]
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
     478:	687b      	ldr	r3, [r7, #4]
     47a:	881b      	ldrh	r3, [r3, #0]
     47c:	887a      	ldrh	r2, [r7, #2]
     47e:	429a      	cmp	r2, r3
     480:	bf0c      	ite	eq
     482:	2301      	moveq	r3, #1
     484:	2300      	movne	r3, #0
     486:	b2db      	uxtb	r3, r3
     488:	4618      	mov	r0, r3
     48a:	370c      	adds	r7, #12
     48c:	46bd      	mov	sp, r7
     48e:	bc80      	pop	{r7}
     490:	4770      	bx	lr
     492:	bf00      	nop
     494:	40022000 	.word	0x40022000

00000498 <write_back_buffer>:
     498:	b580      	push	{r7, lr}
     49a:	b084      	sub	sp, #16
     49c:	af00      	add	r7, sp, #0
     49e:	4b1e      	ldr	r3, [pc, #120]	; (518 <write_back_buffer+0x80>)
     4a0:	785b      	ldrb	r3, [r3, #1]
     4a2:	029b      	lsls	r3, r3, #10
     4a4:	60bb      	str	r3, [r7, #8]
     4a6:	4b1d      	ldr	r3, [pc, #116]	; (51c <write_back_buffer+0x84>)
     4a8:	607b      	str	r3, [r7, #4]
     4aa:	2300      	movs	r3, #0
     4ac:	60fb      	str	r3, [r7, #12]
     4ae:	e017      	b.n	4e0 <write_back_buffer+0x48>
     4b0:	687b      	ldr	r3, [r7, #4]
     4b2:	881b      	ldrh	r3, [r3, #0]
     4b4:	f64f 72ff 	movw	r2, #65535	; 0xffff
     4b8:	4293      	cmp	r3, r2
     4ba:	d008      	beq.n	4ce <write_back_buffer+0x36>
     4bc:	687b      	ldr	r3, [r7, #4]
     4be:	881b      	ldrh	r3, [r3, #0]
     4c0:	4619      	mov	r1, r3
     4c2:	68b8      	ldr	r0, [r7, #8]
     4c4:	f7ff ffb2 	bl	42c <flash_write_hword>
     4c8:	4603      	mov	r3, r0
     4ca:	2b00      	cmp	r3, #0
     4cc:	d00d      	beq.n	4ea <write_back_buffer+0x52>
     4ce:	68bb      	ldr	r3, [r7, #8]
     4d0:	3302      	adds	r3, #2
     4d2:	60bb      	str	r3, [r7, #8]
     4d4:	687b      	ldr	r3, [r7, #4]
     4d6:	3302      	adds	r3, #2
     4d8:	607b      	str	r3, [r7, #4]
     4da:	68fb      	ldr	r3, [r7, #12]
     4dc:	3301      	adds	r3, #1
     4de:	60fb      	str	r3, [r7, #12]
     4e0:	68fb      	ldr	r3, [r7, #12]
     4e2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     4e6:	dbe3      	blt.n	4b0 <write_back_buffer+0x18>
     4e8:	e000      	b.n	4ec <write_back_buffer+0x54>
     4ea:	bf00      	nop
     4ec:	68fb      	ldr	r3, [r7, #12]
     4ee:	2b00      	cmp	r3, #0
     4f0:	dd06      	ble.n	500 <write_back_buffer+0x68>
     4f2:	4b09      	ldr	r3, [pc, #36]	; (518 <write_back_buffer+0x80>)
     4f4:	781b      	ldrb	r3, [r3, #0]
     4f6:	f023 0304 	bic.w	r3, r3, #4
     4fa:	b2da      	uxtb	r2, r3
     4fc:	4b06      	ldr	r3, [pc, #24]	; (518 <write_back_buffer+0x80>)
     4fe:	701a      	strb	r2, [r3, #0]
     500:	68fb      	ldr	r3, [r7, #12]
     502:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     506:	d101      	bne.n	50c <write_back_buffer+0x74>
     508:	2301      	movs	r3, #1
     50a:	e000      	b.n	50e <write_back_buffer+0x76>
     50c:	2300      	movs	r3, #0
     50e:	4618      	mov	r0, r3
     510:	3710      	adds	r7, #16
     512:	46bd      	mov	sp, r7
     514:	bd80      	pop	{r7, pc}
     516:	bf00      	nop
     518:	20000058 	.word	0x20000058
     51c:	2000005a 	.word	0x2000005a

00000520 <load_row>:
     520:	b480      	push	{r7}
     522:	b087      	sub	sp, #28
     524:	af00      	add	r7, sp, #0
     526:	6078      	str	r0, [r7, #4]
     528:	687b      	ldr	r3, [r7, #4]
     52a:	029b      	lsls	r3, r3, #10
     52c:	617b      	str	r3, [r7, #20]
     52e:	4b15      	ldr	r3, [pc, #84]	; (584 <load_row+0x64>)
     530:	613b      	str	r3, [r7, #16]
     532:	2300      	movs	r3, #0
     534:	60fb      	str	r3, [r7, #12]
     536:	e00a      	b.n	54e <load_row+0x2e>
     538:	693b      	ldr	r3, [r7, #16]
     53a:	1c9a      	adds	r2, r3, #2
     53c:	613a      	str	r2, [r7, #16]
     53e:	697a      	ldr	r2, [r7, #20]
     540:	1c91      	adds	r1, r2, #2
     542:	6179      	str	r1, [r7, #20]
     544:	8812      	ldrh	r2, [r2, #0]
     546:	801a      	strh	r2, [r3, #0]
     548:	68fb      	ldr	r3, [r7, #12]
     54a:	3301      	adds	r3, #1
     54c:	60fb      	str	r3, [r7, #12]
     54e:	68fb      	ldr	r3, [r7, #12]
     550:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     554:	dbf0      	blt.n	538 <load_row+0x18>
     556:	687b      	ldr	r3, [r7, #4]
     558:	b2da      	uxtb	r2, r3
     55a:	4b0b      	ldr	r3, [pc, #44]	; (588 <load_row+0x68>)
     55c:	705a      	strb	r2, [r3, #1]
     55e:	4b0a      	ldr	r3, [pc, #40]	; (588 <load_row+0x68>)
     560:	781b      	ldrb	r3, [r3, #0]
     562:	f023 0301 	bic.w	r3, r3, #1
     566:	b2da      	uxtb	r2, r3
     568:	4b07      	ldr	r3, [pc, #28]	; (588 <load_row+0x68>)
     56a:	701a      	strb	r2, [r3, #0]
     56c:	4b06      	ldr	r3, [pc, #24]	; (588 <load_row+0x68>)
     56e:	781b      	ldrb	r3, [r3, #0]
     570:	f043 0302 	orr.w	r3, r3, #2
     574:	b2da      	uxtb	r2, r3
     576:	4b04      	ldr	r3, [pc, #16]	; (588 <load_row+0x68>)
     578:	701a      	strb	r2, [r3, #0]
     57a:	bf00      	nop
     57c:	371c      	adds	r7, #28
     57e:	46bd      	mov	sp, r7
     580:	bc80      	pop	{r7}
     582:	4770      	bx	lr
     584:	2000005a 	.word	0x2000005a
     588:	20000058 	.word	0x20000058

0000058c <is_erased>:
     58c:	b480      	push	{r7}
     58e:	b085      	sub	sp, #20
     590:	af00      	add	r7, sp, #0
     592:	6078      	str	r0, [r7, #4]
     594:	687b      	ldr	r3, [r7, #4]
     596:	029b      	lsls	r3, r3, #10
     598:	60fb      	str	r3, [r7, #12]
     59a:	2300      	movs	r3, #0
     59c:	60bb      	str	r3, [r7, #8]
     59e:	e00c      	b.n	5ba <is_erased+0x2e>
     5a0:	68fb      	ldr	r3, [r7, #12]
     5a2:	1c9a      	adds	r2, r3, #2
     5a4:	60fa      	str	r2, [r7, #12]
     5a6:	881b      	ldrh	r3, [r3, #0]
     5a8:	f64f 72ff 	movw	r2, #65535	; 0xffff
     5ac:	4293      	cmp	r3, r2
     5ae:	d001      	beq.n	5b4 <is_erased+0x28>
     5b0:	2300      	movs	r3, #0
     5b2:	e008      	b.n	5c6 <is_erased+0x3a>
     5b4:	68bb      	ldr	r3, [r7, #8]
     5b6:	3301      	adds	r3, #1
     5b8:	60bb      	str	r3, [r7, #8]
     5ba:	68bb      	ldr	r3, [r7, #8]
     5bc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     5c0:	dbee      	blt.n	5a0 <is_erased+0x14>
     5c2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     5c6:	4618      	mov	r0, r3
     5c8:	3714      	adds	r7, #20
     5ca:	46bd      	mov	sp, r7
     5cc:	bc80      	pop	{r7}
     5ce:	4770      	bx	lr

000005d0 <flash_erase_row>:
     5d0:	b580      	push	{r7, lr}
     5d2:	b086      	sub	sp, #24
     5d4:	af00      	add	r7, sp, #0
     5d6:	6078      	str	r0, [r7, #4]
     5d8:	687b      	ldr	r3, [r7, #4]
     5da:	2b3f      	cmp	r3, #63	; 0x3f
     5dc:	d801      	bhi.n	5e2 <flash_erase_row+0x12>
     5de:	2300      	movs	r3, #0
     5e0:	e052      	b.n	688 <flash_erase_row+0xb8>
     5e2:	6878      	ldr	r0, [r7, #4]
     5e4:	f7ff ffd2 	bl	58c <is_erased>
     5e8:	4603      	mov	r3, r0
     5ea:	2b00      	cmp	r3, #0
     5ec:	d001      	beq.n	5f2 <flash_erase_row+0x22>
     5ee:	2301      	movs	r3, #1
     5f0:	e04a      	b.n	688 <flash_erase_row+0xb8>
     5f2:	687b      	ldr	r3, [r7, #4]
     5f4:	029b      	lsls	r3, r3, #10
     5f6:	617b      	str	r3, [r7, #20]
     5f8:	4b25      	ldr	r3, [pc, #148]	; (690 <flash_erase_row+0xc0>)
     5fa:	691b      	ldr	r3, [r3, #16]
     5fc:	f003 0380 	and.w	r3, r3, #128	; 0x80
     600:	2b00      	cmp	r3, #0
     602:	d001      	beq.n	608 <flash_erase_row+0x38>
     604:	2300      	movs	r3, #0
     606:	e03f      	b.n	688 <flash_erase_row+0xb8>
     608:	4a21      	ldr	r2, [pc, #132]	; (690 <flash_erase_row+0xc0>)
     60a:	4b21      	ldr	r3, [pc, #132]	; (690 <flash_erase_row+0xc0>)
     60c:	68db      	ldr	r3, [r3, #12]
     60e:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     612:	60d3      	str	r3, [r2, #12]
     614:	4b1e      	ldr	r3, [pc, #120]	; (690 <flash_erase_row+0xc0>)
     616:	2202      	movs	r2, #2
     618:	611a      	str	r2, [r3, #16]
     61a:	4a1d      	ldr	r2, [pc, #116]	; (690 <flash_erase_row+0xc0>)
     61c:	697b      	ldr	r3, [r7, #20]
     61e:	6153      	str	r3, [r2, #20]
     620:	4a1b      	ldr	r2, [pc, #108]	; (690 <flash_erase_row+0xc0>)
     622:	4b1b      	ldr	r3, [pc, #108]	; (690 <flash_erase_row+0xc0>)
     624:	691b      	ldr	r3, [r3, #16]
     626:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     62a:	6113      	str	r3, [r2, #16]
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
     646:	687b      	ldr	r3, [r7, #4]
     648:	029b      	lsls	r3, r3, #10
     64a:	617b      	str	r3, [r7, #20]
     64c:	2300      	movs	r3, #0
     64e:	60fb      	str	r3, [r7, #12]
     650:	e00c      	b.n	66c <flash_erase_row+0x9c>
     652:	697b      	ldr	r3, [r7, #20]
     654:	1c9a      	adds	r2, r3, #2
     656:	617a      	str	r2, [r7, #20]
     658:	881b      	ldrh	r3, [r3, #0]
     65a:	827b      	strh	r3, [r7, #18]
     65c:	8a7b      	ldrh	r3, [r7, #18]
     65e:	f64f 72ff 	movw	r2, #65535	; 0xffff
     662:	4293      	cmp	r3, r2
     664:	d107      	bne.n	676 <flash_erase_row+0xa6>
     666:	68fb      	ldr	r3, [r7, #12]
     668:	3301      	adds	r3, #1
     66a:	60fb      	str	r3, [r7, #12]
     66c:	68fb      	ldr	r3, [r7, #12]
     66e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     672:	dbee      	blt.n	652 <flash_erase_row+0x82>
     674:	e000      	b.n	678 <flash_erase_row+0xa8>
     676:	bf00      	nop
     678:	8a7b      	ldrh	r3, [r7, #18]
     67a:	f64f 72ff 	movw	r2, #65535	; 0xffff
     67e:	4293      	cmp	r3, r2
     680:	bf0c      	ite	eq
     682:	2301      	moveq	r3, #1
     684:	2300      	movne	r3, #0
     686:	b2db      	uxtb	r3, r3
     688:	4618      	mov	r0, r3
     68a:	3718      	adds	r7, #24
     68c:	46bd      	mov	sp, r7
     68e:	bd80      	pop	{r7, pc}
     690:	40022000 	.word	0x40022000

00000694 <flash_sync>:
     694:	b580      	push	{r7, lr}
     696:	af00      	add	r7, sp, #0
     698:	4b10      	ldr	r3, [pc, #64]	; (6dc <flash_sync+0x48>)
     69a:	781b      	ldrb	r3, [r3, #0]
     69c:	f003 0301 	and.w	r3, r3, #1
     6a0:	2b00      	cmp	r3, #0
     6a2:	d017      	beq.n	6d4 <flash_sync+0x40>
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
     6be:	4b07      	ldr	r3, [pc, #28]	; (6dc <flash_sync+0x48>)
     6c0:	781b      	ldrb	r3, [r3, #0]
     6c2:	f023 0301 	bic.w	r3, r3, #1
     6c6:	b2da      	uxtb	r2, r3
     6c8:	4b04      	ldr	r3, [pc, #16]	; (6dc <flash_sync+0x48>)
     6ca:	701a      	strb	r2, [r3, #0]
     6cc:	2301      	movs	r3, #1
     6ce:	e002      	b.n	6d6 <flash_sync+0x42>
     6d0:	2300      	movs	r3, #0
     6d2:	e000      	b.n	6d6 <flash_sync+0x42>
     6d4:	2301      	movs	r3, #1
     6d6:	4618      	mov	r0, r3
     6d8:	bd80      	pop	{r7, pc}
     6da:	bf00      	nop
     6dc:	20000058 	.word	0x20000058

000006e0 <flash_flush>:
     6e0:	b480      	push	{r7}
     6e2:	af00      	add	r7, sp, #0
     6e4:	4b03      	ldr	r3, [pc, #12]	; (6f4 <flash_flush+0x14>)
     6e6:	2200      	movs	r2, #0
     6e8:	701a      	strb	r2, [r3, #0]
     6ea:	bf00      	nop
     6ec:	46bd      	mov	sp, r7
     6ee:	bc80      	pop	{r7}
     6f0:	4770      	bx	lr
     6f2:	bf00      	nop
     6f4:	20000058 	.word	0x20000058

000006f8 <flash_disable>:
     6f8:	b580      	push	{r7, lr}
     6fa:	af00      	add	r7, sp, #0
     6fc:	f7ff ffca 	bl	694 <flash_sync>
     700:	4b05      	ldr	r3, [pc, #20]	; (718 <flash_disable+0x20>)
     702:	2200      	movs	r2, #0
     704:	701a      	strb	r2, [r3, #0]
     706:	4a05      	ldr	r2, [pc, #20]	; (71c <flash_disable+0x24>)
     708:	4b04      	ldr	r3, [pc, #16]	; (71c <flash_disable+0x24>)
     70a:	691b      	ldr	r3, [r3, #16]
     70c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     710:	6113      	str	r3, [r2, #16]
     712:	bf00      	nop
     714:	bd80      	pop	{r7, pc}
     716:	bf00      	nop
     718:	20000058 	.word	0x20000058
     71c:	40022000 	.word	0x40022000

00000720 <strcmp>:
     720:	b480      	push	{r7}
     722:	b085      	sub	sp, #20
     724:	af00      	add	r7, sp, #0
     726:	6078      	str	r0, [r7, #4]
     728:	6039      	str	r1, [r7, #0]
     72a:	2300      	movs	r3, #0
     72c:	60fb      	str	r3, [r7, #12]
     72e:	e018      	b.n	762 <strcmp+0x42>
     730:	687b      	ldr	r3, [r7, #4]
     732:	781a      	ldrb	r2, [r3, #0]
     734:	683b      	ldr	r3, [r7, #0]
     736:	781b      	ldrb	r3, [r3, #0]
     738:	429a      	cmp	r2, r3
     73a:	d203      	bcs.n	744 <strcmp+0x24>
     73c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     740:	60fb      	str	r3, [r7, #12]
     742:	e016      	b.n	772 <strcmp+0x52>
     744:	687b      	ldr	r3, [r7, #4]
     746:	781a      	ldrb	r2, [r3, #0]
     748:	683b      	ldr	r3, [r7, #0]
     74a:	781b      	ldrb	r3, [r3, #0]
     74c:	429a      	cmp	r2, r3
     74e:	d902      	bls.n	756 <strcmp+0x36>
     750:	2301      	movs	r3, #1
     752:	60fb      	str	r3, [r7, #12]
     754:	e00d      	b.n	772 <strcmp+0x52>
     756:	687b      	ldr	r3, [r7, #4]
     758:	3301      	adds	r3, #1
     75a:	607b      	str	r3, [r7, #4]
     75c:	683b      	ldr	r3, [r7, #0]
     75e:	3301      	adds	r3, #1
     760:	603b      	str	r3, [r7, #0]
     762:	687b      	ldr	r3, [r7, #4]
     764:	781b      	ldrb	r3, [r3, #0]
     766:	2b00      	cmp	r3, #0
     768:	d003      	beq.n	772 <strcmp+0x52>
     76a:	683b      	ldr	r3, [r7, #0]
     76c:	781b      	ldrb	r3, [r3, #0]
     76e:	2b00      	cmp	r3, #0
     770:	d1de      	bne.n	730 <strcmp+0x10>
     772:	68fb      	ldr	r3, [r7, #12]
     774:	2b00      	cmp	r3, #0
     776:	d115      	bne.n	7a4 <strcmp+0x84>
     778:	687b      	ldr	r3, [r7, #4]
     77a:	781b      	ldrb	r3, [r3, #0]
     77c:	2b00      	cmp	r3, #0
     77e:	d107      	bne.n	790 <strcmp+0x70>
     780:	683b      	ldr	r3, [r7, #0]
     782:	781b      	ldrb	r3, [r3, #0]
     784:	2b00      	cmp	r3, #0
     786:	d003      	beq.n	790 <strcmp+0x70>
     788:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     78c:	60fb      	str	r3, [r7, #12]
     78e:	e009      	b.n	7a4 <strcmp+0x84>
     790:	687b      	ldr	r3, [r7, #4]
     792:	781b      	ldrb	r3, [r3, #0]
     794:	2b00      	cmp	r3, #0
     796:	d005      	beq.n	7a4 <strcmp+0x84>
     798:	683b      	ldr	r3, [r7, #0]
     79a:	781b      	ldrb	r3, [r3, #0]
     79c:	2b00      	cmp	r3, #0
     79e:	d101      	bne.n	7a4 <strcmp+0x84>
     7a0:	2301      	movs	r3, #1
     7a2:	60fb      	str	r3, [r7, #12]
     7a4:	68fb      	ldr	r3, [r7, #12]
     7a6:	4618      	mov	r0, r3
     7a8:	3714      	adds	r7, #20
     7aa:	46bd      	mov	sp, r7
     7ac:	bc80      	pop	{r7}
     7ae:	4770      	bx	lr

000007b0 <alpha>:
     7b0:	b480      	push	{r7}
     7b2:	b083      	sub	sp, #12
     7b4:	af00      	add	r7, sp, #0
     7b6:	4603      	mov	r3, r0
     7b8:	71fb      	strb	r3, [r7, #7]
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
     7d8:	4618      	mov	r0, r3
     7da:	370c      	adds	r7, #12
     7dc:	46bd      	mov	sp, r7
     7de:	bc80      	pop	{r7}
     7e0:	4770      	bx	lr

000007e2 <digit>:
     7e2:	b480      	push	{r7}
     7e4:	b083      	sub	sp, #12
     7e6:	af00      	add	r7, sp, #0
     7e8:	4603      	mov	r3, r0
     7ea:	71fb      	strb	r3, [r7, #7]
     7ec:	79fb      	ldrb	r3, [r7, #7]
     7ee:	2b2f      	cmp	r3, #47	; 0x2f
     7f0:	d904      	bls.n	7fc <digit+0x1a>
     7f2:	79fb      	ldrb	r3, [r7, #7]
     7f4:	2b39      	cmp	r3, #57	; 0x39
     7f6:	d801      	bhi.n	7fc <digit+0x1a>
     7f8:	2301      	movs	r3, #1
     7fa:	e000      	b.n	7fe <digit+0x1c>
     7fc:	2300      	movs	r3, #0
     7fe:	4618      	mov	r0, r3
     800:	370c      	adds	r7, #12
     802:	46bd      	mov	sp, r7
     804:	bc80      	pop	{r7}
     806:	4770      	bx	lr

00000808 <hexdigit>:
     808:	b580      	push	{r7, lr}
     80a:	b082      	sub	sp, #8
     80c:	af00      	add	r7, sp, #0
     80e:	4603      	mov	r3, r0
     810:	71fb      	strb	r3, [r7, #7]
     812:	79fb      	ldrb	r3, [r7, #7]
     814:	2b60      	cmp	r3, #96	; 0x60
     816:	d902      	bls.n	81e <hexdigit+0x16>
     818:	79fb      	ldrb	r3, [r7, #7]
     81a:	3b20      	subs	r3, #32
     81c:	71fb      	strb	r3, [r7, #7]
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
     83e:	4618      	mov	r0, r3
     840:	3708      	adds	r7, #8
     842:	46bd      	mov	sp, r7
     844:	bd80      	pop	{r7, pc}

00000846 <atoi>:
     846:	b580      	push	{r7, lr}
     848:	b086      	sub	sp, #24
     84a:	af00      	add	r7, sp, #0
     84c:	6078      	str	r0, [r7, #4]
     84e:	2300      	movs	r3, #0
     850:	617b      	str	r3, [r7, #20]
     852:	2301      	movs	r3, #1
     854:	613b      	str	r3, [r7, #16]
     856:	230a      	movs	r3, #10
     858:	60fb      	str	r3, [r7, #12]
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
     872:	687b      	ldr	r3, [r7, #4]
     874:	781b      	ldrb	r3, [r3, #0]
     876:	2b2d      	cmp	r3, #45	; 0x2d
     878:	d105      	bne.n	886 <atoi+0x40>
     87a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     87e:	613b      	str	r3, [r7, #16]
     880:	687b      	ldr	r3, [r7, #4]
     882:	3301      	adds	r3, #1
     884:	607b      	str	r3, [r7, #4]
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
     8a0:	2310      	movs	r3, #16
     8a2:	60fb      	str	r3, [r7, #12]
     8a4:	687b      	ldr	r3, [r7, #4]
     8a6:	3301      	adds	r3, #1
     8a8:	607b      	str	r3, [r7, #4]
     8aa:	e012      	b.n	8d2 <atoi+0x8c>
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
     8c8:	2310      	movs	r3, #16
     8ca:	60fb      	str	r3, [r7, #12]
     8cc:	687b      	ldr	r3, [r7, #4]
     8ce:	3302      	adds	r3, #2
     8d0:	607b      	str	r3, [r7, #4]
     8d2:	e018      	b.n	906 <atoi+0xc0>
     8d4:	7afb      	ldrb	r3, [r7, #11]
     8d6:	2b60      	cmp	r3, #96	; 0x60
     8d8:	d902      	bls.n	8e0 <atoi+0x9a>
     8da:	7afb      	ldrb	r3, [r7, #11]
     8dc:	3b20      	subs	r3, #32
     8de:	72fb      	strb	r3, [r7, #11]
     8e0:	7afb      	ldrb	r3, [r7, #11]
     8e2:	3b30      	subs	r3, #48	; 0x30
     8e4:	72fb      	strb	r3, [r7, #11]
     8e6:	7afb      	ldrb	r3, [r7, #11]
     8e8:	2b09      	cmp	r3, #9
     8ea:	d902      	bls.n	8f2 <atoi+0xac>
     8ec:	7afb      	ldrb	r3, [r7, #11]
     8ee:	3b07      	subs	r3, #7
     8f0:	72fb      	strb	r3, [r7, #11]
     8f2:	697b      	ldr	r3, [r7, #20]
     8f4:	68fa      	ldr	r2, [r7, #12]
     8f6:	fb02 f203 	mul.w	r2, r2, r3
     8fa:	7afb      	ldrb	r3, [r7, #11]
     8fc:	4413      	add	r3, r2
     8fe:	617b      	str	r3, [r7, #20]
     900:	687b      	ldr	r3, [r7, #4]
     902:	3301      	adds	r3, #1
     904:	607b      	str	r3, [r7, #4]
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
     946:	693b      	ldr	r3, [r7, #16]
     948:	697a      	ldr	r2, [r7, #20]
     94a:	fb02 f303 	mul.w	r3, r2, r3
     94e:	4618      	mov	r0, r3
     950:	3718      	adds	r7, #24
     952:	46bd      	mov	sp, r7
     954:	bd80      	pop	{r7, pc}

00000956 <move>:
     956:	b480      	push	{r7}
     958:	b085      	sub	sp, #20
     95a:	af00      	add	r7, sp, #0
     95c:	60f8      	str	r0, [r7, #12]
     95e:	60b9      	str	r1, [r7, #8]
     960:	607a      	str	r2, [r7, #4]
     962:	e00a      	b.n	97a <move+0x24>
     964:	68bb      	ldr	r3, [r7, #8]
     966:	1c5a      	adds	r2, r3, #1
     968:	60ba      	str	r2, [r7, #8]
     96a:	68fa      	ldr	r2, [r7, #12]
     96c:	1c51      	adds	r1, r2, #1
     96e:	60f9      	str	r1, [r7, #12]
     970:	7812      	ldrb	r2, [r2, #0]
     972:	701a      	strb	r2, [r3, #0]
     974:	687b      	ldr	r3, [r7, #4]
     976:	3b01      	subs	r3, #1
     978:	607b      	str	r3, [r7, #4]
     97a:	687b      	ldr	r3, [r7, #4]
     97c:	2b00      	cmp	r3, #0
     97e:	d1f1      	bne.n	964 <move+0xe>
     980:	bf00      	nop
     982:	3714      	adds	r7, #20
     984:	46bd      	mov	sp, r7
     986:	bc80      	pop	{r7}
     988:	4770      	bx	lr

0000098a <strlen>:
     98a:	b480      	push	{r7}
     98c:	b085      	sub	sp, #20
     98e:	af00      	add	r7, sp, #0
     990:	6078      	str	r0, [r7, #4]
     992:	2300      	movs	r3, #0
     994:	60fb      	str	r3, [r7, #12]
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
     9aa:	68fb      	ldr	r3, [r7, #12]
     9ac:	4618      	mov	r0, r3
     9ae:	3714      	adds	r7, #20
     9b0:	46bd      	mov	sp, r7
     9b2:	bc80      	pop	{r7}
     9b4:	4770      	bx	lr

000009b6 <fill>:
     9b6:	b480      	push	{r7}
     9b8:	b087      	sub	sp, #28
     9ba:	af00      	add	r7, sp, #0
     9bc:	60f8      	str	r0, [r7, #12]
     9be:	60b9      	str	r1, [r7, #8]
     9c0:	4613      	mov	r3, r2
     9c2:	71fb      	strb	r3, [r7, #7]
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
     9e2:	bf00      	nop
     9e4:	371c      	adds	r7, #28
     9e6:	46bd      	mov	sp, r7
     9e8:	bc80      	pop	{r7}
     9ea:	4770      	bx	lr

000009ec <is_lower>:
     9ec:	b480      	push	{r7}
     9ee:	b083      	sub	sp, #12
     9f0:	af00      	add	r7, sp, #0
     9f2:	4603      	mov	r3, r0
     9f4:	71fb      	strb	r3, [r7, #7]
     9f6:	79fb      	ldrb	r3, [r7, #7]
     9f8:	2b60      	cmp	r3, #96	; 0x60
     9fa:	d904      	bls.n	a06 <is_lower+0x1a>
     9fc:	79fb      	ldrb	r3, [r7, #7]
     9fe:	2b7a      	cmp	r3, #122	; 0x7a
     a00:	d801      	bhi.n	a06 <is_lower+0x1a>
     a02:	2301      	movs	r3, #1
     a04:	e000      	b.n	a08 <is_lower+0x1c>
     a06:	2300      	movs	r3, #0
     a08:	4618      	mov	r0, r3
     a0a:	370c      	adds	r7, #12
     a0c:	46bd      	mov	sp, r7
     a0e:	bc80      	pop	{r7}
     a10:	4770      	bx	lr

00000a12 <is_upper>:
     a12:	b480      	push	{r7}
     a14:	b083      	sub	sp, #12
     a16:	af00      	add	r7, sp, #0
     a18:	4603      	mov	r3, r0
     a1a:	71fb      	strb	r3, [r7, #7]
     a1c:	79fb      	ldrb	r3, [r7, #7]
     a1e:	2b40      	cmp	r3, #64	; 0x40
     a20:	d904      	bls.n	a2c <is_upper+0x1a>
     a22:	79fb      	ldrb	r3, [r7, #7]
     a24:	2b5a      	cmp	r3, #90	; 0x5a
     a26:	d801      	bhi.n	a2c <is_upper+0x1a>
     a28:	2301      	movs	r3, #1
     a2a:	e000      	b.n	a2e <is_upper+0x1c>
     a2c:	2300      	movs	r3, #0
     a2e:	4618      	mov	r0, r3
     a30:	370c      	adds	r7, #12
     a32:	46bd      	mov	sp, r7
     a34:	bc80      	pop	{r7}
     a36:	4770      	bx	lr

00000a38 <uppercase>:
     a38:	b580      	push	{r7, lr}
     a3a:	b082      	sub	sp, #8
     a3c:	af00      	add	r7, sp, #0
     a3e:	6078      	str	r0, [r7, #4]
     a40:	e010      	b.n	a64 <uppercase+0x2c>
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
     a5e:	687b      	ldr	r3, [r7, #4]
     a60:	3301      	adds	r3, #1
     a62:	607b      	str	r3, [r7, #4]
     a64:	687b      	ldr	r3, [r7, #4]
     a66:	781b      	ldrb	r3, [r3, #0]
     a68:	2b00      	cmp	r3, #0
     a6a:	d1ea      	bne.n	a42 <uppercase+0xa>
     a6c:	bf00      	nop
     a6e:	3708      	adds	r7, #8
     a70:	46bd      	mov	sp, r7
     a72:	bd80      	pop	{r7, pc}

00000a74 <scan>:
     a74:	b480      	push	{r7}
     a76:	b085      	sub	sp, #20
     a78:	af00      	add	r7, sp, #0
     a7a:	60f8      	str	r0, [r7, #12]
     a7c:	60b9      	str	r1, [r7, #8]
     a7e:	4613      	mov	r3, r2
     a80:	71fb      	strb	r3, [r7, #7]
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
     aa4:	68bb      	ldr	r3, [r7, #8]
     aa6:	4618      	mov	r0, r3
     aa8:	3714      	adds	r7, #20
     aaa:	46bd      	mov	sp, r7
     aac:	bc80      	pop	{r7}
     aae:	4770      	bx	lr

00000ab0 <skip>:
     ab0:	b480      	push	{r7}
     ab2:	b085      	sub	sp, #20
     ab4:	af00      	add	r7, sp, #0
     ab6:	60f8      	str	r0, [r7, #12]
     ab8:	60b9      	str	r1, [r7, #8]
     aba:	4613      	mov	r3, r2
     abc:	71fb      	strb	r3, [r7, #7]
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
     ae0:	68bb      	ldr	r3, [r7, #8]
     ae2:	4618      	mov	r0, r3
     ae4:	3714      	adds	r7, #20
     ae6:	46bd      	mov	sp, r7
     ae8:	bc80      	pop	{r7}
     aea:	4770      	bx	lr

00000aec <itoa>:
     aec:	b480      	push	{r7}
     aee:	b087      	sub	sp, #28
     af0:	af00      	add	r7, sp, #0
     af2:	60f8      	str	r0, [r7, #12]
     af4:	60b9      	str	r1, [r7, #8]
     af6:	607a      	str	r2, [r7, #4]
     af8:	603b      	str	r3, [r7, #0]
     afa:	2300      	movs	r3, #0
     afc:	617b      	str	r3, [r7, #20]
     afe:	683b      	ldr	r3, [r7, #0]
     b00:	1e5a      	subs	r2, r3, #1
     b02:	603a      	str	r2, [r7, #0]
     b04:	461a      	mov	r2, r3
     b06:	68bb      	ldr	r3, [r7, #8]
     b08:	4413      	add	r3, r2
     b0a:	2200      	movs	r2, #0
     b0c:	701a      	strb	r2, [r3, #0]
     b0e:	68fb      	ldr	r3, [r7, #12]
     b10:	2b00      	cmp	r3, #0
     b12:	da24      	bge.n	b5e <itoa+0x72>
     b14:	68fb      	ldr	r3, [r7, #12]
     b16:	425b      	negs	r3, r3
     b18:	60fb      	str	r3, [r7, #12]
     b1a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     b1e:	617b      	str	r3, [r7, #20]
     b20:	e01d      	b.n	b5e <itoa+0x72>
     b22:	68fb      	ldr	r3, [r7, #12]
     b24:	687a      	ldr	r2, [r7, #4]
     b26:	fb93 f2f2 	sdiv	r2, r3, r2
     b2a:	6879      	ldr	r1, [r7, #4]
     b2c:	fb01 f202 	mul.w	r2, r1, r2
     b30:	1a9b      	subs	r3, r3, r2
     b32:	b2db      	uxtb	r3, r3
     b34:	3330      	adds	r3, #48	; 0x30
     b36:	74fb      	strb	r3, [r7, #19]
     b38:	7cfb      	ldrb	r3, [r7, #19]
     b3a:	2b39      	cmp	r3, #57	; 0x39
     b3c:	d902      	bls.n	b44 <itoa+0x58>
     b3e:	7cfb      	ldrb	r3, [r7, #19]
     b40:	3307      	adds	r3, #7
     b42:	74fb      	strb	r3, [r7, #19]
     b44:	683b      	ldr	r3, [r7, #0]
     b46:	1e5a      	subs	r2, r3, #1
     b48:	603a      	str	r2, [r7, #0]
     b4a:	461a      	mov	r2, r3
     b4c:	68bb      	ldr	r3, [r7, #8]
     b4e:	4413      	add	r3, r2
     b50:	7cfa      	ldrb	r2, [r7, #19]
     b52:	701a      	strb	r2, [r3, #0]
     b54:	68fa      	ldr	r2, [r7, #12]
     b56:	687b      	ldr	r3, [r7, #4]
     b58:	fb92 f3f3 	sdiv	r3, r2, r3
     b5c:	60fb      	str	r3, [r7, #12]
     b5e:	68fb      	ldr	r3, [r7, #12]
     b60:	2b00      	cmp	r3, #0
     b62:	d00b      	beq.n	b7c <itoa+0x90>
     b64:	683b      	ldr	r3, [r7, #0]
     b66:	2b00      	cmp	r3, #0
     b68:	dadb      	bge.n	b22 <itoa+0x36>
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
     ba2:	68bb      	ldr	r3, [r7, #8]
     ba4:	4618      	mov	r0, r3
     ba6:	371c      	adds	r7, #28
     ba8:	46bd      	mov	sp, r7
     baa:	bc80      	pop	{r7}
     bac:	4770      	bx	lr

00000bae <strcat>:
     bae:	b580      	push	{r7, lr}
     bb0:	b082      	sub	sp, #8
     bb2:	af00      	add	r7, sp, #0
     bb4:	6078      	str	r0, [r7, #4]
     bb6:	6039      	str	r1, [r7, #0]
     bb8:	6878      	ldr	r0, [r7, #4]
     bba:	f7ff fee6 	bl	98a <strlen>
     bbe:	4603      	mov	r3, r0
     bc0:	461a      	mov	r2, r3
     bc2:	687b      	ldr	r3, [r7, #4]
     bc4:	4413      	add	r3, r2
     bc6:	607b      	str	r3, [r7, #4]
     bc8:	e007      	b.n	bda <strcat+0x2c>
     bca:	687b      	ldr	r3, [r7, #4]
     bcc:	1c5a      	adds	r2, r3, #1
     bce:	607a      	str	r2, [r7, #4]
     bd0:	683a      	ldr	r2, [r7, #0]
     bd2:	1c51      	adds	r1, r2, #1
     bd4:	6039      	str	r1, [r7, #0]
     bd6:	7812      	ldrb	r2, [r2, #0]
     bd8:	701a      	strb	r2, [r3, #0]
     bda:	683b      	ldr	r3, [r7, #0]
     bdc:	781b      	ldrb	r3, [r3, #0]
     bde:	2b00      	cmp	r3, #0
     be0:	d1f3      	bne.n	bca <strcat+0x1c>
     be2:	687b      	ldr	r3, [r7, #4]
     be4:	2200      	movs	r2, #0
     be6:	701a      	strb	r2, [r3, #0]
     be8:	687b      	ldr	r3, [r7, #4]
     bea:	4618      	mov	r0, r3
     bec:	3708      	adds	r7, #8
     bee:	46bd      	mov	sp, r7
     bf0:	bd80      	pop	{r7, pc}

00000bf2 <config_pin>:
     bf2:	b480      	push	{r7}
     bf4:	b087      	sub	sp, #28
     bf6:	af00      	add	r7, sp, #0
     bf8:	60f8      	str	r0, [r7, #12]
     bfa:	60b9      	str	r1, [r7, #8]
     bfc:	607a      	str	r2, [r7, #4]
     bfe:	68bb      	ldr	r3, [r7, #8]
     c00:	b2db      	uxtb	r3, r3
     c02:	009b      	lsls	r3, r3, #2
     c04:	b2db      	uxtb	r3, r3
     c06:	f003 031c 	and.w	r3, r3, #28
     c0a:	75fb      	strb	r3, [r7, #23]
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
     c4a:	bf00      	nop
     c4c:	371c      	adds	r7, #28
     c4e:	46bd      	mov	sp, r7
     c50:	bc80      	pop	{r7}
     c52:	4770      	bx	lr

00000c54 <read_pin>:
     c54:	b480      	push	{r7}
     c56:	b083      	sub	sp, #12
     c58:	af00      	add	r7, sp, #0
     c5a:	6078      	str	r0, [r7, #4]
     c5c:	6039      	str	r1, [r7, #0]
     c5e:	687b      	ldr	r3, [r7, #4]
     c60:	689b      	ldr	r3, [r3, #8]
     c62:	2101      	movs	r1, #1
     c64:	683a      	ldr	r2, [r7, #0]
     c66:	fa01 f202 	lsl.w	r2, r1, r2
     c6a:	4013      	ands	r3, r2
     c6c:	4618      	mov	r0, r3
     c6e:	370c      	adds	r7, #12
     c70:	46bd      	mov	sp, r7
     c72:	bc80      	pop	{r7}
     c74:	4770      	bx	lr

00000c76 <write_pin>:
     c76:	b480      	push	{r7}
     c78:	b085      	sub	sp, #20
     c7a:	af00      	add	r7, sp, #0
     c7c:	60f8      	str	r0, [r7, #12]
     c7e:	60b9      	str	r1, [r7, #8]
     c80:	607a      	str	r2, [r7, #4]
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
     c9a:	e009      	b.n	cb0 <write_pin+0x3a>
     c9c:	68fb      	ldr	r3, [r7, #12]
     c9e:	68db      	ldr	r3, [r3, #12]
     ca0:	2101      	movs	r1, #1
     ca2:	68ba      	ldr	r2, [r7, #8]
     ca4:	fa01 f202 	lsl.w	r2, r1, r2
     ca8:	43d2      	mvns	r2, r2
     caa:	401a      	ands	r2, r3
     cac:	68fb      	ldr	r3, [r7, #12]
     cae:	60da      	str	r2, [r3, #12]
     cb0:	bf00      	nop
     cb2:	3714      	adds	r7, #20
     cb4:	46bd      	mov	sp, r7
     cb6:	bc80      	pop	{r7}
     cb8:	4770      	bx	lr

00000cba <toggle_pin>:
     cba:	b480      	push	{r7}
     cbc:	b083      	sub	sp, #12
     cbe:	af00      	add	r7, sp, #0
     cc0:	6078      	str	r0, [r7, #4]
     cc2:	6039      	str	r1, [r7, #0]
     cc4:	687b      	ldr	r3, [r7, #4]
     cc6:	68db      	ldr	r3, [r3, #12]
     cc8:	2101      	movs	r1, #1
     cca:	683a      	ldr	r2, [r7, #0]
     ccc:	fa01 f202 	lsl.w	r2, r1, r2
     cd0:	405a      	eors	r2, r3
     cd2:	687b      	ldr	r3, [r7, #4]
     cd4:	60da      	str	r2, [r3, #12]
     cd6:	bf00      	nop
     cd8:	370c      	adds	r7, #12
     cda:	46bd      	mov	sp, r7
     cdc:	bc80      	pop	{r7}
     cde:	4770      	bx	lr

00000ce0 <gfx_crlf>:
     ce0:	b580      	push	{r7, lr}
     ce2:	af00      	add	r7, sp, #0
     ce4:	4b0b      	ldr	r3, [pc, #44]	; (d14 <gfx_crlf+0x34>)
     ce6:	2200      	movs	r2, #0
     ce8:	701a      	strb	r2, [r3, #0]
     cea:	4b0b      	ldr	r3, [pc, #44]	; (d18 <gfx_crlf+0x38>)
     cec:	781b      	ldrb	r3, [r3, #0]
     cee:	3308      	adds	r3, #8
     cf0:	b2da      	uxtb	r2, r3
     cf2:	4b09      	ldr	r3, [pc, #36]	; (d18 <gfx_crlf+0x38>)
     cf4:	701a      	strb	r2, [r3, #0]
     cf6:	4b08      	ldr	r3, [pc, #32]	; (d18 <gfx_crlf+0x38>)
     cf8:	781b      	ldrb	r3, [r3, #0]
     cfa:	2b68      	cmp	r3, #104	; 0x68
     cfc:	d908      	bls.n	d10 <gfx_crlf+0x30>
     cfe:	4b06      	ldr	r3, [pc, #24]	; (d18 <gfx_crlf+0x38>)
     d00:	781b      	ldrb	r3, [r3, #0]
     d02:	3b08      	subs	r3, #8
     d04:	b2da      	uxtb	r2, r3
     d06:	4b04      	ldr	r3, [pc, #16]	; (d18 <gfx_crlf+0x38>)
     d08:	701a      	strb	r2, [r3, #0]
     d0a:	2008      	movs	r0, #8
     d0c:	f000 fa54 	bl	11b8 <gfx_scrollup>
     d10:	bf00      	nop
     d12:	bd80      	pop	{r7, pc}
     d14:	2000045a 	.word	0x2000045a
     d18:	2000045b 	.word	0x2000045b

00000d1c <gfx_cursor_left>:
     d1c:	b480      	push	{r7}
     d1e:	af00      	add	r7, sp, #0
     d20:	4b08      	ldr	r3, [pc, #32]	; (d44 <gfx_cursor_left+0x28>)
     d22:	781b      	ldrb	r3, [r3, #0]
     d24:	2b05      	cmp	r3, #5
     d26:	d906      	bls.n	d36 <gfx_cursor_left+0x1a>
     d28:	4b06      	ldr	r3, [pc, #24]	; (d44 <gfx_cursor_left+0x28>)
     d2a:	781b      	ldrb	r3, [r3, #0]
     d2c:	3b06      	subs	r3, #6
     d2e:	b2da      	uxtb	r2, r3
     d30:	4b04      	ldr	r3, [pc, #16]	; (d44 <gfx_cursor_left+0x28>)
     d32:	701a      	strb	r2, [r3, #0]
     d34:	e002      	b.n	d3c <gfx_cursor_left+0x20>
     d36:	4b03      	ldr	r3, [pc, #12]	; (d44 <gfx_cursor_left+0x28>)
     d38:	2200      	movs	r2, #0
     d3a:	701a      	strb	r2, [r3, #0]
     d3c:	bf00      	nop
     d3e:	46bd      	mov	sp, r7
     d40:	bc80      	pop	{r7}
     d42:	4770      	bx	lr
     d44:	2000045a 	.word	0x2000045a

00000d48 <gfx_locate>:
     d48:	b480      	push	{r7}
     d4a:	b083      	sub	sp, #12
     d4c:	af00      	add	r7, sp, #0
     d4e:	4603      	mov	r3, r0
     d50:	460a      	mov	r2, r1
     d52:	71fb      	strb	r3, [r7, #7]
     d54:	4613      	mov	r3, r2
     d56:	71bb      	strb	r3, [r7, #6]
     d58:	79bb      	ldrb	r3, [r7, #6]
     d5a:	2b1d      	cmp	r3, #29
     d5c:	d901      	bls.n	d62 <gfx_locate+0x1a>
     d5e:	231d      	movs	r3, #29
     d60:	71bb      	strb	r3, [r7, #6]
     d62:	79fb      	ldrb	r3, [r7, #7]
     d64:	2b0e      	cmp	r3, #14
     d66:	d901      	bls.n	d6c <gfx_locate+0x24>
     d68:	230d      	movs	r3, #13
     d6a:	71fb      	strb	r3, [r7, #7]
     d6c:	79bb      	ldrb	r3, [r7, #6]
     d6e:	461a      	mov	r2, r3
     d70:	0052      	lsls	r2, r2, #1
     d72:	4413      	add	r3, r2
     d74:	005b      	lsls	r3, r3, #1
     d76:	b2da      	uxtb	r2, r3
     d78:	4b05      	ldr	r3, [pc, #20]	; (d90 <gfx_locate+0x48>)
     d7a:	701a      	strb	r2, [r3, #0]
     d7c:	79fb      	ldrb	r3, [r7, #7]
     d7e:	00db      	lsls	r3, r3, #3
     d80:	b2da      	uxtb	r2, r3
     d82:	4b04      	ldr	r3, [pc, #16]	; (d94 <gfx_locate+0x4c>)
     d84:	701a      	strb	r2, [r3, #0]
     d86:	bf00      	nop
     d88:	370c      	adds	r7, #12
     d8a:	46bd      	mov	sp, r7
     d8c:	bc80      	pop	{r7}
     d8e:	4770      	bx	lr
     d90:	2000045a 	.word	0x2000045a
     d94:	2000045b 	.word	0x2000045b

00000d98 <gfx_putchar>:
     d98:	b580      	push	{r7, lr}
     d9a:	b088      	sub	sp, #32
     d9c:	af00      	add	r7, sp, #0
     d9e:	4603      	mov	r3, r0
     da0:	71fb      	strb	r3, [r7, #7]
     da2:	79fb      	ldrb	r3, [r7, #7]
     da4:	2b1f      	cmp	r3, #31
     da6:	d94b      	bls.n	e40 <gfx_putchar+0xa8>
     da8:	79fb      	ldrb	r3, [r7, #7]
     daa:	2b84      	cmp	r3, #132	; 0x84
     dac:	d848      	bhi.n	e40 <gfx_putchar+0xa8>
     dae:	79fb      	ldrb	r3, [r7, #7]
     db0:	3b20      	subs	r3, #32
     db2:	00db      	lsls	r3, r3, #3
     db4:	613b      	str	r3, [r7, #16]
     db6:	2300      	movs	r3, #0
     db8:	61bb      	str	r3, [r7, #24]
     dba:	e031      	b.n	e20 <gfx_putchar+0x88>
     dbc:	693a      	ldr	r2, [r7, #16]
     dbe:	69bb      	ldr	r3, [r7, #24]
     dc0:	4413      	add	r3, r2
     dc2:	4a21      	ldr	r2, [pc, #132]	; (e48 <gfx_putchar+0xb0>)
     dc4:	5cd3      	ldrb	r3, [r2, r3]
     dc6:	73fb      	strb	r3, [r7, #15]
     dc8:	2380      	movs	r3, #128	; 0x80
     dca:	75fb      	strb	r3, [r7, #23]
     dcc:	2300      	movs	r3, #0
     dce:	61fb      	str	r3, [r7, #28]
     dd0:	e020      	b.n	e14 <gfx_putchar+0x7c>
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
     e08:	69fb      	ldr	r3, [r7, #28]
     e0a:	3301      	adds	r3, #1
     e0c:	61fb      	str	r3, [r7, #28]
     e0e:	7dfb      	ldrb	r3, [r7, #23]
     e10:	085b      	lsrs	r3, r3, #1
     e12:	75fb      	strb	r3, [r7, #23]
     e14:	69fb      	ldr	r3, [r7, #28]
     e16:	2b05      	cmp	r3, #5
     e18:	dddb      	ble.n	dd2 <gfx_putchar+0x3a>
     e1a:	69bb      	ldr	r3, [r7, #24]
     e1c:	3301      	adds	r3, #1
     e1e:	61bb      	str	r3, [r7, #24]
     e20:	69bb      	ldr	r3, [r7, #24]
     e22:	2b07      	cmp	r3, #7
     e24:	ddca      	ble.n	dbc <gfx_putchar+0x24>
     e26:	4b0a      	ldr	r3, [pc, #40]	; (e50 <gfx_putchar+0xb8>)
     e28:	781b      	ldrb	r3, [r3, #0]
     e2a:	3306      	adds	r3, #6
     e2c:	b2da      	uxtb	r2, r3
     e2e:	4b08      	ldr	r3, [pc, #32]	; (e50 <gfx_putchar+0xb8>)
     e30:	701a      	strb	r2, [r3, #0]
     e32:	4b07      	ldr	r3, [pc, #28]	; (e50 <gfx_putchar+0xb8>)
     e34:	781b      	ldrb	r3, [r3, #0]
     e36:	2bae      	cmp	r3, #174	; 0xae
     e38:	d903      	bls.n	e42 <gfx_putchar+0xaa>
     e3a:	f7ff ff51 	bl	ce0 <gfx_crlf>
     e3e:	e000      	b.n	e42 <gfx_putchar+0xaa>
     e40:	bf00      	nop
     e42:	3720      	adds	r7, #32
     e44:	46bd      	mov	sp, r7
     e46:	bd80      	pop	{r7, pc}
     e48:	00002bb8 	.word	0x00002bb8
     e4c:	20000000 	.word	0x20000000
     e50:	2000045a 	.word	0x2000045a
     e54:	2000045b 	.word	0x2000045b

00000e58 <gfx_print>:
     e58:	b580      	push	{r7, lr}
     e5a:	b084      	sub	sp, #16
     e5c:	af00      	add	r7, sp, #0
     e5e:	6078      	str	r0, [r7, #4]
     e60:	e011      	b.n	e86 <gfx_print+0x2e>
     e62:	7bfb      	ldrb	r3, [r7, #15]
     e64:	2b0a      	cmp	r3, #10
     e66:	d004      	beq.n	e72 <gfx_print+0x1a>
     e68:	2b0d      	cmp	r3, #13
     e6a:	d002      	beq.n	e72 <gfx_print+0x1a>
     e6c:	2b08      	cmp	r3, #8
     e6e:	d003      	beq.n	e78 <gfx_print+0x20>
     e70:	e005      	b.n	e7e <gfx_print+0x26>
     e72:	f7ff ff35 	bl	ce0 <gfx_crlf>
     e76:	e006      	b.n	e86 <gfx_print+0x2e>
     e78:	f7ff ff50 	bl	d1c <gfx_cursor_left>
     e7c:	e003      	b.n	e86 <gfx_print+0x2e>
     e7e:	7bfb      	ldrb	r3, [r7, #15]
     e80:	4618      	mov	r0, r3
     e82:	f7ff ff89 	bl	d98 <gfx_putchar>
     e86:	687b      	ldr	r3, [r7, #4]
     e88:	1c5a      	adds	r2, r3, #1
     e8a:	607a      	str	r2, [r7, #4]
     e8c:	781b      	ldrb	r3, [r3, #0]
     e8e:	73fb      	strb	r3, [r7, #15]
     e90:	7bfb      	ldrb	r3, [r7, #15]
     e92:	2b00      	cmp	r3, #0
     e94:	d1e5      	bne.n	e62 <gfx_print+0xa>
     e96:	bf00      	nop
     e98:	3710      	adds	r7, #16
     e9a:	46bd      	mov	sp, r7
     e9c:	bd80      	pop	{r7, pc}

00000e9e <gfx_print_int>:
     e9e:	b580      	push	{r7, lr}
     ea0:	b088      	sub	sp, #32
     ea2:	af00      	add	r7, sp, #0
     ea4:	6078      	str	r0, [r7, #4]
     ea6:	460b      	mov	r3, r1
     ea8:	70fb      	strb	r3, [r7, #3]
     eaa:	2300      	movs	r3, #0
     eac:	77fb      	strb	r3, [r7, #31]
     eae:	2300      	movs	r3, #0
     eb0:	74fb      	strb	r3, [r7, #19]
     eb2:	2320      	movs	r3, #32
     eb4:	74bb      	strb	r3, [r7, #18]
     eb6:	230a      	movs	r3, #10
     eb8:	61bb      	str	r3, [r7, #24]
     eba:	687b      	ldr	r3, [r7, #4]
     ebc:	2b00      	cmp	r3, #0
     ebe:	da26      	bge.n	f0e <gfx_print_int+0x70>
     ec0:	2301      	movs	r3, #1
     ec2:	77fb      	strb	r3, [r7, #31]
     ec4:	687b      	ldr	r3, [r7, #4]
     ec6:	425b      	negs	r3, r3
     ec8:	607b      	str	r3, [r7, #4]
     eca:	e020      	b.n	f0e <gfx_print_int+0x70>
     ecc:	78fa      	ldrb	r2, [r7, #3]
     ece:	687b      	ldr	r3, [r7, #4]
     ed0:	fb93 f1f2 	sdiv	r1, r3, r2
     ed4:	fb02 f201 	mul.w	r2, r2, r1
     ed8:	1a9b      	subs	r3, r3, r2
     eda:	617b      	str	r3, [r7, #20]
     edc:	697b      	ldr	r3, [r7, #20]
     ede:	2b09      	cmp	r3, #9
     ee0:	dd02      	ble.n	ee8 <gfx_print_int+0x4a>
     ee2:	697b      	ldr	r3, [r7, #20]
     ee4:	3307      	adds	r3, #7
     ee6:	617b      	str	r3, [r7, #20]
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
     f04:	78fb      	ldrb	r3, [r7, #3]
     f06:	687a      	ldr	r2, [r7, #4]
     f08:	fb92 f3f3 	sdiv	r3, r2, r3
     f0c:	607b      	str	r3, [r7, #4]
     f0e:	687b      	ldr	r3, [r7, #4]
     f10:	2b00      	cmp	r3, #0
     f12:	d1db      	bne.n	ecc <gfx_print_int+0x2e>
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
     f2c:	78fb      	ldrb	r3, [r7, #3]
     f2e:	2b0a      	cmp	r3, #10
     f30:	d10c      	bne.n	f4c <gfx_print_int+0xae>
     f32:	7ffb      	ldrb	r3, [r7, #31]
     f34:	2b00      	cmp	r3, #0
     f36:	d009      	beq.n	f4c <gfx_print_int+0xae>
     f38:	69bb      	ldr	r3, [r7, #24]
     f3a:	3b01      	subs	r3, #1
     f3c:	61bb      	str	r3, [r7, #24]
     f3e:	f107 0208 	add.w	r2, r7, #8
     f42:	69bb      	ldr	r3, [r7, #24]
     f44:	4413      	add	r3, r2
     f46:	222d      	movs	r2, #45	; 0x2d
     f48:	701a      	strb	r2, [r3, #0]
     f4a:	e014      	b.n	f76 <gfx_print_int+0xd8>
     f4c:	78fb      	ldrb	r3, [r7, #3]
     f4e:	2b10      	cmp	r3, #16
     f50:	d111      	bne.n	f76 <gfx_print_int+0xd8>
     f52:	69bb      	ldr	r3, [r7, #24]
     f54:	3b01      	subs	r3, #1
     f56:	61bb      	str	r3, [r7, #24]
     f58:	f107 0208 	add.w	r2, r7, #8
     f5c:	69bb      	ldr	r3, [r7, #24]
     f5e:	4413      	add	r3, r2
     f60:	2278      	movs	r2, #120	; 0x78
     f62:	701a      	strb	r2, [r3, #0]
     f64:	69bb      	ldr	r3, [r7, #24]
     f66:	3b01      	subs	r3, #1
     f68:	61bb      	str	r3, [r7, #24]
     f6a:	f107 0208 	add.w	r2, r7, #8
     f6e:	69bb      	ldr	r3, [r7, #24]
     f70:	4413      	add	r3, r2
     f72:	2230      	movs	r2, #48	; 0x30
     f74:	701a      	strb	r2, [r3, #0]
     f76:	f107 0208 	add.w	r2, r7, #8
     f7a:	69bb      	ldr	r3, [r7, #24]
     f7c:	4413      	add	r3, r2
     f7e:	4618      	mov	r0, r3
     f80:	f7ff ff6a 	bl	e58 <gfx_print>
     f84:	bf00      	nop
     f86:	3720      	adds	r7, #32
     f88:	46bd      	mov	sp, r7
     f8a:	bd80      	pop	{r7, pc}

00000f8c <gfx_blit>:
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
     fba:	68bb      	ldr	r3, [r7, #8]
     fbc:	225a      	movs	r2, #90	; 0x5a
     fbe:	fb02 f203 	mul.w	r2, r2, r3
     fc2:	68fb      	ldr	r3, [r7, #12]
     fc4:	0fd9      	lsrs	r1, r3, #31
     fc6:	440b      	add	r3, r1
     fc8:	105b      	asrs	r3, r3, #1
     fca:	18d6      	adds	r6, r2, r3
     fcc:	79fb      	ldrb	r3, [r7, #7]
     fce:	f003 030f 	and.w	r3, r3, #15
     fd2:	71fb      	strb	r3, [r7, #7]
     fd4:	25f0      	movs	r5, #240	; 0xf0
     fd6:	68fb      	ldr	r3, [r7, #12]
     fd8:	f003 0301 	and.w	r3, r3, #1
     fdc:	2b00      	cmp	r3, #0
     fde:	d103      	bne.n	fe8 <gfx_blit+0x5c>
     fe0:	79fb      	ldrb	r3, [r7, #7]
     fe2:	011b      	lsls	r3, r3, #4
     fe4:	71fb      	strb	r3, [r7, #7]
     fe6:	250f      	movs	r5, #15
     fe8:	4b1a      	ldr	r3, [pc, #104]	; (1054 <gfx_blit+0xc8>)
     fea:	5d9c      	ldrb	r4, [r3, r6]
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
    100c:	79fb      	ldrb	r3, [r7, #7]
    100e:	4323      	orrs	r3, r4
    1010:	b2dc      	uxtb	r4, r3
    1012:	e016      	b.n	1042 <gfx_blit+0xb6>
    1014:	79fb      	ldrb	r3, [r7, #7]
    1016:	4023      	ands	r3, r4
    1018:	b2dc      	uxtb	r4, r3
    101a:	e012      	b.n	1042 <gfx_blit+0xb6>
    101c:	79fb      	ldrb	r3, [r7, #7]
    101e:	4063      	eors	r3, r4
    1020:	b2dc      	uxtb	r4, r3
    1022:	e00e      	b.n	1042 <gfx_blit+0xb6>
    1024:	b26b      	sxtb	r3, r5
    1026:	43db      	mvns	r3, r3
    1028:	b25a      	sxtb	r2, r3
    102a:	b263      	sxtb	r3, r4
    102c:	4053      	eors	r3, r2
    102e:	b25b      	sxtb	r3, r3
    1030:	b2dc      	uxtb	r4, r3
    1032:	e006      	b.n	1042 <gfx_blit+0xb6>
    1034:	ea04 0305 	and.w	r3, r4, r5
    1038:	b2dc      	uxtb	r4, r3
    103a:	79fb      	ldrb	r3, [r7, #7]
    103c:	4323      	orrs	r3, r4
    103e:	b2dc      	uxtb	r4, r3
    1040:	bf00      	nop
    1042:	4b04      	ldr	r3, [pc, #16]	; (1054 <gfx_blit+0xc8>)
    1044:	4622      	mov	r2, r4
    1046:	559a      	strb	r2, [r3, r6]
    1048:	e000      	b.n	104c <gfx_blit+0xc0>
    104a:	bf00      	nop
    104c:	3710      	adds	r7, #16
    104e:	46bd      	mov	sp, r7
    1050:	bcf0      	pop	{r4, r5, r6, r7}
    1052:	4770      	bx	lr
    1054:	20000470 	.word	0x20000470

00001058 <gfx_plot>:
    1058:	b4b0      	push	{r4, r5, r7}
    105a:	b085      	sub	sp, #20
    105c:	af00      	add	r7, sp, #0
    105e:	60f8      	str	r0, [r7, #12]
    1060:	60b9      	str	r1, [r7, #8]
    1062:	4613      	mov	r3, r2
    1064:	71fb      	strb	r3, [r7, #7]
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
    107e:	68bb      	ldr	r3, [r7, #8]
    1080:	225a      	movs	r2, #90	; 0x5a
    1082:	fb02 f203 	mul.w	r2, r2, r3
    1086:	68fb      	ldr	r3, [r7, #12]
    1088:	0fd9      	lsrs	r1, r3, #31
    108a:	440b      	add	r3, r1
    108c:	105b      	asrs	r3, r3, #1
    108e:	18d5      	adds	r5, r2, r3
    1090:	79fb      	ldrb	r3, [r7, #7]
    1092:	f003 030f 	and.w	r3, r3, #15
    1096:	71fb      	strb	r3, [r7, #7]
    1098:	4b10      	ldr	r3, [pc, #64]	; (10dc <gfx_plot+0x84>)
    109a:	5d5c      	ldrb	r4, [r3, r5]
    109c:	68fb      	ldr	r3, [r7, #12]
    109e:	f003 0301 	and.w	r3, r3, #1
    10a2:	2b00      	cmp	r3, #0
    10a4:	d006      	beq.n	10b4 <gfx_plot+0x5c>
    10a6:	f024 030f 	bic.w	r3, r4, #15
    10aa:	b2dc      	uxtb	r4, r3
    10ac:	79fb      	ldrb	r3, [r7, #7]
    10ae:	4323      	orrs	r3, r4
    10b0:	b2dc      	uxtb	r4, r3
    10b2:	e009      	b.n	10c8 <gfx_plot+0x70>
    10b4:	f004 030f 	and.w	r3, r4, #15
    10b8:	b2dc      	uxtb	r4, r3
    10ba:	79fb      	ldrb	r3, [r7, #7]
    10bc:	011b      	lsls	r3, r3, #4
    10be:	b25a      	sxtb	r2, r3
    10c0:	b263      	sxtb	r3, r4
    10c2:	4313      	orrs	r3, r2
    10c4:	b25b      	sxtb	r3, r3
    10c6:	b2dc      	uxtb	r4, r3
    10c8:	4b04      	ldr	r3, [pc, #16]	; (10dc <gfx_plot+0x84>)
    10ca:	4622      	mov	r2, r4
    10cc:	555a      	strb	r2, [r3, r5]
    10ce:	e000      	b.n	10d2 <gfx_plot+0x7a>
    10d0:	bf00      	nop
    10d2:	3714      	adds	r7, #20
    10d4:	46bd      	mov	sp, r7
    10d6:	bcb0      	pop	{r4, r5, r7}
    10d8:	4770      	bx	lr
    10da:	bf00      	nop
    10dc:	20000470 	.word	0x20000470

000010e0 <gfx_rectangle>:
    10e0:	b580      	push	{r7, lr}
    10e2:	b086      	sub	sp, #24
    10e4:	af00      	add	r7, sp, #0
    10e6:	60f8      	str	r0, [r7, #12]
    10e8:	60b9      	str	r1, [r7, #8]
    10ea:	607a      	str	r2, [r7, #4]
    10ec:	603b      	str	r3, [r7, #0]
    10ee:	68fa      	ldr	r2, [r7, #12]
    10f0:	687b      	ldr	r3, [r7, #4]
    10f2:	429a      	cmp	r2, r3
    10f4:	dd05      	ble.n	1102 <gfx_rectangle+0x22>
    10f6:	68fb      	ldr	r3, [r7, #12]
    10f8:	617b      	str	r3, [r7, #20]
    10fa:	687b      	ldr	r3, [r7, #4]
    10fc:	60fb      	str	r3, [r7, #12]
    10fe:	697b      	ldr	r3, [r7, #20]
    1100:	607b      	str	r3, [r7, #4]
    1102:	68ba      	ldr	r2, [r7, #8]
    1104:	683b      	ldr	r3, [r7, #0]
    1106:	429a      	cmp	r2, r3
    1108:	dd05      	ble.n	1116 <gfx_rectangle+0x36>
    110a:	68bb      	ldr	r3, [r7, #8]
    110c:	617b      	str	r3, [r7, #20]
    110e:	683b      	ldr	r3, [r7, #0]
    1110:	60bb      	str	r3, [r7, #8]
    1112:	697b      	ldr	r3, [r7, #20]
    1114:	603b      	str	r3, [r7, #0]
    1116:	68fb      	ldr	r3, [r7, #12]
    1118:	617b      	str	r3, [r7, #20]
    111a:	e00c      	b.n	1136 <gfx_rectangle+0x56>
    111c:	220f      	movs	r2, #15
    111e:	68b9      	ldr	r1, [r7, #8]
    1120:	6978      	ldr	r0, [r7, #20]
    1122:	f7ff ff99 	bl	1058 <gfx_plot>
    1126:	220f      	movs	r2, #15
    1128:	6839      	ldr	r1, [r7, #0]
    112a:	6978      	ldr	r0, [r7, #20]
    112c:	f7ff ff94 	bl	1058 <gfx_plot>
    1130:	697b      	ldr	r3, [r7, #20]
    1132:	3301      	adds	r3, #1
    1134:	617b      	str	r3, [r7, #20]
    1136:	697a      	ldr	r2, [r7, #20]
    1138:	687b      	ldr	r3, [r7, #4]
    113a:	429a      	cmp	r2, r3
    113c:	ddee      	ble.n	111c <gfx_rectangle+0x3c>
    113e:	68bb      	ldr	r3, [r7, #8]
    1140:	3301      	adds	r3, #1
    1142:	60bb      	str	r3, [r7, #8]
    1144:	e00c      	b.n	1160 <gfx_rectangle+0x80>
    1146:	220f      	movs	r2, #15
    1148:	68b9      	ldr	r1, [r7, #8]
    114a:	68f8      	ldr	r0, [r7, #12]
    114c:	f7ff ff84 	bl	1058 <gfx_plot>
    1150:	220f      	movs	r2, #15
    1152:	68b9      	ldr	r1, [r7, #8]
    1154:	6878      	ldr	r0, [r7, #4]
    1156:	f7ff ff7f 	bl	1058 <gfx_plot>
    115a:	68bb      	ldr	r3, [r7, #8]
    115c:	3301      	adds	r3, #1
    115e:	60bb      	str	r3, [r7, #8]
    1160:	68ba      	ldr	r2, [r7, #8]
    1162:	683b      	ldr	r3, [r7, #0]
    1164:	429a      	cmp	r2, r3
    1166:	dbee      	blt.n	1146 <gfx_rectangle+0x66>
    1168:	bf00      	nop
    116a:	3718      	adds	r7, #24
    116c:	46bd      	mov	sp, r7
    116e:	bd80      	pop	{r7, pc}

00001170 <gfx_cls>:
    1170:	b480      	push	{r7}
    1172:	b083      	sub	sp, #12
    1174:	af00      	add	r7, sp, #0
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
    1196:	4b06      	ldr	r3, [pc, #24]	; (11b0 <gfx_cls+0x40>)
    1198:	2200      	movs	r2, #0
    119a:	701a      	strb	r2, [r3, #0]
    119c:	4b05      	ldr	r3, [pc, #20]	; (11b4 <gfx_cls+0x44>)
    119e:	2200      	movs	r2, #0
    11a0:	701a      	strb	r2, [r3, #0]
    11a2:	bf00      	nop
    11a4:	370c      	adds	r7, #12
    11a6:	46bd      	mov	sp, r7
    11a8:	bc80      	pop	{r7}
    11aa:	4770      	bx	lr
    11ac:	20000470 	.word	0x20000470
    11b0:	2000045a 	.word	0x2000045a
    11b4:	2000045b 	.word	0x2000045b

000011b8 <gfx_scrollup>:
    11b8:	b480      	push	{r7}
    11ba:	b087      	sub	sp, #28
    11bc:	af00      	add	r7, sp, #0
    11be:	4603      	mov	r3, r0
    11c0:	71fb      	strb	r3, [r7, #7]
    11c2:	79fb      	ldrb	r3, [r7, #7]
    11c4:	225a      	movs	r2, #90	; 0x5a
    11c6:	fb02 f303 	mul.w	r3, r2, r3
    11ca:	4a17      	ldr	r2, [pc, #92]	; (1228 <gfx_scrollup+0x70>)
    11cc:	4413      	add	r3, r2
    11ce:	617b      	str	r3, [r7, #20]
    11d0:	4b15      	ldr	r3, [pc, #84]	; (1228 <gfx_scrollup+0x70>)
    11d2:	613b      	str	r3, [r7, #16]
    11d4:	79fb      	ldrb	r3, [r7, #7]
    11d6:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    11da:	225a      	movs	r2, #90	; 0x5a
    11dc:	fb02 f303 	mul.w	r3, r2, r3
    11e0:	60fb      	str	r3, [r7, #12]
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
    11fe:	79fb      	ldrb	r3, [r7, #7]
    1200:	225a      	movs	r2, #90	; 0x5a
    1202:	fb02 f303 	mul.w	r3, r2, r3
    1206:	60fb      	str	r3, [r7, #12]
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
    121e:	bf00      	nop
    1220:	371c      	adds	r7, #28
    1222:	46bd      	mov	sp, r7
    1224:	bc80      	pop	{r7}
    1226:	4770      	bx	lr
    1228:	20000470 	.word	0x20000470

0000122c <gfx_get_pixel>:
    122c:	b490      	push	{r4, r7}
    122e:	b082      	sub	sp, #8
    1230:	af00      	add	r7, sp, #0
    1232:	6078      	str	r0, [r7, #4]
    1234:	6039      	str	r1, [r7, #0]
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
    1252:	683b      	ldr	r3, [r7, #0]
    1254:	225a      	movs	r2, #90	; 0x5a
    1256:	fb02 f203 	mul.w	r2, r2, r3
    125a:	687b      	ldr	r3, [r7, #4]
    125c:	105b      	asrs	r3, r3, #1
    125e:	4413      	add	r3, r2
    1260:	4a08      	ldr	r2, [pc, #32]	; (1284 <gfx_get_pixel+0x58>)
    1262:	5cd4      	ldrb	r4, [r2, r3]
    1264:	687b      	ldr	r3, [r7, #4]
    1266:	f003 0301 	and.w	r3, r3, #1
    126a:	2b00      	cmp	r3, #0
    126c:	d101      	bne.n	1272 <gfx_get_pixel+0x46>
    126e:	0923      	lsrs	r3, r4, #4
    1270:	b2dc      	uxtb	r4, r3
    1272:	f004 030f 	and.w	r3, r4, #15
    1276:	b2db      	uxtb	r3, r3
    1278:	4618      	mov	r0, r3
    127a:	3708      	adds	r7, #8
    127c:	46bd      	mov	sp, r7
    127e:	bc90      	pop	{r4, r7}
    1280:	4770      	bx	lr
    1282:	bf00      	nop
    1284:	20000470 	.word	0x20000470

00001288 <gfx_sprite>:
    1288:	b5f0      	push	{r4, r5, r6, r7, lr}
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
    129e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    12a0:	1c5a      	adds	r2, r3, #1
    12a2:	62ba      	str	r2, [r7, #40]	; 0x28
    12a4:	781e      	ldrb	r6, [r3, #0]
    12a6:	68bd      	ldr	r5, [r7, #8]
    12a8:	e01a      	b.n	12e0 <gfx_sprite+0x58>
    12aa:	68fc      	ldr	r4, [r7, #12]
    12ac:	e012      	b.n	12d4 <gfx_sprite+0x4c>
    12ae:	0933      	lsrs	r3, r6, #4
    12b0:	b2da      	uxtb	r2, r3
    12b2:	2302      	movs	r3, #2
    12b4:	4629      	mov	r1, r5
    12b6:	4620      	mov	r0, r4
    12b8:	f7ff fe68 	bl	f8c <gfx_blit>
    12bc:	3401      	adds	r4, #1
    12be:	2302      	movs	r3, #2
    12c0:	4632      	mov	r2, r6
    12c2:	4629      	mov	r1, r5
    12c4:	4620      	mov	r0, r4
    12c6:	f7ff fe61 	bl	f8c <gfx_blit>
    12ca:	6abb      	ldr	r3, [r7, #40]	; 0x28
    12cc:	1c5a      	adds	r2, r3, #1
    12ce:	62ba      	str	r2, [r7, #40]	; 0x28
    12d0:	781e      	ldrb	r6, [r3, #0]
    12d2:	3401      	adds	r4, #1
    12d4:	79fa      	ldrb	r2, [r7, #7]
    12d6:	68fb      	ldr	r3, [r7, #12]
    12d8:	4413      	add	r3, r2
    12da:	42a3      	cmp	r3, r4
    12dc:	dce7      	bgt.n	12ae <gfx_sprite+0x26>
    12de:	3501      	adds	r5, #1
    12e0:	79ba      	ldrb	r2, [r7, #6]
    12e2:	68bb      	ldr	r3, [r7, #8]
    12e4:	4413      	add	r3, r2
    12e6:	42ab      	cmp	r3, r5
    12e8:	dcdf      	bgt.n	12aa <gfx_sprite+0x22>
    12ea:	bf00      	nop
    12ec:	3714      	adds	r7, #20
    12ee:	46bd      	mov	sp, r7
    12f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    12f2:	bf00      	nop

000012f4 <set_sysclock>:
    12f4:	b480      	push	{r7}
    12f6:	af00      	add	r7, sp, #0
    12f8:	4a18      	ldr	r2, [pc, #96]	; (135c <set_sysclock+0x68>)
    12fa:	4b18      	ldr	r3, [pc, #96]	; (135c <set_sysclock+0x68>)
    12fc:	681b      	ldr	r3, [r3, #0]
    12fe:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1302:	6013      	str	r3, [r2, #0]
    1304:	bf00      	nop
    1306:	4b15      	ldr	r3, [pc, #84]	; (135c <set_sysclock+0x68>)
    1308:	681b      	ldr	r3, [r3, #0]
    130a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    130e:	2b00      	cmp	r3, #0
    1310:	d0f9      	beq.n	1306 <set_sysclock+0x12>
    1312:	4a12      	ldr	r2, [pc, #72]	; (135c <set_sysclock+0x68>)
    1314:	4b11      	ldr	r3, [pc, #68]	; (135c <set_sysclock+0x68>)
    1316:	685b      	ldr	r3, [r3, #4]
    1318:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    131c:	6053      	str	r3, [r2, #4]
    131e:	4a0f      	ldr	r2, [pc, #60]	; (135c <set_sysclock+0x68>)
    1320:	4b0e      	ldr	r3, [pc, #56]	; (135c <set_sysclock+0x68>)
    1322:	681b      	ldr	r3, [r3, #0]
    1324:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1328:	6013      	str	r3, [r2, #0]
    132a:	bf00      	nop
    132c:	4b0b      	ldr	r3, [pc, #44]	; (135c <set_sysclock+0x68>)
    132e:	681b      	ldr	r3, [r3, #0]
    1330:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1334:	2b00      	cmp	r3, #0
    1336:	d0f9      	beq.n	132c <set_sysclock+0x38>
    1338:	4a09      	ldr	r2, [pc, #36]	; (1360 <set_sysclock+0x6c>)
    133a:	4b09      	ldr	r3, [pc, #36]	; (1360 <set_sysclock+0x6c>)
    133c:	681b      	ldr	r3, [r3, #0]
    133e:	f043 0312 	orr.w	r3, r3, #18
    1342:	6013      	str	r3, [r2, #0]
    1344:	4a05      	ldr	r2, [pc, #20]	; (135c <set_sysclock+0x68>)
    1346:	4b05      	ldr	r3, [pc, #20]	; (135c <set_sysclock+0x68>)
    1348:	685b      	ldr	r3, [r3, #4]
    134a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    134e:	f043 0302 	orr.w	r3, r3, #2
    1352:	6053      	str	r3, [r2, #4]
    1354:	bf00      	nop
    1356:	46bd      	mov	sp, r7
    1358:	bc80      	pop	{r7}
    135a:	4770      	bx	lr
    135c:	40021000 	.word	0x40021000
    1360:	40022000 	.word	0x40022000

00001364 <main>:
    1364:	b580      	push	{r7, lr}
    1366:	b08a      	sub	sp, #40	; 0x28
    1368:	af02      	add	r7, sp, #8
    136a:	f7ff ffc3 	bl	12f4 <set_sysclock>
    136e:	f001 f989 	bl	2684 <config_systicks>
    1372:	4b5a      	ldr	r3, [pc, #360]	; (14dc <main+0x178>)
    1374:	f640 021d 	movw	r2, #2077	; 0x81d
    1378:	619a      	str	r2, [r3, #24]
    137a:	2206      	movs	r2, #6
    137c:	210d      	movs	r1, #13
    137e:	4858      	ldr	r0, [pc, #352]	; (14e0 <main+0x17c>)
    1380:	f7ff fc37 	bl	bf2 <config_pin>
    1384:	4a56      	ldr	r2, [pc, #344]	; (14e0 <main+0x17c>)
    1386:	4b56      	ldr	r3, [pc, #344]	; (14e0 <main+0x17c>)
    1388:	68db      	ldr	r3, [r3, #12]
    138a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    138e:	60d3      	str	r3, [r2, #12]
    1390:	f001 f9b8 	bl	2704 <tvout_init>
    1394:	f7ff feec 	bl	1170 <gfx_cls>
    1398:	2303      	movs	r3, #3
    139a:	71bb      	strb	r3, [r7, #6]
    139c:	2354      	movs	r3, #84	; 0x54
    139e:	61bb      	str	r3, [r7, #24]
    13a0:	e01b      	b.n	13da <main+0x76>
    13a2:	2310      	movs	r3, #16
    13a4:	71fb      	strb	r3, [r7, #7]
    13a6:	2300      	movs	r3, #0
    13a8:	61fb      	str	r3, [r7, #28]
    13aa:	e010      	b.n	13ce <main+0x6a>
    13ac:	69fb      	ldr	r3, [r7, #28]
    13ae:	f003 0307 	and.w	r3, r3, #7
    13b2:	2b00      	cmp	r3, #0
    13b4:	d102      	bne.n	13bc <main+0x58>
    13b6:	79fb      	ldrb	r3, [r7, #7]
    13b8:	3b01      	subs	r3, #1
    13ba:	71fb      	strb	r3, [r7, #7]
    13bc:	79fb      	ldrb	r3, [r7, #7]
    13be:	461a      	mov	r2, r3
    13c0:	69b9      	ldr	r1, [r7, #24]
    13c2:	69f8      	ldr	r0, [r7, #28]
    13c4:	f7ff fe48 	bl	1058 <gfx_plot>
    13c8:	69fb      	ldr	r3, [r7, #28]
    13ca:	3301      	adds	r3, #1
    13cc:	61fb      	str	r3, [r7, #28]
    13ce:	69fb      	ldr	r3, [r7, #28]
    13d0:	2b7f      	cmp	r3, #127	; 0x7f
    13d2:	ddeb      	ble.n	13ac <main+0x48>
    13d4:	69bb      	ldr	r3, [r7, #24]
    13d6:	3301      	adds	r3, #1
    13d8:	61bb      	str	r3, [r7, #24]
    13da:	69bb      	ldr	r3, [r7, #24]
    13dc:	2b6f      	cmp	r3, #111	; 0x6f
    13de:	dde0      	ble.n	13a2 <main+0x3e>
    13e0:	4b40      	ldr	r3, [pc, #256]	; (14e4 <main+0x180>)
    13e2:	210a      	movs	r1, #10
    13e4:	4618      	mov	r0, r3
    13e6:	f7ff fd5a 	bl	e9e <gfx_print_int>
    13ea:	4b3f      	ldr	r3, [pc, #252]	; (14e8 <main+0x184>)
    13ec:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    13f0:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    13f4:	210a      	movs	r1, #10
    13f6:	4618      	mov	r0, r3
    13f8:	f7ff fd51 	bl	e9e <gfx_print_int>
    13fc:	2114      	movs	r1, #20
    13fe:	2000      	movs	r0, #0
    1400:	f7ff fca2 	bl	d48 <gfx_locate>
    1404:	4839      	ldr	r0, [pc, #228]	; (14ec <main+0x188>)
    1406:	f7ff fd27 	bl	e58 <gfx_print>
    140a:	4b39      	ldr	r3, [pc, #228]	; (14f0 <main+0x18c>)
    140c:	781b      	ldrb	r3, [r3, #0]
    140e:	210a      	movs	r1, #10
    1410:	4618      	mov	r0, r3
    1412:	f7ff fd44 	bl	e9e <gfx_print_int>
    1416:	2300      	movs	r3, #0
    1418:	613b      	str	r3, [r7, #16]
    141a:	693b      	ldr	r3, [r7, #16]
    141c:	617b      	str	r3, [r7, #20]
    141e:	2301      	movs	r3, #1
    1420:	60bb      	str	r3, [r7, #8]
    1422:	68bb      	ldr	r3, [r7, #8]
    1424:	60fb      	str	r3, [r7, #12]
    1426:	4b33      	ldr	r3, [pc, #204]	; (14f4 <main+0x190>)
    1428:	2264      	movs	r2, #100	; 0x64
    142a:	601a      	str	r2, [r3, #0]
    142c:	4b32      	ldr	r3, [pc, #200]	; (14f8 <main+0x194>)
    142e:	9300      	str	r3, [sp, #0]
    1430:	2308      	movs	r3, #8
    1432:	2208      	movs	r2, #8
    1434:	6939      	ldr	r1, [r7, #16]
    1436:	6978      	ldr	r0, [r7, #20]
    1438:	f7ff ff26 	bl	1288 <gfx_sprite>
    143c:	4b2f      	ldr	r3, [pc, #188]	; (14fc <main+0x198>)
    143e:	681b      	ldr	r3, [r3, #0]
    1440:	330a      	adds	r3, #10
    1442:	603b      	str	r3, [r7, #0]
    1444:	bf00      	nop
    1446:	4b2d      	ldr	r3, [pc, #180]	; (14fc <main+0x198>)
    1448:	681a      	ldr	r2, [r3, #0]
    144a:	683b      	ldr	r3, [r7, #0]
    144c:	429a      	cmp	r2, r3
    144e:	d3fa      	bcc.n	1446 <main+0xe2>
    1450:	f001 fb84 	bl	2b5c <frame_sync>
    1454:	4b28      	ldr	r3, [pc, #160]	; (14f8 <main+0x194>)
    1456:	9300      	str	r3, [sp, #0]
    1458:	2308      	movs	r3, #8
    145a:	2208      	movs	r2, #8
    145c:	6939      	ldr	r1, [r7, #16]
    145e:	6978      	ldr	r0, [r7, #20]
    1460:	f7ff ff12 	bl	1288 <gfx_sprite>
    1464:	697a      	ldr	r2, [r7, #20]
    1466:	68fb      	ldr	r3, [r7, #12]
    1468:	4413      	add	r3, r2
    146a:	617b      	str	r3, [r7, #20]
    146c:	697b      	ldr	r3, [r7, #20]
    146e:	f113 0f08 	cmn.w	r3, #8
    1472:	db02      	blt.n	147a <main+0x116>
    1474:	697b      	ldr	r3, [r7, #20]
    1476:	2bb3      	cmp	r3, #179	; 0xb3
    1478:	dd02      	ble.n	1480 <main+0x11c>
    147a:	68fb      	ldr	r3, [r7, #12]
    147c:	425b      	negs	r3, r3
    147e:	60fb      	str	r3, [r7, #12]
    1480:	693a      	ldr	r2, [r7, #16]
    1482:	68bb      	ldr	r3, [r7, #8]
    1484:	4413      	add	r3, r2
    1486:	613b      	str	r3, [r7, #16]
    1488:	693b      	ldr	r3, [r7, #16]
    148a:	f113 0f08 	cmn.w	r3, #8
    148e:	db02      	blt.n	1496 <main+0x132>
    1490:	693b      	ldr	r3, [r7, #16]
    1492:	2b6f      	cmp	r3, #111	; 0x6f
    1494:	dd02      	ble.n	149c <main+0x138>
    1496:	68bb      	ldr	r3, [r7, #8]
    1498:	425b      	negs	r3, r3
    149a:	60bb      	str	r3, [r7, #8]
    149c:	4b18      	ldr	r3, [pc, #96]	; (1500 <main+0x19c>)
    149e:	881b      	ldrh	r3, [r3, #0]
    14a0:	b29b      	uxth	r3, r3
    14a2:	b21b      	sxth	r3, r3
    14a4:	2b00      	cmp	r3, #0
    14a6:	dbc1      	blt.n	142c <main+0xc8>
    14a8:	79bb      	ldrb	r3, [r7, #6]
    14aa:	3301      	adds	r3, #1
    14ac:	71bb      	strb	r3, [r7, #6]
    14ae:	79bb      	ldrb	r3, [r7, #6]
    14b0:	4618      	mov	r0, r3
    14b2:	f001 fb63 	bl	2b7c <set_palette>
    14b6:	211c      	movs	r1, #28
    14b8:	2000      	movs	r0, #0
    14ba:	f7ff fc45 	bl	d48 <gfx_locate>
    14be:	79bb      	ldrb	r3, [r7, #6]
    14c0:	f003 0303 	and.w	r3, r3, #3
    14c4:	210a      	movs	r1, #10
    14c6:	4618      	mov	r0, r3
    14c8:	f7ff fce9 	bl	e9e <gfx_print_int>
    14cc:	bf00      	nop
    14ce:	4b0c      	ldr	r3, [pc, #48]	; (1500 <main+0x19c>)
    14d0:	881b      	ldrh	r3, [r3, #0]
    14d2:	b29b      	uxth	r3, r3
    14d4:	b21b      	sxth	r3, r3
    14d6:	2b00      	cmp	r3, #0
    14d8:	daf9      	bge.n	14ce <main+0x16a>
    14da:	e7a7      	b.n	142c <main+0xc8>
    14dc:	40021000 	.word	0x40021000
    14e0:	40011000 	.word	0x40011000
    14e4:	00003400 	.word	0x00003400
    14e8:	20002c40 	.word	0x20002c40
    14ec:	00002f00 	.word	0x00002f00
    14f0:	20002bd0 	.word	0x20002bd0
    14f4:	20000460 	.word	0x20000460
    14f8:	00002ee0 	.word	0x00002ee0
    14fc:	2000045c 	.word	0x2000045c
    1500:	2000046c 	.word	0x2000046c

00001504 <enable_interrupt>:
    1504:	b480      	push	{r7}
    1506:	b083      	sub	sp, #12
    1508:	af00      	add	r7, sp, #0
    150a:	6078      	str	r0, [r7, #4]
    150c:	687b      	ldr	r3, [r7, #4]
    150e:	2b3b      	cmp	r3, #59	; 0x3b
    1510:	dc17      	bgt.n	1542 <enable_interrupt+0x3e>
    1512:	687b      	ldr	r3, [r7, #4]
    1514:	115b      	asrs	r3, r3, #5
    1516:	009b      	lsls	r3, r3, #2
    1518:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    151c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1520:	687a      	ldr	r2, [r7, #4]
    1522:	1152      	asrs	r2, r2, #5
    1524:	0092      	lsls	r2, r2, #2
    1526:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    152a:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    152e:	6812      	ldr	r2, [r2, #0]
    1530:	6879      	ldr	r1, [r7, #4]
    1532:	f001 011f 	and.w	r1, r1, #31
    1536:	2001      	movs	r0, #1
    1538:	fa00 f101 	lsl.w	r1, r0, r1
    153c:	430a      	orrs	r2, r1
    153e:	601a      	str	r2, [r3, #0]
    1540:	e000      	b.n	1544 <enable_interrupt+0x40>
    1542:	bf00      	nop
    1544:	370c      	adds	r7, #12
    1546:	46bd      	mov	sp, r7
    1548:	bc80      	pop	{r7}
    154a:	4770      	bx	lr

0000154c <disable_interrupt>:
    154c:	b480      	push	{r7}
    154e:	b083      	sub	sp, #12
    1550:	af00      	add	r7, sp, #0
    1552:	6078      	str	r0, [r7, #4]
    1554:	687b      	ldr	r3, [r7, #4]
    1556:	2b3b      	cmp	r3, #59	; 0x3b
    1558:	dc0c      	bgt.n	1574 <disable_interrupt+0x28>
    155a:	687b      	ldr	r3, [r7, #4]
    155c:	115b      	asrs	r3, r3, #5
    155e:	009a      	lsls	r2, r3, #2
    1560:	4b07      	ldr	r3, [pc, #28]	; (1580 <disable_interrupt+0x34>)
    1562:	4413      	add	r3, r2
    1564:	687a      	ldr	r2, [r7, #4]
    1566:	f002 021f 	and.w	r2, r2, #31
    156a:	2101      	movs	r1, #1
    156c:	fa01 f202 	lsl.w	r2, r1, r2
    1570:	601a      	str	r2, [r3, #0]
    1572:	e000      	b.n	1576 <disable_interrupt+0x2a>
    1574:	bf00      	nop
    1576:	370c      	adds	r7, #12
    1578:	46bd      	mov	sp, r7
    157a:	bc80      	pop	{r7}
    157c:	4770      	bx	lr
    157e:	bf00      	nop
    1580:	e000e180 	.word	0xe000e180

00001584 <get_pending>:
    1584:	b480      	push	{r7}
    1586:	b083      	sub	sp, #12
    1588:	af00      	add	r7, sp, #0
    158a:	6078      	str	r0, [r7, #4]
    158c:	687b      	ldr	r3, [r7, #4]
    158e:	2b3b      	cmp	r3, #59	; 0x3b
    1590:	dd01      	ble.n	1596 <get_pending+0x12>
    1592:	2300      	movs	r3, #0
    1594:	e00c      	b.n	15b0 <get_pending+0x2c>
    1596:	687b      	ldr	r3, [r7, #4]
    1598:	115b      	asrs	r3, r3, #5
    159a:	009a      	lsls	r2, r3, #2
    159c:	4b07      	ldr	r3, [pc, #28]	; (15bc <get_pending+0x38>)
    159e:	4413      	add	r3, r2
    15a0:	681b      	ldr	r3, [r3, #0]
    15a2:	687a      	ldr	r2, [r7, #4]
    15a4:	f002 021f 	and.w	r2, r2, #31
    15a8:	2101      	movs	r1, #1
    15aa:	fa01 f202 	lsl.w	r2, r1, r2
    15ae:	4013      	ands	r3, r2
    15b0:	4618      	mov	r0, r3
    15b2:	370c      	adds	r7, #12
    15b4:	46bd      	mov	sp, r7
    15b6:	bc80      	pop	{r7}
    15b8:	4770      	bx	lr
    15ba:	bf00      	nop
    15bc:	e000e280 	.word	0xe000e280

000015c0 <get_active>:
    15c0:	b480      	push	{r7}
    15c2:	b083      	sub	sp, #12
    15c4:	af00      	add	r7, sp, #0
    15c6:	6078      	str	r0, [r7, #4]
    15c8:	687b      	ldr	r3, [r7, #4]
    15ca:	2b3b      	cmp	r3, #59	; 0x3b
    15cc:	dd01      	ble.n	15d2 <get_active+0x12>
    15ce:	2300      	movs	r3, #0
    15d0:	e00e      	b.n	15f0 <get_active+0x30>
    15d2:	687b      	ldr	r3, [r7, #4]
    15d4:	115b      	asrs	r3, r3, #5
    15d6:	009b      	lsls	r3, r3, #2
    15d8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    15dc:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    15e0:	681b      	ldr	r3, [r3, #0]
    15e2:	687a      	ldr	r2, [r7, #4]
    15e4:	f002 021f 	and.w	r2, r2, #31
    15e8:	2101      	movs	r1, #1
    15ea:	fa01 f202 	lsl.w	r2, r1, r2
    15ee:	4013      	ands	r3, r2
    15f0:	4618      	mov	r0, r3
    15f2:	370c      	adds	r7, #12
    15f4:	46bd      	mov	sp, r7
    15f6:	bc80      	pop	{r7}
    15f8:	4770      	bx	lr

000015fa <set_pending>:
    15fa:	b480      	push	{r7}
    15fc:	b083      	sub	sp, #12
    15fe:	af00      	add	r7, sp, #0
    1600:	6078      	str	r0, [r7, #4]
    1602:	687b      	ldr	r3, [r7, #4]
    1604:	2b3b      	cmp	r3, #59	; 0x3b
    1606:	dc17      	bgt.n	1638 <set_pending+0x3e>
    1608:	687b      	ldr	r3, [r7, #4]
    160a:	115b      	asrs	r3, r3, #5
    160c:	009b      	lsls	r3, r3, #2
    160e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1612:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1616:	687a      	ldr	r2, [r7, #4]
    1618:	1152      	asrs	r2, r2, #5
    161a:	0092      	lsls	r2, r2, #2
    161c:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1620:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    1624:	6812      	ldr	r2, [r2, #0]
    1626:	6879      	ldr	r1, [r7, #4]
    1628:	f001 011f 	and.w	r1, r1, #31
    162c:	2001      	movs	r0, #1
    162e:	fa00 f101 	lsl.w	r1, r0, r1
    1632:	430a      	orrs	r2, r1
    1634:	601a      	str	r2, [r3, #0]
    1636:	e000      	b.n	163a <set_pending+0x40>
    1638:	bf00      	nop
    163a:	370c      	adds	r7, #12
    163c:	46bd      	mov	sp, r7
    163e:	bc80      	pop	{r7}
    1640:	4770      	bx	lr

00001642 <clear_pending>:
    1642:	b480      	push	{r7}
    1644:	b083      	sub	sp, #12
    1646:	af00      	add	r7, sp, #0
    1648:	6078      	str	r0, [r7, #4]
    164a:	687b      	ldr	r3, [r7, #4]
    164c:	2b3b      	cmp	r3, #59	; 0x3b
    164e:	dc0c      	bgt.n	166a <clear_pending+0x28>
    1650:	687b      	ldr	r3, [r7, #4]
    1652:	115b      	asrs	r3, r3, #5
    1654:	009a      	lsls	r2, r3, #2
    1656:	4b07      	ldr	r3, [pc, #28]	; (1674 <clear_pending+0x32>)
    1658:	4413      	add	r3, r2
    165a:	687a      	ldr	r2, [r7, #4]
    165c:	f002 021f 	and.w	r2, r2, #31
    1660:	2101      	movs	r1, #1
    1662:	fa01 f202 	lsl.w	r2, r1, r2
    1666:	601a      	str	r2, [r3, #0]
    1668:	e000      	b.n	166c <clear_pending+0x2a>
    166a:	bf00      	nop
    166c:	370c      	adds	r7, #12
    166e:	46bd      	mov	sp, r7
    1670:	bc80      	pop	{r7}
    1672:	4770      	bx	lr
    1674:	e000e280 	.word	0xe000e280

00001678 <set_int_priority>:
    1678:	b480      	push	{r7}
    167a:	b083      	sub	sp, #12
    167c:	af00      	add	r7, sp, #0
    167e:	6078      	str	r0, [r7, #4]
    1680:	6039      	str	r1, [r7, #0]
    1682:	687b      	ldr	r3, [r7, #4]
    1684:	2b00      	cmp	r3, #0
    1686:	db0d      	blt.n	16a4 <set_int_priority+0x2c>
    1688:	687b      	ldr	r3, [r7, #4]
    168a:	2b3b      	cmp	r3, #59	; 0x3b
    168c:	dc0a      	bgt.n	16a4 <set_int_priority+0x2c>
    168e:	687b      	ldr	r3, [r7, #4]
    1690:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1694:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1698:	683a      	ldr	r2, [r7, #0]
    169a:	b2d2      	uxtb	r2, r2
    169c:	0112      	lsls	r2, r2, #4
    169e:	b2d2      	uxtb	r2, r2
    16a0:	701a      	strb	r2, [r3, #0]
    16a2:	e012      	b.n	16ca <set_int_priority+0x52>
    16a4:	687b      	ldr	r3, [r7, #4]
    16a6:	2b00      	cmp	r3, #0
    16a8:	da0f      	bge.n	16ca <set_int_priority+0x52>
    16aa:	687b      	ldr	r3, [r7, #4]
    16ac:	f113 0f0f 	cmn.w	r3, #15
    16b0:	db0b      	blt.n	16ca <set_int_priority+0x52>
    16b2:	687a      	ldr	r2, [r7, #4]
    16b4:	f06f 0303 	mvn.w	r3, #3
    16b8:	1a9b      	subs	r3, r3, r2
    16ba:	461a      	mov	r2, r3
    16bc:	4b05      	ldr	r3, [pc, #20]	; (16d4 <set_int_priority+0x5c>)
    16be:	4413      	add	r3, r2
    16c0:	683a      	ldr	r2, [r7, #0]
    16c2:	b2d2      	uxtb	r2, r2
    16c4:	0112      	lsls	r2, r2, #4
    16c6:	b2d2      	uxtb	r2, r2
    16c8:	701a      	strb	r2, [r3, #0]
    16ca:	bf00      	nop
    16cc:	370c      	adds	r7, #12
    16ce:	46bd      	mov	sp, r7
    16d0:	bc80      	pop	{r7}
    16d2:	4770      	bx	lr
    16d4:	e000ed18 	.word	0xe000ed18

000016d8 <leap_year>:
    16d8:	b480      	push	{r7}
    16da:	b083      	sub	sp, #12
    16dc:	af00      	add	r7, sp, #0
    16de:	6078      	str	r0, [r7, #4]
    16e0:	687b      	ldr	r3, [r7, #4]
    16e2:	f003 0303 	and.w	r3, r3, #3
    16e6:	2b00      	cmp	r3, #0
    16e8:	d11a      	bne.n	1720 <leap_year+0x48>
    16ea:	687a      	ldr	r2, [r7, #4]
    16ec:	4b0f      	ldr	r3, [pc, #60]	; (172c <leap_year+0x54>)
    16ee:	fba3 1302 	umull	r1, r3, r3, r2
    16f2:	095b      	lsrs	r3, r3, #5
    16f4:	2164      	movs	r1, #100	; 0x64
    16f6:	fb01 f303 	mul.w	r3, r1, r3
    16fa:	1ad3      	subs	r3, r2, r3
    16fc:	2b00      	cmp	r3, #0
    16fe:	d10d      	bne.n	171c <leap_year+0x44>
    1700:	687a      	ldr	r2, [r7, #4]
    1702:	4b0a      	ldr	r3, [pc, #40]	; (172c <leap_year+0x54>)
    1704:	fba3 1302 	umull	r1, r3, r3, r2
    1708:	09db      	lsrs	r3, r3, #7
    170a:	f44f 71c8 	mov.w	r1, #400	; 0x190
    170e:	fb01 f303 	mul.w	r3, r1, r3
    1712:	1ad3      	subs	r3, r2, r3
    1714:	2b00      	cmp	r3, #0
    1716:	d001      	beq.n	171c <leap_year+0x44>
    1718:	2300      	movs	r3, #0
    171a:	e002      	b.n	1722 <leap_year+0x4a>
    171c:	2301      	movs	r3, #1
    171e:	e000      	b.n	1722 <leap_year+0x4a>
    1720:	2300      	movs	r3, #0
    1722:	4618      	mov	r0, r3
    1724:	370c      	adds	r7, #12
    1726:	46bd      	mov	sp, r7
    1728:	bc80      	pop	{r7}
    172a:	4770      	bx	lr
    172c:	51eb851f 	.word	0x51eb851f

00001730 <sec_per_month>:
    1730:	b480      	push	{r7}
    1732:	b085      	sub	sp, #20
    1734:	af00      	add	r7, sp, #0
    1736:	6078      	str	r0, [r7, #4]
    1738:	6039      	str	r1, [r7, #0]
    173a:	4a0d      	ldr	r2, [pc, #52]	; (1770 <sec_per_month+0x40>)
    173c:	683b      	ldr	r3, [r7, #0]
    173e:	4413      	add	r3, r2
    1740:	781b      	ldrb	r3, [r3, #0]
    1742:	461a      	mov	r2, r3
    1744:	4b0b      	ldr	r3, [pc, #44]	; (1774 <sec_per_month+0x44>)
    1746:	fb03 f302 	mul.w	r3, r3, r2
    174a:	60fb      	str	r3, [r7, #12]
    174c:	683b      	ldr	r3, [r7, #0]
    174e:	2b02      	cmp	r3, #2
    1750:	d108      	bne.n	1764 <sec_per_month+0x34>
    1752:	687b      	ldr	r3, [r7, #4]
    1754:	2b00      	cmp	r3, #0
    1756:	d005      	beq.n	1764 <sec_per_month+0x34>
    1758:	68fb      	ldr	r3, [r7, #12]
    175a:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    175e:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    1762:	60fb      	str	r3, [r7, #12]
    1764:	68fb      	ldr	r3, [r7, #12]
    1766:	4618      	mov	r0, r3
    1768:	3714      	adds	r7, #20
    176a:	46bd      	mov	sp, r7
    176c:	bc80      	pop	{r7}
    176e:	4770      	bx	lr
    1770:	00002fbc 	.word	0x00002fbc
    1774:	00015180 	.word	0x00015180

00001778 <get_date_time>:
    1778:	b580      	push	{r7, lr}
    177a:	b086      	sub	sp, #24
    177c:	af00      	add	r7, sp, #0
    177e:	6078      	str	r0, [r7, #4]
    1780:	4b66      	ldr	r3, [pc, #408]	; (191c <get_date_time+0x1a4>)
    1782:	699b      	ldr	r3, [r3, #24]
    1784:	041a      	lsls	r2, r3, #16
    1786:	4b65      	ldr	r3, [pc, #404]	; (191c <get_date_time+0x1a4>)
    1788:	69db      	ldr	r3, [r3, #28]
    178a:	4413      	add	r3, r2
    178c:	617b      	str	r3, [r7, #20]
    178e:	687b      	ldr	r3, [r7, #4]
    1790:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1794:	811a      	strh	r2, [r3, #8]
    1796:	f240 70b2 	movw	r0, #1970	; 0x7b2
    179a:	f7ff ff9d 	bl	16d8 <leap_year>
    179e:	6138      	str	r0, [r7, #16]
    17a0:	e019      	b.n	17d6 <get_date_time+0x5e>
    17a2:	693b      	ldr	r3, [r7, #16]
    17a4:	2b00      	cmp	r3, #0
    17a6:	d006      	beq.n	17b6 <get_date_time+0x3e>
    17a8:	697b      	ldr	r3, [r7, #20]
    17aa:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    17ae:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    17b2:	617b      	str	r3, [r7, #20]
    17b4:	e003      	b.n	17be <get_date_time+0x46>
    17b6:	697a      	ldr	r2, [r7, #20]
    17b8:	4b59      	ldr	r3, [pc, #356]	; (1920 <get_date_time+0x1a8>)
    17ba:	4413      	add	r3, r2
    17bc:	617b      	str	r3, [r7, #20]
    17be:	687b      	ldr	r3, [r7, #4]
    17c0:	891b      	ldrh	r3, [r3, #8]
    17c2:	3301      	adds	r3, #1
    17c4:	b29a      	uxth	r2, r3
    17c6:	687b      	ldr	r3, [r7, #4]
    17c8:	811a      	strh	r2, [r3, #8]
    17ca:	687b      	ldr	r3, [r7, #4]
    17cc:	891b      	ldrh	r3, [r3, #8]
    17ce:	4618      	mov	r0, r3
    17d0:	f7ff ff82 	bl	16d8 <leap_year>
    17d4:	6138      	str	r0, [r7, #16]
    17d6:	693b      	ldr	r3, [r7, #16]
    17d8:	2b00      	cmp	r3, #0
    17da:	d103      	bne.n	17e4 <get_date_time+0x6c>
    17dc:	697b      	ldr	r3, [r7, #20]
    17de:	4a51      	ldr	r2, [pc, #324]	; (1924 <get_date_time+0x1ac>)
    17e0:	4293      	cmp	r3, r2
    17e2:	d8de      	bhi.n	17a2 <get_date_time+0x2a>
    17e4:	693b      	ldr	r3, [r7, #16]
    17e6:	2b00      	cmp	r3, #0
    17e8:	d003      	beq.n	17f2 <get_date_time+0x7a>
    17ea:	697b      	ldr	r3, [r7, #20]
    17ec:	4a4e      	ldr	r2, [pc, #312]	; (1928 <get_date_time+0x1b0>)
    17ee:	4293      	cmp	r3, r2
    17f0:	d8d7      	bhi.n	17a2 <get_date_time+0x2a>
    17f2:	687a      	ldr	r2, [r7, #4]
    17f4:	8853      	ldrh	r3, [r2, #2]
    17f6:	2101      	movs	r1, #1
    17f8:	f361 1389 	bfi	r3, r1, #6, #4
    17fc:	8053      	strh	r3, [r2, #2]
    17fe:	687a      	ldr	r2, [r7, #4]
    1800:	7893      	ldrb	r3, [r2, #2]
    1802:	2101      	movs	r1, #1
    1804:	f361 0345 	bfi	r3, r1, #1, #5
    1808:	7093      	strb	r3, [r2, #2]
    180a:	687a      	ldr	r2, [r7, #4]
    180c:	6813      	ldr	r3, [r2, #0]
    180e:	f36f 3310 	bfc	r3, #12, #5
    1812:	6013      	str	r3, [r2, #0]
    1814:	687a      	ldr	r2, [r7, #4]
    1816:	8813      	ldrh	r3, [r2, #0]
    1818:	f36f 138b 	bfc	r3, #6, #6
    181c:	8013      	strh	r3, [r2, #0]
    181e:	687a      	ldr	r2, [r7, #4]
    1820:	7813      	ldrb	r3, [r2, #0]
    1822:	f36f 0305 	bfc	r3, #0, #6
    1826:	7013      	strb	r3, [r2, #0]
    1828:	e011      	b.n	184e <get_date_time+0xd6>
    182a:	687b      	ldr	r3, [r7, #4]
    182c:	885b      	ldrh	r3, [r3, #2]
    182e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1832:	b2db      	uxtb	r3, r3
    1834:	3301      	adds	r3, #1
    1836:	f003 030f 	and.w	r3, r3, #15
    183a:	b2d9      	uxtb	r1, r3
    183c:	687a      	ldr	r2, [r7, #4]
    183e:	8853      	ldrh	r3, [r2, #2]
    1840:	f361 1389 	bfi	r3, r1, #6, #4
    1844:	8053      	strh	r3, [r2, #2]
    1846:	697a      	ldr	r2, [r7, #20]
    1848:	68fb      	ldr	r3, [r7, #12]
    184a:	1ad3      	subs	r3, r2, r3
    184c:	617b      	str	r3, [r7, #20]
    184e:	687b      	ldr	r3, [r7, #4]
    1850:	885b      	ldrh	r3, [r3, #2]
    1852:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1856:	b2db      	uxtb	r3, r3
    1858:	4619      	mov	r1, r3
    185a:	6938      	ldr	r0, [r7, #16]
    185c:	f7ff ff68 	bl	1730 <sec_per_month>
    1860:	60f8      	str	r0, [r7, #12]
    1862:	68fa      	ldr	r2, [r7, #12]
    1864:	697b      	ldr	r3, [r7, #20]
    1866:	429a      	cmp	r2, r3
    1868:	d3df      	bcc.n	182a <get_date_time+0xb2>
    186a:	697b      	ldr	r3, [r7, #20]
    186c:	4a2f      	ldr	r2, [pc, #188]	; (192c <get_date_time+0x1b4>)
    186e:	fba2 2303 	umull	r2, r3, r2, r3
    1872:	0c1b      	lsrs	r3, r3, #16
    1874:	b2db      	uxtb	r3, r3
    1876:	3301      	adds	r3, #1
    1878:	b2db      	uxtb	r3, r3
    187a:	f003 031f 	and.w	r3, r3, #31
    187e:	b2d9      	uxtb	r1, r3
    1880:	687a      	ldr	r2, [r7, #4]
    1882:	7893      	ldrb	r3, [r2, #2]
    1884:	f361 0345 	bfi	r3, r1, #1, #5
    1888:	7093      	strb	r3, [r2, #2]
    188a:	697b      	ldr	r3, [r7, #20]
    188c:	4a27      	ldr	r2, [pc, #156]	; (192c <get_date_time+0x1b4>)
    188e:	fba2 1203 	umull	r1, r2, r2, r3
    1892:	0c12      	lsrs	r2, r2, #16
    1894:	4926      	ldr	r1, [pc, #152]	; (1930 <get_date_time+0x1b8>)
    1896:	fb01 f202 	mul.w	r2, r1, r2
    189a:	1a9b      	subs	r3, r3, r2
    189c:	617b      	str	r3, [r7, #20]
    189e:	697b      	ldr	r3, [r7, #20]
    18a0:	4a24      	ldr	r2, [pc, #144]	; (1934 <get_date_time+0x1bc>)
    18a2:	fba2 2303 	umull	r2, r3, r2, r3
    18a6:	0adb      	lsrs	r3, r3, #11
    18a8:	b2db      	uxtb	r3, r3
    18aa:	f003 031f 	and.w	r3, r3, #31
    18ae:	b2d9      	uxtb	r1, r3
    18b0:	687a      	ldr	r2, [r7, #4]
    18b2:	6813      	ldr	r3, [r2, #0]
    18b4:	f361 3310 	bfi	r3, r1, #12, #5
    18b8:	6013      	str	r3, [r2, #0]
    18ba:	697b      	ldr	r3, [r7, #20]
    18bc:	4a1d      	ldr	r2, [pc, #116]	; (1934 <get_date_time+0x1bc>)
    18be:	fba2 1203 	umull	r1, r2, r2, r3
    18c2:	0ad2      	lsrs	r2, r2, #11
    18c4:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    18c8:	fb01 f202 	mul.w	r2, r1, r2
    18cc:	1a9b      	subs	r3, r3, r2
    18ce:	617b      	str	r3, [r7, #20]
    18d0:	697b      	ldr	r3, [r7, #20]
    18d2:	4a19      	ldr	r2, [pc, #100]	; (1938 <get_date_time+0x1c0>)
    18d4:	fba2 2303 	umull	r2, r3, r2, r3
    18d8:	095b      	lsrs	r3, r3, #5
    18da:	b2db      	uxtb	r3, r3
    18dc:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    18e0:	b2d9      	uxtb	r1, r3
    18e2:	687a      	ldr	r2, [r7, #4]
    18e4:	8813      	ldrh	r3, [r2, #0]
    18e6:	f361 138b 	bfi	r3, r1, #6, #6
    18ea:	8013      	strh	r3, [r2, #0]
    18ec:	6979      	ldr	r1, [r7, #20]
    18ee:	4b12      	ldr	r3, [pc, #72]	; (1938 <get_date_time+0x1c0>)
    18f0:	fba3 2301 	umull	r2, r3, r3, r1
    18f4:	095a      	lsrs	r2, r3, #5
    18f6:	4613      	mov	r3, r2
    18f8:	011b      	lsls	r3, r3, #4
    18fa:	1a9b      	subs	r3, r3, r2
    18fc:	009b      	lsls	r3, r3, #2
    18fe:	1aca      	subs	r2, r1, r3
    1900:	b2d3      	uxtb	r3, r2
    1902:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1906:	b2d9      	uxtb	r1, r3
    1908:	687a      	ldr	r2, [r7, #4]
    190a:	7813      	ldrb	r3, [r2, #0]
    190c:	f361 0305 	bfi	r3, r1, #0, #6
    1910:	7013      	strb	r3, [r2, #0]
    1912:	bf00      	nop
    1914:	3718      	adds	r7, #24
    1916:	46bd      	mov	sp, r7
    1918:	bd80      	pop	{r7, pc}
    191a:	bf00      	nop
    191c:	40002800 	.word	0x40002800
    1920:	fe1ecc80 	.word	0xfe1ecc80
    1924:	01e1337f 	.word	0x01e1337f
    1928:	01e284ff 	.word	0x01e284ff
    192c:	c22e4507 	.word	0xc22e4507
    1930:	00015180 	.word	0x00015180
    1934:	91a2b3c5 	.word	0x91a2b3c5
    1938:	88888889 	.word	0x88888889

0000193c <set_date_time>:
    193c:	b580      	push	{r7, lr}
    193e:	b086      	sub	sp, #24
    1940:	af00      	add	r7, sp, #0
    1942:	6078      	str	r0, [r7, #4]
    1944:	2300      	movs	r3, #0
    1946:	613b      	str	r3, [r7, #16]
    1948:	687b      	ldr	r3, [r7, #4]
    194a:	891b      	ldrh	r3, [r3, #8]
    194c:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1950:	4293      	cmp	r3, r2
    1952:	d803      	bhi.n	195c <set_date_time+0x20>
    1954:	687b      	ldr	r3, [r7, #4]
    1956:	f240 72b2 	movw	r2, #1970	; 0x7b2
    195a:	811a      	strh	r2, [r3, #8]
    195c:	687b      	ldr	r3, [r7, #4]
    195e:	891b      	ldrh	r3, [r3, #8]
    1960:	f640 023a 	movw	r2, #2106	; 0x83a
    1964:	4293      	cmp	r3, r2
    1966:	d903      	bls.n	1970 <set_date_time+0x34>
    1968:	687b      	ldr	r3, [r7, #4]
    196a:	f640 023a 	movw	r2, #2106	; 0x83a
    196e:	811a      	strh	r2, [r3, #8]
    1970:	687b      	ldr	r3, [r7, #4]
    1972:	891b      	ldrh	r3, [r3, #8]
    1974:	4618      	mov	r0, r3
    1976:	f7ff feaf 	bl	16d8 <leap_year>
    197a:	60f8      	str	r0, [r7, #12]
    197c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1980:	617b      	str	r3, [r7, #20]
    1982:	e013      	b.n	19ac <set_date_time+0x70>
    1984:	6978      	ldr	r0, [r7, #20]
    1986:	f7ff fea7 	bl	16d8 <leap_year>
    198a:	4603      	mov	r3, r0
    198c:	2b00      	cmp	r3, #0
    198e:	d006      	beq.n	199e <set_date_time+0x62>
    1990:	693b      	ldr	r3, [r7, #16]
    1992:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1996:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    199a:	613b      	str	r3, [r7, #16]
    199c:	e003      	b.n	19a6 <set_date_time+0x6a>
    199e:	693a      	ldr	r2, [r7, #16]
    19a0:	4b42      	ldr	r3, [pc, #264]	; (1aac <set_date_time+0x170>)
    19a2:	4413      	add	r3, r2
    19a4:	613b      	str	r3, [r7, #16]
    19a6:	697b      	ldr	r3, [r7, #20]
    19a8:	3301      	adds	r3, #1
    19aa:	617b      	str	r3, [r7, #20]
    19ac:	687b      	ldr	r3, [r7, #4]
    19ae:	891b      	ldrh	r3, [r3, #8]
    19b0:	461a      	mov	r2, r3
    19b2:	697b      	ldr	r3, [r7, #20]
    19b4:	429a      	cmp	r2, r3
    19b6:	d8e5      	bhi.n	1984 <set_date_time+0x48>
    19b8:	2301      	movs	r3, #1
    19ba:	617b      	str	r3, [r7, #20]
    19bc:	e00a      	b.n	19d4 <set_date_time+0x98>
    19be:	6979      	ldr	r1, [r7, #20]
    19c0:	68f8      	ldr	r0, [r7, #12]
    19c2:	f7ff feb5 	bl	1730 <sec_per_month>
    19c6:	4602      	mov	r2, r0
    19c8:	693b      	ldr	r3, [r7, #16]
    19ca:	4413      	add	r3, r2
    19cc:	613b      	str	r3, [r7, #16]
    19ce:	697b      	ldr	r3, [r7, #20]
    19d0:	3301      	adds	r3, #1
    19d2:	617b      	str	r3, [r7, #20]
    19d4:	687b      	ldr	r3, [r7, #4]
    19d6:	885b      	ldrh	r3, [r3, #2]
    19d8:	f3c3 1383 	ubfx	r3, r3, #6, #4
    19dc:	b2db      	uxtb	r3, r3
    19de:	461a      	mov	r2, r3
    19e0:	697b      	ldr	r3, [r7, #20]
    19e2:	429a      	cmp	r2, r3
    19e4:	d8eb      	bhi.n	19be <set_date_time+0x82>
    19e6:	687b      	ldr	r3, [r7, #4]
    19e8:	789b      	ldrb	r3, [r3, #2]
    19ea:	f3c3 0344 	ubfx	r3, r3, #1, #5
    19ee:	b2db      	uxtb	r3, r3
    19f0:	3b01      	subs	r3, #1
    19f2:	4a2f      	ldr	r2, [pc, #188]	; (1ab0 <set_date_time+0x174>)
    19f4:	fb02 f303 	mul.w	r3, r2, r3
    19f8:	461a      	mov	r2, r3
    19fa:	693b      	ldr	r3, [r7, #16]
    19fc:	4413      	add	r3, r2
    19fe:	613b      	str	r3, [r7, #16]
    1a00:	687b      	ldr	r3, [r7, #4]
    1a02:	681b      	ldr	r3, [r3, #0]
    1a04:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1a08:	b2db      	uxtb	r3, r3
    1a0a:	461a      	mov	r2, r3
    1a0c:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    1a10:	fb03 f302 	mul.w	r3, r3, r2
    1a14:	461a      	mov	r2, r3
    1a16:	693b      	ldr	r3, [r7, #16]
    1a18:	4413      	add	r3, r2
    1a1a:	613b      	str	r3, [r7, #16]
    1a1c:	687b      	ldr	r3, [r7, #4]
    1a1e:	881b      	ldrh	r3, [r3, #0]
    1a20:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1a24:	b2db      	uxtb	r3, r3
    1a26:	461a      	mov	r2, r3
    1a28:	4613      	mov	r3, r2
    1a2a:	011b      	lsls	r3, r3, #4
    1a2c:	1a9b      	subs	r3, r3, r2
    1a2e:	009b      	lsls	r3, r3, #2
    1a30:	461a      	mov	r2, r3
    1a32:	693b      	ldr	r3, [r7, #16]
    1a34:	4413      	add	r3, r2
    1a36:	613b      	str	r3, [r7, #16]
    1a38:	687b      	ldr	r3, [r7, #4]
    1a3a:	781b      	ldrb	r3, [r3, #0]
    1a3c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1a40:	b2db      	uxtb	r3, r3
    1a42:	461a      	mov	r2, r3
    1a44:	693b      	ldr	r3, [r7, #16]
    1a46:	4413      	add	r3, r2
    1a48:	613b      	str	r3, [r7, #16]
    1a4a:	4a1a      	ldr	r2, [pc, #104]	; (1ab4 <set_date_time+0x178>)
    1a4c:	4b19      	ldr	r3, [pc, #100]	; (1ab4 <set_date_time+0x178>)
    1a4e:	69db      	ldr	r3, [r3, #28]
    1a50:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1a54:	61d3      	str	r3, [r2, #28]
    1a56:	4a18      	ldr	r2, [pc, #96]	; (1ab8 <set_date_time+0x17c>)
    1a58:	4b17      	ldr	r3, [pc, #92]	; (1ab8 <set_date_time+0x17c>)
    1a5a:	681b      	ldr	r3, [r3, #0]
    1a5c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1a60:	6013      	str	r3, [r2, #0]
    1a62:	4a16      	ldr	r2, [pc, #88]	; (1abc <set_date_time+0x180>)
    1a64:	4b15      	ldr	r3, [pc, #84]	; (1abc <set_date_time+0x180>)
    1a66:	685b      	ldr	r3, [r3, #4]
    1a68:	f043 0310 	orr.w	r3, r3, #16
    1a6c:	6053      	str	r3, [r2, #4]
    1a6e:	4a13      	ldr	r2, [pc, #76]	; (1abc <set_date_time+0x180>)
    1a70:	693b      	ldr	r3, [r7, #16]
    1a72:	0c1b      	lsrs	r3, r3, #16
    1a74:	6193      	str	r3, [r2, #24]
    1a76:	4a11      	ldr	r2, [pc, #68]	; (1abc <set_date_time+0x180>)
    1a78:	693b      	ldr	r3, [r7, #16]
    1a7a:	b29b      	uxth	r3, r3
    1a7c:	61d3      	str	r3, [r2, #28]
    1a7e:	4a0f      	ldr	r2, [pc, #60]	; (1abc <set_date_time+0x180>)
    1a80:	4b0e      	ldr	r3, [pc, #56]	; (1abc <set_date_time+0x180>)
    1a82:	685b      	ldr	r3, [r3, #4]
    1a84:	f023 0310 	bic.w	r3, r3, #16
    1a88:	6053      	str	r3, [r2, #4]
    1a8a:	bf00      	nop
    1a8c:	4b0b      	ldr	r3, [pc, #44]	; (1abc <set_date_time+0x180>)
    1a8e:	685b      	ldr	r3, [r3, #4]
    1a90:	f003 0320 	and.w	r3, r3, #32
    1a94:	2b00      	cmp	r3, #0
    1a96:	d0f9      	beq.n	1a8c <set_date_time+0x150>
    1a98:	4a07      	ldr	r2, [pc, #28]	; (1ab8 <set_date_time+0x17c>)
    1a9a:	4b07      	ldr	r3, [pc, #28]	; (1ab8 <set_date_time+0x17c>)
    1a9c:	681b      	ldr	r3, [r3, #0]
    1a9e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1aa2:	6013      	str	r3, [r2, #0]
    1aa4:	bf00      	nop
    1aa6:	3718      	adds	r7, #24
    1aa8:	46bd      	mov	sp, r7
    1aaa:	bd80      	pop	{r7, pc}
    1aac:	01e13380 	.word	0x01e13380
    1ab0:	00015180 	.word	0x00015180
    1ab4:	40021000 	.word	0x40021000
    1ab8:	40007000 	.word	0x40007000
    1abc:	40002800 	.word	0x40002800

00001ac0 <rtc_init>:
    1ac0:	b580      	push	{r7, lr}
    1ac2:	b082      	sub	sp, #8
    1ac4:	af00      	add	r7, sp, #0
    1ac6:	6078      	str	r0, [r7, #4]
    1ac8:	6039      	str	r1, [r7, #0]
    1aca:	4b4a      	ldr	r3, [pc, #296]	; (1bf4 <rtc_init+0x134>)
    1acc:	685b      	ldr	r3, [r3, #4]
    1ace:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1ad2:	4293      	cmp	r3, r2
    1ad4:	f000 8082 	beq.w	1bdc <rtc_init+0x11c>
    1ad8:	4a47      	ldr	r2, [pc, #284]	; (1bf8 <rtc_init+0x138>)
    1ada:	4b47      	ldr	r3, [pc, #284]	; (1bf8 <rtc_init+0x138>)
    1adc:	69db      	ldr	r3, [r3, #28]
    1ade:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1ae2:	61d3      	str	r3, [r2, #28]
    1ae4:	4a45      	ldr	r2, [pc, #276]	; (1bfc <rtc_init+0x13c>)
    1ae6:	4b45      	ldr	r3, [pc, #276]	; (1bfc <rtc_init+0x13c>)
    1ae8:	681b      	ldr	r3, [r3, #0]
    1aea:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1aee:	6013      	str	r3, [r2, #0]
    1af0:	4a41      	ldr	r2, [pc, #260]	; (1bf8 <rtc_init+0x138>)
    1af2:	4b41      	ldr	r3, [pc, #260]	; (1bf8 <rtc_init+0x138>)
    1af4:	6a1b      	ldr	r3, [r3, #32]
    1af6:	f043 0301 	orr.w	r3, r3, #1
    1afa:	6213      	str	r3, [r2, #32]
    1afc:	bf00      	nop
    1afe:	4b3e      	ldr	r3, [pc, #248]	; (1bf8 <rtc_init+0x138>)
    1b00:	6a1b      	ldr	r3, [r3, #32]
    1b02:	f003 0302 	and.w	r3, r3, #2
    1b06:	2b00      	cmp	r3, #0
    1b08:	d0f9      	beq.n	1afe <rtc_init+0x3e>
    1b0a:	4a3b      	ldr	r2, [pc, #236]	; (1bf8 <rtc_init+0x138>)
    1b0c:	4b3a      	ldr	r3, [pc, #232]	; (1bf8 <rtc_init+0x138>)
    1b0e:	6a1b      	ldr	r3, [r3, #32]
    1b10:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1b14:	6213      	str	r3, [r2, #32]
    1b16:	bf00      	nop
    1b18:	4b39      	ldr	r3, [pc, #228]	; (1c00 <rtc_init+0x140>)
    1b1a:	685b      	ldr	r3, [r3, #4]
    1b1c:	f003 0308 	and.w	r3, r3, #8
    1b20:	2b00      	cmp	r3, #0
    1b22:	d0f9      	beq.n	1b18 <rtc_init+0x58>
    1b24:	bf00      	nop
    1b26:	4b36      	ldr	r3, [pc, #216]	; (1c00 <rtc_init+0x140>)
    1b28:	685b      	ldr	r3, [r3, #4]
    1b2a:	f003 0320 	and.w	r3, r3, #32
    1b2e:	2b00      	cmp	r3, #0
    1b30:	d0f9      	beq.n	1b26 <rtc_init+0x66>
    1b32:	4a33      	ldr	r2, [pc, #204]	; (1c00 <rtc_init+0x140>)
    1b34:	4b32      	ldr	r3, [pc, #200]	; (1c00 <rtc_init+0x140>)
    1b36:	685b      	ldr	r3, [r3, #4]
    1b38:	f043 0310 	orr.w	r3, r3, #16
    1b3c:	6053      	str	r3, [r2, #4]
    1b3e:	bf00      	nop
    1b40:	4b2f      	ldr	r3, [pc, #188]	; (1c00 <rtc_init+0x140>)
    1b42:	685b      	ldr	r3, [r3, #4]
    1b44:	f003 0320 	and.w	r3, r3, #32
    1b48:	2b00      	cmp	r3, #0
    1b4a:	d0f9      	beq.n	1b40 <rtc_init+0x80>
    1b4c:	492c      	ldr	r1, [pc, #176]	; (1c00 <rtc_init+0x140>)
    1b4e:	4b2c      	ldr	r3, [pc, #176]	; (1c00 <rtc_init+0x140>)
    1b50:	681a      	ldr	r2, [r3, #0]
    1b52:	683b      	ldr	r3, [r7, #0]
    1b54:	4313      	orrs	r3, r2
    1b56:	600b      	str	r3, [r1, #0]
    1b58:	bf00      	nop
    1b5a:	4b29      	ldr	r3, [pc, #164]	; (1c00 <rtc_init+0x140>)
    1b5c:	685b      	ldr	r3, [r3, #4]
    1b5e:	f003 0320 	and.w	r3, r3, #32
    1b62:	2b00      	cmp	r3, #0
    1b64:	d0f9      	beq.n	1b5a <rtc_init+0x9a>
    1b66:	4a26      	ldr	r2, [pc, #152]	; (1c00 <rtc_init+0x140>)
    1b68:	687b      	ldr	r3, [r7, #4]
    1b6a:	03db      	lsls	r3, r3, #15
    1b6c:	4925      	ldr	r1, [pc, #148]	; (1c04 <rtc_init+0x144>)
    1b6e:	fba1 1303 	umull	r1, r3, r1, r3
    1b72:	099b      	lsrs	r3, r3, #6
    1b74:	3b01      	subs	r3, #1
    1b76:	b29b      	uxth	r3, r3
    1b78:	60d3      	str	r3, [r2, #12]
    1b7a:	bf00      	nop
    1b7c:	4b20      	ldr	r3, [pc, #128]	; (1c00 <rtc_init+0x140>)
    1b7e:	685b      	ldr	r3, [r3, #4]
    1b80:	f003 0320 	and.w	r3, r3, #32
    1b84:	2b00      	cmp	r3, #0
    1b86:	d0f9      	beq.n	1b7c <rtc_init+0xbc>
    1b88:	4a1d      	ldr	r2, [pc, #116]	; (1c00 <rtc_init+0x140>)
    1b8a:	687b      	ldr	r3, [r7, #4]
    1b8c:	03db      	lsls	r3, r3, #15
    1b8e:	491d      	ldr	r1, [pc, #116]	; (1c04 <rtc_init+0x144>)
    1b90:	fba1 1303 	umull	r1, r3, r1, r3
    1b94:	099b      	lsrs	r3, r3, #6
    1b96:	3b01      	subs	r3, #1
    1b98:	0c1b      	lsrs	r3, r3, #16
    1b9a:	f003 030f 	and.w	r3, r3, #15
    1b9e:	6093      	str	r3, [r2, #8]
    1ba0:	bf00      	nop
    1ba2:	4b17      	ldr	r3, [pc, #92]	; (1c00 <rtc_init+0x140>)
    1ba4:	685b      	ldr	r3, [r3, #4]
    1ba6:	f003 0320 	and.w	r3, r3, #32
    1baa:	2b00      	cmp	r3, #0
    1bac:	d0f9      	beq.n	1ba2 <rtc_init+0xe2>
    1bae:	4b11      	ldr	r3, [pc, #68]	; (1bf4 <rtc_init+0x134>)
    1bb0:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1bb4:	605a      	str	r2, [r3, #4]
    1bb6:	4a12      	ldr	r2, [pc, #72]	; (1c00 <rtc_init+0x140>)
    1bb8:	4b11      	ldr	r3, [pc, #68]	; (1c00 <rtc_init+0x140>)
    1bba:	685b      	ldr	r3, [r3, #4]
    1bbc:	f023 0310 	bic.w	r3, r3, #16
    1bc0:	6053      	str	r3, [r2, #4]
    1bc2:	bf00      	nop
    1bc4:	4b0e      	ldr	r3, [pc, #56]	; (1c00 <rtc_init+0x140>)
    1bc6:	685b      	ldr	r3, [r3, #4]
    1bc8:	f003 0320 	and.w	r3, r3, #32
    1bcc:	2b00      	cmp	r3, #0
    1bce:	d0f9      	beq.n	1bc4 <rtc_init+0x104>
    1bd0:	4a0a      	ldr	r2, [pc, #40]	; (1bfc <rtc_init+0x13c>)
    1bd2:	4b0a      	ldr	r3, [pc, #40]	; (1bfc <rtc_init+0x13c>)
    1bd4:	681b      	ldr	r3, [r3, #0]
    1bd6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1bda:	6013      	str	r3, [r2, #0]
    1bdc:	210f      	movs	r1, #15
    1bde:	2003      	movs	r0, #3
    1be0:	f7ff fd4a 	bl	1678 <set_int_priority>
    1be4:	2003      	movs	r0, #3
    1be6:	f7ff fc8d 	bl	1504 <enable_interrupt>
    1bea:	bf00      	nop
    1bec:	3708      	adds	r7, #8
    1bee:	46bd      	mov	sp, r7
    1bf0:	bd80      	pop	{r7, pc}
    1bf2:	bf00      	nop
    1bf4:	40006c00 	.word	0x40006c00
    1bf8:	40021000 	.word	0x40021000
    1bfc:	40007000 	.word	0x40007000
    1c00:	40002800 	.word	0x40002800
    1c04:	10624dd3 	.word	0x10624dd3

00001c08 <reset_backup_domain>:
    1c08:	b480      	push	{r7}
    1c0a:	af00      	add	r7, sp, #0
    1c0c:	4a0a      	ldr	r2, [pc, #40]	; (1c38 <reset_backup_domain+0x30>)
    1c0e:	4b0a      	ldr	r3, [pc, #40]	; (1c38 <reset_backup_domain+0x30>)
    1c10:	69db      	ldr	r3, [r3, #28]
    1c12:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1c16:	61d3      	str	r3, [r2, #28]
    1c18:	4a07      	ldr	r2, [pc, #28]	; (1c38 <reset_backup_domain+0x30>)
    1c1a:	4b07      	ldr	r3, [pc, #28]	; (1c38 <reset_backup_domain+0x30>)
    1c1c:	6a1b      	ldr	r3, [r3, #32]
    1c1e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1c22:	6213      	str	r3, [r2, #32]
    1c24:	4a04      	ldr	r2, [pc, #16]	; (1c38 <reset_backup_domain+0x30>)
    1c26:	4b04      	ldr	r3, [pc, #16]	; (1c38 <reset_backup_domain+0x30>)
    1c28:	6a1b      	ldr	r3, [r3, #32]
    1c2a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1c2e:	6213      	str	r3, [r2, #32]
    1c30:	bf00      	nop
    1c32:	46bd      	mov	sp, r7
    1c34:	bc80      	pop	{r7}
    1c36:	4770      	bx	lr
    1c38:	40021000 	.word	0x40021000

00001c3c <rtc_clock_trim>:
    1c3c:	b480      	push	{r7}
    1c3e:	b083      	sub	sp, #12
    1c40:	af00      	add	r7, sp, #0
    1c42:	6078      	str	r0, [r7, #4]
    1c44:	4a34      	ldr	r2, [pc, #208]	; (1d18 <rtc_clock_trim+0xdc>)
    1c46:	4b34      	ldr	r3, [pc, #208]	; (1d18 <rtc_clock_trim+0xdc>)
    1c48:	69db      	ldr	r3, [r3, #28]
    1c4a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1c4e:	61d3      	str	r3, [r2, #28]
    1c50:	bf00      	nop
    1c52:	4b32      	ldr	r3, [pc, #200]	; (1d1c <rtc_clock_trim+0xe0>)
    1c54:	685b      	ldr	r3, [r3, #4]
    1c56:	f003 0308 	and.w	r3, r3, #8
    1c5a:	2b00      	cmp	r3, #0
    1c5c:	d0f9      	beq.n	1c52 <rtc_clock_trim+0x16>
    1c5e:	4a30      	ldr	r2, [pc, #192]	; (1d20 <rtc_clock_trim+0xe4>)
    1c60:	4b2f      	ldr	r3, [pc, #188]	; (1d20 <rtc_clock_trim+0xe4>)
    1c62:	681b      	ldr	r3, [r3, #0]
    1c64:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1c68:	6013      	str	r3, [r2, #0]
    1c6a:	4a2c      	ldr	r2, [pc, #176]	; (1d1c <rtc_clock_trim+0xe0>)
    1c6c:	4b2b      	ldr	r3, [pc, #172]	; (1d1c <rtc_clock_trim+0xe0>)
    1c6e:	685b      	ldr	r3, [r3, #4]
    1c70:	f043 0310 	orr.w	r3, r3, #16
    1c74:	6053      	str	r3, [r2, #4]
    1c76:	4a2b      	ldr	r2, [pc, #172]	; (1d24 <rtc_clock_trim+0xe8>)
    1c78:	4b2a      	ldr	r3, [pc, #168]	; (1d24 <rtc_clock_trim+0xe8>)
    1c7a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1c7c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1c80:	62d3      	str	r3, [r2, #44]	; 0x2c
    1c82:	687b      	ldr	r3, [r7, #4]
    1c84:	2b00      	cmp	r3, #0
    1c86:	d10a      	bne.n	1c9e <rtc_clock_trim+0x62>
    1c88:	4b26      	ldr	r3, [pc, #152]	; (1d24 <rtc_clock_trim+0xe8>)
    1c8a:	2200      	movs	r2, #0
    1c8c:	62da      	str	r2, [r3, #44]	; 0x2c
    1c8e:	4b23      	ldr	r3, [pc, #140]	; (1d1c <rtc_clock_trim+0xe0>)
    1c90:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1c94:	60da      	str	r2, [r3, #12]
    1c96:	4b21      	ldr	r3, [pc, #132]	; (1d1c <rtc_clock_trim+0xe0>)
    1c98:	2200      	movs	r2, #0
    1c9a:	609a      	str	r2, [r3, #8]
    1c9c:	e023      	b.n	1ce6 <rtc_clock_trim+0xaa>
    1c9e:	687b      	ldr	r3, [r7, #4]
    1ca0:	2b00      	cmp	r3, #0
    1ca2:	dd0a      	ble.n	1cba <rtc_clock_trim+0x7e>
    1ca4:	687b      	ldr	r3, [r7, #4]
    1ca6:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1caa:	607b      	str	r3, [r7, #4]
    1cac:	491d      	ldr	r1, [pc, #116]	; (1d24 <rtc_clock_trim+0xe8>)
    1cae:	4b1d      	ldr	r3, [pc, #116]	; (1d24 <rtc_clock_trim+0xe8>)
    1cb0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1cb2:	687b      	ldr	r3, [r7, #4]
    1cb4:	4313      	orrs	r3, r2
    1cb6:	62cb      	str	r3, [r1, #44]	; 0x2c
    1cb8:	e015      	b.n	1ce6 <rtc_clock_trim+0xaa>
    1cba:	687b      	ldr	r3, [r7, #4]
    1cbc:	425b      	negs	r3, r3
    1cbe:	607b      	str	r3, [r7, #4]
    1cc0:	687b      	ldr	r3, [r7, #4]
    1cc2:	2b7f      	cmp	r3, #127	; 0x7f
    1cc4:	dd01      	ble.n	1cca <rtc_clock_trim+0x8e>
    1cc6:	237f      	movs	r3, #127	; 0x7f
    1cc8:	607b      	str	r3, [r7, #4]
    1cca:	4b16      	ldr	r3, [pc, #88]	; (1d24 <rtc_clock_trim+0xe8>)
    1ccc:	2200      	movs	r2, #0
    1cce:	62da      	str	r2, [r3, #44]	; 0x2c
    1cd0:	4a12      	ldr	r2, [pc, #72]	; (1d1c <rtc_clock_trim+0xe0>)
    1cd2:	687b      	ldr	r3, [r7, #4]
    1cd4:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1cd8:	33ff      	adds	r3, #255	; 0xff
    1cda:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1cde:	60d3      	str	r3, [r2, #12]
    1ce0:	4b0e      	ldr	r3, [pc, #56]	; (1d1c <rtc_clock_trim+0xe0>)
    1ce2:	2200      	movs	r2, #0
    1ce4:	609a      	str	r2, [r3, #8]
    1ce6:	4a0d      	ldr	r2, [pc, #52]	; (1d1c <rtc_clock_trim+0xe0>)
    1ce8:	4b0c      	ldr	r3, [pc, #48]	; (1d1c <rtc_clock_trim+0xe0>)
    1cea:	685b      	ldr	r3, [r3, #4]
    1cec:	f023 0310 	bic.w	r3, r3, #16
    1cf0:	6053      	str	r3, [r2, #4]
    1cf2:	bf00      	nop
    1cf4:	4b09      	ldr	r3, [pc, #36]	; (1d1c <rtc_clock_trim+0xe0>)
    1cf6:	685b      	ldr	r3, [r3, #4]
    1cf8:	f003 0320 	and.w	r3, r3, #32
    1cfc:	2b00      	cmp	r3, #0
    1cfe:	d0f9      	beq.n	1cf4 <rtc_clock_trim+0xb8>
    1d00:	4a07      	ldr	r2, [pc, #28]	; (1d20 <rtc_clock_trim+0xe4>)
    1d02:	4b07      	ldr	r3, [pc, #28]	; (1d20 <rtc_clock_trim+0xe4>)
    1d04:	681b      	ldr	r3, [r3, #0]
    1d06:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1d0a:	6013      	str	r3, [r2, #0]
    1d0c:	bf00      	nop
    1d0e:	370c      	adds	r7, #12
    1d10:	46bd      	mov	sp, r7
    1d12:	bc80      	pop	{r7}
    1d14:	4770      	bx	lr
    1d16:	bf00      	nop
    1d18:	40021000 	.word	0x40021000
    1d1c:	40002800 	.word	0x40002800
    1d20:	40007000 	.word	0x40007000
    1d24:	40006c00 	.word	0x40006c00

00001d28 <rtc_set_alarm>:
    1d28:	b480      	push	{r7}
    1d2a:	b083      	sub	sp, #12
    1d2c:	af00      	add	r7, sp, #0
    1d2e:	6078      	str	r0, [r7, #4]
    1d30:	bf00      	nop
    1d32:	370c      	adds	r7, #12
    1d34:	46bd      	mov	sp, r7
    1d36:	bc80      	pop	{r7}
    1d38:	4770      	bx	lr

00001d3a <str_to_date>:
    1d3a:	b580      	push	{r7, lr}
    1d3c:	b084      	sub	sp, #16
    1d3e:	af00      	add	r7, sp, #0
    1d40:	6078      	str	r0, [r7, #4]
    1d42:	6039      	str	r1, [r7, #0]
    1d44:	2300      	movs	r3, #0
    1d46:	60fb      	str	r3, [r7, #12]
    1d48:	2300      	movs	r3, #0
    1d4a:	60bb      	str	r3, [r7, #8]
    1d4c:	e00f      	b.n	1d6e <str_to_date+0x34>
    1d4e:	68ba      	ldr	r2, [r7, #8]
    1d50:	4613      	mov	r3, r2
    1d52:	009b      	lsls	r3, r3, #2
    1d54:	4413      	add	r3, r2
    1d56:	005b      	lsls	r3, r3, #1
    1d58:	4619      	mov	r1, r3
    1d5a:	68fb      	ldr	r3, [r7, #12]
    1d5c:	1c5a      	adds	r2, r3, #1
    1d5e:	60fa      	str	r2, [r7, #12]
    1d60:	461a      	mov	r2, r3
    1d62:	687b      	ldr	r3, [r7, #4]
    1d64:	4413      	add	r3, r2
    1d66:	781b      	ldrb	r3, [r3, #0]
    1d68:	440b      	add	r3, r1
    1d6a:	3b30      	subs	r3, #48	; 0x30
    1d6c:	60bb      	str	r3, [r7, #8]
    1d6e:	68fb      	ldr	r3, [r7, #12]
    1d70:	687a      	ldr	r2, [r7, #4]
    1d72:	4413      	add	r3, r2
    1d74:	781b      	ldrb	r3, [r3, #0]
    1d76:	4618      	mov	r0, r3
    1d78:	f7fe fd33 	bl	7e2 <digit>
    1d7c:	4603      	mov	r3, r0
    1d7e:	2b00      	cmp	r3, #0
    1d80:	d1e5      	bne.n	1d4e <str_to_date+0x14>
    1d82:	68fb      	ldr	r3, [r7, #12]
    1d84:	2b03      	cmp	r3, #3
    1d86:	dd05      	ble.n	1d94 <str_to_date+0x5a>
    1d88:	68fb      	ldr	r3, [r7, #12]
    1d8a:	687a      	ldr	r2, [r7, #4]
    1d8c:	4413      	add	r3, r2
    1d8e:	781b      	ldrb	r3, [r3, #0]
    1d90:	2b2f      	cmp	r3, #47	; 0x2f
    1d92:	d001      	beq.n	1d98 <str_to_date+0x5e>
    1d94:	2300      	movs	r3, #0
    1d96:	e068      	b.n	1e6a <str_to_date+0x130>
    1d98:	68bb      	ldr	r3, [r7, #8]
    1d9a:	b29a      	uxth	r2, r3
    1d9c:	683b      	ldr	r3, [r7, #0]
    1d9e:	811a      	strh	r2, [r3, #8]
    1da0:	68fb      	ldr	r3, [r7, #12]
    1da2:	3301      	adds	r3, #1
    1da4:	60fb      	str	r3, [r7, #12]
    1da6:	2300      	movs	r3, #0
    1da8:	60bb      	str	r3, [r7, #8]
    1daa:	e00f      	b.n	1dcc <str_to_date+0x92>
    1dac:	68ba      	ldr	r2, [r7, #8]
    1dae:	4613      	mov	r3, r2
    1db0:	009b      	lsls	r3, r3, #2
    1db2:	4413      	add	r3, r2
    1db4:	005b      	lsls	r3, r3, #1
    1db6:	4619      	mov	r1, r3
    1db8:	68fb      	ldr	r3, [r7, #12]
    1dba:	1c5a      	adds	r2, r3, #1
    1dbc:	60fa      	str	r2, [r7, #12]
    1dbe:	461a      	mov	r2, r3
    1dc0:	687b      	ldr	r3, [r7, #4]
    1dc2:	4413      	add	r3, r2
    1dc4:	781b      	ldrb	r3, [r3, #0]
    1dc6:	440b      	add	r3, r1
    1dc8:	3b30      	subs	r3, #48	; 0x30
    1dca:	60bb      	str	r3, [r7, #8]
    1dcc:	68fb      	ldr	r3, [r7, #12]
    1dce:	687a      	ldr	r2, [r7, #4]
    1dd0:	4413      	add	r3, r2
    1dd2:	781b      	ldrb	r3, [r3, #0]
    1dd4:	4618      	mov	r0, r3
    1dd6:	f7fe fd04 	bl	7e2 <digit>
    1dda:	4603      	mov	r3, r0
    1ddc:	2b00      	cmp	r3, #0
    1dde:	d1e5      	bne.n	1dac <str_to_date+0x72>
    1de0:	68fb      	ldr	r3, [r7, #12]
    1de2:	2b06      	cmp	r3, #6
    1de4:	dd05      	ble.n	1df2 <str_to_date+0xb8>
    1de6:	68fb      	ldr	r3, [r7, #12]
    1de8:	687a      	ldr	r2, [r7, #4]
    1dea:	4413      	add	r3, r2
    1dec:	781b      	ldrb	r3, [r3, #0]
    1dee:	2b2f      	cmp	r3, #47	; 0x2f
    1df0:	d001      	beq.n	1df6 <str_to_date+0xbc>
    1df2:	2300      	movs	r3, #0
    1df4:	e039      	b.n	1e6a <str_to_date+0x130>
    1df6:	68bb      	ldr	r3, [r7, #8]
    1df8:	b2db      	uxtb	r3, r3
    1dfa:	f003 030f 	and.w	r3, r3, #15
    1dfe:	b2d9      	uxtb	r1, r3
    1e00:	683a      	ldr	r2, [r7, #0]
    1e02:	8853      	ldrh	r3, [r2, #2]
    1e04:	f361 1389 	bfi	r3, r1, #6, #4
    1e08:	8053      	strh	r3, [r2, #2]
    1e0a:	2300      	movs	r3, #0
    1e0c:	60bb      	str	r3, [r7, #8]
    1e0e:	68fb      	ldr	r3, [r7, #12]
    1e10:	3301      	adds	r3, #1
    1e12:	60fb      	str	r3, [r7, #12]
    1e14:	e00f      	b.n	1e36 <str_to_date+0xfc>
    1e16:	68ba      	ldr	r2, [r7, #8]
    1e18:	4613      	mov	r3, r2
    1e1a:	009b      	lsls	r3, r3, #2
    1e1c:	4413      	add	r3, r2
    1e1e:	005b      	lsls	r3, r3, #1
    1e20:	4619      	mov	r1, r3
    1e22:	68fb      	ldr	r3, [r7, #12]
    1e24:	1c5a      	adds	r2, r3, #1
    1e26:	60fa      	str	r2, [r7, #12]
    1e28:	461a      	mov	r2, r3
    1e2a:	687b      	ldr	r3, [r7, #4]
    1e2c:	4413      	add	r3, r2
    1e2e:	781b      	ldrb	r3, [r3, #0]
    1e30:	440b      	add	r3, r1
    1e32:	3b30      	subs	r3, #48	; 0x30
    1e34:	60bb      	str	r3, [r7, #8]
    1e36:	68fb      	ldr	r3, [r7, #12]
    1e38:	687a      	ldr	r2, [r7, #4]
    1e3a:	4413      	add	r3, r2
    1e3c:	781b      	ldrb	r3, [r3, #0]
    1e3e:	4618      	mov	r0, r3
    1e40:	f7fe fccf 	bl	7e2 <digit>
    1e44:	4603      	mov	r3, r0
    1e46:	2b00      	cmp	r3, #0
    1e48:	d1e5      	bne.n	1e16 <str_to_date+0xdc>
    1e4a:	68fb      	ldr	r3, [r7, #12]
    1e4c:	2b09      	cmp	r3, #9
    1e4e:	dc01      	bgt.n	1e54 <str_to_date+0x11a>
    1e50:	2300      	movs	r3, #0
    1e52:	e00a      	b.n	1e6a <str_to_date+0x130>
    1e54:	68bb      	ldr	r3, [r7, #8]
    1e56:	b2db      	uxtb	r3, r3
    1e58:	f003 031f 	and.w	r3, r3, #31
    1e5c:	b2d9      	uxtb	r1, r3
    1e5e:	683a      	ldr	r2, [r7, #0]
    1e60:	7893      	ldrb	r3, [r2, #2]
    1e62:	f361 0345 	bfi	r3, r1, #1, #5
    1e66:	7093      	strb	r3, [r2, #2]
    1e68:	2301      	movs	r3, #1
    1e6a:	4618      	mov	r0, r3
    1e6c:	3710      	adds	r7, #16
    1e6e:	46bd      	mov	sp, r7
    1e70:	bd80      	pop	{r7, pc}

00001e72 <str_to_time>:
    1e72:	b580      	push	{r7, lr}
    1e74:	b084      	sub	sp, #16
    1e76:	af00      	add	r7, sp, #0
    1e78:	6078      	str	r0, [r7, #4]
    1e7a:	6039      	str	r1, [r7, #0]
    1e7c:	2300      	movs	r3, #0
    1e7e:	60fb      	str	r3, [r7, #12]
    1e80:	2300      	movs	r3, #0
    1e82:	72fb      	strb	r3, [r7, #11]
    1e84:	e010      	b.n	1ea8 <str_to_time+0x36>
    1e86:	7afb      	ldrb	r3, [r7, #11]
    1e88:	461a      	mov	r2, r3
    1e8a:	0092      	lsls	r2, r2, #2
    1e8c:	4413      	add	r3, r2
    1e8e:	005b      	lsls	r3, r3, #1
    1e90:	b2da      	uxtb	r2, r3
    1e92:	68fb      	ldr	r3, [r7, #12]
    1e94:	1c59      	adds	r1, r3, #1
    1e96:	60f9      	str	r1, [r7, #12]
    1e98:	4619      	mov	r1, r3
    1e9a:	687b      	ldr	r3, [r7, #4]
    1e9c:	440b      	add	r3, r1
    1e9e:	781b      	ldrb	r3, [r3, #0]
    1ea0:	4413      	add	r3, r2
    1ea2:	b2db      	uxtb	r3, r3
    1ea4:	3b30      	subs	r3, #48	; 0x30
    1ea6:	72fb      	strb	r3, [r7, #11]
    1ea8:	68fb      	ldr	r3, [r7, #12]
    1eaa:	687a      	ldr	r2, [r7, #4]
    1eac:	4413      	add	r3, r2
    1eae:	781b      	ldrb	r3, [r3, #0]
    1eb0:	4618      	mov	r0, r3
    1eb2:	f7fe fc96 	bl	7e2 <digit>
    1eb6:	4603      	mov	r3, r0
    1eb8:	2b00      	cmp	r3, #0
    1eba:	d1e4      	bne.n	1e86 <str_to_time+0x14>
    1ebc:	7afb      	ldrb	r3, [r7, #11]
    1ebe:	2b17      	cmp	r3, #23
    1ec0:	d805      	bhi.n	1ece <str_to_time+0x5c>
    1ec2:	68fb      	ldr	r3, [r7, #12]
    1ec4:	687a      	ldr	r2, [r7, #4]
    1ec6:	4413      	add	r3, r2
    1ec8:	781b      	ldrb	r3, [r3, #0]
    1eca:	2b3a      	cmp	r3, #58	; 0x3a
    1ecc:	d001      	beq.n	1ed2 <str_to_time+0x60>
    1ece:	2300      	movs	r3, #0
    1ed0:	e06d      	b.n	1fae <str_to_time+0x13c>
    1ed2:	7afb      	ldrb	r3, [r7, #11]
    1ed4:	f003 031f 	and.w	r3, r3, #31
    1ed8:	b2d9      	uxtb	r1, r3
    1eda:	683a      	ldr	r2, [r7, #0]
    1edc:	6813      	ldr	r3, [r2, #0]
    1ede:	f361 3310 	bfi	r3, r1, #12, #5
    1ee2:	6013      	str	r3, [r2, #0]
    1ee4:	68fb      	ldr	r3, [r7, #12]
    1ee6:	3301      	adds	r3, #1
    1ee8:	60fb      	str	r3, [r7, #12]
    1eea:	2300      	movs	r3, #0
    1eec:	72fb      	strb	r3, [r7, #11]
    1eee:	e010      	b.n	1f12 <str_to_time+0xa0>
    1ef0:	7afb      	ldrb	r3, [r7, #11]
    1ef2:	461a      	mov	r2, r3
    1ef4:	0092      	lsls	r2, r2, #2
    1ef6:	4413      	add	r3, r2
    1ef8:	005b      	lsls	r3, r3, #1
    1efa:	b2da      	uxtb	r2, r3
    1efc:	68fb      	ldr	r3, [r7, #12]
    1efe:	1c59      	adds	r1, r3, #1
    1f00:	60f9      	str	r1, [r7, #12]
    1f02:	4619      	mov	r1, r3
    1f04:	687b      	ldr	r3, [r7, #4]
    1f06:	440b      	add	r3, r1
    1f08:	781b      	ldrb	r3, [r3, #0]
    1f0a:	4413      	add	r3, r2
    1f0c:	b2db      	uxtb	r3, r3
    1f0e:	3b30      	subs	r3, #48	; 0x30
    1f10:	72fb      	strb	r3, [r7, #11]
    1f12:	68fb      	ldr	r3, [r7, #12]
    1f14:	687a      	ldr	r2, [r7, #4]
    1f16:	4413      	add	r3, r2
    1f18:	781b      	ldrb	r3, [r3, #0]
    1f1a:	4618      	mov	r0, r3
    1f1c:	f7fe fc61 	bl	7e2 <digit>
    1f20:	4603      	mov	r3, r0
    1f22:	2b00      	cmp	r3, #0
    1f24:	d1e4      	bne.n	1ef0 <str_to_time+0x7e>
    1f26:	7afb      	ldrb	r3, [r7, #11]
    1f28:	2b3b      	cmp	r3, #59	; 0x3b
    1f2a:	d805      	bhi.n	1f38 <str_to_time+0xc6>
    1f2c:	68fb      	ldr	r3, [r7, #12]
    1f2e:	687a      	ldr	r2, [r7, #4]
    1f30:	4413      	add	r3, r2
    1f32:	781b      	ldrb	r3, [r3, #0]
    1f34:	2b3a      	cmp	r3, #58	; 0x3a
    1f36:	d001      	beq.n	1f3c <str_to_time+0xca>
    1f38:	2300      	movs	r3, #0
    1f3a:	e038      	b.n	1fae <str_to_time+0x13c>
    1f3c:	7afb      	ldrb	r3, [r7, #11]
    1f3e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1f42:	b2d9      	uxtb	r1, r3
    1f44:	683a      	ldr	r2, [r7, #0]
    1f46:	8813      	ldrh	r3, [r2, #0]
    1f48:	f361 138b 	bfi	r3, r1, #6, #6
    1f4c:	8013      	strh	r3, [r2, #0]
    1f4e:	2300      	movs	r3, #0
    1f50:	72fb      	strb	r3, [r7, #11]
    1f52:	68fb      	ldr	r3, [r7, #12]
    1f54:	3301      	adds	r3, #1
    1f56:	60fb      	str	r3, [r7, #12]
    1f58:	e010      	b.n	1f7c <str_to_time+0x10a>
    1f5a:	7afb      	ldrb	r3, [r7, #11]
    1f5c:	461a      	mov	r2, r3
    1f5e:	0092      	lsls	r2, r2, #2
    1f60:	4413      	add	r3, r2
    1f62:	005b      	lsls	r3, r3, #1
    1f64:	b2da      	uxtb	r2, r3
    1f66:	68fb      	ldr	r3, [r7, #12]
    1f68:	1c59      	adds	r1, r3, #1
    1f6a:	60f9      	str	r1, [r7, #12]
    1f6c:	4619      	mov	r1, r3
    1f6e:	687b      	ldr	r3, [r7, #4]
    1f70:	440b      	add	r3, r1
    1f72:	781b      	ldrb	r3, [r3, #0]
    1f74:	4413      	add	r3, r2
    1f76:	b2db      	uxtb	r3, r3
    1f78:	3b30      	subs	r3, #48	; 0x30
    1f7a:	72fb      	strb	r3, [r7, #11]
    1f7c:	68fb      	ldr	r3, [r7, #12]
    1f7e:	687a      	ldr	r2, [r7, #4]
    1f80:	4413      	add	r3, r2
    1f82:	781b      	ldrb	r3, [r3, #0]
    1f84:	4618      	mov	r0, r3
    1f86:	f7fe fc2c 	bl	7e2 <digit>
    1f8a:	4603      	mov	r3, r0
    1f8c:	2b00      	cmp	r3, #0
    1f8e:	d1e4      	bne.n	1f5a <str_to_time+0xe8>
    1f90:	7afb      	ldrb	r3, [r7, #11]
    1f92:	2b3b      	cmp	r3, #59	; 0x3b
    1f94:	d901      	bls.n	1f9a <str_to_time+0x128>
    1f96:	2300      	movs	r3, #0
    1f98:	e009      	b.n	1fae <str_to_time+0x13c>
    1f9a:	7afb      	ldrb	r3, [r7, #11]
    1f9c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1fa0:	b2d9      	uxtb	r1, r3
    1fa2:	683a      	ldr	r2, [r7, #0]
    1fa4:	7813      	ldrb	r3, [r2, #0]
    1fa6:	f361 0305 	bfi	r3, r1, #0, #6
    1faa:	7013      	strb	r3, [r2, #0]
    1fac:	2301      	movs	r3, #1
    1fae:	4618      	mov	r0, r3
    1fb0:	3710      	adds	r7, #16
    1fb2:	46bd      	mov	sp, r7
    1fb4:	bd80      	pop	{r7, pc}

00001fb6 <date_str>:
    1fb6:	b480      	push	{r7}
    1fb8:	b085      	sub	sp, #20
    1fba:	af00      	add	r7, sp, #0
    1fbc:	6078      	str	r0, [r7, #4]
    1fbe:	6039      	str	r1, [r7, #0]
    1fc0:	2300      	movs	r3, #0
    1fc2:	60fb      	str	r3, [r7, #12]
    1fc4:	687b      	ldr	r3, [r7, #4]
    1fc6:	891b      	ldrh	r3, [r3, #8]
    1fc8:	60bb      	str	r3, [r7, #8]
    1fca:	68fb      	ldr	r3, [r7, #12]
    1fcc:	1c5a      	adds	r2, r3, #1
    1fce:	60fa      	str	r2, [r7, #12]
    1fd0:	461a      	mov	r2, r3
    1fd2:	683b      	ldr	r3, [r7, #0]
    1fd4:	4413      	add	r3, r2
    1fd6:	68ba      	ldr	r2, [r7, #8]
    1fd8:	495d      	ldr	r1, [pc, #372]	; (2150 <date_str+0x19a>)
    1fda:	fba1 1202 	umull	r1, r2, r1, r2
    1fde:	0992      	lsrs	r2, r2, #6
    1fe0:	b2d2      	uxtb	r2, r2
    1fe2:	3230      	adds	r2, #48	; 0x30
    1fe4:	b2d2      	uxtb	r2, r2
    1fe6:	701a      	strb	r2, [r3, #0]
    1fe8:	68bb      	ldr	r3, [r7, #8]
    1fea:	4a59      	ldr	r2, [pc, #356]	; (2150 <date_str+0x19a>)
    1fec:	fba2 1203 	umull	r1, r2, r2, r3
    1ff0:	0992      	lsrs	r2, r2, #6
    1ff2:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1ff6:	fb01 f202 	mul.w	r2, r1, r2
    1ffa:	1a9b      	subs	r3, r3, r2
    1ffc:	60bb      	str	r3, [r7, #8]
    1ffe:	68fb      	ldr	r3, [r7, #12]
    2000:	1c5a      	adds	r2, r3, #1
    2002:	60fa      	str	r2, [r7, #12]
    2004:	461a      	mov	r2, r3
    2006:	683b      	ldr	r3, [r7, #0]
    2008:	4413      	add	r3, r2
    200a:	68ba      	ldr	r2, [r7, #8]
    200c:	4951      	ldr	r1, [pc, #324]	; (2154 <date_str+0x19e>)
    200e:	fba1 1202 	umull	r1, r2, r1, r2
    2012:	0952      	lsrs	r2, r2, #5
    2014:	b2d2      	uxtb	r2, r2
    2016:	3230      	adds	r2, #48	; 0x30
    2018:	b2d2      	uxtb	r2, r2
    201a:	701a      	strb	r2, [r3, #0]
    201c:	68bb      	ldr	r3, [r7, #8]
    201e:	4a4d      	ldr	r2, [pc, #308]	; (2154 <date_str+0x19e>)
    2020:	fba2 1203 	umull	r1, r2, r2, r3
    2024:	0952      	lsrs	r2, r2, #5
    2026:	2164      	movs	r1, #100	; 0x64
    2028:	fb01 f202 	mul.w	r2, r1, r2
    202c:	1a9b      	subs	r3, r3, r2
    202e:	60bb      	str	r3, [r7, #8]
    2030:	68fb      	ldr	r3, [r7, #12]
    2032:	1c5a      	adds	r2, r3, #1
    2034:	60fa      	str	r2, [r7, #12]
    2036:	461a      	mov	r2, r3
    2038:	683b      	ldr	r3, [r7, #0]
    203a:	4413      	add	r3, r2
    203c:	68ba      	ldr	r2, [r7, #8]
    203e:	4946      	ldr	r1, [pc, #280]	; (2158 <date_str+0x1a2>)
    2040:	fba1 1202 	umull	r1, r2, r1, r2
    2044:	08d2      	lsrs	r2, r2, #3
    2046:	b2d2      	uxtb	r2, r2
    2048:	3230      	adds	r2, #48	; 0x30
    204a:	b2d2      	uxtb	r2, r2
    204c:	701a      	strb	r2, [r3, #0]
    204e:	68fb      	ldr	r3, [r7, #12]
    2050:	1c5a      	adds	r2, r3, #1
    2052:	60fa      	str	r2, [r7, #12]
    2054:	461a      	mov	r2, r3
    2056:	683b      	ldr	r3, [r7, #0]
    2058:	1898      	adds	r0, r3, r2
    205a:	68b9      	ldr	r1, [r7, #8]
    205c:	4b3e      	ldr	r3, [pc, #248]	; (2158 <date_str+0x1a2>)
    205e:	fba3 2301 	umull	r2, r3, r3, r1
    2062:	08da      	lsrs	r2, r3, #3
    2064:	4613      	mov	r3, r2
    2066:	009b      	lsls	r3, r3, #2
    2068:	4413      	add	r3, r2
    206a:	005b      	lsls	r3, r3, #1
    206c:	1aca      	subs	r2, r1, r3
    206e:	b2d3      	uxtb	r3, r2
    2070:	3330      	adds	r3, #48	; 0x30
    2072:	b2db      	uxtb	r3, r3
    2074:	7003      	strb	r3, [r0, #0]
    2076:	68fb      	ldr	r3, [r7, #12]
    2078:	1c5a      	adds	r2, r3, #1
    207a:	60fa      	str	r2, [r7, #12]
    207c:	461a      	mov	r2, r3
    207e:	683b      	ldr	r3, [r7, #0]
    2080:	4413      	add	r3, r2
    2082:	222f      	movs	r2, #47	; 0x2f
    2084:	701a      	strb	r2, [r3, #0]
    2086:	687b      	ldr	r3, [r7, #4]
    2088:	885b      	ldrh	r3, [r3, #2]
    208a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    208e:	b2db      	uxtb	r3, r3
    2090:	60bb      	str	r3, [r7, #8]
    2092:	68fb      	ldr	r3, [r7, #12]
    2094:	1c5a      	adds	r2, r3, #1
    2096:	60fa      	str	r2, [r7, #12]
    2098:	461a      	mov	r2, r3
    209a:	683b      	ldr	r3, [r7, #0]
    209c:	4413      	add	r3, r2
    209e:	68ba      	ldr	r2, [r7, #8]
    20a0:	492d      	ldr	r1, [pc, #180]	; (2158 <date_str+0x1a2>)
    20a2:	fba1 1202 	umull	r1, r2, r1, r2
    20a6:	08d2      	lsrs	r2, r2, #3
    20a8:	b2d2      	uxtb	r2, r2
    20aa:	3230      	adds	r2, #48	; 0x30
    20ac:	b2d2      	uxtb	r2, r2
    20ae:	701a      	strb	r2, [r3, #0]
    20b0:	68fb      	ldr	r3, [r7, #12]
    20b2:	1c5a      	adds	r2, r3, #1
    20b4:	60fa      	str	r2, [r7, #12]
    20b6:	461a      	mov	r2, r3
    20b8:	683b      	ldr	r3, [r7, #0]
    20ba:	1898      	adds	r0, r3, r2
    20bc:	68b9      	ldr	r1, [r7, #8]
    20be:	4b26      	ldr	r3, [pc, #152]	; (2158 <date_str+0x1a2>)
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
    20d8:	68fb      	ldr	r3, [r7, #12]
    20da:	1c5a      	adds	r2, r3, #1
    20dc:	60fa      	str	r2, [r7, #12]
    20de:	461a      	mov	r2, r3
    20e0:	683b      	ldr	r3, [r7, #0]
    20e2:	4413      	add	r3, r2
    20e4:	222f      	movs	r2, #47	; 0x2f
    20e6:	701a      	strb	r2, [r3, #0]
    20e8:	687b      	ldr	r3, [r7, #4]
    20ea:	789b      	ldrb	r3, [r3, #2]
    20ec:	f3c3 0344 	ubfx	r3, r3, #1, #5
    20f0:	b2db      	uxtb	r3, r3
    20f2:	60bb      	str	r3, [r7, #8]
    20f4:	68fb      	ldr	r3, [r7, #12]
    20f6:	1c5a      	adds	r2, r3, #1
    20f8:	60fa      	str	r2, [r7, #12]
    20fa:	461a      	mov	r2, r3
    20fc:	683b      	ldr	r3, [r7, #0]
    20fe:	4413      	add	r3, r2
    2100:	68ba      	ldr	r2, [r7, #8]
    2102:	4915      	ldr	r1, [pc, #84]	; (2158 <date_str+0x1a2>)
    2104:	fba1 1202 	umull	r1, r2, r1, r2
    2108:	08d2      	lsrs	r2, r2, #3
    210a:	b2d2      	uxtb	r2, r2
    210c:	3230      	adds	r2, #48	; 0x30
    210e:	b2d2      	uxtb	r2, r2
    2110:	701a      	strb	r2, [r3, #0]
    2112:	68fb      	ldr	r3, [r7, #12]
    2114:	1c5a      	adds	r2, r3, #1
    2116:	60fa      	str	r2, [r7, #12]
    2118:	461a      	mov	r2, r3
    211a:	683b      	ldr	r3, [r7, #0]
    211c:	1898      	adds	r0, r3, r2
    211e:	68b9      	ldr	r1, [r7, #8]
    2120:	4b0d      	ldr	r3, [pc, #52]	; (2158 <date_str+0x1a2>)
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
    213a:	68fb      	ldr	r3, [r7, #12]
    213c:	683a      	ldr	r2, [r7, #0]
    213e:	4413      	add	r3, r2
    2140:	2200      	movs	r2, #0
    2142:	701a      	strb	r2, [r3, #0]
    2144:	bf00      	nop
    2146:	3714      	adds	r7, #20
    2148:	46bd      	mov	sp, r7
    214a:	bc80      	pop	{r7}
    214c:	4770      	bx	lr
    214e:	bf00      	nop
    2150:	10624dd3 	.word	0x10624dd3
    2154:	51eb851f 	.word	0x51eb851f
    2158:	cccccccd 	.word	0xcccccccd

0000215c <time_str>:
    215c:	b480      	push	{r7}
    215e:	b085      	sub	sp, #20
    2160:	af00      	add	r7, sp, #0
    2162:	6078      	str	r0, [r7, #4]
    2164:	6039      	str	r1, [r7, #0]
    2166:	2300      	movs	r3, #0
    2168:	60fb      	str	r3, [r7, #12]
    216a:	687b      	ldr	r3, [r7, #4]
    216c:	681b      	ldr	r3, [r3, #0]
    216e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2172:	b2db      	uxtb	r3, r3
    2174:	60bb      	str	r3, [r7, #8]
    2176:	68fb      	ldr	r3, [r7, #12]
    2178:	1c5a      	adds	r2, r3, #1
    217a:	60fa      	str	r2, [r7, #12]
    217c:	461a      	mov	r2, r3
    217e:	683b      	ldr	r3, [r7, #0]
    2180:	4413      	add	r3, r2
    2182:	68ba      	ldr	r2, [r7, #8]
    2184:	4943      	ldr	r1, [pc, #268]	; (2294 <time_str+0x138>)
    2186:	fba1 1202 	umull	r1, r2, r1, r2
    218a:	08d2      	lsrs	r2, r2, #3
    218c:	b2d2      	uxtb	r2, r2
    218e:	3230      	adds	r2, #48	; 0x30
    2190:	b2d2      	uxtb	r2, r2
    2192:	701a      	strb	r2, [r3, #0]
    2194:	68fb      	ldr	r3, [r7, #12]
    2196:	1c5a      	adds	r2, r3, #1
    2198:	60fa      	str	r2, [r7, #12]
    219a:	461a      	mov	r2, r3
    219c:	683b      	ldr	r3, [r7, #0]
    219e:	1898      	adds	r0, r3, r2
    21a0:	68b9      	ldr	r1, [r7, #8]
    21a2:	4b3c      	ldr	r3, [pc, #240]	; (2294 <time_str+0x138>)
    21a4:	fba3 2301 	umull	r2, r3, r3, r1
    21a8:	08da      	lsrs	r2, r3, #3
    21aa:	4613      	mov	r3, r2
    21ac:	009b      	lsls	r3, r3, #2
    21ae:	4413      	add	r3, r2
    21b0:	005b      	lsls	r3, r3, #1
    21b2:	1aca      	subs	r2, r1, r3
    21b4:	b2d3      	uxtb	r3, r2
    21b6:	3330      	adds	r3, #48	; 0x30
    21b8:	b2db      	uxtb	r3, r3
    21ba:	7003      	strb	r3, [r0, #0]
    21bc:	68fb      	ldr	r3, [r7, #12]
    21be:	1c5a      	adds	r2, r3, #1
    21c0:	60fa      	str	r2, [r7, #12]
    21c2:	461a      	mov	r2, r3
    21c4:	683b      	ldr	r3, [r7, #0]
    21c6:	4413      	add	r3, r2
    21c8:	223a      	movs	r2, #58	; 0x3a
    21ca:	701a      	strb	r2, [r3, #0]
    21cc:	687b      	ldr	r3, [r7, #4]
    21ce:	881b      	ldrh	r3, [r3, #0]
    21d0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    21d4:	b2db      	uxtb	r3, r3
    21d6:	60bb      	str	r3, [r7, #8]
    21d8:	68fb      	ldr	r3, [r7, #12]
    21da:	1c5a      	adds	r2, r3, #1
    21dc:	60fa      	str	r2, [r7, #12]
    21de:	461a      	mov	r2, r3
    21e0:	683b      	ldr	r3, [r7, #0]
    21e2:	4413      	add	r3, r2
    21e4:	68ba      	ldr	r2, [r7, #8]
    21e6:	492b      	ldr	r1, [pc, #172]	; (2294 <time_str+0x138>)
    21e8:	fba1 1202 	umull	r1, r2, r1, r2
    21ec:	08d2      	lsrs	r2, r2, #3
    21ee:	b2d2      	uxtb	r2, r2
    21f0:	3230      	adds	r2, #48	; 0x30
    21f2:	b2d2      	uxtb	r2, r2
    21f4:	701a      	strb	r2, [r3, #0]
    21f6:	68fb      	ldr	r3, [r7, #12]
    21f8:	1c5a      	adds	r2, r3, #1
    21fa:	60fa      	str	r2, [r7, #12]
    21fc:	461a      	mov	r2, r3
    21fe:	683b      	ldr	r3, [r7, #0]
    2200:	1898      	adds	r0, r3, r2
    2202:	68b9      	ldr	r1, [r7, #8]
    2204:	4b23      	ldr	r3, [pc, #140]	; (2294 <time_str+0x138>)
    2206:	fba3 2301 	umull	r2, r3, r3, r1
    220a:	08da      	lsrs	r2, r3, #3
    220c:	4613      	mov	r3, r2
    220e:	009b      	lsls	r3, r3, #2
    2210:	4413      	add	r3, r2
    2212:	005b      	lsls	r3, r3, #1
    2214:	1aca      	subs	r2, r1, r3
    2216:	b2d3      	uxtb	r3, r2
    2218:	3330      	adds	r3, #48	; 0x30
    221a:	b2db      	uxtb	r3, r3
    221c:	7003      	strb	r3, [r0, #0]
    221e:	68fb      	ldr	r3, [r7, #12]
    2220:	1c5a      	adds	r2, r3, #1
    2222:	60fa      	str	r2, [r7, #12]
    2224:	461a      	mov	r2, r3
    2226:	683b      	ldr	r3, [r7, #0]
    2228:	4413      	add	r3, r2
    222a:	223a      	movs	r2, #58	; 0x3a
    222c:	701a      	strb	r2, [r3, #0]
    222e:	687b      	ldr	r3, [r7, #4]
    2230:	781b      	ldrb	r3, [r3, #0]
    2232:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2236:	b2db      	uxtb	r3, r3
    2238:	60bb      	str	r3, [r7, #8]
    223a:	68fb      	ldr	r3, [r7, #12]
    223c:	1c5a      	adds	r2, r3, #1
    223e:	60fa      	str	r2, [r7, #12]
    2240:	461a      	mov	r2, r3
    2242:	683b      	ldr	r3, [r7, #0]
    2244:	4413      	add	r3, r2
    2246:	68ba      	ldr	r2, [r7, #8]
    2248:	4912      	ldr	r1, [pc, #72]	; (2294 <time_str+0x138>)
    224a:	fba1 1202 	umull	r1, r2, r1, r2
    224e:	08d2      	lsrs	r2, r2, #3
    2250:	b2d2      	uxtb	r2, r2
    2252:	3230      	adds	r2, #48	; 0x30
    2254:	b2d2      	uxtb	r2, r2
    2256:	701a      	strb	r2, [r3, #0]
    2258:	68fb      	ldr	r3, [r7, #12]
    225a:	1c5a      	adds	r2, r3, #1
    225c:	60fa      	str	r2, [r7, #12]
    225e:	461a      	mov	r2, r3
    2260:	683b      	ldr	r3, [r7, #0]
    2262:	1898      	adds	r0, r3, r2
    2264:	68b9      	ldr	r1, [r7, #8]
    2266:	4b0b      	ldr	r3, [pc, #44]	; (2294 <time_str+0x138>)
    2268:	fba3 2301 	umull	r2, r3, r3, r1
    226c:	08da      	lsrs	r2, r3, #3
    226e:	4613      	mov	r3, r2
    2270:	009b      	lsls	r3, r3, #2
    2272:	4413      	add	r3, r2
    2274:	005b      	lsls	r3, r3, #1
    2276:	1aca      	subs	r2, r1, r3
    2278:	b2d3      	uxtb	r3, r2
    227a:	3330      	adds	r3, #48	; 0x30
    227c:	b2db      	uxtb	r3, r3
    227e:	7003      	strb	r3, [r0, #0]
    2280:	68fb      	ldr	r3, [r7, #12]
    2282:	683a      	ldr	r2, [r7, #0]
    2284:	4413      	add	r3, r2
    2286:	2200      	movs	r2, #0
    2288:	701a      	strb	r2, [r3, #0]
    228a:	bf00      	nop
    228c:	3714      	adds	r7, #20
    228e:	46bd      	mov	sp, r7
    2290:	bc80      	pop	{r7}
    2292:	4770      	bx	lr
    2294:	cccccccd 	.word	0xcccccccd

00002298 <get_fattime>:
    2298:	b580      	push	{r7, lr}
    229a:	b084      	sub	sp, #16
    229c:	af00      	add	r7, sp, #0
    229e:	463b      	mov	r3, r7
    22a0:	4618      	mov	r0, r3
    22a2:	f7ff fa69 	bl	1778 <get_date_time>
    22a6:	783b      	ldrb	r3, [r7, #0]
    22a8:	f3c3 0305 	ubfx	r3, r3, #0, #6
    22ac:	b2db      	uxtb	r3, r3
    22ae:	0fda      	lsrs	r2, r3, #31
    22b0:	4413      	add	r3, r2
    22b2:	105b      	asrs	r3, r3, #1
    22b4:	b2db      	uxtb	r3, r3
    22b6:	f003 031f 	and.w	r3, r3, #31
    22ba:	b2da      	uxtb	r2, r3
    22bc:	7b3b      	ldrb	r3, [r7, #12]
    22be:	f362 0304 	bfi	r3, r2, #0, #5
    22c2:	733b      	strb	r3, [r7, #12]
    22c4:	883b      	ldrh	r3, [r7, #0]
    22c6:	f3c3 1385 	ubfx	r3, r3, #6, #6
    22ca:	b2da      	uxtb	r2, r3
    22cc:	89bb      	ldrh	r3, [r7, #12]
    22ce:	f362 134a 	bfi	r3, r2, #5, #6
    22d2:	81bb      	strh	r3, [r7, #12]
    22d4:	683b      	ldr	r3, [r7, #0]
    22d6:	f3c3 3304 	ubfx	r3, r3, #12, #5
    22da:	b2da      	uxtb	r2, r3
    22dc:	7b7b      	ldrb	r3, [r7, #13]
    22de:	f362 03c7 	bfi	r3, r2, #3, #5
    22e2:	737b      	strb	r3, [r7, #13]
    22e4:	78bb      	ldrb	r3, [r7, #2]
    22e6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    22ea:	b2da      	uxtb	r2, r3
    22ec:	7bbb      	ldrb	r3, [r7, #14]
    22ee:	f362 0304 	bfi	r3, r2, #0, #5
    22f2:	73bb      	strb	r3, [r7, #14]
    22f4:	887b      	ldrh	r3, [r7, #2]
    22f6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    22fa:	b2da      	uxtb	r2, r3
    22fc:	89fb      	ldrh	r3, [r7, #14]
    22fe:	f362 1348 	bfi	r3, r2, #5, #4
    2302:	81fb      	strh	r3, [r7, #14]
    2304:	893b      	ldrh	r3, [r7, #8]
    2306:	b2db      	uxtb	r3, r3
    2308:	3344      	adds	r3, #68	; 0x44
    230a:	b2db      	uxtb	r3, r3
    230c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2310:	b2da      	uxtb	r2, r3
    2312:	7bfb      	ldrb	r3, [r7, #15]
    2314:	f362 0347 	bfi	r3, r2, #1, #7
    2318:	73fb      	strb	r3, [r7, #15]
    231a:	68fb      	ldr	r3, [r7, #12]
    231c:	4618      	mov	r0, r3
    231e:	3710      	adds	r7, #16
    2320:	46bd      	mov	sp, r7
    2322:	bd80      	pop	{r7, pc}

00002324 <RTC_handler>:
    2324:	b480      	push	{r7}
    2326:	b083      	sub	sp, #12
    2328:	af00      	add	r7, sp, #0
    232a:	4b0a      	ldr	r3, [pc, #40]	; (2354 <RTC_handler+0x30>)
    232c:	685b      	ldr	r3, [r3, #4]
    232e:	f003 0301 	and.w	r3, r3, #1
    2332:	2b00      	cmp	r3, #0
    2334:	d001      	beq.n	233a <RTC_handler+0x16>
    2336:	4b07      	ldr	r3, [pc, #28]	; (2354 <RTC_handler+0x30>)
    2338:	685b      	ldr	r3, [r3, #4]
    233a:	4b06      	ldr	r3, [pc, #24]	; (2354 <RTC_handler+0x30>)
    233c:	685b      	ldr	r3, [r3, #4]
    233e:	f003 0302 	and.w	r3, r3, #2
    2342:	2b00      	cmp	r3, #0
    2344:	d001      	beq.n	234a <RTC_handler+0x26>
    2346:	4b03      	ldr	r3, [pc, #12]	; (2354 <RTC_handler+0x30>)
    2348:	685b      	ldr	r3, [r3, #4]
    234a:	bf00      	nop
    234c:	370c      	adds	r7, #12
    234e:	46bd      	mov	sp, r7
    2350:	bc80      	pop	{r7}
    2352:	4770      	bx	lr
    2354:	40002800 	.word	0x40002800

00002358 <spi_baudrate>:
    2358:	b480      	push	{r7}
    235a:	b083      	sub	sp, #12
    235c:	af00      	add	r7, sp, #0
    235e:	6078      	str	r0, [r7, #4]
    2360:	6039      	str	r1, [r7, #0]
    2362:	687b      	ldr	r3, [r7, #4]
    2364:	681b      	ldr	r3, [r3, #0]
    2366:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    236a:	687b      	ldr	r3, [r7, #4]
    236c:	601a      	str	r2, [r3, #0]
    236e:	687b      	ldr	r3, [r7, #4]
    2370:	681a      	ldr	r2, [r3, #0]
    2372:	683b      	ldr	r3, [r7, #0]
    2374:	00db      	lsls	r3, r3, #3
    2376:	431a      	orrs	r2, r3
    2378:	687b      	ldr	r3, [r7, #4]
    237a:	601a      	str	r2, [r3, #0]
    237c:	bf00      	nop
    237e:	370c      	adds	r7, #12
    2380:	46bd      	mov	sp, r7
    2382:	bc80      	pop	{r7}
    2384:	4770      	bx	lr

00002386 <spi_config_port>:
    2386:	b580      	push	{r7, lr}
    2388:	b082      	sub	sp, #8
    238a:	af00      	add	r7, sp, #0
    238c:	6078      	str	r0, [r7, #4]
    238e:	6039      	str	r1, [r7, #0]
    2390:	4a33      	ldr	r2, [pc, #204]	; (2460 <spi_config_port+0xda>)
    2392:	4b33      	ldr	r3, [pc, #204]	; (2460 <spi_config_port+0xda>)
    2394:	699b      	ldr	r3, [r3, #24]
    2396:	f043 0301 	orr.w	r3, r3, #1
    239a:	6193      	str	r3, [r2, #24]
    239c:	687b      	ldr	r3, [r7, #4]
    239e:	4a31      	ldr	r2, [pc, #196]	; (2464 <spi_config_port+0xde>)
    23a0:	4293      	cmp	r3, r2
    23a2:	d13e      	bne.n	2422 <spi_config_port+0x9c>
    23a4:	683b      	ldr	r3, [r7, #0]
    23a6:	2b00      	cmp	r3, #0
    23a8:	d11a      	bne.n	23e0 <spi_config_port+0x5a>
    23aa:	4a2d      	ldr	r2, [pc, #180]	; (2460 <spi_config_port+0xda>)
    23ac:	4b2c      	ldr	r3, [pc, #176]	; (2460 <spi_config_port+0xda>)
    23ae:	699b      	ldr	r3, [r3, #24]
    23b0:	f043 0304 	orr.w	r3, r3, #4
    23b4:	6193      	str	r3, [r2, #24]
    23b6:	2203      	movs	r2, #3
    23b8:	2104      	movs	r1, #4
    23ba:	482b      	ldr	r0, [pc, #172]	; (2468 <spi_config_port+0xe2>)
    23bc:	f7fe fc19 	bl	bf2 <config_pin>
    23c0:	220b      	movs	r2, #11
    23c2:	2105      	movs	r1, #5
    23c4:	4828      	ldr	r0, [pc, #160]	; (2468 <spi_config_port+0xe2>)
    23c6:	f7fe fc14 	bl	bf2 <config_pin>
    23ca:	2204      	movs	r2, #4
    23cc:	2106      	movs	r1, #6
    23ce:	4826      	ldr	r0, [pc, #152]	; (2468 <spi_config_port+0xe2>)
    23d0:	f7fe fc0f 	bl	bf2 <config_pin>
    23d4:	220b      	movs	r2, #11
    23d6:	2107      	movs	r1, #7
    23d8:	4823      	ldr	r0, [pc, #140]	; (2468 <spi_config_port+0xe2>)
    23da:	f7fe fc0a 	bl	bf2 <config_pin>
    23de:	e03a      	b.n	2456 <spi_config_port+0xd0>
    23e0:	4a1f      	ldr	r2, [pc, #124]	; (2460 <spi_config_port+0xda>)
    23e2:	4b1f      	ldr	r3, [pc, #124]	; (2460 <spi_config_port+0xda>)
    23e4:	699b      	ldr	r3, [r3, #24]
    23e6:	f043 030d 	orr.w	r3, r3, #13
    23ea:	6193      	str	r3, [r2, #24]
    23ec:	4a1f      	ldr	r2, [pc, #124]	; (246c <spi_config_port+0xe6>)
    23ee:	4b1f      	ldr	r3, [pc, #124]	; (246c <spi_config_port+0xe6>)
    23f0:	685b      	ldr	r3, [r3, #4]
    23f2:	f043 0301 	orr.w	r3, r3, #1
    23f6:	6053      	str	r3, [r2, #4]
    23f8:	2203      	movs	r2, #3
    23fa:	210f      	movs	r1, #15
    23fc:	481a      	ldr	r0, [pc, #104]	; (2468 <spi_config_port+0xe2>)
    23fe:	f7fe fbf8 	bl	bf2 <config_pin>
    2402:	220b      	movs	r2, #11
    2404:	2103      	movs	r1, #3
    2406:	481a      	ldr	r0, [pc, #104]	; (2470 <spi_config_port+0xea>)
    2408:	f7fe fbf3 	bl	bf2 <config_pin>
    240c:	2204      	movs	r2, #4
    240e:	2104      	movs	r1, #4
    2410:	4817      	ldr	r0, [pc, #92]	; (2470 <spi_config_port+0xea>)
    2412:	f7fe fbee 	bl	bf2 <config_pin>
    2416:	220b      	movs	r2, #11
    2418:	2105      	movs	r1, #5
    241a:	4815      	ldr	r0, [pc, #84]	; (2470 <spi_config_port+0xea>)
    241c:	f7fe fbe9 	bl	bf2 <config_pin>
    2420:	e019      	b.n	2456 <spi_config_port+0xd0>
    2422:	4a0f      	ldr	r2, [pc, #60]	; (2460 <spi_config_port+0xda>)
    2424:	4b0e      	ldr	r3, [pc, #56]	; (2460 <spi_config_port+0xda>)
    2426:	699b      	ldr	r3, [r3, #24]
    2428:	f043 0308 	orr.w	r3, r3, #8
    242c:	6193      	str	r3, [r2, #24]
    242e:	2203      	movs	r2, #3
    2430:	2102      	movs	r1, #2
    2432:	480f      	ldr	r0, [pc, #60]	; (2470 <spi_config_port+0xea>)
    2434:	f7fe fbdd 	bl	bf2 <config_pin>
    2438:	220b      	movs	r2, #11
    243a:	210d      	movs	r1, #13
    243c:	480c      	ldr	r0, [pc, #48]	; (2470 <spi_config_port+0xea>)
    243e:	f7fe fbd8 	bl	bf2 <config_pin>
    2442:	2204      	movs	r2, #4
    2444:	210e      	movs	r1, #14
    2446:	480a      	ldr	r0, [pc, #40]	; (2470 <spi_config_port+0xea>)
    2448:	f7fe fbd3 	bl	bf2 <config_pin>
    244c:	220b      	movs	r2, #11
    244e:	210f      	movs	r1, #15
    2450:	4807      	ldr	r0, [pc, #28]	; (2470 <spi_config_port+0xea>)
    2452:	f7fe fbce 	bl	bf2 <config_pin>
    2456:	bf00      	nop
    2458:	3708      	adds	r7, #8
    245a:	46bd      	mov	sp, r7
    245c:	bd80      	pop	{r7, pc}
    245e:	bf00      	nop
    2460:	40021000 	.word	0x40021000
    2464:	40013000 	.word	0x40013000
    2468:	40010800 	.word	0x40010800
    246c:	40010000 	.word	0x40010000
    2470:	40010c00 	.word	0x40010c00

00002474 <spi_init>:
    2474:	b580      	push	{r7, lr}
    2476:	b084      	sub	sp, #16
    2478:	af00      	add	r7, sp, #0
    247a:	60f8      	str	r0, [r7, #12]
    247c:	60b9      	str	r1, [r7, #8]
    247e:	607a      	str	r2, [r7, #4]
    2480:	603b      	str	r3, [r7, #0]
    2482:	6839      	ldr	r1, [r7, #0]
    2484:	68f8      	ldr	r0, [r7, #12]
    2486:	f7ff ff7e 	bl	2386 <spi_config_port>
    248a:	68fb      	ldr	r3, [r7, #12]
    248c:	4a10      	ldr	r2, [pc, #64]	; (24d0 <spi_init+0x5c>)
    248e:	4293      	cmp	r3, r2
    2490:	d106      	bne.n	24a0 <spi_init+0x2c>
    2492:	4a10      	ldr	r2, [pc, #64]	; (24d4 <spi_init+0x60>)
    2494:	4b0f      	ldr	r3, [pc, #60]	; (24d4 <spi_init+0x60>)
    2496:	699b      	ldr	r3, [r3, #24]
    2498:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    249c:	6193      	str	r3, [r2, #24]
    249e:	e005      	b.n	24ac <spi_init+0x38>
    24a0:	4a0c      	ldr	r2, [pc, #48]	; (24d4 <spi_init+0x60>)
    24a2:	4b0c      	ldr	r3, [pc, #48]	; (24d4 <spi_init+0x60>)
    24a4:	69db      	ldr	r3, [r3, #28]
    24a6:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    24aa:	61d3      	str	r3, [r2, #28]
    24ac:	68fb      	ldr	r3, [r7, #12]
    24ae:	687a      	ldr	r2, [r7, #4]
    24b0:	601a      	str	r2, [r3, #0]
    24b2:	68b9      	ldr	r1, [r7, #8]
    24b4:	68f8      	ldr	r0, [r7, #12]
    24b6:	f7ff ff4f 	bl	2358 <spi_baudrate>
    24ba:	68fb      	ldr	r3, [r7, #12]
    24bc:	681b      	ldr	r3, [r3, #0]
    24be:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    24c2:	68fb      	ldr	r3, [r7, #12]
    24c4:	601a      	str	r2, [r3, #0]
    24c6:	bf00      	nop
    24c8:	3710      	adds	r7, #16
    24ca:	46bd      	mov	sp, r7
    24cc:	bd80      	pop	{r7, pc}
    24ce:	bf00      	nop
    24d0:	40013000 	.word	0x40013000
    24d4:	40021000 	.word	0x40021000

000024d8 <spi_send>:
    24d8:	b480      	push	{r7}
    24da:	b085      	sub	sp, #20
    24dc:	af00      	add	r7, sp, #0
    24de:	6078      	str	r0, [r7, #4]
    24e0:	460b      	mov	r3, r1
    24e2:	70fb      	strb	r3, [r7, #3]
    24e4:	bf00      	nop
    24e6:	687b      	ldr	r3, [r7, #4]
    24e8:	689b      	ldr	r3, [r3, #8]
    24ea:	f003 0302 	and.w	r3, r3, #2
    24ee:	2b00      	cmp	r3, #0
    24f0:	d0f9      	beq.n	24e6 <spi_send+0xe>
    24f2:	78fa      	ldrb	r2, [r7, #3]
    24f4:	687b      	ldr	r3, [r7, #4]
    24f6:	60da      	str	r2, [r3, #12]
    24f8:	bf00      	nop
    24fa:	687b      	ldr	r3, [r7, #4]
    24fc:	689b      	ldr	r3, [r3, #8]
    24fe:	f003 0301 	and.w	r3, r3, #1
    2502:	2b00      	cmp	r3, #0
    2504:	d0f9      	beq.n	24fa <spi_send+0x22>
    2506:	687b      	ldr	r3, [r7, #4]
    2508:	68db      	ldr	r3, [r3, #12]
    250a:	73fb      	strb	r3, [r7, #15]
    250c:	bf00      	nop
    250e:	3714      	adds	r7, #20
    2510:	46bd      	mov	sp, r7
    2512:	bc80      	pop	{r7}
    2514:	4770      	bx	lr

00002516 <spi_receive>:
    2516:	b480      	push	{r7}
    2518:	b085      	sub	sp, #20
    251a:	af00      	add	r7, sp, #0
    251c:	6078      	str	r0, [r7, #4]
    251e:	bf00      	nop
    2520:	687b      	ldr	r3, [r7, #4]
    2522:	689b      	ldr	r3, [r3, #8]
    2524:	f003 0302 	and.w	r3, r3, #2
    2528:	2b00      	cmp	r3, #0
    252a:	d0f9      	beq.n	2520 <spi_receive+0xa>
    252c:	687b      	ldr	r3, [r7, #4]
    252e:	22ff      	movs	r2, #255	; 0xff
    2530:	60da      	str	r2, [r3, #12]
    2532:	bf00      	nop
    2534:	687b      	ldr	r3, [r7, #4]
    2536:	689b      	ldr	r3, [r3, #8]
    2538:	f003 0301 	and.w	r3, r3, #1
    253c:	2b00      	cmp	r3, #0
    253e:	d0f9      	beq.n	2534 <spi_receive+0x1e>
    2540:	687b      	ldr	r3, [r7, #4]
    2542:	68db      	ldr	r3, [r3, #12]
    2544:	73fb      	strb	r3, [r7, #15]
    2546:	7bfb      	ldrb	r3, [r7, #15]
    2548:	4618      	mov	r0, r3
    254a:	3714      	adds	r7, #20
    254c:	46bd      	mov	sp, r7
    254e:	bc80      	pop	{r7}
    2550:	4770      	bx	lr

00002552 <spi_send_block>:
    2552:	b480      	push	{r7}
    2554:	b087      	sub	sp, #28
    2556:	af00      	add	r7, sp, #0
    2558:	60f8      	str	r0, [r7, #12]
    255a:	60b9      	str	r1, [r7, #8]
    255c:	607a      	str	r2, [r7, #4]
    255e:	e010      	b.n	2582 <spi_send_block+0x30>
    2560:	68bb      	ldr	r3, [r7, #8]
    2562:	1c5a      	adds	r2, r3, #1
    2564:	60ba      	str	r2, [r7, #8]
    2566:	781b      	ldrb	r3, [r3, #0]
    2568:	461a      	mov	r2, r3
    256a:	68fb      	ldr	r3, [r7, #12]
    256c:	60da      	str	r2, [r3, #12]
    256e:	bf00      	nop
    2570:	68fb      	ldr	r3, [r7, #12]
    2572:	689b      	ldr	r3, [r3, #8]
    2574:	f003 0302 	and.w	r3, r3, #2
    2578:	2b00      	cmp	r3, #0
    257a:	d0f9      	beq.n	2570 <spi_send_block+0x1e>
    257c:	687b      	ldr	r3, [r7, #4]
    257e:	3b01      	subs	r3, #1
    2580:	607b      	str	r3, [r7, #4]
    2582:	687b      	ldr	r3, [r7, #4]
    2584:	2b00      	cmp	r3, #0
    2586:	d1eb      	bne.n	2560 <spi_send_block+0xe>
    2588:	bf00      	nop
    258a:	68fb      	ldr	r3, [r7, #12]
    258c:	689b      	ldr	r3, [r3, #8]
    258e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    2592:	2b00      	cmp	r3, #0
    2594:	d1f9      	bne.n	258a <spi_send_block+0x38>
    2596:	68fb      	ldr	r3, [r7, #12]
    2598:	68db      	ldr	r3, [r3, #12]
    259a:	75fb      	strb	r3, [r7, #23]
    259c:	bf00      	nop
    259e:	371c      	adds	r7, #28
    25a0:	46bd      	mov	sp, r7
    25a2:	bc80      	pop	{r7}
    25a4:	4770      	bx	lr

000025a6 <spi_receive_block>:
    25a6:	b480      	push	{r7}
    25a8:	b085      	sub	sp, #20
    25aa:	af00      	add	r7, sp, #0
    25ac:	60f8      	str	r0, [r7, #12]
    25ae:	60b9      	str	r1, [r7, #8]
    25b0:	607a      	str	r2, [r7, #4]
    25b2:	e013      	b.n	25dc <spi_receive_block+0x36>
    25b4:	68fb      	ldr	r3, [r7, #12]
    25b6:	2200      	movs	r2, #0
    25b8:	60da      	str	r2, [r3, #12]
    25ba:	bf00      	nop
    25bc:	68fb      	ldr	r3, [r7, #12]
    25be:	689b      	ldr	r3, [r3, #8]
    25c0:	f003 0301 	and.w	r3, r3, #1
    25c4:	2b00      	cmp	r3, #0
    25c6:	d0f9      	beq.n	25bc <spi_receive_block+0x16>
    25c8:	68bb      	ldr	r3, [r7, #8]
    25ca:	1c5a      	adds	r2, r3, #1
    25cc:	60ba      	str	r2, [r7, #8]
    25ce:	68fa      	ldr	r2, [r7, #12]
    25d0:	68d2      	ldr	r2, [r2, #12]
    25d2:	b2d2      	uxtb	r2, r2
    25d4:	701a      	strb	r2, [r3, #0]
    25d6:	687b      	ldr	r3, [r7, #4]
    25d8:	3b01      	subs	r3, #1
    25da:	607b      	str	r3, [r7, #4]
    25dc:	687b      	ldr	r3, [r7, #4]
    25de:	2b00      	cmp	r3, #0
    25e0:	d1e8      	bne.n	25b4 <spi_receive_block+0xe>
    25e2:	bf00      	nop
    25e4:	3714      	adds	r7, #20
    25e6:	46bd      	mov	sp, r7
    25e8:	bc80      	pop	{r7}
    25ea:	4770      	bx	lr

000025ec <reset_mcu>:
    25ec:	4b01      	ldr	r3, [pc, #4]	; (25f4 <reset_mcu+0x8>)
    25ee:	4a02      	ldr	r2, [pc, #8]	; (25f8 <reset_mcu+0xc>)
    25f0:	601a      	str	r2, [r3, #0]
    25f2:	bf00      	nop
    25f4:	e000ed0c 	.word	0xe000ed0c
    25f8:	05fa0004 	.word	0x05fa0004

000025fc <print_fault>:
    25fc:	b580      	push	{r7, lr}
    25fe:	b082      	sub	sp, #8
    2600:	af00      	add	r7, sp, #0
    2602:	6078      	str	r0, [r7, #4]
    2604:	6039      	str	r1, [r7, #0]
    2606:	6878      	ldr	r0, [r7, #4]
    2608:	f7fe fc26 	bl	e58 <gfx_print>
    260c:	4818      	ldr	r0, [pc, #96]	; (2670 <print_fault+0x74>)
    260e:	f7fe fc23 	bl	e58 <gfx_print>
    2612:	683b      	ldr	r3, [r7, #0]
    2614:	2b00      	cmp	r3, #0
    2616:	d004      	beq.n	2622 <print_fault+0x26>
    2618:	683b      	ldr	r3, [r7, #0]
    261a:	2110      	movs	r1, #16
    261c:	4618      	mov	r0, r3
    261e:	f7fe fc3e 	bl	e9e <gfx_print_int>
    2622:	200d      	movs	r0, #13
    2624:	f7fe fbb8 	bl	d98 <gfx_putchar>
    2628:	4812      	ldr	r0, [pc, #72]	; (2674 <print_fault+0x78>)
    262a:	f7fe fc15 	bl	e58 <gfx_print>
    262e:	4b12      	ldr	r3, [pc, #72]	; (2678 <print_fault+0x7c>)
    2630:	681b      	ldr	r3, [r3, #0]
    2632:	f3c3 430f 	ubfx	r3, r3, #16, #16
    2636:	b29b      	uxth	r3, r3
    2638:	2110      	movs	r1, #16
    263a:	4618      	mov	r0, r3
    263c:	f7fe fc2f 	bl	e9e <gfx_print_int>
    2640:	480e      	ldr	r0, [pc, #56]	; (267c <print_fault+0x80>)
    2642:	f7fe fc09 	bl	e58 <gfx_print>
    2646:	4b0c      	ldr	r3, [pc, #48]	; (2678 <print_fault+0x7c>)
    2648:	681b      	ldr	r3, [r3, #0]
    264a:	f3c3 2307 	ubfx	r3, r3, #8, #8
    264e:	b2db      	uxtb	r3, r3
    2650:	2110      	movs	r1, #16
    2652:	4618      	mov	r0, r3
    2654:	f7fe fc23 	bl	e9e <gfx_print_int>
    2658:	4809      	ldr	r0, [pc, #36]	; (2680 <print_fault+0x84>)
    265a:	f7fe fbfd 	bl	e58 <gfx_print>
    265e:	4b06      	ldr	r3, [pc, #24]	; (2678 <print_fault+0x7c>)
    2660:	681b      	ldr	r3, [r3, #0]
    2662:	b2db      	uxtb	r3, r3
    2664:	2110      	movs	r1, #16
    2666:	4618      	mov	r0, r3
    2668:	f7fe fc19 	bl	e9e <gfx_print_int>
    266c:	e7fe      	b.n	266c <print_fault+0x70>
    266e:	bf00      	nop
    2670:	00002fcc 	.word	0x00002fcc
    2674:	00002fdc 	.word	0x00002fdc
    2678:	e000ed28 	.word	0xe000ed28
    267c:	00002fe4 	.word	0x00002fe4
    2680:	00002fec 	.word	0x00002fec

00002684 <config_systicks>:
    2684:	b580      	push	{r7, lr}
    2686:	af00      	add	r7, sp, #0
    2688:	2109      	movs	r1, #9
    268a:	f06f 000e 	mvn.w	r0, #14
    268e:	f7fe fff3 	bl	1678 <set_int_priority>
    2692:	4b04      	ldr	r3, [pc, #16]	; (26a4 <config_systicks+0x20>)
    2694:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2698:	601a      	str	r2, [r3, #0]
    269a:	4b03      	ldr	r3, [pc, #12]	; (26a8 <config_systicks+0x24>)
    269c:	2203      	movs	r2, #3
    269e:	601a      	str	r2, [r3, #0]
    26a0:	bf00      	nop
    26a2:	bd80      	pop	{r7, pc}
    26a4:	e000e014 	.word	0xe000e014
    26a8:	e000e010 	.word	0xe000e010

000026ac <pause>:
    26ac:	b480      	push	{r7}
    26ae:	b083      	sub	sp, #12
    26b0:	af00      	add	r7, sp, #0
    26b2:	6078      	str	r0, [r7, #4]
    26b4:	4a06      	ldr	r2, [pc, #24]	; (26d0 <pause+0x24>)
    26b6:	687b      	ldr	r3, [r7, #4]
    26b8:	6013      	str	r3, [r2, #0]
    26ba:	bf00      	nop
    26bc:	4b04      	ldr	r3, [pc, #16]	; (26d0 <pause+0x24>)
    26be:	681b      	ldr	r3, [r3, #0]
    26c0:	2b00      	cmp	r3, #0
    26c2:	d1fb      	bne.n	26bc <pause+0x10>
    26c4:	bf00      	nop
    26c6:	370c      	adds	r7, #12
    26c8:	46bd      	mov	sp, r7
    26ca:	bc80      	pop	{r7}
    26cc:	4770      	bx	lr
    26ce:	bf00      	nop
    26d0:	20000460 	.word	0x20000460

000026d4 <STK_handler>:
    26d4:	b480      	push	{r7}
    26d6:	af00      	add	r7, sp, #0
    26d8:	4b08      	ldr	r3, [pc, #32]	; (26fc <STK_handler+0x28>)
    26da:	681b      	ldr	r3, [r3, #0]
    26dc:	3301      	adds	r3, #1
    26de:	4a07      	ldr	r2, [pc, #28]	; (26fc <STK_handler+0x28>)
    26e0:	6013      	str	r3, [r2, #0]
    26e2:	4b07      	ldr	r3, [pc, #28]	; (2700 <STK_handler+0x2c>)
    26e4:	681b      	ldr	r3, [r3, #0]
    26e6:	2b00      	cmp	r3, #0
    26e8:	d004      	beq.n	26f4 <STK_handler+0x20>
    26ea:	4b05      	ldr	r3, [pc, #20]	; (2700 <STK_handler+0x2c>)
    26ec:	681b      	ldr	r3, [r3, #0]
    26ee:	3b01      	subs	r3, #1
    26f0:	4a03      	ldr	r2, [pc, #12]	; (2700 <STK_handler+0x2c>)
    26f2:	6013      	str	r3, [r2, #0]
    26f4:	bf00      	nop
    26f6:	46bd      	mov	sp, r7
    26f8:	bc80      	pop	{r7}
    26fa:	4770      	bx	lr
    26fc:	2000045c 	.word	0x2000045c
    2700:	20000460 	.word	0x20000460

00002704 <tvout_init>:
    2704:	b580      	push	{r7, lr}
    2706:	af00      	add	r7, sp, #0
    2708:	2003      	movs	r0, #3
    270a:	f000 fa37 	bl	2b7c <set_palette>
    270e:	4b45      	ldr	r3, [pc, #276]	; (2824 <tvout_init+0x120>)
    2710:	4a45      	ldr	r2, [pc, #276]	; (2828 <tvout_init+0x124>)
    2712:	601a      	str	r2, [r3, #0]
    2714:	4b45      	ldr	r3, [pc, #276]	; (282c <tvout_init+0x128>)
    2716:	4a46      	ldr	r2, [pc, #280]	; (2830 <tvout_init+0x12c>)
    2718:	601a      	str	r2, [r3, #0]
    271a:	220a      	movs	r2, #10
    271c:	2108      	movs	r1, #8
    271e:	4841      	ldr	r0, [pc, #260]	; (2824 <tvout_init+0x120>)
    2720:	f7fe fa67 	bl	bf2 <config_pin>
    2724:	4b3f      	ldr	r3, [pc, #252]	; (2824 <tvout_init+0x120>)
    2726:	2200      	movs	r2, #0
    2728:	60da      	str	r2, [r3, #12]
    272a:	4a42      	ldr	r2, [pc, #264]	; (2834 <tvout_init+0x130>)
    272c:	4b41      	ldr	r3, [pc, #260]	; (2834 <tvout_init+0x130>)
    272e:	699b      	ldr	r3, [r3, #24]
    2730:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2734:	6193      	str	r3, [r2, #24]
    2736:	4b40      	ldr	r3, [pc, #256]	; (2838 <tvout_init+0x134>)
    2738:	2278      	movs	r2, #120	; 0x78
    273a:	619a      	str	r2, [r3, #24]
    273c:	4b3e      	ldr	r3, [pc, #248]	; (2838 <tvout_init+0x134>)
    273e:	2201      	movs	r2, #1
    2740:	621a      	str	r2, [r3, #32]
    2742:	4b3d      	ldr	r3, [pc, #244]	; (2838 <tvout_init+0x134>)
    2744:	2284      	movs	r2, #132	; 0x84
    2746:	601a      	str	r2, [r3, #0]
    2748:	4b3b      	ldr	r3, [pc, #236]	; (2838 <tvout_init+0x134>)
    274a:	f241 12c5 	movw	r2, #4549	; 0x11c5
    274e:	62da      	str	r2, [r3, #44]	; 0x2c
    2750:	4b39      	ldr	r3, [pc, #228]	; (2838 <tvout_init+0x134>)
    2752:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2756:	635a      	str	r2, [r3, #52]	; 0x34
    2758:	4b37      	ldr	r3, [pc, #220]	; (2838 <tvout_init+0x134>)
    275a:	f240 126d 	movw	r2, #365	; 0x16d
    275e:	639a      	str	r2, [r3, #56]	; 0x38
    2760:	4a35      	ldr	r2, [pc, #212]	; (2838 <tvout_init+0x134>)
    2762:	4b35      	ldr	r3, [pc, #212]	; (2838 <tvout_init+0x134>)
    2764:	695b      	ldr	r3, [r3, #20]
    2766:	f043 0301 	orr.w	r3, r3, #1
    276a:	6153      	str	r3, [r2, #20]
    276c:	4b32      	ldr	r3, [pc, #200]	; (2838 <tvout_init+0x134>)
    276e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2772:	645a      	str	r2, [r3, #68]	; 0x44
    2774:	4b30      	ldr	r3, [pc, #192]	; (2838 <tvout_init+0x134>)
    2776:	2200      	movs	r2, #0
    2778:	611a      	str	r2, [r3, #16]
    277a:	4a2f      	ldr	r2, [pc, #188]	; (2838 <tvout_init+0x134>)
    277c:	4b2e      	ldr	r3, [pc, #184]	; (2838 <tvout_init+0x134>)
    277e:	68db      	ldr	r3, [r3, #12]
    2780:	f043 0301 	orr.w	r3, r3, #1
    2784:	60d3      	str	r3, [r2, #12]
    2786:	2101      	movs	r1, #1
    2788:	2019      	movs	r0, #25
    278a:	f7fe ff75 	bl	1678 <set_int_priority>
    278e:	2101      	movs	r1, #1
    2790:	201b      	movs	r0, #27
    2792:	f7fe ff71 	bl	1678 <set_int_priority>
    2796:	201b      	movs	r0, #27
    2798:	f7fe feb4 	bl	1504 <enable_interrupt>
    279c:	2019      	movs	r0, #25
    279e:	f7fe feb1 	bl	1504 <enable_interrupt>
    27a2:	4a25      	ldr	r2, [pc, #148]	; (2838 <tvout_init+0x134>)
    27a4:	4b24      	ldr	r3, [pc, #144]	; (2838 <tvout_init+0x134>)
    27a6:	681b      	ldr	r3, [r3, #0]
    27a8:	f043 0301 	orr.w	r3, r3, #1
    27ac:	6013      	str	r3, [r2, #0]
    27ae:	220a      	movs	r2, #10
    27b0:	2100      	movs	r1, #0
    27b2:	4822      	ldr	r0, [pc, #136]	; (283c <tvout_init+0x138>)
    27b4:	f7fe fa1d 	bl	bf2 <config_pin>
    27b8:	220a      	movs	r2, #10
    27ba:	2101      	movs	r1, #1
    27bc:	481f      	ldr	r0, [pc, #124]	; (283c <tvout_init+0x138>)
    27be:	f7fe fa18 	bl	bf2 <config_pin>
    27c2:	4a1c      	ldr	r2, [pc, #112]	; (2834 <tvout_init+0x130>)
    27c4:	4b1b      	ldr	r3, [pc, #108]	; (2834 <tvout_init+0x130>)
    27c6:	69db      	ldr	r3, [r3, #28]
    27c8:	f043 0302 	orr.w	r3, r3, #2
    27cc:	61d3      	str	r3, [r2, #28]
    27ce:	4b1c      	ldr	r3, [pc, #112]	; (2840 <tvout_init+0x13c>)
    27d0:	f246 0278 	movw	r2, #24696	; 0x6078
    27d4:	61da      	str	r2, [r3, #28]
    27d6:	4b1a      	ldr	r3, [pc, #104]	; (2840 <tvout_init+0x13c>)
    27d8:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    27dc:	621a      	str	r2, [r3, #32]
    27de:	4b18      	ldr	r3, [pc, #96]	; (2840 <tvout_init+0x13c>)
    27e0:	2284      	movs	r2, #132	; 0x84
    27e2:	601a      	str	r2, [r3, #0]
    27e4:	4b16      	ldr	r3, [pc, #88]	; (2840 <tvout_init+0x13c>)
    27e6:	2213      	movs	r2, #19
    27e8:	62da      	str	r2, [r3, #44]	; 0x2c
    27ea:	4b15      	ldr	r3, [pc, #84]	; (2840 <tvout_init+0x13c>)
    27ec:	220a      	movs	r2, #10
    27ee:	63da      	str	r2, [r3, #60]	; 0x3c
    27f0:	4b13      	ldr	r3, [pc, #76]	; (2840 <tvout_init+0x13c>)
    27f2:	220a      	movs	r2, #10
    27f4:	641a      	str	r2, [r3, #64]	; 0x40
    27f6:	4a12      	ldr	r2, [pc, #72]	; (2840 <tvout_init+0x13c>)
    27f8:	4b11      	ldr	r3, [pc, #68]	; (2840 <tvout_init+0x13c>)
    27fa:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    27fc:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    2800:	6453      	str	r3, [r2, #68]	; 0x44
    2802:	4a0f      	ldr	r2, [pc, #60]	; (2840 <tvout_init+0x13c>)
    2804:	4b0e      	ldr	r3, [pc, #56]	; (2840 <tvout_init+0x13c>)
    2806:	695b      	ldr	r3, [r3, #20]
    2808:	f043 0301 	orr.w	r3, r3, #1
    280c:	6153      	str	r3, [r2, #20]
    280e:	4b0c      	ldr	r3, [pc, #48]	; (2840 <tvout_init+0x13c>)
    2810:	2200      	movs	r2, #0
    2812:	611a      	str	r2, [r3, #16]
    2814:	4a0a      	ldr	r2, [pc, #40]	; (2840 <tvout_init+0x13c>)
    2816:	4b0a      	ldr	r3, [pc, #40]	; (2840 <tvout_init+0x13c>)
    2818:	681b      	ldr	r3, [r3, #0]
    281a:	f043 0301 	orr.w	r3, r3, #1
    281e:	6013      	str	r3, [r2, #0]
    2820:	bf00      	nop
    2822:	bd80      	pop	{r7, pc}
    2824:	40010800 	.word	0x40010800
    2828:	88883333 	.word	0x88883333
    282c:	40010804 	.word	0x40010804
    2830:	88444444 	.word	0x88444444
    2834:	40021000 	.word	0x40021000
    2838:	40012c00 	.word	0x40012c00
    283c:	40010c00 	.word	0x40010c00
    2840:	40000400 	.word	0x40000400

00002844 <TV_OUT_handler>:
    2844:	4668      	mov	r0, sp
    2846:	f020 0107 	bic.w	r1, r0, #7
    284a:	468d      	mov	sp, r1
    284c:	b411      	push	{r0, r4}
    284e:	4a30      	ldr	r2, [pc, #192]	; (2910 <TV_OUT_handler+0xcc>)
    2850:	6a13      	ldr	r3, [r2, #32]
    2852:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2856:	6213      	str	r3, [r2, #32]
    2858:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    285c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    285e:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    2862:	d3fb      	bcc.n	285c <TV_OUT_handler+0x18>
    2864:	4a2a      	ldr	r2, [pc, #168]	; (2910 <TV_OUT_handler+0xcc>)
    2866:	6a13      	ldr	r3, [r2, #32]
    2868:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    286c:	6213      	str	r3, [r2, #32]
    286e:	4b29      	ldr	r3, [pc, #164]	; (2914 <TV_OUT_handler+0xd0>)
    2870:	881b      	ldrh	r3, [r3, #0]
    2872:	f013 0f04 	tst.w	r3, #4
    2876:	d042      	beq.n	28fe <TV_OUT_handler+0xba>
    2878:	4927      	ldr	r1, [pc, #156]	; (2918 <TV_OUT_handler+0xd4>)
    287a:	f240 32c5 	movw	r2, #965	; 0x3c5
    287e:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    2880:	4293      	cmp	r3, r2
    2882:	d9fc      	bls.n	287e <TV_OUT_handler+0x3a>
    2884:	4a25      	ldr	r2, [pc, #148]	; (291c <TV_OUT_handler+0xd8>)
    2886:	8813      	ldrh	r3, [r2, #0]
    2888:	f3c3 034e 	ubfx	r3, r3, #1, #15
    288c:	4924      	ldr	r1, [pc, #144]	; (2920 <TV_OUT_handler+0xdc>)
    288e:	205a      	movs	r0, #90	; 0x5a
    2890:	fb00 1303 	mla	r3, r0, r3, r1
    2894:	8812      	ldrh	r2, [r2, #0]
    2896:	491e      	ldr	r1, [pc, #120]	; (2910 <TV_OUT_handler+0xcc>)
    2898:	6a08      	ldr	r0, [r1, #32]
    289a:	f3c2 024e 	ubfx	r2, r2, #1, #15
    289e:	4c21      	ldr	r4, [pc, #132]	; (2924 <TV_OUT_handler+0xe0>)
    28a0:	5ca4      	ldrb	r4, [r4, r2]
    28a2:	4a21      	ldr	r2, [pc, #132]	; (2928 <TV_OUT_handler+0xe4>)
    28a4:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    28a8:	4302      	orrs	r2, r0
    28aa:	620a      	str	r2, [r1, #32]
    28ac:	f103 005a 	add.w	r0, r3, #90	; 0x5a
    28b0:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    28b4:	310c      	adds	r1, #12
    28b6:	781a      	ldrb	r2, [r3, #0]
    28b8:	0912      	lsrs	r2, r2, #4
    28ba:	800a      	strh	r2, [r1, #0]
    28bc:	bf00      	nop
    28be:	bf00      	nop
    28c0:	bf00      	nop
    28c2:	bf00      	nop
    28c4:	bf00      	nop
    28c6:	bf00      	nop
    28c8:	bf00      	nop
    28ca:	bf00      	nop
    28cc:	bf00      	nop
    28ce:	bf00      	nop
    28d0:	bf00      	nop
    28d2:	f813 2b01 	ldrb.w	r2, [r3], #1
    28d6:	f002 020f 	and.w	r2, r2, #15
    28da:	800a      	strh	r2, [r1, #0]
    28dc:	bf00      	nop
    28de:	bf00      	nop
    28e0:	bf00      	nop
    28e2:	bf00      	nop
    28e4:	bf00      	nop
    28e6:	bf00      	nop
    28e8:	bf00      	nop
    28ea:	4298      	cmp	r0, r3
    28ec:	d1e3      	bne.n	28b6 <TV_OUT_handler+0x72>
    28ee:	2200      	movs	r2, #0
    28f0:	4b0e      	ldr	r3, [pc, #56]	; (292c <TV_OUT_handler+0xe8>)
    28f2:	60da      	str	r2, [r3, #12]
    28f4:	4a06      	ldr	r2, [pc, #24]	; (2910 <TV_OUT_handler+0xcc>)
    28f6:	6a13      	ldr	r3, [r2, #32]
    28f8:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    28fc:	6213      	str	r3, [r2, #32]
    28fe:	4a06      	ldr	r2, [pc, #24]	; (2918 <TV_OUT_handler+0xd4>)
    2900:	6913      	ldr	r3, [r2, #16]
    2902:	f023 0304 	bic.w	r3, r3, #4
    2906:	6113      	str	r3, [r2, #16]
    2908:	bc11      	pop	{r0, r4}
    290a:	4685      	mov	sp, r0
    290c:	4770      	bx	lr
    290e:	bf00      	nop
    2910:	40000400 	.word	0x40000400
    2914:	20000466 	.word	0x20000466
    2918:	40012c00 	.word	0x40012c00
    291c:	20000468 	.word	0x20000468
    2920:	20000470 	.word	0x20000470
    2924:	20002bd0 	.word	0x20002bd0
    2928:	00003038 	.word	0x00003038
    292c:	40010800 	.word	0x40010800

00002930 <TV_SYNC_handler>:
    2930:	4668      	mov	r0, sp
    2932:	f020 0107 	bic.w	r1, r0, #7
    2936:	468d      	mov	sp, r1
    2938:	b401      	push	{r0}
    293a:	4a81      	ldr	r2, [pc, #516]	; (2b40 <TV_SYNC_handler+0x210>)
    293c:	8813      	ldrh	r3, [r2, #0]
    293e:	3301      	adds	r3, #1
    2940:	b29b      	uxth	r3, r3
    2942:	8013      	strh	r3, [r2, #0]
    2944:	4b7f      	ldr	r3, [pc, #508]	; (2b44 <TV_SYNC_handler+0x214>)
    2946:	881b      	ldrh	r3, [r3, #0]
    2948:	b29b      	uxth	r3, r3
    294a:	2b07      	cmp	r3, #7
    294c:	f200 808e 	bhi.w	2a6c <TV_SYNC_handler+0x13c>
    2950:	e8df f013 	tbh	[pc, r3, lsl #1]
    2954:	002a0008 	.word	0x002a0008
    2958:	006c004a 	.word	0x006c004a
    295c:	00a30094 	.word	0x00a30094
    2960:	00ce00b7 	.word	0x00ce00b7
    2964:	4b78      	ldr	r3, [pc, #480]	; (2b48 <TV_SYNC_handler+0x218>)
    2966:	881b      	ldrh	r3, [r3, #0]
    2968:	b29b      	uxth	r3, r3
    296a:	b18b      	cbz	r3, 2990 <TV_SYNC_handler+0x60>
    296c:	4a76      	ldr	r2, [pc, #472]	; (2b48 <TV_SYNC_handler+0x218>)
    296e:	8813      	ldrh	r3, [r2, #0]
    2970:	3301      	adds	r3, #1
    2972:	b29b      	uxth	r3, r3
    2974:	8013      	strh	r3, [r2, #0]
    2976:	8813      	ldrh	r3, [r2, #0]
    2978:	b29b      	uxth	r3, r3
    297a:	2b06      	cmp	r3, #6
    297c:	d176      	bne.n	2a6c <TV_SYNC_handler+0x13c>
    297e:	2200      	movs	r2, #0
    2980:	4b71      	ldr	r3, [pc, #452]	; (2b48 <TV_SYNC_handler+0x218>)
    2982:	801a      	strh	r2, [r3, #0]
    2984:	4a6f      	ldr	r2, [pc, #444]	; (2b44 <TV_SYNC_handler+0x214>)
    2986:	8813      	ldrh	r3, [r2, #0]
    2988:	3301      	adds	r3, #1
    298a:	b29b      	uxth	r3, r3
    298c:	8013      	strh	r3, [r2, #0]
    298e:	e06d      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2990:	4b6e      	ldr	r3, [pc, #440]	; (2b4c <TV_SYNC_handler+0x21c>)
    2992:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2996:	62da      	str	r2, [r3, #44]	; 0x2c
    2998:	22a4      	movs	r2, #164	; 0xa4
    299a:	635a      	str	r2, [r3, #52]	; 0x34
    299c:	4a6a      	ldr	r2, [pc, #424]	; (2b48 <TV_SYNC_handler+0x218>)
    299e:	8813      	ldrh	r3, [r2, #0]
    29a0:	3301      	adds	r3, #1
    29a2:	b29b      	uxth	r3, r3
    29a4:	8013      	strh	r3, [r2, #0]
    29a6:	e061      	b.n	2a6c <TV_SYNC_handler+0x13c>
    29a8:	4b67      	ldr	r3, [pc, #412]	; (2b48 <TV_SYNC_handler+0x218>)
    29aa:	881b      	ldrh	r3, [r3, #0]
    29ac:	b29b      	uxth	r3, r3
    29ae:	b18b      	cbz	r3, 29d4 <TV_SYNC_handler+0xa4>
    29b0:	4a65      	ldr	r2, [pc, #404]	; (2b48 <TV_SYNC_handler+0x218>)
    29b2:	8813      	ldrh	r3, [r2, #0]
    29b4:	3301      	adds	r3, #1
    29b6:	b29b      	uxth	r3, r3
    29b8:	8013      	strh	r3, [r2, #0]
    29ba:	8813      	ldrh	r3, [r2, #0]
    29bc:	b29b      	uxth	r3, r3
    29be:	2b06      	cmp	r3, #6
    29c0:	d154      	bne.n	2a6c <TV_SYNC_handler+0x13c>
    29c2:	2200      	movs	r2, #0
    29c4:	4b60      	ldr	r3, [pc, #384]	; (2b48 <TV_SYNC_handler+0x218>)
    29c6:	801a      	strh	r2, [r3, #0]
    29c8:	4a5e      	ldr	r2, [pc, #376]	; (2b44 <TV_SYNC_handler+0x214>)
    29ca:	8813      	ldrh	r3, [r2, #0]
    29cc:	3301      	adds	r3, #1
    29ce:	b29b      	uxth	r3, r3
    29d0:	8013      	strh	r3, [r2, #0]
    29d2:	e04b      	b.n	2a6c <TV_SYNC_handler+0x13c>
    29d4:	f240 7294 	movw	r2, #1940	; 0x794
    29d8:	4b5c      	ldr	r3, [pc, #368]	; (2b4c <TV_SYNC_handler+0x21c>)
    29da:	635a      	str	r2, [r3, #52]	; 0x34
    29dc:	4a5a      	ldr	r2, [pc, #360]	; (2b48 <TV_SYNC_handler+0x218>)
    29de:	8813      	ldrh	r3, [r2, #0]
    29e0:	3301      	adds	r3, #1
    29e2:	b29b      	uxth	r3, r3
    29e4:	8013      	strh	r3, [r2, #0]
    29e6:	e041      	b.n	2a6c <TV_SYNC_handler+0x13c>
    29e8:	4b57      	ldr	r3, [pc, #348]	; (2b48 <TV_SYNC_handler+0x218>)
    29ea:	881b      	ldrh	r3, [r3, #0]
    29ec:	b29b      	uxth	r3, r3
    29ee:	b153      	cbz	r3, 2a06 <TV_SYNC_handler+0xd6>
    29f0:	4b55      	ldr	r3, [pc, #340]	; (2b48 <TV_SYNC_handler+0x218>)
    29f2:	881b      	ldrh	r3, [r3, #0]
    29f4:	b29b      	uxth	r3, r3
    29f6:	2b06      	cmp	r3, #6
    29f8:	d00e      	beq.n	2a18 <TV_SYNC_handler+0xe8>
    29fa:	4a53      	ldr	r2, [pc, #332]	; (2b48 <TV_SYNC_handler+0x218>)
    29fc:	8813      	ldrh	r3, [r2, #0]
    29fe:	3301      	adds	r3, #1
    2a00:	b29b      	uxth	r3, r3
    2a02:	8013      	strh	r3, [r2, #0]
    2a04:	e032      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2a06:	22a4      	movs	r2, #164	; 0xa4
    2a08:	4b50      	ldr	r3, [pc, #320]	; (2b4c <TV_SYNC_handler+0x21c>)
    2a0a:	635a      	str	r2, [r3, #52]	; 0x34
    2a0c:	4a4e      	ldr	r2, [pc, #312]	; (2b48 <TV_SYNC_handler+0x218>)
    2a0e:	8813      	ldrh	r3, [r2, #0]
    2a10:	3301      	adds	r3, #1
    2a12:	b29b      	uxth	r3, r3
    2a14:	8013      	strh	r3, [r2, #0]
    2a16:	e029      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2a18:	4a4a      	ldr	r2, [pc, #296]	; (2b44 <TV_SYNC_handler+0x214>)
    2a1a:	8813      	ldrh	r3, [r2, #0]
    2a1c:	3301      	adds	r3, #1
    2a1e:	b29b      	uxth	r3, r3
    2a20:	8013      	strh	r3, [r2, #0]
    2a22:	4b4b      	ldr	r3, [pc, #300]	; (2b50 <TV_SYNC_handler+0x220>)
    2a24:	881b      	ldrh	r3, [r3, #0]
    2a26:	f013 0f01 	tst.w	r3, #1
    2a2a:	d01f      	beq.n	2a6c <TV_SYNC_handler+0x13c>
    2a2c:	4a47      	ldr	r2, [pc, #284]	; (2b4c <TV_SYNC_handler+0x21c>)
    2a2e:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2a32:	62d3      	str	r3, [r2, #44]	; 0x2c
    2a34:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2a38:	6353      	str	r3, [r2, #52]	; 0x34
    2a3a:	4945      	ldr	r1, [pc, #276]	; (2b50 <TV_SYNC_handler+0x220>)
    2a3c:	880b      	ldrh	r3, [r1, #0]
    2a3e:	f023 0302 	bic.w	r3, r3, #2
    2a42:	041b      	lsls	r3, r3, #16
    2a44:	0c1b      	lsrs	r3, r3, #16
    2a46:	800b      	strh	r3, [r1, #0]
    2a48:	493d      	ldr	r1, [pc, #244]	; (2b40 <TV_SYNC_handler+0x210>)
    2a4a:	880b      	ldrh	r3, [r1, #0]
    2a4c:	f3c3 038d 	ubfx	r3, r3, #2, #14
    2a50:	800b      	strh	r3, [r1, #0]
    2a52:	493c      	ldr	r1, [pc, #240]	; (2b44 <TV_SYNC_handler+0x214>)
    2a54:	880b      	ldrh	r3, [r1, #0]
    2a56:	3301      	adds	r3, #1
    2a58:	b29b      	uxth	r3, r3
    2a5a:	800b      	strh	r3, [r1, #0]
    2a5c:	6913      	ldr	r3, [r2, #16]
    2a5e:	f023 0304 	bic.w	r3, r3, #4
    2a62:	6113      	str	r3, [r2, #16]
    2a64:	68d3      	ldr	r3, [r2, #12]
    2a66:	f043 0304 	orr.w	r3, r3, #4
    2a6a:	60d3      	str	r3, [r2, #12]
    2a6c:	4a37      	ldr	r2, [pc, #220]	; (2b4c <TV_SYNC_handler+0x21c>)
    2a6e:	6913      	ldr	r3, [r2, #16]
    2a70:	f023 0301 	bic.w	r3, r3, #1
    2a74:	6113      	str	r3, [r2, #16]
    2a76:	bc01      	pop	{r0}
    2a78:	4685      	mov	sp, r0
    2a7a:	4770      	bx	lr
    2a7c:	4b35      	ldr	r3, [pc, #212]	; (2b54 <TV_SYNC_handler+0x224>)
    2a7e:	689b      	ldr	r3, [r3, #8]
    2a80:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    2a84:	f023 030f 	bic.w	r3, r3, #15
    2a88:	b29b      	uxth	r3, r3
    2a8a:	4a33      	ldr	r2, [pc, #204]	; (2b58 <TV_SYNC_handler+0x228>)
    2a8c:	8013      	strh	r3, [r2, #0]
    2a8e:	4a2d      	ldr	r2, [pc, #180]	; (2b44 <TV_SYNC_handler+0x214>)
    2a90:	8813      	ldrh	r3, [r2, #0]
    2a92:	3301      	adds	r3, #1
    2a94:	b29b      	uxth	r3, r3
    2a96:	8013      	strh	r3, [r2, #0]
    2a98:	e7e8      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2a9a:	4b29      	ldr	r3, [pc, #164]	; (2b40 <TV_SYNC_handler+0x210>)
    2a9c:	881b      	ldrh	r3, [r3, #0]
    2a9e:	b29b      	uxth	r3, r3
    2aa0:	2b16      	cmp	r3, #22
    2aa2:	d1e3      	bne.n	2a6c <TV_SYNC_handler+0x13c>
    2aa4:	4a27      	ldr	r2, [pc, #156]	; (2b44 <TV_SYNC_handler+0x214>)
    2aa6:	8813      	ldrh	r3, [r2, #0]
    2aa8:	3301      	adds	r3, #1
    2aaa:	b29b      	uxth	r3, r3
    2aac:	8013      	strh	r3, [r2, #0]
    2aae:	2200      	movs	r2, #0
    2ab0:	4b25      	ldr	r3, [pc, #148]	; (2b48 <TV_SYNC_handler+0x218>)
    2ab2:	801a      	strh	r2, [r3, #0]
    2ab4:	4a26      	ldr	r2, [pc, #152]	; (2b50 <TV_SYNC_handler+0x220>)
    2ab6:	8813      	ldrh	r3, [r2, #0]
    2ab8:	b29b      	uxth	r3, r3
    2aba:	f043 0304 	orr.w	r3, r3, #4
    2abe:	8013      	strh	r3, [r2, #0]
    2ac0:	e7d4      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2ac2:	4a21      	ldr	r2, [pc, #132]	; (2b48 <TV_SYNC_handler+0x218>)
    2ac4:	8813      	ldrh	r3, [r2, #0]
    2ac6:	3301      	adds	r3, #1
    2ac8:	b29b      	uxth	r3, r3
    2aca:	8013      	strh	r3, [r2, #0]
    2acc:	4b1c      	ldr	r3, [pc, #112]	; (2b40 <TV_SYNC_handler+0x210>)
    2ace:	881b      	ldrh	r3, [r3, #0]
    2ad0:	b29b      	uxth	r3, r3
    2ad2:	2bf6      	cmp	r3, #246	; 0xf6
    2ad4:	d1ca      	bne.n	2a6c <TV_SYNC_handler+0x13c>
    2ad6:	4a1b      	ldr	r2, [pc, #108]	; (2b44 <TV_SYNC_handler+0x214>)
    2ad8:	8813      	ldrh	r3, [r2, #0]
    2ada:	3301      	adds	r3, #1
    2adc:	b29b      	uxth	r3, r3
    2ade:	8013      	strh	r3, [r2, #0]
    2ae0:	4a1b      	ldr	r2, [pc, #108]	; (2b50 <TV_SYNC_handler+0x220>)
    2ae2:	8813      	ldrh	r3, [r2, #0]
    2ae4:	f023 0304 	bic.w	r3, r3, #4
    2ae8:	041b      	lsls	r3, r3, #16
    2aea:	0c1b      	lsrs	r3, r3, #16
    2aec:	8013      	strh	r3, [r2, #0]
    2aee:	e7bd      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2af0:	4b13      	ldr	r3, [pc, #76]	; (2b40 <TV_SYNC_handler+0x210>)
    2af2:	881b      	ldrh	r3, [r3, #0]
    2af4:	b29b      	uxth	r3, r3
    2af6:	f240 1207 	movw	r2, #263	; 0x107
    2afa:	4293      	cmp	r3, r2
    2afc:	d1b6      	bne.n	2a6c <TV_SYNC_handler+0x13c>
    2afe:	4b14      	ldr	r3, [pc, #80]	; (2b50 <TV_SYNC_handler+0x220>)
    2b00:	881b      	ldrh	r3, [r3, #0]
    2b02:	f013 0f01 	tst.w	r3, #1
    2b06:	d003      	beq.n	2b10 <TV_SYNC_handler+0x1e0>
    2b08:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2b0c:	4b0f      	ldr	r3, [pc, #60]	; (2b4c <TV_SYNC_handler+0x21c>)
    2b0e:	62da      	str	r2, [r3, #44]	; 0x2c
    2b10:	4a0f      	ldr	r2, [pc, #60]	; (2b50 <TV_SYNC_handler+0x220>)
    2b12:	8813      	ldrh	r3, [r2, #0]
    2b14:	b29b      	uxth	r3, r3
    2b16:	f083 0301 	eor.w	r3, r3, #1
    2b1a:	8013      	strh	r3, [r2, #0]
    2b1c:	8813      	ldrh	r3, [r2, #0]
    2b1e:	b29b      	uxth	r3, r3
    2b20:	f043 0302 	orr.w	r3, r3, #2
    2b24:	8013      	strh	r3, [r2, #0]
    2b26:	2300      	movs	r3, #0
    2b28:	4a05      	ldr	r2, [pc, #20]	; (2b40 <TV_SYNC_handler+0x210>)
    2b2a:	8013      	strh	r3, [r2, #0]
    2b2c:	4a06      	ldr	r2, [pc, #24]	; (2b48 <TV_SYNC_handler+0x218>)
    2b2e:	8013      	strh	r3, [r2, #0]
    2b30:	4a04      	ldr	r2, [pc, #16]	; (2b44 <TV_SYNC_handler+0x214>)
    2b32:	8013      	strh	r3, [r2, #0]
    2b34:	4a05      	ldr	r2, [pc, #20]	; (2b4c <TV_SYNC_handler+0x21c>)
    2b36:	68d3      	ldr	r3, [r2, #12]
    2b38:	f023 0304 	bic.w	r3, r3, #4
    2b3c:	60d3      	str	r3, [r2, #12]
    2b3e:	e795      	b.n	2a6c <TV_SYNC_handler+0x13c>
    2b40:	2000046a 	.word	0x2000046a
    2b44:	20000464 	.word	0x20000464
    2b48:	20000468 	.word	0x20000468
    2b4c:	40012c00 	.word	0x40012c00
    2b50:	20000466 	.word	0x20000466
    2b54:	40010800 	.word	0x40010800
    2b58:	2000046c 	.word	0x2000046c

00002b5c <frame_sync>:
    2b5c:	b480      	push	{r7}
    2b5e:	af00      	add	r7, sp, #0
    2b60:	bf00      	nop
    2b62:	4b05      	ldr	r3, [pc, #20]	; (2b78 <frame_sync+0x1c>)
    2b64:	881b      	ldrh	r3, [r3, #0]
    2b66:	b29b      	uxth	r3, r3
    2b68:	f003 0302 	and.w	r3, r3, #2
    2b6c:	2b00      	cmp	r3, #0
    2b6e:	d0f8      	beq.n	2b62 <frame_sync+0x6>
    2b70:	bf00      	nop
    2b72:	46bd      	mov	sp, r7
    2b74:	bc80      	pop	{r7}
    2b76:	4770      	bx	lr
    2b78:	20000466 	.word	0x20000466

00002b7c <set_palette>:
    2b7c:	b480      	push	{r7}
    2b7e:	b085      	sub	sp, #20
    2b80:	af00      	add	r7, sp, #0
    2b82:	4603      	mov	r3, r0
    2b84:	71fb      	strb	r3, [r7, #7]
    2b86:	79fb      	ldrb	r3, [r7, #7]
    2b88:	f003 0303 	and.w	r3, r3, #3
    2b8c:	71fb      	strb	r3, [r7, #7]
    2b8e:	2300      	movs	r3, #0
    2b90:	60fb      	str	r3, [r7, #12]
    2b92:	e007      	b.n	2ba4 <set_palette+0x28>
    2b94:	4a07      	ldr	r2, [pc, #28]	; (2bb4 <set_palette+0x38>)
    2b96:	68fb      	ldr	r3, [r7, #12]
    2b98:	4413      	add	r3, r2
    2b9a:	79fa      	ldrb	r2, [r7, #7]
    2b9c:	701a      	strb	r2, [r3, #0]
    2b9e:	68fb      	ldr	r3, [r7, #12]
    2ba0:	3301      	adds	r3, #1
    2ba2:	60fb      	str	r3, [r7, #12]
    2ba4:	68fb      	ldr	r3, [r7, #12]
    2ba6:	2b6f      	cmp	r3, #111	; 0x6f
    2ba8:	ddf4      	ble.n	2b94 <set_palette+0x18>
    2baa:	bf00      	nop
    2bac:	3714      	adds	r7, #20
    2bae:	46bd      	mov	sp, r7
    2bb0:	bc80      	pop	{r7}
    2bb2:	4770      	bx	lr
    2bb4:	20002bd0 	.word	0x20002bd0
