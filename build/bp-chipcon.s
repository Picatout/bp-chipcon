
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 7d 23 00 00     C...I...O...}#..
      20:	7d 23 00 00 7d 23 00 00 7d 23 00 00 55 02 00 00     }#..}#..}#..U...
      30:	7d 23 00 00 7d 23 00 00 5b 02 00 00 65 24 00 00     }#..}#..[...e$..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 b5 20 00 00     g...m...y.... ..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 7d 23 00 00 7d 23 00 00 b5 02 00 00     ....}#..}#......
      80:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..
      90:	7d 23 00 00 7d 23 00 00 7d 23 00 00 bb 02 00 00     }#..}#..}#......
      a0:	7d 23 00 00 a5 26 00 00 7d 23 00 00 c1 25 00 00     }#...&..}#...%..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 7d 23 00 00     ............}#..
      c0:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..
      d0:	7d 23 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     }#..............
      e0:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..
      f0:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..
     100:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..
     110:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..
     120:	7d 23 00 00 7d 23 00 00 7d 23 00 00 7d 23 00 00     }#..}#..}#..}#..

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
     18e:	f001 f81f 	bl	11d0 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005c 	.word	0x2000005c
     1a0:	20002bd0 	.word	0x20002bd0
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
     1dc:	f002 f8d6 	bl	238c <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 f8ca 	bl	238c <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 f8be 	bl	238c <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f8b9 	bl	238c <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002cd8 	.word	0x00002cd8
     230:	00002cf0 	.word	0x00002cf0
     234:	00002cfc 	.word	0x00002cfc
     238:	00002d0c 	.word	0x00002d0c

