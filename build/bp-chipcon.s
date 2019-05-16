
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 15 35 00 00     C...I...O....5..
      20:	15 35 00 00 15 35 00 00 15 35 00 00 55 02 00 00     .5...5...5..U...
      30:	15 35 00 00 15 35 00 00 5b 02 00 00 fd 35 00 00     .5...5..[....5..
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 4d 32 00 00     g...m...y...M2..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 15 35 00 00 15 35 00 00 b5 02 00 00     .....5...5......
      80:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..
      90:	15 35 00 00 15 35 00 00 15 35 00 00 bb 02 00 00     .5...5...5......
      a0:	15 35 00 00 29 3e 00 00 15 35 00 00 2d 3d 00 00     .5..)>...5..-=..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 15 35 00 00     .............5..
      c0:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..
      d0:	15 35 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .5..............
      e0:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..
      f0:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..
     100:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..
     110:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..
     120:	15 35 00 00 15 35 00 00 15 35 00 00 15 35 00 00     .5...5...5...5..

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
     18e:	f002 f8d3 	bl	2338 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000005e 	.word	0x2000005e
     1a0:	20004cb4 	.word	0x20004cb4
     1a4:	00004800 	.word	0x00004800
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
     1dc:	f003 f9a2 	bl	3524 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 f996 	bl	3524 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 f98a 	bl	3524 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 f985 	bl	3524 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00004660 	.word	0x00004660
     230:	00004678 	.word	0x00004678
     234:	00004684 	.word	0x00004684
     238:	00004694 	.word	0x00004694

