
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 fd 46 00 00     .P. 1...=....F..
      10:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
      20:	fd 46 00 00 fd 46 00 00 fd 46 00 00 55 02 00 00     .F...F...F..U...
      30:	fd 46 00 00 fd 46 00 00 5b 02 00 00 61 02 00 00     .F...F..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 35 41 00 00     g...m...y...5A..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 fd 46 00 00 fd 46 00 00 b5 02 00 00     .....F...F......
      80:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
      90:	fd 46 00 00 fd 46 00 00 fd 46 00 00 bb 02 00 00     .F...F...F......
      a0:	fd 46 00 00 d9 4f 00 00 fd 46 00 00 d9 4e 00 00     .F...O...F...N..
      b0:	d5 43 00 00 cd 02 00 00 d3 02 00 00 fd 46 00 00     .C...........F..
      c0:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
      d0:	fd 46 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .F..............
      e0:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
      f0:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
     100:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
     110:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..
     120:	fd 46 00 00 fd 46 00 00 fd 46 00 00 fd 46 00 00     .F...F...F...F..

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
     18e:	f003 f884 	bl	329a <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	200001d8 	.word	0x200001d8
     1a0:	20004e12 	.word	0x20004e12
     1a4:	0000a934 	.word	0x0000a934
     1a8:	20000000 	.word	0x20000000
     1ac:	200001d8 	.word	0x200001d8
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
     1dc:	f004 fa96 	bl	470c <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f004 fa8a 	bl	470c <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f004 fa7e 	bl	470c <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 fa79 	bl	470c <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00005aa8 	.word	0x00005aa8
     230:	00005ac0 	.word	0x00005ac0
     234:	00005acc 	.word	0x00005acc
     238:	00005adc 	.word	0x00005adc

0000023c <NMI_handler>:
     23c:	f004 fa5e 	bl	46fc <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f004 fa5b 	bl	46fc <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f004 fa58 	bl	46fc <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f004 fa55 	bl	46fc <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f004 fa52 	bl	46fc <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f004 fa4f 	bl	46fc <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f004 fa4c 	bl	46fc <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f004 fa49 	bl	46fc <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f004 fa46 	bl	46fc <reset_mcu>
     270:	bf00      	nop
     272:	f004 fa43 	bl	46fc <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f004 fa40 	bl	46fc <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f004 fa3d 	bl	46fc <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f004 fa3a 	bl	46fc <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f004 fa37 	bl	46fc <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f004 fa34 	bl	46fc <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f004 fa31 	bl	46fc <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f004 fa2e 	bl	46fc <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f004 fa2b 	bl	46fc <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f004 fa28 	bl	46fc <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f004 fa25 	bl	46fc <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f004 fa22 	bl	46fc <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f004 fa1f 	bl	46fc <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f004 fa1c 	bl	46fc <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f004 fa19 	bl	46fc <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f004 fa16 	bl	46fc <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f004 fa13 	bl	46fc <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f004 fa10 	bl	46fc <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f004 fa0d 	bl	46fc <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f004 fa0a 	bl	46fc <reset_mcu>
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
     3c8:	f004 fa18 	bl	47fc <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f004 fa05 	bl	47dc <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 fb5e 	bl	4a94 <print>
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 fb5b 	bl	4a94 <print>
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 fb84 	bl	4af4 <print_int>
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7d9b      	ldrb	r3, [r3, #22]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 fb7e 	bl	4af4 <print_int>
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7ddb      	ldrb	r3, [r3, #23]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 fb78 	bl	4af4 <print_int>
     404:	f004 f9fa 	bl	47fc <new_line>
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 fb43 	bl	4a94 <print>
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 fb6d 	bl	4af4 <print_int>
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 fb3a 	bl	4a94 <print>
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 fb64 	bl	4af4 <print_int>
     42c:	f004 f9e6 	bl	47fc <new_line>
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 fb2f 	bl	4a94 <print>
     436:	2300      	movs	r3, #0
     438:	60fb      	str	r3, [r7, #12]
     43a:	e00b      	b.n	454 <print_vms+0x94>
     43c:	4a0c      	ldr	r2, [pc, #48]	; (470 <print_vms+0xb0>)
     43e:	68fb      	ldr	r3, [r7, #12]
     440:	4413      	add	r3, r2
     442:	3306      	adds	r3, #6
     444:	781b      	ldrb	r3, [r3, #0]
     446:	2110      	movs	r1, #16
     448:	4618      	mov	r0, r3
     44a:	f004 fb53 	bl	4af4 <print_int>
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
     45a:	f004 f9cf 	bl	47fc <new_line>
     45e:	f004 fc69 	bl	4d34 <prompt_btn>
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	00005468 	.word	0x00005468
     470:	200001d8 	.word	0x200001d8
     474:	0000546c 	.word	0x0000546c
     478:	00005470 	.word	0x00005470
     47c:	00005478 	.word	0x00005478

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
     4e2:	b089      	sub	sp, #36	; 0x24
     4e4:	af02      	add	r7, sp, #8
     4e6:	4603      	mov	r3, r0
     4e8:	80fb      	strh	r3, [r7, #6]
     4ea:	4ab0      	ldr	r2, [pc, #704]	; (7ac <chip_vm+0x2cc>)
     4ec:	88fb      	ldrh	r3, [r7, #6]
     4ee:	8013      	strh	r3, [r2, #0]
     4f0:	4bae      	ldr	r3, [pc, #696]	; (7ac <chip_vm+0x2cc>)
     4f2:	2200      	movs	r2, #0
     4f4:	711a      	strb	r2, [r3, #4]
     4f6:	4bad      	ldr	r3, [pc, #692]	; (7ac <chip_vm+0x2cc>)
     4f8:	2200      	movs	r2, #0
     4fa:	805a      	strh	r2, [r3, #2]
     4fc:	4bab      	ldr	r3, [pc, #684]	; (7ac <chip_vm+0x2cc>)
     4fe:	881b      	ldrh	r3, [r3, #0]
     500:	461a      	mov	r2, r3
     502:	4bab      	ldr	r3, [pc, #684]	; (7b0 <chip_vm+0x2d0>)
     504:	5c9a      	ldrb	r2, [r3, r2]
     506:	4ba9      	ldr	r3, [pc, #676]	; (7ac <chip_vm+0x2cc>)
     508:	759a      	strb	r2, [r3, #22]
     50a:	4ba8      	ldr	r3, [pc, #672]	; (7ac <chip_vm+0x2cc>)
     50c:	881b      	ldrh	r3, [r3, #0]
     50e:	3301      	adds	r3, #1
     510:	4aa7      	ldr	r2, [pc, #668]	; (7b0 <chip_vm+0x2d0>)
     512:	5cd2      	ldrb	r2, [r2, r3]
     514:	4ba5      	ldr	r3, [pc, #660]	; (7ac <chip_vm+0x2cc>)
     516:	75da      	strb	r2, [r3, #23]
     518:	4ba4      	ldr	r3, [pc, #656]	; (7ac <chip_vm+0x2cc>)
     51a:	881b      	ldrh	r3, [r3, #0]
     51c:	3302      	adds	r3, #2
     51e:	b29a      	uxth	r2, r3
     520:	4ba2      	ldr	r3, [pc, #648]	; (7ac <chip_vm+0x2cc>)
     522:	801a      	strh	r2, [r3, #0]
     524:	4ba1      	ldr	r3, [pc, #644]	; (7ac <chip_vm+0x2cc>)
     526:	7d9b      	ldrb	r3, [r3, #22]
     528:	f003 030f 	and.w	r3, r3, #15
     52c:	75fb      	strb	r3, [r7, #23]
     52e:	4b9f      	ldr	r3, [pc, #636]	; (7ac <chip_vm+0x2cc>)
     530:	7ddb      	ldrb	r3, [r3, #23]
     532:	091b      	lsrs	r3, r3, #4
     534:	75bb      	strb	r3, [r7, #22]
     536:	4b9d      	ldr	r3, [pc, #628]	; (7ac <chip_vm+0x2cc>)
     538:	7d9b      	ldrb	r3, [r3, #22]
     53a:	091b      	lsrs	r3, r3, #4
     53c:	b2db      	uxtb	r3, r3
     53e:	2b0f      	cmp	r3, #15
     540:	d8dc      	bhi.n	4fc <chip_vm+0x1c>
     542:	a201      	add	r2, pc, #4	; (adr r2, 548 <chip_vm+0x68>)
     544:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     548:	00000589 	.word	0x00000589
     54c:	000006c5 	.word	0x000006c5
     550:	000006e3 	.word	0x000006e3
     554:	00000721 	.word	0x00000721
     558:	00000743 	.word	0x00000743
     55c:	00000765 	.word	0x00000765
     560:	00000817 	.word	0x00000817
     564:	00000829 	.word	0x00000829
     568:	00000869 	.word	0x00000869
     56c:	00000a61 	.word	0x00000a61
     570:	00000d11 	.word	0x00000d11
     574:	00000d33 	.word	0x00000d33
     578:	00000d5d 	.word	0x00000d5d
     57c:	00000d7b 	.word	0x00000d7b
     580:	00000e6b 	.word	0x00000e6b
     584:	00000ed1 	.word	0x00000ed1
     588:	4b88      	ldr	r3, [pc, #544]	; (7ac <chip_vm+0x2cc>)
     58a:	7d9a      	ldrb	r2, [r3, #22]
     58c:	4b87      	ldr	r3, [pc, #540]	; (7ac <chip_vm+0x2cc>)
     58e:	7ddb      	ldrb	r3, [r3, #23]
     590:	4313      	orrs	r3, r2
     592:	b2db      	uxtb	r3, r3
     594:	2b00      	cmp	r3, #0
     596:	f000 8690 	beq.w	12ba <chip_vm+0xdda>
     59a:	4b84      	ldr	r3, [pc, #528]	; (7ac <chip_vm+0x2cc>)
     59c:	7ddb      	ldrb	r3, [r3, #23]
     59e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5a2:	2bc0      	cmp	r3, #192	; 0xc0
     5a4:	d109      	bne.n	5ba <chip_vm+0xda>
     5a6:	4b81      	ldr	r3, [pc, #516]	; (7ac <chip_vm+0x2cc>)
     5a8:	7ddb      	ldrb	r3, [r3, #23]
     5aa:	f003 030f 	and.w	r3, r3, #15
     5ae:	b2db      	uxtb	r3, r3
     5b0:	4618      	mov	r0, r3
     5b2:	f001 fee5 	bl	2380 <gfx_scroll_down>
     5b6:	f000 be80 	b.w	12ba <chip_vm+0xdda>
     5ba:	4b7c      	ldr	r3, [pc, #496]	; (7ac <chip_vm+0x2cc>)
     5bc:	7ddb      	ldrb	r3, [r3, #23]
     5be:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     5c2:	2bd0      	cmp	r3, #208	; 0xd0
     5c4:	d109      	bne.n	5da <chip_vm+0xfa>
     5c6:	4b79      	ldr	r3, [pc, #484]	; (7ac <chip_vm+0x2cc>)
     5c8:	7ddb      	ldrb	r3, [r3, #23]
     5ca:	f003 030f 	and.w	r3, r3, #15
     5ce:	b2db      	uxtb	r3, r3
     5d0:	4618      	mov	r0, r3
     5d2:	f001 fe9b 	bl	230c <gfx_scroll_up>
     5d6:	f000 be70 	b.w	12ba <chip_vm+0xdda>
     5da:	4b74      	ldr	r3, [pc, #464]	; (7ac <chip_vm+0x2cc>)
     5dc:	7ddb      	ldrb	r3, [r3, #23]
     5de:	3be0      	subs	r3, #224	; 0xe0
     5e0:	2b1f      	cmp	r3, #31
     5e2:	d86a      	bhi.n	6ba <chip_vm+0x1da>
     5e4:	a201      	add	r2, pc, #4	; (adr r2, 5ec <chip_vm+0x10c>)
     5e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     5ea:	bf00      	nop
     5ec:	0000066d 	.word	0x0000066d
     5f0:	000006bb 	.word	0x000006bb
     5f4:	000006bb 	.word	0x000006bb
     5f8:	000006bb 	.word	0x000006bb
     5fc:	000006bb 	.word	0x000006bb
     600:	000006bb 	.word	0x000006bb
     604:	000006bb 	.word	0x000006bb
     608:	000006bb 	.word	0x000006bb
     60c:	000006bb 	.word	0x000006bb
     610:	000006bb 	.word	0x000006bb
     614:	000006bb 	.word	0x000006bb
     618:	000006bb 	.word	0x000006bb
     61c:	000006bb 	.word	0x000006bb
     620:	000006bb 	.word	0x000006bb
     624:	00000673 	.word	0x00000673
     628:	000006bb 	.word	0x000006bb
     62c:	000006bb 	.word	0x000006bb
     630:	000006bb 	.word	0x000006bb
     634:	000006bb 	.word	0x000006bb
     638:	000006bb 	.word	0x000006bb
     63c:	000006bb 	.word	0x000006bb
     640:	000006bb 	.word	0x000006bb
     644:	000006bb 	.word	0x000006bb
     648:	000006bb 	.word	0x000006bb
     64c:	000006bb 	.word	0x000006bb
     650:	000006bb 	.word	0x000006bb
     654:	000006b3 	.word	0x000006b3
     658:	0000068d 	.word	0x0000068d
     65c:	00000695 	.word	0x00000695
     660:	0000069d 	.word	0x0000069d
     664:	000006a3 	.word	0x000006a3
     668:	000006ab 	.word	0x000006ab
     66c:	f001 fdf2 	bl	2254 <gfx_cls>
     670:	e026      	b.n	6c0 <chip_vm+0x1e0>
     672:	4b4e      	ldr	r3, [pc, #312]	; (7ac <chip_vm+0x2cc>)
     674:	791b      	ldrb	r3, [r3, #4]
     676:	1e5a      	subs	r2, r3, #1
     678:	b2d1      	uxtb	r1, r2
     67a:	4a4c      	ldr	r2, [pc, #304]	; (7ac <chip_vm+0x2cc>)
     67c:	7111      	strb	r1, [r2, #4]
     67e:	4a4b      	ldr	r2, [pc, #300]	; (7ac <chip_vm+0x2cc>)
     680:	330c      	adds	r3, #12
     682:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     686:	4b49      	ldr	r3, [pc, #292]	; (7ac <chip_vm+0x2cc>)
     688:	801a      	strh	r2, [r3, #0]
     68a:	e019      	b.n	6c0 <chip_vm+0x1e0>
     68c:	2004      	movs	r0, #4
     68e:	f001 ff01 	bl	2494 <gfx_scroll_right>
     692:	e015      	b.n	6c0 <chip_vm+0x1e0>
     694:	2004      	movs	r0, #4
     696:	f001 febb 	bl	2410 <gfx_scroll_left>
     69a:	e011      	b.n	6c0 <chip_vm+0x1e0>
     69c:	2301      	movs	r3, #1
     69e:	f000 be15 	b.w	12cc <chip_vm+0xdec>
     6a2:	2002      	movs	r0, #2
     6a4:	f004 fe08 	bl	52b8 <set_video_mode>
     6a8:	e00a      	b.n	6c0 <chip_vm+0x1e0>
     6aa:	2001      	movs	r0, #1
     6ac:	f004 fe04 	bl	52b8 <set_video_mode>
     6b0:	e006      	b.n	6c0 <chip_vm+0x1e0>
     6b2:	2000      	movs	r0, #0
     6b4:	f004 fe00 	bl	52b8 <set_video_mode>
     6b8:	e002      	b.n	6c0 <chip_vm+0x1e0>
     6ba:	2302      	movs	r3, #2
     6bc:	f000 be06 	b.w	12cc <chip_vm+0xdec>
     6c0:	f000 bdfb 	b.w	12ba <chip_vm+0xdda>
     6c4:	4b39      	ldr	r3, [pc, #228]	; (7ac <chip_vm+0x2cc>)
     6c6:	7d9b      	ldrb	r3, [r3, #22]
     6c8:	021b      	lsls	r3, r3, #8
     6ca:	4a38      	ldr	r2, [pc, #224]	; (7ac <chip_vm+0x2cc>)
     6cc:	7dd2      	ldrb	r2, [r2, #23]
     6ce:	4313      	orrs	r3, r2
     6d0:	005b      	lsls	r3, r3, #1
     6d2:	b29b      	uxth	r3, r3
     6d4:	f3c3 030c 	ubfx	r3, r3, #0, #13
     6d8:	b29a      	uxth	r2, r3
     6da:	4b34      	ldr	r3, [pc, #208]	; (7ac <chip_vm+0x2cc>)
     6dc:	801a      	strh	r2, [r3, #0]
     6de:	f000 bdf3 	b.w	12c8 <chip_vm+0xde8>
     6e2:	4b32      	ldr	r3, [pc, #200]	; (7ac <chip_vm+0x2cc>)
     6e4:	791b      	ldrb	r3, [r3, #4]
     6e6:	3301      	adds	r3, #1
     6e8:	b2da      	uxtb	r2, r3
     6ea:	4b30      	ldr	r3, [pc, #192]	; (7ac <chip_vm+0x2cc>)
     6ec:	711a      	strb	r2, [r3, #4]
     6ee:	4b2f      	ldr	r3, [pc, #188]	; (7ac <chip_vm+0x2cc>)
     6f0:	791b      	ldrb	r3, [r3, #4]
     6f2:	4618      	mov	r0, r3
     6f4:	4b2d      	ldr	r3, [pc, #180]	; (7ac <chip_vm+0x2cc>)
     6f6:	8819      	ldrh	r1, [r3, #0]
     6f8:	4a2c      	ldr	r2, [pc, #176]	; (7ac <chip_vm+0x2cc>)
     6fa:	f100 030c 	add.w	r3, r0, #12
     6fe:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     702:	4b2a      	ldr	r3, [pc, #168]	; (7ac <chip_vm+0x2cc>)
     704:	7d9b      	ldrb	r3, [r3, #22]
     706:	021b      	lsls	r3, r3, #8
     708:	4a28      	ldr	r2, [pc, #160]	; (7ac <chip_vm+0x2cc>)
     70a:	7dd2      	ldrb	r2, [r2, #23]
     70c:	4313      	orrs	r3, r2
     70e:	005b      	lsls	r3, r3, #1
     710:	b29b      	uxth	r3, r3
     712:	f3c3 030c 	ubfx	r3, r3, #0, #13
     716:	b29a      	uxth	r2, r3
     718:	4b24      	ldr	r3, [pc, #144]	; (7ac <chip_vm+0x2cc>)
     71a:	801a      	strh	r2, [r3, #0]
     71c:	f000 bdd4 	b.w	12c8 <chip_vm+0xde8>
     720:	7dfb      	ldrb	r3, [r7, #23]
     722:	4a22      	ldr	r2, [pc, #136]	; (7ac <chip_vm+0x2cc>)
     724:	4413      	add	r3, r2
     726:	799a      	ldrb	r2, [r3, #6]
     728:	4b20      	ldr	r3, [pc, #128]	; (7ac <chip_vm+0x2cc>)
     72a:	7ddb      	ldrb	r3, [r3, #23]
     72c:	429a      	cmp	r2, r3
     72e:	f040 85c7 	bne.w	12c0 <chip_vm+0xde0>
     732:	4b1e      	ldr	r3, [pc, #120]	; (7ac <chip_vm+0x2cc>)
     734:	881b      	ldrh	r3, [r3, #0]
     736:	3302      	adds	r3, #2
     738:	b29a      	uxth	r2, r3
     73a:	4b1c      	ldr	r3, [pc, #112]	; (7ac <chip_vm+0x2cc>)
     73c:	801a      	strh	r2, [r3, #0]
     73e:	f000 bdbf 	b.w	12c0 <chip_vm+0xde0>
     742:	7dfb      	ldrb	r3, [r7, #23]
     744:	4a19      	ldr	r2, [pc, #100]	; (7ac <chip_vm+0x2cc>)
     746:	4413      	add	r3, r2
     748:	799a      	ldrb	r2, [r3, #6]
     74a:	4b18      	ldr	r3, [pc, #96]	; (7ac <chip_vm+0x2cc>)
     74c:	7ddb      	ldrb	r3, [r3, #23]
     74e:	429a      	cmp	r2, r3
     750:	f000 85b9 	beq.w	12c6 <chip_vm+0xde6>
     754:	4b15      	ldr	r3, [pc, #84]	; (7ac <chip_vm+0x2cc>)
     756:	881b      	ldrh	r3, [r3, #0]
     758:	3302      	adds	r3, #2
     75a:	b29a      	uxth	r2, r3
     75c:	4b13      	ldr	r3, [pc, #76]	; (7ac <chip_vm+0x2cc>)
     75e:	801a      	strh	r2, [r3, #0]
     760:	f000 bdb1 	b.w	12c6 <chip_vm+0xde6>
     764:	4b11      	ldr	r3, [pc, #68]	; (7ac <chip_vm+0x2cc>)
     766:	7ddb      	ldrb	r3, [r3, #23]
     768:	f003 030f 	and.w	r3, r3, #15
     76c:	2b02      	cmp	r3, #2
     76e:	d016      	beq.n	79e <chip_vm+0x2be>
     770:	2b03      	cmp	r3, #3
     772:	d033      	beq.n	7dc <chip_vm+0x2fc>
     774:	2b00      	cmp	r3, #0
     776:	d001      	beq.n	77c <chip_vm+0x29c>
     778:	f000 bda6 	b.w	12c8 <chip_vm+0xde8>
     77c:	7dfb      	ldrb	r3, [r7, #23]
     77e:	4a0b      	ldr	r2, [pc, #44]	; (7ac <chip_vm+0x2cc>)
     780:	4413      	add	r3, r2
     782:	799a      	ldrb	r2, [r3, #6]
     784:	7dbb      	ldrb	r3, [r7, #22]
     786:	4909      	ldr	r1, [pc, #36]	; (7ac <chip_vm+0x2cc>)
     788:	440b      	add	r3, r1
     78a:	799b      	ldrb	r3, [r3, #6]
     78c:	429a      	cmp	r2, r3
     78e:	d13f      	bne.n	810 <chip_vm+0x330>
     790:	4b06      	ldr	r3, [pc, #24]	; (7ac <chip_vm+0x2cc>)
     792:	881b      	ldrh	r3, [r3, #0]
     794:	3302      	adds	r3, #2
     796:	b29a      	uxth	r2, r3
     798:	4b04      	ldr	r3, [pc, #16]	; (7ac <chip_vm+0x2cc>)
     79a:	801a      	strh	r2, [r3, #0]
     79c:	e038      	b.n	810 <chip_vm+0x330>
     79e:	7dfa      	ldrb	r2, [r7, #23]
     7a0:	7dbb      	ldrb	r3, [r7, #22]
     7a2:	429a      	cmp	r2, r3
     7a4:	d206      	bcs.n	7b4 <chip_vm+0x2d4>
     7a6:	7dfb      	ldrb	r3, [r7, #23]
     7a8:	e005      	b.n	7b6 <chip_vm+0x2d6>
     7aa:	bf00      	nop
     7ac:	200001d8 	.word	0x200001d8
     7b0:	2000067c 	.word	0x2000067c
     7b4:	7dbb      	ldrb	r3, [r7, #22]
     7b6:	4aa8      	ldr	r2, [pc, #672]	; (a58 <chip_vm+0x578>)
     7b8:	4413      	add	r3, r2
     7ba:	1d98      	adds	r0, r3, #6
     7bc:	4ba6      	ldr	r3, [pc, #664]	; (a58 <chip_vm+0x578>)
     7be:	885b      	ldrh	r3, [r3, #2]
     7c0:	461a      	mov	r2, r3
     7c2:	4ba6      	ldr	r3, [pc, #664]	; (a5c <chip_vm+0x57c>)
     7c4:	18d1      	adds	r1, r2, r3
     7c6:	7dba      	ldrb	r2, [r7, #22]
     7c8:	7dfb      	ldrb	r3, [r7, #23]
     7ca:	1ad3      	subs	r3, r2, r3
     7cc:	2b00      	cmp	r3, #0
     7ce:	bfb8      	it	lt
     7d0:	425b      	neglt	r3, r3
     7d2:	3301      	adds	r3, #1
     7d4:	461a      	mov	r2, r3
     7d6:	f001 faec 	bl	1db2 <move>
     7da:	e01a      	b.n	812 <chip_vm+0x332>
     7dc:	4b9e      	ldr	r3, [pc, #632]	; (a58 <chip_vm+0x578>)
     7de:	885b      	ldrh	r3, [r3, #2]
     7e0:	461a      	mov	r2, r3
     7e2:	4b9e      	ldr	r3, [pc, #632]	; (a5c <chip_vm+0x57c>)
     7e4:	18d0      	adds	r0, r2, r3
     7e6:	7dfa      	ldrb	r2, [r7, #23]
     7e8:	7dbb      	ldrb	r3, [r7, #22]
     7ea:	429a      	cmp	r2, r3
     7ec:	d201      	bcs.n	7f2 <chip_vm+0x312>
     7ee:	7dfb      	ldrb	r3, [r7, #23]
     7f0:	e000      	b.n	7f4 <chip_vm+0x314>
     7f2:	7dbb      	ldrb	r3, [r7, #22]
     7f4:	4a98      	ldr	r2, [pc, #608]	; (a58 <chip_vm+0x578>)
     7f6:	4413      	add	r3, r2
     7f8:	1d99      	adds	r1, r3, #6
     7fa:	7dba      	ldrb	r2, [r7, #22]
     7fc:	7dfb      	ldrb	r3, [r7, #23]
     7fe:	1ad3      	subs	r3, r2, r3
     800:	2b00      	cmp	r3, #0
     802:	bfb8      	it	lt
     804:	425b      	neglt	r3, r3
     806:	3301      	adds	r3, #1
     808:	461a      	mov	r2, r3
     80a:	f001 fad2 	bl	1db2 <move>
     80e:	e000      	b.n	812 <chip_vm+0x332>
     810:	bf00      	nop
     812:	f000 bd59 	b.w	12c8 <chip_vm+0xde8>
     816:	7dfb      	ldrb	r3, [r7, #23]
     818:	4a8f      	ldr	r2, [pc, #572]	; (a58 <chip_vm+0x578>)
     81a:	7dd1      	ldrb	r1, [r2, #23]
     81c:	4a8e      	ldr	r2, [pc, #568]	; (a58 <chip_vm+0x578>)
     81e:	4413      	add	r3, r2
     820:	460a      	mov	r2, r1
     822:	719a      	strb	r2, [r3, #6]
     824:	f000 bd50 	b.w	12c8 <chip_vm+0xde8>
     828:	7dfb      	ldrb	r3, [r7, #23]
     82a:	4a8b      	ldr	r2, [pc, #556]	; (a58 <chip_vm+0x578>)
     82c:	4413      	add	r3, r2
     82e:	799b      	ldrb	r3, [r3, #6]
     830:	461a      	mov	r2, r3
     832:	4b89      	ldr	r3, [pc, #548]	; (a58 <chip_vm+0x578>)
     834:	7ddb      	ldrb	r3, [r3, #23]
     836:	4413      	add	r3, r2
     838:	2bff      	cmp	r3, #255	; 0xff
     83a:	bfcc      	ite	gt
     83c:	2301      	movgt	r3, #1
     83e:	2300      	movle	r3, #0
     840:	b2db      	uxtb	r3, r3
     842:	757b      	strb	r3, [r7, #21]
     844:	7dfb      	ldrb	r3, [r7, #23]
     846:	7dfa      	ldrb	r2, [r7, #23]
     848:	4983      	ldr	r1, [pc, #524]	; (a58 <chip_vm+0x578>)
     84a:	440a      	add	r2, r1
     84c:	7991      	ldrb	r1, [r2, #6]
     84e:	4a82      	ldr	r2, [pc, #520]	; (a58 <chip_vm+0x578>)
     850:	7dd2      	ldrb	r2, [r2, #23]
     852:	440a      	add	r2, r1
     854:	b2d1      	uxtb	r1, r2
     856:	4a80      	ldr	r2, [pc, #512]	; (a58 <chip_vm+0x578>)
     858:	4413      	add	r3, r2
     85a:	460a      	mov	r2, r1
     85c:	719a      	strb	r2, [r3, #6]
     85e:	4a7e      	ldr	r2, [pc, #504]	; (a58 <chip_vm+0x578>)
     860:	7d7b      	ldrb	r3, [r7, #21]
     862:	7553      	strb	r3, [r2, #21]
     864:	f000 bd30 	b.w	12c8 <chip_vm+0xde8>
     868:	4b7b      	ldr	r3, [pc, #492]	; (a58 <chip_vm+0x578>)
     86a:	7ddb      	ldrb	r3, [r3, #23]
     86c:	f003 030f 	and.w	r3, r3, #15
     870:	2b0e      	cmp	r3, #14
     872:	f200 80eb 	bhi.w	a4c <chip_vm+0x56c>
     876:	a201      	add	r2, pc, #4	; (adr r2, 87c <chip_vm+0x39c>)
     878:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     87c:	000008b9 	.word	0x000008b9
     880:	000008cd 	.word	0x000008cd
     884:	000008ed 	.word	0x000008ed
     888:	0000090d 	.word	0x0000090d
     88c:	0000092d 	.word	0x0000092d
     890:	00000973 	.word	0x00000973
     894:	000009b5 	.word	0x000009b5
     898:	000009e1 	.word	0x000009e1
     89c:	00000a4d 	.word	0x00000a4d
     8a0:	00000a4d 	.word	0x00000a4d
     8a4:	00000a4d 	.word	0x00000a4d
     8a8:	00000a4d 	.word	0x00000a4d
     8ac:	00000a4d 	.word	0x00000a4d
     8b0:	00000a4d 	.word	0x00000a4d
     8b4:	00000a23 	.word	0x00000a23
     8b8:	7dfb      	ldrb	r3, [r7, #23]
     8ba:	7dba      	ldrb	r2, [r7, #22]
     8bc:	4966      	ldr	r1, [pc, #408]	; (a58 <chip_vm+0x578>)
     8be:	440a      	add	r2, r1
     8c0:	7991      	ldrb	r1, [r2, #6]
     8c2:	4a65      	ldr	r2, [pc, #404]	; (a58 <chip_vm+0x578>)
     8c4:	4413      	add	r3, r2
     8c6:	460a      	mov	r2, r1
     8c8:	719a      	strb	r2, [r3, #6]
     8ca:	e0c2      	b.n	a52 <chip_vm+0x572>
     8cc:	7dfb      	ldrb	r3, [r7, #23]
     8ce:	7dfa      	ldrb	r2, [r7, #23]
     8d0:	4961      	ldr	r1, [pc, #388]	; (a58 <chip_vm+0x578>)
     8d2:	440a      	add	r2, r1
     8d4:	7991      	ldrb	r1, [r2, #6]
     8d6:	7dba      	ldrb	r2, [r7, #22]
     8d8:	485f      	ldr	r0, [pc, #380]	; (a58 <chip_vm+0x578>)
     8da:	4402      	add	r2, r0
     8dc:	7992      	ldrb	r2, [r2, #6]
     8de:	430a      	orrs	r2, r1
     8e0:	b2d1      	uxtb	r1, r2
     8e2:	4a5d      	ldr	r2, [pc, #372]	; (a58 <chip_vm+0x578>)
     8e4:	4413      	add	r3, r2
     8e6:	460a      	mov	r2, r1
     8e8:	719a      	strb	r2, [r3, #6]
     8ea:	e0b2      	b.n	a52 <chip_vm+0x572>
     8ec:	7dfb      	ldrb	r3, [r7, #23]
     8ee:	7dfa      	ldrb	r2, [r7, #23]
     8f0:	4959      	ldr	r1, [pc, #356]	; (a58 <chip_vm+0x578>)
     8f2:	440a      	add	r2, r1
     8f4:	7991      	ldrb	r1, [r2, #6]
     8f6:	7dba      	ldrb	r2, [r7, #22]
     8f8:	4857      	ldr	r0, [pc, #348]	; (a58 <chip_vm+0x578>)
     8fa:	4402      	add	r2, r0
     8fc:	7992      	ldrb	r2, [r2, #6]
     8fe:	400a      	ands	r2, r1
     900:	b2d1      	uxtb	r1, r2
     902:	4a55      	ldr	r2, [pc, #340]	; (a58 <chip_vm+0x578>)
     904:	4413      	add	r3, r2
     906:	460a      	mov	r2, r1
     908:	719a      	strb	r2, [r3, #6]
     90a:	e0a2      	b.n	a52 <chip_vm+0x572>
     90c:	7dfb      	ldrb	r3, [r7, #23]
     90e:	7dfa      	ldrb	r2, [r7, #23]
     910:	4951      	ldr	r1, [pc, #324]	; (a58 <chip_vm+0x578>)
     912:	440a      	add	r2, r1
     914:	7991      	ldrb	r1, [r2, #6]
     916:	7dba      	ldrb	r2, [r7, #22]
     918:	484f      	ldr	r0, [pc, #316]	; (a58 <chip_vm+0x578>)
     91a:	4402      	add	r2, r0
     91c:	7992      	ldrb	r2, [r2, #6]
     91e:	404a      	eors	r2, r1
     920:	b2d1      	uxtb	r1, r2
     922:	4a4d      	ldr	r2, [pc, #308]	; (a58 <chip_vm+0x578>)
     924:	4413      	add	r3, r2
     926:	460a      	mov	r2, r1
     928:	719a      	strb	r2, [r3, #6]
     92a:	e092      	b.n	a52 <chip_vm+0x572>
     92c:	7dfb      	ldrb	r3, [r7, #23]
     92e:	4a4a      	ldr	r2, [pc, #296]	; (a58 <chip_vm+0x578>)
     930:	4413      	add	r3, r2
     932:	799b      	ldrb	r3, [r3, #6]
     934:	4619      	mov	r1, r3
     936:	7dbb      	ldrb	r3, [r7, #22]
     938:	4a47      	ldr	r2, [pc, #284]	; (a58 <chip_vm+0x578>)
     93a:	4413      	add	r3, r2
     93c:	799b      	ldrb	r3, [r3, #6]
     93e:	440b      	add	r3, r1
     940:	2bff      	cmp	r3, #255	; 0xff
     942:	bfcc      	ite	gt
     944:	2301      	movgt	r3, #1
     946:	2300      	movle	r3, #0
     948:	b2db      	uxtb	r3, r3
     94a:	757b      	strb	r3, [r7, #21]
     94c:	7dfb      	ldrb	r3, [r7, #23]
     94e:	7dfa      	ldrb	r2, [r7, #23]
     950:	4941      	ldr	r1, [pc, #260]	; (a58 <chip_vm+0x578>)
     952:	440a      	add	r2, r1
     954:	7991      	ldrb	r1, [r2, #6]
     956:	7dba      	ldrb	r2, [r7, #22]
     958:	483f      	ldr	r0, [pc, #252]	; (a58 <chip_vm+0x578>)
     95a:	4402      	add	r2, r0
     95c:	7992      	ldrb	r2, [r2, #6]
     95e:	440a      	add	r2, r1
     960:	b2d1      	uxtb	r1, r2
     962:	4a3d      	ldr	r2, [pc, #244]	; (a58 <chip_vm+0x578>)
     964:	4413      	add	r3, r2
     966:	460a      	mov	r2, r1
     968:	719a      	strb	r2, [r3, #6]
     96a:	4a3b      	ldr	r2, [pc, #236]	; (a58 <chip_vm+0x578>)
     96c:	7d7b      	ldrb	r3, [r7, #21]
     96e:	7553      	strb	r3, [r2, #21]
     970:	e06f      	b.n	a52 <chip_vm+0x572>
     972:	7dfb      	ldrb	r3, [r7, #23]
     974:	4a38      	ldr	r2, [pc, #224]	; (a58 <chip_vm+0x578>)
     976:	4413      	add	r3, r2
     978:	799a      	ldrb	r2, [r3, #6]
     97a:	7dbb      	ldrb	r3, [r7, #22]
     97c:	4936      	ldr	r1, [pc, #216]	; (a58 <chip_vm+0x578>)
     97e:	440b      	add	r3, r1
     980:	799b      	ldrb	r3, [r3, #6]
     982:	429a      	cmp	r2, r3
     984:	bf2c      	ite	cs
     986:	2301      	movcs	r3, #1
     988:	2300      	movcc	r3, #0
     98a:	b2db      	uxtb	r3, r3
     98c:	757b      	strb	r3, [r7, #21]
     98e:	7dfb      	ldrb	r3, [r7, #23]
     990:	7dfa      	ldrb	r2, [r7, #23]
     992:	4931      	ldr	r1, [pc, #196]	; (a58 <chip_vm+0x578>)
     994:	440a      	add	r2, r1
     996:	7991      	ldrb	r1, [r2, #6]
     998:	7dba      	ldrb	r2, [r7, #22]
     99a:	482f      	ldr	r0, [pc, #188]	; (a58 <chip_vm+0x578>)
     99c:	4402      	add	r2, r0
     99e:	7992      	ldrb	r2, [r2, #6]
     9a0:	1a8a      	subs	r2, r1, r2
     9a2:	b2d1      	uxtb	r1, r2
     9a4:	4a2c      	ldr	r2, [pc, #176]	; (a58 <chip_vm+0x578>)
     9a6:	4413      	add	r3, r2
     9a8:	460a      	mov	r2, r1
     9aa:	719a      	strb	r2, [r3, #6]
     9ac:	4a2a      	ldr	r2, [pc, #168]	; (a58 <chip_vm+0x578>)
     9ae:	7d7b      	ldrb	r3, [r7, #21]
     9b0:	7553      	strb	r3, [r2, #21]
     9b2:	e04e      	b.n	a52 <chip_vm+0x572>
     9b4:	7dfb      	ldrb	r3, [r7, #23]
     9b6:	4a28      	ldr	r2, [pc, #160]	; (a58 <chip_vm+0x578>)
     9b8:	4413      	add	r3, r2
     9ba:	799b      	ldrb	r3, [r3, #6]
     9bc:	f003 0301 	and.w	r3, r3, #1
     9c0:	757b      	strb	r3, [r7, #21]
     9c2:	7dfb      	ldrb	r3, [r7, #23]
     9c4:	7dfa      	ldrb	r2, [r7, #23]
     9c6:	4924      	ldr	r1, [pc, #144]	; (a58 <chip_vm+0x578>)
     9c8:	440a      	add	r2, r1
     9ca:	7992      	ldrb	r2, [r2, #6]
     9cc:	0852      	lsrs	r2, r2, #1
     9ce:	b2d1      	uxtb	r1, r2
     9d0:	4a21      	ldr	r2, [pc, #132]	; (a58 <chip_vm+0x578>)
     9d2:	4413      	add	r3, r2
     9d4:	460a      	mov	r2, r1
     9d6:	719a      	strb	r2, [r3, #6]
     9d8:	4a1f      	ldr	r2, [pc, #124]	; (a58 <chip_vm+0x578>)
     9da:	7d7b      	ldrb	r3, [r7, #21]
     9dc:	7553      	strb	r3, [r2, #21]
     9de:	e038      	b.n	a52 <chip_vm+0x572>
     9e0:	7dbb      	ldrb	r3, [r7, #22]
     9e2:	4a1d      	ldr	r2, [pc, #116]	; (a58 <chip_vm+0x578>)
     9e4:	4413      	add	r3, r2
     9e6:	799a      	ldrb	r2, [r3, #6]
     9e8:	7dfb      	ldrb	r3, [r7, #23]
     9ea:	491b      	ldr	r1, [pc, #108]	; (a58 <chip_vm+0x578>)
     9ec:	440b      	add	r3, r1
     9ee:	799b      	ldrb	r3, [r3, #6]
     9f0:	429a      	cmp	r2, r3
     9f2:	bf2c      	ite	cs
     9f4:	2301      	movcs	r3, #1
     9f6:	2300      	movcc	r3, #0
     9f8:	b2db      	uxtb	r3, r3
     9fa:	757b      	strb	r3, [r7, #21]
     9fc:	7dfb      	ldrb	r3, [r7, #23]
     9fe:	7dba      	ldrb	r2, [r7, #22]
     a00:	4915      	ldr	r1, [pc, #84]	; (a58 <chip_vm+0x578>)
     a02:	440a      	add	r2, r1
     a04:	7991      	ldrb	r1, [r2, #6]
     a06:	7dfa      	ldrb	r2, [r7, #23]
     a08:	4813      	ldr	r0, [pc, #76]	; (a58 <chip_vm+0x578>)
     a0a:	4402      	add	r2, r0
     a0c:	7992      	ldrb	r2, [r2, #6]
     a0e:	1a8a      	subs	r2, r1, r2
     a10:	b2d1      	uxtb	r1, r2
     a12:	4a11      	ldr	r2, [pc, #68]	; (a58 <chip_vm+0x578>)
     a14:	4413      	add	r3, r2
     a16:	460a      	mov	r2, r1
     a18:	719a      	strb	r2, [r3, #6]
     a1a:	4a0f      	ldr	r2, [pc, #60]	; (a58 <chip_vm+0x578>)
     a1c:	7d7b      	ldrb	r3, [r7, #21]
     a1e:	7553      	strb	r3, [r2, #21]
     a20:	e017      	b.n	a52 <chip_vm+0x572>
     a22:	7dfb      	ldrb	r3, [r7, #23]
     a24:	4a0c      	ldr	r2, [pc, #48]	; (a58 <chip_vm+0x578>)
     a26:	4413      	add	r3, r2
     a28:	799b      	ldrb	r3, [r3, #6]
     a2a:	09db      	lsrs	r3, r3, #7
     a2c:	757b      	strb	r3, [r7, #21]
     a2e:	7dfb      	ldrb	r3, [r7, #23]
     a30:	7dfa      	ldrb	r2, [r7, #23]
     a32:	4909      	ldr	r1, [pc, #36]	; (a58 <chip_vm+0x578>)
     a34:	440a      	add	r2, r1
     a36:	7992      	ldrb	r2, [r2, #6]
     a38:	0052      	lsls	r2, r2, #1
     a3a:	b2d1      	uxtb	r1, r2
     a3c:	4a06      	ldr	r2, [pc, #24]	; (a58 <chip_vm+0x578>)
     a3e:	4413      	add	r3, r2
     a40:	460a      	mov	r2, r1
     a42:	719a      	strb	r2, [r3, #6]
     a44:	4a04      	ldr	r2, [pc, #16]	; (a58 <chip_vm+0x578>)
     a46:	7d7b      	ldrb	r3, [r7, #21]
     a48:	7553      	strb	r3, [r2, #21]
     a4a:	e002      	b.n	a52 <chip_vm+0x572>
     a4c:	2302      	movs	r3, #2
     a4e:	f000 bc3d 	b.w	12cc <chip_vm+0xdec>
     a52:	f000 bc39 	b.w	12c8 <chip_vm+0xde8>
     a56:	bf00      	nop
     a58:	200001d8 	.word	0x200001d8
     a5c:	2000067c 	.word	0x2000067c
     a60:	4ba9      	ldr	r3, [pc, #676]	; (d08 <chip_vm+0x828>)
     a62:	7ddb      	ldrb	r3, [r3, #23]
     a64:	f003 030f 	and.w	r3, r3, #15
     a68:	2b0f      	cmp	r3, #15
     a6a:	f200 8145 	bhi.w	cf8 <chip_vm+0x818>
     a6e:	a201      	add	r2, pc, #4	; (adr r2, a74 <chip_vm+0x594>)
     a70:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a74:	00000ab5 	.word	0x00000ab5
     a78:	00000ad9 	.word	0x00000ad9
     a7c:	00000af5 	.word	0x00000af5
     a80:	00000b47 	.word	0x00000b47
     a84:	00000b65 	.word	0x00000b65
     a88:	00000b75 	.word	0x00000b75
     a8c:	00000b93 	.word	0x00000b93
     a90:	00000bbb 	.word	0x00000bbb
     a94:	00000bdd 	.word	0x00000bdd
     a98:	00000bf5 	.word	0x00000bf5
     a9c:	00000c0d 	.word	0x00000c0d
     aa0:	00000c37 	.word	0x00000c37
     aa4:	00000c65 	.word	0x00000c65
     aa8:	00000c8f 	.word	0x00000c8f
     aac:	00000cb9 	.word	0x00000cb9
     ab0:	00000ce3 	.word	0x00000ce3
     ab4:	7dfb      	ldrb	r3, [r7, #23]
     ab6:	4a94      	ldr	r2, [pc, #592]	; (d08 <chip_vm+0x828>)
     ab8:	4413      	add	r3, r2
     aba:	799a      	ldrb	r2, [r3, #6]
     abc:	7dbb      	ldrb	r3, [r7, #22]
     abe:	4992      	ldr	r1, [pc, #584]	; (d08 <chip_vm+0x828>)
     ac0:	440b      	add	r3, r1
     ac2:	799b      	ldrb	r3, [r3, #6]
     ac4:	429a      	cmp	r2, r3
     ac6:	f000 8119 	beq.w	cfc <chip_vm+0x81c>
     aca:	4b8f      	ldr	r3, [pc, #572]	; (d08 <chip_vm+0x828>)
     acc:	881b      	ldrh	r3, [r3, #0]
     ace:	3302      	adds	r3, #2
     ad0:	b29a      	uxth	r2, r3
     ad2:	4b8d      	ldr	r3, [pc, #564]	; (d08 <chip_vm+0x828>)
     ad4:	801a      	strh	r2, [r3, #0]
     ad6:	e111      	b.n	cfc <chip_vm+0x81c>
     ad8:	7dfb      	ldrb	r3, [r7, #23]
     ada:	4a8b      	ldr	r2, [pc, #556]	; (d08 <chip_vm+0x828>)
     adc:	4413      	add	r3, r2
     ade:	799b      	ldrb	r3, [r3, #6]
     ae0:	4618      	mov	r0, r3
     ae2:	7dbb      	ldrb	r3, [r7, #22]
     ae4:	4a88      	ldr	r2, [pc, #544]	; (d08 <chip_vm+0x828>)
     ae6:	4413      	add	r3, r2
     ae8:	799b      	ldrb	r3, [r3, #6]
     aea:	2200      	movs	r2, #0
     aec:	4619      	mov	r1, r3
     aee:	f003 fc27 	bl	4340 <key_tone>
     af2:	e108      	b.n	d06 <chip_vm+0x826>
     af4:	2002      	movs	r0, #2
     af6:	f003 fe71 	bl	47dc <select_font>
     afa:	7dfb      	ldrb	r3, [r7, #23]
     afc:	4a82      	ldr	r2, [pc, #520]	; (d08 <chip_vm+0x828>)
     afe:	4413      	add	r3, r2
     b00:	7998      	ldrb	r0, [r3, #6]
     b02:	7dbb      	ldrb	r3, [r7, #22]
     b04:	4a80      	ldr	r2, [pc, #512]	; (d08 <chip_vm+0x828>)
     b06:	4413      	add	r3, r2
     b08:	799b      	ldrb	r3, [r3, #6]
     b0a:	4619      	mov	r1, r3
     b0c:	f003 ff96 	bl	4a3c <set_cursor>
     b10:	4b7d      	ldr	r3, [pc, #500]	; (d08 <chip_vm+0x828>)
     b12:	885b      	ldrh	r3, [r3, #2]
     b14:	461a      	mov	r2, r3
     b16:	4b7d      	ldr	r3, [pc, #500]	; (d0c <chip_vm+0x82c>)
     b18:	4413      	add	r3, r2
     b1a:	4618      	mov	r0, r3
     b1c:	f003 ffba 	bl	4a94 <print>
     b20:	4b79      	ldr	r3, [pc, #484]	; (d08 <chip_vm+0x828>)
     b22:	885c      	ldrh	r4, [r3, #2]
     b24:	4b78      	ldr	r3, [pc, #480]	; (d08 <chip_vm+0x828>)
     b26:	885b      	ldrh	r3, [r3, #2]
     b28:	461a      	mov	r2, r3
     b2a:	4b78      	ldr	r3, [pc, #480]	; (d0c <chip_vm+0x82c>)
     b2c:	4413      	add	r3, r2
     b2e:	4618      	mov	r0, r3
     b30:	f001 f959 	bl	1de6 <strlen>
     b34:	4603      	mov	r3, r0
     b36:	b29b      	uxth	r3, r3
     b38:	4423      	add	r3, r4
     b3a:	b29b      	uxth	r3, r3
     b3c:	3301      	adds	r3, #1
     b3e:	b29a      	uxth	r2, r3
     b40:	4b71      	ldr	r3, [pc, #452]	; (d08 <chip_vm+0x828>)
     b42:	805a      	strh	r2, [r3, #2]
     b44:	e0df      	b.n	d06 <chip_vm+0x826>
     b46:	7dfb      	ldrb	r3, [r7, #23]
     b48:	4a6f      	ldr	r2, [pc, #444]	; (d08 <chip_vm+0x828>)
     b4a:	4413      	add	r3, r2
     b4c:	799b      	ldrb	r3, [r3, #6]
     b4e:	4618      	mov	r0, r3
     b50:	7dbb      	ldrb	r3, [r7, #22]
     b52:	4a6d      	ldr	r2, [pc, #436]	; (d08 <chip_vm+0x828>)
     b54:	4413      	add	r3, r2
     b56:	799b      	ldrb	r3, [r3, #6]
     b58:	4619      	mov	r1, r3
     b5a:	2303      	movs	r3, #3
     b5c:	2200      	movs	r2, #0
     b5e:	f001 faa9 	bl	20b4 <gfx_blit>
     b62:	e0d0      	b.n	d06 <chip_vm+0x826>
     b64:	7dfb      	ldrb	r3, [r7, #23]
     b66:	011a      	lsls	r2, r3, #4
     b68:	7dbb      	ldrb	r3, [r7, #22]
     b6a:	4413      	add	r3, r2
     b6c:	4618      	mov	r0, r3
     b6e:	f003 fc09 	bl	4384 <noise>
     b72:	e0c8      	b.n	d06 <chip_vm+0x826>
     b74:	7dfb      	ldrb	r3, [r7, #23]
     b76:	4a64      	ldr	r2, [pc, #400]	; (d08 <chip_vm+0x828>)
     b78:	4413      	add	r3, r2
     b7a:	799b      	ldrb	r3, [r3, #6]
     b7c:	4618      	mov	r0, r3
     b7e:	7dbb      	ldrb	r3, [r7, #22]
     b80:	4a61      	ldr	r2, [pc, #388]	; (d08 <chip_vm+0x828>)
     b82:	4413      	add	r3, r2
     b84:	799b      	ldrb	r3, [r3, #6]
     b86:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     b8a:	4619      	mov	r1, r3
     b8c:	f003 fbd8 	bl	4340 <key_tone>
     b90:	e0b9      	b.n	d06 <chip_vm+0x826>
     b92:	4b5d      	ldr	r3, [pc, #372]	; (d08 <chip_vm+0x828>)
     b94:	791b      	ldrb	r3, [r3, #4]
     b96:	3301      	adds	r3, #1
     b98:	b2da      	uxtb	r2, r3
     b9a:	4b5b      	ldr	r3, [pc, #364]	; (d08 <chip_vm+0x828>)
     b9c:	711a      	strb	r2, [r3, #4]
     b9e:	4b5a      	ldr	r3, [pc, #360]	; (d08 <chip_vm+0x828>)
     ba0:	791b      	ldrb	r3, [r3, #4]
     ba2:	4618      	mov	r0, r3
     ba4:	7dfb      	ldrb	r3, [r7, #23]
     ba6:	4a58      	ldr	r2, [pc, #352]	; (d08 <chip_vm+0x828>)
     ba8:	4413      	add	r3, r2
     baa:	799b      	ldrb	r3, [r3, #6]
     bac:	b299      	uxth	r1, r3
     bae:	4a56      	ldr	r2, [pc, #344]	; (d08 <chip_vm+0x828>)
     bb0:	f100 030c 	add.w	r3, r0, #12
     bb4:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     bb8:	e0a5      	b.n	d06 <chip_vm+0x826>
     bba:	7dfa      	ldrb	r2, [r7, #23]
     bbc:	4b52      	ldr	r3, [pc, #328]	; (d08 <chip_vm+0x828>)
     bbe:	791b      	ldrb	r3, [r3, #4]
     bc0:	1e59      	subs	r1, r3, #1
     bc2:	b2c8      	uxtb	r0, r1
     bc4:	4950      	ldr	r1, [pc, #320]	; (d08 <chip_vm+0x828>)
     bc6:	7108      	strb	r0, [r1, #4]
     bc8:	494f      	ldr	r1, [pc, #316]	; (d08 <chip_vm+0x828>)
     bca:	330c      	adds	r3, #12
     bcc:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     bd0:	b2d9      	uxtb	r1, r3
     bd2:	4b4d      	ldr	r3, [pc, #308]	; (d08 <chip_vm+0x828>)
     bd4:	4413      	add	r3, r2
     bd6:	460a      	mov	r2, r1
     bd8:	719a      	strb	r2, [r3, #6]
     bda:	e094      	b.n	d06 <chip_vm+0x826>
     bdc:	f004 fc04 	bl	53e8 <get_video_params>
     be0:	6138      	str	r0, [r7, #16]
     be2:	7dfb      	ldrb	r3, [r7, #23]
     be4:	693a      	ldr	r2, [r7, #16]
     be6:	8992      	ldrh	r2, [r2, #12]
     be8:	b2d1      	uxtb	r1, r2
     bea:	4a47      	ldr	r2, [pc, #284]	; (d08 <chip_vm+0x828>)
     bec:	4413      	add	r3, r2
     bee:	460a      	mov	r2, r1
     bf0:	719a      	strb	r2, [r3, #6]
     bf2:	e088      	b.n	d06 <chip_vm+0x826>
     bf4:	f004 fbf8 	bl	53e8 <get_video_params>
     bf8:	60f8      	str	r0, [r7, #12]
     bfa:	7dfb      	ldrb	r3, [r7, #23]
     bfc:	68fa      	ldr	r2, [r7, #12]
     bfe:	89d2      	ldrh	r2, [r2, #14]
     c00:	b2d1      	uxtb	r1, r2
     c02:	4a41      	ldr	r2, [pc, #260]	; (d08 <chip_vm+0x828>)
     c04:	4413      	add	r3, r2
     c06:	460a      	mov	r2, r1
     c08:	719a      	strb	r2, [r3, #6]
     c0a:	e07c      	b.n	d06 <chip_vm+0x826>
     c0c:	7dfb      	ldrb	r3, [r7, #23]
     c0e:	7dfa      	ldrb	r2, [r7, #23]
     c10:	493d      	ldr	r1, [pc, #244]	; (d08 <chip_vm+0x828>)
     c12:	440a      	add	r2, r1
     c14:	7992      	ldrb	r2, [r2, #6]
     c16:	b251      	sxtb	r1, r2
     c18:	7dba      	ldrb	r2, [r7, #22]
     c1a:	f002 0207 	and.w	r2, r2, #7
     c1e:	2001      	movs	r0, #1
     c20:	fa00 f202 	lsl.w	r2, r0, r2
     c24:	b252      	sxtb	r2, r2
     c26:	430a      	orrs	r2, r1
     c28:	b252      	sxtb	r2, r2
     c2a:	b2d1      	uxtb	r1, r2
     c2c:	4a36      	ldr	r2, [pc, #216]	; (d08 <chip_vm+0x828>)
     c2e:	4413      	add	r3, r2
     c30:	460a      	mov	r2, r1
     c32:	719a      	strb	r2, [r3, #6]
     c34:	e067      	b.n	d06 <chip_vm+0x826>
     c36:	7dfb      	ldrb	r3, [r7, #23]
     c38:	7dfa      	ldrb	r2, [r7, #23]
     c3a:	4933      	ldr	r1, [pc, #204]	; (d08 <chip_vm+0x828>)
     c3c:	440a      	add	r2, r1
     c3e:	7992      	ldrb	r2, [r2, #6]
     c40:	b251      	sxtb	r1, r2
     c42:	7dba      	ldrb	r2, [r7, #22]
     c44:	f002 0207 	and.w	r2, r2, #7
     c48:	2001      	movs	r0, #1
     c4a:	fa00 f202 	lsl.w	r2, r0, r2
     c4e:	b252      	sxtb	r2, r2
     c50:	43d2      	mvns	r2, r2
     c52:	b252      	sxtb	r2, r2
     c54:	400a      	ands	r2, r1
     c56:	b252      	sxtb	r2, r2
     c58:	b2d1      	uxtb	r1, r2
     c5a:	4a2b      	ldr	r2, [pc, #172]	; (d08 <chip_vm+0x828>)
     c5c:	4413      	add	r3, r2
     c5e:	460a      	mov	r2, r1
     c60:	719a      	strb	r2, [r3, #6]
     c62:	e050      	b.n	d06 <chip_vm+0x826>
     c64:	7dfb      	ldrb	r3, [r7, #23]
     c66:	7dfa      	ldrb	r2, [r7, #23]
     c68:	4927      	ldr	r1, [pc, #156]	; (d08 <chip_vm+0x828>)
     c6a:	440a      	add	r2, r1
     c6c:	7992      	ldrb	r2, [r2, #6]
     c6e:	b251      	sxtb	r1, r2
     c70:	7dba      	ldrb	r2, [r7, #22]
     c72:	f002 0207 	and.w	r2, r2, #7
     c76:	2001      	movs	r0, #1
     c78:	fa00 f202 	lsl.w	r2, r0, r2
     c7c:	b252      	sxtb	r2, r2
     c7e:	404a      	eors	r2, r1
     c80:	b252      	sxtb	r2, r2
     c82:	b2d1      	uxtb	r1, r2
     c84:	4a20      	ldr	r2, [pc, #128]	; (d08 <chip_vm+0x828>)
     c86:	4413      	add	r3, r2
     c88:	460a      	mov	r2, r1
     c8a:	719a      	strb	r2, [r3, #6]
     c8c:	e03b      	b.n	d06 <chip_vm+0x826>
     c8e:	7dfb      	ldrb	r3, [r7, #23]
     c90:	4a1d      	ldr	r2, [pc, #116]	; (d08 <chip_vm+0x828>)
     c92:	4413      	add	r3, r2
     c94:	799b      	ldrb	r3, [r3, #6]
     c96:	461a      	mov	r2, r3
     c98:	7dbb      	ldrb	r3, [r7, #22]
     c9a:	f003 0307 	and.w	r3, r3, #7
     c9e:	fa42 f303 	asr.w	r3, r2, r3
     ca2:	f003 0301 	and.w	r3, r3, #1
     ca6:	2b00      	cmp	r3, #0
     ca8:	d02a      	beq.n	d00 <chip_vm+0x820>
     caa:	4b17      	ldr	r3, [pc, #92]	; (d08 <chip_vm+0x828>)
     cac:	881b      	ldrh	r3, [r3, #0]
     cae:	3302      	adds	r3, #2
     cb0:	b29a      	uxth	r2, r3
     cb2:	4b15      	ldr	r3, [pc, #84]	; (d08 <chip_vm+0x828>)
     cb4:	801a      	strh	r2, [r3, #0]
     cb6:	e023      	b.n	d00 <chip_vm+0x820>
     cb8:	7dfb      	ldrb	r3, [r7, #23]
     cba:	4a13      	ldr	r2, [pc, #76]	; (d08 <chip_vm+0x828>)
     cbc:	4413      	add	r3, r2
     cbe:	799b      	ldrb	r3, [r3, #6]
     cc0:	461a      	mov	r2, r3
     cc2:	7dbb      	ldrb	r3, [r7, #22]
     cc4:	f003 0307 	and.w	r3, r3, #7
     cc8:	fa42 f303 	asr.w	r3, r2, r3
     ccc:	f003 0301 	and.w	r3, r3, #1
     cd0:	2b00      	cmp	r3, #0
     cd2:	d117      	bne.n	d04 <chip_vm+0x824>
     cd4:	4b0c      	ldr	r3, [pc, #48]	; (d08 <chip_vm+0x828>)
     cd6:	881b      	ldrh	r3, [r3, #0]
     cd8:	3302      	adds	r3, #2
     cda:	b29a      	uxth	r2, r3
     cdc:	4b0a      	ldr	r3, [pc, #40]	; (d08 <chip_vm+0x828>)
     cde:	801a      	strh	r2, [r3, #0]
     ce0:	e010      	b.n	d04 <chip_vm+0x824>
     ce2:	7dfb      	ldrb	r3, [r7, #23]
     ce4:	7dba      	ldrb	r2, [r7, #22]
     ce6:	4611      	mov	r1, r2
     ce8:	4618      	mov	r0, r3
     cea:	f001 fc1b 	bl	2524 <gfx_get_pixel>
     cee:	4603      	mov	r3, r0
     cf0:	461a      	mov	r2, r3
     cf2:	4b05      	ldr	r3, [pc, #20]	; (d08 <chip_vm+0x828>)
     cf4:	755a      	strb	r2, [r3, #21]
     cf6:	e006      	b.n	d06 <chip_vm+0x826>
     cf8:	2302      	movs	r3, #2
     cfa:	e2e7      	b.n	12cc <chip_vm+0xdec>
     cfc:	bf00      	nop
     cfe:	e2e3      	b.n	12c8 <chip_vm+0xde8>
     d00:	bf00      	nop
     d02:	e2e1      	b.n	12c8 <chip_vm+0xde8>
     d04:	bf00      	nop
     d06:	e2df      	b.n	12c8 <chip_vm+0xde8>
     d08:	200001d8 	.word	0x200001d8
     d0c:	2000067c 	.word	0x2000067c
     d10:	4b6d      	ldr	r3, [pc, #436]	; (ec8 <chip_vm+0x9e8>)
     d12:	7d9b      	ldrb	r3, [r3, #22]
     d14:	021b      	lsls	r3, r3, #8
     d16:	4a6c      	ldr	r2, [pc, #432]	; (ec8 <chip_vm+0x9e8>)
     d18:	7dd2      	ldrb	r2, [r2, #23]
     d1a:	4313      	orrs	r3, r2
     d1c:	005b      	lsls	r3, r3, #1
     d1e:	b29b      	uxth	r3, r3
     d20:	f3c3 030c 	ubfx	r3, r3, #0, #13
     d24:	b29a      	uxth	r2, r3
     d26:	4b68      	ldr	r3, [pc, #416]	; (ec8 <chip_vm+0x9e8>)
     d28:	805a      	strh	r2, [r3, #2]
     d2a:	4b67      	ldr	r3, [pc, #412]	; (ec8 <chip_vm+0x9e8>)
     d2c:	2200      	movs	r2, #0
     d2e:	715a      	strb	r2, [r3, #5]
     d30:	e2ca      	b.n	12c8 <chip_vm+0xde8>
     d32:	4b65      	ldr	r3, [pc, #404]	; (ec8 <chip_vm+0x9e8>)
     d34:	799b      	ldrb	r3, [r3, #6]
     d36:	b29b      	uxth	r3, r3
     d38:	005b      	lsls	r3, r3, #1
     d3a:	b29a      	uxth	r2, r3
     d3c:	4b62      	ldr	r3, [pc, #392]	; (ec8 <chip_vm+0x9e8>)
     d3e:	7d9b      	ldrb	r3, [r3, #22]
     d40:	021b      	lsls	r3, r3, #8
     d42:	4961      	ldr	r1, [pc, #388]	; (ec8 <chip_vm+0x9e8>)
     d44:	7dc9      	ldrb	r1, [r1, #23]
     d46:	430b      	orrs	r3, r1
     d48:	005b      	lsls	r3, r3, #1
     d4a:	b29b      	uxth	r3, r3
     d4c:	f3c3 030c 	ubfx	r3, r3, #0, #13
     d50:	b29b      	uxth	r3, r3
     d52:	4413      	add	r3, r2
     d54:	b29a      	uxth	r2, r3
     d56:	4b5c      	ldr	r3, [pc, #368]	; (ec8 <chip_vm+0x9e8>)
     d58:	801a      	strh	r2, [r3, #0]
     d5a:	e2b5      	b.n	12c8 <chip_vm+0xde8>
     d5c:	7dfc      	ldrb	r4, [r7, #23]
     d5e:	f7ff fb9d 	bl	49c <rand>
     d62:	4603      	mov	r3, r0
     d64:	b25a      	sxtb	r2, r3
     d66:	4b58      	ldr	r3, [pc, #352]	; (ec8 <chip_vm+0x9e8>)
     d68:	7ddb      	ldrb	r3, [r3, #23]
     d6a:	b25b      	sxtb	r3, r3
     d6c:	4013      	ands	r3, r2
     d6e:	b25b      	sxtb	r3, r3
     d70:	b2da      	uxtb	r2, r3
     d72:	4b55      	ldr	r3, [pc, #340]	; (ec8 <chip_vm+0x9e8>)
     d74:	4423      	add	r3, r4
     d76:	719a      	strb	r2, [r3, #6]
     d78:	e2a6      	b.n	12c8 <chip_vm+0xde8>
     d7a:	4b53      	ldr	r3, [pc, #332]	; (ec8 <chip_vm+0x9e8>)
     d7c:	7ddb      	ldrb	r3, [r3, #23]
     d7e:	f003 030f 	and.w	r3, r3, #15
     d82:	757b      	strb	r3, [r7, #21]
     d84:	7d7b      	ldrb	r3, [r7, #21]
     d86:	2b00      	cmp	r3, #0
     d88:	d136      	bne.n	df8 <chip_vm+0x918>
     d8a:	4b4f      	ldr	r3, [pc, #316]	; (ec8 <chip_vm+0x9e8>)
     d8c:	795b      	ldrb	r3, [r3, #5]
     d8e:	2b00      	cmp	r3, #0
     d90:	d11a      	bne.n	dc8 <chip_vm+0x8e8>
     d92:	7dfb      	ldrb	r3, [r7, #23]
     d94:	4a4c      	ldr	r2, [pc, #304]	; (ec8 <chip_vm+0x9e8>)
     d96:	4413      	add	r3, r2
     d98:	799b      	ldrb	r3, [r3, #6]
     d9a:	b25b      	sxtb	r3, r3
     d9c:	4618      	mov	r0, r3
     d9e:	7dbb      	ldrb	r3, [r7, #22]
     da0:	4a49      	ldr	r2, [pc, #292]	; (ec8 <chip_vm+0x9e8>)
     da2:	4413      	add	r3, r2
     da4:	799b      	ldrb	r3, [r3, #6]
     da6:	b25b      	sxtb	r3, r3
     da8:	4619      	mov	r1, r3
     daa:	4b47      	ldr	r3, [pc, #284]	; (ec8 <chip_vm+0x9e8>)
     dac:	885b      	ldrh	r3, [r3, #2]
     dae:	461a      	mov	r2, r3
     db0:	4b46      	ldr	r3, [pc, #280]	; (ecc <chip_vm+0x9ec>)
     db2:	4413      	add	r3, r2
     db4:	9300      	str	r3, [sp, #0]
     db6:	2310      	movs	r3, #16
     db8:	2210      	movs	r2, #16
     dba:	f001 fbeb 	bl	2594 <gfx_sprite>
     dbe:	4603      	mov	r3, r0
     dc0:	b2da      	uxtb	r2, r3
     dc2:	4b41      	ldr	r3, [pc, #260]	; (ec8 <chip_vm+0x9e8>)
     dc4:	755a      	strb	r2, [r3, #21]
     dc6:	e27f      	b.n	12c8 <chip_vm+0xde8>
     dc8:	7dfb      	ldrb	r3, [r7, #23]
     dca:	4a3f      	ldr	r2, [pc, #252]	; (ec8 <chip_vm+0x9e8>)
     dcc:	4413      	add	r3, r2
     dce:	799b      	ldrb	r3, [r3, #6]
     dd0:	b25b      	sxtb	r3, r3
     dd2:	4618      	mov	r0, r3
     dd4:	7dbb      	ldrb	r3, [r7, #22]
     dd6:	4a3c      	ldr	r2, [pc, #240]	; (ec8 <chip_vm+0x9e8>)
     dd8:	4413      	add	r3, r2
     dda:	799b      	ldrb	r3, [r3, #6]
     ddc:	b25b      	sxtb	r3, r3
     dde:	4619      	mov	r1, r3
     de0:	4b39      	ldr	r3, [pc, #228]	; (ec8 <chip_vm+0x9e8>)
     de2:	885b      	ldrh	r3, [r3, #2]
     de4:	9300      	str	r3, [sp, #0]
     de6:	2310      	movs	r3, #16
     de8:	2210      	movs	r2, #16
     dea:	f001 fbd3 	bl	2594 <gfx_sprite>
     dee:	4603      	mov	r3, r0
     df0:	b2da      	uxtb	r2, r3
     df2:	4b35      	ldr	r3, [pc, #212]	; (ec8 <chip_vm+0x9e8>)
     df4:	755a      	strb	r2, [r3, #21]
     df6:	e267      	b.n	12c8 <chip_vm+0xde8>
     df8:	4b33      	ldr	r3, [pc, #204]	; (ec8 <chip_vm+0x9e8>)
     dfa:	795b      	ldrb	r3, [r3, #5]
     dfc:	2b00      	cmp	r3, #0
     dfe:	d11b      	bne.n	e38 <chip_vm+0x958>
     e00:	7dfb      	ldrb	r3, [r7, #23]
     e02:	4a31      	ldr	r2, [pc, #196]	; (ec8 <chip_vm+0x9e8>)
     e04:	4413      	add	r3, r2
     e06:	799b      	ldrb	r3, [r3, #6]
     e08:	b25b      	sxtb	r3, r3
     e0a:	4618      	mov	r0, r3
     e0c:	7dbb      	ldrb	r3, [r7, #22]
     e0e:	4a2e      	ldr	r2, [pc, #184]	; (ec8 <chip_vm+0x9e8>)
     e10:	4413      	add	r3, r2
     e12:	799b      	ldrb	r3, [r3, #6]
     e14:	b25b      	sxtb	r3, r3
     e16:	4619      	mov	r1, r3
     e18:	4b2b      	ldr	r3, [pc, #172]	; (ec8 <chip_vm+0x9e8>)
     e1a:	885b      	ldrh	r3, [r3, #2]
     e1c:	461a      	mov	r2, r3
     e1e:	4b2b      	ldr	r3, [pc, #172]	; (ecc <chip_vm+0x9ec>)
     e20:	4413      	add	r3, r2
     e22:	7d7a      	ldrb	r2, [r7, #21]
     e24:	9300      	str	r3, [sp, #0]
     e26:	4613      	mov	r3, r2
     e28:	2208      	movs	r2, #8
     e2a:	f001 fbb3 	bl	2594 <gfx_sprite>
     e2e:	4603      	mov	r3, r0
     e30:	b2da      	uxtb	r2, r3
     e32:	4b25      	ldr	r3, [pc, #148]	; (ec8 <chip_vm+0x9e8>)
     e34:	755a      	strb	r2, [r3, #21]
     e36:	e247      	b.n	12c8 <chip_vm+0xde8>
     e38:	7dfb      	ldrb	r3, [r7, #23]
     e3a:	4a23      	ldr	r2, [pc, #140]	; (ec8 <chip_vm+0x9e8>)
     e3c:	4413      	add	r3, r2
     e3e:	799b      	ldrb	r3, [r3, #6]
     e40:	b25b      	sxtb	r3, r3
     e42:	4618      	mov	r0, r3
     e44:	7dbb      	ldrb	r3, [r7, #22]
     e46:	4a20      	ldr	r2, [pc, #128]	; (ec8 <chip_vm+0x9e8>)
     e48:	4413      	add	r3, r2
     e4a:	799b      	ldrb	r3, [r3, #6]
     e4c:	b25b      	sxtb	r3, r3
     e4e:	4619      	mov	r1, r3
     e50:	4b1d      	ldr	r3, [pc, #116]	; (ec8 <chip_vm+0x9e8>)
     e52:	885b      	ldrh	r3, [r3, #2]
     e54:	461a      	mov	r2, r3
     e56:	7d7b      	ldrb	r3, [r7, #21]
     e58:	9200      	str	r2, [sp, #0]
     e5a:	2208      	movs	r2, #8
     e5c:	f001 fb9a 	bl	2594 <gfx_sprite>
     e60:	4603      	mov	r3, r0
     e62:	b2da      	uxtb	r2, r3
     e64:	4b18      	ldr	r3, [pc, #96]	; (ec8 <chip_vm+0x9e8>)
     e66:	755a      	strb	r2, [r3, #21]
     e68:	e22e      	b.n	12c8 <chip_vm+0xde8>
     e6a:	4b17      	ldr	r3, [pc, #92]	; (ec8 <chip_vm+0x9e8>)
     e6c:	7ddb      	ldrb	r3, [r3, #23]
     e6e:	2b9e      	cmp	r3, #158	; 0x9e
     e70:	d002      	beq.n	e78 <chip_vm+0x998>
     e72:	2ba1      	cmp	r3, #161	; 0xa1
     e74:	d011      	beq.n	e9a <chip_vm+0x9ba>
     e76:	e021      	b.n	ebc <chip_vm+0x9dc>
     e78:	7dfb      	ldrb	r3, [r7, #23]
     e7a:	4a13      	ldr	r2, [pc, #76]	; (ec8 <chip_vm+0x9e8>)
     e7c:	4413      	add	r3, r2
     e7e:	799b      	ldrb	r3, [r3, #6]
     e80:	4618      	mov	r0, r3
     e82:	f000 fd9f 	bl	19c4 <btn_query_down>
     e86:	4603      	mov	r3, r0
     e88:	2b00      	cmp	r3, #0
     e8a:	d019      	beq.n	ec0 <chip_vm+0x9e0>
     e8c:	4b0e      	ldr	r3, [pc, #56]	; (ec8 <chip_vm+0x9e8>)
     e8e:	881b      	ldrh	r3, [r3, #0]
     e90:	3302      	adds	r3, #2
     e92:	b29a      	uxth	r2, r3
     e94:	4b0c      	ldr	r3, [pc, #48]	; (ec8 <chip_vm+0x9e8>)
     e96:	801a      	strh	r2, [r3, #0]
     e98:	e012      	b.n	ec0 <chip_vm+0x9e0>
     e9a:	7dfb      	ldrb	r3, [r7, #23]
     e9c:	4a0a      	ldr	r2, [pc, #40]	; (ec8 <chip_vm+0x9e8>)
     e9e:	4413      	add	r3, r2
     ea0:	799b      	ldrb	r3, [r3, #6]
     ea2:	4618      	mov	r0, r3
     ea4:	f000 fd8e 	bl	19c4 <btn_query_down>
     ea8:	4603      	mov	r3, r0
     eaa:	2b00      	cmp	r3, #0
     eac:	d10a      	bne.n	ec4 <chip_vm+0x9e4>
     eae:	4b06      	ldr	r3, [pc, #24]	; (ec8 <chip_vm+0x9e8>)
     eb0:	881b      	ldrh	r3, [r3, #0]
     eb2:	3302      	adds	r3, #2
     eb4:	b29a      	uxth	r2, r3
     eb6:	4b04      	ldr	r3, [pc, #16]	; (ec8 <chip_vm+0x9e8>)
     eb8:	801a      	strh	r2, [r3, #0]
     eba:	e003      	b.n	ec4 <chip_vm+0x9e4>
     ebc:	2302      	movs	r3, #2
     ebe:	e205      	b.n	12cc <chip_vm+0xdec>
     ec0:	bf00      	nop
     ec2:	e201      	b.n	12c8 <chip_vm+0xde8>
     ec4:	bf00      	nop
     ec6:	e1ff      	b.n	12c8 <chip_vm+0xde8>
     ec8:	200001d8 	.word	0x200001d8
     ecc:	2000067c 	.word	0x2000067c
     ed0:	4bc2      	ldr	r3, [pc, #776]	; (11dc <chip_vm+0xcfc>)
     ed2:	7ddb      	ldrb	r3, [r3, #23]
     ed4:	3b01      	subs	r3, #1
     ed6:	2b84      	cmp	r3, #132	; 0x84
     ed8:	f200 81ec 	bhi.w	12b4 <chip_vm+0xdd4>
     edc:	a201      	add	r2, pc, #4	; (adr r2, ee4 <chip_vm+0xa04>)
     ede:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     ee2:	bf00      	nop
     ee4:	000010f9 	.word	0x000010f9
     ee8:	00001109 	.word	0x00001109
     eec:	000012b5 	.word	0x000012b5
     ef0:	000012b5 	.word	0x000012b5
     ef4:	000012b5 	.word	0x000012b5
     ef8:	000012b5 	.word	0x000012b5
     efc:	0000111b 	.word	0x0000111b
     f00:	000012b5 	.word	0x000012b5
     f04:	000012b5 	.word	0x000012b5
     f08:	0000112f 	.word	0x0000112f
     f0c:	000012b5 	.word	0x000012b5
     f10:	000012b5 	.word	0x000012b5
     f14:	000012b5 	.word	0x000012b5
     f18:	000012b5 	.word	0x000012b5
     f1c:	000012b5 	.word	0x000012b5
     f20:	000012b5 	.word	0x000012b5
     f24:	000012b5 	.word	0x000012b5
     f28:	000012b5 	.word	0x000012b5
     f2c:	000012b5 	.word	0x000012b5
     f30:	000012b5 	.word	0x000012b5
     f34:	00001141 	.word	0x00001141
     f38:	000012b5 	.word	0x000012b5
     f3c:	000012b5 	.word	0x000012b5
     f40:	00001151 	.word	0x00001151
     f44:	000012b5 	.word	0x000012b5
     f48:	000012b5 	.word	0x000012b5
     f4c:	000012b5 	.word	0x000012b5
     f50:	000012b5 	.word	0x000012b5
     f54:	000012b5 	.word	0x000012b5
     f58:	00001167 	.word	0x00001167
     f5c:	000012b5 	.word	0x000012b5
     f60:	000012b5 	.word	0x000012b5
     f64:	000012b5 	.word	0x000012b5
     f68:	000012b5 	.word	0x000012b5
     f6c:	000012b5 	.word	0x000012b5
     f70:	000012b5 	.word	0x000012b5
     f74:	000012b5 	.word	0x000012b5
     f78:	000012b5 	.word	0x000012b5
     f7c:	000012b5 	.word	0x000012b5
     f80:	000012b5 	.word	0x000012b5
     f84:	0000117f 	.word	0x0000117f
     f88:	000012b5 	.word	0x000012b5
     f8c:	000012b5 	.word	0x000012b5
     f90:	000012b5 	.word	0x000012b5
     f94:	000012b5 	.word	0x000012b5
     f98:	000012b5 	.word	0x000012b5
     f9c:	000012b5 	.word	0x000012b5
     fa0:	000011ad 	.word	0x000011ad
     fa4:	000012b5 	.word	0x000012b5
     fa8:	000012b5 	.word	0x000012b5
     fac:	000011f5 	.word	0x000011f5
     fb0:	000012b5 	.word	0x000012b5
     fb4:	000012b5 	.word	0x000012b5
     fb8:	000012b5 	.word	0x000012b5
     fbc:	000012b5 	.word	0x000012b5
     fc0:	000012b5 	.word	0x000012b5
     fc4:	000012b5 	.word	0x000012b5
     fc8:	000012b5 	.word	0x000012b5
     fcc:	000012b5 	.word	0x000012b5
     fd0:	000012b5 	.word	0x000012b5
     fd4:	000012b5 	.word	0x000012b5
     fd8:	000012b5 	.word	0x000012b5
     fdc:	000012b5 	.word	0x000012b5
     fe0:	000012b5 	.word	0x000012b5
     fe4:	000012b5 	.word	0x000012b5
     fe8:	000012b5 	.word	0x000012b5
     fec:	000012b5 	.word	0x000012b5
     ff0:	000012b5 	.word	0x000012b5
     ff4:	000012b5 	.word	0x000012b5
     ff8:	000012b5 	.word	0x000012b5
     ffc:	000012b5 	.word	0x000012b5
    1000:	000012b5 	.word	0x000012b5
    1004:	000012b5 	.word	0x000012b5
    1008:	000012b5 	.word	0x000012b5
    100c:	000012b5 	.word	0x000012b5
    1010:	000012b5 	.word	0x000012b5
    1014:	000012b5 	.word	0x000012b5
    1018:	000012b5 	.word	0x000012b5
    101c:	000012b5 	.word	0x000012b5
    1020:	000012b5 	.word	0x000012b5
    1024:	000012b5 	.word	0x000012b5
    1028:	000012b5 	.word	0x000012b5
    102c:	000012b5 	.word	0x000012b5
    1030:	000012b5 	.word	0x000012b5
    1034:	00001265 	.word	0x00001265
    1038:	000012b5 	.word	0x000012b5
    103c:	000012b5 	.word	0x000012b5
    1040:	000012b5 	.word	0x000012b5
    1044:	000012b5 	.word	0x000012b5
    1048:	000012b5 	.word	0x000012b5
    104c:	000012b5 	.word	0x000012b5
    1050:	000012b5 	.word	0x000012b5
    1054:	000012b5 	.word	0x000012b5
    1058:	000012b5 	.word	0x000012b5
    105c:	000012b5 	.word	0x000012b5
    1060:	000012b5 	.word	0x000012b5
    1064:	000012b5 	.word	0x000012b5
    1068:	000012b5 	.word	0x000012b5
    106c:	000012b5 	.word	0x000012b5
    1070:	000012b5 	.word	0x000012b5
    1074:	0000127d 	.word	0x0000127d
    1078:	000012b5 	.word	0x000012b5
    107c:	000012b5 	.word	0x000012b5
    1080:	000012b5 	.word	0x000012b5
    1084:	000012b5 	.word	0x000012b5
    1088:	000012b5 	.word	0x000012b5
    108c:	000012b5 	.word	0x000012b5
    1090:	000012b5 	.word	0x000012b5
    1094:	000012b5 	.word	0x000012b5
    1098:	000012b5 	.word	0x000012b5
    109c:	000012b5 	.word	0x000012b5
    10a0:	000012b5 	.word	0x000012b5
    10a4:	000012b5 	.word	0x000012b5
    10a8:	000012b5 	.word	0x000012b5
    10ac:	000012b5 	.word	0x000012b5
    10b0:	000012b5 	.word	0x000012b5
    10b4:	00001295 	.word	0x00001295
    10b8:	000012b5 	.word	0x000012b5
    10bc:	000012b5 	.word	0x000012b5
    10c0:	000012b5 	.word	0x000012b5
    10c4:	000012b5 	.word	0x000012b5
    10c8:	000012b5 	.word	0x000012b5
    10cc:	000012b5 	.word	0x000012b5
    10d0:	000012b5 	.word	0x000012b5
    10d4:	000012b5 	.word	0x000012b5
    10d8:	000012b5 	.word	0x000012b5
    10dc:	000012b5 	.word	0x000012b5
    10e0:	000012b5 	.word	0x000012b5
    10e4:	000012b5 	.word	0x000012b5
    10e8:	000012b5 	.word	0x000012b5
    10ec:	000012b5 	.word	0x000012b5
    10f0:	000012b5 	.word	0x000012b5
    10f4:	000012a5 	.word	0x000012a5
    10f8:	4b38      	ldr	r3, [pc, #224]	; (11dc <chip_vm+0xcfc>)
    10fa:	7d9b      	ldrb	r3, [r3, #22]
    10fc:	f003 0303 	and.w	r3, r3, #3
    1100:	b2da      	uxtb	r2, r3
    1102:	4b37      	ldr	r3, [pc, #220]	; (11e0 <chip_vm+0xd00>)
    1104:	701a      	strb	r2, [r3, #0]
    1106:	e0d7      	b.n	12b8 <chip_vm+0xdd8>
    1108:	4b34      	ldr	r3, [pc, #208]	; (11dc <chip_vm+0xcfc>)
    110a:	885b      	ldrh	r3, [r3, #2]
    110c:	461a      	mov	r2, r3
    110e:	4b35      	ldr	r3, [pc, #212]	; (11e4 <chip_vm+0xd04>)
    1110:	4413      	add	r3, r2
    1112:	4618      	mov	r0, r3
    1114:	f003 f89d 	bl	4252 <load_sound_buffer>
    1118:	e0ce      	b.n	12b8 <chip_vm+0xdd8>
    111a:	7dfb      	ldrb	r3, [r7, #23]
    111c:	4a32      	ldr	r2, [pc, #200]	; (11e8 <chip_vm+0xd08>)
    111e:	8812      	ldrh	r2, [r2, #0]
    1120:	b292      	uxth	r2, r2
    1122:	b2d1      	uxtb	r1, r2
    1124:	4a2d      	ldr	r2, [pc, #180]	; (11dc <chip_vm+0xcfc>)
    1126:	4413      	add	r3, r2
    1128:	460a      	mov	r2, r1
    112a:	719a      	strb	r2, [r3, #6]
    112c:	e0c4      	b.n	12b8 <chip_vm+0xdd8>
    112e:	7dfc      	ldrb	r4, [r7, #23]
    1130:	f000 fcb4 	bl	1a9c <btn_wait_any>
    1134:	4603      	mov	r3, r0
    1136:	461a      	mov	r2, r3
    1138:	4b28      	ldr	r3, [pc, #160]	; (11dc <chip_vm+0xcfc>)
    113a:	4423      	add	r3, r4
    113c:	719a      	strb	r2, [r3, #6]
    113e:	e0bb      	b.n	12b8 <chip_vm+0xdd8>
    1140:	7dfb      	ldrb	r3, [r7, #23]
    1142:	4a26      	ldr	r2, [pc, #152]	; (11dc <chip_vm+0xcfc>)
    1144:	4413      	add	r3, r2
    1146:	799b      	ldrb	r3, [r3, #6]
    1148:	b29a      	uxth	r2, r3
    114a:	4b27      	ldr	r3, [pc, #156]	; (11e8 <chip_vm+0xd08>)
    114c:	801a      	strh	r2, [r3, #0]
    114e:	e0b3      	b.n	12b8 <chip_vm+0xdd8>
    1150:	7dfb      	ldrb	r3, [r7, #23]
    1152:	4a22      	ldr	r2, [pc, #136]	; (11dc <chip_vm+0xcfc>)
    1154:	4413      	add	r3, r2
    1156:	799b      	ldrb	r3, [r3, #6]
    1158:	b29b      	uxth	r3, r3
    115a:	4619      	mov	r1, r3
    115c:	f240 200b 	movw	r0, #523	; 0x20b
    1160:	f003 f822 	bl	41a8 <tone>
    1164:	e0a8      	b.n	12b8 <chip_vm+0xdd8>
    1166:	4b1d      	ldr	r3, [pc, #116]	; (11dc <chip_vm+0xcfc>)
    1168:	885a      	ldrh	r2, [r3, #2]
    116a:	7dfb      	ldrb	r3, [r7, #23]
    116c:	491b      	ldr	r1, [pc, #108]	; (11dc <chip_vm+0xcfc>)
    116e:	440b      	add	r3, r1
    1170:	799b      	ldrb	r3, [r3, #6]
    1172:	b29b      	uxth	r3, r3
    1174:	4413      	add	r3, r2
    1176:	b29a      	uxth	r2, r3
    1178:	4b18      	ldr	r3, [pc, #96]	; (11dc <chip_vm+0xcfc>)
    117a:	805a      	strh	r2, [r3, #2]
    117c:	e09c      	b.n	12b8 <chip_vm+0xdd8>
    117e:	7dfb      	ldrb	r3, [r7, #23]
    1180:	4a16      	ldr	r2, [pc, #88]	; (11dc <chip_vm+0xcfc>)
    1182:	4413      	add	r3, r2
    1184:	799b      	ldrb	r3, [r3, #6]
    1186:	b29b      	uxth	r3, r3
    1188:	461a      	mov	r2, r3
    118a:	0052      	lsls	r2, r2, #1
    118c:	4413      	add	r3, r2
    118e:	005b      	lsls	r3, r3, #1
    1190:	b29a      	uxth	r2, r3
    1192:	4b16      	ldr	r3, [pc, #88]	; (11ec <chip_vm+0xd0c>)
    1194:	b29b      	uxth	r3, r3
    1196:	4413      	add	r3, r2
    1198:	b29a      	uxth	r2, r3
    119a:	4b10      	ldr	r3, [pc, #64]	; (11dc <chip_vm+0xcfc>)
    119c:	805a      	strh	r2, [r3, #2]
    119e:	4b0f      	ldr	r3, [pc, #60]	; (11dc <chip_vm+0xcfc>)
    11a0:	2201      	movs	r2, #1
    11a2:	715a      	strb	r2, [r3, #5]
    11a4:	2000      	movs	r0, #0
    11a6:	f003 fb19 	bl	47dc <select_font>
    11aa:	e085      	b.n	12b8 <chip_vm+0xdd8>
    11ac:	7dfb      	ldrb	r3, [r7, #23]
    11ae:	4a0b      	ldr	r2, [pc, #44]	; (11dc <chip_vm+0xcfc>)
    11b0:	4413      	add	r3, r2
    11b2:	799b      	ldrb	r3, [r3, #6]
    11b4:	b29b      	uxth	r3, r3
    11b6:	461a      	mov	r2, r3
    11b8:	0092      	lsls	r2, r2, #2
    11ba:	4413      	add	r3, r2
    11bc:	005b      	lsls	r3, r3, #1
    11be:	b29a      	uxth	r2, r3
    11c0:	4b0b      	ldr	r3, [pc, #44]	; (11f0 <chip_vm+0xd10>)
    11c2:	b29b      	uxth	r3, r3
    11c4:	4413      	add	r3, r2
    11c6:	b29a      	uxth	r2, r3
    11c8:	4b04      	ldr	r3, [pc, #16]	; (11dc <chip_vm+0xcfc>)
    11ca:	805a      	strh	r2, [r3, #2]
    11cc:	4b03      	ldr	r3, [pc, #12]	; (11dc <chip_vm+0xcfc>)
    11ce:	2201      	movs	r2, #1
    11d0:	715a      	strb	r2, [r3, #5]
    11d2:	2001      	movs	r0, #1
    11d4:	f003 fb02 	bl	47dc <select_font>
    11d8:	e06e      	b.n	12b8 <chip_vm+0xdd8>
    11da:	bf00      	nop
    11dc:	200001d8 	.word	0x200001d8
    11e0:	20000158 	.word	0x20000158
    11e4:	2000067c 	.word	0x2000067c
    11e8:	20004e08 	.word	0x20004e08
    11ec:	00005480 	.word	0x00005480
    11f0:	000054e0 	.word	0x000054e0
    11f4:	7dfb      	ldrb	r3, [r7, #23]
    11f6:	4a37      	ldr	r2, [pc, #220]	; (12d4 <chip_vm+0xdf4>)
    11f8:	4413      	add	r3, r2
    11fa:	799b      	ldrb	r3, [r3, #6]
    11fc:	757b      	strb	r3, [r7, #21]
    11fe:	7d7a      	ldrb	r2, [r7, #21]
    1200:	4b35      	ldr	r3, [pc, #212]	; (12d8 <chip_vm+0xdf8>)
    1202:	fba3 1302 	umull	r1, r3, r3, r2
    1206:	08d9      	lsrs	r1, r3, #3
    1208:	460b      	mov	r3, r1
    120a:	009b      	lsls	r3, r3, #2
    120c:	440b      	add	r3, r1
    120e:	005b      	lsls	r3, r3, #1
    1210:	1ad3      	subs	r3, r2, r3
    1212:	b2da      	uxtb	r2, r3
    1214:	4b31      	ldr	r3, [pc, #196]	; (12dc <chip_vm+0xdfc>)
    1216:	709a      	strb	r2, [r3, #2]
    1218:	7d7b      	ldrb	r3, [r7, #21]
    121a:	4a2f      	ldr	r2, [pc, #188]	; (12d8 <chip_vm+0xdf8>)
    121c:	fba2 2303 	umull	r2, r3, r2, r3
    1220:	08db      	lsrs	r3, r3, #3
    1222:	757b      	strb	r3, [r7, #21]
    1224:	7d7a      	ldrb	r2, [r7, #21]
    1226:	4b2c      	ldr	r3, [pc, #176]	; (12d8 <chip_vm+0xdf8>)
    1228:	fba3 1302 	umull	r1, r3, r3, r2
    122c:	08d9      	lsrs	r1, r3, #3
    122e:	460b      	mov	r3, r1
    1230:	009b      	lsls	r3, r3, #2
    1232:	440b      	add	r3, r1
    1234:	005b      	lsls	r3, r3, #1
    1236:	1ad3      	subs	r3, r2, r3
    1238:	b2da      	uxtb	r2, r3
    123a:	4b28      	ldr	r3, [pc, #160]	; (12dc <chip_vm+0xdfc>)
    123c:	705a      	strb	r2, [r3, #1]
    123e:	7d7b      	ldrb	r3, [r7, #21]
    1240:	4a25      	ldr	r2, [pc, #148]	; (12d8 <chip_vm+0xdf8>)
    1242:	fba2 2303 	umull	r2, r3, r2, r3
    1246:	08db      	lsrs	r3, r3, #3
    1248:	b2da      	uxtb	r2, r3
    124a:	4b24      	ldr	r3, [pc, #144]	; (12dc <chip_vm+0xdfc>)
    124c:	701a      	strb	r2, [r3, #0]
    124e:	4b21      	ldr	r3, [pc, #132]	; (12d4 <chip_vm+0xdf4>)
    1250:	885b      	ldrh	r3, [r3, #2]
    1252:	461a      	mov	r2, r3
    1254:	4b22      	ldr	r3, [pc, #136]	; (12e0 <chip_vm+0xe00>)
    1256:	4413      	add	r3, r2
    1258:	2203      	movs	r2, #3
    125a:	4619      	mov	r1, r3
    125c:	481f      	ldr	r0, [pc, #124]	; (12dc <chip_vm+0xdfc>)
    125e:	f000 fda8 	bl	1db2 <move>
    1262:	e029      	b.n	12b8 <chip_vm+0xdd8>
    1264:	4b1b      	ldr	r3, [pc, #108]	; (12d4 <chip_vm+0xdf4>)
    1266:	885b      	ldrh	r3, [r3, #2]
    1268:	461a      	mov	r2, r3
    126a:	4b1d      	ldr	r3, [pc, #116]	; (12e0 <chip_vm+0xe00>)
    126c:	18d1      	adds	r1, r2, r3
    126e:	7dfb      	ldrb	r3, [r7, #23]
    1270:	3301      	adds	r3, #1
    1272:	461a      	mov	r2, r3
    1274:	481b      	ldr	r0, [pc, #108]	; (12e4 <chip_vm+0xe04>)
    1276:	f000 fd9c 	bl	1db2 <move>
    127a:	e01d      	b.n	12b8 <chip_vm+0xdd8>
    127c:	4b15      	ldr	r3, [pc, #84]	; (12d4 <chip_vm+0xdf4>)
    127e:	885b      	ldrh	r3, [r3, #2]
    1280:	461a      	mov	r2, r3
    1282:	4b17      	ldr	r3, [pc, #92]	; (12e0 <chip_vm+0xe00>)
    1284:	18d0      	adds	r0, r2, r3
    1286:	7dfb      	ldrb	r3, [r7, #23]
    1288:	3301      	adds	r3, #1
    128a:	461a      	mov	r2, r3
    128c:	4915      	ldr	r1, [pc, #84]	; (12e4 <chip_vm+0xe04>)
    128e:	f000 fd90 	bl	1db2 <move>
    1292:	e011      	b.n	12b8 <chip_vm+0xdd8>
    1294:	7dfb      	ldrb	r3, [r7, #23]
    1296:	3301      	adds	r3, #1
    1298:	461a      	mov	r2, r3
    129a:	4910      	ldr	r1, [pc, #64]	; (12dc <chip_vm+0xdfc>)
    129c:	4811      	ldr	r0, [pc, #68]	; (12e4 <chip_vm+0xe04>)
    129e:	f000 fd88 	bl	1db2 <move>
    12a2:	e009      	b.n	12b8 <chip_vm+0xdd8>
    12a4:	7dfb      	ldrb	r3, [r7, #23]
    12a6:	3301      	adds	r3, #1
    12a8:	461a      	mov	r2, r3
    12aa:	490e      	ldr	r1, [pc, #56]	; (12e4 <chip_vm+0xe04>)
    12ac:	480b      	ldr	r0, [pc, #44]	; (12dc <chip_vm+0xdfc>)
    12ae:	f000 fd80 	bl	1db2 <move>
    12b2:	e001      	b.n	12b8 <chip_vm+0xdd8>
    12b4:	2302      	movs	r3, #2
    12b6:	e009      	b.n	12cc <chip_vm+0xdec>
    12b8:	e006      	b.n	12c8 <chip_vm+0xde8>
    12ba:	bf00      	nop
    12bc:	f7ff b91e 	b.w	4fc <chip_vm+0x1c>
    12c0:	bf00      	nop
    12c2:	f7ff b91b 	b.w	4fc <chip_vm+0x1c>
    12c6:	bf00      	nop
    12c8:	f7ff b918 	b.w	4fc <chip_vm+0x1c>
    12cc:	4618      	mov	r0, r3
    12ce:	371c      	adds	r7, #28
    12d0:	46bd      	mov	sp, r7
    12d2:	bd90      	pop	{r4, r7, pc}
    12d4:	200001d8 	.word	0x200001d8
    12d8:	cccccccd 	.word	0xcccccccd
    12dc:	20000230 	.word	0x20000230
    12e0:	2000067c 	.word	0x2000067c
    12e4:	200001de 	.word	0x200001de

000012e8 <flash_enable>:
    12e8:	b480      	push	{r7}
    12ea:	af00      	add	r7, sp, #0
    12ec:	4b14      	ldr	r3, [pc, #80]	; (1340 <flash_enable+0x58>)
    12ee:	2200      	movs	r2, #0
    12f0:	701a      	strb	r2, [r3, #0]
    12f2:	4b14      	ldr	r3, [pc, #80]	; (1344 <flash_enable+0x5c>)
    12f4:	681b      	ldr	r3, [r3, #0]
    12f6:	f003 0301 	and.w	r3, r3, #1
    12fa:	2b00      	cmp	r3, #0
    12fc:	d10c      	bne.n	1318 <flash_enable+0x30>
    12fe:	4a11      	ldr	r2, [pc, #68]	; (1344 <flash_enable+0x5c>)
    1300:	4b10      	ldr	r3, [pc, #64]	; (1344 <flash_enable+0x5c>)
    1302:	681b      	ldr	r3, [r3, #0]
    1304:	f043 0301 	orr.w	r3, r3, #1
    1308:	6013      	str	r3, [r2, #0]
    130a:	bf00      	nop
    130c:	4b0d      	ldr	r3, [pc, #52]	; (1344 <flash_enable+0x5c>)
    130e:	681b      	ldr	r3, [r3, #0]
    1310:	f003 0302 	and.w	r3, r3, #2
    1314:	2b00      	cmp	r3, #0
    1316:	d0f9      	beq.n	130c <flash_enable+0x24>
    1318:	4b0b      	ldr	r3, [pc, #44]	; (1348 <flash_enable+0x60>)
    131a:	4a0c      	ldr	r2, [pc, #48]	; (134c <flash_enable+0x64>)
    131c:	605a      	str	r2, [r3, #4]
    131e:	4b0a      	ldr	r3, [pc, #40]	; (1348 <flash_enable+0x60>)
    1320:	4a0b      	ldr	r2, [pc, #44]	; (1350 <flash_enable+0x68>)
    1322:	605a      	str	r2, [r3, #4]
    1324:	4b08      	ldr	r3, [pc, #32]	; (1348 <flash_enable+0x60>)
    1326:	691b      	ldr	r3, [r3, #16]
    1328:	f003 0380 	and.w	r3, r3, #128	; 0x80
    132c:	2b00      	cmp	r3, #0
    132e:	bf0c      	ite	eq
    1330:	2301      	moveq	r3, #1
    1332:	2300      	movne	r3, #0
    1334:	b2db      	uxtb	r3, r3
    1336:	4618      	mov	r0, r3
    1338:	46bd      	mov	sp, r7
    133a:	bc80      	pop	{r7}
    133c:	4770      	bx	lr
    133e:	bf00      	nop
    1340:	20000250 	.word	0x20000250
    1344:	40021000 	.word	0x40021000
    1348:	40022000 	.word	0x40022000
    134c:	45670123 	.word	0x45670123
    1350:	cdef89ab 	.word	0xcdef89ab

00001354 <read_byte>:
    1354:	b480      	push	{r7}
    1356:	b085      	sub	sp, #20
    1358:	af00      	add	r7, sp, #0
    135a:	6078      	str	r0, [r7, #4]
    135c:	687b      	ldr	r3, [r7, #4]
    135e:	0a9b      	lsrs	r3, r3, #10
    1360:	4a0a      	ldr	r2, [pc, #40]	; (138c <read_byte+0x38>)
    1362:	7852      	ldrb	r2, [r2, #1]
    1364:	4293      	cmp	r3, r2
    1366:	d109      	bne.n	137c <read_byte+0x28>
    1368:	687b      	ldr	r3, [r7, #4]
    136a:	f3c3 0309 	ubfx	r3, r3, #0, #10
    136e:	60fb      	str	r3, [r7, #12]
    1370:	4a06      	ldr	r2, [pc, #24]	; (138c <read_byte+0x38>)
    1372:	68fb      	ldr	r3, [r7, #12]
    1374:	4413      	add	r3, r2
    1376:	3302      	adds	r3, #2
    1378:	781b      	ldrb	r3, [r3, #0]
    137a:	e001      	b.n	1380 <read_byte+0x2c>
    137c:	687b      	ldr	r3, [r7, #4]
    137e:	781b      	ldrb	r3, [r3, #0]
    1380:	4618      	mov	r0, r3
    1382:	3714      	adds	r7, #20
    1384:	46bd      	mov	sp, r7
    1386:	bc80      	pop	{r7}
    1388:	4770      	bx	lr
    138a:	bf00      	nop
    138c:	20000250 	.word	0x20000250

00001390 <flash_write_hword>:
    1390:	b480      	push	{r7}
    1392:	b083      	sub	sp, #12
    1394:	af00      	add	r7, sp, #0
    1396:	6078      	str	r0, [r7, #4]
    1398:	460b      	mov	r3, r1
    139a:	807b      	strh	r3, [r7, #2]
    139c:	bf00      	nop
    139e:	4b16      	ldr	r3, [pc, #88]	; (13f8 <flash_write_hword+0x68>)
    13a0:	68db      	ldr	r3, [r3, #12]
    13a2:	f003 0301 	and.w	r3, r3, #1
    13a6:	2b00      	cmp	r3, #0
    13a8:	d1f9      	bne.n	139e <flash_write_hword+0xe>
    13aa:	4a13      	ldr	r2, [pc, #76]	; (13f8 <flash_write_hword+0x68>)
    13ac:	4b12      	ldr	r3, [pc, #72]	; (13f8 <flash_write_hword+0x68>)
    13ae:	68db      	ldr	r3, [r3, #12]
    13b0:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    13b4:	60d3      	str	r3, [r2, #12]
    13b6:	4b10      	ldr	r3, [pc, #64]	; (13f8 <flash_write_hword+0x68>)
    13b8:	2201      	movs	r2, #1
    13ba:	611a      	str	r2, [r3, #16]
    13bc:	687b      	ldr	r3, [r7, #4]
    13be:	887a      	ldrh	r2, [r7, #2]
    13c0:	801a      	strh	r2, [r3, #0]
    13c2:	bf00      	nop
    13c4:	4b0c      	ldr	r3, [pc, #48]	; (13f8 <flash_write_hword+0x68>)
    13c6:	68db      	ldr	r3, [r3, #12]
    13c8:	f003 0301 	and.w	r3, r3, #1
    13cc:	2b00      	cmp	r3, #0
    13ce:	d005      	beq.n	13dc <flash_write_hword+0x4c>
    13d0:	4b09      	ldr	r3, [pc, #36]	; (13f8 <flash_write_hword+0x68>)
    13d2:	68db      	ldr	r3, [r3, #12]
    13d4:	f003 0320 	and.w	r3, r3, #32
    13d8:	2b00      	cmp	r3, #0
    13da:	d0f3      	beq.n	13c4 <flash_write_hword+0x34>
    13dc:	687b      	ldr	r3, [r7, #4]
    13de:	881b      	ldrh	r3, [r3, #0]
    13e0:	887a      	ldrh	r2, [r7, #2]
    13e2:	429a      	cmp	r2, r3
    13e4:	bf0c      	ite	eq
    13e6:	2301      	moveq	r3, #1
    13e8:	2300      	movne	r3, #0
    13ea:	b2db      	uxtb	r3, r3
    13ec:	4618      	mov	r0, r3
    13ee:	370c      	adds	r7, #12
    13f0:	46bd      	mov	sp, r7
    13f2:	bc80      	pop	{r7}
    13f4:	4770      	bx	lr
    13f6:	bf00      	nop
    13f8:	40022000 	.word	0x40022000

000013fc <write_back_buffer>:
    13fc:	b580      	push	{r7, lr}
    13fe:	b084      	sub	sp, #16
    1400:	af00      	add	r7, sp, #0
    1402:	4b1e      	ldr	r3, [pc, #120]	; (147c <write_back_buffer+0x80>)
    1404:	785b      	ldrb	r3, [r3, #1]
    1406:	029b      	lsls	r3, r3, #10
    1408:	60bb      	str	r3, [r7, #8]
    140a:	4b1d      	ldr	r3, [pc, #116]	; (1480 <write_back_buffer+0x84>)
    140c:	607b      	str	r3, [r7, #4]
    140e:	2300      	movs	r3, #0
    1410:	60fb      	str	r3, [r7, #12]
    1412:	e017      	b.n	1444 <write_back_buffer+0x48>
    1414:	687b      	ldr	r3, [r7, #4]
    1416:	881b      	ldrh	r3, [r3, #0]
    1418:	f64f 72ff 	movw	r2, #65535	; 0xffff
    141c:	4293      	cmp	r3, r2
    141e:	d008      	beq.n	1432 <write_back_buffer+0x36>
    1420:	687b      	ldr	r3, [r7, #4]
    1422:	881b      	ldrh	r3, [r3, #0]
    1424:	4619      	mov	r1, r3
    1426:	68b8      	ldr	r0, [r7, #8]
    1428:	f7ff ffb2 	bl	1390 <flash_write_hword>
    142c:	4603      	mov	r3, r0
    142e:	2b00      	cmp	r3, #0
    1430:	d00d      	beq.n	144e <write_back_buffer+0x52>
    1432:	68bb      	ldr	r3, [r7, #8]
    1434:	3302      	adds	r3, #2
    1436:	60bb      	str	r3, [r7, #8]
    1438:	687b      	ldr	r3, [r7, #4]
    143a:	3302      	adds	r3, #2
    143c:	607b      	str	r3, [r7, #4]
    143e:	68fb      	ldr	r3, [r7, #12]
    1440:	3301      	adds	r3, #1
    1442:	60fb      	str	r3, [r7, #12]
    1444:	68fb      	ldr	r3, [r7, #12]
    1446:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    144a:	dbe3      	blt.n	1414 <write_back_buffer+0x18>
    144c:	e000      	b.n	1450 <write_back_buffer+0x54>
    144e:	bf00      	nop
    1450:	68fb      	ldr	r3, [r7, #12]
    1452:	2b00      	cmp	r3, #0
    1454:	dd06      	ble.n	1464 <write_back_buffer+0x68>
    1456:	4b09      	ldr	r3, [pc, #36]	; (147c <write_back_buffer+0x80>)
    1458:	781b      	ldrb	r3, [r3, #0]
    145a:	f023 0304 	bic.w	r3, r3, #4
    145e:	b2da      	uxtb	r2, r3
    1460:	4b06      	ldr	r3, [pc, #24]	; (147c <write_back_buffer+0x80>)
    1462:	701a      	strb	r2, [r3, #0]
    1464:	68fb      	ldr	r3, [r7, #12]
    1466:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    146a:	d101      	bne.n	1470 <write_back_buffer+0x74>
    146c:	2301      	movs	r3, #1
    146e:	e000      	b.n	1472 <write_back_buffer+0x76>
    1470:	2300      	movs	r3, #0
    1472:	4618      	mov	r0, r3
    1474:	3710      	adds	r7, #16
    1476:	46bd      	mov	sp, r7
    1478:	bd80      	pop	{r7, pc}
    147a:	bf00      	nop
    147c:	20000250 	.word	0x20000250
    1480:	20000252 	.word	0x20000252

00001484 <load_row>:
    1484:	b480      	push	{r7}
    1486:	b087      	sub	sp, #28
    1488:	af00      	add	r7, sp, #0
    148a:	6078      	str	r0, [r7, #4]
    148c:	687b      	ldr	r3, [r7, #4]
    148e:	029b      	lsls	r3, r3, #10
    1490:	617b      	str	r3, [r7, #20]
    1492:	4b15      	ldr	r3, [pc, #84]	; (14e8 <load_row+0x64>)
    1494:	613b      	str	r3, [r7, #16]
    1496:	2300      	movs	r3, #0
    1498:	60fb      	str	r3, [r7, #12]
    149a:	e00a      	b.n	14b2 <load_row+0x2e>
    149c:	693b      	ldr	r3, [r7, #16]
    149e:	1c9a      	adds	r2, r3, #2
    14a0:	613a      	str	r2, [r7, #16]
    14a2:	697a      	ldr	r2, [r7, #20]
    14a4:	1c91      	adds	r1, r2, #2
    14a6:	6179      	str	r1, [r7, #20]
    14a8:	8812      	ldrh	r2, [r2, #0]
    14aa:	801a      	strh	r2, [r3, #0]
    14ac:	68fb      	ldr	r3, [r7, #12]
    14ae:	3301      	adds	r3, #1
    14b0:	60fb      	str	r3, [r7, #12]
    14b2:	68fb      	ldr	r3, [r7, #12]
    14b4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    14b8:	dbf0      	blt.n	149c <load_row+0x18>
    14ba:	687b      	ldr	r3, [r7, #4]
    14bc:	b2da      	uxtb	r2, r3
    14be:	4b0b      	ldr	r3, [pc, #44]	; (14ec <load_row+0x68>)
    14c0:	705a      	strb	r2, [r3, #1]
    14c2:	4b0a      	ldr	r3, [pc, #40]	; (14ec <load_row+0x68>)
    14c4:	781b      	ldrb	r3, [r3, #0]
    14c6:	f023 0301 	bic.w	r3, r3, #1
    14ca:	b2da      	uxtb	r2, r3
    14cc:	4b07      	ldr	r3, [pc, #28]	; (14ec <load_row+0x68>)
    14ce:	701a      	strb	r2, [r3, #0]
    14d0:	4b06      	ldr	r3, [pc, #24]	; (14ec <load_row+0x68>)
    14d2:	781b      	ldrb	r3, [r3, #0]
    14d4:	f043 0302 	orr.w	r3, r3, #2
    14d8:	b2da      	uxtb	r2, r3
    14da:	4b04      	ldr	r3, [pc, #16]	; (14ec <load_row+0x68>)
    14dc:	701a      	strb	r2, [r3, #0]
    14de:	bf00      	nop
    14e0:	371c      	adds	r7, #28
    14e2:	46bd      	mov	sp, r7
    14e4:	bc80      	pop	{r7}
    14e6:	4770      	bx	lr
    14e8:	20000252 	.word	0x20000252
    14ec:	20000250 	.word	0x20000250

000014f0 <is_erased>:
    14f0:	b480      	push	{r7}
    14f2:	b085      	sub	sp, #20
    14f4:	af00      	add	r7, sp, #0
    14f6:	6078      	str	r0, [r7, #4]
    14f8:	687b      	ldr	r3, [r7, #4]
    14fa:	029b      	lsls	r3, r3, #10
    14fc:	60fb      	str	r3, [r7, #12]
    14fe:	2300      	movs	r3, #0
    1500:	60bb      	str	r3, [r7, #8]
    1502:	e00c      	b.n	151e <is_erased+0x2e>
    1504:	68fb      	ldr	r3, [r7, #12]
    1506:	1c9a      	adds	r2, r3, #2
    1508:	60fa      	str	r2, [r7, #12]
    150a:	881b      	ldrh	r3, [r3, #0]
    150c:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1510:	4293      	cmp	r3, r2
    1512:	d001      	beq.n	1518 <is_erased+0x28>
    1514:	2300      	movs	r3, #0
    1516:	e008      	b.n	152a <is_erased+0x3a>
    1518:	68bb      	ldr	r3, [r7, #8]
    151a:	3301      	adds	r3, #1
    151c:	60bb      	str	r3, [r7, #8]
    151e:	68bb      	ldr	r3, [r7, #8]
    1520:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1524:	dbee      	blt.n	1504 <is_erased+0x14>
    1526:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    152a:	4618      	mov	r0, r3
    152c:	3714      	adds	r7, #20
    152e:	46bd      	mov	sp, r7
    1530:	bc80      	pop	{r7}
    1532:	4770      	bx	lr

00001534 <flash_erase_row>:
    1534:	b580      	push	{r7, lr}
    1536:	b086      	sub	sp, #24
    1538:	af00      	add	r7, sp, #0
    153a:	6078      	str	r0, [r7, #4]
    153c:	687b      	ldr	r3, [r7, #4]
    153e:	2b3f      	cmp	r3, #63	; 0x3f
    1540:	d801      	bhi.n	1546 <flash_erase_row+0x12>
    1542:	2300      	movs	r3, #0
    1544:	e052      	b.n	15ec <flash_erase_row+0xb8>
    1546:	6878      	ldr	r0, [r7, #4]
    1548:	f7ff ffd2 	bl	14f0 <is_erased>
    154c:	4603      	mov	r3, r0
    154e:	2b00      	cmp	r3, #0
    1550:	d001      	beq.n	1556 <flash_erase_row+0x22>
    1552:	2301      	movs	r3, #1
    1554:	e04a      	b.n	15ec <flash_erase_row+0xb8>
    1556:	687b      	ldr	r3, [r7, #4]
    1558:	029b      	lsls	r3, r3, #10
    155a:	617b      	str	r3, [r7, #20]
    155c:	4b25      	ldr	r3, [pc, #148]	; (15f4 <flash_erase_row+0xc0>)
    155e:	691b      	ldr	r3, [r3, #16]
    1560:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1564:	2b00      	cmp	r3, #0
    1566:	d001      	beq.n	156c <flash_erase_row+0x38>
    1568:	2300      	movs	r3, #0
    156a:	e03f      	b.n	15ec <flash_erase_row+0xb8>
    156c:	4a21      	ldr	r2, [pc, #132]	; (15f4 <flash_erase_row+0xc0>)
    156e:	4b21      	ldr	r3, [pc, #132]	; (15f4 <flash_erase_row+0xc0>)
    1570:	68db      	ldr	r3, [r3, #12]
    1572:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1576:	60d3      	str	r3, [r2, #12]
    1578:	4b1e      	ldr	r3, [pc, #120]	; (15f4 <flash_erase_row+0xc0>)
    157a:	2202      	movs	r2, #2
    157c:	611a      	str	r2, [r3, #16]
    157e:	4a1d      	ldr	r2, [pc, #116]	; (15f4 <flash_erase_row+0xc0>)
    1580:	697b      	ldr	r3, [r7, #20]
    1582:	6153      	str	r3, [r2, #20]
    1584:	4a1b      	ldr	r2, [pc, #108]	; (15f4 <flash_erase_row+0xc0>)
    1586:	4b1b      	ldr	r3, [pc, #108]	; (15f4 <flash_erase_row+0xc0>)
    1588:	691b      	ldr	r3, [r3, #16]
    158a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    158e:	6113      	str	r3, [r2, #16]
    1590:	bf00      	nop
    1592:	4b18      	ldr	r3, [pc, #96]	; (15f4 <flash_erase_row+0xc0>)
    1594:	68db      	ldr	r3, [r3, #12]
    1596:	f003 0301 	and.w	r3, r3, #1
    159a:	2b00      	cmp	r3, #0
    159c:	d005      	beq.n	15aa <flash_erase_row+0x76>
    159e:	4b15      	ldr	r3, [pc, #84]	; (15f4 <flash_erase_row+0xc0>)
    15a0:	68db      	ldr	r3, [r3, #12]
    15a2:	f003 0320 	and.w	r3, r3, #32
    15a6:	2b00      	cmp	r3, #0
    15a8:	d0f3      	beq.n	1592 <flash_erase_row+0x5e>
    15aa:	687b      	ldr	r3, [r7, #4]
    15ac:	029b      	lsls	r3, r3, #10
    15ae:	617b      	str	r3, [r7, #20]
    15b0:	2300      	movs	r3, #0
    15b2:	60fb      	str	r3, [r7, #12]
    15b4:	e00c      	b.n	15d0 <flash_erase_row+0x9c>
    15b6:	697b      	ldr	r3, [r7, #20]
    15b8:	1c9a      	adds	r2, r3, #2
    15ba:	617a      	str	r2, [r7, #20]
    15bc:	881b      	ldrh	r3, [r3, #0]
    15be:	827b      	strh	r3, [r7, #18]
    15c0:	8a7b      	ldrh	r3, [r7, #18]
    15c2:	f64f 72ff 	movw	r2, #65535	; 0xffff
    15c6:	4293      	cmp	r3, r2
    15c8:	d107      	bne.n	15da <flash_erase_row+0xa6>
    15ca:	68fb      	ldr	r3, [r7, #12]
    15cc:	3301      	adds	r3, #1
    15ce:	60fb      	str	r3, [r7, #12]
    15d0:	68fb      	ldr	r3, [r7, #12]
    15d2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    15d6:	dbee      	blt.n	15b6 <flash_erase_row+0x82>
    15d8:	e000      	b.n	15dc <flash_erase_row+0xa8>
    15da:	bf00      	nop
    15dc:	8a7b      	ldrh	r3, [r7, #18]
    15de:	f64f 72ff 	movw	r2, #65535	; 0xffff
    15e2:	4293      	cmp	r3, r2
    15e4:	bf0c      	ite	eq
    15e6:	2301      	moveq	r3, #1
    15e8:	2300      	movne	r3, #0
    15ea:	b2db      	uxtb	r3, r3
    15ec:	4618      	mov	r0, r3
    15ee:	3718      	adds	r7, #24
    15f0:	46bd      	mov	sp, r7
    15f2:	bd80      	pop	{r7, pc}
    15f4:	40022000 	.word	0x40022000

000015f8 <flash_sync>:
    15f8:	b580      	push	{r7, lr}
    15fa:	af00      	add	r7, sp, #0
    15fc:	4b10      	ldr	r3, [pc, #64]	; (1640 <flash_sync+0x48>)
    15fe:	781b      	ldrb	r3, [r3, #0]
    1600:	f003 0301 	and.w	r3, r3, #1
    1604:	2b00      	cmp	r3, #0
    1606:	d017      	beq.n	1638 <flash_sync+0x40>
    1608:	4b0d      	ldr	r3, [pc, #52]	; (1640 <flash_sync+0x48>)
    160a:	785b      	ldrb	r3, [r3, #1]
    160c:	4618      	mov	r0, r3
    160e:	f7ff ff91 	bl	1534 <flash_erase_row>
    1612:	4603      	mov	r3, r0
    1614:	2b00      	cmp	r3, #0
    1616:	d00d      	beq.n	1634 <flash_sync+0x3c>
    1618:	f7ff fef0 	bl	13fc <write_back_buffer>
    161c:	4603      	mov	r3, r0
    161e:	2b00      	cmp	r3, #0
    1620:	d008      	beq.n	1634 <flash_sync+0x3c>
    1622:	4b07      	ldr	r3, [pc, #28]	; (1640 <flash_sync+0x48>)
    1624:	781b      	ldrb	r3, [r3, #0]
    1626:	f023 0301 	bic.w	r3, r3, #1
    162a:	b2da      	uxtb	r2, r3
    162c:	4b04      	ldr	r3, [pc, #16]	; (1640 <flash_sync+0x48>)
    162e:	701a      	strb	r2, [r3, #0]
    1630:	2301      	movs	r3, #1
    1632:	e002      	b.n	163a <flash_sync+0x42>
    1634:	2300      	movs	r3, #0
    1636:	e000      	b.n	163a <flash_sync+0x42>
    1638:	2301      	movs	r3, #1
    163a:	4618      	mov	r0, r3
    163c:	bd80      	pop	{r7, pc}
    163e:	bf00      	nop
    1640:	20000250 	.word	0x20000250

00001644 <flash_flush>:
    1644:	b480      	push	{r7}
    1646:	af00      	add	r7, sp, #0
    1648:	4b03      	ldr	r3, [pc, #12]	; (1658 <flash_flush+0x14>)
    164a:	2200      	movs	r2, #0
    164c:	701a      	strb	r2, [r3, #0]
    164e:	bf00      	nop
    1650:	46bd      	mov	sp, r7
    1652:	bc80      	pop	{r7}
    1654:	4770      	bx	lr
    1656:	bf00      	nop
    1658:	20000250 	.word	0x20000250

0000165c <flash_disable>:
    165c:	b580      	push	{r7, lr}
    165e:	af00      	add	r7, sp, #0
    1660:	f7ff ffca 	bl	15f8 <flash_sync>
    1664:	4b05      	ldr	r3, [pc, #20]	; (167c <flash_disable+0x20>)
    1666:	2200      	movs	r2, #0
    1668:	701a      	strb	r2, [r3, #0]
    166a:	4a05      	ldr	r2, [pc, #20]	; (1680 <flash_disable+0x24>)
    166c:	4b04      	ldr	r3, [pc, #16]	; (1680 <flash_disable+0x24>)
    166e:	691b      	ldr	r3, [r3, #16]
    1670:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    1674:	6113      	str	r3, [r2, #16]
    1676:	bf00      	nop
    1678:	bd80      	pop	{r7, pc}
    167a:	bf00      	nop
    167c:	20000250 	.word	0x20000250
    1680:	40022000 	.word	0x40022000

00001684 <flash_write_byte>:
    1684:	b580      	push	{r7, lr}
    1686:	b084      	sub	sp, #16
    1688:	af00      	add	r7, sp, #0
    168a:	6078      	str	r0, [r7, #4]
    168c:	460b      	mov	r3, r1
    168e:	70fb      	strb	r3, [r7, #3]
    1690:	687b      	ldr	r3, [r7, #4]
    1692:	0a9b      	lsrs	r3, r3, #10
    1694:	60fb      	str	r3, [r7, #12]
    1696:	68fb      	ldr	r3, [r7, #12]
    1698:	2b3f      	cmp	r3, #63	; 0x3f
    169a:	d801      	bhi.n	16a0 <flash_write_byte+0x1c>
    169c:	2300      	movs	r3, #0
    169e:	e021      	b.n	16e4 <flash_write_byte+0x60>
    16a0:	4b12      	ldr	r3, [pc, #72]	; (16ec <flash_write_byte+0x68>)
    16a2:	785b      	ldrb	r3, [r3, #1]
    16a4:	461a      	mov	r2, r3
    16a6:	68fb      	ldr	r3, [r7, #12]
    16a8:	429a      	cmp	r2, r3
    16aa:	d009      	beq.n	16c0 <flash_write_byte+0x3c>
    16ac:	f7ff ffa4 	bl	15f8 <flash_sync>
    16b0:	4603      	mov	r3, r0
    16b2:	2b00      	cmp	r3, #0
    16b4:	d101      	bne.n	16ba <flash_write_byte+0x36>
    16b6:	2300      	movs	r3, #0
    16b8:	e014      	b.n	16e4 <flash_write_byte+0x60>
    16ba:	68f8      	ldr	r0, [r7, #12]
    16bc:	f7ff fee2 	bl	1484 <load_row>
    16c0:	687b      	ldr	r3, [r7, #4]
    16c2:	f3c3 0309 	ubfx	r3, r3, #0, #10
    16c6:	60bb      	str	r3, [r7, #8]
    16c8:	4a08      	ldr	r2, [pc, #32]	; (16ec <flash_write_byte+0x68>)
    16ca:	68bb      	ldr	r3, [r7, #8]
    16cc:	4413      	add	r3, r2
    16ce:	3302      	adds	r3, #2
    16d0:	78fa      	ldrb	r2, [r7, #3]
    16d2:	701a      	strb	r2, [r3, #0]
    16d4:	4b05      	ldr	r3, [pc, #20]	; (16ec <flash_write_byte+0x68>)
    16d6:	781b      	ldrb	r3, [r3, #0]
    16d8:	f043 0301 	orr.w	r3, r3, #1
    16dc:	b2da      	uxtb	r2, r3
    16de:	4b03      	ldr	r3, [pc, #12]	; (16ec <flash_write_byte+0x68>)
    16e0:	701a      	strb	r2, [r3, #0]
    16e2:	2301      	movs	r3, #1
    16e4:	4618      	mov	r0, r3
    16e6:	3710      	adds	r7, #16
    16e8:	46bd      	mov	sp, r7
    16ea:	bd80      	pop	{r7, pc}
    16ec:	20000250 	.word	0x20000250

000016f0 <flash_read_block>:
    16f0:	b590      	push	{r4, r7, lr}
    16f2:	b087      	sub	sp, #28
    16f4:	af00      	add	r7, sp, #0
    16f6:	60f8      	str	r0, [r7, #12]
    16f8:	60b9      	str	r1, [r7, #8]
    16fa:	607a      	str	r2, [r7, #4]
    16fc:	2300      	movs	r3, #0
    16fe:	617b      	str	r3, [r7, #20]
    1700:	e00d      	b.n	171e <flash_read_block+0x2e>
    1702:	68bc      	ldr	r4, [r7, #8]
    1704:	1c63      	adds	r3, r4, #1
    1706:	60bb      	str	r3, [r7, #8]
    1708:	68fb      	ldr	r3, [r7, #12]
    170a:	1c5a      	adds	r2, r3, #1
    170c:	60fa      	str	r2, [r7, #12]
    170e:	4618      	mov	r0, r3
    1710:	f7ff fe20 	bl	1354 <read_byte>
    1714:	4603      	mov	r3, r0
    1716:	7023      	strb	r3, [r4, #0]
    1718:	697b      	ldr	r3, [r7, #20]
    171a:	3301      	adds	r3, #1
    171c:	617b      	str	r3, [r7, #20]
    171e:	697a      	ldr	r2, [r7, #20]
    1720:	687b      	ldr	r3, [r7, #4]
    1722:	429a      	cmp	r2, r3
    1724:	dbed      	blt.n	1702 <flash_read_block+0x12>
    1726:	bf00      	nop
    1728:	371c      	adds	r7, #28
    172a:	46bd      	mov	sp, r7
    172c:	bd90      	pop	{r4, r7, pc}

0000172e <flash_write_block>:
    172e:	b580      	push	{r7, lr}
    1730:	b086      	sub	sp, #24
    1732:	af00      	add	r7, sp, #0
    1734:	60f8      	str	r0, [r7, #12]
    1736:	60b9      	str	r1, [r7, #8]
    1738:	607a      	str	r2, [r7, #4]
    173a:	4b18      	ldr	r3, [pc, #96]	; (179c <flash_write_block+0x6e>)
    173c:	681b      	ldr	r3, [r3, #0]
    173e:	461a      	mov	r2, r3
    1740:	68fb      	ldr	r3, [r7, #12]
    1742:	4293      	cmp	r3, r2
    1744:	d201      	bcs.n	174a <flash_write_block+0x1c>
    1746:	2300      	movs	r3, #0
    1748:	e023      	b.n	1792 <flash_write_block+0x64>
    174a:	f7ff fdcd 	bl	12e8 <flash_enable>
    174e:	4603      	mov	r3, r0
    1750:	2b00      	cmp	r3, #0
    1752:	d101      	bne.n	1758 <flash_write_block+0x2a>
    1754:	2300      	movs	r3, #0
    1756:	e01c      	b.n	1792 <flash_write_block+0x64>
    1758:	2300      	movs	r3, #0
    175a:	617b      	str	r3, [r7, #20]
    175c:	e012      	b.n	1784 <flash_write_block+0x56>
    175e:	68fa      	ldr	r2, [r7, #12]
    1760:	1c53      	adds	r3, r2, #1
    1762:	60fb      	str	r3, [r7, #12]
    1764:	68bb      	ldr	r3, [r7, #8]
    1766:	1c59      	adds	r1, r3, #1
    1768:	60b9      	str	r1, [r7, #8]
    176a:	781b      	ldrb	r3, [r3, #0]
    176c:	4619      	mov	r1, r3
    176e:	4610      	mov	r0, r2
    1770:	f7ff ff88 	bl	1684 <flash_write_byte>
    1774:	4603      	mov	r3, r0
    1776:	2b00      	cmp	r3, #0
    1778:	d101      	bne.n	177e <flash_write_block+0x50>
    177a:	2300      	movs	r3, #0
    177c:	e009      	b.n	1792 <flash_write_block+0x64>
    177e:	697b      	ldr	r3, [r7, #20]
    1780:	3301      	adds	r3, #1
    1782:	617b      	str	r3, [r7, #20]
    1784:	697a      	ldr	r2, [r7, #20]
    1786:	687b      	ldr	r3, [r7, #4]
    1788:	429a      	cmp	r2, r3
    178a:	dbe8      	blt.n	175e <flash_write_block+0x30>
    178c:	f7ff ff66 	bl	165c <flash_disable>
    1790:	2301      	movs	r3, #1
    1792:	4618      	mov	r0, r3
    1794:	3718      	adds	r7, #24
    1796:	46bd      	mov	sp, r7
    1798:	bd80      	pop	{r7, pc}
    179a:	bf00      	nop
    179c:	00005c00 	.word	0x00005c00

000017a0 <btn_idx>:
    17a0:	b480      	push	{r7}
    17a2:	b085      	sub	sp, #20
    17a4:	af00      	add	r7, sp, #0
    17a6:	4603      	mov	r3, r0
    17a8:	71fb      	strb	r3, [r7, #7]
    17aa:	2300      	movs	r3, #0
    17ac:	73fb      	strb	r3, [r7, #15]
    17ae:	79fb      	ldrb	r3, [r7, #7]
    17b0:	085b      	lsrs	r3, r3, #1
    17b2:	71fb      	strb	r3, [r7, #7]
    17b4:	e005      	b.n	17c2 <btn_idx+0x22>
    17b6:	7bfb      	ldrb	r3, [r7, #15]
    17b8:	3301      	adds	r3, #1
    17ba:	73fb      	strb	r3, [r7, #15]
    17bc:	79fb      	ldrb	r3, [r7, #7]
    17be:	085b      	lsrs	r3, r3, #1
    17c0:	71fb      	strb	r3, [r7, #7]
    17c2:	79fb      	ldrb	r3, [r7, #7]
    17c4:	2b00      	cmp	r3, #0
    17c6:	d1f6      	bne.n	17b6 <btn_idx+0x16>
    17c8:	7bfb      	ldrb	r3, [r7, #15]
    17ca:	4618      	mov	r0, r3
    17cc:	3714      	adds	r7, #20
    17ce:	46bd      	mov	sp, r7
    17d0:	bc80      	pop	{r7}
    17d2:	4770      	bx	lr

000017d4 <btn_mask>:
    17d4:	b480      	push	{r7}
    17d6:	b085      	sub	sp, #20
    17d8:	af00      	add	r7, sp, #0
    17da:	4603      	mov	r3, r0
    17dc:	71fb      	strb	r3, [r7, #7]
    17de:	2300      	movs	r3, #0
    17e0:	60fb      	str	r3, [r7, #12]
    17e2:	e00f      	b.n	1804 <btn_mask+0x30>
    17e4:	4a0c      	ldr	r2, [pc, #48]	; (1818 <btn_mask+0x44>)
    17e6:	68fb      	ldr	r3, [r7, #12]
    17e8:	4413      	add	r3, r2
    17ea:	781b      	ldrb	r3, [r3, #0]
    17ec:	79fa      	ldrb	r2, [r7, #7]
    17ee:	429a      	cmp	r2, r3
    17f0:	d105      	bne.n	17fe <btn_mask+0x2a>
    17f2:	2201      	movs	r2, #1
    17f4:	68fb      	ldr	r3, [r7, #12]
    17f6:	fa02 f303 	lsl.w	r3, r2, r3
    17fa:	b2db      	uxtb	r3, r3
    17fc:	e006      	b.n	180c <btn_mask+0x38>
    17fe:	68fb      	ldr	r3, [r7, #12]
    1800:	3301      	adds	r3, #1
    1802:	60fb      	str	r3, [r7, #12]
    1804:	68fb      	ldr	r3, [r7, #12]
    1806:	2b07      	cmp	r3, #7
    1808:	ddec      	ble.n	17e4 <btn_mask+0x10>
    180a:	23ff      	movs	r3, #255	; 0xff
    180c:	4618      	mov	r0, r3
    180e:	3714      	adds	r7, #20
    1810:	46bd      	mov	sp, r7
    1812:	bc80      	pop	{r7}
    1814:	4770      	bx	lr
    1816:	bf00      	nop
    1818:	20000654 	.word	0x20000654

0000181c <set_keymap>:
    181c:	b480      	push	{r7}
    181e:	b085      	sub	sp, #20
    1820:	af00      	add	r7, sp, #0
    1822:	6078      	str	r0, [r7, #4]
    1824:	2300      	movs	r3, #0
    1826:	60fb      	str	r3, [r7, #12]
    1828:	e00b      	b.n	1842 <set_keymap+0x26>
    182a:	68fb      	ldr	r3, [r7, #12]
    182c:	687a      	ldr	r2, [r7, #4]
    182e:	4413      	add	r3, r2
    1830:	7819      	ldrb	r1, [r3, #0]
    1832:	4a08      	ldr	r2, [pc, #32]	; (1854 <set_keymap+0x38>)
    1834:	68fb      	ldr	r3, [r7, #12]
    1836:	4413      	add	r3, r2
    1838:	460a      	mov	r2, r1
    183a:	701a      	strb	r2, [r3, #0]
    183c:	68fb      	ldr	r3, [r7, #12]
    183e:	3301      	adds	r3, #1
    1840:	60fb      	str	r3, [r7, #12]
    1842:	68fb      	ldr	r3, [r7, #12]
    1844:	2b07      	cmp	r3, #7
    1846:	ddf0      	ble.n	182a <set_keymap+0xe>
    1848:	bf00      	nop
    184a:	3714      	adds	r7, #20
    184c:	46bd      	mov	sp, r7
    184e:	bc80      	pop	{r7}
    1850:	4770      	bx	lr
    1852:	bf00      	nop
    1854:	20000654 	.word	0x20000654

00001858 <gamepad_init>:
    1858:	b580      	push	{r7, lr}
    185a:	af00      	add	r7, sp, #0
    185c:	2202      	movs	r2, #2
    185e:	210f      	movs	r1, #15
    1860:	480a      	ldr	r0, [pc, #40]	; (188c <gamepad_init+0x34>)
    1862:	f000 fb93 	bl	1f8c <config_pin>
    1866:	2202      	movs	r2, #2
    1868:	210d      	movs	r1, #13
    186a:	4808      	ldr	r0, [pc, #32]	; (188c <gamepad_init+0x34>)
    186c:	f000 fb8e 	bl	1f8c <config_pin>
    1870:	2208      	movs	r2, #8
    1872:	210e      	movs	r1, #14
    1874:	4805      	ldr	r0, [pc, #20]	; (188c <gamepad_init+0x34>)
    1876:	f000 fb89 	bl	1f8c <config_pin>
    187a:	4b05      	ldr	r3, [pc, #20]	; (1890 <gamepad_init+0x38>)
    187c:	22ff      	movs	r2, #255	; 0xff
    187e:	701a      	strb	r2, [r3, #0]
    1880:	4804      	ldr	r0, [pc, #16]	; (1894 <gamepad_init+0x3c>)
    1882:	f7ff ffcb 	bl	181c <set_keymap>
    1886:	bf00      	nop
    1888:	bd80      	pop	{r7, pc}
    188a:	bf00      	nop
    188c:	40010c00 	.word	0x40010c00
    1890:	2000267c 	.word	0x2000267c
    1894:	000058a8 	.word	0x000058a8

00001898 <count_zeros>:
    1898:	b480      	push	{r7}
    189a:	b085      	sub	sp, #20
    189c:	af00      	add	r7, sp, #0
    189e:	4603      	mov	r3, r0
    18a0:	71fb      	strb	r3, [r7, #7]
    18a2:	2300      	movs	r3, #0
    18a4:	60fb      	str	r3, [r7, #12]
    18a6:	e00a      	b.n	18be <count_zeros+0x26>
    18a8:	79fb      	ldrb	r3, [r7, #7]
    18aa:	f003 0301 	and.w	r3, r3, #1
    18ae:	2b00      	cmp	r3, #0
    18b0:	d102      	bne.n	18b8 <count_zeros+0x20>
    18b2:	68fb      	ldr	r3, [r7, #12]
    18b4:	3301      	adds	r3, #1
    18b6:	60fb      	str	r3, [r7, #12]
    18b8:	79fb      	ldrb	r3, [r7, #7]
    18ba:	085b      	lsrs	r3, r3, #1
    18bc:	71fb      	strb	r3, [r7, #7]
    18be:	79fb      	ldrb	r3, [r7, #7]
    18c0:	2b00      	cmp	r3, #0
    18c2:	d1f1      	bne.n	18a8 <count_zeros+0x10>
    18c4:	68fb      	ldr	r3, [r7, #12]
    18c6:	4618      	mov	r0, r3
    18c8:	3714      	adds	r7, #20
    18ca:	46bd      	mov	sp, r7
    18cc:	bc80      	pop	{r7}
    18ce:	4770      	bx	lr

000018d0 <shift_out>:
    18d0:	b480      	push	{r7}
    18d2:	b085      	sub	sp, #20
    18d4:	af00      	add	r7, sp, #0
    18d6:	4603      	mov	r3, r0
    18d8:	71fb      	strb	r3, [r7, #7]
    18da:	2301      	movs	r3, #1
    18dc:	73fb      	strb	r3, [r7, #15]
    18de:	2300      	movs	r3, #0
    18e0:	73bb      	strb	r3, [r7, #14]
    18e2:	e033      	b.n	194c <shift_out+0x7c>
    18e4:	79fa      	ldrb	r2, [r7, #7]
    18e6:	7bfb      	ldrb	r3, [r7, #15]
    18e8:	4013      	ands	r3, r2
    18ea:	b2db      	uxtb	r3, r3
    18ec:	2b00      	cmp	r3, #0
    18ee:	d006      	beq.n	18fe <shift_out+0x2e>
    18f0:	4a25      	ldr	r2, [pc, #148]	; (1988 <shift_out+0xb8>)
    18f2:	4b25      	ldr	r3, [pc, #148]	; (1988 <shift_out+0xb8>)
    18f4:	68db      	ldr	r3, [r3, #12]
    18f6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    18fa:	60d3      	str	r3, [r2, #12]
    18fc:	e005      	b.n	190a <shift_out+0x3a>
    18fe:	4a22      	ldr	r2, [pc, #136]	; (1988 <shift_out+0xb8>)
    1900:	4b21      	ldr	r3, [pc, #132]	; (1988 <shift_out+0xb8>)
    1902:	68db      	ldr	r3, [r3, #12]
    1904:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    1908:	60d3      	str	r3, [r2, #12]
    190a:	4a1f      	ldr	r2, [pc, #124]	; (1988 <shift_out+0xb8>)
    190c:	4b1e      	ldr	r3, [pc, #120]	; (1988 <shift_out+0xb8>)
    190e:	68db      	ldr	r3, [r3, #12]
    1910:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1914:	60d3      	str	r3, [r2, #12]
    1916:	bf00      	nop
    1918:	bf00      	nop
    191a:	bf00      	nop
    191c:	4a1a      	ldr	r2, [pc, #104]	; (1988 <shift_out+0xb8>)
    191e:	4b1a      	ldr	r3, [pc, #104]	; (1988 <shift_out+0xb8>)
    1920:	68db      	ldr	r3, [r3, #12]
    1922:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1926:	60d3      	str	r3, [r2, #12]
    1928:	7bbb      	ldrb	r3, [r7, #14]
    192a:	085b      	lsrs	r3, r3, #1
    192c:	73bb      	strb	r3, [r7, #14]
    192e:	4a16      	ldr	r2, [pc, #88]	; (1988 <shift_out+0xb8>)
    1930:	4b15      	ldr	r3, [pc, #84]	; (1988 <shift_out+0xb8>)
    1932:	689b      	ldr	r3, [r3, #8]
    1934:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    1938:	6093      	str	r3, [r2, #8]
    193a:	2b00      	cmp	r3, #0
    193c:	d003      	beq.n	1946 <shift_out+0x76>
    193e:	7bbb      	ldrb	r3, [r7, #14]
    1940:	f063 037f 	orn	r3, r3, #127	; 0x7f
    1944:	73bb      	strb	r3, [r7, #14]
    1946:	7bfb      	ldrb	r3, [r7, #15]
    1948:	005b      	lsls	r3, r3, #1
    194a:	73fb      	strb	r3, [r7, #15]
    194c:	7bfb      	ldrb	r3, [r7, #15]
    194e:	2b00      	cmp	r3, #0
    1950:	d1c8      	bne.n	18e4 <shift_out+0x14>
    1952:	4a0d      	ldr	r2, [pc, #52]	; (1988 <shift_out+0xb8>)
    1954:	4b0c      	ldr	r3, [pc, #48]	; (1988 <shift_out+0xb8>)
    1956:	68db      	ldr	r3, [r3, #12]
    1958:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    195c:	60d3      	str	r3, [r2, #12]
    195e:	4a0a      	ldr	r2, [pc, #40]	; (1988 <shift_out+0xb8>)
    1960:	4b09      	ldr	r3, [pc, #36]	; (1988 <shift_out+0xb8>)
    1962:	68db      	ldr	r3, [r3, #12]
    1964:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1968:	60d3      	str	r3, [r2, #12]
    196a:	bf00      	nop
    196c:	bf00      	nop
    196e:	bf00      	nop
    1970:	4a05      	ldr	r2, [pc, #20]	; (1988 <shift_out+0xb8>)
    1972:	4b05      	ldr	r3, [pc, #20]	; (1988 <shift_out+0xb8>)
    1974:	68db      	ldr	r3, [r3, #12]
    1976:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    197a:	60d3      	str	r3, [r2, #12]
    197c:	7bbb      	ldrb	r3, [r7, #14]
    197e:	4618      	mov	r0, r3
    1980:	3714      	adds	r7, #20
    1982:	46bd      	mov	sp, r7
    1984:	bc80      	pop	{r7}
    1986:	4770      	bx	lr
    1988:	40010c00 	.word	0x40010c00

0000198c <read_gamepad>:
    198c:	b580      	push	{r7, lr}
    198e:	af00      	add	r7, sp, #0
    1990:	20fe      	movs	r0, #254	; 0xfe
    1992:	f7ff ff9d 	bl	18d0 <shift_out>
    1996:	4603      	mov	r3, r0
    1998:	461a      	mov	r2, r3
    199a:	4b07      	ldr	r3, [pc, #28]	; (19b8 <read_gamepad+0x2c>)
    199c:	701a      	strb	r2, [r3, #0]
    199e:	4b06      	ldr	r3, [pc, #24]	; (19b8 <read_gamepad+0x2c>)
    19a0:	781b      	ldrb	r3, [r3, #0]
    19a2:	b2db      	uxtb	r3, r3
    19a4:	f003 0312 	and.w	r3, r3, #18
    19a8:	2b00      	cmp	r3, #0
    19aa:	d102      	bne.n	19b2 <read_gamepad+0x26>
    19ac:	4b03      	ldr	r3, [pc, #12]	; (19bc <read_gamepad+0x30>)
    19ae:	4a04      	ldr	r2, [pc, #16]	; (19c0 <read_gamepad+0x34>)
    19b0:	601a      	str	r2, [r3, #0]
    19b2:	bf00      	nop
    19b4:	bd80      	pop	{r7, pc}
    19b6:	bf00      	nop
    19b8:	2000267c 	.word	0x2000267c
    19bc:	e000ed0c 	.word	0xe000ed0c
    19c0:	05fa0004 	.word	0x05fa0004

000019c4 <btn_query_down>:
    19c4:	b580      	push	{r7, lr}
    19c6:	b084      	sub	sp, #16
    19c8:	af00      	add	r7, sp, #0
    19ca:	4603      	mov	r3, r0
    19cc:	71fb      	strb	r3, [r7, #7]
    19ce:	79fb      	ldrb	r3, [r7, #7]
    19d0:	4618      	mov	r0, r3
    19d2:	f7ff feff 	bl	17d4 <btn_mask>
    19d6:	4603      	mov	r3, r0
    19d8:	73fb      	strb	r3, [r7, #15]
    19da:	4b07      	ldr	r3, [pc, #28]	; (19f8 <btn_query_down+0x34>)
    19dc:	781b      	ldrb	r3, [r3, #0]
    19de:	b2da      	uxtb	r2, r3
    19e0:	7bfb      	ldrb	r3, [r7, #15]
    19e2:	4013      	ands	r3, r2
    19e4:	b2db      	uxtb	r3, r3
    19e6:	2b00      	cmp	r3, #0
    19e8:	bf0c      	ite	eq
    19ea:	2301      	moveq	r3, #1
    19ec:	2300      	movne	r3, #0
    19ee:	b2db      	uxtb	r3, r3
    19f0:	4618      	mov	r0, r3
    19f2:	3710      	adds	r7, #16
    19f4:	46bd      	mov	sp, r7
    19f6:	bd80      	pop	{r7, pc}
    19f8:	2000267c 	.word	0x2000267c

000019fc <btn_wait_down>:
    19fc:	b580      	push	{r7, lr}
    19fe:	b084      	sub	sp, #16
    1a00:	af00      	add	r7, sp, #0
    1a02:	4603      	mov	r3, r0
    1a04:	71fb      	strb	r3, [r7, #7]
    1a06:	79fb      	ldrb	r3, [r7, #7]
    1a08:	4618      	mov	r0, r3
    1a0a:	f7ff fee3 	bl	17d4 <btn_mask>
    1a0e:	4603      	mov	r3, r0
    1a10:	72fb      	strb	r3, [r7, #11]
    1a12:	2300      	movs	r3, #0
    1a14:	60fb      	str	r3, [r7, #12]
    1a16:	e00f      	b.n	1a38 <btn_wait_down+0x3c>
    1a18:	f003 fc2e 	bl	5278 <frame_sync>
    1a1c:	4b0a      	ldr	r3, [pc, #40]	; (1a48 <btn_wait_down+0x4c>)
    1a1e:	781b      	ldrb	r3, [r3, #0]
    1a20:	b2da      	uxtb	r2, r3
    1a22:	7afb      	ldrb	r3, [r7, #11]
    1a24:	4013      	ands	r3, r2
    1a26:	b2db      	uxtb	r3, r3
    1a28:	2b00      	cmp	r3, #0
    1a2a:	d103      	bne.n	1a34 <btn_wait_down+0x38>
    1a2c:	68fb      	ldr	r3, [r7, #12]
    1a2e:	3301      	adds	r3, #1
    1a30:	60fb      	str	r3, [r7, #12]
    1a32:	e001      	b.n	1a38 <btn_wait_down+0x3c>
    1a34:	2300      	movs	r3, #0
    1a36:	60fb      	str	r3, [r7, #12]
    1a38:	68fb      	ldr	r3, [r7, #12]
    1a3a:	2b02      	cmp	r3, #2
    1a3c:	ddec      	ble.n	1a18 <btn_wait_down+0x1c>
    1a3e:	bf00      	nop
    1a40:	3710      	adds	r7, #16
    1a42:	46bd      	mov	sp, r7
    1a44:	bd80      	pop	{r7, pc}
    1a46:	bf00      	nop
    1a48:	2000267c 	.word	0x2000267c

00001a4c <btn_wait_up>:
    1a4c:	b580      	push	{r7, lr}
    1a4e:	b084      	sub	sp, #16
    1a50:	af00      	add	r7, sp, #0
    1a52:	4603      	mov	r3, r0
    1a54:	71fb      	strb	r3, [r7, #7]
    1a56:	79fb      	ldrb	r3, [r7, #7]
    1a58:	4618      	mov	r0, r3
    1a5a:	f7ff febb 	bl	17d4 <btn_mask>
    1a5e:	4603      	mov	r3, r0
    1a60:	72fb      	strb	r3, [r7, #11]
    1a62:	2300      	movs	r3, #0
    1a64:	60fb      	str	r3, [r7, #12]
    1a66:	e00f      	b.n	1a88 <btn_wait_up+0x3c>
    1a68:	f003 fc06 	bl	5278 <frame_sync>
    1a6c:	4b0a      	ldr	r3, [pc, #40]	; (1a98 <btn_wait_up+0x4c>)
    1a6e:	781b      	ldrb	r3, [r3, #0]
    1a70:	b2da      	uxtb	r2, r3
    1a72:	7afb      	ldrb	r3, [r7, #11]
    1a74:	4013      	ands	r3, r2
    1a76:	b2db      	uxtb	r3, r3
    1a78:	2b00      	cmp	r3, #0
    1a7a:	d003      	beq.n	1a84 <btn_wait_up+0x38>
    1a7c:	68fb      	ldr	r3, [r7, #12]
    1a7e:	3301      	adds	r3, #1
    1a80:	60fb      	str	r3, [r7, #12]
    1a82:	e001      	b.n	1a88 <btn_wait_up+0x3c>
    1a84:	2300      	movs	r3, #0
    1a86:	60fb      	str	r3, [r7, #12]
    1a88:	68fb      	ldr	r3, [r7, #12]
    1a8a:	2b02      	cmp	r3, #2
    1a8c:	ddec      	ble.n	1a68 <btn_wait_up+0x1c>
    1a8e:	bf00      	nop
    1a90:	3710      	adds	r7, #16
    1a92:	46bd      	mov	sp, r7
    1a94:	bd80      	pop	{r7, pc}
    1a96:	bf00      	nop
    1a98:	2000267c 	.word	0x2000267c

00001a9c <btn_wait_any>:
    1a9c:	b580      	push	{r7, lr}
    1a9e:	b082      	sub	sp, #8
    1aa0:	af00      	add	r7, sp, #0
    1aa2:	4b16      	ldr	r3, [pc, #88]	; (1afc <btn_wait_any+0x60>)
    1aa4:	781b      	ldrb	r3, [r3, #0]
    1aa6:	71fb      	strb	r3, [r7, #7]
    1aa8:	2300      	movs	r3, #0
    1aaa:	603b      	str	r3, [r7, #0]
    1aac:	e015      	b.n	1ada <btn_wait_any+0x3e>
    1aae:	f003 fbe3 	bl	5278 <frame_sync>
    1ab2:	4b12      	ldr	r3, [pc, #72]	; (1afc <btn_wait_any+0x60>)
    1ab4:	781b      	ldrb	r3, [r3, #0]
    1ab6:	b2db      	uxtb	r3, r3
    1ab8:	79fa      	ldrb	r2, [r7, #7]
    1aba:	429a      	cmp	r2, r3
    1abc:	d005      	beq.n	1aca <btn_wait_any+0x2e>
    1abe:	2300      	movs	r3, #0
    1ac0:	603b      	str	r3, [r7, #0]
    1ac2:	4b0e      	ldr	r3, [pc, #56]	; (1afc <btn_wait_any+0x60>)
    1ac4:	781b      	ldrb	r3, [r3, #0]
    1ac6:	71fb      	strb	r3, [r7, #7]
    1ac8:	e007      	b.n	1ada <btn_wait_any+0x3e>
    1aca:	4b0c      	ldr	r3, [pc, #48]	; (1afc <btn_wait_any+0x60>)
    1acc:	781b      	ldrb	r3, [r3, #0]
    1ace:	b2db      	uxtb	r3, r3
    1ad0:	2bff      	cmp	r3, #255	; 0xff
    1ad2:	d002      	beq.n	1ada <btn_wait_any+0x3e>
    1ad4:	683b      	ldr	r3, [r7, #0]
    1ad6:	3301      	adds	r3, #1
    1ad8:	603b      	str	r3, [r7, #0]
    1ada:	683b      	ldr	r3, [r7, #0]
    1adc:	2b02      	cmp	r3, #2
    1ade:	dde6      	ble.n	1aae <btn_wait_any+0x12>
    1ae0:	79fb      	ldrb	r3, [r7, #7]
    1ae2:	43db      	mvns	r3, r3
    1ae4:	b2db      	uxtb	r3, r3
    1ae6:	4618      	mov	r0, r3
    1ae8:	f7ff fe5a 	bl	17a0 <btn_idx>
    1aec:	4603      	mov	r3, r0
    1aee:	461a      	mov	r2, r3
    1af0:	4b03      	ldr	r3, [pc, #12]	; (1b00 <btn_wait_any+0x64>)
    1af2:	5c9b      	ldrb	r3, [r3, r2]
    1af4:	4618      	mov	r0, r3
    1af6:	3708      	adds	r7, #8
    1af8:	46bd      	mov	sp, r7
    1afa:	bd80      	pop	{r7, pc}
    1afc:	2000267c 	.word	0x2000267c
    1b00:	20000654 	.word	0x20000654

00001b04 <btn_set_value>:
    1b04:	b480      	push	{r7}
    1b06:	b083      	sub	sp, #12
    1b08:	af00      	add	r7, sp, #0
    1b0a:	4603      	mov	r3, r0
    1b0c:	460a      	mov	r2, r1
    1b0e:	71fb      	strb	r3, [r7, #7]
    1b10:	4613      	mov	r3, r2
    1b12:	71bb      	strb	r3, [r7, #6]
    1b14:	79fb      	ldrb	r3, [r7, #7]
    1b16:	4904      	ldr	r1, [pc, #16]	; (1b28 <btn_set_value+0x24>)
    1b18:	79ba      	ldrb	r2, [r7, #6]
    1b1a:	54ca      	strb	r2, [r1, r3]
    1b1c:	bf00      	nop
    1b1e:	370c      	adds	r7, #12
    1b20:	46bd      	mov	sp, r7
    1b22:	bc80      	pop	{r7}
    1b24:	4770      	bx	lr
    1b26:	bf00      	nop
    1b28:	20000654 	.word	0x20000654

00001b2c <get_keymap>:
    1b2c:	b480      	push	{r7}
    1b2e:	af00      	add	r7, sp, #0
    1b30:	4b02      	ldr	r3, [pc, #8]	; (1b3c <get_keymap+0x10>)
    1b32:	4618      	mov	r0, r3
    1b34:	46bd      	mov	sp, r7
    1b36:	bc80      	pop	{r7}
    1b38:	4770      	bx	lr
    1b3a:	bf00      	nop
    1b3c:	20000654 	.word	0x20000654

00001b40 <games_count>:
    1b40:	b480      	push	{r7}
    1b42:	b083      	sub	sp, #12
    1b44:	af00      	add	r7, sp, #0
    1b46:	2300      	movs	r3, #0
    1b48:	607b      	str	r3, [r7, #4]
    1b4a:	490b      	ldr	r1, [pc, #44]	; (1b78 <games_count+0x38>)
    1b4c:	687a      	ldr	r2, [r7, #4]
    1b4e:	4613      	mov	r3, r2
    1b50:	00db      	lsls	r3, r3, #3
    1b52:	1a9b      	subs	r3, r3, r2
    1b54:	009b      	lsls	r3, r3, #2
    1b56:	440b      	add	r3, r1
    1b58:	3310      	adds	r3, #16
    1b5a:	681b      	ldr	r3, [r3, #0]
    1b5c:	2b00      	cmp	r3, #0
    1b5e:	d003      	beq.n	1b68 <games_count+0x28>
    1b60:	687b      	ldr	r3, [r7, #4]
    1b62:	3301      	adds	r3, #1
    1b64:	607b      	str	r3, [r7, #4]
    1b66:	e7f0      	b.n	1b4a <games_count+0xa>
    1b68:	bf00      	nop
    1b6a:	687b      	ldr	r3, [r7, #4]
    1b6c:	4618      	mov	r0, r3
    1b6e:	370c      	adds	r7, #12
    1b70:	46bd      	mov	sp, r7
    1b72:	bc80      	pop	{r7}
    1b74:	4770      	bx	lr
    1b76:	bf00      	nop
    1b78:	20000008 	.word	0x20000008

00001b7c <strcmp>:
    1b7c:	b480      	push	{r7}
    1b7e:	b085      	sub	sp, #20
    1b80:	af00      	add	r7, sp, #0
    1b82:	6078      	str	r0, [r7, #4]
    1b84:	6039      	str	r1, [r7, #0]
    1b86:	2300      	movs	r3, #0
    1b88:	60fb      	str	r3, [r7, #12]
    1b8a:	e018      	b.n	1bbe <strcmp+0x42>
    1b8c:	687b      	ldr	r3, [r7, #4]
    1b8e:	781a      	ldrb	r2, [r3, #0]
    1b90:	683b      	ldr	r3, [r7, #0]
    1b92:	781b      	ldrb	r3, [r3, #0]
    1b94:	429a      	cmp	r2, r3
    1b96:	d203      	bcs.n	1ba0 <strcmp+0x24>
    1b98:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1b9c:	60fb      	str	r3, [r7, #12]
    1b9e:	e016      	b.n	1bce <strcmp+0x52>
    1ba0:	687b      	ldr	r3, [r7, #4]
    1ba2:	781a      	ldrb	r2, [r3, #0]
    1ba4:	683b      	ldr	r3, [r7, #0]
    1ba6:	781b      	ldrb	r3, [r3, #0]
    1ba8:	429a      	cmp	r2, r3
    1baa:	d902      	bls.n	1bb2 <strcmp+0x36>
    1bac:	2301      	movs	r3, #1
    1bae:	60fb      	str	r3, [r7, #12]
    1bb0:	e00d      	b.n	1bce <strcmp+0x52>
    1bb2:	687b      	ldr	r3, [r7, #4]
    1bb4:	3301      	adds	r3, #1
    1bb6:	607b      	str	r3, [r7, #4]
    1bb8:	683b      	ldr	r3, [r7, #0]
    1bba:	3301      	adds	r3, #1
    1bbc:	603b      	str	r3, [r7, #0]
    1bbe:	687b      	ldr	r3, [r7, #4]
    1bc0:	781b      	ldrb	r3, [r3, #0]
    1bc2:	2b00      	cmp	r3, #0
    1bc4:	d003      	beq.n	1bce <strcmp+0x52>
    1bc6:	683b      	ldr	r3, [r7, #0]
    1bc8:	781b      	ldrb	r3, [r3, #0]
    1bca:	2b00      	cmp	r3, #0
    1bcc:	d1de      	bne.n	1b8c <strcmp+0x10>
    1bce:	68fb      	ldr	r3, [r7, #12]
    1bd0:	2b00      	cmp	r3, #0
    1bd2:	d115      	bne.n	1c00 <strcmp+0x84>
    1bd4:	687b      	ldr	r3, [r7, #4]
    1bd6:	781b      	ldrb	r3, [r3, #0]
    1bd8:	2b00      	cmp	r3, #0
    1bda:	d107      	bne.n	1bec <strcmp+0x70>
    1bdc:	683b      	ldr	r3, [r7, #0]
    1bde:	781b      	ldrb	r3, [r3, #0]
    1be0:	2b00      	cmp	r3, #0
    1be2:	d003      	beq.n	1bec <strcmp+0x70>
    1be4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1be8:	60fb      	str	r3, [r7, #12]
    1bea:	e009      	b.n	1c00 <strcmp+0x84>
    1bec:	687b      	ldr	r3, [r7, #4]
    1bee:	781b      	ldrb	r3, [r3, #0]
    1bf0:	2b00      	cmp	r3, #0
    1bf2:	d005      	beq.n	1c00 <strcmp+0x84>
    1bf4:	683b      	ldr	r3, [r7, #0]
    1bf6:	781b      	ldrb	r3, [r3, #0]
    1bf8:	2b00      	cmp	r3, #0
    1bfa:	d101      	bne.n	1c00 <strcmp+0x84>
    1bfc:	2301      	movs	r3, #1
    1bfe:	60fb      	str	r3, [r7, #12]
    1c00:	68fb      	ldr	r3, [r7, #12]
    1c02:	4618      	mov	r0, r3
    1c04:	3714      	adds	r7, #20
    1c06:	46bd      	mov	sp, r7
    1c08:	bc80      	pop	{r7}
    1c0a:	4770      	bx	lr

00001c0c <alpha>:
    1c0c:	b480      	push	{r7}
    1c0e:	b083      	sub	sp, #12
    1c10:	af00      	add	r7, sp, #0
    1c12:	4603      	mov	r3, r0
    1c14:	71fb      	strb	r3, [r7, #7]
    1c16:	79fb      	ldrb	r3, [r7, #7]
    1c18:	2b60      	cmp	r3, #96	; 0x60
    1c1a:	d902      	bls.n	1c22 <alpha+0x16>
    1c1c:	79fb      	ldrb	r3, [r7, #7]
    1c1e:	2b7a      	cmp	r3, #122	; 0x7a
    1c20:	d905      	bls.n	1c2e <alpha+0x22>
    1c22:	79fb      	ldrb	r3, [r7, #7]
    1c24:	2b40      	cmp	r3, #64	; 0x40
    1c26:	d904      	bls.n	1c32 <alpha+0x26>
    1c28:	79fb      	ldrb	r3, [r7, #7]
    1c2a:	2b5a      	cmp	r3, #90	; 0x5a
    1c2c:	d801      	bhi.n	1c32 <alpha+0x26>
    1c2e:	2301      	movs	r3, #1
    1c30:	e000      	b.n	1c34 <alpha+0x28>
    1c32:	2300      	movs	r3, #0
    1c34:	4618      	mov	r0, r3
    1c36:	370c      	adds	r7, #12
    1c38:	46bd      	mov	sp, r7
    1c3a:	bc80      	pop	{r7}
    1c3c:	4770      	bx	lr

00001c3e <digit>:
    1c3e:	b480      	push	{r7}
    1c40:	b083      	sub	sp, #12
    1c42:	af00      	add	r7, sp, #0
    1c44:	4603      	mov	r3, r0
    1c46:	71fb      	strb	r3, [r7, #7]
    1c48:	79fb      	ldrb	r3, [r7, #7]
    1c4a:	2b2f      	cmp	r3, #47	; 0x2f
    1c4c:	d904      	bls.n	1c58 <digit+0x1a>
    1c4e:	79fb      	ldrb	r3, [r7, #7]
    1c50:	2b39      	cmp	r3, #57	; 0x39
    1c52:	d801      	bhi.n	1c58 <digit+0x1a>
    1c54:	2301      	movs	r3, #1
    1c56:	e000      	b.n	1c5a <digit+0x1c>
    1c58:	2300      	movs	r3, #0
    1c5a:	4618      	mov	r0, r3
    1c5c:	370c      	adds	r7, #12
    1c5e:	46bd      	mov	sp, r7
    1c60:	bc80      	pop	{r7}
    1c62:	4770      	bx	lr

00001c64 <hexdigit>:
    1c64:	b580      	push	{r7, lr}
    1c66:	b082      	sub	sp, #8
    1c68:	af00      	add	r7, sp, #0
    1c6a:	4603      	mov	r3, r0
    1c6c:	71fb      	strb	r3, [r7, #7]
    1c6e:	79fb      	ldrb	r3, [r7, #7]
    1c70:	2b60      	cmp	r3, #96	; 0x60
    1c72:	d902      	bls.n	1c7a <hexdigit+0x16>
    1c74:	79fb      	ldrb	r3, [r7, #7]
    1c76:	3b20      	subs	r3, #32
    1c78:	71fb      	strb	r3, [r7, #7]
    1c7a:	79fb      	ldrb	r3, [r7, #7]
    1c7c:	4618      	mov	r0, r3
    1c7e:	f7ff ffde 	bl	1c3e <digit>
    1c82:	4603      	mov	r3, r0
    1c84:	2b00      	cmp	r3, #0
    1c86:	d105      	bne.n	1c94 <hexdigit+0x30>
    1c88:	79fb      	ldrb	r3, [r7, #7]
    1c8a:	2b40      	cmp	r3, #64	; 0x40
    1c8c:	d904      	bls.n	1c98 <hexdigit+0x34>
    1c8e:	79fb      	ldrb	r3, [r7, #7]
    1c90:	2b46      	cmp	r3, #70	; 0x46
    1c92:	d801      	bhi.n	1c98 <hexdigit+0x34>
    1c94:	2301      	movs	r3, #1
    1c96:	e000      	b.n	1c9a <hexdigit+0x36>
    1c98:	2300      	movs	r3, #0
    1c9a:	4618      	mov	r0, r3
    1c9c:	3708      	adds	r7, #8
    1c9e:	46bd      	mov	sp, r7
    1ca0:	bd80      	pop	{r7, pc}

00001ca2 <atoi>:
    1ca2:	b580      	push	{r7, lr}
    1ca4:	b086      	sub	sp, #24
    1ca6:	af00      	add	r7, sp, #0
    1ca8:	6078      	str	r0, [r7, #4]
    1caa:	2300      	movs	r3, #0
    1cac:	617b      	str	r3, [r7, #20]
    1cae:	2301      	movs	r3, #1
    1cb0:	613b      	str	r3, [r7, #16]
    1cb2:	230a      	movs	r3, #10
    1cb4:	60fb      	str	r3, [r7, #12]
    1cb6:	e002      	b.n	1cbe <atoi+0x1c>
    1cb8:	687b      	ldr	r3, [r7, #4]
    1cba:	3301      	adds	r3, #1
    1cbc:	607b      	str	r3, [r7, #4]
    1cbe:	687b      	ldr	r3, [r7, #4]
    1cc0:	781b      	ldrb	r3, [r3, #0]
    1cc2:	2b00      	cmp	r3, #0
    1cc4:	d003      	beq.n	1cce <atoi+0x2c>
    1cc6:	687b      	ldr	r3, [r7, #4]
    1cc8:	781b      	ldrb	r3, [r3, #0]
    1cca:	2b20      	cmp	r3, #32
    1ccc:	d0f4      	beq.n	1cb8 <atoi+0x16>
    1cce:	687b      	ldr	r3, [r7, #4]
    1cd0:	781b      	ldrb	r3, [r3, #0]
    1cd2:	2b2d      	cmp	r3, #45	; 0x2d
    1cd4:	d105      	bne.n	1ce2 <atoi+0x40>
    1cd6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1cda:	613b      	str	r3, [r7, #16]
    1cdc:	687b      	ldr	r3, [r7, #4]
    1cde:	3301      	adds	r3, #1
    1ce0:	607b      	str	r3, [r7, #4]
    1ce2:	687b      	ldr	r3, [r7, #4]
    1ce4:	781b      	ldrb	r3, [r3, #0]
    1ce6:	2b24      	cmp	r3, #36	; 0x24
    1ce8:	d10e      	bne.n	1d08 <atoi+0x66>
    1cea:	687b      	ldr	r3, [r7, #4]
    1cec:	3301      	adds	r3, #1
    1cee:	781b      	ldrb	r3, [r3, #0]
    1cf0:	4618      	mov	r0, r3
    1cf2:	f7ff ffb7 	bl	1c64 <hexdigit>
    1cf6:	4603      	mov	r3, r0
    1cf8:	2b00      	cmp	r3, #0
    1cfa:	d005      	beq.n	1d08 <atoi+0x66>
    1cfc:	2310      	movs	r3, #16
    1cfe:	60fb      	str	r3, [r7, #12]
    1d00:	687b      	ldr	r3, [r7, #4]
    1d02:	3301      	adds	r3, #1
    1d04:	607b      	str	r3, [r7, #4]
    1d06:	e012      	b.n	1d2e <atoi+0x8c>
    1d08:	687b      	ldr	r3, [r7, #4]
    1d0a:	781b      	ldrb	r3, [r3, #0]
    1d0c:	2b30      	cmp	r3, #48	; 0x30
    1d0e:	d128      	bne.n	1d62 <atoi+0xc0>
    1d10:	687b      	ldr	r3, [r7, #4]
    1d12:	3301      	adds	r3, #1
    1d14:	781b      	ldrb	r3, [r3, #0]
    1d16:	2b78      	cmp	r3, #120	; 0x78
    1d18:	d004      	beq.n	1d24 <atoi+0x82>
    1d1a:	687b      	ldr	r3, [r7, #4]
    1d1c:	3301      	adds	r3, #1
    1d1e:	781b      	ldrb	r3, [r3, #0]
    1d20:	2b58      	cmp	r3, #88	; 0x58
    1d22:	d11e      	bne.n	1d62 <atoi+0xc0>
    1d24:	2310      	movs	r3, #16
    1d26:	60fb      	str	r3, [r7, #12]
    1d28:	687b      	ldr	r3, [r7, #4]
    1d2a:	3302      	adds	r3, #2
    1d2c:	607b      	str	r3, [r7, #4]
    1d2e:	e018      	b.n	1d62 <atoi+0xc0>
    1d30:	7afb      	ldrb	r3, [r7, #11]
    1d32:	2b60      	cmp	r3, #96	; 0x60
    1d34:	d902      	bls.n	1d3c <atoi+0x9a>
    1d36:	7afb      	ldrb	r3, [r7, #11]
    1d38:	3b20      	subs	r3, #32
    1d3a:	72fb      	strb	r3, [r7, #11]
    1d3c:	7afb      	ldrb	r3, [r7, #11]
    1d3e:	3b30      	subs	r3, #48	; 0x30
    1d40:	72fb      	strb	r3, [r7, #11]
    1d42:	7afb      	ldrb	r3, [r7, #11]
    1d44:	2b09      	cmp	r3, #9
    1d46:	d902      	bls.n	1d4e <atoi+0xac>
    1d48:	7afb      	ldrb	r3, [r7, #11]
    1d4a:	3b07      	subs	r3, #7
    1d4c:	72fb      	strb	r3, [r7, #11]
    1d4e:	697b      	ldr	r3, [r7, #20]
    1d50:	68fa      	ldr	r2, [r7, #12]
    1d52:	fb02 f203 	mul.w	r2, r2, r3
    1d56:	7afb      	ldrb	r3, [r7, #11]
    1d58:	4413      	add	r3, r2
    1d5a:	617b      	str	r3, [r7, #20]
    1d5c:	687b      	ldr	r3, [r7, #4]
    1d5e:	3301      	adds	r3, #1
    1d60:	607b      	str	r3, [r7, #4]
    1d62:	687b      	ldr	r3, [r7, #4]
    1d64:	781b      	ldrb	r3, [r3, #0]
    1d66:	72fb      	strb	r3, [r7, #11]
    1d68:	7afb      	ldrb	r3, [r7, #11]
    1d6a:	2b00      	cmp	r3, #0
    1d6c:	d00d      	beq.n	1d8a <atoi+0xe8>
    1d6e:	68fb      	ldr	r3, [r7, #12]
    1d70:	2b0a      	cmp	r3, #10
    1d72:	d10a      	bne.n	1d8a <atoi+0xe8>
    1d74:	7afb      	ldrb	r3, [r7, #11]
    1d76:	4618      	mov	r0, r3
    1d78:	f7ff ff61 	bl	1c3e <digit>
    1d7c:	4603      	mov	r3, r0
    1d7e:	2b00      	cmp	r3, #0
    1d80:	bf14      	ite	ne
    1d82:	2301      	movne	r3, #1
    1d84:	2300      	moveq	r3, #0
    1d86:	b2db      	uxtb	r3, r3
    1d88:	e009      	b.n	1d9e <atoi+0xfc>
    1d8a:	7afb      	ldrb	r3, [r7, #11]
    1d8c:	4618      	mov	r0, r3
    1d8e:	f7ff ff69 	bl	1c64 <hexdigit>
    1d92:	4603      	mov	r3, r0
    1d94:	2b00      	cmp	r3, #0
    1d96:	bf14      	ite	ne
    1d98:	2301      	movne	r3, #1
    1d9a:	2300      	moveq	r3, #0
    1d9c:	b2db      	uxtb	r3, r3
    1d9e:	2b00      	cmp	r3, #0
    1da0:	d1c6      	bne.n	1d30 <atoi+0x8e>
    1da2:	693b      	ldr	r3, [r7, #16]
    1da4:	697a      	ldr	r2, [r7, #20]
    1da6:	fb02 f303 	mul.w	r3, r2, r3
    1daa:	4618      	mov	r0, r3
    1dac:	3718      	adds	r7, #24
    1dae:	46bd      	mov	sp, r7
    1db0:	bd80      	pop	{r7, pc}

00001db2 <move>:
    1db2:	b480      	push	{r7}
    1db4:	b085      	sub	sp, #20
    1db6:	af00      	add	r7, sp, #0
    1db8:	60f8      	str	r0, [r7, #12]
    1dba:	60b9      	str	r1, [r7, #8]
    1dbc:	607a      	str	r2, [r7, #4]
    1dbe:	e00a      	b.n	1dd6 <move+0x24>
    1dc0:	68bb      	ldr	r3, [r7, #8]
    1dc2:	1c5a      	adds	r2, r3, #1
    1dc4:	60ba      	str	r2, [r7, #8]
    1dc6:	68fa      	ldr	r2, [r7, #12]
    1dc8:	1c51      	adds	r1, r2, #1
    1dca:	60f9      	str	r1, [r7, #12]
    1dcc:	7812      	ldrb	r2, [r2, #0]
    1dce:	701a      	strb	r2, [r3, #0]
    1dd0:	687b      	ldr	r3, [r7, #4]
    1dd2:	3b01      	subs	r3, #1
    1dd4:	607b      	str	r3, [r7, #4]
    1dd6:	687b      	ldr	r3, [r7, #4]
    1dd8:	2b00      	cmp	r3, #0
    1dda:	d1f1      	bne.n	1dc0 <move+0xe>
    1ddc:	bf00      	nop
    1dde:	3714      	adds	r7, #20
    1de0:	46bd      	mov	sp, r7
    1de2:	bc80      	pop	{r7}
    1de4:	4770      	bx	lr

00001de6 <strlen>:
    1de6:	b480      	push	{r7}
    1de8:	b085      	sub	sp, #20
    1dea:	af00      	add	r7, sp, #0
    1dec:	6078      	str	r0, [r7, #4]
    1dee:	2300      	movs	r3, #0
    1df0:	60fb      	str	r3, [r7, #12]
    1df2:	e002      	b.n	1dfa <strlen+0x14>
    1df4:	68fb      	ldr	r3, [r7, #12]
    1df6:	3301      	adds	r3, #1
    1df8:	60fb      	str	r3, [r7, #12]
    1dfa:	68fb      	ldr	r3, [r7, #12]
    1dfc:	687a      	ldr	r2, [r7, #4]
    1dfe:	4413      	add	r3, r2
    1e00:	781b      	ldrb	r3, [r3, #0]
    1e02:	2b00      	cmp	r3, #0
    1e04:	d1f6      	bne.n	1df4 <strlen+0xe>
    1e06:	68fb      	ldr	r3, [r7, #12]
    1e08:	4618      	mov	r0, r3
    1e0a:	3714      	adds	r7, #20
    1e0c:	46bd      	mov	sp, r7
    1e0e:	bc80      	pop	{r7}
    1e10:	4770      	bx	lr

00001e12 <fill>:
    1e12:	b480      	push	{r7}
    1e14:	b087      	sub	sp, #28
    1e16:	af00      	add	r7, sp, #0
    1e18:	60f8      	str	r0, [r7, #12]
    1e1a:	60b9      	str	r1, [r7, #8]
    1e1c:	4613      	mov	r3, r2
    1e1e:	71fb      	strb	r3, [r7, #7]
    1e20:	2300      	movs	r3, #0
    1e22:	617b      	str	r3, [r7, #20]
    1e24:	e007      	b.n	1e36 <fill+0x24>
    1e26:	68fb      	ldr	r3, [r7, #12]
    1e28:	1c5a      	adds	r2, r3, #1
    1e2a:	60fa      	str	r2, [r7, #12]
    1e2c:	79fa      	ldrb	r2, [r7, #7]
    1e2e:	701a      	strb	r2, [r3, #0]
    1e30:	697b      	ldr	r3, [r7, #20]
    1e32:	3301      	adds	r3, #1
    1e34:	617b      	str	r3, [r7, #20]
    1e36:	697a      	ldr	r2, [r7, #20]
    1e38:	68bb      	ldr	r3, [r7, #8]
    1e3a:	429a      	cmp	r2, r3
    1e3c:	d3f3      	bcc.n	1e26 <fill+0x14>
    1e3e:	bf00      	nop
    1e40:	371c      	adds	r7, #28
    1e42:	46bd      	mov	sp, r7
    1e44:	bc80      	pop	{r7}
    1e46:	4770      	bx	lr

00001e48 <is_lower>:
    1e48:	b480      	push	{r7}
    1e4a:	b083      	sub	sp, #12
    1e4c:	af00      	add	r7, sp, #0
    1e4e:	4603      	mov	r3, r0
    1e50:	71fb      	strb	r3, [r7, #7]
    1e52:	79fb      	ldrb	r3, [r7, #7]
    1e54:	2b60      	cmp	r3, #96	; 0x60
    1e56:	d904      	bls.n	1e62 <is_lower+0x1a>
    1e58:	79fb      	ldrb	r3, [r7, #7]
    1e5a:	2b7a      	cmp	r3, #122	; 0x7a
    1e5c:	d801      	bhi.n	1e62 <is_lower+0x1a>
    1e5e:	2301      	movs	r3, #1
    1e60:	e000      	b.n	1e64 <is_lower+0x1c>
    1e62:	2300      	movs	r3, #0
    1e64:	4618      	mov	r0, r3
    1e66:	370c      	adds	r7, #12
    1e68:	46bd      	mov	sp, r7
    1e6a:	bc80      	pop	{r7}
    1e6c:	4770      	bx	lr

00001e6e <is_upper>:
    1e6e:	b480      	push	{r7}
    1e70:	b083      	sub	sp, #12
    1e72:	af00      	add	r7, sp, #0
    1e74:	4603      	mov	r3, r0
    1e76:	71fb      	strb	r3, [r7, #7]
    1e78:	79fb      	ldrb	r3, [r7, #7]
    1e7a:	2b40      	cmp	r3, #64	; 0x40
    1e7c:	d904      	bls.n	1e88 <is_upper+0x1a>
    1e7e:	79fb      	ldrb	r3, [r7, #7]
    1e80:	2b5a      	cmp	r3, #90	; 0x5a
    1e82:	d801      	bhi.n	1e88 <is_upper+0x1a>
    1e84:	2301      	movs	r3, #1
    1e86:	e000      	b.n	1e8a <is_upper+0x1c>
    1e88:	2300      	movs	r3, #0
    1e8a:	4618      	mov	r0, r3
    1e8c:	370c      	adds	r7, #12
    1e8e:	46bd      	mov	sp, r7
    1e90:	bc80      	pop	{r7}
    1e92:	4770      	bx	lr

00001e94 <uppercase>:
    1e94:	b580      	push	{r7, lr}
    1e96:	b082      	sub	sp, #8
    1e98:	af00      	add	r7, sp, #0
    1e9a:	6078      	str	r0, [r7, #4]
    1e9c:	e010      	b.n	1ec0 <uppercase+0x2c>
    1e9e:	687b      	ldr	r3, [r7, #4]
    1ea0:	781b      	ldrb	r3, [r3, #0]
    1ea2:	4618      	mov	r0, r3
    1ea4:	f7ff ffd0 	bl	1e48 <is_lower>
    1ea8:	4603      	mov	r3, r0
    1eaa:	2b00      	cmp	r3, #0
    1eac:	d005      	beq.n	1eba <uppercase+0x26>
    1eae:	687b      	ldr	r3, [r7, #4]
    1eb0:	781b      	ldrb	r3, [r3, #0]
    1eb2:	3b20      	subs	r3, #32
    1eb4:	b2da      	uxtb	r2, r3
    1eb6:	687b      	ldr	r3, [r7, #4]
    1eb8:	701a      	strb	r2, [r3, #0]
    1eba:	687b      	ldr	r3, [r7, #4]
    1ebc:	3301      	adds	r3, #1
    1ebe:	607b      	str	r3, [r7, #4]
    1ec0:	687b      	ldr	r3, [r7, #4]
    1ec2:	781b      	ldrb	r3, [r3, #0]
    1ec4:	2b00      	cmp	r3, #0
    1ec6:	d1ea      	bne.n	1e9e <uppercase+0xa>
    1ec8:	bf00      	nop
    1eca:	3708      	adds	r7, #8
    1ecc:	46bd      	mov	sp, r7
    1ece:	bd80      	pop	{r7, pc}

00001ed0 <scan>:
    1ed0:	b480      	push	{r7}
    1ed2:	b085      	sub	sp, #20
    1ed4:	af00      	add	r7, sp, #0
    1ed6:	60f8      	str	r0, [r7, #12]
    1ed8:	60b9      	str	r1, [r7, #8]
    1eda:	4613      	mov	r3, r2
    1edc:	71fb      	strb	r3, [r7, #7]
    1ede:	e002      	b.n	1ee6 <scan+0x16>
    1ee0:	68bb      	ldr	r3, [r7, #8]
    1ee2:	3301      	adds	r3, #1
    1ee4:	60bb      	str	r3, [r7, #8]
    1ee6:	68bb      	ldr	r3, [r7, #8]
    1ee8:	68fa      	ldr	r2, [r7, #12]
    1eea:	4413      	add	r3, r2
    1eec:	781b      	ldrb	r3, [r3, #0]
    1eee:	2b00      	cmp	r3, #0
    1ef0:	d006      	beq.n	1f00 <scan+0x30>
    1ef2:	68bb      	ldr	r3, [r7, #8]
    1ef4:	68fa      	ldr	r2, [r7, #12]
    1ef6:	4413      	add	r3, r2
    1ef8:	781b      	ldrb	r3, [r3, #0]
    1efa:	79fa      	ldrb	r2, [r7, #7]
    1efc:	429a      	cmp	r2, r3
    1efe:	d1ef      	bne.n	1ee0 <scan+0x10>
    1f00:	68bb      	ldr	r3, [r7, #8]
    1f02:	4618      	mov	r0, r3
    1f04:	3714      	adds	r7, #20
    1f06:	46bd      	mov	sp, r7
    1f08:	bc80      	pop	{r7}
    1f0a:	4770      	bx	lr

00001f0c <skip>:
    1f0c:	b480      	push	{r7}
    1f0e:	b085      	sub	sp, #20
    1f10:	af00      	add	r7, sp, #0
    1f12:	60f8      	str	r0, [r7, #12]
    1f14:	60b9      	str	r1, [r7, #8]
    1f16:	4613      	mov	r3, r2
    1f18:	71fb      	strb	r3, [r7, #7]
    1f1a:	e002      	b.n	1f22 <skip+0x16>
    1f1c:	68bb      	ldr	r3, [r7, #8]
    1f1e:	3301      	adds	r3, #1
    1f20:	60bb      	str	r3, [r7, #8]
    1f22:	68bb      	ldr	r3, [r7, #8]
    1f24:	68fa      	ldr	r2, [r7, #12]
    1f26:	4413      	add	r3, r2
    1f28:	781b      	ldrb	r3, [r3, #0]
    1f2a:	2b00      	cmp	r3, #0
    1f2c:	d006      	beq.n	1f3c <skip+0x30>
    1f2e:	68bb      	ldr	r3, [r7, #8]
    1f30:	68fa      	ldr	r2, [r7, #12]
    1f32:	4413      	add	r3, r2
    1f34:	781b      	ldrb	r3, [r3, #0]
    1f36:	79fa      	ldrb	r2, [r7, #7]
    1f38:	429a      	cmp	r2, r3
    1f3a:	d0ef      	beq.n	1f1c <skip+0x10>
    1f3c:	68bb      	ldr	r3, [r7, #8]
    1f3e:	4618      	mov	r0, r3
    1f40:	3714      	adds	r7, #20
    1f42:	46bd      	mov	sp, r7
    1f44:	bc80      	pop	{r7}
    1f46:	4770      	bx	lr

00001f48 <strcat>:
    1f48:	b580      	push	{r7, lr}
    1f4a:	b082      	sub	sp, #8
    1f4c:	af00      	add	r7, sp, #0
    1f4e:	6078      	str	r0, [r7, #4]
    1f50:	6039      	str	r1, [r7, #0]
    1f52:	6878      	ldr	r0, [r7, #4]
    1f54:	f7ff ff47 	bl	1de6 <strlen>
    1f58:	4603      	mov	r3, r0
    1f5a:	461a      	mov	r2, r3
    1f5c:	687b      	ldr	r3, [r7, #4]
    1f5e:	4413      	add	r3, r2
    1f60:	607b      	str	r3, [r7, #4]
    1f62:	e007      	b.n	1f74 <strcat+0x2c>
    1f64:	687b      	ldr	r3, [r7, #4]
    1f66:	1c5a      	adds	r2, r3, #1
    1f68:	607a      	str	r2, [r7, #4]
    1f6a:	683a      	ldr	r2, [r7, #0]
    1f6c:	1c51      	adds	r1, r2, #1
    1f6e:	6039      	str	r1, [r7, #0]
    1f70:	7812      	ldrb	r2, [r2, #0]
    1f72:	701a      	strb	r2, [r3, #0]
    1f74:	683b      	ldr	r3, [r7, #0]
    1f76:	781b      	ldrb	r3, [r3, #0]
    1f78:	2b00      	cmp	r3, #0
    1f7a:	d1f3      	bne.n	1f64 <strcat+0x1c>
    1f7c:	687b      	ldr	r3, [r7, #4]
    1f7e:	2200      	movs	r2, #0
    1f80:	701a      	strb	r2, [r3, #0]
    1f82:	687b      	ldr	r3, [r7, #4]
    1f84:	4618      	mov	r0, r3
    1f86:	3708      	adds	r7, #8
    1f88:	46bd      	mov	sp, r7
    1f8a:	bd80      	pop	{r7, pc}

00001f8c <config_pin>:
    1f8c:	b480      	push	{r7}
    1f8e:	b087      	sub	sp, #28
    1f90:	af00      	add	r7, sp, #0
    1f92:	60f8      	str	r0, [r7, #12]
    1f94:	60b9      	str	r1, [r7, #8]
    1f96:	607a      	str	r2, [r7, #4]
    1f98:	68bb      	ldr	r3, [r7, #8]
    1f9a:	b2db      	uxtb	r3, r3
    1f9c:	009b      	lsls	r3, r3, #2
    1f9e:	b2db      	uxtb	r3, r3
    1fa0:	f003 031c 	and.w	r3, r3, #28
    1fa4:	75fb      	strb	r3, [r7, #23]
    1fa6:	68bb      	ldr	r3, [r7, #8]
    1fa8:	08da      	lsrs	r2, r3, #3
    1faa:	68bb      	ldr	r3, [r7, #8]
    1fac:	08d9      	lsrs	r1, r3, #3
    1fae:	68fb      	ldr	r3, [r7, #12]
    1fb0:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1fb4:	7df9      	ldrb	r1, [r7, #23]
    1fb6:	200f      	movs	r0, #15
    1fb8:	fa00 f101 	lsl.w	r1, r0, r1
    1fbc:	43c9      	mvns	r1, r1
    1fbe:	4019      	ands	r1, r3
    1fc0:	68fb      	ldr	r3, [r7, #12]
    1fc2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1fc6:	68bb      	ldr	r3, [r7, #8]
    1fc8:	08da      	lsrs	r2, r3, #3
    1fca:	68bb      	ldr	r3, [r7, #8]
    1fcc:	08d9      	lsrs	r1, r3, #3
    1fce:	68fb      	ldr	r3, [r7, #12]
    1fd0:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1fd4:	7dfb      	ldrb	r3, [r7, #23]
    1fd6:	6878      	ldr	r0, [r7, #4]
    1fd8:	fa00 f303 	lsl.w	r3, r0, r3
    1fdc:	4319      	orrs	r1, r3
    1fde:	68fb      	ldr	r3, [r7, #12]
    1fe0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1fe4:	bf00      	nop
    1fe6:	371c      	adds	r7, #28
    1fe8:	46bd      	mov	sp, r7
    1fea:	bc80      	pop	{r7}
    1fec:	4770      	bx	lr

00001fee <read_pin>:
    1fee:	b480      	push	{r7}
    1ff0:	b083      	sub	sp, #12
    1ff2:	af00      	add	r7, sp, #0
    1ff4:	6078      	str	r0, [r7, #4]
    1ff6:	6039      	str	r1, [r7, #0]
    1ff8:	687b      	ldr	r3, [r7, #4]
    1ffa:	689b      	ldr	r3, [r3, #8]
    1ffc:	2101      	movs	r1, #1
    1ffe:	683a      	ldr	r2, [r7, #0]
    2000:	fa01 f202 	lsl.w	r2, r1, r2
    2004:	4013      	ands	r3, r2
    2006:	4618      	mov	r0, r3
    2008:	370c      	adds	r7, #12
    200a:	46bd      	mov	sp, r7
    200c:	bc80      	pop	{r7}
    200e:	4770      	bx	lr

00002010 <write_pin>:
    2010:	b480      	push	{r7}
    2012:	b085      	sub	sp, #20
    2014:	af00      	add	r7, sp, #0
    2016:	60f8      	str	r0, [r7, #12]
    2018:	60b9      	str	r1, [r7, #8]
    201a:	607a      	str	r2, [r7, #4]
    201c:	687b      	ldr	r3, [r7, #4]
    201e:	2b00      	cmp	r3, #0
    2020:	d009      	beq.n	2036 <write_pin+0x26>
    2022:	68fb      	ldr	r3, [r7, #12]
    2024:	68db      	ldr	r3, [r3, #12]
    2026:	2101      	movs	r1, #1
    2028:	68ba      	ldr	r2, [r7, #8]
    202a:	fa01 f202 	lsl.w	r2, r1, r2
    202e:	431a      	orrs	r2, r3
    2030:	68fb      	ldr	r3, [r7, #12]
    2032:	60da      	str	r2, [r3, #12]
    2034:	e009      	b.n	204a <write_pin+0x3a>
    2036:	68fb      	ldr	r3, [r7, #12]
    2038:	68db      	ldr	r3, [r3, #12]
    203a:	2101      	movs	r1, #1
    203c:	68ba      	ldr	r2, [r7, #8]
    203e:	fa01 f202 	lsl.w	r2, r1, r2
    2042:	43d2      	mvns	r2, r2
    2044:	401a      	ands	r2, r3
    2046:	68fb      	ldr	r3, [r7, #12]
    2048:	60da      	str	r2, [r3, #12]
    204a:	bf00      	nop
    204c:	3714      	adds	r7, #20
    204e:	46bd      	mov	sp, r7
    2050:	bc80      	pop	{r7}
    2052:	4770      	bx	lr

00002054 <toggle_pin>:
    2054:	b480      	push	{r7}
    2056:	b083      	sub	sp, #12
    2058:	af00      	add	r7, sp, #0
    205a:	6078      	str	r0, [r7, #4]
    205c:	6039      	str	r1, [r7, #0]
    205e:	687b      	ldr	r3, [r7, #4]
    2060:	68db      	ldr	r3, [r3, #12]
    2062:	2101      	movs	r1, #1
    2064:	683a      	ldr	r2, [r7, #0]
    2066:	fa01 f202 	lsl.w	r2, r1, r2
    206a:	405a      	eors	r2, r3
    206c:	687b      	ldr	r3, [r7, #4]
    206e:	60da      	str	r2, [r3, #12]
    2070:	bf00      	nop
    2072:	370c      	adds	r7, #12
    2074:	46bd      	mov	sp, r7
    2076:	bc80      	pop	{r7}
    2078:	4770      	bx	lr
	...

0000207c <set_palette>:
    207c:	b480      	push	{r7}
    207e:	b083      	sub	sp, #12
    2080:	af00      	add	r7, sp, #0
    2082:	6078      	str	r0, [r7, #4]
    2084:	687b      	ldr	r3, [r7, #4]
    2086:	781a      	ldrb	r2, [r3, #0]
    2088:	4b09      	ldr	r3, [pc, #36]	; (20b0 <set_palette+0x34>)
    208a:	701a      	strb	r2, [r3, #0]
    208c:	687b      	ldr	r3, [r7, #4]
    208e:	785a      	ldrb	r2, [r3, #1]
    2090:	4b07      	ldr	r3, [pc, #28]	; (20b0 <set_palette+0x34>)
    2092:	705a      	strb	r2, [r3, #1]
    2094:	687b      	ldr	r3, [r7, #4]
    2096:	789a      	ldrb	r2, [r3, #2]
    2098:	4b05      	ldr	r3, [pc, #20]	; (20b0 <set_palette+0x34>)
    209a:	709a      	strb	r2, [r3, #2]
    209c:	687b      	ldr	r3, [r7, #4]
    209e:	78da      	ldrb	r2, [r3, #3]
    20a0:	4b03      	ldr	r3, [pc, #12]	; (20b0 <set_palette+0x34>)
    20a2:	70da      	strb	r2, [r3, #3]
    20a4:	bf00      	nop
    20a6:	370c      	adds	r7, #12
    20a8:	46bd      	mov	sp, r7
    20aa:	bc80      	pop	{r7}
    20ac:	4770      	bx	lr
    20ae:	bf00      	nop
    20b0:	2000015c 	.word	0x2000015c

000020b4 <gfx_blit>:
    20b4:	b5f0      	push	{r4, r5, r6, r7, lr}
    20b6:	b087      	sub	sp, #28
    20b8:	af00      	add	r7, sp, #0
    20ba:	60f8      	str	r0, [r7, #12]
    20bc:	60b9      	str	r1, [r7, #8]
    20be:	4611      	mov	r1, r2
    20c0:	461a      	mov	r2, r3
    20c2:	460b      	mov	r3, r1
    20c4:	71fb      	strb	r3, [r7, #7]
    20c6:	4613      	mov	r3, r2
    20c8:	71bb      	strb	r3, [r7, #6]
    20ca:	f003 f98d 	bl	53e8 <get_video_params>
    20ce:	6178      	str	r0, [r7, #20]
    20d0:	68fb      	ldr	r3, [r7, #12]
    20d2:	2b00      	cmp	r3, #0
    20d4:	db0e      	blt.n	20f4 <gfx_blit+0x40>
    20d6:	697b      	ldr	r3, [r7, #20]
    20d8:	899b      	ldrh	r3, [r3, #12]
    20da:	461a      	mov	r2, r3
    20dc:	68fb      	ldr	r3, [r7, #12]
    20de:	429a      	cmp	r2, r3
    20e0:	dd08      	ble.n	20f4 <gfx_blit+0x40>
    20e2:	68bb      	ldr	r3, [r7, #8]
    20e4:	2b00      	cmp	r3, #0
    20e6:	db05      	blt.n	20f4 <gfx_blit+0x40>
    20e8:	697b      	ldr	r3, [r7, #20]
    20ea:	89db      	ldrh	r3, [r3, #14]
    20ec:	461a      	mov	r2, r3
    20ee:	68bb      	ldr	r3, [r7, #8]
    20f0:	429a      	cmp	r2, r3
    20f2:	dc01      	bgt.n	20f8 <gfx_blit+0x44>
    20f4:	2300      	movs	r3, #0
    20f6:	e058      	b.n	21aa <gfx_blit+0xf6>
    20f8:	697b      	ldr	r3, [r7, #20]
    20fa:	7a1b      	ldrb	r3, [r3, #8]
    20fc:	461a      	mov	r2, r3
    20fe:	68bb      	ldr	r3, [r7, #8]
    2100:	fb03 f202 	mul.w	r2, r3, r2
    2104:	68fb      	ldr	r3, [r7, #12]
    2106:	0fd9      	lsrs	r1, r3, #31
    2108:	440b      	add	r3, r1
    210a:	105b      	asrs	r3, r3, #1
    210c:	18d6      	adds	r6, r2, r3
    210e:	79fb      	ldrb	r3, [r7, #7]
    2110:	f003 030f 	and.w	r3, r3, #15
    2114:	71fb      	strb	r3, [r7, #7]
    2116:	25f0      	movs	r5, #240	; 0xf0
    2118:	68fb      	ldr	r3, [r7, #12]
    211a:	f003 0301 	and.w	r3, r3, #1
    211e:	2b00      	cmp	r3, #0
    2120:	d103      	bne.n	212a <gfx_blit+0x76>
    2122:	79fb      	ldrb	r3, [r7, #7]
    2124:	011b      	lsls	r3, r3, #4
    2126:	71fb      	strb	r3, [r7, #7]
    2128:	250f      	movs	r5, #15
    212a:	4b22      	ldr	r3, [pc, #136]	; (21b4 <gfx_blit+0x100>)
    212c:	5d9c      	ldrb	r4, [r3, r6]
    212e:	79bb      	ldrb	r3, [r7, #6]
    2130:	2b04      	cmp	r3, #4
    2132:	d828      	bhi.n	2186 <gfx_blit+0xd2>
    2134:	a201      	add	r2, pc, #4	; (adr r2, 213c <gfx_blit+0x88>)
    2136:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    213a:	bf00      	nop
    213c:	00002151 	.word	0x00002151
    2140:	00002159 	.word	0x00002159
    2144:	00002161 	.word	0x00002161
    2148:	00002169 	.word	0x00002169
    214c:	00002179 	.word	0x00002179
    2150:	79fb      	ldrb	r3, [r7, #7]
    2152:	4323      	orrs	r3, r4
    2154:	b2dc      	uxtb	r4, r3
    2156:	e016      	b.n	2186 <gfx_blit+0xd2>
    2158:	79fb      	ldrb	r3, [r7, #7]
    215a:	4023      	ands	r3, r4
    215c:	b2dc      	uxtb	r4, r3
    215e:	e012      	b.n	2186 <gfx_blit+0xd2>
    2160:	79fb      	ldrb	r3, [r7, #7]
    2162:	4063      	eors	r3, r4
    2164:	b2dc      	uxtb	r4, r3
    2166:	e00e      	b.n	2186 <gfx_blit+0xd2>
    2168:	b26b      	sxtb	r3, r5
    216a:	43db      	mvns	r3, r3
    216c:	b25a      	sxtb	r2, r3
    216e:	b263      	sxtb	r3, r4
    2170:	4053      	eors	r3, r2
    2172:	b25b      	sxtb	r3, r3
    2174:	b2dc      	uxtb	r4, r3
    2176:	e006      	b.n	2186 <gfx_blit+0xd2>
    2178:	ea04 0305 	and.w	r3, r4, r5
    217c:	b2dc      	uxtb	r4, r3
    217e:	79fb      	ldrb	r3, [r7, #7]
    2180:	4323      	orrs	r3, r4
    2182:	b2dc      	uxtb	r4, r3
    2184:	bf00      	nop
    2186:	4b0b      	ldr	r3, [pc, #44]	; (21b4 <gfx_blit+0x100>)
    2188:	4622      	mov	r2, r4
    218a:	559a      	strb	r2, [r3, r6]
    218c:	4622      	mov	r2, r4
    218e:	462b      	mov	r3, r5
    2190:	43db      	mvns	r3, r3
    2192:	4013      	ands	r3, r2
    2194:	79fa      	ldrb	r2, [r7, #7]
    2196:	2a00      	cmp	r2, #0
    2198:	bf0c      	ite	eq
    219a:	2201      	moveq	r2, #1
    219c:	2200      	movne	r2, #0
    219e:	b2d2      	uxtb	r2, r2
    21a0:	4293      	cmp	r3, r2
    21a2:	bf0c      	ite	eq
    21a4:	2301      	moveq	r3, #1
    21a6:	2300      	movne	r3, #0
    21a8:	b2db      	uxtb	r3, r3
    21aa:	4618      	mov	r0, r3
    21ac:	371c      	adds	r7, #28
    21ae:	46bd      	mov	sp, r7
    21b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    21b2:	bf00      	nop
    21b4:	200026a8 	.word	0x200026a8

000021b8 <gfx_plot>:
    21b8:	b5b0      	push	{r4, r5, r7, lr}
    21ba:	b086      	sub	sp, #24
    21bc:	af00      	add	r7, sp, #0
    21be:	60f8      	str	r0, [r7, #12]
    21c0:	60b9      	str	r1, [r7, #8]
    21c2:	4613      	mov	r3, r2
    21c4:	71fb      	strb	r3, [r7, #7]
    21c6:	f003 f90f 	bl	53e8 <get_video_params>
    21ca:	6178      	str	r0, [r7, #20]
    21cc:	68fb      	ldr	r3, [r7, #12]
    21ce:	2b00      	cmp	r3, #0
    21d0:	db39      	blt.n	2246 <gfx_plot+0x8e>
    21d2:	697b      	ldr	r3, [r7, #20]
    21d4:	899b      	ldrh	r3, [r3, #12]
    21d6:	461a      	mov	r2, r3
    21d8:	68fb      	ldr	r3, [r7, #12]
    21da:	429a      	cmp	r2, r3
    21dc:	dd33      	ble.n	2246 <gfx_plot+0x8e>
    21de:	68bb      	ldr	r3, [r7, #8]
    21e0:	2b00      	cmp	r3, #0
    21e2:	db30      	blt.n	2246 <gfx_plot+0x8e>
    21e4:	697b      	ldr	r3, [r7, #20]
    21e6:	89db      	ldrh	r3, [r3, #14]
    21e8:	461a      	mov	r2, r3
    21ea:	68bb      	ldr	r3, [r7, #8]
    21ec:	429a      	cmp	r2, r3
    21ee:	dd2a      	ble.n	2246 <gfx_plot+0x8e>
    21f0:	697b      	ldr	r3, [r7, #20]
    21f2:	7a1b      	ldrb	r3, [r3, #8]
    21f4:	461a      	mov	r2, r3
    21f6:	68bb      	ldr	r3, [r7, #8]
    21f8:	fb03 f202 	mul.w	r2, r3, r2
    21fc:	68fb      	ldr	r3, [r7, #12]
    21fe:	0fd9      	lsrs	r1, r3, #31
    2200:	440b      	add	r3, r1
    2202:	105b      	asrs	r3, r3, #1
    2204:	18d5      	adds	r5, r2, r3
    2206:	79fb      	ldrb	r3, [r7, #7]
    2208:	f003 030f 	and.w	r3, r3, #15
    220c:	71fb      	strb	r3, [r7, #7]
    220e:	4b10      	ldr	r3, [pc, #64]	; (2250 <gfx_plot+0x98>)
    2210:	5d5c      	ldrb	r4, [r3, r5]
    2212:	68fb      	ldr	r3, [r7, #12]
    2214:	f003 0301 	and.w	r3, r3, #1
    2218:	2b00      	cmp	r3, #0
    221a:	d006      	beq.n	222a <gfx_plot+0x72>
    221c:	f024 030f 	bic.w	r3, r4, #15
    2220:	b2dc      	uxtb	r4, r3
    2222:	79fb      	ldrb	r3, [r7, #7]
    2224:	4323      	orrs	r3, r4
    2226:	b2dc      	uxtb	r4, r3
    2228:	e009      	b.n	223e <gfx_plot+0x86>
    222a:	f004 030f 	and.w	r3, r4, #15
    222e:	b2dc      	uxtb	r4, r3
    2230:	79fb      	ldrb	r3, [r7, #7]
    2232:	011b      	lsls	r3, r3, #4
    2234:	b25a      	sxtb	r2, r3
    2236:	b263      	sxtb	r3, r4
    2238:	4313      	orrs	r3, r2
    223a:	b25b      	sxtb	r3, r3
    223c:	b2dc      	uxtb	r4, r3
    223e:	4b04      	ldr	r3, [pc, #16]	; (2250 <gfx_plot+0x98>)
    2240:	4622      	mov	r2, r4
    2242:	555a      	strb	r2, [r3, r5]
    2244:	e000      	b.n	2248 <gfx_plot+0x90>
    2246:	bf00      	nop
    2248:	3718      	adds	r7, #24
    224a:	46bd      	mov	sp, r7
    224c:	bdb0      	pop	{r4, r5, r7, pc}
    224e:	bf00      	nop
    2250:	200026a8 	.word	0x200026a8

00002254 <gfx_cls>:
    2254:	b580      	push	{r7, lr}
    2256:	b082      	sub	sp, #8
    2258:	af00      	add	r7, sp, #0
    225a:	f003 f8c5 	bl	53e8 <get_video_params>
    225e:	6038      	str	r0, [r7, #0]
    2260:	2300      	movs	r3, #0
    2262:	607b      	str	r3, [r7, #4]
    2264:	e007      	b.n	2276 <gfx_cls+0x22>
    2266:	4a0d      	ldr	r2, [pc, #52]	; (229c <gfx_cls+0x48>)
    2268:	687b      	ldr	r3, [r7, #4]
    226a:	4413      	add	r3, r2
    226c:	2200      	movs	r2, #0
    226e:	701a      	strb	r2, [r3, #0]
    2270:	687b      	ldr	r3, [r7, #4]
    2272:	3301      	adds	r3, #1
    2274:	607b      	str	r3, [r7, #4]
    2276:	683b      	ldr	r3, [r7, #0]
    2278:	89db      	ldrh	r3, [r3, #14]
    227a:	461a      	mov	r2, r3
    227c:	683b      	ldr	r3, [r7, #0]
    227e:	7a1b      	ldrb	r3, [r3, #8]
    2280:	fb03 f202 	mul.w	r2, r3, r2
    2284:	687b      	ldr	r3, [r7, #4]
    2286:	429a      	cmp	r2, r3
    2288:	dced      	bgt.n	2266 <gfx_cls+0x12>
    228a:	2100      	movs	r1, #0
    228c:	2000      	movs	r0, #0
    228e:	f002 fbd5 	bl	4a3c <set_cursor>
    2292:	bf00      	nop
    2294:	3708      	adds	r7, #8
    2296:	46bd      	mov	sp, r7
    2298:	bd80      	pop	{r7, pc}
    229a:	bf00      	nop
    229c:	200026a8 	.word	0x200026a8

000022a0 <move_up>:
    22a0:	b480      	push	{r7}
    22a2:	b085      	sub	sp, #20
    22a4:	af00      	add	r7, sp, #0
    22a6:	60f8      	str	r0, [r7, #12]
    22a8:	60b9      	str	r1, [r7, #8]
    22aa:	607a      	str	r2, [r7, #4]
    22ac:	e009      	b.n	22c2 <move_up+0x22>
    22ae:	68bb      	ldr	r3, [r7, #8]
    22b0:	3b01      	subs	r3, #1
    22b2:	60bb      	str	r3, [r7, #8]
    22b4:	68fb      	ldr	r3, [r7, #12]
    22b6:	3b01      	subs	r3, #1
    22b8:	60fb      	str	r3, [r7, #12]
    22ba:	68fb      	ldr	r3, [r7, #12]
    22bc:	781a      	ldrb	r2, [r3, #0]
    22be:	68bb      	ldr	r3, [r7, #8]
    22c0:	701a      	strb	r2, [r3, #0]
    22c2:	687b      	ldr	r3, [r7, #4]
    22c4:	1e5a      	subs	r2, r3, #1
    22c6:	607a      	str	r2, [r7, #4]
    22c8:	2b00      	cmp	r3, #0
    22ca:	d1f0      	bne.n	22ae <move_up+0xe>
    22cc:	68bb      	ldr	r3, [r7, #8]
    22ce:	4618      	mov	r0, r3
    22d0:	3714      	adds	r7, #20
    22d2:	46bd      	mov	sp, r7
    22d4:	bc80      	pop	{r7}
    22d6:	4770      	bx	lr

000022d8 <move_down>:
    22d8:	b480      	push	{r7}
    22da:	b085      	sub	sp, #20
    22dc:	af00      	add	r7, sp, #0
    22de:	60f8      	str	r0, [r7, #12]
    22e0:	60b9      	str	r1, [r7, #8]
    22e2:	607a      	str	r2, [r7, #4]
    22e4:	e007      	b.n	22f6 <move_down+0x1e>
    22e6:	68bb      	ldr	r3, [r7, #8]
    22e8:	1c5a      	adds	r2, r3, #1
    22ea:	60ba      	str	r2, [r7, #8]
    22ec:	68fa      	ldr	r2, [r7, #12]
    22ee:	1c51      	adds	r1, r2, #1
    22f0:	60f9      	str	r1, [r7, #12]
    22f2:	7812      	ldrb	r2, [r2, #0]
    22f4:	701a      	strb	r2, [r3, #0]
    22f6:	687b      	ldr	r3, [r7, #4]
    22f8:	1e5a      	subs	r2, r3, #1
    22fa:	607a      	str	r2, [r7, #4]
    22fc:	2b00      	cmp	r3, #0
    22fe:	d1f2      	bne.n	22e6 <move_down+0xe>
    2300:	68bb      	ldr	r3, [r7, #8]
    2302:	4618      	mov	r0, r3
    2304:	3714      	adds	r7, #20
    2306:	46bd      	mov	sp, r7
    2308:	bc80      	pop	{r7}
    230a:	4770      	bx	lr

0000230c <gfx_scroll_up>:
    230c:	b580      	push	{r7, lr}
    230e:	b086      	sub	sp, #24
    2310:	af00      	add	r7, sp, #0
    2312:	4603      	mov	r3, r0
    2314:	71fb      	strb	r3, [r7, #7]
    2316:	f003 f867 	bl	53e8 <get_video_params>
    231a:	60f8      	str	r0, [r7, #12]
    231c:	79fb      	ldrb	r3, [r7, #7]
    231e:	68fa      	ldr	r2, [r7, #12]
    2320:	7a12      	ldrb	r2, [r2, #8]
    2322:	fb02 f303 	mul.w	r3, r2, r3
    2326:	4a15      	ldr	r2, [pc, #84]	; (237c <gfx_scroll_up+0x70>)
    2328:	4413      	add	r3, r2
    232a:	60bb      	str	r3, [r7, #8]
    232c:	4b13      	ldr	r3, [pc, #76]	; (237c <gfx_scroll_up+0x70>)
    232e:	617b      	str	r3, [r7, #20]
    2330:	68fb      	ldr	r3, [r7, #12]
    2332:	89db      	ldrh	r3, [r3, #14]
    2334:	461a      	mov	r2, r3
    2336:	79fb      	ldrb	r3, [r7, #7]
    2338:	1ad3      	subs	r3, r2, r3
    233a:	68fa      	ldr	r2, [r7, #12]
    233c:	7a12      	ldrb	r2, [r2, #8]
    233e:	fb02 f303 	mul.w	r3, r2, r3
    2342:	613b      	str	r3, [r7, #16]
    2344:	693a      	ldr	r2, [r7, #16]
    2346:	6979      	ldr	r1, [r7, #20]
    2348:	68b8      	ldr	r0, [r7, #8]
    234a:	f7ff ffc5 	bl	22d8 <move_down>
    234e:	6178      	str	r0, [r7, #20]
    2350:	68fb      	ldr	r3, [r7, #12]
    2352:	7a1b      	ldrb	r3, [r3, #8]
    2354:	461a      	mov	r2, r3
    2356:	79fb      	ldrb	r3, [r7, #7]
    2358:	fb03 f302 	mul.w	r3, r3, r2
    235c:	613b      	str	r3, [r7, #16]
    235e:	e004      	b.n	236a <gfx_scroll_up+0x5e>
    2360:	697b      	ldr	r3, [r7, #20]
    2362:	1c5a      	adds	r2, r3, #1
    2364:	617a      	str	r2, [r7, #20]
    2366:	2200      	movs	r2, #0
    2368:	701a      	strb	r2, [r3, #0]
    236a:	693b      	ldr	r3, [r7, #16]
    236c:	1e5a      	subs	r2, r3, #1
    236e:	613a      	str	r2, [r7, #16]
    2370:	2b00      	cmp	r3, #0
    2372:	d1f5      	bne.n	2360 <gfx_scroll_up+0x54>
    2374:	bf00      	nop
    2376:	3718      	adds	r7, #24
    2378:	46bd      	mov	sp, r7
    237a:	bd80      	pop	{r7, pc}
    237c:	200026a8 	.word	0x200026a8

00002380 <gfx_scroll_down>:
    2380:	b580      	push	{r7, lr}
    2382:	b086      	sub	sp, #24
    2384:	af00      	add	r7, sp, #0
    2386:	4603      	mov	r3, r0
    2388:	71fb      	strb	r3, [r7, #7]
    238a:	f003 f82d 	bl	53e8 <get_video_params>
    238e:	60f8      	str	r0, [r7, #12]
    2390:	68fb      	ldr	r3, [r7, #12]
    2392:	89db      	ldrh	r3, [r3, #14]
    2394:	461a      	mov	r2, r3
    2396:	79fb      	ldrb	r3, [r7, #7]
    2398:	1ad3      	subs	r3, r2, r3
    239a:	68fa      	ldr	r2, [r7, #12]
    239c:	7a12      	ldrb	r2, [r2, #8]
    239e:	fb02 f303 	mul.w	r3, r2, r3
    23a2:	4a1a      	ldr	r2, [pc, #104]	; (240c <gfx_scroll_down+0x8c>)
    23a4:	4413      	add	r3, r2
    23a6:	60bb      	str	r3, [r7, #8]
    23a8:	68fb      	ldr	r3, [r7, #12]
    23aa:	89db      	ldrh	r3, [r3, #14]
    23ac:	461a      	mov	r2, r3
    23ae:	68fb      	ldr	r3, [r7, #12]
    23b0:	7a1b      	ldrb	r3, [r3, #8]
    23b2:	fb03 f302 	mul.w	r3, r3, r2
    23b6:	4a15      	ldr	r2, [pc, #84]	; (240c <gfx_scroll_down+0x8c>)
    23b8:	4413      	add	r3, r2
    23ba:	617b      	str	r3, [r7, #20]
    23bc:	68fb      	ldr	r3, [r7, #12]
    23be:	89db      	ldrh	r3, [r3, #14]
    23c0:	461a      	mov	r2, r3
    23c2:	79fb      	ldrb	r3, [r7, #7]
    23c4:	1ad3      	subs	r3, r2, r3
    23c6:	68fa      	ldr	r2, [r7, #12]
    23c8:	7a12      	ldrb	r2, [r2, #8]
    23ca:	fb02 f303 	mul.w	r3, r2, r3
    23ce:	613b      	str	r3, [r7, #16]
    23d0:	693a      	ldr	r2, [r7, #16]
    23d2:	6979      	ldr	r1, [r7, #20]
    23d4:	68b8      	ldr	r0, [r7, #8]
    23d6:	f7ff ff63 	bl	22a0 <move_up>
    23da:	6178      	str	r0, [r7, #20]
    23dc:	68fb      	ldr	r3, [r7, #12]
    23de:	7a1b      	ldrb	r3, [r3, #8]
    23e0:	461a      	mov	r2, r3
    23e2:	79fb      	ldrb	r3, [r7, #7]
    23e4:	fb03 f302 	mul.w	r3, r3, r2
    23e8:	613b      	str	r3, [r7, #16]
    23ea:	e005      	b.n	23f8 <gfx_scroll_down+0x78>
    23ec:	697b      	ldr	r3, [r7, #20]
    23ee:	3b01      	subs	r3, #1
    23f0:	617b      	str	r3, [r7, #20]
    23f2:	697b      	ldr	r3, [r7, #20]
    23f4:	2200      	movs	r2, #0
    23f6:	701a      	strb	r2, [r3, #0]
    23f8:	693b      	ldr	r3, [r7, #16]
    23fa:	1e5a      	subs	r2, r3, #1
    23fc:	613a      	str	r2, [r7, #16]
    23fe:	2b00      	cmp	r3, #0
    2400:	d1f4      	bne.n	23ec <gfx_scroll_down+0x6c>
    2402:	bf00      	nop
    2404:	3718      	adds	r7, #24
    2406:	46bd      	mov	sp, r7
    2408:	bd80      	pop	{r7, pc}
    240a:	bf00      	nop
    240c:	200026a8 	.word	0x200026a8

00002410 <gfx_scroll_left>:
    2410:	b580      	push	{r7, lr}
    2412:	b088      	sub	sp, #32
    2414:	af00      	add	r7, sp, #0
    2416:	4603      	mov	r3, r0
    2418:	71fb      	strb	r3, [r7, #7]
    241a:	f002 ffe5 	bl	53e8 <get_video_params>
    241e:	6138      	str	r0, [r7, #16]
    2420:	2300      	movs	r3, #0
    2422:	61fb      	str	r3, [r7, #28]
    2424:	e02a      	b.n	247c <gfx_scroll_left+0x6c>
    2426:	693b      	ldr	r3, [r7, #16]
    2428:	7a1b      	ldrb	r3, [r3, #8]
    242a:	461a      	mov	r2, r3
    242c:	69fb      	ldr	r3, [r7, #28]
    242e:	fb03 f302 	mul.w	r3, r3, r2
    2432:	4a17      	ldr	r2, [pc, #92]	; (2490 <gfx_scroll_left+0x80>)
    2434:	4413      	add	r3, r2
    2436:	617b      	str	r3, [r7, #20]
    2438:	79fb      	ldrb	r3, [r7, #7]
    243a:	697a      	ldr	r2, [r7, #20]
    243c:	4413      	add	r3, r2
    243e:	60fb      	str	r3, [r7, #12]
    2440:	693b      	ldr	r3, [r7, #16]
    2442:	899b      	ldrh	r3, [r3, #12]
    2444:	085b      	lsrs	r3, r3, #1
    2446:	b29b      	uxth	r3, r3
    2448:	461a      	mov	r2, r3
    244a:	79fb      	ldrb	r3, [r7, #7]
    244c:	1ad3      	subs	r3, r2, r3
    244e:	61bb      	str	r3, [r7, #24]
    2450:	69ba      	ldr	r2, [r7, #24]
    2452:	6979      	ldr	r1, [r7, #20]
    2454:	68f8      	ldr	r0, [r7, #12]
    2456:	f7ff ff3f 	bl	22d8 <move_down>
    245a:	6178      	str	r0, [r7, #20]
    245c:	79fb      	ldrb	r3, [r7, #7]
    245e:	61bb      	str	r3, [r7, #24]
    2460:	e004      	b.n	246c <gfx_scroll_left+0x5c>
    2462:	697b      	ldr	r3, [r7, #20]
    2464:	1c5a      	adds	r2, r3, #1
    2466:	617a      	str	r2, [r7, #20]
    2468:	2200      	movs	r2, #0
    246a:	701a      	strb	r2, [r3, #0]
    246c:	69bb      	ldr	r3, [r7, #24]
    246e:	1e5a      	subs	r2, r3, #1
    2470:	61ba      	str	r2, [r7, #24]
    2472:	2b00      	cmp	r3, #0
    2474:	d1f5      	bne.n	2462 <gfx_scroll_left+0x52>
    2476:	69fb      	ldr	r3, [r7, #28]
    2478:	3301      	adds	r3, #1
    247a:	61fb      	str	r3, [r7, #28]
    247c:	693b      	ldr	r3, [r7, #16]
    247e:	89db      	ldrh	r3, [r3, #14]
    2480:	461a      	mov	r2, r3
    2482:	69fb      	ldr	r3, [r7, #28]
    2484:	429a      	cmp	r2, r3
    2486:	dcce      	bgt.n	2426 <gfx_scroll_left+0x16>
    2488:	bf00      	nop
    248a:	3720      	adds	r7, #32
    248c:	46bd      	mov	sp, r7
    248e:	bd80      	pop	{r7, pc}
    2490:	200026a8 	.word	0x200026a8

00002494 <gfx_scroll_right>:
    2494:	b580      	push	{r7, lr}
    2496:	b088      	sub	sp, #32
    2498:	af00      	add	r7, sp, #0
    249a:	4603      	mov	r3, r0
    249c:	71fb      	strb	r3, [r7, #7]
    249e:	f002 ffa3 	bl	53e8 <get_video_params>
    24a2:	6138      	str	r0, [r7, #16]
    24a4:	2300      	movs	r3, #0
    24a6:	61fb      	str	r3, [r7, #28]
    24a8:	e02f      	b.n	250a <gfx_scroll_right+0x76>
    24aa:	693b      	ldr	r3, [r7, #16]
    24ac:	7a1b      	ldrb	r3, [r3, #8]
    24ae:	461a      	mov	r2, r3
    24b0:	69fb      	ldr	r3, [r7, #28]
    24b2:	fb03 f302 	mul.w	r3, r3, r2
    24b6:	4a1a      	ldr	r2, [pc, #104]	; (2520 <gfx_scroll_right+0x8c>)
    24b8:	4413      	add	r3, r2
    24ba:	693a      	ldr	r2, [r7, #16]
    24bc:	7a12      	ldrb	r2, [r2, #8]
    24be:	4413      	add	r3, r2
    24c0:	617b      	str	r3, [r7, #20]
    24c2:	79fb      	ldrb	r3, [r7, #7]
    24c4:	425b      	negs	r3, r3
    24c6:	697a      	ldr	r2, [r7, #20]
    24c8:	4413      	add	r3, r2
    24ca:	60fb      	str	r3, [r7, #12]
    24cc:	693b      	ldr	r3, [r7, #16]
    24ce:	899b      	ldrh	r3, [r3, #12]
    24d0:	085b      	lsrs	r3, r3, #1
    24d2:	b29b      	uxth	r3, r3
    24d4:	461a      	mov	r2, r3
    24d6:	79fb      	ldrb	r3, [r7, #7]
    24d8:	1ad3      	subs	r3, r2, r3
    24da:	61bb      	str	r3, [r7, #24]
    24dc:	69ba      	ldr	r2, [r7, #24]
    24de:	6979      	ldr	r1, [r7, #20]
    24e0:	68f8      	ldr	r0, [r7, #12]
    24e2:	f7ff fedd 	bl	22a0 <move_up>
    24e6:	6178      	str	r0, [r7, #20]
    24e8:	79fb      	ldrb	r3, [r7, #7]
    24ea:	61bb      	str	r3, [r7, #24]
    24ec:	e005      	b.n	24fa <gfx_scroll_right+0x66>
    24ee:	697b      	ldr	r3, [r7, #20]
    24f0:	3b01      	subs	r3, #1
    24f2:	617b      	str	r3, [r7, #20]
    24f4:	697b      	ldr	r3, [r7, #20]
    24f6:	2200      	movs	r2, #0
    24f8:	701a      	strb	r2, [r3, #0]
    24fa:	69bb      	ldr	r3, [r7, #24]
    24fc:	1e5a      	subs	r2, r3, #1
    24fe:	61ba      	str	r2, [r7, #24]
    2500:	2b00      	cmp	r3, #0
    2502:	d1f4      	bne.n	24ee <gfx_scroll_right+0x5a>
    2504:	69fb      	ldr	r3, [r7, #28]
    2506:	3301      	adds	r3, #1
    2508:	61fb      	str	r3, [r7, #28]
    250a:	693b      	ldr	r3, [r7, #16]
    250c:	89db      	ldrh	r3, [r3, #14]
    250e:	461a      	mov	r2, r3
    2510:	69fb      	ldr	r3, [r7, #28]
    2512:	429a      	cmp	r2, r3
    2514:	dcc9      	bgt.n	24aa <gfx_scroll_right+0x16>
    2516:	bf00      	nop
    2518:	3720      	adds	r7, #32
    251a:	46bd      	mov	sp, r7
    251c:	bd80      	pop	{r7, pc}
    251e:	bf00      	nop
    2520:	200026a8 	.word	0x200026a8

00002524 <gfx_get_pixel>:
    2524:	b590      	push	{r4, r7, lr}
    2526:	b085      	sub	sp, #20
    2528:	af00      	add	r7, sp, #0
    252a:	6078      	str	r0, [r7, #4]
    252c:	6039      	str	r1, [r7, #0]
    252e:	f002 ff5b 	bl	53e8 <get_video_params>
    2532:	60f8      	str	r0, [r7, #12]
    2534:	687b      	ldr	r3, [r7, #4]
    2536:	2b00      	cmp	r3, #0
    2538:	db0e      	blt.n	2558 <gfx_get_pixel+0x34>
    253a:	68fb      	ldr	r3, [r7, #12]
    253c:	899b      	ldrh	r3, [r3, #12]
    253e:	461a      	mov	r2, r3
    2540:	687b      	ldr	r3, [r7, #4]
    2542:	429a      	cmp	r2, r3
    2544:	dd08      	ble.n	2558 <gfx_get_pixel+0x34>
    2546:	683b      	ldr	r3, [r7, #0]
    2548:	2b00      	cmp	r3, #0
    254a:	db05      	blt.n	2558 <gfx_get_pixel+0x34>
    254c:	68fb      	ldr	r3, [r7, #12]
    254e:	89db      	ldrh	r3, [r3, #14]
    2550:	461a      	mov	r2, r3
    2552:	683b      	ldr	r3, [r7, #0]
    2554:	429a      	cmp	r2, r3
    2556:	dc01      	bgt.n	255c <gfx_get_pixel+0x38>
    2558:	23ff      	movs	r3, #255	; 0xff
    255a:	e014      	b.n	2586 <gfx_get_pixel+0x62>
    255c:	68fb      	ldr	r3, [r7, #12]
    255e:	7a1b      	ldrb	r3, [r3, #8]
    2560:	461a      	mov	r2, r3
    2562:	683b      	ldr	r3, [r7, #0]
    2564:	fb03 f202 	mul.w	r2, r3, r2
    2568:	687b      	ldr	r3, [r7, #4]
    256a:	105b      	asrs	r3, r3, #1
    256c:	4413      	add	r3, r2
    256e:	4a08      	ldr	r2, [pc, #32]	; (2590 <gfx_get_pixel+0x6c>)
    2570:	5cd4      	ldrb	r4, [r2, r3]
    2572:	687b      	ldr	r3, [r7, #4]
    2574:	f003 0301 	and.w	r3, r3, #1
    2578:	2b00      	cmp	r3, #0
    257a:	d101      	bne.n	2580 <gfx_get_pixel+0x5c>
    257c:	0923      	lsrs	r3, r4, #4
    257e:	b2dc      	uxtb	r4, r3
    2580:	f004 030f 	and.w	r3, r4, #15
    2584:	b2db      	uxtb	r3, r3
    2586:	4618      	mov	r0, r3
    2588:	3714      	adds	r7, #20
    258a:	46bd      	mov	sp, r7
    258c:	bd90      	pop	{r4, r7, pc}
    258e:	bf00      	nop
    2590:	200026a8 	.word	0x200026a8

00002594 <gfx_sprite>:
    2594:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    2598:	b086      	sub	sp, #24
    259a:	af00      	add	r7, sp, #0
    259c:	60f8      	str	r0, [r7, #12]
    259e:	60b9      	str	r1, [r7, #8]
    25a0:	4611      	mov	r1, r2
    25a2:	461a      	mov	r2, r3
    25a4:	460b      	mov	r3, r1
    25a6:	71fb      	strb	r3, [r7, #7]
    25a8:	4613      	mov	r3, r2
    25aa:	71bb      	strb	r3, [r7, #6]
    25ac:	2300      	movs	r3, #0
    25ae:	617b      	str	r3, [r7, #20]
    25b0:	4b34      	ldr	r3, [pc, #208]	; (2684 <gfx_sprite+0xf0>)
    25b2:	781b      	ldrb	r3, [r3, #0]
    25b4:	461a      	mov	r2, r3
    25b6:	4b34      	ldr	r3, [pc, #208]	; (2688 <gfx_sprite+0xf4>)
    25b8:	f813 a002 	ldrb.w	sl, [r3, r2]
    25bc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    25be:	1c5a      	adds	r2, r3, #1
    25c0:	63ba      	str	r2, [r7, #56]	; 0x38
    25c2:	781c      	ldrb	r4, [r3, #0]
    25c4:	4b2f      	ldr	r3, [pc, #188]	; (2684 <gfx_sprite+0xf0>)
    25c6:	781b      	ldrb	r3, [r3, #0]
    25c8:	461a      	mov	r2, r3
    25ca:	4b30      	ldr	r3, [pc, #192]	; (268c <gfx_sprite+0xf8>)
    25cc:	f813 8002 	ldrb.w	r8, [r3, r2]
    25d0:	4b2c      	ldr	r3, [pc, #176]	; (2684 <gfx_sprite+0xf0>)
    25d2:	781b      	ldrb	r3, [r3, #0]
    25d4:	461a      	mov	r2, r3
    25d6:	2308      	movs	r3, #8
    25d8:	fb93 f3f2 	sdiv	r3, r3, r2
    25dc:	b2de      	uxtb	r6, r3
    25de:	68bd      	ldr	r5, [r7, #8]
    25e0:	e045      	b.n	266e <gfx_sprite+0xda>
    25e2:	68fb      	ldr	r3, [r7, #12]
    25e4:	603b      	str	r3, [r7, #0]
    25e6:	e03b      	b.n	2660 <gfx_sprite+0xcc>
    25e8:	4b26      	ldr	r3, [pc, #152]	; (2684 <gfx_sprite+0xf0>)
    25ea:	781b      	ldrb	r3, [r3, #0]
    25ec:	2b03      	cmp	r3, #3
    25ee:	d80a      	bhi.n	2606 <gfx_sprite+0x72>
    25f0:	ea04 0308 	and.w	r3, r4, r8
    25f4:	b2db      	uxtb	r3, r3
    25f6:	461a      	mov	r2, r3
    25f8:	4653      	mov	r3, sl
    25fa:	fa42 f303 	asr.w	r3, r2, r3
    25fe:	4a24      	ldr	r2, [pc, #144]	; (2690 <gfx_sprite+0xfc>)
    2600:	f812 9003 	ldrb.w	r9, [r2, r3]
    2604:	e008      	b.n	2618 <gfx_sprite+0x84>
    2606:	ea04 0308 	and.w	r3, r4, r8
    260a:	b2db      	uxtb	r3, r3
    260c:	461a      	mov	r2, r3
    260e:	4653      	mov	r3, sl
    2610:	fa42 f303 	asr.w	r3, r2, r3
    2614:	fa5f f983 	uxtb.w	r9, r3
    2618:	2302      	movs	r3, #2
    261a:	464a      	mov	r2, r9
    261c:	4629      	mov	r1, r5
    261e:	6838      	ldr	r0, [r7, #0]
    2620:	f7ff fd48 	bl	20b4 <gfx_blit>
    2624:	4602      	mov	r2, r0
    2626:	697b      	ldr	r3, [r7, #20]
    2628:	4313      	orrs	r3, r2
    262a:	617b      	str	r3, [r7, #20]
    262c:	4622      	mov	r2, r4
    262e:	4653      	mov	r3, sl
    2630:	f1c3 0308 	rsb	r3, r3, #8
    2634:	fa02 f303 	lsl.w	r3, r2, r3
    2638:	b2dc      	uxtb	r4, r3
    263a:	4633      	mov	r3, r6
    263c:	3b01      	subs	r3, #1
    263e:	b2de      	uxtb	r6, r3
    2640:	2e00      	cmp	r6, #0
    2642:	d10a      	bne.n	265a <gfx_sprite+0xc6>
    2644:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    2646:	1c5a      	adds	r2, r3, #1
    2648:	63ba      	str	r2, [r7, #56]	; 0x38
    264a:	781c      	ldrb	r4, [r3, #0]
    264c:	4b0d      	ldr	r3, [pc, #52]	; (2684 <gfx_sprite+0xf0>)
    264e:	781b      	ldrb	r3, [r3, #0]
    2650:	461a      	mov	r2, r3
    2652:	2308      	movs	r3, #8
    2654:	fb93 f3f2 	sdiv	r3, r3, r2
    2658:	b2de      	uxtb	r6, r3
    265a:	683b      	ldr	r3, [r7, #0]
    265c:	3301      	adds	r3, #1
    265e:	603b      	str	r3, [r7, #0]
    2660:	79fa      	ldrb	r2, [r7, #7]
    2662:	68fb      	ldr	r3, [r7, #12]
    2664:	4413      	add	r3, r2
    2666:	683a      	ldr	r2, [r7, #0]
    2668:	4293      	cmp	r3, r2
    266a:	dcbd      	bgt.n	25e8 <gfx_sprite+0x54>
    266c:	3501      	adds	r5, #1
    266e:	79ba      	ldrb	r2, [r7, #6]
    2670:	68bb      	ldr	r3, [r7, #8]
    2672:	4413      	add	r3, r2
    2674:	42ab      	cmp	r3, r5
    2676:	dcb4      	bgt.n	25e2 <gfx_sprite+0x4e>
    2678:	697b      	ldr	r3, [r7, #20]
    267a:	4618      	mov	r0, r3
    267c:	3718      	adds	r7, #24
    267e:	46bd      	mov	sp, r7
    2680:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    2684:	20000158 	.word	0x20000158
    2688:	000058b8 	.word	0x000058b8
    268c:	000058b0 	.word	0x000058b0
    2690:	2000015c 	.word	0x2000015c

00002694 <set_sysclock>:
    2694:	b480      	push	{r7}
    2696:	af00      	add	r7, sp, #0
    2698:	4a18      	ldr	r2, [pc, #96]	; (26fc <set_sysclock+0x68>)
    269a:	4b18      	ldr	r3, [pc, #96]	; (26fc <set_sysclock+0x68>)
    269c:	681b      	ldr	r3, [r3, #0]
    269e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    26a2:	6013      	str	r3, [r2, #0]
    26a4:	bf00      	nop
    26a6:	4b15      	ldr	r3, [pc, #84]	; (26fc <set_sysclock+0x68>)
    26a8:	681b      	ldr	r3, [r3, #0]
    26aa:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    26ae:	2b00      	cmp	r3, #0
    26b0:	d0f9      	beq.n	26a6 <set_sysclock+0x12>
    26b2:	4a12      	ldr	r2, [pc, #72]	; (26fc <set_sysclock+0x68>)
    26b4:	4b11      	ldr	r3, [pc, #68]	; (26fc <set_sysclock+0x68>)
    26b6:	685b      	ldr	r3, [r3, #4]
    26b8:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    26bc:	6053      	str	r3, [r2, #4]
    26be:	4a0f      	ldr	r2, [pc, #60]	; (26fc <set_sysclock+0x68>)
    26c0:	4b0e      	ldr	r3, [pc, #56]	; (26fc <set_sysclock+0x68>)
    26c2:	681b      	ldr	r3, [r3, #0]
    26c4:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    26c8:	6013      	str	r3, [r2, #0]
    26ca:	bf00      	nop
    26cc:	4b0b      	ldr	r3, [pc, #44]	; (26fc <set_sysclock+0x68>)
    26ce:	681b      	ldr	r3, [r3, #0]
    26d0:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    26d4:	2b00      	cmp	r3, #0
    26d6:	d0f9      	beq.n	26cc <set_sysclock+0x38>
    26d8:	4a09      	ldr	r2, [pc, #36]	; (2700 <set_sysclock+0x6c>)
    26da:	4b09      	ldr	r3, [pc, #36]	; (2700 <set_sysclock+0x6c>)
    26dc:	681b      	ldr	r3, [r3, #0]
    26de:	f043 0312 	orr.w	r3, r3, #18
    26e2:	6013      	str	r3, [r2, #0]
    26e4:	4a05      	ldr	r2, [pc, #20]	; (26fc <set_sysclock+0x68>)
    26e6:	4b05      	ldr	r3, [pc, #20]	; (26fc <set_sysclock+0x68>)
    26e8:	685b      	ldr	r3, [r3, #4]
    26ea:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    26ee:	f043 0302 	orr.w	r3, r3, #2
    26f2:	6053      	str	r3, [r2, #4]
    26f4:	bf00      	nop
    26f6:	46bd      	mov	sp, r7
    26f8:	bc80      	pop	{r7}
    26fa:	4770      	bx	lr
    26fc:	40021000 	.word	0x40021000
    2700:	40022000 	.word	0x40022000

00002704 <draw_balls>:
    2704:	b590      	push	{r4, r7, lr}
    2706:	b085      	sub	sp, #20
    2708:	af02      	add	r7, sp, #8
    270a:	f002 fdb5 	bl	5278 <frame_sync>
    270e:	2300      	movs	r3, #0
    2710:	607b      	str	r3, [r7, #4]
    2712:	e022      	b.n	275a <draw_balls+0x56>
    2714:	4915      	ldr	r1, [pc, #84]	; (276c <draw_balls+0x68>)
    2716:	687a      	ldr	r2, [r7, #4]
    2718:	4613      	mov	r3, r2
    271a:	009b      	lsls	r3, r3, #2
    271c:	4413      	add	r3, r2
    271e:	009b      	lsls	r3, r3, #2
    2720:	440b      	add	r3, r1
    2722:	6818      	ldr	r0, [r3, #0]
    2724:	4911      	ldr	r1, [pc, #68]	; (276c <draw_balls+0x68>)
    2726:	687a      	ldr	r2, [r7, #4]
    2728:	4613      	mov	r3, r2
    272a:	009b      	lsls	r3, r3, #2
    272c:	4413      	add	r3, r2
    272e:	009b      	lsls	r3, r3, #2
    2730:	440b      	add	r3, r1
    2732:	3304      	adds	r3, #4
    2734:	681c      	ldr	r4, [r3, #0]
    2736:	490d      	ldr	r1, [pc, #52]	; (276c <draw_balls+0x68>)
    2738:	687a      	ldr	r2, [r7, #4]
    273a:	4613      	mov	r3, r2
    273c:	009b      	lsls	r3, r3, #2
    273e:	4413      	add	r3, r2
    2740:	009b      	lsls	r3, r3, #2
    2742:	440b      	add	r3, r1
    2744:	3310      	adds	r3, #16
    2746:	681b      	ldr	r3, [r3, #0]
    2748:	9300      	str	r3, [sp, #0]
    274a:	2308      	movs	r3, #8
    274c:	2208      	movs	r2, #8
    274e:	4621      	mov	r1, r4
    2750:	f7ff ff20 	bl	2594 <gfx_sprite>
    2754:	687b      	ldr	r3, [r7, #4]
    2756:	3301      	adds	r3, #1
    2758:	607b      	str	r3, [r7, #4]
    275a:	687b      	ldr	r3, [r7, #4]
    275c:	2b01      	cmp	r3, #1
    275e:	ddd9      	ble.n	2714 <draw_balls+0x10>
    2760:	f002 fd9a 	bl	5298 <wait_sync_end>
    2764:	bf00      	nop
    2766:	370c      	adds	r7, #12
    2768:	46bd      	mov	sp, r7
    276a:	bd90      	pop	{r4, r7, pc}
    276c:	20002680 	.word	0x20002680

00002770 <isqrt>:
    2770:	b580      	push	{r7, lr}
    2772:	b084      	sub	sp, #16
    2774:	af00      	add	r7, sp, #0
    2776:	6078      	str	r0, [r7, #4]
    2778:	687b      	ldr	r3, [r7, #4]
    277a:	2b01      	cmp	r3, #1
    277c:	dc01      	bgt.n	2782 <isqrt+0x12>
    277e:	687b      	ldr	r3, [r7, #4]
    2780:	e014      	b.n	27ac <isqrt+0x3c>
    2782:	687b      	ldr	r3, [r7, #4]
    2784:	109b      	asrs	r3, r3, #2
    2786:	4618      	mov	r0, r3
    2788:	f7ff fff2 	bl	2770 <isqrt>
    278c:	4603      	mov	r3, r0
    278e:	005b      	lsls	r3, r3, #1
    2790:	60fb      	str	r3, [r7, #12]
    2792:	68fb      	ldr	r3, [r7, #12]
    2794:	3301      	adds	r3, #1
    2796:	60bb      	str	r3, [r7, #8]
    2798:	68bb      	ldr	r3, [r7, #8]
    279a:	68ba      	ldr	r2, [r7, #8]
    279c:	fb02 f203 	mul.w	r2, r2, r3
    27a0:	687b      	ldr	r3, [r7, #4]
    27a2:	429a      	cmp	r2, r3
    27a4:	dd01      	ble.n	27aa <isqrt+0x3a>
    27a6:	68fb      	ldr	r3, [r7, #12]
    27a8:	e000      	b.n	27ac <isqrt+0x3c>
    27aa:	68bb      	ldr	r3, [r7, #8]
    27ac:	4618      	mov	r0, r3
    27ae:	3710      	adds	r7, #16
    27b0:	46bd      	mov	sp, r7
    27b2:	bd80      	pop	{r7, pc}

000027b4 <distance>:
    27b4:	b580      	push	{r7, lr}
    27b6:	b082      	sub	sp, #8
    27b8:	af00      	add	r7, sp, #0
    27ba:	6078      	str	r0, [r7, #4]
    27bc:	6039      	str	r1, [r7, #0]
    27be:	687b      	ldr	r3, [r7, #4]
    27c0:	681b      	ldr	r3, [r3, #0]
    27c2:	683a      	ldr	r2, [r7, #0]
    27c4:	6812      	ldr	r2, [r2, #0]
    27c6:	fb02 f203 	mul.w	r2, r2, r3
    27ca:	687b      	ldr	r3, [r7, #4]
    27cc:	685b      	ldr	r3, [r3, #4]
    27ce:	6839      	ldr	r1, [r7, #0]
    27d0:	6849      	ldr	r1, [r1, #4]
    27d2:	fb01 f303 	mul.w	r3, r1, r3
    27d6:	4413      	add	r3, r2
    27d8:	2b00      	cmp	r3, #0
    27da:	bfb8      	it	lt
    27dc:	425b      	neglt	r3, r3
    27de:	4618      	mov	r0, r3
    27e0:	f7ff ffc6 	bl	2770 <isqrt>
    27e4:	4603      	mov	r3, r0
    27e6:	4618      	mov	r0, r3
    27e8:	3708      	adds	r7, #8
    27ea:	46bd      	mov	sp, r7
    27ec:	bd80      	pop	{r7, pc}

000027ee <move_balls>:
    27ee:	b580      	push	{r7, lr}
    27f0:	b082      	sub	sp, #8
    27f2:	af00      	add	r7, sp, #0
    27f4:	f002 fdf8 	bl	53e8 <get_video_params>
    27f8:	6038      	str	r0, [r7, #0]
    27fa:	2300      	movs	r3, #0
    27fc:	607b      	str	r3, [r7, #4]
    27fe:	e0c3      	b.n	2988 <move_balls+0x19a>
    2800:	4979      	ldr	r1, [pc, #484]	; (29e8 <move_balls+0x1fa>)
    2802:	687a      	ldr	r2, [r7, #4]
    2804:	4613      	mov	r3, r2
    2806:	009b      	lsls	r3, r3, #2
    2808:	4413      	add	r3, r2
    280a:	009b      	lsls	r3, r3, #2
    280c:	440b      	add	r3, r1
    280e:	6819      	ldr	r1, [r3, #0]
    2810:	4875      	ldr	r0, [pc, #468]	; (29e8 <move_balls+0x1fa>)
    2812:	687a      	ldr	r2, [r7, #4]
    2814:	4613      	mov	r3, r2
    2816:	009b      	lsls	r3, r3, #2
    2818:	4413      	add	r3, r2
    281a:	009b      	lsls	r3, r3, #2
    281c:	4403      	add	r3, r0
    281e:	3308      	adds	r3, #8
    2820:	681b      	ldr	r3, [r3, #0]
    2822:	4419      	add	r1, r3
    2824:	4870      	ldr	r0, [pc, #448]	; (29e8 <move_balls+0x1fa>)
    2826:	687a      	ldr	r2, [r7, #4]
    2828:	4613      	mov	r3, r2
    282a:	009b      	lsls	r3, r3, #2
    282c:	4413      	add	r3, r2
    282e:	009b      	lsls	r3, r3, #2
    2830:	4403      	add	r3, r0
    2832:	6019      	str	r1, [r3, #0]
    2834:	496c      	ldr	r1, [pc, #432]	; (29e8 <move_balls+0x1fa>)
    2836:	687a      	ldr	r2, [r7, #4]
    2838:	4613      	mov	r3, r2
    283a:	009b      	lsls	r3, r3, #2
    283c:	4413      	add	r3, r2
    283e:	009b      	lsls	r3, r3, #2
    2840:	440b      	add	r3, r1
    2842:	681b      	ldr	r3, [r3, #0]
    2844:	f113 0f07 	cmn.w	r3, #7
    2848:	db0b      	blt.n	2862 <move_balls+0x74>
    284a:	4967      	ldr	r1, [pc, #412]	; (29e8 <move_balls+0x1fa>)
    284c:	687a      	ldr	r2, [r7, #4]
    284e:	4613      	mov	r3, r2
    2850:	009b      	lsls	r3, r3, #2
    2852:	4413      	add	r3, r2
    2854:	009b      	lsls	r3, r3, #2
    2856:	440b      	add	r3, r1
    2858:	681b      	ldr	r3, [r3, #0]
    285a:	683a      	ldr	r2, [r7, #0]
    285c:	8992      	ldrh	r2, [r2, #12]
    285e:	4293      	cmp	r3, r2
    2860:	db2c      	blt.n	28bc <move_balls+0xce>
    2862:	4961      	ldr	r1, [pc, #388]	; (29e8 <move_balls+0x1fa>)
    2864:	687a      	ldr	r2, [r7, #4]
    2866:	4613      	mov	r3, r2
    2868:	009b      	lsls	r3, r3, #2
    286a:	4413      	add	r3, r2
    286c:	009b      	lsls	r3, r3, #2
    286e:	440b      	add	r3, r1
    2870:	3308      	adds	r3, #8
    2872:	681b      	ldr	r3, [r3, #0]
    2874:	4259      	negs	r1, r3
    2876:	485c      	ldr	r0, [pc, #368]	; (29e8 <move_balls+0x1fa>)
    2878:	687a      	ldr	r2, [r7, #4]
    287a:	4613      	mov	r3, r2
    287c:	009b      	lsls	r3, r3, #2
    287e:	4413      	add	r3, r2
    2880:	009b      	lsls	r3, r3, #2
    2882:	4403      	add	r3, r0
    2884:	3308      	adds	r3, #8
    2886:	6019      	str	r1, [r3, #0]
    2888:	4957      	ldr	r1, [pc, #348]	; (29e8 <move_balls+0x1fa>)
    288a:	687a      	ldr	r2, [r7, #4]
    288c:	4613      	mov	r3, r2
    288e:	009b      	lsls	r3, r3, #2
    2890:	4413      	add	r3, r2
    2892:	009b      	lsls	r3, r3, #2
    2894:	440b      	add	r3, r1
    2896:	6819      	ldr	r1, [r3, #0]
    2898:	4853      	ldr	r0, [pc, #332]	; (29e8 <move_balls+0x1fa>)
    289a:	687a      	ldr	r2, [r7, #4]
    289c:	4613      	mov	r3, r2
    289e:	009b      	lsls	r3, r3, #2
    28a0:	4413      	add	r3, r2
    28a2:	009b      	lsls	r3, r3, #2
    28a4:	4403      	add	r3, r0
    28a6:	3308      	adds	r3, #8
    28a8:	681b      	ldr	r3, [r3, #0]
    28aa:	4419      	add	r1, r3
    28ac:	484e      	ldr	r0, [pc, #312]	; (29e8 <move_balls+0x1fa>)
    28ae:	687a      	ldr	r2, [r7, #4]
    28b0:	4613      	mov	r3, r2
    28b2:	009b      	lsls	r3, r3, #2
    28b4:	4413      	add	r3, r2
    28b6:	009b      	lsls	r3, r3, #2
    28b8:	4403      	add	r3, r0
    28ba:	6019      	str	r1, [r3, #0]
    28bc:	494a      	ldr	r1, [pc, #296]	; (29e8 <move_balls+0x1fa>)
    28be:	687a      	ldr	r2, [r7, #4]
    28c0:	4613      	mov	r3, r2
    28c2:	009b      	lsls	r3, r3, #2
    28c4:	4413      	add	r3, r2
    28c6:	009b      	lsls	r3, r3, #2
    28c8:	440b      	add	r3, r1
    28ca:	3304      	adds	r3, #4
    28cc:	6819      	ldr	r1, [r3, #0]
    28ce:	4846      	ldr	r0, [pc, #280]	; (29e8 <move_balls+0x1fa>)
    28d0:	687a      	ldr	r2, [r7, #4]
    28d2:	4613      	mov	r3, r2
    28d4:	009b      	lsls	r3, r3, #2
    28d6:	4413      	add	r3, r2
    28d8:	009b      	lsls	r3, r3, #2
    28da:	4403      	add	r3, r0
    28dc:	330c      	adds	r3, #12
    28de:	681b      	ldr	r3, [r3, #0]
    28e0:	4419      	add	r1, r3
    28e2:	4841      	ldr	r0, [pc, #260]	; (29e8 <move_balls+0x1fa>)
    28e4:	687a      	ldr	r2, [r7, #4]
    28e6:	4613      	mov	r3, r2
    28e8:	009b      	lsls	r3, r3, #2
    28ea:	4413      	add	r3, r2
    28ec:	009b      	lsls	r3, r3, #2
    28ee:	4403      	add	r3, r0
    28f0:	3304      	adds	r3, #4
    28f2:	6019      	str	r1, [r3, #0]
    28f4:	493c      	ldr	r1, [pc, #240]	; (29e8 <move_balls+0x1fa>)
    28f6:	687a      	ldr	r2, [r7, #4]
    28f8:	4613      	mov	r3, r2
    28fa:	009b      	lsls	r3, r3, #2
    28fc:	4413      	add	r3, r2
    28fe:	009b      	lsls	r3, r3, #2
    2900:	440b      	add	r3, r1
    2902:	3304      	adds	r3, #4
    2904:	681b      	ldr	r3, [r3, #0]
    2906:	2b0f      	cmp	r3, #15
    2908:	dd0c      	ble.n	2924 <move_balls+0x136>
    290a:	4937      	ldr	r1, [pc, #220]	; (29e8 <move_balls+0x1fa>)
    290c:	687a      	ldr	r2, [r7, #4]
    290e:	4613      	mov	r3, r2
    2910:	009b      	lsls	r3, r3, #2
    2912:	4413      	add	r3, r2
    2914:	009b      	lsls	r3, r3, #2
    2916:	440b      	add	r3, r1
    2918:	3304      	adds	r3, #4
    291a:	681b      	ldr	r3, [r3, #0]
    291c:	683a      	ldr	r2, [r7, #0]
    291e:	89d2      	ldrh	r2, [r2, #14]
    2920:	4293      	cmp	r3, r2
    2922:	db2e      	blt.n	2982 <move_balls+0x194>
    2924:	4930      	ldr	r1, [pc, #192]	; (29e8 <move_balls+0x1fa>)
    2926:	687a      	ldr	r2, [r7, #4]
    2928:	4613      	mov	r3, r2
    292a:	009b      	lsls	r3, r3, #2
    292c:	4413      	add	r3, r2
    292e:	009b      	lsls	r3, r3, #2
    2930:	440b      	add	r3, r1
    2932:	330c      	adds	r3, #12
    2934:	681b      	ldr	r3, [r3, #0]
    2936:	4259      	negs	r1, r3
    2938:	482b      	ldr	r0, [pc, #172]	; (29e8 <move_balls+0x1fa>)
    293a:	687a      	ldr	r2, [r7, #4]
    293c:	4613      	mov	r3, r2
    293e:	009b      	lsls	r3, r3, #2
    2940:	4413      	add	r3, r2
    2942:	009b      	lsls	r3, r3, #2
    2944:	4403      	add	r3, r0
    2946:	330c      	adds	r3, #12
    2948:	6019      	str	r1, [r3, #0]
    294a:	4927      	ldr	r1, [pc, #156]	; (29e8 <move_balls+0x1fa>)
    294c:	687a      	ldr	r2, [r7, #4]
    294e:	4613      	mov	r3, r2
    2950:	009b      	lsls	r3, r3, #2
    2952:	4413      	add	r3, r2
    2954:	009b      	lsls	r3, r3, #2
    2956:	440b      	add	r3, r1
    2958:	3304      	adds	r3, #4
    295a:	6819      	ldr	r1, [r3, #0]
    295c:	4822      	ldr	r0, [pc, #136]	; (29e8 <move_balls+0x1fa>)
    295e:	687a      	ldr	r2, [r7, #4]
    2960:	4613      	mov	r3, r2
    2962:	009b      	lsls	r3, r3, #2
    2964:	4413      	add	r3, r2
    2966:	009b      	lsls	r3, r3, #2
    2968:	4403      	add	r3, r0
    296a:	330c      	adds	r3, #12
    296c:	681b      	ldr	r3, [r3, #0]
    296e:	4419      	add	r1, r3
    2970:	481d      	ldr	r0, [pc, #116]	; (29e8 <move_balls+0x1fa>)
    2972:	687a      	ldr	r2, [r7, #4]
    2974:	4613      	mov	r3, r2
    2976:	009b      	lsls	r3, r3, #2
    2978:	4413      	add	r3, r2
    297a:	009b      	lsls	r3, r3, #2
    297c:	4403      	add	r3, r0
    297e:	3304      	adds	r3, #4
    2980:	6019      	str	r1, [r3, #0]
    2982:	687b      	ldr	r3, [r7, #4]
    2984:	3301      	adds	r3, #1
    2986:	607b      	str	r3, [r7, #4]
    2988:	687b      	ldr	r3, [r7, #4]
    298a:	2b01      	cmp	r3, #1
    298c:	f77f af38 	ble.w	2800 <move_balls+0x12>
    2990:	4916      	ldr	r1, [pc, #88]	; (29ec <move_balls+0x1fe>)
    2992:	4815      	ldr	r0, [pc, #84]	; (29e8 <move_balls+0x1fa>)
    2994:	f7ff ff0e 	bl	27b4 <distance>
    2998:	4603      	mov	r3, r0
    299a:	2b07      	cmp	r3, #7
    299c:	d81f      	bhi.n	29de <move_balls+0x1f0>
    299e:	4b12      	ldr	r3, [pc, #72]	; (29e8 <move_balls+0x1fa>)
    29a0:	689a      	ldr	r2, [r3, #8]
    29a2:	4b11      	ldr	r3, [pc, #68]	; (29e8 <move_balls+0x1fa>)
    29a4:	69db      	ldr	r3, [r3, #28]
    29a6:	429a      	cmp	r2, r3
    29a8:	d009      	beq.n	29be <move_balls+0x1d0>
    29aa:	4b0f      	ldr	r3, [pc, #60]	; (29e8 <move_balls+0x1fa>)
    29ac:	689b      	ldr	r3, [r3, #8]
    29ae:	607b      	str	r3, [r7, #4]
    29b0:	4b0d      	ldr	r3, [pc, #52]	; (29e8 <move_balls+0x1fa>)
    29b2:	69db      	ldr	r3, [r3, #28]
    29b4:	4a0c      	ldr	r2, [pc, #48]	; (29e8 <move_balls+0x1fa>)
    29b6:	6093      	str	r3, [r2, #8]
    29b8:	4a0b      	ldr	r2, [pc, #44]	; (29e8 <move_balls+0x1fa>)
    29ba:	687b      	ldr	r3, [r7, #4]
    29bc:	61d3      	str	r3, [r2, #28]
    29be:	4b0a      	ldr	r3, [pc, #40]	; (29e8 <move_balls+0x1fa>)
    29c0:	68da      	ldr	r2, [r3, #12]
    29c2:	4b09      	ldr	r3, [pc, #36]	; (29e8 <move_balls+0x1fa>)
    29c4:	6a1b      	ldr	r3, [r3, #32]
    29c6:	429a      	cmp	r2, r3
    29c8:	d009      	beq.n	29de <move_balls+0x1f0>
    29ca:	4b07      	ldr	r3, [pc, #28]	; (29e8 <move_balls+0x1fa>)
    29cc:	68db      	ldr	r3, [r3, #12]
    29ce:	607b      	str	r3, [r7, #4]
    29d0:	4b05      	ldr	r3, [pc, #20]	; (29e8 <move_balls+0x1fa>)
    29d2:	6a1b      	ldr	r3, [r3, #32]
    29d4:	4a04      	ldr	r2, [pc, #16]	; (29e8 <move_balls+0x1fa>)
    29d6:	60d3      	str	r3, [r2, #12]
    29d8:	4a03      	ldr	r2, [pc, #12]	; (29e8 <move_balls+0x1fa>)
    29da:	687b      	ldr	r3, [r7, #4]
    29dc:	6213      	str	r3, [r2, #32]
    29de:	bf00      	nop
    29e0:	3708      	adds	r7, #8
    29e2:	46bd      	mov	sp, r7
    29e4:	bd80      	pop	{r7, pc}
    29e6:	bf00      	nop
    29e8:	20002680 	.word	0x20002680
    29ec:	20002694 	.word	0x20002694

000029f0 <init_balls>:
    29f0:	b580      	push	{r7, lr}
    29f2:	b082      	sub	sp, #8
    29f4:	af00      	add	r7, sp, #0
    29f6:	f002 fcf7 	bl	53e8 <get_video_params>
    29fa:	6038      	str	r0, [r7, #0]
    29fc:	4b33      	ldr	r3, [pc, #204]	; (2acc <init_balls+0xdc>)
    29fe:	681b      	ldr	r3, [r3, #0]
    2a00:	4618      	mov	r0, r3
    2a02:	f7fd fd3d 	bl	480 <srand>
    2a06:	2300      	movs	r3, #0
    2a08:	607b      	str	r3, [r7, #4]
    2a0a:	e057      	b.n	2abc <init_balls+0xcc>
    2a0c:	f7fd fd46 	bl	49c <rand>
    2a10:	4603      	mov	r3, r0
    2a12:	683a      	ldr	r2, [r7, #0]
    2a14:	8992      	ldrh	r2, [r2, #12]
    2a16:	fb93 f1f2 	sdiv	r1, r3, r2
    2a1a:	fb02 f201 	mul.w	r2, r2, r1
    2a1e:	1a99      	subs	r1, r3, r2
    2a20:	482b      	ldr	r0, [pc, #172]	; (2ad0 <init_balls+0xe0>)
    2a22:	687a      	ldr	r2, [r7, #4]
    2a24:	4613      	mov	r3, r2
    2a26:	009b      	lsls	r3, r3, #2
    2a28:	4413      	add	r3, r2
    2a2a:	009b      	lsls	r3, r3, #2
    2a2c:	4403      	add	r3, r0
    2a2e:	6019      	str	r1, [r3, #0]
    2a30:	f7fd fd34 	bl	49c <rand>
    2a34:	4602      	mov	r2, r0
    2a36:	683b      	ldr	r3, [r7, #0]
    2a38:	89db      	ldrh	r3, [r3, #14]
    2a3a:	3b10      	subs	r3, #16
    2a3c:	fb92 f1f3 	sdiv	r1, r2, r3
    2a40:	fb03 f301 	mul.w	r3, r3, r1
    2a44:	1ad3      	subs	r3, r2, r3
    2a46:	f103 0110 	add.w	r1, r3, #16
    2a4a:	4821      	ldr	r0, [pc, #132]	; (2ad0 <init_balls+0xe0>)
    2a4c:	687a      	ldr	r2, [r7, #4]
    2a4e:	4613      	mov	r3, r2
    2a50:	009b      	lsls	r3, r3, #2
    2a52:	4413      	add	r3, r2
    2a54:	009b      	lsls	r3, r3, #2
    2a56:	4403      	add	r3, r0
    2a58:	3304      	adds	r3, #4
    2a5a:	6019      	str	r1, [r3, #0]
    2a5c:	491c      	ldr	r1, [pc, #112]	; (2ad0 <init_balls+0xe0>)
    2a5e:	687a      	ldr	r2, [r7, #4]
    2a60:	4613      	mov	r3, r2
    2a62:	009b      	lsls	r3, r3, #2
    2a64:	4413      	add	r3, r2
    2a66:	009b      	lsls	r3, r3, #2
    2a68:	440b      	add	r3, r1
    2a6a:	3308      	adds	r3, #8
    2a6c:	2201      	movs	r2, #1
    2a6e:	601a      	str	r2, [r3, #0]
    2a70:	4917      	ldr	r1, [pc, #92]	; (2ad0 <init_balls+0xe0>)
    2a72:	687a      	ldr	r2, [r7, #4]
    2a74:	4613      	mov	r3, r2
    2a76:	009b      	lsls	r3, r3, #2
    2a78:	4413      	add	r3, r2
    2a7a:	009b      	lsls	r3, r3, #2
    2a7c:	440b      	add	r3, r1
    2a7e:	330c      	adds	r3, #12
    2a80:	2201      	movs	r2, #1
    2a82:	601a      	str	r2, [r3, #0]
    2a84:	683b      	ldr	r3, [r7, #0]
    2a86:	781b      	ldrb	r3, [r3, #0]
    2a88:	2b00      	cmp	r3, #0
    2a8a:	d10a      	bne.n	2aa2 <init_balls+0xb2>
    2a8c:	4910      	ldr	r1, [pc, #64]	; (2ad0 <init_balls+0xe0>)
    2a8e:	687a      	ldr	r2, [r7, #4]
    2a90:	4613      	mov	r3, r2
    2a92:	009b      	lsls	r3, r3, #2
    2a94:	4413      	add	r3, r2
    2a96:	009b      	lsls	r3, r3, #2
    2a98:	440b      	add	r3, r1
    2a9a:	3310      	adds	r3, #16
    2a9c:	4a0d      	ldr	r2, [pc, #52]	; (2ad4 <init_balls+0xe4>)
    2a9e:	601a      	str	r2, [r3, #0]
    2aa0:	e009      	b.n	2ab6 <init_balls+0xc6>
    2aa2:	490b      	ldr	r1, [pc, #44]	; (2ad0 <init_balls+0xe0>)
    2aa4:	687a      	ldr	r2, [r7, #4]
    2aa6:	4613      	mov	r3, r2
    2aa8:	009b      	lsls	r3, r3, #2
    2aaa:	4413      	add	r3, r2
    2aac:	009b      	lsls	r3, r3, #2
    2aae:	440b      	add	r3, r1
    2ab0:	3310      	adds	r3, #16
    2ab2:	4a09      	ldr	r2, [pc, #36]	; (2ad8 <init_balls+0xe8>)
    2ab4:	601a      	str	r2, [r3, #0]
    2ab6:	687b      	ldr	r3, [r7, #4]
    2ab8:	3301      	adds	r3, #1
    2aba:	607b      	str	r3, [r7, #4]
    2abc:	687b      	ldr	r3, [r7, #4]
    2abe:	2b01      	cmp	r3, #1
    2ac0:	dda4      	ble.n	2a0c <init_balls+0x1c>
    2ac2:	bf00      	nop
    2ac4:	3708      	adds	r7, #8
    2ac6:	46bd      	mov	sp, r7
    2ac8:	bd80      	pop	{r7, pc}
    2aca:	bf00      	nop
    2acc:	20004e0c 	.word	0x20004e0c
    2ad0:	20002680 	.word	0x20002680
    2ad4:	000058c0 	.word	0x000058c0
    2ad8:	000058e0 	.word	0x000058e0

00002adc <color_bars>:
    2adc:	b580      	push	{r7, lr}
    2ade:	b084      	sub	sp, #16
    2ae0:	af00      	add	r7, sp, #0
    2ae2:	2300      	movs	r3, #0
    2ae4:	71fb      	strb	r3, [r7, #7]
    2ae6:	f002 fc7f 	bl	53e8 <get_video_params>
    2aea:	6038      	str	r0, [r7, #0]
    2aec:	683b      	ldr	r3, [r7, #0]
    2aee:	89db      	ldrh	r3, [r3, #14]
    2af0:	089b      	lsrs	r3, r3, #2
    2af2:	b29b      	uxth	r3, r3
    2af4:	461a      	mov	r2, r3
    2af6:	4613      	mov	r3, r2
    2af8:	005b      	lsls	r3, r3, #1
    2afa:	4413      	add	r3, r2
    2afc:	60bb      	str	r3, [r7, #8]
    2afe:	e01b      	b.n	2b38 <color_bars+0x5c>
    2b00:	2310      	movs	r3, #16
    2b02:	71fb      	strb	r3, [r7, #7]
    2b04:	2300      	movs	r3, #0
    2b06:	60fb      	str	r3, [r7, #12]
    2b08:	e010      	b.n	2b2c <color_bars+0x50>
    2b0a:	68fb      	ldr	r3, [r7, #12]
    2b0c:	f003 0307 	and.w	r3, r3, #7
    2b10:	2b00      	cmp	r3, #0
    2b12:	d102      	bne.n	2b1a <color_bars+0x3e>
    2b14:	79fb      	ldrb	r3, [r7, #7]
    2b16:	3b01      	subs	r3, #1
    2b18:	71fb      	strb	r3, [r7, #7]
    2b1a:	79fb      	ldrb	r3, [r7, #7]
    2b1c:	461a      	mov	r2, r3
    2b1e:	68b9      	ldr	r1, [r7, #8]
    2b20:	68f8      	ldr	r0, [r7, #12]
    2b22:	f7ff fb49 	bl	21b8 <gfx_plot>
    2b26:	68fb      	ldr	r3, [r7, #12]
    2b28:	3301      	adds	r3, #1
    2b2a:	60fb      	str	r3, [r7, #12]
    2b2c:	68fb      	ldr	r3, [r7, #12]
    2b2e:	2b7f      	cmp	r3, #127	; 0x7f
    2b30:	ddeb      	ble.n	2b0a <color_bars+0x2e>
    2b32:	68bb      	ldr	r3, [r7, #8]
    2b34:	3301      	adds	r3, #1
    2b36:	60bb      	str	r3, [r7, #8]
    2b38:	683b      	ldr	r3, [r7, #0]
    2b3a:	89db      	ldrh	r3, [r3, #14]
    2b3c:	461a      	mov	r2, r3
    2b3e:	68bb      	ldr	r3, [r7, #8]
    2b40:	429a      	cmp	r2, r3
    2b42:	dcdd      	bgt.n	2b00 <color_bars+0x24>
    2b44:	bf00      	nop
    2b46:	3710      	adds	r7, #16
    2b48:	46bd      	mov	sp, r7
    2b4a:	bd80      	pop	{r7, pc}

00002b4c <vertical_bars>:
    2b4c:	b580      	push	{r7, lr}
    2b4e:	b082      	sub	sp, #8
    2b50:	af00      	add	r7, sp, #0
    2b52:	f002 fc49 	bl	53e8 <get_video_params>
    2b56:	6038      	str	r0, [r7, #0]
    2b58:	2310      	movs	r3, #16
    2b5a:	607b      	str	r3, [r7, #4]
    2b5c:	e00f      	b.n	2b7e <vertical_bars+0x32>
    2b5e:	220f      	movs	r2, #15
    2b60:	6879      	ldr	r1, [r7, #4]
    2b62:	2000      	movs	r0, #0
    2b64:	f7ff fb28 	bl	21b8 <gfx_plot>
    2b68:	683b      	ldr	r3, [r7, #0]
    2b6a:	899b      	ldrh	r3, [r3, #12]
    2b6c:	3b01      	subs	r3, #1
    2b6e:	220f      	movs	r2, #15
    2b70:	6879      	ldr	r1, [r7, #4]
    2b72:	4618      	mov	r0, r3
    2b74:	f7ff fb20 	bl	21b8 <gfx_plot>
    2b78:	687b      	ldr	r3, [r7, #4]
    2b7a:	3301      	adds	r3, #1
    2b7c:	607b      	str	r3, [r7, #4]
    2b7e:	683b      	ldr	r3, [r7, #0]
    2b80:	89db      	ldrh	r3, [r3, #14]
    2b82:	461a      	mov	r2, r3
    2b84:	687b      	ldr	r3, [r7, #4]
    2b86:	429a      	cmp	r2, r3
    2b88:	dce9      	bgt.n	2b5e <vertical_bars+0x12>
    2b8a:	bf00      	nop
    2b8c:	3708      	adds	r7, #8
    2b8e:	46bd      	mov	sp, r7
    2b90:	bd80      	pop	{r7, pc}

00002b92 <horiz_bars>:
    2b92:	b580      	push	{r7, lr}
    2b94:	b082      	sub	sp, #8
    2b96:	af00      	add	r7, sp, #0
    2b98:	f002 fc26 	bl	53e8 <get_video_params>
    2b9c:	6038      	str	r0, [r7, #0]
    2b9e:	2300      	movs	r3, #0
    2ba0:	607b      	str	r3, [r7, #4]
    2ba2:	e00f      	b.n	2bc4 <horiz_bars+0x32>
    2ba4:	220f      	movs	r2, #15
    2ba6:	2100      	movs	r1, #0
    2ba8:	6878      	ldr	r0, [r7, #4]
    2baa:	f7ff fb05 	bl	21b8 <gfx_plot>
    2bae:	683b      	ldr	r3, [r7, #0]
    2bb0:	89db      	ldrh	r3, [r3, #14]
    2bb2:	3b01      	subs	r3, #1
    2bb4:	220f      	movs	r2, #15
    2bb6:	4619      	mov	r1, r3
    2bb8:	6878      	ldr	r0, [r7, #4]
    2bba:	f7ff fafd 	bl	21b8 <gfx_plot>
    2bbe:	687b      	ldr	r3, [r7, #4]
    2bc0:	3301      	adds	r3, #1
    2bc2:	607b      	str	r3, [r7, #4]
    2bc4:	683b      	ldr	r3, [r7, #0]
    2bc6:	899b      	ldrh	r3, [r3, #12]
    2bc8:	461a      	mov	r2, r3
    2bca:	687b      	ldr	r3, [r7, #4]
    2bcc:	429a      	cmp	r2, r3
    2bce:	dce9      	bgt.n	2ba4 <horiz_bars+0x12>
    2bd0:	bf00      	nop
    2bd2:	3708      	adds	r7, #8
    2bd4:	46bd      	mov	sp, r7
    2bd6:	bd80      	pop	{r7, pc}

00002bd8 <video_test>:
    2bd8:	b580      	push	{r7, lr}
    2bda:	b082      	sub	sp, #8
    2bdc:	af00      	add	r7, sp, #0
    2bde:	2300      	movs	r3, #0
    2be0:	71fb      	strb	r3, [r7, #7]
    2be2:	79fb      	ldrb	r3, [r7, #7]
    2be4:	4618      	mov	r0, r3
    2be6:	f002 fb67 	bl	52b8 <set_video_mode>
    2bea:	f7ff ff77 	bl	2adc <color_bars>
    2bee:	f7ff ffad 	bl	2b4c <vertical_bars>
    2bf2:	f7ff ffce 	bl	2b92 <horiz_bars>
    2bf6:	4b2f      	ldr	r3, [pc, #188]	; (2cb4 <video_test+0xdc>)
    2bf8:	2110      	movs	r1, #16
    2bfa:	4618      	mov	r0, r3
    2bfc:	f001 ff7a 	bl	4af4 <print_int>
    2c00:	4b2d      	ldr	r3, [pc, #180]	; (2cb8 <video_test+0xe0>)
    2c02:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2c06:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2c0a:	210a      	movs	r1, #10
    2c0c:	4618      	mov	r0, r3
    2c0e:	f001 ff71 	bl	4af4 <print_int>
    2c12:	f7ff feed 	bl	29f0 <init_balls>
    2c16:	2300      	movs	r3, #0
    2c18:	71fb      	strb	r3, [r7, #7]
    2c1a:	f7ff fd73 	bl	2704 <draw_balls>
    2c1e:	f7ff fd71 	bl	2704 <draw_balls>
    2c22:	f7ff fde4 	bl	27ee <move_balls>
    2c26:	2010      	movs	r0, #16
    2c28:	f7fe fecc 	bl	19c4 <btn_query_down>
    2c2c:	4603      	mov	r3, r0
    2c2e:	2b00      	cmp	r3, #0
    2c30:	d02f      	beq.n	2c92 <video_test+0xba>
    2c32:	79fb      	ldrb	r3, [r7, #7]
    2c34:	3301      	adds	r3, #1
    2c36:	71fb      	strb	r3, [r7, #7]
    2c38:	79fa      	ldrb	r2, [r7, #7]
    2c3a:	4b20      	ldr	r3, [pc, #128]	; (2cbc <video_test+0xe4>)
    2c3c:	fba3 1302 	umull	r1, r3, r3, r2
    2c40:	0859      	lsrs	r1, r3, #1
    2c42:	460b      	mov	r3, r1
    2c44:	005b      	lsls	r3, r3, #1
    2c46:	440b      	add	r3, r1
    2c48:	1ad3      	subs	r3, r2, r3
    2c4a:	71fb      	strb	r3, [r7, #7]
    2c4c:	79fb      	ldrb	r3, [r7, #7]
    2c4e:	4618      	mov	r0, r3
    2c50:	f002 fb32 	bl	52b8 <set_video_mode>
    2c54:	79fb      	ldrb	r3, [r7, #7]
    2c56:	2b01      	cmp	r3, #1
    2c58:	d009      	beq.n	2c6e <video_test+0x96>
    2c5a:	2b02      	cmp	r3, #2
    2c5c:	d00b      	beq.n	2c76 <video_test+0x9e>
    2c5e:	2b00      	cmp	r3, #0
    2c60:	d10d      	bne.n	2c7e <video_test+0xa6>
    2c62:	4817      	ldr	r0, [pc, #92]	; (2cc0 <video_test+0xe8>)
    2c64:	f001 ff16 	bl	4a94 <print>
    2c68:	f7ff ff38 	bl	2adc <color_bars>
    2c6c:	e007      	b.n	2c7e <video_test+0xa6>
    2c6e:	4815      	ldr	r0, [pc, #84]	; (2cc4 <video_test+0xec>)
    2c70:	f001 ff10 	bl	4a94 <print>
    2c74:	e003      	b.n	2c7e <video_test+0xa6>
    2c76:	4814      	ldr	r0, [pc, #80]	; (2cc8 <video_test+0xf0>)
    2c78:	f001 ff0c 	bl	4a94 <print>
    2c7c:	bf00      	nop
    2c7e:	f7ff ff65 	bl	2b4c <vertical_bars>
    2c82:	f7ff ff86 	bl	2b92 <horiz_bars>
    2c86:	f7ff feb3 	bl	29f0 <init_balls>
    2c8a:	2010      	movs	r0, #16
    2c8c:	f7fe fede 	bl	1a4c <btn_wait_up>
    2c90:	e7c3      	b.n	2c1a <video_test+0x42>
    2c92:	2020      	movs	r0, #32
    2c94:	f7fe fe96 	bl	19c4 <btn_query_down>
    2c98:	4603      	mov	r3, r0
    2c9a:	2b00      	cmp	r3, #0
    2c9c:	d0bd      	beq.n	2c1a <video_test+0x42>
    2c9e:	2020      	movs	r0, #32
    2ca0:	f7fe fed4 	bl	1a4c <btn_wait_up>
    2ca4:	bf00      	nop
    2ca6:	2000      	movs	r0, #0
    2ca8:	f002 fb06 	bl	52b8 <set_video_mode>
    2cac:	bf00      	nop
    2cae:	3708      	adds	r7, #8
    2cb0:	46bd      	mov	sp, r7
    2cb2:	bd80      	pop	{r7, pc}
    2cb4:	00005c00 	.word	0x00005c00
    2cb8:	20004e20 	.word	0x20004e20
    2cbc:	aaaaaaab 	.word	0xaaaaaaab
    2cc0:	000058e8 	.word	0x000058e8
    2cc4:	00005908 	.word	0x00005908
    2cc8:	00005920 	.word	0x00005920

00002ccc <sound_test>:
    2ccc:	b580      	push	{r7, lr}
    2cce:	b082      	sub	sp, #8
    2cd0:	af00      	add	r7, sp, #0
    2cd2:	23ff      	movs	r3, #255	; 0xff
    2cd4:	71fb      	strb	r3, [r7, #7]
    2cd6:	f7ff fabd 	bl	2254 <gfx_cls>
    2cda:	4829      	ldr	r0, [pc, #164]	; (2d80 <sound_test+0xb4>)
    2cdc:	f001 feda 	bl	4a94 <print>
    2ce0:	e040      	b.n	2d64 <sound_test+0x98>
    2ce2:	f7fe fedb 	bl	1a9c <btn_wait_any>
    2ce6:	4603      	mov	r3, r0
    2ce8:	71fb      	strb	r3, [r7, #7]
    2cea:	79fb      	ldrb	r3, [r7, #7]
    2cec:	2b08      	cmp	r3, #8
    2cee:	d01c      	beq.n	2d2a <sound_test+0x5e>
    2cf0:	2b08      	cmp	r3, #8
    2cf2:	dc06      	bgt.n	2d02 <sound_test+0x36>
    2cf4:	2b02      	cmp	r3, #2
    2cf6:	d010      	beq.n	2d1a <sound_test+0x4e>
    2cf8:	2b04      	cmp	r3, #4
    2cfa:	d012      	beq.n	2d22 <sound_test+0x56>
    2cfc:	2b01      	cmp	r3, #1
    2cfe:	d01c      	beq.n	2d3a <sound_test+0x6e>
    2d00:	e02b      	b.n	2d5a <sound_test+0x8e>
    2d02:	2b20      	cmp	r3, #32
    2d04:	d01d      	beq.n	2d42 <sound_test+0x76>
    2d06:	2b20      	cmp	r3, #32
    2d08:	dc02      	bgt.n	2d10 <sound_test+0x44>
    2d0a:	2b10      	cmp	r3, #16
    2d0c:	d011      	beq.n	2d32 <sound_test+0x66>
    2d0e:	e024      	b.n	2d5a <sound_test+0x8e>
    2d10:	2b40      	cmp	r3, #64	; 0x40
    2d12:	d01a      	beq.n	2d4a <sound_test+0x7e>
    2d14:	2b80      	cmp	r3, #128	; 0x80
    2d16:	d01c      	beq.n	2d52 <sound_test+0x86>
    2d18:	e01f      	b.n	2d5a <sound_test+0x8e>
    2d1a:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2d1e:	80bb      	strh	r3, [r7, #4]
    2d20:	e01b      	b.n	2d5a <sound_test+0x8e>
    2d22:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2d26:	80bb      	strh	r3, [r7, #4]
    2d28:	e017      	b.n	2d5a <sound_test+0x8e>
    2d2a:	f240 13ed 	movw	r3, #493	; 0x1ed
    2d2e:	80bb      	strh	r3, [r7, #4]
    2d30:	e013      	b.n	2d5a <sound_test+0x8e>
    2d32:	f240 230b 	movw	r3, #523	; 0x20b
    2d36:	80bb      	strh	r3, [r7, #4]
    2d38:	e00f      	b.n	2d5a <sound_test+0x8e>
    2d3a:	f240 232a 	movw	r3, #554	; 0x22a
    2d3e:	80bb      	strh	r3, [r7, #4]
    2d40:	e00b      	b.n	2d5a <sound_test+0x8e>
    2d42:	f240 234b 	movw	r3, #587	; 0x24b
    2d46:	80bb      	strh	r3, [r7, #4]
    2d48:	e007      	b.n	2d5a <sound_test+0x8e>
    2d4a:	f240 236e 	movw	r3, #622	; 0x26e
    2d4e:	80bb      	strh	r3, [r7, #4]
    2d50:	e003      	b.n	2d5a <sound_test+0x8e>
    2d52:	f240 2393 	movw	r3, #659	; 0x293
    2d56:	80bb      	strh	r3, [r7, #4]
    2d58:	bf00      	nop
    2d5a:	88bb      	ldrh	r3, [r7, #4]
    2d5c:	2103      	movs	r1, #3
    2d5e:	4618      	mov	r0, r3
    2d60:	f001 fa22 	bl	41a8 <tone>
    2d64:	79fb      	ldrb	r3, [r7, #7]
    2d66:	2b20      	cmp	r3, #32
    2d68:	d1bb      	bne.n	2ce2 <sound_test+0x16>
    2d6a:	79fb      	ldrb	r3, [r7, #7]
    2d6c:	4618      	mov	r0, r3
    2d6e:	f7fe fe6d 	bl	1a4c <btn_wait_up>
    2d72:	203c      	movs	r0, #60	; 0x3c
    2d74:	f001 fa8a 	bl	428c <sound_sampler>
    2d78:	bf00      	nop
    2d7a:	3708      	adds	r7, #8
    2d7c:	46bd      	mov	sp, r7
    2d7e:	bd80      	pop	{r7, pc}
    2d80:	00005938 	.word	0x00005938

00002d84 <display_keymap>:
    2d84:	b580      	push	{r7, lr}
    2d86:	b084      	sub	sp, #16
    2d88:	af00      	add	r7, sp, #0
    2d8a:	6078      	str	r0, [r7, #4]
    2d8c:	2108      	movs	r1, #8
    2d8e:	2000      	movs	r0, #0
    2d90:	f001 fe54 	bl	4a3c <set_cursor>
    2d94:	2300      	movs	r3, #0
    2d96:	60fb      	str	r3, [r7, #12]
    2d98:	e00a      	b.n	2db0 <display_keymap+0x2c>
    2d9a:	68fb      	ldr	r3, [r7, #12]
    2d9c:	687a      	ldr	r2, [r7, #4]
    2d9e:	4413      	add	r3, r2
    2da0:	781b      	ldrb	r3, [r3, #0]
    2da2:	2110      	movs	r1, #16
    2da4:	4618      	mov	r0, r3
    2da6:	f001 fea5 	bl	4af4 <print_int>
    2daa:	68fb      	ldr	r3, [r7, #12]
    2dac:	3301      	adds	r3, #1
    2dae:	60fb      	str	r3, [r7, #12]
    2db0:	68fb      	ldr	r3, [r7, #12]
    2db2:	2b07      	cmp	r3, #7
    2db4:	ddf1      	ble.n	2d9a <display_keymap+0x16>
    2db6:	bf00      	nop
    2db8:	3710      	adds	r7, #16
    2dba:	46bd      	mov	sp, r7
    2dbc:	bd80      	pop	{r7, pc}

00002dbe <buttons_map>:
    2dbe:	b580      	push	{r7, lr}
    2dc0:	b086      	sub	sp, #24
    2dc2:	af00      	add	r7, sp, #0
    2dc4:	23ff      	movs	r3, #255	; 0xff
    2dc6:	74fb      	strb	r3, [r7, #19]
    2dc8:	f7fe feb0 	bl	1b2c <get_keymap>
    2dcc:	60f8      	str	r0, [r7, #12]
    2dce:	f7ff fa41 	bl	2254 <gfx_cls>
    2dd2:	487d      	ldr	r0, [pc, #500]	; (2fc8 <buttons_map+0x20a>)
    2dd4:	f001 fe81 	bl	4ada <println>
    2dd8:	2300      	movs	r3, #0
    2dda:	617b      	str	r3, [r7, #20]
    2ddc:	e00b      	b.n	2df6 <buttons_map+0x38>
    2dde:	697b      	ldr	r3, [r7, #20]
    2de0:	68fa      	ldr	r2, [r7, #12]
    2de2:	4413      	add	r3, r2
    2de4:	7819      	ldrb	r1, [r3, #0]
    2de6:	1d3a      	adds	r2, r7, #4
    2de8:	697b      	ldr	r3, [r7, #20]
    2dea:	4413      	add	r3, r2
    2dec:	460a      	mov	r2, r1
    2dee:	701a      	strb	r2, [r3, #0]
    2df0:	697b      	ldr	r3, [r7, #20]
    2df2:	3301      	adds	r3, #1
    2df4:	617b      	str	r3, [r7, #20]
    2df6:	697b      	ldr	r3, [r7, #20]
    2df8:	2b07      	cmp	r3, #7
    2dfa:	ddf0      	ble.n	2dde <buttons_map+0x20>
    2dfc:	1d3b      	adds	r3, r7, #4
    2dfe:	4618      	mov	r0, r3
    2e00:	f7ff ffc0 	bl	2d84 <display_keymap>
    2e04:	2108      	movs	r1, #8
    2e06:	2000      	movs	r0, #0
    2e08:	f001 fe18 	bl	4a3c <set_cursor>
    2e0c:	2001      	movs	r0, #1
    2e0e:	f001 ffab 	bl	4d68 <show_cursor>
    2e12:	2300      	movs	r3, #0
    2e14:	617b      	str	r3, [r7, #20]
    2e16:	1d3a      	adds	r2, r7, #4
    2e18:	697b      	ldr	r3, [r7, #20]
    2e1a:	4413      	add	r3, r2
    2e1c:	781b      	ldrb	r3, [r3, #0]
    2e1e:	74bb      	strb	r3, [r7, #18]
    2e20:	e0b8      	b.n	2f94 <buttons_map+0x1d6>
    2e22:	f7fe fe3b 	bl	1a9c <btn_wait_any>
    2e26:	4603      	mov	r3, r0
    2e28:	74fb      	strb	r3, [r7, #19]
    2e2a:	7cfb      	ldrb	r3, [r7, #19]
    2e2c:	2b08      	cmp	r3, #8
    2e2e:	d00b      	beq.n	2e48 <buttons_map+0x8a>
    2e30:	2b08      	cmp	r3, #8
    2e32:	dc04      	bgt.n	2e3e <buttons_map+0x80>
    2e34:	2b02      	cmp	r3, #2
    2e36:	d042      	beq.n	2ebe <buttons_map+0x100>
    2e38:	2b04      	cmp	r3, #4
    2e3a:	d05f      	beq.n	2efc <buttons_map+0x13e>
    2e3c:	e0a6      	b.n	2f8c <buttons_map+0x1ce>
    2e3e:	2b10      	cmp	r3, #16
    2e40:	d020      	beq.n	2e84 <buttons_map+0xc6>
    2e42:	2b40      	cmp	r3, #64	; 0x40
    2e44:	d079      	beq.n	2f3a <buttons_map+0x17c>
    2e46:	e0a1      	b.n	2f8c <buttons_map+0x1ce>
    2e48:	697b      	ldr	r3, [r7, #20]
    2e4a:	2b00      	cmp	r3, #0
    2e4c:	f000 8097 	beq.w	2f7e <buttons_map+0x1c0>
    2e50:	2000      	movs	r0, #0
    2e52:	f001 ff89 	bl	4d68 <show_cursor>
    2e56:	697b      	ldr	r3, [r7, #20]
    2e58:	3b01      	subs	r3, #1
    2e5a:	617b      	str	r3, [r7, #20]
    2e5c:	697b      	ldr	r3, [r7, #20]
    2e5e:	b2db      	uxtb	r3, r3
    2e60:	461a      	mov	r2, r3
    2e62:	00d2      	lsls	r2, r2, #3
    2e64:	4413      	add	r3, r2
    2e66:	005b      	lsls	r3, r3, #1
    2e68:	b2db      	uxtb	r3, r3
    2e6a:	2108      	movs	r1, #8
    2e6c:	4618      	mov	r0, r3
    2e6e:	f001 fde5 	bl	4a3c <set_cursor>
    2e72:	2001      	movs	r0, #1
    2e74:	f001 ff78 	bl	4d68 <show_cursor>
    2e78:	1d3a      	adds	r2, r7, #4
    2e7a:	697b      	ldr	r3, [r7, #20]
    2e7c:	4413      	add	r3, r2
    2e7e:	781b      	ldrb	r3, [r3, #0]
    2e80:	74bb      	strb	r3, [r7, #18]
    2e82:	e07c      	b.n	2f7e <buttons_map+0x1c0>
    2e84:	697b      	ldr	r3, [r7, #20]
    2e86:	2b06      	cmp	r3, #6
    2e88:	dc7b      	bgt.n	2f82 <buttons_map+0x1c4>
    2e8a:	2000      	movs	r0, #0
    2e8c:	f001 ff6c 	bl	4d68 <show_cursor>
    2e90:	697b      	ldr	r3, [r7, #20]
    2e92:	3301      	adds	r3, #1
    2e94:	617b      	str	r3, [r7, #20]
    2e96:	697b      	ldr	r3, [r7, #20]
    2e98:	b2db      	uxtb	r3, r3
    2e9a:	461a      	mov	r2, r3
    2e9c:	00d2      	lsls	r2, r2, #3
    2e9e:	4413      	add	r3, r2
    2ea0:	005b      	lsls	r3, r3, #1
    2ea2:	b2db      	uxtb	r3, r3
    2ea4:	2108      	movs	r1, #8
    2ea6:	4618      	mov	r0, r3
    2ea8:	f001 fdc8 	bl	4a3c <set_cursor>
    2eac:	2001      	movs	r0, #1
    2eae:	f001 ff5b 	bl	4d68 <show_cursor>
    2eb2:	1d3a      	adds	r2, r7, #4
    2eb4:	697b      	ldr	r3, [r7, #20]
    2eb6:	4413      	add	r3, r2
    2eb8:	781b      	ldrb	r3, [r3, #0]
    2eba:	74bb      	strb	r3, [r7, #18]
    2ebc:	e061      	b.n	2f82 <buttons_map+0x1c4>
    2ebe:	7cbb      	ldrb	r3, [r7, #18]
    2ec0:	2b0e      	cmp	r3, #14
    2ec2:	d860      	bhi.n	2f86 <buttons_map+0x1c8>
    2ec4:	7cbb      	ldrb	r3, [r7, #18]
    2ec6:	3301      	adds	r3, #1
    2ec8:	74bb      	strb	r3, [r7, #18]
    2eca:	1d3a      	adds	r2, r7, #4
    2ecc:	697b      	ldr	r3, [r7, #20]
    2ece:	4413      	add	r3, r2
    2ed0:	7cba      	ldrb	r2, [r7, #18]
    2ed2:	701a      	strb	r2, [r3, #0]
    2ed4:	7cbb      	ldrb	r3, [r7, #18]
    2ed6:	2110      	movs	r1, #16
    2ed8:	4618      	mov	r0, r3
    2eda:	f001 fe0b 	bl	4af4 <print_int>
    2ede:	697b      	ldr	r3, [r7, #20]
    2ee0:	b2db      	uxtb	r3, r3
    2ee2:	461a      	mov	r2, r3
    2ee4:	00d2      	lsls	r2, r2, #3
    2ee6:	4413      	add	r3, r2
    2ee8:	005b      	lsls	r3, r3, #1
    2eea:	b2db      	uxtb	r3, r3
    2eec:	2108      	movs	r1, #8
    2eee:	4618      	mov	r0, r3
    2ef0:	f001 fda4 	bl	4a3c <set_cursor>
    2ef4:	2001      	movs	r0, #1
    2ef6:	f001 ff37 	bl	4d68 <show_cursor>
    2efa:	e044      	b.n	2f86 <buttons_map+0x1c8>
    2efc:	7cbb      	ldrb	r3, [r7, #18]
    2efe:	2b00      	cmp	r3, #0
    2f00:	d043      	beq.n	2f8a <buttons_map+0x1cc>
    2f02:	7cbb      	ldrb	r3, [r7, #18]
    2f04:	3b01      	subs	r3, #1
    2f06:	74bb      	strb	r3, [r7, #18]
    2f08:	1d3a      	adds	r2, r7, #4
    2f0a:	697b      	ldr	r3, [r7, #20]
    2f0c:	4413      	add	r3, r2
    2f0e:	7cba      	ldrb	r2, [r7, #18]
    2f10:	701a      	strb	r2, [r3, #0]
    2f12:	7cbb      	ldrb	r3, [r7, #18]
    2f14:	2110      	movs	r1, #16
    2f16:	4618      	mov	r0, r3
    2f18:	f001 fdec 	bl	4af4 <print_int>
    2f1c:	697b      	ldr	r3, [r7, #20]
    2f1e:	b2db      	uxtb	r3, r3
    2f20:	461a      	mov	r2, r3
    2f22:	00d2      	lsls	r2, r2, #3
    2f24:	4413      	add	r3, r2
    2f26:	005b      	lsls	r3, r3, #1
    2f28:	b2db      	uxtb	r3, r3
    2f2a:	2108      	movs	r1, #8
    2f2c:	4618      	mov	r0, r3
    2f2e:	f001 fd85 	bl	4a3c <set_cursor>
    2f32:	2001      	movs	r0, #1
    2f34:	f001 ff18 	bl	4d68 <show_cursor>
    2f38:	e027      	b.n	2f8a <buttons_map+0x1cc>
    2f3a:	2300      	movs	r3, #0
    2f3c:	617b      	str	r3, [r7, #20]
    2f3e:	e00b      	b.n	2f58 <buttons_map+0x19a>
    2f40:	697b      	ldr	r3, [r7, #20]
    2f42:	68fa      	ldr	r2, [r7, #12]
    2f44:	4413      	add	r3, r2
    2f46:	7819      	ldrb	r1, [r3, #0]
    2f48:	1d3a      	adds	r2, r7, #4
    2f4a:	697b      	ldr	r3, [r7, #20]
    2f4c:	4413      	add	r3, r2
    2f4e:	460a      	mov	r2, r1
    2f50:	701a      	strb	r2, [r3, #0]
    2f52:	697b      	ldr	r3, [r7, #20]
    2f54:	3301      	adds	r3, #1
    2f56:	617b      	str	r3, [r7, #20]
    2f58:	697b      	ldr	r3, [r7, #20]
    2f5a:	2b07      	cmp	r3, #7
    2f5c:	ddf0      	ble.n	2f40 <buttons_map+0x182>
    2f5e:	1d3b      	adds	r3, r7, #4
    2f60:	4618      	mov	r0, r3
    2f62:	f7ff ff0f 	bl	2d84 <display_keymap>
    2f66:	2108      	movs	r1, #8
    2f68:	2000      	movs	r0, #0
    2f6a:	f001 fd67 	bl	4a3c <set_cursor>
    2f6e:	2300      	movs	r3, #0
    2f70:	617b      	str	r3, [r7, #20]
    2f72:	1d3a      	adds	r2, r7, #4
    2f74:	697b      	ldr	r3, [r7, #20]
    2f76:	4413      	add	r3, r2
    2f78:	781b      	ldrb	r3, [r3, #0]
    2f7a:	74bb      	strb	r3, [r7, #18]
    2f7c:	e006      	b.n	2f8c <buttons_map+0x1ce>
    2f7e:	bf00      	nop
    2f80:	e004      	b.n	2f8c <buttons_map+0x1ce>
    2f82:	bf00      	nop
    2f84:	e002      	b.n	2f8c <buttons_map+0x1ce>
    2f86:	bf00      	nop
    2f88:	e000      	b.n	2f8c <buttons_map+0x1ce>
    2f8a:	bf00      	nop
    2f8c:	7cfb      	ldrb	r3, [r7, #19]
    2f8e:	4618      	mov	r0, r3
    2f90:	f7fe fd5c 	bl	1a4c <btn_wait_up>
    2f94:	7cfb      	ldrb	r3, [r7, #19]
    2f96:	2b20      	cmp	r3, #32
    2f98:	f47f af43 	bne.w	2e22 <buttons_map+0x64>
    2f9c:	2300      	movs	r3, #0
    2f9e:	617b      	str	r3, [r7, #20]
    2fa0:	e00a      	b.n	2fb8 <buttons_map+0x1fa>
    2fa2:	697b      	ldr	r3, [r7, #20]
    2fa4:	68fa      	ldr	r2, [r7, #12]
    2fa6:	4413      	add	r3, r2
    2fa8:	1d39      	adds	r1, r7, #4
    2faa:	697a      	ldr	r2, [r7, #20]
    2fac:	440a      	add	r2, r1
    2fae:	7812      	ldrb	r2, [r2, #0]
    2fb0:	701a      	strb	r2, [r3, #0]
    2fb2:	697b      	ldr	r3, [r7, #20]
    2fb4:	3301      	adds	r3, #1
    2fb6:	617b      	str	r3, [r7, #20]
    2fb8:	697b      	ldr	r3, [r7, #20]
    2fba:	2b07      	cmp	r3, #7
    2fbc:	ddf1      	ble.n	2fa2 <buttons_map+0x1e4>
    2fbe:	bf00      	nop
    2fc0:	3718      	adds	r7, #24
    2fc2:	46bd      	mov	sp, r7
    2fc4:	bd80      	pop	{r7, pc}
    2fc6:	bf00      	nop
    2fc8:	00005948 	.word	0x00005948

00002fcc <print_games_list>:
    2fcc:	b580      	push	{r7, lr}
    2fce:	b084      	sub	sp, #16
    2fd0:	af00      	add	r7, sp, #0
    2fd2:	6078      	str	r0, [r7, #4]
    2fd4:	6039      	str	r1, [r7, #0]
    2fd6:	2301      	movs	r3, #1
    2fd8:	60fb      	str	r3, [r7, #12]
    2fda:	2100      	movs	r1, #0
    2fdc:	2000      	movs	r0, #0
    2fde:	f001 fd2d 	bl	4a3c <set_cursor>
    2fe2:	4815      	ldr	r0, [pc, #84]	; (3038 <print_games_list+0x6c>)
    2fe4:	f001 fd56 	bl	4a94 <print>
    2fe8:	e012      	b.n	3010 <print_games_list+0x44>
    2fea:	f001 fc07 	bl	47fc <new_line>
    2fee:	2020      	movs	r0, #32
    2ff0:	f001 fc98 	bl	4924 <put_char>
    2ff4:	687a      	ldr	r2, [r7, #4]
    2ff6:	4613      	mov	r3, r2
    2ff8:	00db      	lsls	r3, r3, #3
    2ffa:	1a9b      	subs	r3, r3, r2
    2ffc:	009b      	lsls	r3, r3, #2
    2ffe:	4a0f      	ldr	r2, [pc, #60]	; (303c <print_games_list+0x70>)
    3000:	4413      	add	r3, r2
    3002:	3301      	adds	r3, #1
    3004:	4618      	mov	r0, r3
    3006:	f001 fd45 	bl	4a94 <print>
    300a:	687b      	ldr	r3, [r7, #4]
    300c:	3301      	adds	r3, #1
    300e:	607b      	str	r3, [r7, #4]
    3010:	68fa      	ldr	r2, [r7, #12]
    3012:	683b      	ldr	r3, [r7, #0]
    3014:	429a      	cmp	r2, r3
    3016:	d20a      	bcs.n	302e <print_games_list+0x62>
    3018:	4908      	ldr	r1, [pc, #32]	; (303c <print_games_list+0x70>)
    301a:	687a      	ldr	r2, [r7, #4]
    301c:	4613      	mov	r3, r2
    301e:	00db      	lsls	r3, r3, #3
    3020:	1a9b      	subs	r3, r3, r2
    3022:	009b      	lsls	r3, r3, #2
    3024:	440b      	add	r3, r1
    3026:	3310      	adds	r3, #16
    3028:	681b      	ldr	r3, [r3, #0]
    302a:	2b00      	cmp	r3, #0
    302c:	d1dd      	bne.n	2fea <print_games_list+0x1e>
    302e:	bf00      	nop
    3030:	3710      	adds	r7, #16
    3032:	46bd      	mov	sp, r7
    3034:	bd80      	pop	{r7, pc}
    3036:	bf00      	nop
    3038:	0000595c 	.word	0x0000595c
    303c:	20000008 	.word	0x20000008

00003040 <run_game>:
    3040:	b580      	push	{r7, lr}
    3042:	b082      	sub	sp, #8
    3044:	af00      	add	r7, sp, #0
    3046:	6078      	str	r0, [r7, #4]
    3048:	491b      	ldr	r1, [pc, #108]	; (30b8 <run_game+0x78>)
    304a:	687a      	ldr	r2, [r7, #4]
    304c:	4613      	mov	r3, r2
    304e:	00db      	lsls	r3, r3, #3
    3050:	1a9b      	subs	r3, r3, r2
    3052:	009b      	lsls	r3, r3, #2
    3054:	440b      	add	r3, r1
    3056:	3314      	adds	r3, #20
    3058:	6818      	ldr	r0, [r3, #0]
    305a:	4917      	ldr	r1, [pc, #92]	; (30b8 <run_game+0x78>)
    305c:	687a      	ldr	r2, [r7, #4]
    305e:	4613      	mov	r3, r2
    3060:	00db      	lsls	r3, r3, #3
    3062:	1a9b      	subs	r3, r3, r2
    3064:	009b      	lsls	r3, r3, #2
    3066:	440b      	add	r3, r1
    3068:	3310      	adds	r3, #16
    306a:	681b      	ldr	r3, [r3, #0]
    306c:	461a      	mov	r2, r3
    306e:	4913      	ldr	r1, [pc, #76]	; (30bc <run_game+0x7c>)
    3070:	f7fe fe9f 	bl	1db2 <move>
    3074:	4910      	ldr	r1, [pc, #64]	; (30b8 <run_game+0x78>)
    3076:	687a      	ldr	r2, [r7, #4]
    3078:	4613      	mov	r3, r2
    307a:	00db      	lsls	r3, r3, #3
    307c:	1a9b      	subs	r3, r3, r2
    307e:	009b      	lsls	r3, r3, #2
    3080:	440b      	add	r3, r1
    3082:	3318      	adds	r3, #24
    3084:	681b      	ldr	r3, [r3, #0]
    3086:	4618      	mov	r0, r3
    3088:	f7fe fbc8 	bl	181c <set_keymap>
    308c:	490a      	ldr	r1, [pc, #40]	; (30b8 <run_game+0x78>)
    308e:	687a      	ldr	r2, [r7, #4]
    3090:	4613      	mov	r3, r2
    3092:	00db      	lsls	r3, r3, #3
    3094:	1a9b      	subs	r3, r3, r2
    3096:	009b      	lsls	r3, r3, #2
    3098:	440b      	add	r3, r1
    309a:	781b      	ldrb	r3, [r3, #0]
    309c:	4618      	mov	r0, r3
    309e:	f002 f90b 	bl	52b8 <set_video_mode>
    30a2:	2000      	movs	r0, #0
    30a4:	f7fd fa1c 	bl	4e0 <chip_vm>
    30a8:	2000      	movs	r0, #0
    30aa:	f002 f905 	bl	52b8 <set_video_mode>
    30ae:	bf00      	nop
    30b0:	3708      	adds	r7, #8
    30b2:	46bd      	mov	sp, r7
    30b4:	bd80      	pop	{r7, pc}
    30b6:	bf00      	nop
    30b8:	20000008 	.word	0x20000008
    30bc:	2000067c 	.word	0x2000067c

000030c0 <select_game>:
    30c0:	b580      	push	{r7, lr}
    30c2:	b088      	sub	sp, #32
    30c4:	af00      	add	r7, sp, #0
    30c6:	2300      	movs	r3, #0
    30c8:	613b      	str	r3, [r7, #16]
    30ca:	2300      	movs	r3, #0
    30cc:	61fb      	str	r3, [r7, #28]
    30ce:	2301      	movs	r3, #1
    30d0:	61bb      	str	r3, [r7, #24]
    30d2:	2301      	movs	r3, #1
    30d4:	617b      	str	r3, [r7, #20]
    30d6:	f7fe fd33 	bl	1b40 <games_count>
    30da:	4603      	mov	r3, r0
    30dc:	60fb      	str	r3, [r7, #12]
    30de:	2000      	movs	r0, #0
    30e0:	f002 f8ea 	bl	52b8 <set_video_mode>
    30e4:	f002 f980 	bl	53e8 <get_video_params>
    30e8:	60b8      	str	r0, [r7, #8]
    30ea:	68bb      	ldr	r3, [r7, #8]
    30ec:	89db      	ldrh	r3, [r3, #14]
    30ee:	08db      	lsrs	r3, r3, #3
    30f0:	b29b      	uxth	r3, r3
    30f2:	607b      	str	r3, [r7, #4]
    30f4:	e048      	b.n	3188 <select_game+0xc8>
    30f6:	69fb      	ldr	r3, [r7, #28]
    30f8:	687a      	ldr	r2, [r7, #4]
    30fa:	4611      	mov	r1, r2
    30fc:	4618      	mov	r0, r3
    30fe:	f7ff ff65 	bl	2fcc <print_games_list>
    3102:	69bb      	ldr	r3, [r7, #24]
    3104:	b2db      	uxtb	r3, r3
    3106:	00db      	lsls	r3, r3, #3
    3108:	b2db      	uxtb	r3, r3
    310a:	4619      	mov	r1, r3
    310c:	2000      	movs	r0, #0
    310e:	f001 fc95 	bl	4a3c <set_cursor>
    3112:	203e      	movs	r0, #62	; 0x3e
    3114:	f001 fc06 	bl	4924 <put_char>
    3118:	f7fe fcc0 	bl	1a9c <btn_wait_any>
    311c:	4603      	mov	r3, r0
    311e:	70fb      	strb	r3, [r7, #3]
    3120:	78fb      	ldrb	r3, [r7, #3]
    3122:	4618      	mov	r0, r3
    3124:	f7fe fc92 	bl	1a4c <btn_wait_up>
    3128:	78fb      	ldrb	r3, [r7, #3]
    312a:	2b04      	cmp	r3, #4
    312c:	d016      	beq.n	315c <select_game+0x9c>
    312e:	2b04      	cmp	r3, #4
    3130:	dc02      	bgt.n	3138 <select_game+0x78>
    3132:	2b02      	cmp	r3, #2
    3134:	d005      	beq.n	3142 <select_game+0x82>
    3136:	e027      	b.n	3188 <select_game+0xc8>
    3138:	2b20      	cmp	r3, #32
    313a:	d022      	beq.n	3182 <select_game+0xc2>
    313c:	2b40      	cmp	r3, #64	; 0x40
    313e:	d02e      	beq.n	319e <select_game+0xde>
    3140:	e022      	b.n	3188 <select_game+0xc8>
    3142:	69fb      	ldr	r3, [r7, #28]
    3144:	2b00      	cmp	r3, #0
    3146:	d002      	beq.n	314e <select_game+0x8e>
    3148:	69fb      	ldr	r3, [r7, #28]
    314a:	3b01      	subs	r3, #1
    314c:	61fb      	str	r3, [r7, #28]
    314e:	69bb      	ldr	r3, [r7, #24]
    3150:	2b01      	cmp	r3, #1
    3152:	dd19      	ble.n	3188 <select_game+0xc8>
    3154:	69bb      	ldr	r3, [r7, #24]
    3156:	3b01      	subs	r3, #1
    3158:	61bb      	str	r3, [r7, #24]
    315a:	e015      	b.n	3188 <select_game+0xc8>
    315c:	69fa      	ldr	r2, [r7, #28]
    315e:	69bb      	ldr	r3, [r7, #24]
    3160:	4413      	add	r3, r2
    3162:	1e5a      	subs	r2, r3, #1
    3164:	68fb      	ldr	r3, [r7, #12]
    3166:	3b01      	subs	r3, #1
    3168:	429a      	cmp	r2, r3
    316a:	da0d      	bge.n	3188 <select_game+0xc8>
    316c:	69bb      	ldr	r3, [r7, #24]
    316e:	3301      	adds	r3, #1
    3170:	61bb      	str	r3, [r7, #24]
    3172:	69ba      	ldr	r2, [r7, #24]
    3174:	687b      	ldr	r3, [r7, #4]
    3176:	429a      	cmp	r2, r3
    3178:	db06      	blt.n	3188 <select_game+0xc8>
    317a:	69fb      	ldr	r3, [r7, #28]
    317c:	3301      	adds	r3, #1
    317e:	61fb      	str	r3, [r7, #28]
    3180:	e002      	b.n	3188 <select_game+0xc8>
    3182:	2300      	movs	r3, #0
    3184:	617b      	str	r3, [r7, #20]
    3186:	bf00      	nop
    3188:	697b      	ldr	r3, [r7, #20]
    318a:	2b00      	cmp	r3, #0
    318c:	d1b3      	bne.n	30f6 <select_game+0x36>
    318e:	69fa      	ldr	r2, [r7, #28]
    3190:	69bb      	ldr	r3, [r7, #24]
    3192:	4413      	add	r3, r2
    3194:	3b01      	subs	r3, #1
    3196:	4618      	mov	r0, r3
    3198:	f7ff ff52 	bl	3040 <run_game>
    319c:	e000      	b.n	31a0 <select_game+0xe0>
    319e:	bf00      	nop
    31a0:	3720      	adds	r7, #32
    31a2:	46bd      	mov	sp, r7
    31a4:	bd80      	pop	{r7, pc}

000031a6 <display_menu>:
    31a6:	b580      	push	{r7, lr}
    31a8:	b082      	sub	sp, #8
    31aa:	af00      	add	r7, sp, #0
    31ac:	f7ff f852 	bl	2254 <gfx_cls>
    31b0:	2300      	movs	r3, #0
    31b2:	607b      	str	r3, [r7, #4]
    31b4:	e009      	b.n	31ca <display_menu+0x24>
    31b6:	4a08      	ldr	r2, [pc, #32]	; (31d8 <display_menu+0x32>)
    31b8:	687b      	ldr	r3, [r7, #4]
    31ba:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    31be:	4618      	mov	r0, r3
    31c0:	f001 fc8b 	bl	4ada <println>
    31c4:	687b      	ldr	r3, [r7, #4]
    31c6:	3301      	adds	r3, #1
    31c8:	607b      	str	r3, [r7, #4]
    31ca:	687b      	ldr	r3, [r7, #4]
    31cc:	2b03      	cmp	r3, #3
    31ce:	ddf2      	ble.n	31b6 <display_menu+0x10>
    31d0:	bf00      	nop
    31d2:	3708      	adds	r7, #8
    31d4:	46bd      	mov	sp, r7
    31d6:	bd80      	pop	{r7, pc}
    31d8:	20000160 	.word	0x20000160

000031dc <menu>:
    31dc:	b580      	push	{r7, lr}
    31de:	b084      	sub	sp, #16
    31e0:	af00      	add	r7, sp, #0
    31e2:	2300      	movs	r3, #0
    31e4:	60fb      	str	r3, [r7, #12]
    31e6:	f002 f8ff 	bl	53e8 <get_video_params>
    31ea:	60b8      	str	r0, [r7, #8]
    31ec:	f7ff ffdb 	bl	31a6 <display_menu>
    31f0:	68fb      	ldr	r3, [r7, #12]
    31f2:	b2db      	uxtb	r3, r3
    31f4:	00db      	lsls	r3, r3, #3
    31f6:	b2db      	uxtb	r3, r3
    31f8:	4619      	mov	r1, r3
    31fa:	2000      	movs	r0, #0
    31fc:	f001 fc1e 	bl	4a3c <set_cursor>
    3200:	203e      	movs	r0, #62	; 0x3e
    3202:	f001 fb8f 	bl	4924 <put_char>
    3206:	f7fe fc49 	bl	1a9c <btn_wait_any>
    320a:	4603      	mov	r3, r0
    320c:	71fb      	strb	r3, [r7, #7]
    320e:	79fb      	ldrb	r3, [r7, #7]
    3210:	4618      	mov	r0, r3
    3212:	f7fe fc1b 	bl	1a4c <btn_wait_up>
    3216:	68fb      	ldr	r3, [r7, #12]
    3218:	b2db      	uxtb	r3, r3
    321a:	00db      	lsls	r3, r3, #3
    321c:	b2db      	uxtb	r3, r3
    321e:	4619      	mov	r1, r3
    3220:	2000      	movs	r0, #0
    3222:	f001 fc0b 	bl	4a3c <set_cursor>
    3226:	2020      	movs	r0, #32
    3228:	f001 fb7c 	bl	4924 <put_char>
    322c:	79fb      	ldrb	r3, [r7, #7]
    322e:	2b04      	cmp	r3, #4
    3230:	d00a      	beq.n	3248 <menu+0x6c>
    3232:	2b20      	cmp	r3, #32
    3234:	d00f      	beq.n	3256 <menu+0x7a>
    3236:	2b02      	cmp	r3, #2
    3238:	d12e      	bne.n	3298 <menu+0xbc>
    323a:	68fb      	ldr	r3, [r7, #12]
    323c:	2b00      	cmp	r3, #0
    323e:	d028      	beq.n	3292 <menu+0xb6>
    3240:	68fb      	ldr	r3, [r7, #12]
    3242:	3b01      	subs	r3, #1
    3244:	60fb      	str	r3, [r7, #12]
    3246:	e024      	b.n	3292 <menu+0xb6>
    3248:	68fb      	ldr	r3, [r7, #12]
    324a:	2b02      	cmp	r3, #2
    324c:	dc23      	bgt.n	3296 <menu+0xba>
    324e:	68fb      	ldr	r3, [r7, #12]
    3250:	3301      	adds	r3, #1
    3252:	60fb      	str	r3, [r7, #12]
    3254:	e01f      	b.n	3296 <menu+0xba>
    3256:	68fb      	ldr	r3, [r7, #12]
    3258:	2b03      	cmp	r3, #3
    325a:	d817      	bhi.n	328c <menu+0xb0>
    325c:	a201      	add	r2, pc, #4	; (adr r2, 3264 <menu+0x88>)
    325e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    3262:	bf00      	nop
    3264:	00003275 	.word	0x00003275
    3268:	0000327b 	.word	0x0000327b
    326c:	00003281 	.word	0x00003281
    3270:	00003287 	.word	0x00003287
    3274:	f7ff fda3 	bl	2dbe <buttons_map>
    3278:	e008      	b.n	328c <menu+0xb0>
    327a:	f7ff ff21 	bl	30c0 <select_game>
    327e:	e005      	b.n	328c <menu+0xb0>
    3280:	f7ff fcaa 	bl	2bd8 <video_test>
    3284:	e002      	b.n	328c <menu+0xb0>
    3286:	f7ff fd21 	bl	2ccc <sound_test>
    328a:	bf00      	nop
    328c:	f7ff ff8b 	bl	31a6 <display_menu>
    3290:	e002      	b.n	3298 <menu+0xbc>
    3292:	bf00      	nop
    3294:	e7ac      	b.n	31f0 <menu+0x14>
    3296:	bf00      	nop
    3298:	e7aa      	b.n	31f0 <menu+0x14>

0000329a <main>:
    329a:	b580      	push	{r7, lr}
    329c:	b086      	sub	sp, #24
    329e:	af00      	add	r7, sp, #0
    32a0:	f7ff f9f8 	bl	2694 <set_sysclock>
    32a4:	4b19      	ldr	r3, [pc, #100]	; (330c <main+0x72>)
    32a6:	f640 021d 	movw	r2, #2077	; 0x81d
    32aa:	619a      	str	r2, [r3, #24]
    32ac:	2206      	movs	r2, #6
    32ae:	210d      	movs	r1, #13
    32b0:	4817      	ldr	r0, [pc, #92]	; (3310 <main+0x76>)
    32b2:	f7fe fe6b 	bl	1f8c <config_pin>
    32b6:	4a16      	ldr	r2, [pc, #88]	; (3310 <main+0x76>)
    32b8:	4b15      	ldr	r3, [pc, #84]	; (3310 <main+0x76>)
    32ba:	68db      	ldr	r3, [r3, #12]
    32bc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    32c0:	60d3      	str	r3, [r2, #12]
    32c2:	f7fe fac9 	bl	1858 <gamepad_init>
    32c6:	f001 fd77 	bl	4db8 <tvout_init>
    32ca:	f000 ff4d 	bl	4168 <sound_init>
    32ce:	2300      	movs	r3, #0
    32d0:	617b      	str	r3, [r7, #20]
    32d2:	e00b      	b.n	32ec <main+0x52>
    32d4:	f7fd f8e2 	bl	49c <rand>
    32d8:	4603      	mov	r3, r0
    32da:	b2d9      	uxtb	r1, r3
    32dc:	1d3a      	adds	r2, r7, #4
    32de:	697b      	ldr	r3, [r7, #20]
    32e0:	4413      	add	r3, r2
    32e2:	460a      	mov	r2, r1
    32e4:	701a      	strb	r2, [r3, #0]
    32e6:	697b      	ldr	r3, [r7, #20]
    32e8:	3301      	adds	r3, #1
    32ea:	617b      	str	r3, [r7, #20]
    32ec:	697b      	ldr	r3, [r7, #20]
    32ee:	2b0f      	cmp	r3, #15
    32f0:	ddf0      	ble.n	32d4 <main+0x3a>
    32f2:	1d3b      	adds	r3, r7, #4
    32f4:	4618      	mov	r0, r3
    32f6:	f000 ffac 	bl	4252 <load_sound_buffer>
    32fa:	f7fe ffab 	bl	2254 <gfx_cls>
    32fe:	f7ff ff6d 	bl	31dc <menu>
    3302:	bf00      	nop
    3304:	3718      	adds	r7, #24
    3306:	46bd      	mov	sp, r7
    3308:	bd80      	pop	{r7, pc}
    330a:	bf00      	nop
    330c:	40021000 	.word	0x40021000
    3310:	40011000 	.word	0x40011000

00003314 <enable_interrupt>:
    3314:	b480      	push	{r7}
    3316:	b083      	sub	sp, #12
    3318:	af00      	add	r7, sp, #0
    331a:	6078      	str	r0, [r7, #4]
    331c:	687b      	ldr	r3, [r7, #4]
    331e:	2b3b      	cmp	r3, #59	; 0x3b
    3320:	dc17      	bgt.n	3352 <enable_interrupt+0x3e>
    3322:	687b      	ldr	r3, [r7, #4]
    3324:	115b      	asrs	r3, r3, #5
    3326:	009b      	lsls	r3, r3, #2
    3328:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    332c:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    3330:	687a      	ldr	r2, [r7, #4]
    3332:	1152      	asrs	r2, r2, #5
    3334:	0092      	lsls	r2, r2, #2
    3336:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    333a:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    333e:	6812      	ldr	r2, [r2, #0]
    3340:	6879      	ldr	r1, [r7, #4]
    3342:	f001 011f 	and.w	r1, r1, #31
    3346:	2001      	movs	r0, #1
    3348:	fa00 f101 	lsl.w	r1, r0, r1
    334c:	430a      	orrs	r2, r1
    334e:	601a      	str	r2, [r3, #0]
    3350:	e000      	b.n	3354 <enable_interrupt+0x40>
    3352:	bf00      	nop
    3354:	370c      	adds	r7, #12
    3356:	46bd      	mov	sp, r7
    3358:	bc80      	pop	{r7}
    335a:	4770      	bx	lr

0000335c <disable_interrupt>:
    335c:	b480      	push	{r7}
    335e:	b083      	sub	sp, #12
    3360:	af00      	add	r7, sp, #0
    3362:	6078      	str	r0, [r7, #4]
    3364:	687b      	ldr	r3, [r7, #4]
    3366:	2b3b      	cmp	r3, #59	; 0x3b
    3368:	dc0c      	bgt.n	3384 <disable_interrupt+0x28>
    336a:	687b      	ldr	r3, [r7, #4]
    336c:	115b      	asrs	r3, r3, #5
    336e:	009a      	lsls	r2, r3, #2
    3370:	4b07      	ldr	r3, [pc, #28]	; (3390 <disable_interrupt+0x34>)
    3372:	4413      	add	r3, r2
    3374:	687a      	ldr	r2, [r7, #4]
    3376:	f002 021f 	and.w	r2, r2, #31
    337a:	2101      	movs	r1, #1
    337c:	fa01 f202 	lsl.w	r2, r1, r2
    3380:	601a      	str	r2, [r3, #0]
    3382:	e000      	b.n	3386 <disable_interrupt+0x2a>
    3384:	bf00      	nop
    3386:	370c      	adds	r7, #12
    3388:	46bd      	mov	sp, r7
    338a:	bc80      	pop	{r7}
    338c:	4770      	bx	lr
    338e:	bf00      	nop
    3390:	e000e180 	.word	0xe000e180

00003394 <get_pending>:
    3394:	b480      	push	{r7}
    3396:	b083      	sub	sp, #12
    3398:	af00      	add	r7, sp, #0
    339a:	6078      	str	r0, [r7, #4]
    339c:	687b      	ldr	r3, [r7, #4]
    339e:	2b3b      	cmp	r3, #59	; 0x3b
    33a0:	dd01      	ble.n	33a6 <get_pending+0x12>
    33a2:	2300      	movs	r3, #0
    33a4:	e00c      	b.n	33c0 <get_pending+0x2c>
    33a6:	687b      	ldr	r3, [r7, #4]
    33a8:	115b      	asrs	r3, r3, #5
    33aa:	009a      	lsls	r2, r3, #2
    33ac:	4b07      	ldr	r3, [pc, #28]	; (33cc <get_pending+0x38>)
    33ae:	4413      	add	r3, r2
    33b0:	681b      	ldr	r3, [r3, #0]
    33b2:	687a      	ldr	r2, [r7, #4]
    33b4:	f002 021f 	and.w	r2, r2, #31
    33b8:	2101      	movs	r1, #1
    33ba:	fa01 f202 	lsl.w	r2, r1, r2
    33be:	4013      	ands	r3, r2
    33c0:	4618      	mov	r0, r3
    33c2:	370c      	adds	r7, #12
    33c4:	46bd      	mov	sp, r7
    33c6:	bc80      	pop	{r7}
    33c8:	4770      	bx	lr
    33ca:	bf00      	nop
    33cc:	e000e280 	.word	0xe000e280

000033d0 <get_active>:
    33d0:	b480      	push	{r7}
    33d2:	b083      	sub	sp, #12
    33d4:	af00      	add	r7, sp, #0
    33d6:	6078      	str	r0, [r7, #4]
    33d8:	687b      	ldr	r3, [r7, #4]
    33da:	2b3b      	cmp	r3, #59	; 0x3b
    33dc:	dd01      	ble.n	33e2 <get_active+0x12>
    33de:	2300      	movs	r3, #0
    33e0:	e00e      	b.n	3400 <get_active+0x30>
    33e2:	687b      	ldr	r3, [r7, #4]
    33e4:	115b      	asrs	r3, r3, #5
    33e6:	009b      	lsls	r3, r3, #2
    33e8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    33ec:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    33f0:	681b      	ldr	r3, [r3, #0]
    33f2:	687a      	ldr	r2, [r7, #4]
    33f4:	f002 021f 	and.w	r2, r2, #31
    33f8:	2101      	movs	r1, #1
    33fa:	fa01 f202 	lsl.w	r2, r1, r2
    33fe:	4013      	ands	r3, r2
    3400:	4618      	mov	r0, r3
    3402:	370c      	adds	r7, #12
    3404:	46bd      	mov	sp, r7
    3406:	bc80      	pop	{r7}
    3408:	4770      	bx	lr

0000340a <set_pending>:
    340a:	b480      	push	{r7}
    340c:	b083      	sub	sp, #12
    340e:	af00      	add	r7, sp, #0
    3410:	6078      	str	r0, [r7, #4]
    3412:	687b      	ldr	r3, [r7, #4]
    3414:	2b3b      	cmp	r3, #59	; 0x3b
    3416:	dc17      	bgt.n	3448 <set_pending+0x3e>
    3418:	687b      	ldr	r3, [r7, #4]
    341a:	115b      	asrs	r3, r3, #5
    341c:	009b      	lsls	r3, r3, #2
    341e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3422:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    3426:	687a      	ldr	r2, [r7, #4]
    3428:	1152      	asrs	r2, r2, #5
    342a:	0092      	lsls	r2, r2, #2
    342c:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    3430:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    3434:	6812      	ldr	r2, [r2, #0]
    3436:	6879      	ldr	r1, [r7, #4]
    3438:	f001 011f 	and.w	r1, r1, #31
    343c:	2001      	movs	r0, #1
    343e:	fa00 f101 	lsl.w	r1, r0, r1
    3442:	430a      	orrs	r2, r1
    3444:	601a      	str	r2, [r3, #0]
    3446:	e000      	b.n	344a <set_pending+0x40>
    3448:	bf00      	nop
    344a:	370c      	adds	r7, #12
    344c:	46bd      	mov	sp, r7
    344e:	bc80      	pop	{r7}
    3450:	4770      	bx	lr

00003452 <clear_pending>:
    3452:	b480      	push	{r7}
    3454:	b083      	sub	sp, #12
    3456:	af00      	add	r7, sp, #0
    3458:	6078      	str	r0, [r7, #4]
    345a:	687b      	ldr	r3, [r7, #4]
    345c:	2b3b      	cmp	r3, #59	; 0x3b
    345e:	dc0c      	bgt.n	347a <clear_pending+0x28>
    3460:	687b      	ldr	r3, [r7, #4]
    3462:	115b      	asrs	r3, r3, #5
    3464:	009a      	lsls	r2, r3, #2
    3466:	4b07      	ldr	r3, [pc, #28]	; (3484 <clear_pending+0x32>)
    3468:	4413      	add	r3, r2
    346a:	687a      	ldr	r2, [r7, #4]
    346c:	f002 021f 	and.w	r2, r2, #31
    3470:	2101      	movs	r1, #1
    3472:	fa01 f202 	lsl.w	r2, r1, r2
    3476:	601a      	str	r2, [r3, #0]
    3478:	e000      	b.n	347c <clear_pending+0x2a>
    347a:	bf00      	nop
    347c:	370c      	adds	r7, #12
    347e:	46bd      	mov	sp, r7
    3480:	bc80      	pop	{r7}
    3482:	4770      	bx	lr
    3484:	e000e280 	.word	0xe000e280

00003488 <set_int_priority>:
    3488:	b480      	push	{r7}
    348a:	b083      	sub	sp, #12
    348c:	af00      	add	r7, sp, #0
    348e:	6078      	str	r0, [r7, #4]
    3490:	6039      	str	r1, [r7, #0]
    3492:	687b      	ldr	r3, [r7, #4]
    3494:	2b00      	cmp	r3, #0
    3496:	db0d      	blt.n	34b4 <set_int_priority+0x2c>
    3498:	687b      	ldr	r3, [r7, #4]
    349a:	2b3b      	cmp	r3, #59	; 0x3b
    349c:	dc0a      	bgt.n	34b4 <set_int_priority+0x2c>
    349e:	687b      	ldr	r3, [r7, #4]
    34a0:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    34a4:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    34a8:	683a      	ldr	r2, [r7, #0]
    34aa:	b2d2      	uxtb	r2, r2
    34ac:	0112      	lsls	r2, r2, #4
    34ae:	b2d2      	uxtb	r2, r2
    34b0:	701a      	strb	r2, [r3, #0]
    34b2:	e012      	b.n	34da <set_int_priority+0x52>
    34b4:	687b      	ldr	r3, [r7, #4]
    34b6:	2b00      	cmp	r3, #0
    34b8:	da0f      	bge.n	34da <set_int_priority+0x52>
    34ba:	687b      	ldr	r3, [r7, #4]
    34bc:	f113 0f0f 	cmn.w	r3, #15
    34c0:	db0b      	blt.n	34da <set_int_priority+0x52>
    34c2:	687a      	ldr	r2, [r7, #4]
    34c4:	f06f 0303 	mvn.w	r3, #3
    34c8:	1a9b      	subs	r3, r3, r2
    34ca:	461a      	mov	r2, r3
    34cc:	4b05      	ldr	r3, [pc, #20]	; (34e4 <set_int_priority+0x5c>)
    34ce:	4413      	add	r3, r2
    34d0:	683a      	ldr	r2, [r7, #0]
    34d2:	b2d2      	uxtb	r2, r2
    34d4:	0112      	lsls	r2, r2, #4
    34d6:	b2d2      	uxtb	r2, r2
    34d8:	701a      	strb	r2, [r3, #0]
    34da:	bf00      	nop
    34dc:	370c      	adds	r7, #12
    34de:	46bd      	mov	sp, r7
    34e0:	bc80      	pop	{r7}
    34e2:	4770      	bx	lr
    34e4:	e000ed18 	.word	0xe000ed18

000034e8 <leap_year>:
    34e8:	b480      	push	{r7}
    34ea:	b083      	sub	sp, #12
    34ec:	af00      	add	r7, sp, #0
    34ee:	6078      	str	r0, [r7, #4]
    34f0:	687b      	ldr	r3, [r7, #4]
    34f2:	f003 0303 	and.w	r3, r3, #3
    34f6:	2b00      	cmp	r3, #0
    34f8:	d11a      	bne.n	3530 <leap_year+0x48>
    34fa:	687a      	ldr	r2, [r7, #4]
    34fc:	4b0f      	ldr	r3, [pc, #60]	; (353c <leap_year+0x54>)
    34fe:	fba3 1302 	umull	r1, r3, r3, r2
    3502:	095b      	lsrs	r3, r3, #5
    3504:	2164      	movs	r1, #100	; 0x64
    3506:	fb01 f303 	mul.w	r3, r1, r3
    350a:	1ad3      	subs	r3, r2, r3
    350c:	2b00      	cmp	r3, #0
    350e:	d10d      	bne.n	352c <leap_year+0x44>
    3510:	687a      	ldr	r2, [r7, #4]
    3512:	4b0a      	ldr	r3, [pc, #40]	; (353c <leap_year+0x54>)
    3514:	fba3 1302 	umull	r1, r3, r3, r2
    3518:	09db      	lsrs	r3, r3, #7
    351a:	f44f 71c8 	mov.w	r1, #400	; 0x190
    351e:	fb01 f303 	mul.w	r3, r1, r3
    3522:	1ad3      	subs	r3, r2, r3
    3524:	2b00      	cmp	r3, #0
    3526:	d001      	beq.n	352c <leap_year+0x44>
    3528:	2300      	movs	r3, #0
    352a:	e002      	b.n	3532 <leap_year+0x4a>
    352c:	2301      	movs	r3, #1
    352e:	e000      	b.n	3532 <leap_year+0x4a>
    3530:	2300      	movs	r3, #0
    3532:	4618      	mov	r0, r3
    3534:	370c      	adds	r7, #12
    3536:	46bd      	mov	sp, r7
    3538:	bc80      	pop	{r7}
    353a:	4770      	bx	lr
    353c:	51eb851f 	.word	0x51eb851f

00003540 <sec_per_month>:
    3540:	b480      	push	{r7}
    3542:	b085      	sub	sp, #20
    3544:	af00      	add	r7, sp, #0
    3546:	6078      	str	r0, [r7, #4]
    3548:	6039      	str	r1, [r7, #0]
    354a:	4a0d      	ldr	r2, [pc, #52]	; (3580 <sec_per_month+0x40>)
    354c:	683b      	ldr	r3, [r7, #0]
    354e:	4413      	add	r3, r2
    3550:	781b      	ldrb	r3, [r3, #0]
    3552:	461a      	mov	r2, r3
    3554:	4b0b      	ldr	r3, [pc, #44]	; (3584 <sec_per_month+0x44>)
    3556:	fb03 f302 	mul.w	r3, r3, r2
    355a:	60fb      	str	r3, [r7, #12]
    355c:	683b      	ldr	r3, [r7, #0]
    355e:	2b02      	cmp	r3, #2
    3560:	d108      	bne.n	3574 <sec_per_month+0x34>
    3562:	687b      	ldr	r3, [r7, #4]
    3564:	2b00      	cmp	r3, #0
    3566:	d005      	beq.n	3574 <sec_per_month+0x34>
    3568:	68fb      	ldr	r3, [r7, #12]
    356a:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    356e:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    3572:	60fb      	str	r3, [r7, #12]
    3574:	68fb      	ldr	r3, [r7, #12]
    3576:	4618      	mov	r0, r3
    3578:	3714      	adds	r7, #20
    357a:	46bd      	mov	sp, r7
    357c:	bc80      	pop	{r7}
    357e:	4770      	bx	lr
    3580:	00005a50 	.word	0x00005a50
    3584:	00015180 	.word	0x00015180

00003588 <get_date_time>:
    3588:	b580      	push	{r7, lr}
    358a:	b086      	sub	sp, #24
    358c:	af00      	add	r7, sp, #0
    358e:	6078      	str	r0, [r7, #4]
    3590:	4b66      	ldr	r3, [pc, #408]	; (372c <get_date_time+0x1a4>)
    3592:	699b      	ldr	r3, [r3, #24]
    3594:	041a      	lsls	r2, r3, #16
    3596:	4b65      	ldr	r3, [pc, #404]	; (372c <get_date_time+0x1a4>)
    3598:	69db      	ldr	r3, [r3, #28]
    359a:	4413      	add	r3, r2
    359c:	617b      	str	r3, [r7, #20]
    359e:	687b      	ldr	r3, [r7, #4]
    35a0:	f240 72b2 	movw	r2, #1970	; 0x7b2
    35a4:	811a      	strh	r2, [r3, #8]
    35a6:	f240 70b2 	movw	r0, #1970	; 0x7b2
    35aa:	f7ff ff9d 	bl	34e8 <leap_year>
    35ae:	6138      	str	r0, [r7, #16]
    35b0:	e019      	b.n	35e6 <get_date_time+0x5e>
    35b2:	693b      	ldr	r3, [r7, #16]
    35b4:	2b00      	cmp	r3, #0
    35b6:	d006      	beq.n	35c6 <get_date_time+0x3e>
    35b8:	697b      	ldr	r3, [r7, #20]
    35ba:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    35be:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    35c2:	617b      	str	r3, [r7, #20]
    35c4:	e003      	b.n	35ce <get_date_time+0x46>
    35c6:	697a      	ldr	r2, [r7, #20]
    35c8:	4b59      	ldr	r3, [pc, #356]	; (3730 <get_date_time+0x1a8>)
    35ca:	4413      	add	r3, r2
    35cc:	617b      	str	r3, [r7, #20]
    35ce:	687b      	ldr	r3, [r7, #4]
    35d0:	891b      	ldrh	r3, [r3, #8]
    35d2:	3301      	adds	r3, #1
    35d4:	b29a      	uxth	r2, r3
    35d6:	687b      	ldr	r3, [r7, #4]
    35d8:	811a      	strh	r2, [r3, #8]
    35da:	687b      	ldr	r3, [r7, #4]
    35dc:	891b      	ldrh	r3, [r3, #8]
    35de:	4618      	mov	r0, r3
    35e0:	f7ff ff82 	bl	34e8 <leap_year>
    35e4:	6138      	str	r0, [r7, #16]
    35e6:	693b      	ldr	r3, [r7, #16]
    35e8:	2b00      	cmp	r3, #0
    35ea:	d103      	bne.n	35f4 <get_date_time+0x6c>
    35ec:	697b      	ldr	r3, [r7, #20]
    35ee:	4a51      	ldr	r2, [pc, #324]	; (3734 <get_date_time+0x1ac>)
    35f0:	4293      	cmp	r3, r2
    35f2:	d8de      	bhi.n	35b2 <get_date_time+0x2a>
    35f4:	693b      	ldr	r3, [r7, #16]
    35f6:	2b00      	cmp	r3, #0
    35f8:	d003      	beq.n	3602 <get_date_time+0x7a>
    35fa:	697b      	ldr	r3, [r7, #20]
    35fc:	4a4e      	ldr	r2, [pc, #312]	; (3738 <get_date_time+0x1b0>)
    35fe:	4293      	cmp	r3, r2
    3600:	d8d7      	bhi.n	35b2 <get_date_time+0x2a>
    3602:	687a      	ldr	r2, [r7, #4]
    3604:	8853      	ldrh	r3, [r2, #2]
    3606:	2101      	movs	r1, #1
    3608:	f361 1389 	bfi	r3, r1, #6, #4
    360c:	8053      	strh	r3, [r2, #2]
    360e:	687a      	ldr	r2, [r7, #4]
    3610:	7893      	ldrb	r3, [r2, #2]
    3612:	2101      	movs	r1, #1
    3614:	f361 0345 	bfi	r3, r1, #1, #5
    3618:	7093      	strb	r3, [r2, #2]
    361a:	687a      	ldr	r2, [r7, #4]
    361c:	6813      	ldr	r3, [r2, #0]
    361e:	f36f 3310 	bfc	r3, #12, #5
    3622:	6013      	str	r3, [r2, #0]
    3624:	687a      	ldr	r2, [r7, #4]
    3626:	8813      	ldrh	r3, [r2, #0]
    3628:	f36f 138b 	bfc	r3, #6, #6
    362c:	8013      	strh	r3, [r2, #0]
    362e:	687a      	ldr	r2, [r7, #4]
    3630:	7813      	ldrb	r3, [r2, #0]
    3632:	f36f 0305 	bfc	r3, #0, #6
    3636:	7013      	strb	r3, [r2, #0]
    3638:	e011      	b.n	365e <get_date_time+0xd6>
    363a:	687b      	ldr	r3, [r7, #4]
    363c:	885b      	ldrh	r3, [r3, #2]
    363e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3642:	b2db      	uxtb	r3, r3
    3644:	3301      	adds	r3, #1
    3646:	f003 030f 	and.w	r3, r3, #15
    364a:	b2d9      	uxtb	r1, r3
    364c:	687a      	ldr	r2, [r7, #4]
    364e:	8853      	ldrh	r3, [r2, #2]
    3650:	f361 1389 	bfi	r3, r1, #6, #4
    3654:	8053      	strh	r3, [r2, #2]
    3656:	697a      	ldr	r2, [r7, #20]
    3658:	68fb      	ldr	r3, [r7, #12]
    365a:	1ad3      	subs	r3, r2, r3
    365c:	617b      	str	r3, [r7, #20]
    365e:	687b      	ldr	r3, [r7, #4]
    3660:	885b      	ldrh	r3, [r3, #2]
    3662:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3666:	b2db      	uxtb	r3, r3
    3668:	4619      	mov	r1, r3
    366a:	6938      	ldr	r0, [r7, #16]
    366c:	f7ff ff68 	bl	3540 <sec_per_month>
    3670:	60f8      	str	r0, [r7, #12]
    3672:	68fa      	ldr	r2, [r7, #12]
    3674:	697b      	ldr	r3, [r7, #20]
    3676:	429a      	cmp	r2, r3
    3678:	d3df      	bcc.n	363a <get_date_time+0xb2>
    367a:	697b      	ldr	r3, [r7, #20]
    367c:	4a2f      	ldr	r2, [pc, #188]	; (373c <get_date_time+0x1b4>)
    367e:	fba2 2303 	umull	r2, r3, r2, r3
    3682:	0c1b      	lsrs	r3, r3, #16
    3684:	b2db      	uxtb	r3, r3
    3686:	3301      	adds	r3, #1
    3688:	b2db      	uxtb	r3, r3
    368a:	f003 031f 	and.w	r3, r3, #31
    368e:	b2d9      	uxtb	r1, r3
    3690:	687a      	ldr	r2, [r7, #4]
    3692:	7893      	ldrb	r3, [r2, #2]
    3694:	f361 0345 	bfi	r3, r1, #1, #5
    3698:	7093      	strb	r3, [r2, #2]
    369a:	697b      	ldr	r3, [r7, #20]
    369c:	4a27      	ldr	r2, [pc, #156]	; (373c <get_date_time+0x1b4>)
    369e:	fba2 1203 	umull	r1, r2, r2, r3
    36a2:	0c12      	lsrs	r2, r2, #16
    36a4:	4926      	ldr	r1, [pc, #152]	; (3740 <get_date_time+0x1b8>)
    36a6:	fb01 f202 	mul.w	r2, r1, r2
    36aa:	1a9b      	subs	r3, r3, r2
    36ac:	617b      	str	r3, [r7, #20]
    36ae:	697b      	ldr	r3, [r7, #20]
    36b0:	4a24      	ldr	r2, [pc, #144]	; (3744 <get_date_time+0x1bc>)
    36b2:	fba2 2303 	umull	r2, r3, r2, r3
    36b6:	0adb      	lsrs	r3, r3, #11
    36b8:	b2db      	uxtb	r3, r3
    36ba:	f003 031f 	and.w	r3, r3, #31
    36be:	b2d9      	uxtb	r1, r3
    36c0:	687a      	ldr	r2, [r7, #4]
    36c2:	6813      	ldr	r3, [r2, #0]
    36c4:	f361 3310 	bfi	r3, r1, #12, #5
    36c8:	6013      	str	r3, [r2, #0]
    36ca:	697b      	ldr	r3, [r7, #20]
    36cc:	4a1d      	ldr	r2, [pc, #116]	; (3744 <get_date_time+0x1bc>)
    36ce:	fba2 1203 	umull	r1, r2, r2, r3
    36d2:	0ad2      	lsrs	r2, r2, #11
    36d4:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    36d8:	fb01 f202 	mul.w	r2, r1, r2
    36dc:	1a9b      	subs	r3, r3, r2
    36de:	617b      	str	r3, [r7, #20]
    36e0:	697b      	ldr	r3, [r7, #20]
    36e2:	4a19      	ldr	r2, [pc, #100]	; (3748 <get_date_time+0x1c0>)
    36e4:	fba2 2303 	umull	r2, r3, r2, r3
    36e8:	095b      	lsrs	r3, r3, #5
    36ea:	b2db      	uxtb	r3, r3
    36ec:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    36f0:	b2d9      	uxtb	r1, r3
    36f2:	687a      	ldr	r2, [r7, #4]
    36f4:	8813      	ldrh	r3, [r2, #0]
    36f6:	f361 138b 	bfi	r3, r1, #6, #6
    36fa:	8013      	strh	r3, [r2, #0]
    36fc:	6979      	ldr	r1, [r7, #20]
    36fe:	4b12      	ldr	r3, [pc, #72]	; (3748 <get_date_time+0x1c0>)
    3700:	fba3 2301 	umull	r2, r3, r3, r1
    3704:	095a      	lsrs	r2, r3, #5
    3706:	4613      	mov	r3, r2
    3708:	011b      	lsls	r3, r3, #4
    370a:	1a9b      	subs	r3, r3, r2
    370c:	009b      	lsls	r3, r3, #2
    370e:	1aca      	subs	r2, r1, r3
    3710:	b2d3      	uxtb	r3, r2
    3712:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3716:	b2d9      	uxtb	r1, r3
    3718:	687a      	ldr	r2, [r7, #4]
    371a:	7813      	ldrb	r3, [r2, #0]
    371c:	f361 0305 	bfi	r3, r1, #0, #6
    3720:	7013      	strb	r3, [r2, #0]
    3722:	bf00      	nop
    3724:	3718      	adds	r7, #24
    3726:	46bd      	mov	sp, r7
    3728:	bd80      	pop	{r7, pc}
    372a:	bf00      	nop
    372c:	40002800 	.word	0x40002800
    3730:	fe1ecc80 	.word	0xfe1ecc80
    3734:	01e1337f 	.word	0x01e1337f
    3738:	01e284ff 	.word	0x01e284ff
    373c:	c22e4507 	.word	0xc22e4507
    3740:	00015180 	.word	0x00015180
    3744:	91a2b3c5 	.word	0x91a2b3c5
    3748:	88888889 	.word	0x88888889

0000374c <set_date_time>:
    374c:	b580      	push	{r7, lr}
    374e:	b086      	sub	sp, #24
    3750:	af00      	add	r7, sp, #0
    3752:	6078      	str	r0, [r7, #4]
    3754:	2300      	movs	r3, #0
    3756:	613b      	str	r3, [r7, #16]
    3758:	687b      	ldr	r3, [r7, #4]
    375a:	891b      	ldrh	r3, [r3, #8]
    375c:	f240 72b1 	movw	r2, #1969	; 0x7b1
    3760:	4293      	cmp	r3, r2
    3762:	d803      	bhi.n	376c <set_date_time+0x20>
    3764:	687b      	ldr	r3, [r7, #4]
    3766:	f240 72b2 	movw	r2, #1970	; 0x7b2
    376a:	811a      	strh	r2, [r3, #8]
    376c:	687b      	ldr	r3, [r7, #4]
    376e:	891b      	ldrh	r3, [r3, #8]
    3770:	f640 023a 	movw	r2, #2106	; 0x83a
    3774:	4293      	cmp	r3, r2
    3776:	d903      	bls.n	3780 <set_date_time+0x34>
    3778:	687b      	ldr	r3, [r7, #4]
    377a:	f640 023a 	movw	r2, #2106	; 0x83a
    377e:	811a      	strh	r2, [r3, #8]
    3780:	687b      	ldr	r3, [r7, #4]
    3782:	891b      	ldrh	r3, [r3, #8]
    3784:	4618      	mov	r0, r3
    3786:	f7ff feaf 	bl	34e8 <leap_year>
    378a:	60f8      	str	r0, [r7, #12]
    378c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3790:	617b      	str	r3, [r7, #20]
    3792:	e013      	b.n	37bc <set_date_time+0x70>
    3794:	6978      	ldr	r0, [r7, #20]
    3796:	f7ff fea7 	bl	34e8 <leap_year>
    379a:	4603      	mov	r3, r0
    379c:	2b00      	cmp	r3, #0
    379e:	d006      	beq.n	37ae <set_date_time+0x62>
    37a0:	693b      	ldr	r3, [r7, #16]
    37a2:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    37a6:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    37aa:	613b      	str	r3, [r7, #16]
    37ac:	e003      	b.n	37b6 <set_date_time+0x6a>
    37ae:	693a      	ldr	r2, [r7, #16]
    37b0:	4b42      	ldr	r3, [pc, #264]	; (38bc <set_date_time+0x170>)
    37b2:	4413      	add	r3, r2
    37b4:	613b      	str	r3, [r7, #16]
    37b6:	697b      	ldr	r3, [r7, #20]
    37b8:	3301      	adds	r3, #1
    37ba:	617b      	str	r3, [r7, #20]
    37bc:	687b      	ldr	r3, [r7, #4]
    37be:	891b      	ldrh	r3, [r3, #8]
    37c0:	461a      	mov	r2, r3
    37c2:	697b      	ldr	r3, [r7, #20]
    37c4:	429a      	cmp	r2, r3
    37c6:	d8e5      	bhi.n	3794 <set_date_time+0x48>
    37c8:	2301      	movs	r3, #1
    37ca:	617b      	str	r3, [r7, #20]
    37cc:	e00a      	b.n	37e4 <set_date_time+0x98>
    37ce:	6979      	ldr	r1, [r7, #20]
    37d0:	68f8      	ldr	r0, [r7, #12]
    37d2:	f7ff feb5 	bl	3540 <sec_per_month>
    37d6:	4602      	mov	r2, r0
    37d8:	693b      	ldr	r3, [r7, #16]
    37da:	4413      	add	r3, r2
    37dc:	613b      	str	r3, [r7, #16]
    37de:	697b      	ldr	r3, [r7, #20]
    37e0:	3301      	adds	r3, #1
    37e2:	617b      	str	r3, [r7, #20]
    37e4:	687b      	ldr	r3, [r7, #4]
    37e6:	885b      	ldrh	r3, [r3, #2]
    37e8:	f3c3 1383 	ubfx	r3, r3, #6, #4
    37ec:	b2db      	uxtb	r3, r3
    37ee:	461a      	mov	r2, r3
    37f0:	697b      	ldr	r3, [r7, #20]
    37f2:	429a      	cmp	r2, r3
    37f4:	d8eb      	bhi.n	37ce <set_date_time+0x82>
    37f6:	687b      	ldr	r3, [r7, #4]
    37f8:	789b      	ldrb	r3, [r3, #2]
    37fa:	f3c3 0344 	ubfx	r3, r3, #1, #5
    37fe:	b2db      	uxtb	r3, r3
    3800:	3b01      	subs	r3, #1
    3802:	4a2f      	ldr	r2, [pc, #188]	; (38c0 <set_date_time+0x174>)
    3804:	fb02 f303 	mul.w	r3, r2, r3
    3808:	461a      	mov	r2, r3
    380a:	693b      	ldr	r3, [r7, #16]
    380c:	4413      	add	r3, r2
    380e:	613b      	str	r3, [r7, #16]
    3810:	687b      	ldr	r3, [r7, #4]
    3812:	681b      	ldr	r3, [r3, #0]
    3814:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3818:	b2db      	uxtb	r3, r3
    381a:	461a      	mov	r2, r3
    381c:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    3820:	fb03 f302 	mul.w	r3, r3, r2
    3824:	461a      	mov	r2, r3
    3826:	693b      	ldr	r3, [r7, #16]
    3828:	4413      	add	r3, r2
    382a:	613b      	str	r3, [r7, #16]
    382c:	687b      	ldr	r3, [r7, #4]
    382e:	881b      	ldrh	r3, [r3, #0]
    3830:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3834:	b2db      	uxtb	r3, r3
    3836:	461a      	mov	r2, r3
    3838:	4613      	mov	r3, r2
    383a:	011b      	lsls	r3, r3, #4
    383c:	1a9b      	subs	r3, r3, r2
    383e:	009b      	lsls	r3, r3, #2
    3840:	461a      	mov	r2, r3
    3842:	693b      	ldr	r3, [r7, #16]
    3844:	4413      	add	r3, r2
    3846:	613b      	str	r3, [r7, #16]
    3848:	687b      	ldr	r3, [r7, #4]
    384a:	781b      	ldrb	r3, [r3, #0]
    384c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3850:	b2db      	uxtb	r3, r3
    3852:	461a      	mov	r2, r3
    3854:	693b      	ldr	r3, [r7, #16]
    3856:	4413      	add	r3, r2
    3858:	613b      	str	r3, [r7, #16]
    385a:	4a1a      	ldr	r2, [pc, #104]	; (38c4 <set_date_time+0x178>)
    385c:	4b19      	ldr	r3, [pc, #100]	; (38c4 <set_date_time+0x178>)
    385e:	69db      	ldr	r3, [r3, #28]
    3860:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3864:	61d3      	str	r3, [r2, #28]
    3866:	4a18      	ldr	r2, [pc, #96]	; (38c8 <set_date_time+0x17c>)
    3868:	4b17      	ldr	r3, [pc, #92]	; (38c8 <set_date_time+0x17c>)
    386a:	681b      	ldr	r3, [r3, #0]
    386c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3870:	6013      	str	r3, [r2, #0]
    3872:	4a16      	ldr	r2, [pc, #88]	; (38cc <set_date_time+0x180>)
    3874:	4b15      	ldr	r3, [pc, #84]	; (38cc <set_date_time+0x180>)
    3876:	685b      	ldr	r3, [r3, #4]
    3878:	f043 0310 	orr.w	r3, r3, #16
    387c:	6053      	str	r3, [r2, #4]
    387e:	4a13      	ldr	r2, [pc, #76]	; (38cc <set_date_time+0x180>)
    3880:	693b      	ldr	r3, [r7, #16]
    3882:	0c1b      	lsrs	r3, r3, #16
    3884:	6193      	str	r3, [r2, #24]
    3886:	4a11      	ldr	r2, [pc, #68]	; (38cc <set_date_time+0x180>)
    3888:	693b      	ldr	r3, [r7, #16]
    388a:	b29b      	uxth	r3, r3
    388c:	61d3      	str	r3, [r2, #28]
    388e:	4a0f      	ldr	r2, [pc, #60]	; (38cc <set_date_time+0x180>)
    3890:	4b0e      	ldr	r3, [pc, #56]	; (38cc <set_date_time+0x180>)
    3892:	685b      	ldr	r3, [r3, #4]
    3894:	f023 0310 	bic.w	r3, r3, #16
    3898:	6053      	str	r3, [r2, #4]
    389a:	bf00      	nop
    389c:	4b0b      	ldr	r3, [pc, #44]	; (38cc <set_date_time+0x180>)
    389e:	685b      	ldr	r3, [r3, #4]
    38a0:	f003 0320 	and.w	r3, r3, #32
    38a4:	2b00      	cmp	r3, #0
    38a6:	d0f9      	beq.n	389c <set_date_time+0x150>
    38a8:	4a07      	ldr	r2, [pc, #28]	; (38c8 <set_date_time+0x17c>)
    38aa:	4b07      	ldr	r3, [pc, #28]	; (38c8 <set_date_time+0x17c>)
    38ac:	681b      	ldr	r3, [r3, #0]
    38ae:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    38b2:	6013      	str	r3, [r2, #0]
    38b4:	bf00      	nop
    38b6:	3718      	adds	r7, #24
    38b8:	46bd      	mov	sp, r7
    38ba:	bd80      	pop	{r7, pc}
    38bc:	01e13380 	.word	0x01e13380
    38c0:	00015180 	.word	0x00015180
    38c4:	40021000 	.word	0x40021000
    38c8:	40007000 	.word	0x40007000
    38cc:	40002800 	.word	0x40002800

000038d0 <rtc_init>:
    38d0:	b580      	push	{r7, lr}
    38d2:	b082      	sub	sp, #8
    38d4:	af00      	add	r7, sp, #0
    38d6:	6078      	str	r0, [r7, #4]
    38d8:	6039      	str	r1, [r7, #0]
    38da:	4b4a      	ldr	r3, [pc, #296]	; (3a04 <rtc_init+0x134>)
    38dc:	685b      	ldr	r3, [r3, #4]
    38de:	f64a 2255 	movw	r2, #43605	; 0xaa55
    38e2:	4293      	cmp	r3, r2
    38e4:	f000 8082 	beq.w	39ec <rtc_init+0x11c>
    38e8:	4a47      	ldr	r2, [pc, #284]	; (3a08 <rtc_init+0x138>)
    38ea:	4b47      	ldr	r3, [pc, #284]	; (3a08 <rtc_init+0x138>)
    38ec:	69db      	ldr	r3, [r3, #28]
    38ee:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    38f2:	61d3      	str	r3, [r2, #28]
    38f4:	4a45      	ldr	r2, [pc, #276]	; (3a0c <rtc_init+0x13c>)
    38f6:	4b45      	ldr	r3, [pc, #276]	; (3a0c <rtc_init+0x13c>)
    38f8:	681b      	ldr	r3, [r3, #0]
    38fa:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    38fe:	6013      	str	r3, [r2, #0]
    3900:	4a41      	ldr	r2, [pc, #260]	; (3a08 <rtc_init+0x138>)
    3902:	4b41      	ldr	r3, [pc, #260]	; (3a08 <rtc_init+0x138>)
    3904:	6a1b      	ldr	r3, [r3, #32]
    3906:	f043 0301 	orr.w	r3, r3, #1
    390a:	6213      	str	r3, [r2, #32]
    390c:	bf00      	nop
    390e:	4b3e      	ldr	r3, [pc, #248]	; (3a08 <rtc_init+0x138>)
    3910:	6a1b      	ldr	r3, [r3, #32]
    3912:	f003 0302 	and.w	r3, r3, #2
    3916:	2b00      	cmp	r3, #0
    3918:	d0f9      	beq.n	390e <rtc_init+0x3e>
    391a:	4a3b      	ldr	r2, [pc, #236]	; (3a08 <rtc_init+0x138>)
    391c:	4b3a      	ldr	r3, [pc, #232]	; (3a08 <rtc_init+0x138>)
    391e:	6a1b      	ldr	r3, [r3, #32]
    3920:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    3924:	6213      	str	r3, [r2, #32]
    3926:	bf00      	nop
    3928:	4b39      	ldr	r3, [pc, #228]	; (3a10 <rtc_init+0x140>)
    392a:	685b      	ldr	r3, [r3, #4]
    392c:	f003 0308 	and.w	r3, r3, #8
    3930:	2b00      	cmp	r3, #0
    3932:	d0f9      	beq.n	3928 <rtc_init+0x58>
    3934:	bf00      	nop
    3936:	4b36      	ldr	r3, [pc, #216]	; (3a10 <rtc_init+0x140>)
    3938:	685b      	ldr	r3, [r3, #4]
    393a:	f003 0320 	and.w	r3, r3, #32
    393e:	2b00      	cmp	r3, #0
    3940:	d0f9      	beq.n	3936 <rtc_init+0x66>
    3942:	4a33      	ldr	r2, [pc, #204]	; (3a10 <rtc_init+0x140>)
    3944:	4b32      	ldr	r3, [pc, #200]	; (3a10 <rtc_init+0x140>)
    3946:	685b      	ldr	r3, [r3, #4]
    3948:	f043 0310 	orr.w	r3, r3, #16
    394c:	6053      	str	r3, [r2, #4]
    394e:	bf00      	nop
    3950:	4b2f      	ldr	r3, [pc, #188]	; (3a10 <rtc_init+0x140>)
    3952:	685b      	ldr	r3, [r3, #4]
    3954:	f003 0320 	and.w	r3, r3, #32
    3958:	2b00      	cmp	r3, #0
    395a:	d0f9      	beq.n	3950 <rtc_init+0x80>
    395c:	492c      	ldr	r1, [pc, #176]	; (3a10 <rtc_init+0x140>)
    395e:	4b2c      	ldr	r3, [pc, #176]	; (3a10 <rtc_init+0x140>)
    3960:	681a      	ldr	r2, [r3, #0]
    3962:	683b      	ldr	r3, [r7, #0]
    3964:	4313      	orrs	r3, r2
    3966:	600b      	str	r3, [r1, #0]
    3968:	bf00      	nop
    396a:	4b29      	ldr	r3, [pc, #164]	; (3a10 <rtc_init+0x140>)
    396c:	685b      	ldr	r3, [r3, #4]
    396e:	f003 0320 	and.w	r3, r3, #32
    3972:	2b00      	cmp	r3, #0
    3974:	d0f9      	beq.n	396a <rtc_init+0x9a>
    3976:	4a26      	ldr	r2, [pc, #152]	; (3a10 <rtc_init+0x140>)
    3978:	687b      	ldr	r3, [r7, #4]
    397a:	03db      	lsls	r3, r3, #15
    397c:	4925      	ldr	r1, [pc, #148]	; (3a14 <rtc_init+0x144>)
    397e:	fba1 1303 	umull	r1, r3, r1, r3
    3982:	099b      	lsrs	r3, r3, #6
    3984:	3b01      	subs	r3, #1
    3986:	b29b      	uxth	r3, r3
    3988:	60d3      	str	r3, [r2, #12]
    398a:	bf00      	nop
    398c:	4b20      	ldr	r3, [pc, #128]	; (3a10 <rtc_init+0x140>)
    398e:	685b      	ldr	r3, [r3, #4]
    3990:	f003 0320 	and.w	r3, r3, #32
    3994:	2b00      	cmp	r3, #0
    3996:	d0f9      	beq.n	398c <rtc_init+0xbc>
    3998:	4a1d      	ldr	r2, [pc, #116]	; (3a10 <rtc_init+0x140>)
    399a:	687b      	ldr	r3, [r7, #4]
    399c:	03db      	lsls	r3, r3, #15
    399e:	491d      	ldr	r1, [pc, #116]	; (3a14 <rtc_init+0x144>)
    39a0:	fba1 1303 	umull	r1, r3, r1, r3
    39a4:	099b      	lsrs	r3, r3, #6
    39a6:	3b01      	subs	r3, #1
    39a8:	0c1b      	lsrs	r3, r3, #16
    39aa:	f003 030f 	and.w	r3, r3, #15
    39ae:	6093      	str	r3, [r2, #8]
    39b0:	bf00      	nop
    39b2:	4b17      	ldr	r3, [pc, #92]	; (3a10 <rtc_init+0x140>)
    39b4:	685b      	ldr	r3, [r3, #4]
    39b6:	f003 0320 	and.w	r3, r3, #32
    39ba:	2b00      	cmp	r3, #0
    39bc:	d0f9      	beq.n	39b2 <rtc_init+0xe2>
    39be:	4b11      	ldr	r3, [pc, #68]	; (3a04 <rtc_init+0x134>)
    39c0:	f64a 2255 	movw	r2, #43605	; 0xaa55
    39c4:	605a      	str	r2, [r3, #4]
    39c6:	4a12      	ldr	r2, [pc, #72]	; (3a10 <rtc_init+0x140>)
    39c8:	4b11      	ldr	r3, [pc, #68]	; (3a10 <rtc_init+0x140>)
    39ca:	685b      	ldr	r3, [r3, #4]
    39cc:	f023 0310 	bic.w	r3, r3, #16
    39d0:	6053      	str	r3, [r2, #4]
    39d2:	bf00      	nop
    39d4:	4b0e      	ldr	r3, [pc, #56]	; (3a10 <rtc_init+0x140>)
    39d6:	685b      	ldr	r3, [r3, #4]
    39d8:	f003 0320 	and.w	r3, r3, #32
    39dc:	2b00      	cmp	r3, #0
    39de:	d0f9      	beq.n	39d4 <rtc_init+0x104>
    39e0:	4a0a      	ldr	r2, [pc, #40]	; (3a0c <rtc_init+0x13c>)
    39e2:	4b0a      	ldr	r3, [pc, #40]	; (3a0c <rtc_init+0x13c>)
    39e4:	681b      	ldr	r3, [r3, #0]
    39e6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    39ea:	6013      	str	r3, [r2, #0]
    39ec:	210f      	movs	r1, #15
    39ee:	2003      	movs	r0, #3
    39f0:	f7ff fd4a 	bl	3488 <set_int_priority>
    39f4:	2003      	movs	r0, #3
    39f6:	f7ff fc8d 	bl	3314 <enable_interrupt>
    39fa:	bf00      	nop
    39fc:	3708      	adds	r7, #8
    39fe:	46bd      	mov	sp, r7
    3a00:	bd80      	pop	{r7, pc}
    3a02:	bf00      	nop
    3a04:	40006c00 	.word	0x40006c00
    3a08:	40021000 	.word	0x40021000
    3a0c:	40007000 	.word	0x40007000
    3a10:	40002800 	.word	0x40002800
    3a14:	10624dd3 	.word	0x10624dd3

00003a18 <reset_backup_domain>:
    3a18:	b480      	push	{r7}
    3a1a:	af00      	add	r7, sp, #0
    3a1c:	4a0a      	ldr	r2, [pc, #40]	; (3a48 <reset_backup_domain+0x30>)
    3a1e:	4b0a      	ldr	r3, [pc, #40]	; (3a48 <reset_backup_domain+0x30>)
    3a20:	69db      	ldr	r3, [r3, #28]
    3a22:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3a26:	61d3      	str	r3, [r2, #28]
    3a28:	4a07      	ldr	r2, [pc, #28]	; (3a48 <reset_backup_domain+0x30>)
    3a2a:	4b07      	ldr	r3, [pc, #28]	; (3a48 <reset_backup_domain+0x30>)
    3a2c:	6a1b      	ldr	r3, [r3, #32]
    3a2e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    3a32:	6213      	str	r3, [r2, #32]
    3a34:	4a04      	ldr	r2, [pc, #16]	; (3a48 <reset_backup_domain+0x30>)
    3a36:	4b04      	ldr	r3, [pc, #16]	; (3a48 <reset_backup_domain+0x30>)
    3a38:	6a1b      	ldr	r3, [r3, #32]
    3a3a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    3a3e:	6213      	str	r3, [r2, #32]
    3a40:	bf00      	nop
    3a42:	46bd      	mov	sp, r7
    3a44:	bc80      	pop	{r7}
    3a46:	4770      	bx	lr
    3a48:	40021000 	.word	0x40021000

00003a4c <rtc_clock_trim>:
    3a4c:	b480      	push	{r7}
    3a4e:	b083      	sub	sp, #12
    3a50:	af00      	add	r7, sp, #0
    3a52:	6078      	str	r0, [r7, #4]
    3a54:	4a34      	ldr	r2, [pc, #208]	; (3b28 <rtc_clock_trim+0xdc>)
    3a56:	4b34      	ldr	r3, [pc, #208]	; (3b28 <rtc_clock_trim+0xdc>)
    3a58:	69db      	ldr	r3, [r3, #28]
    3a5a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3a5e:	61d3      	str	r3, [r2, #28]
    3a60:	bf00      	nop
    3a62:	4b32      	ldr	r3, [pc, #200]	; (3b2c <rtc_clock_trim+0xe0>)
    3a64:	685b      	ldr	r3, [r3, #4]
    3a66:	f003 0308 	and.w	r3, r3, #8
    3a6a:	2b00      	cmp	r3, #0
    3a6c:	d0f9      	beq.n	3a62 <rtc_clock_trim+0x16>
    3a6e:	4a30      	ldr	r2, [pc, #192]	; (3b30 <rtc_clock_trim+0xe4>)
    3a70:	4b2f      	ldr	r3, [pc, #188]	; (3b30 <rtc_clock_trim+0xe4>)
    3a72:	681b      	ldr	r3, [r3, #0]
    3a74:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3a78:	6013      	str	r3, [r2, #0]
    3a7a:	4a2c      	ldr	r2, [pc, #176]	; (3b2c <rtc_clock_trim+0xe0>)
    3a7c:	4b2b      	ldr	r3, [pc, #172]	; (3b2c <rtc_clock_trim+0xe0>)
    3a7e:	685b      	ldr	r3, [r3, #4]
    3a80:	f043 0310 	orr.w	r3, r3, #16
    3a84:	6053      	str	r3, [r2, #4]
    3a86:	4a2b      	ldr	r2, [pc, #172]	; (3b34 <rtc_clock_trim+0xe8>)
    3a88:	4b2a      	ldr	r3, [pc, #168]	; (3b34 <rtc_clock_trim+0xe8>)
    3a8a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3a8c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3a90:	62d3      	str	r3, [r2, #44]	; 0x2c
    3a92:	687b      	ldr	r3, [r7, #4]
    3a94:	2b00      	cmp	r3, #0
    3a96:	d10a      	bne.n	3aae <rtc_clock_trim+0x62>
    3a98:	4b26      	ldr	r3, [pc, #152]	; (3b34 <rtc_clock_trim+0xe8>)
    3a9a:	2200      	movs	r2, #0
    3a9c:	62da      	str	r2, [r3, #44]	; 0x2c
    3a9e:	4b23      	ldr	r3, [pc, #140]	; (3b2c <rtc_clock_trim+0xe0>)
    3aa0:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3aa4:	60da      	str	r2, [r3, #12]
    3aa6:	4b21      	ldr	r3, [pc, #132]	; (3b2c <rtc_clock_trim+0xe0>)
    3aa8:	2200      	movs	r2, #0
    3aaa:	609a      	str	r2, [r3, #8]
    3aac:	e023      	b.n	3af6 <rtc_clock_trim+0xaa>
    3aae:	687b      	ldr	r3, [r7, #4]
    3ab0:	2b00      	cmp	r3, #0
    3ab2:	dd0a      	ble.n	3aca <rtc_clock_trim+0x7e>
    3ab4:	687b      	ldr	r3, [r7, #4]
    3ab6:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3aba:	607b      	str	r3, [r7, #4]
    3abc:	491d      	ldr	r1, [pc, #116]	; (3b34 <rtc_clock_trim+0xe8>)
    3abe:	4b1d      	ldr	r3, [pc, #116]	; (3b34 <rtc_clock_trim+0xe8>)
    3ac0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3ac2:	687b      	ldr	r3, [r7, #4]
    3ac4:	4313      	orrs	r3, r2
    3ac6:	62cb      	str	r3, [r1, #44]	; 0x2c
    3ac8:	e015      	b.n	3af6 <rtc_clock_trim+0xaa>
    3aca:	687b      	ldr	r3, [r7, #4]
    3acc:	425b      	negs	r3, r3
    3ace:	607b      	str	r3, [r7, #4]
    3ad0:	687b      	ldr	r3, [r7, #4]
    3ad2:	2b7f      	cmp	r3, #127	; 0x7f
    3ad4:	dd01      	ble.n	3ada <rtc_clock_trim+0x8e>
    3ad6:	237f      	movs	r3, #127	; 0x7f
    3ad8:	607b      	str	r3, [r7, #4]
    3ada:	4b16      	ldr	r3, [pc, #88]	; (3b34 <rtc_clock_trim+0xe8>)
    3adc:	2200      	movs	r2, #0
    3ade:	62da      	str	r2, [r3, #44]	; 0x2c
    3ae0:	4a12      	ldr	r2, [pc, #72]	; (3b2c <rtc_clock_trim+0xe0>)
    3ae2:	687b      	ldr	r3, [r7, #4]
    3ae4:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3ae8:	33ff      	adds	r3, #255	; 0xff
    3aea:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3aee:	60d3      	str	r3, [r2, #12]
    3af0:	4b0e      	ldr	r3, [pc, #56]	; (3b2c <rtc_clock_trim+0xe0>)
    3af2:	2200      	movs	r2, #0
    3af4:	609a      	str	r2, [r3, #8]
    3af6:	4a0d      	ldr	r2, [pc, #52]	; (3b2c <rtc_clock_trim+0xe0>)
    3af8:	4b0c      	ldr	r3, [pc, #48]	; (3b2c <rtc_clock_trim+0xe0>)
    3afa:	685b      	ldr	r3, [r3, #4]
    3afc:	f023 0310 	bic.w	r3, r3, #16
    3b00:	6053      	str	r3, [r2, #4]
    3b02:	bf00      	nop
    3b04:	4b09      	ldr	r3, [pc, #36]	; (3b2c <rtc_clock_trim+0xe0>)
    3b06:	685b      	ldr	r3, [r3, #4]
    3b08:	f003 0320 	and.w	r3, r3, #32
    3b0c:	2b00      	cmp	r3, #0
    3b0e:	d0f9      	beq.n	3b04 <rtc_clock_trim+0xb8>
    3b10:	4a07      	ldr	r2, [pc, #28]	; (3b30 <rtc_clock_trim+0xe4>)
    3b12:	4b07      	ldr	r3, [pc, #28]	; (3b30 <rtc_clock_trim+0xe4>)
    3b14:	681b      	ldr	r3, [r3, #0]
    3b16:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3b1a:	6013      	str	r3, [r2, #0]
    3b1c:	bf00      	nop
    3b1e:	370c      	adds	r7, #12
    3b20:	46bd      	mov	sp, r7
    3b22:	bc80      	pop	{r7}
    3b24:	4770      	bx	lr
    3b26:	bf00      	nop
    3b28:	40021000 	.word	0x40021000
    3b2c:	40002800 	.word	0x40002800
    3b30:	40007000 	.word	0x40007000
    3b34:	40006c00 	.word	0x40006c00

00003b38 <rtc_set_alarm>:
    3b38:	b480      	push	{r7}
    3b3a:	b083      	sub	sp, #12
    3b3c:	af00      	add	r7, sp, #0
    3b3e:	6078      	str	r0, [r7, #4]
    3b40:	bf00      	nop
    3b42:	370c      	adds	r7, #12
    3b44:	46bd      	mov	sp, r7
    3b46:	bc80      	pop	{r7}
    3b48:	4770      	bx	lr

00003b4a <str_to_date>:
    3b4a:	b580      	push	{r7, lr}
    3b4c:	b084      	sub	sp, #16
    3b4e:	af00      	add	r7, sp, #0
    3b50:	6078      	str	r0, [r7, #4]
    3b52:	6039      	str	r1, [r7, #0]
    3b54:	2300      	movs	r3, #0
    3b56:	60fb      	str	r3, [r7, #12]
    3b58:	2300      	movs	r3, #0
    3b5a:	60bb      	str	r3, [r7, #8]
    3b5c:	e00f      	b.n	3b7e <str_to_date+0x34>
    3b5e:	68ba      	ldr	r2, [r7, #8]
    3b60:	4613      	mov	r3, r2
    3b62:	009b      	lsls	r3, r3, #2
    3b64:	4413      	add	r3, r2
    3b66:	005b      	lsls	r3, r3, #1
    3b68:	4619      	mov	r1, r3
    3b6a:	68fb      	ldr	r3, [r7, #12]
    3b6c:	1c5a      	adds	r2, r3, #1
    3b6e:	60fa      	str	r2, [r7, #12]
    3b70:	461a      	mov	r2, r3
    3b72:	687b      	ldr	r3, [r7, #4]
    3b74:	4413      	add	r3, r2
    3b76:	781b      	ldrb	r3, [r3, #0]
    3b78:	440b      	add	r3, r1
    3b7a:	3b30      	subs	r3, #48	; 0x30
    3b7c:	60bb      	str	r3, [r7, #8]
    3b7e:	68fb      	ldr	r3, [r7, #12]
    3b80:	687a      	ldr	r2, [r7, #4]
    3b82:	4413      	add	r3, r2
    3b84:	781b      	ldrb	r3, [r3, #0]
    3b86:	4618      	mov	r0, r3
    3b88:	f7fe f859 	bl	1c3e <digit>
    3b8c:	4603      	mov	r3, r0
    3b8e:	2b00      	cmp	r3, #0
    3b90:	d1e5      	bne.n	3b5e <str_to_date+0x14>
    3b92:	68fb      	ldr	r3, [r7, #12]
    3b94:	2b03      	cmp	r3, #3
    3b96:	dd05      	ble.n	3ba4 <str_to_date+0x5a>
    3b98:	68fb      	ldr	r3, [r7, #12]
    3b9a:	687a      	ldr	r2, [r7, #4]
    3b9c:	4413      	add	r3, r2
    3b9e:	781b      	ldrb	r3, [r3, #0]
    3ba0:	2b2f      	cmp	r3, #47	; 0x2f
    3ba2:	d001      	beq.n	3ba8 <str_to_date+0x5e>
    3ba4:	2300      	movs	r3, #0
    3ba6:	e068      	b.n	3c7a <str_to_date+0x130>
    3ba8:	68bb      	ldr	r3, [r7, #8]
    3baa:	b29a      	uxth	r2, r3
    3bac:	683b      	ldr	r3, [r7, #0]
    3bae:	811a      	strh	r2, [r3, #8]
    3bb0:	68fb      	ldr	r3, [r7, #12]
    3bb2:	3301      	adds	r3, #1
    3bb4:	60fb      	str	r3, [r7, #12]
    3bb6:	2300      	movs	r3, #0
    3bb8:	60bb      	str	r3, [r7, #8]
    3bba:	e00f      	b.n	3bdc <str_to_date+0x92>
    3bbc:	68ba      	ldr	r2, [r7, #8]
    3bbe:	4613      	mov	r3, r2
    3bc0:	009b      	lsls	r3, r3, #2
    3bc2:	4413      	add	r3, r2
    3bc4:	005b      	lsls	r3, r3, #1
    3bc6:	4619      	mov	r1, r3
    3bc8:	68fb      	ldr	r3, [r7, #12]
    3bca:	1c5a      	adds	r2, r3, #1
    3bcc:	60fa      	str	r2, [r7, #12]
    3bce:	461a      	mov	r2, r3
    3bd0:	687b      	ldr	r3, [r7, #4]
    3bd2:	4413      	add	r3, r2
    3bd4:	781b      	ldrb	r3, [r3, #0]
    3bd6:	440b      	add	r3, r1
    3bd8:	3b30      	subs	r3, #48	; 0x30
    3bda:	60bb      	str	r3, [r7, #8]
    3bdc:	68fb      	ldr	r3, [r7, #12]
    3bde:	687a      	ldr	r2, [r7, #4]
    3be0:	4413      	add	r3, r2
    3be2:	781b      	ldrb	r3, [r3, #0]
    3be4:	4618      	mov	r0, r3
    3be6:	f7fe f82a 	bl	1c3e <digit>
    3bea:	4603      	mov	r3, r0
    3bec:	2b00      	cmp	r3, #0
    3bee:	d1e5      	bne.n	3bbc <str_to_date+0x72>
    3bf0:	68fb      	ldr	r3, [r7, #12]
    3bf2:	2b06      	cmp	r3, #6
    3bf4:	dd05      	ble.n	3c02 <str_to_date+0xb8>
    3bf6:	68fb      	ldr	r3, [r7, #12]
    3bf8:	687a      	ldr	r2, [r7, #4]
    3bfa:	4413      	add	r3, r2
    3bfc:	781b      	ldrb	r3, [r3, #0]
    3bfe:	2b2f      	cmp	r3, #47	; 0x2f
    3c00:	d001      	beq.n	3c06 <str_to_date+0xbc>
    3c02:	2300      	movs	r3, #0
    3c04:	e039      	b.n	3c7a <str_to_date+0x130>
    3c06:	68bb      	ldr	r3, [r7, #8]
    3c08:	b2db      	uxtb	r3, r3
    3c0a:	f003 030f 	and.w	r3, r3, #15
    3c0e:	b2d9      	uxtb	r1, r3
    3c10:	683a      	ldr	r2, [r7, #0]
    3c12:	8853      	ldrh	r3, [r2, #2]
    3c14:	f361 1389 	bfi	r3, r1, #6, #4
    3c18:	8053      	strh	r3, [r2, #2]
    3c1a:	2300      	movs	r3, #0
    3c1c:	60bb      	str	r3, [r7, #8]
    3c1e:	68fb      	ldr	r3, [r7, #12]
    3c20:	3301      	adds	r3, #1
    3c22:	60fb      	str	r3, [r7, #12]
    3c24:	e00f      	b.n	3c46 <str_to_date+0xfc>
    3c26:	68ba      	ldr	r2, [r7, #8]
    3c28:	4613      	mov	r3, r2
    3c2a:	009b      	lsls	r3, r3, #2
    3c2c:	4413      	add	r3, r2
    3c2e:	005b      	lsls	r3, r3, #1
    3c30:	4619      	mov	r1, r3
    3c32:	68fb      	ldr	r3, [r7, #12]
    3c34:	1c5a      	adds	r2, r3, #1
    3c36:	60fa      	str	r2, [r7, #12]
    3c38:	461a      	mov	r2, r3
    3c3a:	687b      	ldr	r3, [r7, #4]
    3c3c:	4413      	add	r3, r2
    3c3e:	781b      	ldrb	r3, [r3, #0]
    3c40:	440b      	add	r3, r1
    3c42:	3b30      	subs	r3, #48	; 0x30
    3c44:	60bb      	str	r3, [r7, #8]
    3c46:	68fb      	ldr	r3, [r7, #12]
    3c48:	687a      	ldr	r2, [r7, #4]
    3c4a:	4413      	add	r3, r2
    3c4c:	781b      	ldrb	r3, [r3, #0]
    3c4e:	4618      	mov	r0, r3
    3c50:	f7fd fff5 	bl	1c3e <digit>
    3c54:	4603      	mov	r3, r0
    3c56:	2b00      	cmp	r3, #0
    3c58:	d1e5      	bne.n	3c26 <str_to_date+0xdc>
    3c5a:	68fb      	ldr	r3, [r7, #12]
    3c5c:	2b09      	cmp	r3, #9
    3c5e:	dc01      	bgt.n	3c64 <str_to_date+0x11a>
    3c60:	2300      	movs	r3, #0
    3c62:	e00a      	b.n	3c7a <str_to_date+0x130>
    3c64:	68bb      	ldr	r3, [r7, #8]
    3c66:	b2db      	uxtb	r3, r3
    3c68:	f003 031f 	and.w	r3, r3, #31
    3c6c:	b2d9      	uxtb	r1, r3
    3c6e:	683a      	ldr	r2, [r7, #0]
    3c70:	7893      	ldrb	r3, [r2, #2]
    3c72:	f361 0345 	bfi	r3, r1, #1, #5
    3c76:	7093      	strb	r3, [r2, #2]
    3c78:	2301      	movs	r3, #1
    3c7a:	4618      	mov	r0, r3
    3c7c:	3710      	adds	r7, #16
    3c7e:	46bd      	mov	sp, r7
    3c80:	bd80      	pop	{r7, pc}

00003c82 <str_to_time>:
    3c82:	b580      	push	{r7, lr}
    3c84:	b084      	sub	sp, #16
    3c86:	af00      	add	r7, sp, #0
    3c88:	6078      	str	r0, [r7, #4]
    3c8a:	6039      	str	r1, [r7, #0]
    3c8c:	2300      	movs	r3, #0
    3c8e:	60fb      	str	r3, [r7, #12]
    3c90:	2300      	movs	r3, #0
    3c92:	72fb      	strb	r3, [r7, #11]
    3c94:	e010      	b.n	3cb8 <str_to_time+0x36>
    3c96:	7afb      	ldrb	r3, [r7, #11]
    3c98:	461a      	mov	r2, r3
    3c9a:	0092      	lsls	r2, r2, #2
    3c9c:	4413      	add	r3, r2
    3c9e:	005b      	lsls	r3, r3, #1
    3ca0:	b2da      	uxtb	r2, r3
    3ca2:	68fb      	ldr	r3, [r7, #12]
    3ca4:	1c59      	adds	r1, r3, #1
    3ca6:	60f9      	str	r1, [r7, #12]
    3ca8:	4619      	mov	r1, r3
    3caa:	687b      	ldr	r3, [r7, #4]
    3cac:	440b      	add	r3, r1
    3cae:	781b      	ldrb	r3, [r3, #0]
    3cb0:	4413      	add	r3, r2
    3cb2:	b2db      	uxtb	r3, r3
    3cb4:	3b30      	subs	r3, #48	; 0x30
    3cb6:	72fb      	strb	r3, [r7, #11]
    3cb8:	68fb      	ldr	r3, [r7, #12]
    3cba:	687a      	ldr	r2, [r7, #4]
    3cbc:	4413      	add	r3, r2
    3cbe:	781b      	ldrb	r3, [r3, #0]
    3cc0:	4618      	mov	r0, r3
    3cc2:	f7fd ffbc 	bl	1c3e <digit>
    3cc6:	4603      	mov	r3, r0
    3cc8:	2b00      	cmp	r3, #0
    3cca:	d1e4      	bne.n	3c96 <str_to_time+0x14>
    3ccc:	7afb      	ldrb	r3, [r7, #11]
    3cce:	2b17      	cmp	r3, #23
    3cd0:	d805      	bhi.n	3cde <str_to_time+0x5c>
    3cd2:	68fb      	ldr	r3, [r7, #12]
    3cd4:	687a      	ldr	r2, [r7, #4]
    3cd6:	4413      	add	r3, r2
    3cd8:	781b      	ldrb	r3, [r3, #0]
    3cda:	2b3a      	cmp	r3, #58	; 0x3a
    3cdc:	d001      	beq.n	3ce2 <str_to_time+0x60>
    3cde:	2300      	movs	r3, #0
    3ce0:	e06d      	b.n	3dbe <str_to_time+0x13c>
    3ce2:	7afb      	ldrb	r3, [r7, #11]
    3ce4:	f003 031f 	and.w	r3, r3, #31
    3ce8:	b2d9      	uxtb	r1, r3
    3cea:	683a      	ldr	r2, [r7, #0]
    3cec:	6813      	ldr	r3, [r2, #0]
    3cee:	f361 3310 	bfi	r3, r1, #12, #5
    3cf2:	6013      	str	r3, [r2, #0]
    3cf4:	68fb      	ldr	r3, [r7, #12]
    3cf6:	3301      	adds	r3, #1
    3cf8:	60fb      	str	r3, [r7, #12]
    3cfa:	2300      	movs	r3, #0
    3cfc:	72fb      	strb	r3, [r7, #11]
    3cfe:	e010      	b.n	3d22 <str_to_time+0xa0>
    3d00:	7afb      	ldrb	r3, [r7, #11]
    3d02:	461a      	mov	r2, r3
    3d04:	0092      	lsls	r2, r2, #2
    3d06:	4413      	add	r3, r2
    3d08:	005b      	lsls	r3, r3, #1
    3d0a:	b2da      	uxtb	r2, r3
    3d0c:	68fb      	ldr	r3, [r7, #12]
    3d0e:	1c59      	adds	r1, r3, #1
    3d10:	60f9      	str	r1, [r7, #12]
    3d12:	4619      	mov	r1, r3
    3d14:	687b      	ldr	r3, [r7, #4]
    3d16:	440b      	add	r3, r1
    3d18:	781b      	ldrb	r3, [r3, #0]
    3d1a:	4413      	add	r3, r2
    3d1c:	b2db      	uxtb	r3, r3
    3d1e:	3b30      	subs	r3, #48	; 0x30
    3d20:	72fb      	strb	r3, [r7, #11]
    3d22:	68fb      	ldr	r3, [r7, #12]
    3d24:	687a      	ldr	r2, [r7, #4]
    3d26:	4413      	add	r3, r2
    3d28:	781b      	ldrb	r3, [r3, #0]
    3d2a:	4618      	mov	r0, r3
    3d2c:	f7fd ff87 	bl	1c3e <digit>
    3d30:	4603      	mov	r3, r0
    3d32:	2b00      	cmp	r3, #0
    3d34:	d1e4      	bne.n	3d00 <str_to_time+0x7e>
    3d36:	7afb      	ldrb	r3, [r7, #11]
    3d38:	2b3b      	cmp	r3, #59	; 0x3b
    3d3a:	d805      	bhi.n	3d48 <str_to_time+0xc6>
    3d3c:	68fb      	ldr	r3, [r7, #12]
    3d3e:	687a      	ldr	r2, [r7, #4]
    3d40:	4413      	add	r3, r2
    3d42:	781b      	ldrb	r3, [r3, #0]
    3d44:	2b3a      	cmp	r3, #58	; 0x3a
    3d46:	d001      	beq.n	3d4c <str_to_time+0xca>
    3d48:	2300      	movs	r3, #0
    3d4a:	e038      	b.n	3dbe <str_to_time+0x13c>
    3d4c:	7afb      	ldrb	r3, [r7, #11]
    3d4e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3d52:	b2d9      	uxtb	r1, r3
    3d54:	683a      	ldr	r2, [r7, #0]
    3d56:	8813      	ldrh	r3, [r2, #0]
    3d58:	f361 138b 	bfi	r3, r1, #6, #6
    3d5c:	8013      	strh	r3, [r2, #0]
    3d5e:	2300      	movs	r3, #0
    3d60:	72fb      	strb	r3, [r7, #11]
    3d62:	68fb      	ldr	r3, [r7, #12]
    3d64:	3301      	adds	r3, #1
    3d66:	60fb      	str	r3, [r7, #12]
    3d68:	e010      	b.n	3d8c <str_to_time+0x10a>
    3d6a:	7afb      	ldrb	r3, [r7, #11]
    3d6c:	461a      	mov	r2, r3
    3d6e:	0092      	lsls	r2, r2, #2
    3d70:	4413      	add	r3, r2
    3d72:	005b      	lsls	r3, r3, #1
    3d74:	b2da      	uxtb	r2, r3
    3d76:	68fb      	ldr	r3, [r7, #12]
    3d78:	1c59      	adds	r1, r3, #1
    3d7a:	60f9      	str	r1, [r7, #12]
    3d7c:	4619      	mov	r1, r3
    3d7e:	687b      	ldr	r3, [r7, #4]
    3d80:	440b      	add	r3, r1
    3d82:	781b      	ldrb	r3, [r3, #0]
    3d84:	4413      	add	r3, r2
    3d86:	b2db      	uxtb	r3, r3
    3d88:	3b30      	subs	r3, #48	; 0x30
    3d8a:	72fb      	strb	r3, [r7, #11]
    3d8c:	68fb      	ldr	r3, [r7, #12]
    3d8e:	687a      	ldr	r2, [r7, #4]
    3d90:	4413      	add	r3, r2
    3d92:	781b      	ldrb	r3, [r3, #0]
    3d94:	4618      	mov	r0, r3
    3d96:	f7fd ff52 	bl	1c3e <digit>
    3d9a:	4603      	mov	r3, r0
    3d9c:	2b00      	cmp	r3, #0
    3d9e:	d1e4      	bne.n	3d6a <str_to_time+0xe8>
    3da0:	7afb      	ldrb	r3, [r7, #11]
    3da2:	2b3b      	cmp	r3, #59	; 0x3b
    3da4:	d901      	bls.n	3daa <str_to_time+0x128>
    3da6:	2300      	movs	r3, #0
    3da8:	e009      	b.n	3dbe <str_to_time+0x13c>
    3daa:	7afb      	ldrb	r3, [r7, #11]
    3dac:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3db0:	b2d9      	uxtb	r1, r3
    3db2:	683a      	ldr	r2, [r7, #0]
    3db4:	7813      	ldrb	r3, [r2, #0]
    3db6:	f361 0305 	bfi	r3, r1, #0, #6
    3dba:	7013      	strb	r3, [r2, #0]
    3dbc:	2301      	movs	r3, #1
    3dbe:	4618      	mov	r0, r3
    3dc0:	3710      	adds	r7, #16
    3dc2:	46bd      	mov	sp, r7
    3dc4:	bd80      	pop	{r7, pc}

00003dc6 <date_str>:
    3dc6:	b480      	push	{r7}
    3dc8:	b085      	sub	sp, #20
    3dca:	af00      	add	r7, sp, #0
    3dcc:	6078      	str	r0, [r7, #4]
    3dce:	6039      	str	r1, [r7, #0]
    3dd0:	2300      	movs	r3, #0
    3dd2:	60fb      	str	r3, [r7, #12]
    3dd4:	687b      	ldr	r3, [r7, #4]
    3dd6:	891b      	ldrh	r3, [r3, #8]
    3dd8:	60bb      	str	r3, [r7, #8]
    3dda:	68fb      	ldr	r3, [r7, #12]
    3ddc:	1c5a      	adds	r2, r3, #1
    3dde:	60fa      	str	r2, [r7, #12]
    3de0:	461a      	mov	r2, r3
    3de2:	683b      	ldr	r3, [r7, #0]
    3de4:	4413      	add	r3, r2
    3de6:	68ba      	ldr	r2, [r7, #8]
    3de8:	495d      	ldr	r1, [pc, #372]	; (3f60 <date_str+0x19a>)
    3dea:	fba1 1202 	umull	r1, r2, r1, r2
    3dee:	0992      	lsrs	r2, r2, #6
    3df0:	b2d2      	uxtb	r2, r2
    3df2:	3230      	adds	r2, #48	; 0x30
    3df4:	b2d2      	uxtb	r2, r2
    3df6:	701a      	strb	r2, [r3, #0]
    3df8:	68bb      	ldr	r3, [r7, #8]
    3dfa:	4a59      	ldr	r2, [pc, #356]	; (3f60 <date_str+0x19a>)
    3dfc:	fba2 1203 	umull	r1, r2, r2, r3
    3e00:	0992      	lsrs	r2, r2, #6
    3e02:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3e06:	fb01 f202 	mul.w	r2, r1, r2
    3e0a:	1a9b      	subs	r3, r3, r2
    3e0c:	60bb      	str	r3, [r7, #8]
    3e0e:	68fb      	ldr	r3, [r7, #12]
    3e10:	1c5a      	adds	r2, r3, #1
    3e12:	60fa      	str	r2, [r7, #12]
    3e14:	461a      	mov	r2, r3
    3e16:	683b      	ldr	r3, [r7, #0]
    3e18:	4413      	add	r3, r2
    3e1a:	68ba      	ldr	r2, [r7, #8]
    3e1c:	4951      	ldr	r1, [pc, #324]	; (3f64 <date_str+0x19e>)
    3e1e:	fba1 1202 	umull	r1, r2, r1, r2
    3e22:	0952      	lsrs	r2, r2, #5
    3e24:	b2d2      	uxtb	r2, r2
    3e26:	3230      	adds	r2, #48	; 0x30
    3e28:	b2d2      	uxtb	r2, r2
    3e2a:	701a      	strb	r2, [r3, #0]
    3e2c:	68bb      	ldr	r3, [r7, #8]
    3e2e:	4a4d      	ldr	r2, [pc, #308]	; (3f64 <date_str+0x19e>)
    3e30:	fba2 1203 	umull	r1, r2, r2, r3
    3e34:	0952      	lsrs	r2, r2, #5
    3e36:	2164      	movs	r1, #100	; 0x64
    3e38:	fb01 f202 	mul.w	r2, r1, r2
    3e3c:	1a9b      	subs	r3, r3, r2
    3e3e:	60bb      	str	r3, [r7, #8]
    3e40:	68fb      	ldr	r3, [r7, #12]
    3e42:	1c5a      	adds	r2, r3, #1
    3e44:	60fa      	str	r2, [r7, #12]
    3e46:	461a      	mov	r2, r3
    3e48:	683b      	ldr	r3, [r7, #0]
    3e4a:	4413      	add	r3, r2
    3e4c:	68ba      	ldr	r2, [r7, #8]
    3e4e:	4946      	ldr	r1, [pc, #280]	; (3f68 <date_str+0x1a2>)
    3e50:	fba1 1202 	umull	r1, r2, r1, r2
    3e54:	08d2      	lsrs	r2, r2, #3
    3e56:	b2d2      	uxtb	r2, r2
    3e58:	3230      	adds	r2, #48	; 0x30
    3e5a:	b2d2      	uxtb	r2, r2
    3e5c:	701a      	strb	r2, [r3, #0]
    3e5e:	68fb      	ldr	r3, [r7, #12]
    3e60:	1c5a      	adds	r2, r3, #1
    3e62:	60fa      	str	r2, [r7, #12]
    3e64:	461a      	mov	r2, r3
    3e66:	683b      	ldr	r3, [r7, #0]
    3e68:	1898      	adds	r0, r3, r2
    3e6a:	68b9      	ldr	r1, [r7, #8]
    3e6c:	4b3e      	ldr	r3, [pc, #248]	; (3f68 <date_str+0x1a2>)
    3e6e:	fba3 2301 	umull	r2, r3, r3, r1
    3e72:	08da      	lsrs	r2, r3, #3
    3e74:	4613      	mov	r3, r2
    3e76:	009b      	lsls	r3, r3, #2
    3e78:	4413      	add	r3, r2
    3e7a:	005b      	lsls	r3, r3, #1
    3e7c:	1aca      	subs	r2, r1, r3
    3e7e:	b2d3      	uxtb	r3, r2
    3e80:	3330      	adds	r3, #48	; 0x30
    3e82:	b2db      	uxtb	r3, r3
    3e84:	7003      	strb	r3, [r0, #0]
    3e86:	68fb      	ldr	r3, [r7, #12]
    3e88:	1c5a      	adds	r2, r3, #1
    3e8a:	60fa      	str	r2, [r7, #12]
    3e8c:	461a      	mov	r2, r3
    3e8e:	683b      	ldr	r3, [r7, #0]
    3e90:	4413      	add	r3, r2
    3e92:	222f      	movs	r2, #47	; 0x2f
    3e94:	701a      	strb	r2, [r3, #0]
    3e96:	687b      	ldr	r3, [r7, #4]
    3e98:	885b      	ldrh	r3, [r3, #2]
    3e9a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3e9e:	b2db      	uxtb	r3, r3
    3ea0:	60bb      	str	r3, [r7, #8]
    3ea2:	68fb      	ldr	r3, [r7, #12]
    3ea4:	1c5a      	adds	r2, r3, #1
    3ea6:	60fa      	str	r2, [r7, #12]
    3ea8:	461a      	mov	r2, r3
    3eaa:	683b      	ldr	r3, [r7, #0]
    3eac:	4413      	add	r3, r2
    3eae:	68ba      	ldr	r2, [r7, #8]
    3eb0:	492d      	ldr	r1, [pc, #180]	; (3f68 <date_str+0x1a2>)
    3eb2:	fba1 1202 	umull	r1, r2, r1, r2
    3eb6:	08d2      	lsrs	r2, r2, #3
    3eb8:	b2d2      	uxtb	r2, r2
    3eba:	3230      	adds	r2, #48	; 0x30
    3ebc:	b2d2      	uxtb	r2, r2
    3ebe:	701a      	strb	r2, [r3, #0]
    3ec0:	68fb      	ldr	r3, [r7, #12]
    3ec2:	1c5a      	adds	r2, r3, #1
    3ec4:	60fa      	str	r2, [r7, #12]
    3ec6:	461a      	mov	r2, r3
    3ec8:	683b      	ldr	r3, [r7, #0]
    3eca:	1898      	adds	r0, r3, r2
    3ecc:	68b9      	ldr	r1, [r7, #8]
    3ece:	4b26      	ldr	r3, [pc, #152]	; (3f68 <date_str+0x1a2>)
    3ed0:	fba3 2301 	umull	r2, r3, r3, r1
    3ed4:	08da      	lsrs	r2, r3, #3
    3ed6:	4613      	mov	r3, r2
    3ed8:	009b      	lsls	r3, r3, #2
    3eda:	4413      	add	r3, r2
    3edc:	005b      	lsls	r3, r3, #1
    3ede:	1aca      	subs	r2, r1, r3
    3ee0:	b2d3      	uxtb	r3, r2
    3ee2:	3330      	adds	r3, #48	; 0x30
    3ee4:	b2db      	uxtb	r3, r3
    3ee6:	7003      	strb	r3, [r0, #0]
    3ee8:	68fb      	ldr	r3, [r7, #12]
    3eea:	1c5a      	adds	r2, r3, #1
    3eec:	60fa      	str	r2, [r7, #12]
    3eee:	461a      	mov	r2, r3
    3ef0:	683b      	ldr	r3, [r7, #0]
    3ef2:	4413      	add	r3, r2
    3ef4:	222f      	movs	r2, #47	; 0x2f
    3ef6:	701a      	strb	r2, [r3, #0]
    3ef8:	687b      	ldr	r3, [r7, #4]
    3efa:	789b      	ldrb	r3, [r3, #2]
    3efc:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3f00:	b2db      	uxtb	r3, r3
    3f02:	60bb      	str	r3, [r7, #8]
    3f04:	68fb      	ldr	r3, [r7, #12]
    3f06:	1c5a      	adds	r2, r3, #1
    3f08:	60fa      	str	r2, [r7, #12]
    3f0a:	461a      	mov	r2, r3
    3f0c:	683b      	ldr	r3, [r7, #0]
    3f0e:	4413      	add	r3, r2
    3f10:	68ba      	ldr	r2, [r7, #8]
    3f12:	4915      	ldr	r1, [pc, #84]	; (3f68 <date_str+0x1a2>)
    3f14:	fba1 1202 	umull	r1, r2, r1, r2
    3f18:	08d2      	lsrs	r2, r2, #3
    3f1a:	b2d2      	uxtb	r2, r2
    3f1c:	3230      	adds	r2, #48	; 0x30
    3f1e:	b2d2      	uxtb	r2, r2
    3f20:	701a      	strb	r2, [r3, #0]
    3f22:	68fb      	ldr	r3, [r7, #12]
    3f24:	1c5a      	adds	r2, r3, #1
    3f26:	60fa      	str	r2, [r7, #12]
    3f28:	461a      	mov	r2, r3
    3f2a:	683b      	ldr	r3, [r7, #0]
    3f2c:	1898      	adds	r0, r3, r2
    3f2e:	68b9      	ldr	r1, [r7, #8]
    3f30:	4b0d      	ldr	r3, [pc, #52]	; (3f68 <date_str+0x1a2>)
    3f32:	fba3 2301 	umull	r2, r3, r3, r1
    3f36:	08da      	lsrs	r2, r3, #3
    3f38:	4613      	mov	r3, r2
    3f3a:	009b      	lsls	r3, r3, #2
    3f3c:	4413      	add	r3, r2
    3f3e:	005b      	lsls	r3, r3, #1
    3f40:	1aca      	subs	r2, r1, r3
    3f42:	b2d3      	uxtb	r3, r2
    3f44:	3330      	adds	r3, #48	; 0x30
    3f46:	b2db      	uxtb	r3, r3
    3f48:	7003      	strb	r3, [r0, #0]
    3f4a:	68fb      	ldr	r3, [r7, #12]
    3f4c:	683a      	ldr	r2, [r7, #0]
    3f4e:	4413      	add	r3, r2
    3f50:	2200      	movs	r2, #0
    3f52:	701a      	strb	r2, [r3, #0]
    3f54:	bf00      	nop
    3f56:	3714      	adds	r7, #20
    3f58:	46bd      	mov	sp, r7
    3f5a:	bc80      	pop	{r7}
    3f5c:	4770      	bx	lr
    3f5e:	bf00      	nop
    3f60:	10624dd3 	.word	0x10624dd3
    3f64:	51eb851f 	.word	0x51eb851f
    3f68:	cccccccd 	.word	0xcccccccd

00003f6c <time_str>:
    3f6c:	b480      	push	{r7}
    3f6e:	b085      	sub	sp, #20
    3f70:	af00      	add	r7, sp, #0
    3f72:	6078      	str	r0, [r7, #4]
    3f74:	6039      	str	r1, [r7, #0]
    3f76:	2300      	movs	r3, #0
    3f78:	60fb      	str	r3, [r7, #12]
    3f7a:	687b      	ldr	r3, [r7, #4]
    3f7c:	681b      	ldr	r3, [r3, #0]
    3f7e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3f82:	b2db      	uxtb	r3, r3
    3f84:	60bb      	str	r3, [r7, #8]
    3f86:	68fb      	ldr	r3, [r7, #12]
    3f88:	1c5a      	adds	r2, r3, #1
    3f8a:	60fa      	str	r2, [r7, #12]
    3f8c:	461a      	mov	r2, r3
    3f8e:	683b      	ldr	r3, [r7, #0]
    3f90:	4413      	add	r3, r2
    3f92:	68ba      	ldr	r2, [r7, #8]
    3f94:	4943      	ldr	r1, [pc, #268]	; (40a4 <time_str+0x138>)
    3f96:	fba1 1202 	umull	r1, r2, r1, r2
    3f9a:	08d2      	lsrs	r2, r2, #3
    3f9c:	b2d2      	uxtb	r2, r2
    3f9e:	3230      	adds	r2, #48	; 0x30
    3fa0:	b2d2      	uxtb	r2, r2
    3fa2:	701a      	strb	r2, [r3, #0]
    3fa4:	68fb      	ldr	r3, [r7, #12]
    3fa6:	1c5a      	adds	r2, r3, #1
    3fa8:	60fa      	str	r2, [r7, #12]
    3faa:	461a      	mov	r2, r3
    3fac:	683b      	ldr	r3, [r7, #0]
    3fae:	1898      	adds	r0, r3, r2
    3fb0:	68b9      	ldr	r1, [r7, #8]
    3fb2:	4b3c      	ldr	r3, [pc, #240]	; (40a4 <time_str+0x138>)
    3fb4:	fba3 2301 	umull	r2, r3, r3, r1
    3fb8:	08da      	lsrs	r2, r3, #3
    3fba:	4613      	mov	r3, r2
    3fbc:	009b      	lsls	r3, r3, #2
    3fbe:	4413      	add	r3, r2
    3fc0:	005b      	lsls	r3, r3, #1
    3fc2:	1aca      	subs	r2, r1, r3
    3fc4:	b2d3      	uxtb	r3, r2
    3fc6:	3330      	adds	r3, #48	; 0x30
    3fc8:	b2db      	uxtb	r3, r3
    3fca:	7003      	strb	r3, [r0, #0]
    3fcc:	68fb      	ldr	r3, [r7, #12]
    3fce:	1c5a      	adds	r2, r3, #1
    3fd0:	60fa      	str	r2, [r7, #12]
    3fd2:	461a      	mov	r2, r3
    3fd4:	683b      	ldr	r3, [r7, #0]
    3fd6:	4413      	add	r3, r2
    3fd8:	223a      	movs	r2, #58	; 0x3a
    3fda:	701a      	strb	r2, [r3, #0]
    3fdc:	687b      	ldr	r3, [r7, #4]
    3fde:	881b      	ldrh	r3, [r3, #0]
    3fe0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3fe4:	b2db      	uxtb	r3, r3
    3fe6:	60bb      	str	r3, [r7, #8]
    3fe8:	68fb      	ldr	r3, [r7, #12]
    3fea:	1c5a      	adds	r2, r3, #1
    3fec:	60fa      	str	r2, [r7, #12]
    3fee:	461a      	mov	r2, r3
    3ff0:	683b      	ldr	r3, [r7, #0]
    3ff2:	4413      	add	r3, r2
    3ff4:	68ba      	ldr	r2, [r7, #8]
    3ff6:	492b      	ldr	r1, [pc, #172]	; (40a4 <time_str+0x138>)
    3ff8:	fba1 1202 	umull	r1, r2, r1, r2
    3ffc:	08d2      	lsrs	r2, r2, #3
    3ffe:	b2d2      	uxtb	r2, r2
    4000:	3230      	adds	r2, #48	; 0x30
    4002:	b2d2      	uxtb	r2, r2
    4004:	701a      	strb	r2, [r3, #0]
    4006:	68fb      	ldr	r3, [r7, #12]
    4008:	1c5a      	adds	r2, r3, #1
    400a:	60fa      	str	r2, [r7, #12]
    400c:	461a      	mov	r2, r3
    400e:	683b      	ldr	r3, [r7, #0]
    4010:	1898      	adds	r0, r3, r2
    4012:	68b9      	ldr	r1, [r7, #8]
    4014:	4b23      	ldr	r3, [pc, #140]	; (40a4 <time_str+0x138>)
    4016:	fba3 2301 	umull	r2, r3, r3, r1
    401a:	08da      	lsrs	r2, r3, #3
    401c:	4613      	mov	r3, r2
    401e:	009b      	lsls	r3, r3, #2
    4020:	4413      	add	r3, r2
    4022:	005b      	lsls	r3, r3, #1
    4024:	1aca      	subs	r2, r1, r3
    4026:	b2d3      	uxtb	r3, r2
    4028:	3330      	adds	r3, #48	; 0x30
    402a:	b2db      	uxtb	r3, r3
    402c:	7003      	strb	r3, [r0, #0]
    402e:	68fb      	ldr	r3, [r7, #12]
    4030:	1c5a      	adds	r2, r3, #1
    4032:	60fa      	str	r2, [r7, #12]
    4034:	461a      	mov	r2, r3
    4036:	683b      	ldr	r3, [r7, #0]
    4038:	4413      	add	r3, r2
    403a:	223a      	movs	r2, #58	; 0x3a
    403c:	701a      	strb	r2, [r3, #0]
    403e:	687b      	ldr	r3, [r7, #4]
    4040:	781b      	ldrb	r3, [r3, #0]
    4042:	f3c3 0305 	ubfx	r3, r3, #0, #6
    4046:	b2db      	uxtb	r3, r3
    4048:	60bb      	str	r3, [r7, #8]
    404a:	68fb      	ldr	r3, [r7, #12]
    404c:	1c5a      	adds	r2, r3, #1
    404e:	60fa      	str	r2, [r7, #12]
    4050:	461a      	mov	r2, r3
    4052:	683b      	ldr	r3, [r7, #0]
    4054:	4413      	add	r3, r2
    4056:	68ba      	ldr	r2, [r7, #8]
    4058:	4912      	ldr	r1, [pc, #72]	; (40a4 <time_str+0x138>)
    405a:	fba1 1202 	umull	r1, r2, r1, r2
    405e:	08d2      	lsrs	r2, r2, #3
    4060:	b2d2      	uxtb	r2, r2
    4062:	3230      	adds	r2, #48	; 0x30
    4064:	b2d2      	uxtb	r2, r2
    4066:	701a      	strb	r2, [r3, #0]
    4068:	68fb      	ldr	r3, [r7, #12]
    406a:	1c5a      	adds	r2, r3, #1
    406c:	60fa      	str	r2, [r7, #12]
    406e:	461a      	mov	r2, r3
    4070:	683b      	ldr	r3, [r7, #0]
    4072:	1898      	adds	r0, r3, r2
    4074:	68b9      	ldr	r1, [r7, #8]
    4076:	4b0b      	ldr	r3, [pc, #44]	; (40a4 <time_str+0x138>)
    4078:	fba3 2301 	umull	r2, r3, r3, r1
    407c:	08da      	lsrs	r2, r3, #3
    407e:	4613      	mov	r3, r2
    4080:	009b      	lsls	r3, r3, #2
    4082:	4413      	add	r3, r2
    4084:	005b      	lsls	r3, r3, #1
    4086:	1aca      	subs	r2, r1, r3
    4088:	b2d3      	uxtb	r3, r2
    408a:	3330      	adds	r3, #48	; 0x30
    408c:	b2db      	uxtb	r3, r3
    408e:	7003      	strb	r3, [r0, #0]
    4090:	68fb      	ldr	r3, [r7, #12]
    4092:	683a      	ldr	r2, [r7, #0]
    4094:	4413      	add	r3, r2
    4096:	2200      	movs	r2, #0
    4098:	701a      	strb	r2, [r3, #0]
    409a:	bf00      	nop
    409c:	3714      	adds	r7, #20
    409e:	46bd      	mov	sp, r7
    40a0:	bc80      	pop	{r7}
    40a2:	4770      	bx	lr
    40a4:	cccccccd 	.word	0xcccccccd

000040a8 <get_fattime>:
    40a8:	b580      	push	{r7, lr}
    40aa:	b084      	sub	sp, #16
    40ac:	af00      	add	r7, sp, #0
    40ae:	463b      	mov	r3, r7
    40b0:	4618      	mov	r0, r3
    40b2:	f7ff fa69 	bl	3588 <get_date_time>
    40b6:	783b      	ldrb	r3, [r7, #0]
    40b8:	f3c3 0305 	ubfx	r3, r3, #0, #6
    40bc:	b2db      	uxtb	r3, r3
    40be:	0fda      	lsrs	r2, r3, #31
    40c0:	4413      	add	r3, r2
    40c2:	105b      	asrs	r3, r3, #1
    40c4:	b2db      	uxtb	r3, r3
    40c6:	f003 031f 	and.w	r3, r3, #31
    40ca:	b2da      	uxtb	r2, r3
    40cc:	7b3b      	ldrb	r3, [r7, #12]
    40ce:	f362 0304 	bfi	r3, r2, #0, #5
    40d2:	733b      	strb	r3, [r7, #12]
    40d4:	883b      	ldrh	r3, [r7, #0]
    40d6:	f3c3 1385 	ubfx	r3, r3, #6, #6
    40da:	b2da      	uxtb	r2, r3
    40dc:	89bb      	ldrh	r3, [r7, #12]
    40de:	f362 134a 	bfi	r3, r2, #5, #6
    40e2:	81bb      	strh	r3, [r7, #12]
    40e4:	683b      	ldr	r3, [r7, #0]
    40e6:	f3c3 3304 	ubfx	r3, r3, #12, #5
    40ea:	b2da      	uxtb	r2, r3
    40ec:	7b7b      	ldrb	r3, [r7, #13]
    40ee:	f362 03c7 	bfi	r3, r2, #3, #5
    40f2:	737b      	strb	r3, [r7, #13]
    40f4:	78bb      	ldrb	r3, [r7, #2]
    40f6:	f3c3 0344 	ubfx	r3, r3, #1, #5
    40fa:	b2da      	uxtb	r2, r3
    40fc:	7bbb      	ldrb	r3, [r7, #14]
    40fe:	f362 0304 	bfi	r3, r2, #0, #5
    4102:	73bb      	strb	r3, [r7, #14]
    4104:	887b      	ldrh	r3, [r7, #2]
    4106:	f3c3 1383 	ubfx	r3, r3, #6, #4
    410a:	b2da      	uxtb	r2, r3
    410c:	89fb      	ldrh	r3, [r7, #14]
    410e:	f362 1348 	bfi	r3, r2, #5, #4
    4112:	81fb      	strh	r3, [r7, #14]
    4114:	893b      	ldrh	r3, [r7, #8]
    4116:	b2db      	uxtb	r3, r3
    4118:	3344      	adds	r3, #68	; 0x44
    411a:	b2db      	uxtb	r3, r3
    411c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    4120:	b2da      	uxtb	r2, r3
    4122:	7bfb      	ldrb	r3, [r7, #15]
    4124:	f362 0347 	bfi	r3, r2, #1, #7
    4128:	73fb      	strb	r3, [r7, #15]
    412a:	68fb      	ldr	r3, [r7, #12]
    412c:	4618      	mov	r0, r3
    412e:	3710      	adds	r7, #16
    4130:	46bd      	mov	sp, r7
    4132:	bd80      	pop	{r7, pc}

00004134 <RTC_handler>:
    4134:	b480      	push	{r7}
    4136:	b083      	sub	sp, #12
    4138:	af00      	add	r7, sp, #0
    413a:	4b0a      	ldr	r3, [pc, #40]	; (4164 <RTC_handler+0x30>)
    413c:	685b      	ldr	r3, [r3, #4]
    413e:	f003 0301 	and.w	r3, r3, #1
    4142:	2b00      	cmp	r3, #0
    4144:	d001      	beq.n	414a <RTC_handler+0x16>
    4146:	4b07      	ldr	r3, [pc, #28]	; (4164 <RTC_handler+0x30>)
    4148:	685b      	ldr	r3, [r3, #4]
    414a:	4b06      	ldr	r3, [pc, #24]	; (4164 <RTC_handler+0x30>)
    414c:	685b      	ldr	r3, [r3, #4]
    414e:	f003 0302 	and.w	r3, r3, #2
    4152:	2b00      	cmp	r3, #0
    4154:	d001      	beq.n	415a <RTC_handler+0x26>
    4156:	4b03      	ldr	r3, [pc, #12]	; (4164 <RTC_handler+0x30>)
    4158:	685b      	ldr	r3, [r3, #4]
    415a:	bf00      	nop
    415c:	370c      	adds	r7, #12
    415e:	46bd      	mov	sp, r7
    4160:	bc80      	pop	{r7}
    4162:	4770      	bx	lr
    4164:	40002800 	.word	0x40002800

00004168 <sound_init>:
    4168:	b580      	push	{r7, lr}
    416a:	af00      	add	r7, sp, #0
    416c:	4a0d      	ldr	r2, [pc, #52]	; (41a4 <sound_init+0x3c>)
    416e:	4b0d      	ldr	r3, [pc, #52]	; (41a4 <sound_init+0x3c>)
    4170:	69db      	ldr	r3, [r3, #28]
    4172:	f043 0301 	orr.w	r3, r3, #1
    4176:	61d3      	str	r3, [r2, #28]
    4178:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    417c:	2278      	movs	r2, #120	; 0x78
    417e:	61da      	str	r2, [r3, #28]
    4180:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4184:	f44f 7280 	mov.w	r2, #256	; 0x100
    4188:	621a      	str	r2, [r3, #32]
    418a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    418e:	2209      	movs	r2, #9
    4190:	629a      	str	r2, [r3, #40]	; 0x28
    4192:	2100      	movs	r1, #0
    4194:	201c      	movs	r0, #28
    4196:	f7ff f977 	bl	3488 <set_int_priority>
    419a:	201c      	movs	r0, #28
    419c:	f7ff f8ba 	bl	3314 <enable_interrupt>
    41a0:	bf00      	nop
    41a2:	bd80      	pop	{r7, pc}
    41a4:	40021000 	.word	0x40021000

000041a8 <tone>:
    41a8:	b580      	push	{r7, lr}
    41aa:	b082      	sub	sp, #8
    41ac:	af00      	add	r7, sp, #0
    41ae:	4603      	mov	r3, r0
    41b0:	460a      	mov	r2, r1
    41b2:	80fb      	strh	r3, [r7, #6]
    41b4:	4613      	mov	r3, r2
    41b6:	80bb      	strh	r3, [r7, #4]
    41b8:	4a1a      	ldr	r2, [pc, #104]	; (4224 <tone+0x7c>)
    41ba:	4b1a      	ldr	r3, [pc, #104]	; (4224 <tone+0x7c>)
    41bc:	685b      	ldr	r3, [r3, #4]
    41be:	f403 7340 	and.w	r3, r3, #768	; 0x300
    41c2:	6053      	str	r3, [r2, #4]
    41c4:	4a17      	ldr	r2, [pc, #92]	; (4224 <tone+0x7c>)
    41c6:	4b17      	ldr	r3, [pc, #92]	; (4224 <tone+0x7c>)
    41c8:	685b      	ldr	r3, [r3, #4]
    41ca:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    41ce:	6053      	str	r3, [r2, #4]
    41d0:	220a      	movs	r2, #10
    41d2:	210a      	movs	r1, #10
    41d4:	4814      	ldr	r0, [pc, #80]	; (4228 <tone+0x80>)
    41d6:	f7fd fed9 	bl	1f8c <config_pin>
    41da:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    41de:	88fb      	ldrh	r3, [r7, #6]
    41e0:	4912      	ldr	r1, [pc, #72]	; (422c <tone+0x84>)
    41e2:	fbb1 f3f3 	udiv	r3, r1, r3
    41e6:	62d3      	str	r3, [r2, #44]	; 0x2c
    41e8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    41ec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    41f0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    41f2:	085b      	lsrs	r3, r3, #1
    41f4:	63d3      	str	r3, [r2, #60]	; 0x3c
    41f6:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    41fa:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    41fe:	68db      	ldr	r3, [r3, #12]
    4200:	f023 0308 	bic.w	r3, r3, #8
    4204:	60d3      	str	r3, [r2, #12]
    4206:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    420a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    420e:	681b      	ldr	r3, [r3, #0]
    4210:	f043 0301 	orr.w	r3, r3, #1
    4214:	6013      	str	r3, [r2, #0]
    4216:	4a06      	ldr	r2, [pc, #24]	; (4230 <tone+0x88>)
    4218:	88bb      	ldrh	r3, [r7, #4]
    421a:	8013      	strh	r3, [r2, #0]
    421c:	bf00      	nop
    421e:	3708      	adds	r7, #8
    4220:	46bd      	mov	sp, r7
    4222:	bd80      	pop	{r7, pc}
    4224:	40010000 	.word	0x40010000
    4228:	40010c00 	.word	0x40010c00
    422c:	006d3d32 	.word	0x006d3d32
    4230:	20004e10 	.word	0x20004e10

00004234 <beep>:
    4234:	b580      	push	{r7, lr}
    4236:	b082      	sub	sp, #8
    4238:	af00      	add	r7, sp, #0
    423a:	4603      	mov	r3, r0
    423c:	80fb      	strh	r3, [r7, #6]
    423e:	88fb      	ldrh	r3, [r7, #6]
    4240:	4619      	mov	r1, r3
    4242:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    4246:	f7ff ffaf 	bl	41a8 <tone>
    424a:	bf00      	nop
    424c:	3708      	adds	r7, #8
    424e:	46bd      	mov	sp, r7
    4250:	bd80      	pop	{r7, pc}

00004252 <load_sound_buffer>:
    4252:	b480      	push	{r7}
    4254:	b085      	sub	sp, #20
    4256:	af00      	add	r7, sp, #0
    4258:	6078      	str	r0, [r7, #4]
    425a:	2300      	movs	r3, #0
    425c:	60fb      	str	r3, [r7, #12]
    425e:	e00b      	b.n	4278 <load_sound_buffer+0x26>
    4260:	687b      	ldr	r3, [r7, #4]
    4262:	1c5a      	adds	r2, r3, #1
    4264:	607a      	str	r2, [r7, #4]
    4266:	7819      	ldrb	r1, [r3, #0]
    4268:	4a07      	ldr	r2, [pc, #28]	; (4288 <load_sound_buffer+0x36>)
    426a:	68fb      	ldr	r3, [r7, #12]
    426c:	4413      	add	r3, r2
    426e:	460a      	mov	r2, r1
    4270:	701a      	strb	r2, [r3, #0]
    4272:	68fb      	ldr	r3, [r7, #12]
    4274:	3301      	adds	r3, #1
    4276:	60fb      	str	r3, [r7, #12]
    4278:	68fb      	ldr	r3, [r7, #12]
    427a:	2b0f      	cmp	r3, #15
    427c:	ddf0      	ble.n	4260 <load_sound_buffer+0xe>
    427e:	bf00      	nop
    4280:	3714      	adds	r7, #20
    4282:	46bd      	mov	sp, r7
    4284:	bc80      	pop	{r7}
    4286:	4770      	bx	lr
    4288:	2000065c 	.word	0x2000065c

0000428c <sound_sampler>:
    428c:	b580      	push	{r7, lr}
    428e:	b082      	sub	sp, #8
    4290:	af00      	add	r7, sp, #0
    4292:	4603      	mov	r3, r0
    4294:	80fb      	strh	r3, [r7, #6]
    4296:	4b1b      	ldr	r3, [pc, #108]	; (4304 <sound_sampler+0x78>)
    4298:	2200      	movs	r2, #0
    429a:	701a      	strb	r2, [r3, #0]
    429c:	4a1a      	ldr	r2, [pc, #104]	; (4308 <sound_sampler+0x7c>)
    429e:	4b1a      	ldr	r3, [pc, #104]	; (4308 <sound_sampler+0x7c>)
    42a0:	685b      	ldr	r3, [r3, #4]
    42a2:	f403 7340 	and.w	r3, r3, #768	; 0x300
    42a6:	6053      	str	r3, [r2, #4]
    42a8:	4a18      	ldr	r2, [pc, #96]	; (430c <sound_sampler+0x80>)
    42aa:	4b18      	ldr	r3, [pc, #96]	; (430c <sound_sampler+0x80>)
    42ac:	68db      	ldr	r3, [r3, #12]
    42ae:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    42b2:	60d3      	str	r3, [r2, #12]
    42b4:	2202      	movs	r2, #2
    42b6:	210a      	movs	r1, #10
    42b8:	4814      	ldr	r0, [pc, #80]	; (430c <sound_sampler+0x80>)
    42ba:	f7fd fe67 	bl	1f8c <config_pin>
    42be:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    42c2:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42c6:	68db      	ldr	r3, [r3, #12]
    42c8:	f043 0301 	orr.w	r3, r3, #1
    42cc:	60d3      	str	r3, [r2, #12]
    42ce:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42d2:	f240 62fd 	movw	r2, #1789	; 0x6fd
    42d6:	62da      	str	r2, [r3, #44]	; 0x2c
    42d8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    42dc:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42e0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    42e2:	6393      	str	r3, [r2, #56]	; 0x38
    42e4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    42e8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42ec:	681b      	ldr	r3, [r3, #0]
    42ee:	f043 0301 	orr.w	r3, r3, #1
    42f2:	6013      	str	r3, [r2, #0]
    42f4:	4a06      	ldr	r2, [pc, #24]	; (4310 <sound_sampler+0x84>)
    42f6:	88fb      	ldrh	r3, [r7, #6]
    42f8:	8013      	strh	r3, [r2, #0]
    42fa:	bf00      	nop
    42fc:	3708      	adds	r7, #8
    42fe:	46bd      	mov	sp, r7
    4300:	bd80      	pop	{r7, pc}
    4302:	bf00      	nop
    4304:	2000066c 	.word	0x2000066c
    4308:	40010000 	.word	0x40010000
    430c:	40010c00 	.word	0x40010c00
    4310:	20004e10 	.word	0x20004e10

00004314 <sound_stop>:
    4314:	b480      	push	{r7}
    4316:	af00      	add	r7, sp, #0
    4318:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    431c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4320:	681b      	ldr	r3, [r3, #0]
    4322:	f023 0301 	bic.w	r3, r3, #1
    4326:	6013      	str	r3, [r2, #0]
    4328:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    432c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4330:	68db      	ldr	r3, [r3, #12]
    4332:	f023 0301 	bic.w	r3, r3, #1
    4336:	60d3      	str	r3, [r2, #12]
    4338:	bf00      	nop
    433a:	46bd      	mov	sp, r7
    433c:	bc80      	pop	{r7}
    433e:	4770      	bx	lr

00004340 <key_tone>:
    4340:	b580      	push	{r7, lr}
    4342:	b084      	sub	sp, #16
    4344:	af00      	add	r7, sp, #0
    4346:	60f8      	str	r0, [r7, #12]
    4348:	60b9      	str	r1, [r7, #8]
    434a:	607a      	str	r2, [r7, #4]
    434c:	4a0b      	ldr	r2, [pc, #44]	; (437c <key_tone+0x3c>)
    434e:	68fb      	ldr	r3, [r7, #12]
    4350:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
    4354:	68ba      	ldr	r2, [r7, #8]
    4356:	b292      	uxth	r2, r2
    4358:	4611      	mov	r1, r2
    435a:	4618      	mov	r0, r3
    435c:	f7ff ff24 	bl	41a8 <tone>
    4360:	687b      	ldr	r3, [r7, #4]
    4362:	2b00      	cmp	r3, #0
    4364:	d005      	beq.n	4372 <key_tone+0x32>
    4366:	bf00      	nop
    4368:	4b05      	ldr	r3, [pc, #20]	; (4380 <key_tone+0x40>)
    436a:	881b      	ldrh	r3, [r3, #0]
    436c:	b29b      	uxth	r3, r3
    436e:	2b00      	cmp	r3, #0
    4370:	d1fa      	bne.n	4368 <key_tone+0x28>
    4372:	bf00      	nop
    4374:	3710      	adds	r7, #16
    4376:	46bd      	mov	sp, r7
    4378:	bd80      	pop	{r7, pc}
    437a:	bf00      	nop
    437c:	00005a60 	.word	0x00005a60
    4380:	20004e10 	.word	0x20004e10

00004384 <noise>:
    4384:	b580      	push	{r7, lr}
    4386:	b084      	sub	sp, #16
    4388:	af00      	add	r7, sp, #0
    438a:	6078      	str	r0, [r7, #4]
    438c:	4b0f      	ldr	r3, [pc, #60]	; (43cc <noise+0x48>)
    438e:	681b      	ldr	r3, [r3, #0]
    4390:	4618      	mov	r0, r3
    4392:	f7fc f875 	bl	480 <srand>
    4396:	2300      	movs	r3, #0
    4398:	60fb      	str	r3, [r7, #12]
    439a:	e00b      	b.n	43b4 <noise+0x30>
    439c:	f7fc f87e 	bl	49c <rand>
    43a0:	4603      	mov	r3, r0
    43a2:	b2d9      	uxtb	r1, r3
    43a4:	4a0a      	ldr	r2, [pc, #40]	; (43d0 <noise+0x4c>)
    43a6:	68fb      	ldr	r3, [r7, #12]
    43a8:	4413      	add	r3, r2
    43aa:	460a      	mov	r2, r1
    43ac:	701a      	strb	r2, [r3, #0]
    43ae:	68fb      	ldr	r3, [r7, #12]
    43b0:	3301      	adds	r3, #1
    43b2:	60fb      	str	r3, [r7, #12]
    43b4:	68fb      	ldr	r3, [r7, #12]
    43b6:	2b0f      	cmp	r3, #15
    43b8:	ddf0      	ble.n	439c <noise+0x18>
    43ba:	687b      	ldr	r3, [r7, #4]
    43bc:	b29b      	uxth	r3, r3
    43be:	4618      	mov	r0, r3
    43c0:	f7ff ff64 	bl	428c <sound_sampler>
    43c4:	bf00      	nop
    43c6:	3710      	adds	r7, #16
    43c8:	46bd      	mov	sp, r7
    43ca:	bd80      	pop	{r7, pc}
    43cc:	20004e0c 	.word	0x20004e0c
    43d0:	2000065c 	.word	0x2000065c

000043d4 <sound_handler>:
    43d4:	4668      	mov	r0, sp
    43d6:	f020 0107 	bic.w	r1, r0, #7
    43da:	468d      	mov	sp, r1
    43dc:	b481      	push	{r0, r7}
    43de:	b082      	sub	sp, #8
    43e0:	af00      	add	r7, sp, #0
    43e2:	4b1e      	ldr	r3, [pc, #120]	; (445c <sound_handler+0x88>)
    43e4:	781b      	ldrb	r3, [r3, #0]
    43e6:	08db      	lsrs	r3, r3, #3
    43e8:	71fb      	strb	r3, [r7, #7]
    43ea:	4b1c      	ldr	r3, [pc, #112]	; (445c <sound_handler+0x88>)
    43ec:	781b      	ldrb	r3, [r3, #0]
    43ee:	43db      	mvns	r3, r3
    43f0:	f003 0307 	and.w	r3, r3, #7
    43f4:	2201      	movs	r2, #1
    43f6:	fa02 f303 	lsl.w	r3, r2, r3
    43fa:	71bb      	strb	r3, [r7, #6]
    43fc:	79fb      	ldrb	r3, [r7, #7]
    43fe:	4a18      	ldr	r2, [pc, #96]	; (4460 <sound_handler+0x8c>)
    4400:	5cd2      	ldrb	r2, [r2, r3]
    4402:	79bb      	ldrb	r3, [r7, #6]
    4404:	4013      	ands	r3, r2
    4406:	b2db      	uxtb	r3, r3
    4408:	2b00      	cmp	r3, #0
    440a:	d006      	beq.n	441a <sound_handler+0x46>
    440c:	4a15      	ldr	r2, [pc, #84]	; (4464 <sound_handler+0x90>)
    440e:	4b15      	ldr	r3, [pc, #84]	; (4464 <sound_handler+0x90>)
    4410:	68db      	ldr	r3, [r3, #12]
    4412:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    4416:	60d3      	str	r3, [r2, #12]
    4418:	e005      	b.n	4426 <sound_handler+0x52>
    441a:	4a12      	ldr	r2, [pc, #72]	; (4464 <sound_handler+0x90>)
    441c:	4b11      	ldr	r3, [pc, #68]	; (4464 <sound_handler+0x90>)
    441e:	68db      	ldr	r3, [r3, #12]
    4420:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    4424:	60d3      	str	r3, [r2, #12]
    4426:	4b0d      	ldr	r3, [pc, #52]	; (445c <sound_handler+0x88>)
    4428:	781b      	ldrb	r3, [r3, #0]
    442a:	3301      	adds	r3, #1
    442c:	b2da      	uxtb	r2, r3
    442e:	4b0b      	ldr	r3, [pc, #44]	; (445c <sound_handler+0x88>)
    4430:	701a      	strb	r2, [r3, #0]
    4432:	4b0a      	ldr	r3, [pc, #40]	; (445c <sound_handler+0x88>)
    4434:	781b      	ldrb	r3, [r3, #0]
    4436:	f003 030f 	and.w	r3, r3, #15
    443a:	b2da      	uxtb	r2, r3
    443c:	4b07      	ldr	r3, [pc, #28]	; (445c <sound_handler+0x88>)
    443e:	701a      	strb	r2, [r3, #0]
    4440:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4444:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4448:	691b      	ldr	r3, [r3, #16]
    444a:	f023 0301 	bic.w	r3, r3, #1
    444e:	6113      	str	r3, [r2, #16]
    4450:	bf00      	nop
    4452:	3708      	adds	r7, #8
    4454:	46bd      	mov	sp, r7
    4456:	bc81      	pop	{r0, r7}
    4458:	4685      	mov	sp, r0
    445a:	4770      	bx	lr
    445c:	2000066c 	.word	0x2000066c
    4460:	2000065c 	.word	0x2000065c
    4464:	40010c00 	.word	0x40010c00

00004468 <spi_baudrate>:
    4468:	b480      	push	{r7}
    446a:	b083      	sub	sp, #12
    446c:	af00      	add	r7, sp, #0
    446e:	6078      	str	r0, [r7, #4]
    4470:	6039      	str	r1, [r7, #0]
    4472:	687b      	ldr	r3, [r7, #4]
    4474:	681b      	ldr	r3, [r3, #0]
    4476:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    447a:	687b      	ldr	r3, [r7, #4]
    447c:	601a      	str	r2, [r3, #0]
    447e:	687b      	ldr	r3, [r7, #4]
    4480:	681a      	ldr	r2, [r3, #0]
    4482:	683b      	ldr	r3, [r7, #0]
    4484:	00db      	lsls	r3, r3, #3
    4486:	431a      	orrs	r2, r3
    4488:	687b      	ldr	r3, [r7, #4]
    448a:	601a      	str	r2, [r3, #0]
    448c:	bf00      	nop
    448e:	370c      	adds	r7, #12
    4490:	46bd      	mov	sp, r7
    4492:	bc80      	pop	{r7}
    4494:	4770      	bx	lr

00004496 <spi_config_port>:
    4496:	b580      	push	{r7, lr}
    4498:	b082      	sub	sp, #8
    449a:	af00      	add	r7, sp, #0
    449c:	6078      	str	r0, [r7, #4]
    449e:	6039      	str	r1, [r7, #0]
    44a0:	4a33      	ldr	r2, [pc, #204]	; (4570 <spi_config_port+0xda>)
    44a2:	4b33      	ldr	r3, [pc, #204]	; (4570 <spi_config_port+0xda>)
    44a4:	699b      	ldr	r3, [r3, #24]
    44a6:	f043 0301 	orr.w	r3, r3, #1
    44aa:	6193      	str	r3, [r2, #24]
    44ac:	687b      	ldr	r3, [r7, #4]
    44ae:	4a31      	ldr	r2, [pc, #196]	; (4574 <spi_config_port+0xde>)
    44b0:	4293      	cmp	r3, r2
    44b2:	d13e      	bne.n	4532 <spi_config_port+0x9c>
    44b4:	683b      	ldr	r3, [r7, #0]
    44b6:	2b00      	cmp	r3, #0
    44b8:	d11a      	bne.n	44f0 <spi_config_port+0x5a>
    44ba:	4a2d      	ldr	r2, [pc, #180]	; (4570 <spi_config_port+0xda>)
    44bc:	4b2c      	ldr	r3, [pc, #176]	; (4570 <spi_config_port+0xda>)
    44be:	699b      	ldr	r3, [r3, #24]
    44c0:	f043 0304 	orr.w	r3, r3, #4
    44c4:	6193      	str	r3, [r2, #24]
    44c6:	2203      	movs	r2, #3
    44c8:	2104      	movs	r1, #4
    44ca:	482b      	ldr	r0, [pc, #172]	; (4578 <spi_config_port+0xe2>)
    44cc:	f7fd fd5e 	bl	1f8c <config_pin>
    44d0:	220b      	movs	r2, #11
    44d2:	2105      	movs	r1, #5
    44d4:	4828      	ldr	r0, [pc, #160]	; (4578 <spi_config_port+0xe2>)
    44d6:	f7fd fd59 	bl	1f8c <config_pin>
    44da:	2204      	movs	r2, #4
    44dc:	2106      	movs	r1, #6
    44de:	4826      	ldr	r0, [pc, #152]	; (4578 <spi_config_port+0xe2>)
    44e0:	f7fd fd54 	bl	1f8c <config_pin>
    44e4:	220b      	movs	r2, #11
    44e6:	2107      	movs	r1, #7
    44e8:	4823      	ldr	r0, [pc, #140]	; (4578 <spi_config_port+0xe2>)
    44ea:	f7fd fd4f 	bl	1f8c <config_pin>
    44ee:	e03a      	b.n	4566 <spi_config_port+0xd0>
    44f0:	4a1f      	ldr	r2, [pc, #124]	; (4570 <spi_config_port+0xda>)
    44f2:	4b1f      	ldr	r3, [pc, #124]	; (4570 <spi_config_port+0xda>)
    44f4:	699b      	ldr	r3, [r3, #24]
    44f6:	f043 030d 	orr.w	r3, r3, #13
    44fa:	6193      	str	r3, [r2, #24]
    44fc:	4a1f      	ldr	r2, [pc, #124]	; (457c <spi_config_port+0xe6>)
    44fe:	4b1f      	ldr	r3, [pc, #124]	; (457c <spi_config_port+0xe6>)
    4500:	685b      	ldr	r3, [r3, #4]
    4502:	f043 0301 	orr.w	r3, r3, #1
    4506:	6053      	str	r3, [r2, #4]
    4508:	2203      	movs	r2, #3
    450a:	210f      	movs	r1, #15
    450c:	481a      	ldr	r0, [pc, #104]	; (4578 <spi_config_port+0xe2>)
    450e:	f7fd fd3d 	bl	1f8c <config_pin>
    4512:	220b      	movs	r2, #11
    4514:	2103      	movs	r1, #3
    4516:	481a      	ldr	r0, [pc, #104]	; (4580 <spi_config_port+0xea>)
    4518:	f7fd fd38 	bl	1f8c <config_pin>
    451c:	2204      	movs	r2, #4
    451e:	2104      	movs	r1, #4
    4520:	4817      	ldr	r0, [pc, #92]	; (4580 <spi_config_port+0xea>)
    4522:	f7fd fd33 	bl	1f8c <config_pin>
    4526:	220b      	movs	r2, #11
    4528:	2105      	movs	r1, #5
    452a:	4815      	ldr	r0, [pc, #84]	; (4580 <spi_config_port+0xea>)
    452c:	f7fd fd2e 	bl	1f8c <config_pin>
    4530:	e019      	b.n	4566 <spi_config_port+0xd0>
    4532:	4a0f      	ldr	r2, [pc, #60]	; (4570 <spi_config_port+0xda>)
    4534:	4b0e      	ldr	r3, [pc, #56]	; (4570 <spi_config_port+0xda>)
    4536:	699b      	ldr	r3, [r3, #24]
    4538:	f043 0308 	orr.w	r3, r3, #8
    453c:	6193      	str	r3, [r2, #24]
    453e:	2203      	movs	r2, #3
    4540:	2102      	movs	r1, #2
    4542:	480f      	ldr	r0, [pc, #60]	; (4580 <spi_config_port+0xea>)
    4544:	f7fd fd22 	bl	1f8c <config_pin>
    4548:	220b      	movs	r2, #11
    454a:	210d      	movs	r1, #13
    454c:	480c      	ldr	r0, [pc, #48]	; (4580 <spi_config_port+0xea>)
    454e:	f7fd fd1d 	bl	1f8c <config_pin>
    4552:	2204      	movs	r2, #4
    4554:	210e      	movs	r1, #14
    4556:	480a      	ldr	r0, [pc, #40]	; (4580 <spi_config_port+0xea>)
    4558:	f7fd fd18 	bl	1f8c <config_pin>
    455c:	220b      	movs	r2, #11
    455e:	210f      	movs	r1, #15
    4560:	4807      	ldr	r0, [pc, #28]	; (4580 <spi_config_port+0xea>)
    4562:	f7fd fd13 	bl	1f8c <config_pin>
    4566:	bf00      	nop
    4568:	3708      	adds	r7, #8
    456a:	46bd      	mov	sp, r7
    456c:	bd80      	pop	{r7, pc}
    456e:	bf00      	nop
    4570:	40021000 	.word	0x40021000
    4574:	40013000 	.word	0x40013000
    4578:	40010800 	.word	0x40010800
    457c:	40010000 	.word	0x40010000
    4580:	40010c00 	.word	0x40010c00

00004584 <spi_init>:
    4584:	b580      	push	{r7, lr}
    4586:	b084      	sub	sp, #16
    4588:	af00      	add	r7, sp, #0
    458a:	60f8      	str	r0, [r7, #12]
    458c:	60b9      	str	r1, [r7, #8]
    458e:	607a      	str	r2, [r7, #4]
    4590:	603b      	str	r3, [r7, #0]
    4592:	6839      	ldr	r1, [r7, #0]
    4594:	68f8      	ldr	r0, [r7, #12]
    4596:	f7ff ff7e 	bl	4496 <spi_config_port>
    459a:	68fb      	ldr	r3, [r7, #12]
    459c:	4a10      	ldr	r2, [pc, #64]	; (45e0 <spi_init+0x5c>)
    459e:	4293      	cmp	r3, r2
    45a0:	d106      	bne.n	45b0 <spi_init+0x2c>
    45a2:	4a10      	ldr	r2, [pc, #64]	; (45e4 <spi_init+0x60>)
    45a4:	4b0f      	ldr	r3, [pc, #60]	; (45e4 <spi_init+0x60>)
    45a6:	699b      	ldr	r3, [r3, #24]
    45a8:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    45ac:	6193      	str	r3, [r2, #24]
    45ae:	e005      	b.n	45bc <spi_init+0x38>
    45b0:	4a0c      	ldr	r2, [pc, #48]	; (45e4 <spi_init+0x60>)
    45b2:	4b0c      	ldr	r3, [pc, #48]	; (45e4 <spi_init+0x60>)
    45b4:	69db      	ldr	r3, [r3, #28]
    45b6:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    45ba:	61d3      	str	r3, [r2, #28]
    45bc:	68fb      	ldr	r3, [r7, #12]
    45be:	687a      	ldr	r2, [r7, #4]
    45c0:	601a      	str	r2, [r3, #0]
    45c2:	68b9      	ldr	r1, [r7, #8]
    45c4:	68f8      	ldr	r0, [r7, #12]
    45c6:	f7ff ff4f 	bl	4468 <spi_baudrate>
    45ca:	68fb      	ldr	r3, [r7, #12]
    45cc:	681b      	ldr	r3, [r3, #0]
    45ce:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    45d2:	68fb      	ldr	r3, [r7, #12]
    45d4:	601a      	str	r2, [r3, #0]
    45d6:	bf00      	nop
    45d8:	3710      	adds	r7, #16
    45da:	46bd      	mov	sp, r7
    45dc:	bd80      	pop	{r7, pc}
    45de:	bf00      	nop
    45e0:	40013000 	.word	0x40013000
    45e4:	40021000 	.word	0x40021000

000045e8 <spi_send>:
    45e8:	b480      	push	{r7}
    45ea:	b083      	sub	sp, #12
    45ec:	af00      	add	r7, sp, #0
    45ee:	6078      	str	r0, [r7, #4]
    45f0:	460b      	mov	r3, r1
    45f2:	70fb      	strb	r3, [r7, #3]
    45f4:	bf00      	nop
    45f6:	687b      	ldr	r3, [r7, #4]
    45f8:	689b      	ldr	r3, [r3, #8]
    45fa:	f003 0302 	and.w	r3, r3, #2
    45fe:	2b00      	cmp	r3, #0
    4600:	d0f9      	beq.n	45f6 <spi_send+0xe>
    4602:	78fa      	ldrb	r2, [r7, #3]
    4604:	687b      	ldr	r3, [r7, #4]
    4606:	60da      	str	r2, [r3, #12]
    4608:	bf00      	nop
    460a:	687b      	ldr	r3, [r7, #4]
    460c:	689b      	ldr	r3, [r3, #8]
    460e:	f003 0301 	and.w	r3, r3, #1
    4612:	2b00      	cmp	r3, #0
    4614:	d0f9      	beq.n	460a <spi_send+0x22>
    4616:	687b      	ldr	r3, [r7, #4]
    4618:	68db      	ldr	r3, [r3, #12]
    461a:	b2db      	uxtb	r3, r3
    461c:	4618      	mov	r0, r3
    461e:	370c      	adds	r7, #12
    4620:	46bd      	mov	sp, r7
    4622:	bc80      	pop	{r7}
    4624:	4770      	bx	lr

00004626 <spi_receive>:
    4626:	b480      	push	{r7}
    4628:	b085      	sub	sp, #20
    462a:	af00      	add	r7, sp, #0
    462c:	6078      	str	r0, [r7, #4]
    462e:	bf00      	nop
    4630:	687b      	ldr	r3, [r7, #4]
    4632:	689b      	ldr	r3, [r3, #8]
    4634:	f003 0302 	and.w	r3, r3, #2
    4638:	2b00      	cmp	r3, #0
    463a:	d0f9      	beq.n	4630 <spi_receive+0xa>
    463c:	687b      	ldr	r3, [r7, #4]
    463e:	22ff      	movs	r2, #255	; 0xff
    4640:	60da      	str	r2, [r3, #12]
    4642:	bf00      	nop
    4644:	687b      	ldr	r3, [r7, #4]
    4646:	689b      	ldr	r3, [r3, #8]
    4648:	f003 0301 	and.w	r3, r3, #1
    464c:	2b00      	cmp	r3, #0
    464e:	d0f9      	beq.n	4644 <spi_receive+0x1e>
    4650:	687b      	ldr	r3, [r7, #4]
    4652:	68db      	ldr	r3, [r3, #12]
    4654:	73fb      	strb	r3, [r7, #15]
    4656:	7bfb      	ldrb	r3, [r7, #15]
    4658:	4618      	mov	r0, r3
    465a:	3714      	adds	r7, #20
    465c:	46bd      	mov	sp, r7
    465e:	bc80      	pop	{r7}
    4660:	4770      	bx	lr

00004662 <spi_send_block>:
    4662:	b480      	push	{r7}
    4664:	b087      	sub	sp, #28
    4666:	af00      	add	r7, sp, #0
    4668:	60f8      	str	r0, [r7, #12]
    466a:	60b9      	str	r1, [r7, #8]
    466c:	607a      	str	r2, [r7, #4]
    466e:	e010      	b.n	4692 <spi_send_block+0x30>
    4670:	68bb      	ldr	r3, [r7, #8]
    4672:	1c5a      	adds	r2, r3, #1
    4674:	60ba      	str	r2, [r7, #8]
    4676:	781b      	ldrb	r3, [r3, #0]
    4678:	461a      	mov	r2, r3
    467a:	68fb      	ldr	r3, [r7, #12]
    467c:	60da      	str	r2, [r3, #12]
    467e:	bf00      	nop
    4680:	68fb      	ldr	r3, [r7, #12]
    4682:	689b      	ldr	r3, [r3, #8]
    4684:	f003 0302 	and.w	r3, r3, #2
    4688:	2b00      	cmp	r3, #0
    468a:	d0f9      	beq.n	4680 <spi_send_block+0x1e>
    468c:	687b      	ldr	r3, [r7, #4]
    468e:	3b01      	subs	r3, #1
    4690:	607b      	str	r3, [r7, #4]
    4692:	687b      	ldr	r3, [r7, #4]
    4694:	2b00      	cmp	r3, #0
    4696:	d1eb      	bne.n	4670 <spi_send_block+0xe>
    4698:	bf00      	nop
    469a:	68fb      	ldr	r3, [r7, #12]
    469c:	689b      	ldr	r3, [r3, #8]
    469e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    46a2:	2b00      	cmp	r3, #0
    46a4:	d1f9      	bne.n	469a <spi_send_block+0x38>
    46a6:	68fb      	ldr	r3, [r7, #12]
    46a8:	68db      	ldr	r3, [r3, #12]
    46aa:	75fb      	strb	r3, [r7, #23]
    46ac:	bf00      	nop
    46ae:	371c      	adds	r7, #28
    46b0:	46bd      	mov	sp, r7
    46b2:	bc80      	pop	{r7}
    46b4:	4770      	bx	lr

000046b6 <spi_receive_block>:
    46b6:	b480      	push	{r7}
    46b8:	b085      	sub	sp, #20
    46ba:	af00      	add	r7, sp, #0
    46bc:	60f8      	str	r0, [r7, #12]
    46be:	60b9      	str	r1, [r7, #8]
    46c0:	607a      	str	r2, [r7, #4]
    46c2:	e013      	b.n	46ec <spi_receive_block+0x36>
    46c4:	68fb      	ldr	r3, [r7, #12]
    46c6:	2200      	movs	r2, #0
    46c8:	60da      	str	r2, [r3, #12]
    46ca:	bf00      	nop
    46cc:	68fb      	ldr	r3, [r7, #12]
    46ce:	689b      	ldr	r3, [r3, #8]
    46d0:	f003 0301 	and.w	r3, r3, #1
    46d4:	2b00      	cmp	r3, #0
    46d6:	d0f9      	beq.n	46cc <spi_receive_block+0x16>
    46d8:	68bb      	ldr	r3, [r7, #8]
    46da:	1c5a      	adds	r2, r3, #1
    46dc:	60ba      	str	r2, [r7, #8]
    46de:	68fa      	ldr	r2, [r7, #12]
    46e0:	68d2      	ldr	r2, [r2, #12]
    46e2:	b2d2      	uxtb	r2, r2
    46e4:	701a      	strb	r2, [r3, #0]
    46e6:	687b      	ldr	r3, [r7, #4]
    46e8:	3b01      	subs	r3, #1
    46ea:	607b      	str	r3, [r7, #4]
    46ec:	687b      	ldr	r3, [r7, #4]
    46ee:	2b00      	cmp	r3, #0
    46f0:	d1e8      	bne.n	46c4 <spi_receive_block+0xe>
    46f2:	bf00      	nop
    46f4:	3714      	adds	r7, #20
    46f6:	46bd      	mov	sp, r7
    46f8:	bc80      	pop	{r7}
    46fa:	4770      	bx	lr

000046fc <reset_mcu>:
    46fc:	4b01      	ldr	r3, [pc, #4]	; (4704 <reset_mcu+0x8>)
    46fe:	4a02      	ldr	r2, [pc, #8]	; (4708 <reset_mcu+0xc>)
    4700:	601a      	str	r2, [r3, #0]
    4702:	bf00      	nop
    4704:	e000ed0c 	.word	0xe000ed0c
    4708:	05fa0004 	.word	0x05fa0004

0000470c <print_fault>:
    470c:	b580      	push	{r7, lr}
    470e:	b082      	sub	sp, #8
    4710:	af00      	add	r7, sp, #0
    4712:	6078      	str	r0, [r7, #4]
    4714:	6039      	str	r1, [r7, #0]
    4716:	6878      	ldr	r0, [r7, #4]
    4718:	f000 f9bc 	bl	4a94 <print>
    471c:	4818      	ldr	r0, [pc, #96]	; (4780 <print_fault+0x74>)
    471e:	f000 f9b9 	bl	4a94 <print>
    4722:	683b      	ldr	r3, [r7, #0]
    4724:	2b00      	cmp	r3, #0
    4726:	d004      	beq.n	4732 <print_fault+0x26>
    4728:	683b      	ldr	r3, [r7, #0]
    472a:	2110      	movs	r1, #16
    472c:	4618      	mov	r0, r3
    472e:	f000 f9e1 	bl	4af4 <print_int>
    4732:	200d      	movs	r0, #13
    4734:	f000 f8f6 	bl	4924 <put_char>
    4738:	4812      	ldr	r0, [pc, #72]	; (4784 <print_fault+0x78>)
    473a:	f000 f9ab 	bl	4a94 <print>
    473e:	4b12      	ldr	r3, [pc, #72]	; (4788 <print_fault+0x7c>)
    4740:	681b      	ldr	r3, [r3, #0]
    4742:	f3c3 430f 	ubfx	r3, r3, #16, #16
    4746:	b29b      	uxth	r3, r3
    4748:	2110      	movs	r1, #16
    474a:	4618      	mov	r0, r3
    474c:	f000 f9d2 	bl	4af4 <print_int>
    4750:	480e      	ldr	r0, [pc, #56]	; (478c <print_fault+0x80>)
    4752:	f000 f99f 	bl	4a94 <print>
    4756:	4b0c      	ldr	r3, [pc, #48]	; (4788 <print_fault+0x7c>)
    4758:	681b      	ldr	r3, [r3, #0]
    475a:	f3c3 2307 	ubfx	r3, r3, #8, #8
    475e:	b2db      	uxtb	r3, r3
    4760:	2110      	movs	r1, #16
    4762:	4618      	mov	r0, r3
    4764:	f000 f9c6 	bl	4af4 <print_int>
    4768:	4809      	ldr	r0, [pc, #36]	; (4790 <print_fault+0x84>)
    476a:	f000 f993 	bl	4a94 <print>
    476e:	4b06      	ldr	r3, [pc, #24]	; (4788 <print_fault+0x7c>)
    4770:	681b      	ldr	r3, [r3, #0]
    4772:	b2db      	uxtb	r3, r3
    4774:	2110      	movs	r1, #16
    4776:	4618      	mov	r0, r3
    4778:	f000 f9bc 	bl	4af4 <print_int>
    477c:	e7fe      	b.n	477c <print_fault+0x70>
    477e:	bf00      	nop
    4780:	00005a80 	.word	0x00005a80
    4784:	00005a90 	.word	0x00005a90
    4788:	e000ed28 	.word	0xe000ed28
    478c:	00005a98 	.word	0x00005a98
    4790:	00005aa0 	.word	0x00005aa0

00004794 <font_color>:
    4794:	b480      	push	{r7}
    4796:	b083      	sub	sp, #12
    4798:	af00      	add	r7, sp, #0
    479a:	4603      	mov	r3, r0
    479c:	71fb      	strb	r3, [r7, #7]
    479e:	79fb      	ldrb	r3, [r7, #7]
    47a0:	f003 030f 	and.w	r3, r3, #15
    47a4:	b2da      	uxtb	r2, r3
    47a6:	4b03      	ldr	r3, [pc, #12]	; (47b4 <font_color+0x20>)
    47a8:	705a      	strb	r2, [r3, #1]
    47aa:	bf00      	nop
    47ac:	370c      	adds	r7, #12
    47ae:	46bd      	mov	sp, r7
    47b0:	bc80      	pop	{r7}
    47b2:	4770      	bx	lr
    47b4:	200001c8 	.word	0x200001c8

000047b8 <bg_color>:
    47b8:	b480      	push	{r7}
    47ba:	b083      	sub	sp, #12
    47bc:	af00      	add	r7, sp, #0
    47be:	4603      	mov	r3, r0
    47c0:	71fb      	strb	r3, [r7, #7]
    47c2:	79fb      	ldrb	r3, [r7, #7]
    47c4:	f003 030f 	and.w	r3, r3, #15
    47c8:	b2da      	uxtb	r2, r3
    47ca:	4b03      	ldr	r3, [pc, #12]	; (47d8 <bg_color+0x20>)
    47cc:	701a      	strb	r2, [r3, #0]
    47ce:	bf00      	nop
    47d0:	370c      	adds	r7, #12
    47d2:	46bd      	mov	sp, r7
    47d4:	bc80      	pop	{r7}
    47d6:	4770      	bx	lr
    47d8:	200001c8 	.word	0x200001c8

000047dc <select_font>:
    47dc:	b480      	push	{r7}
    47de:	b083      	sub	sp, #12
    47e0:	af00      	add	r7, sp, #0
    47e2:	4603      	mov	r3, r0
    47e4:	71fb      	strb	r3, [r7, #7]
    47e6:	4a04      	ldr	r2, [pc, #16]	; (47f8 <select_font+0x1c>)
    47e8:	79fb      	ldrb	r3, [r7, #7]
    47ea:	7013      	strb	r3, [r2, #0]
    47ec:	bf00      	nop
    47ee:	370c      	adds	r7, #12
    47f0:	46bd      	mov	sp, r7
    47f2:	bc80      	pop	{r7}
    47f4:	4770      	bx	lr
    47f6:	bf00      	nop
    47f8:	200001c4 	.word	0x200001c4

000047fc <new_line>:
    47fc:	b580      	push	{r7, lr}
    47fe:	b082      	sub	sp, #8
    4800:	af00      	add	r7, sp, #0
    4802:	4b27      	ldr	r3, [pc, #156]	; (48a0 <new_line+0xa4>)
    4804:	2200      	movs	r2, #0
    4806:	701a      	strb	r2, [r3, #0]
    4808:	f000 fdee 	bl	53e8 <get_video_params>
    480c:	6078      	str	r0, [r7, #4]
    480e:	4b25      	ldr	r3, [pc, #148]	; (48a4 <new_line+0xa8>)
    4810:	781b      	ldrb	r3, [r3, #0]
    4812:	2b01      	cmp	r3, #1
    4814:	d017      	beq.n	4846 <new_line+0x4a>
    4816:	2b02      	cmp	r3, #2
    4818:	d029      	beq.n	486e <new_line+0x72>
    481a:	2b00      	cmp	r3, #0
    481c:	d000      	beq.n	4820 <new_line+0x24>
    481e:	e03a      	b.n	4896 <new_line+0x9a>
    4820:	4b21      	ldr	r3, [pc, #132]	; (48a8 <new_line+0xac>)
    4822:	781b      	ldrb	r3, [r3, #0]
    4824:	1d9a      	adds	r2, r3, #6
    4826:	687b      	ldr	r3, [r7, #4]
    4828:	89db      	ldrh	r3, [r3, #14]
    482a:	3b05      	subs	r3, #5
    482c:	429a      	cmp	r2, r3
    482e:	dc06      	bgt.n	483e <new_line+0x42>
    4830:	4b1d      	ldr	r3, [pc, #116]	; (48a8 <new_line+0xac>)
    4832:	781b      	ldrb	r3, [r3, #0]
    4834:	3306      	adds	r3, #6
    4836:	b2da      	uxtb	r2, r3
    4838:	4b1b      	ldr	r3, [pc, #108]	; (48a8 <new_line+0xac>)
    483a:	701a      	strb	r2, [r3, #0]
    483c:	e02b      	b.n	4896 <new_line+0x9a>
    483e:	2006      	movs	r0, #6
    4840:	f7fd fd64 	bl	230c <gfx_scroll_up>
    4844:	e027      	b.n	4896 <new_line+0x9a>
    4846:	4b18      	ldr	r3, [pc, #96]	; (48a8 <new_line+0xac>)
    4848:	781b      	ldrb	r3, [r3, #0]
    484a:	f103 020a 	add.w	r2, r3, #10
    484e:	687b      	ldr	r3, [r7, #4]
    4850:	89db      	ldrh	r3, [r3, #14]
    4852:	3b09      	subs	r3, #9
    4854:	429a      	cmp	r2, r3
    4856:	dc06      	bgt.n	4866 <new_line+0x6a>
    4858:	4b13      	ldr	r3, [pc, #76]	; (48a8 <new_line+0xac>)
    485a:	781b      	ldrb	r3, [r3, #0]
    485c:	330a      	adds	r3, #10
    485e:	b2da      	uxtb	r2, r3
    4860:	4b11      	ldr	r3, [pc, #68]	; (48a8 <new_line+0xac>)
    4862:	701a      	strb	r2, [r3, #0]
    4864:	e017      	b.n	4896 <new_line+0x9a>
    4866:	200a      	movs	r0, #10
    4868:	f7fd fd50 	bl	230c <gfx_scroll_up>
    486c:	e013      	b.n	4896 <new_line+0x9a>
    486e:	4b0e      	ldr	r3, [pc, #56]	; (48a8 <new_line+0xac>)
    4870:	781b      	ldrb	r3, [r3, #0]
    4872:	f103 0208 	add.w	r2, r3, #8
    4876:	687b      	ldr	r3, [r7, #4]
    4878:	89db      	ldrh	r3, [r3, #14]
    487a:	3b07      	subs	r3, #7
    487c:	429a      	cmp	r2, r3
    487e:	dc06      	bgt.n	488e <new_line+0x92>
    4880:	4b09      	ldr	r3, [pc, #36]	; (48a8 <new_line+0xac>)
    4882:	781b      	ldrb	r3, [r3, #0]
    4884:	3308      	adds	r3, #8
    4886:	b2da      	uxtb	r2, r3
    4888:	4b07      	ldr	r3, [pc, #28]	; (48a8 <new_line+0xac>)
    488a:	701a      	strb	r2, [r3, #0]
    488c:	e002      	b.n	4894 <new_line+0x98>
    488e:	2008      	movs	r0, #8
    4890:	f7fd fd3c 	bl	230c <gfx_scroll_up>
    4894:	bf00      	nop
    4896:	bf00      	nop
    4898:	3708      	adds	r7, #8
    489a:	46bd      	mov	sp, r7
    489c:	bd80      	pop	{r7, pc}
    489e:	bf00      	nop
    48a0:	2000066d 	.word	0x2000066d
    48a4:	200001c4 	.word	0x200001c4
    48a8:	2000066e 	.word	0x2000066e

000048ac <draw_char>:
    48ac:	b5b0      	push	{r4, r5, r7, lr}
    48ae:	b086      	sub	sp, #24
    48b0:	af00      	add	r7, sp, #0
    48b2:	60f8      	str	r0, [r7, #12]
    48b4:	60b9      	str	r1, [r7, #8]
    48b6:	607a      	str	r2, [r7, #4]
    48b8:	603b      	str	r3, [r7, #0]
    48ba:	68bc      	ldr	r4, [r7, #8]
    48bc:	e026      	b.n	490c <draw_char+0x60>
    48be:	6abb      	ldr	r3, [r7, #40]	; 0x28
    48c0:	1c5a      	adds	r2, r3, #1
    48c2:	62ba      	str	r2, [r7, #40]	; 0x28
    48c4:	781b      	ldrb	r3, [r3, #0]
    48c6:	757b      	strb	r3, [r7, #21]
    48c8:	2380      	movs	r3, #128	; 0x80
    48ca:	75bb      	strb	r3, [r7, #22]
    48cc:	68fd      	ldr	r5, [r7, #12]
    48ce:	e017      	b.n	4900 <draw_char+0x54>
    48d0:	7d7a      	ldrb	r2, [r7, #21]
    48d2:	7dbb      	ldrb	r3, [r7, #22]
    48d4:	4013      	ands	r3, r2
    48d6:	753b      	strb	r3, [r7, #20]
    48d8:	7d3b      	ldrb	r3, [r7, #20]
    48da:	2b00      	cmp	r3, #0
    48dc:	d003      	beq.n	48e6 <draw_char+0x3a>
    48de:	4b10      	ldr	r3, [pc, #64]	; (4920 <draw_char+0x74>)
    48e0:	785b      	ldrb	r3, [r3, #1]
    48e2:	75fb      	strb	r3, [r7, #23]
    48e4:	e002      	b.n	48ec <draw_char+0x40>
    48e6:	4b0e      	ldr	r3, [pc, #56]	; (4920 <draw_char+0x74>)
    48e8:	781b      	ldrb	r3, [r3, #0]
    48ea:	75fb      	strb	r3, [r7, #23]
    48ec:	7dfb      	ldrb	r3, [r7, #23]
    48ee:	461a      	mov	r2, r3
    48f0:	4621      	mov	r1, r4
    48f2:	4628      	mov	r0, r5
    48f4:	f7fd fc60 	bl	21b8 <gfx_plot>
    48f8:	7dbb      	ldrb	r3, [r7, #22]
    48fa:	085b      	lsrs	r3, r3, #1
    48fc:	75bb      	strb	r3, [r7, #22]
    48fe:	3501      	adds	r5, #1
    4900:	68fa      	ldr	r2, [r7, #12]
    4902:	687b      	ldr	r3, [r7, #4]
    4904:	4413      	add	r3, r2
    4906:	42ab      	cmp	r3, r5
    4908:	dce2      	bgt.n	48d0 <draw_char+0x24>
    490a:	3401      	adds	r4, #1
    490c:	68ba      	ldr	r2, [r7, #8]
    490e:	683b      	ldr	r3, [r7, #0]
    4910:	4413      	add	r3, r2
    4912:	42a3      	cmp	r3, r4
    4914:	dcd3      	bgt.n	48be <draw_char+0x12>
    4916:	bf00      	nop
    4918:	3718      	adds	r7, #24
    491a:	46bd      	mov	sp, r7
    491c:	bdb0      	pop	{r4, r5, r7, pc}
    491e:	bf00      	nop
    4920:	200001c8 	.word	0x200001c8

00004924 <put_char>:
    4924:	b580      	push	{r7, lr}
    4926:	b084      	sub	sp, #16
    4928:	af02      	add	r7, sp, #8
    492a:	4603      	mov	r3, r0
    492c:	71fb      	strb	r3, [r7, #7]
    492e:	4b3d      	ldr	r3, [pc, #244]	; (4a24 <put_char+0x100>)
    4930:	781b      	ldrb	r3, [r3, #0]
    4932:	2b01      	cmp	r3, #1
    4934:	d027      	beq.n	4986 <put_char+0x62>
    4936:	2b02      	cmp	r3, #2
    4938:	d048      	beq.n	49cc <put_char+0xa8>
    493a:	2b00      	cmp	r3, #0
    493c:	d000      	beq.n	4940 <put_char+0x1c>
    493e:	e06d      	b.n	4a1c <put_char+0xf8>
    4940:	79fb      	ldrb	r3, [r7, #7]
    4942:	2b0f      	cmp	r3, #15
    4944:	d865      	bhi.n	4a12 <put_char+0xee>
    4946:	4b38      	ldr	r3, [pc, #224]	; (4a28 <put_char+0x104>)
    4948:	781b      	ldrb	r3, [r3, #0]
    494a:	4618      	mov	r0, r3
    494c:	4b37      	ldr	r3, [pc, #220]	; (4a2c <put_char+0x108>)
    494e:	781b      	ldrb	r3, [r3, #0]
    4950:	4619      	mov	r1, r3
    4952:	79fa      	ldrb	r2, [r7, #7]
    4954:	4613      	mov	r3, r2
    4956:	005b      	lsls	r3, r3, #1
    4958:	4413      	add	r3, r2
    495a:	005b      	lsls	r3, r3, #1
    495c:	461a      	mov	r2, r3
    495e:	4b34      	ldr	r3, [pc, #208]	; (4a30 <put_char+0x10c>)
    4960:	4413      	add	r3, r2
    4962:	9300      	str	r3, [sp, #0]
    4964:	2306      	movs	r3, #6
    4966:	2204      	movs	r2, #4
    4968:	f7ff ffa0 	bl	48ac <draw_char>
    496c:	4b2e      	ldr	r3, [pc, #184]	; (4a28 <put_char+0x104>)
    496e:	781b      	ldrb	r3, [r3, #0]
    4970:	3304      	adds	r3, #4
    4972:	b2da      	uxtb	r2, r3
    4974:	4b2c      	ldr	r3, [pc, #176]	; (4a28 <put_char+0x104>)
    4976:	701a      	strb	r2, [r3, #0]
    4978:	4b2b      	ldr	r3, [pc, #172]	; (4a28 <put_char+0x104>)
    497a:	781b      	ldrb	r3, [r3, #0]
    497c:	2bb1      	cmp	r3, #177	; 0xb1
    497e:	d948      	bls.n	4a12 <put_char+0xee>
    4980:	f7ff ff3c 	bl	47fc <new_line>
    4984:	e045      	b.n	4a12 <put_char+0xee>
    4986:	79fb      	ldrb	r3, [r7, #7]
    4988:	2b0f      	cmp	r3, #15
    498a:	d844      	bhi.n	4a16 <put_char+0xf2>
    498c:	4b26      	ldr	r3, [pc, #152]	; (4a28 <put_char+0x104>)
    498e:	781b      	ldrb	r3, [r3, #0]
    4990:	4618      	mov	r0, r3
    4992:	4b26      	ldr	r3, [pc, #152]	; (4a2c <put_char+0x108>)
    4994:	781b      	ldrb	r3, [r3, #0]
    4996:	4619      	mov	r1, r3
    4998:	79fa      	ldrb	r2, [r7, #7]
    499a:	4613      	mov	r3, r2
    499c:	009b      	lsls	r3, r3, #2
    499e:	4413      	add	r3, r2
    49a0:	005b      	lsls	r3, r3, #1
    49a2:	461a      	mov	r2, r3
    49a4:	4b23      	ldr	r3, [pc, #140]	; (4a34 <put_char+0x110>)
    49a6:	4413      	add	r3, r2
    49a8:	9300      	str	r3, [sp, #0]
    49aa:	230a      	movs	r3, #10
    49ac:	2208      	movs	r2, #8
    49ae:	f7ff ff7d 	bl	48ac <draw_char>
    49b2:	4b1d      	ldr	r3, [pc, #116]	; (4a28 <put_char+0x104>)
    49b4:	781b      	ldrb	r3, [r3, #0]
    49b6:	3308      	adds	r3, #8
    49b8:	b2da      	uxtb	r2, r3
    49ba:	4b1b      	ldr	r3, [pc, #108]	; (4a28 <put_char+0x104>)
    49bc:	701a      	strb	r2, [r3, #0]
    49be:	4b1a      	ldr	r3, [pc, #104]	; (4a28 <put_char+0x104>)
    49c0:	781b      	ldrb	r3, [r3, #0]
    49c2:	2bad      	cmp	r3, #173	; 0xad
    49c4:	d927      	bls.n	4a16 <put_char+0xf2>
    49c6:	f7ff ff19 	bl	47fc <new_line>
    49ca:	e024      	b.n	4a16 <put_char+0xf2>
    49cc:	79fb      	ldrb	r3, [r7, #7]
    49ce:	2b1f      	cmp	r3, #31
    49d0:	d923      	bls.n	4a1a <put_char+0xf6>
    49d2:	79fb      	ldrb	r3, [r7, #7]
    49d4:	2b84      	cmp	r3, #132	; 0x84
    49d6:	d820      	bhi.n	4a1a <put_char+0xf6>
    49d8:	4b13      	ldr	r3, [pc, #76]	; (4a28 <put_char+0x104>)
    49da:	781b      	ldrb	r3, [r3, #0]
    49dc:	4618      	mov	r0, r3
    49de:	4b13      	ldr	r3, [pc, #76]	; (4a2c <put_char+0x108>)
    49e0:	781b      	ldrb	r3, [r3, #0]
    49e2:	4619      	mov	r1, r3
    49e4:	79fb      	ldrb	r3, [r7, #7]
    49e6:	3b20      	subs	r3, #32
    49e8:	00db      	lsls	r3, r3, #3
    49ea:	4a13      	ldr	r2, [pc, #76]	; (4a38 <put_char+0x114>)
    49ec:	4413      	add	r3, r2
    49ee:	9300      	str	r3, [sp, #0]
    49f0:	2308      	movs	r3, #8
    49f2:	2206      	movs	r2, #6
    49f4:	f7ff ff5a 	bl	48ac <draw_char>
    49f8:	4b0b      	ldr	r3, [pc, #44]	; (4a28 <put_char+0x104>)
    49fa:	781b      	ldrb	r3, [r3, #0]
    49fc:	3306      	adds	r3, #6
    49fe:	b2da      	uxtb	r2, r3
    4a00:	4b09      	ldr	r3, [pc, #36]	; (4a28 <put_char+0x104>)
    4a02:	701a      	strb	r2, [r3, #0]
    4a04:	4b08      	ldr	r3, [pc, #32]	; (4a28 <put_char+0x104>)
    4a06:	781b      	ldrb	r3, [r3, #0]
    4a08:	2baf      	cmp	r3, #175	; 0xaf
    4a0a:	d906      	bls.n	4a1a <put_char+0xf6>
    4a0c:	f7ff fef6 	bl	47fc <new_line>
    4a10:	e003      	b.n	4a1a <put_char+0xf6>
    4a12:	bf00      	nop
    4a14:	e002      	b.n	4a1c <put_char+0xf8>
    4a16:	bf00      	nop
    4a18:	e000      	b.n	4a1c <put_char+0xf8>
    4a1a:	bf00      	nop
    4a1c:	bf00      	nop
    4a1e:	3708      	adds	r7, #8
    4a20:	46bd      	mov	sp, r7
    4a22:	bd80      	pop	{r7, pc}
    4a24:	200001c4 	.word	0x200001c4
    4a28:	2000066d 	.word	0x2000066d
    4a2c:	2000066e 	.word	0x2000066e
    4a30:	00005480 	.word	0x00005480
    4a34:	000054e0 	.word	0x000054e0
    4a38:	00005580 	.word	0x00005580

00004a3c <set_cursor>:
    4a3c:	b480      	push	{r7}
    4a3e:	b083      	sub	sp, #12
    4a40:	af00      	add	r7, sp, #0
    4a42:	4603      	mov	r3, r0
    4a44:	460a      	mov	r2, r1
    4a46:	71fb      	strb	r3, [r7, #7]
    4a48:	4613      	mov	r3, r2
    4a4a:	71bb      	strb	r3, [r7, #6]
    4a4c:	4a05      	ldr	r2, [pc, #20]	; (4a64 <set_cursor+0x28>)
    4a4e:	79fb      	ldrb	r3, [r7, #7]
    4a50:	7013      	strb	r3, [r2, #0]
    4a52:	4a05      	ldr	r2, [pc, #20]	; (4a68 <set_cursor+0x2c>)
    4a54:	79bb      	ldrb	r3, [r7, #6]
    4a56:	7013      	strb	r3, [r2, #0]
    4a58:	bf00      	nop
    4a5a:	370c      	adds	r7, #12
    4a5c:	46bd      	mov	sp, r7
    4a5e:	bc80      	pop	{r7}
    4a60:	4770      	bx	lr
    4a62:	bf00      	nop
    4a64:	2000066d 	.word	0x2000066d
    4a68:	2000066e 	.word	0x2000066e

00004a6c <get_cursor>:
    4a6c:	b480      	push	{r7}
    4a6e:	af00      	add	r7, sp, #0
    4a70:	4b06      	ldr	r3, [pc, #24]	; (4a8c <get_cursor+0x20>)
    4a72:	781b      	ldrb	r3, [r3, #0]
    4a74:	b29b      	uxth	r3, r3
    4a76:	021b      	lsls	r3, r3, #8
    4a78:	b29a      	uxth	r2, r3
    4a7a:	4b05      	ldr	r3, [pc, #20]	; (4a90 <get_cursor+0x24>)
    4a7c:	781b      	ldrb	r3, [r3, #0]
    4a7e:	b29b      	uxth	r3, r3
    4a80:	4413      	add	r3, r2
    4a82:	b29b      	uxth	r3, r3
    4a84:	4618      	mov	r0, r3
    4a86:	46bd      	mov	sp, r7
    4a88:	bc80      	pop	{r7}
    4a8a:	4770      	bx	lr
    4a8c:	2000066d 	.word	0x2000066d
    4a90:	2000066e 	.word	0x2000066e

00004a94 <print>:
    4a94:	b580      	push	{r7, lr}
    4a96:	b084      	sub	sp, #16
    4a98:	af00      	add	r7, sp, #0
    4a9a:	6078      	str	r0, [r7, #4]
    4a9c:	e011      	b.n	4ac2 <print+0x2e>
    4a9e:	7bfb      	ldrb	r3, [r7, #15]
    4aa0:	2b0a      	cmp	r3, #10
    4aa2:	d004      	beq.n	4aae <print+0x1a>
    4aa4:	2b0d      	cmp	r3, #13
    4aa6:	d002      	beq.n	4aae <print+0x1a>
    4aa8:	2b08      	cmp	r3, #8
    4aaa:	d003      	beq.n	4ab4 <print+0x20>
    4aac:	e005      	b.n	4aba <print+0x26>
    4aae:	f7ff fea5 	bl	47fc <new_line>
    4ab2:	e006      	b.n	4ac2 <print+0x2e>
    4ab4:	f000 f892 	bl	4bdc <cursor_left>
    4ab8:	e003      	b.n	4ac2 <print+0x2e>
    4aba:	7bfb      	ldrb	r3, [r7, #15]
    4abc:	4618      	mov	r0, r3
    4abe:	f7ff ff31 	bl	4924 <put_char>
    4ac2:	687b      	ldr	r3, [r7, #4]
    4ac4:	1c5a      	adds	r2, r3, #1
    4ac6:	607a      	str	r2, [r7, #4]
    4ac8:	781b      	ldrb	r3, [r3, #0]
    4aca:	73fb      	strb	r3, [r7, #15]
    4acc:	7bfb      	ldrb	r3, [r7, #15]
    4ace:	2b00      	cmp	r3, #0
    4ad0:	d1e5      	bne.n	4a9e <print+0xa>
    4ad2:	bf00      	nop
    4ad4:	3710      	adds	r7, #16
    4ad6:	46bd      	mov	sp, r7
    4ad8:	bd80      	pop	{r7, pc}

00004ada <println>:
    4ada:	b580      	push	{r7, lr}
    4adc:	b082      	sub	sp, #8
    4ade:	af00      	add	r7, sp, #0
    4ae0:	6078      	str	r0, [r7, #4]
    4ae2:	6878      	ldr	r0, [r7, #4]
    4ae4:	f7ff ffd6 	bl	4a94 <print>
    4ae8:	f7ff fe88 	bl	47fc <new_line>
    4aec:	bf00      	nop
    4aee:	3708      	adds	r7, #8
    4af0:	46bd      	mov	sp, r7
    4af2:	bd80      	pop	{r7, pc}

00004af4 <print_int>:
    4af4:	b580      	push	{r7, lr}
    4af6:	b08a      	sub	sp, #40	; 0x28
    4af8:	af00      	add	r7, sp, #0
    4afa:	6078      	str	r0, [r7, #4]
    4afc:	460b      	mov	r3, r1
    4afe:	70fb      	strb	r3, [r7, #3]
    4b00:	2300      	movs	r3, #0
    4b02:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4b06:	2300      	movs	r3, #0
    4b08:	76fb      	strb	r3, [r7, #27]
    4b0a:	2320      	movs	r3, #32
    4b0c:	76bb      	strb	r3, [r7, #26]
    4b0e:	230e      	movs	r3, #14
    4b10:	623b      	str	r3, [r7, #32]
    4b12:	687b      	ldr	r3, [r7, #4]
    4b14:	2b00      	cmp	r3, #0
    4b16:	da27      	bge.n	4b68 <print_int+0x74>
    4b18:	2301      	movs	r3, #1
    4b1a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4b1e:	687b      	ldr	r3, [r7, #4]
    4b20:	425b      	negs	r3, r3
    4b22:	607b      	str	r3, [r7, #4]
    4b24:	e020      	b.n	4b68 <print_int+0x74>
    4b26:	78fa      	ldrb	r2, [r7, #3]
    4b28:	687b      	ldr	r3, [r7, #4]
    4b2a:	fb93 f1f2 	sdiv	r1, r3, r2
    4b2e:	fb02 f201 	mul.w	r2, r2, r1
    4b32:	1a9b      	subs	r3, r3, r2
    4b34:	61fb      	str	r3, [r7, #28]
    4b36:	69fb      	ldr	r3, [r7, #28]
    4b38:	2b09      	cmp	r3, #9
    4b3a:	dd02      	ble.n	4b42 <print_int+0x4e>
    4b3c:	69fb      	ldr	r3, [r7, #28]
    4b3e:	3307      	adds	r3, #7
    4b40:	61fb      	str	r3, [r7, #28]
    4b42:	6a3b      	ldr	r3, [r7, #32]
    4b44:	3b01      	subs	r3, #1
    4b46:	623b      	str	r3, [r7, #32]
    4b48:	69fb      	ldr	r3, [r7, #28]
    4b4a:	3330      	adds	r3, #48	; 0x30
    4b4c:	61fb      	str	r3, [r7, #28]
    4b4e:	69fb      	ldr	r3, [r7, #28]
    4b50:	b2d9      	uxtb	r1, r3
    4b52:	f107 020c 	add.w	r2, r7, #12
    4b56:	6a3b      	ldr	r3, [r7, #32]
    4b58:	4413      	add	r3, r2
    4b5a:	460a      	mov	r2, r1
    4b5c:	701a      	strb	r2, [r3, #0]
    4b5e:	78fb      	ldrb	r3, [r7, #3]
    4b60:	687a      	ldr	r2, [r7, #4]
    4b62:	fb92 f3f3 	sdiv	r3, r2, r3
    4b66:	607b      	str	r3, [r7, #4]
    4b68:	6a3b      	ldr	r3, [r7, #32]
    4b6a:	2b01      	cmp	r3, #1
    4b6c:	dd02      	ble.n	4b74 <print_int+0x80>
    4b6e:	687b      	ldr	r3, [r7, #4]
    4b70:	2b00      	cmp	r3, #0
    4b72:	d1d8      	bne.n	4b26 <print_int+0x32>
    4b74:	6a3b      	ldr	r3, [r7, #32]
    4b76:	2b0e      	cmp	r3, #14
    4b78:	d108      	bne.n	4b8c <print_int+0x98>
    4b7a:	6a3b      	ldr	r3, [r7, #32]
    4b7c:	3b01      	subs	r3, #1
    4b7e:	623b      	str	r3, [r7, #32]
    4b80:	f107 020c 	add.w	r2, r7, #12
    4b84:	6a3b      	ldr	r3, [r7, #32]
    4b86:	4413      	add	r3, r2
    4b88:	2230      	movs	r2, #48	; 0x30
    4b8a:	701a      	strb	r2, [r3, #0]
    4b8c:	78fb      	ldrb	r3, [r7, #3]
    4b8e:	2b0a      	cmp	r3, #10
    4b90:	d10d      	bne.n	4bae <print_int+0xba>
    4b92:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4b96:	2b00      	cmp	r3, #0
    4b98:	d009      	beq.n	4bae <print_int+0xba>
    4b9a:	6a3b      	ldr	r3, [r7, #32]
    4b9c:	3b01      	subs	r3, #1
    4b9e:	623b      	str	r3, [r7, #32]
    4ba0:	f107 020c 	add.w	r2, r7, #12
    4ba4:	6a3b      	ldr	r3, [r7, #32]
    4ba6:	4413      	add	r3, r2
    4ba8:	222d      	movs	r2, #45	; 0x2d
    4baa:	701a      	strb	r2, [r3, #0]
    4bac:	e00b      	b.n	4bc6 <print_int+0xd2>
    4bae:	78fb      	ldrb	r3, [r7, #3]
    4bb0:	2b10      	cmp	r3, #16
    4bb2:	d108      	bne.n	4bc6 <print_int+0xd2>
    4bb4:	6a3b      	ldr	r3, [r7, #32]
    4bb6:	3b01      	subs	r3, #1
    4bb8:	623b      	str	r3, [r7, #32]
    4bba:	f107 020c 	add.w	r2, r7, #12
    4bbe:	6a3b      	ldr	r3, [r7, #32]
    4bc0:	4413      	add	r3, r2
    4bc2:	2224      	movs	r2, #36	; 0x24
    4bc4:	701a      	strb	r2, [r3, #0]
    4bc6:	f107 020c 	add.w	r2, r7, #12
    4bca:	6a3b      	ldr	r3, [r7, #32]
    4bcc:	4413      	add	r3, r2
    4bce:	4618      	mov	r0, r3
    4bd0:	f7ff ff60 	bl	4a94 <print>
    4bd4:	bf00      	nop
    4bd6:	3728      	adds	r7, #40	; 0x28
    4bd8:	46bd      	mov	sp, r7
    4bda:	bd80      	pop	{r7, pc}

00004bdc <cursor_left>:
    4bdc:	b480      	push	{r7}
    4bde:	af00      	add	r7, sp, #0
    4be0:	4b1a      	ldr	r3, [pc, #104]	; (4c4c <cursor_left+0x70>)
    4be2:	781b      	ldrb	r3, [r3, #0]
    4be4:	2b01      	cmp	r3, #1
    4be6:	d010      	beq.n	4c0a <cursor_left+0x2e>
    4be8:	2b02      	cmp	r3, #2
    4bea:	d01a      	beq.n	4c22 <cursor_left+0x46>
    4bec:	2b00      	cmp	r3, #0
    4bee:	d000      	beq.n	4bf2 <cursor_left+0x16>
    4bf0:	e028      	b.n	4c44 <cursor_left+0x68>
    4bf2:	4b17      	ldr	r3, [pc, #92]	; (4c50 <cursor_left+0x74>)
    4bf4:	781b      	ldrb	r3, [r3, #0]
    4bf6:	3b04      	subs	r3, #4
    4bf8:	2b00      	cmp	r3, #0
    4bfa:	db1e      	blt.n	4c3a <cursor_left+0x5e>
    4bfc:	4b14      	ldr	r3, [pc, #80]	; (4c50 <cursor_left+0x74>)
    4bfe:	781b      	ldrb	r3, [r3, #0]
    4c00:	3b04      	subs	r3, #4
    4c02:	b2da      	uxtb	r2, r3
    4c04:	4b12      	ldr	r3, [pc, #72]	; (4c50 <cursor_left+0x74>)
    4c06:	701a      	strb	r2, [r3, #0]
    4c08:	e017      	b.n	4c3a <cursor_left+0x5e>
    4c0a:	4b11      	ldr	r3, [pc, #68]	; (4c50 <cursor_left+0x74>)
    4c0c:	781b      	ldrb	r3, [r3, #0]
    4c0e:	3b08      	subs	r3, #8
    4c10:	2b00      	cmp	r3, #0
    4c12:	db14      	blt.n	4c3e <cursor_left+0x62>
    4c14:	4b0e      	ldr	r3, [pc, #56]	; (4c50 <cursor_left+0x74>)
    4c16:	781b      	ldrb	r3, [r3, #0]
    4c18:	3b08      	subs	r3, #8
    4c1a:	b2da      	uxtb	r2, r3
    4c1c:	4b0c      	ldr	r3, [pc, #48]	; (4c50 <cursor_left+0x74>)
    4c1e:	701a      	strb	r2, [r3, #0]
    4c20:	e00d      	b.n	4c3e <cursor_left+0x62>
    4c22:	4b0b      	ldr	r3, [pc, #44]	; (4c50 <cursor_left+0x74>)
    4c24:	781b      	ldrb	r3, [r3, #0]
    4c26:	3b06      	subs	r3, #6
    4c28:	2b00      	cmp	r3, #0
    4c2a:	db0a      	blt.n	4c42 <cursor_left+0x66>
    4c2c:	4b08      	ldr	r3, [pc, #32]	; (4c50 <cursor_left+0x74>)
    4c2e:	781b      	ldrb	r3, [r3, #0]
    4c30:	3b06      	subs	r3, #6
    4c32:	b2da      	uxtb	r2, r3
    4c34:	4b06      	ldr	r3, [pc, #24]	; (4c50 <cursor_left+0x74>)
    4c36:	701a      	strb	r2, [r3, #0]
    4c38:	e003      	b.n	4c42 <cursor_left+0x66>
    4c3a:	bf00      	nop
    4c3c:	e002      	b.n	4c44 <cursor_left+0x68>
    4c3e:	bf00      	nop
    4c40:	e000      	b.n	4c44 <cursor_left+0x68>
    4c42:	bf00      	nop
    4c44:	bf00      	nop
    4c46:	46bd      	mov	sp, r7
    4c48:	bc80      	pop	{r7}
    4c4a:	4770      	bx	lr
    4c4c:	200001c4 	.word	0x200001c4
    4c50:	2000066d 	.word	0x2000066d

00004c54 <text_scroller>:
    4c54:	b580      	push	{r7, lr}
    4c56:	b084      	sub	sp, #16
    4c58:	af00      	add	r7, sp, #0
    4c5a:	6078      	str	r0, [r7, #4]
    4c5c:	460b      	mov	r3, r1
    4c5e:	70fb      	strb	r3, [r7, #3]
    4c60:	f7fd faf8 	bl	2254 <gfx_cls>
    4c64:	2002      	movs	r0, #2
    4c66:	f7ff fdb9 	bl	47dc <select_font>
    4c6a:	687b      	ldr	r3, [r7, #4]
    4c6c:	1c5a      	adds	r2, r3, #1
    4c6e:	607a      	str	r2, [r7, #4]
    4c70:	781b      	ldrb	r3, [r3, #0]
    4c72:	73fb      	strb	r3, [r7, #15]
    4c74:	e035      	b.n	4ce2 <text_scroller+0x8e>
    4c76:	2120      	movs	r1, #32
    4c78:	2000      	movs	r0, #0
    4c7a:	f7ff fedf 	bl	4a3c <set_cursor>
    4c7e:	e00e      	b.n	4c9e <text_scroller+0x4a>
    4c80:	7bfb      	ldrb	r3, [r7, #15]
    4c82:	4618      	mov	r0, r3
    4c84:	f7ff fe4e 	bl	4924 <put_char>
    4c88:	687b      	ldr	r3, [r7, #4]
    4c8a:	1c5a      	adds	r2, r3, #1
    4c8c:	607a      	str	r2, [r7, #4]
    4c8e:	781b      	ldrb	r3, [r3, #0]
    4c90:	73fb      	strb	r3, [r7, #15]
    4c92:	2020      	movs	r0, #32
    4c94:	f7fc fe96 	bl	19c4 <btn_query_down>
    4c98:	4603      	mov	r3, r0
    4c9a:	2b00      	cmp	r3, #0
    4c9c:	d13c      	bne.n	4d18 <text_scroller+0xc4>
    4c9e:	7bfb      	ldrb	r3, [r7, #15]
    4ca0:	2b00      	cmp	r3, #0
    4ca2:	d002      	beq.n	4caa <text_scroller+0x56>
    4ca4:	7bfb      	ldrb	r3, [r7, #15]
    4ca6:	2b0a      	cmp	r3, #10
    4ca8:	d1ea      	bne.n	4c80 <text_scroller+0x2c>
    4caa:	2300      	movs	r3, #0
    4cac:	73bb      	strb	r3, [r7, #14]
    4cae:	e010      	b.n	4cd2 <text_scroller+0x7e>
    4cb0:	78fb      	ldrb	r3, [r7, #3]
    4cb2:	b29b      	uxth	r3, r3
    4cb4:	4618      	mov	r0, r3
    4cb6:	f000 fbab 	bl	5410 <game_pause>
    4cba:	2001      	movs	r0, #1
    4cbc:	f7fd fb26 	bl	230c <gfx_scroll_up>
    4cc0:	2020      	movs	r0, #32
    4cc2:	f7fc fe7f 	bl	19c4 <btn_query_down>
    4cc6:	4603      	mov	r3, r0
    4cc8:	2b00      	cmp	r3, #0
    4cca:	d127      	bne.n	4d1c <text_scroller+0xc8>
    4ccc:	7bbb      	ldrb	r3, [r7, #14]
    4cce:	3301      	adds	r3, #1
    4cd0:	73bb      	strb	r3, [r7, #14]
    4cd2:	7bbb      	ldrb	r3, [r7, #14]
    4cd4:	2b07      	cmp	r3, #7
    4cd6:	d9eb      	bls.n	4cb0 <text_scroller+0x5c>
    4cd8:	687b      	ldr	r3, [r7, #4]
    4cda:	1c5a      	adds	r2, r3, #1
    4cdc:	607a      	str	r2, [r7, #4]
    4cde:	781b      	ldrb	r3, [r3, #0]
    4ce0:	73fb      	strb	r3, [r7, #15]
    4ce2:	7bfb      	ldrb	r3, [r7, #15]
    4ce4:	2b00      	cmp	r3, #0
    4ce6:	d1c6      	bne.n	4c76 <text_scroller+0x22>
    4ce8:	2300      	movs	r3, #0
    4cea:	73fb      	strb	r3, [r7, #15]
    4cec:	e010      	b.n	4d10 <text_scroller+0xbc>
    4cee:	78fb      	ldrb	r3, [r7, #3]
    4cf0:	b29b      	uxth	r3, r3
    4cf2:	4618      	mov	r0, r3
    4cf4:	f000 fb8c 	bl	5410 <game_pause>
    4cf8:	2001      	movs	r0, #1
    4cfa:	f7fd fb07 	bl	230c <gfx_scroll_up>
    4cfe:	2020      	movs	r0, #32
    4d00:	f7fc fe60 	bl	19c4 <btn_query_down>
    4d04:	4603      	mov	r3, r0
    4d06:	2b00      	cmp	r3, #0
    4d08:	d10a      	bne.n	4d20 <text_scroller+0xcc>
    4d0a:	7bfb      	ldrb	r3, [r7, #15]
    4d0c:	3301      	adds	r3, #1
    4d0e:	73fb      	strb	r3, [r7, #15]
    4d10:	7bfb      	ldrb	r3, [r7, #15]
    4d12:	2b1f      	cmp	r3, #31
    4d14:	d9eb      	bls.n	4cee <text_scroller+0x9a>
    4d16:	e004      	b.n	4d22 <text_scroller+0xce>
    4d18:	bf00      	nop
    4d1a:	e002      	b.n	4d22 <text_scroller+0xce>
    4d1c:	bf00      	nop
    4d1e:	e000      	b.n	4d22 <text_scroller+0xce>
    4d20:	bf00      	nop
    4d22:	f7fd fa97 	bl	2254 <gfx_cls>
    4d26:	2020      	movs	r0, #32
    4d28:	f7fc fe90 	bl	1a4c <btn_wait_up>
    4d2c:	bf00      	nop
    4d2e:	3710      	adds	r7, #16
    4d30:	46bd      	mov	sp, r7
    4d32:	bd80      	pop	{r7, pc}

00004d34 <prompt_btn>:
    4d34:	b580      	push	{r7, lr}
    4d36:	af00      	add	r7, sp, #0
    4d38:	4802      	ldr	r0, [pc, #8]	; (4d44 <prompt_btn+0x10>)
    4d3a:	f7ff feab 	bl	4a94 <print>
    4d3e:	bf00      	nop
    4d40:	bd80      	pop	{r7, pc}
    4d42:	bf00      	nop
    4d44:	00005aec 	.word	0x00005aec

00004d48 <clear_screen>:
    4d48:	b580      	push	{r7, lr}
    4d4a:	af00      	add	r7, sp, #0
    4d4c:	f7fd fa82 	bl	2254 <gfx_cls>
    4d50:	4b03      	ldr	r3, [pc, #12]	; (4d60 <clear_screen+0x18>)
    4d52:	2200      	movs	r2, #0
    4d54:	701a      	strb	r2, [r3, #0]
    4d56:	4b03      	ldr	r3, [pc, #12]	; (4d64 <clear_screen+0x1c>)
    4d58:	2200      	movs	r2, #0
    4d5a:	701a      	strb	r2, [r3, #0]
    4d5c:	bf00      	nop
    4d5e:	bd80      	pop	{r7, pc}
    4d60:	2000066d 	.word	0x2000066d
    4d64:	2000066e 	.word	0x2000066e

00004d68 <show_cursor>:
    4d68:	b580      	push	{r7, lr}
    4d6a:	b084      	sub	sp, #16
    4d6c:	af00      	add	r7, sp, #0
    4d6e:	6078      	str	r0, [r7, #4]
    4d70:	687b      	ldr	r3, [r7, #4]
    4d72:	2b00      	cmp	r3, #0
    4d74:	d001      	beq.n	4d7a <show_cursor+0x12>
    4d76:	230f      	movs	r3, #15
    4d78:	e000      	b.n	4d7c <show_cursor+0x14>
    4d7a:	2300      	movs	r3, #0
    4d7c:	72fb      	strb	r3, [r7, #11]
    4d7e:	4b0c      	ldr	r3, [pc, #48]	; (4db0 <show_cursor+0x48>)
    4d80:	781b      	ldrb	r3, [r3, #0]
    4d82:	60fb      	str	r3, [r7, #12]
    4d84:	e00a      	b.n	4d9c <show_cursor+0x34>
    4d86:	4b0b      	ldr	r3, [pc, #44]	; (4db4 <show_cursor+0x4c>)
    4d88:	781b      	ldrb	r3, [r3, #0]
    4d8a:	3307      	adds	r3, #7
    4d8c:	7afa      	ldrb	r2, [r7, #11]
    4d8e:	4619      	mov	r1, r3
    4d90:	68f8      	ldr	r0, [r7, #12]
    4d92:	f7fd fa11 	bl	21b8 <gfx_plot>
    4d96:	68fb      	ldr	r3, [r7, #12]
    4d98:	3301      	adds	r3, #1
    4d9a:	60fb      	str	r3, [r7, #12]
    4d9c:	4b04      	ldr	r3, [pc, #16]	; (4db0 <show_cursor+0x48>)
    4d9e:	781b      	ldrb	r3, [r3, #0]
    4da0:	1d9a      	adds	r2, r3, #6
    4da2:	68fb      	ldr	r3, [r7, #12]
    4da4:	429a      	cmp	r2, r3
    4da6:	dcee      	bgt.n	4d86 <show_cursor+0x1e>
    4da8:	bf00      	nop
    4daa:	3710      	adds	r7, #16
    4dac:	46bd      	mov	sp, r7
    4dae:	bd80      	pop	{r7, pc}
    4db0:	2000066d 	.word	0x2000066d
    4db4:	2000066e 	.word	0x2000066e

00004db8 <tvout_init>:
    4db8:	b580      	push	{r7, lr}
    4dba:	af00      	add	r7, sp, #0
    4dbc:	4b3e      	ldr	r3, [pc, #248]	; (4eb8 <tvout_init+0x100>)
    4dbe:	4a3f      	ldr	r2, [pc, #252]	; (4ebc <tvout_init+0x104>)
    4dc0:	601a      	str	r2, [r3, #0]
    4dc2:	4b3f      	ldr	r3, [pc, #252]	; (4ec0 <tvout_init+0x108>)
    4dc4:	4a3f      	ldr	r2, [pc, #252]	; (4ec4 <tvout_init+0x10c>)
    4dc6:	601a      	str	r2, [r3, #0]
    4dc8:	220a      	movs	r2, #10
    4dca:	2108      	movs	r1, #8
    4dcc:	483a      	ldr	r0, [pc, #232]	; (4eb8 <tvout_init+0x100>)
    4dce:	f7fd f8dd 	bl	1f8c <config_pin>
    4dd2:	4b39      	ldr	r3, [pc, #228]	; (4eb8 <tvout_init+0x100>)
    4dd4:	2200      	movs	r2, #0
    4dd6:	60da      	str	r2, [r3, #12]
    4dd8:	4a3b      	ldr	r2, [pc, #236]	; (4ec8 <tvout_init+0x110>)
    4dda:	4b3b      	ldr	r3, [pc, #236]	; (4ec8 <tvout_init+0x110>)
    4ddc:	699b      	ldr	r3, [r3, #24]
    4dde:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4de2:	6193      	str	r3, [r2, #24]
    4de4:	4b39      	ldr	r3, [pc, #228]	; (4ecc <tvout_init+0x114>)
    4de6:	2278      	movs	r2, #120	; 0x78
    4de8:	619a      	str	r2, [r3, #24]
    4dea:	4b38      	ldr	r3, [pc, #224]	; (4ecc <tvout_init+0x114>)
    4dec:	2201      	movs	r2, #1
    4dee:	621a      	str	r2, [r3, #32]
    4df0:	4b36      	ldr	r3, [pc, #216]	; (4ecc <tvout_init+0x114>)
    4df2:	2284      	movs	r2, #132	; 0x84
    4df4:	601a      	str	r2, [r3, #0]
    4df6:	4b35      	ldr	r3, [pc, #212]	; (4ecc <tvout_init+0x114>)
    4df8:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4dfc:	62da      	str	r2, [r3, #44]	; 0x2c
    4dfe:	4b33      	ldr	r3, [pc, #204]	; (4ecc <tvout_init+0x114>)
    4e00:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4e04:	635a      	str	r2, [r3, #52]	; 0x34
    4e06:	4b31      	ldr	r3, [pc, #196]	; (4ecc <tvout_init+0x114>)
    4e08:	f240 1265 	movw	r2, #357	; 0x165
    4e0c:	639a      	str	r2, [r3, #56]	; 0x38
    4e0e:	4a2f      	ldr	r2, [pc, #188]	; (4ecc <tvout_init+0x114>)
    4e10:	4b2e      	ldr	r3, [pc, #184]	; (4ecc <tvout_init+0x114>)
    4e12:	695b      	ldr	r3, [r3, #20]
    4e14:	f043 0301 	orr.w	r3, r3, #1
    4e18:	6153      	str	r3, [r2, #20]
    4e1a:	4b2c      	ldr	r3, [pc, #176]	; (4ecc <tvout_init+0x114>)
    4e1c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4e20:	645a      	str	r2, [r3, #68]	; 0x44
    4e22:	4b2a      	ldr	r3, [pc, #168]	; (4ecc <tvout_init+0x114>)
    4e24:	2200      	movs	r2, #0
    4e26:	611a      	str	r2, [r3, #16]
    4e28:	4a28      	ldr	r2, [pc, #160]	; (4ecc <tvout_init+0x114>)
    4e2a:	4b28      	ldr	r3, [pc, #160]	; (4ecc <tvout_init+0x114>)
    4e2c:	68db      	ldr	r3, [r3, #12]
    4e2e:	f043 0301 	orr.w	r3, r3, #1
    4e32:	60d3      	str	r3, [r2, #12]
    4e34:	2100      	movs	r1, #0
    4e36:	2019      	movs	r0, #25
    4e38:	f7fe fb26 	bl	3488 <set_int_priority>
    4e3c:	2100      	movs	r1, #0
    4e3e:	201b      	movs	r0, #27
    4e40:	f7fe fb22 	bl	3488 <set_int_priority>
    4e44:	2019      	movs	r0, #25
    4e46:	f7fe fa65 	bl	3314 <enable_interrupt>
    4e4a:	201b      	movs	r0, #27
    4e4c:	f7fe fa62 	bl	3314 <enable_interrupt>
    4e50:	4a1e      	ldr	r2, [pc, #120]	; (4ecc <tvout_init+0x114>)
    4e52:	4b1e      	ldr	r3, [pc, #120]	; (4ecc <tvout_init+0x114>)
    4e54:	681b      	ldr	r3, [r3, #0]
    4e56:	f043 0301 	orr.w	r3, r3, #1
    4e5a:	6013      	str	r3, [r2, #0]
    4e5c:	220a      	movs	r2, #10
    4e5e:	2100      	movs	r1, #0
    4e60:	481b      	ldr	r0, [pc, #108]	; (4ed0 <tvout_init+0x118>)
    4e62:	f7fd f893 	bl	1f8c <config_pin>
    4e66:	4a18      	ldr	r2, [pc, #96]	; (4ec8 <tvout_init+0x110>)
    4e68:	4b17      	ldr	r3, [pc, #92]	; (4ec8 <tvout_init+0x110>)
    4e6a:	69db      	ldr	r3, [r3, #28]
    4e6c:	f043 0302 	orr.w	r3, r3, #2
    4e70:	61d3      	str	r3, [r2, #28]
    4e72:	4b18      	ldr	r3, [pc, #96]	; (4ed4 <tvout_init+0x11c>)
    4e74:	2278      	movs	r2, #120	; 0x78
    4e76:	61da      	str	r2, [r3, #28]
    4e78:	4b16      	ldr	r3, [pc, #88]	; (4ed4 <tvout_init+0x11c>)
    4e7a:	2284      	movs	r2, #132	; 0x84
    4e7c:	601a      	str	r2, [r3, #0]
    4e7e:	4b15      	ldr	r3, [pc, #84]	; (4ed4 <tvout_init+0x11c>)
    4e80:	2213      	movs	r2, #19
    4e82:	62da      	str	r2, [r3, #44]	; 0x2c
    4e84:	4b13      	ldr	r3, [pc, #76]	; (4ed4 <tvout_init+0x11c>)
    4e86:	220a      	movs	r2, #10
    4e88:	63da      	str	r2, [r3, #60]	; 0x3c
    4e8a:	4a12      	ldr	r2, [pc, #72]	; (4ed4 <tvout_init+0x11c>)
    4e8c:	4b11      	ldr	r3, [pc, #68]	; (4ed4 <tvout_init+0x11c>)
    4e8e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4e90:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4e94:	6453      	str	r3, [r2, #68]	; 0x44
    4e96:	4a0f      	ldr	r2, [pc, #60]	; (4ed4 <tvout_init+0x11c>)
    4e98:	4b0e      	ldr	r3, [pc, #56]	; (4ed4 <tvout_init+0x11c>)
    4e9a:	695b      	ldr	r3, [r3, #20]
    4e9c:	f043 0301 	orr.w	r3, r3, #1
    4ea0:	6153      	str	r3, [r2, #20]
    4ea2:	4b0c      	ldr	r3, [pc, #48]	; (4ed4 <tvout_init+0x11c>)
    4ea4:	2200      	movs	r2, #0
    4ea6:	611a      	str	r2, [r3, #16]
    4ea8:	4a0a      	ldr	r2, [pc, #40]	; (4ed4 <tvout_init+0x11c>)
    4eaa:	4b0a      	ldr	r3, [pc, #40]	; (4ed4 <tvout_init+0x11c>)
    4eac:	681b      	ldr	r3, [r3, #0]
    4eae:	f043 0301 	orr.w	r3, r3, #1
    4eb2:	6013      	str	r3, [r2, #0]
    4eb4:	bf00      	nop
    4eb6:	bd80      	pop	{r7, pc}
    4eb8:	40010800 	.word	0x40010800
    4ebc:	88883333 	.word	0x88883333
    4ec0:	40010804 	.word	0x40010804
    4ec4:	84484444 	.word	0x84484444
    4ec8:	40021000 	.word	0x40021000
    4ecc:	40012c00 	.word	0x40012c00
    4ed0:	40010c00 	.word	0x40010c00
    4ed4:	40000400 	.word	0x40000400

00004ed8 <TV_OUT_handler>:
    4ed8:	4668      	mov	r0, sp
    4eda:	f020 0107 	bic.w	r1, r0, #7
    4ede:	468d      	mov	sp, r1
    4ee0:	b471      	push	{r0, r4, r5, r6}
    4ee2:	4a31      	ldr	r2, [pc, #196]	; (4fa8 <TV_OUT_handler+0xd0>)
    4ee4:	6a13      	ldr	r3, [r2, #32]
    4ee6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4eea:	6213      	str	r3, [r2, #32]
    4eec:	492f      	ldr	r1, [pc, #188]	; (4fac <TV_OUT_handler+0xd4>)
    4eee:	f240 2209 	movw	r2, #521	; 0x209
    4ef2:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4ef4:	4293      	cmp	r3, r2
    4ef6:	d9fc      	bls.n	4ef2 <TV_OUT_handler+0x1a>
    4ef8:	4a2b      	ldr	r2, [pc, #172]	; (4fa8 <TV_OUT_handler+0xd0>)
    4efa:	6a13      	ldr	r3, [r2, #32]
    4efc:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4f00:	6213      	str	r3, [r2, #32]
    4f02:	4b2b      	ldr	r3, [pc, #172]	; (4fb0 <TV_OUT_handler+0xd8>)
    4f04:	881d      	ldrh	r5, [r3, #0]
    4f06:	b2ad      	uxth	r5, r5
    4f08:	4b2a      	ldr	r3, [pc, #168]	; (4fb4 <TV_OUT_handler+0xdc>)
    4f0a:	7818      	ldrb	r0, [r3, #0]
    4f0c:	4b2a      	ldr	r3, [pc, #168]	; (4fb8 <TV_OUT_handler+0xe0>)
    4f0e:	781b      	ldrb	r3, [r3, #0]
    4f10:	fb95 f5f3 	sdiv	r5, r5, r3
    4f14:	4b29      	ldr	r3, [pc, #164]	; (4fbc <TV_OUT_handler+0xe4>)
    4f16:	fb00 3505 	mla	r5, r0, r5, r3
    4f1a:	4b29      	ldr	r3, [pc, #164]	; (4fc0 <TV_OUT_handler+0xe8>)
    4f1c:	881a      	ldrh	r2, [r3, #0]
    4f1e:	4923      	ldr	r1, [pc, #140]	; (4fac <TV_OUT_handler+0xd4>)
    4f20:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4f22:	4293      	cmp	r3, r2
    4f24:	d3fc      	bcc.n	4f20 <TV_OUT_handler+0x48>
    4f26:	4b27      	ldr	r3, [pc, #156]	; (4fc4 <TV_OUT_handler+0xec>)
    4f28:	461a      	mov	r2, r3
    4f2a:	6812      	ldr	r2, [r2, #0]
    4f2c:	f002 0207 	and.w	r2, r2, #7
    4f30:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4f34:	4497      	add	pc, r2
    4f36:	bf00      	nop
    4f38:	bf00      	nop
    4f3a:	bf00      	nop
    4f3c:	bf00      	nop
    4f3e:	bf00      	nop
    4f40:	bf00      	nop
    4f42:	bf00      	nop
    4f44:	bf00      	nop
    4f46:	4a18      	ldr	r2, [pc, #96]	; (4fa8 <TV_OUT_handler+0xd0>)
    4f48:	6a11      	ldr	r1, [r2, #32]
    4f4a:	4b1f      	ldr	r3, [pc, #124]	; (4fc8 <TV_OUT_handler+0xf0>)
    4f4c:	881b      	ldrh	r3, [r3, #0]
    4f4e:	430b      	orrs	r3, r1
    4f50:	6213      	str	r3, [r2, #32]
    4f52:	b1b8      	cbz	r0, 4f84 <TV_OUT_handler+0xac>
    4f54:	462b      	mov	r3, r5
    4f56:	481d      	ldr	r0, [pc, #116]	; (4fcc <TV_OUT_handler+0xf4>)
    4f58:	491d      	ldr	r1, [pc, #116]	; (4fd0 <TV_OUT_handler+0xf8>)
    4f5a:	4e16      	ldr	r6, [pc, #88]	; (4fb4 <TV_OUT_handler+0xdc>)
    4f5c:	781a      	ldrb	r2, [r3, #0]
    4f5e:	0912      	lsrs	r2, r2, #4
    4f60:	8002      	strh	r2, [r0, #0]
    4f62:	780c      	ldrb	r4, [r1, #0]
    4f64:	4622      	mov	r2, r4
    4f66:	3a01      	subs	r2, #1
    4f68:	d1fd      	bne.n	4f66 <TV_OUT_handler+0x8e>
    4f6a:	f813 2b01 	ldrb.w	r2, [r3], #1
    4f6e:	f002 020f 	and.w	r2, r2, #15
    4f72:	8002      	strh	r2, [r0, #0]
    4f74:	780c      	ldrb	r4, [r1, #0]
    4f76:	4622      	mov	r2, r4
    4f78:	3a01      	subs	r2, #1
    4f7a:	d1fd      	bne.n	4f78 <TV_OUT_handler+0xa0>
    4f7c:	1b5c      	subs	r4, r3, r5
    4f7e:	7832      	ldrb	r2, [r6, #0]
    4f80:	4294      	cmp	r4, r2
    4f82:	d3eb      	bcc.n	4f5c <TV_OUT_handler+0x84>
    4f84:	2200      	movs	r2, #0
    4f86:	4b13      	ldr	r3, [pc, #76]	; (4fd4 <TV_OUT_handler+0xfc>)
    4f88:	60da      	str	r2, [r3, #12]
    4f8a:	4a07      	ldr	r2, [pc, #28]	; (4fa8 <TV_OUT_handler+0xd0>)
    4f8c:	6a13      	ldr	r3, [r2, #32]
    4f8e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4f92:	6213      	str	r3, [r2, #32]
    4f94:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4f98:	6913      	ldr	r3, [r2, #16]
    4f9a:	f023 0304 	bic.w	r3, r3, #4
    4f9e:	6113      	str	r3, [r2, #16]
    4fa0:	bc71      	pop	{r0, r4, r5, r6}
    4fa2:	4685      	mov	sp, r0
    4fa4:	4770      	bx	lr
    4fa6:	bf00      	nop
    4fa8:	40000400 	.word	0x40000400
    4fac:	40012c00 	.word	0x40012c00
    4fb0:	20000674 	.word	0x20000674
    4fb4:	200001d0 	.word	0x200001d0
    4fb8:	200001d1 	.word	0x200001d1
    4fbc:	200026a8 	.word	0x200026a8
    4fc0:	200001ce 	.word	0x200001ce
    4fc4:	40012c24 	.word	0x40012c24
    4fc8:	200001d6 	.word	0x200001d6
    4fcc:	4001080c 	.word	0x4001080c
    4fd0:	200001d2 	.word	0x200001d2
    4fd4:	40010800 	.word	0x40010800

00004fd8 <TV_SYNC_handler>:
    4fd8:	4668      	mov	r0, sp
    4fda:	f020 0107 	bic.w	r1, r0, #7
    4fde:	468d      	mov	sp, r1
    4fe0:	b501      	push	{r0, lr}
    4fe2:	4a84      	ldr	r2, [pc, #528]	; (51f4 <TV_SYNC_handler+0x21c>)
    4fe4:	8813      	ldrh	r3, [r2, #0]
    4fe6:	3301      	adds	r3, #1
    4fe8:	b29b      	uxth	r3, r3
    4fea:	8013      	strh	r3, [r2, #0]
    4fec:	4a82      	ldr	r2, [pc, #520]	; (51f8 <TV_SYNC_handler+0x220>)
    4fee:	6813      	ldr	r3, [r2, #0]
    4ff0:	3301      	adds	r3, #1
    4ff2:	6013      	str	r3, [r2, #0]
    4ff4:	4b81      	ldr	r3, [pc, #516]	; (51fc <TV_SYNC_handler+0x224>)
    4ff6:	881b      	ldrh	r3, [r3, #0]
    4ff8:	b29b      	uxth	r3, r3
    4ffa:	2b09      	cmp	r3, #9
    4ffc:	f200 8088 	bhi.w	5110 <TV_SYNC_handler+0x138>
    5000:	e8df f013 	tbh	[pc, r3, lsl #1]
    5004:	002c000a 	.word	0x002c000a
    5008:	006e004c 	.word	0x006e004c
    500c:	0097008f 	.word	0x0097008f
    5010:	00bb00ac 	.word	0x00bb00ac
    5014:	010c00da 	.word	0x010c00da
    5018:	4b79      	ldr	r3, [pc, #484]	; (5200 <TV_SYNC_handler+0x228>)
    501a:	881b      	ldrh	r3, [r3, #0]
    501c:	b29b      	uxth	r3, r3
    501e:	b18b      	cbz	r3, 5044 <TV_SYNC_handler+0x6c>
    5020:	4a77      	ldr	r2, [pc, #476]	; (5200 <TV_SYNC_handler+0x228>)
    5022:	8813      	ldrh	r3, [r2, #0]
    5024:	3301      	adds	r3, #1
    5026:	b29b      	uxth	r3, r3
    5028:	8013      	strh	r3, [r2, #0]
    502a:	8813      	ldrh	r3, [r2, #0]
    502c:	b29b      	uxth	r3, r3
    502e:	2b06      	cmp	r3, #6
    5030:	d16e      	bne.n	5110 <TV_SYNC_handler+0x138>
    5032:	2200      	movs	r2, #0
    5034:	4b72      	ldr	r3, [pc, #456]	; (5200 <TV_SYNC_handler+0x228>)
    5036:	801a      	strh	r2, [r3, #0]
    5038:	4a70      	ldr	r2, [pc, #448]	; (51fc <TV_SYNC_handler+0x224>)
    503a:	8813      	ldrh	r3, [r2, #0]
    503c:	3301      	adds	r3, #1
    503e:	b29b      	uxth	r3, r3
    5040:	8013      	strh	r3, [r2, #0]
    5042:	e065      	b.n	5110 <TV_SYNC_handler+0x138>
    5044:	4b6f      	ldr	r3, [pc, #444]	; (5204 <TV_SYNC_handler+0x22c>)
    5046:	f640 02e2 	movw	r2, #2274	; 0x8e2
    504a:	62da      	str	r2, [r3, #44]	; 0x2c
    504c:	22a4      	movs	r2, #164	; 0xa4
    504e:	635a      	str	r2, [r3, #52]	; 0x34
    5050:	4a6b      	ldr	r2, [pc, #428]	; (5200 <TV_SYNC_handler+0x228>)
    5052:	8813      	ldrh	r3, [r2, #0]
    5054:	3301      	adds	r3, #1
    5056:	b29b      	uxth	r3, r3
    5058:	8013      	strh	r3, [r2, #0]
    505a:	e059      	b.n	5110 <TV_SYNC_handler+0x138>
    505c:	4b68      	ldr	r3, [pc, #416]	; (5200 <TV_SYNC_handler+0x228>)
    505e:	881b      	ldrh	r3, [r3, #0]
    5060:	b29b      	uxth	r3, r3
    5062:	b18b      	cbz	r3, 5088 <TV_SYNC_handler+0xb0>
    5064:	4a66      	ldr	r2, [pc, #408]	; (5200 <TV_SYNC_handler+0x228>)
    5066:	8813      	ldrh	r3, [r2, #0]
    5068:	3301      	adds	r3, #1
    506a:	b29b      	uxth	r3, r3
    506c:	8013      	strh	r3, [r2, #0]
    506e:	8813      	ldrh	r3, [r2, #0]
    5070:	b29b      	uxth	r3, r3
    5072:	2b06      	cmp	r3, #6
    5074:	d14c      	bne.n	5110 <TV_SYNC_handler+0x138>
    5076:	2200      	movs	r2, #0
    5078:	4b61      	ldr	r3, [pc, #388]	; (5200 <TV_SYNC_handler+0x228>)
    507a:	801a      	strh	r2, [r3, #0]
    507c:	4a5f      	ldr	r2, [pc, #380]	; (51fc <TV_SYNC_handler+0x224>)
    507e:	8813      	ldrh	r3, [r2, #0]
    5080:	3301      	adds	r3, #1
    5082:	b29b      	uxth	r3, r3
    5084:	8013      	strh	r3, [r2, #0]
    5086:	e043      	b.n	5110 <TV_SYNC_handler+0x138>
    5088:	f240 7294 	movw	r2, #1940	; 0x794
    508c:	4b5d      	ldr	r3, [pc, #372]	; (5204 <TV_SYNC_handler+0x22c>)
    508e:	635a      	str	r2, [r3, #52]	; 0x34
    5090:	4a5b      	ldr	r2, [pc, #364]	; (5200 <TV_SYNC_handler+0x228>)
    5092:	8813      	ldrh	r3, [r2, #0]
    5094:	3301      	adds	r3, #1
    5096:	b29b      	uxth	r3, r3
    5098:	8013      	strh	r3, [r2, #0]
    509a:	e039      	b.n	5110 <TV_SYNC_handler+0x138>
    509c:	4b58      	ldr	r3, [pc, #352]	; (5200 <TV_SYNC_handler+0x228>)
    509e:	881b      	ldrh	r3, [r3, #0]
    50a0:	b29b      	uxth	r3, r3
    50a2:	b153      	cbz	r3, 50ba <TV_SYNC_handler+0xe2>
    50a4:	4b56      	ldr	r3, [pc, #344]	; (5200 <TV_SYNC_handler+0x228>)
    50a6:	881b      	ldrh	r3, [r3, #0]
    50a8:	b29b      	uxth	r3, r3
    50aa:	2b06      	cmp	r3, #6
    50ac:	d00e      	beq.n	50cc <TV_SYNC_handler+0xf4>
    50ae:	4a54      	ldr	r2, [pc, #336]	; (5200 <TV_SYNC_handler+0x228>)
    50b0:	8813      	ldrh	r3, [r2, #0]
    50b2:	3301      	adds	r3, #1
    50b4:	b29b      	uxth	r3, r3
    50b6:	8013      	strh	r3, [r2, #0]
    50b8:	e02a      	b.n	5110 <TV_SYNC_handler+0x138>
    50ba:	22a4      	movs	r2, #164	; 0xa4
    50bc:	4b51      	ldr	r3, [pc, #324]	; (5204 <TV_SYNC_handler+0x22c>)
    50be:	635a      	str	r2, [r3, #52]	; 0x34
    50c0:	4a4f      	ldr	r2, [pc, #316]	; (5200 <TV_SYNC_handler+0x228>)
    50c2:	8813      	ldrh	r3, [r2, #0]
    50c4:	3301      	adds	r3, #1
    50c6:	b29b      	uxth	r3, r3
    50c8:	8013      	strh	r3, [r2, #0]
    50ca:	e021      	b.n	5110 <TV_SYNC_handler+0x138>
    50cc:	4a4b      	ldr	r2, [pc, #300]	; (51fc <TV_SYNC_handler+0x224>)
    50ce:	8813      	ldrh	r3, [r2, #0]
    50d0:	3301      	adds	r3, #1
    50d2:	b29b      	uxth	r3, r3
    50d4:	8013      	strh	r3, [r2, #0]
    50d6:	4b4c      	ldr	r3, [pc, #304]	; (5208 <TV_SYNC_handler+0x230>)
    50d8:	881b      	ldrh	r3, [r3, #0]
    50da:	f013 0f01 	tst.w	r3, #1
    50de:	d017      	beq.n	5110 <TV_SYNC_handler+0x138>
    50e0:	4b48      	ldr	r3, [pc, #288]	; (5204 <TV_SYNC_handler+0x22c>)
    50e2:	f241 12c5 	movw	r2, #4549	; 0x11c5
    50e6:	62da      	str	r2, [r3, #44]	; 0x2c
    50e8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    50ec:	635a      	str	r2, [r3, #52]	; 0x34
    50ee:	4a46      	ldr	r2, [pc, #280]	; (5208 <TV_SYNC_handler+0x230>)
    50f0:	8813      	ldrh	r3, [r2, #0]
    50f2:	f023 0302 	bic.w	r3, r3, #2
    50f6:	041b      	lsls	r3, r3, #16
    50f8:	0c1b      	lsrs	r3, r3, #16
    50fa:	8013      	strh	r3, [r2, #0]
    50fc:	4a3d      	ldr	r2, [pc, #244]	; (51f4 <TV_SYNC_handler+0x21c>)
    50fe:	8813      	ldrh	r3, [r2, #0]
    5100:	f3c3 038d 	ubfx	r3, r3, #2, #14
    5104:	8013      	strh	r3, [r2, #0]
    5106:	4a3d      	ldr	r2, [pc, #244]	; (51fc <TV_SYNC_handler+0x224>)
    5108:	8813      	ldrh	r3, [r2, #0]
    510a:	3301      	adds	r3, #1
    510c:	b29b      	uxth	r3, r3
    510e:	8013      	strh	r3, [r2, #0]
    5110:	4a3c      	ldr	r2, [pc, #240]	; (5204 <TV_SYNC_handler+0x22c>)
    5112:	6913      	ldr	r3, [r2, #16]
    5114:	f023 0301 	bic.w	r3, r3, #1
    5118:	6113      	str	r3, [r2, #16]
    511a:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    511e:	4685      	mov	sp, r0
    5120:	4770      	bx	lr
    5122:	f7fc fc33 	bl	198c <read_gamepad>
    5126:	4a35      	ldr	r2, [pc, #212]	; (51fc <TV_SYNC_handler+0x224>)
    5128:	8813      	ldrh	r3, [r2, #0]
    512a:	3301      	adds	r3, #1
    512c:	b29b      	uxth	r3, r3
    512e:	8013      	strh	r3, [r2, #0]
    5130:	e7ee      	b.n	5110 <TV_SYNC_handler+0x138>
    5132:	4b36      	ldr	r3, [pc, #216]	; (520c <TV_SYNC_handler+0x234>)
    5134:	881b      	ldrh	r3, [r3, #0]
    5136:	b29b      	uxth	r3, r3
    5138:	b13b      	cbz	r3, 514a <TV_SYNC_handler+0x172>
    513a:	4a34      	ldr	r2, [pc, #208]	; (520c <TV_SYNC_handler+0x234>)
    513c:	8813      	ldrh	r3, [r2, #0]
    513e:	3b01      	subs	r3, #1
    5140:	b29b      	uxth	r3, r3
    5142:	8013      	strh	r3, [r2, #0]
    5144:	8813      	ldrh	r3, [r2, #0]
    5146:	b29b      	uxth	r3, r3
    5148:	b12b      	cbz	r3, 5156 <TV_SYNC_handler+0x17e>
    514a:	4a2c      	ldr	r2, [pc, #176]	; (51fc <TV_SYNC_handler+0x224>)
    514c:	8813      	ldrh	r3, [r2, #0]
    514e:	3301      	adds	r3, #1
    5150:	b29b      	uxth	r3, r3
    5152:	8013      	strh	r3, [r2, #0]
    5154:	e7dc      	b.n	5110 <TV_SYNC_handler+0x138>
    5156:	f7ff f8dd 	bl	4314 <sound_stop>
    515a:	e7f6      	b.n	514a <TV_SYNC_handler+0x172>
    515c:	4b2c      	ldr	r3, [pc, #176]	; (5210 <TV_SYNC_handler+0x238>)
    515e:	881b      	ldrh	r3, [r3, #0]
    5160:	b29b      	uxth	r3, r3
    5162:	b123      	cbz	r3, 516e <TV_SYNC_handler+0x196>
    5164:	4a2a      	ldr	r2, [pc, #168]	; (5210 <TV_SYNC_handler+0x238>)
    5166:	8813      	ldrh	r3, [r2, #0]
    5168:	3b01      	subs	r3, #1
    516a:	b29b      	uxth	r3, r3
    516c:	8013      	strh	r3, [r2, #0]
    516e:	4a23      	ldr	r2, [pc, #140]	; (51fc <TV_SYNC_handler+0x224>)
    5170:	8813      	ldrh	r3, [r2, #0]
    5172:	3301      	adds	r3, #1
    5174:	b29b      	uxth	r3, r3
    5176:	8013      	strh	r3, [r2, #0]
    5178:	e7ca      	b.n	5110 <TV_SYNC_handler+0x138>
    517a:	4b1e      	ldr	r3, [pc, #120]	; (51f4 <TV_SYNC_handler+0x21c>)
    517c:	881b      	ldrh	r3, [r3, #0]
    517e:	b29b      	uxth	r3, r3
    5180:	4a24      	ldr	r2, [pc, #144]	; (5214 <TV_SYNC_handler+0x23c>)
    5182:	8812      	ldrh	r2, [r2, #0]
    5184:	429a      	cmp	r2, r3
    5186:	d1c3      	bne.n	5110 <TV_SYNC_handler+0x138>
    5188:	4b1e      	ldr	r3, [pc, #120]	; (5204 <TV_SYNC_handler+0x22c>)
    518a:	691a      	ldr	r2, [r3, #16]
    518c:	f022 0204 	bic.w	r2, r2, #4
    5190:	611a      	str	r2, [r3, #16]
    5192:	68da      	ldr	r2, [r3, #12]
    5194:	f042 0204 	orr.w	r2, r2, #4
    5198:	60da      	str	r2, [r3, #12]
    519a:	4a1b      	ldr	r2, [pc, #108]	; (5208 <TV_SYNC_handler+0x230>)
    519c:	8813      	ldrh	r3, [r2, #0]
    519e:	b29b      	uxth	r3, r3
    51a0:	f043 0304 	orr.w	r3, r3, #4
    51a4:	8013      	strh	r3, [r2, #0]
    51a6:	4a15      	ldr	r2, [pc, #84]	; (51fc <TV_SYNC_handler+0x224>)
    51a8:	8813      	ldrh	r3, [r2, #0]
    51aa:	3301      	adds	r3, #1
    51ac:	b29b      	uxth	r3, r3
    51ae:	8013      	strh	r3, [r2, #0]
    51b0:	2200      	movs	r2, #0
    51b2:	4b13      	ldr	r3, [pc, #76]	; (5200 <TV_SYNC_handler+0x228>)
    51b4:	801a      	strh	r2, [r3, #0]
    51b6:	e7ab      	b.n	5110 <TV_SYNC_handler+0x138>
    51b8:	4a11      	ldr	r2, [pc, #68]	; (5200 <TV_SYNC_handler+0x228>)
    51ba:	8813      	ldrh	r3, [r2, #0]
    51bc:	3301      	adds	r3, #1
    51be:	b29b      	uxth	r3, r3
    51c0:	8013      	strh	r3, [r2, #0]
    51c2:	4b0c      	ldr	r3, [pc, #48]	; (51f4 <TV_SYNC_handler+0x21c>)
    51c4:	881b      	ldrh	r3, [r3, #0]
    51c6:	b29b      	uxth	r3, r3
    51c8:	4a13      	ldr	r2, [pc, #76]	; (5218 <TV_SYNC_handler+0x240>)
    51ca:	8812      	ldrh	r2, [r2, #0]
    51cc:	429a      	cmp	r2, r3
    51ce:	d19f      	bne.n	5110 <TV_SYNC_handler+0x138>
    51d0:	4a0c      	ldr	r2, [pc, #48]	; (5204 <TV_SYNC_handler+0x22c>)
    51d2:	68d3      	ldr	r3, [r2, #12]
    51d4:	f023 0304 	bic.w	r3, r3, #4
    51d8:	60d3      	str	r3, [r2, #12]
    51da:	4a0b      	ldr	r2, [pc, #44]	; (5208 <TV_SYNC_handler+0x230>)
    51dc:	8813      	ldrh	r3, [r2, #0]
    51de:	f023 0304 	bic.w	r3, r3, #4
    51e2:	041b      	lsls	r3, r3, #16
    51e4:	0c1b      	lsrs	r3, r3, #16
    51e6:	8013      	strh	r3, [r2, #0]
    51e8:	4a04      	ldr	r2, [pc, #16]	; (51fc <TV_SYNC_handler+0x224>)
    51ea:	8813      	ldrh	r3, [r2, #0]
    51ec:	3301      	adds	r3, #1
    51ee:	b29b      	uxth	r3, r3
    51f0:	8013      	strh	r3, [r2, #0]
    51f2:	e78d      	b.n	5110 <TV_SYNC_handler+0x138>
    51f4:	20000676 	.word	0x20000676
    51f8:	20004e0c 	.word	0x20004e0c
    51fc:	20000670 	.word	0x20000670
    5200:	20000674 	.word	0x20000674
    5204:	40012c00 	.word	0x40012c00
    5208:	20000672 	.word	0x20000672
    520c:	20004e10 	.word	0x20004e10
    5210:	20004e08 	.word	0x20004e08
    5214:	200001ca 	.word	0x200001ca
    5218:	200001cc 	.word	0x200001cc
    521c:	4b11      	ldr	r3, [pc, #68]	; (5264 <TV_SYNC_handler+0x28c>)
    521e:	881b      	ldrh	r3, [r3, #0]
    5220:	b29b      	uxth	r3, r3
    5222:	f240 1207 	movw	r2, #263	; 0x107
    5226:	4293      	cmp	r3, r2
    5228:	f47f af72 	bne.w	5110 <TV_SYNC_handler+0x138>
    522c:	4b0e      	ldr	r3, [pc, #56]	; (5268 <TV_SYNC_handler+0x290>)
    522e:	881b      	ldrh	r3, [r3, #0]
    5230:	f013 0f01 	tst.w	r3, #1
    5234:	d003      	beq.n	523e <TV_SYNC_handler+0x266>
    5236:	f640 02e2 	movw	r2, #2274	; 0x8e2
    523a:	4b0c      	ldr	r3, [pc, #48]	; (526c <TV_SYNC_handler+0x294>)
    523c:	62da      	str	r2, [r3, #44]	; 0x2c
    523e:	4a0a      	ldr	r2, [pc, #40]	; (5268 <TV_SYNC_handler+0x290>)
    5240:	8813      	ldrh	r3, [r2, #0]
    5242:	b29b      	uxth	r3, r3
    5244:	f083 0301 	eor.w	r3, r3, #1
    5248:	8013      	strh	r3, [r2, #0]
    524a:	8813      	ldrh	r3, [r2, #0]
    524c:	b29b      	uxth	r3, r3
    524e:	f043 0302 	orr.w	r3, r3, #2
    5252:	8013      	strh	r3, [r2, #0]
    5254:	2300      	movs	r3, #0
    5256:	4a03      	ldr	r2, [pc, #12]	; (5264 <TV_SYNC_handler+0x28c>)
    5258:	8013      	strh	r3, [r2, #0]
    525a:	4a05      	ldr	r2, [pc, #20]	; (5270 <TV_SYNC_handler+0x298>)
    525c:	8013      	strh	r3, [r2, #0]
    525e:	4a05      	ldr	r2, [pc, #20]	; (5274 <TV_SYNC_handler+0x29c>)
    5260:	8013      	strh	r3, [r2, #0]
    5262:	e755      	b.n	5110 <TV_SYNC_handler+0x138>
    5264:	20000676 	.word	0x20000676
    5268:	20000672 	.word	0x20000672
    526c:	40012c00 	.word	0x40012c00
    5270:	20000674 	.word	0x20000674
    5274:	20000670 	.word	0x20000670

00005278 <frame_sync>:
    5278:	b480      	push	{r7}
    527a:	af00      	add	r7, sp, #0
    527c:	bf00      	nop
    527e:	4b05      	ldr	r3, [pc, #20]	; (5294 <frame_sync+0x1c>)
    5280:	881b      	ldrh	r3, [r3, #0]
    5282:	b29b      	uxth	r3, r3
    5284:	f003 0302 	and.w	r3, r3, #2
    5288:	2b00      	cmp	r3, #0
    528a:	d0f8      	beq.n	527e <frame_sync+0x6>
    528c:	bf00      	nop
    528e:	46bd      	mov	sp, r7
    5290:	bc80      	pop	{r7}
    5292:	4770      	bx	lr
    5294:	20000672 	.word	0x20000672

00005298 <wait_sync_end>:
    5298:	b480      	push	{r7}
    529a:	af00      	add	r7, sp, #0
    529c:	bf00      	nop
    529e:	4b05      	ldr	r3, [pc, #20]	; (52b4 <wait_sync_end+0x1c>)
    52a0:	881b      	ldrh	r3, [r3, #0]
    52a2:	b29b      	uxth	r3, r3
    52a4:	f003 0302 	and.w	r3, r3, #2
    52a8:	2b00      	cmp	r3, #0
    52aa:	d1f8      	bne.n	529e <wait_sync_end+0x6>
    52ac:	bf00      	nop
    52ae:	46bd      	mov	sp, r7
    52b0:	bc80      	pop	{r7}
    52b2:	4770      	bx	lr
    52b4:	20000672 	.word	0x20000672

000052b8 <set_video_mode>:
    52b8:	b580      	push	{r7, lr}
    52ba:	b082      	sub	sp, #8
    52bc:	af00      	add	r7, sp, #0
    52be:	4603      	mov	r3, r0
    52c0:	71fb      	strb	r3, [r7, #7]
    52c2:	f7ff ffd9 	bl	5278 <frame_sync>
    52c6:	4a3c      	ldr	r2, [pc, #240]	; (53b8 <set_video_mode+0x100>)
    52c8:	79fb      	ldrb	r3, [r7, #7]
    52ca:	7013      	strb	r3, [r2, #0]
    52cc:	79fb      	ldrb	r3, [r7, #7]
    52ce:	2b00      	cmp	r3, #0
    52d0:	d103      	bne.n	52da <set_video_mode+0x22>
    52d2:	4b3a      	ldr	r3, [pc, #232]	; (53bc <set_video_mode+0x104>)
    52d4:	2204      	movs	r2, #4
    52d6:	701a      	strb	r2, [r3, #0]
    52d8:	e002      	b.n	52e0 <set_video_mode+0x28>
    52da:	4b38      	ldr	r3, [pc, #224]	; (53bc <set_video_mode+0x104>)
    52dc:	2201      	movs	r2, #1
    52de:	701a      	strb	r2, [r3, #0]
    52e0:	79fa      	ldrb	r2, [r7, #7]
    52e2:	4937      	ldr	r1, [pc, #220]	; (53c0 <set_video_mode+0x108>)
    52e4:	4613      	mov	r3, r2
    52e6:	00db      	lsls	r3, r3, #3
    52e8:	4413      	add	r3, r2
    52ea:	005b      	lsls	r3, r3, #1
    52ec:	440b      	add	r3, r1
    52ee:	3302      	adds	r3, #2
    52f0:	881a      	ldrh	r2, [r3, #0]
    52f2:	4b34      	ldr	r3, [pc, #208]	; (53c4 <set_video_mode+0x10c>)
    52f4:	801a      	strh	r2, [r3, #0]
    52f6:	79fa      	ldrb	r2, [r7, #7]
    52f8:	4931      	ldr	r1, [pc, #196]	; (53c0 <set_video_mode+0x108>)
    52fa:	4613      	mov	r3, r2
    52fc:	00db      	lsls	r3, r3, #3
    52fe:	4413      	add	r3, r2
    5300:	005b      	lsls	r3, r3, #1
    5302:	440b      	add	r3, r1
    5304:	3304      	adds	r3, #4
    5306:	881a      	ldrh	r2, [r3, #0]
    5308:	4b2f      	ldr	r3, [pc, #188]	; (53c8 <set_video_mode+0x110>)
    530a:	801a      	strh	r2, [r3, #0]
    530c:	79fa      	ldrb	r2, [r7, #7]
    530e:	492c      	ldr	r1, [pc, #176]	; (53c0 <set_video_mode+0x108>)
    5310:	4613      	mov	r3, r2
    5312:	00db      	lsls	r3, r3, #3
    5314:	4413      	add	r3, r2
    5316:	005b      	lsls	r3, r3, #1
    5318:	440b      	add	r3, r1
    531a:	3306      	adds	r3, #6
    531c:	881a      	ldrh	r2, [r3, #0]
    531e:	4b2b      	ldr	r3, [pc, #172]	; (53cc <set_video_mode+0x114>)
    5320:	801a      	strh	r2, [r3, #0]
    5322:	79fa      	ldrb	r2, [r7, #7]
    5324:	4926      	ldr	r1, [pc, #152]	; (53c0 <set_video_mode+0x108>)
    5326:	4613      	mov	r3, r2
    5328:	00db      	lsls	r3, r3, #3
    532a:	4413      	add	r3, r2
    532c:	005b      	lsls	r3, r3, #1
    532e:	440b      	add	r3, r1
    5330:	3308      	adds	r3, #8
    5332:	781a      	ldrb	r2, [r3, #0]
    5334:	4b26      	ldr	r3, [pc, #152]	; (53d0 <set_video_mode+0x118>)
    5336:	701a      	strb	r2, [r3, #0]
    5338:	79fa      	ldrb	r2, [r7, #7]
    533a:	4921      	ldr	r1, [pc, #132]	; (53c0 <set_video_mode+0x108>)
    533c:	4613      	mov	r3, r2
    533e:	00db      	lsls	r3, r3, #3
    5340:	4413      	add	r3, r2
    5342:	005b      	lsls	r3, r3, #1
    5344:	440b      	add	r3, r1
    5346:	3309      	adds	r3, #9
    5348:	781a      	ldrb	r2, [r3, #0]
    534a:	4b22      	ldr	r3, [pc, #136]	; (53d4 <set_video_mode+0x11c>)
    534c:	701a      	strb	r2, [r3, #0]
    534e:	79fa      	ldrb	r2, [r7, #7]
    5350:	491b      	ldr	r1, [pc, #108]	; (53c0 <set_video_mode+0x108>)
    5352:	4613      	mov	r3, r2
    5354:	00db      	lsls	r3, r3, #3
    5356:	4413      	add	r3, r2
    5358:	005b      	lsls	r3, r3, #1
    535a:	440b      	add	r3, r1
    535c:	330a      	adds	r3, #10
    535e:	781a      	ldrb	r2, [r3, #0]
    5360:	4b1d      	ldr	r3, [pc, #116]	; (53d8 <set_video_mode+0x120>)
    5362:	701a      	strb	r2, [r3, #0]
    5364:	79fa      	ldrb	r2, [r7, #7]
    5366:	4916      	ldr	r1, [pc, #88]	; (53c0 <set_video_mode+0x108>)
    5368:	4613      	mov	r3, r2
    536a:	00db      	lsls	r3, r3, #3
    536c:	4413      	add	r3, r2
    536e:	005b      	lsls	r3, r3, #1
    5370:	440b      	add	r3, r1
    5372:	330c      	adds	r3, #12
    5374:	881b      	ldrh	r3, [r3, #0]
    5376:	b2da      	uxtb	r2, r3
    5378:	4b18      	ldr	r3, [pc, #96]	; (53dc <set_video_mode+0x124>)
    537a:	701a      	strb	r2, [r3, #0]
    537c:	79fa      	ldrb	r2, [r7, #7]
    537e:	4910      	ldr	r1, [pc, #64]	; (53c0 <set_video_mode+0x108>)
    5380:	4613      	mov	r3, r2
    5382:	00db      	lsls	r3, r3, #3
    5384:	4413      	add	r3, r2
    5386:	005b      	lsls	r3, r3, #1
    5388:	440b      	add	r3, r1
    538a:	330e      	adds	r3, #14
    538c:	881b      	ldrh	r3, [r3, #0]
    538e:	b2da      	uxtb	r2, r3
    5390:	4b13      	ldr	r3, [pc, #76]	; (53e0 <set_video_mode+0x128>)
    5392:	701a      	strb	r2, [r3, #0]
    5394:	79fa      	ldrb	r2, [r7, #7]
    5396:	490a      	ldr	r1, [pc, #40]	; (53c0 <set_video_mode+0x108>)
    5398:	4613      	mov	r3, r2
    539a:	00db      	lsls	r3, r3, #3
    539c:	4413      	add	r3, r2
    539e:	005b      	lsls	r3, r3, #1
    53a0:	440b      	add	r3, r1
    53a2:	3310      	adds	r3, #16
    53a4:	881a      	ldrh	r2, [r3, #0]
    53a6:	4b0f      	ldr	r3, [pc, #60]	; (53e4 <set_video_mode+0x12c>)
    53a8:	801a      	strh	r2, [r3, #0]
    53aa:	f7fc ff53 	bl	2254 <gfx_cls>
    53ae:	bf00      	nop
    53b0:	3708      	adds	r7, #8
    53b2:	46bd      	mov	sp, r7
    53b4:	bd80      	pop	{r7, pc}
    53b6:	bf00      	nop
    53b8:	20000678 	.word	0x20000678
    53bc:	20000158 	.word	0x20000158
    53c0:	00005afc 	.word	0x00005afc
    53c4:	200001ca 	.word	0x200001ca
    53c8:	200001cc 	.word	0x200001cc
    53cc:	200001ce 	.word	0x200001ce
    53d0:	200001d0 	.word	0x200001d0
    53d4:	200001d1 	.word	0x200001d1
    53d8:	200001d2 	.word	0x200001d2
    53dc:	200001d3 	.word	0x200001d3
    53e0:	200001d4 	.word	0x200001d4
    53e4:	200001d6 	.word	0x200001d6

000053e8 <get_video_params>:
    53e8:	b480      	push	{r7}
    53ea:	af00      	add	r7, sp, #0
    53ec:	4b06      	ldr	r3, [pc, #24]	; (5408 <get_video_params+0x20>)
    53ee:	781b      	ldrb	r3, [r3, #0]
    53f0:	461a      	mov	r2, r3
    53f2:	4613      	mov	r3, r2
    53f4:	00db      	lsls	r3, r3, #3
    53f6:	4413      	add	r3, r2
    53f8:	005b      	lsls	r3, r3, #1
    53fa:	4a04      	ldr	r2, [pc, #16]	; (540c <get_video_params+0x24>)
    53fc:	4413      	add	r3, r2
    53fe:	4618      	mov	r0, r3
    5400:	46bd      	mov	sp, r7
    5402:	bc80      	pop	{r7}
    5404:	4770      	bx	lr
    5406:	bf00      	nop
    5408:	20000678 	.word	0x20000678
    540c:	00005afc 	.word	0x00005afc

00005410 <game_pause>:
    5410:	b480      	push	{r7}
    5412:	b083      	sub	sp, #12
    5414:	af00      	add	r7, sp, #0
    5416:	4603      	mov	r3, r0
    5418:	80fb      	strh	r3, [r7, #6]
    541a:	4a07      	ldr	r2, [pc, #28]	; (5438 <game_pause+0x28>)
    541c:	88fb      	ldrh	r3, [r7, #6]
    541e:	8013      	strh	r3, [r2, #0]
    5420:	bf00      	nop
    5422:	4b05      	ldr	r3, [pc, #20]	; (5438 <game_pause+0x28>)
    5424:	881b      	ldrh	r3, [r3, #0]
    5426:	b29b      	uxth	r3, r3
    5428:	2b00      	cmp	r3, #0
    542a:	d1fa      	bne.n	5422 <game_pause+0x12>
    542c:	bf00      	nop
    542e:	370c      	adds	r7, #12
    5430:	46bd      	mov	sp, r7
    5432:	bc80      	pop	{r7}
    5434:	4770      	bx	lr
    5436:	bf00      	nop
    5438:	20004e08 	.word	0x20004e08

0000543c <micro_pause>:
    543c:	b480      	push	{r7}
    543e:	b085      	sub	sp, #20
    5440:	af00      	add	r7, sp, #0
    5442:	6078      	str	r0, [r7, #4]
    5444:	4b07      	ldr	r3, [pc, #28]	; (5464 <micro_pause+0x28>)
    5446:	681a      	ldr	r2, [r3, #0]
    5448:	687b      	ldr	r3, [r7, #4]
    544a:	4413      	add	r3, r2
    544c:	60fb      	str	r3, [r7, #12]
    544e:	bf00      	nop
    5450:	4b04      	ldr	r3, [pc, #16]	; (5464 <micro_pause+0x28>)
    5452:	681a      	ldr	r2, [r3, #0]
    5454:	68fb      	ldr	r3, [r7, #12]
    5456:	429a      	cmp	r2, r3
    5458:	d3fa      	bcc.n	5450 <micro_pause+0x14>
    545a:	bf00      	nop
    545c:	3714      	adds	r7, #20
    545e:	46bd      	mov	sp, r7
    5460:	bc80      	pop	{r7}
    5462:	4770      	bx	lr
    5464:	20004e0c 	.word	0x20004e0c
