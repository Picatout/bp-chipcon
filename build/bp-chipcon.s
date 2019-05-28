
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 45 44 00 00     C...I...O...ED..
      20:	45 44 00 00 45 44 00 00 45 44 00 00 55 02 00 00     ED..ED..ED..U...
      30:	45 44 00 00 45 44 00 00 5b 02 00 00 61 02 00 00     ED..ED..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 e9 3e 00 00     g...m...y....>..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 45 44 00 00 45 44 00 00 b5 02 00 00     ....ED..ED......
      80:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..
      90:	45 44 00 00 45 44 00 00 45 44 00 00 bb 02 00 00     ED..ED..ED......
      a0:	45 44 00 00 fd 4c 00 00 45 44 00 00 fd 4b 00 00     ED...L..ED...K..
      b0:	1d 41 00 00 cd 02 00 00 d3 02 00 00 45 44 00 00     .A..........ED..
      c0:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..
      d0:	45 44 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     ED..............
      e0:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..
      f0:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..
     100:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..
     110:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..
     120:	45 44 00 00 45 44 00 00 45 44 00 00 45 44 00 00     ED..ED..ED..ED..

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
     18e:	f002 ff5e 	bl	304e <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000164 	.word	0x20000164
     1a0:	20004d94 	.word	0x20004d94
     1a4:	000088b4 	.word	0x000088b4
     1a8:	20000000 	.word	0x20000000
     1ac:	20000164 	.word	0x20000164
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
     1dc:	f004 f93a 	bl	4454 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f004 f92e 	bl	4454 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f004 f922 	bl	4454 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 f91d 	bl	4454 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	000057a4 	.word	0x000057a4
     230:	000057bc 	.word	0x000057bc
     234:	000057c8 	.word	0x000057c8
     238:	000057d8 	.word	0x000057d8

0000023c <NMI_handler>:
     23c:	f004 f902 	bl	4444 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f004 f8ff 	bl	4444 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f004 f8fc 	bl	4444 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f004 f8f9 	bl	4444 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f004 f8f6 	bl	4444 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f004 f8f3 	bl	4444 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f004 f8f0 	bl	4444 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f004 f8ed 	bl	4444 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f004 f8ea 	bl	4444 <reset_mcu>
     270:	bf00      	nop
     272:	f004 f8e7 	bl	4444 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f004 f8e4 	bl	4444 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f004 f8e1 	bl	4444 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f004 f8de 	bl	4444 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f004 f8db 	bl	4444 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f004 f8d8 	bl	4444 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f004 f8d5 	bl	4444 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f004 f8d2 	bl	4444 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f004 f8cf 	bl	4444 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f004 f8cc 	bl	4444 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f004 f8c9 	bl	4444 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f004 f8c6 	bl	4444 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f004 f8c3 	bl	4444 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f004 f8c0 	bl	4444 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f004 f8bd 	bl	4444 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f004 f8ba 	bl	4444 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f004 f8b7 	bl	4444 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f004 f8b4 	bl	4444 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f004 f8b1 	bl	4444 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f004 f8ae 	bl	4444 <reset_mcu>
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
     3c8:	f004 f8bc 	bl	4544 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f004 f8a9 	bl	4524 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 f9f0 	bl	47b8 <print>
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 f9ed 	bl	47b8 <print>
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 fa16 	bl	4818 <print_int>
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7d9b      	ldrb	r3, [r3, #22]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 fa10 	bl	4818 <print_int>
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7ddb      	ldrb	r3, [r3, #23]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 fa0a 	bl	4818 <print_int>
     404:	f004 f89e 	bl	4544 <new_line>
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 f9d5 	bl	47b8 <print>
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 f9ff 	bl	4818 <print_int>
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 f9cc 	bl	47b8 <print>
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 f9f6 	bl	4818 <print_int>
     42c:	f004 f88a 	bl	4544 <new_line>
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 f9c1 	bl	47b8 <print>
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
     44a:	f004 f9e5 	bl	4818 <print_int>
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
     45a:	f004 f873 	bl	4544 <new_line>
     45e:	f004 fafb 	bl	4a58 <prompt_btn>
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	0000518c 	.word	0x0000518c
     470:	20000164 	.word	0x20000164
     474:	00005190 	.word	0x00005190
     478:	00005194 	.word	0x00005194
     47c:	0000519c 	.word	0x0000519c

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
     5f6:	f000 85fd 	beq.w	11f4 <chip_vm+0xcb4>
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
     612:	f001 fdef 	bl	21f4 <gfx_scroll_down>
     616:	f000 bded 	b.w	11f4 <chip_vm+0xcb4>
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
     632:	f001 fdad 	bl	2190 <gfx_scroll_up>
     636:	f000 bddd 	b.w	11f4 <chip_vm+0xcb4>
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
     6cc:	f001 fd0c 	bl	20e8 <gfx_cls>
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
     6ee:	f001 fded 	bl	22cc <gfx_scroll_right>
     6f2:	e011      	b.n	718 <chip_vm+0x1d8>
     6f4:	2004      	movs	r0, #4
     6f6:	f001 fdb3 	bl	2260 <gfx_scroll_left>
     6fa:	e00d      	b.n	718 <chip_vm+0x1d8>
     6fc:	2301      	movs	r3, #1
     6fe:	f000 bd82 	b.w	1206 <chip_vm+0xcc6>
     702:	2002      	movs	r0, #2
     704:	f004 fc6a 	bl	4fdc <set_video_mode>
     708:	e006      	b.n	718 <chip_vm+0x1d8>
     70a:	2001      	movs	r0, #1
     70c:	f004 fc66 	bl	4fdc <set_video_mode>
     710:	e002      	b.n	718 <chip_vm+0x1d8>
     712:	2302      	movs	r3, #2
     714:	f000 bd77 	b.w	1206 <chip_vm+0xcc6>
     718:	f000 bd6c 	b.w	11f4 <chip_vm+0xcb4>
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
     736:	f000 bd64 	b.w	1202 <chip_vm+0xcc2>
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
     774:	f000 bd45 	b.w	1202 <chip_vm+0xcc2>
     778:	7bbb      	ldrb	r3, [r7, #14]
     77a:	4a28      	ldr	r2, [pc, #160]	; (81c <chip_vm+0x2dc>)
     77c:	4413      	add	r3, r2
     77e:	795a      	ldrb	r2, [r3, #5]
     780:	4b26      	ldr	r3, [pc, #152]	; (81c <chip_vm+0x2dc>)
     782:	7ddb      	ldrb	r3, [r3, #23]
     784:	429a      	cmp	r2, r3
     786:	f040 8538 	bne.w	11fa <chip_vm+0xcba>
     78a:	4b24      	ldr	r3, [pc, #144]	; (81c <chip_vm+0x2dc>)
     78c:	881b      	ldrh	r3, [r3, #0]
     78e:	3302      	adds	r3, #2
     790:	b29a      	uxth	r2, r3
     792:	4b22      	ldr	r3, [pc, #136]	; (81c <chip_vm+0x2dc>)
     794:	801a      	strh	r2, [r3, #0]
     796:	f000 bd30 	b.w	11fa <chip_vm+0xcba>
     79a:	7bbb      	ldrb	r3, [r7, #14]
     79c:	4a1f      	ldr	r2, [pc, #124]	; (81c <chip_vm+0x2dc>)
     79e:	4413      	add	r3, r2
     7a0:	795a      	ldrb	r2, [r3, #5]
     7a2:	4b1e      	ldr	r3, [pc, #120]	; (81c <chip_vm+0x2dc>)
     7a4:	7ddb      	ldrb	r3, [r3, #23]
     7a6:	429a      	cmp	r2, r3
     7a8:	f000 852a 	beq.w	1200 <chip_vm+0xcc0>
     7ac:	4b1b      	ldr	r3, [pc, #108]	; (81c <chip_vm+0x2dc>)
     7ae:	881b      	ldrh	r3, [r3, #0]
     7b0:	3302      	adds	r3, #2
     7b2:	b29a      	uxth	r2, r3
     7b4:	4b19      	ldr	r3, [pc, #100]	; (81c <chip_vm+0x2dc>)
     7b6:	801a      	strh	r2, [r3, #0]
     7b8:	f000 bd22 	b.w	1200 <chip_vm+0xcc0>
     7bc:	4b17      	ldr	r3, [pc, #92]	; (81c <chip_vm+0x2dc>)
     7be:	7ddb      	ldrb	r3, [r3, #23]
     7c0:	f003 030f 	and.w	r3, r3, #15
     7c4:	2b02      	cmp	r3, #2
     7c6:	d016      	beq.n	7f6 <chip_vm+0x2b6>
     7c8:	2b03      	cmp	r3, #3
     7ca:	d017      	beq.n	7fc <chip_vm+0x2bc>
     7cc:	2b00      	cmp	r3, #0
     7ce:	d001      	beq.n	7d4 <chip_vm+0x294>
     7d0:	f000 bd17 	b.w	1202 <chip_vm+0xcc2>
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
     7f8:	f000 bd03 	b.w	1202 <chip_vm+0xcc2>
     7fc:	bf00      	nop
     7fe:	f000 bd00 	b.w	1202 <chip_vm+0xcc2>
     802:	bf00      	nop
     804:	f000 bcfd 	b.w	1202 <chip_vm+0xcc2>
     808:	7bbb      	ldrb	r3, [r7, #14]
     80a:	4a04      	ldr	r2, [pc, #16]	; (81c <chip_vm+0x2dc>)
     80c:	7dd1      	ldrb	r1, [r2, #23]
     80e:	4a03      	ldr	r2, [pc, #12]	; (81c <chip_vm+0x2dc>)
     810:	4413      	add	r3, r2
     812:	460a      	mov	r2, r1
     814:	715a      	strb	r2, [r3, #5]
     816:	f000 bcf4 	b.w	1202 <chip_vm+0xcc2>
     81a:	bf00      	nop
     81c:	20000164 	.word	0x20000164
     820:	20000604 	.word	0x20000604
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
     860:	f000 bccf 	b.w	1202 <chip_vm+0xcc2>
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
     a4a:	e3dc      	b.n	1206 <chip_vm+0xcc6>
     a4c:	e3d9      	b.n	1202 <chip_vm+0xcc2>
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
     ac8:	20000164 	.word	0x20000164
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
     ae2:	f003 fb07 	bl	40f4 <key_tone>
     ae6:	e0fe      	b.n	ce6 <chip_vm+0x7a6>
     ae8:	2002      	movs	r0, #2
     aea:	f003 fd1b 	bl	4524 <select_font>
     aee:	7bbb      	ldrb	r3, [r7, #14]
     af0:	4a96      	ldr	r2, [pc, #600]	; (d4c <chip_vm+0x80c>)
     af2:	4413      	add	r3, r2
     af4:	7958      	ldrb	r0, [r3, #5]
     af6:	7b7b      	ldrb	r3, [r7, #13]
     af8:	4a94      	ldr	r2, [pc, #592]	; (d4c <chip_vm+0x80c>)
     afa:	4413      	add	r3, r2
     afc:	795b      	ldrb	r3, [r3, #5]
     afe:	4619      	mov	r1, r3
     b00:	f003 fe2e 	bl	4760 <set_cursor>
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
     b1e:	f003 fd93 	bl	4648 <put_char>
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
     b56:	f001 fa01 	bl	1f5c <gfx_blit>
     b5a:	e0c4      	b.n	ce6 <chip_vm+0x7a6>
     b5c:	7bbb      	ldrb	r3, [r7, #14]
     b5e:	011a      	lsls	r2, r3, #4
     b60:	7b7b      	ldrb	r3, [r7, #13]
     b62:	4413      	add	r3, r2
     b64:	4618      	mov	r0, r3
     b66:	f003 fad0 	bl	410a <noise>
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
     b84:	f003 fab6 	bl	40f4 <key_tone>
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
     cca:	f001 fb39 	bl	2340 <gfx_get_pixel>
     cce:	4603      	mov	r3, r0
     cd0:	461a      	mov	r2, r3
     cd2:	4b1e      	ldr	r3, [pc, #120]	; (d4c <chip_vm+0x80c>)
     cd4:	751a      	strb	r2, [r3, #20]
     cd6:	e006      	b.n	ce6 <chip_vm+0x7a6>
     cd8:	2302      	movs	r3, #2
     cda:	e294      	b.n	1206 <chip_vm+0xcc6>
     cdc:	bf00      	nop
     cde:	e290      	b.n	1202 <chip_vm+0xcc2>
     ce0:	bf00      	nop
     ce2:	e28e      	b.n	1202 <chip_vm+0xcc2>
     ce4:	bf00      	nop
     ce6:	e28c      	b.n	1202 <chip_vm+0xcc2>
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
     d02:	e27e      	b.n	1202 <chip_vm+0xcc2>
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
     d2c:	e269      	b.n	1202 <chip_vm+0xcc2>
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
     d4a:	e25a      	b.n	1202 <chip_vm+0xcc2>
     d4c:	20000164 	.word	0x20000164
     d50:	20000604 	.word	0x20000604
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
     d9a:	e232      	b.n	1202 <chip_vm+0xcc2>
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
     dce:	f001 fae5 	bl	239c <gfx_sprite>
     dd2:	4603      	mov	r3, r0
     dd4:	b2da      	uxtb	r2, r3
     dd6:	4bb1      	ldr	r3, [pc, #708]	; (109c <chip_vm+0xb5c>)
     dd8:	751a      	strb	r2, [r3, #20]
     dda:	e212      	b.n	1202 <chip_vm+0xcc2>
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
     df4:	f000 fd3a 	bl	186c <btn_query_down>
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
     e16:	f000 fd29 	bl	186c <btn_query_down>
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
     e30:	e1e9      	b.n	1206 <chip_vm+0xcc6>
     e32:	bf00      	nop
     e34:	e1e5      	b.n	1202 <chip_vm+0xcc2>
     e36:	bf00      	nop
     e38:	e1e3      	b.n	1202 <chip_vm+0xcc2>
     e3a:	4b98      	ldr	r3, [pc, #608]	; (109c <chip_vm+0xb5c>)
     e3c:	7ddb      	ldrb	r3, [r3, #23]
     e3e:	2b85      	cmp	r3, #133	; 0x85
     e40:	f200 81d4 	bhi.w	11ec <chip_vm+0xcac>
     e44:	a201      	add	r2, pc, #4	; (adr r2, e4c <chip_vm+0x90c>)
     e46:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     e4a:	bf00      	nop
     e4c:	000011f1 	.word	0x000011f1
     e50:	00001065 	.word	0x00001065
     e54:	000011f1 	.word	0x000011f1
     e58:	000011ed 	.word	0x000011ed
     e5c:	000011ed 	.word	0x000011ed
     e60:	000011ed 	.word	0x000011ed
     e64:	000011ed 	.word	0x000011ed
     e68:	00001075 	.word	0x00001075
     e6c:	000011ed 	.word	0x000011ed
     e70:	000011ed 	.word	0x000011ed
     e74:	00001089 	.word	0x00001089
     e78:	000011ed 	.word	0x000011ed
     e7c:	000011ed 	.word	0x000011ed
     e80:	000011ed 	.word	0x000011ed
     e84:	000011ed 	.word	0x000011ed
     e88:	000011ed 	.word	0x000011ed
     e8c:	000011ed 	.word	0x000011ed
     e90:	000011ed 	.word	0x000011ed
     e94:	000011ed 	.word	0x000011ed
     e98:	000011ed 	.word	0x000011ed
     e9c:	000011ed 	.word	0x000011ed
     ea0:	000010ad 	.word	0x000010ad
     ea4:	000011ed 	.word	0x000011ed
     ea8:	000011ed 	.word	0x000011ed
     eac:	000010bd 	.word	0x000010bd
     eb0:	000011ed 	.word	0x000011ed
     eb4:	000011ed 	.word	0x000011ed
     eb8:	000011ed 	.word	0x000011ed
     ebc:	000011ed 	.word	0x000011ed
     ec0:	000011ed 	.word	0x000011ed
     ec4:	000010d3 	.word	0x000010d3
     ec8:	000011ed 	.word	0x000011ed
     ecc:	000011ed 	.word	0x000011ed
     ed0:	000011ed 	.word	0x000011ed
     ed4:	000011ed 	.word	0x000011ed
     ed8:	000011ed 	.word	0x000011ed
     edc:	000011ed 	.word	0x000011ed
     ee0:	000011ed 	.word	0x000011ed
     ee4:	000011ed 	.word	0x000011ed
     ee8:	000011ed 	.word	0x000011ed
     eec:	000011ed 	.word	0x000011ed
     ef0:	000010eb 	.word	0x000010eb
     ef4:	000011ed 	.word	0x000011ed
     ef8:	000011ed 	.word	0x000011ed
     efc:	000011ed 	.word	0x000011ed
     f00:	000011ed 	.word	0x000011ed
     f04:	000011ed 	.word	0x000011ed
     f08:	000011ed 	.word	0x000011ed
     f0c:	00001113 	.word	0x00001113
     f10:	000011ed 	.word	0x000011ed
     f14:	000011ed 	.word	0x000011ed
     f18:	0000113b 	.word	0x0000113b
     f1c:	000011ed 	.word	0x000011ed
     f20:	000011ed 	.word	0x000011ed
     f24:	000011ed 	.word	0x000011ed
     f28:	000011ed 	.word	0x000011ed
     f2c:	000011ed 	.word	0x000011ed
     f30:	000011ed 	.word	0x000011ed
     f34:	000011ed 	.word	0x000011ed
     f38:	000011ed 	.word	0x000011ed
     f3c:	000011ed 	.word	0x000011ed
     f40:	000011ed 	.word	0x000011ed
     f44:	000011ed 	.word	0x000011ed
     f48:	000011ed 	.word	0x000011ed
     f4c:	000011ed 	.word	0x000011ed
     f50:	000011ed 	.word	0x000011ed
     f54:	000011ed 	.word	0x000011ed
     f58:	000011ed 	.word	0x000011ed
     f5c:	000011ed 	.word	0x000011ed
     f60:	000011ed 	.word	0x000011ed
     f64:	000011ed 	.word	0x000011ed
     f68:	000011ed 	.word	0x000011ed
     f6c:	000011ed 	.word	0x000011ed
     f70:	000011ed 	.word	0x000011ed
     f74:	000011ed 	.word	0x000011ed
     f78:	000011ed 	.word	0x000011ed
     f7c:	000011ed 	.word	0x000011ed
     f80:	000011ed 	.word	0x000011ed
     f84:	000011ed 	.word	0x000011ed
     f88:	000011ed 	.word	0x000011ed
     f8c:	000011ed 	.word	0x000011ed
     f90:	000011ed 	.word	0x000011ed
     f94:	000011ed 	.word	0x000011ed
     f98:	000011ed 	.word	0x000011ed
     f9c:	000011ed 	.word	0x000011ed
     fa0:	000011a5 	.word	0x000011a5
     fa4:	000011ed 	.word	0x000011ed
     fa8:	000011ed 	.word	0x000011ed
     fac:	000011ed 	.word	0x000011ed
     fb0:	000011ed 	.word	0x000011ed
     fb4:	000011ed 	.word	0x000011ed
     fb8:	000011ed 	.word	0x000011ed
     fbc:	000011ed 	.word	0x000011ed
     fc0:	000011ed 	.word	0x000011ed
     fc4:	000011ed 	.word	0x000011ed
     fc8:	000011ed 	.word	0x000011ed
     fcc:	000011ed 	.word	0x000011ed
     fd0:	000011ed 	.word	0x000011ed
     fd4:	000011ed 	.word	0x000011ed
     fd8:	000011ed 	.word	0x000011ed
     fdc:	000011ed 	.word	0x000011ed
     fe0:	000011b9 	.word	0x000011b9
     fe4:	000011ed 	.word	0x000011ed
     fe8:	000011ed 	.word	0x000011ed
     fec:	000011ed 	.word	0x000011ed
     ff0:	000011ed 	.word	0x000011ed
     ff4:	000011ed 	.word	0x000011ed
     ff8:	000011ed 	.word	0x000011ed
     ffc:	000011ed 	.word	0x000011ed
    1000:	000011ed 	.word	0x000011ed
    1004:	000011ed 	.word	0x000011ed
    1008:	000011ed 	.word	0x000011ed
    100c:	000011ed 	.word	0x000011ed
    1010:	000011ed 	.word	0x000011ed
    1014:	000011ed 	.word	0x000011ed
    1018:	000011ed 	.word	0x000011ed
    101c:	000011ed 	.word	0x000011ed
    1020:	000011cd 	.word	0x000011cd
    1024:	000011ed 	.word	0x000011ed
    1028:	000011ed 	.word	0x000011ed
    102c:	000011ed 	.word	0x000011ed
    1030:	000011ed 	.word	0x000011ed
    1034:	000011ed 	.word	0x000011ed
    1038:	000011ed 	.word	0x000011ed
    103c:	000011ed 	.word	0x000011ed
    1040:	000011ed 	.word	0x000011ed
    1044:	000011ed 	.word	0x000011ed
    1048:	000011ed 	.word	0x000011ed
    104c:	000011ed 	.word	0x000011ed
    1050:	000011ed 	.word	0x000011ed
    1054:	000011ed 	.word	0x000011ed
    1058:	000011ed 	.word	0x000011ed
    105c:	000011ed 	.word	0x000011ed
    1060:	000011dd 	.word	0x000011dd
    1064:	4b0d      	ldr	r3, [pc, #52]	; (109c <chip_vm+0xb5c>)
    1066:	7d9b      	ldrb	r3, [r3, #22]
    1068:	f003 0303 	and.w	r3, r3, #3
    106c:	b2da      	uxtb	r2, r3
    106e:	4b0d      	ldr	r3, [pc, #52]	; (10a4 <chip_vm+0xb64>)
    1070:	701a      	strb	r2, [r3, #0]
    1072:	e0be      	b.n	11f2 <chip_vm+0xcb2>
    1074:	7bbb      	ldrb	r3, [r7, #14]
    1076:	4a0c      	ldr	r2, [pc, #48]	; (10a8 <chip_vm+0xb68>)
    1078:	8812      	ldrh	r2, [r2, #0]
    107a:	b292      	uxth	r2, r2
    107c:	b2d1      	uxtb	r1, r2
    107e:	4a07      	ldr	r2, [pc, #28]	; (109c <chip_vm+0xb5c>)
    1080:	4413      	add	r3, r2
    1082:	460a      	mov	r2, r1
    1084:	715a      	strb	r2, [r3, #5]
    1086:	e0b4      	b.n	11f2 <chip_vm+0xcb2>
    1088:	7bbc      	ldrb	r4, [r7, #14]
    108a:	f000 fc5b 	bl	1944 <btn_wait_any>
    108e:	4603      	mov	r3, r0
    1090:	461a      	mov	r2, r3
    1092:	4b02      	ldr	r3, [pc, #8]	; (109c <chip_vm+0xb5c>)
    1094:	4423      	add	r3, r4
    1096:	715a      	strb	r2, [r3, #5]
    1098:	e0ab      	b.n	11f2 <chip_vm+0xcb2>
    109a:	bf00      	nop
    109c:	20000164 	.word	0x20000164
    10a0:	200001bc 	.word	0x200001bc
    10a4:	200000e4 	.word	0x200000e4
    10a8:	20004d90 	.word	0x20004d90
    10ac:	7bbb      	ldrb	r3, [r7, #14]
    10ae:	4a58      	ldr	r2, [pc, #352]	; (1210 <chip_vm+0xcd0>)
    10b0:	4413      	add	r3, r2
    10b2:	795b      	ldrb	r3, [r3, #5]
    10b4:	b29a      	uxth	r2, r3
    10b6:	4b57      	ldr	r3, [pc, #348]	; (1214 <chip_vm+0xcd4>)
    10b8:	801a      	strh	r2, [r3, #0]
    10ba:	e09a      	b.n	11f2 <chip_vm+0xcb2>
    10bc:	7bbb      	ldrb	r3, [r7, #14]
    10be:	4a54      	ldr	r2, [pc, #336]	; (1210 <chip_vm+0xcd0>)
    10c0:	4413      	add	r3, r2
    10c2:	795b      	ldrb	r3, [r3, #5]
    10c4:	b29b      	uxth	r3, r3
    10c6:	4619      	mov	r1, r3
    10c8:	f240 200b 	movw	r0, #523	; 0x20b
    10cc:	f002 ff46 	bl	3f5c <tone>
    10d0:	e08f      	b.n	11f2 <chip_vm+0xcb2>
    10d2:	4b4f      	ldr	r3, [pc, #316]	; (1210 <chip_vm+0xcd0>)
    10d4:	885a      	ldrh	r2, [r3, #2]
    10d6:	7bbb      	ldrb	r3, [r7, #14]
    10d8:	494d      	ldr	r1, [pc, #308]	; (1210 <chip_vm+0xcd0>)
    10da:	440b      	add	r3, r1
    10dc:	795b      	ldrb	r3, [r3, #5]
    10de:	b29b      	uxth	r3, r3
    10e0:	4413      	add	r3, r2
    10e2:	b29a      	uxth	r2, r3
    10e4:	4b4a      	ldr	r3, [pc, #296]	; (1210 <chip_vm+0xcd0>)
    10e6:	805a      	strh	r2, [r3, #2]
    10e8:	e083      	b.n	11f2 <chip_vm+0xcb2>
    10ea:	7bbb      	ldrb	r3, [r7, #14]
    10ec:	4a48      	ldr	r2, [pc, #288]	; (1210 <chip_vm+0xcd0>)
    10ee:	4413      	add	r3, r2
    10f0:	795b      	ldrb	r3, [r3, #5]
    10f2:	b29b      	uxth	r3, r3
    10f4:	461a      	mov	r2, r3
    10f6:	0052      	lsls	r2, r2, #1
    10f8:	4413      	add	r3, r2
    10fa:	005b      	lsls	r3, r3, #1
    10fc:	b29a      	uxth	r2, r3
    10fe:	4b46      	ldr	r3, [pc, #280]	; (1218 <chip_vm+0xcd8>)
    1100:	b29b      	uxth	r3, r3
    1102:	4413      	add	r3, r2
    1104:	b29a      	uxth	r2, r3
    1106:	4b42      	ldr	r3, [pc, #264]	; (1210 <chip_vm+0xcd0>)
    1108:	805a      	strh	r2, [r3, #2]
    110a:	2000      	movs	r0, #0
    110c:	f003 fa0a 	bl	4524 <select_font>
    1110:	e06f      	b.n	11f2 <chip_vm+0xcb2>
    1112:	7bbb      	ldrb	r3, [r7, #14]
    1114:	4a3e      	ldr	r2, [pc, #248]	; (1210 <chip_vm+0xcd0>)
    1116:	4413      	add	r3, r2
    1118:	795b      	ldrb	r3, [r3, #5]
    111a:	b29b      	uxth	r3, r3
    111c:	461a      	mov	r2, r3
    111e:	0092      	lsls	r2, r2, #2
    1120:	4413      	add	r3, r2
    1122:	005b      	lsls	r3, r3, #1
    1124:	b29a      	uxth	r2, r3
    1126:	4b3d      	ldr	r3, [pc, #244]	; (121c <chip_vm+0xcdc>)
    1128:	b29b      	uxth	r3, r3
    112a:	4413      	add	r3, r2
    112c:	b29a      	uxth	r2, r3
    112e:	4b38      	ldr	r3, [pc, #224]	; (1210 <chip_vm+0xcd0>)
    1130:	805a      	strh	r2, [r3, #2]
    1132:	2001      	movs	r0, #1
    1134:	f003 f9f6 	bl	4524 <select_font>
    1138:	e05b      	b.n	11f2 <chip_vm+0xcb2>
    113a:	7bbb      	ldrb	r3, [r7, #14]
    113c:	4a34      	ldr	r2, [pc, #208]	; (1210 <chip_vm+0xcd0>)
    113e:	4413      	add	r3, r2
    1140:	795b      	ldrb	r3, [r3, #5]
    1142:	73fb      	strb	r3, [r7, #15]
    1144:	7bfa      	ldrb	r2, [r7, #15]
    1146:	4b36      	ldr	r3, [pc, #216]	; (1220 <chip_vm+0xce0>)
    1148:	fba3 1302 	umull	r1, r3, r3, r2
    114c:	08d9      	lsrs	r1, r3, #3
    114e:	460b      	mov	r3, r1
    1150:	009b      	lsls	r3, r3, #2
    1152:	440b      	add	r3, r1
    1154:	005b      	lsls	r3, r3, #1
    1156:	1ad3      	subs	r3, r2, r3
    1158:	b2da      	uxtb	r2, r3
    115a:	4b32      	ldr	r3, [pc, #200]	; (1224 <chip_vm+0xce4>)
    115c:	709a      	strb	r2, [r3, #2]
    115e:	7bfb      	ldrb	r3, [r7, #15]
    1160:	4a2f      	ldr	r2, [pc, #188]	; (1220 <chip_vm+0xce0>)
    1162:	fba2 2303 	umull	r2, r3, r2, r3
    1166:	08db      	lsrs	r3, r3, #3
    1168:	73fb      	strb	r3, [r7, #15]
    116a:	7bfa      	ldrb	r2, [r7, #15]
    116c:	4b2c      	ldr	r3, [pc, #176]	; (1220 <chip_vm+0xce0>)
    116e:	fba3 1302 	umull	r1, r3, r3, r2
    1172:	08d9      	lsrs	r1, r3, #3
    1174:	460b      	mov	r3, r1
    1176:	009b      	lsls	r3, r3, #2
    1178:	440b      	add	r3, r1
    117a:	005b      	lsls	r3, r3, #1
    117c:	1ad3      	subs	r3, r2, r3
    117e:	b2da      	uxtb	r2, r3
    1180:	4b28      	ldr	r3, [pc, #160]	; (1224 <chip_vm+0xce4>)
    1182:	705a      	strb	r2, [r3, #1]
    1184:	7bfb      	ldrb	r3, [r7, #15]
    1186:	4a26      	ldr	r2, [pc, #152]	; (1220 <chip_vm+0xce0>)
    1188:	fba2 2303 	umull	r2, r3, r2, r3
    118c:	08db      	lsrs	r3, r3, #3
    118e:	b2da      	uxtb	r2, r3
    1190:	4b24      	ldr	r3, [pc, #144]	; (1224 <chip_vm+0xce4>)
    1192:	701a      	strb	r2, [r3, #0]
    1194:	4b1e      	ldr	r3, [pc, #120]	; (1210 <chip_vm+0xcd0>)
    1196:	885b      	ldrh	r3, [r3, #2]
    1198:	4a22      	ldr	r2, [pc, #136]	; (1224 <chip_vm+0xce4>)
    119a:	2103      	movs	r1, #3
    119c:	4618      	mov	r0, r3
    119e:	f7ff f986 	bl	4ae <store_block>
    11a2:	e026      	b.n	11f2 <chip_vm+0xcb2>
    11a4:	4b1a      	ldr	r3, [pc, #104]	; (1210 <chip_vm+0xcd0>)
    11a6:	885b      	ldrh	r3, [r3, #2]
    11a8:	4618      	mov	r0, r3
    11aa:	7bbb      	ldrb	r3, [r7, #14]
    11ac:	3301      	adds	r3, #1
    11ae:	4a1e      	ldr	r2, [pc, #120]	; (1228 <chip_vm+0xce8>)
    11b0:	4619      	mov	r1, r3
    11b2:	f7ff f97c 	bl	4ae <store_block>
    11b6:	e01c      	b.n	11f2 <chip_vm+0xcb2>
    11b8:	4b15      	ldr	r3, [pc, #84]	; (1210 <chip_vm+0xcd0>)
    11ba:	885b      	ldrh	r3, [r3, #2]
    11bc:	4618      	mov	r0, r3
    11be:	7bbb      	ldrb	r3, [r7, #14]
    11c0:	3301      	adds	r3, #1
    11c2:	4a19      	ldr	r2, [pc, #100]	; (1228 <chip_vm+0xce8>)
    11c4:	4619      	mov	r1, r3
    11c6:	f7ff f967 	bl	498 <load_block>
    11ca:	e012      	b.n	11f2 <chip_vm+0xcb2>
    11cc:	7bfb      	ldrb	r3, [r7, #15]
    11ce:	461a      	mov	r2, r3
    11d0:	4915      	ldr	r1, [pc, #84]	; (1228 <chip_vm+0xce8>)
    11d2:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
    11d6:	f000 fa4c 	bl	1672 <flash_write_block>
    11da:	e00a      	b.n	11f2 <chip_vm+0xcb2>
    11dc:	7bfb      	ldrb	r3, [r7, #15]
    11de:	461a      	mov	r2, r3
    11e0:	4911      	ldr	r1, [pc, #68]	; (1228 <chip_vm+0xce8>)
    11e2:	f44f 30fe 	mov.w	r0, #130048	; 0x1fc00
    11e6:	f000 fa25 	bl	1634 <flash_read_block>
    11ea:	e002      	b.n	11f2 <chip_vm+0xcb2>
    11ec:	2302      	movs	r3, #2
    11ee:	e00a      	b.n	1206 <chip_vm+0xcc6>
    11f0:	bf00      	nop
    11f2:	e006      	b.n	1202 <chip_vm+0xcc2>
    11f4:	bf00      	nop
    11f6:	f7ff b9b1 	b.w	55c <chip_vm+0x1c>
    11fa:	bf00      	nop
    11fc:	f7ff b9ae 	b.w	55c <chip_vm+0x1c>
    1200:	bf00      	nop
    1202:	f7ff b9ab 	b.w	55c <chip_vm+0x1c>
    1206:	4618      	mov	r0, r3
    1208:	3714      	adds	r7, #20
    120a:	46bd      	mov	sp, r7
    120c:	bd90      	pop	{r4, r7, pc}
    120e:	bf00      	nop
    1210:	20000164 	.word	0x20000164
    1214:	20004d90 	.word	0x20004d90
    1218:	000051a4 	.word	0x000051a4
    121c:	00005204 	.word	0x00005204
    1220:	cccccccd 	.word	0xcccccccd
    1224:	200001bc 	.word	0x200001bc
    1228:	20000169 	.word	0x20000169

0000122c <flash_enable>:
    122c:	b480      	push	{r7}
    122e:	af00      	add	r7, sp, #0
    1230:	4b14      	ldr	r3, [pc, #80]	; (1284 <flash_enable+0x58>)
    1232:	2200      	movs	r2, #0
    1234:	701a      	strb	r2, [r3, #0]
    1236:	4b14      	ldr	r3, [pc, #80]	; (1288 <flash_enable+0x5c>)
    1238:	681b      	ldr	r3, [r3, #0]
    123a:	f003 0301 	and.w	r3, r3, #1
    123e:	2b00      	cmp	r3, #0
    1240:	d10c      	bne.n	125c <flash_enable+0x30>
    1242:	4a11      	ldr	r2, [pc, #68]	; (1288 <flash_enable+0x5c>)
    1244:	4b10      	ldr	r3, [pc, #64]	; (1288 <flash_enable+0x5c>)
    1246:	681b      	ldr	r3, [r3, #0]
    1248:	f043 0301 	orr.w	r3, r3, #1
    124c:	6013      	str	r3, [r2, #0]
    124e:	bf00      	nop
    1250:	4b0d      	ldr	r3, [pc, #52]	; (1288 <flash_enable+0x5c>)
    1252:	681b      	ldr	r3, [r3, #0]
    1254:	f003 0302 	and.w	r3, r3, #2
    1258:	2b00      	cmp	r3, #0
    125a:	d0f9      	beq.n	1250 <flash_enable+0x24>
    125c:	4b0b      	ldr	r3, [pc, #44]	; (128c <flash_enable+0x60>)
    125e:	4a0c      	ldr	r2, [pc, #48]	; (1290 <flash_enable+0x64>)
    1260:	605a      	str	r2, [r3, #4]
    1262:	4b0a      	ldr	r3, [pc, #40]	; (128c <flash_enable+0x60>)
    1264:	4a0b      	ldr	r2, [pc, #44]	; (1294 <flash_enable+0x68>)
    1266:	605a      	str	r2, [r3, #4]
    1268:	4b08      	ldr	r3, [pc, #32]	; (128c <flash_enable+0x60>)
    126a:	691b      	ldr	r3, [r3, #16]
    126c:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1270:	2b00      	cmp	r3, #0
    1272:	bf0c      	ite	eq
    1274:	2301      	moveq	r3, #1
    1276:	2300      	movne	r3, #0
    1278:	b2db      	uxtb	r3, r3
    127a:	4618      	mov	r0, r3
    127c:	46bd      	mov	sp, r7
    127e:	bc80      	pop	{r7}
    1280:	4770      	bx	lr
    1282:	bf00      	nop
    1284:	200001dc 	.word	0x200001dc
    1288:	40021000 	.word	0x40021000
    128c:	40022000 	.word	0x40022000
    1290:	45670123 	.word	0x45670123
    1294:	cdef89ab 	.word	0xcdef89ab

00001298 <read_byte>:
    1298:	b480      	push	{r7}
    129a:	b085      	sub	sp, #20
    129c:	af00      	add	r7, sp, #0
    129e:	6078      	str	r0, [r7, #4]
    12a0:	687b      	ldr	r3, [r7, #4]
    12a2:	0a9b      	lsrs	r3, r3, #10
    12a4:	4a0a      	ldr	r2, [pc, #40]	; (12d0 <read_byte+0x38>)
    12a6:	7852      	ldrb	r2, [r2, #1]
    12a8:	4293      	cmp	r3, r2
    12aa:	d109      	bne.n	12c0 <read_byte+0x28>
    12ac:	687b      	ldr	r3, [r7, #4]
    12ae:	f3c3 0309 	ubfx	r3, r3, #0, #10
    12b2:	60fb      	str	r3, [r7, #12]
    12b4:	4a06      	ldr	r2, [pc, #24]	; (12d0 <read_byte+0x38>)
    12b6:	68fb      	ldr	r3, [r7, #12]
    12b8:	4413      	add	r3, r2
    12ba:	3302      	adds	r3, #2
    12bc:	781b      	ldrb	r3, [r3, #0]
    12be:	e001      	b.n	12c4 <read_byte+0x2c>
    12c0:	687b      	ldr	r3, [r7, #4]
    12c2:	781b      	ldrb	r3, [r3, #0]
    12c4:	4618      	mov	r0, r3
    12c6:	3714      	adds	r7, #20
    12c8:	46bd      	mov	sp, r7
    12ca:	bc80      	pop	{r7}
    12cc:	4770      	bx	lr
    12ce:	bf00      	nop
    12d0:	200001dc 	.word	0x200001dc

000012d4 <flash_write_hword>:
    12d4:	b480      	push	{r7}
    12d6:	b083      	sub	sp, #12
    12d8:	af00      	add	r7, sp, #0
    12da:	6078      	str	r0, [r7, #4]
    12dc:	460b      	mov	r3, r1
    12de:	807b      	strh	r3, [r7, #2]
    12e0:	bf00      	nop
    12e2:	4b16      	ldr	r3, [pc, #88]	; (133c <flash_write_hword+0x68>)
    12e4:	68db      	ldr	r3, [r3, #12]
    12e6:	f003 0301 	and.w	r3, r3, #1
    12ea:	2b00      	cmp	r3, #0
    12ec:	d1f9      	bne.n	12e2 <flash_write_hword+0xe>
    12ee:	4a13      	ldr	r2, [pc, #76]	; (133c <flash_write_hword+0x68>)
    12f0:	4b12      	ldr	r3, [pc, #72]	; (133c <flash_write_hword+0x68>)
    12f2:	68db      	ldr	r3, [r3, #12]
    12f4:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    12f8:	60d3      	str	r3, [r2, #12]
    12fa:	4b10      	ldr	r3, [pc, #64]	; (133c <flash_write_hword+0x68>)
    12fc:	2201      	movs	r2, #1
    12fe:	611a      	str	r2, [r3, #16]
    1300:	687b      	ldr	r3, [r7, #4]
    1302:	887a      	ldrh	r2, [r7, #2]
    1304:	801a      	strh	r2, [r3, #0]
    1306:	bf00      	nop
    1308:	4b0c      	ldr	r3, [pc, #48]	; (133c <flash_write_hword+0x68>)
    130a:	68db      	ldr	r3, [r3, #12]
    130c:	f003 0301 	and.w	r3, r3, #1
    1310:	2b00      	cmp	r3, #0
    1312:	d005      	beq.n	1320 <flash_write_hword+0x4c>
    1314:	4b09      	ldr	r3, [pc, #36]	; (133c <flash_write_hword+0x68>)
    1316:	68db      	ldr	r3, [r3, #12]
    1318:	f003 0320 	and.w	r3, r3, #32
    131c:	2b00      	cmp	r3, #0
    131e:	d0f3      	beq.n	1308 <flash_write_hword+0x34>
    1320:	687b      	ldr	r3, [r7, #4]
    1322:	881b      	ldrh	r3, [r3, #0]
    1324:	887a      	ldrh	r2, [r7, #2]
    1326:	429a      	cmp	r2, r3
    1328:	bf0c      	ite	eq
    132a:	2301      	moveq	r3, #1
    132c:	2300      	movne	r3, #0
    132e:	b2db      	uxtb	r3, r3
    1330:	4618      	mov	r0, r3
    1332:	370c      	adds	r7, #12
    1334:	46bd      	mov	sp, r7
    1336:	bc80      	pop	{r7}
    1338:	4770      	bx	lr
    133a:	bf00      	nop
    133c:	40022000 	.word	0x40022000

00001340 <write_back_buffer>:
    1340:	b580      	push	{r7, lr}
    1342:	b084      	sub	sp, #16
    1344:	af00      	add	r7, sp, #0
    1346:	4b1e      	ldr	r3, [pc, #120]	; (13c0 <write_back_buffer+0x80>)
    1348:	785b      	ldrb	r3, [r3, #1]
    134a:	029b      	lsls	r3, r3, #10
    134c:	60bb      	str	r3, [r7, #8]
    134e:	4b1d      	ldr	r3, [pc, #116]	; (13c4 <write_back_buffer+0x84>)
    1350:	607b      	str	r3, [r7, #4]
    1352:	2300      	movs	r3, #0
    1354:	60fb      	str	r3, [r7, #12]
    1356:	e017      	b.n	1388 <write_back_buffer+0x48>
    1358:	687b      	ldr	r3, [r7, #4]
    135a:	881b      	ldrh	r3, [r3, #0]
    135c:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1360:	4293      	cmp	r3, r2
    1362:	d008      	beq.n	1376 <write_back_buffer+0x36>
    1364:	687b      	ldr	r3, [r7, #4]
    1366:	881b      	ldrh	r3, [r3, #0]
    1368:	4619      	mov	r1, r3
    136a:	68b8      	ldr	r0, [r7, #8]
    136c:	f7ff ffb2 	bl	12d4 <flash_write_hword>
    1370:	4603      	mov	r3, r0
    1372:	2b00      	cmp	r3, #0
    1374:	d00d      	beq.n	1392 <write_back_buffer+0x52>
    1376:	68bb      	ldr	r3, [r7, #8]
    1378:	3302      	adds	r3, #2
    137a:	60bb      	str	r3, [r7, #8]
    137c:	687b      	ldr	r3, [r7, #4]
    137e:	3302      	adds	r3, #2
    1380:	607b      	str	r3, [r7, #4]
    1382:	68fb      	ldr	r3, [r7, #12]
    1384:	3301      	adds	r3, #1
    1386:	60fb      	str	r3, [r7, #12]
    1388:	68fb      	ldr	r3, [r7, #12]
    138a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    138e:	dbe3      	blt.n	1358 <write_back_buffer+0x18>
    1390:	e000      	b.n	1394 <write_back_buffer+0x54>
    1392:	bf00      	nop
    1394:	68fb      	ldr	r3, [r7, #12]
    1396:	2b00      	cmp	r3, #0
    1398:	dd06      	ble.n	13a8 <write_back_buffer+0x68>
    139a:	4b09      	ldr	r3, [pc, #36]	; (13c0 <write_back_buffer+0x80>)
    139c:	781b      	ldrb	r3, [r3, #0]
    139e:	f023 0304 	bic.w	r3, r3, #4
    13a2:	b2da      	uxtb	r2, r3
    13a4:	4b06      	ldr	r3, [pc, #24]	; (13c0 <write_back_buffer+0x80>)
    13a6:	701a      	strb	r2, [r3, #0]
    13a8:	68fb      	ldr	r3, [r7, #12]
    13aa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    13ae:	d101      	bne.n	13b4 <write_back_buffer+0x74>
    13b0:	2301      	movs	r3, #1
    13b2:	e000      	b.n	13b6 <write_back_buffer+0x76>
    13b4:	2300      	movs	r3, #0
    13b6:	4618      	mov	r0, r3
    13b8:	3710      	adds	r7, #16
    13ba:	46bd      	mov	sp, r7
    13bc:	bd80      	pop	{r7, pc}
    13be:	bf00      	nop
    13c0:	200001dc 	.word	0x200001dc
    13c4:	200001de 	.word	0x200001de

000013c8 <load_row>:
    13c8:	b480      	push	{r7}
    13ca:	b087      	sub	sp, #28
    13cc:	af00      	add	r7, sp, #0
    13ce:	6078      	str	r0, [r7, #4]
    13d0:	687b      	ldr	r3, [r7, #4]
    13d2:	029b      	lsls	r3, r3, #10
    13d4:	617b      	str	r3, [r7, #20]
    13d6:	4b15      	ldr	r3, [pc, #84]	; (142c <load_row+0x64>)
    13d8:	613b      	str	r3, [r7, #16]
    13da:	2300      	movs	r3, #0
    13dc:	60fb      	str	r3, [r7, #12]
    13de:	e00a      	b.n	13f6 <load_row+0x2e>
    13e0:	693b      	ldr	r3, [r7, #16]
    13e2:	1c9a      	adds	r2, r3, #2
    13e4:	613a      	str	r2, [r7, #16]
    13e6:	697a      	ldr	r2, [r7, #20]
    13e8:	1c91      	adds	r1, r2, #2
    13ea:	6179      	str	r1, [r7, #20]
    13ec:	8812      	ldrh	r2, [r2, #0]
    13ee:	801a      	strh	r2, [r3, #0]
    13f0:	68fb      	ldr	r3, [r7, #12]
    13f2:	3301      	adds	r3, #1
    13f4:	60fb      	str	r3, [r7, #12]
    13f6:	68fb      	ldr	r3, [r7, #12]
    13f8:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    13fc:	dbf0      	blt.n	13e0 <load_row+0x18>
    13fe:	687b      	ldr	r3, [r7, #4]
    1400:	b2da      	uxtb	r2, r3
    1402:	4b0b      	ldr	r3, [pc, #44]	; (1430 <load_row+0x68>)
    1404:	705a      	strb	r2, [r3, #1]
    1406:	4b0a      	ldr	r3, [pc, #40]	; (1430 <load_row+0x68>)
    1408:	781b      	ldrb	r3, [r3, #0]
    140a:	f023 0301 	bic.w	r3, r3, #1
    140e:	b2da      	uxtb	r2, r3
    1410:	4b07      	ldr	r3, [pc, #28]	; (1430 <load_row+0x68>)
    1412:	701a      	strb	r2, [r3, #0]
    1414:	4b06      	ldr	r3, [pc, #24]	; (1430 <load_row+0x68>)
    1416:	781b      	ldrb	r3, [r3, #0]
    1418:	f043 0302 	orr.w	r3, r3, #2
    141c:	b2da      	uxtb	r2, r3
    141e:	4b04      	ldr	r3, [pc, #16]	; (1430 <load_row+0x68>)
    1420:	701a      	strb	r2, [r3, #0]
    1422:	bf00      	nop
    1424:	371c      	adds	r7, #28
    1426:	46bd      	mov	sp, r7
    1428:	bc80      	pop	{r7}
    142a:	4770      	bx	lr
    142c:	200001de 	.word	0x200001de
    1430:	200001dc 	.word	0x200001dc

00001434 <is_erased>:
    1434:	b480      	push	{r7}
    1436:	b085      	sub	sp, #20
    1438:	af00      	add	r7, sp, #0
    143a:	6078      	str	r0, [r7, #4]
    143c:	687b      	ldr	r3, [r7, #4]
    143e:	029b      	lsls	r3, r3, #10
    1440:	60fb      	str	r3, [r7, #12]
    1442:	2300      	movs	r3, #0
    1444:	60bb      	str	r3, [r7, #8]
    1446:	e00c      	b.n	1462 <is_erased+0x2e>
    1448:	68fb      	ldr	r3, [r7, #12]
    144a:	1c9a      	adds	r2, r3, #2
    144c:	60fa      	str	r2, [r7, #12]
    144e:	881b      	ldrh	r3, [r3, #0]
    1450:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1454:	4293      	cmp	r3, r2
    1456:	d001      	beq.n	145c <is_erased+0x28>
    1458:	2300      	movs	r3, #0
    145a:	e008      	b.n	146e <is_erased+0x3a>
    145c:	68bb      	ldr	r3, [r7, #8]
    145e:	3301      	adds	r3, #1
    1460:	60bb      	str	r3, [r7, #8]
    1462:	68bb      	ldr	r3, [r7, #8]
    1464:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1468:	dbee      	blt.n	1448 <is_erased+0x14>
    146a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    146e:	4618      	mov	r0, r3
    1470:	3714      	adds	r7, #20
    1472:	46bd      	mov	sp, r7
    1474:	bc80      	pop	{r7}
    1476:	4770      	bx	lr

00001478 <flash_erase_row>:
    1478:	b580      	push	{r7, lr}
    147a:	b086      	sub	sp, #24
    147c:	af00      	add	r7, sp, #0
    147e:	6078      	str	r0, [r7, #4]
    1480:	687b      	ldr	r3, [r7, #4]
    1482:	2b3f      	cmp	r3, #63	; 0x3f
    1484:	d801      	bhi.n	148a <flash_erase_row+0x12>
    1486:	2300      	movs	r3, #0
    1488:	e052      	b.n	1530 <flash_erase_row+0xb8>
    148a:	6878      	ldr	r0, [r7, #4]
    148c:	f7ff ffd2 	bl	1434 <is_erased>
    1490:	4603      	mov	r3, r0
    1492:	2b00      	cmp	r3, #0
    1494:	d001      	beq.n	149a <flash_erase_row+0x22>
    1496:	2301      	movs	r3, #1
    1498:	e04a      	b.n	1530 <flash_erase_row+0xb8>
    149a:	687b      	ldr	r3, [r7, #4]
    149c:	029b      	lsls	r3, r3, #10
    149e:	617b      	str	r3, [r7, #20]
    14a0:	4b25      	ldr	r3, [pc, #148]	; (1538 <flash_erase_row+0xc0>)
    14a2:	691b      	ldr	r3, [r3, #16]
    14a4:	f003 0380 	and.w	r3, r3, #128	; 0x80
    14a8:	2b00      	cmp	r3, #0
    14aa:	d001      	beq.n	14b0 <flash_erase_row+0x38>
    14ac:	2300      	movs	r3, #0
    14ae:	e03f      	b.n	1530 <flash_erase_row+0xb8>
    14b0:	4a21      	ldr	r2, [pc, #132]	; (1538 <flash_erase_row+0xc0>)
    14b2:	4b21      	ldr	r3, [pc, #132]	; (1538 <flash_erase_row+0xc0>)
    14b4:	68db      	ldr	r3, [r3, #12]
    14b6:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    14ba:	60d3      	str	r3, [r2, #12]
    14bc:	4b1e      	ldr	r3, [pc, #120]	; (1538 <flash_erase_row+0xc0>)
    14be:	2202      	movs	r2, #2
    14c0:	611a      	str	r2, [r3, #16]
    14c2:	4a1d      	ldr	r2, [pc, #116]	; (1538 <flash_erase_row+0xc0>)
    14c4:	697b      	ldr	r3, [r7, #20]
    14c6:	6153      	str	r3, [r2, #20]
    14c8:	4a1b      	ldr	r2, [pc, #108]	; (1538 <flash_erase_row+0xc0>)
    14ca:	4b1b      	ldr	r3, [pc, #108]	; (1538 <flash_erase_row+0xc0>)
    14cc:	691b      	ldr	r3, [r3, #16]
    14ce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    14d2:	6113      	str	r3, [r2, #16]
    14d4:	bf00      	nop
    14d6:	4b18      	ldr	r3, [pc, #96]	; (1538 <flash_erase_row+0xc0>)
    14d8:	68db      	ldr	r3, [r3, #12]
    14da:	f003 0301 	and.w	r3, r3, #1
    14de:	2b00      	cmp	r3, #0
    14e0:	d005      	beq.n	14ee <flash_erase_row+0x76>
    14e2:	4b15      	ldr	r3, [pc, #84]	; (1538 <flash_erase_row+0xc0>)
    14e4:	68db      	ldr	r3, [r3, #12]
    14e6:	f003 0320 	and.w	r3, r3, #32
    14ea:	2b00      	cmp	r3, #0
    14ec:	d0f3      	beq.n	14d6 <flash_erase_row+0x5e>
    14ee:	687b      	ldr	r3, [r7, #4]
    14f0:	029b      	lsls	r3, r3, #10
    14f2:	617b      	str	r3, [r7, #20]
    14f4:	2300      	movs	r3, #0
    14f6:	60fb      	str	r3, [r7, #12]
    14f8:	e00c      	b.n	1514 <flash_erase_row+0x9c>
    14fa:	697b      	ldr	r3, [r7, #20]
    14fc:	1c9a      	adds	r2, r3, #2
    14fe:	617a      	str	r2, [r7, #20]
    1500:	881b      	ldrh	r3, [r3, #0]
    1502:	827b      	strh	r3, [r7, #18]
    1504:	8a7b      	ldrh	r3, [r7, #18]
    1506:	f64f 72ff 	movw	r2, #65535	; 0xffff
    150a:	4293      	cmp	r3, r2
    150c:	d107      	bne.n	151e <flash_erase_row+0xa6>
    150e:	68fb      	ldr	r3, [r7, #12]
    1510:	3301      	adds	r3, #1
    1512:	60fb      	str	r3, [r7, #12]
    1514:	68fb      	ldr	r3, [r7, #12]
    1516:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    151a:	dbee      	blt.n	14fa <flash_erase_row+0x82>
    151c:	e000      	b.n	1520 <flash_erase_row+0xa8>
    151e:	bf00      	nop
    1520:	8a7b      	ldrh	r3, [r7, #18]
    1522:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1526:	4293      	cmp	r3, r2
    1528:	bf0c      	ite	eq
    152a:	2301      	moveq	r3, #1
    152c:	2300      	movne	r3, #0
    152e:	b2db      	uxtb	r3, r3
    1530:	4618      	mov	r0, r3
    1532:	3718      	adds	r7, #24
    1534:	46bd      	mov	sp, r7
    1536:	bd80      	pop	{r7, pc}
    1538:	40022000 	.word	0x40022000

0000153c <flash_sync>:
    153c:	b580      	push	{r7, lr}
    153e:	af00      	add	r7, sp, #0
    1540:	4b10      	ldr	r3, [pc, #64]	; (1584 <flash_sync+0x48>)
    1542:	781b      	ldrb	r3, [r3, #0]
    1544:	f003 0301 	and.w	r3, r3, #1
    1548:	2b00      	cmp	r3, #0
    154a:	d017      	beq.n	157c <flash_sync+0x40>
    154c:	4b0d      	ldr	r3, [pc, #52]	; (1584 <flash_sync+0x48>)
    154e:	785b      	ldrb	r3, [r3, #1]
    1550:	4618      	mov	r0, r3
    1552:	f7ff ff91 	bl	1478 <flash_erase_row>
    1556:	4603      	mov	r3, r0
    1558:	2b00      	cmp	r3, #0
    155a:	d00d      	beq.n	1578 <flash_sync+0x3c>
    155c:	f7ff fef0 	bl	1340 <write_back_buffer>
    1560:	4603      	mov	r3, r0
    1562:	2b00      	cmp	r3, #0
    1564:	d008      	beq.n	1578 <flash_sync+0x3c>
    1566:	4b07      	ldr	r3, [pc, #28]	; (1584 <flash_sync+0x48>)
    1568:	781b      	ldrb	r3, [r3, #0]
    156a:	f023 0301 	bic.w	r3, r3, #1
    156e:	b2da      	uxtb	r2, r3
    1570:	4b04      	ldr	r3, [pc, #16]	; (1584 <flash_sync+0x48>)
    1572:	701a      	strb	r2, [r3, #0]
    1574:	2301      	movs	r3, #1
    1576:	e002      	b.n	157e <flash_sync+0x42>
    1578:	2300      	movs	r3, #0
    157a:	e000      	b.n	157e <flash_sync+0x42>
    157c:	2301      	movs	r3, #1
    157e:	4618      	mov	r0, r3
    1580:	bd80      	pop	{r7, pc}
    1582:	bf00      	nop
    1584:	200001dc 	.word	0x200001dc

00001588 <flash_flush>:
    1588:	b480      	push	{r7}
    158a:	af00      	add	r7, sp, #0
    158c:	4b03      	ldr	r3, [pc, #12]	; (159c <flash_flush+0x14>)
    158e:	2200      	movs	r2, #0
    1590:	701a      	strb	r2, [r3, #0]
    1592:	bf00      	nop
    1594:	46bd      	mov	sp, r7
    1596:	bc80      	pop	{r7}
    1598:	4770      	bx	lr
    159a:	bf00      	nop
    159c:	200001dc 	.word	0x200001dc

000015a0 <flash_disable>:
    15a0:	b580      	push	{r7, lr}
    15a2:	af00      	add	r7, sp, #0
    15a4:	f7ff ffca 	bl	153c <flash_sync>
    15a8:	4b05      	ldr	r3, [pc, #20]	; (15c0 <flash_disable+0x20>)
    15aa:	2200      	movs	r2, #0
    15ac:	701a      	strb	r2, [r3, #0]
    15ae:	4a05      	ldr	r2, [pc, #20]	; (15c4 <flash_disable+0x24>)
    15b0:	4b04      	ldr	r3, [pc, #16]	; (15c4 <flash_disable+0x24>)
    15b2:	691b      	ldr	r3, [r3, #16]
    15b4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    15b8:	6113      	str	r3, [r2, #16]
    15ba:	bf00      	nop
    15bc:	bd80      	pop	{r7, pc}
    15be:	bf00      	nop
    15c0:	200001dc 	.word	0x200001dc
    15c4:	40022000 	.word	0x40022000

000015c8 <flash_write_byte>:
    15c8:	b580      	push	{r7, lr}
    15ca:	b084      	sub	sp, #16
    15cc:	af00      	add	r7, sp, #0
    15ce:	6078      	str	r0, [r7, #4]
    15d0:	460b      	mov	r3, r1
    15d2:	70fb      	strb	r3, [r7, #3]
    15d4:	687b      	ldr	r3, [r7, #4]
    15d6:	0a9b      	lsrs	r3, r3, #10
    15d8:	60fb      	str	r3, [r7, #12]
    15da:	68fb      	ldr	r3, [r7, #12]
    15dc:	2b3f      	cmp	r3, #63	; 0x3f
    15de:	d801      	bhi.n	15e4 <flash_write_byte+0x1c>
    15e0:	2300      	movs	r3, #0
    15e2:	e021      	b.n	1628 <flash_write_byte+0x60>
    15e4:	4b12      	ldr	r3, [pc, #72]	; (1630 <flash_write_byte+0x68>)
    15e6:	785b      	ldrb	r3, [r3, #1]
    15e8:	461a      	mov	r2, r3
    15ea:	68fb      	ldr	r3, [r7, #12]
    15ec:	429a      	cmp	r2, r3
    15ee:	d009      	beq.n	1604 <flash_write_byte+0x3c>
    15f0:	f7ff ffa4 	bl	153c <flash_sync>
    15f4:	4603      	mov	r3, r0
    15f6:	2b00      	cmp	r3, #0
    15f8:	d101      	bne.n	15fe <flash_write_byte+0x36>
    15fa:	2300      	movs	r3, #0
    15fc:	e014      	b.n	1628 <flash_write_byte+0x60>
    15fe:	68f8      	ldr	r0, [r7, #12]
    1600:	f7ff fee2 	bl	13c8 <load_row>
    1604:	687b      	ldr	r3, [r7, #4]
    1606:	f3c3 0309 	ubfx	r3, r3, #0, #10
    160a:	60bb      	str	r3, [r7, #8]
    160c:	4a08      	ldr	r2, [pc, #32]	; (1630 <flash_write_byte+0x68>)
    160e:	68bb      	ldr	r3, [r7, #8]
    1610:	4413      	add	r3, r2
    1612:	3302      	adds	r3, #2
    1614:	78fa      	ldrb	r2, [r7, #3]
    1616:	701a      	strb	r2, [r3, #0]
    1618:	4b05      	ldr	r3, [pc, #20]	; (1630 <flash_write_byte+0x68>)
    161a:	781b      	ldrb	r3, [r3, #0]
    161c:	f043 0301 	orr.w	r3, r3, #1
    1620:	b2da      	uxtb	r2, r3
    1622:	4b03      	ldr	r3, [pc, #12]	; (1630 <flash_write_byte+0x68>)
    1624:	701a      	strb	r2, [r3, #0]
    1626:	2301      	movs	r3, #1
    1628:	4618      	mov	r0, r3
    162a:	3710      	adds	r7, #16
    162c:	46bd      	mov	sp, r7
    162e:	bd80      	pop	{r7, pc}
    1630:	200001dc 	.word	0x200001dc

00001634 <flash_read_block>:
    1634:	b590      	push	{r4, r7, lr}
    1636:	b087      	sub	sp, #28
    1638:	af00      	add	r7, sp, #0
    163a:	60f8      	str	r0, [r7, #12]
    163c:	60b9      	str	r1, [r7, #8]
    163e:	607a      	str	r2, [r7, #4]
    1640:	2300      	movs	r3, #0
    1642:	617b      	str	r3, [r7, #20]
    1644:	e00d      	b.n	1662 <flash_read_block+0x2e>
    1646:	68bc      	ldr	r4, [r7, #8]
    1648:	1c63      	adds	r3, r4, #1
    164a:	60bb      	str	r3, [r7, #8]
    164c:	68fb      	ldr	r3, [r7, #12]
    164e:	1c5a      	adds	r2, r3, #1
    1650:	60fa      	str	r2, [r7, #12]
    1652:	4618      	mov	r0, r3
    1654:	f7ff fe20 	bl	1298 <read_byte>
    1658:	4603      	mov	r3, r0
    165a:	7023      	strb	r3, [r4, #0]
    165c:	697b      	ldr	r3, [r7, #20]
    165e:	3301      	adds	r3, #1
    1660:	617b      	str	r3, [r7, #20]
    1662:	697a      	ldr	r2, [r7, #20]
    1664:	687b      	ldr	r3, [r7, #4]
    1666:	429a      	cmp	r2, r3
    1668:	dbed      	blt.n	1646 <flash_read_block+0x12>
    166a:	bf00      	nop
    166c:	371c      	adds	r7, #28
    166e:	46bd      	mov	sp, r7
    1670:	bd90      	pop	{r4, r7, pc}

00001672 <flash_write_block>:
    1672:	b580      	push	{r7, lr}
    1674:	b086      	sub	sp, #24
    1676:	af00      	add	r7, sp, #0
    1678:	60f8      	str	r0, [r7, #12]
    167a:	60b9      	str	r1, [r7, #8]
    167c:	607a      	str	r2, [r7, #4]
    167e:	4b18      	ldr	r3, [pc, #96]	; (16e0 <flash_write_block+0x6e>)
    1680:	681b      	ldr	r3, [r3, #0]
    1682:	461a      	mov	r2, r3
    1684:	68fb      	ldr	r3, [r7, #12]
    1686:	4293      	cmp	r3, r2
    1688:	d201      	bcs.n	168e <flash_write_block+0x1c>
    168a:	2300      	movs	r3, #0
    168c:	e023      	b.n	16d6 <flash_write_block+0x64>
    168e:	f7ff fdcd 	bl	122c <flash_enable>
    1692:	4603      	mov	r3, r0
    1694:	2b00      	cmp	r3, #0
    1696:	d101      	bne.n	169c <flash_write_block+0x2a>
    1698:	2300      	movs	r3, #0
    169a:	e01c      	b.n	16d6 <flash_write_block+0x64>
    169c:	2300      	movs	r3, #0
    169e:	617b      	str	r3, [r7, #20]
    16a0:	e012      	b.n	16c8 <flash_write_block+0x56>
    16a2:	68fa      	ldr	r2, [r7, #12]
    16a4:	1c53      	adds	r3, r2, #1
    16a6:	60fb      	str	r3, [r7, #12]
    16a8:	68bb      	ldr	r3, [r7, #8]
    16aa:	1c59      	adds	r1, r3, #1
    16ac:	60b9      	str	r1, [r7, #8]
    16ae:	781b      	ldrb	r3, [r3, #0]
    16b0:	4619      	mov	r1, r3
    16b2:	4610      	mov	r0, r2
    16b4:	f7ff ff88 	bl	15c8 <flash_write_byte>
    16b8:	4603      	mov	r3, r0
    16ba:	2b00      	cmp	r3, #0
    16bc:	d101      	bne.n	16c2 <flash_write_block+0x50>
    16be:	2300      	movs	r3, #0
    16c0:	e009      	b.n	16d6 <flash_write_block+0x64>
    16c2:	697b      	ldr	r3, [r7, #20]
    16c4:	3301      	adds	r3, #1
    16c6:	617b      	str	r3, [r7, #20]
    16c8:	697a      	ldr	r2, [r7, #20]
    16ca:	687b      	ldr	r3, [r7, #4]
    16cc:	429a      	cmp	r2, r3
    16ce:	dbe8      	blt.n	16a2 <flash_write_block+0x30>
    16d0:	f7ff ff66 	bl	15a0 <flash_disable>
    16d4:	2301      	movs	r3, #1
    16d6:	4618      	mov	r0, r3
    16d8:	3718      	adds	r7, #24
    16da:	46bd      	mov	sp, r7
    16dc:	bd80      	pop	{r7, pc}
    16de:	bf00      	nop
    16e0:	00005c00 	.word	0x00005c00

000016e4 <btn_idx>:
    16e4:	b480      	push	{r7}
    16e6:	b085      	sub	sp, #20
    16e8:	af00      	add	r7, sp, #0
    16ea:	4603      	mov	r3, r0
    16ec:	71fb      	strb	r3, [r7, #7]
    16ee:	2300      	movs	r3, #0
    16f0:	73fb      	strb	r3, [r7, #15]
    16f2:	79fb      	ldrb	r3, [r7, #7]
    16f4:	085b      	lsrs	r3, r3, #1
    16f6:	71fb      	strb	r3, [r7, #7]
    16f8:	e005      	b.n	1706 <btn_idx+0x22>
    16fa:	7bfb      	ldrb	r3, [r7, #15]
    16fc:	3301      	adds	r3, #1
    16fe:	73fb      	strb	r3, [r7, #15]
    1700:	79fb      	ldrb	r3, [r7, #7]
    1702:	085b      	lsrs	r3, r3, #1
    1704:	71fb      	strb	r3, [r7, #7]
    1706:	79fb      	ldrb	r3, [r7, #7]
    1708:	2b00      	cmp	r3, #0
    170a:	d1f6      	bne.n	16fa <btn_idx+0x16>
    170c:	7bfb      	ldrb	r3, [r7, #15]
    170e:	4618      	mov	r0, r3
    1710:	3714      	adds	r7, #20
    1712:	46bd      	mov	sp, r7
    1714:	bc80      	pop	{r7}
    1716:	4770      	bx	lr

00001718 <btn_mask>:
    1718:	b480      	push	{r7}
    171a:	b085      	sub	sp, #20
    171c:	af00      	add	r7, sp, #0
    171e:	4603      	mov	r3, r0
    1720:	71fb      	strb	r3, [r7, #7]
    1722:	2300      	movs	r3, #0
    1724:	60fb      	str	r3, [r7, #12]
    1726:	e00f      	b.n	1748 <btn_mask+0x30>
    1728:	4a0c      	ldr	r2, [pc, #48]	; (175c <btn_mask+0x44>)
    172a:	68fb      	ldr	r3, [r7, #12]
    172c:	4413      	add	r3, r2
    172e:	781b      	ldrb	r3, [r3, #0]
    1730:	79fa      	ldrb	r2, [r7, #7]
    1732:	429a      	cmp	r2, r3
    1734:	d105      	bne.n	1742 <btn_mask+0x2a>
    1736:	2201      	movs	r2, #1
    1738:	68fb      	ldr	r3, [r7, #12]
    173a:	fa02 f303 	lsl.w	r3, r2, r3
    173e:	b2db      	uxtb	r3, r3
    1740:	e006      	b.n	1750 <btn_mask+0x38>
    1742:	68fb      	ldr	r3, [r7, #12]
    1744:	3301      	adds	r3, #1
    1746:	60fb      	str	r3, [r7, #12]
    1748:	68fb      	ldr	r3, [r7, #12]
    174a:	2b07      	cmp	r3, #7
    174c:	ddec      	ble.n	1728 <btn_mask+0x10>
    174e:	23ff      	movs	r3, #255	; 0xff
    1750:	4618      	mov	r0, r3
    1752:	3714      	adds	r7, #20
    1754:	46bd      	mov	sp, r7
    1756:	bc80      	pop	{r7}
    1758:	4770      	bx	lr
    175a:	bf00      	nop
    175c:	20000004 	.word	0x20000004

00001760 <gamepad_init>:
    1760:	b580      	push	{r7, lr}
    1762:	af00      	add	r7, sp, #0
    1764:	2202      	movs	r2, #2
    1766:	210f      	movs	r1, #15
    1768:	4808      	ldr	r0, [pc, #32]	; (178c <gamepad_init+0x2c>)
    176a:	f000 fb63 	bl	1e34 <config_pin>
    176e:	2202      	movs	r2, #2
    1770:	210d      	movs	r1, #13
    1772:	4806      	ldr	r0, [pc, #24]	; (178c <gamepad_init+0x2c>)
    1774:	f000 fb5e 	bl	1e34 <config_pin>
    1778:	2208      	movs	r2, #8
    177a:	210e      	movs	r1, #14
    177c:	4803      	ldr	r0, [pc, #12]	; (178c <gamepad_init+0x2c>)
    177e:	f000 fb59 	bl	1e34 <config_pin>
    1782:	4b03      	ldr	r3, [pc, #12]	; (1790 <gamepad_init+0x30>)
    1784:	22ff      	movs	r2, #255	; 0xff
    1786:	701a      	strb	r2, [r3, #0]
    1788:	bf00      	nop
    178a:	bd80      	pop	{r7, pc}
    178c:	40010c00 	.word	0x40010c00
    1790:	20002604 	.word	0x20002604

00001794 <shift_out>:
    1794:	b480      	push	{r7}
    1796:	b085      	sub	sp, #20
    1798:	af00      	add	r7, sp, #0
    179a:	4603      	mov	r3, r0
    179c:	71fb      	strb	r3, [r7, #7]
    179e:	2301      	movs	r3, #1
    17a0:	73fb      	strb	r3, [r7, #15]
    17a2:	2300      	movs	r3, #0
    17a4:	73bb      	strb	r3, [r7, #14]
    17a6:	e033      	b.n	1810 <shift_out+0x7c>
    17a8:	79fa      	ldrb	r2, [r7, #7]
    17aa:	7bfb      	ldrb	r3, [r7, #15]
    17ac:	4013      	ands	r3, r2
    17ae:	b2db      	uxtb	r3, r3
    17b0:	2b00      	cmp	r3, #0
    17b2:	d006      	beq.n	17c2 <shift_out+0x2e>
    17b4:	4a25      	ldr	r2, [pc, #148]	; (184c <shift_out+0xb8>)
    17b6:	4b25      	ldr	r3, [pc, #148]	; (184c <shift_out+0xb8>)
    17b8:	68db      	ldr	r3, [r3, #12]
    17ba:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    17be:	60d3      	str	r3, [r2, #12]
    17c0:	e005      	b.n	17ce <shift_out+0x3a>
    17c2:	4a22      	ldr	r2, [pc, #136]	; (184c <shift_out+0xb8>)
    17c4:	4b21      	ldr	r3, [pc, #132]	; (184c <shift_out+0xb8>)
    17c6:	68db      	ldr	r3, [r3, #12]
    17c8:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    17cc:	60d3      	str	r3, [r2, #12]
    17ce:	4a1f      	ldr	r2, [pc, #124]	; (184c <shift_out+0xb8>)
    17d0:	4b1e      	ldr	r3, [pc, #120]	; (184c <shift_out+0xb8>)
    17d2:	68db      	ldr	r3, [r3, #12]
    17d4:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    17d8:	60d3      	str	r3, [r2, #12]
    17da:	bf00      	nop
    17dc:	bf00      	nop
    17de:	bf00      	nop
    17e0:	4a1a      	ldr	r2, [pc, #104]	; (184c <shift_out+0xb8>)
    17e2:	4b1a      	ldr	r3, [pc, #104]	; (184c <shift_out+0xb8>)
    17e4:	68db      	ldr	r3, [r3, #12]
    17e6:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    17ea:	60d3      	str	r3, [r2, #12]
    17ec:	7bbb      	ldrb	r3, [r7, #14]
    17ee:	085b      	lsrs	r3, r3, #1
    17f0:	73bb      	strb	r3, [r7, #14]
    17f2:	4a16      	ldr	r2, [pc, #88]	; (184c <shift_out+0xb8>)
    17f4:	4b15      	ldr	r3, [pc, #84]	; (184c <shift_out+0xb8>)
    17f6:	689b      	ldr	r3, [r3, #8]
    17f8:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    17fc:	6093      	str	r3, [r2, #8]
    17fe:	2b00      	cmp	r3, #0
    1800:	d003      	beq.n	180a <shift_out+0x76>
    1802:	7bbb      	ldrb	r3, [r7, #14]
    1804:	f063 037f 	orn	r3, r3, #127	; 0x7f
    1808:	73bb      	strb	r3, [r7, #14]
    180a:	7bfb      	ldrb	r3, [r7, #15]
    180c:	005b      	lsls	r3, r3, #1
    180e:	73fb      	strb	r3, [r7, #15]
    1810:	7bfb      	ldrb	r3, [r7, #15]
    1812:	2b00      	cmp	r3, #0
    1814:	d1c8      	bne.n	17a8 <shift_out+0x14>
    1816:	4a0d      	ldr	r2, [pc, #52]	; (184c <shift_out+0xb8>)
    1818:	4b0c      	ldr	r3, [pc, #48]	; (184c <shift_out+0xb8>)
    181a:	68db      	ldr	r3, [r3, #12]
    181c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    1820:	60d3      	str	r3, [r2, #12]
    1822:	4a0a      	ldr	r2, [pc, #40]	; (184c <shift_out+0xb8>)
    1824:	4b09      	ldr	r3, [pc, #36]	; (184c <shift_out+0xb8>)
    1826:	68db      	ldr	r3, [r3, #12]
    1828:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    182c:	60d3      	str	r3, [r2, #12]
    182e:	bf00      	nop
    1830:	bf00      	nop
    1832:	bf00      	nop
    1834:	4a05      	ldr	r2, [pc, #20]	; (184c <shift_out+0xb8>)
    1836:	4b05      	ldr	r3, [pc, #20]	; (184c <shift_out+0xb8>)
    1838:	68db      	ldr	r3, [r3, #12]
    183a:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    183e:	60d3      	str	r3, [r2, #12]
    1840:	7bbb      	ldrb	r3, [r7, #14]
    1842:	4618      	mov	r0, r3
    1844:	3714      	adds	r7, #20
    1846:	46bd      	mov	sp, r7
    1848:	bc80      	pop	{r7}
    184a:	4770      	bx	lr
    184c:	40010c00 	.word	0x40010c00

00001850 <read_gamepad>:
    1850:	b580      	push	{r7, lr}
    1852:	af00      	add	r7, sp, #0
    1854:	20fe      	movs	r0, #254	; 0xfe
    1856:	f7ff ff9d 	bl	1794 <shift_out>
    185a:	4603      	mov	r3, r0
    185c:	461a      	mov	r2, r3
    185e:	4b02      	ldr	r3, [pc, #8]	; (1868 <read_gamepad+0x18>)
    1860:	701a      	strb	r2, [r3, #0]
    1862:	bf00      	nop
    1864:	bd80      	pop	{r7, pc}
    1866:	bf00      	nop
    1868:	20002604 	.word	0x20002604

0000186c <btn_query_down>:
    186c:	b580      	push	{r7, lr}
    186e:	b084      	sub	sp, #16
    1870:	af00      	add	r7, sp, #0
    1872:	4603      	mov	r3, r0
    1874:	71fb      	strb	r3, [r7, #7]
    1876:	79fb      	ldrb	r3, [r7, #7]
    1878:	4618      	mov	r0, r3
    187a:	f7ff ff4d 	bl	1718 <btn_mask>
    187e:	4603      	mov	r3, r0
    1880:	73fb      	strb	r3, [r7, #15]
    1882:	4b07      	ldr	r3, [pc, #28]	; (18a0 <btn_query_down+0x34>)
    1884:	781b      	ldrb	r3, [r3, #0]
    1886:	b2da      	uxtb	r2, r3
    1888:	7bfb      	ldrb	r3, [r7, #15]
    188a:	4013      	ands	r3, r2
    188c:	b2db      	uxtb	r3, r3
    188e:	2b00      	cmp	r3, #0
    1890:	bf0c      	ite	eq
    1892:	2301      	moveq	r3, #1
    1894:	2300      	movne	r3, #0
    1896:	b2db      	uxtb	r3, r3
    1898:	4618      	mov	r0, r3
    189a:	3710      	adds	r7, #16
    189c:	46bd      	mov	sp, r7
    189e:	bd80      	pop	{r7, pc}
    18a0:	20002604 	.word	0x20002604

000018a4 <btn_wait_down>:
    18a4:	b580      	push	{r7, lr}
    18a6:	b084      	sub	sp, #16
    18a8:	af00      	add	r7, sp, #0
    18aa:	4603      	mov	r3, r0
    18ac:	71fb      	strb	r3, [r7, #7]
    18ae:	79fb      	ldrb	r3, [r7, #7]
    18b0:	4618      	mov	r0, r3
    18b2:	f7ff ff31 	bl	1718 <btn_mask>
    18b6:	4603      	mov	r3, r0
    18b8:	72fb      	strb	r3, [r7, #11]
    18ba:	2300      	movs	r3, #0
    18bc:	60fb      	str	r3, [r7, #12]
    18be:	e00f      	b.n	18e0 <btn_wait_down+0x3c>
    18c0:	f003 fb6c 	bl	4f9c <frame_sync>
    18c4:	4b0a      	ldr	r3, [pc, #40]	; (18f0 <btn_wait_down+0x4c>)
    18c6:	781b      	ldrb	r3, [r3, #0]
    18c8:	b2da      	uxtb	r2, r3
    18ca:	7afb      	ldrb	r3, [r7, #11]
    18cc:	4013      	ands	r3, r2
    18ce:	b2db      	uxtb	r3, r3
    18d0:	2b00      	cmp	r3, #0
    18d2:	d103      	bne.n	18dc <btn_wait_down+0x38>
    18d4:	68fb      	ldr	r3, [r7, #12]
    18d6:	3301      	adds	r3, #1
    18d8:	60fb      	str	r3, [r7, #12]
    18da:	e001      	b.n	18e0 <btn_wait_down+0x3c>
    18dc:	2300      	movs	r3, #0
    18de:	60fb      	str	r3, [r7, #12]
    18e0:	68fb      	ldr	r3, [r7, #12]
    18e2:	2b02      	cmp	r3, #2
    18e4:	ddec      	ble.n	18c0 <btn_wait_down+0x1c>
    18e6:	bf00      	nop
    18e8:	3710      	adds	r7, #16
    18ea:	46bd      	mov	sp, r7
    18ec:	bd80      	pop	{r7, pc}
    18ee:	bf00      	nop
    18f0:	20002604 	.word	0x20002604

000018f4 <btn_wait_up>:
    18f4:	b580      	push	{r7, lr}
    18f6:	b084      	sub	sp, #16
    18f8:	af00      	add	r7, sp, #0
    18fa:	4603      	mov	r3, r0
    18fc:	71fb      	strb	r3, [r7, #7]
    18fe:	79fb      	ldrb	r3, [r7, #7]
    1900:	4618      	mov	r0, r3
    1902:	f7ff ff09 	bl	1718 <btn_mask>
    1906:	4603      	mov	r3, r0
    1908:	72fb      	strb	r3, [r7, #11]
    190a:	2300      	movs	r3, #0
    190c:	60fb      	str	r3, [r7, #12]
    190e:	e00f      	b.n	1930 <btn_wait_up+0x3c>
    1910:	f003 fb44 	bl	4f9c <frame_sync>
    1914:	4b0a      	ldr	r3, [pc, #40]	; (1940 <btn_wait_up+0x4c>)
    1916:	781b      	ldrb	r3, [r3, #0]
    1918:	b2da      	uxtb	r2, r3
    191a:	7afb      	ldrb	r3, [r7, #11]
    191c:	4013      	ands	r3, r2
    191e:	b2db      	uxtb	r3, r3
    1920:	2b00      	cmp	r3, #0
    1922:	d003      	beq.n	192c <btn_wait_up+0x38>
    1924:	68fb      	ldr	r3, [r7, #12]
    1926:	3301      	adds	r3, #1
    1928:	60fb      	str	r3, [r7, #12]
    192a:	e001      	b.n	1930 <btn_wait_up+0x3c>
    192c:	2300      	movs	r3, #0
    192e:	60fb      	str	r3, [r7, #12]
    1930:	68fb      	ldr	r3, [r7, #12]
    1932:	2b02      	cmp	r3, #2
    1934:	ddec      	ble.n	1910 <btn_wait_up+0x1c>
    1936:	bf00      	nop
    1938:	3710      	adds	r7, #16
    193a:	46bd      	mov	sp, r7
    193c:	bd80      	pop	{r7, pc}
    193e:	bf00      	nop
    1940:	20002604 	.word	0x20002604

00001944 <btn_wait_any>:
    1944:	b580      	push	{r7, lr}
    1946:	b082      	sub	sp, #8
    1948:	af00      	add	r7, sp, #0
    194a:	4b16      	ldr	r3, [pc, #88]	; (19a4 <btn_wait_any+0x60>)
    194c:	781b      	ldrb	r3, [r3, #0]
    194e:	71fb      	strb	r3, [r7, #7]
    1950:	2300      	movs	r3, #0
    1952:	603b      	str	r3, [r7, #0]
    1954:	e015      	b.n	1982 <btn_wait_any+0x3e>
    1956:	f003 fb21 	bl	4f9c <frame_sync>
    195a:	4b12      	ldr	r3, [pc, #72]	; (19a4 <btn_wait_any+0x60>)
    195c:	781b      	ldrb	r3, [r3, #0]
    195e:	b2db      	uxtb	r3, r3
    1960:	79fa      	ldrb	r2, [r7, #7]
    1962:	429a      	cmp	r2, r3
    1964:	d005      	beq.n	1972 <btn_wait_any+0x2e>
    1966:	2300      	movs	r3, #0
    1968:	603b      	str	r3, [r7, #0]
    196a:	4b0e      	ldr	r3, [pc, #56]	; (19a4 <btn_wait_any+0x60>)
    196c:	781b      	ldrb	r3, [r3, #0]
    196e:	71fb      	strb	r3, [r7, #7]
    1970:	e007      	b.n	1982 <btn_wait_any+0x3e>
    1972:	4b0c      	ldr	r3, [pc, #48]	; (19a4 <btn_wait_any+0x60>)
    1974:	781b      	ldrb	r3, [r3, #0]
    1976:	b2db      	uxtb	r3, r3
    1978:	2bff      	cmp	r3, #255	; 0xff
    197a:	d002      	beq.n	1982 <btn_wait_any+0x3e>
    197c:	683b      	ldr	r3, [r7, #0]
    197e:	3301      	adds	r3, #1
    1980:	603b      	str	r3, [r7, #0]
    1982:	683b      	ldr	r3, [r7, #0]
    1984:	2b02      	cmp	r3, #2
    1986:	dde6      	ble.n	1956 <btn_wait_any+0x12>
    1988:	79fb      	ldrb	r3, [r7, #7]
    198a:	43db      	mvns	r3, r3
    198c:	b2db      	uxtb	r3, r3
    198e:	4618      	mov	r0, r3
    1990:	f7ff fea8 	bl	16e4 <btn_idx>
    1994:	4603      	mov	r3, r0
    1996:	461a      	mov	r2, r3
    1998:	4b03      	ldr	r3, [pc, #12]	; (19a8 <btn_wait_any+0x64>)
    199a:	5c9b      	ldrb	r3, [r3, r2]
    199c:	4618      	mov	r0, r3
    199e:	3708      	adds	r7, #8
    19a0:	46bd      	mov	sp, r7
    19a2:	bd80      	pop	{r7, pc}
    19a4:	20002604 	.word	0x20002604
    19a8:	20000004 	.word	0x20000004

000019ac <btn_set_value>:
    19ac:	b480      	push	{r7}
    19ae:	b083      	sub	sp, #12
    19b0:	af00      	add	r7, sp, #0
    19b2:	4603      	mov	r3, r0
    19b4:	460a      	mov	r2, r1
    19b6:	71fb      	strb	r3, [r7, #7]
    19b8:	4613      	mov	r3, r2
    19ba:	71bb      	strb	r3, [r7, #6]
    19bc:	79fb      	ldrb	r3, [r7, #7]
    19be:	4904      	ldr	r1, [pc, #16]	; (19d0 <btn_set_value+0x24>)
    19c0:	79ba      	ldrb	r2, [r7, #6]
    19c2:	54ca      	strb	r2, [r1, r3]
    19c4:	bf00      	nop
    19c6:	370c      	adds	r7, #12
    19c8:	46bd      	mov	sp, r7
    19ca:	bc80      	pop	{r7}
    19cc:	4770      	bx	lr
    19ce:	bf00      	nop
    19d0:	20000004 	.word	0x20000004

000019d4 <get_keymap>:
    19d4:	b480      	push	{r7}
    19d6:	af00      	add	r7, sp, #0
    19d8:	4b02      	ldr	r3, [pc, #8]	; (19e4 <get_keymap+0x10>)
    19da:	4618      	mov	r0, r3
    19dc:	46bd      	mov	sp, r7
    19de:	bc80      	pop	{r7}
    19e0:	4770      	bx	lr
    19e2:	bf00      	nop
    19e4:	20000004 	.word	0x20000004

000019e8 <games_count>:
    19e8:	b480      	push	{r7}
    19ea:	b083      	sub	sp, #12
    19ec:	af00      	add	r7, sp, #0
    19ee:	2300      	movs	r3, #0
    19f0:	607b      	str	r3, [r7, #4]
    19f2:	490b      	ldr	r1, [pc, #44]	; (1a20 <games_count+0x38>)
    19f4:	687a      	ldr	r2, [r7, #4]
    19f6:	4613      	mov	r3, r2
    19f8:	005b      	lsls	r3, r3, #1
    19fa:	4413      	add	r3, r2
    19fc:	00db      	lsls	r3, r3, #3
    19fe:	440b      	add	r3, r1
    1a00:	3310      	adds	r3, #16
    1a02:	681b      	ldr	r3, [r3, #0]
    1a04:	2b00      	cmp	r3, #0
    1a06:	d003      	beq.n	1a10 <games_count+0x28>
    1a08:	687b      	ldr	r3, [r7, #4]
    1a0a:	3301      	adds	r3, #1
    1a0c:	607b      	str	r3, [r7, #4]
    1a0e:	e7f0      	b.n	19f2 <games_count+0xa>
    1a10:	bf00      	nop
    1a12:	687b      	ldr	r3, [r7, #4]
    1a14:	4618      	mov	r0, r3
    1a16:	370c      	adds	r7, #12
    1a18:	46bd      	mov	sp, r7
    1a1a:	bc80      	pop	{r7}
    1a1c:	4770      	bx	lr
    1a1e:	bf00      	nop
    1a20:	2000000c 	.word	0x2000000c

00001a24 <strcmp>:
    1a24:	b480      	push	{r7}
    1a26:	b085      	sub	sp, #20
    1a28:	af00      	add	r7, sp, #0
    1a2a:	6078      	str	r0, [r7, #4]
    1a2c:	6039      	str	r1, [r7, #0]
    1a2e:	2300      	movs	r3, #0
    1a30:	60fb      	str	r3, [r7, #12]
    1a32:	e018      	b.n	1a66 <strcmp+0x42>
    1a34:	687b      	ldr	r3, [r7, #4]
    1a36:	781a      	ldrb	r2, [r3, #0]
    1a38:	683b      	ldr	r3, [r7, #0]
    1a3a:	781b      	ldrb	r3, [r3, #0]
    1a3c:	429a      	cmp	r2, r3
    1a3e:	d203      	bcs.n	1a48 <strcmp+0x24>
    1a40:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1a44:	60fb      	str	r3, [r7, #12]
    1a46:	e016      	b.n	1a76 <strcmp+0x52>
    1a48:	687b      	ldr	r3, [r7, #4]
    1a4a:	781a      	ldrb	r2, [r3, #0]
    1a4c:	683b      	ldr	r3, [r7, #0]
    1a4e:	781b      	ldrb	r3, [r3, #0]
    1a50:	429a      	cmp	r2, r3
    1a52:	d902      	bls.n	1a5a <strcmp+0x36>
    1a54:	2301      	movs	r3, #1
    1a56:	60fb      	str	r3, [r7, #12]
    1a58:	e00d      	b.n	1a76 <strcmp+0x52>
    1a5a:	687b      	ldr	r3, [r7, #4]
    1a5c:	3301      	adds	r3, #1
    1a5e:	607b      	str	r3, [r7, #4]
    1a60:	683b      	ldr	r3, [r7, #0]
    1a62:	3301      	adds	r3, #1
    1a64:	603b      	str	r3, [r7, #0]
    1a66:	687b      	ldr	r3, [r7, #4]
    1a68:	781b      	ldrb	r3, [r3, #0]
    1a6a:	2b00      	cmp	r3, #0
    1a6c:	d003      	beq.n	1a76 <strcmp+0x52>
    1a6e:	683b      	ldr	r3, [r7, #0]
    1a70:	781b      	ldrb	r3, [r3, #0]
    1a72:	2b00      	cmp	r3, #0
    1a74:	d1de      	bne.n	1a34 <strcmp+0x10>
    1a76:	68fb      	ldr	r3, [r7, #12]
    1a78:	2b00      	cmp	r3, #0
    1a7a:	d115      	bne.n	1aa8 <strcmp+0x84>
    1a7c:	687b      	ldr	r3, [r7, #4]
    1a7e:	781b      	ldrb	r3, [r3, #0]
    1a80:	2b00      	cmp	r3, #0
    1a82:	d107      	bne.n	1a94 <strcmp+0x70>
    1a84:	683b      	ldr	r3, [r7, #0]
    1a86:	781b      	ldrb	r3, [r3, #0]
    1a88:	2b00      	cmp	r3, #0
    1a8a:	d003      	beq.n	1a94 <strcmp+0x70>
    1a8c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1a90:	60fb      	str	r3, [r7, #12]
    1a92:	e009      	b.n	1aa8 <strcmp+0x84>
    1a94:	687b      	ldr	r3, [r7, #4]
    1a96:	781b      	ldrb	r3, [r3, #0]
    1a98:	2b00      	cmp	r3, #0
    1a9a:	d005      	beq.n	1aa8 <strcmp+0x84>
    1a9c:	683b      	ldr	r3, [r7, #0]
    1a9e:	781b      	ldrb	r3, [r3, #0]
    1aa0:	2b00      	cmp	r3, #0
    1aa2:	d101      	bne.n	1aa8 <strcmp+0x84>
    1aa4:	2301      	movs	r3, #1
    1aa6:	60fb      	str	r3, [r7, #12]
    1aa8:	68fb      	ldr	r3, [r7, #12]
    1aaa:	4618      	mov	r0, r3
    1aac:	3714      	adds	r7, #20
    1aae:	46bd      	mov	sp, r7
    1ab0:	bc80      	pop	{r7}
    1ab2:	4770      	bx	lr

00001ab4 <alpha>:
    1ab4:	b480      	push	{r7}
    1ab6:	b083      	sub	sp, #12
    1ab8:	af00      	add	r7, sp, #0
    1aba:	4603      	mov	r3, r0
    1abc:	71fb      	strb	r3, [r7, #7]
    1abe:	79fb      	ldrb	r3, [r7, #7]
    1ac0:	2b60      	cmp	r3, #96	; 0x60
    1ac2:	d902      	bls.n	1aca <alpha+0x16>
    1ac4:	79fb      	ldrb	r3, [r7, #7]
    1ac6:	2b7a      	cmp	r3, #122	; 0x7a
    1ac8:	d905      	bls.n	1ad6 <alpha+0x22>
    1aca:	79fb      	ldrb	r3, [r7, #7]
    1acc:	2b40      	cmp	r3, #64	; 0x40
    1ace:	d904      	bls.n	1ada <alpha+0x26>
    1ad0:	79fb      	ldrb	r3, [r7, #7]
    1ad2:	2b5a      	cmp	r3, #90	; 0x5a
    1ad4:	d801      	bhi.n	1ada <alpha+0x26>
    1ad6:	2301      	movs	r3, #1
    1ad8:	e000      	b.n	1adc <alpha+0x28>
    1ada:	2300      	movs	r3, #0
    1adc:	4618      	mov	r0, r3
    1ade:	370c      	adds	r7, #12
    1ae0:	46bd      	mov	sp, r7
    1ae2:	bc80      	pop	{r7}
    1ae4:	4770      	bx	lr

00001ae6 <digit>:
    1ae6:	b480      	push	{r7}
    1ae8:	b083      	sub	sp, #12
    1aea:	af00      	add	r7, sp, #0
    1aec:	4603      	mov	r3, r0
    1aee:	71fb      	strb	r3, [r7, #7]
    1af0:	79fb      	ldrb	r3, [r7, #7]
    1af2:	2b2f      	cmp	r3, #47	; 0x2f
    1af4:	d904      	bls.n	1b00 <digit+0x1a>
    1af6:	79fb      	ldrb	r3, [r7, #7]
    1af8:	2b39      	cmp	r3, #57	; 0x39
    1afa:	d801      	bhi.n	1b00 <digit+0x1a>
    1afc:	2301      	movs	r3, #1
    1afe:	e000      	b.n	1b02 <digit+0x1c>
    1b00:	2300      	movs	r3, #0
    1b02:	4618      	mov	r0, r3
    1b04:	370c      	adds	r7, #12
    1b06:	46bd      	mov	sp, r7
    1b08:	bc80      	pop	{r7}
    1b0a:	4770      	bx	lr

00001b0c <hexdigit>:
    1b0c:	b580      	push	{r7, lr}
    1b0e:	b082      	sub	sp, #8
    1b10:	af00      	add	r7, sp, #0
    1b12:	4603      	mov	r3, r0
    1b14:	71fb      	strb	r3, [r7, #7]
    1b16:	79fb      	ldrb	r3, [r7, #7]
    1b18:	2b60      	cmp	r3, #96	; 0x60
    1b1a:	d902      	bls.n	1b22 <hexdigit+0x16>
    1b1c:	79fb      	ldrb	r3, [r7, #7]
    1b1e:	3b20      	subs	r3, #32
    1b20:	71fb      	strb	r3, [r7, #7]
    1b22:	79fb      	ldrb	r3, [r7, #7]
    1b24:	4618      	mov	r0, r3
    1b26:	f7ff ffde 	bl	1ae6 <digit>
    1b2a:	4603      	mov	r3, r0
    1b2c:	2b00      	cmp	r3, #0
    1b2e:	d105      	bne.n	1b3c <hexdigit+0x30>
    1b30:	79fb      	ldrb	r3, [r7, #7]
    1b32:	2b40      	cmp	r3, #64	; 0x40
    1b34:	d904      	bls.n	1b40 <hexdigit+0x34>
    1b36:	79fb      	ldrb	r3, [r7, #7]
    1b38:	2b46      	cmp	r3, #70	; 0x46
    1b3a:	d801      	bhi.n	1b40 <hexdigit+0x34>
    1b3c:	2301      	movs	r3, #1
    1b3e:	e000      	b.n	1b42 <hexdigit+0x36>
    1b40:	2300      	movs	r3, #0
    1b42:	4618      	mov	r0, r3
    1b44:	3708      	adds	r7, #8
    1b46:	46bd      	mov	sp, r7
    1b48:	bd80      	pop	{r7, pc}

00001b4a <atoi>:
    1b4a:	b580      	push	{r7, lr}
    1b4c:	b086      	sub	sp, #24
    1b4e:	af00      	add	r7, sp, #0
    1b50:	6078      	str	r0, [r7, #4]
    1b52:	2300      	movs	r3, #0
    1b54:	617b      	str	r3, [r7, #20]
    1b56:	2301      	movs	r3, #1
    1b58:	613b      	str	r3, [r7, #16]
    1b5a:	230a      	movs	r3, #10
    1b5c:	60fb      	str	r3, [r7, #12]
    1b5e:	e002      	b.n	1b66 <atoi+0x1c>
    1b60:	687b      	ldr	r3, [r7, #4]
    1b62:	3301      	adds	r3, #1
    1b64:	607b      	str	r3, [r7, #4]
    1b66:	687b      	ldr	r3, [r7, #4]
    1b68:	781b      	ldrb	r3, [r3, #0]
    1b6a:	2b00      	cmp	r3, #0
    1b6c:	d003      	beq.n	1b76 <atoi+0x2c>
    1b6e:	687b      	ldr	r3, [r7, #4]
    1b70:	781b      	ldrb	r3, [r3, #0]
    1b72:	2b20      	cmp	r3, #32
    1b74:	d0f4      	beq.n	1b60 <atoi+0x16>
    1b76:	687b      	ldr	r3, [r7, #4]
    1b78:	781b      	ldrb	r3, [r3, #0]
    1b7a:	2b2d      	cmp	r3, #45	; 0x2d
    1b7c:	d105      	bne.n	1b8a <atoi+0x40>
    1b7e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1b82:	613b      	str	r3, [r7, #16]
    1b84:	687b      	ldr	r3, [r7, #4]
    1b86:	3301      	adds	r3, #1
    1b88:	607b      	str	r3, [r7, #4]
    1b8a:	687b      	ldr	r3, [r7, #4]
    1b8c:	781b      	ldrb	r3, [r3, #0]
    1b8e:	2b24      	cmp	r3, #36	; 0x24
    1b90:	d10e      	bne.n	1bb0 <atoi+0x66>
    1b92:	687b      	ldr	r3, [r7, #4]
    1b94:	3301      	adds	r3, #1
    1b96:	781b      	ldrb	r3, [r3, #0]
    1b98:	4618      	mov	r0, r3
    1b9a:	f7ff ffb7 	bl	1b0c <hexdigit>
    1b9e:	4603      	mov	r3, r0
    1ba0:	2b00      	cmp	r3, #0
    1ba2:	d005      	beq.n	1bb0 <atoi+0x66>
    1ba4:	2310      	movs	r3, #16
    1ba6:	60fb      	str	r3, [r7, #12]
    1ba8:	687b      	ldr	r3, [r7, #4]
    1baa:	3301      	adds	r3, #1
    1bac:	607b      	str	r3, [r7, #4]
    1bae:	e012      	b.n	1bd6 <atoi+0x8c>
    1bb0:	687b      	ldr	r3, [r7, #4]
    1bb2:	781b      	ldrb	r3, [r3, #0]
    1bb4:	2b30      	cmp	r3, #48	; 0x30
    1bb6:	d128      	bne.n	1c0a <atoi+0xc0>
    1bb8:	687b      	ldr	r3, [r7, #4]
    1bba:	3301      	adds	r3, #1
    1bbc:	781b      	ldrb	r3, [r3, #0]
    1bbe:	2b78      	cmp	r3, #120	; 0x78
    1bc0:	d004      	beq.n	1bcc <atoi+0x82>
    1bc2:	687b      	ldr	r3, [r7, #4]
    1bc4:	3301      	adds	r3, #1
    1bc6:	781b      	ldrb	r3, [r3, #0]
    1bc8:	2b58      	cmp	r3, #88	; 0x58
    1bca:	d11e      	bne.n	1c0a <atoi+0xc0>
    1bcc:	2310      	movs	r3, #16
    1bce:	60fb      	str	r3, [r7, #12]
    1bd0:	687b      	ldr	r3, [r7, #4]
    1bd2:	3302      	adds	r3, #2
    1bd4:	607b      	str	r3, [r7, #4]
    1bd6:	e018      	b.n	1c0a <atoi+0xc0>
    1bd8:	7afb      	ldrb	r3, [r7, #11]
    1bda:	2b60      	cmp	r3, #96	; 0x60
    1bdc:	d902      	bls.n	1be4 <atoi+0x9a>
    1bde:	7afb      	ldrb	r3, [r7, #11]
    1be0:	3b20      	subs	r3, #32
    1be2:	72fb      	strb	r3, [r7, #11]
    1be4:	7afb      	ldrb	r3, [r7, #11]
    1be6:	3b30      	subs	r3, #48	; 0x30
    1be8:	72fb      	strb	r3, [r7, #11]
    1bea:	7afb      	ldrb	r3, [r7, #11]
    1bec:	2b09      	cmp	r3, #9
    1bee:	d902      	bls.n	1bf6 <atoi+0xac>
    1bf0:	7afb      	ldrb	r3, [r7, #11]
    1bf2:	3b07      	subs	r3, #7
    1bf4:	72fb      	strb	r3, [r7, #11]
    1bf6:	697b      	ldr	r3, [r7, #20]
    1bf8:	68fa      	ldr	r2, [r7, #12]
    1bfa:	fb02 f203 	mul.w	r2, r2, r3
    1bfe:	7afb      	ldrb	r3, [r7, #11]
    1c00:	4413      	add	r3, r2
    1c02:	617b      	str	r3, [r7, #20]
    1c04:	687b      	ldr	r3, [r7, #4]
    1c06:	3301      	adds	r3, #1
    1c08:	607b      	str	r3, [r7, #4]
    1c0a:	687b      	ldr	r3, [r7, #4]
    1c0c:	781b      	ldrb	r3, [r3, #0]
    1c0e:	72fb      	strb	r3, [r7, #11]
    1c10:	7afb      	ldrb	r3, [r7, #11]
    1c12:	2b00      	cmp	r3, #0
    1c14:	d00d      	beq.n	1c32 <atoi+0xe8>
    1c16:	68fb      	ldr	r3, [r7, #12]
    1c18:	2b0a      	cmp	r3, #10
    1c1a:	d10a      	bne.n	1c32 <atoi+0xe8>
    1c1c:	7afb      	ldrb	r3, [r7, #11]
    1c1e:	4618      	mov	r0, r3
    1c20:	f7ff ff61 	bl	1ae6 <digit>
    1c24:	4603      	mov	r3, r0
    1c26:	2b00      	cmp	r3, #0
    1c28:	bf14      	ite	ne
    1c2a:	2301      	movne	r3, #1
    1c2c:	2300      	moveq	r3, #0
    1c2e:	b2db      	uxtb	r3, r3
    1c30:	e009      	b.n	1c46 <atoi+0xfc>
    1c32:	7afb      	ldrb	r3, [r7, #11]
    1c34:	4618      	mov	r0, r3
    1c36:	f7ff ff69 	bl	1b0c <hexdigit>
    1c3a:	4603      	mov	r3, r0
    1c3c:	2b00      	cmp	r3, #0
    1c3e:	bf14      	ite	ne
    1c40:	2301      	movne	r3, #1
    1c42:	2300      	moveq	r3, #0
    1c44:	b2db      	uxtb	r3, r3
    1c46:	2b00      	cmp	r3, #0
    1c48:	d1c6      	bne.n	1bd8 <atoi+0x8e>
    1c4a:	693b      	ldr	r3, [r7, #16]
    1c4c:	697a      	ldr	r2, [r7, #20]
    1c4e:	fb02 f303 	mul.w	r3, r2, r3
    1c52:	4618      	mov	r0, r3
    1c54:	3718      	adds	r7, #24
    1c56:	46bd      	mov	sp, r7
    1c58:	bd80      	pop	{r7, pc}

00001c5a <move>:
    1c5a:	b480      	push	{r7}
    1c5c:	b085      	sub	sp, #20
    1c5e:	af00      	add	r7, sp, #0
    1c60:	60f8      	str	r0, [r7, #12]
    1c62:	60b9      	str	r1, [r7, #8]
    1c64:	607a      	str	r2, [r7, #4]
    1c66:	e00a      	b.n	1c7e <move+0x24>
    1c68:	68bb      	ldr	r3, [r7, #8]
    1c6a:	1c5a      	adds	r2, r3, #1
    1c6c:	60ba      	str	r2, [r7, #8]
    1c6e:	68fa      	ldr	r2, [r7, #12]
    1c70:	1c51      	adds	r1, r2, #1
    1c72:	60f9      	str	r1, [r7, #12]
    1c74:	7812      	ldrb	r2, [r2, #0]
    1c76:	701a      	strb	r2, [r3, #0]
    1c78:	687b      	ldr	r3, [r7, #4]
    1c7a:	3b01      	subs	r3, #1
    1c7c:	607b      	str	r3, [r7, #4]
    1c7e:	687b      	ldr	r3, [r7, #4]
    1c80:	2b00      	cmp	r3, #0
    1c82:	d1f1      	bne.n	1c68 <move+0xe>
    1c84:	bf00      	nop
    1c86:	3714      	adds	r7, #20
    1c88:	46bd      	mov	sp, r7
    1c8a:	bc80      	pop	{r7}
    1c8c:	4770      	bx	lr

00001c8e <strlen>:
    1c8e:	b480      	push	{r7}
    1c90:	b085      	sub	sp, #20
    1c92:	af00      	add	r7, sp, #0
    1c94:	6078      	str	r0, [r7, #4]
    1c96:	2300      	movs	r3, #0
    1c98:	60fb      	str	r3, [r7, #12]
    1c9a:	e002      	b.n	1ca2 <strlen+0x14>
    1c9c:	68fb      	ldr	r3, [r7, #12]
    1c9e:	3301      	adds	r3, #1
    1ca0:	60fb      	str	r3, [r7, #12]
    1ca2:	68fb      	ldr	r3, [r7, #12]
    1ca4:	687a      	ldr	r2, [r7, #4]
    1ca6:	4413      	add	r3, r2
    1ca8:	781b      	ldrb	r3, [r3, #0]
    1caa:	2b00      	cmp	r3, #0
    1cac:	d1f6      	bne.n	1c9c <strlen+0xe>
    1cae:	68fb      	ldr	r3, [r7, #12]
    1cb0:	4618      	mov	r0, r3
    1cb2:	3714      	adds	r7, #20
    1cb4:	46bd      	mov	sp, r7
    1cb6:	bc80      	pop	{r7}
    1cb8:	4770      	bx	lr

00001cba <fill>:
    1cba:	b480      	push	{r7}
    1cbc:	b087      	sub	sp, #28
    1cbe:	af00      	add	r7, sp, #0
    1cc0:	60f8      	str	r0, [r7, #12]
    1cc2:	60b9      	str	r1, [r7, #8]
    1cc4:	4613      	mov	r3, r2
    1cc6:	71fb      	strb	r3, [r7, #7]
    1cc8:	2300      	movs	r3, #0
    1cca:	617b      	str	r3, [r7, #20]
    1ccc:	e007      	b.n	1cde <fill+0x24>
    1cce:	68fb      	ldr	r3, [r7, #12]
    1cd0:	1c5a      	adds	r2, r3, #1
    1cd2:	60fa      	str	r2, [r7, #12]
    1cd4:	79fa      	ldrb	r2, [r7, #7]
    1cd6:	701a      	strb	r2, [r3, #0]
    1cd8:	697b      	ldr	r3, [r7, #20]
    1cda:	3301      	adds	r3, #1
    1cdc:	617b      	str	r3, [r7, #20]
    1cde:	697a      	ldr	r2, [r7, #20]
    1ce0:	68bb      	ldr	r3, [r7, #8]
    1ce2:	429a      	cmp	r2, r3
    1ce4:	d3f3      	bcc.n	1cce <fill+0x14>
    1ce6:	bf00      	nop
    1ce8:	371c      	adds	r7, #28
    1cea:	46bd      	mov	sp, r7
    1cec:	bc80      	pop	{r7}
    1cee:	4770      	bx	lr

00001cf0 <is_lower>:
    1cf0:	b480      	push	{r7}
    1cf2:	b083      	sub	sp, #12
    1cf4:	af00      	add	r7, sp, #0
    1cf6:	4603      	mov	r3, r0
    1cf8:	71fb      	strb	r3, [r7, #7]
    1cfa:	79fb      	ldrb	r3, [r7, #7]
    1cfc:	2b60      	cmp	r3, #96	; 0x60
    1cfe:	d904      	bls.n	1d0a <is_lower+0x1a>
    1d00:	79fb      	ldrb	r3, [r7, #7]
    1d02:	2b7a      	cmp	r3, #122	; 0x7a
    1d04:	d801      	bhi.n	1d0a <is_lower+0x1a>
    1d06:	2301      	movs	r3, #1
    1d08:	e000      	b.n	1d0c <is_lower+0x1c>
    1d0a:	2300      	movs	r3, #0
    1d0c:	4618      	mov	r0, r3
    1d0e:	370c      	adds	r7, #12
    1d10:	46bd      	mov	sp, r7
    1d12:	bc80      	pop	{r7}
    1d14:	4770      	bx	lr

00001d16 <is_upper>:
    1d16:	b480      	push	{r7}
    1d18:	b083      	sub	sp, #12
    1d1a:	af00      	add	r7, sp, #0
    1d1c:	4603      	mov	r3, r0
    1d1e:	71fb      	strb	r3, [r7, #7]
    1d20:	79fb      	ldrb	r3, [r7, #7]
    1d22:	2b40      	cmp	r3, #64	; 0x40
    1d24:	d904      	bls.n	1d30 <is_upper+0x1a>
    1d26:	79fb      	ldrb	r3, [r7, #7]
    1d28:	2b5a      	cmp	r3, #90	; 0x5a
    1d2a:	d801      	bhi.n	1d30 <is_upper+0x1a>
    1d2c:	2301      	movs	r3, #1
    1d2e:	e000      	b.n	1d32 <is_upper+0x1c>
    1d30:	2300      	movs	r3, #0
    1d32:	4618      	mov	r0, r3
    1d34:	370c      	adds	r7, #12
    1d36:	46bd      	mov	sp, r7
    1d38:	bc80      	pop	{r7}
    1d3a:	4770      	bx	lr

00001d3c <uppercase>:
    1d3c:	b580      	push	{r7, lr}
    1d3e:	b082      	sub	sp, #8
    1d40:	af00      	add	r7, sp, #0
    1d42:	6078      	str	r0, [r7, #4]
    1d44:	e010      	b.n	1d68 <uppercase+0x2c>
    1d46:	687b      	ldr	r3, [r7, #4]
    1d48:	781b      	ldrb	r3, [r3, #0]
    1d4a:	4618      	mov	r0, r3
    1d4c:	f7ff ffd0 	bl	1cf0 <is_lower>
    1d50:	4603      	mov	r3, r0
    1d52:	2b00      	cmp	r3, #0
    1d54:	d005      	beq.n	1d62 <uppercase+0x26>
    1d56:	687b      	ldr	r3, [r7, #4]
    1d58:	781b      	ldrb	r3, [r3, #0]
    1d5a:	3b20      	subs	r3, #32
    1d5c:	b2da      	uxtb	r2, r3
    1d5e:	687b      	ldr	r3, [r7, #4]
    1d60:	701a      	strb	r2, [r3, #0]
    1d62:	687b      	ldr	r3, [r7, #4]
    1d64:	3301      	adds	r3, #1
    1d66:	607b      	str	r3, [r7, #4]
    1d68:	687b      	ldr	r3, [r7, #4]
    1d6a:	781b      	ldrb	r3, [r3, #0]
    1d6c:	2b00      	cmp	r3, #0
    1d6e:	d1ea      	bne.n	1d46 <uppercase+0xa>
    1d70:	bf00      	nop
    1d72:	3708      	adds	r7, #8
    1d74:	46bd      	mov	sp, r7
    1d76:	bd80      	pop	{r7, pc}

00001d78 <scan>:
    1d78:	b480      	push	{r7}
    1d7a:	b085      	sub	sp, #20
    1d7c:	af00      	add	r7, sp, #0
    1d7e:	60f8      	str	r0, [r7, #12]
    1d80:	60b9      	str	r1, [r7, #8]
    1d82:	4613      	mov	r3, r2
    1d84:	71fb      	strb	r3, [r7, #7]
    1d86:	e002      	b.n	1d8e <scan+0x16>
    1d88:	68bb      	ldr	r3, [r7, #8]
    1d8a:	3301      	adds	r3, #1
    1d8c:	60bb      	str	r3, [r7, #8]
    1d8e:	68bb      	ldr	r3, [r7, #8]
    1d90:	68fa      	ldr	r2, [r7, #12]
    1d92:	4413      	add	r3, r2
    1d94:	781b      	ldrb	r3, [r3, #0]
    1d96:	2b00      	cmp	r3, #0
    1d98:	d006      	beq.n	1da8 <scan+0x30>
    1d9a:	68bb      	ldr	r3, [r7, #8]
    1d9c:	68fa      	ldr	r2, [r7, #12]
    1d9e:	4413      	add	r3, r2
    1da0:	781b      	ldrb	r3, [r3, #0]
    1da2:	79fa      	ldrb	r2, [r7, #7]
    1da4:	429a      	cmp	r2, r3
    1da6:	d1ef      	bne.n	1d88 <scan+0x10>
    1da8:	68bb      	ldr	r3, [r7, #8]
    1daa:	4618      	mov	r0, r3
    1dac:	3714      	adds	r7, #20
    1dae:	46bd      	mov	sp, r7
    1db0:	bc80      	pop	{r7}
    1db2:	4770      	bx	lr

00001db4 <skip>:
    1db4:	b480      	push	{r7}
    1db6:	b085      	sub	sp, #20
    1db8:	af00      	add	r7, sp, #0
    1dba:	60f8      	str	r0, [r7, #12]
    1dbc:	60b9      	str	r1, [r7, #8]
    1dbe:	4613      	mov	r3, r2
    1dc0:	71fb      	strb	r3, [r7, #7]
    1dc2:	e002      	b.n	1dca <skip+0x16>
    1dc4:	68bb      	ldr	r3, [r7, #8]
    1dc6:	3301      	adds	r3, #1
    1dc8:	60bb      	str	r3, [r7, #8]
    1dca:	68bb      	ldr	r3, [r7, #8]
    1dcc:	68fa      	ldr	r2, [r7, #12]
    1dce:	4413      	add	r3, r2
    1dd0:	781b      	ldrb	r3, [r3, #0]
    1dd2:	2b00      	cmp	r3, #0
    1dd4:	d006      	beq.n	1de4 <skip+0x30>
    1dd6:	68bb      	ldr	r3, [r7, #8]
    1dd8:	68fa      	ldr	r2, [r7, #12]
    1dda:	4413      	add	r3, r2
    1ddc:	781b      	ldrb	r3, [r3, #0]
    1dde:	79fa      	ldrb	r2, [r7, #7]
    1de0:	429a      	cmp	r2, r3
    1de2:	d0ef      	beq.n	1dc4 <skip+0x10>
    1de4:	68bb      	ldr	r3, [r7, #8]
    1de6:	4618      	mov	r0, r3
    1de8:	3714      	adds	r7, #20
    1dea:	46bd      	mov	sp, r7
    1dec:	bc80      	pop	{r7}
    1dee:	4770      	bx	lr

00001df0 <strcat>:
    1df0:	b580      	push	{r7, lr}
    1df2:	b082      	sub	sp, #8
    1df4:	af00      	add	r7, sp, #0
    1df6:	6078      	str	r0, [r7, #4]
    1df8:	6039      	str	r1, [r7, #0]
    1dfa:	6878      	ldr	r0, [r7, #4]
    1dfc:	f7ff ff47 	bl	1c8e <strlen>
    1e00:	4603      	mov	r3, r0
    1e02:	461a      	mov	r2, r3
    1e04:	687b      	ldr	r3, [r7, #4]
    1e06:	4413      	add	r3, r2
    1e08:	607b      	str	r3, [r7, #4]
    1e0a:	e007      	b.n	1e1c <strcat+0x2c>
    1e0c:	687b      	ldr	r3, [r7, #4]
    1e0e:	1c5a      	adds	r2, r3, #1
    1e10:	607a      	str	r2, [r7, #4]
    1e12:	683a      	ldr	r2, [r7, #0]
    1e14:	1c51      	adds	r1, r2, #1
    1e16:	6039      	str	r1, [r7, #0]
    1e18:	7812      	ldrb	r2, [r2, #0]
    1e1a:	701a      	strb	r2, [r3, #0]
    1e1c:	683b      	ldr	r3, [r7, #0]
    1e1e:	781b      	ldrb	r3, [r3, #0]
    1e20:	2b00      	cmp	r3, #0
    1e22:	d1f3      	bne.n	1e0c <strcat+0x1c>
    1e24:	687b      	ldr	r3, [r7, #4]
    1e26:	2200      	movs	r2, #0
    1e28:	701a      	strb	r2, [r3, #0]
    1e2a:	687b      	ldr	r3, [r7, #4]
    1e2c:	4618      	mov	r0, r3
    1e2e:	3708      	adds	r7, #8
    1e30:	46bd      	mov	sp, r7
    1e32:	bd80      	pop	{r7, pc}

00001e34 <config_pin>:
    1e34:	b480      	push	{r7}
    1e36:	b087      	sub	sp, #28
    1e38:	af00      	add	r7, sp, #0
    1e3a:	60f8      	str	r0, [r7, #12]
    1e3c:	60b9      	str	r1, [r7, #8]
    1e3e:	607a      	str	r2, [r7, #4]
    1e40:	68bb      	ldr	r3, [r7, #8]
    1e42:	b2db      	uxtb	r3, r3
    1e44:	009b      	lsls	r3, r3, #2
    1e46:	b2db      	uxtb	r3, r3
    1e48:	f003 031c 	and.w	r3, r3, #28
    1e4c:	75fb      	strb	r3, [r7, #23]
    1e4e:	68bb      	ldr	r3, [r7, #8]
    1e50:	08da      	lsrs	r2, r3, #3
    1e52:	68bb      	ldr	r3, [r7, #8]
    1e54:	08d9      	lsrs	r1, r3, #3
    1e56:	68fb      	ldr	r3, [r7, #12]
    1e58:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1e5c:	7df9      	ldrb	r1, [r7, #23]
    1e5e:	200f      	movs	r0, #15
    1e60:	fa00 f101 	lsl.w	r1, r0, r1
    1e64:	43c9      	mvns	r1, r1
    1e66:	4019      	ands	r1, r3
    1e68:	68fb      	ldr	r3, [r7, #12]
    1e6a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1e6e:	68bb      	ldr	r3, [r7, #8]
    1e70:	08da      	lsrs	r2, r3, #3
    1e72:	68bb      	ldr	r3, [r7, #8]
    1e74:	08d9      	lsrs	r1, r3, #3
    1e76:	68fb      	ldr	r3, [r7, #12]
    1e78:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1e7c:	7dfb      	ldrb	r3, [r7, #23]
    1e7e:	6878      	ldr	r0, [r7, #4]
    1e80:	fa00 f303 	lsl.w	r3, r0, r3
    1e84:	4319      	orrs	r1, r3
    1e86:	68fb      	ldr	r3, [r7, #12]
    1e88:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1e8c:	bf00      	nop
    1e8e:	371c      	adds	r7, #28
    1e90:	46bd      	mov	sp, r7
    1e92:	bc80      	pop	{r7}
    1e94:	4770      	bx	lr

00001e96 <read_pin>:
    1e96:	b480      	push	{r7}
    1e98:	b083      	sub	sp, #12
    1e9a:	af00      	add	r7, sp, #0
    1e9c:	6078      	str	r0, [r7, #4]
    1e9e:	6039      	str	r1, [r7, #0]
    1ea0:	687b      	ldr	r3, [r7, #4]
    1ea2:	689b      	ldr	r3, [r3, #8]
    1ea4:	2101      	movs	r1, #1
    1ea6:	683a      	ldr	r2, [r7, #0]
    1ea8:	fa01 f202 	lsl.w	r2, r1, r2
    1eac:	4013      	ands	r3, r2
    1eae:	4618      	mov	r0, r3
    1eb0:	370c      	adds	r7, #12
    1eb2:	46bd      	mov	sp, r7
    1eb4:	bc80      	pop	{r7}
    1eb6:	4770      	bx	lr

00001eb8 <write_pin>:
    1eb8:	b480      	push	{r7}
    1eba:	b085      	sub	sp, #20
    1ebc:	af00      	add	r7, sp, #0
    1ebe:	60f8      	str	r0, [r7, #12]
    1ec0:	60b9      	str	r1, [r7, #8]
    1ec2:	607a      	str	r2, [r7, #4]
    1ec4:	687b      	ldr	r3, [r7, #4]
    1ec6:	2b00      	cmp	r3, #0
    1ec8:	d009      	beq.n	1ede <write_pin+0x26>
    1eca:	68fb      	ldr	r3, [r7, #12]
    1ecc:	68db      	ldr	r3, [r3, #12]
    1ece:	2101      	movs	r1, #1
    1ed0:	68ba      	ldr	r2, [r7, #8]
    1ed2:	fa01 f202 	lsl.w	r2, r1, r2
    1ed6:	431a      	orrs	r2, r3
    1ed8:	68fb      	ldr	r3, [r7, #12]
    1eda:	60da      	str	r2, [r3, #12]
    1edc:	e009      	b.n	1ef2 <write_pin+0x3a>
    1ede:	68fb      	ldr	r3, [r7, #12]
    1ee0:	68db      	ldr	r3, [r3, #12]
    1ee2:	2101      	movs	r1, #1
    1ee4:	68ba      	ldr	r2, [r7, #8]
    1ee6:	fa01 f202 	lsl.w	r2, r1, r2
    1eea:	43d2      	mvns	r2, r2
    1eec:	401a      	ands	r2, r3
    1eee:	68fb      	ldr	r3, [r7, #12]
    1ef0:	60da      	str	r2, [r3, #12]
    1ef2:	bf00      	nop
    1ef4:	3714      	adds	r7, #20
    1ef6:	46bd      	mov	sp, r7
    1ef8:	bc80      	pop	{r7}
    1efa:	4770      	bx	lr

00001efc <toggle_pin>:
    1efc:	b480      	push	{r7}
    1efe:	b083      	sub	sp, #12
    1f00:	af00      	add	r7, sp, #0
    1f02:	6078      	str	r0, [r7, #4]
    1f04:	6039      	str	r1, [r7, #0]
    1f06:	687b      	ldr	r3, [r7, #4]
    1f08:	68db      	ldr	r3, [r3, #12]
    1f0a:	2101      	movs	r1, #1
    1f0c:	683a      	ldr	r2, [r7, #0]
    1f0e:	fa01 f202 	lsl.w	r2, r1, r2
    1f12:	405a      	eors	r2, r3
    1f14:	687b      	ldr	r3, [r7, #4]
    1f16:	60da      	str	r2, [r3, #12]
    1f18:	bf00      	nop
    1f1a:	370c      	adds	r7, #12
    1f1c:	46bd      	mov	sp, r7
    1f1e:	bc80      	pop	{r7}
    1f20:	4770      	bx	lr
	...

00001f24 <set_palette>:
    1f24:	b480      	push	{r7}
    1f26:	b083      	sub	sp, #12
    1f28:	af00      	add	r7, sp, #0
    1f2a:	6078      	str	r0, [r7, #4]
    1f2c:	687b      	ldr	r3, [r7, #4]
    1f2e:	781a      	ldrb	r2, [r3, #0]
    1f30:	4b09      	ldr	r3, [pc, #36]	; (1f58 <set_palette+0x34>)
    1f32:	701a      	strb	r2, [r3, #0]
    1f34:	687b      	ldr	r3, [r7, #4]
    1f36:	785a      	ldrb	r2, [r3, #1]
    1f38:	4b07      	ldr	r3, [pc, #28]	; (1f58 <set_palette+0x34>)
    1f3a:	705a      	strb	r2, [r3, #1]
    1f3c:	687b      	ldr	r3, [r7, #4]
    1f3e:	789a      	ldrb	r2, [r3, #2]
    1f40:	4b05      	ldr	r3, [pc, #20]	; (1f58 <set_palette+0x34>)
    1f42:	709a      	strb	r2, [r3, #2]
    1f44:	687b      	ldr	r3, [r7, #4]
    1f46:	78da      	ldrb	r2, [r3, #3]
    1f48:	4b03      	ldr	r3, [pc, #12]	; (1f58 <set_palette+0x34>)
    1f4a:	70da      	strb	r2, [r3, #3]
    1f4c:	bf00      	nop
    1f4e:	370c      	adds	r7, #12
    1f50:	46bd      	mov	sp, r7
    1f52:	bc80      	pop	{r7}
    1f54:	4770      	bx	lr
    1f56:	bf00      	nop
    1f58:	200000e8 	.word	0x200000e8

00001f5c <gfx_blit>:
    1f5c:	b5f0      	push	{r4, r5, r6, r7, lr}
    1f5e:	b087      	sub	sp, #28
    1f60:	af00      	add	r7, sp, #0
    1f62:	60f8      	str	r0, [r7, #12]
    1f64:	60b9      	str	r1, [r7, #8]
    1f66:	4611      	mov	r1, r2
    1f68:	461a      	mov	r2, r3
    1f6a:	460b      	mov	r3, r1
    1f6c:	71fb      	strb	r3, [r7, #7]
    1f6e:	4613      	mov	r3, r2
    1f70:	71bb      	strb	r3, [r7, #6]
    1f72:	f003 f8cb 	bl	510c <get_video_params>
    1f76:	6178      	str	r0, [r7, #20]
    1f78:	68fb      	ldr	r3, [r7, #12]
    1f7a:	2b00      	cmp	r3, #0
    1f7c:	db0e      	blt.n	1f9c <gfx_blit+0x40>
    1f7e:	697b      	ldr	r3, [r7, #20]
    1f80:	899b      	ldrh	r3, [r3, #12]
    1f82:	461a      	mov	r2, r3
    1f84:	68fb      	ldr	r3, [r7, #12]
    1f86:	429a      	cmp	r2, r3
    1f88:	dd08      	ble.n	1f9c <gfx_blit+0x40>
    1f8a:	68bb      	ldr	r3, [r7, #8]
    1f8c:	2b00      	cmp	r3, #0
    1f8e:	db05      	blt.n	1f9c <gfx_blit+0x40>
    1f90:	697b      	ldr	r3, [r7, #20]
    1f92:	89db      	ldrh	r3, [r3, #14]
    1f94:	461a      	mov	r2, r3
    1f96:	68bb      	ldr	r3, [r7, #8]
    1f98:	429a      	cmp	r2, r3
    1f9a:	dc01      	bgt.n	1fa0 <gfx_blit+0x44>
    1f9c:	2300      	movs	r3, #0
    1f9e:	e04f      	b.n	2040 <gfx_blit+0xe4>
    1fa0:	697b      	ldr	r3, [r7, #20]
    1fa2:	7a1b      	ldrb	r3, [r3, #8]
    1fa4:	461a      	mov	r2, r3
    1fa6:	68bb      	ldr	r3, [r7, #8]
    1fa8:	fb03 f202 	mul.w	r2, r3, r2
    1fac:	68fb      	ldr	r3, [r7, #12]
    1fae:	0fd9      	lsrs	r1, r3, #31
    1fb0:	440b      	add	r3, r1
    1fb2:	105b      	asrs	r3, r3, #1
    1fb4:	18d6      	adds	r6, r2, r3
    1fb6:	79fb      	ldrb	r3, [r7, #7]
    1fb8:	f003 030f 	and.w	r3, r3, #15
    1fbc:	71fb      	strb	r3, [r7, #7]
    1fbe:	25f0      	movs	r5, #240	; 0xf0
    1fc0:	68fb      	ldr	r3, [r7, #12]
    1fc2:	f003 0301 	and.w	r3, r3, #1
    1fc6:	2b00      	cmp	r3, #0
    1fc8:	d103      	bne.n	1fd2 <gfx_blit+0x76>
    1fca:	79fb      	ldrb	r3, [r7, #7]
    1fcc:	011b      	lsls	r3, r3, #4
    1fce:	71fb      	strb	r3, [r7, #7]
    1fd0:	250f      	movs	r5, #15
    1fd2:	4b1d      	ldr	r3, [pc, #116]	; (2048 <gfx_blit+0xec>)
    1fd4:	5d9c      	ldrb	r4, [r3, r6]
    1fd6:	79bb      	ldrb	r3, [r7, #6]
    1fd8:	2b04      	cmp	r3, #4
    1fda:	d828      	bhi.n	202e <gfx_blit+0xd2>
    1fdc:	a201      	add	r2, pc, #4	; (adr r2, 1fe4 <gfx_blit+0x88>)
    1fde:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1fe2:	bf00      	nop
    1fe4:	00001ff9 	.word	0x00001ff9
    1fe8:	00002001 	.word	0x00002001
    1fec:	00002009 	.word	0x00002009
    1ff0:	00002011 	.word	0x00002011
    1ff4:	00002021 	.word	0x00002021
    1ff8:	79fb      	ldrb	r3, [r7, #7]
    1ffa:	4323      	orrs	r3, r4
    1ffc:	b2dc      	uxtb	r4, r3
    1ffe:	e016      	b.n	202e <gfx_blit+0xd2>
    2000:	79fb      	ldrb	r3, [r7, #7]
    2002:	4023      	ands	r3, r4
    2004:	b2dc      	uxtb	r4, r3
    2006:	e012      	b.n	202e <gfx_blit+0xd2>
    2008:	79fb      	ldrb	r3, [r7, #7]
    200a:	4063      	eors	r3, r4
    200c:	b2dc      	uxtb	r4, r3
    200e:	e00e      	b.n	202e <gfx_blit+0xd2>
    2010:	b26b      	sxtb	r3, r5
    2012:	43db      	mvns	r3, r3
    2014:	b25a      	sxtb	r2, r3
    2016:	b263      	sxtb	r3, r4
    2018:	4053      	eors	r3, r2
    201a:	b25b      	sxtb	r3, r3
    201c:	b2dc      	uxtb	r4, r3
    201e:	e006      	b.n	202e <gfx_blit+0xd2>
    2020:	ea04 0305 	and.w	r3, r4, r5
    2024:	b2dc      	uxtb	r4, r3
    2026:	79fb      	ldrb	r3, [r7, #7]
    2028:	4323      	orrs	r3, r4
    202a:	b2dc      	uxtb	r4, r3
    202c:	bf00      	nop
    202e:	4b06      	ldr	r3, [pc, #24]	; (2048 <gfx_blit+0xec>)
    2030:	4622      	mov	r2, r4
    2032:	559a      	strb	r2, [r3, r6]
    2034:	ea04 0305 	and.w	r3, r4, r5
    2038:	b2da      	uxtb	r2, r3
    203a:	79fb      	ldrb	r3, [r7, #7]
    203c:	4053      	eors	r3, r2
    203e:	b2db      	uxtb	r3, r3
    2040:	4618      	mov	r0, r3
    2042:	371c      	adds	r7, #28
    2044:	46bd      	mov	sp, r7
    2046:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2048:	20002630 	.word	0x20002630

0000204c <gfx_plot>:
    204c:	b5b0      	push	{r4, r5, r7, lr}
    204e:	b086      	sub	sp, #24
    2050:	af00      	add	r7, sp, #0
    2052:	60f8      	str	r0, [r7, #12]
    2054:	60b9      	str	r1, [r7, #8]
    2056:	4613      	mov	r3, r2
    2058:	71fb      	strb	r3, [r7, #7]
    205a:	f003 f857 	bl	510c <get_video_params>
    205e:	6178      	str	r0, [r7, #20]
    2060:	68fb      	ldr	r3, [r7, #12]
    2062:	2b00      	cmp	r3, #0
    2064:	db39      	blt.n	20da <gfx_plot+0x8e>
    2066:	697b      	ldr	r3, [r7, #20]
    2068:	899b      	ldrh	r3, [r3, #12]
    206a:	461a      	mov	r2, r3
    206c:	68fb      	ldr	r3, [r7, #12]
    206e:	429a      	cmp	r2, r3
    2070:	dd33      	ble.n	20da <gfx_plot+0x8e>
    2072:	68bb      	ldr	r3, [r7, #8]
    2074:	2b00      	cmp	r3, #0
    2076:	db30      	blt.n	20da <gfx_plot+0x8e>
    2078:	697b      	ldr	r3, [r7, #20]
    207a:	89db      	ldrh	r3, [r3, #14]
    207c:	461a      	mov	r2, r3
    207e:	68bb      	ldr	r3, [r7, #8]
    2080:	429a      	cmp	r2, r3
    2082:	dd2a      	ble.n	20da <gfx_plot+0x8e>
    2084:	697b      	ldr	r3, [r7, #20]
    2086:	7a1b      	ldrb	r3, [r3, #8]
    2088:	461a      	mov	r2, r3
    208a:	68bb      	ldr	r3, [r7, #8]
    208c:	fb03 f202 	mul.w	r2, r3, r2
    2090:	68fb      	ldr	r3, [r7, #12]
    2092:	0fd9      	lsrs	r1, r3, #31
    2094:	440b      	add	r3, r1
    2096:	105b      	asrs	r3, r3, #1
    2098:	18d5      	adds	r5, r2, r3
    209a:	79fb      	ldrb	r3, [r7, #7]
    209c:	f003 030f 	and.w	r3, r3, #15
    20a0:	71fb      	strb	r3, [r7, #7]
    20a2:	4b10      	ldr	r3, [pc, #64]	; (20e4 <gfx_plot+0x98>)
    20a4:	5d5c      	ldrb	r4, [r3, r5]
    20a6:	68fb      	ldr	r3, [r7, #12]
    20a8:	f003 0301 	and.w	r3, r3, #1
    20ac:	2b00      	cmp	r3, #0
    20ae:	d006      	beq.n	20be <gfx_plot+0x72>
    20b0:	f024 030f 	bic.w	r3, r4, #15
    20b4:	b2dc      	uxtb	r4, r3
    20b6:	79fb      	ldrb	r3, [r7, #7]
    20b8:	4323      	orrs	r3, r4
    20ba:	b2dc      	uxtb	r4, r3
    20bc:	e009      	b.n	20d2 <gfx_plot+0x86>
    20be:	f004 030f 	and.w	r3, r4, #15
    20c2:	b2dc      	uxtb	r4, r3
    20c4:	79fb      	ldrb	r3, [r7, #7]
    20c6:	011b      	lsls	r3, r3, #4
    20c8:	b25a      	sxtb	r2, r3
    20ca:	b263      	sxtb	r3, r4
    20cc:	4313      	orrs	r3, r2
    20ce:	b25b      	sxtb	r3, r3
    20d0:	b2dc      	uxtb	r4, r3
    20d2:	4b04      	ldr	r3, [pc, #16]	; (20e4 <gfx_plot+0x98>)
    20d4:	4622      	mov	r2, r4
    20d6:	555a      	strb	r2, [r3, r5]
    20d8:	e000      	b.n	20dc <gfx_plot+0x90>
    20da:	bf00      	nop
    20dc:	3718      	adds	r7, #24
    20de:	46bd      	mov	sp, r7
    20e0:	bdb0      	pop	{r4, r5, r7, pc}
    20e2:	bf00      	nop
    20e4:	20002630 	.word	0x20002630

000020e8 <gfx_cls>:
    20e8:	b580      	push	{r7, lr}
    20ea:	b082      	sub	sp, #8
    20ec:	af00      	add	r7, sp, #0
    20ee:	2300      	movs	r3, #0
    20f0:	607b      	str	r3, [r7, #4]
    20f2:	e007      	b.n	2104 <gfx_cls+0x1c>
    20f4:	4a0a      	ldr	r2, [pc, #40]	; (2120 <gfx_cls+0x38>)
    20f6:	687b      	ldr	r3, [r7, #4]
    20f8:	4413      	add	r3, r2
    20fa:	2200      	movs	r2, #0
    20fc:	701a      	strb	r2, [r3, #0]
    20fe:	687b      	ldr	r3, [r7, #4]
    2100:	3301      	adds	r3, #1
    2102:	607b      	str	r3, [r7, #4]
    2104:	687b      	ldr	r3, [r7, #4]
    2106:	f242 725f 	movw	r2, #10079	; 0x275f
    210a:	4293      	cmp	r3, r2
    210c:	ddf2      	ble.n	20f4 <gfx_cls+0xc>
    210e:	2100      	movs	r1, #0
    2110:	2000      	movs	r0, #0
    2112:	f002 fb25 	bl	4760 <set_cursor>
    2116:	bf00      	nop
    2118:	3708      	adds	r7, #8
    211a:	46bd      	mov	sp, r7
    211c:	bd80      	pop	{r7, pc}
    211e:	bf00      	nop
    2120:	20002630 	.word	0x20002630

00002124 <move_up>:
    2124:	b480      	push	{r7}
    2126:	b085      	sub	sp, #20
    2128:	af00      	add	r7, sp, #0
    212a:	60f8      	str	r0, [r7, #12]
    212c:	60b9      	str	r1, [r7, #8]
    212e:	607a      	str	r2, [r7, #4]
    2130:	e009      	b.n	2146 <move_up+0x22>
    2132:	68bb      	ldr	r3, [r7, #8]
    2134:	3b01      	subs	r3, #1
    2136:	60bb      	str	r3, [r7, #8]
    2138:	68fb      	ldr	r3, [r7, #12]
    213a:	3b01      	subs	r3, #1
    213c:	60fb      	str	r3, [r7, #12]
    213e:	68fb      	ldr	r3, [r7, #12]
    2140:	781a      	ldrb	r2, [r3, #0]
    2142:	68bb      	ldr	r3, [r7, #8]
    2144:	701a      	strb	r2, [r3, #0]
    2146:	687b      	ldr	r3, [r7, #4]
    2148:	1e5a      	subs	r2, r3, #1
    214a:	607a      	str	r2, [r7, #4]
    214c:	2b00      	cmp	r3, #0
    214e:	d1f0      	bne.n	2132 <move_up+0xe>
    2150:	68bb      	ldr	r3, [r7, #8]
    2152:	4618      	mov	r0, r3
    2154:	3714      	adds	r7, #20
    2156:	46bd      	mov	sp, r7
    2158:	bc80      	pop	{r7}
    215a:	4770      	bx	lr

0000215c <move_down>:
    215c:	b480      	push	{r7}
    215e:	b085      	sub	sp, #20
    2160:	af00      	add	r7, sp, #0
    2162:	60f8      	str	r0, [r7, #12]
    2164:	60b9      	str	r1, [r7, #8]
    2166:	607a      	str	r2, [r7, #4]
    2168:	e007      	b.n	217a <move_down+0x1e>
    216a:	68bb      	ldr	r3, [r7, #8]
    216c:	1c5a      	adds	r2, r3, #1
    216e:	60ba      	str	r2, [r7, #8]
    2170:	68fa      	ldr	r2, [r7, #12]
    2172:	1c51      	adds	r1, r2, #1
    2174:	60f9      	str	r1, [r7, #12]
    2176:	7812      	ldrb	r2, [r2, #0]
    2178:	701a      	strb	r2, [r3, #0]
    217a:	687b      	ldr	r3, [r7, #4]
    217c:	1e5a      	subs	r2, r3, #1
    217e:	607a      	str	r2, [r7, #4]
    2180:	2b00      	cmp	r3, #0
    2182:	d1f2      	bne.n	216a <move_down+0xe>
    2184:	68bb      	ldr	r3, [r7, #8]
    2186:	4618      	mov	r0, r3
    2188:	3714      	adds	r7, #20
    218a:	46bd      	mov	sp, r7
    218c:	bc80      	pop	{r7}
    218e:	4770      	bx	lr

00002190 <gfx_scroll_up>:
    2190:	b580      	push	{r7, lr}
    2192:	b086      	sub	sp, #24
    2194:	af00      	add	r7, sp, #0
    2196:	4603      	mov	r3, r0
    2198:	71fb      	strb	r3, [r7, #7]
    219a:	79fb      	ldrb	r3, [r7, #7]
    219c:	225a      	movs	r2, #90	; 0x5a
    219e:	fb02 f303 	mul.w	r3, r2, r3
    21a2:	4a13      	ldr	r2, [pc, #76]	; (21f0 <gfx_scroll_up+0x60>)
    21a4:	4413      	add	r3, r2
    21a6:	60fb      	str	r3, [r7, #12]
    21a8:	4b11      	ldr	r3, [pc, #68]	; (21f0 <gfx_scroll_up+0x60>)
    21aa:	617b      	str	r3, [r7, #20]
    21ac:	79fb      	ldrb	r3, [r7, #7]
    21ae:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    21b2:	225a      	movs	r2, #90	; 0x5a
    21b4:	fb02 f303 	mul.w	r3, r2, r3
    21b8:	613b      	str	r3, [r7, #16]
    21ba:	693a      	ldr	r2, [r7, #16]
    21bc:	6979      	ldr	r1, [r7, #20]
    21be:	68f8      	ldr	r0, [r7, #12]
    21c0:	f7ff ffcc 	bl	215c <move_down>
    21c4:	6178      	str	r0, [r7, #20]
    21c6:	79fb      	ldrb	r3, [r7, #7]
    21c8:	225a      	movs	r2, #90	; 0x5a
    21ca:	fb02 f303 	mul.w	r3, r2, r3
    21ce:	613b      	str	r3, [r7, #16]
    21d0:	e004      	b.n	21dc <gfx_scroll_up+0x4c>
    21d2:	697b      	ldr	r3, [r7, #20]
    21d4:	1c5a      	adds	r2, r3, #1
    21d6:	617a      	str	r2, [r7, #20]
    21d8:	2200      	movs	r2, #0
    21da:	701a      	strb	r2, [r3, #0]
    21dc:	693b      	ldr	r3, [r7, #16]
    21de:	1e5a      	subs	r2, r3, #1
    21e0:	613a      	str	r2, [r7, #16]
    21e2:	2b00      	cmp	r3, #0
    21e4:	d1f5      	bne.n	21d2 <gfx_scroll_up+0x42>
    21e6:	bf00      	nop
    21e8:	3718      	adds	r7, #24
    21ea:	46bd      	mov	sp, r7
    21ec:	bd80      	pop	{r7, pc}
    21ee:	bf00      	nop
    21f0:	20002630 	.word	0x20002630

000021f4 <gfx_scroll_down>:
    21f4:	b580      	push	{r7, lr}
    21f6:	b086      	sub	sp, #24
    21f8:	af00      	add	r7, sp, #0
    21fa:	4603      	mov	r3, r0
    21fc:	71fb      	strb	r3, [r7, #7]
    21fe:	79fb      	ldrb	r3, [r7, #7]
    2200:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    2204:	225a      	movs	r2, #90	; 0x5a
    2206:	fb02 f303 	mul.w	r3, r2, r3
    220a:	4a13      	ldr	r2, [pc, #76]	; (2258 <gfx_scroll_down+0x64>)
    220c:	4413      	add	r3, r2
    220e:	60fb      	str	r3, [r7, #12]
    2210:	4b12      	ldr	r3, [pc, #72]	; (225c <gfx_scroll_down+0x68>)
    2212:	617b      	str	r3, [r7, #20]
    2214:	79fb      	ldrb	r3, [r7, #7]
    2216:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    221a:	225a      	movs	r2, #90	; 0x5a
    221c:	fb02 f303 	mul.w	r3, r2, r3
    2220:	613b      	str	r3, [r7, #16]
    2222:	693a      	ldr	r2, [r7, #16]
    2224:	6979      	ldr	r1, [r7, #20]
    2226:	68f8      	ldr	r0, [r7, #12]
    2228:	f7ff ff7c 	bl	2124 <move_up>
    222c:	6178      	str	r0, [r7, #20]
    222e:	79fb      	ldrb	r3, [r7, #7]
    2230:	225a      	movs	r2, #90	; 0x5a
    2232:	fb02 f303 	mul.w	r3, r2, r3
    2236:	613b      	str	r3, [r7, #16]
    2238:	e005      	b.n	2246 <gfx_scroll_down+0x52>
    223a:	697b      	ldr	r3, [r7, #20]
    223c:	3b01      	subs	r3, #1
    223e:	617b      	str	r3, [r7, #20]
    2240:	697b      	ldr	r3, [r7, #20]
    2242:	2200      	movs	r2, #0
    2244:	701a      	strb	r2, [r3, #0]
    2246:	693b      	ldr	r3, [r7, #16]
    2248:	1e5a      	subs	r2, r3, #1
    224a:	613a      	str	r2, [r7, #16]
    224c:	2b00      	cmp	r3, #0
    224e:	d1f4      	bne.n	223a <gfx_scroll_down+0x46>
    2250:	bf00      	nop
    2252:	3718      	adds	r7, #24
    2254:	46bd      	mov	sp, r7
    2256:	bd80      	pop	{r7, pc}
    2258:	20002630 	.word	0x20002630
    225c:	20004d90 	.word	0x20004d90

00002260 <gfx_scroll_left>:
    2260:	b580      	push	{r7, lr}
    2262:	b086      	sub	sp, #24
    2264:	af00      	add	r7, sp, #0
    2266:	4603      	mov	r3, r0
    2268:	71fb      	strb	r3, [r7, #7]
    226a:	2300      	movs	r3, #0
    226c:	617b      	str	r3, [r7, #20]
    226e:	e024      	b.n	22ba <gfx_scroll_left+0x5a>
    2270:	697b      	ldr	r3, [r7, #20]
    2272:	225a      	movs	r2, #90	; 0x5a
    2274:	fb02 f303 	mul.w	r3, r2, r3
    2278:	4a13      	ldr	r2, [pc, #76]	; (22c8 <gfx_scroll_left+0x68>)
    227a:	4413      	add	r3, r2
    227c:	60fb      	str	r3, [r7, #12]
    227e:	79fb      	ldrb	r3, [r7, #7]
    2280:	68fa      	ldr	r2, [r7, #12]
    2282:	4413      	add	r3, r2
    2284:	60bb      	str	r3, [r7, #8]
    2286:	79fb      	ldrb	r3, [r7, #7]
    2288:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    228c:	613b      	str	r3, [r7, #16]
    228e:	693a      	ldr	r2, [r7, #16]
    2290:	68f9      	ldr	r1, [r7, #12]
    2292:	68b8      	ldr	r0, [r7, #8]
    2294:	f7ff ff62 	bl	215c <move_down>
    2298:	60f8      	str	r0, [r7, #12]
    229a:	79fb      	ldrb	r3, [r7, #7]
    229c:	613b      	str	r3, [r7, #16]
    229e:	e004      	b.n	22aa <gfx_scroll_left+0x4a>
    22a0:	68fb      	ldr	r3, [r7, #12]
    22a2:	1c5a      	adds	r2, r3, #1
    22a4:	60fa      	str	r2, [r7, #12]
    22a6:	2200      	movs	r2, #0
    22a8:	701a      	strb	r2, [r3, #0]
    22aa:	693b      	ldr	r3, [r7, #16]
    22ac:	1e5a      	subs	r2, r3, #1
    22ae:	613a      	str	r2, [r7, #16]
    22b0:	2b00      	cmp	r3, #0
    22b2:	d1f5      	bne.n	22a0 <gfx_scroll_left+0x40>
    22b4:	697b      	ldr	r3, [r7, #20]
    22b6:	3301      	adds	r3, #1
    22b8:	617b      	str	r3, [r7, #20]
    22ba:	697b      	ldr	r3, [r7, #20]
    22bc:	2b6f      	cmp	r3, #111	; 0x6f
    22be:	ddd7      	ble.n	2270 <gfx_scroll_left+0x10>
    22c0:	bf00      	nop
    22c2:	3718      	adds	r7, #24
    22c4:	46bd      	mov	sp, r7
    22c6:	bd80      	pop	{r7, pc}
    22c8:	20002630 	.word	0x20002630

000022cc <gfx_scroll_right>:
    22cc:	b580      	push	{r7, lr}
    22ce:	b086      	sub	sp, #24
    22d0:	af00      	add	r7, sp, #0
    22d2:	4603      	mov	r3, r0
    22d4:	71fb      	strb	r3, [r7, #7]
    22d6:	2300      	movs	r3, #0
    22d8:	617b      	str	r3, [r7, #20]
    22da:	e027      	b.n	232c <gfx_scroll_right+0x60>
    22dc:	697b      	ldr	r3, [r7, #20]
    22de:	225a      	movs	r2, #90	; 0x5a
    22e0:	fb02 f303 	mul.w	r3, r2, r3
    22e4:	4a15      	ldr	r2, [pc, #84]	; (233c <gfx_scroll_right+0x70>)
    22e6:	4413      	add	r3, r2
    22e8:	335a      	adds	r3, #90	; 0x5a
    22ea:	60fb      	str	r3, [r7, #12]
    22ec:	79fb      	ldrb	r3, [r7, #7]
    22ee:	425b      	negs	r3, r3
    22f0:	68fa      	ldr	r2, [r7, #12]
    22f2:	4413      	add	r3, r2
    22f4:	60bb      	str	r3, [r7, #8]
    22f6:	79fb      	ldrb	r3, [r7, #7]
    22f8:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    22fc:	613b      	str	r3, [r7, #16]
    22fe:	693a      	ldr	r2, [r7, #16]
    2300:	68f9      	ldr	r1, [r7, #12]
    2302:	68b8      	ldr	r0, [r7, #8]
    2304:	f7ff ff0e 	bl	2124 <move_up>
    2308:	60f8      	str	r0, [r7, #12]
    230a:	79fb      	ldrb	r3, [r7, #7]
    230c:	613b      	str	r3, [r7, #16]
    230e:	e005      	b.n	231c <gfx_scroll_right+0x50>
    2310:	68fb      	ldr	r3, [r7, #12]
    2312:	3b01      	subs	r3, #1
    2314:	60fb      	str	r3, [r7, #12]
    2316:	68fb      	ldr	r3, [r7, #12]
    2318:	2200      	movs	r2, #0
    231a:	701a      	strb	r2, [r3, #0]
    231c:	693b      	ldr	r3, [r7, #16]
    231e:	1e5a      	subs	r2, r3, #1
    2320:	613a      	str	r2, [r7, #16]
    2322:	2b00      	cmp	r3, #0
    2324:	d1f4      	bne.n	2310 <gfx_scroll_right+0x44>
    2326:	697b      	ldr	r3, [r7, #20]
    2328:	3301      	adds	r3, #1
    232a:	617b      	str	r3, [r7, #20]
    232c:	697b      	ldr	r3, [r7, #20]
    232e:	2b6f      	cmp	r3, #111	; 0x6f
    2330:	ddd4      	ble.n	22dc <gfx_scroll_right+0x10>
    2332:	bf00      	nop
    2334:	3718      	adds	r7, #24
    2336:	46bd      	mov	sp, r7
    2338:	bd80      	pop	{r7, pc}
    233a:	bf00      	nop
    233c:	20002630 	.word	0x20002630

00002340 <gfx_get_pixel>:
    2340:	b490      	push	{r4, r7}
    2342:	b082      	sub	sp, #8
    2344:	af00      	add	r7, sp, #0
    2346:	6078      	str	r0, [r7, #4]
    2348:	6039      	str	r1, [r7, #0]
    234a:	687b      	ldr	r3, [r7, #4]
    234c:	2b00      	cmp	r3, #0
    234e:	db08      	blt.n	2362 <gfx_get_pixel+0x22>
    2350:	687b      	ldr	r3, [r7, #4]
    2352:	2bb3      	cmp	r3, #179	; 0xb3
    2354:	dc05      	bgt.n	2362 <gfx_get_pixel+0x22>
    2356:	683b      	ldr	r3, [r7, #0]
    2358:	2b00      	cmp	r3, #0
    235a:	db02      	blt.n	2362 <gfx_get_pixel+0x22>
    235c:	683b      	ldr	r3, [r7, #0]
    235e:	2b6f      	cmp	r3, #111	; 0x6f
    2360:	dd01      	ble.n	2366 <gfx_get_pixel+0x26>
    2362:	23ff      	movs	r3, #255	; 0xff
    2364:	e012      	b.n	238c <gfx_get_pixel+0x4c>
    2366:	683b      	ldr	r3, [r7, #0]
    2368:	225a      	movs	r2, #90	; 0x5a
    236a:	fb02 f203 	mul.w	r2, r2, r3
    236e:	687b      	ldr	r3, [r7, #4]
    2370:	105b      	asrs	r3, r3, #1
    2372:	4413      	add	r3, r2
    2374:	4a08      	ldr	r2, [pc, #32]	; (2398 <gfx_get_pixel+0x58>)
    2376:	5cd4      	ldrb	r4, [r2, r3]
    2378:	687b      	ldr	r3, [r7, #4]
    237a:	f003 0301 	and.w	r3, r3, #1
    237e:	2b00      	cmp	r3, #0
    2380:	d101      	bne.n	2386 <gfx_get_pixel+0x46>
    2382:	0923      	lsrs	r3, r4, #4
    2384:	b2dc      	uxtb	r4, r3
    2386:	f004 030f 	and.w	r3, r4, #15
    238a:	b2db      	uxtb	r3, r3
    238c:	4618      	mov	r0, r3
    238e:	3708      	adds	r7, #8
    2390:	46bd      	mov	sp, r7
    2392:	bc90      	pop	{r4, r7}
    2394:	4770      	bx	lr
    2396:	bf00      	nop
    2398:	20002630 	.word	0x20002630

0000239c <gfx_sprite>:
    239c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    23a0:	b086      	sub	sp, #24
    23a2:	af00      	add	r7, sp, #0
    23a4:	60f8      	str	r0, [r7, #12]
    23a6:	60b9      	str	r1, [r7, #8]
    23a8:	4611      	mov	r1, r2
    23aa:	461a      	mov	r2, r3
    23ac:	460b      	mov	r3, r1
    23ae:	71fb      	strb	r3, [r7, #7]
    23b0:	4613      	mov	r3, r2
    23b2:	71bb      	strb	r3, [r7, #6]
    23b4:	2300      	movs	r3, #0
    23b6:	617b      	str	r3, [r7, #20]
    23b8:	4b34      	ldr	r3, [pc, #208]	; (248c <gfx_sprite+0xf0>)
    23ba:	781b      	ldrb	r3, [r3, #0]
    23bc:	461a      	mov	r2, r3
    23be:	4b34      	ldr	r3, [pc, #208]	; (2490 <gfx_sprite+0xf4>)
    23c0:	f813 a002 	ldrb.w	sl, [r3, r2]
    23c4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    23c6:	1c5a      	adds	r2, r3, #1
    23c8:	63ba      	str	r2, [r7, #56]	; 0x38
    23ca:	781c      	ldrb	r4, [r3, #0]
    23cc:	4b2f      	ldr	r3, [pc, #188]	; (248c <gfx_sprite+0xf0>)
    23ce:	781b      	ldrb	r3, [r3, #0]
    23d0:	461a      	mov	r2, r3
    23d2:	4b30      	ldr	r3, [pc, #192]	; (2494 <gfx_sprite+0xf8>)
    23d4:	f813 8002 	ldrb.w	r8, [r3, r2]
    23d8:	4b2c      	ldr	r3, [pc, #176]	; (248c <gfx_sprite+0xf0>)
    23da:	781b      	ldrb	r3, [r3, #0]
    23dc:	461a      	mov	r2, r3
    23de:	2308      	movs	r3, #8
    23e0:	fb93 f3f2 	sdiv	r3, r3, r2
    23e4:	b2de      	uxtb	r6, r3
    23e6:	68bd      	ldr	r5, [r7, #8]
    23e8:	e045      	b.n	2476 <gfx_sprite+0xda>
    23ea:	68fb      	ldr	r3, [r7, #12]
    23ec:	603b      	str	r3, [r7, #0]
    23ee:	e03b      	b.n	2468 <gfx_sprite+0xcc>
    23f0:	4b26      	ldr	r3, [pc, #152]	; (248c <gfx_sprite+0xf0>)
    23f2:	781b      	ldrb	r3, [r3, #0]
    23f4:	2b03      	cmp	r3, #3
    23f6:	d80a      	bhi.n	240e <gfx_sprite+0x72>
    23f8:	ea04 0308 	and.w	r3, r4, r8
    23fc:	b2db      	uxtb	r3, r3
    23fe:	461a      	mov	r2, r3
    2400:	4653      	mov	r3, sl
    2402:	fa42 f303 	asr.w	r3, r2, r3
    2406:	4a24      	ldr	r2, [pc, #144]	; (2498 <gfx_sprite+0xfc>)
    2408:	f812 9003 	ldrb.w	r9, [r2, r3]
    240c:	e008      	b.n	2420 <gfx_sprite+0x84>
    240e:	ea04 0308 	and.w	r3, r4, r8
    2412:	b2db      	uxtb	r3, r3
    2414:	461a      	mov	r2, r3
    2416:	4653      	mov	r3, sl
    2418:	fa42 f303 	asr.w	r3, r2, r3
    241c:	fa5f f983 	uxtb.w	r9, r3
    2420:	2302      	movs	r3, #2
    2422:	464a      	mov	r2, r9
    2424:	4629      	mov	r1, r5
    2426:	6838      	ldr	r0, [r7, #0]
    2428:	f7ff fd98 	bl	1f5c <gfx_blit>
    242c:	4602      	mov	r2, r0
    242e:	697b      	ldr	r3, [r7, #20]
    2430:	4313      	orrs	r3, r2
    2432:	617b      	str	r3, [r7, #20]
    2434:	4622      	mov	r2, r4
    2436:	4653      	mov	r3, sl
    2438:	f1c3 0308 	rsb	r3, r3, #8
    243c:	fa02 f303 	lsl.w	r3, r2, r3
    2440:	b2dc      	uxtb	r4, r3
    2442:	4633      	mov	r3, r6
    2444:	3b01      	subs	r3, #1
    2446:	b2de      	uxtb	r6, r3
    2448:	2e00      	cmp	r6, #0
    244a:	d10a      	bne.n	2462 <gfx_sprite+0xc6>
    244c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    244e:	1c5a      	adds	r2, r3, #1
    2450:	63ba      	str	r2, [r7, #56]	; 0x38
    2452:	781c      	ldrb	r4, [r3, #0]
    2454:	4b0d      	ldr	r3, [pc, #52]	; (248c <gfx_sprite+0xf0>)
    2456:	781b      	ldrb	r3, [r3, #0]
    2458:	461a      	mov	r2, r3
    245a:	2308      	movs	r3, #8
    245c:	fb93 f3f2 	sdiv	r3, r3, r2
    2460:	b2de      	uxtb	r6, r3
    2462:	683b      	ldr	r3, [r7, #0]
    2464:	3301      	adds	r3, #1
    2466:	603b      	str	r3, [r7, #0]
    2468:	79fa      	ldrb	r2, [r7, #7]
    246a:	68fb      	ldr	r3, [r7, #12]
    246c:	4413      	add	r3, r2
    246e:	683a      	ldr	r2, [r7, #0]
    2470:	4293      	cmp	r3, r2
    2472:	dcbd      	bgt.n	23f0 <gfx_sprite+0x54>
    2474:	3501      	adds	r5, #1
    2476:	79ba      	ldrb	r2, [r7, #6]
    2478:	68bb      	ldr	r3, [r7, #8]
    247a:	4413      	add	r3, r2
    247c:	42ab      	cmp	r3, r5
    247e:	dcb4      	bgt.n	23ea <gfx_sprite+0x4e>
    2480:	697b      	ldr	r3, [r7, #20]
    2482:	4618      	mov	r0, r3
    2484:	3718      	adds	r7, #24
    2486:	46bd      	mov	sp, r7
    2488:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    248c:	200000e4 	.word	0x200000e4
    2490:	000055d4 	.word	0x000055d4
    2494:	000055cc 	.word	0x000055cc
    2498:	200000e8 	.word	0x200000e8

0000249c <set_sysclock>:
    249c:	b480      	push	{r7}
    249e:	af00      	add	r7, sp, #0
    24a0:	4a18      	ldr	r2, [pc, #96]	; (2504 <set_sysclock+0x68>)
    24a2:	4b18      	ldr	r3, [pc, #96]	; (2504 <set_sysclock+0x68>)
    24a4:	681b      	ldr	r3, [r3, #0]
    24a6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    24aa:	6013      	str	r3, [r2, #0]
    24ac:	bf00      	nop
    24ae:	4b15      	ldr	r3, [pc, #84]	; (2504 <set_sysclock+0x68>)
    24b0:	681b      	ldr	r3, [r3, #0]
    24b2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    24b6:	2b00      	cmp	r3, #0
    24b8:	d0f9      	beq.n	24ae <set_sysclock+0x12>
    24ba:	4a12      	ldr	r2, [pc, #72]	; (2504 <set_sysclock+0x68>)
    24bc:	4b11      	ldr	r3, [pc, #68]	; (2504 <set_sysclock+0x68>)
    24be:	685b      	ldr	r3, [r3, #4]
    24c0:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    24c4:	6053      	str	r3, [r2, #4]
    24c6:	4a0f      	ldr	r2, [pc, #60]	; (2504 <set_sysclock+0x68>)
    24c8:	4b0e      	ldr	r3, [pc, #56]	; (2504 <set_sysclock+0x68>)
    24ca:	681b      	ldr	r3, [r3, #0]
    24cc:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    24d0:	6013      	str	r3, [r2, #0]
    24d2:	bf00      	nop
    24d4:	4b0b      	ldr	r3, [pc, #44]	; (2504 <set_sysclock+0x68>)
    24d6:	681b      	ldr	r3, [r3, #0]
    24d8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    24dc:	2b00      	cmp	r3, #0
    24de:	d0f9      	beq.n	24d4 <set_sysclock+0x38>
    24e0:	4a09      	ldr	r2, [pc, #36]	; (2508 <set_sysclock+0x6c>)
    24e2:	4b09      	ldr	r3, [pc, #36]	; (2508 <set_sysclock+0x6c>)
    24e4:	681b      	ldr	r3, [r3, #0]
    24e6:	f043 0312 	orr.w	r3, r3, #18
    24ea:	6013      	str	r3, [r2, #0]
    24ec:	4a05      	ldr	r2, [pc, #20]	; (2504 <set_sysclock+0x68>)
    24ee:	4b05      	ldr	r3, [pc, #20]	; (2504 <set_sysclock+0x68>)
    24f0:	685b      	ldr	r3, [r3, #4]
    24f2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    24f6:	f043 0302 	orr.w	r3, r3, #2
    24fa:	6053      	str	r3, [r2, #4]
    24fc:	bf00      	nop
    24fe:	46bd      	mov	sp, r7
    2500:	bc80      	pop	{r7}
    2502:	4770      	bx	lr
    2504:	40021000 	.word	0x40021000
    2508:	40022000 	.word	0x40022000

0000250c <draw_balls>:
    250c:	b590      	push	{r4, r7, lr}
    250e:	b085      	sub	sp, #20
    2510:	af02      	add	r7, sp, #8
    2512:	f002 fd43 	bl	4f9c <frame_sync>
    2516:	2300      	movs	r3, #0
    2518:	607b      	str	r3, [r7, #4]
    251a:	e022      	b.n	2562 <draw_balls+0x56>
    251c:	4915      	ldr	r1, [pc, #84]	; (2574 <draw_balls+0x68>)
    251e:	687a      	ldr	r2, [r7, #4]
    2520:	4613      	mov	r3, r2
    2522:	009b      	lsls	r3, r3, #2
    2524:	4413      	add	r3, r2
    2526:	009b      	lsls	r3, r3, #2
    2528:	440b      	add	r3, r1
    252a:	6818      	ldr	r0, [r3, #0]
    252c:	4911      	ldr	r1, [pc, #68]	; (2574 <draw_balls+0x68>)
    252e:	687a      	ldr	r2, [r7, #4]
    2530:	4613      	mov	r3, r2
    2532:	009b      	lsls	r3, r3, #2
    2534:	4413      	add	r3, r2
    2536:	009b      	lsls	r3, r3, #2
    2538:	440b      	add	r3, r1
    253a:	3304      	adds	r3, #4
    253c:	681c      	ldr	r4, [r3, #0]
    253e:	490d      	ldr	r1, [pc, #52]	; (2574 <draw_balls+0x68>)
    2540:	687a      	ldr	r2, [r7, #4]
    2542:	4613      	mov	r3, r2
    2544:	009b      	lsls	r3, r3, #2
    2546:	4413      	add	r3, r2
    2548:	009b      	lsls	r3, r3, #2
    254a:	440b      	add	r3, r1
    254c:	3310      	adds	r3, #16
    254e:	681b      	ldr	r3, [r3, #0]
    2550:	9300      	str	r3, [sp, #0]
    2552:	2308      	movs	r3, #8
    2554:	2208      	movs	r2, #8
    2556:	4621      	mov	r1, r4
    2558:	f7ff ff20 	bl	239c <gfx_sprite>
    255c:	687b      	ldr	r3, [r7, #4]
    255e:	3301      	adds	r3, #1
    2560:	607b      	str	r3, [r7, #4]
    2562:	687b      	ldr	r3, [r7, #4]
    2564:	2b01      	cmp	r3, #1
    2566:	ddd9      	ble.n	251c <draw_balls+0x10>
    2568:	f002 fd28 	bl	4fbc <wait_sync_end>
    256c:	bf00      	nop
    256e:	370c      	adds	r7, #12
    2570:	46bd      	mov	sp, r7
    2572:	bd90      	pop	{r4, r7, pc}
    2574:	20002608 	.word	0x20002608

00002578 <isqrt>:
    2578:	b580      	push	{r7, lr}
    257a:	b084      	sub	sp, #16
    257c:	af00      	add	r7, sp, #0
    257e:	6078      	str	r0, [r7, #4]
    2580:	687b      	ldr	r3, [r7, #4]
    2582:	2b01      	cmp	r3, #1
    2584:	dc01      	bgt.n	258a <isqrt+0x12>
    2586:	687b      	ldr	r3, [r7, #4]
    2588:	e014      	b.n	25b4 <isqrt+0x3c>
    258a:	687b      	ldr	r3, [r7, #4]
    258c:	109b      	asrs	r3, r3, #2
    258e:	4618      	mov	r0, r3
    2590:	f7ff fff2 	bl	2578 <isqrt>
    2594:	4603      	mov	r3, r0
    2596:	005b      	lsls	r3, r3, #1
    2598:	60fb      	str	r3, [r7, #12]
    259a:	68fb      	ldr	r3, [r7, #12]
    259c:	3301      	adds	r3, #1
    259e:	60bb      	str	r3, [r7, #8]
    25a0:	68bb      	ldr	r3, [r7, #8]
    25a2:	68ba      	ldr	r2, [r7, #8]
    25a4:	fb02 f203 	mul.w	r2, r2, r3
    25a8:	687b      	ldr	r3, [r7, #4]
    25aa:	429a      	cmp	r2, r3
    25ac:	dd01      	ble.n	25b2 <isqrt+0x3a>
    25ae:	68fb      	ldr	r3, [r7, #12]
    25b0:	e000      	b.n	25b4 <isqrt+0x3c>
    25b2:	68bb      	ldr	r3, [r7, #8]
    25b4:	4618      	mov	r0, r3
    25b6:	3710      	adds	r7, #16
    25b8:	46bd      	mov	sp, r7
    25ba:	bd80      	pop	{r7, pc}

000025bc <distance>:
    25bc:	b580      	push	{r7, lr}
    25be:	b082      	sub	sp, #8
    25c0:	af00      	add	r7, sp, #0
    25c2:	6078      	str	r0, [r7, #4]
    25c4:	6039      	str	r1, [r7, #0]
    25c6:	687b      	ldr	r3, [r7, #4]
    25c8:	681b      	ldr	r3, [r3, #0]
    25ca:	683a      	ldr	r2, [r7, #0]
    25cc:	6812      	ldr	r2, [r2, #0]
    25ce:	fb02 f203 	mul.w	r2, r2, r3
    25d2:	687b      	ldr	r3, [r7, #4]
    25d4:	685b      	ldr	r3, [r3, #4]
    25d6:	6839      	ldr	r1, [r7, #0]
    25d8:	6849      	ldr	r1, [r1, #4]
    25da:	fb01 f303 	mul.w	r3, r1, r3
    25de:	4413      	add	r3, r2
    25e0:	2b00      	cmp	r3, #0
    25e2:	bfb8      	it	lt
    25e4:	425b      	neglt	r3, r3
    25e6:	4618      	mov	r0, r3
    25e8:	f7ff ffc6 	bl	2578 <isqrt>
    25ec:	4603      	mov	r3, r0
    25ee:	4618      	mov	r0, r3
    25f0:	3708      	adds	r7, #8
    25f2:	46bd      	mov	sp, r7
    25f4:	bd80      	pop	{r7, pc}

000025f6 <move_balls>:
    25f6:	b580      	push	{r7, lr}
    25f8:	b082      	sub	sp, #8
    25fa:	af00      	add	r7, sp, #0
    25fc:	f002 fd86 	bl	510c <get_video_params>
    2600:	6038      	str	r0, [r7, #0]
    2602:	2300      	movs	r3, #0
    2604:	607b      	str	r3, [r7, #4]
    2606:	e0c3      	b.n	2790 <move_balls+0x19a>
    2608:	4979      	ldr	r1, [pc, #484]	; (27f0 <move_balls+0x1fa>)
    260a:	687a      	ldr	r2, [r7, #4]
    260c:	4613      	mov	r3, r2
    260e:	009b      	lsls	r3, r3, #2
    2610:	4413      	add	r3, r2
    2612:	009b      	lsls	r3, r3, #2
    2614:	440b      	add	r3, r1
    2616:	6819      	ldr	r1, [r3, #0]
    2618:	4875      	ldr	r0, [pc, #468]	; (27f0 <move_balls+0x1fa>)
    261a:	687a      	ldr	r2, [r7, #4]
    261c:	4613      	mov	r3, r2
    261e:	009b      	lsls	r3, r3, #2
    2620:	4413      	add	r3, r2
    2622:	009b      	lsls	r3, r3, #2
    2624:	4403      	add	r3, r0
    2626:	3308      	adds	r3, #8
    2628:	681b      	ldr	r3, [r3, #0]
    262a:	4419      	add	r1, r3
    262c:	4870      	ldr	r0, [pc, #448]	; (27f0 <move_balls+0x1fa>)
    262e:	687a      	ldr	r2, [r7, #4]
    2630:	4613      	mov	r3, r2
    2632:	009b      	lsls	r3, r3, #2
    2634:	4413      	add	r3, r2
    2636:	009b      	lsls	r3, r3, #2
    2638:	4403      	add	r3, r0
    263a:	6019      	str	r1, [r3, #0]
    263c:	496c      	ldr	r1, [pc, #432]	; (27f0 <move_balls+0x1fa>)
    263e:	687a      	ldr	r2, [r7, #4]
    2640:	4613      	mov	r3, r2
    2642:	009b      	lsls	r3, r3, #2
    2644:	4413      	add	r3, r2
    2646:	009b      	lsls	r3, r3, #2
    2648:	440b      	add	r3, r1
    264a:	681b      	ldr	r3, [r3, #0]
    264c:	f113 0f07 	cmn.w	r3, #7
    2650:	db0b      	blt.n	266a <move_balls+0x74>
    2652:	4967      	ldr	r1, [pc, #412]	; (27f0 <move_balls+0x1fa>)
    2654:	687a      	ldr	r2, [r7, #4]
    2656:	4613      	mov	r3, r2
    2658:	009b      	lsls	r3, r3, #2
    265a:	4413      	add	r3, r2
    265c:	009b      	lsls	r3, r3, #2
    265e:	440b      	add	r3, r1
    2660:	681b      	ldr	r3, [r3, #0]
    2662:	683a      	ldr	r2, [r7, #0]
    2664:	8992      	ldrh	r2, [r2, #12]
    2666:	4293      	cmp	r3, r2
    2668:	db2c      	blt.n	26c4 <move_balls+0xce>
    266a:	4961      	ldr	r1, [pc, #388]	; (27f0 <move_balls+0x1fa>)
    266c:	687a      	ldr	r2, [r7, #4]
    266e:	4613      	mov	r3, r2
    2670:	009b      	lsls	r3, r3, #2
    2672:	4413      	add	r3, r2
    2674:	009b      	lsls	r3, r3, #2
    2676:	440b      	add	r3, r1
    2678:	3308      	adds	r3, #8
    267a:	681b      	ldr	r3, [r3, #0]
    267c:	4259      	negs	r1, r3
    267e:	485c      	ldr	r0, [pc, #368]	; (27f0 <move_balls+0x1fa>)
    2680:	687a      	ldr	r2, [r7, #4]
    2682:	4613      	mov	r3, r2
    2684:	009b      	lsls	r3, r3, #2
    2686:	4413      	add	r3, r2
    2688:	009b      	lsls	r3, r3, #2
    268a:	4403      	add	r3, r0
    268c:	3308      	adds	r3, #8
    268e:	6019      	str	r1, [r3, #0]
    2690:	4957      	ldr	r1, [pc, #348]	; (27f0 <move_balls+0x1fa>)
    2692:	687a      	ldr	r2, [r7, #4]
    2694:	4613      	mov	r3, r2
    2696:	009b      	lsls	r3, r3, #2
    2698:	4413      	add	r3, r2
    269a:	009b      	lsls	r3, r3, #2
    269c:	440b      	add	r3, r1
    269e:	6819      	ldr	r1, [r3, #0]
    26a0:	4853      	ldr	r0, [pc, #332]	; (27f0 <move_balls+0x1fa>)
    26a2:	687a      	ldr	r2, [r7, #4]
    26a4:	4613      	mov	r3, r2
    26a6:	009b      	lsls	r3, r3, #2
    26a8:	4413      	add	r3, r2
    26aa:	009b      	lsls	r3, r3, #2
    26ac:	4403      	add	r3, r0
    26ae:	3308      	adds	r3, #8
    26b0:	681b      	ldr	r3, [r3, #0]
    26b2:	4419      	add	r1, r3
    26b4:	484e      	ldr	r0, [pc, #312]	; (27f0 <move_balls+0x1fa>)
    26b6:	687a      	ldr	r2, [r7, #4]
    26b8:	4613      	mov	r3, r2
    26ba:	009b      	lsls	r3, r3, #2
    26bc:	4413      	add	r3, r2
    26be:	009b      	lsls	r3, r3, #2
    26c0:	4403      	add	r3, r0
    26c2:	6019      	str	r1, [r3, #0]
    26c4:	494a      	ldr	r1, [pc, #296]	; (27f0 <move_balls+0x1fa>)
    26c6:	687a      	ldr	r2, [r7, #4]
    26c8:	4613      	mov	r3, r2
    26ca:	009b      	lsls	r3, r3, #2
    26cc:	4413      	add	r3, r2
    26ce:	009b      	lsls	r3, r3, #2
    26d0:	440b      	add	r3, r1
    26d2:	3304      	adds	r3, #4
    26d4:	6819      	ldr	r1, [r3, #0]
    26d6:	4846      	ldr	r0, [pc, #280]	; (27f0 <move_balls+0x1fa>)
    26d8:	687a      	ldr	r2, [r7, #4]
    26da:	4613      	mov	r3, r2
    26dc:	009b      	lsls	r3, r3, #2
    26de:	4413      	add	r3, r2
    26e0:	009b      	lsls	r3, r3, #2
    26e2:	4403      	add	r3, r0
    26e4:	330c      	adds	r3, #12
    26e6:	681b      	ldr	r3, [r3, #0]
    26e8:	4419      	add	r1, r3
    26ea:	4841      	ldr	r0, [pc, #260]	; (27f0 <move_balls+0x1fa>)
    26ec:	687a      	ldr	r2, [r7, #4]
    26ee:	4613      	mov	r3, r2
    26f0:	009b      	lsls	r3, r3, #2
    26f2:	4413      	add	r3, r2
    26f4:	009b      	lsls	r3, r3, #2
    26f6:	4403      	add	r3, r0
    26f8:	3304      	adds	r3, #4
    26fa:	6019      	str	r1, [r3, #0]
    26fc:	493c      	ldr	r1, [pc, #240]	; (27f0 <move_balls+0x1fa>)
    26fe:	687a      	ldr	r2, [r7, #4]
    2700:	4613      	mov	r3, r2
    2702:	009b      	lsls	r3, r3, #2
    2704:	4413      	add	r3, r2
    2706:	009b      	lsls	r3, r3, #2
    2708:	440b      	add	r3, r1
    270a:	3304      	adds	r3, #4
    270c:	681b      	ldr	r3, [r3, #0]
    270e:	2b0f      	cmp	r3, #15
    2710:	dd0c      	ble.n	272c <move_balls+0x136>
    2712:	4937      	ldr	r1, [pc, #220]	; (27f0 <move_balls+0x1fa>)
    2714:	687a      	ldr	r2, [r7, #4]
    2716:	4613      	mov	r3, r2
    2718:	009b      	lsls	r3, r3, #2
    271a:	4413      	add	r3, r2
    271c:	009b      	lsls	r3, r3, #2
    271e:	440b      	add	r3, r1
    2720:	3304      	adds	r3, #4
    2722:	681b      	ldr	r3, [r3, #0]
    2724:	683a      	ldr	r2, [r7, #0]
    2726:	89d2      	ldrh	r2, [r2, #14]
    2728:	4293      	cmp	r3, r2
    272a:	db2e      	blt.n	278a <move_balls+0x194>
    272c:	4930      	ldr	r1, [pc, #192]	; (27f0 <move_balls+0x1fa>)
    272e:	687a      	ldr	r2, [r7, #4]
    2730:	4613      	mov	r3, r2
    2732:	009b      	lsls	r3, r3, #2
    2734:	4413      	add	r3, r2
    2736:	009b      	lsls	r3, r3, #2
    2738:	440b      	add	r3, r1
    273a:	330c      	adds	r3, #12
    273c:	681b      	ldr	r3, [r3, #0]
    273e:	4259      	negs	r1, r3
    2740:	482b      	ldr	r0, [pc, #172]	; (27f0 <move_balls+0x1fa>)
    2742:	687a      	ldr	r2, [r7, #4]
    2744:	4613      	mov	r3, r2
    2746:	009b      	lsls	r3, r3, #2
    2748:	4413      	add	r3, r2
    274a:	009b      	lsls	r3, r3, #2
    274c:	4403      	add	r3, r0
    274e:	330c      	adds	r3, #12
    2750:	6019      	str	r1, [r3, #0]
    2752:	4927      	ldr	r1, [pc, #156]	; (27f0 <move_balls+0x1fa>)
    2754:	687a      	ldr	r2, [r7, #4]
    2756:	4613      	mov	r3, r2
    2758:	009b      	lsls	r3, r3, #2
    275a:	4413      	add	r3, r2
    275c:	009b      	lsls	r3, r3, #2
    275e:	440b      	add	r3, r1
    2760:	3304      	adds	r3, #4
    2762:	6819      	ldr	r1, [r3, #0]
    2764:	4822      	ldr	r0, [pc, #136]	; (27f0 <move_balls+0x1fa>)
    2766:	687a      	ldr	r2, [r7, #4]
    2768:	4613      	mov	r3, r2
    276a:	009b      	lsls	r3, r3, #2
    276c:	4413      	add	r3, r2
    276e:	009b      	lsls	r3, r3, #2
    2770:	4403      	add	r3, r0
    2772:	330c      	adds	r3, #12
    2774:	681b      	ldr	r3, [r3, #0]
    2776:	4419      	add	r1, r3
    2778:	481d      	ldr	r0, [pc, #116]	; (27f0 <move_balls+0x1fa>)
    277a:	687a      	ldr	r2, [r7, #4]
    277c:	4613      	mov	r3, r2
    277e:	009b      	lsls	r3, r3, #2
    2780:	4413      	add	r3, r2
    2782:	009b      	lsls	r3, r3, #2
    2784:	4403      	add	r3, r0
    2786:	3304      	adds	r3, #4
    2788:	6019      	str	r1, [r3, #0]
    278a:	687b      	ldr	r3, [r7, #4]
    278c:	3301      	adds	r3, #1
    278e:	607b      	str	r3, [r7, #4]
    2790:	687b      	ldr	r3, [r7, #4]
    2792:	2b01      	cmp	r3, #1
    2794:	f77f af38 	ble.w	2608 <move_balls+0x12>
    2798:	4916      	ldr	r1, [pc, #88]	; (27f4 <move_balls+0x1fe>)
    279a:	4815      	ldr	r0, [pc, #84]	; (27f0 <move_balls+0x1fa>)
    279c:	f7ff ff0e 	bl	25bc <distance>
    27a0:	4603      	mov	r3, r0
    27a2:	2b07      	cmp	r3, #7
    27a4:	d81f      	bhi.n	27e6 <move_balls+0x1f0>
    27a6:	4b12      	ldr	r3, [pc, #72]	; (27f0 <move_balls+0x1fa>)
    27a8:	689a      	ldr	r2, [r3, #8]
    27aa:	4b11      	ldr	r3, [pc, #68]	; (27f0 <move_balls+0x1fa>)
    27ac:	69db      	ldr	r3, [r3, #28]
    27ae:	429a      	cmp	r2, r3
    27b0:	d009      	beq.n	27c6 <move_balls+0x1d0>
    27b2:	4b0f      	ldr	r3, [pc, #60]	; (27f0 <move_balls+0x1fa>)
    27b4:	689b      	ldr	r3, [r3, #8]
    27b6:	607b      	str	r3, [r7, #4]
    27b8:	4b0d      	ldr	r3, [pc, #52]	; (27f0 <move_balls+0x1fa>)
    27ba:	69db      	ldr	r3, [r3, #28]
    27bc:	4a0c      	ldr	r2, [pc, #48]	; (27f0 <move_balls+0x1fa>)
    27be:	6093      	str	r3, [r2, #8]
    27c0:	4a0b      	ldr	r2, [pc, #44]	; (27f0 <move_balls+0x1fa>)
    27c2:	687b      	ldr	r3, [r7, #4]
    27c4:	61d3      	str	r3, [r2, #28]
    27c6:	4b0a      	ldr	r3, [pc, #40]	; (27f0 <move_balls+0x1fa>)
    27c8:	68da      	ldr	r2, [r3, #12]
    27ca:	4b09      	ldr	r3, [pc, #36]	; (27f0 <move_balls+0x1fa>)
    27cc:	6a1b      	ldr	r3, [r3, #32]
    27ce:	429a      	cmp	r2, r3
    27d0:	d009      	beq.n	27e6 <move_balls+0x1f0>
    27d2:	4b07      	ldr	r3, [pc, #28]	; (27f0 <move_balls+0x1fa>)
    27d4:	68db      	ldr	r3, [r3, #12]
    27d6:	607b      	str	r3, [r7, #4]
    27d8:	4b05      	ldr	r3, [pc, #20]	; (27f0 <move_balls+0x1fa>)
    27da:	6a1b      	ldr	r3, [r3, #32]
    27dc:	4a04      	ldr	r2, [pc, #16]	; (27f0 <move_balls+0x1fa>)
    27de:	60d3      	str	r3, [r2, #12]
    27e0:	4a03      	ldr	r2, [pc, #12]	; (27f0 <move_balls+0x1fa>)
    27e2:	687b      	ldr	r3, [r7, #4]
    27e4:	6213      	str	r3, [r2, #32]
    27e6:	bf00      	nop
    27e8:	3708      	adds	r7, #8
    27ea:	46bd      	mov	sp, r7
    27ec:	bd80      	pop	{r7, pc}
    27ee:	bf00      	nop
    27f0:	20002608 	.word	0x20002608
    27f4:	2000261c 	.word	0x2000261c

000027f8 <init_balls>:
    27f8:	b580      	push	{r7, lr}
    27fa:	b082      	sub	sp, #8
    27fc:	af00      	add	r7, sp, #0
    27fe:	f002 fc85 	bl	510c <get_video_params>
    2802:	6038      	str	r0, [r7, #0]
    2804:	2300      	movs	r3, #0
    2806:	607b      	str	r3, [r7, #4]
    2808:	e057      	b.n	28ba <init_balls+0xc2>
    280a:	f7fd fe77 	bl	4fc <rand>
    280e:	4603      	mov	r3, r0
    2810:	683a      	ldr	r2, [r7, #0]
    2812:	8992      	ldrh	r2, [r2, #12]
    2814:	fb93 f1f2 	sdiv	r1, r3, r2
    2818:	fb02 f201 	mul.w	r2, r2, r1
    281c:	1a99      	subs	r1, r3, r2
    281e:	482a      	ldr	r0, [pc, #168]	; (28c8 <init_balls+0xd0>)
    2820:	687a      	ldr	r2, [r7, #4]
    2822:	4613      	mov	r3, r2
    2824:	009b      	lsls	r3, r3, #2
    2826:	4413      	add	r3, r2
    2828:	009b      	lsls	r3, r3, #2
    282a:	4403      	add	r3, r0
    282c:	6019      	str	r1, [r3, #0]
    282e:	f7fd fe65 	bl	4fc <rand>
    2832:	4602      	mov	r2, r0
    2834:	683b      	ldr	r3, [r7, #0]
    2836:	89db      	ldrh	r3, [r3, #14]
    2838:	3b10      	subs	r3, #16
    283a:	fb92 f1f3 	sdiv	r1, r2, r3
    283e:	fb03 f301 	mul.w	r3, r3, r1
    2842:	1ad3      	subs	r3, r2, r3
    2844:	f103 0110 	add.w	r1, r3, #16
    2848:	481f      	ldr	r0, [pc, #124]	; (28c8 <init_balls+0xd0>)
    284a:	687a      	ldr	r2, [r7, #4]
    284c:	4613      	mov	r3, r2
    284e:	009b      	lsls	r3, r3, #2
    2850:	4413      	add	r3, r2
    2852:	009b      	lsls	r3, r3, #2
    2854:	4403      	add	r3, r0
    2856:	3304      	adds	r3, #4
    2858:	6019      	str	r1, [r3, #0]
    285a:	491b      	ldr	r1, [pc, #108]	; (28c8 <init_balls+0xd0>)
    285c:	687a      	ldr	r2, [r7, #4]
    285e:	4613      	mov	r3, r2
    2860:	009b      	lsls	r3, r3, #2
    2862:	4413      	add	r3, r2
    2864:	009b      	lsls	r3, r3, #2
    2866:	440b      	add	r3, r1
    2868:	3308      	adds	r3, #8
    286a:	2201      	movs	r2, #1
    286c:	601a      	str	r2, [r3, #0]
    286e:	4916      	ldr	r1, [pc, #88]	; (28c8 <init_balls+0xd0>)
    2870:	687a      	ldr	r2, [r7, #4]
    2872:	4613      	mov	r3, r2
    2874:	009b      	lsls	r3, r3, #2
    2876:	4413      	add	r3, r2
    2878:	009b      	lsls	r3, r3, #2
    287a:	440b      	add	r3, r1
    287c:	330c      	adds	r3, #12
    287e:	2201      	movs	r2, #1
    2880:	601a      	str	r2, [r3, #0]
    2882:	683b      	ldr	r3, [r7, #0]
    2884:	781b      	ldrb	r3, [r3, #0]
    2886:	2b00      	cmp	r3, #0
    2888:	d10a      	bne.n	28a0 <init_balls+0xa8>
    288a:	490f      	ldr	r1, [pc, #60]	; (28c8 <init_balls+0xd0>)
    288c:	687a      	ldr	r2, [r7, #4]
    288e:	4613      	mov	r3, r2
    2890:	009b      	lsls	r3, r3, #2
    2892:	4413      	add	r3, r2
    2894:	009b      	lsls	r3, r3, #2
    2896:	440b      	add	r3, r1
    2898:	3310      	adds	r3, #16
    289a:	4a0c      	ldr	r2, [pc, #48]	; (28cc <init_balls+0xd4>)
    289c:	601a      	str	r2, [r3, #0]
    289e:	e009      	b.n	28b4 <init_balls+0xbc>
    28a0:	4909      	ldr	r1, [pc, #36]	; (28c8 <init_balls+0xd0>)
    28a2:	687a      	ldr	r2, [r7, #4]
    28a4:	4613      	mov	r3, r2
    28a6:	009b      	lsls	r3, r3, #2
    28a8:	4413      	add	r3, r2
    28aa:	009b      	lsls	r3, r3, #2
    28ac:	440b      	add	r3, r1
    28ae:	3310      	adds	r3, #16
    28b0:	4a07      	ldr	r2, [pc, #28]	; (28d0 <init_balls+0xd8>)
    28b2:	601a      	str	r2, [r3, #0]
    28b4:	687b      	ldr	r3, [r7, #4]
    28b6:	3301      	adds	r3, #1
    28b8:	607b      	str	r3, [r7, #4]
    28ba:	687b      	ldr	r3, [r7, #4]
    28bc:	2b01      	cmp	r3, #1
    28be:	dda4      	ble.n	280a <init_balls+0x12>
    28c0:	bf00      	nop
    28c2:	3708      	adds	r7, #8
    28c4:	46bd      	mov	sp, r7
    28c6:	bd80      	pop	{r7, pc}
    28c8:	20002608 	.word	0x20002608
    28cc:	000055dc 	.word	0x000055dc
    28d0:	000055fc 	.word	0x000055fc

000028d4 <color_bars>:
    28d4:	b580      	push	{r7, lr}
    28d6:	b084      	sub	sp, #16
    28d8:	af00      	add	r7, sp, #0
    28da:	2300      	movs	r3, #0
    28dc:	71fb      	strb	r3, [r7, #7]
    28de:	f002 fc15 	bl	510c <get_video_params>
    28e2:	6038      	str	r0, [r7, #0]
    28e4:	683b      	ldr	r3, [r7, #0]
    28e6:	89db      	ldrh	r3, [r3, #14]
    28e8:	089b      	lsrs	r3, r3, #2
    28ea:	b29b      	uxth	r3, r3
    28ec:	461a      	mov	r2, r3
    28ee:	4613      	mov	r3, r2
    28f0:	005b      	lsls	r3, r3, #1
    28f2:	4413      	add	r3, r2
    28f4:	60bb      	str	r3, [r7, #8]
    28f6:	e01b      	b.n	2930 <color_bars+0x5c>
    28f8:	2310      	movs	r3, #16
    28fa:	71fb      	strb	r3, [r7, #7]
    28fc:	2300      	movs	r3, #0
    28fe:	60fb      	str	r3, [r7, #12]
    2900:	e010      	b.n	2924 <color_bars+0x50>
    2902:	68fb      	ldr	r3, [r7, #12]
    2904:	f003 0307 	and.w	r3, r3, #7
    2908:	2b00      	cmp	r3, #0
    290a:	d102      	bne.n	2912 <color_bars+0x3e>
    290c:	79fb      	ldrb	r3, [r7, #7]
    290e:	3b01      	subs	r3, #1
    2910:	71fb      	strb	r3, [r7, #7]
    2912:	79fb      	ldrb	r3, [r7, #7]
    2914:	461a      	mov	r2, r3
    2916:	68b9      	ldr	r1, [r7, #8]
    2918:	68f8      	ldr	r0, [r7, #12]
    291a:	f7ff fb97 	bl	204c <gfx_plot>
    291e:	68fb      	ldr	r3, [r7, #12]
    2920:	3301      	adds	r3, #1
    2922:	60fb      	str	r3, [r7, #12]
    2924:	68fb      	ldr	r3, [r7, #12]
    2926:	2b7f      	cmp	r3, #127	; 0x7f
    2928:	ddeb      	ble.n	2902 <color_bars+0x2e>
    292a:	68bb      	ldr	r3, [r7, #8]
    292c:	3301      	adds	r3, #1
    292e:	60bb      	str	r3, [r7, #8]
    2930:	683b      	ldr	r3, [r7, #0]
    2932:	89db      	ldrh	r3, [r3, #14]
    2934:	461a      	mov	r2, r3
    2936:	68bb      	ldr	r3, [r7, #8]
    2938:	429a      	cmp	r2, r3
    293a:	dcdd      	bgt.n	28f8 <color_bars+0x24>
    293c:	bf00      	nop
    293e:	3710      	adds	r7, #16
    2940:	46bd      	mov	sp, r7
    2942:	bd80      	pop	{r7, pc}

00002944 <vertical_bars>:
    2944:	b580      	push	{r7, lr}
    2946:	b082      	sub	sp, #8
    2948:	af00      	add	r7, sp, #0
    294a:	f002 fbdf 	bl	510c <get_video_params>
    294e:	6038      	str	r0, [r7, #0]
    2950:	2310      	movs	r3, #16
    2952:	607b      	str	r3, [r7, #4]
    2954:	e00f      	b.n	2976 <vertical_bars+0x32>
    2956:	220f      	movs	r2, #15
    2958:	6879      	ldr	r1, [r7, #4]
    295a:	2000      	movs	r0, #0
    295c:	f7ff fb76 	bl	204c <gfx_plot>
    2960:	683b      	ldr	r3, [r7, #0]
    2962:	899b      	ldrh	r3, [r3, #12]
    2964:	3b01      	subs	r3, #1
    2966:	220f      	movs	r2, #15
    2968:	6879      	ldr	r1, [r7, #4]
    296a:	4618      	mov	r0, r3
    296c:	f7ff fb6e 	bl	204c <gfx_plot>
    2970:	687b      	ldr	r3, [r7, #4]
    2972:	3301      	adds	r3, #1
    2974:	607b      	str	r3, [r7, #4]
    2976:	683b      	ldr	r3, [r7, #0]
    2978:	89db      	ldrh	r3, [r3, #14]
    297a:	461a      	mov	r2, r3
    297c:	687b      	ldr	r3, [r7, #4]
    297e:	429a      	cmp	r2, r3
    2980:	dce9      	bgt.n	2956 <vertical_bars+0x12>
    2982:	bf00      	nop
    2984:	3708      	adds	r7, #8
    2986:	46bd      	mov	sp, r7
    2988:	bd80      	pop	{r7, pc}

0000298a <video_test>:
    298a:	b580      	push	{r7, lr}
    298c:	b082      	sub	sp, #8
    298e:	af00      	add	r7, sp, #0
    2990:	2300      	movs	r3, #0
    2992:	71fb      	strb	r3, [r7, #7]
    2994:	79fb      	ldrb	r3, [r7, #7]
    2996:	4618      	mov	r0, r3
    2998:	f002 fb20 	bl	4fdc <set_video_mode>
    299c:	f7ff ff9a 	bl	28d4 <color_bars>
    29a0:	f7ff ffd0 	bl	2944 <vertical_bars>
    29a4:	4b2c      	ldr	r3, [pc, #176]	; (2a58 <video_test+0xce>)
    29a6:	2110      	movs	r1, #16
    29a8:	4618      	mov	r0, r3
    29aa:	f001 ff35 	bl	4818 <print_int>
    29ae:	4b2b      	ldr	r3, [pc, #172]	; (2a5c <video_test+0xd2>)
    29b0:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    29b4:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    29b8:	210a      	movs	r1, #10
    29ba:	4618      	mov	r0, r3
    29bc:	f001 ff2c 	bl	4818 <print_int>
    29c0:	f7ff ff1a 	bl	27f8 <init_balls>
    29c4:	2300      	movs	r3, #0
    29c6:	71fb      	strb	r3, [r7, #7]
    29c8:	f7ff fda0 	bl	250c <draw_balls>
    29cc:	f7ff fd9e 	bl	250c <draw_balls>
    29d0:	f7ff fe11 	bl	25f6 <move_balls>
    29d4:	2009      	movs	r0, #9
    29d6:	f7fe ff49 	bl	186c <btn_query_down>
    29da:	4603      	mov	r3, r0
    29dc:	2b00      	cmp	r3, #0
    29de:	d02d      	beq.n	2a3c <video_test+0xb2>
    29e0:	79fb      	ldrb	r3, [r7, #7]
    29e2:	3301      	adds	r3, #1
    29e4:	71fb      	strb	r3, [r7, #7]
    29e6:	79fa      	ldrb	r2, [r7, #7]
    29e8:	4b1d      	ldr	r3, [pc, #116]	; (2a60 <video_test+0xd6>)
    29ea:	fba3 1302 	umull	r1, r3, r3, r2
    29ee:	0859      	lsrs	r1, r3, #1
    29f0:	460b      	mov	r3, r1
    29f2:	005b      	lsls	r3, r3, #1
    29f4:	440b      	add	r3, r1
    29f6:	1ad3      	subs	r3, r2, r3
    29f8:	71fb      	strb	r3, [r7, #7]
    29fa:	79fb      	ldrb	r3, [r7, #7]
    29fc:	4618      	mov	r0, r3
    29fe:	f002 faed 	bl	4fdc <set_video_mode>
    2a02:	79fb      	ldrb	r3, [r7, #7]
    2a04:	2b01      	cmp	r3, #1
    2a06:	d009      	beq.n	2a1c <video_test+0x92>
    2a08:	2b02      	cmp	r3, #2
    2a0a:	d00b      	beq.n	2a24 <video_test+0x9a>
    2a0c:	2b00      	cmp	r3, #0
    2a0e:	d10d      	bne.n	2a2c <video_test+0xa2>
    2a10:	4814      	ldr	r0, [pc, #80]	; (2a64 <video_test+0xda>)
    2a12:	f001 fed1 	bl	47b8 <print>
    2a16:	f7ff ff5d 	bl	28d4 <color_bars>
    2a1a:	e007      	b.n	2a2c <video_test+0xa2>
    2a1c:	4812      	ldr	r0, [pc, #72]	; (2a68 <video_test+0xde>)
    2a1e:	f001 fecb 	bl	47b8 <print>
    2a22:	e003      	b.n	2a2c <video_test+0xa2>
    2a24:	4811      	ldr	r0, [pc, #68]	; (2a6c <video_test+0xe2>)
    2a26:	f001 fec7 	bl	47b8 <print>
    2a2a:	bf00      	nop
    2a2c:	f7ff ff8a 	bl	2944 <vertical_bars>
    2a30:	f7ff fee2 	bl	27f8 <init_balls>
    2a34:	2009      	movs	r0, #9
    2a36:	f7fe ff5d 	bl	18f4 <btn_wait_up>
    2a3a:	e7c5      	b.n	29c8 <video_test+0x3e>
    2a3c:	200b      	movs	r0, #11
    2a3e:	f7fe ff15 	bl	186c <btn_query_down>
    2a42:	4603      	mov	r3, r0
    2a44:	2b00      	cmp	r3, #0
    2a46:	d0bf      	beq.n	29c8 <video_test+0x3e>
    2a48:	200b      	movs	r0, #11
    2a4a:	f7fe ff53 	bl	18f4 <btn_wait_up>
    2a4e:	bf00      	nop
    2a50:	bf00      	nop
    2a52:	3708      	adds	r7, #8
    2a54:	46bd      	mov	sp, r7
    2a56:	bd80      	pop	{r7, pc}
    2a58:	00005c00 	.word	0x00005c00
    2a5c:	20004da0 	.word	0x20004da0
    2a60:	aaaaaaab 	.word	0xaaaaaaab
    2a64:	00005604 	.word	0x00005604
    2a68:	00005624 	.word	0x00005624
    2a6c:	0000563c 	.word	0x0000563c

00002a70 <sound_test>:
    2a70:	b580      	push	{r7, lr}
    2a72:	b082      	sub	sp, #8
    2a74:	af00      	add	r7, sp, #0
    2a76:	23ff      	movs	r3, #255	; 0xff
    2a78:	71fb      	strb	r3, [r7, #7]
    2a7a:	f7ff fb35 	bl	20e8 <gfx_cls>
    2a7e:	482a      	ldr	r0, [pc, #168]	; (2b28 <sound_test+0xb8>)
    2a80:	f001 fe9a 	bl	47b8 <print>
    2a84:	e041      	b.n	2b0a <sound_test+0x9a>
    2a86:	f7fe ff5d 	bl	1944 <btn_wait_any>
    2a8a:	4603      	mov	r3, r0
    2a8c:	71fb      	strb	r3, [r7, #7]
    2a8e:	79fb      	ldrb	r3, [r7, #7]
    2a90:	3b05      	subs	r3, #5
    2a92:	2b08      	cmp	r3, #8
    2a94:	d834      	bhi.n	2b00 <sound_test+0x90>
    2a96:	a201      	add	r2, pc, #4	; (adr r2, 2a9c <sound_test+0x2c>)
    2a98:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2a9c:	00002ac1 	.word	0x00002ac1
    2aa0:	00002b01 	.word	0x00002b01
    2aa4:	00002ad1 	.word	0x00002ad1
    2aa8:	00002ac9 	.word	0x00002ac9
    2aac:	00002ad9 	.word	0x00002ad9
    2ab0:	00002ae1 	.word	0x00002ae1
    2ab4:	00002ae9 	.word	0x00002ae9
    2ab8:	00002af1 	.word	0x00002af1
    2abc:	00002af9 	.word	0x00002af9
    2ac0:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2ac4:	80bb      	strh	r3, [r7, #4]
    2ac6:	e01b      	b.n	2b00 <sound_test+0x90>
    2ac8:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2acc:	80bb      	strh	r3, [r7, #4]
    2ace:	e017      	b.n	2b00 <sound_test+0x90>
    2ad0:	f240 13ed 	movw	r3, #493	; 0x1ed
    2ad4:	80bb      	strh	r3, [r7, #4]
    2ad6:	e013      	b.n	2b00 <sound_test+0x90>
    2ad8:	f240 230b 	movw	r3, #523	; 0x20b
    2adc:	80bb      	strh	r3, [r7, #4]
    2ade:	e00f      	b.n	2b00 <sound_test+0x90>
    2ae0:	f240 232a 	movw	r3, #554	; 0x22a
    2ae4:	80bb      	strh	r3, [r7, #4]
    2ae6:	e00b      	b.n	2b00 <sound_test+0x90>
    2ae8:	f240 234b 	movw	r3, #587	; 0x24b
    2aec:	80bb      	strh	r3, [r7, #4]
    2aee:	e007      	b.n	2b00 <sound_test+0x90>
    2af0:	f240 236e 	movw	r3, #622	; 0x26e
    2af4:	80bb      	strh	r3, [r7, #4]
    2af6:	e003      	b.n	2b00 <sound_test+0x90>
    2af8:	f240 2393 	movw	r3, #659	; 0x293
    2afc:	80bb      	strh	r3, [r7, #4]
    2afe:	bf00      	nop
    2b00:	88bb      	ldrh	r3, [r7, #4]
    2b02:	2103      	movs	r1, #3
    2b04:	4618      	mov	r0, r3
    2b06:	f001 fa29 	bl	3f5c <tone>
    2b0a:	79fb      	ldrb	r3, [r7, #7]
    2b0c:	2b0b      	cmp	r3, #11
    2b0e:	d1ba      	bne.n	2a86 <sound_test+0x16>
    2b10:	79fb      	ldrb	r3, [r7, #7]
    2b12:	4618      	mov	r0, r3
    2b14:	f7fe feee 	bl	18f4 <btn_wait_up>
    2b18:	203c      	movs	r0, #60	; 0x3c
    2b1a:	f001 fa91 	bl	4040 <sound_sampler>
    2b1e:	bf00      	nop
    2b20:	3708      	adds	r7, #8
    2b22:	46bd      	mov	sp, r7
    2b24:	bd80      	pop	{r7, pc}
    2b26:	bf00      	nop
    2b28:	00005654 	.word	0x00005654

00002b2c <display_keymap>:
    2b2c:	b580      	push	{r7, lr}
    2b2e:	b084      	sub	sp, #16
    2b30:	af00      	add	r7, sp, #0
    2b32:	6078      	str	r0, [r7, #4]
    2b34:	2108      	movs	r1, #8
    2b36:	2000      	movs	r0, #0
    2b38:	f001 fe12 	bl	4760 <set_cursor>
    2b3c:	2300      	movs	r3, #0
    2b3e:	60fb      	str	r3, [r7, #12]
    2b40:	e00a      	b.n	2b58 <display_keymap+0x2c>
    2b42:	68fb      	ldr	r3, [r7, #12]
    2b44:	687a      	ldr	r2, [r7, #4]
    2b46:	4413      	add	r3, r2
    2b48:	781b      	ldrb	r3, [r3, #0]
    2b4a:	2110      	movs	r1, #16
    2b4c:	4618      	mov	r0, r3
    2b4e:	f001 fe63 	bl	4818 <print_int>
    2b52:	68fb      	ldr	r3, [r7, #12]
    2b54:	3301      	adds	r3, #1
    2b56:	60fb      	str	r3, [r7, #12]
    2b58:	68fb      	ldr	r3, [r7, #12]
    2b5a:	2b07      	cmp	r3, #7
    2b5c:	ddf1      	ble.n	2b42 <display_keymap+0x16>
    2b5e:	bf00      	nop
    2b60:	3710      	adds	r7, #16
    2b62:	46bd      	mov	sp, r7
    2b64:	bd80      	pop	{r7, pc}

00002b66 <buttons_map>:
    2b66:	b580      	push	{r7, lr}
    2b68:	b086      	sub	sp, #24
    2b6a:	af00      	add	r7, sp, #0
    2b6c:	23ff      	movs	r3, #255	; 0xff
    2b6e:	74fb      	strb	r3, [r7, #19]
    2b70:	f7fe ff30 	bl	19d4 <get_keymap>
    2b74:	60f8      	str	r0, [r7, #12]
    2b76:	f7ff fab7 	bl	20e8 <gfx_cls>
    2b7a:	4882      	ldr	r0, [pc, #520]	; (2d84 <buttons_map+0x21e>)
    2b7c:	f001 fe3f 	bl	47fe <println>
    2b80:	2300      	movs	r3, #0
    2b82:	617b      	str	r3, [r7, #20]
    2b84:	e00b      	b.n	2b9e <buttons_map+0x38>
    2b86:	697b      	ldr	r3, [r7, #20]
    2b88:	68fa      	ldr	r2, [r7, #12]
    2b8a:	4413      	add	r3, r2
    2b8c:	7819      	ldrb	r1, [r3, #0]
    2b8e:	1d3a      	adds	r2, r7, #4
    2b90:	697b      	ldr	r3, [r7, #20]
    2b92:	4413      	add	r3, r2
    2b94:	460a      	mov	r2, r1
    2b96:	701a      	strb	r2, [r3, #0]
    2b98:	697b      	ldr	r3, [r7, #20]
    2b9a:	3301      	adds	r3, #1
    2b9c:	617b      	str	r3, [r7, #20]
    2b9e:	697b      	ldr	r3, [r7, #20]
    2ba0:	2b07      	cmp	r3, #7
    2ba2:	ddf0      	ble.n	2b86 <buttons_map+0x20>
    2ba4:	1d3b      	adds	r3, r7, #4
    2ba6:	4618      	mov	r0, r3
    2ba8:	f7ff ffc0 	bl	2b2c <display_keymap>
    2bac:	2108      	movs	r1, #8
    2bae:	2000      	movs	r0, #0
    2bb0:	f001 fdd6 	bl	4760 <set_cursor>
    2bb4:	2001      	movs	r0, #1
    2bb6:	f001 ff69 	bl	4a8c <show_cursor>
    2bba:	2300      	movs	r3, #0
    2bbc:	617b      	str	r3, [r7, #20]
    2bbe:	1d3a      	adds	r2, r7, #4
    2bc0:	697b      	ldr	r3, [r7, #20]
    2bc2:	4413      	add	r3, r2
    2bc4:	781b      	ldrb	r3, [r3, #0]
    2bc6:	74bb      	strb	r3, [r7, #18]
    2bc8:	e0c2      	b.n	2d50 <buttons_map+0x1ea>
    2bca:	f7fe febb 	bl	1944 <btn_wait_any>
    2bce:	4603      	mov	r3, r0
    2bd0:	74fb      	strb	r3, [r7, #19]
    2bd2:	7cfb      	ldrb	r3, [r7, #19]
    2bd4:	3b05      	subs	r3, #5
    2bd6:	2b07      	cmp	r3, #7
    2bd8:	f200 80b6 	bhi.w	2d48 <buttons_map+0x1e2>
    2bdc:	a201      	add	r2, pc, #4	; (adr r2, 2be4 <buttons_map+0x7e>)
    2bde:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2be2:	bf00      	nop
    2be4:	00002c7b 	.word	0x00002c7b
    2be8:	00002d49 	.word	0x00002d49
    2bec:	00002c05 	.word	0x00002c05
    2bf0:	00002cb9 	.word	0x00002cb9
    2bf4:	00002c41 	.word	0x00002c41
    2bf8:	00002d49 	.word	0x00002d49
    2bfc:	00002d49 	.word	0x00002d49
    2c00:	00002cf7 	.word	0x00002cf7
    2c04:	697b      	ldr	r3, [r7, #20]
    2c06:	2b00      	cmp	r3, #0
    2c08:	f000 8097 	beq.w	2d3a <buttons_map+0x1d4>
    2c0c:	2000      	movs	r0, #0
    2c0e:	f001 ff3d 	bl	4a8c <show_cursor>
    2c12:	697b      	ldr	r3, [r7, #20]
    2c14:	3b01      	subs	r3, #1
    2c16:	617b      	str	r3, [r7, #20]
    2c18:	697b      	ldr	r3, [r7, #20]
    2c1a:	b2db      	uxtb	r3, r3
    2c1c:	461a      	mov	r2, r3
    2c1e:	00d2      	lsls	r2, r2, #3
    2c20:	4413      	add	r3, r2
    2c22:	005b      	lsls	r3, r3, #1
    2c24:	b2db      	uxtb	r3, r3
    2c26:	2108      	movs	r1, #8
    2c28:	4618      	mov	r0, r3
    2c2a:	f001 fd99 	bl	4760 <set_cursor>
    2c2e:	2001      	movs	r0, #1
    2c30:	f001 ff2c 	bl	4a8c <show_cursor>
    2c34:	1d3a      	adds	r2, r7, #4
    2c36:	697b      	ldr	r3, [r7, #20]
    2c38:	4413      	add	r3, r2
    2c3a:	781b      	ldrb	r3, [r3, #0]
    2c3c:	74bb      	strb	r3, [r7, #18]
    2c3e:	e07c      	b.n	2d3a <buttons_map+0x1d4>
    2c40:	697b      	ldr	r3, [r7, #20]
    2c42:	2b06      	cmp	r3, #6
    2c44:	dc7b      	bgt.n	2d3e <buttons_map+0x1d8>
    2c46:	2000      	movs	r0, #0
    2c48:	f001 ff20 	bl	4a8c <show_cursor>
    2c4c:	697b      	ldr	r3, [r7, #20]
    2c4e:	3301      	adds	r3, #1
    2c50:	617b      	str	r3, [r7, #20]
    2c52:	697b      	ldr	r3, [r7, #20]
    2c54:	b2db      	uxtb	r3, r3
    2c56:	461a      	mov	r2, r3
    2c58:	00d2      	lsls	r2, r2, #3
    2c5a:	4413      	add	r3, r2
    2c5c:	005b      	lsls	r3, r3, #1
    2c5e:	b2db      	uxtb	r3, r3
    2c60:	2108      	movs	r1, #8
    2c62:	4618      	mov	r0, r3
    2c64:	f001 fd7c 	bl	4760 <set_cursor>
    2c68:	2001      	movs	r0, #1
    2c6a:	f001 ff0f 	bl	4a8c <show_cursor>
    2c6e:	1d3a      	adds	r2, r7, #4
    2c70:	697b      	ldr	r3, [r7, #20]
    2c72:	4413      	add	r3, r2
    2c74:	781b      	ldrb	r3, [r3, #0]
    2c76:	74bb      	strb	r3, [r7, #18]
    2c78:	e061      	b.n	2d3e <buttons_map+0x1d8>
    2c7a:	7cbb      	ldrb	r3, [r7, #18]
    2c7c:	2b0e      	cmp	r3, #14
    2c7e:	d860      	bhi.n	2d42 <buttons_map+0x1dc>
    2c80:	7cbb      	ldrb	r3, [r7, #18]
    2c82:	3301      	adds	r3, #1
    2c84:	74bb      	strb	r3, [r7, #18]
    2c86:	1d3a      	adds	r2, r7, #4
    2c88:	697b      	ldr	r3, [r7, #20]
    2c8a:	4413      	add	r3, r2
    2c8c:	7cba      	ldrb	r2, [r7, #18]
    2c8e:	701a      	strb	r2, [r3, #0]
    2c90:	7cbb      	ldrb	r3, [r7, #18]
    2c92:	2110      	movs	r1, #16
    2c94:	4618      	mov	r0, r3
    2c96:	f001 fdbf 	bl	4818 <print_int>
    2c9a:	697b      	ldr	r3, [r7, #20]
    2c9c:	b2db      	uxtb	r3, r3
    2c9e:	461a      	mov	r2, r3
    2ca0:	00d2      	lsls	r2, r2, #3
    2ca2:	4413      	add	r3, r2
    2ca4:	005b      	lsls	r3, r3, #1
    2ca6:	b2db      	uxtb	r3, r3
    2ca8:	2108      	movs	r1, #8
    2caa:	4618      	mov	r0, r3
    2cac:	f001 fd58 	bl	4760 <set_cursor>
    2cb0:	2001      	movs	r0, #1
    2cb2:	f001 feeb 	bl	4a8c <show_cursor>
    2cb6:	e044      	b.n	2d42 <buttons_map+0x1dc>
    2cb8:	7cbb      	ldrb	r3, [r7, #18]
    2cba:	2b00      	cmp	r3, #0
    2cbc:	d043      	beq.n	2d46 <buttons_map+0x1e0>
    2cbe:	7cbb      	ldrb	r3, [r7, #18]
    2cc0:	3b01      	subs	r3, #1
    2cc2:	74bb      	strb	r3, [r7, #18]
    2cc4:	1d3a      	adds	r2, r7, #4
    2cc6:	697b      	ldr	r3, [r7, #20]
    2cc8:	4413      	add	r3, r2
    2cca:	7cba      	ldrb	r2, [r7, #18]
    2ccc:	701a      	strb	r2, [r3, #0]
    2cce:	7cbb      	ldrb	r3, [r7, #18]
    2cd0:	2110      	movs	r1, #16
    2cd2:	4618      	mov	r0, r3
    2cd4:	f001 fda0 	bl	4818 <print_int>
    2cd8:	697b      	ldr	r3, [r7, #20]
    2cda:	b2db      	uxtb	r3, r3
    2cdc:	461a      	mov	r2, r3
    2cde:	00d2      	lsls	r2, r2, #3
    2ce0:	4413      	add	r3, r2
    2ce2:	005b      	lsls	r3, r3, #1
    2ce4:	b2db      	uxtb	r3, r3
    2ce6:	2108      	movs	r1, #8
    2ce8:	4618      	mov	r0, r3
    2cea:	f001 fd39 	bl	4760 <set_cursor>
    2cee:	2001      	movs	r0, #1
    2cf0:	f001 fecc 	bl	4a8c <show_cursor>
    2cf4:	e027      	b.n	2d46 <buttons_map+0x1e0>
    2cf6:	2300      	movs	r3, #0
    2cf8:	617b      	str	r3, [r7, #20]
    2cfa:	e00b      	b.n	2d14 <buttons_map+0x1ae>
    2cfc:	697b      	ldr	r3, [r7, #20]
    2cfe:	68fa      	ldr	r2, [r7, #12]
    2d00:	4413      	add	r3, r2
    2d02:	7819      	ldrb	r1, [r3, #0]
    2d04:	1d3a      	adds	r2, r7, #4
    2d06:	697b      	ldr	r3, [r7, #20]
    2d08:	4413      	add	r3, r2
    2d0a:	460a      	mov	r2, r1
    2d0c:	701a      	strb	r2, [r3, #0]
    2d0e:	697b      	ldr	r3, [r7, #20]
    2d10:	3301      	adds	r3, #1
    2d12:	617b      	str	r3, [r7, #20]
    2d14:	697b      	ldr	r3, [r7, #20]
    2d16:	2b07      	cmp	r3, #7
    2d18:	ddf0      	ble.n	2cfc <buttons_map+0x196>
    2d1a:	1d3b      	adds	r3, r7, #4
    2d1c:	4618      	mov	r0, r3
    2d1e:	f7ff ff05 	bl	2b2c <display_keymap>
    2d22:	2108      	movs	r1, #8
    2d24:	2000      	movs	r0, #0
    2d26:	f001 fd1b 	bl	4760 <set_cursor>
    2d2a:	2300      	movs	r3, #0
    2d2c:	617b      	str	r3, [r7, #20]
    2d2e:	1d3a      	adds	r2, r7, #4
    2d30:	697b      	ldr	r3, [r7, #20]
    2d32:	4413      	add	r3, r2
    2d34:	781b      	ldrb	r3, [r3, #0]
    2d36:	74bb      	strb	r3, [r7, #18]
    2d38:	e006      	b.n	2d48 <buttons_map+0x1e2>
    2d3a:	bf00      	nop
    2d3c:	e004      	b.n	2d48 <buttons_map+0x1e2>
    2d3e:	bf00      	nop
    2d40:	e002      	b.n	2d48 <buttons_map+0x1e2>
    2d42:	bf00      	nop
    2d44:	e000      	b.n	2d48 <buttons_map+0x1e2>
    2d46:	bf00      	nop
    2d48:	7cfb      	ldrb	r3, [r7, #19]
    2d4a:	4618      	mov	r0, r3
    2d4c:	f7fe fdd2 	bl	18f4 <btn_wait_up>
    2d50:	7cfb      	ldrb	r3, [r7, #19]
    2d52:	2b0b      	cmp	r3, #11
    2d54:	f47f af39 	bne.w	2bca <buttons_map+0x64>
    2d58:	2300      	movs	r3, #0
    2d5a:	617b      	str	r3, [r7, #20]
    2d5c:	e00a      	b.n	2d74 <buttons_map+0x20e>
    2d5e:	697b      	ldr	r3, [r7, #20]
    2d60:	68fa      	ldr	r2, [r7, #12]
    2d62:	4413      	add	r3, r2
    2d64:	1d39      	adds	r1, r7, #4
    2d66:	697a      	ldr	r2, [r7, #20]
    2d68:	440a      	add	r2, r1
    2d6a:	7812      	ldrb	r2, [r2, #0]
    2d6c:	701a      	strb	r2, [r3, #0]
    2d6e:	697b      	ldr	r3, [r7, #20]
    2d70:	3301      	adds	r3, #1
    2d72:	617b      	str	r3, [r7, #20]
    2d74:	697b      	ldr	r3, [r7, #20]
    2d76:	2b07      	cmp	r3, #7
    2d78:	ddf1      	ble.n	2d5e <buttons_map+0x1f8>
    2d7a:	bf00      	nop
    2d7c:	3718      	adds	r7, #24
    2d7e:	46bd      	mov	sp, r7
    2d80:	bd80      	pop	{r7, pc}
    2d82:	bf00      	nop
    2d84:	00005664 	.word	0x00005664

00002d88 <print_games_list>:
    2d88:	b580      	push	{r7, lr}
    2d8a:	b084      	sub	sp, #16
    2d8c:	af00      	add	r7, sp, #0
    2d8e:	6078      	str	r0, [r7, #4]
    2d90:	6039      	str	r1, [r7, #0]
    2d92:	2301      	movs	r3, #1
    2d94:	60fb      	str	r3, [r7, #12]
    2d96:	2100      	movs	r1, #0
    2d98:	2000      	movs	r0, #0
    2d9a:	f001 fce1 	bl	4760 <set_cursor>
    2d9e:	4815      	ldr	r0, [pc, #84]	; (2df4 <print_games_list+0x6c>)
    2da0:	f001 fd0a 	bl	47b8 <print>
    2da4:	e012      	b.n	2dcc <print_games_list+0x44>
    2da6:	f001 fbcd 	bl	4544 <new_line>
    2daa:	2020      	movs	r0, #32
    2dac:	f001 fc4c 	bl	4648 <put_char>
    2db0:	687a      	ldr	r2, [r7, #4]
    2db2:	4613      	mov	r3, r2
    2db4:	005b      	lsls	r3, r3, #1
    2db6:	4413      	add	r3, r2
    2db8:	00db      	lsls	r3, r3, #3
    2dba:	4a0f      	ldr	r2, [pc, #60]	; (2df8 <print_games_list+0x70>)
    2dbc:	4413      	add	r3, r2
    2dbe:	3301      	adds	r3, #1
    2dc0:	4618      	mov	r0, r3
    2dc2:	f001 fcf9 	bl	47b8 <print>
    2dc6:	687b      	ldr	r3, [r7, #4]
    2dc8:	3301      	adds	r3, #1
    2dca:	607b      	str	r3, [r7, #4]
    2dcc:	68fa      	ldr	r2, [r7, #12]
    2dce:	683b      	ldr	r3, [r7, #0]
    2dd0:	429a      	cmp	r2, r3
    2dd2:	d20a      	bcs.n	2dea <print_games_list+0x62>
    2dd4:	4908      	ldr	r1, [pc, #32]	; (2df8 <print_games_list+0x70>)
    2dd6:	687a      	ldr	r2, [r7, #4]
    2dd8:	4613      	mov	r3, r2
    2dda:	005b      	lsls	r3, r3, #1
    2ddc:	4413      	add	r3, r2
    2dde:	00db      	lsls	r3, r3, #3
    2de0:	440b      	add	r3, r1
    2de2:	3310      	adds	r3, #16
    2de4:	681b      	ldr	r3, [r3, #0]
    2de6:	2b00      	cmp	r3, #0
    2de8:	d1dd      	bne.n	2da6 <print_games_list+0x1e>
    2dea:	bf00      	nop
    2dec:	3710      	adds	r7, #16
    2dee:	46bd      	mov	sp, r7
    2df0:	bd80      	pop	{r7, pc}
    2df2:	bf00      	nop
    2df4:	00005678 	.word	0x00005678
    2df8:	2000000c 	.word	0x2000000c

00002dfc <run_game>:
    2dfc:	b580      	push	{r7, lr}
    2dfe:	b082      	sub	sp, #8
    2e00:	af00      	add	r7, sp, #0
    2e02:	6078      	str	r0, [r7, #4]
    2e04:	4913      	ldr	r1, [pc, #76]	; (2e54 <run_game+0x58>)
    2e06:	687a      	ldr	r2, [r7, #4]
    2e08:	4613      	mov	r3, r2
    2e0a:	005b      	lsls	r3, r3, #1
    2e0c:	4413      	add	r3, r2
    2e0e:	00db      	lsls	r3, r3, #3
    2e10:	440b      	add	r3, r1
    2e12:	3314      	adds	r3, #20
    2e14:	6818      	ldr	r0, [r3, #0]
    2e16:	490f      	ldr	r1, [pc, #60]	; (2e54 <run_game+0x58>)
    2e18:	687a      	ldr	r2, [r7, #4]
    2e1a:	4613      	mov	r3, r2
    2e1c:	005b      	lsls	r3, r3, #1
    2e1e:	4413      	add	r3, r2
    2e20:	00db      	lsls	r3, r3, #3
    2e22:	440b      	add	r3, r1
    2e24:	3310      	adds	r3, #16
    2e26:	681b      	ldr	r3, [r3, #0]
    2e28:	461a      	mov	r2, r3
    2e2a:	490b      	ldr	r1, [pc, #44]	; (2e58 <run_game+0x5c>)
    2e2c:	f7fe ff15 	bl	1c5a <move>
    2e30:	4908      	ldr	r1, [pc, #32]	; (2e54 <run_game+0x58>)
    2e32:	687a      	ldr	r2, [r7, #4]
    2e34:	4613      	mov	r3, r2
    2e36:	005b      	lsls	r3, r3, #1
    2e38:	4413      	add	r3, r2
    2e3a:	00db      	lsls	r3, r3, #3
    2e3c:	440b      	add	r3, r1
    2e3e:	781b      	ldrb	r3, [r3, #0]
    2e40:	4618      	mov	r0, r3
    2e42:	f002 f8cb 	bl	4fdc <set_video_mode>
    2e46:	2000      	movs	r0, #0
    2e48:	f7fd fb7a 	bl	540 <chip_vm>
    2e4c:	bf00      	nop
    2e4e:	3708      	adds	r7, #8
    2e50:	46bd      	mov	sp, r7
    2e52:	bd80      	pop	{r7, pc}
    2e54:	2000000c 	.word	0x2000000c
    2e58:	20000604 	.word	0x20000604

00002e5c <select_game>:
    2e5c:	b580      	push	{r7, lr}
    2e5e:	b088      	sub	sp, #32
    2e60:	af00      	add	r7, sp, #0
    2e62:	2300      	movs	r3, #0
    2e64:	613b      	str	r3, [r7, #16]
    2e66:	2300      	movs	r3, #0
    2e68:	61fb      	str	r3, [r7, #28]
    2e6a:	2301      	movs	r3, #1
    2e6c:	61bb      	str	r3, [r7, #24]
    2e6e:	2301      	movs	r3, #1
    2e70:	617b      	str	r3, [r7, #20]
    2e72:	f7fe fdb9 	bl	19e8 <games_count>
    2e76:	4603      	mov	r3, r0
    2e78:	60fb      	str	r3, [r7, #12]
    2e7a:	2000      	movs	r0, #0
    2e7c:	f002 f8ae 	bl	4fdc <set_video_mode>
    2e80:	f002 f944 	bl	510c <get_video_params>
    2e84:	60b8      	str	r0, [r7, #8]
    2e86:	68bb      	ldr	r3, [r7, #8]
    2e88:	89db      	ldrh	r3, [r3, #14]
    2e8a:	08db      	lsrs	r3, r3, #3
    2e8c:	b29b      	uxth	r3, r3
    2e8e:	607b      	str	r3, [r7, #4]
    2e90:	e053      	b.n	2f3a <select_game+0xde>
    2e92:	69fb      	ldr	r3, [r7, #28]
    2e94:	687a      	ldr	r2, [r7, #4]
    2e96:	4611      	mov	r1, r2
    2e98:	4618      	mov	r0, r3
    2e9a:	f7ff ff75 	bl	2d88 <print_games_list>
    2e9e:	69bb      	ldr	r3, [r7, #24]
    2ea0:	b2db      	uxtb	r3, r3
    2ea2:	00db      	lsls	r3, r3, #3
    2ea4:	b2db      	uxtb	r3, r3
    2ea6:	4619      	mov	r1, r3
    2ea8:	2000      	movs	r0, #0
    2eaa:	f001 fc59 	bl	4760 <set_cursor>
    2eae:	203e      	movs	r0, #62	; 0x3e
    2eb0:	f001 fbca 	bl	4648 <put_char>
    2eb4:	f7fe fd46 	bl	1944 <btn_wait_any>
    2eb8:	4603      	mov	r3, r0
    2eba:	70fb      	strb	r3, [r7, #3]
    2ebc:	78fb      	ldrb	r3, [r7, #3]
    2ebe:	4618      	mov	r0, r3
    2ec0:	f7fe fd18 	bl	18f4 <btn_wait_up>
    2ec4:	78fb      	ldrb	r3, [r7, #3]
    2ec6:	3b05      	subs	r3, #5
    2ec8:	2b07      	cmp	r3, #7
    2eca:	d836      	bhi.n	2f3a <select_game+0xde>
    2ecc:	a201      	add	r2, pc, #4	; (adr r2, 2ed4 <select_game+0x78>)
    2ece:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2ed2:	bf00      	nop
    2ed4:	00002ef5 	.word	0x00002ef5
    2ed8:	00002f3b 	.word	0x00002f3b
    2edc:	00002f3b 	.word	0x00002f3b
    2ee0:	00002f0f 	.word	0x00002f0f
    2ee4:	00002f3b 	.word	0x00002f3b
    2ee8:	00002f3b 	.word	0x00002f3b
    2eec:	00002f35 	.word	0x00002f35
    2ef0:	00002f51 	.word	0x00002f51
    2ef4:	69fb      	ldr	r3, [r7, #28]
    2ef6:	2b00      	cmp	r3, #0
    2ef8:	d002      	beq.n	2f00 <select_game+0xa4>
    2efa:	69fb      	ldr	r3, [r7, #28]
    2efc:	3b01      	subs	r3, #1
    2efe:	61fb      	str	r3, [r7, #28]
    2f00:	69bb      	ldr	r3, [r7, #24]
    2f02:	2b01      	cmp	r3, #1
    2f04:	dd19      	ble.n	2f3a <select_game+0xde>
    2f06:	69bb      	ldr	r3, [r7, #24]
    2f08:	3b01      	subs	r3, #1
    2f0a:	61bb      	str	r3, [r7, #24]
    2f0c:	e015      	b.n	2f3a <select_game+0xde>
    2f0e:	69fa      	ldr	r2, [r7, #28]
    2f10:	69bb      	ldr	r3, [r7, #24]
    2f12:	4413      	add	r3, r2
    2f14:	1e5a      	subs	r2, r3, #1
    2f16:	68fb      	ldr	r3, [r7, #12]
    2f18:	3b01      	subs	r3, #1
    2f1a:	429a      	cmp	r2, r3
    2f1c:	da0d      	bge.n	2f3a <select_game+0xde>
    2f1e:	69bb      	ldr	r3, [r7, #24]
    2f20:	3301      	adds	r3, #1
    2f22:	61bb      	str	r3, [r7, #24]
    2f24:	69ba      	ldr	r2, [r7, #24]
    2f26:	687b      	ldr	r3, [r7, #4]
    2f28:	429a      	cmp	r2, r3
    2f2a:	db06      	blt.n	2f3a <select_game+0xde>
    2f2c:	69fb      	ldr	r3, [r7, #28]
    2f2e:	3301      	adds	r3, #1
    2f30:	61fb      	str	r3, [r7, #28]
    2f32:	e002      	b.n	2f3a <select_game+0xde>
    2f34:	2300      	movs	r3, #0
    2f36:	617b      	str	r3, [r7, #20]
    2f38:	bf00      	nop
    2f3a:	697b      	ldr	r3, [r7, #20]
    2f3c:	2b00      	cmp	r3, #0
    2f3e:	d1a8      	bne.n	2e92 <select_game+0x36>
    2f40:	69fa      	ldr	r2, [r7, #28]
    2f42:	69bb      	ldr	r3, [r7, #24]
    2f44:	4413      	add	r3, r2
    2f46:	3b01      	subs	r3, #1
    2f48:	4618      	mov	r0, r3
    2f4a:	f7ff ff57 	bl	2dfc <run_game>
    2f4e:	e000      	b.n	2f52 <select_game+0xf6>
    2f50:	bf00      	nop
    2f52:	3720      	adds	r7, #32
    2f54:	46bd      	mov	sp, r7
    2f56:	bd80      	pop	{r7, pc}

00002f58 <display_menu>:
    2f58:	b580      	push	{r7, lr}
    2f5a:	b082      	sub	sp, #8
    2f5c:	af00      	add	r7, sp, #0
    2f5e:	f7ff f8c3 	bl	20e8 <gfx_cls>
    2f62:	2300      	movs	r3, #0
    2f64:	607b      	str	r3, [r7, #4]
    2f66:	e009      	b.n	2f7c <display_menu+0x24>
    2f68:	4a08      	ldr	r2, [pc, #32]	; (2f8c <display_menu+0x34>)
    2f6a:	687b      	ldr	r3, [r7, #4]
    2f6c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    2f70:	4618      	mov	r0, r3
    2f72:	f001 fc44 	bl	47fe <println>
    2f76:	687b      	ldr	r3, [r7, #4]
    2f78:	3301      	adds	r3, #1
    2f7a:	607b      	str	r3, [r7, #4]
    2f7c:	687b      	ldr	r3, [r7, #4]
    2f7e:	2b03      	cmp	r3, #3
    2f80:	ddf2      	ble.n	2f68 <display_menu+0x10>
    2f82:	bf00      	nop
    2f84:	3708      	adds	r7, #8
    2f86:	46bd      	mov	sp, r7
    2f88:	bd80      	pop	{r7, pc}
    2f8a:	bf00      	nop
    2f8c:	200000ec 	.word	0x200000ec

00002f90 <menu>:
    2f90:	b580      	push	{r7, lr}
    2f92:	b084      	sub	sp, #16
    2f94:	af00      	add	r7, sp, #0
    2f96:	2300      	movs	r3, #0
    2f98:	60fb      	str	r3, [r7, #12]
    2f9a:	f002 f8b7 	bl	510c <get_video_params>
    2f9e:	60b8      	str	r0, [r7, #8]
    2fa0:	f7ff ffda 	bl	2f58 <display_menu>
    2fa4:	68fb      	ldr	r3, [r7, #12]
    2fa6:	b2db      	uxtb	r3, r3
    2fa8:	00db      	lsls	r3, r3, #3
    2faa:	b2db      	uxtb	r3, r3
    2fac:	4619      	mov	r1, r3
    2fae:	2000      	movs	r0, #0
    2fb0:	f001 fbd6 	bl	4760 <set_cursor>
    2fb4:	203e      	movs	r0, #62	; 0x3e
    2fb6:	f001 fb47 	bl	4648 <put_char>
    2fba:	f7fe fcc3 	bl	1944 <btn_wait_any>
    2fbe:	4603      	mov	r3, r0
    2fc0:	71fb      	strb	r3, [r7, #7]
    2fc2:	79fb      	ldrb	r3, [r7, #7]
    2fc4:	4618      	mov	r0, r3
    2fc6:	f7fe fc95 	bl	18f4 <btn_wait_up>
    2fca:	68fb      	ldr	r3, [r7, #12]
    2fcc:	b2db      	uxtb	r3, r3
    2fce:	00db      	lsls	r3, r3, #3
    2fd0:	b2db      	uxtb	r3, r3
    2fd2:	4619      	mov	r1, r3
    2fd4:	2000      	movs	r0, #0
    2fd6:	f001 fbc3 	bl	4760 <set_cursor>
    2fda:	2020      	movs	r0, #32
    2fdc:	f001 fb34 	bl	4648 <put_char>
    2fe0:	79fb      	ldrb	r3, [r7, #7]
    2fe2:	2b08      	cmp	r3, #8
    2fe4:	d00a      	beq.n	2ffc <menu+0x6c>
    2fe6:	2b0b      	cmp	r3, #11
    2fe8:	d00f      	beq.n	300a <menu+0x7a>
    2fea:	2b05      	cmp	r3, #5
    2fec:	d12e      	bne.n	304c <menu+0xbc>
    2fee:	68fb      	ldr	r3, [r7, #12]
    2ff0:	2b00      	cmp	r3, #0
    2ff2:	d028      	beq.n	3046 <menu+0xb6>
    2ff4:	68fb      	ldr	r3, [r7, #12]
    2ff6:	3b01      	subs	r3, #1
    2ff8:	60fb      	str	r3, [r7, #12]
    2ffa:	e024      	b.n	3046 <menu+0xb6>
    2ffc:	68fb      	ldr	r3, [r7, #12]
    2ffe:	2b02      	cmp	r3, #2
    3000:	dc23      	bgt.n	304a <menu+0xba>
    3002:	68fb      	ldr	r3, [r7, #12]
    3004:	3301      	adds	r3, #1
    3006:	60fb      	str	r3, [r7, #12]
    3008:	e01f      	b.n	304a <menu+0xba>
    300a:	68fb      	ldr	r3, [r7, #12]
    300c:	2b03      	cmp	r3, #3
    300e:	d817      	bhi.n	3040 <menu+0xb0>
    3010:	a201      	add	r2, pc, #4	; (adr r2, 3018 <menu+0x88>)
    3012:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    3016:	bf00      	nop
    3018:	00003029 	.word	0x00003029
    301c:	0000302f 	.word	0x0000302f
    3020:	00003035 	.word	0x00003035
    3024:	0000303b 	.word	0x0000303b
    3028:	f7ff fd9d 	bl	2b66 <buttons_map>
    302c:	e008      	b.n	3040 <menu+0xb0>
    302e:	f7ff ff15 	bl	2e5c <select_game>
    3032:	e005      	b.n	3040 <menu+0xb0>
    3034:	f7ff fca9 	bl	298a <video_test>
    3038:	e002      	b.n	3040 <menu+0xb0>
    303a:	f7ff fd19 	bl	2a70 <sound_test>
    303e:	bf00      	nop
    3040:	f7ff ff8a 	bl	2f58 <display_menu>
    3044:	e002      	b.n	304c <menu+0xbc>
    3046:	bf00      	nop
    3048:	e7ac      	b.n	2fa4 <menu+0x14>
    304a:	bf00      	nop
    304c:	e7aa      	b.n	2fa4 <menu+0x14>

0000304e <main>:
    304e:	b580      	push	{r7, lr}
    3050:	b086      	sub	sp, #24
    3052:	af00      	add	r7, sp, #0
    3054:	f7ff fa22 	bl	249c <set_sysclock>
    3058:	4b19      	ldr	r3, [pc, #100]	; (30c0 <main+0x72>)
    305a:	f640 021d 	movw	r2, #2077	; 0x81d
    305e:	619a      	str	r2, [r3, #24]
    3060:	2206      	movs	r2, #6
    3062:	210d      	movs	r1, #13
    3064:	4817      	ldr	r0, [pc, #92]	; (30c4 <main+0x76>)
    3066:	f7fe fee5 	bl	1e34 <config_pin>
    306a:	4a16      	ldr	r2, [pc, #88]	; (30c4 <main+0x76>)
    306c:	4b15      	ldr	r3, [pc, #84]	; (30c4 <main+0x76>)
    306e:	68db      	ldr	r3, [r3, #12]
    3070:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3074:	60d3      	str	r3, [r2, #12]
    3076:	f7fe fb73 	bl	1760 <gamepad_init>
    307a:	f001 fd2f 	bl	4adc <tvout_init>
    307e:	f000 ff4d 	bl	3f1c <sound_init>
    3082:	2300      	movs	r3, #0
    3084:	617b      	str	r3, [r7, #20]
    3086:	e00b      	b.n	30a0 <main+0x52>
    3088:	f7fd fa38 	bl	4fc <rand>
    308c:	4603      	mov	r3, r0
    308e:	b2d9      	uxtb	r1, r3
    3090:	1d3a      	adds	r2, r7, #4
    3092:	697b      	ldr	r3, [r7, #20]
    3094:	4413      	add	r3, r2
    3096:	460a      	mov	r2, r1
    3098:	701a      	strb	r2, [r3, #0]
    309a:	697b      	ldr	r3, [r7, #20]
    309c:	3301      	adds	r3, #1
    309e:	617b      	str	r3, [r7, #20]
    30a0:	697b      	ldr	r3, [r7, #20]
    30a2:	2b0f      	cmp	r3, #15
    30a4:	ddf0      	ble.n	3088 <main+0x3a>
    30a6:	1d3b      	adds	r3, r7, #4
    30a8:	4618      	mov	r0, r3
    30aa:	f000 ffac 	bl	4006 <load_sound_buffer>
    30ae:	f7ff f81b 	bl	20e8 <gfx_cls>
    30b2:	f7ff ff6d 	bl	2f90 <menu>
    30b6:	bf00      	nop
    30b8:	3718      	adds	r7, #24
    30ba:	46bd      	mov	sp, r7
    30bc:	bd80      	pop	{r7, pc}
    30be:	bf00      	nop
    30c0:	40021000 	.word	0x40021000
    30c4:	40011000 	.word	0x40011000

000030c8 <enable_interrupt>:
    30c8:	b480      	push	{r7}
    30ca:	b083      	sub	sp, #12
    30cc:	af00      	add	r7, sp, #0
    30ce:	6078      	str	r0, [r7, #4]
    30d0:	687b      	ldr	r3, [r7, #4]
    30d2:	2b3b      	cmp	r3, #59	; 0x3b
    30d4:	dc17      	bgt.n	3106 <enable_interrupt+0x3e>
    30d6:	687b      	ldr	r3, [r7, #4]
    30d8:	115b      	asrs	r3, r3, #5
    30da:	009b      	lsls	r3, r3, #2
    30dc:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    30e0:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    30e4:	687a      	ldr	r2, [r7, #4]
    30e6:	1152      	asrs	r2, r2, #5
    30e8:	0092      	lsls	r2, r2, #2
    30ea:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    30ee:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    30f2:	6812      	ldr	r2, [r2, #0]
    30f4:	6879      	ldr	r1, [r7, #4]
    30f6:	f001 011f 	and.w	r1, r1, #31
    30fa:	2001      	movs	r0, #1
    30fc:	fa00 f101 	lsl.w	r1, r0, r1
    3100:	430a      	orrs	r2, r1
    3102:	601a      	str	r2, [r3, #0]
    3104:	e000      	b.n	3108 <enable_interrupt+0x40>
    3106:	bf00      	nop
    3108:	370c      	adds	r7, #12
    310a:	46bd      	mov	sp, r7
    310c:	bc80      	pop	{r7}
    310e:	4770      	bx	lr

00003110 <disable_interrupt>:
    3110:	b480      	push	{r7}
    3112:	b083      	sub	sp, #12
    3114:	af00      	add	r7, sp, #0
    3116:	6078      	str	r0, [r7, #4]
    3118:	687b      	ldr	r3, [r7, #4]
    311a:	2b3b      	cmp	r3, #59	; 0x3b
    311c:	dc0c      	bgt.n	3138 <disable_interrupt+0x28>
    311e:	687b      	ldr	r3, [r7, #4]
    3120:	115b      	asrs	r3, r3, #5
    3122:	009a      	lsls	r2, r3, #2
    3124:	4b07      	ldr	r3, [pc, #28]	; (3144 <disable_interrupt+0x34>)
    3126:	4413      	add	r3, r2
    3128:	687a      	ldr	r2, [r7, #4]
    312a:	f002 021f 	and.w	r2, r2, #31
    312e:	2101      	movs	r1, #1
    3130:	fa01 f202 	lsl.w	r2, r1, r2
    3134:	601a      	str	r2, [r3, #0]
    3136:	e000      	b.n	313a <disable_interrupt+0x2a>
    3138:	bf00      	nop
    313a:	370c      	adds	r7, #12
    313c:	46bd      	mov	sp, r7
    313e:	bc80      	pop	{r7}
    3140:	4770      	bx	lr
    3142:	bf00      	nop
    3144:	e000e180 	.word	0xe000e180

00003148 <get_pending>:
    3148:	b480      	push	{r7}
    314a:	b083      	sub	sp, #12
    314c:	af00      	add	r7, sp, #0
    314e:	6078      	str	r0, [r7, #4]
    3150:	687b      	ldr	r3, [r7, #4]
    3152:	2b3b      	cmp	r3, #59	; 0x3b
    3154:	dd01      	ble.n	315a <get_pending+0x12>
    3156:	2300      	movs	r3, #0
    3158:	e00c      	b.n	3174 <get_pending+0x2c>
    315a:	687b      	ldr	r3, [r7, #4]
    315c:	115b      	asrs	r3, r3, #5
    315e:	009a      	lsls	r2, r3, #2
    3160:	4b07      	ldr	r3, [pc, #28]	; (3180 <get_pending+0x38>)
    3162:	4413      	add	r3, r2
    3164:	681b      	ldr	r3, [r3, #0]
    3166:	687a      	ldr	r2, [r7, #4]
    3168:	f002 021f 	and.w	r2, r2, #31
    316c:	2101      	movs	r1, #1
    316e:	fa01 f202 	lsl.w	r2, r1, r2
    3172:	4013      	ands	r3, r2
    3174:	4618      	mov	r0, r3
    3176:	370c      	adds	r7, #12
    3178:	46bd      	mov	sp, r7
    317a:	bc80      	pop	{r7}
    317c:	4770      	bx	lr
    317e:	bf00      	nop
    3180:	e000e280 	.word	0xe000e280

00003184 <get_active>:
    3184:	b480      	push	{r7}
    3186:	b083      	sub	sp, #12
    3188:	af00      	add	r7, sp, #0
    318a:	6078      	str	r0, [r7, #4]
    318c:	687b      	ldr	r3, [r7, #4]
    318e:	2b3b      	cmp	r3, #59	; 0x3b
    3190:	dd01      	ble.n	3196 <get_active+0x12>
    3192:	2300      	movs	r3, #0
    3194:	e00e      	b.n	31b4 <get_active+0x30>
    3196:	687b      	ldr	r3, [r7, #4]
    3198:	115b      	asrs	r3, r3, #5
    319a:	009b      	lsls	r3, r3, #2
    319c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    31a0:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    31a4:	681b      	ldr	r3, [r3, #0]
    31a6:	687a      	ldr	r2, [r7, #4]
    31a8:	f002 021f 	and.w	r2, r2, #31
    31ac:	2101      	movs	r1, #1
    31ae:	fa01 f202 	lsl.w	r2, r1, r2
    31b2:	4013      	ands	r3, r2
    31b4:	4618      	mov	r0, r3
    31b6:	370c      	adds	r7, #12
    31b8:	46bd      	mov	sp, r7
    31ba:	bc80      	pop	{r7}
    31bc:	4770      	bx	lr

000031be <set_pending>:
    31be:	b480      	push	{r7}
    31c0:	b083      	sub	sp, #12
    31c2:	af00      	add	r7, sp, #0
    31c4:	6078      	str	r0, [r7, #4]
    31c6:	687b      	ldr	r3, [r7, #4]
    31c8:	2b3b      	cmp	r3, #59	; 0x3b
    31ca:	dc17      	bgt.n	31fc <set_pending+0x3e>
    31cc:	687b      	ldr	r3, [r7, #4]
    31ce:	115b      	asrs	r3, r3, #5
    31d0:	009b      	lsls	r3, r3, #2
    31d2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    31d6:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    31da:	687a      	ldr	r2, [r7, #4]
    31dc:	1152      	asrs	r2, r2, #5
    31de:	0092      	lsls	r2, r2, #2
    31e0:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    31e4:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    31e8:	6812      	ldr	r2, [r2, #0]
    31ea:	6879      	ldr	r1, [r7, #4]
    31ec:	f001 011f 	and.w	r1, r1, #31
    31f0:	2001      	movs	r0, #1
    31f2:	fa00 f101 	lsl.w	r1, r0, r1
    31f6:	430a      	orrs	r2, r1
    31f8:	601a      	str	r2, [r3, #0]
    31fa:	e000      	b.n	31fe <set_pending+0x40>
    31fc:	bf00      	nop
    31fe:	370c      	adds	r7, #12
    3200:	46bd      	mov	sp, r7
    3202:	bc80      	pop	{r7}
    3204:	4770      	bx	lr

00003206 <clear_pending>:
    3206:	b480      	push	{r7}
    3208:	b083      	sub	sp, #12
    320a:	af00      	add	r7, sp, #0
    320c:	6078      	str	r0, [r7, #4]
    320e:	687b      	ldr	r3, [r7, #4]
    3210:	2b3b      	cmp	r3, #59	; 0x3b
    3212:	dc0c      	bgt.n	322e <clear_pending+0x28>
    3214:	687b      	ldr	r3, [r7, #4]
    3216:	115b      	asrs	r3, r3, #5
    3218:	009a      	lsls	r2, r3, #2
    321a:	4b07      	ldr	r3, [pc, #28]	; (3238 <clear_pending+0x32>)
    321c:	4413      	add	r3, r2
    321e:	687a      	ldr	r2, [r7, #4]
    3220:	f002 021f 	and.w	r2, r2, #31
    3224:	2101      	movs	r1, #1
    3226:	fa01 f202 	lsl.w	r2, r1, r2
    322a:	601a      	str	r2, [r3, #0]
    322c:	e000      	b.n	3230 <clear_pending+0x2a>
    322e:	bf00      	nop
    3230:	370c      	adds	r7, #12
    3232:	46bd      	mov	sp, r7
    3234:	bc80      	pop	{r7}
    3236:	4770      	bx	lr
    3238:	e000e280 	.word	0xe000e280

0000323c <set_int_priority>:
    323c:	b480      	push	{r7}
    323e:	b083      	sub	sp, #12
    3240:	af00      	add	r7, sp, #0
    3242:	6078      	str	r0, [r7, #4]
    3244:	6039      	str	r1, [r7, #0]
    3246:	687b      	ldr	r3, [r7, #4]
    3248:	2b00      	cmp	r3, #0
    324a:	db0d      	blt.n	3268 <set_int_priority+0x2c>
    324c:	687b      	ldr	r3, [r7, #4]
    324e:	2b3b      	cmp	r3, #59	; 0x3b
    3250:	dc0a      	bgt.n	3268 <set_int_priority+0x2c>
    3252:	687b      	ldr	r3, [r7, #4]
    3254:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3258:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    325c:	683a      	ldr	r2, [r7, #0]
    325e:	b2d2      	uxtb	r2, r2
    3260:	0112      	lsls	r2, r2, #4
    3262:	b2d2      	uxtb	r2, r2
    3264:	701a      	strb	r2, [r3, #0]
    3266:	e012      	b.n	328e <set_int_priority+0x52>
    3268:	687b      	ldr	r3, [r7, #4]
    326a:	2b00      	cmp	r3, #0
    326c:	da0f      	bge.n	328e <set_int_priority+0x52>
    326e:	687b      	ldr	r3, [r7, #4]
    3270:	f113 0f0f 	cmn.w	r3, #15
    3274:	db0b      	blt.n	328e <set_int_priority+0x52>
    3276:	687a      	ldr	r2, [r7, #4]
    3278:	f06f 0303 	mvn.w	r3, #3
    327c:	1a9b      	subs	r3, r3, r2
    327e:	461a      	mov	r2, r3
    3280:	4b05      	ldr	r3, [pc, #20]	; (3298 <set_int_priority+0x5c>)
    3282:	4413      	add	r3, r2
    3284:	683a      	ldr	r2, [r7, #0]
    3286:	b2d2      	uxtb	r2, r2
    3288:	0112      	lsls	r2, r2, #4
    328a:	b2d2      	uxtb	r2, r2
    328c:	701a      	strb	r2, [r3, #0]
    328e:	bf00      	nop
    3290:	370c      	adds	r7, #12
    3292:	46bd      	mov	sp, r7
    3294:	bc80      	pop	{r7}
    3296:	4770      	bx	lr
    3298:	e000ed18 	.word	0xe000ed18

0000329c <leap_year>:
    329c:	b480      	push	{r7}
    329e:	b083      	sub	sp, #12
    32a0:	af00      	add	r7, sp, #0
    32a2:	6078      	str	r0, [r7, #4]
    32a4:	687b      	ldr	r3, [r7, #4]
    32a6:	f003 0303 	and.w	r3, r3, #3
    32aa:	2b00      	cmp	r3, #0
    32ac:	d11a      	bne.n	32e4 <leap_year+0x48>
    32ae:	687a      	ldr	r2, [r7, #4]
    32b0:	4b0f      	ldr	r3, [pc, #60]	; (32f0 <leap_year+0x54>)
    32b2:	fba3 1302 	umull	r1, r3, r3, r2
    32b6:	095b      	lsrs	r3, r3, #5
    32b8:	2164      	movs	r1, #100	; 0x64
    32ba:	fb01 f303 	mul.w	r3, r1, r3
    32be:	1ad3      	subs	r3, r2, r3
    32c0:	2b00      	cmp	r3, #0
    32c2:	d10d      	bne.n	32e0 <leap_year+0x44>
    32c4:	687a      	ldr	r2, [r7, #4]
    32c6:	4b0a      	ldr	r3, [pc, #40]	; (32f0 <leap_year+0x54>)
    32c8:	fba3 1302 	umull	r1, r3, r3, r2
    32cc:	09db      	lsrs	r3, r3, #7
    32ce:	f44f 71c8 	mov.w	r1, #400	; 0x190
    32d2:	fb01 f303 	mul.w	r3, r1, r3
    32d6:	1ad3      	subs	r3, r2, r3
    32d8:	2b00      	cmp	r3, #0
    32da:	d001      	beq.n	32e0 <leap_year+0x44>
    32dc:	2300      	movs	r3, #0
    32de:	e002      	b.n	32e6 <leap_year+0x4a>
    32e0:	2301      	movs	r3, #1
    32e2:	e000      	b.n	32e6 <leap_year+0x4a>
    32e4:	2300      	movs	r3, #0
    32e6:	4618      	mov	r0, r3
    32e8:	370c      	adds	r7, #12
    32ea:	46bd      	mov	sp, r7
    32ec:	bc80      	pop	{r7}
    32ee:	4770      	bx	lr
    32f0:	51eb851f 	.word	0x51eb851f

000032f4 <sec_per_month>:
    32f4:	b480      	push	{r7}
    32f6:	b085      	sub	sp, #20
    32f8:	af00      	add	r7, sp, #0
    32fa:	6078      	str	r0, [r7, #4]
    32fc:	6039      	str	r1, [r7, #0]
    32fe:	4a0d      	ldr	r2, [pc, #52]	; (3334 <sec_per_month+0x40>)
    3300:	683b      	ldr	r3, [r7, #0]
    3302:	4413      	add	r3, r2
    3304:	781b      	ldrb	r3, [r3, #0]
    3306:	461a      	mov	r2, r3
    3308:	4b0b      	ldr	r3, [pc, #44]	; (3338 <sec_per_month+0x44>)
    330a:	fb03 f302 	mul.w	r3, r3, r2
    330e:	60fb      	str	r3, [r7, #12]
    3310:	683b      	ldr	r3, [r7, #0]
    3312:	2b02      	cmp	r3, #2
    3314:	d108      	bne.n	3328 <sec_per_month+0x34>
    3316:	687b      	ldr	r3, [r7, #4]
    3318:	2b00      	cmp	r3, #0
    331a:	d005      	beq.n	3328 <sec_per_month+0x34>
    331c:	68fb      	ldr	r3, [r7, #12]
    331e:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    3322:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    3326:	60fb      	str	r3, [r7, #12]
    3328:	68fb      	ldr	r3, [r7, #12]
    332a:	4618      	mov	r0, r3
    332c:	3714      	adds	r7, #20
    332e:	46bd      	mov	sp, r7
    3330:	bc80      	pop	{r7}
    3332:	4770      	bx	lr
    3334:	0000576c 	.word	0x0000576c
    3338:	00015180 	.word	0x00015180

0000333c <get_date_time>:
    333c:	b580      	push	{r7, lr}
    333e:	b086      	sub	sp, #24
    3340:	af00      	add	r7, sp, #0
    3342:	6078      	str	r0, [r7, #4]
    3344:	4b66      	ldr	r3, [pc, #408]	; (34e0 <get_date_time+0x1a4>)
    3346:	699b      	ldr	r3, [r3, #24]
    3348:	041a      	lsls	r2, r3, #16
    334a:	4b65      	ldr	r3, [pc, #404]	; (34e0 <get_date_time+0x1a4>)
    334c:	69db      	ldr	r3, [r3, #28]
    334e:	4413      	add	r3, r2
    3350:	617b      	str	r3, [r7, #20]
    3352:	687b      	ldr	r3, [r7, #4]
    3354:	f240 72b2 	movw	r2, #1970	; 0x7b2
    3358:	811a      	strh	r2, [r3, #8]
    335a:	f240 70b2 	movw	r0, #1970	; 0x7b2
    335e:	f7ff ff9d 	bl	329c <leap_year>
    3362:	6138      	str	r0, [r7, #16]
    3364:	e019      	b.n	339a <get_date_time+0x5e>
    3366:	693b      	ldr	r3, [r7, #16]
    3368:	2b00      	cmp	r3, #0
    336a:	d006      	beq.n	337a <get_date_time+0x3e>
    336c:	697b      	ldr	r3, [r7, #20]
    336e:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    3372:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    3376:	617b      	str	r3, [r7, #20]
    3378:	e003      	b.n	3382 <get_date_time+0x46>
    337a:	697a      	ldr	r2, [r7, #20]
    337c:	4b59      	ldr	r3, [pc, #356]	; (34e4 <get_date_time+0x1a8>)
    337e:	4413      	add	r3, r2
    3380:	617b      	str	r3, [r7, #20]
    3382:	687b      	ldr	r3, [r7, #4]
    3384:	891b      	ldrh	r3, [r3, #8]
    3386:	3301      	adds	r3, #1
    3388:	b29a      	uxth	r2, r3
    338a:	687b      	ldr	r3, [r7, #4]
    338c:	811a      	strh	r2, [r3, #8]
    338e:	687b      	ldr	r3, [r7, #4]
    3390:	891b      	ldrh	r3, [r3, #8]
    3392:	4618      	mov	r0, r3
    3394:	f7ff ff82 	bl	329c <leap_year>
    3398:	6138      	str	r0, [r7, #16]
    339a:	693b      	ldr	r3, [r7, #16]
    339c:	2b00      	cmp	r3, #0
    339e:	d103      	bne.n	33a8 <get_date_time+0x6c>
    33a0:	697b      	ldr	r3, [r7, #20]
    33a2:	4a51      	ldr	r2, [pc, #324]	; (34e8 <get_date_time+0x1ac>)
    33a4:	4293      	cmp	r3, r2
    33a6:	d8de      	bhi.n	3366 <get_date_time+0x2a>
    33a8:	693b      	ldr	r3, [r7, #16]
    33aa:	2b00      	cmp	r3, #0
    33ac:	d003      	beq.n	33b6 <get_date_time+0x7a>
    33ae:	697b      	ldr	r3, [r7, #20]
    33b0:	4a4e      	ldr	r2, [pc, #312]	; (34ec <get_date_time+0x1b0>)
    33b2:	4293      	cmp	r3, r2
    33b4:	d8d7      	bhi.n	3366 <get_date_time+0x2a>
    33b6:	687a      	ldr	r2, [r7, #4]
    33b8:	8853      	ldrh	r3, [r2, #2]
    33ba:	2101      	movs	r1, #1
    33bc:	f361 1389 	bfi	r3, r1, #6, #4
    33c0:	8053      	strh	r3, [r2, #2]
    33c2:	687a      	ldr	r2, [r7, #4]
    33c4:	7893      	ldrb	r3, [r2, #2]
    33c6:	2101      	movs	r1, #1
    33c8:	f361 0345 	bfi	r3, r1, #1, #5
    33cc:	7093      	strb	r3, [r2, #2]
    33ce:	687a      	ldr	r2, [r7, #4]
    33d0:	6813      	ldr	r3, [r2, #0]
    33d2:	f36f 3310 	bfc	r3, #12, #5
    33d6:	6013      	str	r3, [r2, #0]
    33d8:	687a      	ldr	r2, [r7, #4]
    33da:	8813      	ldrh	r3, [r2, #0]
    33dc:	f36f 138b 	bfc	r3, #6, #6
    33e0:	8013      	strh	r3, [r2, #0]
    33e2:	687a      	ldr	r2, [r7, #4]
    33e4:	7813      	ldrb	r3, [r2, #0]
    33e6:	f36f 0305 	bfc	r3, #0, #6
    33ea:	7013      	strb	r3, [r2, #0]
    33ec:	e011      	b.n	3412 <get_date_time+0xd6>
    33ee:	687b      	ldr	r3, [r7, #4]
    33f0:	885b      	ldrh	r3, [r3, #2]
    33f2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    33f6:	b2db      	uxtb	r3, r3
    33f8:	3301      	adds	r3, #1
    33fa:	f003 030f 	and.w	r3, r3, #15
    33fe:	b2d9      	uxtb	r1, r3
    3400:	687a      	ldr	r2, [r7, #4]
    3402:	8853      	ldrh	r3, [r2, #2]
    3404:	f361 1389 	bfi	r3, r1, #6, #4
    3408:	8053      	strh	r3, [r2, #2]
    340a:	697a      	ldr	r2, [r7, #20]
    340c:	68fb      	ldr	r3, [r7, #12]
    340e:	1ad3      	subs	r3, r2, r3
    3410:	617b      	str	r3, [r7, #20]
    3412:	687b      	ldr	r3, [r7, #4]
    3414:	885b      	ldrh	r3, [r3, #2]
    3416:	f3c3 1383 	ubfx	r3, r3, #6, #4
    341a:	b2db      	uxtb	r3, r3
    341c:	4619      	mov	r1, r3
    341e:	6938      	ldr	r0, [r7, #16]
    3420:	f7ff ff68 	bl	32f4 <sec_per_month>
    3424:	60f8      	str	r0, [r7, #12]
    3426:	68fa      	ldr	r2, [r7, #12]
    3428:	697b      	ldr	r3, [r7, #20]
    342a:	429a      	cmp	r2, r3
    342c:	d3df      	bcc.n	33ee <get_date_time+0xb2>
    342e:	697b      	ldr	r3, [r7, #20]
    3430:	4a2f      	ldr	r2, [pc, #188]	; (34f0 <get_date_time+0x1b4>)
    3432:	fba2 2303 	umull	r2, r3, r2, r3
    3436:	0c1b      	lsrs	r3, r3, #16
    3438:	b2db      	uxtb	r3, r3
    343a:	3301      	adds	r3, #1
    343c:	b2db      	uxtb	r3, r3
    343e:	f003 031f 	and.w	r3, r3, #31
    3442:	b2d9      	uxtb	r1, r3
    3444:	687a      	ldr	r2, [r7, #4]
    3446:	7893      	ldrb	r3, [r2, #2]
    3448:	f361 0345 	bfi	r3, r1, #1, #5
    344c:	7093      	strb	r3, [r2, #2]
    344e:	697b      	ldr	r3, [r7, #20]
    3450:	4a27      	ldr	r2, [pc, #156]	; (34f0 <get_date_time+0x1b4>)
    3452:	fba2 1203 	umull	r1, r2, r2, r3
    3456:	0c12      	lsrs	r2, r2, #16
    3458:	4926      	ldr	r1, [pc, #152]	; (34f4 <get_date_time+0x1b8>)
    345a:	fb01 f202 	mul.w	r2, r1, r2
    345e:	1a9b      	subs	r3, r3, r2
    3460:	617b      	str	r3, [r7, #20]
    3462:	697b      	ldr	r3, [r7, #20]
    3464:	4a24      	ldr	r2, [pc, #144]	; (34f8 <get_date_time+0x1bc>)
    3466:	fba2 2303 	umull	r2, r3, r2, r3
    346a:	0adb      	lsrs	r3, r3, #11
    346c:	b2db      	uxtb	r3, r3
    346e:	f003 031f 	and.w	r3, r3, #31
    3472:	b2d9      	uxtb	r1, r3
    3474:	687a      	ldr	r2, [r7, #4]
    3476:	6813      	ldr	r3, [r2, #0]
    3478:	f361 3310 	bfi	r3, r1, #12, #5
    347c:	6013      	str	r3, [r2, #0]
    347e:	697b      	ldr	r3, [r7, #20]
    3480:	4a1d      	ldr	r2, [pc, #116]	; (34f8 <get_date_time+0x1bc>)
    3482:	fba2 1203 	umull	r1, r2, r2, r3
    3486:	0ad2      	lsrs	r2, r2, #11
    3488:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    348c:	fb01 f202 	mul.w	r2, r1, r2
    3490:	1a9b      	subs	r3, r3, r2
    3492:	617b      	str	r3, [r7, #20]
    3494:	697b      	ldr	r3, [r7, #20]
    3496:	4a19      	ldr	r2, [pc, #100]	; (34fc <get_date_time+0x1c0>)
    3498:	fba2 2303 	umull	r2, r3, r2, r3
    349c:	095b      	lsrs	r3, r3, #5
    349e:	b2db      	uxtb	r3, r3
    34a0:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    34a4:	b2d9      	uxtb	r1, r3
    34a6:	687a      	ldr	r2, [r7, #4]
    34a8:	8813      	ldrh	r3, [r2, #0]
    34aa:	f361 138b 	bfi	r3, r1, #6, #6
    34ae:	8013      	strh	r3, [r2, #0]
    34b0:	6979      	ldr	r1, [r7, #20]
    34b2:	4b12      	ldr	r3, [pc, #72]	; (34fc <get_date_time+0x1c0>)
    34b4:	fba3 2301 	umull	r2, r3, r3, r1
    34b8:	095a      	lsrs	r2, r3, #5
    34ba:	4613      	mov	r3, r2
    34bc:	011b      	lsls	r3, r3, #4
    34be:	1a9b      	subs	r3, r3, r2
    34c0:	009b      	lsls	r3, r3, #2
    34c2:	1aca      	subs	r2, r1, r3
    34c4:	b2d3      	uxtb	r3, r2
    34c6:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    34ca:	b2d9      	uxtb	r1, r3
    34cc:	687a      	ldr	r2, [r7, #4]
    34ce:	7813      	ldrb	r3, [r2, #0]
    34d0:	f361 0305 	bfi	r3, r1, #0, #6
    34d4:	7013      	strb	r3, [r2, #0]
    34d6:	bf00      	nop
    34d8:	3718      	adds	r7, #24
    34da:	46bd      	mov	sp, r7
    34dc:	bd80      	pop	{r7, pc}
    34de:	bf00      	nop
    34e0:	40002800 	.word	0x40002800
    34e4:	fe1ecc80 	.word	0xfe1ecc80
    34e8:	01e1337f 	.word	0x01e1337f
    34ec:	01e284ff 	.word	0x01e284ff
    34f0:	c22e4507 	.word	0xc22e4507
    34f4:	00015180 	.word	0x00015180
    34f8:	91a2b3c5 	.word	0x91a2b3c5
    34fc:	88888889 	.word	0x88888889

00003500 <set_date_time>:
    3500:	b580      	push	{r7, lr}
    3502:	b086      	sub	sp, #24
    3504:	af00      	add	r7, sp, #0
    3506:	6078      	str	r0, [r7, #4]
    3508:	2300      	movs	r3, #0
    350a:	613b      	str	r3, [r7, #16]
    350c:	687b      	ldr	r3, [r7, #4]
    350e:	891b      	ldrh	r3, [r3, #8]
    3510:	f240 72b1 	movw	r2, #1969	; 0x7b1
    3514:	4293      	cmp	r3, r2
    3516:	d803      	bhi.n	3520 <set_date_time+0x20>
    3518:	687b      	ldr	r3, [r7, #4]
    351a:	f240 72b2 	movw	r2, #1970	; 0x7b2
    351e:	811a      	strh	r2, [r3, #8]
    3520:	687b      	ldr	r3, [r7, #4]
    3522:	891b      	ldrh	r3, [r3, #8]
    3524:	f640 023a 	movw	r2, #2106	; 0x83a
    3528:	4293      	cmp	r3, r2
    352a:	d903      	bls.n	3534 <set_date_time+0x34>
    352c:	687b      	ldr	r3, [r7, #4]
    352e:	f640 023a 	movw	r2, #2106	; 0x83a
    3532:	811a      	strh	r2, [r3, #8]
    3534:	687b      	ldr	r3, [r7, #4]
    3536:	891b      	ldrh	r3, [r3, #8]
    3538:	4618      	mov	r0, r3
    353a:	f7ff feaf 	bl	329c <leap_year>
    353e:	60f8      	str	r0, [r7, #12]
    3540:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3544:	617b      	str	r3, [r7, #20]
    3546:	e013      	b.n	3570 <set_date_time+0x70>
    3548:	6978      	ldr	r0, [r7, #20]
    354a:	f7ff fea7 	bl	329c <leap_year>
    354e:	4603      	mov	r3, r0
    3550:	2b00      	cmp	r3, #0
    3552:	d006      	beq.n	3562 <set_date_time+0x62>
    3554:	693b      	ldr	r3, [r7, #16]
    3556:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    355a:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    355e:	613b      	str	r3, [r7, #16]
    3560:	e003      	b.n	356a <set_date_time+0x6a>
    3562:	693a      	ldr	r2, [r7, #16]
    3564:	4b42      	ldr	r3, [pc, #264]	; (3670 <set_date_time+0x170>)
    3566:	4413      	add	r3, r2
    3568:	613b      	str	r3, [r7, #16]
    356a:	697b      	ldr	r3, [r7, #20]
    356c:	3301      	adds	r3, #1
    356e:	617b      	str	r3, [r7, #20]
    3570:	687b      	ldr	r3, [r7, #4]
    3572:	891b      	ldrh	r3, [r3, #8]
    3574:	461a      	mov	r2, r3
    3576:	697b      	ldr	r3, [r7, #20]
    3578:	429a      	cmp	r2, r3
    357a:	d8e5      	bhi.n	3548 <set_date_time+0x48>
    357c:	2301      	movs	r3, #1
    357e:	617b      	str	r3, [r7, #20]
    3580:	e00a      	b.n	3598 <set_date_time+0x98>
    3582:	6979      	ldr	r1, [r7, #20]
    3584:	68f8      	ldr	r0, [r7, #12]
    3586:	f7ff feb5 	bl	32f4 <sec_per_month>
    358a:	4602      	mov	r2, r0
    358c:	693b      	ldr	r3, [r7, #16]
    358e:	4413      	add	r3, r2
    3590:	613b      	str	r3, [r7, #16]
    3592:	697b      	ldr	r3, [r7, #20]
    3594:	3301      	adds	r3, #1
    3596:	617b      	str	r3, [r7, #20]
    3598:	687b      	ldr	r3, [r7, #4]
    359a:	885b      	ldrh	r3, [r3, #2]
    359c:	f3c3 1383 	ubfx	r3, r3, #6, #4
    35a0:	b2db      	uxtb	r3, r3
    35a2:	461a      	mov	r2, r3
    35a4:	697b      	ldr	r3, [r7, #20]
    35a6:	429a      	cmp	r2, r3
    35a8:	d8eb      	bhi.n	3582 <set_date_time+0x82>
    35aa:	687b      	ldr	r3, [r7, #4]
    35ac:	789b      	ldrb	r3, [r3, #2]
    35ae:	f3c3 0344 	ubfx	r3, r3, #1, #5
    35b2:	b2db      	uxtb	r3, r3
    35b4:	3b01      	subs	r3, #1
    35b6:	4a2f      	ldr	r2, [pc, #188]	; (3674 <set_date_time+0x174>)
    35b8:	fb02 f303 	mul.w	r3, r2, r3
    35bc:	461a      	mov	r2, r3
    35be:	693b      	ldr	r3, [r7, #16]
    35c0:	4413      	add	r3, r2
    35c2:	613b      	str	r3, [r7, #16]
    35c4:	687b      	ldr	r3, [r7, #4]
    35c6:	681b      	ldr	r3, [r3, #0]
    35c8:	f3c3 3304 	ubfx	r3, r3, #12, #5
    35cc:	b2db      	uxtb	r3, r3
    35ce:	461a      	mov	r2, r3
    35d0:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    35d4:	fb03 f302 	mul.w	r3, r3, r2
    35d8:	461a      	mov	r2, r3
    35da:	693b      	ldr	r3, [r7, #16]
    35dc:	4413      	add	r3, r2
    35de:	613b      	str	r3, [r7, #16]
    35e0:	687b      	ldr	r3, [r7, #4]
    35e2:	881b      	ldrh	r3, [r3, #0]
    35e4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    35e8:	b2db      	uxtb	r3, r3
    35ea:	461a      	mov	r2, r3
    35ec:	4613      	mov	r3, r2
    35ee:	011b      	lsls	r3, r3, #4
    35f0:	1a9b      	subs	r3, r3, r2
    35f2:	009b      	lsls	r3, r3, #2
    35f4:	461a      	mov	r2, r3
    35f6:	693b      	ldr	r3, [r7, #16]
    35f8:	4413      	add	r3, r2
    35fa:	613b      	str	r3, [r7, #16]
    35fc:	687b      	ldr	r3, [r7, #4]
    35fe:	781b      	ldrb	r3, [r3, #0]
    3600:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3604:	b2db      	uxtb	r3, r3
    3606:	461a      	mov	r2, r3
    3608:	693b      	ldr	r3, [r7, #16]
    360a:	4413      	add	r3, r2
    360c:	613b      	str	r3, [r7, #16]
    360e:	4a1a      	ldr	r2, [pc, #104]	; (3678 <set_date_time+0x178>)
    3610:	4b19      	ldr	r3, [pc, #100]	; (3678 <set_date_time+0x178>)
    3612:	69db      	ldr	r3, [r3, #28]
    3614:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3618:	61d3      	str	r3, [r2, #28]
    361a:	4a18      	ldr	r2, [pc, #96]	; (367c <set_date_time+0x17c>)
    361c:	4b17      	ldr	r3, [pc, #92]	; (367c <set_date_time+0x17c>)
    361e:	681b      	ldr	r3, [r3, #0]
    3620:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3624:	6013      	str	r3, [r2, #0]
    3626:	4a16      	ldr	r2, [pc, #88]	; (3680 <set_date_time+0x180>)
    3628:	4b15      	ldr	r3, [pc, #84]	; (3680 <set_date_time+0x180>)
    362a:	685b      	ldr	r3, [r3, #4]
    362c:	f043 0310 	orr.w	r3, r3, #16
    3630:	6053      	str	r3, [r2, #4]
    3632:	4a13      	ldr	r2, [pc, #76]	; (3680 <set_date_time+0x180>)
    3634:	693b      	ldr	r3, [r7, #16]
    3636:	0c1b      	lsrs	r3, r3, #16
    3638:	6193      	str	r3, [r2, #24]
    363a:	4a11      	ldr	r2, [pc, #68]	; (3680 <set_date_time+0x180>)
    363c:	693b      	ldr	r3, [r7, #16]
    363e:	b29b      	uxth	r3, r3
    3640:	61d3      	str	r3, [r2, #28]
    3642:	4a0f      	ldr	r2, [pc, #60]	; (3680 <set_date_time+0x180>)
    3644:	4b0e      	ldr	r3, [pc, #56]	; (3680 <set_date_time+0x180>)
    3646:	685b      	ldr	r3, [r3, #4]
    3648:	f023 0310 	bic.w	r3, r3, #16
    364c:	6053      	str	r3, [r2, #4]
    364e:	bf00      	nop
    3650:	4b0b      	ldr	r3, [pc, #44]	; (3680 <set_date_time+0x180>)
    3652:	685b      	ldr	r3, [r3, #4]
    3654:	f003 0320 	and.w	r3, r3, #32
    3658:	2b00      	cmp	r3, #0
    365a:	d0f9      	beq.n	3650 <set_date_time+0x150>
    365c:	4a07      	ldr	r2, [pc, #28]	; (367c <set_date_time+0x17c>)
    365e:	4b07      	ldr	r3, [pc, #28]	; (367c <set_date_time+0x17c>)
    3660:	681b      	ldr	r3, [r3, #0]
    3662:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3666:	6013      	str	r3, [r2, #0]
    3668:	bf00      	nop
    366a:	3718      	adds	r7, #24
    366c:	46bd      	mov	sp, r7
    366e:	bd80      	pop	{r7, pc}
    3670:	01e13380 	.word	0x01e13380
    3674:	00015180 	.word	0x00015180
    3678:	40021000 	.word	0x40021000
    367c:	40007000 	.word	0x40007000
    3680:	40002800 	.word	0x40002800

00003684 <rtc_init>:
    3684:	b580      	push	{r7, lr}
    3686:	b082      	sub	sp, #8
    3688:	af00      	add	r7, sp, #0
    368a:	6078      	str	r0, [r7, #4]
    368c:	6039      	str	r1, [r7, #0]
    368e:	4b4a      	ldr	r3, [pc, #296]	; (37b8 <rtc_init+0x134>)
    3690:	685b      	ldr	r3, [r3, #4]
    3692:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3696:	4293      	cmp	r3, r2
    3698:	f000 8082 	beq.w	37a0 <rtc_init+0x11c>
    369c:	4a47      	ldr	r2, [pc, #284]	; (37bc <rtc_init+0x138>)
    369e:	4b47      	ldr	r3, [pc, #284]	; (37bc <rtc_init+0x138>)
    36a0:	69db      	ldr	r3, [r3, #28]
    36a2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    36a6:	61d3      	str	r3, [r2, #28]
    36a8:	4a45      	ldr	r2, [pc, #276]	; (37c0 <rtc_init+0x13c>)
    36aa:	4b45      	ldr	r3, [pc, #276]	; (37c0 <rtc_init+0x13c>)
    36ac:	681b      	ldr	r3, [r3, #0]
    36ae:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    36b2:	6013      	str	r3, [r2, #0]
    36b4:	4a41      	ldr	r2, [pc, #260]	; (37bc <rtc_init+0x138>)
    36b6:	4b41      	ldr	r3, [pc, #260]	; (37bc <rtc_init+0x138>)
    36b8:	6a1b      	ldr	r3, [r3, #32]
    36ba:	f043 0301 	orr.w	r3, r3, #1
    36be:	6213      	str	r3, [r2, #32]
    36c0:	bf00      	nop
    36c2:	4b3e      	ldr	r3, [pc, #248]	; (37bc <rtc_init+0x138>)
    36c4:	6a1b      	ldr	r3, [r3, #32]
    36c6:	f003 0302 	and.w	r3, r3, #2
    36ca:	2b00      	cmp	r3, #0
    36cc:	d0f9      	beq.n	36c2 <rtc_init+0x3e>
    36ce:	4a3b      	ldr	r2, [pc, #236]	; (37bc <rtc_init+0x138>)
    36d0:	4b3a      	ldr	r3, [pc, #232]	; (37bc <rtc_init+0x138>)
    36d2:	6a1b      	ldr	r3, [r3, #32]
    36d4:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    36d8:	6213      	str	r3, [r2, #32]
    36da:	bf00      	nop
    36dc:	4b39      	ldr	r3, [pc, #228]	; (37c4 <rtc_init+0x140>)
    36de:	685b      	ldr	r3, [r3, #4]
    36e0:	f003 0308 	and.w	r3, r3, #8
    36e4:	2b00      	cmp	r3, #0
    36e6:	d0f9      	beq.n	36dc <rtc_init+0x58>
    36e8:	bf00      	nop
    36ea:	4b36      	ldr	r3, [pc, #216]	; (37c4 <rtc_init+0x140>)
    36ec:	685b      	ldr	r3, [r3, #4]
    36ee:	f003 0320 	and.w	r3, r3, #32
    36f2:	2b00      	cmp	r3, #0
    36f4:	d0f9      	beq.n	36ea <rtc_init+0x66>
    36f6:	4a33      	ldr	r2, [pc, #204]	; (37c4 <rtc_init+0x140>)
    36f8:	4b32      	ldr	r3, [pc, #200]	; (37c4 <rtc_init+0x140>)
    36fa:	685b      	ldr	r3, [r3, #4]
    36fc:	f043 0310 	orr.w	r3, r3, #16
    3700:	6053      	str	r3, [r2, #4]
    3702:	bf00      	nop
    3704:	4b2f      	ldr	r3, [pc, #188]	; (37c4 <rtc_init+0x140>)
    3706:	685b      	ldr	r3, [r3, #4]
    3708:	f003 0320 	and.w	r3, r3, #32
    370c:	2b00      	cmp	r3, #0
    370e:	d0f9      	beq.n	3704 <rtc_init+0x80>
    3710:	492c      	ldr	r1, [pc, #176]	; (37c4 <rtc_init+0x140>)
    3712:	4b2c      	ldr	r3, [pc, #176]	; (37c4 <rtc_init+0x140>)
    3714:	681a      	ldr	r2, [r3, #0]
    3716:	683b      	ldr	r3, [r7, #0]
    3718:	4313      	orrs	r3, r2
    371a:	600b      	str	r3, [r1, #0]
    371c:	bf00      	nop
    371e:	4b29      	ldr	r3, [pc, #164]	; (37c4 <rtc_init+0x140>)
    3720:	685b      	ldr	r3, [r3, #4]
    3722:	f003 0320 	and.w	r3, r3, #32
    3726:	2b00      	cmp	r3, #0
    3728:	d0f9      	beq.n	371e <rtc_init+0x9a>
    372a:	4a26      	ldr	r2, [pc, #152]	; (37c4 <rtc_init+0x140>)
    372c:	687b      	ldr	r3, [r7, #4]
    372e:	03db      	lsls	r3, r3, #15
    3730:	4925      	ldr	r1, [pc, #148]	; (37c8 <rtc_init+0x144>)
    3732:	fba1 1303 	umull	r1, r3, r1, r3
    3736:	099b      	lsrs	r3, r3, #6
    3738:	3b01      	subs	r3, #1
    373a:	b29b      	uxth	r3, r3
    373c:	60d3      	str	r3, [r2, #12]
    373e:	bf00      	nop
    3740:	4b20      	ldr	r3, [pc, #128]	; (37c4 <rtc_init+0x140>)
    3742:	685b      	ldr	r3, [r3, #4]
    3744:	f003 0320 	and.w	r3, r3, #32
    3748:	2b00      	cmp	r3, #0
    374a:	d0f9      	beq.n	3740 <rtc_init+0xbc>
    374c:	4a1d      	ldr	r2, [pc, #116]	; (37c4 <rtc_init+0x140>)
    374e:	687b      	ldr	r3, [r7, #4]
    3750:	03db      	lsls	r3, r3, #15
    3752:	491d      	ldr	r1, [pc, #116]	; (37c8 <rtc_init+0x144>)
    3754:	fba1 1303 	umull	r1, r3, r1, r3
    3758:	099b      	lsrs	r3, r3, #6
    375a:	3b01      	subs	r3, #1
    375c:	0c1b      	lsrs	r3, r3, #16
    375e:	f003 030f 	and.w	r3, r3, #15
    3762:	6093      	str	r3, [r2, #8]
    3764:	bf00      	nop
    3766:	4b17      	ldr	r3, [pc, #92]	; (37c4 <rtc_init+0x140>)
    3768:	685b      	ldr	r3, [r3, #4]
    376a:	f003 0320 	and.w	r3, r3, #32
    376e:	2b00      	cmp	r3, #0
    3770:	d0f9      	beq.n	3766 <rtc_init+0xe2>
    3772:	4b11      	ldr	r3, [pc, #68]	; (37b8 <rtc_init+0x134>)
    3774:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3778:	605a      	str	r2, [r3, #4]
    377a:	4a12      	ldr	r2, [pc, #72]	; (37c4 <rtc_init+0x140>)
    377c:	4b11      	ldr	r3, [pc, #68]	; (37c4 <rtc_init+0x140>)
    377e:	685b      	ldr	r3, [r3, #4]
    3780:	f023 0310 	bic.w	r3, r3, #16
    3784:	6053      	str	r3, [r2, #4]
    3786:	bf00      	nop
    3788:	4b0e      	ldr	r3, [pc, #56]	; (37c4 <rtc_init+0x140>)
    378a:	685b      	ldr	r3, [r3, #4]
    378c:	f003 0320 	and.w	r3, r3, #32
    3790:	2b00      	cmp	r3, #0
    3792:	d0f9      	beq.n	3788 <rtc_init+0x104>
    3794:	4a0a      	ldr	r2, [pc, #40]	; (37c0 <rtc_init+0x13c>)
    3796:	4b0a      	ldr	r3, [pc, #40]	; (37c0 <rtc_init+0x13c>)
    3798:	681b      	ldr	r3, [r3, #0]
    379a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    379e:	6013      	str	r3, [r2, #0]
    37a0:	210f      	movs	r1, #15
    37a2:	2003      	movs	r0, #3
    37a4:	f7ff fd4a 	bl	323c <set_int_priority>
    37a8:	2003      	movs	r0, #3
    37aa:	f7ff fc8d 	bl	30c8 <enable_interrupt>
    37ae:	bf00      	nop
    37b0:	3708      	adds	r7, #8
    37b2:	46bd      	mov	sp, r7
    37b4:	bd80      	pop	{r7, pc}
    37b6:	bf00      	nop
    37b8:	40006c00 	.word	0x40006c00
    37bc:	40021000 	.word	0x40021000
    37c0:	40007000 	.word	0x40007000
    37c4:	40002800 	.word	0x40002800
    37c8:	10624dd3 	.word	0x10624dd3

000037cc <reset_backup_domain>:
    37cc:	b480      	push	{r7}
    37ce:	af00      	add	r7, sp, #0
    37d0:	4a0a      	ldr	r2, [pc, #40]	; (37fc <reset_backup_domain+0x30>)
    37d2:	4b0a      	ldr	r3, [pc, #40]	; (37fc <reset_backup_domain+0x30>)
    37d4:	69db      	ldr	r3, [r3, #28]
    37d6:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    37da:	61d3      	str	r3, [r2, #28]
    37dc:	4a07      	ldr	r2, [pc, #28]	; (37fc <reset_backup_domain+0x30>)
    37de:	4b07      	ldr	r3, [pc, #28]	; (37fc <reset_backup_domain+0x30>)
    37e0:	6a1b      	ldr	r3, [r3, #32]
    37e2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    37e6:	6213      	str	r3, [r2, #32]
    37e8:	4a04      	ldr	r2, [pc, #16]	; (37fc <reset_backup_domain+0x30>)
    37ea:	4b04      	ldr	r3, [pc, #16]	; (37fc <reset_backup_domain+0x30>)
    37ec:	6a1b      	ldr	r3, [r3, #32]
    37ee:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    37f2:	6213      	str	r3, [r2, #32]
    37f4:	bf00      	nop
    37f6:	46bd      	mov	sp, r7
    37f8:	bc80      	pop	{r7}
    37fa:	4770      	bx	lr
    37fc:	40021000 	.word	0x40021000

00003800 <rtc_clock_trim>:
    3800:	b480      	push	{r7}
    3802:	b083      	sub	sp, #12
    3804:	af00      	add	r7, sp, #0
    3806:	6078      	str	r0, [r7, #4]
    3808:	4a34      	ldr	r2, [pc, #208]	; (38dc <rtc_clock_trim+0xdc>)
    380a:	4b34      	ldr	r3, [pc, #208]	; (38dc <rtc_clock_trim+0xdc>)
    380c:	69db      	ldr	r3, [r3, #28]
    380e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3812:	61d3      	str	r3, [r2, #28]
    3814:	bf00      	nop
    3816:	4b32      	ldr	r3, [pc, #200]	; (38e0 <rtc_clock_trim+0xe0>)
    3818:	685b      	ldr	r3, [r3, #4]
    381a:	f003 0308 	and.w	r3, r3, #8
    381e:	2b00      	cmp	r3, #0
    3820:	d0f9      	beq.n	3816 <rtc_clock_trim+0x16>
    3822:	4a30      	ldr	r2, [pc, #192]	; (38e4 <rtc_clock_trim+0xe4>)
    3824:	4b2f      	ldr	r3, [pc, #188]	; (38e4 <rtc_clock_trim+0xe4>)
    3826:	681b      	ldr	r3, [r3, #0]
    3828:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    382c:	6013      	str	r3, [r2, #0]
    382e:	4a2c      	ldr	r2, [pc, #176]	; (38e0 <rtc_clock_trim+0xe0>)
    3830:	4b2b      	ldr	r3, [pc, #172]	; (38e0 <rtc_clock_trim+0xe0>)
    3832:	685b      	ldr	r3, [r3, #4]
    3834:	f043 0310 	orr.w	r3, r3, #16
    3838:	6053      	str	r3, [r2, #4]
    383a:	4a2b      	ldr	r2, [pc, #172]	; (38e8 <rtc_clock_trim+0xe8>)
    383c:	4b2a      	ldr	r3, [pc, #168]	; (38e8 <rtc_clock_trim+0xe8>)
    383e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3840:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3844:	62d3      	str	r3, [r2, #44]	; 0x2c
    3846:	687b      	ldr	r3, [r7, #4]
    3848:	2b00      	cmp	r3, #0
    384a:	d10a      	bne.n	3862 <rtc_clock_trim+0x62>
    384c:	4b26      	ldr	r3, [pc, #152]	; (38e8 <rtc_clock_trim+0xe8>)
    384e:	2200      	movs	r2, #0
    3850:	62da      	str	r2, [r3, #44]	; 0x2c
    3852:	4b23      	ldr	r3, [pc, #140]	; (38e0 <rtc_clock_trim+0xe0>)
    3854:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3858:	60da      	str	r2, [r3, #12]
    385a:	4b21      	ldr	r3, [pc, #132]	; (38e0 <rtc_clock_trim+0xe0>)
    385c:	2200      	movs	r2, #0
    385e:	609a      	str	r2, [r3, #8]
    3860:	e023      	b.n	38aa <rtc_clock_trim+0xaa>
    3862:	687b      	ldr	r3, [r7, #4]
    3864:	2b00      	cmp	r3, #0
    3866:	dd0a      	ble.n	387e <rtc_clock_trim+0x7e>
    3868:	687b      	ldr	r3, [r7, #4]
    386a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    386e:	607b      	str	r3, [r7, #4]
    3870:	491d      	ldr	r1, [pc, #116]	; (38e8 <rtc_clock_trim+0xe8>)
    3872:	4b1d      	ldr	r3, [pc, #116]	; (38e8 <rtc_clock_trim+0xe8>)
    3874:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3876:	687b      	ldr	r3, [r7, #4]
    3878:	4313      	orrs	r3, r2
    387a:	62cb      	str	r3, [r1, #44]	; 0x2c
    387c:	e015      	b.n	38aa <rtc_clock_trim+0xaa>
    387e:	687b      	ldr	r3, [r7, #4]
    3880:	425b      	negs	r3, r3
    3882:	607b      	str	r3, [r7, #4]
    3884:	687b      	ldr	r3, [r7, #4]
    3886:	2b7f      	cmp	r3, #127	; 0x7f
    3888:	dd01      	ble.n	388e <rtc_clock_trim+0x8e>
    388a:	237f      	movs	r3, #127	; 0x7f
    388c:	607b      	str	r3, [r7, #4]
    388e:	4b16      	ldr	r3, [pc, #88]	; (38e8 <rtc_clock_trim+0xe8>)
    3890:	2200      	movs	r2, #0
    3892:	62da      	str	r2, [r3, #44]	; 0x2c
    3894:	4a12      	ldr	r2, [pc, #72]	; (38e0 <rtc_clock_trim+0xe0>)
    3896:	687b      	ldr	r3, [r7, #4]
    3898:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    389c:	33ff      	adds	r3, #255	; 0xff
    389e:	f3c3 030e 	ubfx	r3, r3, #0, #15
    38a2:	60d3      	str	r3, [r2, #12]
    38a4:	4b0e      	ldr	r3, [pc, #56]	; (38e0 <rtc_clock_trim+0xe0>)
    38a6:	2200      	movs	r2, #0
    38a8:	609a      	str	r2, [r3, #8]
    38aa:	4a0d      	ldr	r2, [pc, #52]	; (38e0 <rtc_clock_trim+0xe0>)
    38ac:	4b0c      	ldr	r3, [pc, #48]	; (38e0 <rtc_clock_trim+0xe0>)
    38ae:	685b      	ldr	r3, [r3, #4]
    38b0:	f023 0310 	bic.w	r3, r3, #16
    38b4:	6053      	str	r3, [r2, #4]
    38b6:	bf00      	nop
    38b8:	4b09      	ldr	r3, [pc, #36]	; (38e0 <rtc_clock_trim+0xe0>)
    38ba:	685b      	ldr	r3, [r3, #4]
    38bc:	f003 0320 	and.w	r3, r3, #32
    38c0:	2b00      	cmp	r3, #0
    38c2:	d0f9      	beq.n	38b8 <rtc_clock_trim+0xb8>
    38c4:	4a07      	ldr	r2, [pc, #28]	; (38e4 <rtc_clock_trim+0xe4>)
    38c6:	4b07      	ldr	r3, [pc, #28]	; (38e4 <rtc_clock_trim+0xe4>)
    38c8:	681b      	ldr	r3, [r3, #0]
    38ca:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    38ce:	6013      	str	r3, [r2, #0]
    38d0:	bf00      	nop
    38d2:	370c      	adds	r7, #12
    38d4:	46bd      	mov	sp, r7
    38d6:	bc80      	pop	{r7}
    38d8:	4770      	bx	lr
    38da:	bf00      	nop
    38dc:	40021000 	.word	0x40021000
    38e0:	40002800 	.word	0x40002800
    38e4:	40007000 	.word	0x40007000
    38e8:	40006c00 	.word	0x40006c00

000038ec <rtc_set_alarm>:
    38ec:	b480      	push	{r7}
    38ee:	b083      	sub	sp, #12
    38f0:	af00      	add	r7, sp, #0
    38f2:	6078      	str	r0, [r7, #4]
    38f4:	bf00      	nop
    38f6:	370c      	adds	r7, #12
    38f8:	46bd      	mov	sp, r7
    38fa:	bc80      	pop	{r7}
    38fc:	4770      	bx	lr

000038fe <str_to_date>:
    38fe:	b580      	push	{r7, lr}
    3900:	b084      	sub	sp, #16
    3902:	af00      	add	r7, sp, #0
    3904:	6078      	str	r0, [r7, #4]
    3906:	6039      	str	r1, [r7, #0]
    3908:	2300      	movs	r3, #0
    390a:	60fb      	str	r3, [r7, #12]
    390c:	2300      	movs	r3, #0
    390e:	60bb      	str	r3, [r7, #8]
    3910:	e00f      	b.n	3932 <str_to_date+0x34>
    3912:	68ba      	ldr	r2, [r7, #8]
    3914:	4613      	mov	r3, r2
    3916:	009b      	lsls	r3, r3, #2
    3918:	4413      	add	r3, r2
    391a:	005b      	lsls	r3, r3, #1
    391c:	4619      	mov	r1, r3
    391e:	68fb      	ldr	r3, [r7, #12]
    3920:	1c5a      	adds	r2, r3, #1
    3922:	60fa      	str	r2, [r7, #12]
    3924:	461a      	mov	r2, r3
    3926:	687b      	ldr	r3, [r7, #4]
    3928:	4413      	add	r3, r2
    392a:	781b      	ldrb	r3, [r3, #0]
    392c:	440b      	add	r3, r1
    392e:	3b30      	subs	r3, #48	; 0x30
    3930:	60bb      	str	r3, [r7, #8]
    3932:	68fb      	ldr	r3, [r7, #12]
    3934:	687a      	ldr	r2, [r7, #4]
    3936:	4413      	add	r3, r2
    3938:	781b      	ldrb	r3, [r3, #0]
    393a:	4618      	mov	r0, r3
    393c:	f7fe f8d3 	bl	1ae6 <digit>
    3940:	4603      	mov	r3, r0
    3942:	2b00      	cmp	r3, #0
    3944:	d1e5      	bne.n	3912 <str_to_date+0x14>
    3946:	68fb      	ldr	r3, [r7, #12]
    3948:	2b03      	cmp	r3, #3
    394a:	dd05      	ble.n	3958 <str_to_date+0x5a>
    394c:	68fb      	ldr	r3, [r7, #12]
    394e:	687a      	ldr	r2, [r7, #4]
    3950:	4413      	add	r3, r2
    3952:	781b      	ldrb	r3, [r3, #0]
    3954:	2b2f      	cmp	r3, #47	; 0x2f
    3956:	d001      	beq.n	395c <str_to_date+0x5e>
    3958:	2300      	movs	r3, #0
    395a:	e068      	b.n	3a2e <str_to_date+0x130>
    395c:	68bb      	ldr	r3, [r7, #8]
    395e:	b29a      	uxth	r2, r3
    3960:	683b      	ldr	r3, [r7, #0]
    3962:	811a      	strh	r2, [r3, #8]
    3964:	68fb      	ldr	r3, [r7, #12]
    3966:	3301      	adds	r3, #1
    3968:	60fb      	str	r3, [r7, #12]
    396a:	2300      	movs	r3, #0
    396c:	60bb      	str	r3, [r7, #8]
    396e:	e00f      	b.n	3990 <str_to_date+0x92>
    3970:	68ba      	ldr	r2, [r7, #8]
    3972:	4613      	mov	r3, r2
    3974:	009b      	lsls	r3, r3, #2
    3976:	4413      	add	r3, r2
    3978:	005b      	lsls	r3, r3, #1
    397a:	4619      	mov	r1, r3
    397c:	68fb      	ldr	r3, [r7, #12]
    397e:	1c5a      	adds	r2, r3, #1
    3980:	60fa      	str	r2, [r7, #12]
    3982:	461a      	mov	r2, r3
    3984:	687b      	ldr	r3, [r7, #4]
    3986:	4413      	add	r3, r2
    3988:	781b      	ldrb	r3, [r3, #0]
    398a:	440b      	add	r3, r1
    398c:	3b30      	subs	r3, #48	; 0x30
    398e:	60bb      	str	r3, [r7, #8]
    3990:	68fb      	ldr	r3, [r7, #12]
    3992:	687a      	ldr	r2, [r7, #4]
    3994:	4413      	add	r3, r2
    3996:	781b      	ldrb	r3, [r3, #0]
    3998:	4618      	mov	r0, r3
    399a:	f7fe f8a4 	bl	1ae6 <digit>
    399e:	4603      	mov	r3, r0
    39a0:	2b00      	cmp	r3, #0
    39a2:	d1e5      	bne.n	3970 <str_to_date+0x72>
    39a4:	68fb      	ldr	r3, [r7, #12]
    39a6:	2b06      	cmp	r3, #6
    39a8:	dd05      	ble.n	39b6 <str_to_date+0xb8>
    39aa:	68fb      	ldr	r3, [r7, #12]
    39ac:	687a      	ldr	r2, [r7, #4]
    39ae:	4413      	add	r3, r2
    39b0:	781b      	ldrb	r3, [r3, #0]
    39b2:	2b2f      	cmp	r3, #47	; 0x2f
    39b4:	d001      	beq.n	39ba <str_to_date+0xbc>
    39b6:	2300      	movs	r3, #0
    39b8:	e039      	b.n	3a2e <str_to_date+0x130>
    39ba:	68bb      	ldr	r3, [r7, #8]
    39bc:	b2db      	uxtb	r3, r3
    39be:	f003 030f 	and.w	r3, r3, #15
    39c2:	b2d9      	uxtb	r1, r3
    39c4:	683a      	ldr	r2, [r7, #0]
    39c6:	8853      	ldrh	r3, [r2, #2]
    39c8:	f361 1389 	bfi	r3, r1, #6, #4
    39cc:	8053      	strh	r3, [r2, #2]
    39ce:	2300      	movs	r3, #0
    39d0:	60bb      	str	r3, [r7, #8]
    39d2:	68fb      	ldr	r3, [r7, #12]
    39d4:	3301      	adds	r3, #1
    39d6:	60fb      	str	r3, [r7, #12]
    39d8:	e00f      	b.n	39fa <str_to_date+0xfc>
    39da:	68ba      	ldr	r2, [r7, #8]
    39dc:	4613      	mov	r3, r2
    39de:	009b      	lsls	r3, r3, #2
    39e0:	4413      	add	r3, r2
    39e2:	005b      	lsls	r3, r3, #1
    39e4:	4619      	mov	r1, r3
    39e6:	68fb      	ldr	r3, [r7, #12]
    39e8:	1c5a      	adds	r2, r3, #1
    39ea:	60fa      	str	r2, [r7, #12]
    39ec:	461a      	mov	r2, r3
    39ee:	687b      	ldr	r3, [r7, #4]
    39f0:	4413      	add	r3, r2
    39f2:	781b      	ldrb	r3, [r3, #0]
    39f4:	440b      	add	r3, r1
    39f6:	3b30      	subs	r3, #48	; 0x30
    39f8:	60bb      	str	r3, [r7, #8]
    39fa:	68fb      	ldr	r3, [r7, #12]
    39fc:	687a      	ldr	r2, [r7, #4]
    39fe:	4413      	add	r3, r2
    3a00:	781b      	ldrb	r3, [r3, #0]
    3a02:	4618      	mov	r0, r3
    3a04:	f7fe f86f 	bl	1ae6 <digit>
    3a08:	4603      	mov	r3, r0
    3a0a:	2b00      	cmp	r3, #0
    3a0c:	d1e5      	bne.n	39da <str_to_date+0xdc>
    3a0e:	68fb      	ldr	r3, [r7, #12]
    3a10:	2b09      	cmp	r3, #9
    3a12:	dc01      	bgt.n	3a18 <str_to_date+0x11a>
    3a14:	2300      	movs	r3, #0
    3a16:	e00a      	b.n	3a2e <str_to_date+0x130>
    3a18:	68bb      	ldr	r3, [r7, #8]
    3a1a:	b2db      	uxtb	r3, r3
    3a1c:	f003 031f 	and.w	r3, r3, #31
    3a20:	b2d9      	uxtb	r1, r3
    3a22:	683a      	ldr	r2, [r7, #0]
    3a24:	7893      	ldrb	r3, [r2, #2]
    3a26:	f361 0345 	bfi	r3, r1, #1, #5
    3a2a:	7093      	strb	r3, [r2, #2]
    3a2c:	2301      	movs	r3, #1
    3a2e:	4618      	mov	r0, r3
    3a30:	3710      	adds	r7, #16
    3a32:	46bd      	mov	sp, r7
    3a34:	bd80      	pop	{r7, pc}

00003a36 <str_to_time>:
    3a36:	b580      	push	{r7, lr}
    3a38:	b084      	sub	sp, #16
    3a3a:	af00      	add	r7, sp, #0
    3a3c:	6078      	str	r0, [r7, #4]
    3a3e:	6039      	str	r1, [r7, #0]
    3a40:	2300      	movs	r3, #0
    3a42:	60fb      	str	r3, [r7, #12]
    3a44:	2300      	movs	r3, #0
    3a46:	72fb      	strb	r3, [r7, #11]
    3a48:	e010      	b.n	3a6c <str_to_time+0x36>
    3a4a:	7afb      	ldrb	r3, [r7, #11]
    3a4c:	461a      	mov	r2, r3
    3a4e:	0092      	lsls	r2, r2, #2
    3a50:	4413      	add	r3, r2
    3a52:	005b      	lsls	r3, r3, #1
    3a54:	b2da      	uxtb	r2, r3
    3a56:	68fb      	ldr	r3, [r7, #12]
    3a58:	1c59      	adds	r1, r3, #1
    3a5a:	60f9      	str	r1, [r7, #12]
    3a5c:	4619      	mov	r1, r3
    3a5e:	687b      	ldr	r3, [r7, #4]
    3a60:	440b      	add	r3, r1
    3a62:	781b      	ldrb	r3, [r3, #0]
    3a64:	4413      	add	r3, r2
    3a66:	b2db      	uxtb	r3, r3
    3a68:	3b30      	subs	r3, #48	; 0x30
    3a6a:	72fb      	strb	r3, [r7, #11]
    3a6c:	68fb      	ldr	r3, [r7, #12]
    3a6e:	687a      	ldr	r2, [r7, #4]
    3a70:	4413      	add	r3, r2
    3a72:	781b      	ldrb	r3, [r3, #0]
    3a74:	4618      	mov	r0, r3
    3a76:	f7fe f836 	bl	1ae6 <digit>
    3a7a:	4603      	mov	r3, r0
    3a7c:	2b00      	cmp	r3, #0
    3a7e:	d1e4      	bne.n	3a4a <str_to_time+0x14>
    3a80:	7afb      	ldrb	r3, [r7, #11]
    3a82:	2b17      	cmp	r3, #23
    3a84:	d805      	bhi.n	3a92 <str_to_time+0x5c>
    3a86:	68fb      	ldr	r3, [r7, #12]
    3a88:	687a      	ldr	r2, [r7, #4]
    3a8a:	4413      	add	r3, r2
    3a8c:	781b      	ldrb	r3, [r3, #0]
    3a8e:	2b3a      	cmp	r3, #58	; 0x3a
    3a90:	d001      	beq.n	3a96 <str_to_time+0x60>
    3a92:	2300      	movs	r3, #0
    3a94:	e06d      	b.n	3b72 <str_to_time+0x13c>
    3a96:	7afb      	ldrb	r3, [r7, #11]
    3a98:	f003 031f 	and.w	r3, r3, #31
    3a9c:	b2d9      	uxtb	r1, r3
    3a9e:	683a      	ldr	r2, [r7, #0]
    3aa0:	6813      	ldr	r3, [r2, #0]
    3aa2:	f361 3310 	bfi	r3, r1, #12, #5
    3aa6:	6013      	str	r3, [r2, #0]
    3aa8:	68fb      	ldr	r3, [r7, #12]
    3aaa:	3301      	adds	r3, #1
    3aac:	60fb      	str	r3, [r7, #12]
    3aae:	2300      	movs	r3, #0
    3ab0:	72fb      	strb	r3, [r7, #11]
    3ab2:	e010      	b.n	3ad6 <str_to_time+0xa0>
    3ab4:	7afb      	ldrb	r3, [r7, #11]
    3ab6:	461a      	mov	r2, r3
    3ab8:	0092      	lsls	r2, r2, #2
    3aba:	4413      	add	r3, r2
    3abc:	005b      	lsls	r3, r3, #1
    3abe:	b2da      	uxtb	r2, r3
    3ac0:	68fb      	ldr	r3, [r7, #12]
    3ac2:	1c59      	adds	r1, r3, #1
    3ac4:	60f9      	str	r1, [r7, #12]
    3ac6:	4619      	mov	r1, r3
    3ac8:	687b      	ldr	r3, [r7, #4]
    3aca:	440b      	add	r3, r1
    3acc:	781b      	ldrb	r3, [r3, #0]
    3ace:	4413      	add	r3, r2
    3ad0:	b2db      	uxtb	r3, r3
    3ad2:	3b30      	subs	r3, #48	; 0x30
    3ad4:	72fb      	strb	r3, [r7, #11]
    3ad6:	68fb      	ldr	r3, [r7, #12]
    3ad8:	687a      	ldr	r2, [r7, #4]
    3ada:	4413      	add	r3, r2
    3adc:	781b      	ldrb	r3, [r3, #0]
    3ade:	4618      	mov	r0, r3
    3ae0:	f7fe f801 	bl	1ae6 <digit>
    3ae4:	4603      	mov	r3, r0
    3ae6:	2b00      	cmp	r3, #0
    3ae8:	d1e4      	bne.n	3ab4 <str_to_time+0x7e>
    3aea:	7afb      	ldrb	r3, [r7, #11]
    3aec:	2b3b      	cmp	r3, #59	; 0x3b
    3aee:	d805      	bhi.n	3afc <str_to_time+0xc6>
    3af0:	68fb      	ldr	r3, [r7, #12]
    3af2:	687a      	ldr	r2, [r7, #4]
    3af4:	4413      	add	r3, r2
    3af6:	781b      	ldrb	r3, [r3, #0]
    3af8:	2b3a      	cmp	r3, #58	; 0x3a
    3afa:	d001      	beq.n	3b00 <str_to_time+0xca>
    3afc:	2300      	movs	r3, #0
    3afe:	e038      	b.n	3b72 <str_to_time+0x13c>
    3b00:	7afb      	ldrb	r3, [r7, #11]
    3b02:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3b06:	b2d9      	uxtb	r1, r3
    3b08:	683a      	ldr	r2, [r7, #0]
    3b0a:	8813      	ldrh	r3, [r2, #0]
    3b0c:	f361 138b 	bfi	r3, r1, #6, #6
    3b10:	8013      	strh	r3, [r2, #0]
    3b12:	2300      	movs	r3, #0
    3b14:	72fb      	strb	r3, [r7, #11]
    3b16:	68fb      	ldr	r3, [r7, #12]
    3b18:	3301      	adds	r3, #1
    3b1a:	60fb      	str	r3, [r7, #12]
    3b1c:	e010      	b.n	3b40 <str_to_time+0x10a>
    3b1e:	7afb      	ldrb	r3, [r7, #11]
    3b20:	461a      	mov	r2, r3
    3b22:	0092      	lsls	r2, r2, #2
    3b24:	4413      	add	r3, r2
    3b26:	005b      	lsls	r3, r3, #1
    3b28:	b2da      	uxtb	r2, r3
    3b2a:	68fb      	ldr	r3, [r7, #12]
    3b2c:	1c59      	adds	r1, r3, #1
    3b2e:	60f9      	str	r1, [r7, #12]
    3b30:	4619      	mov	r1, r3
    3b32:	687b      	ldr	r3, [r7, #4]
    3b34:	440b      	add	r3, r1
    3b36:	781b      	ldrb	r3, [r3, #0]
    3b38:	4413      	add	r3, r2
    3b3a:	b2db      	uxtb	r3, r3
    3b3c:	3b30      	subs	r3, #48	; 0x30
    3b3e:	72fb      	strb	r3, [r7, #11]
    3b40:	68fb      	ldr	r3, [r7, #12]
    3b42:	687a      	ldr	r2, [r7, #4]
    3b44:	4413      	add	r3, r2
    3b46:	781b      	ldrb	r3, [r3, #0]
    3b48:	4618      	mov	r0, r3
    3b4a:	f7fd ffcc 	bl	1ae6 <digit>
    3b4e:	4603      	mov	r3, r0
    3b50:	2b00      	cmp	r3, #0
    3b52:	d1e4      	bne.n	3b1e <str_to_time+0xe8>
    3b54:	7afb      	ldrb	r3, [r7, #11]
    3b56:	2b3b      	cmp	r3, #59	; 0x3b
    3b58:	d901      	bls.n	3b5e <str_to_time+0x128>
    3b5a:	2300      	movs	r3, #0
    3b5c:	e009      	b.n	3b72 <str_to_time+0x13c>
    3b5e:	7afb      	ldrb	r3, [r7, #11]
    3b60:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3b64:	b2d9      	uxtb	r1, r3
    3b66:	683a      	ldr	r2, [r7, #0]
    3b68:	7813      	ldrb	r3, [r2, #0]
    3b6a:	f361 0305 	bfi	r3, r1, #0, #6
    3b6e:	7013      	strb	r3, [r2, #0]
    3b70:	2301      	movs	r3, #1
    3b72:	4618      	mov	r0, r3
    3b74:	3710      	adds	r7, #16
    3b76:	46bd      	mov	sp, r7
    3b78:	bd80      	pop	{r7, pc}

00003b7a <date_str>:
    3b7a:	b480      	push	{r7}
    3b7c:	b085      	sub	sp, #20
    3b7e:	af00      	add	r7, sp, #0
    3b80:	6078      	str	r0, [r7, #4]
    3b82:	6039      	str	r1, [r7, #0]
    3b84:	2300      	movs	r3, #0
    3b86:	60fb      	str	r3, [r7, #12]
    3b88:	687b      	ldr	r3, [r7, #4]
    3b8a:	891b      	ldrh	r3, [r3, #8]
    3b8c:	60bb      	str	r3, [r7, #8]
    3b8e:	68fb      	ldr	r3, [r7, #12]
    3b90:	1c5a      	adds	r2, r3, #1
    3b92:	60fa      	str	r2, [r7, #12]
    3b94:	461a      	mov	r2, r3
    3b96:	683b      	ldr	r3, [r7, #0]
    3b98:	4413      	add	r3, r2
    3b9a:	68ba      	ldr	r2, [r7, #8]
    3b9c:	495d      	ldr	r1, [pc, #372]	; (3d14 <date_str+0x19a>)
    3b9e:	fba1 1202 	umull	r1, r2, r1, r2
    3ba2:	0992      	lsrs	r2, r2, #6
    3ba4:	b2d2      	uxtb	r2, r2
    3ba6:	3230      	adds	r2, #48	; 0x30
    3ba8:	b2d2      	uxtb	r2, r2
    3baa:	701a      	strb	r2, [r3, #0]
    3bac:	68bb      	ldr	r3, [r7, #8]
    3bae:	4a59      	ldr	r2, [pc, #356]	; (3d14 <date_str+0x19a>)
    3bb0:	fba2 1203 	umull	r1, r2, r2, r3
    3bb4:	0992      	lsrs	r2, r2, #6
    3bb6:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3bba:	fb01 f202 	mul.w	r2, r1, r2
    3bbe:	1a9b      	subs	r3, r3, r2
    3bc0:	60bb      	str	r3, [r7, #8]
    3bc2:	68fb      	ldr	r3, [r7, #12]
    3bc4:	1c5a      	adds	r2, r3, #1
    3bc6:	60fa      	str	r2, [r7, #12]
    3bc8:	461a      	mov	r2, r3
    3bca:	683b      	ldr	r3, [r7, #0]
    3bcc:	4413      	add	r3, r2
    3bce:	68ba      	ldr	r2, [r7, #8]
    3bd0:	4951      	ldr	r1, [pc, #324]	; (3d18 <date_str+0x19e>)
    3bd2:	fba1 1202 	umull	r1, r2, r1, r2
    3bd6:	0952      	lsrs	r2, r2, #5
    3bd8:	b2d2      	uxtb	r2, r2
    3bda:	3230      	adds	r2, #48	; 0x30
    3bdc:	b2d2      	uxtb	r2, r2
    3bde:	701a      	strb	r2, [r3, #0]
    3be0:	68bb      	ldr	r3, [r7, #8]
    3be2:	4a4d      	ldr	r2, [pc, #308]	; (3d18 <date_str+0x19e>)
    3be4:	fba2 1203 	umull	r1, r2, r2, r3
    3be8:	0952      	lsrs	r2, r2, #5
    3bea:	2164      	movs	r1, #100	; 0x64
    3bec:	fb01 f202 	mul.w	r2, r1, r2
    3bf0:	1a9b      	subs	r3, r3, r2
    3bf2:	60bb      	str	r3, [r7, #8]
    3bf4:	68fb      	ldr	r3, [r7, #12]
    3bf6:	1c5a      	adds	r2, r3, #1
    3bf8:	60fa      	str	r2, [r7, #12]
    3bfa:	461a      	mov	r2, r3
    3bfc:	683b      	ldr	r3, [r7, #0]
    3bfe:	4413      	add	r3, r2
    3c00:	68ba      	ldr	r2, [r7, #8]
    3c02:	4946      	ldr	r1, [pc, #280]	; (3d1c <date_str+0x1a2>)
    3c04:	fba1 1202 	umull	r1, r2, r1, r2
    3c08:	08d2      	lsrs	r2, r2, #3
    3c0a:	b2d2      	uxtb	r2, r2
    3c0c:	3230      	adds	r2, #48	; 0x30
    3c0e:	b2d2      	uxtb	r2, r2
    3c10:	701a      	strb	r2, [r3, #0]
    3c12:	68fb      	ldr	r3, [r7, #12]
    3c14:	1c5a      	adds	r2, r3, #1
    3c16:	60fa      	str	r2, [r7, #12]
    3c18:	461a      	mov	r2, r3
    3c1a:	683b      	ldr	r3, [r7, #0]
    3c1c:	1898      	adds	r0, r3, r2
    3c1e:	68b9      	ldr	r1, [r7, #8]
    3c20:	4b3e      	ldr	r3, [pc, #248]	; (3d1c <date_str+0x1a2>)
    3c22:	fba3 2301 	umull	r2, r3, r3, r1
    3c26:	08da      	lsrs	r2, r3, #3
    3c28:	4613      	mov	r3, r2
    3c2a:	009b      	lsls	r3, r3, #2
    3c2c:	4413      	add	r3, r2
    3c2e:	005b      	lsls	r3, r3, #1
    3c30:	1aca      	subs	r2, r1, r3
    3c32:	b2d3      	uxtb	r3, r2
    3c34:	3330      	adds	r3, #48	; 0x30
    3c36:	b2db      	uxtb	r3, r3
    3c38:	7003      	strb	r3, [r0, #0]
    3c3a:	68fb      	ldr	r3, [r7, #12]
    3c3c:	1c5a      	adds	r2, r3, #1
    3c3e:	60fa      	str	r2, [r7, #12]
    3c40:	461a      	mov	r2, r3
    3c42:	683b      	ldr	r3, [r7, #0]
    3c44:	4413      	add	r3, r2
    3c46:	222f      	movs	r2, #47	; 0x2f
    3c48:	701a      	strb	r2, [r3, #0]
    3c4a:	687b      	ldr	r3, [r7, #4]
    3c4c:	885b      	ldrh	r3, [r3, #2]
    3c4e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3c52:	b2db      	uxtb	r3, r3
    3c54:	60bb      	str	r3, [r7, #8]
    3c56:	68fb      	ldr	r3, [r7, #12]
    3c58:	1c5a      	adds	r2, r3, #1
    3c5a:	60fa      	str	r2, [r7, #12]
    3c5c:	461a      	mov	r2, r3
    3c5e:	683b      	ldr	r3, [r7, #0]
    3c60:	4413      	add	r3, r2
    3c62:	68ba      	ldr	r2, [r7, #8]
    3c64:	492d      	ldr	r1, [pc, #180]	; (3d1c <date_str+0x1a2>)
    3c66:	fba1 1202 	umull	r1, r2, r1, r2
    3c6a:	08d2      	lsrs	r2, r2, #3
    3c6c:	b2d2      	uxtb	r2, r2
    3c6e:	3230      	adds	r2, #48	; 0x30
    3c70:	b2d2      	uxtb	r2, r2
    3c72:	701a      	strb	r2, [r3, #0]
    3c74:	68fb      	ldr	r3, [r7, #12]
    3c76:	1c5a      	adds	r2, r3, #1
    3c78:	60fa      	str	r2, [r7, #12]
    3c7a:	461a      	mov	r2, r3
    3c7c:	683b      	ldr	r3, [r7, #0]
    3c7e:	1898      	adds	r0, r3, r2
    3c80:	68b9      	ldr	r1, [r7, #8]
    3c82:	4b26      	ldr	r3, [pc, #152]	; (3d1c <date_str+0x1a2>)
    3c84:	fba3 2301 	umull	r2, r3, r3, r1
    3c88:	08da      	lsrs	r2, r3, #3
    3c8a:	4613      	mov	r3, r2
    3c8c:	009b      	lsls	r3, r3, #2
    3c8e:	4413      	add	r3, r2
    3c90:	005b      	lsls	r3, r3, #1
    3c92:	1aca      	subs	r2, r1, r3
    3c94:	b2d3      	uxtb	r3, r2
    3c96:	3330      	adds	r3, #48	; 0x30
    3c98:	b2db      	uxtb	r3, r3
    3c9a:	7003      	strb	r3, [r0, #0]
    3c9c:	68fb      	ldr	r3, [r7, #12]
    3c9e:	1c5a      	adds	r2, r3, #1
    3ca0:	60fa      	str	r2, [r7, #12]
    3ca2:	461a      	mov	r2, r3
    3ca4:	683b      	ldr	r3, [r7, #0]
    3ca6:	4413      	add	r3, r2
    3ca8:	222f      	movs	r2, #47	; 0x2f
    3caa:	701a      	strb	r2, [r3, #0]
    3cac:	687b      	ldr	r3, [r7, #4]
    3cae:	789b      	ldrb	r3, [r3, #2]
    3cb0:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3cb4:	b2db      	uxtb	r3, r3
    3cb6:	60bb      	str	r3, [r7, #8]
    3cb8:	68fb      	ldr	r3, [r7, #12]
    3cba:	1c5a      	adds	r2, r3, #1
    3cbc:	60fa      	str	r2, [r7, #12]
    3cbe:	461a      	mov	r2, r3
    3cc0:	683b      	ldr	r3, [r7, #0]
    3cc2:	4413      	add	r3, r2
    3cc4:	68ba      	ldr	r2, [r7, #8]
    3cc6:	4915      	ldr	r1, [pc, #84]	; (3d1c <date_str+0x1a2>)
    3cc8:	fba1 1202 	umull	r1, r2, r1, r2
    3ccc:	08d2      	lsrs	r2, r2, #3
    3cce:	b2d2      	uxtb	r2, r2
    3cd0:	3230      	adds	r2, #48	; 0x30
    3cd2:	b2d2      	uxtb	r2, r2
    3cd4:	701a      	strb	r2, [r3, #0]
    3cd6:	68fb      	ldr	r3, [r7, #12]
    3cd8:	1c5a      	adds	r2, r3, #1
    3cda:	60fa      	str	r2, [r7, #12]
    3cdc:	461a      	mov	r2, r3
    3cde:	683b      	ldr	r3, [r7, #0]
    3ce0:	1898      	adds	r0, r3, r2
    3ce2:	68b9      	ldr	r1, [r7, #8]
    3ce4:	4b0d      	ldr	r3, [pc, #52]	; (3d1c <date_str+0x1a2>)
    3ce6:	fba3 2301 	umull	r2, r3, r3, r1
    3cea:	08da      	lsrs	r2, r3, #3
    3cec:	4613      	mov	r3, r2
    3cee:	009b      	lsls	r3, r3, #2
    3cf0:	4413      	add	r3, r2
    3cf2:	005b      	lsls	r3, r3, #1
    3cf4:	1aca      	subs	r2, r1, r3
    3cf6:	b2d3      	uxtb	r3, r2
    3cf8:	3330      	adds	r3, #48	; 0x30
    3cfa:	b2db      	uxtb	r3, r3
    3cfc:	7003      	strb	r3, [r0, #0]
    3cfe:	68fb      	ldr	r3, [r7, #12]
    3d00:	683a      	ldr	r2, [r7, #0]
    3d02:	4413      	add	r3, r2
    3d04:	2200      	movs	r2, #0
    3d06:	701a      	strb	r2, [r3, #0]
    3d08:	bf00      	nop
    3d0a:	3714      	adds	r7, #20
    3d0c:	46bd      	mov	sp, r7
    3d0e:	bc80      	pop	{r7}
    3d10:	4770      	bx	lr
    3d12:	bf00      	nop
    3d14:	10624dd3 	.word	0x10624dd3
    3d18:	51eb851f 	.word	0x51eb851f
    3d1c:	cccccccd 	.word	0xcccccccd

00003d20 <time_str>:
    3d20:	b480      	push	{r7}
    3d22:	b085      	sub	sp, #20
    3d24:	af00      	add	r7, sp, #0
    3d26:	6078      	str	r0, [r7, #4]
    3d28:	6039      	str	r1, [r7, #0]
    3d2a:	2300      	movs	r3, #0
    3d2c:	60fb      	str	r3, [r7, #12]
    3d2e:	687b      	ldr	r3, [r7, #4]
    3d30:	681b      	ldr	r3, [r3, #0]
    3d32:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3d36:	b2db      	uxtb	r3, r3
    3d38:	60bb      	str	r3, [r7, #8]
    3d3a:	68fb      	ldr	r3, [r7, #12]
    3d3c:	1c5a      	adds	r2, r3, #1
    3d3e:	60fa      	str	r2, [r7, #12]
    3d40:	461a      	mov	r2, r3
    3d42:	683b      	ldr	r3, [r7, #0]
    3d44:	4413      	add	r3, r2
    3d46:	68ba      	ldr	r2, [r7, #8]
    3d48:	4943      	ldr	r1, [pc, #268]	; (3e58 <time_str+0x138>)
    3d4a:	fba1 1202 	umull	r1, r2, r1, r2
    3d4e:	08d2      	lsrs	r2, r2, #3
    3d50:	b2d2      	uxtb	r2, r2
    3d52:	3230      	adds	r2, #48	; 0x30
    3d54:	b2d2      	uxtb	r2, r2
    3d56:	701a      	strb	r2, [r3, #0]
    3d58:	68fb      	ldr	r3, [r7, #12]
    3d5a:	1c5a      	adds	r2, r3, #1
    3d5c:	60fa      	str	r2, [r7, #12]
    3d5e:	461a      	mov	r2, r3
    3d60:	683b      	ldr	r3, [r7, #0]
    3d62:	1898      	adds	r0, r3, r2
    3d64:	68b9      	ldr	r1, [r7, #8]
    3d66:	4b3c      	ldr	r3, [pc, #240]	; (3e58 <time_str+0x138>)
    3d68:	fba3 2301 	umull	r2, r3, r3, r1
    3d6c:	08da      	lsrs	r2, r3, #3
    3d6e:	4613      	mov	r3, r2
    3d70:	009b      	lsls	r3, r3, #2
    3d72:	4413      	add	r3, r2
    3d74:	005b      	lsls	r3, r3, #1
    3d76:	1aca      	subs	r2, r1, r3
    3d78:	b2d3      	uxtb	r3, r2
    3d7a:	3330      	adds	r3, #48	; 0x30
    3d7c:	b2db      	uxtb	r3, r3
    3d7e:	7003      	strb	r3, [r0, #0]
    3d80:	68fb      	ldr	r3, [r7, #12]
    3d82:	1c5a      	adds	r2, r3, #1
    3d84:	60fa      	str	r2, [r7, #12]
    3d86:	461a      	mov	r2, r3
    3d88:	683b      	ldr	r3, [r7, #0]
    3d8a:	4413      	add	r3, r2
    3d8c:	223a      	movs	r2, #58	; 0x3a
    3d8e:	701a      	strb	r2, [r3, #0]
    3d90:	687b      	ldr	r3, [r7, #4]
    3d92:	881b      	ldrh	r3, [r3, #0]
    3d94:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3d98:	b2db      	uxtb	r3, r3
    3d9a:	60bb      	str	r3, [r7, #8]
    3d9c:	68fb      	ldr	r3, [r7, #12]
    3d9e:	1c5a      	adds	r2, r3, #1
    3da0:	60fa      	str	r2, [r7, #12]
    3da2:	461a      	mov	r2, r3
    3da4:	683b      	ldr	r3, [r7, #0]
    3da6:	4413      	add	r3, r2
    3da8:	68ba      	ldr	r2, [r7, #8]
    3daa:	492b      	ldr	r1, [pc, #172]	; (3e58 <time_str+0x138>)
    3dac:	fba1 1202 	umull	r1, r2, r1, r2
    3db0:	08d2      	lsrs	r2, r2, #3
    3db2:	b2d2      	uxtb	r2, r2
    3db4:	3230      	adds	r2, #48	; 0x30
    3db6:	b2d2      	uxtb	r2, r2
    3db8:	701a      	strb	r2, [r3, #0]
    3dba:	68fb      	ldr	r3, [r7, #12]
    3dbc:	1c5a      	adds	r2, r3, #1
    3dbe:	60fa      	str	r2, [r7, #12]
    3dc0:	461a      	mov	r2, r3
    3dc2:	683b      	ldr	r3, [r7, #0]
    3dc4:	1898      	adds	r0, r3, r2
    3dc6:	68b9      	ldr	r1, [r7, #8]
    3dc8:	4b23      	ldr	r3, [pc, #140]	; (3e58 <time_str+0x138>)
    3dca:	fba3 2301 	umull	r2, r3, r3, r1
    3dce:	08da      	lsrs	r2, r3, #3
    3dd0:	4613      	mov	r3, r2
    3dd2:	009b      	lsls	r3, r3, #2
    3dd4:	4413      	add	r3, r2
    3dd6:	005b      	lsls	r3, r3, #1
    3dd8:	1aca      	subs	r2, r1, r3
    3dda:	b2d3      	uxtb	r3, r2
    3ddc:	3330      	adds	r3, #48	; 0x30
    3dde:	b2db      	uxtb	r3, r3
    3de0:	7003      	strb	r3, [r0, #0]
    3de2:	68fb      	ldr	r3, [r7, #12]
    3de4:	1c5a      	adds	r2, r3, #1
    3de6:	60fa      	str	r2, [r7, #12]
    3de8:	461a      	mov	r2, r3
    3dea:	683b      	ldr	r3, [r7, #0]
    3dec:	4413      	add	r3, r2
    3dee:	223a      	movs	r2, #58	; 0x3a
    3df0:	701a      	strb	r2, [r3, #0]
    3df2:	687b      	ldr	r3, [r7, #4]
    3df4:	781b      	ldrb	r3, [r3, #0]
    3df6:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3dfa:	b2db      	uxtb	r3, r3
    3dfc:	60bb      	str	r3, [r7, #8]
    3dfe:	68fb      	ldr	r3, [r7, #12]
    3e00:	1c5a      	adds	r2, r3, #1
    3e02:	60fa      	str	r2, [r7, #12]
    3e04:	461a      	mov	r2, r3
    3e06:	683b      	ldr	r3, [r7, #0]
    3e08:	4413      	add	r3, r2
    3e0a:	68ba      	ldr	r2, [r7, #8]
    3e0c:	4912      	ldr	r1, [pc, #72]	; (3e58 <time_str+0x138>)
    3e0e:	fba1 1202 	umull	r1, r2, r1, r2
    3e12:	08d2      	lsrs	r2, r2, #3
    3e14:	b2d2      	uxtb	r2, r2
    3e16:	3230      	adds	r2, #48	; 0x30
    3e18:	b2d2      	uxtb	r2, r2
    3e1a:	701a      	strb	r2, [r3, #0]
    3e1c:	68fb      	ldr	r3, [r7, #12]
    3e1e:	1c5a      	adds	r2, r3, #1
    3e20:	60fa      	str	r2, [r7, #12]
    3e22:	461a      	mov	r2, r3
    3e24:	683b      	ldr	r3, [r7, #0]
    3e26:	1898      	adds	r0, r3, r2
    3e28:	68b9      	ldr	r1, [r7, #8]
    3e2a:	4b0b      	ldr	r3, [pc, #44]	; (3e58 <time_str+0x138>)
    3e2c:	fba3 2301 	umull	r2, r3, r3, r1
    3e30:	08da      	lsrs	r2, r3, #3
    3e32:	4613      	mov	r3, r2
    3e34:	009b      	lsls	r3, r3, #2
    3e36:	4413      	add	r3, r2
    3e38:	005b      	lsls	r3, r3, #1
    3e3a:	1aca      	subs	r2, r1, r3
    3e3c:	b2d3      	uxtb	r3, r2
    3e3e:	3330      	adds	r3, #48	; 0x30
    3e40:	b2db      	uxtb	r3, r3
    3e42:	7003      	strb	r3, [r0, #0]
    3e44:	68fb      	ldr	r3, [r7, #12]
    3e46:	683a      	ldr	r2, [r7, #0]
    3e48:	4413      	add	r3, r2
    3e4a:	2200      	movs	r2, #0
    3e4c:	701a      	strb	r2, [r3, #0]
    3e4e:	bf00      	nop
    3e50:	3714      	adds	r7, #20
    3e52:	46bd      	mov	sp, r7
    3e54:	bc80      	pop	{r7}
    3e56:	4770      	bx	lr
    3e58:	cccccccd 	.word	0xcccccccd

00003e5c <get_fattime>:
    3e5c:	b580      	push	{r7, lr}
    3e5e:	b084      	sub	sp, #16
    3e60:	af00      	add	r7, sp, #0
    3e62:	463b      	mov	r3, r7
    3e64:	4618      	mov	r0, r3
    3e66:	f7ff fa69 	bl	333c <get_date_time>
    3e6a:	783b      	ldrb	r3, [r7, #0]
    3e6c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3e70:	b2db      	uxtb	r3, r3
    3e72:	0fda      	lsrs	r2, r3, #31
    3e74:	4413      	add	r3, r2
    3e76:	105b      	asrs	r3, r3, #1
    3e78:	b2db      	uxtb	r3, r3
    3e7a:	f003 031f 	and.w	r3, r3, #31
    3e7e:	b2da      	uxtb	r2, r3
    3e80:	7b3b      	ldrb	r3, [r7, #12]
    3e82:	f362 0304 	bfi	r3, r2, #0, #5
    3e86:	733b      	strb	r3, [r7, #12]
    3e88:	883b      	ldrh	r3, [r7, #0]
    3e8a:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3e8e:	b2da      	uxtb	r2, r3
    3e90:	89bb      	ldrh	r3, [r7, #12]
    3e92:	f362 134a 	bfi	r3, r2, #5, #6
    3e96:	81bb      	strh	r3, [r7, #12]
    3e98:	683b      	ldr	r3, [r7, #0]
    3e9a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3e9e:	b2da      	uxtb	r2, r3
    3ea0:	7b7b      	ldrb	r3, [r7, #13]
    3ea2:	f362 03c7 	bfi	r3, r2, #3, #5
    3ea6:	737b      	strb	r3, [r7, #13]
    3ea8:	78bb      	ldrb	r3, [r7, #2]
    3eaa:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3eae:	b2da      	uxtb	r2, r3
    3eb0:	7bbb      	ldrb	r3, [r7, #14]
    3eb2:	f362 0304 	bfi	r3, r2, #0, #5
    3eb6:	73bb      	strb	r3, [r7, #14]
    3eb8:	887b      	ldrh	r3, [r7, #2]
    3eba:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3ebe:	b2da      	uxtb	r2, r3
    3ec0:	89fb      	ldrh	r3, [r7, #14]
    3ec2:	f362 1348 	bfi	r3, r2, #5, #4
    3ec6:	81fb      	strh	r3, [r7, #14]
    3ec8:	893b      	ldrh	r3, [r7, #8]
    3eca:	b2db      	uxtb	r3, r3
    3ecc:	3344      	adds	r3, #68	; 0x44
    3ece:	b2db      	uxtb	r3, r3
    3ed0:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3ed4:	b2da      	uxtb	r2, r3
    3ed6:	7bfb      	ldrb	r3, [r7, #15]
    3ed8:	f362 0347 	bfi	r3, r2, #1, #7
    3edc:	73fb      	strb	r3, [r7, #15]
    3ede:	68fb      	ldr	r3, [r7, #12]
    3ee0:	4618      	mov	r0, r3
    3ee2:	3710      	adds	r7, #16
    3ee4:	46bd      	mov	sp, r7
    3ee6:	bd80      	pop	{r7, pc}

00003ee8 <RTC_handler>:
    3ee8:	b480      	push	{r7}
    3eea:	b083      	sub	sp, #12
    3eec:	af00      	add	r7, sp, #0
    3eee:	4b0a      	ldr	r3, [pc, #40]	; (3f18 <RTC_handler+0x30>)
    3ef0:	685b      	ldr	r3, [r3, #4]
    3ef2:	f003 0301 	and.w	r3, r3, #1
    3ef6:	2b00      	cmp	r3, #0
    3ef8:	d001      	beq.n	3efe <RTC_handler+0x16>
    3efa:	4b07      	ldr	r3, [pc, #28]	; (3f18 <RTC_handler+0x30>)
    3efc:	685b      	ldr	r3, [r3, #4]
    3efe:	4b06      	ldr	r3, [pc, #24]	; (3f18 <RTC_handler+0x30>)
    3f00:	685b      	ldr	r3, [r3, #4]
    3f02:	f003 0302 	and.w	r3, r3, #2
    3f06:	2b00      	cmp	r3, #0
    3f08:	d001      	beq.n	3f0e <RTC_handler+0x26>
    3f0a:	4b03      	ldr	r3, [pc, #12]	; (3f18 <RTC_handler+0x30>)
    3f0c:	685b      	ldr	r3, [r3, #4]
    3f0e:	bf00      	nop
    3f10:	370c      	adds	r7, #12
    3f12:	46bd      	mov	sp, r7
    3f14:	bc80      	pop	{r7}
    3f16:	4770      	bx	lr
    3f18:	40002800 	.word	0x40002800

00003f1c <sound_init>:
    3f1c:	b580      	push	{r7, lr}
    3f1e:	af00      	add	r7, sp, #0
    3f20:	4a0d      	ldr	r2, [pc, #52]	; (3f58 <sound_init+0x3c>)
    3f22:	4b0d      	ldr	r3, [pc, #52]	; (3f58 <sound_init+0x3c>)
    3f24:	69db      	ldr	r3, [r3, #28]
    3f26:	f043 0301 	orr.w	r3, r3, #1
    3f2a:	61d3      	str	r3, [r2, #28]
    3f2c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3f30:	2278      	movs	r2, #120	; 0x78
    3f32:	61da      	str	r2, [r3, #28]
    3f34:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3f38:	f44f 7280 	mov.w	r2, #256	; 0x100
    3f3c:	621a      	str	r2, [r3, #32]
    3f3e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3f42:	2209      	movs	r2, #9
    3f44:	629a      	str	r2, [r3, #40]	; 0x28
    3f46:	2100      	movs	r1, #0
    3f48:	201c      	movs	r0, #28
    3f4a:	f7ff f977 	bl	323c <set_int_priority>
    3f4e:	201c      	movs	r0, #28
    3f50:	f7ff f8ba 	bl	30c8 <enable_interrupt>
    3f54:	bf00      	nop
    3f56:	bd80      	pop	{r7, pc}
    3f58:	40021000 	.word	0x40021000

00003f5c <tone>:
    3f5c:	b580      	push	{r7, lr}
    3f5e:	b082      	sub	sp, #8
    3f60:	af00      	add	r7, sp, #0
    3f62:	4603      	mov	r3, r0
    3f64:	460a      	mov	r2, r1
    3f66:	80fb      	strh	r3, [r7, #6]
    3f68:	4613      	mov	r3, r2
    3f6a:	80bb      	strh	r3, [r7, #4]
    3f6c:	4a1a      	ldr	r2, [pc, #104]	; (3fd8 <tone+0x7c>)
    3f6e:	4b1a      	ldr	r3, [pc, #104]	; (3fd8 <tone+0x7c>)
    3f70:	685b      	ldr	r3, [r3, #4]
    3f72:	f403 7340 	and.w	r3, r3, #768	; 0x300
    3f76:	6053      	str	r3, [r2, #4]
    3f78:	4a17      	ldr	r2, [pc, #92]	; (3fd8 <tone+0x7c>)
    3f7a:	4b17      	ldr	r3, [pc, #92]	; (3fd8 <tone+0x7c>)
    3f7c:	685b      	ldr	r3, [r3, #4]
    3f7e:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    3f82:	6053      	str	r3, [r2, #4]
    3f84:	220a      	movs	r2, #10
    3f86:	210a      	movs	r1, #10
    3f88:	4814      	ldr	r0, [pc, #80]	; (3fdc <tone+0x80>)
    3f8a:	f7fd ff53 	bl	1e34 <config_pin>
    3f8e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3f92:	88fb      	ldrh	r3, [r7, #6]
    3f94:	4912      	ldr	r1, [pc, #72]	; (3fe0 <tone+0x84>)
    3f96:	fbb1 f3f3 	udiv	r3, r1, r3
    3f9a:	62d3      	str	r3, [r2, #44]	; 0x2c
    3f9c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3fa0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3fa4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3fa6:	085b      	lsrs	r3, r3, #1
    3fa8:	63d3      	str	r3, [r2, #60]	; 0x3c
    3faa:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3fae:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3fb2:	68db      	ldr	r3, [r3, #12]
    3fb4:	f023 0308 	bic.w	r3, r3, #8
    3fb8:	60d3      	str	r3, [r2, #12]
    3fba:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3fbe:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3fc2:	681b      	ldr	r3, [r3, #0]
    3fc4:	f043 0301 	orr.w	r3, r3, #1
    3fc8:	6013      	str	r3, [r2, #0]
    3fca:	4a06      	ldr	r2, [pc, #24]	; (3fe4 <tone+0x88>)
    3fcc:	88bb      	ldrh	r3, [r7, #4]
    3fce:	8013      	strh	r3, [r2, #0]
    3fd0:	bf00      	nop
    3fd2:	3708      	adds	r7, #8
    3fd4:	46bd      	mov	sp, r7
    3fd6:	bd80      	pop	{r7, pc}
    3fd8:	40010000 	.word	0x40010000
    3fdc:	40010c00 	.word	0x40010c00
    3fe0:	006d3d32 	.word	0x006d3d32
    3fe4:	20004d92 	.word	0x20004d92

00003fe8 <beep>:
    3fe8:	b580      	push	{r7, lr}
    3fea:	b082      	sub	sp, #8
    3fec:	af00      	add	r7, sp, #0
    3fee:	4603      	mov	r3, r0
    3ff0:	80fb      	strh	r3, [r7, #6]
    3ff2:	88fb      	ldrh	r3, [r7, #6]
    3ff4:	4619      	mov	r1, r3
    3ff6:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    3ffa:	f7ff ffaf 	bl	3f5c <tone>
    3ffe:	bf00      	nop
    4000:	3708      	adds	r7, #8
    4002:	46bd      	mov	sp, r7
    4004:	bd80      	pop	{r7, pc}

00004006 <load_sound_buffer>:
    4006:	b480      	push	{r7}
    4008:	b085      	sub	sp, #20
    400a:	af00      	add	r7, sp, #0
    400c:	6078      	str	r0, [r7, #4]
    400e:	2300      	movs	r3, #0
    4010:	60fb      	str	r3, [r7, #12]
    4012:	e00b      	b.n	402c <load_sound_buffer+0x26>
    4014:	687b      	ldr	r3, [r7, #4]
    4016:	1c5a      	adds	r2, r3, #1
    4018:	607a      	str	r2, [r7, #4]
    401a:	7819      	ldrb	r1, [r3, #0]
    401c:	4a07      	ldr	r2, [pc, #28]	; (403c <load_sound_buffer+0x36>)
    401e:	68fb      	ldr	r3, [r7, #12]
    4020:	4413      	add	r3, r2
    4022:	460a      	mov	r2, r1
    4024:	701a      	strb	r2, [r3, #0]
    4026:	68fb      	ldr	r3, [r7, #12]
    4028:	3301      	adds	r3, #1
    402a:	60fb      	str	r3, [r7, #12]
    402c:	68fb      	ldr	r3, [r7, #12]
    402e:	2b0f      	cmp	r3, #15
    4030:	ddf0      	ble.n	4014 <load_sound_buffer+0xe>
    4032:	bf00      	nop
    4034:	3714      	adds	r7, #20
    4036:	46bd      	mov	sp, r7
    4038:	bc80      	pop	{r7}
    403a:	4770      	bx	lr
    403c:	200005e0 	.word	0x200005e0

00004040 <sound_sampler>:
    4040:	b580      	push	{r7, lr}
    4042:	b082      	sub	sp, #8
    4044:	af00      	add	r7, sp, #0
    4046:	4603      	mov	r3, r0
    4048:	80fb      	strh	r3, [r7, #6]
    404a:	4b1b      	ldr	r3, [pc, #108]	; (40b8 <sound_sampler+0x78>)
    404c:	2200      	movs	r2, #0
    404e:	701a      	strb	r2, [r3, #0]
    4050:	4a1a      	ldr	r2, [pc, #104]	; (40bc <sound_sampler+0x7c>)
    4052:	4b1a      	ldr	r3, [pc, #104]	; (40bc <sound_sampler+0x7c>)
    4054:	685b      	ldr	r3, [r3, #4]
    4056:	f403 7340 	and.w	r3, r3, #768	; 0x300
    405a:	6053      	str	r3, [r2, #4]
    405c:	4a18      	ldr	r2, [pc, #96]	; (40c0 <sound_sampler+0x80>)
    405e:	4b18      	ldr	r3, [pc, #96]	; (40c0 <sound_sampler+0x80>)
    4060:	68db      	ldr	r3, [r3, #12]
    4062:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    4066:	60d3      	str	r3, [r2, #12]
    4068:	2202      	movs	r2, #2
    406a:	210a      	movs	r1, #10
    406c:	4814      	ldr	r0, [pc, #80]	; (40c0 <sound_sampler+0x80>)
    406e:	f7fd fee1 	bl	1e34 <config_pin>
    4072:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4076:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    407a:	68db      	ldr	r3, [r3, #12]
    407c:	f043 0301 	orr.w	r3, r3, #1
    4080:	60d3      	str	r3, [r2, #12]
    4082:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4086:	f240 62fd 	movw	r2, #1789	; 0x6fd
    408a:	62da      	str	r2, [r3, #44]	; 0x2c
    408c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4090:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4094:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    4096:	6393      	str	r3, [r2, #56]	; 0x38
    4098:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    409c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    40a0:	681b      	ldr	r3, [r3, #0]
    40a2:	f043 0301 	orr.w	r3, r3, #1
    40a6:	6013      	str	r3, [r2, #0]
    40a8:	4a06      	ldr	r2, [pc, #24]	; (40c4 <sound_sampler+0x84>)
    40aa:	88fb      	ldrh	r3, [r7, #6]
    40ac:	8013      	strh	r3, [r2, #0]
    40ae:	bf00      	nop
    40b0:	3708      	adds	r7, #8
    40b2:	46bd      	mov	sp, r7
    40b4:	bd80      	pop	{r7, pc}
    40b6:	bf00      	nop
    40b8:	200005f0 	.word	0x200005f0
    40bc:	40010000 	.word	0x40010000
    40c0:	40010c00 	.word	0x40010c00
    40c4:	20004d92 	.word	0x20004d92

000040c8 <sound_stop>:
    40c8:	b480      	push	{r7}
    40ca:	af00      	add	r7, sp, #0
    40cc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    40d0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    40d4:	681b      	ldr	r3, [r3, #0]
    40d6:	f023 0301 	bic.w	r3, r3, #1
    40da:	6013      	str	r3, [r2, #0]
    40dc:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    40e0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    40e4:	68db      	ldr	r3, [r3, #12]
    40e6:	f023 0301 	bic.w	r3, r3, #1
    40ea:	60d3      	str	r3, [r2, #12]
    40ec:	bf00      	nop
    40ee:	46bd      	mov	sp, r7
    40f0:	bc80      	pop	{r7}
    40f2:	4770      	bx	lr

000040f4 <key_tone>:
    40f4:	b480      	push	{r7}
    40f6:	b085      	sub	sp, #20
    40f8:	af00      	add	r7, sp, #0
    40fa:	60f8      	str	r0, [r7, #12]
    40fc:	60b9      	str	r1, [r7, #8]
    40fe:	607a      	str	r2, [r7, #4]
    4100:	bf00      	nop
    4102:	3714      	adds	r7, #20
    4104:	46bd      	mov	sp, r7
    4106:	bc80      	pop	{r7}
    4108:	4770      	bx	lr

0000410a <noise>:
    410a:	b480      	push	{r7}
    410c:	b083      	sub	sp, #12
    410e:	af00      	add	r7, sp, #0
    4110:	6078      	str	r0, [r7, #4]
    4112:	bf00      	nop
    4114:	370c      	adds	r7, #12
    4116:	46bd      	mov	sp, r7
    4118:	bc80      	pop	{r7}
    411a:	4770      	bx	lr

0000411c <sound_handler>:
    411c:	4668      	mov	r0, sp
    411e:	f020 0107 	bic.w	r1, r0, #7
    4122:	468d      	mov	sp, r1
    4124:	b481      	push	{r0, r7}
    4126:	b082      	sub	sp, #8
    4128:	af00      	add	r7, sp, #0
    412a:	4b1e      	ldr	r3, [pc, #120]	; (41a4 <sound_handler+0x88>)
    412c:	781b      	ldrb	r3, [r3, #0]
    412e:	08db      	lsrs	r3, r3, #3
    4130:	71fb      	strb	r3, [r7, #7]
    4132:	4b1c      	ldr	r3, [pc, #112]	; (41a4 <sound_handler+0x88>)
    4134:	781b      	ldrb	r3, [r3, #0]
    4136:	43db      	mvns	r3, r3
    4138:	f003 0307 	and.w	r3, r3, #7
    413c:	2201      	movs	r2, #1
    413e:	fa02 f303 	lsl.w	r3, r2, r3
    4142:	71bb      	strb	r3, [r7, #6]
    4144:	79fb      	ldrb	r3, [r7, #7]
    4146:	4a18      	ldr	r2, [pc, #96]	; (41a8 <sound_handler+0x8c>)
    4148:	5cd2      	ldrb	r2, [r2, r3]
    414a:	79bb      	ldrb	r3, [r7, #6]
    414c:	4013      	ands	r3, r2
    414e:	b2db      	uxtb	r3, r3
    4150:	2b00      	cmp	r3, #0
    4152:	d006      	beq.n	4162 <sound_handler+0x46>
    4154:	4a15      	ldr	r2, [pc, #84]	; (41ac <sound_handler+0x90>)
    4156:	4b15      	ldr	r3, [pc, #84]	; (41ac <sound_handler+0x90>)
    4158:	68db      	ldr	r3, [r3, #12]
    415a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    415e:	60d3      	str	r3, [r2, #12]
    4160:	e005      	b.n	416e <sound_handler+0x52>
    4162:	4a12      	ldr	r2, [pc, #72]	; (41ac <sound_handler+0x90>)
    4164:	4b11      	ldr	r3, [pc, #68]	; (41ac <sound_handler+0x90>)
    4166:	68db      	ldr	r3, [r3, #12]
    4168:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    416c:	60d3      	str	r3, [r2, #12]
    416e:	4b0d      	ldr	r3, [pc, #52]	; (41a4 <sound_handler+0x88>)
    4170:	781b      	ldrb	r3, [r3, #0]
    4172:	3301      	adds	r3, #1
    4174:	b2da      	uxtb	r2, r3
    4176:	4b0b      	ldr	r3, [pc, #44]	; (41a4 <sound_handler+0x88>)
    4178:	701a      	strb	r2, [r3, #0]
    417a:	4b0a      	ldr	r3, [pc, #40]	; (41a4 <sound_handler+0x88>)
    417c:	781b      	ldrb	r3, [r3, #0]
    417e:	f003 030f 	and.w	r3, r3, #15
    4182:	b2da      	uxtb	r2, r3
    4184:	4b07      	ldr	r3, [pc, #28]	; (41a4 <sound_handler+0x88>)
    4186:	701a      	strb	r2, [r3, #0]
    4188:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    418c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4190:	691b      	ldr	r3, [r3, #16]
    4192:	f023 0301 	bic.w	r3, r3, #1
    4196:	6113      	str	r3, [r2, #16]
    4198:	bf00      	nop
    419a:	3708      	adds	r7, #8
    419c:	46bd      	mov	sp, r7
    419e:	bc81      	pop	{r0, r7}
    41a0:	4685      	mov	sp, r0
    41a2:	4770      	bx	lr
    41a4:	200005f0 	.word	0x200005f0
    41a8:	200005e0 	.word	0x200005e0
    41ac:	40010c00 	.word	0x40010c00

000041b0 <spi_baudrate>:
    41b0:	b480      	push	{r7}
    41b2:	b083      	sub	sp, #12
    41b4:	af00      	add	r7, sp, #0
    41b6:	6078      	str	r0, [r7, #4]
    41b8:	6039      	str	r1, [r7, #0]
    41ba:	687b      	ldr	r3, [r7, #4]
    41bc:	681b      	ldr	r3, [r3, #0]
    41be:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    41c2:	687b      	ldr	r3, [r7, #4]
    41c4:	601a      	str	r2, [r3, #0]
    41c6:	687b      	ldr	r3, [r7, #4]
    41c8:	681a      	ldr	r2, [r3, #0]
    41ca:	683b      	ldr	r3, [r7, #0]
    41cc:	00db      	lsls	r3, r3, #3
    41ce:	431a      	orrs	r2, r3
    41d0:	687b      	ldr	r3, [r7, #4]
    41d2:	601a      	str	r2, [r3, #0]
    41d4:	bf00      	nop
    41d6:	370c      	adds	r7, #12
    41d8:	46bd      	mov	sp, r7
    41da:	bc80      	pop	{r7}
    41dc:	4770      	bx	lr

000041de <spi_config_port>:
    41de:	b580      	push	{r7, lr}
    41e0:	b082      	sub	sp, #8
    41e2:	af00      	add	r7, sp, #0
    41e4:	6078      	str	r0, [r7, #4]
    41e6:	6039      	str	r1, [r7, #0]
    41e8:	4a33      	ldr	r2, [pc, #204]	; (42b8 <spi_config_port+0xda>)
    41ea:	4b33      	ldr	r3, [pc, #204]	; (42b8 <spi_config_port+0xda>)
    41ec:	699b      	ldr	r3, [r3, #24]
    41ee:	f043 0301 	orr.w	r3, r3, #1
    41f2:	6193      	str	r3, [r2, #24]
    41f4:	687b      	ldr	r3, [r7, #4]
    41f6:	4a31      	ldr	r2, [pc, #196]	; (42bc <spi_config_port+0xde>)
    41f8:	4293      	cmp	r3, r2
    41fa:	d13e      	bne.n	427a <spi_config_port+0x9c>
    41fc:	683b      	ldr	r3, [r7, #0]
    41fe:	2b00      	cmp	r3, #0
    4200:	d11a      	bne.n	4238 <spi_config_port+0x5a>
    4202:	4a2d      	ldr	r2, [pc, #180]	; (42b8 <spi_config_port+0xda>)
    4204:	4b2c      	ldr	r3, [pc, #176]	; (42b8 <spi_config_port+0xda>)
    4206:	699b      	ldr	r3, [r3, #24]
    4208:	f043 0304 	orr.w	r3, r3, #4
    420c:	6193      	str	r3, [r2, #24]
    420e:	2203      	movs	r2, #3
    4210:	2104      	movs	r1, #4
    4212:	482b      	ldr	r0, [pc, #172]	; (42c0 <spi_config_port+0xe2>)
    4214:	f7fd fe0e 	bl	1e34 <config_pin>
    4218:	220b      	movs	r2, #11
    421a:	2105      	movs	r1, #5
    421c:	4828      	ldr	r0, [pc, #160]	; (42c0 <spi_config_port+0xe2>)
    421e:	f7fd fe09 	bl	1e34 <config_pin>
    4222:	2204      	movs	r2, #4
    4224:	2106      	movs	r1, #6
    4226:	4826      	ldr	r0, [pc, #152]	; (42c0 <spi_config_port+0xe2>)
    4228:	f7fd fe04 	bl	1e34 <config_pin>
    422c:	220b      	movs	r2, #11
    422e:	2107      	movs	r1, #7
    4230:	4823      	ldr	r0, [pc, #140]	; (42c0 <spi_config_port+0xe2>)
    4232:	f7fd fdff 	bl	1e34 <config_pin>
    4236:	e03a      	b.n	42ae <spi_config_port+0xd0>
    4238:	4a1f      	ldr	r2, [pc, #124]	; (42b8 <spi_config_port+0xda>)
    423a:	4b1f      	ldr	r3, [pc, #124]	; (42b8 <spi_config_port+0xda>)
    423c:	699b      	ldr	r3, [r3, #24]
    423e:	f043 030d 	orr.w	r3, r3, #13
    4242:	6193      	str	r3, [r2, #24]
    4244:	4a1f      	ldr	r2, [pc, #124]	; (42c4 <spi_config_port+0xe6>)
    4246:	4b1f      	ldr	r3, [pc, #124]	; (42c4 <spi_config_port+0xe6>)
    4248:	685b      	ldr	r3, [r3, #4]
    424a:	f043 0301 	orr.w	r3, r3, #1
    424e:	6053      	str	r3, [r2, #4]
    4250:	2203      	movs	r2, #3
    4252:	210f      	movs	r1, #15
    4254:	481a      	ldr	r0, [pc, #104]	; (42c0 <spi_config_port+0xe2>)
    4256:	f7fd fded 	bl	1e34 <config_pin>
    425a:	220b      	movs	r2, #11
    425c:	2103      	movs	r1, #3
    425e:	481a      	ldr	r0, [pc, #104]	; (42c8 <spi_config_port+0xea>)
    4260:	f7fd fde8 	bl	1e34 <config_pin>
    4264:	2204      	movs	r2, #4
    4266:	2104      	movs	r1, #4
    4268:	4817      	ldr	r0, [pc, #92]	; (42c8 <spi_config_port+0xea>)
    426a:	f7fd fde3 	bl	1e34 <config_pin>
    426e:	220b      	movs	r2, #11
    4270:	2105      	movs	r1, #5
    4272:	4815      	ldr	r0, [pc, #84]	; (42c8 <spi_config_port+0xea>)
    4274:	f7fd fdde 	bl	1e34 <config_pin>
    4278:	e019      	b.n	42ae <spi_config_port+0xd0>
    427a:	4a0f      	ldr	r2, [pc, #60]	; (42b8 <spi_config_port+0xda>)
    427c:	4b0e      	ldr	r3, [pc, #56]	; (42b8 <spi_config_port+0xda>)
    427e:	699b      	ldr	r3, [r3, #24]
    4280:	f043 0308 	orr.w	r3, r3, #8
    4284:	6193      	str	r3, [r2, #24]
    4286:	2203      	movs	r2, #3
    4288:	2102      	movs	r1, #2
    428a:	480f      	ldr	r0, [pc, #60]	; (42c8 <spi_config_port+0xea>)
    428c:	f7fd fdd2 	bl	1e34 <config_pin>
    4290:	220b      	movs	r2, #11
    4292:	210d      	movs	r1, #13
    4294:	480c      	ldr	r0, [pc, #48]	; (42c8 <spi_config_port+0xea>)
    4296:	f7fd fdcd 	bl	1e34 <config_pin>
    429a:	2204      	movs	r2, #4
    429c:	210e      	movs	r1, #14
    429e:	480a      	ldr	r0, [pc, #40]	; (42c8 <spi_config_port+0xea>)
    42a0:	f7fd fdc8 	bl	1e34 <config_pin>
    42a4:	220b      	movs	r2, #11
    42a6:	210f      	movs	r1, #15
    42a8:	4807      	ldr	r0, [pc, #28]	; (42c8 <spi_config_port+0xea>)
    42aa:	f7fd fdc3 	bl	1e34 <config_pin>
    42ae:	bf00      	nop
    42b0:	3708      	adds	r7, #8
    42b2:	46bd      	mov	sp, r7
    42b4:	bd80      	pop	{r7, pc}
    42b6:	bf00      	nop
    42b8:	40021000 	.word	0x40021000
    42bc:	40013000 	.word	0x40013000
    42c0:	40010800 	.word	0x40010800
    42c4:	40010000 	.word	0x40010000
    42c8:	40010c00 	.word	0x40010c00

000042cc <spi_init>:
    42cc:	b580      	push	{r7, lr}
    42ce:	b084      	sub	sp, #16
    42d0:	af00      	add	r7, sp, #0
    42d2:	60f8      	str	r0, [r7, #12]
    42d4:	60b9      	str	r1, [r7, #8]
    42d6:	607a      	str	r2, [r7, #4]
    42d8:	603b      	str	r3, [r7, #0]
    42da:	6839      	ldr	r1, [r7, #0]
    42dc:	68f8      	ldr	r0, [r7, #12]
    42de:	f7ff ff7e 	bl	41de <spi_config_port>
    42e2:	68fb      	ldr	r3, [r7, #12]
    42e4:	4a10      	ldr	r2, [pc, #64]	; (4328 <spi_init+0x5c>)
    42e6:	4293      	cmp	r3, r2
    42e8:	d106      	bne.n	42f8 <spi_init+0x2c>
    42ea:	4a10      	ldr	r2, [pc, #64]	; (432c <spi_init+0x60>)
    42ec:	4b0f      	ldr	r3, [pc, #60]	; (432c <spi_init+0x60>)
    42ee:	699b      	ldr	r3, [r3, #24]
    42f0:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    42f4:	6193      	str	r3, [r2, #24]
    42f6:	e005      	b.n	4304 <spi_init+0x38>
    42f8:	4a0c      	ldr	r2, [pc, #48]	; (432c <spi_init+0x60>)
    42fa:	4b0c      	ldr	r3, [pc, #48]	; (432c <spi_init+0x60>)
    42fc:	69db      	ldr	r3, [r3, #28]
    42fe:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    4302:	61d3      	str	r3, [r2, #28]
    4304:	68fb      	ldr	r3, [r7, #12]
    4306:	687a      	ldr	r2, [r7, #4]
    4308:	601a      	str	r2, [r3, #0]
    430a:	68b9      	ldr	r1, [r7, #8]
    430c:	68f8      	ldr	r0, [r7, #12]
    430e:	f7ff ff4f 	bl	41b0 <spi_baudrate>
    4312:	68fb      	ldr	r3, [r7, #12]
    4314:	681b      	ldr	r3, [r3, #0]
    4316:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    431a:	68fb      	ldr	r3, [r7, #12]
    431c:	601a      	str	r2, [r3, #0]
    431e:	bf00      	nop
    4320:	3710      	adds	r7, #16
    4322:	46bd      	mov	sp, r7
    4324:	bd80      	pop	{r7, pc}
    4326:	bf00      	nop
    4328:	40013000 	.word	0x40013000
    432c:	40021000 	.word	0x40021000

00004330 <spi_send>:
    4330:	b480      	push	{r7}
    4332:	b083      	sub	sp, #12
    4334:	af00      	add	r7, sp, #0
    4336:	6078      	str	r0, [r7, #4]
    4338:	460b      	mov	r3, r1
    433a:	70fb      	strb	r3, [r7, #3]
    433c:	bf00      	nop
    433e:	687b      	ldr	r3, [r7, #4]
    4340:	689b      	ldr	r3, [r3, #8]
    4342:	f003 0302 	and.w	r3, r3, #2
    4346:	2b00      	cmp	r3, #0
    4348:	d0f9      	beq.n	433e <spi_send+0xe>
    434a:	78fa      	ldrb	r2, [r7, #3]
    434c:	687b      	ldr	r3, [r7, #4]
    434e:	60da      	str	r2, [r3, #12]
    4350:	bf00      	nop
    4352:	687b      	ldr	r3, [r7, #4]
    4354:	689b      	ldr	r3, [r3, #8]
    4356:	f003 0301 	and.w	r3, r3, #1
    435a:	2b00      	cmp	r3, #0
    435c:	d0f9      	beq.n	4352 <spi_send+0x22>
    435e:	687b      	ldr	r3, [r7, #4]
    4360:	68db      	ldr	r3, [r3, #12]
    4362:	b2db      	uxtb	r3, r3
    4364:	4618      	mov	r0, r3
    4366:	370c      	adds	r7, #12
    4368:	46bd      	mov	sp, r7
    436a:	bc80      	pop	{r7}
    436c:	4770      	bx	lr

0000436e <spi_receive>:
    436e:	b480      	push	{r7}
    4370:	b085      	sub	sp, #20
    4372:	af00      	add	r7, sp, #0
    4374:	6078      	str	r0, [r7, #4]
    4376:	bf00      	nop
    4378:	687b      	ldr	r3, [r7, #4]
    437a:	689b      	ldr	r3, [r3, #8]
    437c:	f003 0302 	and.w	r3, r3, #2
    4380:	2b00      	cmp	r3, #0
    4382:	d0f9      	beq.n	4378 <spi_receive+0xa>
    4384:	687b      	ldr	r3, [r7, #4]
    4386:	22ff      	movs	r2, #255	; 0xff
    4388:	60da      	str	r2, [r3, #12]
    438a:	bf00      	nop
    438c:	687b      	ldr	r3, [r7, #4]
    438e:	689b      	ldr	r3, [r3, #8]
    4390:	f003 0301 	and.w	r3, r3, #1
    4394:	2b00      	cmp	r3, #0
    4396:	d0f9      	beq.n	438c <spi_receive+0x1e>
    4398:	687b      	ldr	r3, [r7, #4]
    439a:	68db      	ldr	r3, [r3, #12]
    439c:	73fb      	strb	r3, [r7, #15]
    439e:	7bfb      	ldrb	r3, [r7, #15]
    43a0:	4618      	mov	r0, r3
    43a2:	3714      	adds	r7, #20
    43a4:	46bd      	mov	sp, r7
    43a6:	bc80      	pop	{r7}
    43a8:	4770      	bx	lr

000043aa <spi_send_block>:
    43aa:	b480      	push	{r7}
    43ac:	b087      	sub	sp, #28
    43ae:	af00      	add	r7, sp, #0
    43b0:	60f8      	str	r0, [r7, #12]
    43b2:	60b9      	str	r1, [r7, #8]
    43b4:	607a      	str	r2, [r7, #4]
    43b6:	e010      	b.n	43da <spi_send_block+0x30>
    43b8:	68bb      	ldr	r3, [r7, #8]
    43ba:	1c5a      	adds	r2, r3, #1
    43bc:	60ba      	str	r2, [r7, #8]
    43be:	781b      	ldrb	r3, [r3, #0]
    43c0:	461a      	mov	r2, r3
    43c2:	68fb      	ldr	r3, [r7, #12]
    43c4:	60da      	str	r2, [r3, #12]
    43c6:	bf00      	nop
    43c8:	68fb      	ldr	r3, [r7, #12]
    43ca:	689b      	ldr	r3, [r3, #8]
    43cc:	f003 0302 	and.w	r3, r3, #2
    43d0:	2b00      	cmp	r3, #0
    43d2:	d0f9      	beq.n	43c8 <spi_send_block+0x1e>
    43d4:	687b      	ldr	r3, [r7, #4]
    43d6:	3b01      	subs	r3, #1
    43d8:	607b      	str	r3, [r7, #4]
    43da:	687b      	ldr	r3, [r7, #4]
    43dc:	2b00      	cmp	r3, #0
    43de:	d1eb      	bne.n	43b8 <spi_send_block+0xe>
    43e0:	bf00      	nop
    43e2:	68fb      	ldr	r3, [r7, #12]
    43e4:	689b      	ldr	r3, [r3, #8]
    43e6:	f003 0380 	and.w	r3, r3, #128	; 0x80
    43ea:	2b00      	cmp	r3, #0
    43ec:	d1f9      	bne.n	43e2 <spi_send_block+0x38>
    43ee:	68fb      	ldr	r3, [r7, #12]
    43f0:	68db      	ldr	r3, [r3, #12]
    43f2:	75fb      	strb	r3, [r7, #23]
    43f4:	bf00      	nop
    43f6:	371c      	adds	r7, #28
    43f8:	46bd      	mov	sp, r7
    43fa:	bc80      	pop	{r7}
    43fc:	4770      	bx	lr

000043fe <spi_receive_block>:
    43fe:	b480      	push	{r7}
    4400:	b085      	sub	sp, #20
    4402:	af00      	add	r7, sp, #0
    4404:	60f8      	str	r0, [r7, #12]
    4406:	60b9      	str	r1, [r7, #8]
    4408:	607a      	str	r2, [r7, #4]
    440a:	e013      	b.n	4434 <spi_receive_block+0x36>
    440c:	68fb      	ldr	r3, [r7, #12]
    440e:	2200      	movs	r2, #0
    4410:	60da      	str	r2, [r3, #12]
    4412:	bf00      	nop
    4414:	68fb      	ldr	r3, [r7, #12]
    4416:	689b      	ldr	r3, [r3, #8]
    4418:	f003 0301 	and.w	r3, r3, #1
    441c:	2b00      	cmp	r3, #0
    441e:	d0f9      	beq.n	4414 <spi_receive_block+0x16>
    4420:	68bb      	ldr	r3, [r7, #8]
    4422:	1c5a      	adds	r2, r3, #1
    4424:	60ba      	str	r2, [r7, #8]
    4426:	68fa      	ldr	r2, [r7, #12]
    4428:	68d2      	ldr	r2, [r2, #12]
    442a:	b2d2      	uxtb	r2, r2
    442c:	701a      	strb	r2, [r3, #0]
    442e:	687b      	ldr	r3, [r7, #4]
    4430:	3b01      	subs	r3, #1
    4432:	607b      	str	r3, [r7, #4]
    4434:	687b      	ldr	r3, [r7, #4]
    4436:	2b00      	cmp	r3, #0
    4438:	d1e8      	bne.n	440c <spi_receive_block+0xe>
    443a:	bf00      	nop
    443c:	3714      	adds	r7, #20
    443e:	46bd      	mov	sp, r7
    4440:	bc80      	pop	{r7}
    4442:	4770      	bx	lr

00004444 <reset_mcu>:
    4444:	4b01      	ldr	r3, [pc, #4]	; (444c <reset_mcu+0x8>)
    4446:	4a02      	ldr	r2, [pc, #8]	; (4450 <reset_mcu+0xc>)
    4448:	601a      	str	r2, [r3, #0]
    444a:	bf00      	nop
    444c:	e000ed0c 	.word	0xe000ed0c
    4450:	05fa0004 	.word	0x05fa0004

00004454 <print_fault>:
    4454:	b580      	push	{r7, lr}
    4456:	b082      	sub	sp, #8
    4458:	af00      	add	r7, sp, #0
    445a:	6078      	str	r0, [r7, #4]
    445c:	6039      	str	r1, [r7, #0]
    445e:	6878      	ldr	r0, [r7, #4]
    4460:	f000 f9aa 	bl	47b8 <print>
    4464:	4818      	ldr	r0, [pc, #96]	; (44c8 <print_fault+0x74>)
    4466:	f000 f9a7 	bl	47b8 <print>
    446a:	683b      	ldr	r3, [r7, #0]
    446c:	2b00      	cmp	r3, #0
    446e:	d004      	beq.n	447a <print_fault+0x26>
    4470:	683b      	ldr	r3, [r7, #0]
    4472:	2110      	movs	r1, #16
    4474:	4618      	mov	r0, r3
    4476:	f000 f9cf 	bl	4818 <print_int>
    447a:	200d      	movs	r0, #13
    447c:	f000 f8e4 	bl	4648 <put_char>
    4480:	4812      	ldr	r0, [pc, #72]	; (44cc <print_fault+0x78>)
    4482:	f000 f999 	bl	47b8 <print>
    4486:	4b12      	ldr	r3, [pc, #72]	; (44d0 <print_fault+0x7c>)
    4488:	681b      	ldr	r3, [r3, #0]
    448a:	f3c3 430f 	ubfx	r3, r3, #16, #16
    448e:	b29b      	uxth	r3, r3
    4490:	2110      	movs	r1, #16
    4492:	4618      	mov	r0, r3
    4494:	f000 f9c0 	bl	4818 <print_int>
    4498:	480e      	ldr	r0, [pc, #56]	; (44d4 <print_fault+0x80>)
    449a:	f000 f98d 	bl	47b8 <print>
    449e:	4b0c      	ldr	r3, [pc, #48]	; (44d0 <print_fault+0x7c>)
    44a0:	681b      	ldr	r3, [r3, #0]
    44a2:	f3c3 2307 	ubfx	r3, r3, #8, #8
    44a6:	b2db      	uxtb	r3, r3
    44a8:	2110      	movs	r1, #16
    44aa:	4618      	mov	r0, r3
    44ac:	f000 f9b4 	bl	4818 <print_int>
    44b0:	4809      	ldr	r0, [pc, #36]	; (44d8 <print_fault+0x84>)
    44b2:	f000 f981 	bl	47b8 <print>
    44b6:	4b06      	ldr	r3, [pc, #24]	; (44d0 <print_fault+0x7c>)
    44b8:	681b      	ldr	r3, [r3, #0]
    44ba:	b2db      	uxtb	r3, r3
    44bc:	2110      	movs	r1, #16
    44be:	4618      	mov	r0, r3
    44c0:	f000 f9aa 	bl	4818 <print_int>
    44c4:	e7fe      	b.n	44c4 <print_fault+0x70>
    44c6:	bf00      	nop
    44c8:	0000577c 	.word	0x0000577c
    44cc:	0000578c 	.word	0x0000578c
    44d0:	e000ed28 	.word	0xe000ed28
    44d4:	00005794 	.word	0x00005794
    44d8:	0000579c 	.word	0x0000579c

000044dc <font_color>:
    44dc:	b480      	push	{r7}
    44de:	b083      	sub	sp, #12
    44e0:	af00      	add	r7, sp, #0
    44e2:	4603      	mov	r3, r0
    44e4:	71fb      	strb	r3, [r7, #7]
    44e6:	79fb      	ldrb	r3, [r7, #7]
    44e8:	f003 030f 	and.w	r3, r3, #15
    44ec:	b2da      	uxtb	r2, r3
    44ee:	4b03      	ldr	r3, [pc, #12]	; (44fc <font_color+0x20>)
    44f0:	705a      	strb	r2, [r3, #1]
    44f2:	bf00      	nop
    44f4:	370c      	adds	r7, #12
    44f6:	46bd      	mov	sp, r7
    44f8:	bc80      	pop	{r7}
    44fa:	4770      	bx	lr
    44fc:	20000154 	.word	0x20000154

00004500 <bg_color>:
    4500:	b480      	push	{r7}
    4502:	b083      	sub	sp, #12
    4504:	af00      	add	r7, sp, #0
    4506:	4603      	mov	r3, r0
    4508:	71fb      	strb	r3, [r7, #7]
    450a:	79fb      	ldrb	r3, [r7, #7]
    450c:	f003 030f 	and.w	r3, r3, #15
    4510:	b2da      	uxtb	r2, r3
    4512:	4b03      	ldr	r3, [pc, #12]	; (4520 <bg_color+0x20>)
    4514:	701a      	strb	r2, [r3, #0]
    4516:	bf00      	nop
    4518:	370c      	adds	r7, #12
    451a:	46bd      	mov	sp, r7
    451c:	bc80      	pop	{r7}
    451e:	4770      	bx	lr
    4520:	20000154 	.word	0x20000154

00004524 <select_font>:
    4524:	b480      	push	{r7}
    4526:	b083      	sub	sp, #12
    4528:	af00      	add	r7, sp, #0
    452a:	4603      	mov	r3, r0
    452c:	71fb      	strb	r3, [r7, #7]
    452e:	4a04      	ldr	r2, [pc, #16]	; (4540 <select_font+0x1c>)
    4530:	79fb      	ldrb	r3, [r7, #7]
    4532:	7013      	strb	r3, [r2, #0]
    4534:	bf00      	nop
    4536:	370c      	adds	r7, #12
    4538:	46bd      	mov	sp, r7
    453a:	bc80      	pop	{r7}
    453c:	4770      	bx	lr
    453e:	bf00      	nop
    4540:	20000150 	.word	0x20000150

00004544 <new_line>:
    4544:	b580      	push	{r7, lr}
    4546:	af00      	add	r7, sp, #0
    4548:	4b1e      	ldr	r3, [pc, #120]	; (45c4 <new_line+0x80>)
    454a:	2200      	movs	r2, #0
    454c:	701a      	strb	r2, [r3, #0]
    454e:	4b1e      	ldr	r3, [pc, #120]	; (45c8 <new_line+0x84>)
    4550:	781b      	ldrb	r3, [r3, #0]
    4552:	2b01      	cmp	r3, #1
    4554:	d014      	beq.n	4580 <new_line+0x3c>
    4556:	2b02      	cmp	r3, #2
    4558:	d022      	beq.n	45a0 <new_line+0x5c>
    455a:	2b00      	cmp	r3, #0
    455c:	d000      	beq.n	4560 <new_line+0x1c>
    455e:	e02f      	b.n	45c0 <new_line+0x7c>
    4560:	4b1a      	ldr	r3, [pc, #104]	; (45cc <new_line+0x88>)
    4562:	781b      	ldrb	r3, [r3, #0]
    4564:	3306      	adds	r3, #6
    4566:	2b6b      	cmp	r3, #107	; 0x6b
    4568:	dc06      	bgt.n	4578 <new_line+0x34>
    456a:	4b18      	ldr	r3, [pc, #96]	; (45cc <new_line+0x88>)
    456c:	781b      	ldrb	r3, [r3, #0]
    456e:	3306      	adds	r3, #6
    4570:	b2da      	uxtb	r2, r3
    4572:	4b16      	ldr	r3, [pc, #88]	; (45cc <new_line+0x88>)
    4574:	701a      	strb	r2, [r3, #0]
    4576:	e023      	b.n	45c0 <new_line+0x7c>
    4578:	2006      	movs	r0, #6
    457a:	f7fd fe09 	bl	2190 <gfx_scroll_up>
    457e:	e01f      	b.n	45c0 <new_line+0x7c>
    4580:	4b12      	ldr	r3, [pc, #72]	; (45cc <new_line+0x88>)
    4582:	781b      	ldrb	r3, [r3, #0]
    4584:	330a      	adds	r3, #10
    4586:	2b67      	cmp	r3, #103	; 0x67
    4588:	dc06      	bgt.n	4598 <new_line+0x54>
    458a:	4b10      	ldr	r3, [pc, #64]	; (45cc <new_line+0x88>)
    458c:	781b      	ldrb	r3, [r3, #0]
    458e:	330a      	adds	r3, #10
    4590:	b2da      	uxtb	r2, r3
    4592:	4b0e      	ldr	r3, [pc, #56]	; (45cc <new_line+0x88>)
    4594:	701a      	strb	r2, [r3, #0]
    4596:	e013      	b.n	45c0 <new_line+0x7c>
    4598:	200a      	movs	r0, #10
    459a:	f7fd fdf9 	bl	2190 <gfx_scroll_up>
    459e:	e00f      	b.n	45c0 <new_line+0x7c>
    45a0:	4b0a      	ldr	r3, [pc, #40]	; (45cc <new_line+0x88>)
    45a2:	781b      	ldrb	r3, [r3, #0]
    45a4:	3308      	adds	r3, #8
    45a6:	2b69      	cmp	r3, #105	; 0x69
    45a8:	dc06      	bgt.n	45b8 <new_line+0x74>
    45aa:	4b08      	ldr	r3, [pc, #32]	; (45cc <new_line+0x88>)
    45ac:	781b      	ldrb	r3, [r3, #0]
    45ae:	3308      	adds	r3, #8
    45b0:	b2da      	uxtb	r2, r3
    45b2:	4b06      	ldr	r3, [pc, #24]	; (45cc <new_line+0x88>)
    45b4:	701a      	strb	r2, [r3, #0]
    45b6:	e002      	b.n	45be <new_line+0x7a>
    45b8:	2008      	movs	r0, #8
    45ba:	f7fd fde9 	bl	2190 <gfx_scroll_up>
    45be:	bf00      	nop
    45c0:	bf00      	nop
    45c2:	bd80      	pop	{r7, pc}
    45c4:	200005f1 	.word	0x200005f1
    45c8:	20000150 	.word	0x20000150
    45cc:	200005f2 	.word	0x200005f2

000045d0 <draw_char>:
    45d0:	b5b0      	push	{r4, r5, r7, lr}
    45d2:	b086      	sub	sp, #24
    45d4:	af00      	add	r7, sp, #0
    45d6:	60f8      	str	r0, [r7, #12]
    45d8:	60b9      	str	r1, [r7, #8]
    45da:	607a      	str	r2, [r7, #4]
    45dc:	603b      	str	r3, [r7, #0]
    45de:	68bc      	ldr	r4, [r7, #8]
    45e0:	e026      	b.n	4630 <draw_char+0x60>
    45e2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    45e4:	1c5a      	adds	r2, r3, #1
    45e6:	62ba      	str	r2, [r7, #40]	; 0x28
    45e8:	781b      	ldrb	r3, [r3, #0]
    45ea:	757b      	strb	r3, [r7, #21]
    45ec:	2380      	movs	r3, #128	; 0x80
    45ee:	75bb      	strb	r3, [r7, #22]
    45f0:	68fd      	ldr	r5, [r7, #12]
    45f2:	e017      	b.n	4624 <draw_char+0x54>
    45f4:	7d7a      	ldrb	r2, [r7, #21]
    45f6:	7dbb      	ldrb	r3, [r7, #22]
    45f8:	4013      	ands	r3, r2
    45fa:	753b      	strb	r3, [r7, #20]
    45fc:	7d3b      	ldrb	r3, [r7, #20]
    45fe:	2b00      	cmp	r3, #0
    4600:	d003      	beq.n	460a <draw_char+0x3a>
    4602:	4b10      	ldr	r3, [pc, #64]	; (4644 <draw_char+0x74>)
    4604:	785b      	ldrb	r3, [r3, #1]
    4606:	75fb      	strb	r3, [r7, #23]
    4608:	e002      	b.n	4610 <draw_char+0x40>
    460a:	4b0e      	ldr	r3, [pc, #56]	; (4644 <draw_char+0x74>)
    460c:	781b      	ldrb	r3, [r3, #0]
    460e:	75fb      	strb	r3, [r7, #23]
    4610:	7dfb      	ldrb	r3, [r7, #23]
    4612:	461a      	mov	r2, r3
    4614:	4621      	mov	r1, r4
    4616:	4628      	mov	r0, r5
    4618:	f7fd fd18 	bl	204c <gfx_plot>
    461c:	7dbb      	ldrb	r3, [r7, #22]
    461e:	085b      	lsrs	r3, r3, #1
    4620:	75bb      	strb	r3, [r7, #22]
    4622:	3501      	adds	r5, #1
    4624:	68fa      	ldr	r2, [r7, #12]
    4626:	687b      	ldr	r3, [r7, #4]
    4628:	4413      	add	r3, r2
    462a:	42ab      	cmp	r3, r5
    462c:	dce2      	bgt.n	45f4 <draw_char+0x24>
    462e:	3401      	adds	r4, #1
    4630:	68ba      	ldr	r2, [r7, #8]
    4632:	683b      	ldr	r3, [r7, #0]
    4634:	4413      	add	r3, r2
    4636:	42a3      	cmp	r3, r4
    4638:	dcd3      	bgt.n	45e2 <draw_char+0x12>
    463a:	bf00      	nop
    463c:	3718      	adds	r7, #24
    463e:	46bd      	mov	sp, r7
    4640:	bdb0      	pop	{r4, r5, r7, pc}
    4642:	bf00      	nop
    4644:	20000154 	.word	0x20000154

00004648 <put_char>:
    4648:	b580      	push	{r7, lr}
    464a:	b084      	sub	sp, #16
    464c:	af02      	add	r7, sp, #8
    464e:	4603      	mov	r3, r0
    4650:	71fb      	strb	r3, [r7, #7]
    4652:	4b3d      	ldr	r3, [pc, #244]	; (4748 <put_char+0x100>)
    4654:	781b      	ldrb	r3, [r3, #0]
    4656:	2b01      	cmp	r3, #1
    4658:	d027      	beq.n	46aa <put_char+0x62>
    465a:	2b02      	cmp	r3, #2
    465c:	d048      	beq.n	46f0 <put_char+0xa8>
    465e:	2b00      	cmp	r3, #0
    4660:	d000      	beq.n	4664 <put_char+0x1c>
    4662:	e06d      	b.n	4740 <put_char+0xf8>
    4664:	79fb      	ldrb	r3, [r7, #7]
    4666:	2b0f      	cmp	r3, #15
    4668:	d865      	bhi.n	4736 <put_char+0xee>
    466a:	4b38      	ldr	r3, [pc, #224]	; (474c <put_char+0x104>)
    466c:	781b      	ldrb	r3, [r3, #0]
    466e:	4618      	mov	r0, r3
    4670:	4b37      	ldr	r3, [pc, #220]	; (4750 <put_char+0x108>)
    4672:	781b      	ldrb	r3, [r3, #0]
    4674:	4619      	mov	r1, r3
    4676:	79fa      	ldrb	r2, [r7, #7]
    4678:	4613      	mov	r3, r2
    467a:	005b      	lsls	r3, r3, #1
    467c:	4413      	add	r3, r2
    467e:	005b      	lsls	r3, r3, #1
    4680:	461a      	mov	r2, r3
    4682:	4b34      	ldr	r3, [pc, #208]	; (4754 <put_char+0x10c>)
    4684:	4413      	add	r3, r2
    4686:	9300      	str	r3, [sp, #0]
    4688:	2306      	movs	r3, #6
    468a:	2204      	movs	r2, #4
    468c:	f7ff ffa0 	bl	45d0 <draw_char>
    4690:	4b2e      	ldr	r3, [pc, #184]	; (474c <put_char+0x104>)
    4692:	781b      	ldrb	r3, [r3, #0]
    4694:	3304      	adds	r3, #4
    4696:	b2da      	uxtb	r2, r3
    4698:	4b2c      	ldr	r3, [pc, #176]	; (474c <put_char+0x104>)
    469a:	701a      	strb	r2, [r3, #0]
    469c:	4b2b      	ldr	r3, [pc, #172]	; (474c <put_char+0x104>)
    469e:	781b      	ldrb	r3, [r3, #0]
    46a0:	2bb1      	cmp	r3, #177	; 0xb1
    46a2:	d948      	bls.n	4736 <put_char+0xee>
    46a4:	f7ff ff4e 	bl	4544 <new_line>
    46a8:	e045      	b.n	4736 <put_char+0xee>
    46aa:	79fb      	ldrb	r3, [r7, #7]
    46ac:	2b0f      	cmp	r3, #15
    46ae:	d844      	bhi.n	473a <put_char+0xf2>
    46b0:	4b26      	ldr	r3, [pc, #152]	; (474c <put_char+0x104>)
    46b2:	781b      	ldrb	r3, [r3, #0]
    46b4:	4618      	mov	r0, r3
    46b6:	4b26      	ldr	r3, [pc, #152]	; (4750 <put_char+0x108>)
    46b8:	781b      	ldrb	r3, [r3, #0]
    46ba:	4619      	mov	r1, r3
    46bc:	79fa      	ldrb	r2, [r7, #7]
    46be:	4613      	mov	r3, r2
    46c0:	009b      	lsls	r3, r3, #2
    46c2:	4413      	add	r3, r2
    46c4:	005b      	lsls	r3, r3, #1
    46c6:	461a      	mov	r2, r3
    46c8:	4b23      	ldr	r3, [pc, #140]	; (4758 <put_char+0x110>)
    46ca:	4413      	add	r3, r2
    46cc:	9300      	str	r3, [sp, #0]
    46ce:	230a      	movs	r3, #10
    46d0:	2208      	movs	r2, #8
    46d2:	f7ff ff7d 	bl	45d0 <draw_char>
    46d6:	4b1d      	ldr	r3, [pc, #116]	; (474c <put_char+0x104>)
    46d8:	781b      	ldrb	r3, [r3, #0]
    46da:	3308      	adds	r3, #8
    46dc:	b2da      	uxtb	r2, r3
    46de:	4b1b      	ldr	r3, [pc, #108]	; (474c <put_char+0x104>)
    46e0:	701a      	strb	r2, [r3, #0]
    46e2:	4b1a      	ldr	r3, [pc, #104]	; (474c <put_char+0x104>)
    46e4:	781b      	ldrb	r3, [r3, #0]
    46e6:	2bad      	cmp	r3, #173	; 0xad
    46e8:	d927      	bls.n	473a <put_char+0xf2>
    46ea:	f7ff ff2b 	bl	4544 <new_line>
    46ee:	e024      	b.n	473a <put_char+0xf2>
    46f0:	79fb      	ldrb	r3, [r7, #7]
    46f2:	2b1f      	cmp	r3, #31
    46f4:	d923      	bls.n	473e <put_char+0xf6>
    46f6:	79fb      	ldrb	r3, [r7, #7]
    46f8:	2b84      	cmp	r3, #132	; 0x84
    46fa:	d820      	bhi.n	473e <put_char+0xf6>
    46fc:	4b13      	ldr	r3, [pc, #76]	; (474c <put_char+0x104>)
    46fe:	781b      	ldrb	r3, [r3, #0]
    4700:	4618      	mov	r0, r3
    4702:	4b13      	ldr	r3, [pc, #76]	; (4750 <put_char+0x108>)
    4704:	781b      	ldrb	r3, [r3, #0]
    4706:	4619      	mov	r1, r3
    4708:	79fb      	ldrb	r3, [r7, #7]
    470a:	3b20      	subs	r3, #32
    470c:	00db      	lsls	r3, r3, #3
    470e:	4a13      	ldr	r2, [pc, #76]	; (475c <put_char+0x114>)
    4710:	4413      	add	r3, r2
    4712:	9300      	str	r3, [sp, #0]
    4714:	2308      	movs	r3, #8
    4716:	2206      	movs	r2, #6
    4718:	f7ff ff5a 	bl	45d0 <draw_char>
    471c:	4b0b      	ldr	r3, [pc, #44]	; (474c <put_char+0x104>)
    471e:	781b      	ldrb	r3, [r3, #0]
    4720:	3306      	adds	r3, #6
    4722:	b2da      	uxtb	r2, r3
    4724:	4b09      	ldr	r3, [pc, #36]	; (474c <put_char+0x104>)
    4726:	701a      	strb	r2, [r3, #0]
    4728:	4b08      	ldr	r3, [pc, #32]	; (474c <put_char+0x104>)
    472a:	781b      	ldrb	r3, [r3, #0]
    472c:	2baf      	cmp	r3, #175	; 0xaf
    472e:	d906      	bls.n	473e <put_char+0xf6>
    4730:	f7ff ff08 	bl	4544 <new_line>
    4734:	e003      	b.n	473e <put_char+0xf6>
    4736:	bf00      	nop
    4738:	e002      	b.n	4740 <put_char+0xf8>
    473a:	bf00      	nop
    473c:	e000      	b.n	4740 <put_char+0xf8>
    473e:	bf00      	nop
    4740:	bf00      	nop
    4742:	3708      	adds	r7, #8
    4744:	46bd      	mov	sp, r7
    4746:	bd80      	pop	{r7, pc}
    4748:	20000150 	.word	0x20000150
    474c:	200005f1 	.word	0x200005f1
    4750:	200005f2 	.word	0x200005f2
    4754:	000051a4 	.word	0x000051a4
    4758:	00005204 	.word	0x00005204
    475c:	000052a4 	.word	0x000052a4

00004760 <set_cursor>:
    4760:	b480      	push	{r7}
    4762:	b083      	sub	sp, #12
    4764:	af00      	add	r7, sp, #0
    4766:	4603      	mov	r3, r0
    4768:	460a      	mov	r2, r1
    476a:	71fb      	strb	r3, [r7, #7]
    476c:	4613      	mov	r3, r2
    476e:	71bb      	strb	r3, [r7, #6]
    4770:	4a05      	ldr	r2, [pc, #20]	; (4788 <set_cursor+0x28>)
    4772:	79fb      	ldrb	r3, [r7, #7]
    4774:	7013      	strb	r3, [r2, #0]
    4776:	4a05      	ldr	r2, [pc, #20]	; (478c <set_cursor+0x2c>)
    4778:	79bb      	ldrb	r3, [r7, #6]
    477a:	7013      	strb	r3, [r2, #0]
    477c:	bf00      	nop
    477e:	370c      	adds	r7, #12
    4780:	46bd      	mov	sp, r7
    4782:	bc80      	pop	{r7}
    4784:	4770      	bx	lr
    4786:	bf00      	nop
    4788:	200005f1 	.word	0x200005f1
    478c:	200005f2 	.word	0x200005f2

00004790 <get_cursor>:
    4790:	b480      	push	{r7}
    4792:	af00      	add	r7, sp, #0
    4794:	4b06      	ldr	r3, [pc, #24]	; (47b0 <get_cursor+0x20>)
    4796:	781b      	ldrb	r3, [r3, #0]
    4798:	b29b      	uxth	r3, r3
    479a:	021b      	lsls	r3, r3, #8
    479c:	b29a      	uxth	r2, r3
    479e:	4b05      	ldr	r3, [pc, #20]	; (47b4 <get_cursor+0x24>)
    47a0:	781b      	ldrb	r3, [r3, #0]
    47a2:	b29b      	uxth	r3, r3
    47a4:	4413      	add	r3, r2
    47a6:	b29b      	uxth	r3, r3
    47a8:	4618      	mov	r0, r3
    47aa:	46bd      	mov	sp, r7
    47ac:	bc80      	pop	{r7}
    47ae:	4770      	bx	lr
    47b0:	200005f1 	.word	0x200005f1
    47b4:	200005f2 	.word	0x200005f2

000047b8 <print>:
    47b8:	b580      	push	{r7, lr}
    47ba:	b084      	sub	sp, #16
    47bc:	af00      	add	r7, sp, #0
    47be:	6078      	str	r0, [r7, #4]
    47c0:	e011      	b.n	47e6 <print+0x2e>
    47c2:	7bfb      	ldrb	r3, [r7, #15]
    47c4:	2b0a      	cmp	r3, #10
    47c6:	d004      	beq.n	47d2 <print+0x1a>
    47c8:	2b0d      	cmp	r3, #13
    47ca:	d002      	beq.n	47d2 <print+0x1a>
    47cc:	2b08      	cmp	r3, #8
    47ce:	d003      	beq.n	47d8 <print+0x20>
    47d0:	e005      	b.n	47de <print+0x26>
    47d2:	f7ff feb7 	bl	4544 <new_line>
    47d6:	e006      	b.n	47e6 <print+0x2e>
    47d8:	f000 f892 	bl	4900 <cursor_left>
    47dc:	e003      	b.n	47e6 <print+0x2e>
    47de:	7bfb      	ldrb	r3, [r7, #15]
    47e0:	4618      	mov	r0, r3
    47e2:	f7ff ff31 	bl	4648 <put_char>
    47e6:	687b      	ldr	r3, [r7, #4]
    47e8:	1c5a      	adds	r2, r3, #1
    47ea:	607a      	str	r2, [r7, #4]
    47ec:	781b      	ldrb	r3, [r3, #0]
    47ee:	73fb      	strb	r3, [r7, #15]
    47f0:	7bfb      	ldrb	r3, [r7, #15]
    47f2:	2b00      	cmp	r3, #0
    47f4:	d1e5      	bne.n	47c2 <print+0xa>
    47f6:	bf00      	nop
    47f8:	3710      	adds	r7, #16
    47fa:	46bd      	mov	sp, r7
    47fc:	bd80      	pop	{r7, pc}

000047fe <println>:
    47fe:	b580      	push	{r7, lr}
    4800:	b082      	sub	sp, #8
    4802:	af00      	add	r7, sp, #0
    4804:	6078      	str	r0, [r7, #4]
    4806:	6878      	ldr	r0, [r7, #4]
    4808:	f7ff ffd6 	bl	47b8 <print>
    480c:	f7ff fe9a 	bl	4544 <new_line>
    4810:	bf00      	nop
    4812:	3708      	adds	r7, #8
    4814:	46bd      	mov	sp, r7
    4816:	bd80      	pop	{r7, pc}

00004818 <print_int>:
    4818:	b580      	push	{r7, lr}
    481a:	b08a      	sub	sp, #40	; 0x28
    481c:	af00      	add	r7, sp, #0
    481e:	6078      	str	r0, [r7, #4]
    4820:	460b      	mov	r3, r1
    4822:	70fb      	strb	r3, [r7, #3]
    4824:	2300      	movs	r3, #0
    4826:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    482a:	2300      	movs	r3, #0
    482c:	76fb      	strb	r3, [r7, #27]
    482e:	2320      	movs	r3, #32
    4830:	76bb      	strb	r3, [r7, #26]
    4832:	230e      	movs	r3, #14
    4834:	623b      	str	r3, [r7, #32]
    4836:	687b      	ldr	r3, [r7, #4]
    4838:	2b00      	cmp	r3, #0
    483a:	da27      	bge.n	488c <print_int+0x74>
    483c:	2301      	movs	r3, #1
    483e:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4842:	687b      	ldr	r3, [r7, #4]
    4844:	425b      	negs	r3, r3
    4846:	607b      	str	r3, [r7, #4]
    4848:	e020      	b.n	488c <print_int+0x74>
    484a:	78fa      	ldrb	r2, [r7, #3]
    484c:	687b      	ldr	r3, [r7, #4]
    484e:	fb93 f1f2 	sdiv	r1, r3, r2
    4852:	fb02 f201 	mul.w	r2, r2, r1
    4856:	1a9b      	subs	r3, r3, r2
    4858:	61fb      	str	r3, [r7, #28]
    485a:	69fb      	ldr	r3, [r7, #28]
    485c:	2b09      	cmp	r3, #9
    485e:	dd02      	ble.n	4866 <print_int+0x4e>
    4860:	69fb      	ldr	r3, [r7, #28]
    4862:	3307      	adds	r3, #7
    4864:	61fb      	str	r3, [r7, #28]
    4866:	6a3b      	ldr	r3, [r7, #32]
    4868:	3b01      	subs	r3, #1
    486a:	623b      	str	r3, [r7, #32]
    486c:	69fb      	ldr	r3, [r7, #28]
    486e:	3330      	adds	r3, #48	; 0x30
    4870:	61fb      	str	r3, [r7, #28]
    4872:	69fb      	ldr	r3, [r7, #28]
    4874:	b2d9      	uxtb	r1, r3
    4876:	f107 020c 	add.w	r2, r7, #12
    487a:	6a3b      	ldr	r3, [r7, #32]
    487c:	4413      	add	r3, r2
    487e:	460a      	mov	r2, r1
    4880:	701a      	strb	r2, [r3, #0]
    4882:	78fb      	ldrb	r3, [r7, #3]
    4884:	687a      	ldr	r2, [r7, #4]
    4886:	fb92 f3f3 	sdiv	r3, r2, r3
    488a:	607b      	str	r3, [r7, #4]
    488c:	6a3b      	ldr	r3, [r7, #32]
    488e:	2b01      	cmp	r3, #1
    4890:	dd02      	ble.n	4898 <print_int+0x80>
    4892:	687b      	ldr	r3, [r7, #4]
    4894:	2b00      	cmp	r3, #0
    4896:	d1d8      	bne.n	484a <print_int+0x32>
    4898:	6a3b      	ldr	r3, [r7, #32]
    489a:	2b0e      	cmp	r3, #14
    489c:	d108      	bne.n	48b0 <print_int+0x98>
    489e:	6a3b      	ldr	r3, [r7, #32]
    48a0:	3b01      	subs	r3, #1
    48a2:	623b      	str	r3, [r7, #32]
    48a4:	f107 020c 	add.w	r2, r7, #12
    48a8:	6a3b      	ldr	r3, [r7, #32]
    48aa:	4413      	add	r3, r2
    48ac:	2230      	movs	r2, #48	; 0x30
    48ae:	701a      	strb	r2, [r3, #0]
    48b0:	78fb      	ldrb	r3, [r7, #3]
    48b2:	2b0a      	cmp	r3, #10
    48b4:	d10d      	bne.n	48d2 <print_int+0xba>
    48b6:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    48ba:	2b00      	cmp	r3, #0
    48bc:	d009      	beq.n	48d2 <print_int+0xba>
    48be:	6a3b      	ldr	r3, [r7, #32]
    48c0:	3b01      	subs	r3, #1
    48c2:	623b      	str	r3, [r7, #32]
    48c4:	f107 020c 	add.w	r2, r7, #12
    48c8:	6a3b      	ldr	r3, [r7, #32]
    48ca:	4413      	add	r3, r2
    48cc:	222d      	movs	r2, #45	; 0x2d
    48ce:	701a      	strb	r2, [r3, #0]
    48d0:	e00b      	b.n	48ea <print_int+0xd2>
    48d2:	78fb      	ldrb	r3, [r7, #3]
    48d4:	2b10      	cmp	r3, #16
    48d6:	d108      	bne.n	48ea <print_int+0xd2>
    48d8:	6a3b      	ldr	r3, [r7, #32]
    48da:	3b01      	subs	r3, #1
    48dc:	623b      	str	r3, [r7, #32]
    48de:	f107 020c 	add.w	r2, r7, #12
    48e2:	6a3b      	ldr	r3, [r7, #32]
    48e4:	4413      	add	r3, r2
    48e6:	2224      	movs	r2, #36	; 0x24
    48e8:	701a      	strb	r2, [r3, #0]
    48ea:	f107 020c 	add.w	r2, r7, #12
    48ee:	6a3b      	ldr	r3, [r7, #32]
    48f0:	4413      	add	r3, r2
    48f2:	4618      	mov	r0, r3
    48f4:	f7ff ff60 	bl	47b8 <print>
    48f8:	bf00      	nop
    48fa:	3728      	adds	r7, #40	; 0x28
    48fc:	46bd      	mov	sp, r7
    48fe:	bd80      	pop	{r7, pc}

00004900 <cursor_left>:
    4900:	b480      	push	{r7}
    4902:	af00      	add	r7, sp, #0
    4904:	4b1a      	ldr	r3, [pc, #104]	; (4970 <cursor_left+0x70>)
    4906:	781b      	ldrb	r3, [r3, #0]
    4908:	2b01      	cmp	r3, #1
    490a:	d010      	beq.n	492e <cursor_left+0x2e>
    490c:	2b02      	cmp	r3, #2
    490e:	d01a      	beq.n	4946 <cursor_left+0x46>
    4910:	2b00      	cmp	r3, #0
    4912:	d000      	beq.n	4916 <cursor_left+0x16>
    4914:	e028      	b.n	4968 <cursor_left+0x68>
    4916:	4b17      	ldr	r3, [pc, #92]	; (4974 <cursor_left+0x74>)
    4918:	781b      	ldrb	r3, [r3, #0]
    491a:	3b04      	subs	r3, #4
    491c:	2b00      	cmp	r3, #0
    491e:	db1e      	blt.n	495e <cursor_left+0x5e>
    4920:	4b14      	ldr	r3, [pc, #80]	; (4974 <cursor_left+0x74>)
    4922:	781b      	ldrb	r3, [r3, #0]
    4924:	3b04      	subs	r3, #4
    4926:	b2da      	uxtb	r2, r3
    4928:	4b12      	ldr	r3, [pc, #72]	; (4974 <cursor_left+0x74>)
    492a:	701a      	strb	r2, [r3, #0]
    492c:	e017      	b.n	495e <cursor_left+0x5e>
    492e:	4b11      	ldr	r3, [pc, #68]	; (4974 <cursor_left+0x74>)
    4930:	781b      	ldrb	r3, [r3, #0]
    4932:	3b08      	subs	r3, #8
    4934:	2b00      	cmp	r3, #0
    4936:	db14      	blt.n	4962 <cursor_left+0x62>
    4938:	4b0e      	ldr	r3, [pc, #56]	; (4974 <cursor_left+0x74>)
    493a:	781b      	ldrb	r3, [r3, #0]
    493c:	3b08      	subs	r3, #8
    493e:	b2da      	uxtb	r2, r3
    4940:	4b0c      	ldr	r3, [pc, #48]	; (4974 <cursor_left+0x74>)
    4942:	701a      	strb	r2, [r3, #0]
    4944:	e00d      	b.n	4962 <cursor_left+0x62>
    4946:	4b0b      	ldr	r3, [pc, #44]	; (4974 <cursor_left+0x74>)
    4948:	781b      	ldrb	r3, [r3, #0]
    494a:	3b06      	subs	r3, #6
    494c:	2b00      	cmp	r3, #0
    494e:	db0a      	blt.n	4966 <cursor_left+0x66>
    4950:	4b08      	ldr	r3, [pc, #32]	; (4974 <cursor_left+0x74>)
    4952:	781b      	ldrb	r3, [r3, #0]
    4954:	3b06      	subs	r3, #6
    4956:	b2da      	uxtb	r2, r3
    4958:	4b06      	ldr	r3, [pc, #24]	; (4974 <cursor_left+0x74>)
    495a:	701a      	strb	r2, [r3, #0]
    495c:	e003      	b.n	4966 <cursor_left+0x66>
    495e:	bf00      	nop
    4960:	e002      	b.n	4968 <cursor_left+0x68>
    4962:	bf00      	nop
    4964:	e000      	b.n	4968 <cursor_left+0x68>
    4966:	bf00      	nop
    4968:	bf00      	nop
    496a:	46bd      	mov	sp, r7
    496c:	bc80      	pop	{r7}
    496e:	4770      	bx	lr
    4970:	20000150 	.word	0x20000150
    4974:	200005f1 	.word	0x200005f1

00004978 <text_scroller>:
    4978:	b580      	push	{r7, lr}
    497a:	b084      	sub	sp, #16
    497c:	af00      	add	r7, sp, #0
    497e:	6078      	str	r0, [r7, #4]
    4980:	460b      	mov	r3, r1
    4982:	70fb      	strb	r3, [r7, #3]
    4984:	f7fd fbb0 	bl	20e8 <gfx_cls>
    4988:	2002      	movs	r0, #2
    498a:	f7ff fdcb 	bl	4524 <select_font>
    498e:	687b      	ldr	r3, [r7, #4]
    4990:	1c5a      	adds	r2, r3, #1
    4992:	607a      	str	r2, [r7, #4]
    4994:	781b      	ldrb	r3, [r3, #0]
    4996:	73fb      	strb	r3, [r7, #15]
    4998:	e035      	b.n	4a06 <text_scroller+0x8e>
    499a:	2120      	movs	r1, #32
    499c:	2000      	movs	r0, #0
    499e:	f7ff fedf 	bl	4760 <set_cursor>
    49a2:	e00e      	b.n	49c2 <text_scroller+0x4a>
    49a4:	7bfb      	ldrb	r3, [r7, #15]
    49a6:	4618      	mov	r0, r3
    49a8:	f7ff fe4e 	bl	4648 <put_char>
    49ac:	687b      	ldr	r3, [r7, #4]
    49ae:	1c5a      	adds	r2, r3, #1
    49b0:	607a      	str	r2, [r7, #4]
    49b2:	781b      	ldrb	r3, [r3, #0]
    49b4:	73fb      	strb	r3, [r7, #15]
    49b6:	200b      	movs	r0, #11
    49b8:	f7fc ff58 	bl	186c <btn_query_down>
    49bc:	4603      	mov	r3, r0
    49be:	2b00      	cmp	r3, #0
    49c0:	d13c      	bne.n	4a3c <text_scroller+0xc4>
    49c2:	7bfb      	ldrb	r3, [r7, #15]
    49c4:	2b00      	cmp	r3, #0
    49c6:	d002      	beq.n	49ce <text_scroller+0x56>
    49c8:	7bfb      	ldrb	r3, [r7, #15]
    49ca:	2b0a      	cmp	r3, #10
    49cc:	d1ea      	bne.n	49a4 <text_scroller+0x2c>
    49ce:	2300      	movs	r3, #0
    49d0:	73bb      	strb	r3, [r7, #14]
    49d2:	e010      	b.n	49f6 <text_scroller+0x7e>
    49d4:	78fb      	ldrb	r3, [r7, #3]
    49d6:	b29b      	uxth	r3, r3
    49d8:	4618      	mov	r0, r3
    49da:	f000 fbab 	bl	5134 <game_pause>
    49de:	2001      	movs	r0, #1
    49e0:	f7fd fbd6 	bl	2190 <gfx_scroll_up>
    49e4:	200b      	movs	r0, #11
    49e6:	f7fc ff41 	bl	186c <btn_query_down>
    49ea:	4603      	mov	r3, r0
    49ec:	2b00      	cmp	r3, #0
    49ee:	d127      	bne.n	4a40 <text_scroller+0xc8>
    49f0:	7bbb      	ldrb	r3, [r7, #14]
    49f2:	3301      	adds	r3, #1
    49f4:	73bb      	strb	r3, [r7, #14]
    49f6:	7bbb      	ldrb	r3, [r7, #14]
    49f8:	2b07      	cmp	r3, #7
    49fa:	d9eb      	bls.n	49d4 <text_scroller+0x5c>
    49fc:	687b      	ldr	r3, [r7, #4]
    49fe:	1c5a      	adds	r2, r3, #1
    4a00:	607a      	str	r2, [r7, #4]
    4a02:	781b      	ldrb	r3, [r3, #0]
    4a04:	73fb      	strb	r3, [r7, #15]
    4a06:	7bfb      	ldrb	r3, [r7, #15]
    4a08:	2b00      	cmp	r3, #0
    4a0a:	d1c6      	bne.n	499a <text_scroller+0x22>
    4a0c:	2300      	movs	r3, #0
    4a0e:	73fb      	strb	r3, [r7, #15]
    4a10:	e010      	b.n	4a34 <text_scroller+0xbc>
    4a12:	78fb      	ldrb	r3, [r7, #3]
    4a14:	b29b      	uxth	r3, r3
    4a16:	4618      	mov	r0, r3
    4a18:	f000 fb8c 	bl	5134 <game_pause>
    4a1c:	2001      	movs	r0, #1
    4a1e:	f7fd fbb7 	bl	2190 <gfx_scroll_up>
    4a22:	200b      	movs	r0, #11
    4a24:	f7fc ff22 	bl	186c <btn_query_down>
    4a28:	4603      	mov	r3, r0
    4a2a:	2b00      	cmp	r3, #0
    4a2c:	d10a      	bne.n	4a44 <text_scroller+0xcc>
    4a2e:	7bfb      	ldrb	r3, [r7, #15]
    4a30:	3301      	adds	r3, #1
    4a32:	73fb      	strb	r3, [r7, #15]
    4a34:	7bfb      	ldrb	r3, [r7, #15]
    4a36:	2b1f      	cmp	r3, #31
    4a38:	d9eb      	bls.n	4a12 <text_scroller+0x9a>
    4a3a:	e004      	b.n	4a46 <text_scroller+0xce>
    4a3c:	bf00      	nop
    4a3e:	e002      	b.n	4a46 <text_scroller+0xce>
    4a40:	bf00      	nop
    4a42:	e000      	b.n	4a46 <text_scroller+0xce>
    4a44:	bf00      	nop
    4a46:	f7fd fb4f 	bl	20e8 <gfx_cls>
    4a4a:	200b      	movs	r0, #11
    4a4c:	f7fc ff52 	bl	18f4 <btn_wait_up>
    4a50:	bf00      	nop
    4a52:	3710      	adds	r7, #16
    4a54:	46bd      	mov	sp, r7
    4a56:	bd80      	pop	{r7, pc}

00004a58 <prompt_btn>:
    4a58:	b580      	push	{r7, lr}
    4a5a:	af00      	add	r7, sp, #0
    4a5c:	4802      	ldr	r0, [pc, #8]	; (4a68 <prompt_btn+0x10>)
    4a5e:	f7ff feab 	bl	47b8 <print>
    4a62:	bf00      	nop
    4a64:	bd80      	pop	{r7, pc}
    4a66:	bf00      	nop
    4a68:	000057e8 	.word	0x000057e8

00004a6c <clear_screen>:
    4a6c:	b580      	push	{r7, lr}
    4a6e:	af00      	add	r7, sp, #0
    4a70:	f7fd fb3a 	bl	20e8 <gfx_cls>
    4a74:	4b03      	ldr	r3, [pc, #12]	; (4a84 <clear_screen+0x18>)
    4a76:	2200      	movs	r2, #0
    4a78:	701a      	strb	r2, [r3, #0]
    4a7a:	4b03      	ldr	r3, [pc, #12]	; (4a88 <clear_screen+0x1c>)
    4a7c:	2200      	movs	r2, #0
    4a7e:	701a      	strb	r2, [r3, #0]
    4a80:	bf00      	nop
    4a82:	bd80      	pop	{r7, pc}
    4a84:	200005f1 	.word	0x200005f1
    4a88:	200005f2 	.word	0x200005f2

00004a8c <show_cursor>:
    4a8c:	b580      	push	{r7, lr}
    4a8e:	b084      	sub	sp, #16
    4a90:	af00      	add	r7, sp, #0
    4a92:	6078      	str	r0, [r7, #4]
    4a94:	687b      	ldr	r3, [r7, #4]
    4a96:	2b00      	cmp	r3, #0
    4a98:	d001      	beq.n	4a9e <show_cursor+0x12>
    4a9a:	230f      	movs	r3, #15
    4a9c:	e000      	b.n	4aa0 <show_cursor+0x14>
    4a9e:	2300      	movs	r3, #0
    4aa0:	72fb      	strb	r3, [r7, #11]
    4aa2:	4b0c      	ldr	r3, [pc, #48]	; (4ad4 <show_cursor+0x48>)
    4aa4:	781b      	ldrb	r3, [r3, #0]
    4aa6:	60fb      	str	r3, [r7, #12]
    4aa8:	e00a      	b.n	4ac0 <show_cursor+0x34>
    4aaa:	4b0b      	ldr	r3, [pc, #44]	; (4ad8 <show_cursor+0x4c>)
    4aac:	781b      	ldrb	r3, [r3, #0]
    4aae:	3307      	adds	r3, #7
    4ab0:	7afa      	ldrb	r2, [r7, #11]
    4ab2:	4619      	mov	r1, r3
    4ab4:	68f8      	ldr	r0, [r7, #12]
    4ab6:	f7fd fac9 	bl	204c <gfx_plot>
    4aba:	68fb      	ldr	r3, [r7, #12]
    4abc:	3301      	adds	r3, #1
    4abe:	60fb      	str	r3, [r7, #12]
    4ac0:	4b04      	ldr	r3, [pc, #16]	; (4ad4 <show_cursor+0x48>)
    4ac2:	781b      	ldrb	r3, [r3, #0]
    4ac4:	1d9a      	adds	r2, r3, #6
    4ac6:	68fb      	ldr	r3, [r7, #12]
    4ac8:	429a      	cmp	r2, r3
    4aca:	dcee      	bgt.n	4aaa <show_cursor+0x1e>
    4acc:	bf00      	nop
    4ace:	3710      	adds	r7, #16
    4ad0:	46bd      	mov	sp, r7
    4ad2:	bd80      	pop	{r7, pc}
    4ad4:	200005f1 	.word	0x200005f1
    4ad8:	200005f2 	.word	0x200005f2

00004adc <tvout_init>:
    4adc:	b580      	push	{r7, lr}
    4ade:	af00      	add	r7, sp, #0
    4ae0:	4b3e      	ldr	r3, [pc, #248]	; (4bdc <tvout_init+0x100>)
    4ae2:	4a3f      	ldr	r2, [pc, #252]	; (4be0 <tvout_init+0x104>)
    4ae4:	601a      	str	r2, [r3, #0]
    4ae6:	4b3f      	ldr	r3, [pc, #252]	; (4be4 <tvout_init+0x108>)
    4ae8:	4a3f      	ldr	r2, [pc, #252]	; (4be8 <tvout_init+0x10c>)
    4aea:	601a      	str	r2, [r3, #0]
    4aec:	220a      	movs	r2, #10
    4aee:	2108      	movs	r1, #8
    4af0:	483a      	ldr	r0, [pc, #232]	; (4bdc <tvout_init+0x100>)
    4af2:	f7fd f99f 	bl	1e34 <config_pin>
    4af6:	4b39      	ldr	r3, [pc, #228]	; (4bdc <tvout_init+0x100>)
    4af8:	2200      	movs	r2, #0
    4afa:	60da      	str	r2, [r3, #12]
    4afc:	4a3b      	ldr	r2, [pc, #236]	; (4bec <tvout_init+0x110>)
    4afe:	4b3b      	ldr	r3, [pc, #236]	; (4bec <tvout_init+0x110>)
    4b00:	699b      	ldr	r3, [r3, #24]
    4b02:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4b06:	6193      	str	r3, [r2, #24]
    4b08:	4b39      	ldr	r3, [pc, #228]	; (4bf0 <tvout_init+0x114>)
    4b0a:	2278      	movs	r2, #120	; 0x78
    4b0c:	619a      	str	r2, [r3, #24]
    4b0e:	4b38      	ldr	r3, [pc, #224]	; (4bf0 <tvout_init+0x114>)
    4b10:	2201      	movs	r2, #1
    4b12:	621a      	str	r2, [r3, #32]
    4b14:	4b36      	ldr	r3, [pc, #216]	; (4bf0 <tvout_init+0x114>)
    4b16:	2284      	movs	r2, #132	; 0x84
    4b18:	601a      	str	r2, [r3, #0]
    4b1a:	4b35      	ldr	r3, [pc, #212]	; (4bf0 <tvout_init+0x114>)
    4b1c:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4b20:	62da      	str	r2, [r3, #44]	; 0x2c
    4b22:	4b33      	ldr	r3, [pc, #204]	; (4bf0 <tvout_init+0x114>)
    4b24:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4b28:	635a      	str	r2, [r3, #52]	; 0x34
    4b2a:	4b31      	ldr	r3, [pc, #196]	; (4bf0 <tvout_init+0x114>)
    4b2c:	f240 1265 	movw	r2, #357	; 0x165
    4b30:	639a      	str	r2, [r3, #56]	; 0x38
    4b32:	4a2f      	ldr	r2, [pc, #188]	; (4bf0 <tvout_init+0x114>)
    4b34:	4b2e      	ldr	r3, [pc, #184]	; (4bf0 <tvout_init+0x114>)
    4b36:	695b      	ldr	r3, [r3, #20]
    4b38:	f043 0301 	orr.w	r3, r3, #1
    4b3c:	6153      	str	r3, [r2, #20]
    4b3e:	4b2c      	ldr	r3, [pc, #176]	; (4bf0 <tvout_init+0x114>)
    4b40:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4b44:	645a      	str	r2, [r3, #68]	; 0x44
    4b46:	4b2a      	ldr	r3, [pc, #168]	; (4bf0 <tvout_init+0x114>)
    4b48:	2200      	movs	r2, #0
    4b4a:	611a      	str	r2, [r3, #16]
    4b4c:	4a28      	ldr	r2, [pc, #160]	; (4bf0 <tvout_init+0x114>)
    4b4e:	4b28      	ldr	r3, [pc, #160]	; (4bf0 <tvout_init+0x114>)
    4b50:	68db      	ldr	r3, [r3, #12]
    4b52:	f043 0301 	orr.w	r3, r3, #1
    4b56:	60d3      	str	r3, [r2, #12]
    4b58:	2100      	movs	r1, #0
    4b5a:	2019      	movs	r0, #25
    4b5c:	f7fe fb6e 	bl	323c <set_int_priority>
    4b60:	2100      	movs	r1, #0
    4b62:	201b      	movs	r0, #27
    4b64:	f7fe fb6a 	bl	323c <set_int_priority>
    4b68:	2019      	movs	r0, #25
    4b6a:	f7fe faad 	bl	30c8 <enable_interrupt>
    4b6e:	201b      	movs	r0, #27
    4b70:	f7fe faaa 	bl	30c8 <enable_interrupt>
    4b74:	4a1e      	ldr	r2, [pc, #120]	; (4bf0 <tvout_init+0x114>)
    4b76:	4b1e      	ldr	r3, [pc, #120]	; (4bf0 <tvout_init+0x114>)
    4b78:	681b      	ldr	r3, [r3, #0]
    4b7a:	f043 0301 	orr.w	r3, r3, #1
    4b7e:	6013      	str	r3, [r2, #0]
    4b80:	220a      	movs	r2, #10
    4b82:	2100      	movs	r1, #0
    4b84:	481b      	ldr	r0, [pc, #108]	; (4bf4 <tvout_init+0x118>)
    4b86:	f7fd f955 	bl	1e34 <config_pin>
    4b8a:	4a18      	ldr	r2, [pc, #96]	; (4bec <tvout_init+0x110>)
    4b8c:	4b17      	ldr	r3, [pc, #92]	; (4bec <tvout_init+0x110>)
    4b8e:	69db      	ldr	r3, [r3, #28]
    4b90:	f043 0302 	orr.w	r3, r3, #2
    4b94:	61d3      	str	r3, [r2, #28]
    4b96:	4b18      	ldr	r3, [pc, #96]	; (4bf8 <tvout_init+0x11c>)
    4b98:	2278      	movs	r2, #120	; 0x78
    4b9a:	61da      	str	r2, [r3, #28]
    4b9c:	4b16      	ldr	r3, [pc, #88]	; (4bf8 <tvout_init+0x11c>)
    4b9e:	2284      	movs	r2, #132	; 0x84
    4ba0:	601a      	str	r2, [r3, #0]
    4ba2:	4b15      	ldr	r3, [pc, #84]	; (4bf8 <tvout_init+0x11c>)
    4ba4:	2213      	movs	r2, #19
    4ba6:	62da      	str	r2, [r3, #44]	; 0x2c
    4ba8:	4b13      	ldr	r3, [pc, #76]	; (4bf8 <tvout_init+0x11c>)
    4baa:	220a      	movs	r2, #10
    4bac:	63da      	str	r2, [r3, #60]	; 0x3c
    4bae:	4a12      	ldr	r2, [pc, #72]	; (4bf8 <tvout_init+0x11c>)
    4bb0:	4b11      	ldr	r3, [pc, #68]	; (4bf8 <tvout_init+0x11c>)
    4bb2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4bb4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4bb8:	6453      	str	r3, [r2, #68]	; 0x44
    4bba:	4a0f      	ldr	r2, [pc, #60]	; (4bf8 <tvout_init+0x11c>)
    4bbc:	4b0e      	ldr	r3, [pc, #56]	; (4bf8 <tvout_init+0x11c>)
    4bbe:	695b      	ldr	r3, [r3, #20]
    4bc0:	f043 0301 	orr.w	r3, r3, #1
    4bc4:	6153      	str	r3, [r2, #20]
    4bc6:	4b0c      	ldr	r3, [pc, #48]	; (4bf8 <tvout_init+0x11c>)
    4bc8:	2200      	movs	r2, #0
    4bca:	611a      	str	r2, [r3, #16]
    4bcc:	4a0a      	ldr	r2, [pc, #40]	; (4bf8 <tvout_init+0x11c>)
    4bce:	4b0a      	ldr	r3, [pc, #40]	; (4bf8 <tvout_init+0x11c>)
    4bd0:	681b      	ldr	r3, [r3, #0]
    4bd2:	f043 0301 	orr.w	r3, r3, #1
    4bd6:	6013      	str	r3, [r2, #0]
    4bd8:	bf00      	nop
    4bda:	bd80      	pop	{r7, pc}
    4bdc:	40010800 	.word	0x40010800
    4be0:	88883333 	.word	0x88883333
    4be4:	40010804 	.word	0x40010804
    4be8:	84484444 	.word	0x84484444
    4bec:	40021000 	.word	0x40021000
    4bf0:	40012c00 	.word	0x40012c00
    4bf4:	40010c00 	.word	0x40010c00
    4bf8:	40000400 	.word	0x40000400

00004bfc <TV_OUT_handler>:
    4bfc:	4668      	mov	r0, sp
    4bfe:	f020 0107 	bic.w	r1, r0, #7
    4c02:	468d      	mov	sp, r1
    4c04:	b471      	push	{r0, r4, r5, r6}
    4c06:	4a31      	ldr	r2, [pc, #196]	; (4ccc <TV_OUT_handler+0xd0>)
    4c08:	6a13      	ldr	r3, [r2, #32]
    4c0a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4c0e:	6213      	str	r3, [r2, #32]
    4c10:	492f      	ldr	r1, [pc, #188]	; (4cd0 <TV_OUT_handler+0xd4>)
    4c12:	f240 2209 	movw	r2, #521	; 0x209
    4c16:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4c18:	4293      	cmp	r3, r2
    4c1a:	d9fc      	bls.n	4c16 <TV_OUT_handler+0x1a>
    4c1c:	4a2b      	ldr	r2, [pc, #172]	; (4ccc <TV_OUT_handler+0xd0>)
    4c1e:	6a13      	ldr	r3, [r2, #32]
    4c20:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4c24:	6213      	str	r3, [r2, #32]
    4c26:	4b2b      	ldr	r3, [pc, #172]	; (4cd4 <TV_OUT_handler+0xd8>)
    4c28:	881d      	ldrh	r5, [r3, #0]
    4c2a:	b2ad      	uxth	r5, r5
    4c2c:	4b2a      	ldr	r3, [pc, #168]	; (4cd8 <TV_OUT_handler+0xdc>)
    4c2e:	7818      	ldrb	r0, [r3, #0]
    4c30:	4b2a      	ldr	r3, [pc, #168]	; (4cdc <TV_OUT_handler+0xe0>)
    4c32:	781b      	ldrb	r3, [r3, #0]
    4c34:	fb95 f5f3 	sdiv	r5, r5, r3
    4c38:	4b29      	ldr	r3, [pc, #164]	; (4ce0 <TV_OUT_handler+0xe4>)
    4c3a:	fb00 3505 	mla	r5, r0, r5, r3
    4c3e:	4b29      	ldr	r3, [pc, #164]	; (4ce4 <TV_OUT_handler+0xe8>)
    4c40:	881a      	ldrh	r2, [r3, #0]
    4c42:	4923      	ldr	r1, [pc, #140]	; (4cd0 <TV_OUT_handler+0xd4>)
    4c44:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4c46:	4293      	cmp	r3, r2
    4c48:	d3fc      	bcc.n	4c44 <TV_OUT_handler+0x48>
    4c4a:	4b27      	ldr	r3, [pc, #156]	; (4ce8 <TV_OUT_handler+0xec>)
    4c4c:	461a      	mov	r2, r3
    4c4e:	6812      	ldr	r2, [r2, #0]
    4c50:	f002 0207 	and.w	r2, r2, #7
    4c54:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4c58:	4497      	add	pc, r2
    4c5a:	bf00      	nop
    4c5c:	bf00      	nop
    4c5e:	bf00      	nop
    4c60:	bf00      	nop
    4c62:	bf00      	nop
    4c64:	bf00      	nop
    4c66:	bf00      	nop
    4c68:	bf00      	nop
    4c6a:	4a18      	ldr	r2, [pc, #96]	; (4ccc <TV_OUT_handler+0xd0>)
    4c6c:	6a11      	ldr	r1, [r2, #32]
    4c6e:	4b1f      	ldr	r3, [pc, #124]	; (4cec <TV_OUT_handler+0xf0>)
    4c70:	881b      	ldrh	r3, [r3, #0]
    4c72:	430b      	orrs	r3, r1
    4c74:	6213      	str	r3, [r2, #32]
    4c76:	b1b8      	cbz	r0, 4ca8 <TV_OUT_handler+0xac>
    4c78:	462b      	mov	r3, r5
    4c7a:	481d      	ldr	r0, [pc, #116]	; (4cf0 <TV_OUT_handler+0xf4>)
    4c7c:	491d      	ldr	r1, [pc, #116]	; (4cf4 <TV_OUT_handler+0xf8>)
    4c7e:	4e16      	ldr	r6, [pc, #88]	; (4cd8 <TV_OUT_handler+0xdc>)
    4c80:	781a      	ldrb	r2, [r3, #0]
    4c82:	0912      	lsrs	r2, r2, #4
    4c84:	8002      	strh	r2, [r0, #0]
    4c86:	780c      	ldrb	r4, [r1, #0]
    4c88:	4622      	mov	r2, r4
    4c8a:	3a01      	subs	r2, #1
    4c8c:	d1fd      	bne.n	4c8a <TV_OUT_handler+0x8e>
    4c8e:	f813 2b01 	ldrb.w	r2, [r3], #1
    4c92:	f002 020f 	and.w	r2, r2, #15
    4c96:	8002      	strh	r2, [r0, #0]
    4c98:	780c      	ldrb	r4, [r1, #0]
    4c9a:	4622      	mov	r2, r4
    4c9c:	3a01      	subs	r2, #1
    4c9e:	d1fd      	bne.n	4c9c <TV_OUT_handler+0xa0>
    4ca0:	1b5c      	subs	r4, r3, r5
    4ca2:	7832      	ldrb	r2, [r6, #0]
    4ca4:	4294      	cmp	r4, r2
    4ca6:	d3eb      	bcc.n	4c80 <TV_OUT_handler+0x84>
    4ca8:	2200      	movs	r2, #0
    4caa:	4b13      	ldr	r3, [pc, #76]	; (4cf8 <TV_OUT_handler+0xfc>)
    4cac:	60da      	str	r2, [r3, #12]
    4cae:	4a07      	ldr	r2, [pc, #28]	; (4ccc <TV_OUT_handler+0xd0>)
    4cb0:	6a13      	ldr	r3, [r2, #32]
    4cb2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4cb6:	6213      	str	r3, [r2, #32]
    4cb8:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4cbc:	6913      	ldr	r3, [r2, #16]
    4cbe:	f023 0304 	bic.w	r3, r3, #4
    4cc2:	6113      	str	r3, [r2, #16]
    4cc4:	bc71      	pop	{r0, r4, r5, r6}
    4cc6:	4685      	mov	sp, r0
    4cc8:	4770      	bx	lr
    4cca:	bf00      	nop
    4ccc:	40000400 	.word	0x40000400
    4cd0:	40012c00 	.word	0x40012c00
    4cd4:	200005f8 	.word	0x200005f8
    4cd8:	2000015c 	.word	0x2000015c
    4cdc:	2000015d 	.word	0x2000015d
    4ce0:	20002630 	.word	0x20002630
    4ce4:	2000015a 	.word	0x2000015a
    4ce8:	40012c24 	.word	0x40012c24
    4cec:	20000162 	.word	0x20000162
    4cf0:	4001080c 	.word	0x4001080c
    4cf4:	2000015e 	.word	0x2000015e
    4cf8:	40010800 	.word	0x40010800

00004cfc <TV_SYNC_handler>:
    4cfc:	4668      	mov	r0, sp
    4cfe:	f020 0107 	bic.w	r1, r0, #7
    4d02:	468d      	mov	sp, r1
    4d04:	b501      	push	{r0, lr}
    4d06:	4a84      	ldr	r2, [pc, #528]	; (4f18 <TV_SYNC_handler+0x21c>)
    4d08:	8813      	ldrh	r3, [r2, #0]
    4d0a:	3301      	adds	r3, #1
    4d0c:	b29b      	uxth	r3, r3
    4d0e:	8013      	strh	r3, [r2, #0]
    4d10:	4a82      	ldr	r2, [pc, #520]	; (4f1c <TV_SYNC_handler+0x220>)
    4d12:	6813      	ldr	r3, [r2, #0]
    4d14:	3301      	adds	r3, #1
    4d16:	6013      	str	r3, [r2, #0]
    4d18:	4b81      	ldr	r3, [pc, #516]	; (4f20 <TV_SYNC_handler+0x224>)
    4d1a:	881b      	ldrh	r3, [r3, #0]
    4d1c:	b29b      	uxth	r3, r3
    4d1e:	2b09      	cmp	r3, #9
    4d20:	f200 8088 	bhi.w	4e34 <TV_SYNC_handler+0x138>
    4d24:	e8df f013 	tbh	[pc, r3, lsl #1]
    4d28:	002c000a 	.word	0x002c000a
    4d2c:	006e004c 	.word	0x006e004c
    4d30:	0097008f 	.word	0x0097008f
    4d34:	00bb00ac 	.word	0x00bb00ac
    4d38:	010c00da 	.word	0x010c00da
    4d3c:	4b79      	ldr	r3, [pc, #484]	; (4f24 <TV_SYNC_handler+0x228>)
    4d3e:	881b      	ldrh	r3, [r3, #0]
    4d40:	b29b      	uxth	r3, r3
    4d42:	b18b      	cbz	r3, 4d68 <TV_SYNC_handler+0x6c>
    4d44:	4a77      	ldr	r2, [pc, #476]	; (4f24 <TV_SYNC_handler+0x228>)
    4d46:	8813      	ldrh	r3, [r2, #0]
    4d48:	3301      	adds	r3, #1
    4d4a:	b29b      	uxth	r3, r3
    4d4c:	8013      	strh	r3, [r2, #0]
    4d4e:	8813      	ldrh	r3, [r2, #0]
    4d50:	b29b      	uxth	r3, r3
    4d52:	2b06      	cmp	r3, #6
    4d54:	d16e      	bne.n	4e34 <TV_SYNC_handler+0x138>
    4d56:	2200      	movs	r2, #0
    4d58:	4b72      	ldr	r3, [pc, #456]	; (4f24 <TV_SYNC_handler+0x228>)
    4d5a:	801a      	strh	r2, [r3, #0]
    4d5c:	4a70      	ldr	r2, [pc, #448]	; (4f20 <TV_SYNC_handler+0x224>)
    4d5e:	8813      	ldrh	r3, [r2, #0]
    4d60:	3301      	adds	r3, #1
    4d62:	b29b      	uxth	r3, r3
    4d64:	8013      	strh	r3, [r2, #0]
    4d66:	e065      	b.n	4e34 <TV_SYNC_handler+0x138>
    4d68:	4b6f      	ldr	r3, [pc, #444]	; (4f28 <TV_SYNC_handler+0x22c>)
    4d6a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4d6e:	62da      	str	r2, [r3, #44]	; 0x2c
    4d70:	22a4      	movs	r2, #164	; 0xa4
    4d72:	635a      	str	r2, [r3, #52]	; 0x34
    4d74:	4a6b      	ldr	r2, [pc, #428]	; (4f24 <TV_SYNC_handler+0x228>)
    4d76:	8813      	ldrh	r3, [r2, #0]
    4d78:	3301      	adds	r3, #1
    4d7a:	b29b      	uxth	r3, r3
    4d7c:	8013      	strh	r3, [r2, #0]
    4d7e:	e059      	b.n	4e34 <TV_SYNC_handler+0x138>
    4d80:	4b68      	ldr	r3, [pc, #416]	; (4f24 <TV_SYNC_handler+0x228>)
    4d82:	881b      	ldrh	r3, [r3, #0]
    4d84:	b29b      	uxth	r3, r3
    4d86:	b18b      	cbz	r3, 4dac <TV_SYNC_handler+0xb0>
    4d88:	4a66      	ldr	r2, [pc, #408]	; (4f24 <TV_SYNC_handler+0x228>)
    4d8a:	8813      	ldrh	r3, [r2, #0]
    4d8c:	3301      	adds	r3, #1
    4d8e:	b29b      	uxth	r3, r3
    4d90:	8013      	strh	r3, [r2, #0]
    4d92:	8813      	ldrh	r3, [r2, #0]
    4d94:	b29b      	uxth	r3, r3
    4d96:	2b06      	cmp	r3, #6
    4d98:	d14c      	bne.n	4e34 <TV_SYNC_handler+0x138>
    4d9a:	2200      	movs	r2, #0
    4d9c:	4b61      	ldr	r3, [pc, #388]	; (4f24 <TV_SYNC_handler+0x228>)
    4d9e:	801a      	strh	r2, [r3, #0]
    4da0:	4a5f      	ldr	r2, [pc, #380]	; (4f20 <TV_SYNC_handler+0x224>)
    4da2:	8813      	ldrh	r3, [r2, #0]
    4da4:	3301      	adds	r3, #1
    4da6:	b29b      	uxth	r3, r3
    4da8:	8013      	strh	r3, [r2, #0]
    4daa:	e043      	b.n	4e34 <TV_SYNC_handler+0x138>
    4dac:	f240 7294 	movw	r2, #1940	; 0x794
    4db0:	4b5d      	ldr	r3, [pc, #372]	; (4f28 <TV_SYNC_handler+0x22c>)
    4db2:	635a      	str	r2, [r3, #52]	; 0x34
    4db4:	4a5b      	ldr	r2, [pc, #364]	; (4f24 <TV_SYNC_handler+0x228>)
    4db6:	8813      	ldrh	r3, [r2, #0]
    4db8:	3301      	adds	r3, #1
    4dba:	b29b      	uxth	r3, r3
    4dbc:	8013      	strh	r3, [r2, #0]
    4dbe:	e039      	b.n	4e34 <TV_SYNC_handler+0x138>
    4dc0:	4b58      	ldr	r3, [pc, #352]	; (4f24 <TV_SYNC_handler+0x228>)
    4dc2:	881b      	ldrh	r3, [r3, #0]
    4dc4:	b29b      	uxth	r3, r3
    4dc6:	b153      	cbz	r3, 4dde <TV_SYNC_handler+0xe2>
    4dc8:	4b56      	ldr	r3, [pc, #344]	; (4f24 <TV_SYNC_handler+0x228>)
    4dca:	881b      	ldrh	r3, [r3, #0]
    4dcc:	b29b      	uxth	r3, r3
    4dce:	2b06      	cmp	r3, #6
    4dd0:	d00e      	beq.n	4df0 <TV_SYNC_handler+0xf4>
    4dd2:	4a54      	ldr	r2, [pc, #336]	; (4f24 <TV_SYNC_handler+0x228>)
    4dd4:	8813      	ldrh	r3, [r2, #0]
    4dd6:	3301      	adds	r3, #1
    4dd8:	b29b      	uxth	r3, r3
    4dda:	8013      	strh	r3, [r2, #0]
    4ddc:	e02a      	b.n	4e34 <TV_SYNC_handler+0x138>
    4dde:	22a4      	movs	r2, #164	; 0xa4
    4de0:	4b51      	ldr	r3, [pc, #324]	; (4f28 <TV_SYNC_handler+0x22c>)
    4de2:	635a      	str	r2, [r3, #52]	; 0x34
    4de4:	4a4f      	ldr	r2, [pc, #316]	; (4f24 <TV_SYNC_handler+0x228>)
    4de6:	8813      	ldrh	r3, [r2, #0]
    4de8:	3301      	adds	r3, #1
    4dea:	b29b      	uxth	r3, r3
    4dec:	8013      	strh	r3, [r2, #0]
    4dee:	e021      	b.n	4e34 <TV_SYNC_handler+0x138>
    4df0:	4a4b      	ldr	r2, [pc, #300]	; (4f20 <TV_SYNC_handler+0x224>)
    4df2:	8813      	ldrh	r3, [r2, #0]
    4df4:	3301      	adds	r3, #1
    4df6:	b29b      	uxth	r3, r3
    4df8:	8013      	strh	r3, [r2, #0]
    4dfa:	4b4c      	ldr	r3, [pc, #304]	; (4f2c <TV_SYNC_handler+0x230>)
    4dfc:	881b      	ldrh	r3, [r3, #0]
    4dfe:	f013 0f01 	tst.w	r3, #1
    4e02:	d017      	beq.n	4e34 <TV_SYNC_handler+0x138>
    4e04:	4b48      	ldr	r3, [pc, #288]	; (4f28 <TV_SYNC_handler+0x22c>)
    4e06:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4e0a:	62da      	str	r2, [r3, #44]	; 0x2c
    4e0c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4e10:	635a      	str	r2, [r3, #52]	; 0x34
    4e12:	4a46      	ldr	r2, [pc, #280]	; (4f2c <TV_SYNC_handler+0x230>)
    4e14:	8813      	ldrh	r3, [r2, #0]
    4e16:	f023 0302 	bic.w	r3, r3, #2
    4e1a:	041b      	lsls	r3, r3, #16
    4e1c:	0c1b      	lsrs	r3, r3, #16
    4e1e:	8013      	strh	r3, [r2, #0]
    4e20:	4a3d      	ldr	r2, [pc, #244]	; (4f18 <TV_SYNC_handler+0x21c>)
    4e22:	8813      	ldrh	r3, [r2, #0]
    4e24:	f3c3 038d 	ubfx	r3, r3, #2, #14
    4e28:	8013      	strh	r3, [r2, #0]
    4e2a:	4a3d      	ldr	r2, [pc, #244]	; (4f20 <TV_SYNC_handler+0x224>)
    4e2c:	8813      	ldrh	r3, [r2, #0]
    4e2e:	3301      	adds	r3, #1
    4e30:	b29b      	uxth	r3, r3
    4e32:	8013      	strh	r3, [r2, #0]
    4e34:	4a3c      	ldr	r2, [pc, #240]	; (4f28 <TV_SYNC_handler+0x22c>)
    4e36:	6913      	ldr	r3, [r2, #16]
    4e38:	f023 0301 	bic.w	r3, r3, #1
    4e3c:	6113      	str	r3, [r2, #16]
    4e3e:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    4e42:	4685      	mov	sp, r0
    4e44:	4770      	bx	lr
    4e46:	f7fc fd03 	bl	1850 <read_gamepad>
    4e4a:	4a35      	ldr	r2, [pc, #212]	; (4f20 <TV_SYNC_handler+0x224>)
    4e4c:	8813      	ldrh	r3, [r2, #0]
    4e4e:	3301      	adds	r3, #1
    4e50:	b29b      	uxth	r3, r3
    4e52:	8013      	strh	r3, [r2, #0]
    4e54:	e7ee      	b.n	4e34 <TV_SYNC_handler+0x138>
    4e56:	4b36      	ldr	r3, [pc, #216]	; (4f30 <TV_SYNC_handler+0x234>)
    4e58:	881b      	ldrh	r3, [r3, #0]
    4e5a:	b29b      	uxth	r3, r3
    4e5c:	b13b      	cbz	r3, 4e6e <TV_SYNC_handler+0x172>
    4e5e:	4a34      	ldr	r2, [pc, #208]	; (4f30 <TV_SYNC_handler+0x234>)
    4e60:	8813      	ldrh	r3, [r2, #0]
    4e62:	3b01      	subs	r3, #1
    4e64:	b29b      	uxth	r3, r3
    4e66:	8013      	strh	r3, [r2, #0]
    4e68:	8813      	ldrh	r3, [r2, #0]
    4e6a:	b29b      	uxth	r3, r3
    4e6c:	b12b      	cbz	r3, 4e7a <TV_SYNC_handler+0x17e>
    4e6e:	4a2c      	ldr	r2, [pc, #176]	; (4f20 <TV_SYNC_handler+0x224>)
    4e70:	8813      	ldrh	r3, [r2, #0]
    4e72:	3301      	adds	r3, #1
    4e74:	b29b      	uxth	r3, r3
    4e76:	8013      	strh	r3, [r2, #0]
    4e78:	e7dc      	b.n	4e34 <TV_SYNC_handler+0x138>
    4e7a:	f7ff f925 	bl	40c8 <sound_stop>
    4e7e:	e7f6      	b.n	4e6e <TV_SYNC_handler+0x172>
    4e80:	4b2c      	ldr	r3, [pc, #176]	; (4f34 <TV_SYNC_handler+0x238>)
    4e82:	881b      	ldrh	r3, [r3, #0]
    4e84:	b29b      	uxth	r3, r3
    4e86:	b123      	cbz	r3, 4e92 <TV_SYNC_handler+0x196>
    4e88:	4a2a      	ldr	r2, [pc, #168]	; (4f34 <TV_SYNC_handler+0x238>)
    4e8a:	8813      	ldrh	r3, [r2, #0]
    4e8c:	3b01      	subs	r3, #1
    4e8e:	b29b      	uxth	r3, r3
    4e90:	8013      	strh	r3, [r2, #0]
    4e92:	4a23      	ldr	r2, [pc, #140]	; (4f20 <TV_SYNC_handler+0x224>)
    4e94:	8813      	ldrh	r3, [r2, #0]
    4e96:	3301      	adds	r3, #1
    4e98:	b29b      	uxth	r3, r3
    4e9a:	8013      	strh	r3, [r2, #0]
    4e9c:	e7ca      	b.n	4e34 <TV_SYNC_handler+0x138>
    4e9e:	4b1e      	ldr	r3, [pc, #120]	; (4f18 <TV_SYNC_handler+0x21c>)
    4ea0:	881b      	ldrh	r3, [r3, #0]
    4ea2:	b29b      	uxth	r3, r3
    4ea4:	4a24      	ldr	r2, [pc, #144]	; (4f38 <TV_SYNC_handler+0x23c>)
    4ea6:	8812      	ldrh	r2, [r2, #0]
    4ea8:	429a      	cmp	r2, r3
    4eaa:	d1c3      	bne.n	4e34 <TV_SYNC_handler+0x138>
    4eac:	4b1e      	ldr	r3, [pc, #120]	; (4f28 <TV_SYNC_handler+0x22c>)
    4eae:	691a      	ldr	r2, [r3, #16]
    4eb0:	f022 0204 	bic.w	r2, r2, #4
    4eb4:	611a      	str	r2, [r3, #16]
    4eb6:	68da      	ldr	r2, [r3, #12]
    4eb8:	f042 0204 	orr.w	r2, r2, #4
    4ebc:	60da      	str	r2, [r3, #12]
    4ebe:	4a1b      	ldr	r2, [pc, #108]	; (4f2c <TV_SYNC_handler+0x230>)
    4ec0:	8813      	ldrh	r3, [r2, #0]
    4ec2:	b29b      	uxth	r3, r3
    4ec4:	f043 0304 	orr.w	r3, r3, #4
    4ec8:	8013      	strh	r3, [r2, #0]
    4eca:	4a15      	ldr	r2, [pc, #84]	; (4f20 <TV_SYNC_handler+0x224>)
    4ecc:	8813      	ldrh	r3, [r2, #0]
    4ece:	3301      	adds	r3, #1
    4ed0:	b29b      	uxth	r3, r3
    4ed2:	8013      	strh	r3, [r2, #0]
    4ed4:	2200      	movs	r2, #0
    4ed6:	4b13      	ldr	r3, [pc, #76]	; (4f24 <TV_SYNC_handler+0x228>)
    4ed8:	801a      	strh	r2, [r3, #0]
    4eda:	e7ab      	b.n	4e34 <TV_SYNC_handler+0x138>
    4edc:	4a11      	ldr	r2, [pc, #68]	; (4f24 <TV_SYNC_handler+0x228>)
    4ede:	8813      	ldrh	r3, [r2, #0]
    4ee0:	3301      	adds	r3, #1
    4ee2:	b29b      	uxth	r3, r3
    4ee4:	8013      	strh	r3, [r2, #0]
    4ee6:	4b0c      	ldr	r3, [pc, #48]	; (4f18 <TV_SYNC_handler+0x21c>)
    4ee8:	881b      	ldrh	r3, [r3, #0]
    4eea:	b29b      	uxth	r3, r3
    4eec:	4a13      	ldr	r2, [pc, #76]	; (4f3c <TV_SYNC_handler+0x240>)
    4eee:	8812      	ldrh	r2, [r2, #0]
    4ef0:	429a      	cmp	r2, r3
    4ef2:	d19f      	bne.n	4e34 <TV_SYNC_handler+0x138>
    4ef4:	4a0c      	ldr	r2, [pc, #48]	; (4f28 <TV_SYNC_handler+0x22c>)
    4ef6:	68d3      	ldr	r3, [r2, #12]
    4ef8:	f023 0304 	bic.w	r3, r3, #4
    4efc:	60d3      	str	r3, [r2, #12]
    4efe:	4a0b      	ldr	r2, [pc, #44]	; (4f2c <TV_SYNC_handler+0x230>)
    4f00:	8813      	ldrh	r3, [r2, #0]
    4f02:	f023 0304 	bic.w	r3, r3, #4
    4f06:	041b      	lsls	r3, r3, #16
    4f08:	0c1b      	lsrs	r3, r3, #16
    4f0a:	8013      	strh	r3, [r2, #0]
    4f0c:	4a04      	ldr	r2, [pc, #16]	; (4f20 <TV_SYNC_handler+0x224>)
    4f0e:	8813      	ldrh	r3, [r2, #0]
    4f10:	3301      	adds	r3, #1
    4f12:	b29b      	uxth	r3, r3
    4f14:	8013      	strh	r3, [r2, #0]
    4f16:	e78d      	b.n	4e34 <TV_SYNC_handler+0x138>
    4f18:	200005fa 	.word	0x200005fa
    4f1c:	200005fc 	.word	0x200005fc
    4f20:	200005f4 	.word	0x200005f4
    4f24:	200005f8 	.word	0x200005f8
    4f28:	40012c00 	.word	0x40012c00
    4f2c:	200005f6 	.word	0x200005f6
    4f30:	20004d92 	.word	0x20004d92
    4f34:	20004d90 	.word	0x20004d90
    4f38:	20000156 	.word	0x20000156
    4f3c:	20000158 	.word	0x20000158
    4f40:	4b11      	ldr	r3, [pc, #68]	; (4f88 <TV_SYNC_handler+0x28c>)
    4f42:	881b      	ldrh	r3, [r3, #0]
    4f44:	b29b      	uxth	r3, r3
    4f46:	f240 1207 	movw	r2, #263	; 0x107
    4f4a:	4293      	cmp	r3, r2
    4f4c:	f47f af72 	bne.w	4e34 <TV_SYNC_handler+0x138>
    4f50:	4b0e      	ldr	r3, [pc, #56]	; (4f8c <TV_SYNC_handler+0x290>)
    4f52:	881b      	ldrh	r3, [r3, #0]
    4f54:	f013 0f01 	tst.w	r3, #1
    4f58:	d003      	beq.n	4f62 <TV_SYNC_handler+0x266>
    4f5a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4f5e:	4b0c      	ldr	r3, [pc, #48]	; (4f90 <TV_SYNC_handler+0x294>)
    4f60:	62da      	str	r2, [r3, #44]	; 0x2c
    4f62:	4a0a      	ldr	r2, [pc, #40]	; (4f8c <TV_SYNC_handler+0x290>)
    4f64:	8813      	ldrh	r3, [r2, #0]
    4f66:	b29b      	uxth	r3, r3
    4f68:	f083 0301 	eor.w	r3, r3, #1
    4f6c:	8013      	strh	r3, [r2, #0]
    4f6e:	8813      	ldrh	r3, [r2, #0]
    4f70:	b29b      	uxth	r3, r3
    4f72:	f043 0302 	orr.w	r3, r3, #2
    4f76:	8013      	strh	r3, [r2, #0]
    4f78:	2300      	movs	r3, #0
    4f7a:	4a03      	ldr	r2, [pc, #12]	; (4f88 <TV_SYNC_handler+0x28c>)
    4f7c:	8013      	strh	r3, [r2, #0]
    4f7e:	4a05      	ldr	r2, [pc, #20]	; (4f94 <TV_SYNC_handler+0x298>)
    4f80:	8013      	strh	r3, [r2, #0]
    4f82:	4a05      	ldr	r2, [pc, #20]	; (4f98 <TV_SYNC_handler+0x29c>)
    4f84:	8013      	strh	r3, [r2, #0]
    4f86:	e755      	b.n	4e34 <TV_SYNC_handler+0x138>
    4f88:	200005fa 	.word	0x200005fa
    4f8c:	200005f6 	.word	0x200005f6
    4f90:	40012c00 	.word	0x40012c00
    4f94:	200005f8 	.word	0x200005f8
    4f98:	200005f4 	.word	0x200005f4

00004f9c <frame_sync>:
    4f9c:	b480      	push	{r7}
    4f9e:	af00      	add	r7, sp, #0
    4fa0:	bf00      	nop
    4fa2:	4b05      	ldr	r3, [pc, #20]	; (4fb8 <frame_sync+0x1c>)
    4fa4:	881b      	ldrh	r3, [r3, #0]
    4fa6:	b29b      	uxth	r3, r3
    4fa8:	f003 0302 	and.w	r3, r3, #2
    4fac:	2b00      	cmp	r3, #0
    4fae:	d0f8      	beq.n	4fa2 <frame_sync+0x6>
    4fb0:	bf00      	nop
    4fb2:	46bd      	mov	sp, r7
    4fb4:	bc80      	pop	{r7}
    4fb6:	4770      	bx	lr
    4fb8:	200005f6 	.word	0x200005f6

00004fbc <wait_sync_end>:
    4fbc:	b480      	push	{r7}
    4fbe:	af00      	add	r7, sp, #0
    4fc0:	bf00      	nop
    4fc2:	4b05      	ldr	r3, [pc, #20]	; (4fd8 <wait_sync_end+0x1c>)
    4fc4:	881b      	ldrh	r3, [r3, #0]
    4fc6:	b29b      	uxth	r3, r3
    4fc8:	f003 0302 	and.w	r3, r3, #2
    4fcc:	2b00      	cmp	r3, #0
    4fce:	d1f8      	bne.n	4fc2 <wait_sync_end+0x6>
    4fd0:	bf00      	nop
    4fd2:	46bd      	mov	sp, r7
    4fd4:	bc80      	pop	{r7}
    4fd6:	4770      	bx	lr
    4fd8:	200005f6 	.word	0x200005f6

00004fdc <set_video_mode>:
    4fdc:	b580      	push	{r7, lr}
    4fde:	b082      	sub	sp, #8
    4fe0:	af00      	add	r7, sp, #0
    4fe2:	4603      	mov	r3, r0
    4fe4:	71fb      	strb	r3, [r7, #7]
    4fe6:	f7ff ffd9 	bl	4f9c <frame_sync>
    4fea:	4a3c      	ldr	r2, [pc, #240]	; (50dc <set_video_mode+0x100>)
    4fec:	79fb      	ldrb	r3, [r7, #7]
    4fee:	7013      	strb	r3, [r2, #0]
    4ff0:	79fb      	ldrb	r3, [r7, #7]
    4ff2:	2b00      	cmp	r3, #0
    4ff4:	d103      	bne.n	4ffe <set_video_mode+0x22>
    4ff6:	4b3a      	ldr	r3, [pc, #232]	; (50e0 <set_video_mode+0x104>)
    4ff8:	2204      	movs	r2, #4
    4ffa:	701a      	strb	r2, [r3, #0]
    4ffc:	e002      	b.n	5004 <set_video_mode+0x28>
    4ffe:	4b38      	ldr	r3, [pc, #224]	; (50e0 <set_video_mode+0x104>)
    5000:	2201      	movs	r2, #1
    5002:	701a      	strb	r2, [r3, #0]
    5004:	79fa      	ldrb	r2, [r7, #7]
    5006:	4937      	ldr	r1, [pc, #220]	; (50e4 <set_video_mode+0x108>)
    5008:	4613      	mov	r3, r2
    500a:	00db      	lsls	r3, r3, #3
    500c:	4413      	add	r3, r2
    500e:	005b      	lsls	r3, r3, #1
    5010:	440b      	add	r3, r1
    5012:	3302      	adds	r3, #2
    5014:	881a      	ldrh	r2, [r3, #0]
    5016:	4b34      	ldr	r3, [pc, #208]	; (50e8 <set_video_mode+0x10c>)
    5018:	801a      	strh	r2, [r3, #0]
    501a:	79fa      	ldrb	r2, [r7, #7]
    501c:	4931      	ldr	r1, [pc, #196]	; (50e4 <set_video_mode+0x108>)
    501e:	4613      	mov	r3, r2
    5020:	00db      	lsls	r3, r3, #3
    5022:	4413      	add	r3, r2
    5024:	005b      	lsls	r3, r3, #1
    5026:	440b      	add	r3, r1
    5028:	3304      	adds	r3, #4
    502a:	881a      	ldrh	r2, [r3, #0]
    502c:	4b2f      	ldr	r3, [pc, #188]	; (50ec <set_video_mode+0x110>)
    502e:	801a      	strh	r2, [r3, #0]
    5030:	79fa      	ldrb	r2, [r7, #7]
    5032:	492c      	ldr	r1, [pc, #176]	; (50e4 <set_video_mode+0x108>)
    5034:	4613      	mov	r3, r2
    5036:	00db      	lsls	r3, r3, #3
    5038:	4413      	add	r3, r2
    503a:	005b      	lsls	r3, r3, #1
    503c:	440b      	add	r3, r1
    503e:	3306      	adds	r3, #6
    5040:	881a      	ldrh	r2, [r3, #0]
    5042:	4b2b      	ldr	r3, [pc, #172]	; (50f0 <set_video_mode+0x114>)
    5044:	801a      	strh	r2, [r3, #0]
    5046:	79fa      	ldrb	r2, [r7, #7]
    5048:	4926      	ldr	r1, [pc, #152]	; (50e4 <set_video_mode+0x108>)
    504a:	4613      	mov	r3, r2
    504c:	00db      	lsls	r3, r3, #3
    504e:	4413      	add	r3, r2
    5050:	005b      	lsls	r3, r3, #1
    5052:	440b      	add	r3, r1
    5054:	3308      	adds	r3, #8
    5056:	781a      	ldrb	r2, [r3, #0]
    5058:	4b26      	ldr	r3, [pc, #152]	; (50f4 <set_video_mode+0x118>)
    505a:	701a      	strb	r2, [r3, #0]
    505c:	79fa      	ldrb	r2, [r7, #7]
    505e:	4921      	ldr	r1, [pc, #132]	; (50e4 <set_video_mode+0x108>)
    5060:	4613      	mov	r3, r2
    5062:	00db      	lsls	r3, r3, #3
    5064:	4413      	add	r3, r2
    5066:	005b      	lsls	r3, r3, #1
    5068:	440b      	add	r3, r1
    506a:	3309      	adds	r3, #9
    506c:	781a      	ldrb	r2, [r3, #0]
    506e:	4b22      	ldr	r3, [pc, #136]	; (50f8 <set_video_mode+0x11c>)
    5070:	701a      	strb	r2, [r3, #0]
    5072:	79fa      	ldrb	r2, [r7, #7]
    5074:	491b      	ldr	r1, [pc, #108]	; (50e4 <set_video_mode+0x108>)
    5076:	4613      	mov	r3, r2
    5078:	00db      	lsls	r3, r3, #3
    507a:	4413      	add	r3, r2
    507c:	005b      	lsls	r3, r3, #1
    507e:	440b      	add	r3, r1
    5080:	330a      	adds	r3, #10
    5082:	781a      	ldrb	r2, [r3, #0]
    5084:	4b1d      	ldr	r3, [pc, #116]	; (50fc <set_video_mode+0x120>)
    5086:	701a      	strb	r2, [r3, #0]
    5088:	79fa      	ldrb	r2, [r7, #7]
    508a:	4916      	ldr	r1, [pc, #88]	; (50e4 <set_video_mode+0x108>)
    508c:	4613      	mov	r3, r2
    508e:	00db      	lsls	r3, r3, #3
    5090:	4413      	add	r3, r2
    5092:	005b      	lsls	r3, r3, #1
    5094:	440b      	add	r3, r1
    5096:	330c      	adds	r3, #12
    5098:	881b      	ldrh	r3, [r3, #0]
    509a:	b2da      	uxtb	r2, r3
    509c:	4b18      	ldr	r3, [pc, #96]	; (5100 <set_video_mode+0x124>)
    509e:	701a      	strb	r2, [r3, #0]
    50a0:	79fa      	ldrb	r2, [r7, #7]
    50a2:	4910      	ldr	r1, [pc, #64]	; (50e4 <set_video_mode+0x108>)
    50a4:	4613      	mov	r3, r2
    50a6:	00db      	lsls	r3, r3, #3
    50a8:	4413      	add	r3, r2
    50aa:	005b      	lsls	r3, r3, #1
    50ac:	440b      	add	r3, r1
    50ae:	330e      	adds	r3, #14
    50b0:	881b      	ldrh	r3, [r3, #0]
    50b2:	b2da      	uxtb	r2, r3
    50b4:	4b13      	ldr	r3, [pc, #76]	; (5104 <set_video_mode+0x128>)
    50b6:	701a      	strb	r2, [r3, #0]
    50b8:	79fa      	ldrb	r2, [r7, #7]
    50ba:	490a      	ldr	r1, [pc, #40]	; (50e4 <set_video_mode+0x108>)
    50bc:	4613      	mov	r3, r2
    50be:	00db      	lsls	r3, r3, #3
    50c0:	4413      	add	r3, r2
    50c2:	005b      	lsls	r3, r3, #1
    50c4:	440b      	add	r3, r1
    50c6:	3310      	adds	r3, #16
    50c8:	881a      	ldrh	r2, [r3, #0]
    50ca:	4b0f      	ldr	r3, [pc, #60]	; (5108 <set_video_mode+0x12c>)
    50cc:	801a      	strh	r2, [r3, #0]
    50ce:	f7fd f80b 	bl	20e8 <gfx_cls>
    50d2:	bf00      	nop
    50d4:	3708      	adds	r7, #8
    50d6:	46bd      	mov	sp, r7
    50d8:	bd80      	pop	{r7, pc}
    50da:	bf00      	nop
    50dc:	20000600 	.word	0x20000600
    50e0:	200000e4 	.word	0x200000e4
    50e4:	000057f8 	.word	0x000057f8
    50e8:	20000156 	.word	0x20000156
    50ec:	20000158 	.word	0x20000158
    50f0:	2000015a 	.word	0x2000015a
    50f4:	2000015c 	.word	0x2000015c
    50f8:	2000015d 	.word	0x2000015d
    50fc:	2000015e 	.word	0x2000015e
    5100:	2000015f 	.word	0x2000015f
    5104:	20000160 	.word	0x20000160
    5108:	20000162 	.word	0x20000162

0000510c <get_video_params>:
    510c:	b480      	push	{r7}
    510e:	af00      	add	r7, sp, #0
    5110:	4b06      	ldr	r3, [pc, #24]	; (512c <get_video_params+0x20>)
    5112:	781b      	ldrb	r3, [r3, #0]
    5114:	461a      	mov	r2, r3
    5116:	4613      	mov	r3, r2
    5118:	00db      	lsls	r3, r3, #3
    511a:	4413      	add	r3, r2
    511c:	005b      	lsls	r3, r3, #1
    511e:	4a04      	ldr	r2, [pc, #16]	; (5130 <get_video_params+0x24>)
    5120:	4413      	add	r3, r2
    5122:	4618      	mov	r0, r3
    5124:	46bd      	mov	sp, r7
    5126:	bc80      	pop	{r7}
    5128:	4770      	bx	lr
    512a:	bf00      	nop
    512c:	20000600 	.word	0x20000600
    5130:	000057f8 	.word	0x000057f8

00005134 <game_pause>:
    5134:	b480      	push	{r7}
    5136:	b083      	sub	sp, #12
    5138:	af00      	add	r7, sp, #0
    513a:	4603      	mov	r3, r0
    513c:	80fb      	strh	r3, [r7, #6]
    513e:	4a07      	ldr	r2, [pc, #28]	; (515c <game_pause+0x28>)
    5140:	88fb      	ldrh	r3, [r7, #6]
    5142:	8013      	strh	r3, [r2, #0]
    5144:	bf00      	nop
    5146:	4b05      	ldr	r3, [pc, #20]	; (515c <game_pause+0x28>)
    5148:	881b      	ldrh	r3, [r3, #0]
    514a:	b29b      	uxth	r3, r3
    514c:	2b00      	cmp	r3, #0
    514e:	d1fa      	bne.n	5146 <game_pause+0x12>
    5150:	bf00      	nop
    5152:	370c      	adds	r7, #12
    5154:	46bd      	mov	sp, r7
    5156:	bc80      	pop	{r7}
    5158:	4770      	bx	lr
    515a:	bf00      	nop
    515c:	20004d90 	.word	0x20004d90

00005160 <micro_pause>:
    5160:	b480      	push	{r7}
    5162:	b085      	sub	sp, #20
    5164:	af00      	add	r7, sp, #0
    5166:	6078      	str	r0, [r7, #4]
    5168:	4b07      	ldr	r3, [pc, #28]	; (5188 <micro_pause+0x28>)
    516a:	681a      	ldr	r2, [r3, #0]
    516c:	687b      	ldr	r3, [r7, #4]
    516e:	4413      	add	r3, r2
    5170:	60fb      	str	r3, [r7, #12]
    5172:	bf00      	nop
    5174:	4b04      	ldr	r3, [pc, #16]	; (5188 <micro_pause+0x28>)
    5176:	681a      	ldr	r2, [r3, #0]
    5178:	68fb      	ldr	r3, [r7, #12]
    517a:	429a      	cmp	r2, r3
    517c:	d3fa      	bcc.n	5174 <micro_pause+0x14>
    517e:	bf00      	nop
    5180:	3714      	adds	r7, #20
    5182:	46bd      	mov	sp, r7
    5184:	bc80      	pop	{r7}
    5186:	4770      	bx	lr
    5188:	200005fc 	.word	0x200005fc
