
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 d5 25 00 00     C...I...O....%..
      20:	d5 25 00 00 d5 25 00 00 d5 25 00 00 55 02 00 00     .%...%...%..U...
      30:	d5 25 00 00 d5 25 00 00 5b 02 00 00 bd 26 00 00     .%...%..[....&..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 0d 23 00 00     g...m...y....#..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 d5 25 00 00 d5 25 00 00 b5 02 00 00     .....%...%......
      80:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..
      90:	d5 25 00 00 d5 25 00 00 d5 25 00 00 bb 02 00 00     .%...%...%......
      a0:	d5 25 00 00 0d 29 00 00 d5 25 00 00 21 28 00 00     .%...)...%..!(..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 d5 25 00 00     .............%..
      c0:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..
      d0:	d5 25 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .%..............
      e0:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..
      f0:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..
     100:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..
     110:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..
     120:	d5 25 00 00 d5 25 00 00 d5 25 00 00 d5 25 00 00     .%...%...%...%..

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
     1a0:	20002c3c 	.word	0x20002c3c
     1a4:	00003000 	.word	0x00003000
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
     1dc:	f002 fa02 	bl	25e4 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 f9f6 	bl	25e4 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 f9ea 	bl	25e4 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f9e5 	bl	25e4 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002fa8 	.word	0x00002fa8
     230:	00002fc0 	.word	0x00002fc0
     234:	00002fcc 	.word	0x00002fcc
     238:	00002fdc 	.word	0x00002fdc

0000023c <NMI_handler>:
     23c:	f002 f9ca 	bl	25d4 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 f9c7 	bl	25d4 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 f9c4 	bl	25d4 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 f9c1 	bl	25d4 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 f9be 	bl	25d4 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 f9bb 	bl	25d4 <reset_mcu>
     25e:	bf00      	nop
     260:	f002 f9b8 	bl	25d4 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 f9b5 	bl	25d4 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 f9b2 	bl	25d4 <reset_mcu>
     270:	bf00      	nop
     272:	f002 f9af 	bl	25d4 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 f9ac 	bl	25d4 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 f9a9 	bl	25d4 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 f9a6 	bl	25d4 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 f9a3 	bl	25d4 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 f9a0 	bl	25d4 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 f99d 	bl	25d4 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 f99a 	bl	25d4 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 f997 	bl	25d4 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 f994 	bl	25d4 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 f991 	bl	25d4 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 f98e 	bl	25d4 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 f98b 	bl	25d4 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 f988 	bl	25d4 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 f985 	bl	25d4 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 f982 	bl	25d4 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 f97f 	bl	25d4 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f002 f97c 	bl	25d4 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f002 f979 	bl	25d4 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f002 f976 	bl	25d4 <reset_mcu>
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
     e48:	00002b6c 	.word	0x00002b6c
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
    1054:	2000046c 	.word	0x2000046c

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
    10dc:	2000046c 	.word	0x2000046c

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
    11ac:	2000046c 	.word	0x2000046c
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
    1228:	2000046c 	.word	0x2000046c

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
    1284:	2000046c 	.word	0x2000046c

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
    136e:	f001 f97d 	bl	266c <config_systicks>
    1372:	4b56      	ldr	r3, [pc, #344]	; (14cc <main+0x168>)
    1374:	f640 021d 	movw	r2, #2077	; 0x81d
    1378:	619a      	str	r2, [r3, #24]
    137a:	2206      	movs	r2, #6
    137c:	210d      	movs	r1, #13
    137e:	4854      	ldr	r0, [pc, #336]	; (14d0 <main+0x16c>)
    1380:	f7ff fc37 	bl	bf2 <config_pin>
    1384:	4a52      	ldr	r2, [pc, #328]	; (14d0 <main+0x16c>)
    1386:	4b52      	ldr	r3, [pc, #328]	; (14d0 <main+0x16c>)
    1388:	68db      	ldr	r3, [r3, #12]
    138a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    138e:	60d3      	str	r3, [r2, #12]
    1390:	f001 f9ac 	bl	26ec <tvout_init>
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
    13e0:	4b3c      	ldr	r3, [pc, #240]	; (14d4 <main+0x170>)
    13e2:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    13e6:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    13ea:	210a      	movs	r1, #10
    13ec:	4618      	mov	r0, r3
    13ee:	f7ff fd56 	bl	e9e <gfx_print_int>
    13f2:	210a      	movs	r1, #10
    13f4:	2000      	movs	r0, #0
    13f6:	f7ff fca7 	bl	d48 <gfx_locate>
    13fa:	4837      	ldr	r0, [pc, #220]	; (14d8 <main+0x174>)
    13fc:	f7ff fd2c 	bl	e58 <gfx_print>
    1400:	4b36      	ldr	r3, [pc, #216]	; (14dc <main+0x178>)
    1402:	781b      	ldrb	r3, [r3, #0]
    1404:	210a      	movs	r1, #10
    1406:	4618      	mov	r0, r3
    1408:	f7ff fd49 	bl	e9e <gfx_print_int>
    140c:	2300      	movs	r3, #0
    140e:	613b      	str	r3, [r7, #16]
    1410:	693b      	ldr	r3, [r7, #16]
    1412:	617b      	str	r3, [r7, #20]
    1414:	2301      	movs	r3, #1
    1416:	60bb      	str	r3, [r7, #8]
    1418:	68bb      	ldr	r3, [r7, #8]
    141a:	60fb      	str	r3, [r7, #12]
    141c:	4b30      	ldr	r3, [pc, #192]	; (14e0 <main+0x17c>)
    141e:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
    1422:	601a      	str	r2, [r3, #0]
    1424:	4b2f      	ldr	r3, [pc, #188]	; (14e4 <main+0x180>)
    1426:	9300      	str	r3, [sp, #0]
    1428:	2308      	movs	r3, #8
    142a:	2208      	movs	r2, #8
    142c:	6939      	ldr	r1, [r7, #16]
    142e:	6978      	ldr	r0, [r7, #20]
    1430:	f7ff ff2a 	bl	1288 <gfx_sprite>
    1434:	4b2c      	ldr	r3, [pc, #176]	; (14e8 <main+0x184>)
    1436:	681b      	ldr	r3, [r3, #0]
    1438:	330a      	adds	r3, #10
    143a:	603b      	str	r3, [r7, #0]
    143c:	bf00      	nop
    143e:	4b2a      	ldr	r3, [pc, #168]	; (14e8 <main+0x184>)
    1440:	681a      	ldr	r2, [r3, #0]
    1442:	683b      	ldr	r3, [r7, #0]
    1444:	429a      	cmp	r2, r3
    1446:	d3fa      	bcc.n	143e <main+0xda>
    1448:	f001 fb62 	bl	2b10 <frame_sync>
    144c:	4b25      	ldr	r3, [pc, #148]	; (14e4 <main+0x180>)
    144e:	9300      	str	r3, [sp, #0]
    1450:	2308      	movs	r3, #8
    1452:	2208      	movs	r2, #8
    1454:	6939      	ldr	r1, [r7, #16]
    1456:	6978      	ldr	r0, [r7, #20]
    1458:	f7ff ff16 	bl	1288 <gfx_sprite>
    145c:	697a      	ldr	r2, [r7, #20]
    145e:	68fb      	ldr	r3, [r7, #12]
    1460:	4413      	add	r3, r2
    1462:	617b      	str	r3, [r7, #20]
    1464:	697b      	ldr	r3, [r7, #20]
    1466:	f113 0f08 	cmn.w	r3, #8
    146a:	db02      	blt.n	1472 <main+0x10e>
    146c:	697b      	ldr	r3, [r7, #20]
    146e:	2bb3      	cmp	r3, #179	; 0xb3
    1470:	dd02      	ble.n	1478 <main+0x114>
    1472:	68fb      	ldr	r3, [r7, #12]
    1474:	425b      	negs	r3, r3
    1476:	60fb      	str	r3, [r7, #12]
    1478:	693a      	ldr	r2, [r7, #16]
    147a:	68bb      	ldr	r3, [r7, #8]
    147c:	4413      	add	r3, r2
    147e:	613b      	str	r3, [r7, #16]
    1480:	693b      	ldr	r3, [r7, #16]
    1482:	f113 0f08 	cmn.w	r3, #8
    1486:	db02      	blt.n	148e <main+0x12a>
    1488:	693b      	ldr	r3, [r7, #16]
    148a:	2b6f      	cmp	r3, #111	; 0x6f
    148c:	dd02      	ble.n	1494 <main+0x130>
    148e:	68bb      	ldr	r3, [r7, #8]
    1490:	425b      	negs	r3, r3
    1492:	60bb      	str	r3, [r7, #8]
    1494:	4b12      	ldr	r3, [pc, #72]	; (14e0 <main+0x17c>)
    1496:	681b      	ldr	r3, [r3, #0]
    1498:	2b00      	cmp	r3, #0
    149a:	d1c3      	bne.n	1424 <main+0xc0>
    149c:	79bb      	ldrb	r3, [r7, #6]
    149e:	3301      	adds	r3, #1
    14a0:	71bb      	strb	r3, [r7, #6]
    14a2:	79bb      	ldrb	r3, [r7, #6]
    14a4:	4618      	mov	r0, r3
    14a6:	f001 fb43 	bl	2b30 <set_palette>
    14aa:	2112      	movs	r1, #18
    14ac:	2000      	movs	r0, #0
    14ae:	f7ff fc4b 	bl	d48 <gfx_locate>
    14b2:	79bb      	ldrb	r3, [r7, #6]
    14b4:	f003 0303 	and.w	r3, r3, #3
    14b8:	210a      	movs	r1, #10
    14ba:	4618      	mov	r0, r3
    14bc:	f7ff fcef 	bl	e9e <gfx_print_int>
    14c0:	4b07      	ldr	r3, [pc, #28]	; (14e0 <main+0x17c>)
    14c2:	f241 3288 	movw	r2, #5000	; 0x1388
    14c6:	601a      	str	r2, [r3, #0]
    14c8:	e7ac      	b.n	1424 <main+0xc0>
    14ca:	bf00      	nop
    14cc:	40021000 	.word	0x40021000
    14d0:	40011000 	.word	0x40011000
    14d4:	20002c40 	.word	0x20002c40
    14d8:	00002eb4 	.word	0x00002eb4
    14dc:	20002bcc 	.word	0x20002bcc
    14e0:	20000460 	.word	0x20000460
    14e4:	00002e94 	.word	0x00002e94
    14e8:	2000045c 	.word	0x2000045c

000014ec <enable_interrupt>:
    14ec:	b480      	push	{r7}
    14ee:	b083      	sub	sp, #12
    14f0:	af00      	add	r7, sp, #0
    14f2:	6078      	str	r0, [r7, #4]
    14f4:	687b      	ldr	r3, [r7, #4]
    14f6:	2b3b      	cmp	r3, #59	; 0x3b
    14f8:	dc17      	bgt.n	152a <enable_interrupt+0x3e>
    14fa:	687b      	ldr	r3, [r7, #4]
    14fc:	115b      	asrs	r3, r3, #5
    14fe:	009b      	lsls	r3, r3, #2
    1500:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1504:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1508:	687a      	ldr	r2, [r7, #4]
    150a:	1152      	asrs	r2, r2, #5
    150c:	0092      	lsls	r2, r2, #2
    150e:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1512:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    1516:	6812      	ldr	r2, [r2, #0]
    1518:	6879      	ldr	r1, [r7, #4]
    151a:	f001 011f 	and.w	r1, r1, #31
    151e:	2001      	movs	r0, #1
    1520:	fa00 f101 	lsl.w	r1, r0, r1
    1524:	430a      	orrs	r2, r1
    1526:	601a      	str	r2, [r3, #0]
    1528:	e000      	b.n	152c <enable_interrupt+0x40>
    152a:	bf00      	nop
    152c:	370c      	adds	r7, #12
    152e:	46bd      	mov	sp, r7
    1530:	bc80      	pop	{r7}
    1532:	4770      	bx	lr

00001534 <disable_interrupt>:
    1534:	b480      	push	{r7}
    1536:	b083      	sub	sp, #12
    1538:	af00      	add	r7, sp, #0
    153a:	6078      	str	r0, [r7, #4]
    153c:	687b      	ldr	r3, [r7, #4]
    153e:	2b3b      	cmp	r3, #59	; 0x3b
    1540:	dc0c      	bgt.n	155c <disable_interrupt+0x28>
    1542:	687b      	ldr	r3, [r7, #4]
    1544:	115b      	asrs	r3, r3, #5
    1546:	009a      	lsls	r2, r3, #2
    1548:	4b07      	ldr	r3, [pc, #28]	; (1568 <disable_interrupt+0x34>)
    154a:	4413      	add	r3, r2
    154c:	687a      	ldr	r2, [r7, #4]
    154e:	f002 021f 	and.w	r2, r2, #31
    1552:	2101      	movs	r1, #1
    1554:	fa01 f202 	lsl.w	r2, r1, r2
    1558:	601a      	str	r2, [r3, #0]
    155a:	e000      	b.n	155e <disable_interrupt+0x2a>
    155c:	bf00      	nop
    155e:	370c      	adds	r7, #12
    1560:	46bd      	mov	sp, r7
    1562:	bc80      	pop	{r7}
    1564:	4770      	bx	lr
    1566:	bf00      	nop
    1568:	e000e180 	.word	0xe000e180

0000156c <get_pending>:
    156c:	b480      	push	{r7}
    156e:	b083      	sub	sp, #12
    1570:	af00      	add	r7, sp, #0
    1572:	6078      	str	r0, [r7, #4]
    1574:	687b      	ldr	r3, [r7, #4]
    1576:	2b3b      	cmp	r3, #59	; 0x3b
    1578:	dd01      	ble.n	157e <get_pending+0x12>
    157a:	2300      	movs	r3, #0
    157c:	e00c      	b.n	1598 <get_pending+0x2c>
    157e:	687b      	ldr	r3, [r7, #4]
    1580:	115b      	asrs	r3, r3, #5
    1582:	009a      	lsls	r2, r3, #2
    1584:	4b07      	ldr	r3, [pc, #28]	; (15a4 <get_pending+0x38>)
    1586:	4413      	add	r3, r2
    1588:	681b      	ldr	r3, [r3, #0]
    158a:	687a      	ldr	r2, [r7, #4]
    158c:	f002 021f 	and.w	r2, r2, #31
    1590:	2101      	movs	r1, #1
    1592:	fa01 f202 	lsl.w	r2, r1, r2
    1596:	4013      	ands	r3, r2
    1598:	4618      	mov	r0, r3
    159a:	370c      	adds	r7, #12
    159c:	46bd      	mov	sp, r7
    159e:	bc80      	pop	{r7}
    15a0:	4770      	bx	lr
    15a2:	bf00      	nop
    15a4:	e000e280 	.word	0xe000e280

000015a8 <get_active>:
    15a8:	b480      	push	{r7}
    15aa:	b083      	sub	sp, #12
    15ac:	af00      	add	r7, sp, #0
    15ae:	6078      	str	r0, [r7, #4]
    15b0:	687b      	ldr	r3, [r7, #4]
    15b2:	2b3b      	cmp	r3, #59	; 0x3b
    15b4:	dd01      	ble.n	15ba <get_active+0x12>
    15b6:	2300      	movs	r3, #0
    15b8:	e00e      	b.n	15d8 <get_active+0x30>
    15ba:	687b      	ldr	r3, [r7, #4]
    15bc:	115b      	asrs	r3, r3, #5
    15be:	009b      	lsls	r3, r3, #2
    15c0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    15c4:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    15c8:	681b      	ldr	r3, [r3, #0]
    15ca:	687a      	ldr	r2, [r7, #4]
    15cc:	f002 021f 	and.w	r2, r2, #31
    15d0:	2101      	movs	r1, #1
    15d2:	fa01 f202 	lsl.w	r2, r1, r2
    15d6:	4013      	ands	r3, r2
    15d8:	4618      	mov	r0, r3
    15da:	370c      	adds	r7, #12
    15dc:	46bd      	mov	sp, r7
    15de:	bc80      	pop	{r7}
    15e0:	4770      	bx	lr

000015e2 <set_pending>:
    15e2:	b480      	push	{r7}
    15e4:	b083      	sub	sp, #12
    15e6:	af00      	add	r7, sp, #0
    15e8:	6078      	str	r0, [r7, #4]
    15ea:	687b      	ldr	r3, [r7, #4]
    15ec:	2b3b      	cmp	r3, #59	; 0x3b
    15ee:	dc17      	bgt.n	1620 <set_pending+0x3e>
    15f0:	687b      	ldr	r3, [r7, #4]
    15f2:	115b      	asrs	r3, r3, #5
    15f4:	009b      	lsls	r3, r3, #2
    15f6:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    15fa:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    15fe:	687a      	ldr	r2, [r7, #4]
    1600:	1152      	asrs	r2, r2, #5
    1602:	0092      	lsls	r2, r2, #2
    1604:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1608:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    160c:	6812      	ldr	r2, [r2, #0]
    160e:	6879      	ldr	r1, [r7, #4]
    1610:	f001 011f 	and.w	r1, r1, #31
    1614:	2001      	movs	r0, #1
    1616:	fa00 f101 	lsl.w	r1, r0, r1
    161a:	430a      	orrs	r2, r1
    161c:	601a      	str	r2, [r3, #0]
    161e:	e000      	b.n	1622 <set_pending+0x40>
    1620:	bf00      	nop
    1622:	370c      	adds	r7, #12
    1624:	46bd      	mov	sp, r7
    1626:	bc80      	pop	{r7}
    1628:	4770      	bx	lr

0000162a <clear_pending>:
    162a:	b480      	push	{r7}
    162c:	b083      	sub	sp, #12
    162e:	af00      	add	r7, sp, #0
    1630:	6078      	str	r0, [r7, #4]
    1632:	687b      	ldr	r3, [r7, #4]
    1634:	2b3b      	cmp	r3, #59	; 0x3b
    1636:	dc0c      	bgt.n	1652 <clear_pending+0x28>
    1638:	687b      	ldr	r3, [r7, #4]
    163a:	115b      	asrs	r3, r3, #5
    163c:	009a      	lsls	r2, r3, #2
    163e:	4b07      	ldr	r3, [pc, #28]	; (165c <clear_pending+0x32>)
    1640:	4413      	add	r3, r2
    1642:	687a      	ldr	r2, [r7, #4]
    1644:	f002 021f 	and.w	r2, r2, #31
    1648:	2101      	movs	r1, #1
    164a:	fa01 f202 	lsl.w	r2, r1, r2
    164e:	601a      	str	r2, [r3, #0]
    1650:	e000      	b.n	1654 <clear_pending+0x2a>
    1652:	bf00      	nop
    1654:	370c      	adds	r7, #12
    1656:	46bd      	mov	sp, r7
    1658:	bc80      	pop	{r7}
    165a:	4770      	bx	lr
    165c:	e000e280 	.word	0xe000e280

00001660 <set_int_priority>:
    1660:	b480      	push	{r7}
    1662:	b083      	sub	sp, #12
    1664:	af00      	add	r7, sp, #0
    1666:	6078      	str	r0, [r7, #4]
    1668:	6039      	str	r1, [r7, #0]
    166a:	687b      	ldr	r3, [r7, #4]
    166c:	2b00      	cmp	r3, #0
    166e:	db0d      	blt.n	168c <set_int_priority+0x2c>
    1670:	687b      	ldr	r3, [r7, #4]
    1672:	2b3b      	cmp	r3, #59	; 0x3b
    1674:	dc0a      	bgt.n	168c <set_int_priority+0x2c>
    1676:	687b      	ldr	r3, [r7, #4]
    1678:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    167c:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1680:	683a      	ldr	r2, [r7, #0]
    1682:	b2d2      	uxtb	r2, r2
    1684:	0112      	lsls	r2, r2, #4
    1686:	b2d2      	uxtb	r2, r2
    1688:	701a      	strb	r2, [r3, #0]
    168a:	e012      	b.n	16b2 <set_int_priority+0x52>
    168c:	687b      	ldr	r3, [r7, #4]
    168e:	2b00      	cmp	r3, #0
    1690:	da0f      	bge.n	16b2 <set_int_priority+0x52>
    1692:	687b      	ldr	r3, [r7, #4]
    1694:	f113 0f0f 	cmn.w	r3, #15
    1698:	db0b      	blt.n	16b2 <set_int_priority+0x52>
    169a:	687a      	ldr	r2, [r7, #4]
    169c:	f06f 0303 	mvn.w	r3, #3
    16a0:	1a9b      	subs	r3, r3, r2
    16a2:	461a      	mov	r2, r3
    16a4:	4b05      	ldr	r3, [pc, #20]	; (16bc <set_int_priority+0x5c>)
    16a6:	4413      	add	r3, r2
    16a8:	683a      	ldr	r2, [r7, #0]
    16aa:	b2d2      	uxtb	r2, r2
    16ac:	0112      	lsls	r2, r2, #4
    16ae:	b2d2      	uxtb	r2, r2
    16b0:	701a      	strb	r2, [r3, #0]
    16b2:	bf00      	nop
    16b4:	370c      	adds	r7, #12
    16b6:	46bd      	mov	sp, r7
    16b8:	bc80      	pop	{r7}
    16ba:	4770      	bx	lr
    16bc:	e000ed18 	.word	0xe000ed18

000016c0 <leap_year>:
    16c0:	b480      	push	{r7}
    16c2:	b083      	sub	sp, #12
    16c4:	af00      	add	r7, sp, #0
    16c6:	6078      	str	r0, [r7, #4]
    16c8:	687b      	ldr	r3, [r7, #4]
    16ca:	f003 0303 	and.w	r3, r3, #3
    16ce:	2b00      	cmp	r3, #0
    16d0:	d11a      	bne.n	1708 <leap_year+0x48>
    16d2:	687a      	ldr	r2, [r7, #4]
    16d4:	4b0f      	ldr	r3, [pc, #60]	; (1714 <leap_year+0x54>)
    16d6:	fba3 1302 	umull	r1, r3, r3, r2
    16da:	095b      	lsrs	r3, r3, #5
    16dc:	2164      	movs	r1, #100	; 0x64
    16de:	fb01 f303 	mul.w	r3, r1, r3
    16e2:	1ad3      	subs	r3, r2, r3
    16e4:	2b00      	cmp	r3, #0
    16e6:	d10d      	bne.n	1704 <leap_year+0x44>
    16e8:	687a      	ldr	r2, [r7, #4]
    16ea:	4b0a      	ldr	r3, [pc, #40]	; (1714 <leap_year+0x54>)
    16ec:	fba3 1302 	umull	r1, r3, r3, r2
    16f0:	09db      	lsrs	r3, r3, #7
    16f2:	f44f 71c8 	mov.w	r1, #400	; 0x190
    16f6:	fb01 f303 	mul.w	r3, r1, r3
    16fa:	1ad3      	subs	r3, r2, r3
    16fc:	2b00      	cmp	r3, #0
    16fe:	d001      	beq.n	1704 <leap_year+0x44>
    1700:	2300      	movs	r3, #0
    1702:	e002      	b.n	170a <leap_year+0x4a>
    1704:	2301      	movs	r3, #1
    1706:	e000      	b.n	170a <leap_year+0x4a>
    1708:	2300      	movs	r3, #0
    170a:	4618      	mov	r0, r3
    170c:	370c      	adds	r7, #12
    170e:	46bd      	mov	sp, r7
    1710:	bc80      	pop	{r7}
    1712:	4770      	bx	lr
    1714:	51eb851f 	.word	0x51eb851f

00001718 <sec_per_month>:
    1718:	b480      	push	{r7}
    171a:	b085      	sub	sp, #20
    171c:	af00      	add	r7, sp, #0
    171e:	6078      	str	r0, [r7, #4]
    1720:	6039      	str	r1, [r7, #0]
    1722:	4a0d      	ldr	r2, [pc, #52]	; (1758 <sec_per_month+0x40>)
    1724:	683b      	ldr	r3, [r7, #0]
    1726:	4413      	add	r3, r2
    1728:	781b      	ldrb	r3, [r3, #0]
    172a:	461a      	mov	r2, r3
    172c:	4b0b      	ldr	r3, [pc, #44]	; (175c <sec_per_month+0x44>)
    172e:	fb03 f302 	mul.w	r3, r3, r2
    1732:	60fb      	str	r3, [r7, #12]
    1734:	683b      	ldr	r3, [r7, #0]
    1736:	2b02      	cmp	r3, #2
    1738:	d108      	bne.n	174c <sec_per_month+0x34>
    173a:	687b      	ldr	r3, [r7, #4]
    173c:	2b00      	cmp	r3, #0
    173e:	d005      	beq.n	174c <sec_per_month+0x34>
    1740:	68fb      	ldr	r3, [r7, #12]
    1742:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1746:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    174a:	60fb      	str	r3, [r7, #12]
    174c:	68fb      	ldr	r3, [r7, #12]
    174e:	4618      	mov	r0, r3
    1750:	3714      	adds	r7, #20
    1752:	46bd      	mov	sp, r7
    1754:	bc80      	pop	{r7}
    1756:	4770      	bx	lr
    1758:	00002f70 	.word	0x00002f70
    175c:	00015180 	.word	0x00015180

00001760 <get_date_time>:
    1760:	b580      	push	{r7, lr}
    1762:	b086      	sub	sp, #24
    1764:	af00      	add	r7, sp, #0
    1766:	6078      	str	r0, [r7, #4]
    1768:	4b66      	ldr	r3, [pc, #408]	; (1904 <get_date_time+0x1a4>)
    176a:	699b      	ldr	r3, [r3, #24]
    176c:	041a      	lsls	r2, r3, #16
    176e:	4b65      	ldr	r3, [pc, #404]	; (1904 <get_date_time+0x1a4>)
    1770:	69db      	ldr	r3, [r3, #28]
    1772:	4413      	add	r3, r2
    1774:	617b      	str	r3, [r7, #20]
    1776:	687b      	ldr	r3, [r7, #4]
    1778:	f240 72b2 	movw	r2, #1970	; 0x7b2
    177c:	811a      	strh	r2, [r3, #8]
    177e:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1782:	f7ff ff9d 	bl	16c0 <leap_year>
    1786:	6138      	str	r0, [r7, #16]
    1788:	e019      	b.n	17be <get_date_time+0x5e>
    178a:	693b      	ldr	r3, [r7, #16]
    178c:	2b00      	cmp	r3, #0
    178e:	d006      	beq.n	179e <get_date_time+0x3e>
    1790:	697b      	ldr	r3, [r7, #20]
    1792:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    1796:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    179a:	617b      	str	r3, [r7, #20]
    179c:	e003      	b.n	17a6 <get_date_time+0x46>
    179e:	697a      	ldr	r2, [r7, #20]
    17a0:	4b59      	ldr	r3, [pc, #356]	; (1908 <get_date_time+0x1a8>)
    17a2:	4413      	add	r3, r2
    17a4:	617b      	str	r3, [r7, #20]
    17a6:	687b      	ldr	r3, [r7, #4]
    17a8:	891b      	ldrh	r3, [r3, #8]
    17aa:	3301      	adds	r3, #1
    17ac:	b29a      	uxth	r2, r3
    17ae:	687b      	ldr	r3, [r7, #4]
    17b0:	811a      	strh	r2, [r3, #8]
    17b2:	687b      	ldr	r3, [r7, #4]
    17b4:	891b      	ldrh	r3, [r3, #8]
    17b6:	4618      	mov	r0, r3
    17b8:	f7ff ff82 	bl	16c0 <leap_year>
    17bc:	6138      	str	r0, [r7, #16]
    17be:	693b      	ldr	r3, [r7, #16]
    17c0:	2b00      	cmp	r3, #0
    17c2:	d103      	bne.n	17cc <get_date_time+0x6c>
    17c4:	697b      	ldr	r3, [r7, #20]
    17c6:	4a51      	ldr	r2, [pc, #324]	; (190c <get_date_time+0x1ac>)
    17c8:	4293      	cmp	r3, r2
    17ca:	d8de      	bhi.n	178a <get_date_time+0x2a>
    17cc:	693b      	ldr	r3, [r7, #16]
    17ce:	2b00      	cmp	r3, #0
    17d0:	d003      	beq.n	17da <get_date_time+0x7a>
    17d2:	697b      	ldr	r3, [r7, #20]
    17d4:	4a4e      	ldr	r2, [pc, #312]	; (1910 <get_date_time+0x1b0>)
    17d6:	4293      	cmp	r3, r2
    17d8:	d8d7      	bhi.n	178a <get_date_time+0x2a>
    17da:	687a      	ldr	r2, [r7, #4]
    17dc:	8853      	ldrh	r3, [r2, #2]
    17de:	2101      	movs	r1, #1
    17e0:	f361 1389 	bfi	r3, r1, #6, #4
    17e4:	8053      	strh	r3, [r2, #2]
    17e6:	687a      	ldr	r2, [r7, #4]
    17e8:	7893      	ldrb	r3, [r2, #2]
    17ea:	2101      	movs	r1, #1
    17ec:	f361 0345 	bfi	r3, r1, #1, #5
    17f0:	7093      	strb	r3, [r2, #2]
    17f2:	687a      	ldr	r2, [r7, #4]
    17f4:	6813      	ldr	r3, [r2, #0]
    17f6:	f36f 3310 	bfc	r3, #12, #5
    17fa:	6013      	str	r3, [r2, #0]
    17fc:	687a      	ldr	r2, [r7, #4]
    17fe:	8813      	ldrh	r3, [r2, #0]
    1800:	f36f 138b 	bfc	r3, #6, #6
    1804:	8013      	strh	r3, [r2, #0]
    1806:	687a      	ldr	r2, [r7, #4]
    1808:	7813      	ldrb	r3, [r2, #0]
    180a:	f36f 0305 	bfc	r3, #0, #6
    180e:	7013      	strb	r3, [r2, #0]
    1810:	e011      	b.n	1836 <get_date_time+0xd6>
    1812:	687b      	ldr	r3, [r7, #4]
    1814:	885b      	ldrh	r3, [r3, #2]
    1816:	f3c3 1383 	ubfx	r3, r3, #6, #4
    181a:	b2db      	uxtb	r3, r3
    181c:	3301      	adds	r3, #1
    181e:	f003 030f 	and.w	r3, r3, #15
    1822:	b2d9      	uxtb	r1, r3
    1824:	687a      	ldr	r2, [r7, #4]
    1826:	8853      	ldrh	r3, [r2, #2]
    1828:	f361 1389 	bfi	r3, r1, #6, #4
    182c:	8053      	strh	r3, [r2, #2]
    182e:	697a      	ldr	r2, [r7, #20]
    1830:	68fb      	ldr	r3, [r7, #12]
    1832:	1ad3      	subs	r3, r2, r3
    1834:	617b      	str	r3, [r7, #20]
    1836:	687b      	ldr	r3, [r7, #4]
    1838:	885b      	ldrh	r3, [r3, #2]
    183a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    183e:	b2db      	uxtb	r3, r3
    1840:	4619      	mov	r1, r3
    1842:	6938      	ldr	r0, [r7, #16]
    1844:	f7ff ff68 	bl	1718 <sec_per_month>
    1848:	60f8      	str	r0, [r7, #12]
    184a:	68fa      	ldr	r2, [r7, #12]
    184c:	697b      	ldr	r3, [r7, #20]
    184e:	429a      	cmp	r2, r3
    1850:	d3df      	bcc.n	1812 <get_date_time+0xb2>
    1852:	697b      	ldr	r3, [r7, #20]
    1854:	4a2f      	ldr	r2, [pc, #188]	; (1914 <get_date_time+0x1b4>)
    1856:	fba2 2303 	umull	r2, r3, r2, r3
    185a:	0c1b      	lsrs	r3, r3, #16
    185c:	b2db      	uxtb	r3, r3
    185e:	3301      	adds	r3, #1
    1860:	b2db      	uxtb	r3, r3
    1862:	f003 031f 	and.w	r3, r3, #31
    1866:	b2d9      	uxtb	r1, r3
    1868:	687a      	ldr	r2, [r7, #4]
    186a:	7893      	ldrb	r3, [r2, #2]
    186c:	f361 0345 	bfi	r3, r1, #1, #5
    1870:	7093      	strb	r3, [r2, #2]
    1872:	697b      	ldr	r3, [r7, #20]
    1874:	4a27      	ldr	r2, [pc, #156]	; (1914 <get_date_time+0x1b4>)
    1876:	fba2 1203 	umull	r1, r2, r2, r3
    187a:	0c12      	lsrs	r2, r2, #16
    187c:	4926      	ldr	r1, [pc, #152]	; (1918 <get_date_time+0x1b8>)
    187e:	fb01 f202 	mul.w	r2, r1, r2
    1882:	1a9b      	subs	r3, r3, r2
    1884:	617b      	str	r3, [r7, #20]
    1886:	697b      	ldr	r3, [r7, #20]
    1888:	4a24      	ldr	r2, [pc, #144]	; (191c <get_date_time+0x1bc>)
    188a:	fba2 2303 	umull	r2, r3, r2, r3
    188e:	0adb      	lsrs	r3, r3, #11
    1890:	b2db      	uxtb	r3, r3
    1892:	f003 031f 	and.w	r3, r3, #31
    1896:	b2d9      	uxtb	r1, r3
    1898:	687a      	ldr	r2, [r7, #4]
    189a:	6813      	ldr	r3, [r2, #0]
    189c:	f361 3310 	bfi	r3, r1, #12, #5
    18a0:	6013      	str	r3, [r2, #0]
    18a2:	697b      	ldr	r3, [r7, #20]
    18a4:	4a1d      	ldr	r2, [pc, #116]	; (191c <get_date_time+0x1bc>)
    18a6:	fba2 1203 	umull	r1, r2, r2, r3
    18aa:	0ad2      	lsrs	r2, r2, #11
    18ac:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    18b0:	fb01 f202 	mul.w	r2, r1, r2
    18b4:	1a9b      	subs	r3, r3, r2
    18b6:	617b      	str	r3, [r7, #20]
    18b8:	697b      	ldr	r3, [r7, #20]
    18ba:	4a19      	ldr	r2, [pc, #100]	; (1920 <get_date_time+0x1c0>)
    18bc:	fba2 2303 	umull	r2, r3, r2, r3
    18c0:	095b      	lsrs	r3, r3, #5
    18c2:	b2db      	uxtb	r3, r3
    18c4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    18c8:	b2d9      	uxtb	r1, r3
    18ca:	687a      	ldr	r2, [r7, #4]
    18cc:	8813      	ldrh	r3, [r2, #0]
    18ce:	f361 138b 	bfi	r3, r1, #6, #6
    18d2:	8013      	strh	r3, [r2, #0]
    18d4:	6979      	ldr	r1, [r7, #20]
    18d6:	4b12      	ldr	r3, [pc, #72]	; (1920 <get_date_time+0x1c0>)
    18d8:	fba3 2301 	umull	r2, r3, r3, r1
    18dc:	095a      	lsrs	r2, r3, #5
    18de:	4613      	mov	r3, r2
    18e0:	011b      	lsls	r3, r3, #4
    18e2:	1a9b      	subs	r3, r3, r2
    18e4:	009b      	lsls	r3, r3, #2
    18e6:	1aca      	subs	r2, r1, r3
    18e8:	b2d3      	uxtb	r3, r2
    18ea:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    18ee:	b2d9      	uxtb	r1, r3
    18f0:	687a      	ldr	r2, [r7, #4]
    18f2:	7813      	ldrb	r3, [r2, #0]
    18f4:	f361 0305 	bfi	r3, r1, #0, #6
    18f8:	7013      	strb	r3, [r2, #0]
    18fa:	bf00      	nop
    18fc:	3718      	adds	r7, #24
    18fe:	46bd      	mov	sp, r7
    1900:	bd80      	pop	{r7, pc}
    1902:	bf00      	nop
    1904:	40002800 	.word	0x40002800
    1908:	fe1ecc80 	.word	0xfe1ecc80
    190c:	01e1337f 	.word	0x01e1337f
    1910:	01e284ff 	.word	0x01e284ff
    1914:	c22e4507 	.word	0xc22e4507
    1918:	00015180 	.word	0x00015180
    191c:	91a2b3c5 	.word	0x91a2b3c5
    1920:	88888889 	.word	0x88888889

00001924 <set_date_time>:
    1924:	b580      	push	{r7, lr}
    1926:	b086      	sub	sp, #24
    1928:	af00      	add	r7, sp, #0
    192a:	6078      	str	r0, [r7, #4]
    192c:	2300      	movs	r3, #0
    192e:	613b      	str	r3, [r7, #16]
    1930:	687b      	ldr	r3, [r7, #4]
    1932:	891b      	ldrh	r3, [r3, #8]
    1934:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1938:	4293      	cmp	r3, r2
    193a:	d803      	bhi.n	1944 <set_date_time+0x20>
    193c:	687b      	ldr	r3, [r7, #4]
    193e:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1942:	811a      	strh	r2, [r3, #8]
    1944:	687b      	ldr	r3, [r7, #4]
    1946:	891b      	ldrh	r3, [r3, #8]
    1948:	f640 023a 	movw	r2, #2106	; 0x83a
    194c:	4293      	cmp	r3, r2
    194e:	d903      	bls.n	1958 <set_date_time+0x34>
    1950:	687b      	ldr	r3, [r7, #4]
    1952:	f640 023a 	movw	r2, #2106	; 0x83a
    1956:	811a      	strh	r2, [r3, #8]
    1958:	687b      	ldr	r3, [r7, #4]
    195a:	891b      	ldrh	r3, [r3, #8]
    195c:	4618      	mov	r0, r3
    195e:	f7ff feaf 	bl	16c0 <leap_year>
    1962:	60f8      	str	r0, [r7, #12]
    1964:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1968:	617b      	str	r3, [r7, #20]
    196a:	e013      	b.n	1994 <set_date_time+0x70>
    196c:	6978      	ldr	r0, [r7, #20]
    196e:	f7ff fea7 	bl	16c0 <leap_year>
    1972:	4603      	mov	r3, r0
    1974:	2b00      	cmp	r3, #0
    1976:	d006      	beq.n	1986 <set_date_time+0x62>
    1978:	693b      	ldr	r3, [r7, #16]
    197a:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    197e:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    1982:	613b      	str	r3, [r7, #16]
    1984:	e003      	b.n	198e <set_date_time+0x6a>
    1986:	693a      	ldr	r2, [r7, #16]
    1988:	4b42      	ldr	r3, [pc, #264]	; (1a94 <set_date_time+0x170>)
    198a:	4413      	add	r3, r2
    198c:	613b      	str	r3, [r7, #16]
    198e:	697b      	ldr	r3, [r7, #20]
    1990:	3301      	adds	r3, #1
    1992:	617b      	str	r3, [r7, #20]
    1994:	687b      	ldr	r3, [r7, #4]
    1996:	891b      	ldrh	r3, [r3, #8]
    1998:	461a      	mov	r2, r3
    199a:	697b      	ldr	r3, [r7, #20]
    199c:	429a      	cmp	r2, r3
    199e:	d8e5      	bhi.n	196c <set_date_time+0x48>
    19a0:	2301      	movs	r3, #1
    19a2:	617b      	str	r3, [r7, #20]
    19a4:	e00a      	b.n	19bc <set_date_time+0x98>
    19a6:	6979      	ldr	r1, [r7, #20]
    19a8:	68f8      	ldr	r0, [r7, #12]
    19aa:	f7ff feb5 	bl	1718 <sec_per_month>
    19ae:	4602      	mov	r2, r0
    19b0:	693b      	ldr	r3, [r7, #16]
    19b2:	4413      	add	r3, r2
    19b4:	613b      	str	r3, [r7, #16]
    19b6:	697b      	ldr	r3, [r7, #20]
    19b8:	3301      	adds	r3, #1
    19ba:	617b      	str	r3, [r7, #20]
    19bc:	687b      	ldr	r3, [r7, #4]
    19be:	885b      	ldrh	r3, [r3, #2]
    19c0:	f3c3 1383 	ubfx	r3, r3, #6, #4
    19c4:	b2db      	uxtb	r3, r3
    19c6:	461a      	mov	r2, r3
    19c8:	697b      	ldr	r3, [r7, #20]
    19ca:	429a      	cmp	r2, r3
    19cc:	d8eb      	bhi.n	19a6 <set_date_time+0x82>
    19ce:	687b      	ldr	r3, [r7, #4]
    19d0:	789b      	ldrb	r3, [r3, #2]
    19d2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    19d6:	b2db      	uxtb	r3, r3
    19d8:	3b01      	subs	r3, #1
    19da:	4a2f      	ldr	r2, [pc, #188]	; (1a98 <set_date_time+0x174>)
    19dc:	fb02 f303 	mul.w	r3, r2, r3
    19e0:	461a      	mov	r2, r3
    19e2:	693b      	ldr	r3, [r7, #16]
    19e4:	4413      	add	r3, r2
    19e6:	613b      	str	r3, [r7, #16]
    19e8:	687b      	ldr	r3, [r7, #4]
    19ea:	681b      	ldr	r3, [r3, #0]
    19ec:	f3c3 3304 	ubfx	r3, r3, #12, #5
    19f0:	b2db      	uxtb	r3, r3
    19f2:	461a      	mov	r2, r3
    19f4:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    19f8:	fb03 f302 	mul.w	r3, r3, r2
    19fc:	461a      	mov	r2, r3
    19fe:	693b      	ldr	r3, [r7, #16]
    1a00:	4413      	add	r3, r2
    1a02:	613b      	str	r3, [r7, #16]
    1a04:	687b      	ldr	r3, [r7, #4]
    1a06:	881b      	ldrh	r3, [r3, #0]
    1a08:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1a0c:	b2db      	uxtb	r3, r3
    1a0e:	461a      	mov	r2, r3
    1a10:	4613      	mov	r3, r2
    1a12:	011b      	lsls	r3, r3, #4
    1a14:	1a9b      	subs	r3, r3, r2
    1a16:	009b      	lsls	r3, r3, #2
    1a18:	461a      	mov	r2, r3
    1a1a:	693b      	ldr	r3, [r7, #16]
    1a1c:	4413      	add	r3, r2
    1a1e:	613b      	str	r3, [r7, #16]
    1a20:	687b      	ldr	r3, [r7, #4]
    1a22:	781b      	ldrb	r3, [r3, #0]
    1a24:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1a28:	b2db      	uxtb	r3, r3
    1a2a:	461a      	mov	r2, r3
    1a2c:	693b      	ldr	r3, [r7, #16]
    1a2e:	4413      	add	r3, r2
    1a30:	613b      	str	r3, [r7, #16]
    1a32:	4a1a      	ldr	r2, [pc, #104]	; (1a9c <set_date_time+0x178>)
    1a34:	4b19      	ldr	r3, [pc, #100]	; (1a9c <set_date_time+0x178>)
    1a36:	69db      	ldr	r3, [r3, #28]
    1a38:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1a3c:	61d3      	str	r3, [r2, #28]
    1a3e:	4a18      	ldr	r2, [pc, #96]	; (1aa0 <set_date_time+0x17c>)
    1a40:	4b17      	ldr	r3, [pc, #92]	; (1aa0 <set_date_time+0x17c>)
    1a42:	681b      	ldr	r3, [r3, #0]
    1a44:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1a48:	6013      	str	r3, [r2, #0]
    1a4a:	4a16      	ldr	r2, [pc, #88]	; (1aa4 <set_date_time+0x180>)
    1a4c:	4b15      	ldr	r3, [pc, #84]	; (1aa4 <set_date_time+0x180>)
    1a4e:	685b      	ldr	r3, [r3, #4]
    1a50:	f043 0310 	orr.w	r3, r3, #16
    1a54:	6053      	str	r3, [r2, #4]
    1a56:	4a13      	ldr	r2, [pc, #76]	; (1aa4 <set_date_time+0x180>)
    1a58:	693b      	ldr	r3, [r7, #16]
    1a5a:	0c1b      	lsrs	r3, r3, #16
    1a5c:	6193      	str	r3, [r2, #24]
    1a5e:	4a11      	ldr	r2, [pc, #68]	; (1aa4 <set_date_time+0x180>)
    1a60:	693b      	ldr	r3, [r7, #16]
    1a62:	b29b      	uxth	r3, r3
    1a64:	61d3      	str	r3, [r2, #28]
    1a66:	4a0f      	ldr	r2, [pc, #60]	; (1aa4 <set_date_time+0x180>)
    1a68:	4b0e      	ldr	r3, [pc, #56]	; (1aa4 <set_date_time+0x180>)
    1a6a:	685b      	ldr	r3, [r3, #4]
    1a6c:	f023 0310 	bic.w	r3, r3, #16
    1a70:	6053      	str	r3, [r2, #4]
    1a72:	bf00      	nop
    1a74:	4b0b      	ldr	r3, [pc, #44]	; (1aa4 <set_date_time+0x180>)
    1a76:	685b      	ldr	r3, [r3, #4]
    1a78:	f003 0320 	and.w	r3, r3, #32
    1a7c:	2b00      	cmp	r3, #0
    1a7e:	d0f9      	beq.n	1a74 <set_date_time+0x150>
    1a80:	4a07      	ldr	r2, [pc, #28]	; (1aa0 <set_date_time+0x17c>)
    1a82:	4b07      	ldr	r3, [pc, #28]	; (1aa0 <set_date_time+0x17c>)
    1a84:	681b      	ldr	r3, [r3, #0]
    1a86:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1a8a:	6013      	str	r3, [r2, #0]
    1a8c:	bf00      	nop
    1a8e:	3718      	adds	r7, #24
    1a90:	46bd      	mov	sp, r7
    1a92:	bd80      	pop	{r7, pc}
    1a94:	01e13380 	.word	0x01e13380
    1a98:	00015180 	.word	0x00015180
    1a9c:	40021000 	.word	0x40021000
    1aa0:	40007000 	.word	0x40007000
    1aa4:	40002800 	.word	0x40002800

00001aa8 <rtc_init>:
    1aa8:	b580      	push	{r7, lr}
    1aaa:	b082      	sub	sp, #8
    1aac:	af00      	add	r7, sp, #0
    1aae:	6078      	str	r0, [r7, #4]
    1ab0:	6039      	str	r1, [r7, #0]
    1ab2:	4b4a      	ldr	r3, [pc, #296]	; (1bdc <rtc_init+0x134>)
    1ab4:	685b      	ldr	r3, [r3, #4]
    1ab6:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1aba:	4293      	cmp	r3, r2
    1abc:	f000 8082 	beq.w	1bc4 <rtc_init+0x11c>
    1ac0:	4a47      	ldr	r2, [pc, #284]	; (1be0 <rtc_init+0x138>)
    1ac2:	4b47      	ldr	r3, [pc, #284]	; (1be0 <rtc_init+0x138>)
    1ac4:	69db      	ldr	r3, [r3, #28]
    1ac6:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1aca:	61d3      	str	r3, [r2, #28]
    1acc:	4a45      	ldr	r2, [pc, #276]	; (1be4 <rtc_init+0x13c>)
    1ace:	4b45      	ldr	r3, [pc, #276]	; (1be4 <rtc_init+0x13c>)
    1ad0:	681b      	ldr	r3, [r3, #0]
    1ad2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1ad6:	6013      	str	r3, [r2, #0]
    1ad8:	4a41      	ldr	r2, [pc, #260]	; (1be0 <rtc_init+0x138>)
    1ada:	4b41      	ldr	r3, [pc, #260]	; (1be0 <rtc_init+0x138>)
    1adc:	6a1b      	ldr	r3, [r3, #32]
    1ade:	f043 0301 	orr.w	r3, r3, #1
    1ae2:	6213      	str	r3, [r2, #32]
    1ae4:	bf00      	nop
    1ae6:	4b3e      	ldr	r3, [pc, #248]	; (1be0 <rtc_init+0x138>)
    1ae8:	6a1b      	ldr	r3, [r3, #32]
    1aea:	f003 0302 	and.w	r3, r3, #2
    1aee:	2b00      	cmp	r3, #0
    1af0:	d0f9      	beq.n	1ae6 <rtc_init+0x3e>
    1af2:	4a3b      	ldr	r2, [pc, #236]	; (1be0 <rtc_init+0x138>)
    1af4:	4b3a      	ldr	r3, [pc, #232]	; (1be0 <rtc_init+0x138>)
    1af6:	6a1b      	ldr	r3, [r3, #32]
    1af8:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1afc:	6213      	str	r3, [r2, #32]
    1afe:	bf00      	nop
    1b00:	4b39      	ldr	r3, [pc, #228]	; (1be8 <rtc_init+0x140>)
    1b02:	685b      	ldr	r3, [r3, #4]
    1b04:	f003 0308 	and.w	r3, r3, #8
    1b08:	2b00      	cmp	r3, #0
    1b0a:	d0f9      	beq.n	1b00 <rtc_init+0x58>
    1b0c:	bf00      	nop
    1b0e:	4b36      	ldr	r3, [pc, #216]	; (1be8 <rtc_init+0x140>)
    1b10:	685b      	ldr	r3, [r3, #4]
    1b12:	f003 0320 	and.w	r3, r3, #32
    1b16:	2b00      	cmp	r3, #0
    1b18:	d0f9      	beq.n	1b0e <rtc_init+0x66>
    1b1a:	4a33      	ldr	r2, [pc, #204]	; (1be8 <rtc_init+0x140>)
    1b1c:	4b32      	ldr	r3, [pc, #200]	; (1be8 <rtc_init+0x140>)
    1b1e:	685b      	ldr	r3, [r3, #4]
    1b20:	f043 0310 	orr.w	r3, r3, #16
    1b24:	6053      	str	r3, [r2, #4]
    1b26:	bf00      	nop
    1b28:	4b2f      	ldr	r3, [pc, #188]	; (1be8 <rtc_init+0x140>)
    1b2a:	685b      	ldr	r3, [r3, #4]
    1b2c:	f003 0320 	and.w	r3, r3, #32
    1b30:	2b00      	cmp	r3, #0
    1b32:	d0f9      	beq.n	1b28 <rtc_init+0x80>
    1b34:	492c      	ldr	r1, [pc, #176]	; (1be8 <rtc_init+0x140>)
    1b36:	4b2c      	ldr	r3, [pc, #176]	; (1be8 <rtc_init+0x140>)
    1b38:	681a      	ldr	r2, [r3, #0]
    1b3a:	683b      	ldr	r3, [r7, #0]
    1b3c:	4313      	orrs	r3, r2
    1b3e:	600b      	str	r3, [r1, #0]
    1b40:	bf00      	nop
    1b42:	4b29      	ldr	r3, [pc, #164]	; (1be8 <rtc_init+0x140>)
    1b44:	685b      	ldr	r3, [r3, #4]
    1b46:	f003 0320 	and.w	r3, r3, #32
    1b4a:	2b00      	cmp	r3, #0
    1b4c:	d0f9      	beq.n	1b42 <rtc_init+0x9a>
    1b4e:	4a26      	ldr	r2, [pc, #152]	; (1be8 <rtc_init+0x140>)
    1b50:	687b      	ldr	r3, [r7, #4]
    1b52:	03db      	lsls	r3, r3, #15
    1b54:	4925      	ldr	r1, [pc, #148]	; (1bec <rtc_init+0x144>)
    1b56:	fba1 1303 	umull	r1, r3, r1, r3
    1b5a:	099b      	lsrs	r3, r3, #6
    1b5c:	3b01      	subs	r3, #1
    1b5e:	b29b      	uxth	r3, r3
    1b60:	60d3      	str	r3, [r2, #12]
    1b62:	bf00      	nop
    1b64:	4b20      	ldr	r3, [pc, #128]	; (1be8 <rtc_init+0x140>)
    1b66:	685b      	ldr	r3, [r3, #4]
    1b68:	f003 0320 	and.w	r3, r3, #32
    1b6c:	2b00      	cmp	r3, #0
    1b6e:	d0f9      	beq.n	1b64 <rtc_init+0xbc>
    1b70:	4a1d      	ldr	r2, [pc, #116]	; (1be8 <rtc_init+0x140>)
    1b72:	687b      	ldr	r3, [r7, #4]
    1b74:	03db      	lsls	r3, r3, #15
    1b76:	491d      	ldr	r1, [pc, #116]	; (1bec <rtc_init+0x144>)
    1b78:	fba1 1303 	umull	r1, r3, r1, r3
    1b7c:	099b      	lsrs	r3, r3, #6
    1b7e:	3b01      	subs	r3, #1
    1b80:	0c1b      	lsrs	r3, r3, #16
    1b82:	f003 030f 	and.w	r3, r3, #15
    1b86:	6093      	str	r3, [r2, #8]
    1b88:	bf00      	nop
    1b8a:	4b17      	ldr	r3, [pc, #92]	; (1be8 <rtc_init+0x140>)
    1b8c:	685b      	ldr	r3, [r3, #4]
    1b8e:	f003 0320 	and.w	r3, r3, #32
    1b92:	2b00      	cmp	r3, #0
    1b94:	d0f9      	beq.n	1b8a <rtc_init+0xe2>
    1b96:	4b11      	ldr	r3, [pc, #68]	; (1bdc <rtc_init+0x134>)
    1b98:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1b9c:	605a      	str	r2, [r3, #4]
    1b9e:	4a12      	ldr	r2, [pc, #72]	; (1be8 <rtc_init+0x140>)
    1ba0:	4b11      	ldr	r3, [pc, #68]	; (1be8 <rtc_init+0x140>)
    1ba2:	685b      	ldr	r3, [r3, #4]
    1ba4:	f023 0310 	bic.w	r3, r3, #16
    1ba8:	6053      	str	r3, [r2, #4]
    1baa:	bf00      	nop
    1bac:	4b0e      	ldr	r3, [pc, #56]	; (1be8 <rtc_init+0x140>)
    1bae:	685b      	ldr	r3, [r3, #4]
    1bb0:	f003 0320 	and.w	r3, r3, #32
    1bb4:	2b00      	cmp	r3, #0
    1bb6:	d0f9      	beq.n	1bac <rtc_init+0x104>
    1bb8:	4a0a      	ldr	r2, [pc, #40]	; (1be4 <rtc_init+0x13c>)
    1bba:	4b0a      	ldr	r3, [pc, #40]	; (1be4 <rtc_init+0x13c>)
    1bbc:	681b      	ldr	r3, [r3, #0]
    1bbe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1bc2:	6013      	str	r3, [r2, #0]
    1bc4:	210f      	movs	r1, #15
    1bc6:	2003      	movs	r0, #3
    1bc8:	f7ff fd4a 	bl	1660 <set_int_priority>
    1bcc:	2003      	movs	r0, #3
    1bce:	f7ff fc8d 	bl	14ec <enable_interrupt>
    1bd2:	bf00      	nop
    1bd4:	3708      	adds	r7, #8
    1bd6:	46bd      	mov	sp, r7
    1bd8:	bd80      	pop	{r7, pc}
    1bda:	bf00      	nop
    1bdc:	40006c00 	.word	0x40006c00
    1be0:	40021000 	.word	0x40021000
    1be4:	40007000 	.word	0x40007000
    1be8:	40002800 	.word	0x40002800
    1bec:	10624dd3 	.word	0x10624dd3

00001bf0 <reset_backup_domain>:
    1bf0:	b480      	push	{r7}
    1bf2:	af00      	add	r7, sp, #0
    1bf4:	4a0a      	ldr	r2, [pc, #40]	; (1c20 <reset_backup_domain+0x30>)
    1bf6:	4b0a      	ldr	r3, [pc, #40]	; (1c20 <reset_backup_domain+0x30>)
    1bf8:	69db      	ldr	r3, [r3, #28]
    1bfa:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1bfe:	61d3      	str	r3, [r2, #28]
    1c00:	4a07      	ldr	r2, [pc, #28]	; (1c20 <reset_backup_domain+0x30>)
    1c02:	4b07      	ldr	r3, [pc, #28]	; (1c20 <reset_backup_domain+0x30>)
    1c04:	6a1b      	ldr	r3, [r3, #32]
    1c06:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1c0a:	6213      	str	r3, [r2, #32]
    1c0c:	4a04      	ldr	r2, [pc, #16]	; (1c20 <reset_backup_domain+0x30>)
    1c0e:	4b04      	ldr	r3, [pc, #16]	; (1c20 <reset_backup_domain+0x30>)
    1c10:	6a1b      	ldr	r3, [r3, #32]
    1c12:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1c16:	6213      	str	r3, [r2, #32]
    1c18:	bf00      	nop
    1c1a:	46bd      	mov	sp, r7
    1c1c:	bc80      	pop	{r7}
    1c1e:	4770      	bx	lr
    1c20:	40021000 	.word	0x40021000

00001c24 <rtc_clock_trim>:
    1c24:	b480      	push	{r7}
    1c26:	b083      	sub	sp, #12
    1c28:	af00      	add	r7, sp, #0
    1c2a:	6078      	str	r0, [r7, #4]
    1c2c:	4a34      	ldr	r2, [pc, #208]	; (1d00 <rtc_clock_trim+0xdc>)
    1c2e:	4b34      	ldr	r3, [pc, #208]	; (1d00 <rtc_clock_trim+0xdc>)
    1c30:	69db      	ldr	r3, [r3, #28]
    1c32:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1c36:	61d3      	str	r3, [r2, #28]
    1c38:	bf00      	nop
    1c3a:	4b32      	ldr	r3, [pc, #200]	; (1d04 <rtc_clock_trim+0xe0>)
    1c3c:	685b      	ldr	r3, [r3, #4]
    1c3e:	f003 0308 	and.w	r3, r3, #8
    1c42:	2b00      	cmp	r3, #0
    1c44:	d0f9      	beq.n	1c3a <rtc_clock_trim+0x16>
    1c46:	4a30      	ldr	r2, [pc, #192]	; (1d08 <rtc_clock_trim+0xe4>)
    1c48:	4b2f      	ldr	r3, [pc, #188]	; (1d08 <rtc_clock_trim+0xe4>)
    1c4a:	681b      	ldr	r3, [r3, #0]
    1c4c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1c50:	6013      	str	r3, [r2, #0]
    1c52:	4a2c      	ldr	r2, [pc, #176]	; (1d04 <rtc_clock_trim+0xe0>)
    1c54:	4b2b      	ldr	r3, [pc, #172]	; (1d04 <rtc_clock_trim+0xe0>)
    1c56:	685b      	ldr	r3, [r3, #4]
    1c58:	f043 0310 	orr.w	r3, r3, #16
    1c5c:	6053      	str	r3, [r2, #4]
    1c5e:	4a2b      	ldr	r2, [pc, #172]	; (1d0c <rtc_clock_trim+0xe8>)
    1c60:	4b2a      	ldr	r3, [pc, #168]	; (1d0c <rtc_clock_trim+0xe8>)
    1c62:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1c64:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1c68:	62d3      	str	r3, [r2, #44]	; 0x2c
    1c6a:	687b      	ldr	r3, [r7, #4]
    1c6c:	2b00      	cmp	r3, #0
    1c6e:	d10a      	bne.n	1c86 <rtc_clock_trim+0x62>
    1c70:	4b26      	ldr	r3, [pc, #152]	; (1d0c <rtc_clock_trim+0xe8>)
    1c72:	2200      	movs	r2, #0
    1c74:	62da      	str	r2, [r3, #44]	; 0x2c
    1c76:	4b23      	ldr	r3, [pc, #140]	; (1d04 <rtc_clock_trim+0xe0>)
    1c78:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1c7c:	60da      	str	r2, [r3, #12]
    1c7e:	4b21      	ldr	r3, [pc, #132]	; (1d04 <rtc_clock_trim+0xe0>)
    1c80:	2200      	movs	r2, #0
    1c82:	609a      	str	r2, [r3, #8]
    1c84:	e023      	b.n	1cce <rtc_clock_trim+0xaa>
    1c86:	687b      	ldr	r3, [r7, #4]
    1c88:	2b00      	cmp	r3, #0
    1c8a:	dd0a      	ble.n	1ca2 <rtc_clock_trim+0x7e>
    1c8c:	687b      	ldr	r3, [r7, #4]
    1c8e:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1c92:	607b      	str	r3, [r7, #4]
    1c94:	491d      	ldr	r1, [pc, #116]	; (1d0c <rtc_clock_trim+0xe8>)
    1c96:	4b1d      	ldr	r3, [pc, #116]	; (1d0c <rtc_clock_trim+0xe8>)
    1c98:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1c9a:	687b      	ldr	r3, [r7, #4]
    1c9c:	4313      	orrs	r3, r2
    1c9e:	62cb      	str	r3, [r1, #44]	; 0x2c
    1ca0:	e015      	b.n	1cce <rtc_clock_trim+0xaa>
    1ca2:	687b      	ldr	r3, [r7, #4]
    1ca4:	425b      	negs	r3, r3
    1ca6:	607b      	str	r3, [r7, #4]
    1ca8:	687b      	ldr	r3, [r7, #4]
    1caa:	2b7f      	cmp	r3, #127	; 0x7f
    1cac:	dd01      	ble.n	1cb2 <rtc_clock_trim+0x8e>
    1cae:	237f      	movs	r3, #127	; 0x7f
    1cb0:	607b      	str	r3, [r7, #4]
    1cb2:	4b16      	ldr	r3, [pc, #88]	; (1d0c <rtc_clock_trim+0xe8>)
    1cb4:	2200      	movs	r2, #0
    1cb6:	62da      	str	r2, [r3, #44]	; 0x2c
    1cb8:	4a12      	ldr	r2, [pc, #72]	; (1d04 <rtc_clock_trim+0xe0>)
    1cba:	687b      	ldr	r3, [r7, #4]
    1cbc:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1cc0:	33ff      	adds	r3, #255	; 0xff
    1cc2:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1cc6:	60d3      	str	r3, [r2, #12]
    1cc8:	4b0e      	ldr	r3, [pc, #56]	; (1d04 <rtc_clock_trim+0xe0>)
    1cca:	2200      	movs	r2, #0
    1ccc:	609a      	str	r2, [r3, #8]
    1cce:	4a0d      	ldr	r2, [pc, #52]	; (1d04 <rtc_clock_trim+0xe0>)
    1cd0:	4b0c      	ldr	r3, [pc, #48]	; (1d04 <rtc_clock_trim+0xe0>)
    1cd2:	685b      	ldr	r3, [r3, #4]
    1cd4:	f023 0310 	bic.w	r3, r3, #16
    1cd8:	6053      	str	r3, [r2, #4]
    1cda:	bf00      	nop
    1cdc:	4b09      	ldr	r3, [pc, #36]	; (1d04 <rtc_clock_trim+0xe0>)
    1cde:	685b      	ldr	r3, [r3, #4]
    1ce0:	f003 0320 	and.w	r3, r3, #32
    1ce4:	2b00      	cmp	r3, #0
    1ce6:	d0f9      	beq.n	1cdc <rtc_clock_trim+0xb8>
    1ce8:	4a07      	ldr	r2, [pc, #28]	; (1d08 <rtc_clock_trim+0xe4>)
    1cea:	4b07      	ldr	r3, [pc, #28]	; (1d08 <rtc_clock_trim+0xe4>)
    1cec:	681b      	ldr	r3, [r3, #0]
    1cee:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1cf2:	6013      	str	r3, [r2, #0]
    1cf4:	bf00      	nop
    1cf6:	370c      	adds	r7, #12
    1cf8:	46bd      	mov	sp, r7
    1cfa:	bc80      	pop	{r7}
    1cfc:	4770      	bx	lr
    1cfe:	bf00      	nop
    1d00:	40021000 	.word	0x40021000
    1d04:	40002800 	.word	0x40002800
    1d08:	40007000 	.word	0x40007000
    1d0c:	40006c00 	.word	0x40006c00

00001d10 <rtc_set_alarm>:
    1d10:	b480      	push	{r7}
    1d12:	b083      	sub	sp, #12
    1d14:	af00      	add	r7, sp, #0
    1d16:	6078      	str	r0, [r7, #4]
    1d18:	bf00      	nop
    1d1a:	370c      	adds	r7, #12
    1d1c:	46bd      	mov	sp, r7
    1d1e:	bc80      	pop	{r7}
    1d20:	4770      	bx	lr

00001d22 <str_to_date>:
    1d22:	b580      	push	{r7, lr}
    1d24:	b084      	sub	sp, #16
    1d26:	af00      	add	r7, sp, #0
    1d28:	6078      	str	r0, [r7, #4]
    1d2a:	6039      	str	r1, [r7, #0]
    1d2c:	2300      	movs	r3, #0
    1d2e:	60fb      	str	r3, [r7, #12]
    1d30:	2300      	movs	r3, #0
    1d32:	60bb      	str	r3, [r7, #8]
    1d34:	e00f      	b.n	1d56 <str_to_date+0x34>
    1d36:	68ba      	ldr	r2, [r7, #8]
    1d38:	4613      	mov	r3, r2
    1d3a:	009b      	lsls	r3, r3, #2
    1d3c:	4413      	add	r3, r2
    1d3e:	005b      	lsls	r3, r3, #1
    1d40:	4619      	mov	r1, r3
    1d42:	68fb      	ldr	r3, [r7, #12]
    1d44:	1c5a      	adds	r2, r3, #1
    1d46:	60fa      	str	r2, [r7, #12]
    1d48:	461a      	mov	r2, r3
    1d4a:	687b      	ldr	r3, [r7, #4]
    1d4c:	4413      	add	r3, r2
    1d4e:	781b      	ldrb	r3, [r3, #0]
    1d50:	440b      	add	r3, r1
    1d52:	3b30      	subs	r3, #48	; 0x30
    1d54:	60bb      	str	r3, [r7, #8]
    1d56:	68fb      	ldr	r3, [r7, #12]
    1d58:	687a      	ldr	r2, [r7, #4]
    1d5a:	4413      	add	r3, r2
    1d5c:	781b      	ldrb	r3, [r3, #0]
    1d5e:	4618      	mov	r0, r3
    1d60:	f7fe fd3f 	bl	7e2 <digit>
    1d64:	4603      	mov	r3, r0
    1d66:	2b00      	cmp	r3, #0
    1d68:	d1e5      	bne.n	1d36 <str_to_date+0x14>
    1d6a:	68fb      	ldr	r3, [r7, #12]
    1d6c:	2b03      	cmp	r3, #3
    1d6e:	dd05      	ble.n	1d7c <str_to_date+0x5a>
    1d70:	68fb      	ldr	r3, [r7, #12]
    1d72:	687a      	ldr	r2, [r7, #4]
    1d74:	4413      	add	r3, r2
    1d76:	781b      	ldrb	r3, [r3, #0]
    1d78:	2b2f      	cmp	r3, #47	; 0x2f
    1d7a:	d001      	beq.n	1d80 <str_to_date+0x5e>
    1d7c:	2300      	movs	r3, #0
    1d7e:	e068      	b.n	1e52 <str_to_date+0x130>
    1d80:	68bb      	ldr	r3, [r7, #8]
    1d82:	b29a      	uxth	r2, r3
    1d84:	683b      	ldr	r3, [r7, #0]
    1d86:	811a      	strh	r2, [r3, #8]
    1d88:	68fb      	ldr	r3, [r7, #12]
    1d8a:	3301      	adds	r3, #1
    1d8c:	60fb      	str	r3, [r7, #12]
    1d8e:	2300      	movs	r3, #0
    1d90:	60bb      	str	r3, [r7, #8]
    1d92:	e00f      	b.n	1db4 <str_to_date+0x92>
    1d94:	68ba      	ldr	r2, [r7, #8]
    1d96:	4613      	mov	r3, r2
    1d98:	009b      	lsls	r3, r3, #2
    1d9a:	4413      	add	r3, r2
    1d9c:	005b      	lsls	r3, r3, #1
    1d9e:	4619      	mov	r1, r3
    1da0:	68fb      	ldr	r3, [r7, #12]
    1da2:	1c5a      	adds	r2, r3, #1
    1da4:	60fa      	str	r2, [r7, #12]
    1da6:	461a      	mov	r2, r3
    1da8:	687b      	ldr	r3, [r7, #4]
    1daa:	4413      	add	r3, r2
    1dac:	781b      	ldrb	r3, [r3, #0]
    1dae:	440b      	add	r3, r1
    1db0:	3b30      	subs	r3, #48	; 0x30
    1db2:	60bb      	str	r3, [r7, #8]
    1db4:	68fb      	ldr	r3, [r7, #12]
    1db6:	687a      	ldr	r2, [r7, #4]
    1db8:	4413      	add	r3, r2
    1dba:	781b      	ldrb	r3, [r3, #0]
    1dbc:	4618      	mov	r0, r3
    1dbe:	f7fe fd10 	bl	7e2 <digit>
    1dc2:	4603      	mov	r3, r0
    1dc4:	2b00      	cmp	r3, #0
    1dc6:	d1e5      	bne.n	1d94 <str_to_date+0x72>
    1dc8:	68fb      	ldr	r3, [r7, #12]
    1dca:	2b06      	cmp	r3, #6
    1dcc:	dd05      	ble.n	1dda <str_to_date+0xb8>
    1dce:	68fb      	ldr	r3, [r7, #12]
    1dd0:	687a      	ldr	r2, [r7, #4]
    1dd2:	4413      	add	r3, r2
    1dd4:	781b      	ldrb	r3, [r3, #0]
    1dd6:	2b2f      	cmp	r3, #47	; 0x2f
    1dd8:	d001      	beq.n	1dde <str_to_date+0xbc>
    1dda:	2300      	movs	r3, #0
    1ddc:	e039      	b.n	1e52 <str_to_date+0x130>
    1dde:	68bb      	ldr	r3, [r7, #8]
    1de0:	b2db      	uxtb	r3, r3
    1de2:	f003 030f 	and.w	r3, r3, #15
    1de6:	b2d9      	uxtb	r1, r3
    1de8:	683a      	ldr	r2, [r7, #0]
    1dea:	8853      	ldrh	r3, [r2, #2]
    1dec:	f361 1389 	bfi	r3, r1, #6, #4
    1df0:	8053      	strh	r3, [r2, #2]
    1df2:	2300      	movs	r3, #0
    1df4:	60bb      	str	r3, [r7, #8]
    1df6:	68fb      	ldr	r3, [r7, #12]
    1df8:	3301      	adds	r3, #1
    1dfa:	60fb      	str	r3, [r7, #12]
    1dfc:	e00f      	b.n	1e1e <str_to_date+0xfc>
    1dfe:	68ba      	ldr	r2, [r7, #8]
    1e00:	4613      	mov	r3, r2
    1e02:	009b      	lsls	r3, r3, #2
    1e04:	4413      	add	r3, r2
    1e06:	005b      	lsls	r3, r3, #1
    1e08:	4619      	mov	r1, r3
    1e0a:	68fb      	ldr	r3, [r7, #12]
    1e0c:	1c5a      	adds	r2, r3, #1
    1e0e:	60fa      	str	r2, [r7, #12]
    1e10:	461a      	mov	r2, r3
    1e12:	687b      	ldr	r3, [r7, #4]
    1e14:	4413      	add	r3, r2
    1e16:	781b      	ldrb	r3, [r3, #0]
    1e18:	440b      	add	r3, r1
    1e1a:	3b30      	subs	r3, #48	; 0x30
    1e1c:	60bb      	str	r3, [r7, #8]
    1e1e:	68fb      	ldr	r3, [r7, #12]
    1e20:	687a      	ldr	r2, [r7, #4]
    1e22:	4413      	add	r3, r2
    1e24:	781b      	ldrb	r3, [r3, #0]
    1e26:	4618      	mov	r0, r3
    1e28:	f7fe fcdb 	bl	7e2 <digit>
    1e2c:	4603      	mov	r3, r0
    1e2e:	2b00      	cmp	r3, #0
    1e30:	d1e5      	bne.n	1dfe <str_to_date+0xdc>
    1e32:	68fb      	ldr	r3, [r7, #12]
    1e34:	2b09      	cmp	r3, #9
    1e36:	dc01      	bgt.n	1e3c <str_to_date+0x11a>
    1e38:	2300      	movs	r3, #0
    1e3a:	e00a      	b.n	1e52 <str_to_date+0x130>
    1e3c:	68bb      	ldr	r3, [r7, #8]
    1e3e:	b2db      	uxtb	r3, r3
    1e40:	f003 031f 	and.w	r3, r3, #31
    1e44:	b2d9      	uxtb	r1, r3
    1e46:	683a      	ldr	r2, [r7, #0]
    1e48:	7893      	ldrb	r3, [r2, #2]
    1e4a:	f361 0345 	bfi	r3, r1, #1, #5
    1e4e:	7093      	strb	r3, [r2, #2]
    1e50:	2301      	movs	r3, #1
    1e52:	4618      	mov	r0, r3
    1e54:	3710      	adds	r7, #16
    1e56:	46bd      	mov	sp, r7
    1e58:	bd80      	pop	{r7, pc}

00001e5a <str_to_time>:
    1e5a:	b580      	push	{r7, lr}
    1e5c:	b084      	sub	sp, #16
    1e5e:	af00      	add	r7, sp, #0
    1e60:	6078      	str	r0, [r7, #4]
    1e62:	6039      	str	r1, [r7, #0]
    1e64:	2300      	movs	r3, #0
    1e66:	60fb      	str	r3, [r7, #12]
    1e68:	2300      	movs	r3, #0
    1e6a:	72fb      	strb	r3, [r7, #11]
    1e6c:	e010      	b.n	1e90 <str_to_time+0x36>
    1e6e:	7afb      	ldrb	r3, [r7, #11]
    1e70:	461a      	mov	r2, r3
    1e72:	0092      	lsls	r2, r2, #2
    1e74:	4413      	add	r3, r2
    1e76:	005b      	lsls	r3, r3, #1
    1e78:	b2da      	uxtb	r2, r3
    1e7a:	68fb      	ldr	r3, [r7, #12]
    1e7c:	1c59      	adds	r1, r3, #1
    1e7e:	60f9      	str	r1, [r7, #12]
    1e80:	4619      	mov	r1, r3
    1e82:	687b      	ldr	r3, [r7, #4]
    1e84:	440b      	add	r3, r1
    1e86:	781b      	ldrb	r3, [r3, #0]
    1e88:	4413      	add	r3, r2
    1e8a:	b2db      	uxtb	r3, r3
    1e8c:	3b30      	subs	r3, #48	; 0x30
    1e8e:	72fb      	strb	r3, [r7, #11]
    1e90:	68fb      	ldr	r3, [r7, #12]
    1e92:	687a      	ldr	r2, [r7, #4]
    1e94:	4413      	add	r3, r2
    1e96:	781b      	ldrb	r3, [r3, #0]
    1e98:	4618      	mov	r0, r3
    1e9a:	f7fe fca2 	bl	7e2 <digit>
    1e9e:	4603      	mov	r3, r0
    1ea0:	2b00      	cmp	r3, #0
    1ea2:	d1e4      	bne.n	1e6e <str_to_time+0x14>
    1ea4:	7afb      	ldrb	r3, [r7, #11]
    1ea6:	2b17      	cmp	r3, #23
    1ea8:	d805      	bhi.n	1eb6 <str_to_time+0x5c>
    1eaa:	68fb      	ldr	r3, [r7, #12]
    1eac:	687a      	ldr	r2, [r7, #4]
    1eae:	4413      	add	r3, r2
    1eb0:	781b      	ldrb	r3, [r3, #0]
    1eb2:	2b3a      	cmp	r3, #58	; 0x3a
    1eb4:	d001      	beq.n	1eba <str_to_time+0x60>
    1eb6:	2300      	movs	r3, #0
    1eb8:	e06d      	b.n	1f96 <str_to_time+0x13c>
    1eba:	7afb      	ldrb	r3, [r7, #11]
    1ebc:	f003 031f 	and.w	r3, r3, #31
    1ec0:	b2d9      	uxtb	r1, r3
    1ec2:	683a      	ldr	r2, [r7, #0]
    1ec4:	6813      	ldr	r3, [r2, #0]
    1ec6:	f361 3310 	bfi	r3, r1, #12, #5
    1eca:	6013      	str	r3, [r2, #0]
    1ecc:	68fb      	ldr	r3, [r7, #12]
    1ece:	3301      	adds	r3, #1
    1ed0:	60fb      	str	r3, [r7, #12]
    1ed2:	2300      	movs	r3, #0
    1ed4:	72fb      	strb	r3, [r7, #11]
    1ed6:	e010      	b.n	1efa <str_to_time+0xa0>
    1ed8:	7afb      	ldrb	r3, [r7, #11]
    1eda:	461a      	mov	r2, r3
    1edc:	0092      	lsls	r2, r2, #2
    1ede:	4413      	add	r3, r2
    1ee0:	005b      	lsls	r3, r3, #1
    1ee2:	b2da      	uxtb	r2, r3
    1ee4:	68fb      	ldr	r3, [r7, #12]
    1ee6:	1c59      	adds	r1, r3, #1
    1ee8:	60f9      	str	r1, [r7, #12]
    1eea:	4619      	mov	r1, r3
    1eec:	687b      	ldr	r3, [r7, #4]
    1eee:	440b      	add	r3, r1
    1ef0:	781b      	ldrb	r3, [r3, #0]
    1ef2:	4413      	add	r3, r2
    1ef4:	b2db      	uxtb	r3, r3
    1ef6:	3b30      	subs	r3, #48	; 0x30
    1ef8:	72fb      	strb	r3, [r7, #11]
    1efa:	68fb      	ldr	r3, [r7, #12]
    1efc:	687a      	ldr	r2, [r7, #4]
    1efe:	4413      	add	r3, r2
    1f00:	781b      	ldrb	r3, [r3, #0]
    1f02:	4618      	mov	r0, r3
    1f04:	f7fe fc6d 	bl	7e2 <digit>
    1f08:	4603      	mov	r3, r0
    1f0a:	2b00      	cmp	r3, #0
    1f0c:	d1e4      	bne.n	1ed8 <str_to_time+0x7e>
    1f0e:	7afb      	ldrb	r3, [r7, #11]
    1f10:	2b3b      	cmp	r3, #59	; 0x3b
    1f12:	d805      	bhi.n	1f20 <str_to_time+0xc6>
    1f14:	68fb      	ldr	r3, [r7, #12]
    1f16:	687a      	ldr	r2, [r7, #4]
    1f18:	4413      	add	r3, r2
    1f1a:	781b      	ldrb	r3, [r3, #0]
    1f1c:	2b3a      	cmp	r3, #58	; 0x3a
    1f1e:	d001      	beq.n	1f24 <str_to_time+0xca>
    1f20:	2300      	movs	r3, #0
    1f22:	e038      	b.n	1f96 <str_to_time+0x13c>
    1f24:	7afb      	ldrb	r3, [r7, #11]
    1f26:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1f2a:	b2d9      	uxtb	r1, r3
    1f2c:	683a      	ldr	r2, [r7, #0]
    1f2e:	8813      	ldrh	r3, [r2, #0]
    1f30:	f361 138b 	bfi	r3, r1, #6, #6
    1f34:	8013      	strh	r3, [r2, #0]
    1f36:	2300      	movs	r3, #0
    1f38:	72fb      	strb	r3, [r7, #11]
    1f3a:	68fb      	ldr	r3, [r7, #12]
    1f3c:	3301      	adds	r3, #1
    1f3e:	60fb      	str	r3, [r7, #12]
    1f40:	e010      	b.n	1f64 <str_to_time+0x10a>
    1f42:	7afb      	ldrb	r3, [r7, #11]
    1f44:	461a      	mov	r2, r3
    1f46:	0092      	lsls	r2, r2, #2
    1f48:	4413      	add	r3, r2
    1f4a:	005b      	lsls	r3, r3, #1
    1f4c:	b2da      	uxtb	r2, r3
    1f4e:	68fb      	ldr	r3, [r7, #12]
    1f50:	1c59      	adds	r1, r3, #1
    1f52:	60f9      	str	r1, [r7, #12]
    1f54:	4619      	mov	r1, r3
    1f56:	687b      	ldr	r3, [r7, #4]
    1f58:	440b      	add	r3, r1
    1f5a:	781b      	ldrb	r3, [r3, #0]
    1f5c:	4413      	add	r3, r2
    1f5e:	b2db      	uxtb	r3, r3
    1f60:	3b30      	subs	r3, #48	; 0x30
    1f62:	72fb      	strb	r3, [r7, #11]
    1f64:	68fb      	ldr	r3, [r7, #12]
    1f66:	687a      	ldr	r2, [r7, #4]
    1f68:	4413      	add	r3, r2
    1f6a:	781b      	ldrb	r3, [r3, #0]
    1f6c:	4618      	mov	r0, r3
    1f6e:	f7fe fc38 	bl	7e2 <digit>
    1f72:	4603      	mov	r3, r0
    1f74:	2b00      	cmp	r3, #0
    1f76:	d1e4      	bne.n	1f42 <str_to_time+0xe8>
    1f78:	7afb      	ldrb	r3, [r7, #11]
    1f7a:	2b3b      	cmp	r3, #59	; 0x3b
    1f7c:	d901      	bls.n	1f82 <str_to_time+0x128>
    1f7e:	2300      	movs	r3, #0
    1f80:	e009      	b.n	1f96 <str_to_time+0x13c>
    1f82:	7afb      	ldrb	r3, [r7, #11]
    1f84:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1f88:	b2d9      	uxtb	r1, r3
    1f8a:	683a      	ldr	r2, [r7, #0]
    1f8c:	7813      	ldrb	r3, [r2, #0]
    1f8e:	f361 0305 	bfi	r3, r1, #0, #6
    1f92:	7013      	strb	r3, [r2, #0]
    1f94:	2301      	movs	r3, #1
    1f96:	4618      	mov	r0, r3
    1f98:	3710      	adds	r7, #16
    1f9a:	46bd      	mov	sp, r7
    1f9c:	bd80      	pop	{r7, pc}

00001f9e <date_str>:
    1f9e:	b480      	push	{r7}
    1fa0:	b085      	sub	sp, #20
    1fa2:	af00      	add	r7, sp, #0
    1fa4:	6078      	str	r0, [r7, #4]
    1fa6:	6039      	str	r1, [r7, #0]
    1fa8:	2300      	movs	r3, #0
    1faa:	60fb      	str	r3, [r7, #12]
    1fac:	687b      	ldr	r3, [r7, #4]
    1fae:	891b      	ldrh	r3, [r3, #8]
    1fb0:	60bb      	str	r3, [r7, #8]
    1fb2:	68fb      	ldr	r3, [r7, #12]
    1fb4:	1c5a      	adds	r2, r3, #1
    1fb6:	60fa      	str	r2, [r7, #12]
    1fb8:	461a      	mov	r2, r3
    1fba:	683b      	ldr	r3, [r7, #0]
    1fbc:	4413      	add	r3, r2
    1fbe:	68ba      	ldr	r2, [r7, #8]
    1fc0:	495d      	ldr	r1, [pc, #372]	; (2138 <date_str+0x19a>)
    1fc2:	fba1 1202 	umull	r1, r2, r1, r2
    1fc6:	0992      	lsrs	r2, r2, #6
    1fc8:	b2d2      	uxtb	r2, r2
    1fca:	3230      	adds	r2, #48	; 0x30
    1fcc:	b2d2      	uxtb	r2, r2
    1fce:	701a      	strb	r2, [r3, #0]
    1fd0:	68bb      	ldr	r3, [r7, #8]
    1fd2:	4a59      	ldr	r2, [pc, #356]	; (2138 <date_str+0x19a>)
    1fd4:	fba2 1203 	umull	r1, r2, r2, r3
    1fd8:	0992      	lsrs	r2, r2, #6
    1fda:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1fde:	fb01 f202 	mul.w	r2, r1, r2
    1fe2:	1a9b      	subs	r3, r3, r2
    1fe4:	60bb      	str	r3, [r7, #8]
    1fe6:	68fb      	ldr	r3, [r7, #12]
    1fe8:	1c5a      	adds	r2, r3, #1
    1fea:	60fa      	str	r2, [r7, #12]
    1fec:	461a      	mov	r2, r3
    1fee:	683b      	ldr	r3, [r7, #0]
    1ff0:	4413      	add	r3, r2
    1ff2:	68ba      	ldr	r2, [r7, #8]
    1ff4:	4951      	ldr	r1, [pc, #324]	; (213c <date_str+0x19e>)
    1ff6:	fba1 1202 	umull	r1, r2, r1, r2
    1ffa:	0952      	lsrs	r2, r2, #5
    1ffc:	b2d2      	uxtb	r2, r2
    1ffe:	3230      	adds	r2, #48	; 0x30
    2000:	b2d2      	uxtb	r2, r2
    2002:	701a      	strb	r2, [r3, #0]
    2004:	68bb      	ldr	r3, [r7, #8]
    2006:	4a4d      	ldr	r2, [pc, #308]	; (213c <date_str+0x19e>)
    2008:	fba2 1203 	umull	r1, r2, r2, r3
    200c:	0952      	lsrs	r2, r2, #5
    200e:	2164      	movs	r1, #100	; 0x64
    2010:	fb01 f202 	mul.w	r2, r1, r2
    2014:	1a9b      	subs	r3, r3, r2
    2016:	60bb      	str	r3, [r7, #8]
    2018:	68fb      	ldr	r3, [r7, #12]
    201a:	1c5a      	adds	r2, r3, #1
    201c:	60fa      	str	r2, [r7, #12]
    201e:	461a      	mov	r2, r3
    2020:	683b      	ldr	r3, [r7, #0]
    2022:	4413      	add	r3, r2
    2024:	68ba      	ldr	r2, [r7, #8]
    2026:	4946      	ldr	r1, [pc, #280]	; (2140 <date_str+0x1a2>)
    2028:	fba1 1202 	umull	r1, r2, r1, r2
    202c:	08d2      	lsrs	r2, r2, #3
    202e:	b2d2      	uxtb	r2, r2
    2030:	3230      	adds	r2, #48	; 0x30
    2032:	b2d2      	uxtb	r2, r2
    2034:	701a      	strb	r2, [r3, #0]
    2036:	68fb      	ldr	r3, [r7, #12]
    2038:	1c5a      	adds	r2, r3, #1
    203a:	60fa      	str	r2, [r7, #12]
    203c:	461a      	mov	r2, r3
    203e:	683b      	ldr	r3, [r7, #0]
    2040:	1898      	adds	r0, r3, r2
    2042:	68b9      	ldr	r1, [r7, #8]
    2044:	4b3e      	ldr	r3, [pc, #248]	; (2140 <date_str+0x1a2>)
    2046:	fba3 2301 	umull	r2, r3, r3, r1
    204a:	08da      	lsrs	r2, r3, #3
    204c:	4613      	mov	r3, r2
    204e:	009b      	lsls	r3, r3, #2
    2050:	4413      	add	r3, r2
    2052:	005b      	lsls	r3, r3, #1
    2054:	1aca      	subs	r2, r1, r3
    2056:	b2d3      	uxtb	r3, r2
    2058:	3330      	adds	r3, #48	; 0x30
    205a:	b2db      	uxtb	r3, r3
    205c:	7003      	strb	r3, [r0, #0]
    205e:	68fb      	ldr	r3, [r7, #12]
    2060:	1c5a      	adds	r2, r3, #1
    2062:	60fa      	str	r2, [r7, #12]
    2064:	461a      	mov	r2, r3
    2066:	683b      	ldr	r3, [r7, #0]
    2068:	4413      	add	r3, r2
    206a:	222f      	movs	r2, #47	; 0x2f
    206c:	701a      	strb	r2, [r3, #0]
    206e:	687b      	ldr	r3, [r7, #4]
    2070:	885b      	ldrh	r3, [r3, #2]
    2072:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2076:	b2db      	uxtb	r3, r3
    2078:	60bb      	str	r3, [r7, #8]
    207a:	68fb      	ldr	r3, [r7, #12]
    207c:	1c5a      	adds	r2, r3, #1
    207e:	60fa      	str	r2, [r7, #12]
    2080:	461a      	mov	r2, r3
    2082:	683b      	ldr	r3, [r7, #0]
    2084:	4413      	add	r3, r2
    2086:	68ba      	ldr	r2, [r7, #8]
    2088:	492d      	ldr	r1, [pc, #180]	; (2140 <date_str+0x1a2>)
    208a:	fba1 1202 	umull	r1, r2, r1, r2
    208e:	08d2      	lsrs	r2, r2, #3
    2090:	b2d2      	uxtb	r2, r2
    2092:	3230      	adds	r2, #48	; 0x30
    2094:	b2d2      	uxtb	r2, r2
    2096:	701a      	strb	r2, [r3, #0]
    2098:	68fb      	ldr	r3, [r7, #12]
    209a:	1c5a      	adds	r2, r3, #1
    209c:	60fa      	str	r2, [r7, #12]
    209e:	461a      	mov	r2, r3
    20a0:	683b      	ldr	r3, [r7, #0]
    20a2:	1898      	adds	r0, r3, r2
    20a4:	68b9      	ldr	r1, [r7, #8]
    20a6:	4b26      	ldr	r3, [pc, #152]	; (2140 <date_str+0x1a2>)
    20a8:	fba3 2301 	umull	r2, r3, r3, r1
    20ac:	08da      	lsrs	r2, r3, #3
    20ae:	4613      	mov	r3, r2
    20b0:	009b      	lsls	r3, r3, #2
    20b2:	4413      	add	r3, r2
    20b4:	005b      	lsls	r3, r3, #1
    20b6:	1aca      	subs	r2, r1, r3
    20b8:	b2d3      	uxtb	r3, r2
    20ba:	3330      	adds	r3, #48	; 0x30
    20bc:	b2db      	uxtb	r3, r3
    20be:	7003      	strb	r3, [r0, #0]
    20c0:	68fb      	ldr	r3, [r7, #12]
    20c2:	1c5a      	adds	r2, r3, #1
    20c4:	60fa      	str	r2, [r7, #12]
    20c6:	461a      	mov	r2, r3
    20c8:	683b      	ldr	r3, [r7, #0]
    20ca:	4413      	add	r3, r2
    20cc:	222f      	movs	r2, #47	; 0x2f
    20ce:	701a      	strb	r2, [r3, #0]
    20d0:	687b      	ldr	r3, [r7, #4]
    20d2:	789b      	ldrb	r3, [r3, #2]
    20d4:	f3c3 0344 	ubfx	r3, r3, #1, #5
    20d8:	b2db      	uxtb	r3, r3
    20da:	60bb      	str	r3, [r7, #8]
    20dc:	68fb      	ldr	r3, [r7, #12]
    20de:	1c5a      	adds	r2, r3, #1
    20e0:	60fa      	str	r2, [r7, #12]
    20e2:	461a      	mov	r2, r3
    20e4:	683b      	ldr	r3, [r7, #0]
    20e6:	4413      	add	r3, r2
    20e8:	68ba      	ldr	r2, [r7, #8]
    20ea:	4915      	ldr	r1, [pc, #84]	; (2140 <date_str+0x1a2>)
    20ec:	fba1 1202 	umull	r1, r2, r1, r2
    20f0:	08d2      	lsrs	r2, r2, #3
    20f2:	b2d2      	uxtb	r2, r2
    20f4:	3230      	adds	r2, #48	; 0x30
    20f6:	b2d2      	uxtb	r2, r2
    20f8:	701a      	strb	r2, [r3, #0]
    20fa:	68fb      	ldr	r3, [r7, #12]
    20fc:	1c5a      	adds	r2, r3, #1
    20fe:	60fa      	str	r2, [r7, #12]
    2100:	461a      	mov	r2, r3
    2102:	683b      	ldr	r3, [r7, #0]
    2104:	1898      	adds	r0, r3, r2
    2106:	68b9      	ldr	r1, [r7, #8]
    2108:	4b0d      	ldr	r3, [pc, #52]	; (2140 <date_str+0x1a2>)
    210a:	fba3 2301 	umull	r2, r3, r3, r1
    210e:	08da      	lsrs	r2, r3, #3
    2110:	4613      	mov	r3, r2
    2112:	009b      	lsls	r3, r3, #2
    2114:	4413      	add	r3, r2
    2116:	005b      	lsls	r3, r3, #1
    2118:	1aca      	subs	r2, r1, r3
    211a:	b2d3      	uxtb	r3, r2
    211c:	3330      	adds	r3, #48	; 0x30
    211e:	b2db      	uxtb	r3, r3
    2120:	7003      	strb	r3, [r0, #0]
    2122:	68fb      	ldr	r3, [r7, #12]
    2124:	683a      	ldr	r2, [r7, #0]
    2126:	4413      	add	r3, r2
    2128:	2200      	movs	r2, #0
    212a:	701a      	strb	r2, [r3, #0]
    212c:	bf00      	nop
    212e:	3714      	adds	r7, #20
    2130:	46bd      	mov	sp, r7
    2132:	bc80      	pop	{r7}
    2134:	4770      	bx	lr
    2136:	bf00      	nop
    2138:	10624dd3 	.word	0x10624dd3
    213c:	51eb851f 	.word	0x51eb851f
    2140:	cccccccd 	.word	0xcccccccd

00002144 <time_str>:
    2144:	b480      	push	{r7}
    2146:	b085      	sub	sp, #20
    2148:	af00      	add	r7, sp, #0
    214a:	6078      	str	r0, [r7, #4]
    214c:	6039      	str	r1, [r7, #0]
    214e:	2300      	movs	r3, #0
    2150:	60fb      	str	r3, [r7, #12]
    2152:	687b      	ldr	r3, [r7, #4]
    2154:	681b      	ldr	r3, [r3, #0]
    2156:	f3c3 3304 	ubfx	r3, r3, #12, #5
    215a:	b2db      	uxtb	r3, r3
    215c:	60bb      	str	r3, [r7, #8]
    215e:	68fb      	ldr	r3, [r7, #12]
    2160:	1c5a      	adds	r2, r3, #1
    2162:	60fa      	str	r2, [r7, #12]
    2164:	461a      	mov	r2, r3
    2166:	683b      	ldr	r3, [r7, #0]
    2168:	4413      	add	r3, r2
    216a:	68ba      	ldr	r2, [r7, #8]
    216c:	4943      	ldr	r1, [pc, #268]	; (227c <time_str+0x138>)
    216e:	fba1 1202 	umull	r1, r2, r1, r2
    2172:	08d2      	lsrs	r2, r2, #3
    2174:	b2d2      	uxtb	r2, r2
    2176:	3230      	adds	r2, #48	; 0x30
    2178:	b2d2      	uxtb	r2, r2
    217a:	701a      	strb	r2, [r3, #0]
    217c:	68fb      	ldr	r3, [r7, #12]
    217e:	1c5a      	adds	r2, r3, #1
    2180:	60fa      	str	r2, [r7, #12]
    2182:	461a      	mov	r2, r3
    2184:	683b      	ldr	r3, [r7, #0]
    2186:	1898      	adds	r0, r3, r2
    2188:	68b9      	ldr	r1, [r7, #8]
    218a:	4b3c      	ldr	r3, [pc, #240]	; (227c <time_str+0x138>)
    218c:	fba3 2301 	umull	r2, r3, r3, r1
    2190:	08da      	lsrs	r2, r3, #3
    2192:	4613      	mov	r3, r2
    2194:	009b      	lsls	r3, r3, #2
    2196:	4413      	add	r3, r2
    2198:	005b      	lsls	r3, r3, #1
    219a:	1aca      	subs	r2, r1, r3
    219c:	b2d3      	uxtb	r3, r2
    219e:	3330      	adds	r3, #48	; 0x30
    21a0:	b2db      	uxtb	r3, r3
    21a2:	7003      	strb	r3, [r0, #0]
    21a4:	68fb      	ldr	r3, [r7, #12]
    21a6:	1c5a      	adds	r2, r3, #1
    21a8:	60fa      	str	r2, [r7, #12]
    21aa:	461a      	mov	r2, r3
    21ac:	683b      	ldr	r3, [r7, #0]
    21ae:	4413      	add	r3, r2
    21b0:	223a      	movs	r2, #58	; 0x3a
    21b2:	701a      	strb	r2, [r3, #0]
    21b4:	687b      	ldr	r3, [r7, #4]
    21b6:	881b      	ldrh	r3, [r3, #0]
    21b8:	f3c3 1385 	ubfx	r3, r3, #6, #6
    21bc:	b2db      	uxtb	r3, r3
    21be:	60bb      	str	r3, [r7, #8]
    21c0:	68fb      	ldr	r3, [r7, #12]
    21c2:	1c5a      	adds	r2, r3, #1
    21c4:	60fa      	str	r2, [r7, #12]
    21c6:	461a      	mov	r2, r3
    21c8:	683b      	ldr	r3, [r7, #0]
    21ca:	4413      	add	r3, r2
    21cc:	68ba      	ldr	r2, [r7, #8]
    21ce:	492b      	ldr	r1, [pc, #172]	; (227c <time_str+0x138>)
    21d0:	fba1 1202 	umull	r1, r2, r1, r2
    21d4:	08d2      	lsrs	r2, r2, #3
    21d6:	b2d2      	uxtb	r2, r2
    21d8:	3230      	adds	r2, #48	; 0x30
    21da:	b2d2      	uxtb	r2, r2
    21dc:	701a      	strb	r2, [r3, #0]
    21de:	68fb      	ldr	r3, [r7, #12]
    21e0:	1c5a      	adds	r2, r3, #1
    21e2:	60fa      	str	r2, [r7, #12]
    21e4:	461a      	mov	r2, r3
    21e6:	683b      	ldr	r3, [r7, #0]
    21e8:	1898      	adds	r0, r3, r2
    21ea:	68b9      	ldr	r1, [r7, #8]
    21ec:	4b23      	ldr	r3, [pc, #140]	; (227c <time_str+0x138>)
    21ee:	fba3 2301 	umull	r2, r3, r3, r1
    21f2:	08da      	lsrs	r2, r3, #3
    21f4:	4613      	mov	r3, r2
    21f6:	009b      	lsls	r3, r3, #2
    21f8:	4413      	add	r3, r2
    21fa:	005b      	lsls	r3, r3, #1
    21fc:	1aca      	subs	r2, r1, r3
    21fe:	b2d3      	uxtb	r3, r2
    2200:	3330      	adds	r3, #48	; 0x30
    2202:	b2db      	uxtb	r3, r3
    2204:	7003      	strb	r3, [r0, #0]
    2206:	68fb      	ldr	r3, [r7, #12]
    2208:	1c5a      	adds	r2, r3, #1
    220a:	60fa      	str	r2, [r7, #12]
    220c:	461a      	mov	r2, r3
    220e:	683b      	ldr	r3, [r7, #0]
    2210:	4413      	add	r3, r2
    2212:	223a      	movs	r2, #58	; 0x3a
    2214:	701a      	strb	r2, [r3, #0]
    2216:	687b      	ldr	r3, [r7, #4]
    2218:	781b      	ldrb	r3, [r3, #0]
    221a:	f3c3 0305 	ubfx	r3, r3, #0, #6
    221e:	b2db      	uxtb	r3, r3
    2220:	60bb      	str	r3, [r7, #8]
    2222:	68fb      	ldr	r3, [r7, #12]
    2224:	1c5a      	adds	r2, r3, #1
    2226:	60fa      	str	r2, [r7, #12]
    2228:	461a      	mov	r2, r3
    222a:	683b      	ldr	r3, [r7, #0]
    222c:	4413      	add	r3, r2
    222e:	68ba      	ldr	r2, [r7, #8]
    2230:	4912      	ldr	r1, [pc, #72]	; (227c <time_str+0x138>)
    2232:	fba1 1202 	umull	r1, r2, r1, r2
    2236:	08d2      	lsrs	r2, r2, #3
    2238:	b2d2      	uxtb	r2, r2
    223a:	3230      	adds	r2, #48	; 0x30
    223c:	b2d2      	uxtb	r2, r2
    223e:	701a      	strb	r2, [r3, #0]
    2240:	68fb      	ldr	r3, [r7, #12]
    2242:	1c5a      	adds	r2, r3, #1
    2244:	60fa      	str	r2, [r7, #12]
    2246:	461a      	mov	r2, r3
    2248:	683b      	ldr	r3, [r7, #0]
    224a:	1898      	adds	r0, r3, r2
    224c:	68b9      	ldr	r1, [r7, #8]
    224e:	4b0b      	ldr	r3, [pc, #44]	; (227c <time_str+0x138>)
    2250:	fba3 2301 	umull	r2, r3, r3, r1
    2254:	08da      	lsrs	r2, r3, #3
    2256:	4613      	mov	r3, r2
    2258:	009b      	lsls	r3, r3, #2
    225a:	4413      	add	r3, r2
    225c:	005b      	lsls	r3, r3, #1
    225e:	1aca      	subs	r2, r1, r3
    2260:	b2d3      	uxtb	r3, r2
    2262:	3330      	adds	r3, #48	; 0x30
    2264:	b2db      	uxtb	r3, r3
    2266:	7003      	strb	r3, [r0, #0]
    2268:	68fb      	ldr	r3, [r7, #12]
    226a:	683a      	ldr	r2, [r7, #0]
    226c:	4413      	add	r3, r2
    226e:	2200      	movs	r2, #0
    2270:	701a      	strb	r2, [r3, #0]
    2272:	bf00      	nop
    2274:	3714      	adds	r7, #20
    2276:	46bd      	mov	sp, r7
    2278:	bc80      	pop	{r7}
    227a:	4770      	bx	lr
    227c:	cccccccd 	.word	0xcccccccd

00002280 <get_fattime>:
    2280:	b580      	push	{r7, lr}
    2282:	b084      	sub	sp, #16
    2284:	af00      	add	r7, sp, #0
    2286:	463b      	mov	r3, r7
    2288:	4618      	mov	r0, r3
    228a:	f7ff fa69 	bl	1760 <get_date_time>
    228e:	783b      	ldrb	r3, [r7, #0]
    2290:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2294:	b2db      	uxtb	r3, r3
    2296:	0fda      	lsrs	r2, r3, #31
    2298:	4413      	add	r3, r2
    229a:	105b      	asrs	r3, r3, #1
    229c:	b2db      	uxtb	r3, r3
    229e:	f003 031f 	and.w	r3, r3, #31
    22a2:	b2da      	uxtb	r2, r3
    22a4:	7b3b      	ldrb	r3, [r7, #12]
    22a6:	f362 0304 	bfi	r3, r2, #0, #5
    22aa:	733b      	strb	r3, [r7, #12]
    22ac:	883b      	ldrh	r3, [r7, #0]
    22ae:	f3c3 1385 	ubfx	r3, r3, #6, #6
    22b2:	b2da      	uxtb	r2, r3
    22b4:	89bb      	ldrh	r3, [r7, #12]
    22b6:	f362 134a 	bfi	r3, r2, #5, #6
    22ba:	81bb      	strh	r3, [r7, #12]
    22bc:	683b      	ldr	r3, [r7, #0]
    22be:	f3c3 3304 	ubfx	r3, r3, #12, #5
    22c2:	b2da      	uxtb	r2, r3
    22c4:	7b7b      	ldrb	r3, [r7, #13]
    22c6:	f362 03c7 	bfi	r3, r2, #3, #5
    22ca:	737b      	strb	r3, [r7, #13]
    22cc:	78bb      	ldrb	r3, [r7, #2]
    22ce:	f3c3 0344 	ubfx	r3, r3, #1, #5
    22d2:	b2da      	uxtb	r2, r3
    22d4:	7bbb      	ldrb	r3, [r7, #14]
    22d6:	f362 0304 	bfi	r3, r2, #0, #5
    22da:	73bb      	strb	r3, [r7, #14]
    22dc:	887b      	ldrh	r3, [r7, #2]
    22de:	f3c3 1383 	ubfx	r3, r3, #6, #4
    22e2:	b2da      	uxtb	r2, r3
    22e4:	89fb      	ldrh	r3, [r7, #14]
    22e6:	f362 1348 	bfi	r3, r2, #5, #4
    22ea:	81fb      	strh	r3, [r7, #14]
    22ec:	893b      	ldrh	r3, [r7, #8]
    22ee:	b2db      	uxtb	r3, r3
    22f0:	3344      	adds	r3, #68	; 0x44
    22f2:	b2db      	uxtb	r3, r3
    22f4:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    22f8:	b2da      	uxtb	r2, r3
    22fa:	7bfb      	ldrb	r3, [r7, #15]
    22fc:	f362 0347 	bfi	r3, r2, #1, #7
    2300:	73fb      	strb	r3, [r7, #15]
    2302:	68fb      	ldr	r3, [r7, #12]
    2304:	4618      	mov	r0, r3
    2306:	3710      	adds	r7, #16
    2308:	46bd      	mov	sp, r7
    230a:	bd80      	pop	{r7, pc}

0000230c <RTC_handler>:
    230c:	b480      	push	{r7}
    230e:	b083      	sub	sp, #12
    2310:	af00      	add	r7, sp, #0
    2312:	4b0a      	ldr	r3, [pc, #40]	; (233c <RTC_handler+0x30>)
    2314:	685b      	ldr	r3, [r3, #4]
    2316:	f003 0301 	and.w	r3, r3, #1
    231a:	2b00      	cmp	r3, #0
    231c:	d001      	beq.n	2322 <RTC_handler+0x16>
    231e:	4b07      	ldr	r3, [pc, #28]	; (233c <RTC_handler+0x30>)
    2320:	685b      	ldr	r3, [r3, #4]
    2322:	4b06      	ldr	r3, [pc, #24]	; (233c <RTC_handler+0x30>)
    2324:	685b      	ldr	r3, [r3, #4]
    2326:	f003 0302 	and.w	r3, r3, #2
    232a:	2b00      	cmp	r3, #0
    232c:	d001      	beq.n	2332 <RTC_handler+0x26>
    232e:	4b03      	ldr	r3, [pc, #12]	; (233c <RTC_handler+0x30>)
    2330:	685b      	ldr	r3, [r3, #4]
    2332:	bf00      	nop
    2334:	370c      	adds	r7, #12
    2336:	46bd      	mov	sp, r7
    2338:	bc80      	pop	{r7}
    233a:	4770      	bx	lr
    233c:	40002800 	.word	0x40002800

00002340 <spi_baudrate>:
    2340:	b480      	push	{r7}
    2342:	b083      	sub	sp, #12
    2344:	af00      	add	r7, sp, #0
    2346:	6078      	str	r0, [r7, #4]
    2348:	6039      	str	r1, [r7, #0]
    234a:	687b      	ldr	r3, [r7, #4]
    234c:	681b      	ldr	r3, [r3, #0]
    234e:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    2352:	687b      	ldr	r3, [r7, #4]
    2354:	601a      	str	r2, [r3, #0]
    2356:	687b      	ldr	r3, [r7, #4]
    2358:	681a      	ldr	r2, [r3, #0]
    235a:	683b      	ldr	r3, [r7, #0]
    235c:	00db      	lsls	r3, r3, #3
    235e:	431a      	orrs	r2, r3
    2360:	687b      	ldr	r3, [r7, #4]
    2362:	601a      	str	r2, [r3, #0]
    2364:	bf00      	nop
    2366:	370c      	adds	r7, #12
    2368:	46bd      	mov	sp, r7
    236a:	bc80      	pop	{r7}
    236c:	4770      	bx	lr

0000236e <spi_config_port>:
    236e:	b580      	push	{r7, lr}
    2370:	b082      	sub	sp, #8
    2372:	af00      	add	r7, sp, #0
    2374:	6078      	str	r0, [r7, #4]
    2376:	6039      	str	r1, [r7, #0]
    2378:	4a33      	ldr	r2, [pc, #204]	; (2448 <spi_config_port+0xda>)
    237a:	4b33      	ldr	r3, [pc, #204]	; (2448 <spi_config_port+0xda>)
    237c:	699b      	ldr	r3, [r3, #24]
    237e:	f043 0301 	orr.w	r3, r3, #1
    2382:	6193      	str	r3, [r2, #24]
    2384:	687b      	ldr	r3, [r7, #4]
    2386:	4a31      	ldr	r2, [pc, #196]	; (244c <spi_config_port+0xde>)
    2388:	4293      	cmp	r3, r2
    238a:	d13e      	bne.n	240a <spi_config_port+0x9c>
    238c:	683b      	ldr	r3, [r7, #0]
    238e:	2b00      	cmp	r3, #0
    2390:	d11a      	bne.n	23c8 <spi_config_port+0x5a>
    2392:	4a2d      	ldr	r2, [pc, #180]	; (2448 <spi_config_port+0xda>)
    2394:	4b2c      	ldr	r3, [pc, #176]	; (2448 <spi_config_port+0xda>)
    2396:	699b      	ldr	r3, [r3, #24]
    2398:	f043 0304 	orr.w	r3, r3, #4
    239c:	6193      	str	r3, [r2, #24]
    239e:	2203      	movs	r2, #3
    23a0:	2104      	movs	r1, #4
    23a2:	482b      	ldr	r0, [pc, #172]	; (2450 <spi_config_port+0xe2>)
    23a4:	f7fe fc25 	bl	bf2 <config_pin>
    23a8:	220b      	movs	r2, #11
    23aa:	2105      	movs	r1, #5
    23ac:	4828      	ldr	r0, [pc, #160]	; (2450 <spi_config_port+0xe2>)
    23ae:	f7fe fc20 	bl	bf2 <config_pin>
    23b2:	2204      	movs	r2, #4
    23b4:	2106      	movs	r1, #6
    23b6:	4826      	ldr	r0, [pc, #152]	; (2450 <spi_config_port+0xe2>)
    23b8:	f7fe fc1b 	bl	bf2 <config_pin>
    23bc:	220b      	movs	r2, #11
    23be:	2107      	movs	r1, #7
    23c0:	4823      	ldr	r0, [pc, #140]	; (2450 <spi_config_port+0xe2>)
    23c2:	f7fe fc16 	bl	bf2 <config_pin>
    23c6:	e03a      	b.n	243e <spi_config_port+0xd0>
    23c8:	4a1f      	ldr	r2, [pc, #124]	; (2448 <spi_config_port+0xda>)
    23ca:	4b1f      	ldr	r3, [pc, #124]	; (2448 <spi_config_port+0xda>)
    23cc:	699b      	ldr	r3, [r3, #24]
    23ce:	f043 030d 	orr.w	r3, r3, #13
    23d2:	6193      	str	r3, [r2, #24]
    23d4:	4a1f      	ldr	r2, [pc, #124]	; (2454 <spi_config_port+0xe6>)
    23d6:	4b1f      	ldr	r3, [pc, #124]	; (2454 <spi_config_port+0xe6>)
    23d8:	685b      	ldr	r3, [r3, #4]
    23da:	f043 0301 	orr.w	r3, r3, #1
    23de:	6053      	str	r3, [r2, #4]
    23e0:	2203      	movs	r2, #3
    23e2:	210f      	movs	r1, #15
    23e4:	481a      	ldr	r0, [pc, #104]	; (2450 <spi_config_port+0xe2>)
    23e6:	f7fe fc04 	bl	bf2 <config_pin>
    23ea:	220b      	movs	r2, #11
    23ec:	2103      	movs	r1, #3
    23ee:	481a      	ldr	r0, [pc, #104]	; (2458 <spi_config_port+0xea>)
    23f0:	f7fe fbff 	bl	bf2 <config_pin>
    23f4:	2204      	movs	r2, #4
    23f6:	2104      	movs	r1, #4
    23f8:	4817      	ldr	r0, [pc, #92]	; (2458 <spi_config_port+0xea>)
    23fa:	f7fe fbfa 	bl	bf2 <config_pin>
    23fe:	220b      	movs	r2, #11
    2400:	2105      	movs	r1, #5
    2402:	4815      	ldr	r0, [pc, #84]	; (2458 <spi_config_port+0xea>)
    2404:	f7fe fbf5 	bl	bf2 <config_pin>
    2408:	e019      	b.n	243e <spi_config_port+0xd0>
    240a:	4a0f      	ldr	r2, [pc, #60]	; (2448 <spi_config_port+0xda>)
    240c:	4b0e      	ldr	r3, [pc, #56]	; (2448 <spi_config_port+0xda>)
    240e:	699b      	ldr	r3, [r3, #24]
    2410:	f043 0308 	orr.w	r3, r3, #8
    2414:	6193      	str	r3, [r2, #24]
    2416:	2203      	movs	r2, #3
    2418:	2102      	movs	r1, #2
    241a:	480f      	ldr	r0, [pc, #60]	; (2458 <spi_config_port+0xea>)
    241c:	f7fe fbe9 	bl	bf2 <config_pin>
    2420:	220b      	movs	r2, #11
    2422:	210d      	movs	r1, #13
    2424:	480c      	ldr	r0, [pc, #48]	; (2458 <spi_config_port+0xea>)
    2426:	f7fe fbe4 	bl	bf2 <config_pin>
    242a:	2204      	movs	r2, #4
    242c:	210e      	movs	r1, #14
    242e:	480a      	ldr	r0, [pc, #40]	; (2458 <spi_config_port+0xea>)
    2430:	f7fe fbdf 	bl	bf2 <config_pin>
    2434:	220b      	movs	r2, #11
    2436:	210f      	movs	r1, #15
    2438:	4807      	ldr	r0, [pc, #28]	; (2458 <spi_config_port+0xea>)
    243a:	f7fe fbda 	bl	bf2 <config_pin>
    243e:	bf00      	nop
    2440:	3708      	adds	r7, #8
    2442:	46bd      	mov	sp, r7
    2444:	bd80      	pop	{r7, pc}
    2446:	bf00      	nop
    2448:	40021000 	.word	0x40021000
    244c:	40013000 	.word	0x40013000
    2450:	40010800 	.word	0x40010800
    2454:	40010000 	.word	0x40010000
    2458:	40010c00 	.word	0x40010c00

0000245c <spi_init>:
    245c:	b580      	push	{r7, lr}
    245e:	b084      	sub	sp, #16
    2460:	af00      	add	r7, sp, #0
    2462:	60f8      	str	r0, [r7, #12]
    2464:	60b9      	str	r1, [r7, #8]
    2466:	607a      	str	r2, [r7, #4]
    2468:	603b      	str	r3, [r7, #0]
    246a:	6839      	ldr	r1, [r7, #0]
    246c:	68f8      	ldr	r0, [r7, #12]
    246e:	f7ff ff7e 	bl	236e <spi_config_port>
    2472:	68fb      	ldr	r3, [r7, #12]
    2474:	4a10      	ldr	r2, [pc, #64]	; (24b8 <spi_init+0x5c>)
    2476:	4293      	cmp	r3, r2
    2478:	d106      	bne.n	2488 <spi_init+0x2c>
    247a:	4a10      	ldr	r2, [pc, #64]	; (24bc <spi_init+0x60>)
    247c:	4b0f      	ldr	r3, [pc, #60]	; (24bc <spi_init+0x60>)
    247e:	699b      	ldr	r3, [r3, #24]
    2480:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2484:	6193      	str	r3, [r2, #24]
    2486:	e005      	b.n	2494 <spi_init+0x38>
    2488:	4a0c      	ldr	r2, [pc, #48]	; (24bc <spi_init+0x60>)
    248a:	4b0c      	ldr	r3, [pc, #48]	; (24bc <spi_init+0x60>)
    248c:	69db      	ldr	r3, [r3, #28]
    248e:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2492:	61d3      	str	r3, [r2, #28]
    2494:	68fb      	ldr	r3, [r7, #12]
    2496:	687a      	ldr	r2, [r7, #4]
    2498:	601a      	str	r2, [r3, #0]
    249a:	68b9      	ldr	r1, [r7, #8]
    249c:	68f8      	ldr	r0, [r7, #12]
    249e:	f7ff ff4f 	bl	2340 <spi_baudrate>
    24a2:	68fb      	ldr	r3, [r7, #12]
    24a4:	681b      	ldr	r3, [r3, #0]
    24a6:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    24aa:	68fb      	ldr	r3, [r7, #12]
    24ac:	601a      	str	r2, [r3, #0]
    24ae:	bf00      	nop
    24b0:	3710      	adds	r7, #16
    24b2:	46bd      	mov	sp, r7
    24b4:	bd80      	pop	{r7, pc}
    24b6:	bf00      	nop
    24b8:	40013000 	.word	0x40013000
    24bc:	40021000 	.word	0x40021000

000024c0 <spi_send>:
    24c0:	b480      	push	{r7}
    24c2:	b085      	sub	sp, #20
    24c4:	af00      	add	r7, sp, #0
    24c6:	6078      	str	r0, [r7, #4]
    24c8:	460b      	mov	r3, r1
    24ca:	70fb      	strb	r3, [r7, #3]
    24cc:	bf00      	nop
    24ce:	687b      	ldr	r3, [r7, #4]
    24d0:	689b      	ldr	r3, [r3, #8]
    24d2:	f003 0302 	and.w	r3, r3, #2
    24d6:	2b00      	cmp	r3, #0
    24d8:	d0f9      	beq.n	24ce <spi_send+0xe>
    24da:	78fa      	ldrb	r2, [r7, #3]
    24dc:	687b      	ldr	r3, [r7, #4]
    24de:	60da      	str	r2, [r3, #12]
    24e0:	bf00      	nop
    24e2:	687b      	ldr	r3, [r7, #4]
    24e4:	689b      	ldr	r3, [r3, #8]
    24e6:	f003 0301 	and.w	r3, r3, #1
    24ea:	2b00      	cmp	r3, #0
    24ec:	d0f9      	beq.n	24e2 <spi_send+0x22>
    24ee:	687b      	ldr	r3, [r7, #4]
    24f0:	68db      	ldr	r3, [r3, #12]
    24f2:	73fb      	strb	r3, [r7, #15]
    24f4:	bf00      	nop
    24f6:	3714      	adds	r7, #20
    24f8:	46bd      	mov	sp, r7
    24fa:	bc80      	pop	{r7}
    24fc:	4770      	bx	lr

000024fe <spi_receive>:
    24fe:	b480      	push	{r7}
    2500:	b085      	sub	sp, #20
    2502:	af00      	add	r7, sp, #0
    2504:	6078      	str	r0, [r7, #4]
    2506:	bf00      	nop
    2508:	687b      	ldr	r3, [r7, #4]
    250a:	689b      	ldr	r3, [r3, #8]
    250c:	f003 0302 	and.w	r3, r3, #2
    2510:	2b00      	cmp	r3, #0
    2512:	d0f9      	beq.n	2508 <spi_receive+0xa>
    2514:	687b      	ldr	r3, [r7, #4]
    2516:	22ff      	movs	r2, #255	; 0xff
    2518:	60da      	str	r2, [r3, #12]
    251a:	bf00      	nop
    251c:	687b      	ldr	r3, [r7, #4]
    251e:	689b      	ldr	r3, [r3, #8]
    2520:	f003 0301 	and.w	r3, r3, #1
    2524:	2b00      	cmp	r3, #0
    2526:	d0f9      	beq.n	251c <spi_receive+0x1e>
    2528:	687b      	ldr	r3, [r7, #4]
    252a:	68db      	ldr	r3, [r3, #12]
    252c:	73fb      	strb	r3, [r7, #15]
    252e:	7bfb      	ldrb	r3, [r7, #15]
    2530:	4618      	mov	r0, r3
    2532:	3714      	adds	r7, #20
    2534:	46bd      	mov	sp, r7
    2536:	bc80      	pop	{r7}
    2538:	4770      	bx	lr

0000253a <spi_send_block>:
    253a:	b480      	push	{r7}
    253c:	b087      	sub	sp, #28
    253e:	af00      	add	r7, sp, #0
    2540:	60f8      	str	r0, [r7, #12]
    2542:	60b9      	str	r1, [r7, #8]
    2544:	607a      	str	r2, [r7, #4]
    2546:	e010      	b.n	256a <spi_send_block+0x30>
    2548:	68bb      	ldr	r3, [r7, #8]
    254a:	1c5a      	adds	r2, r3, #1
    254c:	60ba      	str	r2, [r7, #8]
    254e:	781b      	ldrb	r3, [r3, #0]
    2550:	461a      	mov	r2, r3
    2552:	68fb      	ldr	r3, [r7, #12]
    2554:	60da      	str	r2, [r3, #12]
    2556:	bf00      	nop
    2558:	68fb      	ldr	r3, [r7, #12]
    255a:	689b      	ldr	r3, [r3, #8]
    255c:	f003 0302 	and.w	r3, r3, #2
    2560:	2b00      	cmp	r3, #0
    2562:	d0f9      	beq.n	2558 <spi_send_block+0x1e>
    2564:	687b      	ldr	r3, [r7, #4]
    2566:	3b01      	subs	r3, #1
    2568:	607b      	str	r3, [r7, #4]
    256a:	687b      	ldr	r3, [r7, #4]
    256c:	2b00      	cmp	r3, #0
    256e:	d1eb      	bne.n	2548 <spi_send_block+0xe>
    2570:	bf00      	nop
    2572:	68fb      	ldr	r3, [r7, #12]
    2574:	689b      	ldr	r3, [r3, #8]
    2576:	f003 0380 	and.w	r3, r3, #128	; 0x80
    257a:	2b00      	cmp	r3, #0
    257c:	d1f9      	bne.n	2572 <spi_send_block+0x38>
    257e:	68fb      	ldr	r3, [r7, #12]
    2580:	68db      	ldr	r3, [r3, #12]
    2582:	75fb      	strb	r3, [r7, #23]
    2584:	bf00      	nop
    2586:	371c      	adds	r7, #28
    2588:	46bd      	mov	sp, r7
    258a:	bc80      	pop	{r7}
    258c:	4770      	bx	lr

0000258e <spi_receive_block>:
    258e:	b480      	push	{r7}
    2590:	b085      	sub	sp, #20
    2592:	af00      	add	r7, sp, #0
    2594:	60f8      	str	r0, [r7, #12]
    2596:	60b9      	str	r1, [r7, #8]
    2598:	607a      	str	r2, [r7, #4]
    259a:	e013      	b.n	25c4 <spi_receive_block+0x36>
    259c:	68fb      	ldr	r3, [r7, #12]
    259e:	2200      	movs	r2, #0
    25a0:	60da      	str	r2, [r3, #12]
    25a2:	bf00      	nop
    25a4:	68fb      	ldr	r3, [r7, #12]
    25a6:	689b      	ldr	r3, [r3, #8]
    25a8:	f003 0301 	and.w	r3, r3, #1
    25ac:	2b00      	cmp	r3, #0
    25ae:	d0f9      	beq.n	25a4 <spi_receive_block+0x16>
    25b0:	68bb      	ldr	r3, [r7, #8]
    25b2:	1c5a      	adds	r2, r3, #1
    25b4:	60ba      	str	r2, [r7, #8]
    25b6:	68fa      	ldr	r2, [r7, #12]
    25b8:	68d2      	ldr	r2, [r2, #12]
    25ba:	b2d2      	uxtb	r2, r2
    25bc:	701a      	strb	r2, [r3, #0]
    25be:	687b      	ldr	r3, [r7, #4]
    25c0:	3b01      	subs	r3, #1
    25c2:	607b      	str	r3, [r7, #4]
    25c4:	687b      	ldr	r3, [r7, #4]
    25c6:	2b00      	cmp	r3, #0
    25c8:	d1e8      	bne.n	259c <spi_receive_block+0xe>
    25ca:	bf00      	nop
    25cc:	3714      	adds	r7, #20
    25ce:	46bd      	mov	sp, r7
    25d0:	bc80      	pop	{r7}
    25d2:	4770      	bx	lr

000025d4 <reset_mcu>:
    25d4:	4b01      	ldr	r3, [pc, #4]	; (25dc <reset_mcu+0x8>)
    25d6:	4a02      	ldr	r2, [pc, #8]	; (25e0 <reset_mcu+0xc>)
    25d8:	601a      	str	r2, [r3, #0]
    25da:	bf00      	nop
    25dc:	e000ed0c 	.word	0xe000ed0c
    25e0:	05fa0004 	.word	0x05fa0004

000025e4 <print_fault>:
    25e4:	b580      	push	{r7, lr}
    25e6:	b082      	sub	sp, #8
    25e8:	af00      	add	r7, sp, #0
    25ea:	6078      	str	r0, [r7, #4]
    25ec:	6039      	str	r1, [r7, #0]
    25ee:	6878      	ldr	r0, [r7, #4]
    25f0:	f7fe fc32 	bl	e58 <gfx_print>
    25f4:	4818      	ldr	r0, [pc, #96]	; (2658 <print_fault+0x74>)
    25f6:	f7fe fc2f 	bl	e58 <gfx_print>
    25fa:	683b      	ldr	r3, [r7, #0]
    25fc:	2b00      	cmp	r3, #0
    25fe:	d004      	beq.n	260a <print_fault+0x26>
    2600:	683b      	ldr	r3, [r7, #0]
    2602:	2110      	movs	r1, #16
    2604:	4618      	mov	r0, r3
    2606:	f7fe fc4a 	bl	e9e <gfx_print_int>
    260a:	200d      	movs	r0, #13
    260c:	f7fe fbc4 	bl	d98 <gfx_putchar>
    2610:	4812      	ldr	r0, [pc, #72]	; (265c <print_fault+0x78>)
    2612:	f7fe fc21 	bl	e58 <gfx_print>
    2616:	4b12      	ldr	r3, [pc, #72]	; (2660 <print_fault+0x7c>)
    2618:	681b      	ldr	r3, [r3, #0]
    261a:	f3c3 430f 	ubfx	r3, r3, #16, #16
    261e:	b29b      	uxth	r3, r3
    2620:	2110      	movs	r1, #16
    2622:	4618      	mov	r0, r3
    2624:	f7fe fc3b 	bl	e9e <gfx_print_int>
    2628:	480e      	ldr	r0, [pc, #56]	; (2664 <print_fault+0x80>)
    262a:	f7fe fc15 	bl	e58 <gfx_print>
    262e:	4b0c      	ldr	r3, [pc, #48]	; (2660 <print_fault+0x7c>)
    2630:	681b      	ldr	r3, [r3, #0]
    2632:	f3c3 2307 	ubfx	r3, r3, #8, #8
    2636:	b2db      	uxtb	r3, r3
    2638:	2110      	movs	r1, #16
    263a:	4618      	mov	r0, r3
    263c:	f7fe fc2f 	bl	e9e <gfx_print_int>
    2640:	4809      	ldr	r0, [pc, #36]	; (2668 <print_fault+0x84>)
    2642:	f7fe fc09 	bl	e58 <gfx_print>
    2646:	4b06      	ldr	r3, [pc, #24]	; (2660 <print_fault+0x7c>)
    2648:	681b      	ldr	r3, [r3, #0]
    264a:	b2db      	uxtb	r3, r3
    264c:	2110      	movs	r1, #16
    264e:	4618      	mov	r0, r3
    2650:	f7fe fc25 	bl	e9e <gfx_print_int>
    2654:	e7fe      	b.n	2654 <print_fault+0x70>
    2656:	bf00      	nop
    2658:	00002f80 	.word	0x00002f80
    265c:	00002f90 	.word	0x00002f90
    2660:	e000ed28 	.word	0xe000ed28
    2664:	00002f98 	.word	0x00002f98
    2668:	00002fa0 	.word	0x00002fa0

0000266c <config_systicks>:
    266c:	b580      	push	{r7, lr}
    266e:	af00      	add	r7, sp, #0
    2670:	2109      	movs	r1, #9
    2672:	f06f 000e 	mvn.w	r0, #14
    2676:	f7fe fff3 	bl	1660 <set_int_priority>
    267a:	4b04      	ldr	r3, [pc, #16]	; (268c <config_systicks+0x20>)
    267c:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2680:	601a      	str	r2, [r3, #0]
    2682:	4b03      	ldr	r3, [pc, #12]	; (2690 <config_systicks+0x24>)
    2684:	2203      	movs	r2, #3
    2686:	601a      	str	r2, [r3, #0]
    2688:	bf00      	nop
    268a:	bd80      	pop	{r7, pc}
    268c:	e000e014 	.word	0xe000e014
    2690:	e000e010 	.word	0xe000e010

00002694 <pause>:
    2694:	b480      	push	{r7}
    2696:	b083      	sub	sp, #12
    2698:	af00      	add	r7, sp, #0
    269a:	6078      	str	r0, [r7, #4]
    269c:	4a06      	ldr	r2, [pc, #24]	; (26b8 <pause+0x24>)
    269e:	687b      	ldr	r3, [r7, #4]
    26a0:	6013      	str	r3, [r2, #0]
    26a2:	bf00      	nop
    26a4:	4b04      	ldr	r3, [pc, #16]	; (26b8 <pause+0x24>)
    26a6:	681b      	ldr	r3, [r3, #0]
    26a8:	2b00      	cmp	r3, #0
    26aa:	d1fb      	bne.n	26a4 <pause+0x10>
    26ac:	bf00      	nop
    26ae:	370c      	adds	r7, #12
    26b0:	46bd      	mov	sp, r7
    26b2:	bc80      	pop	{r7}
    26b4:	4770      	bx	lr
    26b6:	bf00      	nop
    26b8:	20000460 	.word	0x20000460

000026bc <STK_handler>:
    26bc:	b480      	push	{r7}
    26be:	af00      	add	r7, sp, #0
    26c0:	4b08      	ldr	r3, [pc, #32]	; (26e4 <STK_handler+0x28>)
    26c2:	681b      	ldr	r3, [r3, #0]
    26c4:	3301      	adds	r3, #1
    26c6:	4a07      	ldr	r2, [pc, #28]	; (26e4 <STK_handler+0x28>)
    26c8:	6013      	str	r3, [r2, #0]
    26ca:	4b07      	ldr	r3, [pc, #28]	; (26e8 <STK_handler+0x2c>)
    26cc:	681b      	ldr	r3, [r3, #0]
    26ce:	2b00      	cmp	r3, #0
    26d0:	d004      	beq.n	26dc <STK_handler+0x20>
    26d2:	4b05      	ldr	r3, [pc, #20]	; (26e8 <STK_handler+0x2c>)
    26d4:	681b      	ldr	r3, [r3, #0]
    26d6:	3b01      	subs	r3, #1
    26d8:	4a03      	ldr	r2, [pc, #12]	; (26e8 <STK_handler+0x2c>)
    26da:	6013      	str	r3, [r2, #0]
    26dc:	bf00      	nop
    26de:	46bd      	mov	sp, r7
    26e0:	bc80      	pop	{r7}
    26e2:	4770      	bx	lr
    26e4:	2000045c 	.word	0x2000045c
    26e8:	20000460 	.word	0x20000460

000026ec <tvout_init>:
    26ec:	b580      	push	{r7, lr}
    26ee:	af00      	add	r7, sp, #0
    26f0:	2003      	movs	r0, #3
    26f2:	f000 fa1d 	bl	2b30 <set_palette>
    26f6:	220a      	movs	r2, #10
    26f8:	2108      	movs	r1, #8
    26fa:	4843      	ldr	r0, [pc, #268]	; (2808 <tvout_init+0x11c>)
    26fc:	f7fe fa79 	bl	bf2 <config_pin>
    2700:	4b41      	ldr	r3, [pc, #260]	; (2808 <tvout_init+0x11c>)
    2702:	4a42      	ldr	r2, [pc, #264]	; (280c <tvout_init+0x120>)
    2704:	601a      	str	r2, [r3, #0]
    2706:	4b40      	ldr	r3, [pc, #256]	; (2808 <tvout_init+0x11c>)
    2708:	2200      	movs	r2, #0
    270a:	60da      	str	r2, [r3, #12]
    270c:	4a40      	ldr	r2, [pc, #256]	; (2810 <tvout_init+0x124>)
    270e:	4b40      	ldr	r3, [pc, #256]	; (2810 <tvout_init+0x124>)
    2710:	699b      	ldr	r3, [r3, #24]
    2712:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2716:	6193      	str	r3, [r2, #24]
    2718:	4b3e      	ldr	r3, [pc, #248]	; (2814 <tvout_init+0x128>)
    271a:	2278      	movs	r2, #120	; 0x78
    271c:	619a      	str	r2, [r3, #24]
    271e:	4b3d      	ldr	r3, [pc, #244]	; (2814 <tvout_init+0x128>)
    2720:	2201      	movs	r2, #1
    2722:	621a      	str	r2, [r3, #32]
    2724:	4b3b      	ldr	r3, [pc, #236]	; (2814 <tvout_init+0x128>)
    2726:	2284      	movs	r2, #132	; 0x84
    2728:	601a      	str	r2, [r3, #0]
    272a:	4b3a      	ldr	r3, [pc, #232]	; (2814 <tvout_init+0x128>)
    272c:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2730:	62da      	str	r2, [r3, #44]	; 0x2c
    2732:	4b38      	ldr	r3, [pc, #224]	; (2814 <tvout_init+0x128>)
    2734:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2738:	635a      	str	r2, [r3, #52]	; 0x34
    273a:	4b36      	ldr	r3, [pc, #216]	; (2814 <tvout_init+0x128>)
    273c:	f240 126d 	movw	r2, #365	; 0x16d
    2740:	639a      	str	r2, [r3, #56]	; 0x38
    2742:	4a34      	ldr	r2, [pc, #208]	; (2814 <tvout_init+0x128>)
    2744:	4b33      	ldr	r3, [pc, #204]	; (2814 <tvout_init+0x128>)
    2746:	695b      	ldr	r3, [r3, #20]
    2748:	f043 0301 	orr.w	r3, r3, #1
    274c:	6153      	str	r3, [r2, #20]
    274e:	4b31      	ldr	r3, [pc, #196]	; (2814 <tvout_init+0x128>)
    2750:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2754:	645a      	str	r2, [r3, #68]	; 0x44
    2756:	4b2f      	ldr	r3, [pc, #188]	; (2814 <tvout_init+0x128>)
    2758:	2200      	movs	r2, #0
    275a:	611a      	str	r2, [r3, #16]
    275c:	4a2d      	ldr	r2, [pc, #180]	; (2814 <tvout_init+0x128>)
    275e:	4b2d      	ldr	r3, [pc, #180]	; (2814 <tvout_init+0x128>)
    2760:	68db      	ldr	r3, [r3, #12]
    2762:	f043 0301 	orr.w	r3, r3, #1
    2766:	60d3      	str	r3, [r2, #12]
    2768:	2101      	movs	r1, #1
    276a:	2019      	movs	r0, #25
    276c:	f7fe ff78 	bl	1660 <set_int_priority>
    2770:	2101      	movs	r1, #1
    2772:	201b      	movs	r0, #27
    2774:	f7fe ff74 	bl	1660 <set_int_priority>
    2778:	201b      	movs	r0, #27
    277a:	f7fe feb7 	bl	14ec <enable_interrupt>
    277e:	2019      	movs	r0, #25
    2780:	f7fe feb4 	bl	14ec <enable_interrupt>
    2784:	4a23      	ldr	r2, [pc, #140]	; (2814 <tvout_init+0x128>)
    2786:	4b23      	ldr	r3, [pc, #140]	; (2814 <tvout_init+0x128>)
    2788:	681b      	ldr	r3, [r3, #0]
    278a:	f043 0301 	orr.w	r3, r3, #1
    278e:	6013      	str	r3, [r2, #0]
    2790:	220a      	movs	r2, #10
    2792:	2100      	movs	r1, #0
    2794:	4820      	ldr	r0, [pc, #128]	; (2818 <tvout_init+0x12c>)
    2796:	f7fe fa2c 	bl	bf2 <config_pin>
    279a:	220a      	movs	r2, #10
    279c:	2101      	movs	r1, #1
    279e:	481e      	ldr	r0, [pc, #120]	; (2818 <tvout_init+0x12c>)
    27a0:	f7fe fa27 	bl	bf2 <config_pin>
    27a4:	4a1a      	ldr	r2, [pc, #104]	; (2810 <tvout_init+0x124>)
    27a6:	4b1a      	ldr	r3, [pc, #104]	; (2810 <tvout_init+0x124>)
    27a8:	69db      	ldr	r3, [r3, #28]
    27aa:	f043 0302 	orr.w	r3, r3, #2
    27ae:	61d3      	str	r3, [r2, #28]
    27b0:	4b1a      	ldr	r3, [pc, #104]	; (281c <tvout_init+0x130>)
    27b2:	f246 0278 	movw	r2, #24696	; 0x6078
    27b6:	61da      	str	r2, [r3, #28]
    27b8:	4b18      	ldr	r3, [pc, #96]	; (281c <tvout_init+0x130>)
    27ba:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    27be:	621a      	str	r2, [r3, #32]
    27c0:	4b16      	ldr	r3, [pc, #88]	; (281c <tvout_init+0x130>)
    27c2:	2284      	movs	r2, #132	; 0x84
    27c4:	601a      	str	r2, [r3, #0]
    27c6:	4b15      	ldr	r3, [pc, #84]	; (281c <tvout_init+0x130>)
    27c8:	2213      	movs	r2, #19
    27ca:	62da      	str	r2, [r3, #44]	; 0x2c
    27cc:	4b13      	ldr	r3, [pc, #76]	; (281c <tvout_init+0x130>)
    27ce:	220a      	movs	r2, #10
    27d0:	63da      	str	r2, [r3, #60]	; 0x3c
    27d2:	4b12      	ldr	r3, [pc, #72]	; (281c <tvout_init+0x130>)
    27d4:	220a      	movs	r2, #10
    27d6:	641a      	str	r2, [r3, #64]	; 0x40
    27d8:	4a10      	ldr	r2, [pc, #64]	; (281c <tvout_init+0x130>)
    27da:	4b10      	ldr	r3, [pc, #64]	; (281c <tvout_init+0x130>)
    27dc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    27de:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    27e2:	6453      	str	r3, [r2, #68]	; 0x44
    27e4:	4a0d      	ldr	r2, [pc, #52]	; (281c <tvout_init+0x130>)
    27e6:	4b0d      	ldr	r3, [pc, #52]	; (281c <tvout_init+0x130>)
    27e8:	695b      	ldr	r3, [r3, #20]
    27ea:	f043 0301 	orr.w	r3, r3, #1
    27ee:	6153      	str	r3, [r2, #20]
    27f0:	4b0a      	ldr	r3, [pc, #40]	; (281c <tvout_init+0x130>)
    27f2:	2200      	movs	r2, #0
    27f4:	611a      	str	r2, [r3, #16]
    27f6:	4a09      	ldr	r2, [pc, #36]	; (281c <tvout_init+0x130>)
    27f8:	4b08      	ldr	r3, [pc, #32]	; (281c <tvout_init+0x130>)
    27fa:	681b      	ldr	r3, [r3, #0]
    27fc:	f043 0301 	orr.w	r3, r3, #1
    2800:	6013      	str	r3, [r2, #0]
    2802:	bf00      	nop
    2804:	bd80      	pop	{r7, pc}
    2806:	bf00      	nop
    2808:	40010800 	.word	0x40010800
    280c:	44443333 	.word	0x44443333
    2810:	40021000 	.word	0x40021000
    2814:	40012c00 	.word	0x40012c00
    2818:	40010c00 	.word	0x40010c00
    281c:	40000400 	.word	0x40000400

00002820 <TV_OUT_handler>:
    2820:	4668      	mov	r0, sp
    2822:	f020 0107 	bic.w	r1, r0, #7
    2826:	468d      	mov	sp, r1
    2828:	b411      	push	{r0, r4}
    282a:	4a30      	ldr	r2, [pc, #192]	; (28ec <TV_OUT_handler+0xcc>)
    282c:	6a13      	ldr	r3, [r2, #32]
    282e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2832:	6213      	str	r3, [r2, #32]
    2834:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2838:	6a53      	ldr	r3, [r2, #36]	; 0x24
    283a:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    283e:	d3fb      	bcc.n	2838 <TV_OUT_handler+0x18>
    2840:	4a2a      	ldr	r2, [pc, #168]	; (28ec <TV_OUT_handler+0xcc>)
    2842:	6a13      	ldr	r3, [r2, #32]
    2844:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2848:	6213      	str	r3, [r2, #32]
    284a:	4b29      	ldr	r3, [pc, #164]	; (28f0 <TV_OUT_handler+0xd0>)
    284c:	881b      	ldrh	r3, [r3, #0]
    284e:	f013 0f04 	tst.w	r3, #4
    2852:	d042      	beq.n	28da <TV_OUT_handler+0xba>
    2854:	4927      	ldr	r1, [pc, #156]	; (28f4 <TV_OUT_handler+0xd4>)
    2856:	f240 32e9 	movw	r2, #1001	; 0x3e9
    285a:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    285c:	4293      	cmp	r3, r2
    285e:	d9fc      	bls.n	285a <TV_OUT_handler+0x3a>
    2860:	4a25      	ldr	r2, [pc, #148]	; (28f8 <TV_OUT_handler+0xd8>)
    2862:	8813      	ldrh	r3, [r2, #0]
    2864:	f3c3 034e 	ubfx	r3, r3, #1, #15
    2868:	4924      	ldr	r1, [pc, #144]	; (28fc <TV_OUT_handler+0xdc>)
    286a:	205a      	movs	r0, #90	; 0x5a
    286c:	fb00 1303 	mla	r3, r0, r3, r1
    2870:	8812      	ldrh	r2, [r2, #0]
    2872:	491e      	ldr	r1, [pc, #120]	; (28ec <TV_OUT_handler+0xcc>)
    2874:	6a08      	ldr	r0, [r1, #32]
    2876:	f3c2 024e 	ubfx	r2, r2, #1, #15
    287a:	4c21      	ldr	r4, [pc, #132]	; (2900 <TV_OUT_handler+0xe0>)
    287c:	5ca4      	ldrb	r4, [r4, r2]
    287e:	4a21      	ldr	r2, [pc, #132]	; (2904 <TV_OUT_handler+0xe4>)
    2880:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    2884:	4302      	orrs	r2, r0
    2886:	620a      	str	r2, [r1, #32]
    2888:	f103 005a 	add.w	r0, r3, #90	; 0x5a
    288c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
    2890:	310c      	adds	r1, #12
    2892:	781a      	ldrb	r2, [r3, #0]
    2894:	0912      	lsrs	r2, r2, #4
    2896:	800a      	strh	r2, [r1, #0]
    2898:	bf00      	nop
    289a:	bf00      	nop
    289c:	bf00      	nop
    289e:	bf00      	nop
    28a0:	bf00      	nop
    28a2:	bf00      	nop
    28a4:	bf00      	nop
    28a6:	bf00      	nop
    28a8:	bf00      	nop
    28aa:	bf00      	nop
    28ac:	bf00      	nop
    28ae:	f813 2b01 	ldrb.w	r2, [r3], #1
    28b2:	f002 020f 	and.w	r2, r2, #15
    28b6:	800a      	strh	r2, [r1, #0]
    28b8:	bf00      	nop
    28ba:	bf00      	nop
    28bc:	bf00      	nop
    28be:	bf00      	nop
    28c0:	bf00      	nop
    28c2:	bf00      	nop
    28c4:	bf00      	nop
    28c6:	4298      	cmp	r0, r3
    28c8:	d1e3      	bne.n	2892 <TV_OUT_handler+0x72>
    28ca:	2200      	movs	r2, #0
    28cc:	4b0e      	ldr	r3, [pc, #56]	; (2908 <TV_OUT_handler+0xe8>)
    28ce:	60da      	str	r2, [r3, #12]
    28d0:	4a06      	ldr	r2, [pc, #24]	; (28ec <TV_OUT_handler+0xcc>)
    28d2:	6a13      	ldr	r3, [r2, #32]
    28d4:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    28d8:	6213      	str	r3, [r2, #32]
    28da:	4a06      	ldr	r2, [pc, #24]	; (28f4 <TV_OUT_handler+0xd4>)
    28dc:	6913      	ldr	r3, [r2, #16]
    28de:	f023 0304 	bic.w	r3, r3, #4
    28e2:	6113      	str	r3, [r2, #16]
    28e4:	bc11      	pop	{r0, r4}
    28e6:	4685      	mov	sp, r0
    28e8:	4770      	bx	lr
    28ea:	bf00      	nop
    28ec:	40000400 	.word	0x40000400
    28f0:	20000466 	.word	0x20000466
    28f4:	40012c00 	.word	0x40012c00
    28f8:	20000468 	.word	0x20000468
    28fc:	2000046c 	.word	0x2000046c
    2900:	20002bcc 	.word	0x20002bcc
    2904:	00002fec 	.word	0x00002fec
    2908:	40010800 	.word	0x40010800

0000290c <TV_SYNC_handler>:
    290c:	4668      	mov	r0, sp
    290e:	f020 0107 	bic.w	r1, r0, #7
    2912:	468d      	mov	sp, r1
    2914:	b401      	push	{r0}
    2916:	4a79      	ldr	r2, [pc, #484]	; (2afc <TV_SYNC_handler+0x1f0>)
    2918:	8813      	ldrh	r3, [r2, #0]
    291a:	3301      	adds	r3, #1
    291c:	b29b      	uxth	r3, r3
    291e:	8013      	strh	r3, [r2, #0]
    2920:	4b77      	ldr	r3, [pc, #476]	; (2b00 <TV_SYNC_handler+0x1f4>)
    2922:	881b      	ldrh	r3, [r3, #0]
    2924:	b29b      	uxth	r3, r3
    2926:	2b06      	cmp	r3, #6
    2928:	f200 808d 	bhi.w	2a46 <TV_SYNC_handler+0x13a>
    292c:	e8df f013 	tbh	[pc, r3, lsl #1]
    2930:	00290007 	.word	0x00290007
    2934:	006b0049 	.word	0x006b0049
    2938:	00a70093 	.word	0x00a70093
    293c:	00be      	.short	0x00be
    293e:	4b71      	ldr	r3, [pc, #452]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2940:	881b      	ldrh	r3, [r3, #0]
    2942:	b29b      	uxth	r3, r3
    2944:	b18b      	cbz	r3, 296a <TV_SYNC_handler+0x5e>
    2946:	4a6f      	ldr	r2, [pc, #444]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2948:	8813      	ldrh	r3, [r2, #0]
    294a:	3301      	adds	r3, #1
    294c:	b29b      	uxth	r3, r3
    294e:	8013      	strh	r3, [r2, #0]
    2950:	8813      	ldrh	r3, [r2, #0]
    2952:	b29b      	uxth	r3, r3
    2954:	2b06      	cmp	r3, #6
    2956:	d176      	bne.n	2a46 <TV_SYNC_handler+0x13a>
    2958:	2200      	movs	r2, #0
    295a:	4b6a      	ldr	r3, [pc, #424]	; (2b04 <TV_SYNC_handler+0x1f8>)
    295c:	801a      	strh	r2, [r3, #0]
    295e:	4a68      	ldr	r2, [pc, #416]	; (2b00 <TV_SYNC_handler+0x1f4>)
    2960:	8813      	ldrh	r3, [r2, #0]
    2962:	3301      	adds	r3, #1
    2964:	b29b      	uxth	r3, r3
    2966:	8013      	strh	r3, [r2, #0]
    2968:	e06d      	b.n	2a46 <TV_SYNC_handler+0x13a>
    296a:	4b67      	ldr	r3, [pc, #412]	; (2b08 <TV_SYNC_handler+0x1fc>)
    296c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2970:	62da      	str	r2, [r3, #44]	; 0x2c
    2972:	22a4      	movs	r2, #164	; 0xa4
    2974:	635a      	str	r2, [r3, #52]	; 0x34
    2976:	4a63      	ldr	r2, [pc, #396]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2978:	8813      	ldrh	r3, [r2, #0]
    297a:	3301      	adds	r3, #1
    297c:	b29b      	uxth	r3, r3
    297e:	8013      	strh	r3, [r2, #0]
    2980:	e061      	b.n	2a46 <TV_SYNC_handler+0x13a>
    2982:	4b60      	ldr	r3, [pc, #384]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2984:	881b      	ldrh	r3, [r3, #0]
    2986:	b29b      	uxth	r3, r3
    2988:	b18b      	cbz	r3, 29ae <TV_SYNC_handler+0xa2>
    298a:	4a5e      	ldr	r2, [pc, #376]	; (2b04 <TV_SYNC_handler+0x1f8>)
    298c:	8813      	ldrh	r3, [r2, #0]
    298e:	3301      	adds	r3, #1
    2990:	b29b      	uxth	r3, r3
    2992:	8013      	strh	r3, [r2, #0]
    2994:	8813      	ldrh	r3, [r2, #0]
    2996:	b29b      	uxth	r3, r3
    2998:	2b06      	cmp	r3, #6
    299a:	d154      	bne.n	2a46 <TV_SYNC_handler+0x13a>
    299c:	2200      	movs	r2, #0
    299e:	4b59      	ldr	r3, [pc, #356]	; (2b04 <TV_SYNC_handler+0x1f8>)
    29a0:	801a      	strh	r2, [r3, #0]
    29a2:	4a57      	ldr	r2, [pc, #348]	; (2b00 <TV_SYNC_handler+0x1f4>)
    29a4:	8813      	ldrh	r3, [r2, #0]
    29a6:	3301      	adds	r3, #1
    29a8:	b29b      	uxth	r3, r3
    29aa:	8013      	strh	r3, [r2, #0]
    29ac:	e04b      	b.n	2a46 <TV_SYNC_handler+0x13a>
    29ae:	f240 7294 	movw	r2, #1940	; 0x794
    29b2:	4b55      	ldr	r3, [pc, #340]	; (2b08 <TV_SYNC_handler+0x1fc>)
    29b4:	635a      	str	r2, [r3, #52]	; 0x34
    29b6:	4a53      	ldr	r2, [pc, #332]	; (2b04 <TV_SYNC_handler+0x1f8>)
    29b8:	8813      	ldrh	r3, [r2, #0]
    29ba:	3301      	adds	r3, #1
    29bc:	b29b      	uxth	r3, r3
    29be:	8013      	strh	r3, [r2, #0]
    29c0:	e041      	b.n	2a46 <TV_SYNC_handler+0x13a>
    29c2:	4b50      	ldr	r3, [pc, #320]	; (2b04 <TV_SYNC_handler+0x1f8>)
    29c4:	881b      	ldrh	r3, [r3, #0]
    29c6:	b29b      	uxth	r3, r3
    29c8:	b153      	cbz	r3, 29e0 <TV_SYNC_handler+0xd4>
    29ca:	4b4e      	ldr	r3, [pc, #312]	; (2b04 <TV_SYNC_handler+0x1f8>)
    29cc:	881b      	ldrh	r3, [r3, #0]
    29ce:	b29b      	uxth	r3, r3
    29d0:	2b06      	cmp	r3, #6
    29d2:	d00e      	beq.n	29f2 <TV_SYNC_handler+0xe6>
    29d4:	4a4b      	ldr	r2, [pc, #300]	; (2b04 <TV_SYNC_handler+0x1f8>)
    29d6:	8813      	ldrh	r3, [r2, #0]
    29d8:	3301      	adds	r3, #1
    29da:	b29b      	uxth	r3, r3
    29dc:	8013      	strh	r3, [r2, #0]
    29de:	e032      	b.n	2a46 <TV_SYNC_handler+0x13a>
    29e0:	22a4      	movs	r2, #164	; 0xa4
    29e2:	4b49      	ldr	r3, [pc, #292]	; (2b08 <TV_SYNC_handler+0x1fc>)
    29e4:	635a      	str	r2, [r3, #52]	; 0x34
    29e6:	4a47      	ldr	r2, [pc, #284]	; (2b04 <TV_SYNC_handler+0x1f8>)
    29e8:	8813      	ldrh	r3, [r2, #0]
    29ea:	3301      	adds	r3, #1
    29ec:	b29b      	uxth	r3, r3
    29ee:	8013      	strh	r3, [r2, #0]
    29f0:	e029      	b.n	2a46 <TV_SYNC_handler+0x13a>
    29f2:	4a43      	ldr	r2, [pc, #268]	; (2b00 <TV_SYNC_handler+0x1f4>)
    29f4:	8813      	ldrh	r3, [r2, #0]
    29f6:	3301      	adds	r3, #1
    29f8:	b29b      	uxth	r3, r3
    29fa:	8013      	strh	r3, [r2, #0]
    29fc:	4b43      	ldr	r3, [pc, #268]	; (2b0c <TV_SYNC_handler+0x200>)
    29fe:	881b      	ldrh	r3, [r3, #0]
    2a00:	f013 0f01 	tst.w	r3, #1
    2a04:	d01f      	beq.n	2a46 <TV_SYNC_handler+0x13a>
    2a06:	4a40      	ldr	r2, [pc, #256]	; (2b08 <TV_SYNC_handler+0x1fc>)
    2a08:	f241 13c5 	movw	r3, #4549	; 0x11c5
    2a0c:	62d3      	str	r3, [r2, #44]	; 0x2c
    2a0e:	f44f 73a8 	mov.w	r3, #336	; 0x150
    2a12:	6353      	str	r3, [r2, #52]	; 0x34
    2a14:	493d      	ldr	r1, [pc, #244]	; (2b0c <TV_SYNC_handler+0x200>)
    2a16:	880b      	ldrh	r3, [r1, #0]
    2a18:	f023 0302 	bic.w	r3, r3, #2
    2a1c:	041b      	lsls	r3, r3, #16
    2a1e:	0c1b      	lsrs	r3, r3, #16
    2a20:	800b      	strh	r3, [r1, #0]
    2a22:	4936      	ldr	r1, [pc, #216]	; (2afc <TV_SYNC_handler+0x1f0>)
    2a24:	880b      	ldrh	r3, [r1, #0]
    2a26:	f3c3 038d 	ubfx	r3, r3, #2, #14
    2a2a:	800b      	strh	r3, [r1, #0]
    2a2c:	4934      	ldr	r1, [pc, #208]	; (2b00 <TV_SYNC_handler+0x1f4>)
    2a2e:	880b      	ldrh	r3, [r1, #0]
    2a30:	3301      	adds	r3, #1
    2a32:	b29b      	uxth	r3, r3
    2a34:	800b      	strh	r3, [r1, #0]
    2a36:	6913      	ldr	r3, [r2, #16]
    2a38:	f023 0304 	bic.w	r3, r3, #4
    2a3c:	6113      	str	r3, [r2, #16]
    2a3e:	68d3      	ldr	r3, [r2, #12]
    2a40:	f043 0304 	orr.w	r3, r3, #4
    2a44:	60d3      	str	r3, [r2, #12]
    2a46:	4a30      	ldr	r2, [pc, #192]	; (2b08 <TV_SYNC_handler+0x1fc>)
    2a48:	6913      	ldr	r3, [r2, #16]
    2a4a:	f023 0301 	bic.w	r3, r3, #1
    2a4e:	6113      	str	r3, [r2, #16]
    2a50:	bc01      	pop	{r0}
    2a52:	4685      	mov	sp, r0
    2a54:	4770      	bx	lr
    2a56:	4b29      	ldr	r3, [pc, #164]	; (2afc <TV_SYNC_handler+0x1f0>)
    2a58:	881b      	ldrh	r3, [r3, #0]
    2a5a:	b29b      	uxth	r3, r3
    2a5c:	2b16      	cmp	r3, #22
    2a5e:	d1f2      	bne.n	2a46 <TV_SYNC_handler+0x13a>
    2a60:	4a27      	ldr	r2, [pc, #156]	; (2b00 <TV_SYNC_handler+0x1f4>)
    2a62:	8813      	ldrh	r3, [r2, #0]
    2a64:	3301      	adds	r3, #1
    2a66:	b29b      	uxth	r3, r3
    2a68:	8013      	strh	r3, [r2, #0]
    2a6a:	2200      	movs	r2, #0
    2a6c:	4b25      	ldr	r3, [pc, #148]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2a6e:	801a      	strh	r2, [r3, #0]
    2a70:	4a26      	ldr	r2, [pc, #152]	; (2b0c <TV_SYNC_handler+0x200>)
    2a72:	8813      	ldrh	r3, [r2, #0]
    2a74:	b29b      	uxth	r3, r3
    2a76:	f043 0304 	orr.w	r3, r3, #4
    2a7a:	8013      	strh	r3, [r2, #0]
    2a7c:	e7e3      	b.n	2a46 <TV_SYNC_handler+0x13a>
    2a7e:	4a21      	ldr	r2, [pc, #132]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2a80:	8813      	ldrh	r3, [r2, #0]
    2a82:	3301      	adds	r3, #1
    2a84:	b29b      	uxth	r3, r3
    2a86:	8013      	strh	r3, [r2, #0]
    2a88:	4b1c      	ldr	r3, [pc, #112]	; (2afc <TV_SYNC_handler+0x1f0>)
    2a8a:	881b      	ldrh	r3, [r3, #0]
    2a8c:	b29b      	uxth	r3, r3
    2a8e:	2bf6      	cmp	r3, #246	; 0xf6
    2a90:	d1d9      	bne.n	2a46 <TV_SYNC_handler+0x13a>
    2a92:	4a1b      	ldr	r2, [pc, #108]	; (2b00 <TV_SYNC_handler+0x1f4>)
    2a94:	8813      	ldrh	r3, [r2, #0]
    2a96:	3301      	adds	r3, #1
    2a98:	b29b      	uxth	r3, r3
    2a9a:	8013      	strh	r3, [r2, #0]
    2a9c:	4a1b      	ldr	r2, [pc, #108]	; (2b0c <TV_SYNC_handler+0x200>)
    2a9e:	8813      	ldrh	r3, [r2, #0]
    2aa0:	f023 0304 	bic.w	r3, r3, #4
    2aa4:	041b      	lsls	r3, r3, #16
    2aa6:	0c1b      	lsrs	r3, r3, #16
    2aa8:	8013      	strh	r3, [r2, #0]
    2aaa:	e7cc      	b.n	2a46 <TV_SYNC_handler+0x13a>
    2aac:	4b13      	ldr	r3, [pc, #76]	; (2afc <TV_SYNC_handler+0x1f0>)
    2aae:	881b      	ldrh	r3, [r3, #0]
    2ab0:	b29b      	uxth	r3, r3
    2ab2:	f240 1207 	movw	r2, #263	; 0x107
    2ab6:	4293      	cmp	r3, r2
    2ab8:	d1c5      	bne.n	2a46 <TV_SYNC_handler+0x13a>
    2aba:	4b14      	ldr	r3, [pc, #80]	; (2b0c <TV_SYNC_handler+0x200>)
    2abc:	881b      	ldrh	r3, [r3, #0]
    2abe:	f013 0f01 	tst.w	r3, #1
    2ac2:	d003      	beq.n	2acc <TV_SYNC_handler+0x1c0>
    2ac4:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2ac8:	4b0f      	ldr	r3, [pc, #60]	; (2b08 <TV_SYNC_handler+0x1fc>)
    2aca:	62da      	str	r2, [r3, #44]	; 0x2c
    2acc:	4a0f      	ldr	r2, [pc, #60]	; (2b0c <TV_SYNC_handler+0x200>)
    2ace:	8813      	ldrh	r3, [r2, #0]
    2ad0:	b29b      	uxth	r3, r3
    2ad2:	f083 0301 	eor.w	r3, r3, #1
    2ad6:	8013      	strh	r3, [r2, #0]
    2ad8:	8813      	ldrh	r3, [r2, #0]
    2ada:	b29b      	uxth	r3, r3
    2adc:	f043 0302 	orr.w	r3, r3, #2
    2ae0:	8013      	strh	r3, [r2, #0]
    2ae2:	2300      	movs	r3, #0
    2ae4:	4a05      	ldr	r2, [pc, #20]	; (2afc <TV_SYNC_handler+0x1f0>)
    2ae6:	8013      	strh	r3, [r2, #0]
    2ae8:	4a06      	ldr	r2, [pc, #24]	; (2b04 <TV_SYNC_handler+0x1f8>)
    2aea:	8013      	strh	r3, [r2, #0]
    2aec:	4a04      	ldr	r2, [pc, #16]	; (2b00 <TV_SYNC_handler+0x1f4>)
    2aee:	8013      	strh	r3, [r2, #0]
    2af0:	4a05      	ldr	r2, [pc, #20]	; (2b08 <TV_SYNC_handler+0x1fc>)
    2af2:	68d3      	ldr	r3, [r2, #12]
    2af4:	f023 0304 	bic.w	r3, r3, #4
    2af8:	60d3      	str	r3, [r2, #12]
    2afa:	e7a4      	b.n	2a46 <TV_SYNC_handler+0x13a>
    2afc:	2000046a 	.word	0x2000046a
    2b00:	20000464 	.word	0x20000464
    2b04:	20000468 	.word	0x20000468
    2b08:	40012c00 	.word	0x40012c00
    2b0c:	20000466 	.word	0x20000466

00002b10 <frame_sync>:
    2b10:	b480      	push	{r7}
    2b12:	af00      	add	r7, sp, #0
    2b14:	bf00      	nop
    2b16:	4b05      	ldr	r3, [pc, #20]	; (2b2c <frame_sync+0x1c>)
    2b18:	881b      	ldrh	r3, [r3, #0]
    2b1a:	b29b      	uxth	r3, r3
    2b1c:	f003 0302 	and.w	r3, r3, #2
    2b20:	2b00      	cmp	r3, #0
    2b22:	d0f8      	beq.n	2b16 <frame_sync+0x6>
    2b24:	bf00      	nop
    2b26:	46bd      	mov	sp, r7
    2b28:	bc80      	pop	{r7}
    2b2a:	4770      	bx	lr
    2b2c:	20000466 	.word	0x20000466

00002b30 <set_palette>:
    2b30:	b480      	push	{r7}
    2b32:	b085      	sub	sp, #20
    2b34:	af00      	add	r7, sp, #0
    2b36:	4603      	mov	r3, r0
    2b38:	71fb      	strb	r3, [r7, #7]
    2b3a:	79fb      	ldrb	r3, [r7, #7]
    2b3c:	f003 0303 	and.w	r3, r3, #3
    2b40:	71fb      	strb	r3, [r7, #7]
    2b42:	2300      	movs	r3, #0
    2b44:	60fb      	str	r3, [r7, #12]
    2b46:	e007      	b.n	2b58 <set_palette+0x28>
    2b48:	4a07      	ldr	r2, [pc, #28]	; (2b68 <set_palette+0x38>)
    2b4a:	68fb      	ldr	r3, [r7, #12]
    2b4c:	4413      	add	r3, r2
    2b4e:	79fa      	ldrb	r2, [r7, #7]
    2b50:	701a      	strb	r2, [r3, #0]
    2b52:	68fb      	ldr	r3, [r7, #12]
    2b54:	3301      	adds	r3, #1
    2b56:	60fb      	str	r3, [r7, #12]
    2b58:	68fb      	ldr	r3, [r7, #12]
    2b5a:	2b6f      	cmp	r3, #111	; 0x6f
    2b5c:	ddf4      	ble.n	2b48 <set_palette+0x18>
    2b5e:	bf00      	nop
    2b60:	3714      	adds	r7, #20
    2b62:	46bd      	mov	sp, r7
    2b64:	bc80      	pop	{r7}
    2b66:	4770      	bx	lr
    2b68:	20002bcc 	.word	0x20002bcc
