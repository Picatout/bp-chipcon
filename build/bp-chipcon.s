
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 91 23 00 00     C...I...O....#..
      20:	91 23 00 00 91 23 00 00 91 23 00 00 55 02 00 00     .#...#...#..U...
      30:	91 23 00 00 91 23 00 00 5b 02 00 00 79 24 00 00     .#...#..[...y$..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 c9 20 00 00     g...m...y.... ..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 91 23 00 00 91 23 00 00 b5 02 00 00     .....#...#......
      80:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..
      90:	91 23 00 00 91 23 00 00 91 23 00 00 bb 02 00 00     .#...#...#......
      a0:	91 23 00 00 c1 26 00 00 91 23 00 00 d5 25 00 00     .#...&...#...%..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 91 23 00 00     .............#..
      c0:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..
      d0:	91 23 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .#..............
      e0:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..
      f0:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..
     100:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..
     110:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..
     120:	91 23 00 00 91 23 00 00 91 23 00 00 91 23 00 00     .#...#...#...#..

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
     18e:	f001 f817 	bl	11c0 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005c 	.word	0x2000005c
     1a0:	20001770 	.word	0x20001770
     1a4:	00003000 	.word	0x00003000
     1a8:	20000000 	.word	0x20000000
     1ac:	2000005c 	.word	0x2000005c
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
     1dc:	f002 f8e0 	bl	23a0 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 f8d4 	bl	23a0 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 f8c8 	bl	23a0 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f8c3 	bl	23a0 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002ce4 	.word	0x00002ce4
     230:	00002cfc 	.word	0x00002cfc
     234:	00002d08 	.word	0x00002d08
     238:	00002d18 	.word	0x00002d18