0000023c <NMI_handler>:
     23c:	f002 f89e 	bl	237c <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 f89b 	bl	237c <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 f898 	bl	237c <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 f895 	bl	237c <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 f892 	bl	237c <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 f88f 	bl	237c <reset_mcu>
     25e:	bf00      	nop
     260:	f002 f88c 	bl	237c <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 f889 	bl	237c <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 f886 	bl	237c <reset_mcu>
     270:	bf00      	nop
     272:	f002 f883 	bl	237c <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 f880 	bl	237c <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 f87d 	bl	237c <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 f87a 	bl	237c <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 f877 	bl	237c <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 f874 	bl	237c <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 f871 	bl	237c <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 f86e 	bl	237c <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 f86b 	bl	237c <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 f868 	bl	237c <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 f865 	bl	237c <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 f862 	bl	237c <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 f85f 	bl	237c <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 f85c 	bl	237c <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 f859 	bl	237c <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 f856 	bl	237c <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 f853 	bl	237c <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f002 f850 	bl	237c <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f002 f84d 	bl	237c <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f002 f84a 	bl	237c <reset_mcu>
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
     cfa:	2b68      	cmp	r3, #104	; 0x68
     cfc:	d908      	bls.n	d10 <gfx_crlf+0x30>
     cfe:	4b06      	ldr	r3, [pc, #24]	; (d18 <gfx_crlf+0x38>)
     d00:	781b      	ldrb	r3, [r3, #0]
     d02:	3b08      	subs	r3, #8
     d04:	b2da      	uxtb	r2, r3
     d06:	4b04      	ldr	r3, [pc, #16]	; (d18 <gfx_crlf+0x38>)
     d08:	701a      	strb	r2, [r3, #0]
     d0a:	2008      	movs	r0, #8
     d0c:	f000 f9ee 	bl	10ec <gfx_scrollup>
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
     e36:	2bae      	cmp	r3, #174	; 0xae
     e38:	d903      	bls.n	e42 <gfx_putchar+0xaa>
     e3a:	f7ff ff51 	bl	ce0 <gfx_crlf>
     e3e:	e000      	b.n	e42 <gfx_putchar+0xaa>
     e40:	bf00      	nop
     e42:	3720      	adds	r7, #32
     e44:	46bd      	mov	sp, r7
     e46:	bd80      	pop	{r7, pc}
     e48:	000028a8 	.word	0x000028a8
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
     f9e:	db31      	blt.n	1004 <gfx_plot+0x78>
     fa0:	68fb      	ldr	r3, [r7, #12]
     fa2:	2bb3      	cmp	r3, #179	; 0xb3
     fa4:	dc2e      	bgt.n	1004 <gfx_plot+0x78>
     fa6:	68bb      	ldr	r3, [r7, #8]
     fa8:	2b00      	cmp	r3, #0
     faa:	db2b      	blt.n	1004 <gfx_plot+0x78>
     fac:	68bb      	ldr	r3, [r7, #8]
     fae:	2b6f      	cmp	r3, #111	; 0x6f
     fb0:	dc28      	bgt.n	1004 <gfx_plot+0x78>
     fb2:	68bb      	ldr	r3, [r7, #8]
     fb4:	225a      	movs	r2, #90	; 0x5a
     fb6:	fb02 f203 	mul.w	r2, r2, r3
     fba:	68fb      	ldr	r3, [r7, #12]
     fbc:	0fd9      	lsrs	r1, r3, #31
     fbe:	440b      	add	r3, r1
     fc0:	105b      	asrs	r3, r3, #1
     fc2:	18d5      	adds	r5, r2, r3
     fc4:	79fb      	ldrb	r3, [r7, #7]
     fc6:	f003 030f 	and.w	r3, r3, #15
     fca:	71fb      	strb	r3, [r7, #7]
     fcc:	4b10      	ldr	r3, [pc, #64]	; (1010 <gfx_plot+0x84>)
     fce:	5d5c      	ldrb	r4, [r3, r5]
     fd0:	68fb      	ldr	r3, [r7, #12]
     fd2:	f003 0301 	and.w	r3, r3, #1
     fd6:	2b00      	cmp	r3, #0
     fd8:	d006      	beq.n	fe8 <gfx_plot+0x5c>
     fda:	f024 030f 	bic.w	r3, r4, #15
     fde:	b2dc      	uxtb	r4, r3
     fe0:	79fb      	ldrb	r3, [r7, #7]
     fe2:	4323      	orrs	r3, r4
     fe4:	b2dc      	uxtb	r4, r3
     fe6:	e009      	b.n	ffc <gfx_plot+0x70>
     fe8:	f004 030f 	and.w	r3, r4, #15
     fec:	b2dc      	uxtb	r4, r3
     fee:	79fb      	ldrb	r3, [r7, #7]
     ff0:	011b      	lsls	r3, r3, #4
     ff2:	b25a      	sxtb	r2, r3
     ff4:	b263      	sxtb	r3, r4
     ff6:	4313      	orrs	r3, r2
     ff8:	b25b      	sxtb	r3, r3
     ffa:	b2dc      	uxtb	r4, r3
     ffc:	4b04      	ldr	r3, [pc, #16]	; (1010 <gfx_plot+0x84>)
     ffe:	4622      	mov	r2, r4
    1000:	555a      	strb	r2, [r3, r5]
    1002:	e000      	b.n	1006 <gfx_plot+0x7a>
    1004:	bf00      	nop
    1006:	3714      	adds	r7, #20
    1008:	46bd      	mov	sp, r7
    100a:	bcb0      	pop	{r4, r5, r7}
    100c:	4770      	bx	lr
    100e:	bf00      	nop
    1010:	20000470 	.word	0x20000470

00001014 <gfx_rectangle>:
    1014:	b580      	push	{r7, lr}
    1016:	b086      	sub	sp, #24
    1018:	af00      	add	r7, sp, #0
    101a:	60f8      	str	r0, [r7, #12]
    101c:	60b9      	str	r1, [r7, #8]
    101e:	607a      	str	r2, [r7, #4]
    1020:	603b      	str	r3, [r7, #0]
    1022:	68fa      	ldr	r2, [r7, #12]
    1024:	687b      	ldr	r3, [r7, #4]
    1026:	429a      	cmp	r2, r3
    1028:	dd05      	ble.n	1036 <gfx_rectangle+0x22>
    102a:	68fb      	ldr	r3, [r7, #12]
    102c:	617b      	str	r3, [r7, #20]
    102e:	687b      	ldr	r3, [r7, #4]
    1030:	60fb      	str	r3, [r7, #12]
    1032:	697b      	ldr	r3, [r7, #20]
    1034:	607b      	str	r3, [r7, #4]
    1036:	68ba      	ldr	r2, [r7, #8]
    1038:	683b      	ldr	r3, [r7, #0]
    103a:	429a      	cmp	r2, r3
    103c:	dd05      	ble.n	104a <gfx_rectangle+0x36>
    103e:	68bb      	ldr	r3, [r7, #8]
    1040:	617b      	str	r3, [r7, #20]
    1042:	683b      	ldr	r3, [r7, #0]
    1044:	60bb      	str	r3, [r7, #8]
    1046:	697b      	ldr	r3, [r7, #20]
    1048:	603b      	str	r3, [r7, #0]
    104a:	68fb      	ldr	r3, [r7, #12]
    104c:	617b      	str	r3, [r7, #20]
    104e:	e00c      	b.n	106a <gfx_rectangle+0x56>
    1050:	2207      	movs	r2, #7
    1052:	68b9      	ldr	r1, [r7, #8]
    1054:	6978      	ldr	r0, [r7, #20]
    1056:	f7ff ff99 	bl	f8c <gfx_plot>
    105a:	2207      	movs	r2, #7
    105c:	6839      	ldr	r1, [r7, #0]
    105e:	6978      	ldr	r0, [r7, #20]
    1060:	f7ff ff94 	bl	f8c <gfx_plot>
    1064:	697b      	ldr	r3, [r7, #20]
    1066:	3301      	adds	r3, #1
    1068:	617b      	str	r3, [r7, #20]
    106a:	697a      	ldr	r2, [r7, #20]
    106c:	687b      	ldr	r3, [r7, #4]
    106e:	429a      	cmp	r2, r3
    1070:	ddee      	ble.n	1050 <gfx_rectangle+0x3c>
    1072:	68bb      	ldr	r3, [r7, #8]
    1074:	3301      	adds	r3, #1
    1076:	60bb      	str	r3, [r7, #8]
    1078:	e00c      	b.n	1094 <gfx_rectangle+0x80>
    107a:	2207      	movs	r2, #7
    107c:	68b9      	ldr	r1, [r7, #8]
    107e:	68f8      	ldr	r0, [r7, #12]
    1080:	f7ff ff84 	bl	f8c <gfx_plot>
    1084:	2207      	movs	r2, #7
    1086:	68b9      	ldr	r1, [r7, #8]
    1088:	6878      	ldr	r0, [r7, #4]
    108a:	f7ff ff7f 	bl	f8c <gfx_plot>
    108e:	68bb      	ldr	r3, [r7, #8]
    1090:	3301      	adds	r3, #1
    1092:	60bb      	str	r3, [r7, #8]
    1094:	68ba      	ldr	r2, [r7, #8]
    1096:	683b      	ldr	r3, [r7, #0]
    1098:	429a      	cmp	r2, r3
    109a:	dbee      	blt.n	107a <gfx_rectangle+0x66>
    109c:	bf00      	nop
    109e:	3718      	adds	r7, #24
    10a0:	46bd      	mov	sp, r7
    10a2:	bd80      	pop	{r7, pc}

000010a4 <gfx_cls>:
    10a4:	b480      	push	{r7}
    10a6:	b083      	sub	sp, #12
    10a8:	af00      	add	r7, sp, #0
    10aa:	2300      	movs	r3, #0
    10ac:	607b      	str	r3, [r7, #4]
    10ae:	e007      	b.n	10c0 <gfx_cls+0x1c>
    10b0:	4a0b      	ldr	r2, [pc, #44]	; (10e0 <gfx_cls+0x3c>)
    10b2:	687b      	ldr	r3, [r7, #4]
    10b4:	4413      	add	r3, r2
    10b6:	2200      	movs	r2, #0
    10b8:	701a      	strb	r2, [r3, #0]
    10ba:	687b      	ldr	r3, [r7, #4]
    10bc:	3301      	adds	r3, #1
    10be:	607b      	str	r3, [r7, #4]
    10c0:	687b      	ldr	r3, [r7, #4]
    10c2:	f242 725f 	movw	r2, #10079	; 0x275f
    10c6:	4293      	cmp	r3, r2
    10c8:	ddf2      	ble.n	10b0 <gfx_cls+0xc>
    10ca:	4b06      	ldr	r3, [pc, #24]	; (10e4 <gfx_cls+0x40>)
    10cc:	2200      	movs	r2, #0
    10ce:	701a      	strb	r2, [r3, #0]
    10d0:	4b05      	ldr	r3, [pc, #20]	; (10e8 <gfx_cls+0x44>)
    10d2:	2200      	movs	r2, #0
    10d4:	701a      	strb	r2, [r3, #0]
    10d6:	bf00      	nop
    10d8:	370c      	adds	r7, #12
    10da:	46bd      	mov	sp, r7
    10dc:	bc80      	pop	{r7}
    10de:	4770      	bx	lr
    10e0:	20000470 	.word	0x20000470
    10e4:	2000045e 	.word	0x2000045e
    10e8:	2000045f 	.word	0x2000045f

000010ec <gfx_scrollup>:
    10ec:	b480      	push	{r7}
    10ee:	b087      	sub	sp, #28
    10f0:	af00      	add	r7, sp, #0
    10f2:	4603      	mov	r3, r0
    10f4:	71fb      	strb	r3, [r7, #7]
    10f6:	79fb      	ldrb	r3, [r7, #7]
    10f8:	225a      	movs	r2, #90	; 0x5a
    10fa:	fb02 f303 	mul.w	r3, r2, r3
    10fe:	4a17      	ldr	r2, [pc, #92]	; (115c <gfx_scrollup+0x70>)
    1100:	4413      	add	r3, r2
    1102:	617b      	str	r3, [r7, #20]
    1104:	4b15      	ldr	r3, [pc, #84]	; (115c <gfx_scrollup+0x70>)
    1106:	613b      	str	r3, [r7, #16]
    1108:	79fb      	ldrb	r3, [r7, #7]
    110a:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    110e:	225a      	movs	r2, #90	; 0x5a
    1110:	fb02 f303 	mul.w	r3, r2, r3
    1114:	60fb      	str	r3, [r7, #12]
    1116:	e007      	b.n	1128 <gfx_scrollup+0x3c>
    1118:	693b      	ldr	r3, [r7, #16]
    111a:	1c5a      	adds	r2, r3, #1
    111c:	613a      	str	r2, [r7, #16]
    111e:	697a      	ldr	r2, [r7, #20]
    1120:	1c51      	adds	r1, r2, #1
    1122:	6179      	str	r1, [r7, #20]
    1124:	7812      	ldrb	r2, [r2, #0]
    1126:	701a      	strb	r2, [r3, #0]
    1128:	68fb      	ldr	r3, [r7, #12]
    112a:	1e5a      	subs	r2, r3, #1
    112c:	60fa      	str	r2, [r7, #12]
    112e:	2b00      	cmp	r3, #0
    1130:	d1f2      	bne.n	1118 <gfx_scrollup+0x2c>
    1132:	79fb      	ldrb	r3, [r7, #7]
    1134:	225a      	movs	r2, #90	; 0x5a
    1136:	fb02 f303 	mul.w	r3, r2, r3
    113a:	60fb      	str	r3, [r7, #12]
    113c:	e004      	b.n	1148 <gfx_scrollup+0x5c>
    113e:	693b      	ldr	r3, [r7, #16]
    1140:	1c5a      	adds	r2, r3, #1
    1142:	613a      	str	r2, [r7, #16]
    1144:	2200      	movs	r2, #0
    1146:	701a      	strb	r2, [r3, #0]
    1148:	68fb      	ldr	r3, [r7, #12]
    114a:	1e5a      	subs	r2, r3, #1
    114c:	60fa      	str	r2, [r7, #12]
    114e:	2b00      	cmp	r3, #0
    1150:	d1f5      	bne.n	113e <gfx_scrollup+0x52>
    1152:	bf00      	nop
    1154:	371c      	adds	r7, #28
    1156:	46bd      	mov	sp, r7
    1158:	bc80      	pop	{r7}
    115a:	4770      	bx	lr
    115c:	20000470 	.word	0x20000470

00001160 <set_sysclock>:
    1160:	b480      	push	{r7}
    1162:	af00      	add	r7, sp, #0
    1164:	4a18      	ldr	r2, [pc, #96]	; (11c8 <set_sysclock+0x68>)
    1166:	4b18      	ldr	r3, [pc, #96]	; (11c8 <set_sysclock+0x68>)
    1168:	681b      	ldr	r3, [r3, #0]
    116a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    116e:	6013      	str	r3, [r2, #0]
    1170:	bf00      	nop
    1172:	4b15      	ldr	r3, [pc, #84]	; (11c8 <set_sysclock+0x68>)
    1174:	681b      	ldr	r3, [r3, #0]
    1176:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    117a:	2b00      	cmp	r3, #0
    117c:	d0f9      	beq.n	1172 <set_sysclock+0x12>
    117e:	4a12      	ldr	r2, [pc, #72]	; (11c8 <set_sysclock+0x68>)
    1180:	4b11      	ldr	r3, [pc, #68]	; (11c8 <set_sysclock+0x68>)
    1182:	685b      	ldr	r3, [r3, #4]
    1184:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1188:	6053      	str	r3, [r2, #4]
    118a:	4a0f      	ldr	r2, [pc, #60]	; (11c8 <set_sysclock+0x68>)
    118c:	4b0e      	ldr	r3, [pc, #56]	; (11c8 <set_sysclock+0x68>)
    118e:	681b      	ldr	r3, [r3, #0]
    1190:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1194:	6013      	str	r3, [r2, #0]
    1196:	bf00      	nop
    1198:	4b0b      	ldr	r3, [pc, #44]	; (11c8 <set_sysclock+0x68>)
    119a:	681b      	ldr	r3, [r3, #0]
    119c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    11a0:	2b00      	cmp	r3, #0
    11a2:	d0f9      	beq.n	1198 <set_sysclock+0x38>
    11a4:	4a09      	ldr	r2, [pc, #36]	; (11cc <set_sysclock+0x6c>)
    11a6:	4b09      	ldr	r3, [pc, #36]	; (11cc <set_sysclock+0x6c>)
    11a8:	681b      	ldr	r3, [r3, #0]
    11aa:	f043 0312 	orr.w	r3, r3, #18
    11ae:	6013      	str	r3, [r2, #0]
    11b0:	4a05      	ldr	r2, [pc, #20]	; (11c8 <set_sysclock+0x68>)
    11b2:	4b05      	ldr	r3, [pc, #20]	; (11c8 <set_sysclock+0x68>)
    11b4:	685b      	ldr	r3, [r3, #4]
    11b6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    11ba:	f043 0302 	orr.w	r3, r3, #2
    11be:	6053      	str	r3, [r2, #4]
    11c0:	bf00      	nop
    11c2:	46bd      	mov	sp, r7
    11c4:	bc80      	pop	{r7}
    11c6:	4770      	bx	lr
    11c8:	40021000 	.word	0x40021000
    11cc:	40022000 	.word	0x40022000

000011d0 <main>:
    11d0:	b580      	push	{r7, lr}
    11d2:	b084      	sub	sp, #16
    11d4:	af00      	add	r7, sp, #0
    11d6:	f7ff ffc3 	bl	1160 <set_sysclock>
    11da:	f001 f91b 	bl	2414 <config_systicks>
    11de:	4b28      	ldr	r3, [pc, #160]	; (1280 <main+0xb0>)
    11e0:	f640 021d 	movw	r2, #2077	; 0x81d
    11e4:	619a      	str	r2, [r3, #24]
    11e6:	2206      	movs	r2, #6
    11e8:	210d      	movs	r1, #13
    11ea:	4826      	ldr	r0, [pc, #152]	; (1284 <main+0xb4>)
    11ec:	f7ff fd01 	bl	bf2 <config_pin>
    11f0:	4a24      	ldr	r2, [pc, #144]	; (1284 <main+0xb4>)
    11f2:	4b24      	ldr	r3, [pc, #144]	; (1284 <main+0xb4>)
    11f4:	68db      	ldr	r3, [r3, #12]
    11f6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    11fa:	60d3      	str	r3, [r2, #12]
    11fc:	f001 f94a 	bl	2494 <tvout_init>
    1200:	f7ff ff50 	bl	10a4 <gfx_cls>
    1204:	2300      	movs	r3, #0
    1206:	60bb      	str	r3, [r7, #8]
    1208:	e01b      	b.n	1242 <main+0x72>
    120a:	230f      	movs	r3, #15
    120c:	71fb      	strb	r3, [r7, #7]
    120e:	2300      	movs	r3, #0
    1210:	60fb      	str	r3, [r7, #12]
    1212:	e010      	b.n	1236 <main+0x66>
    1214:	79fb      	ldrb	r3, [r7, #7]
    1216:	461a      	mov	r2, r3
    1218:	68b9      	ldr	r1, [r7, #8]
    121a:	68f8      	ldr	r0, [r7, #12]
    121c:	f7ff feb6 	bl	f8c <gfx_plot>
    1220:	68fb      	ldr	r3, [r7, #12]
    1222:	f003 0307 	and.w	r3, r3, #7
    1226:	2b00      	cmp	r3, #0
    1228:	d102      	bne.n	1230 <main+0x60>
    122a:	79fb      	ldrb	r3, [r7, #7]
    122c:	3b01      	subs	r3, #1
    122e:	71fb      	strb	r3, [r7, #7]
    1230:	68fb      	ldr	r3, [r7, #12]
    1232:	3301      	adds	r3, #1
    1234:	60fb      	str	r3, [r7, #12]
    1236:	68fb      	ldr	r3, [r7, #12]
    1238:	2bb3      	cmp	r3, #179	; 0xb3
    123a:	ddeb      	ble.n	1214 <main+0x44>
    123c:	68bb      	ldr	r3, [r7, #8]
    123e:	3301      	adds	r3, #1
    1240:	60bb      	str	r3, [r7, #8]
    1242:	68bb      	ldr	r3, [r7, #8]
    1244:	2b6f      	cmp	r3, #111	; 0x6f
    1246:	dde0      	ble.n	120a <main+0x3a>
    1248:	480f      	ldr	r0, [pc, #60]	; (1288 <main+0xb8>)
    124a:	f7ff fe05 	bl	e58 <gfx_print>
    124e:	4b0f      	ldr	r3, [pc, #60]	; (128c <main+0xbc>)
    1250:	681b      	ldr	r3, [r3, #0]
    1252:	210a      	movs	r1, #10
    1254:	4618      	mov	r0, r3
    1256:	f7ff fe22 	bl	e9e <gfx_print_int>
    125a:	2300      	movs	r3, #0
    125c:	60fb      	str	r3, [r7, #12]
    125e:	4b0c      	ldr	r3, [pc, #48]	; (1290 <main+0xc0>)
    1260:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
    1264:	601a      	str	r2, [r3, #0]
    1266:	e002      	b.n	126e <main+0x9e>
    1268:	68fb      	ldr	r3, [r7, #12]
    126a:	3301      	adds	r3, #1
    126c:	60fb      	str	r3, [r7, #12]
    126e:	4b08      	ldr	r3, [pc, #32]	; (1290 <main+0xc0>)
    1270:	681b      	ldr	r3, [r3, #0]
    1272:	2b00      	cmp	r3, #0
    1274:	d1f8      	bne.n	1268 <main+0x98>
    1276:	210a      	movs	r1, #10
    1278:	68f8      	ldr	r0, [r7, #12]
    127a:	f7ff fe10 	bl	e9e <gfx_print_int>
    127e:	e7ec      	b.n	125a <main+0x8a>
    1280:	40021000 	.word	0x40021000
    1284:	40011000 	.word	0x40011000
    1288:	00002bd0 	.word	0x00002bd0
    128c:	20000058 	.word	0x20000058
    1290:	20000464 	.word	0x20000464

00001294 <enable_interrupt>:
    1294:	b480      	push	{r7}
    1296:	b083      	sub	sp, #12
    1298:	af00      	add	r7, sp, #0
    129a:	6078      	str	r0, [r7, #4]
    129c:	687b      	ldr	r3, [r7, #4]
    129e:	2b3b      	cmp	r3, #59	; 0x3b
    12a0:	dc17      	bgt.n	12d2 <enable_interrupt+0x3e>
    12a2:	687b      	ldr	r3, [r7, #4]
    12a4:	115b      	asrs	r3, r3, #5
    12a6:	009b      	lsls	r3, r3, #2
    12a8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    12ac:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    12b0:	687a      	ldr	r2, [r7, #4]
    12b2:	1152      	asrs	r2, r2, #5
    12b4:	0092      	lsls	r2, r2, #2
    12b6:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    12ba:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    12be:	6812      	ldr	r2, [r2, #0]
    12c0:	6879      	ldr	r1, [r7, #4]
    12c2:	f001 011f 	and.w	r1, r1, #31
    12c6:	2001      	movs	r0, #1
    12c8:	fa00 f101 	lsl.w	r1, r0, r1
    12cc:	430a      	orrs	r2, r1
    12ce:	601a      	str	r2, [r3, #0]
    12d0:	e000      	b.n	12d4 <enable_interrupt+0x40>
    12d2:	bf00      	nop
    12d4:	370c      	adds	r7, #12
    12d6:	46bd      	mov	sp, r7
    12d8:	bc80      	pop	{r7}
    12da:	4770      	bx	lr

000012dc <disable_interrupt>:
    12dc:	b480      	push	{r7}
    12de:	b083      	sub	sp, #12
    12e0:	af00      	add	r7, sp, #0
    12e2:	6078      	str	r0, [r7, #4]
    12e4:	687b      	ldr	r3, [r7, #4]
    12e6:	2b3b      	cmp	r3, #59	; 0x3b
    12e8:	dc0c      	bgt.n	1304 <disable_interrupt+0x28>
    12ea:	687b      	ldr	r3, [r7, #4]
    12ec:	115b      	asrs	r3, r3, #5
    12ee:	009a      	lsls	r2, r3, #2
    12f0:	4b07      	ldr	r3, [pc, #28]	; (1310 <disable_interrupt+0x34>)
    12f2:	4413      	add	r3, r2
    12f4:	687a      	ldr	r2, [r7, #4]
    12f6:	f002 021f 	and.w	r2, r2, #31
    12fa:	2101      	movs	r1, #1
    12fc:	fa01 f202 	lsl.w	r2, r1, r2
    1300:	601a      	str	r2, [r3, #0]
    1302:	e000      	b.n	1306 <disable_interrupt+0x2a>
    1304:	bf00      	nop
    1306:	370c      	adds	r7, #12
    1308:	46bd      	mov	sp, r7
    130a:	bc80      	pop	{r7}
    130c:	4770      	bx	lr
    130e:	bf00      	nop
    1310:	e000e180 	.word	0xe000e180

00001314 <get_pending>:
    1314:	b480      	push	{r7}
    1316:	b083      	sub	sp, #12
    1318:	af00      	add	r7, sp, #0
    131a:	6078      	str	r0, [r7, #4]
    131c:	687b      	ldr	r3, [r7, #4]
    131e:	2b3b      	cmp	r3, #59	; 0x3b
    1320:	dd01      	ble.n	1326 <get_pending+0x12>
    1322:	2300      	movs	r3, #0
    1324:	e00c      	b.n	1340 <get_pending+0x2c>
    1326:	687b      	ldr	r3, [r7, #4]
    1328:	115b      	asrs	r3, r3, #5
    132a:	009a      	lsls	r2, r3, #2
    132c:	4b07      	ldr	r3, [pc, #28]	; (134c <get_pending+0x38>)
    132e:	4413      	add	r3, r2
    1330:	681b      	ldr	r3, [r3, #0]
    1332:	687a      	ldr	r2, [r7, #4]
    1334:	f002 021f 	and.w	r2, r2, #31
    1338:	2101      	movs	r1, #1
    133a:	fa01 f202 	lsl.w	r2, r1, r2
    133e:	4013      	ands	r3, r2
    1340:	4618      	mov	r0, r3
    1342:	370c      	adds	r7, #12
    1344:	46bd      	mov	sp, r7
    1346:	bc80      	pop	{r7}
    1348:	4770      	bx	lr
    134a:	bf00      	nop
    134c:	e000e280 	.word	0xe000e280

00001350 <get_active>:
    1350:	b480      	push	{r7}
    1352:	b083      	sub	sp, #12
    1354:	af00      	add	r7, sp, #0
    1356:	6078      	str	r0, [r7, #4]
    1358:	687b      	ldr	r3, [r7, #4]
    135a:	2b3b      	cmp	r3, #59	; 0x3b
    135c:	dd01      	ble.n	1362 <get_active+0x12>
    135e:	2300      	movs	r3, #0
    1360:	e00e      	b.n	1380 <get_active+0x30>
    1362:	687b      	ldr	r3, [r7, #4]
    1364:	115b      	asrs	r3, r3, #5
    1366:	009b      	lsls	r3, r3, #2
    1368:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    136c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1370:	681b      	ldr	r3, [r3, #0]
    1372:	687a      	ldr	r2, [r7, #4]
    1374:	f002 021f 	and.w	r2, r2, #31
    1378:	2101      	movs	r1, #1
    137a:	fa01 f202 	lsl.w	r2, r1, r2
    137e:	4013      	ands	r3, r2
    1380:	4618      	mov	r0, r3
    1382:	370c      	adds	r7, #12
    1384:	46bd      	mov	sp, r7
    1386:	bc80      	pop	{r7}
    1388:	4770      	bx	lr

0000138a <set_pending>:
    138a:	b480      	push	{r7}
    138c:	b083      	sub	sp, #12
    138e:	af00      	add	r7, sp, #0
    1390:	6078      	str	r0, [r7, #4]
    1392:	687b      	ldr	r3, [r7, #4]
    1394:	2b3b      	cmp	r3, #59	; 0x3b
    1396:	dc17      	bgt.n	13c8 <set_pending+0x3e>
    1398:	687b      	ldr	r3, [r7, #4]
    139a:	115b      	asrs	r3, r3, #5
    139c:	009b      	lsls	r3, r3, #2
    139e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    13a2:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    13a6:	687a      	ldr	r2, [r7, #4]
    13a8:	1152      	asrs	r2, r2, #5
    13aa:	0092      	lsls	r2, r2, #2
    13ac:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    13b0:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    13b4:	6812      	ldr	r2, [r2, #0]
    13b6:	6879      	ldr	r1, [r7, #4]
    13b8:	f001 011f 	and.w	r1, r1, #31
    13bc:	2001      	movs	r0, #1
    13be:	fa00 f101 	lsl.w	r1, r0, r1
    13c2:	430a      	orrs	r2, r1
    13c4:	601a      	str	r2, [r3, #0]
    13c6:	e000      	b.n	13ca <set_pending+0x40>
    13c8:	bf00      	nop
    13ca:	370c      	adds	r7, #12
    13cc:	46bd      	mov	sp, r7
    13ce:	bc80      	pop	{r7}
    13d0:	4770      	bx	lr

000013d2 <clear_pending>:
    13d2:	b480      	push	{r7}
    13d4:	b083      	sub	sp, #12
    13d6:	af00      	add	r7, sp, #0
    13d8:	6078      	str	r0, [r7, #4]
    13da:	687b      	ldr	r3, [r7, #4]
    13dc:	2b3b      	cmp	r3, #59	; 0x3b
    13de:	dc0c      	bgt.n	13fa <clear_pending+0x28>
    13e0:	687b      	ldr	r3, [r7, #4]
    13e2:	115b      	asrs	r3, r3, #5
    13e4:	009a      	lsls	r2, r3, #2
    13e6:	4b07      	ldr	r3, [pc, #28]	; (1404 <clear_pending+0x32>)
    13e8:	4413      	add	r3, r2
    13ea:	687a      	ldr	r2, [r7, #4]
    13ec:	f002 021f 	and.w	r2, r2, #31
    13f0:	2101      	movs	r1, #1
    13f2:	fa01 f202 	lsl.w	r2, r1, r2
    13f6:	601a      	str	r2, [r3, #0]
    13f8:	e000      	b.n	13fc <clear_pending+0x2a>
    13fa:	bf00      	nop
    13fc:	370c      	adds	r7, #12
    13fe:	46bd      	mov	sp, r7
    1400:	bc80      	pop	{r7}
    1402:	4770      	bx	lr
    1404:	e000e280 	.word	0xe000e280

00001408 <set_int_priority>:
    1408:	b480      	push	{r7}
    140a:	b083      	sub	sp, #12
    140c:	af00      	add	r7, sp, #0
    140e:	6078      	str	r0, [r7, #4]
    1410:	6039      	str	r1, [r7, #0]
    1412:	687b      	ldr	r3, [r7, #4]
    1414:	2b00      	cmp	r3, #0
    1416:	db0d      	blt.n	1434 <set_int_priority+0x2c>
    1418:	687b      	ldr	r3, [r7, #4]
    141a:	2b3b      	cmp	r3, #59	; 0x3b
    141c:	dc0a      	bgt.n	1434 <set_int_priority+0x2c>
    141e:	687b      	ldr	r3, [r7, #4]
    1420:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1424:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1428:	683a      	ldr	r2, [r7, #0]
    142a:	b2d2      	uxtb	r2, r2
    142c:	0112      	lsls	r2, r2, #4
    142e:	b2d2      	uxtb	r2, r2
    1430:	701a      	strb	r2, [r3, #0]
    1432:	e012      	b.n	145a <set_int_priority+0x52>
    1434:	687b      	ldr	r3, [r7, #4]
    1436:	2b00      	cmp	r3, #0
    1438:	da0f      	bge.n	145a <set_int_priority+0x52>
    143a:	687b      	ldr	r3, [r7, #4]
    143c:	f113 0f0f 	cmn.w	r3, #15
    1440:	db0b      	blt.n	145a <set_int_priority+0x52>
    1442:	687a      	ldr	r2, [r7, #4]
    1444:	f06f 0303 	mvn.w	r3, #3
    1448:	1a9b      	subs	r3, r3, r2
    144a:	461a      	mov	r2, r3
    144c:	4b05      	ldr	r3, [pc, #20]	; (1464 <set_int_priority+0x5c>)
    144e:	4413      	add	r3, r2
    1450:	683a      	ldr	r2, [r7, #0]
    1452:	b2d2      	uxtb	r2, r2
    1454:	0112      	lsls	r2, r2, #4
    1456:	b2d2      	uxtb	r2, r2
    1458:	701a      	strb	r2, [r3, #0]
    145a:	bf00      	nop
    145c:	370c      	adds	r7, #12
    145e:	46bd      	mov	sp, r7
    1460:	bc80      	pop	{r7}
    1462:	4770      	bx	lr
    1464:	e000ed18 	.word	0xe000ed18

00001468 <leap_year>:
    1468:	b480      	push	{r7}
    146a:	b083      	sub	sp, #12
    146c:	af00      	add	r7, sp, #0
    146e:	6078      	str	r0, [r7, #4]
    1470:	687b      	ldr	r3, [r7, #4]
    1472:	f003 0303 	and.w	r3, r3, #3
    1476:	2b00      	cmp	r3, #0
    1478:	d11a      	bne.n	14b0 <leap_year+0x48>
    147a:	687a      	ldr	r2, [r7, #4]
    147c:	4b0f      	ldr	r3, [pc, #60]	; (14bc <leap_year+0x54>)
    147e:	fba3 1302 	umull	r1, r3, r3, r2
    1482:	095b      	lsrs	r3, r3, #5
    1484:	2164      	movs	r1, #100	; 0x64
    1486:	fb01 f303 	mul.w	r3, r1, r3
    148a:	1ad3      	subs	r3, r2, r3
    148c:	2b00      	cmp	r3, #0
    148e:	d10d      	bne.n	14ac <leap_year+0x44>
    1490:	687a      	ldr	r2, [r7, #4]
    1492:	4b0a      	ldr	r3, [pc, #40]	; (14bc <leap_year+0x54>)
    1494:	fba3 1302 	umull	r1, r3, r3, r2
    1498:	09db      	lsrs	r3, r3, #7
    149a:	f44f 71c8 	mov.w	r1, #400	; 0x190
    149e:	fb01 f303 	mul.w	r3, r1, r3
    14a2:	1ad3      	subs	r3, r2, r3
    14a4:	2b00      	cmp	r3, #0
    14a6:	d001      	beq.n	14ac <leap_year+0x44>
    14a8:	2300      	movs	r3, #0
    14aa:	e002      	b.n	14b2 <leap_year+0x4a>
    14ac:	2301      	movs	r3, #1
    14ae:	e000      	b.n	14b2 <leap_year+0x4a>
    14b0:	2300      	movs	r3, #0
    14b2:	4618      	mov	r0, r3
    14b4:	370c      	adds	r7, #12
    14b6:	46bd      	mov	sp, r7
    14b8:	bc80      	pop	{r7}
    14ba:	4770      	bx	lr
    14bc:	51eb851f 	.word	0x51eb851f

000014c0 <sec_per_month>:
    14c0:	b480      	push	{r7}
    14c2:	b085      	sub	sp, #20
    14c4:	af00      	add	r7, sp, #0
    14c6:	6078      	str	r0, [r7, #4]
    14c8:	6039      	str	r1, [r7, #0]
    14ca:	4a0d      	ldr	r2, [pc, #52]	; (1500 <sec_per_month+0x40>)
    14cc:	683b      	ldr	r3, [r7, #0]
    14ce:	4413      	add	r3, r2
    14d0:	781b      	ldrb	r3, [r3, #0]
    14d2:	461a      	mov	r2, r3
    14d4:	4b0b      	ldr	r3, [pc, #44]	; (1504 <sec_per_month+0x44>)
    14d6:	fb03 f302 	mul.w	r3, r3, r2
    14da:	60fb      	str	r3, [r7, #12]
    14dc:	683b      	ldr	r3, [r7, #0]
    14de:	2b02      	cmp	r3, #2
    14e0:	d108      	bne.n	14f4 <sec_per_month+0x34>
    14e2:	687b      	ldr	r3, [r7, #4]
    14e4:	2b00      	cmp	r3, #0
    14e6:	d005      	beq.n	14f4 <sec_per_month+0x34>
    14e8:	68fb      	ldr	r3, [r7, #12]
    14ea:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    14ee:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    14f2:	60fb      	str	r3, [r7, #12]
    14f4:	68fb      	ldr	r3, [r7, #12]
    14f6:	4618      	mov	r0, r3
    14f8:	3714      	adds	r7, #20
    14fa:	46bd      	mov	sp, r7
    14fc:	bc80      	pop	{r7}
    14fe:	4770      	bx	lr
    1500:	00002ca0 	.word	0x00002ca0
    1504:	00015180 	.word	0x00015180

00001508 <get_date_time>:
    1508:	b580      	push	{r7, lr}
    150a:	b086      	sub	sp, #24
    150c:	af00      	add	r7, sp, #0
    150e:	6078      	str	r0, [r7, #4]
    1510:	4b66      	ldr	r3, [pc, #408]	; (16ac <get_date_time+0x1a4>)
    1512:	699b      	ldr	r3, [r3, #24]
    1514:	041a      	lsls	r2, r3, #16
    1516:	4b65      	ldr	r3, [pc, #404]	; (16ac <get_date_time+0x1a4>)
    1518:	69db      	ldr	r3, [r3, #28]
    151a:	4413      	add	r3, r2
    151c:	617b      	str	r3, [r7, #20]
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1524:	811a      	strh	r2, [r3, #8]
    1526:	f240 70b2 	movw	r0, #1970	; 0x7b2
    152a:	f7ff ff9d 	bl	1468 <leap_year>
    152e:	6138      	str	r0, [r7, #16]
    1530:	e019      	b.n	1566 <get_date_time+0x5e>
    1532:	693b      	ldr	r3, [r7, #16]
    1534:	2b00      	cmp	r3, #0
    1536:	d006      	beq.n	1546 <get_date_time+0x3e>
    1538:	697b      	ldr	r3, [r7, #20]
    153a:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    153e:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    1542:	617b      	str	r3, [r7, #20]
    1544:	e003      	b.n	154e <get_date_time+0x46>
    1546:	697a      	ldr	r2, [r7, #20]
    1548:	4b59      	ldr	r3, [pc, #356]	; (16b0 <get_date_time+0x1a8>)
    154a:	4413      	add	r3, r2
    154c:	617b      	str	r3, [r7, #20]
    154e:	687b      	ldr	r3, [r7, #4]
    1550:	891b      	ldrh	r3, [r3, #8]
    1552:	3301      	adds	r3, #1
    1554:	b29a      	uxth	r2, r3
    1556:	687b      	ldr	r3, [r7, #4]
    1558:	811a      	strh	r2, [r3, #8]
    155a:	687b      	ldr	r3, [r7, #4]
    155c:	891b      	ldrh	r3, [r3, #8]
    155e:	4618      	mov	r0, r3
    1560:	f7ff ff82 	bl	1468 <leap_year>
    1564:	6138      	str	r0, [r7, #16]
    1566:	693b      	ldr	r3, [r7, #16]
    1568:	2b00      	cmp	r3, #0
    156a:	d103      	bne.n	1574 <get_date_time+0x6c>
    156c:	697b      	ldr	r3, [r7, #20]
    156e:	4a51      	ldr	r2, [pc, #324]	; (16b4 <get_date_time+0x1ac>)
    1570:	4293      	cmp	r3, r2
    1572:	d8de      	bhi.n	1532 <get_date_time+0x2a>
    1574:	693b      	ldr	r3, [r7, #16]
    1576:	2b00      	cmp	r3, #0
    1578:	d003      	beq.n	1582 <get_date_time+0x7a>
    157a:	697b      	ldr	r3, [r7, #20]
    157c:	4a4e      	ldr	r2, [pc, #312]	; (16b8 <get_date_time+0x1b0>)
    157e:	4293      	cmp	r3, r2
    1580:	d8d7      	bhi.n	1532 <get_date_time+0x2a>
    1582:	687a      	ldr	r2, [r7, #4]
    1584:	8853      	ldrh	r3, [r2, #2]
    1586:	2101      	movs	r1, #1
    1588:	f361 1389 	bfi	r3, r1, #6, #4
    158c:	8053      	strh	r3, [r2, #2]
    158e:	687a      	ldr	r2, [r7, #4]
    1590:	7893      	ldrb	r3, [r2, #2]
    1592:	2101      	movs	r1, #1
    1594:	f361 0345 	bfi	r3, r1, #1, #5
    1598:	7093      	strb	r3, [r2, #2]
    159a:	687a      	ldr	r2, [r7, #4]
    159c:	6813      	ldr	r3, [r2, #0]
    159e:	f36f 3310 	bfc	r3, #12, #5
    15a2:	6013      	str	r3, [r2, #0]
    15a4:	687a      	ldr	r2, [r7, #4]
    15a6:	8813      	ldrh	r3, [r2, #0]
    15a8:	f36f 138b 	bfc	r3, #6, #6
    15ac:	8013      	strh	r3, [r2, #0]
    15ae:	687a      	ldr	r2, [r7, #4]
    15b0:	7813      	ldrb	r3, [r2, #0]
    15b2:	f36f 0305 	bfc	r3, #0, #6
    15b6:	7013      	strb	r3, [r2, #0]
    15b8:	e011      	b.n	15de <get_date_time+0xd6>
    15ba:	687b      	ldr	r3, [r7, #4]
    15bc:	885b      	ldrh	r3, [r3, #2]
    15be:	f3c3 1383 	ubfx	r3, r3, #6, #4
    15c2:	b2db      	uxtb	r3, r3
    15c4:	3301      	adds	r3, #1
    15c6:	f003 030f 	and.w	r3, r3, #15
    15ca:	b2d9      	uxtb	r1, r3
    15cc:	687a      	ldr	r2, [r7, #4]
    15ce:	8853      	ldrh	r3, [r2, #2]
    15d0:	f361 1389 	bfi	r3, r1, #6, #4
    15d4:	8053      	strh	r3, [r2, #2]
    15d6:	697a      	ldr	r2, [r7, #20]
    15d8:	68fb      	ldr	r3, [r7, #12]
    15da:	1ad3      	subs	r3, r2, r3
    15dc:	617b      	str	r3, [r7, #20]
    15de:	687b      	ldr	r3, [r7, #4]
    15e0:	885b      	ldrh	r3, [r3, #2]
    15e2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    15e6:	b2db      	uxtb	r3, r3
    15e8:	4619      	mov	r1, r3
    15ea:	6938      	ldr	r0, [r7, #16]
    15ec:	f7ff ff68 	bl	14c0 <sec_per_month>
    15f0:	60f8      	str	r0, [r7, #12]
    15f2:	68fa      	ldr	r2, [r7, #12]
    15f4:	697b      	ldr	r3, [r7, #20]
    15f6:	429a      	cmp	r2, r3
    15f8:	d3df      	bcc.n	15ba <get_date_time+0xb2>
    15fa:	697b      	ldr	r3, [r7, #20]
    15fc:	4a2f      	ldr	r2, [pc, #188]	; (16bc <get_date_time+0x1b4>)
    15fe:	fba2 2303 	umull	r2, r3, r2, r3
    1602:	0c1b      	lsrs	r3, r3, #16
    1604:	b2db      	uxtb	r3, r3
    1606:	3301      	adds	r3, #1
    1608:	b2db      	uxtb	r3, r3
    160a:	f003 031f 	and.w	r3, r3, #31
    160e:	b2d9      	uxtb	r1, r3
    1610:	687a      	ldr	r2, [r7, #4]
    1612:	7893      	ldrb	r3, [r2, #2]
    1614:	f361 0345 	bfi	r3, r1, #1, #5
    1618:	7093      	strb	r3, [r2, #2]
    161a:	697b      	ldr	r3, [r7, #20]
    161c:	4a27      	ldr	r2, [pc, #156]	; (16bc <get_date_time+0x1b4>)
    161e:	fba2 1203 	umull	r1, r2, r2, r3
    1622:	0c12      	lsrs	r2, r2, #16
    1624:	4926      	ldr	r1, [pc, #152]	; (16c0 <get_date_time+0x1b8>)
    1626:	fb01 f202 	mul.w	r2, r1, r2
    162a:	1a9b      	subs	r3, r3, r2
    162c:	617b      	str	r3, [r7, #20]
    162e:	697b      	ldr	r3, [r7, #20]
    1630:	4a24      	ldr	r2, [pc, #144]	; (16c4 <get_date_time+0x1bc>)
    1632:	fba2 2303 	umull	r2, r3, r2, r3
    1636:	0adb      	lsrs	r3, r3, #11
    1638:	b2db      	uxtb	r3, r3
    163a:	f003 031f 	and.w	r3, r3, #31
    163e:	b2d9      	uxtb	r1, r3
    1640:	687a      	ldr	r2, [r7, #4]
    1642:	6813      	ldr	r3, [r2, #0]
    1644:	f361 3310 	bfi	r3, r1, #12, #5
    1648:	6013      	str	r3, [r2, #0]
    164a:	697b      	ldr	r3, [r7, #20]
    164c:	4a1d      	ldr	r2, [pc, #116]	; (16c4 <get_date_time+0x1bc>)
    164e:	fba2 1203 	umull	r1, r2, r2, r3
    1652:	0ad2      	lsrs	r2, r2, #11
    1654:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1658:	fb01 f202 	mul.w	r2, r1, r2
    165c:	1a9b      	subs	r3, r3, r2
    165e:	617b      	str	r3, [r7, #20]
    1660:	697b      	ldr	r3, [r7, #20]
    1662:	4a19      	ldr	r2, [pc, #100]	; (16c8 <get_date_time+0x1c0>)
    1664:	fba2 2303 	umull	r2, r3, r2, r3
    1668:	095b      	lsrs	r3, r3, #5
    166a:	b2db      	uxtb	r3, r3
    166c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1670:	b2d9      	uxtb	r1, r3
    1672:	687a      	ldr	r2, [r7, #4]
    1674:	8813      	ldrh	r3, [r2, #0]
    1676:	f361 138b 	bfi	r3, r1, #6, #6
    167a:	8013      	strh	r3, [r2, #0]
    167c:	6979      	ldr	r1, [r7, #20]
    167e:	4b12      	ldr	r3, [pc, #72]	; (16c8 <get_date_time+0x1c0>)
    1680:	fba3 2301 	umull	r2, r3, r3, r1
    1684:	095a      	lsrs	r2, r3, #5
    1686:	4613      	mov	r3, r2
    1688:	011b      	lsls	r3, r3, #4
    168a:	1a9b      	subs	r3, r3, r2
    168c:	009b      	lsls	r3, r3, #2
    168e:	1aca      	subs	r2, r1, r3
    1690:	b2d3      	uxtb	r3, r2
    1692:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1696:	b2d9      	uxtb	r1, r3
    1698:	687a      	ldr	r2, [r7, #4]
    169a:	7813      	ldrb	r3, [r2, #0]
    169c:	f361 0305 	bfi	r3, r1, #0, #6
    16a0:	7013      	strb	r3, [r2, #0]
    16a2:	bf00      	nop
    16a4:	3718      	adds	r7, #24
    16a6:	46bd      	mov	sp, r7
    16a8:	bd80      	pop	{r7, pc}
    16aa:	bf00      	nop
    16ac:	40002800 	.word	0x40002800
    16b0:	fe1ecc80 	.word	0xfe1ecc80
    16b4:	01e1337f 	.word	0x01e1337f
    16b8:	01e284ff 	.word	0x01e284ff
    16bc:	c22e4507 	.word	0xc22e4507
    16c0:	00015180 	.word	0x00015180
    16c4:	91a2b3c5 	.word	0x91a2b3c5
    16c8:	88888889 	.word	0x88888889

000016cc <set_date_time>:
    16cc:	b580      	push	{r7, lr}
    16ce:	b086      	sub	sp, #24
    16d0:	af00      	add	r7, sp, #0
    16d2:	6078      	str	r0, [r7, #4]
    16d4:	2300      	movs	r3, #0
    16d6:	613b      	str	r3, [r7, #16]
    16d8:	687b      	ldr	r3, [r7, #4]
    16da:	891b      	ldrh	r3, [r3, #8]
    16dc:	f240 72b1 	movw	r2, #1969	; 0x7b1
    16e0:	4293      	cmp	r3, r2
    16e2:	d803      	bhi.n	16ec <set_date_time+0x20>
    16e4:	687b      	ldr	r3, [r7, #4]
    16e6:	f240 72b2 	movw	r2, #1970	; 0x7b2
    16ea:	811a      	strh	r2, [r3, #8]
    16ec:	687b      	ldr	r3, [r7, #4]
    16ee:	891b      	ldrh	r3, [r3, #8]
    16f0:	f640 023a 	movw	r2, #2106	; 0x83a
    16f4:	4293      	cmp	r3, r2
    16f6:	d903      	bls.n	1700 <set_date_time+0x34>
    16f8:	687b      	ldr	r3, [r7, #4]
    16fa:	f640 023a 	movw	r2, #2106	; 0x83a
    16fe:	811a      	strh	r2, [r3, #8]
    1700:	687b      	ldr	r3, [r7, #4]
    1702:	891b      	ldrh	r3, [r3, #8]
    1704:	4618      	mov	r0, r3
    1706:	f7ff feaf 	bl	1468 <leap_year>
    170a:	60f8      	str	r0, [r7, #12]
    170c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1710:	617b      	str	r3, [r7, #20]
    1712:	e013      	b.n	173c <set_date_time+0x70>
    1714:	6978      	ldr	r0, [r7, #20]
    1716:	f7ff fea7 	bl	1468 <leap_year>
    171a:	4603      	mov	r3, r0
    171c:	2b00      	cmp	r3, #0
    171e:	d006      	beq.n	172e <set_date_time+0x62>
    1720:	693b      	ldr	r3, [r7, #16]
    1722:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1726:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    172a:	613b      	str	r3, [r7, #16]
    172c:	e003      	b.n	1736 <set_date_time+0x6a>
    172e:	693a      	ldr	r2, [r7, #16]
    1730:	4b42      	ldr	r3, [pc, #264]	; (183c <set_date_time+0x170>)
    1732:	4413      	add	r3, r2
    1734:	613b      	str	r3, [r7, #16]
    1736:	697b      	ldr	r3, [r7, #20]
    1738:	3301      	adds	r3, #1
    173a:	617b      	str	r3, [r7, #20]
    173c:	687b      	ldr	r3, [r7, #4]
    173e:	891b      	ldrh	r3, [r3, #8]
    1740:	461a      	mov	r2, r3
    1742:	697b      	ldr	r3, [r7, #20]
    1744:	429a      	cmp	r2, r3
    1746:	d8e5      	bhi.n	1714 <set_date_time+0x48>
    1748:	2301      	movs	r3, #1
    174a:	617b      	str	r3, [r7, #20]
    174c:	e00a      	b.n	1764 <set_date_time+0x98>
    174e:	6979      	ldr	r1, [r7, #20]
    1750:	68f8      	ldr	r0, [r7, #12]
    1752:	f7ff feb5 	bl	14c0 <sec_per_month>
    1756:	4602      	mov	r2, r0
    1758:	693b      	ldr	r3, [r7, #16]
    175a:	4413      	add	r3, r2
    175c:	613b      	str	r3, [r7, #16]
    175e:	697b      	ldr	r3, [r7, #20]
    1760:	3301      	adds	r3, #1
    1762:	617b      	str	r3, [r7, #20]
    1764:	687b      	ldr	r3, [r7, #4]
    1766:	885b      	ldrh	r3, [r3, #2]
    1768:	f3c3 1383 	ubfx	r3, r3, #6, #4
    176c:	b2db      	uxtb	r3, r3
    176e:	461a      	mov	r2, r3
    1770:	697b      	ldr	r3, [r7, #20]
    1772:	429a      	cmp	r2, r3
    1774:	d8eb      	bhi.n	174e <set_date_time+0x82>
    1776:	687b      	ldr	r3, [r7, #4]
    1778:	789b      	ldrb	r3, [r3, #2]
    177a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    177e:	b2db      	uxtb	r3, r3
    1780:	3b01      	subs	r3, #1
    1782:	4a2f      	ldr	r2, [pc, #188]	; (1840 <set_date_time+0x174>)
    1784:	fb02 f303 	mul.w	r3, r2, r3
    1788:	461a      	mov	r2, r3
    178a:	693b      	ldr	r3, [r7, #16]
    178c:	4413      	add	r3, r2
    178e:	613b      	str	r3, [r7, #16]
    1790:	687b      	ldr	r3, [r7, #4]
    1792:	681b      	ldr	r3, [r3, #0]
    1794:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1798:	b2db      	uxtb	r3, r3
    179a:	461a      	mov	r2, r3
    179c:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    17a0:	fb03 f302 	mul.w	r3, r3, r2
    17a4:	461a      	mov	r2, r3
    17a6:	693b      	ldr	r3, [r7, #16]
    17a8:	4413      	add	r3, r2
    17aa:	613b      	str	r3, [r7, #16]
    17ac:	687b      	ldr	r3, [r7, #4]
    17ae:	881b      	ldrh	r3, [r3, #0]
    17b0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    17b4:	b2db      	uxtb	r3, r3
    17b6:	461a      	mov	r2, r3
    17b8:	4613      	mov	r3, r2
    17ba:	011b      	lsls	r3, r3, #4
    17bc:	1a9b      	subs	r3, r3, r2
    17be:	009b      	lsls	r3, r3, #2
    17c0:	461a      	mov	r2, r3
    17c2:	693b      	ldr	r3, [r7, #16]
    17c4:	4413      	add	r3, r2
    17c6:	613b      	str	r3, [r7, #16]
    17c8:	687b      	ldr	r3, [r7, #4]
    17ca:	781b      	ldrb	r3, [r3, #0]
    17cc:	f3c3 0305 	ubfx	r3, r3, #0, #6
    17d0:	b2db      	uxtb	r3, r3
    17d2:	461a      	mov	r2, r3
    17d4:	693b      	ldr	r3, [r7, #16]
    17d6:	4413      	add	r3, r2
    17d8:	613b      	str	r3, [r7, #16]
    17da:	4a1a      	ldr	r2, [pc, #104]	; (1844 <set_date_time+0x178>)
    17dc:	4b19      	ldr	r3, [pc, #100]	; (1844 <set_date_time+0x178>)
    17de:	69db      	ldr	r3, [r3, #28]
    17e0:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    17e4:	61d3      	str	r3, [r2, #28]
    17e6:	4a18      	ldr	r2, [pc, #96]	; (1848 <set_date_time+0x17c>)
    17e8:	4b17      	ldr	r3, [pc, #92]	; (1848 <set_date_time+0x17c>)
    17ea:	681b      	ldr	r3, [r3, #0]
    17ec:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    17f0:	6013      	str	r3, [r2, #0]
    17f2:	4a16      	ldr	r2, [pc, #88]	; (184c <set_date_time+0x180>)
    17f4:	4b15      	ldr	r3, [pc, #84]	; (184c <set_date_time+0x180>)
    17f6:	685b      	ldr	r3, [r3, #4]
    17f8:	f043 0310 	orr.w	r3, r3, #16
    17fc:	6053      	str	r3, [r2, #4]
    17fe:	4a13      	ldr	r2, [pc, #76]	; (184c <set_date_time+0x180>)
    1800:	693b      	ldr	r3, [r7, #16]
    1802:	0c1b      	lsrs	r3, r3, #16
    1804:	6193      	str	r3, [r2, #24]
    1806:	4a11      	ldr	r2, [pc, #68]	; (184c <set_date_time+0x180>)
    1808:	693b      	ldr	r3, [r7, #16]
    180a:	b29b      	uxth	r3, r3
    180c:	61d3      	str	r3, [r2, #28]
    180e:	4a0f      	ldr	r2, [pc, #60]	; (184c <set_date_time+0x180>)
    1810:	4b0e      	ldr	r3, [pc, #56]	; (184c <set_date_time+0x180>)
    1812:	685b      	ldr	r3, [r3, #4]
    1814:	f023 0310 	bic.w	r3, r3, #16
    1818:	6053      	str	r3, [r2, #4]
    181a:	bf00      	nop
    181c:	4b0b      	ldr	r3, [pc, #44]	; (184c <set_date_time+0x180>)
    181e:	685b      	ldr	r3, [r3, #4]
    1820:	f003 0320 	and.w	r3, r3, #32
    1824:	2b00      	cmp	r3, #0
    1826:	d0f9      	beq.n	181c <set_date_time+0x150>
    1828:	4a07      	ldr	r2, [pc, #28]	; (1848 <set_date_time+0x17c>)
    182a:	4b07      	ldr	r3, [pc, #28]	; (1848 <set_date_time+0x17c>)
    182c:	681b      	ldr	r3, [r3, #0]
    182e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1832:	6013      	str	r3, [r2, #0]
    1834:	bf00      	nop
    1836:	3718      	adds	r7, #24
    1838:	46bd      	mov	sp, r7
    183a:	bd80      	pop	{r7, pc}
    183c:	01e13380 	.word	0x01e13380
    1840:	00015180 	.word	0x00015180
    1844:	40021000 	.word	0x40021000
    1848:	40007000 	.word	0x40007000
    184c:	40002800 	.word	0x40002800

00001850 <rtc_init>:
    1850:	b580      	push	{r7, lr}
    1852:	b082      	sub	sp, #8
    1854:	af00      	add	r7, sp, #0
    1856:	6078      	str	r0, [r7, #4]
    1858:	6039      	str	r1, [r7, #0]
    185a:	4b4a      	ldr	r3, [pc, #296]	; (1984 <rtc_init+0x134>)
    185c:	685b      	ldr	r3, [r3, #4]
    185e:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1862:	4293      	cmp	r3, r2
    1864:	f000 8082 	beq.w	196c <rtc_init+0x11c>
    1868:	4a47      	ldr	r2, [pc, #284]	; (1988 <rtc_init+0x138>)
    186a:	4b47      	ldr	r3, [pc, #284]	; (1988 <rtc_init+0x138>)
    186c:	69db      	ldr	r3, [r3, #28]
    186e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1872:	61d3      	str	r3, [r2, #28]
    1874:	4a45      	ldr	r2, [pc, #276]	; (198c <rtc_init+0x13c>)
    1876:	4b45      	ldr	r3, [pc, #276]	; (198c <rtc_init+0x13c>)
    1878:	681b      	ldr	r3, [r3, #0]
    187a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    187e:	6013      	str	r3, [r2, #0]
    1880:	4a41      	ldr	r2, [pc, #260]	; (1988 <rtc_init+0x138>)
    1882:	4b41      	ldr	r3, [pc, #260]	; (1988 <rtc_init+0x138>)
    1884:	6a1b      	ldr	r3, [r3, #32]
    1886:	f043 0301 	orr.w	r3, r3, #1
    188a:	6213      	str	r3, [r2, #32]
    188c:	bf00      	nop
    188e:	4b3e      	ldr	r3, [pc, #248]	; (1988 <rtc_init+0x138>)
    1890:	6a1b      	ldr	r3, [r3, #32]
    1892:	f003 0302 	and.w	r3, r3, #2
    1896:	2b00      	cmp	r3, #0
    1898:	d0f9      	beq.n	188e <rtc_init+0x3e>
    189a:	4a3b      	ldr	r2, [pc, #236]	; (1988 <rtc_init+0x138>)
    189c:	4b3a      	ldr	r3, [pc, #232]	; (1988 <rtc_init+0x138>)
    189e:	6a1b      	ldr	r3, [r3, #32]
    18a0:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    18a4:	6213      	str	r3, [r2, #32]
    18a6:	bf00      	nop
    18a8:	4b39      	ldr	r3, [pc, #228]	; (1990 <rtc_init+0x140>)
    18aa:	685b      	ldr	r3, [r3, #4]
    18ac:	f003 0308 	and.w	r3, r3, #8
    18b0:	2b00      	cmp	r3, #0
    18b2:	d0f9      	beq.n	18a8 <rtc_init+0x58>
    18b4:	bf00      	nop
    18b6:	4b36      	ldr	r3, [pc, #216]	; (1990 <rtc_init+0x140>)
    18b8:	685b      	ldr	r3, [r3, #4]
    18ba:	f003 0320 	and.w	r3, r3, #32
    18be:	2b00      	cmp	r3, #0
    18c0:	d0f9      	beq.n	18b6 <rtc_init+0x66>
    18c2:	4a33      	ldr	r2, [pc, #204]	; (1990 <rtc_init+0x140>)
    18c4:	4b32      	ldr	r3, [pc, #200]	; (1990 <rtc_init+0x140>)
    18c6:	685b      	ldr	r3, [r3, #4]
    18c8:	f043 0310 	orr.w	r3, r3, #16
    18cc:	6053      	str	r3, [r2, #4]
    18ce:	bf00      	nop
    18d0:	4b2f      	ldr	r3, [pc, #188]	; (1990 <rtc_init+0x140>)
    18d2:	685b      	ldr	r3, [r3, #4]
    18d4:	f003 0320 	and.w	r3, r3, #32
    18d8:	2b00      	cmp	r3, #0
    18da:	d0f9      	beq.n	18d0 <rtc_init+0x80>
    18dc:	492c      	ldr	r1, [pc, #176]	; (1990 <rtc_init+0x140>)
    18de:	4b2c      	ldr	r3, [pc, #176]	; (1990 <rtc_init+0x140>)
    18e0:	681a      	ldr	r2, [r3, #0]
    18e2:	683b      	ldr	r3, [r7, #0]
    18e4:	4313      	orrs	r3, r2
    18e6:	600b      	str	r3, [r1, #0]
    18e8:	bf00      	nop
    18ea:	4b29      	ldr	r3, [pc, #164]	; (1990 <rtc_init+0x140>)
    18ec:	685b      	ldr	r3, [r3, #4]
    18ee:	f003 0320 	and.w	r3, r3, #32
    18f2:	2b00      	cmp	r3, #0
    18f4:	d0f9      	beq.n	18ea <rtc_init+0x9a>
    18f6:	4a26      	ldr	r2, [pc, #152]	; (1990 <rtc_init+0x140>)
    18f8:	687b      	ldr	r3, [r7, #4]
    18fa:	03db      	lsls	r3, r3, #15
    18fc:	4925      	ldr	r1, [pc, #148]	; (1994 <rtc_init+0x144>)
    18fe:	fba1 1303 	umull	r1, r3, r1, r3
    1902:	099b      	lsrs	r3, r3, #6
    1904:	3b01      	subs	r3, #1
    1906:	b29b      	uxth	r3, r3
    1908:	60d3      	str	r3, [r2, #12]
    190a:	bf00      	nop
    190c:	4b20      	ldr	r3, [pc, #128]	; (1990 <rtc_init+0x140>)
    190e:	685b      	ldr	r3, [r3, #4]
    1910:	f003 0320 	and.w	r3, r3, #32
    1914:	2b00      	cmp	r3, #0
    1916:	d0f9      	beq.n	190c <rtc_init+0xbc>
    1918:	4a1d      	ldr	r2, [pc, #116]	; (1990 <rtc_init+0x140>)
    191a:	687b      	ldr	r3, [r7, #4]
    191c:	03db      	lsls	r3, r3, #15
    191e:	491d      	ldr	r1, [pc, #116]	; (1994 <rtc_init+0x144>)
    1920:	fba1 1303 	umull	r1, r3, r1, r3
    1924:	099b      	lsrs	r3, r3, #6
    1926:	3b01      	subs	r3, #1
    1928:	0c1b      	lsrs	r3, r3, #16
    192a:	f003 030f 	and.w	r3, r3, #15
    192e:	6093      	str	r3, [r2, #8]
    1930:	bf00      	nop
    1932:	4b17      	ldr	r3, [pc, #92]	; (1990 <rtc_init+0x140>)
    1934:	685b      	ldr	r3, [r3, #4]
    1936:	f003 0320 	and.w	r3, r3, #32
    193a:	2b00      	cmp	r3, #0
    193c:	d0f9      	beq.n	1932 <rtc_init+0xe2>
    193e:	4b11      	ldr	r3, [pc, #68]	; (1984 <rtc_init+0x134>)
    1940:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1944:	605a      	str	r2, [r3, #4]
    1946:	4a12      	ldr	r2, [pc, #72]	; (1990 <rtc_init+0x140>)
    1948:	4b11      	ldr	r3, [pc, #68]	; (1990 <rtc_init+0x140>)
    194a:	685b      	ldr	r3, [r3, #4]
    194c:	f023 0310 	bic.w	r3, r3, #16
    1950:	6053      	str	r3, [r2, #4]
    1952:	bf00      	nop
    1954:	4b0e      	ldr	r3, [pc, #56]	; (1990 <rtc_init+0x140>)
    1956:	685b      	ldr	r3, [r3, #4]
    1958:	f003 0320 	and.w	r3, r3, #32
    195c:	2b00      	cmp	r3, #0
    195e:	d0f9      	beq.n	1954 <rtc_init+0x104>
    1960:	4a0a      	ldr	r2, [pc, #40]	; (198c <rtc_init+0x13c>)
    1962:	4b0a      	ldr	r3, [pc, #40]	; (198c <rtc_init+0x13c>)
    1964:	681b      	ldr	r3, [r3, #0]
    1966:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    196a:	6013      	str	r3, [r2, #0]
    196c:	210f      	movs	r1, #15
    196e:	2003      	movs	r0, #3
    1970:	f7ff fd4a 	bl	1408 <set_int_priority>
    1974:	2003      	movs	r0, #3
    1976:	f7ff fc8d 	bl	1294 <enable_interrupt>
    197a:	bf00      	nop
    197c:	3708      	adds	r7, #8
    197e:	46bd      	mov	sp, r7
    1980:	bd80      	pop	{r7, pc}
    1982:	bf00      	nop
    1984:	40006c00 	.word	0x40006c00
    1988:	40021000 	.word	0x40021000
    198c:	40007000 	.word	0x40007000
    1990:	40002800 	.word	0x40002800
    1994:	10624dd3 	.word	0x10624dd3

00001998 <reset_backup_domain>:
    1998:	b480      	push	{r7}
    199a:	af00      	add	r7, sp, #0
    199c:	4a0a      	ldr	r2, [pc, #40]	; (19c8 <reset_backup_domain+0x30>)
    199e:	4b0a      	ldr	r3, [pc, #40]	; (19c8 <reset_backup_domain+0x30>)
    19a0:	69db      	ldr	r3, [r3, #28]
    19a2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    19a6:	61d3      	str	r3, [r2, #28]
    19a8:	4a07      	ldr	r2, [pc, #28]	; (19c8 <reset_backup_domain+0x30>)
    19aa:	4b07      	ldr	r3, [pc, #28]	; (19c8 <reset_backup_domain+0x30>)
    19ac:	6a1b      	ldr	r3, [r3, #32]
    19ae:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    19b2:	6213      	str	r3, [r2, #32]
    19b4:	4a04      	ldr	r2, [pc, #16]	; (19c8 <reset_backup_domain+0x30>)
    19b6:	4b04      	ldr	r3, [pc, #16]	; (19c8 <reset_backup_domain+0x30>)
    19b8:	6a1b      	ldr	r3, [r3, #32]
    19ba:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    19be:	6213      	str	r3, [r2, #32]
    19c0:	bf00      	nop
    19c2:	46bd      	mov	sp, r7
    19c4:	bc80      	pop	{r7}
    19c6:	4770      	bx	lr
    19c8:	40021000 	.word	0x40021000

000019cc <rtc_clock_trim>:
    19cc:	b480      	push	{r7}
    19ce:	b083      	sub	sp, #12
    19d0:	af00      	add	r7, sp, #0
    19d2:	6078      	str	r0, [r7, #4]
    19d4:	4a34      	ldr	r2, [pc, #208]	; (1aa8 <rtc_clock_trim+0xdc>)
    19d6:	4b34      	ldr	r3, [pc, #208]	; (1aa8 <rtc_clock_trim+0xdc>)
    19d8:	69db      	ldr	r3, [r3, #28]
    19da:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    19de:	61d3      	str	r3, [r2, #28]
    19e0:	bf00      	nop
    19e2:	4b32      	ldr	r3, [pc, #200]	; (1aac <rtc_clock_trim+0xe0>)
    19e4:	685b      	ldr	r3, [r3, #4]
    19e6:	f003 0308 	and.w	r3, r3, #8
    19ea:	2b00      	cmp	r3, #0
    19ec:	d0f9      	beq.n	19e2 <rtc_clock_trim+0x16>
    19ee:	4a30      	ldr	r2, [pc, #192]	; (1ab0 <rtc_clock_trim+0xe4>)
    19f0:	4b2f      	ldr	r3, [pc, #188]	; (1ab0 <rtc_clock_trim+0xe4>)
    19f2:	681b      	ldr	r3, [r3, #0]
    19f4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    19f8:	6013      	str	r3, [r2, #0]
    19fa:	4a2c      	ldr	r2, [pc, #176]	; (1aac <rtc_clock_trim+0xe0>)
    19fc:	4b2b      	ldr	r3, [pc, #172]	; (1aac <rtc_clock_trim+0xe0>)
    19fe:	685b      	ldr	r3, [r3, #4]
    1a00:	f043 0310 	orr.w	r3, r3, #16
    1a04:	6053      	str	r3, [r2, #4]
    1a06:	4a2b      	ldr	r2, [pc, #172]	; (1ab4 <rtc_clock_trim+0xe8>)
    1a08:	4b2a      	ldr	r3, [pc, #168]	; (1ab4 <rtc_clock_trim+0xe8>)
    1a0a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1a0c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1a10:	62d3      	str	r3, [r2, #44]	; 0x2c
    1a12:	687b      	ldr	r3, [r7, #4]
    1a14:	2b00      	cmp	r3, #0
    1a16:	d10a      	bne.n	1a2e <rtc_clock_trim+0x62>
    1a18:	4b26      	ldr	r3, [pc, #152]	; (1ab4 <rtc_clock_trim+0xe8>)
    1a1a:	2200      	movs	r2, #0
    1a1c:	62da      	str	r2, [r3, #44]	; 0x2c
    1a1e:	4b23      	ldr	r3, [pc, #140]	; (1aac <rtc_clock_trim+0xe0>)
    1a20:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1a24:	60da      	str	r2, [r3, #12]
    1a26:	4b21      	ldr	r3, [pc, #132]	; (1aac <rtc_clock_trim+0xe0>)
    1a28:	2200      	movs	r2, #0
    1a2a:	609a      	str	r2, [r3, #8]
    1a2c:	e023      	b.n	1a76 <rtc_clock_trim+0xaa>
    1a2e:	687b      	ldr	r3, [r7, #4]
    1a30:	2b00      	cmp	r3, #0
    1a32:	dd0a      	ble.n	1a4a <rtc_clock_trim+0x7e>
    1a34:	687b      	ldr	r3, [r7, #4]
    1a36:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1a3a:	607b      	str	r3, [r7, #4]
    1a3c:	491d      	ldr	r1, [pc, #116]	; (1ab4 <rtc_clock_trim+0xe8>)
    1a3e:	4b1d      	ldr	r3, [pc, #116]	; (1ab4 <rtc_clock_trim+0xe8>)
    1a40:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1a42:	687b      	ldr	r3, [r7, #4]
    1a44:	4313      	orrs	r3, r2
    1a46:	62cb      	str	r3, [r1, #44]	; 0x2c
    1a48:	e015      	b.n	1a76 <rtc_clock_trim+0xaa>
    1a4a:	687b      	ldr	r3, [r7, #4]
    1a4c:	425b      	negs	r3, r3
    1a4e:	607b      	str	r3, [r7, #4]
    1a50:	687b      	ldr	r3, [r7, #4]
    1a52:	2b7f      	cmp	r3, #127	; 0x7f
    1a54:	dd01      	ble.n	1a5a <rtc_clock_trim+0x8e>
    1a56:	237f      	movs	r3, #127	; 0x7f
    1a58:	607b      	str	r3, [r7, #4]
    1a5a:	4b16      	ldr	r3, [pc, #88]	; (1ab4 <rtc_clock_trim+0xe8>)
    1a5c:	2200      	movs	r2, #0
    1a5e:	62da      	str	r2, [r3, #44]	; 0x2c
    1a60:	4a12      	ldr	r2, [pc, #72]	; (1aac <rtc_clock_trim+0xe0>)
    1a62:	687b      	ldr	r3, [r7, #4]
    1a64:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1a68:	33ff      	adds	r3, #255	; 0xff
    1a6a:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1a6e:	60d3      	str	r3, [r2, #12]
    1a70:	4b0e      	ldr	r3, [pc, #56]	; (1aac <rtc_clock_trim+0xe0>)
    1a72:	2200      	movs	r2, #0
    1a74:	609a      	str	r2, [r3, #8]
    1a76:	4a0d      	ldr	r2, [pc, #52]	; (1aac <rtc_clock_trim+0xe0>)
    1a78:	4b0c      	ldr	r3, [pc, #48]	; (1aac <rtc_clock_trim+0xe0>)
    1a7a:	685b      	ldr	r3, [r3, #4]
    1a7c:	f023 0310 	bic.w	r3, r3, #16
    1a80:	6053      	str	r3, [r2, #4]
    1a82:	bf00      	nop
    1a84:	4b09      	ldr	r3, [pc, #36]	; (1aac <rtc_clock_trim+0xe0>)
    1a86:	685b      	ldr	r3, [r3, #4]
    1a88:	f003 0320 	and.w	r3, r3, #32
    1a8c:	2b00      	cmp	r3, #0
    1a8e:	d0f9      	beq.n	1a84 <rtc_clock_trim+0xb8>
    1a90:	4a07      	ldr	r2, [pc, #28]	; (1ab0 <rtc_clock_trim+0xe4>)
    1a92:	4b07      	ldr	r3, [pc, #28]	; (1ab0 <rtc_clock_trim+0xe4>)
    1a94:	681b      	ldr	r3, [r3, #0]
    1a96:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1a9a:	6013      	str	r3, [r2, #0]
    1a9c:	bf00      	nop
    1a9e:	370c      	adds	r7, #12
    1aa0:	46bd      	mov	sp, r7
    1aa2:	bc80      	pop	{r7}
    1aa4:	4770      	bx	lr
    1aa6:	bf00      	nop
    1aa8:	40021000 	.word	0x40021000
    1aac:	40002800 	.word	0x40002800
    1ab0:	40007000 	.word	0x40007000
    1ab4:	40006c00 	.word	0x40006c00

00001ab8 <rtc_set_alarm>:
    1ab8:	b480      	push	{r7}
    1aba:	b083      	sub	sp, #12
    1abc:	af00      	add	r7, sp, #0
    1abe:	6078      	str	r0, [r7, #4]
    1ac0:	bf00      	nop
    1ac2:	370c      	adds	r7, #12
    1ac4:	46bd      	mov	sp, r7
    1ac6:	bc80      	pop	{r7}
    1ac8:	4770      	bx	lr

00001aca <str_to_date>:
    1aca:	b580      	push	{r7, lr}
    1acc:	b084      	sub	sp, #16
    1ace:	af00      	add	r7, sp, #0
    1ad0:	6078      	str	r0, [r7, #4]
    1ad2:	6039      	str	r1, [r7, #0]
    1ad4:	2300      	movs	r3, #0
    1ad6:	60fb      	str	r3, [r7, #12]
    1ad8:	2300      	movs	r3, #0
    1ada:	60bb      	str	r3, [r7, #8]
    1adc:	e00f      	b.n	1afe <str_to_date+0x34>
    1ade:	68ba      	ldr	r2, [r7, #8]
    1ae0:	4613      	mov	r3, r2
    1ae2:	009b      	lsls	r3, r3, #2
    1ae4:	4413      	add	r3, r2
    1ae6:	005b      	lsls	r3, r3, #1
    1ae8:	4619      	mov	r1, r3
    1aea:	68fb      	ldr	r3, [r7, #12]
    1aec:	1c5a      	adds	r2, r3, #1
    1aee:	60fa      	str	r2, [r7, #12]
    1af0:	461a      	mov	r2, r3
    1af2:	687b      	ldr	r3, [r7, #4]
    1af4:	4413      	add	r3, r2
    1af6:	781b      	ldrb	r3, [r3, #0]
    1af8:	440b      	add	r3, r1
    1afa:	3b30      	subs	r3, #48	; 0x30
    1afc:	60bb      	str	r3, [r7, #8]
    1afe:	68fb      	ldr	r3, [r7, #12]
    1b00:	687a      	ldr	r2, [r7, #4]
    1b02:	4413      	add	r3, r2
    1b04:	781b      	ldrb	r3, [r3, #0]
    1b06:	4618      	mov	r0, r3
    1b08:	f7fe fe6b 	bl	7e2 <digit>
    1b0c:	4603      	mov	r3, r0
    1b0e:	2b00      	cmp	r3, #0
    1b10:	d1e5      	bne.n	1ade <str_to_date+0x14>
    1b12:	68fb      	ldr	r3, [r7, #12]
    1b14:	2b03      	cmp	r3, #3
    1b16:	dd05      	ble.n	1b24 <str_to_date+0x5a>
    1b18:	68fb      	ldr	r3, [r7, #12]
    1b1a:	687a      	ldr	r2, [r7, #4]
    1b1c:	4413      	add	r3, r2
    1b1e:	781b      	ldrb	r3, [r3, #0]
    1b20:	2b2f      	cmp	r3, #47	; 0x2f
    1b22:	d001      	beq.n	1b28 <str_to_date+0x5e>
    1b24:	2300      	movs	r3, #0
    1b26:	e068      	b.n	1bfa <str_to_date+0x130>
    1b28:	68bb      	ldr	r3, [r7, #8]
    1b2a:	b29a      	uxth	r2, r3
    1b2c:	683b      	ldr	r3, [r7, #0]
    1b2e:	811a      	strh	r2, [r3, #8]
    1b30:	68fb      	ldr	r3, [r7, #12]
    1b32:	3301      	adds	r3, #1
    1b34:	60fb      	str	r3, [r7, #12]
    1b36:	2300      	movs	r3, #0
    1b38:	60bb      	str	r3, [r7, #8]
    1b3a:	e00f      	b.n	1b5c <str_to_date+0x92>
    1b3c:	68ba      	ldr	r2, [r7, #8]
    1b3e:	4613      	mov	r3, r2
    1b40:	009b      	lsls	r3, r3, #2
    1b42:	4413      	add	r3, r2
    1b44:	005b      	lsls	r3, r3, #1
    1b46:	4619      	mov	r1, r3
    1b48:	68fb      	ldr	r3, [r7, #12]
    1b4a:	1c5a      	adds	r2, r3, #1
    1b4c:	60fa      	str	r2, [r7, #12]
    1b4e:	461a      	mov	r2, r3
    1b50:	687b      	ldr	r3, [r7, #4]
    1b52:	4413      	add	r3, r2
    1b54:	781b      	ldrb	r3, [r3, #0]
    1b56:	440b      	add	r3, r1
    1b58:	3b30      	subs	r3, #48	; 0x30
    1b5a:	60bb      	str	r3, [r7, #8]
    1b5c:	68fb      	ldr	r3, [r7, #12]
    1b5e:	687a      	ldr	r2, [r7, #4]
    1b60:	4413      	add	r3, r2
    1b62:	781b      	ldrb	r3, [r3, #0]
    1b64:	4618      	mov	r0, r3
    1b66:	f7fe fe3c 	bl	7e2 <digit>
    1b6a:	4603      	mov	r3, r0
    1b6c:	2b00      	cmp	r3, #0
    1b6e:	d1e5      	bne.n	1b3c <str_to_date+0x72>
    1b70:	68fb      	ldr	r3, [r7, #12]
    1b72:	2b06      	cmp	r3, #6
    1b74:	dd05      	ble.n	1b82 <str_to_date+0xb8>
    1b76:	68fb      	ldr	r3, [r7, #12]
    1b78:	687a      	ldr	r2, [r7, #4]
    1b7a:	4413      	add	r3, r2
    1b7c:	781b      	ldrb	r3, [r3, #0]
    1b7e:	2b2f      	cmp	r3, #47	; 0x2f
    1b80:	d001      	beq.n	1b86 <str_to_date+0xbc>
    1b82:	2300      	movs	r3, #0
    1b84:	e039      	b.n	1bfa <str_to_date+0x130>
    1b86:	68bb      	ldr	r3, [r7, #8]
    1b88:	b2db      	uxtb	r3, r3
    1b8a:	f003 030f 	and.w	r3, r3, #15
    1b8e:	b2d9      	uxtb	r1, r3
    1b90:	683a      	ldr	r2, [r7, #0]
    1b92:	8853      	ldrh	r3, [r2, #2]
    1b94:	f361 1389 	bfi	r3, r1, #6, #4
    1b98:	8053      	strh	r3, [r2, #2]
    1b9a:	2300      	movs	r3, #0
    1b9c:	60bb      	str	r3, [r7, #8]
    1b9e:	68fb      	ldr	r3, [r7, #12]
    1ba0:	3301      	adds	r3, #1
    1ba2:	60fb      	str	r3, [r7, #12]
    1ba4:	e00f      	b.n	1bc6 <str_to_date+0xfc>
    1ba6:	68ba      	ldr	r2, [r7, #8]
    1ba8:	4613      	mov	r3, r2
    1baa:	009b      	lsls	r3, r3, #2
    1bac:	4413      	add	r3, r2
    1bae:	005b      	lsls	r3, r3, #1
    1bb0:	4619      	mov	r1, r3
    1bb2:	68fb      	ldr	r3, [r7, #12]
    1bb4:	1c5a      	adds	r2, r3, #1
    1bb6:	60fa      	str	r2, [r7, #12]
    1bb8:	461a      	mov	r2, r3
    1bba:	687b      	ldr	r3, [r7, #4]
    1bbc:	4413      	add	r3, r2
    1bbe:	781b      	ldrb	r3, [r3, #0]
    1bc0:	440b      	add	r3, r1
    1bc2:	3b30      	subs	r3, #48	; 0x30
    1bc4:	60bb      	str	r3, [r7, #8]
    1bc6:	68fb      	ldr	r3, [r7, #12]
    1bc8:	687a      	ldr	r2, [r7, #4]
    1bca:	4413      	add	r3, r2
    1bcc:	781b      	ldrb	r3, [r3, #0]
    1bce:	4618      	mov	r0, r3
    1bd0:	f7fe fe07 	bl	7e2 <digit>
    1bd4:	4603      	mov	r3, r0
    1bd6:	2b00      	cmp	r3, #0
    1bd8:	d1e5      	bne.n	1ba6 <str_to_date+0xdc>
    1bda:	68fb      	ldr	r3, [r7, #12]
    1bdc:	2b09      	cmp	r3, #9
    1bde:	dc01      	bgt.n	1be4 <str_to_date+0x11a>
    1be0:	2300      	movs	r3, #0
    1be2:	e00a      	b.n	1bfa <str_to_date+0x130>
    1be4:	68bb      	ldr	r3, [r7, #8]
    1be6:	b2db      	uxtb	r3, r3
    1be8:	f003 031f 	and.w	r3, r3, #31
    1bec:	b2d9      	uxtb	r1, r3
    1bee:	683a      	ldr	r2, [r7, #0]
    1bf0:	7893      	ldrb	r3, [r2, #2]
    1bf2:	f361 0345 	bfi	r3, r1, #1, #5
    1bf6:	7093      	strb	r3, [r2, #2]
    1bf8:	2301      	movs	r3, #1
    1bfa:	4618      	mov	r0, r3
    1bfc:	3710      	adds	r7, #16
    1bfe:	46bd      	mov	sp, r7
    1c00:	bd80      	pop	{r7, pc}

00001c02 <str_to_time>:
    1c02:	b580      	push	{r7, lr}
    1c04:	b084      	sub	sp, #16
    1c06:	af00      	add	r7, sp, #0
    1c08:	6078      	str	r0, [r7, #4]
    1c0a:	6039      	str	r1, [r7, #0]
    1c0c:	2300      	movs	r3, #0
    1c0e:	60fb      	str	r3, [r7, #12]
    1c10:	2300      	movs	r3, #0
    1c12:	72fb      	strb	r3, [r7, #11]
    1c14:	e010      	b.n	1c38 <str_to_time+0x36>
    1c16:	7afb      	ldrb	r3, [r7, #11]
    1c18:	461a      	mov	r2, r3
    1c1a:	0092      	lsls	r2, r2, #2
    1c1c:	4413      	add	r3, r2
    1c1e:	005b      	lsls	r3, r3, #1
    1c20:	b2da      	uxtb	r2, r3
    1c22:	68fb      	ldr	r3, [r7, #12]
    1c24:	1c59      	adds	r1, r3, #1
    1c26:	60f9      	str	r1, [r7, #12]
    1c28:	4619      	mov	r1, r3
    1c2a:	687b      	ldr	r3, [r7, #4]
    1c2c:	440b      	add	r3, r1
    1c2e:	781b      	ldrb	r3, [r3, #0]
    1c30:	4413      	add	r3, r2
    1c32:	b2db      	uxtb	r3, r3
    1c34:	3b30      	subs	r3, #48	; 0x30
    1c36:	72fb      	strb	r3, [r7, #11]
    1c38:	68fb      	ldr	r3, [r7, #12]
    1c3a:	687a      	ldr	r2, [r7, #4]
    1c3c:	4413      	add	r3, r2
    1c3e:	781b      	ldrb	r3, [r3, #0]
    1c40:	4618      	mov	r0, r3
    1c42:	f7fe fdce 	bl	7e2 <digit>
    1c46:	4603      	mov	r3, r0
    1c48:	2b00      	cmp	r3, #0
    1c4a:	d1e4      	bne.n	1c16 <str_to_time+0x14>
    1c4c:	7afb      	ldrb	r3, [r7, #11]
    1c4e:	2b17      	cmp	r3, #23
    1c50:	d805      	bhi.n	1c5e <str_to_time+0x5c>
    1c52:	68fb      	ldr	r3, [r7, #12]
    1c54:	687a      	ldr	r2, [r7, #4]
    1c56:	4413      	add	r3, r2
    1c58:	781b      	ldrb	r3, [r3, #0]
    1c5a:	2b3a      	cmp	r3, #58	; 0x3a
    1c5c:	d001      	beq.n	1c62 <str_to_time+0x60>
    1c5e:	2300      	movs	r3, #0
    1c60:	e06d      	b.n	1d3e <str_to_time+0x13c>
    1c62:	7afb      	ldrb	r3, [r7, #11]
    1c64:	f003 031f 	and.w	r3, r3, #31
    1c68:	b2d9      	uxtb	r1, r3
    1c6a:	683a      	ldr	r2, [r7, #0]
    1c6c:	6813      	ldr	r3, [r2, #0]
    1c6e:	f361 3310 	bfi	r3, r1, #12, #5
    1c72:	6013      	str	r3, [r2, #0]
    1c74:	68fb      	ldr	r3, [r7, #12]
    1c76:	3301      	adds	r3, #1
    1c78:	60fb      	str	r3, [r7, #12]
    1c7a:	2300      	movs	r3, #0
    1c7c:	72fb      	strb	r3, [r7, #11]
    1c7e:	e010      	b.n	1ca2 <str_to_time+0xa0>
    1c80:	7afb      	ldrb	r3, [r7, #11]
    1c82:	461a      	mov	r2, r3
    1c84:	0092      	lsls	r2, r2, #2
    1c86:	4413      	add	r3, r2
    1c88:	005b      	lsls	r3, r3, #1
    1c8a:	b2da      	uxtb	r2, r3
    1c8c:	68fb      	ldr	r3, [r7, #12]
    1c8e:	1c59      	adds	r1, r3, #1
    1c90:	60f9      	str	r1, [r7, #12]
    1c92:	4619      	mov	r1, r3
    1c94:	687b      	ldr	r3, [r7, #4]
    1c96:	440b      	add	r3, r1
    1c98:	781b      	ldrb	r3, [r3, #0]
    1c9a:	4413      	add	r3, r2
    1c9c:	b2db      	uxtb	r3, r3
    1c9e:	3b30      	subs	r3, #48	; 0x30
    1ca0:	72fb      	strb	r3, [r7, #11]
    1ca2:	68fb      	ldr	r3, [r7, #12]
    1ca4:	687a      	ldr	r2, [r7, #4]
    1ca6:	4413      	add	r3, r2
    1ca8:	781b      	ldrb	r3, [r3, #0]
    1caa:	4618      	mov	r0, r3
    1cac:	f7fe fd99 	bl	7e2 <digit>
    1cb0:	4603      	mov	r3, r0
    1cb2:	2b00      	cmp	r3, #0
    1cb4:	d1e4      	bne.n	1c80 <str_to_time+0x7e>
    1cb6:	7afb      	ldrb	r3, [r7, #11]
    1cb8:	2b3b      	cmp	r3, #59	; 0x3b
    1cba:	d805      	bhi.n	1cc8 <str_to_time+0xc6>
    1cbc:	68fb      	ldr	r3, [r7, #12]
    1cbe:	687a      	ldr	r2, [r7, #4]
    1cc0:	4413      	add	r3, r2
    1cc2:	781b      	ldrb	r3, [r3, #0]
    1cc4:	2b3a      	cmp	r3, #58	; 0x3a
    1cc6:	d001      	beq.n	1ccc <str_to_time+0xca>
    1cc8:	2300      	movs	r3, #0
    1cca:	e038      	b.n	1d3e <str_to_time+0x13c>
    1ccc:	7afb      	ldrb	r3, [r7, #11]
    1cce:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1cd2:	b2d9      	uxtb	r1, r3
    1cd4:	683a      	ldr	r2, [r7, #0]
    1cd6:	8813      	ldrh	r3, [r2, #0]
    1cd8:	f361 138b 	bfi	r3, r1, #6, #6
    1cdc:	8013      	strh	r3, [r2, #0]
    1cde:	2300      	movs	r3, #0
    1ce0:	72fb      	strb	r3, [r7, #11]
    1ce2:	68fb      	ldr	r3, [r7, #12]
    1ce4:	3301      	adds	r3, #1
    1ce6:	60fb      	str	r3, [r7, #12]
    1ce8:	e010      	b.n	1d0c <str_to_time+0x10a>
    1cea:	7afb      	ldrb	r3, [r7, #11]
    1cec:	461a      	mov	r2, r3
    1cee:	0092      	lsls	r2, r2, #2
    1cf0:	4413      	add	r3, r2
    1cf2:	005b      	lsls	r3, r3, #1
    1cf4:	b2da      	uxtb	r2, r3
    1cf6:	68fb      	ldr	r3, [r7, #12]
    1cf8:	1c59      	adds	r1, r3, #1
    1cfa:	60f9      	str	r1, [r7, #12]
    1cfc:	4619      	mov	r1, r3
    1cfe:	687b      	ldr	r3, [r7, #4]
    1d00:	440b      	add	r3, r1
    1d02:	781b      	ldrb	r3, [r3, #0]
    1d04:	4413      	add	r3, r2
    1d06:	b2db      	uxtb	r3, r3
    1d08:	3b30      	subs	r3, #48	; 0x30
    1d0a:	72fb      	strb	r3, [r7, #11]
    1d0c:	68fb      	ldr	r3, [r7, #12]
    1d0e:	687a      	ldr	r2, [r7, #4]
    1d10:	4413      	add	r3, r2
    1d12:	781b      	ldrb	r3, [r3, #0]
    1d14:	4618      	mov	r0, r3
    1d16:	f7fe fd64 	bl	7e2 <digit>
    1d1a:	4603      	mov	r3, r0
    1d1c:	2b00      	cmp	r3, #0
    1d1e:	d1e4      	bne.n	1cea <str_to_time+0xe8>
    1d20:	7afb      	ldrb	r3, [r7, #11]
    1d22:	2b3b      	cmp	r3, #59	; 0x3b
    1d24:	d901      	bls.n	1d2a <str_to_time+0x128>
    1d26:	2300      	movs	r3, #0
    1d28:	e009      	b.n	1d3e <str_to_time+0x13c>
    1d2a:	7afb      	ldrb	r3, [r7, #11]
    1d2c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1d30:	b2d9      	uxtb	r1, r3
    1d32:	683a      	ldr	r2, [r7, #0]
    1d34:	7813      	ldrb	r3, [r2, #0]
    1d36:	f361 0305 	bfi	r3, r1, #0, #6
    1d3a:	7013      	strb	r3, [r2, #0]
    1d3c:	2301      	movs	r3, #1
    1d3e:	4618      	mov	r0, r3
    1d40:	3710      	adds	r7, #16
    1d42:	46bd      	mov	sp, r7
    1d44:	bd80      	pop	{r7, pc}

00001d46 <date_str>:
    1d46:	b480      	push	{r7}
    1d48:	b085      	sub	sp, #20
    1d4a:	af00      	add	r7, sp, #0
    1d4c:	6078      	str	r0, [r7, #4]
    1d4e:	6039      	str	r1, [r7, #0]
    1d50:	2300      	movs	r3, #0
    1d52:	60fb      	str	r3, [r7, #12]
    1d54:	687b      	ldr	r3, [r7, #4]
    1d56:	891b      	ldrh	r3, [r3, #8]
    1d58:	60bb      	str	r3, [r7, #8]
    1d5a:	68fb      	ldr	r3, [r7, #12]
    1d5c:	1c5a      	adds	r2, r3, #1
    1d5e:	60fa      	str	r2, [r7, #12]
    1d60:	461a      	mov	r2, r3
    1d62:	683b      	ldr	r3, [r7, #0]
    1d64:	4413      	add	r3, r2
    1d66:	68ba      	ldr	r2, [r7, #8]
    1d68:	495d      	ldr	r1, [pc, #372]	; (1ee0 <date_str+0x19a>)
    1d6a:	fba1 1202 	umull	r1, r2, r1, r2
    1d6e:	0992      	lsrs	r2, r2, #6
    1d70:	b2d2      	uxtb	r2, r2
    1d72:	3230      	adds	r2, #48	; 0x30
    1d74:	b2d2      	uxtb	r2, r2
    1d76:	701a      	strb	r2, [r3, #0]
    1d78:	68bb      	ldr	r3, [r7, #8]
    1d7a:	4a59      	ldr	r2, [pc, #356]	; (1ee0 <date_str+0x19a>)
    1d7c:	fba2 1203 	umull	r1, r2, r2, r3
    1d80:	0992      	lsrs	r2, r2, #6
    1d82:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1d86:	fb01 f202 	mul.w	r2, r1, r2
    1d8a:	1a9b      	subs	r3, r3, r2
    1d8c:	60bb      	str	r3, [r7, #8]
    1d8e:	68fb      	ldr	r3, [r7, #12]
    1d90:	1c5a      	adds	r2, r3, #1
    1d92:	60fa      	str	r2, [r7, #12]
    1d94:	461a      	mov	r2, r3
    1d96:	683b      	ldr	r3, [r7, #0]
    1d98:	4413      	add	r3, r2
    1d9a:	68ba      	ldr	r2, [r7, #8]
    1d9c:	4951      	ldr	r1, [pc, #324]	; (1ee4 <date_str+0x19e>)
    1d9e:	fba1 1202 	umull	r1, r2, r1, r2
    1da2:	0952      	lsrs	r2, r2, #5
    1da4:	b2d2      	uxtb	r2, r2
    1da6:	3230      	adds	r2, #48	; 0x30
    1da8:	b2d2      	uxtb	r2, r2
    1daa:	701a      	strb	r2, [r3, #0]
    1dac:	68bb      	ldr	r3, [r7, #8]
    1dae:	4a4d      	ldr	r2, [pc, #308]	; (1ee4 <date_str+0x19e>)
    1db0:	fba2 1203 	umull	r1, r2, r2, r3
    1db4:	0952      	lsrs	r2, r2, #5
    1db6:	2164      	movs	r1, #100	; 0x64
    1db8:	fb01 f202 	mul.w	r2, r1, r2
    1dbc:	1a9b      	subs	r3, r3, r2
    1dbe:	60bb      	str	r3, [r7, #8]
    1dc0:	68fb      	ldr	r3, [r7, #12]
    1dc2:	1c5a      	adds	r2, r3, #1
    1dc4:	60fa      	str	r2, [r7, #12]
    1dc6:	461a      	mov	r2, r3
    1dc8:	683b      	ldr	r3, [r7, #0]
    1dca:	4413      	add	r3, r2
    1dcc:	68ba      	ldr	r2, [r7, #8]
    1dce:	4946      	ldr	r1, [pc, #280]	; (1ee8 <date_str+0x1a2>)
    1dd0:	fba1 1202 	umull	r1, r2, r1, r2
    1dd4:	08d2      	lsrs	r2, r2, #3
    1dd6:	b2d2      	uxtb	r2, r2
    1dd8:	3230      	adds	r2, #48	; 0x30
    1dda:	b2d2      	uxtb	r2, r2
    1ddc:	701a      	strb	r2, [r3, #0]
    1dde:	68fb      	ldr	r3, [r7, #12]
    1de0:	1c5a      	adds	r2, r3, #1
    1de2:	60fa      	str	r2, [r7, #12]
    1de4:	461a      	mov	r2, r3
    1de6:	683b      	ldr	r3, [r7, #0]
    1de8:	1898      	adds	r0, r3, r2
    1dea:	68b9      	ldr	r1, [r7, #8]
    1dec:	4b3e      	ldr	r3, [pc, #248]	; (1ee8 <date_str+0x1a2>)
    1dee:	fba3 2301 	umull	r2, r3, r3, r1
    1df2:	08da      	lsrs	r2, r3, #3
    1df4:	4613      	mov	r3, r2
    1df6:	009b      	lsls	r3, r3, #2
    1df8:	4413      	add	r3, r2
    1dfa:	005b      	lsls	r3, r3, #1
    1dfc:	1aca      	subs	r2, r1, r3
    1dfe:	b2d3      	uxtb	r3, r2
    1e00:	3330      	adds	r3, #48	; 0x30
    1e02:	b2db      	uxtb	r3, r3
    1e04:	7003      	strb	r3, [r0, #0]
    1e06:	68fb      	ldr	r3, [r7, #12]
    1e08:	1c5a      	adds	r2, r3, #1
    1e0a:	60fa      	str	r2, [r7, #12]
    1e0c:	461a      	mov	r2, r3
    1e0e:	683b      	ldr	r3, [r7, #0]
    1e10:	4413      	add	r3, r2
    1e12:	222f      	movs	r2, #47	; 0x2f
    1e14:	701a      	strb	r2, [r3, #0]
    1e16:	687b      	ldr	r3, [r7, #4]
    1e18:	885b      	ldrh	r3, [r3, #2]
    1e1a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1e1e:	b2db      	uxtb	r3, r3
    1e20:	60bb      	str	r3, [r7, #8]
    1e22:	68fb      	ldr	r3, [r7, #12]
    1e24:	1c5a      	adds	r2, r3, #1
    1e26:	60fa      	str	r2, [r7, #12]
    1e28:	461a      	mov	r2, r3
    1e2a:	683b      	ldr	r3, [r7, #0]
    1e2c:	4413      	add	r3, r2
    1e2e:	68ba      	ldr	r2, [r7, #8]
    1e30:	492d      	ldr	r1, [pc, #180]	; (1ee8 <date_str+0x1a2>)
    1e32:	fba1 1202 	umull	r1, r2, r1, r2
    1e36:	08d2      	lsrs	r2, r2, #3
    1e38:	b2d2      	uxtb	r2, r2
    1e3a:	3230      	adds	r2, #48	; 0x30
    1e3c:	b2d2      	uxtb	r2, r2
    1e3e:	701a      	strb	r2, [r3, #0]
    1e40:	68fb      	ldr	r3, [r7, #12]
    1e42:	1c5a      	adds	r2, r3, #1
    1e44:	60fa      	str	r2, [r7, #12]
    1e46:	461a      	mov	r2, r3
    1e48:	683b      	ldr	r3, [r7, #0]
    1e4a:	1898      	adds	r0, r3, r2
    1e4c:	68b9      	ldr	r1, [r7, #8]
    1e4e:	4b26      	ldr	r3, [pc, #152]	; (1ee8 <date_str+0x1a2>)
    1e50:	fba3 2301 	umull	r2, r3, r3, r1
    1e54:	08da      	lsrs	r2, r3, #3
    1e56:	4613      	mov	r3, r2
    1e58:	009b      	lsls	r3, r3, #2
    1e5a:	4413      	add	r3, r2
    1e5c:	005b      	lsls	r3, r3, #1
    1e5e:	1aca      	subs	r2, r1, r3
    1e60:	b2d3      	uxtb	r3, r2
    1e62:	3330      	adds	r3, #48	; 0x30
    1e64:	b2db      	uxtb	r3, r3
    1e66:	7003      	strb	r3, [r0, #0]
    1e68:	68fb      	ldr	r3, [r7, #12]
    1e6a:	1c5a      	adds	r2, r3, #1
    1e6c:	60fa      	str	r2, [r7, #12]
    1e6e:	461a      	mov	r2, r3
    1e70:	683b      	ldr	r3, [r7, #0]
    1e72:	4413      	add	r3, r2
    1e74:	222f      	movs	r2, #47	; 0x2f
    1e76:	701a      	strb	r2, [r3, #0]
    1e78:	687b      	ldr	r3, [r7, #4]
    1e7a:	789b      	ldrb	r3, [r3, #2]
    1e7c:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1e80:	b2db      	uxtb	r3, r3
    1e82:	60bb      	str	r3, [r7, #8]
    1e84:	68fb      	ldr	r3, [r7, #12]
    1e86:	1c5a      	adds	r2, r3, #1
    1e88:	60fa      	str	r2, [r7, #12]
    1e8a:	461a      	mov	r2, r3
    1e8c:	683b      	ldr	r3, [r7, #0]
    1e8e:	4413      	add	r3, r2
    1e90:	68ba      	ldr	r2, [r7, #8]
    1e92:	4915      	ldr	r1, [pc, #84]	; (1ee8 <date_str+0x1a2>)
    1e94:	fba1 1202 	umull	r1, r2, r1, r2
    1e98:	08d2      	lsrs	r2, r2, #3
    1e9a:	b2d2      	uxtb	r2, r2
    1e9c:	3230      	adds	r2, #48	; 0x30
    1e9e:	b2d2      	uxtb	r2, r2
    1ea0:	701a      	strb	r2, [r3, #0]
    1ea2:	68fb      	ldr	r3, [r7, #12]
    1ea4:	1c5a      	adds	r2, r3, #1
    1ea6:	60fa      	str	r2, [r7, #12]
    1ea8:	461a      	mov	r2, r3
    1eaa:	683b      	ldr	r3, [r7, #0]
    1eac:	1898      	adds	r0, r3, r2
    1eae:	68b9      	ldr	r1, [r7, #8]
    1eb0:	4b0d      	ldr	r3, [pc, #52]	; (1ee8 <date_str+0x1a2>)
    1eb2:	fba3 2301 	umull	r2, r3, r3, r1
    1eb6:	08da      	lsrs	r2, r3, #3
    1eb8:	4613      	mov	r3, r2
    1eba:	009b      	lsls	r3, r3, #2
    1ebc:	4413      	add	r3, r2
    1ebe:	005b      	lsls	r3, r3, #1
    1ec0:	1aca      	subs	r2, r1, r3
    1ec2:	b2d3      	uxtb	r3, r2
    1ec4:	3330      	adds	r3, #48	; 0x30
    1ec6:	b2db      	uxtb	r3, r3
    1ec8:	7003      	strb	r3, [r0, #0]
    1eca:	68fb      	ldr	r3, [r7, #12]
    1ecc:	683a      	ldr	r2, [r7, #0]
    1ece:	4413      	add	r3, r2
    1ed0:	2200      	movs	r2, #0
    1ed2:	701a      	strb	r2, [r3, #0]
    1ed4:	bf00      	nop
    1ed6:	3714      	adds	r7, #20
    1ed8:	46bd      	mov	sp, r7
    1eda:	bc80      	pop	{r7}
    1edc:	4770      	bx	lr
    1ede:	bf00      	nop
    1ee0:	10624dd3 	.word	0x10624dd3
    1ee4:	51eb851f 	.word	0x51eb851f
    1ee8:	cccccccd 	.word	0xcccccccd

00001eec <time_str>:
    1eec:	b480      	push	{r7}
    1eee:	b085      	sub	sp, #20
    1ef0:	af00      	add	r7, sp, #0
    1ef2:	6078      	str	r0, [r7, #4]
    1ef4:	6039      	str	r1, [r7, #0]
    1ef6:	2300      	movs	r3, #0
    1ef8:	60fb      	str	r3, [r7, #12]
    1efa:	687b      	ldr	r3, [r7, #4]
    1efc:	681b      	ldr	r3, [r3, #0]
    1efe:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1f02:	b2db      	uxtb	r3, r3
    1f04:	60bb      	str	r3, [r7, #8]
    1f06:	68fb      	ldr	r3, [r7, #12]
    1f08:	1c5a      	adds	r2, r3, #1
    1f0a:	60fa      	str	r2, [r7, #12]
    1f0c:	461a      	mov	r2, r3
    1f0e:	683b      	ldr	r3, [r7, #0]
    1f10:	4413      	add	r3, r2
    1f12:	68ba      	ldr	r2, [r7, #8]
    1f14:	4943      	ldr	r1, [pc, #268]	; (2024 <time_str+0x138>)
    1f16:	fba1 1202 	umull	r1, r2, r1, r2
    1f1a:	08d2      	lsrs	r2, r2, #3
    1f1c:	b2d2      	uxtb	r2, r2
    1f1e:	3230      	adds	r2, #48	; 0x30
    1f20:	b2d2      	uxtb	r2, r2
    1f22:	701a      	strb	r2, [r3, #0]
    1f24:	68fb      	ldr	r3, [r7, #12]
    1f26:	1c5a      	adds	r2, r3, #1
    1f28:	60fa      	str	r2, [r7, #12]
    1f2a:	461a      	mov	r2, r3
    1f2c:	683b      	ldr	r3, [r7, #0]
    1f2e:	1898      	adds	r0, r3, r2
    1f30:	68b9      	ldr	r1, [r7, #8]
    1f32:	4b3c      	ldr	r3, [pc, #240]	; (2024 <time_str+0x138>)
    1f34:	fba3 2301 	umull	r2, r3, r3, r1
    1f38:	08da      	lsrs	r2, r3, #3
    1f3a:	4613      	mov	r3, r2
    1f3c:	009b      	lsls	r3, r3, #2
    1f3e:	4413      	add	r3, r2
    1f40:	005b      	lsls	r3, r3, #1
    1f42:	1aca      	subs	r2, r1, r3
    1f44:	b2d3      	uxtb	r3, r2
    1f46:	3330      	adds	r3, #48	; 0x30
    1f48:	b2db      	uxtb	r3, r3
    1f4a:	7003      	strb	r3, [r0, #0]
    1f4c:	68fb      	ldr	r3, [r7, #12]
    1f4e:	1c5a      	adds	r2, r3, #1
    1f50:	60fa      	str	r2, [r7, #12]
    1f52:	461a      	mov	r2, r3
    1f54:	683b      	ldr	r3, [r7, #0]
    1f56:	4413      	add	r3, r2
    1f58:	223a      	movs	r2, #58	; 0x3a
    1f5a:	701a      	strb	r2, [r3, #0]
    1f5c:	687b      	ldr	r3, [r7, #4]
    1f5e:	881b      	ldrh	r3, [r3, #0]
    1f60:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1f64:	b2db      	uxtb	r3, r3
    1f66:	60bb      	str	r3, [r7, #8]
    1f68:	68fb      	ldr	r3, [r7, #12]
    1f6a:	1c5a      	adds	r2, r3, #1
    1f6c:	60fa      	str	r2, [r7, #12]
    1f6e:	461a      	mov	r2, r3
    1f70:	683b      	ldr	r3, [r7, #0]
    1f72:	4413      	add	r3, r2
    1f74:	68ba      	ldr	r2, [r7, #8]
    1f76:	492b      	ldr	r1, [pc, #172]	; (2024 <time_str+0x138>)
    1f78:	fba1 1202 	umull	r1, r2, r1, r2
    1f7c:	08d2      	lsrs	r2, r2, #3
    1f7e:	b2d2      	uxtb	r2, r2
    1f80:	3230      	adds	r2, #48	; 0x30
    1f82:	b2d2      	uxtb	r2, r2
    1f84:	701a      	strb	r2, [r3, #0]
    1f86:	68fb      	ldr	r3, [r7, #12]
    1f88:	1c5a      	adds	r2, r3, #1
    1f8a:	60fa      	str	r2, [r7, #12]
    1f8c:	461a      	mov	r2, r3
    1f8e:	683b      	ldr	r3, [r7, #0]
    1f90:	1898      	adds	r0, r3, r2
    1f92:	68b9      	ldr	r1, [r7, #8]
    1f94:	4b23      	ldr	r3, [pc, #140]	; (2024 <time_str+0x138>)
    1f96:	fba3 2301 	umull	r2, r3, r3, r1
    1f9a:	08da      	lsrs	r2, r3, #3
    1f9c:	4613      	mov	r3, r2
    1f9e:	009b      	lsls	r3, r3, #2
    1fa0:	4413      	add	r3, r2
    1fa2:	005b      	lsls	r3, r3, #1
    1fa4:	1aca      	subs	r2, r1, r3
    1fa6:	b2d3      	uxtb	r3, r2
    1fa8:	3330      	adds	r3, #48	; 0x30
    1faa:	b2db      	uxtb	r3, r3
    1fac:	7003      	strb	r3, [r0, #0]
    1fae:	68fb      	ldr	r3, [r7, #12]
    1fb0:	1c5a      	adds	r2, r3, #1
    1fb2:	60fa      	str	r2, [r7, #12]
    1fb4:	461a      	mov	r2, r3
    1fb6:	683b      	ldr	r3, [r7, #0]
    1fb8:	4413      	add	r3, r2
    1fba:	223a      	movs	r2, #58	; 0x3a
    1fbc:	701a      	strb	r2, [r3, #0]
    1fbe:	687b      	ldr	r3, [r7, #4]
    1fc0:	781b      	ldrb	r3, [r3, #0]
    1fc2:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1fc6:	b2db      	uxtb	r3, r3
    1fc8:	60bb      	str	r3, [r7, #8]
    1fca:	68fb      	ldr	r3, [r7, #12]
    1fcc:	1c5a      	adds	r2, r3, #1
    1fce:	60fa      	str	r2, [r7, #12]
    1fd0:	461a      	mov	r2, r3
    1fd2:	683b      	ldr	r3, [r7, #0]
    1fd4:	4413      	add	r3, r2
    1fd6:	68ba      	ldr	r2, [r7, #8]
    1fd8:	4912      	ldr	r1, [pc, #72]	; (2024 <time_str+0x138>)
    1fda:	fba1 1202 	umull	r1, r2, r1, r2
    1fde:	08d2      	lsrs	r2, r2, #3
    1fe0:	b2d2      	uxtb	r2, r2
    1fe2:	3230      	adds	r2, #48	; 0x30
    1fe4:	b2d2      	uxtb	r2, r2
    1fe6:	701a      	strb	r2, [r3, #0]
    1fe8:	68fb      	ldr	r3, [r7, #12]
    1fea:	1c5a      	adds	r2, r3, #1
    1fec:	60fa      	str	r2, [r7, #12]
    1fee:	461a      	mov	r2, r3
    1ff0:	683b      	ldr	r3, [r7, #0]
    1ff2:	1898      	adds	r0, r3, r2
    1ff4:	68b9      	ldr	r1, [r7, #8]
    1ff6:	4b0b      	ldr	r3, [pc, #44]	; (2024 <time_str+0x138>)
    1ff8:	fba3 2301 	umull	r2, r3, r3, r1
    1ffc:	08da      	lsrs	r2, r3, #3
    1ffe:	4613      	mov	r3, r2
    2000:	009b      	lsls	r3, r3, #2
    2002:	4413      	add	r3, r2
    2004:	005b      	lsls	r3, r3, #1
    2006:	1aca      	subs	r2, r1, r3
    2008:	b2d3      	uxtb	r3, r2
    200a:	3330      	adds	r3, #48	; 0x30
    200c:	b2db      	uxtb	r3, r3
    200e:	7003      	strb	r3, [r0, #0]
    2010:	68fb      	ldr	r3, [r7, #12]
    2012:	683a      	ldr	r2, [r7, #0]
    2014:	4413      	add	r3, r2
    2016:	2200      	movs	r2, #0
    2018:	701a      	strb	r2, [r3, #0]
    201a:	bf00      	nop
    201c:	3714      	adds	r7, #20
    201e:	46bd      	mov	sp, r7
    2020:	bc80      	pop	{r7}
    2022:	4770      	bx	lr
    2024:	cccccccd 	.word	0xcccccccd

00002028 <get_fattime>:
    2028:	b580      	push	{r7, lr}
    202a:	b084      	sub	sp, #16
    202c:	af00      	add	r7, sp, #0
    202e:	463b      	mov	r3, r7
    2030:	4618      	mov	r0, r3
    2032:	f7ff fa69 	bl	1508 <get_date_time>
    2036:	783b      	ldrb	r3, [r7, #0]
    2038:	f3c3 0305 	ubfx	r3, r3, #0, #6
    203c:	b2db      	uxtb	r3, r3
    203e:	0fda      	lsrs	r2, r3, #31
    2040:	4413      	add	r3, r2
    2042:	105b      	asrs	r3, r3, #1
    2044:	b2db      	uxtb	r3, r3
    2046:	f003 031f 	and.w	r3, r3, #31
    204a:	b2da      	uxtb	r2, r3
    204c:	7b3b      	ldrb	r3, [r7, #12]
    204e:	f362 0304 	bfi	r3, r2, #0, #5
    2052:	733b      	strb	r3, [r7, #12]
    2054:	883b      	ldrh	r3, [r7, #0]
    2056:	f3c3 1385 	ubfx	r3, r3, #6, #6
    205a:	b2da      	uxtb	r2, r3
    205c:	89bb      	ldrh	r3, [r7, #12]
    205e:	f362 134a 	bfi	r3, r2, #5, #6
    2062:	81bb      	strh	r3, [r7, #12]
    2064:	683b      	ldr	r3, [r7, #0]
    2066:	f3c3 3304 	ubfx	r3, r3, #12, #5
    206a:	b2da      	uxtb	r2, r3
    206c:	7b7b      	ldrb	r3, [r7, #13]
    206e:	f362 03c7 	bfi	r3, r2, #3, #5
    2072:	737b      	strb	r3, [r7, #13]
    2074:	78bb      	ldrb	r3, [r7, #2]
    2076:	f3c3 0344 	ubfx	r3, r3, #1, #5
    207a:	b2da      	uxtb	r2, r3
    207c:	7bbb      	ldrb	r3, [r7, #14]
    207e:	f362 0304 	bfi	r3, r2, #0, #5
    2082:	73bb      	strb	r3, [r7, #14]
    2084:	887b      	ldrh	r3, [r7, #2]
    2086:	f3c3 1383 	ubfx	r3, r3, #6, #4
    208a:	b2da      	uxtb	r2, r3
    208c:	89fb      	ldrh	r3, [r7, #14]
    208e:	f362 1348 	bfi	r3, r2, #5, #4
    2092:	81fb      	strh	r3, [r7, #14]
    2094:	893b      	ldrh	r3, [r7, #8]
    2096:	b2db      	uxtb	r3, r3
    2098:	3344      	adds	r3, #68	; 0x44
    209a:	b2db      	uxtb	r3, r3
    209c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    20a0:	b2da      	uxtb	r2, r3
    20a2:	7bfb      	ldrb	r3, [r7, #15]
    20a4:	f362 0347 	bfi	r3, r2, #1, #7
    20a8:	73fb      	strb	r3, [r7, #15]
    20aa:	68fb      	ldr	r3, [r7, #12]
    20ac:	4618      	mov	r0, r3
    20ae:	3710      	adds	r7, #16
    20b0:	46bd      	mov	sp, r7
    20b2:	bd80      	pop	{r7, pc}

000020b4 <RTC_handler>:
    20b4:	b480      	push	{r7}
    20b6:	b083      	sub	sp, #12
    20b8:	af00      	add	r7, sp, #0
    20ba:	4b0a      	ldr	r3, [pc, #40]	; (20e4 <RTC_handler+0x30>)
    20bc:	685b      	ldr	r3, [r3, #4]
    20be:	f003 0301 	and.w	r3, r3, #1
    20c2:	2b00      	cmp	r3, #0
    20c4:	d001      	beq.n	20ca <RTC_handler+0x16>
    20c6:	4b07      	ldr	r3, [pc, #28]	; (20e4 <RTC_handler+0x30>)
    20c8:	685b      	ldr	r3, [r3, #4]
    20ca:	4b06      	ldr	r3, [pc, #24]	; (20e4 <RTC_handler+0x30>)
    20cc:	685b      	ldr	r3, [r3, #4]
    20ce:	f003 0302 	and.w	r3, r3, #2
    20d2:	2b00      	cmp	r3, #0
    20d4:	d001      	beq.n	20da <RTC_handler+0x26>
    20d6:	4b03      	ldr	r3, [pc, #12]	; (20e4 <RTC_handler+0x30>)
    20d8:	685b      	ldr	r3, [r3, #4]
    20da:	bf00      	nop
    20dc:	370c      	adds	r7, #12
    20de:	46bd      	mov	sp, r7
    20e0:	bc80      	pop	{r7}
    20e2:	4770      	bx	lr
    20e4:	40002800 	.word	0x40002800

000020e8 <spi_baudrate>:
    20e8:	b480      	push	{r7}
    20ea:	b083      	sub	sp, #12
    20ec:	af00      	add	r7, sp, #0
    20ee:	6078      	str	r0, [r7, #4]
    20f0:	6039      	str	r1, [r7, #0]
    20f2:	687b      	ldr	r3, [r7, #4]
    20f4:	681b      	ldr	r3, [r3, #0]
    20f6:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    20fa:	687b      	ldr	r3, [r7, #4]
    20fc:	601a      	str	r2, [r3, #0]
    20fe:	687b      	ldr	r3, [r7, #4]
    2100:	681a      	ldr	r2, [r3, #0]
    2102:	683b      	ldr	r3, [r7, #0]
    2104:	00db      	lsls	r3, r3, #3
    2106:	431a      	orrs	r2, r3
    2108:	687b      	ldr	r3, [r7, #4]
    210a:	601a      	str	r2, [r3, #0]
    210c:	bf00      	nop
    210e:	370c      	adds	r7, #12
    2110:	46bd      	mov	sp, r7
    2112:	bc80      	pop	{r7}
    2114:	4770      	bx	lr

00002116 <spi_config_port>:
    2116:	b580      	push	{r7, lr}
    2118:	b082      	sub	sp, #8
    211a:	af00      	add	r7, sp, #0
    211c:	6078      	str	r0, [r7, #4]
    211e:	6039      	str	r1, [r7, #0]
    2120:	4a33      	ldr	r2, [pc, #204]	; (21f0 <spi_config_port+0xda>)
    2122:	4b33      	ldr	r3, [pc, #204]	; (21f0 <spi_config_port+0xda>)
    2124:	699b      	ldr	r3, [r3, #24]
    2126:	f043 0301 	orr.w	r3, r3, #1
    212a:	6193      	str	r3, [r2, #24]
    212c:	687b      	ldr	r3, [r7, #4]
    212e:	4a31      	ldr	r2, [pc, #196]	; (21f4 <spi_config_port+0xde>)
    2130:	4293      	cmp	r3, r2
    2132:	d13e      	bne.n	21b2 <spi_config_port+0x9c>
    2134:	683b      	ldr	r3, [r7, #0]
    2136:	2b00      	cmp	r3, #0
    2138:	d11a      	bne.n	2170 <spi_config_port+0x5a>
    213a:	4a2d      	ldr	r2, [pc, #180]	; (21f0 <spi_config_port+0xda>)
    213c:	4b2c      	ldr	r3, [pc, #176]	; (21f0 <spi_config_port+0xda>)
    213e:	699b      	ldr	r3, [r3, #24]
    2140:	f043 0304 	orr.w	r3, r3, #4
    2144:	6193      	str	r3, [r2, #24]
    2146:	2203      	movs	r2, #3
    2148:	2104      	movs	r1, #4
    214a:	482b      	ldr	r0, [pc, #172]	; (21f8 <spi_config_port+0xe2>)
    214c:	f7fe fd51 	bl	bf2 <config_pin>
    2150:	220b      	movs	r2, #11
    2152:	2105      	movs	r1, #5
    2154:	4828      	ldr	r0, [pc, #160]	; (21f8 <spi_config_port+0xe2>)
    2156:	f7fe fd4c 	bl	bf2 <config_pin>
    215a:	2204      	movs	r2, #4
    215c:	2106      	movs	r1, #6
    215e:	4826      	ldr	r0, [pc, #152]	; (21f8 <spi_config_port+0xe2>)
    2160:	f7fe fd47 	bl	bf2 <config_pin>
    2164:	220b      	movs	r2, #11
    2166:	2107      	movs	r1, #7
    2168:	4823      	ldr	r0, [pc, #140]	; (21f8 <spi_config_port+0xe2>)
    216a:	f7fe fd42 	bl	bf2 <config_pin>
    216e:	e03a      	b.n	21e6 <spi_config_port+0xd0>
    2170:	4a1f      	ldr	r2, [pc, #124]	; (21f0 <spi_config_port+0xda>)
    2172:	4b1f      	ldr	r3, [pc, #124]	; (21f0 <spi_config_port+0xda>)
    2174:	699b      	ldr	r3, [r3, #24]
    2176:	f043 030d 	orr.w	r3, r3, #13
    217a:	6193      	str	r3, [r2, #24]
    217c:	4a1f      	ldr	r2, [pc, #124]	; (21fc <spi_config_port+0xe6>)
    217e:	4b1f      	ldr	r3, [pc, #124]	; (21fc <spi_config_port+0xe6>)
    2180:	685b      	ldr	r3, [r3, #4]
    2182:	f043 0301 	orr.w	r3, r3, #1
    2186:	6053      	str	r3, [r2, #4]
    2188:	2203      	movs	r2, #3
    218a:	210f      	movs	r1, #15
    218c:	481a      	ldr	r0, [pc, #104]	; (21f8 <spi_config_port+0xe2>)
    218e:	f7fe fd30 	bl	bf2 <config_pin>
    2192:	220b      	movs	r2, #11
    2194:	2103      	movs	r1, #3
    2196:	481a      	ldr	r0, [pc, #104]	; (2200 <spi_config_port+0xea>)
    2198:	f7fe fd2b 	bl	bf2 <config_pin>
    219c:	2204      	movs	r2, #4
    219e:	2104      	movs	r1, #4
    21a0:	4817      	ldr	r0, [pc, #92]	; (2200 <spi_config_port+0xea>)
    21a2:	f7fe fd26 	bl	bf2 <config_pin>
    21a6:	220b      	movs	r2, #11
    21a8:	2105      	movs	r1, #5
    21aa:	4815      	ldr	r0, [pc, #84]	; (2200 <spi_config_port+0xea>)
    21ac:	f7fe fd21 	bl	bf2 <config_pin>
    21b0:	e019      	b.n	21e6 <spi_config_port+0xd0>
    21b2:	4a0f      	ldr	r2, [pc, #60]	; (21f0 <spi_config_port+0xda>)
    21b4:	4b0e      	ldr	r3, [pc, #56]	; (21f0 <spi_config_port+0xda>)
    21b6:	699b      	ldr	r3, [r3, #24]
    21b8:	f043 0308 	orr.w	r3, r3, #8
    21bc:	6193      	str	r3, [r2, #24]
    21be:	2203      	movs	r2, #3
    21c0:	2102      	movs	r1, #2
    21c2:	480f      	ldr	r0, [pc, #60]	; (2200 <spi_config_port+0xea>)
    21c4:	f7fe fd15 	bl	bf2 <config_pin>
    21c8:	220b      	movs	r2, #11
    21ca:	210d      	movs	r1, #13
    21cc:	480c      	ldr	r0, [pc, #48]	; (2200 <spi_config_port+0xea>)
    21ce:	f7fe fd10 	bl	bf2 <config_pin>
    21d2:	2204      	movs	r2, #4
    21d4:	210e      	movs	r1, #14
    21d6:	480a      	ldr	r0, [pc, #40]	; (2200 <spi_config_port+0xea>)
    21d8:	f7fe fd0b 	bl	bf2 <config_pin>
    21dc:	220b      	movs	r2, #11
    21de:	210f      	movs	r1, #15
    21e0:	4807      	ldr	r0, [pc, #28]	; (2200 <spi_config_port+0xea>)
    21e2:	f7fe fd06 	bl	bf2 <config_pin>
    21e6:	bf00      	nop
    21e8:	3708      	adds	r7, #8
    21ea:	46bd      	mov	sp, r7
    21ec:	bd80      	pop	{r7, pc}
    21ee:	bf00      	nop
    21f0:	40021000 	.word	0x40021000
    21f4:	40013000 	.word	0x40013000
    21f8:	40010800 	.word	0x40010800
    21fc:	40010000 	.word	0x40010000
    2200:	40010c00 	.word	0x40010c00

00002204 <spi_init>:
    2204:	b580      	push	{r7, lr}
    2206:	b084      	sub	sp, #16
    2208:	af00      	add	r7, sp, #0
    220a:	60f8      	str	r0, [r7, #12]
    220c:	60b9      	str	r1, [r7, #8]
    220e:	607a      	str	r2, [r7, #4]
    2210:	603b      	str	r3, [r7, #0]
    2212:	6839      	ldr	r1, [r7, #0]
    2214:	68f8      	ldr	r0, [r7, #12]
    2216:	f7ff ff7e 	bl	2116 <spi_config_port>
    221a:	68fb      	ldr	r3, [r7, #12]
    221c:	4a10      	ldr	r2, [pc, #64]	; (2260 <spi_init+0x5c>)
    221e:	4293      	cmp	r3, r2
    2220:	d106      	bne.n	2230 <spi_init+0x2c>
    2222:	4a10      	ldr	r2, [pc, #64]	; (2264 <spi_init+0x60>)
    2224:	4b0f      	ldr	r3, [pc, #60]	; (2264 <spi_init+0x60>)
    2226:	699b      	ldr	r3, [r3, #24]
    2228:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    222c:	6193      	str	r3, [r2, #24]
    222e:	e005      	b.n	223c <spi_init+0x38>
    2230:	4a0c      	ldr	r2, [pc, #48]	; (2264 <spi_init+0x60>)
    2232:	4b0c      	ldr	r3, [pc, #48]	; (2264 <spi_init+0x60>)
    2234:	69db      	ldr	r3, [r3, #28]
    2236:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    223a:	61d3      	str	r3, [r2, #28]
    223c:	68fb      	ldr	r3, [r7, #12]
    223e:	687a      	ldr	r2, [r7, #4]
    2240:	601a      	str	r2, [r3, #0]
    2242:	68b9      	ldr	r1, [r7, #8]
    2244:	68f8      	ldr	r0, [r7, #12]
    2246:	f7ff ff4f 	bl	20e8 <spi_baudrate>
    224a:	68fb      	ldr	r3, [r7, #12]
    224c:	681b      	ldr	r3, [r3, #0]
    224e:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    2252:	68fb      	ldr	r3, [r7, #12]
    2254:	601a      	str	r2, [r3, #0]
    2256:	bf00      	nop
    2258:	3710      	adds	r7, #16
    225a:	46bd      	mov	sp, r7
    225c:	bd80      	pop	{r7, pc}
    225e:	bf00      	nop
    2260:	40013000 	.word	0x40013000
    2264:	40021000 	.word	0x40021000

00002268 <spi_send>:
    2268:	b480      	push	{r7}
    226a:	b085      	sub	sp, #20
    226c:	af00      	add	r7, sp, #0
    226e:	6078      	str	r0, [r7, #4]
    2270:	460b      	mov	r3, r1
    2272:	70fb      	strb	r3, [r7, #3]
    2274:	bf00      	nop
    2276:	687b      	ldr	r3, [r7, #4]
    2278:	689b      	ldr	r3, [r3, #8]
    227a:	f003 0302 	and.w	r3, r3, #2
    227e:	2b00      	cmp	r3, #0
    2280:	d0f9      	beq.n	2276 <spi_send+0xe>
    2282:	78fa      	ldrb	r2, [r7, #3]
    2284:	687b      	ldr	r3, [r7, #4]
    2286:	60da      	str	r2, [r3, #12]
    2288:	bf00      	nop
    228a:	687b      	ldr	r3, [r7, #4]
    228c:	689b      	ldr	r3, [r3, #8]
    228e:	f003 0301 	and.w	r3, r3, #1
    2292:	2b00      	cmp	r3, #0
    2294:	d0f9      	beq.n	228a <spi_send+0x22>
    2296:	687b      	ldr	r3, [r7, #4]
    2298:	68db      	ldr	r3, [r3, #12]
    229a:	73fb      	strb	r3, [r7, #15]
    229c:	bf00      	nop
    229e:	3714      	adds	r7, #20
    22a0:	46bd      	mov	sp, r7
    22a2:	bc80      	pop	{r7}
    22a4:	4770      	bx	lr

000022a6 <spi_receive>:
    22a6:	b480      	push	{r7}
    22a8:	b085      	sub	sp, #20
    22aa:	af00      	add	r7, sp, #0
    22ac:	6078      	str	r0, [r7, #4]
    22ae:	bf00      	nop
    22b0:	687b      	ldr	r3, [r7, #4]
    22b2:	689b      	ldr	r3, [r3, #8]
    22b4:	f003 0302 	and.w	r3, r3, #2
    22b8:	2b00      	cmp	r3, #0
    22ba:	d0f9      	beq.n	22b0 <spi_receive+0xa>
    22bc:	687b      	ldr	r3, [r7, #4]
    22be:	22ff      	movs	r2, #255	; 0xff
    22c0:	60da      	str	r2, [r3, #12]
    22c2:	bf00      	nop
    22c4:	687b      	ldr	r3, [r7, #4]
    22c6:	689b      	ldr	r3, [r3, #8]
    22c8:	f003 0301 	and.w	r3, r3, #1
    22cc:	2b00      	cmp	r3, #0
    22ce:	d0f9      	beq.n	22c4 <spi_receive+0x1e>
    22d0:	687b      	ldr	r3, [r7, #4]
    22d2:	68db      	ldr	r3, [r3, #12]
    22d4:	73fb      	strb	r3, [r7, #15]
    22d6:	7bfb      	ldrb	r3, [r7, #15]
    22d8:	4618      	mov	r0, r3
    22da:	3714      	adds	r7, #20
    22dc:	46bd      	mov	sp, r7
    22de:	bc80      	pop	{r7}
    22e0:	4770      	bx	lr

000022e2 <spi_send_block>:
    22e2:	b480      	push	{r7}
    22e4:	b087      	sub	sp, #28
    22e6:	af00      	add	r7, sp, #0
    22e8:	60f8      	str	r0, [r7, #12]
    22ea:	60b9      	str	r1, [r7, #8]
    22ec:	607a      	str	r2, [r7, #4]
    22ee:	e010      	b.n	2312 <spi_send_block+0x30>
    22f0:	68bb      	ldr	r3, [r7, #8]
    22f2:	1c5a      	adds	r2, r3, #1
    22f4:	60ba      	str	r2, [r7, #8]
    22f6:	781b      	ldrb	r3, [r3, #0]
    22f8:	461a      	mov	r2, r3
    22fa:	68fb      	ldr	r3, [r7, #12]
    22fc:	60da      	str	r2, [r3, #12]
    22fe:	bf00      	nop
    2300:	68fb      	ldr	r3, [r7, #12]
    2302:	689b      	ldr	r3, [r3, #8]
    2304:	f003 0302 	and.w	r3, r3, #2
    2308:	2b00      	cmp	r3, #0
    230a:	d0f9      	beq.n	2300 <spi_send_block+0x1e>
    230c:	687b      	ldr	r3, [r7, #4]
    230e:	3b01      	subs	r3, #1
    2310:	607b      	str	r3, [r7, #4]
    2312:	687b      	ldr	r3, [r7, #4]
    2314:	2b00      	cmp	r3, #0
    2316:	d1eb      	bne.n	22f0 <spi_send_block+0xe>
    2318:	bf00      	nop
    231a:	68fb      	ldr	r3, [r7, #12]
    231c:	689b      	ldr	r3, [r3, #8]
    231e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    2322:	2b00      	cmp	r3, #0
    2324:	d1f9      	bne.n	231a <spi_send_block+0x38>
    2326:	68fb      	ldr	r3, [r7, #12]
    2328:	68db      	ldr	r3, [r3, #12]
    232a:	75fb      	strb	r3, [r7, #23]
    232c:	bf00      	nop
    232e:	371c      	adds	r7, #28
    2330:	46bd      	mov	sp, r7
    2332:	bc80      	pop	{r7}
    2334:	4770      	bx	lr

00002336 <spi_receive_block>:
    2336:	b480      	push	{r7}
    2338:	b085      	sub	sp, #20
    233a:	af00      	add	r7, sp, #0
    233c:	60f8      	str	r0, [r7, #12]
    233e:	60b9      	str	r1, [r7, #8]
    2340:	607a      	str	r2, [r7, #4]
    2342:	e013      	b.n	236c <spi_receive_block+0x36>
    2344:	68fb      	ldr	r3, [r7, #12]
    2346:	2200      	movs	r2, #0
    2348:	60da      	str	r2, [r3, #12]
    234a:	bf00      	nop
    234c:	68fb      	ldr	r3, [r7, #12]
    234e:	689b      	ldr	r3, [r3, #8]
    2350:	f003 0301 	and.w	r3, r3, #1
    2354:	2b00      	cmp	r3, #0
    2356:	d0f9      	beq.n	234c <spi_receive_block+0x16>
    2358:	68bb      	ldr	r3, [r7, #8]
    235a:	1c5a      	adds	r2, r3, #1
    235c:	60ba      	str	r2, [r7, #8]
    235e:	68fa      	ldr	r2, [r7, #12]
    2360:	68d2      	ldr	r2, [r2, #12]
    2362:	b2d2      	uxtb	r2, r2
    2364:	701a      	strb	r2, [r3, #0]
    2366:	687b      	ldr	r3, [r7, #4]
    2368:	3b01      	subs	r3, #1
    236a:	607b      	str	r3, [r7, #4]
    236c:	687b      	ldr	r3, [r7, #4]
    236e:	2b00      	cmp	r3, #0
    2370:	d1e8      	bne.n	2344 <spi_receive_block+0xe>
    2372:	bf00      	nop
    2374:	3714      	adds	r7, #20
    2376:	46bd      	mov	sp, r7
    2378:	bc80      	pop	{r7}
    237a:	4770      	bx	lr

0000237c <reset_mcu>:
    237c:	4b01      	ldr	r3, [pc, #4]	; (2384 <reset_mcu+0x8>)
    237e:	4a02      	ldr	r2, [pc, #8]	; (2388 <reset_mcu+0xc>)
    2380:	601a      	str	r2, [r3, #0]
    2382:	bf00      	nop
    2384:	e000ed0c 	.word	0xe000ed0c
    2388:	05fa0004 	.word	0x05fa0004

0000238c <print_fault>:
    238c:	b580      	push	{r7, lr}
    238e:	b082      	sub	sp, #8
    2390:	af00      	add	r7, sp, #0
    2392:	6078      	str	r0, [r7, #4]
    2394:	6039      	str	r1, [r7, #0]
    2396:	6878      	ldr	r0, [r7, #4]
    2398:	f7fe fd5e 	bl	e58 <gfx_print>
    239c:	4818      	ldr	r0, [pc, #96]	; (2400 <print_fault+0x74>)
    239e:	f7fe fd5b 	bl	e58 <gfx_print>
    23a2:	683b      	ldr	r3, [r7, #0]
    23a4:	2b00      	cmp	r3, #0
    23a6:	d004      	beq.n	23b2 <print_fault+0x26>
    23a8:	683b      	ldr	r3, [r7, #0]
    23aa:	2110      	movs	r1, #16
    23ac:	4618      	mov	r0, r3
    23ae:	f7fe fd76 	bl	e9e <gfx_print_int>
    23b2:	200d      	movs	r0, #13
    23b4:	f7fe fcf0 	bl	d98 <gfx_putchar>
    23b8:	4812      	ldr	r0, [pc, #72]	; (2404 <print_fault+0x78>)
    23ba:	f7fe fd4d 	bl	e58 <gfx_print>
    23be:	4b12      	ldr	r3, [pc, #72]	; (2408 <print_fault+0x7c>)
    23c0:	681b      	ldr	r3, [r3, #0]
    23c2:	f3c3 430f 	ubfx	r3, r3, #16, #16
    23c6:	b29b      	uxth	r3, r3
    23c8:	2110      	movs	r1, #16
    23ca:	4618      	mov	r0, r3
    23cc:	f7fe fd67 	bl	e9e <gfx_print_int>
    23d0:	480e      	ldr	r0, [pc, #56]	; (240c <print_fault+0x80>)
    23d2:	f7fe fd41 	bl	e58 <gfx_print>
    23d6:	4b0c      	ldr	r3, [pc, #48]	; (2408 <print_fault+0x7c>)
    23d8:	681b      	ldr	r3, [r3, #0]
    23da:	f3c3 2307 	ubfx	r3, r3, #8, #8
    23de:	b2db      	uxtb	r3, r3
    23e0:	2110      	movs	r1, #16
    23e2:	4618      	mov	r0, r3
    23e4:	f7fe fd5b 	bl	e9e <gfx_print_int>
    23e8:	4809      	ldr	r0, [pc, #36]	; (2410 <print_fault+0x84>)
    23ea:	f7fe fd35 	bl	e58 <gfx_print>
    23ee:	4b06      	ldr	r3, [pc, #24]	; (2408 <print_fault+0x7c>)
    23f0:	681b      	ldr	r3, [r3, #0]
    23f2:	b2db      	uxtb	r3, r3
    23f4:	2110      	movs	r1, #16
    23f6:	4618      	mov	r0, r3
    23f8:	f7fe fd51 	bl	e9e <gfx_print_int>
    23fc:	e7fe      	b.n	23fc <print_fault+0x70>
    23fe:	bf00      	nop
    2400:	00002cb0 	.word	0x00002cb0
    2404:	00002cc0 	.word	0x00002cc0
    2408:	e000ed28 	.word	0xe000ed28
    240c:	00002cc8 	.word	0x00002cc8
    2410:	00002cd0 	.word	0x00002cd0

00002414 <config_systicks>:
    2414:	b580      	push	{r7, lr}
    2416:	af00      	add	r7, sp, #0
    2418:	2109      	movs	r1, #9
    241a:	f06f 000e 	mvn.w	r0, #14
    241e:	f7fe fff3 	bl	1408 <set_int_priority>
    2422:	4b04      	ldr	r3, [pc, #16]	; (2434 <config_systicks+0x20>)
    2424:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2428:	601a      	str	r2, [r3, #0]
    242a:	4b03      	ldr	r3, [pc, #12]	; (2438 <config_systicks+0x24>)
    242c:	2203      	movs	r2, #3
    242e:	601a      	str	r2, [r3, #0]
    2430:	bf00      	nop
    2432:	bd80      	pop	{r7, pc}
    2434:	e000e014 	.word	0xe000e014
    2438:	e000e010 	.word	0xe000e010

0000243c <pause>:
    243c:	b480      	push	{r7}
    243e:	b083      	sub	sp, #12
    2440:	af00      	add	r7, sp, #0
    2442:	6078      	str	r0, [r7, #4]
    2444:	4a06      	ldr	r2, [pc, #24]	; (2460 <pause+0x24>)
    2446:	687b      	ldr	r3, [r7, #4]
    2448:	6013      	str	r3, [r2, #0]
    244a:	bf00      	nop
    244c:	4b04      	ldr	r3, [pc, #16]	; (2460 <pause+0x24>)
    244e:	681b      	ldr	r3, [r3, #0]
    2450:	2b00      	cmp	r3, #0
    2452:	d1fb      	bne.n	244c <pause+0x10>
    2454:	bf00      	nop
    2456:	370c      	adds	r7, #12
    2458:	46bd      	mov	sp, r7
    245a:	bc80      	pop	{r7}
    245c:	4770      	bx	lr
    245e:	bf00      	nop
    2460:	20000464 	.word	0x20000464

00002464 <STK_handler>:
    2464:	b480      	push	{r7}
    2466:	af00      	add	r7, sp, #0
    2468:	4b08      	ldr	r3, [pc, #32]	; (248c <STK_handler+0x28>)
    246a:	681b      	ldr	r3, [r3, #0]
    246c:	3301      	adds	r3, #1
    246e:	4a07      	ldr	r2, [pc, #28]	; (248c <STK_handler+0x28>)
    2470:	6013      	str	r3, [r2, #0]
    2472:	4b07      	ldr	r3, [pc, #28]	; (2490 <STK_handler+0x2c>)
    2474:	681b      	ldr	r3, [r3, #0]
    2476:	2b00      	cmp	r3, #0
    2478:	d004      	beq.n	2484 <STK_handler+0x20>
    247a:	4b05      	ldr	r3, [pc, #20]	; (2490 <STK_handler+0x2c>)
    247c:	681b      	ldr	r3, [r3, #0]
    247e:	3b01      	subs	r3, #1
    2480:	4a03      	ldr	r2, [pc, #12]	; (2490 <STK_handler+0x2c>)
    2482:	6013      	str	r3, [r2, #0]
    2484:	bf00      	nop
    2486:	46bd      	mov	sp, r7
    2488:	bc80      	pop	{r7}
    248a:	4770      	bx	lr
    248c:	20000460 	.word	0x20000460
    2490:	20000464 	.word	0x20000464

00002494 <tvout_init>:
    2494:	b580      	push	{r7, lr}
    2496:	af00      	add	r7, sp, #0
    2498:	220a      	movs	r2, #10
    249a:	2108      	movs	r1, #8
    249c:	4843      	ldr	r0, [pc, #268]	; (25ac <tvout_init+0x118>)
    249e:	f7fe fba8 	bl	bf2 <config_pin>
    24a2:	4b42      	ldr	r3, [pc, #264]	; (25ac <tvout_init+0x118>)
    24a4:	f04f 3233 	mov.w	r2, #858993459	; 0x33333333
    24a8:	601a      	str	r2, [r3, #0]
    24aa:	4b40      	ldr	r3, [pc, #256]	; (25ac <tvout_init+0x118>)
    24ac:	2200      	movs	r2, #0
    24ae:	60da      	str	r2, [r3, #12]
    24b0:	4a3f      	ldr	r2, [pc, #252]	; (25b0 <tvout_init+0x11c>)
    24b2:	4b3f      	ldr	r3, [pc, #252]	; (25b0 <tvout_init+0x11c>)
    24b4:	699b      	ldr	r3, [r3, #24]
    24b6:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    24ba:	6193      	str	r3, [r2, #24]
    24bc:	4b3d      	ldr	r3, [pc, #244]	; (25b4 <tvout_init+0x120>)
    24be:	2278      	movs	r2, #120	; 0x78
    24c0:	619a      	str	r2, [r3, #24]
    24c2:	4b3c      	ldr	r3, [pc, #240]	; (25b4 <tvout_init+0x120>)
    24c4:	2201      	movs	r2, #1
    24c6:	621a      	str	r2, [r3, #32]
    24c8:	4b3a      	ldr	r3, [pc, #232]	; (25b4 <tvout_init+0x120>)
    24ca:	2284      	movs	r2, #132	; 0x84
    24cc:	601a      	str	r2, [r3, #0]
    24ce:	4b39      	ldr	r3, [pc, #228]	; (25b4 <tvout_init+0x120>)
    24d0:	f241 12c5 	movw	r2, #4549	; 0x11c5
    24d4:	62da      	str	r2, [r3, #44]	; 0x2c
    24d6:	4b37      	ldr	r3, [pc, #220]	; (25b4 <tvout_init+0x120>)
    24d8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    24dc:	635a      	str	r2, [r3, #52]	; 0x34
    24de:	4b35      	ldr	r3, [pc, #212]	; (25b4 <tvout_init+0x120>)
    24e0:	f240 126d 	movw	r2, #365	; 0x16d
    24e4:	639a      	str	r2, [r3, #56]	; 0x38
    24e6:	4a33      	ldr	r2, [pc, #204]	; (25b4 <tvout_init+0x120>)
    24e8:	4b32      	ldr	r3, [pc, #200]	; (25b4 <tvout_init+0x120>)
    24ea:	695b      	ldr	r3, [r3, #20]
    24ec:	f043 0301 	orr.w	r3, r3, #1
    24f0:	6153      	str	r3, [r2, #20]
    24f2:	4b30      	ldr	r3, [pc, #192]	; (25b4 <tvout_init+0x120>)
    24f4:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    24f8:	645a      	str	r2, [r3, #68]	; 0x44
    24fa:	4b2e      	ldr	r3, [pc, #184]	; (25b4 <tvout_init+0x120>)
    24fc:	2200      	movs	r2, #0
    24fe:	611a      	str	r2, [r3, #16]
    2500:	4a2c      	ldr	r2, [pc, #176]	; (25b4 <tvout_init+0x120>)
    2502:	4b2c      	ldr	r3, [pc, #176]	; (25b4 <tvout_init+0x120>)
    2504:	68db      	ldr	r3, [r3, #12]
    2506:	f043 0301 	orr.w	r3, r3, #1
    250a:	60d3      	str	r3, [r2, #12]
    250c:	2101      	movs	r1, #1
    250e:	2019      	movs	r0, #25
    2510:	f7fe ff7a 	bl	1408 <set_int_priority>
    2514:	2101      	movs	r1, #1
    2516:	201b      	movs	r0, #27
    2518:	f7fe ff76 	bl	1408 <set_int_priority>
    251c:	201b      	movs	r0, #27
    251e:	f7fe feb9 	bl	1294 <enable_interrupt>
    2522:	2019      	movs	r0, #25
    2524:	f7fe feb6 	bl	1294 <enable_interrupt>
    2528:	4a22      	ldr	r2, [pc, #136]	; (25b4 <tvout_init+0x120>)
    252a:	4b22      	ldr	r3, [pc, #136]	; (25b4 <tvout_init+0x120>)
    252c:	681b      	ldr	r3, [r3, #0]
    252e:	f043 0301 	orr.w	r3, r3, #1
    2532:	6013      	str	r3, [r2, #0]
    2534:	220a      	movs	r2, #10
    2536:	2100      	movs	r1, #0
    2538:	481f      	ldr	r0, [pc, #124]	; (25b8 <tvout_init+0x124>)
    253a:	f7fe fb5a 	bl	bf2 <config_pin>
    253e:	220a      	movs	r2, #10
    2540:	2101      	movs	r1, #1
    2542:	481d      	ldr	r0, [pc, #116]	; (25b8 <tvout_init+0x124>)
    2544:	f7fe fb55 	bl	bf2 <config_pin>
    2548:	4a19      	ldr	r2, [pc, #100]	; (25b0 <tvout_init+0x11c>)
    254a:	4b19      	ldr	r3, [pc, #100]	; (25b0 <tvout_init+0x11c>)
    254c:	69db      	ldr	r3, [r3, #28]
    254e:	f043 0302 	orr.w	r3, r3, #2
    2552:	61d3      	str	r3, [r2, #28]
    2554:	4b19      	ldr	r3, [pc, #100]	; (25bc <tvout_init+0x128>)
    2556:	f246 0278 	movw	r2, #24696	; 0x6078
    255a:	61da      	str	r2, [r3, #28]
    255c:	4b17      	ldr	r3, [pc, #92]	; (25bc <tvout_init+0x128>)
    255e:	f44f 7240 	mov.w	r2, #768	; 0x300
    2562:	621a      	str	r2, [r3, #32]
    2564:	4b15      	ldr	r3, [pc, #84]	; (25bc <tvout_init+0x128>)
    2566:	2284      	movs	r2, #132	; 0x84
    2568:	601a      	str	r2, [r3, #0]
    256a:	4b14      	ldr	r3, [pc, #80]	; (25bc <tvout_init+0x128>)
    256c:	2213      	movs	r2, #19
    256e:	62da      	str	r2, [r3, #44]	; 0x2c
    2570:	4b12      	ldr	r3, [pc, #72]	; (25bc <tvout_init+0x128>)
    2572:	220a      	movs	r2, #10
    2574:	63da      	str	r2, [r3, #60]	; 0x3c
    2576:	4b11      	ldr	r3, [pc, #68]	; (25bc <tvout_init+0x128>)
    2578:	220a      	movs	r2, #10
    257a:	641a      	str	r2, [r3, #64]	; 0x40
    257c:	4a0f      	ldr	r2, [pc, #60]	; (25bc <tvout_init+0x128>)
    257e:	4b0f      	ldr	r3, [pc, #60]	; (25bc <tvout_init+0x128>)
    2580:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    2582:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    2586:	6453      	str	r3, [r2, #68]	; 0x44
    2588:	4a0c      	ldr	r2, [pc, #48]	; (25bc <tvout_init+0x128>)
    258a:	4b0c      	ldr	r3, [pc, #48]	; (25bc <tvout_init+0x128>)
    258c:	695b      	ldr	r3, [r3, #20]
    258e:	f043 0301 	orr.w	r3, r3, #1
    2592:	6153      	str	r3, [r2, #20]
    2594:	4b09      	ldr	r3, [pc, #36]	; (25bc <tvout_init+0x128>)
    2596:	2200      	movs	r2, #0
    2598:	611a      	str	r2, [r3, #16]
    259a:	4a08      	ldr	r2, [pc, #32]	; (25bc <tvout_init+0x128>)
    259c:	4b07      	ldr	r3, [pc, #28]	; (25bc <tvout_init+0x128>)
    259e:	681b      	ldr	r3, [r3, #0]
    25a0:	f043 0301 	orr.w	r3, r3, #1
    25a4:	6013      	str	r3, [r2, #0]
    25a6:	bf00      	nop
    25a8:	bd80      	pop	{r7, pc}
    25aa:	bf00      	nop
    25ac:	40010800 	.word	0x40010800
    25b0:	40021000 	.word	0x40021000
    25b4:	40012c00 	.word	0x40012c00
    25b8:	40010c00 	.word	0x40010c00
    25bc:	40000400 	.word	0x40000400

000025c0 <TV_OUT_handler>:
    25c0:	4668      	mov	r0, sp
    25c2:	f020 0107 	bic.w	r1, r0, #7
    25c6:	468d      	mov	sp, r1
    25c8:	b411      	push	{r0, r4}
    25ca:	4a2e      	ldr	r2, [pc, #184]	; (2684 <TV_OUT_handler+0xc4>)
    25cc:	6a13      	ldr	r3, [r2, #32]
    25ce:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    25d2:	6213      	str	r3, [r2, #32]
    25d4:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    25d8:	6a53      	ldr	r3, [r2, #36]	; 0x24
    25da:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    25de:	d3fb      	bcc.n	25d8 <TV_OUT_handler+0x18>
    25e0:	4a28      	ldr	r2, [pc, #160]	; (2684 <TV_OUT_handler+0xc4>)
    25e2:	6a13      	ldr	r3, [r2, #32]
    25e4:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    25e8:	6213      	str	r3, [r2, #32]
    25ea:	4b27      	ldr	r3, [pc, #156]	; (2688 <TV_OUT_handler+0xc8>)
    25ec:	881b      	ldrh	r3, [r3, #0]
    25ee:	f013 0f04 	tst.w	r3, #4
    25f2:	d03f      	beq.n	2674 <TV_OUT_handler+0xb4>
    25f4:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    25f8:	6a53      	ldr	r3, [r2, #36]	; 0x24
    25fa:	f5b3 6f86 	cmp.w	r3, #1072	; 0x430
    25fe:	d9fb      	bls.n	25f8 <TV_OUT_handler+0x38>
    2600:	4b22      	ldr	r3, [pc, #136]	; (268c <TV_OUT_handler+0xcc>)
    2602:	881b      	ldrh	r3, [r3, #0]
    2604:	f3c3 034e 	ubfx	r3, r3, #1, #15
    2608:	4a21      	ldr	r2, [pc, #132]	; (2690 <TV_OUT_handler+0xd0>)
    260a:	215a      	movs	r1, #90	; 0x5a
    260c:	fb01 2303 	mla	r3, r1, r3, r2
    2610:	491c      	ldr	r1, [pc, #112]	; (2684 <TV_OUT_handler+0xc4>)
    2612:	6a08      	ldr	r0, [r1, #32]
    2614:	4a1f      	ldr	r2, [pc, #124]	; (2694 <TV_OUT_handler+0xd4>)
    2616:	6814      	ldr	r4, [r2, #0]
    2618:	4a1f      	ldr	r2, [pc, #124]	; (2698 <TV_OUT_handler+0xd8>)
    261a:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    261e:	4302      	orrs	r2, r0
    2620:	620a      	str	r2, [r1, #32]
    2622:	f103 005a 	add.w	r0, r3, #90	; 0x5a
    2626:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    262a:	310c      	adds	r1, #12
    262c:	781a      	ldrb	r2, [r3, #0]
    262e:	0912      	lsrs	r2, r2, #4
    2630:	800a      	strh	r2, [r1, #0]
    2632:	bf00      	nop
    2634:	bf00      	nop
    2636:	bf00      	nop
    2638:	bf00      	nop
    263a:	bf00      	nop
    263c:	bf00      	nop
    263e:	bf00      	nop
    2640:	bf00      	nop
    2642:	bf00      	nop
    2644:	bf00      	nop
    2646:	bf00      	nop
    2648:	f813 2b01 	ldrb.w	r2, [r3], #1
    264c:	f002 020f 	and.w	r2, r2, #15
    2650:	800a      	strh	r2, [r1, #0]
    2652:	bf00      	nop
    2654:	bf00      	nop
    2656:	bf00      	nop
    2658:	bf00      	nop
    265a:	bf00      	nop
    265c:	bf00      	nop
    265e:	bf00      	nop
    2660:	4298      	cmp	r0, r3
    2662:	d1e3      	bne.n	262c <TV_OUT_handler+0x6c>
    2664:	2200      	movs	r2, #0
    2666:	4b0d      	ldr	r3, [pc, #52]	; (269c <TV_OUT_handler+0xdc>)
    2668:	60da      	str	r2, [r3, #12]
    266a:	4a06      	ldr	r2, [pc, #24]	; (2684 <TV_OUT_handler+0xc4>)
    266c:	6a13      	ldr	r3, [r2, #32]
    266e:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    2672:	6213      	str	r3, [r2, #32]
    2674:	4a0a      	ldr	r2, [pc, #40]	; (26a0 <TV_OUT_handler+0xe0>)
    2676:	6913      	ldr	r3, [r2, #16]
    2678:	f023 0304 	bic.w	r3, r3, #4
    267c:	6113      	str	r3, [r2, #16]
    267e:	bc11      	pop	{r0, r4}
    2680:	4685      	mov	sp, r0
    2682:	4770      	bx	lr
    2684:	40000400 	.word	0x40000400
    2688:	2000046a 	.word	0x2000046a
    268c:	2000046c 	.word	0x2000046c
    2690:	20000470 	.word	0x20000470
    2694:	20000058 	.word	0x20000058
    2698:	00002d1c 	.word	0x00002d1c
    269c:	40010800 	.word	0x40010800
    26a0:	40012c00 	.word	0x40012c00

000026a4 <TV_SYNC_handler>:
    26a4:	4668      	mov	r0, sp
    26a6:	f020 0107 	bic.w	r1, r0, #7
    26aa:	468d      	mov	sp, r1
    26ac:	b401      	push	{r0}
    26ae:	4a79      	ldr	r2, [pc, #484]	; (2894 <TV_SYNC_handler+0x1f0>)
    26b0:	8813      	ldrh	r3, [r2, #0]
    26b2:	3301      	adds	r3, #1
    26b4:	b29b      	uxth	r3, r3
    26b6:	8013      	strh	r3, [r2, #0]
    26b8:	4b77      	ldr	r3, [pc, #476]	; (2898 <TV_SYNC_handler+0x1f4>)
    26ba:	881b      	ldrh	r3, [r3, #0]
    26bc:	b29b      	uxth	r3, r3
    26be:	2b06      	cmp	r3, #6
    26c0:	f200 808d 	bhi.w	27de <TV_SYNC_handler+0x13a>
    26c4:	e8df f013 	tbh	[pc, r3, lsl #1]
    26c8:	00290007 	.word	0x00290007
    26cc:	006b0049 	.word	0x006b0049
    26d0:	00a70093 	.word	0x00a70093
    26d4:	00be      	.short	0x00be
    26d6:	4b71      	ldr	r3, [pc, #452]	; (289c <TV_SYNC_handler+0x1f8>)
    26d8:	881b      	ldrh	r3, [r3, #0]
    26da:	b29b      	uxth	r3, r3
    26dc:	b18b      	cbz	r3, 2702 <TV_SYNC_handler+0x5e>
    26de:	4a6f      	ldr	r2, [pc, #444]	; (289c <TV_SYNC_handler+0x1f8>)
    26e0:	8813      	ldrh	r3, [r2, #0]
    26e2:	3301      	adds	r3, #1
    26e4:	b29b      	uxth	r3, r3
    26e6:	8013      	strh	r3, [r2, #0]
    26e8:	8813      	ldrh	r3, [r2, #0]
    26ea:	b29b      	uxth	r3, r3
    26ec:	2b06      	cmp	r3, #6
    26ee:	d176      	bne.n	27de <TV_SYNC_handler+0x13a>
    26f0:	2200      	movs	r2, #0
    26f2:	4b6a      	ldr	r3, [pc, #424]	; (289c <TV_SYNC_handler+0x1f8>)
    26f4:	801a      	strh	r2, [r3, #0]
    26f6:	4a68      	ldr	r2, [pc, #416]	; (2898 <TV_SYNC_handler+0x1f4>)
    26f8:	8813      	ldrh	r3, [r2, #0]
    26fa:	3301      	adds	r3, #1
    26fc:	b29b      	uxth	r3, r3
    26fe:	8013      	strh	r3, [r2, #0]
    2700:	e06d      	b.n	27de <TV_SYNC_handler+0x13a>
    2702:	4b67      	ldr	r3, [pc, #412]	; (28a0 <TV_SYNC_handler+0x1fc>)
    2704:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2708:	62da      	str	r2, [r3, #44]	; 0x2c
    270a:	22a4      	movs	r2, #164	; 0xa4
    270c:	635a      	str	r2, [r3, #52]	; 0x34
    270e:	4a63      	ldr	r2, [pc, #396]	; (289c <TV_SYNC_handler+0x1f8>)
    2710:	8813      	ldrh	r3, [r2, #0]
    2712:	3301      	adds	r3, #1
    2714:	b29b      	uxth	r3, r3
    2716:	8013      	strh	r3, [r2, #0]
    2718:	e061      	b.n	27de <TV_SYNC_handler+0x13a>
    271a:	4b60      	ldr	r3, [pc, #384]	; (289c <TV_SYNC_handler+0x1f8>)
    271c:	881b      	ldrh	r3, [r3, #0]
    271e:	b29b      	uxth	r3, r3
    2720:	b18b      	cbz	r3, 2746 <TV_SYNC_handler+0xa2>
    2722:	4a5e      	ldr	r2, [pc, #376]	; (289c <TV_SYNC_handler+0x1f8>)
    2724:	8813      	ldrh	r3, [r2, #0]
    2726:	3301      	adds	r3, #1
    2728:	b29b      	uxth	r3, r3
    272a:	8013      	strh	r3, [r2, #0]
    272c:	8813      	ldrh	r3, [r2, #0]
    272e:	b29b      	uxth	r3, r3
    2730:	2b06      	cmp	r3, #6
    2732:	d154      	bne.n	27de <TV_SYNC_handler+0x13a>
    2734:	2200      	movs	r2, #0
    2736:	4b59      	ldr	r3, [pc, #356]	; (289c <TV_SYNC_handler+0x1f8>)
    2738:	801a      	strh	r2, [r3, #0]
    273a:	4a57      	ldr	r2, [pc, #348]	; (2898 <TV_SYNC_handler+0x1f4>)
    273c:	8813      	ldrh	r3, [r2, #0]
    273e:	3301      	adds	r3, #1
    2740:	b29b      	uxth	r3, r3
    2742:	8013      	strh	r3, [r2, #0]
    2744:	e04b      	b.n	27de <TV_SYNC_handler+0x13a>
    2746:	f240 7294 	movw	r2, #1940	; 0x794
    274a:	4b55      	ldr	r3, [pc, #340]	; (28a0 <TV_SYNC_handler+0x1fc>)
    274c:	635a      	str	r2, [r3, #52]	; 0x34
    274e:	4a53      	ldr	r2, [pc, #332]	; (289c <TV_SYNC_handler+0x1f8>)
    2750:	8813      	ldrh	r3, [r2, #0]
    2752:	3301      	adds	r3, #1
    2754:	b29b      	uxth	r3, r3
    2756:	8013      	strh	r3, [r2, #0]
    2758:	e041      	b.n	27de <TV_SYNC_handler+0x13a>
    275a:	4b50      	ldr	r3, [pc, #320]	; (289c <TV_SYNC_handler+0x1f8>)
    275c:	881b      	ldrh	r3, [r3, #0]
    275e:	b29b      	uxth	r3, r3
    2760:	b153      	cbz	r3, 2778 <TV_SYNC_handler+0xd4>
    2762:	4b4e      	ldr	r3, [pc, #312]	; (289c <TV_SYNC_handler+0x1f8>)
    2764:	881b      	ldrh	r3, [r3, #0]
    2766:	b29b      	uxth	r3, r3
    2768:	2b06      	cmp	r3, #6
    276a:	d00e      	beq.n	278a <TV_SYNC_handler+0xe6>
    276c:	4a4b      	ldr	r2, [pc, #300]	; (289c <TV_SYNC_handler+0x1f8>)
    276e:	8813      	ldrh	r3, [r2, #0]
    2770:	3301      	adds	r3, #1
    2772:	b29b      	uxth	r3, r3
    2774:	8013      	strh	r3, [r2, #0]
    2776:	e032      	b.n	27de <TV_SYNC_handler+0x13a>
    2778:	22a4      	movs	r2, #164	; 0xa4
    277a:	4b49      	ldr	r3, [pc, #292]	; (28a0 <TV_SYNC_handler+0x1fc>)
    277c:	635a      	str	r2, [r3, #52]	; 0x34
    277e:	4a47      	ldr	r2, [pc, #284]	; (289c <TV_SYNC_handler+0x1f8>)
    2780:	8813      	ldrh	r3, [r2, #0]
    2782:	3301      	adds	r3, #1
    2784:	b29b      	uxth	r3, r3
    2786:	8013      	strh	r3, [r2, #0]
    2788:	e029      	b.n	27de <TV_SYNC_handler+0x13a>
    278a:	4a43      	ldr	r2, [pc, #268]	; (2898 <TV_SYNC_handler+0x1f4>)
    278c:	8813      	ldrh	r3, [r2, #0]
    278e:	3301      	adds	r3, #1
    2790:	b29b      	uxth	r3, r3
    2792:	8013      	strh	r3, [r2, #0]
    2794:	4b43      	ldr	r3, [pc, #268]	; (28a4 <TV_SYNC_handler+0x200>)
    2796:	881b      	ldrh	r3, [r3, #0]
    2798:	f013 0f01 	tst.w	r3, #1
    279c:	d01f      	beq.n	27de <TV_SYNC_handler+0x13a>
    279e:	4a40      	ldr	r2, [pc, #256]	; (28a0 <TV_SYNC_handler+0x1fc>)
    27a0:	f241 13c5 	movw	r3, #4549	; 0x11c5
    27a4:	62d3      	str	r3, [r2, #44]	; 0x2c
    27a6:	f44f 73a8 	mov.w	r3, #336	; 0x150
    27aa:	6353      	str	r3, [r2, #52]	; 0x34
    27ac:	493d      	ldr	r1, [pc, #244]	; (28a4 <TV_SYNC_handler+0x200>)
    27ae:	880b      	ldrh	r3, [r1, #0]
    27b0:	f023 0302 	bic.w	r3, r3, #2
    27b4:	041b      	lsls	r3, r3, #16
    27b6:	0c1b      	lsrs	r3, r3, #16
    27b8:	800b      	strh	r3, [r1, #0]
    27ba:	4936      	ldr	r1, [pc, #216]	; (2894 <TV_SYNC_handler+0x1f0>)
    27bc:	880b      	ldrh	r3, [r1, #0]
    27be:	f3c3 038d 	ubfx	r3, r3, #2, #14
    27c2:	800b      	strh	r3, [r1, #0]
    27c4:	4934      	ldr	r1, [pc, #208]	; (2898 <TV_SYNC_handler+0x1f4>)
    27c6:	880b      	ldrh	r3, [r1, #0]
    27c8:	3301      	adds	r3, #1
    27ca:	b29b      	uxth	r3, r3
    27cc:	800b      	strh	r3, [r1, #0]
    27ce:	6913      	ldr	r3, [r2, #16]
    27d0:	f023 0304 	bic.w	r3, r3, #4
    27d4:	6113      	str	r3, [r2, #16]
    27d6:	68d3      	ldr	r3, [r2, #12]
    27d8:	f043 0304 	orr.w	r3, r3, #4
    27dc:	60d3      	str	r3, [r2, #12]
    27de:	4a30      	ldr	r2, [pc, #192]	; (28a0 <TV_SYNC_handler+0x1fc>)
    27e0:	6913      	ldr	r3, [r2, #16]
    27e2:	f023 0301 	bic.w	r3, r3, #1
    27e6:	6113      	str	r3, [r2, #16]
    27e8:	bc01      	pop	{r0}
    27ea:	4685      	mov	sp, r0
    27ec:	4770      	bx	lr
    27ee:	4b29      	ldr	r3, [pc, #164]	; (2894 <TV_SYNC_handler+0x1f0>)
    27f0:	881b      	ldrh	r3, [r3, #0]
    27f2:	b29b      	uxth	r3, r3
    27f4:	2b16      	cmp	r3, #22
    27f6:	d1f2      	bne.n	27de <TV_SYNC_handler+0x13a>
    27f8:	4a27      	ldr	r2, [pc, #156]	; (2898 <TV_SYNC_handler+0x1f4>)
    27fa:	8813      	ldrh	r3, [r2, #0]
    27fc:	3301      	adds	r3, #1
    27fe:	b29b      	uxth	r3, r3
    2800:	8013      	strh	r3, [r2, #0]
    2802:	2200      	movs	r2, #0
    2804:	4b25      	ldr	r3, [pc, #148]	; (289c <TV_SYNC_handler+0x1f8>)
    2806:	801a      	strh	r2, [r3, #0]
    2808:	4a26      	ldr	r2, [pc, #152]	; (28a4 <TV_SYNC_handler+0x200>)
    280a:	8813      	ldrh	r3, [r2, #0]
    280c:	b29b      	uxth	r3, r3
    280e:	f043 0304 	orr.w	r3, r3, #4
    2812:	8013      	strh	r3, [r2, #0]
    2814:	e7e3      	b.n	27de <TV_SYNC_handler+0x13a>
    2816:	4a21      	ldr	r2, [pc, #132]	; (289c <TV_SYNC_handler+0x1f8>)
    2818:	8813      	ldrh	r3, [r2, #0]
    281a:	3301      	adds	r3, #1
    281c:	b29b      	uxth	r3, r3
    281e:	8013      	strh	r3, [r2, #0]
    2820:	4b1c      	ldr	r3, [pc, #112]	; (2894 <TV_SYNC_handler+0x1f0>)
    2822:	881b      	ldrh	r3, [r3, #0]
    2824:	b29b      	uxth	r3, r3
    2826:	2bf6      	cmp	r3, #246	; 0xf6
    2828:	d1d9      	bne.n	27de <TV_SYNC_handler+0x13a>
    282a:	4a1b      	ldr	r2, [pc, #108]	; (2898 <TV_SYNC_handler+0x1f4>)
    282c:	8813      	ldrh	r3, [r2, #0]
    282e:	3301      	adds	r3, #1
    2830:	b29b      	uxth	r3, r3
    2832:	8013      	strh	r3, [r2, #0]
    2834:	4a1b      	ldr	r2, [pc, #108]	; (28a4 <TV_SYNC_handler+0x200>)
    2836:	8813      	ldrh	r3, [r2, #0]
    2838:	f023 0304 	bic.w	r3, r3, #4
    283c:	041b      	lsls	r3, r3, #16
    283e:	0c1b      	lsrs	r3, r3, #16
    2840:	8013      	strh	r3, [r2, #0]
    2842:	e7cc      	b.n	27de <TV_SYNC_handler+0x13a>
    2844:	4b13      	ldr	r3, [pc, #76]	; (2894 <TV_SYNC_handler+0x1f0>)
    2846:	881b      	ldrh	r3, [r3, #0]
    2848:	b29b      	uxth	r3, r3
    284a:	f240 1207 	movw	r2, #263	; 0x107
    284e:	4293      	cmp	r3, r2
    2850:	d1c5      	bne.n	27de <TV_SYNC_handler+0x13a>
    2852:	4b14      	ldr	r3, [pc, #80]	; (28a4 <TV_SYNC_handler+0x200>)
    2854:	881b      	ldrh	r3, [r3, #0]
    2856:	f013 0f01 	tst.w	r3, #1
    285a:	d003      	beq.n	2864 <TV_SYNC_handler+0x1c0>
    285c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2860:	4b0f      	ldr	r3, [pc, #60]	; (28a0 <TV_SYNC_handler+0x1fc>)
    2862:	62da      	str	r2, [r3, #44]	; 0x2c
    2864:	4a0f      	ldr	r2, [pc, #60]	; (28a4 <TV_SYNC_handler+0x200>)
    2866:	8813      	ldrh	r3, [r2, #0]
    2868:	b29b      	uxth	r3, r3
    286a:	f083 0301 	eor.w	r3, r3, #1
    286e:	8013      	strh	r3, [r2, #0]
    2870:	8813      	ldrh	r3, [r2, #0]
    2872:	b29b      	uxth	r3, r3
    2874:	f043 0302 	orr.w	r3, r3, #2
    2878:	8013      	strh	r3, [r2, #0]
    287a:	2300      	movs	r3, #0
    287c:	4a05      	ldr	r2, [pc, #20]	; (2894 <TV_SYNC_handler+0x1f0>)
    287e:	8013      	strh	r3, [r2, #0]
    2880:	4a06      	ldr	r2, [pc, #24]	; (289c <TV_SYNC_handler+0x1f8>)
    2882:	8013      	strh	r3, [r2, #0]
    2884:	4a04      	ldr	r2, [pc, #16]	; (2898 <TV_SYNC_handler+0x1f4>)
    2886:	8013      	strh	r3, [r2, #0]
    2888:	4a05      	ldr	r2, [pc, #20]	; (28a0 <TV_SYNC_handler+0x1fc>)
    288a:	68d3      	ldr	r3, [r2, #12]
    288c:	f023 0304 	bic.w	r3, r3, #4
    2890:	60d3      	str	r3, [r2, #12]
    2892:	e7a4      	b.n	27de <TV_SYNC_handler+0x13a>
    2894:	2000046e 	.word	0x2000046e
    2898:	20000468 	.word	0x20000468
    289c:	2000046c 	.word	0x2000046c
    28a0:	40012c00 	.word	0x40012c00
    28a4:	2000046a 	.word	0x2000046a