0000023c <NMI_handler>:
     23c:	f003 f96a 	bl	3514 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 f967 	bl	3514 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 f964 	bl	3514 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 f961 	bl	3514 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 f95e 	bl	3514 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 f95b 	bl	3514 <reset_mcu>
     25e:	bf00      	nop
     260:	f003 f958 	bl	3514 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 f955 	bl	3514 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 f952 	bl	3514 <reset_mcu>
     270:	bf00      	nop
     272:	f003 f94f 	bl	3514 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 f94c 	bl	3514 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 f949 	bl	3514 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 f946 	bl	3514 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 f943 	bl	3514 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 f940 	bl	3514 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 f93d 	bl	3514 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 f93a 	bl	3514 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 f937 	bl	3514 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 f934 	bl	3514 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 f931 	bl	3514 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 f92e 	bl	3514 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 f92b 	bl	3514 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 f928 	bl	3514 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 f925 	bl	3514 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 f922 	bl	3514 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 f91f 	bl	3514 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 f91c 	bl	3514 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 f919 	bl	3514 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 f916 	bl	3514 <reset_mcu>
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
     3c8:	f003 f964 	bl	3694 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 f951 	bl	3674 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fa98 	bl	3908 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fa95 	bl	3908 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fab1 	bl	394e <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 faaa 	bl	394e <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 faa3 	bl	394e <print_int>
     408:	f003 f944 	bl	3694 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fa7b 	bl	3908 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fa98 	bl	394e <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fa72 	bl	3908 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fa8f 	bl	394e <print_int>
     430:	f003 f930 	bl	3694 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 fa67 	bl	3908 <print>
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
     44e:	f003 fa7e 	bl	394e <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 f919 	bl	3694 <new_line>
     462:	f003 fbab 	bl	3bbc <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	00004118 	.word	0x00004118
     474:	20000060 	.word	0x20000060
     478:	0000411c 	.word	0x0000411c
     47c:	00004120 	.word	0x00004120
     480:	00004128 	.word	0x00004128

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
     666:	f001 fb4d 	bl	1d04 <gfx_scroll_down>
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
     68a:	f001 fb09 	bl	1ca0 <gfx_scroll_up>
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
     724:	f003 fa54 	bl	3bd0 <clear_screen>
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
     b1e:	f002 fda9 	bl	3674 <select_font>
     b22:	7bbb      	ldrb	r3, [r7, #14]
     b24:	4a99      	ldr	r2, [pc, #612]	; (d8c <schipp+0x80c>)
     b26:	4413      	add	r3, r2
     b28:	7958      	ldrb	r0, [r3, #5]
     b2a:	7b7b      	ldrb	r3, [r7, #13]
     b2c:	4a97      	ldr	r2, [pc, #604]	; (d8c <schipp+0x80c>)
     b2e:	4413      	add	r3, r2
     b30:	795b      	ldrb	r3, [r3, #5]
     b32:	4619      	mov	r1, r3
     b34:	f002 febc 	bl	38b0 <set_cursor>
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
     b52:	f002 fe21 	bl	3798 <put_char>
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
     cfe:	f001 f8a7 	bl	1e50 <gfx_get_pixel>
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
     e10:	f001 f84c 	bl	1eac <gfx_sprite>
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
     ef0:	f003 f8d4 	bl	409c <btn_wait_any>
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
     f66:	f002 fb85 	bl	3674 <select_font>
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
     f8e:	f002 fb71 	bl	3674 <select_font>
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
    1040:	00004130 	.word	0x00004130
    1044:	00004190 	.word	0x00004190
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
    19fa:	f002 fb79 	bl	40f0 <get_video_params>
    19fe:	6178      	str	r0, [r7, #20]
    1a00:	68fb      	ldr	r3, [r7, #12]
    1a02:	2b00      	cmp	r3, #0
    1a04:	db0e      	blt.n	1a24 <gfx_blit+0x40>
    1a06:	697b      	ldr	r3, [r7, #20]
    1a08:	891b      	ldrh	r3, [r3, #8]
    1a0a:	461a      	mov	r2, r3
    1a0c:	68fb      	ldr	r3, [r7, #12]
    1a0e:	429a      	cmp	r2, r3
    1a10:	dd08      	ble.n	1a24 <gfx_blit+0x40>
    1a12:	68bb      	ldr	r3, [r7, #8]
    1a14:	2b00      	cmp	r3, #0
    1a16:	db05      	blt.n	1a24 <gfx_blit+0x40>
    1a18:	697b      	ldr	r3, [r7, #20]
    1a1a:	895b      	ldrh	r3, [r3, #10]
    1a1c:	461a      	mov	r2, r3
    1a1e:	68bb      	ldr	r3, [r7, #8]
    1a20:	429a      	cmp	r2, r3
    1a22:	dc01      	bgt.n	1a28 <gfx_blit+0x44>
    1a24:	2300      	movs	r3, #0
    1a26:	e04f      	b.n	1ac8 <gfx_blit+0xe4>
    1a28:	697b      	ldr	r3, [r7, #20]
    1a2a:	799b      	ldrb	r3, [r3, #6]
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
    1ae2:	f002 fb05 	bl	40f0 <get_video_params>
    1ae6:	6178      	str	r0, [r7, #20]
    1ae8:	68fb      	ldr	r3, [r7, #12]
    1aea:	2b00      	cmp	r3, #0
    1aec:	db39      	blt.n	1b62 <gfx_plot+0x8e>
    1aee:	697b      	ldr	r3, [r7, #20]
    1af0:	891b      	ldrh	r3, [r3, #8]
    1af2:	461a      	mov	r2, r3
    1af4:	68fb      	ldr	r3, [r7, #12]
    1af6:	429a      	cmp	r2, r3
    1af8:	dd33      	ble.n	1b62 <gfx_plot+0x8e>
    1afa:	68bb      	ldr	r3, [r7, #8]
    1afc:	2b00      	cmp	r3, #0
    1afe:	db30      	blt.n	1b62 <gfx_plot+0x8e>
    1b00:	697b      	ldr	r3, [r7, #20]
    1b02:	895b      	ldrh	r3, [r3, #10]
    1b04:	461a      	mov	r2, r3
    1b06:	68bb      	ldr	r3, [r7, #8]
    1b08:	429a      	cmp	r2, r3
    1b0a:	dd2a      	ble.n	1b62 <gfx_plot+0x8e>
    1b0c:	697b      	ldr	r3, [r7, #20]
    1b0e:	799b      	ldrb	r3, [r3, #6]
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
    1c00:	b480      	push	{r7}
    1c02:	b083      	sub	sp, #12
    1c04:	af00      	add	r7, sp, #0
    1c06:	2300      	movs	r3, #0
    1c08:	607b      	str	r3, [r7, #4]
    1c0a:	e007      	b.n	1c1c <gfx_cls+0x1c>
    1c0c:	4a08      	ldr	r2, [pc, #32]	; (1c30 <gfx_cls+0x30>)
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
    1c26:	bf00      	nop
    1c28:	370c      	adds	r7, #12
    1c2a:	46bd      	mov	sp, r7
    1c2c:	bc80      	pop	{r7}
    1c2e:	4770      	bx	lr
    1c30:	20002554 	.word	0x20002554

00001c34 <move_up>:
    1c34:	b480      	push	{r7}
    1c36:	b085      	sub	sp, #20
    1c38:	af00      	add	r7, sp, #0
    1c3a:	60f8      	str	r0, [r7, #12]
    1c3c:	60b9      	str	r1, [r7, #8]
    1c3e:	607a      	str	r2, [r7, #4]
    1c40:	e009      	b.n	1c56 <move_up+0x22>
    1c42:	68bb      	ldr	r3, [r7, #8]
    1c44:	3b01      	subs	r3, #1
    1c46:	60bb      	str	r3, [r7, #8]
    1c48:	68fb      	ldr	r3, [r7, #12]
    1c4a:	3b01      	subs	r3, #1
    1c4c:	60fb      	str	r3, [r7, #12]
    1c4e:	68fb      	ldr	r3, [r7, #12]
    1c50:	781a      	ldrb	r2, [r3, #0]
    1c52:	68bb      	ldr	r3, [r7, #8]
    1c54:	701a      	strb	r2, [r3, #0]
    1c56:	687b      	ldr	r3, [r7, #4]
    1c58:	1e5a      	subs	r2, r3, #1
    1c5a:	607a      	str	r2, [r7, #4]
    1c5c:	2b00      	cmp	r3, #0
    1c5e:	d1f0      	bne.n	1c42 <move_up+0xe>
    1c60:	68bb      	ldr	r3, [r7, #8]
    1c62:	4618      	mov	r0, r3
    1c64:	3714      	adds	r7, #20
    1c66:	46bd      	mov	sp, r7
    1c68:	bc80      	pop	{r7}
    1c6a:	4770      	bx	lr

00001c6c <move_down>:
    1c6c:	b480      	push	{r7}
    1c6e:	b085      	sub	sp, #20
    1c70:	af00      	add	r7, sp, #0
    1c72:	60f8      	str	r0, [r7, #12]
    1c74:	60b9      	str	r1, [r7, #8]
    1c76:	607a      	str	r2, [r7, #4]
    1c78:	e007      	b.n	1c8a <move_down+0x1e>
    1c7a:	68bb      	ldr	r3, [r7, #8]
    1c7c:	1c5a      	adds	r2, r3, #1
    1c7e:	60ba      	str	r2, [r7, #8]
    1c80:	68fa      	ldr	r2, [r7, #12]
    1c82:	1c51      	adds	r1, r2, #1
    1c84:	60f9      	str	r1, [r7, #12]
    1c86:	7812      	ldrb	r2, [r2, #0]
    1c88:	701a      	strb	r2, [r3, #0]
    1c8a:	687b      	ldr	r3, [r7, #4]
    1c8c:	1e5a      	subs	r2, r3, #1
    1c8e:	607a      	str	r2, [r7, #4]
    1c90:	2b00      	cmp	r3, #0
    1c92:	d1f2      	bne.n	1c7a <move_down+0xe>
    1c94:	68bb      	ldr	r3, [r7, #8]
    1c96:	4618      	mov	r0, r3
    1c98:	3714      	adds	r7, #20
    1c9a:	46bd      	mov	sp, r7
    1c9c:	bc80      	pop	{r7}
    1c9e:	4770      	bx	lr

00001ca0 <gfx_scroll_up>:
    1ca0:	b580      	push	{r7, lr}
    1ca2:	b086      	sub	sp, #24
    1ca4:	af00      	add	r7, sp, #0
    1ca6:	4603      	mov	r3, r0
    1ca8:	71fb      	strb	r3, [r7, #7]
    1caa:	79fb      	ldrb	r3, [r7, #7]
    1cac:	225a      	movs	r2, #90	; 0x5a
    1cae:	fb02 f303 	mul.w	r3, r2, r3
    1cb2:	4a13      	ldr	r2, [pc, #76]	; (1d00 <gfx_scroll_up+0x60>)
    1cb4:	4413      	add	r3, r2
    1cb6:	60fb      	str	r3, [r7, #12]
    1cb8:	4b11      	ldr	r3, [pc, #68]	; (1d00 <gfx_scroll_up+0x60>)
    1cba:	617b      	str	r3, [r7, #20]
    1cbc:	79fb      	ldrb	r3, [r7, #7]
    1cbe:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1cc2:	225a      	movs	r2, #90	; 0x5a
    1cc4:	fb02 f303 	mul.w	r3, r2, r3
    1cc8:	613b      	str	r3, [r7, #16]
    1cca:	693a      	ldr	r2, [r7, #16]
    1ccc:	6979      	ldr	r1, [r7, #20]
    1cce:	68f8      	ldr	r0, [r7, #12]
    1cd0:	f7ff ffcc 	bl	1c6c <move_down>
    1cd4:	6178      	str	r0, [r7, #20]
    1cd6:	79fb      	ldrb	r3, [r7, #7]
    1cd8:	225a      	movs	r2, #90	; 0x5a
    1cda:	fb02 f303 	mul.w	r3, r2, r3
    1cde:	613b      	str	r3, [r7, #16]
    1ce0:	e004      	b.n	1cec <gfx_scroll_up+0x4c>
    1ce2:	697b      	ldr	r3, [r7, #20]
    1ce4:	1c5a      	adds	r2, r3, #1
    1ce6:	617a      	str	r2, [r7, #20]
    1ce8:	2200      	movs	r2, #0
    1cea:	701a      	strb	r2, [r3, #0]
    1cec:	693b      	ldr	r3, [r7, #16]
    1cee:	1e5a      	subs	r2, r3, #1
    1cf0:	613a      	str	r2, [r7, #16]
    1cf2:	2b00      	cmp	r3, #0
    1cf4:	d1f5      	bne.n	1ce2 <gfx_scroll_up+0x42>
    1cf6:	bf00      	nop
    1cf8:	3718      	adds	r7, #24
    1cfa:	46bd      	mov	sp, r7
    1cfc:	bd80      	pop	{r7, pc}
    1cfe:	bf00      	nop
    1d00:	20002554 	.word	0x20002554

00001d04 <gfx_scroll_down>:
    1d04:	b580      	push	{r7, lr}
    1d06:	b086      	sub	sp, #24
    1d08:	af00      	add	r7, sp, #0
    1d0a:	4603      	mov	r3, r0
    1d0c:	71fb      	strb	r3, [r7, #7]
    1d0e:	79fb      	ldrb	r3, [r7, #7]
    1d10:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1d14:	225a      	movs	r2, #90	; 0x5a
    1d16:	fb02 f303 	mul.w	r3, r2, r3
    1d1a:	4a13      	ldr	r2, [pc, #76]	; (1d68 <gfx_scroll_down+0x64>)
    1d1c:	4413      	add	r3, r2
    1d1e:	60fb      	str	r3, [r7, #12]
    1d20:	4b12      	ldr	r3, [pc, #72]	; (1d6c <gfx_scroll_down+0x68>)
    1d22:	617b      	str	r3, [r7, #20]
    1d24:	79fb      	ldrb	r3, [r7, #7]
    1d26:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1d2a:	225a      	movs	r2, #90	; 0x5a
    1d2c:	fb02 f303 	mul.w	r3, r2, r3
    1d30:	613b      	str	r3, [r7, #16]
    1d32:	693a      	ldr	r2, [r7, #16]
    1d34:	6979      	ldr	r1, [r7, #20]
    1d36:	68f8      	ldr	r0, [r7, #12]
    1d38:	f7ff ff7c 	bl	1c34 <move_up>
    1d3c:	6178      	str	r0, [r7, #20]
    1d3e:	79fb      	ldrb	r3, [r7, #7]
    1d40:	225a      	movs	r2, #90	; 0x5a
    1d42:	fb02 f303 	mul.w	r3, r2, r3
    1d46:	613b      	str	r3, [r7, #16]
    1d48:	e005      	b.n	1d56 <gfx_scroll_down+0x52>
    1d4a:	697b      	ldr	r3, [r7, #20]
    1d4c:	3b01      	subs	r3, #1
    1d4e:	617b      	str	r3, [r7, #20]
    1d50:	697b      	ldr	r3, [r7, #20]
    1d52:	2200      	movs	r2, #0
    1d54:	701a      	strb	r2, [r3, #0]
    1d56:	693b      	ldr	r3, [r7, #16]
    1d58:	1e5a      	subs	r2, r3, #1
    1d5a:	613a      	str	r2, [r7, #16]
    1d5c:	2b00      	cmp	r3, #0
    1d5e:	d1f4      	bne.n	1d4a <gfx_scroll_down+0x46>
    1d60:	bf00      	nop
    1d62:	3718      	adds	r7, #24
    1d64:	46bd      	mov	sp, r7
    1d66:	bd80      	pop	{r7, pc}
    1d68:	20002554 	.word	0x20002554
    1d6c:	20004cb4 	.word	0x20004cb4

00001d70 <gfx_scroll_left>:
    1d70:	b580      	push	{r7, lr}
    1d72:	b086      	sub	sp, #24
    1d74:	af00      	add	r7, sp, #0
    1d76:	4603      	mov	r3, r0
    1d78:	71fb      	strb	r3, [r7, #7]
    1d7a:	2300      	movs	r3, #0
    1d7c:	617b      	str	r3, [r7, #20]
    1d7e:	e024      	b.n	1dca <gfx_scroll_left+0x5a>
    1d80:	697b      	ldr	r3, [r7, #20]
    1d82:	225a      	movs	r2, #90	; 0x5a
    1d84:	fb02 f303 	mul.w	r3, r2, r3
    1d88:	4a13      	ldr	r2, [pc, #76]	; (1dd8 <gfx_scroll_left+0x68>)
    1d8a:	4413      	add	r3, r2
    1d8c:	60fb      	str	r3, [r7, #12]
    1d8e:	79fb      	ldrb	r3, [r7, #7]
    1d90:	68fa      	ldr	r2, [r7, #12]
    1d92:	4413      	add	r3, r2
    1d94:	60bb      	str	r3, [r7, #8]
    1d96:	79fb      	ldrb	r3, [r7, #7]
    1d98:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1d9c:	613b      	str	r3, [r7, #16]
    1d9e:	693a      	ldr	r2, [r7, #16]
    1da0:	68f9      	ldr	r1, [r7, #12]
    1da2:	68b8      	ldr	r0, [r7, #8]
    1da4:	f7ff ff62 	bl	1c6c <move_down>
    1da8:	60f8      	str	r0, [r7, #12]
    1daa:	79fb      	ldrb	r3, [r7, #7]
    1dac:	613b      	str	r3, [r7, #16]
    1dae:	e004      	b.n	1dba <gfx_scroll_left+0x4a>
    1db0:	68fb      	ldr	r3, [r7, #12]
    1db2:	1c5a      	adds	r2, r3, #1
    1db4:	60fa      	str	r2, [r7, #12]
    1db6:	2200      	movs	r2, #0
    1db8:	701a      	strb	r2, [r3, #0]
    1dba:	693b      	ldr	r3, [r7, #16]
    1dbc:	1e5a      	subs	r2, r3, #1
    1dbe:	613a      	str	r2, [r7, #16]
    1dc0:	2b00      	cmp	r3, #0
    1dc2:	d1f5      	bne.n	1db0 <gfx_scroll_left+0x40>
    1dc4:	697b      	ldr	r3, [r7, #20]
    1dc6:	3301      	adds	r3, #1
    1dc8:	617b      	str	r3, [r7, #20]
    1dca:	697b      	ldr	r3, [r7, #20]
    1dcc:	2b6f      	cmp	r3, #111	; 0x6f
    1dce:	ddd7      	ble.n	1d80 <gfx_scroll_left+0x10>
    1dd0:	bf00      	nop
    1dd2:	3718      	adds	r7, #24
    1dd4:	46bd      	mov	sp, r7
    1dd6:	bd80      	pop	{r7, pc}
    1dd8:	20002554 	.word	0x20002554

00001ddc <gfx_scroll_right>:
    1ddc:	b580      	push	{r7, lr}
    1dde:	b086      	sub	sp, #24
    1de0:	af00      	add	r7, sp, #0
    1de2:	4603      	mov	r3, r0
    1de4:	71fb      	strb	r3, [r7, #7]
    1de6:	2300      	movs	r3, #0
    1de8:	617b      	str	r3, [r7, #20]
    1dea:	e027      	b.n	1e3c <gfx_scroll_right+0x60>
    1dec:	697b      	ldr	r3, [r7, #20]
    1dee:	225a      	movs	r2, #90	; 0x5a
    1df0:	fb02 f303 	mul.w	r3, r2, r3
    1df4:	4a15      	ldr	r2, [pc, #84]	; (1e4c <gfx_scroll_right+0x70>)
    1df6:	4413      	add	r3, r2
    1df8:	335a      	adds	r3, #90	; 0x5a
    1dfa:	60fb      	str	r3, [r7, #12]
    1dfc:	79fb      	ldrb	r3, [r7, #7]
    1dfe:	425b      	negs	r3, r3
    1e00:	68fa      	ldr	r2, [r7, #12]
    1e02:	4413      	add	r3, r2
    1e04:	60bb      	str	r3, [r7, #8]
    1e06:	79fb      	ldrb	r3, [r7, #7]
    1e08:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1e0c:	613b      	str	r3, [r7, #16]
    1e0e:	693a      	ldr	r2, [r7, #16]
    1e10:	68f9      	ldr	r1, [r7, #12]
    1e12:	68b8      	ldr	r0, [r7, #8]
    1e14:	f7ff ff0e 	bl	1c34 <move_up>
    1e18:	60f8      	str	r0, [r7, #12]
    1e1a:	79fb      	ldrb	r3, [r7, #7]
    1e1c:	613b      	str	r3, [r7, #16]
    1e1e:	e005      	b.n	1e2c <gfx_scroll_right+0x50>
    1e20:	68fb      	ldr	r3, [r7, #12]
    1e22:	3b01      	subs	r3, #1
    1e24:	60fb      	str	r3, [r7, #12]
    1e26:	68fb      	ldr	r3, [r7, #12]
    1e28:	2200      	movs	r2, #0
    1e2a:	701a      	strb	r2, [r3, #0]
    1e2c:	693b      	ldr	r3, [r7, #16]
    1e2e:	1e5a      	subs	r2, r3, #1
    1e30:	613a      	str	r2, [r7, #16]
    1e32:	2b00      	cmp	r3, #0
    1e34:	d1f4      	bne.n	1e20 <gfx_scroll_right+0x44>
    1e36:	697b      	ldr	r3, [r7, #20]
    1e38:	3301      	adds	r3, #1
    1e3a:	617b      	str	r3, [r7, #20]
    1e3c:	697b      	ldr	r3, [r7, #20]
    1e3e:	2b6f      	cmp	r3, #111	; 0x6f
    1e40:	ddd4      	ble.n	1dec <gfx_scroll_right+0x10>
    1e42:	bf00      	nop
    1e44:	3718      	adds	r7, #24
    1e46:	46bd      	mov	sp, r7
    1e48:	bd80      	pop	{r7, pc}
    1e4a:	bf00      	nop
    1e4c:	20002554 	.word	0x20002554

00001e50 <gfx_get_pixel>:
    1e50:	b490      	push	{r4, r7}
    1e52:	b082      	sub	sp, #8
    1e54:	af00      	add	r7, sp, #0
    1e56:	6078      	str	r0, [r7, #4]
    1e58:	6039      	str	r1, [r7, #0]
    1e5a:	687b      	ldr	r3, [r7, #4]
    1e5c:	2b00      	cmp	r3, #0
    1e5e:	db08      	blt.n	1e72 <gfx_get_pixel+0x22>
    1e60:	687b      	ldr	r3, [r7, #4]
    1e62:	2bb3      	cmp	r3, #179	; 0xb3
    1e64:	dc05      	bgt.n	1e72 <gfx_get_pixel+0x22>
    1e66:	683b      	ldr	r3, [r7, #0]
    1e68:	2b00      	cmp	r3, #0
    1e6a:	db02      	blt.n	1e72 <gfx_get_pixel+0x22>
    1e6c:	683b      	ldr	r3, [r7, #0]
    1e6e:	2b6f      	cmp	r3, #111	; 0x6f
    1e70:	dd01      	ble.n	1e76 <gfx_get_pixel+0x26>
    1e72:	23ff      	movs	r3, #255	; 0xff
    1e74:	e012      	b.n	1e9c <gfx_get_pixel+0x4c>
    1e76:	683b      	ldr	r3, [r7, #0]
    1e78:	225a      	movs	r2, #90	; 0x5a
    1e7a:	fb02 f203 	mul.w	r2, r2, r3
    1e7e:	687b      	ldr	r3, [r7, #4]
    1e80:	105b      	asrs	r3, r3, #1
    1e82:	4413      	add	r3, r2
    1e84:	4a08      	ldr	r2, [pc, #32]	; (1ea8 <gfx_get_pixel+0x58>)
    1e86:	5cd4      	ldrb	r4, [r2, r3]
    1e88:	687b      	ldr	r3, [r7, #4]
    1e8a:	f003 0301 	and.w	r3, r3, #1
    1e8e:	2b00      	cmp	r3, #0
    1e90:	d101      	bne.n	1e96 <gfx_get_pixel+0x46>
    1e92:	0923      	lsrs	r3, r4, #4
    1e94:	b2dc      	uxtb	r4, r3
    1e96:	f004 030f 	and.w	r3, r4, #15
    1e9a:	b2db      	uxtb	r3, r3
    1e9c:	4618      	mov	r0, r3
    1e9e:	3708      	adds	r7, #8
    1ea0:	46bd      	mov	sp, r7
    1ea2:	bc90      	pop	{r4, r7}
    1ea4:	4770      	bx	lr
    1ea6:	bf00      	nop
    1ea8:	20002554 	.word	0x20002554

00001eac <gfx_sprite>:
    1eac:	b5f0      	push	{r4, r5, r6, r7, lr}
    1eae:	b087      	sub	sp, #28
    1eb0:	af00      	add	r7, sp, #0
    1eb2:	60f8      	str	r0, [r7, #12]
    1eb4:	60b9      	str	r1, [r7, #8]
    1eb6:	4611      	mov	r1, r2
    1eb8:	461a      	mov	r2, r3
    1eba:	460b      	mov	r3, r1
    1ebc:	71fb      	strb	r3, [r7, #7]
    1ebe:	4613      	mov	r3, r2
    1ec0:	71bb      	strb	r3, [r7, #6]
    1ec2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1ec4:	1c5a      	adds	r2, r3, #1
    1ec6:	633a      	str	r2, [r7, #48]	; 0x30
    1ec8:	781e      	ldrb	r6, [r3, #0]
    1eca:	68bd      	ldr	r5, [r7, #8]
    1ecc:	e01b      	b.n	1f06 <gfx_sprite+0x5a>
    1ece:	68fc      	ldr	r4, [r7, #12]
    1ed0:	e013      	b.n	1efa <gfx_sprite+0x4e>
    1ed2:	0933      	lsrs	r3, r6, #4
    1ed4:	b2da      	uxtb	r2, r3
    1ed6:	2302      	movs	r3, #2
    1ed8:	4629      	mov	r1, r5
    1eda:	4620      	mov	r0, r4
    1edc:	f7ff fd82 	bl	19e4 <gfx_blit>
    1ee0:	3401      	adds	r4, #1
    1ee2:	2302      	movs	r3, #2
    1ee4:	4632      	mov	r2, r6
    1ee6:	4629      	mov	r1, r5
    1ee8:	4620      	mov	r0, r4
    1eea:	f7ff fd7b 	bl	19e4 <gfx_blit>
    1eee:	6178      	str	r0, [r7, #20]
    1ef0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1ef2:	1c5a      	adds	r2, r3, #1
    1ef4:	633a      	str	r2, [r7, #48]	; 0x30
    1ef6:	781e      	ldrb	r6, [r3, #0]
    1ef8:	3401      	adds	r4, #1
    1efa:	79fa      	ldrb	r2, [r7, #7]
    1efc:	68fb      	ldr	r3, [r7, #12]
    1efe:	4413      	add	r3, r2
    1f00:	42a3      	cmp	r3, r4
    1f02:	dce6      	bgt.n	1ed2 <gfx_sprite+0x26>
    1f04:	3501      	adds	r5, #1
    1f06:	79ba      	ldrb	r2, [r7, #6]
    1f08:	68bb      	ldr	r3, [r7, #8]
    1f0a:	4413      	add	r3, r2
    1f0c:	42ab      	cmp	r3, r5
    1f0e:	dcde      	bgt.n	1ece <gfx_sprite+0x22>
    1f10:	697b      	ldr	r3, [r7, #20]
    1f12:	4618      	mov	r0, r3
    1f14:	371c      	adds	r7, #28
    1f16:	46bd      	mov	sp, r7
    1f18:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1f1a:	bf00      	nop

00001f1c <set_sysclock>:
    1f1c:	b480      	push	{r7}
    1f1e:	af00      	add	r7, sp, #0
    1f20:	4a18      	ldr	r2, [pc, #96]	; (1f84 <set_sysclock+0x68>)
    1f22:	4b18      	ldr	r3, [pc, #96]	; (1f84 <set_sysclock+0x68>)
    1f24:	681b      	ldr	r3, [r3, #0]
    1f26:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1f2a:	6013      	str	r3, [r2, #0]
    1f2c:	bf00      	nop
    1f2e:	4b15      	ldr	r3, [pc, #84]	; (1f84 <set_sysclock+0x68>)
    1f30:	681b      	ldr	r3, [r3, #0]
    1f32:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    1f36:	2b00      	cmp	r3, #0
    1f38:	d0f9      	beq.n	1f2e <set_sysclock+0x12>
    1f3a:	4a12      	ldr	r2, [pc, #72]	; (1f84 <set_sysclock+0x68>)
    1f3c:	4b11      	ldr	r3, [pc, #68]	; (1f84 <set_sysclock+0x68>)
    1f3e:	685b      	ldr	r3, [r3, #4]
    1f40:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1f44:	6053      	str	r3, [r2, #4]
    1f46:	4a0f      	ldr	r2, [pc, #60]	; (1f84 <set_sysclock+0x68>)
    1f48:	4b0e      	ldr	r3, [pc, #56]	; (1f84 <set_sysclock+0x68>)
    1f4a:	681b      	ldr	r3, [r3, #0]
    1f4c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1f50:	6013      	str	r3, [r2, #0]
    1f52:	bf00      	nop
    1f54:	4b0b      	ldr	r3, [pc, #44]	; (1f84 <set_sysclock+0x68>)
    1f56:	681b      	ldr	r3, [r3, #0]
    1f58:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    1f5c:	2b00      	cmp	r3, #0
    1f5e:	d0f9      	beq.n	1f54 <set_sysclock+0x38>
    1f60:	4a09      	ldr	r2, [pc, #36]	; (1f88 <set_sysclock+0x6c>)
    1f62:	4b09      	ldr	r3, [pc, #36]	; (1f88 <set_sysclock+0x6c>)
    1f64:	681b      	ldr	r3, [r3, #0]
    1f66:	f043 0312 	orr.w	r3, r3, #18
    1f6a:	6013      	str	r3, [r2, #0]
    1f6c:	4a05      	ldr	r2, [pc, #20]	; (1f84 <set_sysclock+0x68>)
    1f6e:	4b05      	ldr	r3, [pc, #20]	; (1f84 <set_sysclock+0x68>)
    1f70:	685b      	ldr	r3, [r3, #4]
    1f72:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1f76:	f043 0302 	orr.w	r3, r3, #2
    1f7a:	6053      	str	r3, [r2, #4]
    1f7c:	bf00      	nop
    1f7e:	46bd      	mov	sp, r7
    1f80:	bc80      	pop	{r7}
    1f82:	4770      	bx	lr
    1f84:	40021000 	.word	0x40021000
    1f88:	40022000 	.word	0x40022000

00001f8c <draw_balls>:
    1f8c:	b590      	push	{r4, r7, lr}
    1f8e:	b085      	sub	sp, #20
    1f90:	af02      	add	r7, sp, #8
    1f92:	f002 f873 	bl	407c <frame_sync>
    1f96:	2300      	movs	r3, #0
    1f98:	607b      	str	r3, [r7, #4]
    1f9a:	e022      	b.n	1fe2 <draw_balls+0x56>
    1f9c:	4914      	ldr	r1, [pc, #80]	; (1ff0 <draw_balls+0x64>)
    1f9e:	687a      	ldr	r2, [r7, #4]
    1fa0:	4613      	mov	r3, r2
    1fa2:	009b      	lsls	r3, r3, #2
    1fa4:	4413      	add	r3, r2
    1fa6:	009b      	lsls	r3, r3, #2
    1fa8:	440b      	add	r3, r1
    1faa:	6818      	ldr	r0, [r3, #0]
    1fac:	4910      	ldr	r1, [pc, #64]	; (1ff0 <draw_balls+0x64>)
    1fae:	687a      	ldr	r2, [r7, #4]
    1fb0:	4613      	mov	r3, r2
    1fb2:	009b      	lsls	r3, r3, #2
    1fb4:	4413      	add	r3, r2
    1fb6:	009b      	lsls	r3, r3, #2
    1fb8:	440b      	add	r3, r1
    1fba:	3304      	adds	r3, #4
    1fbc:	681c      	ldr	r4, [r3, #0]
    1fbe:	490c      	ldr	r1, [pc, #48]	; (1ff0 <draw_balls+0x64>)
    1fc0:	687a      	ldr	r2, [r7, #4]
    1fc2:	4613      	mov	r3, r2
    1fc4:	009b      	lsls	r3, r3, #2
    1fc6:	4413      	add	r3, r2
    1fc8:	009b      	lsls	r3, r3, #2
    1fca:	440b      	add	r3, r1
    1fcc:	3310      	adds	r3, #16
    1fce:	681b      	ldr	r3, [r3, #0]
    1fd0:	9300      	str	r3, [sp, #0]
    1fd2:	2308      	movs	r3, #8
    1fd4:	2208      	movs	r2, #8
    1fd6:	4621      	mov	r1, r4
    1fd8:	f7ff ff68 	bl	1eac <gfx_sprite>
    1fdc:	687b      	ldr	r3, [r7, #4]
    1fde:	3301      	adds	r3, #1
    1fe0:	607b      	str	r3, [r7, #4]
    1fe2:	687b      	ldr	r3, [r7, #4]
    1fe4:	2b03      	cmp	r3, #3
    1fe6:	ddd9      	ble.n	1f9c <draw_balls+0x10>
    1fe8:	bf00      	nop
    1fea:	370c      	adds	r7, #12
    1fec:	46bd      	mov	sp, r7
    1fee:	bd90      	pop	{r4, r7, pc}
    1ff0:	20002500 	.word	0x20002500

00001ff4 <isqrt>:
    1ff4:	b580      	push	{r7, lr}
    1ff6:	b084      	sub	sp, #16
    1ff8:	af00      	add	r7, sp, #0
    1ffa:	6078      	str	r0, [r7, #4]
    1ffc:	687b      	ldr	r3, [r7, #4]
    1ffe:	2b01      	cmp	r3, #1
    2000:	dc01      	bgt.n	2006 <isqrt+0x12>
    2002:	687b      	ldr	r3, [r7, #4]
    2004:	e014      	b.n	2030 <isqrt+0x3c>
    2006:	687b      	ldr	r3, [r7, #4]
    2008:	109b      	asrs	r3, r3, #2
    200a:	4618      	mov	r0, r3
    200c:	f7ff fff2 	bl	1ff4 <isqrt>
    2010:	4603      	mov	r3, r0
    2012:	005b      	lsls	r3, r3, #1
    2014:	60fb      	str	r3, [r7, #12]
    2016:	68fb      	ldr	r3, [r7, #12]
    2018:	3301      	adds	r3, #1
    201a:	60bb      	str	r3, [r7, #8]
    201c:	68bb      	ldr	r3, [r7, #8]
    201e:	68ba      	ldr	r2, [r7, #8]
    2020:	fb02 f203 	mul.w	r2, r2, r3
    2024:	687b      	ldr	r3, [r7, #4]
    2026:	429a      	cmp	r2, r3
    2028:	dd01      	ble.n	202e <isqrt+0x3a>
    202a:	68fb      	ldr	r3, [r7, #12]
    202c:	e000      	b.n	2030 <isqrt+0x3c>
    202e:	68bb      	ldr	r3, [r7, #8]
    2030:	4618      	mov	r0, r3
    2032:	3710      	adds	r7, #16
    2034:	46bd      	mov	sp, r7
    2036:	bd80      	pop	{r7, pc}

00002038 <distance>:
    2038:	b580      	push	{r7, lr}
    203a:	b082      	sub	sp, #8
    203c:	af00      	add	r7, sp, #0
    203e:	6078      	str	r0, [r7, #4]
    2040:	6039      	str	r1, [r7, #0]
    2042:	687b      	ldr	r3, [r7, #4]
    2044:	681b      	ldr	r3, [r3, #0]
    2046:	683a      	ldr	r2, [r7, #0]
    2048:	6812      	ldr	r2, [r2, #0]
    204a:	fb02 f203 	mul.w	r2, r2, r3
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	685b      	ldr	r3, [r3, #4]
    2052:	6839      	ldr	r1, [r7, #0]
    2054:	6849      	ldr	r1, [r1, #4]
    2056:	fb01 f303 	mul.w	r3, r1, r3
    205a:	4413      	add	r3, r2
    205c:	2b00      	cmp	r3, #0
    205e:	bfb8      	it	lt
    2060:	425b      	neglt	r3, r3
    2062:	4618      	mov	r0, r3
    2064:	f7ff ffc6 	bl	1ff4 <isqrt>
    2068:	4603      	mov	r3, r0
    206a:	4618      	mov	r0, r3
    206c:	3708      	adds	r7, #8
    206e:	46bd      	mov	sp, r7
    2070:	bd80      	pop	{r7, pc}

00002072 <move_balls>:
    2072:	b580      	push	{r7, lr}
    2074:	b082      	sub	sp, #8
    2076:	af00      	add	r7, sp, #0
    2078:	f002 f83a 	bl	40f0 <get_video_params>
    207c:	6038      	str	r0, [r7, #0]
    207e:	2300      	movs	r3, #0
    2080:	607b      	str	r3, [r7, #4]
    2082:	e0c4      	b.n	220e <move_balls+0x19c>
    2084:	4979      	ldr	r1, [pc, #484]	; (226c <move_balls+0x1fa>)
    2086:	687a      	ldr	r2, [r7, #4]
    2088:	4613      	mov	r3, r2
    208a:	009b      	lsls	r3, r3, #2
    208c:	4413      	add	r3, r2
    208e:	009b      	lsls	r3, r3, #2
    2090:	440b      	add	r3, r1
    2092:	6819      	ldr	r1, [r3, #0]
    2094:	4875      	ldr	r0, [pc, #468]	; (226c <move_balls+0x1fa>)
    2096:	687a      	ldr	r2, [r7, #4]
    2098:	4613      	mov	r3, r2
    209a:	009b      	lsls	r3, r3, #2
    209c:	4413      	add	r3, r2
    209e:	009b      	lsls	r3, r3, #2
    20a0:	4403      	add	r3, r0
    20a2:	3308      	adds	r3, #8
    20a4:	681b      	ldr	r3, [r3, #0]
    20a6:	4419      	add	r1, r3
    20a8:	4870      	ldr	r0, [pc, #448]	; (226c <move_balls+0x1fa>)
    20aa:	687a      	ldr	r2, [r7, #4]
    20ac:	4613      	mov	r3, r2
    20ae:	009b      	lsls	r3, r3, #2
    20b0:	4413      	add	r3, r2
    20b2:	009b      	lsls	r3, r3, #2
    20b4:	4403      	add	r3, r0
    20b6:	6019      	str	r1, [r3, #0]
    20b8:	496c      	ldr	r1, [pc, #432]	; (226c <move_balls+0x1fa>)
    20ba:	687a      	ldr	r2, [r7, #4]
    20bc:	4613      	mov	r3, r2
    20be:	009b      	lsls	r3, r3, #2
    20c0:	4413      	add	r3, r2
    20c2:	009b      	lsls	r3, r3, #2
    20c4:	440b      	add	r3, r1
    20c6:	681b      	ldr	r3, [r3, #0]
    20c8:	f113 0f07 	cmn.w	r3, #7
    20cc:	db0b      	blt.n	20e6 <move_balls+0x74>
    20ce:	4967      	ldr	r1, [pc, #412]	; (226c <move_balls+0x1fa>)
    20d0:	687a      	ldr	r2, [r7, #4]
    20d2:	4613      	mov	r3, r2
    20d4:	009b      	lsls	r3, r3, #2
    20d6:	4413      	add	r3, r2
    20d8:	009b      	lsls	r3, r3, #2
    20da:	440b      	add	r3, r1
    20dc:	681b      	ldr	r3, [r3, #0]
    20de:	683a      	ldr	r2, [r7, #0]
    20e0:	8912      	ldrh	r2, [r2, #8]
    20e2:	4293      	cmp	r3, r2
    20e4:	db2c      	blt.n	2140 <move_balls+0xce>
    20e6:	4961      	ldr	r1, [pc, #388]	; (226c <move_balls+0x1fa>)
    20e8:	687a      	ldr	r2, [r7, #4]
    20ea:	4613      	mov	r3, r2
    20ec:	009b      	lsls	r3, r3, #2
    20ee:	4413      	add	r3, r2
    20f0:	009b      	lsls	r3, r3, #2
    20f2:	440b      	add	r3, r1
    20f4:	3308      	adds	r3, #8
    20f6:	681b      	ldr	r3, [r3, #0]
    20f8:	4259      	negs	r1, r3
    20fa:	485c      	ldr	r0, [pc, #368]	; (226c <move_balls+0x1fa>)
    20fc:	687a      	ldr	r2, [r7, #4]
    20fe:	4613      	mov	r3, r2
    2100:	009b      	lsls	r3, r3, #2
    2102:	4413      	add	r3, r2
    2104:	009b      	lsls	r3, r3, #2
    2106:	4403      	add	r3, r0
    2108:	3308      	adds	r3, #8
    210a:	6019      	str	r1, [r3, #0]
    210c:	4957      	ldr	r1, [pc, #348]	; (226c <move_balls+0x1fa>)
    210e:	687a      	ldr	r2, [r7, #4]
    2110:	4613      	mov	r3, r2
    2112:	009b      	lsls	r3, r3, #2
    2114:	4413      	add	r3, r2
    2116:	009b      	lsls	r3, r3, #2
    2118:	440b      	add	r3, r1
    211a:	6819      	ldr	r1, [r3, #0]
    211c:	4853      	ldr	r0, [pc, #332]	; (226c <move_balls+0x1fa>)
    211e:	687a      	ldr	r2, [r7, #4]
    2120:	4613      	mov	r3, r2
    2122:	009b      	lsls	r3, r3, #2
    2124:	4413      	add	r3, r2
    2126:	009b      	lsls	r3, r3, #2
    2128:	4403      	add	r3, r0
    212a:	3308      	adds	r3, #8
    212c:	681b      	ldr	r3, [r3, #0]
    212e:	4419      	add	r1, r3
    2130:	484e      	ldr	r0, [pc, #312]	; (226c <move_balls+0x1fa>)
    2132:	687a      	ldr	r2, [r7, #4]
    2134:	4613      	mov	r3, r2
    2136:	009b      	lsls	r3, r3, #2
    2138:	4413      	add	r3, r2
    213a:	009b      	lsls	r3, r3, #2
    213c:	4403      	add	r3, r0
    213e:	6019      	str	r1, [r3, #0]
    2140:	494a      	ldr	r1, [pc, #296]	; (226c <move_balls+0x1fa>)
    2142:	687a      	ldr	r2, [r7, #4]
    2144:	4613      	mov	r3, r2
    2146:	009b      	lsls	r3, r3, #2
    2148:	4413      	add	r3, r2
    214a:	009b      	lsls	r3, r3, #2
    214c:	440b      	add	r3, r1
    214e:	3304      	adds	r3, #4
    2150:	6819      	ldr	r1, [r3, #0]
    2152:	4846      	ldr	r0, [pc, #280]	; (226c <move_balls+0x1fa>)
    2154:	687a      	ldr	r2, [r7, #4]
    2156:	4613      	mov	r3, r2
    2158:	009b      	lsls	r3, r3, #2
    215a:	4413      	add	r3, r2
    215c:	009b      	lsls	r3, r3, #2
    215e:	4403      	add	r3, r0
    2160:	330c      	adds	r3, #12
    2162:	681b      	ldr	r3, [r3, #0]
    2164:	4419      	add	r1, r3
    2166:	4841      	ldr	r0, [pc, #260]	; (226c <move_balls+0x1fa>)
    2168:	687a      	ldr	r2, [r7, #4]
    216a:	4613      	mov	r3, r2
    216c:	009b      	lsls	r3, r3, #2
    216e:	4413      	add	r3, r2
    2170:	009b      	lsls	r3, r3, #2
    2172:	4403      	add	r3, r0
    2174:	3304      	adds	r3, #4
    2176:	6019      	str	r1, [r3, #0]
    2178:	493c      	ldr	r1, [pc, #240]	; (226c <move_balls+0x1fa>)
    217a:	687a      	ldr	r2, [r7, #4]
    217c:	4613      	mov	r3, r2
    217e:	009b      	lsls	r3, r3, #2
    2180:	4413      	add	r3, r2
    2182:	009b      	lsls	r3, r3, #2
    2184:	440b      	add	r3, r1
    2186:	3304      	adds	r3, #4
    2188:	681b      	ldr	r3, [r3, #0]
    218a:	f113 0f07 	cmn.w	r3, #7
    218e:	db0c      	blt.n	21aa <move_balls+0x138>
    2190:	4936      	ldr	r1, [pc, #216]	; (226c <move_balls+0x1fa>)
    2192:	687a      	ldr	r2, [r7, #4]
    2194:	4613      	mov	r3, r2
    2196:	009b      	lsls	r3, r3, #2
    2198:	4413      	add	r3, r2
    219a:	009b      	lsls	r3, r3, #2
    219c:	440b      	add	r3, r1
    219e:	3304      	adds	r3, #4
    21a0:	681b      	ldr	r3, [r3, #0]
    21a2:	683a      	ldr	r2, [r7, #0]
    21a4:	8952      	ldrh	r2, [r2, #10]
    21a6:	4293      	cmp	r3, r2
    21a8:	db2e      	blt.n	2208 <move_balls+0x196>
    21aa:	4930      	ldr	r1, [pc, #192]	; (226c <move_balls+0x1fa>)
    21ac:	687a      	ldr	r2, [r7, #4]
    21ae:	4613      	mov	r3, r2
    21b0:	009b      	lsls	r3, r3, #2
    21b2:	4413      	add	r3, r2
    21b4:	009b      	lsls	r3, r3, #2
    21b6:	440b      	add	r3, r1
    21b8:	330c      	adds	r3, #12
    21ba:	681b      	ldr	r3, [r3, #0]
    21bc:	4259      	negs	r1, r3
    21be:	482b      	ldr	r0, [pc, #172]	; (226c <move_balls+0x1fa>)
    21c0:	687a      	ldr	r2, [r7, #4]
    21c2:	4613      	mov	r3, r2
    21c4:	009b      	lsls	r3, r3, #2
    21c6:	4413      	add	r3, r2
    21c8:	009b      	lsls	r3, r3, #2
    21ca:	4403      	add	r3, r0
    21cc:	330c      	adds	r3, #12
    21ce:	6019      	str	r1, [r3, #0]
    21d0:	4926      	ldr	r1, [pc, #152]	; (226c <move_balls+0x1fa>)
    21d2:	687a      	ldr	r2, [r7, #4]
    21d4:	4613      	mov	r3, r2
    21d6:	009b      	lsls	r3, r3, #2
    21d8:	4413      	add	r3, r2
    21da:	009b      	lsls	r3, r3, #2
    21dc:	440b      	add	r3, r1
    21de:	3304      	adds	r3, #4
    21e0:	6819      	ldr	r1, [r3, #0]
    21e2:	4822      	ldr	r0, [pc, #136]	; (226c <move_balls+0x1fa>)
    21e4:	687a      	ldr	r2, [r7, #4]
    21e6:	4613      	mov	r3, r2
    21e8:	009b      	lsls	r3, r3, #2
    21ea:	4413      	add	r3, r2
    21ec:	009b      	lsls	r3, r3, #2
    21ee:	4403      	add	r3, r0
    21f0:	330c      	adds	r3, #12
    21f2:	681b      	ldr	r3, [r3, #0]
    21f4:	4419      	add	r1, r3
    21f6:	481d      	ldr	r0, [pc, #116]	; (226c <move_balls+0x1fa>)
    21f8:	687a      	ldr	r2, [r7, #4]
    21fa:	4613      	mov	r3, r2
    21fc:	009b      	lsls	r3, r3, #2
    21fe:	4413      	add	r3, r2
    2200:	009b      	lsls	r3, r3, #2
    2202:	4403      	add	r3, r0
    2204:	3304      	adds	r3, #4
    2206:	6019      	str	r1, [r3, #0]
    2208:	687b      	ldr	r3, [r7, #4]
    220a:	3301      	adds	r3, #1
    220c:	607b      	str	r3, [r7, #4]
    220e:	687b      	ldr	r3, [r7, #4]
    2210:	2b03      	cmp	r3, #3
    2212:	f77f af37 	ble.w	2084 <move_balls+0x12>
    2216:	4916      	ldr	r1, [pc, #88]	; (2270 <move_balls+0x1fe>)
    2218:	4814      	ldr	r0, [pc, #80]	; (226c <move_balls+0x1fa>)
    221a:	f7ff ff0d 	bl	2038 <distance>
    221e:	4603      	mov	r3, r0
    2220:	2b07      	cmp	r3, #7
    2222:	d81f      	bhi.n	2264 <move_balls+0x1f2>
    2224:	4b11      	ldr	r3, [pc, #68]	; (226c <move_balls+0x1fa>)
    2226:	689a      	ldr	r2, [r3, #8]
    2228:	4b10      	ldr	r3, [pc, #64]	; (226c <move_balls+0x1fa>)
    222a:	69db      	ldr	r3, [r3, #28]
    222c:	429a      	cmp	r2, r3
    222e:	d009      	beq.n	2244 <move_balls+0x1d2>
    2230:	4b0e      	ldr	r3, [pc, #56]	; (226c <move_balls+0x1fa>)
    2232:	689b      	ldr	r3, [r3, #8]
    2234:	607b      	str	r3, [r7, #4]
    2236:	4b0d      	ldr	r3, [pc, #52]	; (226c <move_balls+0x1fa>)
    2238:	69db      	ldr	r3, [r3, #28]
    223a:	4a0c      	ldr	r2, [pc, #48]	; (226c <move_balls+0x1fa>)
    223c:	6093      	str	r3, [r2, #8]
    223e:	4a0b      	ldr	r2, [pc, #44]	; (226c <move_balls+0x1fa>)
    2240:	687b      	ldr	r3, [r7, #4]
    2242:	61d3      	str	r3, [r2, #28]
    2244:	4b09      	ldr	r3, [pc, #36]	; (226c <move_balls+0x1fa>)
    2246:	68da      	ldr	r2, [r3, #12]
    2248:	4b08      	ldr	r3, [pc, #32]	; (226c <move_balls+0x1fa>)
    224a:	6a1b      	ldr	r3, [r3, #32]
    224c:	429a      	cmp	r2, r3
    224e:	d009      	beq.n	2264 <move_balls+0x1f2>
    2250:	4b06      	ldr	r3, [pc, #24]	; (226c <move_balls+0x1fa>)
    2252:	68db      	ldr	r3, [r3, #12]
    2254:	607b      	str	r3, [r7, #4]
    2256:	4b05      	ldr	r3, [pc, #20]	; (226c <move_balls+0x1fa>)
    2258:	6a1b      	ldr	r3, [r3, #32]
    225a:	4a04      	ldr	r2, [pc, #16]	; (226c <move_balls+0x1fa>)
    225c:	60d3      	str	r3, [r2, #12]
    225e:	4a03      	ldr	r2, [pc, #12]	; (226c <move_balls+0x1fa>)
    2260:	687b      	ldr	r3, [r7, #4]
    2262:	6213      	str	r3, [r2, #32]
    2264:	bf00      	nop
    2266:	3708      	adds	r7, #8
    2268:	46bd      	mov	sp, r7
    226a:	bd80      	pop	{r7, pc}
    226c:	20002500 	.word	0x20002500
    2270:	20002514 	.word	0x20002514

00002274 <init_balls>:
    2274:	b580      	push	{r7, lr}
    2276:	b082      	sub	sp, #8
    2278:	af00      	add	r7, sp, #0
    227a:	f001 ff39 	bl	40f0 <get_video_params>
    227e:	6038      	str	r0, [r7, #0]
    2280:	4b2a      	ldr	r3, [pc, #168]	; (232c <init_balls+0xb8>)
    2282:	681b      	ldr	r3, [r3, #0]
    2284:	4618      	mov	r0, r3
    2286:	f7fe f94a 	bl	51e <srand>
    228a:	2300      	movs	r3, #0
    228c:	607b      	str	r3, [r7, #4]
    228e:	e045      	b.n	231c <init_balls+0xa8>
    2290:	f7fe f954 	bl	53c <rand>
    2294:	4603      	mov	r3, r0
    2296:	683a      	ldr	r2, [r7, #0]
    2298:	8912      	ldrh	r2, [r2, #8]
    229a:	fb93 f1f2 	sdiv	r1, r3, r2
    229e:	fb02 f201 	mul.w	r2, r2, r1
    22a2:	1a99      	subs	r1, r3, r2
    22a4:	4822      	ldr	r0, [pc, #136]	; (2330 <init_balls+0xbc>)
    22a6:	687a      	ldr	r2, [r7, #4]
    22a8:	4613      	mov	r3, r2
    22aa:	009b      	lsls	r3, r3, #2
    22ac:	4413      	add	r3, r2
    22ae:	009b      	lsls	r3, r3, #2
    22b0:	4403      	add	r3, r0
    22b2:	6019      	str	r1, [r3, #0]
    22b4:	f7fe f942 	bl	53c <rand>
    22b8:	4603      	mov	r3, r0
    22ba:	683a      	ldr	r2, [r7, #0]
    22bc:	8952      	ldrh	r2, [r2, #10]
    22be:	fb93 f1f2 	sdiv	r1, r3, r2
    22c2:	fb02 f201 	mul.w	r2, r2, r1
    22c6:	1a99      	subs	r1, r3, r2
    22c8:	4819      	ldr	r0, [pc, #100]	; (2330 <init_balls+0xbc>)
    22ca:	687a      	ldr	r2, [r7, #4]
    22cc:	4613      	mov	r3, r2
    22ce:	009b      	lsls	r3, r3, #2
    22d0:	4413      	add	r3, r2
    22d2:	009b      	lsls	r3, r3, #2
    22d4:	4403      	add	r3, r0
    22d6:	3304      	adds	r3, #4
    22d8:	6019      	str	r1, [r3, #0]
    22da:	4915      	ldr	r1, [pc, #84]	; (2330 <init_balls+0xbc>)
    22dc:	687a      	ldr	r2, [r7, #4]
    22de:	4613      	mov	r3, r2
    22e0:	009b      	lsls	r3, r3, #2
    22e2:	4413      	add	r3, r2
    22e4:	009b      	lsls	r3, r3, #2
    22e6:	440b      	add	r3, r1
    22e8:	3308      	adds	r3, #8
    22ea:	2201      	movs	r2, #1
    22ec:	601a      	str	r2, [r3, #0]
    22ee:	4910      	ldr	r1, [pc, #64]	; (2330 <init_balls+0xbc>)
    22f0:	687a      	ldr	r2, [r7, #4]
    22f2:	4613      	mov	r3, r2
    22f4:	009b      	lsls	r3, r3, #2
    22f6:	4413      	add	r3, r2
    22f8:	009b      	lsls	r3, r3, #2
    22fa:	440b      	add	r3, r1
    22fc:	330c      	adds	r3, #12
    22fe:	2201      	movs	r2, #1
    2300:	601a      	str	r2, [r3, #0]
    2302:	490b      	ldr	r1, [pc, #44]	; (2330 <init_balls+0xbc>)
    2304:	687a      	ldr	r2, [r7, #4]
    2306:	4613      	mov	r3, r2
    2308:	009b      	lsls	r3, r3, #2
    230a:	4413      	add	r3, r2
    230c:	009b      	lsls	r3, r3, #2
    230e:	440b      	add	r3, r1
    2310:	3310      	adds	r3, #16
    2312:	4a08      	ldr	r2, [pc, #32]	; (2334 <init_balls+0xc0>)
    2314:	601a      	str	r2, [r3, #0]
    2316:	687b      	ldr	r3, [r7, #4]
    2318:	3301      	adds	r3, #1
    231a:	607b      	str	r3, [r7, #4]
    231c:	687b      	ldr	r3, [r7, #4]
    231e:	2b03      	cmp	r3, #3
    2320:	ddb6      	ble.n	2290 <init_balls+0x1c>
    2322:	bf00      	nop
    2324:	3708      	adds	r7, #8
    2326:	46bd      	mov	sp, r7
    2328:	bd80      	pop	{r7, pc}
    232a:	bf00      	nop
    232c:	200004ec 	.word	0x200004ec
    2330:	20002500 	.word	0x20002500
    2334:	00004558 	.word	0x00004558

00002338 <main>:
    2338:	b580      	push	{r7, lr}
    233a:	b086      	sub	sp, #24
    233c:	af00      	add	r7, sp, #0
    233e:	f7ff fded 	bl	1f1c <set_sysclock>
    2342:	f001 f933 	bl	35ac <config_systicks>
    2346:	4b33      	ldr	r3, [pc, #204]	; (2414 <main+0xdc>)
    2348:	f640 021d 	movw	r2, #2077	; 0x81d
    234c:	619a      	str	r2, [r3, #24]
    234e:	2206      	movs	r2, #6
    2350:	210d      	movs	r1, #13
    2352:	4831      	ldr	r0, [pc, #196]	; (2418 <main+0xe0>)
    2354:	f7ff facf 	bl	18f6 <config_pin>
    2358:	4a2f      	ldr	r2, [pc, #188]	; (2418 <main+0xe0>)
    235a:	4b2f      	ldr	r3, [pc, #188]	; (2418 <main+0xe0>)
    235c:	68db      	ldr	r3, [r3, #12]
    235e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    2362:	60d3      	str	r3, [r2, #12]
    2364:	f001 fc44 	bl	3bf0 <tvout_init>
    2368:	f7ff fc4a 	bl	1c00 <gfx_cls>
    236c:	2303      	movs	r3, #3
    236e:	73bb      	strb	r3, [r7, #14]
    2370:	f001 febe 	bl	40f0 <get_video_params>
    2374:	60b8      	str	r0, [r7, #8]
    2376:	68bb      	ldr	r3, [r7, #8]
    2378:	895b      	ldrh	r3, [r3, #10]
    237a:	089b      	lsrs	r3, r3, #2
    237c:	b29b      	uxth	r3, r3
    237e:	461a      	mov	r2, r3
    2380:	4613      	mov	r3, r2
    2382:	005b      	lsls	r3, r3, #1
    2384:	4413      	add	r3, r2
    2386:	613b      	str	r3, [r7, #16]
    2388:	e01b      	b.n	23c2 <main+0x8a>
    238a:	2310      	movs	r3, #16
    238c:	73fb      	strb	r3, [r7, #15]
    238e:	2300      	movs	r3, #0
    2390:	617b      	str	r3, [r7, #20]
    2392:	e010      	b.n	23b6 <main+0x7e>
    2394:	697b      	ldr	r3, [r7, #20]
    2396:	f003 0307 	and.w	r3, r3, #7
    239a:	2b00      	cmp	r3, #0
    239c:	d102      	bne.n	23a4 <main+0x6c>
    239e:	7bfb      	ldrb	r3, [r7, #15]
    23a0:	3b01      	subs	r3, #1
    23a2:	73fb      	strb	r3, [r7, #15]
    23a4:	7bfb      	ldrb	r3, [r7, #15]
    23a6:	461a      	mov	r2, r3
    23a8:	6939      	ldr	r1, [r7, #16]
    23aa:	6978      	ldr	r0, [r7, #20]
    23ac:	f7ff fb92 	bl	1ad4 <gfx_plot>
    23b0:	697b      	ldr	r3, [r7, #20]
    23b2:	3301      	adds	r3, #1
    23b4:	617b      	str	r3, [r7, #20]
    23b6:	697b      	ldr	r3, [r7, #20]
    23b8:	2b7f      	cmp	r3, #127	; 0x7f
    23ba:	ddeb      	ble.n	2394 <main+0x5c>
    23bc:	693b      	ldr	r3, [r7, #16]
    23be:	3301      	adds	r3, #1
    23c0:	613b      	str	r3, [r7, #16]
    23c2:	68bb      	ldr	r3, [r7, #8]
    23c4:	895b      	ldrh	r3, [r3, #10]
    23c6:	461a      	mov	r2, r3
    23c8:	693b      	ldr	r3, [r7, #16]
    23ca:	429a      	cmp	r2, r3
    23cc:	dcdd      	bgt.n	238a <main+0x52>
    23ce:	4b13      	ldr	r3, [pc, #76]	; (241c <main+0xe4>)
    23d0:	210a      	movs	r1, #10
    23d2:	4618      	mov	r0, r3
    23d4:	f001 fabb 	bl	394e <print_int>
    23d8:	4b11      	ldr	r3, [pc, #68]	; (2420 <main+0xe8>)
    23da:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    23de:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    23e2:	210a      	movs	r1, #10
    23e4:	4618      	mov	r0, r3
    23e6:	f001 fab2 	bl	394e <print_int>
    23ea:	f7ff ff43 	bl	2274 <init_balls>
    23ee:	f7ff fdcd 	bl	1f8c <draw_balls>
    23f2:	4b0c      	ldr	r3, [pc, #48]	; (2424 <main+0xec>)
    23f4:	681b      	ldr	r3, [r3, #0]
    23f6:	330a      	adds	r3, #10
    23f8:	607b      	str	r3, [r7, #4]
    23fa:	bf00      	nop
    23fc:	4b09      	ldr	r3, [pc, #36]	; (2424 <main+0xec>)
    23fe:	681a      	ldr	r2, [r3, #0]
    2400:	687b      	ldr	r3, [r7, #4]
    2402:	429a      	cmp	r2, r3
    2404:	d3fa      	bcc.n	23fc <main+0xc4>
    2406:	f7ff fdc1 	bl	1f8c <draw_balls>
    240a:	f7ff fe32 	bl	2072 <move_balls>
    240e:	4b06      	ldr	r3, [pc, #24]	; (2428 <main+0xf0>)
    2410:	881b      	ldrh	r3, [r3, #0]
    2412:	e7ec      	b.n	23ee <main+0xb6>
    2414:	40021000 	.word	0x40021000
    2418:	40011000 	.word	0x40011000
    241c:	00004800 	.word	0x00004800
    2420:	20004cc0 	.word	0x20004cc0
    2424:	200004ec 	.word	0x200004ec
    2428:	20002550 	.word	0x20002550

0000242c <enable_interrupt>:
    242c:	b480      	push	{r7}
    242e:	b083      	sub	sp, #12
    2430:	af00      	add	r7, sp, #0
    2432:	6078      	str	r0, [r7, #4]
    2434:	687b      	ldr	r3, [r7, #4]
    2436:	2b3b      	cmp	r3, #59	; 0x3b
    2438:	dc17      	bgt.n	246a <enable_interrupt+0x3e>
    243a:	687b      	ldr	r3, [r7, #4]
    243c:	115b      	asrs	r3, r3, #5
    243e:	009b      	lsls	r3, r3, #2
    2440:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2444:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2448:	687a      	ldr	r2, [r7, #4]
    244a:	1152      	asrs	r2, r2, #5
    244c:	0092      	lsls	r2, r2, #2
    244e:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2452:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    2456:	6812      	ldr	r2, [r2, #0]
    2458:	6879      	ldr	r1, [r7, #4]
    245a:	f001 011f 	and.w	r1, r1, #31
    245e:	2001      	movs	r0, #1
    2460:	fa00 f101 	lsl.w	r1, r0, r1
    2464:	430a      	orrs	r2, r1
    2466:	601a      	str	r2, [r3, #0]
    2468:	e000      	b.n	246c <enable_interrupt+0x40>
    246a:	bf00      	nop
    246c:	370c      	adds	r7, #12
    246e:	46bd      	mov	sp, r7
    2470:	bc80      	pop	{r7}
    2472:	4770      	bx	lr

00002474 <disable_interrupt>:
    2474:	b480      	push	{r7}
    2476:	b083      	sub	sp, #12
    2478:	af00      	add	r7, sp, #0
    247a:	6078      	str	r0, [r7, #4]
    247c:	687b      	ldr	r3, [r7, #4]
    247e:	2b3b      	cmp	r3, #59	; 0x3b
    2480:	dc0c      	bgt.n	249c <disable_interrupt+0x28>
    2482:	687b      	ldr	r3, [r7, #4]
    2484:	115b      	asrs	r3, r3, #5
    2486:	009a      	lsls	r2, r3, #2
    2488:	4b07      	ldr	r3, [pc, #28]	; (24a8 <disable_interrupt+0x34>)
    248a:	4413      	add	r3, r2
    248c:	687a      	ldr	r2, [r7, #4]
    248e:	f002 021f 	and.w	r2, r2, #31
    2492:	2101      	movs	r1, #1
    2494:	fa01 f202 	lsl.w	r2, r1, r2
    2498:	601a      	str	r2, [r3, #0]
    249a:	e000      	b.n	249e <disable_interrupt+0x2a>
    249c:	bf00      	nop
    249e:	370c      	adds	r7, #12
    24a0:	46bd      	mov	sp, r7
    24a2:	bc80      	pop	{r7}
    24a4:	4770      	bx	lr
    24a6:	bf00      	nop
    24a8:	e000e180 	.word	0xe000e180

000024ac <get_pending>:
    24ac:	b480      	push	{r7}
    24ae:	b083      	sub	sp, #12
    24b0:	af00      	add	r7, sp, #0
    24b2:	6078      	str	r0, [r7, #4]
    24b4:	687b      	ldr	r3, [r7, #4]
    24b6:	2b3b      	cmp	r3, #59	; 0x3b
    24b8:	dd01      	ble.n	24be <get_pending+0x12>
    24ba:	2300      	movs	r3, #0
    24bc:	e00c      	b.n	24d8 <get_pending+0x2c>
    24be:	687b      	ldr	r3, [r7, #4]
    24c0:	115b      	asrs	r3, r3, #5
    24c2:	009a      	lsls	r2, r3, #2
    24c4:	4b07      	ldr	r3, [pc, #28]	; (24e4 <get_pending+0x38>)
    24c6:	4413      	add	r3, r2
    24c8:	681b      	ldr	r3, [r3, #0]
    24ca:	687a      	ldr	r2, [r7, #4]
    24cc:	f002 021f 	and.w	r2, r2, #31
    24d0:	2101      	movs	r1, #1
    24d2:	fa01 f202 	lsl.w	r2, r1, r2
    24d6:	4013      	ands	r3, r2
    24d8:	4618      	mov	r0, r3
    24da:	370c      	adds	r7, #12
    24dc:	46bd      	mov	sp, r7
    24de:	bc80      	pop	{r7}
    24e0:	4770      	bx	lr
    24e2:	bf00      	nop
    24e4:	e000e280 	.word	0xe000e280

000024e8 <get_active>:
    24e8:	b480      	push	{r7}
    24ea:	b083      	sub	sp, #12
    24ec:	af00      	add	r7, sp, #0
    24ee:	6078      	str	r0, [r7, #4]
    24f0:	687b      	ldr	r3, [r7, #4]
    24f2:	2b3b      	cmp	r3, #59	; 0x3b
    24f4:	dd01      	ble.n	24fa <get_active+0x12>
    24f6:	2300      	movs	r3, #0
    24f8:	e00e      	b.n	2518 <get_active+0x30>
    24fa:	687b      	ldr	r3, [r7, #4]
    24fc:	115b      	asrs	r3, r3, #5
    24fe:	009b      	lsls	r3, r3, #2
    2500:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2504:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2508:	681b      	ldr	r3, [r3, #0]
    250a:	687a      	ldr	r2, [r7, #4]
    250c:	f002 021f 	and.w	r2, r2, #31
    2510:	2101      	movs	r1, #1
    2512:	fa01 f202 	lsl.w	r2, r1, r2
    2516:	4013      	ands	r3, r2
    2518:	4618      	mov	r0, r3
    251a:	370c      	adds	r7, #12
    251c:	46bd      	mov	sp, r7
    251e:	bc80      	pop	{r7}
    2520:	4770      	bx	lr

00002522 <set_pending>:
    2522:	b480      	push	{r7}
    2524:	b083      	sub	sp, #12
    2526:	af00      	add	r7, sp, #0
    2528:	6078      	str	r0, [r7, #4]
    252a:	687b      	ldr	r3, [r7, #4]
    252c:	2b3b      	cmp	r3, #59	; 0x3b
    252e:	dc17      	bgt.n	2560 <set_pending+0x3e>
    2530:	687b      	ldr	r3, [r7, #4]
    2532:	115b      	asrs	r3, r3, #5
    2534:	009b      	lsls	r3, r3, #2
    2536:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    253a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    253e:	687a      	ldr	r2, [r7, #4]
    2540:	1152      	asrs	r2, r2, #5
    2542:	0092      	lsls	r2, r2, #2
    2544:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2548:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    254c:	6812      	ldr	r2, [r2, #0]
    254e:	6879      	ldr	r1, [r7, #4]
    2550:	f001 011f 	and.w	r1, r1, #31
    2554:	2001      	movs	r0, #1
    2556:	fa00 f101 	lsl.w	r1, r0, r1
    255a:	430a      	orrs	r2, r1
    255c:	601a      	str	r2, [r3, #0]
    255e:	e000      	b.n	2562 <set_pending+0x40>
    2560:	bf00      	nop
    2562:	370c      	adds	r7, #12
    2564:	46bd      	mov	sp, r7
    2566:	bc80      	pop	{r7}
    2568:	4770      	bx	lr

0000256a <clear_pending>:
    256a:	b480      	push	{r7}
    256c:	b083      	sub	sp, #12
    256e:	af00      	add	r7, sp, #0
    2570:	6078      	str	r0, [r7, #4]
    2572:	687b      	ldr	r3, [r7, #4]
    2574:	2b3b      	cmp	r3, #59	; 0x3b
    2576:	dc0c      	bgt.n	2592 <clear_pending+0x28>
    2578:	687b      	ldr	r3, [r7, #4]
    257a:	115b      	asrs	r3, r3, #5
    257c:	009a      	lsls	r2, r3, #2
    257e:	4b07      	ldr	r3, [pc, #28]	; (259c <clear_pending+0x32>)
    2580:	4413      	add	r3, r2
    2582:	687a      	ldr	r2, [r7, #4]
    2584:	f002 021f 	and.w	r2, r2, #31
    2588:	2101      	movs	r1, #1
    258a:	fa01 f202 	lsl.w	r2, r1, r2
    258e:	601a      	str	r2, [r3, #0]
    2590:	e000      	b.n	2594 <clear_pending+0x2a>
    2592:	bf00      	nop
    2594:	370c      	adds	r7, #12
    2596:	46bd      	mov	sp, r7
    2598:	bc80      	pop	{r7}
    259a:	4770      	bx	lr
    259c:	e000e280 	.word	0xe000e280

000025a0 <set_int_priority>:
    25a0:	b480      	push	{r7}
    25a2:	b083      	sub	sp, #12
    25a4:	af00      	add	r7, sp, #0
    25a6:	6078      	str	r0, [r7, #4]
    25a8:	6039      	str	r1, [r7, #0]
    25aa:	687b      	ldr	r3, [r7, #4]
    25ac:	2b00      	cmp	r3, #0
    25ae:	db0d      	blt.n	25cc <set_int_priority+0x2c>
    25b0:	687b      	ldr	r3, [r7, #4]
    25b2:	2b3b      	cmp	r3, #59	; 0x3b
    25b4:	dc0a      	bgt.n	25cc <set_int_priority+0x2c>
    25b6:	687b      	ldr	r3, [r7, #4]
    25b8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    25bc:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    25c0:	683a      	ldr	r2, [r7, #0]
    25c2:	b2d2      	uxtb	r2, r2
    25c4:	0112      	lsls	r2, r2, #4
    25c6:	b2d2      	uxtb	r2, r2
    25c8:	701a      	strb	r2, [r3, #0]
    25ca:	e012      	b.n	25f2 <set_int_priority+0x52>
    25cc:	687b      	ldr	r3, [r7, #4]
    25ce:	2b00      	cmp	r3, #0
    25d0:	da0f      	bge.n	25f2 <set_int_priority+0x52>
    25d2:	687b      	ldr	r3, [r7, #4]
    25d4:	f113 0f0f 	cmn.w	r3, #15
    25d8:	db0b      	blt.n	25f2 <set_int_priority+0x52>
    25da:	687a      	ldr	r2, [r7, #4]
    25dc:	f06f 0303 	mvn.w	r3, #3
    25e0:	1a9b      	subs	r3, r3, r2
    25e2:	461a      	mov	r2, r3
    25e4:	4b05      	ldr	r3, [pc, #20]	; (25fc <set_int_priority+0x5c>)
    25e6:	4413      	add	r3, r2
    25e8:	683a      	ldr	r2, [r7, #0]
    25ea:	b2d2      	uxtb	r2, r2
    25ec:	0112      	lsls	r2, r2, #4
    25ee:	b2d2      	uxtb	r2, r2
    25f0:	701a      	strb	r2, [r3, #0]
    25f2:	bf00      	nop
    25f4:	370c      	adds	r7, #12
    25f6:	46bd      	mov	sp, r7
    25f8:	bc80      	pop	{r7}
    25fa:	4770      	bx	lr
    25fc:	e000ed18 	.word	0xe000ed18

00002600 <leap_year>:
    2600:	b480      	push	{r7}
    2602:	b083      	sub	sp, #12
    2604:	af00      	add	r7, sp, #0
    2606:	6078      	str	r0, [r7, #4]
    2608:	687b      	ldr	r3, [r7, #4]
    260a:	f003 0303 	and.w	r3, r3, #3
    260e:	2b00      	cmp	r3, #0
    2610:	d11a      	bne.n	2648 <leap_year+0x48>
    2612:	687a      	ldr	r2, [r7, #4]
    2614:	4b0f      	ldr	r3, [pc, #60]	; (2654 <leap_year+0x54>)
    2616:	fba3 1302 	umull	r1, r3, r3, r2
    261a:	095b      	lsrs	r3, r3, #5
    261c:	2164      	movs	r1, #100	; 0x64
    261e:	fb01 f303 	mul.w	r3, r1, r3
    2622:	1ad3      	subs	r3, r2, r3
    2624:	2b00      	cmp	r3, #0
    2626:	d10d      	bne.n	2644 <leap_year+0x44>
    2628:	687a      	ldr	r2, [r7, #4]
    262a:	4b0a      	ldr	r3, [pc, #40]	; (2654 <leap_year+0x54>)
    262c:	fba3 1302 	umull	r1, r3, r3, r2
    2630:	09db      	lsrs	r3, r3, #7
    2632:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2636:	fb01 f303 	mul.w	r3, r1, r3
    263a:	1ad3      	subs	r3, r2, r3
    263c:	2b00      	cmp	r3, #0
    263e:	d001      	beq.n	2644 <leap_year+0x44>
    2640:	2300      	movs	r3, #0
    2642:	e002      	b.n	264a <leap_year+0x4a>
    2644:	2301      	movs	r3, #1
    2646:	e000      	b.n	264a <leap_year+0x4a>
    2648:	2300      	movs	r3, #0
    264a:	4618      	mov	r0, r3
    264c:	370c      	adds	r7, #12
    264e:	46bd      	mov	sp, r7
    2650:	bc80      	pop	{r7}
    2652:	4770      	bx	lr
    2654:	51eb851f 	.word	0x51eb851f

00002658 <sec_per_month>:
    2658:	b480      	push	{r7}
    265a:	b085      	sub	sp, #20
    265c:	af00      	add	r7, sp, #0
    265e:	6078      	str	r0, [r7, #4]
    2660:	6039      	str	r1, [r7, #0]
    2662:	4a0d      	ldr	r2, [pc, #52]	; (2698 <sec_per_month+0x40>)
    2664:	683b      	ldr	r3, [r7, #0]
    2666:	4413      	add	r3, r2
    2668:	781b      	ldrb	r3, [r3, #0]
    266a:	461a      	mov	r2, r3
    266c:	4b0b      	ldr	r3, [pc, #44]	; (269c <sec_per_month+0x44>)
    266e:	fb03 f302 	mul.w	r3, r3, r2
    2672:	60fb      	str	r3, [r7, #12]
    2674:	683b      	ldr	r3, [r7, #0]
    2676:	2b02      	cmp	r3, #2
    2678:	d108      	bne.n	268c <sec_per_month+0x34>
    267a:	687b      	ldr	r3, [r7, #4]
    267c:	2b00      	cmp	r3, #0
    267e:	d005      	beq.n	268c <sec_per_month+0x34>
    2680:	68fb      	ldr	r3, [r7, #12]
    2682:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2686:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    268a:	60fb      	str	r3, [r7, #12]
    268c:	68fb      	ldr	r3, [r7, #12]
    268e:	4618      	mov	r0, r3
    2690:	3714      	adds	r7, #20
    2692:	46bd      	mov	sp, r7
    2694:	bc80      	pop	{r7}
    2696:	4770      	bx	lr
    2698:	00004628 	.word	0x00004628
    269c:	00015180 	.word	0x00015180

000026a0 <get_date_time>:
    26a0:	b580      	push	{r7, lr}
    26a2:	b086      	sub	sp, #24
    26a4:	af00      	add	r7, sp, #0
    26a6:	6078      	str	r0, [r7, #4]
    26a8:	4b66      	ldr	r3, [pc, #408]	; (2844 <get_date_time+0x1a4>)
    26aa:	699b      	ldr	r3, [r3, #24]
    26ac:	041a      	lsls	r2, r3, #16
    26ae:	4b65      	ldr	r3, [pc, #404]	; (2844 <get_date_time+0x1a4>)
    26b0:	69db      	ldr	r3, [r3, #28]
    26b2:	4413      	add	r3, r2
    26b4:	617b      	str	r3, [r7, #20]
    26b6:	687b      	ldr	r3, [r7, #4]
    26b8:	f240 72b2 	movw	r2, #1970	; 0x7b2
    26bc:	811a      	strh	r2, [r3, #8]
    26be:	f240 70b2 	movw	r0, #1970	; 0x7b2
    26c2:	f7ff ff9d 	bl	2600 <leap_year>
    26c6:	6138      	str	r0, [r7, #16]
    26c8:	e019      	b.n	26fe <get_date_time+0x5e>
    26ca:	693b      	ldr	r3, [r7, #16]
    26cc:	2b00      	cmp	r3, #0
    26ce:	d006      	beq.n	26de <get_date_time+0x3e>
    26d0:	697b      	ldr	r3, [r7, #20]
    26d2:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    26d6:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    26da:	617b      	str	r3, [r7, #20]
    26dc:	e003      	b.n	26e6 <get_date_time+0x46>
    26de:	697a      	ldr	r2, [r7, #20]
    26e0:	4b59      	ldr	r3, [pc, #356]	; (2848 <get_date_time+0x1a8>)
    26e2:	4413      	add	r3, r2
    26e4:	617b      	str	r3, [r7, #20]
    26e6:	687b      	ldr	r3, [r7, #4]
    26e8:	891b      	ldrh	r3, [r3, #8]
    26ea:	3301      	adds	r3, #1
    26ec:	b29a      	uxth	r2, r3
    26ee:	687b      	ldr	r3, [r7, #4]
    26f0:	811a      	strh	r2, [r3, #8]
    26f2:	687b      	ldr	r3, [r7, #4]
    26f4:	891b      	ldrh	r3, [r3, #8]
    26f6:	4618      	mov	r0, r3
    26f8:	f7ff ff82 	bl	2600 <leap_year>
    26fc:	6138      	str	r0, [r7, #16]
    26fe:	693b      	ldr	r3, [r7, #16]
    2700:	2b00      	cmp	r3, #0
    2702:	d103      	bne.n	270c <get_date_time+0x6c>
    2704:	697b      	ldr	r3, [r7, #20]
    2706:	4a51      	ldr	r2, [pc, #324]	; (284c <get_date_time+0x1ac>)
    2708:	4293      	cmp	r3, r2
    270a:	d8de      	bhi.n	26ca <get_date_time+0x2a>
    270c:	693b      	ldr	r3, [r7, #16]
    270e:	2b00      	cmp	r3, #0
    2710:	d003      	beq.n	271a <get_date_time+0x7a>
    2712:	697b      	ldr	r3, [r7, #20]
    2714:	4a4e      	ldr	r2, [pc, #312]	; (2850 <get_date_time+0x1b0>)
    2716:	4293      	cmp	r3, r2
    2718:	d8d7      	bhi.n	26ca <get_date_time+0x2a>
    271a:	687a      	ldr	r2, [r7, #4]
    271c:	8853      	ldrh	r3, [r2, #2]
    271e:	2101      	movs	r1, #1
    2720:	f361 1389 	bfi	r3, r1, #6, #4
    2724:	8053      	strh	r3, [r2, #2]
    2726:	687a      	ldr	r2, [r7, #4]
    2728:	7893      	ldrb	r3, [r2, #2]
    272a:	2101      	movs	r1, #1
    272c:	f361 0345 	bfi	r3, r1, #1, #5
    2730:	7093      	strb	r3, [r2, #2]
    2732:	687a      	ldr	r2, [r7, #4]
    2734:	6813      	ldr	r3, [r2, #0]
    2736:	f36f 3310 	bfc	r3, #12, #5
    273a:	6013      	str	r3, [r2, #0]
    273c:	687a      	ldr	r2, [r7, #4]
    273e:	8813      	ldrh	r3, [r2, #0]
    2740:	f36f 138b 	bfc	r3, #6, #6
    2744:	8013      	strh	r3, [r2, #0]
    2746:	687a      	ldr	r2, [r7, #4]
    2748:	7813      	ldrb	r3, [r2, #0]
    274a:	f36f 0305 	bfc	r3, #0, #6
    274e:	7013      	strb	r3, [r2, #0]
    2750:	e011      	b.n	2776 <get_date_time+0xd6>
    2752:	687b      	ldr	r3, [r7, #4]
    2754:	885b      	ldrh	r3, [r3, #2]
    2756:	f3c3 1383 	ubfx	r3, r3, #6, #4
    275a:	b2db      	uxtb	r3, r3
    275c:	3301      	adds	r3, #1
    275e:	f003 030f 	and.w	r3, r3, #15
    2762:	b2d9      	uxtb	r1, r3
    2764:	687a      	ldr	r2, [r7, #4]
    2766:	8853      	ldrh	r3, [r2, #2]
    2768:	f361 1389 	bfi	r3, r1, #6, #4
    276c:	8053      	strh	r3, [r2, #2]
    276e:	697a      	ldr	r2, [r7, #20]
    2770:	68fb      	ldr	r3, [r7, #12]
    2772:	1ad3      	subs	r3, r2, r3
    2774:	617b      	str	r3, [r7, #20]
    2776:	687b      	ldr	r3, [r7, #4]
    2778:	885b      	ldrh	r3, [r3, #2]
    277a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    277e:	b2db      	uxtb	r3, r3
    2780:	4619      	mov	r1, r3
    2782:	6938      	ldr	r0, [r7, #16]
    2784:	f7ff ff68 	bl	2658 <sec_per_month>
    2788:	60f8      	str	r0, [r7, #12]
    278a:	68fa      	ldr	r2, [r7, #12]
    278c:	697b      	ldr	r3, [r7, #20]
    278e:	429a      	cmp	r2, r3
    2790:	d3df      	bcc.n	2752 <get_date_time+0xb2>
    2792:	697b      	ldr	r3, [r7, #20]
    2794:	4a2f      	ldr	r2, [pc, #188]	; (2854 <get_date_time+0x1b4>)
    2796:	fba2 2303 	umull	r2, r3, r2, r3
    279a:	0c1b      	lsrs	r3, r3, #16
    279c:	b2db      	uxtb	r3, r3
    279e:	3301      	adds	r3, #1
    27a0:	b2db      	uxtb	r3, r3
    27a2:	f003 031f 	and.w	r3, r3, #31
    27a6:	b2d9      	uxtb	r1, r3
    27a8:	687a      	ldr	r2, [r7, #4]
    27aa:	7893      	ldrb	r3, [r2, #2]
    27ac:	f361 0345 	bfi	r3, r1, #1, #5
    27b0:	7093      	strb	r3, [r2, #2]
    27b2:	697b      	ldr	r3, [r7, #20]
    27b4:	4a27      	ldr	r2, [pc, #156]	; (2854 <get_date_time+0x1b4>)
    27b6:	fba2 1203 	umull	r1, r2, r2, r3
    27ba:	0c12      	lsrs	r2, r2, #16
    27bc:	4926      	ldr	r1, [pc, #152]	; (2858 <get_date_time+0x1b8>)
    27be:	fb01 f202 	mul.w	r2, r1, r2
    27c2:	1a9b      	subs	r3, r3, r2
    27c4:	617b      	str	r3, [r7, #20]
    27c6:	697b      	ldr	r3, [r7, #20]
    27c8:	4a24      	ldr	r2, [pc, #144]	; (285c <get_date_time+0x1bc>)
    27ca:	fba2 2303 	umull	r2, r3, r2, r3
    27ce:	0adb      	lsrs	r3, r3, #11
    27d0:	b2db      	uxtb	r3, r3
    27d2:	f003 031f 	and.w	r3, r3, #31
    27d6:	b2d9      	uxtb	r1, r3
    27d8:	687a      	ldr	r2, [r7, #4]
    27da:	6813      	ldr	r3, [r2, #0]
    27dc:	f361 3310 	bfi	r3, r1, #12, #5
    27e0:	6013      	str	r3, [r2, #0]
    27e2:	697b      	ldr	r3, [r7, #20]
    27e4:	4a1d      	ldr	r2, [pc, #116]	; (285c <get_date_time+0x1bc>)
    27e6:	fba2 1203 	umull	r1, r2, r2, r3
    27ea:	0ad2      	lsrs	r2, r2, #11
    27ec:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    27f0:	fb01 f202 	mul.w	r2, r1, r2
    27f4:	1a9b      	subs	r3, r3, r2
    27f6:	617b      	str	r3, [r7, #20]
    27f8:	697b      	ldr	r3, [r7, #20]
    27fa:	4a19      	ldr	r2, [pc, #100]	; (2860 <get_date_time+0x1c0>)
    27fc:	fba2 2303 	umull	r2, r3, r2, r3
    2800:	095b      	lsrs	r3, r3, #5
    2802:	b2db      	uxtb	r3, r3
    2804:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2808:	b2d9      	uxtb	r1, r3
    280a:	687a      	ldr	r2, [r7, #4]
    280c:	8813      	ldrh	r3, [r2, #0]
    280e:	f361 138b 	bfi	r3, r1, #6, #6
    2812:	8013      	strh	r3, [r2, #0]
    2814:	6979      	ldr	r1, [r7, #20]
    2816:	4b12      	ldr	r3, [pc, #72]	; (2860 <get_date_time+0x1c0>)
    2818:	fba3 2301 	umull	r2, r3, r3, r1
    281c:	095a      	lsrs	r2, r3, #5
    281e:	4613      	mov	r3, r2
    2820:	011b      	lsls	r3, r3, #4
    2822:	1a9b      	subs	r3, r3, r2
    2824:	009b      	lsls	r3, r3, #2
    2826:	1aca      	subs	r2, r1, r3
    2828:	b2d3      	uxtb	r3, r2
    282a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    282e:	b2d9      	uxtb	r1, r3
    2830:	687a      	ldr	r2, [r7, #4]
    2832:	7813      	ldrb	r3, [r2, #0]
    2834:	f361 0305 	bfi	r3, r1, #0, #6
    2838:	7013      	strb	r3, [r2, #0]
    283a:	bf00      	nop
    283c:	3718      	adds	r7, #24
    283e:	46bd      	mov	sp, r7
    2840:	bd80      	pop	{r7, pc}
    2842:	bf00      	nop
    2844:	40002800 	.word	0x40002800
    2848:	fe1ecc80 	.word	0xfe1ecc80
    284c:	01e1337f 	.word	0x01e1337f
    2850:	01e284ff 	.word	0x01e284ff
    2854:	c22e4507 	.word	0xc22e4507
    2858:	00015180 	.word	0x00015180
    285c:	91a2b3c5 	.word	0x91a2b3c5
    2860:	88888889 	.word	0x88888889

00002864 <set_date_time>:
    2864:	b580      	push	{r7, lr}
    2866:	b086      	sub	sp, #24
    2868:	af00      	add	r7, sp, #0
    286a:	6078      	str	r0, [r7, #4]
    286c:	2300      	movs	r3, #0
    286e:	613b      	str	r3, [r7, #16]
    2870:	687b      	ldr	r3, [r7, #4]
    2872:	891b      	ldrh	r3, [r3, #8]
    2874:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2878:	4293      	cmp	r3, r2
    287a:	d803      	bhi.n	2884 <set_date_time+0x20>
    287c:	687b      	ldr	r3, [r7, #4]
    287e:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2882:	811a      	strh	r2, [r3, #8]
    2884:	687b      	ldr	r3, [r7, #4]
    2886:	891b      	ldrh	r3, [r3, #8]
    2888:	f640 023a 	movw	r2, #2106	; 0x83a
    288c:	4293      	cmp	r3, r2
    288e:	d903      	bls.n	2898 <set_date_time+0x34>
    2890:	687b      	ldr	r3, [r7, #4]
    2892:	f640 023a 	movw	r2, #2106	; 0x83a
    2896:	811a      	strh	r2, [r3, #8]
    2898:	687b      	ldr	r3, [r7, #4]
    289a:	891b      	ldrh	r3, [r3, #8]
    289c:	4618      	mov	r0, r3
    289e:	f7ff feaf 	bl	2600 <leap_year>
    28a2:	60f8      	str	r0, [r7, #12]
    28a4:	f240 73b2 	movw	r3, #1970	; 0x7b2
    28a8:	617b      	str	r3, [r7, #20]
    28aa:	e013      	b.n	28d4 <set_date_time+0x70>
    28ac:	6978      	ldr	r0, [r7, #20]
    28ae:	f7ff fea7 	bl	2600 <leap_year>
    28b2:	4603      	mov	r3, r0
    28b4:	2b00      	cmp	r3, #0
    28b6:	d006      	beq.n	28c6 <set_date_time+0x62>
    28b8:	693b      	ldr	r3, [r7, #16]
    28ba:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    28be:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    28c2:	613b      	str	r3, [r7, #16]
    28c4:	e003      	b.n	28ce <set_date_time+0x6a>
    28c6:	693a      	ldr	r2, [r7, #16]
    28c8:	4b42      	ldr	r3, [pc, #264]	; (29d4 <set_date_time+0x170>)
    28ca:	4413      	add	r3, r2
    28cc:	613b      	str	r3, [r7, #16]
    28ce:	697b      	ldr	r3, [r7, #20]
    28d0:	3301      	adds	r3, #1
    28d2:	617b      	str	r3, [r7, #20]
    28d4:	687b      	ldr	r3, [r7, #4]
    28d6:	891b      	ldrh	r3, [r3, #8]
    28d8:	461a      	mov	r2, r3
    28da:	697b      	ldr	r3, [r7, #20]
    28dc:	429a      	cmp	r2, r3
    28de:	d8e5      	bhi.n	28ac <set_date_time+0x48>
    28e0:	2301      	movs	r3, #1
    28e2:	617b      	str	r3, [r7, #20]
    28e4:	e00a      	b.n	28fc <set_date_time+0x98>
    28e6:	6979      	ldr	r1, [r7, #20]
    28e8:	68f8      	ldr	r0, [r7, #12]
    28ea:	f7ff feb5 	bl	2658 <sec_per_month>
    28ee:	4602      	mov	r2, r0
    28f0:	693b      	ldr	r3, [r7, #16]
    28f2:	4413      	add	r3, r2
    28f4:	613b      	str	r3, [r7, #16]
    28f6:	697b      	ldr	r3, [r7, #20]
    28f8:	3301      	adds	r3, #1
    28fa:	617b      	str	r3, [r7, #20]
    28fc:	687b      	ldr	r3, [r7, #4]
    28fe:	885b      	ldrh	r3, [r3, #2]
    2900:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2904:	b2db      	uxtb	r3, r3
    2906:	461a      	mov	r2, r3
    2908:	697b      	ldr	r3, [r7, #20]
    290a:	429a      	cmp	r2, r3
    290c:	d8eb      	bhi.n	28e6 <set_date_time+0x82>
    290e:	687b      	ldr	r3, [r7, #4]
    2910:	789b      	ldrb	r3, [r3, #2]
    2912:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2916:	b2db      	uxtb	r3, r3
    2918:	3b01      	subs	r3, #1
    291a:	4a2f      	ldr	r2, [pc, #188]	; (29d8 <set_date_time+0x174>)
    291c:	fb02 f303 	mul.w	r3, r2, r3
    2920:	461a      	mov	r2, r3
    2922:	693b      	ldr	r3, [r7, #16]
    2924:	4413      	add	r3, r2
    2926:	613b      	str	r3, [r7, #16]
    2928:	687b      	ldr	r3, [r7, #4]
    292a:	681b      	ldr	r3, [r3, #0]
    292c:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2930:	b2db      	uxtb	r3, r3
    2932:	461a      	mov	r2, r3
    2934:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    2938:	fb03 f302 	mul.w	r3, r3, r2
    293c:	461a      	mov	r2, r3
    293e:	693b      	ldr	r3, [r7, #16]
    2940:	4413      	add	r3, r2
    2942:	613b      	str	r3, [r7, #16]
    2944:	687b      	ldr	r3, [r7, #4]
    2946:	881b      	ldrh	r3, [r3, #0]
    2948:	f3c3 1385 	ubfx	r3, r3, #6, #6
    294c:	b2db      	uxtb	r3, r3
    294e:	461a      	mov	r2, r3
    2950:	4613      	mov	r3, r2
    2952:	011b      	lsls	r3, r3, #4
    2954:	1a9b      	subs	r3, r3, r2
    2956:	009b      	lsls	r3, r3, #2
    2958:	461a      	mov	r2, r3
    295a:	693b      	ldr	r3, [r7, #16]
    295c:	4413      	add	r3, r2
    295e:	613b      	str	r3, [r7, #16]
    2960:	687b      	ldr	r3, [r7, #4]
    2962:	781b      	ldrb	r3, [r3, #0]
    2964:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2968:	b2db      	uxtb	r3, r3
    296a:	461a      	mov	r2, r3
    296c:	693b      	ldr	r3, [r7, #16]
    296e:	4413      	add	r3, r2
    2970:	613b      	str	r3, [r7, #16]
    2972:	4a1a      	ldr	r2, [pc, #104]	; (29dc <set_date_time+0x178>)
    2974:	4b19      	ldr	r3, [pc, #100]	; (29dc <set_date_time+0x178>)
    2976:	69db      	ldr	r3, [r3, #28]
    2978:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    297c:	61d3      	str	r3, [r2, #28]
    297e:	4a18      	ldr	r2, [pc, #96]	; (29e0 <set_date_time+0x17c>)
    2980:	4b17      	ldr	r3, [pc, #92]	; (29e0 <set_date_time+0x17c>)
    2982:	681b      	ldr	r3, [r3, #0]
    2984:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2988:	6013      	str	r3, [r2, #0]
    298a:	4a16      	ldr	r2, [pc, #88]	; (29e4 <set_date_time+0x180>)
    298c:	4b15      	ldr	r3, [pc, #84]	; (29e4 <set_date_time+0x180>)
    298e:	685b      	ldr	r3, [r3, #4]
    2990:	f043 0310 	orr.w	r3, r3, #16
    2994:	6053      	str	r3, [r2, #4]
    2996:	4a13      	ldr	r2, [pc, #76]	; (29e4 <set_date_time+0x180>)
    2998:	693b      	ldr	r3, [r7, #16]
    299a:	0c1b      	lsrs	r3, r3, #16
    299c:	6193      	str	r3, [r2, #24]
    299e:	4a11      	ldr	r2, [pc, #68]	; (29e4 <set_date_time+0x180>)
    29a0:	693b      	ldr	r3, [r7, #16]
    29a2:	b29b      	uxth	r3, r3
    29a4:	61d3      	str	r3, [r2, #28]
    29a6:	4a0f      	ldr	r2, [pc, #60]	; (29e4 <set_date_time+0x180>)
    29a8:	4b0e      	ldr	r3, [pc, #56]	; (29e4 <set_date_time+0x180>)
    29aa:	685b      	ldr	r3, [r3, #4]
    29ac:	f023 0310 	bic.w	r3, r3, #16
    29b0:	6053      	str	r3, [r2, #4]
    29b2:	bf00      	nop
    29b4:	4b0b      	ldr	r3, [pc, #44]	; (29e4 <set_date_time+0x180>)
    29b6:	685b      	ldr	r3, [r3, #4]
    29b8:	f003 0320 	and.w	r3, r3, #32
    29bc:	2b00      	cmp	r3, #0
    29be:	d0f9      	beq.n	29b4 <set_date_time+0x150>
    29c0:	4a07      	ldr	r2, [pc, #28]	; (29e0 <set_date_time+0x17c>)
    29c2:	4b07      	ldr	r3, [pc, #28]	; (29e0 <set_date_time+0x17c>)
    29c4:	681b      	ldr	r3, [r3, #0]
    29c6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    29ca:	6013      	str	r3, [r2, #0]
    29cc:	bf00      	nop
    29ce:	3718      	adds	r7, #24
    29d0:	46bd      	mov	sp, r7
    29d2:	bd80      	pop	{r7, pc}
    29d4:	01e13380 	.word	0x01e13380
    29d8:	00015180 	.word	0x00015180
    29dc:	40021000 	.word	0x40021000
    29e0:	40007000 	.word	0x40007000
    29e4:	40002800 	.word	0x40002800

000029e8 <rtc_init>:
    29e8:	b580      	push	{r7, lr}
    29ea:	b082      	sub	sp, #8
    29ec:	af00      	add	r7, sp, #0
    29ee:	6078      	str	r0, [r7, #4]
    29f0:	6039      	str	r1, [r7, #0]
    29f2:	4b4a      	ldr	r3, [pc, #296]	; (2b1c <rtc_init+0x134>)
    29f4:	685b      	ldr	r3, [r3, #4]
    29f6:	f64a 2255 	movw	r2, #43605	; 0xaa55
    29fa:	4293      	cmp	r3, r2
    29fc:	f000 8082 	beq.w	2b04 <rtc_init+0x11c>
    2a00:	4a47      	ldr	r2, [pc, #284]	; (2b20 <rtc_init+0x138>)
    2a02:	4b47      	ldr	r3, [pc, #284]	; (2b20 <rtc_init+0x138>)
    2a04:	69db      	ldr	r3, [r3, #28]
    2a06:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2a0a:	61d3      	str	r3, [r2, #28]
    2a0c:	4a45      	ldr	r2, [pc, #276]	; (2b24 <rtc_init+0x13c>)
    2a0e:	4b45      	ldr	r3, [pc, #276]	; (2b24 <rtc_init+0x13c>)
    2a10:	681b      	ldr	r3, [r3, #0]
    2a12:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2a16:	6013      	str	r3, [r2, #0]
    2a18:	4a41      	ldr	r2, [pc, #260]	; (2b20 <rtc_init+0x138>)
    2a1a:	4b41      	ldr	r3, [pc, #260]	; (2b20 <rtc_init+0x138>)
    2a1c:	6a1b      	ldr	r3, [r3, #32]
    2a1e:	f043 0301 	orr.w	r3, r3, #1
    2a22:	6213      	str	r3, [r2, #32]
    2a24:	bf00      	nop
    2a26:	4b3e      	ldr	r3, [pc, #248]	; (2b20 <rtc_init+0x138>)
    2a28:	6a1b      	ldr	r3, [r3, #32]
    2a2a:	f003 0302 	and.w	r3, r3, #2
    2a2e:	2b00      	cmp	r3, #0
    2a30:	d0f9      	beq.n	2a26 <rtc_init+0x3e>
    2a32:	4a3b      	ldr	r2, [pc, #236]	; (2b20 <rtc_init+0x138>)
    2a34:	4b3a      	ldr	r3, [pc, #232]	; (2b20 <rtc_init+0x138>)
    2a36:	6a1b      	ldr	r3, [r3, #32]
    2a38:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2a3c:	6213      	str	r3, [r2, #32]
    2a3e:	bf00      	nop
    2a40:	4b39      	ldr	r3, [pc, #228]	; (2b28 <rtc_init+0x140>)
    2a42:	685b      	ldr	r3, [r3, #4]
    2a44:	f003 0308 	and.w	r3, r3, #8
    2a48:	2b00      	cmp	r3, #0
    2a4a:	d0f9      	beq.n	2a40 <rtc_init+0x58>
    2a4c:	bf00      	nop
    2a4e:	4b36      	ldr	r3, [pc, #216]	; (2b28 <rtc_init+0x140>)
    2a50:	685b      	ldr	r3, [r3, #4]
    2a52:	f003 0320 	and.w	r3, r3, #32
    2a56:	2b00      	cmp	r3, #0
    2a58:	d0f9      	beq.n	2a4e <rtc_init+0x66>
    2a5a:	4a33      	ldr	r2, [pc, #204]	; (2b28 <rtc_init+0x140>)
    2a5c:	4b32      	ldr	r3, [pc, #200]	; (2b28 <rtc_init+0x140>)
    2a5e:	685b      	ldr	r3, [r3, #4]
    2a60:	f043 0310 	orr.w	r3, r3, #16
    2a64:	6053      	str	r3, [r2, #4]
    2a66:	bf00      	nop
    2a68:	4b2f      	ldr	r3, [pc, #188]	; (2b28 <rtc_init+0x140>)
    2a6a:	685b      	ldr	r3, [r3, #4]
    2a6c:	f003 0320 	and.w	r3, r3, #32
    2a70:	2b00      	cmp	r3, #0
    2a72:	d0f9      	beq.n	2a68 <rtc_init+0x80>
    2a74:	492c      	ldr	r1, [pc, #176]	; (2b28 <rtc_init+0x140>)
    2a76:	4b2c      	ldr	r3, [pc, #176]	; (2b28 <rtc_init+0x140>)
    2a78:	681a      	ldr	r2, [r3, #0]
    2a7a:	683b      	ldr	r3, [r7, #0]
    2a7c:	4313      	orrs	r3, r2
    2a7e:	600b      	str	r3, [r1, #0]
    2a80:	bf00      	nop
    2a82:	4b29      	ldr	r3, [pc, #164]	; (2b28 <rtc_init+0x140>)
    2a84:	685b      	ldr	r3, [r3, #4]
    2a86:	f003 0320 	and.w	r3, r3, #32
    2a8a:	2b00      	cmp	r3, #0
    2a8c:	d0f9      	beq.n	2a82 <rtc_init+0x9a>
    2a8e:	4a26      	ldr	r2, [pc, #152]	; (2b28 <rtc_init+0x140>)
    2a90:	687b      	ldr	r3, [r7, #4]
    2a92:	03db      	lsls	r3, r3, #15
    2a94:	4925      	ldr	r1, [pc, #148]	; (2b2c <rtc_init+0x144>)
    2a96:	fba1 1303 	umull	r1, r3, r1, r3
    2a9a:	099b      	lsrs	r3, r3, #6
    2a9c:	3b01      	subs	r3, #1
    2a9e:	b29b      	uxth	r3, r3
    2aa0:	60d3      	str	r3, [r2, #12]
    2aa2:	bf00      	nop
    2aa4:	4b20      	ldr	r3, [pc, #128]	; (2b28 <rtc_init+0x140>)
    2aa6:	685b      	ldr	r3, [r3, #4]
    2aa8:	f003 0320 	and.w	r3, r3, #32
    2aac:	2b00      	cmp	r3, #0
    2aae:	d0f9      	beq.n	2aa4 <rtc_init+0xbc>
    2ab0:	4a1d      	ldr	r2, [pc, #116]	; (2b28 <rtc_init+0x140>)
    2ab2:	687b      	ldr	r3, [r7, #4]
    2ab4:	03db      	lsls	r3, r3, #15
    2ab6:	491d      	ldr	r1, [pc, #116]	; (2b2c <rtc_init+0x144>)
    2ab8:	fba1 1303 	umull	r1, r3, r1, r3
    2abc:	099b      	lsrs	r3, r3, #6
    2abe:	3b01      	subs	r3, #1
    2ac0:	0c1b      	lsrs	r3, r3, #16
    2ac2:	f003 030f 	and.w	r3, r3, #15
    2ac6:	6093      	str	r3, [r2, #8]
    2ac8:	bf00      	nop
    2aca:	4b17      	ldr	r3, [pc, #92]	; (2b28 <rtc_init+0x140>)
    2acc:	685b      	ldr	r3, [r3, #4]
    2ace:	f003 0320 	and.w	r3, r3, #32
    2ad2:	2b00      	cmp	r3, #0
    2ad4:	d0f9      	beq.n	2aca <rtc_init+0xe2>
    2ad6:	4b11      	ldr	r3, [pc, #68]	; (2b1c <rtc_init+0x134>)
    2ad8:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2adc:	605a      	str	r2, [r3, #4]
    2ade:	4a12      	ldr	r2, [pc, #72]	; (2b28 <rtc_init+0x140>)
    2ae0:	4b11      	ldr	r3, [pc, #68]	; (2b28 <rtc_init+0x140>)
    2ae2:	685b      	ldr	r3, [r3, #4]
    2ae4:	f023 0310 	bic.w	r3, r3, #16
    2ae8:	6053      	str	r3, [r2, #4]
    2aea:	bf00      	nop
    2aec:	4b0e      	ldr	r3, [pc, #56]	; (2b28 <rtc_init+0x140>)
    2aee:	685b      	ldr	r3, [r3, #4]
    2af0:	f003 0320 	and.w	r3, r3, #32
    2af4:	2b00      	cmp	r3, #0
    2af6:	d0f9      	beq.n	2aec <rtc_init+0x104>
    2af8:	4a0a      	ldr	r2, [pc, #40]	; (2b24 <rtc_init+0x13c>)
    2afa:	4b0a      	ldr	r3, [pc, #40]	; (2b24 <rtc_init+0x13c>)
    2afc:	681b      	ldr	r3, [r3, #0]
    2afe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2b02:	6013      	str	r3, [r2, #0]
    2b04:	210f      	movs	r1, #15
    2b06:	2003      	movs	r0, #3
    2b08:	f7ff fd4a 	bl	25a0 <set_int_priority>
    2b0c:	2003      	movs	r0, #3
    2b0e:	f7ff fc8d 	bl	242c <enable_interrupt>
    2b12:	bf00      	nop
    2b14:	3708      	adds	r7, #8
    2b16:	46bd      	mov	sp, r7
    2b18:	bd80      	pop	{r7, pc}
    2b1a:	bf00      	nop
    2b1c:	40006c00 	.word	0x40006c00
    2b20:	40021000 	.word	0x40021000
    2b24:	40007000 	.word	0x40007000
    2b28:	40002800 	.word	0x40002800
    2b2c:	10624dd3 	.word	0x10624dd3

00002b30 <reset_backup_domain>:
    2b30:	b480      	push	{r7}
    2b32:	af00      	add	r7, sp, #0
    2b34:	4a0a      	ldr	r2, [pc, #40]	; (2b60 <reset_backup_domain+0x30>)
    2b36:	4b0a      	ldr	r3, [pc, #40]	; (2b60 <reset_backup_domain+0x30>)
    2b38:	69db      	ldr	r3, [r3, #28]
    2b3a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2b3e:	61d3      	str	r3, [r2, #28]
    2b40:	4a07      	ldr	r2, [pc, #28]	; (2b60 <reset_backup_domain+0x30>)
    2b42:	4b07      	ldr	r3, [pc, #28]	; (2b60 <reset_backup_domain+0x30>)
    2b44:	6a1b      	ldr	r3, [r3, #32]
    2b46:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2b4a:	6213      	str	r3, [r2, #32]
    2b4c:	4a04      	ldr	r2, [pc, #16]	; (2b60 <reset_backup_domain+0x30>)
    2b4e:	4b04      	ldr	r3, [pc, #16]	; (2b60 <reset_backup_domain+0x30>)
    2b50:	6a1b      	ldr	r3, [r3, #32]
    2b52:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    2b56:	6213      	str	r3, [r2, #32]
    2b58:	bf00      	nop
    2b5a:	46bd      	mov	sp, r7
    2b5c:	bc80      	pop	{r7}
    2b5e:	4770      	bx	lr
    2b60:	40021000 	.word	0x40021000

00002b64 <rtc_clock_trim>:
    2b64:	b480      	push	{r7}
    2b66:	b083      	sub	sp, #12
    2b68:	af00      	add	r7, sp, #0
    2b6a:	6078      	str	r0, [r7, #4]
    2b6c:	4a34      	ldr	r2, [pc, #208]	; (2c40 <rtc_clock_trim+0xdc>)
    2b6e:	4b34      	ldr	r3, [pc, #208]	; (2c40 <rtc_clock_trim+0xdc>)
    2b70:	69db      	ldr	r3, [r3, #28]
    2b72:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2b76:	61d3      	str	r3, [r2, #28]
    2b78:	bf00      	nop
    2b7a:	4b32      	ldr	r3, [pc, #200]	; (2c44 <rtc_clock_trim+0xe0>)
    2b7c:	685b      	ldr	r3, [r3, #4]
    2b7e:	f003 0308 	and.w	r3, r3, #8
    2b82:	2b00      	cmp	r3, #0
    2b84:	d0f9      	beq.n	2b7a <rtc_clock_trim+0x16>
    2b86:	4a30      	ldr	r2, [pc, #192]	; (2c48 <rtc_clock_trim+0xe4>)
    2b88:	4b2f      	ldr	r3, [pc, #188]	; (2c48 <rtc_clock_trim+0xe4>)
    2b8a:	681b      	ldr	r3, [r3, #0]
    2b8c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2b90:	6013      	str	r3, [r2, #0]
    2b92:	4a2c      	ldr	r2, [pc, #176]	; (2c44 <rtc_clock_trim+0xe0>)
    2b94:	4b2b      	ldr	r3, [pc, #172]	; (2c44 <rtc_clock_trim+0xe0>)
    2b96:	685b      	ldr	r3, [r3, #4]
    2b98:	f043 0310 	orr.w	r3, r3, #16
    2b9c:	6053      	str	r3, [r2, #4]
    2b9e:	4a2b      	ldr	r2, [pc, #172]	; (2c4c <rtc_clock_trim+0xe8>)
    2ba0:	4b2a      	ldr	r3, [pc, #168]	; (2c4c <rtc_clock_trim+0xe8>)
    2ba2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2ba4:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2ba8:	62d3      	str	r3, [r2, #44]	; 0x2c
    2baa:	687b      	ldr	r3, [r7, #4]
    2bac:	2b00      	cmp	r3, #0
    2bae:	d10a      	bne.n	2bc6 <rtc_clock_trim+0x62>
    2bb0:	4b26      	ldr	r3, [pc, #152]	; (2c4c <rtc_clock_trim+0xe8>)
    2bb2:	2200      	movs	r2, #0
    2bb4:	62da      	str	r2, [r3, #44]	; 0x2c
    2bb6:	4b23      	ldr	r3, [pc, #140]	; (2c44 <rtc_clock_trim+0xe0>)
    2bb8:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2bbc:	60da      	str	r2, [r3, #12]
    2bbe:	4b21      	ldr	r3, [pc, #132]	; (2c44 <rtc_clock_trim+0xe0>)
    2bc0:	2200      	movs	r2, #0
    2bc2:	609a      	str	r2, [r3, #8]
    2bc4:	e023      	b.n	2c0e <rtc_clock_trim+0xaa>
    2bc6:	687b      	ldr	r3, [r7, #4]
    2bc8:	2b00      	cmp	r3, #0
    2bca:	dd0a      	ble.n	2be2 <rtc_clock_trim+0x7e>
    2bcc:	687b      	ldr	r3, [r7, #4]
    2bce:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2bd2:	607b      	str	r3, [r7, #4]
    2bd4:	491d      	ldr	r1, [pc, #116]	; (2c4c <rtc_clock_trim+0xe8>)
    2bd6:	4b1d      	ldr	r3, [pc, #116]	; (2c4c <rtc_clock_trim+0xe8>)
    2bd8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2bda:	687b      	ldr	r3, [r7, #4]
    2bdc:	4313      	orrs	r3, r2
    2bde:	62cb      	str	r3, [r1, #44]	; 0x2c
    2be0:	e015      	b.n	2c0e <rtc_clock_trim+0xaa>
    2be2:	687b      	ldr	r3, [r7, #4]
    2be4:	425b      	negs	r3, r3
    2be6:	607b      	str	r3, [r7, #4]
    2be8:	687b      	ldr	r3, [r7, #4]
    2bea:	2b7f      	cmp	r3, #127	; 0x7f
    2bec:	dd01      	ble.n	2bf2 <rtc_clock_trim+0x8e>
    2bee:	237f      	movs	r3, #127	; 0x7f
    2bf0:	607b      	str	r3, [r7, #4]
    2bf2:	4b16      	ldr	r3, [pc, #88]	; (2c4c <rtc_clock_trim+0xe8>)
    2bf4:	2200      	movs	r2, #0
    2bf6:	62da      	str	r2, [r3, #44]	; 0x2c
    2bf8:	4a12      	ldr	r2, [pc, #72]	; (2c44 <rtc_clock_trim+0xe0>)
    2bfa:	687b      	ldr	r3, [r7, #4]
    2bfc:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2c00:	33ff      	adds	r3, #255	; 0xff
    2c02:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2c06:	60d3      	str	r3, [r2, #12]
    2c08:	4b0e      	ldr	r3, [pc, #56]	; (2c44 <rtc_clock_trim+0xe0>)
    2c0a:	2200      	movs	r2, #0
    2c0c:	609a      	str	r2, [r3, #8]
    2c0e:	4a0d      	ldr	r2, [pc, #52]	; (2c44 <rtc_clock_trim+0xe0>)
    2c10:	4b0c      	ldr	r3, [pc, #48]	; (2c44 <rtc_clock_trim+0xe0>)
    2c12:	685b      	ldr	r3, [r3, #4]
    2c14:	f023 0310 	bic.w	r3, r3, #16
    2c18:	6053      	str	r3, [r2, #4]
    2c1a:	bf00      	nop
    2c1c:	4b09      	ldr	r3, [pc, #36]	; (2c44 <rtc_clock_trim+0xe0>)
    2c1e:	685b      	ldr	r3, [r3, #4]
    2c20:	f003 0320 	and.w	r3, r3, #32
    2c24:	2b00      	cmp	r3, #0
    2c26:	d0f9      	beq.n	2c1c <rtc_clock_trim+0xb8>
    2c28:	4a07      	ldr	r2, [pc, #28]	; (2c48 <rtc_clock_trim+0xe4>)
    2c2a:	4b07      	ldr	r3, [pc, #28]	; (2c48 <rtc_clock_trim+0xe4>)
    2c2c:	681b      	ldr	r3, [r3, #0]
    2c2e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2c32:	6013      	str	r3, [r2, #0]
    2c34:	bf00      	nop
    2c36:	370c      	adds	r7, #12
    2c38:	46bd      	mov	sp, r7
    2c3a:	bc80      	pop	{r7}
    2c3c:	4770      	bx	lr
    2c3e:	bf00      	nop
    2c40:	40021000 	.word	0x40021000
    2c44:	40002800 	.word	0x40002800
    2c48:	40007000 	.word	0x40007000
    2c4c:	40006c00 	.word	0x40006c00

00002c50 <rtc_set_alarm>:
    2c50:	b480      	push	{r7}
    2c52:	b083      	sub	sp, #12
    2c54:	af00      	add	r7, sp, #0
    2c56:	6078      	str	r0, [r7, #4]
    2c58:	bf00      	nop
    2c5a:	370c      	adds	r7, #12
    2c5c:	46bd      	mov	sp, r7
    2c5e:	bc80      	pop	{r7}
    2c60:	4770      	bx	lr

00002c62 <str_to_date>:
    2c62:	b580      	push	{r7, lr}
    2c64:	b084      	sub	sp, #16
    2c66:	af00      	add	r7, sp, #0
    2c68:	6078      	str	r0, [r7, #4]
    2c6a:	6039      	str	r1, [r7, #0]
    2c6c:	2300      	movs	r3, #0
    2c6e:	60fb      	str	r3, [r7, #12]
    2c70:	2300      	movs	r3, #0
    2c72:	60bb      	str	r3, [r7, #8]
    2c74:	e00f      	b.n	2c96 <str_to_date+0x34>
    2c76:	68ba      	ldr	r2, [r7, #8]
    2c78:	4613      	mov	r3, r2
    2c7a:	009b      	lsls	r3, r3, #2
    2c7c:	4413      	add	r3, r2
    2c7e:	005b      	lsls	r3, r3, #1
    2c80:	4619      	mov	r1, r3
    2c82:	68fb      	ldr	r3, [r7, #12]
    2c84:	1c5a      	adds	r2, r3, #1
    2c86:	60fa      	str	r2, [r7, #12]
    2c88:	461a      	mov	r2, r3
    2c8a:	687b      	ldr	r3, [r7, #4]
    2c8c:	4413      	add	r3, r2
    2c8e:	781b      	ldrb	r3, [r3, #0]
    2c90:	440b      	add	r3, r1
    2c92:	3b30      	subs	r3, #48	; 0x30
    2c94:	60bb      	str	r3, [r7, #8]
    2c96:	68fb      	ldr	r3, [r7, #12]
    2c98:	687a      	ldr	r2, [r7, #4]
    2c9a:	4413      	add	r3, r2
    2c9c:	781b      	ldrb	r3, [r3, #0]
    2c9e:	4618      	mov	r0, r3
    2ca0:	f7fe fc21 	bl	14e6 <digit>
    2ca4:	4603      	mov	r3, r0
    2ca6:	2b00      	cmp	r3, #0
    2ca8:	d1e5      	bne.n	2c76 <str_to_date+0x14>
    2caa:	68fb      	ldr	r3, [r7, #12]
    2cac:	2b03      	cmp	r3, #3
    2cae:	dd05      	ble.n	2cbc <str_to_date+0x5a>
    2cb0:	68fb      	ldr	r3, [r7, #12]
    2cb2:	687a      	ldr	r2, [r7, #4]
    2cb4:	4413      	add	r3, r2
    2cb6:	781b      	ldrb	r3, [r3, #0]
    2cb8:	2b2f      	cmp	r3, #47	; 0x2f
    2cba:	d001      	beq.n	2cc0 <str_to_date+0x5e>
    2cbc:	2300      	movs	r3, #0
    2cbe:	e068      	b.n	2d92 <str_to_date+0x130>
    2cc0:	68bb      	ldr	r3, [r7, #8]
    2cc2:	b29a      	uxth	r2, r3
    2cc4:	683b      	ldr	r3, [r7, #0]
    2cc6:	811a      	strh	r2, [r3, #8]
    2cc8:	68fb      	ldr	r3, [r7, #12]
    2cca:	3301      	adds	r3, #1
    2ccc:	60fb      	str	r3, [r7, #12]
    2cce:	2300      	movs	r3, #0
    2cd0:	60bb      	str	r3, [r7, #8]
    2cd2:	e00f      	b.n	2cf4 <str_to_date+0x92>
    2cd4:	68ba      	ldr	r2, [r7, #8]
    2cd6:	4613      	mov	r3, r2
    2cd8:	009b      	lsls	r3, r3, #2
    2cda:	4413      	add	r3, r2
    2cdc:	005b      	lsls	r3, r3, #1
    2cde:	4619      	mov	r1, r3
    2ce0:	68fb      	ldr	r3, [r7, #12]
    2ce2:	1c5a      	adds	r2, r3, #1
    2ce4:	60fa      	str	r2, [r7, #12]
    2ce6:	461a      	mov	r2, r3
    2ce8:	687b      	ldr	r3, [r7, #4]
    2cea:	4413      	add	r3, r2
    2cec:	781b      	ldrb	r3, [r3, #0]
    2cee:	440b      	add	r3, r1
    2cf0:	3b30      	subs	r3, #48	; 0x30
    2cf2:	60bb      	str	r3, [r7, #8]
    2cf4:	68fb      	ldr	r3, [r7, #12]
    2cf6:	687a      	ldr	r2, [r7, #4]
    2cf8:	4413      	add	r3, r2
    2cfa:	781b      	ldrb	r3, [r3, #0]
    2cfc:	4618      	mov	r0, r3
    2cfe:	f7fe fbf2 	bl	14e6 <digit>
    2d02:	4603      	mov	r3, r0
    2d04:	2b00      	cmp	r3, #0
    2d06:	d1e5      	bne.n	2cd4 <str_to_date+0x72>
    2d08:	68fb      	ldr	r3, [r7, #12]
    2d0a:	2b06      	cmp	r3, #6
    2d0c:	dd05      	ble.n	2d1a <str_to_date+0xb8>
    2d0e:	68fb      	ldr	r3, [r7, #12]
    2d10:	687a      	ldr	r2, [r7, #4]
    2d12:	4413      	add	r3, r2
    2d14:	781b      	ldrb	r3, [r3, #0]
    2d16:	2b2f      	cmp	r3, #47	; 0x2f
    2d18:	d001      	beq.n	2d1e <str_to_date+0xbc>
    2d1a:	2300      	movs	r3, #0
    2d1c:	e039      	b.n	2d92 <str_to_date+0x130>
    2d1e:	68bb      	ldr	r3, [r7, #8]
    2d20:	b2db      	uxtb	r3, r3
    2d22:	f003 030f 	and.w	r3, r3, #15
    2d26:	b2d9      	uxtb	r1, r3
    2d28:	683a      	ldr	r2, [r7, #0]
    2d2a:	8853      	ldrh	r3, [r2, #2]
    2d2c:	f361 1389 	bfi	r3, r1, #6, #4
    2d30:	8053      	strh	r3, [r2, #2]
    2d32:	2300      	movs	r3, #0
    2d34:	60bb      	str	r3, [r7, #8]
    2d36:	68fb      	ldr	r3, [r7, #12]
    2d38:	3301      	adds	r3, #1
    2d3a:	60fb      	str	r3, [r7, #12]
    2d3c:	e00f      	b.n	2d5e <str_to_date+0xfc>
    2d3e:	68ba      	ldr	r2, [r7, #8]
    2d40:	4613      	mov	r3, r2
    2d42:	009b      	lsls	r3, r3, #2
    2d44:	4413      	add	r3, r2
    2d46:	005b      	lsls	r3, r3, #1
    2d48:	4619      	mov	r1, r3
    2d4a:	68fb      	ldr	r3, [r7, #12]
    2d4c:	1c5a      	adds	r2, r3, #1
    2d4e:	60fa      	str	r2, [r7, #12]
    2d50:	461a      	mov	r2, r3
    2d52:	687b      	ldr	r3, [r7, #4]
    2d54:	4413      	add	r3, r2
    2d56:	781b      	ldrb	r3, [r3, #0]
    2d58:	440b      	add	r3, r1
    2d5a:	3b30      	subs	r3, #48	; 0x30
    2d5c:	60bb      	str	r3, [r7, #8]
    2d5e:	68fb      	ldr	r3, [r7, #12]
    2d60:	687a      	ldr	r2, [r7, #4]
    2d62:	4413      	add	r3, r2
    2d64:	781b      	ldrb	r3, [r3, #0]
    2d66:	4618      	mov	r0, r3
    2d68:	f7fe fbbd 	bl	14e6 <digit>
    2d6c:	4603      	mov	r3, r0
    2d6e:	2b00      	cmp	r3, #0
    2d70:	d1e5      	bne.n	2d3e <str_to_date+0xdc>
    2d72:	68fb      	ldr	r3, [r7, #12]
    2d74:	2b09      	cmp	r3, #9
    2d76:	dc01      	bgt.n	2d7c <str_to_date+0x11a>
    2d78:	2300      	movs	r3, #0
    2d7a:	e00a      	b.n	2d92 <str_to_date+0x130>
    2d7c:	68bb      	ldr	r3, [r7, #8]
    2d7e:	b2db      	uxtb	r3, r3
    2d80:	f003 031f 	and.w	r3, r3, #31
    2d84:	b2d9      	uxtb	r1, r3
    2d86:	683a      	ldr	r2, [r7, #0]
    2d88:	7893      	ldrb	r3, [r2, #2]
    2d8a:	f361 0345 	bfi	r3, r1, #1, #5
    2d8e:	7093      	strb	r3, [r2, #2]
    2d90:	2301      	movs	r3, #1
    2d92:	4618      	mov	r0, r3
    2d94:	3710      	adds	r7, #16
    2d96:	46bd      	mov	sp, r7
    2d98:	bd80      	pop	{r7, pc}

00002d9a <str_to_time>:
    2d9a:	b580      	push	{r7, lr}
    2d9c:	b084      	sub	sp, #16
    2d9e:	af00      	add	r7, sp, #0
    2da0:	6078      	str	r0, [r7, #4]
    2da2:	6039      	str	r1, [r7, #0]
    2da4:	2300      	movs	r3, #0
    2da6:	60fb      	str	r3, [r7, #12]
    2da8:	2300      	movs	r3, #0
    2daa:	72fb      	strb	r3, [r7, #11]
    2dac:	e010      	b.n	2dd0 <str_to_time+0x36>
    2dae:	7afb      	ldrb	r3, [r7, #11]
    2db0:	461a      	mov	r2, r3
    2db2:	0092      	lsls	r2, r2, #2
    2db4:	4413      	add	r3, r2
    2db6:	005b      	lsls	r3, r3, #1
    2db8:	b2da      	uxtb	r2, r3
    2dba:	68fb      	ldr	r3, [r7, #12]
    2dbc:	1c59      	adds	r1, r3, #1
    2dbe:	60f9      	str	r1, [r7, #12]
    2dc0:	4619      	mov	r1, r3
    2dc2:	687b      	ldr	r3, [r7, #4]
    2dc4:	440b      	add	r3, r1
    2dc6:	781b      	ldrb	r3, [r3, #0]
    2dc8:	4413      	add	r3, r2
    2dca:	b2db      	uxtb	r3, r3
    2dcc:	3b30      	subs	r3, #48	; 0x30
    2dce:	72fb      	strb	r3, [r7, #11]
    2dd0:	68fb      	ldr	r3, [r7, #12]
    2dd2:	687a      	ldr	r2, [r7, #4]
    2dd4:	4413      	add	r3, r2
    2dd6:	781b      	ldrb	r3, [r3, #0]
    2dd8:	4618      	mov	r0, r3
    2dda:	f7fe fb84 	bl	14e6 <digit>
    2dde:	4603      	mov	r3, r0
    2de0:	2b00      	cmp	r3, #0
    2de2:	d1e4      	bne.n	2dae <str_to_time+0x14>
    2de4:	7afb      	ldrb	r3, [r7, #11]
    2de6:	2b17      	cmp	r3, #23
    2de8:	d805      	bhi.n	2df6 <str_to_time+0x5c>
    2dea:	68fb      	ldr	r3, [r7, #12]
    2dec:	687a      	ldr	r2, [r7, #4]
    2dee:	4413      	add	r3, r2
    2df0:	781b      	ldrb	r3, [r3, #0]
    2df2:	2b3a      	cmp	r3, #58	; 0x3a
    2df4:	d001      	beq.n	2dfa <str_to_time+0x60>
    2df6:	2300      	movs	r3, #0
    2df8:	e06d      	b.n	2ed6 <str_to_time+0x13c>
    2dfa:	7afb      	ldrb	r3, [r7, #11]
    2dfc:	f003 031f 	and.w	r3, r3, #31
    2e00:	b2d9      	uxtb	r1, r3
    2e02:	683a      	ldr	r2, [r7, #0]
    2e04:	6813      	ldr	r3, [r2, #0]
    2e06:	f361 3310 	bfi	r3, r1, #12, #5
    2e0a:	6013      	str	r3, [r2, #0]
    2e0c:	68fb      	ldr	r3, [r7, #12]
    2e0e:	3301      	adds	r3, #1
    2e10:	60fb      	str	r3, [r7, #12]
    2e12:	2300      	movs	r3, #0
    2e14:	72fb      	strb	r3, [r7, #11]
    2e16:	e010      	b.n	2e3a <str_to_time+0xa0>
    2e18:	7afb      	ldrb	r3, [r7, #11]
    2e1a:	461a      	mov	r2, r3
    2e1c:	0092      	lsls	r2, r2, #2
    2e1e:	4413      	add	r3, r2
    2e20:	005b      	lsls	r3, r3, #1
    2e22:	b2da      	uxtb	r2, r3
    2e24:	68fb      	ldr	r3, [r7, #12]
    2e26:	1c59      	adds	r1, r3, #1
    2e28:	60f9      	str	r1, [r7, #12]
    2e2a:	4619      	mov	r1, r3
    2e2c:	687b      	ldr	r3, [r7, #4]
    2e2e:	440b      	add	r3, r1
    2e30:	781b      	ldrb	r3, [r3, #0]
    2e32:	4413      	add	r3, r2
    2e34:	b2db      	uxtb	r3, r3
    2e36:	3b30      	subs	r3, #48	; 0x30
    2e38:	72fb      	strb	r3, [r7, #11]
    2e3a:	68fb      	ldr	r3, [r7, #12]
    2e3c:	687a      	ldr	r2, [r7, #4]
    2e3e:	4413      	add	r3, r2
    2e40:	781b      	ldrb	r3, [r3, #0]
    2e42:	4618      	mov	r0, r3
    2e44:	f7fe fb4f 	bl	14e6 <digit>
    2e48:	4603      	mov	r3, r0
    2e4a:	2b00      	cmp	r3, #0
    2e4c:	d1e4      	bne.n	2e18 <str_to_time+0x7e>
    2e4e:	7afb      	ldrb	r3, [r7, #11]
    2e50:	2b3b      	cmp	r3, #59	; 0x3b
    2e52:	d805      	bhi.n	2e60 <str_to_time+0xc6>
    2e54:	68fb      	ldr	r3, [r7, #12]
    2e56:	687a      	ldr	r2, [r7, #4]
    2e58:	4413      	add	r3, r2
    2e5a:	781b      	ldrb	r3, [r3, #0]
    2e5c:	2b3a      	cmp	r3, #58	; 0x3a
    2e5e:	d001      	beq.n	2e64 <str_to_time+0xca>
    2e60:	2300      	movs	r3, #0
    2e62:	e038      	b.n	2ed6 <str_to_time+0x13c>
    2e64:	7afb      	ldrb	r3, [r7, #11]
    2e66:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2e6a:	b2d9      	uxtb	r1, r3
    2e6c:	683a      	ldr	r2, [r7, #0]
    2e6e:	8813      	ldrh	r3, [r2, #0]
    2e70:	f361 138b 	bfi	r3, r1, #6, #6
    2e74:	8013      	strh	r3, [r2, #0]
    2e76:	2300      	movs	r3, #0
    2e78:	72fb      	strb	r3, [r7, #11]
    2e7a:	68fb      	ldr	r3, [r7, #12]
    2e7c:	3301      	adds	r3, #1
    2e7e:	60fb      	str	r3, [r7, #12]
    2e80:	e010      	b.n	2ea4 <str_to_time+0x10a>
    2e82:	7afb      	ldrb	r3, [r7, #11]
    2e84:	461a      	mov	r2, r3
    2e86:	0092      	lsls	r2, r2, #2
    2e88:	4413      	add	r3, r2
    2e8a:	005b      	lsls	r3, r3, #1
    2e8c:	b2da      	uxtb	r2, r3
    2e8e:	68fb      	ldr	r3, [r7, #12]
    2e90:	1c59      	adds	r1, r3, #1
    2e92:	60f9      	str	r1, [r7, #12]
    2e94:	4619      	mov	r1, r3
    2e96:	687b      	ldr	r3, [r7, #4]
    2e98:	440b      	add	r3, r1
    2e9a:	781b      	ldrb	r3, [r3, #0]
    2e9c:	4413      	add	r3, r2
    2e9e:	b2db      	uxtb	r3, r3
    2ea0:	3b30      	subs	r3, #48	; 0x30
    2ea2:	72fb      	strb	r3, [r7, #11]
    2ea4:	68fb      	ldr	r3, [r7, #12]
    2ea6:	687a      	ldr	r2, [r7, #4]
    2ea8:	4413      	add	r3, r2
    2eaa:	781b      	ldrb	r3, [r3, #0]
    2eac:	4618      	mov	r0, r3
    2eae:	f7fe fb1a 	bl	14e6 <digit>
    2eb2:	4603      	mov	r3, r0
    2eb4:	2b00      	cmp	r3, #0
    2eb6:	d1e4      	bne.n	2e82 <str_to_time+0xe8>
    2eb8:	7afb      	ldrb	r3, [r7, #11]
    2eba:	2b3b      	cmp	r3, #59	; 0x3b
    2ebc:	d901      	bls.n	2ec2 <str_to_time+0x128>
    2ebe:	2300      	movs	r3, #0
    2ec0:	e009      	b.n	2ed6 <str_to_time+0x13c>
    2ec2:	7afb      	ldrb	r3, [r7, #11]
    2ec4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2ec8:	b2d9      	uxtb	r1, r3
    2eca:	683a      	ldr	r2, [r7, #0]
    2ecc:	7813      	ldrb	r3, [r2, #0]
    2ece:	f361 0305 	bfi	r3, r1, #0, #6
    2ed2:	7013      	strb	r3, [r2, #0]
    2ed4:	2301      	movs	r3, #1
    2ed6:	4618      	mov	r0, r3
    2ed8:	3710      	adds	r7, #16
    2eda:	46bd      	mov	sp, r7
    2edc:	bd80      	pop	{r7, pc}

00002ede <date_str>:
    2ede:	b480      	push	{r7}
    2ee0:	b085      	sub	sp, #20
    2ee2:	af00      	add	r7, sp, #0
    2ee4:	6078      	str	r0, [r7, #4]
    2ee6:	6039      	str	r1, [r7, #0]
    2ee8:	2300      	movs	r3, #0
    2eea:	60fb      	str	r3, [r7, #12]
    2eec:	687b      	ldr	r3, [r7, #4]
    2eee:	891b      	ldrh	r3, [r3, #8]
    2ef0:	60bb      	str	r3, [r7, #8]
    2ef2:	68fb      	ldr	r3, [r7, #12]
    2ef4:	1c5a      	adds	r2, r3, #1
    2ef6:	60fa      	str	r2, [r7, #12]
    2ef8:	461a      	mov	r2, r3
    2efa:	683b      	ldr	r3, [r7, #0]
    2efc:	4413      	add	r3, r2
    2efe:	68ba      	ldr	r2, [r7, #8]
    2f00:	495d      	ldr	r1, [pc, #372]	; (3078 <date_str+0x19a>)
    2f02:	fba1 1202 	umull	r1, r2, r1, r2
    2f06:	0992      	lsrs	r2, r2, #6
    2f08:	b2d2      	uxtb	r2, r2
    2f0a:	3230      	adds	r2, #48	; 0x30
    2f0c:	b2d2      	uxtb	r2, r2
    2f0e:	701a      	strb	r2, [r3, #0]
    2f10:	68bb      	ldr	r3, [r7, #8]
    2f12:	4a59      	ldr	r2, [pc, #356]	; (3078 <date_str+0x19a>)
    2f14:	fba2 1203 	umull	r1, r2, r2, r3
    2f18:	0992      	lsrs	r2, r2, #6
    2f1a:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    2f1e:	fb01 f202 	mul.w	r2, r1, r2
    2f22:	1a9b      	subs	r3, r3, r2
    2f24:	60bb      	str	r3, [r7, #8]
    2f26:	68fb      	ldr	r3, [r7, #12]
    2f28:	1c5a      	adds	r2, r3, #1
    2f2a:	60fa      	str	r2, [r7, #12]
    2f2c:	461a      	mov	r2, r3
    2f2e:	683b      	ldr	r3, [r7, #0]
    2f30:	4413      	add	r3, r2
    2f32:	68ba      	ldr	r2, [r7, #8]
    2f34:	4951      	ldr	r1, [pc, #324]	; (307c <date_str+0x19e>)
    2f36:	fba1 1202 	umull	r1, r2, r1, r2
    2f3a:	0952      	lsrs	r2, r2, #5
    2f3c:	b2d2      	uxtb	r2, r2
    2f3e:	3230      	adds	r2, #48	; 0x30
    2f40:	b2d2      	uxtb	r2, r2
    2f42:	701a      	strb	r2, [r3, #0]
    2f44:	68bb      	ldr	r3, [r7, #8]
    2f46:	4a4d      	ldr	r2, [pc, #308]	; (307c <date_str+0x19e>)
    2f48:	fba2 1203 	umull	r1, r2, r2, r3
    2f4c:	0952      	lsrs	r2, r2, #5
    2f4e:	2164      	movs	r1, #100	; 0x64
    2f50:	fb01 f202 	mul.w	r2, r1, r2
    2f54:	1a9b      	subs	r3, r3, r2
    2f56:	60bb      	str	r3, [r7, #8]
    2f58:	68fb      	ldr	r3, [r7, #12]
    2f5a:	1c5a      	adds	r2, r3, #1
    2f5c:	60fa      	str	r2, [r7, #12]
    2f5e:	461a      	mov	r2, r3
    2f60:	683b      	ldr	r3, [r7, #0]
    2f62:	4413      	add	r3, r2
    2f64:	68ba      	ldr	r2, [r7, #8]
    2f66:	4946      	ldr	r1, [pc, #280]	; (3080 <date_str+0x1a2>)
    2f68:	fba1 1202 	umull	r1, r2, r1, r2
    2f6c:	08d2      	lsrs	r2, r2, #3
    2f6e:	b2d2      	uxtb	r2, r2
    2f70:	3230      	adds	r2, #48	; 0x30
    2f72:	b2d2      	uxtb	r2, r2
    2f74:	701a      	strb	r2, [r3, #0]
    2f76:	68fb      	ldr	r3, [r7, #12]
    2f78:	1c5a      	adds	r2, r3, #1
    2f7a:	60fa      	str	r2, [r7, #12]
    2f7c:	461a      	mov	r2, r3
    2f7e:	683b      	ldr	r3, [r7, #0]
    2f80:	1898      	adds	r0, r3, r2
    2f82:	68b9      	ldr	r1, [r7, #8]
    2f84:	4b3e      	ldr	r3, [pc, #248]	; (3080 <date_str+0x1a2>)
    2f86:	fba3 2301 	umull	r2, r3, r3, r1
    2f8a:	08da      	lsrs	r2, r3, #3
    2f8c:	4613      	mov	r3, r2
    2f8e:	009b      	lsls	r3, r3, #2
    2f90:	4413      	add	r3, r2
    2f92:	005b      	lsls	r3, r3, #1
    2f94:	1aca      	subs	r2, r1, r3
    2f96:	b2d3      	uxtb	r3, r2
    2f98:	3330      	adds	r3, #48	; 0x30
    2f9a:	b2db      	uxtb	r3, r3
    2f9c:	7003      	strb	r3, [r0, #0]
    2f9e:	68fb      	ldr	r3, [r7, #12]
    2fa0:	1c5a      	adds	r2, r3, #1
    2fa2:	60fa      	str	r2, [r7, #12]
    2fa4:	461a      	mov	r2, r3
    2fa6:	683b      	ldr	r3, [r7, #0]
    2fa8:	4413      	add	r3, r2
    2faa:	222f      	movs	r2, #47	; 0x2f
    2fac:	701a      	strb	r2, [r3, #0]
    2fae:	687b      	ldr	r3, [r7, #4]
    2fb0:	885b      	ldrh	r3, [r3, #2]
    2fb2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2fb6:	b2db      	uxtb	r3, r3
    2fb8:	60bb      	str	r3, [r7, #8]
    2fba:	68fb      	ldr	r3, [r7, #12]
    2fbc:	1c5a      	adds	r2, r3, #1
    2fbe:	60fa      	str	r2, [r7, #12]
    2fc0:	461a      	mov	r2, r3
    2fc2:	683b      	ldr	r3, [r7, #0]
    2fc4:	4413      	add	r3, r2
    2fc6:	68ba      	ldr	r2, [r7, #8]
    2fc8:	492d      	ldr	r1, [pc, #180]	; (3080 <date_str+0x1a2>)
    2fca:	fba1 1202 	umull	r1, r2, r1, r2
    2fce:	08d2      	lsrs	r2, r2, #3
    2fd0:	b2d2      	uxtb	r2, r2
    2fd2:	3230      	adds	r2, #48	; 0x30
    2fd4:	b2d2      	uxtb	r2, r2
    2fd6:	701a      	strb	r2, [r3, #0]
    2fd8:	68fb      	ldr	r3, [r7, #12]
    2fda:	1c5a      	adds	r2, r3, #1
    2fdc:	60fa      	str	r2, [r7, #12]
    2fde:	461a      	mov	r2, r3
    2fe0:	683b      	ldr	r3, [r7, #0]
    2fe2:	1898      	adds	r0, r3, r2
    2fe4:	68b9      	ldr	r1, [r7, #8]
    2fe6:	4b26      	ldr	r3, [pc, #152]	; (3080 <date_str+0x1a2>)
    2fe8:	fba3 2301 	umull	r2, r3, r3, r1
    2fec:	08da      	lsrs	r2, r3, #3
    2fee:	4613      	mov	r3, r2
    2ff0:	009b      	lsls	r3, r3, #2
    2ff2:	4413      	add	r3, r2
    2ff4:	005b      	lsls	r3, r3, #1
    2ff6:	1aca      	subs	r2, r1, r3
    2ff8:	b2d3      	uxtb	r3, r2
    2ffa:	3330      	adds	r3, #48	; 0x30
    2ffc:	b2db      	uxtb	r3, r3
    2ffe:	7003      	strb	r3, [r0, #0]
    3000:	68fb      	ldr	r3, [r7, #12]
    3002:	1c5a      	adds	r2, r3, #1
    3004:	60fa      	str	r2, [r7, #12]
    3006:	461a      	mov	r2, r3
    3008:	683b      	ldr	r3, [r7, #0]
    300a:	4413      	add	r3, r2
    300c:	222f      	movs	r2, #47	; 0x2f
    300e:	701a      	strb	r2, [r3, #0]
    3010:	687b      	ldr	r3, [r7, #4]
    3012:	789b      	ldrb	r3, [r3, #2]
    3014:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3018:	b2db      	uxtb	r3, r3
    301a:	60bb      	str	r3, [r7, #8]
    301c:	68fb      	ldr	r3, [r7, #12]
    301e:	1c5a      	adds	r2, r3, #1
    3020:	60fa      	str	r2, [r7, #12]
    3022:	461a      	mov	r2, r3
    3024:	683b      	ldr	r3, [r7, #0]
    3026:	4413      	add	r3, r2
    3028:	68ba      	ldr	r2, [r7, #8]
    302a:	4915      	ldr	r1, [pc, #84]	; (3080 <date_str+0x1a2>)
    302c:	fba1 1202 	umull	r1, r2, r1, r2
    3030:	08d2      	lsrs	r2, r2, #3
    3032:	b2d2      	uxtb	r2, r2
    3034:	3230      	adds	r2, #48	; 0x30
    3036:	b2d2      	uxtb	r2, r2
    3038:	701a      	strb	r2, [r3, #0]
    303a:	68fb      	ldr	r3, [r7, #12]
    303c:	1c5a      	adds	r2, r3, #1
    303e:	60fa      	str	r2, [r7, #12]
    3040:	461a      	mov	r2, r3
    3042:	683b      	ldr	r3, [r7, #0]
    3044:	1898      	adds	r0, r3, r2
    3046:	68b9      	ldr	r1, [r7, #8]
    3048:	4b0d      	ldr	r3, [pc, #52]	; (3080 <date_str+0x1a2>)
    304a:	fba3 2301 	umull	r2, r3, r3, r1
    304e:	08da      	lsrs	r2, r3, #3
    3050:	4613      	mov	r3, r2
    3052:	009b      	lsls	r3, r3, #2
    3054:	4413      	add	r3, r2
    3056:	005b      	lsls	r3, r3, #1
    3058:	1aca      	subs	r2, r1, r3
    305a:	b2d3      	uxtb	r3, r2
    305c:	3330      	adds	r3, #48	; 0x30
    305e:	b2db      	uxtb	r3, r3
    3060:	7003      	strb	r3, [r0, #0]
    3062:	68fb      	ldr	r3, [r7, #12]
    3064:	683a      	ldr	r2, [r7, #0]
    3066:	4413      	add	r3, r2
    3068:	2200      	movs	r2, #0
    306a:	701a      	strb	r2, [r3, #0]
    306c:	bf00      	nop
    306e:	3714      	adds	r7, #20
    3070:	46bd      	mov	sp, r7
    3072:	bc80      	pop	{r7}
    3074:	4770      	bx	lr
    3076:	bf00      	nop
    3078:	10624dd3 	.word	0x10624dd3
    307c:	51eb851f 	.word	0x51eb851f
    3080:	cccccccd 	.word	0xcccccccd

00003084 <time_str>:
    3084:	b480      	push	{r7}
    3086:	b085      	sub	sp, #20
    3088:	af00      	add	r7, sp, #0
    308a:	6078      	str	r0, [r7, #4]
    308c:	6039      	str	r1, [r7, #0]
    308e:	2300      	movs	r3, #0
    3090:	60fb      	str	r3, [r7, #12]
    3092:	687b      	ldr	r3, [r7, #4]
    3094:	681b      	ldr	r3, [r3, #0]
    3096:	f3c3 3304 	ubfx	r3, r3, #12, #5
    309a:	b2db      	uxtb	r3, r3
    309c:	60bb      	str	r3, [r7, #8]
    309e:	68fb      	ldr	r3, [r7, #12]
    30a0:	1c5a      	adds	r2, r3, #1
    30a2:	60fa      	str	r2, [r7, #12]
    30a4:	461a      	mov	r2, r3
    30a6:	683b      	ldr	r3, [r7, #0]
    30a8:	4413      	add	r3, r2
    30aa:	68ba      	ldr	r2, [r7, #8]
    30ac:	4943      	ldr	r1, [pc, #268]	; (31bc <time_str+0x138>)
    30ae:	fba1 1202 	umull	r1, r2, r1, r2
    30b2:	08d2      	lsrs	r2, r2, #3
    30b4:	b2d2      	uxtb	r2, r2
    30b6:	3230      	adds	r2, #48	; 0x30
    30b8:	b2d2      	uxtb	r2, r2
    30ba:	701a      	strb	r2, [r3, #0]
    30bc:	68fb      	ldr	r3, [r7, #12]
    30be:	1c5a      	adds	r2, r3, #1
    30c0:	60fa      	str	r2, [r7, #12]
    30c2:	461a      	mov	r2, r3
    30c4:	683b      	ldr	r3, [r7, #0]
    30c6:	1898      	adds	r0, r3, r2
    30c8:	68b9      	ldr	r1, [r7, #8]
    30ca:	4b3c      	ldr	r3, [pc, #240]	; (31bc <time_str+0x138>)
    30cc:	fba3 2301 	umull	r2, r3, r3, r1
    30d0:	08da      	lsrs	r2, r3, #3
    30d2:	4613      	mov	r3, r2
    30d4:	009b      	lsls	r3, r3, #2
    30d6:	4413      	add	r3, r2
    30d8:	005b      	lsls	r3, r3, #1
    30da:	1aca      	subs	r2, r1, r3
    30dc:	b2d3      	uxtb	r3, r2
    30de:	3330      	adds	r3, #48	; 0x30
    30e0:	b2db      	uxtb	r3, r3
    30e2:	7003      	strb	r3, [r0, #0]
    30e4:	68fb      	ldr	r3, [r7, #12]
    30e6:	1c5a      	adds	r2, r3, #1
    30e8:	60fa      	str	r2, [r7, #12]
    30ea:	461a      	mov	r2, r3
    30ec:	683b      	ldr	r3, [r7, #0]
    30ee:	4413      	add	r3, r2
    30f0:	223a      	movs	r2, #58	; 0x3a
    30f2:	701a      	strb	r2, [r3, #0]
    30f4:	687b      	ldr	r3, [r7, #4]
    30f6:	881b      	ldrh	r3, [r3, #0]
    30f8:	f3c3 1385 	ubfx	r3, r3, #6, #6
    30fc:	b2db      	uxtb	r3, r3
    30fe:	60bb      	str	r3, [r7, #8]
    3100:	68fb      	ldr	r3, [r7, #12]
    3102:	1c5a      	adds	r2, r3, #1
    3104:	60fa      	str	r2, [r7, #12]
    3106:	461a      	mov	r2, r3
    3108:	683b      	ldr	r3, [r7, #0]
    310a:	4413      	add	r3, r2
    310c:	68ba      	ldr	r2, [r7, #8]
    310e:	492b      	ldr	r1, [pc, #172]	; (31bc <time_str+0x138>)
    3110:	fba1 1202 	umull	r1, r2, r1, r2
    3114:	08d2      	lsrs	r2, r2, #3
    3116:	b2d2      	uxtb	r2, r2
    3118:	3230      	adds	r2, #48	; 0x30
    311a:	b2d2      	uxtb	r2, r2
    311c:	701a      	strb	r2, [r3, #0]
    311e:	68fb      	ldr	r3, [r7, #12]
    3120:	1c5a      	adds	r2, r3, #1
    3122:	60fa      	str	r2, [r7, #12]
    3124:	461a      	mov	r2, r3
    3126:	683b      	ldr	r3, [r7, #0]
    3128:	1898      	adds	r0, r3, r2
    312a:	68b9      	ldr	r1, [r7, #8]
    312c:	4b23      	ldr	r3, [pc, #140]	; (31bc <time_str+0x138>)
    312e:	fba3 2301 	umull	r2, r3, r3, r1
    3132:	08da      	lsrs	r2, r3, #3
    3134:	4613      	mov	r3, r2
    3136:	009b      	lsls	r3, r3, #2
    3138:	4413      	add	r3, r2
    313a:	005b      	lsls	r3, r3, #1
    313c:	1aca      	subs	r2, r1, r3
    313e:	b2d3      	uxtb	r3, r2
    3140:	3330      	adds	r3, #48	; 0x30
    3142:	b2db      	uxtb	r3, r3
    3144:	7003      	strb	r3, [r0, #0]
    3146:	68fb      	ldr	r3, [r7, #12]
    3148:	1c5a      	adds	r2, r3, #1
    314a:	60fa      	str	r2, [r7, #12]
    314c:	461a      	mov	r2, r3
    314e:	683b      	ldr	r3, [r7, #0]
    3150:	4413      	add	r3, r2
    3152:	223a      	movs	r2, #58	; 0x3a
    3154:	701a      	strb	r2, [r3, #0]
    3156:	687b      	ldr	r3, [r7, #4]
    3158:	781b      	ldrb	r3, [r3, #0]
    315a:	f3c3 0305 	ubfx	r3, r3, #0, #6
    315e:	b2db      	uxtb	r3, r3
    3160:	60bb      	str	r3, [r7, #8]
    3162:	68fb      	ldr	r3, [r7, #12]
    3164:	1c5a      	adds	r2, r3, #1
    3166:	60fa      	str	r2, [r7, #12]
    3168:	461a      	mov	r2, r3
    316a:	683b      	ldr	r3, [r7, #0]
    316c:	4413      	add	r3, r2
    316e:	68ba      	ldr	r2, [r7, #8]
    3170:	4912      	ldr	r1, [pc, #72]	; (31bc <time_str+0x138>)
    3172:	fba1 1202 	umull	r1, r2, r1, r2
    3176:	08d2      	lsrs	r2, r2, #3
    3178:	b2d2      	uxtb	r2, r2
    317a:	3230      	adds	r2, #48	; 0x30
    317c:	b2d2      	uxtb	r2, r2
    317e:	701a      	strb	r2, [r3, #0]
    3180:	68fb      	ldr	r3, [r7, #12]
    3182:	1c5a      	adds	r2, r3, #1
    3184:	60fa      	str	r2, [r7, #12]
    3186:	461a      	mov	r2, r3
    3188:	683b      	ldr	r3, [r7, #0]
    318a:	1898      	adds	r0, r3, r2
    318c:	68b9      	ldr	r1, [r7, #8]
    318e:	4b0b      	ldr	r3, [pc, #44]	; (31bc <time_str+0x138>)
    3190:	fba3 2301 	umull	r2, r3, r3, r1
    3194:	08da      	lsrs	r2, r3, #3
    3196:	4613      	mov	r3, r2
    3198:	009b      	lsls	r3, r3, #2
    319a:	4413      	add	r3, r2
    319c:	005b      	lsls	r3, r3, #1
    319e:	1aca      	subs	r2, r1, r3
    31a0:	b2d3      	uxtb	r3, r2
    31a2:	3330      	adds	r3, #48	; 0x30
    31a4:	b2db      	uxtb	r3, r3
    31a6:	7003      	strb	r3, [r0, #0]
    31a8:	68fb      	ldr	r3, [r7, #12]
    31aa:	683a      	ldr	r2, [r7, #0]
    31ac:	4413      	add	r3, r2
    31ae:	2200      	movs	r2, #0
    31b0:	701a      	strb	r2, [r3, #0]
    31b2:	bf00      	nop
    31b4:	3714      	adds	r7, #20
    31b6:	46bd      	mov	sp, r7
    31b8:	bc80      	pop	{r7}
    31ba:	4770      	bx	lr
    31bc:	cccccccd 	.word	0xcccccccd

000031c0 <get_fattime>:
    31c0:	b580      	push	{r7, lr}
    31c2:	b084      	sub	sp, #16
    31c4:	af00      	add	r7, sp, #0
    31c6:	463b      	mov	r3, r7
    31c8:	4618      	mov	r0, r3
    31ca:	f7ff fa69 	bl	26a0 <get_date_time>
    31ce:	783b      	ldrb	r3, [r7, #0]
    31d0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    31d4:	b2db      	uxtb	r3, r3
    31d6:	0fda      	lsrs	r2, r3, #31
    31d8:	4413      	add	r3, r2
    31da:	105b      	asrs	r3, r3, #1
    31dc:	b2db      	uxtb	r3, r3
    31de:	f003 031f 	and.w	r3, r3, #31
    31e2:	b2da      	uxtb	r2, r3
    31e4:	7b3b      	ldrb	r3, [r7, #12]
    31e6:	f362 0304 	bfi	r3, r2, #0, #5
    31ea:	733b      	strb	r3, [r7, #12]
    31ec:	883b      	ldrh	r3, [r7, #0]
    31ee:	f3c3 1385 	ubfx	r3, r3, #6, #6
    31f2:	b2da      	uxtb	r2, r3
    31f4:	89bb      	ldrh	r3, [r7, #12]
    31f6:	f362 134a 	bfi	r3, r2, #5, #6
    31fa:	81bb      	strh	r3, [r7, #12]
    31fc:	683b      	ldr	r3, [r7, #0]
    31fe:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3202:	b2da      	uxtb	r2, r3
    3204:	7b7b      	ldrb	r3, [r7, #13]
    3206:	f362 03c7 	bfi	r3, r2, #3, #5
    320a:	737b      	strb	r3, [r7, #13]
    320c:	78bb      	ldrb	r3, [r7, #2]
    320e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3212:	b2da      	uxtb	r2, r3
    3214:	7bbb      	ldrb	r3, [r7, #14]
    3216:	f362 0304 	bfi	r3, r2, #0, #5
    321a:	73bb      	strb	r3, [r7, #14]
    321c:	887b      	ldrh	r3, [r7, #2]
    321e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3222:	b2da      	uxtb	r2, r3
    3224:	89fb      	ldrh	r3, [r7, #14]
    3226:	f362 1348 	bfi	r3, r2, #5, #4
    322a:	81fb      	strh	r3, [r7, #14]
    322c:	893b      	ldrh	r3, [r7, #8]
    322e:	b2db      	uxtb	r3, r3
    3230:	3344      	adds	r3, #68	; 0x44
    3232:	b2db      	uxtb	r3, r3
    3234:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3238:	b2da      	uxtb	r2, r3
    323a:	7bfb      	ldrb	r3, [r7, #15]
    323c:	f362 0347 	bfi	r3, r2, #1, #7
    3240:	73fb      	strb	r3, [r7, #15]
    3242:	68fb      	ldr	r3, [r7, #12]
    3244:	4618      	mov	r0, r3
    3246:	3710      	adds	r7, #16
    3248:	46bd      	mov	sp, r7
    324a:	bd80      	pop	{r7, pc}

0000324c <RTC_handler>:
    324c:	b480      	push	{r7}
    324e:	b083      	sub	sp, #12
    3250:	af00      	add	r7, sp, #0
    3252:	4b0a      	ldr	r3, [pc, #40]	; (327c <RTC_handler+0x30>)
    3254:	685b      	ldr	r3, [r3, #4]
    3256:	f003 0301 	and.w	r3, r3, #1
    325a:	2b00      	cmp	r3, #0
    325c:	d001      	beq.n	3262 <RTC_handler+0x16>
    325e:	4b07      	ldr	r3, [pc, #28]	; (327c <RTC_handler+0x30>)
    3260:	685b      	ldr	r3, [r3, #4]
    3262:	4b06      	ldr	r3, [pc, #24]	; (327c <RTC_handler+0x30>)
    3264:	685b      	ldr	r3, [r3, #4]
    3266:	f003 0302 	and.w	r3, r3, #2
    326a:	2b00      	cmp	r3, #0
    326c:	d001      	beq.n	3272 <RTC_handler+0x26>
    326e:	4b03      	ldr	r3, [pc, #12]	; (327c <RTC_handler+0x30>)
    3270:	685b      	ldr	r3, [r3, #4]
    3272:	bf00      	nop
    3274:	370c      	adds	r7, #12
    3276:	46bd      	mov	sp, r7
    3278:	bc80      	pop	{r7}
    327a:	4770      	bx	lr
    327c:	40002800 	.word	0x40002800

00003280 <spi_baudrate>:
    3280:	b480      	push	{r7}
    3282:	b083      	sub	sp, #12
    3284:	af00      	add	r7, sp, #0
    3286:	6078      	str	r0, [r7, #4]
    3288:	6039      	str	r1, [r7, #0]
    328a:	687b      	ldr	r3, [r7, #4]
    328c:	681b      	ldr	r3, [r3, #0]
    328e:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    3292:	687b      	ldr	r3, [r7, #4]
    3294:	601a      	str	r2, [r3, #0]
    3296:	687b      	ldr	r3, [r7, #4]
    3298:	681a      	ldr	r2, [r3, #0]
    329a:	683b      	ldr	r3, [r7, #0]
    329c:	00db      	lsls	r3, r3, #3
    329e:	431a      	orrs	r2, r3
    32a0:	687b      	ldr	r3, [r7, #4]
    32a2:	601a      	str	r2, [r3, #0]
    32a4:	bf00      	nop
    32a6:	370c      	adds	r7, #12
    32a8:	46bd      	mov	sp, r7
    32aa:	bc80      	pop	{r7}
    32ac:	4770      	bx	lr

000032ae <spi_config_port>:
    32ae:	b580      	push	{r7, lr}
    32b0:	b082      	sub	sp, #8
    32b2:	af00      	add	r7, sp, #0
    32b4:	6078      	str	r0, [r7, #4]
    32b6:	6039      	str	r1, [r7, #0]
    32b8:	4a33      	ldr	r2, [pc, #204]	; (3388 <spi_config_port+0xda>)
    32ba:	4b33      	ldr	r3, [pc, #204]	; (3388 <spi_config_port+0xda>)
    32bc:	699b      	ldr	r3, [r3, #24]
    32be:	f043 0301 	orr.w	r3, r3, #1
    32c2:	6193      	str	r3, [r2, #24]
    32c4:	687b      	ldr	r3, [r7, #4]
    32c6:	4a31      	ldr	r2, [pc, #196]	; (338c <spi_config_port+0xde>)
    32c8:	4293      	cmp	r3, r2
    32ca:	d13e      	bne.n	334a <spi_config_port+0x9c>
    32cc:	683b      	ldr	r3, [r7, #0]
    32ce:	2b00      	cmp	r3, #0
    32d0:	d11a      	bne.n	3308 <spi_config_port+0x5a>
    32d2:	4a2d      	ldr	r2, [pc, #180]	; (3388 <spi_config_port+0xda>)
    32d4:	4b2c      	ldr	r3, [pc, #176]	; (3388 <spi_config_port+0xda>)
    32d6:	699b      	ldr	r3, [r3, #24]
    32d8:	f043 0304 	orr.w	r3, r3, #4
    32dc:	6193      	str	r3, [r2, #24]
    32de:	2203      	movs	r2, #3
    32e0:	2104      	movs	r1, #4
    32e2:	482b      	ldr	r0, [pc, #172]	; (3390 <spi_config_port+0xe2>)
    32e4:	f7fe fb07 	bl	18f6 <config_pin>
    32e8:	220b      	movs	r2, #11
    32ea:	2105      	movs	r1, #5
    32ec:	4828      	ldr	r0, [pc, #160]	; (3390 <spi_config_port+0xe2>)
    32ee:	f7fe fb02 	bl	18f6 <config_pin>
    32f2:	2204      	movs	r2, #4
    32f4:	2106      	movs	r1, #6
    32f6:	4826      	ldr	r0, [pc, #152]	; (3390 <spi_config_port+0xe2>)
    32f8:	f7fe fafd 	bl	18f6 <config_pin>
    32fc:	220b      	movs	r2, #11
    32fe:	2107      	movs	r1, #7
    3300:	4823      	ldr	r0, [pc, #140]	; (3390 <spi_config_port+0xe2>)
    3302:	f7fe faf8 	bl	18f6 <config_pin>
    3306:	e03a      	b.n	337e <spi_config_port+0xd0>
    3308:	4a1f      	ldr	r2, [pc, #124]	; (3388 <spi_config_port+0xda>)
    330a:	4b1f      	ldr	r3, [pc, #124]	; (3388 <spi_config_port+0xda>)
    330c:	699b      	ldr	r3, [r3, #24]
    330e:	f043 030d 	orr.w	r3, r3, #13
    3312:	6193      	str	r3, [r2, #24]
    3314:	4a1f      	ldr	r2, [pc, #124]	; (3394 <spi_config_port+0xe6>)
    3316:	4b1f      	ldr	r3, [pc, #124]	; (3394 <spi_config_port+0xe6>)
    3318:	685b      	ldr	r3, [r3, #4]
    331a:	f043 0301 	orr.w	r3, r3, #1
    331e:	6053      	str	r3, [r2, #4]
    3320:	2203      	movs	r2, #3
    3322:	210f      	movs	r1, #15
    3324:	481a      	ldr	r0, [pc, #104]	; (3390 <spi_config_port+0xe2>)
    3326:	f7fe fae6 	bl	18f6 <config_pin>
    332a:	220b      	movs	r2, #11
    332c:	2103      	movs	r1, #3
    332e:	481a      	ldr	r0, [pc, #104]	; (3398 <spi_config_port+0xea>)
    3330:	f7fe fae1 	bl	18f6 <config_pin>
    3334:	2204      	movs	r2, #4
    3336:	2104      	movs	r1, #4
    3338:	4817      	ldr	r0, [pc, #92]	; (3398 <spi_config_port+0xea>)
    333a:	f7fe fadc 	bl	18f6 <config_pin>
    333e:	220b      	movs	r2, #11
    3340:	2105      	movs	r1, #5
    3342:	4815      	ldr	r0, [pc, #84]	; (3398 <spi_config_port+0xea>)
    3344:	f7fe fad7 	bl	18f6 <config_pin>
    3348:	e019      	b.n	337e <spi_config_port+0xd0>
    334a:	4a0f      	ldr	r2, [pc, #60]	; (3388 <spi_config_port+0xda>)
    334c:	4b0e      	ldr	r3, [pc, #56]	; (3388 <spi_config_port+0xda>)
    334e:	699b      	ldr	r3, [r3, #24]
    3350:	f043 0308 	orr.w	r3, r3, #8
    3354:	6193      	str	r3, [r2, #24]
    3356:	2203      	movs	r2, #3
    3358:	2102      	movs	r1, #2
    335a:	480f      	ldr	r0, [pc, #60]	; (3398 <spi_config_port+0xea>)
    335c:	f7fe facb 	bl	18f6 <config_pin>
    3360:	220b      	movs	r2, #11
    3362:	210d      	movs	r1, #13
    3364:	480c      	ldr	r0, [pc, #48]	; (3398 <spi_config_port+0xea>)
    3366:	f7fe fac6 	bl	18f6 <config_pin>
    336a:	2204      	movs	r2, #4
    336c:	210e      	movs	r1, #14
    336e:	480a      	ldr	r0, [pc, #40]	; (3398 <spi_config_port+0xea>)
    3370:	f7fe fac1 	bl	18f6 <config_pin>
    3374:	220b      	movs	r2, #11
    3376:	210f      	movs	r1, #15
    3378:	4807      	ldr	r0, [pc, #28]	; (3398 <spi_config_port+0xea>)
    337a:	f7fe fabc 	bl	18f6 <config_pin>
    337e:	bf00      	nop
    3380:	3708      	adds	r7, #8
    3382:	46bd      	mov	sp, r7
    3384:	bd80      	pop	{r7, pc}
    3386:	bf00      	nop
    3388:	40021000 	.word	0x40021000
    338c:	40013000 	.word	0x40013000
    3390:	40010800 	.word	0x40010800
    3394:	40010000 	.word	0x40010000
    3398:	40010c00 	.word	0x40010c00

0000339c <spi_init>:
    339c:	b580      	push	{r7, lr}
    339e:	b084      	sub	sp, #16
    33a0:	af00      	add	r7, sp, #0
    33a2:	60f8      	str	r0, [r7, #12]
    33a4:	60b9      	str	r1, [r7, #8]
    33a6:	607a      	str	r2, [r7, #4]
    33a8:	603b      	str	r3, [r7, #0]
    33aa:	6839      	ldr	r1, [r7, #0]
    33ac:	68f8      	ldr	r0, [r7, #12]
    33ae:	f7ff ff7e 	bl	32ae <spi_config_port>
    33b2:	68fb      	ldr	r3, [r7, #12]
    33b4:	4a10      	ldr	r2, [pc, #64]	; (33f8 <spi_init+0x5c>)
    33b6:	4293      	cmp	r3, r2
    33b8:	d106      	bne.n	33c8 <spi_init+0x2c>
    33ba:	4a10      	ldr	r2, [pc, #64]	; (33fc <spi_init+0x60>)
    33bc:	4b0f      	ldr	r3, [pc, #60]	; (33fc <spi_init+0x60>)
    33be:	699b      	ldr	r3, [r3, #24]
    33c0:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    33c4:	6193      	str	r3, [r2, #24]
    33c6:	e005      	b.n	33d4 <spi_init+0x38>
    33c8:	4a0c      	ldr	r2, [pc, #48]	; (33fc <spi_init+0x60>)
    33ca:	4b0c      	ldr	r3, [pc, #48]	; (33fc <spi_init+0x60>)
    33cc:	69db      	ldr	r3, [r3, #28]
    33ce:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    33d2:	61d3      	str	r3, [r2, #28]
    33d4:	68fb      	ldr	r3, [r7, #12]
    33d6:	687a      	ldr	r2, [r7, #4]
    33d8:	601a      	str	r2, [r3, #0]
    33da:	68b9      	ldr	r1, [r7, #8]
    33dc:	68f8      	ldr	r0, [r7, #12]
    33de:	f7ff ff4f 	bl	3280 <spi_baudrate>
    33e2:	68fb      	ldr	r3, [r7, #12]
    33e4:	681b      	ldr	r3, [r3, #0]
    33e6:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    33ea:	68fb      	ldr	r3, [r7, #12]
    33ec:	601a      	str	r2, [r3, #0]
    33ee:	bf00      	nop
    33f0:	3710      	adds	r7, #16
    33f2:	46bd      	mov	sp, r7
    33f4:	bd80      	pop	{r7, pc}
    33f6:	bf00      	nop
    33f8:	40013000 	.word	0x40013000
    33fc:	40021000 	.word	0x40021000

00003400 <spi_send>:
    3400:	b480      	push	{r7}
    3402:	b085      	sub	sp, #20
    3404:	af00      	add	r7, sp, #0
    3406:	6078      	str	r0, [r7, #4]
    3408:	460b      	mov	r3, r1
    340a:	70fb      	strb	r3, [r7, #3]
    340c:	bf00      	nop
    340e:	687b      	ldr	r3, [r7, #4]
    3410:	689b      	ldr	r3, [r3, #8]
    3412:	f003 0302 	and.w	r3, r3, #2
    3416:	2b00      	cmp	r3, #0
    3418:	d0f9      	beq.n	340e <spi_send+0xe>
    341a:	78fa      	ldrb	r2, [r7, #3]
    341c:	687b      	ldr	r3, [r7, #4]
    341e:	60da      	str	r2, [r3, #12]
    3420:	bf00      	nop
    3422:	687b      	ldr	r3, [r7, #4]
    3424:	689b      	ldr	r3, [r3, #8]
    3426:	f003 0301 	and.w	r3, r3, #1
    342a:	2b00      	cmp	r3, #0
    342c:	d0f9      	beq.n	3422 <spi_send+0x22>
    342e:	687b      	ldr	r3, [r7, #4]
    3430:	68db      	ldr	r3, [r3, #12]
    3432:	73fb      	strb	r3, [r7, #15]
    3434:	bf00      	nop
    3436:	3714      	adds	r7, #20
    3438:	46bd      	mov	sp, r7
    343a:	bc80      	pop	{r7}
    343c:	4770      	bx	lr

0000343e <spi_receive>:
    343e:	b480      	push	{r7}
    3440:	b085      	sub	sp, #20
    3442:	af00      	add	r7, sp, #0
    3444:	6078      	str	r0, [r7, #4]
    3446:	bf00      	nop
    3448:	687b      	ldr	r3, [r7, #4]
    344a:	689b      	ldr	r3, [r3, #8]
    344c:	f003 0302 	and.w	r3, r3, #2
    3450:	2b00      	cmp	r3, #0
    3452:	d0f9      	beq.n	3448 <spi_receive+0xa>
    3454:	687b      	ldr	r3, [r7, #4]
    3456:	22ff      	movs	r2, #255	; 0xff
    3458:	60da      	str	r2, [r3, #12]
    345a:	bf00      	nop
    345c:	687b      	ldr	r3, [r7, #4]
    345e:	689b      	ldr	r3, [r3, #8]
    3460:	f003 0301 	and.w	r3, r3, #1
    3464:	2b00      	cmp	r3, #0
    3466:	d0f9      	beq.n	345c <spi_receive+0x1e>
    3468:	687b      	ldr	r3, [r7, #4]
    346a:	68db      	ldr	r3, [r3, #12]
    346c:	73fb      	strb	r3, [r7, #15]
    346e:	7bfb      	ldrb	r3, [r7, #15]
    3470:	4618      	mov	r0, r3
    3472:	3714      	adds	r7, #20
    3474:	46bd      	mov	sp, r7
    3476:	bc80      	pop	{r7}
    3478:	4770      	bx	lr

0000347a <spi_send_block>:
    347a:	b480      	push	{r7}
    347c:	b087      	sub	sp, #28
    347e:	af00      	add	r7, sp, #0
    3480:	60f8      	str	r0, [r7, #12]
    3482:	60b9      	str	r1, [r7, #8]
    3484:	607a      	str	r2, [r7, #4]
    3486:	e010      	b.n	34aa <spi_send_block+0x30>
    3488:	68bb      	ldr	r3, [r7, #8]
    348a:	1c5a      	adds	r2, r3, #1
    348c:	60ba      	str	r2, [r7, #8]
    348e:	781b      	ldrb	r3, [r3, #0]
    3490:	461a      	mov	r2, r3
    3492:	68fb      	ldr	r3, [r7, #12]
    3494:	60da      	str	r2, [r3, #12]
    3496:	bf00      	nop
    3498:	68fb      	ldr	r3, [r7, #12]
    349a:	689b      	ldr	r3, [r3, #8]
    349c:	f003 0302 	and.w	r3, r3, #2
    34a0:	2b00      	cmp	r3, #0
    34a2:	d0f9      	beq.n	3498 <spi_send_block+0x1e>
    34a4:	687b      	ldr	r3, [r7, #4]
    34a6:	3b01      	subs	r3, #1
    34a8:	607b      	str	r3, [r7, #4]
    34aa:	687b      	ldr	r3, [r7, #4]
    34ac:	2b00      	cmp	r3, #0
    34ae:	d1eb      	bne.n	3488 <spi_send_block+0xe>
    34b0:	bf00      	nop
    34b2:	68fb      	ldr	r3, [r7, #12]
    34b4:	689b      	ldr	r3, [r3, #8]
    34b6:	f003 0380 	and.w	r3, r3, #128	; 0x80
    34ba:	2b00      	cmp	r3, #0
    34bc:	d1f9      	bne.n	34b2 <spi_send_block+0x38>
    34be:	68fb      	ldr	r3, [r7, #12]
    34c0:	68db      	ldr	r3, [r3, #12]
    34c2:	75fb      	strb	r3, [r7, #23]
    34c4:	bf00      	nop
    34c6:	371c      	adds	r7, #28
    34c8:	46bd      	mov	sp, r7
    34ca:	bc80      	pop	{r7}
    34cc:	4770      	bx	lr

000034ce <spi_receive_block>:
    34ce:	b480      	push	{r7}
    34d0:	b085      	sub	sp, #20
    34d2:	af00      	add	r7, sp, #0
    34d4:	60f8      	str	r0, [r7, #12]
    34d6:	60b9      	str	r1, [r7, #8]
    34d8:	607a      	str	r2, [r7, #4]
    34da:	e013      	b.n	3504 <spi_receive_block+0x36>
    34dc:	68fb      	ldr	r3, [r7, #12]
    34de:	2200      	movs	r2, #0
    34e0:	60da      	str	r2, [r3, #12]
    34e2:	bf00      	nop
    34e4:	68fb      	ldr	r3, [r7, #12]
    34e6:	689b      	ldr	r3, [r3, #8]
    34e8:	f003 0301 	and.w	r3, r3, #1
    34ec:	2b00      	cmp	r3, #0
    34ee:	d0f9      	beq.n	34e4 <spi_receive_block+0x16>
    34f0:	68bb      	ldr	r3, [r7, #8]
    34f2:	1c5a      	adds	r2, r3, #1
    34f4:	60ba      	str	r2, [r7, #8]
    34f6:	68fa      	ldr	r2, [r7, #12]
    34f8:	68d2      	ldr	r2, [r2, #12]
    34fa:	b2d2      	uxtb	r2, r2
    34fc:	701a      	strb	r2, [r3, #0]
    34fe:	687b      	ldr	r3, [r7, #4]
    3500:	3b01      	subs	r3, #1
    3502:	607b      	str	r3, [r7, #4]
    3504:	687b      	ldr	r3, [r7, #4]
    3506:	2b00      	cmp	r3, #0
    3508:	d1e8      	bne.n	34dc <spi_receive_block+0xe>
    350a:	bf00      	nop
    350c:	3714      	adds	r7, #20
    350e:	46bd      	mov	sp, r7
    3510:	bc80      	pop	{r7}
    3512:	4770      	bx	lr

00003514 <reset_mcu>:
    3514:	4b01      	ldr	r3, [pc, #4]	; (351c <reset_mcu+0x8>)
    3516:	4a02      	ldr	r2, [pc, #8]	; (3520 <reset_mcu+0xc>)
    3518:	601a      	str	r2, [r3, #0]
    351a:	bf00      	nop
    351c:	e000ed0c 	.word	0xe000ed0c
    3520:	05fa0004 	.word	0x05fa0004

00003524 <print_fault>:
    3524:	b580      	push	{r7, lr}
    3526:	b082      	sub	sp, #8
    3528:	af00      	add	r7, sp, #0
    352a:	6078      	str	r0, [r7, #4]
    352c:	6039      	str	r1, [r7, #0]
    352e:	6878      	ldr	r0, [r7, #4]
    3530:	f000 f9ea 	bl	3908 <print>
    3534:	4818      	ldr	r0, [pc, #96]	; (3598 <print_fault+0x74>)
    3536:	f000 f9e7 	bl	3908 <print>
    353a:	683b      	ldr	r3, [r7, #0]
    353c:	2b00      	cmp	r3, #0
    353e:	d004      	beq.n	354a <print_fault+0x26>
    3540:	683b      	ldr	r3, [r7, #0]
    3542:	2110      	movs	r1, #16
    3544:	4618      	mov	r0, r3
    3546:	f000 fa02 	bl	394e <print_int>
    354a:	200d      	movs	r0, #13
    354c:	f000 f924 	bl	3798 <put_char>
    3550:	4812      	ldr	r0, [pc, #72]	; (359c <print_fault+0x78>)
    3552:	f000 f9d9 	bl	3908 <print>
    3556:	4b12      	ldr	r3, [pc, #72]	; (35a0 <print_fault+0x7c>)
    3558:	681b      	ldr	r3, [r3, #0]
    355a:	f3c3 430f 	ubfx	r3, r3, #16, #16
    355e:	b29b      	uxth	r3, r3
    3560:	2110      	movs	r1, #16
    3562:	4618      	mov	r0, r3
    3564:	f000 f9f3 	bl	394e <print_int>
    3568:	480e      	ldr	r0, [pc, #56]	; (35a4 <print_fault+0x80>)
    356a:	f000 f9cd 	bl	3908 <print>
    356e:	4b0c      	ldr	r3, [pc, #48]	; (35a0 <print_fault+0x7c>)
    3570:	681b      	ldr	r3, [r3, #0]
    3572:	f3c3 2307 	ubfx	r3, r3, #8, #8
    3576:	b2db      	uxtb	r3, r3
    3578:	2110      	movs	r1, #16
    357a:	4618      	mov	r0, r3
    357c:	f000 f9e7 	bl	394e <print_int>
    3580:	4809      	ldr	r0, [pc, #36]	; (35a8 <print_fault+0x84>)
    3582:	f000 f9c1 	bl	3908 <print>
    3586:	4b06      	ldr	r3, [pc, #24]	; (35a0 <print_fault+0x7c>)
    3588:	681b      	ldr	r3, [r3, #0]
    358a:	b2db      	uxtb	r3, r3
    358c:	2110      	movs	r1, #16
    358e:	4618      	mov	r0, r3
    3590:	f000 f9dd 	bl	394e <print_int>
    3594:	e7fe      	b.n	3594 <print_fault+0x70>
    3596:	bf00      	nop
    3598:	00004638 	.word	0x00004638
    359c:	00004648 	.word	0x00004648
    35a0:	e000ed28 	.word	0xe000ed28
    35a4:	00004650 	.word	0x00004650
    35a8:	00004658 	.word	0x00004658

000035ac <config_systicks>:
    35ac:	b580      	push	{r7, lr}
    35ae:	af00      	add	r7, sp, #0
    35b0:	2109      	movs	r1, #9
    35b2:	f06f 000e 	mvn.w	r0, #14
    35b6:	f7fe fff3 	bl	25a0 <set_int_priority>
    35ba:	4b04      	ldr	r3, [pc, #16]	; (35cc <config_systicks+0x20>)
    35bc:	f242 22f3 	movw	r2, #8947	; 0x22f3
    35c0:	601a      	str	r2, [r3, #0]
    35c2:	4b03      	ldr	r3, [pc, #12]	; (35d0 <config_systicks+0x24>)
    35c4:	2203      	movs	r2, #3
    35c6:	601a      	str	r2, [r3, #0]
    35c8:	bf00      	nop
    35ca:	bd80      	pop	{r7, pc}
    35cc:	e000e014 	.word	0xe000e014
    35d0:	e000e010 	.word	0xe000e010

000035d4 <pause>:
    35d4:	b480      	push	{r7}
    35d6:	b083      	sub	sp, #12
    35d8:	af00      	add	r7, sp, #0
    35da:	6078      	str	r0, [r7, #4]
    35dc:	4a06      	ldr	r2, [pc, #24]	; (35f8 <pause+0x24>)
    35de:	687b      	ldr	r3, [r7, #4]
    35e0:	6013      	str	r3, [r2, #0]
    35e2:	bf00      	nop
    35e4:	4b04      	ldr	r3, [pc, #16]	; (35f8 <pause+0x24>)
    35e6:	681b      	ldr	r3, [r3, #0]
    35e8:	2b00      	cmp	r3, #0
    35ea:	d1fb      	bne.n	35e4 <pause+0x10>
    35ec:	bf00      	nop
    35ee:	370c      	adds	r7, #12
    35f0:	46bd      	mov	sp, r7
    35f2:	bc80      	pop	{r7}
    35f4:	4770      	bx	lr
    35f6:	bf00      	nop
    35f8:	200004f0 	.word	0x200004f0

000035fc <STK_handler>:
    35fc:	b480      	push	{r7}
    35fe:	af00      	add	r7, sp, #0
    3600:	4b08      	ldr	r3, [pc, #32]	; (3624 <STK_handler+0x28>)
    3602:	681b      	ldr	r3, [r3, #0]
    3604:	3301      	adds	r3, #1
    3606:	4a07      	ldr	r2, [pc, #28]	; (3624 <STK_handler+0x28>)
    3608:	6013      	str	r3, [r2, #0]
    360a:	4b07      	ldr	r3, [pc, #28]	; (3628 <STK_handler+0x2c>)
    360c:	681b      	ldr	r3, [r3, #0]
    360e:	2b00      	cmp	r3, #0
    3610:	d004      	beq.n	361c <STK_handler+0x20>
    3612:	4b05      	ldr	r3, [pc, #20]	; (3628 <STK_handler+0x2c>)
    3614:	681b      	ldr	r3, [r3, #0]
    3616:	3b01      	subs	r3, #1
    3618:	4a03      	ldr	r2, [pc, #12]	; (3628 <STK_handler+0x2c>)
    361a:	6013      	str	r3, [r2, #0]
    361c:	bf00      	nop
    361e:	46bd      	mov	sp, r7
    3620:	bc80      	pop	{r7}
    3622:	4770      	bx	lr
    3624:	200004ec 	.word	0x200004ec
    3628:	200004f0 	.word	0x200004f0

0000362c <font_color>:
    362c:	b480      	push	{r7}
    362e:	b083      	sub	sp, #12
    3630:	af00      	add	r7, sp, #0
    3632:	4603      	mov	r3, r0
    3634:	71fb      	strb	r3, [r7, #7]
    3636:	79fb      	ldrb	r3, [r7, #7]
    3638:	f003 030f 	and.w	r3, r3, #15
    363c:	b2da      	uxtb	r2, r3
    363e:	4b03      	ldr	r3, [pc, #12]	; (364c <font_color+0x20>)
    3640:	705a      	strb	r2, [r3, #1]
    3642:	bf00      	nop
    3644:	370c      	adds	r7, #12
    3646:	46bd      	mov	sp, r7
    3648:	bc80      	pop	{r7}
    364a:	4770      	bx	lr
    364c:	2000005c 	.word	0x2000005c

00003650 <bg_color>:
    3650:	b480      	push	{r7}
    3652:	b083      	sub	sp, #12
    3654:	af00      	add	r7, sp, #0
    3656:	4603      	mov	r3, r0
    3658:	71fb      	strb	r3, [r7, #7]
    365a:	79fb      	ldrb	r3, [r7, #7]
    365c:	f003 030f 	and.w	r3, r3, #15
    3660:	b2da      	uxtb	r2, r3
    3662:	4b03      	ldr	r3, [pc, #12]	; (3670 <bg_color+0x20>)
    3664:	701a      	strb	r2, [r3, #0]
    3666:	bf00      	nop
    3668:	370c      	adds	r7, #12
    366a:	46bd      	mov	sp, r7
    366c:	bc80      	pop	{r7}
    366e:	4770      	bx	lr
    3670:	2000005c 	.word	0x2000005c

00003674 <select_font>:
    3674:	b480      	push	{r7}
    3676:	b083      	sub	sp, #12
    3678:	af00      	add	r7, sp, #0
    367a:	4603      	mov	r3, r0
    367c:	71fb      	strb	r3, [r7, #7]
    367e:	4a04      	ldr	r2, [pc, #16]	; (3690 <select_font+0x1c>)
    3680:	79fb      	ldrb	r3, [r7, #7]
    3682:	7013      	strb	r3, [r2, #0]
    3684:	bf00      	nop
    3686:	370c      	adds	r7, #12
    3688:	46bd      	mov	sp, r7
    368a:	bc80      	pop	{r7}
    368c:	4770      	bx	lr
    368e:	bf00      	nop
    3690:	20000058 	.word	0x20000058

00003694 <new_line>:
    3694:	b580      	push	{r7, lr}
    3696:	af00      	add	r7, sp, #0
    3698:	4b1e      	ldr	r3, [pc, #120]	; (3714 <new_line+0x80>)
    369a:	2200      	movs	r2, #0
    369c:	701a      	strb	r2, [r3, #0]
    369e:	4b1e      	ldr	r3, [pc, #120]	; (3718 <new_line+0x84>)
    36a0:	781b      	ldrb	r3, [r3, #0]
    36a2:	2b01      	cmp	r3, #1
    36a4:	d014      	beq.n	36d0 <new_line+0x3c>
    36a6:	2b02      	cmp	r3, #2
    36a8:	d022      	beq.n	36f0 <new_line+0x5c>
    36aa:	2b00      	cmp	r3, #0
    36ac:	d000      	beq.n	36b0 <new_line+0x1c>
    36ae:	e02f      	b.n	3710 <new_line+0x7c>
    36b0:	4b1a      	ldr	r3, [pc, #104]	; (371c <new_line+0x88>)
    36b2:	781b      	ldrb	r3, [r3, #0]
    36b4:	3306      	adds	r3, #6
    36b6:	2b6b      	cmp	r3, #107	; 0x6b
    36b8:	dc06      	bgt.n	36c8 <new_line+0x34>
    36ba:	4b18      	ldr	r3, [pc, #96]	; (371c <new_line+0x88>)
    36bc:	781b      	ldrb	r3, [r3, #0]
    36be:	3306      	adds	r3, #6
    36c0:	b2da      	uxtb	r2, r3
    36c2:	4b16      	ldr	r3, [pc, #88]	; (371c <new_line+0x88>)
    36c4:	701a      	strb	r2, [r3, #0]
    36c6:	e023      	b.n	3710 <new_line+0x7c>
    36c8:	2006      	movs	r0, #6
    36ca:	f7fe fae9 	bl	1ca0 <gfx_scroll_up>
    36ce:	e01f      	b.n	3710 <new_line+0x7c>
    36d0:	4b12      	ldr	r3, [pc, #72]	; (371c <new_line+0x88>)
    36d2:	781b      	ldrb	r3, [r3, #0]
    36d4:	330a      	adds	r3, #10
    36d6:	2b67      	cmp	r3, #103	; 0x67
    36d8:	dc06      	bgt.n	36e8 <new_line+0x54>
    36da:	4b10      	ldr	r3, [pc, #64]	; (371c <new_line+0x88>)
    36dc:	781b      	ldrb	r3, [r3, #0]
    36de:	330a      	adds	r3, #10
    36e0:	b2da      	uxtb	r2, r3
    36e2:	4b0e      	ldr	r3, [pc, #56]	; (371c <new_line+0x88>)
    36e4:	701a      	strb	r2, [r3, #0]
    36e6:	e013      	b.n	3710 <new_line+0x7c>
    36e8:	200a      	movs	r0, #10
    36ea:	f7fe fad9 	bl	1ca0 <gfx_scroll_up>
    36ee:	e00f      	b.n	3710 <new_line+0x7c>
    36f0:	4b0a      	ldr	r3, [pc, #40]	; (371c <new_line+0x88>)
    36f2:	781b      	ldrb	r3, [r3, #0]
    36f4:	3308      	adds	r3, #8
    36f6:	2b69      	cmp	r3, #105	; 0x69
    36f8:	dc06      	bgt.n	3708 <new_line+0x74>
    36fa:	4b08      	ldr	r3, [pc, #32]	; (371c <new_line+0x88>)
    36fc:	781b      	ldrb	r3, [r3, #0]
    36fe:	3308      	adds	r3, #8
    3700:	b2da      	uxtb	r2, r3
    3702:	4b06      	ldr	r3, [pc, #24]	; (371c <new_line+0x88>)
    3704:	701a      	strb	r2, [r3, #0]
    3706:	e002      	b.n	370e <new_line+0x7a>
    3708:	2008      	movs	r0, #8
    370a:	f7fe fac9 	bl	1ca0 <gfx_scroll_up>
    370e:	bf00      	nop
    3710:	bf00      	nop
    3712:	bd80      	pop	{r7, pc}
    3714:	200004f4 	.word	0x200004f4
    3718:	20000058 	.word	0x20000058
    371c:	200004f5 	.word	0x200004f5

00003720 <draw_char>:
    3720:	b5b0      	push	{r4, r5, r7, lr}
    3722:	b086      	sub	sp, #24
    3724:	af00      	add	r7, sp, #0
    3726:	60f8      	str	r0, [r7, #12]
    3728:	60b9      	str	r1, [r7, #8]
    372a:	607a      	str	r2, [r7, #4]
    372c:	603b      	str	r3, [r7, #0]
    372e:	68bc      	ldr	r4, [r7, #8]
    3730:	e026      	b.n	3780 <draw_char+0x60>
    3732:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3734:	1c5a      	adds	r2, r3, #1
    3736:	62ba      	str	r2, [r7, #40]	; 0x28
    3738:	781b      	ldrb	r3, [r3, #0]
    373a:	757b      	strb	r3, [r7, #21]
    373c:	2380      	movs	r3, #128	; 0x80
    373e:	75bb      	strb	r3, [r7, #22]
    3740:	68fd      	ldr	r5, [r7, #12]
    3742:	e017      	b.n	3774 <draw_char+0x54>
    3744:	7d7a      	ldrb	r2, [r7, #21]
    3746:	7dbb      	ldrb	r3, [r7, #22]
    3748:	4013      	ands	r3, r2
    374a:	753b      	strb	r3, [r7, #20]
    374c:	7d3b      	ldrb	r3, [r7, #20]
    374e:	2b00      	cmp	r3, #0
    3750:	d003      	beq.n	375a <draw_char+0x3a>
    3752:	4b10      	ldr	r3, [pc, #64]	; (3794 <draw_char+0x74>)
    3754:	785b      	ldrb	r3, [r3, #1]
    3756:	75fb      	strb	r3, [r7, #23]
    3758:	e002      	b.n	3760 <draw_char+0x40>
    375a:	4b0e      	ldr	r3, [pc, #56]	; (3794 <draw_char+0x74>)
    375c:	781b      	ldrb	r3, [r3, #0]
    375e:	75fb      	strb	r3, [r7, #23]
    3760:	7dfb      	ldrb	r3, [r7, #23]
    3762:	461a      	mov	r2, r3
    3764:	4621      	mov	r1, r4
    3766:	4628      	mov	r0, r5
    3768:	f7fe f9b4 	bl	1ad4 <gfx_plot>
    376c:	7dbb      	ldrb	r3, [r7, #22]
    376e:	085b      	lsrs	r3, r3, #1
    3770:	75bb      	strb	r3, [r7, #22]
    3772:	3501      	adds	r5, #1
    3774:	68fa      	ldr	r2, [r7, #12]
    3776:	687b      	ldr	r3, [r7, #4]
    3778:	4413      	add	r3, r2
    377a:	42ab      	cmp	r3, r5
    377c:	dce2      	bgt.n	3744 <draw_char+0x24>
    377e:	3401      	adds	r4, #1
    3780:	68ba      	ldr	r2, [r7, #8]
    3782:	683b      	ldr	r3, [r7, #0]
    3784:	4413      	add	r3, r2
    3786:	42a3      	cmp	r3, r4
    3788:	dcd3      	bgt.n	3732 <draw_char+0x12>
    378a:	bf00      	nop
    378c:	3718      	adds	r7, #24
    378e:	46bd      	mov	sp, r7
    3790:	bdb0      	pop	{r4, r5, r7, pc}
    3792:	bf00      	nop
    3794:	2000005c 	.word	0x2000005c

00003798 <put_char>:
    3798:	b580      	push	{r7, lr}
    379a:	b084      	sub	sp, #16
    379c:	af02      	add	r7, sp, #8
    379e:	4603      	mov	r3, r0
    37a0:	71fb      	strb	r3, [r7, #7]
    37a2:	4b3d      	ldr	r3, [pc, #244]	; (3898 <put_char+0x100>)
    37a4:	781b      	ldrb	r3, [r3, #0]
    37a6:	2b01      	cmp	r3, #1
    37a8:	d027      	beq.n	37fa <put_char+0x62>
    37aa:	2b02      	cmp	r3, #2
    37ac:	d048      	beq.n	3840 <put_char+0xa8>
    37ae:	2b00      	cmp	r3, #0
    37b0:	d000      	beq.n	37b4 <put_char+0x1c>
    37b2:	e06d      	b.n	3890 <put_char+0xf8>
    37b4:	79fb      	ldrb	r3, [r7, #7]
    37b6:	2b0f      	cmp	r3, #15
    37b8:	d865      	bhi.n	3886 <put_char+0xee>
    37ba:	4b38      	ldr	r3, [pc, #224]	; (389c <put_char+0x104>)
    37bc:	781b      	ldrb	r3, [r3, #0]
    37be:	4618      	mov	r0, r3
    37c0:	4b37      	ldr	r3, [pc, #220]	; (38a0 <put_char+0x108>)
    37c2:	781b      	ldrb	r3, [r3, #0]
    37c4:	4619      	mov	r1, r3
    37c6:	79fa      	ldrb	r2, [r7, #7]
    37c8:	4613      	mov	r3, r2
    37ca:	005b      	lsls	r3, r3, #1
    37cc:	4413      	add	r3, r2
    37ce:	005b      	lsls	r3, r3, #1
    37d0:	461a      	mov	r2, r3
    37d2:	4b34      	ldr	r3, [pc, #208]	; (38a4 <put_char+0x10c>)
    37d4:	4413      	add	r3, r2
    37d6:	9300      	str	r3, [sp, #0]
    37d8:	2306      	movs	r3, #6
    37da:	2204      	movs	r2, #4
    37dc:	f7ff ffa0 	bl	3720 <draw_char>
    37e0:	4b2e      	ldr	r3, [pc, #184]	; (389c <put_char+0x104>)
    37e2:	781b      	ldrb	r3, [r3, #0]
    37e4:	3304      	adds	r3, #4
    37e6:	b2da      	uxtb	r2, r3
    37e8:	4b2c      	ldr	r3, [pc, #176]	; (389c <put_char+0x104>)
    37ea:	701a      	strb	r2, [r3, #0]
    37ec:	4b2b      	ldr	r3, [pc, #172]	; (389c <put_char+0x104>)
    37ee:	781b      	ldrb	r3, [r3, #0]
    37f0:	2bb1      	cmp	r3, #177	; 0xb1
    37f2:	d948      	bls.n	3886 <put_char+0xee>
    37f4:	f7ff ff4e 	bl	3694 <new_line>
    37f8:	e045      	b.n	3886 <put_char+0xee>
    37fa:	79fb      	ldrb	r3, [r7, #7]
    37fc:	2b0f      	cmp	r3, #15
    37fe:	d844      	bhi.n	388a <put_char+0xf2>
    3800:	4b26      	ldr	r3, [pc, #152]	; (389c <put_char+0x104>)
    3802:	781b      	ldrb	r3, [r3, #0]
    3804:	4618      	mov	r0, r3
    3806:	4b26      	ldr	r3, [pc, #152]	; (38a0 <put_char+0x108>)
    3808:	781b      	ldrb	r3, [r3, #0]
    380a:	4619      	mov	r1, r3
    380c:	79fa      	ldrb	r2, [r7, #7]
    380e:	4613      	mov	r3, r2
    3810:	009b      	lsls	r3, r3, #2
    3812:	4413      	add	r3, r2
    3814:	005b      	lsls	r3, r3, #1
    3816:	461a      	mov	r2, r3
    3818:	4b23      	ldr	r3, [pc, #140]	; (38a8 <put_char+0x110>)
    381a:	4413      	add	r3, r2
    381c:	9300      	str	r3, [sp, #0]
    381e:	230a      	movs	r3, #10
    3820:	2208      	movs	r2, #8
    3822:	f7ff ff7d 	bl	3720 <draw_char>
    3826:	4b1d      	ldr	r3, [pc, #116]	; (389c <put_char+0x104>)
    3828:	781b      	ldrb	r3, [r3, #0]
    382a:	3308      	adds	r3, #8
    382c:	b2da      	uxtb	r2, r3
    382e:	4b1b      	ldr	r3, [pc, #108]	; (389c <put_char+0x104>)
    3830:	701a      	strb	r2, [r3, #0]
    3832:	4b1a      	ldr	r3, [pc, #104]	; (389c <put_char+0x104>)
    3834:	781b      	ldrb	r3, [r3, #0]
    3836:	2bad      	cmp	r3, #173	; 0xad
    3838:	d927      	bls.n	388a <put_char+0xf2>
    383a:	f7ff ff2b 	bl	3694 <new_line>
    383e:	e024      	b.n	388a <put_char+0xf2>
    3840:	79fb      	ldrb	r3, [r7, #7]
    3842:	2b1f      	cmp	r3, #31
    3844:	d923      	bls.n	388e <put_char+0xf6>
    3846:	79fb      	ldrb	r3, [r7, #7]
    3848:	2b84      	cmp	r3, #132	; 0x84
    384a:	d820      	bhi.n	388e <put_char+0xf6>
    384c:	4b13      	ldr	r3, [pc, #76]	; (389c <put_char+0x104>)
    384e:	781b      	ldrb	r3, [r3, #0]
    3850:	4618      	mov	r0, r3
    3852:	4b13      	ldr	r3, [pc, #76]	; (38a0 <put_char+0x108>)
    3854:	781b      	ldrb	r3, [r3, #0]
    3856:	4619      	mov	r1, r3
    3858:	79fb      	ldrb	r3, [r7, #7]
    385a:	3b20      	subs	r3, #32
    385c:	00db      	lsls	r3, r3, #3
    385e:	4a13      	ldr	r2, [pc, #76]	; (38ac <put_char+0x114>)
    3860:	4413      	add	r3, r2
    3862:	9300      	str	r3, [sp, #0]
    3864:	2308      	movs	r3, #8
    3866:	2206      	movs	r2, #6
    3868:	f7ff ff5a 	bl	3720 <draw_char>
    386c:	4b0b      	ldr	r3, [pc, #44]	; (389c <put_char+0x104>)
    386e:	781b      	ldrb	r3, [r3, #0]
    3870:	3306      	adds	r3, #6
    3872:	b2da      	uxtb	r2, r3
    3874:	4b09      	ldr	r3, [pc, #36]	; (389c <put_char+0x104>)
    3876:	701a      	strb	r2, [r3, #0]
    3878:	4b08      	ldr	r3, [pc, #32]	; (389c <put_char+0x104>)
    387a:	781b      	ldrb	r3, [r3, #0]
    387c:	2baf      	cmp	r3, #175	; 0xaf
    387e:	d906      	bls.n	388e <put_char+0xf6>
    3880:	f7ff ff08 	bl	3694 <new_line>
    3884:	e003      	b.n	388e <put_char+0xf6>
    3886:	bf00      	nop
    3888:	e002      	b.n	3890 <put_char+0xf8>
    388a:	bf00      	nop
    388c:	e000      	b.n	3890 <put_char+0xf8>
    388e:	bf00      	nop
    3890:	bf00      	nop
    3892:	3708      	adds	r7, #8
    3894:	46bd      	mov	sp, r7
    3896:	bd80      	pop	{r7, pc}
    3898:	20000058 	.word	0x20000058
    389c:	200004f4 	.word	0x200004f4
    38a0:	200004f5 	.word	0x200004f5
    38a4:	00004130 	.word	0x00004130
    38a8:	00004190 	.word	0x00004190
    38ac:	00004230 	.word	0x00004230

000038b0 <set_cursor>:
    38b0:	b480      	push	{r7}
    38b2:	b083      	sub	sp, #12
    38b4:	af00      	add	r7, sp, #0
    38b6:	4603      	mov	r3, r0
    38b8:	460a      	mov	r2, r1
    38ba:	71fb      	strb	r3, [r7, #7]
    38bc:	4613      	mov	r3, r2
    38be:	71bb      	strb	r3, [r7, #6]
    38c0:	4a05      	ldr	r2, [pc, #20]	; (38d8 <set_cursor+0x28>)
    38c2:	79fb      	ldrb	r3, [r7, #7]
    38c4:	7013      	strb	r3, [r2, #0]
    38c6:	4a05      	ldr	r2, [pc, #20]	; (38dc <set_cursor+0x2c>)
    38c8:	79bb      	ldrb	r3, [r7, #6]
    38ca:	7013      	strb	r3, [r2, #0]
    38cc:	bf00      	nop
    38ce:	370c      	adds	r7, #12
    38d0:	46bd      	mov	sp, r7
    38d2:	bc80      	pop	{r7}
    38d4:	4770      	bx	lr
    38d6:	bf00      	nop
    38d8:	200004f4 	.word	0x200004f4
    38dc:	200004f5 	.word	0x200004f5

000038e0 <get_cursor>:
    38e0:	b480      	push	{r7}
    38e2:	af00      	add	r7, sp, #0
    38e4:	4b06      	ldr	r3, [pc, #24]	; (3900 <get_cursor+0x20>)
    38e6:	781b      	ldrb	r3, [r3, #0]
    38e8:	b29b      	uxth	r3, r3
    38ea:	021b      	lsls	r3, r3, #8
    38ec:	b29a      	uxth	r2, r3
    38ee:	4b05      	ldr	r3, [pc, #20]	; (3904 <get_cursor+0x24>)
    38f0:	781b      	ldrb	r3, [r3, #0]
    38f2:	b29b      	uxth	r3, r3
    38f4:	4413      	add	r3, r2
    38f6:	b29b      	uxth	r3, r3
    38f8:	4618      	mov	r0, r3
    38fa:	46bd      	mov	sp, r7
    38fc:	bc80      	pop	{r7}
    38fe:	4770      	bx	lr
    3900:	200004f4 	.word	0x200004f4
    3904:	200004f5 	.word	0x200004f5

00003908 <print>:
    3908:	b580      	push	{r7, lr}
    390a:	b084      	sub	sp, #16
    390c:	af00      	add	r7, sp, #0
    390e:	6078      	str	r0, [r7, #4]
    3910:	e011      	b.n	3936 <print+0x2e>
    3912:	7bfb      	ldrb	r3, [r7, #15]
    3914:	2b0a      	cmp	r3, #10
    3916:	d004      	beq.n	3922 <print+0x1a>
    3918:	2b0d      	cmp	r3, #13
    391a:	d002      	beq.n	3922 <print+0x1a>
    391c:	2b08      	cmp	r3, #8
    391e:	d003      	beq.n	3928 <print+0x20>
    3920:	e005      	b.n	392e <print+0x26>
    3922:	f7ff feb7 	bl	3694 <new_line>
    3926:	e006      	b.n	3936 <print+0x2e>
    3928:	f000 f88e 	bl	3a48 <cursor_left>
    392c:	e003      	b.n	3936 <print+0x2e>
    392e:	7bfb      	ldrb	r3, [r7, #15]
    3930:	4618      	mov	r0, r3
    3932:	f7ff ff31 	bl	3798 <put_char>
    3936:	687b      	ldr	r3, [r7, #4]
    3938:	1c5a      	adds	r2, r3, #1
    393a:	607a      	str	r2, [r7, #4]
    393c:	781b      	ldrb	r3, [r3, #0]
    393e:	73fb      	strb	r3, [r7, #15]
    3940:	7bfb      	ldrb	r3, [r7, #15]
    3942:	2b00      	cmp	r3, #0
    3944:	d1e5      	bne.n	3912 <print+0xa>
    3946:	bf00      	nop
    3948:	3710      	adds	r7, #16
    394a:	46bd      	mov	sp, r7
    394c:	bd80      	pop	{r7, pc}

0000394e <print_int>:
    394e:	b580      	push	{r7, lr}
    3950:	b08a      	sub	sp, #40	; 0x28
    3952:	af00      	add	r7, sp, #0
    3954:	6078      	str	r0, [r7, #4]
    3956:	460b      	mov	r3, r1
    3958:	70fb      	strb	r3, [r7, #3]
    395a:	2300      	movs	r3, #0
    395c:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3960:	2300      	movs	r3, #0
    3962:	76fb      	strb	r3, [r7, #27]
    3964:	2320      	movs	r3, #32
    3966:	76bb      	strb	r3, [r7, #26]
    3968:	230e      	movs	r3, #14
    396a:	623b      	str	r3, [r7, #32]
    396c:	687b      	ldr	r3, [r7, #4]
    396e:	2b00      	cmp	r3, #0
    3970:	da27      	bge.n	39c2 <print_int+0x74>
    3972:	2301      	movs	r3, #1
    3974:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3978:	687b      	ldr	r3, [r7, #4]
    397a:	425b      	negs	r3, r3
    397c:	607b      	str	r3, [r7, #4]
    397e:	e020      	b.n	39c2 <print_int+0x74>
    3980:	78fa      	ldrb	r2, [r7, #3]
    3982:	687b      	ldr	r3, [r7, #4]
    3984:	fb93 f1f2 	sdiv	r1, r3, r2
    3988:	fb02 f201 	mul.w	r2, r2, r1
    398c:	1a9b      	subs	r3, r3, r2
    398e:	61fb      	str	r3, [r7, #28]
    3990:	69fb      	ldr	r3, [r7, #28]
    3992:	2b09      	cmp	r3, #9
    3994:	dd02      	ble.n	399c <print_int+0x4e>
    3996:	69fb      	ldr	r3, [r7, #28]
    3998:	3307      	adds	r3, #7
    399a:	61fb      	str	r3, [r7, #28]
    399c:	6a3b      	ldr	r3, [r7, #32]
    399e:	3b01      	subs	r3, #1
    39a0:	623b      	str	r3, [r7, #32]
    39a2:	69fb      	ldr	r3, [r7, #28]
    39a4:	3330      	adds	r3, #48	; 0x30
    39a6:	61fb      	str	r3, [r7, #28]
    39a8:	69fb      	ldr	r3, [r7, #28]
    39aa:	b2d9      	uxtb	r1, r3
    39ac:	f107 020c 	add.w	r2, r7, #12
    39b0:	6a3b      	ldr	r3, [r7, #32]
    39b2:	4413      	add	r3, r2
    39b4:	460a      	mov	r2, r1
    39b6:	701a      	strb	r2, [r3, #0]
    39b8:	78fb      	ldrb	r3, [r7, #3]
    39ba:	687a      	ldr	r2, [r7, #4]
    39bc:	fb92 f3f3 	sdiv	r3, r2, r3
    39c0:	607b      	str	r3, [r7, #4]
    39c2:	6a3b      	ldr	r3, [r7, #32]
    39c4:	2b01      	cmp	r3, #1
    39c6:	dd02      	ble.n	39ce <print_int+0x80>
    39c8:	687b      	ldr	r3, [r7, #4]
    39ca:	2b00      	cmp	r3, #0
    39cc:	d1d8      	bne.n	3980 <print_int+0x32>
    39ce:	6a3b      	ldr	r3, [r7, #32]
    39d0:	2b0e      	cmp	r3, #14
    39d2:	d108      	bne.n	39e6 <print_int+0x98>
    39d4:	6a3b      	ldr	r3, [r7, #32]
    39d6:	3b01      	subs	r3, #1
    39d8:	623b      	str	r3, [r7, #32]
    39da:	f107 020c 	add.w	r2, r7, #12
    39de:	6a3b      	ldr	r3, [r7, #32]
    39e0:	4413      	add	r3, r2
    39e2:	2230      	movs	r2, #48	; 0x30
    39e4:	701a      	strb	r2, [r3, #0]
    39e6:	78fb      	ldrb	r3, [r7, #3]
    39e8:	2b0a      	cmp	r3, #10
    39ea:	d10d      	bne.n	3a08 <print_int+0xba>
    39ec:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    39f0:	2b00      	cmp	r3, #0
    39f2:	d009      	beq.n	3a08 <print_int+0xba>
    39f4:	6a3b      	ldr	r3, [r7, #32]
    39f6:	3b01      	subs	r3, #1
    39f8:	623b      	str	r3, [r7, #32]
    39fa:	f107 020c 	add.w	r2, r7, #12
    39fe:	6a3b      	ldr	r3, [r7, #32]
    3a00:	4413      	add	r3, r2
    3a02:	222d      	movs	r2, #45	; 0x2d
    3a04:	701a      	strb	r2, [r3, #0]
    3a06:	e014      	b.n	3a32 <print_int+0xe4>
    3a08:	78fb      	ldrb	r3, [r7, #3]
    3a0a:	2b10      	cmp	r3, #16
    3a0c:	d111      	bne.n	3a32 <print_int+0xe4>
    3a0e:	6a3b      	ldr	r3, [r7, #32]
    3a10:	3b01      	subs	r3, #1
    3a12:	623b      	str	r3, [r7, #32]
    3a14:	f107 020c 	add.w	r2, r7, #12
    3a18:	6a3b      	ldr	r3, [r7, #32]
    3a1a:	4413      	add	r3, r2
    3a1c:	2278      	movs	r2, #120	; 0x78
    3a1e:	701a      	strb	r2, [r3, #0]
    3a20:	6a3b      	ldr	r3, [r7, #32]
    3a22:	3b01      	subs	r3, #1
    3a24:	623b      	str	r3, [r7, #32]
    3a26:	f107 020c 	add.w	r2, r7, #12
    3a2a:	6a3b      	ldr	r3, [r7, #32]
    3a2c:	4413      	add	r3, r2
    3a2e:	2230      	movs	r2, #48	; 0x30
    3a30:	701a      	strb	r2, [r3, #0]
    3a32:	f107 020c 	add.w	r2, r7, #12
    3a36:	6a3b      	ldr	r3, [r7, #32]
    3a38:	4413      	add	r3, r2
    3a3a:	4618      	mov	r0, r3
    3a3c:	f7ff ff64 	bl	3908 <print>
    3a40:	bf00      	nop
    3a42:	3728      	adds	r7, #40	; 0x28
    3a44:	46bd      	mov	sp, r7
    3a46:	bd80      	pop	{r7, pc}

00003a48 <cursor_left>:
    3a48:	b480      	push	{r7}
    3a4a:	af00      	add	r7, sp, #0
    3a4c:	4b1a      	ldr	r3, [pc, #104]	; (3ab8 <cursor_left+0x70>)
    3a4e:	781b      	ldrb	r3, [r3, #0]
    3a50:	2b01      	cmp	r3, #1
    3a52:	d010      	beq.n	3a76 <cursor_left+0x2e>
    3a54:	2b02      	cmp	r3, #2
    3a56:	d01a      	beq.n	3a8e <cursor_left+0x46>
    3a58:	2b00      	cmp	r3, #0
    3a5a:	d000      	beq.n	3a5e <cursor_left+0x16>
    3a5c:	e028      	b.n	3ab0 <cursor_left+0x68>
    3a5e:	4b17      	ldr	r3, [pc, #92]	; (3abc <cursor_left+0x74>)
    3a60:	781b      	ldrb	r3, [r3, #0]
    3a62:	3b04      	subs	r3, #4
    3a64:	2b00      	cmp	r3, #0
    3a66:	db1e      	blt.n	3aa6 <cursor_left+0x5e>
    3a68:	4b14      	ldr	r3, [pc, #80]	; (3abc <cursor_left+0x74>)
    3a6a:	781b      	ldrb	r3, [r3, #0]
    3a6c:	3b04      	subs	r3, #4
    3a6e:	b2da      	uxtb	r2, r3
    3a70:	4b12      	ldr	r3, [pc, #72]	; (3abc <cursor_left+0x74>)
    3a72:	701a      	strb	r2, [r3, #0]
    3a74:	e017      	b.n	3aa6 <cursor_left+0x5e>
    3a76:	4b11      	ldr	r3, [pc, #68]	; (3abc <cursor_left+0x74>)
    3a78:	781b      	ldrb	r3, [r3, #0]
    3a7a:	3b08      	subs	r3, #8
    3a7c:	2b00      	cmp	r3, #0
    3a7e:	db14      	blt.n	3aaa <cursor_left+0x62>
    3a80:	4b0e      	ldr	r3, [pc, #56]	; (3abc <cursor_left+0x74>)
    3a82:	781b      	ldrb	r3, [r3, #0]
    3a84:	3b08      	subs	r3, #8
    3a86:	b2da      	uxtb	r2, r3
    3a88:	4b0c      	ldr	r3, [pc, #48]	; (3abc <cursor_left+0x74>)
    3a8a:	701a      	strb	r2, [r3, #0]
    3a8c:	e00d      	b.n	3aaa <cursor_left+0x62>
    3a8e:	4b0b      	ldr	r3, [pc, #44]	; (3abc <cursor_left+0x74>)
    3a90:	781b      	ldrb	r3, [r3, #0]
    3a92:	3b06      	subs	r3, #6
    3a94:	2b00      	cmp	r3, #0
    3a96:	db0a      	blt.n	3aae <cursor_left+0x66>
    3a98:	4b08      	ldr	r3, [pc, #32]	; (3abc <cursor_left+0x74>)
    3a9a:	781b      	ldrb	r3, [r3, #0]
    3a9c:	3b06      	subs	r3, #6
    3a9e:	b2da      	uxtb	r2, r3
    3aa0:	4b06      	ldr	r3, [pc, #24]	; (3abc <cursor_left+0x74>)
    3aa2:	701a      	strb	r2, [r3, #0]
    3aa4:	e003      	b.n	3aae <cursor_left+0x66>
    3aa6:	bf00      	nop
    3aa8:	e002      	b.n	3ab0 <cursor_left+0x68>
    3aaa:	bf00      	nop
    3aac:	e000      	b.n	3ab0 <cursor_left+0x68>
    3aae:	bf00      	nop
    3ab0:	bf00      	nop
    3ab2:	46bd      	mov	sp, r7
    3ab4:	bc80      	pop	{r7}
    3ab6:	4770      	bx	lr
    3ab8:	20000058 	.word	0x20000058
    3abc:	200004f4 	.word	0x200004f4

00003ac0 <text_scroller>:
    3ac0:	b580      	push	{r7, lr}
    3ac2:	b084      	sub	sp, #16
    3ac4:	af00      	add	r7, sp, #0
    3ac6:	6078      	str	r0, [r7, #4]
    3ac8:	460b      	mov	r3, r1
    3aca:	70fb      	strb	r3, [r7, #3]
    3acc:	f7fe f898 	bl	1c00 <gfx_cls>
    3ad0:	2002      	movs	r0, #2
    3ad2:	f7ff fdcf 	bl	3674 <select_font>
    3ad6:	687b      	ldr	r3, [r7, #4]
    3ad8:	1c5a      	adds	r2, r3, #1
    3ada:	607a      	str	r2, [r7, #4]
    3adc:	781b      	ldrb	r3, [r3, #0]
    3ade:	73fb      	strb	r3, [r7, #15]
    3ae0:	e038      	b.n	3b54 <text_scroller+0x94>
    3ae2:	2120      	movs	r1, #32
    3ae4:	2000      	movs	r0, #0
    3ae6:	f7ff fee3 	bl	38b0 <set_cursor>
    3aea:	e00e      	b.n	3b0a <text_scroller+0x4a>
    3aec:	7bfb      	ldrb	r3, [r7, #15]
    3aee:	4618      	mov	r0, r3
    3af0:	f7ff fe52 	bl	3798 <put_char>
    3af4:	687b      	ldr	r3, [r7, #4]
    3af6:	1c5a      	adds	r2, r3, #1
    3af8:	607a      	str	r2, [r7, #4]
    3afa:	781b      	ldrb	r3, [r3, #0]
    3afc:	73fb      	strb	r3, [r7, #15]
    3afe:	4b2d      	ldr	r3, [pc, #180]	; (3bb4 <text_scroller+0xf4>)
    3b00:	881b      	ldrh	r3, [r3, #0]
    3b02:	b29b      	uxth	r3, r3
    3b04:	b21b      	sxth	r3, r3
    3b06:	2b00      	cmp	r3, #0
    3b08:	da42      	bge.n	3b90 <text_scroller+0xd0>
    3b0a:	7bfb      	ldrb	r3, [r7, #15]
    3b0c:	2b00      	cmp	r3, #0
    3b0e:	d002      	beq.n	3b16 <text_scroller+0x56>
    3b10:	7bfb      	ldrb	r3, [r7, #15]
    3b12:	2b0a      	cmp	r3, #10
    3b14:	d1ea      	bne.n	3aec <text_scroller+0x2c>
    3b16:	2300      	movs	r3, #0
    3b18:	73bb      	strb	r3, [r7, #14]
    3b1a:	e013      	b.n	3b44 <text_scroller+0x84>
    3b1c:	78fb      	ldrb	r3, [r7, #3]
    3b1e:	4a26      	ldr	r2, [pc, #152]	; (3bb8 <text_scroller+0xf8>)
    3b20:	6013      	str	r3, [r2, #0]
    3b22:	bf00      	nop
    3b24:	4b24      	ldr	r3, [pc, #144]	; (3bb8 <text_scroller+0xf8>)
    3b26:	681b      	ldr	r3, [r3, #0]
    3b28:	2b00      	cmp	r3, #0
    3b2a:	d1fb      	bne.n	3b24 <text_scroller+0x64>
    3b2c:	2001      	movs	r0, #1
    3b2e:	f7fe f8b7 	bl	1ca0 <gfx_scroll_up>
    3b32:	4b20      	ldr	r3, [pc, #128]	; (3bb4 <text_scroller+0xf4>)
    3b34:	881b      	ldrh	r3, [r3, #0]
    3b36:	b29b      	uxth	r3, r3
    3b38:	b21b      	sxth	r3, r3
    3b3a:	2b00      	cmp	r3, #0
    3b3c:	da2a      	bge.n	3b94 <text_scroller+0xd4>
    3b3e:	7bbb      	ldrb	r3, [r7, #14]
    3b40:	3301      	adds	r3, #1
    3b42:	73bb      	strb	r3, [r7, #14]
    3b44:	7bbb      	ldrb	r3, [r7, #14]
    3b46:	2b07      	cmp	r3, #7
    3b48:	d9e8      	bls.n	3b1c <text_scroller+0x5c>
    3b4a:	687b      	ldr	r3, [r7, #4]
    3b4c:	1c5a      	adds	r2, r3, #1
    3b4e:	607a      	str	r2, [r7, #4]
    3b50:	781b      	ldrb	r3, [r3, #0]
    3b52:	73fb      	strb	r3, [r7, #15]
    3b54:	7bfb      	ldrb	r3, [r7, #15]
    3b56:	2b00      	cmp	r3, #0
    3b58:	d1c3      	bne.n	3ae2 <text_scroller+0x22>
    3b5a:	2300      	movs	r3, #0
    3b5c:	73fb      	strb	r3, [r7, #15]
    3b5e:	e013      	b.n	3b88 <text_scroller+0xc8>
    3b60:	78fb      	ldrb	r3, [r7, #3]
    3b62:	4a15      	ldr	r2, [pc, #84]	; (3bb8 <text_scroller+0xf8>)
    3b64:	6013      	str	r3, [r2, #0]
    3b66:	bf00      	nop
    3b68:	4b13      	ldr	r3, [pc, #76]	; (3bb8 <text_scroller+0xf8>)
    3b6a:	681b      	ldr	r3, [r3, #0]
    3b6c:	2b00      	cmp	r3, #0
    3b6e:	d1fb      	bne.n	3b68 <text_scroller+0xa8>
    3b70:	2001      	movs	r0, #1
    3b72:	f7fe f895 	bl	1ca0 <gfx_scroll_up>
    3b76:	4b0f      	ldr	r3, [pc, #60]	; (3bb4 <text_scroller+0xf4>)
    3b78:	881b      	ldrh	r3, [r3, #0]
    3b7a:	b29b      	uxth	r3, r3
    3b7c:	b21b      	sxth	r3, r3
    3b7e:	2b00      	cmp	r3, #0
    3b80:	da0a      	bge.n	3b98 <text_scroller+0xd8>
    3b82:	7bfb      	ldrb	r3, [r7, #15]
    3b84:	3301      	adds	r3, #1
    3b86:	73fb      	strb	r3, [r7, #15]
    3b88:	7bfb      	ldrb	r3, [r7, #15]
    3b8a:	2b1f      	cmp	r3, #31
    3b8c:	d9e8      	bls.n	3b60 <text_scroller+0xa0>
    3b8e:	e004      	b.n	3b9a <text_scroller+0xda>
    3b90:	bf00      	nop
    3b92:	e002      	b.n	3b9a <text_scroller+0xda>
    3b94:	bf00      	nop
    3b96:	e000      	b.n	3b9a <text_scroller+0xda>
    3b98:	bf00      	nop
    3b9a:	f7fe f831 	bl	1c00 <gfx_cls>
    3b9e:	bf00      	nop
    3ba0:	4b04      	ldr	r3, [pc, #16]	; (3bb4 <text_scroller+0xf4>)
    3ba2:	881b      	ldrh	r3, [r3, #0]
    3ba4:	b29b      	uxth	r3, r3
    3ba6:	b21b      	sxth	r3, r3
    3ba8:	2b00      	cmp	r3, #0
    3baa:	daf9      	bge.n	3ba0 <text_scroller+0xe0>
    3bac:	bf00      	nop
    3bae:	3710      	adds	r7, #16
    3bb0:	46bd      	mov	sp, r7
    3bb2:	bd80      	pop	{r7, pc}
    3bb4:	20002550 	.word	0x20002550
    3bb8:	200004f0 	.word	0x200004f0

00003bbc <prompt_btn>:
    3bbc:	b580      	push	{r7, lr}
    3bbe:	af00      	add	r7, sp, #0
    3bc0:	4802      	ldr	r0, [pc, #8]	; (3bcc <prompt_btn+0x10>)
    3bc2:	f7ff fea1 	bl	3908 <print>
    3bc6:	bf00      	nop
    3bc8:	bd80      	pop	{r7, pc}
    3bca:	bf00      	nop
    3bcc:	000046a4 	.word	0x000046a4

00003bd0 <clear_screen>:
    3bd0:	b580      	push	{r7, lr}
    3bd2:	af00      	add	r7, sp, #0
    3bd4:	f7fe f814 	bl	1c00 <gfx_cls>
    3bd8:	4b03      	ldr	r3, [pc, #12]	; (3be8 <clear_screen+0x18>)
    3bda:	2200      	movs	r2, #0
    3bdc:	701a      	strb	r2, [r3, #0]
    3bde:	4b03      	ldr	r3, [pc, #12]	; (3bec <clear_screen+0x1c>)
    3be0:	2200      	movs	r2, #0
    3be2:	701a      	strb	r2, [r3, #0]
    3be4:	bf00      	nop
    3be6:	bd80      	pop	{r7, pc}
    3be8:	200004f4 	.word	0x200004f4
    3bec:	200004f5 	.word	0x200004f5

00003bf0 <tvout_init>:
    3bf0:	b580      	push	{r7, lr}
    3bf2:	af00      	add	r7, sp, #0
    3bf4:	4b45      	ldr	r3, [pc, #276]	; (3d0c <tvout_init+0x11c>)
    3bf6:	4a46      	ldr	r2, [pc, #280]	; (3d10 <tvout_init+0x120>)
    3bf8:	601a      	str	r2, [r3, #0]
    3bfa:	4b46      	ldr	r3, [pc, #280]	; (3d14 <tvout_init+0x124>)
    3bfc:	4a46      	ldr	r2, [pc, #280]	; (3d18 <tvout_init+0x128>)
    3bfe:	601a      	str	r2, [r3, #0]
    3c00:	220a      	movs	r2, #10
    3c02:	2108      	movs	r1, #8
    3c04:	4841      	ldr	r0, [pc, #260]	; (3d0c <tvout_init+0x11c>)
    3c06:	f7fd fe76 	bl	18f6 <config_pin>
    3c0a:	4b40      	ldr	r3, [pc, #256]	; (3d0c <tvout_init+0x11c>)
    3c0c:	2200      	movs	r2, #0
    3c0e:	60da      	str	r2, [r3, #12]
    3c10:	4a42      	ldr	r2, [pc, #264]	; (3d1c <tvout_init+0x12c>)
    3c12:	4b42      	ldr	r3, [pc, #264]	; (3d1c <tvout_init+0x12c>)
    3c14:	699b      	ldr	r3, [r3, #24]
    3c16:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3c1a:	6193      	str	r3, [r2, #24]
    3c1c:	4b40      	ldr	r3, [pc, #256]	; (3d20 <tvout_init+0x130>)
    3c1e:	2278      	movs	r2, #120	; 0x78
    3c20:	619a      	str	r2, [r3, #24]
    3c22:	4b3f      	ldr	r3, [pc, #252]	; (3d20 <tvout_init+0x130>)
    3c24:	2201      	movs	r2, #1
    3c26:	621a      	str	r2, [r3, #32]
    3c28:	4b3d      	ldr	r3, [pc, #244]	; (3d20 <tvout_init+0x130>)
    3c2a:	2284      	movs	r2, #132	; 0x84
    3c2c:	601a      	str	r2, [r3, #0]
    3c2e:	4b3c      	ldr	r3, [pc, #240]	; (3d20 <tvout_init+0x130>)
    3c30:	f241 12c5 	movw	r2, #4549	; 0x11c5
    3c34:	62da      	str	r2, [r3, #44]	; 0x2c
    3c36:	4b3a      	ldr	r3, [pc, #232]	; (3d20 <tvout_init+0x130>)
    3c38:	f44f 72a8 	mov.w	r2, #336	; 0x150
    3c3c:	635a      	str	r2, [r3, #52]	; 0x34
    3c3e:	4b38      	ldr	r3, [pc, #224]	; (3d20 <tvout_init+0x130>)
    3c40:	f240 126d 	movw	r2, #365	; 0x16d
    3c44:	639a      	str	r2, [r3, #56]	; 0x38
    3c46:	4a36      	ldr	r2, [pc, #216]	; (3d20 <tvout_init+0x130>)
    3c48:	4b35      	ldr	r3, [pc, #212]	; (3d20 <tvout_init+0x130>)
    3c4a:	695b      	ldr	r3, [r3, #20]
    3c4c:	f043 0301 	orr.w	r3, r3, #1
    3c50:	6153      	str	r3, [r2, #20]
    3c52:	4b33      	ldr	r3, [pc, #204]	; (3d20 <tvout_init+0x130>)
    3c54:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    3c58:	645a      	str	r2, [r3, #68]	; 0x44
    3c5a:	4b31      	ldr	r3, [pc, #196]	; (3d20 <tvout_init+0x130>)
    3c5c:	2200      	movs	r2, #0
    3c5e:	611a      	str	r2, [r3, #16]
    3c60:	4a2f      	ldr	r2, [pc, #188]	; (3d20 <tvout_init+0x130>)
    3c62:	4b2f      	ldr	r3, [pc, #188]	; (3d20 <tvout_init+0x130>)
    3c64:	68db      	ldr	r3, [r3, #12]
    3c66:	f043 0301 	orr.w	r3, r3, #1
    3c6a:	60d3      	str	r3, [r2, #12]
    3c6c:	2100      	movs	r1, #0
    3c6e:	2019      	movs	r0, #25
    3c70:	f7fe fc96 	bl	25a0 <set_int_priority>
    3c74:	2100      	movs	r1, #0
    3c76:	201b      	movs	r0, #27
    3c78:	f7fe fc92 	bl	25a0 <set_int_priority>
    3c7c:	201b      	movs	r0, #27
    3c7e:	f7fe fbd5 	bl	242c <enable_interrupt>
    3c82:	2019      	movs	r0, #25
    3c84:	f7fe fbd2 	bl	242c <enable_interrupt>
    3c88:	4a25      	ldr	r2, [pc, #148]	; (3d20 <tvout_init+0x130>)
    3c8a:	4b25      	ldr	r3, [pc, #148]	; (3d20 <tvout_init+0x130>)
    3c8c:	681b      	ldr	r3, [r3, #0]
    3c8e:	f043 0301 	orr.w	r3, r3, #1
    3c92:	6013      	str	r3, [r2, #0]
    3c94:	220a      	movs	r2, #10
    3c96:	2100      	movs	r1, #0
    3c98:	4822      	ldr	r0, [pc, #136]	; (3d24 <tvout_init+0x134>)
    3c9a:	f7fd fe2c 	bl	18f6 <config_pin>
    3c9e:	220a      	movs	r2, #10
    3ca0:	2101      	movs	r1, #1
    3ca2:	4820      	ldr	r0, [pc, #128]	; (3d24 <tvout_init+0x134>)
    3ca4:	f7fd fe27 	bl	18f6 <config_pin>
    3ca8:	4a1c      	ldr	r2, [pc, #112]	; (3d1c <tvout_init+0x12c>)
    3caa:	4b1c      	ldr	r3, [pc, #112]	; (3d1c <tvout_init+0x12c>)
    3cac:	69db      	ldr	r3, [r3, #28]
    3cae:	f043 0302 	orr.w	r3, r3, #2
    3cb2:	61d3      	str	r3, [r2, #28]
    3cb4:	4b1c      	ldr	r3, [pc, #112]	; (3d28 <tvout_init+0x138>)
    3cb6:	f246 0278 	movw	r2, #24696	; 0x6078
    3cba:	61da      	str	r2, [r3, #28]
    3cbc:	4b1a      	ldr	r3, [pc, #104]	; (3d28 <tvout_init+0x138>)
    3cbe:	f44f 5204 	mov.w	r2, #8448	; 0x2100
    3cc2:	621a      	str	r2, [r3, #32]
    3cc4:	4b18      	ldr	r3, [pc, #96]	; (3d28 <tvout_init+0x138>)
    3cc6:	2284      	movs	r2, #132	; 0x84
    3cc8:	601a      	str	r2, [r3, #0]
    3cca:	4b17      	ldr	r3, [pc, #92]	; (3d28 <tvout_init+0x138>)
    3ccc:	2213      	movs	r2, #19
    3cce:	62da      	str	r2, [r3, #44]	; 0x2c
    3cd0:	4b15      	ldr	r3, [pc, #84]	; (3d28 <tvout_init+0x138>)
    3cd2:	220a      	movs	r2, #10
    3cd4:	63da      	str	r2, [r3, #60]	; 0x3c
    3cd6:	4b14      	ldr	r3, [pc, #80]	; (3d28 <tvout_init+0x138>)
    3cd8:	220a      	movs	r2, #10
    3cda:	641a      	str	r2, [r3, #64]	; 0x40
    3cdc:	4a12      	ldr	r2, [pc, #72]	; (3d28 <tvout_init+0x138>)
    3cde:	4b12      	ldr	r3, [pc, #72]	; (3d28 <tvout_init+0x138>)
    3ce0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    3ce2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    3ce6:	6453      	str	r3, [r2, #68]	; 0x44
    3ce8:	4a0f      	ldr	r2, [pc, #60]	; (3d28 <tvout_init+0x138>)
    3cea:	4b0f      	ldr	r3, [pc, #60]	; (3d28 <tvout_init+0x138>)
    3cec:	695b      	ldr	r3, [r3, #20]
    3cee:	f043 0301 	orr.w	r3, r3, #1
    3cf2:	6153      	str	r3, [r2, #20]
    3cf4:	4b0c      	ldr	r3, [pc, #48]	; (3d28 <tvout_init+0x138>)
    3cf6:	2200      	movs	r2, #0
    3cf8:	611a      	str	r2, [r3, #16]
    3cfa:	4a0b      	ldr	r2, [pc, #44]	; (3d28 <tvout_init+0x138>)
    3cfc:	4b0a      	ldr	r3, [pc, #40]	; (3d28 <tvout_init+0x138>)
    3cfe:	681b      	ldr	r3, [r3, #0]
    3d00:	f043 0301 	orr.w	r3, r3, #1
    3d04:	6013      	str	r3, [r2, #0]
    3d06:	bf00      	nop
    3d08:	bd80      	pop	{r7, pc}
    3d0a:	bf00      	nop
    3d0c:	40010800 	.word	0x40010800
    3d10:	88883333 	.word	0x88883333
    3d14:	40010804 	.word	0x40010804
    3d18:	88444444 	.word	0x88444444
    3d1c:	40021000 	.word	0x40021000
    3d20:	40012c00 	.word	0x40012c00
    3d24:	40010c00 	.word	0x40010c00
    3d28:	40000400 	.word	0x40000400

00003d2c <TV_OUT_handler>:
    3d2c:	4668      	mov	r0, sp
    3d2e:	f020 0107 	bic.w	r1, r0, #7
    3d32:	468d      	mov	sp, r1
    3d34:	b471      	push	{r0, r4, r5, r6}
    3d36:	4a33      	ldr	r2, [pc, #204]	; (3e04 <TV_OUT_handler+0xd8>)
    3d38:	6a13      	ldr	r3, [r2, #32]
    3d3a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3d3e:	6213      	str	r3, [r2, #32]
    3d40:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    3d44:	6a53      	ldr	r3, [r2, #36]	; 0x24
    3d46:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    3d4a:	d9fb      	bls.n	3d44 <TV_OUT_handler+0x18>
    3d4c:	4a2d      	ldr	r2, [pc, #180]	; (3e04 <TV_OUT_handler+0xd8>)
    3d4e:	6a13      	ldr	r3, [r2, #32]
    3d50:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3d54:	6213      	str	r3, [r2, #32]
    3d56:	4b2c      	ldr	r3, [pc, #176]	; (3e08 <TV_OUT_handler+0xdc>)
    3d58:	881b      	ldrh	r3, [r3, #0]
    3d5a:	f013 0f04 	tst.w	r3, #4
    3d5e:	d048      	beq.n	3df2 <TV_OUT_handler+0xc6>
    3d60:	4b2a      	ldr	r3, [pc, #168]	; (3e0c <TV_OUT_handler+0xe0>)
    3d62:	781c      	ldrb	r4, [r3, #0]
    3d64:	ebc4 02c4 	rsb	r2, r4, r4, lsl #3
    3d68:	4b29      	ldr	r3, [pc, #164]	; (3e10 <TV_OUT_handler+0xe4>)
    3d6a:	eb03 0342 	add.w	r3, r3, r2, lsl #1
    3d6e:	799d      	ldrb	r5, [r3, #6]
    3d70:	889a      	ldrh	r2, [r3, #4]
    3d72:	4928      	ldr	r1, [pc, #160]	; (3e14 <TV_OUT_handler+0xe8>)
    3d74:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    3d76:	4293      	cmp	r3, r2
    3d78:	d3fc      	bcc.n	3d74 <TV_OUT_handler+0x48>
    3d7a:	4b27      	ldr	r3, [pc, #156]	; (3e18 <TV_OUT_handler+0xec>)
    3d7c:	8818      	ldrh	r0, [r3, #0]
    3d7e:	f3c0 004e 	ubfx	r0, r0, #1, #15
    3d82:	4b26      	ldr	r3, [pc, #152]	; (3e1c <TV_OUT_handler+0xf0>)
    3d84:	fb05 3000 	mla	r0, r5, r0, r3
    3d88:	4a1e      	ldr	r2, [pc, #120]	; (3e04 <TV_OUT_handler+0xd8>)
    3d8a:	6a16      	ldr	r6, [r2, #32]
    3d8c:	ebc4 04c4 	rsb	r4, r4, r4, lsl #3
    3d90:	491f      	ldr	r1, [pc, #124]	; (3e10 <TV_OUT_handler+0xe4>)
    3d92:	eb01 0444 	add.w	r4, r1, r4, lsl #1
    3d96:	89a3      	ldrh	r3, [r4, #12]
    3d98:	4333      	orrs	r3, r6
    3d9a:	6213      	str	r3, [r2, #32]
    3d9c:	b2aa      	uxth	r2, r5
    3d9e:	b302      	cbz	r2, 3de2 <TV_OUT_handler+0xb6>
    3da0:	1e43      	subs	r3, r0, #1
    3da2:	3a01      	subs	r2, #1
    3da4:	b292      	uxth	r2, r2
    3da6:	4410      	add	r0, r2
    3da8:	491d      	ldr	r1, [pc, #116]	; (3e20 <TV_OUT_handler+0xf4>)
    3daa:	785a      	ldrb	r2, [r3, #1]
    3dac:	0912      	lsrs	r2, r2, #4
    3dae:	800a      	strh	r2, [r1, #0]
    3db0:	bf00      	nop
    3db2:	bf00      	nop
    3db4:	bf00      	nop
    3db6:	bf00      	nop
    3db8:	bf00      	nop
    3dba:	bf00      	nop
    3dbc:	bf00      	nop
    3dbe:	bf00      	nop
    3dc0:	bf00      	nop
    3dc2:	bf00      	nop
    3dc4:	bf00      	nop
    3dc6:	f813 2f01 	ldrb.w	r2, [r3, #1]!
    3dca:	f002 020f 	and.w	r2, r2, #15
    3dce:	800a      	strh	r2, [r1, #0]
    3dd0:	bf00      	nop
    3dd2:	bf00      	nop
    3dd4:	bf00      	nop
    3dd6:	bf00      	nop
    3dd8:	bf00      	nop
    3dda:	bf00      	nop
    3ddc:	bf00      	nop
    3dde:	4283      	cmp	r3, r0
    3de0:	d1e3      	bne.n	3daa <TV_OUT_handler+0x7e>
    3de2:	2200      	movs	r2, #0
    3de4:	4b0f      	ldr	r3, [pc, #60]	; (3e24 <TV_OUT_handler+0xf8>)
    3de6:	60da      	str	r2, [r3, #12]
    3de8:	4a06      	ldr	r2, [pc, #24]	; (3e04 <TV_OUT_handler+0xd8>)
    3dea:	6a13      	ldr	r3, [r2, #32]
    3dec:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    3df0:	6213      	str	r3, [r2, #32]
    3df2:	4a08      	ldr	r2, [pc, #32]	; (3e14 <TV_OUT_handler+0xe8>)
    3df4:	6913      	ldr	r3, [r2, #16]
    3df6:	f023 0304 	bic.w	r3, r3, #4
    3dfa:	6113      	str	r3, [r2, #16]
    3dfc:	bc71      	pop	{r0, r4, r5, r6}
    3dfe:	4685      	mov	sp, r0
    3e00:	4770      	bx	lr
    3e02:	bf00      	nop
    3e04:	40000400 	.word	0x40000400
    3e08:	200004fa 	.word	0x200004fa
    3e0c:	200004f6 	.word	0x200004f6
    3e10:	000046bc 	.word	0x000046bc
    3e14:	40012c00 	.word	0x40012c00
    3e18:	200004fc 	.word	0x200004fc
    3e1c:	20002554 	.word	0x20002554
    3e20:	4001080c 	.word	0x4001080c
    3e24:	40010800 	.word	0x40010800

00003e28 <TV_SYNC_handler>:
    3e28:	4668      	mov	r0, sp
    3e2a:	f020 0107 	bic.w	r1, r0, #7
    3e2e:	468d      	mov	sp, r1
    3e30:	b401      	push	{r0}
    3e32:	4a89      	ldr	r2, [pc, #548]	; (4058 <TV_SYNC_handler+0x230>)
    3e34:	8813      	ldrh	r3, [r2, #0]
    3e36:	3301      	adds	r3, #1
    3e38:	b29b      	uxth	r3, r3
    3e3a:	8013      	strh	r3, [r2, #0]
    3e3c:	4b87      	ldr	r3, [pc, #540]	; (405c <TV_SYNC_handler+0x234>)
    3e3e:	881b      	ldrh	r3, [r3, #0]
    3e40:	b29b      	uxth	r3, r3
    3e42:	2b07      	cmp	r3, #7
    3e44:	f200 808e 	bhi.w	3f64 <TV_SYNC_handler+0x13c>
    3e48:	e8df f013 	tbh	[pc, r3, lsl #1]
    3e4c:	002a0008 	.word	0x002a0008
    3e50:	006c004a 	.word	0x006c004a
    3e54:	00a30094 	.word	0x00a30094
    3e58:	00dd00be 	.word	0x00dd00be
    3e5c:	4b80      	ldr	r3, [pc, #512]	; (4060 <TV_SYNC_handler+0x238>)
    3e5e:	881b      	ldrh	r3, [r3, #0]
    3e60:	b29b      	uxth	r3, r3
    3e62:	b18b      	cbz	r3, 3e88 <TV_SYNC_handler+0x60>
    3e64:	4a7e      	ldr	r2, [pc, #504]	; (4060 <TV_SYNC_handler+0x238>)
    3e66:	8813      	ldrh	r3, [r2, #0]
    3e68:	3301      	adds	r3, #1
    3e6a:	b29b      	uxth	r3, r3
    3e6c:	8013      	strh	r3, [r2, #0]
    3e6e:	8813      	ldrh	r3, [r2, #0]
    3e70:	b29b      	uxth	r3, r3
    3e72:	2b06      	cmp	r3, #6
    3e74:	d176      	bne.n	3f64 <TV_SYNC_handler+0x13c>
    3e76:	2200      	movs	r2, #0
    3e78:	4b79      	ldr	r3, [pc, #484]	; (4060 <TV_SYNC_handler+0x238>)
    3e7a:	801a      	strh	r2, [r3, #0]
    3e7c:	4a77      	ldr	r2, [pc, #476]	; (405c <TV_SYNC_handler+0x234>)
    3e7e:	8813      	ldrh	r3, [r2, #0]
    3e80:	3301      	adds	r3, #1
    3e82:	b29b      	uxth	r3, r3
    3e84:	8013      	strh	r3, [r2, #0]
    3e86:	e06d      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3e88:	4b76      	ldr	r3, [pc, #472]	; (4064 <TV_SYNC_handler+0x23c>)
    3e8a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    3e8e:	62da      	str	r2, [r3, #44]	; 0x2c
    3e90:	22a4      	movs	r2, #164	; 0xa4
    3e92:	635a      	str	r2, [r3, #52]	; 0x34
    3e94:	4a72      	ldr	r2, [pc, #456]	; (4060 <TV_SYNC_handler+0x238>)
    3e96:	8813      	ldrh	r3, [r2, #0]
    3e98:	3301      	adds	r3, #1
    3e9a:	b29b      	uxth	r3, r3
    3e9c:	8013      	strh	r3, [r2, #0]
    3e9e:	e061      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3ea0:	4b6f      	ldr	r3, [pc, #444]	; (4060 <TV_SYNC_handler+0x238>)
    3ea2:	881b      	ldrh	r3, [r3, #0]
    3ea4:	b29b      	uxth	r3, r3
    3ea6:	b18b      	cbz	r3, 3ecc <TV_SYNC_handler+0xa4>
    3ea8:	4a6d      	ldr	r2, [pc, #436]	; (4060 <TV_SYNC_handler+0x238>)
    3eaa:	8813      	ldrh	r3, [r2, #0]
    3eac:	3301      	adds	r3, #1
    3eae:	b29b      	uxth	r3, r3
    3eb0:	8013      	strh	r3, [r2, #0]
    3eb2:	8813      	ldrh	r3, [r2, #0]
    3eb4:	b29b      	uxth	r3, r3
    3eb6:	2b06      	cmp	r3, #6
    3eb8:	d154      	bne.n	3f64 <TV_SYNC_handler+0x13c>
    3eba:	2200      	movs	r2, #0
    3ebc:	4b68      	ldr	r3, [pc, #416]	; (4060 <TV_SYNC_handler+0x238>)
    3ebe:	801a      	strh	r2, [r3, #0]
    3ec0:	4a66      	ldr	r2, [pc, #408]	; (405c <TV_SYNC_handler+0x234>)
    3ec2:	8813      	ldrh	r3, [r2, #0]
    3ec4:	3301      	adds	r3, #1
    3ec6:	b29b      	uxth	r3, r3
    3ec8:	8013      	strh	r3, [r2, #0]
    3eca:	e04b      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3ecc:	f240 7294 	movw	r2, #1940	; 0x794
    3ed0:	4b64      	ldr	r3, [pc, #400]	; (4064 <TV_SYNC_handler+0x23c>)
    3ed2:	635a      	str	r2, [r3, #52]	; 0x34
    3ed4:	4a62      	ldr	r2, [pc, #392]	; (4060 <TV_SYNC_handler+0x238>)
    3ed6:	8813      	ldrh	r3, [r2, #0]
    3ed8:	3301      	adds	r3, #1
    3eda:	b29b      	uxth	r3, r3
    3edc:	8013      	strh	r3, [r2, #0]
    3ede:	e041      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3ee0:	4b5f      	ldr	r3, [pc, #380]	; (4060 <TV_SYNC_handler+0x238>)
    3ee2:	881b      	ldrh	r3, [r3, #0]
    3ee4:	b29b      	uxth	r3, r3
    3ee6:	b153      	cbz	r3, 3efe <TV_SYNC_handler+0xd6>
    3ee8:	4b5d      	ldr	r3, [pc, #372]	; (4060 <TV_SYNC_handler+0x238>)
    3eea:	881b      	ldrh	r3, [r3, #0]
    3eec:	b29b      	uxth	r3, r3
    3eee:	2b06      	cmp	r3, #6
    3ef0:	d00e      	beq.n	3f10 <TV_SYNC_handler+0xe8>
    3ef2:	4a5b      	ldr	r2, [pc, #364]	; (4060 <TV_SYNC_handler+0x238>)
    3ef4:	8813      	ldrh	r3, [r2, #0]
    3ef6:	3301      	adds	r3, #1
    3ef8:	b29b      	uxth	r3, r3
    3efa:	8013      	strh	r3, [r2, #0]
    3efc:	e032      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3efe:	22a4      	movs	r2, #164	; 0xa4
    3f00:	4b58      	ldr	r3, [pc, #352]	; (4064 <TV_SYNC_handler+0x23c>)
    3f02:	635a      	str	r2, [r3, #52]	; 0x34
    3f04:	4a56      	ldr	r2, [pc, #344]	; (4060 <TV_SYNC_handler+0x238>)
    3f06:	8813      	ldrh	r3, [r2, #0]
    3f08:	3301      	adds	r3, #1
    3f0a:	b29b      	uxth	r3, r3
    3f0c:	8013      	strh	r3, [r2, #0]
    3f0e:	e029      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3f10:	4a52      	ldr	r2, [pc, #328]	; (405c <TV_SYNC_handler+0x234>)
    3f12:	8813      	ldrh	r3, [r2, #0]
    3f14:	3301      	adds	r3, #1
    3f16:	b29b      	uxth	r3, r3
    3f18:	8013      	strh	r3, [r2, #0]
    3f1a:	4b53      	ldr	r3, [pc, #332]	; (4068 <TV_SYNC_handler+0x240>)
    3f1c:	881b      	ldrh	r3, [r3, #0]
    3f1e:	f013 0f01 	tst.w	r3, #1
    3f22:	d01f      	beq.n	3f64 <TV_SYNC_handler+0x13c>
    3f24:	4a4f      	ldr	r2, [pc, #316]	; (4064 <TV_SYNC_handler+0x23c>)
    3f26:	f241 13c5 	movw	r3, #4549	; 0x11c5
    3f2a:	62d3      	str	r3, [r2, #44]	; 0x2c
    3f2c:	f44f 73a8 	mov.w	r3, #336	; 0x150
    3f30:	6353      	str	r3, [r2, #52]	; 0x34
    3f32:	494d      	ldr	r1, [pc, #308]	; (4068 <TV_SYNC_handler+0x240>)
    3f34:	880b      	ldrh	r3, [r1, #0]
    3f36:	f023 0302 	bic.w	r3, r3, #2
    3f3a:	041b      	lsls	r3, r3, #16
    3f3c:	0c1b      	lsrs	r3, r3, #16
    3f3e:	800b      	strh	r3, [r1, #0]
    3f40:	4945      	ldr	r1, [pc, #276]	; (4058 <TV_SYNC_handler+0x230>)
    3f42:	880b      	ldrh	r3, [r1, #0]
    3f44:	f3c3 038d 	ubfx	r3, r3, #2, #14
    3f48:	800b      	strh	r3, [r1, #0]
    3f4a:	4944      	ldr	r1, [pc, #272]	; (405c <TV_SYNC_handler+0x234>)
    3f4c:	880b      	ldrh	r3, [r1, #0]
    3f4e:	3301      	adds	r3, #1
    3f50:	b29b      	uxth	r3, r3
    3f52:	800b      	strh	r3, [r1, #0]
    3f54:	6913      	ldr	r3, [r2, #16]
    3f56:	f023 0304 	bic.w	r3, r3, #4
    3f5a:	6113      	str	r3, [r2, #16]
    3f5c:	68d3      	ldr	r3, [r2, #12]
    3f5e:	f043 0304 	orr.w	r3, r3, #4
    3f62:	60d3      	str	r3, [r2, #12]
    3f64:	4a3f      	ldr	r2, [pc, #252]	; (4064 <TV_SYNC_handler+0x23c>)
    3f66:	6913      	ldr	r3, [r2, #16]
    3f68:	f023 0301 	bic.w	r3, r3, #1
    3f6c:	6113      	str	r3, [r2, #16]
    3f6e:	bc01      	pop	{r0}
    3f70:	4685      	mov	sp, r0
    3f72:	4770      	bx	lr
    3f74:	4b3d      	ldr	r3, [pc, #244]	; (406c <TV_SYNC_handler+0x244>)
    3f76:	689b      	ldr	r3, [r3, #8]
    3f78:	f423 537c 	bic.w	r3, r3, #16128	; 0x3f00
    3f7c:	f023 030f 	bic.w	r3, r3, #15
    3f80:	b29b      	uxth	r3, r3
    3f82:	4a3b      	ldr	r2, [pc, #236]	; (4070 <TV_SYNC_handler+0x248>)
    3f84:	8013      	strh	r3, [r2, #0]
    3f86:	4a35      	ldr	r2, [pc, #212]	; (405c <TV_SYNC_handler+0x234>)
    3f88:	8813      	ldrh	r3, [r2, #0]
    3f8a:	3301      	adds	r3, #1
    3f8c:	b29b      	uxth	r3, r3
    3f8e:	8013      	strh	r3, [r2, #0]
    3f90:	e7e8      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3f92:	4b31      	ldr	r3, [pc, #196]	; (4058 <TV_SYNC_handler+0x230>)
    3f94:	881a      	ldrh	r2, [r3, #0]
    3f96:	b292      	uxth	r2, r2
    3f98:	4b36      	ldr	r3, [pc, #216]	; (4074 <TV_SYNC_handler+0x24c>)
    3f9a:	781b      	ldrb	r3, [r3, #0]
    3f9c:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
    3fa0:	4935      	ldr	r1, [pc, #212]	; (4078 <TV_SYNC_handler+0x250>)
    3fa2:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
    3fa6:	4293      	cmp	r3, r2
    3fa8:	d1dc      	bne.n	3f64 <TV_SYNC_handler+0x13c>
    3faa:	4a2c      	ldr	r2, [pc, #176]	; (405c <TV_SYNC_handler+0x234>)
    3fac:	8813      	ldrh	r3, [r2, #0]
    3fae:	3301      	adds	r3, #1
    3fb0:	b29b      	uxth	r3, r3
    3fb2:	8013      	strh	r3, [r2, #0]
    3fb4:	2200      	movs	r2, #0
    3fb6:	4b2a      	ldr	r3, [pc, #168]	; (4060 <TV_SYNC_handler+0x238>)
    3fb8:	801a      	strh	r2, [r3, #0]
    3fba:	4a2b      	ldr	r2, [pc, #172]	; (4068 <TV_SYNC_handler+0x240>)
    3fbc:	8813      	ldrh	r3, [r2, #0]
    3fbe:	b29b      	uxth	r3, r3
    3fc0:	f043 0304 	orr.w	r3, r3, #4
    3fc4:	8013      	strh	r3, [r2, #0]
    3fc6:	e7cd      	b.n	3f64 <TV_SYNC_handler+0x13c>
    3fc8:	4a25      	ldr	r2, [pc, #148]	; (4060 <TV_SYNC_handler+0x238>)
    3fca:	8813      	ldrh	r3, [r2, #0]
    3fcc:	3301      	adds	r3, #1
    3fce:	b29b      	uxth	r3, r3
    3fd0:	8013      	strh	r3, [r2, #0]
    3fd2:	4b21      	ldr	r3, [pc, #132]	; (4058 <TV_SYNC_handler+0x230>)
    3fd4:	881a      	ldrh	r2, [r3, #0]
    3fd6:	b292      	uxth	r2, r2
    3fd8:	4b26      	ldr	r3, [pc, #152]	; (4074 <TV_SYNC_handler+0x24c>)
    3fda:	781b      	ldrb	r3, [r3, #0]
    3fdc:	ebc3 03c3 	rsb	r3, r3, r3, lsl #3
    3fe0:	4925      	ldr	r1, [pc, #148]	; (4078 <TV_SYNC_handler+0x250>)
    3fe2:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    3fe6:	885b      	ldrh	r3, [r3, #2]
    3fe8:	4293      	cmp	r3, r2
    3fea:	d1bb      	bne.n	3f64 <TV_SYNC_handler+0x13c>
    3fec:	4a1b      	ldr	r2, [pc, #108]	; (405c <TV_SYNC_handler+0x234>)
    3fee:	8813      	ldrh	r3, [r2, #0]
    3ff0:	3301      	adds	r3, #1
    3ff2:	b29b      	uxth	r3, r3
    3ff4:	8013      	strh	r3, [r2, #0]
    3ff6:	4a1c      	ldr	r2, [pc, #112]	; (4068 <TV_SYNC_handler+0x240>)
    3ff8:	8813      	ldrh	r3, [r2, #0]
    3ffa:	f023 0304 	bic.w	r3, r3, #4
    3ffe:	041b      	lsls	r3, r3, #16
    4000:	0c1b      	lsrs	r3, r3, #16
    4002:	8013      	strh	r3, [r2, #0]
    4004:	e7ae      	b.n	3f64 <TV_SYNC_handler+0x13c>
    4006:	4b14      	ldr	r3, [pc, #80]	; (4058 <TV_SYNC_handler+0x230>)
    4008:	881b      	ldrh	r3, [r3, #0]
    400a:	b29b      	uxth	r3, r3
    400c:	f240 1207 	movw	r2, #263	; 0x107
    4010:	4293      	cmp	r3, r2
    4012:	d1a7      	bne.n	3f64 <TV_SYNC_handler+0x13c>
    4014:	4b14      	ldr	r3, [pc, #80]	; (4068 <TV_SYNC_handler+0x240>)
    4016:	881b      	ldrh	r3, [r3, #0]
    4018:	f013 0f01 	tst.w	r3, #1
    401c:	d003      	beq.n	4026 <TV_SYNC_handler+0x1fe>
    401e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4022:	4b10      	ldr	r3, [pc, #64]	; (4064 <TV_SYNC_handler+0x23c>)
    4024:	62da      	str	r2, [r3, #44]	; 0x2c
    4026:	4a10      	ldr	r2, [pc, #64]	; (4068 <TV_SYNC_handler+0x240>)
    4028:	8813      	ldrh	r3, [r2, #0]
    402a:	b29b      	uxth	r3, r3
    402c:	f083 0301 	eor.w	r3, r3, #1
    4030:	8013      	strh	r3, [r2, #0]
    4032:	8813      	ldrh	r3, [r2, #0]
    4034:	b29b      	uxth	r3, r3
    4036:	f043 0302 	orr.w	r3, r3, #2
    403a:	8013      	strh	r3, [r2, #0]
    403c:	2300      	movs	r3, #0
    403e:	4a06      	ldr	r2, [pc, #24]	; (4058 <TV_SYNC_handler+0x230>)
    4040:	8013      	strh	r3, [r2, #0]
    4042:	4a07      	ldr	r2, [pc, #28]	; (4060 <TV_SYNC_handler+0x238>)
    4044:	8013      	strh	r3, [r2, #0]
    4046:	4a05      	ldr	r2, [pc, #20]	; (405c <TV_SYNC_handler+0x234>)
    4048:	8013      	strh	r3, [r2, #0]
    404a:	4a06      	ldr	r2, [pc, #24]	; (4064 <TV_SYNC_handler+0x23c>)
    404c:	68d3      	ldr	r3, [r2, #12]
    404e:	f023 0304 	bic.w	r3, r3, #4
    4052:	60d3      	str	r3, [r2, #12]
    4054:	e786      	b.n	3f64 <TV_SYNC_handler+0x13c>
    4056:	bf00      	nop
    4058:	200004fe 	.word	0x200004fe
    405c:	200004f8 	.word	0x200004f8
    4060:	200004fc 	.word	0x200004fc
    4064:	40012c00 	.word	0x40012c00
    4068:	200004fa 	.word	0x200004fa
    406c:	40010800 	.word	0x40010800
    4070:	20002550 	.word	0x20002550
    4074:	200004f6 	.word	0x200004f6
    4078:	000046bc 	.word	0x000046bc

0000407c <frame_sync>:
    407c:	b480      	push	{r7}
    407e:	af00      	add	r7, sp, #0
    4080:	bf00      	nop
    4082:	4b05      	ldr	r3, [pc, #20]	; (4098 <frame_sync+0x1c>)
    4084:	881b      	ldrh	r3, [r3, #0]
    4086:	b29b      	uxth	r3, r3
    4088:	f003 0302 	and.w	r3, r3, #2
    408c:	2b00      	cmp	r3, #0
    408e:	d0f8      	beq.n	4082 <frame_sync+0x6>
    4090:	bf00      	nop
    4092:	46bd      	mov	sp, r7
    4094:	bc80      	pop	{r7}
    4096:	4770      	bx	lr
    4098:	200004fa 	.word	0x200004fa

0000409c <btn_wait_any>:
    409c:	b480      	push	{r7}
    409e:	af00      	add	r7, sp, #0
    40a0:	bf00      	nop
    40a2:	4b0a      	ldr	r3, [pc, #40]	; (40cc <btn_wait_any+0x30>)
    40a4:	881b      	ldrh	r3, [r3, #0]
    40a6:	b29b      	uxth	r3, r3
    40a8:	461a      	mov	r2, r3
    40aa:	f24c 03f0 	movw	r3, #49392	; 0xc0f0
    40ae:	4013      	ands	r3, r2
    40b0:	f24c 02f0 	movw	r2, #49392	; 0xc0f0
    40b4:	4293      	cmp	r3, r2
    40b6:	d0f4      	beq.n	40a2 <btn_wait_any+0x6>
    40b8:	4b04      	ldr	r3, [pc, #16]	; (40cc <btn_wait_any+0x30>)
    40ba:	881b      	ldrh	r3, [r3, #0]
    40bc:	b29b      	uxth	r3, r3
    40be:	43db      	mvns	r3, r3
    40c0:	b29b      	uxth	r3, r3
    40c2:	4618      	mov	r0, r3
    40c4:	46bd      	mov	sp, r7
    40c6:	bc80      	pop	{r7}
    40c8:	4770      	bx	lr
    40ca:	bf00      	nop
    40cc:	20002550 	.word	0x20002550

000040d0 <set_video_mode>:
    40d0:	b480      	push	{r7}
    40d2:	b083      	sub	sp, #12
    40d4:	af00      	add	r7, sp, #0
    40d6:	4603      	mov	r3, r0
    40d8:	71fb      	strb	r3, [r7, #7]
    40da:	4a04      	ldr	r2, [pc, #16]	; (40ec <set_video_mode+0x1c>)
    40dc:	79fb      	ldrb	r3, [r7, #7]
    40de:	7013      	strb	r3, [r2, #0]
    40e0:	bf00      	nop
    40e2:	370c      	adds	r7, #12
    40e4:	46bd      	mov	sp, r7
    40e6:	bc80      	pop	{r7}
    40e8:	4770      	bx	lr
    40ea:	bf00      	nop
    40ec:	200004f6 	.word	0x200004f6

000040f0 <get_video_params>:
    40f0:	b480      	push	{r7}
    40f2:	af00      	add	r7, sp, #0
    40f4:	4b06      	ldr	r3, [pc, #24]	; (4110 <get_video_params+0x20>)
    40f6:	781b      	ldrb	r3, [r3, #0]
    40f8:	461a      	mov	r2, r3
    40fa:	4613      	mov	r3, r2
    40fc:	00db      	lsls	r3, r3, #3
    40fe:	1a9b      	subs	r3, r3, r2
    4100:	005b      	lsls	r3, r3, #1
    4102:	4a04      	ldr	r2, [pc, #16]	; (4114 <get_video_params+0x24>)
    4104:	4413      	add	r3, r2
    4106:	4618      	mov	r0, r3
    4108:	46bd      	mov	sp, r7
    410a:	bc80      	pop	{r7}
    410c:	4770      	bx	lr
    410e:	bf00      	nop
    4110:	200004f6 	.word	0x200004f6
    4114:	000046bc 	.word	0x000046bc