0000023c <NMI_handler>:
     23c:	f002 f8a8 	bl	2390 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 f8a5 	bl	2390 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 f8a2 	bl	2390 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 f89f 	bl	2390 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 f89c 	bl	2390 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 f899 	bl	2390 <reset_mcu>
     25e:	bf00      	nop
     260:	f002 f896 	bl	2390 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 f893 	bl	2390 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 f890 	bl	2390 <reset_mcu>
     270:	bf00      	nop
     272:	f002 f88d 	bl	2390 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 f88a 	bl	2390 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 f887 	bl	2390 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 f884 	bl	2390 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 f881 	bl	2390 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 f87e 	bl	2390 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 f87b 	bl	2390 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 f878 	bl	2390 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 f875 	bl	2390 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 f872 	bl	2390 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 f86f 	bl	2390 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 f86c 	bl	2390 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 f869 	bl	2390 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 f866 	bl	2390 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 f863 	bl	2390 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 f860 	bl	2390 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 f85d 	bl	2390 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f002 f85a 	bl	2390 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f002 f857 	bl	2390 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f002 f854 	bl	2390 <reset_mcu>
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
     418:	2000005c 	.word	0x2000005c
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
     518:	2000005c 	.word	0x2000005c
     51c:	2000005e 	.word	0x2000005e

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
     584:	2000005e 	.word	0x2000005e
     588:	2000005c 	.word	0x2000005c

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
     6dc:	2000005c 	.word	0x2000005c

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
     6f4:	2000005c 	.word	0x2000005c

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
     718:	2000005c 	.word	0x2000005c
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
     cfa:	2b44      	cmp	r3, #68	; 0x44
     cfc:	d908      	bls.n	d10 <gfx_crlf+0x30>
     cfe:	4b06      	ldr	r3, [pc, #24]	; (d18 <gfx_crlf+0x38>)
     d00:	781b      	ldrb	r3, [r3, #0]
     d02:	3b08      	subs	r3, #8
     d04:	b2da      	uxtb	r2, r3
     d06:	4b04      	ldr	r3, [pc, #16]	; (d18 <gfx_crlf+0x38>)
     d08:	701a      	strb	r2, [r3, #0]
     d0a:	2008      	movs	r0, #8
     d0c:	f000 f9ec 	bl	10e8 <gfx_scrollup>
     d10:	bf00      	nop
     d12:	bd80      	pop	{r7, pc}
     d14:	2000045e 	.word	0x2000045e
     d18:	2000045f 	.word	0x2000045f

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
     d44:	2000045e 	.word	0x2000045e

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
     d5a:	2b14      	cmp	r3, #20
     d5c:	d901      	bls.n	d62 <gfx_locate+0x1a>
     d5e:	2314      	movs	r3, #20
     d60:	71bb      	strb	r3, [r7, #6]
     d62:	79fb      	ldrb	r3, [r7, #7]
     d64:	2b09      	cmp	r3, #9
     d66:	d901      	bls.n	d6c <gfx_locate+0x24>
     d68:	2308      	movs	r3, #8
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
     d90:	2000045e 	.word	0x2000045e
     d94:	2000045f 	.word	0x2000045f

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
     e04:	f000 f8c2 	bl	f8c <gfx_plot>
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
     e36:	2b7a      	cmp	r3, #122	; 0x7a
     e38:	d903      	bls.n	e42 <gfx_putchar+0xaa>
     e3a:	f7ff ff51 	bl	ce0 <gfx_crlf>
     e3e:	e000      	b.n	e42 <gfx_putchar+0xaa>
     e40:	bf00      	nop
     e42:	3720      	adds	r7, #32
     e44:	46bd      	mov	sp, r7
     e46:	bd80      	pop	{r7, pc}
     e48:	000028c4 	.word	0x000028c4
     e4c:	20000000 	.word	0x20000000
     e50:	2000045e 	.word	0x2000045e
     e54:	2000045f 	.word	0x2000045f

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

00000f8c <gfx_plot>:
     f8c:	b4b0      	push	{r4, r5, r7}
     f8e:	b085      	sub	sp, #20
     f90:	af00      	add	r7, sp, #0
     f92:	60f8      	str	r0, [r7, #12]
     f94:	60b9      	str	r1, [r7, #8]
     f96:	4613      	mov	r3, r2
     f98:	71fb      	strb	r3, [r7, #7]
     f9a:	68fb      	ldr	r3, [r7, #12]
     f9c:	2b00      	cmp	r3, #0
     f9e:	db2f      	blt.n	1000 <gfx_plot+0x74>
     fa0:	68fb      	ldr	r3, [r7, #12]
     fa2:	2b7f      	cmp	r3, #127	; 0x7f
     fa4:	dc2c      	bgt.n	1000 <gfx_plot+0x74>
     fa6:	68bb      	ldr	r3, [r7, #8]
     fa8:	2b00      	cmp	r3, #0
     faa:	db29      	blt.n	1000 <gfx_plot+0x74>
     fac:	68bb      	ldr	r3, [r7, #8]
     fae:	2b4b      	cmp	r3, #75	; 0x4b
     fb0:	dc26      	bgt.n	1000 <gfx_plot+0x74>
     fb2:	68bb      	ldr	r3, [r7, #8]
     fb4:	019a      	lsls	r2, r3, #6
     fb6:	68fb      	ldr	r3, [r7, #12]
     fb8:	0fd9      	lsrs	r1, r3, #31
     fba:	440b      	add	r3, r1
     fbc:	105b      	asrs	r3, r3, #1
     fbe:	18d5      	adds	r5, r2, r3
     fc0:	79fb      	ldrb	r3, [r7, #7]
     fc2:	f003 030f 	and.w	r3, r3, #15
     fc6:	71fb      	strb	r3, [r7, #7]
     fc8:	4b10      	ldr	r3, [pc, #64]	; (100c <gfx_plot+0x80>)
     fca:	5d5c      	ldrb	r4, [r3, r5]
     fcc:	68fb      	ldr	r3, [r7, #12]
     fce:	f003 0301 	and.w	r3, r3, #1
     fd2:	2b00      	cmp	r3, #0
     fd4:	d006      	beq.n	fe4 <gfx_plot+0x58>
     fd6:	f024 030f 	bic.w	r3, r4, #15
     fda:	b2dc      	uxtb	r4, r3
     fdc:	79fb      	ldrb	r3, [r7, #7]
     fde:	4323      	orrs	r3, r4
     fe0:	b2dc      	uxtb	r4, r3
     fe2:	e009      	b.n	ff8 <gfx_plot+0x6c>
     fe4:	f004 030f 	and.w	r3, r4, #15
     fe8:	b2dc      	uxtb	r4, r3
     fea:	79fb      	ldrb	r3, [r7, #7]
     fec:	011b      	lsls	r3, r3, #4
     fee:	b25a      	sxtb	r2, r3
     ff0:	b263      	sxtb	r3, r4
     ff2:	4313      	orrs	r3, r2
     ff4:	b25b      	sxtb	r3, r3
     ff6:	b2dc      	uxtb	r4, r3
     ff8:	4b04      	ldr	r3, [pc, #16]	; (100c <gfx_plot+0x80>)
     ffa:	4622      	mov	r2, r4
     ffc:	555a      	strb	r2, [r3, r5]
     ffe:	e000      	b.n	1002 <gfx_plot+0x76>
    1000:	bf00      	nop
    1002:	3714      	adds	r7, #20
    1004:	46bd      	mov	sp, r7
    1006:	bcb0      	pop	{r4, r5, r7}
    1008:	4770      	bx	lr
    100a:	bf00      	nop
    100c:	20000470 	.word	0x20000470

00001010 <gfx_rectangle>:
    1010:	b580      	push	{r7, lr}
    1012:	b086      	sub	sp, #24
    1014:	af00      	add	r7, sp, #0
    1016:	60f8      	str	r0, [r7, #12]
    1018:	60b9      	str	r1, [r7, #8]
    101a:	607a      	str	r2, [r7, #4]
    101c:	603b      	str	r3, [r7, #0]
    101e:	68fa      	ldr	r2, [r7, #12]
    1020:	687b      	ldr	r3, [r7, #4]
    1022:	429a      	cmp	r2, r3
    1024:	dd05      	ble.n	1032 <gfx_rectangle+0x22>
    1026:	68fb      	ldr	r3, [r7, #12]
    1028:	617b      	str	r3, [r7, #20]
    102a:	687b      	ldr	r3, [r7, #4]
    102c:	60fb      	str	r3, [r7, #12]
    102e:	697b      	ldr	r3, [r7, #20]
    1030:	607b      	str	r3, [r7, #4]
    1032:	68ba      	ldr	r2, [r7, #8]
    1034:	683b      	ldr	r3, [r7, #0]
    1036:	429a      	cmp	r2, r3
    1038:	dd05      	ble.n	1046 <gfx_rectangle+0x36>
    103a:	68bb      	ldr	r3, [r7, #8]
    103c:	617b      	str	r3, [r7, #20]
    103e:	683b      	ldr	r3, [r7, #0]
    1040:	60bb      	str	r3, [r7, #8]
    1042:	697b      	ldr	r3, [r7, #20]
    1044:	603b      	str	r3, [r7, #0]
    1046:	68fb      	ldr	r3, [r7, #12]
    1048:	617b      	str	r3, [r7, #20]
    104a:	e00c      	b.n	1066 <gfx_rectangle+0x56>
    104c:	2207      	movs	r2, #7
    104e:	68b9      	ldr	r1, [r7, #8]
    1050:	6978      	ldr	r0, [r7, #20]
    1052:	f7ff ff9b 	bl	f8c <gfx_plot>
    1056:	2207      	movs	r2, #7
    1058:	6839      	ldr	r1, [r7, #0]
    105a:	6978      	ldr	r0, [r7, #20]
    105c:	f7ff ff96 	bl	f8c <gfx_plot>
    1060:	697b      	ldr	r3, [r7, #20]
    1062:	3301      	adds	r3, #1
    1064:	617b      	str	r3, [r7, #20]
    1066:	697a      	ldr	r2, [r7, #20]
    1068:	687b      	ldr	r3, [r7, #4]
    106a:	429a      	cmp	r2, r3
    106c:	ddee      	ble.n	104c <gfx_rectangle+0x3c>
    106e:	68bb      	ldr	r3, [r7, #8]
    1070:	3301      	adds	r3, #1
    1072:	60bb      	str	r3, [r7, #8]
    1074:	e00c      	b.n	1090 <gfx_rectangle+0x80>
    1076:	2207      	movs	r2, #7
    1078:	68b9      	ldr	r1, [r7, #8]
    107a:	68f8      	ldr	r0, [r7, #12]
    107c:	f7ff ff86 	bl	f8c <gfx_plot>
    1080:	2207      	movs	r2, #7
    1082:	68b9      	ldr	r1, [r7, #8]
    1084:	6878      	ldr	r0, [r7, #4]
    1086:	f7ff ff81 	bl	f8c <gfx_plot>
    108a:	68bb      	ldr	r3, [r7, #8]
    108c:	3301      	adds	r3, #1
    108e:	60bb      	str	r3, [r7, #8]
    1090:	68ba      	ldr	r2, [r7, #8]
    1092:	683b      	ldr	r3, [r7, #0]
    1094:	429a      	cmp	r2, r3
    1096:	dbee      	blt.n	1076 <gfx_rectangle+0x66>
    1098:	bf00      	nop
    109a:	3718      	adds	r7, #24
    109c:	46bd      	mov	sp, r7
    109e:	bd80      	pop	{r7, pc}

000010a0 <gfx_cls>:
    10a0:	b480      	push	{r7}
    10a2:	b083      	sub	sp, #12
    10a4:	af00      	add	r7, sp, #0
    10a6:	2300      	movs	r3, #0
    10a8:	607b      	str	r3, [r7, #4]
    10aa:	e007      	b.n	10bc <gfx_cls+0x1c>
    10ac:	4a0b      	ldr	r2, [pc, #44]	; (10dc <gfx_cls+0x3c>)
    10ae:	687b      	ldr	r3, [r7, #4]
    10b0:	4413      	add	r3, r2
    10b2:	2200      	movs	r2, #0
    10b4:	701a      	strb	r2, [r3, #0]
    10b6:	687b      	ldr	r3, [r7, #4]
    10b8:	3301      	adds	r3, #1
    10ba:	607b      	str	r3, [r7, #4]
    10bc:	687b      	ldr	r3, [r7, #4]
    10be:	f5b3 5f98 	cmp.w	r3, #4864	; 0x1300
    10c2:	dbf3      	blt.n	10ac <gfx_cls+0xc>
    10c4:	4b06      	ldr	r3, [pc, #24]	; (10e0 <gfx_cls+0x40>)
    10c6:	2200      	movs	r2, #0
    10c8:	701a      	strb	r2, [r3, #0]
    10ca:	4b06      	ldr	r3, [pc, #24]	; (10e4 <gfx_cls+0x44>)
    10cc:	2200      	movs	r2, #0
    10ce:	701a      	strb	r2, [r3, #0]
    10d0:	bf00      	nop
    10d2:	370c      	adds	r7, #12
    10d4:	46bd      	mov	sp, r7
    10d6:	bc80      	pop	{r7}
    10d8:	4770      	bx	lr
    10da:	bf00      	nop
    10dc:	20000470 	.word	0x20000470
    10e0:	2000045e 	.word	0x2000045e
    10e4:	2000045f 	.word	0x2000045f

000010e8 <gfx_scrollup>:
    10e8:	b480      	push	{r7}
    10ea:	b087      	sub	sp, #28
    10ec:	af00      	add	r7, sp, #0
    10ee:	4603      	mov	r3, r0
    10f0:	71fb      	strb	r3, [r7, #7]
    10f2:	79fb      	ldrb	r3, [r7, #7]
    10f4:	019b      	lsls	r3, r3, #6
    10f6:	4a15      	ldr	r2, [pc, #84]	; (114c <gfx_scrollup+0x64>)
    10f8:	4413      	add	r3, r2
    10fa:	617b      	str	r3, [r7, #20]
    10fc:	4b13      	ldr	r3, [pc, #76]	; (114c <gfx_scrollup+0x64>)
    10fe:	613b      	str	r3, [r7, #16]
    1100:	79fb      	ldrb	r3, [r7, #7]
    1102:	f1c3 034c 	rsb	r3, r3, #76	; 0x4c
    1106:	019b      	lsls	r3, r3, #6
    1108:	60fb      	str	r3, [r7, #12]
    110a:	e007      	b.n	111c <gfx_scrollup+0x34>
    110c:	693b      	ldr	r3, [r7, #16]
    110e:	1c5a      	adds	r2, r3, #1
    1110:	613a      	str	r2, [r7, #16]
    1112:	697a      	ldr	r2, [r7, #20]
    1114:	1c51      	adds	r1, r2, #1
    1116:	6179      	str	r1, [r7, #20]
    1118:	7812      	ldrb	r2, [r2, #0]
    111a:	701a      	strb	r2, [r3, #0]
    111c:	68fb      	ldr	r3, [r7, #12]
    111e:	1e5a      	subs	r2, r3, #1
    1120:	60fa      	str	r2, [r7, #12]
    1122:	2b00      	cmp	r3, #0
    1124:	d1f2      	bne.n	110c <gfx_scrollup+0x24>
    1126:	79fb      	ldrb	r3, [r7, #7]
    1128:	019b      	lsls	r3, r3, #6
    112a:	60fb      	str	r3, [r7, #12]
    112c:	e004      	b.n	1138 <gfx_scrollup+0x50>
    112e:	693b      	ldr	r3, [r7, #16]
    1130:	1c5a      	adds	r2, r3, #1
    1132:	613a      	str	r2, [r7, #16]
    1134:	2200      	movs	r2, #0
    1136:	701a      	strb	r2, [r3, #0]
    1138:	68fb      	ldr	r3, [r7, #12]
    113a:	1e5a      	subs	r2, r3, #1
    113c:	60fa      	str	r2, [r7, #12]
    113e:	2b00      	cmp	r3, #0
    1140:	d1f5      	bne.n	112e <gfx_scrollup+0x46>
    1142:	bf00      	nop
    1144:	371c      	adds	r7, #28
    1146:	46bd      	mov	sp, r7
    1148:	bc80      	pop	{r7}
    114a:	4770      	bx	lr
    114c:	20000470 	.word	0x20000470

00001150 <set_sysclock>:
    1150:	b480      	push	{r7}
    1152:	af00      	add	r7, sp, #0
    1154:	4a18      	ldr	r2, [pc, #96]	; (11b8 <set_sysclock+0x68>)
    1156:	4b18      	ldr	r3, [pc, #96]	; (11b8 <set_sysclock+0x68>)
    1158:	681b      	ldr	r3, [r3, #0]
    115a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    115e:	6013      	str	r3, [r2, #0]
    1160:	bf00      	nop
    1162:	4b15      	ldr	r3, [pc, #84]	; (11b8 <set_sysclock+0x68>)
    1164:	681b      	ldr	r3, [r3, #0]
    1166:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    116a:	2b00      	cmp	r3, #0
    116c:	d0f9      	beq.n	1162 <set_sysclock+0x12>
    116e:	4a12      	ldr	r2, [pc, #72]	; (11b8 <set_sysclock+0x68>)
    1170:	4b11      	ldr	r3, [pc, #68]	; (11b8 <set_sysclock+0x68>)
    1172:	685b      	ldr	r3, [r3, #4]
    1174:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1178:	6053      	str	r3, [r2, #4]
    117a:	4a0f      	ldr	r2, [pc, #60]	; (11b8 <set_sysclock+0x68>)
    117c:	4b0e      	ldr	r3, [pc, #56]	; (11b8 <set_sysclock+0x68>)
    117e:	681b      	ldr	r3, [r3, #0]
    1180:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1184:	6013      	str	r3, [r2, #0]
    1186:	bf00      	nop
    1188:	4b0b      	ldr	r3, [pc, #44]	; (11b8 <set_sysclock+0x68>)
    118a:	681b      	ldr	r3, [r3, #0]
    118c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1190:	2b00      	cmp	r3, #0
    1192:	d0f9      	beq.n	1188 <set_sysclock+0x38>
    1194:	4a09      	ldr	r2, [pc, #36]	; (11bc <set_sysclock+0x6c>)
    1196:	4b09      	ldr	r3, [pc, #36]	; (11bc <set_sysclock+0x6c>)
    1198:	681b      	ldr	r3, [r3, #0]
    119a:	f043 0312 	orr.w	r3, r3, #18
    119e:	6013      	str	r3, [r2, #0]
    11a0:	4a05      	ldr	r2, [pc, #20]	; (11b8 <set_sysclock+0x68>)
    11a2:	4b05      	ldr	r3, [pc, #20]	; (11b8 <set_sysclock+0x68>)
    11a4:	685b      	ldr	r3, [r3, #4]
    11a6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    11aa:	f043 0302 	orr.w	r3, r3, #2
    11ae:	6053      	str	r3, [r2, #4]
    11b0:	bf00      	nop
    11b2:	46bd      	mov	sp, r7
    11b4:	bc80      	pop	{r7}
    11b6:	4770      	bx	lr
    11b8:	40021000 	.word	0x40021000
    11bc:	40022000 	.word	0x40022000

000011c0 <main>:
    11c0:	b580      	push	{r7, lr}
    11c2:	b084      	sub	sp, #16
    11c4:	af00      	add	r7, sp, #0
    11c6:	f7ff ffc3 	bl	1150 <set_sysclock>
    11ca:	f001 f92d 	bl	2428 <config_systicks>
    11ce:	4b31      	ldr	r3, [pc, #196]	; (1294 <main+0xd4>)
    11d0:	f640 021d 	movw	r2, #2077	; 0x81d
    11d4:	619a      	str	r2, [r3, #24]
    11d6:	2206      	movs	r2, #6
    11d8:	210d      	movs	r1, #13
    11da:	482f      	ldr	r0, [pc, #188]	; (1298 <main+0xd8>)
    11dc:	f7ff fd09 	bl	bf2 <config_pin>
    11e0:	4a2d      	ldr	r2, [pc, #180]	; (1298 <main+0xd8>)
    11e2:	4b2d      	ldr	r3, [pc, #180]	; (1298 <main+0xd8>)
    11e4:	68db      	ldr	r3, [r3, #12]
    11e6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    11ea:	60d3      	str	r3, [r2, #12]
    11ec:	f001 f95c 	bl	24a8 <tvout_init>
    11f0:	f7ff ff56 	bl	10a0 <gfx_cls>
    11f4:	2300      	movs	r3, #0
    11f6:	60bb      	str	r3, [r7, #8]
    11f8:	e01b      	b.n	1232 <main+0x72>
    11fa:	230f      	movs	r3, #15
    11fc:	71fb      	strb	r3, [r7, #7]
    11fe:	2300      	movs	r3, #0
    1200:	60fb      	str	r3, [r7, #12]
    1202:	e010      	b.n	1226 <main+0x66>
    1204:	79fb      	ldrb	r3, [r7, #7]
    1206:	461a      	mov	r2, r3
    1208:	68b9      	ldr	r1, [r7, #8]
    120a:	68f8      	ldr	r0, [r7, #12]
    120c:	f7ff febe 	bl	f8c <gfx_plot>
    1210:	68fb      	ldr	r3, [r7, #12]
    1212:	f003 0307 	and.w	r3, r3, #7
    1216:	2b00      	cmp	r3, #0
    1218:	d102      	bne.n	1220 <main+0x60>
    121a:	79fb      	ldrb	r3, [r7, #7]
    121c:	3b01      	subs	r3, #1
    121e:	71fb      	strb	r3, [r7, #7]
    1220:	68fb      	ldr	r3, [r7, #12]
    1222:	3301      	adds	r3, #1
    1224:	60fb      	str	r3, [r7, #12]
    1226:	68fb      	ldr	r3, [r7, #12]
    1228:	2b7f      	cmp	r3, #127	; 0x7f
    122a:	ddeb      	ble.n	1204 <main+0x44>
    122c:	68bb      	ldr	r3, [r7, #8]
    122e:	3301      	adds	r3, #1
    1230:	60bb      	str	r3, [r7, #8]
    1232:	68bb      	ldr	r3, [r7, #8]
    1234:	2b4b      	cmp	r3, #75	; 0x4b
    1236:	dde0      	ble.n	11fa <main+0x3a>
    1238:	4818      	ldr	r0, [pc, #96]	; (129c <main+0xdc>)
    123a:	f7ff fe0d 	bl	e58 <gfx_print>
    123e:	4b18      	ldr	r3, [pc, #96]	; (12a0 <main+0xe0>)
    1240:	681b      	ldr	r3, [r3, #0]
    1242:	210a      	movs	r1, #10
    1244:	4618      	mov	r0, r3
    1246:	f7ff fe2a 	bl	e9e <gfx_print_int>
    124a:	2300      	movs	r3, #0
    124c:	60fb      	str	r3, [r7, #12]
    124e:	4b15      	ldr	r3, [pc, #84]	; (12a4 <main+0xe4>)
    1250:	f241 3288 	movw	r2, #5000	; 0x1388
    1254:	601a      	str	r2, [r3, #0]
    1256:	e002      	b.n	125e <main+0x9e>
    1258:	68fb      	ldr	r3, [r7, #12]
    125a:	3301      	adds	r3, #1
    125c:	60fb      	str	r3, [r7, #12]
    125e:	4b11      	ldr	r3, [pc, #68]	; (12a4 <main+0xe4>)
    1260:	681b      	ldr	r3, [r3, #0]
    1262:	2b00      	cmp	r3, #0
    1264:	d1f8      	bne.n	1258 <main+0x98>
    1266:	4b0e      	ldr	r3, [pc, #56]	; (12a0 <main+0xe0>)
    1268:	681b      	ldr	r3, [r3, #0]
    126a:	3301      	adds	r3, #1
    126c:	4a0c      	ldr	r2, [pc, #48]	; (12a0 <main+0xe0>)
    126e:	6013      	str	r3, [r2, #0]
    1270:	4b0b      	ldr	r3, [pc, #44]	; (12a0 <main+0xe0>)
    1272:	681b      	ldr	r3, [r3, #0]
    1274:	f003 0303 	and.w	r3, r3, #3
    1278:	4a09      	ldr	r2, [pc, #36]	; (12a0 <main+0xe0>)
    127a:	6013      	str	r3, [r2, #0]
    127c:	2100      	movs	r1, #0
    127e:	2001      	movs	r0, #1
    1280:	f7ff fd62 	bl	d48 <gfx_locate>
    1284:	4b06      	ldr	r3, [pc, #24]	; (12a0 <main+0xe0>)
    1286:	681b      	ldr	r3, [r3, #0]
    1288:	210a      	movs	r1, #10
    128a:	4618      	mov	r0, r3
    128c:	f7ff fe07 	bl	e9e <gfx_print_int>
    1290:	e7db      	b.n	124a <main+0x8a>
    1292:	bf00      	nop
    1294:	40021000 	.word	0x40021000
    1298:	40011000 	.word	0x40011000
    129c:	00002bec 	.word	0x00002bec
    12a0:	20000058 	.word	0x20000058
    12a4:	20000464 	.word	0x20000464

000012a8 <enable_interrupt>:
    12a8:	b480      	push	{r7}
    12aa:	b083      	sub	sp, #12
    12ac:	af00      	add	r7, sp, #0
    12ae:	6078      	str	r0, [r7, #4]
    12b0:	687b      	ldr	r3, [r7, #4]
    12b2:	2b3b      	cmp	r3, #59	; 0x3b
    12b4:	dc17      	bgt.n	12e6 <enable_interrupt+0x3e>
    12b6:	687b      	ldr	r3, [r7, #4]
    12b8:	115b      	asrs	r3, r3, #5
    12ba:	009b      	lsls	r3, r3, #2
    12bc:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    12c0:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    12c4:	687a      	ldr	r2, [r7, #4]
    12c6:	1152      	asrs	r2, r2, #5
    12c8:	0092      	lsls	r2, r2, #2
    12ca:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    12ce:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    12d2:	6812      	ldr	r2, [r2, #0]
    12d4:	6879      	ldr	r1, [r7, #4]
    12d6:	f001 011f 	and.w	r1, r1, #31
    12da:	2001      	movs	r0, #1
    12dc:	fa00 f101 	lsl.w	r1, r0, r1
    12e0:	430a      	orrs	r2, r1
    12e2:	601a      	str	r2, [r3, #0]
    12e4:	e000      	b.n	12e8 <enable_interrupt+0x40>
    12e6:	bf00      	nop
    12e8:	370c      	adds	r7, #12
    12ea:	46bd      	mov	sp, r7
    12ec:	bc80      	pop	{r7}
    12ee:	4770      	bx	lr

000012f0 <disable_interrupt>:
    12f0:	b480      	push	{r7}
    12f2:	b083      	sub	sp, #12
    12f4:	af00      	add	r7, sp, #0
    12f6:	6078      	str	r0, [r7, #4]
    12f8:	687b      	ldr	r3, [r7, #4]
    12fa:	2b3b      	cmp	r3, #59	; 0x3b
    12fc:	dc0c      	bgt.n	1318 <disable_interrupt+0x28>
    12fe:	687b      	ldr	r3, [r7, #4]
    1300:	115b      	asrs	r3, r3, #5
    1302:	009a      	lsls	r2, r3, #2
    1304:	4b07      	ldr	r3, [pc, #28]	; (1324 <disable_interrupt+0x34>)
    1306:	4413      	add	r3, r2
    1308:	687a      	ldr	r2, [r7, #4]
    130a:	f002 021f 	and.w	r2, r2, #31
    130e:	2101      	movs	r1, #1
    1310:	fa01 f202 	lsl.w	r2, r1, r2
    1314:	601a      	str	r2, [r3, #0]
    1316:	e000      	b.n	131a <disable_interrupt+0x2a>
    1318:	bf00      	nop
    131a:	370c      	adds	r7, #12
    131c:	46bd      	mov	sp, r7
    131e:	bc80      	pop	{r7}
    1320:	4770      	bx	lr
    1322:	bf00      	nop
    1324:	e000e180 	.word	0xe000e180

00001328 <get_pending>:
    1328:	b480      	push	{r7}
    132a:	b083      	sub	sp, #12
    132c:	af00      	add	r7, sp, #0
    132e:	6078      	str	r0, [r7, #4]
    1330:	687b      	ldr	r3, [r7, #4]
    1332:	2b3b      	cmp	r3, #59	; 0x3b
    1334:	dd01      	ble.n	133a <get_pending+0x12>
    1336:	2300      	movs	r3, #0
    1338:	e00c      	b.n	1354 <get_pending+0x2c>
    133a:	687b      	ldr	r3, [r7, #4]
    133c:	115b      	asrs	r3, r3, #5
    133e:	009a      	lsls	r2, r3, #2
    1340:	4b07      	ldr	r3, [pc, #28]	; (1360 <get_pending+0x38>)
    1342:	4413      	add	r3, r2
    1344:	681b      	ldr	r3, [r3, #0]
    1346:	687a      	ldr	r2, [r7, #4]
    1348:	f002 021f 	and.w	r2, r2, #31
    134c:	2101      	movs	r1, #1
    134e:	fa01 f202 	lsl.w	r2, r1, r2
    1352:	4013      	ands	r3, r2
    1354:	4618      	mov	r0, r3
    1356:	370c      	adds	r7, #12
    1358:	46bd      	mov	sp, r7
    135a:	bc80      	pop	{r7}
    135c:	4770      	bx	lr
    135e:	bf00      	nop
    1360:	e000e280 	.word	0xe000e280

00001364 <get_active>:
    1364:	b480      	push	{r7}
    1366:	b083      	sub	sp, #12
    1368:	af00      	add	r7, sp, #0
    136a:	6078      	str	r0, [r7, #4]
    136c:	687b      	ldr	r3, [r7, #4]
    136e:	2b3b      	cmp	r3, #59	; 0x3b
    1370:	dd01      	ble.n	1376 <get_active+0x12>
    1372:	2300      	movs	r3, #0
    1374:	e00e      	b.n	1394 <get_active+0x30>
    1376:	687b      	ldr	r3, [r7, #4]
    1378:	115b      	asrs	r3, r3, #5
    137a:	009b      	lsls	r3, r3, #2
    137c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1380:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1384:	681b      	ldr	r3, [r3, #0]
    1386:	687a      	ldr	r2, [r7, #4]
    1388:	f002 021f 	and.w	r2, r2, #31
    138c:	2101      	movs	r1, #1
    138e:	fa01 f202 	lsl.w	r2, r1, r2
    1392:	4013      	ands	r3, r2
    1394:	4618      	mov	r0, r3
    1396:	370c      	adds	r7, #12
    1398:	46bd      	mov	sp, r7
    139a:	bc80      	pop	{r7}
    139c:	4770      	bx	lr

0000139e <set_pending>:
    139e:	b480      	push	{r7}
    13a0:	b083      	sub	sp, #12
    13a2:	af00      	add	r7, sp, #0
    13a4:	6078      	str	r0, [r7, #4]
    13a6:	687b      	ldr	r3, [r7, #4]
    13a8:	2b3b      	cmp	r3, #59	; 0x3b
    13aa:	dc17      	bgt.n	13dc <set_pending+0x3e>
    13ac:	687b      	ldr	r3, [r7, #4]
    13ae:	115b      	asrs	r3, r3, #5
    13b0:	009b      	lsls	r3, r3, #2
    13b2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    13b6:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    13ba:	687a      	ldr	r2, [r7, #4]
    13bc:	1152      	asrs	r2, r2, #5
    13be:	0092      	lsls	r2, r2, #2
    13c0:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    13c4:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    13c8:	6812      	ldr	r2, [r2, #0]
    13ca:	6879      	ldr	r1, [r7, #4]
    13cc:	f001 011f 	and.w	r1, r1, #31
    13d0:	2001      	movs	r0, #1
    13d2:	fa00 f101 	lsl.w	r1, r0, r1
    13d6:	430a      	orrs	r2, r1
    13d8:	601a      	str	r2, [r3, #0]
    13da:	e000      	b.n	13de <set_pending+0x40>
    13dc:	bf00      	nop
    13de:	370c      	adds	r7, #12
    13e0:	46bd      	mov	sp, r7
    13e2:	bc80      	pop	{r7}
    13e4:	4770      	bx	lr

000013e6 <clear_pending>:
    13e6:	b480      	push	{r7}
    13e8:	b083      	sub	sp, #12
    13ea:	af00      	add	r7, sp, #0
    13ec:	6078      	str	r0, [r7, #4]
    13ee:	687b      	ldr	r3, [r7, #4]
    13f0:	2b3b      	cmp	r3, #59	; 0x3b
    13f2:	dc0c      	bgt.n	140e <clear_pending+0x28>
    13f4:	687b      	ldr	r3, [r7, #4]
    13f6:	115b      	asrs	r3, r3, #5
    13f8:	009a      	lsls	r2, r3, #2
    13fa:	4b07      	ldr	r3, [pc, #28]	; (1418 <clear_pending+0x32>)
    13fc:	4413      	add	r3, r2
    13fe:	687a      	ldr	r2, [r7, #4]
    1400:	f002 021f 	and.w	r2, r2, #31
    1404:	2101      	movs	r1, #1
    1406:	fa01 f202 	lsl.w	r2, r1, r2
    140a:	601a      	str	r2, [r3, #0]
    140c:	e000      	b.n	1410 <clear_pending+0x2a>
    140e:	bf00      	nop
    1410:	370c      	adds	r7, #12
    1412:	46bd      	mov	sp, r7
    1414:	bc80      	pop	{r7}
    1416:	4770      	bx	lr
    1418:	e000e280 	.word	0xe000e280

0000141c <set_int_priority>:
    141c:	b480      	push	{r7}
    141e:	b083      	sub	sp, #12
    1420:	af00      	add	r7, sp, #0
    1422:	6078      	str	r0, [r7, #4]
    1424:	6039      	str	r1, [r7, #0]
    1426:	687b      	ldr	r3, [r7, #4]
    1428:	2b00      	cmp	r3, #0
    142a:	db0d      	blt.n	1448 <set_int_priority+0x2c>
    142c:	687b      	ldr	r3, [r7, #4]
    142e:	2b3b      	cmp	r3, #59	; 0x3b
    1430:	dc0a      	bgt.n	1448 <set_int_priority+0x2c>
    1432:	687b      	ldr	r3, [r7, #4]
    1434:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1438:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    143c:	683a      	ldr	r2, [r7, #0]
    143e:	b2d2      	uxtb	r2, r2
    1440:	0112      	lsls	r2, r2, #4
    1442:	b2d2      	uxtb	r2, r2
    1444:	701a      	strb	r2, [r3, #0]
    1446:	e012      	b.n	146e <set_int_priority+0x52>
    1448:	687b      	ldr	r3, [r7, #4]
    144a:	2b00      	cmp	r3, #0
    144c:	da0f      	bge.n	146e <set_int_priority+0x52>
    144e:	687b      	ldr	r3, [r7, #4]
    1450:	f113 0f0f 	cmn.w	r3, #15
    1454:	db0b      	blt.n	146e <set_int_priority+0x52>
    1456:	687a      	ldr	r2, [r7, #4]
    1458:	f06f 0303 	mvn.w	r3, #3
    145c:	1a9b      	subs	r3, r3, r2
    145e:	461a      	mov	r2, r3
    1460:	4b05      	ldr	r3, [pc, #20]	; (1478 <set_int_priority+0x5c>)
    1462:	4413      	add	r3, r2
    1464:	683a      	ldr	r2, [r7, #0]
    1466:	b2d2      	uxtb	r2, r2
    1468:	0112      	lsls	r2, r2, #4
    146a:	b2d2      	uxtb	r2, r2
    146c:	701a      	strb	r2, [r3, #0]
    146e:	bf00      	nop
    1470:	370c      	adds	r7, #12
    1472:	46bd      	mov	sp, r7
    1474:	bc80      	pop	{r7}
    1476:	4770      	bx	lr
    1478:	e000ed18 	.word	0xe000ed18

0000147c <leap_year>:
    147c:	b480      	push	{r7}
    147e:	b083      	sub	sp, #12
    1480:	af00      	add	r7, sp, #0
    1482:	6078      	str	r0, [r7, #4]
    1484:	687b      	ldr	r3, [r7, #4]
    1486:	f003 0303 	and.w	r3, r3, #3
    148a:	2b00      	cmp	r3, #0
    148c:	d11a      	bne.n	14c4 <leap_year+0x48>
    148e:	687a      	ldr	r2, [r7, #4]
    1490:	4b0f      	ldr	r3, [pc, #60]	; (14d0 <leap_year+0x54>)
    1492:	fba3 1302 	umull	r1, r3, r3, r2
    1496:	095b      	lsrs	r3, r3, #5
    1498:	2164      	movs	r1, #100	; 0x64
    149a:	fb01 f303 	mul.w	r3, r1, r3
    149e:	1ad3      	subs	r3, r2, r3
    14a0:	2b00      	cmp	r3, #0
    14a2:	d10d      	bne.n	14c0 <leap_year+0x44>
    14a4:	687a      	ldr	r2, [r7, #4]
    14a6:	4b0a      	ldr	r3, [pc, #40]	; (14d0 <leap_year+0x54>)
    14a8:	fba3 1302 	umull	r1, r3, r3, r2
    14ac:	09db      	lsrs	r3, r3, #7
    14ae:	f44f 71c8 	mov.w	r1, #400	; 0x190
    14b2:	fb01 f303 	mul.w	r3, r1, r3
    14b6:	1ad3      	subs	r3, r2, r3
    14b8:	2b00      	cmp	r3, #0
    14ba:	d001      	beq.n	14c0 <leap_year+0x44>
    14bc:	2300      	movs	r3, #0
    14be:	e002      	b.n	14c6 <leap_year+0x4a>
    14c0:	2301      	movs	r3, #1
    14c2:	e000      	b.n	14c6 <leap_year+0x4a>
    14c4:	2300      	movs	r3, #0
    14c6:	4618      	mov	r0, r3
    14c8:	370c      	adds	r7, #12
    14ca:	46bd      	mov	sp, r7
    14cc:	bc80      	pop	{r7}
    14ce:	4770      	bx	lr
    14d0:	51eb851f 	.word	0x51eb851f

000014d4 <sec_per_month>:
    14d4:	b480      	push	{r7}
    14d6:	b085      	sub	sp, #20
    14d8:	af00      	add	r7, sp, #0
    14da:	6078      	str	r0, [r7, #4]
    14dc:	6039      	str	r1, [r7, #0]
    14de:	4a0d      	ldr	r2, [pc, #52]	; (1514 <sec_per_month+0x40>)
    14e0:	683b      	ldr	r3, [r7, #0]
    14e2:	4413      	add	r3, r2
    14e4:	781b      	ldrb	r3, [r3, #0]
    14e6:	461a      	mov	r2, r3
    14e8:	4b0b      	ldr	r3, [pc, #44]	; (1518 <sec_per_month+0x44>)
    14ea:	fb03 f302 	mul.w	r3, r3, r2
    14ee:	60fb      	str	r3, [r7, #12]
    14f0:	683b      	ldr	r3, [r7, #0]
    14f2:	2b02      	cmp	r3, #2
    14f4:	d108      	bne.n	1508 <sec_per_month+0x34>
    14f6:	687b      	ldr	r3, [r7, #4]
    14f8:	2b00      	cmp	r3, #0
    14fa:	d005      	beq.n	1508 <sec_per_month+0x34>
    14fc:	68fb      	ldr	r3, [r7, #12]
    14fe:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1502:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    1506:	60fb      	str	r3, [r7, #12]
    1508:	68fb      	ldr	r3, [r7, #12]
    150a:	4618      	mov	r0, r3
    150c:	3714      	adds	r7, #20
    150e:	46bd      	mov	sp, r7
    1510:	bc80      	pop	{r7}
    1512:	4770      	bx	lr
    1514:	00002cac 	.word	0x00002cac
    1518:	00015180 	.word	0x00015180

0000151c <get_date_time>:
    151c:	b580      	push	{r7, lr}
    151e:	b086      	sub	sp, #24
    1520:	af00      	add	r7, sp, #0
    1522:	6078      	str	r0, [r7, #4]
    1524:	4b66      	ldr	r3, [pc, #408]	; (16c0 <get_date_time+0x1a4>)
    1526:	699b      	ldr	r3, [r3, #24]
    1528:	041a      	lsls	r2, r3, #16
    152a:	4b65      	ldr	r3, [pc, #404]	; (16c0 <get_date_time+0x1a4>)
    152c:	69db      	ldr	r3, [r3, #28]
    152e:	4413      	add	r3, r2
    1530:	617b      	str	r3, [r7, #20]
    1532:	687b      	ldr	r3, [r7, #4]
    1534:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1538:	811a      	strh	r2, [r3, #8]
    153a:	f240 70b2 	movw	r0, #1970	; 0x7b2
    153e:	f7ff ff9d 	bl	147c <leap_year>
    1542:	6138      	str	r0, [r7, #16]
    1544:	e019      	b.n	157a <get_date_time+0x5e>
    1546:	693b      	ldr	r3, [r7, #16]
    1548:	2b00      	cmp	r3, #0
    154a:	d006      	beq.n	155a <get_date_time+0x3e>
    154c:	697b      	ldr	r3, [r7, #20]
    154e:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    1552:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    1556:	617b      	str	r3, [r7, #20]
    1558:	e003      	b.n	1562 <get_date_time+0x46>
    155a:	697a      	ldr	r2, [r7, #20]
    155c:	4b59      	ldr	r3, [pc, #356]	; (16c4 <get_date_time+0x1a8>)
    155e:	4413      	add	r3, r2
    1560:	617b      	str	r3, [r7, #20]
    1562:	687b      	ldr	r3, [r7, #4]
    1564:	891b      	ldrh	r3, [r3, #8]
    1566:	3301      	adds	r3, #1
    1568:	b29a      	uxth	r2, r3
    156a:	687b      	ldr	r3, [r7, #4]
    156c:	811a      	strh	r2, [r3, #8]
    156e:	687b      	ldr	r3, [r7, #4]
    1570:	891b      	ldrh	r3, [r3, #8]
    1572:	4618      	mov	r0, r3
    1574:	f7ff ff82 	bl	147c <leap_year>
    1578:	6138      	str	r0, [r7, #16]
    157a:	693b      	ldr	r3, [r7, #16]
    157c:	2b00      	cmp	r3, #0
    157e:	d103      	bne.n	1588 <get_date_time+0x6c>
    1580:	697b      	ldr	r3, [r7, #20]
    1582:	4a51      	ldr	r2, [pc, #324]	; (16c8 <get_date_time+0x1ac>)
    1584:	4293      	cmp	r3, r2
    1586:	d8de      	bhi.n	1546 <get_date_time+0x2a>
    1588:	693b      	ldr	r3, [r7, #16]
    158a:	2b00      	cmp	r3, #0
    158c:	d003      	beq.n	1596 <get_date_time+0x7a>
    158e:	697b      	ldr	r3, [r7, #20]
    1590:	4a4e      	ldr	r2, [pc, #312]	; (16cc <get_date_time+0x1b0>)
    1592:	4293      	cmp	r3, r2
    1594:	d8d7      	bhi.n	1546 <get_date_time+0x2a>
    1596:	687a      	ldr	r2, [r7, #4]
    1598:	8853      	ldrh	r3, [r2, #2]
    159a:	2101      	movs	r1, #1
    159c:	f361 1389 	bfi	r3, r1, #6, #4
    15a0:	8053      	strh	r3, [r2, #2]
    15a2:	687a      	ldr	r2, [r7, #4]
    15a4:	7893      	ldrb	r3, [r2, #2]
    15a6:	2101      	movs	r1, #1
    15a8:	f361 0345 	bfi	r3, r1, #1, #5
    15ac:	7093      	strb	r3, [r2, #2]
    15ae:	687a      	ldr	r2, [r7, #4]
    15b0:	6813      	ldr	r3, [r2, #0]
    15b2:	f36f 3310 	bfc	r3, #12, #5
    15b6:	6013      	str	r3, [r2, #0]
    15b8:	687a      	ldr	r2, [r7, #4]
    15ba:	8813      	ldrh	r3, [r2, #0]
    15bc:	f36f 138b 	bfc	r3, #6, #6
    15c0:	8013      	strh	r3, [r2, #0]
    15c2:	687a      	ldr	r2, [r7, #4]
    15c4:	7813      	ldrb	r3, [r2, #0]
    15c6:	f36f 0305 	bfc	r3, #0, #6
    15ca:	7013      	strb	r3, [r2, #0]
    15cc:	e011      	b.n	15f2 <get_date_time+0xd6>
    15ce:	687b      	ldr	r3, [r7, #4]
    15d0:	885b      	ldrh	r3, [r3, #2]
    15d2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    15d6:	b2db      	uxtb	r3, r3
    15d8:	3301      	adds	r3, #1
    15da:	f003 030f 	and.w	r3, r3, #15
    15de:	b2d9      	uxtb	r1, r3
    15e0:	687a      	ldr	r2, [r7, #4]
    15e2:	8853      	ldrh	r3, [r2, #2]
    15e4:	f361 1389 	bfi	r3, r1, #6, #4
    15e8:	8053      	strh	r3, [r2, #2]
    15ea:	697a      	ldr	r2, [r7, #20]
    15ec:	68fb      	ldr	r3, [r7, #12]
    15ee:	1ad3      	subs	r3, r2, r3
    15f0:	617b      	str	r3, [r7, #20]
    15f2:	687b      	ldr	r3, [r7, #4]
    15f4:	885b      	ldrh	r3, [r3, #2]
    15f6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    15fa:	b2db      	uxtb	r3, r3
    15fc:	4619      	mov	r1, r3
    15fe:	6938      	ldr	r0, [r7, #16]
    1600:	f7ff ff68 	bl	14d4 <sec_per_month>
    1604:	60f8      	str	r0, [r7, #12]
    1606:	68fa      	ldr	r2, [r7, #12]
    1608:	697b      	ldr	r3, [r7, #20]
    160a:	429a      	cmp	r2, r3
    160c:	d3df      	bcc.n	15ce <get_date_time+0xb2>
    160e:	697b      	ldr	r3, [r7, #20]
    1610:	4a2f      	ldr	r2, [pc, #188]	; (16d0 <get_date_time+0x1b4>)
    1612:	fba2 2303 	umull	r2, r3, r2, r3
    1616:	0c1b      	lsrs	r3, r3, #16
    1618:	b2db      	uxtb	r3, r3
    161a:	3301      	adds	r3, #1
    161c:	b2db      	uxtb	r3, r3
    161e:	f003 031f 	and.w	r3, r3, #31
    1622:	b2d9      	uxtb	r1, r3
    1624:	687a      	ldr	r2, [r7, #4]
    1626:	7893      	ldrb	r3, [r2, #2]
    1628:	f361 0345 	bfi	r3, r1, #1, #5
    162c:	7093      	strb	r3, [r2, #2]
    162e:	697b      	ldr	r3, [r7, #20]
    1630:	4a27      	ldr	r2, [pc, #156]	; (16d0 <get_date_time+0x1b4>)
    1632:	fba2 1203 	umull	r1, r2, r2, r3
    1636:	0c12      	lsrs	r2, r2, #16
    1638:	4926      	ldr	r1, [pc, #152]	; (16d4 <get_date_time+0x1b8>)
    163a:	fb01 f202 	mul.w	r2, r1, r2
    163e:	1a9b      	subs	r3, r3, r2
    1640:	617b      	str	r3, [r7, #20]
    1642:	697b      	ldr	r3, [r7, #20]
    1644:	4a24      	ldr	r2, [pc, #144]	; (16d8 <get_date_time+0x1bc>)
    1646:	fba2 2303 	umull	r2, r3, r2, r3
    164a:	0adb      	lsrs	r3, r3, #11
    164c:	b2db      	uxtb	r3, r3
    164e:	f003 031f 	and.w	r3, r3, #31
    1652:	b2d9      	uxtb	r1, r3
    1654:	687a      	ldr	r2, [r7, #4]
    1656:	6813      	ldr	r3, [r2, #0]
    1658:	f361 3310 	bfi	r3, r1, #12, #5
    165c:	6013      	str	r3, [r2, #0]
    165e:	697b      	ldr	r3, [r7, #20]
    1660:	4a1d      	ldr	r2, [pc, #116]	; (16d8 <get_date_time+0x1bc>)
    1662:	fba2 1203 	umull	r1, r2, r2, r3
    1666:	0ad2      	lsrs	r2, r2, #11
    1668:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    166c:	fb01 f202 	mul.w	r2, r1, r2
    1670:	1a9b      	subs	r3, r3, r2
    1672:	617b      	str	r3, [r7, #20]
    1674:	697b      	ldr	r3, [r7, #20]
    1676:	4a19      	ldr	r2, [pc, #100]	; (16dc <get_date_time+0x1c0>)
    1678:	fba2 2303 	umull	r2, r3, r2, r3
    167c:	095b      	lsrs	r3, r3, #5
    167e:	b2db      	uxtb	r3, r3
    1680:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1684:	b2d9      	uxtb	r1, r3
    1686:	687a      	ldr	r2, [r7, #4]
    1688:	8813      	ldrh	r3, [r2, #0]
    168a:	f361 138b 	bfi	r3, r1, #6, #6
    168e:	8013      	strh	r3, [r2, #0]
    1690:	6979      	ldr	r1, [r7, #20]
    1692:	4b12      	ldr	r3, [pc, #72]	; (16dc <get_date_time+0x1c0>)
    1694:	fba3 2301 	umull	r2, r3, r3, r1
    1698:	095a      	lsrs	r2, r3, #5
    169a:	4613      	mov	r3, r2
    169c:	011b      	lsls	r3, r3, #4
    169e:	1a9b      	subs	r3, r3, r2
    16a0:	009b      	lsls	r3, r3, #2
    16a2:	1aca      	subs	r2, r1, r3
    16a4:	b2d3      	uxtb	r3, r2
    16a6:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    16aa:	b2d9      	uxtb	r1, r3
    16ac:	687a      	ldr	r2, [r7, #4]
    16ae:	7813      	ldrb	r3, [r2, #0]
    16b0:	f361 0305 	bfi	r3, r1, #0, #6
    16b4:	7013      	strb	r3, [r2, #0]
    16b6:	bf00      	nop
    16b8:	3718      	adds	r7, #24
    16ba:	46bd      	mov	sp, r7
    16bc:	bd80      	pop	{r7, pc}
    16be:	bf00      	nop
    16c0:	40002800 	.word	0x40002800
    16c4:	fe1ecc80 	.word	0xfe1ecc80
    16c8:	01e1337f 	.word	0x01e1337f
    16cc:	01e284ff 	.word	0x01e284ff
    16d0:	c22e4507 	.word	0xc22e4507
    16d4:	00015180 	.word	0x00015180
    16d8:	91a2b3c5 	.word	0x91a2b3c5
    16dc:	88888889 	.word	0x88888889

000016e0 <set_date_time>:
    16e0:	b580      	push	{r7, lr}
    16e2:	b086      	sub	sp, #24
    16e4:	af00      	add	r7, sp, #0
    16e6:	6078      	str	r0, [r7, #4]
    16e8:	2300      	movs	r3, #0
    16ea:	613b      	str	r3, [r7, #16]
    16ec:	687b      	ldr	r3, [r7, #4]
    16ee:	891b      	ldrh	r3, [r3, #8]
    16f0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    16f4:	4293      	cmp	r3, r2
    16f6:	d803      	bhi.n	1700 <set_date_time+0x20>
    16f8:	687b      	ldr	r3, [r7, #4]
    16fa:	f240 72b2 	movw	r2, #1970	; 0x7b2
    16fe:	811a      	strh	r2, [r3, #8]
    1700:	687b      	ldr	r3, [r7, #4]
    1702:	891b      	ldrh	r3, [r3, #8]
    1704:	f640 023a 	movw	r2, #2106	; 0x83a
    1708:	4293      	cmp	r3, r2
    170a:	d903      	bls.n	1714 <set_date_time+0x34>
    170c:	687b      	ldr	r3, [r7, #4]
    170e:	f640 023a 	movw	r2, #2106	; 0x83a
    1712:	811a      	strh	r2, [r3, #8]
    1714:	687b      	ldr	r3, [r7, #4]
    1716:	891b      	ldrh	r3, [r3, #8]
    1718:	4618      	mov	r0, r3
    171a:	f7ff feaf 	bl	147c <leap_year>
    171e:	60f8      	str	r0, [r7, #12]
    1720:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1724:	617b      	str	r3, [r7, #20]
    1726:	e013      	b.n	1750 <set_date_time+0x70>
    1728:	6978      	ldr	r0, [r7, #20]
    172a:	f7ff fea7 	bl	147c <leap_year>
    172e:	4603      	mov	r3, r0
    1730:	2b00      	cmp	r3, #0
    1732:	d006      	beq.n	1742 <set_date_time+0x62>
    1734:	693b      	ldr	r3, [r7, #16]
    1736:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    173a:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    173e:	613b      	str	r3, [r7, #16]
    1740:	e003      	b.n	174a <set_date_time+0x6a>
    1742:	693a      	ldr	r2, [r7, #16]
    1744:	4b42      	ldr	r3, [pc, #264]	; (1850 <set_date_time+0x170>)
    1746:	4413      	add	r3, r2
    1748:	613b      	str	r3, [r7, #16]
    174a:	697b      	ldr	r3, [r7, #20]
    174c:	3301      	adds	r3, #1
    174e:	617b      	str	r3, [r7, #20]
    1750:	687b      	ldr	r3, [r7, #4]
    1752:	891b      	ldrh	r3, [r3, #8]
    1754:	461a      	mov	r2, r3
    1756:	697b      	ldr	r3, [r7, #20]
    1758:	429a      	cmp	r2, r3
    175a:	d8e5      	bhi.n	1728 <set_date_time+0x48>
    175c:	2301      	movs	r3, #1
    175e:	617b      	str	r3, [r7, #20]
    1760:	e00a      	b.n	1778 <set_date_time+0x98>
    1762:	6979      	ldr	r1, [r7, #20]
    1764:	68f8      	ldr	r0, [r7, #12]
    1766:	f7ff feb5 	bl	14d4 <sec_per_month>
    176a:	4602      	mov	r2, r0
    176c:	693b      	ldr	r3, [r7, #16]
    176e:	4413      	add	r3, r2
    1770:	613b      	str	r3, [r7, #16]
    1772:	697b      	ldr	r3, [r7, #20]
    1774:	3301      	adds	r3, #1
    1776:	617b      	str	r3, [r7, #20]
    1778:	687b      	ldr	r3, [r7, #4]
    177a:	885b      	ldrh	r3, [r3, #2]
    177c:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1780:	b2db      	uxtb	r3, r3
    1782:	461a      	mov	r2, r3
    1784:	697b      	ldr	r3, [r7, #20]
    1786:	429a      	cmp	r2, r3
    1788:	d8eb      	bhi.n	1762 <set_date_time+0x82>
    178a:	687b      	ldr	r3, [r7, #4]
    178c:	789b      	ldrb	r3, [r3, #2]
    178e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1792:	b2db      	uxtb	r3, r3
    1794:	3b01      	subs	r3, #1
    1796:	4a2f      	ldr	r2, [pc, #188]	; (1854 <set_date_time+0x174>)
    1798:	fb02 f303 	mul.w	r3, r2, r3
    179c:	461a      	mov	r2, r3
    179e:	693b      	ldr	r3, [r7, #16]
    17a0:	4413      	add	r3, r2
    17a2:	613b      	str	r3, [r7, #16]
    17a4:	687b      	ldr	r3, [r7, #4]
    17a6:	681b      	ldr	r3, [r3, #0]
    17a8:	f3c3 3304 	ubfx	r3, r3, #12, #5
    17ac:	b2db      	uxtb	r3, r3
    17ae:	461a      	mov	r2, r3
    17b0:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    17b4:	fb03 f302 	mul.w	r3, r3, r2
    17b8:	461a      	mov	r2, r3
    17ba:	693b      	ldr	r3, [r7, #16]
    17bc:	4413      	add	r3, r2
    17be:	613b      	str	r3, [r7, #16]
    17c0:	687b      	ldr	r3, [r7, #4]
    17c2:	881b      	ldrh	r3, [r3, #0]
    17c4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    17c8:	b2db      	uxtb	r3, r3
    17ca:	461a      	mov	r2, r3
    17cc:	4613      	mov	r3, r2
    17ce:	011b      	lsls	r3, r3, #4
    17d0:	1a9b      	subs	r3, r3, r2
    17d2:	009b      	lsls	r3, r3, #2
    17d4:	461a      	mov	r2, r3
    17d6:	693b      	ldr	r3, [r7, #16]
    17d8:	4413      	add	r3, r2
    17da:	613b      	str	r3, [r7, #16]
    17dc:	687b      	ldr	r3, [r7, #4]
    17de:	781b      	ldrb	r3, [r3, #0]
    17e0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    17e4:	b2db      	uxtb	r3, r3
    17e6:	461a      	mov	r2, r3
    17e8:	693b      	ldr	r3, [r7, #16]
    17ea:	4413      	add	r3, r2
    17ec:	613b      	str	r3, [r7, #16]
    17ee:	4a1a      	ldr	r2, [pc, #104]	; (1858 <set_date_time+0x178>)
    17f0:	4b19      	ldr	r3, [pc, #100]	; (1858 <set_date_time+0x178>)
    17f2:	69db      	ldr	r3, [r3, #28]
    17f4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    17f8:	61d3      	str	r3, [r2, #28]
    17fa:	4a18      	ldr	r2, [pc, #96]	; (185c <set_date_time+0x17c>)
    17fc:	4b17      	ldr	r3, [pc, #92]	; (185c <set_date_time+0x17c>)
    17fe:	681b      	ldr	r3, [r3, #0]
    1800:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1804:	6013      	str	r3, [r2, #0]
    1806:	4a16      	ldr	r2, [pc, #88]	; (1860 <set_date_time+0x180>)
    1808:	4b15      	ldr	r3, [pc, #84]	; (1860 <set_date_time+0x180>)
    180a:	685b      	ldr	r3, [r3, #4]
    180c:	f043 0310 	orr.w	r3, r3, #16
    1810:	6053      	str	r3, [r2, #4]
    1812:	4a13      	ldr	r2, [pc, #76]	; (1860 <set_date_time+0x180>)
    1814:	693b      	ldr	r3, [r7, #16]
    1816:	0c1b      	lsrs	r3, r3, #16
    1818:	6193      	str	r3, [r2, #24]
    181a:	4a11      	ldr	r2, [pc, #68]	; (1860 <set_date_time+0x180>)
    181c:	693b      	ldr	r3, [r7, #16]
    181e:	b29b      	uxth	r3, r3
    1820:	61d3      	str	r3, [r2, #28]
    1822:	4a0f      	ldr	r2, [pc, #60]	; (1860 <set_date_time+0x180>)
    1824:	4b0e      	ldr	r3, [pc, #56]	; (1860 <set_date_time+0x180>)
    1826:	685b      	ldr	r3, [r3, #4]
    1828:	f023 0310 	bic.w	r3, r3, #16
    182c:	6053      	str	r3, [r2, #4]
    182e:	bf00      	nop
    1830:	4b0b      	ldr	r3, [pc, #44]	; (1860 <set_date_time+0x180>)
    1832:	685b      	ldr	r3, [r3, #4]
    1834:	f003 0320 	and.w	r3, r3, #32
    1838:	2b00      	cmp	r3, #0
    183a:	d0f9      	beq.n	1830 <set_date_time+0x150>
    183c:	4a07      	ldr	r2, [pc, #28]	; (185c <set_date_time+0x17c>)
    183e:	4b07      	ldr	r3, [pc, #28]	; (185c <set_date_time+0x17c>)
    1840:	681b      	ldr	r3, [r3, #0]
    1842:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1846:	6013      	str	r3, [r2, #0]
    1848:	bf00      	nop
    184a:	3718      	adds	r7, #24
    184c:	46bd      	mov	sp, r7
    184e:	bd80      	pop	{r7, pc}
    1850:	01e13380 	.word	0x01e13380
    1854:	00015180 	.word	0x00015180
    1858:	40021000 	.word	0x40021000
    185c:	40007000 	.word	0x40007000
    1860:	40002800 	.word	0x40002800

00001864 <rtc_init>:
    1864:	b580      	push	{r7, lr}
    1866:	b082      	sub	sp, #8
    1868:	af00      	add	r7, sp, #0
    186a:	6078      	str	r0, [r7, #4]
    186c:	6039      	str	r1, [r7, #0]
    186e:	4b4a      	ldr	r3, [pc, #296]	; (1998 <rtc_init+0x134>)
    1870:	685b      	ldr	r3, [r3, #4]
    1872:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1876:	4293      	cmp	r3, r2
    1878:	f000 8082 	beq.w	1980 <rtc_init+0x11c>
    187c:	4a47      	ldr	r2, [pc, #284]	; (199c <rtc_init+0x138>)
    187e:	4b47      	ldr	r3, [pc, #284]	; (199c <rtc_init+0x138>)
    1880:	69db      	ldr	r3, [r3, #28]
    1882:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1886:	61d3      	str	r3, [r2, #28]
    1888:	4a45      	ldr	r2, [pc, #276]	; (19a0 <rtc_init+0x13c>)
    188a:	4b45      	ldr	r3, [pc, #276]	; (19a0 <rtc_init+0x13c>)
    188c:	681b      	ldr	r3, [r3, #0]
    188e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1892:	6013      	str	r3, [r2, #0]
    1894:	4a41      	ldr	r2, [pc, #260]	; (199c <rtc_init+0x138>)
    1896:	4b41      	ldr	r3, [pc, #260]	; (199c <rtc_init+0x138>)
    1898:	6a1b      	ldr	r3, [r3, #32]
    189a:	f043 0301 	orr.w	r3, r3, #1
    189e:	6213      	str	r3, [r2, #32]
    18a0:	bf00      	nop
    18a2:	4b3e      	ldr	r3, [pc, #248]	; (199c <rtc_init+0x138>)
    18a4:	6a1b      	ldr	r3, [r3, #32]
    18a6:	f003 0302 	and.w	r3, r3, #2
    18aa:	2b00      	cmp	r3, #0
    18ac:	d0f9      	beq.n	18a2 <rtc_init+0x3e>
    18ae:	4a3b      	ldr	r2, [pc, #236]	; (199c <rtc_init+0x138>)
    18b0:	4b3a      	ldr	r3, [pc, #232]	; (199c <rtc_init+0x138>)
    18b2:	6a1b      	ldr	r3, [r3, #32]
    18b4:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    18b8:	6213      	str	r3, [r2, #32]
    18ba:	bf00      	nop
    18bc:	4b39      	ldr	r3, [pc, #228]	; (19a4 <rtc_init+0x140>)
    18be:	685b      	ldr	r3, [r3, #4]
    18c0:	f003 0308 	and.w	r3, r3, #8
    18c4:	2b00      	cmp	r3, #0
    18c6:	d0f9      	beq.n	18bc <rtc_init+0x58>
    18c8:	bf00      	nop
    18ca:	4b36      	ldr	r3, [pc, #216]	; (19a4 <rtc_init+0x140>)
    18cc:	685b      	ldr	r3, [r3, #4]
    18ce:	f003 0320 	and.w	r3, r3, #32
    18d2:	2b00      	cmp	r3, #0
    18d4:	d0f9      	beq.n	18ca <rtc_init+0x66>
    18d6:	4a33      	ldr	r2, [pc, #204]	; (19a4 <rtc_init+0x140>)
    18d8:	4b32      	ldr	r3, [pc, #200]	; (19a4 <rtc_init+0x140>)
    18da:	685b      	ldr	r3, [r3, #4]
    18dc:	f043 0310 	orr.w	r3, r3, #16
    18e0:	6053      	str	r3, [r2, #4]
    18e2:	bf00      	nop
    18e4:	4b2f      	ldr	r3, [pc, #188]	; (19a4 <rtc_init+0x140>)
    18e6:	685b      	ldr	r3, [r3, #4]
    18e8:	f003 0320 	and.w	r3, r3, #32
    18ec:	2b00      	cmp	r3, #0
    18ee:	d0f9      	beq.n	18e4 <rtc_init+0x80>
    18f0:	492c      	ldr	r1, [pc, #176]	; (19a4 <rtc_init+0x140>)
    18f2:	4b2c      	ldr	r3, [pc, #176]	; (19a4 <rtc_init+0x140>)
    18f4:	681a      	ldr	r2, [r3, #0]
    18f6:	683b      	ldr	r3, [r7, #0]
    18f8:	4313      	orrs	r3, r2
    18fa:	600b      	str	r3, [r1, #0]
    18fc:	bf00      	nop
    18fe:	4b29      	ldr	r3, [pc, #164]	; (19a4 <rtc_init+0x140>)
    1900:	685b      	ldr	r3, [r3, #4]
    1902:	f003 0320 	and.w	r3, r3, #32
    1906:	2b00      	cmp	r3, #0
    1908:	d0f9      	beq.n	18fe <rtc_init+0x9a>
    190a:	4a26      	ldr	r2, [pc, #152]	; (19a4 <rtc_init+0x140>)
    190c:	687b      	ldr	r3, [r7, #4]
    190e:	03db      	lsls	r3, r3, #15
    1910:	4925      	ldr	r1, [pc, #148]	; (19a8 <rtc_init+0x144>)
    1912:	fba1 1303 	umull	r1, r3, r1, r3
    1916:	099b      	lsrs	r3, r3, #6
    1918:	3b01      	subs	r3, #1
    191a:	b29b      	uxth	r3, r3
    191c:	60d3      	str	r3, [r2, #12]
    191e:	bf00      	nop
    1920:	4b20      	ldr	r3, [pc, #128]	; (19a4 <rtc_init+0x140>)
    1922:	685b      	ldr	r3, [r3, #4]
    1924:	f003 0320 	and.w	r3, r3, #32
    1928:	2b00      	cmp	r3, #0
    192a:	d0f9      	beq.n	1920 <rtc_init+0xbc>
    192c:	4a1d      	ldr	r2, [pc, #116]	; (19a4 <rtc_init+0x140>)
    192e:	687b      	ldr	r3, [r7, #4]
    1930:	03db      	lsls	r3, r3, #15
    1932:	491d      	ldr	r1, [pc, #116]	; (19a8 <rtc_init+0x144>)
    1934:	fba1 1303 	umull	r1, r3, r1, r3
    1938:	099b      	lsrs	r3, r3, #6
    193a:	3b01      	subs	r3, #1
    193c:	0c1b      	lsrs	r3, r3, #16
    193e:	f003 030f 	and.w	r3, r3, #15
    1942:	6093      	str	r3, [r2, #8]
    1944:	bf00      	nop
    1946:	4b17      	ldr	r3, [pc, #92]	; (19a4 <rtc_init+0x140>)
    1948:	685b      	ldr	r3, [r3, #4]
    194a:	f003 0320 	and.w	r3, r3, #32
    194e:	2b00      	cmp	r3, #0
    1950:	d0f9      	beq.n	1946 <rtc_init+0xe2>
    1952:	4b11      	ldr	r3, [pc, #68]	; (1998 <rtc_init+0x134>)
    1954:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1958:	605a      	str	r2, [r3, #4]
    195a:	4a12      	ldr	r2, [pc, #72]	; (19a4 <rtc_init+0x140>)
    195c:	4b11      	ldr	r3, [pc, #68]	; (19a4 <rtc_init+0x140>)
    195e:	685b      	ldr	r3, [r3, #4]
    1960:	f023 0310 	bic.w	r3, r3, #16
    1964:	6053      	str	r3, [r2, #4]
    1966:	bf00      	nop
    1968:	4b0e      	ldr	r3, [pc, #56]	; (19a4 <rtc_init+0x140>)
    196a:	685b      	ldr	r3, [r3, #4]
    196c:	f003 0320 	and.w	r3, r3, #32
    1970:	2b00      	cmp	r3, #0
    1972:	d0f9      	beq.n	1968 <rtc_init+0x104>
    1974:	4a0a      	ldr	r2, [pc, #40]	; (19a0 <rtc_init+0x13c>)
    1976:	4b0a      	ldr	r3, [pc, #40]	; (19a0 <rtc_init+0x13c>)
    1978:	681b      	ldr	r3, [r3, #0]
    197a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    197e:	6013      	str	r3, [r2, #0]
    1980:	210f      	movs	r1, #15
    1982:	2003      	movs	r0, #3
    1984:	f7ff fd4a 	bl	141c <set_int_priority>
    1988:	2003      	movs	r0, #3
    198a:	f7ff fc8d 	bl	12a8 <enable_interrupt>
    198e:	bf00      	nop
    1990:	3708      	adds	r7, #8
    1992:	46bd      	mov	sp, r7
    1994:	bd80      	pop	{r7, pc}
    1996:	bf00      	nop
    1998:	40006c00 	.word	0x40006c00
    199c:	40021000 	.word	0x40021000
    19a0:	40007000 	.word	0x40007000
    19a4:	40002800 	.word	0x40002800
    19a8:	10624dd3 	.word	0x10624dd3

000019ac <reset_backup_domain>:
    19ac:	b480      	push	{r7}
    19ae:	af00      	add	r7, sp, #0
    19b0:	4a0a      	ldr	r2, [pc, #40]	; (19dc <reset_backup_domain+0x30>)
    19b2:	4b0a      	ldr	r3, [pc, #40]	; (19dc <reset_backup_domain+0x30>)
    19b4:	69db      	ldr	r3, [r3, #28]
    19b6:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    19ba:	61d3      	str	r3, [r2, #28]
    19bc:	4a07      	ldr	r2, [pc, #28]	; (19dc <reset_backup_domain+0x30>)
    19be:	4b07      	ldr	r3, [pc, #28]	; (19dc <reset_backup_domain+0x30>)
    19c0:	6a1b      	ldr	r3, [r3, #32]
    19c2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    19c6:	6213      	str	r3, [r2, #32]
    19c8:	4a04      	ldr	r2, [pc, #16]	; (19dc <reset_backup_domain+0x30>)
    19ca:	4b04      	ldr	r3, [pc, #16]	; (19dc <reset_backup_domain+0x30>)
    19cc:	6a1b      	ldr	r3, [r3, #32]
    19ce:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    19d2:	6213      	str	r3, [r2, #32]
    19d4:	bf00      	nop
    19d6:	46bd      	mov	sp, r7
    19d8:	bc80      	pop	{r7}
    19da:	4770      	bx	lr
    19dc:	40021000 	.word	0x40021000

000019e0 <rtc_clock_trim>:
    19e0:	b480      	push	{r7}
    19e2:	b083      	sub	sp, #12
    19e4:	af00      	add	r7, sp, #0
    19e6:	6078      	str	r0, [r7, #4]
    19e8:	4a34      	ldr	r2, [pc, #208]	; (1abc <rtc_clock_trim+0xdc>)
    19ea:	4b34      	ldr	r3, [pc, #208]	; (1abc <rtc_clock_trim+0xdc>)
    19ec:	69db      	ldr	r3, [r3, #28]
    19ee:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    19f2:	61d3      	str	r3, [r2, #28]
    19f4:	bf00      	nop
    19f6:	4b32      	ldr	r3, [pc, #200]	; (1ac0 <rtc_clock_trim+0xe0>)
    19f8:	685b      	ldr	r3, [r3, #4]
    19fa:	f003 0308 	and.w	r3, r3, #8
    19fe:	2b00      	cmp	r3, #0
    1a00:	d0f9      	beq.n	19f6 <rtc_clock_trim+0x16>
    1a02:	4a30      	ldr	r2, [pc, #192]	; (1ac4 <rtc_clock_trim+0xe4>)
    1a04:	4b2f      	ldr	r3, [pc, #188]	; (1ac4 <rtc_clock_trim+0xe4>)
    1a06:	681b      	ldr	r3, [r3, #0]
    1a08:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1a0c:	6013      	str	r3, [r2, #0]
    1a0e:	4a2c      	ldr	r2, [pc, #176]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a10:	4b2b      	ldr	r3, [pc, #172]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a12:	685b      	ldr	r3, [r3, #4]
    1a14:	f043 0310 	orr.w	r3, r3, #16
    1a18:	6053      	str	r3, [r2, #4]
    1a1a:	4a2b      	ldr	r2, [pc, #172]	; (1ac8 <rtc_clock_trim+0xe8>)
    1a1c:	4b2a      	ldr	r3, [pc, #168]	; (1ac8 <rtc_clock_trim+0xe8>)
    1a1e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1a20:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1a24:	62d3      	str	r3, [r2, #44]	; 0x2c
    1a26:	687b      	ldr	r3, [r7, #4]
    1a28:	2b00      	cmp	r3, #0
    1a2a:	d10a      	bne.n	1a42 <rtc_clock_trim+0x62>
    1a2c:	4b26      	ldr	r3, [pc, #152]	; (1ac8 <rtc_clock_trim+0xe8>)
    1a2e:	2200      	movs	r2, #0
    1a30:	62da      	str	r2, [r3, #44]	; 0x2c
    1a32:	4b23      	ldr	r3, [pc, #140]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a34:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1a38:	60da      	str	r2, [r3, #12]
    1a3a:	4b21      	ldr	r3, [pc, #132]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a3c:	2200      	movs	r2, #0
    1a3e:	609a      	str	r2, [r3, #8]
    1a40:	e023      	b.n	1a8a <rtc_clock_trim+0xaa>
    1a42:	687b      	ldr	r3, [r7, #4]
    1a44:	2b00      	cmp	r3, #0
    1a46:	dd0a      	ble.n	1a5e <rtc_clock_trim+0x7e>
    1a48:	687b      	ldr	r3, [r7, #4]
    1a4a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1a4e:	607b      	str	r3, [r7, #4]
    1a50:	491d      	ldr	r1, [pc, #116]	; (1ac8 <rtc_clock_trim+0xe8>)
    1a52:	4b1d      	ldr	r3, [pc, #116]	; (1ac8 <rtc_clock_trim+0xe8>)
    1a54:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1a56:	687b      	ldr	r3, [r7, #4]
    1a58:	4313      	orrs	r3, r2
    1a5a:	62cb      	str	r3, [r1, #44]	; 0x2c
    1a5c:	e015      	b.n	1a8a <rtc_clock_trim+0xaa>
    1a5e:	687b      	ldr	r3, [r7, #4]
    1a60:	425b      	negs	r3, r3
    1a62:	607b      	str	r3, [r7, #4]
    1a64:	687b      	ldr	r3, [r7, #4]
    1a66:	2b7f      	cmp	r3, #127	; 0x7f
    1a68:	dd01      	ble.n	1a6e <rtc_clock_trim+0x8e>
    1a6a:	237f      	movs	r3, #127	; 0x7f
    1a6c:	607b      	str	r3, [r7, #4]
    1a6e:	4b16      	ldr	r3, [pc, #88]	; (1ac8 <rtc_clock_trim+0xe8>)
    1a70:	2200      	movs	r2, #0
    1a72:	62da      	str	r2, [r3, #44]	; 0x2c
    1a74:	4a12      	ldr	r2, [pc, #72]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a76:	687b      	ldr	r3, [r7, #4]
    1a78:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1a7c:	33ff      	adds	r3, #255	; 0xff
    1a7e:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1a82:	60d3      	str	r3, [r2, #12]
    1a84:	4b0e      	ldr	r3, [pc, #56]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a86:	2200      	movs	r2, #0
    1a88:	609a      	str	r2, [r3, #8]
    1a8a:	4a0d      	ldr	r2, [pc, #52]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a8c:	4b0c      	ldr	r3, [pc, #48]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a8e:	685b      	ldr	r3, [r3, #4]
    1a90:	f023 0310 	bic.w	r3, r3, #16
    1a94:	6053      	str	r3, [r2, #4]
    1a96:	bf00      	nop
    1a98:	4b09      	ldr	r3, [pc, #36]	; (1ac0 <rtc_clock_trim+0xe0>)
    1a9a:	685b      	ldr	r3, [r3, #4]
    1a9c:	f003 0320 	and.w	r3, r3, #32
    1aa0:	2b00      	cmp	r3, #0
    1aa2:	d0f9      	beq.n	1a98 <rtc_clock_trim+0xb8>
    1aa4:	4a07      	ldr	r2, [pc, #28]	; (1ac4 <rtc_clock_trim+0xe4>)
    1aa6:	4b07      	ldr	r3, [pc, #28]	; (1ac4 <rtc_clock_trim+0xe4>)
    1aa8:	681b      	ldr	r3, [r3, #0]
    1aaa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1aae:	6013      	str	r3, [r2, #0]
    1ab0:	bf00      	nop
    1ab2:	370c      	adds	r7, #12
    1ab4:	46bd      	mov	sp, r7
    1ab6:	bc80      	pop	{r7}
    1ab8:	4770      	bx	lr
    1aba:	bf00      	nop
    1abc:	40021000 	.word	0x40021000
    1ac0:	40002800 	.word	0x40002800
    1ac4:	40007000 	.word	0x40007000
    1ac8:	40006c00 	.word	0x40006c00

00001acc <rtc_set_alarm>:
    1acc:	b480      	push	{r7}
    1ace:	b083      	sub	sp, #12
    1ad0:	af00      	add	r7, sp, #0
    1ad2:	6078      	str	r0, [r7, #4]
    1ad4:	bf00      	nop
    1ad6:	370c      	adds	r7, #12
    1ad8:	46bd      	mov	sp, r7
    1ada:	bc80      	pop	{r7}
    1adc:	4770      	bx	lr

00001ade <str_to_date>:
    1ade:	b580      	push	{r7, lr}
    1ae0:	b084      	sub	sp, #16
    1ae2:	af00      	add	r7, sp, #0
    1ae4:	6078      	str	r0, [r7, #4]
    1ae6:	6039      	str	r1, [r7, #0]
    1ae8:	2300      	movs	r3, #0
    1aea:	60fb      	str	r3, [r7, #12]
    1aec:	2300      	movs	r3, #0
    1aee:	60bb      	str	r3, [r7, #8]
    1af0:	e00f      	b.n	1b12 <str_to_date+0x34>
    1af2:	68ba      	ldr	r2, [r7, #8]
    1af4:	4613      	mov	r3, r2
    1af6:	009b      	lsls	r3, r3, #2
    1af8:	4413      	add	r3, r2
    1afa:	005b      	lsls	r3, r3, #1
    1afc:	4619      	mov	r1, r3
    1afe:	68fb      	ldr	r3, [r7, #12]
    1b00:	1c5a      	adds	r2, r3, #1
    1b02:	60fa      	str	r2, [r7, #12]
    1b04:	461a      	mov	r2, r3
    1b06:	687b      	ldr	r3, [r7, #4]
    1b08:	4413      	add	r3, r2
    1b0a:	781b      	ldrb	r3, [r3, #0]
    1b0c:	440b      	add	r3, r1
    1b0e:	3b30      	subs	r3, #48	; 0x30
    1b10:	60bb      	str	r3, [r7, #8]
    1b12:	68fb      	ldr	r3, [r7, #12]
    1b14:	687a      	ldr	r2, [r7, #4]
    1b16:	4413      	add	r3, r2
    1b18:	781b      	ldrb	r3, [r3, #0]
    1b1a:	4618      	mov	r0, r3
    1b1c:	f7fe fe61 	bl	7e2 <digit>
    1b20:	4603      	mov	r3, r0
    1b22:	2b00      	cmp	r3, #0
    1b24:	d1e5      	bne.n	1af2 <str_to_date+0x14>
    1b26:	68fb      	ldr	r3, [r7, #12]
    1b28:	2b03      	cmp	r3, #3
    1b2a:	dd05      	ble.n	1b38 <str_to_date+0x5a>
    1b2c:	68fb      	ldr	r3, [r7, #12]
    1b2e:	687a      	ldr	r2, [r7, #4]
    1b30:	4413      	add	r3, r2
    1b32:	781b      	ldrb	r3, [r3, #0]
    1b34:	2b2f      	cmp	r3, #47	; 0x2f
    1b36:	d001      	beq.n	1b3c <str_to_date+0x5e>
    1b38:	2300      	movs	r3, #0
    1b3a:	e068      	b.n	1c0e <str_to_date+0x130>
    1b3c:	68bb      	ldr	r3, [r7, #8]
    1b3e:	b29a      	uxth	r2, r3
    1b40:	683b      	ldr	r3, [r7, #0]
    1b42:	811a      	strh	r2, [r3, #8]
    1b44:	68fb      	ldr	r3, [r7, #12]
    1b46:	3301      	adds	r3, #1
    1b48:	60fb      	str	r3, [r7, #12]
    1b4a:	2300      	movs	r3, #0
    1b4c:	60bb      	str	r3, [r7, #8]
    1b4e:	e00f      	b.n	1b70 <str_to_date+0x92>
    1b50:	68ba      	ldr	r2, [r7, #8]
    1b52:	4613      	mov	r3, r2
    1b54:	009b      	lsls	r3, r3, #2
    1b56:	4413      	add	r3, r2
    1b58:	005b      	lsls	r3, r3, #1
    1b5a:	4619      	mov	r1, r3
    1b5c:	68fb      	ldr	r3, [r7, #12]
    1b5e:	1c5a      	adds	r2, r3, #1
    1b60:	60fa      	str	r2, [r7, #12]
    1b62:	461a      	mov	r2, r3
    1b64:	687b      	ldr	r3, [r7, #4]
    1b66:	4413      	add	r3, r2
    1b68:	781b      	ldrb	r3, [r3, #0]
    1b6a:	440b      	add	r3, r1
    1b6c:	3b30      	subs	r3, #48	; 0x30
    1b6e:	60bb      	str	r3, [r7, #8]
    1b70:	68fb      	ldr	r3, [r7, #12]
    1b72:	687a      	ldr	r2, [r7, #4]
    1b74:	4413      	add	r3, r2
    1b76:	781b      	ldrb	r3, [r3, #0]
    1b78:	4618      	mov	r0, r3
    1b7a:	f7fe fe32 	bl	7e2 <digit>
    1b7e:	4603      	mov	r3, r0
    1b80:	2b00      	cmp	r3, #0
    1b82:	d1e5      	bne.n	1b50 <str_to_date+0x72>
    1b84:	68fb      	ldr	r3, [r7, #12]
    1b86:	2b06      	cmp	r3, #6
    1b88:	dd05      	ble.n	1b96 <str_to_date+0xb8>
    1b8a:	68fb      	ldr	r3, [r7, #12]
    1b8c:	687a      	ldr	r2, [r7, #4]
    1b8e:	4413      	add	r3, r2
    1b90:	781b      	ldrb	r3, [r3, #0]
    1b92:	2b2f      	cmp	r3, #47	; 0x2f
    1b94:	d001      	beq.n	1b9a <str_to_date+0xbc>
    1b96:	2300      	movs	r3, #0
    1b98:	e039      	b.n	1c0e <str_to_date+0x130>
    1b9a:	68bb      	ldr	r3, [r7, #8]
    1b9c:	b2db      	uxtb	r3, r3
    1b9e:	f003 030f 	and.w	r3, r3, #15
    1ba2:	b2d9      	uxtb	r1, r3
    1ba4:	683a      	ldr	r2, [r7, #0]
    1ba6:	8853      	ldrh	r3, [r2, #2]
    1ba8:	f361 1389 	bfi	r3, r1, #6, #4
    1bac:	8053      	strh	r3, [r2, #2]
    1bae:	2300      	movs	r3, #0
    1bb0:	60bb      	str	r3, [r7, #8]
    1bb2:	68fb      	ldr	r3, [r7, #12]
    1bb4:	3301      	adds	r3, #1
    1bb6:	60fb      	str	r3, [r7, #12]
    1bb8:	e00f      	b.n	1bda <str_to_date+0xfc>
    1bba:	68ba      	ldr	r2, [r7, #8]
    1bbc:	4613      	mov	r3, r2
    1bbe:	009b      	lsls	r3, r3, #2
    1bc0:	4413      	add	r3, r2
    1bc2:	005b      	lsls	r3, r3, #1
    1bc4:	4619      	mov	r1, r3
    1bc6:	68fb      	ldr	r3, [r7, #12]
    1bc8:	1c5a      	adds	r2, r3, #1
    1bca:	60fa      	str	r2, [r7, #12]
    1bcc:	461a      	mov	r2, r3
    1bce:	687b      	ldr	r3, [r7, #4]
    1bd0:	4413      	add	r3, r2
    1bd2:	781b      	ldrb	r3, [r3, #0]
    1bd4:	440b      	add	r3, r1
    1bd6:	3b30      	subs	r3, #48	; 0x30
    1bd8:	60bb      	str	r3, [r7, #8]
    1bda:	68fb      	ldr	r3, [r7, #12]
    1bdc:	687a      	ldr	r2, [r7, #4]
    1bde:	4413      	add	r3, r2
    1be0:	781b      	ldrb	r3, [r3, #0]
    1be2:	4618      	mov	r0, r3
    1be4:	f7fe fdfd 	bl	7e2 <digit>
    1be8:	4603      	mov	r3, r0
    1bea:	2b00      	cmp	r3, #0
    1bec:	d1e5      	bne.n	1bba <str_to_date+0xdc>
    1bee:	68fb      	ldr	r3, [r7, #12]
    1bf0:	2b09      	cmp	r3, #9
    1bf2:	dc01      	bgt.n	1bf8 <str_to_date+0x11a>
    1bf4:	2300      	movs	r3, #0
    1bf6:	e00a      	b.n	1c0e <str_to_date+0x130>
    1bf8:	68bb      	ldr	r3, [r7, #8]
    1bfa:	b2db      	uxtb	r3, r3
    1bfc:	f003 031f 	and.w	r3, r3, #31
    1c00:	b2d9      	uxtb	r1, r3
    1c02:	683a      	ldr	r2, [r7, #0]
    1c04:	7893      	ldrb	r3, [r2, #2]
    1c06:	f361 0345 	bfi	r3, r1, #1, #5
    1c0a:	7093      	strb	r3, [r2, #2]
    1c0c:	2301      	movs	r3, #1
    1c0e:	4618      	mov	r0, r3
    1c10:	3710      	adds	r7, #16
    1c12:	46bd      	mov	sp, r7
    1c14:	bd80      	pop	{r7, pc}

00001c16 <str_to_time>:
    1c16:	b580      	push	{r7, lr}
    1c18:	b084      	sub	sp, #16
    1c1a:	af00      	add	r7, sp, #0
    1c1c:	6078      	str	r0, [r7, #4]
    1c1e:	6039      	str	r1, [r7, #0]
    1c20:	2300      	movs	r3, #0
    1c22:	60fb      	str	r3, [r7, #12]
    1c24:	2300      	movs	r3, #0
    1c26:	72fb      	strb	r3, [r7, #11]
    1c28:	e010      	b.n	1c4c <str_to_time+0x36>
    1c2a:	7afb      	ldrb	r3, [r7, #11]
    1c2c:	461a      	mov	r2, r3
    1c2e:	0092      	lsls	r2, r2, #2
    1c30:	4413      	add	r3, r2
    1c32:	005b      	lsls	r3, r3, #1
    1c34:	b2da      	uxtb	r2, r3
    1c36:	68fb      	ldr	r3, [r7, #12]
    1c38:	1c59      	adds	r1, r3, #1
    1c3a:	60f9      	str	r1, [r7, #12]
    1c3c:	4619      	mov	r1, r3
    1c3e:	687b      	ldr	r3, [r7, #4]
    1c40:	440b      	add	r3, r1
    1c42:	781b      	ldrb	r3, [r3, #0]
    1c44:	4413      	add	r3, r2
    1c46:	b2db      	uxtb	r3, r3
    1c48:	3b30      	subs	r3, #48	; 0x30
    1c4a:	72fb      	strb	r3, [r7, #11]
    1c4c:	68fb      	ldr	r3, [r7, #12]
    1c4e:	687a      	ldr	r2, [r7, #4]
    1c50:	4413      	add	r3, r2
    1c52:	781b      	ldrb	r3, [r3, #0]
    1c54:	4618      	mov	r0, r3
    1c56:	f7fe fdc4 	bl	7e2 <digit>
    1c5a:	4603      	mov	r3, r0
    1c5c:	2b00      	cmp	r3, #0
    1c5e:	d1e4      	bne.n	1c2a <str_to_time+0x14>
    1c60:	7afb      	ldrb	r3, [r7, #11]
    1c62:	2b17      	cmp	r3, #23
    1c64:	d805      	bhi.n	1c72 <str_to_time+0x5c>
    1c66:	68fb      	ldr	r3, [r7, #12]
    1c68:	687a      	ldr	r2, [r7, #4]
    1c6a:	4413      	add	r3, r2
    1c6c:	781b      	ldrb	r3, [r3, #0]
    1c6e:	2b3a      	cmp	r3, #58	; 0x3a
    1c70:	d001      	beq.n	1c76 <str_to_time+0x60>
    1c72:	2300      	movs	r3, #0
    1c74:	e06d      	b.n	1d52 <str_to_time+0x13c>
    1c76:	7afb      	ldrb	r3, [r7, #11]
    1c78:	f003 031f 	and.w	r3, r3, #31
    1c7c:	b2d9      	uxtb	r1, r3
    1c7e:	683a      	ldr	r2, [r7, #0]
    1c80:	6813      	ldr	r3, [r2, #0]
    1c82:	f361 3310 	bfi	r3, r1, #12, #5
    1c86:	6013      	str	r3, [r2, #0]
    1c88:	68fb      	ldr	r3, [r7, #12]
    1c8a:	3301      	adds	r3, #1
    1c8c:	60fb      	str	r3, [r7, #12]
    1c8e:	2300      	movs	r3, #0
    1c90:	72fb      	strb	r3, [r7, #11]
    1c92:	e010      	b.n	1cb6 <str_to_time+0xa0>
    1c94:	7afb      	ldrb	r3, [r7, #11]
    1c96:	461a      	mov	r2, r3
    1c98:	0092      	lsls	r2, r2, #2
    1c9a:	4413      	add	r3, r2
    1c9c:	005b      	lsls	r3, r3, #1
    1c9e:	b2da      	uxtb	r2, r3
    1ca0:	68fb      	ldr	r3, [r7, #12]
    1ca2:	1c59      	adds	r1, r3, #1
    1ca4:	60f9      	str	r1, [r7, #12]
    1ca6:	4619      	mov	r1, r3
    1ca8:	687b      	ldr	r3, [r7, #4]
    1caa:	440b      	add	r3, r1
    1cac:	781b      	ldrb	r3, [r3, #0]
    1cae:	4413      	add	r3, r2
    1cb0:	b2db      	uxtb	r3, r3
    1cb2:	3b30      	subs	r3, #48	; 0x30
    1cb4:	72fb      	strb	r3, [r7, #11]
    1cb6:	68fb      	ldr	r3, [r7, #12]
    1cb8:	687a      	ldr	r2, [r7, #4]
    1cba:	4413      	add	r3, r2
    1cbc:	781b      	ldrb	r3, [r3, #0]
    1cbe:	4618      	mov	r0, r3
    1cc0:	f7fe fd8f 	bl	7e2 <digit>
    1cc4:	4603      	mov	r3, r0
    1cc6:	2b00      	cmp	r3, #0
    1cc8:	d1e4      	bne.n	1c94 <str_to_time+0x7e>
    1cca:	7afb      	ldrb	r3, [r7, #11]
    1ccc:	2b3b      	cmp	r3, #59	; 0x3b
    1cce:	d805      	bhi.n	1cdc <str_to_time+0xc6>
    1cd0:	68fb      	ldr	r3, [r7, #12]
    1cd2:	687a      	ldr	r2, [r7, #4]
    1cd4:	4413      	add	r3, r2
    1cd6:	781b      	ldrb	r3, [r3, #0]
    1cd8:	2b3a      	cmp	r3, #58	; 0x3a
    1cda:	d001      	beq.n	1ce0 <str_to_time+0xca>
    1cdc:	2300      	movs	r3, #0
    1cde:	e038      	b.n	1d52 <str_to_time+0x13c>
    1ce0:	7afb      	ldrb	r3, [r7, #11]
    1ce2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1ce6:	b2d9      	uxtb	r1, r3
    1ce8:	683a      	ldr	r2, [r7, #0]
    1cea:	8813      	ldrh	r3, [r2, #0]
    1cec:	f361 138b 	bfi	r3, r1, #6, #6
    1cf0:	8013      	strh	r3, [r2, #0]
    1cf2:	2300      	movs	r3, #0
    1cf4:	72fb      	strb	r3, [r7, #11]
    1cf6:	68fb      	ldr	r3, [r7, #12]
    1cf8:	3301      	adds	r3, #1
    1cfa:	60fb      	str	r3, [r7, #12]
    1cfc:	e010      	b.n	1d20 <str_to_time+0x10a>
    1cfe:	7afb      	ldrb	r3, [r7, #11]
    1d00:	461a      	mov	r2, r3
    1d02:	0092      	lsls	r2, r2, #2
    1d04:	4413      	add	r3, r2
    1d06:	005b      	lsls	r3, r3, #1
    1d08:	b2da      	uxtb	r2, r3
    1d0a:	68fb      	ldr	r3, [r7, #12]
    1d0c:	1c59      	adds	r1, r3, #1
    1d0e:	60f9      	str	r1, [r7, #12]
    1d10:	4619      	mov	r1, r3
    1d12:	687b      	ldr	r3, [r7, #4]
    1d14:	440b      	add	r3, r1
    1d16:	781b      	ldrb	r3, [r3, #0]
    1d18:	4413      	add	r3, r2
    1d1a:	b2db      	uxtb	r3, r3
    1d1c:	3b30      	subs	r3, #48	; 0x30
    1d1e:	72fb      	strb	r3, [r7, #11]
    1d20:	68fb      	ldr	r3, [r7, #12]
    1d22:	687a      	ldr	r2, [r7, #4]
    1d24:	4413      	add	r3, r2
    1d26:	781b      	ldrb	r3, [r3, #0]
    1d28:	4618      	mov	r0, r3
    1d2a:	f7fe fd5a 	bl	7e2 <digit>
    1d2e:	4603      	mov	r3, r0
    1d30:	2b00      	cmp	r3, #0
    1d32:	d1e4      	bne.n	1cfe <str_to_time+0xe8>
    1d34:	7afb      	ldrb	r3, [r7, #11]
    1d36:	2b3b      	cmp	r3, #59	; 0x3b
    1d38:	d901      	bls.n	1d3e <str_to_time+0x128>
    1d3a:	2300      	movs	r3, #0
    1d3c:	e009      	b.n	1d52 <str_to_time+0x13c>
    1d3e:	7afb      	ldrb	r3, [r7, #11]
    1d40:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1d44:	b2d9      	uxtb	r1, r3
    1d46:	683a      	ldr	r2, [r7, #0]
    1d48:	7813      	ldrb	r3, [r2, #0]
    1d4a:	f361 0305 	bfi	r3, r1, #0, #6
    1d4e:	7013      	strb	r3, [r2, #0]
    1d50:	2301      	movs	r3, #1
    1d52:	4618      	mov	r0, r3
    1d54:	3710      	adds	r7, #16
    1d56:	46bd      	mov	sp, r7
    1d58:	bd80      	pop	{r7, pc}

00001d5a <date_str>:
    1d5a:	b480      	push	{r7}
    1d5c:	b085      	sub	sp, #20
    1d5e:	af00      	add	r7, sp, #0
    1d60:	6078      	str	r0, [r7, #4]
    1d62:	6039      	str	r1, [r7, #0]
    1d64:	2300      	movs	r3, #0
    1d66:	60fb      	str	r3, [r7, #12]
    1d68:	687b      	ldr	r3, [r7, #4]
    1d6a:	891b      	ldrh	r3, [r3, #8]
    1d6c:	60bb      	str	r3, [r7, #8]
    1d6e:	68fb      	ldr	r3, [r7, #12]
    1d70:	1c5a      	adds	r2, r3, #1
    1d72:	60fa      	str	r2, [r7, #12]
    1d74:	461a      	mov	r2, r3
    1d76:	683b      	ldr	r3, [r7, #0]
    1d78:	4413      	add	r3, r2
    1d7a:	68ba      	ldr	r2, [r7, #8]
    1d7c:	495d      	ldr	r1, [pc, #372]	; (1ef4 <date_str+0x19a>)
    1d7e:	fba1 1202 	umull	r1, r2, r1, r2
    1d82:	0992      	lsrs	r2, r2, #6
    1d84:	b2d2      	uxtb	r2, r2
    1d86:	3230      	adds	r2, #48	; 0x30
    1d88:	b2d2      	uxtb	r2, r2
    1d8a:	701a      	strb	r2, [r3, #0]
    1d8c:	68bb      	ldr	r3, [r7, #8]
    1d8e:	4a59      	ldr	r2, [pc, #356]	; (1ef4 <date_str+0x19a>)
    1d90:	fba2 1203 	umull	r1, r2, r2, r3
    1d94:	0992      	lsrs	r2, r2, #6
    1d96:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1d9a:	fb01 f202 	mul.w	r2, r1, r2
    1d9e:	1a9b      	subs	r3, r3, r2
    1da0:	60bb      	str	r3, [r7, #8]
    1da2:	68fb      	ldr	r3, [r7, #12]
    1da4:	1c5a      	adds	r2, r3, #1
    1da6:	60fa      	str	r2, [r7, #12]
    1da8:	461a      	mov	r2, r3
    1daa:	683b      	ldr	r3, [r7, #0]
    1dac:	4413      	add	r3, r2
    1dae:	68ba      	ldr	r2, [r7, #8]
    1db0:	4951      	ldr	r1, [pc, #324]	; (1ef8 <date_str+0x19e>)
    1db2:	fba1 1202 	umull	r1, r2, r1, r2
    1db6:	0952      	lsrs	r2, r2, #5
    1db8:	b2d2      	uxtb	r2, r2
    1dba:	3230      	adds	r2, #48	; 0x30
    1dbc:	b2d2      	uxtb	r2, r2
    1dbe:	701a      	strb	r2, [r3, #0]
    1dc0:	68bb      	ldr	r3, [r7, #8]
    1dc2:	4a4d      	ldr	r2, [pc, #308]	; (1ef8 <date_str+0x19e>)
    1dc4:	fba2 1203 	umull	r1, r2, r2, r3
    1dc8:	0952      	lsrs	r2, r2, #5
    1dca:	2164      	movs	r1, #100	; 0x64
    1dcc:	fb01 f202 	mul.w	r2, r1, r2
    1dd0:	1a9b      	subs	r3, r3, r2
    1dd2:	60bb      	str	r3, [r7, #8]
    1dd4:	68fb      	ldr	r3, [r7, #12]
    1dd6:	1c5a      	adds	r2, r3, #1
    1dd8:	60fa      	str	r2, [r7, #12]
    1dda:	461a      	mov	r2, r3
    1ddc:	683b      	ldr	r3, [r7, #0]
    1dde:	4413      	add	r3, r2
    1de0:	68ba      	ldr	r2, [r7, #8]
    1de2:	4946      	ldr	r1, [pc, #280]	; (1efc <date_str+0x1a2>)
    1de4:	fba1 1202 	umull	r1, r2, r1, r2
    1de8:	08d2      	lsrs	r2, r2, #3
    1dea:	b2d2      	uxtb	r2, r2
    1dec:	3230      	adds	r2, #48	; 0x30
    1dee:	b2d2      	uxtb	r2, r2
    1df0:	701a      	strb	r2, [r3, #0]
    1df2:	68fb      	ldr	r3, [r7, #12]
    1df4:	1c5a      	adds	r2, r3, #1
    1df6:	60fa      	str	r2, [r7, #12]
    1df8:	461a      	mov	r2, r3
    1dfa:	683b      	ldr	r3, [r7, #0]
    1dfc:	1898      	adds	r0, r3, r2
    1dfe:	68b9      	ldr	r1, [r7, #8]
    1e00:	4b3e      	ldr	r3, [pc, #248]	; (1efc <date_str+0x1a2>)
    1e02:	fba3 2301 	umull	r2, r3, r3, r1
    1e06:	08da      	lsrs	r2, r3, #3
    1e08:	4613      	mov	r3, r2
    1e0a:	009b      	lsls	r3, r3, #2
    1e0c:	4413      	add	r3, r2
    1e0e:	005b      	lsls	r3, r3, #1
    1e10:	1aca      	subs	r2, r1, r3
    1e12:	b2d3      	uxtb	r3, r2
    1e14:	3330      	adds	r3, #48	; 0x30
    1e16:	b2db      	uxtb	r3, r3
    1e18:	7003      	strb	r3, [r0, #0]
    1e1a:	68fb      	ldr	r3, [r7, #12]
    1e1c:	1c5a      	adds	r2, r3, #1
    1e1e:	60fa      	str	r2, [r7, #12]
    1e20:	461a      	mov	r2, r3
    1e22:	683b      	ldr	r3, [r7, #0]
    1e24:	4413      	add	r3, r2
    1e26:	222f      	movs	r2, #47	; 0x2f
    1e28:	701a      	strb	r2, [r3, #0]
    1e2a:	687b      	ldr	r3, [r7, #4]
    1e2c:	885b      	ldrh	r3, [r3, #2]
    1e2e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1e32:	b2db      	uxtb	r3, r3
    1e34:	60bb      	str	r3, [r7, #8]
    1e36:	68fb      	ldr	r3, [r7, #12]
    1e38:	1c5a      	adds	r2, r3, #1
    1e3a:	60fa      	str	r2, [r7, #12]
    1e3c:	461a      	mov	r2, r3
    1e3e:	683b      	ldr	r3, [r7, #0]
    1e40:	4413      	add	r3, r2
    1e42:	68ba      	ldr	r2, [r7, #8]
    1e44:	492d      	ldr	r1, [pc, #180]	; (1efc <date_str+0x1a2>)
    1e46:	fba1 1202 	umull	r1, r2, r1, r2
    1e4a:	08d2      	lsrs	r2, r2, #3
    1e4c:	b2d2      	uxtb	r2, r2
    1e4e:	3230      	adds	r2, #48	; 0x30
    1e50:	b2d2      	uxtb	r2, r2
    1e52:	701a      	strb	r2, [r3, #0]
    1e54:	68fb      	ldr	r3, [r7, #12]
    1e56:	1c5a      	adds	r2, r3, #1
    1e58:	60fa      	str	r2, [r7, #12]
    1e5a:	461a      	mov	r2, r3
    1e5c:	683b      	ldr	r3, [r7, #0]
    1e5e:	1898      	adds	r0, r3, r2
    1e60:	68b9      	ldr	r1, [r7, #8]
    1e62:	4b26      	ldr	r3, [pc, #152]	; (1efc <date_str+0x1a2>)
    1e64:	fba3 2301 	umull	r2, r3, r3, r1
    1e68:	08da      	lsrs	r2, r3, #3
    1e6a:	4613      	mov	r3, r2
    1e6c:	009b      	lsls	r3, r3, #2
    1e6e:	4413      	add	r3, r2
    1e70:	005b      	lsls	r3, r3, #1
    1e72:	1aca      	subs	r2, r1, r3
    1e74:	b2d3      	uxtb	r3, r2
    1e76:	3330      	adds	r3, #48	; 0x30
    1e78:	b2db      	uxtb	r3, r3
    1e7a:	7003      	strb	r3, [r0, #0]
    1e7c:	68fb      	ldr	r3, [r7, #12]
    1e7e:	1c5a      	adds	r2, r3, #1
    1e80:	60fa      	str	r2, [r7, #12]
    1e82:	461a      	mov	r2, r3
    1e84:	683b      	ldr	r3, [r7, #0]
    1e86:	4413      	add	r3, r2
    1e88:	222f      	movs	r2, #47	; 0x2f
    1e8a:	701a      	strb	r2, [r3, #0]
    1e8c:	687b      	ldr	r3, [r7, #4]
    1e8e:	789b      	ldrb	r3, [r3, #2]
    1e90:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1e94:	b2db      	uxtb	r3, r3
    1e96:	60bb      	str	r3, [r7, #8]
    1e98:	68fb      	ldr	r3, [r7, #12]
    1e9a:	1c5a      	adds	r2, r3, #1
    1e9c:	60fa      	str	r2, [r7, #12]
    1e9e:	461a      	mov	r2, r3
    1ea0:	683b      	ldr	r3, [r7, #0]
    1ea2:	4413      	add	r3, r2
    1ea4:	68ba      	ldr	r2, [r7, #8]
    1ea6:	4915      	ldr	r1, [pc, #84]	; (1efc <date_str+0x1a2>)
    1ea8:	fba1 1202 	umull	r1, r2, r1, r2
    1eac:	08d2      	lsrs	r2, r2, #3
    1eae:	b2d2      	uxtb	r2, r2
    1eb0:	3230      	adds	r2, #48	; 0x30
    1eb2:	b2d2      	uxtb	r2, r2
    1eb4:	701a      	strb	r2, [r3, #0]
    1eb6:	68fb      	ldr	r3, [r7, #12]
    1eb8:	1c5a      	adds	r2, r3, #1
    1eba:	60fa      	str	r2, [r7, #12]
    1ebc:	461a      	mov	r2, r3
    1ebe:	683b      	ldr	r3, [r7, #0]
    1ec0:	1898      	adds	r0, r3, r2
    1ec2:	68b9      	ldr	r1, [r7, #8]
    1ec4:	4b0d      	ldr	r3, [pc, #52]	; (1efc <date_str+0x1a2>)
    1ec6:	fba3 2301 	umull	r2, r3, r3, r1
    1eca:	08da      	lsrs	r2, r3, #3
    1ecc:	4613      	mov	r3, r2
    1ece:	009b      	lsls	r3, r3, #2
    1ed0:	4413      	add	r3, r2
    1ed2:	005b      	lsls	r3, r3, #1
    1ed4:	1aca      	subs	r2, r1, r3
    1ed6:	b2d3      	uxtb	r3, r2
    1ed8:	3330      	adds	r3, #48	; 0x30
    1eda:	b2db      	uxtb	r3, r3
    1edc:	7003      	strb	r3, [r0, #0]
    1ede:	68fb      	ldr	r3, [r7, #12]
    1ee0:	683a      	ldr	r2, [r7, #0]
    1ee2:	4413      	add	r3, r2
    1ee4:	2200      	movs	r2, #0
    1ee6:	701a      	strb	r2, [r3, #0]
    1ee8:	bf00      	nop
    1eea:	3714      	adds	r7, #20
    1eec:	46bd      	mov	sp, r7
    1eee:	bc80      	pop	{r7}
    1ef0:	4770      	bx	lr
    1ef2:	bf00      	nop
    1ef4:	10624dd3 	.word	0x10624dd3
    1ef8:	51eb851f 	.word	0x51eb851f
    1efc:	cccccccd 	.word	0xcccccccd

00001f00 <time_str>:
    1f00:	b480      	push	{r7}
    1f02:	b085      	sub	sp, #20
    1f04:	af00      	add	r7, sp, #0
    1f06:	6078      	str	r0, [r7, #4]
    1f08:	6039      	str	r1, [r7, #0]
    1f0a:	2300      	movs	r3, #0
    1f0c:	60fb      	str	r3, [r7, #12]
    1f0e:	687b      	ldr	r3, [r7, #4]
    1f10:	681b      	ldr	r3, [r3, #0]
    1f12:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1f16:	b2db      	uxtb	r3, r3
    1f18:	60bb      	str	r3, [r7, #8]
    1f1a:	68fb      	ldr	r3, [r7, #12]
    1f1c:	1c5a      	adds	r2, r3, #1
    1f1e:	60fa      	str	r2, [r7, #12]
    1f20:	461a      	mov	r2, r3
    1f22:	683b      	ldr	r3, [r7, #0]
    1f24:	4413      	add	r3, r2
    1f26:	68ba      	ldr	r2, [r7, #8]
    1f28:	4943      	ldr	r1, [pc, #268]	; (2038 <time_str+0x138>)
    1f2a:	fba1 1202 	umull	r1, r2, r1, r2
    1f2e:	08d2      	lsrs	r2, r2, #3
    1f30:	b2d2      	uxtb	r2, r2
    1f32:	3230      	adds	r2, #48	; 0x30
    1f34:	b2d2      	uxtb	r2, r2
    1f36:	701a      	strb	r2, [r3, #0]
    1f38:	68fb      	ldr	r3, [r7, #12]
    1f3a:	1c5a      	adds	r2, r3, #1
    1f3c:	60fa      	str	r2, [r7, #12]
    1f3e:	461a      	mov	r2, r3
    1f40:	683b      	ldr	r3, [r7, #0]
    1f42:	1898      	adds	r0, r3, r2
    1f44:	68b9      	ldr	r1, [r7, #8]
    1f46:	4b3c      	ldr	r3, [pc, #240]	; (2038 <time_str+0x138>)
    1f48:	fba3 2301 	umull	r2, r3, r3, r1
    1f4c:	08da      	lsrs	r2, r3, #3
    1f4e:	4613      	mov	r3, r2
    1f50:	009b      	lsls	r3, r3, #2
    1f52:	4413      	add	r3, r2
    1f54:	005b      	lsls	r3, r3, #1
    1f56:	1aca      	subs	r2, r1, r3
    1f58:	b2d3      	uxtb	r3, r2
    1f5a:	3330      	adds	r3, #48	; 0x30
    1f5c:	b2db      	uxtb	r3, r3
    1f5e:	7003      	strb	r3, [r0, #0]
    1f60:	68fb      	ldr	r3, [r7, #12]
    1f62:	1c5a      	adds	r2, r3, #1
    1f64:	60fa      	str	r2, [r7, #12]
    1f66:	461a      	mov	r2, r3
    1f68:	683b      	ldr	r3, [r7, #0]
    1f6a:	4413      	add	r3, r2
    1f6c:	223a      	movs	r2, #58	; 0x3a
    1f6e:	701a      	strb	r2, [r3, #0]
    1f70:	687b      	ldr	r3, [r7, #4]
    1f72:	881b      	ldrh	r3, [r3, #0]
    1f74:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1f78:	b2db      	uxtb	r3, r3
    1f7a:	60bb      	str	r3, [r7, #8]
    1f7c:	68fb      	ldr	r3, [r7, #12]
    1f7e:	1c5a      	adds	r2, r3, #1
    1f80:	60fa      	str	r2, [r7, #12]
    1f82:	461a      	mov	r2, r3
    1f84:	683b      	ldr	r3, [r7, #0]
    1f86:	4413      	add	r3, r2
    1f88:	68ba      	ldr	r2, [r7, #8]
    1f8a:	492b      	ldr	r1, [pc, #172]	; (2038 <time_str+0x138>)
    1f8c:	fba1 1202 	umull	r1, r2, r1, r2
    1f90:	08d2      	lsrs	r2, r2, #3
    1f92:	b2d2      	uxtb	r2, r2
    1f94:	3230      	adds	r2, #48	; 0x30
    1f96:	b2d2      	uxtb	r2, r2
    1f98:	701a      	strb	r2, [r3, #0]
    1f9a:	68fb      	ldr	r3, [r7, #12]
    1f9c:	1c5a      	adds	r2, r3, #1
    1f9e:	60fa      	str	r2, [r7, #12]
    1fa0:	461a      	mov	r2, r3
    1fa2:	683b      	ldr	r3, [r7, #0]
    1fa4:	1898      	adds	r0, r3, r2
    1fa6:	68b9      	ldr	r1, [r7, #8]
    1fa8:	4b23      	ldr	r3, [pc, #140]	; (2038 <time_str+0x138>)
    1faa:	fba3 2301 	umull	r2, r3, r3, r1
    1fae:	08da      	lsrs	r2, r3, #3
    1fb0:	4613      	mov	r3, r2
    1fb2:	009b      	lsls	r3, r3, #2
    1fb4:	4413      	add	r3, r2
    1fb6:	005b      	lsls	r3, r3, #1
    1fb8:	1aca      	subs	r2, r1, r3
    1fba:	b2d3      	uxtb	r3, r2
    1fbc:	3330      	adds	r3, #48	; 0x30
    1fbe:	b2db      	uxtb	r3, r3
    1fc0:	7003      	strb	r3, [r0, #0]
    1fc2:	68fb      	ldr	r3, [r7, #12]
    1fc4:	1c5a      	adds	r2, r3, #1
    1fc6:	60fa      	str	r2, [r7, #12]
    1fc8:	461a      	mov	r2, r3
    1fca:	683b      	ldr	r3, [r7, #0]
    1fcc:	4413      	add	r3, r2
    1fce:	223a      	movs	r2, #58	; 0x3a
    1fd0:	701a      	strb	r2, [r3, #0]
    1fd2:	687b      	ldr	r3, [r7, #4]
    1fd4:	781b      	ldrb	r3, [r3, #0]
    1fd6:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1fda:	b2db      	uxtb	r3, r3
    1fdc:	60bb      	str	r3, [r7, #8]
    1fde:	68fb      	ldr	r3, [r7, #12]
    1fe0:	1c5a      	adds	r2, r3, #1
    1fe2:	60fa      	str	r2, [r7, #12]
    1fe4:	461a      	mov	r2, r3
    1fe6:	683b      	ldr	r3, [r7, #0]
    1fe8:	4413      	add	r3, r2
    1fea:	68ba      	ldr	r2, [r7, #8]
    1fec:	4912      	ldr	r1, [pc, #72]	; (2038 <time_str+0x138>)
    1fee:	fba1 1202 	umull	r1, r2, r1, r2
    1ff2:	08d2      	lsrs	r2, r2, #3
    1ff4:	b2d2      	uxtb	r2, r2
    1ff6:	3230      	adds	r2, #48	; 0x30
    1ff8:	b2d2      	uxtb	r2, r2
    1ffa:	701a      	strb	r2, [r3, #0]
    1ffc:	68fb      	ldr	r3, [r7, #12]
    1ffe:	1c5a      	adds	r2, r3, #1
    2000:	60fa      	str	r2, [r7, #12]
    2002:	461a      	mov	r2, r3
    2004:	683b      	ldr	r3, [r7, #0]
    2006:	1898      	adds	r0, r3, r2
    2008:	68b9      	ldr	r1, [r7, #8]
    200a:	4b0b      	ldr	r3, [pc, #44]	; (2038 <time_str+0x138>)
    200c:	fba3 2301 	umull	r2, r3, r3, r1
    2010:	08da      	lsrs	r2, r3, #3
    2012:	4613      	mov	r3, r2
    2014:	009b      	lsls	r3, r3, #2
    2016:	4413      	add	r3, r2
    2018:	005b      	lsls	r3, r3, #1
    201a:	1aca      	subs	r2, r1, r3
    201c:	b2d3      	uxtb	r3, r2
    201e:	3330      	adds	r3, #48	; 0x30
    2020:	b2db      	uxtb	r3, r3
    2022:	7003      	strb	r3, [r0, #0]
    2024:	68fb      	ldr	r3, [r7, #12]
    2026:	683a      	ldr	r2, [r7, #0]
    2028:	4413      	add	r3, r2
    202a:	2200      	movs	r2, #0
    202c:	701a      	strb	r2, [r3, #0]
    202e:	bf00      	nop
    2030:	3714      	adds	r7, #20
    2032:	46bd      	mov	sp, r7
    2034:	bc80      	pop	{r7}
    2036:	4770      	bx	lr
    2038:	cccccccd 	.word	0xcccccccd

0000203c <get_fattime>:
    203c:	b580      	push	{r7, lr}
    203e:	b084      	sub	sp, #16
    2040:	af00      	add	r7, sp, #0
    2042:	463b      	mov	r3, r7
    2044:	4618      	mov	r0, r3
    2046:	f7ff fa69 	bl	151c <get_date_time>
    204a:	783b      	ldrb	r3, [r7, #0]
    204c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2050:	b2db      	uxtb	r3, r3
    2052:	0fda      	lsrs	r2, r3, #31
    2054:	4413      	add	r3, r2
    2056:	105b      	asrs	r3, r3, #1
    2058:	b2db      	uxtb	r3, r3
    205a:	f003 031f 	and.w	r3, r3, #31
    205e:	b2da      	uxtb	r2, r3
    2060:	7b3b      	ldrb	r3, [r7, #12]
    2062:	f362 0304 	bfi	r3, r2, #0, #5
    2066:	733b      	strb	r3, [r7, #12]
    2068:	883b      	ldrh	r3, [r7, #0]
    206a:	f3c3 1385 	ubfx	r3, r3, #6, #6
    206e:	b2da      	uxtb	r2, r3
    2070:	89bb      	ldrh	r3, [r7, #12]
    2072:	f362 134a 	bfi	r3, r2, #5, #6
    2076:	81bb      	strh	r3, [r7, #12]
    2078:	683b      	ldr	r3, [r7, #0]
    207a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    207e:	b2da      	uxtb	r2, r3
    2080:	7b7b      	ldrb	r3, [r7, #13]
    2082:	f362 03c7 	bfi	r3, r2, #3, #5
    2086:	737b      	strb	r3, [r7, #13]
    2088:	78bb      	ldrb	r3, [r7, #2]
    208a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    208e:	b2da      	uxtb	r2, r3
    2090:	7bbb      	ldrb	r3, [r7, #14]
    2092:	f362 0304 	bfi	r3, r2, #0, #5
    2096:	73bb      	strb	r3, [r7, #14]
    2098:	887b      	ldrh	r3, [r7, #2]
    209a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    209e:	b2da      	uxtb	r2, r3
    20a0:	89fb      	ldrh	r3, [r7, #14]
    20a2:	f362 1348 	bfi	r3, r2, #5, #4
    20a6:	81fb      	strh	r3, [r7, #14]
    20a8:	893b      	ldrh	r3, [r7, #8]
    20aa:	b2db      	uxtb	r3, r3
    20ac:	3344      	adds	r3, #68	; 0x44
    20ae:	b2db      	uxtb	r3, r3
    20b0:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    20b4:	b2da      	uxtb	r2, r3
    20b6:	7bfb      	ldrb	r3, [r7, #15]
    20b8:	f362 0347 	bfi	r3, r2, #1, #7
    20bc:	73fb      	strb	r3, [r7, #15]
    20be:	68fb      	ldr	r3, [r7, #12]
    20c0:	4618      	mov	r0, r3
    20c2:	3710      	adds	r7, #16
    20c4:	46bd      	mov	sp, r7
    20c6:	bd80      	pop	{r7, pc}

000020c8 <RTC_handler>:
    20c8:	b480      	push	{r7}
    20ca:	b083      	sub	sp, #12
    20cc:	af00      	add	r7, sp, #0
    20ce:	4b0a      	ldr	r3, [pc, #40]	; (20f8 <RTC_handler+0x30>)
    20d0:	685b      	ldr	r3, [r3, #4]
    20d2:	f003 0301 	and.w	r3, r3, #1
    20d6:	2b00      	cmp	r3, #0
    20d8:	d001      	beq.n	20de <RTC_handler+0x16>
    20da:	4b07      	ldr	r3, [pc, #28]	; (20f8 <RTC_handler+0x30>)
    20dc:	685b      	ldr	r3, [r3, #4]
    20de:	4b06      	ldr	r3, [pc, #24]	; (20f8 <RTC_handler+0x30>)
    20e0:	685b      	ldr	r3, [r3, #4]
    20e2:	f003 0302 	and.w	r3, r3, #2
    20e6:	2b00      	cmp	r3, #0
    20e8:	d001      	beq.n	20ee <RTC_handler+0x26>
    20ea:	4b03      	ldr	r3, [pc, #12]	; (20f8 <RTC_handler+0x30>)
    20ec:	685b      	ldr	r3, [r3, #4]
    20ee:	bf00      	nop
    20f0:	370c      	adds	r7, #12
    20f2:	46bd      	mov	sp, r7
    20f4:	bc80      	pop	{r7}
    20f6:	4770      	bx	lr
    20f8:	40002800 	.word	0x40002800

000020fc <spi_baudrate>:
    20fc:	b480      	push	{r7}
    20fe:	b083      	sub	sp, #12
    2100:	af00      	add	r7, sp, #0
    2102:	6078      	str	r0, [r7, #4]
    2104:	6039      	str	r1, [r7, #0]
    2106:	687b      	ldr	r3, [r7, #4]
    2108:	681b      	ldr	r3, [r3, #0]
    210a:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    210e:	687b      	ldr	r3, [r7, #4]
    2110:	601a      	str	r2, [r3, #0]
    2112:	687b      	ldr	r3, [r7, #4]
    2114:	681a      	ldr	r2, [r3, #0]
    2116:	683b      	ldr	r3, [r7, #0]
    2118:	00db      	lsls	r3, r3, #3
    211a:	431a      	orrs	r2, r3
    211c:	687b      	ldr	r3, [r7, #4]
    211e:	601a      	str	r2, [r3, #0]
    2120:	bf00      	nop
    2122:	370c      	adds	r7, #12
    2124:	46bd      	mov	sp, r7
    2126:	bc80      	pop	{r7}
    2128:	4770      	bx	lr

0000212a <spi_config_port>:
    212a:	b580      	push	{r7, lr}
    212c:	b082      	sub	sp, #8
    212e:	af00      	add	r7, sp, #0
    2130:	6078      	str	r0, [r7, #4]
    2132:	6039      	str	r1, [r7, #0]
    2134:	4a33      	ldr	r2, [pc, #204]	; (2204 <spi_config_port+0xda>)
    2136:	4b33      	ldr	r3, [pc, #204]	; (2204 <spi_config_port+0xda>)
    2138:	699b      	ldr	r3, [r3, #24]
    213a:	f043 0301 	orr.w	r3, r3, #1
    213e:	6193      	str	r3, [r2, #24]
    2140:	687b      	ldr	r3, [r7, #4]
    2142:	4a31      	ldr	r2, [pc, #196]	; (2208 <spi_config_port+0xde>)
    2144:	4293      	cmp	r3, r2
    2146:	d13e      	bne.n	21c6 <spi_config_port+0x9c>
    2148:	683b      	ldr	r3, [r7, #0]
    214a:	2b00      	cmp	r3, #0
    214c:	d11a      	bne.n	2184 <spi_config_port+0x5a>
    214e:	4a2d      	ldr	r2, [pc, #180]	; (2204 <spi_config_port+0xda>)
    2150:	4b2c      	ldr	r3, [pc, #176]	; (2204 <spi_config_port+0xda>)
    2152:	699b      	ldr	r3, [r3, #24]
    2154:	f043 0304 	orr.w	r3, r3, #4
    2158:	6193      	str	r3, [r2, #24]
    215a:	2203      	movs	r2, #3
    215c:	2104      	movs	r1, #4
    215e:	482b      	ldr	r0, [pc, #172]	; (220c <spi_config_port+0xe2>)
    2160:	f7fe fd47 	bl	bf2 <config_pin>
    2164:	220b      	movs	r2, #11
    2166:	2105      	movs	r1, #5
    2168:	4828      	ldr	r0, [pc, #160]	; (220c <spi_config_port+0xe2>)
    216a:	f7fe fd42 	bl	bf2 <config_pin>
    216e:	2204      	movs	r2, #4
    2170:	2106      	movs	r1, #6
    2172:	4826      	ldr	r0, [pc, #152]	; (220c <spi_config_port+0xe2>)
    2174:	f7fe fd3d 	bl	bf2 <config_pin>
    2178:	220b      	movs	r2, #11
    217a:	2107      	movs	r1, #7
    217c:	4823      	ldr	r0, [pc, #140]	; (220c <spi_config_port+0xe2>)
    217e:	f7fe fd38 	bl	bf2 <config_pin>
    2182:	e03a      	b.n	21fa <spi_config_port+0xd0>
    2184:	4a1f      	ldr	r2, [pc, #124]	; (2204 <spi_config_port+0xda>)
    2186:	4b1f      	ldr	r3, [pc, #124]	; (2204 <spi_config_port+0xda>)
    2188:	699b      	ldr	r3, [r3, #24]
    218a:	f043 030d 	orr.w	r3, r3, #13
    218e:	6193      	str	r3, [r2, #24]
    2190:	4a1f      	ldr	r2, [pc, #124]	; (2210 <spi_config_port+0xe6>)
    2192:	4b1f      	ldr	r3, [pc, #124]	; (2210 <spi_config_port+0xe6>)
    2194:	685b      	ldr	r3, [r3, #4]
    2196:	f043 0301 	orr.w	r3, r3, #1
    219a:	6053      	str	r3, [r2, #4]
    219c:	2203      	movs	r2, #3
    219e:	210f      	movs	r1, #15
    21a0:	481a      	ldr	r0, [pc, #104]	; (220c <spi_config_port+0xe2>)
    21a2:	f7fe fd26 	bl	bf2 <config_pin>
    21a6:	220b      	movs	r2, #11
    21a8:	2103      	movs	r1, #3
    21aa:	481a      	ldr	r0, [pc, #104]	; (2214 <spi_config_port+0xea>)
    21ac:	f7fe fd21 	bl	bf2 <config_pin>
    21b0:	2204      	movs	r2, #4
    21b2:	2104      	movs	r1, #4
    21b4:	4817      	ldr	r0, [pc, #92]	; (2214 <spi_config_port+0xea>)
    21b6:	f7fe fd1c 	bl	bf2 <config_pin>
    21ba:	220b      	movs	r2, #11
    21bc:	2105      	movs	r1, #5
    21be:	4815      	ldr	r0, [pc, #84]	; (2214 <spi_config_port+0xea>)
    21c0:	f7fe fd17 	bl	bf2 <config_pin>
    21c4:	e019      	b.n	21fa <spi_config_port+0xd0>
    21c6:	4a0f      	ldr	r2, [pc, #60]	; (2204 <spi_config_port+0xda>)
    21c8:	4b0e      	ldr	r3, [pc, #56]	; (2204 <spi_config_port+0xda>)
    21ca:	699b      	ldr	r3, [r3, #24]
    21cc:	f043 0308 	orr.w	r3, r3, #8
    21d0:	6193      	str	r3, [r2, #24]
    21d2:	2203      	movs	r2, #3
    21d4:	2102      	movs	r1, #2
    21d6:	480f      	ldr	r0, [pc, #60]	; (2214 <spi_config_port+0xea>)
    21d8:	f7fe fd0b 	bl	bf2 <config_pin>
    21dc:	220b      	movs	r2, #11
    21de:	210d      	movs	r1, #13
    21e0:	480c      	ldr	r0, [pc, #48]	; (2214 <spi_config_port+0xea>)
    21e2:	f7fe fd06 	bl	bf2 <config_pin>
    21e6:	2204      	movs	r2, #4
    21e8:	210e      	movs	r1, #14
    21ea:	480a      	ldr	r0, [pc, #40]	; (2214 <spi_config_port+0xea>)
    21ec:	f7fe fd01 	bl	bf2 <config_pin>
    21f0:	220b      	movs	r2, #11
    21f2:	210f      	movs	r1, #15
    21f4:	4807      	ldr	r0, [pc, #28]	; (2214 <spi_config_port+0xea>)
    21f6:	f7fe fcfc 	bl	bf2 <config_pin>
    21fa:	bf00      	nop
    21fc:	3708      	adds	r7, #8
    21fe:	46bd      	mov	sp, r7
    2200:	bd80      	pop	{r7, pc}
    2202:	bf00      	nop
    2204:	40021000 	.word	0x40021000
    2208:	40013000 	.word	0x40013000
    220c:	40010800 	.word	0x40010800
    2210:	40010000 	.word	0x40010000
    2214:	40010c00 	.word	0x40010c00

00002218 <spi_init>:
    2218:	b580      	push	{r7, lr}
    221a:	b084      	sub	sp, #16
    221c:	af00      	add	r7, sp, #0
    221e:	60f8      	str	r0, [r7, #12]
    2220:	60b9      	str	r1, [r7, #8]
    2222:	607a      	str	r2, [r7, #4]
    2224:	603b      	str	r3, [r7, #0]
    2226:	6839      	ldr	r1, [r7, #0]
    2228:	68f8      	ldr	r0, [r7, #12]
    222a:	f7ff ff7e 	bl	212a <spi_config_port>
    222e:	68fb      	ldr	r3, [r7, #12]
    2230:	4a10      	ldr	r2, [pc, #64]	; (2274 <spi_init+0x5c>)
    2232:	4293      	cmp	r3, r2
    2234:	d106      	bne.n	2244 <spi_init+0x2c>
    2236:	4a10      	ldr	r2, [pc, #64]	; (2278 <spi_init+0x60>)
    2238:	4b0f      	ldr	r3, [pc, #60]	; (2278 <spi_init+0x60>)
    223a:	699b      	ldr	r3, [r3, #24]
    223c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2240:	6193      	str	r3, [r2, #24]
    2242:	e005      	b.n	2250 <spi_init+0x38>
    2244:	4a0c      	ldr	r2, [pc, #48]	; (2278 <spi_init+0x60>)
    2246:	4b0c      	ldr	r3, [pc, #48]	; (2278 <spi_init+0x60>)
    2248:	69db      	ldr	r3, [r3, #28]
    224a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    224e:	61d3      	str	r3, [r2, #28]
    2250:	68fb      	ldr	r3, [r7, #12]
    2252:	687a      	ldr	r2, [r7, #4]
    2254:	601a      	str	r2, [r3, #0]
    2256:	68b9      	ldr	r1, [r7, #8]
    2258:	68f8      	ldr	r0, [r7, #12]
    225a:	f7ff ff4f 	bl	20fc <spi_baudrate>
    225e:	68fb      	ldr	r3, [r7, #12]
    2260:	681b      	ldr	r3, [r3, #0]
    2262:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    2266:	68fb      	ldr	r3, [r7, #12]
    2268:	601a      	str	r2, [r3, #0]
    226a:	bf00      	nop
    226c:	3710      	adds	r7, #16
    226e:	46bd      	mov	sp, r7
    2270:	bd80      	pop	{r7, pc}
    2272:	bf00      	nop
    2274:	40013000 	.word	0x40013000
    2278:	40021000 	.word	0x40021000

0000227c <spi_send>:
    227c:	b480      	push	{r7}
    227e:	b085      	sub	sp, #20
    2280:	af00      	add	r7, sp, #0
    2282:	6078      	str	r0, [r7, #4]
    2284:	460b      	mov	r3, r1
    2286:	70fb      	strb	r3, [r7, #3]
    2288:	bf00      	nop
    228a:	687b      	ldr	r3, [r7, #4]
    228c:	689b      	ldr	r3, [r3, #8]
    228e:	f003 0302 	and.w	r3, r3, #2
    2292:	2b00      	cmp	r3, #0
    2294:	d0f9      	beq.n	228a <spi_send+0xe>
    2296:	78fa      	ldrb	r2, [r7, #3]
    2298:	687b      	ldr	r3, [r7, #4]
    229a:	60da      	str	r2, [r3, #12]
    229c:	bf00      	nop
    229e:	687b      	ldr	r3, [r7, #4]
    22a0:	689b      	ldr	r3, [r3, #8]
    22a2:	f003 0301 	and.w	r3, r3, #1
    22a6:	2b00      	cmp	r3, #0
    22a8:	d0f9      	beq.n	229e <spi_send+0x22>
    22aa:	687b      	ldr	r3, [r7, #4]
    22ac:	68db      	ldr	r3, [r3, #12]
    22ae:	73fb      	strb	r3, [r7, #15]
    22b0:	bf00      	nop
    22b2:	3714      	adds	r7, #20
    22b4:	46bd      	mov	sp, r7
    22b6:	bc80      	pop	{r7}
    22b8:	4770      	bx	lr

000022ba <spi_receive>:
    22ba:	b480      	push	{r7}
    22bc:	b085      	sub	sp, #20
    22be:	af00      	add	r7, sp, #0
    22c0:	6078      	str	r0, [r7, #4]
    22c2:	bf00      	nop
    22c4:	687b      	ldr	r3, [r7, #4]
    22c6:	689b      	ldr	r3, [r3, #8]
    22c8:	f003 0302 	and.w	r3, r3, #2
    22cc:	2b00      	cmp	r3, #0
    22ce:	d0f9      	beq.n	22c4 <spi_receive+0xa>
    22d0:	687b      	ldr	r3, [r7, #4]
    22d2:	22ff      	movs	r2, #255	; 0xff
    22d4:	60da      	str	r2, [r3, #12]
    22d6:	bf00      	nop
    22d8:	687b      	ldr	r3, [r7, #4]
    22da:	689b      	ldr	r3, [r3, #8]
    22dc:	f003 0301 	and.w	r3, r3, #1
    22e0:	2b00      	cmp	r3, #0
    22e2:	d0f9      	beq.n	22d8 <spi_receive+0x1e>
    22e4:	687b      	ldr	r3, [r7, #4]
    22e6:	68db      	ldr	r3, [r3, #12]
    22e8:	73fb      	strb	r3, [r7, #15]
    22ea:	7bfb      	ldrb	r3, [r7, #15]
    22ec:	4618      	mov	r0, r3
    22ee:	3714      	adds	r7, #20
    22f0:	46bd      	mov	sp, r7
    22f2:	bc80      	pop	{r7}
    22f4:	4770      	bx	lr

000022f6 <spi_send_block>:
    22f6:	b480      	push	{r7}
    22f8:	b087      	sub	sp, #28
    22fa:	af00      	add	r7, sp, #0
    22fc:	60f8      	str	r0, [r7, #12]
    22fe:	60b9      	str	r1, [r7, #8]
    2300:	607a      	str	r2, [r7, #4]
    2302:	e010      	b.n	2326 <spi_send_block+0x30>
    2304:	68bb      	ldr	r3, [r7, #8]
    2306:	1c5a      	adds	r2, r3, #1
    2308:	60ba      	str	r2, [r7, #8]
    230a:	781b      	ldrb	r3, [r3, #0]
    230c:	461a      	mov	r2, r3
    230e:	68fb      	ldr	r3, [r7, #12]
    2310:	60da      	str	r2, [r3, #12]
    2312:	bf00      	nop
    2314:	68fb      	ldr	r3, [r7, #12]
    2316:	689b      	ldr	r3, [r3, #8]
    2318:	f003 0302 	and.w	r3, r3, #2
    231c:	2b00      	cmp	r3, #0
    231e:	d0f9      	beq.n	2314 <spi_send_block+0x1e>
    2320:	687b      	ldr	r3, [r7, #4]
    2322:	3b01      	subs	r3, #1
    2324:	607b      	str	r3, [r7, #4]
    2326:	687b      	ldr	r3, [r7, #4]
    2328:	2b00      	cmp	r3, #0
    232a:	d1eb      	bne.n	2304 <spi_send_block+0xe>
    232c:	bf00      	nop
    232e:	68fb      	ldr	r3, [r7, #12]
    2330:	689b      	ldr	r3, [r3, #8]
    2332:	f003 0380 	and.w	r3, r3, #128	; 0x80
    2336:	2b00      	cmp	r3, #0
    2338:	d1f9      	bne.n	232e <spi_send_block+0x38>
    233a:	68fb      	ldr	r3, [r7, #12]
    233c:	68db      	ldr	r3, [r3, #12]
    233e:	75fb      	strb	r3, [r7, #23]
    2340:	bf00      	nop
    2342:	371c      	adds	r7, #28
    2344:	46bd      	mov	sp, r7
    2346:	bc80      	pop	{r7}
    2348:	4770      	bx	lr

0000234a <spi_receive_block>:
    234a:	b480      	push	{r7}
    234c:	b085      	sub	sp, #20
    234e:	af00      	add	r7, sp, #0
    2350:	60f8      	str	r0, [r7, #12]
    2352:	60b9      	str	r1, [r7, #8]
    2354:	607a      	str	r2, [r7, #4]
    2356:	e013      	b.n	2380 <spi_receive_block+0x36>
    2358:	68fb      	ldr	r3, [r7, #12]
    235a:	2200      	movs	r2, #0
    235c:	60da      	str	r2, [r3, #12]
    235e:	bf00      	nop
    2360:	68fb      	ldr	r3, [r7, #12]
    2362:	689b      	ldr	r3, [r3, #8]
    2364:	f003 0301 	and.w	r3, r3, #1
    2368:	2b00      	cmp	r3, #0
    236a:	d0f9      	beq.n	2360 <spi_receive_block+0x16>
    236c:	68bb      	ldr	r3, [r7, #8]
    236e:	1c5a      	adds	r2, r3, #1
    2370:	60ba      	str	r2, [r7, #8]
    2372:	68fa      	ldr	r2, [r7, #12]
    2374:	68d2      	ldr	r2, [r2, #12]
    2376:	b2d2      	uxtb	r2, r2
    2378:	701a      	strb	r2, [r3, #0]
    237a:	687b      	ldr	r3, [r7, #4]
    237c:	3b01      	subs	r3, #1
    237e:	607b      	str	r3, [r7, #4]
    2380:	687b      	ldr	r3, [r7, #4]
    2382:	2b00      	cmp	r3, #0
    2384:	d1e8      	bne.n	2358 <spi_receive_block+0xe>
    2386:	bf00      	nop
    2388:	3714      	adds	r7, #20
    238a:	46bd      	mov	sp, r7
    238c:	bc80      	pop	{r7}
    238e:	4770      	bx	lr

00002390 <reset_mcu>:
    2390:	4b01      	ldr	r3, [pc, #4]	; (2398 <reset_mcu+0x8>)
    2392:	4a02      	ldr	r2, [pc, #8]	; (239c <reset_mcu+0xc>)
    2394:	601a      	str	r2, [r3, #0]
    2396:	bf00      	nop
    2398:	e000ed0c 	.word	0xe000ed0c
    239c:	05fa0004 	.word	0x05fa0004

000023a0 <print_fault>:
    23a0:	b580      	push	{r7, lr}
    23a2:	b082      	sub	sp, #8
    23a4:	af00      	add	r7, sp, #0
    23a6:	6078      	str	r0, [r7, #4]
    23a8:	6039      	str	r1, [r7, #0]
    23aa:	6878      	ldr	r0, [r7, #4]
    23ac:	f7fe fd54 	bl	e58 <gfx_print>
    23b0:	4818      	ldr	r0, [pc, #96]	; (2414 <print_fault+0x74>)
    23b2:	f7fe fd51 	bl	e58 <gfx_print>
    23b6:	683b      	ldr	r3, [r7, #0]
    23b8:	2b00      	cmp	r3, #0
    23ba:	d004      	beq.n	23c6 <print_fault+0x26>
    23bc:	683b      	ldr	r3, [r7, #0]
    23be:	2110      	movs	r1, #16
    23c0:	4618      	mov	r0, r3
    23c2:	f7fe fd6c 	bl	e9e <gfx_print_int>
    23c6:	200d      	movs	r0, #13
    23c8:	f7fe fce6 	bl	d98 <gfx_putchar>
    23cc:	4812      	ldr	r0, [pc, #72]	; (2418 <print_fault+0x78>)
    23ce:	f7fe fd43 	bl	e58 <gfx_print>
    23d2:	4b12      	ldr	r3, [pc, #72]	; (241c <print_fault+0x7c>)
    23d4:	681b      	ldr	r3, [r3, #0]
    23d6:	f3c3 430f 	ubfx	r3, r3, #16, #16
    23da:	b29b      	uxth	r3, r3
    23dc:	2110      	movs	r1, #16
    23de:	4618      	mov	r0, r3
    23e0:	f7fe fd5d 	bl	e9e <gfx_print_int>
    23e4:	480e      	ldr	r0, [pc, #56]	; (2420 <print_fault+0x80>)
    23e6:	f7fe fd37 	bl	e58 <gfx_print>
    23ea:	4b0c      	ldr	r3, [pc, #48]	; (241c <print_fault+0x7c>)
    23ec:	681b      	ldr	r3, [r3, #0]
    23ee:	f3c3 2307 	ubfx	r3, r3, #8, #8
    23f2:	b2db      	uxtb	r3, r3
    23f4:	2110      	movs	r1, #16
    23f6:	4618      	mov	r0, r3
    23f8:	f7fe fd51 	bl	e9e <gfx_print_int>
    23fc:	4809      	ldr	r0, [pc, #36]	; (2424 <print_fault+0x84>)
    23fe:	f7fe fd2b 	bl	e58 <gfx_print>
    2402:	4b06      	ldr	r3, [pc, #24]	; (241c <print_fault+0x7c>)
    2404:	681b      	ldr	r3, [r3, #0]
    2406:	b2db      	uxtb	r3, r3
    2408:	2110      	movs	r1, #16
    240a:	4618      	mov	r0, r3
    240c:	f7fe fd47 	bl	e9e <gfx_print_int>
    2410:	e7fe      	b.n	2410 <print_fault+0x70>
    2412:	bf00      	nop
    2414:	00002cbc 	.word	0x00002cbc
    2418:	00002ccc 	.word	0x00002ccc
    241c:	e000ed28 	.word	0xe000ed28
    2420:	00002cd4 	.word	0x00002cd4
    2424:	00002cdc 	.word	0x00002cdc

00002428 <config_systicks>:
    2428:	b580      	push	{r7, lr}
    242a:	af00      	add	r7, sp, #0
    242c:	2109      	movs	r1, #9
    242e:	f06f 000e 	mvn.w	r0, #14
    2432:	f7fe fff3 	bl	141c <set_int_priority>
    2436:	4b04      	ldr	r3, [pc, #16]	; (2448 <config_systicks+0x20>)
    2438:	f242 22f3 	movw	r2, #8947	; 0x22f3
    243c:	601a      	str	r2, [r3, #0]
    243e:	4b03      	ldr	r3, [pc, #12]	; (244c <config_systicks+0x24>)
    2440:	2203      	movs	r2, #3
    2442:	601a      	str	r2, [r3, #0]
    2444:	bf00      	nop
    2446:	bd80      	pop	{r7, pc}
    2448:	e000e014 	.word	0xe000e014
    244c:	e000e010 	.word	0xe000e010

00002450 <pause>:
    2450:	b480      	push	{r7}
    2452:	b083      	sub	sp, #12
    2454:	af00      	add	r7, sp, #0
    2456:	6078      	str	r0, [r7, #4]
    2458:	4a06      	ldr	r2, [pc, #24]	; (2474 <pause+0x24>)
    245a:	687b      	ldr	r3, [r7, #4]
    245c:	6013      	str	r3, [r2, #0]
    245e:	bf00      	nop
    2460:	4b04      	ldr	r3, [pc, #16]	; (2474 <pause+0x24>)
    2462:	681b      	ldr	r3, [r3, #0]
    2464:	2b00      	cmp	r3, #0
    2466:	d1fb      	bne.n	2460 <pause+0x10>
    2468:	bf00      	nop
    246a:	370c      	adds	r7, #12
    246c:	46bd      	mov	sp, r7
    246e:	bc80      	pop	{r7}
    2470:	4770      	bx	lr
    2472:	bf00      	nop
    2474:	20000464 	.word	0x20000464

00002478 <STK_handler>:
    2478:	b480      	push	{r7}
    247a:	af00      	add	r7, sp, #0
    247c:	4b08      	ldr	r3, [pc, #32]	; (24a0 <STK_handler+0x28>)
    247e:	681b      	ldr	r3, [r3, #0]
    2480:	3301      	adds	r3, #1
    2482:	4a07      	ldr	r2, [pc, #28]	; (24a0 <STK_handler+0x28>)
    2484:	6013      	str	r3, [r2, #0]
    2486:	4b07      	ldr	r3, [pc, #28]	; (24a4 <STK_handler+0x2c>)
    2488:	681b      	ldr	r3, [r3, #0]
    248a:	2b00      	cmp	r3, #0
    248c:	d004      	beq.n	2498 <STK_handler+0x20>
    248e:	4b05      	ldr	r3, [pc, #20]	; (24a4 <STK_handler+0x2c>)
    2490:	681b      	ldr	r3, [r3, #0]
    2492:	3b01      	subs	r3, #1
    2494:	4a03      	ldr	r2, [pc, #12]	; (24a4 <STK_handler+0x2c>)
    2496:	6013      	str	r3, [r2, #0]
    2498:	bf00      	nop
    249a:	46bd      	mov	sp, r7
    249c:	bc80      	pop	{r7}
    249e:	4770      	bx	lr
    24a0:	20000460 	.word	0x20000460
    24a4:	20000464 	.word	0x20000464

000024a8 <tvout_init>:
    24a8:	b580      	push	{r7, lr}
    24aa:	af00      	add	r7, sp, #0
    24ac:	220a      	movs	r2, #10
    24ae:	2108      	movs	r1, #8
    24b0:	4843      	ldr	r0, [pc, #268]	; (25c0 <tvout_init+0x118>)
    24b2:	f7fe fb9e 	bl	bf2 <config_pin>
    24b6:	4b42      	ldr	r3, [pc, #264]	; (25c0 <tvout_init+0x118>)
    24b8:	f04f 3233 	mov.w	r2, #858993459	; 0x33333333
    24bc:	601a      	str	r2, [r3, #0]
    24be:	4b40      	ldr	r3, [pc, #256]	; (25c0 <tvout_init+0x118>)
    24c0:	2200      	movs	r2, #0
    24c2:	60da      	str	r2, [r3, #12]
    24c4:	4a3f      	ldr	r2, [pc, #252]	; (25c4 <tvout_init+0x11c>)
    24c6:	4b3f      	ldr	r3, [pc, #252]	; (25c4 <tvout_init+0x11c>)
    24c8:	699b      	ldr	r3, [r3, #24]
    24ca:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    24ce:	6193      	str	r3, [r2, #24]
    24d0:	4b3d      	ldr	r3, [pc, #244]	; (25c8 <tvout_init+0x120>)
    24d2:	2278      	movs	r2, #120	; 0x78
    24d4:	619a      	str	r2, [r3, #24]
    24d6:	4b3c      	ldr	r3, [pc, #240]	; (25c8 <tvout_init+0x120>)
    24d8:	2201      	movs	r2, #1
    24da:	621a      	str	r2, [r3, #32]
    24dc:	4b3a      	ldr	r3, [pc, #232]	; (25c8 <tvout_init+0x120>)
    24de:	2284      	movs	r2, #132	; 0x84
    24e0:	601a      	str	r2, [r3, #0]
    24e2:	4b39      	ldr	r3, [pc, #228]	; (25c8 <tvout_init+0x120>)
    24e4:	f241 12c5 	movw	r2, #4549	; 0x11c5
    24e8:	62da      	str	r2, [r3, #44]	; 0x2c
    24ea:	4b37      	ldr	r3, [pc, #220]	; (25c8 <tvout_init+0x120>)
    24ec:	f44f 72a8 	mov.w	r2, #336	; 0x150
    24f0:	635a      	str	r2, [r3, #52]	; 0x34
    24f2:	4b35      	ldr	r3, [pc, #212]	; (25c8 <tvout_init+0x120>)
    24f4:	f240 126d 	movw	r2, #365	; 0x16d
    24f8:	639a      	str	r2, [r3, #56]	; 0x38
    24fa:	4a33      	ldr	r2, [pc, #204]	; (25c8 <tvout_init+0x120>)
    24fc:	4b32      	ldr	r3, [pc, #200]	; (25c8 <tvout_init+0x120>)
    24fe:	695b      	ldr	r3, [r3, #20]
    2500:	f043 0301 	orr.w	r3, r3, #1
    2504:	6153      	str	r3, [r2, #20]
    2506:	4b30      	ldr	r3, [pc, #192]	; (25c8 <tvout_init+0x120>)
    2508:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    250c:	645a      	str	r2, [r3, #68]	; 0x44
    250e:	4b2e      	ldr	r3, [pc, #184]	; (25c8 <tvout_init+0x120>)
    2510:	2200      	movs	r2, #0
    2512:	611a      	str	r2, [r3, #16]
    2514:	4a2c      	ldr	r2, [pc, #176]	; (25c8 <tvout_init+0x120>)
    2516:	4b2c      	ldr	r3, [pc, #176]	; (25c8 <tvout_init+0x120>)
    2518:	68db      	ldr	r3, [r3, #12]
    251a:	f043 0301 	orr.w	r3, r3, #1
    251e:	60d3      	str	r3, [r2, #12]
    2520:	2101      	movs	r1, #1
    2522:	2019      	movs	r0, #25
    2524:	f7fe ff7a 	bl	141c <set_int_priority>
    2528:	2101      	movs	r1, #1
    252a:	201b      	movs	r0, #27
    252c:	f7fe ff76 	bl	141c <set_int_priority>
    2530:	201b      	movs	r0, #27
    2532:	f7fe feb9 	bl	12a8 <enable_interrupt>
    2536:	2019      	movs	r0, #25
    2538:	f7fe feb6 	bl	12a8 <enable_interrupt>
    253c:	4a22      	ldr	r2, [pc, #136]	; (25c8 <tvout_init+0x120>)
    253e:	4b22      	ldr	r3, [pc, #136]	; (25c8 <tvout_init+0x120>)
    2540:	681b      	ldr	r3, [r3, #0]
    2542:	f043 0301 	orr.w	r3, r3, #1
    2546:	6013      	str	r3, [r2, #0]
    2548:	220a      	movs	r2, #10
    254a:	2100      	movs	r1, #0
    254c:	481f      	ldr	r0, [pc, #124]	; (25cc <tvout_init+0x124>)
    254e:	f7fe fb50 	bl	bf2 <config_pin>
    2552:	220a      	movs	r2, #10
    2554:	2101      	movs	r1, #1
    2556:	481d      	ldr	r0, [pc, #116]	; (25cc <tvout_init+0x124>)
    2558:	f7fe fb4b 	bl	bf2 <config_pin>
    255c:	4a19      	ldr	r2, [pc, #100]	; (25c4 <tvout_init+0x11c>)
    255e:	4b19      	ldr	r3, [pc, #100]	; (25c4 <tvout_init+0x11c>)
    2560:	69db      	ldr	r3, [r3, #28]
    2562:	f043 0302 	orr.w	r3, r3, #2
    2566:	61d3      	str	r3, [r2, #28]
    2568:	4b19      	ldr	r3, [pc, #100]	; (25d0 <tvout_init+0x128>)
    256a:	f246 0278 	movw	r2, #24696	; 0x6078
    256e:	61da      	str	r2, [r3, #28]
    2570:	4b17      	ldr	r3, [pc, #92]	; (25d0 <tvout_init+0x128>)
    2572:	f44f 7240 	mov.w	r2, #768	; 0x300
    2576:	621a      	str	r2, [r3, #32]
    2578:	4b15      	ldr	r3, [pc, #84]	; (25d0 <tvout_init+0x128>)
    257a:	2284      	movs	r2, #132	; 0x84
    257c:	601a      	str	r2, [r3, #0]
    257e:	4b14      	ldr	r3, [pc, #80]	; (25d0 <tvout_init+0x128>)
    2580:	2213      	movs	r2, #19
    2582:	62da      	str	r2, [r3, #44]	; 0x2c
    2584:	4b12      	ldr	r3, [pc, #72]	; (25d0 <tvout_init+0x128>)
    2586:	220a      	movs	r2, #10
    2588:	63da      	str	r2, [r3, #60]	; 0x3c
    258a:	4b11      	ldr	r3, [pc, #68]	; (25d0 <tvout_init+0x128>)
    258c:	220a      	movs	r2, #10
    258e:	641a      	str	r2, [r3, #64]	; 0x40
    2590:	4a0f      	ldr	r2, [pc, #60]	; (25d0 <tvout_init+0x128>)
    2592:	4b0f      	ldr	r3, [pc, #60]	; (25d0 <tvout_init+0x128>)
    2594:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    2596:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    259a:	6453      	str	r3, [r2, #68]	; 0x44
    259c:	4a0c      	ldr	r2, [pc, #48]	; (25d0 <tvout_init+0x128>)
    259e:	4b0c      	ldr	r3, [pc, #48]	; (25d0 <tvout_init+0x128>)
    25a0:	695b      	ldr	r3, [r3, #20]
    25a2:	f043 0301 	orr.w	r3, r3, #1
    25a6:	6153      	str	r3, [r2, #20]
    25a8:	4b09      	ldr	r3, [pc, #36]	; (25d0 <tvout_init+0x128>)
    25aa:	2200      	movs	r2, #0
    25ac:	611a      	str	r2, [r3, #16]
    25ae:	4a08      	ldr	r2, [pc, #32]	; (25d0 <tvout_init+0x128>)
    25b0:	4b07      	ldr	r3, [pc, #28]	; (25d0 <tvout_init+0x128>)
    25b2:	681b      	ldr	r3, [r3, #0]
    25b4:	f043 0301 	orr.w	r3, r3, #1
    25b8:	6013      	str	r3, [r2, #0]
    25ba:	bf00      	nop
    25bc:	bd80      	pop	{r7, pc}
    25be:	bf00      	nop
    25c0:	40010800 	.word	0x40010800
    25c4:	40021000 	.word	0x40021000
    25c8:	40012c00 	.word	0x40012c00
    25cc:	40010c00 	.word	0x40010c00
    25d0:	40000400 	.word	0x40000400

000025d4 <TV_OUT_handler>:
    25d4:	4668      	mov	r0, sp
    25d6:	f020 0107 	bic.w	r1, r0, #7
    25da:	468d      	mov	sp, r1
    25dc:	b411      	push	{r0, r4}
    25de:	4a2f      	ldr	r2, [pc, #188]	; (269c <TV_OUT_handler+0xc8>)
    25e0:	6a13      	ldr	r3, [r2, #32]
    25e2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    25e6:	6213      	str	r3, [r2, #32]
    25e8:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    25ec:	6a53      	ldr	r3, [r2, #36]	; 0x24
    25ee:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    25f2:	d3fb      	bcc.n	25ec <TV_OUT_handler+0x18>
    25f4:	4a29      	ldr	r2, [pc, #164]	; (269c <TV_OUT_handler+0xc8>)
    25f6:	6a13      	ldr	r3, [r2, #32]
    25f8:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    25fc:	6213      	str	r3, [r2, #32]
    25fe:	4b28      	ldr	r3, [pc, #160]	; (26a0 <TV_OUT_handler+0xcc>)
    2600:	881b      	ldrh	r3, [r3, #0]
    2602:	f013 0f04 	tst.w	r3, #4
    2606:	d041      	beq.n	268c <TV_OUT_handler+0xb8>
    2608:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    260c:	6a53      	ldr	r3, [r2, #36]	; 0x24
    260e:	f5b3 6f86 	cmp.w	r3, #1072	; 0x430
    2612:	d9fb      	bls.n	260c <TV_OUT_handler+0x38>
    2614:	4b23      	ldr	r3, [pc, #140]	; (26a4 <TV_OUT_handler+0xd0>)
    2616:	881b      	ldrh	r3, [r3, #0]
    2618:	b29b      	uxth	r3, r3
    261a:	4a23      	ldr	r2, [pc, #140]	; (26a8 <TV_OUT_handler+0xd4>)
    261c:	fba2 2303 	umull	r2, r3, r2, r3
    2620:	085b      	lsrs	r3, r3, #1
    2622:	4a22      	ldr	r2, [pc, #136]	; (26ac <TV_OUT_handler+0xd8>)
    2624:	eb02 1383 	add.w	r3, r2, r3, lsl #6
    2628:	491c      	ldr	r1, [pc, #112]	; (269c <TV_OUT_handler+0xc8>)
    262a:	6a08      	ldr	r0, [r1, #32]
    262c:	4a20      	ldr	r2, [pc, #128]	; (26b0 <TV_OUT_handler+0xdc>)
    262e:	6814      	ldr	r4, [r2, #0]
    2630:	4a20      	ldr	r2, [pc, #128]	; (26b4 <TV_OUT_handler+0xe0>)
    2632:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    2636:	4302      	orrs	r2, r0
    2638:	620a      	str	r2, [r1, #32]
    263a:	f103 0040 	add.w	r0, r3, #64	; 0x40
    263e:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    2642:	310c      	adds	r1, #12
    2644:	781a      	ldrb	r2, [r3, #0]
    2646:	0912      	lsrs	r2, r2, #4
    2648:	800a      	strh	r2, [r1, #0]
    264a:	bf00      	nop
    264c:	bf00      	nop
    264e:	bf00      	nop
    2650:	bf00      	nop
    2652:	bf00      	nop
    2654:	bf00      	nop
    2656:	bf00      	nop
    2658:	bf00      	nop
    265a:	bf00      	nop
    265c:	bf00      	nop
    265e:	bf00      	nop
    2660:	f813 2b01 	ldrb.w	r2, [r3], #1
    2664:	f002 020f 	and.w	r2, r2, #15
    2668:	800a      	strh	r2, [r1, #0]
    266a:	bf00      	nop
    266c:	bf00      	nop
    266e:	bf00      	nop
    2670:	bf00      	nop
    2672:	bf00      	nop
    2674:	bf00      	nop
    2676:	bf00      	nop
    2678:	4298      	cmp	r0, r3
    267a:	d1e3      	bne.n	2644 <TV_OUT_handler+0x70>
    267c:	2200      	movs	r2, #0
    267e:	4b0e      	ldr	r3, [pc, #56]	; (26b8 <TV_OUT_handler+0xe4>)
    2680:	60da      	str	r2, [r3, #12]
    2682:	4a06      	ldr	r2, [pc, #24]	; (269c <TV_OUT_handler+0xc8>)
    2684:	6a13      	ldr	r3, [r2, #32]
    2686:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    268a:	6213      	str	r3, [r2, #32]
    268c:	4a0b      	ldr	r2, [pc, #44]	; (26bc <TV_OUT_handler+0xe8>)
    268e:	6913      	ldr	r3, [r2, #16]
    2690:	f023 0304 	bic.w	r3, r3, #4
    2694:	6113      	str	r3, [r2, #16]
    2696:	bc11      	pop	{r0, r4}
    2698:	4685      	mov	sp, r0
    269a:	4770      	bx	lr
    269c:	40000400 	.word	0x40000400
    26a0:	2000046a 	.word	0x2000046a
    26a4:	2000046c 	.word	0x2000046c
    26a8:	aaaaaaab 	.word	0xaaaaaaab
    26ac:	20000470 	.word	0x20000470
    26b0:	20000058 	.word	0x20000058
    26b4:	00002d28 	.word	0x00002d28
    26b8:	40010800 	.word	0x40010800
    26bc:	40012c00 	.word	0x40012c00

000026c0 <TV_SYNC_handler>:
    26c0:	4668      	mov	r0, sp
    26c2:	f020 0107 	bic.w	r1, r0, #7
    26c6:	468d      	mov	sp, r1
    26c8:	b401      	push	{r0}
    26ca:	4a79      	ldr	r2, [pc, #484]	; (28b0 <TV_SYNC_handler+0x1f0>)
    26cc:	8813      	ldrh	r3, [r2, #0]
    26ce:	3301      	adds	r3, #1
    26d0:	b29b      	uxth	r3, r3
    26d2:	8013      	strh	r3, [r2, #0]
    26d4:	4b77      	ldr	r3, [pc, #476]	; (28b4 <TV_SYNC_handler+0x1f4>)
    26d6:	881b      	ldrh	r3, [r3, #0]
    26d8:	b29b      	uxth	r3, r3
    26da:	2b06      	cmp	r3, #6
    26dc:	f200 808d 	bhi.w	27fa <TV_SYNC_handler+0x13a>
    26e0:	e8df f013 	tbh	[pc, r3, lsl #1]
    26e4:	00290007 	.word	0x00290007
    26e8:	006b0049 	.word	0x006b0049
    26ec:	00a70093 	.word	0x00a70093
    26f0:	00be      	.short	0x00be
    26f2:	4b71      	ldr	r3, [pc, #452]	; (28b8 <TV_SYNC_handler+0x1f8>)
    26f4:	881b      	ldrh	r3, [r3, #0]
    26f6:	b29b      	uxth	r3, r3
    26f8:	b18b      	cbz	r3, 271e <TV_SYNC_handler+0x5e>
    26fa:	4a6f      	ldr	r2, [pc, #444]	; (28b8 <TV_SYNC_handler+0x1f8>)
    26fc:	8813      	ldrh	r3, [r2, #0]
    26fe:	3301      	adds	r3, #1
    2700:	b29b      	uxth	r3, r3
    2702:	8013      	strh	r3, [r2, #0]
    2704:	8813      	ldrh	r3, [r2, #0]
    2706:	b29b      	uxth	r3, r3
    2708:	2b06      	cmp	r3, #6
    270a:	d176      	bne.n	27fa <TV_SYNC_handler+0x13a>
    270c:	2200      	movs	r2, #0
    270e:	4b6a      	ldr	r3, [pc, #424]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2710:	801a      	strh	r2, [r3, #0]
    2712:	4a68      	ldr	r2, [pc, #416]	; (28b4 <TV_SYNC_handler+0x1f4>)
    2714:	8813      	ldrh	r3, [r2, #0]
    2716:	3301      	adds	r3, #1
    2718:	b29b      	uxth	r3, r3
    271a:	8013      	strh	r3, [r2, #0]
    271c:	e06d      	b.n	27fa <TV_SYNC_handler+0x13a>
    271e:	4b67      	ldr	r3, [pc, #412]	; (28bc <TV_SYNC_handler+0x1fc>)
    2720:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2724:	62da      	str	r2, [r3, #44]	; 0x2c
    2726:	22a4      	movs	r2, #164	; 0xa4
    2728:	635a      	str	r2, [r3, #52]	; 0x34
    272a:	4a63      	ldr	r2, [pc, #396]	; (28b8 <TV_SYNC_handler+0x1f8>)
    272c:	8813      	ldrh	r3, [r2, #0]
    272e:	3301      	adds	r3, #1
    2730:	b29b      	uxth	r3, r3
    2732:	8013      	strh	r3, [r2, #0]
    2734:	e061      	b.n	27fa <TV_SYNC_handler+0x13a>
    2736:	4b60      	ldr	r3, [pc, #384]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2738:	881b      	ldrh	r3, [r3, #0]
    273a:	b29b      	uxth	r3, r3
    273c:	b18b      	cbz	r3, 2762 <TV_SYNC_handler+0xa2>
    273e:	4a5e      	ldr	r2, [pc, #376]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2740:	8813      	ldrh	r3, [r2, #0]
    2742:	3301      	adds	r3, #1
    2744:	b29b      	uxth	r3, r3
    2746:	8013      	strh	r3, [r2, #0]
    2748:	8813      	ldrh	r3, [r2, #0]
    274a:	b29b      	uxth	r3, r3
    274c:	2b06      	cmp	r3, #6
    274e:	d154      	bne.n	27fa <TV_SYNC_handler+0x13a>
    2750:	2200      	movs	r2, #0
    2752:	4b59      	ldr	r3, [pc, #356]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2754:	801a      	strh	r2, [r3, #0]
    2756:	4a57      	ldr	r2, [pc, #348]	; (28b4 <TV_SYNC_handler+0x1f4>)
    2758:	8813      	ldrh	r3, [r2, #0]
    275a:	3301      	adds	r3, #1
    275c:	b29b      	uxth	r3, r3
    275e:	8013      	strh	r3, [r2, #0]
    2760:	e04b      	b.n	27fa <TV_SYNC_handler+0x13a>
    2762:	f240 7294 	movw	r2, #1940	; 0x794
    2766:	4b55      	ldr	r3, [pc, #340]	; (28bc <TV_SYNC_handler+0x1fc>)
    2768:	635a      	str	r2, [r3, #52]	; 0x34
    276a:	4a53      	ldr	r2, [pc, #332]	; (28b8 <TV_SYNC_handler+0x1f8>)
    276c:	8813      	ldrh	r3, [r2, #0]
    276e:	3301      	adds	r3, #1
    2770:	b29b      	uxth	r3, r3
    2772:	8013      	strh	r3, [r2, #0]
    2774:	e041      	b.n	27fa <TV_SYNC_handler+0x13a>
    2776:	4b50      	ldr	r3, [pc, #320]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2778:	881b      	ldrh	r3, [r3, #0]
    277a:	b29b      	uxth	r3, r3
    277c:	b153      	cbz	r3, 2794 <TV_SYNC_handler+0xd4>
    277e:	4b4e      	ldr	r3, [pc, #312]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2780:	881b      	ldrh	r3, [r3, #0]
    2782:	b29b      	uxth	r3, r3
    2784:	2b06      	cmp	r3, #6
    2786:	d00e      	beq.n	27a6 <TV_SYNC_handler+0xe6>
    2788:	4a4b      	ldr	r2, [pc, #300]	; (28b8 <TV_SYNC_handler+0x1f8>)
    278a:	8813      	ldrh	r3, [r2, #0]
    278c:	3301      	adds	r3, #1
    278e:	b29b      	uxth	r3, r3
    2790:	8013      	strh	r3, [r2, #0]
    2792:	e032      	b.n	27fa <TV_SYNC_handler+0x13a>
    2794:	22a4      	movs	r2, #164	; 0xa4
    2796:	4b49      	ldr	r3, [pc, #292]	; (28bc <TV_SYNC_handler+0x1fc>)
    2798:	635a      	str	r2, [r3, #52]	; 0x34
    279a:	4a47      	ldr	r2, [pc, #284]	; (28b8 <TV_SYNC_handler+0x1f8>)
    279c:	8813      	ldrh	r3, [r2, #0]
    279e:	3301      	adds	r3, #1
    27a0:	b29b      	uxth	r3, r3
    27a2:	8013      	strh	r3, [r2, #0]
    27a4:	e029      	b.n	27fa <TV_SYNC_handler+0x13a>
    27a6:	4a43      	ldr	r2, [pc, #268]	; (28b4 <TV_SYNC_handler+0x1f4>)
    27a8:	8813      	ldrh	r3, [r2, #0]
    27aa:	3301      	adds	r3, #1
    27ac:	b29b      	uxth	r3, r3
    27ae:	8013      	strh	r3, [r2, #0]
    27b0:	4b43      	ldr	r3, [pc, #268]	; (28c0 <TV_SYNC_handler+0x200>)
    27b2:	881b      	ldrh	r3, [r3, #0]
    27b4:	f013 0f01 	tst.w	r3, #1
    27b8:	d01f      	beq.n	27fa <TV_SYNC_handler+0x13a>
    27ba:	4a40      	ldr	r2, [pc, #256]	; (28bc <TV_SYNC_handler+0x1fc>)
    27bc:	f241 13c5 	movw	r3, #4549	; 0x11c5
    27c0:	62d3      	str	r3, [r2, #44]	; 0x2c
    27c2:	f44f 73a8 	mov.w	r3, #336	; 0x150
    27c6:	6353      	str	r3, [r2, #52]	; 0x34
    27c8:	493d      	ldr	r1, [pc, #244]	; (28c0 <TV_SYNC_handler+0x200>)
    27ca:	880b      	ldrh	r3, [r1, #0]
    27cc:	f023 0302 	bic.w	r3, r3, #2
    27d0:	041b      	lsls	r3, r3, #16
    27d2:	0c1b      	lsrs	r3, r3, #16
    27d4:	800b      	strh	r3, [r1, #0]
    27d6:	4936      	ldr	r1, [pc, #216]	; (28b0 <TV_SYNC_handler+0x1f0>)
    27d8:	880b      	ldrh	r3, [r1, #0]
    27da:	f3c3 038d 	ubfx	r3, r3, #2, #14
    27de:	800b      	strh	r3, [r1, #0]
    27e0:	4934      	ldr	r1, [pc, #208]	; (28b4 <TV_SYNC_handler+0x1f4>)
    27e2:	880b      	ldrh	r3, [r1, #0]
    27e4:	3301      	adds	r3, #1
    27e6:	b29b      	uxth	r3, r3
    27e8:	800b      	strh	r3, [r1, #0]
    27ea:	6913      	ldr	r3, [r2, #16]
    27ec:	f023 0304 	bic.w	r3, r3, #4
    27f0:	6113      	str	r3, [r2, #16]
    27f2:	68d3      	ldr	r3, [r2, #12]
    27f4:	f043 0304 	orr.w	r3, r3, #4
    27f8:	60d3      	str	r3, [r2, #12]
    27fa:	4a30      	ldr	r2, [pc, #192]	; (28bc <TV_SYNC_handler+0x1fc>)
    27fc:	6913      	ldr	r3, [r2, #16]
    27fe:	f023 0301 	bic.w	r3, r3, #1
    2802:	6113      	str	r3, [r2, #16]
    2804:	bc01      	pop	{r0}
    2806:	4685      	mov	sp, r0
    2808:	4770      	bx	lr
    280a:	4b29      	ldr	r3, [pc, #164]	; (28b0 <TV_SYNC_handler+0x1f0>)
    280c:	881b      	ldrh	r3, [r3, #0]
    280e:	b29b      	uxth	r3, r3
    2810:	2b14      	cmp	r3, #20
    2812:	d1f2      	bne.n	27fa <TV_SYNC_handler+0x13a>
    2814:	4a27      	ldr	r2, [pc, #156]	; (28b4 <TV_SYNC_handler+0x1f4>)
    2816:	8813      	ldrh	r3, [r2, #0]
    2818:	3301      	adds	r3, #1
    281a:	b29b      	uxth	r3, r3
    281c:	8013      	strh	r3, [r2, #0]
    281e:	2200      	movs	r2, #0
    2820:	4b25      	ldr	r3, [pc, #148]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2822:	801a      	strh	r2, [r3, #0]
    2824:	4a26      	ldr	r2, [pc, #152]	; (28c0 <TV_SYNC_handler+0x200>)
    2826:	8813      	ldrh	r3, [r2, #0]
    2828:	b29b      	uxth	r3, r3
    282a:	f043 0304 	orr.w	r3, r3, #4
    282e:	8013      	strh	r3, [r2, #0]
    2830:	e7e3      	b.n	27fa <TV_SYNC_handler+0x13a>
    2832:	4a21      	ldr	r2, [pc, #132]	; (28b8 <TV_SYNC_handler+0x1f8>)
    2834:	8813      	ldrh	r3, [r2, #0]
    2836:	3301      	adds	r3, #1
    2838:	b29b      	uxth	r3, r3
    283a:	8013      	strh	r3, [r2, #0]
    283c:	4b1c      	ldr	r3, [pc, #112]	; (28b0 <TV_SYNC_handler+0x1f0>)
    283e:	881b      	ldrh	r3, [r3, #0]
    2840:	b29b      	uxth	r3, r3
    2842:	2bf8      	cmp	r3, #248	; 0xf8
    2844:	d1d9      	bne.n	27fa <TV_SYNC_handler+0x13a>
    2846:	4a1b      	ldr	r2, [pc, #108]	; (28b4 <TV_SYNC_handler+0x1f4>)
    2848:	8813      	ldrh	r3, [r2, #0]
    284a:	3301      	adds	r3, #1
    284c:	b29b      	uxth	r3, r3
    284e:	8013      	strh	r3, [r2, #0]
    2850:	4a1b      	ldr	r2, [pc, #108]	; (28c0 <TV_SYNC_handler+0x200>)
    2852:	8813      	ldrh	r3, [r2, #0]
    2854:	f023 0304 	bic.w	r3, r3, #4
    2858:	041b      	lsls	r3, r3, #16
    285a:	0c1b      	lsrs	r3, r3, #16
    285c:	8013      	strh	r3, [r2, #0]
    285e:	e7cc      	b.n	27fa <TV_SYNC_handler+0x13a>
    2860:	4b13      	ldr	r3, [pc, #76]	; (28b0 <TV_SYNC_handler+0x1f0>)
    2862:	881b      	ldrh	r3, [r3, #0]
    2864:	b29b      	uxth	r3, r3
    2866:	f240 1207 	movw	r2, #263	; 0x107
    286a:	4293      	cmp	r3, r2
    286c:	d1c5      	bne.n	27fa <TV_SYNC_handler+0x13a>
    286e:	4b14      	ldr	r3, [pc, #80]	; (28c0 <TV_SYNC_handler+0x200>)
    2870:	881b      	ldrh	r3, [r3, #0]
    2872:	f013 0f01 	tst.w	r3, #1
    2876:	d003      	beq.n	2880 <TV_SYNC_handler+0x1c0>
    2878:	f640 02e2 	movw	r2, #2274	; 0x8e2
    287c:	4b0f      	ldr	r3, [pc, #60]	; (28bc <TV_SYNC_handler+0x1fc>)
    287e:	62da      	str	r2, [r3, #44]	; 0x2c
    2880:	4a0f      	ldr	r2, [pc, #60]	; (28c0 <TV_SYNC_handler+0x200>)
    2882:	8813      	ldrh	r3, [r2, #0]
    2884:	b29b      	uxth	r3, r3
    2886:	f083 0301 	eor.w	r3, r3, #1
    288a:	8013      	strh	r3, [r2, #0]
    288c:	8813      	ldrh	r3, [r2, #0]
    288e:	b29b      	uxth	r3, r3
    2890:	f043 0302 	orr.w	r3, r3, #2
    2894:	8013      	strh	r3, [r2, #0]
    2896:	2300      	movs	r3, #0
    2898:	4a05      	ldr	r2, [pc, #20]	; (28b0 <TV_SYNC_handler+0x1f0>)
    289a:	8013      	strh	r3, [r2, #0]
    289c:	4a06      	ldr	r2, [pc, #24]	; (28b8 <TV_SYNC_handler+0x1f8>)
    289e:	8013      	strh	r3, [r2, #0]
    28a0:	4a04      	ldr	r2, [pc, #16]	; (28b4 <TV_SYNC_handler+0x1f4>)
    28a2:	8013      	strh	r3, [r2, #0]
    28a4:	4a05      	ldr	r2, [pc, #20]	; (28bc <TV_SYNC_handler+0x1fc>)
    28a6:	68d3      	ldr	r3, [r2, #12]
    28a8:	f023 0304 	bic.w	r3, r3, #4
    28ac:	60d3      	str	r3, [r2, #12]
    28ae:	e7a4      	b.n	27fa <TV_SYNC_handler+0x13a>
    28b0:	2000046e 	.word	0x2000046e
    28b4:	20000468 	.word	0x20000468
    28b8:	2000046c 	.word	0x2000046c
    28bc:	40012c00 	.word	0x40012c00
    28c0:	2000046a 	.word	0x2000046a
