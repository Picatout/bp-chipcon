
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 d9 22 00 00     C...I...O...."..
      20:	d9 22 00 00 d9 22 00 00 d9 22 00 00 55 02 00 00     ."..."..."..U...
      30:	d9 22 00 00 d9 22 00 00 5b 02 00 00 c1 23 00 00     ."..."..[....#..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 11 20 00 00     g...m...y.... ..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 d9 22 00 00 d9 22 00 00 b5 02 00 00     ....."..."......
      80:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..
      90:	d9 22 00 00 d9 22 00 00 d9 22 00 00 bb 02 00 00     ."..."..."......
      a0:	d9 22 00 00 f5 25 00 00 d9 22 00 00 1d 25 00 00     ."...%..."...%..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 d9 22 00 00     ............."..
      c0:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..
      d0:	d9 22 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     ."..............
      e0:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..
      f0:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..
     100:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..
     110:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..
     120:	d9 22 00 00 d9 22 00 00 d9 22 00 00 d9 22 00 00     ."..."..."..."..

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
     18e:	f000 ffcf 	bl	1130 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005c 	.word	0x2000005c
     1a0:	20002a70 	.word	0x20002a70
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
     1dc:	f002 f884 	bl	22e8 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f002 f878 	bl	22e8 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f002 f86c 	bl	22e8 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f002 f867 	bl	22e8 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00002c18 	.word	0x00002c18
     230:	00002c30 	.word	0x00002c30
     234:	00002c3c 	.word	0x00002c3c
     238:	00002c4c 	.word	0x00002c4c

0000023c <NMI_handler>:
     23c:	f002 f84c 	bl	22d8 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f002 f849 	bl	22d8 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f002 f846 	bl	22d8 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f002 f843 	bl	22d8 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f002 f840 	bl	22d8 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f002 f83d 	bl	22d8 <reset_mcu>
     25e:	bf00      	nop
     260:	f002 f83a 	bl	22d8 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f002 f837 	bl	22d8 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f002 f834 	bl	22d8 <reset_mcu>
     270:	bf00      	nop
     272:	f002 f831 	bl	22d8 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f002 f82e 	bl	22d8 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f002 f82b 	bl	22d8 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f002 f828 	bl	22d8 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f002 f825 	bl	22d8 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f002 f822 	bl	22d8 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f002 f81f 	bl	22d8 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f002 f81c 	bl	22d8 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f002 f819 	bl	22d8 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f002 f816 	bl	22d8 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f002 f813 	bl	22d8 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f002 f810 	bl	22d8 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f002 f80d 	bl	22d8 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f002 f80a 	bl	22d8 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f002 f807 	bl	22d8 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f002 f804 	bl	22d8 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f002 f801 	bl	22d8 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f001 fffe 	bl	22d8 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f001 fffb 	bl	22d8 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f001 fff8 	bl	22d8 <reset_mcu>
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
     d0c:	f000 f9a4 	bl	1058 <gfx_scrollup>
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

00000d48 <gfx_putchar>:
     d48:	b580      	push	{r7, lr}
     d4a:	b088      	sub	sp, #32
     d4c:	af00      	add	r7, sp, #0
     d4e:	4603      	mov	r3, r0
     d50:	71fb      	strb	r3, [r7, #7]
     d52:	79fb      	ldrb	r3, [r7, #7]
     d54:	2b1f      	cmp	r3, #31
     d56:	d94b      	bls.n	df0 <gfx_putchar+0xa8>
     d58:	79fb      	ldrb	r3, [r7, #7]
     d5a:	2b84      	cmp	r3, #132	; 0x84
     d5c:	d848      	bhi.n	df0 <gfx_putchar+0xa8>
     d5e:	79fb      	ldrb	r3, [r7, #7]
     d60:	3b20      	subs	r3, #32
     d62:	00db      	lsls	r3, r3, #3
     d64:	613b      	str	r3, [r7, #16]
     d66:	2300      	movs	r3, #0
     d68:	61bb      	str	r3, [r7, #24]
     d6a:	e031      	b.n	dd0 <gfx_putchar+0x88>
     d6c:	693a      	ldr	r2, [r7, #16]
     d6e:	69bb      	ldr	r3, [r7, #24]
     d70:	4413      	add	r3, r2
     d72:	4a21      	ldr	r2, [pc, #132]	; (df8 <gfx_putchar+0xb0>)
     d74:	5cd3      	ldrb	r3, [r2, r3]
     d76:	73fb      	strb	r3, [r7, #15]
     d78:	2380      	movs	r3, #128	; 0x80
     d7a:	75fb      	strb	r3, [r7, #23]
     d7c:	2300      	movs	r3, #0
     d7e:	61fb      	str	r3, [r7, #28]
     d80:	e020      	b.n	dc4 <gfx_putchar+0x7c>
     d82:	7bfa      	ldrb	r2, [r7, #15]
     d84:	7dfb      	ldrb	r3, [r7, #23]
     d86:	4013      	ands	r3, r2
     d88:	b2db      	uxtb	r3, r3
     d8a:	2b00      	cmp	r3, #0
     d8c:	d003      	beq.n	d96 <gfx_putchar+0x4e>
     d8e:	4b1b      	ldr	r3, [pc, #108]	; (dfc <gfx_putchar+0xb4>)
     d90:	785b      	ldrb	r3, [r3, #1]
     d92:	75bb      	strb	r3, [r7, #22]
     d94:	e002      	b.n	d9c <gfx_putchar+0x54>
     d96:	4b19      	ldr	r3, [pc, #100]	; (dfc <gfx_putchar+0xb4>)
     d98:	781b      	ldrb	r3, [r3, #0]
     d9a:	75bb      	strb	r3, [r7, #22]
     d9c:	4b18      	ldr	r3, [pc, #96]	; (e00 <gfx_putchar+0xb8>)
     d9e:	781b      	ldrb	r3, [r3, #0]
     da0:	461a      	mov	r2, r3
     da2:	69fb      	ldr	r3, [r7, #28]
     da4:	18d0      	adds	r0, r2, r3
     da6:	4b17      	ldr	r3, [pc, #92]	; (e04 <gfx_putchar+0xbc>)
     da8:	781b      	ldrb	r3, [r3, #0]
     daa:	461a      	mov	r2, r3
     dac:	69bb      	ldr	r3, [r7, #24]
     dae:	4413      	add	r3, r2
     db0:	7dba      	ldrb	r2, [r7, #22]
     db2:	4619      	mov	r1, r3
     db4:	f000 f8c2 	bl	f3c <gfx_plot>
     db8:	69fb      	ldr	r3, [r7, #28]
     dba:	3301      	adds	r3, #1
     dbc:	61fb      	str	r3, [r7, #28]
     dbe:	7dfb      	ldrb	r3, [r7, #23]
     dc0:	085b      	lsrs	r3, r3, #1
     dc2:	75fb      	strb	r3, [r7, #23]
     dc4:	69fb      	ldr	r3, [r7, #28]
     dc6:	2b05      	cmp	r3, #5
     dc8:	dddb      	ble.n	d82 <gfx_putchar+0x3a>
     dca:	69bb      	ldr	r3, [r7, #24]
     dcc:	3301      	adds	r3, #1
     dce:	61bb      	str	r3, [r7, #24]
     dd0:	69bb      	ldr	r3, [r7, #24]
     dd2:	2b07      	cmp	r3, #7
     dd4:	ddca      	ble.n	d6c <gfx_putchar+0x24>
     dd6:	4b0a      	ldr	r3, [pc, #40]	; (e00 <gfx_putchar+0xb8>)
     dd8:	781b      	ldrb	r3, [r3, #0]
     dda:	3306      	adds	r3, #6
     ddc:	b2da      	uxtb	r2, r3
     dde:	4b08      	ldr	r3, [pc, #32]	; (e00 <gfx_putchar+0xb8>)
     de0:	701a      	strb	r2, [r3, #0]
     de2:	4b07      	ldr	r3, [pc, #28]	; (e00 <gfx_putchar+0xb8>)
     de4:	781b      	ldrb	r3, [r3, #0]
     de6:	2b7a      	cmp	r3, #122	; 0x7a
     de8:	d903      	bls.n	df2 <gfx_putchar+0xaa>
     dea:	f7ff ff79 	bl	ce0 <gfx_crlf>
     dee:	e000      	b.n	df2 <gfx_putchar+0xaa>
     df0:	bf00      	nop
     df2:	3720      	adds	r7, #32
     df4:	46bd      	mov	sp, r7
     df6:	bd80      	pop	{r7, pc}
     df8:	000027f8 	.word	0x000027f8
     dfc:	20000000 	.word	0x20000000
     e00:	2000045e 	.word	0x2000045e
     e04:	2000045f 	.word	0x2000045f

00000e08 <gfx_print>:
     e08:	b580      	push	{r7, lr}
     e0a:	b084      	sub	sp, #16
     e0c:	af00      	add	r7, sp, #0
     e0e:	6078      	str	r0, [r7, #4]
     e10:	e011      	b.n	e36 <gfx_print+0x2e>
     e12:	7bfb      	ldrb	r3, [r7, #15]
     e14:	2b0a      	cmp	r3, #10
     e16:	d004      	beq.n	e22 <gfx_print+0x1a>
     e18:	2b0d      	cmp	r3, #13
     e1a:	d002      	beq.n	e22 <gfx_print+0x1a>
     e1c:	2b08      	cmp	r3, #8
     e1e:	d003      	beq.n	e28 <gfx_print+0x20>
     e20:	e005      	b.n	e2e <gfx_print+0x26>
     e22:	f7ff ff5d 	bl	ce0 <gfx_crlf>
     e26:	e006      	b.n	e36 <gfx_print+0x2e>
     e28:	f7ff ff78 	bl	d1c <gfx_cursor_left>
     e2c:	e003      	b.n	e36 <gfx_print+0x2e>
     e2e:	7bfb      	ldrb	r3, [r7, #15]
     e30:	4618      	mov	r0, r3
     e32:	f7ff ff89 	bl	d48 <gfx_putchar>
     e36:	687b      	ldr	r3, [r7, #4]
     e38:	1c5a      	adds	r2, r3, #1
     e3a:	607a      	str	r2, [r7, #4]
     e3c:	781b      	ldrb	r3, [r3, #0]
     e3e:	73fb      	strb	r3, [r7, #15]
     e40:	7bfb      	ldrb	r3, [r7, #15]
     e42:	2b00      	cmp	r3, #0
     e44:	d1e5      	bne.n	e12 <gfx_print+0xa>
     e46:	bf00      	nop
     e48:	3710      	adds	r7, #16
     e4a:	46bd      	mov	sp, r7
     e4c:	bd80      	pop	{r7, pc}

00000e4e <gfx_print_int>:
     e4e:	b580      	push	{r7, lr}
     e50:	b088      	sub	sp, #32
     e52:	af00      	add	r7, sp, #0
     e54:	6078      	str	r0, [r7, #4]
     e56:	460b      	mov	r3, r1
     e58:	70fb      	strb	r3, [r7, #3]
     e5a:	2300      	movs	r3, #0
     e5c:	77fb      	strb	r3, [r7, #31]
     e5e:	2300      	movs	r3, #0
     e60:	74fb      	strb	r3, [r7, #19]
     e62:	2320      	movs	r3, #32
     e64:	74bb      	strb	r3, [r7, #18]
     e66:	230a      	movs	r3, #10
     e68:	61bb      	str	r3, [r7, #24]
     e6a:	687b      	ldr	r3, [r7, #4]
     e6c:	2b00      	cmp	r3, #0
     e6e:	da26      	bge.n	ebe <gfx_print_int+0x70>
     e70:	2301      	movs	r3, #1
     e72:	77fb      	strb	r3, [r7, #31]
     e74:	687b      	ldr	r3, [r7, #4]
     e76:	425b      	negs	r3, r3
     e78:	607b      	str	r3, [r7, #4]
     e7a:	e020      	b.n	ebe <gfx_print_int+0x70>
     e7c:	78fa      	ldrb	r2, [r7, #3]
     e7e:	687b      	ldr	r3, [r7, #4]
     e80:	fb93 f1f2 	sdiv	r1, r3, r2
     e84:	fb02 f201 	mul.w	r2, r2, r1
     e88:	1a9b      	subs	r3, r3, r2
     e8a:	617b      	str	r3, [r7, #20]
     e8c:	697b      	ldr	r3, [r7, #20]
     e8e:	2b09      	cmp	r3, #9
     e90:	dd02      	ble.n	e98 <gfx_print_int+0x4a>
     e92:	697b      	ldr	r3, [r7, #20]
     e94:	3307      	adds	r3, #7
     e96:	617b      	str	r3, [r7, #20]
     e98:	69bb      	ldr	r3, [r7, #24]
     e9a:	3b01      	subs	r3, #1
     e9c:	61bb      	str	r3, [r7, #24]
     e9e:	697b      	ldr	r3, [r7, #20]
     ea0:	3330      	adds	r3, #48	; 0x30
     ea2:	617b      	str	r3, [r7, #20]
     ea4:	697b      	ldr	r3, [r7, #20]
     ea6:	b2d9      	uxtb	r1, r3
     ea8:	f107 0208 	add.w	r2, r7, #8
     eac:	69bb      	ldr	r3, [r7, #24]
     eae:	4413      	add	r3, r2
     eb0:	460a      	mov	r2, r1
     eb2:	701a      	strb	r2, [r3, #0]
     eb4:	78fb      	ldrb	r3, [r7, #3]
     eb6:	687a      	ldr	r2, [r7, #4]
     eb8:	fb92 f3f3 	sdiv	r3, r2, r3
     ebc:	607b      	str	r3, [r7, #4]
     ebe:	687b      	ldr	r3, [r7, #4]
     ec0:	2b00      	cmp	r3, #0
     ec2:	d1db      	bne.n	e7c <gfx_print_int+0x2e>
     ec4:	69bb      	ldr	r3, [r7, #24]
     ec6:	2b0a      	cmp	r3, #10
     ec8:	d108      	bne.n	edc <gfx_print_int+0x8e>
     eca:	69bb      	ldr	r3, [r7, #24]
     ecc:	3b01      	subs	r3, #1
     ece:	61bb      	str	r3, [r7, #24]
     ed0:	f107 0208 	add.w	r2, r7, #8
     ed4:	69bb      	ldr	r3, [r7, #24]
     ed6:	4413      	add	r3, r2
     ed8:	2230      	movs	r2, #48	; 0x30
     eda:	701a      	strb	r2, [r3, #0]
     edc:	78fb      	ldrb	r3, [r7, #3]
     ede:	2b0a      	cmp	r3, #10
     ee0:	d10c      	bne.n	efc <gfx_print_int+0xae>
     ee2:	7ffb      	ldrb	r3, [r7, #31]
     ee4:	2b00      	cmp	r3, #0
     ee6:	d009      	beq.n	efc <gfx_print_int+0xae>
     ee8:	69bb      	ldr	r3, [r7, #24]
     eea:	3b01      	subs	r3, #1
     eec:	61bb      	str	r3, [r7, #24]
     eee:	f107 0208 	add.w	r2, r7, #8
     ef2:	69bb      	ldr	r3, [r7, #24]
     ef4:	4413      	add	r3, r2
     ef6:	222d      	movs	r2, #45	; 0x2d
     ef8:	701a      	strb	r2, [r3, #0]
     efa:	e014      	b.n	f26 <gfx_print_int+0xd8>
     efc:	78fb      	ldrb	r3, [r7, #3]
     efe:	2b10      	cmp	r3, #16
     f00:	d111      	bne.n	f26 <gfx_print_int+0xd8>
     f02:	69bb      	ldr	r3, [r7, #24]
     f04:	3b01      	subs	r3, #1
     f06:	61bb      	str	r3, [r7, #24]
     f08:	f107 0208 	add.w	r2, r7, #8
     f0c:	69bb      	ldr	r3, [r7, #24]
     f0e:	4413      	add	r3, r2
     f10:	2278      	movs	r2, #120	; 0x78
     f12:	701a      	strb	r2, [r3, #0]
     f14:	69bb      	ldr	r3, [r7, #24]
     f16:	3b01      	subs	r3, #1
     f18:	61bb      	str	r3, [r7, #24]
     f1a:	f107 0208 	add.w	r2, r7, #8
     f1e:	69bb      	ldr	r3, [r7, #24]
     f20:	4413      	add	r3, r2
     f22:	2230      	movs	r2, #48	; 0x30
     f24:	701a      	strb	r2, [r3, #0]
     f26:	f107 0208 	add.w	r2, r7, #8
     f2a:	69bb      	ldr	r3, [r7, #24]
     f2c:	4413      	add	r3, r2
     f2e:	4618      	mov	r0, r3
     f30:	f7ff ff6a 	bl	e08 <gfx_print>
     f34:	bf00      	nop
     f36:	3720      	adds	r7, #32
     f38:	46bd      	mov	sp, r7
     f3a:	bd80      	pop	{r7, pc}

00000f3c <gfx_plot>:
     f3c:	b480      	push	{r7}
     f3e:	b085      	sub	sp, #20
     f40:	af00      	add	r7, sp, #0
     f42:	60f8      	str	r0, [r7, #12]
     f44:	60b9      	str	r1, [r7, #8]
     f46:	4613      	mov	r3, r2
     f48:	71fb      	strb	r3, [r7, #7]
     f4a:	68fb      	ldr	r3, [r7, #12]
     f4c:	2b00      	cmp	r3, #0
     f4e:	db10      	blt.n	f72 <gfx_plot+0x36>
     f50:	68fb      	ldr	r3, [r7, #12]
     f52:	2b7f      	cmp	r3, #127	; 0x7f
     f54:	dc0d      	bgt.n	f72 <gfx_plot+0x36>
     f56:	68bb      	ldr	r3, [r7, #8]
     f58:	2b00      	cmp	r3, #0
     f5a:	db0a      	blt.n	f72 <gfx_plot+0x36>
     f5c:	68bb      	ldr	r3, [r7, #8]
     f5e:	2b4b      	cmp	r3, #75	; 0x4b
     f60:	dc07      	bgt.n	f72 <gfx_plot+0x36>
     f62:	68bb      	ldr	r3, [r7, #8]
     f64:	01da      	lsls	r2, r3, #7
     f66:	68fb      	ldr	r3, [r7, #12]
     f68:	4413      	add	r3, r2
     f6a:	4904      	ldr	r1, [pc, #16]	; (f7c <gfx_plot+0x40>)
     f6c:	79fa      	ldrb	r2, [r7, #7]
     f6e:	54ca      	strb	r2, [r1, r3]
     f70:	e000      	b.n	f74 <gfx_plot+0x38>
     f72:	bf00      	nop
     f74:	3714      	adds	r7, #20
     f76:	46bd      	mov	sp, r7
     f78:	bc80      	pop	{r7}
     f7a:	4770      	bx	lr
     f7c:	20000470 	.word	0x20000470

00000f80 <gfx_rectangle>:
     f80:	b580      	push	{r7, lr}
     f82:	b086      	sub	sp, #24
     f84:	af00      	add	r7, sp, #0
     f86:	60f8      	str	r0, [r7, #12]
     f88:	60b9      	str	r1, [r7, #8]
     f8a:	607a      	str	r2, [r7, #4]
     f8c:	603b      	str	r3, [r7, #0]
     f8e:	68fa      	ldr	r2, [r7, #12]
     f90:	687b      	ldr	r3, [r7, #4]
     f92:	429a      	cmp	r2, r3
     f94:	dd05      	ble.n	fa2 <gfx_rectangle+0x22>
     f96:	68fb      	ldr	r3, [r7, #12]
     f98:	617b      	str	r3, [r7, #20]
     f9a:	687b      	ldr	r3, [r7, #4]
     f9c:	60fb      	str	r3, [r7, #12]
     f9e:	697b      	ldr	r3, [r7, #20]
     fa0:	607b      	str	r3, [r7, #4]
     fa2:	68ba      	ldr	r2, [r7, #8]
     fa4:	683b      	ldr	r3, [r7, #0]
     fa6:	429a      	cmp	r2, r3
     fa8:	dd05      	ble.n	fb6 <gfx_rectangle+0x36>
     faa:	68bb      	ldr	r3, [r7, #8]
     fac:	617b      	str	r3, [r7, #20]
     fae:	683b      	ldr	r3, [r7, #0]
     fb0:	60bb      	str	r3, [r7, #8]
     fb2:	697b      	ldr	r3, [r7, #20]
     fb4:	603b      	str	r3, [r7, #0]
     fb6:	68fb      	ldr	r3, [r7, #12]
     fb8:	617b      	str	r3, [r7, #20]
     fba:	e00c      	b.n	fd6 <gfx_rectangle+0x56>
     fbc:	2207      	movs	r2, #7
     fbe:	68b9      	ldr	r1, [r7, #8]
     fc0:	6978      	ldr	r0, [r7, #20]
     fc2:	f7ff ffbb 	bl	f3c <gfx_plot>
     fc6:	2207      	movs	r2, #7
     fc8:	6839      	ldr	r1, [r7, #0]
     fca:	6978      	ldr	r0, [r7, #20]
     fcc:	f7ff ffb6 	bl	f3c <gfx_plot>
     fd0:	697b      	ldr	r3, [r7, #20]
     fd2:	3301      	adds	r3, #1
     fd4:	617b      	str	r3, [r7, #20]
     fd6:	697a      	ldr	r2, [r7, #20]
     fd8:	687b      	ldr	r3, [r7, #4]
     fda:	429a      	cmp	r2, r3
     fdc:	ddee      	ble.n	fbc <gfx_rectangle+0x3c>
     fde:	68bb      	ldr	r3, [r7, #8]
     fe0:	3301      	adds	r3, #1
     fe2:	60bb      	str	r3, [r7, #8]
     fe4:	e00c      	b.n	1000 <gfx_rectangle+0x80>
     fe6:	2207      	movs	r2, #7
     fe8:	68b9      	ldr	r1, [r7, #8]
     fea:	68f8      	ldr	r0, [r7, #12]
     fec:	f7ff ffa6 	bl	f3c <gfx_plot>
     ff0:	2207      	movs	r2, #7
     ff2:	68b9      	ldr	r1, [r7, #8]
     ff4:	6878      	ldr	r0, [r7, #4]
     ff6:	f7ff ffa1 	bl	f3c <gfx_plot>
     ffa:	68bb      	ldr	r3, [r7, #8]
     ffc:	3301      	adds	r3, #1
     ffe:	60bb      	str	r3, [r7, #8]
    1000:	68ba      	ldr	r2, [r7, #8]
    1002:	683b      	ldr	r3, [r7, #0]
    1004:	429a      	cmp	r2, r3
    1006:	dbee      	blt.n	fe6 <gfx_rectangle+0x66>
    1008:	bf00      	nop
    100a:	3718      	adds	r7, #24
    100c:	46bd      	mov	sp, r7
    100e:	bd80      	pop	{r7, pc}

00001010 <gfx_cls>:
    1010:	b480      	push	{r7}
    1012:	b083      	sub	sp, #12
    1014:	af00      	add	r7, sp, #0
    1016:	2300      	movs	r3, #0
    1018:	607b      	str	r3, [r7, #4]
    101a:	e007      	b.n	102c <gfx_cls+0x1c>
    101c:	4a0b      	ldr	r2, [pc, #44]	; (104c <gfx_cls+0x3c>)
    101e:	687b      	ldr	r3, [r7, #4]
    1020:	4413      	add	r3, r2
    1022:	2200      	movs	r2, #0
    1024:	701a      	strb	r2, [r3, #0]
    1026:	687b      	ldr	r3, [r7, #4]
    1028:	3301      	adds	r3, #1
    102a:	607b      	str	r3, [r7, #4]
    102c:	687b      	ldr	r3, [r7, #4]
    102e:	f5b3 5f18 	cmp.w	r3, #9728	; 0x2600
    1032:	dbf3      	blt.n	101c <gfx_cls+0xc>
    1034:	4b06      	ldr	r3, [pc, #24]	; (1050 <gfx_cls+0x40>)
    1036:	2200      	movs	r2, #0
    1038:	701a      	strb	r2, [r3, #0]
    103a:	4b06      	ldr	r3, [pc, #24]	; (1054 <gfx_cls+0x44>)
    103c:	2200      	movs	r2, #0
    103e:	701a      	strb	r2, [r3, #0]
    1040:	bf00      	nop
    1042:	370c      	adds	r7, #12
    1044:	46bd      	mov	sp, r7
    1046:	bc80      	pop	{r7}
    1048:	4770      	bx	lr
    104a:	bf00      	nop
    104c:	20000470 	.word	0x20000470
    1050:	2000045e 	.word	0x2000045e
    1054:	2000045f 	.word	0x2000045f

00001058 <gfx_scrollup>:
    1058:	b480      	push	{r7}
    105a:	b087      	sub	sp, #28
    105c:	af00      	add	r7, sp, #0
    105e:	4603      	mov	r3, r0
    1060:	71fb      	strb	r3, [r7, #7]
    1062:	79fb      	ldrb	r3, [r7, #7]
    1064:	01db      	lsls	r3, r3, #7
    1066:	4a15      	ldr	r2, [pc, #84]	; (10bc <gfx_scrollup+0x64>)
    1068:	4413      	add	r3, r2
    106a:	617b      	str	r3, [r7, #20]
    106c:	4b13      	ldr	r3, [pc, #76]	; (10bc <gfx_scrollup+0x64>)
    106e:	613b      	str	r3, [r7, #16]
    1070:	79fb      	ldrb	r3, [r7, #7]
    1072:	f1c3 034c 	rsb	r3, r3, #76	; 0x4c
    1076:	01db      	lsls	r3, r3, #7
    1078:	60fb      	str	r3, [r7, #12]
    107a:	e007      	b.n	108c <gfx_scrollup+0x34>
    107c:	693b      	ldr	r3, [r7, #16]
    107e:	1c5a      	adds	r2, r3, #1
    1080:	613a      	str	r2, [r7, #16]
    1082:	697a      	ldr	r2, [r7, #20]
    1084:	1c51      	adds	r1, r2, #1
    1086:	6179      	str	r1, [r7, #20]
    1088:	7812      	ldrb	r2, [r2, #0]
    108a:	701a      	strb	r2, [r3, #0]
    108c:	68fb      	ldr	r3, [r7, #12]
    108e:	1e5a      	subs	r2, r3, #1
    1090:	60fa      	str	r2, [r7, #12]
    1092:	2b00      	cmp	r3, #0
    1094:	d1f2      	bne.n	107c <gfx_scrollup+0x24>
    1096:	79fb      	ldrb	r3, [r7, #7]
    1098:	01db      	lsls	r3, r3, #7
    109a:	60fb      	str	r3, [r7, #12]
    109c:	e004      	b.n	10a8 <gfx_scrollup+0x50>
    109e:	693b      	ldr	r3, [r7, #16]
    10a0:	1c5a      	adds	r2, r3, #1
    10a2:	613a      	str	r2, [r7, #16]
    10a4:	2200      	movs	r2, #0
    10a6:	701a      	strb	r2, [r3, #0]
    10a8:	68fb      	ldr	r3, [r7, #12]
    10aa:	1e5a      	subs	r2, r3, #1
    10ac:	60fa      	str	r2, [r7, #12]
    10ae:	2b00      	cmp	r3, #0
    10b0:	d1f5      	bne.n	109e <gfx_scrollup+0x46>
    10b2:	bf00      	nop
    10b4:	371c      	adds	r7, #28
    10b6:	46bd      	mov	sp, r7
    10b8:	bc80      	pop	{r7}
    10ba:	4770      	bx	lr
    10bc:	20000470 	.word	0x20000470

000010c0 <set_sysclock>:
    10c0:	b480      	push	{r7}
    10c2:	af00      	add	r7, sp, #0
    10c4:	4a18      	ldr	r2, [pc, #96]	; (1128 <set_sysclock+0x68>)
    10c6:	4b18      	ldr	r3, [pc, #96]	; (1128 <set_sysclock+0x68>)
    10c8:	681b      	ldr	r3, [r3, #0]
    10ca:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    10ce:	6013      	str	r3, [r2, #0]
    10d0:	bf00      	nop
    10d2:	4b15      	ldr	r3, [pc, #84]	; (1128 <set_sysclock+0x68>)
    10d4:	681b      	ldr	r3, [r3, #0]
    10d6:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    10da:	2b00      	cmp	r3, #0
    10dc:	d0f9      	beq.n	10d2 <set_sysclock+0x12>
    10de:	4a12      	ldr	r2, [pc, #72]	; (1128 <set_sysclock+0x68>)
    10e0:	4b11      	ldr	r3, [pc, #68]	; (1128 <set_sysclock+0x68>)
    10e2:	685b      	ldr	r3, [r3, #4]
    10e4:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    10e8:	6053      	str	r3, [r2, #4]
    10ea:	4a0f      	ldr	r2, [pc, #60]	; (1128 <set_sysclock+0x68>)
    10ec:	4b0e      	ldr	r3, [pc, #56]	; (1128 <set_sysclock+0x68>)
    10ee:	681b      	ldr	r3, [r3, #0]
    10f0:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    10f4:	6013      	str	r3, [r2, #0]
    10f6:	bf00      	nop
    10f8:	4b0b      	ldr	r3, [pc, #44]	; (1128 <set_sysclock+0x68>)
    10fa:	681b      	ldr	r3, [r3, #0]
    10fc:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1100:	2b00      	cmp	r3, #0
    1102:	d0f9      	beq.n	10f8 <set_sysclock+0x38>
    1104:	4a09      	ldr	r2, [pc, #36]	; (112c <set_sysclock+0x6c>)
    1106:	4b09      	ldr	r3, [pc, #36]	; (112c <set_sysclock+0x6c>)
    1108:	681b      	ldr	r3, [r3, #0]
    110a:	f043 0312 	orr.w	r3, r3, #18
    110e:	6013      	str	r3, [r2, #0]
    1110:	4a05      	ldr	r2, [pc, #20]	; (1128 <set_sysclock+0x68>)
    1112:	4b05      	ldr	r3, [pc, #20]	; (1128 <set_sysclock+0x68>)
    1114:	685b      	ldr	r3, [r3, #4]
    1116:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    111a:	f043 0302 	orr.w	r3, r3, #2
    111e:	6053      	str	r3, [r2, #4]
    1120:	bf00      	nop
    1122:	46bd      	mov	sp, r7
    1124:	bc80      	pop	{r7}
    1126:	4770      	bx	lr
    1128:	40021000 	.word	0x40021000
    112c:	40022000 	.word	0x40022000

00001130 <main>:
    1130:	b580      	push	{r7, lr}
    1132:	b082      	sub	sp, #8
    1134:	af00      	add	r7, sp, #0
    1136:	f7ff ffc3 	bl	10c0 <set_sysclock>
    113a:	f001 f919 	bl	2370 <config_systicks>
    113e:	4b26      	ldr	r3, [pc, #152]	; (11d8 <main+0xa8>)
    1140:	f640 021d 	movw	r2, #2077	; 0x81d
    1144:	619a      	str	r2, [r3, #24]
    1146:	2206      	movs	r2, #6
    1148:	210d      	movs	r1, #13
    114a:	4824      	ldr	r0, [pc, #144]	; (11dc <main+0xac>)
    114c:	f7ff fd51 	bl	bf2 <config_pin>
    1150:	4a22      	ldr	r2, [pc, #136]	; (11dc <main+0xac>)
    1152:	4b22      	ldr	r3, [pc, #136]	; (11dc <main+0xac>)
    1154:	68db      	ldr	r3, [r3, #12]
    1156:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    115a:	60d3      	str	r3, [r2, #12]
    115c:	f001 f948 	bl	23f0 <tvout_init>
    1160:	f7ff ff56 	bl	1010 <gfx_cls>
    1164:	230f      	movs	r3, #15
    1166:	70fb      	strb	r3, [r7, #3]
    1168:	2300      	movs	r3, #0
    116a:	607b      	str	r3, [r7, #4]
    116c:	e013      	b.n	1196 <main+0x66>
    116e:	4a1c      	ldr	r2, [pc, #112]	; (11e0 <main+0xb0>)
    1170:	687b      	ldr	r3, [r7, #4]
    1172:	4413      	add	r3, r2
    1174:	78fa      	ldrb	r2, [r7, #3]
    1176:	701a      	strb	r2, [r3, #0]
    1178:	687b      	ldr	r3, [r7, #4]
    117a:	f003 0307 	and.w	r3, r3, #7
    117e:	2b00      	cmp	r3, #0
    1180:	d106      	bne.n	1190 <main+0x60>
    1182:	78fb      	ldrb	r3, [r7, #3]
    1184:	3b01      	subs	r3, #1
    1186:	70fb      	strb	r3, [r7, #3]
    1188:	78fb      	ldrb	r3, [r7, #3]
    118a:	f003 030f 	and.w	r3, r3, #15
    118e:	70fb      	strb	r3, [r7, #3]
    1190:	687b      	ldr	r3, [r7, #4]
    1192:	3301      	adds	r3, #1
    1194:	607b      	str	r3, [r7, #4]
    1196:	687b      	ldr	r3, [r7, #4]
    1198:	f5b3 5f18 	cmp.w	r3, #9728	; 0x2600
    119c:	dbe7      	blt.n	116e <main+0x3e>
    119e:	4811      	ldr	r0, [pc, #68]	; (11e4 <main+0xb4>)
    11a0:	f7ff fe32 	bl	e08 <gfx_print>
    11a4:	2300      	movs	r3, #0
    11a6:	607b      	str	r3, [r7, #4]
    11a8:	4b0f      	ldr	r3, [pc, #60]	; (11e8 <main+0xb8>)
    11aa:	f241 3288 	movw	r2, #5000	; 0x1388
    11ae:	601a      	str	r2, [r3, #0]
    11b0:	e002      	b.n	11b8 <main+0x88>
    11b2:	687b      	ldr	r3, [r7, #4]
    11b4:	3301      	adds	r3, #1
    11b6:	607b      	str	r3, [r7, #4]
    11b8:	4b0b      	ldr	r3, [pc, #44]	; (11e8 <main+0xb8>)
    11ba:	681b      	ldr	r3, [r3, #0]
    11bc:	2b00      	cmp	r3, #0
    11be:	d1f8      	bne.n	11b2 <main+0x82>
    11c0:	4b0a      	ldr	r3, [pc, #40]	; (11ec <main+0xbc>)
    11c2:	681b      	ldr	r3, [r3, #0]
    11c4:	3301      	adds	r3, #1
    11c6:	4a09      	ldr	r2, [pc, #36]	; (11ec <main+0xbc>)
    11c8:	6013      	str	r3, [r2, #0]
    11ca:	4b08      	ldr	r3, [pc, #32]	; (11ec <main+0xbc>)
    11cc:	681b      	ldr	r3, [r3, #0]
    11ce:	f003 0303 	and.w	r3, r3, #3
    11d2:	4a06      	ldr	r2, [pc, #24]	; (11ec <main+0xbc>)
    11d4:	6013      	str	r3, [r2, #0]
    11d6:	e7e5      	b.n	11a4 <main+0x74>
    11d8:	40021000 	.word	0x40021000
    11dc:	40011000 	.word	0x40011000
    11e0:	20000470 	.word	0x20000470
    11e4:	00002b20 	.word	0x00002b20
    11e8:	20000464 	.word	0x20000464
    11ec:	20000058 	.word	0x20000058

000011f0 <enable_interrupt>:
    11f0:	b480      	push	{r7}
    11f2:	b083      	sub	sp, #12
    11f4:	af00      	add	r7, sp, #0
    11f6:	6078      	str	r0, [r7, #4]
    11f8:	687b      	ldr	r3, [r7, #4]
    11fa:	2b3b      	cmp	r3, #59	; 0x3b
    11fc:	dc17      	bgt.n	122e <enable_interrupt+0x3e>
    11fe:	687b      	ldr	r3, [r7, #4]
    1200:	115b      	asrs	r3, r3, #5
    1202:	009b      	lsls	r3, r3, #2
    1204:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1208:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    120c:	687a      	ldr	r2, [r7, #4]
    120e:	1152      	asrs	r2, r2, #5
    1210:	0092      	lsls	r2, r2, #2
    1212:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1216:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    121a:	6812      	ldr	r2, [r2, #0]
    121c:	6879      	ldr	r1, [r7, #4]
    121e:	f001 011f 	and.w	r1, r1, #31
    1222:	2001      	movs	r0, #1
    1224:	fa00 f101 	lsl.w	r1, r0, r1
    1228:	430a      	orrs	r2, r1
    122a:	601a      	str	r2, [r3, #0]
    122c:	e000      	b.n	1230 <enable_interrupt+0x40>
    122e:	bf00      	nop
    1230:	370c      	adds	r7, #12
    1232:	46bd      	mov	sp, r7
    1234:	bc80      	pop	{r7}
    1236:	4770      	bx	lr

00001238 <disable_interrupt>:
    1238:	b480      	push	{r7}
    123a:	b083      	sub	sp, #12
    123c:	af00      	add	r7, sp, #0
    123e:	6078      	str	r0, [r7, #4]
    1240:	687b      	ldr	r3, [r7, #4]
    1242:	2b3b      	cmp	r3, #59	; 0x3b
    1244:	dc0c      	bgt.n	1260 <disable_interrupt+0x28>
    1246:	687b      	ldr	r3, [r7, #4]
    1248:	115b      	asrs	r3, r3, #5
    124a:	009a      	lsls	r2, r3, #2
    124c:	4b07      	ldr	r3, [pc, #28]	; (126c <disable_interrupt+0x34>)
    124e:	4413      	add	r3, r2
    1250:	687a      	ldr	r2, [r7, #4]
    1252:	f002 021f 	and.w	r2, r2, #31
    1256:	2101      	movs	r1, #1
    1258:	fa01 f202 	lsl.w	r2, r1, r2
    125c:	601a      	str	r2, [r3, #0]
    125e:	e000      	b.n	1262 <disable_interrupt+0x2a>
    1260:	bf00      	nop
    1262:	370c      	adds	r7, #12
    1264:	46bd      	mov	sp, r7
    1266:	bc80      	pop	{r7}
    1268:	4770      	bx	lr
    126a:	bf00      	nop
    126c:	e000e180 	.word	0xe000e180

00001270 <get_pending>:
    1270:	b480      	push	{r7}
    1272:	b083      	sub	sp, #12
    1274:	af00      	add	r7, sp, #0
    1276:	6078      	str	r0, [r7, #4]
    1278:	687b      	ldr	r3, [r7, #4]
    127a:	2b3b      	cmp	r3, #59	; 0x3b
    127c:	dd01      	ble.n	1282 <get_pending+0x12>
    127e:	2300      	movs	r3, #0
    1280:	e00c      	b.n	129c <get_pending+0x2c>
    1282:	687b      	ldr	r3, [r7, #4]
    1284:	115b      	asrs	r3, r3, #5
    1286:	009a      	lsls	r2, r3, #2
    1288:	4b07      	ldr	r3, [pc, #28]	; (12a8 <get_pending+0x38>)
    128a:	4413      	add	r3, r2
    128c:	681b      	ldr	r3, [r3, #0]
    128e:	687a      	ldr	r2, [r7, #4]
    1290:	f002 021f 	and.w	r2, r2, #31
    1294:	2101      	movs	r1, #1
    1296:	fa01 f202 	lsl.w	r2, r1, r2
    129a:	4013      	ands	r3, r2
    129c:	4618      	mov	r0, r3
    129e:	370c      	adds	r7, #12
    12a0:	46bd      	mov	sp, r7
    12a2:	bc80      	pop	{r7}
    12a4:	4770      	bx	lr
    12a6:	bf00      	nop
    12a8:	e000e280 	.word	0xe000e280

000012ac <get_active>:
    12ac:	b480      	push	{r7}
    12ae:	b083      	sub	sp, #12
    12b0:	af00      	add	r7, sp, #0
    12b2:	6078      	str	r0, [r7, #4]
    12b4:	687b      	ldr	r3, [r7, #4]
    12b6:	2b3b      	cmp	r3, #59	; 0x3b
    12b8:	dd01      	ble.n	12be <get_active+0x12>
    12ba:	2300      	movs	r3, #0
    12bc:	e00e      	b.n	12dc <get_active+0x30>
    12be:	687b      	ldr	r3, [r7, #4]
    12c0:	115b      	asrs	r3, r3, #5
    12c2:	009b      	lsls	r3, r3, #2
    12c4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    12c8:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    12cc:	681b      	ldr	r3, [r3, #0]
    12ce:	687a      	ldr	r2, [r7, #4]
    12d0:	f002 021f 	and.w	r2, r2, #31
    12d4:	2101      	movs	r1, #1
    12d6:	fa01 f202 	lsl.w	r2, r1, r2
    12da:	4013      	ands	r3, r2
    12dc:	4618      	mov	r0, r3
    12de:	370c      	adds	r7, #12
    12e0:	46bd      	mov	sp, r7
    12e2:	bc80      	pop	{r7}
    12e4:	4770      	bx	lr

000012e6 <set_pending>:
    12e6:	b480      	push	{r7}
    12e8:	b083      	sub	sp, #12
    12ea:	af00      	add	r7, sp, #0
    12ec:	6078      	str	r0, [r7, #4]
    12ee:	687b      	ldr	r3, [r7, #4]
    12f0:	2b3b      	cmp	r3, #59	; 0x3b
    12f2:	dc17      	bgt.n	1324 <set_pending+0x3e>
    12f4:	687b      	ldr	r3, [r7, #4]
    12f6:	115b      	asrs	r3, r3, #5
    12f8:	009b      	lsls	r3, r3, #2
    12fa:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    12fe:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    1302:	687a      	ldr	r2, [r7, #4]
    1304:	1152      	asrs	r2, r2, #5
    1306:	0092      	lsls	r2, r2, #2
    1308:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    130c:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    1310:	6812      	ldr	r2, [r2, #0]
    1312:	6879      	ldr	r1, [r7, #4]
    1314:	f001 011f 	and.w	r1, r1, #31
    1318:	2001      	movs	r0, #1
    131a:	fa00 f101 	lsl.w	r1, r0, r1
    131e:	430a      	orrs	r2, r1
    1320:	601a      	str	r2, [r3, #0]
    1322:	e000      	b.n	1326 <set_pending+0x40>
    1324:	bf00      	nop
    1326:	370c      	adds	r7, #12
    1328:	46bd      	mov	sp, r7
    132a:	bc80      	pop	{r7}
    132c:	4770      	bx	lr

0000132e <clear_pending>:
    132e:	b480      	push	{r7}
    1330:	b083      	sub	sp, #12
    1332:	af00      	add	r7, sp, #0
    1334:	6078      	str	r0, [r7, #4]
    1336:	687b      	ldr	r3, [r7, #4]
    1338:	2b3b      	cmp	r3, #59	; 0x3b
    133a:	dc0c      	bgt.n	1356 <clear_pending+0x28>
    133c:	687b      	ldr	r3, [r7, #4]
    133e:	115b      	asrs	r3, r3, #5
    1340:	009a      	lsls	r2, r3, #2
    1342:	4b07      	ldr	r3, [pc, #28]	; (1360 <clear_pending+0x32>)
    1344:	4413      	add	r3, r2
    1346:	687a      	ldr	r2, [r7, #4]
    1348:	f002 021f 	and.w	r2, r2, #31
    134c:	2101      	movs	r1, #1
    134e:	fa01 f202 	lsl.w	r2, r1, r2
    1352:	601a      	str	r2, [r3, #0]
    1354:	e000      	b.n	1358 <clear_pending+0x2a>
    1356:	bf00      	nop
    1358:	370c      	adds	r7, #12
    135a:	46bd      	mov	sp, r7
    135c:	bc80      	pop	{r7}
    135e:	4770      	bx	lr
    1360:	e000e280 	.word	0xe000e280

00001364 <set_int_priority>:
    1364:	b480      	push	{r7}
    1366:	b083      	sub	sp, #12
    1368:	af00      	add	r7, sp, #0
    136a:	6078      	str	r0, [r7, #4]
    136c:	6039      	str	r1, [r7, #0]
    136e:	687b      	ldr	r3, [r7, #4]
    1370:	2b00      	cmp	r3, #0
    1372:	db0d      	blt.n	1390 <set_int_priority+0x2c>
    1374:	687b      	ldr	r3, [r7, #4]
    1376:	2b3b      	cmp	r3, #59	; 0x3b
    1378:	dc0a      	bgt.n	1390 <set_int_priority+0x2c>
    137a:	687b      	ldr	r3, [r7, #4]
    137c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1380:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1384:	683a      	ldr	r2, [r7, #0]
    1386:	b2d2      	uxtb	r2, r2
    1388:	0112      	lsls	r2, r2, #4
    138a:	b2d2      	uxtb	r2, r2
    138c:	701a      	strb	r2, [r3, #0]
    138e:	e012      	b.n	13b6 <set_int_priority+0x52>
    1390:	687b      	ldr	r3, [r7, #4]
    1392:	2b00      	cmp	r3, #0
    1394:	da0f      	bge.n	13b6 <set_int_priority+0x52>
    1396:	687b      	ldr	r3, [r7, #4]
    1398:	f113 0f0f 	cmn.w	r3, #15
    139c:	db0b      	blt.n	13b6 <set_int_priority+0x52>
    139e:	687a      	ldr	r2, [r7, #4]
    13a0:	f06f 0303 	mvn.w	r3, #3
    13a4:	1a9b      	subs	r3, r3, r2
    13a6:	461a      	mov	r2, r3
    13a8:	4b05      	ldr	r3, [pc, #20]	; (13c0 <set_int_priority+0x5c>)
    13aa:	4413      	add	r3, r2
    13ac:	683a      	ldr	r2, [r7, #0]
    13ae:	b2d2      	uxtb	r2, r2
    13b0:	0112      	lsls	r2, r2, #4
    13b2:	b2d2      	uxtb	r2, r2
    13b4:	701a      	strb	r2, [r3, #0]
    13b6:	bf00      	nop
    13b8:	370c      	adds	r7, #12
    13ba:	46bd      	mov	sp, r7
    13bc:	bc80      	pop	{r7}
    13be:	4770      	bx	lr
    13c0:	e000ed18 	.word	0xe000ed18

000013c4 <leap_year>:
    13c4:	b480      	push	{r7}
    13c6:	b083      	sub	sp, #12
    13c8:	af00      	add	r7, sp, #0
    13ca:	6078      	str	r0, [r7, #4]
    13cc:	687b      	ldr	r3, [r7, #4]
    13ce:	f003 0303 	and.w	r3, r3, #3
    13d2:	2b00      	cmp	r3, #0
    13d4:	d11a      	bne.n	140c <leap_year+0x48>
    13d6:	687a      	ldr	r2, [r7, #4]
    13d8:	4b0f      	ldr	r3, [pc, #60]	; (1418 <leap_year+0x54>)
    13da:	fba3 1302 	umull	r1, r3, r3, r2
    13de:	095b      	lsrs	r3, r3, #5
    13e0:	2164      	movs	r1, #100	; 0x64
    13e2:	fb01 f303 	mul.w	r3, r1, r3
    13e6:	1ad3      	subs	r3, r2, r3
    13e8:	2b00      	cmp	r3, #0
    13ea:	d10d      	bne.n	1408 <leap_year+0x44>
    13ec:	687a      	ldr	r2, [r7, #4]
    13ee:	4b0a      	ldr	r3, [pc, #40]	; (1418 <leap_year+0x54>)
    13f0:	fba3 1302 	umull	r1, r3, r3, r2
    13f4:	09db      	lsrs	r3, r3, #7
    13f6:	f44f 71c8 	mov.w	r1, #400	; 0x190
    13fa:	fb01 f303 	mul.w	r3, r1, r3
    13fe:	1ad3      	subs	r3, r2, r3
    1400:	2b00      	cmp	r3, #0
    1402:	d001      	beq.n	1408 <leap_year+0x44>
    1404:	2300      	movs	r3, #0
    1406:	e002      	b.n	140e <leap_year+0x4a>
    1408:	2301      	movs	r3, #1
    140a:	e000      	b.n	140e <leap_year+0x4a>
    140c:	2300      	movs	r3, #0
    140e:	4618      	mov	r0, r3
    1410:	370c      	adds	r7, #12
    1412:	46bd      	mov	sp, r7
    1414:	bc80      	pop	{r7}
    1416:	4770      	bx	lr
    1418:	51eb851f 	.word	0x51eb851f

0000141c <sec_per_month>:
    141c:	b480      	push	{r7}
    141e:	b085      	sub	sp, #20
    1420:	af00      	add	r7, sp, #0
    1422:	6078      	str	r0, [r7, #4]
    1424:	6039      	str	r1, [r7, #0]
    1426:	4a0d      	ldr	r2, [pc, #52]	; (145c <sec_per_month+0x40>)
    1428:	683b      	ldr	r3, [r7, #0]
    142a:	4413      	add	r3, r2
    142c:	781b      	ldrb	r3, [r3, #0]
    142e:	461a      	mov	r2, r3
    1430:	4b0b      	ldr	r3, [pc, #44]	; (1460 <sec_per_month+0x44>)
    1432:	fb03 f302 	mul.w	r3, r3, r2
    1436:	60fb      	str	r3, [r7, #12]
    1438:	683b      	ldr	r3, [r7, #0]
    143a:	2b02      	cmp	r3, #2
    143c:	d108      	bne.n	1450 <sec_per_month+0x34>
    143e:	687b      	ldr	r3, [r7, #4]
    1440:	2b00      	cmp	r3, #0
    1442:	d005      	beq.n	1450 <sec_per_month+0x34>
    1444:	68fb      	ldr	r3, [r7, #12]
    1446:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    144a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    144e:	60fb      	str	r3, [r7, #12]
    1450:	68fb      	ldr	r3, [r7, #12]
    1452:	4618      	mov	r0, r3
    1454:	3714      	adds	r7, #20
    1456:	46bd      	mov	sp, r7
    1458:	bc80      	pop	{r7}
    145a:	4770      	bx	lr
    145c:	00002be0 	.word	0x00002be0
    1460:	00015180 	.word	0x00015180

00001464 <get_date_time>:
    1464:	b580      	push	{r7, lr}
    1466:	b086      	sub	sp, #24
    1468:	af00      	add	r7, sp, #0
    146a:	6078      	str	r0, [r7, #4]
    146c:	4b66      	ldr	r3, [pc, #408]	; (1608 <get_date_time+0x1a4>)
    146e:	699b      	ldr	r3, [r3, #24]
    1470:	041a      	lsls	r2, r3, #16
    1472:	4b65      	ldr	r3, [pc, #404]	; (1608 <get_date_time+0x1a4>)
    1474:	69db      	ldr	r3, [r3, #28]
    1476:	4413      	add	r3, r2
    1478:	617b      	str	r3, [r7, #20]
    147a:	687b      	ldr	r3, [r7, #4]
    147c:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1480:	811a      	strh	r2, [r3, #8]
    1482:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1486:	f7ff ff9d 	bl	13c4 <leap_year>
    148a:	6138      	str	r0, [r7, #16]
    148c:	e019      	b.n	14c2 <get_date_time+0x5e>
    148e:	693b      	ldr	r3, [r7, #16]
    1490:	2b00      	cmp	r3, #0
    1492:	d006      	beq.n	14a2 <get_date_time+0x3e>
    1494:	697b      	ldr	r3, [r7, #20]
    1496:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    149a:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    149e:	617b      	str	r3, [r7, #20]
    14a0:	e003      	b.n	14aa <get_date_time+0x46>
    14a2:	697a      	ldr	r2, [r7, #20]
    14a4:	4b59      	ldr	r3, [pc, #356]	; (160c <get_date_time+0x1a8>)
    14a6:	4413      	add	r3, r2
    14a8:	617b      	str	r3, [r7, #20]
    14aa:	687b      	ldr	r3, [r7, #4]
    14ac:	891b      	ldrh	r3, [r3, #8]
    14ae:	3301      	adds	r3, #1
    14b0:	b29a      	uxth	r2, r3
    14b2:	687b      	ldr	r3, [r7, #4]
    14b4:	811a      	strh	r2, [r3, #8]
    14b6:	687b      	ldr	r3, [r7, #4]
    14b8:	891b      	ldrh	r3, [r3, #8]
    14ba:	4618      	mov	r0, r3
    14bc:	f7ff ff82 	bl	13c4 <leap_year>
    14c0:	6138      	str	r0, [r7, #16]
    14c2:	693b      	ldr	r3, [r7, #16]
    14c4:	2b00      	cmp	r3, #0
    14c6:	d103      	bne.n	14d0 <get_date_time+0x6c>
    14c8:	697b      	ldr	r3, [r7, #20]
    14ca:	4a51      	ldr	r2, [pc, #324]	; (1610 <get_date_time+0x1ac>)
    14cc:	4293      	cmp	r3, r2
    14ce:	d8de      	bhi.n	148e <get_date_time+0x2a>
    14d0:	693b      	ldr	r3, [r7, #16]
    14d2:	2b00      	cmp	r3, #0
    14d4:	d003      	beq.n	14de <get_date_time+0x7a>
    14d6:	697b      	ldr	r3, [r7, #20]
    14d8:	4a4e      	ldr	r2, [pc, #312]	; (1614 <get_date_time+0x1b0>)
    14da:	4293      	cmp	r3, r2
    14dc:	d8d7      	bhi.n	148e <get_date_time+0x2a>
    14de:	687a      	ldr	r2, [r7, #4]
    14e0:	8853      	ldrh	r3, [r2, #2]
    14e2:	2101      	movs	r1, #1
    14e4:	f361 1389 	bfi	r3, r1, #6, #4
    14e8:	8053      	strh	r3, [r2, #2]
    14ea:	687a      	ldr	r2, [r7, #4]
    14ec:	7893      	ldrb	r3, [r2, #2]
    14ee:	2101      	movs	r1, #1
    14f0:	f361 0345 	bfi	r3, r1, #1, #5
    14f4:	7093      	strb	r3, [r2, #2]
    14f6:	687a      	ldr	r2, [r7, #4]
    14f8:	6813      	ldr	r3, [r2, #0]
    14fa:	f36f 3310 	bfc	r3, #12, #5
    14fe:	6013      	str	r3, [r2, #0]
    1500:	687a      	ldr	r2, [r7, #4]
    1502:	8813      	ldrh	r3, [r2, #0]
    1504:	f36f 138b 	bfc	r3, #6, #6
    1508:	8013      	strh	r3, [r2, #0]
    150a:	687a      	ldr	r2, [r7, #4]
    150c:	7813      	ldrb	r3, [r2, #0]
    150e:	f36f 0305 	bfc	r3, #0, #6
    1512:	7013      	strb	r3, [r2, #0]
    1514:	e011      	b.n	153a <get_date_time+0xd6>
    1516:	687b      	ldr	r3, [r7, #4]
    1518:	885b      	ldrh	r3, [r3, #2]
    151a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    151e:	b2db      	uxtb	r3, r3
    1520:	3301      	adds	r3, #1
    1522:	f003 030f 	and.w	r3, r3, #15
    1526:	b2d9      	uxtb	r1, r3
    1528:	687a      	ldr	r2, [r7, #4]
    152a:	8853      	ldrh	r3, [r2, #2]
    152c:	f361 1389 	bfi	r3, r1, #6, #4
    1530:	8053      	strh	r3, [r2, #2]
    1532:	697a      	ldr	r2, [r7, #20]
    1534:	68fb      	ldr	r3, [r7, #12]
    1536:	1ad3      	subs	r3, r2, r3
    1538:	617b      	str	r3, [r7, #20]
    153a:	687b      	ldr	r3, [r7, #4]
    153c:	885b      	ldrh	r3, [r3, #2]
    153e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1542:	b2db      	uxtb	r3, r3
    1544:	4619      	mov	r1, r3
    1546:	6938      	ldr	r0, [r7, #16]
    1548:	f7ff ff68 	bl	141c <sec_per_month>
    154c:	60f8      	str	r0, [r7, #12]
    154e:	68fa      	ldr	r2, [r7, #12]
    1550:	697b      	ldr	r3, [r7, #20]
    1552:	429a      	cmp	r2, r3
    1554:	d3df      	bcc.n	1516 <get_date_time+0xb2>
    1556:	697b      	ldr	r3, [r7, #20]
    1558:	4a2f      	ldr	r2, [pc, #188]	; (1618 <get_date_time+0x1b4>)
    155a:	fba2 2303 	umull	r2, r3, r2, r3
    155e:	0c1b      	lsrs	r3, r3, #16
    1560:	b2db      	uxtb	r3, r3
    1562:	3301      	adds	r3, #1
    1564:	b2db      	uxtb	r3, r3
    1566:	f003 031f 	and.w	r3, r3, #31
    156a:	b2d9      	uxtb	r1, r3
    156c:	687a      	ldr	r2, [r7, #4]
    156e:	7893      	ldrb	r3, [r2, #2]
    1570:	f361 0345 	bfi	r3, r1, #1, #5
    1574:	7093      	strb	r3, [r2, #2]
    1576:	697b      	ldr	r3, [r7, #20]
    1578:	4a27      	ldr	r2, [pc, #156]	; (1618 <get_date_time+0x1b4>)
    157a:	fba2 1203 	umull	r1, r2, r2, r3
    157e:	0c12      	lsrs	r2, r2, #16
    1580:	4926      	ldr	r1, [pc, #152]	; (161c <get_date_time+0x1b8>)
    1582:	fb01 f202 	mul.w	r2, r1, r2
    1586:	1a9b      	subs	r3, r3, r2
    1588:	617b      	str	r3, [r7, #20]
    158a:	697b      	ldr	r3, [r7, #20]
    158c:	4a24      	ldr	r2, [pc, #144]	; (1620 <get_date_time+0x1bc>)
    158e:	fba2 2303 	umull	r2, r3, r2, r3
    1592:	0adb      	lsrs	r3, r3, #11
    1594:	b2db      	uxtb	r3, r3
    1596:	f003 031f 	and.w	r3, r3, #31
    159a:	b2d9      	uxtb	r1, r3
    159c:	687a      	ldr	r2, [r7, #4]
    159e:	6813      	ldr	r3, [r2, #0]
    15a0:	f361 3310 	bfi	r3, r1, #12, #5
    15a4:	6013      	str	r3, [r2, #0]
    15a6:	697b      	ldr	r3, [r7, #20]
    15a8:	4a1d      	ldr	r2, [pc, #116]	; (1620 <get_date_time+0x1bc>)
    15aa:	fba2 1203 	umull	r1, r2, r2, r3
    15ae:	0ad2      	lsrs	r2, r2, #11
    15b0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    15b4:	fb01 f202 	mul.w	r2, r1, r2
    15b8:	1a9b      	subs	r3, r3, r2
    15ba:	617b      	str	r3, [r7, #20]
    15bc:	697b      	ldr	r3, [r7, #20]
    15be:	4a19      	ldr	r2, [pc, #100]	; (1624 <get_date_time+0x1c0>)
    15c0:	fba2 2303 	umull	r2, r3, r2, r3
    15c4:	095b      	lsrs	r3, r3, #5
    15c6:	b2db      	uxtb	r3, r3
    15c8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    15cc:	b2d9      	uxtb	r1, r3
    15ce:	687a      	ldr	r2, [r7, #4]
    15d0:	8813      	ldrh	r3, [r2, #0]
    15d2:	f361 138b 	bfi	r3, r1, #6, #6
    15d6:	8013      	strh	r3, [r2, #0]
    15d8:	6979      	ldr	r1, [r7, #20]
    15da:	4b12      	ldr	r3, [pc, #72]	; (1624 <get_date_time+0x1c0>)
    15dc:	fba3 2301 	umull	r2, r3, r3, r1
    15e0:	095a      	lsrs	r2, r3, #5
    15e2:	4613      	mov	r3, r2
    15e4:	011b      	lsls	r3, r3, #4
    15e6:	1a9b      	subs	r3, r3, r2
    15e8:	009b      	lsls	r3, r3, #2
    15ea:	1aca      	subs	r2, r1, r3
    15ec:	b2d3      	uxtb	r3, r2
    15ee:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    15f2:	b2d9      	uxtb	r1, r3
    15f4:	687a      	ldr	r2, [r7, #4]
    15f6:	7813      	ldrb	r3, [r2, #0]
    15f8:	f361 0305 	bfi	r3, r1, #0, #6
    15fc:	7013      	strb	r3, [r2, #0]
    15fe:	bf00      	nop
    1600:	3718      	adds	r7, #24
    1602:	46bd      	mov	sp, r7
    1604:	bd80      	pop	{r7, pc}
    1606:	bf00      	nop
    1608:	40002800 	.word	0x40002800
    160c:	fe1ecc80 	.word	0xfe1ecc80
    1610:	01e1337f 	.word	0x01e1337f
    1614:	01e284ff 	.word	0x01e284ff
    1618:	c22e4507 	.word	0xc22e4507
    161c:	00015180 	.word	0x00015180
    1620:	91a2b3c5 	.word	0x91a2b3c5
    1624:	88888889 	.word	0x88888889

00001628 <set_date_time>:
    1628:	b580      	push	{r7, lr}
    162a:	b086      	sub	sp, #24
    162c:	af00      	add	r7, sp, #0
    162e:	6078      	str	r0, [r7, #4]
    1630:	2300      	movs	r3, #0
    1632:	613b      	str	r3, [r7, #16]
    1634:	687b      	ldr	r3, [r7, #4]
    1636:	891b      	ldrh	r3, [r3, #8]
    1638:	f240 72b1 	movw	r2, #1969	; 0x7b1
    163c:	4293      	cmp	r3, r2
    163e:	d803      	bhi.n	1648 <set_date_time+0x20>
    1640:	687b      	ldr	r3, [r7, #4]
    1642:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1646:	811a      	strh	r2, [r3, #8]
    1648:	687b      	ldr	r3, [r7, #4]
    164a:	891b      	ldrh	r3, [r3, #8]
    164c:	f640 023a 	movw	r2, #2106	; 0x83a
    1650:	4293      	cmp	r3, r2
    1652:	d903      	bls.n	165c <set_date_time+0x34>
    1654:	687b      	ldr	r3, [r7, #4]
    1656:	f640 023a 	movw	r2, #2106	; 0x83a
    165a:	811a      	strh	r2, [r3, #8]
    165c:	687b      	ldr	r3, [r7, #4]
    165e:	891b      	ldrh	r3, [r3, #8]
    1660:	4618      	mov	r0, r3
    1662:	f7ff feaf 	bl	13c4 <leap_year>
    1666:	60f8      	str	r0, [r7, #12]
    1668:	f240 73b2 	movw	r3, #1970	; 0x7b2
    166c:	617b      	str	r3, [r7, #20]
    166e:	e013      	b.n	1698 <set_date_time+0x70>
    1670:	6978      	ldr	r0, [r7, #20]
    1672:	f7ff fea7 	bl	13c4 <leap_year>
    1676:	4603      	mov	r3, r0
    1678:	2b00      	cmp	r3, #0
    167a:	d006      	beq.n	168a <set_date_time+0x62>
    167c:	693b      	ldr	r3, [r7, #16]
    167e:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1682:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    1686:	613b      	str	r3, [r7, #16]
    1688:	e003      	b.n	1692 <set_date_time+0x6a>
    168a:	693a      	ldr	r2, [r7, #16]
    168c:	4b42      	ldr	r3, [pc, #264]	; (1798 <set_date_time+0x170>)
    168e:	4413      	add	r3, r2
    1690:	613b      	str	r3, [r7, #16]
    1692:	697b      	ldr	r3, [r7, #20]
    1694:	3301      	adds	r3, #1
    1696:	617b      	str	r3, [r7, #20]
    1698:	687b      	ldr	r3, [r7, #4]
    169a:	891b      	ldrh	r3, [r3, #8]
    169c:	461a      	mov	r2, r3
    169e:	697b      	ldr	r3, [r7, #20]
    16a0:	429a      	cmp	r2, r3
    16a2:	d8e5      	bhi.n	1670 <set_date_time+0x48>
    16a4:	2301      	movs	r3, #1
    16a6:	617b      	str	r3, [r7, #20]
    16a8:	e00a      	b.n	16c0 <set_date_time+0x98>
    16aa:	6979      	ldr	r1, [r7, #20]
    16ac:	68f8      	ldr	r0, [r7, #12]
    16ae:	f7ff feb5 	bl	141c <sec_per_month>
    16b2:	4602      	mov	r2, r0
    16b4:	693b      	ldr	r3, [r7, #16]
    16b6:	4413      	add	r3, r2
    16b8:	613b      	str	r3, [r7, #16]
    16ba:	697b      	ldr	r3, [r7, #20]
    16bc:	3301      	adds	r3, #1
    16be:	617b      	str	r3, [r7, #20]
    16c0:	687b      	ldr	r3, [r7, #4]
    16c2:	885b      	ldrh	r3, [r3, #2]
    16c4:	f3c3 1383 	ubfx	r3, r3, #6, #4
    16c8:	b2db      	uxtb	r3, r3
    16ca:	461a      	mov	r2, r3
    16cc:	697b      	ldr	r3, [r7, #20]
    16ce:	429a      	cmp	r2, r3
    16d0:	d8eb      	bhi.n	16aa <set_date_time+0x82>
    16d2:	687b      	ldr	r3, [r7, #4]
    16d4:	789b      	ldrb	r3, [r3, #2]
    16d6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    16da:	b2db      	uxtb	r3, r3
    16dc:	3b01      	subs	r3, #1
    16de:	4a2f      	ldr	r2, [pc, #188]	; (179c <set_date_time+0x174>)
    16e0:	fb02 f303 	mul.w	r3, r2, r3
    16e4:	461a      	mov	r2, r3
    16e6:	693b      	ldr	r3, [r7, #16]
    16e8:	4413      	add	r3, r2
    16ea:	613b      	str	r3, [r7, #16]
    16ec:	687b      	ldr	r3, [r7, #4]
    16ee:	681b      	ldr	r3, [r3, #0]
    16f0:	f3c3 3304 	ubfx	r3, r3, #12, #5
    16f4:	b2db      	uxtb	r3, r3
    16f6:	461a      	mov	r2, r3
    16f8:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    16fc:	fb03 f302 	mul.w	r3, r3, r2
    1700:	461a      	mov	r2, r3
    1702:	693b      	ldr	r3, [r7, #16]
    1704:	4413      	add	r3, r2
    1706:	613b      	str	r3, [r7, #16]
    1708:	687b      	ldr	r3, [r7, #4]
    170a:	881b      	ldrh	r3, [r3, #0]
    170c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1710:	b2db      	uxtb	r3, r3
    1712:	461a      	mov	r2, r3
    1714:	4613      	mov	r3, r2
    1716:	011b      	lsls	r3, r3, #4
    1718:	1a9b      	subs	r3, r3, r2
    171a:	009b      	lsls	r3, r3, #2
    171c:	461a      	mov	r2, r3
    171e:	693b      	ldr	r3, [r7, #16]
    1720:	4413      	add	r3, r2
    1722:	613b      	str	r3, [r7, #16]
    1724:	687b      	ldr	r3, [r7, #4]
    1726:	781b      	ldrb	r3, [r3, #0]
    1728:	f3c3 0305 	ubfx	r3, r3, #0, #6
    172c:	b2db      	uxtb	r3, r3
    172e:	461a      	mov	r2, r3
    1730:	693b      	ldr	r3, [r7, #16]
    1732:	4413      	add	r3, r2
    1734:	613b      	str	r3, [r7, #16]
    1736:	4a1a      	ldr	r2, [pc, #104]	; (17a0 <set_date_time+0x178>)
    1738:	4b19      	ldr	r3, [pc, #100]	; (17a0 <set_date_time+0x178>)
    173a:	69db      	ldr	r3, [r3, #28]
    173c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1740:	61d3      	str	r3, [r2, #28]
    1742:	4a18      	ldr	r2, [pc, #96]	; (17a4 <set_date_time+0x17c>)
    1744:	4b17      	ldr	r3, [pc, #92]	; (17a4 <set_date_time+0x17c>)
    1746:	681b      	ldr	r3, [r3, #0]
    1748:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    174c:	6013      	str	r3, [r2, #0]
    174e:	4a16      	ldr	r2, [pc, #88]	; (17a8 <set_date_time+0x180>)
    1750:	4b15      	ldr	r3, [pc, #84]	; (17a8 <set_date_time+0x180>)
    1752:	685b      	ldr	r3, [r3, #4]
    1754:	f043 0310 	orr.w	r3, r3, #16
    1758:	6053      	str	r3, [r2, #4]
    175a:	4a13      	ldr	r2, [pc, #76]	; (17a8 <set_date_time+0x180>)
    175c:	693b      	ldr	r3, [r7, #16]
    175e:	0c1b      	lsrs	r3, r3, #16
    1760:	6193      	str	r3, [r2, #24]
    1762:	4a11      	ldr	r2, [pc, #68]	; (17a8 <set_date_time+0x180>)
    1764:	693b      	ldr	r3, [r7, #16]
    1766:	b29b      	uxth	r3, r3
    1768:	61d3      	str	r3, [r2, #28]
    176a:	4a0f      	ldr	r2, [pc, #60]	; (17a8 <set_date_time+0x180>)
    176c:	4b0e      	ldr	r3, [pc, #56]	; (17a8 <set_date_time+0x180>)
    176e:	685b      	ldr	r3, [r3, #4]
    1770:	f023 0310 	bic.w	r3, r3, #16
    1774:	6053      	str	r3, [r2, #4]
    1776:	bf00      	nop
    1778:	4b0b      	ldr	r3, [pc, #44]	; (17a8 <set_date_time+0x180>)
    177a:	685b      	ldr	r3, [r3, #4]
    177c:	f003 0320 	and.w	r3, r3, #32
    1780:	2b00      	cmp	r3, #0
    1782:	d0f9      	beq.n	1778 <set_date_time+0x150>
    1784:	4a07      	ldr	r2, [pc, #28]	; (17a4 <set_date_time+0x17c>)
    1786:	4b07      	ldr	r3, [pc, #28]	; (17a4 <set_date_time+0x17c>)
    1788:	681b      	ldr	r3, [r3, #0]
    178a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    178e:	6013      	str	r3, [r2, #0]
    1790:	bf00      	nop
    1792:	3718      	adds	r7, #24
    1794:	46bd      	mov	sp, r7
    1796:	bd80      	pop	{r7, pc}
    1798:	01e13380 	.word	0x01e13380
    179c:	00015180 	.word	0x00015180
    17a0:	40021000 	.word	0x40021000
    17a4:	40007000 	.word	0x40007000
    17a8:	40002800 	.word	0x40002800

000017ac <rtc_init>:
    17ac:	b580      	push	{r7, lr}
    17ae:	b082      	sub	sp, #8
    17b0:	af00      	add	r7, sp, #0
    17b2:	6078      	str	r0, [r7, #4]
    17b4:	6039      	str	r1, [r7, #0]
    17b6:	4b4a      	ldr	r3, [pc, #296]	; (18e0 <rtc_init+0x134>)
    17b8:	685b      	ldr	r3, [r3, #4]
    17ba:	f64a 2255 	movw	r2, #43605	; 0xaa55
    17be:	4293      	cmp	r3, r2
    17c0:	f000 8082 	beq.w	18c8 <rtc_init+0x11c>
    17c4:	4a47      	ldr	r2, [pc, #284]	; (18e4 <rtc_init+0x138>)
    17c6:	4b47      	ldr	r3, [pc, #284]	; (18e4 <rtc_init+0x138>)
    17c8:	69db      	ldr	r3, [r3, #28]
    17ca:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    17ce:	61d3      	str	r3, [r2, #28]
    17d0:	4a45      	ldr	r2, [pc, #276]	; (18e8 <rtc_init+0x13c>)
    17d2:	4b45      	ldr	r3, [pc, #276]	; (18e8 <rtc_init+0x13c>)
    17d4:	681b      	ldr	r3, [r3, #0]
    17d6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    17da:	6013      	str	r3, [r2, #0]
    17dc:	4a41      	ldr	r2, [pc, #260]	; (18e4 <rtc_init+0x138>)
    17de:	4b41      	ldr	r3, [pc, #260]	; (18e4 <rtc_init+0x138>)
    17e0:	6a1b      	ldr	r3, [r3, #32]
    17e2:	f043 0301 	orr.w	r3, r3, #1
    17e6:	6213      	str	r3, [r2, #32]
    17e8:	bf00      	nop
    17ea:	4b3e      	ldr	r3, [pc, #248]	; (18e4 <rtc_init+0x138>)
    17ec:	6a1b      	ldr	r3, [r3, #32]
    17ee:	f003 0302 	and.w	r3, r3, #2
    17f2:	2b00      	cmp	r3, #0
    17f4:	d0f9      	beq.n	17ea <rtc_init+0x3e>
    17f6:	4a3b      	ldr	r2, [pc, #236]	; (18e4 <rtc_init+0x138>)
    17f8:	4b3a      	ldr	r3, [pc, #232]	; (18e4 <rtc_init+0x138>)
    17fa:	6a1b      	ldr	r3, [r3, #32]
    17fc:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1800:	6213      	str	r3, [r2, #32]
    1802:	bf00      	nop
    1804:	4b39      	ldr	r3, [pc, #228]	; (18ec <rtc_init+0x140>)
    1806:	685b      	ldr	r3, [r3, #4]
    1808:	f003 0308 	and.w	r3, r3, #8
    180c:	2b00      	cmp	r3, #0
    180e:	d0f9      	beq.n	1804 <rtc_init+0x58>
    1810:	bf00      	nop
    1812:	4b36      	ldr	r3, [pc, #216]	; (18ec <rtc_init+0x140>)
    1814:	685b      	ldr	r3, [r3, #4]
    1816:	f003 0320 	and.w	r3, r3, #32
    181a:	2b00      	cmp	r3, #0
    181c:	d0f9      	beq.n	1812 <rtc_init+0x66>
    181e:	4a33      	ldr	r2, [pc, #204]	; (18ec <rtc_init+0x140>)
    1820:	4b32      	ldr	r3, [pc, #200]	; (18ec <rtc_init+0x140>)
    1822:	685b      	ldr	r3, [r3, #4]
    1824:	f043 0310 	orr.w	r3, r3, #16
    1828:	6053      	str	r3, [r2, #4]
    182a:	bf00      	nop
    182c:	4b2f      	ldr	r3, [pc, #188]	; (18ec <rtc_init+0x140>)
    182e:	685b      	ldr	r3, [r3, #4]
    1830:	f003 0320 	and.w	r3, r3, #32
    1834:	2b00      	cmp	r3, #0
    1836:	d0f9      	beq.n	182c <rtc_init+0x80>
    1838:	492c      	ldr	r1, [pc, #176]	; (18ec <rtc_init+0x140>)
    183a:	4b2c      	ldr	r3, [pc, #176]	; (18ec <rtc_init+0x140>)
    183c:	681a      	ldr	r2, [r3, #0]
    183e:	683b      	ldr	r3, [r7, #0]
    1840:	4313      	orrs	r3, r2
    1842:	600b      	str	r3, [r1, #0]
    1844:	bf00      	nop
    1846:	4b29      	ldr	r3, [pc, #164]	; (18ec <rtc_init+0x140>)
    1848:	685b      	ldr	r3, [r3, #4]
    184a:	f003 0320 	and.w	r3, r3, #32
    184e:	2b00      	cmp	r3, #0
    1850:	d0f9      	beq.n	1846 <rtc_init+0x9a>
    1852:	4a26      	ldr	r2, [pc, #152]	; (18ec <rtc_init+0x140>)
    1854:	687b      	ldr	r3, [r7, #4]
    1856:	03db      	lsls	r3, r3, #15
    1858:	4925      	ldr	r1, [pc, #148]	; (18f0 <rtc_init+0x144>)
    185a:	fba1 1303 	umull	r1, r3, r1, r3
    185e:	099b      	lsrs	r3, r3, #6
    1860:	3b01      	subs	r3, #1
    1862:	b29b      	uxth	r3, r3
    1864:	60d3      	str	r3, [r2, #12]
    1866:	bf00      	nop
    1868:	4b20      	ldr	r3, [pc, #128]	; (18ec <rtc_init+0x140>)
    186a:	685b      	ldr	r3, [r3, #4]
    186c:	f003 0320 	and.w	r3, r3, #32
    1870:	2b00      	cmp	r3, #0
    1872:	d0f9      	beq.n	1868 <rtc_init+0xbc>
    1874:	4a1d      	ldr	r2, [pc, #116]	; (18ec <rtc_init+0x140>)
    1876:	687b      	ldr	r3, [r7, #4]
    1878:	03db      	lsls	r3, r3, #15
    187a:	491d      	ldr	r1, [pc, #116]	; (18f0 <rtc_init+0x144>)
    187c:	fba1 1303 	umull	r1, r3, r1, r3
    1880:	099b      	lsrs	r3, r3, #6
    1882:	3b01      	subs	r3, #1
    1884:	0c1b      	lsrs	r3, r3, #16
    1886:	f003 030f 	and.w	r3, r3, #15
    188a:	6093      	str	r3, [r2, #8]
    188c:	bf00      	nop
    188e:	4b17      	ldr	r3, [pc, #92]	; (18ec <rtc_init+0x140>)
    1890:	685b      	ldr	r3, [r3, #4]
    1892:	f003 0320 	and.w	r3, r3, #32
    1896:	2b00      	cmp	r3, #0
    1898:	d0f9      	beq.n	188e <rtc_init+0xe2>
    189a:	4b11      	ldr	r3, [pc, #68]	; (18e0 <rtc_init+0x134>)
    189c:	f64a 2255 	movw	r2, #43605	; 0xaa55
    18a0:	605a      	str	r2, [r3, #4]
    18a2:	4a12      	ldr	r2, [pc, #72]	; (18ec <rtc_init+0x140>)
    18a4:	4b11      	ldr	r3, [pc, #68]	; (18ec <rtc_init+0x140>)
    18a6:	685b      	ldr	r3, [r3, #4]
    18a8:	f023 0310 	bic.w	r3, r3, #16
    18ac:	6053      	str	r3, [r2, #4]
    18ae:	bf00      	nop
    18b0:	4b0e      	ldr	r3, [pc, #56]	; (18ec <rtc_init+0x140>)
    18b2:	685b      	ldr	r3, [r3, #4]
    18b4:	f003 0320 	and.w	r3, r3, #32
    18b8:	2b00      	cmp	r3, #0
    18ba:	d0f9      	beq.n	18b0 <rtc_init+0x104>
    18bc:	4a0a      	ldr	r2, [pc, #40]	; (18e8 <rtc_init+0x13c>)
    18be:	4b0a      	ldr	r3, [pc, #40]	; (18e8 <rtc_init+0x13c>)
    18c0:	681b      	ldr	r3, [r3, #0]
    18c2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    18c6:	6013      	str	r3, [r2, #0]
    18c8:	210f      	movs	r1, #15
    18ca:	2003      	movs	r0, #3
    18cc:	f7ff fd4a 	bl	1364 <set_int_priority>
    18d0:	2003      	movs	r0, #3
    18d2:	f7ff fc8d 	bl	11f0 <enable_interrupt>
    18d6:	bf00      	nop
    18d8:	3708      	adds	r7, #8
    18da:	46bd      	mov	sp, r7
    18dc:	bd80      	pop	{r7, pc}
    18de:	bf00      	nop
    18e0:	40006c00 	.word	0x40006c00
    18e4:	40021000 	.word	0x40021000
    18e8:	40007000 	.word	0x40007000
    18ec:	40002800 	.word	0x40002800
    18f0:	10624dd3 	.word	0x10624dd3

000018f4 <reset_backup_domain>:
    18f4:	b480      	push	{r7}
    18f6:	af00      	add	r7, sp, #0
    18f8:	4a0a      	ldr	r2, [pc, #40]	; (1924 <reset_backup_domain+0x30>)
    18fa:	4b0a      	ldr	r3, [pc, #40]	; (1924 <reset_backup_domain+0x30>)
    18fc:	69db      	ldr	r3, [r3, #28]
    18fe:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1902:	61d3      	str	r3, [r2, #28]
    1904:	4a07      	ldr	r2, [pc, #28]	; (1924 <reset_backup_domain+0x30>)
    1906:	4b07      	ldr	r3, [pc, #28]	; (1924 <reset_backup_domain+0x30>)
    1908:	6a1b      	ldr	r3, [r3, #32]
    190a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    190e:	6213      	str	r3, [r2, #32]
    1910:	4a04      	ldr	r2, [pc, #16]	; (1924 <reset_backup_domain+0x30>)
    1912:	4b04      	ldr	r3, [pc, #16]	; (1924 <reset_backup_domain+0x30>)
    1914:	6a1b      	ldr	r3, [r3, #32]
    1916:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    191a:	6213      	str	r3, [r2, #32]
    191c:	bf00      	nop
    191e:	46bd      	mov	sp, r7
    1920:	bc80      	pop	{r7}
    1922:	4770      	bx	lr
    1924:	40021000 	.word	0x40021000

00001928 <rtc_clock_trim>:
    1928:	b480      	push	{r7}
    192a:	b083      	sub	sp, #12
    192c:	af00      	add	r7, sp, #0
    192e:	6078      	str	r0, [r7, #4]
    1930:	4a34      	ldr	r2, [pc, #208]	; (1a04 <rtc_clock_trim+0xdc>)
    1932:	4b34      	ldr	r3, [pc, #208]	; (1a04 <rtc_clock_trim+0xdc>)
    1934:	69db      	ldr	r3, [r3, #28]
    1936:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    193a:	61d3      	str	r3, [r2, #28]
    193c:	bf00      	nop
    193e:	4b32      	ldr	r3, [pc, #200]	; (1a08 <rtc_clock_trim+0xe0>)
    1940:	685b      	ldr	r3, [r3, #4]
    1942:	f003 0308 	and.w	r3, r3, #8
    1946:	2b00      	cmp	r3, #0
    1948:	d0f9      	beq.n	193e <rtc_clock_trim+0x16>
    194a:	4a30      	ldr	r2, [pc, #192]	; (1a0c <rtc_clock_trim+0xe4>)
    194c:	4b2f      	ldr	r3, [pc, #188]	; (1a0c <rtc_clock_trim+0xe4>)
    194e:	681b      	ldr	r3, [r3, #0]
    1950:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1954:	6013      	str	r3, [r2, #0]
    1956:	4a2c      	ldr	r2, [pc, #176]	; (1a08 <rtc_clock_trim+0xe0>)
    1958:	4b2b      	ldr	r3, [pc, #172]	; (1a08 <rtc_clock_trim+0xe0>)
    195a:	685b      	ldr	r3, [r3, #4]
    195c:	f043 0310 	orr.w	r3, r3, #16
    1960:	6053      	str	r3, [r2, #4]
    1962:	4a2b      	ldr	r2, [pc, #172]	; (1a10 <rtc_clock_trim+0xe8>)
    1964:	4b2a      	ldr	r3, [pc, #168]	; (1a10 <rtc_clock_trim+0xe8>)
    1966:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1968:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    196c:	62d3      	str	r3, [r2, #44]	; 0x2c
    196e:	687b      	ldr	r3, [r7, #4]
    1970:	2b00      	cmp	r3, #0
    1972:	d10a      	bne.n	198a <rtc_clock_trim+0x62>
    1974:	4b26      	ldr	r3, [pc, #152]	; (1a10 <rtc_clock_trim+0xe8>)
    1976:	2200      	movs	r2, #0
    1978:	62da      	str	r2, [r3, #44]	; 0x2c
    197a:	4b23      	ldr	r3, [pc, #140]	; (1a08 <rtc_clock_trim+0xe0>)
    197c:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1980:	60da      	str	r2, [r3, #12]
    1982:	4b21      	ldr	r3, [pc, #132]	; (1a08 <rtc_clock_trim+0xe0>)
    1984:	2200      	movs	r2, #0
    1986:	609a      	str	r2, [r3, #8]
    1988:	e023      	b.n	19d2 <rtc_clock_trim+0xaa>
    198a:	687b      	ldr	r3, [r7, #4]
    198c:	2b00      	cmp	r3, #0
    198e:	dd0a      	ble.n	19a6 <rtc_clock_trim+0x7e>
    1990:	687b      	ldr	r3, [r7, #4]
    1992:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1996:	607b      	str	r3, [r7, #4]
    1998:	491d      	ldr	r1, [pc, #116]	; (1a10 <rtc_clock_trim+0xe8>)
    199a:	4b1d      	ldr	r3, [pc, #116]	; (1a10 <rtc_clock_trim+0xe8>)
    199c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    199e:	687b      	ldr	r3, [r7, #4]
    19a0:	4313      	orrs	r3, r2
    19a2:	62cb      	str	r3, [r1, #44]	; 0x2c
    19a4:	e015      	b.n	19d2 <rtc_clock_trim+0xaa>
    19a6:	687b      	ldr	r3, [r7, #4]
    19a8:	425b      	negs	r3, r3
    19aa:	607b      	str	r3, [r7, #4]
    19ac:	687b      	ldr	r3, [r7, #4]
    19ae:	2b7f      	cmp	r3, #127	; 0x7f
    19b0:	dd01      	ble.n	19b6 <rtc_clock_trim+0x8e>
    19b2:	237f      	movs	r3, #127	; 0x7f
    19b4:	607b      	str	r3, [r7, #4]
    19b6:	4b16      	ldr	r3, [pc, #88]	; (1a10 <rtc_clock_trim+0xe8>)
    19b8:	2200      	movs	r2, #0
    19ba:	62da      	str	r2, [r3, #44]	; 0x2c
    19bc:	4a12      	ldr	r2, [pc, #72]	; (1a08 <rtc_clock_trim+0xe0>)
    19be:	687b      	ldr	r3, [r7, #4]
    19c0:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    19c4:	33ff      	adds	r3, #255	; 0xff
    19c6:	f3c3 030e 	ubfx	r3, r3, #0, #15
    19ca:	60d3      	str	r3, [r2, #12]
    19cc:	4b0e      	ldr	r3, [pc, #56]	; (1a08 <rtc_clock_trim+0xe0>)
    19ce:	2200      	movs	r2, #0
    19d0:	609a      	str	r2, [r3, #8]
    19d2:	4a0d      	ldr	r2, [pc, #52]	; (1a08 <rtc_clock_trim+0xe0>)
    19d4:	4b0c      	ldr	r3, [pc, #48]	; (1a08 <rtc_clock_trim+0xe0>)
    19d6:	685b      	ldr	r3, [r3, #4]
    19d8:	f023 0310 	bic.w	r3, r3, #16
    19dc:	6053      	str	r3, [r2, #4]
    19de:	bf00      	nop
    19e0:	4b09      	ldr	r3, [pc, #36]	; (1a08 <rtc_clock_trim+0xe0>)
    19e2:	685b      	ldr	r3, [r3, #4]
    19e4:	f003 0320 	and.w	r3, r3, #32
    19e8:	2b00      	cmp	r3, #0
    19ea:	d0f9      	beq.n	19e0 <rtc_clock_trim+0xb8>
    19ec:	4a07      	ldr	r2, [pc, #28]	; (1a0c <rtc_clock_trim+0xe4>)
    19ee:	4b07      	ldr	r3, [pc, #28]	; (1a0c <rtc_clock_trim+0xe4>)
    19f0:	681b      	ldr	r3, [r3, #0]
    19f2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    19f6:	6013      	str	r3, [r2, #0]
    19f8:	bf00      	nop
    19fa:	370c      	adds	r7, #12
    19fc:	46bd      	mov	sp, r7
    19fe:	bc80      	pop	{r7}
    1a00:	4770      	bx	lr
    1a02:	bf00      	nop
    1a04:	40021000 	.word	0x40021000
    1a08:	40002800 	.word	0x40002800
    1a0c:	40007000 	.word	0x40007000
    1a10:	40006c00 	.word	0x40006c00

00001a14 <rtc_set_alarm>:
    1a14:	b480      	push	{r7}
    1a16:	b083      	sub	sp, #12
    1a18:	af00      	add	r7, sp, #0
    1a1a:	6078      	str	r0, [r7, #4]
    1a1c:	bf00      	nop
    1a1e:	370c      	adds	r7, #12
    1a20:	46bd      	mov	sp, r7
    1a22:	bc80      	pop	{r7}
    1a24:	4770      	bx	lr

00001a26 <str_to_date>:
    1a26:	b580      	push	{r7, lr}
    1a28:	b084      	sub	sp, #16
    1a2a:	af00      	add	r7, sp, #0
    1a2c:	6078      	str	r0, [r7, #4]
    1a2e:	6039      	str	r1, [r7, #0]
    1a30:	2300      	movs	r3, #0
    1a32:	60fb      	str	r3, [r7, #12]
    1a34:	2300      	movs	r3, #0
    1a36:	60bb      	str	r3, [r7, #8]
    1a38:	e00f      	b.n	1a5a <str_to_date+0x34>
    1a3a:	68ba      	ldr	r2, [r7, #8]
    1a3c:	4613      	mov	r3, r2
    1a3e:	009b      	lsls	r3, r3, #2
    1a40:	4413      	add	r3, r2
    1a42:	005b      	lsls	r3, r3, #1
    1a44:	4619      	mov	r1, r3
    1a46:	68fb      	ldr	r3, [r7, #12]
    1a48:	1c5a      	adds	r2, r3, #1
    1a4a:	60fa      	str	r2, [r7, #12]
    1a4c:	461a      	mov	r2, r3
    1a4e:	687b      	ldr	r3, [r7, #4]
    1a50:	4413      	add	r3, r2
    1a52:	781b      	ldrb	r3, [r3, #0]
    1a54:	440b      	add	r3, r1
    1a56:	3b30      	subs	r3, #48	; 0x30
    1a58:	60bb      	str	r3, [r7, #8]
    1a5a:	68fb      	ldr	r3, [r7, #12]
    1a5c:	687a      	ldr	r2, [r7, #4]
    1a5e:	4413      	add	r3, r2
    1a60:	781b      	ldrb	r3, [r3, #0]
    1a62:	4618      	mov	r0, r3
    1a64:	f7fe febd 	bl	7e2 <digit>
    1a68:	4603      	mov	r3, r0
    1a6a:	2b00      	cmp	r3, #0
    1a6c:	d1e5      	bne.n	1a3a <str_to_date+0x14>
    1a6e:	68fb      	ldr	r3, [r7, #12]
    1a70:	2b03      	cmp	r3, #3
    1a72:	dd05      	ble.n	1a80 <str_to_date+0x5a>
    1a74:	68fb      	ldr	r3, [r7, #12]
    1a76:	687a      	ldr	r2, [r7, #4]
    1a78:	4413      	add	r3, r2
    1a7a:	781b      	ldrb	r3, [r3, #0]
    1a7c:	2b2f      	cmp	r3, #47	; 0x2f
    1a7e:	d001      	beq.n	1a84 <str_to_date+0x5e>
    1a80:	2300      	movs	r3, #0
    1a82:	e068      	b.n	1b56 <str_to_date+0x130>
    1a84:	68bb      	ldr	r3, [r7, #8]
    1a86:	b29a      	uxth	r2, r3
    1a88:	683b      	ldr	r3, [r7, #0]
    1a8a:	811a      	strh	r2, [r3, #8]
    1a8c:	68fb      	ldr	r3, [r7, #12]
    1a8e:	3301      	adds	r3, #1
    1a90:	60fb      	str	r3, [r7, #12]
    1a92:	2300      	movs	r3, #0
    1a94:	60bb      	str	r3, [r7, #8]
    1a96:	e00f      	b.n	1ab8 <str_to_date+0x92>
    1a98:	68ba      	ldr	r2, [r7, #8]
    1a9a:	4613      	mov	r3, r2
    1a9c:	009b      	lsls	r3, r3, #2
    1a9e:	4413      	add	r3, r2
    1aa0:	005b      	lsls	r3, r3, #1
    1aa2:	4619      	mov	r1, r3
    1aa4:	68fb      	ldr	r3, [r7, #12]
    1aa6:	1c5a      	adds	r2, r3, #1
    1aa8:	60fa      	str	r2, [r7, #12]
    1aaa:	461a      	mov	r2, r3
    1aac:	687b      	ldr	r3, [r7, #4]
    1aae:	4413      	add	r3, r2
    1ab0:	781b      	ldrb	r3, [r3, #0]
    1ab2:	440b      	add	r3, r1
    1ab4:	3b30      	subs	r3, #48	; 0x30
    1ab6:	60bb      	str	r3, [r7, #8]
    1ab8:	68fb      	ldr	r3, [r7, #12]
    1aba:	687a      	ldr	r2, [r7, #4]
    1abc:	4413      	add	r3, r2
    1abe:	781b      	ldrb	r3, [r3, #0]
    1ac0:	4618      	mov	r0, r3
    1ac2:	f7fe fe8e 	bl	7e2 <digit>
    1ac6:	4603      	mov	r3, r0
    1ac8:	2b00      	cmp	r3, #0
    1aca:	d1e5      	bne.n	1a98 <str_to_date+0x72>
    1acc:	68fb      	ldr	r3, [r7, #12]
    1ace:	2b06      	cmp	r3, #6
    1ad0:	dd05      	ble.n	1ade <str_to_date+0xb8>
    1ad2:	68fb      	ldr	r3, [r7, #12]
    1ad4:	687a      	ldr	r2, [r7, #4]
    1ad6:	4413      	add	r3, r2
    1ad8:	781b      	ldrb	r3, [r3, #0]
    1ada:	2b2f      	cmp	r3, #47	; 0x2f
    1adc:	d001      	beq.n	1ae2 <str_to_date+0xbc>
    1ade:	2300      	movs	r3, #0
    1ae0:	e039      	b.n	1b56 <str_to_date+0x130>
    1ae2:	68bb      	ldr	r3, [r7, #8]
    1ae4:	b2db      	uxtb	r3, r3
    1ae6:	f003 030f 	and.w	r3, r3, #15
    1aea:	b2d9      	uxtb	r1, r3
    1aec:	683a      	ldr	r2, [r7, #0]
    1aee:	8853      	ldrh	r3, [r2, #2]
    1af0:	f361 1389 	bfi	r3, r1, #6, #4
    1af4:	8053      	strh	r3, [r2, #2]
    1af6:	2300      	movs	r3, #0
    1af8:	60bb      	str	r3, [r7, #8]
    1afa:	68fb      	ldr	r3, [r7, #12]
    1afc:	3301      	adds	r3, #1
    1afe:	60fb      	str	r3, [r7, #12]
    1b00:	e00f      	b.n	1b22 <str_to_date+0xfc>
    1b02:	68ba      	ldr	r2, [r7, #8]
    1b04:	4613      	mov	r3, r2
    1b06:	009b      	lsls	r3, r3, #2
    1b08:	4413      	add	r3, r2
    1b0a:	005b      	lsls	r3, r3, #1
    1b0c:	4619      	mov	r1, r3
    1b0e:	68fb      	ldr	r3, [r7, #12]
    1b10:	1c5a      	adds	r2, r3, #1
    1b12:	60fa      	str	r2, [r7, #12]
    1b14:	461a      	mov	r2, r3
    1b16:	687b      	ldr	r3, [r7, #4]
    1b18:	4413      	add	r3, r2
    1b1a:	781b      	ldrb	r3, [r3, #0]
    1b1c:	440b      	add	r3, r1
    1b1e:	3b30      	subs	r3, #48	; 0x30
    1b20:	60bb      	str	r3, [r7, #8]
    1b22:	68fb      	ldr	r3, [r7, #12]
    1b24:	687a      	ldr	r2, [r7, #4]
    1b26:	4413      	add	r3, r2
    1b28:	781b      	ldrb	r3, [r3, #0]
    1b2a:	4618      	mov	r0, r3
    1b2c:	f7fe fe59 	bl	7e2 <digit>
    1b30:	4603      	mov	r3, r0
    1b32:	2b00      	cmp	r3, #0
    1b34:	d1e5      	bne.n	1b02 <str_to_date+0xdc>
    1b36:	68fb      	ldr	r3, [r7, #12]
    1b38:	2b09      	cmp	r3, #9
    1b3a:	dc01      	bgt.n	1b40 <str_to_date+0x11a>
    1b3c:	2300      	movs	r3, #0
    1b3e:	e00a      	b.n	1b56 <str_to_date+0x130>
    1b40:	68bb      	ldr	r3, [r7, #8]
    1b42:	b2db      	uxtb	r3, r3
    1b44:	f003 031f 	and.w	r3, r3, #31
    1b48:	b2d9      	uxtb	r1, r3
    1b4a:	683a      	ldr	r2, [r7, #0]
    1b4c:	7893      	ldrb	r3, [r2, #2]
    1b4e:	f361 0345 	bfi	r3, r1, #1, #5
    1b52:	7093      	strb	r3, [r2, #2]
    1b54:	2301      	movs	r3, #1
    1b56:	4618      	mov	r0, r3
    1b58:	3710      	adds	r7, #16
    1b5a:	46bd      	mov	sp, r7
    1b5c:	bd80      	pop	{r7, pc}

00001b5e <str_to_time>:
    1b5e:	b580      	push	{r7, lr}
    1b60:	b084      	sub	sp, #16
    1b62:	af00      	add	r7, sp, #0
    1b64:	6078      	str	r0, [r7, #4]
    1b66:	6039      	str	r1, [r7, #0]
    1b68:	2300      	movs	r3, #0
    1b6a:	60fb      	str	r3, [r7, #12]
    1b6c:	2300      	movs	r3, #0
    1b6e:	72fb      	strb	r3, [r7, #11]
    1b70:	e010      	b.n	1b94 <str_to_time+0x36>
    1b72:	7afb      	ldrb	r3, [r7, #11]
    1b74:	461a      	mov	r2, r3
    1b76:	0092      	lsls	r2, r2, #2
    1b78:	4413      	add	r3, r2
    1b7a:	005b      	lsls	r3, r3, #1
    1b7c:	b2da      	uxtb	r2, r3
    1b7e:	68fb      	ldr	r3, [r7, #12]
    1b80:	1c59      	adds	r1, r3, #1
    1b82:	60f9      	str	r1, [r7, #12]
    1b84:	4619      	mov	r1, r3
    1b86:	687b      	ldr	r3, [r7, #4]
    1b88:	440b      	add	r3, r1
    1b8a:	781b      	ldrb	r3, [r3, #0]
    1b8c:	4413      	add	r3, r2
    1b8e:	b2db      	uxtb	r3, r3
    1b90:	3b30      	subs	r3, #48	; 0x30
    1b92:	72fb      	strb	r3, [r7, #11]
    1b94:	68fb      	ldr	r3, [r7, #12]
    1b96:	687a      	ldr	r2, [r7, #4]
    1b98:	4413      	add	r3, r2
    1b9a:	781b      	ldrb	r3, [r3, #0]
    1b9c:	4618      	mov	r0, r3
    1b9e:	f7fe fe20 	bl	7e2 <digit>
    1ba2:	4603      	mov	r3, r0
    1ba4:	2b00      	cmp	r3, #0
    1ba6:	d1e4      	bne.n	1b72 <str_to_time+0x14>
    1ba8:	7afb      	ldrb	r3, [r7, #11]
    1baa:	2b17      	cmp	r3, #23
    1bac:	d805      	bhi.n	1bba <str_to_time+0x5c>
    1bae:	68fb      	ldr	r3, [r7, #12]
    1bb0:	687a      	ldr	r2, [r7, #4]
    1bb2:	4413      	add	r3, r2
    1bb4:	781b      	ldrb	r3, [r3, #0]
    1bb6:	2b3a      	cmp	r3, #58	; 0x3a
    1bb8:	d001      	beq.n	1bbe <str_to_time+0x60>
    1bba:	2300      	movs	r3, #0
    1bbc:	e06d      	b.n	1c9a <str_to_time+0x13c>
    1bbe:	7afb      	ldrb	r3, [r7, #11]
    1bc0:	f003 031f 	and.w	r3, r3, #31
    1bc4:	b2d9      	uxtb	r1, r3
    1bc6:	683a      	ldr	r2, [r7, #0]
    1bc8:	6813      	ldr	r3, [r2, #0]
    1bca:	f361 3310 	bfi	r3, r1, #12, #5
    1bce:	6013      	str	r3, [r2, #0]
    1bd0:	68fb      	ldr	r3, [r7, #12]
    1bd2:	3301      	adds	r3, #1
    1bd4:	60fb      	str	r3, [r7, #12]
    1bd6:	2300      	movs	r3, #0
    1bd8:	72fb      	strb	r3, [r7, #11]
    1bda:	e010      	b.n	1bfe <str_to_time+0xa0>
    1bdc:	7afb      	ldrb	r3, [r7, #11]
    1bde:	461a      	mov	r2, r3
    1be0:	0092      	lsls	r2, r2, #2
    1be2:	4413      	add	r3, r2
    1be4:	005b      	lsls	r3, r3, #1
    1be6:	b2da      	uxtb	r2, r3
    1be8:	68fb      	ldr	r3, [r7, #12]
    1bea:	1c59      	adds	r1, r3, #1
    1bec:	60f9      	str	r1, [r7, #12]
    1bee:	4619      	mov	r1, r3
    1bf0:	687b      	ldr	r3, [r7, #4]
    1bf2:	440b      	add	r3, r1
    1bf4:	781b      	ldrb	r3, [r3, #0]
    1bf6:	4413      	add	r3, r2
    1bf8:	b2db      	uxtb	r3, r3
    1bfa:	3b30      	subs	r3, #48	; 0x30
    1bfc:	72fb      	strb	r3, [r7, #11]
    1bfe:	68fb      	ldr	r3, [r7, #12]
    1c00:	687a      	ldr	r2, [r7, #4]
    1c02:	4413      	add	r3, r2
    1c04:	781b      	ldrb	r3, [r3, #0]
    1c06:	4618      	mov	r0, r3
    1c08:	f7fe fdeb 	bl	7e2 <digit>
    1c0c:	4603      	mov	r3, r0
    1c0e:	2b00      	cmp	r3, #0
    1c10:	d1e4      	bne.n	1bdc <str_to_time+0x7e>
    1c12:	7afb      	ldrb	r3, [r7, #11]
    1c14:	2b3b      	cmp	r3, #59	; 0x3b
    1c16:	d805      	bhi.n	1c24 <str_to_time+0xc6>
    1c18:	68fb      	ldr	r3, [r7, #12]
    1c1a:	687a      	ldr	r2, [r7, #4]
    1c1c:	4413      	add	r3, r2
    1c1e:	781b      	ldrb	r3, [r3, #0]
    1c20:	2b3a      	cmp	r3, #58	; 0x3a
    1c22:	d001      	beq.n	1c28 <str_to_time+0xca>
    1c24:	2300      	movs	r3, #0
    1c26:	e038      	b.n	1c9a <str_to_time+0x13c>
    1c28:	7afb      	ldrb	r3, [r7, #11]
    1c2a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1c2e:	b2d9      	uxtb	r1, r3
    1c30:	683a      	ldr	r2, [r7, #0]
    1c32:	8813      	ldrh	r3, [r2, #0]
    1c34:	f361 138b 	bfi	r3, r1, #6, #6
    1c38:	8013      	strh	r3, [r2, #0]
    1c3a:	2300      	movs	r3, #0
    1c3c:	72fb      	strb	r3, [r7, #11]
    1c3e:	68fb      	ldr	r3, [r7, #12]
    1c40:	3301      	adds	r3, #1
    1c42:	60fb      	str	r3, [r7, #12]
    1c44:	e010      	b.n	1c68 <str_to_time+0x10a>
    1c46:	7afb      	ldrb	r3, [r7, #11]
    1c48:	461a      	mov	r2, r3
    1c4a:	0092      	lsls	r2, r2, #2
    1c4c:	4413      	add	r3, r2
    1c4e:	005b      	lsls	r3, r3, #1
    1c50:	b2da      	uxtb	r2, r3
    1c52:	68fb      	ldr	r3, [r7, #12]
    1c54:	1c59      	adds	r1, r3, #1
    1c56:	60f9      	str	r1, [r7, #12]
    1c58:	4619      	mov	r1, r3
    1c5a:	687b      	ldr	r3, [r7, #4]
    1c5c:	440b      	add	r3, r1
    1c5e:	781b      	ldrb	r3, [r3, #0]
    1c60:	4413      	add	r3, r2
    1c62:	b2db      	uxtb	r3, r3
    1c64:	3b30      	subs	r3, #48	; 0x30
    1c66:	72fb      	strb	r3, [r7, #11]
    1c68:	68fb      	ldr	r3, [r7, #12]
    1c6a:	687a      	ldr	r2, [r7, #4]
    1c6c:	4413      	add	r3, r2
    1c6e:	781b      	ldrb	r3, [r3, #0]
    1c70:	4618      	mov	r0, r3
    1c72:	f7fe fdb6 	bl	7e2 <digit>
    1c76:	4603      	mov	r3, r0
    1c78:	2b00      	cmp	r3, #0
    1c7a:	d1e4      	bne.n	1c46 <str_to_time+0xe8>
    1c7c:	7afb      	ldrb	r3, [r7, #11]
    1c7e:	2b3b      	cmp	r3, #59	; 0x3b
    1c80:	d901      	bls.n	1c86 <str_to_time+0x128>
    1c82:	2300      	movs	r3, #0
    1c84:	e009      	b.n	1c9a <str_to_time+0x13c>
    1c86:	7afb      	ldrb	r3, [r7, #11]
    1c88:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1c8c:	b2d9      	uxtb	r1, r3
    1c8e:	683a      	ldr	r2, [r7, #0]
    1c90:	7813      	ldrb	r3, [r2, #0]
    1c92:	f361 0305 	bfi	r3, r1, #0, #6
    1c96:	7013      	strb	r3, [r2, #0]
    1c98:	2301      	movs	r3, #1
    1c9a:	4618      	mov	r0, r3
    1c9c:	3710      	adds	r7, #16
    1c9e:	46bd      	mov	sp, r7
    1ca0:	bd80      	pop	{r7, pc}

00001ca2 <date_str>:
    1ca2:	b480      	push	{r7}
    1ca4:	b085      	sub	sp, #20
    1ca6:	af00      	add	r7, sp, #0
    1ca8:	6078      	str	r0, [r7, #4]
    1caa:	6039      	str	r1, [r7, #0]
    1cac:	2300      	movs	r3, #0
    1cae:	60fb      	str	r3, [r7, #12]
    1cb0:	687b      	ldr	r3, [r7, #4]
    1cb2:	891b      	ldrh	r3, [r3, #8]
    1cb4:	60bb      	str	r3, [r7, #8]
    1cb6:	68fb      	ldr	r3, [r7, #12]
    1cb8:	1c5a      	adds	r2, r3, #1
    1cba:	60fa      	str	r2, [r7, #12]
    1cbc:	461a      	mov	r2, r3
    1cbe:	683b      	ldr	r3, [r7, #0]
    1cc0:	4413      	add	r3, r2
    1cc2:	68ba      	ldr	r2, [r7, #8]
    1cc4:	495d      	ldr	r1, [pc, #372]	; (1e3c <date_str+0x19a>)
    1cc6:	fba1 1202 	umull	r1, r2, r1, r2
    1cca:	0992      	lsrs	r2, r2, #6
    1ccc:	b2d2      	uxtb	r2, r2
    1cce:	3230      	adds	r2, #48	; 0x30
    1cd0:	b2d2      	uxtb	r2, r2
    1cd2:	701a      	strb	r2, [r3, #0]
    1cd4:	68bb      	ldr	r3, [r7, #8]
    1cd6:	4a59      	ldr	r2, [pc, #356]	; (1e3c <date_str+0x19a>)
    1cd8:	fba2 1203 	umull	r1, r2, r2, r3
    1cdc:	0992      	lsrs	r2, r2, #6
    1cde:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    1ce2:	fb01 f202 	mul.w	r2, r1, r2
    1ce6:	1a9b      	subs	r3, r3, r2
    1ce8:	60bb      	str	r3, [r7, #8]
    1cea:	68fb      	ldr	r3, [r7, #12]
    1cec:	1c5a      	adds	r2, r3, #1
    1cee:	60fa      	str	r2, [r7, #12]
    1cf0:	461a      	mov	r2, r3
    1cf2:	683b      	ldr	r3, [r7, #0]
    1cf4:	4413      	add	r3, r2
    1cf6:	68ba      	ldr	r2, [r7, #8]
    1cf8:	4951      	ldr	r1, [pc, #324]	; (1e40 <date_str+0x19e>)
    1cfa:	fba1 1202 	umull	r1, r2, r1, r2
    1cfe:	0952      	lsrs	r2, r2, #5
    1d00:	b2d2      	uxtb	r2, r2
    1d02:	3230      	adds	r2, #48	; 0x30
    1d04:	b2d2      	uxtb	r2, r2
    1d06:	701a      	strb	r2, [r3, #0]
    1d08:	68bb      	ldr	r3, [r7, #8]
    1d0a:	4a4d      	ldr	r2, [pc, #308]	; (1e40 <date_str+0x19e>)
    1d0c:	fba2 1203 	umull	r1, r2, r2, r3
    1d10:	0952      	lsrs	r2, r2, #5
    1d12:	2164      	movs	r1, #100	; 0x64
    1d14:	fb01 f202 	mul.w	r2, r1, r2
    1d18:	1a9b      	subs	r3, r3, r2
    1d1a:	60bb      	str	r3, [r7, #8]
    1d1c:	68fb      	ldr	r3, [r7, #12]
    1d1e:	1c5a      	adds	r2, r3, #1
    1d20:	60fa      	str	r2, [r7, #12]
    1d22:	461a      	mov	r2, r3
    1d24:	683b      	ldr	r3, [r7, #0]
    1d26:	4413      	add	r3, r2
    1d28:	68ba      	ldr	r2, [r7, #8]
    1d2a:	4946      	ldr	r1, [pc, #280]	; (1e44 <date_str+0x1a2>)
    1d2c:	fba1 1202 	umull	r1, r2, r1, r2
    1d30:	08d2      	lsrs	r2, r2, #3
    1d32:	b2d2      	uxtb	r2, r2
    1d34:	3230      	adds	r2, #48	; 0x30
    1d36:	b2d2      	uxtb	r2, r2
    1d38:	701a      	strb	r2, [r3, #0]
    1d3a:	68fb      	ldr	r3, [r7, #12]
    1d3c:	1c5a      	adds	r2, r3, #1
    1d3e:	60fa      	str	r2, [r7, #12]
    1d40:	461a      	mov	r2, r3
    1d42:	683b      	ldr	r3, [r7, #0]
    1d44:	1898      	adds	r0, r3, r2
    1d46:	68b9      	ldr	r1, [r7, #8]
    1d48:	4b3e      	ldr	r3, [pc, #248]	; (1e44 <date_str+0x1a2>)
    1d4a:	fba3 2301 	umull	r2, r3, r3, r1
    1d4e:	08da      	lsrs	r2, r3, #3
    1d50:	4613      	mov	r3, r2
    1d52:	009b      	lsls	r3, r3, #2
    1d54:	4413      	add	r3, r2
    1d56:	005b      	lsls	r3, r3, #1
    1d58:	1aca      	subs	r2, r1, r3
    1d5a:	b2d3      	uxtb	r3, r2
    1d5c:	3330      	adds	r3, #48	; 0x30
    1d5e:	b2db      	uxtb	r3, r3
    1d60:	7003      	strb	r3, [r0, #0]
    1d62:	68fb      	ldr	r3, [r7, #12]
    1d64:	1c5a      	adds	r2, r3, #1
    1d66:	60fa      	str	r2, [r7, #12]
    1d68:	461a      	mov	r2, r3
    1d6a:	683b      	ldr	r3, [r7, #0]
    1d6c:	4413      	add	r3, r2
    1d6e:	222f      	movs	r2, #47	; 0x2f
    1d70:	701a      	strb	r2, [r3, #0]
    1d72:	687b      	ldr	r3, [r7, #4]
    1d74:	885b      	ldrh	r3, [r3, #2]
    1d76:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1d7a:	b2db      	uxtb	r3, r3
    1d7c:	60bb      	str	r3, [r7, #8]
    1d7e:	68fb      	ldr	r3, [r7, #12]
    1d80:	1c5a      	adds	r2, r3, #1
    1d82:	60fa      	str	r2, [r7, #12]
    1d84:	461a      	mov	r2, r3
    1d86:	683b      	ldr	r3, [r7, #0]
    1d88:	4413      	add	r3, r2
    1d8a:	68ba      	ldr	r2, [r7, #8]
    1d8c:	492d      	ldr	r1, [pc, #180]	; (1e44 <date_str+0x1a2>)
    1d8e:	fba1 1202 	umull	r1, r2, r1, r2
    1d92:	08d2      	lsrs	r2, r2, #3
    1d94:	b2d2      	uxtb	r2, r2
    1d96:	3230      	adds	r2, #48	; 0x30
    1d98:	b2d2      	uxtb	r2, r2
    1d9a:	701a      	strb	r2, [r3, #0]
    1d9c:	68fb      	ldr	r3, [r7, #12]
    1d9e:	1c5a      	adds	r2, r3, #1
    1da0:	60fa      	str	r2, [r7, #12]
    1da2:	461a      	mov	r2, r3
    1da4:	683b      	ldr	r3, [r7, #0]
    1da6:	1898      	adds	r0, r3, r2
    1da8:	68b9      	ldr	r1, [r7, #8]
    1daa:	4b26      	ldr	r3, [pc, #152]	; (1e44 <date_str+0x1a2>)
    1dac:	fba3 2301 	umull	r2, r3, r3, r1
    1db0:	08da      	lsrs	r2, r3, #3
    1db2:	4613      	mov	r3, r2
    1db4:	009b      	lsls	r3, r3, #2
    1db6:	4413      	add	r3, r2
    1db8:	005b      	lsls	r3, r3, #1
    1dba:	1aca      	subs	r2, r1, r3
    1dbc:	b2d3      	uxtb	r3, r2
    1dbe:	3330      	adds	r3, #48	; 0x30
    1dc0:	b2db      	uxtb	r3, r3
    1dc2:	7003      	strb	r3, [r0, #0]
    1dc4:	68fb      	ldr	r3, [r7, #12]
    1dc6:	1c5a      	adds	r2, r3, #1
    1dc8:	60fa      	str	r2, [r7, #12]
    1dca:	461a      	mov	r2, r3
    1dcc:	683b      	ldr	r3, [r7, #0]
    1dce:	4413      	add	r3, r2
    1dd0:	222f      	movs	r2, #47	; 0x2f
    1dd2:	701a      	strb	r2, [r3, #0]
    1dd4:	687b      	ldr	r3, [r7, #4]
    1dd6:	789b      	ldrb	r3, [r3, #2]
    1dd8:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1ddc:	b2db      	uxtb	r3, r3
    1dde:	60bb      	str	r3, [r7, #8]
    1de0:	68fb      	ldr	r3, [r7, #12]
    1de2:	1c5a      	adds	r2, r3, #1
    1de4:	60fa      	str	r2, [r7, #12]
    1de6:	461a      	mov	r2, r3
    1de8:	683b      	ldr	r3, [r7, #0]
    1dea:	4413      	add	r3, r2
    1dec:	68ba      	ldr	r2, [r7, #8]
    1dee:	4915      	ldr	r1, [pc, #84]	; (1e44 <date_str+0x1a2>)
    1df0:	fba1 1202 	umull	r1, r2, r1, r2
    1df4:	08d2      	lsrs	r2, r2, #3
    1df6:	b2d2      	uxtb	r2, r2
    1df8:	3230      	adds	r2, #48	; 0x30
    1dfa:	b2d2      	uxtb	r2, r2
    1dfc:	701a      	strb	r2, [r3, #0]
    1dfe:	68fb      	ldr	r3, [r7, #12]
    1e00:	1c5a      	adds	r2, r3, #1
    1e02:	60fa      	str	r2, [r7, #12]
    1e04:	461a      	mov	r2, r3
    1e06:	683b      	ldr	r3, [r7, #0]
    1e08:	1898      	adds	r0, r3, r2
    1e0a:	68b9      	ldr	r1, [r7, #8]
    1e0c:	4b0d      	ldr	r3, [pc, #52]	; (1e44 <date_str+0x1a2>)
    1e0e:	fba3 2301 	umull	r2, r3, r3, r1
    1e12:	08da      	lsrs	r2, r3, #3
    1e14:	4613      	mov	r3, r2
    1e16:	009b      	lsls	r3, r3, #2
    1e18:	4413      	add	r3, r2
    1e1a:	005b      	lsls	r3, r3, #1
    1e1c:	1aca      	subs	r2, r1, r3
    1e1e:	b2d3      	uxtb	r3, r2
    1e20:	3330      	adds	r3, #48	; 0x30
    1e22:	b2db      	uxtb	r3, r3
    1e24:	7003      	strb	r3, [r0, #0]
    1e26:	68fb      	ldr	r3, [r7, #12]
    1e28:	683a      	ldr	r2, [r7, #0]
    1e2a:	4413      	add	r3, r2
    1e2c:	2200      	movs	r2, #0
    1e2e:	701a      	strb	r2, [r3, #0]
    1e30:	bf00      	nop
    1e32:	3714      	adds	r7, #20
    1e34:	46bd      	mov	sp, r7
    1e36:	bc80      	pop	{r7}
    1e38:	4770      	bx	lr
    1e3a:	bf00      	nop
    1e3c:	10624dd3 	.word	0x10624dd3
    1e40:	51eb851f 	.word	0x51eb851f
    1e44:	cccccccd 	.word	0xcccccccd

00001e48 <time_str>:
    1e48:	b480      	push	{r7}
    1e4a:	b085      	sub	sp, #20
    1e4c:	af00      	add	r7, sp, #0
    1e4e:	6078      	str	r0, [r7, #4]
    1e50:	6039      	str	r1, [r7, #0]
    1e52:	2300      	movs	r3, #0
    1e54:	60fb      	str	r3, [r7, #12]
    1e56:	687b      	ldr	r3, [r7, #4]
    1e58:	681b      	ldr	r3, [r3, #0]
    1e5a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1e5e:	b2db      	uxtb	r3, r3
    1e60:	60bb      	str	r3, [r7, #8]
    1e62:	68fb      	ldr	r3, [r7, #12]
    1e64:	1c5a      	adds	r2, r3, #1
    1e66:	60fa      	str	r2, [r7, #12]
    1e68:	461a      	mov	r2, r3
    1e6a:	683b      	ldr	r3, [r7, #0]
    1e6c:	4413      	add	r3, r2
    1e6e:	68ba      	ldr	r2, [r7, #8]
    1e70:	4943      	ldr	r1, [pc, #268]	; (1f80 <time_str+0x138>)
    1e72:	fba1 1202 	umull	r1, r2, r1, r2
    1e76:	08d2      	lsrs	r2, r2, #3
    1e78:	b2d2      	uxtb	r2, r2
    1e7a:	3230      	adds	r2, #48	; 0x30
    1e7c:	b2d2      	uxtb	r2, r2
    1e7e:	701a      	strb	r2, [r3, #0]
    1e80:	68fb      	ldr	r3, [r7, #12]
    1e82:	1c5a      	adds	r2, r3, #1
    1e84:	60fa      	str	r2, [r7, #12]
    1e86:	461a      	mov	r2, r3
    1e88:	683b      	ldr	r3, [r7, #0]
    1e8a:	1898      	adds	r0, r3, r2
    1e8c:	68b9      	ldr	r1, [r7, #8]
    1e8e:	4b3c      	ldr	r3, [pc, #240]	; (1f80 <time_str+0x138>)
    1e90:	fba3 2301 	umull	r2, r3, r3, r1
    1e94:	08da      	lsrs	r2, r3, #3
    1e96:	4613      	mov	r3, r2
    1e98:	009b      	lsls	r3, r3, #2
    1e9a:	4413      	add	r3, r2
    1e9c:	005b      	lsls	r3, r3, #1
    1e9e:	1aca      	subs	r2, r1, r3
    1ea0:	b2d3      	uxtb	r3, r2
    1ea2:	3330      	adds	r3, #48	; 0x30
    1ea4:	b2db      	uxtb	r3, r3
    1ea6:	7003      	strb	r3, [r0, #0]
    1ea8:	68fb      	ldr	r3, [r7, #12]
    1eaa:	1c5a      	adds	r2, r3, #1
    1eac:	60fa      	str	r2, [r7, #12]
    1eae:	461a      	mov	r2, r3
    1eb0:	683b      	ldr	r3, [r7, #0]
    1eb2:	4413      	add	r3, r2
    1eb4:	223a      	movs	r2, #58	; 0x3a
    1eb6:	701a      	strb	r2, [r3, #0]
    1eb8:	687b      	ldr	r3, [r7, #4]
    1eba:	881b      	ldrh	r3, [r3, #0]
    1ebc:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1ec0:	b2db      	uxtb	r3, r3
    1ec2:	60bb      	str	r3, [r7, #8]
    1ec4:	68fb      	ldr	r3, [r7, #12]
    1ec6:	1c5a      	adds	r2, r3, #1
    1ec8:	60fa      	str	r2, [r7, #12]
    1eca:	461a      	mov	r2, r3
    1ecc:	683b      	ldr	r3, [r7, #0]
    1ece:	4413      	add	r3, r2
    1ed0:	68ba      	ldr	r2, [r7, #8]
    1ed2:	492b      	ldr	r1, [pc, #172]	; (1f80 <time_str+0x138>)
    1ed4:	fba1 1202 	umull	r1, r2, r1, r2
    1ed8:	08d2      	lsrs	r2, r2, #3
    1eda:	b2d2      	uxtb	r2, r2
    1edc:	3230      	adds	r2, #48	; 0x30
    1ede:	b2d2      	uxtb	r2, r2
    1ee0:	701a      	strb	r2, [r3, #0]
    1ee2:	68fb      	ldr	r3, [r7, #12]
    1ee4:	1c5a      	adds	r2, r3, #1
    1ee6:	60fa      	str	r2, [r7, #12]
    1ee8:	461a      	mov	r2, r3
    1eea:	683b      	ldr	r3, [r7, #0]
    1eec:	1898      	adds	r0, r3, r2
    1eee:	68b9      	ldr	r1, [r7, #8]
    1ef0:	4b23      	ldr	r3, [pc, #140]	; (1f80 <time_str+0x138>)
    1ef2:	fba3 2301 	umull	r2, r3, r3, r1
    1ef6:	08da      	lsrs	r2, r3, #3
    1ef8:	4613      	mov	r3, r2
    1efa:	009b      	lsls	r3, r3, #2
    1efc:	4413      	add	r3, r2
    1efe:	005b      	lsls	r3, r3, #1
    1f00:	1aca      	subs	r2, r1, r3
    1f02:	b2d3      	uxtb	r3, r2
    1f04:	3330      	adds	r3, #48	; 0x30
    1f06:	b2db      	uxtb	r3, r3
    1f08:	7003      	strb	r3, [r0, #0]
    1f0a:	68fb      	ldr	r3, [r7, #12]
    1f0c:	1c5a      	adds	r2, r3, #1
    1f0e:	60fa      	str	r2, [r7, #12]
    1f10:	461a      	mov	r2, r3
    1f12:	683b      	ldr	r3, [r7, #0]
    1f14:	4413      	add	r3, r2
    1f16:	223a      	movs	r2, #58	; 0x3a
    1f18:	701a      	strb	r2, [r3, #0]
    1f1a:	687b      	ldr	r3, [r7, #4]
    1f1c:	781b      	ldrb	r3, [r3, #0]
    1f1e:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1f22:	b2db      	uxtb	r3, r3
    1f24:	60bb      	str	r3, [r7, #8]
    1f26:	68fb      	ldr	r3, [r7, #12]
    1f28:	1c5a      	adds	r2, r3, #1
    1f2a:	60fa      	str	r2, [r7, #12]
    1f2c:	461a      	mov	r2, r3
    1f2e:	683b      	ldr	r3, [r7, #0]
    1f30:	4413      	add	r3, r2
    1f32:	68ba      	ldr	r2, [r7, #8]
    1f34:	4912      	ldr	r1, [pc, #72]	; (1f80 <time_str+0x138>)
    1f36:	fba1 1202 	umull	r1, r2, r1, r2
    1f3a:	08d2      	lsrs	r2, r2, #3
    1f3c:	b2d2      	uxtb	r2, r2
    1f3e:	3230      	adds	r2, #48	; 0x30
    1f40:	b2d2      	uxtb	r2, r2
    1f42:	701a      	strb	r2, [r3, #0]
    1f44:	68fb      	ldr	r3, [r7, #12]
    1f46:	1c5a      	adds	r2, r3, #1
    1f48:	60fa      	str	r2, [r7, #12]
    1f4a:	461a      	mov	r2, r3
    1f4c:	683b      	ldr	r3, [r7, #0]
    1f4e:	1898      	adds	r0, r3, r2
    1f50:	68b9      	ldr	r1, [r7, #8]
    1f52:	4b0b      	ldr	r3, [pc, #44]	; (1f80 <time_str+0x138>)
    1f54:	fba3 2301 	umull	r2, r3, r3, r1
    1f58:	08da      	lsrs	r2, r3, #3
    1f5a:	4613      	mov	r3, r2
    1f5c:	009b      	lsls	r3, r3, #2
    1f5e:	4413      	add	r3, r2
    1f60:	005b      	lsls	r3, r3, #1
    1f62:	1aca      	subs	r2, r1, r3
    1f64:	b2d3      	uxtb	r3, r2
    1f66:	3330      	adds	r3, #48	; 0x30
    1f68:	b2db      	uxtb	r3, r3
    1f6a:	7003      	strb	r3, [r0, #0]
    1f6c:	68fb      	ldr	r3, [r7, #12]
    1f6e:	683a      	ldr	r2, [r7, #0]
    1f70:	4413      	add	r3, r2
    1f72:	2200      	movs	r2, #0
    1f74:	701a      	strb	r2, [r3, #0]
    1f76:	bf00      	nop
    1f78:	3714      	adds	r7, #20
    1f7a:	46bd      	mov	sp, r7
    1f7c:	bc80      	pop	{r7}
    1f7e:	4770      	bx	lr
    1f80:	cccccccd 	.word	0xcccccccd

00001f84 <get_fattime>:
    1f84:	b580      	push	{r7, lr}
    1f86:	b084      	sub	sp, #16
    1f88:	af00      	add	r7, sp, #0
    1f8a:	463b      	mov	r3, r7
    1f8c:	4618      	mov	r0, r3
    1f8e:	f7ff fa69 	bl	1464 <get_date_time>
    1f92:	783b      	ldrb	r3, [r7, #0]
    1f94:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1f98:	b2db      	uxtb	r3, r3
    1f9a:	0fda      	lsrs	r2, r3, #31
    1f9c:	4413      	add	r3, r2
    1f9e:	105b      	asrs	r3, r3, #1
    1fa0:	b2db      	uxtb	r3, r3
    1fa2:	f003 031f 	and.w	r3, r3, #31
    1fa6:	b2da      	uxtb	r2, r3
    1fa8:	7b3b      	ldrb	r3, [r7, #12]
    1faa:	f362 0304 	bfi	r3, r2, #0, #5
    1fae:	733b      	strb	r3, [r7, #12]
    1fb0:	883b      	ldrh	r3, [r7, #0]
    1fb2:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1fb6:	b2da      	uxtb	r2, r3
    1fb8:	89bb      	ldrh	r3, [r7, #12]
    1fba:	f362 134a 	bfi	r3, r2, #5, #6
    1fbe:	81bb      	strh	r3, [r7, #12]
    1fc0:	683b      	ldr	r3, [r7, #0]
    1fc2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1fc6:	b2da      	uxtb	r2, r3
    1fc8:	7b7b      	ldrb	r3, [r7, #13]
    1fca:	f362 03c7 	bfi	r3, r2, #3, #5
    1fce:	737b      	strb	r3, [r7, #13]
    1fd0:	78bb      	ldrb	r3, [r7, #2]
    1fd2:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1fd6:	b2da      	uxtb	r2, r3
    1fd8:	7bbb      	ldrb	r3, [r7, #14]
    1fda:	f362 0304 	bfi	r3, r2, #0, #5
    1fde:	73bb      	strb	r3, [r7, #14]
    1fe0:	887b      	ldrh	r3, [r7, #2]
    1fe2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1fe6:	b2da      	uxtb	r2, r3
    1fe8:	89fb      	ldrh	r3, [r7, #14]
    1fea:	f362 1348 	bfi	r3, r2, #5, #4
    1fee:	81fb      	strh	r3, [r7, #14]
    1ff0:	893b      	ldrh	r3, [r7, #8]
    1ff2:	b2db      	uxtb	r3, r3
    1ff4:	3344      	adds	r3, #68	; 0x44
    1ff6:	b2db      	uxtb	r3, r3
    1ff8:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1ffc:	b2da      	uxtb	r2, r3
    1ffe:	7bfb      	ldrb	r3, [r7, #15]
    2000:	f362 0347 	bfi	r3, r2, #1, #7
    2004:	73fb      	strb	r3, [r7, #15]
    2006:	68fb      	ldr	r3, [r7, #12]
    2008:	4618      	mov	r0, r3
    200a:	3710      	adds	r7, #16
    200c:	46bd      	mov	sp, r7
    200e:	bd80      	pop	{r7, pc}

00002010 <RTC_handler>:
    2010:	b480      	push	{r7}
    2012:	b083      	sub	sp, #12
    2014:	af00      	add	r7, sp, #0
    2016:	4b0a      	ldr	r3, [pc, #40]	; (2040 <RTC_handler+0x30>)
    2018:	685b      	ldr	r3, [r3, #4]
    201a:	f003 0301 	and.w	r3, r3, #1
    201e:	2b00      	cmp	r3, #0
    2020:	d001      	beq.n	2026 <RTC_handler+0x16>
    2022:	4b07      	ldr	r3, [pc, #28]	; (2040 <RTC_handler+0x30>)
    2024:	685b      	ldr	r3, [r3, #4]
    2026:	4b06      	ldr	r3, [pc, #24]	; (2040 <RTC_handler+0x30>)
    2028:	685b      	ldr	r3, [r3, #4]
    202a:	f003 0302 	and.w	r3, r3, #2
    202e:	2b00      	cmp	r3, #0
    2030:	d001      	beq.n	2036 <RTC_handler+0x26>
    2032:	4b03      	ldr	r3, [pc, #12]	; (2040 <RTC_handler+0x30>)
    2034:	685b      	ldr	r3, [r3, #4]
    2036:	bf00      	nop
    2038:	370c      	adds	r7, #12
    203a:	46bd      	mov	sp, r7
    203c:	bc80      	pop	{r7}
    203e:	4770      	bx	lr
    2040:	40002800 	.word	0x40002800

00002044 <spi_baudrate>:
    2044:	b480      	push	{r7}
    2046:	b083      	sub	sp, #12
    2048:	af00      	add	r7, sp, #0
    204a:	6078      	str	r0, [r7, #4]
    204c:	6039      	str	r1, [r7, #0]
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	681b      	ldr	r3, [r3, #0]
    2052:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    2056:	687b      	ldr	r3, [r7, #4]
    2058:	601a      	str	r2, [r3, #0]
    205a:	687b      	ldr	r3, [r7, #4]
    205c:	681a      	ldr	r2, [r3, #0]
    205e:	683b      	ldr	r3, [r7, #0]
    2060:	00db      	lsls	r3, r3, #3
    2062:	431a      	orrs	r2, r3
    2064:	687b      	ldr	r3, [r7, #4]
    2066:	601a      	str	r2, [r3, #0]
    2068:	bf00      	nop
    206a:	370c      	adds	r7, #12
    206c:	46bd      	mov	sp, r7
    206e:	bc80      	pop	{r7}
    2070:	4770      	bx	lr

00002072 <spi_config_port>:
    2072:	b580      	push	{r7, lr}
    2074:	b082      	sub	sp, #8
    2076:	af00      	add	r7, sp, #0
    2078:	6078      	str	r0, [r7, #4]
    207a:	6039      	str	r1, [r7, #0]
    207c:	4a33      	ldr	r2, [pc, #204]	; (214c <spi_config_port+0xda>)
    207e:	4b33      	ldr	r3, [pc, #204]	; (214c <spi_config_port+0xda>)
    2080:	699b      	ldr	r3, [r3, #24]
    2082:	f043 0301 	orr.w	r3, r3, #1
    2086:	6193      	str	r3, [r2, #24]
    2088:	687b      	ldr	r3, [r7, #4]
    208a:	4a31      	ldr	r2, [pc, #196]	; (2150 <spi_config_port+0xde>)
    208c:	4293      	cmp	r3, r2
    208e:	d13e      	bne.n	210e <spi_config_port+0x9c>
    2090:	683b      	ldr	r3, [r7, #0]
    2092:	2b00      	cmp	r3, #0
    2094:	d11a      	bne.n	20cc <spi_config_port+0x5a>
    2096:	4a2d      	ldr	r2, [pc, #180]	; (214c <spi_config_port+0xda>)
    2098:	4b2c      	ldr	r3, [pc, #176]	; (214c <spi_config_port+0xda>)
    209a:	699b      	ldr	r3, [r3, #24]
    209c:	f043 0304 	orr.w	r3, r3, #4
    20a0:	6193      	str	r3, [r2, #24]
    20a2:	2203      	movs	r2, #3
    20a4:	2104      	movs	r1, #4
    20a6:	482b      	ldr	r0, [pc, #172]	; (2154 <spi_config_port+0xe2>)
    20a8:	f7fe fda3 	bl	bf2 <config_pin>
    20ac:	220b      	movs	r2, #11
    20ae:	2105      	movs	r1, #5
    20b0:	4828      	ldr	r0, [pc, #160]	; (2154 <spi_config_port+0xe2>)
    20b2:	f7fe fd9e 	bl	bf2 <config_pin>
    20b6:	2204      	movs	r2, #4
    20b8:	2106      	movs	r1, #6
    20ba:	4826      	ldr	r0, [pc, #152]	; (2154 <spi_config_port+0xe2>)
    20bc:	f7fe fd99 	bl	bf2 <config_pin>
    20c0:	220b      	movs	r2, #11
    20c2:	2107      	movs	r1, #7
    20c4:	4823      	ldr	r0, [pc, #140]	; (2154 <spi_config_port+0xe2>)
    20c6:	f7fe fd94 	bl	bf2 <config_pin>
    20ca:	e03a      	b.n	2142 <spi_config_port+0xd0>
    20cc:	4a1f      	ldr	r2, [pc, #124]	; (214c <spi_config_port+0xda>)
    20ce:	4b1f      	ldr	r3, [pc, #124]	; (214c <spi_config_port+0xda>)
    20d0:	699b      	ldr	r3, [r3, #24]
    20d2:	f043 030d 	orr.w	r3, r3, #13
    20d6:	6193      	str	r3, [r2, #24]
    20d8:	4a1f      	ldr	r2, [pc, #124]	; (2158 <spi_config_port+0xe6>)
    20da:	4b1f      	ldr	r3, [pc, #124]	; (2158 <spi_config_port+0xe6>)
    20dc:	685b      	ldr	r3, [r3, #4]
    20de:	f043 0301 	orr.w	r3, r3, #1
    20e2:	6053      	str	r3, [r2, #4]
    20e4:	2203      	movs	r2, #3
    20e6:	210f      	movs	r1, #15
    20e8:	481a      	ldr	r0, [pc, #104]	; (2154 <spi_config_port+0xe2>)
    20ea:	f7fe fd82 	bl	bf2 <config_pin>
    20ee:	220b      	movs	r2, #11
    20f0:	2103      	movs	r1, #3
    20f2:	481a      	ldr	r0, [pc, #104]	; (215c <spi_config_port+0xea>)
    20f4:	f7fe fd7d 	bl	bf2 <config_pin>
    20f8:	2204      	movs	r2, #4
    20fa:	2104      	movs	r1, #4
    20fc:	4817      	ldr	r0, [pc, #92]	; (215c <spi_config_port+0xea>)
    20fe:	f7fe fd78 	bl	bf2 <config_pin>
    2102:	220b      	movs	r2, #11
    2104:	2105      	movs	r1, #5
    2106:	4815      	ldr	r0, [pc, #84]	; (215c <spi_config_port+0xea>)
    2108:	f7fe fd73 	bl	bf2 <config_pin>
    210c:	e019      	b.n	2142 <spi_config_port+0xd0>
    210e:	4a0f      	ldr	r2, [pc, #60]	; (214c <spi_config_port+0xda>)
    2110:	4b0e      	ldr	r3, [pc, #56]	; (214c <spi_config_port+0xda>)
    2112:	699b      	ldr	r3, [r3, #24]
    2114:	f043 0308 	orr.w	r3, r3, #8
    2118:	6193      	str	r3, [r2, #24]
    211a:	2203      	movs	r2, #3
    211c:	2102      	movs	r1, #2
    211e:	480f      	ldr	r0, [pc, #60]	; (215c <spi_config_port+0xea>)
    2120:	f7fe fd67 	bl	bf2 <config_pin>
    2124:	220b      	movs	r2, #11
    2126:	210d      	movs	r1, #13
    2128:	480c      	ldr	r0, [pc, #48]	; (215c <spi_config_port+0xea>)
    212a:	f7fe fd62 	bl	bf2 <config_pin>
    212e:	2204      	movs	r2, #4
    2130:	210e      	movs	r1, #14
    2132:	480a      	ldr	r0, [pc, #40]	; (215c <spi_config_port+0xea>)
    2134:	f7fe fd5d 	bl	bf2 <config_pin>
    2138:	220b      	movs	r2, #11
    213a:	210f      	movs	r1, #15
    213c:	4807      	ldr	r0, [pc, #28]	; (215c <spi_config_port+0xea>)
    213e:	f7fe fd58 	bl	bf2 <config_pin>
    2142:	bf00      	nop
    2144:	3708      	adds	r7, #8
    2146:	46bd      	mov	sp, r7
    2148:	bd80      	pop	{r7, pc}
    214a:	bf00      	nop
    214c:	40021000 	.word	0x40021000
    2150:	40013000 	.word	0x40013000
    2154:	40010800 	.word	0x40010800
    2158:	40010000 	.word	0x40010000
    215c:	40010c00 	.word	0x40010c00

00002160 <spi_init>:
    2160:	b580      	push	{r7, lr}
    2162:	b084      	sub	sp, #16
    2164:	af00      	add	r7, sp, #0
    2166:	60f8      	str	r0, [r7, #12]
    2168:	60b9      	str	r1, [r7, #8]
    216a:	607a      	str	r2, [r7, #4]
    216c:	603b      	str	r3, [r7, #0]
    216e:	6839      	ldr	r1, [r7, #0]
    2170:	68f8      	ldr	r0, [r7, #12]
    2172:	f7ff ff7e 	bl	2072 <spi_config_port>
    2176:	68fb      	ldr	r3, [r7, #12]
    2178:	4a10      	ldr	r2, [pc, #64]	; (21bc <spi_init+0x5c>)
    217a:	4293      	cmp	r3, r2
    217c:	d106      	bne.n	218c <spi_init+0x2c>
    217e:	4a10      	ldr	r2, [pc, #64]	; (21c0 <spi_init+0x60>)
    2180:	4b0f      	ldr	r3, [pc, #60]	; (21c0 <spi_init+0x60>)
    2182:	699b      	ldr	r3, [r3, #24]
    2184:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2188:	6193      	str	r3, [r2, #24]
    218a:	e005      	b.n	2198 <spi_init+0x38>
    218c:	4a0c      	ldr	r2, [pc, #48]	; (21c0 <spi_init+0x60>)
    218e:	4b0c      	ldr	r3, [pc, #48]	; (21c0 <spi_init+0x60>)
    2190:	69db      	ldr	r3, [r3, #28]
    2192:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2196:	61d3      	str	r3, [r2, #28]
    2198:	68fb      	ldr	r3, [r7, #12]
    219a:	687a      	ldr	r2, [r7, #4]
    219c:	601a      	str	r2, [r3, #0]
    219e:	68b9      	ldr	r1, [r7, #8]
    21a0:	68f8      	ldr	r0, [r7, #12]
    21a2:	f7ff ff4f 	bl	2044 <spi_baudrate>
    21a6:	68fb      	ldr	r3, [r7, #12]
    21a8:	681b      	ldr	r3, [r3, #0]
    21aa:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    21ae:	68fb      	ldr	r3, [r7, #12]
    21b0:	601a      	str	r2, [r3, #0]
    21b2:	bf00      	nop
    21b4:	3710      	adds	r7, #16
    21b6:	46bd      	mov	sp, r7
    21b8:	bd80      	pop	{r7, pc}
    21ba:	bf00      	nop
    21bc:	40013000 	.word	0x40013000
    21c0:	40021000 	.word	0x40021000

000021c4 <spi_send>:
    21c4:	b480      	push	{r7}
    21c6:	b085      	sub	sp, #20
    21c8:	af00      	add	r7, sp, #0
    21ca:	6078      	str	r0, [r7, #4]
    21cc:	460b      	mov	r3, r1
    21ce:	70fb      	strb	r3, [r7, #3]
    21d0:	bf00      	nop
    21d2:	687b      	ldr	r3, [r7, #4]
    21d4:	689b      	ldr	r3, [r3, #8]
    21d6:	f003 0302 	and.w	r3, r3, #2
    21da:	2b00      	cmp	r3, #0
    21dc:	d0f9      	beq.n	21d2 <spi_send+0xe>
    21de:	78fa      	ldrb	r2, [r7, #3]
    21e0:	687b      	ldr	r3, [r7, #4]
    21e2:	60da      	str	r2, [r3, #12]
    21e4:	bf00      	nop
    21e6:	687b      	ldr	r3, [r7, #4]
    21e8:	689b      	ldr	r3, [r3, #8]
    21ea:	f003 0301 	and.w	r3, r3, #1
    21ee:	2b00      	cmp	r3, #0
    21f0:	d0f9      	beq.n	21e6 <spi_send+0x22>
    21f2:	687b      	ldr	r3, [r7, #4]
    21f4:	68db      	ldr	r3, [r3, #12]
    21f6:	73fb      	strb	r3, [r7, #15]
    21f8:	bf00      	nop
    21fa:	3714      	adds	r7, #20
    21fc:	46bd      	mov	sp, r7
    21fe:	bc80      	pop	{r7}
    2200:	4770      	bx	lr

00002202 <spi_receive>:
    2202:	b480      	push	{r7}
    2204:	b085      	sub	sp, #20
    2206:	af00      	add	r7, sp, #0
    2208:	6078      	str	r0, [r7, #4]
    220a:	bf00      	nop
    220c:	687b      	ldr	r3, [r7, #4]
    220e:	689b      	ldr	r3, [r3, #8]
    2210:	f003 0302 	and.w	r3, r3, #2
    2214:	2b00      	cmp	r3, #0
    2216:	d0f9      	beq.n	220c <spi_receive+0xa>
    2218:	687b      	ldr	r3, [r7, #4]
    221a:	22ff      	movs	r2, #255	; 0xff
    221c:	60da      	str	r2, [r3, #12]
    221e:	bf00      	nop
    2220:	687b      	ldr	r3, [r7, #4]
    2222:	689b      	ldr	r3, [r3, #8]
    2224:	f003 0301 	and.w	r3, r3, #1
    2228:	2b00      	cmp	r3, #0
    222a:	d0f9      	beq.n	2220 <spi_receive+0x1e>
    222c:	687b      	ldr	r3, [r7, #4]
    222e:	68db      	ldr	r3, [r3, #12]
    2230:	73fb      	strb	r3, [r7, #15]
    2232:	7bfb      	ldrb	r3, [r7, #15]
    2234:	4618      	mov	r0, r3
    2236:	3714      	adds	r7, #20
    2238:	46bd      	mov	sp, r7
    223a:	bc80      	pop	{r7}
    223c:	4770      	bx	lr

0000223e <spi_send_block>:
    223e:	b480      	push	{r7}
    2240:	b087      	sub	sp, #28
    2242:	af00      	add	r7, sp, #0
    2244:	60f8      	str	r0, [r7, #12]
    2246:	60b9      	str	r1, [r7, #8]
    2248:	607a      	str	r2, [r7, #4]
    224a:	e010      	b.n	226e <spi_send_block+0x30>
    224c:	68bb      	ldr	r3, [r7, #8]
    224e:	1c5a      	adds	r2, r3, #1
    2250:	60ba      	str	r2, [r7, #8]
    2252:	781b      	ldrb	r3, [r3, #0]
    2254:	461a      	mov	r2, r3
    2256:	68fb      	ldr	r3, [r7, #12]
    2258:	60da      	str	r2, [r3, #12]
    225a:	bf00      	nop
    225c:	68fb      	ldr	r3, [r7, #12]
    225e:	689b      	ldr	r3, [r3, #8]
    2260:	f003 0302 	and.w	r3, r3, #2
    2264:	2b00      	cmp	r3, #0
    2266:	d0f9      	beq.n	225c <spi_send_block+0x1e>
    2268:	687b      	ldr	r3, [r7, #4]
    226a:	3b01      	subs	r3, #1
    226c:	607b      	str	r3, [r7, #4]
    226e:	687b      	ldr	r3, [r7, #4]
    2270:	2b00      	cmp	r3, #0
    2272:	d1eb      	bne.n	224c <spi_send_block+0xe>
    2274:	bf00      	nop
    2276:	68fb      	ldr	r3, [r7, #12]
    2278:	689b      	ldr	r3, [r3, #8]
    227a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    227e:	2b00      	cmp	r3, #0
    2280:	d1f9      	bne.n	2276 <spi_send_block+0x38>
    2282:	68fb      	ldr	r3, [r7, #12]
    2284:	68db      	ldr	r3, [r3, #12]
    2286:	75fb      	strb	r3, [r7, #23]
    2288:	bf00      	nop
    228a:	371c      	adds	r7, #28
    228c:	46bd      	mov	sp, r7
    228e:	bc80      	pop	{r7}
    2290:	4770      	bx	lr

00002292 <spi_receive_block>:
    2292:	b480      	push	{r7}
    2294:	b085      	sub	sp, #20
    2296:	af00      	add	r7, sp, #0
    2298:	60f8      	str	r0, [r7, #12]
    229a:	60b9      	str	r1, [r7, #8]
    229c:	607a      	str	r2, [r7, #4]
    229e:	e013      	b.n	22c8 <spi_receive_block+0x36>
    22a0:	68fb      	ldr	r3, [r7, #12]
    22a2:	2200      	movs	r2, #0
    22a4:	60da      	str	r2, [r3, #12]
    22a6:	bf00      	nop
    22a8:	68fb      	ldr	r3, [r7, #12]
    22aa:	689b      	ldr	r3, [r3, #8]
    22ac:	f003 0301 	and.w	r3, r3, #1
    22b0:	2b00      	cmp	r3, #0
    22b2:	d0f9      	beq.n	22a8 <spi_receive_block+0x16>
    22b4:	68bb      	ldr	r3, [r7, #8]
    22b6:	1c5a      	adds	r2, r3, #1
    22b8:	60ba      	str	r2, [r7, #8]
    22ba:	68fa      	ldr	r2, [r7, #12]
    22bc:	68d2      	ldr	r2, [r2, #12]
    22be:	b2d2      	uxtb	r2, r2
    22c0:	701a      	strb	r2, [r3, #0]
    22c2:	687b      	ldr	r3, [r7, #4]
    22c4:	3b01      	subs	r3, #1
    22c6:	607b      	str	r3, [r7, #4]
    22c8:	687b      	ldr	r3, [r7, #4]
    22ca:	2b00      	cmp	r3, #0
    22cc:	d1e8      	bne.n	22a0 <spi_receive_block+0xe>
    22ce:	bf00      	nop
    22d0:	3714      	adds	r7, #20
    22d2:	46bd      	mov	sp, r7
    22d4:	bc80      	pop	{r7}
    22d6:	4770      	bx	lr

000022d8 <reset_mcu>:
    22d8:	4b01      	ldr	r3, [pc, #4]	; (22e0 <reset_mcu+0x8>)
    22da:	4a02      	ldr	r2, [pc, #8]	; (22e4 <reset_mcu+0xc>)
    22dc:	601a      	str	r2, [r3, #0]
    22de:	bf00      	nop
    22e0:	e000ed0c 	.word	0xe000ed0c
    22e4:	05fa0004 	.word	0x05fa0004

000022e8 <print_fault>:
    22e8:	b580      	push	{r7, lr}
    22ea:	b082      	sub	sp, #8
    22ec:	af00      	add	r7, sp, #0
    22ee:	6078      	str	r0, [r7, #4]
    22f0:	6039      	str	r1, [r7, #0]
    22f2:	6878      	ldr	r0, [r7, #4]
    22f4:	f7fe fd88 	bl	e08 <gfx_print>
    22f8:	4818      	ldr	r0, [pc, #96]	; (235c <print_fault+0x74>)
    22fa:	f7fe fd85 	bl	e08 <gfx_print>
    22fe:	683b      	ldr	r3, [r7, #0]
    2300:	2b00      	cmp	r3, #0
    2302:	d004      	beq.n	230e <print_fault+0x26>
    2304:	683b      	ldr	r3, [r7, #0]
    2306:	2110      	movs	r1, #16
    2308:	4618      	mov	r0, r3
    230a:	f7fe fda0 	bl	e4e <gfx_print_int>
    230e:	200d      	movs	r0, #13
    2310:	f7fe fd1a 	bl	d48 <gfx_putchar>
    2314:	4812      	ldr	r0, [pc, #72]	; (2360 <print_fault+0x78>)
    2316:	f7fe fd77 	bl	e08 <gfx_print>
    231a:	4b12      	ldr	r3, [pc, #72]	; (2364 <print_fault+0x7c>)
    231c:	681b      	ldr	r3, [r3, #0]
    231e:	f3c3 430f 	ubfx	r3, r3, #16, #16
    2322:	b29b      	uxth	r3, r3
    2324:	2110      	movs	r1, #16
    2326:	4618      	mov	r0, r3
    2328:	f7fe fd91 	bl	e4e <gfx_print_int>
    232c:	480e      	ldr	r0, [pc, #56]	; (2368 <print_fault+0x80>)
    232e:	f7fe fd6b 	bl	e08 <gfx_print>
    2332:	4b0c      	ldr	r3, [pc, #48]	; (2364 <print_fault+0x7c>)
    2334:	681b      	ldr	r3, [r3, #0]
    2336:	f3c3 2307 	ubfx	r3, r3, #8, #8
    233a:	b2db      	uxtb	r3, r3
    233c:	2110      	movs	r1, #16
    233e:	4618      	mov	r0, r3
    2340:	f7fe fd85 	bl	e4e <gfx_print_int>
    2344:	4809      	ldr	r0, [pc, #36]	; (236c <print_fault+0x84>)
    2346:	f7fe fd5f 	bl	e08 <gfx_print>
    234a:	4b06      	ldr	r3, [pc, #24]	; (2364 <print_fault+0x7c>)
    234c:	681b      	ldr	r3, [r3, #0]
    234e:	b2db      	uxtb	r3, r3
    2350:	2110      	movs	r1, #16
    2352:	4618      	mov	r0, r3
    2354:	f7fe fd7b 	bl	e4e <gfx_print_int>
    2358:	e7fe      	b.n	2358 <print_fault+0x70>
    235a:	bf00      	nop
    235c:	00002bf0 	.word	0x00002bf0
    2360:	00002c00 	.word	0x00002c00
    2364:	e000ed28 	.word	0xe000ed28
    2368:	00002c08 	.word	0x00002c08
    236c:	00002c10 	.word	0x00002c10

00002370 <config_systicks>:
    2370:	b580      	push	{r7, lr}
    2372:	af00      	add	r7, sp, #0
    2374:	2109      	movs	r1, #9
    2376:	f06f 000e 	mvn.w	r0, #14
    237a:	f7fe fff3 	bl	1364 <set_int_priority>
    237e:	4b04      	ldr	r3, [pc, #16]	; (2390 <config_systicks+0x20>)
    2380:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2384:	601a      	str	r2, [r3, #0]
    2386:	4b03      	ldr	r3, [pc, #12]	; (2394 <config_systicks+0x24>)
    2388:	2203      	movs	r2, #3
    238a:	601a      	str	r2, [r3, #0]
    238c:	bf00      	nop
    238e:	bd80      	pop	{r7, pc}
    2390:	e000e014 	.word	0xe000e014
    2394:	e000e010 	.word	0xe000e010

00002398 <pause>:
    2398:	b480      	push	{r7}
    239a:	b083      	sub	sp, #12
    239c:	af00      	add	r7, sp, #0
    239e:	6078      	str	r0, [r7, #4]
    23a0:	4a06      	ldr	r2, [pc, #24]	; (23bc <pause+0x24>)
    23a2:	687b      	ldr	r3, [r7, #4]
    23a4:	6013      	str	r3, [r2, #0]
    23a6:	bf00      	nop
    23a8:	4b04      	ldr	r3, [pc, #16]	; (23bc <pause+0x24>)
    23aa:	681b      	ldr	r3, [r3, #0]
    23ac:	2b00      	cmp	r3, #0
    23ae:	d1fb      	bne.n	23a8 <pause+0x10>
    23b0:	bf00      	nop
    23b2:	370c      	adds	r7, #12
    23b4:	46bd      	mov	sp, r7
    23b6:	bc80      	pop	{r7}
    23b8:	4770      	bx	lr
    23ba:	bf00      	nop
    23bc:	20000464 	.word	0x20000464

000023c0 <STK_handler>:
    23c0:	b480      	push	{r7}
    23c2:	af00      	add	r7, sp, #0
    23c4:	4b08      	ldr	r3, [pc, #32]	; (23e8 <STK_handler+0x28>)
    23c6:	681b      	ldr	r3, [r3, #0]
    23c8:	3301      	adds	r3, #1
    23ca:	4a07      	ldr	r2, [pc, #28]	; (23e8 <STK_handler+0x28>)
    23cc:	6013      	str	r3, [r2, #0]
    23ce:	4b07      	ldr	r3, [pc, #28]	; (23ec <STK_handler+0x2c>)
    23d0:	681b      	ldr	r3, [r3, #0]
    23d2:	2b00      	cmp	r3, #0
    23d4:	d004      	beq.n	23e0 <STK_handler+0x20>
    23d6:	4b05      	ldr	r3, [pc, #20]	; (23ec <STK_handler+0x2c>)
    23d8:	681b      	ldr	r3, [r3, #0]
    23da:	3b01      	subs	r3, #1
    23dc:	4a03      	ldr	r2, [pc, #12]	; (23ec <STK_handler+0x2c>)
    23de:	6013      	str	r3, [r2, #0]
    23e0:	bf00      	nop
    23e2:	46bd      	mov	sp, r7
    23e4:	bc80      	pop	{r7}
    23e6:	4770      	bx	lr
    23e8:	20000460 	.word	0x20000460
    23ec:	20000464 	.word	0x20000464

000023f0 <tvout_init>:
    23f0:	b580      	push	{r7, lr}
    23f2:	af00      	add	r7, sp, #0
    23f4:	220a      	movs	r2, #10
    23f6:	2108      	movs	r1, #8
    23f8:	4843      	ldr	r0, [pc, #268]	; (2508 <tvout_init+0x118>)
    23fa:	f7fe fbfa 	bl	bf2 <config_pin>
    23fe:	4b42      	ldr	r3, [pc, #264]	; (2508 <tvout_init+0x118>)
    2400:	f04f 3233 	mov.w	r2, #858993459	; 0x33333333
    2404:	601a      	str	r2, [r3, #0]
    2406:	4b40      	ldr	r3, [pc, #256]	; (2508 <tvout_init+0x118>)
    2408:	2200      	movs	r2, #0
    240a:	60da      	str	r2, [r3, #12]
    240c:	4a3f      	ldr	r2, [pc, #252]	; (250c <tvout_init+0x11c>)
    240e:	4b3f      	ldr	r3, [pc, #252]	; (250c <tvout_init+0x11c>)
    2410:	699b      	ldr	r3, [r3, #24]
    2412:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    2416:	6193      	str	r3, [r2, #24]
    2418:	4b3d      	ldr	r3, [pc, #244]	; (2510 <tvout_init+0x120>)
    241a:	2278      	movs	r2, #120	; 0x78
    241c:	619a      	str	r2, [r3, #24]
    241e:	4b3c      	ldr	r3, [pc, #240]	; (2510 <tvout_init+0x120>)
    2420:	2201      	movs	r2, #1
    2422:	621a      	str	r2, [r3, #32]
    2424:	4b3a      	ldr	r3, [pc, #232]	; (2510 <tvout_init+0x120>)
    2426:	2284      	movs	r2, #132	; 0x84
    2428:	601a      	str	r2, [r3, #0]
    242a:	4b39      	ldr	r3, [pc, #228]	; (2510 <tvout_init+0x120>)
    242c:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2430:	62da      	str	r2, [r3, #44]	; 0x2c
    2432:	4b37      	ldr	r3, [pc, #220]	; (2510 <tvout_init+0x120>)
    2434:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2438:	635a      	str	r2, [r3, #52]	; 0x34
    243a:	4b35      	ldr	r3, [pc, #212]	; (2510 <tvout_init+0x120>)
    243c:	f240 126d 	movw	r2, #365	; 0x16d
    2440:	639a      	str	r2, [r3, #56]	; 0x38
    2442:	4a33      	ldr	r2, [pc, #204]	; (2510 <tvout_init+0x120>)
    2444:	4b32      	ldr	r3, [pc, #200]	; (2510 <tvout_init+0x120>)
    2446:	695b      	ldr	r3, [r3, #20]
    2448:	f043 0301 	orr.w	r3, r3, #1
    244c:	6153      	str	r3, [r2, #20]
    244e:	4b30      	ldr	r3, [pc, #192]	; (2510 <tvout_init+0x120>)
    2450:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2454:	645a      	str	r2, [r3, #68]	; 0x44
    2456:	4b2e      	ldr	r3, [pc, #184]	; (2510 <tvout_init+0x120>)
    2458:	2200      	movs	r2, #0
    245a:	611a      	str	r2, [r3, #16]
    245c:	4a2c      	ldr	r2, [pc, #176]	; (2510 <tvout_init+0x120>)
    245e:	4b2c      	ldr	r3, [pc, #176]	; (2510 <tvout_init+0x120>)
    2460:	68db      	ldr	r3, [r3, #12]
    2462:	f043 0301 	orr.w	r3, r3, #1
    2466:	60d3      	str	r3, [r2, #12]
    2468:	2101      	movs	r1, #1
    246a:	2019      	movs	r0, #25
    246c:	f7fe ff7a 	bl	1364 <set_int_priority>
    2470:	2101      	movs	r1, #1
    2472:	201b      	movs	r0, #27
    2474:	f7fe ff76 	bl	1364 <set_int_priority>
    2478:	201b      	movs	r0, #27
    247a:	f7fe feb9 	bl	11f0 <enable_interrupt>
    247e:	2019      	movs	r0, #25
    2480:	f7fe feb6 	bl	11f0 <enable_interrupt>
    2484:	4a22      	ldr	r2, [pc, #136]	; (2510 <tvout_init+0x120>)
    2486:	4b22      	ldr	r3, [pc, #136]	; (2510 <tvout_init+0x120>)
    2488:	681b      	ldr	r3, [r3, #0]
    248a:	f043 0301 	orr.w	r3, r3, #1
    248e:	6013      	str	r3, [r2, #0]
    2490:	220a      	movs	r2, #10
    2492:	2100      	movs	r1, #0
    2494:	481f      	ldr	r0, [pc, #124]	; (2514 <tvout_init+0x124>)
    2496:	f7fe fbac 	bl	bf2 <config_pin>
    249a:	220a      	movs	r2, #10
    249c:	2101      	movs	r1, #1
    249e:	481d      	ldr	r0, [pc, #116]	; (2514 <tvout_init+0x124>)
    24a0:	f7fe fba7 	bl	bf2 <config_pin>
    24a4:	4a19      	ldr	r2, [pc, #100]	; (250c <tvout_init+0x11c>)
    24a6:	4b19      	ldr	r3, [pc, #100]	; (250c <tvout_init+0x11c>)
    24a8:	69db      	ldr	r3, [r3, #28]
    24aa:	f043 0302 	orr.w	r3, r3, #2
    24ae:	61d3      	str	r3, [r2, #28]
    24b0:	4b19      	ldr	r3, [pc, #100]	; (2518 <tvout_init+0x128>)
    24b2:	f246 0278 	movw	r2, #24696	; 0x6078
    24b6:	61da      	str	r2, [r3, #28]
    24b8:	4b17      	ldr	r3, [pc, #92]	; (2518 <tvout_init+0x128>)
    24ba:	f44f 7240 	mov.w	r2, #768	; 0x300
    24be:	621a      	str	r2, [r3, #32]
    24c0:	4b15      	ldr	r3, [pc, #84]	; (2518 <tvout_init+0x128>)
    24c2:	2284      	movs	r2, #132	; 0x84
    24c4:	601a      	str	r2, [r3, #0]
    24c6:	4b14      	ldr	r3, [pc, #80]	; (2518 <tvout_init+0x128>)
    24c8:	2213      	movs	r2, #19
    24ca:	62da      	str	r2, [r3, #44]	; 0x2c
    24cc:	4b12      	ldr	r3, [pc, #72]	; (2518 <tvout_init+0x128>)
    24ce:	220a      	movs	r2, #10
    24d0:	63da      	str	r2, [r3, #60]	; 0x3c
    24d2:	4b11      	ldr	r3, [pc, #68]	; (2518 <tvout_init+0x128>)
    24d4:	220a      	movs	r2, #10
    24d6:	641a      	str	r2, [r3, #64]	; 0x40
    24d8:	4a0f      	ldr	r2, [pc, #60]	; (2518 <tvout_init+0x128>)
    24da:	4b0f      	ldr	r3, [pc, #60]	; (2518 <tvout_init+0x128>)
    24dc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    24de:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    24e2:	6453      	str	r3, [r2, #68]	; 0x44
    24e4:	4a0c      	ldr	r2, [pc, #48]	; (2518 <tvout_init+0x128>)
    24e6:	4b0c      	ldr	r3, [pc, #48]	; (2518 <tvout_init+0x128>)
    24e8:	695b      	ldr	r3, [r3, #20]
    24ea:	f043 0301 	orr.w	r3, r3, #1
    24ee:	6153      	str	r3, [r2, #20]
    24f0:	4b09      	ldr	r3, [pc, #36]	; (2518 <tvout_init+0x128>)
    24f2:	2200      	movs	r2, #0
    24f4:	611a      	str	r2, [r3, #16]
    24f6:	4a08      	ldr	r2, [pc, #32]	; (2518 <tvout_init+0x128>)
    24f8:	4b07      	ldr	r3, [pc, #28]	; (2518 <tvout_init+0x128>)
    24fa:	681b      	ldr	r3, [r3, #0]
    24fc:	f043 0301 	orr.w	r3, r3, #1
    2500:	6013      	str	r3, [r2, #0]
    2502:	bf00      	nop
    2504:	bd80      	pop	{r7, pc}
    2506:	bf00      	nop
    2508:	40010800 	.word	0x40010800
    250c:	40021000 	.word	0x40021000
    2510:	40012c00 	.word	0x40012c00
    2514:	40010c00 	.word	0x40010c00
    2518:	40000400 	.word	0x40000400

0000251c <TV_OUT_handler>:
    251c:	4668      	mov	r0, sp
    251e:	f020 0107 	bic.w	r1, r0, #7
    2522:	468d      	mov	sp, r1
    2524:	b411      	push	{r0, r4}
    2526:	4a29      	ldr	r2, [pc, #164]	; (25cc <TV_OUT_handler+0xb0>)
    2528:	6a13      	ldr	r3, [r2, #32]
    252a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    252e:	6213      	str	r3, [r2, #32]
    2530:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2534:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2536:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    253a:	d3fb      	bcc.n	2534 <TV_OUT_handler+0x18>
    253c:	4a23      	ldr	r2, [pc, #140]	; (25cc <TV_OUT_handler+0xb0>)
    253e:	6a13      	ldr	r3, [r2, #32]
    2540:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2544:	6213      	str	r3, [r2, #32]
    2546:	4b22      	ldr	r3, [pc, #136]	; (25d0 <TV_OUT_handler+0xb4>)
    2548:	881b      	ldrh	r3, [r3, #0]
    254a:	f013 0f04 	tst.w	r3, #4
    254e:	d034      	beq.n	25ba <TV_OUT_handler+0x9e>
    2550:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    2554:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2556:	f5b3 6f86 	cmp.w	r3, #1072	; 0x430
    255a:	d9fb      	bls.n	2554 <TV_OUT_handler+0x38>
    255c:	4b1d      	ldr	r3, [pc, #116]	; (25d4 <TV_OUT_handler+0xb8>)
    255e:	881b      	ldrh	r3, [r3, #0]
    2560:	b29b      	uxth	r3, r3
    2562:	4a1d      	ldr	r2, [pc, #116]	; (25d8 <TV_OUT_handler+0xbc>)
    2564:	fba2 2303 	umull	r2, r3, r2, r3
    2568:	085a      	lsrs	r2, r3, #1
    256a:	4b1c      	ldr	r3, [pc, #112]	; (25dc <TV_OUT_handler+0xc0>)
    256c:	eb03 13c2 	add.w	r3, r3, r2, lsl #7
    2570:	4916      	ldr	r1, [pc, #88]	; (25cc <TV_OUT_handler+0xb0>)
    2572:	6a08      	ldr	r0, [r1, #32]
    2574:	4a1a      	ldr	r2, [pc, #104]	; (25e0 <TV_OUT_handler+0xc4>)
    2576:	6814      	ldr	r4, [r2, #0]
    2578:	4a1a      	ldr	r2, [pc, #104]	; (25e4 <TV_OUT_handler+0xc8>)
    257a:	f832 2014 	ldrh.w	r2, [r2, r4, lsl #1]
    257e:	4302      	orrs	r2, r0
    2580:	620a      	str	r2, [r1, #32]
    2582:	f103 0180 	add.w	r1, r3, #128	; 0x80
    2586:	4818      	ldr	r0, [pc, #96]	; (25e8 <TV_OUT_handler+0xcc>)
    2588:	f813 2b01 	ldrb.w	r2, [r3], #1
    258c:	8002      	strh	r2, [r0, #0]
    258e:	bf00      	nop
    2590:	bf00      	nop
    2592:	bf00      	nop
    2594:	bf00      	nop
    2596:	bf00      	nop
    2598:	bf00      	nop
    259a:	bf00      	nop
    259c:	bf00      	nop
    259e:	bf00      	nop
    25a0:	bf00      	nop
    25a2:	bf00      	nop
    25a4:	bf00      	nop
    25a6:	4299      	cmp	r1, r3
    25a8:	d1ee      	bne.n	2588 <TV_OUT_handler+0x6c>
    25aa:	2200      	movs	r2, #0
    25ac:	4b0f      	ldr	r3, [pc, #60]	; (25ec <TV_OUT_handler+0xd0>)
    25ae:	60da      	str	r2, [r3, #12]
    25b0:	4a06      	ldr	r2, [pc, #24]	; (25cc <TV_OUT_handler+0xb0>)
    25b2:	6a13      	ldr	r3, [r2, #32]
    25b4:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    25b8:	6213      	str	r3, [r2, #32]
    25ba:	4a0d      	ldr	r2, [pc, #52]	; (25f0 <TV_OUT_handler+0xd4>)
    25bc:	6913      	ldr	r3, [r2, #16]
    25be:	f023 0304 	bic.w	r3, r3, #4
    25c2:	6113      	str	r3, [r2, #16]
    25c4:	bc11      	pop	{r0, r4}
    25c6:	4685      	mov	sp, r0
    25c8:	4770      	bx	lr
    25ca:	bf00      	nop
    25cc:	40000400 	.word	0x40000400
    25d0:	2000046a 	.word	0x2000046a
    25d4:	2000046c 	.word	0x2000046c
    25d8:	aaaaaaab 	.word	0xaaaaaaab
    25dc:	20000470 	.word	0x20000470
    25e0:	20000058 	.word	0x20000058
    25e4:	00002c5c 	.word	0x00002c5c
    25e8:	4001080c 	.word	0x4001080c
    25ec:	40010800 	.word	0x40010800
    25f0:	40012c00 	.word	0x40012c00

000025f4 <TV_SYNC_handler>:
    25f4:	4668      	mov	r0, sp
    25f6:	f020 0107 	bic.w	r1, r0, #7
    25fa:	468d      	mov	sp, r1
    25fc:	b401      	push	{r0}
    25fe:	4a79      	ldr	r2, [pc, #484]	; (27e4 <TV_SYNC_handler+0x1f0>)
    2600:	8813      	ldrh	r3, [r2, #0]
    2602:	3301      	adds	r3, #1
    2604:	b29b      	uxth	r3, r3
    2606:	8013      	strh	r3, [r2, #0]
    2608:	4b77      	ldr	r3, [pc, #476]	; (27e8 <TV_SYNC_handler+0x1f4>)
    260a:	881b      	ldrh	r3, [r3, #0]
    260c:	b29b      	uxth	r3, r3
    260e:	2b06      	cmp	r3, #6
    2610:	f200 808d 	bhi.w	272e <TV_SYNC_handler+0x13a>
    2614:	e8df f013 	tbh	[pc, r3, lsl #1]
    2618:	00290007 	.word	0x00290007
    261c:	006b0049 	.word	0x006b0049
    2620:	00a70093 	.word	0x00a70093
    2624:	00be      	.short	0x00be
    2626:	4b71      	ldr	r3, [pc, #452]	; (27ec <TV_SYNC_handler+0x1f8>)
    2628:	881b      	ldrh	r3, [r3, #0]
    262a:	b29b      	uxth	r3, r3
    262c:	b18b      	cbz	r3, 2652 <TV_SYNC_handler+0x5e>
    262e:	4a6f      	ldr	r2, [pc, #444]	; (27ec <TV_SYNC_handler+0x1f8>)
    2630:	8813      	ldrh	r3, [r2, #0]
    2632:	3301      	adds	r3, #1
    2634:	b29b      	uxth	r3, r3
    2636:	8013      	strh	r3, [r2, #0]
    2638:	8813      	ldrh	r3, [r2, #0]
    263a:	b29b      	uxth	r3, r3
    263c:	2b06      	cmp	r3, #6
    263e:	d176      	bne.n	272e <TV_SYNC_handler+0x13a>
    2640:	2200      	movs	r2, #0
    2642:	4b6a      	ldr	r3, [pc, #424]	; (27ec <TV_SYNC_handler+0x1f8>)
    2644:	801a      	strh	r2, [r3, #0]
    2646:	4a68      	ldr	r2, [pc, #416]	; (27e8 <TV_SYNC_handler+0x1f4>)
    2648:	8813      	ldrh	r3, [r2, #0]
    264a:	3301      	adds	r3, #1
    264c:	b29b      	uxth	r3, r3
    264e:	8013      	strh	r3, [r2, #0]
    2650:	e06d      	b.n	272e <TV_SYNC_handler+0x13a>
    2652:	4b67      	ldr	r3, [pc, #412]	; (27f0 <TV_SYNC_handler+0x1fc>)
    2654:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2658:	62da      	str	r2, [r3, #44]	; 0x2c
    265a:	22a4      	movs	r2, #164	; 0xa4
    265c:	635a      	str	r2, [r3, #52]	; 0x34
    265e:	4a63      	ldr	r2, [pc, #396]	; (27ec <TV_SYNC_handler+0x1f8>)
    2660:	8813      	ldrh	r3, [r2, #0]
    2662:	3301      	adds	r3, #1
    2664:	b29b      	uxth	r3, r3
    2666:	8013      	strh	r3, [r2, #0]
    2668:	e061      	b.n	272e <TV_SYNC_handler+0x13a>
    266a:	4b60      	ldr	r3, [pc, #384]	; (27ec <TV_SYNC_handler+0x1f8>)
    266c:	881b      	ldrh	r3, [r3, #0]
    266e:	b29b      	uxth	r3, r3
    2670:	b18b      	cbz	r3, 2696 <TV_SYNC_handler+0xa2>
    2672:	4a5e      	ldr	r2, [pc, #376]	; (27ec <TV_SYNC_handler+0x1f8>)
    2674:	8813      	ldrh	r3, [r2, #0]
    2676:	3301      	adds	r3, #1
    2678:	b29b      	uxth	r3, r3
    267a:	8013      	strh	r3, [r2, #0]
    267c:	8813      	ldrh	r3, [r2, #0]
    267e:	b29b      	uxth	r3, r3
    2680:	2b06      	cmp	r3, #6
    2682:	d154      	bne.n	272e <TV_SYNC_handler+0x13a>
    2684:	2200      	movs	r2, #0
    2686:	4b59      	ldr	r3, [pc, #356]	; (27ec <TV_SYNC_handler+0x1f8>)
    2688:	801a      	strh	r2, [r3, #0]
    268a:	4a57      	ldr	r2, [pc, #348]	; (27e8 <TV_SYNC_handler+0x1f4>)
    268c:	8813      	ldrh	r3, [r2, #0]
    268e:	3301      	adds	r3, #1
    2690:	b29b      	uxth	r3, r3
    2692:	8013      	strh	r3, [r2, #0]
    2694:	e04b      	b.n	272e <TV_SYNC_handler+0x13a>
    2696:	f240 7294 	movw	r2, #1940	; 0x794
    269a:	4b55      	ldr	r3, [pc, #340]	; (27f0 <TV_SYNC_handler+0x1fc>)
    269c:	635a      	str	r2, [r3, #52]	; 0x34
    269e:	4a53      	ldr	r2, [pc, #332]	; (27ec <TV_SYNC_handler+0x1f8>)
    26a0:	8813      	ldrh	r3, [r2, #0]
    26a2:	3301      	adds	r3, #1
    26a4:	b29b      	uxth	r3, r3
    26a6:	8013      	strh	r3, [r2, #0]
    26a8:	e041      	b.n	272e <TV_SYNC_handler+0x13a>
    26aa:	4b50      	ldr	r3, [pc, #320]	; (27ec <TV_SYNC_handler+0x1f8>)
    26ac:	881b      	ldrh	r3, [r3, #0]
    26ae:	b29b      	uxth	r3, r3
    26b0:	b153      	cbz	r3, 26c8 <TV_SYNC_handler+0xd4>
    26b2:	4b4e      	ldr	r3, [pc, #312]	; (27ec <TV_SYNC_handler+0x1f8>)
    26b4:	881b      	ldrh	r3, [r3, #0]
    26b6:	b29b      	uxth	r3, r3
    26b8:	2b06      	cmp	r3, #6
    26ba:	d00e      	beq.n	26da <TV_SYNC_handler+0xe6>
    26bc:	4a4b      	ldr	r2, [pc, #300]	; (27ec <TV_SYNC_handler+0x1f8>)
    26be:	8813      	ldrh	r3, [r2, #0]
    26c0:	3301      	adds	r3, #1
    26c2:	b29b      	uxth	r3, r3
    26c4:	8013      	strh	r3, [r2, #0]
    26c6:	e032      	b.n	272e <TV_SYNC_handler+0x13a>
    26c8:	22a4      	movs	r2, #164	; 0xa4
    26ca:	4b49      	ldr	r3, [pc, #292]	; (27f0 <TV_SYNC_handler+0x1fc>)
    26cc:	635a      	str	r2, [r3, #52]	; 0x34
    26ce:	4a47      	ldr	r2, [pc, #284]	; (27ec <TV_SYNC_handler+0x1f8>)
    26d0:	8813      	ldrh	r3, [r2, #0]
    26d2:	3301      	adds	r3, #1
    26d4:	b29b      	uxth	r3, r3
    26d6:	8013      	strh	r3, [r2, #0]
    26d8:	e029      	b.n	272e <TV_SYNC_handler+0x13a>
    26da:	4a43      	ldr	r2, [pc, #268]	; (27e8 <TV_SYNC_handler+0x1f4>)
    26dc:	8813      	ldrh	r3, [r2, #0]
    26de:	3301      	adds	r3, #1
    26e0:	b29b      	uxth	r3, r3
    26e2:	8013      	strh	r3, [r2, #0]
    26e4:	4b43      	ldr	r3, [pc, #268]	; (27f4 <TV_SYNC_handler+0x200>)
    26e6:	881b      	ldrh	r3, [r3, #0]
    26e8:	f013 0f01 	tst.w	r3, #1
    26ec:	d01f      	beq.n	272e <TV_SYNC_handler+0x13a>
    26ee:	4a40      	ldr	r2, [pc, #256]	; (27f0 <TV_SYNC_handler+0x1fc>)
    26f0:	f241 13c5 	movw	r3, #4549	; 0x11c5
    26f4:	62d3      	str	r3, [r2, #44]	; 0x2c
    26f6:	f44f 73a8 	mov.w	r3, #336	; 0x150
    26fa:	6353      	str	r3, [r2, #52]	; 0x34
    26fc:	493d      	ldr	r1, [pc, #244]	; (27f4 <TV_SYNC_handler+0x200>)
    26fe:	880b      	ldrh	r3, [r1, #0]
    2700:	f023 0302 	bic.w	r3, r3, #2
    2704:	041b      	lsls	r3, r3, #16
    2706:	0c1b      	lsrs	r3, r3, #16
    2708:	800b      	strh	r3, [r1, #0]
    270a:	4936      	ldr	r1, [pc, #216]	; (27e4 <TV_SYNC_handler+0x1f0>)
    270c:	880b      	ldrh	r3, [r1, #0]
    270e:	f3c3 038d 	ubfx	r3, r3, #2, #14
    2712:	800b      	strh	r3, [r1, #0]
    2714:	4934      	ldr	r1, [pc, #208]	; (27e8 <TV_SYNC_handler+0x1f4>)
    2716:	880b      	ldrh	r3, [r1, #0]
    2718:	3301      	adds	r3, #1
    271a:	b29b      	uxth	r3, r3
    271c:	800b      	strh	r3, [r1, #0]
    271e:	6913      	ldr	r3, [r2, #16]
    2720:	f023 0304 	bic.w	r3, r3, #4
    2724:	6113      	str	r3, [r2, #16]
    2726:	68d3      	ldr	r3, [r2, #12]
    2728:	f043 0304 	orr.w	r3, r3, #4
    272c:	60d3      	str	r3, [r2, #12]
    272e:	4a30      	ldr	r2, [pc, #192]	; (27f0 <TV_SYNC_handler+0x1fc>)
    2730:	6913      	ldr	r3, [r2, #16]
    2732:	f023 0301 	bic.w	r3, r3, #1
    2736:	6113      	str	r3, [r2, #16]
    2738:	bc01      	pop	{r0}
    273a:	4685      	mov	sp, r0
    273c:	4770      	bx	lr
    273e:	4b29      	ldr	r3, [pc, #164]	; (27e4 <TV_SYNC_handler+0x1f0>)
    2740:	881b      	ldrh	r3, [r3, #0]
    2742:	b29b      	uxth	r3, r3
    2744:	2b14      	cmp	r3, #20
    2746:	d1f2      	bne.n	272e <TV_SYNC_handler+0x13a>
    2748:	4a27      	ldr	r2, [pc, #156]	; (27e8 <TV_SYNC_handler+0x1f4>)
    274a:	8813      	ldrh	r3, [r2, #0]
    274c:	3301      	adds	r3, #1
    274e:	b29b      	uxth	r3, r3
    2750:	8013      	strh	r3, [r2, #0]
    2752:	2200      	movs	r2, #0
    2754:	4b25      	ldr	r3, [pc, #148]	; (27ec <TV_SYNC_handler+0x1f8>)
    2756:	801a      	strh	r2, [r3, #0]
    2758:	4a26      	ldr	r2, [pc, #152]	; (27f4 <TV_SYNC_handler+0x200>)
    275a:	8813      	ldrh	r3, [r2, #0]
    275c:	b29b      	uxth	r3, r3
    275e:	f043 0304 	orr.w	r3, r3, #4
    2762:	8013      	strh	r3, [r2, #0]
    2764:	e7e3      	b.n	272e <TV_SYNC_handler+0x13a>
    2766:	4a21      	ldr	r2, [pc, #132]	; (27ec <TV_SYNC_handler+0x1f8>)
    2768:	8813      	ldrh	r3, [r2, #0]
    276a:	3301      	adds	r3, #1
    276c:	b29b      	uxth	r3, r3
    276e:	8013      	strh	r3, [r2, #0]
    2770:	4b1c      	ldr	r3, [pc, #112]	; (27e4 <TV_SYNC_handler+0x1f0>)
    2772:	881b      	ldrh	r3, [r3, #0]
    2774:	b29b      	uxth	r3, r3
    2776:	2bf8      	cmp	r3, #248	; 0xf8
    2778:	d1d9      	bne.n	272e <TV_SYNC_handler+0x13a>
    277a:	4a1b      	ldr	r2, [pc, #108]	; (27e8 <TV_SYNC_handler+0x1f4>)
    277c:	8813      	ldrh	r3, [r2, #0]
    277e:	3301      	adds	r3, #1
    2780:	b29b      	uxth	r3, r3
    2782:	8013      	strh	r3, [r2, #0]
    2784:	4a1b      	ldr	r2, [pc, #108]	; (27f4 <TV_SYNC_handler+0x200>)
    2786:	8813      	ldrh	r3, [r2, #0]
    2788:	f023 0304 	bic.w	r3, r3, #4
    278c:	041b      	lsls	r3, r3, #16
    278e:	0c1b      	lsrs	r3, r3, #16
    2790:	8013      	strh	r3, [r2, #0]
    2792:	e7cc      	b.n	272e <TV_SYNC_handler+0x13a>
    2794:	4b13      	ldr	r3, [pc, #76]	; (27e4 <TV_SYNC_handler+0x1f0>)
    2796:	881b      	ldrh	r3, [r3, #0]
    2798:	b29b      	uxth	r3, r3
    279a:	f240 1207 	movw	r2, #263	; 0x107
    279e:	4293      	cmp	r3, r2
    27a0:	d1c5      	bne.n	272e <TV_SYNC_handler+0x13a>
    27a2:	4b14      	ldr	r3, [pc, #80]	; (27f4 <TV_SYNC_handler+0x200>)
    27a4:	881b      	ldrh	r3, [r3, #0]
    27a6:	f013 0f01 	tst.w	r3, #1
    27aa:	d003      	beq.n	27b4 <TV_SYNC_handler+0x1c0>
    27ac:	f640 02e2 	movw	r2, #2274	; 0x8e2
    27b0:	4b0f      	ldr	r3, [pc, #60]	; (27f0 <TV_SYNC_handler+0x1fc>)
    27b2:	62da      	str	r2, [r3, #44]	; 0x2c
    27b4:	4a0f      	ldr	r2, [pc, #60]	; (27f4 <TV_SYNC_handler+0x200>)
    27b6:	8813      	ldrh	r3, [r2, #0]
    27b8:	b29b      	uxth	r3, r3
    27ba:	f083 0301 	eor.w	r3, r3, #1
    27be:	8013      	strh	r3, [r2, #0]
    27c0:	8813      	ldrh	r3, [r2, #0]
    27c2:	b29b      	uxth	r3, r3
    27c4:	f043 0302 	orr.w	r3, r3, #2
    27c8:	8013      	strh	r3, [r2, #0]
    27ca:	2300      	movs	r3, #0
    27cc:	4a05      	ldr	r2, [pc, #20]	; (27e4 <TV_SYNC_handler+0x1f0>)
    27ce:	8013      	strh	r3, [r2, #0]
    27d0:	4a06      	ldr	r2, [pc, #24]	; (27ec <TV_SYNC_handler+0x1f8>)
    27d2:	8013      	strh	r3, [r2, #0]
    27d4:	4a04      	ldr	r2, [pc, #16]	; (27e8 <TV_SYNC_handler+0x1f4>)
    27d6:	8013      	strh	r3, [r2, #0]
    27d8:	4a05      	ldr	r2, [pc, #20]	; (27f0 <TV_SYNC_handler+0x1fc>)
    27da:	68d3      	ldr	r3, [r2, #12]
    27dc:	f023 0304 	bic.w	r3, r3, #4
    27e0:	60d3      	str	r3, [r2, #12]
    27e2:	e7a4      	b.n	272e <TV_SYNC_handler+0x13a>
    27e4:	2000046e 	.word	0x2000046e
    27e8:	20000468 	.word	0x20000468
    27ec:	2000046c 	.word	0x2000046c
    27f0:	40012c00 	.word	0x40012c00
    27f4:	2000046a 	.word	0x2000046a
