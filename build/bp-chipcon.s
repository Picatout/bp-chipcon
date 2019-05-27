
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 e1 43 00 00     C...I...O....C..
      20:	e1 43 00 00 e1 43 00 00 e1 43 00 00 55 02 00 00     .C...C...C..U...
      30:	e1 43 00 00 e1 43 00 00 5b 02 00 00 61 02 00 00     .C...C..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 85 3e 00 00     g...m...y....>..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 e1 43 00 00 e1 43 00 00 b5 02 00 00     .....C...C......
      80:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..
      90:	e1 43 00 00 e1 43 00 00 e1 43 00 00 bb 02 00 00     .C...C...C......
      a0:	e1 43 00 00 99 4c 00 00 e1 43 00 00 99 4b 00 00     .C...L...C...K..
      b0:	b9 40 00 00 cd 02 00 00 d3 02 00 00 e1 43 00 00     .@...........C..
      c0:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..
      d0:	e1 43 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .C..............
      e0:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..
      f0:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..
     100:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..
     110:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..
     120:	e1 43 00 00 e1 43 00 00 e1 43 00 00 e1 43 00 00     .C...C...C...C..

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
     18e:	f002 ff2c 	bl	2fea <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000015c 	.word	0x2000015c
     1a0:	20004d8c 	.word	0x20004d8c
     1a4:	000084b4 	.word	0x000084b4
     1a8:	20000000 	.word	0x20000000
     1ac:	2000015c 	.word	0x2000015c
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
     1dc:	f004 f908 	bl	43f0 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f004 f8fc 	bl	43f0 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f004 f8f0 	bl	43f0 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 f8eb 	bl	43f0 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	0000572c 	.word	0x0000572c
     230:	00005744 	.word	0x00005744
     234:	00005750 	.word	0x00005750
     238:	00005760 	.word	0x00005760

0000023c <NMI_handler>:
     23c:	f004 f8d0 	bl	43e0 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f004 f8cd 	bl	43e0 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f004 f8ca 	bl	43e0 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f004 f8c7 	bl	43e0 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f004 f8c4 	bl	43e0 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f004 f8c1 	bl	43e0 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f004 f8be 	bl	43e0 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f004 f8bb 	bl	43e0 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f004 f8b8 	bl	43e0 <reset_mcu>
     270:	bf00      	nop
     272:	f004 f8b5 	bl	43e0 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f004 f8b2 	bl	43e0 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f004 f8af 	bl	43e0 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f004 f8ac 	bl	43e0 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f004 f8a9 	bl	43e0 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f004 f8a6 	bl	43e0 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f004 f8a3 	bl	43e0 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f004 f8a0 	bl	43e0 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f004 f89d 	bl	43e0 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f004 f89a 	bl	43e0 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f004 f897 	bl	43e0 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f004 f894 	bl	43e0 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f004 f891 	bl	43e0 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f004 f88e 	bl	43e0 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f004 f88b 	bl	43e0 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f004 f888 	bl	43e0 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f004 f885 	bl	43e0 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f004 f882 	bl	43e0 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f004 f87f 	bl	43e0 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f004 f87c 	bl	43e0 <reset_mcu>
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
     3c8:	f004 f88a 	bl	44e0 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f004 f877 	bl	44c0 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 f9be 	bl	4754 <print>
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 f9bb 	bl	4754 <print>
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 f9e4 	bl	47b4 <print_int>
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7d9b      	ldrb	r3, [r3, #22]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 f9de 	bl	47b4 <print_int>
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7ddb      	ldrb	r3, [r3, #23]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 f9d8 	bl	47b4 <print_int>
     404:	f004 f86c 	bl	44e0 <new_line>
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 f9a3 	bl	4754 <print>
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 f9cd 	bl	47b4 <print_int>
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 f99a 	bl	4754 <print>
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 f9c4 	bl	47b4 <print_int>
     42c:	f004 f858 	bl	44e0 <new_line>
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 f98f 	bl	4754 <print>
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
     44a:	f004 f9b3 	bl	47b4 <print_int>
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
     45a:	f004 f841 	bl	44e0 <new_line>
     45e:	f004 fac9 	bl	49f4 <prompt_btn>
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	00005110 	.word	0x00005110
     470:	2000015c 	.word	0x2000015c
     474:	00005114 	.word	0x00005114
     478:	00005118 	.word	0x00005118
     47c:	00005120 	.word	0x00005120

00000480 <chip_scroll_right>:
     480:	b480      	push	{r7}
     482:	af00      	add	r7, sp, #0
     484:	bf00      	nop
     486:	46bd      	mov	sp, r7
     488:	bc80      	pop	{r7}
     48a:	4770      	bx	lr

0000048c <chip_scroll_left>:
     48c:	b480      	push	{r7}
     48e:	af00      	add	r7, sp, #0
     490:	bf00      	nop
     492:	46bd      	mov	sp, r7
     494:	bc80      	pop	{r7}
     496:	4770      	bx	lr

00000498 <load_block>:
     498:	b480      	push	{r7}
     49a:	b085      	sub	sp, #20
     49c:	af00      	add	r7, sp, #0
     49e:	60f8      	str	r0, [r7, #12]
     4a0:	60b9      	str	r1, [r7, #8]
     4a2:	607a      	str	r2, [r7, #4]
     4a4:	bf00      	nop
     4a6:	3714      	adds	r7, #20
     4a8:	46bd      	mov	sp, r7
     4aa:	bc80      	pop	{r7}
     4ac:	4770      	bx	lr

000004ae <store_block>:
     4ae:	b480      	push	{r7}
     4b0:	b085      	sub	sp, #20
     4b2:	af00      	add	r7, sp, #0
     4b4:	60f8      	str	r0, [r7, #12]
     4b6:	60b9      	str	r1, [r7, #8]
     4b8:	607a      	str	r2, [r7, #4]
     4ba:	bf00      	nop
     4bc:	3714      	adds	r7, #20
     4be:	46bd      	mov	sp, r7
     4c0:	bc80      	pop	{r7}
     4c2:	4770      	bx	lr

000004c4 <put_big_sprite>:
     4c4:	b480      	push	{r7}
     4c6:	b085      	sub	sp, #20
     4c8:	af00      	add	r7, sp, #0
     4ca:	60f8      	str	r0, [r7, #12]
     4cc:	60b9      	str	r1, [r7, #8]
     4ce:	607a      	str	r2, [r7, #4]
     4d0:	603b      	str	r3, [r7, #0]
     4d2:	bf00      	nop
     4d4:	4618      	mov	r0, r3
     4d6:	3714      	adds	r7, #20
     4d8:	46bd      	mov	sp, r7
     4da:	bc80      	pop	{r7}
     4dc:	4770      	bx	lr

000004de <srand>:
     4de:	b480      	push	{r7}
     4e0:	b083      	sub	sp, #12
     4e2:	af00      	add	r7, sp, #0
     4e4:	6078      	str	r0, [r7, #4]
     4e6:	4a04      	ldr	r2, [pc, #16]	; (4f8 <srand+0x1a>)
     4e8:	687b      	ldr	r3, [r7, #4]
     4ea:	6013      	str	r3, [r2, #0]
     4ec:	bf00      	nop
     4ee:	370c      	adds	r7, #12
     4f0:	46bd      	mov	sp, r7
     4f2:	bc80      	pop	{r7}
     4f4:	4770      	bx	lr
     4f6:	bf00      	nop
     4f8:	20000000 	.word	0x20000000

000004fc <rand>:
     4fc:	b480      	push	{r7}
     4fe:	b083      	sub	sp, #12
     500:	af00      	add	r7, sp, #0
     502:	4b0e      	ldr	r3, [pc, #56]	; (53c <rand+0x40>)
     504:	681b      	ldr	r3, [r3, #0]
     506:	607b      	str	r3, [r7, #4]
     508:	687b      	ldr	r3, [r7, #4]
     50a:	035b      	lsls	r3, r3, #13
     50c:	687a      	ldr	r2, [r7, #4]
     50e:	4053      	eors	r3, r2
     510:	607b      	str	r3, [r7, #4]
     512:	687b      	ldr	r3, [r7, #4]
     514:	0c5b      	lsrs	r3, r3, #17
     516:	687a      	ldr	r2, [r7, #4]
     518:	4053      	eors	r3, r2
     51a:	607b      	str	r3, [r7, #4]
     51c:	687b      	ldr	r3, [r7, #4]
     51e:	015b      	lsls	r3, r3, #5
     520:	687a      	ldr	r2, [r7, #4]
     522:	4053      	eors	r3, r2
     524:	607b      	str	r3, [r7, #4]
     526:	4a05      	ldr	r2, [pc, #20]	; (53c <rand+0x40>)
     528:	687b      	ldr	r3, [r7, #4]
     52a:	6013      	str	r3, [r2, #0]
     52c:	687b      	ldr	r3, [r7, #4]
     52e:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
     532:	4618      	mov	r0, r3
     534:	370c      	adds	r7, #12
     536:	46bd      	mov	sp, r7
     538:	bc80      	pop	{r7}
     53a:	4770      	bx	lr
     53c:	20000000 	.word	0x20000000

00000540 <chip_vm>:
     540:	b590      	push	{r4, r7, lr}
     542:	b087      	sub	sp, #28
     544:	af02      	add	r7, sp, #8
     546:	4603      	mov	r3, r0
     548:	80fb      	strh	r3, [r7, #6]
     54a:	4ab4      	ldr	r2, [pc, #720]	; (81c <chip_vm+0x2dc>)
     54c:	88fb      	ldrh	r3, [r7, #6]
     54e:	8013      	strh	r3, [r2, #0]
     550:	4bb2      	ldr	r3, [pc, #712]	; (81c <chip_vm+0x2dc>)
     552:	2200      	movs	r2, #0
     554:	711a      	strb	r2, [r3, #4]
     556:	4bb1      	ldr	r3, [pc, #708]	; (81c <chip_vm+0x2dc>)
     558:	2200      	movs	r2, #0
     55a:	805a      	strh	r2, [r3, #2]
     55c:	4baf      	ldr	r3, [pc, #700]	; (81c <chip_vm+0x2dc>)
     55e:	881b      	ldrh	r3, [r3, #0]
     560:	461a      	mov	r2, r3
     562:	4baf      	ldr	r3, [pc, #700]	; (820 <chip_vm+0x2e0>)
     564:	5c9a      	ldrb	r2, [r3, r2]
     566:	4bad      	ldr	r3, [pc, #692]	; (81c <chip_vm+0x2dc>)
     568:	759a      	strb	r2, [r3, #22]
     56a:	4bac      	ldr	r3, [pc, #688]	; (81c <chip_vm+0x2dc>)
     56c:	881b      	ldrh	r3, [r3, #0]
     56e:	3301      	adds	r3, #1
     570:	4aab      	ldr	r2, [pc, #684]	; (820 <chip_vm+0x2e0>)
     572:	5cd2      	ldrb	r2, [r2, r3]
     574:	4ba9      	ldr	r3, [pc, #676]	; (81c <chip_vm+0x2dc>)
     576:	75da      	strb	r2, [r3, #23]
     578:	4ba8      	ldr	r3, [pc, #672]	; (81c <chip_vm+0x2dc>)
     57a:	881b      	ldrh	r3, [r3, #0]
     57c:	3302      	adds	r3, #2
     57e:	b29a      	uxth	r2, r3
     580:	4ba6      	ldr	r3, [pc, #664]	; (81c <chip_vm+0x2dc>)
     582:	801a      	strh	r2, [r3, #0]
     584:	4ba5      	ldr	r3, [pc, #660]	; (81c <chip_vm+0x2dc>)
     586:	7d9b      	ldrb	r3, [r3, #22]
     588:	f003 030f 	and.w	r3, r3, #15
     58c:	73bb      	strb	r3, [r7, #14]
     58e:	4ba3      	ldr	r3, [pc, #652]	; (81c <chip_vm+0x2dc>)
     590:	7ddb      	ldrb	r3, [r3, #23]
     592:	091b      	lsrs	r3, r3, #4
     594:	737b      	strb	r3, [r7, #13]
     596:	4ba1      	ldr	r3, [pc, #644]	; (81c <chip_vm+0x2dc>)
     598:	7d9b      	ldrb	r3, [r3, #22]
     59a:	091b      	lsrs	r3, r3, #4
     59c:	b2db      	uxtb	r3, r3
     59e:	2b0f      	cmp	r3, #15
     5a0:	d8dc      	bhi.n	55c <chip_vm+0x1c>
     5a2:	a201      	add	r2, pc, #4	; (adr r2, 5a8 <chip_vm+0x68>)
     5a4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     5a8:	000005e9 	.word	0x000005e9
     5ac:	0000071d 	.word	0x0000071d
     5b0:	0000073b 	.word	0x0000073b
     5b4:	00000779 	.word	0x00000779
     5b8:	0000079b 	.word	0x0000079b
     5bc:	000007bd 	.word	0x000007bd
     5c0:	00000809 	.word	0x00000809
     5c4:	00000825 	.word	0x00000825
     5c8:	00000865 	.word	0x00000865
     5cc:	00000a4f 	.word	0x00000a4f
     5d0:	00000ce9 	.word	0x00000ce9
     5d4:	00000d05 	.word	0x00000d05
     5d8:	00000d2f 	.word	0x00000d2f
     5dc:	00000d55 	.word	0x00000d55
     5e0:	00000ddd 	.word	0x00000ddd
     5e4:	00000e3b 	.word	0x00000e3b
     5e8:	4b8c      	ldr	r3, [pc, #560]	; (81c <chip_vm+0x2dc>)
     5ea:	7d9a      	ldrb	r2, [r3, #22]
     5ec:	4b8b      	ldr	r3, [pc, #556]	; (81c <chip_vm+0x2dc>)
     5ee:	7ddb      	ldrb	r3, [r3, #23]
     5f0:	4313      	orrs	r3, r2
     5f2:	b2db      	uxtb	r3, r3
     5f4:	2b00      	cmp	r3, #0
     5f6:	f000 85f3 	beq.w	11e0 <chip_vm+0xca0>
     5fa:	4b88      	ldr	r3, [pc, #544]	; (81c <chip_vm+0x2dc>)
     5fc:	7ddb      	ldrb	r3, [r3, #23]
     5fe:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     602:	2bc0      	cmp	r3, #192	; 0xc0
     604:	d109      	bne.n	61a <chip_vm+0xda>
     606:	4b85      	ldr	r3, [pc, #532]	; (81c <chip_vm+0x2dc>)
     608:	7ddb      	ldrb	r3, [r3, #23]
     60a:	f003 030f 	and.w	r3, r3, #15
     60e:	b2db      	uxtb	r3, r3
     610:	4618      	mov	r0, r3
     612:	f001 fe0f 	bl	2234 <gfx_scroll_down>
     616:	f000 bde3 	b.w	11e0 <chip_vm+0xca0>
     61a:	4b80      	ldr	r3, [pc, #512]	; (81c <chip_vm+0x2dc>)
     61c:	7ddb      	ldrb	r3, [r3, #23]
     61e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     622:	2bd0      	cmp	r3, #208	; 0xd0
     624:	d109      	bne.n	63a <chip_vm+0xfa>
     626:	4b7d      	ldr	r3, [pc, #500]	; (81c <chip_vm+0x2dc>)
     628:	7ddb      	ldrb	r3, [r3, #23]
     62a:	f003 030f 	and.w	r3, r3, #15
     62e:	b2db      	uxtb	r3, r3
     630:	4618      	mov	r0, r3
     632:	f001 fdcd 	bl	21d0 <gfx_scroll_up>
     636:	f000 bdd3 	b.w	11e0 <chip_vm+0xca0>
     63a:	4b78      	ldr	r3, [pc, #480]	; (81c <chip_vm+0x2dc>)
     63c:	7ddb      	ldrb	r3, [r3, #23]
     63e:	3be0      	subs	r3, #224	; 0xe0
     640:	2b1f      	cmp	r3, #31
     642:	d866      	bhi.n	712 <chip_vm+0x1d2>
     644:	a201      	add	r2, pc, #4	; (adr r2, 64c <chip_vm+0x10c>)
     646:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     64a:	bf00      	nop
     64c:	000006cd 	.word	0x000006cd
     650:	00000713 	.word	0x00000713
     654:	00000713 	.word	0x00000713
     658:	00000713 	.word	0x00000713
     65c:	00000713 	.word	0x00000713
     660:	00000713 	.word	0x00000713
     664:	00000713 	.word	0x00000713
     668:	00000713 	.word	0x00000713
     66c:	00000713 	.word	0x00000713
     670:	00000713 	.word	0x00000713
     674:	00000713 	.word	0x00000713
     678:	00000713 	.word	0x00000713
     67c:	00000713 	.word	0x00000713
     680:	00000713 	.word	0x00000713
     684:	000006d3 	.word	0x000006d3
     688:	00000713 	.word	0x00000713
     68c:	00000713 	.word	0x00000713
     690:	00000713 	.word	0x00000713
     694:	00000713 	.word	0x00000713
     698:	00000713 	.word	0x00000713
     69c:	00000713 	.word	0x00000713
     6a0:	00000713 	.word	0x00000713
     6a4:	00000713 	.word	0x00000713
     6a8:	00000713 	.word	0x00000713
     6ac:	00000713 	.word	0x00000713
     6b0:	00000713 	.word	0x00000713
     6b4:	00000713 	.word	0x00000713
     6b8:	000006ed 	.word	0x000006ed
     6bc:	000006f5 	.word	0x000006f5
     6c0:	000006fd 	.word	0x000006fd
     6c4:	00000703 	.word	0x00000703
     6c8:	0000070b 	.word	0x0000070b
     6cc:	f001 fd2c 	bl	2128 <gfx_cls>
     6d0:	e022      	b.n	718 <chip_vm+0x1d8>
     6d2:	4b52      	ldr	r3, [pc, #328]	; (81c <chip_vm+0x2dc>)
     6d4:	791b      	ldrb	r3, [r3, #4]
     6d6:	1e5a      	subs	r2, r3, #1
     6d8:	b2d1      	uxtb	r1, r2
     6da:	4a50      	ldr	r2, [pc, #320]	; (81c <chip_vm+0x2dc>)
     6dc:	7111      	strb	r1, [r2, #4]
     6de:	4a4f      	ldr	r2, [pc, #316]	; (81c <chip_vm+0x2dc>)
     6e0:	330c      	adds	r3, #12
     6e2:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     6e6:	4b4d      	ldr	r3, [pc, #308]	; (81c <chip_vm+0x2dc>)
     6e8:	801a      	strh	r2, [r3, #0]
     6ea:	e015      	b.n	718 <chip_vm+0x1d8>
     6ec:	2004      	movs	r0, #4
     6ee:	f001 fe0d 	bl	230c <gfx_scroll_right>
     6f2:	e011      	b.n	718 <chip_vm+0x1d8>
     6f4:	2004      	movs	r0, #4
     6f6:	f001 fdd3 	bl	22a0 <gfx_scroll_left>
     6fa:	e00d      	b.n	718 <chip_vm+0x1d8>
     6fc:	2301      	movs	r3, #1
     6fe:	f000 bd78 	b.w	11f2 <chip_vm+0xcb2>
     702:	2003      	movs	r0, #3
     704:	f004 fc38 	bl	4f78 <set_video_mode>
     708:	e006      	b.n	718 <chip_vm+0x1d8>
     70a:	2002      	movs	r0, #2
     70c:	f004 fc34 	bl	4f78 <set_video_mode>
     710:	e002      	b.n	718 <chip_vm+0x1d8>
     712:	2302      	movs	r3, #2
     714:	f000 bd6d 	b.w	11f2 <chip_vm+0xcb2>
     718:	f000 bd62 	b.w	11e0 <chip_vm+0xca0>
     71c:	4b3f      	ldr	r3, [pc, #252]	; (81c <chip_vm+0x2dc>)
     71e:	7d9b      	ldrb	r3, [r3, #22]
     720:	021b      	lsls	r3, r3, #8
     722:	4a3e      	ldr	r2, [pc, #248]	; (81c <chip_vm+0x2dc>)
     724:	7dd2      	ldrb	r2, [r2, #23]
     726:	4313      	orrs	r3, r2
     728:	005b      	lsls	r3, r3, #1
     72a:	b29b      	uxth	r3, r3
     72c:	f3c3 030b 	ubfx	r3, r3, #0, #12
     730:	b29a      	uxth	r2, r3
     732:	4b3a      	ldr	r3, [pc, #232]	; (81c <chip_vm+0x2dc>)
     734:	801a      	strh	r2, [r3, #0]
     736:	f000 bd5a 	b.w	11ee <chip_vm+0xcae>
     73a:	4b38      	ldr	r3, [pc, #224]	; (81c <chip_vm+0x2dc>)
     73c:	791b      	ldrb	r3, [r3, #4]
     73e:	3301      	adds	r3, #1
     740:	b2da      	uxtb	r2, r3
     742:	4b36      	ldr	r3, [pc, #216]	; (81c <chip_vm+0x2dc>)
     744:	711a      	strb	r2, [r3, #4]
     746:	4b35      	ldr	r3, [pc, #212]	; (81c <chip_vm+0x2dc>)
     748:	791b      	ldrb	r3, [r3, #4]
     74a:	4618      	mov	r0, r3
     74c:	4b33      	ldr	r3, [pc, #204]	; (81c <chip_vm+0x2dc>)
     74e:	8819      	ldrh	r1, [r3, #0]
     750:	4a32      	ldr	r2, [pc, #200]	; (81c <chip_vm+0x2dc>)
     752:	f100 030c 	add.w	r3, r0, #12
     756:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     75a:	4b30      	ldr	r3, [pc, #192]	; (81c <chip_vm+0x2dc>)
     75c:	7d9b      	ldrb	r3, [r3, #22]
     75e:	021b      	lsls	r3, r3, #8
     760:	4a2e      	ldr	r2, [pc, #184]	; (81c <chip_vm+0x2dc>)
     762:	7dd2      	ldrb	r2, [r2, #23]
     764:	4313      	orrs	r3, r2
     766:	005b      	lsls	r3, r3, #1
     768:	b29b      	uxth	r3, r3
     76a:	f3c3 030b 	ubfx	r3, r3, #0, #12
     76e:	b29a      	uxth	r2, r3
     770:	4b2a      	ldr	r3, [pc, #168]	; (81c <chip_vm+0x2dc>)
     772:	801a      	strh	r2, [r3, #0]
     774:	f000 bd3b 	b.w	11ee <chip_vm+0xcae>
     778:	7bbb      	ldrb	r3, [r7, #14]
     77a:	4a28      	ldr	r2, [pc, #160]	; (81c <chip_vm+0x2dc>)
     77c:	4413      	add	r3, r2
     77e:	795a      	ldrb	r2, [r3, #5]
     780:	4b26      	ldr	r3, [pc, #152]	; (81c <chip_vm+0x2dc>)
     782:	7ddb      	ldrb	r3, [r3, #23]
     784:	429a      	cmp	r2, r3
     786:	f040 852e 	bne.w	11e6 <chip_vm+0xca6>
     78a:	4b24      	ldr	r3, [pc, #144]	; (81c <chip_vm+0x2dc>)
     78c:	881b      	ldrh	r3, [r3, #0]
     78e:	3302      	adds	r3, #2
     790:	b29a      	uxth	r2, r3
     792:	4b22      	ldr	r3, [pc, #136]	; (81c <chip_vm+0x2dc>)
     794:	801a      	strh	r2, [r3, #0]
     796:	f000 bd26 	b.w	11e6 <chip_vm+0xca6>
     79a:	7bbb      	ldrb	r3, [r7, #14]
     79c:	4a1f      	ldr	r2, [pc, #124]	; (81c <chip_vm+0x2dc>)
     79e:	4413      	add	r3, r2
     7a0:	795a      	ldrb	r2, [r3, #5]
     7a2:	4b1e      	ldr	r3, [pc, #120]	; (81c <chip_vm+0x2dc>)
     7a4:	7ddb      	ldrb	r3, [r3, #23]
     7a6:	429a      	cmp	r2, r3
     7a8:	f000 8520 	beq.w	11ec <chip_vm+0xcac>
     7ac:	4b1b      	ldr	r3, [pc, #108]	; (81c <chip_vm+0x2dc>)
     7ae:	881b      	ldrh	r3, [r3, #0]
     7b0:	3302      	adds	r3, #2
     7b2:	b29a      	uxth	r2, r3
     7b4:	4b19      	ldr	r3, [pc, #100]	; (81c <chip_vm+0x2dc>)
     7b6:	801a      	strh	r2, [r3, #0]
     7b8:	f000 bd18 	b.w	11ec <chip_vm+0xcac>
     7bc:	4b17      	ldr	r3, [pc, #92]	; (81c <chip_vm+0x2dc>)
     7be:	7ddb      	ldrb	r3, [r3, #23]
     7c0:	f003 030f 	and.w	r3, r3, #15
     7c4:	2b02      	cmp	r3, #2
     7c6:	d016      	beq.n	7f6 <chip_vm+0x2b6>
     7c8:	2b03      	cmp	r3, #3
     7ca:	d017      	beq.n	7fc <chip_vm+0x2bc>
     7cc:	2b00      	cmp	r3, #0
     7ce:	d001      	beq.n	7d4 <chip_vm+0x294>
     7d0:	f000 bd0d 	b.w	11ee <chip_vm+0xcae>
     7d4:	7bbb      	ldrb	r3, [r7, #14]
     7d6:	4a11      	ldr	r2, [pc, #68]	; (81c <chip_vm+0x2dc>)
     7d8:	4413      	add	r3, r2
     7da:	795a      	ldrb	r2, [r3, #5]
     7dc:	7b7b      	ldrb	r3, [r7, #13]
     7de:	490f      	ldr	r1, [pc, #60]	; (81c <chip_vm+0x2dc>)
     7e0:	440b      	add	r3, r1
     7e2:	795b      	ldrb	r3, [r3, #5]
     7e4:	429a      	cmp	r2, r3
     7e6:	d10c      	bne.n	802 <chip_vm+0x2c2>
     7e8:	4b0c      	ldr	r3, [pc, #48]	; (81c <chip_vm+0x2dc>)
     7ea:	881b      	ldrh	r3, [r3, #0]
     7ec:	3302      	adds	r3, #2
     7ee:	b29a      	uxth	r2, r3
     7f0:	4b0a      	ldr	r3, [pc, #40]	; (81c <chip_vm+0x2dc>)
     7f2:	801a      	strh	r2, [r3, #0]
     7f4:	e005      	b.n	802 <chip_vm+0x2c2>
     7f6:	bf00      	nop
     7f8:	f000 bcf9 	b.w	11ee <chip_vm+0xcae>
     7fc:	bf00      	nop
     7fe:	f000 bcf6 	b.w	11ee <chip_vm+0xcae>
     802:	bf00      	nop
     804:	f000 bcf3 	b.w	11ee <chip_vm+0xcae>
     808:	7bbb      	ldrb	r3, [r7, #14]
     80a:	4a04      	ldr	r2, [pc, #16]	; (81c <chip_vm+0x2dc>)
     80c:	7dd1      	ldrb	r1, [r2, #23]
     80e:	4a03      	ldr	r2, [pc, #12]	; (81c <chip_vm+0x2dc>)
     810:	4413      	add	r3, r2
     812:	460a      	mov	r2, r1
     814:	715a      	strb	r2, [r3, #5]
     816:	f000 bcea 	b.w	11ee <chip_vm+0xcae>
     81a:	bf00      	nop
     81c:	2000015c 	.word	0x2000015c
     820:	200005fc 	.word	0x200005fc
     824:	7bbb      	ldrb	r3, [r7, #14]
     826:	4aa8      	ldr	r2, [pc, #672]	; (ac8 <chip_vm+0x588>)
     828:	4413      	add	r3, r2
     82a:	795b      	ldrb	r3, [r3, #5]
     82c:	461a      	mov	r2, r3
     82e:	4ba6      	ldr	r3, [pc, #664]	; (ac8 <chip_vm+0x588>)
     830:	7ddb      	ldrb	r3, [r3, #23]
     832:	4413      	add	r3, r2
     834:	2bff      	cmp	r3, #255	; 0xff
     836:	bfcc      	ite	gt
     838:	2301      	movgt	r3, #1
     83a:	2300      	movle	r3, #0
     83c:	b2db      	uxtb	r3, r3
     83e:	73fb      	strb	r3, [r7, #15]
     840:	7bbb      	ldrb	r3, [r7, #14]
     842:	7bba      	ldrb	r2, [r7, #14]
     844:	49a0      	ldr	r1, [pc, #640]	; (ac8 <chip_vm+0x588>)
     846:	440a      	add	r2, r1
     848:	7951      	ldrb	r1, [r2, #5]
     84a:	4a9f      	ldr	r2, [pc, #636]	; (ac8 <chip_vm+0x588>)
     84c:	7dd2      	ldrb	r2, [r2, #23]
     84e:	440a      	add	r2, r1
     850:	b2d1      	uxtb	r1, r2
     852:	4a9d      	ldr	r2, [pc, #628]	; (ac8 <chip_vm+0x588>)
     854:	4413      	add	r3, r2
     856:	460a      	mov	r2, r1
     858:	715a      	strb	r2, [r3, #5]
     85a:	4a9b      	ldr	r2, [pc, #620]	; (ac8 <chip_vm+0x588>)
     85c:	7bfb      	ldrb	r3, [r7, #15]
     85e:	7513      	strb	r3, [r2, #20]
     860:	f000 bcc5 	b.w	11ee <chip_vm+0xcae>
     864:	4b98      	ldr	r3, [pc, #608]	; (ac8 <chip_vm+0x588>)
     866:	7ddb      	ldrb	r3, [r3, #23]
     868:	f003 030f 	and.w	r3, r3, #15
     86c:	2b0e      	cmp	r3, #14
     86e:	f200 80eb 	bhi.w	a48 <chip_vm+0x508>
     872:	a201      	add	r2, pc, #4	; (adr r2, 878 <chip_vm+0x338>)
     874:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     878:	000008b5 	.word	0x000008b5
     87c:	000008c9 	.word	0x000008c9
     880:	000008e9 	.word	0x000008e9
     884:	00000909 	.word	0x00000909
     888:	00000929 	.word	0x00000929
     88c:	0000096f 	.word	0x0000096f
     890:	000009b1 	.word	0x000009b1
     894:	000009dd 	.word	0x000009dd
     898:	00000a49 	.word	0x00000a49
     89c:	00000a49 	.word	0x00000a49
     8a0:	00000a49 	.word	0x00000a49
     8a4:	00000a49 	.word	0x00000a49
     8a8:	00000a49 	.word	0x00000a49
     8ac:	00000a49 	.word	0x00000a49
     8b0:	00000a1f 	.word	0x00000a1f
     8b4:	7bbb      	ldrb	r3, [r7, #14]
     8b6:	7b7a      	ldrb	r2, [r7, #13]
     8b8:	4983      	ldr	r1, [pc, #524]	; (ac8 <chip_vm+0x588>)
     8ba:	440a      	add	r2, r1
     8bc:	7951      	ldrb	r1, [r2, #5]
     8be:	4a82      	ldr	r2, [pc, #520]	; (ac8 <chip_vm+0x588>)
     8c0:	4413      	add	r3, r2
     8c2:	460a      	mov	r2, r1
     8c4:	715a      	strb	r2, [r3, #5]
     8c6:	e0c1      	b.n	a4c <chip_vm+0x50c>
     8c8:	7bbb      	ldrb	r3, [r7, #14]
     8ca:	7bba      	ldrb	r2, [r7, #14]
     8cc:	497e      	ldr	r1, [pc, #504]	; (ac8 <chip_vm+0x588>)
     8ce:	440a      	add	r2, r1
     8d0:	7951      	ldrb	r1, [r2, #5]
     8d2:	7b7a      	ldrb	r2, [r7, #13]
     8d4:	487c      	ldr	r0, [pc, #496]	; (ac8 <chip_vm+0x588>)
     8d6:	4402      	add	r2, r0
     8d8:	7952      	ldrb	r2, [r2, #5]
     8da:	430a      	orrs	r2, r1
     8dc:	b2d1      	uxtb	r1, r2
     8de:	4a7a      	ldr	r2, [pc, #488]	; (ac8 <chip_vm+0x588>)
     8e0:	4413      	add	r3, r2
     8e2:	460a      	mov	r2, r1
     8e4:	715a      	strb	r2, [r3, #5]
     8e6:	e0b1      	b.n	a4c <chip_vm+0x50c>
     8e8:	7bbb      	ldrb	r3, [r7, #14]
     8ea:	7bba      	ldrb	r2, [r7, #14]
     8ec:	4976      	ldr	r1, [pc, #472]	; (ac8 <chip_vm+0x588>)
     8ee:	440a      	add	r2, r1
     8f0:	7951      	ldrb	r1, [r2, #5]
     8f2:	7b7a      	ldrb	r2, [r7, #13]
     8f4:	4874      	ldr	r0, [pc, #464]	; (ac8 <chip_vm+0x588>)
     8f6:	4402      	add	r2, r0
     8f8:	7952      	ldrb	r2, [r2, #5]
     8fa:	400a      	ands	r2, r1
     8fc:	b2d1      	uxtb	r1, r2
     8fe:	4a72      	ldr	r2, [pc, #456]	; (ac8 <chip_vm+0x588>)
     900:	4413      	add	r3, r2
     902:	460a      	mov	r2, r1
     904:	715a      	strb	r2, [r3, #5]
     906:	e0a1      	b.n	a4c <chip_vm+0x50c>
     908:	7bbb      	ldrb	r3, [r7, #14]
     90a:	7bba      	ldrb	r2, [r7, #14]
     90c:	496e      	ldr	r1, [pc, #440]	; (ac8 <chip_vm+0x588>)
     90e:	440a      	add	r2, r1
     910:	7951      	ldrb	r1, [r2, #5]
     912:	7b7a      	ldrb	r2, [r7, #13]
     914:	486c      	ldr	r0, [pc, #432]	; (ac8 <chip_vm+0x588>)
     916:	4402      	add	r2, r0
     918:	7952      	ldrb	r2, [r2, #5]
     91a:	404a      	eors	r2, r1
     91c:	b2d1      	uxtb	r1, r2
     91e:	4a6a      	ldr	r2, [pc, #424]	; (ac8 <chip_vm+0x588>)
     920:	4413      	add	r3, r2
     922:	460a      	mov	r2, r1
     924:	715a      	strb	r2, [r3, #5]
     926:	e091      	b.n	a4c <chip_vm+0x50c>
     928:	7bbb      	ldrb	r3, [r7, #14]
     92a:	4a67      	ldr	r2, [pc, #412]	; (ac8 <chip_vm+0x588>)
     92c:	4413      	add	r3, r2
     92e:	795b      	ldrb	r3, [r3, #5]
     930:	4619      	mov	r1, r3
     932:	7b7b      	ldrb	r3, [r7, #13]
     934:	4a64      	ldr	r2, [pc, #400]	; (ac8 <chip_vm+0x588>)
     936:	4413      	add	r3, r2
     938:	795b      	ldrb	r3, [r3, #5]
     93a:	440b      	add	r3, r1
     93c:	2bff      	cmp	r3, #255	; 0xff
     93e:	bfcc      	ite	gt
     940:	2301      	movgt	r3, #1
     942:	2300      	movle	r3, #0
     944:	b2db      	uxtb	r3, r3
     946:	73fb      	strb	r3, [r7, #15]
     948:	7bbb      	ldrb	r3, [r7, #14]
     94a:	7bba      	ldrb	r2, [r7, #14]
     94c:	495e      	ldr	r1, [pc, #376]	; (ac8 <chip_vm+0x588>)
     94e:	440a      	add	r2, r1
     950:	7951      	ldrb	r1, [r2, #5]
     952:	7b7a      	ldrb	r2, [r7, #13]
     954:	485c      	ldr	r0, [pc, #368]	; (ac8 <chip_vm+0x588>)
     956:	4402      	add	r2, r0
     958:	7952      	ldrb	r2, [r2, #5]
     95a:	440a      	add	r2, r1
     95c:	b2d1      	uxtb	r1, r2
     95e:	4a5a      	ldr	r2, [pc, #360]	; (ac8 <chip_vm+0x588>)
     960:	4413      	add	r3, r2
     962:	460a      	mov	r2, r1
     964:	715a      	strb	r2, [r3, #5]
     966:	4a58      	ldr	r2, [pc, #352]	; (ac8 <chip_vm+0x588>)
     968:	7bfb      	ldrb	r3, [r7, #15]
     96a:	7513      	strb	r3, [r2, #20]
     96c:	e06e      	b.n	a4c <chip_vm+0x50c>
     96e:	7bbb      	ldrb	r3, [r7, #14]
     970:	4a55      	ldr	r2, [pc, #340]	; (ac8 <chip_vm+0x588>)
     972:	4413      	add	r3, r2
     974:	795a      	ldrb	r2, [r3, #5]
     976:	7b7b      	ldrb	r3, [r7, #13]
     978:	4953      	ldr	r1, [pc, #332]	; (ac8 <chip_vm+0x588>)
     97a:	440b      	add	r3, r1
     97c:	795b      	ldrb	r3, [r3, #5]
     97e:	429a      	cmp	r2, r3
     980:	bf2c      	ite	cs
     982:	2301      	movcs	r3, #1
     984:	2300      	movcc	r3, #0
     986:	b2db      	uxtb	r3, r3
     988:	73fb      	strb	r3, [r7, #15]
     98a:	7bbb      	ldrb	r3, [r7, #14]
     98c:	7bba      	ldrb	r2, [r7, #14]
     98e:	494e      	ldr	r1, [pc, #312]	; (ac8 <chip_vm+0x588>)
     990:	440a      	add	r2, r1
     992:	7951      	ldrb	r1, [r2, #5]
     994:	7b7a      	ldrb	r2, [r7, #13]
     996:	484c      	ldr	r0, [pc, #304]	; (ac8 <chip_vm+0x588>)
     998:	4402      	add	r2, r0
     99a:	7952      	ldrb	r2, [r2, #5]
     99c:	1a8a      	subs	r2, r1, r2
     99e:	b2d1      	uxtb	r1, r2
     9a0:	4a49      	ldr	r2, [pc, #292]	; (ac8 <chip_vm+0x588>)
     9a2:	4413      	add	r3, r2
     9a4:	460a      	mov	r2, r1
     9a6:	715a      	strb	r2, [r3, #5]
     9a8:	4a47      	ldr	r2, [pc, #284]	; (ac8 <chip_vm+0x588>)
     9aa:	7bfb      	ldrb	r3, [r7, #15]
     9ac:	7513      	strb	r3, [r2, #20]
     9ae:	e04d      	b.n	a4c <chip_vm+0x50c>
     9b0:	7bbb      	ldrb	r3, [r7, #14]
     9b2:	4a45      	ldr	r2, [pc, #276]	; (ac8 <chip_vm+0x588>)
     9b4:	4413      	add	r3, r2
     9b6:	795b      	ldrb	r3, [r3, #5]
     9b8:	f003 0301 	and.w	r3, r3, #1
     9bc:	73fb      	strb	r3, [r7, #15]
     9be:	7bbb      	ldrb	r3, [r7, #14]
     9c0:	7bba      	ldrb	r2, [r7, #14]
     9c2:	4941      	ldr	r1, [pc, #260]	; (ac8 <chip_vm+0x588>)
     9c4:	440a      	add	r2, r1
     9c6:	7952      	ldrb	r2, [r2, #5]
     9c8:	0852      	lsrs	r2, r2, #1
     9ca:	b2d1      	uxtb	r1, r2
     9cc:	4a3e      	ldr	r2, [pc, #248]	; (ac8 <chip_vm+0x588>)
     9ce:	4413      	add	r3, r2
     9d0:	460a      	mov	r2, r1
     9d2:	715a      	strb	r2, [r3, #5]
     9d4:	4a3c      	ldr	r2, [pc, #240]	; (ac8 <chip_vm+0x588>)
     9d6:	7bfb      	ldrb	r3, [r7, #15]
     9d8:	7513      	strb	r3, [r2, #20]
     9da:	e037      	b.n	a4c <chip_vm+0x50c>
     9dc:	7b7b      	ldrb	r3, [r7, #13]
     9de:	4a3a      	ldr	r2, [pc, #232]	; (ac8 <chip_vm+0x588>)
     9e0:	4413      	add	r3, r2
     9e2:	795a      	ldrb	r2, [r3, #5]
     9e4:	7bbb      	ldrb	r3, [r7, #14]
     9e6:	4938      	ldr	r1, [pc, #224]	; (ac8 <chip_vm+0x588>)
     9e8:	440b      	add	r3, r1
     9ea:	795b      	ldrb	r3, [r3, #5]
     9ec:	429a      	cmp	r2, r3
     9ee:	bf2c      	ite	cs
     9f0:	2301      	movcs	r3, #1
     9f2:	2300      	movcc	r3, #0
     9f4:	b2db      	uxtb	r3, r3
     9f6:	73fb      	strb	r3, [r7, #15]
     9f8:	7bbb      	ldrb	r3, [r7, #14]
     9fa:	7b7a      	ldrb	r2, [r7, #13]
     9fc:	4932      	ldr	r1, [pc, #200]	; (ac8 <chip_vm+0x588>)
     9fe:	440a      	add	r2, r1
     a00:	7951      	ldrb	r1, [r2, #5]
     a02:	7bba      	ldrb	r2, [r7, #14]
     a04:	4830      	ldr	r0, [pc, #192]	; (ac8 <chip_vm+0x588>)
     a06:	4402      	add	r2, r0
     a08:	7952      	ldrb	r2, [r2, #5]
     a0a:	1a8a      	subs	r2, r1, r2
     a0c:	b2d1      	uxtb	r1, r2
     a0e:	4a2e      	ldr	r2, [pc, #184]	; (ac8 <chip_vm+0x588>)
     a10:	4413      	add	r3, r2
     a12:	460a      	mov	r2, r1
     a14:	715a      	strb	r2, [r3, #5]
     a16:	4a2c      	ldr	r2, [pc, #176]	; (ac8 <chip_vm+0x588>)
     a18:	7bfb      	ldrb	r3, [r7, #15]
     a1a:	7513      	strb	r3, [r2, #20]
     a1c:	e016      	b.n	a4c <chip_vm+0x50c>
     a1e:	7bbb      	ldrb	r3, [r7, #14]
     a20:	4a29      	ldr	r2, [pc, #164]	; (ac8 <chip_vm+0x588>)
     a22:	4413      	add	r3, r2
     a24:	795b      	ldrb	r3, [r3, #5]
     a26:	09db      	lsrs	r3, r3, #7
     a28:	73fb      	strb	r3, [r7, #15]
     a2a:	7bbb      	ldrb	r3, [r7, #14]
     a2c:	7bba      	ldrb	r2, [r7, #14]
     a2e:	4926      	ldr	r1, [pc, #152]	; (ac8 <chip_vm+0x588>)
     a30:	440a      	add	r2, r1
     a32:	7952      	ldrb	r2, [r2, #5]
     a34:	0052      	lsls	r2, r2, #1
     a36:	b2d1      	uxtb	r1, r2
     a38:	4a23      	ldr	r2, [pc, #140]	; (ac8 <chip_vm+0x588>)
     a3a:	4413      	add	r3, r2
     a3c:	460a      	mov	r2, r1
     a3e:	715a      	strb	r2, [r3, #5]
     a40:	4a21      	ldr	r2, [pc, #132]	; (ac8 <chip_vm+0x588>)
     a42:	7bfb      	ldrb	r3, [r7, #15]
     a44:	7513      	strb	r3, [r2, #20]
     a46:	e001      	b.n	a4c <chip_vm+0x50c>
     a48:	2302      	movs	r3, #2
     a4a:	e3d2      	b.n	11f2 <chip_vm+0xcb2>
     a4c:	e3cf      	b.n	11ee <chip_vm+0xcae>
     a4e:	4b1e      	ldr	r3, [pc, #120]	; (ac8 <chip_vm+0x588>)
     a50:	7ddb      	ldrb	r3, [r3, #23]
     a52:	f003 030f 	and.w	r3, r3, #15
     a56:	2b0f      	cmp	r3, #15
     a58:	f200 813e 	bhi.w	cd8 <chip_vm+0x798>
     a5c:	a201      	add	r2, pc, #4	; (adr r2, a64 <chip_vm+0x524>)
     a5e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a62:	bf00      	nop
     a64:	00000aa5 	.word	0x00000aa5
     a68:	00000acd 	.word	0x00000acd
     a6c:	00000ae9 	.word	0x00000ae9
     a70:	00000b3f 	.word	0x00000b3f
     a74:	00000b5d 	.word	0x00000b5d
     a78:	00000b6d 	.word	0x00000b6d
     a7c:	00000b8b 	.word	0x00000b8b
     a80:	00000bb3 	.word	0x00000bb3
     a84:	00000bd5 	.word	0x00000bd5
     a88:	00000be1 	.word	0x00000be1
     a8c:	00000bed 	.word	0x00000bed
     a90:	00000c17 	.word	0x00000c17
     a94:	00000c45 	.word	0x00000c45
     a98:	00000c6f 	.word	0x00000c6f
     a9c:	00000c99 	.word	0x00000c99
     aa0:	00000cc3 	.word	0x00000cc3
     aa4:	7bbb      	ldrb	r3, [r7, #14]
     aa6:	4a08      	ldr	r2, [pc, #32]	; (ac8 <chip_vm+0x588>)
     aa8:	4413      	add	r3, r2
     aaa:	795a      	ldrb	r2, [r3, #5]
     aac:	7b7b      	ldrb	r3, [r7, #13]
     aae:	4906      	ldr	r1, [pc, #24]	; (ac8 <chip_vm+0x588>)
     ab0:	440b      	add	r3, r1
     ab2:	795b      	ldrb	r3, [r3, #5]
     ab4:	429a      	cmp	r2, r3
     ab6:	f000 8111 	beq.w	cdc <chip_vm+0x79c>
     aba:	4b03      	ldr	r3, [pc, #12]	; (ac8 <chip_vm+0x588>)
     abc:	881b      	ldrh	r3, [r3, #0]
     abe:	3302      	adds	r3, #2
     ac0:	b29a      	uxth	r2, r3
     ac2:	4b01      	ldr	r3, [pc, #4]	; (ac8 <chip_vm+0x588>)
     ac4:	801a      	strh	r2, [r3, #0]
     ac6:	e109      	b.n	cdc <chip_vm+0x79c>
     ac8:	2000015c 	.word	0x2000015c
     acc:	7bbb      	ldrb	r3, [r7, #14]
     ace:	4a9f      	ldr	r2, [pc, #636]	; (d4c <chip_vm+0x80c>)
     ad0:	4413      	add	r3, r2
     ad2:	795b      	ldrb	r3, [r3, #5]
     ad4:	4618      	mov	r0, r3
     ad6:	7b7b      	ldrb	r3, [r7, #13]
     ad8:	4a9c      	ldr	r2, [pc, #624]	; (d4c <chip_vm+0x80c>)
     ada:	4413      	add	r3, r2
     adc:	795b      	ldrb	r3, [r3, #5]
     ade:	2200      	movs	r2, #0
     ae0:	4619      	mov	r1, r3
     ae2:	f003 fad5 	bl	4090 <key_tone>
     ae6:	e0fe      	b.n	ce6 <chip_vm+0x7a6>
     ae8:	2002      	movs	r0, #2
     aea:	f003 fce9 	bl	44c0 <select_font>
     aee:	7bbb      	ldrb	r3, [r7, #14]
     af0:	4a96      	ldr	r2, [pc, #600]	; (d4c <chip_vm+0x80c>)
     af2:	4413      	add	r3, r2
     af4:	7958      	ldrb	r0, [r3, #5]
     af6:	7b7b      	ldrb	r3, [r7, #13]
     af8:	4a94      	ldr	r2, [pc, #592]	; (d4c <chip_vm+0x80c>)
     afa:	4413      	add	r3, r2
     afc:	795b      	ldrb	r3, [r3, #5]
     afe:	4619      	mov	r1, r3
     b00:	f003 fdfc 	bl	46fc <set_cursor>
     b04:	4b91      	ldr	r3, [pc, #580]	; (d4c <chip_vm+0x80c>)
     b06:	885b      	ldrh	r3, [r3, #2]
     b08:	1c5a      	adds	r2, r3, #1
     b0a:	b291      	uxth	r1, r2
     b0c:	4a8f      	ldr	r2, [pc, #572]	; (d4c <chip_vm+0x80c>)
     b0e:	8051      	strh	r1, [r2, #2]
     b10:	461a      	mov	r2, r3
     b12:	4b8f      	ldr	r3, [pc, #572]	; (d50 <chip_vm+0x810>)
     b14:	5c9b      	ldrb	r3, [r3, r2]
     b16:	73fb      	strb	r3, [r7, #15]
     b18:	e00d      	b.n	b36 <chip_vm+0x5f6>
     b1a:	7bfb      	ldrb	r3, [r7, #15]
     b1c:	4618      	mov	r0, r3
     b1e:	f003 fd61 	bl	45e4 <put_char>
     b22:	4b8a      	ldr	r3, [pc, #552]	; (d4c <chip_vm+0x80c>)
     b24:	885b      	ldrh	r3, [r3, #2]
     b26:	1c5a      	adds	r2, r3, #1
     b28:	b291      	uxth	r1, r2
     b2a:	4a88      	ldr	r2, [pc, #544]	; (d4c <chip_vm+0x80c>)
     b2c:	8051      	strh	r1, [r2, #2]
     b2e:	461a      	mov	r2, r3
     b30:	4b87      	ldr	r3, [pc, #540]	; (d50 <chip_vm+0x810>)
     b32:	5c9b      	ldrb	r3, [r3, r2]
     b34:	73fb      	strb	r3, [r7, #15]
     b36:	7bfb      	ldrb	r3, [r7, #15]
     b38:	2b00      	cmp	r3, #0
     b3a:	d1ee      	bne.n	b1a <chip_vm+0x5da>
     b3c:	e0d3      	b.n	ce6 <chip_vm+0x7a6>
     b3e:	7bbb      	ldrb	r3, [r7, #14]
     b40:	4a82      	ldr	r2, [pc, #520]	; (d4c <chip_vm+0x80c>)
     b42:	4413      	add	r3, r2
     b44:	795b      	ldrb	r3, [r3, #5]
     b46:	4618      	mov	r0, r3
     b48:	7b7b      	ldrb	r3, [r7, #13]
     b4a:	4a80      	ldr	r2, [pc, #512]	; (d4c <chip_vm+0x80c>)
     b4c:	4413      	add	r3, r2
     b4e:	795b      	ldrb	r3, [r3, #5]
     b50:	4619      	mov	r1, r3
     b52:	2303      	movs	r3, #3
     b54:	2200      	movs	r2, #0
     b56:	f001 f9d9 	bl	1f0c <gfx_blit>
     b5a:	e0c4      	b.n	ce6 <chip_vm+0x7a6>
     b5c:	7bbb      	ldrb	r3, [r7, #14]
     b5e:	011a      	lsls	r2, r3, #4
     b60:	7b7b      	ldrb	r3, [r7, #13]
     b62:	4413      	add	r3, r2
     b64:	4618      	mov	r0, r3
     b66:	f003 fa9e 	bl	40a6 <noise>
     b6a:	e0bc      	b.n	ce6 <chip_vm+0x7a6>
     b6c:	7bbb      	ldrb	r3, [r7, #14]
     b6e:	4a77      	ldr	r2, [pc, #476]	; (d4c <chip_vm+0x80c>)
     b70:	4413      	add	r3, r2
     b72:	795b      	ldrb	r3, [r3, #5]
     b74:	4618      	mov	r0, r3
     b76:	7b7b      	ldrb	r3, [r7, #13]
     b78:	4a74      	ldr	r2, [pc, #464]	; (d4c <chip_vm+0x80c>)
     b7a:	4413      	add	r3, r2
     b7c:	795b      	ldrb	r3, [r3, #5]
     b7e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     b82:	4619      	mov	r1, r3
     b84:	f003 fa84 	bl	4090 <key_tone>
     b88:	e0ad      	b.n	ce6 <chip_vm+0x7a6>
     b8a:	4b70      	ldr	r3, [pc, #448]	; (d4c <chip_vm+0x80c>)
     b8c:	791b      	ldrb	r3, [r3, #4]
     b8e:	3301      	adds	r3, #1
     b90:	b2da      	uxtb	r2, r3
     b92:	4b6e      	ldr	r3, [pc, #440]	; (d4c <chip_vm+0x80c>)
     b94:	711a      	strb	r2, [r3, #4]
     b96:	4b6d      	ldr	r3, [pc, #436]	; (d4c <chip_vm+0x80c>)
     b98:	791b      	ldrb	r3, [r3, #4]
     b9a:	4618      	mov	r0, r3
     b9c:	7bbb      	ldrb	r3, [r7, #14]
     b9e:	4a6b      	ldr	r2, [pc, #428]	; (d4c <chip_vm+0x80c>)
     ba0:	4413      	add	r3, r2
     ba2:	795b      	ldrb	r3, [r3, #5]
     ba4:	b299      	uxth	r1, r3
     ba6:	4a69      	ldr	r2, [pc, #420]	; (d4c <chip_vm+0x80c>)
     ba8:	f100 030c 	add.w	r3, r0, #12
     bac:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     bb0:	e099      	b.n	ce6 <chip_vm+0x7a6>
     bb2:	7bba      	ldrb	r2, [r7, #14]
     bb4:	4b65      	ldr	r3, [pc, #404]	; (d4c <chip_vm+0x80c>)
     bb6:	791b      	ldrb	r3, [r3, #4]
     bb8:	1e59      	subs	r1, r3, #1
     bba:	b2c8      	uxtb	r0, r1
     bbc:	4963      	ldr	r1, [pc, #396]	; (d4c <chip_vm+0x80c>)
     bbe:	7108      	strb	r0, [r1, #4]
     bc0:	4962      	ldr	r1, [pc, #392]	; (d4c <chip_vm+0x80c>)
     bc2:	330c      	adds	r3, #12
     bc4:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     bc8:	b2d9      	uxtb	r1, r3
     bca:	4b60      	ldr	r3, [pc, #384]	; (d4c <chip_vm+0x80c>)
     bcc:	4413      	add	r3, r2
     bce:	460a      	mov	r2, r1
     bd0:	715a      	strb	r2, [r3, #5]
     bd2:	e088      	b.n	ce6 <chip_vm+0x7a6>
     bd4:	7bbb      	ldrb	r3, [r7, #14]
     bd6:	4a5d      	ldr	r2, [pc, #372]	; (d4c <chip_vm+0x80c>)
     bd8:	4413      	add	r3, r2
     bda:	22b4      	movs	r2, #180	; 0xb4
     bdc:	715a      	strb	r2, [r3, #5]
     bde:	e082      	b.n	ce6 <chip_vm+0x7a6>
     be0:	7bbb      	ldrb	r3, [r7, #14]
     be2:	4a5a      	ldr	r2, [pc, #360]	; (d4c <chip_vm+0x80c>)
     be4:	4413      	add	r3, r2
     be6:	2270      	movs	r2, #112	; 0x70
     be8:	715a      	strb	r2, [r3, #5]
     bea:	e07c      	b.n	ce6 <chip_vm+0x7a6>
     bec:	7bbb      	ldrb	r3, [r7, #14]
     bee:	7bba      	ldrb	r2, [r7, #14]
     bf0:	4956      	ldr	r1, [pc, #344]	; (d4c <chip_vm+0x80c>)
     bf2:	440a      	add	r2, r1
     bf4:	7952      	ldrb	r2, [r2, #5]
     bf6:	b251      	sxtb	r1, r2
     bf8:	7b7a      	ldrb	r2, [r7, #13]
     bfa:	f002 0207 	and.w	r2, r2, #7
     bfe:	2001      	movs	r0, #1
     c00:	fa00 f202 	lsl.w	r2, r0, r2
     c04:	b252      	sxtb	r2, r2
     c06:	430a      	orrs	r2, r1
     c08:	b252      	sxtb	r2, r2
     c0a:	b2d1      	uxtb	r1, r2
     c0c:	4a4f      	ldr	r2, [pc, #316]	; (d4c <chip_vm+0x80c>)
     c0e:	4413      	add	r3, r2
     c10:	460a      	mov	r2, r1
     c12:	715a      	strb	r2, [r3, #5]
     c14:	e067      	b.n	ce6 <chip_vm+0x7a6>
     c16:	7bbb      	ldrb	r3, [r7, #14]
     c18:	7bba      	ldrb	r2, [r7, #14]
     c1a:	494c      	ldr	r1, [pc, #304]	; (d4c <chip_vm+0x80c>)
     c1c:	440a      	add	r2, r1
     c1e:	7952      	ldrb	r2, [r2, #5]
     c20:	b251      	sxtb	r1, r2
     c22:	7b7a      	ldrb	r2, [r7, #13]
     c24:	f002 0207 	and.w	r2, r2, #7
     c28:	2001      	movs	r0, #1
     c2a:	fa00 f202 	lsl.w	r2, r0, r2
     c2e:	b252      	sxtb	r2, r2
     c30:	43d2      	mvns	r2, r2
     c32:	b252      	sxtb	r2, r2
     c34:	400a      	ands	r2, r1
     c36:	b252      	sxtb	r2, r2
     c38:	b2d1      	uxtb	r1, r2
     c3a:	4a44      	ldr	r2, [pc, #272]	; (d4c <chip_vm+0x80c>)
     c3c:	4413      	add	r3, r2
     c3e:	460a      	mov	r2, r1
     c40:	715a      	strb	r2, [r3, #5]
     c42:	e050      	b.n	ce6 <chip_vm+0x7a6>
     c44:	7bbb      	ldrb	r3, [r7, #14]
     c46:	7bba      	ldrb	r2, [r7, #14]
     c48:	4940      	ldr	r1, [pc, #256]	; (d4c <chip_vm+0x80c>)
     c4a:	440a      	add	r2, r1
     c4c:	7952      	ldrb	r2, [r2, #5]
     c4e:	b251      	sxtb	r1, r2
     c50:	7b7a      	ldrb	r2, [r7, #13]
     c52:	f002 0207 	and.w	r2, r2, #7
     c56:	2001      	movs	r0, #1
     c58:	fa00 f202 	lsl.w	r2, r0, r2
     c5c:	b252      	sxtb	r2, r2
     c5e:	404a      	eors	r2, r1
     c60:	b252      	sxtb	r2, r2
     c62:	b2d1      	uxtb	r1, r2
     c64:	4a39      	ldr	r2, [pc, #228]	; (d4c <chip_vm+0x80c>)
     c66:	4413      	add	r3, r2
     c68:	460a      	mov	r2, r1
     c6a:	715a      	strb	r2, [r3, #5]
     c6c:	e03b      	b.n	ce6 <chip_vm+0x7a6>
     c6e:	7bbb      	ldrb	r3, [r7, #14]
     c70:	4a36      	ldr	r2, [pc, #216]	; (d4c <chip_vm+0x80c>)
     c72:	4413      	add	r3, r2
     c74:	795b      	ldrb	r3, [r3, #5]
     c76:	461a      	mov	r2, r3
     c78:	7b7b      	ldrb	r3, [r7, #13]
     c7a:	f003 0307 	and.w	r3, r3, #7
     c7e:	fa42 f303 	asr.w	r3, r2, r3
     c82:	f003 0301 	and.w	r3, r3, #1
     c86:	2b00      	cmp	r3, #0
     c88:	d02a      	beq.n	ce0 <chip_vm+0x7a0>
     c8a:	4b30      	ldr	r3, [pc, #192]	; (d4c <chip_vm+0x80c>)
     c8c:	881b      	ldrh	r3, [r3, #0]
     c8e:	3302      	adds	r3, #2
     c90:	b29a      	uxth	r2, r3
     c92:	4b2e      	ldr	r3, [pc, #184]	; (d4c <chip_vm+0x80c>)
     c94:	801a      	strh	r2, [r3, #0]
     c96:	e023      	b.n	ce0 <chip_vm+0x7a0>
     c98:	7bbb      	ldrb	r3, [r7, #14]
     c9a:	4a2c      	ldr	r2, [pc, #176]	; (d4c <chip_vm+0x80c>)
     c9c:	4413      	add	r3, r2
     c9e:	795b      	ldrb	r3, [r3, #5]
     ca0:	461a      	mov	r2, r3
     ca2:	7b7b      	ldrb	r3, [r7, #13]
     ca4:	f003 0307 	and.w	r3, r3, #7
     ca8:	fa42 f303 	asr.w	r3, r2, r3
     cac:	f003 0301 	and.w	r3, r3, #1
     cb0:	2b00      	cmp	r3, #0
     cb2:	d117      	bne.n	ce4 <chip_vm+0x7a4>
     cb4:	4b25      	ldr	r3, [pc, #148]	; (d4c <chip_vm+0x80c>)
     cb6:	881b      	ldrh	r3, [r3, #0]
     cb8:	3302      	adds	r3, #2
     cba:	b29a      	uxth	r2, r3
     cbc:	4b23      	ldr	r3, [pc, #140]	; (d4c <chip_vm+0x80c>)
     cbe:	801a      	strh	r2, [r3, #0]
     cc0:	e010      	b.n	ce4 <chip_vm+0x7a4>
     cc2:	7bbb      	ldrb	r3, [r7, #14]
     cc4:	7b7a      	ldrb	r2, [r7, #13]
     cc6:	4611      	mov	r1, r2
     cc8:	4618      	mov	r0, r3
     cca:	f001 fb59 	bl	2380 <gfx_get_pixel>
     cce:	4603      	mov	r3, r0
     cd0:	461a      	mov	r2, r3
     cd2:	4b1e      	ldr	r3, [pc, #120]	; (d4c <chip_vm+0x80c>)
     cd4:	751a      	strb	r2, [r3, #20]
     cd6:	e006      	b.n	ce6 <chip_vm+0x7a6>
     cd8:	2302      	movs	r3, #2
     cda:	e28a      	b.n	11f2 <chip_vm+0xcb2>
     cdc:	bf00      	nop
     cde:	e286      	b.n	11ee <chip_vm+0xcae>
     ce0:	bf00      	nop
     ce2:	e284      	b.n	11ee <chip_vm+0xcae>
     ce4:	bf00      	nop
     ce6:	e282      	b.n	11ee <chip_vm+0xcae>
     ce8:	4b18      	ldr	r3, [pc, #96]	; (d4c <chip_vm+0x80c>)
     cea:	7d9b      	ldrb	r3, [r3, #22]
     cec:	021b      	lsls	r3, r3, #8
     cee:	4a17      	ldr	r2, [pc, #92]	; (d4c <chip_vm+0x80c>)
     cf0:	7dd2      	ldrb	r2, [r2, #23]
     cf2:	4313      	orrs	r3, r2
     cf4:	005b      	lsls	r3, r3, #1
     cf6:	b29b      	uxth	r3, r3
     cf8:	f3c3 030b 	ubfx	r3, r3, #0, #12
     cfc:	b29a      	uxth	r2, r3
     cfe:	4b13      	ldr	r3, [pc, #76]	; (d4c <chip_vm+0x80c>)
     d00:	805a      	strh	r2, [r3, #2]
     d02:	e274      	b.n	11ee <chip_vm+0xcae>
     d04:	4b11      	ldr	r3, [pc, #68]	; (d4c <chip_vm+0x80c>)
     d06:	795b      	ldrb	r3, [r3, #5]
     d08:	b29b      	uxth	r3, r3
     d0a:	005b      	lsls	r3, r3, #1
     d0c:	b29a      	uxth	r2, r3
     d0e:	4b0f      	ldr	r3, [pc, #60]	; (d4c <chip_vm+0x80c>)
     d10:	7d9b      	ldrb	r3, [r3, #22]
     d12:	021b      	lsls	r3, r3, #8
     d14:	490d      	ldr	r1, [pc, #52]	; (d4c <chip_vm+0x80c>)
     d16:	7dc9      	ldrb	r1, [r1, #23]
     d18:	430b      	orrs	r3, r1
     d1a:	005b      	lsls	r3, r3, #1
     d1c:	b29b      	uxth	r3, r3
     d1e:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d22:	b29b      	uxth	r3, r3
     d24:	4413      	add	r3, r2
     d26:	b29a      	uxth	r2, r3
     d28:	4b08      	ldr	r3, [pc, #32]	; (d4c <chip_vm+0x80c>)
     d2a:	801a      	strh	r2, [r3, #0]
     d2c:	e25f      	b.n	11ee <chip_vm+0xcae>
     d2e:	7bbc      	ldrb	r4, [r7, #14]
     d30:	f7ff fbe4 	bl	4fc <rand>
     d34:	4603      	mov	r3, r0
     d36:	b25a      	sxtb	r2, r3
     d38:	4b04      	ldr	r3, [pc, #16]	; (d4c <chip_vm+0x80c>)
     d3a:	7ddb      	ldrb	r3, [r3, #23]
     d3c:	b25b      	sxtb	r3, r3
     d3e:	4013      	ands	r3, r2
     d40:	b25b      	sxtb	r3, r3
     d42:	b2da      	uxtb	r2, r3
     d44:	4b01      	ldr	r3, [pc, #4]	; (d4c <chip_vm+0x80c>)
     d46:	4423      	add	r3, r4
     d48:	715a      	strb	r2, [r3, #5]
     d4a:	e250      	b.n	11ee <chip_vm+0xcae>
     d4c:	2000015c 	.word	0x2000015c
     d50:	200005fc 	.word	0x200005fc
     d54:	4bd1      	ldr	r3, [pc, #836]	; (109c <chip_vm+0xb5c>)
     d56:	7ddb      	ldrb	r3, [r3, #23]
     d58:	f003 030f 	and.w	r3, r3, #15
     d5c:	73fb      	strb	r3, [r7, #15]
     d5e:	7bfb      	ldrb	r3, [r7, #15]
     d60:	2b00      	cmp	r3, #0
     d62:	d11b      	bne.n	d9c <chip_vm+0x85c>
     d64:	4bcd      	ldr	r3, [pc, #820]	; (109c <chip_vm+0xb5c>)
     d66:	885b      	ldrh	r3, [r3, #2]
     d68:	4acd      	ldr	r2, [pc, #820]	; (10a0 <chip_vm+0xb60>)
     d6a:	2120      	movs	r1, #32
     d6c:	4618      	mov	r0, r3
     d6e:	f7ff fb93 	bl	498 <load_block>
     d72:	7bbb      	ldrb	r3, [r7, #14]
     d74:	4ac9      	ldr	r2, [pc, #804]	; (109c <chip_vm+0xb5c>)
     d76:	4413      	add	r3, r2
     d78:	795b      	ldrb	r3, [r3, #5]
     d7a:	b25b      	sxtb	r3, r3
     d7c:	4618      	mov	r0, r3
     d7e:	7b7b      	ldrb	r3, [r7, #13]
     d80:	4ac6      	ldr	r2, [pc, #792]	; (109c <chip_vm+0xb5c>)
     d82:	4413      	add	r3, r2
     d84:	795b      	ldrb	r3, [r3, #5]
     d86:	b25b      	sxtb	r3, r3
     d88:	4619      	mov	r1, r3
     d8a:	4bc5      	ldr	r3, [pc, #788]	; (10a0 <chip_vm+0xb60>)
     d8c:	2220      	movs	r2, #32
     d8e:	f7ff fb99 	bl	4c4 <put_big_sprite>
     d92:	4603      	mov	r3, r0
     d94:	b2da      	uxtb	r2, r3
     d96:	4bc1      	ldr	r3, [pc, #772]	; (109c <chip_vm+0xb5c>)
     d98:	751a      	strb	r2, [r3, #20]
     d9a:	e228      	b.n	11ee <chip_vm+0xcae>
     d9c:	4bbf      	ldr	r3, [pc, #764]	; (109c <chip_vm+0xb5c>)
     d9e:	885b      	ldrh	r3, [r3, #2]
     da0:	4618      	mov	r0, r3
     da2:	7bfb      	ldrb	r3, [r7, #15]
     da4:	4abe      	ldr	r2, [pc, #760]	; (10a0 <chip_vm+0xb60>)
     da6:	4619      	mov	r1, r3
     da8:	f7ff fb76 	bl	498 <load_block>
     dac:	7bbb      	ldrb	r3, [r7, #14]
     dae:	4abb      	ldr	r2, [pc, #748]	; (109c <chip_vm+0xb5c>)
     db0:	4413      	add	r3, r2
     db2:	795b      	ldrb	r3, [r3, #5]
     db4:	b25b      	sxtb	r3, r3
     db6:	4618      	mov	r0, r3
     db8:	7b7b      	ldrb	r3, [r7, #13]
     dba:	4ab8      	ldr	r2, [pc, #736]	; (109c <chip_vm+0xb5c>)
     dbc:	4413      	add	r3, r2
     dbe:	795b      	ldrb	r3, [r3, #5]
     dc0:	b25b      	sxtb	r3, r3
     dc2:	4619      	mov	r1, r3
     dc4:	7bfa      	ldrb	r2, [r7, #15]
     dc6:	4bb6      	ldr	r3, [pc, #728]	; (10a0 <chip_vm+0xb60>)
     dc8:	9300      	str	r3, [sp, #0]
     dca:	4613      	mov	r3, r2
     dcc:	2208      	movs	r2, #8
     dce:	f001 fb05 	bl	23dc <gfx_sprite>
     dd2:	4603      	mov	r3, r0
     dd4:	b2da      	uxtb	r2, r3
     dd6:	4bb1      	ldr	r3, [pc, #708]	; (109c <chip_vm+0xb5c>)
     dd8:	751a      	strb	r2, [r3, #20]
     dda:	e208      	b.n	11ee <chip_vm+0xcae>
     ddc:	4baf      	ldr	r3, [pc, #700]	; (109c <chip_vm+0xb5c>)
     dde:	7ddb      	ldrb	r3, [r3, #23]
     de0:	2b9e      	cmp	r3, #158	; 0x9e
     de2:	d002      	beq.n	dea <chip_vm+0x8aa>
     de4:	2ba1      	cmp	r3, #161	; 0xa1
     de6:	d011      	beq.n	e0c <chip_vm+0x8cc>
     de8:	e021      	b.n	e2e <chip_vm+0x8ee>
     dea:	7bbb      	ldrb	r3, [r7, #14]
     dec:	4aab      	ldr	r2, [pc, #684]	; (109c <chip_vm+0xb5c>)
     dee:	4413      	add	r3, r2
     df0:	795b      	ldrb	r3, [r3, #5]
     df2:	4618      	mov	r0, r3
     df4:	f000 fd2e 	bl	1854 <btn_query_down>
     df8:	4603      	mov	r3, r0
     dfa:	2b00      	cmp	r3, #0
     dfc:	d019      	beq.n	e32 <chip_vm+0x8f2>
     dfe:	4ba7      	ldr	r3, [pc, #668]	; (109c <chip_vm+0xb5c>)
     e00:	881b      	ldrh	r3, [r3, #0]
     e02:	3302      	adds	r3, #2
     e04:	b29a      	uxth	r2, r3
     e06:	4ba5      	ldr	r3, [pc, #660]	; (109c <chip_vm+0xb5c>)
     e08:	801a      	strh	r2, [r3, #0]
     e0a:	e012      	b.n	e32 <chip_vm+0x8f2>
     e0c:	7bbb      	ldrb	r3, [r7, #14]
     e0e:	4aa3      	ldr	r2, [pc, #652]	; (109c <chip_vm+0xb5c>)
     e10:	4413      	add	r3, r2
     e12:	795b      	ldrb	r3, [r3, #5]
     e14:	4618      	mov	r0, r3
     e16:	f000 fd1d 	bl	1854 <btn_query_down>
     e1a:	4603      	mov	r3, r0
     e1c:	2b00      	cmp	r3, #0
     e1e:	d10a      	bne.n	e36 <chip_vm+0x8f6>
     e20:	4b9e      	ldr	r3, [pc, #632]	; (109c <chip_vm+0xb5c>)
     e22:	881b      	ldrh	r3, [r3, #0]
     e24:	3302      	adds	r3, #2
     e26:	b29a      	uxth	r2, r3
     e28:	4b9c      	ldr	r3, [pc, #624]	; (109c <chip_vm+0xb5c>)
     e2a:	801a      	strh	r2, [r3, #0]
     e2c:	e003      	b.n	e36 <chip_vm+0x8f6>
     e2e:	2302      	movs	r3, #2
     e30:	e1df      	b.n	11f2 <chip_vm+0xcb2>
     e32:	bf00      	nop
     e34:	e1db      	b.n	11ee <chip_vm+0xcae>
     e36:	bf00      	nop
     e38:	e1d9      	b.n	11ee <chip_vm+0xcae>
     e3a:	4b98      	ldr	r3, [pc, #608]	; (109c <chip_vm+0xb5c>)
     e3c:	7ddb      	ldrb	r3, [r3, #23]
     e3e:	2b85      	cmp	r3, #133	; 0x85
     e40:	f200 81ca 	bhi.w	11d8 <chip_vm+0xc98>
     e44:	a201      	add	r2, pc, #4	; (adr r2, e4c <chip_vm+0x90c>)
     e46:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     e4a:	bf00      	nop
     e4c:	000011dd 	.word	0x000011dd
     e50:	000011dd 	.word	0x000011dd
     e54:	000011dd 	.word	0x000011dd
     e58:	000011d9 	.word	0x000011d9
     e5c:	000011d9 	.word	0x000011d9
     e60:	000011d9 	.word	0x000011d9
     e64:	000011d9 	.word	0x000011d9
     e68:	00001065 	.word	0x00001065
     e6c:	000011d9 	.word	0x000011d9
     e70:	000011d9 	.word	0x000011d9
     e74:	00001079 	.word	0x00001079
     e78:	000011d9 	.word	0x000011d9
     e7c:	000011d9 	.word	0x000011d9
     e80:	000011d9 	.word	0x000011d9
     e84:	000011d9 	.word	0x000011d9
     e88:	000011d9 	.word	0x000011d9
     e8c:	000011d9 	.word	0x000011d9
     e90:	000011d9 	.word	0x000011d9
     e94:	000011d9 	.word	0x000011d9
     e98:	000011d9 	.word	0x000011d9
     e9c:	000011d9 	.word	0x000011d9
     ea0:	0000108b 	.word	0x0000108b
     ea4:	000011d9 	.word	0x000011d9
     ea8:	000011d9 	.word	0x000011d9
     eac:	000010a9 	.word	0x000010a9
     eb0:	000011d9 	.word	0x000011d9
     eb4:	000011d9 	.word	0x000011d9
     eb8:	000011d9 	.word	0x000011d9
     ebc:	000011d9 	.word	0x000011d9
     ec0:	000011d9 	.word	0x000011d9
     ec4:	000010bf 	.word	0x000010bf
     ec8:	000011d9 	.word	0x000011d9
     ecc:	000011d9 	.word	0x000011d9
     ed0:	000011d9 	.word	0x000011d9
     ed4:	000011d9 	.word	0x000011d9
     ed8:	000011d9 	.word	0x000011d9
     edc:	000011d9 	.word	0x000011d9
     ee0:	000011d9 	.word	0x000011d9
     ee4:	000011d9 	.word	0x000011d9
     ee8:	000011d9 	.word	0x000011d9
     eec:	000011d9 	.word	0x000011d9
     ef0:	000010d7 	.word	0x000010d7
     ef4:	000011d9 	.word	0x000011d9
     ef8:	000011d9 	.word	0x000011d9
     efc:	000011d9 	.word	0x000011d9
     f00:	000011d9 	.word	0x000011d9
     f04:	000011d9 	.word	0x000011d9
     f08:	000011d9 	.word	0x000011d9
     f0c:	000010ff 	.word	0x000010ff
     f10:	000011d9 	.word	0x000011d9
     f14:	000011d9 	.word	0x000011d9
     f18:	00001127 	.word	0x00001127
     f1c:	000011d9 	.word	0x000011d9
     f20:	000011d9 	.word	0x000011d9
     f24:	000011d9 	.word	0x000011d9
     f28:	000011d9 	.word	0x000011d9
     f2c:	000011d9 	.word	0x000011d9
     f30:	000011d9 	.word	0x000011d9
     f34:	000011d9 	.word	0x000011d9
     f38:	000011d9 	.word	0x000011d9
     f3c:	000011d9 	.word	0x000011d9
     f40:	000011d9 	.word	0x000011d9
     f44:	000011d9 	.word	0x000011d9
     f48:	000011d9 	.word	0x000011d9
     f4c:	000011d9 	.word	0x000011d9
     f50:	000011d9 	.word	0x000011d9
     f54:	000011d9 	.word	0x000011d9
     f58:	000011d9 	.word	0x000011d9
     f5c:	000011d9 	.word	0x000011d9
     f60:	000011d9 	.word	0x000011d9
     f64:	000011d9 	.word	0x000011d9
     f68:	000011d9 	.word	0x000011d9
     f6c:	000011d9 	.word	0x000011d9
     f70:	000011d9 	.word	0x000011d9
     f74:	000011d9 	.word	0x000011d9
     f78:	000011d9 	.word	0x000011d9
     f7c:	000011d9 	.word	0x000011d9
     f80:	000011d9 	.word	0x000011d9
     f84:	000011d9 	.word	0x000011d9
     f88:	000011d9 	.word	0x000011d9
     f8c:	000011d9 	.word	0x000011d9
     f90:	000011d9 	.word	0x000011d9
     f94:	000011d9 	.word	0x000011d9
     f98:	000011d9 	.word	0x000011d9
     f9c:	000011d9 	.word	0x000011d9
     fa0:	00001191 	.word	0x00001191
     fa4:	000011d9 	.word	0x000011d9
     fa8:	000011d9 	.word	0x000011d9
     fac:	000011d9 	.word	0x000011d9
     fb0:	000011d9 	.word	0x000011d9
     fb4:	000011d9 	.word	0x000011d9
     fb8:	000011d9 	.word	0x000011d9
     fbc:	000011d9 	.word	0x000011d9
     fc0:	000011d9 	.word	0x000011d9
     fc4:	000011d9 	.word	0x000011d9
     fc8:	000011d9 	.word	0x000011d9
     fcc:	000011d9 	.word	0x000011d9
     fd0:	000011d9 	.word	0x000011d9
     fd4:	000011d9 	.word	0x000011d9
     fd8:	000011d9 	.word	0x000011d9
     fdc:	000011d9 	.word	0x000011d9
     fe0:	000011a5 	.word	0x000011a5
     fe4:	000011d9 	.word	0x000011d9
     fe8:	000011d9 	.word	0x000011d9
     fec:	000011d9 	.word	0x000011d9
     ff0:	000011d9 	.word	0x000011d9
     ff4:	000011d9 	.word	0x000011d9
     ff8:	000011d9 	.word	0x000011d9
     ffc:	000011d9 	.word	0x000011d9
    1000:	000011d9 	.word	0x000011d9
    1004:	000011d9 	.word	0x000011d9
    1008:	000011d9 	.word	0x000011d9
    100c:	000011d9 	.word	0x000011d9
    1010:	000011d9 	.word	0x000011d9
    1014:	000011d9 	.word	0x000011d9
    1018:	000011d9 	.word	0x000011d9
    101c:	000011d9 	.word	0x000011d9
    1020:	000011b9 	.word	0x000011b9
    1024:	000011d9 	.word	0x000011d9
    1028:	000011d9 	.word	0x000011d9
    102c:	000011d9 	.word	0x000011d9
    1030:	000011d9 	.word	0x000011d9
    1034:	000011d9 	.word	0x000011d9
    1038:	000011d9 	.word	0x000011d9
    103c:	000011d9 	.word	0x000011d9
    1040:	000011d9 	.word	0x000011d9
    1044:	000011d9 	.word	0x000011d9
    1048:	000011d9 	.word	0x000011d9
    104c:	000011d9 	.word	0x000011d9
    1050:	000011d9 	.word	0x000011d9
    1054:	000011d9 	.word	0x000011d9
    1058:	000011d9 	.word	0x000011d9
    105c:	000011d9 	.word	0x000011d9
    1060:	000011c9 	.word	0x000011c9
    1064:	7bbb      	ldrb	r3, [r7, #14]
    1066:	4a0f      	ldr	r2, [pc, #60]	; (10a4 <chip_vm+0xb64>)
    1068:	8812      	ldrh	r2, [r2, #0]
    106a:	b292      	uxth	r2, r2
    106c:	b2d1      	uxtb	r1, r2
    106e:	4a0b      	ldr	r2, [pc, #44]	; (109c <chip_vm+0xb5c>)
    1070:	4413      	add	r3, r2
    1072:	460a      	mov	r2, r1
    1074:	715a      	strb	r2, [r3, #5]
    1076:	e0b2      	b.n	11de <chip_vm+0xc9e>
    1078:	7bbc      	ldrb	r4, [r7, #14]
    107a:	f000 fc57 	bl	192c <btn_wait_any>
    107e:	4603      	mov	r3, r0
    1080:	461a      	mov	r2, r3
    1082:	4b06      	ldr	r3, [pc, #24]	; (109c <chip_vm+0xb5c>)
    1084:	4423      	add	r3, r4
    1086:	715a      	strb	r2, [r3, #5]
    1088:	e0a9      	b.n	11de <chip_vm+0xc9e>
    108a:	7bbb      	ldrb	r3, [r7, #14]
    108c:	4a03      	ldr	r2, [pc, #12]	; (109c <chip_vm+0xb5c>)
    108e:	4413      	add	r3, r2
    1090:	795b      	ldrb	r3, [r3, #5]
    1092:	b29a      	uxth	r2, r3
    1094:	4b03      	ldr	r3, [pc, #12]	; (10a4 <chip_vm+0xb64>)
    1096:	801a      	strh	r2, [r3, #0]
    1098:	e0a1      	b.n	11de <chip_vm+0xc9e>
    109a:	bf00      	nop
    109c:	2000015c 	.word	0x2000015c
    10a0:	200001b4 	.word	0x200001b4
    10a4:	20004d88 	.word	0x20004d88
    10a8:	7bbb      	ldrb	r3, [r7, #14]
    10aa:	4a54      	ldr	r2, [pc, #336]	; (11fc <chip_vm+0xcbc>)
    10ac:	4413      	add	r3, r2
    10ae:	795b      	ldrb	r3, [r3, #5]
    10b0:	b29b      	uxth	r3, r3
    10b2:	4619      	mov	r1, r3
    10b4:	f240 200b 	movw	r0, #523	; 0x20b
    10b8:	f002 ff1e 	bl	3ef8 <tone>
    10bc:	e08f      	b.n	11de <chip_vm+0xc9e>
    10be:	4b4f      	ldr	r3, [pc, #316]	; (11fc <chip_vm+0xcbc>)
    10c0:	885a      	ldrh	r2, [r3, #2]
    10c2:	7bbb      	ldrb	r3, [r7, #14]
    10c4:	494d      	ldr	r1, [pc, #308]	; (11fc <chip_vm+0xcbc>)
    10c6:	440b      	add	r3, r1
    10c8:	795b      	ldrb	r3, [r3, #5]
    10ca:	b29b      	uxth	r3, r3
    10cc:	4413      	add	r3, r2
    10ce:	b29a      	uxth	r2, r3
    10d0:	4b4a      	ldr	r3, [pc, #296]	; (11fc <chip_vm+0xcbc>)
    10d2:	805a      	strh	r2, [r3, #2]
    10d4:	e083      	b.n	11de <chip_vm+0xc9e>
    10d6:	7bbb      	ldrb	r3, [r7, #14]
    10d8:	4a48      	ldr	r2, [pc, #288]	; (11fc <chip_vm+0xcbc>)
    10da:	4413      	add	r3, r2
    10dc:	795b      	ldrb	r3, [r3, #5]
    10de:	b29b      	uxth	r3, r3
    10e0:	461a      	mov	r2, r3
    10e2:	0052      	lsls	r2, r2, #1
    10e4:	4413      	add	r3, r2
    10e6:	005b      	lsls	r3, r3, #1
    10e8:	b29a      	uxth	r2, r3
    10ea:	4b45      	ldr	r3, [pc, #276]	; (1200 <chip_vm+0xcc0>)
    10ec:	b29b      	uxth	r3, r3
    10ee:	4413      	add	r3, r2
    10f0:	b29a      	uxth	r2, r3
    10f2:	4b42      	ldr	r3, [pc, #264]	; (11fc <chip_vm+0xcbc>)
    10f4:	805a      	strh	r2, [r3, #2]
    10f6:	2000      	movs	r0, #0
    10f8:	f003 f9e2 	bl	44c0 <select_font>
    10fc:	e06f      	b.n	11de <chip_vm+0xc9e>
    10fe:	7bbb      	ldrb	r3, [r7, #14]
    1100:	4a3e      	ldr	r2, [pc, #248]	; (11fc <chip_vm+0xcbc>)
    1102:	4413      	add	r3, r2
    1104:	795b      	ldrb	r3, [r3, #5]
    1106:	b29b      	uxth	r3, r3
    1108:	461a      	mov	r2, r3
    110a:	0092      	lsls	r2, r2, #2
    110c:	4413      	add	r3, r2
    110e:	005b      	lsls	r3, r3, #1
    1110:	b29a      	uxth	r2, r3
    1112:	4b3c      	ldr	r3, [pc, #240]	; (1204 <chip_vm+0xcc4>)
    1114:	b29b      	uxth	r3, r3
    1116:	4413      	add	r3, r2
    1118:	b29a      	uxth	r2, r3
    111a:	4b38      	ldr	r3, [pc, #224]	; (11fc <chip_vm+0xcbc>)
    111c:	805a      	strh	r2, [r3, #2]
    111e:	2001      	movs	r0, #1
    1120:	f003 f9ce 	bl	44c0 <select_font>
    1124:	e05b      	b.n	11de <chip_vm+0xc9e>
    1126:	7bbb      	ldrb	r3, [r7, #14]
    1128:	4a34      	ldr	r2, [pc, #208]	; (11fc <chip_vm+0xcbc>)
    112a:	4413      	add	r3, r2
    112c:	795b      	ldrb	r3, [r3, #5]
    112e:	73fb      	strb	r3, [r7, #15]
    1130:	7bfa      	ldrb	r2, [r7, #15]
    1132:	4b35      	ldr	r3, [pc, #212]	; (1208 <chip_vm+0xcc8>)
    1134:	fba3 1302 	umull	r1, r3, r3, r2
    1138:	08d9      	lsrs	r1, r3, #3
    113a:	460b      	mov	r3, r1
    113c:	009b      	lsls	r3, r3, #2
    113e:	440b      	add	r3, r1
    1140:	005b      	lsls	r3, r3, #1
    1142:	1ad3      	subs	r3, r2, r3
    1144:	b2da      	uxtb	r2, r3
    1146:	4b31      	ldr	r3, [pc, #196]	; (120c <chip_vm+0xccc>)
    1148:	709a      	strb	r2, [r3, #2]
    114a:	7bfb      	ldrb	r3, [r7, #15]
    114c:	4a2e      	ldr	r2, [pc, #184]	; (1208 <chip_vm+0xcc8>)
    114e:	fba2 2303 	umull	r2, r3, r2, r3
    1152:	08db      	lsrs	r3, r3, #3
    1154:	73fb      	strb	r3, [r7, #15]
    1156:	7bfa      	ldrb	r2, [r7, #15]
    1158:	4b2b      	ldr	r3, [pc, #172]	; (1208 <chip_vm+0xcc8>)
    115a:	fba3 1302 	umull	r1, r3, r3, r2
    115e:	08d9      	lsrs	r1, r3, #3
    1160:	460b      	mov	r3, r1
    1162:	009b      	lsls	r3, r3, #2
    1164:	440b      	add	r3, r1
    1166:	005b      	lsls	r3, r3, #1
    1168:	1ad3      	subs	r3, r2, r3
    116a:	b2da      	uxtb	r2, r3
    116c:	4b27      	ldr	r3, [pc, #156]	; (120c <chip_vm+0xccc>)
    116e:	705a      	strb	r2, [r3, #1]
    1170:	7bfb      	ldrb	r3, [r7, #15]
    1172:	4a25      	ldr	r2, [pc, #148]	; (1208 <chip_vm+0xcc8>)
    1174:	fba2 2303 	umull	r2, r3, r2, r3
    1178:	08db      	lsrs	r3, r3, #3
    117a:	b2da      	uxtb	r2, r3
    117c:	4b23      	ldr	r3, [pc, #140]	; (120c <chip_vm+0xccc>)
    117e:	701a      	strb	r2, [r3, #0]
    1180:	4b1e      	ldr	r3, [pc, #120]	; (11fc <chip_vm+0xcbc>)
    1182:	885b      	ldrh	r3, [r3, #2]
    1184:	4a21      	ldr	r2, [pc, #132]	; (120c <chip_vm+0xccc>)
    1186:	2103      	movs	r1, #3
    1188:	4618      	mov	r0, r3
    118a:	f7ff f990 	bl	4ae <store_block>
    118e:	e026      	b.n	11de <chip_vm+0xc9e>
    1190:	4b1a      	ldr	r3, [pc, #104]	; (11fc <chip_vm+0xcbc>)
    1192:	885b      	ldrh	r3, [r3, #2]
    1194:	4618      	mov	r0, r3
    1196:	7bbb      	ldrb	r3, [r7, #14]
    1198:	3301      	adds	r3, #1
    119a:	4a1d      	ldr	r2, [pc, #116]	; (1210 <chip_vm+0xcd0>)
    119c:	4619      	mov	r1, r3
    119e:	f7ff f986 	bl	4ae <store_block>
    11a2:	e01c      	b.n	11de <chip_vm+0xc9e>
    11a4:	4b15      	ldr	r3, [pc, #84]	; (11fc <chip_vm+0xcbc>)
    11a6:	885b      	ldrh	r3, [r3, #2]
    11a8:	4618      	mov	r0, r3
    11aa:	7bbb      	ldrb	r3, [r7, #14]
    11ac:	3301      	adds	r3, #1
    11ae:	4a18      	ldr	r2, [pc, #96]	; (1210 <chip_vm+0xcd0>)
    11b0:	4619      	mov	r1, r3
    11b2:	f7ff f971 	bl	498 <load_block>
    11b6:	e012      	b.n	11de <chip_vm+0xc9e>
    11b8:	7bfb      	ldrb	r3, [r7, #15]
    11ba:	461a      	mov	r2, r3
    11bc:	4914      	ldr	r1, [pc, #80]	; (1210 <chip_vm+0xcd0>)
    11be:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
    11c2:	f000 fa4a 	bl	165a <flash_write_block>
    11c6:	e00a      	b.n	11de <chip_vm+0xc9e>
    11c8:	7bfb      	ldrb	r3, [r7, #15]
    11ca:	461a      	mov	r2, r3
    11cc:	4910      	ldr	r1, [pc, #64]	; (1210 <chip_vm+0xcd0>)
    11ce:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
    11d2:	f000 fa23 	bl	161c <flash_read_block>
    11d6:	e002      	b.n	11de <chip_vm+0xc9e>
    11d8:	2302      	movs	r3, #2
    11da:	e00a      	b.n	11f2 <chip_vm+0xcb2>
    11dc:	bf00      	nop
    11de:	e006      	b.n	11ee <chip_vm+0xcae>
    11e0:	bf00      	nop
    11e2:	f7ff b9bb 	b.w	55c <chip_vm+0x1c>
    11e6:	bf00      	nop
    11e8:	f7ff b9b8 	b.w	55c <chip_vm+0x1c>
    11ec:	bf00      	nop
    11ee:	f7ff b9b5 	b.w	55c <chip_vm+0x1c>
    11f2:	4618      	mov	r0, r3
    11f4:	3714      	adds	r7, #20
    11f6:	46bd      	mov	sp, r7
    11f8:	bd90      	pop	{r4, r7, pc}
    11fa:	bf00      	nop
    11fc:	2000015c 	.word	0x2000015c
    1200:	00005128 	.word	0x00005128
    1204:	00005188 	.word	0x00005188
    1208:	cccccccd 	.word	0xcccccccd
    120c:	200001b4 	.word	0x200001b4
    1210:	20000161 	.word	0x20000161

00001214 <flash_enable>:
    1214:	b480      	push	{r7}
    1216:	af00      	add	r7, sp, #0
    1218:	4b14      	ldr	r3, [pc, #80]	; (126c <flash_enable+0x58>)
    121a:	2200      	movs	r2, #0
    121c:	701a      	strb	r2, [r3, #0]
    121e:	4b14      	ldr	r3, [pc, #80]	; (1270 <flash_enable+0x5c>)
    1220:	681b      	ldr	r3, [r3, #0]
    1222:	f003 0301 	and.w	r3, r3, #1
    1226:	2b00      	cmp	r3, #0
    1228:	d10c      	bne.n	1244 <flash_enable+0x30>
    122a:	4a11      	ldr	r2, [pc, #68]	; (1270 <flash_enable+0x5c>)
    122c:	4b10      	ldr	r3, [pc, #64]	; (1270 <flash_enable+0x5c>)
    122e:	681b      	ldr	r3, [r3, #0]
    1230:	f043 0301 	orr.w	r3, r3, #1
    1234:	6013      	str	r3, [r2, #0]
    1236:	bf00      	nop
    1238:	4b0d      	ldr	r3, [pc, #52]	; (1270 <flash_enable+0x5c>)
    123a:	681b      	ldr	r3, [r3, #0]
    123c:	f003 0302 	and.w	r3, r3, #2
    1240:	2b00      	cmp	r3, #0
    1242:	d0f9      	beq.n	1238 <flash_enable+0x24>
    1244:	4b0b      	ldr	r3, [pc, #44]	; (1274 <flash_enable+0x60>)
    1246:	4a0c      	ldr	r2, [pc, #48]	; (1278 <flash_enable+0x64>)
    1248:	605a      	str	r2, [r3, #4]
    124a:	4b0a      	ldr	r3, [pc, #40]	; (1274 <flash_enable+0x60>)
    124c:	4a0b      	ldr	r2, [pc, #44]	; (127c <flash_enable+0x68>)
    124e:	605a      	str	r2, [r3, #4]
    1250:	4b08      	ldr	r3, [pc, #32]	; (1274 <flash_enable+0x60>)
    1252:	691b      	ldr	r3, [r3, #16]
    1254:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1258:	2b00      	cmp	r3, #0
    125a:	bf0c      	ite	eq
    125c:	2301      	moveq	r3, #1
    125e:	2300      	movne	r3, #0
    1260:	b2db      	uxtb	r3, r3
    1262:	4618      	mov	r0, r3
    1264:	46bd      	mov	sp, r7
    1266:	bc80      	pop	{r7}
    1268:	4770      	bx	lr
    126a:	bf00      	nop
    126c:	200001d4 	.word	0x200001d4
    1270:	40021000 	.word	0x40021000
    1274:	40022000 	.word	0x40022000
    1278:	45670123 	.word	0x45670123
    127c:	cdef89ab 	.word	0xcdef89ab

00001280 <read_byte>:
    1280:	b480      	push	{r7}
    1282:	b085      	sub	sp, #20
    1284:	af00      	add	r7, sp, #0
    1286:	6078      	str	r0, [r7, #4]
    1288:	687b      	ldr	r3, [r7, #4]
    128a:	0a9b      	lsrs	r3, r3, #10
    128c:	4a0a      	ldr	r2, [pc, #40]	; (12b8 <read_byte+0x38>)
    128e:	7852      	ldrb	r2, [r2, #1]
    1290:	4293      	cmp	r3, r2
    1292:	d109      	bne.n	12a8 <read_byte+0x28>
    1294:	687b      	ldr	r3, [r7, #4]
    1296:	f3c3 0309 	ubfx	r3, r3, #0, #10
    129a:	60fb      	str	r3, [r7, #12]
    129c:	4a06      	ldr	r2, [pc, #24]	; (12b8 <read_byte+0x38>)
    129e:	68fb      	ldr	r3, [r7, #12]
    12a0:	4413      	add	r3, r2
    12a2:	3302      	adds	r3, #2
    12a4:	781b      	ldrb	r3, [r3, #0]
    12a6:	e001      	b.n	12ac <read_byte+0x2c>
    12a8:	687b      	ldr	r3, [r7, #4]
    12aa:	781b      	ldrb	r3, [r3, #0]
    12ac:	4618      	mov	r0, r3
    12ae:	3714      	adds	r7, #20
    12b0:	46bd      	mov	sp, r7
    12b2:	bc80      	pop	{r7}
    12b4:	4770      	bx	lr
    12b6:	bf00      	nop
    12b8:	200001d4 	.word	0x200001d4

000012bc <flash_write_hword>:
    12bc:	b480      	push	{r7}
    12be:	b083      	sub	sp, #12
    12c0:	af00      	add	r7, sp, #0
    12c2:	6078      	str	r0, [r7, #4]
    12c4:	460b      	mov	r3, r1
    12c6:	807b      	strh	r3, [r7, #2]
    12c8:	bf00      	nop
    12ca:	4b16      	ldr	r3, [pc, #88]	; (1324 <flash_write_hword+0x68>)
    12cc:	68db      	ldr	r3, [r3, #12]
    12ce:	f003 0301 	and.w	r3, r3, #1
    12d2:	2b00      	cmp	r3, #0
    12d4:	d1f9      	bne.n	12ca <flash_write_hword+0xe>
    12d6:	4a13      	ldr	r2, [pc, #76]	; (1324 <flash_write_hword+0x68>)
    12d8:	4b12      	ldr	r3, [pc, #72]	; (1324 <flash_write_hword+0x68>)
    12da:	68db      	ldr	r3, [r3, #12]
    12dc:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    12e0:	60d3      	str	r3, [r2, #12]
    12e2:	4b10      	ldr	r3, [pc, #64]	; (1324 <flash_write_hword+0x68>)
    12e4:	2201      	movs	r2, #1
    12e6:	611a      	str	r2, [r3, #16]
    12e8:	687b      	ldr	r3, [r7, #4]
    12ea:	887a      	ldrh	r2, [r7, #2]
    12ec:	801a      	strh	r2, [r3, #0]
    12ee:	bf00      	nop
    12f0:	4b0c      	ldr	r3, [pc, #48]	; (1324 <flash_write_hword+0x68>)
    12f2:	68db      	ldr	r3, [r3, #12]
    12f4:	f003 0301 	and.w	r3, r3, #1
    12f8:	2b00      	cmp	r3, #0
    12fa:	d005      	beq.n	1308 <flash_write_hword+0x4c>
    12fc:	4b09      	ldr	r3, [pc, #36]	; (1324 <flash_write_hword+0x68>)
    12fe:	68db      	ldr	r3, [r3, #12]
    1300:	f003 0320 	and.w	r3, r3, #32
    1304:	2b00      	cmp	r3, #0
    1306:	d0f3      	beq.n	12f0 <flash_write_hword+0x34>
    1308:	687b      	ldr	r3, [r7, #4]
    130a:	881b      	ldrh	r3, [r3, #0]
    130c:	887a      	ldrh	r2, [r7, #2]
    130e:	429a      	cmp	r2, r3
    1310:	bf0c      	ite	eq
    1312:	2301      	moveq	r3, #1
    1314:	2300      	movne	r3, #0
    1316:	b2db      	uxtb	r3, r3
    1318:	4618      	mov	r0, r3
    131a:	370c      	adds	r7, #12
    131c:	46bd      	mov	sp, r7
    131e:	bc80      	pop	{r7}
    1320:	4770      	bx	lr
    1322:	bf00      	nop
    1324:	40022000 	.word	0x40022000

00001328 <write_back_buffer>:
    1328:	b580      	push	{r7, lr}
    132a:	b084      	sub	sp, #16
    132c:	af00      	add	r7, sp, #0
    132e:	4b1e      	ldr	r3, [pc, #120]	; (13a8 <write_back_buffer+0x80>)
    1330:	785b      	ldrb	r3, [r3, #1]
    1332:	029b      	lsls	r3, r3, #10
    1334:	60bb      	str	r3, [r7, #8]
    1336:	4b1d      	ldr	r3, [pc, #116]	; (13ac <write_back_buffer+0x84>)
    1338:	607b      	str	r3, [r7, #4]
    133a:	2300      	movs	r3, #0
    133c:	60fb      	str	r3, [r7, #12]
    133e:	e017      	b.n	1370 <write_back_buffer+0x48>
    1340:	687b      	ldr	r3, [r7, #4]
    1342:	881b      	ldrh	r3, [r3, #0]
    1344:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1348:	4293      	cmp	r3, r2
    134a:	d008      	beq.n	135e <write_back_buffer+0x36>
    134c:	687b      	ldr	r3, [r7, #4]
    134e:	881b      	ldrh	r3, [r3, #0]
    1350:	4619      	mov	r1, r3
    1352:	68b8      	ldr	r0, [r7, #8]
    1354:	f7ff ffb2 	bl	12bc <flash_write_hword>
    1358:	4603      	mov	r3, r0
    135a:	2b00      	cmp	r3, #0
    135c:	d00d      	beq.n	137a <write_back_buffer+0x52>
    135e:	68bb      	ldr	r3, [r7, #8]
    1360:	3302      	adds	r3, #2
    1362:	60bb      	str	r3, [r7, #8]
    1364:	687b      	ldr	r3, [r7, #4]
    1366:	3302      	adds	r3, #2
    1368:	607b      	str	r3, [r7, #4]
    136a:	68fb      	ldr	r3, [r7, #12]
    136c:	3301      	adds	r3, #1
    136e:	60fb      	str	r3, [r7, #12]
    1370:	68fb      	ldr	r3, [r7, #12]
    1372:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1376:	dbe3      	blt.n	1340 <write_back_buffer+0x18>
    1378:	e000      	b.n	137c <write_back_buffer+0x54>
    137a:	bf00      	nop
    137c:	68fb      	ldr	r3, [r7, #12]
    137e:	2b00      	cmp	r3, #0
    1380:	dd06      	ble.n	1390 <write_back_buffer+0x68>
    1382:	4b09      	ldr	r3, [pc, #36]	; (13a8 <write_back_buffer+0x80>)
    1384:	781b      	ldrb	r3, [r3, #0]
    1386:	f023 0304 	bic.w	r3, r3, #4
    138a:	b2da      	uxtb	r2, r3
    138c:	4b06      	ldr	r3, [pc, #24]	; (13a8 <write_back_buffer+0x80>)
    138e:	701a      	strb	r2, [r3, #0]
    1390:	68fb      	ldr	r3, [r7, #12]
    1392:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1396:	d101      	bne.n	139c <write_back_buffer+0x74>
    1398:	2301      	movs	r3, #1
    139a:	e000      	b.n	139e <write_back_buffer+0x76>
    139c:	2300      	movs	r3, #0
    139e:	4618      	mov	r0, r3
    13a0:	3710      	adds	r7, #16
    13a2:	46bd      	mov	sp, r7
    13a4:	bd80      	pop	{r7, pc}
    13a6:	bf00      	nop
    13a8:	200001d4 	.word	0x200001d4
    13ac:	200001d6 	.word	0x200001d6

000013b0 <load_row>:
    13b0:	b480      	push	{r7}
    13b2:	b087      	sub	sp, #28
    13b4:	af00      	add	r7, sp, #0
    13b6:	6078      	str	r0, [r7, #4]
    13b8:	687b      	ldr	r3, [r7, #4]
    13ba:	029b      	lsls	r3, r3, #10
    13bc:	617b      	str	r3, [r7, #20]
    13be:	4b15      	ldr	r3, [pc, #84]	; (1414 <load_row+0x64>)
    13c0:	613b      	str	r3, [r7, #16]
    13c2:	2300      	movs	r3, #0
    13c4:	60fb      	str	r3, [r7, #12]
    13c6:	e00a      	b.n	13de <load_row+0x2e>
    13c8:	693b      	ldr	r3, [r7, #16]
    13ca:	1c9a      	adds	r2, r3, #2
    13cc:	613a      	str	r2, [r7, #16]
    13ce:	697a      	ldr	r2, [r7, #20]
    13d0:	1c91      	adds	r1, r2, #2
    13d2:	6179      	str	r1, [r7, #20]
    13d4:	8812      	ldrh	r2, [r2, #0]
    13d6:	801a      	strh	r2, [r3, #0]
    13d8:	68fb      	ldr	r3, [r7, #12]
    13da:	3301      	adds	r3, #1
    13dc:	60fb      	str	r3, [r7, #12]
    13de:	68fb      	ldr	r3, [r7, #12]
    13e0:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    13e4:	dbf0      	blt.n	13c8 <load_row+0x18>
    13e6:	687b      	ldr	r3, [r7, #4]
    13e8:	b2da      	uxtb	r2, r3
    13ea:	4b0b      	ldr	r3, [pc, #44]	; (1418 <load_row+0x68>)
    13ec:	705a      	strb	r2, [r3, #1]
    13ee:	4b0a      	ldr	r3, [pc, #40]	; (1418 <load_row+0x68>)
    13f0:	781b      	ldrb	r3, [r3, #0]
    13f2:	f023 0301 	bic.w	r3, r3, #1
    13f6:	b2da      	uxtb	r2, r3
    13f8:	4b07      	ldr	r3, [pc, #28]	; (1418 <load_row+0x68>)
    13fa:	701a      	strb	r2, [r3, #0]
    13fc:	4b06      	ldr	r3, [pc, #24]	; (1418 <load_row+0x68>)
    13fe:	781b      	ldrb	r3, [r3, #0]
    1400:	f043 0302 	orr.w	r3, r3, #2
    1404:	b2da      	uxtb	r2, r3
    1406:	4b04      	ldr	r3, [pc, #16]	; (1418 <load_row+0x68>)
    1408:	701a      	strb	r2, [r3, #0]
    140a:	bf00      	nop
    140c:	371c      	adds	r7, #28
    140e:	46bd      	mov	sp, r7
    1410:	bc80      	pop	{r7}
    1412:	4770      	bx	lr
    1414:	200001d6 	.word	0x200001d6
    1418:	200001d4 	.word	0x200001d4

0000141c <is_erased>:
    141c:	b480      	push	{r7}
    141e:	b085      	sub	sp, #20
    1420:	af00      	add	r7, sp, #0
    1422:	6078      	str	r0, [r7, #4]
    1424:	687b      	ldr	r3, [r7, #4]
    1426:	029b      	lsls	r3, r3, #10
    1428:	60fb      	str	r3, [r7, #12]
    142a:	2300      	movs	r3, #0
    142c:	60bb      	str	r3, [r7, #8]
    142e:	e00c      	b.n	144a <is_erased+0x2e>
    1430:	68fb      	ldr	r3, [r7, #12]
    1432:	1c9a      	adds	r2, r3, #2
    1434:	60fa      	str	r2, [r7, #12]
    1436:	881b      	ldrh	r3, [r3, #0]
    1438:	f64f 72ff 	movw	r2, #65535	; 0xffff
    143c:	4293      	cmp	r3, r2
    143e:	d001      	beq.n	1444 <is_erased+0x28>
    1440:	2300      	movs	r3, #0
    1442:	e008      	b.n	1456 <is_erased+0x3a>
    1444:	68bb      	ldr	r3, [r7, #8]
    1446:	3301      	adds	r3, #1
    1448:	60bb      	str	r3, [r7, #8]
    144a:	68bb      	ldr	r3, [r7, #8]
    144c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1450:	dbee      	blt.n	1430 <is_erased+0x14>
    1452:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1456:	4618      	mov	r0, r3
    1458:	3714      	adds	r7, #20
    145a:	46bd      	mov	sp, r7
    145c:	bc80      	pop	{r7}
    145e:	4770      	bx	lr

00001460 <flash_erase_row>:
    1460:	b580      	push	{r7, lr}
    1462:	b086      	sub	sp, #24
    1464:	af00      	add	r7, sp, #0
    1466:	6078      	str	r0, [r7, #4]
    1468:	687b      	ldr	r3, [r7, #4]
    146a:	2b3f      	cmp	r3, #63	; 0x3f
    146c:	d801      	bhi.n	1472 <flash_erase_row+0x12>
    146e:	2300      	movs	r3, #0
    1470:	e052      	b.n	1518 <flash_erase_row+0xb8>
    1472:	6878      	ldr	r0, [r7, #4]
    1474:	f7ff ffd2 	bl	141c <is_erased>
    1478:	4603      	mov	r3, r0
    147a:	2b00      	cmp	r3, #0
    147c:	d001      	beq.n	1482 <flash_erase_row+0x22>
    147e:	2301      	movs	r3, #1
    1480:	e04a      	b.n	1518 <flash_erase_row+0xb8>
    1482:	687b      	ldr	r3, [r7, #4]
    1484:	029b      	lsls	r3, r3, #10
    1486:	617b      	str	r3, [r7, #20]
    1488:	4b25      	ldr	r3, [pc, #148]	; (1520 <flash_erase_row+0xc0>)
    148a:	691b      	ldr	r3, [r3, #16]
    148c:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1490:	2b00      	cmp	r3, #0
    1492:	d001      	beq.n	1498 <flash_erase_row+0x38>
    1494:	2300      	movs	r3, #0
    1496:	e03f      	b.n	1518 <flash_erase_row+0xb8>
    1498:	4a21      	ldr	r2, [pc, #132]	; (1520 <flash_erase_row+0xc0>)
    149a:	4b21      	ldr	r3, [pc, #132]	; (1520 <flash_erase_row+0xc0>)
    149c:	68db      	ldr	r3, [r3, #12]
    149e:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    14a2:	60d3      	str	r3, [r2, #12]
    14a4:	4b1e      	ldr	r3, [pc, #120]	; (1520 <flash_erase_row+0xc0>)
    14a6:	2202      	movs	r2, #2
    14a8:	611a      	str	r2, [r3, #16]
    14aa:	4a1d      	ldr	r2, [pc, #116]	; (1520 <flash_erase_row+0xc0>)
    14ac:	697b      	ldr	r3, [r7, #20]
    14ae:	6153      	str	r3, [r2, #20]
    14b0:	4a1b      	ldr	r2, [pc, #108]	; (1520 <flash_erase_row+0xc0>)
    14b2:	4b1b      	ldr	r3, [pc, #108]	; (1520 <flash_erase_row+0xc0>)
    14b4:	691b      	ldr	r3, [r3, #16]
    14b6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    14ba:	6113      	str	r3, [r2, #16]
    14bc:	bf00      	nop
    14be:	4b18      	ldr	r3, [pc, #96]	; (1520 <flash_erase_row+0xc0>)
    14c0:	68db      	ldr	r3, [r3, #12]
    14c2:	f003 0301 	and.w	r3, r3, #1
    14c6:	2b00      	cmp	r3, #0
    14c8:	d005      	beq.n	14d6 <flash_erase_row+0x76>
    14ca:	4b15      	ldr	r3, [pc, #84]	; (1520 <flash_erase_row+0xc0>)
    14cc:	68db      	ldr	r3, [r3, #12]
    14ce:	f003 0320 	and.w	r3, r3, #32
    14d2:	2b00      	cmp	r3, #0
    14d4:	d0f3      	beq.n	14be <flash_erase_row+0x5e>
    14d6:	687b      	ldr	r3, [r7, #4]
    14d8:	029b      	lsls	r3, r3, #10
    14da:	617b      	str	r3, [r7, #20]
    14dc:	2300      	movs	r3, #0
    14de:	60fb      	str	r3, [r7, #12]
    14e0:	e00c      	b.n	14fc <flash_erase_row+0x9c>
    14e2:	697b      	ldr	r3, [r7, #20]
    14e4:	1c9a      	adds	r2, r3, #2
    14e6:	617a      	str	r2, [r7, #20]
    14e8:	881b      	ldrh	r3, [r3, #0]
    14ea:	827b      	strh	r3, [r7, #18]
    14ec:	8a7b      	ldrh	r3, [r7, #18]
    14ee:	f64f 72ff 	movw	r2, #65535	; 0xffff
    14f2:	4293      	cmp	r3, r2
    14f4:	d107      	bne.n	1506 <flash_erase_row+0xa6>
    14f6:	68fb      	ldr	r3, [r7, #12]
    14f8:	3301      	adds	r3, #1
    14fa:	60fb      	str	r3, [r7, #12]
    14fc:	68fb      	ldr	r3, [r7, #12]
    14fe:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1502:	dbee      	blt.n	14e2 <flash_erase_row+0x82>
    1504:	e000      	b.n	1508 <flash_erase_row+0xa8>
    1506:	bf00      	nop
    1508:	8a7b      	ldrh	r3, [r7, #18]
    150a:	f64f 72ff 	movw	r2, #65535	; 0xffff
    150e:	4293      	cmp	r3, r2
    1510:	bf0c      	ite	eq
    1512:	2301      	moveq	r3, #1
    1514:	2300      	movne	r3, #0
    1516:	b2db      	uxtb	r3, r3
    1518:	4618      	mov	r0, r3
    151a:	3718      	adds	r7, #24
    151c:	46bd      	mov	sp, r7
    151e:	bd80      	pop	{r7, pc}
    1520:	40022000 	.word	0x40022000

00001524 <flash_sync>:
    1524:	b580      	push	{r7, lr}
    1526:	af00      	add	r7, sp, #0
    1528:	4b10      	ldr	r3, [pc, #64]	; (156c <flash_sync+0x48>)
    152a:	781b      	ldrb	r3, [r3, #0]
    152c:	f003 0301 	and.w	r3, r3, #1
    1530:	2b00      	cmp	r3, #0
    1532:	d017      	beq.n	1564 <flash_sync+0x40>
    1534:	4b0d      	ldr	r3, [pc, #52]	; (156c <flash_sync+0x48>)
    1536:	785b      	ldrb	r3, [r3, #1]
    1538:	4618      	mov	r0, r3
    153a:	f7ff ff91 	bl	1460 <flash_erase_row>
    153e:	4603      	mov	r3, r0
    1540:	2b00      	cmp	r3, #0
    1542:	d00d      	beq.n	1560 <flash_sync+0x3c>
    1544:	f7ff fef0 	bl	1328 <write_back_buffer>
    1548:	4603      	mov	r3, r0
    154a:	2b00      	cmp	r3, #0
    154c:	d008      	beq.n	1560 <flash_sync+0x3c>
    154e:	4b07      	ldr	r3, [pc, #28]	; (156c <flash_sync+0x48>)
    1550:	781b      	ldrb	r3, [r3, #0]
    1552:	f023 0301 	bic.w	r3, r3, #1
    1556:	b2da      	uxtb	r2, r3
    1558:	4b04      	ldr	r3, [pc, #16]	; (156c <flash_sync+0x48>)
    155a:	701a      	strb	r2, [r3, #0]
    155c:	2301      	movs	r3, #1
    155e:	e002      	b.n	1566 <flash_sync+0x42>
    1560:	2300      	movs	r3, #0
    1562:	e000      	b.n	1566 <flash_sync+0x42>
    1564:	2301      	movs	r3, #1
    1566:	4618      	mov	r0, r3
    1568:	bd80      	pop	{r7, pc}
    156a:	bf00      	nop
    156c:	200001d4 	.word	0x200001d4

00001570 <flash_flush>:
    1570:	b480      	push	{r7}
    1572:	af00      	add	r7, sp, #0
    1574:	4b03      	ldr	r3, [pc, #12]	; (1584 <flash_flush+0x14>)
    1576:	2200      	movs	r2, #0
    1578:	701a      	strb	r2, [r3, #0]
    157a:	bf00      	nop
    157c:	46bd      	mov	sp, r7
    157e:	bc80      	pop	{r7}
    1580:	4770      	bx	lr
    1582:	bf00      	nop
    1584:	200001d4 	.word	0x200001d4

00001588 <flash_disable>:
    1588:	b580      	push	{r7, lr}
    158a:	af00      	add	r7, sp, #0
    158c:	f7ff ffca 	bl	1524 <flash_sync>
    1590:	4b05      	ldr	r3, [pc, #20]	; (15a8 <flash_disable+0x20>)
    1592:	2200      	movs	r2, #0
    1594:	701a      	strb	r2, [r3, #0]
    1596:	4a05      	ldr	r2, [pc, #20]	; (15ac <flash_disable+0x24>)
    1598:	4b04      	ldr	r3, [pc, #16]	; (15ac <flash_disable+0x24>)
    159a:	691b      	ldr	r3, [r3, #16]
    159c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    15a0:	6113      	str	r3, [r2, #16]
    15a2:	bf00      	nop
    15a4:	bd80      	pop	{r7, pc}
    15a6:	bf00      	nop
    15a8:	200001d4 	.word	0x200001d4
    15ac:	40022000 	.word	0x40022000

000015b0 <flash_write_byte>:
    15b0:	b580      	push	{r7, lr}
    15b2:	b084      	sub	sp, #16
    15b4:	af00      	add	r7, sp, #0
    15b6:	6078      	str	r0, [r7, #4]
    15b8:	460b      	mov	r3, r1
    15ba:	70fb      	strb	r3, [r7, #3]
    15bc:	687b      	ldr	r3, [r7, #4]
    15be:	0a9b      	lsrs	r3, r3, #10
    15c0:	60fb      	str	r3, [r7, #12]
    15c2:	68fb      	ldr	r3, [r7, #12]
    15c4:	2b3f      	cmp	r3, #63	; 0x3f
    15c6:	d801      	bhi.n	15cc <flash_write_byte+0x1c>
    15c8:	2300      	movs	r3, #0
    15ca:	e021      	b.n	1610 <flash_write_byte+0x60>
    15cc:	4b12      	ldr	r3, [pc, #72]	; (1618 <flash_write_byte+0x68>)
    15ce:	785b      	ldrb	r3, [r3, #1]
    15d0:	461a      	mov	r2, r3
    15d2:	68fb      	ldr	r3, [r7, #12]
    15d4:	429a      	cmp	r2, r3
    15d6:	d009      	beq.n	15ec <flash_write_byte+0x3c>
    15d8:	f7ff ffa4 	bl	1524 <flash_sync>
    15dc:	4603      	mov	r3, r0
    15de:	2b00      	cmp	r3, #0
    15e0:	d101      	bne.n	15e6 <flash_write_byte+0x36>
    15e2:	2300      	movs	r3, #0
    15e4:	e014      	b.n	1610 <flash_write_byte+0x60>
    15e6:	68f8      	ldr	r0, [r7, #12]
    15e8:	f7ff fee2 	bl	13b0 <load_row>
    15ec:	687b      	ldr	r3, [r7, #4]
    15ee:	f3c3 0309 	ubfx	r3, r3, #0, #10
    15f2:	60bb      	str	r3, [r7, #8]
    15f4:	4a08      	ldr	r2, [pc, #32]	; (1618 <flash_write_byte+0x68>)
    15f6:	68bb      	ldr	r3, [r7, #8]
    15f8:	4413      	add	r3, r2
    15fa:	3302      	adds	r3, #2
    15fc:	78fa      	ldrb	r2, [r7, #3]
    15fe:	701a      	strb	r2, [r3, #0]
    1600:	4b05      	ldr	r3, [pc, #20]	; (1618 <flash_write_byte+0x68>)
    1602:	781b      	ldrb	r3, [r3, #0]
    1604:	f043 0301 	orr.w	r3, r3, #1
    1608:	b2da      	uxtb	r2, r3
    160a:	4b03      	ldr	r3, [pc, #12]	; (1618 <flash_write_byte+0x68>)
    160c:	701a      	strb	r2, [r3, #0]
    160e:	2301      	movs	r3, #1
    1610:	4618      	mov	r0, r3
    1612:	3710      	adds	r7, #16
    1614:	46bd      	mov	sp, r7
    1616:	bd80      	pop	{r7, pc}
    1618:	200001d4 	.word	0x200001d4

0000161c <flash_read_block>:
    161c:	b590      	push	{r4, r7, lr}
    161e:	b087      	sub	sp, #28
    1620:	af00      	add	r7, sp, #0
    1622:	60f8      	str	r0, [r7, #12]
    1624:	60b9      	str	r1, [r7, #8]
    1626:	607a      	str	r2, [r7, #4]
    1628:	2300      	movs	r3, #0
    162a:	617b      	str	r3, [r7, #20]
    162c:	e00d      	b.n	164a <flash_read_block+0x2e>
    162e:	68bc      	ldr	r4, [r7, #8]
    1630:	1c63      	adds	r3, r4, #1
    1632:	60bb      	str	r3, [r7, #8]
    1634:	68fb      	ldr	r3, [r7, #12]
    1636:	1c5a      	adds	r2, r3, #1
    1638:	60fa      	str	r2, [r7, #12]
    163a:	4618      	mov	r0, r3
    163c:	f7ff fe20 	bl	1280 <read_byte>
    1640:	4603      	mov	r3, r0
    1642:	7023      	strb	r3, [r4, #0]
    1644:	697b      	ldr	r3, [r7, #20]
    1646:	3301      	adds	r3, #1
    1648:	617b      	str	r3, [r7, #20]
    164a:	697a      	ldr	r2, [r7, #20]
    164c:	687b      	ldr	r3, [r7, #4]
    164e:	429a      	cmp	r2, r3
    1650:	dbed      	blt.n	162e <flash_read_block+0x12>
    1652:	bf00      	nop
    1654:	371c      	adds	r7, #28
    1656:	46bd      	mov	sp, r7
    1658:	bd90      	pop	{r4, r7, pc}

0000165a <flash_write_block>:
    165a:	b580      	push	{r7, lr}
    165c:	b086      	sub	sp, #24
    165e:	af00      	add	r7, sp, #0
    1660:	60f8      	str	r0, [r7, #12]
    1662:	60b9      	str	r1, [r7, #8]
    1664:	607a      	str	r2, [r7, #4]
    1666:	4b18      	ldr	r3, [pc, #96]	; (16c8 <flash_write_block+0x6e>)
    1668:	681b      	ldr	r3, [r3, #0]
    166a:	461a      	mov	r2, r3
    166c:	68fb      	ldr	r3, [r7, #12]
    166e:	4293      	cmp	r3, r2
    1670:	d201      	bcs.n	1676 <flash_write_block+0x1c>
    1672:	2300      	movs	r3, #0
    1674:	e023      	b.n	16be <flash_write_block+0x64>
    1676:	f7ff fdcd 	bl	1214 <flash_enable>
    167a:	4603      	mov	r3, r0
    167c:	2b00      	cmp	r3, #0
    167e:	d101      	bne.n	1684 <flash_write_block+0x2a>
    1680:	2300      	movs	r3, #0
    1682:	e01c      	b.n	16be <flash_write_block+0x64>
    1684:	2300      	movs	r3, #0
    1686:	617b      	str	r3, [r7, #20]
    1688:	e012      	b.n	16b0 <flash_write_block+0x56>
    168a:	68fa      	ldr	r2, [r7, #12]
    168c:	1c53      	adds	r3, r2, #1
    168e:	60fb      	str	r3, [r7, #12]
    1690:	68bb      	ldr	r3, [r7, #8]
    1692:	1c59      	adds	r1, r3, #1
    1694:	60b9      	str	r1, [r7, #8]
    1696:	781b      	ldrb	r3, [r3, #0]
    1698:	4619      	mov	r1, r3
    169a:	4610      	mov	r0, r2
    169c:	f7ff ff88 	bl	15b0 <flash_write_byte>
    16a0:	4603      	mov	r3, r0
    16a2:	2b00      	cmp	r3, #0
    16a4:	d101      	bne.n	16aa <flash_write_block+0x50>
    16a6:	2300      	movs	r3, #0
    16a8:	e009      	b.n	16be <flash_write_block+0x64>
    16aa:	697b      	ldr	r3, [r7, #20]
    16ac:	3301      	adds	r3, #1
    16ae:	617b      	str	r3, [r7, #20]
    16b0:	697a      	ldr	r2, [r7, #20]
    16b2:	687b      	ldr	r3, [r7, #4]
    16b4:	429a      	cmp	r2, r3
    16b6:	dbe8      	blt.n	168a <flash_write_block+0x30>
    16b8:	f7ff ff66 	bl	1588 <flash_disable>
    16bc:	2301      	movs	r3, #1
    16be:	4618      	mov	r0, r3
    16c0:	3718      	adds	r7, #24
    16c2:	46bd      	mov	sp, r7
    16c4:	bd80      	pop	{r7, pc}
    16c6:	bf00      	nop
    16c8:	00005800 	.word	0x00005800

000016cc <btn_idx>:
    16cc:	b480      	push	{r7}
    16ce:	b085      	sub	sp, #20
    16d0:	af00      	add	r7, sp, #0
    16d2:	4603      	mov	r3, r0
    16d4:	71fb      	strb	r3, [r7, #7]
    16d6:	2300      	movs	r3, #0
    16d8:	73fb      	strb	r3, [r7, #15]
    16da:	79fb      	ldrb	r3, [r7, #7]
    16dc:	085b      	lsrs	r3, r3, #1
    16de:	71fb      	strb	r3, [r7, #7]
    16e0:	e005      	b.n	16ee <btn_idx+0x22>
    16e2:	7bfb      	ldrb	r3, [r7, #15]
    16e4:	3301      	adds	r3, #1
    16e6:	73fb      	strb	r3, [r7, #15]
    16e8:	79fb      	ldrb	r3, [r7, #7]
    16ea:	085b      	lsrs	r3, r3, #1
    16ec:	71fb      	strb	r3, [r7, #7]
    16ee:	79fb      	ldrb	r3, [r7, #7]
    16f0:	2b00      	cmp	r3, #0
    16f2:	d1f6      	bne.n	16e2 <btn_idx+0x16>
    16f4:	7bfb      	ldrb	r3, [r7, #15]
    16f6:	4618      	mov	r0, r3
    16f8:	3714      	adds	r7, #20
    16fa:	46bd      	mov	sp, r7
    16fc:	bc80      	pop	{r7}
    16fe:	4770      	bx	lr

00001700 <btn_mask>:
    1700:	b480      	push	{r7}
    1702:	b085      	sub	sp, #20
    1704:	af00      	add	r7, sp, #0
    1706:	4603      	mov	r3, r0
    1708:	71fb      	strb	r3, [r7, #7]
    170a:	2300      	movs	r3, #0
    170c:	60fb      	str	r3, [r7, #12]
    170e:	e00f      	b.n	1730 <btn_mask+0x30>
    1710:	4a0c      	ldr	r2, [pc, #48]	; (1744 <btn_mask+0x44>)
    1712:	68fb      	ldr	r3, [r7, #12]
    1714:	4413      	add	r3, r2
    1716:	781b      	ldrb	r3, [r3, #0]
    1718:	79fa      	ldrb	r2, [r7, #7]
    171a:	429a      	cmp	r2, r3
    171c:	d105      	bne.n	172a <btn_mask+0x2a>
    171e:	2201      	movs	r2, #1
    1720:	68fb      	ldr	r3, [r7, #12]
    1722:	fa02 f303 	lsl.w	r3, r2, r3
    1726:	b2db      	uxtb	r3, r3
    1728:	e006      	b.n	1738 <btn_mask+0x38>
    172a:	68fb      	ldr	r3, [r7, #12]
    172c:	3301      	adds	r3, #1
    172e:	60fb      	str	r3, [r7, #12]
    1730:	68fb      	ldr	r3, [r7, #12]
    1732:	2b07      	cmp	r3, #7
    1734:	ddec      	ble.n	1710 <btn_mask+0x10>
    1736:	23ff      	movs	r3, #255	; 0xff
    1738:	4618      	mov	r0, r3
    173a:	3714      	adds	r7, #20
    173c:	46bd      	mov	sp, r7
    173e:	bc80      	pop	{r7}
    1740:	4770      	bx	lr
    1742:	bf00      	nop
    1744:	20000004 	.word	0x20000004

00001748 <gamepad_init>:
    1748:	b580      	push	{r7, lr}
    174a:	af00      	add	r7, sp, #0
    174c:	2202      	movs	r2, #2
    174e:	210f      	movs	r1, #15
    1750:	4808      	ldr	r0, [pc, #32]	; (1774 <gamepad_init+0x2c>)
    1752:	f000 fb63 	bl	1e1c <config_pin>
    1756:	2202      	movs	r2, #2
    1758:	210d      	movs	r1, #13
    175a:	4806      	ldr	r0, [pc, #24]	; (1774 <gamepad_init+0x2c>)
    175c:	f000 fb5e 	bl	1e1c <config_pin>
    1760:	2208      	movs	r2, #8
    1762:	210e      	movs	r1, #14
    1764:	4803      	ldr	r0, [pc, #12]	; (1774 <gamepad_init+0x2c>)
    1766:	f000 fb59 	bl	1e1c <config_pin>
    176a:	4b03      	ldr	r3, [pc, #12]	; (1778 <gamepad_init+0x30>)
    176c:	22ff      	movs	r2, #255	; 0xff
    176e:	701a      	strb	r2, [r3, #0]
    1770:	bf00      	nop
    1772:	bd80      	pop	{r7, pc}
    1774:	40010c00 	.word	0x40010c00
    1778:	200025fc 	.word	0x200025fc

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
    1850:	200025fc 	.word	0x200025fc

00001854 <btn_query_down>:
    1854:	b580      	push	{r7, lr}
    1856:	b084      	sub	sp, #16
    1858:	af00      	add	r7, sp, #0
    185a:	4603      	mov	r3, r0
    185c:	71fb      	strb	r3, [r7, #7]
    185e:	79fb      	ldrb	r3, [r7, #7]
    1860:	4618      	mov	r0, r3
    1862:	f7ff ff4d 	bl	1700 <btn_mask>
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
    1888:	200025fc 	.word	0x200025fc

0000188c <btn_wait_down>:
    188c:	b580      	push	{r7, lr}
    188e:	b084      	sub	sp, #16
    1890:	af00      	add	r7, sp, #0
    1892:	4603      	mov	r3, r0
    1894:	71fb      	strb	r3, [r7, #7]
    1896:	79fb      	ldrb	r3, [r7, #7]
    1898:	4618      	mov	r0, r3
    189a:	f7ff ff31 	bl	1700 <btn_mask>
    189e:	4603      	mov	r3, r0
    18a0:	72fb      	strb	r3, [r7, #11]
    18a2:	2300      	movs	r3, #0
    18a4:	60fb      	str	r3, [r7, #12]
    18a6:	e00f      	b.n	18c8 <btn_wait_down+0x3c>
    18a8:	f003 fb46 	bl	4f38 <frame_sync>
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
    18d8:	200025fc 	.word	0x200025fc

000018dc <btn_wait_up>:
    18dc:	b580      	push	{r7, lr}
    18de:	b084      	sub	sp, #16
    18e0:	af00      	add	r7, sp, #0
    18e2:	4603      	mov	r3, r0
    18e4:	71fb      	strb	r3, [r7, #7]
    18e6:	79fb      	ldrb	r3, [r7, #7]
    18e8:	4618      	mov	r0, r3
    18ea:	f7ff ff09 	bl	1700 <btn_mask>
    18ee:	4603      	mov	r3, r0
    18f0:	72fb      	strb	r3, [r7, #11]
    18f2:	2300      	movs	r3, #0
    18f4:	60fb      	str	r3, [r7, #12]
    18f6:	e00f      	b.n	1918 <btn_wait_up+0x3c>
    18f8:	f003 fb1e 	bl	4f38 <frame_sync>
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
    1928:	200025fc 	.word	0x200025fc

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
    193e:	f003 fafb 	bl	4f38 <frame_sync>
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
    1978:	f7ff fea8 	bl	16cc <btn_idx>
    197c:	4603      	mov	r3, r0
    197e:	461a      	mov	r2, r3
    1980:	4b03      	ldr	r3, [pc, #12]	; (1990 <btn_wait_any+0x64>)
    1982:	5c9b      	ldrb	r3, [r3, r2]
    1984:	4618      	mov	r0, r3
    1986:	3708      	adds	r7, #8
    1988:	46bd      	mov	sp, r7
    198a:	bd80      	pop	{r7, pc}
    198c:	200025fc 	.word	0x200025fc
    1990:	20000004 	.word	0x20000004

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
    19b8:	20000004 	.word	0x20000004

000019bc <get_keymap>:
    19bc:	b480      	push	{r7}
    19be:	af00      	add	r7, sp, #0
    19c0:	4b02      	ldr	r3, [pc, #8]	; (19cc <get_keymap+0x10>)
    19c2:	4618      	mov	r0, r3
    19c4:	46bd      	mov	sp, r7
    19c6:	bc80      	pop	{r7}
    19c8:	4770      	bx	lr
    19ca:	bf00      	nop
    19cc:	20000004 	.word	0x20000004

000019d0 <games_count>:
    19d0:	b480      	push	{r7}
    19d2:	b083      	sub	sp, #12
    19d4:	af00      	add	r7, sp, #0
    19d6:	2300      	movs	r3, #0
    19d8:	607b      	str	r3, [r7, #4]
    19da:	490b      	ldr	r1, [pc, #44]	; (1a08 <games_count+0x38>)
    19dc:	687a      	ldr	r2, [r7, #4]
    19de:	4613      	mov	r3, r2
    19e0:	005b      	lsls	r3, r3, #1
    19e2:	4413      	add	r3, r2
    19e4:	00db      	lsls	r3, r3, #3
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
    1a08:	2000000c 	.word	0x2000000c

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

00001f0c <gfx_blit>:
    1f0c:	b5f0      	push	{r4, r5, r6, r7, lr}
    1f0e:	b087      	sub	sp, #28
    1f10:	af00      	add	r7, sp, #0
    1f12:	60f8      	str	r0, [r7, #12]
    1f14:	60b9      	str	r1, [r7, #8]
    1f16:	4611      	mov	r1, r2
    1f18:	461a      	mov	r2, r3
    1f1a:	460b      	mov	r3, r1
    1f1c:	71fb      	strb	r3, [r7, #7]
    1f1e:	4613      	mov	r3, r2
    1f20:	71bb      	strb	r3, [r7, #6]
    1f22:	f003 f8b5 	bl	5090 <get_video_params>
    1f26:	6178      	str	r0, [r7, #20]
    1f28:	68fb      	ldr	r3, [r7, #12]
    1f2a:	2b00      	cmp	r3, #0
    1f2c:	db0e      	blt.n	1f4c <gfx_blit+0x40>
    1f2e:	697b      	ldr	r3, [r7, #20]
    1f30:	899b      	ldrh	r3, [r3, #12]
    1f32:	461a      	mov	r2, r3
    1f34:	68fb      	ldr	r3, [r7, #12]
    1f36:	429a      	cmp	r2, r3
    1f38:	dd08      	ble.n	1f4c <gfx_blit+0x40>
    1f3a:	68bb      	ldr	r3, [r7, #8]
    1f3c:	2b00      	cmp	r3, #0
    1f3e:	db05      	blt.n	1f4c <gfx_blit+0x40>
    1f40:	697b      	ldr	r3, [r7, #20]
    1f42:	89db      	ldrh	r3, [r3, #14]
    1f44:	461a      	mov	r2, r3
    1f46:	68bb      	ldr	r3, [r7, #8]
    1f48:	429a      	cmp	r2, r3
    1f4a:	dc01      	bgt.n	1f50 <gfx_blit+0x44>
    1f4c:	2300      	movs	r3, #0
    1f4e:	e04f      	b.n	1ff0 <gfx_blit+0xe4>
    1f50:	697b      	ldr	r3, [r7, #20]
    1f52:	7a1b      	ldrb	r3, [r3, #8]
    1f54:	461a      	mov	r2, r3
    1f56:	68bb      	ldr	r3, [r7, #8]
    1f58:	fb03 f202 	mul.w	r2, r3, r2
    1f5c:	68fb      	ldr	r3, [r7, #12]
    1f5e:	0fd9      	lsrs	r1, r3, #31
    1f60:	440b      	add	r3, r1
    1f62:	105b      	asrs	r3, r3, #1
    1f64:	18d6      	adds	r6, r2, r3
    1f66:	79fb      	ldrb	r3, [r7, #7]
    1f68:	f003 030f 	and.w	r3, r3, #15
    1f6c:	71fb      	strb	r3, [r7, #7]
    1f6e:	25f0      	movs	r5, #240	; 0xf0
    1f70:	68fb      	ldr	r3, [r7, #12]
    1f72:	f003 0301 	and.w	r3, r3, #1
    1f76:	2b00      	cmp	r3, #0
    1f78:	d103      	bne.n	1f82 <gfx_blit+0x76>
    1f7a:	79fb      	ldrb	r3, [r7, #7]
    1f7c:	011b      	lsls	r3, r3, #4
    1f7e:	71fb      	strb	r3, [r7, #7]
    1f80:	250f      	movs	r5, #15
    1f82:	4b1d      	ldr	r3, [pc, #116]	; (1ff8 <gfx_blit+0xec>)
    1f84:	5d9c      	ldrb	r4, [r3, r6]
    1f86:	79bb      	ldrb	r3, [r7, #6]
    1f88:	2b04      	cmp	r3, #4
    1f8a:	d828      	bhi.n	1fde <gfx_blit+0xd2>
    1f8c:	a201      	add	r2, pc, #4	; (adr r2, 1f94 <gfx_blit+0x88>)
    1f8e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1f92:	bf00      	nop
    1f94:	00001fa9 	.word	0x00001fa9
    1f98:	00001fb1 	.word	0x00001fb1
    1f9c:	00001fb9 	.word	0x00001fb9
    1fa0:	00001fc1 	.word	0x00001fc1
    1fa4:	00001fd1 	.word	0x00001fd1
    1fa8:	79fb      	ldrb	r3, [r7, #7]
    1faa:	4323      	orrs	r3, r4
    1fac:	b2dc      	uxtb	r4, r3
    1fae:	e016      	b.n	1fde <gfx_blit+0xd2>
    1fb0:	79fb      	ldrb	r3, [r7, #7]
    1fb2:	4023      	ands	r3, r4
    1fb4:	b2dc      	uxtb	r4, r3
    1fb6:	e012      	b.n	1fde <gfx_blit+0xd2>
    1fb8:	79fb      	ldrb	r3, [r7, #7]
    1fba:	4063      	eors	r3, r4
    1fbc:	b2dc      	uxtb	r4, r3
    1fbe:	e00e      	b.n	1fde <gfx_blit+0xd2>
    1fc0:	b26b      	sxtb	r3, r5
    1fc2:	43db      	mvns	r3, r3
    1fc4:	b25a      	sxtb	r2, r3
    1fc6:	b263      	sxtb	r3, r4
    1fc8:	4053      	eors	r3, r2
    1fca:	b25b      	sxtb	r3, r3
    1fcc:	b2dc      	uxtb	r4, r3
    1fce:	e006      	b.n	1fde <gfx_blit+0xd2>
    1fd0:	ea04 0305 	and.w	r3, r4, r5
    1fd4:	b2dc      	uxtb	r4, r3
    1fd6:	79fb      	ldrb	r3, [r7, #7]
    1fd8:	4323      	orrs	r3, r4
    1fda:	b2dc      	uxtb	r4, r3
    1fdc:	bf00      	nop
    1fde:	4b06      	ldr	r3, [pc, #24]	; (1ff8 <gfx_blit+0xec>)
    1fe0:	4622      	mov	r2, r4
    1fe2:	559a      	strb	r2, [r3, r6]
    1fe4:	ea04 0305 	and.w	r3, r4, r5
    1fe8:	b2da      	uxtb	r2, r3
    1fea:	79fb      	ldrb	r3, [r7, #7]
    1fec:	4053      	eors	r3, r2
    1fee:	b2db      	uxtb	r3, r3
    1ff0:	4618      	mov	r0, r3
    1ff2:	371c      	adds	r7, #28
    1ff4:	46bd      	mov	sp, r7
    1ff6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1ff8:	20002628 	.word	0x20002628

00001ffc <gfx_plot>:
    1ffc:	b5b0      	push	{r4, r5, r7, lr}
    1ffe:	b086      	sub	sp, #24
    2000:	af00      	add	r7, sp, #0
    2002:	60f8      	str	r0, [r7, #12]
    2004:	60b9      	str	r1, [r7, #8]
    2006:	4613      	mov	r3, r2
    2008:	71fb      	strb	r3, [r7, #7]
    200a:	f003 f841 	bl	5090 <get_video_params>
    200e:	6178      	str	r0, [r7, #20]
    2010:	68fb      	ldr	r3, [r7, #12]
    2012:	2b00      	cmp	r3, #0
    2014:	db39      	blt.n	208a <gfx_plot+0x8e>
    2016:	697b      	ldr	r3, [r7, #20]
    2018:	899b      	ldrh	r3, [r3, #12]
    201a:	461a      	mov	r2, r3
    201c:	68fb      	ldr	r3, [r7, #12]
    201e:	429a      	cmp	r2, r3
    2020:	dd33      	ble.n	208a <gfx_plot+0x8e>
    2022:	68bb      	ldr	r3, [r7, #8]
    2024:	2b00      	cmp	r3, #0
    2026:	db30      	blt.n	208a <gfx_plot+0x8e>
    2028:	697b      	ldr	r3, [r7, #20]
    202a:	89db      	ldrh	r3, [r3, #14]
    202c:	461a      	mov	r2, r3
    202e:	68bb      	ldr	r3, [r7, #8]
    2030:	429a      	cmp	r2, r3
    2032:	dd2a      	ble.n	208a <gfx_plot+0x8e>
    2034:	697b      	ldr	r3, [r7, #20]
    2036:	7a1b      	ldrb	r3, [r3, #8]
    2038:	461a      	mov	r2, r3
    203a:	68bb      	ldr	r3, [r7, #8]
    203c:	fb03 f202 	mul.w	r2, r3, r2
    2040:	68fb      	ldr	r3, [r7, #12]
    2042:	0fd9      	lsrs	r1, r3, #31
    2044:	440b      	add	r3, r1
    2046:	105b      	asrs	r3, r3, #1
    2048:	18d5      	adds	r5, r2, r3
    204a:	79fb      	ldrb	r3, [r7, #7]
    204c:	f003 030f 	and.w	r3, r3, #15
    2050:	71fb      	strb	r3, [r7, #7]
    2052:	4b10      	ldr	r3, [pc, #64]	; (2094 <gfx_plot+0x98>)
    2054:	5d5c      	ldrb	r4, [r3, r5]
    2056:	68fb      	ldr	r3, [r7, #12]
    2058:	f003 0301 	and.w	r3, r3, #1
    205c:	2b00      	cmp	r3, #0
    205e:	d006      	beq.n	206e <gfx_plot+0x72>
    2060:	f024 030f 	bic.w	r3, r4, #15
    2064:	b2dc      	uxtb	r4, r3
    2066:	79fb      	ldrb	r3, [r7, #7]
    2068:	4323      	orrs	r3, r4
    206a:	b2dc      	uxtb	r4, r3
    206c:	e009      	b.n	2082 <gfx_plot+0x86>
    206e:	f004 030f 	and.w	r3, r4, #15
    2072:	b2dc      	uxtb	r4, r3
    2074:	79fb      	ldrb	r3, [r7, #7]
    2076:	011b      	lsls	r3, r3, #4
    2078:	b25a      	sxtb	r2, r3
    207a:	b263      	sxtb	r3, r4
    207c:	4313      	orrs	r3, r2
    207e:	b25b      	sxtb	r3, r3
    2080:	b2dc      	uxtb	r4, r3
    2082:	4b04      	ldr	r3, [pc, #16]	; (2094 <gfx_plot+0x98>)
    2084:	4622      	mov	r2, r4
    2086:	555a      	strb	r2, [r3, r5]
    2088:	e000      	b.n	208c <gfx_plot+0x90>
    208a:	bf00      	nop
    208c:	3718      	adds	r7, #24
    208e:	46bd      	mov	sp, r7
    2090:	bdb0      	pop	{r4, r5, r7, pc}
    2092:	bf00      	nop
    2094:	20002628 	.word	0x20002628

00002098 <gfx_rectangle>:
    2098:	b580      	push	{r7, lr}
    209a:	b086      	sub	sp, #24
    209c:	af00      	add	r7, sp, #0
    209e:	60f8      	str	r0, [r7, #12]
    20a0:	60b9      	str	r1, [r7, #8]
    20a2:	607a      	str	r2, [r7, #4]
    20a4:	603b      	str	r3, [r7, #0]
    20a6:	68fa      	ldr	r2, [r7, #12]
    20a8:	687b      	ldr	r3, [r7, #4]
    20aa:	429a      	cmp	r2, r3
    20ac:	dd05      	ble.n	20ba <gfx_rectangle+0x22>
    20ae:	68fb      	ldr	r3, [r7, #12]
    20b0:	617b      	str	r3, [r7, #20]
    20b2:	687b      	ldr	r3, [r7, #4]
    20b4:	60fb      	str	r3, [r7, #12]
    20b6:	697b      	ldr	r3, [r7, #20]
    20b8:	607b      	str	r3, [r7, #4]
    20ba:	68ba      	ldr	r2, [r7, #8]
    20bc:	683b      	ldr	r3, [r7, #0]
    20be:	429a      	cmp	r2, r3
    20c0:	dd05      	ble.n	20ce <gfx_rectangle+0x36>
    20c2:	68bb      	ldr	r3, [r7, #8]
    20c4:	617b      	str	r3, [r7, #20]
    20c6:	683b      	ldr	r3, [r7, #0]
    20c8:	60bb      	str	r3, [r7, #8]
    20ca:	697b      	ldr	r3, [r7, #20]
    20cc:	603b      	str	r3, [r7, #0]
    20ce:	68fb      	ldr	r3, [r7, #12]
    20d0:	617b      	str	r3, [r7, #20]
    20d2:	e00c      	b.n	20ee <gfx_rectangle+0x56>
    20d4:	220f      	movs	r2, #15
    20d6:	68b9      	ldr	r1, [r7, #8]
    20d8:	6978      	ldr	r0, [r7, #20]
    20da:	f7ff ff8f 	bl	1ffc <gfx_plot>
    20de:	220f      	movs	r2, #15
    20e0:	6839      	ldr	r1, [r7, #0]
    20e2:	6978      	ldr	r0, [r7, #20]
    20e4:	f7ff ff8a 	bl	1ffc <gfx_plot>
    20e8:	697b      	ldr	r3, [r7, #20]
    20ea:	3301      	adds	r3, #1
    20ec:	617b      	str	r3, [r7, #20]
    20ee:	697a      	ldr	r2, [r7, #20]
    20f0:	687b      	ldr	r3, [r7, #4]
    20f2:	429a      	cmp	r2, r3
    20f4:	ddee      	ble.n	20d4 <gfx_rectangle+0x3c>
    20f6:	68bb      	ldr	r3, [r7, #8]
    20f8:	3301      	adds	r3, #1
    20fa:	60bb      	str	r3, [r7, #8]
    20fc:	e00c      	b.n	2118 <gfx_rectangle+0x80>
    20fe:	220f      	movs	r2, #15
    2100:	68b9      	ldr	r1, [r7, #8]
    2102:	68f8      	ldr	r0, [r7, #12]
    2104:	f7ff ff7a 	bl	1ffc <gfx_plot>
    2108:	220f      	movs	r2, #15
    210a:	68b9      	ldr	r1, [r7, #8]
    210c:	6878      	ldr	r0, [r7, #4]
    210e:	f7ff ff75 	bl	1ffc <gfx_plot>
    2112:	68bb      	ldr	r3, [r7, #8]
    2114:	3301      	adds	r3, #1
    2116:	60bb      	str	r3, [r7, #8]
    2118:	68ba      	ldr	r2, [r7, #8]
    211a:	683b      	ldr	r3, [r7, #0]
    211c:	429a      	cmp	r2, r3
    211e:	dbee      	blt.n	20fe <gfx_rectangle+0x66>
    2120:	bf00      	nop
    2122:	3718      	adds	r7, #24
    2124:	46bd      	mov	sp, r7
    2126:	bd80      	pop	{r7, pc}

00002128 <gfx_cls>:
    2128:	b580      	push	{r7, lr}
    212a:	b082      	sub	sp, #8
    212c:	af00      	add	r7, sp, #0
    212e:	2300      	movs	r3, #0
    2130:	607b      	str	r3, [r7, #4]
    2132:	e007      	b.n	2144 <gfx_cls+0x1c>
    2134:	4a0a      	ldr	r2, [pc, #40]	; (2160 <gfx_cls+0x38>)
    2136:	687b      	ldr	r3, [r7, #4]
    2138:	4413      	add	r3, r2
    213a:	2200      	movs	r2, #0
    213c:	701a      	strb	r2, [r3, #0]
    213e:	687b      	ldr	r3, [r7, #4]
    2140:	3301      	adds	r3, #1
    2142:	607b      	str	r3, [r7, #4]
    2144:	687b      	ldr	r3, [r7, #4]
    2146:	f242 725f 	movw	r2, #10079	; 0x275f
    214a:	4293      	cmp	r3, r2
    214c:	ddf2      	ble.n	2134 <gfx_cls+0xc>
    214e:	2100      	movs	r1, #0
    2150:	2000      	movs	r0, #0
    2152:	f002 fad3 	bl	46fc <set_cursor>
    2156:	bf00      	nop
    2158:	3708      	adds	r7, #8
    215a:	46bd      	mov	sp, r7
    215c:	bd80      	pop	{r7, pc}
    215e:	bf00      	nop
    2160:	20002628 	.word	0x20002628

00002164 <move_up>:
    2164:	b480      	push	{r7}
    2166:	b085      	sub	sp, #20
    2168:	af00      	add	r7, sp, #0
    216a:	60f8      	str	r0, [r7, #12]
    216c:	60b9      	str	r1, [r7, #8]
    216e:	607a      	str	r2, [r7, #4]
    2170:	e009      	b.n	2186 <move_up+0x22>
    2172:	68bb      	ldr	r3, [r7, #8]
    2174:	3b01      	subs	r3, #1
    2176:	60bb      	str	r3, [r7, #8]
    2178:	68fb      	ldr	r3, [r7, #12]
    217a:	3b01      	subs	r3, #1
    217c:	60fb      	str	r3, [r7, #12]
    217e:	68fb      	ldr	r3, [r7, #12]
    2180:	781a      	ldrb	r2, [r3, #0]
    2182:	68bb      	ldr	r3, [r7, #8]
    2184:	701a      	strb	r2, [r3, #0]
    2186:	687b      	ldr	r3, [r7, #4]
    2188:	1e5a      	subs	r2, r3, #1
    218a:	607a      	str	r2, [r7, #4]
    218c:	2b00      	cmp	r3, #0
    218e:	d1f0      	bne.n	2172 <move_up+0xe>
    2190:	68bb      	ldr	r3, [r7, #8]
    2192:	4618      	mov	r0, r3
    2194:	3714      	adds	r7, #20
    2196:	46bd      	mov	sp, r7
    2198:	bc80      	pop	{r7}
    219a:	4770      	bx	lr

0000219c <move_down>:
    219c:	b480      	push	{r7}
    219e:	b085      	sub	sp, #20
    21a0:	af00      	add	r7, sp, #0
    21a2:	60f8      	str	r0, [r7, #12]
    21a4:	60b9      	str	r1, [r7, #8]
    21a6:	607a      	str	r2, [r7, #4]
    21a8:	e007      	b.n	21ba <move_down+0x1e>
    21aa:	68bb      	ldr	r3, [r7, #8]
    21ac:	1c5a      	adds	r2, r3, #1
    21ae:	60ba      	str	r2, [r7, #8]
    21b0:	68fa      	ldr	r2, [r7, #12]
    21b2:	1c51      	adds	r1, r2, #1
    21b4:	60f9      	str	r1, [r7, #12]
    21b6:	7812      	ldrb	r2, [r2, #0]
    21b8:	701a      	strb	r2, [r3, #0]
    21ba:	687b      	ldr	r3, [r7, #4]
    21bc:	1e5a      	subs	r2, r3, #1
    21be:	607a      	str	r2, [r7, #4]
    21c0:	2b00      	cmp	r3, #0
    21c2:	d1f2      	bne.n	21aa <move_down+0xe>
    21c4:	68bb      	ldr	r3, [r7, #8]
    21c6:	4618      	mov	r0, r3
    21c8:	3714      	adds	r7, #20
    21ca:	46bd      	mov	sp, r7
    21cc:	bc80      	pop	{r7}
    21ce:	4770      	bx	lr

000021d0 <gfx_scroll_up>:
    21d0:	b580      	push	{r7, lr}
    21d2:	b086      	sub	sp, #24
    21d4:	af00      	add	r7, sp, #0
    21d6:	4603      	mov	r3, r0
    21d8:	71fb      	strb	r3, [r7, #7]
    21da:	79fb      	ldrb	r3, [r7, #7]
    21dc:	225a      	movs	r2, #90	; 0x5a
    21de:	fb02 f303 	mul.w	r3, r2, r3
    21e2:	4a13      	ldr	r2, [pc, #76]	; (2230 <gfx_scroll_up+0x60>)
    21e4:	4413      	add	r3, r2
    21e6:	60fb      	str	r3, [r7, #12]
    21e8:	4b11      	ldr	r3, [pc, #68]	; (2230 <gfx_scroll_up+0x60>)
    21ea:	617b      	str	r3, [r7, #20]
    21ec:	79fb      	ldrb	r3, [r7, #7]
    21ee:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    21f2:	225a      	movs	r2, #90	; 0x5a
    21f4:	fb02 f303 	mul.w	r3, r2, r3
    21f8:	613b      	str	r3, [r7, #16]
    21fa:	693a      	ldr	r2, [r7, #16]
    21fc:	6979      	ldr	r1, [r7, #20]
    21fe:	68f8      	ldr	r0, [r7, #12]
    2200:	f7ff ffcc 	bl	219c <move_down>
    2204:	6178      	str	r0, [r7, #20]
    2206:	79fb      	ldrb	r3, [r7, #7]
    2208:	225a      	movs	r2, #90	; 0x5a
    220a:	fb02 f303 	mul.w	r3, r2, r3
    220e:	613b      	str	r3, [r7, #16]
    2210:	e004      	b.n	221c <gfx_scroll_up+0x4c>
    2212:	697b      	ldr	r3, [r7, #20]
    2214:	1c5a      	adds	r2, r3, #1
    2216:	617a      	str	r2, [r7, #20]
    2218:	2200      	movs	r2, #0
    221a:	701a      	strb	r2, [r3, #0]
    221c:	693b      	ldr	r3, [r7, #16]
    221e:	1e5a      	subs	r2, r3, #1
    2220:	613a      	str	r2, [r7, #16]
    2222:	2b00      	cmp	r3, #0
    2224:	d1f5      	bne.n	2212 <gfx_scroll_up+0x42>
    2226:	bf00      	nop
    2228:	3718      	adds	r7, #24
    222a:	46bd      	mov	sp, r7
    222c:	bd80      	pop	{r7, pc}
    222e:	bf00      	nop
    2230:	20002628 	.word	0x20002628

00002234 <gfx_scroll_down>:
    2234:	b580      	push	{r7, lr}
    2236:	b086      	sub	sp, #24
    2238:	af00      	add	r7, sp, #0
    223a:	4603      	mov	r3, r0
    223c:	71fb      	strb	r3, [r7, #7]
    223e:	79fb      	ldrb	r3, [r7, #7]
    2240:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    2244:	225a      	movs	r2, #90	; 0x5a
    2246:	fb02 f303 	mul.w	r3, r2, r3
    224a:	4a13      	ldr	r2, [pc, #76]	; (2298 <gfx_scroll_down+0x64>)
    224c:	4413      	add	r3, r2
    224e:	60fb      	str	r3, [r7, #12]
    2250:	4b12      	ldr	r3, [pc, #72]	; (229c <gfx_scroll_down+0x68>)
    2252:	617b      	str	r3, [r7, #20]
    2254:	79fb      	ldrb	r3, [r7, #7]
    2256:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    225a:	225a      	movs	r2, #90	; 0x5a
    225c:	fb02 f303 	mul.w	r3, r2, r3
    2260:	613b      	str	r3, [r7, #16]
    2262:	693a      	ldr	r2, [r7, #16]
    2264:	6979      	ldr	r1, [r7, #20]
    2266:	68f8      	ldr	r0, [r7, #12]
    2268:	f7ff ff7c 	bl	2164 <move_up>
    226c:	6178      	str	r0, [r7, #20]
    226e:	79fb      	ldrb	r3, [r7, #7]
    2270:	225a      	movs	r2, #90	; 0x5a
    2272:	fb02 f303 	mul.w	r3, r2, r3
    2276:	613b      	str	r3, [r7, #16]
    2278:	e005      	b.n	2286 <gfx_scroll_down+0x52>
    227a:	697b      	ldr	r3, [r7, #20]
    227c:	3b01      	subs	r3, #1
    227e:	617b      	str	r3, [r7, #20]
    2280:	697b      	ldr	r3, [r7, #20]
    2282:	2200      	movs	r2, #0
    2284:	701a      	strb	r2, [r3, #0]
    2286:	693b      	ldr	r3, [r7, #16]
    2288:	1e5a      	subs	r2, r3, #1
    228a:	613a      	str	r2, [r7, #16]
    228c:	2b00      	cmp	r3, #0
    228e:	d1f4      	bne.n	227a <gfx_scroll_down+0x46>
    2290:	bf00      	nop
    2292:	3718      	adds	r7, #24
    2294:	46bd      	mov	sp, r7
    2296:	bd80      	pop	{r7, pc}
    2298:	20002628 	.word	0x20002628
    229c:	20004d88 	.word	0x20004d88

000022a0 <gfx_scroll_left>:
    22a0:	b580      	push	{r7, lr}
    22a2:	b086      	sub	sp, #24
    22a4:	af00      	add	r7, sp, #0
    22a6:	4603      	mov	r3, r0
    22a8:	71fb      	strb	r3, [r7, #7]
    22aa:	2300      	movs	r3, #0
    22ac:	617b      	str	r3, [r7, #20]
    22ae:	e024      	b.n	22fa <gfx_scroll_left+0x5a>
    22b0:	697b      	ldr	r3, [r7, #20]
    22b2:	225a      	movs	r2, #90	; 0x5a
    22b4:	fb02 f303 	mul.w	r3, r2, r3
    22b8:	4a13      	ldr	r2, [pc, #76]	; (2308 <gfx_scroll_left+0x68>)
    22ba:	4413      	add	r3, r2
    22bc:	60fb      	str	r3, [r7, #12]
    22be:	79fb      	ldrb	r3, [r7, #7]
    22c0:	68fa      	ldr	r2, [r7, #12]
    22c2:	4413      	add	r3, r2
    22c4:	60bb      	str	r3, [r7, #8]
    22c6:	79fb      	ldrb	r3, [r7, #7]
    22c8:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    22cc:	613b      	str	r3, [r7, #16]
    22ce:	693a      	ldr	r2, [r7, #16]
    22d0:	68f9      	ldr	r1, [r7, #12]
    22d2:	68b8      	ldr	r0, [r7, #8]
    22d4:	f7ff ff62 	bl	219c <move_down>
    22d8:	60f8      	str	r0, [r7, #12]
    22da:	79fb      	ldrb	r3, [r7, #7]
    22dc:	613b      	str	r3, [r7, #16]
    22de:	e004      	b.n	22ea <gfx_scroll_left+0x4a>
    22e0:	68fb      	ldr	r3, [r7, #12]
    22e2:	1c5a      	adds	r2, r3, #1
    22e4:	60fa      	str	r2, [r7, #12]
    22e6:	2200      	movs	r2, #0
    22e8:	701a      	strb	r2, [r3, #0]
    22ea:	693b      	ldr	r3, [r7, #16]
    22ec:	1e5a      	subs	r2, r3, #1
    22ee:	613a      	str	r2, [r7, #16]
    22f0:	2b00      	cmp	r3, #0
    22f2:	d1f5      	bne.n	22e0 <gfx_scroll_left+0x40>
    22f4:	697b      	ldr	r3, [r7, #20]
    22f6:	3301      	adds	r3, #1
    22f8:	617b      	str	r3, [r7, #20]
    22fa:	697b      	ldr	r3, [r7, #20]
    22fc:	2b6f      	cmp	r3, #111	; 0x6f
    22fe:	ddd7      	ble.n	22b0 <gfx_scroll_left+0x10>
    2300:	bf00      	nop
    2302:	3718      	adds	r7, #24
    2304:	46bd      	mov	sp, r7
    2306:	bd80      	pop	{r7, pc}
    2308:	20002628 	.word	0x20002628

0000230c <gfx_scroll_right>:
    230c:	b580      	push	{r7, lr}
    230e:	b086      	sub	sp, #24
    2310:	af00      	add	r7, sp, #0
    2312:	4603      	mov	r3, r0
    2314:	71fb      	strb	r3, [r7, #7]
    2316:	2300      	movs	r3, #0
    2318:	617b      	str	r3, [r7, #20]
    231a:	e027      	b.n	236c <gfx_scroll_right+0x60>
    231c:	697b      	ldr	r3, [r7, #20]
    231e:	225a      	movs	r2, #90	; 0x5a
    2320:	fb02 f303 	mul.w	r3, r2, r3
    2324:	4a15      	ldr	r2, [pc, #84]	; (237c <gfx_scroll_right+0x70>)
    2326:	4413      	add	r3, r2
    2328:	335a      	adds	r3, #90	; 0x5a
    232a:	60fb      	str	r3, [r7, #12]
    232c:	79fb      	ldrb	r3, [r7, #7]
    232e:	425b      	negs	r3, r3
    2330:	68fa      	ldr	r2, [r7, #12]
    2332:	4413      	add	r3, r2
    2334:	60bb      	str	r3, [r7, #8]
    2336:	79fb      	ldrb	r3, [r7, #7]
    2338:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    233c:	613b      	str	r3, [r7, #16]
    233e:	693a      	ldr	r2, [r7, #16]
    2340:	68f9      	ldr	r1, [r7, #12]
    2342:	68b8      	ldr	r0, [r7, #8]
    2344:	f7ff ff0e 	bl	2164 <move_up>
    2348:	60f8      	str	r0, [r7, #12]
    234a:	79fb      	ldrb	r3, [r7, #7]
    234c:	613b      	str	r3, [r7, #16]
    234e:	e005      	b.n	235c <gfx_scroll_right+0x50>
    2350:	68fb      	ldr	r3, [r7, #12]
    2352:	3b01      	subs	r3, #1
    2354:	60fb      	str	r3, [r7, #12]
    2356:	68fb      	ldr	r3, [r7, #12]
    2358:	2200      	movs	r2, #0
    235a:	701a      	strb	r2, [r3, #0]
    235c:	693b      	ldr	r3, [r7, #16]
    235e:	1e5a      	subs	r2, r3, #1
    2360:	613a      	str	r2, [r7, #16]
    2362:	2b00      	cmp	r3, #0
    2364:	d1f4      	bne.n	2350 <gfx_scroll_right+0x44>
    2366:	697b      	ldr	r3, [r7, #20]
    2368:	3301      	adds	r3, #1
    236a:	617b      	str	r3, [r7, #20]
    236c:	697b      	ldr	r3, [r7, #20]
    236e:	2b6f      	cmp	r3, #111	; 0x6f
    2370:	ddd4      	ble.n	231c <gfx_scroll_right+0x10>
    2372:	bf00      	nop
    2374:	3718      	adds	r7, #24
    2376:	46bd      	mov	sp, r7
    2378:	bd80      	pop	{r7, pc}
    237a:	bf00      	nop
    237c:	20002628 	.word	0x20002628

00002380 <gfx_get_pixel>:
    2380:	b490      	push	{r4, r7}
    2382:	b082      	sub	sp, #8
    2384:	af00      	add	r7, sp, #0
    2386:	6078      	str	r0, [r7, #4]
    2388:	6039      	str	r1, [r7, #0]
    238a:	687b      	ldr	r3, [r7, #4]
    238c:	2b00      	cmp	r3, #0
    238e:	db08      	blt.n	23a2 <gfx_get_pixel+0x22>
    2390:	687b      	ldr	r3, [r7, #4]
    2392:	2bb3      	cmp	r3, #179	; 0xb3
    2394:	dc05      	bgt.n	23a2 <gfx_get_pixel+0x22>
    2396:	683b      	ldr	r3, [r7, #0]
    2398:	2b00      	cmp	r3, #0
    239a:	db02      	blt.n	23a2 <gfx_get_pixel+0x22>
    239c:	683b      	ldr	r3, [r7, #0]
    239e:	2b6f      	cmp	r3, #111	; 0x6f
    23a0:	dd01      	ble.n	23a6 <gfx_get_pixel+0x26>
    23a2:	23ff      	movs	r3, #255	; 0xff
    23a4:	e012      	b.n	23cc <gfx_get_pixel+0x4c>
    23a6:	683b      	ldr	r3, [r7, #0]
    23a8:	225a      	movs	r2, #90	; 0x5a
    23aa:	fb02 f203 	mul.w	r2, r2, r3
    23ae:	687b      	ldr	r3, [r7, #4]
    23b0:	105b      	asrs	r3, r3, #1
    23b2:	4413      	add	r3, r2
    23b4:	4a08      	ldr	r2, [pc, #32]	; (23d8 <gfx_get_pixel+0x58>)
    23b6:	5cd4      	ldrb	r4, [r2, r3]
    23b8:	687b      	ldr	r3, [r7, #4]
    23ba:	f003 0301 	and.w	r3, r3, #1
    23be:	2b00      	cmp	r3, #0
    23c0:	d101      	bne.n	23c6 <gfx_get_pixel+0x46>
    23c2:	0923      	lsrs	r3, r4, #4
    23c4:	b2dc      	uxtb	r4, r3
    23c6:	f004 030f 	and.w	r3, r4, #15
    23ca:	b2db      	uxtb	r3, r3
    23cc:	4618      	mov	r0, r3
    23ce:	3708      	adds	r7, #8
    23d0:	46bd      	mov	sp, r7
    23d2:	bc90      	pop	{r4, r7}
    23d4:	4770      	bx	lr
    23d6:	bf00      	nop
    23d8:	20002628 	.word	0x20002628

000023dc <gfx_sprite>:
    23dc:	b5f0      	push	{r4, r5, r6, r7, lr}
    23de:	b087      	sub	sp, #28
    23e0:	af00      	add	r7, sp, #0
    23e2:	60f8      	str	r0, [r7, #12]
    23e4:	60b9      	str	r1, [r7, #8]
    23e6:	4611      	mov	r1, r2
    23e8:	461a      	mov	r2, r3
    23ea:	460b      	mov	r3, r1
    23ec:	71fb      	strb	r3, [r7, #7]
    23ee:	4613      	mov	r3, r2
    23f0:	71bb      	strb	r3, [r7, #6]
    23f2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    23f4:	1c5a      	adds	r2, r3, #1
    23f6:	633a      	str	r2, [r7, #48]	; 0x30
    23f8:	781e      	ldrb	r6, [r3, #0]
    23fa:	68bd      	ldr	r5, [r7, #8]
    23fc:	e01b      	b.n	2436 <gfx_sprite+0x5a>
    23fe:	68fc      	ldr	r4, [r7, #12]
    2400:	e013      	b.n	242a <gfx_sprite+0x4e>
    2402:	0933      	lsrs	r3, r6, #4
    2404:	b2da      	uxtb	r2, r3
    2406:	2302      	movs	r3, #2
    2408:	4629      	mov	r1, r5
    240a:	4620      	mov	r0, r4
    240c:	f7ff fd7e 	bl	1f0c <gfx_blit>
    2410:	3401      	adds	r4, #1
    2412:	2302      	movs	r3, #2
    2414:	4632      	mov	r2, r6
    2416:	4629      	mov	r1, r5
    2418:	4620      	mov	r0, r4
    241a:	f7ff fd77 	bl	1f0c <gfx_blit>
    241e:	6178      	str	r0, [r7, #20]
    2420:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    2422:	1c5a      	adds	r2, r3, #1
    2424:	633a      	str	r2, [r7, #48]	; 0x30
    2426:	781e      	ldrb	r6, [r3, #0]
    2428:	3401      	adds	r4, #1
    242a:	79fa      	ldrb	r2, [r7, #7]
    242c:	68fb      	ldr	r3, [r7, #12]
    242e:	4413      	add	r3, r2
    2430:	42a3      	cmp	r3, r4
    2432:	dce6      	bgt.n	2402 <gfx_sprite+0x26>
    2434:	3501      	adds	r5, #1
    2436:	79ba      	ldrb	r2, [r7, #6]
    2438:	68bb      	ldr	r3, [r7, #8]
    243a:	4413      	add	r3, r2
    243c:	42ab      	cmp	r3, r5
    243e:	dcde      	bgt.n	23fe <gfx_sprite+0x22>
    2440:	697b      	ldr	r3, [r7, #20]
    2442:	4618      	mov	r0, r3
    2444:	371c      	adds	r7, #28
    2446:	46bd      	mov	sp, r7
    2448:	bdf0      	pop	{r4, r5, r6, r7, pc}
    244a:	bf00      	nop

0000244c <set_sysclock>:
    244c:	b480      	push	{r7}
    244e:	af00      	add	r7, sp, #0
    2450:	4a18      	ldr	r2, [pc, #96]	; (24b4 <set_sysclock+0x68>)
    2452:	4b18      	ldr	r3, [pc, #96]	; (24b4 <set_sysclock+0x68>)
    2454:	681b      	ldr	r3, [r3, #0]
    2456:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    245a:	6013      	str	r3, [r2, #0]
    245c:	bf00      	nop
    245e:	4b15      	ldr	r3, [pc, #84]	; (24b4 <set_sysclock+0x68>)
    2460:	681b      	ldr	r3, [r3, #0]
    2462:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    2466:	2b00      	cmp	r3, #0
    2468:	d0f9      	beq.n	245e <set_sysclock+0x12>
    246a:	4a12      	ldr	r2, [pc, #72]	; (24b4 <set_sysclock+0x68>)
    246c:	4b11      	ldr	r3, [pc, #68]	; (24b4 <set_sysclock+0x68>)
    246e:	685b      	ldr	r3, [r3, #4]
    2470:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    2474:	6053      	str	r3, [r2, #4]
    2476:	4a0f      	ldr	r2, [pc, #60]	; (24b4 <set_sysclock+0x68>)
    2478:	4b0e      	ldr	r3, [pc, #56]	; (24b4 <set_sysclock+0x68>)
    247a:	681b      	ldr	r3, [r3, #0]
    247c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    2480:	6013      	str	r3, [r2, #0]
    2482:	bf00      	nop
    2484:	4b0b      	ldr	r3, [pc, #44]	; (24b4 <set_sysclock+0x68>)
    2486:	681b      	ldr	r3, [r3, #0]
    2488:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    248c:	2b00      	cmp	r3, #0
    248e:	d0f9      	beq.n	2484 <set_sysclock+0x38>
    2490:	4a09      	ldr	r2, [pc, #36]	; (24b8 <set_sysclock+0x6c>)
    2492:	4b09      	ldr	r3, [pc, #36]	; (24b8 <set_sysclock+0x6c>)
    2494:	681b      	ldr	r3, [r3, #0]
    2496:	f043 0312 	orr.w	r3, r3, #18
    249a:	6013      	str	r3, [r2, #0]
    249c:	4a05      	ldr	r2, [pc, #20]	; (24b4 <set_sysclock+0x68>)
    249e:	4b05      	ldr	r3, [pc, #20]	; (24b4 <set_sysclock+0x68>)
    24a0:	685b      	ldr	r3, [r3, #4]
    24a2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    24a6:	f043 0302 	orr.w	r3, r3, #2
    24aa:	6053      	str	r3, [r2, #4]
    24ac:	bf00      	nop
    24ae:	46bd      	mov	sp, r7
    24b0:	bc80      	pop	{r7}
    24b2:	4770      	bx	lr
    24b4:	40021000 	.word	0x40021000
    24b8:	40022000 	.word	0x40022000

000024bc <draw_balls>:
    24bc:	b590      	push	{r4, r7, lr}
    24be:	b085      	sub	sp, #20
    24c0:	af02      	add	r7, sp, #8
    24c2:	f002 fd39 	bl	4f38 <frame_sync>
    24c6:	2300      	movs	r3, #0
    24c8:	607b      	str	r3, [r7, #4]
    24ca:	e022      	b.n	2512 <draw_balls+0x56>
    24cc:	4915      	ldr	r1, [pc, #84]	; (2524 <draw_balls+0x68>)
    24ce:	687a      	ldr	r2, [r7, #4]
    24d0:	4613      	mov	r3, r2
    24d2:	009b      	lsls	r3, r3, #2
    24d4:	4413      	add	r3, r2
    24d6:	009b      	lsls	r3, r3, #2
    24d8:	440b      	add	r3, r1
    24da:	6818      	ldr	r0, [r3, #0]
    24dc:	4911      	ldr	r1, [pc, #68]	; (2524 <draw_balls+0x68>)
    24de:	687a      	ldr	r2, [r7, #4]
    24e0:	4613      	mov	r3, r2
    24e2:	009b      	lsls	r3, r3, #2
    24e4:	4413      	add	r3, r2
    24e6:	009b      	lsls	r3, r3, #2
    24e8:	440b      	add	r3, r1
    24ea:	3304      	adds	r3, #4
    24ec:	681c      	ldr	r4, [r3, #0]
    24ee:	490d      	ldr	r1, [pc, #52]	; (2524 <draw_balls+0x68>)
    24f0:	687a      	ldr	r2, [r7, #4]
    24f2:	4613      	mov	r3, r2
    24f4:	009b      	lsls	r3, r3, #2
    24f6:	4413      	add	r3, r2
    24f8:	009b      	lsls	r3, r3, #2
    24fa:	440b      	add	r3, r1
    24fc:	3310      	adds	r3, #16
    24fe:	681b      	ldr	r3, [r3, #0]
    2500:	9300      	str	r3, [sp, #0]
    2502:	2308      	movs	r3, #8
    2504:	2208      	movs	r2, #8
    2506:	4621      	mov	r1, r4
    2508:	f7ff ff68 	bl	23dc <gfx_sprite>
    250c:	687b      	ldr	r3, [r7, #4]
    250e:	3301      	adds	r3, #1
    2510:	607b      	str	r3, [r7, #4]
    2512:	687b      	ldr	r3, [r7, #4]
    2514:	2b01      	cmp	r3, #1
    2516:	ddd9      	ble.n	24cc <draw_balls+0x10>
    2518:	f002 fd1e 	bl	4f58 <wait_sync_end>
    251c:	bf00      	nop
    251e:	370c      	adds	r7, #12
    2520:	46bd      	mov	sp, r7
    2522:	bd90      	pop	{r4, r7, pc}
    2524:	20002600 	.word	0x20002600

00002528 <isqrt>:
    2528:	b580      	push	{r7, lr}
    252a:	b084      	sub	sp, #16
    252c:	af00      	add	r7, sp, #0
    252e:	6078      	str	r0, [r7, #4]
    2530:	687b      	ldr	r3, [r7, #4]
    2532:	2b01      	cmp	r3, #1
    2534:	dc01      	bgt.n	253a <isqrt+0x12>
    2536:	687b      	ldr	r3, [r7, #4]
    2538:	e014      	b.n	2564 <isqrt+0x3c>
    253a:	687b      	ldr	r3, [r7, #4]
    253c:	109b      	asrs	r3, r3, #2
    253e:	4618      	mov	r0, r3
    2540:	f7ff fff2 	bl	2528 <isqrt>
    2544:	4603      	mov	r3, r0
    2546:	005b      	lsls	r3, r3, #1
    2548:	60fb      	str	r3, [r7, #12]
    254a:	68fb      	ldr	r3, [r7, #12]
    254c:	3301      	adds	r3, #1
    254e:	60bb      	str	r3, [r7, #8]
    2550:	68bb      	ldr	r3, [r7, #8]
    2552:	68ba      	ldr	r2, [r7, #8]
    2554:	fb02 f203 	mul.w	r2, r2, r3
    2558:	687b      	ldr	r3, [r7, #4]
    255a:	429a      	cmp	r2, r3
    255c:	dd01      	ble.n	2562 <isqrt+0x3a>
    255e:	68fb      	ldr	r3, [r7, #12]
    2560:	e000      	b.n	2564 <isqrt+0x3c>
    2562:	68bb      	ldr	r3, [r7, #8]
    2564:	4618      	mov	r0, r3
    2566:	3710      	adds	r7, #16
    2568:	46bd      	mov	sp, r7
    256a:	bd80      	pop	{r7, pc}

0000256c <distance>:
    256c:	b580      	push	{r7, lr}
    256e:	b082      	sub	sp, #8
    2570:	af00      	add	r7, sp, #0
    2572:	6078      	str	r0, [r7, #4]
    2574:	6039      	str	r1, [r7, #0]
    2576:	687b      	ldr	r3, [r7, #4]
    2578:	681b      	ldr	r3, [r3, #0]
    257a:	683a      	ldr	r2, [r7, #0]
    257c:	6812      	ldr	r2, [r2, #0]
    257e:	fb02 f203 	mul.w	r2, r2, r3
    2582:	687b      	ldr	r3, [r7, #4]
    2584:	685b      	ldr	r3, [r3, #4]
    2586:	6839      	ldr	r1, [r7, #0]
    2588:	6849      	ldr	r1, [r1, #4]
    258a:	fb01 f303 	mul.w	r3, r1, r3
    258e:	4413      	add	r3, r2
    2590:	2b00      	cmp	r3, #0
    2592:	bfb8      	it	lt
    2594:	425b      	neglt	r3, r3
    2596:	4618      	mov	r0, r3
    2598:	f7ff ffc6 	bl	2528 <isqrt>
    259c:	4603      	mov	r3, r0
    259e:	4618      	mov	r0, r3
    25a0:	3708      	adds	r7, #8
    25a2:	46bd      	mov	sp, r7
    25a4:	bd80      	pop	{r7, pc}

000025a6 <move_balls>:
    25a6:	b580      	push	{r7, lr}
    25a8:	b082      	sub	sp, #8
    25aa:	af00      	add	r7, sp, #0
    25ac:	f002 fd70 	bl	5090 <get_video_params>
    25b0:	6038      	str	r0, [r7, #0]
    25b2:	2300      	movs	r3, #0
    25b4:	607b      	str	r3, [r7, #4]
    25b6:	e0c3      	b.n	2740 <move_balls+0x19a>
    25b8:	4979      	ldr	r1, [pc, #484]	; (27a0 <move_balls+0x1fa>)
    25ba:	687a      	ldr	r2, [r7, #4]
    25bc:	4613      	mov	r3, r2
    25be:	009b      	lsls	r3, r3, #2
    25c0:	4413      	add	r3, r2
    25c2:	009b      	lsls	r3, r3, #2
    25c4:	440b      	add	r3, r1
    25c6:	6819      	ldr	r1, [r3, #0]
    25c8:	4875      	ldr	r0, [pc, #468]	; (27a0 <move_balls+0x1fa>)
    25ca:	687a      	ldr	r2, [r7, #4]
    25cc:	4613      	mov	r3, r2
    25ce:	009b      	lsls	r3, r3, #2
    25d0:	4413      	add	r3, r2
    25d2:	009b      	lsls	r3, r3, #2
    25d4:	4403      	add	r3, r0
    25d6:	3308      	adds	r3, #8
    25d8:	681b      	ldr	r3, [r3, #0]
    25da:	4419      	add	r1, r3
    25dc:	4870      	ldr	r0, [pc, #448]	; (27a0 <move_balls+0x1fa>)
    25de:	687a      	ldr	r2, [r7, #4]
    25e0:	4613      	mov	r3, r2
    25e2:	009b      	lsls	r3, r3, #2
    25e4:	4413      	add	r3, r2
    25e6:	009b      	lsls	r3, r3, #2
    25e8:	4403      	add	r3, r0
    25ea:	6019      	str	r1, [r3, #0]
    25ec:	496c      	ldr	r1, [pc, #432]	; (27a0 <move_balls+0x1fa>)
    25ee:	687a      	ldr	r2, [r7, #4]
    25f0:	4613      	mov	r3, r2
    25f2:	009b      	lsls	r3, r3, #2
    25f4:	4413      	add	r3, r2
    25f6:	009b      	lsls	r3, r3, #2
    25f8:	440b      	add	r3, r1
    25fa:	681b      	ldr	r3, [r3, #0]
    25fc:	f113 0f07 	cmn.w	r3, #7
    2600:	db0b      	blt.n	261a <move_balls+0x74>
    2602:	4967      	ldr	r1, [pc, #412]	; (27a0 <move_balls+0x1fa>)
    2604:	687a      	ldr	r2, [r7, #4]
    2606:	4613      	mov	r3, r2
    2608:	009b      	lsls	r3, r3, #2
    260a:	4413      	add	r3, r2
    260c:	009b      	lsls	r3, r3, #2
    260e:	440b      	add	r3, r1
    2610:	681b      	ldr	r3, [r3, #0]
    2612:	683a      	ldr	r2, [r7, #0]
    2614:	8992      	ldrh	r2, [r2, #12]
    2616:	4293      	cmp	r3, r2
    2618:	db2c      	blt.n	2674 <move_balls+0xce>
    261a:	4961      	ldr	r1, [pc, #388]	; (27a0 <move_balls+0x1fa>)
    261c:	687a      	ldr	r2, [r7, #4]
    261e:	4613      	mov	r3, r2
    2620:	009b      	lsls	r3, r3, #2
    2622:	4413      	add	r3, r2
    2624:	009b      	lsls	r3, r3, #2
    2626:	440b      	add	r3, r1
    2628:	3308      	adds	r3, #8
    262a:	681b      	ldr	r3, [r3, #0]
    262c:	4259      	negs	r1, r3
    262e:	485c      	ldr	r0, [pc, #368]	; (27a0 <move_balls+0x1fa>)
    2630:	687a      	ldr	r2, [r7, #4]
    2632:	4613      	mov	r3, r2
    2634:	009b      	lsls	r3, r3, #2
    2636:	4413      	add	r3, r2
    2638:	009b      	lsls	r3, r3, #2
    263a:	4403      	add	r3, r0
    263c:	3308      	adds	r3, #8
    263e:	6019      	str	r1, [r3, #0]
    2640:	4957      	ldr	r1, [pc, #348]	; (27a0 <move_balls+0x1fa>)
    2642:	687a      	ldr	r2, [r7, #4]
    2644:	4613      	mov	r3, r2
    2646:	009b      	lsls	r3, r3, #2
    2648:	4413      	add	r3, r2
    264a:	009b      	lsls	r3, r3, #2
    264c:	440b      	add	r3, r1
    264e:	6819      	ldr	r1, [r3, #0]
    2650:	4853      	ldr	r0, [pc, #332]	; (27a0 <move_balls+0x1fa>)
    2652:	687a      	ldr	r2, [r7, #4]
    2654:	4613      	mov	r3, r2
    2656:	009b      	lsls	r3, r3, #2
    2658:	4413      	add	r3, r2
    265a:	009b      	lsls	r3, r3, #2
    265c:	4403      	add	r3, r0
    265e:	3308      	adds	r3, #8
    2660:	681b      	ldr	r3, [r3, #0]
    2662:	4419      	add	r1, r3
    2664:	484e      	ldr	r0, [pc, #312]	; (27a0 <move_balls+0x1fa>)
    2666:	687a      	ldr	r2, [r7, #4]
    2668:	4613      	mov	r3, r2
    266a:	009b      	lsls	r3, r3, #2
    266c:	4413      	add	r3, r2
    266e:	009b      	lsls	r3, r3, #2
    2670:	4403      	add	r3, r0
    2672:	6019      	str	r1, [r3, #0]
    2674:	494a      	ldr	r1, [pc, #296]	; (27a0 <move_balls+0x1fa>)
    2676:	687a      	ldr	r2, [r7, #4]
    2678:	4613      	mov	r3, r2
    267a:	009b      	lsls	r3, r3, #2
    267c:	4413      	add	r3, r2
    267e:	009b      	lsls	r3, r3, #2
    2680:	440b      	add	r3, r1
    2682:	3304      	adds	r3, #4
    2684:	6819      	ldr	r1, [r3, #0]
    2686:	4846      	ldr	r0, [pc, #280]	; (27a0 <move_balls+0x1fa>)
    2688:	687a      	ldr	r2, [r7, #4]
    268a:	4613      	mov	r3, r2
    268c:	009b      	lsls	r3, r3, #2
    268e:	4413      	add	r3, r2
    2690:	009b      	lsls	r3, r3, #2
    2692:	4403      	add	r3, r0
    2694:	330c      	adds	r3, #12
    2696:	681b      	ldr	r3, [r3, #0]
    2698:	4419      	add	r1, r3
    269a:	4841      	ldr	r0, [pc, #260]	; (27a0 <move_balls+0x1fa>)
    269c:	687a      	ldr	r2, [r7, #4]
    269e:	4613      	mov	r3, r2
    26a0:	009b      	lsls	r3, r3, #2
    26a2:	4413      	add	r3, r2
    26a4:	009b      	lsls	r3, r3, #2
    26a6:	4403      	add	r3, r0
    26a8:	3304      	adds	r3, #4
    26aa:	6019      	str	r1, [r3, #0]
    26ac:	493c      	ldr	r1, [pc, #240]	; (27a0 <move_balls+0x1fa>)
    26ae:	687a      	ldr	r2, [r7, #4]
    26b0:	4613      	mov	r3, r2
    26b2:	009b      	lsls	r3, r3, #2
    26b4:	4413      	add	r3, r2
    26b6:	009b      	lsls	r3, r3, #2
    26b8:	440b      	add	r3, r1
    26ba:	3304      	adds	r3, #4
    26bc:	681b      	ldr	r3, [r3, #0]
    26be:	2b0f      	cmp	r3, #15
    26c0:	dd0c      	ble.n	26dc <move_balls+0x136>
    26c2:	4937      	ldr	r1, [pc, #220]	; (27a0 <move_balls+0x1fa>)
    26c4:	687a      	ldr	r2, [r7, #4]
    26c6:	4613      	mov	r3, r2
    26c8:	009b      	lsls	r3, r3, #2
    26ca:	4413      	add	r3, r2
    26cc:	009b      	lsls	r3, r3, #2
    26ce:	440b      	add	r3, r1
    26d0:	3304      	adds	r3, #4
    26d2:	681b      	ldr	r3, [r3, #0]
    26d4:	683a      	ldr	r2, [r7, #0]
    26d6:	89d2      	ldrh	r2, [r2, #14]
    26d8:	4293      	cmp	r3, r2
    26da:	db2e      	blt.n	273a <move_balls+0x194>
    26dc:	4930      	ldr	r1, [pc, #192]	; (27a0 <move_balls+0x1fa>)
    26de:	687a      	ldr	r2, [r7, #4]
    26e0:	4613      	mov	r3, r2
    26e2:	009b      	lsls	r3, r3, #2
    26e4:	4413      	add	r3, r2
    26e6:	009b      	lsls	r3, r3, #2
    26e8:	440b      	add	r3, r1
    26ea:	330c      	adds	r3, #12
    26ec:	681b      	ldr	r3, [r3, #0]
    26ee:	4259      	negs	r1, r3
    26f0:	482b      	ldr	r0, [pc, #172]	; (27a0 <move_balls+0x1fa>)
    26f2:	687a      	ldr	r2, [r7, #4]
    26f4:	4613      	mov	r3, r2
    26f6:	009b      	lsls	r3, r3, #2
    26f8:	4413      	add	r3, r2
    26fa:	009b      	lsls	r3, r3, #2
    26fc:	4403      	add	r3, r0
    26fe:	330c      	adds	r3, #12
    2700:	6019      	str	r1, [r3, #0]
    2702:	4927      	ldr	r1, [pc, #156]	; (27a0 <move_balls+0x1fa>)
    2704:	687a      	ldr	r2, [r7, #4]
    2706:	4613      	mov	r3, r2
    2708:	009b      	lsls	r3, r3, #2
    270a:	4413      	add	r3, r2
    270c:	009b      	lsls	r3, r3, #2
    270e:	440b      	add	r3, r1
    2710:	3304      	adds	r3, #4
    2712:	6819      	ldr	r1, [r3, #0]
    2714:	4822      	ldr	r0, [pc, #136]	; (27a0 <move_balls+0x1fa>)
    2716:	687a      	ldr	r2, [r7, #4]
    2718:	4613      	mov	r3, r2
    271a:	009b      	lsls	r3, r3, #2
    271c:	4413      	add	r3, r2
    271e:	009b      	lsls	r3, r3, #2
    2720:	4403      	add	r3, r0
    2722:	330c      	adds	r3, #12
    2724:	681b      	ldr	r3, [r3, #0]
    2726:	4419      	add	r1, r3
    2728:	481d      	ldr	r0, [pc, #116]	; (27a0 <move_balls+0x1fa>)
    272a:	687a      	ldr	r2, [r7, #4]
    272c:	4613      	mov	r3, r2
    272e:	009b      	lsls	r3, r3, #2
    2730:	4413      	add	r3, r2
    2732:	009b      	lsls	r3, r3, #2
    2734:	4403      	add	r3, r0
    2736:	3304      	adds	r3, #4
    2738:	6019      	str	r1, [r3, #0]
    273a:	687b      	ldr	r3, [r7, #4]
    273c:	3301      	adds	r3, #1
    273e:	607b      	str	r3, [r7, #4]
    2740:	687b      	ldr	r3, [r7, #4]
    2742:	2b01      	cmp	r3, #1
    2744:	f77f af38 	ble.w	25b8 <move_balls+0x12>
    2748:	4916      	ldr	r1, [pc, #88]	; (27a4 <move_balls+0x1fe>)
    274a:	4815      	ldr	r0, [pc, #84]	; (27a0 <move_balls+0x1fa>)
    274c:	f7ff ff0e 	bl	256c <distance>
    2750:	4603      	mov	r3, r0
    2752:	2b07      	cmp	r3, #7
    2754:	d81f      	bhi.n	2796 <move_balls+0x1f0>
    2756:	4b12      	ldr	r3, [pc, #72]	; (27a0 <move_balls+0x1fa>)
    2758:	689a      	ldr	r2, [r3, #8]
    275a:	4b11      	ldr	r3, [pc, #68]	; (27a0 <move_balls+0x1fa>)
    275c:	69db      	ldr	r3, [r3, #28]
    275e:	429a      	cmp	r2, r3
    2760:	d009      	beq.n	2776 <move_balls+0x1d0>
    2762:	4b0f      	ldr	r3, [pc, #60]	; (27a0 <move_balls+0x1fa>)
    2764:	689b      	ldr	r3, [r3, #8]
    2766:	607b      	str	r3, [r7, #4]
    2768:	4b0d      	ldr	r3, [pc, #52]	; (27a0 <move_balls+0x1fa>)
    276a:	69db      	ldr	r3, [r3, #28]
    276c:	4a0c      	ldr	r2, [pc, #48]	; (27a0 <move_balls+0x1fa>)
    276e:	6093      	str	r3, [r2, #8]
    2770:	4a0b      	ldr	r2, [pc, #44]	; (27a0 <move_balls+0x1fa>)
    2772:	687b      	ldr	r3, [r7, #4]
    2774:	61d3      	str	r3, [r2, #28]
    2776:	4b0a      	ldr	r3, [pc, #40]	; (27a0 <move_balls+0x1fa>)
    2778:	68da      	ldr	r2, [r3, #12]
    277a:	4b09      	ldr	r3, [pc, #36]	; (27a0 <move_balls+0x1fa>)
    277c:	6a1b      	ldr	r3, [r3, #32]
    277e:	429a      	cmp	r2, r3
    2780:	d009      	beq.n	2796 <move_balls+0x1f0>
    2782:	4b07      	ldr	r3, [pc, #28]	; (27a0 <move_balls+0x1fa>)
    2784:	68db      	ldr	r3, [r3, #12]
    2786:	607b      	str	r3, [r7, #4]
    2788:	4b05      	ldr	r3, [pc, #20]	; (27a0 <move_balls+0x1fa>)
    278a:	6a1b      	ldr	r3, [r3, #32]
    278c:	4a04      	ldr	r2, [pc, #16]	; (27a0 <move_balls+0x1fa>)
    278e:	60d3      	str	r3, [r2, #12]
    2790:	4a03      	ldr	r2, [pc, #12]	; (27a0 <move_balls+0x1fa>)
    2792:	687b      	ldr	r3, [r7, #4]
    2794:	6213      	str	r3, [r2, #32]
    2796:	bf00      	nop
    2798:	3708      	adds	r7, #8
    279a:	46bd      	mov	sp, r7
    279c:	bd80      	pop	{r7, pc}
    279e:	bf00      	nop
    27a0:	20002600 	.word	0x20002600
    27a4:	20002614 	.word	0x20002614

000027a8 <init_balls>:
    27a8:	b580      	push	{r7, lr}
    27aa:	b082      	sub	sp, #8
    27ac:	af00      	add	r7, sp, #0
    27ae:	f002 fc6f 	bl	5090 <get_video_params>
    27b2:	6038      	str	r0, [r7, #0]
    27b4:	2300      	movs	r3, #0
    27b6:	607b      	str	r3, [r7, #4]
    27b8:	e048      	b.n	284c <init_balls+0xa4>
    27ba:	f7fd fe9f 	bl	4fc <rand>
    27be:	4603      	mov	r3, r0
    27c0:	683a      	ldr	r2, [r7, #0]
    27c2:	8992      	ldrh	r2, [r2, #12]
    27c4:	fb93 f1f2 	sdiv	r1, r3, r2
    27c8:	fb02 f201 	mul.w	r2, r2, r1
    27cc:	1a99      	subs	r1, r3, r2
    27ce:	4823      	ldr	r0, [pc, #140]	; (285c <init_balls+0xb4>)
    27d0:	687a      	ldr	r2, [r7, #4]
    27d2:	4613      	mov	r3, r2
    27d4:	009b      	lsls	r3, r3, #2
    27d6:	4413      	add	r3, r2
    27d8:	009b      	lsls	r3, r3, #2
    27da:	4403      	add	r3, r0
    27dc:	6019      	str	r1, [r3, #0]
    27de:	f7fd fe8d 	bl	4fc <rand>
    27e2:	4602      	mov	r2, r0
    27e4:	683b      	ldr	r3, [r7, #0]
    27e6:	89db      	ldrh	r3, [r3, #14]
    27e8:	3b10      	subs	r3, #16
    27ea:	fb92 f1f3 	sdiv	r1, r2, r3
    27ee:	fb03 f301 	mul.w	r3, r3, r1
    27f2:	1ad3      	subs	r3, r2, r3
    27f4:	f103 0110 	add.w	r1, r3, #16
    27f8:	4818      	ldr	r0, [pc, #96]	; (285c <init_balls+0xb4>)
    27fa:	687a      	ldr	r2, [r7, #4]
    27fc:	4613      	mov	r3, r2
    27fe:	009b      	lsls	r3, r3, #2
    2800:	4413      	add	r3, r2
    2802:	009b      	lsls	r3, r3, #2
    2804:	4403      	add	r3, r0
    2806:	3304      	adds	r3, #4
    2808:	6019      	str	r1, [r3, #0]
    280a:	4914      	ldr	r1, [pc, #80]	; (285c <init_balls+0xb4>)
    280c:	687a      	ldr	r2, [r7, #4]
    280e:	4613      	mov	r3, r2
    2810:	009b      	lsls	r3, r3, #2
    2812:	4413      	add	r3, r2
    2814:	009b      	lsls	r3, r3, #2
    2816:	440b      	add	r3, r1
    2818:	3308      	adds	r3, #8
    281a:	2201      	movs	r2, #1
    281c:	601a      	str	r2, [r3, #0]
    281e:	490f      	ldr	r1, [pc, #60]	; (285c <init_balls+0xb4>)
    2820:	687a      	ldr	r2, [r7, #4]
    2822:	4613      	mov	r3, r2
    2824:	009b      	lsls	r3, r3, #2
    2826:	4413      	add	r3, r2
    2828:	009b      	lsls	r3, r3, #2
    282a:	440b      	add	r3, r1
    282c:	330c      	adds	r3, #12
    282e:	2201      	movs	r2, #1
    2830:	601a      	str	r2, [r3, #0]
    2832:	490a      	ldr	r1, [pc, #40]	; (285c <init_balls+0xb4>)
    2834:	687a      	ldr	r2, [r7, #4]
    2836:	4613      	mov	r3, r2
    2838:	009b      	lsls	r3, r3, #2
    283a:	4413      	add	r3, r2
    283c:	009b      	lsls	r3, r3, #2
    283e:	440b      	add	r3, r1
    2840:	3310      	adds	r3, #16
    2842:	4a07      	ldr	r2, [pc, #28]	; (2860 <init_balls+0xb8>)
    2844:	601a      	str	r2, [r3, #0]
    2846:	687b      	ldr	r3, [r7, #4]
    2848:	3301      	adds	r3, #1
    284a:	607b      	str	r3, [r7, #4]
    284c:	687b      	ldr	r3, [r7, #4]
    284e:	2b01      	cmp	r3, #1
    2850:	ddb3      	ble.n	27ba <init_balls+0x12>
    2852:	bf00      	nop
    2854:	3708      	adds	r7, #8
    2856:	46bd      	mov	sp, r7
    2858:	bd80      	pop	{r7, pc}
    285a:	bf00      	nop
    285c:	20002600 	.word	0x20002600
    2860:	00005550 	.word	0x00005550

00002864 <color_bars>:
    2864:	b580      	push	{r7, lr}
    2866:	b084      	sub	sp, #16
    2868:	af00      	add	r7, sp, #0
    286a:	2300      	movs	r3, #0
    286c:	71fb      	strb	r3, [r7, #7]
    286e:	f002 fc0f 	bl	5090 <get_video_params>
    2872:	6038      	str	r0, [r7, #0]
    2874:	683b      	ldr	r3, [r7, #0]
    2876:	89db      	ldrh	r3, [r3, #14]
    2878:	089b      	lsrs	r3, r3, #2
    287a:	b29b      	uxth	r3, r3
    287c:	461a      	mov	r2, r3
    287e:	4613      	mov	r3, r2
    2880:	005b      	lsls	r3, r3, #1
    2882:	4413      	add	r3, r2
    2884:	60bb      	str	r3, [r7, #8]
    2886:	e01b      	b.n	28c0 <color_bars+0x5c>
    2888:	2310      	movs	r3, #16
    288a:	71fb      	strb	r3, [r7, #7]
    288c:	2300      	movs	r3, #0
    288e:	60fb      	str	r3, [r7, #12]
    2890:	e010      	b.n	28b4 <color_bars+0x50>
    2892:	68fb      	ldr	r3, [r7, #12]
    2894:	f003 0307 	and.w	r3, r3, #7
    2898:	2b00      	cmp	r3, #0
    289a:	d102      	bne.n	28a2 <color_bars+0x3e>
    289c:	79fb      	ldrb	r3, [r7, #7]
    289e:	3b01      	subs	r3, #1
    28a0:	71fb      	strb	r3, [r7, #7]
    28a2:	79fb      	ldrb	r3, [r7, #7]
    28a4:	461a      	mov	r2, r3
    28a6:	68b9      	ldr	r1, [r7, #8]
    28a8:	68f8      	ldr	r0, [r7, #12]
    28aa:	f7ff fba7 	bl	1ffc <gfx_plot>
    28ae:	68fb      	ldr	r3, [r7, #12]
    28b0:	3301      	adds	r3, #1
    28b2:	60fb      	str	r3, [r7, #12]
    28b4:	68fb      	ldr	r3, [r7, #12]
    28b6:	2b7f      	cmp	r3, #127	; 0x7f
    28b8:	ddeb      	ble.n	2892 <color_bars+0x2e>
    28ba:	68bb      	ldr	r3, [r7, #8]
    28bc:	3301      	adds	r3, #1
    28be:	60bb      	str	r3, [r7, #8]
    28c0:	683b      	ldr	r3, [r7, #0]
    28c2:	89db      	ldrh	r3, [r3, #14]
    28c4:	461a      	mov	r2, r3
    28c6:	68bb      	ldr	r3, [r7, #8]
    28c8:	429a      	cmp	r2, r3
    28ca:	dcdd      	bgt.n	2888 <color_bars+0x24>
    28cc:	bf00      	nop
    28ce:	3710      	adds	r7, #16
    28d0:	46bd      	mov	sp, r7
    28d2:	bd80      	pop	{r7, pc}

000028d4 <vertical_bars>:
    28d4:	b580      	push	{r7, lr}
    28d6:	b082      	sub	sp, #8
    28d8:	af00      	add	r7, sp, #0
    28da:	f002 fbd9 	bl	5090 <get_video_params>
    28de:	6038      	str	r0, [r7, #0]
    28e0:	2310      	movs	r3, #16
    28e2:	607b      	str	r3, [r7, #4]
    28e4:	e00f      	b.n	2906 <vertical_bars+0x32>
    28e6:	220f      	movs	r2, #15
    28e8:	6879      	ldr	r1, [r7, #4]
    28ea:	2000      	movs	r0, #0
    28ec:	f7ff fb86 	bl	1ffc <gfx_plot>
    28f0:	683b      	ldr	r3, [r7, #0]
    28f2:	899b      	ldrh	r3, [r3, #12]
    28f4:	3b01      	subs	r3, #1
    28f6:	220f      	movs	r2, #15
    28f8:	6879      	ldr	r1, [r7, #4]
    28fa:	4618      	mov	r0, r3
    28fc:	f7ff fb7e 	bl	1ffc <gfx_plot>
    2900:	687b      	ldr	r3, [r7, #4]
    2902:	3301      	adds	r3, #1
    2904:	607b      	str	r3, [r7, #4]
    2906:	683b      	ldr	r3, [r7, #0]
    2908:	89db      	ldrh	r3, [r3, #14]
    290a:	461a      	mov	r2, r3
    290c:	687b      	ldr	r3, [r7, #4]
    290e:	429a      	cmp	r2, r3
    2910:	dce9      	bgt.n	28e6 <vertical_bars+0x12>
    2912:	bf00      	nop
    2914:	3708      	adds	r7, #8
    2916:	46bd      	mov	sp, r7
    2918:	bd80      	pop	{r7, pc}

0000291a <video_test>:
    291a:	b580      	push	{r7, lr}
    291c:	b082      	sub	sp, #8
    291e:	af00      	add	r7, sp, #0
    2920:	2300      	movs	r3, #0
    2922:	71fb      	strb	r3, [r7, #7]
    2924:	79fb      	ldrb	r3, [r7, #7]
    2926:	4618      	mov	r0, r3
    2928:	f002 fb26 	bl	4f78 <set_video_mode>
    292c:	f7ff ff9a 	bl	2864 <color_bars>
    2930:	f7ff ffd0 	bl	28d4 <vertical_bars>
    2934:	4b2f      	ldr	r3, [pc, #188]	; (29f4 <video_test+0xda>)
    2936:	2110      	movs	r1, #16
    2938:	4618      	mov	r0, r3
    293a:	f001 ff3b 	bl	47b4 <print_int>
    293e:	4b2e      	ldr	r3, [pc, #184]	; (29f8 <video_test+0xde>)
    2940:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2944:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2948:	210a      	movs	r1, #10
    294a:	4618      	mov	r0, r3
    294c:	f001 ff32 	bl	47b4 <print_int>
    2950:	f7ff ff2a 	bl	27a8 <init_balls>
    2954:	2300      	movs	r3, #0
    2956:	71fb      	strb	r3, [r7, #7]
    2958:	f7ff fdb0 	bl	24bc <draw_balls>
    295c:	f7ff fdae 	bl	24bc <draw_balls>
    2960:	f7ff fe21 	bl	25a6 <move_balls>
    2964:	2009      	movs	r0, #9
    2966:	f7fe ff75 	bl	1854 <btn_query_down>
    296a:	4603      	mov	r3, r0
    296c:	2b00      	cmp	r3, #0
    296e:	d033      	beq.n	29d8 <video_test+0xbe>
    2970:	79fb      	ldrb	r3, [r7, #7]
    2972:	3301      	adds	r3, #1
    2974:	71fb      	strb	r3, [r7, #7]
    2976:	79fb      	ldrb	r3, [r7, #7]
    2978:	f003 0303 	and.w	r3, r3, #3
    297c:	71fb      	strb	r3, [r7, #7]
    297e:	79fb      	ldrb	r3, [r7, #7]
    2980:	4618      	mov	r0, r3
    2982:	f002 faf9 	bl	4f78 <set_video_mode>
    2986:	79fb      	ldrb	r3, [r7, #7]
    2988:	2b03      	cmp	r3, #3
    298a:	d81d      	bhi.n	29c8 <video_test+0xae>
    298c:	a201      	add	r2, pc, #4	; (adr r2, 2994 <video_test+0x7a>)
    298e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2992:	bf00      	nop
    2994:	000029a5 	.word	0x000029a5
    2998:	000029b1 	.word	0x000029b1
    299c:	000029b9 	.word	0x000029b9
    29a0:	000029c1 	.word	0x000029c1
    29a4:	4815      	ldr	r0, [pc, #84]	; (29fc <video_test+0xe2>)
    29a6:	f001 fed5 	bl	4754 <print>
    29aa:	f7ff ff5b 	bl	2864 <color_bars>
    29ae:	e00b      	b.n	29c8 <video_test+0xae>
    29b0:	4813      	ldr	r0, [pc, #76]	; (2a00 <video_test+0xe6>)
    29b2:	f001 fecf 	bl	4754 <print>
    29b6:	e007      	b.n	29c8 <video_test+0xae>
    29b8:	4812      	ldr	r0, [pc, #72]	; (2a04 <video_test+0xea>)
    29ba:	f001 fecb 	bl	4754 <print>
    29be:	e003      	b.n	29c8 <video_test+0xae>
    29c0:	4811      	ldr	r0, [pc, #68]	; (2a08 <video_test+0xee>)
    29c2:	f001 fec7 	bl	4754 <print>
    29c6:	bf00      	nop
    29c8:	f7ff ff84 	bl	28d4 <vertical_bars>
    29cc:	f7ff feec 	bl	27a8 <init_balls>
    29d0:	2009      	movs	r0, #9
    29d2:	f7fe ff83 	bl	18dc <btn_wait_up>
    29d6:	e7bf      	b.n	2958 <video_test+0x3e>
    29d8:	200b      	movs	r0, #11
    29da:	f7fe ff3b 	bl	1854 <btn_query_down>
    29de:	4603      	mov	r3, r0
    29e0:	2b00      	cmp	r3, #0
    29e2:	d0b9      	beq.n	2958 <video_test+0x3e>
    29e4:	200b      	movs	r0, #11
    29e6:	f7fe ff79 	bl	18dc <btn_wait_up>
    29ea:	bf00      	nop
    29ec:	bf00      	nop
    29ee:	3708      	adds	r7, #8
    29f0:	46bd      	mov	sp, r7
    29f2:	bd80      	pop	{r7, pc}
    29f4:	00005800 	.word	0x00005800
    29f8:	20004d90 	.word	0x20004d90
    29fc:	00005570 	.word	0x00005570
    2a00:	00005590 	.word	0x00005590
    2a04:	000055ac 	.word	0x000055ac
    2a08:	000055c4 	.word	0x000055c4

00002a0c <sound_test>:
    2a0c:	b580      	push	{r7, lr}
    2a0e:	b082      	sub	sp, #8
    2a10:	af00      	add	r7, sp, #0
    2a12:	23ff      	movs	r3, #255	; 0xff
    2a14:	71fb      	strb	r3, [r7, #7]
    2a16:	f7ff fb87 	bl	2128 <gfx_cls>
    2a1a:	482a      	ldr	r0, [pc, #168]	; (2ac4 <sound_test+0xb8>)
    2a1c:	f001 fe9a 	bl	4754 <print>
    2a20:	e041      	b.n	2aa6 <sound_test+0x9a>
    2a22:	f7fe ff83 	bl	192c <btn_wait_any>
    2a26:	4603      	mov	r3, r0
    2a28:	71fb      	strb	r3, [r7, #7]
    2a2a:	79fb      	ldrb	r3, [r7, #7]
    2a2c:	3b05      	subs	r3, #5
    2a2e:	2b08      	cmp	r3, #8
    2a30:	d834      	bhi.n	2a9c <sound_test+0x90>
    2a32:	a201      	add	r2, pc, #4	; (adr r2, 2a38 <sound_test+0x2c>)
    2a34:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2a38:	00002a5d 	.word	0x00002a5d
    2a3c:	00002a9d 	.word	0x00002a9d
    2a40:	00002a6d 	.word	0x00002a6d
    2a44:	00002a65 	.word	0x00002a65
    2a48:	00002a75 	.word	0x00002a75
    2a4c:	00002a7d 	.word	0x00002a7d
    2a50:	00002a85 	.word	0x00002a85
    2a54:	00002a8d 	.word	0x00002a8d
    2a58:	00002a95 	.word	0x00002a95
    2a5c:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2a60:	80bb      	strh	r3, [r7, #4]
    2a62:	e01b      	b.n	2a9c <sound_test+0x90>
    2a64:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2a68:	80bb      	strh	r3, [r7, #4]
    2a6a:	e017      	b.n	2a9c <sound_test+0x90>
    2a6c:	f240 13ed 	movw	r3, #493	; 0x1ed
    2a70:	80bb      	strh	r3, [r7, #4]
    2a72:	e013      	b.n	2a9c <sound_test+0x90>
    2a74:	f240 230b 	movw	r3, #523	; 0x20b
    2a78:	80bb      	strh	r3, [r7, #4]
    2a7a:	e00f      	b.n	2a9c <sound_test+0x90>
    2a7c:	f240 232a 	movw	r3, #554	; 0x22a
    2a80:	80bb      	strh	r3, [r7, #4]
    2a82:	e00b      	b.n	2a9c <sound_test+0x90>
    2a84:	f240 234b 	movw	r3, #587	; 0x24b
    2a88:	80bb      	strh	r3, [r7, #4]
    2a8a:	e007      	b.n	2a9c <sound_test+0x90>
    2a8c:	f240 236e 	movw	r3, #622	; 0x26e
    2a90:	80bb      	strh	r3, [r7, #4]
    2a92:	e003      	b.n	2a9c <sound_test+0x90>
    2a94:	f240 2393 	movw	r3, #659	; 0x293
    2a98:	80bb      	strh	r3, [r7, #4]
    2a9a:	bf00      	nop
    2a9c:	88bb      	ldrh	r3, [r7, #4]
    2a9e:	2103      	movs	r1, #3
    2aa0:	4618      	mov	r0, r3
    2aa2:	f001 fa29 	bl	3ef8 <tone>
    2aa6:	79fb      	ldrb	r3, [r7, #7]
    2aa8:	2b0b      	cmp	r3, #11
    2aaa:	d1ba      	bne.n	2a22 <sound_test+0x16>
    2aac:	79fb      	ldrb	r3, [r7, #7]
    2aae:	4618      	mov	r0, r3
    2ab0:	f7fe ff14 	bl	18dc <btn_wait_up>
    2ab4:	203c      	movs	r0, #60	; 0x3c
    2ab6:	f001 fa91 	bl	3fdc <sound_sampler>
    2aba:	bf00      	nop
    2abc:	3708      	adds	r7, #8
    2abe:	46bd      	mov	sp, r7
    2ac0:	bd80      	pop	{r7, pc}
    2ac2:	bf00      	nop
    2ac4:	000055dc 	.word	0x000055dc

00002ac8 <display_keymap>:
    2ac8:	b580      	push	{r7, lr}
    2aca:	b084      	sub	sp, #16
    2acc:	af00      	add	r7, sp, #0
    2ace:	6078      	str	r0, [r7, #4]
    2ad0:	2108      	movs	r1, #8
    2ad2:	2000      	movs	r0, #0
    2ad4:	f001 fe12 	bl	46fc <set_cursor>
    2ad8:	2300      	movs	r3, #0
    2ada:	60fb      	str	r3, [r7, #12]
    2adc:	e00a      	b.n	2af4 <display_keymap+0x2c>
    2ade:	68fb      	ldr	r3, [r7, #12]
    2ae0:	687a      	ldr	r2, [r7, #4]
    2ae2:	4413      	add	r3, r2
    2ae4:	781b      	ldrb	r3, [r3, #0]
    2ae6:	2110      	movs	r1, #16
    2ae8:	4618      	mov	r0, r3
    2aea:	f001 fe63 	bl	47b4 <print_int>
    2aee:	68fb      	ldr	r3, [r7, #12]
    2af0:	3301      	adds	r3, #1
    2af2:	60fb      	str	r3, [r7, #12]
    2af4:	68fb      	ldr	r3, [r7, #12]
    2af6:	2b07      	cmp	r3, #7
    2af8:	ddf1      	ble.n	2ade <display_keymap+0x16>
    2afa:	bf00      	nop
    2afc:	3710      	adds	r7, #16
    2afe:	46bd      	mov	sp, r7
    2b00:	bd80      	pop	{r7, pc}

00002b02 <buttons_map>:
    2b02:	b580      	push	{r7, lr}
    2b04:	b086      	sub	sp, #24
    2b06:	af00      	add	r7, sp, #0
    2b08:	23ff      	movs	r3, #255	; 0xff
    2b0a:	74fb      	strb	r3, [r7, #19]
    2b0c:	f7fe ff56 	bl	19bc <get_keymap>
    2b10:	60f8      	str	r0, [r7, #12]
    2b12:	f7ff fb09 	bl	2128 <gfx_cls>
    2b16:	4882      	ldr	r0, [pc, #520]	; (2d20 <buttons_map+0x21e>)
    2b18:	f001 fe3f 	bl	479a <println>
    2b1c:	2300      	movs	r3, #0
    2b1e:	617b      	str	r3, [r7, #20]
    2b20:	e00b      	b.n	2b3a <buttons_map+0x38>
    2b22:	697b      	ldr	r3, [r7, #20]
    2b24:	68fa      	ldr	r2, [r7, #12]
    2b26:	4413      	add	r3, r2
    2b28:	7819      	ldrb	r1, [r3, #0]
    2b2a:	1d3a      	adds	r2, r7, #4
    2b2c:	697b      	ldr	r3, [r7, #20]
    2b2e:	4413      	add	r3, r2
    2b30:	460a      	mov	r2, r1
    2b32:	701a      	strb	r2, [r3, #0]
    2b34:	697b      	ldr	r3, [r7, #20]
    2b36:	3301      	adds	r3, #1
    2b38:	617b      	str	r3, [r7, #20]
    2b3a:	697b      	ldr	r3, [r7, #20]
    2b3c:	2b07      	cmp	r3, #7
    2b3e:	ddf0      	ble.n	2b22 <buttons_map+0x20>
    2b40:	1d3b      	adds	r3, r7, #4
    2b42:	4618      	mov	r0, r3
    2b44:	f7ff ffc0 	bl	2ac8 <display_keymap>
    2b48:	2108      	movs	r1, #8
    2b4a:	2000      	movs	r0, #0
    2b4c:	f001 fdd6 	bl	46fc <set_cursor>
    2b50:	2001      	movs	r0, #1
    2b52:	f001 ff69 	bl	4a28 <show_cursor>
    2b56:	2300      	movs	r3, #0
    2b58:	617b      	str	r3, [r7, #20]
    2b5a:	1d3a      	adds	r2, r7, #4
    2b5c:	697b      	ldr	r3, [r7, #20]
    2b5e:	4413      	add	r3, r2
    2b60:	781b      	ldrb	r3, [r3, #0]
    2b62:	74bb      	strb	r3, [r7, #18]
    2b64:	e0c2      	b.n	2cec <buttons_map+0x1ea>
    2b66:	f7fe fee1 	bl	192c <btn_wait_any>
    2b6a:	4603      	mov	r3, r0
    2b6c:	74fb      	strb	r3, [r7, #19]
    2b6e:	7cfb      	ldrb	r3, [r7, #19]
    2b70:	3b05      	subs	r3, #5
    2b72:	2b07      	cmp	r3, #7
    2b74:	f200 80b6 	bhi.w	2ce4 <buttons_map+0x1e2>
    2b78:	a201      	add	r2, pc, #4	; (adr r2, 2b80 <buttons_map+0x7e>)
    2b7a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2b7e:	bf00      	nop
    2b80:	00002c17 	.word	0x00002c17
    2b84:	00002ce5 	.word	0x00002ce5
    2b88:	00002ba1 	.word	0x00002ba1
    2b8c:	00002c55 	.word	0x00002c55
    2b90:	00002bdd 	.word	0x00002bdd
    2b94:	00002ce5 	.word	0x00002ce5
    2b98:	00002ce5 	.word	0x00002ce5
    2b9c:	00002c93 	.word	0x00002c93
    2ba0:	697b      	ldr	r3, [r7, #20]
    2ba2:	2b00      	cmp	r3, #0
    2ba4:	f000 8097 	beq.w	2cd6 <buttons_map+0x1d4>
    2ba8:	2000      	movs	r0, #0
    2baa:	f001 ff3d 	bl	4a28 <show_cursor>
    2bae:	697b      	ldr	r3, [r7, #20]
    2bb0:	3b01      	subs	r3, #1
    2bb2:	617b      	str	r3, [r7, #20]
    2bb4:	697b      	ldr	r3, [r7, #20]
    2bb6:	b2db      	uxtb	r3, r3
    2bb8:	461a      	mov	r2, r3
    2bba:	00d2      	lsls	r2, r2, #3
    2bbc:	4413      	add	r3, r2
    2bbe:	005b      	lsls	r3, r3, #1
    2bc0:	b2db      	uxtb	r3, r3
    2bc2:	2108      	movs	r1, #8
    2bc4:	4618      	mov	r0, r3
    2bc6:	f001 fd99 	bl	46fc <set_cursor>
    2bca:	2001      	movs	r0, #1
    2bcc:	f001 ff2c 	bl	4a28 <show_cursor>
    2bd0:	1d3a      	adds	r2, r7, #4
    2bd2:	697b      	ldr	r3, [r7, #20]
    2bd4:	4413      	add	r3, r2
    2bd6:	781b      	ldrb	r3, [r3, #0]
    2bd8:	74bb      	strb	r3, [r7, #18]
    2bda:	e07c      	b.n	2cd6 <buttons_map+0x1d4>
    2bdc:	697b      	ldr	r3, [r7, #20]
    2bde:	2b06      	cmp	r3, #6
    2be0:	dc7b      	bgt.n	2cda <buttons_map+0x1d8>
    2be2:	2000      	movs	r0, #0
    2be4:	f001 ff20 	bl	4a28 <show_cursor>
    2be8:	697b      	ldr	r3, [r7, #20]
    2bea:	3301      	adds	r3, #1
    2bec:	617b      	str	r3, [r7, #20]
    2bee:	697b      	ldr	r3, [r7, #20]
    2bf0:	b2db      	uxtb	r3, r3
    2bf2:	461a      	mov	r2, r3
    2bf4:	00d2      	lsls	r2, r2, #3
    2bf6:	4413      	add	r3, r2
    2bf8:	005b      	lsls	r3, r3, #1
    2bfa:	b2db      	uxtb	r3, r3
    2bfc:	2108      	movs	r1, #8
    2bfe:	4618      	mov	r0, r3
    2c00:	f001 fd7c 	bl	46fc <set_cursor>
    2c04:	2001      	movs	r0, #1
    2c06:	f001 ff0f 	bl	4a28 <show_cursor>
    2c0a:	1d3a      	adds	r2, r7, #4
    2c0c:	697b      	ldr	r3, [r7, #20]
    2c0e:	4413      	add	r3, r2
    2c10:	781b      	ldrb	r3, [r3, #0]
    2c12:	74bb      	strb	r3, [r7, #18]
    2c14:	e061      	b.n	2cda <buttons_map+0x1d8>
    2c16:	7cbb      	ldrb	r3, [r7, #18]
    2c18:	2b0e      	cmp	r3, #14
    2c1a:	d860      	bhi.n	2cde <buttons_map+0x1dc>
    2c1c:	7cbb      	ldrb	r3, [r7, #18]
    2c1e:	3301      	adds	r3, #1
    2c20:	74bb      	strb	r3, [r7, #18]
    2c22:	1d3a      	adds	r2, r7, #4
    2c24:	697b      	ldr	r3, [r7, #20]
    2c26:	4413      	add	r3, r2
    2c28:	7cba      	ldrb	r2, [r7, #18]
    2c2a:	701a      	strb	r2, [r3, #0]
    2c2c:	7cbb      	ldrb	r3, [r7, #18]
    2c2e:	2110      	movs	r1, #16
    2c30:	4618      	mov	r0, r3
    2c32:	f001 fdbf 	bl	47b4 <print_int>
    2c36:	697b      	ldr	r3, [r7, #20]
    2c38:	b2db      	uxtb	r3, r3
    2c3a:	461a      	mov	r2, r3
    2c3c:	00d2      	lsls	r2, r2, #3
    2c3e:	4413      	add	r3, r2
    2c40:	005b      	lsls	r3, r3, #1
    2c42:	b2db      	uxtb	r3, r3
    2c44:	2108      	movs	r1, #8
    2c46:	4618      	mov	r0, r3
    2c48:	f001 fd58 	bl	46fc <set_cursor>
    2c4c:	2001      	movs	r0, #1
    2c4e:	f001 feeb 	bl	4a28 <show_cursor>
    2c52:	e044      	b.n	2cde <buttons_map+0x1dc>
    2c54:	7cbb      	ldrb	r3, [r7, #18]
    2c56:	2b00      	cmp	r3, #0
    2c58:	d043      	beq.n	2ce2 <buttons_map+0x1e0>
    2c5a:	7cbb      	ldrb	r3, [r7, #18]
    2c5c:	3b01      	subs	r3, #1
    2c5e:	74bb      	strb	r3, [r7, #18]
    2c60:	1d3a      	adds	r2, r7, #4
    2c62:	697b      	ldr	r3, [r7, #20]
    2c64:	4413      	add	r3, r2
    2c66:	7cba      	ldrb	r2, [r7, #18]
    2c68:	701a      	strb	r2, [r3, #0]
    2c6a:	7cbb      	ldrb	r3, [r7, #18]
    2c6c:	2110      	movs	r1, #16
    2c6e:	4618      	mov	r0, r3
    2c70:	f001 fda0 	bl	47b4 <print_int>
    2c74:	697b      	ldr	r3, [r7, #20]
    2c76:	b2db      	uxtb	r3, r3
    2c78:	461a      	mov	r2, r3
    2c7a:	00d2      	lsls	r2, r2, #3
    2c7c:	4413      	add	r3, r2
    2c7e:	005b      	lsls	r3, r3, #1
    2c80:	b2db      	uxtb	r3, r3
    2c82:	2108      	movs	r1, #8
    2c84:	4618      	mov	r0, r3
    2c86:	f001 fd39 	bl	46fc <set_cursor>
    2c8a:	2001      	movs	r0, #1
    2c8c:	f001 fecc 	bl	4a28 <show_cursor>
    2c90:	e027      	b.n	2ce2 <buttons_map+0x1e0>
    2c92:	2300      	movs	r3, #0
    2c94:	617b      	str	r3, [r7, #20]
    2c96:	e00b      	b.n	2cb0 <buttons_map+0x1ae>
    2c98:	697b      	ldr	r3, [r7, #20]
    2c9a:	68fa      	ldr	r2, [r7, #12]
    2c9c:	4413      	add	r3, r2
    2c9e:	7819      	ldrb	r1, [r3, #0]
    2ca0:	1d3a      	adds	r2, r7, #4
    2ca2:	697b      	ldr	r3, [r7, #20]
    2ca4:	4413      	add	r3, r2
    2ca6:	460a      	mov	r2, r1
    2ca8:	701a      	strb	r2, [r3, #0]
    2caa:	697b      	ldr	r3, [r7, #20]
    2cac:	3301      	adds	r3, #1
    2cae:	617b      	str	r3, [r7, #20]
    2cb0:	697b      	ldr	r3, [r7, #20]
    2cb2:	2b07      	cmp	r3, #7
    2cb4:	ddf0      	ble.n	2c98 <buttons_map+0x196>
    2cb6:	1d3b      	adds	r3, r7, #4
    2cb8:	4618      	mov	r0, r3
    2cba:	f7ff ff05 	bl	2ac8 <display_keymap>
    2cbe:	2108      	movs	r1, #8
    2cc0:	2000      	movs	r0, #0
    2cc2:	f001 fd1b 	bl	46fc <set_cursor>
    2cc6:	2300      	movs	r3, #0
    2cc8:	617b      	str	r3, [r7, #20]
    2cca:	1d3a      	adds	r2, r7, #4
    2ccc:	697b      	ldr	r3, [r7, #20]
    2cce:	4413      	add	r3, r2
    2cd0:	781b      	ldrb	r3, [r3, #0]
    2cd2:	74bb      	strb	r3, [r7, #18]
    2cd4:	e006      	b.n	2ce4 <buttons_map+0x1e2>
    2cd6:	bf00      	nop
    2cd8:	e004      	b.n	2ce4 <buttons_map+0x1e2>
    2cda:	bf00      	nop
    2cdc:	e002      	b.n	2ce4 <buttons_map+0x1e2>
    2cde:	bf00      	nop
    2ce0:	e000      	b.n	2ce4 <buttons_map+0x1e2>
    2ce2:	bf00      	nop
    2ce4:	7cfb      	ldrb	r3, [r7, #19]
    2ce6:	4618      	mov	r0, r3
    2ce8:	f7fe fdf8 	bl	18dc <btn_wait_up>
    2cec:	7cfb      	ldrb	r3, [r7, #19]
    2cee:	2b0b      	cmp	r3, #11
    2cf0:	f47f af39 	bne.w	2b66 <buttons_map+0x64>
    2cf4:	2300      	movs	r3, #0
    2cf6:	617b      	str	r3, [r7, #20]
    2cf8:	e00a      	b.n	2d10 <buttons_map+0x20e>
    2cfa:	697b      	ldr	r3, [r7, #20]
    2cfc:	68fa      	ldr	r2, [r7, #12]
    2cfe:	4413      	add	r3, r2
    2d00:	1d39      	adds	r1, r7, #4
    2d02:	697a      	ldr	r2, [r7, #20]
    2d04:	440a      	add	r2, r1
    2d06:	7812      	ldrb	r2, [r2, #0]
    2d08:	701a      	strb	r2, [r3, #0]
    2d0a:	697b      	ldr	r3, [r7, #20]
    2d0c:	3301      	adds	r3, #1
    2d0e:	617b      	str	r3, [r7, #20]
    2d10:	697b      	ldr	r3, [r7, #20]
    2d12:	2b07      	cmp	r3, #7
    2d14:	ddf1      	ble.n	2cfa <buttons_map+0x1f8>
    2d16:	bf00      	nop
    2d18:	3718      	adds	r7, #24
    2d1a:	46bd      	mov	sp, r7
    2d1c:	bd80      	pop	{r7, pc}
    2d1e:	bf00      	nop
    2d20:	000055ec 	.word	0x000055ec

00002d24 <print_games_list>:
    2d24:	b580      	push	{r7, lr}
    2d26:	b084      	sub	sp, #16
    2d28:	af00      	add	r7, sp, #0
    2d2a:	6078      	str	r0, [r7, #4]
    2d2c:	6039      	str	r1, [r7, #0]
    2d2e:	2301      	movs	r3, #1
    2d30:	60fb      	str	r3, [r7, #12]
    2d32:	2100      	movs	r1, #0
    2d34:	2000      	movs	r0, #0
    2d36:	f001 fce1 	bl	46fc <set_cursor>
    2d3a:	4815      	ldr	r0, [pc, #84]	; (2d90 <print_games_list+0x6c>)
    2d3c:	f001 fd0a 	bl	4754 <print>
    2d40:	e012      	b.n	2d68 <print_games_list+0x44>
    2d42:	f001 fbcd 	bl	44e0 <new_line>
    2d46:	2020      	movs	r0, #32
    2d48:	f001 fc4c 	bl	45e4 <put_char>
    2d4c:	687a      	ldr	r2, [r7, #4]
    2d4e:	4613      	mov	r3, r2
    2d50:	005b      	lsls	r3, r3, #1
    2d52:	4413      	add	r3, r2
    2d54:	00db      	lsls	r3, r3, #3
    2d56:	4a0f      	ldr	r2, [pc, #60]	; (2d94 <print_games_list+0x70>)
    2d58:	4413      	add	r3, r2
    2d5a:	3301      	adds	r3, #1
    2d5c:	4618      	mov	r0, r3
    2d5e:	f001 fcf9 	bl	4754 <print>
    2d62:	687b      	ldr	r3, [r7, #4]
    2d64:	3301      	adds	r3, #1
    2d66:	607b      	str	r3, [r7, #4]
    2d68:	68fa      	ldr	r2, [r7, #12]
    2d6a:	683b      	ldr	r3, [r7, #0]
    2d6c:	429a      	cmp	r2, r3
    2d6e:	d20a      	bcs.n	2d86 <print_games_list+0x62>
    2d70:	4908      	ldr	r1, [pc, #32]	; (2d94 <print_games_list+0x70>)
    2d72:	687a      	ldr	r2, [r7, #4]
    2d74:	4613      	mov	r3, r2
    2d76:	005b      	lsls	r3, r3, #1
    2d78:	4413      	add	r3, r2
    2d7a:	00db      	lsls	r3, r3, #3
    2d7c:	440b      	add	r3, r1
    2d7e:	3310      	adds	r3, #16
    2d80:	681b      	ldr	r3, [r3, #0]
    2d82:	2b00      	cmp	r3, #0
    2d84:	d1dd      	bne.n	2d42 <print_games_list+0x1e>
    2d86:	bf00      	nop
    2d88:	3710      	adds	r7, #16
    2d8a:	46bd      	mov	sp, r7
    2d8c:	bd80      	pop	{r7, pc}
    2d8e:	bf00      	nop
    2d90:	00005600 	.word	0x00005600
    2d94:	2000000c 	.word	0x2000000c

00002d98 <run_game>:
    2d98:	b580      	push	{r7, lr}
    2d9a:	b082      	sub	sp, #8
    2d9c:	af00      	add	r7, sp, #0
    2d9e:	6078      	str	r0, [r7, #4]
    2da0:	4913      	ldr	r1, [pc, #76]	; (2df0 <run_game+0x58>)
    2da2:	687a      	ldr	r2, [r7, #4]
    2da4:	4613      	mov	r3, r2
    2da6:	005b      	lsls	r3, r3, #1
    2da8:	4413      	add	r3, r2
    2daa:	00db      	lsls	r3, r3, #3
    2dac:	440b      	add	r3, r1
    2dae:	3314      	adds	r3, #20
    2db0:	6818      	ldr	r0, [r3, #0]
    2db2:	490f      	ldr	r1, [pc, #60]	; (2df0 <run_game+0x58>)
    2db4:	687a      	ldr	r2, [r7, #4]
    2db6:	4613      	mov	r3, r2
    2db8:	005b      	lsls	r3, r3, #1
    2dba:	4413      	add	r3, r2
    2dbc:	00db      	lsls	r3, r3, #3
    2dbe:	440b      	add	r3, r1
    2dc0:	3310      	adds	r3, #16
    2dc2:	681b      	ldr	r3, [r3, #0]
    2dc4:	461a      	mov	r2, r3
    2dc6:	490b      	ldr	r1, [pc, #44]	; (2df4 <run_game+0x5c>)
    2dc8:	f7fe ff3b 	bl	1c42 <move>
    2dcc:	4908      	ldr	r1, [pc, #32]	; (2df0 <run_game+0x58>)
    2dce:	687a      	ldr	r2, [r7, #4]
    2dd0:	4613      	mov	r3, r2
    2dd2:	005b      	lsls	r3, r3, #1
    2dd4:	4413      	add	r3, r2
    2dd6:	00db      	lsls	r3, r3, #3
    2dd8:	440b      	add	r3, r1
    2dda:	781b      	ldrb	r3, [r3, #0]
    2ddc:	4618      	mov	r0, r3
    2dde:	f002 f8cb 	bl	4f78 <set_video_mode>
    2de2:	2000      	movs	r0, #0
    2de4:	f7fd fbac 	bl	540 <chip_vm>
    2de8:	bf00      	nop
    2dea:	3708      	adds	r7, #8
    2dec:	46bd      	mov	sp, r7
    2dee:	bd80      	pop	{r7, pc}
    2df0:	2000000c 	.word	0x2000000c
    2df4:	200005fc 	.word	0x200005fc

00002df8 <select_game>:
    2df8:	b580      	push	{r7, lr}
    2dfa:	b088      	sub	sp, #32
    2dfc:	af00      	add	r7, sp, #0
    2dfe:	2300      	movs	r3, #0
    2e00:	613b      	str	r3, [r7, #16]
    2e02:	2300      	movs	r3, #0
    2e04:	61fb      	str	r3, [r7, #28]
    2e06:	2301      	movs	r3, #1
    2e08:	61bb      	str	r3, [r7, #24]
    2e0a:	2301      	movs	r3, #1
    2e0c:	617b      	str	r3, [r7, #20]
    2e0e:	f7fe fddf 	bl	19d0 <games_count>
    2e12:	4603      	mov	r3, r0
    2e14:	60fb      	str	r3, [r7, #12]
    2e16:	2000      	movs	r0, #0
    2e18:	f002 f8ae 	bl	4f78 <set_video_mode>
    2e1c:	f002 f938 	bl	5090 <get_video_params>
    2e20:	60b8      	str	r0, [r7, #8]
    2e22:	68bb      	ldr	r3, [r7, #8]
    2e24:	89db      	ldrh	r3, [r3, #14]
    2e26:	08db      	lsrs	r3, r3, #3
    2e28:	b29b      	uxth	r3, r3
    2e2a:	607b      	str	r3, [r7, #4]
    2e2c:	e053      	b.n	2ed6 <select_game+0xde>
    2e2e:	69fb      	ldr	r3, [r7, #28]
    2e30:	687a      	ldr	r2, [r7, #4]
    2e32:	4611      	mov	r1, r2
    2e34:	4618      	mov	r0, r3
    2e36:	f7ff ff75 	bl	2d24 <print_games_list>
    2e3a:	69bb      	ldr	r3, [r7, #24]
    2e3c:	b2db      	uxtb	r3, r3
    2e3e:	00db      	lsls	r3, r3, #3
    2e40:	b2db      	uxtb	r3, r3
    2e42:	4619      	mov	r1, r3
    2e44:	2000      	movs	r0, #0
    2e46:	f001 fc59 	bl	46fc <set_cursor>
    2e4a:	203e      	movs	r0, #62	; 0x3e
    2e4c:	f001 fbca 	bl	45e4 <put_char>
    2e50:	f7fe fd6c 	bl	192c <btn_wait_any>
    2e54:	4603      	mov	r3, r0
    2e56:	70fb      	strb	r3, [r7, #3]
    2e58:	78fb      	ldrb	r3, [r7, #3]
    2e5a:	4618      	mov	r0, r3
    2e5c:	f7fe fd3e 	bl	18dc <btn_wait_up>
    2e60:	78fb      	ldrb	r3, [r7, #3]
    2e62:	3b05      	subs	r3, #5
    2e64:	2b07      	cmp	r3, #7
    2e66:	d836      	bhi.n	2ed6 <select_game+0xde>
    2e68:	a201      	add	r2, pc, #4	; (adr r2, 2e70 <select_game+0x78>)
    2e6a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2e6e:	bf00      	nop
    2e70:	00002e91 	.word	0x00002e91
    2e74:	00002ed7 	.word	0x00002ed7
    2e78:	00002ed7 	.word	0x00002ed7
    2e7c:	00002eab 	.word	0x00002eab
    2e80:	00002ed7 	.word	0x00002ed7
    2e84:	00002ed7 	.word	0x00002ed7
    2e88:	00002ed1 	.word	0x00002ed1
    2e8c:	00002eed 	.word	0x00002eed
    2e90:	69fb      	ldr	r3, [r7, #28]
    2e92:	2b00      	cmp	r3, #0
    2e94:	d002      	beq.n	2e9c <select_game+0xa4>
    2e96:	69fb      	ldr	r3, [r7, #28]
    2e98:	3b01      	subs	r3, #1
    2e9a:	61fb      	str	r3, [r7, #28]
    2e9c:	69bb      	ldr	r3, [r7, #24]
    2e9e:	2b01      	cmp	r3, #1
    2ea0:	dd19      	ble.n	2ed6 <select_game+0xde>
    2ea2:	69bb      	ldr	r3, [r7, #24]
    2ea4:	3b01      	subs	r3, #1
    2ea6:	61bb      	str	r3, [r7, #24]
    2ea8:	e015      	b.n	2ed6 <select_game+0xde>
    2eaa:	69fa      	ldr	r2, [r7, #28]
    2eac:	69bb      	ldr	r3, [r7, #24]
    2eae:	4413      	add	r3, r2
    2eb0:	1e5a      	subs	r2, r3, #1
    2eb2:	68fb      	ldr	r3, [r7, #12]
    2eb4:	3b01      	subs	r3, #1
    2eb6:	429a      	cmp	r2, r3
    2eb8:	da0d      	bge.n	2ed6 <select_game+0xde>
    2eba:	69bb      	ldr	r3, [r7, #24]
    2ebc:	3301      	adds	r3, #1
    2ebe:	61bb      	str	r3, [r7, #24]
    2ec0:	69ba      	ldr	r2, [r7, #24]
    2ec2:	687b      	ldr	r3, [r7, #4]
    2ec4:	429a      	cmp	r2, r3
    2ec6:	db06      	blt.n	2ed6 <select_game+0xde>
    2ec8:	69fb      	ldr	r3, [r7, #28]
    2eca:	3301      	adds	r3, #1
    2ecc:	61fb      	str	r3, [r7, #28]
    2ece:	e002      	b.n	2ed6 <select_game+0xde>
    2ed0:	2300      	movs	r3, #0
    2ed2:	617b      	str	r3, [r7, #20]
    2ed4:	bf00      	nop
    2ed6:	697b      	ldr	r3, [r7, #20]
    2ed8:	2b00      	cmp	r3, #0
    2eda:	d1a8      	bne.n	2e2e <select_game+0x36>
    2edc:	69fa      	ldr	r2, [r7, #28]
    2ede:	69bb      	ldr	r3, [r7, #24]
    2ee0:	4413      	add	r3, r2
    2ee2:	3b01      	subs	r3, #1
    2ee4:	4618      	mov	r0, r3
    2ee6:	f7ff ff57 	bl	2d98 <run_game>
    2eea:	e000      	b.n	2eee <select_game+0xf6>
    2eec:	bf00      	nop
    2eee:	3720      	adds	r7, #32
    2ef0:	46bd      	mov	sp, r7
    2ef2:	bd80      	pop	{r7, pc}

00002ef4 <display_menu>:
    2ef4:	b580      	push	{r7, lr}
    2ef6:	b082      	sub	sp, #8
    2ef8:	af00      	add	r7, sp, #0
    2efa:	f7ff f915 	bl	2128 <gfx_cls>
    2efe:	2300      	movs	r3, #0
    2f00:	607b      	str	r3, [r7, #4]
    2f02:	e009      	b.n	2f18 <display_menu+0x24>
    2f04:	4a08      	ldr	r2, [pc, #32]	; (2f28 <display_menu+0x34>)
    2f06:	687b      	ldr	r3, [r7, #4]
    2f08:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    2f0c:	4618      	mov	r0, r3
    2f0e:	f001 fc44 	bl	479a <println>
    2f12:	687b      	ldr	r3, [r7, #4]
    2f14:	3301      	adds	r3, #1
    2f16:	607b      	str	r3, [r7, #4]
    2f18:	687b      	ldr	r3, [r7, #4]
    2f1a:	2b03      	cmp	r3, #3
    2f1c:	ddf2      	ble.n	2f04 <display_menu+0x10>
    2f1e:	bf00      	nop
    2f20:	3708      	adds	r7, #8
    2f22:	46bd      	mov	sp, r7
    2f24:	bd80      	pop	{r7, pc}
    2f26:	bf00      	nop
    2f28:	200000e4 	.word	0x200000e4

00002f2c <menu>:
    2f2c:	b580      	push	{r7, lr}
    2f2e:	b084      	sub	sp, #16
    2f30:	af00      	add	r7, sp, #0
    2f32:	2300      	movs	r3, #0
    2f34:	60fb      	str	r3, [r7, #12]
    2f36:	f002 f8ab 	bl	5090 <get_video_params>
    2f3a:	60b8      	str	r0, [r7, #8]
    2f3c:	f7ff ffda 	bl	2ef4 <display_menu>
    2f40:	68fb      	ldr	r3, [r7, #12]
    2f42:	b2db      	uxtb	r3, r3
    2f44:	00db      	lsls	r3, r3, #3
    2f46:	b2db      	uxtb	r3, r3
    2f48:	4619      	mov	r1, r3
    2f4a:	2000      	movs	r0, #0
    2f4c:	f001 fbd6 	bl	46fc <set_cursor>
    2f50:	203e      	movs	r0, #62	; 0x3e
    2f52:	f001 fb47 	bl	45e4 <put_char>
    2f56:	f7fe fce9 	bl	192c <btn_wait_any>
    2f5a:	4603      	mov	r3, r0
    2f5c:	71fb      	strb	r3, [r7, #7]
    2f5e:	79fb      	ldrb	r3, [r7, #7]
    2f60:	4618      	mov	r0, r3
    2f62:	f7fe fcbb 	bl	18dc <btn_wait_up>
    2f66:	68fb      	ldr	r3, [r7, #12]
    2f68:	b2db      	uxtb	r3, r3
    2f6a:	00db      	lsls	r3, r3, #3
    2f6c:	b2db      	uxtb	r3, r3
    2f6e:	4619      	mov	r1, r3
    2f70:	2000      	movs	r0, #0
    2f72:	f001 fbc3 	bl	46fc <set_cursor>
    2f76:	2020      	movs	r0, #32
    2f78:	f001 fb34 	bl	45e4 <put_char>
    2f7c:	79fb      	ldrb	r3, [r7, #7]
    2f7e:	2b08      	cmp	r3, #8
    2f80:	d00a      	beq.n	2f98 <menu+0x6c>
    2f82:	2b0b      	cmp	r3, #11
    2f84:	d00f      	beq.n	2fa6 <menu+0x7a>
    2f86:	2b05      	cmp	r3, #5
    2f88:	d12e      	bne.n	2fe8 <menu+0xbc>
    2f8a:	68fb      	ldr	r3, [r7, #12]
    2f8c:	2b00      	cmp	r3, #0
    2f8e:	d028      	beq.n	2fe2 <menu+0xb6>
    2f90:	68fb      	ldr	r3, [r7, #12]
    2f92:	3b01      	subs	r3, #1
    2f94:	60fb      	str	r3, [r7, #12]
    2f96:	e024      	b.n	2fe2 <menu+0xb6>
    2f98:	68fb      	ldr	r3, [r7, #12]
    2f9a:	2b02      	cmp	r3, #2
    2f9c:	dc23      	bgt.n	2fe6 <menu+0xba>
    2f9e:	68fb      	ldr	r3, [r7, #12]
    2fa0:	3301      	adds	r3, #1
    2fa2:	60fb      	str	r3, [r7, #12]
    2fa4:	e01f      	b.n	2fe6 <menu+0xba>
    2fa6:	68fb      	ldr	r3, [r7, #12]
    2fa8:	2b03      	cmp	r3, #3
    2faa:	d817      	bhi.n	2fdc <menu+0xb0>
    2fac:	a201      	add	r2, pc, #4	; (adr r2, 2fb4 <menu+0x88>)
    2fae:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2fb2:	bf00      	nop
    2fb4:	00002fc5 	.word	0x00002fc5
    2fb8:	00002fcb 	.word	0x00002fcb
    2fbc:	00002fd1 	.word	0x00002fd1
    2fc0:	00002fd7 	.word	0x00002fd7
    2fc4:	f7ff fd9d 	bl	2b02 <buttons_map>
    2fc8:	e008      	b.n	2fdc <menu+0xb0>
    2fca:	f7ff ff15 	bl	2df8 <select_game>
    2fce:	e005      	b.n	2fdc <menu+0xb0>
    2fd0:	f7ff fca3 	bl	291a <video_test>
    2fd4:	e002      	b.n	2fdc <menu+0xb0>
    2fd6:	f7ff fd19 	bl	2a0c <sound_test>
    2fda:	bf00      	nop
    2fdc:	f7ff ff8a 	bl	2ef4 <display_menu>
    2fe0:	e002      	b.n	2fe8 <menu+0xbc>
    2fe2:	bf00      	nop
    2fe4:	e7ac      	b.n	2f40 <menu+0x14>
    2fe6:	bf00      	nop
    2fe8:	e7aa      	b.n	2f40 <menu+0x14>

00002fea <main>:
    2fea:	b580      	push	{r7, lr}
    2fec:	b086      	sub	sp, #24
    2fee:	af00      	add	r7, sp, #0
    2ff0:	f7ff fa2c 	bl	244c <set_sysclock>
    2ff4:	4b19      	ldr	r3, [pc, #100]	; (305c <main+0x72>)
    2ff6:	f640 021d 	movw	r2, #2077	; 0x81d
    2ffa:	619a      	str	r2, [r3, #24]
    2ffc:	2206      	movs	r2, #6
    2ffe:	210d      	movs	r1, #13
    3000:	4817      	ldr	r0, [pc, #92]	; (3060 <main+0x76>)
    3002:	f7fe ff0b 	bl	1e1c <config_pin>
    3006:	4a16      	ldr	r2, [pc, #88]	; (3060 <main+0x76>)
    3008:	4b15      	ldr	r3, [pc, #84]	; (3060 <main+0x76>)
    300a:	68db      	ldr	r3, [r3, #12]
    300c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3010:	60d3      	str	r3, [r2, #12]
    3012:	f7fe fb99 	bl	1748 <gamepad_init>
    3016:	f001 fd2f 	bl	4a78 <tvout_init>
    301a:	f000 ff4d 	bl	3eb8 <sound_init>
    301e:	2300      	movs	r3, #0
    3020:	617b      	str	r3, [r7, #20]
    3022:	e00b      	b.n	303c <main+0x52>
    3024:	f7fd fa6a 	bl	4fc <rand>
    3028:	4603      	mov	r3, r0
    302a:	b2d9      	uxtb	r1, r3
    302c:	1d3a      	adds	r2, r7, #4
    302e:	697b      	ldr	r3, [r7, #20]
    3030:	4413      	add	r3, r2
    3032:	460a      	mov	r2, r1
    3034:	701a      	strb	r2, [r3, #0]
    3036:	697b      	ldr	r3, [r7, #20]
    3038:	3301      	adds	r3, #1
    303a:	617b      	str	r3, [r7, #20]
    303c:	697b      	ldr	r3, [r7, #20]
    303e:	2b0f      	cmp	r3, #15
    3040:	ddf0      	ble.n	3024 <main+0x3a>
    3042:	1d3b      	adds	r3, r7, #4
    3044:	4618      	mov	r0, r3
    3046:	f000 ffac 	bl	3fa2 <load_sound_buffer>
    304a:	f7ff f86d 	bl	2128 <gfx_cls>
    304e:	f7ff ff6d 	bl	2f2c <menu>
    3052:	bf00      	nop
    3054:	3718      	adds	r7, #24
    3056:	46bd      	mov	sp, r7
    3058:	bd80      	pop	{r7, pc}
    305a:	bf00      	nop
    305c:	40021000 	.word	0x40021000
    3060:	40011000 	.word	0x40011000

00003064 <enable_interrupt>:
    3064:	b480      	push	{r7}
    3066:	b083      	sub	sp, #12
    3068:	af00      	add	r7, sp, #0
    306a:	6078      	str	r0, [r7, #4]
    306c:	687b      	ldr	r3, [r7, #4]
    306e:	2b3b      	cmp	r3, #59	; 0x3b
    3070:	dc17      	bgt.n	30a2 <enable_interrupt+0x3e>
    3072:	687b      	ldr	r3, [r7, #4]
    3074:	115b      	asrs	r3, r3, #5
    3076:	009b      	lsls	r3, r3, #2
    3078:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    307c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    3080:	687a      	ldr	r2, [r7, #4]
    3082:	1152      	asrs	r2, r2, #5
    3084:	0092      	lsls	r2, r2, #2
    3086:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    308a:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    308e:	6812      	ldr	r2, [r2, #0]
    3090:	6879      	ldr	r1, [r7, #4]
    3092:	f001 011f 	and.w	r1, r1, #31
    3096:	2001      	movs	r0, #1
    3098:	fa00 f101 	lsl.w	r1, r0, r1
    309c:	430a      	orrs	r2, r1
    309e:	601a      	str	r2, [r3, #0]
    30a0:	e000      	b.n	30a4 <enable_interrupt+0x40>
    30a2:	bf00      	nop
    30a4:	370c      	adds	r7, #12
    30a6:	46bd      	mov	sp, r7
    30a8:	bc80      	pop	{r7}
    30aa:	4770      	bx	lr

000030ac <disable_interrupt>:
    30ac:	b480      	push	{r7}
    30ae:	b083      	sub	sp, #12
    30b0:	af00      	add	r7, sp, #0
    30b2:	6078      	str	r0, [r7, #4]
    30b4:	687b      	ldr	r3, [r7, #4]
    30b6:	2b3b      	cmp	r3, #59	; 0x3b
    30b8:	dc0c      	bgt.n	30d4 <disable_interrupt+0x28>
    30ba:	687b      	ldr	r3, [r7, #4]
    30bc:	115b      	asrs	r3, r3, #5
    30be:	009a      	lsls	r2, r3, #2
    30c0:	4b07      	ldr	r3, [pc, #28]	; (30e0 <disable_interrupt+0x34>)
    30c2:	4413      	add	r3, r2
    30c4:	687a      	ldr	r2, [r7, #4]
    30c6:	f002 021f 	and.w	r2, r2, #31
    30ca:	2101      	movs	r1, #1
    30cc:	fa01 f202 	lsl.w	r2, r1, r2
    30d0:	601a      	str	r2, [r3, #0]
    30d2:	e000      	b.n	30d6 <disable_interrupt+0x2a>
    30d4:	bf00      	nop
    30d6:	370c      	adds	r7, #12
    30d8:	46bd      	mov	sp, r7
    30da:	bc80      	pop	{r7}
    30dc:	4770      	bx	lr
    30de:	bf00      	nop
    30e0:	e000e180 	.word	0xe000e180

000030e4 <get_pending>:
    30e4:	b480      	push	{r7}
    30e6:	b083      	sub	sp, #12
    30e8:	af00      	add	r7, sp, #0
    30ea:	6078      	str	r0, [r7, #4]
    30ec:	687b      	ldr	r3, [r7, #4]
    30ee:	2b3b      	cmp	r3, #59	; 0x3b
    30f0:	dd01      	ble.n	30f6 <get_pending+0x12>
    30f2:	2300      	movs	r3, #0
    30f4:	e00c      	b.n	3110 <get_pending+0x2c>
    30f6:	687b      	ldr	r3, [r7, #4]
    30f8:	115b      	asrs	r3, r3, #5
    30fa:	009a      	lsls	r2, r3, #2
    30fc:	4b07      	ldr	r3, [pc, #28]	; (311c <get_pending+0x38>)
    30fe:	4413      	add	r3, r2
    3100:	681b      	ldr	r3, [r3, #0]
    3102:	687a      	ldr	r2, [r7, #4]
    3104:	f002 021f 	and.w	r2, r2, #31
    3108:	2101      	movs	r1, #1
    310a:	fa01 f202 	lsl.w	r2, r1, r2
    310e:	4013      	ands	r3, r2
    3110:	4618      	mov	r0, r3
    3112:	370c      	adds	r7, #12
    3114:	46bd      	mov	sp, r7
    3116:	bc80      	pop	{r7}
    3118:	4770      	bx	lr
    311a:	bf00      	nop
    311c:	e000e280 	.word	0xe000e280

00003120 <get_active>:
    3120:	b480      	push	{r7}
    3122:	b083      	sub	sp, #12
    3124:	af00      	add	r7, sp, #0
    3126:	6078      	str	r0, [r7, #4]
    3128:	687b      	ldr	r3, [r7, #4]
    312a:	2b3b      	cmp	r3, #59	; 0x3b
    312c:	dd01      	ble.n	3132 <get_active+0x12>
    312e:	2300      	movs	r3, #0
    3130:	e00e      	b.n	3150 <get_active+0x30>
    3132:	687b      	ldr	r3, [r7, #4]
    3134:	115b      	asrs	r3, r3, #5
    3136:	009b      	lsls	r3, r3, #2
    3138:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    313c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    3140:	681b      	ldr	r3, [r3, #0]
    3142:	687a      	ldr	r2, [r7, #4]
    3144:	f002 021f 	and.w	r2, r2, #31
    3148:	2101      	movs	r1, #1
    314a:	fa01 f202 	lsl.w	r2, r1, r2
    314e:	4013      	ands	r3, r2
    3150:	4618      	mov	r0, r3
    3152:	370c      	adds	r7, #12
    3154:	46bd      	mov	sp, r7
    3156:	bc80      	pop	{r7}
    3158:	4770      	bx	lr

0000315a <set_pending>:
    315a:	b480      	push	{r7}
    315c:	b083      	sub	sp, #12
    315e:	af00      	add	r7, sp, #0
    3160:	6078      	str	r0, [r7, #4]
    3162:	687b      	ldr	r3, [r7, #4]
    3164:	2b3b      	cmp	r3, #59	; 0x3b
    3166:	dc17      	bgt.n	3198 <set_pending+0x3e>
    3168:	687b      	ldr	r3, [r7, #4]
    316a:	115b      	asrs	r3, r3, #5
    316c:	009b      	lsls	r3, r3, #2
    316e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3172:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    3176:	687a      	ldr	r2, [r7, #4]
    3178:	1152      	asrs	r2, r2, #5
    317a:	0092      	lsls	r2, r2, #2
    317c:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3180:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    3184:	6812      	ldr	r2, [r2, #0]
    3186:	6879      	ldr	r1, [r7, #4]
    3188:	f001 011f 	and.w	r1, r1, #31
    318c:	2001      	movs	r0, #1
    318e:	fa00 f101 	lsl.w	r1, r0, r1
    3192:	430a      	orrs	r2, r1
    3194:	601a      	str	r2, [r3, #0]
    3196:	e000      	b.n	319a <set_pending+0x40>
    3198:	bf00      	nop
    319a:	370c      	adds	r7, #12
    319c:	46bd      	mov	sp, r7
    319e:	bc80      	pop	{r7}
    31a0:	4770      	bx	lr

000031a2 <clear_pending>:
    31a2:	b480      	push	{r7}
    31a4:	b083      	sub	sp, #12
    31a6:	af00      	add	r7, sp, #0
    31a8:	6078      	str	r0, [r7, #4]
    31aa:	687b      	ldr	r3, [r7, #4]
    31ac:	2b3b      	cmp	r3, #59	; 0x3b
    31ae:	dc0c      	bgt.n	31ca <clear_pending+0x28>
    31b0:	687b      	ldr	r3, [r7, #4]
    31b2:	115b      	asrs	r3, r3, #5
    31b4:	009a      	lsls	r2, r3, #2
    31b6:	4b07      	ldr	r3, [pc, #28]	; (31d4 <clear_pending+0x32>)
    31b8:	4413      	add	r3, r2
    31ba:	687a      	ldr	r2, [r7, #4]
    31bc:	f002 021f 	and.w	r2, r2, #31
    31c0:	2101      	movs	r1, #1
    31c2:	fa01 f202 	lsl.w	r2, r1, r2
    31c6:	601a      	str	r2, [r3, #0]
    31c8:	e000      	b.n	31cc <clear_pending+0x2a>
    31ca:	bf00      	nop
    31cc:	370c      	adds	r7, #12
    31ce:	46bd      	mov	sp, r7
    31d0:	bc80      	pop	{r7}
    31d2:	4770      	bx	lr
    31d4:	e000e280 	.word	0xe000e280

000031d8 <set_int_priority>:
    31d8:	b480      	push	{r7}
    31da:	b083      	sub	sp, #12
    31dc:	af00      	add	r7, sp, #0
    31de:	6078      	str	r0, [r7, #4]
    31e0:	6039      	str	r1, [r7, #0]
    31e2:	687b      	ldr	r3, [r7, #4]
    31e4:	2b00      	cmp	r3, #0
    31e6:	db0d      	blt.n	3204 <set_int_priority+0x2c>
    31e8:	687b      	ldr	r3, [r7, #4]
    31ea:	2b3b      	cmp	r3, #59	; 0x3b
    31ec:	dc0a      	bgt.n	3204 <set_int_priority+0x2c>
    31ee:	687b      	ldr	r3, [r7, #4]
    31f0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    31f4:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    31f8:	683a      	ldr	r2, [r7, #0]
    31fa:	b2d2      	uxtb	r2, r2
    31fc:	0112      	lsls	r2, r2, #4
    31fe:	b2d2      	uxtb	r2, r2
    3200:	701a      	strb	r2, [r3, #0]
    3202:	e012      	b.n	322a <set_int_priority+0x52>
    3204:	687b      	ldr	r3, [r7, #4]
    3206:	2b00      	cmp	r3, #0
    3208:	da0f      	bge.n	322a <set_int_priority+0x52>
    320a:	687b      	ldr	r3, [r7, #4]
    320c:	f113 0f0f 	cmn.w	r3, #15
    3210:	db0b      	blt.n	322a <set_int_priority+0x52>
    3212:	687a      	ldr	r2, [r7, #4]
    3214:	f06f 0303 	mvn.w	r3, #3
    3218:	1a9b      	subs	r3, r3, r2
    321a:	461a      	mov	r2, r3
    321c:	4b05      	ldr	r3, [pc, #20]	; (3234 <set_int_priority+0x5c>)
    321e:	4413      	add	r3, r2
    3220:	683a      	ldr	r2, [r7, #0]
    3222:	b2d2      	uxtb	r2, r2
    3224:	0112      	lsls	r2, r2, #4
    3226:	b2d2      	uxtb	r2, r2
    3228:	701a      	strb	r2, [r3, #0]
    322a:	bf00      	nop
    322c:	370c      	adds	r7, #12
    322e:	46bd      	mov	sp, r7
    3230:	bc80      	pop	{r7}
    3232:	4770      	bx	lr
    3234:	e000ed18 	.word	0xe000ed18

00003238 <leap_year>:
    3238:	b480      	push	{r7}
    323a:	b083      	sub	sp, #12
    323c:	af00      	add	r7, sp, #0
    323e:	6078      	str	r0, [r7, #4]
    3240:	687b      	ldr	r3, [r7, #4]
    3242:	f003 0303 	and.w	r3, r3, #3
    3246:	2b00      	cmp	r3, #0
    3248:	d11a      	bne.n	3280 <leap_year+0x48>
    324a:	687a      	ldr	r2, [r7, #4]
    324c:	4b0f      	ldr	r3, [pc, #60]	; (328c <leap_year+0x54>)
    324e:	fba3 1302 	umull	r1, r3, r3, r2
    3252:	095b      	lsrs	r3, r3, #5
    3254:	2164      	movs	r1, #100	; 0x64
    3256:	fb01 f303 	mul.w	r3, r1, r3
    325a:	1ad3      	subs	r3, r2, r3
    325c:	2b00      	cmp	r3, #0
    325e:	d10d      	bne.n	327c <leap_year+0x44>
    3260:	687a      	ldr	r2, [r7, #4]
    3262:	4b0a      	ldr	r3, [pc, #40]	; (328c <leap_year+0x54>)
    3264:	fba3 1302 	umull	r1, r3, r3, r2
    3268:	09db      	lsrs	r3, r3, #7
    326a:	f44f 71c8 	mov.w	r1, #400	; 0x190
    326e:	fb01 f303 	mul.w	r3, r1, r3
    3272:	1ad3      	subs	r3, r2, r3
    3274:	2b00      	cmp	r3, #0
    3276:	d001      	beq.n	327c <leap_year+0x44>
    3278:	2300      	movs	r3, #0
    327a:	e002      	b.n	3282 <leap_year+0x4a>
    327c:	2301      	movs	r3, #1
    327e:	e000      	b.n	3282 <leap_year+0x4a>
    3280:	2300      	movs	r3, #0
    3282:	4618      	mov	r0, r3
    3284:	370c      	adds	r7, #12
    3286:	46bd      	mov	sp, r7
    3288:	bc80      	pop	{r7}
    328a:	4770      	bx	lr
    328c:	51eb851f 	.word	0x51eb851f

00003290 <sec_per_month>:
    3290:	b480      	push	{r7}
    3292:	b085      	sub	sp, #20
    3294:	af00      	add	r7, sp, #0
    3296:	6078      	str	r0, [r7, #4]
    3298:	6039      	str	r1, [r7, #0]
    329a:	4a0d      	ldr	r2, [pc, #52]	; (32d0 <sec_per_month+0x40>)
    329c:	683b      	ldr	r3, [r7, #0]
    329e:	4413      	add	r3, r2
    32a0:	781b      	ldrb	r3, [r3, #0]
    32a2:	461a      	mov	r2, r3
    32a4:	4b0b      	ldr	r3, [pc, #44]	; (32d4 <sec_per_month+0x44>)
    32a6:	fb03 f302 	mul.w	r3, r3, r2
    32aa:	60fb      	str	r3, [r7, #12]
    32ac:	683b      	ldr	r3, [r7, #0]
    32ae:	2b02      	cmp	r3, #2
    32b0:	d108      	bne.n	32c4 <sec_per_month+0x34>
    32b2:	687b      	ldr	r3, [r7, #4]
    32b4:	2b00      	cmp	r3, #0
    32b6:	d005      	beq.n	32c4 <sec_per_month+0x34>
    32b8:	68fb      	ldr	r3, [r7, #12]
    32ba:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    32be:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    32c2:	60fb      	str	r3, [r7, #12]
    32c4:	68fb      	ldr	r3, [r7, #12]
    32c6:	4618      	mov	r0, r3
    32c8:	3714      	adds	r7, #20
    32ca:	46bd      	mov	sp, r7
    32cc:	bc80      	pop	{r7}
    32ce:	4770      	bx	lr
    32d0:	000056f4 	.word	0x000056f4
    32d4:	00015180 	.word	0x00015180

000032d8 <get_date_time>:
    32d8:	b580      	push	{r7, lr}
    32da:	b086      	sub	sp, #24
    32dc:	af00      	add	r7, sp, #0
    32de:	6078      	str	r0, [r7, #4]
    32e0:	4b66      	ldr	r3, [pc, #408]	; (347c <get_date_time+0x1a4>)
    32e2:	699b      	ldr	r3, [r3, #24]
    32e4:	041a      	lsls	r2, r3, #16
    32e6:	4b65      	ldr	r3, [pc, #404]	; (347c <get_date_time+0x1a4>)
    32e8:	69db      	ldr	r3, [r3, #28]
    32ea:	4413      	add	r3, r2
    32ec:	617b      	str	r3, [r7, #20]
    32ee:	687b      	ldr	r3, [r7, #4]
    32f0:	f240 72b2 	movw	r2, #1970	; 0x7b2
    32f4:	811a      	strh	r2, [r3, #8]
    32f6:	f240 70b2 	movw	r0, #1970	; 0x7b2
    32fa:	f7ff ff9d 	bl	3238 <leap_year>
    32fe:	6138      	str	r0, [r7, #16]
    3300:	e019      	b.n	3336 <get_date_time+0x5e>
    3302:	693b      	ldr	r3, [r7, #16]
    3304:	2b00      	cmp	r3, #0
    3306:	d006      	beq.n	3316 <get_date_time+0x3e>
    3308:	697b      	ldr	r3, [r7, #20]
    330a:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    330e:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    3312:	617b      	str	r3, [r7, #20]
    3314:	e003      	b.n	331e <get_date_time+0x46>
    3316:	697a      	ldr	r2, [r7, #20]
    3318:	4b59      	ldr	r3, [pc, #356]	; (3480 <get_date_time+0x1a8>)
    331a:	4413      	add	r3, r2
    331c:	617b      	str	r3, [r7, #20]
    331e:	687b      	ldr	r3, [r7, #4]
    3320:	891b      	ldrh	r3, [r3, #8]
    3322:	3301      	adds	r3, #1
    3324:	b29a      	uxth	r2, r3
    3326:	687b      	ldr	r3, [r7, #4]
    3328:	811a      	strh	r2, [r3, #8]
    332a:	687b      	ldr	r3, [r7, #4]
    332c:	891b      	ldrh	r3, [r3, #8]
    332e:	4618      	mov	r0, r3
    3330:	f7ff ff82 	bl	3238 <leap_year>
    3334:	6138      	str	r0, [r7, #16]
    3336:	693b      	ldr	r3, [r7, #16]
    3338:	2b00      	cmp	r3, #0
    333a:	d103      	bne.n	3344 <get_date_time+0x6c>
    333c:	697b      	ldr	r3, [r7, #20]
    333e:	4a51      	ldr	r2, [pc, #324]	; (3484 <get_date_time+0x1ac>)
    3340:	4293      	cmp	r3, r2
    3342:	d8de      	bhi.n	3302 <get_date_time+0x2a>
    3344:	693b      	ldr	r3, [r7, #16]
    3346:	2b00      	cmp	r3, #0
    3348:	d003      	beq.n	3352 <get_date_time+0x7a>
    334a:	697b      	ldr	r3, [r7, #20]
    334c:	4a4e      	ldr	r2, [pc, #312]	; (3488 <get_date_time+0x1b0>)
    334e:	4293      	cmp	r3, r2
    3350:	d8d7      	bhi.n	3302 <get_date_time+0x2a>
    3352:	687a      	ldr	r2, [r7, #4]
    3354:	8853      	ldrh	r3, [r2, #2]
    3356:	2101      	movs	r1, #1
    3358:	f361 1389 	bfi	r3, r1, #6, #4
    335c:	8053      	strh	r3, [r2, #2]
    335e:	687a      	ldr	r2, [r7, #4]
    3360:	7893      	ldrb	r3, [r2, #2]
    3362:	2101      	movs	r1, #1
    3364:	f361 0345 	bfi	r3, r1, #1, #5
    3368:	7093      	strb	r3, [r2, #2]
    336a:	687a      	ldr	r2, [r7, #4]
    336c:	6813      	ldr	r3, [r2, #0]
    336e:	f36f 3310 	bfc	r3, #12, #5
    3372:	6013      	str	r3, [r2, #0]
    3374:	687a      	ldr	r2, [r7, #4]
    3376:	8813      	ldrh	r3, [r2, #0]
    3378:	f36f 138b 	bfc	r3, #6, #6
    337c:	8013      	strh	r3, [r2, #0]
    337e:	687a      	ldr	r2, [r7, #4]
    3380:	7813      	ldrb	r3, [r2, #0]
    3382:	f36f 0305 	bfc	r3, #0, #6
    3386:	7013      	strb	r3, [r2, #0]
    3388:	e011      	b.n	33ae <get_date_time+0xd6>
    338a:	687b      	ldr	r3, [r7, #4]
    338c:	885b      	ldrh	r3, [r3, #2]
    338e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3392:	b2db      	uxtb	r3, r3
    3394:	3301      	adds	r3, #1
    3396:	f003 030f 	and.w	r3, r3, #15
    339a:	b2d9      	uxtb	r1, r3
    339c:	687a      	ldr	r2, [r7, #4]
    339e:	8853      	ldrh	r3, [r2, #2]
    33a0:	f361 1389 	bfi	r3, r1, #6, #4
    33a4:	8053      	strh	r3, [r2, #2]
    33a6:	697a      	ldr	r2, [r7, #20]
    33a8:	68fb      	ldr	r3, [r7, #12]
    33aa:	1ad3      	subs	r3, r2, r3
    33ac:	617b      	str	r3, [r7, #20]
    33ae:	687b      	ldr	r3, [r7, #4]
    33b0:	885b      	ldrh	r3, [r3, #2]
    33b2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    33b6:	b2db      	uxtb	r3, r3
    33b8:	4619      	mov	r1, r3
    33ba:	6938      	ldr	r0, [r7, #16]
    33bc:	f7ff ff68 	bl	3290 <sec_per_month>
    33c0:	60f8      	str	r0, [r7, #12]
    33c2:	68fa      	ldr	r2, [r7, #12]
    33c4:	697b      	ldr	r3, [r7, #20]
    33c6:	429a      	cmp	r2, r3
    33c8:	d3df      	bcc.n	338a <get_date_time+0xb2>
    33ca:	697b      	ldr	r3, [r7, #20]
    33cc:	4a2f      	ldr	r2, [pc, #188]	; (348c <get_date_time+0x1b4>)
    33ce:	fba2 2303 	umull	r2, r3, r2, r3
    33d2:	0c1b      	lsrs	r3, r3, #16
    33d4:	b2db      	uxtb	r3, r3
    33d6:	3301      	adds	r3, #1
    33d8:	b2db      	uxtb	r3, r3
    33da:	f003 031f 	and.w	r3, r3, #31
    33de:	b2d9      	uxtb	r1, r3
    33e0:	687a      	ldr	r2, [r7, #4]
    33e2:	7893      	ldrb	r3, [r2, #2]
    33e4:	f361 0345 	bfi	r3, r1, #1, #5
    33e8:	7093      	strb	r3, [r2, #2]
    33ea:	697b      	ldr	r3, [r7, #20]
    33ec:	4a27      	ldr	r2, [pc, #156]	; (348c <get_date_time+0x1b4>)
    33ee:	fba2 1203 	umull	r1, r2, r2, r3
    33f2:	0c12      	lsrs	r2, r2, #16
    33f4:	4926      	ldr	r1, [pc, #152]	; (3490 <get_date_time+0x1b8>)
    33f6:	fb01 f202 	mul.w	r2, r1, r2
    33fa:	1a9b      	subs	r3, r3, r2
    33fc:	617b      	str	r3, [r7, #20]
    33fe:	697b      	ldr	r3, [r7, #20]
    3400:	4a24      	ldr	r2, [pc, #144]	; (3494 <get_date_time+0x1bc>)
    3402:	fba2 2303 	umull	r2, r3, r2, r3
    3406:	0adb      	lsrs	r3, r3, #11
    3408:	b2db      	uxtb	r3, r3
    340a:	f003 031f 	and.w	r3, r3, #31
    340e:	b2d9      	uxtb	r1, r3
    3410:	687a      	ldr	r2, [r7, #4]
    3412:	6813      	ldr	r3, [r2, #0]
    3414:	f361 3310 	bfi	r3, r1, #12, #5
    3418:	6013      	str	r3, [r2, #0]
    341a:	697b      	ldr	r3, [r7, #20]
    341c:	4a1d      	ldr	r2, [pc, #116]	; (3494 <get_date_time+0x1bc>)
    341e:	fba2 1203 	umull	r1, r2, r2, r3
    3422:	0ad2      	lsrs	r2, r2, #11
    3424:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    3428:	fb01 f202 	mul.w	r2, r1, r2
    342c:	1a9b      	subs	r3, r3, r2
    342e:	617b      	str	r3, [r7, #20]
    3430:	697b      	ldr	r3, [r7, #20]
    3432:	4a19      	ldr	r2, [pc, #100]	; (3498 <get_date_time+0x1c0>)
    3434:	fba2 2303 	umull	r2, r3, r2, r3
    3438:	095b      	lsrs	r3, r3, #5
    343a:	b2db      	uxtb	r3, r3
    343c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3440:	b2d9      	uxtb	r1, r3
    3442:	687a      	ldr	r2, [r7, #4]
    3444:	8813      	ldrh	r3, [r2, #0]
    3446:	f361 138b 	bfi	r3, r1, #6, #6
    344a:	8013      	strh	r3, [r2, #0]
    344c:	6979      	ldr	r1, [r7, #20]
    344e:	4b12      	ldr	r3, [pc, #72]	; (3498 <get_date_time+0x1c0>)
    3450:	fba3 2301 	umull	r2, r3, r3, r1
    3454:	095a      	lsrs	r2, r3, #5
    3456:	4613      	mov	r3, r2
    3458:	011b      	lsls	r3, r3, #4
    345a:	1a9b      	subs	r3, r3, r2
    345c:	009b      	lsls	r3, r3, #2
    345e:	1aca      	subs	r2, r1, r3
    3460:	b2d3      	uxtb	r3, r2
    3462:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3466:	b2d9      	uxtb	r1, r3
    3468:	687a      	ldr	r2, [r7, #4]
    346a:	7813      	ldrb	r3, [r2, #0]
    346c:	f361 0305 	bfi	r3, r1, #0, #6
    3470:	7013      	strb	r3, [r2, #0]
    3472:	bf00      	nop
    3474:	3718      	adds	r7, #24
    3476:	46bd      	mov	sp, r7
    3478:	bd80      	pop	{r7, pc}
    347a:	bf00      	nop
    347c:	40002800 	.word	0x40002800
    3480:	fe1ecc80 	.word	0xfe1ecc80
    3484:	01e1337f 	.word	0x01e1337f
    3488:	01e284ff 	.word	0x01e284ff
    348c:	c22e4507 	.word	0xc22e4507
    3490:	00015180 	.word	0x00015180
    3494:	91a2b3c5 	.word	0x91a2b3c5
    3498:	88888889 	.word	0x88888889

0000349c <set_date_time>:
    349c:	b580      	push	{r7, lr}
    349e:	b086      	sub	sp, #24
    34a0:	af00      	add	r7, sp, #0
    34a2:	6078      	str	r0, [r7, #4]
    34a4:	2300      	movs	r3, #0
    34a6:	613b      	str	r3, [r7, #16]
    34a8:	687b      	ldr	r3, [r7, #4]
    34aa:	891b      	ldrh	r3, [r3, #8]
    34ac:	f240 72b1 	movw	r2, #1969	; 0x7b1
    34b0:	4293      	cmp	r3, r2
    34b2:	d803      	bhi.n	34bc <set_date_time+0x20>
    34b4:	687b      	ldr	r3, [r7, #4]
    34b6:	f240 72b2 	movw	r2, #1970	; 0x7b2
    34ba:	811a      	strh	r2, [r3, #8]
    34bc:	687b      	ldr	r3, [r7, #4]
    34be:	891b      	ldrh	r3, [r3, #8]
    34c0:	f640 023a 	movw	r2, #2106	; 0x83a
    34c4:	4293      	cmp	r3, r2
    34c6:	d903      	bls.n	34d0 <set_date_time+0x34>
    34c8:	687b      	ldr	r3, [r7, #4]
    34ca:	f640 023a 	movw	r2, #2106	; 0x83a
    34ce:	811a      	strh	r2, [r3, #8]
    34d0:	687b      	ldr	r3, [r7, #4]
    34d2:	891b      	ldrh	r3, [r3, #8]
    34d4:	4618      	mov	r0, r3
    34d6:	f7ff feaf 	bl	3238 <leap_year>
    34da:	60f8      	str	r0, [r7, #12]
    34dc:	f240 73b2 	movw	r3, #1970	; 0x7b2
    34e0:	617b      	str	r3, [r7, #20]
    34e2:	e013      	b.n	350c <set_date_time+0x70>
    34e4:	6978      	ldr	r0, [r7, #20]
    34e6:	f7ff fea7 	bl	3238 <leap_year>
    34ea:	4603      	mov	r3, r0
    34ec:	2b00      	cmp	r3, #0
    34ee:	d006      	beq.n	34fe <set_date_time+0x62>
    34f0:	693b      	ldr	r3, [r7, #16]
    34f2:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    34f6:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    34fa:	613b      	str	r3, [r7, #16]
    34fc:	e003      	b.n	3506 <set_date_time+0x6a>
    34fe:	693a      	ldr	r2, [r7, #16]
    3500:	4b42      	ldr	r3, [pc, #264]	; (360c <set_date_time+0x170>)
    3502:	4413      	add	r3, r2
    3504:	613b      	str	r3, [r7, #16]
    3506:	697b      	ldr	r3, [r7, #20]
    3508:	3301      	adds	r3, #1
    350a:	617b      	str	r3, [r7, #20]
    350c:	687b      	ldr	r3, [r7, #4]
    350e:	891b      	ldrh	r3, [r3, #8]
    3510:	461a      	mov	r2, r3
    3512:	697b      	ldr	r3, [r7, #20]
    3514:	429a      	cmp	r2, r3
    3516:	d8e5      	bhi.n	34e4 <set_date_time+0x48>
    3518:	2301      	movs	r3, #1
    351a:	617b      	str	r3, [r7, #20]
    351c:	e00a      	b.n	3534 <set_date_time+0x98>
    351e:	6979      	ldr	r1, [r7, #20]
    3520:	68f8      	ldr	r0, [r7, #12]
    3522:	f7ff feb5 	bl	3290 <sec_per_month>
    3526:	4602      	mov	r2, r0
    3528:	693b      	ldr	r3, [r7, #16]
    352a:	4413      	add	r3, r2
    352c:	613b      	str	r3, [r7, #16]
    352e:	697b      	ldr	r3, [r7, #20]
    3530:	3301      	adds	r3, #1
    3532:	617b      	str	r3, [r7, #20]
    3534:	687b      	ldr	r3, [r7, #4]
    3536:	885b      	ldrh	r3, [r3, #2]
    3538:	f3c3 1383 	ubfx	r3, r3, #6, #4
    353c:	b2db      	uxtb	r3, r3
    353e:	461a      	mov	r2, r3
    3540:	697b      	ldr	r3, [r7, #20]
    3542:	429a      	cmp	r2, r3
    3544:	d8eb      	bhi.n	351e <set_date_time+0x82>
    3546:	687b      	ldr	r3, [r7, #4]
    3548:	789b      	ldrb	r3, [r3, #2]
    354a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    354e:	b2db      	uxtb	r3, r3
    3550:	3b01      	subs	r3, #1
    3552:	4a2f      	ldr	r2, [pc, #188]	; (3610 <set_date_time+0x174>)
    3554:	fb02 f303 	mul.w	r3, r2, r3
    3558:	461a      	mov	r2, r3
    355a:	693b      	ldr	r3, [r7, #16]
    355c:	4413      	add	r3, r2
    355e:	613b      	str	r3, [r7, #16]
    3560:	687b      	ldr	r3, [r7, #4]
    3562:	681b      	ldr	r3, [r3, #0]
    3564:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3568:	b2db      	uxtb	r3, r3
    356a:	461a      	mov	r2, r3
    356c:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    3570:	fb03 f302 	mul.w	r3, r3, r2
    3574:	461a      	mov	r2, r3
    3576:	693b      	ldr	r3, [r7, #16]
    3578:	4413      	add	r3, r2
    357a:	613b      	str	r3, [r7, #16]
    357c:	687b      	ldr	r3, [r7, #4]
    357e:	881b      	ldrh	r3, [r3, #0]
    3580:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3584:	b2db      	uxtb	r3, r3
    3586:	461a      	mov	r2, r3
    3588:	4613      	mov	r3, r2
    358a:	011b      	lsls	r3, r3, #4
    358c:	1a9b      	subs	r3, r3, r2
    358e:	009b      	lsls	r3, r3, #2
    3590:	461a      	mov	r2, r3
    3592:	693b      	ldr	r3, [r7, #16]
    3594:	4413      	add	r3, r2
    3596:	613b      	str	r3, [r7, #16]
    3598:	687b      	ldr	r3, [r7, #4]
    359a:	781b      	ldrb	r3, [r3, #0]
    359c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    35a0:	b2db      	uxtb	r3, r3
    35a2:	461a      	mov	r2, r3
    35a4:	693b      	ldr	r3, [r7, #16]
    35a6:	4413      	add	r3, r2
    35a8:	613b      	str	r3, [r7, #16]
    35aa:	4a1a      	ldr	r2, [pc, #104]	; (3614 <set_date_time+0x178>)
    35ac:	4b19      	ldr	r3, [pc, #100]	; (3614 <set_date_time+0x178>)
    35ae:	69db      	ldr	r3, [r3, #28]
    35b0:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    35b4:	61d3      	str	r3, [r2, #28]
    35b6:	4a18      	ldr	r2, [pc, #96]	; (3618 <set_date_time+0x17c>)
    35b8:	4b17      	ldr	r3, [pc, #92]	; (3618 <set_date_time+0x17c>)
    35ba:	681b      	ldr	r3, [r3, #0]
    35bc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    35c0:	6013      	str	r3, [r2, #0]
    35c2:	4a16      	ldr	r2, [pc, #88]	; (361c <set_date_time+0x180>)
    35c4:	4b15      	ldr	r3, [pc, #84]	; (361c <set_date_time+0x180>)
    35c6:	685b      	ldr	r3, [r3, #4]
    35c8:	f043 0310 	orr.w	r3, r3, #16
    35cc:	6053      	str	r3, [r2, #4]
    35ce:	4a13      	ldr	r2, [pc, #76]	; (361c <set_date_time+0x180>)
    35d0:	693b      	ldr	r3, [r7, #16]
    35d2:	0c1b      	lsrs	r3, r3, #16
    35d4:	6193      	str	r3, [r2, #24]
    35d6:	4a11      	ldr	r2, [pc, #68]	; (361c <set_date_time+0x180>)
    35d8:	693b      	ldr	r3, [r7, #16]
    35da:	b29b      	uxth	r3, r3
    35dc:	61d3      	str	r3, [r2, #28]
    35de:	4a0f      	ldr	r2, [pc, #60]	; (361c <set_date_time+0x180>)
    35e0:	4b0e      	ldr	r3, [pc, #56]	; (361c <set_date_time+0x180>)
    35e2:	685b      	ldr	r3, [r3, #4]
    35e4:	f023 0310 	bic.w	r3, r3, #16
    35e8:	6053      	str	r3, [r2, #4]
    35ea:	bf00      	nop
    35ec:	4b0b      	ldr	r3, [pc, #44]	; (361c <set_date_time+0x180>)
    35ee:	685b      	ldr	r3, [r3, #4]
    35f0:	f003 0320 	and.w	r3, r3, #32
    35f4:	2b00      	cmp	r3, #0
    35f6:	d0f9      	beq.n	35ec <set_date_time+0x150>
    35f8:	4a07      	ldr	r2, [pc, #28]	; (3618 <set_date_time+0x17c>)
    35fa:	4b07      	ldr	r3, [pc, #28]	; (3618 <set_date_time+0x17c>)
    35fc:	681b      	ldr	r3, [r3, #0]
    35fe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3602:	6013      	str	r3, [r2, #0]
    3604:	bf00      	nop
    3606:	3718      	adds	r7, #24
    3608:	46bd      	mov	sp, r7
    360a:	bd80      	pop	{r7, pc}
    360c:	01e13380 	.word	0x01e13380
    3610:	00015180 	.word	0x00015180
    3614:	40021000 	.word	0x40021000
    3618:	40007000 	.word	0x40007000
    361c:	40002800 	.word	0x40002800

00003620 <rtc_init>:
    3620:	b580      	push	{r7, lr}
    3622:	b082      	sub	sp, #8
    3624:	af00      	add	r7, sp, #0
    3626:	6078      	str	r0, [r7, #4]
    3628:	6039      	str	r1, [r7, #0]
    362a:	4b4a      	ldr	r3, [pc, #296]	; (3754 <rtc_init+0x134>)
    362c:	685b      	ldr	r3, [r3, #4]
    362e:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3632:	4293      	cmp	r3, r2
    3634:	f000 8082 	beq.w	373c <rtc_init+0x11c>
    3638:	4a47      	ldr	r2, [pc, #284]	; (3758 <rtc_init+0x138>)
    363a:	4b47      	ldr	r3, [pc, #284]	; (3758 <rtc_init+0x138>)
    363c:	69db      	ldr	r3, [r3, #28]
    363e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3642:	61d3      	str	r3, [r2, #28]
    3644:	4a45      	ldr	r2, [pc, #276]	; (375c <rtc_init+0x13c>)
    3646:	4b45      	ldr	r3, [pc, #276]	; (375c <rtc_init+0x13c>)
    3648:	681b      	ldr	r3, [r3, #0]
    364a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    364e:	6013      	str	r3, [r2, #0]
    3650:	4a41      	ldr	r2, [pc, #260]	; (3758 <rtc_init+0x138>)
    3652:	4b41      	ldr	r3, [pc, #260]	; (3758 <rtc_init+0x138>)
    3654:	6a1b      	ldr	r3, [r3, #32]
    3656:	f043 0301 	orr.w	r3, r3, #1
    365a:	6213      	str	r3, [r2, #32]
    365c:	bf00      	nop
    365e:	4b3e      	ldr	r3, [pc, #248]	; (3758 <rtc_init+0x138>)
    3660:	6a1b      	ldr	r3, [r3, #32]
    3662:	f003 0302 	and.w	r3, r3, #2
    3666:	2b00      	cmp	r3, #0
    3668:	d0f9      	beq.n	365e <rtc_init+0x3e>
    366a:	4a3b      	ldr	r2, [pc, #236]	; (3758 <rtc_init+0x138>)
    366c:	4b3a      	ldr	r3, [pc, #232]	; (3758 <rtc_init+0x138>)
    366e:	6a1b      	ldr	r3, [r3, #32]
    3670:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    3674:	6213      	str	r3, [r2, #32]
    3676:	bf00      	nop
    3678:	4b39      	ldr	r3, [pc, #228]	; (3760 <rtc_init+0x140>)
    367a:	685b      	ldr	r3, [r3, #4]
    367c:	f003 0308 	and.w	r3, r3, #8
    3680:	2b00      	cmp	r3, #0
    3682:	d0f9      	beq.n	3678 <rtc_init+0x58>
    3684:	bf00      	nop
    3686:	4b36      	ldr	r3, [pc, #216]	; (3760 <rtc_init+0x140>)
    3688:	685b      	ldr	r3, [r3, #4]
    368a:	f003 0320 	and.w	r3, r3, #32
    368e:	2b00      	cmp	r3, #0
    3690:	d0f9      	beq.n	3686 <rtc_init+0x66>
    3692:	4a33      	ldr	r2, [pc, #204]	; (3760 <rtc_init+0x140>)
    3694:	4b32      	ldr	r3, [pc, #200]	; (3760 <rtc_init+0x140>)
    3696:	685b      	ldr	r3, [r3, #4]
    3698:	f043 0310 	orr.w	r3, r3, #16
    369c:	6053      	str	r3, [r2, #4]
    369e:	bf00      	nop
    36a0:	4b2f      	ldr	r3, [pc, #188]	; (3760 <rtc_init+0x140>)
    36a2:	685b      	ldr	r3, [r3, #4]
    36a4:	f003 0320 	and.w	r3, r3, #32
    36a8:	2b00      	cmp	r3, #0
    36aa:	d0f9      	beq.n	36a0 <rtc_init+0x80>
    36ac:	492c      	ldr	r1, [pc, #176]	; (3760 <rtc_init+0x140>)
    36ae:	4b2c      	ldr	r3, [pc, #176]	; (3760 <rtc_init+0x140>)
    36b0:	681a      	ldr	r2, [r3, #0]
    36b2:	683b      	ldr	r3, [r7, #0]
    36b4:	4313      	orrs	r3, r2
    36b6:	600b      	str	r3, [r1, #0]
    36b8:	bf00      	nop
    36ba:	4b29      	ldr	r3, [pc, #164]	; (3760 <rtc_init+0x140>)
    36bc:	685b      	ldr	r3, [r3, #4]
    36be:	f003 0320 	and.w	r3, r3, #32
    36c2:	2b00      	cmp	r3, #0
    36c4:	d0f9      	beq.n	36ba <rtc_init+0x9a>
    36c6:	4a26      	ldr	r2, [pc, #152]	; (3760 <rtc_init+0x140>)
    36c8:	687b      	ldr	r3, [r7, #4]
    36ca:	03db      	lsls	r3, r3, #15
    36cc:	4925      	ldr	r1, [pc, #148]	; (3764 <rtc_init+0x144>)
    36ce:	fba1 1303 	umull	r1, r3, r1, r3
    36d2:	099b      	lsrs	r3, r3, #6
    36d4:	3b01      	subs	r3, #1
    36d6:	b29b      	uxth	r3, r3
    36d8:	60d3      	str	r3, [r2, #12]
    36da:	bf00      	nop
    36dc:	4b20      	ldr	r3, [pc, #128]	; (3760 <rtc_init+0x140>)
    36de:	685b      	ldr	r3, [r3, #4]
    36e0:	f003 0320 	and.w	r3, r3, #32
    36e4:	2b00      	cmp	r3, #0
    36e6:	d0f9      	beq.n	36dc <rtc_init+0xbc>
    36e8:	4a1d      	ldr	r2, [pc, #116]	; (3760 <rtc_init+0x140>)
    36ea:	687b      	ldr	r3, [r7, #4]
    36ec:	03db      	lsls	r3, r3, #15
    36ee:	491d      	ldr	r1, [pc, #116]	; (3764 <rtc_init+0x144>)
    36f0:	fba1 1303 	umull	r1, r3, r1, r3
    36f4:	099b      	lsrs	r3, r3, #6
    36f6:	3b01      	subs	r3, #1
    36f8:	0c1b      	lsrs	r3, r3, #16
    36fa:	f003 030f 	and.w	r3, r3, #15
    36fe:	6093      	str	r3, [r2, #8]
    3700:	bf00      	nop
    3702:	4b17      	ldr	r3, [pc, #92]	; (3760 <rtc_init+0x140>)
    3704:	685b      	ldr	r3, [r3, #4]
    3706:	f003 0320 	and.w	r3, r3, #32
    370a:	2b00      	cmp	r3, #0
    370c:	d0f9      	beq.n	3702 <rtc_init+0xe2>
    370e:	4b11      	ldr	r3, [pc, #68]	; (3754 <rtc_init+0x134>)
    3710:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3714:	605a      	str	r2, [r3, #4]
    3716:	4a12      	ldr	r2, [pc, #72]	; (3760 <rtc_init+0x140>)
    3718:	4b11      	ldr	r3, [pc, #68]	; (3760 <rtc_init+0x140>)
    371a:	685b      	ldr	r3, [r3, #4]
    371c:	f023 0310 	bic.w	r3, r3, #16
    3720:	6053      	str	r3, [r2, #4]
    3722:	bf00      	nop
    3724:	4b0e      	ldr	r3, [pc, #56]	; (3760 <rtc_init+0x140>)
    3726:	685b      	ldr	r3, [r3, #4]
    3728:	f003 0320 	and.w	r3, r3, #32
    372c:	2b00      	cmp	r3, #0
    372e:	d0f9      	beq.n	3724 <rtc_init+0x104>
    3730:	4a0a      	ldr	r2, [pc, #40]	; (375c <rtc_init+0x13c>)
    3732:	4b0a      	ldr	r3, [pc, #40]	; (375c <rtc_init+0x13c>)
    3734:	681b      	ldr	r3, [r3, #0]
    3736:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    373a:	6013      	str	r3, [r2, #0]
    373c:	210f      	movs	r1, #15
    373e:	2003      	movs	r0, #3
    3740:	f7ff fd4a 	bl	31d8 <set_int_priority>
    3744:	2003      	movs	r0, #3
    3746:	f7ff fc8d 	bl	3064 <enable_interrupt>
    374a:	bf00      	nop
    374c:	3708      	adds	r7, #8
    374e:	46bd      	mov	sp, r7
    3750:	bd80      	pop	{r7, pc}
    3752:	bf00      	nop
    3754:	40006c00 	.word	0x40006c00
    3758:	40021000 	.word	0x40021000
    375c:	40007000 	.word	0x40007000
    3760:	40002800 	.word	0x40002800
    3764:	10624dd3 	.word	0x10624dd3

00003768 <reset_backup_domain>:
    3768:	b480      	push	{r7}
    376a:	af00      	add	r7, sp, #0
    376c:	4a0a      	ldr	r2, [pc, #40]	; (3798 <reset_backup_domain+0x30>)
    376e:	4b0a      	ldr	r3, [pc, #40]	; (3798 <reset_backup_domain+0x30>)
    3770:	69db      	ldr	r3, [r3, #28]
    3772:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3776:	61d3      	str	r3, [r2, #28]
    3778:	4a07      	ldr	r2, [pc, #28]	; (3798 <reset_backup_domain+0x30>)
    377a:	4b07      	ldr	r3, [pc, #28]	; (3798 <reset_backup_domain+0x30>)
    377c:	6a1b      	ldr	r3, [r3, #32]
    377e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    3782:	6213      	str	r3, [r2, #32]
    3784:	4a04      	ldr	r2, [pc, #16]	; (3798 <reset_backup_domain+0x30>)
    3786:	4b04      	ldr	r3, [pc, #16]	; (3798 <reset_backup_domain+0x30>)
    3788:	6a1b      	ldr	r3, [r3, #32]
    378a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    378e:	6213      	str	r3, [r2, #32]
    3790:	bf00      	nop
    3792:	46bd      	mov	sp, r7
    3794:	bc80      	pop	{r7}
    3796:	4770      	bx	lr
    3798:	40021000 	.word	0x40021000

0000379c <rtc_clock_trim>:
    379c:	b480      	push	{r7}
    379e:	b083      	sub	sp, #12
    37a0:	af00      	add	r7, sp, #0
    37a2:	6078      	str	r0, [r7, #4]
    37a4:	4a34      	ldr	r2, [pc, #208]	; (3878 <rtc_clock_trim+0xdc>)
    37a6:	4b34      	ldr	r3, [pc, #208]	; (3878 <rtc_clock_trim+0xdc>)
    37a8:	69db      	ldr	r3, [r3, #28]
    37aa:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    37ae:	61d3      	str	r3, [r2, #28]
    37b0:	bf00      	nop
    37b2:	4b32      	ldr	r3, [pc, #200]	; (387c <rtc_clock_trim+0xe0>)
    37b4:	685b      	ldr	r3, [r3, #4]
    37b6:	f003 0308 	and.w	r3, r3, #8
    37ba:	2b00      	cmp	r3, #0
    37bc:	d0f9      	beq.n	37b2 <rtc_clock_trim+0x16>
    37be:	4a30      	ldr	r2, [pc, #192]	; (3880 <rtc_clock_trim+0xe4>)
    37c0:	4b2f      	ldr	r3, [pc, #188]	; (3880 <rtc_clock_trim+0xe4>)
    37c2:	681b      	ldr	r3, [r3, #0]
    37c4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    37c8:	6013      	str	r3, [r2, #0]
    37ca:	4a2c      	ldr	r2, [pc, #176]	; (387c <rtc_clock_trim+0xe0>)
    37cc:	4b2b      	ldr	r3, [pc, #172]	; (387c <rtc_clock_trim+0xe0>)
    37ce:	685b      	ldr	r3, [r3, #4]
    37d0:	f043 0310 	orr.w	r3, r3, #16
    37d4:	6053      	str	r3, [r2, #4]
    37d6:	4a2b      	ldr	r2, [pc, #172]	; (3884 <rtc_clock_trim+0xe8>)
    37d8:	4b2a      	ldr	r3, [pc, #168]	; (3884 <rtc_clock_trim+0xe8>)
    37da:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    37dc:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    37e0:	62d3      	str	r3, [r2, #44]	; 0x2c
    37e2:	687b      	ldr	r3, [r7, #4]
    37e4:	2b00      	cmp	r3, #0
    37e6:	d10a      	bne.n	37fe <rtc_clock_trim+0x62>
    37e8:	4b26      	ldr	r3, [pc, #152]	; (3884 <rtc_clock_trim+0xe8>)
    37ea:	2200      	movs	r2, #0
    37ec:	62da      	str	r2, [r3, #44]	; 0x2c
    37ee:	4b23      	ldr	r3, [pc, #140]	; (387c <rtc_clock_trim+0xe0>)
    37f0:	f647 72ff 	movw	r2, #32767	; 0x7fff
    37f4:	60da      	str	r2, [r3, #12]
    37f6:	4b21      	ldr	r3, [pc, #132]	; (387c <rtc_clock_trim+0xe0>)
    37f8:	2200      	movs	r2, #0
    37fa:	609a      	str	r2, [r3, #8]
    37fc:	e023      	b.n	3846 <rtc_clock_trim+0xaa>
    37fe:	687b      	ldr	r3, [r7, #4]
    3800:	2b00      	cmp	r3, #0
    3802:	dd0a      	ble.n	381a <rtc_clock_trim+0x7e>
    3804:	687b      	ldr	r3, [r7, #4]
    3806:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    380a:	607b      	str	r3, [r7, #4]
    380c:	491d      	ldr	r1, [pc, #116]	; (3884 <rtc_clock_trim+0xe8>)
    380e:	4b1d      	ldr	r3, [pc, #116]	; (3884 <rtc_clock_trim+0xe8>)
    3810:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3812:	687b      	ldr	r3, [r7, #4]
    3814:	4313      	orrs	r3, r2
    3816:	62cb      	str	r3, [r1, #44]	; 0x2c
    3818:	e015      	b.n	3846 <rtc_clock_trim+0xaa>
    381a:	687b      	ldr	r3, [r7, #4]
    381c:	425b      	negs	r3, r3
    381e:	607b      	str	r3, [r7, #4]
    3820:	687b      	ldr	r3, [r7, #4]
    3822:	2b7f      	cmp	r3, #127	; 0x7f
    3824:	dd01      	ble.n	382a <rtc_clock_trim+0x8e>
    3826:	237f      	movs	r3, #127	; 0x7f
    3828:	607b      	str	r3, [r7, #4]
    382a:	4b16      	ldr	r3, [pc, #88]	; (3884 <rtc_clock_trim+0xe8>)
    382c:	2200      	movs	r2, #0
    382e:	62da      	str	r2, [r3, #44]	; 0x2c
    3830:	4a12      	ldr	r2, [pc, #72]	; (387c <rtc_clock_trim+0xe0>)
    3832:	687b      	ldr	r3, [r7, #4]
    3834:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3838:	33ff      	adds	r3, #255	; 0xff
    383a:	f3c3 030e 	ubfx	r3, r3, #0, #15
    383e:	60d3      	str	r3, [r2, #12]
    3840:	4b0e      	ldr	r3, [pc, #56]	; (387c <rtc_clock_trim+0xe0>)
    3842:	2200      	movs	r2, #0
    3844:	609a      	str	r2, [r3, #8]
    3846:	4a0d      	ldr	r2, [pc, #52]	; (387c <rtc_clock_trim+0xe0>)
    3848:	4b0c      	ldr	r3, [pc, #48]	; (387c <rtc_clock_trim+0xe0>)
    384a:	685b      	ldr	r3, [r3, #4]
    384c:	f023 0310 	bic.w	r3, r3, #16
    3850:	6053      	str	r3, [r2, #4]
    3852:	bf00      	nop
    3854:	4b09      	ldr	r3, [pc, #36]	; (387c <rtc_clock_trim+0xe0>)
    3856:	685b      	ldr	r3, [r3, #4]
    3858:	f003 0320 	and.w	r3, r3, #32
    385c:	2b00      	cmp	r3, #0
    385e:	d0f9      	beq.n	3854 <rtc_clock_trim+0xb8>
    3860:	4a07      	ldr	r2, [pc, #28]	; (3880 <rtc_clock_trim+0xe4>)
    3862:	4b07      	ldr	r3, [pc, #28]	; (3880 <rtc_clock_trim+0xe4>)
    3864:	681b      	ldr	r3, [r3, #0]
    3866:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    386a:	6013      	str	r3, [r2, #0]
    386c:	bf00      	nop
    386e:	370c      	adds	r7, #12
    3870:	46bd      	mov	sp, r7
    3872:	bc80      	pop	{r7}
    3874:	4770      	bx	lr
    3876:	bf00      	nop
    3878:	40021000 	.word	0x40021000
    387c:	40002800 	.word	0x40002800
    3880:	40007000 	.word	0x40007000
    3884:	40006c00 	.word	0x40006c00

00003888 <rtc_set_alarm>:
    3888:	b480      	push	{r7}
    388a:	b083      	sub	sp, #12
    388c:	af00      	add	r7, sp, #0
    388e:	6078      	str	r0, [r7, #4]
    3890:	bf00      	nop
    3892:	370c      	adds	r7, #12
    3894:	46bd      	mov	sp, r7
    3896:	bc80      	pop	{r7}
    3898:	4770      	bx	lr

0000389a <str_to_date>:
    389a:	b580      	push	{r7, lr}
    389c:	b084      	sub	sp, #16
    389e:	af00      	add	r7, sp, #0
    38a0:	6078      	str	r0, [r7, #4]
    38a2:	6039      	str	r1, [r7, #0]
    38a4:	2300      	movs	r3, #0
    38a6:	60fb      	str	r3, [r7, #12]
    38a8:	2300      	movs	r3, #0
    38aa:	60bb      	str	r3, [r7, #8]
    38ac:	e00f      	b.n	38ce <str_to_date+0x34>
    38ae:	68ba      	ldr	r2, [r7, #8]
    38b0:	4613      	mov	r3, r2
    38b2:	009b      	lsls	r3, r3, #2
    38b4:	4413      	add	r3, r2
    38b6:	005b      	lsls	r3, r3, #1
    38b8:	4619      	mov	r1, r3
    38ba:	68fb      	ldr	r3, [r7, #12]
    38bc:	1c5a      	adds	r2, r3, #1
    38be:	60fa      	str	r2, [r7, #12]
    38c0:	461a      	mov	r2, r3
    38c2:	687b      	ldr	r3, [r7, #4]
    38c4:	4413      	add	r3, r2
    38c6:	781b      	ldrb	r3, [r3, #0]
    38c8:	440b      	add	r3, r1
    38ca:	3b30      	subs	r3, #48	; 0x30
    38cc:	60bb      	str	r3, [r7, #8]
    38ce:	68fb      	ldr	r3, [r7, #12]
    38d0:	687a      	ldr	r2, [r7, #4]
    38d2:	4413      	add	r3, r2
    38d4:	781b      	ldrb	r3, [r3, #0]
    38d6:	4618      	mov	r0, r3
    38d8:	f7fe f8f9 	bl	1ace <digit>
    38dc:	4603      	mov	r3, r0
    38de:	2b00      	cmp	r3, #0
    38e0:	d1e5      	bne.n	38ae <str_to_date+0x14>
    38e2:	68fb      	ldr	r3, [r7, #12]
    38e4:	2b03      	cmp	r3, #3
    38e6:	dd05      	ble.n	38f4 <str_to_date+0x5a>
    38e8:	68fb      	ldr	r3, [r7, #12]
    38ea:	687a      	ldr	r2, [r7, #4]
    38ec:	4413      	add	r3, r2
    38ee:	781b      	ldrb	r3, [r3, #0]
    38f0:	2b2f      	cmp	r3, #47	; 0x2f
    38f2:	d001      	beq.n	38f8 <str_to_date+0x5e>
    38f4:	2300      	movs	r3, #0
    38f6:	e068      	b.n	39ca <str_to_date+0x130>
    38f8:	68bb      	ldr	r3, [r7, #8]
    38fa:	b29a      	uxth	r2, r3
    38fc:	683b      	ldr	r3, [r7, #0]
    38fe:	811a      	strh	r2, [r3, #8]
    3900:	68fb      	ldr	r3, [r7, #12]
    3902:	3301      	adds	r3, #1
    3904:	60fb      	str	r3, [r7, #12]
    3906:	2300      	movs	r3, #0
    3908:	60bb      	str	r3, [r7, #8]
    390a:	e00f      	b.n	392c <str_to_date+0x92>
    390c:	68ba      	ldr	r2, [r7, #8]
    390e:	4613      	mov	r3, r2
    3910:	009b      	lsls	r3, r3, #2
    3912:	4413      	add	r3, r2
    3914:	005b      	lsls	r3, r3, #1
    3916:	4619      	mov	r1, r3
    3918:	68fb      	ldr	r3, [r7, #12]
    391a:	1c5a      	adds	r2, r3, #1
    391c:	60fa      	str	r2, [r7, #12]
    391e:	461a      	mov	r2, r3
    3920:	687b      	ldr	r3, [r7, #4]
    3922:	4413      	add	r3, r2
    3924:	781b      	ldrb	r3, [r3, #0]
    3926:	440b      	add	r3, r1
    3928:	3b30      	subs	r3, #48	; 0x30
    392a:	60bb      	str	r3, [r7, #8]
    392c:	68fb      	ldr	r3, [r7, #12]
    392e:	687a      	ldr	r2, [r7, #4]
    3930:	4413      	add	r3, r2
    3932:	781b      	ldrb	r3, [r3, #0]
    3934:	4618      	mov	r0, r3
    3936:	f7fe f8ca 	bl	1ace <digit>
    393a:	4603      	mov	r3, r0
    393c:	2b00      	cmp	r3, #0
    393e:	d1e5      	bne.n	390c <str_to_date+0x72>
    3940:	68fb      	ldr	r3, [r7, #12]
    3942:	2b06      	cmp	r3, #6
    3944:	dd05      	ble.n	3952 <str_to_date+0xb8>
    3946:	68fb      	ldr	r3, [r7, #12]
    3948:	687a      	ldr	r2, [r7, #4]
    394a:	4413      	add	r3, r2
    394c:	781b      	ldrb	r3, [r3, #0]
    394e:	2b2f      	cmp	r3, #47	; 0x2f
    3950:	d001      	beq.n	3956 <str_to_date+0xbc>
    3952:	2300      	movs	r3, #0
    3954:	e039      	b.n	39ca <str_to_date+0x130>
    3956:	68bb      	ldr	r3, [r7, #8]
    3958:	b2db      	uxtb	r3, r3
    395a:	f003 030f 	and.w	r3, r3, #15
    395e:	b2d9      	uxtb	r1, r3
    3960:	683a      	ldr	r2, [r7, #0]
    3962:	8853      	ldrh	r3, [r2, #2]
    3964:	f361 1389 	bfi	r3, r1, #6, #4
    3968:	8053      	strh	r3, [r2, #2]
    396a:	2300      	movs	r3, #0
    396c:	60bb      	str	r3, [r7, #8]
    396e:	68fb      	ldr	r3, [r7, #12]
    3970:	3301      	adds	r3, #1
    3972:	60fb      	str	r3, [r7, #12]
    3974:	e00f      	b.n	3996 <str_to_date+0xfc>
    3976:	68ba      	ldr	r2, [r7, #8]
    3978:	4613      	mov	r3, r2
    397a:	009b      	lsls	r3, r3, #2
    397c:	4413      	add	r3, r2
    397e:	005b      	lsls	r3, r3, #1
    3980:	4619      	mov	r1, r3
    3982:	68fb      	ldr	r3, [r7, #12]
    3984:	1c5a      	adds	r2, r3, #1
    3986:	60fa      	str	r2, [r7, #12]
    3988:	461a      	mov	r2, r3
    398a:	687b      	ldr	r3, [r7, #4]
    398c:	4413      	add	r3, r2
    398e:	781b      	ldrb	r3, [r3, #0]
    3990:	440b      	add	r3, r1
    3992:	3b30      	subs	r3, #48	; 0x30
    3994:	60bb      	str	r3, [r7, #8]
    3996:	68fb      	ldr	r3, [r7, #12]
    3998:	687a      	ldr	r2, [r7, #4]
    399a:	4413      	add	r3, r2
    399c:	781b      	ldrb	r3, [r3, #0]
    399e:	4618      	mov	r0, r3
    39a0:	f7fe f895 	bl	1ace <digit>
    39a4:	4603      	mov	r3, r0
    39a6:	2b00      	cmp	r3, #0
    39a8:	d1e5      	bne.n	3976 <str_to_date+0xdc>
    39aa:	68fb      	ldr	r3, [r7, #12]
    39ac:	2b09      	cmp	r3, #9
    39ae:	dc01      	bgt.n	39b4 <str_to_date+0x11a>
    39b0:	2300      	movs	r3, #0
    39b2:	e00a      	b.n	39ca <str_to_date+0x130>
    39b4:	68bb      	ldr	r3, [r7, #8]
    39b6:	b2db      	uxtb	r3, r3
    39b8:	f003 031f 	and.w	r3, r3, #31
    39bc:	b2d9      	uxtb	r1, r3
    39be:	683a      	ldr	r2, [r7, #0]
    39c0:	7893      	ldrb	r3, [r2, #2]
    39c2:	f361 0345 	bfi	r3, r1, #1, #5
    39c6:	7093      	strb	r3, [r2, #2]
    39c8:	2301      	movs	r3, #1
    39ca:	4618      	mov	r0, r3
    39cc:	3710      	adds	r7, #16
    39ce:	46bd      	mov	sp, r7
    39d0:	bd80      	pop	{r7, pc}

000039d2 <str_to_time>:
    39d2:	b580      	push	{r7, lr}
    39d4:	b084      	sub	sp, #16
    39d6:	af00      	add	r7, sp, #0
    39d8:	6078      	str	r0, [r7, #4]
    39da:	6039      	str	r1, [r7, #0]
    39dc:	2300      	movs	r3, #0
    39de:	60fb      	str	r3, [r7, #12]
    39e0:	2300      	movs	r3, #0
    39e2:	72fb      	strb	r3, [r7, #11]
    39e4:	e010      	b.n	3a08 <str_to_time+0x36>
    39e6:	7afb      	ldrb	r3, [r7, #11]
    39e8:	461a      	mov	r2, r3
    39ea:	0092      	lsls	r2, r2, #2
    39ec:	4413      	add	r3, r2
    39ee:	005b      	lsls	r3, r3, #1
    39f0:	b2da      	uxtb	r2, r3
    39f2:	68fb      	ldr	r3, [r7, #12]
    39f4:	1c59      	adds	r1, r3, #1
    39f6:	60f9      	str	r1, [r7, #12]
    39f8:	4619      	mov	r1, r3
    39fa:	687b      	ldr	r3, [r7, #4]
    39fc:	440b      	add	r3, r1
    39fe:	781b      	ldrb	r3, [r3, #0]
    3a00:	4413      	add	r3, r2
    3a02:	b2db      	uxtb	r3, r3
    3a04:	3b30      	subs	r3, #48	; 0x30
    3a06:	72fb      	strb	r3, [r7, #11]
    3a08:	68fb      	ldr	r3, [r7, #12]
    3a0a:	687a      	ldr	r2, [r7, #4]
    3a0c:	4413      	add	r3, r2
    3a0e:	781b      	ldrb	r3, [r3, #0]
    3a10:	4618      	mov	r0, r3
    3a12:	f7fe f85c 	bl	1ace <digit>
    3a16:	4603      	mov	r3, r0
    3a18:	2b00      	cmp	r3, #0
    3a1a:	d1e4      	bne.n	39e6 <str_to_time+0x14>
    3a1c:	7afb      	ldrb	r3, [r7, #11]
    3a1e:	2b17      	cmp	r3, #23
    3a20:	d805      	bhi.n	3a2e <str_to_time+0x5c>
    3a22:	68fb      	ldr	r3, [r7, #12]
    3a24:	687a      	ldr	r2, [r7, #4]
    3a26:	4413      	add	r3, r2
    3a28:	781b      	ldrb	r3, [r3, #0]
    3a2a:	2b3a      	cmp	r3, #58	; 0x3a
    3a2c:	d001      	beq.n	3a32 <str_to_time+0x60>
    3a2e:	2300      	movs	r3, #0
    3a30:	e06d      	b.n	3b0e <str_to_time+0x13c>
    3a32:	7afb      	ldrb	r3, [r7, #11]
    3a34:	f003 031f 	and.w	r3, r3, #31
    3a38:	b2d9      	uxtb	r1, r3
    3a3a:	683a      	ldr	r2, [r7, #0]
    3a3c:	6813      	ldr	r3, [r2, #0]
    3a3e:	f361 3310 	bfi	r3, r1, #12, #5
    3a42:	6013      	str	r3, [r2, #0]
    3a44:	68fb      	ldr	r3, [r7, #12]
    3a46:	3301      	adds	r3, #1
    3a48:	60fb      	str	r3, [r7, #12]
    3a4a:	2300      	movs	r3, #0
    3a4c:	72fb      	strb	r3, [r7, #11]
    3a4e:	e010      	b.n	3a72 <str_to_time+0xa0>
    3a50:	7afb      	ldrb	r3, [r7, #11]
    3a52:	461a      	mov	r2, r3
    3a54:	0092      	lsls	r2, r2, #2
    3a56:	4413      	add	r3, r2
    3a58:	005b      	lsls	r3, r3, #1
    3a5a:	b2da      	uxtb	r2, r3
    3a5c:	68fb      	ldr	r3, [r7, #12]
    3a5e:	1c59      	adds	r1, r3, #1
    3a60:	60f9      	str	r1, [r7, #12]
    3a62:	4619      	mov	r1, r3
    3a64:	687b      	ldr	r3, [r7, #4]
    3a66:	440b      	add	r3, r1
    3a68:	781b      	ldrb	r3, [r3, #0]
    3a6a:	4413      	add	r3, r2
    3a6c:	b2db      	uxtb	r3, r3
    3a6e:	3b30      	subs	r3, #48	; 0x30
    3a70:	72fb      	strb	r3, [r7, #11]
    3a72:	68fb      	ldr	r3, [r7, #12]
    3a74:	687a      	ldr	r2, [r7, #4]
    3a76:	4413      	add	r3, r2
    3a78:	781b      	ldrb	r3, [r3, #0]
    3a7a:	4618      	mov	r0, r3
    3a7c:	f7fe f827 	bl	1ace <digit>
    3a80:	4603      	mov	r3, r0
    3a82:	2b00      	cmp	r3, #0
    3a84:	d1e4      	bne.n	3a50 <str_to_time+0x7e>
    3a86:	7afb      	ldrb	r3, [r7, #11]
    3a88:	2b3b      	cmp	r3, #59	; 0x3b
    3a8a:	d805      	bhi.n	3a98 <str_to_time+0xc6>
    3a8c:	68fb      	ldr	r3, [r7, #12]
    3a8e:	687a      	ldr	r2, [r7, #4]
    3a90:	4413      	add	r3, r2
    3a92:	781b      	ldrb	r3, [r3, #0]
    3a94:	2b3a      	cmp	r3, #58	; 0x3a
    3a96:	d001      	beq.n	3a9c <str_to_time+0xca>
    3a98:	2300      	movs	r3, #0
    3a9a:	e038      	b.n	3b0e <str_to_time+0x13c>
    3a9c:	7afb      	ldrb	r3, [r7, #11]
    3a9e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3aa2:	b2d9      	uxtb	r1, r3
    3aa4:	683a      	ldr	r2, [r7, #0]
    3aa6:	8813      	ldrh	r3, [r2, #0]
    3aa8:	f361 138b 	bfi	r3, r1, #6, #6
    3aac:	8013      	strh	r3, [r2, #0]
    3aae:	2300      	movs	r3, #0
    3ab0:	72fb      	strb	r3, [r7, #11]
    3ab2:	68fb      	ldr	r3, [r7, #12]
    3ab4:	3301      	adds	r3, #1
    3ab6:	60fb      	str	r3, [r7, #12]
    3ab8:	e010      	b.n	3adc <str_to_time+0x10a>
    3aba:	7afb      	ldrb	r3, [r7, #11]
    3abc:	461a      	mov	r2, r3
    3abe:	0092      	lsls	r2, r2, #2
    3ac0:	4413      	add	r3, r2
    3ac2:	005b      	lsls	r3, r3, #1
    3ac4:	b2da      	uxtb	r2, r3
    3ac6:	68fb      	ldr	r3, [r7, #12]
    3ac8:	1c59      	adds	r1, r3, #1
    3aca:	60f9      	str	r1, [r7, #12]
    3acc:	4619      	mov	r1, r3
    3ace:	687b      	ldr	r3, [r7, #4]
    3ad0:	440b      	add	r3, r1
    3ad2:	781b      	ldrb	r3, [r3, #0]
    3ad4:	4413      	add	r3, r2
    3ad6:	b2db      	uxtb	r3, r3
    3ad8:	3b30      	subs	r3, #48	; 0x30
    3ada:	72fb      	strb	r3, [r7, #11]
    3adc:	68fb      	ldr	r3, [r7, #12]
    3ade:	687a      	ldr	r2, [r7, #4]
    3ae0:	4413      	add	r3, r2
    3ae2:	781b      	ldrb	r3, [r3, #0]
    3ae4:	4618      	mov	r0, r3
    3ae6:	f7fd fff2 	bl	1ace <digit>
    3aea:	4603      	mov	r3, r0
    3aec:	2b00      	cmp	r3, #0
    3aee:	d1e4      	bne.n	3aba <str_to_time+0xe8>
    3af0:	7afb      	ldrb	r3, [r7, #11]
    3af2:	2b3b      	cmp	r3, #59	; 0x3b
    3af4:	d901      	bls.n	3afa <str_to_time+0x128>
    3af6:	2300      	movs	r3, #0
    3af8:	e009      	b.n	3b0e <str_to_time+0x13c>
    3afa:	7afb      	ldrb	r3, [r7, #11]
    3afc:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3b00:	b2d9      	uxtb	r1, r3
    3b02:	683a      	ldr	r2, [r7, #0]
    3b04:	7813      	ldrb	r3, [r2, #0]
    3b06:	f361 0305 	bfi	r3, r1, #0, #6
    3b0a:	7013      	strb	r3, [r2, #0]
    3b0c:	2301      	movs	r3, #1
    3b0e:	4618      	mov	r0, r3
    3b10:	3710      	adds	r7, #16
    3b12:	46bd      	mov	sp, r7
    3b14:	bd80      	pop	{r7, pc}

00003b16 <date_str>:
    3b16:	b480      	push	{r7}
    3b18:	b085      	sub	sp, #20
    3b1a:	af00      	add	r7, sp, #0
    3b1c:	6078      	str	r0, [r7, #4]
    3b1e:	6039      	str	r1, [r7, #0]
    3b20:	2300      	movs	r3, #0
    3b22:	60fb      	str	r3, [r7, #12]
    3b24:	687b      	ldr	r3, [r7, #4]
    3b26:	891b      	ldrh	r3, [r3, #8]
    3b28:	60bb      	str	r3, [r7, #8]
    3b2a:	68fb      	ldr	r3, [r7, #12]
    3b2c:	1c5a      	adds	r2, r3, #1
    3b2e:	60fa      	str	r2, [r7, #12]
    3b30:	461a      	mov	r2, r3
    3b32:	683b      	ldr	r3, [r7, #0]
    3b34:	4413      	add	r3, r2
    3b36:	68ba      	ldr	r2, [r7, #8]
    3b38:	495d      	ldr	r1, [pc, #372]	; (3cb0 <date_str+0x19a>)
    3b3a:	fba1 1202 	umull	r1, r2, r1, r2
    3b3e:	0992      	lsrs	r2, r2, #6
    3b40:	b2d2      	uxtb	r2, r2
    3b42:	3230      	adds	r2, #48	; 0x30
    3b44:	b2d2      	uxtb	r2, r2
    3b46:	701a      	strb	r2, [r3, #0]
    3b48:	68bb      	ldr	r3, [r7, #8]
    3b4a:	4a59      	ldr	r2, [pc, #356]	; (3cb0 <date_str+0x19a>)
    3b4c:	fba2 1203 	umull	r1, r2, r2, r3
    3b50:	0992      	lsrs	r2, r2, #6
    3b52:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3b56:	fb01 f202 	mul.w	r2, r1, r2
    3b5a:	1a9b      	subs	r3, r3, r2
    3b5c:	60bb      	str	r3, [r7, #8]
    3b5e:	68fb      	ldr	r3, [r7, #12]
    3b60:	1c5a      	adds	r2, r3, #1
    3b62:	60fa      	str	r2, [r7, #12]
    3b64:	461a      	mov	r2, r3
    3b66:	683b      	ldr	r3, [r7, #0]
    3b68:	4413      	add	r3, r2
    3b6a:	68ba      	ldr	r2, [r7, #8]
    3b6c:	4951      	ldr	r1, [pc, #324]	; (3cb4 <date_str+0x19e>)
    3b6e:	fba1 1202 	umull	r1, r2, r1, r2
    3b72:	0952      	lsrs	r2, r2, #5
    3b74:	b2d2      	uxtb	r2, r2
    3b76:	3230      	adds	r2, #48	; 0x30
    3b78:	b2d2      	uxtb	r2, r2
    3b7a:	701a      	strb	r2, [r3, #0]
    3b7c:	68bb      	ldr	r3, [r7, #8]
    3b7e:	4a4d      	ldr	r2, [pc, #308]	; (3cb4 <date_str+0x19e>)
    3b80:	fba2 1203 	umull	r1, r2, r2, r3
    3b84:	0952      	lsrs	r2, r2, #5
    3b86:	2164      	movs	r1, #100	; 0x64
    3b88:	fb01 f202 	mul.w	r2, r1, r2
    3b8c:	1a9b      	subs	r3, r3, r2
    3b8e:	60bb      	str	r3, [r7, #8]
    3b90:	68fb      	ldr	r3, [r7, #12]
    3b92:	1c5a      	adds	r2, r3, #1
    3b94:	60fa      	str	r2, [r7, #12]
    3b96:	461a      	mov	r2, r3
    3b98:	683b      	ldr	r3, [r7, #0]
    3b9a:	4413      	add	r3, r2
    3b9c:	68ba      	ldr	r2, [r7, #8]
    3b9e:	4946      	ldr	r1, [pc, #280]	; (3cb8 <date_str+0x1a2>)
    3ba0:	fba1 1202 	umull	r1, r2, r1, r2
    3ba4:	08d2      	lsrs	r2, r2, #3
    3ba6:	b2d2      	uxtb	r2, r2
    3ba8:	3230      	adds	r2, #48	; 0x30
    3baa:	b2d2      	uxtb	r2, r2
    3bac:	701a      	strb	r2, [r3, #0]
    3bae:	68fb      	ldr	r3, [r7, #12]
    3bb0:	1c5a      	adds	r2, r3, #1
    3bb2:	60fa      	str	r2, [r7, #12]
    3bb4:	461a      	mov	r2, r3
    3bb6:	683b      	ldr	r3, [r7, #0]
    3bb8:	1898      	adds	r0, r3, r2
    3bba:	68b9      	ldr	r1, [r7, #8]
    3bbc:	4b3e      	ldr	r3, [pc, #248]	; (3cb8 <date_str+0x1a2>)
    3bbe:	fba3 2301 	umull	r2, r3, r3, r1
    3bc2:	08da      	lsrs	r2, r3, #3
    3bc4:	4613      	mov	r3, r2
    3bc6:	009b      	lsls	r3, r3, #2
    3bc8:	4413      	add	r3, r2
    3bca:	005b      	lsls	r3, r3, #1
    3bcc:	1aca      	subs	r2, r1, r3
    3bce:	b2d3      	uxtb	r3, r2
    3bd0:	3330      	adds	r3, #48	; 0x30
    3bd2:	b2db      	uxtb	r3, r3
    3bd4:	7003      	strb	r3, [r0, #0]
    3bd6:	68fb      	ldr	r3, [r7, #12]
    3bd8:	1c5a      	adds	r2, r3, #1
    3bda:	60fa      	str	r2, [r7, #12]
    3bdc:	461a      	mov	r2, r3
    3bde:	683b      	ldr	r3, [r7, #0]
    3be0:	4413      	add	r3, r2
    3be2:	222f      	movs	r2, #47	; 0x2f
    3be4:	701a      	strb	r2, [r3, #0]
    3be6:	687b      	ldr	r3, [r7, #4]
    3be8:	885b      	ldrh	r3, [r3, #2]
    3bea:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3bee:	b2db      	uxtb	r3, r3
    3bf0:	60bb      	str	r3, [r7, #8]
    3bf2:	68fb      	ldr	r3, [r7, #12]
    3bf4:	1c5a      	adds	r2, r3, #1
    3bf6:	60fa      	str	r2, [r7, #12]
    3bf8:	461a      	mov	r2, r3
    3bfa:	683b      	ldr	r3, [r7, #0]
    3bfc:	4413      	add	r3, r2
    3bfe:	68ba      	ldr	r2, [r7, #8]
    3c00:	492d      	ldr	r1, [pc, #180]	; (3cb8 <date_str+0x1a2>)
    3c02:	fba1 1202 	umull	r1, r2, r1, r2
    3c06:	08d2      	lsrs	r2, r2, #3
    3c08:	b2d2      	uxtb	r2, r2
    3c0a:	3230      	adds	r2, #48	; 0x30
    3c0c:	b2d2      	uxtb	r2, r2
    3c0e:	701a      	strb	r2, [r3, #0]
    3c10:	68fb      	ldr	r3, [r7, #12]
    3c12:	1c5a      	adds	r2, r3, #1
    3c14:	60fa      	str	r2, [r7, #12]
    3c16:	461a      	mov	r2, r3
    3c18:	683b      	ldr	r3, [r7, #0]
    3c1a:	1898      	adds	r0, r3, r2
    3c1c:	68b9      	ldr	r1, [r7, #8]
    3c1e:	4b26      	ldr	r3, [pc, #152]	; (3cb8 <date_str+0x1a2>)
    3c20:	fba3 2301 	umull	r2, r3, r3, r1
    3c24:	08da      	lsrs	r2, r3, #3
    3c26:	4613      	mov	r3, r2
    3c28:	009b      	lsls	r3, r3, #2
    3c2a:	4413      	add	r3, r2
    3c2c:	005b      	lsls	r3, r3, #1
    3c2e:	1aca      	subs	r2, r1, r3
    3c30:	b2d3      	uxtb	r3, r2
    3c32:	3330      	adds	r3, #48	; 0x30
    3c34:	b2db      	uxtb	r3, r3
    3c36:	7003      	strb	r3, [r0, #0]
    3c38:	68fb      	ldr	r3, [r7, #12]
    3c3a:	1c5a      	adds	r2, r3, #1
    3c3c:	60fa      	str	r2, [r7, #12]
    3c3e:	461a      	mov	r2, r3
    3c40:	683b      	ldr	r3, [r7, #0]
    3c42:	4413      	add	r3, r2
    3c44:	222f      	movs	r2, #47	; 0x2f
    3c46:	701a      	strb	r2, [r3, #0]
    3c48:	687b      	ldr	r3, [r7, #4]
    3c4a:	789b      	ldrb	r3, [r3, #2]
    3c4c:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3c50:	b2db      	uxtb	r3, r3
    3c52:	60bb      	str	r3, [r7, #8]
    3c54:	68fb      	ldr	r3, [r7, #12]
    3c56:	1c5a      	adds	r2, r3, #1
    3c58:	60fa      	str	r2, [r7, #12]
    3c5a:	461a      	mov	r2, r3
    3c5c:	683b      	ldr	r3, [r7, #0]
    3c5e:	4413      	add	r3, r2
    3c60:	68ba      	ldr	r2, [r7, #8]
    3c62:	4915      	ldr	r1, [pc, #84]	; (3cb8 <date_str+0x1a2>)
    3c64:	fba1 1202 	umull	r1, r2, r1, r2
    3c68:	08d2      	lsrs	r2, r2, #3
    3c6a:	b2d2      	uxtb	r2, r2
    3c6c:	3230      	adds	r2, #48	; 0x30
    3c6e:	b2d2      	uxtb	r2, r2
    3c70:	701a      	strb	r2, [r3, #0]
    3c72:	68fb      	ldr	r3, [r7, #12]
    3c74:	1c5a      	adds	r2, r3, #1
    3c76:	60fa      	str	r2, [r7, #12]
    3c78:	461a      	mov	r2, r3
    3c7a:	683b      	ldr	r3, [r7, #0]
    3c7c:	1898      	adds	r0, r3, r2
    3c7e:	68b9      	ldr	r1, [r7, #8]
    3c80:	4b0d      	ldr	r3, [pc, #52]	; (3cb8 <date_str+0x1a2>)
    3c82:	fba3 2301 	umull	r2, r3, r3, r1
    3c86:	08da      	lsrs	r2, r3, #3
    3c88:	4613      	mov	r3, r2
    3c8a:	009b      	lsls	r3, r3, #2
    3c8c:	4413      	add	r3, r2
    3c8e:	005b      	lsls	r3, r3, #1
    3c90:	1aca      	subs	r2, r1, r3
    3c92:	b2d3      	uxtb	r3, r2
    3c94:	3330      	adds	r3, #48	; 0x30
    3c96:	b2db      	uxtb	r3, r3
    3c98:	7003      	strb	r3, [r0, #0]
    3c9a:	68fb      	ldr	r3, [r7, #12]
    3c9c:	683a      	ldr	r2, [r7, #0]
    3c9e:	4413      	add	r3, r2
    3ca0:	2200      	movs	r2, #0
    3ca2:	701a      	strb	r2, [r3, #0]
    3ca4:	bf00      	nop
    3ca6:	3714      	adds	r7, #20
    3ca8:	46bd      	mov	sp, r7
    3caa:	bc80      	pop	{r7}
    3cac:	4770      	bx	lr
    3cae:	bf00      	nop
    3cb0:	10624dd3 	.word	0x10624dd3
    3cb4:	51eb851f 	.word	0x51eb851f
    3cb8:	cccccccd 	.word	0xcccccccd

00003cbc <time_str>:
    3cbc:	b480      	push	{r7}
    3cbe:	b085      	sub	sp, #20
    3cc0:	af00      	add	r7, sp, #0
    3cc2:	6078      	str	r0, [r7, #4]
    3cc4:	6039      	str	r1, [r7, #0]
    3cc6:	2300      	movs	r3, #0
    3cc8:	60fb      	str	r3, [r7, #12]
    3cca:	687b      	ldr	r3, [r7, #4]
    3ccc:	681b      	ldr	r3, [r3, #0]
    3cce:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3cd2:	b2db      	uxtb	r3, r3
    3cd4:	60bb      	str	r3, [r7, #8]
    3cd6:	68fb      	ldr	r3, [r7, #12]
    3cd8:	1c5a      	adds	r2, r3, #1
    3cda:	60fa      	str	r2, [r7, #12]
    3cdc:	461a      	mov	r2, r3
    3cde:	683b      	ldr	r3, [r7, #0]
    3ce0:	4413      	add	r3, r2
    3ce2:	68ba      	ldr	r2, [r7, #8]
    3ce4:	4943      	ldr	r1, [pc, #268]	; (3df4 <time_str+0x138>)
    3ce6:	fba1 1202 	umull	r1, r2, r1, r2
    3cea:	08d2      	lsrs	r2, r2, #3
    3cec:	b2d2      	uxtb	r2, r2
    3cee:	3230      	adds	r2, #48	; 0x30
    3cf0:	b2d2      	uxtb	r2, r2
    3cf2:	701a      	strb	r2, [r3, #0]
    3cf4:	68fb      	ldr	r3, [r7, #12]
    3cf6:	1c5a      	adds	r2, r3, #1
    3cf8:	60fa      	str	r2, [r7, #12]
    3cfa:	461a      	mov	r2, r3
    3cfc:	683b      	ldr	r3, [r7, #0]
    3cfe:	1898      	adds	r0, r3, r2
    3d00:	68b9      	ldr	r1, [r7, #8]
    3d02:	4b3c      	ldr	r3, [pc, #240]	; (3df4 <time_str+0x138>)
    3d04:	fba3 2301 	umull	r2, r3, r3, r1
    3d08:	08da      	lsrs	r2, r3, #3
    3d0a:	4613      	mov	r3, r2
    3d0c:	009b      	lsls	r3, r3, #2
    3d0e:	4413      	add	r3, r2
    3d10:	005b      	lsls	r3, r3, #1
    3d12:	1aca      	subs	r2, r1, r3
    3d14:	b2d3      	uxtb	r3, r2
    3d16:	3330      	adds	r3, #48	; 0x30
    3d18:	b2db      	uxtb	r3, r3
    3d1a:	7003      	strb	r3, [r0, #0]
    3d1c:	68fb      	ldr	r3, [r7, #12]
    3d1e:	1c5a      	adds	r2, r3, #1
    3d20:	60fa      	str	r2, [r7, #12]
    3d22:	461a      	mov	r2, r3
    3d24:	683b      	ldr	r3, [r7, #0]
    3d26:	4413      	add	r3, r2
    3d28:	223a      	movs	r2, #58	; 0x3a
    3d2a:	701a      	strb	r2, [r3, #0]
    3d2c:	687b      	ldr	r3, [r7, #4]
    3d2e:	881b      	ldrh	r3, [r3, #0]
    3d30:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3d34:	b2db      	uxtb	r3, r3
    3d36:	60bb      	str	r3, [r7, #8]
    3d38:	68fb      	ldr	r3, [r7, #12]
    3d3a:	1c5a      	adds	r2, r3, #1
    3d3c:	60fa      	str	r2, [r7, #12]
    3d3e:	461a      	mov	r2, r3
    3d40:	683b      	ldr	r3, [r7, #0]
    3d42:	4413      	add	r3, r2
    3d44:	68ba      	ldr	r2, [r7, #8]
    3d46:	492b      	ldr	r1, [pc, #172]	; (3df4 <time_str+0x138>)
    3d48:	fba1 1202 	umull	r1, r2, r1, r2
    3d4c:	08d2      	lsrs	r2, r2, #3
    3d4e:	b2d2      	uxtb	r2, r2
    3d50:	3230      	adds	r2, #48	; 0x30
    3d52:	b2d2      	uxtb	r2, r2
    3d54:	701a      	strb	r2, [r3, #0]
    3d56:	68fb      	ldr	r3, [r7, #12]
    3d58:	1c5a      	adds	r2, r3, #1
    3d5a:	60fa      	str	r2, [r7, #12]
    3d5c:	461a      	mov	r2, r3
    3d5e:	683b      	ldr	r3, [r7, #0]
    3d60:	1898      	adds	r0, r3, r2
    3d62:	68b9      	ldr	r1, [r7, #8]
    3d64:	4b23      	ldr	r3, [pc, #140]	; (3df4 <time_str+0x138>)
    3d66:	fba3 2301 	umull	r2, r3, r3, r1
    3d6a:	08da      	lsrs	r2, r3, #3
    3d6c:	4613      	mov	r3, r2
    3d6e:	009b      	lsls	r3, r3, #2
    3d70:	4413      	add	r3, r2
    3d72:	005b      	lsls	r3, r3, #1
    3d74:	1aca      	subs	r2, r1, r3
    3d76:	b2d3      	uxtb	r3, r2
    3d78:	3330      	adds	r3, #48	; 0x30
    3d7a:	b2db      	uxtb	r3, r3
    3d7c:	7003      	strb	r3, [r0, #0]
    3d7e:	68fb      	ldr	r3, [r7, #12]
    3d80:	1c5a      	adds	r2, r3, #1
    3d82:	60fa      	str	r2, [r7, #12]
    3d84:	461a      	mov	r2, r3
    3d86:	683b      	ldr	r3, [r7, #0]
    3d88:	4413      	add	r3, r2
    3d8a:	223a      	movs	r2, #58	; 0x3a
    3d8c:	701a      	strb	r2, [r3, #0]
    3d8e:	687b      	ldr	r3, [r7, #4]
    3d90:	781b      	ldrb	r3, [r3, #0]
    3d92:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3d96:	b2db      	uxtb	r3, r3
    3d98:	60bb      	str	r3, [r7, #8]
    3d9a:	68fb      	ldr	r3, [r7, #12]
    3d9c:	1c5a      	adds	r2, r3, #1
    3d9e:	60fa      	str	r2, [r7, #12]
    3da0:	461a      	mov	r2, r3
    3da2:	683b      	ldr	r3, [r7, #0]
    3da4:	4413      	add	r3, r2
    3da6:	68ba      	ldr	r2, [r7, #8]
    3da8:	4912      	ldr	r1, [pc, #72]	; (3df4 <time_str+0x138>)
    3daa:	fba1 1202 	umull	r1, r2, r1, r2
    3dae:	08d2      	lsrs	r2, r2, #3
    3db0:	b2d2      	uxtb	r2, r2
    3db2:	3230      	adds	r2, #48	; 0x30
    3db4:	b2d2      	uxtb	r2, r2
    3db6:	701a      	strb	r2, [r3, #0]
    3db8:	68fb      	ldr	r3, [r7, #12]
    3dba:	1c5a      	adds	r2, r3, #1
    3dbc:	60fa      	str	r2, [r7, #12]
    3dbe:	461a      	mov	r2, r3
    3dc0:	683b      	ldr	r3, [r7, #0]
    3dc2:	1898      	adds	r0, r3, r2
    3dc4:	68b9      	ldr	r1, [r7, #8]
    3dc6:	4b0b      	ldr	r3, [pc, #44]	; (3df4 <time_str+0x138>)
    3dc8:	fba3 2301 	umull	r2, r3, r3, r1
    3dcc:	08da      	lsrs	r2, r3, #3
    3dce:	4613      	mov	r3, r2
    3dd0:	009b      	lsls	r3, r3, #2
    3dd2:	4413      	add	r3, r2
    3dd4:	005b      	lsls	r3, r3, #1
    3dd6:	1aca      	subs	r2, r1, r3
    3dd8:	b2d3      	uxtb	r3, r2
    3dda:	3330      	adds	r3, #48	; 0x30
    3ddc:	b2db      	uxtb	r3, r3
    3dde:	7003      	strb	r3, [r0, #0]
    3de0:	68fb      	ldr	r3, [r7, #12]
    3de2:	683a      	ldr	r2, [r7, #0]
    3de4:	4413      	add	r3, r2
    3de6:	2200      	movs	r2, #0
    3de8:	701a      	strb	r2, [r3, #0]
    3dea:	bf00      	nop
    3dec:	3714      	adds	r7, #20
    3dee:	46bd      	mov	sp, r7
    3df0:	bc80      	pop	{r7}
    3df2:	4770      	bx	lr
    3df4:	cccccccd 	.word	0xcccccccd

00003df8 <get_fattime>:
    3df8:	b580      	push	{r7, lr}
    3dfa:	b084      	sub	sp, #16
    3dfc:	af00      	add	r7, sp, #0
    3dfe:	463b      	mov	r3, r7
    3e00:	4618      	mov	r0, r3
    3e02:	f7ff fa69 	bl	32d8 <get_date_time>
    3e06:	783b      	ldrb	r3, [r7, #0]
    3e08:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3e0c:	b2db      	uxtb	r3, r3
    3e0e:	0fda      	lsrs	r2, r3, #31
    3e10:	4413      	add	r3, r2
    3e12:	105b      	asrs	r3, r3, #1
    3e14:	b2db      	uxtb	r3, r3
    3e16:	f003 031f 	and.w	r3, r3, #31
    3e1a:	b2da      	uxtb	r2, r3
    3e1c:	7b3b      	ldrb	r3, [r7, #12]
    3e1e:	f362 0304 	bfi	r3, r2, #0, #5
    3e22:	733b      	strb	r3, [r7, #12]
    3e24:	883b      	ldrh	r3, [r7, #0]
    3e26:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3e2a:	b2da      	uxtb	r2, r3
    3e2c:	89bb      	ldrh	r3, [r7, #12]
    3e2e:	f362 134a 	bfi	r3, r2, #5, #6
    3e32:	81bb      	strh	r3, [r7, #12]
    3e34:	683b      	ldr	r3, [r7, #0]
    3e36:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3e3a:	b2da      	uxtb	r2, r3
    3e3c:	7b7b      	ldrb	r3, [r7, #13]
    3e3e:	f362 03c7 	bfi	r3, r2, #3, #5
    3e42:	737b      	strb	r3, [r7, #13]
    3e44:	78bb      	ldrb	r3, [r7, #2]
    3e46:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3e4a:	b2da      	uxtb	r2, r3
    3e4c:	7bbb      	ldrb	r3, [r7, #14]
    3e4e:	f362 0304 	bfi	r3, r2, #0, #5
    3e52:	73bb      	strb	r3, [r7, #14]
    3e54:	887b      	ldrh	r3, [r7, #2]
    3e56:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3e5a:	b2da      	uxtb	r2, r3
    3e5c:	89fb      	ldrh	r3, [r7, #14]
    3e5e:	f362 1348 	bfi	r3, r2, #5, #4
    3e62:	81fb      	strh	r3, [r7, #14]
    3e64:	893b      	ldrh	r3, [r7, #8]
    3e66:	b2db      	uxtb	r3, r3
    3e68:	3344      	adds	r3, #68	; 0x44
    3e6a:	b2db      	uxtb	r3, r3
    3e6c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3e70:	b2da      	uxtb	r2, r3
    3e72:	7bfb      	ldrb	r3, [r7, #15]
    3e74:	f362 0347 	bfi	r3, r2, #1, #7
    3e78:	73fb      	strb	r3, [r7, #15]
    3e7a:	68fb      	ldr	r3, [r7, #12]
    3e7c:	4618      	mov	r0, r3
    3e7e:	3710      	adds	r7, #16
    3e80:	46bd      	mov	sp, r7
    3e82:	bd80      	pop	{r7, pc}

00003e84 <RTC_handler>:
    3e84:	b480      	push	{r7}
    3e86:	b083      	sub	sp, #12
    3e88:	af00      	add	r7, sp, #0
    3e8a:	4b0a      	ldr	r3, [pc, #40]	; (3eb4 <RTC_handler+0x30>)
    3e8c:	685b      	ldr	r3, [r3, #4]
    3e8e:	f003 0301 	and.w	r3, r3, #1
    3e92:	2b00      	cmp	r3, #0
    3e94:	d001      	beq.n	3e9a <RTC_handler+0x16>
    3e96:	4b07      	ldr	r3, [pc, #28]	; (3eb4 <RTC_handler+0x30>)
    3e98:	685b      	ldr	r3, [r3, #4]
    3e9a:	4b06      	ldr	r3, [pc, #24]	; (3eb4 <RTC_handler+0x30>)
    3e9c:	685b      	ldr	r3, [r3, #4]
    3e9e:	f003 0302 	and.w	r3, r3, #2
    3ea2:	2b00      	cmp	r3, #0
    3ea4:	d001      	beq.n	3eaa <RTC_handler+0x26>
    3ea6:	4b03      	ldr	r3, [pc, #12]	; (3eb4 <RTC_handler+0x30>)
    3ea8:	685b      	ldr	r3, [r3, #4]
    3eaa:	bf00      	nop
    3eac:	370c      	adds	r7, #12
    3eae:	46bd      	mov	sp, r7
    3eb0:	bc80      	pop	{r7}
    3eb2:	4770      	bx	lr
    3eb4:	40002800 	.word	0x40002800

00003eb8 <sound_init>:
    3eb8:	b580      	push	{r7, lr}
    3eba:	af00      	add	r7, sp, #0
    3ebc:	4a0d      	ldr	r2, [pc, #52]	; (3ef4 <sound_init+0x3c>)
    3ebe:	4b0d      	ldr	r3, [pc, #52]	; (3ef4 <sound_init+0x3c>)
    3ec0:	69db      	ldr	r3, [r3, #28]
    3ec2:	f043 0301 	orr.w	r3, r3, #1
    3ec6:	61d3      	str	r3, [r2, #28]
    3ec8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3ecc:	2278      	movs	r2, #120	; 0x78
    3ece:	61da      	str	r2, [r3, #28]
    3ed0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3ed4:	f44f 7280 	mov.w	r2, #256	; 0x100
    3ed8:	621a      	str	r2, [r3, #32]
    3eda:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3ede:	2209      	movs	r2, #9
    3ee0:	629a      	str	r2, [r3, #40]	; 0x28
    3ee2:	2100      	movs	r1, #0
    3ee4:	201c      	movs	r0, #28
    3ee6:	f7ff f977 	bl	31d8 <set_int_priority>
    3eea:	201c      	movs	r0, #28
    3eec:	f7ff f8ba 	bl	3064 <enable_interrupt>
    3ef0:	bf00      	nop
    3ef2:	bd80      	pop	{r7, pc}
    3ef4:	40021000 	.word	0x40021000

00003ef8 <tone>:
    3ef8:	b580      	push	{r7, lr}
    3efa:	b082      	sub	sp, #8
    3efc:	af00      	add	r7, sp, #0
    3efe:	4603      	mov	r3, r0
    3f00:	460a      	mov	r2, r1
    3f02:	80fb      	strh	r3, [r7, #6]
    3f04:	4613      	mov	r3, r2
    3f06:	80bb      	strh	r3, [r7, #4]
    3f08:	4a1a      	ldr	r2, [pc, #104]	; (3f74 <tone+0x7c>)
    3f0a:	4b1a      	ldr	r3, [pc, #104]	; (3f74 <tone+0x7c>)
    3f0c:	685b      	ldr	r3, [r3, #4]
    3f0e:	f403 7340 	and.w	r3, r3, #768	; 0x300
    3f12:	6053      	str	r3, [r2, #4]
    3f14:	4a17      	ldr	r2, [pc, #92]	; (3f74 <tone+0x7c>)
    3f16:	4b17      	ldr	r3, [pc, #92]	; (3f74 <tone+0x7c>)
    3f18:	685b      	ldr	r3, [r3, #4]
    3f1a:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    3f1e:	6053      	str	r3, [r2, #4]
    3f20:	220a      	movs	r2, #10
    3f22:	210a      	movs	r1, #10
    3f24:	4814      	ldr	r0, [pc, #80]	; (3f78 <tone+0x80>)
    3f26:	f7fd ff79 	bl	1e1c <config_pin>
    3f2a:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3f2e:	88fb      	ldrh	r3, [r7, #6]
    3f30:	4912      	ldr	r1, [pc, #72]	; (3f7c <tone+0x84>)
    3f32:	fbb1 f3f3 	udiv	r3, r1, r3
    3f36:	62d3      	str	r3, [r2, #44]	; 0x2c
    3f38:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3f3c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3f40:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3f42:	085b      	lsrs	r3, r3, #1
    3f44:	63d3      	str	r3, [r2, #60]	; 0x3c
    3f46:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3f4a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3f4e:	68db      	ldr	r3, [r3, #12]
    3f50:	f023 0308 	bic.w	r3, r3, #8
    3f54:	60d3      	str	r3, [r2, #12]
    3f56:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3f5a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3f5e:	681b      	ldr	r3, [r3, #0]
    3f60:	f043 0301 	orr.w	r3, r3, #1
    3f64:	6013      	str	r3, [r2, #0]
    3f66:	4a06      	ldr	r2, [pc, #24]	; (3f80 <tone+0x88>)
    3f68:	88bb      	ldrh	r3, [r7, #4]
    3f6a:	8013      	strh	r3, [r2, #0]
    3f6c:	bf00      	nop
    3f6e:	3708      	adds	r7, #8
    3f70:	46bd      	mov	sp, r7
    3f72:	bd80      	pop	{r7, pc}
    3f74:	40010000 	.word	0x40010000
    3f78:	40010c00 	.word	0x40010c00
    3f7c:	006d3d32 	.word	0x006d3d32
    3f80:	20004d8a 	.word	0x20004d8a

00003f84 <beep>:
    3f84:	b580      	push	{r7, lr}
    3f86:	b082      	sub	sp, #8
    3f88:	af00      	add	r7, sp, #0
    3f8a:	4603      	mov	r3, r0
    3f8c:	80fb      	strh	r3, [r7, #6]
    3f8e:	88fb      	ldrh	r3, [r7, #6]
    3f90:	4619      	mov	r1, r3
    3f92:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    3f96:	f7ff ffaf 	bl	3ef8 <tone>
    3f9a:	bf00      	nop
    3f9c:	3708      	adds	r7, #8
    3f9e:	46bd      	mov	sp, r7
    3fa0:	bd80      	pop	{r7, pc}

00003fa2 <load_sound_buffer>:
    3fa2:	b480      	push	{r7}
    3fa4:	b085      	sub	sp, #20
    3fa6:	af00      	add	r7, sp, #0
    3fa8:	6078      	str	r0, [r7, #4]
    3faa:	2300      	movs	r3, #0
    3fac:	60fb      	str	r3, [r7, #12]
    3fae:	e00b      	b.n	3fc8 <load_sound_buffer+0x26>
    3fb0:	687b      	ldr	r3, [r7, #4]
    3fb2:	1c5a      	adds	r2, r3, #1
    3fb4:	607a      	str	r2, [r7, #4]
    3fb6:	7819      	ldrb	r1, [r3, #0]
    3fb8:	4a07      	ldr	r2, [pc, #28]	; (3fd8 <load_sound_buffer+0x36>)
    3fba:	68fb      	ldr	r3, [r7, #12]
    3fbc:	4413      	add	r3, r2
    3fbe:	460a      	mov	r2, r1
    3fc0:	701a      	strb	r2, [r3, #0]
    3fc2:	68fb      	ldr	r3, [r7, #12]
    3fc4:	3301      	adds	r3, #1
    3fc6:	60fb      	str	r3, [r7, #12]
    3fc8:	68fb      	ldr	r3, [r7, #12]
    3fca:	2b0f      	cmp	r3, #15
    3fcc:	ddf0      	ble.n	3fb0 <load_sound_buffer+0xe>
    3fce:	bf00      	nop
    3fd0:	3714      	adds	r7, #20
    3fd2:	46bd      	mov	sp, r7
    3fd4:	bc80      	pop	{r7}
    3fd6:	4770      	bx	lr
    3fd8:	200005d8 	.word	0x200005d8

00003fdc <sound_sampler>:
    3fdc:	b580      	push	{r7, lr}
    3fde:	b082      	sub	sp, #8
    3fe0:	af00      	add	r7, sp, #0
    3fe2:	4603      	mov	r3, r0
    3fe4:	80fb      	strh	r3, [r7, #6]
    3fe6:	4b1b      	ldr	r3, [pc, #108]	; (4054 <sound_sampler+0x78>)
    3fe8:	2200      	movs	r2, #0
    3fea:	701a      	strb	r2, [r3, #0]
    3fec:	4a1a      	ldr	r2, [pc, #104]	; (4058 <sound_sampler+0x7c>)
    3fee:	4b1a      	ldr	r3, [pc, #104]	; (4058 <sound_sampler+0x7c>)
    3ff0:	685b      	ldr	r3, [r3, #4]
    3ff2:	f403 7340 	and.w	r3, r3, #768	; 0x300
    3ff6:	6053      	str	r3, [r2, #4]
    3ff8:	4a18      	ldr	r2, [pc, #96]	; (405c <sound_sampler+0x80>)
    3ffa:	4b18      	ldr	r3, [pc, #96]	; (405c <sound_sampler+0x80>)
    3ffc:	68db      	ldr	r3, [r3, #12]
    3ffe:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    4002:	60d3      	str	r3, [r2, #12]
    4004:	2202      	movs	r2, #2
    4006:	210a      	movs	r1, #10
    4008:	4814      	ldr	r0, [pc, #80]	; (405c <sound_sampler+0x80>)
    400a:	f7fd ff07 	bl	1e1c <config_pin>
    400e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4012:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4016:	68db      	ldr	r3, [r3, #12]
    4018:	f043 0301 	orr.w	r3, r3, #1
    401c:	60d3      	str	r3, [r2, #12]
    401e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4022:	f240 62fd 	movw	r2, #1789	; 0x6fd
    4026:	62da      	str	r2, [r3, #44]	; 0x2c
    4028:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    402c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4030:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    4032:	6393      	str	r3, [r2, #56]	; 0x38
    4034:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4038:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    403c:	681b      	ldr	r3, [r3, #0]
    403e:	f043 0301 	orr.w	r3, r3, #1
    4042:	6013      	str	r3, [r2, #0]
    4044:	4a06      	ldr	r2, [pc, #24]	; (4060 <sound_sampler+0x84>)
    4046:	88fb      	ldrh	r3, [r7, #6]
    4048:	8013      	strh	r3, [r2, #0]
    404a:	bf00      	nop
    404c:	3708      	adds	r7, #8
    404e:	46bd      	mov	sp, r7
    4050:	bd80      	pop	{r7, pc}
    4052:	bf00      	nop
    4054:	200005e8 	.word	0x200005e8
    4058:	40010000 	.word	0x40010000
    405c:	40010c00 	.word	0x40010c00
    4060:	20004d8a 	.word	0x20004d8a

00004064 <sound_stop>:
    4064:	b480      	push	{r7}
    4066:	af00      	add	r7, sp, #0
    4068:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    406c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4070:	681b      	ldr	r3, [r3, #0]
    4072:	f023 0301 	bic.w	r3, r3, #1
    4076:	6013      	str	r3, [r2, #0]
    4078:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    407c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4080:	68db      	ldr	r3, [r3, #12]
    4082:	f023 0301 	bic.w	r3, r3, #1
    4086:	60d3      	str	r3, [r2, #12]
    4088:	bf00      	nop
    408a:	46bd      	mov	sp, r7
    408c:	bc80      	pop	{r7}
    408e:	4770      	bx	lr

00004090 <key_tone>:
    4090:	b480      	push	{r7}
    4092:	b085      	sub	sp, #20
    4094:	af00      	add	r7, sp, #0
    4096:	60f8      	str	r0, [r7, #12]
    4098:	60b9      	str	r1, [r7, #8]
    409a:	607a      	str	r2, [r7, #4]
    409c:	bf00      	nop
    409e:	3714      	adds	r7, #20
    40a0:	46bd      	mov	sp, r7
    40a2:	bc80      	pop	{r7}
    40a4:	4770      	bx	lr

000040a6 <noise>:
    40a6:	b480      	push	{r7}
    40a8:	b083      	sub	sp, #12
    40aa:	af00      	add	r7, sp, #0
    40ac:	6078      	str	r0, [r7, #4]
    40ae:	bf00      	nop
    40b0:	370c      	adds	r7, #12
    40b2:	46bd      	mov	sp, r7
    40b4:	bc80      	pop	{r7}
    40b6:	4770      	bx	lr

000040b8 <sound_handler>:
    40b8:	4668      	mov	r0, sp
    40ba:	f020 0107 	bic.w	r1, r0, #7
    40be:	468d      	mov	sp, r1
    40c0:	b481      	push	{r0, r7}
    40c2:	b082      	sub	sp, #8
    40c4:	af00      	add	r7, sp, #0
    40c6:	4b1e      	ldr	r3, [pc, #120]	; (4140 <sound_handler+0x88>)
    40c8:	781b      	ldrb	r3, [r3, #0]
    40ca:	08db      	lsrs	r3, r3, #3
    40cc:	71fb      	strb	r3, [r7, #7]
    40ce:	4b1c      	ldr	r3, [pc, #112]	; (4140 <sound_handler+0x88>)
    40d0:	781b      	ldrb	r3, [r3, #0]
    40d2:	43db      	mvns	r3, r3
    40d4:	f003 0307 	and.w	r3, r3, #7
    40d8:	2201      	movs	r2, #1
    40da:	fa02 f303 	lsl.w	r3, r2, r3
    40de:	71bb      	strb	r3, [r7, #6]
    40e0:	79fb      	ldrb	r3, [r7, #7]
    40e2:	4a18      	ldr	r2, [pc, #96]	; (4144 <sound_handler+0x8c>)
    40e4:	5cd2      	ldrb	r2, [r2, r3]
    40e6:	79bb      	ldrb	r3, [r7, #6]
    40e8:	4013      	ands	r3, r2
    40ea:	b2db      	uxtb	r3, r3
    40ec:	2b00      	cmp	r3, #0
    40ee:	d006      	beq.n	40fe <sound_handler+0x46>
    40f0:	4a15      	ldr	r2, [pc, #84]	; (4148 <sound_handler+0x90>)
    40f2:	4b15      	ldr	r3, [pc, #84]	; (4148 <sound_handler+0x90>)
    40f4:	68db      	ldr	r3, [r3, #12]
    40f6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    40fa:	60d3      	str	r3, [r2, #12]
    40fc:	e005      	b.n	410a <sound_handler+0x52>
    40fe:	4a12      	ldr	r2, [pc, #72]	; (4148 <sound_handler+0x90>)
    4100:	4b11      	ldr	r3, [pc, #68]	; (4148 <sound_handler+0x90>)
    4102:	68db      	ldr	r3, [r3, #12]
    4104:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    4108:	60d3      	str	r3, [r2, #12]
    410a:	4b0d      	ldr	r3, [pc, #52]	; (4140 <sound_handler+0x88>)
    410c:	781b      	ldrb	r3, [r3, #0]
    410e:	3301      	adds	r3, #1
    4110:	b2da      	uxtb	r2, r3
    4112:	4b0b      	ldr	r3, [pc, #44]	; (4140 <sound_handler+0x88>)
    4114:	701a      	strb	r2, [r3, #0]
    4116:	4b0a      	ldr	r3, [pc, #40]	; (4140 <sound_handler+0x88>)
    4118:	781b      	ldrb	r3, [r3, #0]
    411a:	f003 030f 	and.w	r3, r3, #15
    411e:	b2da      	uxtb	r2, r3
    4120:	4b07      	ldr	r3, [pc, #28]	; (4140 <sound_handler+0x88>)
    4122:	701a      	strb	r2, [r3, #0]
    4124:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4128:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    412c:	691b      	ldr	r3, [r3, #16]
    412e:	f023 0301 	bic.w	r3, r3, #1
    4132:	6113      	str	r3, [r2, #16]
    4134:	bf00      	nop
    4136:	3708      	adds	r7, #8
    4138:	46bd      	mov	sp, r7
    413a:	bc81      	pop	{r0, r7}
    413c:	4685      	mov	sp, r0
    413e:	4770      	bx	lr
    4140:	200005e8 	.word	0x200005e8
    4144:	200005d8 	.word	0x200005d8
    4148:	40010c00 	.word	0x40010c00

0000414c <spi_baudrate>:
    414c:	b480      	push	{r7}
    414e:	b083      	sub	sp, #12
    4150:	af00      	add	r7, sp, #0
    4152:	6078      	str	r0, [r7, #4]
    4154:	6039      	str	r1, [r7, #0]
    4156:	687b      	ldr	r3, [r7, #4]
    4158:	681b      	ldr	r3, [r3, #0]
    415a:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    415e:	687b      	ldr	r3, [r7, #4]
    4160:	601a      	str	r2, [r3, #0]
    4162:	687b      	ldr	r3, [r7, #4]
    4164:	681a      	ldr	r2, [r3, #0]
    4166:	683b      	ldr	r3, [r7, #0]
    4168:	00db      	lsls	r3, r3, #3
    416a:	431a      	orrs	r2, r3
    416c:	687b      	ldr	r3, [r7, #4]
    416e:	601a      	str	r2, [r3, #0]
    4170:	bf00      	nop
    4172:	370c      	adds	r7, #12
    4174:	46bd      	mov	sp, r7
    4176:	bc80      	pop	{r7}
    4178:	4770      	bx	lr

0000417a <spi_config_port>:
    417a:	b580      	push	{r7, lr}
    417c:	b082      	sub	sp, #8
    417e:	af00      	add	r7, sp, #0
    4180:	6078      	str	r0, [r7, #4]
    4182:	6039      	str	r1, [r7, #0]
    4184:	4a33      	ldr	r2, [pc, #204]	; (4254 <spi_config_port+0xda>)
    4186:	4b33      	ldr	r3, [pc, #204]	; (4254 <spi_config_port+0xda>)
    4188:	699b      	ldr	r3, [r3, #24]
    418a:	f043 0301 	orr.w	r3, r3, #1
    418e:	6193      	str	r3, [r2, #24]
    4190:	687b      	ldr	r3, [r7, #4]
    4192:	4a31      	ldr	r2, [pc, #196]	; (4258 <spi_config_port+0xde>)
    4194:	4293      	cmp	r3, r2
    4196:	d13e      	bne.n	4216 <spi_config_port+0x9c>
    4198:	683b      	ldr	r3, [r7, #0]
    419a:	2b00      	cmp	r3, #0
    419c:	d11a      	bne.n	41d4 <spi_config_port+0x5a>
    419e:	4a2d      	ldr	r2, [pc, #180]	; (4254 <spi_config_port+0xda>)
    41a0:	4b2c      	ldr	r3, [pc, #176]	; (4254 <spi_config_port+0xda>)
    41a2:	699b      	ldr	r3, [r3, #24]
    41a4:	f043 0304 	orr.w	r3, r3, #4
    41a8:	6193      	str	r3, [r2, #24]
    41aa:	2203      	movs	r2, #3
    41ac:	2104      	movs	r1, #4
    41ae:	482b      	ldr	r0, [pc, #172]	; (425c <spi_config_port+0xe2>)
    41b0:	f7fd fe34 	bl	1e1c <config_pin>
    41b4:	220b      	movs	r2, #11
    41b6:	2105      	movs	r1, #5
    41b8:	4828      	ldr	r0, [pc, #160]	; (425c <spi_config_port+0xe2>)
    41ba:	f7fd fe2f 	bl	1e1c <config_pin>
    41be:	2204      	movs	r2, #4
    41c0:	2106      	movs	r1, #6
    41c2:	4826      	ldr	r0, [pc, #152]	; (425c <spi_config_port+0xe2>)
    41c4:	f7fd fe2a 	bl	1e1c <config_pin>
    41c8:	220b      	movs	r2, #11
    41ca:	2107      	movs	r1, #7
    41cc:	4823      	ldr	r0, [pc, #140]	; (425c <spi_config_port+0xe2>)
    41ce:	f7fd fe25 	bl	1e1c <config_pin>
    41d2:	e03a      	b.n	424a <spi_config_port+0xd0>
    41d4:	4a1f      	ldr	r2, [pc, #124]	; (4254 <spi_config_port+0xda>)
    41d6:	4b1f      	ldr	r3, [pc, #124]	; (4254 <spi_config_port+0xda>)
    41d8:	699b      	ldr	r3, [r3, #24]
    41da:	f043 030d 	orr.w	r3, r3, #13
    41de:	6193      	str	r3, [r2, #24]
    41e0:	4a1f      	ldr	r2, [pc, #124]	; (4260 <spi_config_port+0xe6>)
    41e2:	4b1f      	ldr	r3, [pc, #124]	; (4260 <spi_config_port+0xe6>)
    41e4:	685b      	ldr	r3, [r3, #4]
    41e6:	f043 0301 	orr.w	r3, r3, #1
    41ea:	6053      	str	r3, [r2, #4]
    41ec:	2203      	movs	r2, #3
    41ee:	210f      	movs	r1, #15
    41f0:	481a      	ldr	r0, [pc, #104]	; (425c <spi_config_port+0xe2>)
    41f2:	f7fd fe13 	bl	1e1c <config_pin>
    41f6:	220b      	movs	r2, #11
    41f8:	2103      	movs	r1, #3
    41fa:	481a      	ldr	r0, [pc, #104]	; (4264 <spi_config_port+0xea>)
    41fc:	f7fd fe0e 	bl	1e1c <config_pin>
    4200:	2204      	movs	r2, #4
    4202:	2104      	movs	r1, #4
    4204:	4817      	ldr	r0, [pc, #92]	; (4264 <spi_config_port+0xea>)
    4206:	f7fd fe09 	bl	1e1c <config_pin>
    420a:	220b      	movs	r2, #11
    420c:	2105      	movs	r1, #5
    420e:	4815      	ldr	r0, [pc, #84]	; (4264 <spi_config_port+0xea>)
    4210:	f7fd fe04 	bl	1e1c <config_pin>
    4214:	e019      	b.n	424a <spi_config_port+0xd0>
    4216:	4a0f      	ldr	r2, [pc, #60]	; (4254 <spi_config_port+0xda>)
    4218:	4b0e      	ldr	r3, [pc, #56]	; (4254 <spi_config_port+0xda>)
    421a:	699b      	ldr	r3, [r3, #24]
    421c:	f043 0308 	orr.w	r3, r3, #8
    4220:	6193      	str	r3, [r2, #24]
    4222:	2203      	movs	r2, #3
    4224:	2102      	movs	r1, #2
    4226:	480f      	ldr	r0, [pc, #60]	; (4264 <spi_config_port+0xea>)
    4228:	f7fd fdf8 	bl	1e1c <config_pin>
    422c:	220b      	movs	r2, #11
    422e:	210d      	movs	r1, #13
    4230:	480c      	ldr	r0, [pc, #48]	; (4264 <spi_config_port+0xea>)
    4232:	f7fd fdf3 	bl	1e1c <config_pin>
    4236:	2204      	movs	r2, #4
    4238:	210e      	movs	r1, #14
    423a:	480a      	ldr	r0, [pc, #40]	; (4264 <spi_config_port+0xea>)
    423c:	f7fd fdee 	bl	1e1c <config_pin>
    4240:	220b      	movs	r2, #11
    4242:	210f      	movs	r1, #15
    4244:	4807      	ldr	r0, [pc, #28]	; (4264 <spi_config_port+0xea>)
    4246:	f7fd fde9 	bl	1e1c <config_pin>
    424a:	bf00      	nop
    424c:	3708      	adds	r7, #8
    424e:	46bd      	mov	sp, r7
    4250:	bd80      	pop	{r7, pc}
    4252:	bf00      	nop
    4254:	40021000 	.word	0x40021000
    4258:	40013000 	.word	0x40013000
    425c:	40010800 	.word	0x40010800
    4260:	40010000 	.word	0x40010000
    4264:	40010c00 	.word	0x40010c00

00004268 <spi_init>:
    4268:	b580      	push	{r7, lr}
    426a:	b084      	sub	sp, #16
    426c:	af00      	add	r7, sp, #0
    426e:	60f8      	str	r0, [r7, #12]
    4270:	60b9      	str	r1, [r7, #8]
    4272:	607a      	str	r2, [r7, #4]
    4274:	603b      	str	r3, [r7, #0]
    4276:	6839      	ldr	r1, [r7, #0]
    4278:	68f8      	ldr	r0, [r7, #12]
    427a:	f7ff ff7e 	bl	417a <spi_config_port>
    427e:	68fb      	ldr	r3, [r7, #12]
    4280:	4a10      	ldr	r2, [pc, #64]	; (42c4 <spi_init+0x5c>)
    4282:	4293      	cmp	r3, r2
    4284:	d106      	bne.n	4294 <spi_init+0x2c>
    4286:	4a10      	ldr	r2, [pc, #64]	; (42c8 <spi_init+0x60>)
    4288:	4b0f      	ldr	r3, [pc, #60]	; (42c8 <spi_init+0x60>)
    428a:	699b      	ldr	r3, [r3, #24]
    428c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    4290:	6193      	str	r3, [r2, #24]
    4292:	e005      	b.n	42a0 <spi_init+0x38>
    4294:	4a0c      	ldr	r2, [pc, #48]	; (42c8 <spi_init+0x60>)
    4296:	4b0c      	ldr	r3, [pc, #48]	; (42c8 <spi_init+0x60>)
    4298:	69db      	ldr	r3, [r3, #28]
    429a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    429e:	61d3      	str	r3, [r2, #28]
    42a0:	68fb      	ldr	r3, [r7, #12]
    42a2:	687a      	ldr	r2, [r7, #4]
    42a4:	601a      	str	r2, [r3, #0]
    42a6:	68b9      	ldr	r1, [r7, #8]
    42a8:	68f8      	ldr	r0, [r7, #12]
    42aa:	f7ff ff4f 	bl	414c <spi_baudrate>
    42ae:	68fb      	ldr	r3, [r7, #12]
    42b0:	681b      	ldr	r3, [r3, #0]
    42b2:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    42b6:	68fb      	ldr	r3, [r7, #12]
    42b8:	601a      	str	r2, [r3, #0]
    42ba:	bf00      	nop
    42bc:	3710      	adds	r7, #16
    42be:	46bd      	mov	sp, r7
    42c0:	bd80      	pop	{r7, pc}
    42c2:	bf00      	nop
    42c4:	40013000 	.word	0x40013000
    42c8:	40021000 	.word	0x40021000

000042cc <spi_send>:
    42cc:	b480      	push	{r7}
    42ce:	b083      	sub	sp, #12
    42d0:	af00      	add	r7, sp, #0
    42d2:	6078      	str	r0, [r7, #4]
    42d4:	460b      	mov	r3, r1
    42d6:	70fb      	strb	r3, [r7, #3]
    42d8:	bf00      	nop
    42da:	687b      	ldr	r3, [r7, #4]
    42dc:	689b      	ldr	r3, [r3, #8]
    42de:	f003 0302 	and.w	r3, r3, #2
    42e2:	2b00      	cmp	r3, #0
    42e4:	d0f9      	beq.n	42da <spi_send+0xe>
    42e6:	78fa      	ldrb	r2, [r7, #3]
    42e8:	687b      	ldr	r3, [r7, #4]
    42ea:	60da      	str	r2, [r3, #12]
    42ec:	bf00      	nop
    42ee:	687b      	ldr	r3, [r7, #4]
    42f0:	689b      	ldr	r3, [r3, #8]
    42f2:	f003 0301 	and.w	r3, r3, #1
    42f6:	2b00      	cmp	r3, #0
    42f8:	d0f9      	beq.n	42ee <spi_send+0x22>
    42fa:	687b      	ldr	r3, [r7, #4]
    42fc:	68db      	ldr	r3, [r3, #12]
    42fe:	b2db      	uxtb	r3, r3
    4300:	4618      	mov	r0, r3
    4302:	370c      	adds	r7, #12
    4304:	46bd      	mov	sp, r7
    4306:	bc80      	pop	{r7}
    4308:	4770      	bx	lr

0000430a <spi_receive>:
    430a:	b480      	push	{r7}
    430c:	b085      	sub	sp, #20
    430e:	af00      	add	r7, sp, #0
    4310:	6078      	str	r0, [r7, #4]
    4312:	bf00      	nop
    4314:	687b      	ldr	r3, [r7, #4]
    4316:	689b      	ldr	r3, [r3, #8]
    4318:	f003 0302 	and.w	r3, r3, #2
    431c:	2b00      	cmp	r3, #0
    431e:	d0f9      	beq.n	4314 <spi_receive+0xa>
    4320:	687b      	ldr	r3, [r7, #4]
    4322:	22ff      	movs	r2, #255	; 0xff
    4324:	60da      	str	r2, [r3, #12]
    4326:	bf00      	nop
    4328:	687b      	ldr	r3, [r7, #4]
    432a:	689b      	ldr	r3, [r3, #8]
    432c:	f003 0301 	and.w	r3, r3, #1
    4330:	2b00      	cmp	r3, #0
    4332:	d0f9      	beq.n	4328 <spi_receive+0x1e>
    4334:	687b      	ldr	r3, [r7, #4]
    4336:	68db      	ldr	r3, [r3, #12]
    4338:	73fb      	strb	r3, [r7, #15]
    433a:	7bfb      	ldrb	r3, [r7, #15]
    433c:	4618      	mov	r0, r3
    433e:	3714      	adds	r7, #20
    4340:	46bd      	mov	sp, r7
    4342:	bc80      	pop	{r7}
    4344:	4770      	bx	lr

00004346 <spi_send_block>:
    4346:	b480      	push	{r7}
    4348:	b087      	sub	sp, #28
    434a:	af00      	add	r7, sp, #0
    434c:	60f8      	str	r0, [r7, #12]
    434e:	60b9      	str	r1, [r7, #8]
    4350:	607a      	str	r2, [r7, #4]
    4352:	e010      	b.n	4376 <spi_send_block+0x30>
    4354:	68bb      	ldr	r3, [r7, #8]
    4356:	1c5a      	adds	r2, r3, #1
    4358:	60ba      	str	r2, [r7, #8]
    435a:	781b      	ldrb	r3, [r3, #0]
    435c:	461a      	mov	r2, r3
    435e:	68fb      	ldr	r3, [r7, #12]
    4360:	60da      	str	r2, [r3, #12]
    4362:	bf00      	nop
    4364:	68fb      	ldr	r3, [r7, #12]
    4366:	689b      	ldr	r3, [r3, #8]
    4368:	f003 0302 	and.w	r3, r3, #2
    436c:	2b00      	cmp	r3, #0
    436e:	d0f9      	beq.n	4364 <spi_send_block+0x1e>
    4370:	687b      	ldr	r3, [r7, #4]
    4372:	3b01      	subs	r3, #1
    4374:	607b      	str	r3, [r7, #4]
    4376:	687b      	ldr	r3, [r7, #4]
    4378:	2b00      	cmp	r3, #0
    437a:	d1eb      	bne.n	4354 <spi_send_block+0xe>
    437c:	bf00      	nop
    437e:	68fb      	ldr	r3, [r7, #12]
    4380:	689b      	ldr	r3, [r3, #8]
    4382:	f003 0380 	and.w	r3, r3, #128	; 0x80
    4386:	2b00      	cmp	r3, #0
    4388:	d1f9      	bne.n	437e <spi_send_block+0x38>
    438a:	68fb      	ldr	r3, [r7, #12]
    438c:	68db      	ldr	r3, [r3, #12]
    438e:	75fb      	strb	r3, [r7, #23]
    4390:	bf00      	nop
    4392:	371c      	adds	r7, #28
    4394:	46bd      	mov	sp, r7
    4396:	bc80      	pop	{r7}
    4398:	4770      	bx	lr

0000439a <spi_receive_block>:
    439a:	b480      	push	{r7}
    439c:	b085      	sub	sp, #20
    439e:	af00      	add	r7, sp, #0
    43a0:	60f8      	str	r0, [r7, #12]
    43a2:	60b9      	str	r1, [r7, #8]
    43a4:	607a      	str	r2, [r7, #4]
    43a6:	e013      	b.n	43d0 <spi_receive_block+0x36>
    43a8:	68fb      	ldr	r3, [r7, #12]
    43aa:	2200      	movs	r2, #0
    43ac:	60da      	str	r2, [r3, #12]
    43ae:	bf00      	nop
    43b0:	68fb      	ldr	r3, [r7, #12]
    43b2:	689b      	ldr	r3, [r3, #8]
    43b4:	f003 0301 	and.w	r3, r3, #1
    43b8:	2b00      	cmp	r3, #0
    43ba:	d0f9      	beq.n	43b0 <spi_receive_block+0x16>
    43bc:	68bb      	ldr	r3, [r7, #8]
    43be:	1c5a      	adds	r2, r3, #1
    43c0:	60ba      	str	r2, [r7, #8]
    43c2:	68fa      	ldr	r2, [r7, #12]
    43c4:	68d2      	ldr	r2, [r2, #12]
    43c6:	b2d2      	uxtb	r2, r2
    43c8:	701a      	strb	r2, [r3, #0]
    43ca:	687b      	ldr	r3, [r7, #4]
    43cc:	3b01      	subs	r3, #1
    43ce:	607b      	str	r3, [r7, #4]
    43d0:	687b      	ldr	r3, [r7, #4]
    43d2:	2b00      	cmp	r3, #0
    43d4:	d1e8      	bne.n	43a8 <spi_receive_block+0xe>
    43d6:	bf00      	nop
    43d8:	3714      	adds	r7, #20
    43da:	46bd      	mov	sp, r7
    43dc:	bc80      	pop	{r7}
    43de:	4770      	bx	lr

000043e0 <reset_mcu>:
    43e0:	4b01      	ldr	r3, [pc, #4]	; (43e8 <reset_mcu+0x8>)
    43e2:	4a02      	ldr	r2, [pc, #8]	; (43ec <reset_mcu+0xc>)
    43e4:	601a      	str	r2, [r3, #0]
    43e6:	bf00      	nop
    43e8:	e000ed0c 	.word	0xe000ed0c
    43ec:	05fa0004 	.word	0x05fa0004

000043f0 <print_fault>:
    43f0:	b580      	push	{r7, lr}
    43f2:	b082      	sub	sp, #8
    43f4:	af00      	add	r7, sp, #0
    43f6:	6078      	str	r0, [r7, #4]
    43f8:	6039      	str	r1, [r7, #0]
    43fa:	6878      	ldr	r0, [r7, #4]
    43fc:	f000 f9aa 	bl	4754 <print>
    4400:	4818      	ldr	r0, [pc, #96]	; (4464 <print_fault+0x74>)
    4402:	f000 f9a7 	bl	4754 <print>
    4406:	683b      	ldr	r3, [r7, #0]
    4408:	2b00      	cmp	r3, #0
    440a:	d004      	beq.n	4416 <print_fault+0x26>
    440c:	683b      	ldr	r3, [r7, #0]
    440e:	2110      	movs	r1, #16
    4410:	4618      	mov	r0, r3
    4412:	f000 f9cf 	bl	47b4 <print_int>
    4416:	200d      	movs	r0, #13
    4418:	f000 f8e4 	bl	45e4 <put_char>
    441c:	4812      	ldr	r0, [pc, #72]	; (4468 <print_fault+0x78>)
    441e:	f000 f999 	bl	4754 <print>
    4422:	4b12      	ldr	r3, [pc, #72]	; (446c <print_fault+0x7c>)
    4424:	681b      	ldr	r3, [r3, #0]
    4426:	f3c3 430f 	ubfx	r3, r3, #16, #16
    442a:	b29b      	uxth	r3, r3
    442c:	2110      	movs	r1, #16
    442e:	4618      	mov	r0, r3
    4430:	f000 f9c0 	bl	47b4 <print_int>
    4434:	480e      	ldr	r0, [pc, #56]	; (4470 <print_fault+0x80>)
    4436:	f000 f98d 	bl	4754 <print>
    443a:	4b0c      	ldr	r3, [pc, #48]	; (446c <print_fault+0x7c>)
    443c:	681b      	ldr	r3, [r3, #0]
    443e:	f3c3 2307 	ubfx	r3, r3, #8, #8
    4442:	b2db      	uxtb	r3, r3
    4444:	2110      	movs	r1, #16
    4446:	4618      	mov	r0, r3
    4448:	f000 f9b4 	bl	47b4 <print_int>
    444c:	4809      	ldr	r0, [pc, #36]	; (4474 <print_fault+0x84>)
    444e:	f000 f981 	bl	4754 <print>
    4452:	4b06      	ldr	r3, [pc, #24]	; (446c <print_fault+0x7c>)
    4454:	681b      	ldr	r3, [r3, #0]
    4456:	b2db      	uxtb	r3, r3
    4458:	2110      	movs	r1, #16
    445a:	4618      	mov	r0, r3
    445c:	f000 f9aa 	bl	47b4 <print_int>
    4460:	e7fe      	b.n	4460 <print_fault+0x70>
    4462:	bf00      	nop
    4464:	00005704 	.word	0x00005704
    4468:	00005714 	.word	0x00005714
    446c:	e000ed28 	.word	0xe000ed28
    4470:	0000571c 	.word	0x0000571c
    4474:	00005724 	.word	0x00005724

00004478 <font_color>:
    4478:	b480      	push	{r7}
    447a:	b083      	sub	sp, #12
    447c:	af00      	add	r7, sp, #0
    447e:	4603      	mov	r3, r0
    4480:	71fb      	strb	r3, [r7, #7]
    4482:	79fb      	ldrb	r3, [r7, #7]
    4484:	f003 030f 	and.w	r3, r3, #15
    4488:	b2da      	uxtb	r2, r3
    448a:	4b03      	ldr	r3, [pc, #12]	; (4498 <font_color+0x20>)
    448c:	705a      	strb	r2, [r3, #1]
    448e:	bf00      	nop
    4490:	370c      	adds	r7, #12
    4492:	46bd      	mov	sp, r7
    4494:	bc80      	pop	{r7}
    4496:	4770      	bx	lr
    4498:	2000014c 	.word	0x2000014c

0000449c <bg_color>:
    449c:	b480      	push	{r7}
    449e:	b083      	sub	sp, #12
    44a0:	af00      	add	r7, sp, #0
    44a2:	4603      	mov	r3, r0
    44a4:	71fb      	strb	r3, [r7, #7]
    44a6:	79fb      	ldrb	r3, [r7, #7]
    44a8:	f003 030f 	and.w	r3, r3, #15
    44ac:	b2da      	uxtb	r2, r3
    44ae:	4b03      	ldr	r3, [pc, #12]	; (44bc <bg_color+0x20>)
    44b0:	701a      	strb	r2, [r3, #0]
    44b2:	bf00      	nop
    44b4:	370c      	adds	r7, #12
    44b6:	46bd      	mov	sp, r7
    44b8:	bc80      	pop	{r7}
    44ba:	4770      	bx	lr
    44bc:	2000014c 	.word	0x2000014c

000044c0 <select_font>:
    44c0:	b480      	push	{r7}
    44c2:	b083      	sub	sp, #12
    44c4:	af00      	add	r7, sp, #0
    44c6:	4603      	mov	r3, r0
    44c8:	71fb      	strb	r3, [r7, #7]
    44ca:	4a04      	ldr	r2, [pc, #16]	; (44dc <select_font+0x1c>)
    44cc:	79fb      	ldrb	r3, [r7, #7]
    44ce:	7013      	strb	r3, [r2, #0]
    44d0:	bf00      	nop
    44d2:	370c      	adds	r7, #12
    44d4:	46bd      	mov	sp, r7
    44d6:	bc80      	pop	{r7}
    44d8:	4770      	bx	lr
    44da:	bf00      	nop
    44dc:	20000148 	.word	0x20000148

000044e0 <new_line>:
    44e0:	b580      	push	{r7, lr}
    44e2:	af00      	add	r7, sp, #0
    44e4:	4b1e      	ldr	r3, [pc, #120]	; (4560 <new_line+0x80>)
    44e6:	2200      	movs	r2, #0
    44e8:	701a      	strb	r2, [r3, #0]
    44ea:	4b1e      	ldr	r3, [pc, #120]	; (4564 <new_line+0x84>)
    44ec:	781b      	ldrb	r3, [r3, #0]
    44ee:	2b01      	cmp	r3, #1
    44f0:	d014      	beq.n	451c <new_line+0x3c>
    44f2:	2b02      	cmp	r3, #2
    44f4:	d022      	beq.n	453c <new_line+0x5c>
    44f6:	2b00      	cmp	r3, #0
    44f8:	d000      	beq.n	44fc <new_line+0x1c>
    44fa:	e02f      	b.n	455c <new_line+0x7c>
    44fc:	4b1a      	ldr	r3, [pc, #104]	; (4568 <new_line+0x88>)
    44fe:	781b      	ldrb	r3, [r3, #0]
    4500:	3306      	adds	r3, #6
    4502:	2b6b      	cmp	r3, #107	; 0x6b
    4504:	dc06      	bgt.n	4514 <new_line+0x34>
    4506:	4b18      	ldr	r3, [pc, #96]	; (4568 <new_line+0x88>)
    4508:	781b      	ldrb	r3, [r3, #0]
    450a:	3306      	adds	r3, #6
    450c:	b2da      	uxtb	r2, r3
    450e:	4b16      	ldr	r3, [pc, #88]	; (4568 <new_line+0x88>)
    4510:	701a      	strb	r2, [r3, #0]
    4512:	e023      	b.n	455c <new_line+0x7c>
    4514:	2006      	movs	r0, #6
    4516:	f7fd fe5b 	bl	21d0 <gfx_scroll_up>
    451a:	e01f      	b.n	455c <new_line+0x7c>
    451c:	4b12      	ldr	r3, [pc, #72]	; (4568 <new_line+0x88>)
    451e:	781b      	ldrb	r3, [r3, #0]
    4520:	330a      	adds	r3, #10
    4522:	2b67      	cmp	r3, #103	; 0x67
    4524:	dc06      	bgt.n	4534 <new_line+0x54>
    4526:	4b10      	ldr	r3, [pc, #64]	; (4568 <new_line+0x88>)
    4528:	781b      	ldrb	r3, [r3, #0]
    452a:	330a      	adds	r3, #10
    452c:	b2da      	uxtb	r2, r3
    452e:	4b0e      	ldr	r3, [pc, #56]	; (4568 <new_line+0x88>)
    4530:	701a      	strb	r2, [r3, #0]
    4532:	e013      	b.n	455c <new_line+0x7c>
    4534:	200a      	movs	r0, #10
    4536:	f7fd fe4b 	bl	21d0 <gfx_scroll_up>
    453a:	e00f      	b.n	455c <new_line+0x7c>
    453c:	4b0a      	ldr	r3, [pc, #40]	; (4568 <new_line+0x88>)
    453e:	781b      	ldrb	r3, [r3, #0]
    4540:	3308      	adds	r3, #8
    4542:	2b69      	cmp	r3, #105	; 0x69
    4544:	dc06      	bgt.n	4554 <new_line+0x74>
    4546:	4b08      	ldr	r3, [pc, #32]	; (4568 <new_line+0x88>)
    4548:	781b      	ldrb	r3, [r3, #0]
    454a:	3308      	adds	r3, #8
    454c:	b2da      	uxtb	r2, r3
    454e:	4b06      	ldr	r3, [pc, #24]	; (4568 <new_line+0x88>)
    4550:	701a      	strb	r2, [r3, #0]
    4552:	e002      	b.n	455a <new_line+0x7a>
    4554:	2008      	movs	r0, #8
    4556:	f7fd fe3b 	bl	21d0 <gfx_scroll_up>
    455a:	bf00      	nop
    455c:	bf00      	nop
    455e:	bd80      	pop	{r7, pc}
    4560:	200005e9 	.word	0x200005e9
    4564:	20000148 	.word	0x20000148
    4568:	200005ea 	.word	0x200005ea

0000456c <draw_char>:
    456c:	b5b0      	push	{r4, r5, r7, lr}
    456e:	b086      	sub	sp, #24
    4570:	af00      	add	r7, sp, #0
    4572:	60f8      	str	r0, [r7, #12]
    4574:	60b9      	str	r1, [r7, #8]
    4576:	607a      	str	r2, [r7, #4]
    4578:	603b      	str	r3, [r7, #0]
    457a:	68bc      	ldr	r4, [r7, #8]
    457c:	e026      	b.n	45cc <draw_char+0x60>
    457e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    4580:	1c5a      	adds	r2, r3, #1
    4582:	62ba      	str	r2, [r7, #40]	; 0x28
    4584:	781b      	ldrb	r3, [r3, #0]
    4586:	757b      	strb	r3, [r7, #21]
    4588:	2380      	movs	r3, #128	; 0x80
    458a:	75bb      	strb	r3, [r7, #22]
    458c:	68fd      	ldr	r5, [r7, #12]
    458e:	e017      	b.n	45c0 <draw_char+0x54>
    4590:	7d7a      	ldrb	r2, [r7, #21]
    4592:	7dbb      	ldrb	r3, [r7, #22]
    4594:	4013      	ands	r3, r2
    4596:	753b      	strb	r3, [r7, #20]
    4598:	7d3b      	ldrb	r3, [r7, #20]
    459a:	2b00      	cmp	r3, #0
    459c:	d003      	beq.n	45a6 <draw_char+0x3a>
    459e:	4b10      	ldr	r3, [pc, #64]	; (45e0 <draw_char+0x74>)
    45a0:	785b      	ldrb	r3, [r3, #1]
    45a2:	75fb      	strb	r3, [r7, #23]
    45a4:	e002      	b.n	45ac <draw_char+0x40>
    45a6:	4b0e      	ldr	r3, [pc, #56]	; (45e0 <draw_char+0x74>)
    45a8:	781b      	ldrb	r3, [r3, #0]
    45aa:	75fb      	strb	r3, [r7, #23]
    45ac:	7dfb      	ldrb	r3, [r7, #23]
    45ae:	461a      	mov	r2, r3
    45b0:	4621      	mov	r1, r4
    45b2:	4628      	mov	r0, r5
    45b4:	f7fd fd22 	bl	1ffc <gfx_plot>
    45b8:	7dbb      	ldrb	r3, [r7, #22]
    45ba:	085b      	lsrs	r3, r3, #1
    45bc:	75bb      	strb	r3, [r7, #22]
    45be:	3501      	adds	r5, #1
    45c0:	68fa      	ldr	r2, [r7, #12]
    45c2:	687b      	ldr	r3, [r7, #4]
    45c4:	4413      	add	r3, r2
    45c6:	42ab      	cmp	r3, r5
    45c8:	dce2      	bgt.n	4590 <draw_char+0x24>
    45ca:	3401      	adds	r4, #1
    45cc:	68ba      	ldr	r2, [r7, #8]
    45ce:	683b      	ldr	r3, [r7, #0]
    45d0:	4413      	add	r3, r2
    45d2:	42a3      	cmp	r3, r4
    45d4:	dcd3      	bgt.n	457e <draw_char+0x12>
    45d6:	bf00      	nop
    45d8:	3718      	adds	r7, #24
    45da:	46bd      	mov	sp, r7
    45dc:	bdb0      	pop	{r4, r5, r7, pc}
    45de:	bf00      	nop
    45e0:	2000014c 	.word	0x2000014c

000045e4 <put_char>:
    45e4:	b580      	push	{r7, lr}
    45e6:	b084      	sub	sp, #16
    45e8:	af02      	add	r7, sp, #8
    45ea:	4603      	mov	r3, r0
    45ec:	71fb      	strb	r3, [r7, #7]
    45ee:	4b3d      	ldr	r3, [pc, #244]	; (46e4 <put_char+0x100>)
    45f0:	781b      	ldrb	r3, [r3, #0]
    45f2:	2b01      	cmp	r3, #1
    45f4:	d027      	beq.n	4646 <put_char+0x62>
    45f6:	2b02      	cmp	r3, #2
    45f8:	d048      	beq.n	468c <put_char+0xa8>
    45fa:	2b00      	cmp	r3, #0
    45fc:	d000      	beq.n	4600 <put_char+0x1c>
    45fe:	e06d      	b.n	46dc <put_char+0xf8>
    4600:	79fb      	ldrb	r3, [r7, #7]
    4602:	2b0f      	cmp	r3, #15
    4604:	d865      	bhi.n	46d2 <put_char+0xee>
    4606:	4b38      	ldr	r3, [pc, #224]	; (46e8 <put_char+0x104>)
    4608:	781b      	ldrb	r3, [r3, #0]
    460a:	4618      	mov	r0, r3
    460c:	4b37      	ldr	r3, [pc, #220]	; (46ec <put_char+0x108>)
    460e:	781b      	ldrb	r3, [r3, #0]
    4610:	4619      	mov	r1, r3
    4612:	79fa      	ldrb	r2, [r7, #7]
    4614:	4613      	mov	r3, r2
    4616:	005b      	lsls	r3, r3, #1
    4618:	4413      	add	r3, r2
    461a:	005b      	lsls	r3, r3, #1
    461c:	461a      	mov	r2, r3
    461e:	4b34      	ldr	r3, [pc, #208]	; (46f0 <put_char+0x10c>)
    4620:	4413      	add	r3, r2
    4622:	9300      	str	r3, [sp, #0]
    4624:	2306      	movs	r3, #6
    4626:	2204      	movs	r2, #4
    4628:	f7ff ffa0 	bl	456c <draw_char>
    462c:	4b2e      	ldr	r3, [pc, #184]	; (46e8 <put_char+0x104>)
    462e:	781b      	ldrb	r3, [r3, #0]
    4630:	3304      	adds	r3, #4
    4632:	b2da      	uxtb	r2, r3
    4634:	4b2c      	ldr	r3, [pc, #176]	; (46e8 <put_char+0x104>)
    4636:	701a      	strb	r2, [r3, #0]
    4638:	4b2b      	ldr	r3, [pc, #172]	; (46e8 <put_char+0x104>)
    463a:	781b      	ldrb	r3, [r3, #0]
    463c:	2bb1      	cmp	r3, #177	; 0xb1
    463e:	d948      	bls.n	46d2 <put_char+0xee>
    4640:	f7ff ff4e 	bl	44e0 <new_line>
    4644:	e045      	b.n	46d2 <put_char+0xee>
    4646:	79fb      	ldrb	r3, [r7, #7]
    4648:	2b0f      	cmp	r3, #15
    464a:	d844      	bhi.n	46d6 <put_char+0xf2>
    464c:	4b26      	ldr	r3, [pc, #152]	; (46e8 <put_char+0x104>)
    464e:	781b      	ldrb	r3, [r3, #0]
    4650:	4618      	mov	r0, r3
    4652:	4b26      	ldr	r3, [pc, #152]	; (46ec <put_char+0x108>)
    4654:	781b      	ldrb	r3, [r3, #0]
    4656:	4619      	mov	r1, r3
    4658:	79fa      	ldrb	r2, [r7, #7]
    465a:	4613      	mov	r3, r2
    465c:	009b      	lsls	r3, r3, #2
    465e:	4413      	add	r3, r2
    4660:	005b      	lsls	r3, r3, #1
    4662:	461a      	mov	r2, r3
    4664:	4b23      	ldr	r3, [pc, #140]	; (46f4 <put_char+0x110>)
    4666:	4413      	add	r3, r2
    4668:	9300      	str	r3, [sp, #0]
    466a:	230a      	movs	r3, #10
    466c:	2208      	movs	r2, #8
    466e:	f7ff ff7d 	bl	456c <draw_char>
    4672:	4b1d      	ldr	r3, [pc, #116]	; (46e8 <put_char+0x104>)
    4674:	781b      	ldrb	r3, [r3, #0]
    4676:	3308      	adds	r3, #8
    4678:	b2da      	uxtb	r2, r3
    467a:	4b1b      	ldr	r3, [pc, #108]	; (46e8 <put_char+0x104>)
    467c:	701a      	strb	r2, [r3, #0]
    467e:	4b1a      	ldr	r3, [pc, #104]	; (46e8 <put_char+0x104>)
    4680:	781b      	ldrb	r3, [r3, #0]
    4682:	2bad      	cmp	r3, #173	; 0xad
    4684:	d927      	bls.n	46d6 <put_char+0xf2>
    4686:	f7ff ff2b 	bl	44e0 <new_line>
    468a:	e024      	b.n	46d6 <put_char+0xf2>
    468c:	79fb      	ldrb	r3, [r7, #7]
    468e:	2b1f      	cmp	r3, #31
    4690:	d923      	bls.n	46da <put_char+0xf6>
    4692:	79fb      	ldrb	r3, [r7, #7]
    4694:	2b84      	cmp	r3, #132	; 0x84
    4696:	d820      	bhi.n	46da <put_char+0xf6>
    4698:	4b13      	ldr	r3, [pc, #76]	; (46e8 <put_char+0x104>)
    469a:	781b      	ldrb	r3, [r3, #0]
    469c:	4618      	mov	r0, r3
    469e:	4b13      	ldr	r3, [pc, #76]	; (46ec <put_char+0x108>)
    46a0:	781b      	ldrb	r3, [r3, #0]
    46a2:	4619      	mov	r1, r3
    46a4:	79fb      	ldrb	r3, [r7, #7]
    46a6:	3b20      	subs	r3, #32
    46a8:	00db      	lsls	r3, r3, #3
    46aa:	4a13      	ldr	r2, [pc, #76]	; (46f8 <put_char+0x114>)
    46ac:	4413      	add	r3, r2
    46ae:	9300      	str	r3, [sp, #0]
    46b0:	2308      	movs	r3, #8
    46b2:	2206      	movs	r2, #6
    46b4:	f7ff ff5a 	bl	456c <draw_char>
    46b8:	4b0b      	ldr	r3, [pc, #44]	; (46e8 <put_char+0x104>)
    46ba:	781b      	ldrb	r3, [r3, #0]
    46bc:	3306      	adds	r3, #6
    46be:	b2da      	uxtb	r2, r3
    46c0:	4b09      	ldr	r3, [pc, #36]	; (46e8 <put_char+0x104>)
    46c2:	701a      	strb	r2, [r3, #0]
    46c4:	4b08      	ldr	r3, [pc, #32]	; (46e8 <put_char+0x104>)
    46c6:	781b      	ldrb	r3, [r3, #0]
    46c8:	2baf      	cmp	r3, #175	; 0xaf
    46ca:	d906      	bls.n	46da <put_char+0xf6>
    46cc:	f7ff ff08 	bl	44e0 <new_line>
    46d0:	e003      	b.n	46da <put_char+0xf6>
    46d2:	bf00      	nop
    46d4:	e002      	b.n	46dc <put_char+0xf8>
    46d6:	bf00      	nop
    46d8:	e000      	b.n	46dc <put_char+0xf8>
    46da:	bf00      	nop
    46dc:	bf00      	nop
    46de:	3708      	adds	r7, #8
    46e0:	46bd      	mov	sp, r7
    46e2:	bd80      	pop	{r7, pc}
    46e4:	20000148 	.word	0x20000148
    46e8:	200005e9 	.word	0x200005e9
    46ec:	200005ea 	.word	0x200005ea
    46f0:	00005128 	.word	0x00005128
    46f4:	00005188 	.word	0x00005188
    46f8:	00005228 	.word	0x00005228

000046fc <set_cursor>:
    46fc:	b480      	push	{r7}
    46fe:	b083      	sub	sp, #12
    4700:	af00      	add	r7, sp, #0
    4702:	4603      	mov	r3, r0
    4704:	460a      	mov	r2, r1
    4706:	71fb      	strb	r3, [r7, #7]
    4708:	4613      	mov	r3, r2
    470a:	71bb      	strb	r3, [r7, #6]
    470c:	4a05      	ldr	r2, [pc, #20]	; (4724 <set_cursor+0x28>)
    470e:	79fb      	ldrb	r3, [r7, #7]
    4710:	7013      	strb	r3, [r2, #0]
    4712:	4a05      	ldr	r2, [pc, #20]	; (4728 <set_cursor+0x2c>)
    4714:	79bb      	ldrb	r3, [r7, #6]
    4716:	7013      	strb	r3, [r2, #0]
    4718:	bf00      	nop
    471a:	370c      	adds	r7, #12
    471c:	46bd      	mov	sp, r7
    471e:	bc80      	pop	{r7}
    4720:	4770      	bx	lr
    4722:	bf00      	nop
    4724:	200005e9 	.word	0x200005e9
    4728:	200005ea 	.word	0x200005ea

0000472c <get_cursor>:
    472c:	b480      	push	{r7}
    472e:	af00      	add	r7, sp, #0
    4730:	4b06      	ldr	r3, [pc, #24]	; (474c <get_cursor+0x20>)
    4732:	781b      	ldrb	r3, [r3, #0]
    4734:	b29b      	uxth	r3, r3
    4736:	021b      	lsls	r3, r3, #8
    4738:	b29a      	uxth	r2, r3
    473a:	4b05      	ldr	r3, [pc, #20]	; (4750 <get_cursor+0x24>)
    473c:	781b      	ldrb	r3, [r3, #0]
    473e:	b29b      	uxth	r3, r3
    4740:	4413      	add	r3, r2
    4742:	b29b      	uxth	r3, r3
    4744:	4618      	mov	r0, r3
    4746:	46bd      	mov	sp, r7
    4748:	bc80      	pop	{r7}
    474a:	4770      	bx	lr
    474c:	200005e9 	.word	0x200005e9
    4750:	200005ea 	.word	0x200005ea

00004754 <print>:
    4754:	b580      	push	{r7, lr}
    4756:	b084      	sub	sp, #16
    4758:	af00      	add	r7, sp, #0
    475a:	6078      	str	r0, [r7, #4]
    475c:	e011      	b.n	4782 <print+0x2e>
    475e:	7bfb      	ldrb	r3, [r7, #15]
    4760:	2b0a      	cmp	r3, #10
    4762:	d004      	beq.n	476e <print+0x1a>
    4764:	2b0d      	cmp	r3, #13
    4766:	d002      	beq.n	476e <print+0x1a>
    4768:	2b08      	cmp	r3, #8
    476a:	d003      	beq.n	4774 <print+0x20>
    476c:	e005      	b.n	477a <print+0x26>
    476e:	f7ff feb7 	bl	44e0 <new_line>
    4772:	e006      	b.n	4782 <print+0x2e>
    4774:	f000 f892 	bl	489c <cursor_left>
    4778:	e003      	b.n	4782 <print+0x2e>
    477a:	7bfb      	ldrb	r3, [r7, #15]
    477c:	4618      	mov	r0, r3
    477e:	f7ff ff31 	bl	45e4 <put_char>
    4782:	687b      	ldr	r3, [r7, #4]
    4784:	1c5a      	adds	r2, r3, #1
    4786:	607a      	str	r2, [r7, #4]
    4788:	781b      	ldrb	r3, [r3, #0]
    478a:	73fb      	strb	r3, [r7, #15]
    478c:	7bfb      	ldrb	r3, [r7, #15]
    478e:	2b00      	cmp	r3, #0
    4790:	d1e5      	bne.n	475e <print+0xa>
    4792:	bf00      	nop
    4794:	3710      	adds	r7, #16
    4796:	46bd      	mov	sp, r7
    4798:	bd80      	pop	{r7, pc}

0000479a <println>:
    479a:	b580      	push	{r7, lr}
    479c:	b082      	sub	sp, #8
    479e:	af00      	add	r7, sp, #0
    47a0:	6078      	str	r0, [r7, #4]
    47a2:	6878      	ldr	r0, [r7, #4]
    47a4:	f7ff ffd6 	bl	4754 <print>
    47a8:	f7ff fe9a 	bl	44e0 <new_line>
    47ac:	bf00      	nop
    47ae:	3708      	adds	r7, #8
    47b0:	46bd      	mov	sp, r7
    47b2:	bd80      	pop	{r7, pc}

000047b4 <print_int>:
    47b4:	b580      	push	{r7, lr}
    47b6:	b08a      	sub	sp, #40	; 0x28
    47b8:	af00      	add	r7, sp, #0
    47ba:	6078      	str	r0, [r7, #4]
    47bc:	460b      	mov	r3, r1
    47be:	70fb      	strb	r3, [r7, #3]
    47c0:	2300      	movs	r3, #0
    47c2:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    47c6:	2300      	movs	r3, #0
    47c8:	76fb      	strb	r3, [r7, #27]
    47ca:	2320      	movs	r3, #32
    47cc:	76bb      	strb	r3, [r7, #26]
    47ce:	230e      	movs	r3, #14
    47d0:	623b      	str	r3, [r7, #32]
    47d2:	687b      	ldr	r3, [r7, #4]
    47d4:	2b00      	cmp	r3, #0
    47d6:	da27      	bge.n	4828 <print_int+0x74>
    47d8:	2301      	movs	r3, #1
    47da:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    47de:	687b      	ldr	r3, [r7, #4]
    47e0:	425b      	negs	r3, r3
    47e2:	607b      	str	r3, [r7, #4]
    47e4:	e020      	b.n	4828 <print_int+0x74>
    47e6:	78fa      	ldrb	r2, [r7, #3]
    47e8:	687b      	ldr	r3, [r7, #4]
    47ea:	fb93 f1f2 	sdiv	r1, r3, r2
    47ee:	fb02 f201 	mul.w	r2, r2, r1
    47f2:	1a9b      	subs	r3, r3, r2
    47f4:	61fb      	str	r3, [r7, #28]
    47f6:	69fb      	ldr	r3, [r7, #28]
    47f8:	2b09      	cmp	r3, #9
    47fa:	dd02      	ble.n	4802 <print_int+0x4e>
    47fc:	69fb      	ldr	r3, [r7, #28]
    47fe:	3307      	adds	r3, #7
    4800:	61fb      	str	r3, [r7, #28]
    4802:	6a3b      	ldr	r3, [r7, #32]
    4804:	3b01      	subs	r3, #1
    4806:	623b      	str	r3, [r7, #32]
    4808:	69fb      	ldr	r3, [r7, #28]
    480a:	3330      	adds	r3, #48	; 0x30
    480c:	61fb      	str	r3, [r7, #28]
    480e:	69fb      	ldr	r3, [r7, #28]
    4810:	b2d9      	uxtb	r1, r3
    4812:	f107 020c 	add.w	r2, r7, #12
    4816:	6a3b      	ldr	r3, [r7, #32]
    4818:	4413      	add	r3, r2
    481a:	460a      	mov	r2, r1
    481c:	701a      	strb	r2, [r3, #0]
    481e:	78fb      	ldrb	r3, [r7, #3]
    4820:	687a      	ldr	r2, [r7, #4]
    4822:	fb92 f3f3 	sdiv	r3, r2, r3
    4826:	607b      	str	r3, [r7, #4]
    4828:	6a3b      	ldr	r3, [r7, #32]
    482a:	2b01      	cmp	r3, #1
    482c:	dd02      	ble.n	4834 <print_int+0x80>
    482e:	687b      	ldr	r3, [r7, #4]
    4830:	2b00      	cmp	r3, #0
    4832:	d1d8      	bne.n	47e6 <print_int+0x32>
    4834:	6a3b      	ldr	r3, [r7, #32]
    4836:	2b0e      	cmp	r3, #14
    4838:	d108      	bne.n	484c <print_int+0x98>
    483a:	6a3b      	ldr	r3, [r7, #32]
    483c:	3b01      	subs	r3, #1
    483e:	623b      	str	r3, [r7, #32]
    4840:	f107 020c 	add.w	r2, r7, #12
    4844:	6a3b      	ldr	r3, [r7, #32]
    4846:	4413      	add	r3, r2
    4848:	2230      	movs	r2, #48	; 0x30
    484a:	701a      	strb	r2, [r3, #0]
    484c:	78fb      	ldrb	r3, [r7, #3]
    484e:	2b0a      	cmp	r3, #10
    4850:	d10d      	bne.n	486e <print_int+0xba>
    4852:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4856:	2b00      	cmp	r3, #0
    4858:	d009      	beq.n	486e <print_int+0xba>
    485a:	6a3b      	ldr	r3, [r7, #32]
    485c:	3b01      	subs	r3, #1
    485e:	623b      	str	r3, [r7, #32]
    4860:	f107 020c 	add.w	r2, r7, #12
    4864:	6a3b      	ldr	r3, [r7, #32]
    4866:	4413      	add	r3, r2
    4868:	222d      	movs	r2, #45	; 0x2d
    486a:	701a      	strb	r2, [r3, #0]
    486c:	e00b      	b.n	4886 <print_int+0xd2>
    486e:	78fb      	ldrb	r3, [r7, #3]
    4870:	2b10      	cmp	r3, #16
    4872:	d108      	bne.n	4886 <print_int+0xd2>
    4874:	6a3b      	ldr	r3, [r7, #32]
    4876:	3b01      	subs	r3, #1
    4878:	623b      	str	r3, [r7, #32]
    487a:	f107 020c 	add.w	r2, r7, #12
    487e:	6a3b      	ldr	r3, [r7, #32]
    4880:	4413      	add	r3, r2
    4882:	2224      	movs	r2, #36	; 0x24
    4884:	701a      	strb	r2, [r3, #0]
    4886:	f107 020c 	add.w	r2, r7, #12
    488a:	6a3b      	ldr	r3, [r7, #32]
    488c:	4413      	add	r3, r2
    488e:	4618      	mov	r0, r3
    4890:	f7ff ff60 	bl	4754 <print>
    4894:	bf00      	nop
    4896:	3728      	adds	r7, #40	; 0x28
    4898:	46bd      	mov	sp, r7
    489a:	bd80      	pop	{r7, pc}

0000489c <cursor_left>:
    489c:	b480      	push	{r7}
    489e:	af00      	add	r7, sp, #0
    48a0:	4b1a      	ldr	r3, [pc, #104]	; (490c <cursor_left+0x70>)
    48a2:	781b      	ldrb	r3, [r3, #0]
    48a4:	2b01      	cmp	r3, #1
    48a6:	d010      	beq.n	48ca <cursor_left+0x2e>
    48a8:	2b02      	cmp	r3, #2
    48aa:	d01a      	beq.n	48e2 <cursor_left+0x46>
    48ac:	2b00      	cmp	r3, #0
    48ae:	d000      	beq.n	48b2 <cursor_left+0x16>
    48b0:	e028      	b.n	4904 <cursor_left+0x68>
    48b2:	4b17      	ldr	r3, [pc, #92]	; (4910 <cursor_left+0x74>)
    48b4:	781b      	ldrb	r3, [r3, #0]
    48b6:	3b04      	subs	r3, #4
    48b8:	2b00      	cmp	r3, #0
    48ba:	db1e      	blt.n	48fa <cursor_left+0x5e>
    48bc:	4b14      	ldr	r3, [pc, #80]	; (4910 <cursor_left+0x74>)
    48be:	781b      	ldrb	r3, [r3, #0]
    48c0:	3b04      	subs	r3, #4
    48c2:	b2da      	uxtb	r2, r3
    48c4:	4b12      	ldr	r3, [pc, #72]	; (4910 <cursor_left+0x74>)
    48c6:	701a      	strb	r2, [r3, #0]
    48c8:	e017      	b.n	48fa <cursor_left+0x5e>
    48ca:	4b11      	ldr	r3, [pc, #68]	; (4910 <cursor_left+0x74>)
    48cc:	781b      	ldrb	r3, [r3, #0]
    48ce:	3b08      	subs	r3, #8
    48d0:	2b00      	cmp	r3, #0
    48d2:	db14      	blt.n	48fe <cursor_left+0x62>
    48d4:	4b0e      	ldr	r3, [pc, #56]	; (4910 <cursor_left+0x74>)
    48d6:	781b      	ldrb	r3, [r3, #0]
    48d8:	3b08      	subs	r3, #8
    48da:	b2da      	uxtb	r2, r3
    48dc:	4b0c      	ldr	r3, [pc, #48]	; (4910 <cursor_left+0x74>)
    48de:	701a      	strb	r2, [r3, #0]
    48e0:	e00d      	b.n	48fe <cursor_left+0x62>
    48e2:	4b0b      	ldr	r3, [pc, #44]	; (4910 <cursor_left+0x74>)
    48e4:	781b      	ldrb	r3, [r3, #0]
    48e6:	3b06      	subs	r3, #6
    48e8:	2b00      	cmp	r3, #0
    48ea:	db0a      	blt.n	4902 <cursor_left+0x66>
    48ec:	4b08      	ldr	r3, [pc, #32]	; (4910 <cursor_left+0x74>)
    48ee:	781b      	ldrb	r3, [r3, #0]
    48f0:	3b06      	subs	r3, #6
    48f2:	b2da      	uxtb	r2, r3
    48f4:	4b06      	ldr	r3, [pc, #24]	; (4910 <cursor_left+0x74>)
    48f6:	701a      	strb	r2, [r3, #0]
    48f8:	e003      	b.n	4902 <cursor_left+0x66>
    48fa:	bf00      	nop
    48fc:	e002      	b.n	4904 <cursor_left+0x68>
    48fe:	bf00      	nop
    4900:	e000      	b.n	4904 <cursor_left+0x68>
    4902:	bf00      	nop
    4904:	bf00      	nop
    4906:	46bd      	mov	sp, r7
    4908:	bc80      	pop	{r7}
    490a:	4770      	bx	lr
    490c:	20000148 	.word	0x20000148
    4910:	200005e9 	.word	0x200005e9

00004914 <text_scroller>:
    4914:	b580      	push	{r7, lr}
    4916:	b084      	sub	sp, #16
    4918:	af00      	add	r7, sp, #0
    491a:	6078      	str	r0, [r7, #4]
    491c:	460b      	mov	r3, r1
    491e:	70fb      	strb	r3, [r7, #3]
    4920:	f7fd fc02 	bl	2128 <gfx_cls>
    4924:	2002      	movs	r0, #2
    4926:	f7ff fdcb 	bl	44c0 <select_font>
    492a:	687b      	ldr	r3, [r7, #4]
    492c:	1c5a      	adds	r2, r3, #1
    492e:	607a      	str	r2, [r7, #4]
    4930:	781b      	ldrb	r3, [r3, #0]
    4932:	73fb      	strb	r3, [r7, #15]
    4934:	e035      	b.n	49a2 <text_scroller+0x8e>
    4936:	2120      	movs	r1, #32
    4938:	2000      	movs	r0, #0
    493a:	f7ff fedf 	bl	46fc <set_cursor>
    493e:	e00e      	b.n	495e <text_scroller+0x4a>
    4940:	7bfb      	ldrb	r3, [r7, #15]
    4942:	4618      	mov	r0, r3
    4944:	f7ff fe4e 	bl	45e4 <put_char>
    4948:	687b      	ldr	r3, [r7, #4]
    494a:	1c5a      	adds	r2, r3, #1
    494c:	607a      	str	r2, [r7, #4]
    494e:	781b      	ldrb	r3, [r3, #0]
    4950:	73fb      	strb	r3, [r7, #15]
    4952:	200b      	movs	r0, #11
    4954:	f7fc ff7e 	bl	1854 <btn_query_down>
    4958:	4603      	mov	r3, r0
    495a:	2b00      	cmp	r3, #0
    495c:	d13c      	bne.n	49d8 <text_scroller+0xc4>
    495e:	7bfb      	ldrb	r3, [r7, #15]
    4960:	2b00      	cmp	r3, #0
    4962:	d002      	beq.n	496a <text_scroller+0x56>
    4964:	7bfb      	ldrb	r3, [r7, #15]
    4966:	2b0a      	cmp	r3, #10
    4968:	d1ea      	bne.n	4940 <text_scroller+0x2c>
    496a:	2300      	movs	r3, #0
    496c:	73bb      	strb	r3, [r7, #14]
    496e:	e010      	b.n	4992 <text_scroller+0x7e>
    4970:	78fb      	ldrb	r3, [r7, #3]
    4972:	b29b      	uxth	r3, r3
    4974:	4618      	mov	r0, r3
    4976:	f000 fb9f 	bl	50b8 <game_pause>
    497a:	2001      	movs	r0, #1
    497c:	f7fd fc28 	bl	21d0 <gfx_scroll_up>
    4980:	200b      	movs	r0, #11
    4982:	f7fc ff67 	bl	1854 <btn_query_down>
    4986:	4603      	mov	r3, r0
    4988:	2b00      	cmp	r3, #0
    498a:	d127      	bne.n	49dc <text_scroller+0xc8>
    498c:	7bbb      	ldrb	r3, [r7, #14]
    498e:	3301      	adds	r3, #1
    4990:	73bb      	strb	r3, [r7, #14]
    4992:	7bbb      	ldrb	r3, [r7, #14]
    4994:	2b07      	cmp	r3, #7
    4996:	d9eb      	bls.n	4970 <text_scroller+0x5c>
    4998:	687b      	ldr	r3, [r7, #4]
    499a:	1c5a      	adds	r2, r3, #1
    499c:	607a      	str	r2, [r7, #4]
    499e:	781b      	ldrb	r3, [r3, #0]
    49a0:	73fb      	strb	r3, [r7, #15]
    49a2:	7bfb      	ldrb	r3, [r7, #15]
    49a4:	2b00      	cmp	r3, #0
    49a6:	d1c6      	bne.n	4936 <text_scroller+0x22>
    49a8:	2300      	movs	r3, #0
    49aa:	73fb      	strb	r3, [r7, #15]
    49ac:	e010      	b.n	49d0 <text_scroller+0xbc>
    49ae:	78fb      	ldrb	r3, [r7, #3]
    49b0:	b29b      	uxth	r3, r3
    49b2:	4618      	mov	r0, r3
    49b4:	f000 fb80 	bl	50b8 <game_pause>
    49b8:	2001      	movs	r0, #1
    49ba:	f7fd fc09 	bl	21d0 <gfx_scroll_up>
    49be:	200b      	movs	r0, #11
    49c0:	f7fc ff48 	bl	1854 <btn_query_down>
    49c4:	4603      	mov	r3, r0
    49c6:	2b00      	cmp	r3, #0
    49c8:	d10a      	bne.n	49e0 <text_scroller+0xcc>
    49ca:	7bfb      	ldrb	r3, [r7, #15]
    49cc:	3301      	adds	r3, #1
    49ce:	73fb      	strb	r3, [r7, #15]
    49d0:	7bfb      	ldrb	r3, [r7, #15]
    49d2:	2b1f      	cmp	r3, #31
    49d4:	d9eb      	bls.n	49ae <text_scroller+0x9a>
    49d6:	e004      	b.n	49e2 <text_scroller+0xce>
    49d8:	bf00      	nop
    49da:	e002      	b.n	49e2 <text_scroller+0xce>
    49dc:	bf00      	nop
    49de:	e000      	b.n	49e2 <text_scroller+0xce>
    49e0:	bf00      	nop
    49e2:	f7fd fba1 	bl	2128 <gfx_cls>
    49e6:	200b      	movs	r0, #11
    49e8:	f7fc ff78 	bl	18dc <btn_wait_up>
    49ec:	bf00      	nop
    49ee:	3710      	adds	r7, #16
    49f0:	46bd      	mov	sp, r7
    49f2:	bd80      	pop	{r7, pc}

000049f4 <prompt_btn>:
    49f4:	b580      	push	{r7, lr}
    49f6:	af00      	add	r7, sp, #0
    49f8:	4802      	ldr	r0, [pc, #8]	; (4a04 <prompt_btn+0x10>)
    49fa:	f7ff feab 	bl	4754 <print>
    49fe:	bf00      	nop
    4a00:	bd80      	pop	{r7, pc}
    4a02:	bf00      	nop
    4a04:	00005770 	.word	0x00005770

00004a08 <clear_screen>:
    4a08:	b580      	push	{r7, lr}
    4a0a:	af00      	add	r7, sp, #0
    4a0c:	f7fd fb8c 	bl	2128 <gfx_cls>
    4a10:	4b03      	ldr	r3, [pc, #12]	; (4a20 <clear_screen+0x18>)
    4a12:	2200      	movs	r2, #0
    4a14:	701a      	strb	r2, [r3, #0]
    4a16:	4b03      	ldr	r3, [pc, #12]	; (4a24 <clear_screen+0x1c>)
    4a18:	2200      	movs	r2, #0
    4a1a:	701a      	strb	r2, [r3, #0]
    4a1c:	bf00      	nop
    4a1e:	bd80      	pop	{r7, pc}
    4a20:	200005e9 	.word	0x200005e9
    4a24:	200005ea 	.word	0x200005ea

00004a28 <show_cursor>:
    4a28:	b580      	push	{r7, lr}
    4a2a:	b084      	sub	sp, #16
    4a2c:	af00      	add	r7, sp, #0
    4a2e:	6078      	str	r0, [r7, #4]
    4a30:	687b      	ldr	r3, [r7, #4]
    4a32:	2b00      	cmp	r3, #0
    4a34:	d001      	beq.n	4a3a <show_cursor+0x12>
    4a36:	230f      	movs	r3, #15
    4a38:	e000      	b.n	4a3c <show_cursor+0x14>
    4a3a:	2300      	movs	r3, #0
    4a3c:	72fb      	strb	r3, [r7, #11]
    4a3e:	4b0c      	ldr	r3, [pc, #48]	; (4a70 <show_cursor+0x48>)
    4a40:	781b      	ldrb	r3, [r3, #0]
    4a42:	60fb      	str	r3, [r7, #12]
    4a44:	e00a      	b.n	4a5c <show_cursor+0x34>
    4a46:	4b0b      	ldr	r3, [pc, #44]	; (4a74 <show_cursor+0x4c>)
    4a48:	781b      	ldrb	r3, [r3, #0]
    4a4a:	3307      	adds	r3, #7
    4a4c:	7afa      	ldrb	r2, [r7, #11]
    4a4e:	4619      	mov	r1, r3
    4a50:	68f8      	ldr	r0, [r7, #12]
    4a52:	f7fd fad3 	bl	1ffc <gfx_plot>
    4a56:	68fb      	ldr	r3, [r7, #12]
    4a58:	3301      	adds	r3, #1
    4a5a:	60fb      	str	r3, [r7, #12]
    4a5c:	4b04      	ldr	r3, [pc, #16]	; (4a70 <show_cursor+0x48>)
    4a5e:	781b      	ldrb	r3, [r3, #0]
    4a60:	1d9a      	adds	r2, r3, #6
    4a62:	68fb      	ldr	r3, [r7, #12]
    4a64:	429a      	cmp	r2, r3
    4a66:	dcee      	bgt.n	4a46 <show_cursor+0x1e>
    4a68:	bf00      	nop
    4a6a:	3710      	adds	r7, #16
    4a6c:	46bd      	mov	sp, r7
    4a6e:	bd80      	pop	{r7, pc}
    4a70:	200005e9 	.word	0x200005e9
    4a74:	200005ea 	.word	0x200005ea

00004a78 <tvout_init>:
    4a78:	b580      	push	{r7, lr}
    4a7a:	af00      	add	r7, sp, #0
    4a7c:	4b3e      	ldr	r3, [pc, #248]	; (4b78 <tvout_init+0x100>)
    4a7e:	4a3f      	ldr	r2, [pc, #252]	; (4b7c <tvout_init+0x104>)
    4a80:	601a      	str	r2, [r3, #0]
    4a82:	4b3f      	ldr	r3, [pc, #252]	; (4b80 <tvout_init+0x108>)
    4a84:	4a3f      	ldr	r2, [pc, #252]	; (4b84 <tvout_init+0x10c>)
    4a86:	601a      	str	r2, [r3, #0]
    4a88:	220a      	movs	r2, #10
    4a8a:	2108      	movs	r1, #8
    4a8c:	483a      	ldr	r0, [pc, #232]	; (4b78 <tvout_init+0x100>)
    4a8e:	f7fd f9c5 	bl	1e1c <config_pin>
    4a92:	4b39      	ldr	r3, [pc, #228]	; (4b78 <tvout_init+0x100>)
    4a94:	2200      	movs	r2, #0
    4a96:	60da      	str	r2, [r3, #12]
    4a98:	4a3b      	ldr	r2, [pc, #236]	; (4b88 <tvout_init+0x110>)
    4a9a:	4b3b      	ldr	r3, [pc, #236]	; (4b88 <tvout_init+0x110>)
    4a9c:	699b      	ldr	r3, [r3, #24]
    4a9e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4aa2:	6193      	str	r3, [r2, #24]
    4aa4:	4b39      	ldr	r3, [pc, #228]	; (4b8c <tvout_init+0x114>)
    4aa6:	2278      	movs	r2, #120	; 0x78
    4aa8:	619a      	str	r2, [r3, #24]
    4aaa:	4b38      	ldr	r3, [pc, #224]	; (4b8c <tvout_init+0x114>)
    4aac:	2201      	movs	r2, #1
    4aae:	621a      	str	r2, [r3, #32]
    4ab0:	4b36      	ldr	r3, [pc, #216]	; (4b8c <tvout_init+0x114>)
    4ab2:	2284      	movs	r2, #132	; 0x84
    4ab4:	601a      	str	r2, [r3, #0]
    4ab6:	4b35      	ldr	r3, [pc, #212]	; (4b8c <tvout_init+0x114>)
    4ab8:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4abc:	62da      	str	r2, [r3, #44]	; 0x2c
    4abe:	4b33      	ldr	r3, [pc, #204]	; (4b8c <tvout_init+0x114>)
    4ac0:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4ac4:	635a      	str	r2, [r3, #52]	; 0x34
    4ac6:	4b31      	ldr	r3, [pc, #196]	; (4b8c <tvout_init+0x114>)
    4ac8:	f240 1265 	movw	r2, #357	; 0x165
    4acc:	639a      	str	r2, [r3, #56]	; 0x38
    4ace:	4a2f      	ldr	r2, [pc, #188]	; (4b8c <tvout_init+0x114>)
    4ad0:	4b2e      	ldr	r3, [pc, #184]	; (4b8c <tvout_init+0x114>)
    4ad2:	695b      	ldr	r3, [r3, #20]
    4ad4:	f043 0301 	orr.w	r3, r3, #1
    4ad8:	6153      	str	r3, [r2, #20]
    4ada:	4b2c      	ldr	r3, [pc, #176]	; (4b8c <tvout_init+0x114>)
    4adc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4ae0:	645a      	str	r2, [r3, #68]	; 0x44
    4ae2:	4b2a      	ldr	r3, [pc, #168]	; (4b8c <tvout_init+0x114>)
    4ae4:	2200      	movs	r2, #0
    4ae6:	611a      	str	r2, [r3, #16]
    4ae8:	4a28      	ldr	r2, [pc, #160]	; (4b8c <tvout_init+0x114>)
    4aea:	4b28      	ldr	r3, [pc, #160]	; (4b8c <tvout_init+0x114>)
    4aec:	68db      	ldr	r3, [r3, #12]
    4aee:	f043 0301 	orr.w	r3, r3, #1
    4af2:	60d3      	str	r3, [r2, #12]
    4af4:	2100      	movs	r1, #0
    4af6:	2019      	movs	r0, #25
    4af8:	f7fe fb6e 	bl	31d8 <set_int_priority>
    4afc:	2100      	movs	r1, #0
    4afe:	201b      	movs	r0, #27
    4b00:	f7fe fb6a 	bl	31d8 <set_int_priority>
    4b04:	2019      	movs	r0, #25
    4b06:	f7fe faad 	bl	3064 <enable_interrupt>
    4b0a:	201b      	movs	r0, #27
    4b0c:	f7fe faaa 	bl	3064 <enable_interrupt>
    4b10:	4a1e      	ldr	r2, [pc, #120]	; (4b8c <tvout_init+0x114>)
    4b12:	4b1e      	ldr	r3, [pc, #120]	; (4b8c <tvout_init+0x114>)
    4b14:	681b      	ldr	r3, [r3, #0]
    4b16:	f043 0301 	orr.w	r3, r3, #1
    4b1a:	6013      	str	r3, [r2, #0]
    4b1c:	220a      	movs	r2, #10
    4b1e:	2100      	movs	r1, #0
    4b20:	481b      	ldr	r0, [pc, #108]	; (4b90 <tvout_init+0x118>)
    4b22:	f7fd f97b 	bl	1e1c <config_pin>
    4b26:	4a18      	ldr	r2, [pc, #96]	; (4b88 <tvout_init+0x110>)
    4b28:	4b17      	ldr	r3, [pc, #92]	; (4b88 <tvout_init+0x110>)
    4b2a:	69db      	ldr	r3, [r3, #28]
    4b2c:	f043 0302 	orr.w	r3, r3, #2
    4b30:	61d3      	str	r3, [r2, #28]
    4b32:	4b18      	ldr	r3, [pc, #96]	; (4b94 <tvout_init+0x11c>)
    4b34:	2278      	movs	r2, #120	; 0x78
    4b36:	61da      	str	r2, [r3, #28]
    4b38:	4b16      	ldr	r3, [pc, #88]	; (4b94 <tvout_init+0x11c>)
    4b3a:	2284      	movs	r2, #132	; 0x84
    4b3c:	601a      	str	r2, [r3, #0]
    4b3e:	4b15      	ldr	r3, [pc, #84]	; (4b94 <tvout_init+0x11c>)
    4b40:	2213      	movs	r2, #19
    4b42:	62da      	str	r2, [r3, #44]	; 0x2c
    4b44:	4b13      	ldr	r3, [pc, #76]	; (4b94 <tvout_init+0x11c>)
    4b46:	220a      	movs	r2, #10
    4b48:	63da      	str	r2, [r3, #60]	; 0x3c
    4b4a:	4a12      	ldr	r2, [pc, #72]	; (4b94 <tvout_init+0x11c>)
    4b4c:	4b11      	ldr	r3, [pc, #68]	; (4b94 <tvout_init+0x11c>)
    4b4e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4b50:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4b54:	6453      	str	r3, [r2, #68]	; 0x44
    4b56:	4a0f      	ldr	r2, [pc, #60]	; (4b94 <tvout_init+0x11c>)
    4b58:	4b0e      	ldr	r3, [pc, #56]	; (4b94 <tvout_init+0x11c>)
    4b5a:	695b      	ldr	r3, [r3, #20]
    4b5c:	f043 0301 	orr.w	r3, r3, #1
    4b60:	6153      	str	r3, [r2, #20]
    4b62:	4b0c      	ldr	r3, [pc, #48]	; (4b94 <tvout_init+0x11c>)
    4b64:	2200      	movs	r2, #0
    4b66:	611a      	str	r2, [r3, #16]
    4b68:	4a0a      	ldr	r2, [pc, #40]	; (4b94 <tvout_init+0x11c>)
    4b6a:	4b0a      	ldr	r3, [pc, #40]	; (4b94 <tvout_init+0x11c>)
    4b6c:	681b      	ldr	r3, [r3, #0]
    4b6e:	f043 0301 	orr.w	r3, r3, #1
    4b72:	6013      	str	r3, [r2, #0]
    4b74:	bf00      	nop
    4b76:	bd80      	pop	{r7, pc}
    4b78:	40010800 	.word	0x40010800
    4b7c:	88883333 	.word	0x88883333
    4b80:	40010804 	.word	0x40010804
    4b84:	84484444 	.word	0x84484444
    4b88:	40021000 	.word	0x40021000
    4b8c:	40012c00 	.word	0x40012c00
    4b90:	40010c00 	.word	0x40010c00
    4b94:	40000400 	.word	0x40000400

00004b98 <TV_OUT_handler>:
    4b98:	4668      	mov	r0, sp
    4b9a:	f020 0107 	bic.w	r1, r0, #7
    4b9e:	468d      	mov	sp, r1
    4ba0:	b471      	push	{r0, r4, r5, r6}
    4ba2:	4a31      	ldr	r2, [pc, #196]	; (4c68 <TV_OUT_handler+0xd0>)
    4ba4:	6a13      	ldr	r3, [r2, #32]
    4ba6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4baa:	6213      	str	r3, [r2, #32]
    4bac:	492f      	ldr	r1, [pc, #188]	; (4c6c <TV_OUT_handler+0xd4>)
    4bae:	f240 2209 	movw	r2, #521	; 0x209
    4bb2:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4bb4:	4293      	cmp	r3, r2
    4bb6:	d9fc      	bls.n	4bb2 <TV_OUT_handler+0x1a>
    4bb8:	4a2b      	ldr	r2, [pc, #172]	; (4c68 <TV_OUT_handler+0xd0>)
    4bba:	6a13      	ldr	r3, [r2, #32]
    4bbc:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4bc0:	6213      	str	r3, [r2, #32]
    4bc2:	4b2b      	ldr	r3, [pc, #172]	; (4c70 <TV_OUT_handler+0xd8>)
    4bc4:	881d      	ldrh	r5, [r3, #0]
    4bc6:	b2ad      	uxth	r5, r5
    4bc8:	4b2a      	ldr	r3, [pc, #168]	; (4c74 <TV_OUT_handler+0xdc>)
    4bca:	7818      	ldrb	r0, [r3, #0]
    4bcc:	4b2a      	ldr	r3, [pc, #168]	; (4c78 <TV_OUT_handler+0xe0>)
    4bce:	781b      	ldrb	r3, [r3, #0]
    4bd0:	fb95 f5f3 	sdiv	r5, r5, r3
    4bd4:	4b29      	ldr	r3, [pc, #164]	; (4c7c <TV_OUT_handler+0xe4>)
    4bd6:	fb00 3505 	mla	r5, r0, r5, r3
    4bda:	4b29      	ldr	r3, [pc, #164]	; (4c80 <TV_OUT_handler+0xe8>)
    4bdc:	881a      	ldrh	r2, [r3, #0]
    4bde:	4923      	ldr	r1, [pc, #140]	; (4c6c <TV_OUT_handler+0xd4>)
    4be0:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4be2:	4293      	cmp	r3, r2
    4be4:	d3fc      	bcc.n	4be0 <TV_OUT_handler+0x48>
    4be6:	4b27      	ldr	r3, [pc, #156]	; (4c84 <TV_OUT_handler+0xec>)
    4be8:	461a      	mov	r2, r3
    4bea:	6812      	ldr	r2, [r2, #0]
    4bec:	f002 0207 	and.w	r2, r2, #7
    4bf0:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4bf4:	4497      	add	pc, r2
    4bf6:	bf00      	nop
    4bf8:	bf00      	nop
    4bfa:	bf00      	nop
    4bfc:	bf00      	nop
    4bfe:	bf00      	nop
    4c00:	bf00      	nop
    4c02:	bf00      	nop
    4c04:	bf00      	nop
    4c06:	4a18      	ldr	r2, [pc, #96]	; (4c68 <TV_OUT_handler+0xd0>)
    4c08:	6a11      	ldr	r1, [r2, #32]
    4c0a:	4b1f      	ldr	r3, [pc, #124]	; (4c88 <TV_OUT_handler+0xf0>)
    4c0c:	881b      	ldrh	r3, [r3, #0]
    4c0e:	430b      	orrs	r3, r1
    4c10:	6213      	str	r3, [r2, #32]
    4c12:	b1b8      	cbz	r0, 4c44 <TV_OUT_handler+0xac>
    4c14:	462b      	mov	r3, r5
    4c16:	481d      	ldr	r0, [pc, #116]	; (4c8c <TV_OUT_handler+0xf4>)
    4c18:	491d      	ldr	r1, [pc, #116]	; (4c90 <TV_OUT_handler+0xf8>)
    4c1a:	4e16      	ldr	r6, [pc, #88]	; (4c74 <TV_OUT_handler+0xdc>)
    4c1c:	781a      	ldrb	r2, [r3, #0]
    4c1e:	0912      	lsrs	r2, r2, #4
    4c20:	8002      	strh	r2, [r0, #0]
    4c22:	780c      	ldrb	r4, [r1, #0]
    4c24:	4622      	mov	r2, r4
    4c26:	3a01      	subs	r2, #1
    4c28:	d1fd      	bne.n	4c26 <TV_OUT_handler+0x8e>
    4c2a:	f813 2b01 	ldrb.w	r2, [r3], #1
    4c2e:	f002 020f 	and.w	r2, r2, #15
    4c32:	8002      	strh	r2, [r0, #0]
    4c34:	780c      	ldrb	r4, [r1, #0]
    4c36:	4622      	mov	r2, r4
    4c38:	3a01      	subs	r2, #1
    4c3a:	d1fd      	bne.n	4c38 <TV_OUT_handler+0xa0>
    4c3c:	1b5c      	subs	r4, r3, r5
    4c3e:	7832      	ldrb	r2, [r6, #0]
    4c40:	4294      	cmp	r4, r2
    4c42:	d3eb      	bcc.n	4c1c <TV_OUT_handler+0x84>
    4c44:	2200      	movs	r2, #0
    4c46:	4b13      	ldr	r3, [pc, #76]	; (4c94 <TV_OUT_handler+0xfc>)
    4c48:	60da      	str	r2, [r3, #12]
    4c4a:	4a07      	ldr	r2, [pc, #28]	; (4c68 <TV_OUT_handler+0xd0>)
    4c4c:	6a13      	ldr	r3, [r2, #32]
    4c4e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4c52:	6213      	str	r3, [r2, #32]
    4c54:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4c58:	6913      	ldr	r3, [r2, #16]
    4c5a:	f023 0304 	bic.w	r3, r3, #4
    4c5e:	6113      	str	r3, [r2, #16]
    4c60:	bc71      	pop	{r0, r4, r5, r6}
    4c62:	4685      	mov	sp, r0
    4c64:	4770      	bx	lr
    4c66:	bf00      	nop
    4c68:	40000400 	.word	0x40000400
    4c6c:	40012c00 	.word	0x40012c00
    4c70:	200005f0 	.word	0x200005f0
    4c74:	20000154 	.word	0x20000154
    4c78:	20000155 	.word	0x20000155
    4c7c:	20002628 	.word	0x20002628
    4c80:	20000152 	.word	0x20000152
    4c84:	40012c24 	.word	0x40012c24
    4c88:	2000015a 	.word	0x2000015a
    4c8c:	4001080c 	.word	0x4001080c
    4c90:	20000156 	.word	0x20000156
    4c94:	40010800 	.word	0x40010800

00004c98 <TV_SYNC_handler>:
    4c98:	4668      	mov	r0, sp
    4c9a:	f020 0107 	bic.w	r1, r0, #7
    4c9e:	468d      	mov	sp, r1
    4ca0:	b501      	push	{r0, lr}
    4ca2:	4a84      	ldr	r2, [pc, #528]	; (4eb4 <TV_SYNC_handler+0x21c>)
    4ca4:	8813      	ldrh	r3, [r2, #0]
    4ca6:	3301      	adds	r3, #1
    4ca8:	b29b      	uxth	r3, r3
    4caa:	8013      	strh	r3, [r2, #0]
    4cac:	4a82      	ldr	r2, [pc, #520]	; (4eb8 <TV_SYNC_handler+0x220>)
    4cae:	6813      	ldr	r3, [r2, #0]
    4cb0:	3301      	adds	r3, #1
    4cb2:	6013      	str	r3, [r2, #0]
    4cb4:	4b81      	ldr	r3, [pc, #516]	; (4ebc <TV_SYNC_handler+0x224>)
    4cb6:	881b      	ldrh	r3, [r3, #0]
    4cb8:	b29b      	uxth	r3, r3
    4cba:	2b09      	cmp	r3, #9
    4cbc:	f200 8088 	bhi.w	4dd0 <TV_SYNC_handler+0x138>
    4cc0:	e8df f013 	tbh	[pc, r3, lsl #1]
    4cc4:	002c000a 	.word	0x002c000a
    4cc8:	006e004c 	.word	0x006e004c
    4ccc:	0097008f 	.word	0x0097008f
    4cd0:	00bb00ac 	.word	0x00bb00ac
    4cd4:	010c00da 	.word	0x010c00da
    4cd8:	4b79      	ldr	r3, [pc, #484]	; (4ec0 <TV_SYNC_handler+0x228>)
    4cda:	881b      	ldrh	r3, [r3, #0]
    4cdc:	b29b      	uxth	r3, r3
    4cde:	b18b      	cbz	r3, 4d04 <TV_SYNC_handler+0x6c>
    4ce0:	4a77      	ldr	r2, [pc, #476]	; (4ec0 <TV_SYNC_handler+0x228>)
    4ce2:	8813      	ldrh	r3, [r2, #0]
    4ce4:	3301      	adds	r3, #1
    4ce6:	b29b      	uxth	r3, r3
    4ce8:	8013      	strh	r3, [r2, #0]
    4cea:	8813      	ldrh	r3, [r2, #0]
    4cec:	b29b      	uxth	r3, r3
    4cee:	2b06      	cmp	r3, #6
    4cf0:	d16e      	bne.n	4dd0 <TV_SYNC_handler+0x138>
    4cf2:	2200      	movs	r2, #0
    4cf4:	4b72      	ldr	r3, [pc, #456]	; (4ec0 <TV_SYNC_handler+0x228>)
    4cf6:	801a      	strh	r2, [r3, #0]
    4cf8:	4a70      	ldr	r2, [pc, #448]	; (4ebc <TV_SYNC_handler+0x224>)
    4cfa:	8813      	ldrh	r3, [r2, #0]
    4cfc:	3301      	adds	r3, #1
    4cfe:	b29b      	uxth	r3, r3
    4d00:	8013      	strh	r3, [r2, #0]
    4d02:	e065      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4d04:	4b6f      	ldr	r3, [pc, #444]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4d06:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4d0a:	62da      	str	r2, [r3, #44]	; 0x2c
    4d0c:	22a4      	movs	r2, #164	; 0xa4
    4d0e:	635a      	str	r2, [r3, #52]	; 0x34
    4d10:	4a6b      	ldr	r2, [pc, #428]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d12:	8813      	ldrh	r3, [r2, #0]
    4d14:	3301      	adds	r3, #1
    4d16:	b29b      	uxth	r3, r3
    4d18:	8013      	strh	r3, [r2, #0]
    4d1a:	e059      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4d1c:	4b68      	ldr	r3, [pc, #416]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d1e:	881b      	ldrh	r3, [r3, #0]
    4d20:	b29b      	uxth	r3, r3
    4d22:	b18b      	cbz	r3, 4d48 <TV_SYNC_handler+0xb0>
    4d24:	4a66      	ldr	r2, [pc, #408]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d26:	8813      	ldrh	r3, [r2, #0]
    4d28:	3301      	adds	r3, #1
    4d2a:	b29b      	uxth	r3, r3
    4d2c:	8013      	strh	r3, [r2, #0]
    4d2e:	8813      	ldrh	r3, [r2, #0]
    4d30:	b29b      	uxth	r3, r3
    4d32:	2b06      	cmp	r3, #6
    4d34:	d14c      	bne.n	4dd0 <TV_SYNC_handler+0x138>
    4d36:	2200      	movs	r2, #0
    4d38:	4b61      	ldr	r3, [pc, #388]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d3a:	801a      	strh	r2, [r3, #0]
    4d3c:	4a5f      	ldr	r2, [pc, #380]	; (4ebc <TV_SYNC_handler+0x224>)
    4d3e:	8813      	ldrh	r3, [r2, #0]
    4d40:	3301      	adds	r3, #1
    4d42:	b29b      	uxth	r3, r3
    4d44:	8013      	strh	r3, [r2, #0]
    4d46:	e043      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4d48:	f240 7294 	movw	r2, #1940	; 0x794
    4d4c:	4b5d      	ldr	r3, [pc, #372]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4d4e:	635a      	str	r2, [r3, #52]	; 0x34
    4d50:	4a5b      	ldr	r2, [pc, #364]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d52:	8813      	ldrh	r3, [r2, #0]
    4d54:	3301      	adds	r3, #1
    4d56:	b29b      	uxth	r3, r3
    4d58:	8013      	strh	r3, [r2, #0]
    4d5a:	e039      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4d5c:	4b58      	ldr	r3, [pc, #352]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d5e:	881b      	ldrh	r3, [r3, #0]
    4d60:	b29b      	uxth	r3, r3
    4d62:	b153      	cbz	r3, 4d7a <TV_SYNC_handler+0xe2>
    4d64:	4b56      	ldr	r3, [pc, #344]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d66:	881b      	ldrh	r3, [r3, #0]
    4d68:	b29b      	uxth	r3, r3
    4d6a:	2b06      	cmp	r3, #6
    4d6c:	d00e      	beq.n	4d8c <TV_SYNC_handler+0xf4>
    4d6e:	4a54      	ldr	r2, [pc, #336]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d70:	8813      	ldrh	r3, [r2, #0]
    4d72:	3301      	adds	r3, #1
    4d74:	b29b      	uxth	r3, r3
    4d76:	8013      	strh	r3, [r2, #0]
    4d78:	e02a      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4d7a:	22a4      	movs	r2, #164	; 0xa4
    4d7c:	4b51      	ldr	r3, [pc, #324]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4d7e:	635a      	str	r2, [r3, #52]	; 0x34
    4d80:	4a4f      	ldr	r2, [pc, #316]	; (4ec0 <TV_SYNC_handler+0x228>)
    4d82:	8813      	ldrh	r3, [r2, #0]
    4d84:	3301      	adds	r3, #1
    4d86:	b29b      	uxth	r3, r3
    4d88:	8013      	strh	r3, [r2, #0]
    4d8a:	e021      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4d8c:	4a4b      	ldr	r2, [pc, #300]	; (4ebc <TV_SYNC_handler+0x224>)
    4d8e:	8813      	ldrh	r3, [r2, #0]
    4d90:	3301      	adds	r3, #1
    4d92:	b29b      	uxth	r3, r3
    4d94:	8013      	strh	r3, [r2, #0]
    4d96:	4b4c      	ldr	r3, [pc, #304]	; (4ec8 <TV_SYNC_handler+0x230>)
    4d98:	881b      	ldrh	r3, [r3, #0]
    4d9a:	f013 0f01 	tst.w	r3, #1
    4d9e:	d017      	beq.n	4dd0 <TV_SYNC_handler+0x138>
    4da0:	4b48      	ldr	r3, [pc, #288]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4da2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4da6:	62da      	str	r2, [r3, #44]	; 0x2c
    4da8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4dac:	635a      	str	r2, [r3, #52]	; 0x34
    4dae:	4a46      	ldr	r2, [pc, #280]	; (4ec8 <TV_SYNC_handler+0x230>)
    4db0:	8813      	ldrh	r3, [r2, #0]
    4db2:	f023 0302 	bic.w	r3, r3, #2
    4db6:	041b      	lsls	r3, r3, #16
    4db8:	0c1b      	lsrs	r3, r3, #16
    4dba:	8013      	strh	r3, [r2, #0]
    4dbc:	4a3d      	ldr	r2, [pc, #244]	; (4eb4 <TV_SYNC_handler+0x21c>)
    4dbe:	8813      	ldrh	r3, [r2, #0]
    4dc0:	f3c3 038d 	ubfx	r3, r3, #2, #14
    4dc4:	8013      	strh	r3, [r2, #0]
    4dc6:	4a3d      	ldr	r2, [pc, #244]	; (4ebc <TV_SYNC_handler+0x224>)
    4dc8:	8813      	ldrh	r3, [r2, #0]
    4dca:	3301      	adds	r3, #1
    4dcc:	b29b      	uxth	r3, r3
    4dce:	8013      	strh	r3, [r2, #0]
    4dd0:	4a3c      	ldr	r2, [pc, #240]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4dd2:	6913      	ldr	r3, [r2, #16]
    4dd4:	f023 0301 	bic.w	r3, r3, #1
    4dd8:	6113      	str	r3, [r2, #16]
    4dda:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    4dde:	4685      	mov	sp, r0
    4de0:	4770      	bx	lr
    4de2:	f7fc fd29 	bl	1838 <read_gamepad>
    4de6:	4a35      	ldr	r2, [pc, #212]	; (4ebc <TV_SYNC_handler+0x224>)
    4de8:	8813      	ldrh	r3, [r2, #0]
    4dea:	3301      	adds	r3, #1
    4dec:	b29b      	uxth	r3, r3
    4dee:	8013      	strh	r3, [r2, #0]
    4df0:	e7ee      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4df2:	4b36      	ldr	r3, [pc, #216]	; (4ecc <TV_SYNC_handler+0x234>)
    4df4:	881b      	ldrh	r3, [r3, #0]
    4df6:	b29b      	uxth	r3, r3
    4df8:	b13b      	cbz	r3, 4e0a <TV_SYNC_handler+0x172>
    4dfa:	4a34      	ldr	r2, [pc, #208]	; (4ecc <TV_SYNC_handler+0x234>)
    4dfc:	8813      	ldrh	r3, [r2, #0]
    4dfe:	3b01      	subs	r3, #1
    4e00:	b29b      	uxth	r3, r3
    4e02:	8013      	strh	r3, [r2, #0]
    4e04:	8813      	ldrh	r3, [r2, #0]
    4e06:	b29b      	uxth	r3, r3
    4e08:	b12b      	cbz	r3, 4e16 <TV_SYNC_handler+0x17e>
    4e0a:	4a2c      	ldr	r2, [pc, #176]	; (4ebc <TV_SYNC_handler+0x224>)
    4e0c:	8813      	ldrh	r3, [r2, #0]
    4e0e:	3301      	adds	r3, #1
    4e10:	b29b      	uxth	r3, r3
    4e12:	8013      	strh	r3, [r2, #0]
    4e14:	e7dc      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4e16:	f7ff f925 	bl	4064 <sound_stop>
    4e1a:	e7f6      	b.n	4e0a <TV_SYNC_handler+0x172>
    4e1c:	4b2c      	ldr	r3, [pc, #176]	; (4ed0 <TV_SYNC_handler+0x238>)
    4e1e:	881b      	ldrh	r3, [r3, #0]
    4e20:	b29b      	uxth	r3, r3
    4e22:	b123      	cbz	r3, 4e2e <TV_SYNC_handler+0x196>
    4e24:	4a2a      	ldr	r2, [pc, #168]	; (4ed0 <TV_SYNC_handler+0x238>)
    4e26:	8813      	ldrh	r3, [r2, #0]
    4e28:	3b01      	subs	r3, #1
    4e2a:	b29b      	uxth	r3, r3
    4e2c:	8013      	strh	r3, [r2, #0]
    4e2e:	4a23      	ldr	r2, [pc, #140]	; (4ebc <TV_SYNC_handler+0x224>)
    4e30:	8813      	ldrh	r3, [r2, #0]
    4e32:	3301      	adds	r3, #1
    4e34:	b29b      	uxth	r3, r3
    4e36:	8013      	strh	r3, [r2, #0]
    4e38:	e7ca      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4e3a:	4b1e      	ldr	r3, [pc, #120]	; (4eb4 <TV_SYNC_handler+0x21c>)
    4e3c:	881b      	ldrh	r3, [r3, #0]
    4e3e:	b29b      	uxth	r3, r3
    4e40:	4a24      	ldr	r2, [pc, #144]	; (4ed4 <TV_SYNC_handler+0x23c>)
    4e42:	8812      	ldrh	r2, [r2, #0]
    4e44:	429a      	cmp	r2, r3
    4e46:	d1c3      	bne.n	4dd0 <TV_SYNC_handler+0x138>
    4e48:	4b1e      	ldr	r3, [pc, #120]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4e4a:	691a      	ldr	r2, [r3, #16]
    4e4c:	f022 0204 	bic.w	r2, r2, #4
    4e50:	611a      	str	r2, [r3, #16]
    4e52:	68da      	ldr	r2, [r3, #12]
    4e54:	f042 0204 	orr.w	r2, r2, #4
    4e58:	60da      	str	r2, [r3, #12]
    4e5a:	4a1b      	ldr	r2, [pc, #108]	; (4ec8 <TV_SYNC_handler+0x230>)
    4e5c:	8813      	ldrh	r3, [r2, #0]
    4e5e:	b29b      	uxth	r3, r3
    4e60:	f043 0304 	orr.w	r3, r3, #4
    4e64:	8013      	strh	r3, [r2, #0]
    4e66:	4a15      	ldr	r2, [pc, #84]	; (4ebc <TV_SYNC_handler+0x224>)
    4e68:	8813      	ldrh	r3, [r2, #0]
    4e6a:	3301      	adds	r3, #1
    4e6c:	b29b      	uxth	r3, r3
    4e6e:	8013      	strh	r3, [r2, #0]
    4e70:	2200      	movs	r2, #0
    4e72:	4b13      	ldr	r3, [pc, #76]	; (4ec0 <TV_SYNC_handler+0x228>)
    4e74:	801a      	strh	r2, [r3, #0]
    4e76:	e7ab      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4e78:	4a11      	ldr	r2, [pc, #68]	; (4ec0 <TV_SYNC_handler+0x228>)
    4e7a:	8813      	ldrh	r3, [r2, #0]
    4e7c:	3301      	adds	r3, #1
    4e7e:	b29b      	uxth	r3, r3
    4e80:	8013      	strh	r3, [r2, #0]
    4e82:	4b0c      	ldr	r3, [pc, #48]	; (4eb4 <TV_SYNC_handler+0x21c>)
    4e84:	881b      	ldrh	r3, [r3, #0]
    4e86:	b29b      	uxth	r3, r3
    4e88:	4a13      	ldr	r2, [pc, #76]	; (4ed8 <TV_SYNC_handler+0x240>)
    4e8a:	8812      	ldrh	r2, [r2, #0]
    4e8c:	429a      	cmp	r2, r3
    4e8e:	d19f      	bne.n	4dd0 <TV_SYNC_handler+0x138>
    4e90:	4a0c      	ldr	r2, [pc, #48]	; (4ec4 <TV_SYNC_handler+0x22c>)
    4e92:	68d3      	ldr	r3, [r2, #12]
    4e94:	f023 0304 	bic.w	r3, r3, #4
    4e98:	60d3      	str	r3, [r2, #12]
    4e9a:	4a0b      	ldr	r2, [pc, #44]	; (4ec8 <TV_SYNC_handler+0x230>)
    4e9c:	8813      	ldrh	r3, [r2, #0]
    4e9e:	f023 0304 	bic.w	r3, r3, #4
    4ea2:	041b      	lsls	r3, r3, #16
    4ea4:	0c1b      	lsrs	r3, r3, #16
    4ea6:	8013      	strh	r3, [r2, #0]
    4ea8:	4a04      	ldr	r2, [pc, #16]	; (4ebc <TV_SYNC_handler+0x224>)
    4eaa:	8813      	ldrh	r3, [r2, #0]
    4eac:	3301      	adds	r3, #1
    4eae:	b29b      	uxth	r3, r3
    4eb0:	8013      	strh	r3, [r2, #0]
    4eb2:	e78d      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4eb4:	200005f2 	.word	0x200005f2
    4eb8:	200005f4 	.word	0x200005f4
    4ebc:	200005ec 	.word	0x200005ec
    4ec0:	200005f0 	.word	0x200005f0
    4ec4:	40012c00 	.word	0x40012c00
    4ec8:	200005ee 	.word	0x200005ee
    4ecc:	20004d8a 	.word	0x20004d8a
    4ed0:	20004d88 	.word	0x20004d88
    4ed4:	2000014e 	.word	0x2000014e
    4ed8:	20000150 	.word	0x20000150
    4edc:	4b11      	ldr	r3, [pc, #68]	; (4f24 <TV_SYNC_handler+0x28c>)
    4ede:	881b      	ldrh	r3, [r3, #0]
    4ee0:	b29b      	uxth	r3, r3
    4ee2:	f240 1207 	movw	r2, #263	; 0x107
    4ee6:	4293      	cmp	r3, r2
    4ee8:	f47f af72 	bne.w	4dd0 <TV_SYNC_handler+0x138>
    4eec:	4b0e      	ldr	r3, [pc, #56]	; (4f28 <TV_SYNC_handler+0x290>)
    4eee:	881b      	ldrh	r3, [r3, #0]
    4ef0:	f013 0f01 	tst.w	r3, #1
    4ef4:	d003      	beq.n	4efe <TV_SYNC_handler+0x266>
    4ef6:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4efa:	4b0c      	ldr	r3, [pc, #48]	; (4f2c <TV_SYNC_handler+0x294>)
    4efc:	62da      	str	r2, [r3, #44]	; 0x2c
    4efe:	4a0a      	ldr	r2, [pc, #40]	; (4f28 <TV_SYNC_handler+0x290>)
    4f00:	8813      	ldrh	r3, [r2, #0]
    4f02:	b29b      	uxth	r3, r3
    4f04:	f083 0301 	eor.w	r3, r3, #1
    4f08:	8013      	strh	r3, [r2, #0]
    4f0a:	8813      	ldrh	r3, [r2, #0]
    4f0c:	b29b      	uxth	r3, r3
    4f0e:	f043 0302 	orr.w	r3, r3, #2
    4f12:	8013      	strh	r3, [r2, #0]
    4f14:	2300      	movs	r3, #0
    4f16:	4a03      	ldr	r2, [pc, #12]	; (4f24 <TV_SYNC_handler+0x28c>)
    4f18:	8013      	strh	r3, [r2, #0]
    4f1a:	4a05      	ldr	r2, [pc, #20]	; (4f30 <TV_SYNC_handler+0x298>)
    4f1c:	8013      	strh	r3, [r2, #0]
    4f1e:	4a05      	ldr	r2, [pc, #20]	; (4f34 <TV_SYNC_handler+0x29c>)
    4f20:	8013      	strh	r3, [r2, #0]
    4f22:	e755      	b.n	4dd0 <TV_SYNC_handler+0x138>
    4f24:	200005f2 	.word	0x200005f2
    4f28:	200005ee 	.word	0x200005ee
    4f2c:	40012c00 	.word	0x40012c00
    4f30:	200005f0 	.word	0x200005f0
    4f34:	200005ec 	.word	0x200005ec

00004f38 <frame_sync>:
    4f38:	b480      	push	{r7}
    4f3a:	af00      	add	r7, sp, #0
    4f3c:	bf00      	nop
    4f3e:	4b05      	ldr	r3, [pc, #20]	; (4f54 <frame_sync+0x1c>)
    4f40:	881b      	ldrh	r3, [r3, #0]
    4f42:	b29b      	uxth	r3, r3
    4f44:	f003 0302 	and.w	r3, r3, #2
    4f48:	2b00      	cmp	r3, #0
    4f4a:	d0f8      	beq.n	4f3e <frame_sync+0x6>
    4f4c:	bf00      	nop
    4f4e:	46bd      	mov	sp, r7
    4f50:	bc80      	pop	{r7}
    4f52:	4770      	bx	lr
    4f54:	200005ee 	.word	0x200005ee

00004f58 <wait_sync_end>:
    4f58:	b480      	push	{r7}
    4f5a:	af00      	add	r7, sp, #0
    4f5c:	bf00      	nop
    4f5e:	4b05      	ldr	r3, [pc, #20]	; (4f74 <wait_sync_end+0x1c>)
    4f60:	881b      	ldrh	r3, [r3, #0]
    4f62:	b29b      	uxth	r3, r3
    4f64:	f003 0302 	and.w	r3, r3, #2
    4f68:	2b00      	cmp	r3, #0
    4f6a:	d1f8      	bne.n	4f5e <wait_sync_end+0x6>
    4f6c:	bf00      	nop
    4f6e:	46bd      	mov	sp, r7
    4f70:	bc80      	pop	{r7}
    4f72:	4770      	bx	lr
    4f74:	200005ee 	.word	0x200005ee

00004f78 <set_video_mode>:
    4f78:	b580      	push	{r7, lr}
    4f7a:	b082      	sub	sp, #8
    4f7c:	af00      	add	r7, sp, #0
    4f7e:	4603      	mov	r3, r0
    4f80:	71fb      	strb	r3, [r7, #7]
    4f82:	f7ff ffd9 	bl	4f38 <frame_sync>
    4f86:	4a37      	ldr	r2, [pc, #220]	; (5064 <set_video_mode+0xec>)
    4f88:	79fb      	ldrb	r3, [r7, #7]
    4f8a:	7013      	strb	r3, [r2, #0]
    4f8c:	79fa      	ldrb	r2, [r7, #7]
    4f8e:	4936      	ldr	r1, [pc, #216]	; (5068 <set_video_mode+0xf0>)
    4f90:	4613      	mov	r3, r2
    4f92:	00db      	lsls	r3, r3, #3
    4f94:	4413      	add	r3, r2
    4f96:	005b      	lsls	r3, r3, #1
    4f98:	440b      	add	r3, r1
    4f9a:	3302      	adds	r3, #2
    4f9c:	881a      	ldrh	r2, [r3, #0]
    4f9e:	4b33      	ldr	r3, [pc, #204]	; (506c <set_video_mode+0xf4>)
    4fa0:	801a      	strh	r2, [r3, #0]
    4fa2:	79fa      	ldrb	r2, [r7, #7]
    4fa4:	4930      	ldr	r1, [pc, #192]	; (5068 <set_video_mode+0xf0>)
    4fa6:	4613      	mov	r3, r2
    4fa8:	00db      	lsls	r3, r3, #3
    4faa:	4413      	add	r3, r2
    4fac:	005b      	lsls	r3, r3, #1
    4fae:	440b      	add	r3, r1
    4fb0:	3304      	adds	r3, #4
    4fb2:	881a      	ldrh	r2, [r3, #0]
    4fb4:	4b2e      	ldr	r3, [pc, #184]	; (5070 <set_video_mode+0xf8>)
    4fb6:	801a      	strh	r2, [r3, #0]
    4fb8:	79fa      	ldrb	r2, [r7, #7]
    4fba:	492b      	ldr	r1, [pc, #172]	; (5068 <set_video_mode+0xf0>)
    4fbc:	4613      	mov	r3, r2
    4fbe:	00db      	lsls	r3, r3, #3
    4fc0:	4413      	add	r3, r2
    4fc2:	005b      	lsls	r3, r3, #1
    4fc4:	440b      	add	r3, r1
    4fc6:	3306      	adds	r3, #6
    4fc8:	881a      	ldrh	r2, [r3, #0]
    4fca:	4b2a      	ldr	r3, [pc, #168]	; (5074 <set_video_mode+0xfc>)
    4fcc:	801a      	strh	r2, [r3, #0]
    4fce:	79fa      	ldrb	r2, [r7, #7]
    4fd0:	4925      	ldr	r1, [pc, #148]	; (5068 <set_video_mode+0xf0>)
    4fd2:	4613      	mov	r3, r2
    4fd4:	00db      	lsls	r3, r3, #3
    4fd6:	4413      	add	r3, r2
    4fd8:	005b      	lsls	r3, r3, #1
    4fda:	440b      	add	r3, r1
    4fdc:	3308      	adds	r3, #8
    4fde:	781a      	ldrb	r2, [r3, #0]
    4fe0:	4b25      	ldr	r3, [pc, #148]	; (5078 <set_video_mode+0x100>)
    4fe2:	701a      	strb	r2, [r3, #0]
    4fe4:	79fa      	ldrb	r2, [r7, #7]
    4fe6:	4920      	ldr	r1, [pc, #128]	; (5068 <set_video_mode+0xf0>)
    4fe8:	4613      	mov	r3, r2
    4fea:	00db      	lsls	r3, r3, #3
    4fec:	4413      	add	r3, r2
    4fee:	005b      	lsls	r3, r3, #1
    4ff0:	440b      	add	r3, r1
    4ff2:	3309      	adds	r3, #9
    4ff4:	781a      	ldrb	r2, [r3, #0]
    4ff6:	4b21      	ldr	r3, [pc, #132]	; (507c <set_video_mode+0x104>)
    4ff8:	701a      	strb	r2, [r3, #0]
    4ffa:	79fa      	ldrb	r2, [r7, #7]
    4ffc:	491a      	ldr	r1, [pc, #104]	; (5068 <set_video_mode+0xf0>)
    4ffe:	4613      	mov	r3, r2
    5000:	00db      	lsls	r3, r3, #3
    5002:	4413      	add	r3, r2
    5004:	005b      	lsls	r3, r3, #1
    5006:	440b      	add	r3, r1
    5008:	330a      	adds	r3, #10
    500a:	781a      	ldrb	r2, [r3, #0]
    500c:	4b1c      	ldr	r3, [pc, #112]	; (5080 <set_video_mode+0x108>)
    500e:	701a      	strb	r2, [r3, #0]
    5010:	79fa      	ldrb	r2, [r7, #7]
    5012:	4915      	ldr	r1, [pc, #84]	; (5068 <set_video_mode+0xf0>)
    5014:	4613      	mov	r3, r2
    5016:	00db      	lsls	r3, r3, #3
    5018:	4413      	add	r3, r2
    501a:	005b      	lsls	r3, r3, #1
    501c:	440b      	add	r3, r1
    501e:	330c      	adds	r3, #12
    5020:	881b      	ldrh	r3, [r3, #0]
    5022:	b2da      	uxtb	r2, r3
    5024:	4b17      	ldr	r3, [pc, #92]	; (5084 <set_video_mode+0x10c>)
    5026:	701a      	strb	r2, [r3, #0]
    5028:	79fa      	ldrb	r2, [r7, #7]
    502a:	490f      	ldr	r1, [pc, #60]	; (5068 <set_video_mode+0xf0>)
    502c:	4613      	mov	r3, r2
    502e:	00db      	lsls	r3, r3, #3
    5030:	4413      	add	r3, r2
    5032:	005b      	lsls	r3, r3, #1
    5034:	440b      	add	r3, r1
    5036:	330e      	adds	r3, #14
    5038:	881b      	ldrh	r3, [r3, #0]
    503a:	b2da      	uxtb	r2, r3
    503c:	4b12      	ldr	r3, [pc, #72]	; (5088 <set_video_mode+0x110>)
    503e:	701a      	strb	r2, [r3, #0]
    5040:	79fa      	ldrb	r2, [r7, #7]
    5042:	4909      	ldr	r1, [pc, #36]	; (5068 <set_video_mode+0xf0>)
    5044:	4613      	mov	r3, r2
    5046:	00db      	lsls	r3, r3, #3
    5048:	4413      	add	r3, r2
    504a:	005b      	lsls	r3, r3, #1
    504c:	440b      	add	r3, r1
    504e:	3310      	adds	r3, #16
    5050:	881a      	ldrh	r2, [r3, #0]
    5052:	4b0e      	ldr	r3, [pc, #56]	; (508c <set_video_mode+0x114>)
    5054:	801a      	strh	r2, [r3, #0]
    5056:	f7fd f867 	bl	2128 <gfx_cls>
    505a:	bf00      	nop
    505c:	3708      	adds	r7, #8
    505e:	46bd      	mov	sp, r7
    5060:	bd80      	pop	{r7, pc}
    5062:	bf00      	nop
    5064:	200005f8 	.word	0x200005f8
    5068:	00005780 	.word	0x00005780
    506c:	2000014e 	.word	0x2000014e
    5070:	20000150 	.word	0x20000150
    5074:	20000152 	.word	0x20000152
    5078:	20000154 	.word	0x20000154
    507c:	20000155 	.word	0x20000155
    5080:	20000156 	.word	0x20000156
    5084:	20000157 	.word	0x20000157
    5088:	20000158 	.word	0x20000158
    508c:	2000015a 	.word	0x2000015a

00005090 <get_video_params>:
    5090:	b480      	push	{r7}
    5092:	af00      	add	r7, sp, #0
    5094:	4b06      	ldr	r3, [pc, #24]	; (50b0 <get_video_params+0x20>)
    5096:	781b      	ldrb	r3, [r3, #0]
    5098:	461a      	mov	r2, r3
    509a:	4613      	mov	r3, r2
    509c:	00db      	lsls	r3, r3, #3
    509e:	4413      	add	r3, r2
    50a0:	005b      	lsls	r3, r3, #1
    50a2:	4a04      	ldr	r2, [pc, #16]	; (50b4 <get_video_params+0x24>)
    50a4:	4413      	add	r3, r2
    50a6:	4618      	mov	r0, r3
    50a8:	46bd      	mov	sp, r7
    50aa:	bc80      	pop	{r7}
    50ac:	4770      	bx	lr
    50ae:	bf00      	nop
    50b0:	200005f8 	.word	0x200005f8
    50b4:	00005780 	.word	0x00005780

000050b8 <game_pause>:
    50b8:	b480      	push	{r7}
    50ba:	b083      	sub	sp, #12
    50bc:	af00      	add	r7, sp, #0
    50be:	4603      	mov	r3, r0
    50c0:	80fb      	strh	r3, [r7, #6]
    50c2:	4a07      	ldr	r2, [pc, #28]	; (50e0 <game_pause+0x28>)
    50c4:	88fb      	ldrh	r3, [r7, #6]
    50c6:	8013      	strh	r3, [r2, #0]
    50c8:	bf00      	nop
    50ca:	4b05      	ldr	r3, [pc, #20]	; (50e0 <game_pause+0x28>)
    50cc:	881b      	ldrh	r3, [r3, #0]
    50ce:	b29b      	uxth	r3, r3
    50d0:	2b00      	cmp	r3, #0
    50d2:	d1fa      	bne.n	50ca <game_pause+0x12>
    50d4:	bf00      	nop
    50d6:	370c      	adds	r7, #12
    50d8:	46bd      	mov	sp, r7
    50da:	bc80      	pop	{r7}
    50dc:	4770      	bx	lr
    50de:	bf00      	nop
    50e0:	20004d88 	.word	0x20004d88

000050e4 <micro_pause>:
    50e4:	b480      	push	{r7}
    50e6:	b085      	sub	sp, #20
    50e8:	af00      	add	r7, sp, #0
    50ea:	6078      	str	r0, [r7, #4]
    50ec:	4b07      	ldr	r3, [pc, #28]	; (510c <micro_pause+0x28>)
    50ee:	681a      	ldr	r2, [r3, #0]
    50f0:	687b      	ldr	r3, [r7, #4]
    50f2:	4413      	add	r3, r2
    50f4:	60fb      	str	r3, [r7, #12]
    50f6:	bf00      	nop
    50f8:	4b04      	ldr	r3, [pc, #16]	; (510c <micro_pause+0x28>)
    50fa:	681a      	ldr	r2, [r3, #0]
    50fc:	68fb      	ldr	r3, [r7, #12]
    50fe:	429a      	cmp	r2, r3
    5100:	d3fa      	bcc.n	50f8 <micro_pause+0x14>
    5102:	bf00      	nop
    5104:	3714      	adds	r7, #20
    5106:	46bd      	mov	sp, r7
    5108:	bc80      	pop	{r7}
    510a:	4770      	bx	lr
    510c:	200005f4 	.word	0x200005f4
