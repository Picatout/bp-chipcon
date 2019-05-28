
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 b9 44 00 00     C...I...O....D..
      20:	b9 44 00 00 b9 44 00 00 b9 44 00 00 55 02 00 00     .D...D...D..U...
      30:	b9 44 00 00 b9 44 00 00 5b 02 00 00 61 02 00 00     .D...D..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 5d 3f 00 00     g...m...y...]?..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 b9 44 00 00 b9 44 00 00 b5 02 00 00     .....D...D......
      80:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..
      90:	b9 44 00 00 b9 44 00 00 b9 44 00 00 bb 02 00 00     .D...D...D......
      a0:	b9 44 00 00 95 4d 00 00 b9 44 00 00 95 4c 00 00     .D...M...D...L..
      b0:	91 41 00 00 cd 02 00 00 d3 02 00 00 b9 44 00 00     .A...........D..
      c0:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..
      d0:	b9 44 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .D..............
      e0:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..
      f0:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..
     100:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..
     110:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..
     120:	b9 44 00 00 b9 44 00 00 b9 44 00 00 b9 44 00 00     .D...D...D...D..

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
     18e:	f002 ff98 	bl	30c2 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000184 	.word	0x20000184
     1a0:	20004dbe 	.word	0x20004dbe
     1a4:	000088b4 	.word	0x000088b4
     1a8:	20000000 	.word	0x20000000
     1ac:	20000184 	.word	0x20000184
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
     1dc:	f004 f974 	bl	44c8 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f004 f968 	bl	44c8 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f004 f95c 	bl	44c8 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 f957 	bl	44c8 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00005844 	.word	0x00005844
     230:	0000585c 	.word	0x0000585c
     234:	00005868 	.word	0x00005868
     238:	00005878 	.word	0x00005878

0000023c <NMI_handler>:
     23c:	f004 f93c 	bl	44b8 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f004 f939 	bl	44b8 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f004 f936 	bl	44b8 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f004 f933 	bl	44b8 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f004 f930 	bl	44b8 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f004 f92d 	bl	44b8 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f004 f92a 	bl	44b8 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f004 f927 	bl	44b8 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f004 f924 	bl	44b8 <reset_mcu>
     270:	bf00      	nop
     272:	f004 f921 	bl	44b8 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f004 f91e 	bl	44b8 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f004 f91b 	bl	44b8 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f004 f918 	bl	44b8 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f004 f915 	bl	44b8 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f004 f912 	bl	44b8 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f004 f90f 	bl	44b8 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f004 f90c 	bl	44b8 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f004 f909 	bl	44b8 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f004 f906 	bl	44b8 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f004 f903 	bl	44b8 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f004 f900 	bl	44b8 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f004 f8fd 	bl	44b8 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f004 f8fa 	bl	44b8 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f004 f8f7 	bl	44b8 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f004 f8f4 	bl	44b8 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f004 f8f1 	bl	44b8 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f004 f8ee 	bl	44b8 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f004 f8eb 	bl	44b8 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f004 f8e8 	bl	44b8 <reset_mcu>
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
     3c8:	f004 f8f6 	bl	45b8 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f004 f8e3 	bl	4598 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 fa3c 	bl	4850 <print>
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 fa39 	bl	4850 <print>
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 fa62 	bl	48b0 <print_int>
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7d9b      	ldrb	r3, [r3, #22]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 fa5c 	bl	48b0 <print_int>
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7ddb      	ldrb	r3, [r3, #23]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 fa56 	bl	48b0 <print_int>
     404:	f004 f8d8 	bl	45b8 <new_line>
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 fa21 	bl	4850 <print>
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 fa4b 	bl	48b0 <print_int>
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 fa18 	bl	4850 <print>
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 fa42 	bl	48b0 <print_int>
     42c:	f004 f8c4 	bl	45b8 <new_line>
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 fa0d 	bl	4850 <print>
     436:	2300      	movs	r3, #0
     438:	60fb      	str	r3, [r7, #12]
     43a:	e00b      	b.n	454 <print_vms+0x94>
     43c:	4a0c      	ldr	r2, [pc, #48]	; (470 <print_vms+0xb0>)
     43e:	68fb      	ldr	r3, [r7, #12]
     440:	4413      	add	r3, r2
     442:	3305      	adds	r3, #5
     444:	781b      	ldrb	r3, [r3, #0]
     446:	2110      	movs	r1, #16
     448:	4618      	mov	r0, r3
     44a:	f004 fa31 	bl	48b0 <print_int>
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
     45a:	f004 f8ad 	bl	45b8 <new_line>
     45e:	f004 fb47 	bl	4af0 <prompt_btn>
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	00005224 	.word	0x00005224
     470:	20000184 	.word	0x20000184
     474:	00005228 	.word	0x00005228
     478:	0000522c 	.word	0x0000522c
     47c:	00005234 	.word	0x00005234

00000480 <srand>:
     480:	b480      	push	{r7}
     482:	b083      	sub	sp, #12
     484:	af00      	add	r7, sp, #0
     486:	6078      	str	r0, [r7, #4]
     488:	4a03      	ldr	r2, [pc, #12]	; (498 <srand+0x18>)
     48a:	687b      	ldr	r3, [r7, #4]
     48c:	6013      	str	r3, [r2, #0]
     48e:	bf00      	nop
     490:	370c      	adds	r7, #12
     492:	46bd      	mov	sp, r7
     494:	bc80      	pop	{r7}
     496:	4770      	bx	lr
     498:	20000004 	.word	0x20000004

0000049c <rand>:
     49c:	b480      	push	{r7}
     49e:	b083      	sub	sp, #12
     4a0:	af00      	add	r7, sp, #0
     4a2:	4b0e      	ldr	r3, [pc, #56]	; (4dc <rand+0x40>)
     4a4:	681b      	ldr	r3, [r3, #0]
     4a6:	607b      	str	r3, [r7, #4]
     4a8:	687b      	ldr	r3, [r7, #4]
     4aa:	035b      	lsls	r3, r3, #13
     4ac:	687a      	ldr	r2, [r7, #4]
     4ae:	4053      	eors	r3, r2
     4b0:	607b      	str	r3, [r7, #4]
     4b2:	687b      	ldr	r3, [r7, #4]
     4b4:	0c5b      	lsrs	r3, r3, #17
     4b6:	687a      	ldr	r2, [r7, #4]
     4b8:	4053      	eors	r3, r2
     4ba:	607b      	str	r3, [r7, #4]
     4bc:	687b      	ldr	r3, [r7, #4]
     4be:	015b      	lsls	r3, r3, #5
     4c0:	687a      	ldr	r2, [r7, #4]
     4c2:	4053      	eors	r3, r2
     4c4:	607b      	str	r3, [r7, #4]
     4c6:	4a05      	ldr	r2, [pc, #20]	; (4dc <rand+0x40>)
     4c8:	687b      	ldr	r3, [r7, #4]
     4ca:	6013      	str	r3, [r2, #0]
     4cc:	687b      	ldr	r3, [r7, #4]
     4ce:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
     4d2:	4618      	mov	r0, r3
     4d4:	370c      	adds	r7, #12
     4d6:	46bd      	mov	sp, r7
     4d8:	bc80      	pop	{r7}
     4da:	4770      	bx	lr
     4dc:	20000004 	.word	0x20000004

000004e0 <chip_vm>:
     4e0:	b590      	push	{r4, r7, lr}
     4e2:	b087      	sub	sp, #28
     4e4:	af02      	add	r7, sp, #8
     4e6:	4603      	mov	r3, r0
     4e8:	80fb      	strh	r3, [r7, #6]
     4ea:	4ab4      	ldr	r2, [pc, #720]	; (7bc <chip_vm+0x2dc>)
     4ec:	88fb      	ldrh	r3, [r7, #6]
     4ee:	8013      	strh	r3, [r2, #0]
     4f0:	4bb2      	ldr	r3, [pc, #712]	; (7bc <chip_vm+0x2dc>)
     4f2:	2200      	movs	r2, #0
     4f4:	711a      	strb	r2, [r3, #4]
     4f6:	4bb1      	ldr	r3, [pc, #708]	; (7bc <chip_vm+0x2dc>)
     4f8:	2200      	movs	r2, #0
     4fa:	805a      	strh	r2, [r3, #2]
     4fc:	4baf      	ldr	r3, [pc, #700]	; (7bc <chip_vm+0x2dc>)
     4fe:	881b      	ldrh	r3, [r3, #0]
     500:	461a      	mov	r2, r3
     502:	4baf      	ldr	r3, [pc, #700]	; (7c0 <chip_vm+0x2e0>)
     504:	5c9a      	ldrb	r2, [r3, r2]
     506:	4bad      	ldr	r3, [pc, #692]	; (7bc <chip_vm+0x2dc>)
     508:	759a      	strb	r2, [r3, #22]
     50a:	4bac      	ldr	r3, [pc, #688]	; (7bc <chip_vm+0x2dc>)
     50c:	881b      	ldrh	r3, [r3, #0]
     50e:	3301      	adds	r3, #1
     510:	4aab      	ldr	r2, [pc, #684]	; (7c0 <chip_vm+0x2e0>)
     512:	5cd2      	ldrb	r2, [r2, r3]
     514:	4ba9      	ldr	r3, [pc, #676]	; (7bc <chip_vm+0x2dc>)
     516:	75da      	strb	r2, [r3, #23]
     518:	4ba8      	ldr	r3, [pc, #672]	; (7bc <chip_vm+0x2dc>)
     51a:	881b      	ldrh	r3, [r3, #0]
     51c:	3302      	adds	r3, #2
     51e:	b29a      	uxth	r2, r3
     520:	4ba6      	ldr	r3, [pc, #664]	; (7bc <chip_vm+0x2dc>)
     522:	801a      	strh	r2, [r3, #0]
     524:	4ba5      	ldr	r3, [pc, #660]	; (7bc <chip_vm+0x2dc>)
     526:	7d9b      	ldrb	r3, [r3, #22]
     528:	f003 030f 	and.w	r3, r3, #15
     52c:	73bb      	strb	r3, [r7, #14]
     52e:	4ba3      	ldr	r3, [pc, #652]	; (7bc <chip_vm+0x2dc>)
     530:	7ddb      	ldrb	r3, [r3, #23]
     532:	091b      	lsrs	r3, r3, #4
     534:	737b      	strb	r3, [r7, #13]
     536:	4ba1      	ldr	r3, [pc, #644]	; (7bc <chip_vm+0x2dc>)
     538:	7d9b      	ldrb	r3, [r3, #22]
     53a:	091b      	lsrs	r3, r3, #4
     53c:	b2db      	uxtb	r3, r3
     53e:	2b0f      	cmp	r3, #15
     540:	d8dc      	bhi.n	4fc <chip_vm+0x1c>
     542:	a201      	add	r2, pc, #4	; (adr r2, 548 <chip_vm+0x68>)
     544:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     548:	00000589 	.word	0x00000589
     54c:	000006bd 	.word	0x000006bd
     550:	000006db 	.word	0x000006db
     554:	00000719 	.word	0x00000719
     558:	0000073b 	.word	0x0000073b
     55c:	0000075d 	.word	0x0000075d
     560:	000007a9 	.word	0x000007a9
     564:	000007c5 	.word	0x000007c5
     568:	00000805 	.word	0x00000805
     56c:	000009ef 	.word	0x000009ef
     570:	00000c85 	.word	0x00000c85
     574:	00000ca1 	.word	0x00000ca1
     578:	00000ccb 	.word	0x00000ccb
     57c:	00000cf1 	.word	0x00000cf1
     580:	00000d6f 	.word	0x00000d6f
     584:	00000dcd 	.word	0x00000dcd
     588:	4b8c      	ldr	r3, [pc, #560]	; (7bc <chip_vm+0x2dc>)
     58a:	7d9a      	ldrb	r2, [r3, #22]
     58c:	4b8b      	ldr	r3, [pc, #556]	; (7bc <chip_vm+0x2dc>)
     58e:	7ddb      	ldrb	r3, [r3, #23]
     590:	4313      	orrs	r3, r2
     592:	b2db      	uxtb	r3, r3
     594:	2b00      	cmp	r3, #0
     596:	f000 85fc 	beq.w	1192 <chip_vm+0xcb2>
     59a:	4b88      	ldr	r3, [pc, #544]	; (7bc <chip_vm+0x2dc>)
     59c:	7ddb      	ldrb	r3, [r3, #23]
     59e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5a2:	2bc0      	cmp	r3, #192	; 0xc0
     5a4:	d109      	bne.n	5ba <chip_vm+0xda>
     5a6:	4b85      	ldr	r3, [pc, #532]	; (7bc <chip_vm+0x2dc>)
     5a8:	7ddb      	ldrb	r3, [r3, #23]
     5aa:	f003 030f 	and.w	r3, r3, #15
     5ae:	b2db      	uxtb	r3, r3
     5b0:	4618      	mov	r0, r3
     5b2:	f001 fe23 	bl	21fc <gfx_scroll_down>
     5b6:	f000 bdec 	b.w	1192 <chip_vm+0xcb2>
     5ba:	4b80      	ldr	r3, [pc, #512]	; (7bc <chip_vm+0x2dc>)
     5bc:	7ddb      	ldrb	r3, [r3, #23]
     5be:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5c2:	2bd0      	cmp	r3, #208	; 0xd0
     5c4:	d109      	bne.n	5da <chip_vm+0xfa>
     5c6:	4b7d      	ldr	r3, [pc, #500]	; (7bc <chip_vm+0x2dc>)
     5c8:	7ddb      	ldrb	r3, [r3, #23]
     5ca:	f003 030f 	and.w	r3, r3, #15
     5ce:	b2db      	uxtb	r3, r3
     5d0:	4618      	mov	r0, r3
     5d2:	f001 fdd9 	bl	2188 <gfx_scroll_up>
     5d6:	f000 bddc 	b.w	1192 <chip_vm+0xcb2>
     5da:	4b78      	ldr	r3, [pc, #480]	; (7bc <chip_vm+0x2dc>)
     5dc:	7ddb      	ldrb	r3, [r3, #23]
     5de:	3be0      	subs	r3, #224	; 0xe0
     5e0:	2b1f      	cmp	r3, #31
     5e2:	d866      	bhi.n	6b2 <chip_vm+0x1d2>
     5e4:	a201      	add	r2, pc, #4	; (adr r2, 5ec <chip_vm+0x10c>)
     5e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     5ea:	bf00      	nop
     5ec:	0000066d 	.word	0x0000066d
     5f0:	000006b3 	.word	0x000006b3
     5f4:	000006b3 	.word	0x000006b3
     5f8:	000006b3 	.word	0x000006b3
     5fc:	000006b3 	.word	0x000006b3
     600:	000006b3 	.word	0x000006b3
     604:	000006b3 	.word	0x000006b3
     608:	000006b3 	.word	0x000006b3
     60c:	000006b3 	.word	0x000006b3
     610:	000006b3 	.word	0x000006b3
     614:	000006b3 	.word	0x000006b3
     618:	000006b3 	.word	0x000006b3
     61c:	000006b3 	.word	0x000006b3
     620:	000006b3 	.word	0x000006b3
     624:	00000673 	.word	0x00000673
     628:	000006b3 	.word	0x000006b3
     62c:	000006b3 	.word	0x000006b3
     630:	000006b3 	.word	0x000006b3
     634:	000006b3 	.word	0x000006b3
     638:	000006b3 	.word	0x000006b3
     63c:	000006b3 	.word	0x000006b3
     640:	000006b3 	.word	0x000006b3
     644:	000006b3 	.word	0x000006b3
     648:	000006b3 	.word	0x000006b3
     64c:	000006b3 	.word	0x000006b3
     650:	000006b3 	.word	0x000006b3
     654:	000006b3 	.word	0x000006b3
     658:	0000068d 	.word	0x0000068d
     65c:	00000695 	.word	0x00000695
     660:	0000069d 	.word	0x0000069d
     664:	000006a3 	.word	0x000006a3
     668:	000006ab 	.word	0x000006ab
     66c:	f001 fd30 	bl	20d0 <gfx_cls>
     670:	e022      	b.n	6b8 <chip_vm+0x1d8>
     672:	4b52      	ldr	r3, [pc, #328]	; (7bc <chip_vm+0x2dc>)
     674:	791b      	ldrb	r3, [r3, #4]
     676:	1e5a      	subs	r2, r3, #1
     678:	b2d1      	uxtb	r1, r2
     67a:	4a50      	ldr	r2, [pc, #320]	; (7bc <chip_vm+0x2dc>)
     67c:	7111      	strb	r1, [r2, #4]
     67e:	4a4f      	ldr	r2, [pc, #316]	; (7bc <chip_vm+0x2dc>)
     680:	330c      	adds	r3, #12
     682:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     686:	4b4d      	ldr	r3, [pc, #308]	; (7bc <chip_vm+0x2dc>)
     688:	801a      	strh	r2, [r3, #0]
     68a:	e015      	b.n	6b8 <chip_vm+0x1d8>
     68c:	2004      	movs	r0, #4
     68e:	f001 fe3f 	bl	2310 <gfx_scroll_right>
     692:	e011      	b.n	6b8 <chip_vm+0x1d8>
     694:	2004      	movs	r0, #4
     696:	f001 fdf9 	bl	228c <gfx_scroll_left>
     69a:	e00d      	b.n	6b8 <chip_vm+0x1d8>
     69c:	2301      	movs	r3, #1
     69e:	f000 bd81 	b.w	11a4 <chip_vm+0xcc4>
     6a2:	2002      	movs	r0, #2
     6a4:	f004 fce6 	bl	5074 <set_video_mode>
     6a8:	e006      	b.n	6b8 <chip_vm+0x1d8>
     6aa:	2001      	movs	r0, #1
     6ac:	f004 fce2 	bl	5074 <set_video_mode>
     6b0:	e002      	b.n	6b8 <chip_vm+0x1d8>
     6b2:	2302      	movs	r3, #2
     6b4:	f000 bd76 	b.w	11a4 <chip_vm+0xcc4>
     6b8:	f000 bd6b 	b.w	1192 <chip_vm+0xcb2>
     6bc:	4b3f      	ldr	r3, [pc, #252]	; (7bc <chip_vm+0x2dc>)
     6be:	7d9b      	ldrb	r3, [r3, #22]
     6c0:	021b      	lsls	r3, r3, #8
     6c2:	4a3e      	ldr	r2, [pc, #248]	; (7bc <chip_vm+0x2dc>)
     6c4:	7dd2      	ldrb	r2, [r2, #23]
     6c6:	4313      	orrs	r3, r2
     6c8:	005b      	lsls	r3, r3, #1
     6ca:	b29b      	uxth	r3, r3
     6cc:	f3c3 030b 	ubfx	r3, r3, #0, #12
     6d0:	b29a      	uxth	r2, r3
     6d2:	4b3a      	ldr	r3, [pc, #232]	; (7bc <chip_vm+0x2dc>)
     6d4:	801a      	strh	r2, [r3, #0]
     6d6:	f000 bd63 	b.w	11a0 <chip_vm+0xcc0>
     6da:	4b38      	ldr	r3, [pc, #224]	; (7bc <chip_vm+0x2dc>)
     6dc:	791b      	ldrb	r3, [r3, #4]
     6de:	3301      	adds	r3, #1
     6e0:	b2da      	uxtb	r2, r3
     6e2:	4b36      	ldr	r3, [pc, #216]	; (7bc <chip_vm+0x2dc>)
     6e4:	711a      	strb	r2, [r3, #4]
     6e6:	4b35      	ldr	r3, [pc, #212]	; (7bc <chip_vm+0x2dc>)
     6e8:	791b      	ldrb	r3, [r3, #4]
     6ea:	4618      	mov	r0, r3
     6ec:	4b33      	ldr	r3, [pc, #204]	; (7bc <chip_vm+0x2dc>)
     6ee:	8819      	ldrh	r1, [r3, #0]
     6f0:	4a32      	ldr	r2, [pc, #200]	; (7bc <chip_vm+0x2dc>)
     6f2:	f100 030c 	add.w	r3, r0, #12
     6f6:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     6fa:	4b30      	ldr	r3, [pc, #192]	; (7bc <chip_vm+0x2dc>)
     6fc:	7d9b      	ldrb	r3, [r3, #22]
     6fe:	021b      	lsls	r3, r3, #8
     700:	4a2e      	ldr	r2, [pc, #184]	; (7bc <chip_vm+0x2dc>)
     702:	7dd2      	ldrb	r2, [r2, #23]
     704:	4313      	orrs	r3, r2
     706:	005b      	lsls	r3, r3, #1
     708:	b29b      	uxth	r3, r3
     70a:	f3c3 030b 	ubfx	r3, r3, #0, #12
     70e:	b29a      	uxth	r2, r3
     710:	4b2a      	ldr	r3, [pc, #168]	; (7bc <chip_vm+0x2dc>)
     712:	801a      	strh	r2, [r3, #0]
     714:	f000 bd44 	b.w	11a0 <chip_vm+0xcc0>
     718:	7bbb      	ldrb	r3, [r7, #14]
     71a:	4a28      	ldr	r2, [pc, #160]	; (7bc <chip_vm+0x2dc>)
     71c:	4413      	add	r3, r2
     71e:	795a      	ldrb	r2, [r3, #5]
     720:	4b26      	ldr	r3, [pc, #152]	; (7bc <chip_vm+0x2dc>)
     722:	7ddb      	ldrb	r3, [r3, #23]
     724:	429a      	cmp	r2, r3
     726:	f040 8537 	bne.w	1198 <chip_vm+0xcb8>
     72a:	4b24      	ldr	r3, [pc, #144]	; (7bc <chip_vm+0x2dc>)
     72c:	881b      	ldrh	r3, [r3, #0]
     72e:	3302      	adds	r3, #2
     730:	b29a      	uxth	r2, r3
     732:	4b22      	ldr	r3, [pc, #136]	; (7bc <chip_vm+0x2dc>)
     734:	801a      	strh	r2, [r3, #0]
     736:	f000 bd2f 	b.w	1198 <chip_vm+0xcb8>
     73a:	7bbb      	ldrb	r3, [r7, #14]
     73c:	4a1f      	ldr	r2, [pc, #124]	; (7bc <chip_vm+0x2dc>)
     73e:	4413      	add	r3, r2
     740:	795a      	ldrb	r2, [r3, #5]
     742:	4b1e      	ldr	r3, [pc, #120]	; (7bc <chip_vm+0x2dc>)
     744:	7ddb      	ldrb	r3, [r3, #23]
     746:	429a      	cmp	r2, r3
     748:	f000 8529 	beq.w	119e <chip_vm+0xcbe>
     74c:	4b1b      	ldr	r3, [pc, #108]	; (7bc <chip_vm+0x2dc>)
     74e:	881b      	ldrh	r3, [r3, #0]
     750:	3302      	adds	r3, #2
     752:	b29a      	uxth	r2, r3
     754:	4b19      	ldr	r3, [pc, #100]	; (7bc <chip_vm+0x2dc>)
     756:	801a      	strh	r2, [r3, #0]
     758:	f000 bd21 	b.w	119e <chip_vm+0xcbe>
     75c:	4b17      	ldr	r3, [pc, #92]	; (7bc <chip_vm+0x2dc>)
     75e:	7ddb      	ldrb	r3, [r3, #23]
     760:	f003 030f 	and.w	r3, r3, #15
     764:	2b02      	cmp	r3, #2
     766:	d016      	beq.n	796 <chip_vm+0x2b6>
     768:	2b03      	cmp	r3, #3
     76a:	d017      	beq.n	79c <chip_vm+0x2bc>
     76c:	2b00      	cmp	r3, #0
     76e:	d001      	beq.n	774 <chip_vm+0x294>
     770:	f000 bd16 	b.w	11a0 <chip_vm+0xcc0>
     774:	7bbb      	ldrb	r3, [r7, #14]
     776:	4a11      	ldr	r2, [pc, #68]	; (7bc <chip_vm+0x2dc>)
     778:	4413      	add	r3, r2
     77a:	795a      	ldrb	r2, [r3, #5]
     77c:	7b7b      	ldrb	r3, [r7, #13]
     77e:	490f      	ldr	r1, [pc, #60]	; (7bc <chip_vm+0x2dc>)
     780:	440b      	add	r3, r1
     782:	795b      	ldrb	r3, [r3, #5]
     784:	429a      	cmp	r2, r3
     786:	d10c      	bne.n	7a2 <chip_vm+0x2c2>
     788:	4b0c      	ldr	r3, [pc, #48]	; (7bc <chip_vm+0x2dc>)
     78a:	881b      	ldrh	r3, [r3, #0]
     78c:	3302      	adds	r3, #2
     78e:	b29a      	uxth	r2, r3
     790:	4b0a      	ldr	r3, [pc, #40]	; (7bc <chip_vm+0x2dc>)
     792:	801a      	strh	r2, [r3, #0]
     794:	e005      	b.n	7a2 <chip_vm+0x2c2>
     796:	bf00      	nop
     798:	f000 bd02 	b.w	11a0 <chip_vm+0xcc0>
     79c:	bf00      	nop
     79e:	f000 bcff 	b.w	11a0 <chip_vm+0xcc0>
     7a2:	bf00      	nop
     7a4:	f000 bcfc 	b.w	11a0 <chip_vm+0xcc0>
     7a8:	7bbb      	ldrb	r3, [r7, #14]
     7aa:	4a04      	ldr	r2, [pc, #16]	; (7bc <chip_vm+0x2dc>)
     7ac:	7dd1      	ldrb	r1, [r2, #23]
     7ae:	4a03      	ldr	r2, [pc, #12]	; (7bc <chip_vm+0x2dc>)
     7b0:	4413      	add	r3, r2
     7b2:	460a      	mov	r2, r1
     7b4:	715a      	strb	r2, [r3, #5]
     7b6:	f000 bcf3 	b.w	11a0 <chip_vm+0xcc0>
     7ba:	bf00      	nop
     7bc:	20000184 	.word	0x20000184
     7c0:	20000628 	.word	0x20000628
     7c4:	7bbb      	ldrb	r3, [r7, #14]
     7c6:	4aa8      	ldr	r2, [pc, #672]	; (a68 <chip_vm+0x588>)
     7c8:	4413      	add	r3, r2
     7ca:	795b      	ldrb	r3, [r3, #5]
     7cc:	461a      	mov	r2, r3
     7ce:	4ba6      	ldr	r3, [pc, #664]	; (a68 <chip_vm+0x588>)
     7d0:	7ddb      	ldrb	r3, [r3, #23]
     7d2:	4413      	add	r3, r2
     7d4:	2bff      	cmp	r3, #255	; 0xff
     7d6:	bfcc      	ite	gt
     7d8:	2301      	movgt	r3, #1
     7da:	2300      	movle	r3, #0
     7dc:	b2db      	uxtb	r3, r3
     7de:	73fb      	strb	r3, [r7, #15]
     7e0:	7bbb      	ldrb	r3, [r7, #14]
     7e2:	7bba      	ldrb	r2, [r7, #14]
     7e4:	49a0      	ldr	r1, [pc, #640]	; (a68 <chip_vm+0x588>)
     7e6:	440a      	add	r2, r1
     7e8:	7951      	ldrb	r1, [r2, #5]
     7ea:	4a9f      	ldr	r2, [pc, #636]	; (a68 <chip_vm+0x588>)
     7ec:	7dd2      	ldrb	r2, [r2, #23]
     7ee:	440a      	add	r2, r1
     7f0:	b2d1      	uxtb	r1, r2
     7f2:	4a9d      	ldr	r2, [pc, #628]	; (a68 <chip_vm+0x588>)
     7f4:	4413      	add	r3, r2
     7f6:	460a      	mov	r2, r1
     7f8:	715a      	strb	r2, [r3, #5]
     7fa:	4a9b      	ldr	r2, [pc, #620]	; (a68 <chip_vm+0x588>)
     7fc:	7bfb      	ldrb	r3, [r7, #15]
     7fe:	7513      	strb	r3, [r2, #20]
     800:	f000 bcce 	b.w	11a0 <chip_vm+0xcc0>
     804:	4b98      	ldr	r3, [pc, #608]	; (a68 <chip_vm+0x588>)
     806:	7ddb      	ldrb	r3, [r3, #23]
     808:	f003 030f 	and.w	r3, r3, #15
     80c:	2b0e      	cmp	r3, #14
     80e:	f200 80eb 	bhi.w	9e8 <chip_vm+0x508>
     812:	a201      	add	r2, pc, #4	; (adr r2, 818 <chip_vm+0x338>)
     814:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     818:	00000855 	.word	0x00000855
     81c:	00000869 	.word	0x00000869
     820:	00000889 	.word	0x00000889
     824:	000008a9 	.word	0x000008a9
     828:	000008c9 	.word	0x000008c9
     82c:	0000090f 	.word	0x0000090f
     830:	00000951 	.word	0x00000951
     834:	0000097d 	.word	0x0000097d
     838:	000009e9 	.word	0x000009e9
     83c:	000009e9 	.word	0x000009e9
     840:	000009e9 	.word	0x000009e9
     844:	000009e9 	.word	0x000009e9
     848:	000009e9 	.word	0x000009e9
     84c:	000009e9 	.word	0x000009e9
     850:	000009bf 	.word	0x000009bf
     854:	7bbb      	ldrb	r3, [r7, #14]
     856:	7b7a      	ldrb	r2, [r7, #13]
     858:	4983      	ldr	r1, [pc, #524]	; (a68 <chip_vm+0x588>)
     85a:	440a      	add	r2, r1
     85c:	7951      	ldrb	r1, [r2, #5]
     85e:	4a82      	ldr	r2, [pc, #520]	; (a68 <chip_vm+0x588>)
     860:	4413      	add	r3, r2
     862:	460a      	mov	r2, r1
     864:	715a      	strb	r2, [r3, #5]
     866:	e0c1      	b.n	9ec <chip_vm+0x50c>
     868:	7bbb      	ldrb	r3, [r7, #14]
     86a:	7bba      	ldrb	r2, [r7, #14]
     86c:	497e      	ldr	r1, [pc, #504]	; (a68 <chip_vm+0x588>)
     86e:	440a      	add	r2, r1
     870:	7951      	ldrb	r1, [r2, #5]
     872:	7b7a      	ldrb	r2, [r7, #13]
     874:	487c      	ldr	r0, [pc, #496]	; (a68 <chip_vm+0x588>)
     876:	4402      	add	r2, r0
     878:	7952      	ldrb	r2, [r2, #5]
     87a:	430a      	orrs	r2, r1
     87c:	b2d1      	uxtb	r1, r2
     87e:	4a7a      	ldr	r2, [pc, #488]	; (a68 <chip_vm+0x588>)
     880:	4413      	add	r3, r2
     882:	460a      	mov	r2, r1
     884:	715a      	strb	r2, [r3, #5]
     886:	e0b1      	b.n	9ec <chip_vm+0x50c>
     888:	7bbb      	ldrb	r3, [r7, #14]
     88a:	7bba      	ldrb	r2, [r7, #14]
     88c:	4976      	ldr	r1, [pc, #472]	; (a68 <chip_vm+0x588>)
     88e:	440a      	add	r2, r1
     890:	7951      	ldrb	r1, [r2, #5]
     892:	7b7a      	ldrb	r2, [r7, #13]
     894:	4874      	ldr	r0, [pc, #464]	; (a68 <chip_vm+0x588>)
     896:	4402      	add	r2, r0
     898:	7952      	ldrb	r2, [r2, #5]
     89a:	400a      	ands	r2, r1
     89c:	b2d1      	uxtb	r1, r2
     89e:	4a72      	ldr	r2, [pc, #456]	; (a68 <chip_vm+0x588>)
     8a0:	4413      	add	r3, r2
     8a2:	460a      	mov	r2, r1
     8a4:	715a      	strb	r2, [r3, #5]
     8a6:	e0a1      	b.n	9ec <chip_vm+0x50c>
     8a8:	7bbb      	ldrb	r3, [r7, #14]
     8aa:	7bba      	ldrb	r2, [r7, #14]
     8ac:	496e      	ldr	r1, [pc, #440]	; (a68 <chip_vm+0x588>)
     8ae:	440a      	add	r2, r1
     8b0:	7951      	ldrb	r1, [r2, #5]
     8b2:	7b7a      	ldrb	r2, [r7, #13]
     8b4:	486c      	ldr	r0, [pc, #432]	; (a68 <chip_vm+0x588>)
     8b6:	4402      	add	r2, r0
     8b8:	7952      	ldrb	r2, [r2, #5]
     8ba:	404a      	eors	r2, r1
     8bc:	b2d1      	uxtb	r1, r2
     8be:	4a6a      	ldr	r2, [pc, #424]	; (a68 <chip_vm+0x588>)
     8c0:	4413      	add	r3, r2
     8c2:	460a      	mov	r2, r1
     8c4:	715a      	strb	r2, [r3, #5]
     8c6:	e091      	b.n	9ec <chip_vm+0x50c>
     8c8:	7bbb      	ldrb	r3, [r7, #14]
     8ca:	4a67      	ldr	r2, [pc, #412]	; (a68 <chip_vm+0x588>)
     8cc:	4413      	add	r3, r2
     8ce:	795b      	ldrb	r3, [r3, #5]
     8d0:	4619      	mov	r1, r3
     8d2:	7b7b      	ldrb	r3, [r7, #13]
     8d4:	4a64      	ldr	r2, [pc, #400]	; (a68 <chip_vm+0x588>)
     8d6:	4413      	add	r3, r2
     8d8:	795b      	ldrb	r3, [r3, #5]
     8da:	440b      	add	r3, r1
     8dc:	2bff      	cmp	r3, #255	; 0xff
     8de:	bfcc      	ite	gt
     8e0:	2301      	movgt	r3, #1
     8e2:	2300      	movle	r3, #0
     8e4:	b2db      	uxtb	r3, r3
     8e6:	73fb      	strb	r3, [r7, #15]
     8e8:	7bbb      	ldrb	r3, [r7, #14]
     8ea:	7bba      	ldrb	r2, [r7, #14]
     8ec:	495e      	ldr	r1, [pc, #376]	; (a68 <chip_vm+0x588>)
     8ee:	440a      	add	r2, r1
     8f0:	7951      	ldrb	r1, [r2, #5]
     8f2:	7b7a      	ldrb	r2, [r7, #13]
     8f4:	485c      	ldr	r0, [pc, #368]	; (a68 <chip_vm+0x588>)
     8f6:	4402      	add	r2, r0
     8f8:	7952      	ldrb	r2, [r2, #5]
     8fa:	440a      	add	r2, r1
     8fc:	b2d1      	uxtb	r1, r2
     8fe:	4a5a      	ldr	r2, [pc, #360]	; (a68 <chip_vm+0x588>)
     900:	4413      	add	r3, r2
     902:	460a      	mov	r2, r1
     904:	715a      	strb	r2, [r3, #5]
     906:	4a58      	ldr	r2, [pc, #352]	; (a68 <chip_vm+0x588>)
     908:	7bfb      	ldrb	r3, [r7, #15]
     90a:	7513      	strb	r3, [r2, #20]
     90c:	e06e      	b.n	9ec <chip_vm+0x50c>
     90e:	7bbb      	ldrb	r3, [r7, #14]
     910:	4a55      	ldr	r2, [pc, #340]	; (a68 <chip_vm+0x588>)
     912:	4413      	add	r3, r2
     914:	795a      	ldrb	r2, [r3, #5]
     916:	7b7b      	ldrb	r3, [r7, #13]
     918:	4953      	ldr	r1, [pc, #332]	; (a68 <chip_vm+0x588>)
     91a:	440b      	add	r3, r1
     91c:	795b      	ldrb	r3, [r3, #5]
     91e:	429a      	cmp	r2, r3
     920:	bf2c      	ite	cs
     922:	2301      	movcs	r3, #1
     924:	2300      	movcc	r3, #0
     926:	b2db      	uxtb	r3, r3
     928:	73fb      	strb	r3, [r7, #15]
     92a:	7bbb      	ldrb	r3, [r7, #14]
     92c:	7bba      	ldrb	r2, [r7, #14]
     92e:	494e      	ldr	r1, [pc, #312]	; (a68 <chip_vm+0x588>)
     930:	440a      	add	r2, r1
     932:	7951      	ldrb	r1, [r2, #5]
     934:	7b7a      	ldrb	r2, [r7, #13]
     936:	484c      	ldr	r0, [pc, #304]	; (a68 <chip_vm+0x588>)
     938:	4402      	add	r2, r0
     93a:	7952      	ldrb	r2, [r2, #5]
     93c:	1a8a      	subs	r2, r1, r2
     93e:	b2d1      	uxtb	r1, r2
     940:	4a49      	ldr	r2, [pc, #292]	; (a68 <chip_vm+0x588>)
     942:	4413      	add	r3, r2
     944:	460a      	mov	r2, r1
     946:	715a      	strb	r2, [r3, #5]
     948:	4a47      	ldr	r2, [pc, #284]	; (a68 <chip_vm+0x588>)
     94a:	7bfb      	ldrb	r3, [r7, #15]
     94c:	7513      	strb	r3, [r2, #20]
     94e:	e04d      	b.n	9ec <chip_vm+0x50c>
     950:	7bbb      	ldrb	r3, [r7, #14]
     952:	4a45      	ldr	r2, [pc, #276]	; (a68 <chip_vm+0x588>)
     954:	4413      	add	r3, r2
     956:	795b      	ldrb	r3, [r3, #5]
     958:	f003 0301 	and.w	r3, r3, #1
     95c:	73fb      	strb	r3, [r7, #15]
     95e:	7bbb      	ldrb	r3, [r7, #14]
     960:	7bba      	ldrb	r2, [r7, #14]
     962:	4941      	ldr	r1, [pc, #260]	; (a68 <chip_vm+0x588>)
     964:	440a      	add	r2, r1
     966:	7952      	ldrb	r2, [r2, #5]
     968:	0852      	lsrs	r2, r2, #1
     96a:	b2d1      	uxtb	r1, r2
     96c:	4a3e      	ldr	r2, [pc, #248]	; (a68 <chip_vm+0x588>)
     96e:	4413      	add	r3, r2
     970:	460a      	mov	r2, r1
     972:	715a      	strb	r2, [r3, #5]
     974:	4a3c      	ldr	r2, [pc, #240]	; (a68 <chip_vm+0x588>)
     976:	7bfb      	ldrb	r3, [r7, #15]
     978:	7513      	strb	r3, [r2, #20]
     97a:	e037      	b.n	9ec <chip_vm+0x50c>
     97c:	7b7b      	ldrb	r3, [r7, #13]
     97e:	4a3a      	ldr	r2, [pc, #232]	; (a68 <chip_vm+0x588>)
     980:	4413      	add	r3, r2
     982:	795a      	ldrb	r2, [r3, #5]
     984:	7bbb      	ldrb	r3, [r7, #14]
     986:	4938      	ldr	r1, [pc, #224]	; (a68 <chip_vm+0x588>)
     988:	440b      	add	r3, r1
     98a:	795b      	ldrb	r3, [r3, #5]
     98c:	429a      	cmp	r2, r3
     98e:	bf2c      	ite	cs
     990:	2301      	movcs	r3, #1
     992:	2300      	movcc	r3, #0
     994:	b2db      	uxtb	r3, r3
     996:	73fb      	strb	r3, [r7, #15]
     998:	7bbb      	ldrb	r3, [r7, #14]
     99a:	7b7a      	ldrb	r2, [r7, #13]
     99c:	4932      	ldr	r1, [pc, #200]	; (a68 <chip_vm+0x588>)
     99e:	440a      	add	r2, r1
     9a0:	7951      	ldrb	r1, [r2, #5]
     9a2:	7bba      	ldrb	r2, [r7, #14]
     9a4:	4830      	ldr	r0, [pc, #192]	; (a68 <chip_vm+0x588>)
     9a6:	4402      	add	r2, r0
     9a8:	7952      	ldrb	r2, [r2, #5]
     9aa:	1a8a      	subs	r2, r1, r2
     9ac:	b2d1      	uxtb	r1, r2
     9ae:	4a2e      	ldr	r2, [pc, #184]	; (a68 <chip_vm+0x588>)
     9b0:	4413      	add	r3, r2
     9b2:	460a      	mov	r2, r1
     9b4:	715a      	strb	r2, [r3, #5]
     9b6:	4a2c      	ldr	r2, [pc, #176]	; (a68 <chip_vm+0x588>)
     9b8:	7bfb      	ldrb	r3, [r7, #15]
     9ba:	7513      	strb	r3, [r2, #20]
     9bc:	e016      	b.n	9ec <chip_vm+0x50c>
     9be:	7bbb      	ldrb	r3, [r7, #14]
     9c0:	4a29      	ldr	r2, [pc, #164]	; (a68 <chip_vm+0x588>)
     9c2:	4413      	add	r3, r2
     9c4:	795b      	ldrb	r3, [r3, #5]
     9c6:	09db      	lsrs	r3, r3, #7
     9c8:	73fb      	strb	r3, [r7, #15]
     9ca:	7bbb      	ldrb	r3, [r7, #14]
     9cc:	7bba      	ldrb	r2, [r7, #14]
     9ce:	4926      	ldr	r1, [pc, #152]	; (a68 <chip_vm+0x588>)
     9d0:	440a      	add	r2, r1
     9d2:	7952      	ldrb	r2, [r2, #5]
     9d4:	0052      	lsls	r2, r2, #1
     9d6:	b2d1      	uxtb	r1, r2
     9d8:	4a23      	ldr	r2, [pc, #140]	; (a68 <chip_vm+0x588>)
     9da:	4413      	add	r3, r2
     9dc:	460a      	mov	r2, r1
     9de:	715a      	strb	r2, [r3, #5]
     9e0:	4a21      	ldr	r2, [pc, #132]	; (a68 <chip_vm+0x588>)
     9e2:	7bfb      	ldrb	r3, [r7, #15]
     9e4:	7513      	strb	r3, [r2, #20]
     9e6:	e001      	b.n	9ec <chip_vm+0x50c>
     9e8:	2302      	movs	r3, #2
     9ea:	e3db      	b.n	11a4 <chip_vm+0xcc4>
     9ec:	e3d8      	b.n	11a0 <chip_vm+0xcc0>
     9ee:	4b1e      	ldr	r3, [pc, #120]	; (a68 <chip_vm+0x588>)
     9f0:	7ddb      	ldrb	r3, [r3, #23]
     9f2:	f003 030f 	and.w	r3, r3, #15
     9f6:	2b0f      	cmp	r3, #15
     9f8:	f200 813c 	bhi.w	c74 <chip_vm+0x794>
     9fc:	a201      	add	r2, pc, #4	; (adr r2, a04 <chip_vm+0x524>)
     9fe:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a02:	bf00      	nop
     a04:	00000a45 	.word	0x00000a45
     a08:	00000a6d 	.word	0x00000a6d
     a0c:	00000a89 	.word	0x00000a89
     a10:	00000adb 	.word	0x00000adb
     a14:	00000af9 	.word	0x00000af9
     a18:	00000b09 	.word	0x00000b09
     a1c:	00000b27 	.word	0x00000b27
     a20:	00000b4f 	.word	0x00000b4f
     a24:	00000b71 	.word	0x00000b71
     a28:	00000b7d 	.word	0x00000b7d
     a2c:	00000b89 	.word	0x00000b89
     a30:	00000bb3 	.word	0x00000bb3
     a34:	00000be1 	.word	0x00000be1
     a38:	00000c0b 	.word	0x00000c0b
     a3c:	00000c35 	.word	0x00000c35
     a40:	00000c5f 	.word	0x00000c5f
     a44:	7bbb      	ldrb	r3, [r7, #14]
     a46:	4a08      	ldr	r2, [pc, #32]	; (a68 <chip_vm+0x588>)
     a48:	4413      	add	r3, r2
     a4a:	795a      	ldrb	r2, [r3, #5]
     a4c:	7b7b      	ldrb	r3, [r7, #13]
     a4e:	4906      	ldr	r1, [pc, #24]	; (a68 <chip_vm+0x588>)
     a50:	440b      	add	r3, r1
     a52:	795b      	ldrb	r3, [r3, #5]
     a54:	429a      	cmp	r2, r3
     a56:	f000 810f 	beq.w	c78 <chip_vm+0x798>
     a5a:	4b03      	ldr	r3, [pc, #12]	; (a68 <chip_vm+0x588>)
     a5c:	881b      	ldrh	r3, [r3, #0]
     a5e:	3302      	adds	r3, #2
     a60:	b29a      	uxth	r2, r3
     a62:	4b01      	ldr	r3, [pc, #4]	; (a68 <chip_vm+0x588>)
     a64:	801a      	strh	r2, [r3, #0]
     a66:	e107      	b.n	c78 <chip_vm+0x798>
     a68:	20000184 	.word	0x20000184
     a6c:	7bbb      	ldrb	r3, [r7, #14]
     a6e:	4a9e      	ldr	r2, [pc, #632]	; (ce8 <chip_vm+0x808>)
     a70:	4413      	add	r3, r2
     a72:	795b      	ldrb	r3, [r3, #5]
     a74:	4618      	mov	r0, r3
     a76:	7b7b      	ldrb	r3, [r7, #13]
     a78:	4a9b      	ldr	r2, [pc, #620]	; (ce8 <chip_vm+0x808>)
     a7a:	4413      	add	r3, r2
     a7c:	795b      	ldrb	r3, [r3, #5]
     a7e:	2200      	movs	r2, #0
     a80:	4619      	mov	r1, r3
     a82:	f003 fb71 	bl	4168 <key_tone>
     a86:	e0fc      	b.n	c82 <chip_vm+0x7a2>
     a88:	2002      	movs	r0, #2
     a8a:	f003 fd85 	bl	4598 <select_font>
     a8e:	7bbb      	ldrb	r3, [r7, #14]
     a90:	4a95      	ldr	r2, [pc, #596]	; (ce8 <chip_vm+0x808>)
     a92:	4413      	add	r3, r2
     a94:	7958      	ldrb	r0, [r3, #5]
     a96:	7b7b      	ldrb	r3, [r7, #13]
     a98:	4a93      	ldr	r2, [pc, #588]	; (ce8 <chip_vm+0x808>)
     a9a:	4413      	add	r3, r2
     a9c:	795b      	ldrb	r3, [r3, #5]
     a9e:	4619      	mov	r1, r3
     aa0:	f003 feaa 	bl	47f8 <set_cursor>
     aa4:	4b90      	ldr	r3, [pc, #576]	; (ce8 <chip_vm+0x808>)
     aa6:	885b      	ldrh	r3, [r3, #2]
     aa8:	461a      	mov	r2, r3
     aaa:	4b90      	ldr	r3, [pc, #576]	; (cec <chip_vm+0x80c>)
     aac:	4413      	add	r3, r2
     aae:	4618      	mov	r0, r3
     ab0:	f003 fece 	bl	4850 <print>
     ab4:	4b8c      	ldr	r3, [pc, #560]	; (ce8 <chip_vm+0x808>)
     ab6:	885c      	ldrh	r4, [r3, #2]
     ab8:	4b8b      	ldr	r3, [pc, #556]	; (ce8 <chip_vm+0x808>)
     aba:	885b      	ldrh	r3, [r3, #2]
     abc:	461a      	mov	r2, r3
     abe:	4b8b      	ldr	r3, [pc, #556]	; (cec <chip_vm+0x80c>)
     ac0:	4413      	add	r3, r2
     ac2:	4618      	mov	r0, r3
     ac4:	f001 f8d7 	bl	1c76 <strlen>
     ac8:	4603      	mov	r3, r0
     aca:	b29b      	uxth	r3, r3
     acc:	4423      	add	r3, r4
     ace:	b29b      	uxth	r3, r3
     ad0:	3301      	adds	r3, #1
     ad2:	b29a      	uxth	r2, r3
     ad4:	4b84      	ldr	r3, [pc, #528]	; (ce8 <chip_vm+0x808>)
     ad6:	805a      	strh	r2, [r3, #2]
     ad8:	e0d3      	b.n	c82 <chip_vm+0x7a2>
     ada:	7bbb      	ldrb	r3, [r7, #14]
     adc:	4a82      	ldr	r2, [pc, #520]	; (ce8 <chip_vm+0x808>)
     ade:	4413      	add	r3, r2
     ae0:	795b      	ldrb	r3, [r3, #5]
     ae2:	4618      	mov	r0, r3
     ae4:	7b7b      	ldrb	r3, [r7, #13]
     ae6:	4a80      	ldr	r2, [pc, #512]	; (ce8 <chip_vm+0x808>)
     ae8:	4413      	add	r3, r2
     aea:	795b      	ldrb	r3, [r3, #5]
     aec:	4619      	mov	r1, r3
     aee:	2303      	movs	r3, #3
     af0:	2200      	movs	r2, #0
     af2:	f001 fa27 	bl	1f44 <gfx_blit>
     af6:	e0c4      	b.n	c82 <chip_vm+0x7a2>
     af8:	7bbb      	ldrb	r3, [r7, #14]
     afa:	011a      	lsls	r2, r3, #4
     afc:	7b7b      	ldrb	r3, [r7, #13]
     afe:	4413      	add	r3, r2
     b00:	4618      	mov	r0, r3
     b02:	f003 fb3c 	bl	417e <noise>
     b06:	e0bc      	b.n	c82 <chip_vm+0x7a2>
     b08:	7bbb      	ldrb	r3, [r7, #14]
     b0a:	4a77      	ldr	r2, [pc, #476]	; (ce8 <chip_vm+0x808>)
     b0c:	4413      	add	r3, r2
     b0e:	795b      	ldrb	r3, [r3, #5]
     b10:	4618      	mov	r0, r3
     b12:	7b7b      	ldrb	r3, [r7, #13]
     b14:	4a74      	ldr	r2, [pc, #464]	; (ce8 <chip_vm+0x808>)
     b16:	4413      	add	r3, r2
     b18:	795b      	ldrb	r3, [r3, #5]
     b1a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     b1e:	4619      	mov	r1, r3
     b20:	f003 fb22 	bl	4168 <key_tone>
     b24:	e0ad      	b.n	c82 <chip_vm+0x7a2>
     b26:	4b70      	ldr	r3, [pc, #448]	; (ce8 <chip_vm+0x808>)
     b28:	791b      	ldrb	r3, [r3, #4]
     b2a:	3301      	adds	r3, #1
     b2c:	b2da      	uxtb	r2, r3
     b2e:	4b6e      	ldr	r3, [pc, #440]	; (ce8 <chip_vm+0x808>)
     b30:	711a      	strb	r2, [r3, #4]
     b32:	4b6d      	ldr	r3, [pc, #436]	; (ce8 <chip_vm+0x808>)
     b34:	791b      	ldrb	r3, [r3, #4]
     b36:	4618      	mov	r0, r3
     b38:	7bbb      	ldrb	r3, [r7, #14]
     b3a:	4a6b      	ldr	r2, [pc, #428]	; (ce8 <chip_vm+0x808>)
     b3c:	4413      	add	r3, r2
     b3e:	795b      	ldrb	r3, [r3, #5]
     b40:	b299      	uxth	r1, r3
     b42:	4a69      	ldr	r2, [pc, #420]	; (ce8 <chip_vm+0x808>)
     b44:	f100 030c 	add.w	r3, r0, #12
     b48:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     b4c:	e099      	b.n	c82 <chip_vm+0x7a2>
     b4e:	7bba      	ldrb	r2, [r7, #14]
     b50:	4b65      	ldr	r3, [pc, #404]	; (ce8 <chip_vm+0x808>)
     b52:	791b      	ldrb	r3, [r3, #4]
     b54:	1e59      	subs	r1, r3, #1
     b56:	b2c8      	uxtb	r0, r1
     b58:	4963      	ldr	r1, [pc, #396]	; (ce8 <chip_vm+0x808>)
     b5a:	7108      	strb	r0, [r1, #4]
     b5c:	4962      	ldr	r1, [pc, #392]	; (ce8 <chip_vm+0x808>)
     b5e:	330c      	adds	r3, #12
     b60:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     b64:	b2d9      	uxtb	r1, r3
     b66:	4b60      	ldr	r3, [pc, #384]	; (ce8 <chip_vm+0x808>)
     b68:	4413      	add	r3, r2
     b6a:	460a      	mov	r2, r1
     b6c:	715a      	strb	r2, [r3, #5]
     b6e:	e088      	b.n	c82 <chip_vm+0x7a2>
     b70:	7bbb      	ldrb	r3, [r7, #14]
     b72:	4a5d      	ldr	r2, [pc, #372]	; (ce8 <chip_vm+0x808>)
     b74:	4413      	add	r3, r2
     b76:	22b4      	movs	r2, #180	; 0xb4
     b78:	715a      	strb	r2, [r3, #5]
     b7a:	e082      	b.n	c82 <chip_vm+0x7a2>
     b7c:	7bbb      	ldrb	r3, [r7, #14]
     b7e:	4a5a      	ldr	r2, [pc, #360]	; (ce8 <chip_vm+0x808>)
     b80:	4413      	add	r3, r2
     b82:	2270      	movs	r2, #112	; 0x70
     b84:	715a      	strb	r2, [r3, #5]
     b86:	e07c      	b.n	c82 <chip_vm+0x7a2>
     b88:	7bbb      	ldrb	r3, [r7, #14]
     b8a:	7bba      	ldrb	r2, [r7, #14]
     b8c:	4956      	ldr	r1, [pc, #344]	; (ce8 <chip_vm+0x808>)
     b8e:	440a      	add	r2, r1
     b90:	7952      	ldrb	r2, [r2, #5]
     b92:	b251      	sxtb	r1, r2
     b94:	7b7a      	ldrb	r2, [r7, #13]
     b96:	f002 0207 	and.w	r2, r2, #7
     b9a:	2001      	movs	r0, #1
     b9c:	fa00 f202 	lsl.w	r2, r0, r2
     ba0:	b252      	sxtb	r2, r2
     ba2:	430a      	orrs	r2, r1
     ba4:	b252      	sxtb	r2, r2
     ba6:	b2d1      	uxtb	r1, r2
     ba8:	4a4f      	ldr	r2, [pc, #316]	; (ce8 <chip_vm+0x808>)
     baa:	4413      	add	r3, r2
     bac:	460a      	mov	r2, r1
     bae:	715a      	strb	r2, [r3, #5]
     bb0:	e067      	b.n	c82 <chip_vm+0x7a2>
     bb2:	7bbb      	ldrb	r3, [r7, #14]
     bb4:	7bba      	ldrb	r2, [r7, #14]
     bb6:	494c      	ldr	r1, [pc, #304]	; (ce8 <chip_vm+0x808>)
     bb8:	440a      	add	r2, r1
     bba:	7952      	ldrb	r2, [r2, #5]
     bbc:	b251      	sxtb	r1, r2
     bbe:	7b7a      	ldrb	r2, [r7, #13]
     bc0:	f002 0207 	and.w	r2, r2, #7
     bc4:	2001      	movs	r0, #1
     bc6:	fa00 f202 	lsl.w	r2, r0, r2
     bca:	b252      	sxtb	r2, r2
     bcc:	43d2      	mvns	r2, r2
     bce:	b252      	sxtb	r2, r2
     bd0:	400a      	ands	r2, r1
     bd2:	b252      	sxtb	r2, r2
     bd4:	b2d1      	uxtb	r1, r2
     bd6:	4a44      	ldr	r2, [pc, #272]	; (ce8 <chip_vm+0x808>)
     bd8:	4413      	add	r3, r2
     bda:	460a      	mov	r2, r1
     bdc:	715a      	strb	r2, [r3, #5]
     bde:	e050      	b.n	c82 <chip_vm+0x7a2>
     be0:	7bbb      	ldrb	r3, [r7, #14]
     be2:	7bba      	ldrb	r2, [r7, #14]
     be4:	4940      	ldr	r1, [pc, #256]	; (ce8 <chip_vm+0x808>)
     be6:	440a      	add	r2, r1
     be8:	7952      	ldrb	r2, [r2, #5]
     bea:	b251      	sxtb	r1, r2
     bec:	7b7a      	ldrb	r2, [r7, #13]
     bee:	f002 0207 	and.w	r2, r2, #7
     bf2:	2001      	movs	r0, #1
     bf4:	fa00 f202 	lsl.w	r2, r0, r2
     bf8:	b252      	sxtb	r2, r2
     bfa:	404a      	eors	r2, r1
     bfc:	b252      	sxtb	r2, r2
     bfe:	b2d1      	uxtb	r1, r2
     c00:	4a39      	ldr	r2, [pc, #228]	; (ce8 <chip_vm+0x808>)
     c02:	4413      	add	r3, r2
     c04:	460a      	mov	r2, r1
     c06:	715a      	strb	r2, [r3, #5]
     c08:	e03b      	b.n	c82 <chip_vm+0x7a2>
     c0a:	7bbb      	ldrb	r3, [r7, #14]
     c0c:	4a36      	ldr	r2, [pc, #216]	; (ce8 <chip_vm+0x808>)
     c0e:	4413      	add	r3, r2
     c10:	795b      	ldrb	r3, [r3, #5]
     c12:	461a      	mov	r2, r3
     c14:	7b7b      	ldrb	r3, [r7, #13]
     c16:	f003 0307 	and.w	r3, r3, #7
     c1a:	fa42 f303 	asr.w	r3, r2, r3
     c1e:	f003 0301 	and.w	r3, r3, #1
     c22:	2b00      	cmp	r3, #0
     c24:	d02a      	beq.n	c7c <chip_vm+0x79c>
     c26:	4b30      	ldr	r3, [pc, #192]	; (ce8 <chip_vm+0x808>)
     c28:	881b      	ldrh	r3, [r3, #0]
     c2a:	3302      	adds	r3, #2
     c2c:	b29a      	uxth	r2, r3
     c2e:	4b2e      	ldr	r3, [pc, #184]	; (ce8 <chip_vm+0x808>)
     c30:	801a      	strh	r2, [r3, #0]
     c32:	e023      	b.n	c7c <chip_vm+0x79c>
     c34:	7bbb      	ldrb	r3, [r7, #14]
     c36:	4a2c      	ldr	r2, [pc, #176]	; (ce8 <chip_vm+0x808>)
     c38:	4413      	add	r3, r2
     c3a:	795b      	ldrb	r3, [r3, #5]
     c3c:	461a      	mov	r2, r3
     c3e:	7b7b      	ldrb	r3, [r7, #13]
     c40:	f003 0307 	and.w	r3, r3, #7
     c44:	fa42 f303 	asr.w	r3, r2, r3
     c48:	f003 0301 	and.w	r3, r3, #1
     c4c:	2b00      	cmp	r3, #0
     c4e:	d117      	bne.n	c80 <chip_vm+0x7a0>
     c50:	4b25      	ldr	r3, [pc, #148]	; (ce8 <chip_vm+0x808>)
     c52:	881b      	ldrh	r3, [r3, #0]
     c54:	3302      	adds	r3, #2
     c56:	b29a      	uxth	r2, r3
     c58:	4b23      	ldr	r3, [pc, #140]	; (ce8 <chip_vm+0x808>)
     c5a:	801a      	strh	r2, [r3, #0]
     c5c:	e010      	b.n	c80 <chip_vm+0x7a0>
     c5e:	7bbb      	ldrb	r3, [r7, #14]
     c60:	7b7a      	ldrb	r2, [r7, #13]
     c62:	4611      	mov	r1, r2
     c64:	4618      	mov	r0, r3
     c66:	f001 fb9b 	bl	23a0 <gfx_get_pixel>
     c6a:	4603      	mov	r3, r0
     c6c:	461a      	mov	r2, r3
     c6e:	4b1e      	ldr	r3, [pc, #120]	; (ce8 <chip_vm+0x808>)
     c70:	751a      	strb	r2, [r3, #20]
     c72:	e006      	b.n	c82 <chip_vm+0x7a2>
     c74:	2302      	movs	r3, #2
     c76:	e295      	b.n	11a4 <chip_vm+0xcc4>
     c78:	bf00      	nop
     c7a:	e291      	b.n	11a0 <chip_vm+0xcc0>
     c7c:	bf00      	nop
     c7e:	e28f      	b.n	11a0 <chip_vm+0xcc0>
     c80:	bf00      	nop
     c82:	e28d      	b.n	11a0 <chip_vm+0xcc0>
     c84:	4b18      	ldr	r3, [pc, #96]	; (ce8 <chip_vm+0x808>)
     c86:	7d9b      	ldrb	r3, [r3, #22]
     c88:	021b      	lsls	r3, r3, #8
     c8a:	4a17      	ldr	r2, [pc, #92]	; (ce8 <chip_vm+0x808>)
     c8c:	7dd2      	ldrb	r2, [r2, #23]
     c8e:	4313      	orrs	r3, r2
     c90:	005b      	lsls	r3, r3, #1
     c92:	b29b      	uxth	r3, r3
     c94:	f3c3 030b 	ubfx	r3, r3, #0, #12
     c98:	b29a      	uxth	r2, r3
     c9a:	4b13      	ldr	r3, [pc, #76]	; (ce8 <chip_vm+0x808>)
     c9c:	805a      	strh	r2, [r3, #2]
     c9e:	e27f      	b.n	11a0 <chip_vm+0xcc0>
     ca0:	4b11      	ldr	r3, [pc, #68]	; (ce8 <chip_vm+0x808>)
     ca2:	795b      	ldrb	r3, [r3, #5]
     ca4:	b29b      	uxth	r3, r3
     ca6:	005b      	lsls	r3, r3, #1
     ca8:	b29a      	uxth	r2, r3
     caa:	4b0f      	ldr	r3, [pc, #60]	; (ce8 <chip_vm+0x808>)
     cac:	7d9b      	ldrb	r3, [r3, #22]
     cae:	021b      	lsls	r3, r3, #8
     cb0:	490d      	ldr	r1, [pc, #52]	; (ce8 <chip_vm+0x808>)
     cb2:	7dc9      	ldrb	r1, [r1, #23]
     cb4:	430b      	orrs	r3, r1
     cb6:	005b      	lsls	r3, r3, #1
     cb8:	b29b      	uxth	r3, r3
     cba:	f3c3 030b 	ubfx	r3, r3, #0, #12
     cbe:	b29b      	uxth	r3, r3
     cc0:	4413      	add	r3, r2
     cc2:	b29a      	uxth	r2, r3
     cc4:	4b08      	ldr	r3, [pc, #32]	; (ce8 <chip_vm+0x808>)
     cc6:	801a      	strh	r2, [r3, #0]
     cc8:	e26a      	b.n	11a0 <chip_vm+0xcc0>
     cca:	7bbc      	ldrb	r4, [r7, #14]
     ccc:	f7ff fbe6 	bl	49c <rand>
     cd0:	4603      	mov	r3, r0
     cd2:	b25a      	sxtb	r2, r3
     cd4:	4b04      	ldr	r3, [pc, #16]	; (ce8 <chip_vm+0x808>)
     cd6:	7ddb      	ldrb	r3, [r3, #23]
     cd8:	b25b      	sxtb	r3, r3
     cda:	4013      	ands	r3, r2
     cdc:	b25b      	sxtb	r3, r3
     cde:	b2da      	uxtb	r2, r3
     ce0:	4b01      	ldr	r3, [pc, #4]	; (ce8 <chip_vm+0x808>)
     ce2:	4423      	add	r3, r4
     ce4:	715a      	strb	r2, [r3, #5]
     ce6:	e25b      	b.n	11a0 <chip_vm+0xcc0>
     ce8:	20000184 	.word	0x20000184
     cec:	20000628 	.word	0x20000628
     cf0:	4bce      	ldr	r3, [pc, #824]	; (102c <chip_vm+0xb4c>)
     cf2:	7ddb      	ldrb	r3, [r3, #23]
     cf4:	f003 030f 	and.w	r3, r3, #15
     cf8:	73fb      	strb	r3, [r7, #15]
     cfa:	7bfb      	ldrb	r3, [r7, #15]
     cfc:	2b00      	cmp	r3, #0
     cfe:	d11a      	bne.n	d36 <chip_vm+0x856>
     d00:	7bbb      	ldrb	r3, [r7, #14]
     d02:	4aca      	ldr	r2, [pc, #808]	; (102c <chip_vm+0xb4c>)
     d04:	4413      	add	r3, r2
     d06:	795b      	ldrb	r3, [r3, #5]
     d08:	b25b      	sxtb	r3, r3
     d0a:	4618      	mov	r0, r3
     d0c:	7b7b      	ldrb	r3, [r7, #13]
     d0e:	4ac7      	ldr	r2, [pc, #796]	; (102c <chip_vm+0xb4c>)
     d10:	4413      	add	r3, r2
     d12:	795b      	ldrb	r3, [r3, #5]
     d14:	b25b      	sxtb	r3, r3
     d16:	4619      	mov	r1, r3
     d18:	4bc4      	ldr	r3, [pc, #784]	; (102c <chip_vm+0xb4c>)
     d1a:	885b      	ldrh	r3, [r3, #2]
     d1c:	461a      	mov	r2, r3
     d1e:	4bc4      	ldr	r3, [pc, #784]	; (1030 <chip_vm+0xb50>)
     d20:	4413      	add	r3, r2
     d22:	9300      	str	r3, [sp, #0]
     d24:	2310      	movs	r3, #16
     d26:	2210      	movs	r2, #16
     d28:	f001 fb72 	bl	2410 <gfx_sprite>
     d2c:	4603      	mov	r3, r0
     d2e:	b2da      	uxtb	r2, r3
     d30:	4bbe      	ldr	r3, [pc, #760]	; (102c <chip_vm+0xb4c>)
     d32:	751a      	strb	r2, [r3, #20]
     d34:	e234      	b.n	11a0 <chip_vm+0xcc0>
     d36:	7bbb      	ldrb	r3, [r7, #14]
     d38:	4abc      	ldr	r2, [pc, #752]	; (102c <chip_vm+0xb4c>)
     d3a:	4413      	add	r3, r2
     d3c:	795b      	ldrb	r3, [r3, #5]
     d3e:	b25b      	sxtb	r3, r3
     d40:	4618      	mov	r0, r3
     d42:	7b7b      	ldrb	r3, [r7, #13]
     d44:	4ab9      	ldr	r2, [pc, #740]	; (102c <chip_vm+0xb4c>)
     d46:	4413      	add	r3, r2
     d48:	795b      	ldrb	r3, [r3, #5]
     d4a:	b25b      	sxtb	r3, r3
     d4c:	4619      	mov	r1, r3
     d4e:	4bb7      	ldr	r3, [pc, #732]	; (102c <chip_vm+0xb4c>)
     d50:	885b      	ldrh	r3, [r3, #2]
     d52:	461a      	mov	r2, r3
     d54:	4bb6      	ldr	r3, [pc, #728]	; (1030 <chip_vm+0xb50>)
     d56:	4413      	add	r3, r2
     d58:	7bfa      	ldrb	r2, [r7, #15]
     d5a:	9300      	str	r3, [sp, #0]
     d5c:	4613      	mov	r3, r2
     d5e:	2208      	movs	r2, #8
     d60:	f001 fb56 	bl	2410 <gfx_sprite>
     d64:	4603      	mov	r3, r0
     d66:	b2da      	uxtb	r2, r3
     d68:	4bb0      	ldr	r3, [pc, #704]	; (102c <chip_vm+0xb4c>)
     d6a:	751a      	strb	r2, [r3, #20]
     d6c:	e218      	b.n	11a0 <chip_vm+0xcc0>
     d6e:	4baf      	ldr	r3, [pc, #700]	; (102c <chip_vm+0xb4c>)
     d70:	7ddb      	ldrb	r3, [r3, #23]
     d72:	2b9e      	cmp	r3, #158	; 0x9e
     d74:	d002      	beq.n	d7c <chip_vm+0x89c>
     d76:	2ba1      	cmp	r3, #161	; 0xa1
     d78:	d011      	beq.n	d9e <chip_vm+0x8be>
     d7a:	e021      	b.n	dc0 <chip_vm+0x8e0>
     d7c:	7bbb      	ldrb	r3, [r7, #14]
     d7e:	4aab      	ldr	r2, [pc, #684]	; (102c <chip_vm+0xb4c>)
     d80:	4413      	add	r3, r2
     d82:	795b      	ldrb	r3, [r3, #5]
     d84:	4618      	mov	r0, r3
     d86:	f000 fd65 	bl	1854 <btn_query_down>
     d8a:	4603      	mov	r3, r0
     d8c:	2b00      	cmp	r3, #0
     d8e:	d019      	beq.n	dc4 <chip_vm+0x8e4>
     d90:	4ba6      	ldr	r3, [pc, #664]	; (102c <chip_vm+0xb4c>)
     d92:	881b      	ldrh	r3, [r3, #0]
     d94:	3302      	adds	r3, #2
     d96:	b29a      	uxth	r2, r3
     d98:	4ba4      	ldr	r3, [pc, #656]	; (102c <chip_vm+0xb4c>)
     d9a:	801a      	strh	r2, [r3, #0]
     d9c:	e012      	b.n	dc4 <chip_vm+0x8e4>
     d9e:	7bbb      	ldrb	r3, [r7, #14]
     da0:	4aa2      	ldr	r2, [pc, #648]	; (102c <chip_vm+0xb4c>)
     da2:	4413      	add	r3, r2
     da4:	795b      	ldrb	r3, [r3, #5]
     da6:	4618      	mov	r0, r3
     da8:	f000 fd54 	bl	1854 <btn_query_down>
     dac:	4603      	mov	r3, r0
     dae:	2b00      	cmp	r3, #0
     db0:	d10a      	bne.n	dc8 <chip_vm+0x8e8>
     db2:	4b9e      	ldr	r3, [pc, #632]	; (102c <chip_vm+0xb4c>)
     db4:	881b      	ldrh	r3, [r3, #0]
     db6:	3302      	adds	r3, #2
     db8:	b29a      	uxth	r2, r3
     dba:	4b9c      	ldr	r3, [pc, #624]	; (102c <chip_vm+0xb4c>)
     dbc:	801a      	strh	r2, [r3, #0]
     dbe:	e003      	b.n	dc8 <chip_vm+0x8e8>
     dc0:	2302      	movs	r3, #2
     dc2:	e1ef      	b.n	11a4 <chip_vm+0xcc4>
     dc4:	bf00      	nop
     dc6:	e1eb      	b.n	11a0 <chip_vm+0xcc0>
     dc8:	bf00      	nop
     dca:	e1e9      	b.n	11a0 <chip_vm+0xcc0>
     dcc:	4b97      	ldr	r3, [pc, #604]	; (102c <chip_vm+0xb4c>)
     dce:	7ddb      	ldrb	r3, [r3, #23]
     dd0:	2b85      	cmp	r3, #133	; 0x85
     dd2:	f200 81da 	bhi.w	118a <chip_vm+0xcaa>
     dd6:	a201      	add	r2, pc, #4	; (adr r2, ddc <chip_vm+0x8fc>)
     dd8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     ddc:	0000118f 	.word	0x0000118f
     de0:	00000ff5 	.word	0x00000ff5
     de4:	0000118f 	.word	0x0000118f
     de8:	0000118b 	.word	0x0000118b
     dec:	0000118b 	.word	0x0000118b
     df0:	0000118b 	.word	0x0000118b
     df4:	0000118b 	.word	0x0000118b
     df8:	00001005 	.word	0x00001005
     dfc:	0000118b 	.word	0x0000118b
     e00:	0000118b 	.word	0x0000118b
     e04:	00001019 	.word	0x00001019
     e08:	0000118b 	.word	0x0000118b
     e0c:	0000118b 	.word	0x0000118b
     e10:	0000118b 	.word	0x0000118b
     e14:	0000118b 	.word	0x0000118b
     e18:	0000118b 	.word	0x0000118b
     e1c:	0000118b 	.word	0x0000118b
     e20:	0000118b 	.word	0x0000118b
     e24:	0000118b 	.word	0x0000118b
     e28:	0000118b 	.word	0x0000118b
     e2c:	0000118b 	.word	0x0000118b
     e30:	0000103d 	.word	0x0000103d
     e34:	0000118b 	.word	0x0000118b
     e38:	0000118b 	.word	0x0000118b
     e3c:	0000104d 	.word	0x0000104d
     e40:	0000118b 	.word	0x0000118b
     e44:	0000118b 	.word	0x0000118b
     e48:	0000118b 	.word	0x0000118b
     e4c:	0000118b 	.word	0x0000118b
     e50:	0000118b 	.word	0x0000118b
     e54:	00001063 	.word	0x00001063
     e58:	0000118b 	.word	0x0000118b
     e5c:	0000118b 	.word	0x0000118b
     e60:	0000118b 	.word	0x0000118b
     e64:	0000118b 	.word	0x0000118b
     e68:	0000118b 	.word	0x0000118b
     e6c:	0000118b 	.word	0x0000118b
     e70:	0000118b 	.word	0x0000118b
     e74:	0000118b 	.word	0x0000118b
     e78:	0000118b 	.word	0x0000118b
     e7c:	0000118b 	.word	0x0000118b
     e80:	0000107b 	.word	0x0000107b
     e84:	0000118b 	.word	0x0000118b
     e88:	0000118b 	.word	0x0000118b
     e8c:	0000118b 	.word	0x0000118b
     e90:	0000118b 	.word	0x0000118b
     e94:	0000118b 	.word	0x0000118b
     e98:	0000118b 	.word	0x0000118b
     e9c:	000010a3 	.word	0x000010a3
     ea0:	0000118b 	.word	0x0000118b
     ea4:	0000118b 	.word	0x0000118b
     ea8:	000010cb 	.word	0x000010cb
     eac:	0000118b 	.word	0x0000118b
     eb0:	0000118b 	.word	0x0000118b
     eb4:	0000118b 	.word	0x0000118b
     eb8:	0000118b 	.word	0x0000118b
     ebc:	0000118b 	.word	0x0000118b
     ec0:	0000118b 	.word	0x0000118b
     ec4:	0000118b 	.word	0x0000118b
     ec8:	0000118b 	.word	0x0000118b
     ecc:	0000118b 	.word	0x0000118b
     ed0:	0000118b 	.word	0x0000118b
     ed4:	0000118b 	.word	0x0000118b
     ed8:	0000118b 	.word	0x0000118b
     edc:	0000118b 	.word	0x0000118b
     ee0:	0000118b 	.word	0x0000118b
     ee4:	0000118b 	.word	0x0000118b
     ee8:	0000118b 	.word	0x0000118b
     eec:	0000118b 	.word	0x0000118b
     ef0:	0000118b 	.word	0x0000118b
     ef4:	0000118b 	.word	0x0000118b
     ef8:	0000118b 	.word	0x0000118b
     efc:	0000118b 	.word	0x0000118b
     f00:	0000118b 	.word	0x0000118b
     f04:	0000118b 	.word	0x0000118b
     f08:	0000118b 	.word	0x0000118b
     f0c:	0000118b 	.word	0x0000118b
     f10:	0000118b 	.word	0x0000118b
     f14:	0000118b 	.word	0x0000118b
     f18:	0000118b 	.word	0x0000118b
     f1c:	0000118b 	.word	0x0000118b
     f20:	0000118b 	.word	0x0000118b
     f24:	0000118b 	.word	0x0000118b
     f28:	0000118b 	.word	0x0000118b
     f2c:	0000118b 	.word	0x0000118b
     f30:	0000113b 	.word	0x0000113b
     f34:	0000118b 	.word	0x0000118b
     f38:	0000118b 	.word	0x0000118b
     f3c:	0000118b 	.word	0x0000118b
     f40:	0000118b 	.word	0x0000118b
     f44:	0000118b 	.word	0x0000118b
     f48:	0000118b 	.word	0x0000118b
     f4c:	0000118b 	.word	0x0000118b
     f50:	0000118b 	.word	0x0000118b
     f54:	0000118b 	.word	0x0000118b
     f58:	0000118b 	.word	0x0000118b
     f5c:	0000118b 	.word	0x0000118b
     f60:	0000118b 	.word	0x0000118b
     f64:	0000118b 	.word	0x0000118b
     f68:	0000118b 	.word	0x0000118b
     f6c:	0000118b 	.word	0x0000118b
     f70:	00001153 	.word	0x00001153
     f74:	0000118b 	.word	0x0000118b
     f78:	0000118b 	.word	0x0000118b
     f7c:	0000118b 	.word	0x0000118b
     f80:	0000118b 	.word	0x0000118b
     f84:	0000118b 	.word	0x0000118b
     f88:	0000118b 	.word	0x0000118b
     f8c:	0000118b 	.word	0x0000118b
     f90:	0000118b 	.word	0x0000118b
     f94:	0000118b 	.word	0x0000118b
     f98:	0000118b 	.word	0x0000118b
     f9c:	0000118b 	.word	0x0000118b
     fa0:	0000118b 	.word	0x0000118b
     fa4:	0000118b 	.word	0x0000118b
     fa8:	0000118b 	.word	0x0000118b
     fac:	0000118b 	.word	0x0000118b
     fb0:	0000116b 	.word	0x0000116b
     fb4:	0000118b 	.word	0x0000118b
     fb8:	0000118b 	.word	0x0000118b
     fbc:	0000118b 	.word	0x0000118b
     fc0:	0000118b 	.word	0x0000118b
     fc4:	0000118b 	.word	0x0000118b
     fc8:	0000118b 	.word	0x0000118b
     fcc:	0000118b 	.word	0x0000118b
     fd0:	0000118b 	.word	0x0000118b
     fd4:	0000118b 	.word	0x0000118b
     fd8:	0000118b 	.word	0x0000118b
     fdc:	0000118b 	.word	0x0000118b
     fe0:	0000118b 	.word	0x0000118b
     fe4:	0000118b 	.word	0x0000118b
     fe8:	0000118b 	.word	0x0000118b
     fec:	0000118b 	.word	0x0000118b
     ff0:	0000117b 	.word	0x0000117b
     ff4:	4b0d      	ldr	r3, [pc, #52]	; (102c <chip_vm+0xb4c>)
     ff6:	7d9b      	ldrb	r3, [r3, #22]
     ff8:	f003 0303 	and.w	r3, r3, #3
     ffc:	b2da      	uxtb	r2, r3
     ffe:	4b0d      	ldr	r3, [pc, #52]	; (1034 <chip_vm+0xb54>)
    1000:	701a      	strb	r2, [r3, #0]
    1002:	e0c5      	b.n	1190 <chip_vm+0xcb0>
    1004:	7bbb      	ldrb	r3, [r7, #14]
    1006:	4a0c      	ldr	r2, [pc, #48]	; (1038 <chip_vm+0xb58>)
    1008:	8812      	ldrh	r2, [r2, #0]
    100a:	b292      	uxth	r2, r2
    100c:	b2d1      	uxtb	r1, r2
    100e:	4a07      	ldr	r2, [pc, #28]	; (102c <chip_vm+0xb4c>)
    1010:	4413      	add	r3, r2
    1012:	460a      	mov	r2, r1
    1014:	715a      	strb	r2, [r3, #5]
    1016:	e0bb      	b.n	1190 <chip_vm+0xcb0>
    1018:	7bbc      	ldrb	r4, [r7, #14]
    101a:	f000 fc87 	bl	192c <btn_wait_any>
    101e:	4603      	mov	r3, r0
    1020:	461a      	mov	r2, r3
    1022:	4b02      	ldr	r3, [pc, #8]	; (102c <chip_vm+0xb4c>)
    1024:	4423      	add	r3, r4
    1026:	715a      	strb	r2, [r3, #5]
    1028:	e0b2      	b.n	1190 <chip_vm+0xcb0>
    102a:	bf00      	nop
    102c:	20000184 	.word	0x20000184
    1030:	20000628 	.word	0x20000628
    1034:	20000104 	.word	0x20000104
    1038:	20004db4 	.word	0x20004db4
    103c:	7bbb      	ldrb	r3, [r7, #14]
    103e:	4a5b      	ldr	r2, [pc, #364]	; (11ac <chip_vm+0xccc>)
    1040:	4413      	add	r3, r2
    1042:	795b      	ldrb	r3, [r3, #5]
    1044:	b29a      	uxth	r2, r3
    1046:	4b5a      	ldr	r3, [pc, #360]	; (11b0 <chip_vm+0xcd0>)
    1048:	801a      	strh	r2, [r3, #0]
    104a:	e0a1      	b.n	1190 <chip_vm+0xcb0>
    104c:	7bbb      	ldrb	r3, [r7, #14]
    104e:	4a57      	ldr	r2, [pc, #348]	; (11ac <chip_vm+0xccc>)
    1050:	4413      	add	r3, r2
    1052:	795b      	ldrb	r3, [r3, #5]
    1054:	b29b      	uxth	r3, r3
    1056:	4619      	mov	r1, r3
    1058:	f240 200b 	movw	r0, #523	; 0x20b
    105c:	f002 ffb8 	bl	3fd0 <tone>
    1060:	e096      	b.n	1190 <chip_vm+0xcb0>
    1062:	4b52      	ldr	r3, [pc, #328]	; (11ac <chip_vm+0xccc>)
    1064:	885a      	ldrh	r2, [r3, #2]
    1066:	7bbb      	ldrb	r3, [r7, #14]
    1068:	4950      	ldr	r1, [pc, #320]	; (11ac <chip_vm+0xccc>)
    106a:	440b      	add	r3, r1
    106c:	795b      	ldrb	r3, [r3, #5]
    106e:	b29b      	uxth	r3, r3
    1070:	4413      	add	r3, r2
    1072:	b29a      	uxth	r2, r3
    1074:	4b4d      	ldr	r3, [pc, #308]	; (11ac <chip_vm+0xccc>)
    1076:	805a      	strh	r2, [r3, #2]
    1078:	e08a      	b.n	1190 <chip_vm+0xcb0>
    107a:	7bbb      	ldrb	r3, [r7, #14]
    107c:	4a4b      	ldr	r2, [pc, #300]	; (11ac <chip_vm+0xccc>)
    107e:	4413      	add	r3, r2
    1080:	795b      	ldrb	r3, [r3, #5]
    1082:	b29b      	uxth	r3, r3
    1084:	461a      	mov	r2, r3
    1086:	0052      	lsls	r2, r2, #1
    1088:	4413      	add	r3, r2
    108a:	005b      	lsls	r3, r3, #1
    108c:	b29a      	uxth	r2, r3
    108e:	4b49      	ldr	r3, [pc, #292]	; (11b4 <chip_vm+0xcd4>)
    1090:	b29b      	uxth	r3, r3
    1092:	4413      	add	r3, r2
    1094:	b29a      	uxth	r2, r3
    1096:	4b45      	ldr	r3, [pc, #276]	; (11ac <chip_vm+0xccc>)
    1098:	805a      	strh	r2, [r3, #2]
    109a:	2000      	movs	r0, #0
    109c:	f003 fa7c 	bl	4598 <select_font>
    10a0:	e076      	b.n	1190 <chip_vm+0xcb0>
    10a2:	7bbb      	ldrb	r3, [r7, #14]
    10a4:	4a41      	ldr	r2, [pc, #260]	; (11ac <chip_vm+0xccc>)
    10a6:	4413      	add	r3, r2
    10a8:	795b      	ldrb	r3, [r3, #5]
    10aa:	b29b      	uxth	r3, r3
    10ac:	461a      	mov	r2, r3
    10ae:	0092      	lsls	r2, r2, #2
    10b0:	4413      	add	r3, r2
    10b2:	005b      	lsls	r3, r3, #1
    10b4:	b29a      	uxth	r2, r3
    10b6:	4b40      	ldr	r3, [pc, #256]	; (11b8 <chip_vm+0xcd8>)
    10b8:	b29b      	uxth	r3, r3
    10ba:	4413      	add	r3, r2
    10bc:	b29a      	uxth	r2, r3
    10be:	4b3b      	ldr	r3, [pc, #236]	; (11ac <chip_vm+0xccc>)
    10c0:	805a      	strh	r2, [r3, #2]
    10c2:	2001      	movs	r0, #1
    10c4:	f003 fa68 	bl	4598 <select_font>
    10c8:	e062      	b.n	1190 <chip_vm+0xcb0>
    10ca:	7bbb      	ldrb	r3, [r7, #14]
    10cc:	4a37      	ldr	r2, [pc, #220]	; (11ac <chip_vm+0xccc>)
    10ce:	4413      	add	r3, r2
    10d0:	795b      	ldrb	r3, [r3, #5]
    10d2:	73fb      	strb	r3, [r7, #15]
    10d4:	7bfa      	ldrb	r2, [r7, #15]
    10d6:	4b39      	ldr	r3, [pc, #228]	; (11bc <chip_vm+0xcdc>)
    10d8:	fba3 1302 	umull	r1, r3, r3, r2
    10dc:	08d9      	lsrs	r1, r3, #3
    10de:	460b      	mov	r3, r1
    10e0:	009b      	lsls	r3, r3, #2
    10e2:	440b      	add	r3, r1
    10e4:	005b      	lsls	r3, r3, #1
    10e6:	1ad3      	subs	r3, r2, r3
    10e8:	b2da      	uxtb	r2, r3
    10ea:	4b35      	ldr	r3, [pc, #212]	; (11c0 <chip_vm+0xce0>)
    10ec:	709a      	strb	r2, [r3, #2]
    10ee:	7bfb      	ldrb	r3, [r7, #15]
    10f0:	4a32      	ldr	r2, [pc, #200]	; (11bc <chip_vm+0xcdc>)
    10f2:	fba2 2303 	umull	r2, r3, r2, r3
    10f6:	08db      	lsrs	r3, r3, #3
    10f8:	73fb      	strb	r3, [r7, #15]
    10fa:	7bfa      	ldrb	r2, [r7, #15]
    10fc:	4b2f      	ldr	r3, [pc, #188]	; (11bc <chip_vm+0xcdc>)
    10fe:	fba3 1302 	umull	r1, r3, r3, r2
    1102:	08d9      	lsrs	r1, r3, #3
    1104:	460b      	mov	r3, r1
    1106:	009b      	lsls	r3, r3, #2
    1108:	440b      	add	r3, r1
    110a:	005b      	lsls	r3, r3, #1
    110c:	1ad3      	subs	r3, r2, r3
    110e:	b2da      	uxtb	r2, r3
    1110:	4b2b      	ldr	r3, [pc, #172]	; (11c0 <chip_vm+0xce0>)
    1112:	705a      	strb	r2, [r3, #1]
    1114:	7bfb      	ldrb	r3, [r7, #15]
    1116:	4a29      	ldr	r2, [pc, #164]	; (11bc <chip_vm+0xcdc>)
    1118:	fba2 2303 	umull	r2, r3, r2, r3
    111c:	08db      	lsrs	r3, r3, #3
    111e:	b2da      	uxtb	r2, r3
    1120:	4b27      	ldr	r3, [pc, #156]	; (11c0 <chip_vm+0xce0>)
    1122:	701a      	strb	r2, [r3, #0]
    1124:	4b21      	ldr	r3, [pc, #132]	; (11ac <chip_vm+0xccc>)
    1126:	885b      	ldrh	r3, [r3, #2]
    1128:	461a      	mov	r2, r3
    112a:	4b26      	ldr	r3, [pc, #152]	; (11c4 <chip_vm+0xce4>)
    112c:	4413      	add	r3, r2
    112e:	2203      	movs	r2, #3
    1130:	4619      	mov	r1, r3
    1132:	4823      	ldr	r0, [pc, #140]	; (11c0 <chip_vm+0xce0>)
    1134:	f000 fd85 	bl	1c42 <move>
    1138:	e02a      	b.n	1190 <chip_vm+0xcb0>
    113a:	4b1c      	ldr	r3, [pc, #112]	; (11ac <chip_vm+0xccc>)
    113c:	885b      	ldrh	r3, [r3, #2]
    113e:	461a      	mov	r2, r3
    1140:	4b20      	ldr	r3, [pc, #128]	; (11c4 <chip_vm+0xce4>)
    1142:	18d1      	adds	r1, r2, r3
    1144:	7bbb      	ldrb	r3, [r7, #14]
    1146:	3301      	adds	r3, #1
    1148:	461a      	mov	r2, r3
    114a:	481f      	ldr	r0, [pc, #124]	; (11c8 <chip_vm+0xce8>)
    114c:	f000 fd79 	bl	1c42 <move>
    1150:	e01e      	b.n	1190 <chip_vm+0xcb0>
    1152:	4b16      	ldr	r3, [pc, #88]	; (11ac <chip_vm+0xccc>)
    1154:	885b      	ldrh	r3, [r3, #2]
    1156:	461a      	mov	r2, r3
    1158:	4b1a      	ldr	r3, [pc, #104]	; (11c4 <chip_vm+0xce4>)
    115a:	18d0      	adds	r0, r2, r3
    115c:	7bbb      	ldrb	r3, [r7, #14]
    115e:	3301      	adds	r3, #1
    1160:	461a      	mov	r2, r3
    1162:	4919      	ldr	r1, [pc, #100]	; (11c8 <chip_vm+0xce8>)
    1164:	f000 fd6d 	bl	1c42 <move>
    1168:	e012      	b.n	1190 <chip_vm+0xcb0>
    116a:	7bfb      	ldrb	r3, [r7, #15]
    116c:	461a      	mov	r2, r3
    116e:	4916      	ldr	r1, [pc, #88]	; (11c8 <chip_vm+0xce8>)
    1170:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
    1174:	f000 fa4d 	bl	1612 <flash_write_block>
    1178:	e00a      	b.n	1190 <chip_vm+0xcb0>
    117a:	7bfb      	ldrb	r3, [r7, #15]
    117c:	461a      	mov	r2, r3
    117e:	4912      	ldr	r1, [pc, #72]	; (11c8 <chip_vm+0xce8>)
    1180:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
    1184:	f000 fa26 	bl	15d4 <flash_read_block>
    1188:	e002      	b.n	1190 <chip_vm+0xcb0>
    118a:	2302      	movs	r3, #2
    118c:	e00a      	b.n	11a4 <chip_vm+0xcc4>
    118e:	bf00      	nop
    1190:	e006      	b.n	11a0 <chip_vm+0xcc0>
    1192:	bf00      	nop
    1194:	f7ff b9b2 	b.w	4fc <chip_vm+0x1c>
    1198:	bf00      	nop
    119a:	f7ff b9af 	b.w	4fc <chip_vm+0x1c>
    119e:	bf00      	nop
    11a0:	f7ff b9ac 	b.w	4fc <chip_vm+0x1c>
    11a4:	4618      	mov	r0, r3
    11a6:	3714      	adds	r7, #20
    11a8:	46bd      	mov	sp, r7
    11aa:	bd90      	pop	{r4, r7, pc}
    11ac:	20000184 	.word	0x20000184
    11b0:	20004db4 	.word	0x20004db4
    11b4:	0000523c 	.word	0x0000523c
    11b8:	0000529c 	.word	0x0000529c
    11bc:	cccccccd 	.word	0xcccccccd
    11c0:	200001dc 	.word	0x200001dc
    11c4:	20000628 	.word	0x20000628
    11c8:	20000189 	.word	0x20000189

000011cc <flash_enable>:
    11cc:	b480      	push	{r7}
    11ce:	af00      	add	r7, sp, #0
    11d0:	4b14      	ldr	r3, [pc, #80]	; (1224 <flash_enable+0x58>)
    11d2:	2200      	movs	r2, #0
    11d4:	701a      	strb	r2, [r3, #0]
    11d6:	4b14      	ldr	r3, [pc, #80]	; (1228 <flash_enable+0x5c>)
    11d8:	681b      	ldr	r3, [r3, #0]
    11da:	f003 0301 	and.w	r3, r3, #1
    11de:	2b00      	cmp	r3, #0
    11e0:	d10c      	bne.n	11fc <flash_enable+0x30>
    11e2:	4a11      	ldr	r2, [pc, #68]	; (1228 <flash_enable+0x5c>)
    11e4:	4b10      	ldr	r3, [pc, #64]	; (1228 <flash_enable+0x5c>)
    11e6:	681b      	ldr	r3, [r3, #0]
    11e8:	f043 0301 	orr.w	r3, r3, #1
    11ec:	6013      	str	r3, [r2, #0]
    11ee:	bf00      	nop
    11f0:	4b0d      	ldr	r3, [pc, #52]	; (1228 <flash_enable+0x5c>)
    11f2:	681b      	ldr	r3, [r3, #0]
    11f4:	f003 0302 	and.w	r3, r3, #2
    11f8:	2b00      	cmp	r3, #0
    11fa:	d0f9      	beq.n	11f0 <flash_enable+0x24>
    11fc:	4b0b      	ldr	r3, [pc, #44]	; (122c <flash_enable+0x60>)
    11fe:	4a0c      	ldr	r2, [pc, #48]	; (1230 <flash_enable+0x64>)
    1200:	605a      	str	r2, [r3, #4]
    1202:	4b0a      	ldr	r3, [pc, #40]	; (122c <flash_enable+0x60>)
    1204:	4a0b      	ldr	r2, [pc, #44]	; (1234 <flash_enable+0x68>)
    1206:	605a      	str	r2, [r3, #4]
    1208:	4b08      	ldr	r3, [pc, #32]	; (122c <flash_enable+0x60>)
    120a:	691b      	ldr	r3, [r3, #16]
    120c:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1210:	2b00      	cmp	r3, #0
    1212:	bf0c      	ite	eq
    1214:	2301      	moveq	r3, #1
    1216:	2300      	movne	r3, #0
    1218:	b2db      	uxtb	r3, r3
    121a:	4618      	mov	r0, r3
    121c:	46bd      	mov	sp, r7
    121e:	bc80      	pop	{r7}
    1220:	4770      	bx	lr
    1222:	bf00      	nop
    1224:	200001fc 	.word	0x200001fc
    1228:	40021000 	.word	0x40021000
    122c:	40022000 	.word	0x40022000
    1230:	45670123 	.word	0x45670123
    1234:	cdef89ab 	.word	0xcdef89ab

00001238 <read_byte>:
    1238:	b480      	push	{r7}
    123a:	b085      	sub	sp, #20
    123c:	af00      	add	r7, sp, #0
    123e:	6078      	str	r0, [r7, #4]
    1240:	687b      	ldr	r3, [r7, #4]
    1242:	0a9b      	lsrs	r3, r3, #10
    1244:	4a0a      	ldr	r2, [pc, #40]	; (1270 <read_byte+0x38>)
    1246:	7852      	ldrb	r2, [r2, #1]
    1248:	4293      	cmp	r3, r2
    124a:	d109      	bne.n	1260 <read_byte+0x28>
    124c:	687b      	ldr	r3, [r7, #4]
    124e:	f3c3 0309 	ubfx	r3, r3, #0, #10
    1252:	60fb      	str	r3, [r7, #12]
    1254:	4a06      	ldr	r2, [pc, #24]	; (1270 <read_byte+0x38>)
    1256:	68fb      	ldr	r3, [r7, #12]
    1258:	4413      	add	r3, r2
    125a:	3302      	adds	r3, #2
    125c:	781b      	ldrb	r3, [r3, #0]
    125e:	e001      	b.n	1264 <read_byte+0x2c>
    1260:	687b      	ldr	r3, [r7, #4]
    1262:	781b      	ldrb	r3, [r3, #0]
    1264:	4618      	mov	r0, r3
    1266:	3714      	adds	r7, #20
    1268:	46bd      	mov	sp, r7
    126a:	bc80      	pop	{r7}
    126c:	4770      	bx	lr
    126e:	bf00      	nop
    1270:	200001fc 	.word	0x200001fc

00001274 <flash_write_hword>:
    1274:	b480      	push	{r7}
    1276:	b083      	sub	sp, #12
    1278:	af00      	add	r7, sp, #0
    127a:	6078      	str	r0, [r7, #4]
    127c:	460b      	mov	r3, r1
    127e:	807b      	strh	r3, [r7, #2]
    1280:	bf00      	nop
    1282:	4b16      	ldr	r3, [pc, #88]	; (12dc <flash_write_hword+0x68>)
    1284:	68db      	ldr	r3, [r3, #12]
    1286:	f003 0301 	and.w	r3, r3, #1
    128a:	2b00      	cmp	r3, #0
    128c:	d1f9      	bne.n	1282 <flash_write_hword+0xe>
    128e:	4a13      	ldr	r2, [pc, #76]	; (12dc <flash_write_hword+0x68>)
    1290:	4b12      	ldr	r3, [pc, #72]	; (12dc <flash_write_hword+0x68>)
    1292:	68db      	ldr	r3, [r3, #12]
    1294:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1298:	60d3      	str	r3, [r2, #12]
    129a:	4b10      	ldr	r3, [pc, #64]	; (12dc <flash_write_hword+0x68>)
    129c:	2201      	movs	r2, #1
    129e:	611a      	str	r2, [r3, #16]
    12a0:	687b      	ldr	r3, [r7, #4]
    12a2:	887a      	ldrh	r2, [r7, #2]
    12a4:	801a      	strh	r2, [r3, #0]
    12a6:	bf00      	nop
    12a8:	4b0c      	ldr	r3, [pc, #48]	; (12dc <flash_write_hword+0x68>)
    12aa:	68db      	ldr	r3, [r3, #12]
    12ac:	f003 0301 	and.w	r3, r3, #1
    12b0:	2b00      	cmp	r3, #0
    12b2:	d005      	beq.n	12c0 <flash_write_hword+0x4c>
    12b4:	4b09      	ldr	r3, [pc, #36]	; (12dc <flash_write_hword+0x68>)
    12b6:	68db      	ldr	r3, [r3, #12]
    12b8:	f003 0320 	and.w	r3, r3, #32
    12bc:	2b00      	cmp	r3, #0
    12be:	d0f3      	beq.n	12a8 <flash_write_hword+0x34>
    12c0:	687b      	ldr	r3, [r7, #4]
    12c2:	881b      	ldrh	r3, [r3, #0]
    12c4:	887a      	ldrh	r2, [r7, #2]
    12c6:	429a      	cmp	r2, r3
    12c8:	bf0c      	ite	eq
    12ca:	2301      	moveq	r3, #1
    12cc:	2300      	movne	r3, #0
    12ce:	b2db      	uxtb	r3, r3
    12d0:	4618      	mov	r0, r3
    12d2:	370c      	adds	r7, #12
    12d4:	46bd      	mov	sp, r7
    12d6:	bc80      	pop	{r7}
    12d8:	4770      	bx	lr
    12da:	bf00      	nop
    12dc:	40022000 	.word	0x40022000

000012e0 <write_back_buffer>:
    12e0:	b580      	push	{r7, lr}
    12e2:	b084      	sub	sp, #16
    12e4:	af00      	add	r7, sp, #0
    12e6:	4b1e      	ldr	r3, [pc, #120]	; (1360 <write_back_buffer+0x80>)
    12e8:	785b      	ldrb	r3, [r3, #1]
    12ea:	029b      	lsls	r3, r3, #10
    12ec:	60bb      	str	r3, [r7, #8]
    12ee:	4b1d      	ldr	r3, [pc, #116]	; (1364 <write_back_buffer+0x84>)
    12f0:	607b      	str	r3, [r7, #4]
    12f2:	2300      	movs	r3, #0
    12f4:	60fb      	str	r3, [r7, #12]
    12f6:	e017      	b.n	1328 <write_back_buffer+0x48>
    12f8:	687b      	ldr	r3, [r7, #4]
    12fa:	881b      	ldrh	r3, [r3, #0]
    12fc:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1300:	4293      	cmp	r3, r2
    1302:	d008      	beq.n	1316 <write_back_buffer+0x36>
    1304:	687b      	ldr	r3, [r7, #4]
    1306:	881b      	ldrh	r3, [r3, #0]
    1308:	4619      	mov	r1, r3
    130a:	68b8      	ldr	r0, [r7, #8]
    130c:	f7ff ffb2 	bl	1274 <flash_write_hword>
    1310:	4603      	mov	r3, r0
    1312:	2b00      	cmp	r3, #0
    1314:	d00d      	beq.n	1332 <write_back_buffer+0x52>
    1316:	68bb      	ldr	r3, [r7, #8]
    1318:	3302      	adds	r3, #2
    131a:	60bb      	str	r3, [r7, #8]
    131c:	687b      	ldr	r3, [r7, #4]
    131e:	3302      	adds	r3, #2
    1320:	607b      	str	r3, [r7, #4]
    1322:	68fb      	ldr	r3, [r7, #12]
    1324:	3301      	adds	r3, #1
    1326:	60fb      	str	r3, [r7, #12]
    1328:	68fb      	ldr	r3, [r7, #12]
    132a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    132e:	dbe3      	blt.n	12f8 <write_back_buffer+0x18>
    1330:	e000      	b.n	1334 <write_back_buffer+0x54>
    1332:	bf00      	nop
    1334:	68fb      	ldr	r3, [r7, #12]
    1336:	2b00      	cmp	r3, #0
    1338:	dd06      	ble.n	1348 <write_back_buffer+0x68>
    133a:	4b09      	ldr	r3, [pc, #36]	; (1360 <write_back_buffer+0x80>)
    133c:	781b      	ldrb	r3, [r3, #0]
    133e:	f023 0304 	bic.w	r3, r3, #4
    1342:	b2da      	uxtb	r2, r3
    1344:	4b06      	ldr	r3, [pc, #24]	; (1360 <write_back_buffer+0x80>)
    1346:	701a      	strb	r2, [r3, #0]
    1348:	68fb      	ldr	r3, [r7, #12]
    134a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    134e:	d101      	bne.n	1354 <write_back_buffer+0x74>
    1350:	2301      	movs	r3, #1
    1352:	e000      	b.n	1356 <write_back_buffer+0x76>
    1354:	2300      	movs	r3, #0
    1356:	4618      	mov	r0, r3
    1358:	3710      	adds	r7, #16
    135a:	46bd      	mov	sp, r7
    135c:	bd80      	pop	{r7, pc}
    135e:	bf00      	nop
    1360:	200001fc 	.word	0x200001fc
    1364:	200001fe 	.word	0x200001fe

00001368 <load_row>:
    1368:	b480      	push	{r7}
    136a:	b087      	sub	sp, #28
    136c:	af00      	add	r7, sp, #0
    136e:	6078      	str	r0, [r7, #4]
    1370:	687b      	ldr	r3, [r7, #4]
    1372:	029b      	lsls	r3, r3, #10
    1374:	617b      	str	r3, [r7, #20]
    1376:	4b15      	ldr	r3, [pc, #84]	; (13cc <load_row+0x64>)
    1378:	613b      	str	r3, [r7, #16]
    137a:	2300      	movs	r3, #0
    137c:	60fb      	str	r3, [r7, #12]
    137e:	e00a      	b.n	1396 <load_row+0x2e>
    1380:	693b      	ldr	r3, [r7, #16]
    1382:	1c9a      	adds	r2, r3, #2
    1384:	613a      	str	r2, [r7, #16]
    1386:	697a      	ldr	r2, [r7, #20]
    1388:	1c91      	adds	r1, r2, #2
    138a:	6179      	str	r1, [r7, #20]
    138c:	8812      	ldrh	r2, [r2, #0]
    138e:	801a      	strh	r2, [r3, #0]
    1390:	68fb      	ldr	r3, [r7, #12]
    1392:	3301      	adds	r3, #1
    1394:	60fb      	str	r3, [r7, #12]
    1396:	68fb      	ldr	r3, [r7, #12]
    1398:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    139c:	dbf0      	blt.n	1380 <load_row+0x18>
    139e:	687b      	ldr	r3, [r7, #4]
    13a0:	b2da      	uxtb	r2, r3
    13a2:	4b0b      	ldr	r3, [pc, #44]	; (13d0 <load_row+0x68>)
    13a4:	705a      	strb	r2, [r3, #1]
    13a6:	4b0a      	ldr	r3, [pc, #40]	; (13d0 <load_row+0x68>)
    13a8:	781b      	ldrb	r3, [r3, #0]
    13aa:	f023 0301 	bic.w	r3, r3, #1
    13ae:	b2da      	uxtb	r2, r3
    13b0:	4b07      	ldr	r3, [pc, #28]	; (13d0 <load_row+0x68>)
    13b2:	701a      	strb	r2, [r3, #0]
    13b4:	4b06      	ldr	r3, [pc, #24]	; (13d0 <load_row+0x68>)
    13b6:	781b      	ldrb	r3, [r3, #0]
    13b8:	f043 0302 	orr.w	r3, r3, #2
    13bc:	b2da      	uxtb	r2, r3
    13be:	4b04      	ldr	r3, [pc, #16]	; (13d0 <load_row+0x68>)
    13c0:	701a      	strb	r2, [r3, #0]
    13c2:	bf00      	nop
    13c4:	371c      	adds	r7, #28
    13c6:	46bd      	mov	sp, r7
    13c8:	bc80      	pop	{r7}
    13ca:	4770      	bx	lr
    13cc:	200001fe 	.word	0x200001fe
    13d0:	200001fc 	.word	0x200001fc

000013d4 <is_erased>:
    13d4:	b480      	push	{r7}
    13d6:	b085      	sub	sp, #20
    13d8:	af00      	add	r7, sp, #0
    13da:	6078      	str	r0, [r7, #4]
    13dc:	687b      	ldr	r3, [r7, #4]
    13de:	029b      	lsls	r3, r3, #10
    13e0:	60fb      	str	r3, [r7, #12]
    13e2:	2300      	movs	r3, #0
    13e4:	60bb      	str	r3, [r7, #8]
    13e6:	e00c      	b.n	1402 <is_erased+0x2e>
    13e8:	68fb      	ldr	r3, [r7, #12]
    13ea:	1c9a      	adds	r2, r3, #2
    13ec:	60fa      	str	r2, [r7, #12]
    13ee:	881b      	ldrh	r3, [r3, #0]
    13f0:	f64f 72ff 	movw	r2, #65535	; 0xffff
    13f4:	4293      	cmp	r3, r2
    13f6:	d001      	beq.n	13fc <is_erased+0x28>
    13f8:	2300      	movs	r3, #0
    13fa:	e008      	b.n	140e <is_erased+0x3a>
    13fc:	68bb      	ldr	r3, [r7, #8]
    13fe:	3301      	adds	r3, #1
    1400:	60bb      	str	r3, [r7, #8]
    1402:	68bb      	ldr	r3, [r7, #8]
    1404:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1408:	dbee      	blt.n	13e8 <is_erased+0x14>
    140a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    140e:	4618      	mov	r0, r3
    1410:	3714      	adds	r7, #20
    1412:	46bd      	mov	sp, r7
    1414:	bc80      	pop	{r7}
    1416:	4770      	bx	lr

00001418 <flash_erase_row>:
    1418:	b580      	push	{r7, lr}
    141a:	b086      	sub	sp, #24
    141c:	af00      	add	r7, sp, #0
    141e:	6078      	str	r0, [r7, #4]
    1420:	687b      	ldr	r3, [r7, #4]
    1422:	2b3f      	cmp	r3, #63	; 0x3f
    1424:	d801      	bhi.n	142a <flash_erase_row+0x12>
    1426:	2300      	movs	r3, #0
    1428:	e052      	b.n	14d0 <flash_erase_row+0xb8>
    142a:	6878      	ldr	r0, [r7, #4]
    142c:	f7ff ffd2 	bl	13d4 <is_erased>
    1430:	4603      	mov	r3, r0
    1432:	2b00      	cmp	r3, #0
    1434:	d001      	beq.n	143a <flash_erase_row+0x22>
    1436:	2301      	movs	r3, #1
    1438:	e04a      	b.n	14d0 <flash_erase_row+0xb8>
    143a:	687b      	ldr	r3, [r7, #4]
    143c:	029b      	lsls	r3, r3, #10
    143e:	617b      	str	r3, [r7, #20]
    1440:	4b25      	ldr	r3, [pc, #148]	; (14d8 <flash_erase_row+0xc0>)
    1442:	691b      	ldr	r3, [r3, #16]
    1444:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1448:	2b00      	cmp	r3, #0
    144a:	d001      	beq.n	1450 <flash_erase_row+0x38>
    144c:	2300      	movs	r3, #0
    144e:	e03f      	b.n	14d0 <flash_erase_row+0xb8>
    1450:	4a21      	ldr	r2, [pc, #132]	; (14d8 <flash_erase_row+0xc0>)
    1452:	4b21      	ldr	r3, [pc, #132]	; (14d8 <flash_erase_row+0xc0>)
    1454:	68db      	ldr	r3, [r3, #12]
    1456:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    145a:	60d3      	str	r3, [r2, #12]
    145c:	4b1e      	ldr	r3, [pc, #120]	; (14d8 <flash_erase_row+0xc0>)
    145e:	2202      	movs	r2, #2
    1460:	611a      	str	r2, [r3, #16]
    1462:	4a1d      	ldr	r2, [pc, #116]	; (14d8 <flash_erase_row+0xc0>)
    1464:	697b      	ldr	r3, [r7, #20]
    1466:	6153      	str	r3, [r2, #20]
    1468:	4a1b      	ldr	r2, [pc, #108]	; (14d8 <flash_erase_row+0xc0>)
    146a:	4b1b      	ldr	r3, [pc, #108]	; (14d8 <flash_erase_row+0xc0>)
    146c:	691b      	ldr	r3, [r3, #16]
    146e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1472:	6113      	str	r3, [r2, #16]
    1474:	bf00      	nop
    1476:	4b18      	ldr	r3, [pc, #96]	; (14d8 <flash_erase_row+0xc0>)
    1478:	68db      	ldr	r3, [r3, #12]
    147a:	f003 0301 	and.w	r3, r3, #1
    147e:	2b00      	cmp	r3, #0
    1480:	d005      	beq.n	148e <flash_erase_row+0x76>
    1482:	4b15      	ldr	r3, [pc, #84]	; (14d8 <flash_erase_row+0xc0>)
    1484:	68db      	ldr	r3, [r3, #12]
    1486:	f003 0320 	and.w	r3, r3, #32
    148a:	2b00      	cmp	r3, #0
    148c:	d0f3      	beq.n	1476 <flash_erase_row+0x5e>
    148e:	687b      	ldr	r3, [r7, #4]
    1490:	029b      	lsls	r3, r3, #10
    1492:	617b      	str	r3, [r7, #20]
    1494:	2300      	movs	r3, #0
    1496:	60fb      	str	r3, [r7, #12]
    1498:	e00c      	b.n	14b4 <flash_erase_row+0x9c>
    149a:	697b      	ldr	r3, [r7, #20]
    149c:	1c9a      	adds	r2, r3, #2
    149e:	617a      	str	r2, [r7, #20]
    14a0:	881b      	ldrh	r3, [r3, #0]
    14a2:	827b      	strh	r3, [r7, #18]
    14a4:	8a7b      	ldrh	r3, [r7, #18]
    14a6:	f64f 72ff 	movw	r2, #65535	; 0xffff
    14aa:	4293      	cmp	r3, r2
    14ac:	d107      	bne.n	14be <flash_erase_row+0xa6>
    14ae:	68fb      	ldr	r3, [r7, #12]
    14b0:	3301      	adds	r3, #1
    14b2:	60fb      	str	r3, [r7, #12]
    14b4:	68fb      	ldr	r3, [r7, #12]
    14b6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    14ba:	dbee      	blt.n	149a <flash_erase_row+0x82>
    14bc:	e000      	b.n	14c0 <flash_erase_row+0xa8>
    14be:	bf00      	nop
    14c0:	8a7b      	ldrh	r3, [r7, #18]
    14c2:	f64f 72ff 	movw	r2, #65535	; 0xffff
    14c6:	4293      	cmp	r3, r2
    14c8:	bf0c      	ite	eq
    14ca:	2301      	moveq	r3, #1
    14cc:	2300      	movne	r3, #0
    14ce:	b2db      	uxtb	r3, r3
    14d0:	4618      	mov	r0, r3
    14d2:	3718      	adds	r7, #24
    14d4:	46bd      	mov	sp, r7
    14d6:	bd80      	pop	{r7, pc}
    14d8:	40022000 	.word	0x40022000

000014dc <flash_sync>:
    14dc:	b580      	push	{r7, lr}
    14de:	af00      	add	r7, sp, #0
    14e0:	4b10      	ldr	r3, [pc, #64]	; (1524 <flash_sync+0x48>)
    14e2:	781b      	ldrb	r3, [r3, #0]
    14e4:	f003 0301 	and.w	r3, r3, #1
    14e8:	2b00      	cmp	r3, #0
    14ea:	d017      	beq.n	151c <flash_sync+0x40>
    14ec:	4b0d      	ldr	r3, [pc, #52]	; (1524 <flash_sync+0x48>)
    14ee:	785b      	ldrb	r3, [r3, #1]
    14f0:	4618      	mov	r0, r3
    14f2:	f7ff ff91 	bl	1418 <flash_erase_row>
    14f6:	4603      	mov	r3, r0
    14f8:	2b00      	cmp	r3, #0
    14fa:	d00d      	beq.n	1518 <flash_sync+0x3c>
    14fc:	f7ff fef0 	bl	12e0 <write_back_buffer>
    1500:	4603      	mov	r3, r0
    1502:	2b00      	cmp	r3, #0
    1504:	d008      	beq.n	1518 <flash_sync+0x3c>
    1506:	4b07      	ldr	r3, [pc, #28]	; (1524 <flash_sync+0x48>)
    1508:	781b      	ldrb	r3, [r3, #0]
    150a:	f023 0301 	bic.w	r3, r3, #1
    150e:	b2da      	uxtb	r2, r3
    1510:	4b04      	ldr	r3, [pc, #16]	; (1524 <flash_sync+0x48>)
    1512:	701a      	strb	r2, [r3, #0]
    1514:	2301      	movs	r3, #1
    1516:	e002      	b.n	151e <flash_sync+0x42>
    1518:	2300      	movs	r3, #0
    151a:	e000      	b.n	151e <flash_sync+0x42>
    151c:	2301      	movs	r3, #1
    151e:	4618      	mov	r0, r3
    1520:	bd80      	pop	{r7, pc}
    1522:	bf00      	nop
    1524:	200001fc 	.word	0x200001fc

00001528 <flash_flush>:
    1528:	b480      	push	{r7}
    152a:	af00      	add	r7, sp, #0
    152c:	4b03      	ldr	r3, [pc, #12]	; (153c <flash_flush+0x14>)
    152e:	2200      	movs	r2, #0
    1530:	701a      	strb	r2, [r3, #0]
    1532:	bf00      	nop
    1534:	46bd      	mov	sp, r7
    1536:	bc80      	pop	{r7}
    1538:	4770      	bx	lr
    153a:	bf00      	nop
    153c:	200001fc 	.word	0x200001fc

00001540 <flash_disable>:
    1540:	b580      	push	{r7, lr}
    1542:	af00      	add	r7, sp, #0
    1544:	f7ff ffca 	bl	14dc <flash_sync>
    1548:	4b05      	ldr	r3, [pc, #20]	; (1560 <flash_disable+0x20>)
    154a:	2200      	movs	r2, #0
    154c:	701a      	strb	r2, [r3, #0]
    154e:	4a05      	ldr	r2, [pc, #20]	; (1564 <flash_disable+0x24>)
    1550:	4b04      	ldr	r3, [pc, #16]	; (1564 <flash_disable+0x24>)
    1552:	691b      	ldr	r3, [r3, #16]
    1554:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    1558:	6113      	str	r3, [r2, #16]
    155a:	bf00      	nop
    155c:	bd80      	pop	{r7, pc}
    155e:	bf00      	nop
    1560:	200001fc 	.word	0x200001fc
    1564:	40022000 	.word	0x40022000

00001568 <flash_write_byte>:
    1568:	b580      	push	{r7, lr}
    156a:	b084      	sub	sp, #16
    156c:	af00      	add	r7, sp, #0
    156e:	6078      	str	r0, [r7, #4]
    1570:	460b      	mov	r3, r1
    1572:	70fb      	strb	r3, [r7, #3]
    1574:	687b      	ldr	r3, [r7, #4]
    1576:	0a9b      	lsrs	r3, r3, #10
    1578:	60fb      	str	r3, [r7, #12]
    157a:	68fb      	ldr	r3, [r7, #12]
    157c:	2b3f      	cmp	r3, #63	; 0x3f
    157e:	d801      	bhi.n	1584 <flash_write_byte+0x1c>
    1580:	2300      	movs	r3, #0
    1582:	e021      	b.n	15c8 <flash_write_byte+0x60>
    1584:	4b12      	ldr	r3, [pc, #72]	; (15d0 <flash_write_byte+0x68>)
    1586:	785b      	ldrb	r3, [r3, #1]
    1588:	461a      	mov	r2, r3
    158a:	68fb      	ldr	r3, [r7, #12]
    158c:	429a      	cmp	r2, r3
    158e:	d009      	beq.n	15a4 <flash_write_byte+0x3c>
    1590:	f7ff ffa4 	bl	14dc <flash_sync>
    1594:	4603      	mov	r3, r0
    1596:	2b00      	cmp	r3, #0
    1598:	d101      	bne.n	159e <flash_write_byte+0x36>
    159a:	2300      	movs	r3, #0
    159c:	e014      	b.n	15c8 <flash_write_byte+0x60>
    159e:	68f8      	ldr	r0, [r7, #12]
    15a0:	f7ff fee2 	bl	1368 <load_row>
    15a4:	687b      	ldr	r3, [r7, #4]
    15a6:	f3c3 0309 	ubfx	r3, r3, #0, #10
    15aa:	60bb      	str	r3, [r7, #8]
    15ac:	4a08      	ldr	r2, [pc, #32]	; (15d0 <flash_write_byte+0x68>)
    15ae:	68bb      	ldr	r3, [r7, #8]
    15b0:	4413      	add	r3, r2
    15b2:	3302      	adds	r3, #2
    15b4:	78fa      	ldrb	r2, [r7, #3]
    15b6:	701a      	strb	r2, [r3, #0]
    15b8:	4b05      	ldr	r3, [pc, #20]	; (15d0 <flash_write_byte+0x68>)
    15ba:	781b      	ldrb	r3, [r3, #0]
    15bc:	f043 0301 	orr.w	r3, r3, #1
    15c0:	b2da      	uxtb	r2, r3
    15c2:	4b03      	ldr	r3, [pc, #12]	; (15d0 <flash_write_byte+0x68>)
    15c4:	701a      	strb	r2, [r3, #0]
    15c6:	2301      	movs	r3, #1
    15c8:	4618      	mov	r0, r3
    15ca:	3710      	adds	r7, #16
    15cc:	46bd      	mov	sp, r7
    15ce:	bd80      	pop	{r7, pc}
    15d0:	200001fc 	.word	0x200001fc

000015d4 <flash_read_block>:
    15d4:	b590      	push	{r4, r7, lr}
    15d6:	b087      	sub	sp, #28
    15d8:	af00      	add	r7, sp, #0
    15da:	60f8      	str	r0, [r7, #12]
    15dc:	60b9      	str	r1, [r7, #8]
    15de:	607a      	str	r2, [r7, #4]
    15e0:	2300      	movs	r3, #0
    15e2:	617b      	str	r3, [r7, #20]
    15e4:	e00d      	b.n	1602 <flash_read_block+0x2e>
    15e6:	68bc      	ldr	r4, [r7, #8]
    15e8:	1c63      	adds	r3, r4, #1
    15ea:	60bb      	str	r3, [r7, #8]
    15ec:	68fb      	ldr	r3, [r7, #12]
    15ee:	1c5a      	adds	r2, r3, #1
    15f0:	60fa      	str	r2, [r7, #12]
    15f2:	4618      	mov	r0, r3
    15f4:	f7ff fe20 	bl	1238 <read_byte>
    15f8:	4603      	mov	r3, r0
    15fa:	7023      	strb	r3, [r4, #0]
    15fc:	697b      	ldr	r3, [r7, #20]
    15fe:	3301      	adds	r3, #1
    1600:	617b      	str	r3, [r7, #20]
    1602:	697a      	ldr	r2, [r7, #20]
    1604:	687b      	ldr	r3, [r7, #4]
    1606:	429a      	cmp	r2, r3
    1608:	dbed      	blt.n	15e6 <flash_read_block+0x12>
    160a:	bf00      	nop
    160c:	371c      	adds	r7, #28
    160e:	46bd      	mov	sp, r7
    1610:	bd90      	pop	{r4, r7, pc}

00001612 <flash_write_block>:
    1612:	b580      	push	{r7, lr}
    1614:	b086      	sub	sp, #24
    1616:	af00      	add	r7, sp, #0
    1618:	60f8      	str	r0, [r7, #12]
    161a:	60b9      	str	r1, [r7, #8]
    161c:	607a      	str	r2, [r7, #4]
    161e:	4b18      	ldr	r3, [pc, #96]	; (1680 <flash_write_block+0x6e>)
    1620:	681b      	ldr	r3, [r3, #0]
    1622:	461a      	mov	r2, r3
    1624:	68fb      	ldr	r3, [r7, #12]
    1626:	4293      	cmp	r3, r2
    1628:	d201      	bcs.n	162e <flash_write_block+0x1c>
    162a:	2300      	movs	r3, #0
    162c:	e023      	b.n	1676 <flash_write_block+0x64>
    162e:	f7ff fdcd 	bl	11cc <flash_enable>
    1632:	4603      	mov	r3, r0
    1634:	2b00      	cmp	r3, #0
    1636:	d101      	bne.n	163c <flash_write_block+0x2a>
    1638:	2300      	movs	r3, #0
    163a:	e01c      	b.n	1676 <flash_write_block+0x64>
    163c:	2300      	movs	r3, #0
    163e:	617b      	str	r3, [r7, #20]
    1640:	e012      	b.n	1668 <flash_write_block+0x56>
    1642:	68fa      	ldr	r2, [r7, #12]
    1644:	1c53      	adds	r3, r2, #1
    1646:	60fb      	str	r3, [r7, #12]
    1648:	68bb      	ldr	r3, [r7, #8]
    164a:	1c59      	adds	r1, r3, #1
    164c:	60b9      	str	r1, [r7, #8]
    164e:	781b      	ldrb	r3, [r3, #0]
    1650:	4619      	mov	r1, r3
    1652:	4610      	mov	r0, r2
    1654:	f7ff ff88 	bl	1568 <flash_write_byte>
    1658:	4603      	mov	r3, r0
    165a:	2b00      	cmp	r3, #0
    165c:	d101      	bne.n	1662 <flash_write_block+0x50>
    165e:	2300      	movs	r3, #0
    1660:	e009      	b.n	1676 <flash_write_block+0x64>
    1662:	697b      	ldr	r3, [r7, #20]
    1664:	3301      	adds	r3, #1
    1666:	617b      	str	r3, [r7, #20]
    1668:	697a      	ldr	r2, [r7, #20]
    166a:	687b      	ldr	r3, [r7, #4]
    166c:	429a      	cmp	r2, r3
    166e:	dbe8      	blt.n	1642 <flash_write_block+0x30>
    1670:	f7ff ff66 	bl	1540 <flash_disable>
    1674:	2301      	movs	r3, #1
    1676:	4618      	mov	r0, r3
    1678:	3718      	adds	r7, #24
    167a:	46bd      	mov	sp, r7
    167c:	bd80      	pop	{r7, pc}
    167e:	bf00      	nop
    1680:	00005c00 	.word	0x00005c00

00001684 <btn_idx>:
    1684:	b480      	push	{r7}
    1686:	b085      	sub	sp, #20
    1688:	af00      	add	r7, sp, #0
    168a:	4603      	mov	r3, r0
    168c:	71fb      	strb	r3, [r7, #7]
    168e:	2300      	movs	r3, #0
    1690:	73fb      	strb	r3, [r7, #15]
    1692:	79fb      	ldrb	r3, [r7, #7]
    1694:	085b      	lsrs	r3, r3, #1
    1696:	71fb      	strb	r3, [r7, #7]
    1698:	e005      	b.n	16a6 <btn_idx+0x22>
    169a:	7bfb      	ldrb	r3, [r7, #15]
    169c:	3301      	adds	r3, #1
    169e:	73fb      	strb	r3, [r7, #15]
    16a0:	79fb      	ldrb	r3, [r7, #7]
    16a2:	085b      	lsrs	r3, r3, #1
    16a4:	71fb      	strb	r3, [r7, #7]
    16a6:	79fb      	ldrb	r3, [r7, #7]
    16a8:	2b00      	cmp	r3, #0
    16aa:	d1f6      	bne.n	169a <btn_idx+0x16>
    16ac:	7bfb      	ldrb	r3, [r7, #15]
    16ae:	4618      	mov	r0, r3
    16b0:	3714      	adds	r7, #20
    16b2:	46bd      	mov	sp, r7
    16b4:	bc80      	pop	{r7}
    16b6:	4770      	bx	lr

000016b8 <btn_mask>:
    16b8:	b480      	push	{r7}
    16ba:	b085      	sub	sp, #20
    16bc:	af00      	add	r7, sp, #0
    16be:	4603      	mov	r3, r0
    16c0:	71fb      	strb	r3, [r7, #7]
    16c2:	2300      	movs	r3, #0
    16c4:	60fb      	str	r3, [r7, #12]
    16c6:	e00f      	b.n	16e8 <btn_mask+0x30>
    16c8:	4a0c      	ldr	r2, [pc, #48]	; (16fc <btn_mask+0x44>)
    16ca:	68fb      	ldr	r3, [r7, #12]
    16cc:	4413      	add	r3, r2
    16ce:	781b      	ldrb	r3, [r3, #0]
    16d0:	79fa      	ldrb	r2, [r7, #7]
    16d2:	429a      	cmp	r2, r3
    16d4:	d105      	bne.n	16e2 <btn_mask+0x2a>
    16d6:	2201      	movs	r2, #1
    16d8:	68fb      	ldr	r3, [r7, #12]
    16da:	fa02 f303 	lsl.w	r3, r2, r3
    16de:	b2db      	uxtb	r3, r3
    16e0:	e006      	b.n	16f0 <btn_mask+0x38>
    16e2:	68fb      	ldr	r3, [r7, #12]
    16e4:	3301      	adds	r3, #1
    16e6:	60fb      	str	r3, [r7, #12]
    16e8:	68fb      	ldr	r3, [r7, #12]
    16ea:	2b07      	cmp	r3, #7
    16ec:	ddec      	ble.n	16c8 <btn_mask+0x10>
    16ee:	23ff      	movs	r3, #255	; 0xff
    16f0:	4618      	mov	r0, r3
    16f2:	3714      	adds	r7, #20
    16f4:	46bd      	mov	sp, r7
    16f6:	bc80      	pop	{r7}
    16f8:	4770      	bx	lr
    16fa:	bf00      	nop
    16fc:	20000600 	.word	0x20000600

00001700 <set_keymap>:
    1700:	b480      	push	{r7}
    1702:	b085      	sub	sp, #20
    1704:	af00      	add	r7, sp, #0
    1706:	6078      	str	r0, [r7, #4]
    1708:	2300      	movs	r3, #0
    170a:	60fb      	str	r3, [r7, #12]
    170c:	e00b      	b.n	1726 <set_keymap+0x26>
    170e:	68fb      	ldr	r3, [r7, #12]
    1710:	687a      	ldr	r2, [r7, #4]
    1712:	4413      	add	r3, r2
    1714:	7819      	ldrb	r1, [r3, #0]
    1716:	4a08      	ldr	r2, [pc, #32]	; (1738 <set_keymap+0x38>)
    1718:	68fb      	ldr	r3, [r7, #12]
    171a:	4413      	add	r3, r2
    171c:	460a      	mov	r2, r1
    171e:	701a      	strb	r2, [r3, #0]
    1720:	68fb      	ldr	r3, [r7, #12]
    1722:	3301      	adds	r3, #1
    1724:	60fb      	str	r3, [r7, #12]
    1726:	68fb      	ldr	r3, [r7, #12]
    1728:	2b07      	cmp	r3, #7
    172a:	ddf0      	ble.n	170e <set_keymap+0xe>
    172c:	bf00      	nop
    172e:	3714      	adds	r7, #20
    1730:	46bd      	mov	sp, r7
    1732:	bc80      	pop	{r7}
    1734:	4770      	bx	lr
    1736:	bf00      	nop
    1738:	20000600 	.word	0x20000600

0000173c <gamepad_init>:
    173c:	b580      	push	{r7, lr}
    173e:	af00      	add	r7, sp, #0
    1740:	2202      	movs	r2, #2
    1742:	210f      	movs	r1, #15
    1744:	480a      	ldr	r0, [pc, #40]	; (1770 <gamepad_init+0x34>)
    1746:	f000 fb69 	bl	1e1c <config_pin>
    174a:	2202      	movs	r2, #2
    174c:	210d      	movs	r1, #13
    174e:	4808      	ldr	r0, [pc, #32]	; (1770 <gamepad_init+0x34>)
    1750:	f000 fb64 	bl	1e1c <config_pin>
    1754:	2208      	movs	r2, #8
    1756:	210e      	movs	r1, #14
    1758:	4805      	ldr	r0, [pc, #20]	; (1770 <gamepad_init+0x34>)
    175a:	f000 fb5f 	bl	1e1c <config_pin>
    175e:	4b05      	ldr	r3, [pc, #20]	; (1774 <gamepad_init+0x38>)
    1760:	22ff      	movs	r2, #255	; 0xff
    1762:	701a      	strb	r2, [r3, #0]
    1764:	4804      	ldr	r0, [pc, #16]	; (1778 <gamepad_init+0x3c>)
    1766:	f7ff ffcb 	bl	1700 <set_keymap>
    176a:	bf00      	nop
    176c:	bd80      	pop	{r7, pc}
    176e:	bf00      	nop
    1770:	40010c00 	.word	0x40010c00
    1774:	20002628 	.word	0x20002628
    1778:	00005664 	.word	0x00005664

0000177c <shift_out>:
    177c:	b480      	push	{r7}
    177e:	b085      	sub	sp, #20
    1780:	af00      	add	r7, sp, #0
    1782:	4603      	mov	r3, r0
    1784:	71fb      	strb	r3, [r7, #7]
    1786:	2301      	movs	r3, #1
    1788:	73fb      	strb	r3, [r7, #15]
    178a:	2300      	movs	r3, #0
    178c:	73bb      	strb	r3, [r7, #14]
    178e:	e033      	b.n	17f8 <shift_out+0x7c>
    1790:	79fa      	ldrb	r2, [r7, #7]
    1792:	7bfb      	ldrb	r3, [r7, #15]
    1794:	4013      	ands	r3, r2
    1796:	b2db      	uxtb	r3, r3
    1798:	2b00      	cmp	r3, #0
    179a:	d006      	beq.n	17aa <shift_out+0x2e>
    179c:	4a25      	ldr	r2, [pc, #148]	; (1834 <shift_out+0xb8>)
    179e:	4b25      	ldr	r3, [pc, #148]	; (1834 <shift_out+0xb8>)
    17a0:	68db      	ldr	r3, [r3, #12]
    17a2:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    17a6:	60d3      	str	r3, [r2, #12]
    17a8:	e005      	b.n	17b6 <shift_out+0x3a>
    17aa:	4a22      	ldr	r2, [pc, #136]	; (1834 <shift_out+0xb8>)
    17ac:	4b21      	ldr	r3, [pc, #132]	; (1834 <shift_out+0xb8>)
    17ae:	68db      	ldr	r3, [r3, #12]
    17b0:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    17b4:	60d3      	str	r3, [r2, #12]
    17b6:	4a1f      	ldr	r2, [pc, #124]	; (1834 <shift_out+0xb8>)
    17b8:	4b1e      	ldr	r3, [pc, #120]	; (1834 <shift_out+0xb8>)
    17ba:	68db      	ldr	r3, [r3, #12]
    17bc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    17c0:	60d3      	str	r3, [r2, #12]
    17c2:	bf00      	nop
    17c4:	bf00      	nop
    17c6:	bf00      	nop
    17c8:	4a1a      	ldr	r2, [pc, #104]	; (1834 <shift_out+0xb8>)
    17ca:	4b1a      	ldr	r3, [pc, #104]	; (1834 <shift_out+0xb8>)
    17cc:	68db      	ldr	r3, [r3, #12]
    17ce:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    17d2:	60d3      	str	r3, [r2, #12]
    17d4:	7bbb      	ldrb	r3, [r7, #14]
    17d6:	085b      	lsrs	r3, r3, #1
    17d8:	73bb      	strb	r3, [r7, #14]
    17da:	4a16      	ldr	r2, [pc, #88]	; (1834 <shift_out+0xb8>)
    17dc:	4b15      	ldr	r3, [pc, #84]	; (1834 <shift_out+0xb8>)
    17de:	689b      	ldr	r3, [r3, #8]
    17e0:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    17e4:	6093      	str	r3, [r2, #8]
    17e6:	2b00      	cmp	r3, #0
    17e8:	d003      	beq.n	17f2 <shift_out+0x76>
    17ea:	7bbb      	ldrb	r3, [r7, #14]
    17ec:	f063 037f 	orn	r3, r3, #127	; 0x7f
    17f0:	73bb      	strb	r3, [r7, #14]
    17f2:	7bfb      	ldrb	r3, [r7, #15]
    17f4:	005b      	lsls	r3, r3, #1
    17f6:	73fb      	strb	r3, [r7, #15]
    17f8:	7bfb      	ldrb	r3, [r7, #15]
    17fa:	2b00      	cmp	r3, #0
    17fc:	d1c8      	bne.n	1790 <shift_out+0x14>
    17fe:	4a0d      	ldr	r2, [pc, #52]	; (1834 <shift_out+0xb8>)
    1800:	4b0c      	ldr	r3, [pc, #48]	; (1834 <shift_out+0xb8>)
    1802:	68db      	ldr	r3, [r3, #12]
    1804:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    1808:	60d3      	str	r3, [r2, #12]
    180a:	4a0a      	ldr	r2, [pc, #40]	; (1834 <shift_out+0xb8>)
    180c:	4b09      	ldr	r3, [pc, #36]	; (1834 <shift_out+0xb8>)
    180e:	68db      	ldr	r3, [r3, #12]
    1810:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1814:	60d3      	str	r3, [r2, #12]
    1816:	bf00      	nop
    1818:	bf00      	nop
    181a:	bf00      	nop
    181c:	4a05      	ldr	r2, [pc, #20]	; (1834 <shift_out+0xb8>)
    181e:	4b05      	ldr	r3, [pc, #20]	; (1834 <shift_out+0xb8>)
    1820:	68db      	ldr	r3, [r3, #12]
    1822:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1826:	60d3      	str	r3, [r2, #12]
    1828:	7bbb      	ldrb	r3, [r7, #14]
    182a:	4618      	mov	r0, r3
    182c:	3714      	adds	r7, #20
    182e:	46bd      	mov	sp, r7
    1830:	bc80      	pop	{r7}
    1832:	4770      	bx	lr
    1834:	40010c00 	.word	0x40010c00

00001838 <read_gamepad>:
    1838:	b580      	push	{r7, lr}
    183a:	af00      	add	r7, sp, #0
    183c:	20fe      	movs	r0, #254	; 0xfe
    183e:	f7ff ff9d 	bl	177c <shift_out>
    1842:	4603      	mov	r3, r0
    1844:	461a      	mov	r2, r3
    1846:	4b02      	ldr	r3, [pc, #8]	; (1850 <read_gamepad+0x18>)
    1848:	701a      	strb	r2, [r3, #0]
    184a:	bf00      	nop
    184c:	bd80      	pop	{r7, pc}
    184e:	bf00      	nop
    1850:	20002628 	.word	0x20002628

00001854 <btn_query_down>:
    1854:	b580      	push	{r7, lr}
    1856:	b084      	sub	sp, #16
    1858:	af00      	add	r7, sp, #0
    185a:	4603      	mov	r3, r0
    185c:	71fb      	strb	r3, [r7, #7]
    185e:	79fb      	ldrb	r3, [r7, #7]
    1860:	4618      	mov	r0, r3
    1862:	f7ff ff29 	bl	16b8 <btn_mask>
    1866:	4603      	mov	r3, r0
    1868:	73fb      	strb	r3, [r7, #15]
    186a:	4b07      	ldr	r3, [pc, #28]	; (1888 <btn_query_down+0x34>)
    186c:	781b      	ldrb	r3, [r3, #0]
    186e:	b2da      	uxtb	r2, r3
    1870:	7bfb      	ldrb	r3, [r7, #15]
    1872:	4013      	ands	r3, r2
    1874:	b2db      	uxtb	r3, r3
    1876:	2b00      	cmp	r3, #0
    1878:	bf0c      	ite	eq
    187a:	2301      	moveq	r3, #1
    187c:	2300      	movne	r3, #0
    187e:	b2db      	uxtb	r3, r3
    1880:	4618      	mov	r0, r3
    1882:	3710      	adds	r7, #16
    1884:	46bd      	mov	sp, r7
    1886:	bd80      	pop	{r7, pc}
    1888:	20002628 	.word	0x20002628

0000188c <btn_wait_down>:
    188c:	b580      	push	{r7, lr}
    188e:	b084      	sub	sp, #16
    1890:	af00      	add	r7, sp, #0
    1892:	4603      	mov	r3, r0
    1894:	71fb      	strb	r3, [r7, #7]
    1896:	79fb      	ldrb	r3, [r7, #7]
    1898:	4618      	mov	r0, r3
    189a:	f7ff ff0d 	bl	16b8 <btn_mask>
    189e:	4603      	mov	r3, r0
    18a0:	72fb      	strb	r3, [r7, #11]
    18a2:	2300      	movs	r3, #0
    18a4:	60fb      	str	r3, [r7, #12]
    18a6:	e00f      	b.n	18c8 <btn_wait_down+0x3c>
    18a8:	f003 fbc4 	bl	5034 <frame_sync>
    18ac:	4b0a      	ldr	r3, [pc, #40]	; (18d8 <btn_wait_down+0x4c>)
    18ae:	781b      	ldrb	r3, [r3, #0]
    18b0:	b2da      	uxtb	r2, r3
    18b2:	7afb      	ldrb	r3, [r7, #11]
    18b4:	4013      	ands	r3, r2
    18b6:	b2db      	uxtb	r3, r3
    18b8:	2b00      	cmp	r3, #0
    18ba:	d103      	bne.n	18c4 <btn_wait_down+0x38>
    18bc:	68fb      	ldr	r3, [r7, #12]
    18be:	3301      	adds	r3, #1
    18c0:	60fb      	str	r3, [r7, #12]
    18c2:	e001      	b.n	18c8 <btn_wait_down+0x3c>
    18c4:	2300      	movs	r3, #0
    18c6:	60fb      	str	r3, [r7, #12]
    18c8:	68fb      	ldr	r3, [r7, #12]
    18ca:	2b02      	cmp	r3, #2
    18cc:	ddec      	ble.n	18a8 <btn_wait_down+0x1c>
    18ce:	bf00      	nop
    18d0:	3710      	adds	r7, #16
    18d2:	46bd      	mov	sp, r7
    18d4:	bd80      	pop	{r7, pc}
    18d6:	bf00      	nop
    18d8:	20002628 	.word	0x20002628

000018dc <btn_wait_up>:
    18dc:	b580      	push	{r7, lr}
    18de:	b084      	sub	sp, #16
    18e0:	af00      	add	r7, sp, #0
    18e2:	4603      	mov	r3, r0
    18e4:	71fb      	strb	r3, [r7, #7]
    18e6:	79fb      	ldrb	r3, [r7, #7]
    18e8:	4618      	mov	r0, r3
    18ea:	f7ff fee5 	bl	16b8 <btn_mask>
    18ee:	4603      	mov	r3, r0
    18f0:	72fb      	strb	r3, [r7, #11]
    18f2:	2300      	movs	r3, #0
    18f4:	60fb      	str	r3, [r7, #12]
    18f6:	e00f      	b.n	1918 <btn_wait_up+0x3c>
    18f8:	f003 fb9c 	bl	5034 <frame_sync>
    18fc:	4b0a      	ldr	r3, [pc, #40]	; (1928 <btn_wait_up+0x4c>)
    18fe:	781b      	ldrb	r3, [r3, #0]
    1900:	b2da      	uxtb	r2, r3
    1902:	7afb      	ldrb	r3, [r7, #11]
    1904:	4013      	ands	r3, r2
    1906:	b2db      	uxtb	r3, r3
    1908:	2b00      	cmp	r3, #0
    190a:	d003      	beq.n	1914 <btn_wait_up+0x38>
    190c:	68fb      	ldr	r3, [r7, #12]
    190e:	3301      	adds	r3, #1
    1910:	60fb      	str	r3, [r7, #12]
    1912:	e001      	b.n	1918 <btn_wait_up+0x3c>
    1914:	2300      	movs	r3, #0
    1916:	60fb      	str	r3, [r7, #12]
    1918:	68fb      	ldr	r3, [r7, #12]
    191a:	2b02      	cmp	r3, #2
    191c:	ddec      	ble.n	18f8 <btn_wait_up+0x1c>
    191e:	bf00      	nop
    1920:	3710      	adds	r7, #16
    1922:	46bd      	mov	sp, r7
    1924:	bd80      	pop	{r7, pc}
    1926:	bf00      	nop
    1928:	20002628 	.word	0x20002628

0000192c <btn_wait_any>:
    192c:	b580      	push	{r7, lr}
    192e:	b082      	sub	sp, #8
    1930:	af00      	add	r7, sp, #0
    1932:	4b16      	ldr	r3, [pc, #88]	; (198c <btn_wait_any+0x60>)
    1934:	781b      	ldrb	r3, [r3, #0]
    1936:	71fb      	strb	r3, [r7, #7]
    1938:	2300      	movs	r3, #0
    193a:	603b      	str	r3, [r7, #0]
    193c:	e015      	b.n	196a <btn_wait_any+0x3e>
    193e:	f003 fb79 	bl	5034 <frame_sync>
    1942:	4b12      	ldr	r3, [pc, #72]	; (198c <btn_wait_any+0x60>)
    1944:	781b      	ldrb	r3, [r3, #0]
    1946:	b2db      	uxtb	r3, r3
    1948:	79fa      	ldrb	r2, [r7, #7]
    194a:	429a      	cmp	r2, r3
    194c:	d005      	beq.n	195a <btn_wait_any+0x2e>
    194e:	2300      	movs	r3, #0
    1950:	603b      	str	r3, [r7, #0]
    1952:	4b0e      	ldr	r3, [pc, #56]	; (198c <btn_wait_any+0x60>)
    1954:	781b      	ldrb	r3, [r3, #0]
    1956:	71fb      	strb	r3, [r7, #7]
    1958:	e007      	b.n	196a <btn_wait_any+0x3e>
    195a:	4b0c      	ldr	r3, [pc, #48]	; (198c <btn_wait_any+0x60>)
    195c:	781b      	ldrb	r3, [r3, #0]
    195e:	b2db      	uxtb	r3, r3
    1960:	2bff      	cmp	r3, #255	; 0xff
    1962:	d002      	beq.n	196a <btn_wait_any+0x3e>
    1964:	683b      	ldr	r3, [r7, #0]
    1966:	3301      	adds	r3, #1
    1968:	603b      	str	r3, [r7, #0]
    196a:	683b      	ldr	r3, [r7, #0]
    196c:	2b02      	cmp	r3, #2
    196e:	dde6      	ble.n	193e <btn_wait_any+0x12>
    1970:	79fb      	ldrb	r3, [r7, #7]
    1972:	43db      	mvns	r3, r3
    1974:	b2db      	uxtb	r3, r3
    1976:	4618      	mov	r0, r3
    1978:	f7ff fe84 	bl	1684 <btn_idx>
    197c:	4603      	mov	r3, r0
    197e:	461a      	mov	r2, r3
    1980:	4b03      	ldr	r3, [pc, #12]	; (1990 <btn_wait_any+0x64>)
    1982:	5c9b      	ldrb	r3, [r3, r2]
    1984:	4618      	mov	r0, r3
    1986:	3708      	adds	r7, #8
    1988:	46bd      	mov	sp, r7
    198a:	bd80      	pop	{r7, pc}
    198c:	20002628 	.word	0x20002628
    1990:	20000600 	.word	0x20000600

00001994 <btn_set_value>:
    1994:	b480      	push	{r7}
    1996:	b083      	sub	sp, #12
    1998:	af00      	add	r7, sp, #0
    199a:	4603      	mov	r3, r0
    199c:	460a      	mov	r2, r1
    199e:	71fb      	strb	r3, [r7, #7]
    19a0:	4613      	mov	r3, r2
    19a2:	71bb      	strb	r3, [r7, #6]
    19a4:	79fb      	ldrb	r3, [r7, #7]
    19a6:	4904      	ldr	r1, [pc, #16]	; (19b8 <btn_set_value+0x24>)
    19a8:	79ba      	ldrb	r2, [r7, #6]
    19aa:	54ca      	strb	r2, [r1, r3]
    19ac:	bf00      	nop
    19ae:	370c      	adds	r7, #12
    19b0:	46bd      	mov	sp, r7
    19b2:	bc80      	pop	{r7}
    19b4:	4770      	bx	lr
    19b6:	bf00      	nop
    19b8:	20000600 	.word	0x20000600

000019bc <get_keymap>:
    19bc:	b480      	push	{r7}
    19be:	af00      	add	r7, sp, #0
    19c0:	4b02      	ldr	r3, [pc, #8]	; (19cc <get_keymap+0x10>)
    19c2:	4618      	mov	r0, r3
    19c4:	46bd      	mov	sp, r7
    19c6:	bc80      	pop	{r7}
    19c8:	4770      	bx	lr
    19ca:	bf00      	nop
    19cc:	20000600 	.word	0x20000600

000019d0 <games_count>:
    19d0:	b480      	push	{r7}
    19d2:	b083      	sub	sp, #12
    19d4:	af00      	add	r7, sp, #0
    19d6:	2300      	movs	r3, #0
    19d8:	607b      	str	r3, [r7, #4]
    19da:	490b      	ldr	r1, [pc, #44]	; (1a08 <games_count+0x38>)
    19dc:	687a      	ldr	r2, [r7, #4]
    19de:	4613      	mov	r3, r2
    19e0:	00db      	lsls	r3, r3, #3
    19e2:	1a9b      	subs	r3, r3, r2
    19e4:	009b      	lsls	r3, r3, #2
    19e6:	440b      	add	r3, r1
    19e8:	3310      	adds	r3, #16
    19ea:	681b      	ldr	r3, [r3, #0]
    19ec:	2b00      	cmp	r3, #0
    19ee:	d003      	beq.n	19f8 <games_count+0x28>
    19f0:	687b      	ldr	r3, [r7, #4]
    19f2:	3301      	adds	r3, #1
    19f4:	607b      	str	r3, [r7, #4]
    19f6:	e7f0      	b.n	19da <games_count+0xa>
    19f8:	bf00      	nop
    19fa:	687b      	ldr	r3, [r7, #4]
    19fc:	4618      	mov	r0, r3
    19fe:	370c      	adds	r7, #12
    1a00:	46bd      	mov	sp, r7
    1a02:	bc80      	pop	{r7}
    1a04:	4770      	bx	lr
    1a06:	bf00      	nop
    1a08:	20000008 	.word	0x20000008

00001a0c <strcmp>:
    1a0c:	b480      	push	{r7}
    1a0e:	b085      	sub	sp, #20
    1a10:	af00      	add	r7, sp, #0
    1a12:	6078      	str	r0, [r7, #4]
    1a14:	6039      	str	r1, [r7, #0]
    1a16:	2300      	movs	r3, #0
    1a18:	60fb      	str	r3, [r7, #12]
    1a1a:	e018      	b.n	1a4e <strcmp+0x42>
    1a1c:	687b      	ldr	r3, [r7, #4]
    1a1e:	781a      	ldrb	r2, [r3, #0]
    1a20:	683b      	ldr	r3, [r7, #0]
    1a22:	781b      	ldrb	r3, [r3, #0]
    1a24:	429a      	cmp	r2, r3
    1a26:	d203      	bcs.n	1a30 <strcmp+0x24>
    1a28:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1a2c:	60fb      	str	r3, [r7, #12]
    1a2e:	e016      	b.n	1a5e <strcmp+0x52>
    1a30:	687b      	ldr	r3, [r7, #4]
    1a32:	781a      	ldrb	r2, [r3, #0]
    1a34:	683b      	ldr	r3, [r7, #0]
    1a36:	781b      	ldrb	r3, [r3, #0]
    1a38:	429a      	cmp	r2, r3
    1a3a:	d902      	bls.n	1a42 <strcmp+0x36>
    1a3c:	2301      	movs	r3, #1
    1a3e:	60fb      	str	r3, [r7, #12]
    1a40:	e00d      	b.n	1a5e <strcmp+0x52>
    1a42:	687b      	ldr	r3, [r7, #4]
    1a44:	3301      	adds	r3, #1
    1a46:	607b      	str	r3, [r7, #4]
    1a48:	683b      	ldr	r3, [r7, #0]
    1a4a:	3301      	adds	r3, #1
    1a4c:	603b      	str	r3, [r7, #0]
    1a4e:	687b      	ldr	r3, [r7, #4]
    1a50:	781b      	ldrb	r3, [r3, #0]
    1a52:	2b00      	cmp	r3, #0
    1a54:	d003      	beq.n	1a5e <strcmp+0x52>
    1a56:	683b      	ldr	r3, [r7, #0]
    1a58:	781b      	ldrb	r3, [r3, #0]
    1a5a:	2b00      	cmp	r3, #0
    1a5c:	d1de      	bne.n	1a1c <strcmp+0x10>
    1a5e:	68fb      	ldr	r3, [r7, #12]
    1a60:	2b00      	cmp	r3, #0
    1a62:	d115      	bne.n	1a90 <strcmp+0x84>
    1a64:	687b      	ldr	r3, [r7, #4]
    1a66:	781b      	ldrb	r3, [r3, #0]
    1a68:	2b00      	cmp	r3, #0
    1a6a:	d107      	bne.n	1a7c <strcmp+0x70>
    1a6c:	683b      	ldr	r3, [r7, #0]
    1a6e:	781b      	ldrb	r3, [r3, #0]
    1a70:	2b00      	cmp	r3, #0
    1a72:	d003      	beq.n	1a7c <strcmp+0x70>
    1a74:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1a78:	60fb      	str	r3, [r7, #12]
    1a7a:	e009      	b.n	1a90 <strcmp+0x84>
    1a7c:	687b      	ldr	r3, [r7, #4]
    1a7e:	781b      	ldrb	r3, [r3, #0]
    1a80:	2b00      	cmp	r3, #0
    1a82:	d005      	beq.n	1a90 <strcmp+0x84>
    1a84:	683b      	ldr	r3, [r7, #0]
    1a86:	781b      	ldrb	r3, [r3, #0]
    1a88:	2b00      	cmp	r3, #0
    1a8a:	d101      	bne.n	1a90 <strcmp+0x84>
    1a8c:	2301      	movs	r3, #1
    1a8e:	60fb      	str	r3, [r7, #12]
    1a90:	68fb      	ldr	r3, [r7, #12]
    1a92:	4618      	mov	r0, r3
    1a94:	3714      	adds	r7, #20
    1a96:	46bd      	mov	sp, r7
    1a98:	bc80      	pop	{r7}
    1a9a:	4770      	bx	lr

00001a9c <alpha>:
    1a9c:	b480      	push	{r7}
    1a9e:	b083      	sub	sp, #12
    1aa0:	af00      	add	r7, sp, #0
    1aa2:	4603      	mov	r3, r0
    1aa4:	71fb      	strb	r3, [r7, #7]
    1aa6:	79fb      	ldrb	r3, [r7, #7]
    1aa8:	2b60      	cmp	r3, #96	; 0x60
    1aaa:	d902      	bls.n	1ab2 <alpha+0x16>
    1aac:	79fb      	ldrb	r3, [r7, #7]
    1aae:	2b7a      	cmp	r3, #122	; 0x7a
    1ab0:	d905      	bls.n	1abe <alpha+0x22>
    1ab2:	79fb      	ldrb	r3, [r7, #7]
    1ab4:	2b40      	cmp	r3, #64	; 0x40
    1ab6:	d904      	bls.n	1ac2 <alpha+0x26>
    1ab8:	79fb      	ldrb	r3, [r7, #7]
    1aba:	2b5a      	cmp	r3, #90	; 0x5a
    1abc:	d801      	bhi.n	1ac2 <alpha+0x26>
    1abe:	2301      	movs	r3, #1
    1ac0:	e000      	b.n	1ac4 <alpha+0x28>
    1ac2:	2300      	movs	r3, #0
    1ac4:	4618      	mov	r0, r3
    1ac6:	370c      	adds	r7, #12
    1ac8:	46bd      	mov	sp, r7
    1aca:	bc80      	pop	{r7}
    1acc:	4770      	bx	lr

00001ace <digit>:
    1ace:	b480      	push	{r7}
    1ad0:	b083      	sub	sp, #12
    1ad2:	af00      	add	r7, sp, #0
    1ad4:	4603      	mov	r3, r0
    1ad6:	71fb      	strb	r3, [r7, #7]
    1ad8:	79fb      	ldrb	r3, [r7, #7]
    1ada:	2b2f      	cmp	r3, #47	; 0x2f
    1adc:	d904      	bls.n	1ae8 <digit+0x1a>
    1ade:	79fb      	ldrb	r3, [r7, #7]
    1ae0:	2b39      	cmp	r3, #57	; 0x39
    1ae2:	d801      	bhi.n	1ae8 <digit+0x1a>
    1ae4:	2301      	movs	r3, #1
    1ae6:	e000      	b.n	1aea <digit+0x1c>
    1ae8:	2300      	movs	r3, #0
    1aea:	4618      	mov	r0, r3
    1aec:	370c      	adds	r7, #12
    1aee:	46bd      	mov	sp, r7
    1af0:	bc80      	pop	{r7}
    1af2:	4770      	bx	lr

00001af4 <hexdigit>:
    1af4:	b580      	push	{r7, lr}
    1af6:	b082      	sub	sp, #8
    1af8:	af00      	add	r7, sp, #0
    1afa:	4603      	mov	r3, r0
    1afc:	71fb      	strb	r3, [r7, #7]
    1afe:	79fb      	ldrb	r3, [r7, #7]
    1b00:	2b60      	cmp	r3, #96	; 0x60
    1b02:	d902      	bls.n	1b0a <hexdigit+0x16>
    1b04:	79fb      	ldrb	r3, [r7, #7]
    1b06:	3b20      	subs	r3, #32
    1b08:	71fb      	strb	r3, [r7, #7]
    1b0a:	79fb      	ldrb	r3, [r7, #7]
    1b0c:	4618      	mov	r0, r3
    1b0e:	f7ff ffde 	bl	1ace <digit>
    1b12:	4603      	mov	r3, r0
    1b14:	2b00      	cmp	r3, #0
    1b16:	d105      	bne.n	1b24 <hexdigit+0x30>
    1b18:	79fb      	ldrb	r3, [r7, #7]
    1b1a:	2b40      	cmp	r3, #64	; 0x40
    1b1c:	d904      	bls.n	1b28 <hexdigit+0x34>
    1b1e:	79fb      	ldrb	r3, [r7, #7]
    1b20:	2b46      	cmp	r3, #70	; 0x46
    1b22:	d801      	bhi.n	1b28 <hexdigit+0x34>
    1b24:	2301      	movs	r3, #1
    1b26:	e000      	b.n	1b2a <hexdigit+0x36>
    1b28:	2300      	movs	r3, #0
    1b2a:	4618      	mov	r0, r3
    1b2c:	3708      	adds	r7, #8
    1b2e:	46bd      	mov	sp, r7
    1b30:	bd80      	pop	{r7, pc}

00001b32 <atoi>:
    1b32:	b580      	push	{r7, lr}
    1b34:	b086      	sub	sp, #24
    1b36:	af00      	add	r7, sp, #0
    1b38:	6078      	str	r0, [r7, #4]
    1b3a:	2300      	movs	r3, #0
    1b3c:	617b      	str	r3, [r7, #20]
    1b3e:	2301      	movs	r3, #1
    1b40:	613b      	str	r3, [r7, #16]
    1b42:	230a      	movs	r3, #10
    1b44:	60fb      	str	r3, [r7, #12]
    1b46:	e002      	b.n	1b4e <atoi+0x1c>
    1b48:	687b      	ldr	r3, [r7, #4]
    1b4a:	3301      	adds	r3, #1
    1b4c:	607b      	str	r3, [r7, #4]
    1b4e:	687b      	ldr	r3, [r7, #4]
    1b50:	781b      	ldrb	r3, [r3, #0]
    1b52:	2b00      	cmp	r3, #0
    1b54:	d003      	beq.n	1b5e <atoi+0x2c>
    1b56:	687b      	ldr	r3, [r7, #4]
    1b58:	781b      	ldrb	r3, [r3, #0]
    1b5a:	2b20      	cmp	r3, #32
    1b5c:	d0f4      	beq.n	1b48 <atoi+0x16>
    1b5e:	687b      	ldr	r3, [r7, #4]
    1b60:	781b      	ldrb	r3, [r3, #0]
    1b62:	2b2d      	cmp	r3, #45	; 0x2d
    1b64:	d105      	bne.n	1b72 <atoi+0x40>
    1b66:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1b6a:	613b      	str	r3, [r7, #16]
    1b6c:	687b      	ldr	r3, [r7, #4]
    1b6e:	3301      	adds	r3, #1
    1b70:	607b      	str	r3, [r7, #4]
    1b72:	687b      	ldr	r3, [r7, #4]
    1b74:	781b      	ldrb	r3, [r3, #0]
    1b76:	2b24      	cmp	r3, #36	; 0x24
    1b78:	d10e      	bne.n	1b98 <atoi+0x66>
    1b7a:	687b      	ldr	r3, [r7, #4]
    1b7c:	3301      	adds	r3, #1
    1b7e:	781b      	ldrb	r3, [r3, #0]
    1b80:	4618      	mov	r0, r3
    1b82:	f7ff ffb7 	bl	1af4 <hexdigit>
    1b86:	4603      	mov	r3, r0
    1b88:	2b00      	cmp	r3, #0
    1b8a:	d005      	beq.n	1b98 <atoi+0x66>
    1b8c:	2310      	movs	r3, #16
    1b8e:	60fb      	str	r3, [r7, #12]
    1b90:	687b      	ldr	r3, [r7, #4]
    1b92:	3301      	adds	r3, #1
    1b94:	607b      	str	r3, [r7, #4]
    1b96:	e012      	b.n	1bbe <atoi+0x8c>
    1b98:	687b      	ldr	r3, [r7, #4]
    1b9a:	781b      	ldrb	r3, [r3, #0]
    1b9c:	2b30      	cmp	r3, #48	; 0x30
    1b9e:	d128      	bne.n	1bf2 <atoi+0xc0>
    1ba0:	687b      	ldr	r3, [r7, #4]
    1ba2:	3301      	adds	r3, #1
    1ba4:	781b      	ldrb	r3, [r3, #0]
    1ba6:	2b78      	cmp	r3, #120	; 0x78
    1ba8:	d004      	beq.n	1bb4 <atoi+0x82>
    1baa:	687b      	ldr	r3, [r7, #4]
    1bac:	3301      	adds	r3, #1
    1bae:	781b      	ldrb	r3, [r3, #0]
    1bb0:	2b58      	cmp	r3, #88	; 0x58
    1bb2:	d11e      	bne.n	1bf2 <atoi+0xc0>
    1bb4:	2310      	movs	r3, #16
    1bb6:	60fb      	str	r3, [r7, #12]
    1bb8:	687b      	ldr	r3, [r7, #4]
    1bba:	3302      	adds	r3, #2
    1bbc:	607b      	str	r3, [r7, #4]
    1bbe:	e018      	b.n	1bf2 <atoi+0xc0>
    1bc0:	7afb      	ldrb	r3, [r7, #11]
    1bc2:	2b60      	cmp	r3, #96	; 0x60
    1bc4:	d902      	bls.n	1bcc <atoi+0x9a>
    1bc6:	7afb      	ldrb	r3, [r7, #11]
    1bc8:	3b20      	subs	r3, #32
    1bca:	72fb      	strb	r3, [r7, #11]
    1bcc:	7afb      	ldrb	r3, [r7, #11]
    1bce:	3b30      	subs	r3, #48	; 0x30
    1bd0:	72fb      	strb	r3, [r7, #11]
    1bd2:	7afb      	ldrb	r3, [r7, #11]
    1bd4:	2b09      	cmp	r3, #9
    1bd6:	d902      	bls.n	1bde <atoi+0xac>
    1bd8:	7afb      	ldrb	r3, [r7, #11]
    1bda:	3b07      	subs	r3, #7
    1bdc:	72fb      	strb	r3, [r7, #11]
    1bde:	697b      	ldr	r3, [r7, #20]
    1be0:	68fa      	ldr	r2, [r7, #12]
    1be2:	fb02 f203 	mul.w	r2, r2, r3
    1be6:	7afb      	ldrb	r3, [r7, #11]
    1be8:	4413      	add	r3, r2
    1bea:	617b      	str	r3, [r7, #20]
    1bec:	687b      	ldr	r3, [r7, #4]
    1bee:	3301      	adds	r3, #1
    1bf0:	607b      	str	r3, [r7, #4]
    1bf2:	687b      	ldr	r3, [r7, #4]
    1bf4:	781b      	ldrb	r3, [r3, #0]
    1bf6:	72fb      	strb	r3, [r7, #11]
    1bf8:	7afb      	ldrb	r3, [r7, #11]
    1bfa:	2b00      	cmp	r3, #0
    1bfc:	d00d      	beq.n	1c1a <atoi+0xe8>
    1bfe:	68fb      	ldr	r3, [r7, #12]
    1c00:	2b0a      	cmp	r3, #10
    1c02:	d10a      	bne.n	1c1a <atoi+0xe8>
    1c04:	7afb      	ldrb	r3, [r7, #11]
    1c06:	4618      	mov	r0, r3
    1c08:	f7ff ff61 	bl	1ace <digit>
    1c0c:	4603      	mov	r3, r0
    1c0e:	2b00      	cmp	r3, #0
    1c10:	bf14      	ite	ne
    1c12:	2301      	movne	r3, #1
    1c14:	2300      	moveq	r3, #0
    1c16:	b2db      	uxtb	r3, r3
    1c18:	e009      	b.n	1c2e <atoi+0xfc>
    1c1a:	7afb      	ldrb	r3, [r7, #11]
    1c1c:	4618      	mov	r0, r3
    1c1e:	f7ff ff69 	bl	1af4 <hexdigit>
    1c22:	4603      	mov	r3, r0
    1c24:	2b00      	cmp	r3, #0
    1c26:	bf14      	ite	ne
    1c28:	2301      	movne	r3, #1
    1c2a:	2300      	moveq	r3, #0
    1c2c:	b2db      	uxtb	r3, r3
    1c2e:	2b00      	cmp	r3, #0
    1c30:	d1c6      	bne.n	1bc0 <atoi+0x8e>
    1c32:	693b      	ldr	r3, [r7, #16]
    1c34:	697a      	ldr	r2, [r7, #20]
    1c36:	fb02 f303 	mul.w	r3, r2, r3
    1c3a:	4618      	mov	r0, r3
    1c3c:	3718      	adds	r7, #24
    1c3e:	46bd      	mov	sp, r7
    1c40:	bd80      	pop	{r7, pc}

00001c42 <move>:
    1c42:	b480      	push	{r7}
    1c44:	b085      	sub	sp, #20
    1c46:	af00      	add	r7, sp, #0
    1c48:	60f8      	str	r0, [r7, #12]
    1c4a:	60b9      	str	r1, [r7, #8]
    1c4c:	607a      	str	r2, [r7, #4]
    1c4e:	e00a      	b.n	1c66 <move+0x24>
    1c50:	68bb      	ldr	r3, [r7, #8]
    1c52:	1c5a      	adds	r2, r3, #1
    1c54:	60ba      	str	r2, [r7, #8]
    1c56:	68fa      	ldr	r2, [r7, #12]
    1c58:	1c51      	adds	r1, r2, #1
    1c5a:	60f9      	str	r1, [r7, #12]
    1c5c:	7812      	ldrb	r2, [r2, #0]
    1c5e:	701a      	strb	r2, [r3, #0]
    1c60:	687b      	ldr	r3, [r7, #4]
    1c62:	3b01      	subs	r3, #1
    1c64:	607b      	str	r3, [r7, #4]
    1c66:	687b      	ldr	r3, [r7, #4]
    1c68:	2b00      	cmp	r3, #0
    1c6a:	d1f1      	bne.n	1c50 <move+0xe>
    1c6c:	bf00      	nop
    1c6e:	3714      	adds	r7, #20
    1c70:	46bd      	mov	sp, r7
    1c72:	bc80      	pop	{r7}
    1c74:	4770      	bx	lr

00001c76 <strlen>:
    1c76:	b480      	push	{r7}
    1c78:	b085      	sub	sp, #20
    1c7a:	af00      	add	r7, sp, #0
    1c7c:	6078      	str	r0, [r7, #4]
    1c7e:	2300      	movs	r3, #0
    1c80:	60fb      	str	r3, [r7, #12]
    1c82:	e002      	b.n	1c8a <strlen+0x14>
    1c84:	68fb      	ldr	r3, [r7, #12]
    1c86:	3301      	adds	r3, #1
    1c88:	60fb      	str	r3, [r7, #12]
    1c8a:	68fb      	ldr	r3, [r7, #12]
    1c8c:	687a      	ldr	r2, [r7, #4]
    1c8e:	4413      	add	r3, r2
    1c90:	781b      	ldrb	r3, [r3, #0]
    1c92:	2b00      	cmp	r3, #0
    1c94:	d1f6      	bne.n	1c84 <strlen+0xe>
    1c96:	68fb      	ldr	r3, [r7, #12]
    1c98:	4618      	mov	r0, r3
    1c9a:	3714      	adds	r7, #20
    1c9c:	46bd      	mov	sp, r7
    1c9e:	bc80      	pop	{r7}
    1ca0:	4770      	bx	lr

00001ca2 <fill>:
    1ca2:	b480      	push	{r7}
    1ca4:	b087      	sub	sp, #28
    1ca6:	af00      	add	r7, sp, #0
    1ca8:	60f8      	str	r0, [r7, #12]
    1caa:	60b9      	str	r1, [r7, #8]
    1cac:	4613      	mov	r3, r2
    1cae:	71fb      	strb	r3, [r7, #7]
    1cb0:	2300      	movs	r3, #0
    1cb2:	617b      	str	r3, [r7, #20]
    1cb4:	e007      	b.n	1cc6 <fill+0x24>
    1cb6:	68fb      	ldr	r3, [r7, #12]
    1cb8:	1c5a      	adds	r2, r3, #1
    1cba:	60fa      	str	r2, [r7, #12]
    1cbc:	79fa      	ldrb	r2, [r7, #7]
    1cbe:	701a      	strb	r2, [r3, #0]
    1cc0:	697b      	ldr	r3, [r7, #20]
    1cc2:	3301      	adds	r3, #1
    1cc4:	617b      	str	r3, [r7, #20]
    1cc6:	697a      	ldr	r2, [r7, #20]
    1cc8:	68bb      	ldr	r3, [r7, #8]
    1cca:	429a      	cmp	r2, r3
    1ccc:	d3f3      	bcc.n	1cb6 <fill+0x14>
    1cce:	bf00      	nop
    1cd0:	371c      	adds	r7, #28
    1cd2:	46bd      	mov	sp, r7
    1cd4:	bc80      	pop	{r7}
    1cd6:	4770      	bx	lr

00001cd8 <is_lower>:
    1cd8:	b480      	push	{r7}
    1cda:	b083      	sub	sp, #12
    1cdc:	af00      	add	r7, sp, #0
    1cde:	4603      	mov	r3, r0
    1ce0:	71fb      	strb	r3, [r7, #7]
    1ce2:	79fb      	ldrb	r3, [r7, #7]
    1ce4:	2b60      	cmp	r3, #96	; 0x60
    1ce6:	d904      	bls.n	1cf2 <is_lower+0x1a>
    1ce8:	79fb      	ldrb	r3, [r7, #7]
    1cea:	2b7a      	cmp	r3, #122	; 0x7a
    1cec:	d801      	bhi.n	1cf2 <is_lower+0x1a>
    1cee:	2301      	movs	r3, #1
    1cf0:	e000      	b.n	1cf4 <is_lower+0x1c>
    1cf2:	2300      	movs	r3, #0
    1cf4:	4618      	mov	r0, r3
    1cf6:	370c      	adds	r7, #12
    1cf8:	46bd      	mov	sp, r7
    1cfa:	bc80      	pop	{r7}
    1cfc:	4770      	bx	lr

00001cfe <is_upper>:
    1cfe:	b480      	push	{r7}
    1d00:	b083      	sub	sp, #12
    1d02:	af00      	add	r7, sp, #0
    1d04:	4603      	mov	r3, r0
    1d06:	71fb      	strb	r3, [r7, #7]
    1d08:	79fb      	ldrb	r3, [r7, #7]
    1d0a:	2b40      	cmp	r3, #64	; 0x40
    1d0c:	d904      	bls.n	1d18 <is_upper+0x1a>
    1d0e:	79fb      	ldrb	r3, [r7, #7]
    1d10:	2b5a      	cmp	r3, #90	; 0x5a
    1d12:	d801      	bhi.n	1d18 <is_upper+0x1a>
    1d14:	2301      	movs	r3, #1
    1d16:	e000      	b.n	1d1a <is_upper+0x1c>
    1d18:	2300      	movs	r3, #0
    1d1a:	4618      	mov	r0, r3
    1d1c:	370c      	adds	r7, #12
    1d1e:	46bd      	mov	sp, r7
    1d20:	bc80      	pop	{r7}
    1d22:	4770      	bx	lr

00001d24 <uppercase>:
    1d24:	b580      	push	{r7, lr}
    1d26:	b082      	sub	sp, #8
    1d28:	af00      	add	r7, sp, #0
    1d2a:	6078      	str	r0, [r7, #4]
    1d2c:	e010      	b.n	1d50 <uppercase+0x2c>
    1d2e:	687b      	ldr	r3, [r7, #4]
    1d30:	781b      	ldrb	r3, [r3, #0]
    1d32:	4618      	mov	r0, r3
    1d34:	f7ff ffd0 	bl	1cd8 <is_lower>
    1d38:	4603      	mov	r3, r0
    1d3a:	2b00      	cmp	r3, #0
    1d3c:	d005      	beq.n	1d4a <uppercase+0x26>
    1d3e:	687b      	ldr	r3, [r7, #4]
    1d40:	781b      	ldrb	r3, [r3, #0]
    1d42:	3b20      	subs	r3, #32
    1d44:	b2da      	uxtb	r2, r3
    1d46:	687b      	ldr	r3, [r7, #4]
    1d48:	701a      	strb	r2, [r3, #0]
    1d4a:	687b      	ldr	r3, [r7, #4]
    1d4c:	3301      	adds	r3, #1
    1d4e:	607b      	str	r3, [r7, #4]
    1d50:	687b      	ldr	r3, [r7, #4]
    1d52:	781b      	ldrb	r3, [r3, #0]
    1d54:	2b00      	cmp	r3, #0
    1d56:	d1ea      	bne.n	1d2e <uppercase+0xa>
    1d58:	bf00      	nop
    1d5a:	3708      	adds	r7, #8
    1d5c:	46bd      	mov	sp, r7
    1d5e:	bd80      	pop	{r7, pc}

00001d60 <scan>:
    1d60:	b480      	push	{r7}
    1d62:	b085      	sub	sp, #20
    1d64:	af00      	add	r7, sp, #0
    1d66:	60f8      	str	r0, [r7, #12]
    1d68:	60b9      	str	r1, [r7, #8]
    1d6a:	4613      	mov	r3, r2
    1d6c:	71fb      	strb	r3, [r7, #7]
    1d6e:	e002      	b.n	1d76 <scan+0x16>
    1d70:	68bb      	ldr	r3, [r7, #8]
    1d72:	3301      	adds	r3, #1
    1d74:	60bb      	str	r3, [r7, #8]
    1d76:	68bb      	ldr	r3, [r7, #8]
    1d78:	68fa      	ldr	r2, [r7, #12]
    1d7a:	4413      	add	r3, r2
    1d7c:	781b      	ldrb	r3, [r3, #0]
    1d7e:	2b00      	cmp	r3, #0
    1d80:	d006      	beq.n	1d90 <scan+0x30>
    1d82:	68bb      	ldr	r3, [r7, #8]
    1d84:	68fa      	ldr	r2, [r7, #12]
    1d86:	4413      	add	r3, r2
    1d88:	781b      	ldrb	r3, [r3, #0]
    1d8a:	79fa      	ldrb	r2, [r7, #7]
    1d8c:	429a      	cmp	r2, r3
    1d8e:	d1ef      	bne.n	1d70 <scan+0x10>
    1d90:	68bb      	ldr	r3, [r7, #8]
    1d92:	4618      	mov	r0, r3
    1d94:	3714      	adds	r7, #20
    1d96:	46bd      	mov	sp, r7
    1d98:	bc80      	pop	{r7}
    1d9a:	4770      	bx	lr

00001d9c <skip>:
    1d9c:	b480      	push	{r7}
    1d9e:	b085      	sub	sp, #20
    1da0:	af00      	add	r7, sp, #0
    1da2:	60f8      	str	r0, [r7, #12]
    1da4:	60b9      	str	r1, [r7, #8]
    1da6:	4613      	mov	r3, r2
    1da8:	71fb      	strb	r3, [r7, #7]
    1daa:	e002      	b.n	1db2 <skip+0x16>
    1dac:	68bb      	ldr	r3, [r7, #8]
    1dae:	3301      	adds	r3, #1
    1db0:	60bb      	str	r3, [r7, #8]
    1db2:	68bb      	ldr	r3, [r7, #8]
    1db4:	68fa      	ldr	r2, [r7, #12]
    1db6:	4413      	add	r3, r2
    1db8:	781b      	ldrb	r3, [r3, #0]
    1dba:	2b00      	cmp	r3, #0
    1dbc:	d006      	beq.n	1dcc <skip+0x30>
    1dbe:	68bb      	ldr	r3, [r7, #8]
    1dc0:	68fa      	ldr	r2, [r7, #12]
    1dc2:	4413      	add	r3, r2
    1dc4:	781b      	ldrb	r3, [r3, #0]
    1dc6:	79fa      	ldrb	r2, [r7, #7]
    1dc8:	429a      	cmp	r2, r3
    1dca:	d0ef      	beq.n	1dac <skip+0x10>
    1dcc:	68bb      	ldr	r3, [r7, #8]
    1dce:	4618      	mov	r0, r3
    1dd0:	3714      	adds	r7, #20
    1dd2:	46bd      	mov	sp, r7
    1dd4:	bc80      	pop	{r7}
    1dd6:	4770      	bx	lr

00001dd8 <strcat>:
    1dd8:	b580      	push	{r7, lr}
    1dda:	b082      	sub	sp, #8
    1ddc:	af00      	add	r7, sp, #0
    1dde:	6078      	str	r0, [r7, #4]
    1de0:	6039      	str	r1, [r7, #0]
    1de2:	6878      	ldr	r0, [r7, #4]
    1de4:	f7ff ff47 	bl	1c76 <strlen>
    1de8:	4603      	mov	r3, r0
    1dea:	461a      	mov	r2, r3
    1dec:	687b      	ldr	r3, [r7, #4]
    1dee:	4413      	add	r3, r2
    1df0:	607b      	str	r3, [r7, #4]
    1df2:	e007      	b.n	1e04 <strcat+0x2c>
    1df4:	687b      	ldr	r3, [r7, #4]
    1df6:	1c5a      	adds	r2, r3, #1
    1df8:	607a      	str	r2, [r7, #4]
    1dfa:	683a      	ldr	r2, [r7, #0]
    1dfc:	1c51      	adds	r1, r2, #1
    1dfe:	6039      	str	r1, [r7, #0]
    1e00:	7812      	ldrb	r2, [r2, #0]
    1e02:	701a      	strb	r2, [r3, #0]
    1e04:	683b      	ldr	r3, [r7, #0]
    1e06:	781b      	ldrb	r3, [r3, #0]
    1e08:	2b00      	cmp	r3, #0
    1e0a:	d1f3      	bne.n	1df4 <strcat+0x1c>
    1e0c:	687b      	ldr	r3, [r7, #4]
    1e0e:	2200      	movs	r2, #0
    1e10:	701a      	strb	r2, [r3, #0]
    1e12:	687b      	ldr	r3, [r7, #4]
    1e14:	4618      	mov	r0, r3
    1e16:	3708      	adds	r7, #8
    1e18:	46bd      	mov	sp, r7
    1e1a:	bd80      	pop	{r7, pc}

00001e1c <config_pin>:
    1e1c:	b480      	push	{r7}
    1e1e:	b087      	sub	sp, #28
    1e20:	af00      	add	r7, sp, #0
    1e22:	60f8      	str	r0, [r7, #12]
    1e24:	60b9      	str	r1, [r7, #8]
    1e26:	607a      	str	r2, [r7, #4]
    1e28:	68bb      	ldr	r3, [r7, #8]
    1e2a:	b2db      	uxtb	r3, r3
    1e2c:	009b      	lsls	r3, r3, #2
    1e2e:	b2db      	uxtb	r3, r3
    1e30:	f003 031c 	and.w	r3, r3, #28
    1e34:	75fb      	strb	r3, [r7, #23]
    1e36:	68bb      	ldr	r3, [r7, #8]
    1e38:	08da      	lsrs	r2, r3, #3
    1e3a:	68bb      	ldr	r3, [r7, #8]
    1e3c:	08d9      	lsrs	r1, r3, #3
    1e3e:	68fb      	ldr	r3, [r7, #12]
    1e40:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1e44:	7df9      	ldrb	r1, [r7, #23]
    1e46:	200f      	movs	r0, #15
    1e48:	fa00 f101 	lsl.w	r1, r0, r1
    1e4c:	43c9      	mvns	r1, r1
    1e4e:	4019      	ands	r1, r3
    1e50:	68fb      	ldr	r3, [r7, #12]
    1e52:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1e56:	68bb      	ldr	r3, [r7, #8]
    1e58:	08da      	lsrs	r2, r3, #3
    1e5a:	68bb      	ldr	r3, [r7, #8]
    1e5c:	08d9      	lsrs	r1, r3, #3
    1e5e:	68fb      	ldr	r3, [r7, #12]
    1e60:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1e64:	7dfb      	ldrb	r3, [r7, #23]
    1e66:	6878      	ldr	r0, [r7, #4]
    1e68:	fa00 f303 	lsl.w	r3, r0, r3
    1e6c:	4319      	orrs	r1, r3
    1e6e:	68fb      	ldr	r3, [r7, #12]
    1e70:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1e74:	bf00      	nop
    1e76:	371c      	adds	r7, #28
    1e78:	46bd      	mov	sp, r7
    1e7a:	bc80      	pop	{r7}
    1e7c:	4770      	bx	lr

00001e7e <read_pin>:
    1e7e:	b480      	push	{r7}
    1e80:	b083      	sub	sp, #12
    1e82:	af00      	add	r7, sp, #0
    1e84:	6078      	str	r0, [r7, #4]
    1e86:	6039      	str	r1, [r7, #0]
    1e88:	687b      	ldr	r3, [r7, #4]
    1e8a:	689b      	ldr	r3, [r3, #8]
    1e8c:	2101      	movs	r1, #1
    1e8e:	683a      	ldr	r2, [r7, #0]
    1e90:	fa01 f202 	lsl.w	r2, r1, r2
    1e94:	4013      	ands	r3, r2
    1e96:	4618      	mov	r0, r3
    1e98:	370c      	adds	r7, #12
    1e9a:	46bd      	mov	sp, r7
    1e9c:	bc80      	pop	{r7}
    1e9e:	4770      	bx	lr

00001ea0 <write_pin>:
    1ea0:	b480      	push	{r7}
    1ea2:	b085      	sub	sp, #20
    1ea4:	af00      	add	r7, sp, #0
    1ea6:	60f8      	str	r0, [r7, #12]
    1ea8:	60b9      	str	r1, [r7, #8]
    1eaa:	607a      	str	r2, [r7, #4]
    1eac:	687b      	ldr	r3, [r7, #4]
    1eae:	2b00      	cmp	r3, #0
    1eb0:	d009      	beq.n	1ec6 <write_pin+0x26>
    1eb2:	68fb      	ldr	r3, [r7, #12]
    1eb4:	68db      	ldr	r3, [r3, #12]
    1eb6:	2101      	movs	r1, #1
    1eb8:	68ba      	ldr	r2, [r7, #8]
    1eba:	fa01 f202 	lsl.w	r2, r1, r2
    1ebe:	431a      	orrs	r2, r3
    1ec0:	68fb      	ldr	r3, [r7, #12]
    1ec2:	60da      	str	r2, [r3, #12]
    1ec4:	e009      	b.n	1eda <write_pin+0x3a>
    1ec6:	68fb      	ldr	r3, [r7, #12]
    1ec8:	68db      	ldr	r3, [r3, #12]
    1eca:	2101      	movs	r1, #1
    1ecc:	68ba      	ldr	r2, [r7, #8]
    1ece:	fa01 f202 	lsl.w	r2, r1, r2
    1ed2:	43d2      	mvns	r2, r2
    1ed4:	401a      	ands	r2, r3
    1ed6:	68fb      	ldr	r3, [r7, #12]
    1ed8:	60da      	str	r2, [r3, #12]
    1eda:	bf00      	nop
    1edc:	3714      	adds	r7, #20
    1ede:	46bd      	mov	sp, r7
    1ee0:	bc80      	pop	{r7}
    1ee2:	4770      	bx	lr

00001ee4 <toggle_pin>:
    1ee4:	b480      	push	{r7}
    1ee6:	b083      	sub	sp, #12
    1ee8:	af00      	add	r7, sp, #0
    1eea:	6078      	str	r0, [r7, #4]
    1eec:	6039      	str	r1, [r7, #0]
    1eee:	687b      	ldr	r3, [r7, #4]
    1ef0:	68db      	ldr	r3, [r3, #12]
    1ef2:	2101      	movs	r1, #1
    1ef4:	683a      	ldr	r2, [r7, #0]
    1ef6:	fa01 f202 	lsl.w	r2, r1, r2
    1efa:	405a      	eors	r2, r3
    1efc:	687b      	ldr	r3, [r7, #4]
    1efe:	60da      	str	r2, [r3, #12]
    1f00:	bf00      	nop
    1f02:	370c      	adds	r7, #12
    1f04:	46bd      	mov	sp, r7
    1f06:	bc80      	pop	{r7}
    1f08:	4770      	bx	lr
	...

00001f0c <set_palette>:
    1f0c:	b480      	push	{r7}
    1f0e:	b083      	sub	sp, #12
    1f10:	af00      	add	r7, sp, #0
    1f12:	6078      	str	r0, [r7, #4]
    1f14:	687b      	ldr	r3, [r7, #4]
    1f16:	781a      	ldrb	r2, [r3, #0]
    1f18:	4b09      	ldr	r3, [pc, #36]	; (1f40 <set_palette+0x34>)
    1f1a:	701a      	strb	r2, [r3, #0]
    1f1c:	687b      	ldr	r3, [r7, #4]
    1f1e:	785a      	ldrb	r2, [r3, #1]
    1f20:	4b07      	ldr	r3, [pc, #28]	; (1f40 <set_palette+0x34>)
    1f22:	705a      	strb	r2, [r3, #1]
    1f24:	687b      	ldr	r3, [r7, #4]
    1f26:	789a      	ldrb	r2, [r3, #2]
    1f28:	4b05      	ldr	r3, [pc, #20]	; (1f40 <set_palette+0x34>)
    1f2a:	709a      	strb	r2, [r3, #2]
    1f2c:	687b      	ldr	r3, [r7, #4]
    1f2e:	78da      	ldrb	r2, [r3, #3]
    1f30:	4b03      	ldr	r3, [pc, #12]	; (1f40 <set_palette+0x34>)
    1f32:	70da      	strb	r2, [r3, #3]
    1f34:	bf00      	nop
    1f36:	370c      	adds	r7, #12
    1f38:	46bd      	mov	sp, r7
    1f3a:	bc80      	pop	{r7}
    1f3c:	4770      	bx	lr
    1f3e:	bf00      	nop
    1f40:	20000108 	.word	0x20000108

00001f44 <gfx_blit>:
    1f44:	b5f0      	push	{r4, r5, r6, r7, lr}
    1f46:	b087      	sub	sp, #28
    1f48:	af00      	add	r7, sp, #0
    1f4a:	60f8      	str	r0, [r7, #12]
    1f4c:	60b9      	str	r1, [r7, #8]
    1f4e:	4611      	mov	r1, r2
    1f50:	461a      	mov	r2, r3
    1f52:	460b      	mov	r3, r1
    1f54:	71fb      	strb	r3, [r7, #7]
    1f56:	4613      	mov	r3, r2
    1f58:	71bb      	strb	r3, [r7, #6]
    1f5a:	f003 f923 	bl	51a4 <get_video_params>
    1f5e:	6178      	str	r0, [r7, #20]
    1f60:	68fb      	ldr	r3, [r7, #12]
    1f62:	2b00      	cmp	r3, #0
    1f64:	db0e      	blt.n	1f84 <gfx_blit+0x40>
    1f66:	697b      	ldr	r3, [r7, #20]
    1f68:	899b      	ldrh	r3, [r3, #12]
    1f6a:	461a      	mov	r2, r3
    1f6c:	68fb      	ldr	r3, [r7, #12]
    1f6e:	429a      	cmp	r2, r3
    1f70:	dd08      	ble.n	1f84 <gfx_blit+0x40>
    1f72:	68bb      	ldr	r3, [r7, #8]
    1f74:	2b00      	cmp	r3, #0
    1f76:	db05      	blt.n	1f84 <gfx_blit+0x40>
    1f78:	697b      	ldr	r3, [r7, #20]
    1f7a:	89db      	ldrh	r3, [r3, #14]
    1f7c:	461a      	mov	r2, r3
    1f7e:	68bb      	ldr	r3, [r7, #8]
    1f80:	429a      	cmp	r2, r3
    1f82:	dc01      	bgt.n	1f88 <gfx_blit+0x44>
    1f84:	2300      	movs	r3, #0
    1f86:	e04f      	b.n	2028 <gfx_blit+0xe4>
    1f88:	697b      	ldr	r3, [r7, #20]
    1f8a:	7a1b      	ldrb	r3, [r3, #8]
    1f8c:	461a      	mov	r2, r3
    1f8e:	68bb      	ldr	r3, [r7, #8]
    1f90:	fb03 f202 	mul.w	r2, r3, r2
    1f94:	68fb      	ldr	r3, [r7, #12]
    1f96:	0fd9      	lsrs	r1, r3, #31
    1f98:	440b      	add	r3, r1
    1f9a:	105b      	asrs	r3, r3, #1
    1f9c:	18d6      	adds	r6, r2, r3
    1f9e:	79fb      	ldrb	r3, [r7, #7]
    1fa0:	f003 030f 	and.w	r3, r3, #15
    1fa4:	71fb      	strb	r3, [r7, #7]
    1fa6:	25f0      	movs	r5, #240	; 0xf0
    1fa8:	68fb      	ldr	r3, [r7, #12]
    1faa:	f003 0301 	and.w	r3, r3, #1
    1fae:	2b00      	cmp	r3, #0
    1fb0:	d103      	bne.n	1fba <gfx_blit+0x76>
    1fb2:	79fb      	ldrb	r3, [r7, #7]
    1fb4:	011b      	lsls	r3, r3, #4
    1fb6:	71fb      	strb	r3, [r7, #7]
    1fb8:	250f      	movs	r5, #15
    1fba:	4b1d      	ldr	r3, [pc, #116]	; (2030 <gfx_blit+0xec>)
    1fbc:	5d9c      	ldrb	r4, [r3, r6]
    1fbe:	79bb      	ldrb	r3, [r7, #6]
    1fc0:	2b04      	cmp	r3, #4
    1fc2:	d828      	bhi.n	2016 <gfx_blit+0xd2>
    1fc4:	a201      	add	r2, pc, #4	; (adr r2, 1fcc <gfx_blit+0x88>)
    1fc6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1fca:	bf00      	nop
    1fcc:	00001fe1 	.word	0x00001fe1
    1fd0:	00001fe9 	.word	0x00001fe9
    1fd4:	00001ff1 	.word	0x00001ff1
    1fd8:	00001ff9 	.word	0x00001ff9
    1fdc:	00002009 	.word	0x00002009
    1fe0:	79fb      	ldrb	r3, [r7, #7]
    1fe2:	4323      	orrs	r3, r4
    1fe4:	b2dc      	uxtb	r4, r3
    1fe6:	e016      	b.n	2016 <gfx_blit+0xd2>
    1fe8:	79fb      	ldrb	r3, [r7, #7]
    1fea:	4023      	ands	r3, r4
    1fec:	b2dc      	uxtb	r4, r3
    1fee:	e012      	b.n	2016 <gfx_blit+0xd2>
    1ff0:	79fb      	ldrb	r3, [r7, #7]
    1ff2:	4063      	eors	r3, r4
    1ff4:	b2dc      	uxtb	r4, r3
    1ff6:	e00e      	b.n	2016 <gfx_blit+0xd2>
    1ff8:	b26b      	sxtb	r3, r5
    1ffa:	43db      	mvns	r3, r3
    1ffc:	b25a      	sxtb	r2, r3
    1ffe:	b263      	sxtb	r3, r4
    2000:	4053      	eors	r3, r2
    2002:	b25b      	sxtb	r3, r3
    2004:	b2dc      	uxtb	r4, r3
    2006:	e006      	b.n	2016 <gfx_blit+0xd2>
    2008:	ea04 0305 	and.w	r3, r4, r5
    200c:	b2dc      	uxtb	r4, r3
    200e:	79fb      	ldrb	r3, [r7, #7]
    2010:	4323      	orrs	r3, r4
    2012:	b2dc      	uxtb	r4, r3
    2014:	bf00      	nop
    2016:	4b06      	ldr	r3, [pc, #24]	; (2030 <gfx_blit+0xec>)
    2018:	4622      	mov	r2, r4
    201a:	559a      	strb	r2, [r3, r6]
    201c:	ea04 0305 	and.w	r3, r4, r5
    2020:	b2da      	uxtb	r2, r3
    2022:	79fb      	ldrb	r3, [r7, #7]
    2024:	4053      	eors	r3, r2
    2026:	b2db      	uxtb	r3, r3
    2028:	4618      	mov	r0, r3
    202a:	371c      	adds	r7, #28
    202c:	46bd      	mov	sp, r7
    202e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2030:	20002654 	.word	0x20002654

00002034 <gfx_plot>:
    2034:	b5b0      	push	{r4, r5, r7, lr}
    2036:	b086      	sub	sp, #24
    2038:	af00      	add	r7, sp, #0
    203a:	60f8      	str	r0, [r7, #12]
    203c:	60b9      	str	r1, [r7, #8]
    203e:	4613      	mov	r3, r2
    2040:	71fb      	strb	r3, [r7, #7]
    2042:	f003 f8af 	bl	51a4 <get_video_params>
    2046:	6178      	str	r0, [r7, #20]
    2048:	68fb      	ldr	r3, [r7, #12]
    204a:	2b00      	cmp	r3, #0
    204c:	db39      	blt.n	20c2 <gfx_plot+0x8e>
    204e:	697b      	ldr	r3, [r7, #20]
    2050:	899b      	ldrh	r3, [r3, #12]
    2052:	461a      	mov	r2, r3
    2054:	68fb      	ldr	r3, [r7, #12]
    2056:	429a      	cmp	r2, r3
    2058:	dd33      	ble.n	20c2 <gfx_plot+0x8e>
    205a:	68bb      	ldr	r3, [r7, #8]
    205c:	2b00      	cmp	r3, #0
    205e:	db30      	blt.n	20c2 <gfx_plot+0x8e>
    2060:	697b      	ldr	r3, [r7, #20]
    2062:	89db      	ldrh	r3, [r3, #14]
    2064:	461a      	mov	r2, r3
    2066:	68bb      	ldr	r3, [r7, #8]
    2068:	429a      	cmp	r2, r3
    206a:	dd2a      	ble.n	20c2 <gfx_plot+0x8e>
    206c:	697b      	ldr	r3, [r7, #20]
    206e:	7a1b      	ldrb	r3, [r3, #8]
    2070:	461a      	mov	r2, r3
    2072:	68bb      	ldr	r3, [r7, #8]
    2074:	fb03 f202 	mul.w	r2, r3, r2
    2078:	68fb      	ldr	r3, [r7, #12]
    207a:	0fd9      	lsrs	r1, r3, #31
    207c:	440b      	add	r3, r1
    207e:	105b      	asrs	r3, r3, #1
    2080:	18d5      	adds	r5, r2, r3
    2082:	79fb      	ldrb	r3, [r7, #7]
    2084:	f003 030f 	and.w	r3, r3, #15
    2088:	71fb      	strb	r3, [r7, #7]
    208a:	4b10      	ldr	r3, [pc, #64]	; (20cc <gfx_plot+0x98>)
    208c:	5d5c      	ldrb	r4, [r3, r5]
    208e:	68fb      	ldr	r3, [r7, #12]
    2090:	f003 0301 	and.w	r3, r3, #1
    2094:	2b00      	cmp	r3, #0
    2096:	d006      	beq.n	20a6 <gfx_plot+0x72>
    2098:	f024 030f 	bic.w	r3, r4, #15
    209c:	b2dc      	uxtb	r4, r3
    209e:	79fb      	ldrb	r3, [r7, #7]
    20a0:	4323      	orrs	r3, r4
    20a2:	b2dc      	uxtb	r4, r3
    20a4:	e009      	b.n	20ba <gfx_plot+0x86>
    20a6:	f004 030f 	and.w	r3, r4, #15
    20aa:	b2dc      	uxtb	r4, r3
    20ac:	79fb      	ldrb	r3, [r7, #7]
    20ae:	011b      	lsls	r3, r3, #4
    20b0:	b25a      	sxtb	r2, r3
    20b2:	b263      	sxtb	r3, r4
    20b4:	4313      	orrs	r3, r2
    20b6:	b25b      	sxtb	r3, r3
    20b8:	b2dc      	uxtb	r4, r3
    20ba:	4b04      	ldr	r3, [pc, #16]	; (20cc <gfx_plot+0x98>)
    20bc:	4622      	mov	r2, r4
    20be:	555a      	strb	r2, [r3, r5]
    20c0:	e000      	b.n	20c4 <gfx_plot+0x90>
    20c2:	bf00      	nop
    20c4:	3718      	adds	r7, #24
    20c6:	46bd      	mov	sp, r7
    20c8:	bdb0      	pop	{r4, r5, r7, pc}
    20ca:	bf00      	nop
    20cc:	20002654 	.word	0x20002654

000020d0 <gfx_cls>:
    20d0:	b580      	push	{r7, lr}
    20d2:	b082      	sub	sp, #8
    20d4:	af00      	add	r7, sp, #0
    20d6:	f003 f865 	bl	51a4 <get_video_params>
    20da:	6038      	str	r0, [r7, #0]
    20dc:	2300      	movs	r3, #0
    20de:	607b      	str	r3, [r7, #4]
    20e0:	e007      	b.n	20f2 <gfx_cls+0x22>
    20e2:	4a0d      	ldr	r2, [pc, #52]	; (2118 <gfx_cls+0x48>)
    20e4:	687b      	ldr	r3, [r7, #4]
    20e6:	4413      	add	r3, r2
    20e8:	2200      	movs	r2, #0
    20ea:	701a      	strb	r2, [r3, #0]
    20ec:	687b      	ldr	r3, [r7, #4]
    20ee:	3301      	adds	r3, #1
    20f0:	607b      	str	r3, [r7, #4]
    20f2:	683b      	ldr	r3, [r7, #0]
    20f4:	89db      	ldrh	r3, [r3, #14]
    20f6:	461a      	mov	r2, r3
    20f8:	683b      	ldr	r3, [r7, #0]
    20fa:	7a1b      	ldrb	r3, [r3, #8]
    20fc:	fb03 f202 	mul.w	r2, r3, r2
    2100:	687b      	ldr	r3, [r7, #4]
    2102:	429a      	cmp	r2, r3
    2104:	dced      	bgt.n	20e2 <gfx_cls+0x12>
    2106:	2100      	movs	r1, #0
    2108:	2000      	movs	r0, #0
    210a:	f002 fb75 	bl	47f8 <set_cursor>
    210e:	bf00      	nop
    2110:	3708      	adds	r7, #8
    2112:	46bd      	mov	sp, r7
    2114:	bd80      	pop	{r7, pc}
    2116:	bf00      	nop
    2118:	20002654 	.word	0x20002654

0000211c <move_up>:
    211c:	b480      	push	{r7}
    211e:	b085      	sub	sp, #20
    2120:	af00      	add	r7, sp, #0
    2122:	60f8      	str	r0, [r7, #12]
    2124:	60b9      	str	r1, [r7, #8]
    2126:	607a      	str	r2, [r7, #4]
    2128:	e009      	b.n	213e <move_up+0x22>
    212a:	68bb      	ldr	r3, [r7, #8]
    212c:	3b01      	subs	r3, #1
    212e:	60bb      	str	r3, [r7, #8]
    2130:	68fb      	ldr	r3, [r7, #12]
    2132:	3b01      	subs	r3, #1
    2134:	60fb      	str	r3, [r7, #12]
    2136:	68fb      	ldr	r3, [r7, #12]
    2138:	781a      	ldrb	r2, [r3, #0]
    213a:	68bb      	ldr	r3, [r7, #8]
    213c:	701a      	strb	r2, [r3, #0]
    213e:	687b      	ldr	r3, [r7, #4]
    2140:	1e5a      	subs	r2, r3, #1
    2142:	607a      	str	r2, [r7, #4]
    2144:	2b00      	cmp	r3, #0
    2146:	d1f0      	bne.n	212a <move_up+0xe>
    2148:	68bb      	ldr	r3, [r7, #8]
    214a:	4618      	mov	r0, r3
    214c:	3714      	adds	r7, #20
    214e:	46bd      	mov	sp, r7
    2150:	bc80      	pop	{r7}
    2152:	4770      	bx	lr

00002154 <move_down>:
    2154:	b480      	push	{r7}
    2156:	b085      	sub	sp, #20
    2158:	af00      	add	r7, sp, #0
    215a:	60f8      	str	r0, [r7, #12]
    215c:	60b9      	str	r1, [r7, #8]
    215e:	607a      	str	r2, [r7, #4]
    2160:	e007      	b.n	2172 <move_down+0x1e>
    2162:	68bb      	ldr	r3, [r7, #8]
    2164:	1c5a      	adds	r2, r3, #1
    2166:	60ba      	str	r2, [r7, #8]
    2168:	68fa      	ldr	r2, [r7, #12]
    216a:	1c51      	adds	r1, r2, #1
    216c:	60f9      	str	r1, [r7, #12]
    216e:	7812      	ldrb	r2, [r2, #0]
    2170:	701a      	strb	r2, [r3, #0]
    2172:	687b      	ldr	r3, [r7, #4]
    2174:	1e5a      	subs	r2, r3, #1
    2176:	607a      	str	r2, [r7, #4]
    2178:	2b00      	cmp	r3, #0
    217a:	d1f2      	bne.n	2162 <move_down+0xe>
    217c:	68bb      	ldr	r3, [r7, #8]
    217e:	4618      	mov	r0, r3
    2180:	3714      	adds	r7, #20
    2182:	46bd      	mov	sp, r7
    2184:	bc80      	pop	{r7}
    2186:	4770      	bx	lr

00002188 <gfx_scroll_up>:
    2188:	b580      	push	{r7, lr}
    218a:	b086      	sub	sp, #24
    218c:	af00      	add	r7, sp, #0
    218e:	4603      	mov	r3, r0
    2190:	71fb      	strb	r3, [r7, #7]
    2192:	f003 f807 	bl	51a4 <get_video_params>
    2196:	60f8      	str	r0, [r7, #12]
    2198:	79fb      	ldrb	r3, [r7, #7]
    219a:	68fa      	ldr	r2, [r7, #12]
    219c:	7a12      	ldrb	r2, [r2, #8]
    219e:	fb02 f303 	mul.w	r3, r2, r3
    21a2:	4a15      	ldr	r2, [pc, #84]	; (21f8 <gfx_scroll_up+0x70>)
    21a4:	4413      	add	r3, r2
    21a6:	60bb      	str	r3, [r7, #8]
    21a8:	4b13      	ldr	r3, [pc, #76]	; (21f8 <gfx_scroll_up+0x70>)
    21aa:	617b      	str	r3, [r7, #20]
    21ac:	68fb      	ldr	r3, [r7, #12]
    21ae:	89db      	ldrh	r3, [r3, #14]
    21b0:	461a      	mov	r2, r3
    21b2:	79fb      	ldrb	r3, [r7, #7]
    21b4:	1ad3      	subs	r3, r2, r3
    21b6:	68fa      	ldr	r2, [r7, #12]
    21b8:	7a12      	ldrb	r2, [r2, #8]
    21ba:	fb02 f303 	mul.w	r3, r2, r3
    21be:	613b      	str	r3, [r7, #16]
    21c0:	693a      	ldr	r2, [r7, #16]
    21c2:	6979      	ldr	r1, [r7, #20]
    21c4:	68b8      	ldr	r0, [r7, #8]
    21c6:	f7ff ffc5 	bl	2154 <move_down>
    21ca:	6178      	str	r0, [r7, #20]
    21cc:	68fb      	ldr	r3, [r7, #12]
    21ce:	7a1b      	ldrb	r3, [r3, #8]
    21d0:	461a      	mov	r2, r3
    21d2:	79fb      	ldrb	r3, [r7, #7]
    21d4:	fb03 f302 	mul.w	r3, r3, r2
    21d8:	613b      	str	r3, [r7, #16]
    21da:	e004      	b.n	21e6 <gfx_scroll_up+0x5e>
    21dc:	697b      	ldr	r3, [r7, #20]
    21de:	1c5a      	adds	r2, r3, #1
    21e0:	617a      	str	r2, [r7, #20]
    21e2:	2200      	movs	r2, #0
    21e4:	701a      	strb	r2, [r3, #0]
    21e6:	693b      	ldr	r3, [r7, #16]
    21e8:	1e5a      	subs	r2, r3, #1
    21ea:	613a      	str	r2, [r7, #16]
    21ec:	2b00      	cmp	r3, #0
    21ee:	d1f5      	bne.n	21dc <gfx_scroll_up+0x54>
    21f0:	bf00      	nop
    21f2:	3718      	adds	r7, #24
    21f4:	46bd      	mov	sp, r7
    21f6:	bd80      	pop	{r7, pc}
    21f8:	20002654 	.word	0x20002654

000021fc <gfx_scroll_down>:
    21fc:	b580      	push	{r7, lr}
    21fe:	b086      	sub	sp, #24
    2200:	af00      	add	r7, sp, #0
    2202:	4603      	mov	r3, r0
    2204:	71fb      	strb	r3, [r7, #7]
    2206:	f002 ffcd 	bl	51a4 <get_video_params>
    220a:	60f8      	str	r0, [r7, #12]
    220c:	68fb      	ldr	r3, [r7, #12]
    220e:	89db      	ldrh	r3, [r3, #14]
    2210:	461a      	mov	r2, r3
    2212:	79fb      	ldrb	r3, [r7, #7]
    2214:	1ad3      	subs	r3, r2, r3
    2216:	68fa      	ldr	r2, [r7, #12]
    2218:	7a12      	ldrb	r2, [r2, #8]
    221a:	fb02 f303 	mul.w	r3, r2, r3
    221e:	4a1a      	ldr	r2, [pc, #104]	; (2288 <gfx_scroll_down+0x8c>)
    2220:	4413      	add	r3, r2
    2222:	60bb      	str	r3, [r7, #8]
    2224:	68fb      	ldr	r3, [r7, #12]
    2226:	89db      	ldrh	r3, [r3, #14]
    2228:	461a      	mov	r2, r3
    222a:	68fb      	ldr	r3, [r7, #12]
    222c:	7a1b      	ldrb	r3, [r3, #8]
    222e:	fb03 f302 	mul.w	r3, r3, r2
    2232:	4a15      	ldr	r2, [pc, #84]	; (2288 <gfx_scroll_down+0x8c>)
    2234:	4413      	add	r3, r2
    2236:	617b      	str	r3, [r7, #20]
    2238:	68fb      	ldr	r3, [r7, #12]
    223a:	89db      	ldrh	r3, [r3, #14]
    223c:	461a      	mov	r2, r3
    223e:	79fb      	ldrb	r3, [r7, #7]
    2240:	1ad3      	subs	r3, r2, r3
    2242:	68fa      	ldr	r2, [r7, #12]
    2244:	7a12      	ldrb	r2, [r2, #8]
    2246:	fb02 f303 	mul.w	r3, r2, r3
    224a:	613b      	str	r3, [r7, #16]
    224c:	693a      	ldr	r2, [r7, #16]
    224e:	6979      	ldr	r1, [r7, #20]
    2250:	68b8      	ldr	r0, [r7, #8]
    2252:	f7ff ff63 	bl	211c <move_up>
    2256:	6178      	str	r0, [r7, #20]
    2258:	68fb      	ldr	r3, [r7, #12]
    225a:	7a1b      	ldrb	r3, [r3, #8]
    225c:	461a      	mov	r2, r3
    225e:	79fb      	ldrb	r3, [r7, #7]
    2260:	fb03 f302 	mul.w	r3, r3, r2
    2264:	613b      	str	r3, [r7, #16]
    2266:	e005      	b.n	2274 <gfx_scroll_down+0x78>
    2268:	697b      	ldr	r3, [r7, #20]
    226a:	3b01      	subs	r3, #1
    226c:	617b      	str	r3, [r7, #20]
    226e:	697b      	ldr	r3, [r7, #20]
    2270:	2200      	movs	r2, #0
    2272:	701a      	strb	r2, [r3, #0]
    2274:	693b      	ldr	r3, [r7, #16]
    2276:	1e5a      	subs	r2, r3, #1
    2278:	613a      	str	r2, [r7, #16]
    227a:	2b00      	cmp	r3, #0
    227c:	d1f4      	bne.n	2268 <gfx_scroll_down+0x6c>
    227e:	bf00      	nop
    2280:	3718      	adds	r7, #24
    2282:	46bd      	mov	sp, r7
    2284:	bd80      	pop	{r7, pc}
    2286:	bf00      	nop
    2288:	20002654 	.word	0x20002654

0000228c <gfx_scroll_left>:
    228c:	b580      	push	{r7, lr}
    228e:	b088      	sub	sp, #32
    2290:	af00      	add	r7, sp, #0
    2292:	4603      	mov	r3, r0
    2294:	71fb      	strb	r3, [r7, #7]
    2296:	f002 ff85 	bl	51a4 <get_video_params>
    229a:	6138      	str	r0, [r7, #16]
    229c:	2300      	movs	r3, #0
    229e:	61fb      	str	r3, [r7, #28]
    22a0:	e02a      	b.n	22f8 <gfx_scroll_left+0x6c>
    22a2:	693b      	ldr	r3, [r7, #16]
    22a4:	7a1b      	ldrb	r3, [r3, #8]
    22a6:	461a      	mov	r2, r3
    22a8:	69fb      	ldr	r3, [r7, #28]
    22aa:	fb03 f302 	mul.w	r3, r3, r2
    22ae:	4a17      	ldr	r2, [pc, #92]	; (230c <gfx_scroll_left+0x80>)
    22b0:	4413      	add	r3, r2
    22b2:	617b      	str	r3, [r7, #20]
    22b4:	79fb      	ldrb	r3, [r7, #7]
    22b6:	697a      	ldr	r2, [r7, #20]
    22b8:	4413      	add	r3, r2
    22ba:	60fb      	str	r3, [r7, #12]
    22bc:	693b      	ldr	r3, [r7, #16]
    22be:	899b      	ldrh	r3, [r3, #12]
    22c0:	085b      	lsrs	r3, r3, #1
    22c2:	b29b      	uxth	r3, r3
    22c4:	461a      	mov	r2, r3
    22c6:	79fb      	ldrb	r3, [r7, #7]
    22c8:	1ad3      	subs	r3, r2, r3
    22ca:	61bb      	str	r3, [r7, #24]
    22cc:	69ba      	ldr	r2, [r7, #24]
    22ce:	6979      	ldr	r1, [r7, #20]
    22d0:	68f8      	ldr	r0, [r7, #12]
    22d2:	f7ff ff3f 	bl	2154 <move_down>
    22d6:	6178      	str	r0, [r7, #20]
    22d8:	79fb      	ldrb	r3, [r7, #7]
    22da:	61bb      	str	r3, [r7, #24]
    22dc:	e004      	b.n	22e8 <gfx_scroll_left+0x5c>
    22de:	697b      	ldr	r3, [r7, #20]
    22e0:	1c5a      	adds	r2, r3, #1
    22e2:	617a      	str	r2, [r7, #20]
    22e4:	2200      	movs	r2, #0
    22e6:	701a      	strb	r2, [r3, #0]
    22e8:	69bb      	ldr	r3, [r7, #24]
    22ea:	1e5a      	subs	r2, r3, #1
    22ec:	61ba      	str	r2, [r7, #24]
    22ee:	2b00      	cmp	r3, #0
    22f0:	d1f5      	bne.n	22de <gfx_scroll_left+0x52>
    22f2:	69fb      	ldr	r3, [r7, #28]
    22f4:	3301      	adds	r3, #1
    22f6:	61fb      	str	r3, [r7, #28]
    22f8:	693b      	ldr	r3, [r7, #16]
    22fa:	89db      	ldrh	r3, [r3, #14]
    22fc:	461a      	mov	r2, r3
    22fe:	69fb      	ldr	r3, [r7, #28]
    2300:	429a      	cmp	r2, r3
    2302:	dcce      	bgt.n	22a2 <gfx_scroll_left+0x16>
    2304:	bf00      	nop
    2306:	3720      	adds	r7, #32
    2308:	46bd      	mov	sp, r7
    230a:	bd80      	pop	{r7, pc}
    230c:	20002654 	.word	0x20002654

00002310 <gfx_scroll_right>:
    2310:	b580      	push	{r7, lr}
    2312:	b088      	sub	sp, #32
    2314:	af00      	add	r7, sp, #0
    2316:	4603      	mov	r3, r0
    2318:	71fb      	strb	r3, [r7, #7]
    231a:	f002 ff43 	bl	51a4 <get_video_params>
    231e:	6138      	str	r0, [r7, #16]
    2320:	2300      	movs	r3, #0
    2322:	61fb      	str	r3, [r7, #28]
    2324:	e02f      	b.n	2386 <gfx_scroll_right+0x76>
    2326:	693b      	ldr	r3, [r7, #16]
    2328:	7a1b      	ldrb	r3, [r3, #8]
    232a:	461a      	mov	r2, r3
    232c:	69fb      	ldr	r3, [r7, #28]
    232e:	fb03 f302 	mul.w	r3, r3, r2
    2332:	4a1a      	ldr	r2, [pc, #104]	; (239c <gfx_scroll_right+0x8c>)
    2334:	4413      	add	r3, r2
    2336:	693a      	ldr	r2, [r7, #16]
    2338:	7a12      	ldrb	r2, [r2, #8]
    233a:	4413      	add	r3, r2
    233c:	617b      	str	r3, [r7, #20]
    233e:	79fb      	ldrb	r3, [r7, #7]
    2340:	425b      	negs	r3, r3
    2342:	697a      	ldr	r2, [r7, #20]
    2344:	4413      	add	r3, r2
    2346:	60fb      	str	r3, [r7, #12]
    2348:	693b      	ldr	r3, [r7, #16]
    234a:	899b      	ldrh	r3, [r3, #12]
    234c:	085b      	lsrs	r3, r3, #1
    234e:	b29b      	uxth	r3, r3
    2350:	461a      	mov	r2, r3
    2352:	79fb      	ldrb	r3, [r7, #7]
    2354:	1ad3      	subs	r3, r2, r3
    2356:	61bb      	str	r3, [r7, #24]
    2358:	69ba      	ldr	r2, [r7, #24]
    235a:	6979      	ldr	r1, [r7, #20]
    235c:	68f8      	ldr	r0, [r7, #12]
    235e:	f7ff fedd 	bl	211c <move_up>
    2362:	6178      	str	r0, [r7, #20]
    2364:	79fb      	ldrb	r3, [r7, #7]
    2366:	61bb      	str	r3, [r7, #24]
    2368:	e005      	b.n	2376 <gfx_scroll_right+0x66>
    236a:	697b      	ldr	r3, [r7, #20]
    236c:	3b01      	subs	r3, #1
    236e:	617b      	str	r3, [r7, #20]
    2370:	697b      	ldr	r3, [r7, #20]
    2372:	2200      	movs	r2, #0
    2374:	701a      	strb	r2, [r3, #0]
    2376:	69bb      	ldr	r3, [r7, #24]
    2378:	1e5a      	subs	r2, r3, #1
    237a:	61ba      	str	r2, [r7, #24]
    237c:	2b00      	cmp	r3, #0
    237e:	d1f4      	bne.n	236a <gfx_scroll_right+0x5a>
    2380:	69fb      	ldr	r3, [r7, #28]
    2382:	3301      	adds	r3, #1
    2384:	61fb      	str	r3, [r7, #28]
    2386:	693b      	ldr	r3, [r7, #16]
    2388:	89db      	ldrh	r3, [r3, #14]
    238a:	461a      	mov	r2, r3
    238c:	69fb      	ldr	r3, [r7, #28]
    238e:	429a      	cmp	r2, r3
    2390:	dcc9      	bgt.n	2326 <gfx_scroll_right+0x16>
    2392:	bf00      	nop
    2394:	3720      	adds	r7, #32
    2396:	46bd      	mov	sp, r7
    2398:	bd80      	pop	{r7, pc}
    239a:	bf00      	nop
    239c:	20002654 	.word	0x20002654

000023a0 <gfx_get_pixel>:
    23a0:	b590      	push	{r4, r7, lr}
    23a2:	b085      	sub	sp, #20
    23a4:	af00      	add	r7, sp, #0
    23a6:	6078      	str	r0, [r7, #4]
    23a8:	6039      	str	r1, [r7, #0]
    23aa:	f002 fefb 	bl	51a4 <get_video_params>
    23ae:	60f8      	str	r0, [r7, #12]
    23b0:	687b      	ldr	r3, [r7, #4]
    23b2:	2b00      	cmp	r3, #0
    23b4:	db0e      	blt.n	23d4 <gfx_get_pixel+0x34>
    23b6:	68fb      	ldr	r3, [r7, #12]
    23b8:	899b      	ldrh	r3, [r3, #12]
    23ba:	461a      	mov	r2, r3
    23bc:	687b      	ldr	r3, [r7, #4]
    23be:	429a      	cmp	r2, r3
    23c0:	dd08      	ble.n	23d4 <gfx_get_pixel+0x34>
    23c2:	683b      	ldr	r3, [r7, #0]
    23c4:	2b00      	cmp	r3, #0
    23c6:	db05      	blt.n	23d4 <gfx_get_pixel+0x34>
    23c8:	68fb      	ldr	r3, [r7, #12]
    23ca:	89db      	ldrh	r3, [r3, #14]
    23cc:	461a      	mov	r2, r3
    23ce:	683b      	ldr	r3, [r7, #0]
    23d0:	429a      	cmp	r2, r3
    23d2:	dc01      	bgt.n	23d8 <gfx_get_pixel+0x38>
    23d4:	23ff      	movs	r3, #255	; 0xff
    23d6:	e014      	b.n	2402 <gfx_get_pixel+0x62>
    23d8:	68fb      	ldr	r3, [r7, #12]
    23da:	7a1b      	ldrb	r3, [r3, #8]
    23dc:	461a      	mov	r2, r3
    23de:	683b      	ldr	r3, [r7, #0]
    23e0:	fb03 f202 	mul.w	r2, r3, r2
    23e4:	687b      	ldr	r3, [r7, #4]
    23e6:	105b      	asrs	r3, r3, #1
    23e8:	4413      	add	r3, r2
    23ea:	4a08      	ldr	r2, [pc, #32]	; (240c <gfx_get_pixel+0x6c>)
    23ec:	5cd4      	ldrb	r4, [r2, r3]
    23ee:	687b      	ldr	r3, [r7, #4]
    23f0:	f003 0301 	and.w	r3, r3, #1
    23f4:	2b00      	cmp	r3, #0
    23f6:	d101      	bne.n	23fc <gfx_get_pixel+0x5c>
    23f8:	0923      	lsrs	r3, r4, #4
    23fa:	b2dc      	uxtb	r4, r3
    23fc:	f004 030f 	and.w	r3, r4, #15
    2400:	b2db      	uxtb	r3, r3
    2402:	4618      	mov	r0, r3
    2404:	3714      	adds	r7, #20
    2406:	46bd      	mov	sp, r7
    2408:	bd90      	pop	{r4, r7, pc}
    240a:	bf00      	nop
    240c:	20002654 	.word	0x20002654

00002410 <gfx_sprite>:
    2410:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    2414:	b086      	sub	sp, #24
    2416:	af00      	add	r7, sp, #0
    2418:	60f8      	str	r0, [r7, #12]
    241a:	60b9      	str	r1, [r7, #8]
    241c:	4611      	mov	r1, r2
    241e:	461a      	mov	r2, r3
    2420:	460b      	mov	r3, r1
    2422:	71fb      	strb	r3, [r7, #7]
    2424:	4613      	mov	r3, r2
    2426:	71bb      	strb	r3, [r7, #6]
    2428:	2300      	movs	r3, #0
    242a:	617b      	str	r3, [r7, #20]
    242c:	4b34      	ldr	r3, [pc, #208]	; (2500 <gfx_sprite+0xf0>)
    242e:	781b      	ldrb	r3, [r3, #0]
    2430:	461a      	mov	r2, r3
    2432:	4b34      	ldr	r3, [pc, #208]	; (2504 <gfx_sprite+0xf4>)
    2434:	f813 a002 	ldrb.w	sl, [r3, r2]
    2438:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    243a:	1c5a      	adds	r2, r3, #1
    243c:	63ba      	str	r2, [r7, #56]	; 0x38
    243e:	781c      	ldrb	r4, [r3, #0]
    2440:	4b2f      	ldr	r3, [pc, #188]	; (2500 <gfx_sprite+0xf0>)
    2442:	781b      	ldrb	r3, [r3, #0]
    2444:	461a      	mov	r2, r3
    2446:	4b30      	ldr	r3, [pc, #192]	; (2508 <gfx_sprite+0xf8>)
    2448:	f813 8002 	ldrb.w	r8, [r3, r2]
    244c:	4b2c      	ldr	r3, [pc, #176]	; (2500 <gfx_sprite+0xf0>)
    244e:	781b      	ldrb	r3, [r3, #0]
    2450:	461a      	mov	r2, r3
    2452:	2308      	movs	r3, #8
    2454:	fb93 f3f2 	sdiv	r3, r3, r2
    2458:	b2de      	uxtb	r6, r3
    245a:	68bd      	ldr	r5, [r7, #8]
    245c:	e045      	b.n	24ea <gfx_sprite+0xda>
    245e:	68fb      	ldr	r3, [r7, #12]
    2460:	603b      	str	r3, [r7, #0]
    2462:	e03b      	b.n	24dc <gfx_sprite+0xcc>
    2464:	4b26      	ldr	r3, [pc, #152]	; (2500 <gfx_sprite+0xf0>)
    2466:	781b      	ldrb	r3, [r3, #0]
    2468:	2b03      	cmp	r3, #3
    246a:	d80a      	bhi.n	2482 <gfx_sprite+0x72>
    246c:	ea04 0308 	and.w	r3, r4, r8
    2470:	b2db      	uxtb	r3, r3
    2472:	461a      	mov	r2, r3
    2474:	4653      	mov	r3, sl
    2476:	fa42 f303 	asr.w	r3, r2, r3
    247a:	4a24      	ldr	r2, [pc, #144]	; (250c <gfx_sprite+0xfc>)
    247c:	f812 9003 	ldrb.w	r9, [r2, r3]
    2480:	e008      	b.n	2494 <gfx_sprite+0x84>
    2482:	ea04 0308 	and.w	r3, r4, r8
    2486:	b2db      	uxtb	r3, r3
    2488:	461a      	mov	r2, r3
    248a:	4653      	mov	r3, sl
    248c:	fa42 f303 	asr.w	r3, r2, r3
    2490:	fa5f f983 	uxtb.w	r9, r3
    2494:	2302      	movs	r3, #2
    2496:	464a      	mov	r2, r9
    2498:	4629      	mov	r1, r5
    249a:	6838      	ldr	r0, [r7, #0]
    249c:	f7ff fd52 	bl	1f44 <gfx_blit>
    24a0:	4602      	mov	r2, r0
    24a2:	697b      	ldr	r3, [r7, #20]
    24a4:	4313      	orrs	r3, r2
    24a6:	617b      	str	r3, [r7, #20]
    24a8:	4622      	mov	r2, r4
    24aa:	4653      	mov	r3, sl
    24ac:	f1c3 0308 	rsb	r3, r3, #8
    24b0:	fa02 f303 	lsl.w	r3, r2, r3
    24b4:	b2dc      	uxtb	r4, r3
    24b6:	4633      	mov	r3, r6
    24b8:	3b01      	subs	r3, #1
    24ba:	b2de      	uxtb	r6, r3
    24bc:	2e00      	cmp	r6, #0
    24be:	d10a      	bne.n	24d6 <gfx_sprite+0xc6>
    24c0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    24c2:	1c5a      	adds	r2, r3, #1
    24c4:	63ba      	str	r2, [r7, #56]	; 0x38
    24c6:	781c      	ldrb	r4, [r3, #0]
    24c8:	4b0d      	ldr	r3, [pc, #52]	; (2500 <gfx_sprite+0xf0>)
    24ca:	781b      	ldrb	r3, [r3, #0]
    24cc:	461a      	mov	r2, r3
    24ce:	2308      	movs	r3, #8
    24d0:	fb93 f3f2 	sdiv	r3, r3, r2
    24d4:	b2de      	uxtb	r6, r3
    24d6:	683b      	ldr	r3, [r7, #0]
    24d8:	3301      	adds	r3, #1
    24da:	603b      	str	r3, [r7, #0]
    24dc:	79fa      	ldrb	r2, [r7, #7]
    24de:	68fb      	ldr	r3, [r7, #12]
    24e0:	4413      	add	r3, r2
    24e2:	683a      	ldr	r2, [r7, #0]
    24e4:	4293      	cmp	r3, r2
    24e6:	dcbd      	bgt.n	2464 <gfx_sprite+0x54>
    24e8:	3501      	adds	r5, #1
    24ea:	79ba      	ldrb	r2, [r7, #6]
    24ec:	68bb      	ldr	r3, [r7, #8]
    24ee:	4413      	add	r3, r2
    24f0:	42ab      	cmp	r3, r5
    24f2:	dcb4      	bgt.n	245e <gfx_sprite+0x4e>
    24f4:	697b      	ldr	r3, [r7, #20]
    24f6:	4618      	mov	r0, r3
    24f8:	3718      	adds	r7, #24
    24fa:	46bd      	mov	sp, r7
    24fc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    2500:	20000104 	.word	0x20000104
    2504:	00005674 	.word	0x00005674
    2508:	0000566c 	.word	0x0000566c
    250c:	20000108 	.word	0x20000108

00002510 <set_sysclock>:
    2510:	b480      	push	{r7}
    2512:	af00      	add	r7, sp, #0
    2514:	4a18      	ldr	r2, [pc, #96]	; (2578 <set_sysclock+0x68>)
    2516:	4b18      	ldr	r3, [pc, #96]	; (2578 <set_sysclock+0x68>)
    2518:	681b      	ldr	r3, [r3, #0]
    251a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    251e:	6013      	str	r3, [r2, #0]
    2520:	bf00      	nop
    2522:	4b15      	ldr	r3, [pc, #84]	; (2578 <set_sysclock+0x68>)
    2524:	681b      	ldr	r3, [r3, #0]
    2526:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    252a:	2b00      	cmp	r3, #0
    252c:	d0f9      	beq.n	2522 <set_sysclock+0x12>
    252e:	4a12      	ldr	r2, [pc, #72]	; (2578 <set_sysclock+0x68>)
    2530:	4b11      	ldr	r3, [pc, #68]	; (2578 <set_sysclock+0x68>)
    2532:	685b      	ldr	r3, [r3, #4]
    2534:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    2538:	6053      	str	r3, [r2, #4]
    253a:	4a0f      	ldr	r2, [pc, #60]	; (2578 <set_sysclock+0x68>)
    253c:	4b0e      	ldr	r3, [pc, #56]	; (2578 <set_sysclock+0x68>)
    253e:	681b      	ldr	r3, [r3, #0]
    2540:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    2544:	6013      	str	r3, [r2, #0]
    2546:	bf00      	nop
    2548:	4b0b      	ldr	r3, [pc, #44]	; (2578 <set_sysclock+0x68>)
    254a:	681b      	ldr	r3, [r3, #0]
    254c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    2550:	2b00      	cmp	r3, #0
    2552:	d0f9      	beq.n	2548 <set_sysclock+0x38>
    2554:	4a09      	ldr	r2, [pc, #36]	; (257c <set_sysclock+0x6c>)
    2556:	4b09      	ldr	r3, [pc, #36]	; (257c <set_sysclock+0x6c>)
    2558:	681b      	ldr	r3, [r3, #0]
    255a:	f043 0312 	orr.w	r3, r3, #18
    255e:	6013      	str	r3, [r2, #0]
    2560:	4a05      	ldr	r2, [pc, #20]	; (2578 <set_sysclock+0x68>)
    2562:	4b05      	ldr	r3, [pc, #20]	; (2578 <set_sysclock+0x68>)
    2564:	685b      	ldr	r3, [r3, #4]
    2566:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    256a:	f043 0302 	orr.w	r3, r3, #2
    256e:	6053      	str	r3, [r2, #4]
    2570:	bf00      	nop
    2572:	46bd      	mov	sp, r7
    2574:	bc80      	pop	{r7}
    2576:	4770      	bx	lr
    2578:	40021000 	.word	0x40021000
    257c:	40022000 	.word	0x40022000

00002580 <draw_balls>:
    2580:	b590      	push	{r4, r7, lr}
    2582:	b085      	sub	sp, #20
    2584:	af02      	add	r7, sp, #8
    2586:	f002 fd55 	bl	5034 <frame_sync>
    258a:	2300      	movs	r3, #0
    258c:	607b      	str	r3, [r7, #4]
    258e:	e022      	b.n	25d6 <draw_balls+0x56>
    2590:	4915      	ldr	r1, [pc, #84]	; (25e8 <draw_balls+0x68>)
    2592:	687a      	ldr	r2, [r7, #4]
    2594:	4613      	mov	r3, r2
    2596:	009b      	lsls	r3, r3, #2
    2598:	4413      	add	r3, r2
    259a:	009b      	lsls	r3, r3, #2
    259c:	440b      	add	r3, r1
    259e:	6818      	ldr	r0, [r3, #0]
    25a0:	4911      	ldr	r1, [pc, #68]	; (25e8 <draw_balls+0x68>)
    25a2:	687a      	ldr	r2, [r7, #4]
    25a4:	4613      	mov	r3, r2
    25a6:	009b      	lsls	r3, r3, #2
    25a8:	4413      	add	r3, r2
    25aa:	009b      	lsls	r3, r3, #2
    25ac:	440b      	add	r3, r1
    25ae:	3304      	adds	r3, #4
    25b0:	681c      	ldr	r4, [r3, #0]
    25b2:	490d      	ldr	r1, [pc, #52]	; (25e8 <draw_balls+0x68>)
    25b4:	687a      	ldr	r2, [r7, #4]
    25b6:	4613      	mov	r3, r2
    25b8:	009b      	lsls	r3, r3, #2
    25ba:	4413      	add	r3, r2
    25bc:	009b      	lsls	r3, r3, #2
    25be:	440b      	add	r3, r1
    25c0:	3310      	adds	r3, #16
    25c2:	681b      	ldr	r3, [r3, #0]
    25c4:	9300      	str	r3, [sp, #0]
    25c6:	2308      	movs	r3, #8
    25c8:	2208      	movs	r2, #8
    25ca:	4621      	mov	r1, r4
    25cc:	f7ff ff20 	bl	2410 <gfx_sprite>
    25d0:	687b      	ldr	r3, [r7, #4]
    25d2:	3301      	adds	r3, #1
    25d4:	607b      	str	r3, [r7, #4]
    25d6:	687b      	ldr	r3, [r7, #4]
    25d8:	2b01      	cmp	r3, #1
    25da:	ddd9      	ble.n	2590 <draw_balls+0x10>
    25dc:	f002 fd3a 	bl	5054 <wait_sync_end>
    25e0:	bf00      	nop
    25e2:	370c      	adds	r7, #12
    25e4:	46bd      	mov	sp, r7
    25e6:	bd90      	pop	{r4, r7, pc}
    25e8:	2000262c 	.word	0x2000262c

000025ec <isqrt>:
    25ec:	b580      	push	{r7, lr}
    25ee:	b084      	sub	sp, #16
    25f0:	af00      	add	r7, sp, #0
    25f2:	6078      	str	r0, [r7, #4]
    25f4:	687b      	ldr	r3, [r7, #4]
    25f6:	2b01      	cmp	r3, #1
    25f8:	dc01      	bgt.n	25fe <isqrt+0x12>
    25fa:	687b      	ldr	r3, [r7, #4]
    25fc:	e014      	b.n	2628 <isqrt+0x3c>
    25fe:	687b      	ldr	r3, [r7, #4]
    2600:	109b      	asrs	r3, r3, #2
    2602:	4618      	mov	r0, r3
    2604:	f7ff fff2 	bl	25ec <isqrt>
    2608:	4603      	mov	r3, r0
    260a:	005b      	lsls	r3, r3, #1
    260c:	60fb      	str	r3, [r7, #12]
    260e:	68fb      	ldr	r3, [r7, #12]
    2610:	3301      	adds	r3, #1
    2612:	60bb      	str	r3, [r7, #8]
    2614:	68bb      	ldr	r3, [r7, #8]
    2616:	68ba      	ldr	r2, [r7, #8]
    2618:	fb02 f203 	mul.w	r2, r2, r3
    261c:	687b      	ldr	r3, [r7, #4]
    261e:	429a      	cmp	r2, r3
    2620:	dd01      	ble.n	2626 <isqrt+0x3a>
    2622:	68fb      	ldr	r3, [r7, #12]
    2624:	e000      	b.n	2628 <isqrt+0x3c>
    2626:	68bb      	ldr	r3, [r7, #8]
    2628:	4618      	mov	r0, r3
    262a:	3710      	adds	r7, #16
    262c:	46bd      	mov	sp, r7
    262e:	bd80      	pop	{r7, pc}

00002630 <distance>:
    2630:	b580      	push	{r7, lr}
    2632:	b082      	sub	sp, #8
    2634:	af00      	add	r7, sp, #0
    2636:	6078      	str	r0, [r7, #4]
    2638:	6039      	str	r1, [r7, #0]
    263a:	687b      	ldr	r3, [r7, #4]
    263c:	681b      	ldr	r3, [r3, #0]
    263e:	683a      	ldr	r2, [r7, #0]
    2640:	6812      	ldr	r2, [r2, #0]
    2642:	fb02 f203 	mul.w	r2, r2, r3
    2646:	687b      	ldr	r3, [r7, #4]
    2648:	685b      	ldr	r3, [r3, #4]
    264a:	6839      	ldr	r1, [r7, #0]
    264c:	6849      	ldr	r1, [r1, #4]
    264e:	fb01 f303 	mul.w	r3, r1, r3
    2652:	4413      	add	r3, r2
    2654:	2b00      	cmp	r3, #0
    2656:	bfb8      	it	lt
    2658:	425b      	neglt	r3, r3
    265a:	4618      	mov	r0, r3
    265c:	f7ff ffc6 	bl	25ec <isqrt>
    2660:	4603      	mov	r3, r0
    2662:	4618      	mov	r0, r3
    2664:	3708      	adds	r7, #8
    2666:	46bd      	mov	sp, r7
    2668:	bd80      	pop	{r7, pc}

0000266a <move_balls>:
    266a:	b580      	push	{r7, lr}
    266c:	b082      	sub	sp, #8
    266e:	af00      	add	r7, sp, #0
    2670:	f002 fd98 	bl	51a4 <get_video_params>
    2674:	6038      	str	r0, [r7, #0]
    2676:	2300      	movs	r3, #0
    2678:	607b      	str	r3, [r7, #4]
    267a:	e0c3      	b.n	2804 <move_balls+0x19a>
    267c:	4979      	ldr	r1, [pc, #484]	; (2864 <move_balls+0x1fa>)
    267e:	687a      	ldr	r2, [r7, #4]
    2680:	4613      	mov	r3, r2
    2682:	009b      	lsls	r3, r3, #2
    2684:	4413      	add	r3, r2
    2686:	009b      	lsls	r3, r3, #2
    2688:	440b      	add	r3, r1
    268a:	6819      	ldr	r1, [r3, #0]
    268c:	4875      	ldr	r0, [pc, #468]	; (2864 <move_balls+0x1fa>)
    268e:	687a      	ldr	r2, [r7, #4]
    2690:	4613      	mov	r3, r2
    2692:	009b      	lsls	r3, r3, #2
    2694:	4413      	add	r3, r2
    2696:	009b      	lsls	r3, r3, #2
    2698:	4403      	add	r3, r0
    269a:	3308      	adds	r3, #8
    269c:	681b      	ldr	r3, [r3, #0]
    269e:	4419      	add	r1, r3
    26a0:	4870      	ldr	r0, [pc, #448]	; (2864 <move_balls+0x1fa>)
    26a2:	687a      	ldr	r2, [r7, #4]
    26a4:	4613      	mov	r3, r2
    26a6:	009b      	lsls	r3, r3, #2
    26a8:	4413      	add	r3, r2
    26aa:	009b      	lsls	r3, r3, #2
    26ac:	4403      	add	r3, r0
    26ae:	6019      	str	r1, [r3, #0]
    26b0:	496c      	ldr	r1, [pc, #432]	; (2864 <move_balls+0x1fa>)
    26b2:	687a      	ldr	r2, [r7, #4]
    26b4:	4613      	mov	r3, r2
    26b6:	009b      	lsls	r3, r3, #2
    26b8:	4413      	add	r3, r2
    26ba:	009b      	lsls	r3, r3, #2
    26bc:	440b      	add	r3, r1
    26be:	681b      	ldr	r3, [r3, #0]
    26c0:	f113 0f07 	cmn.w	r3, #7
    26c4:	db0b      	blt.n	26de <move_balls+0x74>
    26c6:	4967      	ldr	r1, [pc, #412]	; (2864 <move_balls+0x1fa>)
    26c8:	687a      	ldr	r2, [r7, #4]
    26ca:	4613      	mov	r3, r2
    26cc:	009b      	lsls	r3, r3, #2
    26ce:	4413      	add	r3, r2
    26d0:	009b      	lsls	r3, r3, #2
    26d2:	440b      	add	r3, r1
    26d4:	681b      	ldr	r3, [r3, #0]
    26d6:	683a      	ldr	r2, [r7, #0]
    26d8:	8992      	ldrh	r2, [r2, #12]
    26da:	4293      	cmp	r3, r2
    26dc:	db2c      	blt.n	2738 <move_balls+0xce>
    26de:	4961      	ldr	r1, [pc, #388]	; (2864 <move_balls+0x1fa>)
    26e0:	687a      	ldr	r2, [r7, #4]
    26e2:	4613      	mov	r3, r2
    26e4:	009b      	lsls	r3, r3, #2
    26e6:	4413      	add	r3, r2
    26e8:	009b      	lsls	r3, r3, #2
    26ea:	440b      	add	r3, r1
    26ec:	3308      	adds	r3, #8
    26ee:	681b      	ldr	r3, [r3, #0]
    26f0:	4259      	negs	r1, r3
    26f2:	485c      	ldr	r0, [pc, #368]	; (2864 <move_balls+0x1fa>)
    26f4:	687a      	ldr	r2, [r7, #4]
    26f6:	4613      	mov	r3, r2
    26f8:	009b      	lsls	r3, r3, #2
    26fa:	4413      	add	r3, r2
    26fc:	009b      	lsls	r3, r3, #2
    26fe:	4403      	add	r3, r0
    2700:	3308      	adds	r3, #8
    2702:	6019      	str	r1, [r3, #0]
    2704:	4957      	ldr	r1, [pc, #348]	; (2864 <move_balls+0x1fa>)
    2706:	687a      	ldr	r2, [r7, #4]
    2708:	4613      	mov	r3, r2
    270a:	009b      	lsls	r3, r3, #2
    270c:	4413      	add	r3, r2
    270e:	009b      	lsls	r3, r3, #2
    2710:	440b      	add	r3, r1
    2712:	6819      	ldr	r1, [r3, #0]
    2714:	4853      	ldr	r0, [pc, #332]	; (2864 <move_balls+0x1fa>)
    2716:	687a      	ldr	r2, [r7, #4]
    2718:	4613      	mov	r3, r2
    271a:	009b      	lsls	r3, r3, #2
    271c:	4413      	add	r3, r2
    271e:	009b      	lsls	r3, r3, #2
    2720:	4403      	add	r3, r0
    2722:	3308      	adds	r3, #8
    2724:	681b      	ldr	r3, [r3, #0]
    2726:	4419      	add	r1, r3
    2728:	484e      	ldr	r0, [pc, #312]	; (2864 <move_balls+0x1fa>)
    272a:	687a      	ldr	r2, [r7, #4]
    272c:	4613      	mov	r3, r2
    272e:	009b      	lsls	r3, r3, #2
    2730:	4413      	add	r3, r2
    2732:	009b      	lsls	r3, r3, #2
    2734:	4403      	add	r3, r0
    2736:	6019      	str	r1, [r3, #0]
    2738:	494a      	ldr	r1, [pc, #296]	; (2864 <move_balls+0x1fa>)
    273a:	687a      	ldr	r2, [r7, #4]
    273c:	4613      	mov	r3, r2
    273e:	009b      	lsls	r3, r3, #2
    2740:	4413      	add	r3, r2
    2742:	009b      	lsls	r3, r3, #2
    2744:	440b      	add	r3, r1
    2746:	3304      	adds	r3, #4
    2748:	6819      	ldr	r1, [r3, #0]
    274a:	4846      	ldr	r0, [pc, #280]	; (2864 <move_balls+0x1fa>)
    274c:	687a      	ldr	r2, [r7, #4]
    274e:	4613      	mov	r3, r2
    2750:	009b      	lsls	r3, r3, #2
    2752:	4413      	add	r3, r2
    2754:	009b      	lsls	r3, r3, #2
    2756:	4403      	add	r3, r0
    2758:	330c      	adds	r3, #12
    275a:	681b      	ldr	r3, [r3, #0]
    275c:	4419      	add	r1, r3
    275e:	4841      	ldr	r0, [pc, #260]	; (2864 <move_balls+0x1fa>)
    2760:	687a      	ldr	r2, [r7, #4]
    2762:	4613      	mov	r3, r2
    2764:	009b      	lsls	r3, r3, #2
    2766:	4413      	add	r3, r2
    2768:	009b      	lsls	r3, r3, #2
    276a:	4403      	add	r3, r0
    276c:	3304      	adds	r3, #4
    276e:	6019      	str	r1, [r3, #0]
    2770:	493c      	ldr	r1, [pc, #240]	; (2864 <move_balls+0x1fa>)
    2772:	687a      	ldr	r2, [r7, #4]
    2774:	4613      	mov	r3, r2
    2776:	009b      	lsls	r3, r3, #2
    2778:	4413      	add	r3, r2
    277a:	009b      	lsls	r3, r3, #2
    277c:	440b      	add	r3, r1
    277e:	3304      	adds	r3, #4
    2780:	681b      	ldr	r3, [r3, #0]
    2782:	2b0f      	cmp	r3, #15
    2784:	dd0c      	ble.n	27a0 <move_balls+0x136>
    2786:	4937      	ldr	r1, [pc, #220]	; (2864 <move_balls+0x1fa>)
    2788:	687a      	ldr	r2, [r7, #4]
    278a:	4613      	mov	r3, r2
    278c:	009b      	lsls	r3, r3, #2
    278e:	4413      	add	r3, r2
    2790:	009b      	lsls	r3, r3, #2
    2792:	440b      	add	r3, r1
    2794:	3304      	adds	r3, #4
    2796:	681b      	ldr	r3, [r3, #0]
    2798:	683a      	ldr	r2, [r7, #0]
    279a:	89d2      	ldrh	r2, [r2, #14]
    279c:	4293      	cmp	r3, r2
    279e:	db2e      	blt.n	27fe <move_balls+0x194>
    27a0:	4930      	ldr	r1, [pc, #192]	; (2864 <move_balls+0x1fa>)
    27a2:	687a      	ldr	r2, [r7, #4]
    27a4:	4613      	mov	r3, r2
    27a6:	009b      	lsls	r3, r3, #2
    27a8:	4413      	add	r3, r2
    27aa:	009b      	lsls	r3, r3, #2
    27ac:	440b      	add	r3, r1
    27ae:	330c      	adds	r3, #12
    27b0:	681b      	ldr	r3, [r3, #0]
    27b2:	4259      	negs	r1, r3
    27b4:	482b      	ldr	r0, [pc, #172]	; (2864 <move_balls+0x1fa>)
    27b6:	687a      	ldr	r2, [r7, #4]
    27b8:	4613      	mov	r3, r2
    27ba:	009b      	lsls	r3, r3, #2
    27bc:	4413      	add	r3, r2
    27be:	009b      	lsls	r3, r3, #2
    27c0:	4403      	add	r3, r0
    27c2:	330c      	adds	r3, #12
    27c4:	6019      	str	r1, [r3, #0]
    27c6:	4927      	ldr	r1, [pc, #156]	; (2864 <move_balls+0x1fa>)
    27c8:	687a      	ldr	r2, [r7, #4]
    27ca:	4613      	mov	r3, r2
    27cc:	009b      	lsls	r3, r3, #2
    27ce:	4413      	add	r3, r2
    27d0:	009b      	lsls	r3, r3, #2
    27d2:	440b      	add	r3, r1
    27d4:	3304      	adds	r3, #4
    27d6:	6819      	ldr	r1, [r3, #0]
    27d8:	4822      	ldr	r0, [pc, #136]	; (2864 <move_balls+0x1fa>)
    27da:	687a      	ldr	r2, [r7, #4]
    27dc:	4613      	mov	r3, r2
    27de:	009b      	lsls	r3, r3, #2
    27e0:	4413      	add	r3, r2
    27e2:	009b      	lsls	r3, r3, #2
    27e4:	4403      	add	r3, r0
    27e6:	330c      	adds	r3, #12
    27e8:	681b      	ldr	r3, [r3, #0]
    27ea:	4419      	add	r1, r3
    27ec:	481d      	ldr	r0, [pc, #116]	; (2864 <move_balls+0x1fa>)
    27ee:	687a      	ldr	r2, [r7, #4]
    27f0:	4613      	mov	r3, r2
    27f2:	009b      	lsls	r3, r3, #2
    27f4:	4413      	add	r3, r2
    27f6:	009b      	lsls	r3, r3, #2
    27f8:	4403      	add	r3, r0
    27fa:	3304      	adds	r3, #4
    27fc:	6019      	str	r1, [r3, #0]
    27fe:	687b      	ldr	r3, [r7, #4]
    2800:	3301      	adds	r3, #1
    2802:	607b      	str	r3, [r7, #4]
    2804:	687b      	ldr	r3, [r7, #4]
    2806:	2b01      	cmp	r3, #1
    2808:	f77f af38 	ble.w	267c <move_balls+0x12>
    280c:	4916      	ldr	r1, [pc, #88]	; (2868 <move_balls+0x1fe>)
    280e:	4815      	ldr	r0, [pc, #84]	; (2864 <move_balls+0x1fa>)
    2810:	f7ff ff0e 	bl	2630 <distance>
    2814:	4603      	mov	r3, r0
    2816:	2b07      	cmp	r3, #7
    2818:	d81f      	bhi.n	285a <move_balls+0x1f0>
    281a:	4b12      	ldr	r3, [pc, #72]	; (2864 <move_balls+0x1fa>)
    281c:	689a      	ldr	r2, [r3, #8]
    281e:	4b11      	ldr	r3, [pc, #68]	; (2864 <move_balls+0x1fa>)
    2820:	69db      	ldr	r3, [r3, #28]
    2822:	429a      	cmp	r2, r3
    2824:	d009      	beq.n	283a <move_balls+0x1d0>
    2826:	4b0f      	ldr	r3, [pc, #60]	; (2864 <move_balls+0x1fa>)
    2828:	689b      	ldr	r3, [r3, #8]
    282a:	607b      	str	r3, [r7, #4]
    282c:	4b0d      	ldr	r3, [pc, #52]	; (2864 <move_balls+0x1fa>)
    282e:	69db      	ldr	r3, [r3, #28]
    2830:	4a0c      	ldr	r2, [pc, #48]	; (2864 <move_balls+0x1fa>)
    2832:	6093      	str	r3, [r2, #8]
    2834:	4a0b      	ldr	r2, [pc, #44]	; (2864 <move_balls+0x1fa>)
    2836:	687b      	ldr	r3, [r7, #4]
    2838:	61d3      	str	r3, [r2, #28]
    283a:	4b0a      	ldr	r3, [pc, #40]	; (2864 <move_balls+0x1fa>)
    283c:	68da      	ldr	r2, [r3, #12]
    283e:	4b09      	ldr	r3, [pc, #36]	; (2864 <move_balls+0x1fa>)
    2840:	6a1b      	ldr	r3, [r3, #32]
    2842:	429a      	cmp	r2, r3
    2844:	d009      	beq.n	285a <move_balls+0x1f0>
    2846:	4b07      	ldr	r3, [pc, #28]	; (2864 <move_balls+0x1fa>)
    2848:	68db      	ldr	r3, [r3, #12]
    284a:	607b      	str	r3, [r7, #4]
    284c:	4b05      	ldr	r3, [pc, #20]	; (2864 <move_balls+0x1fa>)
    284e:	6a1b      	ldr	r3, [r3, #32]
    2850:	4a04      	ldr	r2, [pc, #16]	; (2864 <move_balls+0x1fa>)
    2852:	60d3      	str	r3, [r2, #12]
    2854:	4a03      	ldr	r2, [pc, #12]	; (2864 <move_balls+0x1fa>)
    2856:	687b      	ldr	r3, [r7, #4]
    2858:	6213      	str	r3, [r2, #32]
    285a:	bf00      	nop
    285c:	3708      	adds	r7, #8
    285e:	46bd      	mov	sp, r7
    2860:	bd80      	pop	{r7, pc}
    2862:	bf00      	nop
    2864:	2000262c 	.word	0x2000262c
    2868:	20002640 	.word	0x20002640

0000286c <init_balls>:
    286c:	b580      	push	{r7, lr}
    286e:	b082      	sub	sp, #8
    2870:	af00      	add	r7, sp, #0
    2872:	f002 fc97 	bl	51a4 <get_video_params>
    2876:	6038      	str	r0, [r7, #0]
    2878:	4b33      	ldr	r3, [pc, #204]	; (2948 <init_balls+0xdc>)
    287a:	681b      	ldr	r3, [r3, #0]
    287c:	4618      	mov	r0, r3
    287e:	f7fd fdff 	bl	480 <srand>
    2882:	2300      	movs	r3, #0
    2884:	607b      	str	r3, [r7, #4]
    2886:	e057      	b.n	2938 <init_balls+0xcc>
    2888:	f7fd fe08 	bl	49c <rand>
    288c:	4603      	mov	r3, r0
    288e:	683a      	ldr	r2, [r7, #0]
    2890:	8992      	ldrh	r2, [r2, #12]
    2892:	fb93 f1f2 	sdiv	r1, r3, r2
    2896:	fb02 f201 	mul.w	r2, r2, r1
    289a:	1a99      	subs	r1, r3, r2
    289c:	482b      	ldr	r0, [pc, #172]	; (294c <init_balls+0xe0>)
    289e:	687a      	ldr	r2, [r7, #4]
    28a0:	4613      	mov	r3, r2
    28a2:	009b      	lsls	r3, r3, #2
    28a4:	4413      	add	r3, r2
    28a6:	009b      	lsls	r3, r3, #2
    28a8:	4403      	add	r3, r0
    28aa:	6019      	str	r1, [r3, #0]
    28ac:	f7fd fdf6 	bl	49c <rand>
    28b0:	4602      	mov	r2, r0
    28b2:	683b      	ldr	r3, [r7, #0]
    28b4:	89db      	ldrh	r3, [r3, #14]
    28b6:	3b10      	subs	r3, #16
    28b8:	fb92 f1f3 	sdiv	r1, r2, r3
    28bc:	fb03 f301 	mul.w	r3, r3, r1
    28c0:	1ad3      	subs	r3, r2, r3
    28c2:	f103 0110 	add.w	r1, r3, #16
    28c6:	4821      	ldr	r0, [pc, #132]	; (294c <init_balls+0xe0>)
    28c8:	687a      	ldr	r2, [r7, #4]
    28ca:	4613      	mov	r3, r2
    28cc:	009b      	lsls	r3, r3, #2
    28ce:	4413      	add	r3, r2
    28d0:	009b      	lsls	r3, r3, #2
    28d2:	4403      	add	r3, r0
    28d4:	3304      	adds	r3, #4
    28d6:	6019      	str	r1, [r3, #0]
    28d8:	491c      	ldr	r1, [pc, #112]	; (294c <init_balls+0xe0>)
    28da:	687a      	ldr	r2, [r7, #4]
    28dc:	4613      	mov	r3, r2
    28de:	009b      	lsls	r3, r3, #2
    28e0:	4413      	add	r3, r2
    28e2:	009b      	lsls	r3, r3, #2
    28e4:	440b      	add	r3, r1
    28e6:	3308      	adds	r3, #8
    28e8:	2201      	movs	r2, #1
    28ea:	601a      	str	r2, [r3, #0]
    28ec:	4917      	ldr	r1, [pc, #92]	; (294c <init_balls+0xe0>)
    28ee:	687a      	ldr	r2, [r7, #4]
    28f0:	4613      	mov	r3, r2
    28f2:	009b      	lsls	r3, r3, #2
    28f4:	4413      	add	r3, r2
    28f6:	009b      	lsls	r3, r3, #2
    28f8:	440b      	add	r3, r1
    28fa:	330c      	adds	r3, #12
    28fc:	2201      	movs	r2, #1
    28fe:	601a      	str	r2, [r3, #0]
    2900:	683b      	ldr	r3, [r7, #0]
    2902:	781b      	ldrb	r3, [r3, #0]
    2904:	2b00      	cmp	r3, #0
    2906:	d10a      	bne.n	291e <init_balls+0xb2>
    2908:	4910      	ldr	r1, [pc, #64]	; (294c <init_balls+0xe0>)
    290a:	687a      	ldr	r2, [r7, #4]
    290c:	4613      	mov	r3, r2
    290e:	009b      	lsls	r3, r3, #2
    2910:	4413      	add	r3, r2
    2912:	009b      	lsls	r3, r3, #2
    2914:	440b      	add	r3, r1
    2916:	3310      	adds	r3, #16
    2918:	4a0d      	ldr	r2, [pc, #52]	; (2950 <init_balls+0xe4>)
    291a:	601a      	str	r2, [r3, #0]
    291c:	e009      	b.n	2932 <init_balls+0xc6>
    291e:	490b      	ldr	r1, [pc, #44]	; (294c <init_balls+0xe0>)
    2920:	687a      	ldr	r2, [r7, #4]
    2922:	4613      	mov	r3, r2
    2924:	009b      	lsls	r3, r3, #2
    2926:	4413      	add	r3, r2
    2928:	009b      	lsls	r3, r3, #2
    292a:	440b      	add	r3, r1
    292c:	3310      	adds	r3, #16
    292e:	4a09      	ldr	r2, [pc, #36]	; (2954 <init_balls+0xe8>)
    2930:	601a      	str	r2, [r3, #0]
    2932:	687b      	ldr	r3, [r7, #4]
    2934:	3301      	adds	r3, #1
    2936:	607b      	str	r3, [r7, #4]
    2938:	687b      	ldr	r3, [r7, #4]
    293a:	2b01      	cmp	r3, #1
    293c:	dda4      	ble.n	2888 <init_balls+0x1c>
    293e:	bf00      	nop
    2940:	3708      	adds	r7, #8
    2942:	46bd      	mov	sp, r7
    2944:	bd80      	pop	{r7, pc}
    2946:	bf00      	nop
    2948:	20004db8 	.word	0x20004db8
    294c:	2000262c 	.word	0x2000262c
    2950:	0000567c 	.word	0x0000567c
    2954:	0000569c 	.word	0x0000569c

00002958 <color_bars>:
    2958:	b580      	push	{r7, lr}
    295a:	b084      	sub	sp, #16
    295c:	af00      	add	r7, sp, #0
    295e:	2300      	movs	r3, #0
    2960:	71fb      	strb	r3, [r7, #7]
    2962:	f002 fc1f 	bl	51a4 <get_video_params>
    2966:	6038      	str	r0, [r7, #0]
    2968:	683b      	ldr	r3, [r7, #0]
    296a:	89db      	ldrh	r3, [r3, #14]
    296c:	089b      	lsrs	r3, r3, #2
    296e:	b29b      	uxth	r3, r3
    2970:	461a      	mov	r2, r3
    2972:	4613      	mov	r3, r2
    2974:	005b      	lsls	r3, r3, #1
    2976:	4413      	add	r3, r2
    2978:	60bb      	str	r3, [r7, #8]
    297a:	e01b      	b.n	29b4 <color_bars+0x5c>
    297c:	2310      	movs	r3, #16
    297e:	71fb      	strb	r3, [r7, #7]
    2980:	2300      	movs	r3, #0
    2982:	60fb      	str	r3, [r7, #12]
    2984:	e010      	b.n	29a8 <color_bars+0x50>
    2986:	68fb      	ldr	r3, [r7, #12]
    2988:	f003 0307 	and.w	r3, r3, #7
    298c:	2b00      	cmp	r3, #0
    298e:	d102      	bne.n	2996 <color_bars+0x3e>
    2990:	79fb      	ldrb	r3, [r7, #7]
    2992:	3b01      	subs	r3, #1
    2994:	71fb      	strb	r3, [r7, #7]
    2996:	79fb      	ldrb	r3, [r7, #7]
    2998:	461a      	mov	r2, r3
    299a:	68b9      	ldr	r1, [r7, #8]
    299c:	68f8      	ldr	r0, [r7, #12]
    299e:	f7ff fb49 	bl	2034 <gfx_plot>
    29a2:	68fb      	ldr	r3, [r7, #12]
    29a4:	3301      	adds	r3, #1
    29a6:	60fb      	str	r3, [r7, #12]
    29a8:	68fb      	ldr	r3, [r7, #12]
    29aa:	2b7f      	cmp	r3, #127	; 0x7f
    29ac:	ddeb      	ble.n	2986 <color_bars+0x2e>
    29ae:	68bb      	ldr	r3, [r7, #8]
    29b0:	3301      	adds	r3, #1
    29b2:	60bb      	str	r3, [r7, #8]
    29b4:	683b      	ldr	r3, [r7, #0]
    29b6:	89db      	ldrh	r3, [r3, #14]
    29b8:	461a      	mov	r2, r3
    29ba:	68bb      	ldr	r3, [r7, #8]
    29bc:	429a      	cmp	r2, r3
    29be:	dcdd      	bgt.n	297c <color_bars+0x24>
    29c0:	bf00      	nop
    29c2:	3710      	adds	r7, #16
    29c4:	46bd      	mov	sp, r7
    29c6:	bd80      	pop	{r7, pc}

000029c8 <vertical_bars>:
    29c8:	b580      	push	{r7, lr}
    29ca:	b082      	sub	sp, #8
    29cc:	af00      	add	r7, sp, #0
    29ce:	f002 fbe9 	bl	51a4 <get_video_params>
    29d2:	6038      	str	r0, [r7, #0]
    29d4:	2310      	movs	r3, #16
    29d6:	607b      	str	r3, [r7, #4]
    29d8:	e00f      	b.n	29fa <vertical_bars+0x32>
    29da:	220f      	movs	r2, #15
    29dc:	6879      	ldr	r1, [r7, #4]
    29de:	2000      	movs	r0, #0
    29e0:	f7ff fb28 	bl	2034 <gfx_plot>
    29e4:	683b      	ldr	r3, [r7, #0]
    29e6:	899b      	ldrh	r3, [r3, #12]
    29e8:	3b01      	subs	r3, #1
    29ea:	220f      	movs	r2, #15
    29ec:	6879      	ldr	r1, [r7, #4]
    29ee:	4618      	mov	r0, r3
    29f0:	f7ff fb20 	bl	2034 <gfx_plot>
    29f4:	687b      	ldr	r3, [r7, #4]
    29f6:	3301      	adds	r3, #1
    29f8:	607b      	str	r3, [r7, #4]
    29fa:	683b      	ldr	r3, [r7, #0]
    29fc:	89db      	ldrh	r3, [r3, #14]
    29fe:	461a      	mov	r2, r3
    2a00:	687b      	ldr	r3, [r7, #4]
    2a02:	429a      	cmp	r2, r3
    2a04:	dce9      	bgt.n	29da <vertical_bars+0x12>
    2a06:	bf00      	nop
    2a08:	3708      	adds	r7, #8
    2a0a:	46bd      	mov	sp, r7
    2a0c:	bd80      	pop	{r7, pc}

00002a0e <video_test>:
    2a0e:	b580      	push	{r7, lr}
    2a10:	b082      	sub	sp, #8
    2a12:	af00      	add	r7, sp, #0
    2a14:	2300      	movs	r3, #0
    2a16:	71fb      	strb	r3, [r7, #7]
    2a18:	79fb      	ldrb	r3, [r7, #7]
    2a1a:	4618      	mov	r0, r3
    2a1c:	f002 fb2a 	bl	5074 <set_video_mode>
    2a20:	f7ff ff9a 	bl	2958 <color_bars>
    2a24:	f7ff ffd0 	bl	29c8 <vertical_bars>
    2a28:	4b2c      	ldr	r3, [pc, #176]	; (2adc <video_test+0xce>)
    2a2a:	2110      	movs	r1, #16
    2a2c:	4618      	mov	r0, r3
    2a2e:	f001 ff3f 	bl	48b0 <print_int>
    2a32:	4b2b      	ldr	r3, [pc, #172]	; (2ae0 <video_test+0xd2>)
    2a34:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2a38:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2a3c:	210a      	movs	r1, #10
    2a3e:	4618      	mov	r0, r3
    2a40:	f001 ff36 	bl	48b0 <print_int>
    2a44:	f7ff ff12 	bl	286c <init_balls>
    2a48:	2300      	movs	r3, #0
    2a4a:	71fb      	strb	r3, [r7, #7]
    2a4c:	f7ff fd98 	bl	2580 <draw_balls>
    2a50:	f7ff fd96 	bl	2580 <draw_balls>
    2a54:	f7ff fe09 	bl	266a <move_balls>
    2a58:	2010      	movs	r0, #16
    2a5a:	f7fe fefb 	bl	1854 <btn_query_down>
    2a5e:	4603      	mov	r3, r0
    2a60:	2b00      	cmp	r3, #0
    2a62:	d02d      	beq.n	2ac0 <video_test+0xb2>
    2a64:	79fb      	ldrb	r3, [r7, #7]
    2a66:	3301      	adds	r3, #1
    2a68:	71fb      	strb	r3, [r7, #7]
    2a6a:	79fa      	ldrb	r2, [r7, #7]
    2a6c:	4b1d      	ldr	r3, [pc, #116]	; (2ae4 <video_test+0xd6>)
    2a6e:	fba3 1302 	umull	r1, r3, r3, r2
    2a72:	0859      	lsrs	r1, r3, #1
    2a74:	460b      	mov	r3, r1
    2a76:	005b      	lsls	r3, r3, #1
    2a78:	440b      	add	r3, r1
    2a7a:	1ad3      	subs	r3, r2, r3
    2a7c:	71fb      	strb	r3, [r7, #7]
    2a7e:	79fb      	ldrb	r3, [r7, #7]
    2a80:	4618      	mov	r0, r3
    2a82:	f002 faf7 	bl	5074 <set_video_mode>
    2a86:	79fb      	ldrb	r3, [r7, #7]
    2a88:	2b01      	cmp	r3, #1
    2a8a:	d009      	beq.n	2aa0 <video_test+0x92>
    2a8c:	2b02      	cmp	r3, #2
    2a8e:	d00b      	beq.n	2aa8 <video_test+0x9a>
    2a90:	2b00      	cmp	r3, #0
    2a92:	d10d      	bne.n	2ab0 <video_test+0xa2>
    2a94:	4814      	ldr	r0, [pc, #80]	; (2ae8 <video_test+0xda>)
    2a96:	f001 fedb 	bl	4850 <print>
    2a9a:	f7ff ff5d 	bl	2958 <color_bars>
    2a9e:	e007      	b.n	2ab0 <video_test+0xa2>
    2aa0:	4812      	ldr	r0, [pc, #72]	; (2aec <video_test+0xde>)
    2aa2:	f001 fed5 	bl	4850 <print>
    2aa6:	e003      	b.n	2ab0 <video_test+0xa2>
    2aa8:	4811      	ldr	r0, [pc, #68]	; (2af0 <video_test+0xe2>)
    2aaa:	f001 fed1 	bl	4850 <print>
    2aae:	bf00      	nop
    2ab0:	f7ff ff8a 	bl	29c8 <vertical_bars>
    2ab4:	f7ff feda 	bl	286c <init_balls>
    2ab8:	2010      	movs	r0, #16
    2aba:	f7fe ff0f 	bl	18dc <btn_wait_up>
    2abe:	e7c5      	b.n	2a4c <video_test+0x3e>
    2ac0:	2002      	movs	r0, #2
    2ac2:	f7fe fec7 	bl	1854 <btn_query_down>
    2ac6:	4603      	mov	r3, r0
    2ac8:	2b00      	cmp	r3, #0
    2aca:	d0bf      	beq.n	2a4c <video_test+0x3e>
    2acc:	2002      	movs	r0, #2
    2ace:	f7fe ff05 	bl	18dc <btn_wait_up>
    2ad2:	bf00      	nop
    2ad4:	bf00      	nop
    2ad6:	3708      	adds	r7, #8
    2ad8:	46bd      	mov	sp, r7
    2ada:	bd80      	pop	{r7, pc}
    2adc:	00005c00 	.word	0x00005c00
    2ae0:	20004dc0 	.word	0x20004dc0
    2ae4:	aaaaaaab 	.word	0xaaaaaaab
    2ae8:	000056a4 	.word	0x000056a4
    2aec:	000056c4 	.word	0x000056c4
    2af0:	000056dc 	.word	0x000056dc

00002af4 <sound_test>:
    2af4:	b580      	push	{r7, lr}
    2af6:	b082      	sub	sp, #8
    2af8:	af00      	add	r7, sp, #0
    2afa:	23ff      	movs	r3, #255	; 0xff
    2afc:	71fb      	strb	r3, [r7, #7]
    2afe:	f7ff fae7 	bl	20d0 <gfx_cls>
    2b02:	4829      	ldr	r0, [pc, #164]	; (2ba8 <sound_test+0xb4>)
    2b04:	f001 fea4 	bl	4850 <print>
    2b08:	e040      	b.n	2b8c <sound_test+0x98>
    2b0a:	f7fe ff0f 	bl	192c <btn_wait_any>
    2b0e:	4603      	mov	r3, r0
    2b10:	71fb      	strb	r3, [r7, #7]
    2b12:	79fb      	ldrb	r3, [r7, #7]
    2b14:	2b08      	cmp	r3, #8
    2b16:	d01c      	beq.n	2b52 <sound_test+0x5e>
    2b18:	2b08      	cmp	r3, #8
    2b1a:	dc06      	bgt.n	2b2a <sound_test+0x36>
    2b1c:	2b02      	cmp	r3, #2
    2b1e:	d024      	beq.n	2b6a <sound_test+0x76>
    2b20:	2b04      	cmp	r3, #4
    2b22:	d012      	beq.n	2b4a <sound_test+0x56>
    2b24:	2b01      	cmp	r3, #1
    2b26:	d01c      	beq.n	2b62 <sound_test+0x6e>
    2b28:	e02b      	b.n	2b82 <sound_test+0x8e>
    2b2a:	2b20      	cmp	r3, #32
    2b2c:	d009      	beq.n	2b42 <sound_test+0x4e>
    2b2e:	2b20      	cmp	r3, #32
    2b30:	dc02      	bgt.n	2b38 <sound_test+0x44>
    2b32:	2b10      	cmp	r3, #16
    2b34:	d011      	beq.n	2b5a <sound_test+0x66>
    2b36:	e024      	b.n	2b82 <sound_test+0x8e>
    2b38:	2b40      	cmp	r3, #64	; 0x40
    2b3a:	d01a      	beq.n	2b72 <sound_test+0x7e>
    2b3c:	2b80      	cmp	r3, #128	; 0x80
    2b3e:	d01c      	beq.n	2b7a <sound_test+0x86>
    2b40:	e01f      	b.n	2b82 <sound_test+0x8e>
    2b42:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2b46:	80bb      	strh	r3, [r7, #4]
    2b48:	e01b      	b.n	2b82 <sound_test+0x8e>
    2b4a:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2b4e:	80bb      	strh	r3, [r7, #4]
    2b50:	e017      	b.n	2b82 <sound_test+0x8e>
    2b52:	f240 13ed 	movw	r3, #493	; 0x1ed
    2b56:	80bb      	strh	r3, [r7, #4]
    2b58:	e013      	b.n	2b82 <sound_test+0x8e>
    2b5a:	f240 230b 	movw	r3, #523	; 0x20b
    2b5e:	80bb      	strh	r3, [r7, #4]
    2b60:	e00f      	b.n	2b82 <sound_test+0x8e>
    2b62:	f240 232a 	movw	r3, #554	; 0x22a
    2b66:	80bb      	strh	r3, [r7, #4]
    2b68:	e00b      	b.n	2b82 <sound_test+0x8e>
    2b6a:	f240 234b 	movw	r3, #587	; 0x24b
    2b6e:	80bb      	strh	r3, [r7, #4]
    2b70:	e007      	b.n	2b82 <sound_test+0x8e>
    2b72:	f240 236e 	movw	r3, #622	; 0x26e
    2b76:	80bb      	strh	r3, [r7, #4]
    2b78:	e003      	b.n	2b82 <sound_test+0x8e>
    2b7a:	f240 2393 	movw	r3, #659	; 0x293
    2b7e:	80bb      	strh	r3, [r7, #4]
    2b80:	bf00      	nop
    2b82:	88bb      	ldrh	r3, [r7, #4]
    2b84:	2103      	movs	r1, #3
    2b86:	4618      	mov	r0, r3
    2b88:	f001 fa22 	bl	3fd0 <tone>
    2b8c:	79fb      	ldrb	r3, [r7, #7]
    2b8e:	2b02      	cmp	r3, #2
    2b90:	d1bb      	bne.n	2b0a <sound_test+0x16>
    2b92:	79fb      	ldrb	r3, [r7, #7]
    2b94:	4618      	mov	r0, r3
    2b96:	f7fe fea1 	bl	18dc <btn_wait_up>
    2b9a:	203c      	movs	r0, #60	; 0x3c
    2b9c:	f001 fa8a 	bl	40b4 <sound_sampler>
    2ba0:	bf00      	nop
    2ba2:	3708      	adds	r7, #8
    2ba4:	46bd      	mov	sp, r7
    2ba6:	bd80      	pop	{r7, pc}
    2ba8:	000056f4 	.word	0x000056f4

00002bac <display_keymap>:
    2bac:	b580      	push	{r7, lr}
    2bae:	b084      	sub	sp, #16
    2bb0:	af00      	add	r7, sp, #0
    2bb2:	6078      	str	r0, [r7, #4]
    2bb4:	2108      	movs	r1, #8
    2bb6:	2000      	movs	r0, #0
    2bb8:	f001 fe1e 	bl	47f8 <set_cursor>
    2bbc:	2300      	movs	r3, #0
    2bbe:	60fb      	str	r3, [r7, #12]
    2bc0:	e00a      	b.n	2bd8 <display_keymap+0x2c>
    2bc2:	68fb      	ldr	r3, [r7, #12]
    2bc4:	687a      	ldr	r2, [r7, #4]
    2bc6:	4413      	add	r3, r2
    2bc8:	781b      	ldrb	r3, [r3, #0]
    2bca:	2110      	movs	r1, #16
    2bcc:	4618      	mov	r0, r3
    2bce:	f001 fe6f 	bl	48b0 <print_int>
    2bd2:	68fb      	ldr	r3, [r7, #12]
    2bd4:	3301      	adds	r3, #1
    2bd6:	60fb      	str	r3, [r7, #12]
    2bd8:	68fb      	ldr	r3, [r7, #12]
    2bda:	2b07      	cmp	r3, #7
    2bdc:	ddf1      	ble.n	2bc2 <display_keymap+0x16>
    2bde:	bf00      	nop
    2be0:	3710      	adds	r7, #16
    2be2:	46bd      	mov	sp, r7
    2be4:	bd80      	pop	{r7, pc}

00002be6 <buttons_map>:
    2be6:	b580      	push	{r7, lr}
    2be8:	b086      	sub	sp, #24
    2bea:	af00      	add	r7, sp, #0
    2bec:	23ff      	movs	r3, #255	; 0xff
    2bee:	74fb      	strb	r3, [r7, #19]
    2bf0:	f7fe fee4 	bl	19bc <get_keymap>
    2bf4:	60f8      	str	r0, [r7, #12]
    2bf6:	f7ff fa6b 	bl	20d0 <gfx_cls>
    2bfa:	487d      	ldr	r0, [pc, #500]	; (2df0 <buttons_map+0x20a>)
    2bfc:	f001 fe4b 	bl	4896 <println>
    2c00:	2300      	movs	r3, #0
    2c02:	617b      	str	r3, [r7, #20]
    2c04:	e00b      	b.n	2c1e <buttons_map+0x38>
    2c06:	697b      	ldr	r3, [r7, #20]
    2c08:	68fa      	ldr	r2, [r7, #12]
    2c0a:	4413      	add	r3, r2
    2c0c:	7819      	ldrb	r1, [r3, #0]
    2c0e:	1d3a      	adds	r2, r7, #4
    2c10:	697b      	ldr	r3, [r7, #20]
    2c12:	4413      	add	r3, r2
    2c14:	460a      	mov	r2, r1
    2c16:	701a      	strb	r2, [r3, #0]
    2c18:	697b      	ldr	r3, [r7, #20]
    2c1a:	3301      	adds	r3, #1
    2c1c:	617b      	str	r3, [r7, #20]
    2c1e:	697b      	ldr	r3, [r7, #20]
    2c20:	2b07      	cmp	r3, #7
    2c22:	ddf0      	ble.n	2c06 <buttons_map+0x20>
    2c24:	1d3b      	adds	r3, r7, #4
    2c26:	4618      	mov	r0, r3
    2c28:	f7ff ffc0 	bl	2bac <display_keymap>
    2c2c:	2108      	movs	r1, #8
    2c2e:	2000      	movs	r0, #0
    2c30:	f001 fde2 	bl	47f8 <set_cursor>
    2c34:	2001      	movs	r0, #1
    2c36:	f001 ff75 	bl	4b24 <show_cursor>
    2c3a:	2300      	movs	r3, #0
    2c3c:	617b      	str	r3, [r7, #20]
    2c3e:	1d3a      	adds	r2, r7, #4
    2c40:	697b      	ldr	r3, [r7, #20]
    2c42:	4413      	add	r3, r2
    2c44:	781b      	ldrb	r3, [r3, #0]
    2c46:	74bb      	strb	r3, [r7, #18]
    2c48:	e0b8      	b.n	2dbc <buttons_map+0x1d6>
    2c4a:	f7fe fe6f 	bl	192c <btn_wait_any>
    2c4e:	4603      	mov	r3, r0
    2c50:	74fb      	strb	r3, [r7, #19]
    2c52:	7cfb      	ldrb	r3, [r7, #19]
    2c54:	2b10      	cmp	r3, #16
    2c56:	d029      	beq.n	2cac <buttons_map+0xc6>
    2c58:	2b10      	cmp	r3, #16
    2c5a:	dc04      	bgt.n	2c66 <buttons_map+0x80>
    2c5c:	2b04      	cmp	r3, #4
    2c5e:	d061      	beq.n	2d24 <buttons_map+0x13e>
    2c60:	2b08      	cmp	r3, #8
    2c62:	d005      	beq.n	2c70 <buttons_map+0x8a>
    2c64:	e0a6      	b.n	2db4 <buttons_map+0x1ce>
    2c66:	2b20      	cmp	r3, #32
    2c68:	d03d      	beq.n	2ce6 <buttons_map+0x100>
    2c6a:	2b40      	cmp	r3, #64	; 0x40
    2c6c:	d079      	beq.n	2d62 <buttons_map+0x17c>
    2c6e:	e0a1      	b.n	2db4 <buttons_map+0x1ce>
    2c70:	697b      	ldr	r3, [r7, #20]
    2c72:	2b00      	cmp	r3, #0
    2c74:	f000 8097 	beq.w	2da6 <buttons_map+0x1c0>
    2c78:	2000      	movs	r0, #0
    2c7a:	f001 ff53 	bl	4b24 <show_cursor>
    2c7e:	697b      	ldr	r3, [r7, #20]
    2c80:	3b01      	subs	r3, #1
    2c82:	617b      	str	r3, [r7, #20]
    2c84:	697b      	ldr	r3, [r7, #20]
    2c86:	b2db      	uxtb	r3, r3
    2c88:	461a      	mov	r2, r3
    2c8a:	00d2      	lsls	r2, r2, #3
    2c8c:	4413      	add	r3, r2
    2c8e:	005b      	lsls	r3, r3, #1
    2c90:	b2db      	uxtb	r3, r3
    2c92:	2108      	movs	r1, #8
    2c94:	4618      	mov	r0, r3
    2c96:	f001 fdaf 	bl	47f8 <set_cursor>
    2c9a:	2001      	movs	r0, #1
    2c9c:	f001 ff42 	bl	4b24 <show_cursor>
    2ca0:	1d3a      	adds	r2, r7, #4
    2ca2:	697b      	ldr	r3, [r7, #20]
    2ca4:	4413      	add	r3, r2
    2ca6:	781b      	ldrb	r3, [r3, #0]
    2ca8:	74bb      	strb	r3, [r7, #18]
    2caa:	e07c      	b.n	2da6 <buttons_map+0x1c0>
    2cac:	697b      	ldr	r3, [r7, #20]
    2cae:	2b06      	cmp	r3, #6
    2cb0:	dc7b      	bgt.n	2daa <buttons_map+0x1c4>
    2cb2:	2000      	movs	r0, #0
    2cb4:	f001 ff36 	bl	4b24 <show_cursor>
    2cb8:	697b      	ldr	r3, [r7, #20]
    2cba:	3301      	adds	r3, #1
    2cbc:	617b      	str	r3, [r7, #20]
    2cbe:	697b      	ldr	r3, [r7, #20]
    2cc0:	b2db      	uxtb	r3, r3
    2cc2:	461a      	mov	r2, r3
    2cc4:	00d2      	lsls	r2, r2, #3
    2cc6:	4413      	add	r3, r2
    2cc8:	005b      	lsls	r3, r3, #1
    2cca:	b2db      	uxtb	r3, r3
    2ccc:	2108      	movs	r1, #8
    2cce:	4618      	mov	r0, r3
    2cd0:	f001 fd92 	bl	47f8 <set_cursor>
    2cd4:	2001      	movs	r0, #1
    2cd6:	f001 ff25 	bl	4b24 <show_cursor>
    2cda:	1d3a      	adds	r2, r7, #4
    2cdc:	697b      	ldr	r3, [r7, #20]
    2cde:	4413      	add	r3, r2
    2ce0:	781b      	ldrb	r3, [r3, #0]
    2ce2:	74bb      	strb	r3, [r7, #18]
    2ce4:	e061      	b.n	2daa <buttons_map+0x1c4>
    2ce6:	7cbb      	ldrb	r3, [r7, #18]
    2ce8:	2b0e      	cmp	r3, #14
    2cea:	d860      	bhi.n	2dae <buttons_map+0x1c8>
    2cec:	7cbb      	ldrb	r3, [r7, #18]
    2cee:	3301      	adds	r3, #1
    2cf0:	74bb      	strb	r3, [r7, #18]
    2cf2:	1d3a      	adds	r2, r7, #4
    2cf4:	697b      	ldr	r3, [r7, #20]
    2cf6:	4413      	add	r3, r2
    2cf8:	7cba      	ldrb	r2, [r7, #18]
    2cfa:	701a      	strb	r2, [r3, #0]
    2cfc:	7cbb      	ldrb	r3, [r7, #18]
    2cfe:	2110      	movs	r1, #16
    2d00:	4618      	mov	r0, r3
    2d02:	f001 fdd5 	bl	48b0 <print_int>
    2d06:	697b      	ldr	r3, [r7, #20]
    2d08:	b2db      	uxtb	r3, r3
    2d0a:	461a      	mov	r2, r3
    2d0c:	00d2      	lsls	r2, r2, #3
    2d0e:	4413      	add	r3, r2
    2d10:	005b      	lsls	r3, r3, #1
    2d12:	b2db      	uxtb	r3, r3
    2d14:	2108      	movs	r1, #8
    2d16:	4618      	mov	r0, r3
    2d18:	f001 fd6e 	bl	47f8 <set_cursor>
    2d1c:	2001      	movs	r0, #1
    2d1e:	f001 ff01 	bl	4b24 <show_cursor>
    2d22:	e044      	b.n	2dae <buttons_map+0x1c8>
    2d24:	7cbb      	ldrb	r3, [r7, #18]
    2d26:	2b00      	cmp	r3, #0
    2d28:	d043      	beq.n	2db2 <buttons_map+0x1cc>
    2d2a:	7cbb      	ldrb	r3, [r7, #18]
    2d2c:	3b01      	subs	r3, #1
    2d2e:	74bb      	strb	r3, [r7, #18]
    2d30:	1d3a      	adds	r2, r7, #4
    2d32:	697b      	ldr	r3, [r7, #20]
    2d34:	4413      	add	r3, r2
    2d36:	7cba      	ldrb	r2, [r7, #18]
    2d38:	701a      	strb	r2, [r3, #0]
    2d3a:	7cbb      	ldrb	r3, [r7, #18]
    2d3c:	2110      	movs	r1, #16
    2d3e:	4618      	mov	r0, r3
    2d40:	f001 fdb6 	bl	48b0 <print_int>
    2d44:	697b      	ldr	r3, [r7, #20]
    2d46:	b2db      	uxtb	r3, r3
    2d48:	461a      	mov	r2, r3
    2d4a:	00d2      	lsls	r2, r2, #3
    2d4c:	4413      	add	r3, r2
    2d4e:	005b      	lsls	r3, r3, #1
    2d50:	b2db      	uxtb	r3, r3
    2d52:	2108      	movs	r1, #8
    2d54:	4618      	mov	r0, r3
    2d56:	f001 fd4f 	bl	47f8 <set_cursor>
    2d5a:	2001      	movs	r0, #1
    2d5c:	f001 fee2 	bl	4b24 <show_cursor>
    2d60:	e027      	b.n	2db2 <buttons_map+0x1cc>
    2d62:	2300      	movs	r3, #0
    2d64:	617b      	str	r3, [r7, #20]
    2d66:	e00b      	b.n	2d80 <buttons_map+0x19a>
    2d68:	697b      	ldr	r3, [r7, #20]
    2d6a:	68fa      	ldr	r2, [r7, #12]
    2d6c:	4413      	add	r3, r2
    2d6e:	7819      	ldrb	r1, [r3, #0]
    2d70:	1d3a      	adds	r2, r7, #4
    2d72:	697b      	ldr	r3, [r7, #20]
    2d74:	4413      	add	r3, r2
    2d76:	460a      	mov	r2, r1
    2d78:	701a      	strb	r2, [r3, #0]
    2d7a:	697b      	ldr	r3, [r7, #20]
    2d7c:	3301      	adds	r3, #1
    2d7e:	617b      	str	r3, [r7, #20]
    2d80:	697b      	ldr	r3, [r7, #20]
    2d82:	2b07      	cmp	r3, #7
    2d84:	ddf0      	ble.n	2d68 <buttons_map+0x182>
    2d86:	1d3b      	adds	r3, r7, #4
    2d88:	4618      	mov	r0, r3
    2d8a:	f7ff ff0f 	bl	2bac <display_keymap>
    2d8e:	2108      	movs	r1, #8
    2d90:	2000      	movs	r0, #0
    2d92:	f001 fd31 	bl	47f8 <set_cursor>
    2d96:	2300      	movs	r3, #0
    2d98:	617b      	str	r3, [r7, #20]
    2d9a:	1d3a      	adds	r2, r7, #4
    2d9c:	697b      	ldr	r3, [r7, #20]
    2d9e:	4413      	add	r3, r2
    2da0:	781b      	ldrb	r3, [r3, #0]
    2da2:	74bb      	strb	r3, [r7, #18]
    2da4:	e006      	b.n	2db4 <buttons_map+0x1ce>
    2da6:	bf00      	nop
    2da8:	e004      	b.n	2db4 <buttons_map+0x1ce>
    2daa:	bf00      	nop
    2dac:	e002      	b.n	2db4 <buttons_map+0x1ce>
    2dae:	bf00      	nop
    2db0:	e000      	b.n	2db4 <buttons_map+0x1ce>
    2db2:	bf00      	nop
    2db4:	7cfb      	ldrb	r3, [r7, #19]
    2db6:	4618      	mov	r0, r3
    2db8:	f7fe fd90 	bl	18dc <btn_wait_up>
    2dbc:	7cfb      	ldrb	r3, [r7, #19]
    2dbe:	2b02      	cmp	r3, #2
    2dc0:	f47f af43 	bne.w	2c4a <buttons_map+0x64>
    2dc4:	2300      	movs	r3, #0
    2dc6:	617b      	str	r3, [r7, #20]
    2dc8:	e00a      	b.n	2de0 <buttons_map+0x1fa>
    2dca:	697b      	ldr	r3, [r7, #20]
    2dcc:	68fa      	ldr	r2, [r7, #12]
    2dce:	4413      	add	r3, r2
    2dd0:	1d39      	adds	r1, r7, #4
    2dd2:	697a      	ldr	r2, [r7, #20]
    2dd4:	440a      	add	r2, r1
    2dd6:	7812      	ldrb	r2, [r2, #0]
    2dd8:	701a      	strb	r2, [r3, #0]
    2dda:	697b      	ldr	r3, [r7, #20]
    2ddc:	3301      	adds	r3, #1
    2dde:	617b      	str	r3, [r7, #20]
    2de0:	697b      	ldr	r3, [r7, #20]
    2de2:	2b07      	cmp	r3, #7
    2de4:	ddf1      	ble.n	2dca <buttons_map+0x1e4>
    2de6:	bf00      	nop
    2de8:	3718      	adds	r7, #24
    2dea:	46bd      	mov	sp, r7
    2dec:	bd80      	pop	{r7, pc}
    2dee:	bf00      	nop
    2df0:	00005704 	.word	0x00005704

00002df4 <print_games_list>:
    2df4:	b580      	push	{r7, lr}
    2df6:	b084      	sub	sp, #16
    2df8:	af00      	add	r7, sp, #0
    2dfa:	6078      	str	r0, [r7, #4]
    2dfc:	6039      	str	r1, [r7, #0]
    2dfe:	2301      	movs	r3, #1
    2e00:	60fb      	str	r3, [r7, #12]
    2e02:	2100      	movs	r1, #0
    2e04:	2000      	movs	r0, #0
    2e06:	f001 fcf7 	bl	47f8 <set_cursor>
    2e0a:	4815      	ldr	r0, [pc, #84]	; (2e60 <print_games_list+0x6c>)
    2e0c:	f001 fd20 	bl	4850 <print>
    2e10:	e012      	b.n	2e38 <print_games_list+0x44>
    2e12:	f001 fbd1 	bl	45b8 <new_line>
    2e16:	2020      	movs	r0, #32
    2e18:	f001 fc62 	bl	46e0 <put_char>
    2e1c:	687a      	ldr	r2, [r7, #4]
    2e1e:	4613      	mov	r3, r2
    2e20:	00db      	lsls	r3, r3, #3
    2e22:	1a9b      	subs	r3, r3, r2
    2e24:	009b      	lsls	r3, r3, #2
    2e26:	4a0f      	ldr	r2, [pc, #60]	; (2e64 <print_games_list+0x70>)
    2e28:	4413      	add	r3, r2
    2e2a:	3301      	adds	r3, #1
    2e2c:	4618      	mov	r0, r3
    2e2e:	f001 fd0f 	bl	4850 <print>
    2e32:	687b      	ldr	r3, [r7, #4]
    2e34:	3301      	adds	r3, #1
    2e36:	607b      	str	r3, [r7, #4]
    2e38:	68fa      	ldr	r2, [r7, #12]
    2e3a:	683b      	ldr	r3, [r7, #0]
    2e3c:	429a      	cmp	r2, r3
    2e3e:	d20a      	bcs.n	2e56 <print_games_list+0x62>
    2e40:	4908      	ldr	r1, [pc, #32]	; (2e64 <print_games_list+0x70>)
    2e42:	687a      	ldr	r2, [r7, #4]
    2e44:	4613      	mov	r3, r2
    2e46:	00db      	lsls	r3, r3, #3
    2e48:	1a9b      	subs	r3, r3, r2
    2e4a:	009b      	lsls	r3, r3, #2
    2e4c:	440b      	add	r3, r1
    2e4e:	3310      	adds	r3, #16
    2e50:	681b      	ldr	r3, [r3, #0]
    2e52:	2b00      	cmp	r3, #0
    2e54:	d1dd      	bne.n	2e12 <print_games_list+0x1e>
    2e56:	bf00      	nop
    2e58:	3710      	adds	r7, #16
    2e5a:	46bd      	mov	sp, r7
    2e5c:	bd80      	pop	{r7, pc}
    2e5e:	bf00      	nop
    2e60:	00005718 	.word	0x00005718
    2e64:	20000008 	.word	0x20000008

00002e68 <run_game>:
    2e68:	b580      	push	{r7, lr}
    2e6a:	b082      	sub	sp, #8
    2e6c:	af00      	add	r7, sp, #0
    2e6e:	6078      	str	r0, [r7, #4]
    2e70:	491b      	ldr	r1, [pc, #108]	; (2ee0 <run_game+0x78>)
    2e72:	687a      	ldr	r2, [r7, #4]
    2e74:	4613      	mov	r3, r2
    2e76:	00db      	lsls	r3, r3, #3
    2e78:	1a9b      	subs	r3, r3, r2
    2e7a:	009b      	lsls	r3, r3, #2
    2e7c:	440b      	add	r3, r1
    2e7e:	3314      	adds	r3, #20
    2e80:	6818      	ldr	r0, [r3, #0]
    2e82:	4917      	ldr	r1, [pc, #92]	; (2ee0 <run_game+0x78>)
    2e84:	687a      	ldr	r2, [r7, #4]
    2e86:	4613      	mov	r3, r2
    2e88:	00db      	lsls	r3, r3, #3
    2e8a:	1a9b      	subs	r3, r3, r2
    2e8c:	009b      	lsls	r3, r3, #2
    2e8e:	440b      	add	r3, r1
    2e90:	3310      	adds	r3, #16
    2e92:	681b      	ldr	r3, [r3, #0]
    2e94:	461a      	mov	r2, r3
    2e96:	4913      	ldr	r1, [pc, #76]	; (2ee4 <run_game+0x7c>)
    2e98:	f7fe fed3 	bl	1c42 <move>
    2e9c:	4910      	ldr	r1, [pc, #64]	; (2ee0 <run_game+0x78>)
    2e9e:	687a      	ldr	r2, [r7, #4]
    2ea0:	4613      	mov	r3, r2
    2ea2:	00db      	lsls	r3, r3, #3
    2ea4:	1a9b      	subs	r3, r3, r2
    2ea6:	009b      	lsls	r3, r3, #2
    2ea8:	440b      	add	r3, r1
    2eaa:	3318      	adds	r3, #24
    2eac:	681b      	ldr	r3, [r3, #0]
    2eae:	4618      	mov	r0, r3
    2eb0:	f7fe fc26 	bl	1700 <set_keymap>
    2eb4:	490a      	ldr	r1, [pc, #40]	; (2ee0 <run_game+0x78>)
    2eb6:	687a      	ldr	r2, [r7, #4]
    2eb8:	4613      	mov	r3, r2
    2eba:	00db      	lsls	r3, r3, #3
    2ebc:	1a9b      	subs	r3, r3, r2
    2ebe:	009b      	lsls	r3, r3, #2
    2ec0:	440b      	add	r3, r1
    2ec2:	781b      	ldrb	r3, [r3, #0]
    2ec4:	4618      	mov	r0, r3
    2ec6:	f002 f8d5 	bl	5074 <set_video_mode>
    2eca:	2000      	movs	r0, #0
    2ecc:	f7fd fb08 	bl	4e0 <chip_vm>
    2ed0:	2000      	movs	r0, #0
    2ed2:	f002 f8cf 	bl	5074 <set_video_mode>
    2ed6:	bf00      	nop
    2ed8:	3708      	adds	r7, #8
    2eda:	46bd      	mov	sp, r7
    2edc:	bd80      	pop	{r7, pc}
    2ede:	bf00      	nop
    2ee0:	20000008 	.word	0x20000008
    2ee4:	20000628 	.word	0x20000628

00002ee8 <select_game>:
    2ee8:	b580      	push	{r7, lr}
    2eea:	b088      	sub	sp, #32
    2eec:	af00      	add	r7, sp, #0
    2eee:	2300      	movs	r3, #0
    2ef0:	613b      	str	r3, [r7, #16]
    2ef2:	2300      	movs	r3, #0
    2ef4:	61fb      	str	r3, [r7, #28]
    2ef6:	2301      	movs	r3, #1
    2ef8:	61bb      	str	r3, [r7, #24]
    2efa:	2301      	movs	r3, #1
    2efc:	617b      	str	r3, [r7, #20]
    2efe:	f7fe fd67 	bl	19d0 <games_count>
    2f02:	4603      	mov	r3, r0
    2f04:	60fb      	str	r3, [r7, #12]
    2f06:	2000      	movs	r0, #0
    2f08:	f002 f8b4 	bl	5074 <set_video_mode>
    2f0c:	f002 f94a 	bl	51a4 <get_video_params>
    2f10:	60b8      	str	r0, [r7, #8]
    2f12:	68bb      	ldr	r3, [r7, #8]
    2f14:	89db      	ldrh	r3, [r3, #14]
    2f16:	08db      	lsrs	r3, r3, #3
    2f18:	b29b      	uxth	r3, r3
    2f1a:	607b      	str	r3, [r7, #4]
    2f1c:	e048      	b.n	2fb0 <select_game+0xc8>
    2f1e:	69fb      	ldr	r3, [r7, #28]
    2f20:	687a      	ldr	r2, [r7, #4]
    2f22:	4611      	mov	r1, r2
    2f24:	4618      	mov	r0, r3
    2f26:	f7ff ff65 	bl	2df4 <print_games_list>
    2f2a:	69bb      	ldr	r3, [r7, #24]
    2f2c:	b2db      	uxtb	r3, r3
    2f2e:	00db      	lsls	r3, r3, #3
    2f30:	b2db      	uxtb	r3, r3
    2f32:	4619      	mov	r1, r3
    2f34:	2000      	movs	r0, #0
    2f36:	f001 fc5f 	bl	47f8 <set_cursor>
    2f3a:	203e      	movs	r0, #62	; 0x3e
    2f3c:	f001 fbd0 	bl	46e0 <put_char>
    2f40:	f7fe fcf4 	bl	192c <btn_wait_any>
    2f44:	4603      	mov	r3, r0
    2f46:	70fb      	strb	r3, [r7, #3]
    2f48:	78fb      	ldrb	r3, [r7, #3]
    2f4a:	4618      	mov	r0, r3
    2f4c:	f7fe fcc6 	bl	18dc <btn_wait_up>
    2f50:	78fb      	ldrb	r3, [r7, #3]
    2f52:	2b04      	cmp	r3, #4
    2f54:	d016      	beq.n	2f84 <select_game+0x9c>
    2f56:	2b04      	cmp	r3, #4
    2f58:	dc02      	bgt.n	2f60 <select_game+0x78>
    2f5a:	2b02      	cmp	r3, #2
    2f5c:	d025      	beq.n	2faa <select_game+0xc2>
    2f5e:	e027      	b.n	2fb0 <select_game+0xc8>
    2f60:	2b20      	cmp	r3, #32
    2f62:	d002      	beq.n	2f6a <select_game+0x82>
    2f64:	2b40      	cmp	r3, #64	; 0x40
    2f66:	d02e      	beq.n	2fc6 <select_game+0xde>
    2f68:	e022      	b.n	2fb0 <select_game+0xc8>
    2f6a:	69fb      	ldr	r3, [r7, #28]
    2f6c:	2b00      	cmp	r3, #0
    2f6e:	d002      	beq.n	2f76 <select_game+0x8e>
    2f70:	69fb      	ldr	r3, [r7, #28]
    2f72:	3b01      	subs	r3, #1
    2f74:	61fb      	str	r3, [r7, #28]
    2f76:	69bb      	ldr	r3, [r7, #24]
    2f78:	2b01      	cmp	r3, #1
    2f7a:	dd19      	ble.n	2fb0 <select_game+0xc8>
    2f7c:	69bb      	ldr	r3, [r7, #24]
    2f7e:	3b01      	subs	r3, #1
    2f80:	61bb      	str	r3, [r7, #24]
    2f82:	e015      	b.n	2fb0 <select_game+0xc8>
    2f84:	69fa      	ldr	r2, [r7, #28]
    2f86:	69bb      	ldr	r3, [r7, #24]
    2f88:	4413      	add	r3, r2
    2f8a:	1e5a      	subs	r2, r3, #1
    2f8c:	68fb      	ldr	r3, [r7, #12]
    2f8e:	3b01      	subs	r3, #1
    2f90:	429a      	cmp	r2, r3
    2f92:	da0d      	bge.n	2fb0 <select_game+0xc8>
    2f94:	69bb      	ldr	r3, [r7, #24]
    2f96:	3301      	adds	r3, #1
    2f98:	61bb      	str	r3, [r7, #24]
    2f9a:	69ba      	ldr	r2, [r7, #24]
    2f9c:	687b      	ldr	r3, [r7, #4]
    2f9e:	429a      	cmp	r2, r3
    2fa0:	db06      	blt.n	2fb0 <select_game+0xc8>
    2fa2:	69fb      	ldr	r3, [r7, #28]
    2fa4:	3301      	adds	r3, #1
    2fa6:	61fb      	str	r3, [r7, #28]
    2fa8:	e002      	b.n	2fb0 <select_game+0xc8>
    2faa:	2300      	movs	r3, #0
    2fac:	617b      	str	r3, [r7, #20]
    2fae:	bf00      	nop
    2fb0:	697b      	ldr	r3, [r7, #20]
    2fb2:	2b00      	cmp	r3, #0
    2fb4:	d1b3      	bne.n	2f1e <select_game+0x36>
    2fb6:	69fa      	ldr	r2, [r7, #28]
    2fb8:	69bb      	ldr	r3, [r7, #24]
    2fba:	4413      	add	r3, r2
    2fbc:	3b01      	subs	r3, #1
    2fbe:	4618      	mov	r0, r3
    2fc0:	f7ff ff52 	bl	2e68 <run_game>
    2fc4:	e000      	b.n	2fc8 <select_game+0xe0>
    2fc6:	bf00      	nop
    2fc8:	3720      	adds	r7, #32
    2fca:	46bd      	mov	sp, r7
    2fcc:	bd80      	pop	{r7, pc}

00002fce <display_menu>:
    2fce:	b580      	push	{r7, lr}
    2fd0:	b082      	sub	sp, #8
    2fd2:	af00      	add	r7, sp, #0
    2fd4:	f7ff f87c 	bl	20d0 <gfx_cls>
    2fd8:	2300      	movs	r3, #0
    2fda:	607b      	str	r3, [r7, #4]
    2fdc:	e009      	b.n	2ff2 <display_menu+0x24>
    2fde:	4a08      	ldr	r2, [pc, #32]	; (3000 <display_menu+0x32>)
    2fe0:	687b      	ldr	r3, [r7, #4]
    2fe2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    2fe6:	4618      	mov	r0, r3
    2fe8:	f001 fc55 	bl	4896 <println>
    2fec:	687b      	ldr	r3, [r7, #4]
    2fee:	3301      	adds	r3, #1
    2ff0:	607b      	str	r3, [r7, #4]
    2ff2:	687b      	ldr	r3, [r7, #4]
    2ff4:	2b03      	cmp	r3, #3
    2ff6:	ddf2      	ble.n	2fde <display_menu+0x10>
    2ff8:	bf00      	nop
    2ffa:	3708      	adds	r7, #8
    2ffc:	46bd      	mov	sp, r7
    2ffe:	bd80      	pop	{r7, pc}
    3000:	2000010c 	.word	0x2000010c

00003004 <menu>:
    3004:	b580      	push	{r7, lr}
    3006:	b084      	sub	sp, #16
    3008:	af00      	add	r7, sp, #0
    300a:	2300      	movs	r3, #0
    300c:	60fb      	str	r3, [r7, #12]
    300e:	f002 f8c9 	bl	51a4 <get_video_params>
    3012:	60b8      	str	r0, [r7, #8]
    3014:	f7ff ffdb 	bl	2fce <display_menu>
    3018:	68fb      	ldr	r3, [r7, #12]
    301a:	b2db      	uxtb	r3, r3
    301c:	00db      	lsls	r3, r3, #3
    301e:	b2db      	uxtb	r3, r3
    3020:	4619      	mov	r1, r3
    3022:	2000      	movs	r0, #0
    3024:	f001 fbe8 	bl	47f8 <set_cursor>
    3028:	203e      	movs	r0, #62	; 0x3e
    302a:	f001 fb59 	bl	46e0 <put_char>
    302e:	f7fe fc7d 	bl	192c <btn_wait_any>
    3032:	4603      	mov	r3, r0
    3034:	71fb      	strb	r3, [r7, #7]
    3036:	79fb      	ldrb	r3, [r7, #7]
    3038:	4618      	mov	r0, r3
    303a:	f7fe fc4f 	bl	18dc <btn_wait_up>
    303e:	68fb      	ldr	r3, [r7, #12]
    3040:	b2db      	uxtb	r3, r3
    3042:	00db      	lsls	r3, r3, #3
    3044:	b2db      	uxtb	r3, r3
    3046:	4619      	mov	r1, r3
    3048:	2000      	movs	r0, #0
    304a:	f001 fbd5 	bl	47f8 <set_cursor>
    304e:	2020      	movs	r0, #32
    3050:	f001 fb46 	bl	46e0 <put_char>
    3054:	79fb      	ldrb	r3, [r7, #7]
    3056:	2b04      	cmp	r3, #4
    3058:	d00b      	beq.n	3072 <menu+0x6e>
    305a:	2b20      	cmp	r3, #32
    305c:	d002      	beq.n	3064 <menu+0x60>
    305e:	2b02      	cmp	r3, #2
    3060:	d00e      	beq.n	3080 <menu+0x7c>
    3062:	e02d      	b.n	30c0 <menu+0xbc>
    3064:	68fb      	ldr	r3, [r7, #12]
    3066:	2b00      	cmp	r3, #0
    3068:	d027      	beq.n	30ba <menu+0xb6>
    306a:	68fb      	ldr	r3, [r7, #12]
    306c:	3b01      	subs	r3, #1
    306e:	60fb      	str	r3, [r7, #12]
    3070:	e023      	b.n	30ba <menu+0xb6>
    3072:	68fb      	ldr	r3, [r7, #12]
    3074:	2b02      	cmp	r3, #2
    3076:	dc22      	bgt.n	30be <menu+0xba>
    3078:	68fb      	ldr	r3, [r7, #12]
    307a:	3301      	adds	r3, #1
    307c:	60fb      	str	r3, [r7, #12]
    307e:	e01e      	b.n	30be <menu+0xba>
    3080:	68fb      	ldr	r3, [r7, #12]
    3082:	2b03      	cmp	r3, #3
    3084:	d816      	bhi.n	30b4 <menu+0xb0>
    3086:	a201      	add	r2, pc, #4	; (adr r2, 308c <menu+0x88>)
    3088:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    308c:	0000309d 	.word	0x0000309d
    3090:	000030a3 	.word	0x000030a3
    3094:	000030a9 	.word	0x000030a9
    3098:	000030af 	.word	0x000030af
    309c:	f7ff fda3 	bl	2be6 <buttons_map>
    30a0:	e008      	b.n	30b4 <menu+0xb0>
    30a2:	f7ff ff21 	bl	2ee8 <select_game>
    30a6:	e005      	b.n	30b4 <menu+0xb0>
    30a8:	f7ff fcb1 	bl	2a0e <video_test>
    30ac:	e002      	b.n	30b4 <menu+0xb0>
    30ae:	f7ff fd21 	bl	2af4 <sound_test>
    30b2:	bf00      	nop
    30b4:	f7ff ff8b 	bl	2fce <display_menu>
    30b8:	e002      	b.n	30c0 <menu+0xbc>
    30ba:	bf00      	nop
    30bc:	e7ac      	b.n	3018 <menu+0x14>
    30be:	bf00      	nop
    30c0:	e7aa      	b.n	3018 <menu+0x14>

000030c2 <main>:
    30c2:	b580      	push	{r7, lr}
    30c4:	b086      	sub	sp, #24
    30c6:	af00      	add	r7, sp, #0
    30c8:	f7ff fa22 	bl	2510 <set_sysclock>
    30cc:	4b19      	ldr	r3, [pc, #100]	; (3134 <main+0x72>)
    30ce:	f640 021d 	movw	r2, #2077	; 0x81d
    30d2:	619a      	str	r2, [r3, #24]
    30d4:	2206      	movs	r2, #6
    30d6:	210d      	movs	r1, #13
    30d8:	4817      	ldr	r0, [pc, #92]	; (3138 <main+0x76>)
    30da:	f7fe fe9f 	bl	1e1c <config_pin>
    30de:	4a16      	ldr	r2, [pc, #88]	; (3138 <main+0x76>)
    30e0:	4b15      	ldr	r3, [pc, #84]	; (3138 <main+0x76>)
    30e2:	68db      	ldr	r3, [r3, #12]
    30e4:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    30e8:	60d3      	str	r3, [r2, #12]
    30ea:	f7fe fb27 	bl	173c <gamepad_init>
    30ee:	f001 fd41 	bl	4b74 <tvout_init>
    30f2:	f000 ff4d 	bl	3f90 <sound_init>
    30f6:	2300      	movs	r3, #0
    30f8:	617b      	str	r3, [r7, #20]
    30fa:	e00b      	b.n	3114 <main+0x52>
    30fc:	f7fd f9ce 	bl	49c <rand>
    3100:	4603      	mov	r3, r0
    3102:	b2d9      	uxtb	r1, r3
    3104:	1d3a      	adds	r2, r7, #4
    3106:	697b      	ldr	r3, [r7, #20]
    3108:	4413      	add	r3, r2
    310a:	460a      	mov	r2, r1
    310c:	701a      	strb	r2, [r3, #0]
    310e:	697b      	ldr	r3, [r7, #20]
    3110:	3301      	adds	r3, #1
    3112:	617b      	str	r3, [r7, #20]
    3114:	697b      	ldr	r3, [r7, #20]
    3116:	2b0f      	cmp	r3, #15
    3118:	ddf0      	ble.n	30fc <main+0x3a>
    311a:	1d3b      	adds	r3, r7, #4
    311c:	4618      	mov	r0, r3
    311e:	f000 ffac 	bl	407a <load_sound_buffer>
    3122:	f7fe ffd5 	bl	20d0 <gfx_cls>
    3126:	f7ff ff6d 	bl	3004 <menu>
    312a:	bf00      	nop
    312c:	3718      	adds	r7, #24
    312e:	46bd      	mov	sp, r7
    3130:	bd80      	pop	{r7, pc}
    3132:	bf00      	nop
    3134:	40021000 	.word	0x40021000
    3138:	40011000 	.word	0x40011000

0000313c <enable_interrupt>:
    313c:	b480      	push	{r7}
    313e:	b083      	sub	sp, #12
    3140:	af00      	add	r7, sp, #0
    3142:	6078      	str	r0, [r7, #4]
    3144:	687b      	ldr	r3, [r7, #4]
    3146:	2b3b      	cmp	r3, #59	; 0x3b
    3148:	dc17      	bgt.n	317a <enable_interrupt+0x3e>
    314a:	687b      	ldr	r3, [r7, #4]
    314c:	115b      	asrs	r3, r3, #5
    314e:	009b      	lsls	r3, r3, #2
    3150:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3154:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    3158:	687a      	ldr	r2, [r7, #4]
    315a:	1152      	asrs	r2, r2, #5
    315c:	0092      	lsls	r2, r2, #2
    315e:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3162:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    3166:	6812      	ldr	r2, [r2, #0]
    3168:	6879      	ldr	r1, [r7, #4]
    316a:	f001 011f 	and.w	r1, r1, #31
    316e:	2001      	movs	r0, #1
    3170:	fa00 f101 	lsl.w	r1, r0, r1
    3174:	430a      	orrs	r2, r1
    3176:	601a      	str	r2, [r3, #0]
    3178:	e000      	b.n	317c <enable_interrupt+0x40>
    317a:	bf00      	nop
    317c:	370c      	adds	r7, #12
    317e:	46bd      	mov	sp, r7
    3180:	bc80      	pop	{r7}
    3182:	4770      	bx	lr

00003184 <disable_interrupt>:
    3184:	b480      	push	{r7}
    3186:	b083      	sub	sp, #12
    3188:	af00      	add	r7, sp, #0
    318a:	6078      	str	r0, [r7, #4]
    318c:	687b      	ldr	r3, [r7, #4]
    318e:	2b3b      	cmp	r3, #59	; 0x3b
    3190:	dc0c      	bgt.n	31ac <disable_interrupt+0x28>
    3192:	687b      	ldr	r3, [r7, #4]
    3194:	115b      	asrs	r3, r3, #5
    3196:	009a      	lsls	r2, r3, #2
    3198:	4b07      	ldr	r3, [pc, #28]	; (31b8 <disable_interrupt+0x34>)
    319a:	4413      	add	r3, r2
    319c:	687a      	ldr	r2, [r7, #4]
    319e:	f002 021f 	and.w	r2, r2, #31
    31a2:	2101      	movs	r1, #1
    31a4:	fa01 f202 	lsl.w	r2, r1, r2
    31a8:	601a      	str	r2, [r3, #0]
    31aa:	e000      	b.n	31ae <disable_interrupt+0x2a>
    31ac:	bf00      	nop
    31ae:	370c      	adds	r7, #12
    31b0:	46bd      	mov	sp, r7
    31b2:	bc80      	pop	{r7}
    31b4:	4770      	bx	lr
    31b6:	bf00      	nop
    31b8:	e000e180 	.word	0xe000e180

000031bc <get_pending>:
    31bc:	b480      	push	{r7}
    31be:	b083      	sub	sp, #12
    31c0:	af00      	add	r7, sp, #0
    31c2:	6078      	str	r0, [r7, #4]
    31c4:	687b      	ldr	r3, [r7, #4]
    31c6:	2b3b      	cmp	r3, #59	; 0x3b
    31c8:	dd01      	ble.n	31ce <get_pending+0x12>
    31ca:	2300      	movs	r3, #0
    31cc:	e00c      	b.n	31e8 <get_pending+0x2c>
    31ce:	687b      	ldr	r3, [r7, #4]
    31d0:	115b      	asrs	r3, r3, #5
    31d2:	009a      	lsls	r2, r3, #2
    31d4:	4b07      	ldr	r3, [pc, #28]	; (31f4 <get_pending+0x38>)
    31d6:	4413      	add	r3, r2
    31d8:	681b      	ldr	r3, [r3, #0]
    31da:	687a      	ldr	r2, [r7, #4]
    31dc:	f002 021f 	and.w	r2, r2, #31
    31e0:	2101      	movs	r1, #1
    31e2:	fa01 f202 	lsl.w	r2, r1, r2
    31e6:	4013      	ands	r3, r2
    31e8:	4618      	mov	r0, r3
    31ea:	370c      	adds	r7, #12
    31ec:	46bd      	mov	sp, r7
    31ee:	bc80      	pop	{r7}
    31f0:	4770      	bx	lr
    31f2:	bf00      	nop
    31f4:	e000e280 	.word	0xe000e280

000031f8 <get_active>:
    31f8:	b480      	push	{r7}
    31fa:	b083      	sub	sp, #12
    31fc:	af00      	add	r7, sp, #0
    31fe:	6078      	str	r0, [r7, #4]
    3200:	687b      	ldr	r3, [r7, #4]
    3202:	2b3b      	cmp	r3, #59	; 0x3b
    3204:	dd01      	ble.n	320a <get_active+0x12>
    3206:	2300      	movs	r3, #0
    3208:	e00e      	b.n	3228 <get_active+0x30>
    320a:	687b      	ldr	r3, [r7, #4]
    320c:	115b      	asrs	r3, r3, #5
    320e:	009b      	lsls	r3, r3, #2
    3210:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3214:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    3218:	681b      	ldr	r3, [r3, #0]
    321a:	687a      	ldr	r2, [r7, #4]
    321c:	f002 021f 	and.w	r2, r2, #31
    3220:	2101      	movs	r1, #1
    3222:	fa01 f202 	lsl.w	r2, r1, r2
    3226:	4013      	ands	r3, r2
    3228:	4618      	mov	r0, r3
    322a:	370c      	adds	r7, #12
    322c:	46bd      	mov	sp, r7
    322e:	bc80      	pop	{r7}
    3230:	4770      	bx	lr

00003232 <set_pending>:
    3232:	b480      	push	{r7}
    3234:	b083      	sub	sp, #12
    3236:	af00      	add	r7, sp, #0
    3238:	6078      	str	r0, [r7, #4]
    323a:	687b      	ldr	r3, [r7, #4]
    323c:	2b3b      	cmp	r3, #59	; 0x3b
    323e:	dc17      	bgt.n	3270 <set_pending+0x3e>
    3240:	687b      	ldr	r3, [r7, #4]
    3242:	115b      	asrs	r3, r3, #5
    3244:	009b      	lsls	r3, r3, #2
    3246:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    324a:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    324e:	687a      	ldr	r2, [r7, #4]
    3250:	1152      	asrs	r2, r2, #5
    3252:	0092      	lsls	r2, r2, #2
    3254:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3258:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    325c:	6812      	ldr	r2, [r2, #0]
    325e:	6879      	ldr	r1, [r7, #4]
    3260:	f001 011f 	and.w	r1, r1, #31
    3264:	2001      	movs	r0, #1
    3266:	fa00 f101 	lsl.w	r1, r0, r1
    326a:	430a      	orrs	r2, r1
    326c:	601a      	str	r2, [r3, #0]
    326e:	e000      	b.n	3272 <set_pending+0x40>
    3270:	bf00      	nop
    3272:	370c      	adds	r7, #12
    3274:	46bd      	mov	sp, r7
    3276:	bc80      	pop	{r7}
    3278:	4770      	bx	lr

0000327a <clear_pending>:
    327a:	b480      	push	{r7}
    327c:	b083      	sub	sp, #12
    327e:	af00      	add	r7, sp, #0
    3280:	6078      	str	r0, [r7, #4]
    3282:	687b      	ldr	r3, [r7, #4]
    3284:	2b3b      	cmp	r3, #59	; 0x3b
    3286:	dc0c      	bgt.n	32a2 <clear_pending+0x28>
    3288:	687b      	ldr	r3, [r7, #4]
    328a:	115b      	asrs	r3, r3, #5
    328c:	009a      	lsls	r2, r3, #2
    328e:	4b07      	ldr	r3, [pc, #28]	; (32ac <clear_pending+0x32>)
    3290:	4413      	add	r3, r2
    3292:	687a      	ldr	r2, [r7, #4]
    3294:	f002 021f 	and.w	r2, r2, #31
    3298:	2101      	movs	r1, #1
    329a:	fa01 f202 	lsl.w	r2, r1, r2
    329e:	601a      	str	r2, [r3, #0]
    32a0:	e000      	b.n	32a4 <clear_pending+0x2a>
    32a2:	bf00      	nop
    32a4:	370c      	adds	r7, #12
    32a6:	46bd      	mov	sp, r7
    32a8:	bc80      	pop	{r7}
    32aa:	4770      	bx	lr
    32ac:	e000e280 	.word	0xe000e280

000032b0 <set_int_priority>:
    32b0:	b480      	push	{r7}
    32b2:	b083      	sub	sp, #12
    32b4:	af00      	add	r7, sp, #0
    32b6:	6078      	str	r0, [r7, #4]
    32b8:	6039      	str	r1, [r7, #0]
    32ba:	687b      	ldr	r3, [r7, #4]
    32bc:	2b00      	cmp	r3, #0
    32be:	db0d      	blt.n	32dc <set_int_priority+0x2c>
    32c0:	687b      	ldr	r3, [r7, #4]
    32c2:	2b3b      	cmp	r3, #59	; 0x3b
    32c4:	dc0a      	bgt.n	32dc <set_int_priority+0x2c>
    32c6:	687b      	ldr	r3, [r7, #4]
    32c8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    32cc:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    32d0:	683a      	ldr	r2, [r7, #0]
    32d2:	b2d2      	uxtb	r2, r2
    32d4:	0112      	lsls	r2, r2, #4
    32d6:	b2d2      	uxtb	r2, r2
    32d8:	701a      	strb	r2, [r3, #0]
    32da:	e012      	b.n	3302 <set_int_priority+0x52>
    32dc:	687b      	ldr	r3, [r7, #4]
    32de:	2b00      	cmp	r3, #0
    32e0:	da0f      	bge.n	3302 <set_int_priority+0x52>
    32e2:	687b      	ldr	r3, [r7, #4]
    32e4:	f113 0f0f 	cmn.w	r3, #15
    32e8:	db0b      	blt.n	3302 <set_int_priority+0x52>
    32ea:	687a      	ldr	r2, [r7, #4]
    32ec:	f06f 0303 	mvn.w	r3, #3
    32f0:	1a9b      	subs	r3, r3, r2
    32f2:	461a      	mov	r2, r3
    32f4:	4b05      	ldr	r3, [pc, #20]	; (330c <set_int_priority+0x5c>)
    32f6:	4413      	add	r3, r2
    32f8:	683a      	ldr	r2, [r7, #0]
    32fa:	b2d2      	uxtb	r2, r2
    32fc:	0112      	lsls	r2, r2, #4
    32fe:	b2d2      	uxtb	r2, r2
    3300:	701a      	strb	r2, [r3, #0]
    3302:	bf00      	nop
    3304:	370c      	adds	r7, #12
    3306:	46bd      	mov	sp, r7
    3308:	bc80      	pop	{r7}
    330a:	4770      	bx	lr
    330c:	e000ed18 	.word	0xe000ed18

00003310 <leap_year>:
    3310:	b480      	push	{r7}
    3312:	b083      	sub	sp, #12
    3314:	af00      	add	r7, sp, #0
    3316:	6078      	str	r0, [r7, #4]
    3318:	687b      	ldr	r3, [r7, #4]
    331a:	f003 0303 	and.w	r3, r3, #3
    331e:	2b00      	cmp	r3, #0
    3320:	d11a      	bne.n	3358 <leap_year+0x48>
    3322:	687a      	ldr	r2, [r7, #4]
    3324:	4b0f      	ldr	r3, [pc, #60]	; (3364 <leap_year+0x54>)
    3326:	fba3 1302 	umull	r1, r3, r3, r2
    332a:	095b      	lsrs	r3, r3, #5
    332c:	2164      	movs	r1, #100	; 0x64
    332e:	fb01 f303 	mul.w	r3, r1, r3
    3332:	1ad3      	subs	r3, r2, r3
    3334:	2b00      	cmp	r3, #0
    3336:	d10d      	bne.n	3354 <leap_year+0x44>
    3338:	687a      	ldr	r2, [r7, #4]
    333a:	4b0a      	ldr	r3, [pc, #40]	; (3364 <leap_year+0x54>)
    333c:	fba3 1302 	umull	r1, r3, r3, r2
    3340:	09db      	lsrs	r3, r3, #7
    3342:	f44f 71c8 	mov.w	r1, #400	; 0x190
    3346:	fb01 f303 	mul.w	r3, r1, r3
    334a:	1ad3      	subs	r3, r2, r3
    334c:	2b00      	cmp	r3, #0
    334e:	d001      	beq.n	3354 <leap_year+0x44>
    3350:	2300      	movs	r3, #0
    3352:	e002      	b.n	335a <leap_year+0x4a>
    3354:	2301      	movs	r3, #1
    3356:	e000      	b.n	335a <leap_year+0x4a>
    3358:	2300      	movs	r3, #0
    335a:	4618      	mov	r0, r3
    335c:	370c      	adds	r7, #12
    335e:	46bd      	mov	sp, r7
    3360:	bc80      	pop	{r7}
    3362:	4770      	bx	lr
    3364:	51eb851f 	.word	0x51eb851f

00003368 <sec_per_month>:
    3368:	b480      	push	{r7}
    336a:	b085      	sub	sp, #20
    336c:	af00      	add	r7, sp, #0
    336e:	6078      	str	r0, [r7, #4]
    3370:	6039      	str	r1, [r7, #0]
    3372:	4a0d      	ldr	r2, [pc, #52]	; (33a8 <sec_per_month+0x40>)
    3374:	683b      	ldr	r3, [r7, #0]
    3376:	4413      	add	r3, r2
    3378:	781b      	ldrb	r3, [r3, #0]
    337a:	461a      	mov	r2, r3
    337c:	4b0b      	ldr	r3, [pc, #44]	; (33ac <sec_per_month+0x44>)
    337e:	fb03 f302 	mul.w	r3, r3, r2
    3382:	60fb      	str	r3, [r7, #12]
    3384:	683b      	ldr	r3, [r7, #0]
    3386:	2b02      	cmp	r3, #2
    3388:	d108      	bne.n	339c <sec_per_month+0x34>
    338a:	687b      	ldr	r3, [r7, #4]
    338c:	2b00      	cmp	r3, #0
    338e:	d005      	beq.n	339c <sec_per_month+0x34>
    3390:	68fb      	ldr	r3, [r7, #12]
    3392:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    3396:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    339a:	60fb      	str	r3, [r7, #12]
    339c:	68fb      	ldr	r3, [r7, #12]
    339e:	4618      	mov	r0, r3
    33a0:	3714      	adds	r7, #20
    33a2:	46bd      	mov	sp, r7
    33a4:	bc80      	pop	{r7}
    33a6:	4770      	bx	lr
    33a8:	0000580c 	.word	0x0000580c
    33ac:	00015180 	.word	0x00015180

000033b0 <get_date_time>:
    33b0:	b580      	push	{r7, lr}
    33b2:	b086      	sub	sp, #24
    33b4:	af00      	add	r7, sp, #0
    33b6:	6078      	str	r0, [r7, #4]
    33b8:	4b66      	ldr	r3, [pc, #408]	; (3554 <get_date_time+0x1a4>)
    33ba:	699b      	ldr	r3, [r3, #24]
    33bc:	041a      	lsls	r2, r3, #16
    33be:	4b65      	ldr	r3, [pc, #404]	; (3554 <get_date_time+0x1a4>)
    33c0:	69db      	ldr	r3, [r3, #28]
    33c2:	4413      	add	r3, r2
    33c4:	617b      	str	r3, [r7, #20]
    33c6:	687b      	ldr	r3, [r7, #4]
    33c8:	f240 72b2 	movw	r2, #1970	; 0x7b2
    33cc:	811a      	strh	r2, [r3, #8]
    33ce:	f240 70b2 	movw	r0, #1970	; 0x7b2
    33d2:	f7ff ff9d 	bl	3310 <leap_year>
    33d6:	6138      	str	r0, [r7, #16]
    33d8:	e019      	b.n	340e <get_date_time+0x5e>
    33da:	693b      	ldr	r3, [r7, #16]
    33dc:	2b00      	cmp	r3, #0
    33de:	d006      	beq.n	33ee <get_date_time+0x3e>
    33e0:	697b      	ldr	r3, [r7, #20]
    33e2:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    33e6:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    33ea:	617b      	str	r3, [r7, #20]
    33ec:	e003      	b.n	33f6 <get_date_time+0x46>
    33ee:	697a      	ldr	r2, [r7, #20]
    33f0:	4b59      	ldr	r3, [pc, #356]	; (3558 <get_date_time+0x1a8>)
    33f2:	4413      	add	r3, r2
    33f4:	617b      	str	r3, [r7, #20]
    33f6:	687b      	ldr	r3, [r7, #4]
    33f8:	891b      	ldrh	r3, [r3, #8]
    33fa:	3301      	adds	r3, #1
    33fc:	b29a      	uxth	r2, r3
    33fe:	687b      	ldr	r3, [r7, #4]
    3400:	811a      	strh	r2, [r3, #8]
    3402:	687b      	ldr	r3, [r7, #4]
    3404:	891b      	ldrh	r3, [r3, #8]
    3406:	4618      	mov	r0, r3
    3408:	f7ff ff82 	bl	3310 <leap_year>
    340c:	6138      	str	r0, [r7, #16]
    340e:	693b      	ldr	r3, [r7, #16]
    3410:	2b00      	cmp	r3, #0
    3412:	d103      	bne.n	341c <get_date_time+0x6c>
    3414:	697b      	ldr	r3, [r7, #20]
    3416:	4a51      	ldr	r2, [pc, #324]	; (355c <get_date_time+0x1ac>)
    3418:	4293      	cmp	r3, r2
    341a:	d8de      	bhi.n	33da <get_date_time+0x2a>
    341c:	693b      	ldr	r3, [r7, #16]
    341e:	2b00      	cmp	r3, #0
    3420:	d003      	beq.n	342a <get_date_time+0x7a>
    3422:	697b      	ldr	r3, [r7, #20]
    3424:	4a4e      	ldr	r2, [pc, #312]	; (3560 <get_date_time+0x1b0>)
    3426:	4293      	cmp	r3, r2
    3428:	d8d7      	bhi.n	33da <get_date_time+0x2a>
    342a:	687a      	ldr	r2, [r7, #4]
    342c:	8853      	ldrh	r3, [r2, #2]
    342e:	2101      	movs	r1, #1
    3430:	f361 1389 	bfi	r3, r1, #6, #4
    3434:	8053      	strh	r3, [r2, #2]
    3436:	687a      	ldr	r2, [r7, #4]
    3438:	7893      	ldrb	r3, [r2, #2]
    343a:	2101      	movs	r1, #1
    343c:	f361 0345 	bfi	r3, r1, #1, #5
    3440:	7093      	strb	r3, [r2, #2]
    3442:	687a      	ldr	r2, [r7, #4]
    3444:	6813      	ldr	r3, [r2, #0]
    3446:	f36f 3310 	bfc	r3, #12, #5
    344a:	6013      	str	r3, [r2, #0]
    344c:	687a      	ldr	r2, [r7, #4]
    344e:	8813      	ldrh	r3, [r2, #0]
    3450:	f36f 138b 	bfc	r3, #6, #6
    3454:	8013      	strh	r3, [r2, #0]
    3456:	687a      	ldr	r2, [r7, #4]
    3458:	7813      	ldrb	r3, [r2, #0]
    345a:	f36f 0305 	bfc	r3, #0, #6
    345e:	7013      	strb	r3, [r2, #0]
    3460:	e011      	b.n	3486 <get_date_time+0xd6>
    3462:	687b      	ldr	r3, [r7, #4]
    3464:	885b      	ldrh	r3, [r3, #2]
    3466:	f3c3 1383 	ubfx	r3, r3, #6, #4
    346a:	b2db      	uxtb	r3, r3
    346c:	3301      	adds	r3, #1
    346e:	f003 030f 	and.w	r3, r3, #15
    3472:	b2d9      	uxtb	r1, r3
    3474:	687a      	ldr	r2, [r7, #4]
    3476:	8853      	ldrh	r3, [r2, #2]
    3478:	f361 1389 	bfi	r3, r1, #6, #4
    347c:	8053      	strh	r3, [r2, #2]
    347e:	697a      	ldr	r2, [r7, #20]
    3480:	68fb      	ldr	r3, [r7, #12]
    3482:	1ad3      	subs	r3, r2, r3
    3484:	617b      	str	r3, [r7, #20]
    3486:	687b      	ldr	r3, [r7, #4]
    3488:	885b      	ldrh	r3, [r3, #2]
    348a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    348e:	b2db      	uxtb	r3, r3
    3490:	4619      	mov	r1, r3
    3492:	6938      	ldr	r0, [r7, #16]
    3494:	f7ff ff68 	bl	3368 <sec_per_month>
    3498:	60f8      	str	r0, [r7, #12]
    349a:	68fa      	ldr	r2, [r7, #12]
    349c:	697b      	ldr	r3, [r7, #20]
    349e:	429a      	cmp	r2, r3
    34a0:	d3df      	bcc.n	3462 <get_date_time+0xb2>
    34a2:	697b      	ldr	r3, [r7, #20]
    34a4:	4a2f      	ldr	r2, [pc, #188]	; (3564 <get_date_time+0x1b4>)
    34a6:	fba2 2303 	umull	r2, r3, r2, r3
    34aa:	0c1b      	lsrs	r3, r3, #16
    34ac:	b2db      	uxtb	r3, r3
    34ae:	3301      	adds	r3, #1
    34b0:	b2db      	uxtb	r3, r3
    34b2:	f003 031f 	and.w	r3, r3, #31
    34b6:	b2d9      	uxtb	r1, r3
    34b8:	687a      	ldr	r2, [r7, #4]
    34ba:	7893      	ldrb	r3, [r2, #2]
    34bc:	f361 0345 	bfi	r3, r1, #1, #5
    34c0:	7093      	strb	r3, [r2, #2]
    34c2:	697b      	ldr	r3, [r7, #20]
    34c4:	4a27      	ldr	r2, [pc, #156]	; (3564 <get_date_time+0x1b4>)
    34c6:	fba2 1203 	umull	r1, r2, r2, r3
    34ca:	0c12      	lsrs	r2, r2, #16
    34cc:	4926      	ldr	r1, [pc, #152]	; (3568 <get_date_time+0x1b8>)
    34ce:	fb01 f202 	mul.w	r2, r1, r2
    34d2:	1a9b      	subs	r3, r3, r2
    34d4:	617b      	str	r3, [r7, #20]
    34d6:	697b      	ldr	r3, [r7, #20]
    34d8:	4a24      	ldr	r2, [pc, #144]	; (356c <get_date_time+0x1bc>)
    34da:	fba2 2303 	umull	r2, r3, r2, r3
    34de:	0adb      	lsrs	r3, r3, #11
    34e0:	b2db      	uxtb	r3, r3
    34e2:	f003 031f 	and.w	r3, r3, #31
    34e6:	b2d9      	uxtb	r1, r3
    34e8:	687a      	ldr	r2, [r7, #4]
    34ea:	6813      	ldr	r3, [r2, #0]
    34ec:	f361 3310 	bfi	r3, r1, #12, #5
    34f0:	6013      	str	r3, [r2, #0]
    34f2:	697b      	ldr	r3, [r7, #20]
    34f4:	4a1d      	ldr	r2, [pc, #116]	; (356c <get_date_time+0x1bc>)
    34f6:	fba2 1203 	umull	r1, r2, r2, r3
    34fa:	0ad2      	lsrs	r2, r2, #11
    34fc:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    3500:	fb01 f202 	mul.w	r2, r1, r2
    3504:	1a9b      	subs	r3, r3, r2
    3506:	617b      	str	r3, [r7, #20]
    3508:	697b      	ldr	r3, [r7, #20]
    350a:	4a19      	ldr	r2, [pc, #100]	; (3570 <get_date_time+0x1c0>)
    350c:	fba2 2303 	umull	r2, r3, r2, r3
    3510:	095b      	lsrs	r3, r3, #5
    3512:	b2db      	uxtb	r3, r3
    3514:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3518:	b2d9      	uxtb	r1, r3
    351a:	687a      	ldr	r2, [r7, #4]
    351c:	8813      	ldrh	r3, [r2, #0]
    351e:	f361 138b 	bfi	r3, r1, #6, #6
    3522:	8013      	strh	r3, [r2, #0]
    3524:	6979      	ldr	r1, [r7, #20]
    3526:	4b12      	ldr	r3, [pc, #72]	; (3570 <get_date_time+0x1c0>)
    3528:	fba3 2301 	umull	r2, r3, r3, r1
    352c:	095a      	lsrs	r2, r3, #5
    352e:	4613      	mov	r3, r2
    3530:	011b      	lsls	r3, r3, #4
    3532:	1a9b      	subs	r3, r3, r2
    3534:	009b      	lsls	r3, r3, #2
    3536:	1aca      	subs	r2, r1, r3
    3538:	b2d3      	uxtb	r3, r2
    353a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    353e:	b2d9      	uxtb	r1, r3
    3540:	687a      	ldr	r2, [r7, #4]
    3542:	7813      	ldrb	r3, [r2, #0]
    3544:	f361 0305 	bfi	r3, r1, #0, #6
    3548:	7013      	strb	r3, [r2, #0]
    354a:	bf00      	nop
    354c:	3718      	adds	r7, #24
    354e:	46bd      	mov	sp, r7
    3550:	bd80      	pop	{r7, pc}
    3552:	bf00      	nop
    3554:	40002800 	.word	0x40002800
    3558:	fe1ecc80 	.word	0xfe1ecc80
    355c:	01e1337f 	.word	0x01e1337f
    3560:	01e284ff 	.word	0x01e284ff
    3564:	c22e4507 	.word	0xc22e4507
    3568:	00015180 	.word	0x00015180
    356c:	91a2b3c5 	.word	0x91a2b3c5
    3570:	88888889 	.word	0x88888889

00003574 <set_date_time>:
    3574:	b580      	push	{r7, lr}
    3576:	b086      	sub	sp, #24
    3578:	af00      	add	r7, sp, #0
    357a:	6078      	str	r0, [r7, #4]
    357c:	2300      	movs	r3, #0
    357e:	613b      	str	r3, [r7, #16]
    3580:	687b      	ldr	r3, [r7, #4]
    3582:	891b      	ldrh	r3, [r3, #8]
    3584:	f240 72b1 	movw	r2, #1969	; 0x7b1
    3588:	4293      	cmp	r3, r2
    358a:	d803      	bhi.n	3594 <set_date_time+0x20>
    358c:	687b      	ldr	r3, [r7, #4]
    358e:	f240 72b2 	movw	r2, #1970	; 0x7b2
    3592:	811a      	strh	r2, [r3, #8]
    3594:	687b      	ldr	r3, [r7, #4]
    3596:	891b      	ldrh	r3, [r3, #8]
    3598:	f640 023a 	movw	r2, #2106	; 0x83a
    359c:	4293      	cmp	r3, r2
    359e:	d903      	bls.n	35a8 <set_date_time+0x34>
    35a0:	687b      	ldr	r3, [r7, #4]
    35a2:	f640 023a 	movw	r2, #2106	; 0x83a
    35a6:	811a      	strh	r2, [r3, #8]
    35a8:	687b      	ldr	r3, [r7, #4]
    35aa:	891b      	ldrh	r3, [r3, #8]
    35ac:	4618      	mov	r0, r3
    35ae:	f7ff feaf 	bl	3310 <leap_year>
    35b2:	60f8      	str	r0, [r7, #12]
    35b4:	f240 73b2 	movw	r3, #1970	; 0x7b2
    35b8:	617b      	str	r3, [r7, #20]
    35ba:	e013      	b.n	35e4 <set_date_time+0x70>
    35bc:	6978      	ldr	r0, [r7, #20]
    35be:	f7ff fea7 	bl	3310 <leap_year>
    35c2:	4603      	mov	r3, r0
    35c4:	2b00      	cmp	r3, #0
    35c6:	d006      	beq.n	35d6 <set_date_time+0x62>
    35c8:	693b      	ldr	r3, [r7, #16]
    35ca:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    35ce:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    35d2:	613b      	str	r3, [r7, #16]
    35d4:	e003      	b.n	35de <set_date_time+0x6a>
    35d6:	693a      	ldr	r2, [r7, #16]
    35d8:	4b42      	ldr	r3, [pc, #264]	; (36e4 <set_date_time+0x170>)
    35da:	4413      	add	r3, r2
    35dc:	613b      	str	r3, [r7, #16]
    35de:	697b      	ldr	r3, [r7, #20]
    35e0:	3301      	adds	r3, #1
    35e2:	617b      	str	r3, [r7, #20]
    35e4:	687b      	ldr	r3, [r7, #4]
    35e6:	891b      	ldrh	r3, [r3, #8]
    35e8:	461a      	mov	r2, r3
    35ea:	697b      	ldr	r3, [r7, #20]
    35ec:	429a      	cmp	r2, r3
    35ee:	d8e5      	bhi.n	35bc <set_date_time+0x48>
    35f0:	2301      	movs	r3, #1
    35f2:	617b      	str	r3, [r7, #20]
    35f4:	e00a      	b.n	360c <set_date_time+0x98>
    35f6:	6979      	ldr	r1, [r7, #20]
    35f8:	68f8      	ldr	r0, [r7, #12]
    35fa:	f7ff feb5 	bl	3368 <sec_per_month>
    35fe:	4602      	mov	r2, r0
    3600:	693b      	ldr	r3, [r7, #16]
    3602:	4413      	add	r3, r2
    3604:	613b      	str	r3, [r7, #16]
    3606:	697b      	ldr	r3, [r7, #20]
    3608:	3301      	adds	r3, #1
    360a:	617b      	str	r3, [r7, #20]
    360c:	687b      	ldr	r3, [r7, #4]
    360e:	885b      	ldrh	r3, [r3, #2]
    3610:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3614:	b2db      	uxtb	r3, r3
    3616:	461a      	mov	r2, r3
    3618:	697b      	ldr	r3, [r7, #20]
    361a:	429a      	cmp	r2, r3
    361c:	d8eb      	bhi.n	35f6 <set_date_time+0x82>
    361e:	687b      	ldr	r3, [r7, #4]
    3620:	789b      	ldrb	r3, [r3, #2]
    3622:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3626:	b2db      	uxtb	r3, r3
    3628:	3b01      	subs	r3, #1
    362a:	4a2f      	ldr	r2, [pc, #188]	; (36e8 <set_date_time+0x174>)
    362c:	fb02 f303 	mul.w	r3, r2, r3
    3630:	461a      	mov	r2, r3
    3632:	693b      	ldr	r3, [r7, #16]
    3634:	4413      	add	r3, r2
    3636:	613b      	str	r3, [r7, #16]
    3638:	687b      	ldr	r3, [r7, #4]
    363a:	681b      	ldr	r3, [r3, #0]
    363c:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3640:	b2db      	uxtb	r3, r3
    3642:	461a      	mov	r2, r3
    3644:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    3648:	fb03 f302 	mul.w	r3, r3, r2
    364c:	461a      	mov	r2, r3
    364e:	693b      	ldr	r3, [r7, #16]
    3650:	4413      	add	r3, r2
    3652:	613b      	str	r3, [r7, #16]
    3654:	687b      	ldr	r3, [r7, #4]
    3656:	881b      	ldrh	r3, [r3, #0]
    3658:	f3c3 1385 	ubfx	r3, r3, #6, #6
    365c:	b2db      	uxtb	r3, r3
    365e:	461a      	mov	r2, r3
    3660:	4613      	mov	r3, r2
    3662:	011b      	lsls	r3, r3, #4
    3664:	1a9b      	subs	r3, r3, r2
    3666:	009b      	lsls	r3, r3, #2
    3668:	461a      	mov	r2, r3
    366a:	693b      	ldr	r3, [r7, #16]
    366c:	4413      	add	r3, r2
    366e:	613b      	str	r3, [r7, #16]
    3670:	687b      	ldr	r3, [r7, #4]
    3672:	781b      	ldrb	r3, [r3, #0]
    3674:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3678:	b2db      	uxtb	r3, r3
    367a:	461a      	mov	r2, r3
    367c:	693b      	ldr	r3, [r7, #16]
    367e:	4413      	add	r3, r2
    3680:	613b      	str	r3, [r7, #16]
    3682:	4a1a      	ldr	r2, [pc, #104]	; (36ec <set_date_time+0x178>)
    3684:	4b19      	ldr	r3, [pc, #100]	; (36ec <set_date_time+0x178>)
    3686:	69db      	ldr	r3, [r3, #28]
    3688:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    368c:	61d3      	str	r3, [r2, #28]
    368e:	4a18      	ldr	r2, [pc, #96]	; (36f0 <set_date_time+0x17c>)
    3690:	4b17      	ldr	r3, [pc, #92]	; (36f0 <set_date_time+0x17c>)
    3692:	681b      	ldr	r3, [r3, #0]
    3694:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3698:	6013      	str	r3, [r2, #0]
    369a:	4a16      	ldr	r2, [pc, #88]	; (36f4 <set_date_time+0x180>)
    369c:	4b15      	ldr	r3, [pc, #84]	; (36f4 <set_date_time+0x180>)
    369e:	685b      	ldr	r3, [r3, #4]
    36a0:	f043 0310 	orr.w	r3, r3, #16
    36a4:	6053      	str	r3, [r2, #4]
    36a6:	4a13      	ldr	r2, [pc, #76]	; (36f4 <set_date_time+0x180>)
    36a8:	693b      	ldr	r3, [r7, #16]
    36aa:	0c1b      	lsrs	r3, r3, #16
    36ac:	6193      	str	r3, [r2, #24]
    36ae:	4a11      	ldr	r2, [pc, #68]	; (36f4 <set_date_time+0x180>)
    36b0:	693b      	ldr	r3, [r7, #16]
    36b2:	b29b      	uxth	r3, r3
    36b4:	61d3      	str	r3, [r2, #28]
    36b6:	4a0f      	ldr	r2, [pc, #60]	; (36f4 <set_date_time+0x180>)
    36b8:	4b0e      	ldr	r3, [pc, #56]	; (36f4 <set_date_time+0x180>)
    36ba:	685b      	ldr	r3, [r3, #4]
    36bc:	f023 0310 	bic.w	r3, r3, #16
    36c0:	6053      	str	r3, [r2, #4]
    36c2:	bf00      	nop
    36c4:	4b0b      	ldr	r3, [pc, #44]	; (36f4 <set_date_time+0x180>)
    36c6:	685b      	ldr	r3, [r3, #4]
    36c8:	f003 0320 	and.w	r3, r3, #32
    36cc:	2b00      	cmp	r3, #0
    36ce:	d0f9      	beq.n	36c4 <set_date_time+0x150>
    36d0:	4a07      	ldr	r2, [pc, #28]	; (36f0 <set_date_time+0x17c>)
    36d2:	4b07      	ldr	r3, [pc, #28]	; (36f0 <set_date_time+0x17c>)
    36d4:	681b      	ldr	r3, [r3, #0]
    36d6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    36da:	6013      	str	r3, [r2, #0]
    36dc:	bf00      	nop
    36de:	3718      	adds	r7, #24
    36e0:	46bd      	mov	sp, r7
    36e2:	bd80      	pop	{r7, pc}
    36e4:	01e13380 	.word	0x01e13380
    36e8:	00015180 	.word	0x00015180
    36ec:	40021000 	.word	0x40021000
    36f0:	40007000 	.word	0x40007000
    36f4:	40002800 	.word	0x40002800

000036f8 <rtc_init>:
    36f8:	b580      	push	{r7, lr}
    36fa:	b082      	sub	sp, #8
    36fc:	af00      	add	r7, sp, #0
    36fe:	6078      	str	r0, [r7, #4]
    3700:	6039      	str	r1, [r7, #0]
    3702:	4b4a      	ldr	r3, [pc, #296]	; (382c <rtc_init+0x134>)
    3704:	685b      	ldr	r3, [r3, #4]
    3706:	f64a 2255 	movw	r2, #43605	; 0xaa55
    370a:	4293      	cmp	r3, r2
    370c:	f000 8082 	beq.w	3814 <rtc_init+0x11c>
    3710:	4a47      	ldr	r2, [pc, #284]	; (3830 <rtc_init+0x138>)
    3712:	4b47      	ldr	r3, [pc, #284]	; (3830 <rtc_init+0x138>)
    3714:	69db      	ldr	r3, [r3, #28]
    3716:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    371a:	61d3      	str	r3, [r2, #28]
    371c:	4a45      	ldr	r2, [pc, #276]	; (3834 <rtc_init+0x13c>)
    371e:	4b45      	ldr	r3, [pc, #276]	; (3834 <rtc_init+0x13c>)
    3720:	681b      	ldr	r3, [r3, #0]
    3722:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3726:	6013      	str	r3, [r2, #0]
    3728:	4a41      	ldr	r2, [pc, #260]	; (3830 <rtc_init+0x138>)
    372a:	4b41      	ldr	r3, [pc, #260]	; (3830 <rtc_init+0x138>)
    372c:	6a1b      	ldr	r3, [r3, #32]
    372e:	f043 0301 	orr.w	r3, r3, #1
    3732:	6213      	str	r3, [r2, #32]
    3734:	bf00      	nop
    3736:	4b3e      	ldr	r3, [pc, #248]	; (3830 <rtc_init+0x138>)
    3738:	6a1b      	ldr	r3, [r3, #32]
    373a:	f003 0302 	and.w	r3, r3, #2
    373e:	2b00      	cmp	r3, #0
    3740:	d0f9      	beq.n	3736 <rtc_init+0x3e>
    3742:	4a3b      	ldr	r2, [pc, #236]	; (3830 <rtc_init+0x138>)
    3744:	4b3a      	ldr	r3, [pc, #232]	; (3830 <rtc_init+0x138>)
    3746:	6a1b      	ldr	r3, [r3, #32]
    3748:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    374c:	6213      	str	r3, [r2, #32]
    374e:	bf00      	nop
    3750:	4b39      	ldr	r3, [pc, #228]	; (3838 <rtc_init+0x140>)
    3752:	685b      	ldr	r3, [r3, #4]
    3754:	f003 0308 	and.w	r3, r3, #8
    3758:	2b00      	cmp	r3, #0
    375a:	d0f9      	beq.n	3750 <rtc_init+0x58>
    375c:	bf00      	nop
    375e:	4b36      	ldr	r3, [pc, #216]	; (3838 <rtc_init+0x140>)
    3760:	685b      	ldr	r3, [r3, #4]
    3762:	f003 0320 	and.w	r3, r3, #32
    3766:	2b00      	cmp	r3, #0
    3768:	d0f9      	beq.n	375e <rtc_init+0x66>
    376a:	4a33      	ldr	r2, [pc, #204]	; (3838 <rtc_init+0x140>)
    376c:	4b32      	ldr	r3, [pc, #200]	; (3838 <rtc_init+0x140>)
    376e:	685b      	ldr	r3, [r3, #4]
    3770:	f043 0310 	orr.w	r3, r3, #16
    3774:	6053      	str	r3, [r2, #4]
    3776:	bf00      	nop
    3778:	4b2f      	ldr	r3, [pc, #188]	; (3838 <rtc_init+0x140>)
    377a:	685b      	ldr	r3, [r3, #4]
    377c:	f003 0320 	and.w	r3, r3, #32
    3780:	2b00      	cmp	r3, #0
    3782:	d0f9      	beq.n	3778 <rtc_init+0x80>
    3784:	492c      	ldr	r1, [pc, #176]	; (3838 <rtc_init+0x140>)
    3786:	4b2c      	ldr	r3, [pc, #176]	; (3838 <rtc_init+0x140>)
    3788:	681a      	ldr	r2, [r3, #0]
    378a:	683b      	ldr	r3, [r7, #0]
    378c:	4313      	orrs	r3, r2
    378e:	600b      	str	r3, [r1, #0]
    3790:	bf00      	nop
    3792:	4b29      	ldr	r3, [pc, #164]	; (3838 <rtc_init+0x140>)
    3794:	685b      	ldr	r3, [r3, #4]
    3796:	f003 0320 	and.w	r3, r3, #32
    379a:	2b00      	cmp	r3, #0
    379c:	d0f9      	beq.n	3792 <rtc_init+0x9a>
    379e:	4a26      	ldr	r2, [pc, #152]	; (3838 <rtc_init+0x140>)
    37a0:	687b      	ldr	r3, [r7, #4]
    37a2:	03db      	lsls	r3, r3, #15
    37a4:	4925      	ldr	r1, [pc, #148]	; (383c <rtc_init+0x144>)
    37a6:	fba1 1303 	umull	r1, r3, r1, r3
    37aa:	099b      	lsrs	r3, r3, #6
    37ac:	3b01      	subs	r3, #1
    37ae:	b29b      	uxth	r3, r3
    37b0:	60d3      	str	r3, [r2, #12]
    37b2:	bf00      	nop
    37b4:	4b20      	ldr	r3, [pc, #128]	; (3838 <rtc_init+0x140>)
    37b6:	685b      	ldr	r3, [r3, #4]
    37b8:	f003 0320 	and.w	r3, r3, #32
    37bc:	2b00      	cmp	r3, #0
    37be:	d0f9      	beq.n	37b4 <rtc_init+0xbc>
    37c0:	4a1d      	ldr	r2, [pc, #116]	; (3838 <rtc_init+0x140>)
    37c2:	687b      	ldr	r3, [r7, #4]
    37c4:	03db      	lsls	r3, r3, #15
    37c6:	491d      	ldr	r1, [pc, #116]	; (383c <rtc_init+0x144>)
    37c8:	fba1 1303 	umull	r1, r3, r1, r3
    37cc:	099b      	lsrs	r3, r3, #6
    37ce:	3b01      	subs	r3, #1
    37d0:	0c1b      	lsrs	r3, r3, #16
    37d2:	f003 030f 	and.w	r3, r3, #15
    37d6:	6093      	str	r3, [r2, #8]
    37d8:	bf00      	nop
    37da:	4b17      	ldr	r3, [pc, #92]	; (3838 <rtc_init+0x140>)
    37dc:	685b      	ldr	r3, [r3, #4]
    37de:	f003 0320 	and.w	r3, r3, #32
    37e2:	2b00      	cmp	r3, #0
    37e4:	d0f9      	beq.n	37da <rtc_init+0xe2>
    37e6:	4b11      	ldr	r3, [pc, #68]	; (382c <rtc_init+0x134>)
    37e8:	f64a 2255 	movw	r2, #43605	; 0xaa55
    37ec:	605a      	str	r2, [r3, #4]
    37ee:	4a12      	ldr	r2, [pc, #72]	; (3838 <rtc_init+0x140>)
    37f0:	4b11      	ldr	r3, [pc, #68]	; (3838 <rtc_init+0x140>)
    37f2:	685b      	ldr	r3, [r3, #4]
    37f4:	f023 0310 	bic.w	r3, r3, #16
    37f8:	6053      	str	r3, [r2, #4]
    37fa:	bf00      	nop
    37fc:	4b0e      	ldr	r3, [pc, #56]	; (3838 <rtc_init+0x140>)
    37fe:	685b      	ldr	r3, [r3, #4]
    3800:	f003 0320 	and.w	r3, r3, #32
    3804:	2b00      	cmp	r3, #0
    3806:	d0f9      	beq.n	37fc <rtc_init+0x104>
    3808:	4a0a      	ldr	r2, [pc, #40]	; (3834 <rtc_init+0x13c>)
    380a:	4b0a      	ldr	r3, [pc, #40]	; (3834 <rtc_init+0x13c>)
    380c:	681b      	ldr	r3, [r3, #0]
    380e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3812:	6013      	str	r3, [r2, #0]
    3814:	210f      	movs	r1, #15
    3816:	2003      	movs	r0, #3
    3818:	f7ff fd4a 	bl	32b0 <set_int_priority>
    381c:	2003      	movs	r0, #3
    381e:	f7ff fc8d 	bl	313c <enable_interrupt>
    3822:	bf00      	nop
    3824:	3708      	adds	r7, #8
    3826:	46bd      	mov	sp, r7
    3828:	bd80      	pop	{r7, pc}
    382a:	bf00      	nop
    382c:	40006c00 	.word	0x40006c00
    3830:	40021000 	.word	0x40021000
    3834:	40007000 	.word	0x40007000
    3838:	40002800 	.word	0x40002800
    383c:	10624dd3 	.word	0x10624dd3

00003840 <reset_backup_domain>:
    3840:	b480      	push	{r7}
    3842:	af00      	add	r7, sp, #0
    3844:	4a0a      	ldr	r2, [pc, #40]	; (3870 <reset_backup_domain+0x30>)
    3846:	4b0a      	ldr	r3, [pc, #40]	; (3870 <reset_backup_domain+0x30>)
    3848:	69db      	ldr	r3, [r3, #28]
    384a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    384e:	61d3      	str	r3, [r2, #28]
    3850:	4a07      	ldr	r2, [pc, #28]	; (3870 <reset_backup_domain+0x30>)
    3852:	4b07      	ldr	r3, [pc, #28]	; (3870 <reset_backup_domain+0x30>)
    3854:	6a1b      	ldr	r3, [r3, #32]
    3856:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    385a:	6213      	str	r3, [r2, #32]
    385c:	4a04      	ldr	r2, [pc, #16]	; (3870 <reset_backup_domain+0x30>)
    385e:	4b04      	ldr	r3, [pc, #16]	; (3870 <reset_backup_domain+0x30>)
    3860:	6a1b      	ldr	r3, [r3, #32]
    3862:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    3866:	6213      	str	r3, [r2, #32]
    3868:	bf00      	nop
    386a:	46bd      	mov	sp, r7
    386c:	bc80      	pop	{r7}
    386e:	4770      	bx	lr
    3870:	40021000 	.word	0x40021000

00003874 <rtc_clock_trim>:
    3874:	b480      	push	{r7}
    3876:	b083      	sub	sp, #12
    3878:	af00      	add	r7, sp, #0
    387a:	6078      	str	r0, [r7, #4]
    387c:	4a34      	ldr	r2, [pc, #208]	; (3950 <rtc_clock_trim+0xdc>)
    387e:	4b34      	ldr	r3, [pc, #208]	; (3950 <rtc_clock_trim+0xdc>)
    3880:	69db      	ldr	r3, [r3, #28]
    3882:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3886:	61d3      	str	r3, [r2, #28]
    3888:	bf00      	nop
    388a:	4b32      	ldr	r3, [pc, #200]	; (3954 <rtc_clock_trim+0xe0>)
    388c:	685b      	ldr	r3, [r3, #4]
    388e:	f003 0308 	and.w	r3, r3, #8
    3892:	2b00      	cmp	r3, #0
    3894:	d0f9      	beq.n	388a <rtc_clock_trim+0x16>
    3896:	4a30      	ldr	r2, [pc, #192]	; (3958 <rtc_clock_trim+0xe4>)
    3898:	4b2f      	ldr	r3, [pc, #188]	; (3958 <rtc_clock_trim+0xe4>)
    389a:	681b      	ldr	r3, [r3, #0]
    389c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    38a0:	6013      	str	r3, [r2, #0]
    38a2:	4a2c      	ldr	r2, [pc, #176]	; (3954 <rtc_clock_trim+0xe0>)
    38a4:	4b2b      	ldr	r3, [pc, #172]	; (3954 <rtc_clock_trim+0xe0>)
    38a6:	685b      	ldr	r3, [r3, #4]
    38a8:	f043 0310 	orr.w	r3, r3, #16
    38ac:	6053      	str	r3, [r2, #4]
    38ae:	4a2b      	ldr	r2, [pc, #172]	; (395c <rtc_clock_trim+0xe8>)
    38b0:	4b2a      	ldr	r3, [pc, #168]	; (395c <rtc_clock_trim+0xe8>)
    38b2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    38b4:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    38b8:	62d3      	str	r3, [r2, #44]	; 0x2c
    38ba:	687b      	ldr	r3, [r7, #4]
    38bc:	2b00      	cmp	r3, #0
    38be:	d10a      	bne.n	38d6 <rtc_clock_trim+0x62>
    38c0:	4b26      	ldr	r3, [pc, #152]	; (395c <rtc_clock_trim+0xe8>)
    38c2:	2200      	movs	r2, #0
    38c4:	62da      	str	r2, [r3, #44]	; 0x2c
    38c6:	4b23      	ldr	r3, [pc, #140]	; (3954 <rtc_clock_trim+0xe0>)
    38c8:	f647 72ff 	movw	r2, #32767	; 0x7fff
    38cc:	60da      	str	r2, [r3, #12]
    38ce:	4b21      	ldr	r3, [pc, #132]	; (3954 <rtc_clock_trim+0xe0>)
    38d0:	2200      	movs	r2, #0
    38d2:	609a      	str	r2, [r3, #8]
    38d4:	e023      	b.n	391e <rtc_clock_trim+0xaa>
    38d6:	687b      	ldr	r3, [r7, #4]
    38d8:	2b00      	cmp	r3, #0
    38da:	dd0a      	ble.n	38f2 <rtc_clock_trim+0x7e>
    38dc:	687b      	ldr	r3, [r7, #4]
    38de:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    38e2:	607b      	str	r3, [r7, #4]
    38e4:	491d      	ldr	r1, [pc, #116]	; (395c <rtc_clock_trim+0xe8>)
    38e6:	4b1d      	ldr	r3, [pc, #116]	; (395c <rtc_clock_trim+0xe8>)
    38e8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    38ea:	687b      	ldr	r3, [r7, #4]
    38ec:	4313      	orrs	r3, r2
    38ee:	62cb      	str	r3, [r1, #44]	; 0x2c
    38f0:	e015      	b.n	391e <rtc_clock_trim+0xaa>
    38f2:	687b      	ldr	r3, [r7, #4]
    38f4:	425b      	negs	r3, r3
    38f6:	607b      	str	r3, [r7, #4]
    38f8:	687b      	ldr	r3, [r7, #4]
    38fa:	2b7f      	cmp	r3, #127	; 0x7f
    38fc:	dd01      	ble.n	3902 <rtc_clock_trim+0x8e>
    38fe:	237f      	movs	r3, #127	; 0x7f
    3900:	607b      	str	r3, [r7, #4]
    3902:	4b16      	ldr	r3, [pc, #88]	; (395c <rtc_clock_trim+0xe8>)
    3904:	2200      	movs	r2, #0
    3906:	62da      	str	r2, [r3, #44]	; 0x2c
    3908:	4a12      	ldr	r2, [pc, #72]	; (3954 <rtc_clock_trim+0xe0>)
    390a:	687b      	ldr	r3, [r7, #4]
    390c:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3910:	33ff      	adds	r3, #255	; 0xff
    3912:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3916:	60d3      	str	r3, [r2, #12]
    3918:	4b0e      	ldr	r3, [pc, #56]	; (3954 <rtc_clock_trim+0xe0>)
    391a:	2200      	movs	r2, #0
    391c:	609a      	str	r2, [r3, #8]
    391e:	4a0d      	ldr	r2, [pc, #52]	; (3954 <rtc_clock_trim+0xe0>)
    3920:	4b0c      	ldr	r3, [pc, #48]	; (3954 <rtc_clock_trim+0xe0>)
    3922:	685b      	ldr	r3, [r3, #4]
    3924:	f023 0310 	bic.w	r3, r3, #16
    3928:	6053      	str	r3, [r2, #4]
    392a:	bf00      	nop
    392c:	4b09      	ldr	r3, [pc, #36]	; (3954 <rtc_clock_trim+0xe0>)
    392e:	685b      	ldr	r3, [r3, #4]
    3930:	f003 0320 	and.w	r3, r3, #32
    3934:	2b00      	cmp	r3, #0
    3936:	d0f9      	beq.n	392c <rtc_clock_trim+0xb8>
    3938:	4a07      	ldr	r2, [pc, #28]	; (3958 <rtc_clock_trim+0xe4>)
    393a:	4b07      	ldr	r3, [pc, #28]	; (3958 <rtc_clock_trim+0xe4>)
    393c:	681b      	ldr	r3, [r3, #0]
    393e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3942:	6013      	str	r3, [r2, #0]
    3944:	bf00      	nop
    3946:	370c      	adds	r7, #12
    3948:	46bd      	mov	sp, r7
    394a:	bc80      	pop	{r7}
    394c:	4770      	bx	lr
    394e:	bf00      	nop
    3950:	40021000 	.word	0x40021000
    3954:	40002800 	.word	0x40002800
    3958:	40007000 	.word	0x40007000
    395c:	40006c00 	.word	0x40006c00

00003960 <rtc_set_alarm>:
    3960:	b480      	push	{r7}
    3962:	b083      	sub	sp, #12
    3964:	af00      	add	r7, sp, #0
    3966:	6078      	str	r0, [r7, #4]
    3968:	bf00      	nop
    396a:	370c      	adds	r7, #12
    396c:	46bd      	mov	sp, r7
    396e:	bc80      	pop	{r7}
    3970:	4770      	bx	lr

00003972 <str_to_date>:
    3972:	b580      	push	{r7, lr}
    3974:	b084      	sub	sp, #16
    3976:	af00      	add	r7, sp, #0
    3978:	6078      	str	r0, [r7, #4]
    397a:	6039      	str	r1, [r7, #0]
    397c:	2300      	movs	r3, #0
    397e:	60fb      	str	r3, [r7, #12]
    3980:	2300      	movs	r3, #0
    3982:	60bb      	str	r3, [r7, #8]
    3984:	e00f      	b.n	39a6 <str_to_date+0x34>
    3986:	68ba      	ldr	r2, [r7, #8]
    3988:	4613      	mov	r3, r2
    398a:	009b      	lsls	r3, r3, #2
    398c:	4413      	add	r3, r2
    398e:	005b      	lsls	r3, r3, #1
    3990:	4619      	mov	r1, r3
    3992:	68fb      	ldr	r3, [r7, #12]
    3994:	1c5a      	adds	r2, r3, #1
    3996:	60fa      	str	r2, [r7, #12]
    3998:	461a      	mov	r2, r3
    399a:	687b      	ldr	r3, [r7, #4]
    399c:	4413      	add	r3, r2
    399e:	781b      	ldrb	r3, [r3, #0]
    39a0:	440b      	add	r3, r1
    39a2:	3b30      	subs	r3, #48	; 0x30
    39a4:	60bb      	str	r3, [r7, #8]
    39a6:	68fb      	ldr	r3, [r7, #12]
    39a8:	687a      	ldr	r2, [r7, #4]
    39aa:	4413      	add	r3, r2
    39ac:	781b      	ldrb	r3, [r3, #0]
    39ae:	4618      	mov	r0, r3
    39b0:	f7fe f88d 	bl	1ace <digit>
    39b4:	4603      	mov	r3, r0
    39b6:	2b00      	cmp	r3, #0
    39b8:	d1e5      	bne.n	3986 <str_to_date+0x14>
    39ba:	68fb      	ldr	r3, [r7, #12]
    39bc:	2b03      	cmp	r3, #3
    39be:	dd05      	ble.n	39cc <str_to_date+0x5a>
    39c0:	68fb      	ldr	r3, [r7, #12]
    39c2:	687a      	ldr	r2, [r7, #4]
    39c4:	4413      	add	r3, r2
    39c6:	781b      	ldrb	r3, [r3, #0]
    39c8:	2b2f      	cmp	r3, #47	; 0x2f
    39ca:	d001      	beq.n	39d0 <str_to_date+0x5e>
    39cc:	2300      	movs	r3, #0
    39ce:	e068      	b.n	3aa2 <str_to_date+0x130>
    39d0:	68bb      	ldr	r3, [r7, #8]
    39d2:	b29a      	uxth	r2, r3
    39d4:	683b      	ldr	r3, [r7, #0]
    39d6:	811a      	strh	r2, [r3, #8]
    39d8:	68fb      	ldr	r3, [r7, #12]
    39da:	3301      	adds	r3, #1
    39dc:	60fb      	str	r3, [r7, #12]
    39de:	2300      	movs	r3, #0
    39e0:	60bb      	str	r3, [r7, #8]
    39e2:	e00f      	b.n	3a04 <str_to_date+0x92>
    39e4:	68ba      	ldr	r2, [r7, #8]
    39e6:	4613      	mov	r3, r2
    39e8:	009b      	lsls	r3, r3, #2
    39ea:	4413      	add	r3, r2
    39ec:	005b      	lsls	r3, r3, #1
    39ee:	4619      	mov	r1, r3
    39f0:	68fb      	ldr	r3, [r7, #12]
    39f2:	1c5a      	adds	r2, r3, #1
    39f4:	60fa      	str	r2, [r7, #12]
    39f6:	461a      	mov	r2, r3
    39f8:	687b      	ldr	r3, [r7, #4]
    39fa:	4413      	add	r3, r2
    39fc:	781b      	ldrb	r3, [r3, #0]
    39fe:	440b      	add	r3, r1
    3a00:	3b30      	subs	r3, #48	; 0x30
    3a02:	60bb      	str	r3, [r7, #8]
    3a04:	68fb      	ldr	r3, [r7, #12]
    3a06:	687a      	ldr	r2, [r7, #4]
    3a08:	4413      	add	r3, r2
    3a0a:	781b      	ldrb	r3, [r3, #0]
    3a0c:	4618      	mov	r0, r3
    3a0e:	f7fe f85e 	bl	1ace <digit>
    3a12:	4603      	mov	r3, r0
    3a14:	2b00      	cmp	r3, #0
    3a16:	d1e5      	bne.n	39e4 <str_to_date+0x72>
    3a18:	68fb      	ldr	r3, [r7, #12]
    3a1a:	2b06      	cmp	r3, #6
    3a1c:	dd05      	ble.n	3a2a <str_to_date+0xb8>
    3a1e:	68fb      	ldr	r3, [r7, #12]
    3a20:	687a      	ldr	r2, [r7, #4]
    3a22:	4413      	add	r3, r2
    3a24:	781b      	ldrb	r3, [r3, #0]
    3a26:	2b2f      	cmp	r3, #47	; 0x2f
    3a28:	d001      	beq.n	3a2e <str_to_date+0xbc>
    3a2a:	2300      	movs	r3, #0
    3a2c:	e039      	b.n	3aa2 <str_to_date+0x130>
    3a2e:	68bb      	ldr	r3, [r7, #8]
    3a30:	b2db      	uxtb	r3, r3
    3a32:	f003 030f 	and.w	r3, r3, #15
    3a36:	b2d9      	uxtb	r1, r3
    3a38:	683a      	ldr	r2, [r7, #0]
    3a3a:	8853      	ldrh	r3, [r2, #2]
    3a3c:	f361 1389 	bfi	r3, r1, #6, #4
    3a40:	8053      	strh	r3, [r2, #2]
    3a42:	2300      	movs	r3, #0
    3a44:	60bb      	str	r3, [r7, #8]
    3a46:	68fb      	ldr	r3, [r7, #12]
    3a48:	3301      	adds	r3, #1
    3a4a:	60fb      	str	r3, [r7, #12]
    3a4c:	e00f      	b.n	3a6e <str_to_date+0xfc>
    3a4e:	68ba      	ldr	r2, [r7, #8]
    3a50:	4613      	mov	r3, r2
    3a52:	009b      	lsls	r3, r3, #2
    3a54:	4413      	add	r3, r2
    3a56:	005b      	lsls	r3, r3, #1
    3a58:	4619      	mov	r1, r3
    3a5a:	68fb      	ldr	r3, [r7, #12]
    3a5c:	1c5a      	adds	r2, r3, #1
    3a5e:	60fa      	str	r2, [r7, #12]
    3a60:	461a      	mov	r2, r3
    3a62:	687b      	ldr	r3, [r7, #4]
    3a64:	4413      	add	r3, r2
    3a66:	781b      	ldrb	r3, [r3, #0]
    3a68:	440b      	add	r3, r1
    3a6a:	3b30      	subs	r3, #48	; 0x30
    3a6c:	60bb      	str	r3, [r7, #8]
    3a6e:	68fb      	ldr	r3, [r7, #12]
    3a70:	687a      	ldr	r2, [r7, #4]
    3a72:	4413      	add	r3, r2
    3a74:	781b      	ldrb	r3, [r3, #0]
    3a76:	4618      	mov	r0, r3
    3a78:	f7fe f829 	bl	1ace <digit>
    3a7c:	4603      	mov	r3, r0
    3a7e:	2b00      	cmp	r3, #0
    3a80:	d1e5      	bne.n	3a4e <str_to_date+0xdc>
    3a82:	68fb      	ldr	r3, [r7, #12]
    3a84:	2b09      	cmp	r3, #9
    3a86:	dc01      	bgt.n	3a8c <str_to_date+0x11a>
    3a88:	2300      	movs	r3, #0
    3a8a:	e00a      	b.n	3aa2 <str_to_date+0x130>
    3a8c:	68bb      	ldr	r3, [r7, #8]
    3a8e:	b2db      	uxtb	r3, r3
    3a90:	f003 031f 	and.w	r3, r3, #31
    3a94:	b2d9      	uxtb	r1, r3
    3a96:	683a      	ldr	r2, [r7, #0]
    3a98:	7893      	ldrb	r3, [r2, #2]
    3a9a:	f361 0345 	bfi	r3, r1, #1, #5
    3a9e:	7093      	strb	r3, [r2, #2]
    3aa0:	2301      	movs	r3, #1
    3aa2:	4618      	mov	r0, r3
    3aa4:	3710      	adds	r7, #16
    3aa6:	46bd      	mov	sp, r7
    3aa8:	bd80      	pop	{r7, pc}

00003aaa <str_to_time>:
    3aaa:	b580      	push	{r7, lr}
    3aac:	b084      	sub	sp, #16
    3aae:	af00      	add	r7, sp, #0
    3ab0:	6078      	str	r0, [r7, #4]
    3ab2:	6039      	str	r1, [r7, #0]
    3ab4:	2300      	movs	r3, #0
    3ab6:	60fb      	str	r3, [r7, #12]
    3ab8:	2300      	movs	r3, #0
    3aba:	72fb      	strb	r3, [r7, #11]
    3abc:	e010      	b.n	3ae0 <str_to_time+0x36>
    3abe:	7afb      	ldrb	r3, [r7, #11]
    3ac0:	461a      	mov	r2, r3
    3ac2:	0092      	lsls	r2, r2, #2
    3ac4:	4413      	add	r3, r2
    3ac6:	005b      	lsls	r3, r3, #1
    3ac8:	b2da      	uxtb	r2, r3
    3aca:	68fb      	ldr	r3, [r7, #12]
    3acc:	1c59      	adds	r1, r3, #1
    3ace:	60f9      	str	r1, [r7, #12]
    3ad0:	4619      	mov	r1, r3
    3ad2:	687b      	ldr	r3, [r7, #4]
    3ad4:	440b      	add	r3, r1
    3ad6:	781b      	ldrb	r3, [r3, #0]
    3ad8:	4413      	add	r3, r2
    3ada:	b2db      	uxtb	r3, r3
    3adc:	3b30      	subs	r3, #48	; 0x30
    3ade:	72fb      	strb	r3, [r7, #11]
    3ae0:	68fb      	ldr	r3, [r7, #12]
    3ae2:	687a      	ldr	r2, [r7, #4]
    3ae4:	4413      	add	r3, r2
    3ae6:	781b      	ldrb	r3, [r3, #0]
    3ae8:	4618      	mov	r0, r3
    3aea:	f7fd fff0 	bl	1ace <digit>
    3aee:	4603      	mov	r3, r0
    3af0:	2b00      	cmp	r3, #0
    3af2:	d1e4      	bne.n	3abe <str_to_time+0x14>
    3af4:	7afb      	ldrb	r3, [r7, #11]
    3af6:	2b17      	cmp	r3, #23
    3af8:	d805      	bhi.n	3b06 <str_to_time+0x5c>
    3afa:	68fb      	ldr	r3, [r7, #12]
    3afc:	687a      	ldr	r2, [r7, #4]
    3afe:	4413      	add	r3, r2
    3b00:	781b      	ldrb	r3, [r3, #0]
    3b02:	2b3a      	cmp	r3, #58	; 0x3a
    3b04:	d001      	beq.n	3b0a <str_to_time+0x60>
    3b06:	2300      	movs	r3, #0
    3b08:	e06d      	b.n	3be6 <str_to_time+0x13c>
    3b0a:	7afb      	ldrb	r3, [r7, #11]
    3b0c:	f003 031f 	and.w	r3, r3, #31
    3b10:	b2d9      	uxtb	r1, r3
    3b12:	683a      	ldr	r2, [r7, #0]
    3b14:	6813      	ldr	r3, [r2, #0]
    3b16:	f361 3310 	bfi	r3, r1, #12, #5
    3b1a:	6013      	str	r3, [r2, #0]
    3b1c:	68fb      	ldr	r3, [r7, #12]
    3b1e:	3301      	adds	r3, #1
    3b20:	60fb      	str	r3, [r7, #12]
    3b22:	2300      	movs	r3, #0
    3b24:	72fb      	strb	r3, [r7, #11]
    3b26:	e010      	b.n	3b4a <str_to_time+0xa0>
    3b28:	7afb      	ldrb	r3, [r7, #11]
    3b2a:	461a      	mov	r2, r3
    3b2c:	0092      	lsls	r2, r2, #2
    3b2e:	4413      	add	r3, r2
    3b30:	005b      	lsls	r3, r3, #1
    3b32:	b2da      	uxtb	r2, r3
    3b34:	68fb      	ldr	r3, [r7, #12]
    3b36:	1c59      	adds	r1, r3, #1
    3b38:	60f9      	str	r1, [r7, #12]
    3b3a:	4619      	mov	r1, r3
    3b3c:	687b      	ldr	r3, [r7, #4]
    3b3e:	440b      	add	r3, r1
    3b40:	781b      	ldrb	r3, [r3, #0]
    3b42:	4413      	add	r3, r2
    3b44:	b2db      	uxtb	r3, r3
    3b46:	3b30      	subs	r3, #48	; 0x30
    3b48:	72fb      	strb	r3, [r7, #11]
    3b4a:	68fb      	ldr	r3, [r7, #12]
    3b4c:	687a      	ldr	r2, [r7, #4]
    3b4e:	4413      	add	r3, r2
    3b50:	781b      	ldrb	r3, [r3, #0]
    3b52:	4618      	mov	r0, r3
    3b54:	f7fd ffbb 	bl	1ace <digit>
    3b58:	4603      	mov	r3, r0
    3b5a:	2b00      	cmp	r3, #0
    3b5c:	d1e4      	bne.n	3b28 <str_to_time+0x7e>
    3b5e:	7afb      	ldrb	r3, [r7, #11]
    3b60:	2b3b      	cmp	r3, #59	; 0x3b
    3b62:	d805      	bhi.n	3b70 <str_to_time+0xc6>
    3b64:	68fb      	ldr	r3, [r7, #12]
    3b66:	687a      	ldr	r2, [r7, #4]
    3b68:	4413      	add	r3, r2
    3b6a:	781b      	ldrb	r3, [r3, #0]
    3b6c:	2b3a      	cmp	r3, #58	; 0x3a
    3b6e:	d001      	beq.n	3b74 <str_to_time+0xca>
    3b70:	2300      	movs	r3, #0
    3b72:	e038      	b.n	3be6 <str_to_time+0x13c>
    3b74:	7afb      	ldrb	r3, [r7, #11]
    3b76:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3b7a:	b2d9      	uxtb	r1, r3
    3b7c:	683a      	ldr	r2, [r7, #0]
    3b7e:	8813      	ldrh	r3, [r2, #0]
    3b80:	f361 138b 	bfi	r3, r1, #6, #6
    3b84:	8013      	strh	r3, [r2, #0]
    3b86:	2300      	movs	r3, #0
    3b88:	72fb      	strb	r3, [r7, #11]
    3b8a:	68fb      	ldr	r3, [r7, #12]
    3b8c:	3301      	adds	r3, #1
    3b8e:	60fb      	str	r3, [r7, #12]
    3b90:	e010      	b.n	3bb4 <str_to_time+0x10a>
    3b92:	7afb      	ldrb	r3, [r7, #11]
    3b94:	461a      	mov	r2, r3
    3b96:	0092      	lsls	r2, r2, #2
    3b98:	4413      	add	r3, r2
    3b9a:	005b      	lsls	r3, r3, #1
    3b9c:	b2da      	uxtb	r2, r3
    3b9e:	68fb      	ldr	r3, [r7, #12]
    3ba0:	1c59      	adds	r1, r3, #1
    3ba2:	60f9      	str	r1, [r7, #12]
    3ba4:	4619      	mov	r1, r3
    3ba6:	687b      	ldr	r3, [r7, #4]
    3ba8:	440b      	add	r3, r1
    3baa:	781b      	ldrb	r3, [r3, #0]
    3bac:	4413      	add	r3, r2
    3bae:	b2db      	uxtb	r3, r3
    3bb0:	3b30      	subs	r3, #48	; 0x30
    3bb2:	72fb      	strb	r3, [r7, #11]
    3bb4:	68fb      	ldr	r3, [r7, #12]
    3bb6:	687a      	ldr	r2, [r7, #4]
    3bb8:	4413      	add	r3, r2
    3bba:	781b      	ldrb	r3, [r3, #0]
    3bbc:	4618      	mov	r0, r3
    3bbe:	f7fd ff86 	bl	1ace <digit>
    3bc2:	4603      	mov	r3, r0
    3bc4:	2b00      	cmp	r3, #0
    3bc6:	d1e4      	bne.n	3b92 <str_to_time+0xe8>
    3bc8:	7afb      	ldrb	r3, [r7, #11]
    3bca:	2b3b      	cmp	r3, #59	; 0x3b
    3bcc:	d901      	bls.n	3bd2 <str_to_time+0x128>
    3bce:	2300      	movs	r3, #0
    3bd0:	e009      	b.n	3be6 <str_to_time+0x13c>
    3bd2:	7afb      	ldrb	r3, [r7, #11]
    3bd4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3bd8:	b2d9      	uxtb	r1, r3
    3bda:	683a      	ldr	r2, [r7, #0]
    3bdc:	7813      	ldrb	r3, [r2, #0]
    3bde:	f361 0305 	bfi	r3, r1, #0, #6
    3be2:	7013      	strb	r3, [r2, #0]
    3be4:	2301      	movs	r3, #1
    3be6:	4618      	mov	r0, r3
    3be8:	3710      	adds	r7, #16
    3bea:	46bd      	mov	sp, r7
    3bec:	bd80      	pop	{r7, pc}

00003bee <date_str>:
    3bee:	b480      	push	{r7}
    3bf0:	b085      	sub	sp, #20
    3bf2:	af00      	add	r7, sp, #0
    3bf4:	6078      	str	r0, [r7, #4]
    3bf6:	6039      	str	r1, [r7, #0]
    3bf8:	2300      	movs	r3, #0
    3bfa:	60fb      	str	r3, [r7, #12]
    3bfc:	687b      	ldr	r3, [r7, #4]
    3bfe:	891b      	ldrh	r3, [r3, #8]
    3c00:	60bb      	str	r3, [r7, #8]
    3c02:	68fb      	ldr	r3, [r7, #12]
    3c04:	1c5a      	adds	r2, r3, #1
    3c06:	60fa      	str	r2, [r7, #12]
    3c08:	461a      	mov	r2, r3
    3c0a:	683b      	ldr	r3, [r7, #0]
    3c0c:	4413      	add	r3, r2
    3c0e:	68ba      	ldr	r2, [r7, #8]
    3c10:	495d      	ldr	r1, [pc, #372]	; (3d88 <date_str+0x19a>)
    3c12:	fba1 1202 	umull	r1, r2, r1, r2
    3c16:	0992      	lsrs	r2, r2, #6
    3c18:	b2d2      	uxtb	r2, r2
    3c1a:	3230      	adds	r2, #48	; 0x30
    3c1c:	b2d2      	uxtb	r2, r2
    3c1e:	701a      	strb	r2, [r3, #0]
    3c20:	68bb      	ldr	r3, [r7, #8]
    3c22:	4a59      	ldr	r2, [pc, #356]	; (3d88 <date_str+0x19a>)
    3c24:	fba2 1203 	umull	r1, r2, r2, r3
    3c28:	0992      	lsrs	r2, r2, #6
    3c2a:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3c2e:	fb01 f202 	mul.w	r2, r1, r2
    3c32:	1a9b      	subs	r3, r3, r2
    3c34:	60bb      	str	r3, [r7, #8]
    3c36:	68fb      	ldr	r3, [r7, #12]
    3c38:	1c5a      	adds	r2, r3, #1
    3c3a:	60fa      	str	r2, [r7, #12]
    3c3c:	461a      	mov	r2, r3
    3c3e:	683b      	ldr	r3, [r7, #0]
    3c40:	4413      	add	r3, r2
    3c42:	68ba      	ldr	r2, [r7, #8]
    3c44:	4951      	ldr	r1, [pc, #324]	; (3d8c <date_str+0x19e>)
    3c46:	fba1 1202 	umull	r1, r2, r1, r2
    3c4a:	0952      	lsrs	r2, r2, #5
    3c4c:	b2d2      	uxtb	r2, r2
    3c4e:	3230      	adds	r2, #48	; 0x30
    3c50:	b2d2      	uxtb	r2, r2
    3c52:	701a      	strb	r2, [r3, #0]
    3c54:	68bb      	ldr	r3, [r7, #8]
    3c56:	4a4d      	ldr	r2, [pc, #308]	; (3d8c <date_str+0x19e>)
    3c58:	fba2 1203 	umull	r1, r2, r2, r3
    3c5c:	0952      	lsrs	r2, r2, #5
    3c5e:	2164      	movs	r1, #100	; 0x64
    3c60:	fb01 f202 	mul.w	r2, r1, r2
    3c64:	1a9b      	subs	r3, r3, r2
    3c66:	60bb      	str	r3, [r7, #8]
    3c68:	68fb      	ldr	r3, [r7, #12]
    3c6a:	1c5a      	adds	r2, r3, #1
    3c6c:	60fa      	str	r2, [r7, #12]
    3c6e:	461a      	mov	r2, r3
    3c70:	683b      	ldr	r3, [r7, #0]
    3c72:	4413      	add	r3, r2
    3c74:	68ba      	ldr	r2, [r7, #8]
    3c76:	4946      	ldr	r1, [pc, #280]	; (3d90 <date_str+0x1a2>)
    3c78:	fba1 1202 	umull	r1, r2, r1, r2
    3c7c:	08d2      	lsrs	r2, r2, #3
    3c7e:	b2d2      	uxtb	r2, r2
    3c80:	3230      	adds	r2, #48	; 0x30
    3c82:	b2d2      	uxtb	r2, r2
    3c84:	701a      	strb	r2, [r3, #0]
    3c86:	68fb      	ldr	r3, [r7, #12]
    3c88:	1c5a      	adds	r2, r3, #1
    3c8a:	60fa      	str	r2, [r7, #12]
    3c8c:	461a      	mov	r2, r3
    3c8e:	683b      	ldr	r3, [r7, #0]
    3c90:	1898      	adds	r0, r3, r2
    3c92:	68b9      	ldr	r1, [r7, #8]
    3c94:	4b3e      	ldr	r3, [pc, #248]	; (3d90 <date_str+0x1a2>)
    3c96:	fba3 2301 	umull	r2, r3, r3, r1
    3c9a:	08da      	lsrs	r2, r3, #3
    3c9c:	4613      	mov	r3, r2
    3c9e:	009b      	lsls	r3, r3, #2
    3ca0:	4413      	add	r3, r2
    3ca2:	005b      	lsls	r3, r3, #1
    3ca4:	1aca      	subs	r2, r1, r3
    3ca6:	b2d3      	uxtb	r3, r2
    3ca8:	3330      	adds	r3, #48	; 0x30
    3caa:	b2db      	uxtb	r3, r3
    3cac:	7003      	strb	r3, [r0, #0]
    3cae:	68fb      	ldr	r3, [r7, #12]
    3cb0:	1c5a      	adds	r2, r3, #1
    3cb2:	60fa      	str	r2, [r7, #12]
    3cb4:	461a      	mov	r2, r3
    3cb6:	683b      	ldr	r3, [r7, #0]
    3cb8:	4413      	add	r3, r2
    3cba:	222f      	movs	r2, #47	; 0x2f
    3cbc:	701a      	strb	r2, [r3, #0]
    3cbe:	687b      	ldr	r3, [r7, #4]
    3cc0:	885b      	ldrh	r3, [r3, #2]
    3cc2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3cc6:	b2db      	uxtb	r3, r3
    3cc8:	60bb      	str	r3, [r7, #8]
    3cca:	68fb      	ldr	r3, [r7, #12]
    3ccc:	1c5a      	adds	r2, r3, #1
    3cce:	60fa      	str	r2, [r7, #12]
    3cd0:	461a      	mov	r2, r3
    3cd2:	683b      	ldr	r3, [r7, #0]
    3cd4:	4413      	add	r3, r2
    3cd6:	68ba      	ldr	r2, [r7, #8]
    3cd8:	492d      	ldr	r1, [pc, #180]	; (3d90 <date_str+0x1a2>)
    3cda:	fba1 1202 	umull	r1, r2, r1, r2
    3cde:	08d2      	lsrs	r2, r2, #3
    3ce0:	b2d2      	uxtb	r2, r2
    3ce2:	3230      	adds	r2, #48	; 0x30
    3ce4:	b2d2      	uxtb	r2, r2
    3ce6:	701a      	strb	r2, [r3, #0]
    3ce8:	68fb      	ldr	r3, [r7, #12]
    3cea:	1c5a      	adds	r2, r3, #1
    3cec:	60fa      	str	r2, [r7, #12]
    3cee:	461a      	mov	r2, r3
    3cf0:	683b      	ldr	r3, [r7, #0]
    3cf2:	1898      	adds	r0, r3, r2
    3cf4:	68b9      	ldr	r1, [r7, #8]
    3cf6:	4b26      	ldr	r3, [pc, #152]	; (3d90 <date_str+0x1a2>)
    3cf8:	fba3 2301 	umull	r2, r3, r3, r1
    3cfc:	08da      	lsrs	r2, r3, #3
    3cfe:	4613      	mov	r3, r2
    3d00:	009b      	lsls	r3, r3, #2
    3d02:	4413      	add	r3, r2
    3d04:	005b      	lsls	r3, r3, #1
    3d06:	1aca      	subs	r2, r1, r3
    3d08:	b2d3      	uxtb	r3, r2
    3d0a:	3330      	adds	r3, #48	; 0x30
    3d0c:	b2db      	uxtb	r3, r3
    3d0e:	7003      	strb	r3, [r0, #0]
    3d10:	68fb      	ldr	r3, [r7, #12]
    3d12:	1c5a      	adds	r2, r3, #1
    3d14:	60fa      	str	r2, [r7, #12]
    3d16:	461a      	mov	r2, r3
    3d18:	683b      	ldr	r3, [r7, #0]
    3d1a:	4413      	add	r3, r2
    3d1c:	222f      	movs	r2, #47	; 0x2f
    3d1e:	701a      	strb	r2, [r3, #0]
    3d20:	687b      	ldr	r3, [r7, #4]
    3d22:	789b      	ldrb	r3, [r3, #2]
    3d24:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3d28:	b2db      	uxtb	r3, r3
    3d2a:	60bb      	str	r3, [r7, #8]
    3d2c:	68fb      	ldr	r3, [r7, #12]
    3d2e:	1c5a      	adds	r2, r3, #1
    3d30:	60fa      	str	r2, [r7, #12]
    3d32:	461a      	mov	r2, r3
    3d34:	683b      	ldr	r3, [r7, #0]
    3d36:	4413      	add	r3, r2
    3d38:	68ba      	ldr	r2, [r7, #8]
    3d3a:	4915      	ldr	r1, [pc, #84]	; (3d90 <date_str+0x1a2>)
    3d3c:	fba1 1202 	umull	r1, r2, r1, r2
    3d40:	08d2      	lsrs	r2, r2, #3
    3d42:	b2d2      	uxtb	r2, r2
    3d44:	3230      	adds	r2, #48	; 0x30
    3d46:	b2d2      	uxtb	r2, r2
    3d48:	701a      	strb	r2, [r3, #0]
    3d4a:	68fb      	ldr	r3, [r7, #12]
    3d4c:	1c5a      	adds	r2, r3, #1
    3d4e:	60fa      	str	r2, [r7, #12]
    3d50:	461a      	mov	r2, r3
    3d52:	683b      	ldr	r3, [r7, #0]
    3d54:	1898      	adds	r0, r3, r2
    3d56:	68b9      	ldr	r1, [r7, #8]
    3d58:	4b0d      	ldr	r3, [pc, #52]	; (3d90 <date_str+0x1a2>)
    3d5a:	fba3 2301 	umull	r2, r3, r3, r1
    3d5e:	08da      	lsrs	r2, r3, #3
    3d60:	4613      	mov	r3, r2
    3d62:	009b      	lsls	r3, r3, #2
    3d64:	4413      	add	r3, r2
    3d66:	005b      	lsls	r3, r3, #1
    3d68:	1aca      	subs	r2, r1, r3
    3d6a:	b2d3      	uxtb	r3, r2
    3d6c:	3330      	adds	r3, #48	; 0x30
    3d6e:	b2db      	uxtb	r3, r3
    3d70:	7003      	strb	r3, [r0, #0]
    3d72:	68fb      	ldr	r3, [r7, #12]
    3d74:	683a      	ldr	r2, [r7, #0]
    3d76:	4413      	add	r3, r2
    3d78:	2200      	movs	r2, #0
    3d7a:	701a      	strb	r2, [r3, #0]
    3d7c:	bf00      	nop
    3d7e:	3714      	adds	r7, #20
    3d80:	46bd      	mov	sp, r7
    3d82:	bc80      	pop	{r7}
    3d84:	4770      	bx	lr
    3d86:	bf00      	nop
    3d88:	10624dd3 	.word	0x10624dd3
    3d8c:	51eb851f 	.word	0x51eb851f
    3d90:	cccccccd 	.word	0xcccccccd

00003d94 <time_str>:
    3d94:	b480      	push	{r7}
    3d96:	b085      	sub	sp, #20
    3d98:	af00      	add	r7, sp, #0
    3d9a:	6078      	str	r0, [r7, #4]
    3d9c:	6039      	str	r1, [r7, #0]
    3d9e:	2300      	movs	r3, #0
    3da0:	60fb      	str	r3, [r7, #12]
    3da2:	687b      	ldr	r3, [r7, #4]
    3da4:	681b      	ldr	r3, [r3, #0]
    3da6:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3daa:	b2db      	uxtb	r3, r3
    3dac:	60bb      	str	r3, [r7, #8]
    3dae:	68fb      	ldr	r3, [r7, #12]
    3db0:	1c5a      	adds	r2, r3, #1
    3db2:	60fa      	str	r2, [r7, #12]
    3db4:	461a      	mov	r2, r3
    3db6:	683b      	ldr	r3, [r7, #0]
    3db8:	4413      	add	r3, r2
    3dba:	68ba      	ldr	r2, [r7, #8]
    3dbc:	4943      	ldr	r1, [pc, #268]	; (3ecc <time_str+0x138>)
    3dbe:	fba1 1202 	umull	r1, r2, r1, r2
    3dc2:	08d2      	lsrs	r2, r2, #3
    3dc4:	b2d2      	uxtb	r2, r2
    3dc6:	3230      	adds	r2, #48	; 0x30
    3dc8:	b2d2      	uxtb	r2, r2
    3dca:	701a      	strb	r2, [r3, #0]
    3dcc:	68fb      	ldr	r3, [r7, #12]
    3dce:	1c5a      	adds	r2, r3, #1
    3dd0:	60fa      	str	r2, [r7, #12]
    3dd2:	461a      	mov	r2, r3
    3dd4:	683b      	ldr	r3, [r7, #0]
    3dd6:	1898      	adds	r0, r3, r2
    3dd8:	68b9      	ldr	r1, [r7, #8]
    3dda:	4b3c      	ldr	r3, [pc, #240]	; (3ecc <time_str+0x138>)
    3ddc:	fba3 2301 	umull	r2, r3, r3, r1
    3de0:	08da      	lsrs	r2, r3, #3
    3de2:	4613      	mov	r3, r2
    3de4:	009b      	lsls	r3, r3, #2
    3de6:	4413      	add	r3, r2
    3de8:	005b      	lsls	r3, r3, #1
    3dea:	1aca      	subs	r2, r1, r3
    3dec:	b2d3      	uxtb	r3, r2
    3dee:	3330      	adds	r3, #48	; 0x30
    3df0:	b2db      	uxtb	r3, r3
    3df2:	7003      	strb	r3, [r0, #0]
    3df4:	68fb      	ldr	r3, [r7, #12]
    3df6:	1c5a      	adds	r2, r3, #1
    3df8:	60fa      	str	r2, [r7, #12]
    3dfa:	461a      	mov	r2, r3
    3dfc:	683b      	ldr	r3, [r7, #0]
    3dfe:	4413      	add	r3, r2
    3e00:	223a      	movs	r2, #58	; 0x3a
    3e02:	701a      	strb	r2, [r3, #0]
    3e04:	687b      	ldr	r3, [r7, #4]
    3e06:	881b      	ldrh	r3, [r3, #0]
    3e08:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3e0c:	b2db      	uxtb	r3, r3
    3e0e:	60bb      	str	r3, [r7, #8]
    3e10:	68fb      	ldr	r3, [r7, #12]
    3e12:	1c5a      	adds	r2, r3, #1
    3e14:	60fa      	str	r2, [r7, #12]
    3e16:	461a      	mov	r2, r3
    3e18:	683b      	ldr	r3, [r7, #0]
    3e1a:	4413      	add	r3, r2
    3e1c:	68ba      	ldr	r2, [r7, #8]
    3e1e:	492b      	ldr	r1, [pc, #172]	; (3ecc <time_str+0x138>)
    3e20:	fba1 1202 	umull	r1, r2, r1, r2
    3e24:	08d2      	lsrs	r2, r2, #3
    3e26:	b2d2      	uxtb	r2, r2
    3e28:	3230      	adds	r2, #48	; 0x30
    3e2a:	b2d2      	uxtb	r2, r2
    3e2c:	701a      	strb	r2, [r3, #0]
    3e2e:	68fb      	ldr	r3, [r7, #12]
    3e30:	1c5a      	adds	r2, r3, #1
    3e32:	60fa      	str	r2, [r7, #12]
    3e34:	461a      	mov	r2, r3
    3e36:	683b      	ldr	r3, [r7, #0]
    3e38:	1898      	adds	r0, r3, r2
    3e3a:	68b9      	ldr	r1, [r7, #8]
    3e3c:	4b23      	ldr	r3, [pc, #140]	; (3ecc <time_str+0x138>)
    3e3e:	fba3 2301 	umull	r2, r3, r3, r1
    3e42:	08da      	lsrs	r2, r3, #3
    3e44:	4613      	mov	r3, r2
    3e46:	009b      	lsls	r3, r3, #2
    3e48:	4413      	add	r3, r2
    3e4a:	005b      	lsls	r3, r3, #1
    3e4c:	1aca      	subs	r2, r1, r3
    3e4e:	b2d3      	uxtb	r3, r2
    3e50:	3330      	adds	r3, #48	; 0x30
    3e52:	b2db      	uxtb	r3, r3
    3e54:	7003      	strb	r3, [r0, #0]
    3e56:	68fb      	ldr	r3, [r7, #12]
    3e58:	1c5a      	adds	r2, r3, #1
    3e5a:	60fa      	str	r2, [r7, #12]
    3e5c:	461a      	mov	r2, r3
    3e5e:	683b      	ldr	r3, [r7, #0]
    3e60:	4413      	add	r3, r2
    3e62:	223a      	movs	r2, #58	; 0x3a
    3e64:	701a      	strb	r2, [r3, #0]
    3e66:	687b      	ldr	r3, [r7, #4]
    3e68:	781b      	ldrb	r3, [r3, #0]
    3e6a:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3e6e:	b2db      	uxtb	r3, r3
    3e70:	60bb      	str	r3, [r7, #8]
    3e72:	68fb      	ldr	r3, [r7, #12]
    3e74:	1c5a      	adds	r2, r3, #1
    3e76:	60fa      	str	r2, [r7, #12]
    3e78:	461a      	mov	r2, r3
    3e7a:	683b      	ldr	r3, [r7, #0]
    3e7c:	4413      	add	r3, r2
    3e7e:	68ba      	ldr	r2, [r7, #8]
    3e80:	4912      	ldr	r1, [pc, #72]	; (3ecc <time_str+0x138>)
    3e82:	fba1 1202 	umull	r1, r2, r1, r2
    3e86:	08d2      	lsrs	r2, r2, #3
    3e88:	b2d2      	uxtb	r2, r2
    3e8a:	3230      	adds	r2, #48	; 0x30
    3e8c:	b2d2      	uxtb	r2, r2
    3e8e:	701a      	strb	r2, [r3, #0]
    3e90:	68fb      	ldr	r3, [r7, #12]
    3e92:	1c5a      	adds	r2, r3, #1
    3e94:	60fa      	str	r2, [r7, #12]
    3e96:	461a      	mov	r2, r3
    3e98:	683b      	ldr	r3, [r7, #0]
    3e9a:	1898      	adds	r0, r3, r2
    3e9c:	68b9      	ldr	r1, [r7, #8]
    3e9e:	4b0b      	ldr	r3, [pc, #44]	; (3ecc <time_str+0x138>)
    3ea0:	fba3 2301 	umull	r2, r3, r3, r1
    3ea4:	08da      	lsrs	r2, r3, #3
    3ea6:	4613      	mov	r3, r2
    3ea8:	009b      	lsls	r3, r3, #2
    3eaa:	4413      	add	r3, r2
    3eac:	005b      	lsls	r3, r3, #1
    3eae:	1aca      	subs	r2, r1, r3
    3eb0:	b2d3      	uxtb	r3, r2
    3eb2:	3330      	adds	r3, #48	; 0x30
    3eb4:	b2db      	uxtb	r3, r3
    3eb6:	7003      	strb	r3, [r0, #0]
    3eb8:	68fb      	ldr	r3, [r7, #12]
    3eba:	683a      	ldr	r2, [r7, #0]
    3ebc:	4413      	add	r3, r2
    3ebe:	2200      	movs	r2, #0
    3ec0:	701a      	strb	r2, [r3, #0]
    3ec2:	bf00      	nop
    3ec4:	3714      	adds	r7, #20
    3ec6:	46bd      	mov	sp, r7
    3ec8:	bc80      	pop	{r7}
    3eca:	4770      	bx	lr
    3ecc:	cccccccd 	.word	0xcccccccd

00003ed0 <get_fattime>:
    3ed0:	b580      	push	{r7, lr}
    3ed2:	b084      	sub	sp, #16
    3ed4:	af00      	add	r7, sp, #0
    3ed6:	463b      	mov	r3, r7
    3ed8:	4618      	mov	r0, r3
    3eda:	f7ff fa69 	bl	33b0 <get_date_time>
    3ede:	783b      	ldrb	r3, [r7, #0]
    3ee0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3ee4:	b2db      	uxtb	r3, r3
    3ee6:	0fda      	lsrs	r2, r3, #31
    3ee8:	4413      	add	r3, r2
    3eea:	105b      	asrs	r3, r3, #1
    3eec:	b2db      	uxtb	r3, r3
    3eee:	f003 031f 	and.w	r3, r3, #31
    3ef2:	b2da      	uxtb	r2, r3
    3ef4:	7b3b      	ldrb	r3, [r7, #12]
    3ef6:	f362 0304 	bfi	r3, r2, #0, #5
    3efa:	733b      	strb	r3, [r7, #12]
    3efc:	883b      	ldrh	r3, [r7, #0]
    3efe:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3f02:	b2da      	uxtb	r2, r3
    3f04:	89bb      	ldrh	r3, [r7, #12]
    3f06:	f362 134a 	bfi	r3, r2, #5, #6
    3f0a:	81bb      	strh	r3, [r7, #12]
    3f0c:	683b      	ldr	r3, [r7, #0]
    3f0e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3f12:	b2da      	uxtb	r2, r3
    3f14:	7b7b      	ldrb	r3, [r7, #13]
    3f16:	f362 03c7 	bfi	r3, r2, #3, #5
    3f1a:	737b      	strb	r3, [r7, #13]
    3f1c:	78bb      	ldrb	r3, [r7, #2]
    3f1e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3f22:	b2da      	uxtb	r2, r3
    3f24:	7bbb      	ldrb	r3, [r7, #14]
    3f26:	f362 0304 	bfi	r3, r2, #0, #5
    3f2a:	73bb      	strb	r3, [r7, #14]
    3f2c:	887b      	ldrh	r3, [r7, #2]
    3f2e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3f32:	b2da      	uxtb	r2, r3
    3f34:	89fb      	ldrh	r3, [r7, #14]
    3f36:	f362 1348 	bfi	r3, r2, #5, #4
    3f3a:	81fb      	strh	r3, [r7, #14]
    3f3c:	893b      	ldrh	r3, [r7, #8]
    3f3e:	b2db      	uxtb	r3, r3
    3f40:	3344      	adds	r3, #68	; 0x44
    3f42:	b2db      	uxtb	r3, r3
    3f44:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3f48:	b2da      	uxtb	r2, r3
    3f4a:	7bfb      	ldrb	r3, [r7, #15]
    3f4c:	f362 0347 	bfi	r3, r2, #1, #7
    3f50:	73fb      	strb	r3, [r7, #15]
    3f52:	68fb      	ldr	r3, [r7, #12]
    3f54:	4618      	mov	r0, r3
    3f56:	3710      	adds	r7, #16
    3f58:	46bd      	mov	sp, r7
    3f5a:	bd80      	pop	{r7, pc}

00003f5c <RTC_handler>:
    3f5c:	b480      	push	{r7}
    3f5e:	b083      	sub	sp, #12
    3f60:	af00      	add	r7, sp, #0
    3f62:	4b0a      	ldr	r3, [pc, #40]	; (3f8c <RTC_handler+0x30>)
    3f64:	685b      	ldr	r3, [r3, #4]
    3f66:	f003 0301 	and.w	r3, r3, #1
    3f6a:	2b00      	cmp	r3, #0
    3f6c:	d001      	beq.n	3f72 <RTC_handler+0x16>
    3f6e:	4b07      	ldr	r3, [pc, #28]	; (3f8c <RTC_handler+0x30>)
    3f70:	685b      	ldr	r3, [r3, #4]
    3f72:	4b06      	ldr	r3, [pc, #24]	; (3f8c <RTC_handler+0x30>)
    3f74:	685b      	ldr	r3, [r3, #4]
    3f76:	f003 0302 	and.w	r3, r3, #2
    3f7a:	2b00      	cmp	r3, #0
    3f7c:	d001      	beq.n	3f82 <RTC_handler+0x26>
    3f7e:	4b03      	ldr	r3, [pc, #12]	; (3f8c <RTC_handler+0x30>)
    3f80:	685b      	ldr	r3, [r3, #4]
    3f82:	bf00      	nop
    3f84:	370c      	adds	r7, #12
    3f86:	46bd      	mov	sp, r7
    3f88:	bc80      	pop	{r7}
    3f8a:	4770      	bx	lr
    3f8c:	40002800 	.word	0x40002800

00003f90 <sound_init>:
    3f90:	b580      	push	{r7, lr}
    3f92:	af00      	add	r7, sp, #0
    3f94:	4a0d      	ldr	r2, [pc, #52]	; (3fcc <sound_init+0x3c>)
    3f96:	4b0d      	ldr	r3, [pc, #52]	; (3fcc <sound_init+0x3c>)
    3f98:	69db      	ldr	r3, [r3, #28]
    3f9a:	f043 0301 	orr.w	r3, r3, #1
    3f9e:	61d3      	str	r3, [r2, #28]
    3fa0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3fa4:	2278      	movs	r2, #120	; 0x78
    3fa6:	61da      	str	r2, [r3, #28]
    3fa8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3fac:	f44f 7280 	mov.w	r2, #256	; 0x100
    3fb0:	621a      	str	r2, [r3, #32]
    3fb2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3fb6:	2209      	movs	r2, #9
    3fb8:	629a      	str	r2, [r3, #40]	; 0x28
    3fba:	2100      	movs	r1, #0
    3fbc:	201c      	movs	r0, #28
    3fbe:	f7ff f977 	bl	32b0 <set_int_priority>
    3fc2:	201c      	movs	r0, #28
    3fc4:	f7ff f8ba 	bl	313c <enable_interrupt>
    3fc8:	bf00      	nop
    3fca:	bd80      	pop	{r7, pc}
    3fcc:	40021000 	.word	0x40021000

00003fd0 <tone>:
    3fd0:	b580      	push	{r7, lr}
    3fd2:	b082      	sub	sp, #8
    3fd4:	af00      	add	r7, sp, #0
    3fd6:	4603      	mov	r3, r0
    3fd8:	460a      	mov	r2, r1
    3fda:	80fb      	strh	r3, [r7, #6]
    3fdc:	4613      	mov	r3, r2
    3fde:	80bb      	strh	r3, [r7, #4]
    3fe0:	4a1a      	ldr	r2, [pc, #104]	; (404c <tone+0x7c>)
    3fe2:	4b1a      	ldr	r3, [pc, #104]	; (404c <tone+0x7c>)
    3fe4:	685b      	ldr	r3, [r3, #4]
    3fe6:	f403 7340 	and.w	r3, r3, #768	; 0x300
    3fea:	6053      	str	r3, [r2, #4]
    3fec:	4a17      	ldr	r2, [pc, #92]	; (404c <tone+0x7c>)
    3fee:	4b17      	ldr	r3, [pc, #92]	; (404c <tone+0x7c>)
    3ff0:	685b      	ldr	r3, [r3, #4]
    3ff2:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    3ff6:	6053      	str	r3, [r2, #4]
    3ff8:	220a      	movs	r2, #10
    3ffa:	210a      	movs	r1, #10
    3ffc:	4814      	ldr	r0, [pc, #80]	; (4050 <tone+0x80>)
    3ffe:	f7fd ff0d 	bl	1e1c <config_pin>
    4002:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4006:	88fb      	ldrh	r3, [r7, #6]
    4008:	4912      	ldr	r1, [pc, #72]	; (4054 <tone+0x84>)
    400a:	fbb1 f3f3 	udiv	r3, r1, r3
    400e:	62d3      	str	r3, [r2, #44]	; 0x2c
    4010:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4014:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4018:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    401a:	085b      	lsrs	r3, r3, #1
    401c:	63d3      	str	r3, [r2, #60]	; 0x3c
    401e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4022:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4026:	68db      	ldr	r3, [r3, #12]
    4028:	f023 0308 	bic.w	r3, r3, #8
    402c:	60d3      	str	r3, [r2, #12]
    402e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4032:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4036:	681b      	ldr	r3, [r3, #0]
    4038:	f043 0301 	orr.w	r3, r3, #1
    403c:	6013      	str	r3, [r2, #0]
    403e:	4a06      	ldr	r2, [pc, #24]	; (4058 <tone+0x88>)
    4040:	88bb      	ldrh	r3, [r7, #4]
    4042:	8013      	strh	r3, [r2, #0]
    4044:	bf00      	nop
    4046:	3708      	adds	r7, #8
    4048:	46bd      	mov	sp, r7
    404a:	bd80      	pop	{r7, pc}
    404c:	40010000 	.word	0x40010000
    4050:	40010c00 	.word	0x40010c00
    4054:	006d3d32 	.word	0x006d3d32
    4058:	20004dbc 	.word	0x20004dbc

0000405c <beep>:
    405c:	b580      	push	{r7, lr}
    405e:	b082      	sub	sp, #8
    4060:	af00      	add	r7, sp, #0
    4062:	4603      	mov	r3, r0
    4064:	80fb      	strh	r3, [r7, #6]
    4066:	88fb      	ldrh	r3, [r7, #6]
    4068:	4619      	mov	r1, r3
    406a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    406e:	f7ff ffaf 	bl	3fd0 <tone>
    4072:	bf00      	nop
    4074:	3708      	adds	r7, #8
    4076:	46bd      	mov	sp, r7
    4078:	bd80      	pop	{r7, pc}

0000407a <load_sound_buffer>:
    407a:	b480      	push	{r7}
    407c:	b085      	sub	sp, #20
    407e:	af00      	add	r7, sp, #0
    4080:	6078      	str	r0, [r7, #4]
    4082:	2300      	movs	r3, #0
    4084:	60fb      	str	r3, [r7, #12]
    4086:	e00b      	b.n	40a0 <load_sound_buffer+0x26>
    4088:	687b      	ldr	r3, [r7, #4]
    408a:	1c5a      	adds	r2, r3, #1
    408c:	607a      	str	r2, [r7, #4]
    408e:	7819      	ldrb	r1, [r3, #0]
    4090:	4a07      	ldr	r2, [pc, #28]	; (40b0 <load_sound_buffer+0x36>)
    4092:	68fb      	ldr	r3, [r7, #12]
    4094:	4413      	add	r3, r2
    4096:	460a      	mov	r2, r1
    4098:	701a      	strb	r2, [r3, #0]
    409a:	68fb      	ldr	r3, [r7, #12]
    409c:	3301      	adds	r3, #1
    409e:	60fb      	str	r3, [r7, #12]
    40a0:	68fb      	ldr	r3, [r7, #12]
    40a2:	2b0f      	cmp	r3, #15
    40a4:	ddf0      	ble.n	4088 <load_sound_buffer+0xe>
    40a6:	bf00      	nop
    40a8:	3714      	adds	r7, #20
    40aa:	46bd      	mov	sp, r7
    40ac:	bc80      	pop	{r7}
    40ae:	4770      	bx	lr
    40b0:	20000608 	.word	0x20000608

000040b4 <sound_sampler>:
    40b4:	b580      	push	{r7, lr}
    40b6:	b082      	sub	sp, #8
    40b8:	af00      	add	r7, sp, #0
    40ba:	4603      	mov	r3, r0
    40bc:	80fb      	strh	r3, [r7, #6]
    40be:	4b1b      	ldr	r3, [pc, #108]	; (412c <sound_sampler+0x78>)
    40c0:	2200      	movs	r2, #0
    40c2:	701a      	strb	r2, [r3, #0]
    40c4:	4a1a      	ldr	r2, [pc, #104]	; (4130 <sound_sampler+0x7c>)
    40c6:	4b1a      	ldr	r3, [pc, #104]	; (4130 <sound_sampler+0x7c>)
    40c8:	685b      	ldr	r3, [r3, #4]
    40ca:	f403 7340 	and.w	r3, r3, #768	; 0x300
    40ce:	6053      	str	r3, [r2, #4]
    40d0:	4a18      	ldr	r2, [pc, #96]	; (4134 <sound_sampler+0x80>)
    40d2:	4b18      	ldr	r3, [pc, #96]	; (4134 <sound_sampler+0x80>)
    40d4:	68db      	ldr	r3, [r3, #12]
    40d6:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    40da:	60d3      	str	r3, [r2, #12]
    40dc:	2202      	movs	r2, #2
    40de:	210a      	movs	r1, #10
    40e0:	4814      	ldr	r0, [pc, #80]	; (4134 <sound_sampler+0x80>)
    40e2:	f7fd fe9b 	bl	1e1c <config_pin>
    40e6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    40ea:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    40ee:	68db      	ldr	r3, [r3, #12]
    40f0:	f043 0301 	orr.w	r3, r3, #1
    40f4:	60d3      	str	r3, [r2, #12]
    40f6:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    40fa:	f240 62fd 	movw	r2, #1789	; 0x6fd
    40fe:	62da      	str	r2, [r3, #44]	; 0x2c
    4100:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4104:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4108:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    410a:	6393      	str	r3, [r2, #56]	; 0x38
    410c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4110:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4114:	681b      	ldr	r3, [r3, #0]
    4116:	f043 0301 	orr.w	r3, r3, #1
    411a:	6013      	str	r3, [r2, #0]
    411c:	4a06      	ldr	r2, [pc, #24]	; (4138 <sound_sampler+0x84>)
    411e:	88fb      	ldrh	r3, [r7, #6]
    4120:	8013      	strh	r3, [r2, #0]
    4122:	bf00      	nop
    4124:	3708      	adds	r7, #8
    4126:	46bd      	mov	sp, r7
    4128:	bd80      	pop	{r7, pc}
    412a:	bf00      	nop
    412c:	20000618 	.word	0x20000618
    4130:	40010000 	.word	0x40010000
    4134:	40010c00 	.word	0x40010c00
    4138:	20004dbc 	.word	0x20004dbc

0000413c <sound_stop>:
    413c:	b480      	push	{r7}
    413e:	af00      	add	r7, sp, #0
    4140:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4144:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4148:	681b      	ldr	r3, [r3, #0]
    414a:	f023 0301 	bic.w	r3, r3, #1
    414e:	6013      	str	r3, [r2, #0]
    4150:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4154:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4158:	68db      	ldr	r3, [r3, #12]
    415a:	f023 0301 	bic.w	r3, r3, #1
    415e:	60d3      	str	r3, [r2, #12]
    4160:	bf00      	nop
    4162:	46bd      	mov	sp, r7
    4164:	bc80      	pop	{r7}
    4166:	4770      	bx	lr

00004168 <key_tone>:
    4168:	b480      	push	{r7}
    416a:	b085      	sub	sp, #20
    416c:	af00      	add	r7, sp, #0
    416e:	60f8      	str	r0, [r7, #12]
    4170:	60b9      	str	r1, [r7, #8]
    4172:	607a      	str	r2, [r7, #4]
    4174:	bf00      	nop
    4176:	3714      	adds	r7, #20
    4178:	46bd      	mov	sp, r7
    417a:	bc80      	pop	{r7}
    417c:	4770      	bx	lr

0000417e <noise>:
    417e:	b480      	push	{r7}
    4180:	b083      	sub	sp, #12
    4182:	af00      	add	r7, sp, #0
    4184:	6078      	str	r0, [r7, #4]
    4186:	bf00      	nop
    4188:	370c      	adds	r7, #12
    418a:	46bd      	mov	sp, r7
    418c:	bc80      	pop	{r7}
    418e:	4770      	bx	lr

00004190 <sound_handler>:
    4190:	4668      	mov	r0, sp
    4192:	f020 0107 	bic.w	r1, r0, #7
    4196:	468d      	mov	sp, r1
    4198:	b481      	push	{r0, r7}
    419a:	b082      	sub	sp, #8
    419c:	af00      	add	r7, sp, #0
    419e:	4b1e      	ldr	r3, [pc, #120]	; (4218 <sound_handler+0x88>)
    41a0:	781b      	ldrb	r3, [r3, #0]
    41a2:	08db      	lsrs	r3, r3, #3
    41a4:	71fb      	strb	r3, [r7, #7]
    41a6:	4b1c      	ldr	r3, [pc, #112]	; (4218 <sound_handler+0x88>)
    41a8:	781b      	ldrb	r3, [r3, #0]
    41aa:	43db      	mvns	r3, r3
    41ac:	f003 0307 	and.w	r3, r3, #7
    41b0:	2201      	movs	r2, #1
    41b2:	fa02 f303 	lsl.w	r3, r2, r3
    41b6:	71bb      	strb	r3, [r7, #6]
    41b8:	79fb      	ldrb	r3, [r7, #7]
    41ba:	4a18      	ldr	r2, [pc, #96]	; (421c <sound_handler+0x8c>)
    41bc:	5cd2      	ldrb	r2, [r2, r3]
    41be:	79bb      	ldrb	r3, [r7, #6]
    41c0:	4013      	ands	r3, r2
    41c2:	b2db      	uxtb	r3, r3
    41c4:	2b00      	cmp	r3, #0
    41c6:	d006      	beq.n	41d6 <sound_handler+0x46>
    41c8:	4a15      	ldr	r2, [pc, #84]	; (4220 <sound_handler+0x90>)
    41ca:	4b15      	ldr	r3, [pc, #84]	; (4220 <sound_handler+0x90>)
    41cc:	68db      	ldr	r3, [r3, #12]
    41ce:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    41d2:	60d3      	str	r3, [r2, #12]
    41d4:	e005      	b.n	41e2 <sound_handler+0x52>
    41d6:	4a12      	ldr	r2, [pc, #72]	; (4220 <sound_handler+0x90>)
    41d8:	4b11      	ldr	r3, [pc, #68]	; (4220 <sound_handler+0x90>)
    41da:	68db      	ldr	r3, [r3, #12]
    41dc:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    41e0:	60d3      	str	r3, [r2, #12]
    41e2:	4b0d      	ldr	r3, [pc, #52]	; (4218 <sound_handler+0x88>)
    41e4:	781b      	ldrb	r3, [r3, #0]
    41e6:	3301      	adds	r3, #1
    41e8:	b2da      	uxtb	r2, r3
    41ea:	4b0b      	ldr	r3, [pc, #44]	; (4218 <sound_handler+0x88>)
    41ec:	701a      	strb	r2, [r3, #0]
    41ee:	4b0a      	ldr	r3, [pc, #40]	; (4218 <sound_handler+0x88>)
    41f0:	781b      	ldrb	r3, [r3, #0]
    41f2:	f003 030f 	and.w	r3, r3, #15
    41f6:	b2da      	uxtb	r2, r3
    41f8:	4b07      	ldr	r3, [pc, #28]	; (4218 <sound_handler+0x88>)
    41fa:	701a      	strb	r2, [r3, #0]
    41fc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4200:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4204:	691b      	ldr	r3, [r3, #16]
    4206:	f023 0301 	bic.w	r3, r3, #1
    420a:	6113      	str	r3, [r2, #16]
    420c:	bf00      	nop
    420e:	3708      	adds	r7, #8
    4210:	46bd      	mov	sp, r7
    4212:	bc81      	pop	{r0, r7}
    4214:	4685      	mov	sp, r0
    4216:	4770      	bx	lr
    4218:	20000618 	.word	0x20000618
    421c:	20000608 	.word	0x20000608
    4220:	40010c00 	.word	0x40010c00

00004224 <spi_baudrate>:
    4224:	b480      	push	{r7}
    4226:	b083      	sub	sp, #12
    4228:	af00      	add	r7, sp, #0
    422a:	6078      	str	r0, [r7, #4]
    422c:	6039      	str	r1, [r7, #0]
    422e:	687b      	ldr	r3, [r7, #4]
    4230:	681b      	ldr	r3, [r3, #0]
    4232:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    4236:	687b      	ldr	r3, [r7, #4]
    4238:	601a      	str	r2, [r3, #0]
    423a:	687b      	ldr	r3, [r7, #4]
    423c:	681a      	ldr	r2, [r3, #0]
    423e:	683b      	ldr	r3, [r7, #0]
    4240:	00db      	lsls	r3, r3, #3
    4242:	431a      	orrs	r2, r3
    4244:	687b      	ldr	r3, [r7, #4]
    4246:	601a      	str	r2, [r3, #0]
    4248:	bf00      	nop
    424a:	370c      	adds	r7, #12
    424c:	46bd      	mov	sp, r7
    424e:	bc80      	pop	{r7}
    4250:	4770      	bx	lr

00004252 <spi_config_port>:
    4252:	b580      	push	{r7, lr}
    4254:	b082      	sub	sp, #8
    4256:	af00      	add	r7, sp, #0
    4258:	6078      	str	r0, [r7, #4]
    425a:	6039      	str	r1, [r7, #0]
    425c:	4a33      	ldr	r2, [pc, #204]	; (432c <spi_config_port+0xda>)
    425e:	4b33      	ldr	r3, [pc, #204]	; (432c <spi_config_port+0xda>)
    4260:	699b      	ldr	r3, [r3, #24]
    4262:	f043 0301 	orr.w	r3, r3, #1
    4266:	6193      	str	r3, [r2, #24]
    4268:	687b      	ldr	r3, [r7, #4]
    426a:	4a31      	ldr	r2, [pc, #196]	; (4330 <spi_config_port+0xde>)
    426c:	4293      	cmp	r3, r2
    426e:	d13e      	bne.n	42ee <spi_config_port+0x9c>
    4270:	683b      	ldr	r3, [r7, #0]
    4272:	2b00      	cmp	r3, #0
    4274:	d11a      	bne.n	42ac <spi_config_port+0x5a>
    4276:	4a2d      	ldr	r2, [pc, #180]	; (432c <spi_config_port+0xda>)
    4278:	4b2c      	ldr	r3, [pc, #176]	; (432c <spi_config_port+0xda>)
    427a:	699b      	ldr	r3, [r3, #24]
    427c:	f043 0304 	orr.w	r3, r3, #4
    4280:	6193      	str	r3, [r2, #24]
    4282:	2203      	movs	r2, #3
    4284:	2104      	movs	r1, #4
    4286:	482b      	ldr	r0, [pc, #172]	; (4334 <spi_config_port+0xe2>)
    4288:	f7fd fdc8 	bl	1e1c <config_pin>
    428c:	220b      	movs	r2, #11
    428e:	2105      	movs	r1, #5
    4290:	4828      	ldr	r0, [pc, #160]	; (4334 <spi_config_port+0xe2>)
    4292:	f7fd fdc3 	bl	1e1c <config_pin>
    4296:	2204      	movs	r2, #4
    4298:	2106      	movs	r1, #6
    429a:	4826      	ldr	r0, [pc, #152]	; (4334 <spi_config_port+0xe2>)
    429c:	f7fd fdbe 	bl	1e1c <config_pin>
    42a0:	220b      	movs	r2, #11
    42a2:	2107      	movs	r1, #7
    42a4:	4823      	ldr	r0, [pc, #140]	; (4334 <spi_config_port+0xe2>)
    42a6:	f7fd fdb9 	bl	1e1c <config_pin>
    42aa:	e03a      	b.n	4322 <spi_config_port+0xd0>
    42ac:	4a1f      	ldr	r2, [pc, #124]	; (432c <spi_config_port+0xda>)
    42ae:	4b1f      	ldr	r3, [pc, #124]	; (432c <spi_config_port+0xda>)
    42b0:	699b      	ldr	r3, [r3, #24]
    42b2:	f043 030d 	orr.w	r3, r3, #13
    42b6:	6193      	str	r3, [r2, #24]
    42b8:	4a1f      	ldr	r2, [pc, #124]	; (4338 <spi_config_port+0xe6>)
    42ba:	4b1f      	ldr	r3, [pc, #124]	; (4338 <spi_config_port+0xe6>)
    42bc:	685b      	ldr	r3, [r3, #4]
    42be:	f043 0301 	orr.w	r3, r3, #1
    42c2:	6053      	str	r3, [r2, #4]
    42c4:	2203      	movs	r2, #3
    42c6:	210f      	movs	r1, #15
    42c8:	481a      	ldr	r0, [pc, #104]	; (4334 <spi_config_port+0xe2>)
    42ca:	f7fd fda7 	bl	1e1c <config_pin>
    42ce:	220b      	movs	r2, #11
    42d0:	2103      	movs	r1, #3
    42d2:	481a      	ldr	r0, [pc, #104]	; (433c <spi_config_port+0xea>)
    42d4:	f7fd fda2 	bl	1e1c <config_pin>
    42d8:	2204      	movs	r2, #4
    42da:	2104      	movs	r1, #4
    42dc:	4817      	ldr	r0, [pc, #92]	; (433c <spi_config_port+0xea>)
    42de:	f7fd fd9d 	bl	1e1c <config_pin>
    42e2:	220b      	movs	r2, #11
    42e4:	2105      	movs	r1, #5
    42e6:	4815      	ldr	r0, [pc, #84]	; (433c <spi_config_port+0xea>)
    42e8:	f7fd fd98 	bl	1e1c <config_pin>
    42ec:	e019      	b.n	4322 <spi_config_port+0xd0>
    42ee:	4a0f      	ldr	r2, [pc, #60]	; (432c <spi_config_port+0xda>)
    42f0:	4b0e      	ldr	r3, [pc, #56]	; (432c <spi_config_port+0xda>)
    42f2:	699b      	ldr	r3, [r3, #24]
    42f4:	f043 0308 	orr.w	r3, r3, #8
    42f8:	6193      	str	r3, [r2, #24]
    42fa:	2203      	movs	r2, #3
    42fc:	2102      	movs	r1, #2
    42fe:	480f      	ldr	r0, [pc, #60]	; (433c <spi_config_port+0xea>)
    4300:	f7fd fd8c 	bl	1e1c <config_pin>
    4304:	220b      	movs	r2, #11
    4306:	210d      	movs	r1, #13
    4308:	480c      	ldr	r0, [pc, #48]	; (433c <spi_config_port+0xea>)
    430a:	f7fd fd87 	bl	1e1c <config_pin>
    430e:	2204      	movs	r2, #4
    4310:	210e      	movs	r1, #14
    4312:	480a      	ldr	r0, [pc, #40]	; (433c <spi_config_port+0xea>)
    4314:	f7fd fd82 	bl	1e1c <config_pin>
    4318:	220b      	movs	r2, #11
    431a:	210f      	movs	r1, #15
    431c:	4807      	ldr	r0, [pc, #28]	; (433c <spi_config_port+0xea>)
    431e:	f7fd fd7d 	bl	1e1c <config_pin>
    4322:	bf00      	nop
    4324:	3708      	adds	r7, #8
    4326:	46bd      	mov	sp, r7
    4328:	bd80      	pop	{r7, pc}
    432a:	bf00      	nop
    432c:	40021000 	.word	0x40021000
    4330:	40013000 	.word	0x40013000
    4334:	40010800 	.word	0x40010800
    4338:	40010000 	.word	0x40010000
    433c:	40010c00 	.word	0x40010c00

00004340 <spi_init>:
    4340:	b580      	push	{r7, lr}
    4342:	b084      	sub	sp, #16
    4344:	af00      	add	r7, sp, #0
    4346:	60f8      	str	r0, [r7, #12]
    4348:	60b9      	str	r1, [r7, #8]
    434a:	607a      	str	r2, [r7, #4]
    434c:	603b      	str	r3, [r7, #0]
    434e:	6839      	ldr	r1, [r7, #0]
    4350:	68f8      	ldr	r0, [r7, #12]
    4352:	f7ff ff7e 	bl	4252 <spi_config_port>
    4356:	68fb      	ldr	r3, [r7, #12]
    4358:	4a10      	ldr	r2, [pc, #64]	; (439c <spi_init+0x5c>)
    435a:	4293      	cmp	r3, r2
    435c:	d106      	bne.n	436c <spi_init+0x2c>
    435e:	4a10      	ldr	r2, [pc, #64]	; (43a0 <spi_init+0x60>)
    4360:	4b0f      	ldr	r3, [pc, #60]	; (43a0 <spi_init+0x60>)
    4362:	699b      	ldr	r3, [r3, #24]
    4364:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    4368:	6193      	str	r3, [r2, #24]
    436a:	e005      	b.n	4378 <spi_init+0x38>
    436c:	4a0c      	ldr	r2, [pc, #48]	; (43a0 <spi_init+0x60>)
    436e:	4b0c      	ldr	r3, [pc, #48]	; (43a0 <spi_init+0x60>)
    4370:	69db      	ldr	r3, [r3, #28]
    4372:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    4376:	61d3      	str	r3, [r2, #28]
    4378:	68fb      	ldr	r3, [r7, #12]
    437a:	687a      	ldr	r2, [r7, #4]
    437c:	601a      	str	r2, [r3, #0]
    437e:	68b9      	ldr	r1, [r7, #8]
    4380:	68f8      	ldr	r0, [r7, #12]
    4382:	f7ff ff4f 	bl	4224 <spi_baudrate>
    4386:	68fb      	ldr	r3, [r7, #12]
    4388:	681b      	ldr	r3, [r3, #0]
    438a:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    438e:	68fb      	ldr	r3, [r7, #12]
    4390:	601a      	str	r2, [r3, #0]
    4392:	bf00      	nop
    4394:	3710      	adds	r7, #16
    4396:	46bd      	mov	sp, r7
    4398:	bd80      	pop	{r7, pc}
    439a:	bf00      	nop
    439c:	40013000 	.word	0x40013000
    43a0:	40021000 	.word	0x40021000

000043a4 <spi_send>:
    43a4:	b480      	push	{r7}
    43a6:	b083      	sub	sp, #12
    43a8:	af00      	add	r7, sp, #0
    43aa:	6078      	str	r0, [r7, #4]
    43ac:	460b      	mov	r3, r1
    43ae:	70fb      	strb	r3, [r7, #3]
    43b0:	bf00      	nop
    43b2:	687b      	ldr	r3, [r7, #4]
    43b4:	689b      	ldr	r3, [r3, #8]
    43b6:	f003 0302 	and.w	r3, r3, #2
    43ba:	2b00      	cmp	r3, #0
    43bc:	d0f9      	beq.n	43b2 <spi_send+0xe>
    43be:	78fa      	ldrb	r2, [r7, #3]
    43c0:	687b      	ldr	r3, [r7, #4]
    43c2:	60da      	str	r2, [r3, #12]
    43c4:	bf00      	nop
    43c6:	687b      	ldr	r3, [r7, #4]
    43c8:	689b      	ldr	r3, [r3, #8]
    43ca:	f003 0301 	and.w	r3, r3, #1
    43ce:	2b00      	cmp	r3, #0
    43d0:	d0f9      	beq.n	43c6 <spi_send+0x22>
    43d2:	687b      	ldr	r3, [r7, #4]
    43d4:	68db      	ldr	r3, [r3, #12]
    43d6:	b2db      	uxtb	r3, r3
    43d8:	4618      	mov	r0, r3
    43da:	370c      	adds	r7, #12
    43dc:	46bd      	mov	sp, r7
    43de:	bc80      	pop	{r7}
    43e0:	4770      	bx	lr

000043e2 <spi_receive>:
    43e2:	b480      	push	{r7}
    43e4:	b085      	sub	sp, #20
    43e6:	af00      	add	r7, sp, #0
    43e8:	6078      	str	r0, [r7, #4]
    43ea:	bf00      	nop
    43ec:	687b      	ldr	r3, [r7, #4]
    43ee:	689b      	ldr	r3, [r3, #8]
    43f0:	f003 0302 	and.w	r3, r3, #2
    43f4:	2b00      	cmp	r3, #0
    43f6:	d0f9      	beq.n	43ec <spi_receive+0xa>
    43f8:	687b      	ldr	r3, [r7, #4]
    43fa:	22ff      	movs	r2, #255	; 0xff
    43fc:	60da      	str	r2, [r3, #12]
    43fe:	bf00      	nop
    4400:	687b      	ldr	r3, [r7, #4]
    4402:	689b      	ldr	r3, [r3, #8]
    4404:	f003 0301 	and.w	r3, r3, #1
    4408:	2b00      	cmp	r3, #0
    440a:	d0f9      	beq.n	4400 <spi_receive+0x1e>
    440c:	687b      	ldr	r3, [r7, #4]
    440e:	68db      	ldr	r3, [r3, #12]
    4410:	73fb      	strb	r3, [r7, #15]
    4412:	7bfb      	ldrb	r3, [r7, #15]
    4414:	4618      	mov	r0, r3
    4416:	3714      	adds	r7, #20
    4418:	46bd      	mov	sp, r7
    441a:	bc80      	pop	{r7}
    441c:	4770      	bx	lr

0000441e <spi_send_block>:
    441e:	b480      	push	{r7}
    4420:	b087      	sub	sp, #28
    4422:	af00      	add	r7, sp, #0
    4424:	60f8      	str	r0, [r7, #12]
    4426:	60b9      	str	r1, [r7, #8]
    4428:	607a      	str	r2, [r7, #4]
    442a:	e010      	b.n	444e <spi_send_block+0x30>
    442c:	68bb      	ldr	r3, [r7, #8]
    442e:	1c5a      	adds	r2, r3, #1
    4430:	60ba      	str	r2, [r7, #8]
    4432:	781b      	ldrb	r3, [r3, #0]
    4434:	461a      	mov	r2, r3
    4436:	68fb      	ldr	r3, [r7, #12]
    4438:	60da      	str	r2, [r3, #12]
    443a:	bf00      	nop
    443c:	68fb      	ldr	r3, [r7, #12]
    443e:	689b      	ldr	r3, [r3, #8]
    4440:	f003 0302 	and.w	r3, r3, #2
    4444:	2b00      	cmp	r3, #0
    4446:	d0f9      	beq.n	443c <spi_send_block+0x1e>
    4448:	687b      	ldr	r3, [r7, #4]
    444a:	3b01      	subs	r3, #1
    444c:	607b      	str	r3, [r7, #4]
    444e:	687b      	ldr	r3, [r7, #4]
    4450:	2b00      	cmp	r3, #0
    4452:	d1eb      	bne.n	442c <spi_send_block+0xe>
    4454:	bf00      	nop
    4456:	68fb      	ldr	r3, [r7, #12]
    4458:	689b      	ldr	r3, [r3, #8]
    445a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    445e:	2b00      	cmp	r3, #0
    4460:	d1f9      	bne.n	4456 <spi_send_block+0x38>
    4462:	68fb      	ldr	r3, [r7, #12]
    4464:	68db      	ldr	r3, [r3, #12]
    4466:	75fb      	strb	r3, [r7, #23]
    4468:	bf00      	nop
    446a:	371c      	adds	r7, #28
    446c:	46bd      	mov	sp, r7
    446e:	bc80      	pop	{r7}
    4470:	4770      	bx	lr

00004472 <spi_receive_block>:
    4472:	b480      	push	{r7}
    4474:	b085      	sub	sp, #20
    4476:	af00      	add	r7, sp, #0
    4478:	60f8      	str	r0, [r7, #12]
    447a:	60b9      	str	r1, [r7, #8]
    447c:	607a      	str	r2, [r7, #4]
    447e:	e013      	b.n	44a8 <spi_receive_block+0x36>
    4480:	68fb      	ldr	r3, [r7, #12]
    4482:	2200      	movs	r2, #0
    4484:	60da      	str	r2, [r3, #12]
    4486:	bf00      	nop
    4488:	68fb      	ldr	r3, [r7, #12]
    448a:	689b      	ldr	r3, [r3, #8]
    448c:	f003 0301 	and.w	r3, r3, #1
    4490:	2b00      	cmp	r3, #0
    4492:	d0f9      	beq.n	4488 <spi_receive_block+0x16>
    4494:	68bb      	ldr	r3, [r7, #8]
    4496:	1c5a      	adds	r2, r3, #1
    4498:	60ba      	str	r2, [r7, #8]
    449a:	68fa      	ldr	r2, [r7, #12]
    449c:	68d2      	ldr	r2, [r2, #12]
    449e:	b2d2      	uxtb	r2, r2
    44a0:	701a      	strb	r2, [r3, #0]
    44a2:	687b      	ldr	r3, [r7, #4]
    44a4:	3b01      	subs	r3, #1
    44a6:	607b      	str	r3, [r7, #4]
    44a8:	687b      	ldr	r3, [r7, #4]
    44aa:	2b00      	cmp	r3, #0
    44ac:	d1e8      	bne.n	4480 <spi_receive_block+0xe>
    44ae:	bf00      	nop
    44b0:	3714      	adds	r7, #20
    44b2:	46bd      	mov	sp, r7
    44b4:	bc80      	pop	{r7}
    44b6:	4770      	bx	lr

000044b8 <reset_mcu>:
    44b8:	4b01      	ldr	r3, [pc, #4]	; (44c0 <reset_mcu+0x8>)
    44ba:	4a02      	ldr	r2, [pc, #8]	; (44c4 <reset_mcu+0xc>)
    44bc:	601a      	str	r2, [r3, #0]
    44be:	bf00      	nop
    44c0:	e000ed0c 	.word	0xe000ed0c
    44c4:	05fa0004 	.word	0x05fa0004

000044c8 <print_fault>:
    44c8:	b580      	push	{r7, lr}
    44ca:	b082      	sub	sp, #8
    44cc:	af00      	add	r7, sp, #0
    44ce:	6078      	str	r0, [r7, #4]
    44d0:	6039      	str	r1, [r7, #0]
    44d2:	6878      	ldr	r0, [r7, #4]
    44d4:	f000 f9bc 	bl	4850 <print>
    44d8:	4818      	ldr	r0, [pc, #96]	; (453c <print_fault+0x74>)
    44da:	f000 f9b9 	bl	4850 <print>
    44de:	683b      	ldr	r3, [r7, #0]
    44e0:	2b00      	cmp	r3, #0
    44e2:	d004      	beq.n	44ee <print_fault+0x26>
    44e4:	683b      	ldr	r3, [r7, #0]
    44e6:	2110      	movs	r1, #16
    44e8:	4618      	mov	r0, r3
    44ea:	f000 f9e1 	bl	48b0 <print_int>
    44ee:	200d      	movs	r0, #13
    44f0:	f000 f8f6 	bl	46e0 <put_char>
    44f4:	4812      	ldr	r0, [pc, #72]	; (4540 <print_fault+0x78>)
    44f6:	f000 f9ab 	bl	4850 <print>
    44fa:	4b12      	ldr	r3, [pc, #72]	; (4544 <print_fault+0x7c>)
    44fc:	681b      	ldr	r3, [r3, #0]
    44fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
    4502:	b29b      	uxth	r3, r3
    4504:	2110      	movs	r1, #16
    4506:	4618      	mov	r0, r3
    4508:	f000 f9d2 	bl	48b0 <print_int>
    450c:	480e      	ldr	r0, [pc, #56]	; (4548 <print_fault+0x80>)
    450e:	f000 f99f 	bl	4850 <print>
    4512:	4b0c      	ldr	r3, [pc, #48]	; (4544 <print_fault+0x7c>)
    4514:	681b      	ldr	r3, [r3, #0]
    4516:	f3c3 2307 	ubfx	r3, r3, #8, #8
    451a:	b2db      	uxtb	r3, r3
    451c:	2110      	movs	r1, #16
    451e:	4618      	mov	r0, r3
    4520:	f000 f9c6 	bl	48b0 <print_int>
    4524:	4809      	ldr	r0, [pc, #36]	; (454c <print_fault+0x84>)
    4526:	f000 f993 	bl	4850 <print>
    452a:	4b06      	ldr	r3, [pc, #24]	; (4544 <print_fault+0x7c>)
    452c:	681b      	ldr	r3, [r3, #0]
    452e:	b2db      	uxtb	r3, r3
    4530:	2110      	movs	r1, #16
    4532:	4618      	mov	r0, r3
    4534:	f000 f9bc 	bl	48b0 <print_int>
    4538:	e7fe      	b.n	4538 <print_fault+0x70>
    453a:	bf00      	nop
    453c:	0000581c 	.word	0x0000581c
    4540:	0000582c 	.word	0x0000582c
    4544:	e000ed28 	.word	0xe000ed28
    4548:	00005834 	.word	0x00005834
    454c:	0000583c 	.word	0x0000583c

00004550 <font_color>:
    4550:	b480      	push	{r7}
    4552:	b083      	sub	sp, #12
    4554:	af00      	add	r7, sp, #0
    4556:	4603      	mov	r3, r0
    4558:	71fb      	strb	r3, [r7, #7]
    455a:	79fb      	ldrb	r3, [r7, #7]
    455c:	f003 030f 	and.w	r3, r3, #15
    4560:	b2da      	uxtb	r2, r3
    4562:	4b03      	ldr	r3, [pc, #12]	; (4570 <font_color+0x20>)
    4564:	705a      	strb	r2, [r3, #1]
    4566:	bf00      	nop
    4568:	370c      	adds	r7, #12
    456a:	46bd      	mov	sp, r7
    456c:	bc80      	pop	{r7}
    456e:	4770      	bx	lr
    4570:	20000174 	.word	0x20000174

00004574 <bg_color>:
    4574:	b480      	push	{r7}
    4576:	b083      	sub	sp, #12
    4578:	af00      	add	r7, sp, #0
    457a:	4603      	mov	r3, r0
    457c:	71fb      	strb	r3, [r7, #7]
    457e:	79fb      	ldrb	r3, [r7, #7]
    4580:	f003 030f 	and.w	r3, r3, #15
    4584:	b2da      	uxtb	r2, r3
    4586:	4b03      	ldr	r3, [pc, #12]	; (4594 <bg_color+0x20>)
    4588:	701a      	strb	r2, [r3, #0]
    458a:	bf00      	nop
    458c:	370c      	adds	r7, #12
    458e:	46bd      	mov	sp, r7
    4590:	bc80      	pop	{r7}
    4592:	4770      	bx	lr
    4594:	20000174 	.word	0x20000174

00004598 <select_font>:
    4598:	b480      	push	{r7}
    459a:	b083      	sub	sp, #12
    459c:	af00      	add	r7, sp, #0
    459e:	4603      	mov	r3, r0
    45a0:	71fb      	strb	r3, [r7, #7]
    45a2:	4a04      	ldr	r2, [pc, #16]	; (45b4 <select_font+0x1c>)
    45a4:	79fb      	ldrb	r3, [r7, #7]
    45a6:	7013      	strb	r3, [r2, #0]
    45a8:	bf00      	nop
    45aa:	370c      	adds	r7, #12
    45ac:	46bd      	mov	sp, r7
    45ae:	bc80      	pop	{r7}
    45b0:	4770      	bx	lr
    45b2:	bf00      	nop
    45b4:	20000170 	.word	0x20000170

000045b8 <new_line>:
    45b8:	b580      	push	{r7, lr}
    45ba:	b082      	sub	sp, #8
    45bc:	af00      	add	r7, sp, #0
    45be:	4b27      	ldr	r3, [pc, #156]	; (465c <new_line+0xa4>)
    45c0:	2200      	movs	r2, #0
    45c2:	701a      	strb	r2, [r3, #0]
    45c4:	f000 fdee 	bl	51a4 <get_video_params>
    45c8:	6078      	str	r0, [r7, #4]
    45ca:	4b25      	ldr	r3, [pc, #148]	; (4660 <new_line+0xa8>)
    45cc:	781b      	ldrb	r3, [r3, #0]
    45ce:	2b01      	cmp	r3, #1
    45d0:	d017      	beq.n	4602 <new_line+0x4a>
    45d2:	2b02      	cmp	r3, #2
    45d4:	d029      	beq.n	462a <new_line+0x72>
    45d6:	2b00      	cmp	r3, #0
    45d8:	d000      	beq.n	45dc <new_line+0x24>
    45da:	e03a      	b.n	4652 <new_line+0x9a>
    45dc:	4b21      	ldr	r3, [pc, #132]	; (4664 <new_line+0xac>)
    45de:	781b      	ldrb	r3, [r3, #0]
    45e0:	1d9a      	adds	r2, r3, #6
    45e2:	687b      	ldr	r3, [r7, #4]
    45e4:	89db      	ldrh	r3, [r3, #14]
    45e6:	3b05      	subs	r3, #5
    45e8:	429a      	cmp	r2, r3
    45ea:	dc06      	bgt.n	45fa <new_line+0x42>
    45ec:	4b1d      	ldr	r3, [pc, #116]	; (4664 <new_line+0xac>)
    45ee:	781b      	ldrb	r3, [r3, #0]
    45f0:	3306      	adds	r3, #6
    45f2:	b2da      	uxtb	r2, r3
    45f4:	4b1b      	ldr	r3, [pc, #108]	; (4664 <new_line+0xac>)
    45f6:	701a      	strb	r2, [r3, #0]
    45f8:	e02b      	b.n	4652 <new_line+0x9a>
    45fa:	2006      	movs	r0, #6
    45fc:	f7fd fdc4 	bl	2188 <gfx_scroll_up>
    4600:	e027      	b.n	4652 <new_line+0x9a>
    4602:	4b18      	ldr	r3, [pc, #96]	; (4664 <new_line+0xac>)
    4604:	781b      	ldrb	r3, [r3, #0]
    4606:	f103 020a 	add.w	r2, r3, #10
    460a:	687b      	ldr	r3, [r7, #4]
    460c:	89db      	ldrh	r3, [r3, #14]
    460e:	3b09      	subs	r3, #9
    4610:	429a      	cmp	r2, r3
    4612:	dc06      	bgt.n	4622 <new_line+0x6a>
    4614:	4b13      	ldr	r3, [pc, #76]	; (4664 <new_line+0xac>)
    4616:	781b      	ldrb	r3, [r3, #0]
    4618:	330a      	adds	r3, #10
    461a:	b2da      	uxtb	r2, r3
    461c:	4b11      	ldr	r3, [pc, #68]	; (4664 <new_line+0xac>)
    461e:	701a      	strb	r2, [r3, #0]
    4620:	e017      	b.n	4652 <new_line+0x9a>
    4622:	200a      	movs	r0, #10
    4624:	f7fd fdb0 	bl	2188 <gfx_scroll_up>
    4628:	e013      	b.n	4652 <new_line+0x9a>
    462a:	4b0e      	ldr	r3, [pc, #56]	; (4664 <new_line+0xac>)
    462c:	781b      	ldrb	r3, [r3, #0]
    462e:	f103 0208 	add.w	r2, r3, #8
    4632:	687b      	ldr	r3, [r7, #4]
    4634:	89db      	ldrh	r3, [r3, #14]
    4636:	3b07      	subs	r3, #7
    4638:	429a      	cmp	r2, r3
    463a:	dc06      	bgt.n	464a <new_line+0x92>
    463c:	4b09      	ldr	r3, [pc, #36]	; (4664 <new_line+0xac>)
    463e:	781b      	ldrb	r3, [r3, #0]
    4640:	3308      	adds	r3, #8
    4642:	b2da      	uxtb	r2, r3
    4644:	4b07      	ldr	r3, [pc, #28]	; (4664 <new_line+0xac>)
    4646:	701a      	strb	r2, [r3, #0]
    4648:	e002      	b.n	4650 <new_line+0x98>
    464a:	2008      	movs	r0, #8
    464c:	f7fd fd9c 	bl	2188 <gfx_scroll_up>
    4650:	bf00      	nop
    4652:	bf00      	nop
    4654:	3708      	adds	r7, #8
    4656:	46bd      	mov	sp, r7
    4658:	bd80      	pop	{r7, pc}
    465a:	bf00      	nop
    465c:	20000619 	.word	0x20000619
    4660:	20000170 	.word	0x20000170
    4664:	2000061a 	.word	0x2000061a

00004668 <draw_char>:
    4668:	b5b0      	push	{r4, r5, r7, lr}
    466a:	b086      	sub	sp, #24
    466c:	af00      	add	r7, sp, #0
    466e:	60f8      	str	r0, [r7, #12]
    4670:	60b9      	str	r1, [r7, #8]
    4672:	607a      	str	r2, [r7, #4]
    4674:	603b      	str	r3, [r7, #0]
    4676:	68bc      	ldr	r4, [r7, #8]
    4678:	e026      	b.n	46c8 <draw_char+0x60>
    467a:	6abb      	ldr	r3, [r7, #40]	; 0x28
    467c:	1c5a      	adds	r2, r3, #1
    467e:	62ba      	str	r2, [r7, #40]	; 0x28
    4680:	781b      	ldrb	r3, [r3, #0]
    4682:	757b      	strb	r3, [r7, #21]
    4684:	2380      	movs	r3, #128	; 0x80
    4686:	75bb      	strb	r3, [r7, #22]
    4688:	68fd      	ldr	r5, [r7, #12]
    468a:	e017      	b.n	46bc <draw_char+0x54>
    468c:	7d7a      	ldrb	r2, [r7, #21]
    468e:	7dbb      	ldrb	r3, [r7, #22]
    4690:	4013      	ands	r3, r2
    4692:	753b      	strb	r3, [r7, #20]
    4694:	7d3b      	ldrb	r3, [r7, #20]
    4696:	2b00      	cmp	r3, #0
    4698:	d003      	beq.n	46a2 <draw_char+0x3a>
    469a:	4b10      	ldr	r3, [pc, #64]	; (46dc <draw_char+0x74>)
    469c:	785b      	ldrb	r3, [r3, #1]
    469e:	75fb      	strb	r3, [r7, #23]
    46a0:	e002      	b.n	46a8 <draw_char+0x40>
    46a2:	4b0e      	ldr	r3, [pc, #56]	; (46dc <draw_char+0x74>)
    46a4:	781b      	ldrb	r3, [r3, #0]
    46a6:	75fb      	strb	r3, [r7, #23]
    46a8:	7dfb      	ldrb	r3, [r7, #23]
    46aa:	461a      	mov	r2, r3
    46ac:	4621      	mov	r1, r4
    46ae:	4628      	mov	r0, r5
    46b0:	f7fd fcc0 	bl	2034 <gfx_plot>
    46b4:	7dbb      	ldrb	r3, [r7, #22]
    46b6:	085b      	lsrs	r3, r3, #1
    46b8:	75bb      	strb	r3, [r7, #22]
    46ba:	3501      	adds	r5, #1
    46bc:	68fa      	ldr	r2, [r7, #12]
    46be:	687b      	ldr	r3, [r7, #4]
    46c0:	4413      	add	r3, r2
    46c2:	42ab      	cmp	r3, r5
    46c4:	dce2      	bgt.n	468c <draw_char+0x24>
    46c6:	3401      	adds	r4, #1
    46c8:	68ba      	ldr	r2, [r7, #8]
    46ca:	683b      	ldr	r3, [r7, #0]
    46cc:	4413      	add	r3, r2
    46ce:	42a3      	cmp	r3, r4
    46d0:	dcd3      	bgt.n	467a <draw_char+0x12>
    46d2:	bf00      	nop
    46d4:	3718      	adds	r7, #24
    46d6:	46bd      	mov	sp, r7
    46d8:	bdb0      	pop	{r4, r5, r7, pc}
    46da:	bf00      	nop
    46dc:	20000174 	.word	0x20000174

000046e0 <put_char>:
    46e0:	b580      	push	{r7, lr}
    46e2:	b084      	sub	sp, #16
    46e4:	af02      	add	r7, sp, #8
    46e6:	4603      	mov	r3, r0
    46e8:	71fb      	strb	r3, [r7, #7]
    46ea:	4b3d      	ldr	r3, [pc, #244]	; (47e0 <put_char+0x100>)
    46ec:	781b      	ldrb	r3, [r3, #0]
    46ee:	2b01      	cmp	r3, #1
    46f0:	d027      	beq.n	4742 <put_char+0x62>
    46f2:	2b02      	cmp	r3, #2
    46f4:	d048      	beq.n	4788 <put_char+0xa8>
    46f6:	2b00      	cmp	r3, #0
    46f8:	d000      	beq.n	46fc <put_char+0x1c>
    46fa:	e06d      	b.n	47d8 <put_char+0xf8>
    46fc:	79fb      	ldrb	r3, [r7, #7]
    46fe:	2b0f      	cmp	r3, #15
    4700:	d865      	bhi.n	47ce <put_char+0xee>
    4702:	4b38      	ldr	r3, [pc, #224]	; (47e4 <put_char+0x104>)
    4704:	781b      	ldrb	r3, [r3, #0]
    4706:	4618      	mov	r0, r3
    4708:	4b37      	ldr	r3, [pc, #220]	; (47e8 <put_char+0x108>)
    470a:	781b      	ldrb	r3, [r3, #0]
    470c:	4619      	mov	r1, r3
    470e:	79fa      	ldrb	r2, [r7, #7]
    4710:	4613      	mov	r3, r2
    4712:	005b      	lsls	r3, r3, #1
    4714:	4413      	add	r3, r2
    4716:	005b      	lsls	r3, r3, #1
    4718:	461a      	mov	r2, r3
    471a:	4b34      	ldr	r3, [pc, #208]	; (47ec <put_char+0x10c>)
    471c:	4413      	add	r3, r2
    471e:	9300      	str	r3, [sp, #0]
    4720:	2306      	movs	r3, #6
    4722:	2204      	movs	r2, #4
    4724:	f7ff ffa0 	bl	4668 <draw_char>
    4728:	4b2e      	ldr	r3, [pc, #184]	; (47e4 <put_char+0x104>)
    472a:	781b      	ldrb	r3, [r3, #0]
    472c:	3304      	adds	r3, #4
    472e:	b2da      	uxtb	r2, r3
    4730:	4b2c      	ldr	r3, [pc, #176]	; (47e4 <put_char+0x104>)
    4732:	701a      	strb	r2, [r3, #0]
    4734:	4b2b      	ldr	r3, [pc, #172]	; (47e4 <put_char+0x104>)
    4736:	781b      	ldrb	r3, [r3, #0]
    4738:	2bb1      	cmp	r3, #177	; 0xb1
    473a:	d948      	bls.n	47ce <put_char+0xee>
    473c:	f7ff ff3c 	bl	45b8 <new_line>
    4740:	e045      	b.n	47ce <put_char+0xee>
    4742:	79fb      	ldrb	r3, [r7, #7]
    4744:	2b0f      	cmp	r3, #15
    4746:	d844      	bhi.n	47d2 <put_char+0xf2>
    4748:	4b26      	ldr	r3, [pc, #152]	; (47e4 <put_char+0x104>)
    474a:	781b      	ldrb	r3, [r3, #0]
    474c:	4618      	mov	r0, r3
    474e:	4b26      	ldr	r3, [pc, #152]	; (47e8 <put_char+0x108>)
    4750:	781b      	ldrb	r3, [r3, #0]
    4752:	4619      	mov	r1, r3
    4754:	79fa      	ldrb	r2, [r7, #7]
    4756:	4613      	mov	r3, r2
    4758:	009b      	lsls	r3, r3, #2
    475a:	4413      	add	r3, r2
    475c:	005b      	lsls	r3, r3, #1
    475e:	461a      	mov	r2, r3
    4760:	4b23      	ldr	r3, [pc, #140]	; (47f0 <put_char+0x110>)
    4762:	4413      	add	r3, r2
    4764:	9300      	str	r3, [sp, #0]
    4766:	230a      	movs	r3, #10
    4768:	2208      	movs	r2, #8
    476a:	f7ff ff7d 	bl	4668 <draw_char>
    476e:	4b1d      	ldr	r3, [pc, #116]	; (47e4 <put_char+0x104>)
    4770:	781b      	ldrb	r3, [r3, #0]
    4772:	3308      	adds	r3, #8
    4774:	b2da      	uxtb	r2, r3
    4776:	4b1b      	ldr	r3, [pc, #108]	; (47e4 <put_char+0x104>)
    4778:	701a      	strb	r2, [r3, #0]
    477a:	4b1a      	ldr	r3, [pc, #104]	; (47e4 <put_char+0x104>)
    477c:	781b      	ldrb	r3, [r3, #0]
    477e:	2bad      	cmp	r3, #173	; 0xad
    4780:	d927      	bls.n	47d2 <put_char+0xf2>
    4782:	f7ff ff19 	bl	45b8 <new_line>
    4786:	e024      	b.n	47d2 <put_char+0xf2>
    4788:	79fb      	ldrb	r3, [r7, #7]
    478a:	2b1f      	cmp	r3, #31
    478c:	d923      	bls.n	47d6 <put_char+0xf6>
    478e:	79fb      	ldrb	r3, [r7, #7]
    4790:	2b84      	cmp	r3, #132	; 0x84
    4792:	d820      	bhi.n	47d6 <put_char+0xf6>
    4794:	4b13      	ldr	r3, [pc, #76]	; (47e4 <put_char+0x104>)
    4796:	781b      	ldrb	r3, [r3, #0]
    4798:	4618      	mov	r0, r3
    479a:	4b13      	ldr	r3, [pc, #76]	; (47e8 <put_char+0x108>)
    479c:	781b      	ldrb	r3, [r3, #0]
    479e:	4619      	mov	r1, r3
    47a0:	79fb      	ldrb	r3, [r7, #7]
    47a2:	3b20      	subs	r3, #32
    47a4:	00db      	lsls	r3, r3, #3
    47a6:	4a13      	ldr	r2, [pc, #76]	; (47f4 <put_char+0x114>)
    47a8:	4413      	add	r3, r2
    47aa:	9300      	str	r3, [sp, #0]
    47ac:	2308      	movs	r3, #8
    47ae:	2206      	movs	r2, #6
    47b0:	f7ff ff5a 	bl	4668 <draw_char>
    47b4:	4b0b      	ldr	r3, [pc, #44]	; (47e4 <put_char+0x104>)
    47b6:	781b      	ldrb	r3, [r3, #0]
    47b8:	3306      	adds	r3, #6
    47ba:	b2da      	uxtb	r2, r3
    47bc:	4b09      	ldr	r3, [pc, #36]	; (47e4 <put_char+0x104>)
    47be:	701a      	strb	r2, [r3, #0]
    47c0:	4b08      	ldr	r3, [pc, #32]	; (47e4 <put_char+0x104>)
    47c2:	781b      	ldrb	r3, [r3, #0]
    47c4:	2baf      	cmp	r3, #175	; 0xaf
    47c6:	d906      	bls.n	47d6 <put_char+0xf6>
    47c8:	f7ff fef6 	bl	45b8 <new_line>
    47cc:	e003      	b.n	47d6 <put_char+0xf6>
    47ce:	bf00      	nop
    47d0:	e002      	b.n	47d8 <put_char+0xf8>
    47d2:	bf00      	nop
    47d4:	e000      	b.n	47d8 <put_char+0xf8>
    47d6:	bf00      	nop
    47d8:	bf00      	nop
    47da:	3708      	adds	r7, #8
    47dc:	46bd      	mov	sp, r7
    47de:	bd80      	pop	{r7, pc}
    47e0:	20000170 	.word	0x20000170
    47e4:	20000619 	.word	0x20000619
    47e8:	2000061a 	.word	0x2000061a
    47ec:	0000523c 	.word	0x0000523c
    47f0:	0000529c 	.word	0x0000529c
    47f4:	0000533c 	.word	0x0000533c

000047f8 <set_cursor>:
    47f8:	b480      	push	{r7}
    47fa:	b083      	sub	sp, #12
    47fc:	af00      	add	r7, sp, #0
    47fe:	4603      	mov	r3, r0
    4800:	460a      	mov	r2, r1
    4802:	71fb      	strb	r3, [r7, #7]
    4804:	4613      	mov	r3, r2
    4806:	71bb      	strb	r3, [r7, #6]
    4808:	4a05      	ldr	r2, [pc, #20]	; (4820 <set_cursor+0x28>)
    480a:	79fb      	ldrb	r3, [r7, #7]
    480c:	7013      	strb	r3, [r2, #0]
    480e:	4a05      	ldr	r2, [pc, #20]	; (4824 <set_cursor+0x2c>)
    4810:	79bb      	ldrb	r3, [r7, #6]
    4812:	7013      	strb	r3, [r2, #0]
    4814:	bf00      	nop
    4816:	370c      	adds	r7, #12
    4818:	46bd      	mov	sp, r7
    481a:	bc80      	pop	{r7}
    481c:	4770      	bx	lr
    481e:	bf00      	nop
    4820:	20000619 	.word	0x20000619
    4824:	2000061a 	.word	0x2000061a

00004828 <get_cursor>:
    4828:	b480      	push	{r7}
    482a:	af00      	add	r7, sp, #0
    482c:	4b06      	ldr	r3, [pc, #24]	; (4848 <get_cursor+0x20>)
    482e:	781b      	ldrb	r3, [r3, #0]
    4830:	b29b      	uxth	r3, r3
    4832:	021b      	lsls	r3, r3, #8
    4834:	b29a      	uxth	r2, r3
    4836:	4b05      	ldr	r3, [pc, #20]	; (484c <get_cursor+0x24>)
    4838:	781b      	ldrb	r3, [r3, #0]
    483a:	b29b      	uxth	r3, r3
    483c:	4413      	add	r3, r2
    483e:	b29b      	uxth	r3, r3
    4840:	4618      	mov	r0, r3
    4842:	46bd      	mov	sp, r7
    4844:	bc80      	pop	{r7}
    4846:	4770      	bx	lr
    4848:	20000619 	.word	0x20000619
    484c:	2000061a 	.word	0x2000061a

00004850 <print>:
    4850:	b580      	push	{r7, lr}
    4852:	b084      	sub	sp, #16
    4854:	af00      	add	r7, sp, #0
    4856:	6078      	str	r0, [r7, #4]
    4858:	e011      	b.n	487e <print+0x2e>
    485a:	7bfb      	ldrb	r3, [r7, #15]
    485c:	2b0a      	cmp	r3, #10
    485e:	d004      	beq.n	486a <print+0x1a>
    4860:	2b0d      	cmp	r3, #13
    4862:	d002      	beq.n	486a <print+0x1a>
    4864:	2b08      	cmp	r3, #8
    4866:	d003      	beq.n	4870 <print+0x20>
    4868:	e005      	b.n	4876 <print+0x26>
    486a:	f7ff fea5 	bl	45b8 <new_line>
    486e:	e006      	b.n	487e <print+0x2e>
    4870:	f000 f892 	bl	4998 <cursor_left>
    4874:	e003      	b.n	487e <print+0x2e>
    4876:	7bfb      	ldrb	r3, [r7, #15]
    4878:	4618      	mov	r0, r3
    487a:	f7ff ff31 	bl	46e0 <put_char>
    487e:	687b      	ldr	r3, [r7, #4]
    4880:	1c5a      	adds	r2, r3, #1
    4882:	607a      	str	r2, [r7, #4]
    4884:	781b      	ldrb	r3, [r3, #0]
    4886:	73fb      	strb	r3, [r7, #15]
    4888:	7bfb      	ldrb	r3, [r7, #15]
    488a:	2b00      	cmp	r3, #0
    488c:	d1e5      	bne.n	485a <print+0xa>
    488e:	bf00      	nop
    4890:	3710      	adds	r7, #16
    4892:	46bd      	mov	sp, r7
    4894:	bd80      	pop	{r7, pc}

00004896 <println>:
    4896:	b580      	push	{r7, lr}
    4898:	b082      	sub	sp, #8
    489a:	af00      	add	r7, sp, #0
    489c:	6078      	str	r0, [r7, #4]
    489e:	6878      	ldr	r0, [r7, #4]
    48a0:	f7ff ffd6 	bl	4850 <print>
    48a4:	f7ff fe88 	bl	45b8 <new_line>
    48a8:	bf00      	nop
    48aa:	3708      	adds	r7, #8
    48ac:	46bd      	mov	sp, r7
    48ae:	bd80      	pop	{r7, pc}

000048b0 <print_int>:
    48b0:	b580      	push	{r7, lr}
    48b2:	b08a      	sub	sp, #40	; 0x28
    48b4:	af00      	add	r7, sp, #0
    48b6:	6078      	str	r0, [r7, #4]
    48b8:	460b      	mov	r3, r1
    48ba:	70fb      	strb	r3, [r7, #3]
    48bc:	2300      	movs	r3, #0
    48be:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    48c2:	2300      	movs	r3, #0
    48c4:	76fb      	strb	r3, [r7, #27]
    48c6:	2320      	movs	r3, #32
    48c8:	76bb      	strb	r3, [r7, #26]
    48ca:	230e      	movs	r3, #14
    48cc:	623b      	str	r3, [r7, #32]
    48ce:	687b      	ldr	r3, [r7, #4]
    48d0:	2b00      	cmp	r3, #0
    48d2:	da27      	bge.n	4924 <print_int+0x74>
    48d4:	2301      	movs	r3, #1
    48d6:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    48da:	687b      	ldr	r3, [r7, #4]
    48dc:	425b      	negs	r3, r3
    48de:	607b      	str	r3, [r7, #4]
    48e0:	e020      	b.n	4924 <print_int+0x74>
    48e2:	78fa      	ldrb	r2, [r7, #3]
    48e4:	687b      	ldr	r3, [r7, #4]
    48e6:	fb93 f1f2 	sdiv	r1, r3, r2
    48ea:	fb02 f201 	mul.w	r2, r2, r1
    48ee:	1a9b      	subs	r3, r3, r2
    48f0:	61fb      	str	r3, [r7, #28]
    48f2:	69fb      	ldr	r3, [r7, #28]
    48f4:	2b09      	cmp	r3, #9
    48f6:	dd02      	ble.n	48fe <print_int+0x4e>
    48f8:	69fb      	ldr	r3, [r7, #28]
    48fa:	3307      	adds	r3, #7
    48fc:	61fb      	str	r3, [r7, #28]
    48fe:	6a3b      	ldr	r3, [r7, #32]
    4900:	3b01      	subs	r3, #1
    4902:	623b      	str	r3, [r7, #32]
    4904:	69fb      	ldr	r3, [r7, #28]
    4906:	3330      	adds	r3, #48	; 0x30
    4908:	61fb      	str	r3, [r7, #28]
    490a:	69fb      	ldr	r3, [r7, #28]
    490c:	b2d9      	uxtb	r1, r3
    490e:	f107 020c 	add.w	r2, r7, #12
    4912:	6a3b      	ldr	r3, [r7, #32]
    4914:	4413      	add	r3, r2
    4916:	460a      	mov	r2, r1
    4918:	701a      	strb	r2, [r3, #0]
    491a:	78fb      	ldrb	r3, [r7, #3]
    491c:	687a      	ldr	r2, [r7, #4]
    491e:	fb92 f3f3 	sdiv	r3, r2, r3
    4922:	607b      	str	r3, [r7, #4]
    4924:	6a3b      	ldr	r3, [r7, #32]
    4926:	2b01      	cmp	r3, #1
    4928:	dd02      	ble.n	4930 <print_int+0x80>
    492a:	687b      	ldr	r3, [r7, #4]
    492c:	2b00      	cmp	r3, #0
    492e:	d1d8      	bne.n	48e2 <print_int+0x32>
    4930:	6a3b      	ldr	r3, [r7, #32]
    4932:	2b0e      	cmp	r3, #14
    4934:	d108      	bne.n	4948 <print_int+0x98>
    4936:	6a3b      	ldr	r3, [r7, #32]
    4938:	3b01      	subs	r3, #1
    493a:	623b      	str	r3, [r7, #32]
    493c:	f107 020c 	add.w	r2, r7, #12
    4940:	6a3b      	ldr	r3, [r7, #32]
    4942:	4413      	add	r3, r2
    4944:	2230      	movs	r2, #48	; 0x30
    4946:	701a      	strb	r2, [r3, #0]
    4948:	78fb      	ldrb	r3, [r7, #3]
    494a:	2b0a      	cmp	r3, #10
    494c:	d10d      	bne.n	496a <print_int+0xba>
    494e:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4952:	2b00      	cmp	r3, #0
    4954:	d009      	beq.n	496a <print_int+0xba>
    4956:	6a3b      	ldr	r3, [r7, #32]
    4958:	3b01      	subs	r3, #1
    495a:	623b      	str	r3, [r7, #32]
    495c:	f107 020c 	add.w	r2, r7, #12
    4960:	6a3b      	ldr	r3, [r7, #32]
    4962:	4413      	add	r3, r2
    4964:	222d      	movs	r2, #45	; 0x2d
    4966:	701a      	strb	r2, [r3, #0]
    4968:	e00b      	b.n	4982 <print_int+0xd2>
    496a:	78fb      	ldrb	r3, [r7, #3]
    496c:	2b10      	cmp	r3, #16
    496e:	d108      	bne.n	4982 <print_int+0xd2>
    4970:	6a3b      	ldr	r3, [r7, #32]
    4972:	3b01      	subs	r3, #1
    4974:	623b      	str	r3, [r7, #32]
    4976:	f107 020c 	add.w	r2, r7, #12
    497a:	6a3b      	ldr	r3, [r7, #32]
    497c:	4413      	add	r3, r2
    497e:	2224      	movs	r2, #36	; 0x24
    4980:	701a      	strb	r2, [r3, #0]
    4982:	f107 020c 	add.w	r2, r7, #12
    4986:	6a3b      	ldr	r3, [r7, #32]
    4988:	4413      	add	r3, r2
    498a:	4618      	mov	r0, r3
    498c:	f7ff ff60 	bl	4850 <print>
    4990:	bf00      	nop
    4992:	3728      	adds	r7, #40	; 0x28
    4994:	46bd      	mov	sp, r7
    4996:	bd80      	pop	{r7, pc}

00004998 <cursor_left>:
    4998:	b480      	push	{r7}
    499a:	af00      	add	r7, sp, #0
    499c:	4b1a      	ldr	r3, [pc, #104]	; (4a08 <cursor_left+0x70>)
    499e:	781b      	ldrb	r3, [r3, #0]
    49a0:	2b01      	cmp	r3, #1
    49a2:	d010      	beq.n	49c6 <cursor_left+0x2e>
    49a4:	2b02      	cmp	r3, #2
    49a6:	d01a      	beq.n	49de <cursor_left+0x46>
    49a8:	2b00      	cmp	r3, #0
    49aa:	d000      	beq.n	49ae <cursor_left+0x16>
    49ac:	e028      	b.n	4a00 <cursor_left+0x68>
    49ae:	4b17      	ldr	r3, [pc, #92]	; (4a0c <cursor_left+0x74>)
    49b0:	781b      	ldrb	r3, [r3, #0]
    49b2:	3b04      	subs	r3, #4
    49b4:	2b00      	cmp	r3, #0
    49b6:	db1e      	blt.n	49f6 <cursor_left+0x5e>
    49b8:	4b14      	ldr	r3, [pc, #80]	; (4a0c <cursor_left+0x74>)
    49ba:	781b      	ldrb	r3, [r3, #0]
    49bc:	3b04      	subs	r3, #4
    49be:	b2da      	uxtb	r2, r3
    49c0:	4b12      	ldr	r3, [pc, #72]	; (4a0c <cursor_left+0x74>)
    49c2:	701a      	strb	r2, [r3, #0]
    49c4:	e017      	b.n	49f6 <cursor_left+0x5e>
    49c6:	4b11      	ldr	r3, [pc, #68]	; (4a0c <cursor_left+0x74>)
    49c8:	781b      	ldrb	r3, [r3, #0]
    49ca:	3b08      	subs	r3, #8
    49cc:	2b00      	cmp	r3, #0
    49ce:	db14      	blt.n	49fa <cursor_left+0x62>
    49d0:	4b0e      	ldr	r3, [pc, #56]	; (4a0c <cursor_left+0x74>)
    49d2:	781b      	ldrb	r3, [r3, #0]
    49d4:	3b08      	subs	r3, #8
    49d6:	b2da      	uxtb	r2, r3
    49d8:	4b0c      	ldr	r3, [pc, #48]	; (4a0c <cursor_left+0x74>)
    49da:	701a      	strb	r2, [r3, #0]
    49dc:	e00d      	b.n	49fa <cursor_left+0x62>
    49de:	4b0b      	ldr	r3, [pc, #44]	; (4a0c <cursor_left+0x74>)
    49e0:	781b      	ldrb	r3, [r3, #0]
    49e2:	3b06      	subs	r3, #6
    49e4:	2b00      	cmp	r3, #0
    49e6:	db0a      	blt.n	49fe <cursor_left+0x66>
    49e8:	4b08      	ldr	r3, [pc, #32]	; (4a0c <cursor_left+0x74>)
    49ea:	781b      	ldrb	r3, [r3, #0]
    49ec:	3b06      	subs	r3, #6
    49ee:	b2da      	uxtb	r2, r3
    49f0:	4b06      	ldr	r3, [pc, #24]	; (4a0c <cursor_left+0x74>)
    49f2:	701a      	strb	r2, [r3, #0]
    49f4:	e003      	b.n	49fe <cursor_left+0x66>
    49f6:	bf00      	nop
    49f8:	e002      	b.n	4a00 <cursor_left+0x68>
    49fa:	bf00      	nop
    49fc:	e000      	b.n	4a00 <cursor_left+0x68>
    49fe:	bf00      	nop
    4a00:	bf00      	nop
    4a02:	46bd      	mov	sp, r7
    4a04:	bc80      	pop	{r7}
    4a06:	4770      	bx	lr
    4a08:	20000170 	.word	0x20000170
    4a0c:	20000619 	.word	0x20000619

00004a10 <text_scroller>:
    4a10:	b580      	push	{r7, lr}
    4a12:	b084      	sub	sp, #16
    4a14:	af00      	add	r7, sp, #0
    4a16:	6078      	str	r0, [r7, #4]
    4a18:	460b      	mov	r3, r1
    4a1a:	70fb      	strb	r3, [r7, #3]
    4a1c:	f7fd fb58 	bl	20d0 <gfx_cls>
    4a20:	2002      	movs	r0, #2
    4a22:	f7ff fdb9 	bl	4598 <select_font>
    4a26:	687b      	ldr	r3, [r7, #4]
    4a28:	1c5a      	adds	r2, r3, #1
    4a2a:	607a      	str	r2, [r7, #4]
    4a2c:	781b      	ldrb	r3, [r3, #0]
    4a2e:	73fb      	strb	r3, [r7, #15]
    4a30:	e035      	b.n	4a9e <text_scroller+0x8e>
    4a32:	2120      	movs	r1, #32
    4a34:	2000      	movs	r0, #0
    4a36:	f7ff fedf 	bl	47f8 <set_cursor>
    4a3a:	e00e      	b.n	4a5a <text_scroller+0x4a>
    4a3c:	7bfb      	ldrb	r3, [r7, #15]
    4a3e:	4618      	mov	r0, r3
    4a40:	f7ff fe4e 	bl	46e0 <put_char>
    4a44:	687b      	ldr	r3, [r7, #4]
    4a46:	1c5a      	adds	r2, r3, #1
    4a48:	607a      	str	r2, [r7, #4]
    4a4a:	781b      	ldrb	r3, [r3, #0]
    4a4c:	73fb      	strb	r3, [r7, #15]
    4a4e:	2002      	movs	r0, #2
    4a50:	f7fc ff00 	bl	1854 <btn_query_down>
    4a54:	4603      	mov	r3, r0
    4a56:	2b00      	cmp	r3, #0
    4a58:	d13c      	bne.n	4ad4 <text_scroller+0xc4>
    4a5a:	7bfb      	ldrb	r3, [r7, #15]
    4a5c:	2b00      	cmp	r3, #0
    4a5e:	d002      	beq.n	4a66 <text_scroller+0x56>
    4a60:	7bfb      	ldrb	r3, [r7, #15]
    4a62:	2b0a      	cmp	r3, #10
    4a64:	d1ea      	bne.n	4a3c <text_scroller+0x2c>
    4a66:	2300      	movs	r3, #0
    4a68:	73bb      	strb	r3, [r7, #14]
    4a6a:	e010      	b.n	4a8e <text_scroller+0x7e>
    4a6c:	78fb      	ldrb	r3, [r7, #3]
    4a6e:	b29b      	uxth	r3, r3
    4a70:	4618      	mov	r0, r3
    4a72:	f000 fbab 	bl	51cc <game_pause>
    4a76:	2001      	movs	r0, #1
    4a78:	f7fd fb86 	bl	2188 <gfx_scroll_up>
    4a7c:	2002      	movs	r0, #2
    4a7e:	f7fc fee9 	bl	1854 <btn_query_down>
    4a82:	4603      	mov	r3, r0
    4a84:	2b00      	cmp	r3, #0
    4a86:	d127      	bne.n	4ad8 <text_scroller+0xc8>
    4a88:	7bbb      	ldrb	r3, [r7, #14]
    4a8a:	3301      	adds	r3, #1
    4a8c:	73bb      	strb	r3, [r7, #14]
    4a8e:	7bbb      	ldrb	r3, [r7, #14]
    4a90:	2b07      	cmp	r3, #7
    4a92:	d9eb      	bls.n	4a6c <text_scroller+0x5c>
    4a94:	687b      	ldr	r3, [r7, #4]
    4a96:	1c5a      	adds	r2, r3, #1
    4a98:	607a      	str	r2, [r7, #4]
    4a9a:	781b      	ldrb	r3, [r3, #0]
    4a9c:	73fb      	strb	r3, [r7, #15]
    4a9e:	7bfb      	ldrb	r3, [r7, #15]
    4aa0:	2b00      	cmp	r3, #0
    4aa2:	d1c6      	bne.n	4a32 <text_scroller+0x22>
    4aa4:	2300      	movs	r3, #0
    4aa6:	73fb      	strb	r3, [r7, #15]
    4aa8:	e010      	b.n	4acc <text_scroller+0xbc>
    4aaa:	78fb      	ldrb	r3, [r7, #3]
    4aac:	b29b      	uxth	r3, r3
    4aae:	4618      	mov	r0, r3
    4ab0:	f000 fb8c 	bl	51cc <game_pause>
    4ab4:	2001      	movs	r0, #1
    4ab6:	f7fd fb67 	bl	2188 <gfx_scroll_up>
    4aba:	2002      	movs	r0, #2
    4abc:	f7fc feca 	bl	1854 <btn_query_down>
    4ac0:	4603      	mov	r3, r0
    4ac2:	2b00      	cmp	r3, #0
    4ac4:	d10a      	bne.n	4adc <text_scroller+0xcc>
    4ac6:	7bfb      	ldrb	r3, [r7, #15]
    4ac8:	3301      	adds	r3, #1
    4aca:	73fb      	strb	r3, [r7, #15]
    4acc:	7bfb      	ldrb	r3, [r7, #15]
    4ace:	2b1f      	cmp	r3, #31
    4ad0:	d9eb      	bls.n	4aaa <text_scroller+0x9a>
    4ad2:	e004      	b.n	4ade <text_scroller+0xce>
    4ad4:	bf00      	nop
    4ad6:	e002      	b.n	4ade <text_scroller+0xce>
    4ad8:	bf00      	nop
    4ada:	e000      	b.n	4ade <text_scroller+0xce>
    4adc:	bf00      	nop
    4ade:	f7fd faf7 	bl	20d0 <gfx_cls>
    4ae2:	2002      	movs	r0, #2
    4ae4:	f7fc fefa 	bl	18dc <btn_wait_up>
    4ae8:	bf00      	nop
    4aea:	3710      	adds	r7, #16
    4aec:	46bd      	mov	sp, r7
    4aee:	bd80      	pop	{r7, pc}

00004af0 <prompt_btn>:
    4af0:	b580      	push	{r7, lr}
    4af2:	af00      	add	r7, sp, #0
    4af4:	4802      	ldr	r0, [pc, #8]	; (4b00 <prompt_btn+0x10>)
    4af6:	f7ff feab 	bl	4850 <print>
    4afa:	bf00      	nop
    4afc:	bd80      	pop	{r7, pc}
    4afe:	bf00      	nop
    4b00:	00005888 	.word	0x00005888

00004b04 <clear_screen>:
    4b04:	b580      	push	{r7, lr}
    4b06:	af00      	add	r7, sp, #0
    4b08:	f7fd fae2 	bl	20d0 <gfx_cls>
    4b0c:	4b03      	ldr	r3, [pc, #12]	; (4b1c <clear_screen+0x18>)
    4b0e:	2200      	movs	r2, #0
    4b10:	701a      	strb	r2, [r3, #0]
    4b12:	4b03      	ldr	r3, [pc, #12]	; (4b20 <clear_screen+0x1c>)
    4b14:	2200      	movs	r2, #0
    4b16:	701a      	strb	r2, [r3, #0]
    4b18:	bf00      	nop
    4b1a:	bd80      	pop	{r7, pc}
    4b1c:	20000619 	.word	0x20000619
    4b20:	2000061a 	.word	0x2000061a

00004b24 <show_cursor>:
    4b24:	b580      	push	{r7, lr}
    4b26:	b084      	sub	sp, #16
    4b28:	af00      	add	r7, sp, #0
    4b2a:	6078      	str	r0, [r7, #4]
    4b2c:	687b      	ldr	r3, [r7, #4]
    4b2e:	2b00      	cmp	r3, #0
    4b30:	d001      	beq.n	4b36 <show_cursor+0x12>
    4b32:	230f      	movs	r3, #15
    4b34:	e000      	b.n	4b38 <show_cursor+0x14>
    4b36:	2300      	movs	r3, #0
    4b38:	72fb      	strb	r3, [r7, #11]
    4b3a:	4b0c      	ldr	r3, [pc, #48]	; (4b6c <show_cursor+0x48>)
    4b3c:	781b      	ldrb	r3, [r3, #0]
    4b3e:	60fb      	str	r3, [r7, #12]
    4b40:	e00a      	b.n	4b58 <show_cursor+0x34>
    4b42:	4b0b      	ldr	r3, [pc, #44]	; (4b70 <show_cursor+0x4c>)
    4b44:	781b      	ldrb	r3, [r3, #0]
    4b46:	3307      	adds	r3, #7
    4b48:	7afa      	ldrb	r2, [r7, #11]
    4b4a:	4619      	mov	r1, r3
    4b4c:	68f8      	ldr	r0, [r7, #12]
    4b4e:	f7fd fa71 	bl	2034 <gfx_plot>
    4b52:	68fb      	ldr	r3, [r7, #12]
    4b54:	3301      	adds	r3, #1
    4b56:	60fb      	str	r3, [r7, #12]
    4b58:	4b04      	ldr	r3, [pc, #16]	; (4b6c <show_cursor+0x48>)
    4b5a:	781b      	ldrb	r3, [r3, #0]
    4b5c:	1d9a      	adds	r2, r3, #6
    4b5e:	68fb      	ldr	r3, [r7, #12]
    4b60:	429a      	cmp	r2, r3
    4b62:	dcee      	bgt.n	4b42 <show_cursor+0x1e>
    4b64:	bf00      	nop
    4b66:	3710      	adds	r7, #16
    4b68:	46bd      	mov	sp, r7
    4b6a:	bd80      	pop	{r7, pc}
    4b6c:	20000619 	.word	0x20000619
    4b70:	2000061a 	.word	0x2000061a

00004b74 <tvout_init>:
    4b74:	b580      	push	{r7, lr}
    4b76:	af00      	add	r7, sp, #0
    4b78:	4b3e      	ldr	r3, [pc, #248]	; (4c74 <tvout_init+0x100>)
    4b7a:	4a3f      	ldr	r2, [pc, #252]	; (4c78 <tvout_init+0x104>)
    4b7c:	601a      	str	r2, [r3, #0]
    4b7e:	4b3f      	ldr	r3, [pc, #252]	; (4c7c <tvout_init+0x108>)
    4b80:	4a3f      	ldr	r2, [pc, #252]	; (4c80 <tvout_init+0x10c>)
    4b82:	601a      	str	r2, [r3, #0]
    4b84:	220a      	movs	r2, #10
    4b86:	2108      	movs	r1, #8
    4b88:	483a      	ldr	r0, [pc, #232]	; (4c74 <tvout_init+0x100>)
    4b8a:	f7fd f947 	bl	1e1c <config_pin>
    4b8e:	4b39      	ldr	r3, [pc, #228]	; (4c74 <tvout_init+0x100>)
    4b90:	2200      	movs	r2, #0
    4b92:	60da      	str	r2, [r3, #12]
    4b94:	4a3b      	ldr	r2, [pc, #236]	; (4c84 <tvout_init+0x110>)
    4b96:	4b3b      	ldr	r3, [pc, #236]	; (4c84 <tvout_init+0x110>)
    4b98:	699b      	ldr	r3, [r3, #24]
    4b9a:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4b9e:	6193      	str	r3, [r2, #24]
    4ba0:	4b39      	ldr	r3, [pc, #228]	; (4c88 <tvout_init+0x114>)
    4ba2:	2278      	movs	r2, #120	; 0x78
    4ba4:	619a      	str	r2, [r3, #24]
    4ba6:	4b38      	ldr	r3, [pc, #224]	; (4c88 <tvout_init+0x114>)
    4ba8:	2201      	movs	r2, #1
    4baa:	621a      	str	r2, [r3, #32]
    4bac:	4b36      	ldr	r3, [pc, #216]	; (4c88 <tvout_init+0x114>)
    4bae:	2284      	movs	r2, #132	; 0x84
    4bb0:	601a      	str	r2, [r3, #0]
    4bb2:	4b35      	ldr	r3, [pc, #212]	; (4c88 <tvout_init+0x114>)
    4bb4:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4bb8:	62da      	str	r2, [r3, #44]	; 0x2c
    4bba:	4b33      	ldr	r3, [pc, #204]	; (4c88 <tvout_init+0x114>)
    4bbc:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4bc0:	635a      	str	r2, [r3, #52]	; 0x34
    4bc2:	4b31      	ldr	r3, [pc, #196]	; (4c88 <tvout_init+0x114>)
    4bc4:	f240 1265 	movw	r2, #357	; 0x165
    4bc8:	639a      	str	r2, [r3, #56]	; 0x38
    4bca:	4a2f      	ldr	r2, [pc, #188]	; (4c88 <tvout_init+0x114>)
    4bcc:	4b2e      	ldr	r3, [pc, #184]	; (4c88 <tvout_init+0x114>)
    4bce:	695b      	ldr	r3, [r3, #20]
    4bd0:	f043 0301 	orr.w	r3, r3, #1
    4bd4:	6153      	str	r3, [r2, #20]
    4bd6:	4b2c      	ldr	r3, [pc, #176]	; (4c88 <tvout_init+0x114>)
    4bd8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4bdc:	645a      	str	r2, [r3, #68]	; 0x44
    4bde:	4b2a      	ldr	r3, [pc, #168]	; (4c88 <tvout_init+0x114>)
    4be0:	2200      	movs	r2, #0
    4be2:	611a      	str	r2, [r3, #16]
    4be4:	4a28      	ldr	r2, [pc, #160]	; (4c88 <tvout_init+0x114>)
    4be6:	4b28      	ldr	r3, [pc, #160]	; (4c88 <tvout_init+0x114>)
    4be8:	68db      	ldr	r3, [r3, #12]
    4bea:	f043 0301 	orr.w	r3, r3, #1
    4bee:	60d3      	str	r3, [r2, #12]
    4bf0:	2100      	movs	r1, #0
    4bf2:	2019      	movs	r0, #25
    4bf4:	f7fe fb5c 	bl	32b0 <set_int_priority>
    4bf8:	2100      	movs	r1, #0
    4bfa:	201b      	movs	r0, #27
    4bfc:	f7fe fb58 	bl	32b0 <set_int_priority>
    4c00:	2019      	movs	r0, #25
    4c02:	f7fe fa9b 	bl	313c <enable_interrupt>
    4c06:	201b      	movs	r0, #27
    4c08:	f7fe fa98 	bl	313c <enable_interrupt>
    4c0c:	4a1e      	ldr	r2, [pc, #120]	; (4c88 <tvout_init+0x114>)
    4c0e:	4b1e      	ldr	r3, [pc, #120]	; (4c88 <tvout_init+0x114>)
    4c10:	681b      	ldr	r3, [r3, #0]
    4c12:	f043 0301 	orr.w	r3, r3, #1
    4c16:	6013      	str	r3, [r2, #0]
    4c18:	220a      	movs	r2, #10
    4c1a:	2100      	movs	r1, #0
    4c1c:	481b      	ldr	r0, [pc, #108]	; (4c8c <tvout_init+0x118>)
    4c1e:	f7fd f8fd 	bl	1e1c <config_pin>
    4c22:	4a18      	ldr	r2, [pc, #96]	; (4c84 <tvout_init+0x110>)
    4c24:	4b17      	ldr	r3, [pc, #92]	; (4c84 <tvout_init+0x110>)
    4c26:	69db      	ldr	r3, [r3, #28]
    4c28:	f043 0302 	orr.w	r3, r3, #2
    4c2c:	61d3      	str	r3, [r2, #28]
    4c2e:	4b18      	ldr	r3, [pc, #96]	; (4c90 <tvout_init+0x11c>)
    4c30:	2278      	movs	r2, #120	; 0x78
    4c32:	61da      	str	r2, [r3, #28]
    4c34:	4b16      	ldr	r3, [pc, #88]	; (4c90 <tvout_init+0x11c>)
    4c36:	2284      	movs	r2, #132	; 0x84
    4c38:	601a      	str	r2, [r3, #0]
    4c3a:	4b15      	ldr	r3, [pc, #84]	; (4c90 <tvout_init+0x11c>)
    4c3c:	2213      	movs	r2, #19
    4c3e:	62da      	str	r2, [r3, #44]	; 0x2c
    4c40:	4b13      	ldr	r3, [pc, #76]	; (4c90 <tvout_init+0x11c>)
    4c42:	220a      	movs	r2, #10
    4c44:	63da      	str	r2, [r3, #60]	; 0x3c
    4c46:	4a12      	ldr	r2, [pc, #72]	; (4c90 <tvout_init+0x11c>)
    4c48:	4b11      	ldr	r3, [pc, #68]	; (4c90 <tvout_init+0x11c>)
    4c4a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4c4c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4c50:	6453      	str	r3, [r2, #68]	; 0x44
    4c52:	4a0f      	ldr	r2, [pc, #60]	; (4c90 <tvout_init+0x11c>)
    4c54:	4b0e      	ldr	r3, [pc, #56]	; (4c90 <tvout_init+0x11c>)
    4c56:	695b      	ldr	r3, [r3, #20]
    4c58:	f043 0301 	orr.w	r3, r3, #1
    4c5c:	6153      	str	r3, [r2, #20]
    4c5e:	4b0c      	ldr	r3, [pc, #48]	; (4c90 <tvout_init+0x11c>)
    4c60:	2200      	movs	r2, #0
    4c62:	611a      	str	r2, [r3, #16]
    4c64:	4a0a      	ldr	r2, [pc, #40]	; (4c90 <tvout_init+0x11c>)
    4c66:	4b0a      	ldr	r3, [pc, #40]	; (4c90 <tvout_init+0x11c>)
    4c68:	681b      	ldr	r3, [r3, #0]
    4c6a:	f043 0301 	orr.w	r3, r3, #1
    4c6e:	6013      	str	r3, [r2, #0]
    4c70:	bf00      	nop
    4c72:	bd80      	pop	{r7, pc}
    4c74:	40010800 	.word	0x40010800
    4c78:	88883333 	.word	0x88883333
    4c7c:	40010804 	.word	0x40010804
    4c80:	84484444 	.word	0x84484444
    4c84:	40021000 	.word	0x40021000
    4c88:	40012c00 	.word	0x40012c00
    4c8c:	40010c00 	.word	0x40010c00
    4c90:	40000400 	.word	0x40000400

00004c94 <TV_OUT_handler>:
    4c94:	4668      	mov	r0, sp
    4c96:	f020 0107 	bic.w	r1, r0, #7
    4c9a:	468d      	mov	sp, r1
    4c9c:	b471      	push	{r0, r4, r5, r6}
    4c9e:	4a31      	ldr	r2, [pc, #196]	; (4d64 <TV_OUT_handler+0xd0>)
    4ca0:	6a13      	ldr	r3, [r2, #32]
    4ca2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4ca6:	6213      	str	r3, [r2, #32]
    4ca8:	492f      	ldr	r1, [pc, #188]	; (4d68 <TV_OUT_handler+0xd4>)
    4caa:	f240 2209 	movw	r2, #521	; 0x209
    4cae:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4cb0:	4293      	cmp	r3, r2
    4cb2:	d9fc      	bls.n	4cae <TV_OUT_handler+0x1a>
    4cb4:	4a2b      	ldr	r2, [pc, #172]	; (4d64 <TV_OUT_handler+0xd0>)
    4cb6:	6a13      	ldr	r3, [r2, #32]
    4cb8:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4cbc:	6213      	str	r3, [r2, #32]
    4cbe:	4b2b      	ldr	r3, [pc, #172]	; (4d6c <TV_OUT_handler+0xd8>)
    4cc0:	881d      	ldrh	r5, [r3, #0]
    4cc2:	b2ad      	uxth	r5, r5
    4cc4:	4b2a      	ldr	r3, [pc, #168]	; (4d70 <TV_OUT_handler+0xdc>)
    4cc6:	7818      	ldrb	r0, [r3, #0]
    4cc8:	4b2a      	ldr	r3, [pc, #168]	; (4d74 <TV_OUT_handler+0xe0>)
    4cca:	781b      	ldrb	r3, [r3, #0]
    4ccc:	fb95 f5f3 	sdiv	r5, r5, r3
    4cd0:	4b29      	ldr	r3, [pc, #164]	; (4d78 <TV_OUT_handler+0xe4>)
    4cd2:	fb00 3505 	mla	r5, r0, r5, r3
    4cd6:	4b29      	ldr	r3, [pc, #164]	; (4d7c <TV_OUT_handler+0xe8>)
    4cd8:	881a      	ldrh	r2, [r3, #0]
    4cda:	4923      	ldr	r1, [pc, #140]	; (4d68 <TV_OUT_handler+0xd4>)
    4cdc:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4cde:	4293      	cmp	r3, r2
    4ce0:	d3fc      	bcc.n	4cdc <TV_OUT_handler+0x48>
    4ce2:	4b27      	ldr	r3, [pc, #156]	; (4d80 <TV_OUT_handler+0xec>)
    4ce4:	461a      	mov	r2, r3
    4ce6:	6812      	ldr	r2, [r2, #0]
    4ce8:	f002 0207 	and.w	r2, r2, #7
    4cec:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4cf0:	4497      	add	pc, r2
    4cf2:	bf00      	nop
    4cf4:	bf00      	nop
    4cf6:	bf00      	nop
    4cf8:	bf00      	nop
    4cfa:	bf00      	nop
    4cfc:	bf00      	nop
    4cfe:	bf00      	nop
    4d00:	bf00      	nop
    4d02:	4a18      	ldr	r2, [pc, #96]	; (4d64 <TV_OUT_handler+0xd0>)
    4d04:	6a11      	ldr	r1, [r2, #32]
    4d06:	4b1f      	ldr	r3, [pc, #124]	; (4d84 <TV_OUT_handler+0xf0>)
    4d08:	881b      	ldrh	r3, [r3, #0]
    4d0a:	430b      	orrs	r3, r1
    4d0c:	6213      	str	r3, [r2, #32]
    4d0e:	b1b8      	cbz	r0, 4d40 <TV_OUT_handler+0xac>
    4d10:	462b      	mov	r3, r5
    4d12:	481d      	ldr	r0, [pc, #116]	; (4d88 <TV_OUT_handler+0xf4>)
    4d14:	491d      	ldr	r1, [pc, #116]	; (4d8c <TV_OUT_handler+0xf8>)
    4d16:	4e16      	ldr	r6, [pc, #88]	; (4d70 <TV_OUT_handler+0xdc>)
    4d18:	781a      	ldrb	r2, [r3, #0]
    4d1a:	0912      	lsrs	r2, r2, #4
    4d1c:	8002      	strh	r2, [r0, #0]
    4d1e:	780c      	ldrb	r4, [r1, #0]
    4d20:	4622      	mov	r2, r4
    4d22:	3a01      	subs	r2, #1
    4d24:	d1fd      	bne.n	4d22 <TV_OUT_handler+0x8e>
    4d26:	f813 2b01 	ldrb.w	r2, [r3], #1
    4d2a:	f002 020f 	and.w	r2, r2, #15
    4d2e:	8002      	strh	r2, [r0, #0]
    4d30:	780c      	ldrb	r4, [r1, #0]
    4d32:	4622      	mov	r2, r4
    4d34:	3a01      	subs	r2, #1
    4d36:	d1fd      	bne.n	4d34 <TV_OUT_handler+0xa0>
    4d38:	1b5c      	subs	r4, r3, r5
    4d3a:	7832      	ldrb	r2, [r6, #0]
    4d3c:	4294      	cmp	r4, r2
    4d3e:	d3eb      	bcc.n	4d18 <TV_OUT_handler+0x84>
    4d40:	2200      	movs	r2, #0
    4d42:	4b13      	ldr	r3, [pc, #76]	; (4d90 <TV_OUT_handler+0xfc>)
    4d44:	60da      	str	r2, [r3, #12]
    4d46:	4a07      	ldr	r2, [pc, #28]	; (4d64 <TV_OUT_handler+0xd0>)
    4d48:	6a13      	ldr	r3, [r2, #32]
    4d4a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4d4e:	6213      	str	r3, [r2, #32]
    4d50:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4d54:	6913      	ldr	r3, [r2, #16]
    4d56:	f023 0304 	bic.w	r3, r3, #4
    4d5a:	6113      	str	r3, [r2, #16]
    4d5c:	bc71      	pop	{r0, r4, r5, r6}
    4d5e:	4685      	mov	sp, r0
    4d60:	4770      	bx	lr
    4d62:	bf00      	nop
    4d64:	40000400 	.word	0x40000400
    4d68:	40012c00 	.word	0x40012c00
    4d6c:	20000620 	.word	0x20000620
    4d70:	2000017c 	.word	0x2000017c
    4d74:	2000017d 	.word	0x2000017d
    4d78:	20002654 	.word	0x20002654
    4d7c:	2000017a 	.word	0x2000017a
    4d80:	40012c24 	.word	0x40012c24
    4d84:	20000182 	.word	0x20000182
    4d88:	4001080c 	.word	0x4001080c
    4d8c:	2000017e 	.word	0x2000017e
    4d90:	40010800 	.word	0x40010800

00004d94 <TV_SYNC_handler>:
    4d94:	4668      	mov	r0, sp
    4d96:	f020 0107 	bic.w	r1, r0, #7
    4d9a:	468d      	mov	sp, r1
    4d9c:	b501      	push	{r0, lr}
    4d9e:	4a84      	ldr	r2, [pc, #528]	; (4fb0 <TV_SYNC_handler+0x21c>)
    4da0:	8813      	ldrh	r3, [r2, #0]
    4da2:	3301      	adds	r3, #1
    4da4:	b29b      	uxth	r3, r3
    4da6:	8013      	strh	r3, [r2, #0]
    4da8:	4a82      	ldr	r2, [pc, #520]	; (4fb4 <TV_SYNC_handler+0x220>)
    4daa:	6813      	ldr	r3, [r2, #0]
    4dac:	3301      	adds	r3, #1
    4dae:	6013      	str	r3, [r2, #0]
    4db0:	4b81      	ldr	r3, [pc, #516]	; (4fb8 <TV_SYNC_handler+0x224>)
    4db2:	881b      	ldrh	r3, [r3, #0]
    4db4:	b29b      	uxth	r3, r3
    4db6:	2b09      	cmp	r3, #9
    4db8:	f200 8088 	bhi.w	4ecc <TV_SYNC_handler+0x138>
    4dbc:	e8df f013 	tbh	[pc, r3, lsl #1]
    4dc0:	002c000a 	.word	0x002c000a
    4dc4:	006e004c 	.word	0x006e004c
    4dc8:	0097008f 	.word	0x0097008f
    4dcc:	00bb00ac 	.word	0x00bb00ac
    4dd0:	010c00da 	.word	0x010c00da
    4dd4:	4b79      	ldr	r3, [pc, #484]	; (4fbc <TV_SYNC_handler+0x228>)
    4dd6:	881b      	ldrh	r3, [r3, #0]
    4dd8:	b29b      	uxth	r3, r3
    4dda:	b18b      	cbz	r3, 4e00 <TV_SYNC_handler+0x6c>
    4ddc:	4a77      	ldr	r2, [pc, #476]	; (4fbc <TV_SYNC_handler+0x228>)
    4dde:	8813      	ldrh	r3, [r2, #0]
    4de0:	3301      	adds	r3, #1
    4de2:	b29b      	uxth	r3, r3
    4de4:	8013      	strh	r3, [r2, #0]
    4de6:	8813      	ldrh	r3, [r2, #0]
    4de8:	b29b      	uxth	r3, r3
    4dea:	2b06      	cmp	r3, #6
    4dec:	d16e      	bne.n	4ecc <TV_SYNC_handler+0x138>
    4dee:	2200      	movs	r2, #0
    4df0:	4b72      	ldr	r3, [pc, #456]	; (4fbc <TV_SYNC_handler+0x228>)
    4df2:	801a      	strh	r2, [r3, #0]
    4df4:	4a70      	ldr	r2, [pc, #448]	; (4fb8 <TV_SYNC_handler+0x224>)
    4df6:	8813      	ldrh	r3, [r2, #0]
    4df8:	3301      	adds	r3, #1
    4dfa:	b29b      	uxth	r3, r3
    4dfc:	8013      	strh	r3, [r2, #0]
    4dfe:	e065      	b.n	4ecc <TV_SYNC_handler+0x138>
    4e00:	4b6f      	ldr	r3, [pc, #444]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4e02:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4e06:	62da      	str	r2, [r3, #44]	; 0x2c
    4e08:	22a4      	movs	r2, #164	; 0xa4
    4e0a:	635a      	str	r2, [r3, #52]	; 0x34
    4e0c:	4a6b      	ldr	r2, [pc, #428]	; (4fbc <TV_SYNC_handler+0x228>)
    4e0e:	8813      	ldrh	r3, [r2, #0]
    4e10:	3301      	adds	r3, #1
    4e12:	b29b      	uxth	r3, r3
    4e14:	8013      	strh	r3, [r2, #0]
    4e16:	e059      	b.n	4ecc <TV_SYNC_handler+0x138>
    4e18:	4b68      	ldr	r3, [pc, #416]	; (4fbc <TV_SYNC_handler+0x228>)
    4e1a:	881b      	ldrh	r3, [r3, #0]
    4e1c:	b29b      	uxth	r3, r3
    4e1e:	b18b      	cbz	r3, 4e44 <TV_SYNC_handler+0xb0>
    4e20:	4a66      	ldr	r2, [pc, #408]	; (4fbc <TV_SYNC_handler+0x228>)
    4e22:	8813      	ldrh	r3, [r2, #0]
    4e24:	3301      	adds	r3, #1
    4e26:	b29b      	uxth	r3, r3
    4e28:	8013      	strh	r3, [r2, #0]
    4e2a:	8813      	ldrh	r3, [r2, #0]
    4e2c:	b29b      	uxth	r3, r3
    4e2e:	2b06      	cmp	r3, #6
    4e30:	d14c      	bne.n	4ecc <TV_SYNC_handler+0x138>
    4e32:	2200      	movs	r2, #0
    4e34:	4b61      	ldr	r3, [pc, #388]	; (4fbc <TV_SYNC_handler+0x228>)
    4e36:	801a      	strh	r2, [r3, #0]
    4e38:	4a5f      	ldr	r2, [pc, #380]	; (4fb8 <TV_SYNC_handler+0x224>)
    4e3a:	8813      	ldrh	r3, [r2, #0]
    4e3c:	3301      	adds	r3, #1
    4e3e:	b29b      	uxth	r3, r3
    4e40:	8013      	strh	r3, [r2, #0]
    4e42:	e043      	b.n	4ecc <TV_SYNC_handler+0x138>
    4e44:	f240 7294 	movw	r2, #1940	; 0x794
    4e48:	4b5d      	ldr	r3, [pc, #372]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4e4a:	635a      	str	r2, [r3, #52]	; 0x34
    4e4c:	4a5b      	ldr	r2, [pc, #364]	; (4fbc <TV_SYNC_handler+0x228>)
    4e4e:	8813      	ldrh	r3, [r2, #0]
    4e50:	3301      	adds	r3, #1
    4e52:	b29b      	uxth	r3, r3
    4e54:	8013      	strh	r3, [r2, #0]
    4e56:	e039      	b.n	4ecc <TV_SYNC_handler+0x138>
    4e58:	4b58      	ldr	r3, [pc, #352]	; (4fbc <TV_SYNC_handler+0x228>)
    4e5a:	881b      	ldrh	r3, [r3, #0]
    4e5c:	b29b      	uxth	r3, r3
    4e5e:	b153      	cbz	r3, 4e76 <TV_SYNC_handler+0xe2>
    4e60:	4b56      	ldr	r3, [pc, #344]	; (4fbc <TV_SYNC_handler+0x228>)
    4e62:	881b      	ldrh	r3, [r3, #0]
    4e64:	b29b      	uxth	r3, r3
    4e66:	2b06      	cmp	r3, #6
    4e68:	d00e      	beq.n	4e88 <TV_SYNC_handler+0xf4>
    4e6a:	4a54      	ldr	r2, [pc, #336]	; (4fbc <TV_SYNC_handler+0x228>)
    4e6c:	8813      	ldrh	r3, [r2, #0]
    4e6e:	3301      	adds	r3, #1
    4e70:	b29b      	uxth	r3, r3
    4e72:	8013      	strh	r3, [r2, #0]
    4e74:	e02a      	b.n	4ecc <TV_SYNC_handler+0x138>
    4e76:	22a4      	movs	r2, #164	; 0xa4
    4e78:	4b51      	ldr	r3, [pc, #324]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4e7a:	635a      	str	r2, [r3, #52]	; 0x34
    4e7c:	4a4f      	ldr	r2, [pc, #316]	; (4fbc <TV_SYNC_handler+0x228>)
    4e7e:	8813      	ldrh	r3, [r2, #0]
    4e80:	3301      	adds	r3, #1
    4e82:	b29b      	uxth	r3, r3
    4e84:	8013      	strh	r3, [r2, #0]
    4e86:	e021      	b.n	4ecc <TV_SYNC_handler+0x138>
    4e88:	4a4b      	ldr	r2, [pc, #300]	; (4fb8 <TV_SYNC_handler+0x224>)
    4e8a:	8813      	ldrh	r3, [r2, #0]
    4e8c:	3301      	adds	r3, #1
    4e8e:	b29b      	uxth	r3, r3
    4e90:	8013      	strh	r3, [r2, #0]
    4e92:	4b4c      	ldr	r3, [pc, #304]	; (4fc4 <TV_SYNC_handler+0x230>)
    4e94:	881b      	ldrh	r3, [r3, #0]
    4e96:	f013 0f01 	tst.w	r3, #1
    4e9a:	d017      	beq.n	4ecc <TV_SYNC_handler+0x138>
    4e9c:	4b48      	ldr	r3, [pc, #288]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4e9e:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4ea2:	62da      	str	r2, [r3, #44]	; 0x2c
    4ea4:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4ea8:	635a      	str	r2, [r3, #52]	; 0x34
    4eaa:	4a46      	ldr	r2, [pc, #280]	; (4fc4 <TV_SYNC_handler+0x230>)
    4eac:	8813      	ldrh	r3, [r2, #0]
    4eae:	f023 0302 	bic.w	r3, r3, #2
    4eb2:	041b      	lsls	r3, r3, #16
    4eb4:	0c1b      	lsrs	r3, r3, #16
    4eb6:	8013      	strh	r3, [r2, #0]
    4eb8:	4a3d      	ldr	r2, [pc, #244]	; (4fb0 <TV_SYNC_handler+0x21c>)
    4eba:	8813      	ldrh	r3, [r2, #0]
    4ebc:	f3c3 038d 	ubfx	r3, r3, #2, #14
    4ec0:	8013      	strh	r3, [r2, #0]
    4ec2:	4a3d      	ldr	r2, [pc, #244]	; (4fb8 <TV_SYNC_handler+0x224>)
    4ec4:	8813      	ldrh	r3, [r2, #0]
    4ec6:	3301      	adds	r3, #1
    4ec8:	b29b      	uxth	r3, r3
    4eca:	8013      	strh	r3, [r2, #0]
    4ecc:	4a3c      	ldr	r2, [pc, #240]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4ece:	6913      	ldr	r3, [r2, #16]
    4ed0:	f023 0301 	bic.w	r3, r3, #1
    4ed4:	6113      	str	r3, [r2, #16]
    4ed6:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    4eda:	4685      	mov	sp, r0
    4edc:	4770      	bx	lr
    4ede:	f7fc fcab 	bl	1838 <read_gamepad>
    4ee2:	4a35      	ldr	r2, [pc, #212]	; (4fb8 <TV_SYNC_handler+0x224>)
    4ee4:	8813      	ldrh	r3, [r2, #0]
    4ee6:	3301      	adds	r3, #1
    4ee8:	b29b      	uxth	r3, r3
    4eea:	8013      	strh	r3, [r2, #0]
    4eec:	e7ee      	b.n	4ecc <TV_SYNC_handler+0x138>
    4eee:	4b36      	ldr	r3, [pc, #216]	; (4fc8 <TV_SYNC_handler+0x234>)
    4ef0:	881b      	ldrh	r3, [r3, #0]
    4ef2:	b29b      	uxth	r3, r3
    4ef4:	b13b      	cbz	r3, 4f06 <TV_SYNC_handler+0x172>
    4ef6:	4a34      	ldr	r2, [pc, #208]	; (4fc8 <TV_SYNC_handler+0x234>)
    4ef8:	8813      	ldrh	r3, [r2, #0]
    4efa:	3b01      	subs	r3, #1
    4efc:	b29b      	uxth	r3, r3
    4efe:	8013      	strh	r3, [r2, #0]
    4f00:	8813      	ldrh	r3, [r2, #0]
    4f02:	b29b      	uxth	r3, r3
    4f04:	b12b      	cbz	r3, 4f12 <TV_SYNC_handler+0x17e>
    4f06:	4a2c      	ldr	r2, [pc, #176]	; (4fb8 <TV_SYNC_handler+0x224>)
    4f08:	8813      	ldrh	r3, [r2, #0]
    4f0a:	3301      	adds	r3, #1
    4f0c:	b29b      	uxth	r3, r3
    4f0e:	8013      	strh	r3, [r2, #0]
    4f10:	e7dc      	b.n	4ecc <TV_SYNC_handler+0x138>
    4f12:	f7ff f913 	bl	413c <sound_stop>
    4f16:	e7f6      	b.n	4f06 <TV_SYNC_handler+0x172>
    4f18:	4b2c      	ldr	r3, [pc, #176]	; (4fcc <TV_SYNC_handler+0x238>)
    4f1a:	881b      	ldrh	r3, [r3, #0]
    4f1c:	b29b      	uxth	r3, r3
    4f1e:	b123      	cbz	r3, 4f2a <TV_SYNC_handler+0x196>
    4f20:	4a2a      	ldr	r2, [pc, #168]	; (4fcc <TV_SYNC_handler+0x238>)
    4f22:	8813      	ldrh	r3, [r2, #0]
    4f24:	3b01      	subs	r3, #1
    4f26:	b29b      	uxth	r3, r3
    4f28:	8013      	strh	r3, [r2, #0]
    4f2a:	4a23      	ldr	r2, [pc, #140]	; (4fb8 <TV_SYNC_handler+0x224>)
    4f2c:	8813      	ldrh	r3, [r2, #0]
    4f2e:	3301      	adds	r3, #1
    4f30:	b29b      	uxth	r3, r3
    4f32:	8013      	strh	r3, [r2, #0]
    4f34:	e7ca      	b.n	4ecc <TV_SYNC_handler+0x138>
    4f36:	4b1e      	ldr	r3, [pc, #120]	; (4fb0 <TV_SYNC_handler+0x21c>)
    4f38:	881b      	ldrh	r3, [r3, #0]
    4f3a:	b29b      	uxth	r3, r3
    4f3c:	4a24      	ldr	r2, [pc, #144]	; (4fd0 <TV_SYNC_handler+0x23c>)
    4f3e:	8812      	ldrh	r2, [r2, #0]
    4f40:	429a      	cmp	r2, r3
    4f42:	d1c3      	bne.n	4ecc <TV_SYNC_handler+0x138>
    4f44:	4b1e      	ldr	r3, [pc, #120]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4f46:	691a      	ldr	r2, [r3, #16]
    4f48:	f022 0204 	bic.w	r2, r2, #4
    4f4c:	611a      	str	r2, [r3, #16]
    4f4e:	68da      	ldr	r2, [r3, #12]
    4f50:	f042 0204 	orr.w	r2, r2, #4
    4f54:	60da      	str	r2, [r3, #12]
    4f56:	4a1b      	ldr	r2, [pc, #108]	; (4fc4 <TV_SYNC_handler+0x230>)
    4f58:	8813      	ldrh	r3, [r2, #0]
    4f5a:	b29b      	uxth	r3, r3
    4f5c:	f043 0304 	orr.w	r3, r3, #4
    4f60:	8013      	strh	r3, [r2, #0]
    4f62:	4a15      	ldr	r2, [pc, #84]	; (4fb8 <TV_SYNC_handler+0x224>)
    4f64:	8813      	ldrh	r3, [r2, #0]
    4f66:	3301      	adds	r3, #1
    4f68:	b29b      	uxth	r3, r3
    4f6a:	8013      	strh	r3, [r2, #0]
    4f6c:	2200      	movs	r2, #0
    4f6e:	4b13      	ldr	r3, [pc, #76]	; (4fbc <TV_SYNC_handler+0x228>)
    4f70:	801a      	strh	r2, [r3, #0]
    4f72:	e7ab      	b.n	4ecc <TV_SYNC_handler+0x138>
    4f74:	4a11      	ldr	r2, [pc, #68]	; (4fbc <TV_SYNC_handler+0x228>)
    4f76:	8813      	ldrh	r3, [r2, #0]
    4f78:	3301      	adds	r3, #1
    4f7a:	b29b      	uxth	r3, r3
    4f7c:	8013      	strh	r3, [r2, #0]
    4f7e:	4b0c      	ldr	r3, [pc, #48]	; (4fb0 <TV_SYNC_handler+0x21c>)
    4f80:	881b      	ldrh	r3, [r3, #0]
    4f82:	b29b      	uxth	r3, r3
    4f84:	4a13      	ldr	r2, [pc, #76]	; (4fd4 <TV_SYNC_handler+0x240>)
    4f86:	8812      	ldrh	r2, [r2, #0]
    4f88:	429a      	cmp	r2, r3
    4f8a:	d19f      	bne.n	4ecc <TV_SYNC_handler+0x138>
    4f8c:	4a0c      	ldr	r2, [pc, #48]	; (4fc0 <TV_SYNC_handler+0x22c>)
    4f8e:	68d3      	ldr	r3, [r2, #12]
    4f90:	f023 0304 	bic.w	r3, r3, #4
    4f94:	60d3      	str	r3, [r2, #12]
    4f96:	4a0b      	ldr	r2, [pc, #44]	; (4fc4 <TV_SYNC_handler+0x230>)
    4f98:	8813      	ldrh	r3, [r2, #0]
    4f9a:	f023 0304 	bic.w	r3, r3, #4
    4f9e:	041b      	lsls	r3, r3, #16
    4fa0:	0c1b      	lsrs	r3, r3, #16
    4fa2:	8013      	strh	r3, [r2, #0]
    4fa4:	4a04      	ldr	r2, [pc, #16]	; (4fb8 <TV_SYNC_handler+0x224>)
    4fa6:	8813      	ldrh	r3, [r2, #0]
    4fa8:	3301      	adds	r3, #1
    4faa:	b29b      	uxth	r3, r3
    4fac:	8013      	strh	r3, [r2, #0]
    4fae:	e78d      	b.n	4ecc <TV_SYNC_handler+0x138>
    4fb0:	20000622 	.word	0x20000622
    4fb4:	20004db8 	.word	0x20004db8
    4fb8:	2000061c 	.word	0x2000061c
    4fbc:	20000620 	.word	0x20000620
    4fc0:	40012c00 	.word	0x40012c00
    4fc4:	2000061e 	.word	0x2000061e
    4fc8:	20004dbc 	.word	0x20004dbc
    4fcc:	20004db4 	.word	0x20004db4
    4fd0:	20000176 	.word	0x20000176
    4fd4:	20000178 	.word	0x20000178
    4fd8:	4b11      	ldr	r3, [pc, #68]	; (5020 <TV_SYNC_handler+0x28c>)
    4fda:	881b      	ldrh	r3, [r3, #0]
    4fdc:	b29b      	uxth	r3, r3
    4fde:	f240 1207 	movw	r2, #263	; 0x107
    4fe2:	4293      	cmp	r3, r2
    4fe4:	f47f af72 	bne.w	4ecc <TV_SYNC_handler+0x138>
    4fe8:	4b0e      	ldr	r3, [pc, #56]	; (5024 <TV_SYNC_handler+0x290>)
    4fea:	881b      	ldrh	r3, [r3, #0]
    4fec:	f013 0f01 	tst.w	r3, #1
    4ff0:	d003      	beq.n	4ffa <TV_SYNC_handler+0x266>
    4ff2:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4ff6:	4b0c      	ldr	r3, [pc, #48]	; (5028 <TV_SYNC_handler+0x294>)
    4ff8:	62da      	str	r2, [r3, #44]	; 0x2c
    4ffa:	4a0a      	ldr	r2, [pc, #40]	; (5024 <TV_SYNC_handler+0x290>)
    4ffc:	8813      	ldrh	r3, [r2, #0]
    4ffe:	b29b      	uxth	r3, r3
    5000:	f083 0301 	eor.w	r3, r3, #1
    5004:	8013      	strh	r3, [r2, #0]
    5006:	8813      	ldrh	r3, [r2, #0]
    5008:	b29b      	uxth	r3, r3
    500a:	f043 0302 	orr.w	r3, r3, #2
    500e:	8013      	strh	r3, [r2, #0]
    5010:	2300      	movs	r3, #0
    5012:	4a03      	ldr	r2, [pc, #12]	; (5020 <TV_SYNC_handler+0x28c>)
    5014:	8013      	strh	r3, [r2, #0]
    5016:	4a05      	ldr	r2, [pc, #20]	; (502c <TV_SYNC_handler+0x298>)
    5018:	8013      	strh	r3, [r2, #0]
    501a:	4a05      	ldr	r2, [pc, #20]	; (5030 <TV_SYNC_handler+0x29c>)
    501c:	8013      	strh	r3, [r2, #0]
    501e:	e755      	b.n	4ecc <TV_SYNC_handler+0x138>
    5020:	20000622 	.word	0x20000622
    5024:	2000061e 	.word	0x2000061e
    5028:	40012c00 	.word	0x40012c00
    502c:	20000620 	.word	0x20000620
    5030:	2000061c 	.word	0x2000061c

00005034 <frame_sync>:
    5034:	b480      	push	{r7}
    5036:	af00      	add	r7, sp, #0
    5038:	bf00      	nop
    503a:	4b05      	ldr	r3, [pc, #20]	; (5050 <frame_sync+0x1c>)
    503c:	881b      	ldrh	r3, [r3, #0]
    503e:	b29b      	uxth	r3, r3
    5040:	f003 0302 	and.w	r3, r3, #2
    5044:	2b00      	cmp	r3, #0
    5046:	d0f8      	beq.n	503a <frame_sync+0x6>
    5048:	bf00      	nop
    504a:	46bd      	mov	sp, r7
    504c:	bc80      	pop	{r7}
    504e:	4770      	bx	lr
    5050:	2000061e 	.word	0x2000061e

00005054 <wait_sync_end>:
    5054:	b480      	push	{r7}
    5056:	af00      	add	r7, sp, #0
    5058:	bf00      	nop
    505a:	4b05      	ldr	r3, [pc, #20]	; (5070 <wait_sync_end+0x1c>)
    505c:	881b      	ldrh	r3, [r3, #0]
    505e:	b29b      	uxth	r3, r3
    5060:	f003 0302 	and.w	r3, r3, #2
    5064:	2b00      	cmp	r3, #0
    5066:	d1f8      	bne.n	505a <wait_sync_end+0x6>
    5068:	bf00      	nop
    506a:	46bd      	mov	sp, r7
    506c:	bc80      	pop	{r7}
    506e:	4770      	bx	lr
    5070:	2000061e 	.word	0x2000061e

00005074 <set_video_mode>:
    5074:	b580      	push	{r7, lr}
    5076:	b082      	sub	sp, #8
    5078:	af00      	add	r7, sp, #0
    507a:	4603      	mov	r3, r0
    507c:	71fb      	strb	r3, [r7, #7]
    507e:	f7ff ffd9 	bl	5034 <frame_sync>
    5082:	4a3c      	ldr	r2, [pc, #240]	; (5174 <set_video_mode+0x100>)
    5084:	79fb      	ldrb	r3, [r7, #7]
    5086:	7013      	strb	r3, [r2, #0]
    5088:	79fb      	ldrb	r3, [r7, #7]
    508a:	2b00      	cmp	r3, #0
    508c:	d103      	bne.n	5096 <set_video_mode+0x22>
    508e:	4b3a      	ldr	r3, [pc, #232]	; (5178 <set_video_mode+0x104>)
    5090:	2204      	movs	r2, #4
    5092:	701a      	strb	r2, [r3, #0]
    5094:	e002      	b.n	509c <set_video_mode+0x28>
    5096:	4b38      	ldr	r3, [pc, #224]	; (5178 <set_video_mode+0x104>)
    5098:	2201      	movs	r2, #1
    509a:	701a      	strb	r2, [r3, #0]
    509c:	79fa      	ldrb	r2, [r7, #7]
    509e:	4937      	ldr	r1, [pc, #220]	; (517c <set_video_mode+0x108>)
    50a0:	4613      	mov	r3, r2
    50a2:	00db      	lsls	r3, r3, #3
    50a4:	4413      	add	r3, r2
    50a6:	005b      	lsls	r3, r3, #1
    50a8:	440b      	add	r3, r1
    50aa:	3302      	adds	r3, #2
    50ac:	881a      	ldrh	r2, [r3, #0]
    50ae:	4b34      	ldr	r3, [pc, #208]	; (5180 <set_video_mode+0x10c>)
    50b0:	801a      	strh	r2, [r3, #0]
    50b2:	79fa      	ldrb	r2, [r7, #7]
    50b4:	4931      	ldr	r1, [pc, #196]	; (517c <set_video_mode+0x108>)
    50b6:	4613      	mov	r3, r2
    50b8:	00db      	lsls	r3, r3, #3
    50ba:	4413      	add	r3, r2
    50bc:	005b      	lsls	r3, r3, #1
    50be:	440b      	add	r3, r1
    50c0:	3304      	adds	r3, #4
    50c2:	881a      	ldrh	r2, [r3, #0]
    50c4:	4b2f      	ldr	r3, [pc, #188]	; (5184 <set_video_mode+0x110>)
    50c6:	801a      	strh	r2, [r3, #0]
    50c8:	79fa      	ldrb	r2, [r7, #7]
    50ca:	492c      	ldr	r1, [pc, #176]	; (517c <set_video_mode+0x108>)
    50cc:	4613      	mov	r3, r2
    50ce:	00db      	lsls	r3, r3, #3
    50d0:	4413      	add	r3, r2
    50d2:	005b      	lsls	r3, r3, #1
    50d4:	440b      	add	r3, r1
    50d6:	3306      	adds	r3, #6
    50d8:	881a      	ldrh	r2, [r3, #0]
    50da:	4b2b      	ldr	r3, [pc, #172]	; (5188 <set_video_mode+0x114>)
    50dc:	801a      	strh	r2, [r3, #0]
    50de:	79fa      	ldrb	r2, [r7, #7]
    50e0:	4926      	ldr	r1, [pc, #152]	; (517c <set_video_mode+0x108>)
    50e2:	4613      	mov	r3, r2
    50e4:	00db      	lsls	r3, r3, #3
    50e6:	4413      	add	r3, r2
    50e8:	005b      	lsls	r3, r3, #1
    50ea:	440b      	add	r3, r1
    50ec:	3308      	adds	r3, #8
    50ee:	781a      	ldrb	r2, [r3, #0]
    50f0:	4b26      	ldr	r3, [pc, #152]	; (518c <set_video_mode+0x118>)
    50f2:	701a      	strb	r2, [r3, #0]
    50f4:	79fa      	ldrb	r2, [r7, #7]
    50f6:	4921      	ldr	r1, [pc, #132]	; (517c <set_video_mode+0x108>)
    50f8:	4613      	mov	r3, r2
    50fa:	00db      	lsls	r3, r3, #3
    50fc:	4413      	add	r3, r2
    50fe:	005b      	lsls	r3, r3, #1
    5100:	440b      	add	r3, r1
    5102:	3309      	adds	r3, #9
    5104:	781a      	ldrb	r2, [r3, #0]
    5106:	4b22      	ldr	r3, [pc, #136]	; (5190 <set_video_mode+0x11c>)
    5108:	701a      	strb	r2, [r3, #0]
    510a:	79fa      	ldrb	r2, [r7, #7]
    510c:	491b      	ldr	r1, [pc, #108]	; (517c <set_video_mode+0x108>)
    510e:	4613      	mov	r3, r2
    5110:	00db      	lsls	r3, r3, #3
    5112:	4413      	add	r3, r2
    5114:	005b      	lsls	r3, r3, #1
    5116:	440b      	add	r3, r1
    5118:	330a      	adds	r3, #10
    511a:	781a      	ldrb	r2, [r3, #0]
    511c:	4b1d      	ldr	r3, [pc, #116]	; (5194 <set_video_mode+0x120>)
    511e:	701a      	strb	r2, [r3, #0]
    5120:	79fa      	ldrb	r2, [r7, #7]
    5122:	4916      	ldr	r1, [pc, #88]	; (517c <set_video_mode+0x108>)
    5124:	4613      	mov	r3, r2
    5126:	00db      	lsls	r3, r3, #3
    5128:	4413      	add	r3, r2
    512a:	005b      	lsls	r3, r3, #1
    512c:	440b      	add	r3, r1
    512e:	330c      	adds	r3, #12
    5130:	881b      	ldrh	r3, [r3, #0]
    5132:	b2da      	uxtb	r2, r3
    5134:	4b18      	ldr	r3, [pc, #96]	; (5198 <set_video_mode+0x124>)
    5136:	701a      	strb	r2, [r3, #0]
    5138:	79fa      	ldrb	r2, [r7, #7]
    513a:	4910      	ldr	r1, [pc, #64]	; (517c <set_video_mode+0x108>)
    513c:	4613      	mov	r3, r2
    513e:	00db      	lsls	r3, r3, #3
    5140:	4413      	add	r3, r2
    5142:	005b      	lsls	r3, r3, #1
    5144:	440b      	add	r3, r1
    5146:	330e      	adds	r3, #14
    5148:	881b      	ldrh	r3, [r3, #0]
    514a:	b2da      	uxtb	r2, r3
    514c:	4b13      	ldr	r3, [pc, #76]	; (519c <set_video_mode+0x128>)
    514e:	701a      	strb	r2, [r3, #0]
    5150:	79fa      	ldrb	r2, [r7, #7]
    5152:	490a      	ldr	r1, [pc, #40]	; (517c <set_video_mode+0x108>)
    5154:	4613      	mov	r3, r2
    5156:	00db      	lsls	r3, r3, #3
    5158:	4413      	add	r3, r2
    515a:	005b      	lsls	r3, r3, #1
    515c:	440b      	add	r3, r1
    515e:	3310      	adds	r3, #16
    5160:	881a      	ldrh	r2, [r3, #0]
    5162:	4b0f      	ldr	r3, [pc, #60]	; (51a0 <set_video_mode+0x12c>)
    5164:	801a      	strh	r2, [r3, #0]
    5166:	f7fc ffb3 	bl	20d0 <gfx_cls>
    516a:	bf00      	nop
    516c:	3708      	adds	r7, #8
    516e:	46bd      	mov	sp, r7
    5170:	bd80      	pop	{r7, pc}
    5172:	bf00      	nop
    5174:	20000624 	.word	0x20000624
    5178:	20000104 	.word	0x20000104
    517c:	00005898 	.word	0x00005898
    5180:	20000176 	.word	0x20000176
    5184:	20000178 	.word	0x20000178
    5188:	2000017a 	.word	0x2000017a
    518c:	2000017c 	.word	0x2000017c
    5190:	2000017d 	.word	0x2000017d
    5194:	2000017e 	.word	0x2000017e
    5198:	2000017f 	.word	0x2000017f
    519c:	20000180 	.word	0x20000180
    51a0:	20000182 	.word	0x20000182

000051a4 <get_video_params>:
    51a4:	b480      	push	{r7}
    51a6:	af00      	add	r7, sp, #0
    51a8:	4b06      	ldr	r3, [pc, #24]	; (51c4 <get_video_params+0x20>)
    51aa:	781b      	ldrb	r3, [r3, #0]
    51ac:	461a      	mov	r2, r3
    51ae:	4613      	mov	r3, r2
    51b0:	00db      	lsls	r3, r3, #3
    51b2:	4413      	add	r3, r2
    51b4:	005b      	lsls	r3, r3, #1
    51b6:	4a04      	ldr	r2, [pc, #16]	; (51c8 <get_video_params+0x24>)
    51b8:	4413      	add	r3, r2
    51ba:	4618      	mov	r0, r3
    51bc:	46bd      	mov	sp, r7
    51be:	bc80      	pop	{r7}
    51c0:	4770      	bx	lr
    51c2:	bf00      	nop
    51c4:	20000624 	.word	0x20000624
    51c8:	00005898 	.word	0x00005898

000051cc <game_pause>:
    51cc:	b480      	push	{r7}
    51ce:	b083      	sub	sp, #12
    51d0:	af00      	add	r7, sp, #0
    51d2:	4603      	mov	r3, r0
    51d4:	80fb      	strh	r3, [r7, #6]
    51d6:	4a07      	ldr	r2, [pc, #28]	; (51f4 <game_pause+0x28>)
    51d8:	88fb      	ldrh	r3, [r7, #6]
    51da:	8013      	strh	r3, [r2, #0]
    51dc:	bf00      	nop
    51de:	4b05      	ldr	r3, [pc, #20]	; (51f4 <game_pause+0x28>)
    51e0:	881b      	ldrh	r3, [r3, #0]
    51e2:	b29b      	uxth	r3, r3
    51e4:	2b00      	cmp	r3, #0
    51e6:	d1fa      	bne.n	51de <game_pause+0x12>
    51e8:	bf00      	nop
    51ea:	370c      	adds	r7, #12
    51ec:	46bd      	mov	sp, r7
    51ee:	bc80      	pop	{r7}
    51f0:	4770      	bx	lr
    51f2:	bf00      	nop
    51f4:	20004db4 	.word	0x20004db4

000051f8 <micro_pause>:
    51f8:	b480      	push	{r7}
    51fa:	b085      	sub	sp, #20
    51fc:	af00      	add	r7, sp, #0
    51fe:	6078      	str	r0, [r7, #4]
    5200:	4b07      	ldr	r3, [pc, #28]	; (5220 <micro_pause+0x28>)
    5202:	681a      	ldr	r2, [r3, #0]
    5204:	687b      	ldr	r3, [r7, #4]
    5206:	4413      	add	r3, r2
    5208:	60fb      	str	r3, [r7, #12]
    520a:	bf00      	nop
    520c:	4b04      	ldr	r3, [pc, #16]	; (5220 <micro_pause+0x28>)
    520e:	681a      	ldr	r2, [r3, #0]
    5210:	68fb      	ldr	r3, [r7, #12]
    5212:	429a      	cmp	r2, r3
    5214:	d3fa      	bcc.n	520c <micro_pause+0x14>
    5216:	bf00      	nop
    5218:	3714      	adds	r7, #20
    521a:	46bd      	mov	sp, r7
    521c:	bc80      	pop	{r7}
    521e:	4770      	bx	lr
    5220:	20004db8 	.word	0x20004db8
