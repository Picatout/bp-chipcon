
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 05 40 00 00     C...I...O....@..
      20:	05 40 00 00 05 40 00 00 05 40 00 00 55 02 00 00     .@...@...@..U...
      30:	05 40 00 00 05 40 00 00 5b 02 00 00 61 02 00 00     .@...@..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 a9 3a 00 00     g...m...y....:..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 05 40 00 00 05 40 00 00 b5 02 00 00     .....@...@......
      80:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..
      90:	05 40 00 00 05 40 00 00 05 40 00 00 bb 02 00 00     .@...@...@......
      a0:	05 40 00 00 bd 48 00 00 05 40 00 00 bd 47 00 00     .@...H...@...G..
      b0:	dd 3c 00 00 cd 02 00 00 d3 02 00 00 05 40 00 00     .<...........@..
      c0:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..
      d0:	05 40 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .@..............
      e0:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..
      f0:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..
     100:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..
     110:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..
     120:	05 40 00 00 05 40 00 00 05 40 00 00 05 40 00 00     .@...@...@...@..

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
     18e:	f002 fd3e 	bl	2c0e <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000084 	.word	0x20000084
     1a0:	20004cc4 	.word	0x20004cc4
     1a4:	00005800 	.word	0x00005800
     1a8:	20000000 	.word	0x20000000
     1ac:	20000084 	.word	0x20000084
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
     1dc:	f003 ff1a 	bl	4014 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 ff0e 	bl	4014 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 ff02 	bl	4014 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 fefd 	bl	4014 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00005394 	.word	0x00005394
     230:	000053ac 	.word	0x000053ac
     234:	000053b8 	.word	0x000053b8
     238:	000053c8 	.word	0x000053c8

0000023c <NMI_handler>:
     23c:	f003 fee2 	bl	4004 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 fedf 	bl	4004 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 fedc 	bl	4004 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 fed9 	bl	4004 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 fed6 	bl	4004 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 fed3 	bl	4004 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f003 fed0 	bl	4004 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 fecd 	bl	4004 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 feca 	bl	4004 <reset_mcu>
     270:	bf00      	nop
     272:	f003 fec7 	bl	4004 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 fec4 	bl	4004 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 fec1 	bl	4004 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 febe 	bl	4004 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 febb 	bl	4004 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 feb8 	bl	4004 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 feb5 	bl	4004 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 feb2 	bl	4004 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 feaf 	bl	4004 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 feac 	bl	4004 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 fea9 	bl	4004 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 fea6 	bl	4004 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 fea3 	bl	4004 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 fea0 	bl	4004 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 fe9d 	bl	4004 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 fe9a 	bl	4004 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 fe97 	bl	4004 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 fe94 	bl	4004 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 fe91 	bl	4004 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 fe8e 	bl	4004 <reset_mcu>
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
     3c8:	f003 fe9c 	bl	4104 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 fe89 	bl	40e4 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 ffd0 	bl	4378 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 ffcd 	bl	4378 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fff6 	bl	43d8 <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 ffef 	bl	43d8 <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 ffe8 	bl	43d8 <print_int>
     408:	f003 fe7c 	bl	4104 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 ffb3 	bl	4378 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 ffdd 	bl	43d8 <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 ffaa 	bl	4378 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 ffd4 	bl	43d8 <print_int>
     430:	f003 fe68 	bl	4104 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 ff9f 	bl	4378 <print>
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
     44e:	f003 ffc3 	bl	43d8 <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 fe51 	bl	4104 <new_line>
     462:	f004 f8d9 	bl	4618 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	00004d34 	.word	0x00004d34
     474:	20000084 	.word	0x20000084
     478:	00004d38 	.word	0x00004d38
     47c:	00004d3c 	.word	0x00004d3c
     480:	00004d44 	.word	0x00004d44

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

0000049c <load_block>:
     49c:	b480      	push	{r7}
     49e:	b085      	sub	sp, #20
     4a0:	af00      	add	r7, sp, #0
     4a2:	60f8      	str	r0, [r7, #12]
     4a4:	60b9      	str	r1, [r7, #8]
     4a6:	607a      	str	r2, [r7, #4]
     4a8:	bf00      	nop
     4aa:	3714      	adds	r7, #20
     4ac:	46bd      	mov	sp, r7
     4ae:	bc80      	pop	{r7}
     4b0:	4770      	bx	lr

000004b2 <store_block>:
     4b2:	b480      	push	{r7}
     4b4:	b085      	sub	sp, #20
     4b6:	af00      	add	r7, sp, #0
     4b8:	60f8      	str	r0, [r7, #12]
     4ba:	60b9      	str	r1, [r7, #8]
     4bc:	607a      	str	r2, [r7, #4]
     4be:	bf00      	nop
     4c0:	3714      	adds	r7, #20
     4c2:	46bd      	mov	sp, r7
     4c4:	bc80      	pop	{r7}
     4c6:	4770      	bx	lr

000004c8 <put_big_sprite>:
     4c8:	b480      	push	{r7}
     4ca:	b085      	sub	sp, #20
     4cc:	af00      	add	r7, sp, #0
     4ce:	60f8      	str	r0, [r7, #12]
     4d0:	60b9      	str	r1, [r7, #8]
     4d2:	607a      	str	r2, [r7, #4]
     4d4:	603b      	str	r3, [r7, #0]
     4d6:	bf00      	nop
     4d8:	4618      	mov	r0, r3
     4da:	3714      	adds	r7, #20
     4dc:	46bd      	mov	sp, r7
     4de:	bc80      	pop	{r7}
     4e0:	4770      	bx	lr

000004e2 <srand>:
     4e2:	b480      	push	{r7}
     4e4:	b083      	sub	sp, #12
     4e6:	af00      	add	r7, sp, #0
     4e8:	6078      	str	r0, [r7, #4]
     4ea:	4a04      	ldr	r2, [pc, #16]	; (4fc <srand+0x1a>)
     4ec:	687b      	ldr	r3, [r7, #4]
     4ee:	6013      	str	r3, [r2, #0]
     4f0:	bf00      	nop
     4f2:	370c      	adds	r7, #12
     4f4:	46bd      	mov	sp, r7
     4f6:	bc80      	pop	{r7}
     4f8:	4770      	bx	lr
     4fa:	bf00      	nop
     4fc:	20000000 	.word	0x20000000

00000500 <rand>:
     500:	b480      	push	{r7}
     502:	b083      	sub	sp, #12
     504:	af00      	add	r7, sp, #0
     506:	4b0e      	ldr	r3, [pc, #56]	; (540 <rand+0x40>)
     508:	681b      	ldr	r3, [r3, #0]
     50a:	607b      	str	r3, [r7, #4]
     50c:	687b      	ldr	r3, [r7, #4]
     50e:	035b      	lsls	r3, r3, #13
     510:	687a      	ldr	r2, [r7, #4]
     512:	4053      	eors	r3, r2
     514:	607b      	str	r3, [r7, #4]
     516:	687b      	ldr	r3, [r7, #4]
     518:	0c5b      	lsrs	r3, r3, #17
     51a:	687a      	ldr	r2, [r7, #4]
     51c:	4053      	eors	r3, r2
     51e:	607b      	str	r3, [r7, #4]
     520:	687b      	ldr	r3, [r7, #4]
     522:	015b      	lsls	r3, r3, #5
     524:	687a      	ldr	r2, [r7, #4]
     526:	4053      	eors	r3, r2
     528:	607b      	str	r3, [r7, #4]
     52a:	4a05      	ldr	r2, [pc, #20]	; (540 <rand+0x40>)
     52c:	687b      	ldr	r3, [r7, #4]
     52e:	6013      	str	r3, [r2, #0]
     530:	687b      	ldr	r3, [r7, #4]
     532:	f023 4300 	bic.w	r3, r3, #2147483648	; 0x80000000
     536:	4618      	mov	r0, r3
     538:	370c      	adds	r7, #12
     53a:	46bd      	mov	sp, r7
     53c:	bc80      	pop	{r7}
     53e:	4770      	bx	lr
     540:	20000000 	.word	0x20000000

00000544 <schipp>:
     544:	b590      	push	{r4, r7, lr}
     546:	b087      	sub	sp, #28
     548:	af02      	add	r7, sp, #8
     54a:	4603      	mov	r3, r0
     54c:	80fb      	strh	r3, [r7, #6]
     54e:	4aaf      	ldr	r2, [pc, #700]	; (80c <schipp+0x2c8>)
     550:	88fb      	ldrh	r3, [r7, #6]
     552:	8013      	strh	r3, [r2, #0]
     554:	4bad      	ldr	r3, [pc, #692]	; (80c <schipp+0x2c8>)
     556:	2200      	movs	r2, #0
     558:	711a      	strb	r2, [r3, #4]
     55a:	4bac      	ldr	r3, [pc, #688]	; (80c <schipp+0x2c8>)
     55c:	2200      	movs	r2, #0
     55e:	805a      	strh	r2, [r3, #2]
     560:	4baa      	ldr	r3, [pc, #680]	; (80c <schipp+0x2c8>)
     562:	881b      	ldrh	r3, [r3, #0]
     564:	461a      	mov	r2, r3
     566:	4baa      	ldr	r3, [pc, #680]	; (810 <schipp+0x2cc>)
     568:	5c9a      	ldrb	r2, [r3, r2]
     56a:	4ba8      	ldr	r3, [pc, #672]	; (80c <schipp+0x2c8>)
     56c:	f883 2026 	strb.w	r2, [r3, #38]	; 0x26
     570:	4ba6      	ldr	r3, [pc, #664]	; (80c <schipp+0x2c8>)
     572:	881b      	ldrh	r3, [r3, #0]
     574:	3301      	adds	r3, #1
     576:	4aa6      	ldr	r2, [pc, #664]	; (810 <schipp+0x2cc>)
     578:	5cd2      	ldrb	r2, [r2, r3]
     57a:	4ba4      	ldr	r3, [pc, #656]	; (80c <schipp+0x2c8>)
     57c:	f883 2027 	strb.w	r2, [r3, #39]	; 0x27
     580:	4ba2      	ldr	r3, [pc, #648]	; (80c <schipp+0x2c8>)
     582:	881b      	ldrh	r3, [r3, #0]
     584:	3302      	adds	r3, #2
     586:	b29a      	uxth	r2, r3
     588:	4ba0      	ldr	r3, [pc, #640]	; (80c <schipp+0x2c8>)
     58a:	801a      	strh	r2, [r3, #0]
     58c:	4b9f      	ldr	r3, [pc, #636]	; (80c <schipp+0x2c8>)
     58e:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     592:	f003 030f 	and.w	r3, r3, #15
     596:	73bb      	strb	r3, [r7, #14]
     598:	4b9c      	ldr	r3, [pc, #624]	; (80c <schipp+0x2c8>)
     59a:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     59e:	091b      	lsrs	r3, r3, #4
     5a0:	737b      	strb	r3, [r7, #13]
     5a2:	4b9a      	ldr	r3, [pc, #616]	; (80c <schipp+0x2c8>)
     5a4:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     5a8:	091b      	lsrs	r3, r3, #4
     5aa:	b2db      	uxtb	r3, r3
     5ac:	2b0f      	cmp	r3, #15
     5ae:	d8d7      	bhi.n	560 <schipp+0x1c>
     5b0:	a201      	add	r2, pc, #4	; (adr r2, 5b8 <schipp+0x74>)
     5b2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     5b6:	bf00      	nop
     5b8:	000005f9 	.word	0x000005f9
     5bc:	00000727 	.word	0x00000727
     5c0:	00000749 	.word	0x00000749
     5c4:	0000078b 	.word	0x0000078b
     5c8:	000007af 	.word	0x000007af
     5cc:	000007d3 	.word	0x000007d3
     5d0:	000007f9 	.word	0x000007f9
     5d4:	00000815 	.word	0x00000815
     5d8:	00000859 	.word	0x00000859
     5dc:	00000a47 	.word	0x00000a47
     5e0:	00000ce1 	.word	0x00000ce1
     5e4:	00000d01 	.word	0x00000d01
     5e8:	00000d2f 	.word	0x00000d2f
     5ec:	00000d59 	.word	0x00000d59
     5f0:	00000de3 	.word	0x00000de3
     5f4:	00000e43 	.word	0x00000e43
     5f8:	4b84      	ldr	r3, [pc, #528]	; (80c <schipp+0x2c8>)
     5fa:	f893 2026 	ldrb.w	r2, [r3, #38]	; 0x26
     5fe:	4b83      	ldr	r3, [pc, #524]	; (80c <schipp+0x2c8>)
     600:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     604:	4313      	orrs	r3, r2
     606:	b2db      	uxtb	r3, r3
     608:	2b00      	cmp	r3, #0
     60a:	f000 851f 	beq.w	104c <schipp+0xb08>
     60e:	4b7f      	ldr	r3, [pc, #508]	; (80c <schipp+0x2c8>)
     610:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     614:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     618:	2bc0      	cmp	r3, #192	; 0xc0
     61a:	d10a      	bne.n	632 <schipp+0xee>
     61c:	4b7b      	ldr	r3, [pc, #492]	; (80c <schipp+0x2c8>)
     61e:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     622:	f003 030f 	and.w	r3, r3, #15
     626:	b2db      	uxtb	r3, r3
     628:	4618      	mov	r0, r3
     62a:	f001 fcc7 	bl	1fbc <gfx_scroll_down>
     62e:	f000 bd0d 	b.w	104c <schipp+0xb08>
     632:	4b76      	ldr	r3, [pc, #472]	; (80c <schipp+0x2c8>)
     634:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     638:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
     63c:	2bd0      	cmp	r3, #208	; 0xd0
     63e:	d10a      	bne.n	656 <schipp+0x112>
     640:	4b72      	ldr	r3, [pc, #456]	; (80c <schipp+0x2c8>)
     642:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     646:	f003 030f 	and.w	r3, r3, #15
     64a:	b2db      	uxtb	r3, r3
     64c:	4618      	mov	r0, r3
     64e:	f001 fc83 	bl	1f58 <gfx_scroll_up>
     652:	f000 bcfb 	b.w	104c <schipp+0xb08>
     656:	4b6d      	ldr	r3, [pc, #436]	; (80c <schipp+0x2c8>)
     658:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     65c:	3be0      	subs	r3, #224	; 0xe0
     65e:	2b1f      	cmp	r3, #31
     660:	d85b      	bhi.n	71a <schipp+0x1d6>
     662:	a201      	add	r2, pc, #4	; (adr r2, 668 <schipp+0x124>)
     664:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     668:	000006e9 	.word	0x000006e9
     66c:	0000071b 	.word	0x0000071b
     670:	0000071b 	.word	0x0000071b
     674:	0000071b 	.word	0x0000071b
     678:	0000071b 	.word	0x0000071b
     67c:	0000071b 	.word	0x0000071b
     680:	0000071b 	.word	0x0000071b
     684:	0000071b 	.word	0x0000071b
     688:	0000071b 	.word	0x0000071b
     68c:	0000071b 	.word	0x0000071b
     690:	0000071b 	.word	0x0000071b
     694:	0000071b 	.word	0x0000071b
     698:	0000071b 	.word	0x0000071b
     69c:	0000071b 	.word	0x0000071b
     6a0:	000006ef 	.word	0x000006ef
     6a4:	0000071b 	.word	0x0000071b
     6a8:	0000071b 	.word	0x0000071b
     6ac:	0000071b 	.word	0x0000071b
     6b0:	0000071b 	.word	0x0000071b
     6b4:	0000071b 	.word	0x0000071b
     6b8:	0000071b 	.word	0x0000071b
     6bc:	0000071b 	.word	0x0000071b
     6c0:	0000071b 	.word	0x0000071b
     6c4:	0000071b 	.word	0x0000071b
     6c8:	0000071b 	.word	0x0000071b
     6cc:	0000071b 	.word	0x0000071b
     6d0:	0000071b 	.word	0x0000071b
     6d4:	00000709 	.word	0x00000709
     6d8:	0000070f 	.word	0x0000070f
     6dc:	00000715 	.word	0x00000715
     6e0:	00000721 	.word	0x00000721
     6e4:	00000721 	.word	0x00000721
     6e8:	f003 ffa0 	bl	462c <clear_screen>
     6ec:	e019      	b.n	722 <schipp+0x1de>
     6ee:	4b47      	ldr	r3, [pc, #284]	; (80c <schipp+0x2c8>)
     6f0:	791b      	ldrb	r3, [r3, #4]
     6f2:	1e5a      	subs	r2, r3, #1
     6f4:	b2d1      	uxtb	r1, r2
     6f6:	4a45      	ldr	r2, [pc, #276]	; (80c <schipp+0x2c8>)
     6f8:	7111      	strb	r1, [r2, #4]
     6fa:	4a44      	ldr	r2, [pc, #272]	; (80c <schipp+0x2c8>)
     6fc:	3314      	adds	r3, #20
     6fe:	f832 2013 	ldrh.w	r2, [r2, r3, lsl #1]
     702:	4b42      	ldr	r3, [pc, #264]	; (80c <schipp+0x2c8>)
     704:	801a      	strh	r2, [r3, #0]
     706:	e00c      	b.n	722 <schipp+0x1de>
     708:	f7ff febc 	bl	484 <chip_scroll_right>
     70c:	e009      	b.n	722 <schipp+0x1de>
     70e:	f7ff febf 	bl	490 <chip_scroll_left>
     712:	e006      	b.n	722 <schipp+0x1de>
     714:	2301      	movs	r3, #1
     716:	f000 bca5 	b.w	1064 <schipp+0xb20>
     71a:	2302      	movs	r3, #2
     71c:	f000 bca2 	b.w	1064 <schipp+0xb20>
     720:	bf00      	nop
     722:	f000 bc93 	b.w	104c <schipp+0xb08>
     726:	4b39      	ldr	r3, [pc, #228]	; (80c <schipp+0x2c8>)
     728:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     72c:	021b      	lsls	r3, r3, #8
     72e:	4a37      	ldr	r2, [pc, #220]	; (80c <schipp+0x2c8>)
     730:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     734:	4313      	orrs	r3, r2
     736:	005b      	lsls	r3, r3, #1
     738:	b29b      	uxth	r3, r3
     73a:	f3c3 030b 	ubfx	r3, r3, #0, #12
     73e:	b29a      	uxth	r2, r3
     740:	4b32      	ldr	r3, [pc, #200]	; (80c <schipp+0x2c8>)
     742:	801a      	strh	r2, [r3, #0]
     744:	f000 bc8c 	b.w	1060 <schipp+0xb1c>
     748:	4b30      	ldr	r3, [pc, #192]	; (80c <schipp+0x2c8>)
     74a:	791b      	ldrb	r3, [r3, #4]
     74c:	3301      	adds	r3, #1
     74e:	b2da      	uxtb	r2, r3
     750:	4b2e      	ldr	r3, [pc, #184]	; (80c <schipp+0x2c8>)
     752:	711a      	strb	r2, [r3, #4]
     754:	4b2d      	ldr	r3, [pc, #180]	; (80c <schipp+0x2c8>)
     756:	791b      	ldrb	r3, [r3, #4]
     758:	4618      	mov	r0, r3
     75a:	4b2c      	ldr	r3, [pc, #176]	; (80c <schipp+0x2c8>)
     75c:	8819      	ldrh	r1, [r3, #0]
     75e:	4a2b      	ldr	r2, [pc, #172]	; (80c <schipp+0x2c8>)
     760:	f100 0314 	add.w	r3, r0, #20
     764:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     768:	4b28      	ldr	r3, [pc, #160]	; (80c <schipp+0x2c8>)
     76a:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     76e:	021b      	lsls	r3, r3, #8
     770:	4a26      	ldr	r2, [pc, #152]	; (80c <schipp+0x2c8>)
     772:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     776:	4313      	orrs	r3, r2
     778:	005b      	lsls	r3, r3, #1
     77a:	b29b      	uxth	r3, r3
     77c:	f3c3 030b 	ubfx	r3, r3, #0, #12
     780:	b29a      	uxth	r2, r3
     782:	4b22      	ldr	r3, [pc, #136]	; (80c <schipp+0x2c8>)
     784:	801a      	strh	r2, [r3, #0]
     786:	f000 bc6b 	b.w	1060 <schipp+0xb1c>
     78a:	7bbb      	ldrb	r3, [r7, #14]
     78c:	4a1f      	ldr	r2, [pc, #124]	; (80c <schipp+0x2c8>)
     78e:	4413      	add	r3, r2
     790:	795a      	ldrb	r2, [r3, #5]
     792:	4b1e      	ldr	r3, [pc, #120]	; (80c <schipp+0x2c8>)
     794:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     798:	429a      	cmp	r2, r3
     79a:	f040 845a 	bne.w	1052 <schipp+0xb0e>
     79e:	4b1b      	ldr	r3, [pc, #108]	; (80c <schipp+0x2c8>)
     7a0:	881b      	ldrh	r3, [r3, #0]
     7a2:	3302      	adds	r3, #2
     7a4:	b29a      	uxth	r2, r3
     7a6:	4b19      	ldr	r3, [pc, #100]	; (80c <schipp+0x2c8>)
     7a8:	801a      	strh	r2, [r3, #0]
     7aa:	f000 bc52 	b.w	1052 <schipp+0xb0e>
     7ae:	7bbb      	ldrb	r3, [r7, #14]
     7b0:	4a16      	ldr	r2, [pc, #88]	; (80c <schipp+0x2c8>)
     7b2:	4413      	add	r3, r2
     7b4:	795a      	ldrb	r2, [r3, #5]
     7b6:	4b15      	ldr	r3, [pc, #84]	; (80c <schipp+0x2c8>)
     7b8:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     7bc:	429a      	cmp	r2, r3
     7be:	f000 844b 	beq.w	1058 <schipp+0xb14>
     7c2:	4b12      	ldr	r3, [pc, #72]	; (80c <schipp+0x2c8>)
     7c4:	881b      	ldrh	r3, [r3, #0]
     7c6:	3302      	adds	r3, #2
     7c8:	b29a      	uxth	r2, r3
     7ca:	4b10      	ldr	r3, [pc, #64]	; (80c <schipp+0x2c8>)
     7cc:	801a      	strh	r2, [r3, #0]
     7ce:	f000 bc43 	b.w	1058 <schipp+0xb14>
     7d2:	7bbb      	ldrb	r3, [r7, #14]
     7d4:	4a0d      	ldr	r2, [pc, #52]	; (80c <schipp+0x2c8>)
     7d6:	4413      	add	r3, r2
     7d8:	795a      	ldrb	r2, [r3, #5]
     7da:	7b7b      	ldrb	r3, [r7, #13]
     7dc:	490b      	ldr	r1, [pc, #44]	; (80c <schipp+0x2c8>)
     7de:	440b      	add	r3, r1
     7e0:	795b      	ldrb	r3, [r3, #5]
     7e2:	429a      	cmp	r2, r3
     7e4:	f040 843b 	bne.w	105e <schipp+0xb1a>
     7e8:	4b08      	ldr	r3, [pc, #32]	; (80c <schipp+0x2c8>)
     7ea:	881b      	ldrh	r3, [r3, #0]
     7ec:	3302      	adds	r3, #2
     7ee:	b29a      	uxth	r2, r3
     7f0:	4b06      	ldr	r3, [pc, #24]	; (80c <schipp+0x2c8>)
     7f2:	801a      	strh	r2, [r3, #0]
     7f4:	f000 bc33 	b.w	105e <schipp+0xb1a>
     7f8:	7bbb      	ldrb	r3, [r7, #14]
     7fa:	4a04      	ldr	r2, [pc, #16]	; (80c <schipp+0x2c8>)
     7fc:	f892 1027 	ldrb.w	r1, [r2, #39]	; 0x27
     800:	4a02      	ldr	r2, [pc, #8]	; (80c <schipp+0x2c8>)
     802:	4413      	add	r3, r2
     804:	460a      	mov	r2, r1
     806:	715a      	strb	r2, [r3, #5]
     808:	f000 bc2a 	b.w	1060 <schipp+0xb1c>
     80c:	20000084 	.word	0x20000084
     810:	20000534 	.word	0x20000534
     814:	7bbb      	ldrb	r3, [r7, #14]
     816:	4aaa      	ldr	r2, [pc, #680]	; (ac0 <schipp+0x57c>)
     818:	4413      	add	r3, r2
     81a:	795b      	ldrb	r3, [r3, #5]
     81c:	461a      	mov	r2, r3
     81e:	4ba8      	ldr	r3, [pc, #672]	; (ac0 <schipp+0x57c>)
     820:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     824:	4413      	add	r3, r2
     826:	2bff      	cmp	r3, #255	; 0xff
     828:	bfcc      	ite	gt
     82a:	2301      	movgt	r3, #1
     82c:	2300      	movle	r3, #0
     82e:	b2db      	uxtb	r3, r3
     830:	73fb      	strb	r3, [r7, #15]
     832:	7bbb      	ldrb	r3, [r7, #14]
     834:	7bba      	ldrb	r2, [r7, #14]
     836:	49a2      	ldr	r1, [pc, #648]	; (ac0 <schipp+0x57c>)
     838:	440a      	add	r2, r1
     83a:	7951      	ldrb	r1, [r2, #5]
     83c:	4aa0      	ldr	r2, [pc, #640]	; (ac0 <schipp+0x57c>)
     83e:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     842:	440a      	add	r2, r1
     844:	b2d1      	uxtb	r1, r2
     846:	4a9e      	ldr	r2, [pc, #632]	; (ac0 <schipp+0x57c>)
     848:	4413      	add	r3, r2
     84a:	460a      	mov	r2, r1
     84c:	715a      	strb	r2, [r3, #5]
     84e:	4a9c      	ldr	r2, [pc, #624]	; (ac0 <schipp+0x57c>)
     850:	7bfb      	ldrb	r3, [r7, #15]
     852:	7513      	strb	r3, [r2, #20]
     854:	f000 bc04 	b.w	1060 <schipp+0xb1c>
     858:	4b99      	ldr	r3, [pc, #612]	; (ac0 <schipp+0x57c>)
     85a:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     85e:	f003 030f 	and.w	r3, r3, #15
     862:	2b0e      	cmp	r3, #14
     864:	f200 80ec 	bhi.w	a40 <schipp+0x4fc>
     868:	a201      	add	r2, pc, #4	; (adr r2, 870 <schipp+0x32c>)
     86a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     86e:	bf00      	nop
     870:	000008ad 	.word	0x000008ad
     874:	000008c1 	.word	0x000008c1
     878:	000008e1 	.word	0x000008e1
     87c:	00000901 	.word	0x00000901
     880:	00000921 	.word	0x00000921
     884:	00000967 	.word	0x00000967
     888:	000009a9 	.word	0x000009a9
     88c:	000009d5 	.word	0x000009d5
     890:	00000a41 	.word	0x00000a41
     894:	00000a41 	.word	0x00000a41
     898:	00000a41 	.word	0x00000a41
     89c:	00000a41 	.word	0x00000a41
     8a0:	00000a41 	.word	0x00000a41
     8a4:	00000a41 	.word	0x00000a41
     8a8:	00000a17 	.word	0x00000a17
     8ac:	7bbb      	ldrb	r3, [r7, #14]
     8ae:	7b7a      	ldrb	r2, [r7, #13]
     8b0:	4983      	ldr	r1, [pc, #524]	; (ac0 <schipp+0x57c>)
     8b2:	440a      	add	r2, r1
     8b4:	7951      	ldrb	r1, [r2, #5]
     8b6:	4a82      	ldr	r2, [pc, #520]	; (ac0 <schipp+0x57c>)
     8b8:	4413      	add	r3, r2
     8ba:	460a      	mov	r2, r1
     8bc:	715a      	strb	r2, [r3, #5]
     8be:	e0c1      	b.n	a44 <schipp+0x500>
     8c0:	7bbb      	ldrb	r3, [r7, #14]
     8c2:	7bba      	ldrb	r2, [r7, #14]
     8c4:	497e      	ldr	r1, [pc, #504]	; (ac0 <schipp+0x57c>)
     8c6:	440a      	add	r2, r1
     8c8:	7951      	ldrb	r1, [r2, #5]
     8ca:	7b7a      	ldrb	r2, [r7, #13]
     8cc:	487c      	ldr	r0, [pc, #496]	; (ac0 <schipp+0x57c>)
     8ce:	4402      	add	r2, r0
     8d0:	7952      	ldrb	r2, [r2, #5]
     8d2:	430a      	orrs	r2, r1
     8d4:	b2d1      	uxtb	r1, r2
     8d6:	4a7a      	ldr	r2, [pc, #488]	; (ac0 <schipp+0x57c>)
     8d8:	4413      	add	r3, r2
     8da:	460a      	mov	r2, r1
     8dc:	715a      	strb	r2, [r3, #5]
     8de:	e0b1      	b.n	a44 <schipp+0x500>
     8e0:	7bbb      	ldrb	r3, [r7, #14]
     8e2:	7bba      	ldrb	r2, [r7, #14]
     8e4:	4976      	ldr	r1, [pc, #472]	; (ac0 <schipp+0x57c>)
     8e6:	440a      	add	r2, r1
     8e8:	7951      	ldrb	r1, [r2, #5]
     8ea:	7b7a      	ldrb	r2, [r7, #13]
     8ec:	4874      	ldr	r0, [pc, #464]	; (ac0 <schipp+0x57c>)
     8ee:	4402      	add	r2, r0
     8f0:	7952      	ldrb	r2, [r2, #5]
     8f2:	400a      	ands	r2, r1
     8f4:	b2d1      	uxtb	r1, r2
     8f6:	4a72      	ldr	r2, [pc, #456]	; (ac0 <schipp+0x57c>)
     8f8:	4413      	add	r3, r2
     8fa:	460a      	mov	r2, r1
     8fc:	715a      	strb	r2, [r3, #5]
     8fe:	e0a1      	b.n	a44 <schipp+0x500>
     900:	7bbb      	ldrb	r3, [r7, #14]
     902:	7bba      	ldrb	r2, [r7, #14]
     904:	496e      	ldr	r1, [pc, #440]	; (ac0 <schipp+0x57c>)
     906:	440a      	add	r2, r1
     908:	7951      	ldrb	r1, [r2, #5]
     90a:	7b7a      	ldrb	r2, [r7, #13]
     90c:	486c      	ldr	r0, [pc, #432]	; (ac0 <schipp+0x57c>)
     90e:	4402      	add	r2, r0
     910:	7952      	ldrb	r2, [r2, #5]
     912:	404a      	eors	r2, r1
     914:	b2d1      	uxtb	r1, r2
     916:	4a6a      	ldr	r2, [pc, #424]	; (ac0 <schipp+0x57c>)
     918:	4413      	add	r3, r2
     91a:	460a      	mov	r2, r1
     91c:	715a      	strb	r2, [r3, #5]
     91e:	e091      	b.n	a44 <schipp+0x500>
     920:	7bbb      	ldrb	r3, [r7, #14]
     922:	4a67      	ldr	r2, [pc, #412]	; (ac0 <schipp+0x57c>)
     924:	4413      	add	r3, r2
     926:	795b      	ldrb	r3, [r3, #5]
     928:	4619      	mov	r1, r3
     92a:	7b7b      	ldrb	r3, [r7, #13]
     92c:	4a64      	ldr	r2, [pc, #400]	; (ac0 <schipp+0x57c>)
     92e:	4413      	add	r3, r2
     930:	795b      	ldrb	r3, [r3, #5]
     932:	440b      	add	r3, r1
     934:	2bff      	cmp	r3, #255	; 0xff
     936:	bfcc      	ite	gt
     938:	2301      	movgt	r3, #1
     93a:	2300      	movle	r3, #0
     93c:	b2db      	uxtb	r3, r3
     93e:	73fb      	strb	r3, [r7, #15]
     940:	7bbb      	ldrb	r3, [r7, #14]
     942:	7bba      	ldrb	r2, [r7, #14]
     944:	495e      	ldr	r1, [pc, #376]	; (ac0 <schipp+0x57c>)
     946:	440a      	add	r2, r1
     948:	7951      	ldrb	r1, [r2, #5]
     94a:	7b7a      	ldrb	r2, [r7, #13]
     94c:	485c      	ldr	r0, [pc, #368]	; (ac0 <schipp+0x57c>)
     94e:	4402      	add	r2, r0
     950:	7952      	ldrb	r2, [r2, #5]
     952:	440a      	add	r2, r1
     954:	b2d1      	uxtb	r1, r2
     956:	4a5a      	ldr	r2, [pc, #360]	; (ac0 <schipp+0x57c>)
     958:	4413      	add	r3, r2
     95a:	460a      	mov	r2, r1
     95c:	715a      	strb	r2, [r3, #5]
     95e:	4a58      	ldr	r2, [pc, #352]	; (ac0 <schipp+0x57c>)
     960:	7bfb      	ldrb	r3, [r7, #15]
     962:	7513      	strb	r3, [r2, #20]
     964:	e06e      	b.n	a44 <schipp+0x500>
     966:	7bbb      	ldrb	r3, [r7, #14]
     968:	4a55      	ldr	r2, [pc, #340]	; (ac0 <schipp+0x57c>)
     96a:	4413      	add	r3, r2
     96c:	795a      	ldrb	r2, [r3, #5]
     96e:	7b7b      	ldrb	r3, [r7, #13]
     970:	4953      	ldr	r1, [pc, #332]	; (ac0 <schipp+0x57c>)
     972:	440b      	add	r3, r1
     974:	795b      	ldrb	r3, [r3, #5]
     976:	429a      	cmp	r2, r3
     978:	bf2c      	ite	cs
     97a:	2301      	movcs	r3, #1
     97c:	2300      	movcc	r3, #0
     97e:	b2db      	uxtb	r3, r3
     980:	73fb      	strb	r3, [r7, #15]
     982:	7bbb      	ldrb	r3, [r7, #14]
     984:	7bba      	ldrb	r2, [r7, #14]
     986:	494e      	ldr	r1, [pc, #312]	; (ac0 <schipp+0x57c>)
     988:	440a      	add	r2, r1
     98a:	7951      	ldrb	r1, [r2, #5]
     98c:	7b7a      	ldrb	r2, [r7, #13]
     98e:	484c      	ldr	r0, [pc, #304]	; (ac0 <schipp+0x57c>)
     990:	4402      	add	r2, r0
     992:	7952      	ldrb	r2, [r2, #5]
     994:	1a8a      	subs	r2, r1, r2
     996:	b2d1      	uxtb	r1, r2
     998:	4a49      	ldr	r2, [pc, #292]	; (ac0 <schipp+0x57c>)
     99a:	4413      	add	r3, r2
     99c:	460a      	mov	r2, r1
     99e:	715a      	strb	r2, [r3, #5]
     9a0:	4a47      	ldr	r2, [pc, #284]	; (ac0 <schipp+0x57c>)
     9a2:	7bfb      	ldrb	r3, [r7, #15]
     9a4:	7513      	strb	r3, [r2, #20]
     9a6:	e04d      	b.n	a44 <schipp+0x500>
     9a8:	7bbb      	ldrb	r3, [r7, #14]
     9aa:	4a45      	ldr	r2, [pc, #276]	; (ac0 <schipp+0x57c>)
     9ac:	4413      	add	r3, r2
     9ae:	795b      	ldrb	r3, [r3, #5]
     9b0:	f003 0301 	and.w	r3, r3, #1
     9b4:	73fb      	strb	r3, [r7, #15]
     9b6:	7bbb      	ldrb	r3, [r7, #14]
     9b8:	7bba      	ldrb	r2, [r7, #14]
     9ba:	4941      	ldr	r1, [pc, #260]	; (ac0 <schipp+0x57c>)
     9bc:	440a      	add	r2, r1
     9be:	7952      	ldrb	r2, [r2, #5]
     9c0:	0852      	lsrs	r2, r2, #1
     9c2:	b2d1      	uxtb	r1, r2
     9c4:	4a3e      	ldr	r2, [pc, #248]	; (ac0 <schipp+0x57c>)
     9c6:	4413      	add	r3, r2
     9c8:	460a      	mov	r2, r1
     9ca:	715a      	strb	r2, [r3, #5]
     9cc:	4a3c      	ldr	r2, [pc, #240]	; (ac0 <schipp+0x57c>)
     9ce:	7bfb      	ldrb	r3, [r7, #15]
     9d0:	7513      	strb	r3, [r2, #20]
     9d2:	e037      	b.n	a44 <schipp+0x500>
     9d4:	7b7b      	ldrb	r3, [r7, #13]
     9d6:	4a3a      	ldr	r2, [pc, #232]	; (ac0 <schipp+0x57c>)
     9d8:	4413      	add	r3, r2
     9da:	795a      	ldrb	r2, [r3, #5]
     9dc:	7bbb      	ldrb	r3, [r7, #14]
     9de:	4938      	ldr	r1, [pc, #224]	; (ac0 <schipp+0x57c>)
     9e0:	440b      	add	r3, r1
     9e2:	795b      	ldrb	r3, [r3, #5]
     9e4:	429a      	cmp	r2, r3
     9e6:	bf2c      	ite	cs
     9e8:	2301      	movcs	r3, #1
     9ea:	2300      	movcc	r3, #0
     9ec:	b2db      	uxtb	r3, r3
     9ee:	73fb      	strb	r3, [r7, #15]
     9f0:	7bbb      	ldrb	r3, [r7, #14]
     9f2:	7b7a      	ldrb	r2, [r7, #13]
     9f4:	4932      	ldr	r1, [pc, #200]	; (ac0 <schipp+0x57c>)
     9f6:	440a      	add	r2, r1
     9f8:	7951      	ldrb	r1, [r2, #5]
     9fa:	7bba      	ldrb	r2, [r7, #14]
     9fc:	4830      	ldr	r0, [pc, #192]	; (ac0 <schipp+0x57c>)
     9fe:	4402      	add	r2, r0
     a00:	7952      	ldrb	r2, [r2, #5]
     a02:	1a8a      	subs	r2, r1, r2
     a04:	b2d1      	uxtb	r1, r2
     a06:	4a2e      	ldr	r2, [pc, #184]	; (ac0 <schipp+0x57c>)
     a08:	4413      	add	r3, r2
     a0a:	460a      	mov	r2, r1
     a0c:	715a      	strb	r2, [r3, #5]
     a0e:	4a2c      	ldr	r2, [pc, #176]	; (ac0 <schipp+0x57c>)
     a10:	7bfb      	ldrb	r3, [r7, #15]
     a12:	7513      	strb	r3, [r2, #20]
     a14:	e016      	b.n	a44 <schipp+0x500>
     a16:	7bbb      	ldrb	r3, [r7, #14]
     a18:	4a29      	ldr	r2, [pc, #164]	; (ac0 <schipp+0x57c>)
     a1a:	4413      	add	r3, r2
     a1c:	795b      	ldrb	r3, [r3, #5]
     a1e:	09db      	lsrs	r3, r3, #7
     a20:	73fb      	strb	r3, [r7, #15]
     a22:	7bbb      	ldrb	r3, [r7, #14]
     a24:	7bba      	ldrb	r2, [r7, #14]
     a26:	4926      	ldr	r1, [pc, #152]	; (ac0 <schipp+0x57c>)
     a28:	440a      	add	r2, r1
     a2a:	7952      	ldrb	r2, [r2, #5]
     a2c:	0052      	lsls	r2, r2, #1
     a2e:	b2d1      	uxtb	r1, r2
     a30:	4a23      	ldr	r2, [pc, #140]	; (ac0 <schipp+0x57c>)
     a32:	4413      	add	r3, r2
     a34:	460a      	mov	r2, r1
     a36:	715a      	strb	r2, [r3, #5]
     a38:	4a21      	ldr	r2, [pc, #132]	; (ac0 <schipp+0x57c>)
     a3a:	7bfb      	ldrb	r3, [r7, #15]
     a3c:	7513      	strb	r3, [r2, #20]
     a3e:	e001      	b.n	a44 <schipp+0x500>
     a40:	2302      	movs	r3, #2
     a42:	e30f      	b.n	1064 <schipp+0xb20>
     a44:	e30c      	b.n	1060 <schipp+0xb1c>
     a46:	4b1e      	ldr	r3, [pc, #120]	; (ac0 <schipp+0x57c>)
     a48:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     a4c:	f003 030f 	and.w	r3, r3, #15
     a50:	2b0f      	cmp	r3, #15
     a52:	f200 813d 	bhi.w	cd0 <schipp+0x78c>
     a56:	a201      	add	r2, pc, #4	; (adr r2, a5c <schipp+0x518>)
     a58:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a5c:	00000a9d 	.word	0x00000a9d
     a60:	00000ac5 	.word	0x00000ac5
     a64:	00000ae1 	.word	0x00000ae1
     a68:	00000b37 	.word	0x00000b37
     a6c:	00000b55 	.word	0x00000b55
     a70:	00000b65 	.word	0x00000b65
     a74:	00000b83 	.word	0x00000b83
     a78:	00000bab 	.word	0x00000bab
     a7c:	00000bcd 	.word	0x00000bcd
     a80:	00000bd9 	.word	0x00000bd9
     a84:	00000be5 	.word	0x00000be5
     a88:	00000c0f 	.word	0x00000c0f
     a8c:	00000c3d 	.word	0x00000c3d
     a90:	00000c67 	.word	0x00000c67
     a94:	00000c91 	.word	0x00000c91
     a98:	00000cbb 	.word	0x00000cbb
     a9c:	7bbb      	ldrb	r3, [r7, #14]
     a9e:	4a08      	ldr	r2, [pc, #32]	; (ac0 <schipp+0x57c>)
     aa0:	4413      	add	r3, r2
     aa2:	795a      	ldrb	r2, [r3, #5]
     aa4:	7b7b      	ldrb	r3, [r7, #13]
     aa6:	4906      	ldr	r1, [pc, #24]	; (ac0 <schipp+0x57c>)
     aa8:	440b      	add	r3, r1
     aaa:	795b      	ldrb	r3, [r3, #5]
     aac:	429a      	cmp	r2, r3
     aae:	f000 8111 	beq.w	cd4 <schipp+0x790>
     ab2:	4b03      	ldr	r3, [pc, #12]	; (ac0 <schipp+0x57c>)
     ab4:	881b      	ldrh	r3, [r3, #0]
     ab6:	3302      	adds	r3, #2
     ab8:	b29a      	uxth	r2, r3
     aba:	4b01      	ldr	r3, [pc, #4]	; (ac0 <schipp+0x57c>)
     abc:	801a      	strh	r2, [r3, #0]
     abe:	e109      	b.n	cd4 <schipp+0x790>
     ac0:	20000084 	.word	0x20000084
     ac4:	7bbb      	ldrb	r3, [r7, #14]
     ac6:	4aa2      	ldr	r2, [pc, #648]	; (d50 <schipp+0x80c>)
     ac8:	4413      	add	r3, r2
     aca:	795b      	ldrb	r3, [r3, #5]
     acc:	4618      	mov	r0, r3
     ace:	7b7b      	ldrb	r3, [r7, #13]
     ad0:	4a9f      	ldr	r2, [pc, #636]	; (d50 <schipp+0x80c>)
     ad2:	4413      	add	r3, r2
     ad4:	795b      	ldrb	r3, [r3, #5]
     ad6:	2200      	movs	r2, #0
     ad8:	4619      	mov	r1, r3
     ada:	f003 f8eb 	bl	3cb4 <key_tone>
     ade:	e0fe      	b.n	cde <schipp+0x79a>
     ae0:	2002      	movs	r0, #2
     ae2:	f003 faff 	bl	40e4 <select_font>
     ae6:	7bbb      	ldrb	r3, [r7, #14]
     ae8:	4a99      	ldr	r2, [pc, #612]	; (d50 <schipp+0x80c>)
     aea:	4413      	add	r3, r2
     aec:	7958      	ldrb	r0, [r3, #5]
     aee:	7b7b      	ldrb	r3, [r7, #13]
     af0:	4a97      	ldr	r2, [pc, #604]	; (d50 <schipp+0x80c>)
     af2:	4413      	add	r3, r2
     af4:	795b      	ldrb	r3, [r3, #5]
     af6:	4619      	mov	r1, r3
     af8:	f003 fc12 	bl	4320 <set_cursor>
     afc:	4b94      	ldr	r3, [pc, #592]	; (d50 <schipp+0x80c>)
     afe:	885b      	ldrh	r3, [r3, #2]
     b00:	1c5a      	adds	r2, r3, #1
     b02:	b291      	uxth	r1, r2
     b04:	4a92      	ldr	r2, [pc, #584]	; (d50 <schipp+0x80c>)
     b06:	8051      	strh	r1, [r2, #2]
     b08:	461a      	mov	r2, r3
     b0a:	4b92      	ldr	r3, [pc, #584]	; (d54 <schipp+0x810>)
     b0c:	5c9b      	ldrb	r3, [r3, r2]
     b0e:	73fb      	strb	r3, [r7, #15]
     b10:	e00d      	b.n	b2e <schipp+0x5ea>
     b12:	7bfb      	ldrb	r3, [r7, #15]
     b14:	4618      	mov	r0, r3
     b16:	f003 fb77 	bl	4208 <put_char>
     b1a:	4b8d      	ldr	r3, [pc, #564]	; (d50 <schipp+0x80c>)
     b1c:	885b      	ldrh	r3, [r3, #2]
     b1e:	1c5a      	adds	r2, r3, #1
     b20:	b291      	uxth	r1, r2
     b22:	4a8b      	ldr	r2, [pc, #556]	; (d50 <schipp+0x80c>)
     b24:	8051      	strh	r1, [r2, #2]
     b26:	461a      	mov	r2, r3
     b28:	4b8a      	ldr	r3, [pc, #552]	; (d54 <schipp+0x810>)
     b2a:	5c9b      	ldrb	r3, [r3, r2]
     b2c:	73fb      	strb	r3, [r7, #15]
     b2e:	7bfb      	ldrb	r3, [r7, #15]
     b30:	2b00      	cmp	r3, #0
     b32:	d1ee      	bne.n	b12 <schipp+0x5ce>
     b34:	e0d3      	b.n	cde <schipp+0x79a>
     b36:	7bbb      	ldrb	r3, [r7, #14]
     b38:	4a85      	ldr	r2, [pc, #532]	; (d50 <schipp+0x80c>)
     b3a:	4413      	add	r3, r2
     b3c:	795b      	ldrb	r3, [r3, #5]
     b3e:	4618      	mov	r0, r3
     b40:	7b7b      	ldrb	r3, [r7, #13]
     b42:	4a83      	ldr	r2, [pc, #524]	; (d50 <schipp+0x80c>)
     b44:	4413      	add	r3, r2
     b46:	795b      	ldrb	r3, [r3, #5]
     b48:	4619      	mov	r1, r3
     b4a:	2303      	movs	r3, #3
     b4c:	2200      	movs	r2, #0
     b4e:	f001 f8a1 	bl	1c94 <gfx_blit>
     b52:	e0c4      	b.n	cde <schipp+0x79a>
     b54:	7bbb      	ldrb	r3, [r7, #14]
     b56:	011a      	lsls	r2, r3, #4
     b58:	7b7b      	ldrb	r3, [r7, #13]
     b5a:	4413      	add	r3, r2
     b5c:	4618      	mov	r0, r3
     b5e:	f003 f8b4 	bl	3cca <noise>
     b62:	e0bc      	b.n	cde <schipp+0x79a>
     b64:	7bbb      	ldrb	r3, [r7, #14]
     b66:	4a7a      	ldr	r2, [pc, #488]	; (d50 <schipp+0x80c>)
     b68:	4413      	add	r3, r2
     b6a:	795b      	ldrb	r3, [r3, #5]
     b6c:	4618      	mov	r0, r3
     b6e:	7b7b      	ldrb	r3, [r7, #13]
     b70:	4a77      	ldr	r2, [pc, #476]	; (d50 <schipp+0x80c>)
     b72:	4413      	add	r3, r2
     b74:	795b      	ldrb	r3, [r3, #5]
     b76:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
     b7a:	4619      	mov	r1, r3
     b7c:	f003 f89a 	bl	3cb4 <key_tone>
     b80:	e0ad      	b.n	cde <schipp+0x79a>
     b82:	4b73      	ldr	r3, [pc, #460]	; (d50 <schipp+0x80c>)
     b84:	791b      	ldrb	r3, [r3, #4]
     b86:	3301      	adds	r3, #1
     b88:	b2da      	uxtb	r2, r3
     b8a:	4b71      	ldr	r3, [pc, #452]	; (d50 <schipp+0x80c>)
     b8c:	711a      	strb	r2, [r3, #4]
     b8e:	4b70      	ldr	r3, [pc, #448]	; (d50 <schipp+0x80c>)
     b90:	791b      	ldrb	r3, [r3, #4]
     b92:	4618      	mov	r0, r3
     b94:	7bbb      	ldrb	r3, [r7, #14]
     b96:	4a6e      	ldr	r2, [pc, #440]	; (d50 <schipp+0x80c>)
     b98:	4413      	add	r3, r2
     b9a:	795b      	ldrb	r3, [r3, #5]
     b9c:	b299      	uxth	r1, r3
     b9e:	4a6c      	ldr	r2, [pc, #432]	; (d50 <schipp+0x80c>)
     ba0:	f100 0314 	add.w	r3, r0, #20
     ba4:	f822 1013 	strh.w	r1, [r2, r3, lsl #1]
     ba8:	e099      	b.n	cde <schipp+0x79a>
     baa:	7bba      	ldrb	r2, [r7, #14]
     bac:	4b68      	ldr	r3, [pc, #416]	; (d50 <schipp+0x80c>)
     bae:	791b      	ldrb	r3, [r3, #4]
     bb0:	1e59      	subs	r1, r3, #1
     bb2:	b2c8      	uxtb	r0, r1
     bb4:	4966      	ldr	r1, [pc, #408]	; (d50 <schipp+0x80c>)
     bb6:	7108      	strb	r0, [r1, #4]
     bb8:	4965      	ldr	r1, [pc, #404]	; (d50 <schipp+0x80c>)
     bba:	3314      	adds	r3, #20
     bbc:	f831 3013 	ldrh.w	r3, [r1, r3, lsl #1]
     bc0:	b2d9      	uxtb	r1, r3
     bc2:	4b63      	ldr	r3, [pc, #396]	; (d50 <schipp+0x80c>)
     bc4:	4413      	add	r3, r2
     bc6:	460a      	mov	r2, r1
     bc8:	715a      	strb	r2, [r3, #5]
     bca:	e088      	b.n	cde <schipp+0x79a>
     bcc:	7bbb      	ldrb	r3, [r7, #14]
     bce:	4a60      	ldr	r2, [pc, #384]	; (d50 <schipp+0x80c>)
     bd0:	4413      	add	r3, r2
     bd2:	22b4      	movs	r2, #180	; 0xb4
     bd4:	715a      	strb	r2, [r3, #5]
     bd6:	e082      	b.n	cde <schipp+0x79a>
     bd8:	7bbb      	ldrb	r3, [r7, #14]
     bda:	4a5d      	ldr	r2, [pc, #372]	; (d50 <schipp+0x80c>)
     bdc:	4413      	add	r3, r2
     bde:	2270      	movs	r2, #112	; 0x70
     be0:	715a      	strb	r2, [r3, #5]
     be2:	e07c      	b.n	cde <schipp+0x79a>
     be4:	7bbb      	ldrb	r3, [r7, #14]
     be6:	7bba      	ldrb	r2, [r7, #14]
     be8:	4959      	ldr	r1, [pc, #356]	; (d50 <schipp+0x80c>)
     bea:	440a      	add	r2, r1
     bec:	7952      	ldrb	r2, [r2, #5]
     bee:	b251      	sxtb	r1, r2
     bf0:	7b7a      	ldrb	r2, [r7, #13]
     bf2:	f002 0207 	and.w	r2, r2, #7
     bf6:	2001      	movs	r0, #1
     bf8:	fa00 f202 	lsl.w	r2, r0, r2
     bfc:	b252      	sxtb	r2, r2
     bfe:	430a      	orrs	r2, r1
     c00:	b252      	sxtb	r2, r2
     c02:	b2d1      	uxtb	r1, r2
     c04:	4a52      	ldr	r2, [pc, #328]	; (d50 <schipp+0x80c>)
     c06:	4413      	add	r3, r2
     c08:	460a      	mov	r2, r1
     c0a:	715a      	strb	r2, [r3, #5]
     c0c:	e067      	b.n	cde <schipp+0x79a>
     c0e:	7bbb      	ldrb	r3, [r7, #14]
     c10:	7bba      	ldrb	r2, [r7, #14]
     c12:	494f      	ldr	r1, [pc, #316]	; (d50 <schipp+0x80c>)
     c14:	440a      	add	r2, r1
     c16:	7952      	ldrb	r2, [r2, #5]
     c18:	b251      	sxtb	r1, r2
     c1a:	7b7a      	ldrb	r2, [r7, #13]
     c1c:	f002 0207 	and.w	r2, r2, #7
     c20:	2001      	movs	r0, #1
     c22:	fa00 f202 	lsl.w	r2, r0, r2
     c26:	b252      	sxtb	r2, r2
     c28:	43d2      	mvns	r2, r2
     c2a:	b252      	sxtb	r2, r2
     c2c:	400a      	ands	r2, r1
     c2e:	b252      	sxtb	r2, r2
     c30:	b2d1      	uxtb	r1, r2
     c32:	4a47      	ldr	r2, [pc, #284]	; (d50 <schipp+0x80c>)
     c34:	4413      	add	r3, r2
     c36:	460a      	mov	r2, r1
     c38:	715a      	strb	r2, [r3, #5]
     c3a:	e050      	b.n	cde <schipp+0x79a>
     c3c:	7bbb      	ldrb	r3, [r7, #14]
     c3e:	7bba      	ldrb	r2, [r7, #14]
     c40:	4943      	ldr	r1, [pc, #268]	; (d50 <schipp+0x80c>)
     c42:	440a      	add	r2, r1
     c44:	7952      	ldrb	r2, [r2, #5]
     c46:	b251      	sxtb	r1, r2
     c48:	7b7a      	ldrb	r2, [r7, #13]
     c4a:	f002 0207 	and.w	r2, r2, #7
     c4e:	2001      	movs	r0, #1
     c50:	fa00 f202 	lsl.w	r2, r0, r2
     c54:	b252      	sxtb	r2, r2
     c56:	404a      	eors	r2, r1
     c58:	b252      	sxtb	r2, r2
     c5a:	b2d1      	uxtb	r1, r2
     c5c:	4a3c      	ldr	r2, [pc, #240]	; (d50 <schipp+0x80c>)
     c5e:	4413      	add	r3, r2
     c60:	460a      	mov	r2, r1
     c62:	715a      	strb	r2, [r3, #5]
     c64:	e03b      	b.n	cde <schipp+0x79a>
     c66:	7bbb      	ldrb	r3, [r7, #14]
     c68:	4a39      	ldr	r2, [pc, #228]	; (d50 <schipp+0x80c>)
     c6a:	4413      	add	r3, r2
     c6c:	795b      	ldrb	r3, [r3, #5]
     c6e:	461a      	mov	r2, r3
     c70:	7b7b      	ldrb	r3, [r7, #13]
     c72:	f003 0307 	and.w	r3, r3, #7
     c76:	fa42 f303 	asr.w	r3, r2, r3
     c7a:	f003 0301 	and.w	r3, r3, #1
     c7e:	2b00      	cmp	r3, #0
     c80:	d02a      	beq.n	cd8 <schipp+0x794>
     c82:	4b33      	ldr	r3, [pc, #204]	; (d50 <schipp+0x80c>)
     c84:	881b      	ldrh	r3, [r3, #0]
     c86:	3302      	adds	r3, #2
     c88:	b29a      	uxth	r2, r3
     c8a:	4b31      	ldr	r3, [pc, #196]	; (d50 <schipp+0x80c>)
     c8c:	801a      	strh	r2, [r3, #0]
     c8e:	e023      	b.n	cd8 <schipp+0x794>
     c90:	7bbb      	ldrb	r3, [r7, #14]
     c92:	4a2f      	ldr	r2, [pc, #188]	; (d50 <schipp+0x80c>)
     c94:	4413      	add	r3, r2
     c96:	795b      	ldrb	r3, [r3, #5]
     c98:	461a      	mov	r2, r3
     c9a:	7b7b      	ldrb	r3, [r7, #13]
     c9c:	f003 0307 	and.w	r3, r3, #7
     ca0:	fa42 f303 	asr.w	r3, r2, r3
     ca4:	f003 0301 	and.w	r3, r3, #1
     ca8:	2b00      	cmp	r3, #0
     caa:	d117      	bne.n	cdc <schipp+0x798>
     cac:	4b28      	ldr	r3, [pc, #160]	; (d50 <schipp+0x80c>)
     cae:	881b      	ldrh	r3, [r3, #0]
     cb0:	3302      	adds	r3, #2
     cb2:	b29a      	uxth	r2, r3
     cb4:	4b26      	ldr	r3, [pc, #152]	; (d50 <schipp+0x80c>)
     cb6:	801a      	strh	r2, [r3, #0]
     cb8:	e010      	b.n	cdc <schipp+0x798>
     cba:	7bbb      	ldrb	r3, [r7, #14]
     cbc:	7b7a      	ldrb	r2, [r7, #13]
     cbe:	4611      	mov	r1, r2
     cc0:	4618      	mov	r0, r3
     cc2:	f001 fa21 	bl	2108 <gfx_get_pixel>
     cc6:	4603      	mov	r3, r0
     cc8:	461a      	mov	r2, r3
     cca:	4b21      	ldr	r3, [pc, #132]	; (d50 <schipp+0x80c>)
     ccc:	751a      	strb	r2, [r3, #20]
     cce:	e006      	b.n	cde <schipp+0x79a>
     cd0:	2302      	movs	r3, #2
     cd2:	e1c7      	b.n	1064 <schipp+0xb20>
     cd4:	bf00      	nop
     cd6:	e1c3      	b.n	1060 <schipp+0xb1c>
     cd8:	bf00      	nop
     cda:	e1c1      	b.n	1060 <schipp+0xb1c>
     cdc:	bf00      	nop
     cde:	e1bf      	b.n	1060 <schipp+0xb1c>
     ce0:	4b1b      	ldr	r3, [pc, #108]	; (d50 <schipp+0x80c>)
     ce2:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     ce6:	021b      	lsls	r3, r3, #8
     ce8:	4a19      	ldr	r2, [pc, #100]	; (d50 <schipp+0x80c>)
     cea:	f892 2027 	ldrb.w	r2, [r2, #39]	; 0x27
     cee:	4313      	orrs	r3, r2
     cf0:	005b      	lsls	r3, r3, #1
     cf2:	b29b      	uxth	r3, r3
     cf4:	f3c3 030b 	ubfx	r3, r3, #0, #12
     cf8:	b29a      	uxth	r2, r3
     cfa:	4b15      	ldr	r3, [pc, #84]	; (d50 <schipp+0x80c>)
     cfc:	805a      	strh	r2, [r3, #2]
     cfe:	e1af      	b.n	1060 <schipp+0xb1c>
     d00:	4b13      	ldr	r3, [pc, #76]	; (d50 <schipp+0x80c>)
     d02:	795b      	ldrb	r3, [r3, #5]
     d04:	b29b      	uxth	r3, r3
     d06:	005b      	lsls	r3, r3, #1
     d08:	b29a      	uxth	r2, r3
     d0a:	4b11      	ldr	r3, [pc, #68]	; (d50 <schipp+0x80c>)
     d0c:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     d10:	021b      	lsls	r3, r3, #8
     d12:	490f      	ldr	r1, [pc, #60]	; (d50 <schipp+0x80c>)
     d14:	f891 1027 	ldrb.w	r1, [r1, #39]	; 0x27
     d18:	430b      	orrs	r3, r1
     d1a:	005b      	lsls	r3, r3, #1
     d1c:	b29b      	uxth	r3, r3
     d1e:	f3c3 030b 	ubfx	r3, r3, #0, #12
     d22:	b29b      	uxth	r3, r3
     d24:	4413      	add	r3, r2
     d26:	b29a      	uxth	r2, r3
     d28:	4b09      	ldr	r3, [pc, #36]	; (d50 <schipp+0x80c>)
     d2a:	801a      	strh	r2, [r3, #0]
     d2c:	e198      	b.n	1060 <schipp+0xb1c>
     d2e:	7bbc      	ldrb	r4, [r7, #14]
     d30:	f7ff fbe6 	bl	500 <rand>
     d34:	4603      	mov	r3, r0
     d36:	b25a      	sxtb	r2, r3
     d38:	4b05      	ldr	r3, [pc, #20]	; (d50 <schipp+0x80c>)
     d3a:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d3e:	b25b      	sxtb	r3, r3
     d40:	4013      	ands	r3, r2
     d42:	b25b      	sxtb	r3, r3
     d44:	b2da      	uxtb	r2, r3
     d46:	4b02      	ldr	r3, [pc, #8]	; (d50 <schipp+0x80c>)
     d48:	4423      	add	r3, r4
     d4a:	715a      	strb	r2, [r3, #5]
     d4c:	e188      	b.n	1060 <schipp+0xb1c>
     d4e:	bf00      	nop
     d50:	20000084 	.word	0x20000084
     d54:	20000534 	.word	0x20000534
     d58:	4ba1      	ldr	r3, [pc, #644]	; (fe0 <schipp+0xa9c>)
     d5a:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     d5e:	f003 030f 	and.w	r3, r3, #15
     d62:	73fb      	strb	r3, [r7, #15]
     d64:	7bfb      	ldrb	r3, [r7, #15]
     d66:	2b00      	cmp	r3, #0
     d68:	d11b      	bne.n	da2 <schipp+0x85e>
     d6a:	4b9d      	ldr	r3, [pc, #628]	; (fe0 <schipp+0xa9c>)
     d6c:	885b      	ldrh	r3, [r3, #2]
     d6e:	4a9d      	ldr	r2, [pc, #628]	; (fe4 <schipp+0xaa0>)
     d70:	2120      	movs	r1, #32
     d72:	4618      	mov	r0, r3
     d74:	f7ff fb92 	bl	49c <load_block>
     d78:	7bbb      	ldrb	r3, [r7, #14]
     d7a:	4a99      	ldr	r2, [pc, #612]	; (fe0 <schipp+0xa9c>)
     d7c:	4413      	add	r3, r2
     d7e:	795b      	ldrb	r3, [r3, #5]
     d80:	b25b      	sxtb	r3, r3
     d82:	4618      	mov	r0, r3
     d84:	7b7b      	ldrb	r3, [r7, #13]
     d86:	4a96      	ldr	r2, [pc, #600]	; (fe0 <schipp+0xa9c>)
     d88:	4413      	add	r3, r2
     d8a:	795b      	ldrb	r3, [r3, #5]
     d8c:	b25b      	sxtb	r3, r3
     d8e:	4619      	mov	r1, r3
     d90:	4b94      	ldr	r3, [pc, #592]	; (fe4 <schipp+0xaa0>)
     d92:	2220      	movs	r2, #32
     d94:	f7ff fb98 	bl	4c8 <put_big_sprite>
     d98:	4603      	mov	r3, r0
     d9a:	b2da      	uxtb	r2, r3
     d9c:	4b90      	ldr	r3, [pc, #576]	; (fe0 <schipp+0xa9c>)
     d9e:	751a      	strb	r2, [r3, #20]
     da0:	e15e      	b.n	1060 <schipp+0xb1c>
     da2:	4b8f      	ldr	r3, [pc, #572]	; (fe0 <schipp+0xa9c>)
     da4:	885b      	ldrh	r3, [r3, #2]
     da6:	4618      	mov	r0, r3
     da8:	7bfb      	ldrb	r3, [r7, #15]
     daa:	4a8e      	ldr	r2, [pc, #568]	; (fe4 <schipp+0xaa0>)
     dac:	4619      	mov	r1, r3
     dae:	f7ff fb75 	bl	49c <load_block>
     db2:	7bbb      	ldrb	r3, [r7, #14]
     db4:	4a8a      	ldr	r2, [pc, #552]	; (fe0 <schipp+0xa9c>)
     db6:	4413      	add	r3, r2
     db8:	795b      	ldrb	r3, [r3, #5]
     dba:	b25b      	sxtb	r3, r3
     dbc:	4618      	mov	r0, r3
     dbe:	7b7b      	ldrb	r3, [r7, #13]
     dc0:	4a87      	ldr	r2, [pc, #540]	; (fe0 <schipp+0xa9c>)
     dc2:	4413      	add	r3, r2
     dc4:	795b      	ldrb	r3, [r3, #5]
     dc6:	b25b      	sxtb	r3, r3
     dc8:	4619      	mov	r1, r3
     dca:	7bfa      	ldrb	r2, [r7, #15]
     dcc:	4b85      	ldr	r3, [pc, #532]	; (fe4 <schipp+0xaa0>)
     dce:	9300      	str	r3, [sp, #0]
     dd0:	4613      	mov	r3, r2
     dd2:	2208      	movs	r2, #8
     dd4:	f001 f9c6 	bl	2164 <gfx_sprite>
     dd8:	4603      	mov	r3, r0
     dda:	b2da      	uxtb	r2, r3
     ddc:	4b80      	ldr	r3, [pc, #512]	; (fe0 <schipp+0xa9c>)
     dde:	751a      	strb	r2, [r3, #20]
     de0:	e13e      	b.n	1060 <schipp+0xb1c>
     de2:	4b7f      	ldr	r3, [pc, #508]	; (fe0 <schipp+0xa9c>)
     de4:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     de8:	2b9e      	cmp	r3, #158	; 0x9e
     dea:	d002      	beq.n	df2 <schipp+0x8ae>
     dec:	2ba1      	cmp	r3, #161	; 0xa1
     dee:	d011      	beq.n	e14 <schipp+0x8d0>
     df0:	e021      	b.n	e36 <schipp+0x8f2>
     df2:	7bbb      	ldrb	r3, [r7, #14]
     df4:	4a7a      	ldr	r2, [pc, #488]	; (fe0 <schipp+0xa9c>)
     df6:	4413      	add	r3, r2
     df8:	795b      	ldrb	r3, [r3, #5]
     dfa:	4618      	mov	r0, r3
     dfc:	f000 fbac 	bl	1558 <btn_query_down>
     e00:	4603      	mov	r3, r0
     e02:	2b00      	cmp	r3, #0
     e04:	d019      	beq.n	e3a <schipp+0x8f6>
     e06:	4b76      	ldr	r3, [pc, #472]	; (fe0 <schipp+0xa9c>)
     e08:	881b      	ldrh	r3, [r3, #0]
     e0a:	3302      	adds	r3, #2
     e0c:	b29a      	uxth	r2, r3
     e0e:	4b74      	ldr	r3, [pc, #464]	; (fe0 <schipp+0xa9c>)
     e10:	801a      	strh	r2, [r3, #0]
     e12:	e012      	b.n	e3a <schipp+0x8f6>
     e14:	7bbb      	ldrb	r3, [r7, #14]
     e16:	4a72      	ldr	r2, [pc, #456]	; (fe0 <schipp+0xa9c>)
     e18:	4413      	add	r3, r2
     e1a:	795b      	ldrb	r3, [r3, #5]
     e1c:	4618      	mov	r0, r3
     e1e:	f000 fb9b 	bl	1558 <btn_query_down>
     e22:	4603      	mov	r3, r0
     e24:	2b00      	cmp	r3, #0
     e26:	d10a      	bne.n	e3e <schipp+0x8fa>
     e28:	4b6d      	ldr	r3, [pc, #436]	; (fe0 <schipp+0xa9c>)
     e2a:	881b      	ldrh	r3, [r3, #0]
     e2c:	3302      	adds	r3, #2
     e2e:	b29a      	uxth	r2, r3
     e30:	4b6b      	ldr	r3, [pc, #428]	; (fe0 <schipp+0xa9c>)
     e32:	801a      	strh	r2, [r3, #0]
     e34:	e003      	b.n	e3e <schipp+0x8fa>
     e36:	2302      	movs	r3, #2
     e38:	e114      	b.n	1064 <schipp+0xb20>
     e3a:	bf00      	nop
     e3c:	e110      	b.n	1060 <schipp+0xb1c>
     e3e:	bf00      	nop
     e40:	e10e      	b.n	1060 <schipp+0xb1c>
     e42:	4b67      	ldr	r3, [pc, #412]	; (fe0 <schipp+0xa9c>)
     e44:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     e48:	2b29      	cmp	r3, #41	; 0x29
     e4a:	d055      	beq.n	ef8 <schipp+0x9b4>
     e4c:	2b29      	cmp	r3, #41	; 0x29
     e4e:	dc0d      	bgt.n	e6c <schipp+0x928>
     e50:	2b15      	cmp	r3, #21
     e52:	d032      	beq.n	eba <schipp+0x976>
     e54:	2b15      	cmp	r3, #21
     e56:	dc04      	bgt.n	e62 <schipp+0x91e>
     e58:	2b07      	cmp	r3, #7
     e5a:	d01b      	beq.n	e94 <schipp+0x950>
     e5c:	2b0a      	cmp	r3, #10
     e5e:	d023      	beq.n	ea8 <schipp+0x964>
     e60:	e0f1      	b.n	1046 <schipp+0xb02>
     e62:	2b18      	cmp	r3, #24
     e64:	d031      	beq.n	eca <schipp+0x986>
     e66:	2b1e      	cmp	r3, #30
     e68:	d03a      	beq.n	ee0 <schipp+0x99c>
     e6a:	e0ec      	b.n	1046 <schipp+0xb02>
     e6c:	2b55      	cmp	r3, #85	; 0x55
     e6e:	f000 80a0 	beq.w	fb2 <schipp+0xa6e>
     e72:	2b55      	cmp	r3, #85	; 0x55
     e74:	dc04      	bgt.n	e80 <schipp+0x93c>
     e76:	2b30      	cmp	r3, #48	; 0x30
     e78:	d052      	beq.n	f20 <schipp+0x9dc>
     e7a:	2b33      	cmp	r3, #51	; 0x33
     e7c:	d064      	beq.n	f48 <schipp+0xa04>
     e7e:	e0e2      	b.n	1046 <schipp+0xb02>
     e80:	2b75      	cmp	r3, #117	; 0x75
     e82:	f000 80aa 	beq.w	fda <schipp+0xa96>
     e86:	2b85      	cmp	r3, #133	; 0x85
     e88:	f000 80c9 	beq.w	101e <schipp+0xada>
     e8c:	2b65      	cmp	r3, #101	; 0x65
     e8e:	f000 809a 	beq.w	fc6 <schipp+0xa82>
     e92:	e0d8      	b.n	1046 <schipp+0xb02>
     e94:	7bbb      	ldrb	r3, [r7, #14]
     e96:	4a54      	ldr	r2, [pc, #336]	; (fe8 <schipp+0xaa4>)
     e98:	8812      	ldrh	r2, [r2, #0]
     e9a:	b292      	uxth	r2, r2
     e9c:	b2d1      	uxtb	r1, r2
     e9e:	4a50      	ldr	r2, [pc, #320]	; (fe0 <schipp+0xa9c>)
     ea0:	4413      	add	r3, r2
     ea2:	460a      	mov	r2, r1
     ea4:	715a      	strb	r2, [r3, #5]
     ea6:	e0d0      	b.n	104a <schipp+0xb06>
     ea8:	7bbc      	ldrb	r4, [r7, #14]
     eaa:	f000 fbc1 	bl	1630 <btn_wait_any>
     eae:	4603      	mov	r3, r0
     eb0:	461a      	mov	r2, r3
     eb2:	4b4b      	ldr	r3, [pc, #300]	; (fe0 <schipp+0xa9c>)
     eb4:	4423      	add	r3, r4
     eb6:	715a      	strb	r2, [r3, #5]
     eb8:	e0c7      	b.n	104a <schipp+0xb06>
     eba:	7bbb      	ldrb	r3, [r7, #14]
     ebc:	4a48      	ldr	r2, [pc, #288]	; (fe0 <schipp+0xa9c>)
     ebe:	4413      	add	r3, r2
     ec0:	795b      	ldrb	r3, [r3, #5]
     ec2:	b29a      	uxth	r2, r3
     ec4:	4b48      	ldr	r3, [pc, #288]	; (fe8 <schipp+0xaa4>)
     ec6:	801a      	strh	r2, [r3, #0]
     ec8:	e0bf      	b.n	104a <schipp+0xb06>
     eca:	7bbb      	ldrb	r3, [r7, #14]
     ecc:	4a44      	ldr	r2, [pc, #272]	; (fe0 <schipp+0xa9c>)
     ece:	4413      	add	r3, r2
     ed0:	795b      	ldrb	r3, [r3, #5]
     ed2:	b29b      	uxth	r3, r3
     ed4:	4619      	mov	r1, r3
     ed6:	f240 200b 	movw	r0, #523	; 0x20b
     eda:	f002 fe1f 	bl	3b1c <tone>
     ede:	e0b4      	b.n	104a <schipp+0xb06>
     ee0:	4b3f      	ldr	r3, [pc, #252]	; (fe0 <schipp+0xa9c>)
     ee2:	885a      	ldrh	r2, [r3, #2]
     ee4:	7bbb      	ldrb	r3, [r7, #14]
     ee6:	493e      	ldr	r1, [pc, #248]	; (fe0 <schipp+0xa9c>)
     ee8:	440b      	add	r3, r1
     eea:	795b      	ldrb	r3, [r3, #5]
     eec:	b29b      	uxth	r3, r3
     eee:	4413      	add	r3, r2
     ef0:	b29a      	uxth	r2, r3
     ef2:	4b3b      	ldr	r3, [pc, #236]	; (fe0 <schipp+0xa9c>)
     ef4:	805a      	strh	r2, [r3, #2]
     ef6:	e0a8      	b.n	104a <schipp+0xb06>
     ef8:	7bbb      	ldrb	r3, [r7, #14]
     efa:	4a39      	ldr	r2, [pc, #228]	; (fe0 <schipp+0xa9c>)
     efc:	4413      	add	r3, r2
     efe:	795b      	ldrb	r3, [r3, #5]
     f00:	b29b      	uxth	r3, r3
     f02:	461a      	mov	r2, r3
     f04:	0052      	lsls	r2, r2, #1
     f06:	4413      	add	r3, r2
     f08:	005b      	lsls	r3, r3, #1
     f0a:	b29a      	uxth	r2, r3
     f0c:	4b37      	ldr	r3, [pc, #220]	; (fec <schipp+0xaa8>)
     f0e:	b29b      	uxth	r3, r3
     f10:	4413      	add	r3, r2
     f12:	b29a      	uxth	r2, r3
     f14:	4b32      	ldr	r3, [pc, #200]	; (fe0 <schipp+0xa9c>)
     f16:	805a      	strh	r2, [r3, #2]
     f18:	2000      	movs	r0, #0
     f1a:	f003 f8e3 	bl	40e4 <select_font>
     f1e:	e094      	b.n	104a <schipp+0xb06>
     f20:	7bbb      	ldrb	r3, [r7, #14]
     f22:	4a2f      	ldr	r2, [pc, #188]	; (fe0 <schipp+0xa9c>)
     f24:	4413      	add	r3, r2
     f26:	795b      	ldrb	r3, [r3, #5]
     f28:	b29b      	uxth	r3, r3
     f2a:	461a      	mov	r2, r3
     f2c:	0092      	lsls	r2, r2, #2
     f2e:	4413      	add	r3, r2
     f30:	005b      	lsls	r3, r3, #1
     f32:	b29a      	uxth	r2, r3
     f34:	4b2e      	ldr	r3, [pc, #184]	; (ff0 <schipp+0xaac>)
     f36:	b29b      	uxth	r3, r3
     f38:	4413      	add	r3, r2
     f3a:	b29a      	uxth	r2, r3
     f3c:	4b28      	ldr	r3, [pc, #160]	; (fe0 <schipp+0xa9c>)
     f3e:	805a      	strh	r2, [r3, #2]
     f40:	2001      	movs	r0, #1
     f42:	f003 f8cf 	bl	40e4 <select_font>
     f46:	e080      	b.n	104a <schipp+0xb06>
     f48:	7bbb      	ldrb	r3, [r7, #14]
     f4a:	4a25      	ldr	r2, [pc, #148]	; (fe0 <schipp+0xa9c>)
     f4c:	4413      	add	r3, r2
     f4e:	795b      	ldrb	r3, [r3, #5]
     f50:	73fb      	strb	r3, [r7, #15]
     f52:	7bfa      	ldrb	r2, [r7, #15]
     f54:	4b27      	ldr	r3, [pc, #156]	; (ff4 <schipp+0xab0>)
     f56:	fba3 1302 	umull	r1, r3, r3, r2
     f5a:	08d9      	lsrs	r1, r3, #3
     f5c:	460b      	mov	r3, r1
     f5e:	009b      	lsls	r3, r3, #2
     f60:	440b      	add	r3, r1
     f62:	005b      	lsls	r3, r3, #1
     f64:	1ad3      	subs	r3, r2, r3
     f66:	b2da      	uxtb	r2, r3
     f68:	4b1e      	ldr	r3, [pc, #120]	; (fe4 <schipp+0xaa0>)
     f6a:	709a      	strb	r2, [r3, #2]
     f6c:	7bfb      	ldrb	r3, [r7, #15]
     f6e:	4a21      	ldr	r2, [pc, #132]	; (ff4 <schipp+0xab0>)
     f70:	fba2 2303 	umull	r2, r3, r2, r3
     f74:	08db      	lsrs	r3, r3, #3
     f76:	73fb      	strb	r3, [r7, #15]
     f78:	7bfa      	ldrb	r2, [r7, #15]
     f7a:	4b1e      	ldr	r3, [pc, #120]	; (ff4 <schipp+0xab0>)
     f7c:	fba3 1302 	umull	r1, r3, r3, r2
     f80:	08d9      	lsrs	r1, r3, #3
     f82:	460b      	mov	r3, r1
     f84:	009b      	lsls	r3, r3, #2
     f86:	440b      	add	r3, r1
     f88:	005b      	lsls	r3, r3, #1
     f8a:	1ad3      	subs	r3, r2, r3
     f8c:	b2da      	uxtb	r2, r3
     f8e:	4b15      	ldr	r3, [pc, #84]	; (fe4 <schipp+0xaa0>)
     f90:	705a      	strb	r2, [r3, #1]
     f92:	7bfb      	ldrb	r3, [r7, #15]
     f94:	4a17      	ldr	r2, [pc, #92]	; (ff4 <schipp+0xab0>)
     f96:	fba2 2303 	umull	r2, r3, r2, r3
     f9a:	08db      	lsrs	r3, r3, #3
     f9c:	b2da      	uxtb	r2, r3
     f9e:	4b11      	ldr	r3, [pc, #68]	; (fe4 <schipp+0xaa0>)
     fa0:	701a      	strb	r2, [r3, #0]
     fa2:	4b0f      	ldr	r3, [pc, #60]	; (fe0 <schipp+0xa9c>)
     fa4:	885b      	ldrh	r3, [r3, #2]
     fa6:	4a0f      	ldr	r2, [pc, #60]	; (fe4 <schipp+0xaa0>)
     fa8:	2103      	movs	r1, #3
     faa:	4618      	mov	r0, r3
     fac:	f7ff fa81 	bl	4b2 <store_block>
     fb0:	e04b      	b.n	104a <schipp+0xb06>
     fb2:	4b0b      	ldr	r3, [pc, #44]	; (fe0 <schipp+0xa9c>)
     fb4:	885b      	ldrh	r3, [r3, #2]
     fb6:	4618      	mov	r0, r3
     fb8:	7bbb      	ldrb	r3, [r7, #14]
     fba:	3301      	adds	r3, #1
     fbc:	4a0e      	ldr	r2, [pc, #56]	; (ff8 <schipp+0xab4>)
     fbe:	4619      	mov	r1, r3
     fc0:	f7ff fa77 	bl	4b2 <store_block>
     fc4:	e041      	b.n	104a <schipp+0xb06>
     fc6:	4b06      	ldr	r3, [pc, #24]	; (fe0 <schipp+0xa9c>)
     fc8:	885b      	ldrh	r3, [r3, #2]
     fca:	4618      	mov	r0, r3
     fcc:	7bbb      	ldrb	r3, [r7, #14]
     fce:	3301      	adds	r3, #1
     fd0:	4a09      	ldr	r2, [pc, #36]	; (ff8 <schipp+0xab4>)
     fd2:	4619      	mov	r1, r3
     fd4:	f7ff fa62 	bl	49c <load_block>
     fd8:	e037      	b.n	104a <schipp+0xb06>
     fda:	2300      	movs	r3, #0
     fdc:	73fb      	strb	r3, [r7, #15]
     fde:	e019      	b.n	1014 <schipp+0xad0>
     fe0:	20000084 	.word	0x20000084
     fe4:	200000ec 	.word	0x200000ec
     fe8:	20004cc0 	.word	0x20004cc0
     fec:	00004d4c 	.word	0x00004d4c
     ff0:	00004dac 	.word	0x00004dac
     ff4:	cccccccd 	.word	0xcccccccd
     ff8:	20000089 	.word	0x20000089
     ffc:	7bfb      	ldrb	r3, [r7, #15]
     ffe:	7bfa      	ldrb	r2, [r7, #15]
    1000:	491a      	ldr	r1, [pc, #104]	; (106c <schipp+0xb28>)
    1002:	440a      	add	r2, r1
    1004:	7951      	ldrb	r1, [r2, #5]
    1006:	4a19      	ldr	r2, [pc, #100]	; (106c <schipp+0xb28>)
    1008:	4413      	add	r3, r2
    100a:	460a      	mov	r2, r1
    100c:	755a      	strb	r2, [r3, #21]
    100e:	7bfb      	ldrb	r3, [r7, #15]
    1010:	3301      	adds	r3, #1
    1012:	73fb      	strb	r3, [r7, #15]
    1014:	7bfa      	ldrb	r2, [r7, #15]
    1016:	7bbb      	ldrb	r3, [r7, #14]
    1018:	429a      	cmp	r2, r3
    101a:	d9ef      	bls.n	ffc <schipp+0xab8>
    101c:	e015      	b.n	104a <schipp+0xb06>
    101e:	2300      	movs	r3, #0
    1020:	73fb      	strb	r3, [r7, #15]
    1022:	e00b      	b.n	103c <schipp+0xaf8>
    1024:	7bfb      	ldrb	r3, [r7, #15]
    1026:	7bfa      	ldrb	r2, [r7, #15]
    1028:	4910      	ldr	r1, [pc, #64]	; (106c <schipp+0xb28>)
    102a:	440a      	add	r2, r1
    102c:	7d51      	ldrb	r1, [r2, #21]
    102e:	4a0f      	ldr	r2, [pc, #60]	; (106c <schipp+0xb28>)
    1030:	4413      	add	r3, r2
    1032:	460a      	mov	r2, r1
    1034:	715a      	strb	r2, [r3, #5]
    1036:	7bfb      	ldrb	r3, [r7, #15]
    1038:	3301      	adds	r3, #1
    103a:	73fb      	strb	r3, [r7, #15]
    103c:	7bfa      	ldrb	r2, [r7, #15]
    103e:	7bbb      	ldrb	r3, [r7, #14]
    1040:	429a      	cmp	r2, r3
    1042:	d9ef      	bls.n	1024 <schipp+0xae0>
    1044:	e001      	b.n	104a <schipp+0xb06>
    1046:	2302      	movs	r3, #2
    1048:	e00c      	b.n	1064 <schipp+0xb20>
    104a:	e009      	b.n	1060 <schipp+0xb1c>
    104c:	bf00      	nop
    104e:	f7ff ba87 	b.w	560 <schipp+0x1c>
    1052:	bf00      	nop
    1054:	f7ff ba84 	b.w	560 <schipp+0x1c>
    1058:	bf00      	nop
    105a:	f7ff ba81 	b.w	560 <schipp+0x1c>
    105e:	bf00      	nop
    1060:	f7ff ba7e 	b.w	560 <schipp+0x1c>
    1064:	4618      	mov	r0, r3
    1066:	3714      	adds	r7, #20
    1068:	46bd      	mov	sp, r7
    106a:	bd90      	pop	{r4, r7, pc}
    106c:	20000084 	.word	0x20000084

00001070 <flash_enable>:
    1070:	b480      	push	{r7}
    1072:	af00      	add	r7, sp, #0
    1074:	4b14      	ldr	r3, [pc, #80]	; (10c8 <flash_enable+0x58>)
    1076:	2200      	movs	r2, #0
    1078:	701a      	strb	r2, [r3, #0]
    107a:	4b14      	ldr	r3, [pc, #80]	; (10cc <flash_enable+0x5c>)
    107c:	681b      	ldr	r3, [r3, #0]
    107e:	f003 0301 	and.w	r3, r3, #1
    1082:	2b00      	cmp	r3, #0
    1084:	d10c      	bne.n	10a0 <flash_enable+0x30>
    1086:	4a11      	ldr	r2, [pc, #68]	; (10cc <flash_enable+0x5c>)
    1088:	4b10      	ldr	r3, [pc, #64]	; (10cc <flash_enable+0x5c>)
    108a:	681b      	ldr	r3, [r3, #0]
    108c:	f043 0301 	orr.w	r3, r3, #1
    1090:	6013      	str	r3, [r2, #0]
    1092:	bf00      	nop
    1094:	4b0d      	ldr	r3, [pc, #52]	; (10cc <flash_enable+0x5c>)
    1096:	681b      	ldr	r3, [r3, #0]
    1098:	f003 0302 	and.w	r3, r3, #2
    109c:	2b00      	cmp	r3, #0
    109e:	d0f9      	beq.n	1094 <flash_enable+0x24>
    10a0:	4b0b      	ldr	r3, [pc, #44]	; (10d0 <flash_enable+0x60>)
    10a2:	4a0c      	ldr	r2, [pc, #48]	; (10d4 <flash_enable+0x64>)
    10a4:	605a      	str	r2, [r3, #4]
    10a6:	4b0a      	ldr	r3, [pc, #40]	; (10d0 <flash_enable+0x60>)
    10a8:	4a0b      	ldr	r2, [pc, #44]	; (10d8 <flash_enable+0x68>)
    10aa:	605a      	str	r2, [r3, #4]
    10ac:	4b08      	ldr	r3, [pc, #32]	; (10d0 <flash_enable+0x60>)
    10ae:	691b      	ldr	r3, [r3, #16]
    10b0:	f003 0380 	and.w	r3, r3, #128	; 0x80
    10b4:	2b00      	cmp	r3, #0
    10b6:	bf0c      	ite	eq
    10b8:	2301      	moveq	r3, #1
    10ba:	2300      	movne	r3, #0
    10bc:	b2db      	uxtb	r3, r3
    10be:	4618      	mov	r0, r3
    10c0:	46bd      	mov	sp, r7
    10c2:	bc80      	pop	{r7}
    10c4:	4770      	bx	lr
    10c6:	bf00      	nop
    10c8:	2000010c 	.word	0x2000010c
    10cc:	40021000 	.word	0x40021000
    10d0:	40022000 	.word	0x40022000
    10d4:	45670123 	.word	0x45670123
    10d8:	cdef89ab 	.word	0xcdef89ab

000010dc <flash_write_hword>:
    10dc:	b480      	push	{r7}
    10de:	b083      	sub	sp, #12
    10e0:	af00      	add	r7, sp, #0
    10e2:	6078      	str	r0, [r7, #4]
    10e4:	460b      	mov	r3, r1
    10e6:	807b      	strh	r3, [r7, #2]
    10e8:	bf00      	nop
    10ea:	4b16      	ldr	r3, [pc, #88]	; (1144 <flash_write_hword+0x68>)
    10ec:	68db      	ldr	r3, [r3, #12]
    10ee:	f003 0301 	and.w	r3, r3, #1
    10f2:	2b00      	cmp	r3, #0
    10f4:	d1f9      	bne.n	10ea <flash_write_hword+0xe>
    10f6:	4a13      	ldr	r2, [pc, #76]	; (1144 <flash_write_hword+0x68>)
    10f8:	4b12      	ldr	r3, [pc, #72]	; (1144 <flash_write_hword+0x68>)
    10fa:	68db      	ldr	r3, [r3, #12]
    10fc:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    1100:	60d3      	str	r3, [r2, #12]
    1102:	4b10      	ldr	r3, [pc, #64]	; (1144 <flash_write_hword+0x68>)
    1104:	2201      	movs	r2, #1
    1106:	611a      	str	r2, [r3, #16]
    1108:	687b      	ldr	r3, [r7, #4]
    110a:	887a      	ldrh	r2, [r7, #2]
    110c:	801a      	strh	r2, [r3, #0]
    110e:	bf00      	nop
    1110:	4b0c      	ldr	r3, [pc, #48]	; (1144 <flash_write_hword+0x68>)
    1112:	68db      	ldr	r3, [r3, #12]
    1114:	f003 0301 	and.w	r3, r3, #1
    1118:	2b00      	cmp	r3, #0
    111a:	d005      	beq.n	1128 <flash_write_hword+0x4c>
    111c:	4b09      	ldr	r3, [pc, #36]	; (1144 <flash_write_hword+0x68>)
    111e:	68db      	ldr	r3, [r3, #12]
    1120:	f003 0320 	and.w	r3, r3, #32
    1124:	2b00      	cmp	r3, #0
    1126:	d0f3      	beq.n	1110 <flash_write_hword+0x34>
    1128:	687b      	ldr	r3, [r7, #4]
    112a:	881b      	ldrh	r3, [r3, #0]
    112c:	887a      	ldrh	r2, [r7, #2]
    112e:	429a      	cmp	r2, r3
    1130:	bf0c      	ite	eq
    1132:	2301      	moveq	r3, #1
    1134:	2300      	movne	r3, #0
    1136:	b2db      	uxtb	r3, r3
    1138:	4618      	mov	r0, r3
    113a:	370c      	adds	r7, #12
    113c:	46bd      	mov	sp, r7
    113e:	bc80      	pop	{r7}
    1140:	4770      	bx	lr
    1142:	bf00      	nop
    1144:	40022000 	.word	0x40022000

00001148 <write_back_buffer>:
    1148:	b580      	push	{r7, lr}
    114a:	b084      	sub	sp, #16
    114c:	af00      	add	r7, sp, #0
    114e:	4b1e      	ldr	r3, [pc, #120]	; (11c8 <write_back_buffer+0x80>)
    1150:	785b      	ldrb	r3, [r3, #1]
    1152:	029b      	lsls	r3, r3, #10
    1154:	60bb      	str	r3, [r7, #8]
    1156:	4b1d      	ldr	r3, [pc, #116]	; (11cc <write_back_buffer+0x84>)
    1158:	607b      	str	r3, [r7, #4]
    115a:	2300      	movs	r3, #0
    115c:	60fb      	str	r3, [r7, #12]
    115e:	e017      	b.n	1190 <write_back_buffer+0x48>
    1160:	687b      	ldr	r3, [r7, #4]
    1162:	881b      	ldrh	r3, [r3, #0]
    1164:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1168:	4293      	cmp	r3, r2
    116a:	d008      	beq.n	117e <write_back_buffer+0x36>
    116c:	687b      	ldr	r3, [r7, #4]
    116e:	881b      	ldrh	r3, [r3, #0]
    1170:	4619      	mov	r1, r3
    1172:	68b8      	ldr	r0, [r7, #8]
    1174:	f7ff ffb2 	bl	10dc <flash_write_hword>
    1178:	4603      	mov	r3, r0
    117a:	2b00      	cmp	r3, #0
    117c:	d00d      	beq.n	119a <write_back_buffer+0x52>
    117e:	68bb      	ldr	r3, [r7, #8]
    1180:	3302      	adds	r3, #2
    1182:	60bb      	str	r3, [r7, #8]
    1184:	687b      	ldr	r3, [r7, #4]
    1186:	3302      	adds	r3, #2
    1188:	607b      	str	r3, [r7, #4]
    118a:	68fb      	ldr	r3, [r7, #12]
    118c:	3301      	adds	r3, #1
    118e:	60fb      	str	r3, [r7, #12]
    1190:	68fb      	ldr	r3, [r7, #12]
    1192:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1196:	dbe3      	blt.n	1160 <write_back_buffer+0x18>
    1198:	e000      	b.n	119c <write_back_buffer+0x54>
    119a:	bf00      	nop
    119c:	68fb      	ldr	r3, [r7, #12]
    119e:	2b00      	cmp	r3, #0
    11a0:	dd06      	ble.n	11b0 <write_back_buffer+0x68>
    11a2:	4b09      	ldr	r3, [pc, #36]	; (11c8 <write_back_buffer+0x80>)
    11a4:	781b      	ldrb	r3, [r3, #0]
    11a6:	f023 0304 	bic.w	r3, r3, #4
    11aa:	b2da      	uxtb	r2, r3
    11ac:	4b06      	ldr	r3, [pc, #24]	; (11c8 <write_back_buffer+0x80>)
    11ae:	701a      	strb	r2, [r3, #0]
    11b0:	68fb      	ldr	r3, [r7, #12]
    11b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    11b6:	d101      	bne.n	11bc <write_back_buffer+0x74>
    11b8:	2301      	movs	r3, #1
    11ba:	e000      	b.n	11be <write_back_buffer+0x76>
    11bc:	2300      	movs	r3, #0
    11be:	4618      	mov	r0, r3
    11c0:	3710      	adds	r7, #16
    11c2:	46bd      	mov	sp, r7
    11c4:	bd80      	pop	{r7, pc}
    11c6:	bf00      	nop
    11c8:	2000010c 	.word	0x2000010c
    11cc:	2000010e 	.word	0x2000010e

000011d0 <load_row>:
    11d0:	b480      	push	{r7}
    11d2:	b087      	sub	sp, #28
    11d4:	af00      	add	r7, sp, #0
    11d6:	6078      	str	r0, [r7, #4]
    11d8:	687b      	ldr	r3, [r7, #4]
    11da:	029b      	lsls	r3, r3, #10
    11dc:	617b      	str	r3, [r7, #20]
    11de:	4b15      	ldr	r3, [pc, #84]	; (1234 <load_row+0x64>)
    11e0:	613b      	str	r3, [r7, #16]
    11e2:	2300      	movs	r3, #0
    11e4:	60fb      	str	r3, [r7, #12]
    11e6:	e00a      	b.n	11fe <load_row+0x2e>
    11e8:	693b      	ldr	r3, [r7, #16]
    11ea:	1c9a      	adds	r2, r3, #2
    11ec:	613a      	str	r2, [r7, #16]
    11ee:	697a      	ldr	r2, [r7, #20]
    11f0:	1c91      	adds	r1, r2, #2
    11f2:	6179      	str	r1, [r7, #20]
    11f4:	8812      	ldrh	r2, [r2, #0]
    11f6:	801a      	strh	r2, [r3, #0]
    11f8:	68fb      	ldr	r3, [r7, #12]
    11fa:	3301      	adds	r3, #1
    11fc:	60fb      	str	r3, [r7, #12]
    11fe:	68fb      	ldr	r3, [r7, #12]
    1200:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1204:	dbf0      	blt.n	11e8 <load_row+0x18>
    1206:	687b      	ldr	r3, [r7, #4]
    1208:	b2da      	uxtb	r2, r3
    120a:	4b0b      	ldr	r3, [pc, #44]	; (1238 <load_row+0x68>)
    120c:	705a      	strb	r2, [r3, #1]
    120e:	4b0a      	ldr	r3, [pc, #40]	; (1238 <load_row+0x68>)
    1210:	781b      	ldrb	r3, [r3, #0]
    1212:	f023 0301 	bic.w	r3, r3, #1
    1216:	b2da      	uxtb	r2, r3
    1218:	4b07      	ldr	r3, [pc, #28]	; (1238 <load_row+0x68>)
    121a:	701a      	strb	r2, [r3, #0]
    121c:	4b06      	ldr	r3, [pc, #24]	; (1238 <load_row+0x68>)
    121e:	781b      	ldrb	r3, [r3, #0]
    1220:	f043 0302 	orr.w	r3, r3, #2
    1224:	b2da      	uxtb	r2, r3
    1226:	4b04      	ldr	r3, [pc, #16]	; (1238 <load_row+0x68>)
    1228:	701a      	strb	r2, [r3, #0]
    122a:	bf00      	nop
    122c:	371c      	adds	r7, #28
    122e:	46bd      	mov	sp, r7
    1230:	bc80      	pop	{r7}
    1232:	4770      	bx	lr
    1234:	2000010e 	.word	0x2000010e
    1238:	2000010c 	.word	0x2000010c

0000123c <is_erased>:
    123c:	b480      	push	{r7}
    123e:	b085      	sub	sp, #20
    1240:	af00      	add	r7, sp, #0
    1242:	6078      	str	r0, [r7, #4]
    1244:	687b      	ldr	r3, [r7, #4]
    1246:	029b      	lsls	r3, r3, #10
    1248:	60fb      	str	r3, [r7, #12]
    124a:	2300      	movs	r3, #0
    124c:	60bb      	str	r3, [r7, #8]
    124e:	e00c      	b.n	126a <is_erased+0x2e>
    1250:	68fb      	ldr	r3, [r7, #12]
    1252:	1c9a      	adds	r2, r3, #2
    1254:	60fa      	str	r2, [r7, #12]
    1256:	881b      	ldrh	r3, [r3, #0]
    1258:	f64f 72ff 	movw	r2, #65535	; 0xffff
    125c:	4293      	cmp	r3, r2
    125e:	d001      	beq.n	1264 <is_erased+0x28>
    1260:	2300      	movs	r3, #0
    1262:	e008      	b.n	1276 <is_erased+0x3a>
    1264:	68bb      	ldr	r3, [r7, #8]
    1266:	3301      	adds	r3, #1
    1268:	60bb      	str	r3, [r7, #8]
    126a:	68bb      	ldr	r3, [r7, #8]
    126c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1270:	dbee      	blt.n	1250 <is_erased+0x14>
    1272:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1276:	4618      	mov	r0, r3
    1278:	3714      	adds	r7, #20
    127a:	46bd      	mov	sp, r7
    127c:	bc80      	pop	{r7}
    127e:	4770      	bx	lr

00001280 <flash_erase_row>:
    1280:	b580      	push	{r7, lr}
    1282:	b086      	sub	sp, #24
    1284:	af00      	add	r7, sp, #0
    1286:	6078      	str	r0, [r7, #4]
    1288:	687b      	ldr	r3, [r7, #4]
    128a:	2b3f      	cmp	r3, #63	; 0x3f
    128c:	d801      	bhi.n	1292 <flash_erase_row+0x12>
    128e:	2300      	movs	r3, #0
    1290:	e052      	b.n	1338 <flash_erase_row+0xb8>
    1292:	6878      	ldr	r0, [r7, #4]
    1294:	f7ff ffd2 	bl	123c <is_erased>
    1298:	4603      	mov	r3, r0
    129a:	2b00      	cmp	r3, #0
    129c:	d001      	beq.n	12a2 <flash_erase_row+0x22>
    129e:	2301      	movs	r3, #1
    12a0:	e04a      	b.n	1338 <flash_erase_row+0xb8>
    12a2:	687b      	ldr	r3, [r7, #4]
    12a4:	029b      	lsls	r3, r3, #10
    12a6:	617b      	str	r3, [r7, #20]
    12a8:	4b25      	ldr	r3, [pc, #148]	; (1340 <flash_erase_row+0xc0>)
    12aa:	691b      	ldr	r3, [r3, #16]
    12ac:	f003 0380 	and.w	r3, r3, #128	; 0x80
    12b0:	2b00      	cmp	r3, #0
    12b2:	d001      	beq.n	12b8 <flash_erase_row+0x38>
    12b4:	2300      	movs	r3, #0
    12b6:	e03f      	b.n	1338 <flash_erase_row+0xb8>
    12b8:	4a21      	ldr	r2, [pc, #132]	; (1340 <flash_erase_row+0xc0>)
    12ba:	4b21      	ldr	r3, [pc, #132]	; (1340 <flash_erase_row+0xc0>)
    12bc:	68db      	ldr	r3, [r3, #12]
    12be:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    12c2:	60d3      	str	r3, [r2, #12]
    12c4:	4b1e      	ldr	r3, [pc, #120]	; (1340 <flash_erase_row+0xc0>)
    12c6:	2202      	movs	r2, #2
    12c8:	611a      	str	r2, [r3, #16]
    12ca:	4a1d      	ldr	r2, [pc, #116]	; (1340 <flash_erase_row+0xc0>)
    12cc:	697b      	ldr	r3, [r7, #20]
    12ce:	6153      	str	r3, [r2, #20]
    12d0:	4a1b      	ldr	r2, [pc, #108]	; (1340 <flash_erase_row+0xc0>)
    12d2:	4b1b      	ldr	r3, [pc, #108]	; (1340 <flash_erase_row+0xc0>)
    12d4:	691b      	ldr	r3, [r3, #16]
    12d6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    12da:	6113      	str	r3, [r2, #16]
    12dc:	bf00      	nop
    12de:	4b18      	ldr	r3, [pc, #96]	; (1340 <flash_erase_row+0xc0>)
    12e0:	68db      	ldr	r3, [r3, #12]
    12e2:	f003 0301 	and.w	r3, r3, #1
    12e6:	2b00      	cmp	r3, #0
    12e8:	d005      	beq.n	12f6 <flash_erase_row+0x76>
    12ea:	4b15      	ldr	r3, [pc, #84]	; (1340 <flash_erase_row+0xc0>)
    12ec:	68db      	ldr	r3, [r3, #12]
    12ee:	f003 0320 	and.w	r3, r3, #32
    12f2:	2b00      	cmp	r3, #0
    12f4:	d0f3      	beq.n	12de <flash_erase_row+0x5e>
    12f6:	687b      	ldr	r3, [r7, #4]
    12f8:	029b      	lsls	r3, r3, #10
    12fa:	617b      	str	r3, [r7, #20]
    12fc:	2300      	movs	r3, #0
    12fe:	60fb      	str	r3, [r7, #12]
    1300:	e00c      	b.n	131c <flash_erase_row+0x9c>
    1302:	697b      	ldr	r3, [r7, #20]
    1304:	1c9a      	adds	r2, r3, #2
    1306:	617a      	str	r2, [r7, #20]
    1308:	881b      	ldrh	r3, [r3, #0]
    130a:	827b      	strh	r3, [r7, #18]
    130c:	8a7b      	ldrh	r3, [r7, #18]
    130e:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1312:	4293      	cmp	r3, r2
    1314:	d107      	bne.n	1326 <flash_erase_row+0xa6>
    1316:	68fb      	ldr	r3, [r7, #12]
    1318:	3301      	adds	r3, #1
    131a:	60fb      	str	r3, [r7, #12]
    131c:	68fb      	ldr	r3, [r7, #12]
    131e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1322:	dbee      	blt.n	1302 <flash_erase_row+0x82>
    1324:	e000      	b.n	1328 <flash_erase_row+0xa8>
    1326:	bf00      	nop
    1328:	8a7b      	ldrh	r3, [r7, #18]
    132a:	f64f 72ff 	movw	r2, #65535	; 0xffff
    132e:	4293      	cmp	r3, r2
    1330:	bf0c      	ite	eq
    1332:	2301      	moveq	r3, #1
    1334:	2300      	movne	r3, #0
    1336:	b2db      	uxtb	r3, r3
    1338:	4618      	mov	r0, r3
    133a:	3718      	adds	r7, #24
    133c:	46bd      	mov	sp, r7
    133e:	bd80      	pop	{r7, pc}
    1340:	40022000 	.word	0x40022000

00001344 <flash_sync>:
    1344:	b580      	push	{r7, lr}
    1346:	af00      	add	r7, sp, #0
    1348:	4b10      	ldr	r3, [pc, #64]	; (138c <flash_sync+0x48>)
    134a:	781b      	ldrb	r3, [r3, #0]
    134c:	f003 0301 	and.w	r3, r3, #1
    1350:	2b00      	cmp	r3, #0
    1352:	d017      	beq.n	1384 <flash_sync+0x40>
    1354:	4b0d      	ldr	r3, [pc, #52]	; (138c <flash_sync+0x48>)
    1356:	785b      	ldrb	r3, [r3, #1]
    1358:	4618      	mov	r0, r3
    135a:	f7ff ff91 	bl	1280 <flash_erase_row>
    135e:	4603      	mov	r3, r0
    1360:	2b00      	cmp	r3, #0
    1362:	d00d      	beq.n	1380 <flash_sync+0x3c>
    1364:	f7ff fef0 	bl	1148 <write_back_buffer>
    1368:	4603      	mov	r3, r0
    136a:	2b00      	cmp	r3, #0
    136c:	d008      	beq.n	1380 <flash_sync+0x3c>
    136e:	4b07      	ldr	r3, [pc, #28]	; (138c <flash_sync+0x48>)
    1370:	781b      	ldrb	r3, [r3, #0]
    1372:	f023 0301 	bic.w	r3, r3, #1
    1376:	b2da      	uxtb	r2, r3
    1378:	4b04      	ldr	r3, [pc, #16]	; (138c <flash_sync+0x48>)
    137a:	701a      	strb	r2, [r3, #0]
    137c:	2301      	movs	r3, #1
    137e:	e002      	b.n	1386 <flash_sync+0x42>
    1380:	2300      	movs	r3, #0
    1382:	e000      	b.n	1386 <flash_sync+0x42>
    1384:	2301      	movs	r3, #1
    1386:	4618      	mov	r0, r3
    1388:	bd80      	pop	{r7, pc}
    138a:	bf00      	nop
    138c:	2000010c 	.word	0x2000010c

00001390 <flash_flush>:
    1390:	b480      	push	{r7}
    1392:	af00      	add	r7, sp, #0
    1394:	4b03      	ldr	r3, [pc, #12]	; (13a4 <flash_flush+0x14>)
    1396:	2200      	movs	r2, #0
    1398:	701a      	strb	r2, [r3, #0]
    139a:	bf00      	nop
    139c:	46bd      	mov	sp, r7
    139e:	bc80      	pop	{r7}
    13a0:	4770      	bx	lr
    13a2:	bf00      	nop
    13a4:	2000010c 	.word	0x2000010c

000013a8 <flash_disable>:
    13a8:	b580      	push	{r7, lr}
    13aa:	af00      	add	r7, sp, #0
    13ac:	f7ff ffca 	bl	1344 <flash_sync>
    13b0:	4b05      	ldr	r3, [pc, #20]	; (13c8 <flash_disable+0x20>)
    13b2:	2200      	movs	r2, #0
    13b4:	701a      	strb	r2, [r3, #0]
    13b6:	4a05      	ldr	r2, [pc, #20]	; (13cc <flash_disable+0x24>)
    13b8:	4b04      	ldr	r3, [pc, #16]	; (13cc <flash_disable+0x24>)
    13ba:	691b      	ldr	r3, [r3, #16]
    13bc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    13c0:	6113      	str	r3, [r2, #16]
    13c2:	bf00      	nop
    13c4:	bd80      	pop	{r7, pc}
    13c6:	bf00      	nop
    13c8:	2000010c 	.word	0x2000010c
    13cc:	40022000 	.word	0x40022000

000013d0 <btn_idx>:
    13d0:	b480      	push	{r7}
    13d2:	b085      	sub	sp, #20
    13d4:	af00      	add	r7, sp, #0
    13d6:	4603      	mov	r3, r0
    13d8:	71fb      	strb	r3, [r7, #7]
    13da:	2300      	movs	r3, #0
    13dc:	73fb      	strb	r3, [r7, #15]
    13de:	79fb      	ldrb	r3, [r7, #7]
    13e0:	085b      	lsrs	r3, r3, #1
    13e2:	71fb      	strb	r3, [r7, #7]
    13e4:	e005      	b.n	13f2 <btn_idx+0x22>
    13e6:	7bfb      	ldrb	r3, [r7, #15]
    13e8:	3301      	adds	r3, #1
    13ea:	73fb      	strb	r3, [r7, #15]
    13ec:	79fb      	ldrb	r3, [r7, #7]
    13ee:	085b      	lsrs	r3, r3, #1
    13f0:	71fb      	strb	r3, [r7, #7]
    13f2:	79fb      	ldrb	r3, [r7, #7]
    13f4:	2b00      	cmp	r3, #0
    13f6:	d1f6      	bne.n	13e6 <btn_idx+0x16>
    13f8:	7bfb      	ldrb	r3, [r7, #15]
    13fa:	4618      	mov	r0, r3
    13fc:	3714      	adds	r7, #20
    13fe:	46bd      	mov	sp, r7
    1400:	bc80      	pop	{r7}
    1402:	4770      	bx	lr

00001404 <btn_mask>:
    1404:	b480      	push	{r7}
    1406:	b085      	sub	sp, #20
    1408:	af00      	add	r7, sp, #0
    140a:	4603      	mov	r3, r0
    140c:	71fb      	strb	r3, [r7, #7]
    140e:	2300      	movs	r3, #0
    1410:	60fb      	str	r3, [r7, #12]
    1412:	e00f      	b.n	1434 <btn_mask+0x30>
    1414:	4a0c      	ldr	r2, [pc, #48]	; (1448 <btn_mask+0x44>)
    1416:	68fb      	ldr	r3, [r7, #12]
    1418:	4413      	add	r3, r2
    141a:	781b      	ldrb	r3, [r3, #0]
    141c:	79fa      	ldrb	r2, [r7, #7]
    141e:	429a      	cmp	r2, r3
    1420:	d105      	bne.n	142e <btn_mask+0x2a>
    1422:	2201      	movs	r2, #1
    1424:	68fb      	ldr	r3, [r7, #12]
    1426:	fa02 f303 	lsl.w	r3, r2, r3
    142a:	b2db      	uxtb	r3, r3
    142c:	e006      	b.n	143c <btn_mask+0x38>
    142e:	68fb      	ldr	r3, [r7, #12]
    1430:	3301      	adds	r3, #1
    1432:	60fb      	str	r3, [r7, #12]
    1434:	68fb      	ldr	r3, [r7, #12]
    1436:	2b07      	cmp	r3, #7
    1438:	ddec      	ble.n	1414 <btn_mask+0x10>
    143a:	23ff      	movs	r3, #255	; 0xff
    143c:	4618      	mov	r0, r3
    143e:	3714      	adds	r7, #20
    1440:	46bd      	mov	sp, r7
    1442:	bc80      	pop	{r7}
    1444:	4770      	bx	lr
    1446:	bf00      	nop
    1448:	20000004 	.word	0x20000004

0000144c <gamepad_init>:
    144c:	b580      	push	{r7, lr}
    144e:	af00      	add	r7, sp, #0
    1450:	2202      	movs	r2, #2
    1452:	210f      	movs	r1, #15
    1454:	4808      	ldr	r0, [pc, #32]	; (1478 <gamepad_init+0x2c>)
    1456:	f000 fba6 	bl	1ba6 <config_pin>
    145a:	2202      	movs	r2, #2
    145c:	210d      	movs	r1, #13
    145e:	4806      	ldr	r0, [pc, #24]	; (1478 <gamepad_init+0x2c>)
    1460:	f000 fba1 	bl	1ba6 <config_pin>
    1464:	2208      	movs	r2, #8
    1466:	210e      	movs	r1, #14
    1468:	4803      	ldr	r0, [pc, #12]	; (1478 <gamepad_init+0x2c>)
    146a:	f000 fb9c 	bl	1ba6 <config_pin>
    146e:	4b03      	ldr	r3, [pc, #12]	; (147c <gamepad_init+0x30>)
    1470:	22ff      	movs	r2, #255	; 0xff
    1472:	701a      	strb	r2, [r3, #0]
    1474:	bf00      	nop
    1476:	bd80      	pop	{r7, pc}
    1478:	40010c00 	.word	0x40010c00
    147c:	20002534 	.word	0x20002534

00001480 <shift_out>:
    1480:	b480      	push	{r7}
    1482:	b085      	sub	sp, #20
    1484:	af00      	add	r7, sp, #0
    1486:	4603      	mov	r3, r0
    1488:	71fb      	strb	r3, [r7, #7]
    148a:	2301      	movs	r3, #1
    148c:	73fb      	strb	r3, [r7, #15]
    148e:	2300      	movs	r3, #0
    1490:	73bb      	strb	r3, [r7, #14]
    1492:	e033      	b.n	14fc <shift_out+0x7c>
    1494:	79fa      	ldrb	r2, [r7, #7]
    1496:	7bfb      	ldrb	r3, [r7, #15]
    1498:	4013      	ands	r3, r2
    149a:	b2db      	uxtb	r3, r3
    149c:	2b00      	cmp	r3, #0
    149e:	d006      	beq.n	14ae <shift_out+0x2e>
    14a0:	4a25      	ldr	r2, [pc, #148]	; (1538 <shift_out+0xb8>)
    14a2:	4b25      	ldr	r3, [pc, #148]	; (1538 <shift_out+0xb8>)
    14a4:	68db      	ldr	r3, [r3, #12]
    14a6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    14aa:	60d3      	str	r3, [r2, #12]
    14ac:	e005      	b.n	14ba <shift_out+0x3a>
    14ae:	4a22      	ldr	r2, [pc, #136]	; (1538 <shift_out+0xb8>)
    14b0:	4b21      	ldr	r3, [pc, #132]	; (1538 <shift_out+0xb8>)
    14b2:	68db      	ldr	r3, [r3, #12]
    14b4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    14b8:	60d3      	str	r3, [r2, #12]
    14ba:	4a1f      	ldr	r2, [pc, #124]	; (1538 <shift_out+0xb8>)
    14bc:	4b1e      	ldr	r3, [pc, #120]	; (1538 <shift_out+0xb8>)
    14be:	68db      	ldr	r3, [r3, #12]
    14c0:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    14c4:	60d3      	str	r3, [r2, #12]
    14c6:	bf00      	nop
    14c8:	bf00      	nop
    14ca:	bf00      	nop
    14cc:	4a1a      	ldr	r2, [pc, #104]	; (1538 <shift_out+0xb8>)
    14ce:	4b1a      	ldr	r3, [pc, #104]	; (1538 <shift_out+0xb8>)
    14d0:	68db      	ldr	r3, [r3, #12]
    14d2:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    14d6:	60d3      	str	r3, [r2, #12]
    14d8:	7bbb      	ldrb	r3, [r7, #14]
    14da:	085b      	lsrs	r3, r3, #1
    14dc:	73bb      	strb	r3, [r7, #14]
    14de:	4a16      	ldr	r2, [pc, #88]	; (1538 <shift_out+0xb8>)
    14e0:	4b15      	ldr	r3, [pc, #84]	; (1538 <shift_out+0xb8>)
    14e2:	689b      	ldr	r3, [r3, #8]
    14e4:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    14e8:	6093      	str	r3, [r2, #8]
    14ea:	2b00      	cmp	r3, #0
    14ec:	d003      	beq.n	14f6 <shift_out+0x76>
    14ee:	7bbb      	ldrb	r3, [r7, #14]
    14f0:	f063 037f 	orn	r3, r3, #127	; 0x7f
    14f4:	73bb      	strb	r3, [r7, #14]
    14f6:	7bfb      	ldrb	r3, [r7, #15]
    14f8:	005b      	lsls	r3, r3, #1
    14fa:	73fb      	strb	r3, [r7, #15]
    14fc:	7bfb      	ldrb	r3, [r7, #15]
    14fe:	2b00      	cmp	r3, #0
    1500:	d1c8      	bne.n	1494 <shift_out+0x14>
    1502:	4a0d      	ldr	r2, [pc, #52]	; (1538 <shift_out+0xb8>)
    1504:	4b0c      	ldr	r3, [pc, #48]	; (1538 <shift_out+0xb8>)
    1506:	68db      	ldr	r3, [r3, #12]
    1508:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    150c:	60d3      	str	r3, [r2, #12]
    150e:	4a0a      	ldr	r2, [pc, #40]	; (1538 <shift_out+0xb8>)
    1510:	4b09      	ldr	r3, [pc, #36]	; (1538 <shift_out+0xb8>)
    1512:	68db      	ldr	r3, [r3, #12]
    1514:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1518:	60d3      	str	r3, [r2, #12]
    151a:	bf00      	nop
    151c:	bf00      	nop
    151e:	bf00      	nop
    1520:	4a05      	ldr	r2, [pc, #20]	; (1538 <shift_out+0xb8>)
    1522:	4b05      	ldr	r3, [pc, #20]	; (1538 <shift_out+0xb8>)
    1524:	68db      	ldr	r3, [r3, #12]
    1526:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    152a:	60d3      	str	r3, [r2, #12]
    152c:	7bbb      	ldrb	r3, [r7, #14]
    152e:	4618      	mov	r0, r3
    1530:	3714      	adds	r7, #20
    1532:	46bd      	mov	sp, r7
    1534:	bc80      	pop	{r7}
    1536:	4770      	bx	lr
    1538:	40010c00 	.word	0x40010c00

0000153c <read_gamepad>:
    153c:	b580      	push	{r7, lr}
    153e:	af00      	add	r7, sp, #0
    1540:	20fe      	movs	r0, #254	; 0xfe
    1542:	f7ff ff9d 	bl	1480 <shift_out>
    1546:	4603      	mov	r3, r0
    1548:	461a      	mov	r2, r3
    154a:	4b02      	ldr	r3, [pc, #8]	; (1554 <read_gamepad+0x18>)
    154c:	701a      	strb	r2, [r3, #0]
    154e:	bf00      	nop
    1550:	bd80      	pop	{r7, pc}
    1552:	bf00      	nop
    1554:	20002534 	.word	0x20002534

00001558 <btn_query_down>:
    1558:	b580      	push	{r7, lr}
    155a:	b084      	sub	sp, #16
    155c:	af00      	add	r7, sp, #0
    155e:	4603      	mov	r3, r0
    1560:	71fb      	strb	r3, [r7, #7]
    1562:	79fb      	ldrb	r3, [r7, #7]
    1564:	4618      	mov	r0, r3
    1566:	f7ff ff4d 	bl	1404 <btn_mask>
    156a:	4603      	mov	r3, r0
    156c:	73fb      	strb	r3, [r7, #15]
    156e:	4b07      	ldr	r3, [pc, #28]	; (158c <btn_query_down+0x34>)
    1570:	781b      	ldrb	r3, [r3, #0]
    1572:	b2da      	uxtb	r2, r3
    1574:	7bfb      	ldrb	r3, [r7, #15]
    1576:	4013      	ands	r3, r2
    1578:	b2db      	uxtb	r3, r3
    157a:	2b00      	cmp	r3, #0
    157c:	bf0c      	ite	eq
    157e:	2301      	moveq	r3, #1
    1580:	2300      	movne	r3, #0
    1582:	b2db      	uxtb	r3, r3
    1584:	4618      	mov	r0, r3
    1586:	3710      	adds	r7, #16
    1588:	46bd      	mov	sp, r7
    158a:	bd80      	pop	{r7, pc}
    158c:	20002534 	.word	0x20002534

00001590 <btn_wait_down>:
    1590:	b580      	push	{r7, lr}
    1592:	b084      	sub	sp, #16
    1594:	af00      	add	r7, sp, #0
    1596:	4603      	mov	r3, r0
    1598:	71fb      	strb	r3, [r7, #7]
    159a:	79fb      	ldrb	r3, [r7, #7]
    159c:	4618      	mov	r0, r3
    159e:	f7ff ff31 	bl	1404 <btn_mask>
    15a2:	4603      	mov	r3, r0
    15a4:	72fb      	strb	r3, [r7, #11]
    15a6:	2300      	movs	r3, #0
    15a8:	60fb      	str	r3, [r7, #12]
    15aa:	e00f      	b.n	15cc <btn_wait_down+0x3c>
    15ac:	f003 fad6 	bl	4b5c <frame_sync>
    15b0:	4b0a      	ldr	r3, [pc, #40]	; (15dc <btn_wait_down+0x4c>)
    15b2:	781b      	ldrb	r3, [r3, #0]
    15b4:	b2da      	uxtb	r2, r3
    15b6:	7afb      	ldrb	r3, [r7, #11]
    15b8:	4013      	ands	r3, r2
    15ba:	b2db      	uxtb	r3, r3
    15bc:	2b00      	cmp	r3, #0
    15be:	d103      	bne.n	15c8 <btn_wait_down+0x38>
    15c0:	68fb      	ldr	r3, [r7, #12]
    15c2:	3301      	adds	r3, #1
    15c4:	60fb      	str	r3, [r7, #12]
    15c6:	e001      	b.n	15cc <btn_wait_down+0x3c>
    15c8:	2300      	movs	r3, #0
    15ca:	60fb      	str	r3, [r7, #12]
    15cc:	68fb      	ldr	r3, [r7, #12]
    15ce:	2b02      	cmp	r3, #2
    15d0:	ddec      	ble.n	15ac <btn_wait_down+0x1c>
    15d2:	bf00      	nop
    15d4:	3710      	adds	r7, #16
    15d6:	46bd      	mov	sp, r7
    15d8:	bd80      	pop	{r7, pc}
    15da:	bf00      	nop
    15dc:	20002534 	.word	0x20002534

000015e0 <btn_wait_up>:
    15e0:	b580      	push	{r7, lr}
    15e2:	b084      	sub	sp, #16
    15e4:	af00      	add	r7, sp, #0
    15e6:	4603      	mov	r3, r0
    15e8:	71fb      	strb	r3, [r7, #7]
    15ea:	79fb      	ldrb	r3, [r7, #7]
    15ec:	4618      	mov	r0, r3
    15ee:	f7ff ff09 	bl	1404 <btn_mask>
    15f2:	4603      	mov	r3, r0
    15f4:	72fb      	strb	r3, [r7, #11]
    15f6:	2300      	movs	r3, #0
    15f8:	60fb      	str	r3, [r7, #12]
    15fa:	e00f      	b.n	161c <btn_wait_up+0x3c>
    15fc:	f003 faae 	bl	4b5c <frame_sync>
    1600:	4b0a      	ldr	r3, [pc, #40]	; (162c <btn_wait_up+0x4c>)
    1602:	781b      	ldrb	r3, [r3, #0]
    1604:	b2da      	uxtb	r2, r3
    1606:	7afb      	ldrb	r3, [r7, #11]
    1608:	4013      	ands	r3, r2
    160a:	b2db      	uxtb	r3, r3
    160c:	2b00      	cmp	r3, #0
    160e:	d003      	beq.n	1618 <btn_wait_up+0x38>
    1610:	68fb      	ldr	r3, [r7, #12]
    1612:	3301      	adds	r3, #1
    1614:	60fb      	str	r3, [r7, #12]
    1616:	e001      	b.n	161c <btn_wait_up+0x3c>
    1618:	2300      	movs	r3, #0
    161a:	60fb      	str	r3, [r7, #12]
    161c:	68fb      	ldr	r3, [r7, #12]
    161e:	2b02      	cmp	r3, #2
    1620:	ddec      	ble.n	15fc <btn_wait_up+0x1c>
    1622:	bf00      	nop
    1624:	3710      	adds	r7, #16
    1626:	46bd      	mov	sp, r7
    1628:	bd80      	pop	{r7, pc}
    162a:	bf00      	nop
    162c:	20002534 	.word	0x20002534

00001630 <btn_wait_any>:
    1630:	b580      	push	{r7, lr}
    1632:	b082      	sub	sp, #8
    1634:	af00      	add	r7, sp, #0
    1636:	4b16      	ldr	r3, [pc, #88]	; (1690 <btn_wait_any+0x60>)
    1638:	781b      	ldrb	r3, [r3, #0]
    163a:	71fb      	strb	r3, [r7, #7]
    163c:	2300      	movs	r3, #0
    163e:	603b      	str	r3, [r7, #0]
    1640:	e015      	b.n	166e <btn_wait_any+0x3e>
    1642:	f003 fa8b 	bl	4b5c <frame_sync>
    1646:	4b12      	ldr	r3, [pc, #72]	; (1690 <btn_wait_any+0x60>)
    1648:	781b      	ldrb	r3, [r3, #0]
    164a:	b2db      	uxtb	r3, r3
    164c:	79fa      	ldrb	r2, [r7, #7]
    164e:	429a      	cmp	r2, r3
    1650:	d005      	beq.n	165e <btn_wait_any+0x2e>
    1652:	2300      	movs	r3, #0
    1654:	603b      	str	r3, [r7, #0]
    1656:	4b0e      	ldr	r3, [pc, #56]	; (1690 <btn_wait_any+0x60>)
    1658:	781b      	ldrb	r3, [r3, #0]
    165a:	71fb      	strb	r3, [r7, #7]
    165c:	e007      	b.n	166e <btn_wait_any+0x3e>
    165e:	4b0c      	ldr	r3, [pc, #48]	; (1690 <btn_wait_any+0x60>)
    1660:	781b      	ldrb	r3, [r3, #0]
    1662:	b2db      	uxtb	r3, r3
    1664:	2bff      	cmp	r3, #255	; 0xff
    1666:	d002      	beq.n	166e <btn_wait_any+0x3e>
    1668:	683b      	ldr	r3, [r7, #0]
    166a:	3301      	adds	r3, #1
    166c:	603b      	str	r3, [r7, #0]
    166e:	683b      	ldr	r3, [r7, #0]
    1670:	2b02      	cmp	r3, #2
    1672:	dde6      	ble.n	1642 <btn_wait_any+0x12>
    1674:	79fb      	ldrb	r3, [r7, #7]
    1676:	43db      	mvns	r3, r3
    1678:	b2db      	uxtb	r3, r3
    167a:	4618      	mov	r0, r3
    167c:	f7ff fea8 	bl	13d0 <btn_idx>
    1680:	4603      	mov	r3, r0
    1682:	461a      	mov	r2, r3
    1684:	4b03      	ldr	r3, [pc, #12]	; (1694 <btn_wait_any+0x64>)
    1686:	5c9b      	ldrb	r3, [r3, r2]
    1688:	4618      	mov	r0, r3
    168a:	3708      	adds	r7, #8
    168c:	46bd      	mov	sp, r7
    168e:	bd80      	pop	{r7, pc}
    1690:	20002534 	.word	0x20002534
    1694:	20000004 	.word	0x20000004

00001698 <btn_set_value>:
    1698:	b480      	push	{r7}
    169a:	b083      	sub	sp, #12
    169c:	af00      	add	r7, sp, #0
    169e:	4603      	mov	r3, r0
    16a0:	460a      	mov	r2, r1
    16a2:	71fb      	strb	r3, [r7, #7]
    16a4:	4613      	mov	r3, r2
    16a6:	71bb      	strb	r3, [r7, #6]
    16a8:	79fb      	ldrb	r3, [r7, #7]
    16aa:	4904      	ldr	r1, [pc, #16]	; (16bc <btn_set_value+0x24>)
    16ac:	79ba      	ldrb	r2, [r7, #6]
    16ae:	54ca      	strb	r2, [r1, r3]
    16b0:	bf00      	nop
    16b2:	370c      	adds	r7, #12
    16b4:	46bd      	mov	sp, r7
    16b6:	bc80      	pop	{r7}
    16b8:	4770      	bx	lr
    16ba:	bf00      	nop
    16bc:	20000004 	.word	0x20000004

000016c0 <get_keymap>:
    16c0:	b480      	push	{r7}
    16c2:	af00      	add	r7, sp, #0
    16c4:	4b02      	ldr	r3, [pc, #8]	; (16d0 <get_keymap+0x10>)
    16c6:	4618      	mov	r0, r3
    16c8:	46bd      	mov	sp, r7
    16ca:	bc80      	pop	{r7}
    16cc:	4770      	bx	lr
    16ce:	bf00      	nop
    16d0:	20000004 	.word	0x20000004

000016d4 <strcmp>:
    16d4:	b480      	push	{r7}
    16d6:	b085      	sub	sp, #20
    16d8:	af00      	add	r7, sp, #0
    16da:	6078      	str	r0, [r7, #4]
    16dc:	6039      	str	r1, [r7, #0]
    16de:	2300      	movs	r3, #0
    16e0:	60fb      	str	r3, [r7, #12]
    16e2:	e018      	b.n	1716 <strcmp+0x42>
    16e4:	687b      	ldr	r3, [r7, #4]
    16e6:	781a      	ldrb	r2, [r3, #0]
    16e8:	683b      	ldr	r3, [r7, #0]
    16ea:	781b      	ldrb	r3, [r3, #0]
    16ec:	429a      	cmp	r2, r3
    16ee:	d203      	bcs.n	16f8 <strcmp+0x24>
    16f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    16f4:	60fb      	str	r3, [r7, #12]
    16f6:	e016      	b.n	1726 <strcmp+0x52>
    16f8:	687b      	ldr	r3, [r7, #4]
    16fa:	781a      	ldrb	r2, [r3, #0]
    16fc:	683b      	ldr	r3, [r7, #0]
    16fe:	781b      	ldrb	r3, [r3, #0]
    1700:	429a      	cmp	r2, r3
    1702:	d902      	bls.n	170a <strcmp+0x36>
    1704:	2301      	movs	r3, #1
    1706:	60fb      	str	r3, [r7, #12]
    1708:	e00d      	b.n	1726 <strcmp+0x52>
    170a:	687b      	ldr	r3, [r7, #4]
    170c:	3301      	adds	r3, #1
    170e:	607b      	str	r3, [r7, #4]
    1710:	683b      	ldr	r3, [r7, #0]
    1712:	3301      	adds	r3, #1
    1714:	603b      	str	r3, [r7, #0]
    1716:	687b      	ldr	r3, [r7, #4]
    1718:	781b      	ldrb	r3, [r3, #0]
    171a:	2b00      	cmp	r3, #0
    171c:	d003      	beq.n	1726 <strcmp+0x52>
    171e:	683b      	ldr	r3, [r7, #0]
    1720:	781b      	ldrb	r3, [r3, #0]
    1722:	2b00      	cmp	r3, #0
    1724:	d1de      	bne.n	16e4 <strcmp+0x10>
    1726:	68fb      	ldr	r3, [r7, #12]
    1728:	2b00      	cmp	r3, #0
    172a:	d115      	bne.n	1758 <strcmp+0x84>
    172c:	687b      	ldr	r3, [r7, #4]
    172e:	781b      	ldrb	r3, [r3, #0]
    1730:	2b00      	cmp	r3, #0
    1732:	d107      	bne.n	1744 <strcmp+0x70>
    1734:	683b      	ldr	r3, [r7, #0]
    1736:	781b      	ldrb	r3, [r3, #0]
    1738:	2b00      	cmp	r3, #0
    173a:	d003      	beq.n	1744 <strcmp+0x70>
    173c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1740:	60fb      	str	r3, [r7, #12]
    1742:	e009      	b.n	1758 <strcmp+0x84>
    1744:	687b      	ldr	r3, [r7, #4]
    1746:	781b      	ldrb	r3, [r3, #0]
    1748:	2b00      	cmp	r3, #0
    174a:	d005      	beq.n	1758 <strcmp+0x84>
    174c:	683b      	ldr	r3, [r7, #0]
    174e:	781b      	ldrb	r3, [r3, #0]
    1750:	2b00      	cmp	r3, #0
    1752:	d101      	bne.n	1758 <strcmp+0x84>
    1754:	2301      	movs	r3, #1
    1756:	60fb      	str	r3, [r7, #12]
    1758:	68fb      	ldr	r3, [r7, #12]
    175a:	4618      	mov	r0, r3
    175c:	3714      	adds	r7, #20
    175e:	46bd      	mov	sp, r7
    1760:	bc80      	pop	{r7}
    1762:	4770      	bx	lr

00001764 <alpha>:
    1764:	b480      	push	{r7}
    1766:	b083      	sub	sp, #12
    1768:	af00      	add	r7, sp, #0
    176a:	4603      	mov	r3, r0
    176c:	71fb      	strb	r3, [r7, #7]
    176e:	79fb      	ldrb	r3, [r7, #7]
    1770:	2b60      	cmp	r3, #96	; 0x60
    1772:	d902      	bls.n	177a <alpha+0x16>
    1774:	79fb      	ldrb	r3, [r7, #7]
    1776:	2b7a      	cmp	r3, #122	; 0x7a
    1778:	d905      	bls.n	1786 <alpha+0x22>
    177a:	79fb      	ldrb	r3, [r7, #7]
    177c:	2b40      	cmp	r3, #64	; 0x40
    177e:	d904      	bls.n	178a <alpha+0x26>
    1780:	79fb      	ldrb	r3, [r7, #7]
    1782:	2b5a      	cmp	r3, #90	; 0x5a
    1784:	d801      	bhi.n	178a <alpha+0x26>
    1786:	2301      	movs	r3, #1
    1788:	e000      	b.n	178c <alpha+0x28>
    178a:	2300      	movs	r3, #0
    178c:	4618      	mov	r0, r3
    178e:	370c      	adds	r7, #12
    1790:	46bd      	mov	sp, r7
    1792:	bc80      	pop	{r7}
    1794:	4770      	bx	lr

00001796 <digit>:
    1796:	b480      	push	{r7}
    1798:	b083      	sub	sp, #12
    179a:	af00      	add	r7, sp, #0
    179c:	4603      	mov	r3, r0
    179e:	71fb      	strb	r3, [r7, #7]
    17a0:	79fb      	ldrb	r3, [r7, #7]
    17a2:	2b2f      	cmp	r3, #47	; 0x2f
    17a4:	d904      	bls.n	17b0 <digit+0x1a>
    17a6:	79fb      	ldrb	r3, [r7, #7]
    17a8:	2b39      	cmp	r3, #57	; 0x39
    17aa:	d801      	bhi.n	17b0 <digit+0x1a>
    17ac:	2301      	movs	r3, #1
    17ae:	e000      	b.n	17b2 <digit+0x1c>
    17b0:	2300      	movs	r3, #0
    17b2:	4618      	mov	r0, r3
    17b4:	370c      	adds	r7, #12
    17b6:	46bd      	mov	sp, r7
    17b8:	bc80      	pop	{r7}
    17ba:	4770      	bx	lr

000017bc <hexdigit>:
    17bc:	b580      	push	{r7, lr}
    17be:	b082      	sub	sp, #8
    17c0:	af00      	add	r7, sp, #0
    17c2:	4603      	mov	r3, r0
    17c4:	71fb      	strb	r3, [r7, #7]
    17c6:	79fb      	ldrb	r3, [r7, #7]
    17c8:	2b60      	cmp	r3, #96	; 0x60
    17ca:	d902      	bls.n	17d2 <hexdigit+0x16>
    17cc:	79fb      	ldrb	r3, [r7, #7]
    17ce:	3b20      	subs	r3, #32
    17d0:	71fb      	strb	r3, [r7, #7]
    17d2:	79fb      	ldrb	r3, [r7, #7]
    17d4:	4618      	mov	r0, r3
    17d6:	f7ff ffde 	bl	1796 <digit>
    17da:	4603      	mov	r3, r0
    17dc:	2b00      	cmp	r3, #0
    17de:	d105      	bne.n	17ec <hexdigit+0x30>
    17e0:	79fb      	ldrb	r3, [r7, #7]
    17e2:	2b40      	cmp	r3, #64	; 0x40
    17e4:	d904      	bls.n	17f0 <hexdigit+0x34>
    17e6:	79fb      	ldrb	r3, [r7, #7]
    17e8:	2b46      	cmp	r3, #70	; 0x46
    17ea:	d801      	bhi.n	17f0 <hexdigit+0x34>
    17ec:	2301      	movs	r3, #1
    17ee:	e000      	b.n	17f2 <hexdigit+0x36>
    17f0:	2300      	movs	r3, #0
    17f2:	4618      	mov	r0, r3
    17f4:	3708      	adds	r7, #8
    17f6:	46bd      	mov	sp, r7
    17f8:	bd80      	pop	{r7, pc}

000017fa <atoi>:
    17fa:	b580      	push	{r7, lr}
    17fc:	b086      	sub	sp, #24
    17fe:	af00      	add	r7, sp, #0
    1800:	6078      	str	r0, [r7, #4]
    1802:	2300      	movs	r3, #0
    1804:	617b      	str	r3, [r7, #20]
    1806:	2301      	movs	r3, #1
    1808:	613b      	str	r3, [r7, #16]
    180a:	230a      	movs	r3, #10
    180c:	60fb      	str	r3, [r7, #12]
    180e:	e002      	b.n	1816 <atoi+0x1c>
    1810:	687b      	ldr	r3, [r7, #4]
    1812:	3301      	adds	r3, #1
    1814:	607b      	str	r3, [r7, #4]
    1816:	687b      	ldr	r3, [r7, #4]
    1818:	781b      	ldrb	r3, [r3, #0]
    181a:	2b00      	cmp	r3, #0
    181c:	d003      	beq.n	1826 <atoi+0x2c>
    181e:	687b      	ldr	r3, [r7, #4]
    1820:	781b      	ldrb	r3, [r3, #0]
    1822:	2b20      	cmp	r3, #32
    1824:	d0f4      	beq.n	1810 <atoi+0x16>
    1826:	687b      	ldr	r3, [r7, #4]
    1828:	781b      	ldrb	r3, [r3, #0]
    182a:	2b2d      	cmp	r3, #45	; 0x2d
    182c:	d105      	bne.n	183a <atoi+0x40>
    182e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1832:	613b      	str	r3, [r7, #16]
    1834:	687b      	ldr	r3, [r7, #4]
    1836:	3301      	adds	r3, #1
    1838:	607b      	str	r3, [r7, #4]
    183a:	687b      	ldr	r3, [r7, #4]
    183c:	781b      	ldrb	r3, [r3, #0]
    183e:	2b24      	cmp	r3, #36	; 0x24
    1840:	d10e      	bne.n	1860 <atoi+0x66>
    1842:	687b      	ldr	r3, [r7, #4]
    1844:	3301      	adds	r3, #1
    1846:	781b      	ldrb	r3, [r3, #0]
    1848:	4618      	mov	r0, r3
    184a:	f7ff ffb7 	bl	17bc <hexdigit>
    184e:	4603      	mov	r3, r0
    1850:	2b00      	cmp	r3, #0
    1852:	d005      	beq.n	1860 <atoi+0x66>
    1854:	2310      	movs	r3, #16
    1856:	60fb      	str	r3, [r7, #12]
    1858:	687b      	ldr	r3, [r7, #4]
    185a:	3301      	adds	r3, #1
    185c:	607b      	str	r3, [r7, #4]
    185e:	e012      	b.n	1886 <atoi+0x8c>
    1860:	687b      	ldr	r3, [r7, #4]
    1862:	781b      	ldrb	r3, [r3, #0]
    1864:	2b30      	cmp	r3, #48	; 0x30
    1866:	d128      	bne.n	18ba <atoi+0xc0>
    1868:	687b      	ldr	r3, [r7, #4]
    186a:	3301      	adds	r3, #1
    186c:	781b      	ldrb	r3, [r3, #0]
    186e:	2b78      	cmp	r3, #120	; 0x78
    1870:	d004      	beq.n	187c <atoi+0x82>
    1872:	687b      	ldr	r3, [r7, #4]
    1874:	3301      	adds	r3, #1
    1876:	781b      	ldrb	r3, [r3, #0]
    1878:	2b58      	cmp	r3, #88	; 0x58
    187a:	d11e      	bne.n	18ba <atoi+0xc0>
    187c:	2310      	movs	r3, #16
    187e:	60fb      	str	r3, [r7, #12]
    1880:	687b      	ldr	r3, [r7, #4]
    1882:	3302      	adds	r3, #2
    1884:	607b      	str	r3, [r7, #4]
    1886:	e018      	b.n	18ba <atoi+0xc0>
    1888:	7afb      	ldrb	r3, [r7, #11]
    188a:	2b60      	cmp	r3, #96	; 0x60
    188c:	d902      	bls.n	1894 <atoi+0x9a>
    188e:	7afb      	ldrb	r3, [r7, #11]
    1890:	3b20      	subs	r3, #32
    1892:	72fb      	strb	r3, [r7, #11]
    1894:	7afb      	ldrb	r3, [r7, #11]
    1896:	3b30      	subs	r3, #48	; 0x30
    1898:	72fb      	strb	r3, [r7, #11]
    189a:	7afb      	ldrb	r3, [r7, #11]
    189c:	2b09      	cmp	r3, #9
    189e:	d902      	bls.n	18a6 <atoi+0xac>
    18a0:	7afb      	ldrb	r3, [r7, #11]
    18a2:	3b07      	subs	r3, #7
    18a4:	72fb      	strb	r3, [r7, #11]
    18a6:	697b      	ldr	r3, [r7, #20]
    18a8:	68fa      	ldr	r2, [r7, #12]
    18aa:	fb02 f203 	mul.w	r2, r2, r3
    18ae:	7afb      	ldrb	r3, [r7, #11]
    18b0:	4413      	add	r3, r2
    18b2:	617b      	str	r3, [r7, #20]
    18b4:	687b      	ldr	r3, [r7, #4]
    18b6:	3301      	adds	r3, #1
    18b8:	607b      	str	r3, [r7, #4]
    18ba:	687b      	ldr	r3, [r7, #4]
    18bc:	781b      	ldrb	r3, [r3, #0]
    18be:	72fb      	strb	r3, [r7, #11]
    18c0:	7afb      	ldrb	r3, [r7, #11]
    18c2:	2b00      	cmp	r3, #0
    18c4:	d00d      	beq.n	18e2 <atoi+0xe8>
    18c6:	68fb      	ldr	r3, [r7, #12]
    18c8:	2b0a      	cmp	r3, #10
    18ca:	d10a      	bne.n	18e2 <atoi+0xe8>
    18cc:	7afb      	ldrb	r3, [r7, #11]
    18ce:	4618      	mov	r0, r3
    18d0:	f7ff ff61 	bl	1796 <digit>
    18d4:	4603      	mov	r3, r0
    18d6:	2b00      	cmp	r3, #0
    18d8:	bf14      	ite	ne
    18da:	2301      	movne	r3, #1
    18dc:	2300      	moveq	r3, #0
    18de:	b2db      	uxtb	r3, r3
    18e0:	e009      	b.n	18f6 <atoi+0xfc>
    18e2:	7afb      	ldrb	r3, [r7, #11]
    18e4:	4618      	mov	r0, r3
    18e6:	f7ff ff69 	bl	17bc <hexdigit>
    18ea:	4603      	mov	r3, r0
    18ec:	2b00      	cmp	r3, #0
    18ee:	bf14      	ite	ne
    18f0:	2301      	movne	r3, #1
    18f2:	2300      	moveq	r3, #0
    18f4:	b2db      	uxtb	r3, r3
    18f6:	2b00      	cmp	r3, #0
    18f8:	d1c6      	bne.n	1888 <atoi+0x8e>
    18fa:	693b      	ldr	r3, [r7, #16]
    18fc:	697a      	ldr	r2, [r7, #20]
    18fe:	fb02 f303 	mul.w	r3, r2, r3
    1902:	4618      	mov	r0, r3
    1904:	3718      	adds	r7, #24
    1906:	46bd      	mov	sp, r7
    1908:	bd80      	pop	{r7, pc}

0000190a <move>:
    190a:	b480      	push	{r7}
    190c:	b085      	sub	sp, #20
    190e:	af00      	add	r7, sp, #0
    1910:	60f8      	str	r0, [r7, #12]
    1912:	60b9      	str	r1, [r7, #8]
    1914:	607a      	str	r2, [r7, #4]
    1916:	e00a      	b.n	192e <move+0x24>
    1918:	68bb      	ldr	r3, [r7, #8]
    191a:	1c5a      	adds	r2, r3, #1
    191c:	60ba      	str	r2, [r7, #8]
    191e:	68fa      	ldr	r2, [r7, #12]
    1920:	1c51      	adds	r1, r2, #1
    1922:	60f9      	str	r1, [r7, #12]
    1924:	7812      	ldrb	r2, [r2, #0]
    1926:	701a      	strb	r2, [r3, #0]
    1928:	687b      	ldr	r3, [r7, #4]
    192a:	3b01      	subs	r3, #1
    192c:	607b      	str	r3, [r7, #4]
    192e:	687b      	ldr	r3, [r7, #4]
    1930:	2b00      	cmp	r3, #0
    1932:	d1f1      	bne.n	1918 <move+0xe>
    1934:	bf00      	nop
    1936:	3714      	adds	r7, #20
    1938:	46bd      	mov	sp, r7
    193a:	bc80      	pop	{r7}
    193c:	4770      	bx	lr

0000193e <strlen>:
    193e:	b480      	push	{r7}
    1940:	b085      	sub	sp, #20
    1942:	af00      	add	r7, sp, #0
    1944:	6078      	str	r0, [r7, #4]
    1946:	2300      	movs	r3, #0
    1948:	60fb      	str	r3, [r7, #12]
    194a:	e002      	b.n	1952 <strlen+0x14>
    194c:	68fb      	ldr	r3, [r7, #12]
    194e:	3301      	adds	r3, #1
    1950:	60fb      	str	r3, [r7, #12]
    1952:	68fb      	ldr	r3, [r7, #12]
    1954:	687a      	ldr	r2, [r7, #4]
    1956:	4413      	add	r3, r2
    1958:	781b      	ldrb	r3, [r3, #0]
    195a:	2b00      	cmp	r3, #0
    195c:	d1f6      	bne.n	194c <strlen+0xe>
    195e:	68fb      	ldr	r3, [r7, #12]
    1960:	4618      	mov	r0, r3
    1962:	3714      	adds	r7, #20
    1964:	46bd      	mov	sp, r7
    1966:	bc80      	pop	{r7}
    1968:	4770      	bx	lr

0000196a <fill>:
    196a:	b480      	push	{r7}
    196c:	b087      	sub	sp, #28
    196e:	af00      	add	r7, sp, #0
    1970:	60f8      	str	r0, [r7, #12]
    1972:	60b9      	str	r1, [r7, #8]
    1974:	4613      	mov	r3, r2
    1976:	71fb      	strb	r3, [r7, #7]
    1978:	2300      	movs	r3, #0
    197a:	617b      	str	r3, [r7, #20]
    197c:	e007      	b.n	198e <fill+0x24>
    197e:	68fb      	ldr	r3, [r7, #12]
    1980:	1c5a      	adds	r2, r3, #1
    1982:	60fa      	str	r2, [r7, #12]
    1984:	79fa      	ldrb	r2, [r7, #7]
    1986:	701a      	strb	r2, [r3, #0]
    1988:	697b      	ldr	r3, [r7, #20]
    198a:	3301      	adds	r3, #1
    198c:	617b      	str	r3, [r7, #20]
    198e:	697a      	ldr	r2, [r7, #20]
    1990:	68bb      	ldr	r3, [r7, #8]
    1992:	429a      	cmp	r2, r3
    1994:	d3f3      	bcc.n	197e <fill+0x14>
    1996:	bf00      	nop
    1998:	371c      	adds	r7, #28
    199a:	46bd      	mov	sp, r7
    199c:	bc80      	pop	{r7}
    199e:	4770      	bx	lr

000019a0 <is_lower>:
    19a0:	b480      	push	{r7}
    19a2:	b083      	sub	sp, #12
    19a4:	af00      	add	r7, sp, #0
    19a6:	4603      	mov	r3, r0
    19a8:	71fb      	strb	r3, [r7, #7]
    19aa:	79fb      	ldrb	r3, [r7, #7]
    19ac:	2b60      	cmp	r3, #96	; 0x60
    19ae:	d904      	bls.n	19ba <is_lower+0x1a>
    19b0:	79fb      	ldrb	r3, [r7, #7]
    19b2:	2b7a      	cmp	r3, #122	; 0x7a
    19b4:	d801      	bhi.n	19ba <is_lower+0x1a>
    19b6:	2301      	movs	r3, #1
    19b8:	e000      	b.n	19bc <is_lower+0x1c>
    19ba:	2300      	movs	r3, #0
    19bc:	4618      	mov	r0, r3
    19be:	370c      	adds	r7, #12
    19c0:	46bd      	mov	sp, r7
    19c2:	bc80      	pop	{r7}
    19c4:	4770      	bx	lr

000019c6 <is_upper>:
    19c6:	b480      	push	{r7}
    19c8:	b083      	sub	sp, #12
    19ca:	af00      	add	r7, sp, #0
    19cc:	4603      	mov	r3, r0
    19ce:	71fb      	strb	r3, [r7, #7]
    19d0:	79fb      	ldrb	r3, [r7, #7]
    19d2:	2b40      	cmp	r3, #64	; 0x40
    19d4:	d904      	bls.n	19e0 <is_upper+0x1a>
    19d6:	79fb      	ldrb	r3, [r7, #7]
    19d8:	2b5a      	cmp	r3, #90	; 0x5a
    19da:	d801      	bhi.n	19e0 <is_upper+0x1a>
    19dc:	2301      	movs	r3, #1
    19de:	e000      	b.n	19e2 <is_upper+0x1c>
    19e0:	2300      	movs	r3, #0
    19e2:	4618      	mov	r0, r3
    19e4:	370c      	adds	r7, #12
    19e6:	46bd      	mov	sp, r7
    19e8:	bc80      	pop	{r7}
    19ea:	4770      	bx	lr

000019ec <uppercase>:
    19ec:	b580      	push	{r7, lr}
    19ee:	b082      	sub	sp, #8
    19f0:	af00      	add	r7, sp, #0
    19f2:	6078      	str	r0, [r7, #4]
    19f4:	e010      	b.n	1a18 <uppercase+0x2c>
    19f6:	687b      	ldr	r3, [r7, #4]
    19f8:	781b      	ldrb	r3, [r3, #0]
    19fa:	4618      	mov	r0, r3
    19fc:	f7ff ffd0 	bl	19a0 <is_lower>
    1a00:	4603      	mov	r3, r0
    1a02:	2b00      	cmp	r3, #0
    1a04:	d005      	beq.n	1a12 <uppercase+0x26>
    1a06:	687b      	ldr	r3, [r7, #4]
    1a08:	781b      	ldrb	r3, [r3, #0]
    1a0a:	3b20      	subs	r3, #32
    1a0c:	b2da      	uxtb	r2, r3
    1a0e:	687b      	ldr	r3, [r7, #4]
    1a10:	701a      	strb	r2, [r3, #0]
    1a12:	687b      	ldr	r3, [r7, #4]
    1a14:	3301      	adds	r3, #1
    1a16:	607b      	str	r3, [r7, #4]
    1a18:	687b      	ldr	r3, [r7, #4]
    1a1a:	781b      	ldrb	r3, [r3, #0]
    1a1c:	2b00      	cmp	r3, #0
    1a1e:	d1ea      	bne.n	19f6 <uppercase+0xa>
    1a20:	bf00      	nop
    1a22:	3708      	adds	r7, #8
    1a24:	46bd      	mov	sp, r7
    1a26:	bd80      	pop	{r7, pc}

00001a28 <scan>:
    1a28:	b480      	push	{r7}
    1a2a:	b085      	sub	sp, #20
    1a2c:	af00      	add	r7, sp, #0
    1a2e:	60f8      	str	r0, [r7, #12]
    1a30:	60b9      	str	r1, [r7, #8]
    1a32:	4613      	mov	r3, r2
    1a34:	71fb      	strb	r3, [r7, #7]
    1a36:	e002      	b.n	1a3e <scan+0x16>
    1a38:	68bb      	ldr	r3, [r7, #8]
    1a3a:	3301      	adds	r3, #1
    1a3c:	60bb      	str	r3, [r7, #8]
    1a3e:	68bb      	ldr	r3, [r7, #8]
    1a40:	68fa      	ldr	r2, [r7, #12]
    1a42:	4413      	add	r3, r2
    1a44:	781b      	ldrb	r3, [r3, #0]
    1a46:	2b00      	cmp	r3, #0
    1a48:	d006      	beq.n	1a58 <scan+0x30>
    1a4a:	68bb      	ldr	r3, [r7, #8]
    1a4c:	68fa      	ldr	r2, [r7, #12]
    1a4e:	4413      	add	r3, r2
    1a50:	781b      	ldrb	r3, [r3, #0]
    1a52:	79fa      	ldrb	r2, [r7, #7]
    1a54:	429a      	cmp	r2, r3
    1a56:	d1ef      	bne.n	1a38 <scan+0x10>
    1a58:	68bb      	ldr	r3, [r7, #8]
    1a5a:	4618      	mov	r0, r3
    1a5c:	3714      	adds	r7, #20
    1a5e:	46bd      	mov	sp, r7
    1a60:	bc80      	pop	{r7}
    1a62:	4770      	bx	lr

00001a64 <skip>:
    1a64:	b480      	push	{r7}
    1a66:	b085      	sub	sp, #20
    1a68:	af00      	add	r7, sp, #0
    1a6a:	60f8      	str	r0, [r7, #12]
    1a6c:	60b9      	str	r1, [r7, #8]
    1a6e:	4613      	mov	r3, r2
    1a70:	71fb      	strb	r3, [r7, #7]
    1a72:	e002      	b.n	1a7a <skip+0x16>
    1a74:	68bb      	ldr	r3, [r7, #8]
    1a76:	3301      	adds	r3, #1
    1a78:	60bb      	str	r3, [r7, #8]
    1a7a:	68bb      	ldr	r3, [r7, #8]
    1a7c:	68fa      	ldr	r2, [r7, #12]
    1a7e:	4413      	add	r3, r2
    1a80:	781b      	ldrb	r3, [r3, #0]
    1a82:	2b00      	cmp	r3, #0
    1a84:	d006      	beq.n	1a94 <skip+0x30>
    1a86:	68bb      	ldr	r3, [r7, #8]
    1a88:	68fa      	ldr	r2, [r7, #12]
    1a8a:	4413      	add	r3, r2
    1a8c:	781b      	ldrb	r3, [r3, #0]
    1a8e:	79fa      	ldrb	r2, [r7, #7]
    1a90:	429a      	cmp	r2, r3
    1a92:	d0ef      	beq.n	1a74 <skip+0x10>
    1a94:	68bb      	ldr	r3, [r7, #8]
    1a96:	4618      	mov	r0, r3
    1a98:	3714      	adds	r7, #20
    1a9a:	46bd      	mov	sp, r7
    1a9c:	bc80      	pop	{r7}
    1a9e:	4770      	bx	lr

00001aa0 <itoa>:
    1aa0:	b480      	push	{r7}
    1aa2:	b087      	sub	sp, #28
    1aa4:	af00      	add	r7, sp, #0
    1aa6:	60f8      	str	r0, [r7, #12]
    1aa8:	60b9      	str	r1, [r7, #8]
    1aaa:	607a      	str	r2, [r7, #4]
    1aac:	603b      	str	r3, [r7, #0]
    1aae:	2300      	movs	r3, #0
    1ab0:	617b      	str	r3, [r7, #20]
    1ab2:	683b      	ldr	r3, [r7, #0]
    1ab4:	1e5a      	subs	r2, r3, #1
    1ab6:	603a      	str	r2, [r7, #0]
    1ab8:	461a      	mov	r2, r3
    1aba:	68bb      	ldr	r3, [r7, #8]
    1abc:	4413      	add	r3, r2
    1abe:	2200      	movs	r2, #0
    1ac0:	701a      	strb	r2, [r3, #0]
    1ac2:	68fb      	ldr	r3, [r7, #12]
    1ac4:	2b00      	cmp	r3, #0
    1ac6:	da24      	bge.n	1b12 <itoa+0x72>
    1ac8:	68fb      	ldr	r3, [r7, #12]
    1aca:	425b      	negs	r3, r3
    1acc:	60fb      	str	r3, [r7, #12]
    1ace:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1ad2:	617b      	str	r3, [r7, #20]
    1ad4:	e01d      	b.n	1b12 <itoa+0x72>
    1ad6:	68fb      	ldr	r3, [r7, #12]
    1ad8:	687a      	ldr	r2, [r7, #4]
    1ada:	fb93 f2f2 	sdiv	r2, r3, r2
    1ade:	6879      	ldr	r1, [r7, #4]
    1ae0:	fb01 f202 	mul.w	r2, r1, r2
    1ae4:	1a9b      	subs	r3, r3, r2
    1ae6:	b2db      	uxtb	r3, r3
    1ae8:	3330      	adds	r3, #48	; 0x30
    1aea:	74fb      	strb	r3, [r7, #19]
    1aec:	7cfb      	ldrb	r3, [r7, #19]
    1aee:	2b39      	cmp	r3, #57	; 0x39
    1af0:	d902      	bls.n	1af8 <itoa+0x58>
    1af2:	7cfb      	ldrb	r3, [r7, #19]
    1af4:	3307      	adds	r3, #7
    1af6:	74fb      	strb	r3, [r7, #19]
    1af8:	683b      	ldr	r3, [r7, #0]
    1afa:	1e5a      	subs	r2, r3, #1
    1afc:	603a      	str	r2, [r7, #0]
    1afe:	461a      	mov	r2, r3
    1b00:	68bb      	ldr	r3, [r7, #8]
    1b02:	4413      	add	r3, r2
    1b04:	7cfa      	ldrb	r2, [r7, #19]
    1b06:	701a      	strb	r2, [r3, #0]
    1b08:	68fa      	ldr	r2, [r7, #12]
    1b0a:	687b      	ldr	r3, [r7, #4]
    1b0c:	fb92 f3f3 	sdiv	r3, r2, r3
    1b10:	60fb      	str	r3, [r7, #12]
    1b12:	68fb      	ldr	r3, [r7, #12]
    1b14:	2b00      	cmp	r3, #0
    1b16:	d00b      	beq.n	1b30 <itoa+0x90>
    1b18:	683b      	ldr	r3, [r7, #0]
    1b1a:	2b00      	cmp	r3, #0
    1b1c:	dadb      	bge.n	1ad6 <itoa+0x36>
    1b1e:	e007      	b.n	1b30 <itoa+0x90>
    1b20:	683b      	ldr	r3, [r7, #0]
    1b22:	1e5a      	subs	r2, r3, #1
    1b24:	603a      	str	r2, [r7, #0]
    1b26:	461a      	mov	r2, r3
    1b28:	68bb      	ldr	r3, [r7, #8]
    1b2a:	4413      	add	r3, r2
    1b2c:	2230      	movs	r2, #48	; 0x30
    1b2e:	701a      	strb	r2, [r3, #0]
    1b30:	683b      	ldr	r3, [r7, #0]
    1b32:	2b00      	cmp	r3, #0
    1b34:	dcf4      	bgt.n	1b20 <itoa+0x80>
    1b36:	697b      	ldr	r3, [r7, #20]
    1b38:	2b00      	cmp	r3, #0
    1b3a:	d006      	beq.n	1b4a <itoa+0xaa>
    1b3c:	683b      	ldr	r3, [r7, #0]
    1b3e:	2b00      	cmp	r3, #0
    1b40:	d103      	bne.n	1b4a <itoa+0xaa>
    1b42:	68bb      	ldr	r3, [r7, #8]
    1b44:	222d      	movs	r2, #45	; 0x2d
    1b46:	701a      	strb	r2, [r3, #0]
    1b48:	e005      	b.n	1b56 <itoa+0xb6>
    1b4a:	683b      	ldr	r3, [r7, #0]
    1b4c:	2b00      	cmp	r3, #0
    1b4e:	d102      	bne.n	1b56 <itoa+0xb6>
    1b50:	68bb      	ldr	r3, [r7, #8]
    1b52:	2230      	movs	r2, #48	; 0x30
    1b54:	701a      	strb	r2, [r3, #0]
    1b56:	68bb      	ldr	r3, [r7, #8]
    1b58:	4618      	mov	r0, r3
    1b5a:	371c      	adds	r7, #28
    1b5c:	46bd      	mov	sp, r7
    1b5e:	bc80      	pop	{r7}
    1b60:	4770      	bx	lr

00001b62 <strcat>:
    1b62:	b580      	push	{r7, lr}
    1b64:	b082      	sub	sp, #8
    1b66:	af00      	add	r7, sp, #0
    1b68:	6078      	str	r0, [r7, #4]
    1b6a:	6039      	str	r1, [r7, #0]
    1b6c:	6878      	ldr	r0, [r7, #4]
    1b6e:	f7ff fee6 	bl	193e <strlen>
    1b72:	4603      	mov	r3, r0
    1b74:	461a      	mov	r2, r3
    1b76:	687b      	ldr	r3, [r7, #4]
    1b78:	4413      	add	r3, r2
    1b7a:	607b      	str	r3, [r7, #4]
    1b7c:	e007      	b.n	1b8e <strcat+0x2c>
    1b7e:	687b      	ldr	r3, [r7, #4]
    1b80:	1c5a      	adds	r2, r3, #1
    1b82:	607a      	str	r2, [r7, #4]
    1b84:	683a      	ldr	r2, [r7, #0]
    1b86:	1c51      	adds	r1, r2, #1
    1b88:	6039      	str	r1, [r7, #0]
    1b8a:	7812      	ldrb	r2, [r2, #0]
    1b8c:	701a      	strb	r2, [r3, #0]
    1b8e:	683b      	ldr	r3, [r7, #0]
    1b90:	781b      	ldrb	r3, [r3, #0]
    1b92:	2b00      	cmp	r3, #0
    1b94:	d1f3      	bne.n	1b7e <strcat+0x1c>
    1b96:	687b      	ldr	r3, [r7, #4]
    1b98:	2200      	movs	r2, #0
    1b9a:	701a      	strb	r2, [r3, #0]
    1b9c:	687b      	ldr	r3, [r7, #4]
    1b9e:	4618      	mov	r0, r3
    1ba0:	3708      	adds	r7, #8
    1ba2:	46bd      	mov	sp, r7
    1ba4:	bd80      	pop	{r7, pc}

00001ba6 <config_pin>:
    1ba6:	b480      	push	{r7}
    1ba8:	b087      	sub	sp, #28
    1baa:	af00      	add	r7, sp, #0
    1bac:	60f8      	str	r0, [r7, #12]
    1bae:	60b9      	str	r1, [r7, #8]
    1bb0:	607a      	str	r2, [r7, #4]
    1bb2:	68bb      	ldr	r3, [r7, #8]
    1bb4:	b2db      	uxtb	r3, r3
    1bb6:	009b      	lsls	r3, r3, #2
    1bb8:	b2db      	uxtb	r3, r3
    1bba:	f003 031c 	and.w	r3, r3, #28
    1bbe:	75fb      	strb	r3, [r7, #23]
    1bc0:	68bb      	ldr	r3, [r7, #8]
    1bc2:	08da      	lsrs	r2, r3, #3
    1bc4:	68bb      	ldr	r3, [r7, #8]
    1bc6:	08d9      	lsrs	r1, r3, #3
    1bc8:	68fb      	ldr	r3, [r7, #12]
    1bca:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1bce:	7df9      	ldrb	r1, [r7, #23]
    1bd0:	200f      	movs	r0, #15
    1bd2:	fa00 f101 	lsl.w	r1, r0, r1
    1bd6:	43c9      	mvns	r1, r1
    1bd8:	4019      	ands	r1, r3
    1bda:	68fb      	ldr	r3, [r7, #12]
    1bdc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1be0:	68bb      	ldr	r3, [r7, #8]
    1be2:	08da      	lsrs	r2, r3, #3
    1be4:	68bb      	ldr	r3, [r7, #8]
    1be6:	08d9      	lsrs	r1, r3, #3
    1be8:	68fb      	ldr	r3, [r7, #12]
    1bea:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1bee:	7dfb      	ldrb	r3, [r7, #23]
    1bf0:	6878      	ldr	r0, [r7, #4]
    1bf2:	fa00 f303 	lsl.w	r3, r0, r3
    1bf6:	4319      	orrs	r1, r3
    1bf8:	68fb      	ldr	r3, [r7, #12]
    1bfa:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1bfe:	bf00      	nop
    1c00:	371c      	adds	r7, #28
    1c02:	46bd      	mov	sp, r7
    1c04:	bc80      	pop	{r7}
    1c06:	4770      	bx	lr

00001c08 <read_pin>:
    1c08:	b480      	push	{r7}
    1c0a:	b083      	sub	sp, #12
    1c0c:	af00      	add	r7, sp, #0
    1c0e:	6078      	str	r0, [r7, #4]
    1c10:	6039      	str	r1, [r7, #0]
    1c12:	687b      	ldr	r3, [r7, #4]
    1c14:	689b      	ldr	r3, [r3, #8]
    1c16:	2101      	movs	r1, #1
    1c18:	683a      	ldr	r2, [r7, #0]
    1c1a:	fa01 f202 	lsl.w	r2, r1, r2
    1c1e:	4013      	ands	r3, r2
    1c20:	4618      	mov	r0, r3
    1c22:	370c      	adds	r7, #12
    1c24:	46bd      	mov	sp, r7
    1c26:	bc80      	pop	{r7}
    1c28:	4770      	bx	lr

00001c2a <write_pin>:
    1c2a:	b480      	push	{r7}
    1c2c:	b085      	sub	sp, #20
    1c2e:	af00      	add	r7, sp, #0
    1c30:	60f8      	str	r0, [r7, #12]
    1c32:	60b9      	str	r1, [r7, #8]
    1c34:	607a      	str	r2, [r7, #4]
    1c36:	687b      	ldr	r3, [r7, #4]
    1c38:	2b00      	cmp	r3, #0
    1c3a:	d009      	beq.n	1c50 <write_pin+0x26>
    1c3c:	68fb      	ldr	r3, [r7, #12]
    1c3e:	68db      	ldr	r3, [r3, #12]
    1c40:	2101      	movs	r1, #1
    1c42:	68ba      	ldr	r2, [r7, #8]
    1c44:	fa01 f202 	lsl.w	r2, r1, r2
    1c48:	431a      	orrs	r2, r3
    1c4a:	68fb      	ldr	r3, [r7, #12]
    1c4c:	60da      	str	r2, [r3, #12]
    1c4e:	e009      	b.n	1c64 <write_pin+0x3a>
    1c50:	68fb      	ldr	r3, [r7, #12]
    1c52:	68db      	ldr	r3, [r3, #12]
    1c54:	2101      	movs	r1, #1
    1c56:	68ba      	ldr	r2, [r7, #8]
    1c58:	fa01 f202 	lsl.w	r2, r1, r2
    1c5c:	43d2      	mvns	r2, r2
    1c5e:	401a      	ands	r2, r3
    1c60:	68fb      	ldr	r3, [r7, #12]
    1c62:	60da      	str	r2, [r3, #12]
    1c64:	bf00      	nop
    1c66:	3714      	adds	r7, #20
    1c68:	46bd      	mov	sp, r7
    1c6a:	bc80      	pop	{r7}
    1c6c:	4770      	bx	lr

00001c6e <toggle_pin>:
    1c6e:	b480      	push	{r7}
    1c70:	b083      	sub	sp, #12
    1c72:	af00      	add	r7, sp, #0
    1c74:	6078      	str	r0, [r7, #4]
    1c76:	6039      	str	r1, [r7, #0]
    1c78:	687b      	ldr	r3, [r7, #4]
    1c7a:	68db      	ldr	r3, [r3, #12]
    1c7c:	2101      	movs	r1, #1
    1c7e:	683a      	ldr	r2, [r7, #0]
    1c80:	fa01 f202 	lsl.w	r2, r1, r2
    1c84:	405a      	eors	r2, r3
    1c86:	687b      	ldr	r3, [r7, #4]
    1c88:	60da      	str	r2, [r3, #12]
    1c8a:	bf00      	nop
    1c8c:	370c      	adds	r7, #12
    1c8e:	46bd      	mov	sp, r7
    1c90:	bc80      	pop	{r7}
    1c92:	4770      	bx	lr

00001c94 <gfx_blit>:
    1c94:	b5f0      	push	{r4, r5, r6, r7, lr}
    1c96:	b087      	sub	sp, #28
    1c98:	af00      	add	r7, sp, #0
    1c9a:	60f8      	str	r0, [r7, #12]
    1c9c:	60b9      	str	r1, [r7, #8]
    1c9e:	4611      	mov	r1, r2
    1ca0:	461a      	mov	r2, r3
    1ca2:	460b      	mov	r3, r1
    1ca4:	71fb      	strb	r3, [r7, #7]
    1ca6:	4613      	mov	r3, r2
    1ca8:	71bb      	strb	r3, [r7, #6]
    1caa:	f003 f803 	bl	4cb4 <get_video_params>
    1cae:	6178      	str	r0, [r7, #20]
    1cb0:	68fb      	ldr	r3, [r7, #12]
    1cb2:	2b00      	cmp	r3, #0
    1cb4:	db0e      	blt.n	1cd4 <gfx_blit+0x40>
    1cb6:	697b      	ldr	r3, [r7, #20]
    1cb8:	899b      	ldrh	r3, [r3, #12]
    1cba:	461a      	mov	r2, r3
    1cbc:	68fb      	ldr	r3, [r7, #12]
    1cbe:	429a      	cmp	r2, r3
    1cc0:	dd08      	ble.n	1cd4 <gfx_blit+0x40>
    1cc2:	68bb      	ldr	r3, [r7, #8]
    1cc4:	2b00      	cmp	r3, #0
    1cc6:	db05      	blt.n	1cd4 <gfx_blit+0x40>
    1cc8:	697b      	ldr	r3, [r7, #20]
    1cca:	89db      	ldrh	r3, [r3, #14]
    1ccc:	461a      	mov	r2, r3
    1cce:	68bb      	ldr	r3, [r7, #8]
    1cd0:	429a      	cmp	r2, r3
    1cd2:	dc01      	bgt.n	1cd8 <gfx_blit+0x44>
    1cd4:	2300      	movs	r3, #0
    1cd6:	e04f      	b.n	1d78 <gfx_blit+0xe4>
    1cd8:	697b      	ldr	r3, [r7, #20]
    1cda:	7a1b      	ldrb	r3, [r3, #8]
    1cdc:	461a      	mov	r2, r3
    1cde:	68bb      	ldr	r3, [r7, #8]
    1ce0:	fb03 f202 	mul.w	r2, r3, r2
    1ce4:	68fb      	ldr	r3, [r7, #12]
    1ce6:	0fd9      	lsrs	r1, r3, #31
    1ce8:	440b      	add	r3, r1
    1cea:	105b      	asrs	r3, r3, #1
    1cec:	18d6      	adds	r6, r2, r3
    1cee:	79fb      	ldrb	r3, [r7, #7]
    1cf0:	f003 030f 	and.w	r3, r3, #15
    1cf4:	71fb      	strb	r3, [r7, #7]
    1cf6:	25f0      	movs	r5, #240	; 0xf0
    1cf8:	68fb      	ldr	r3, [r7, #12]
    1cfa:	f003 0301 	and.w	r3, r3, #1
    1cfe:	2b00      	cmp	r3, #0
    1d00:	d103      	bne.n	1d0a <gfx_blit+0x76>
    1d02:	79fb      	ldrb	r3, [r7, #7]
    1d04:	011b      	lsls	r3, r3, #4
    1d06:	71fb      	strb	r3, [r7, #7]
    1d08:	250f      	movs	r5, #15
    1d0a:	4b1d      	ldr	r3, [pc, #116]	; (1d80 <gfx_blit+0xec>)
    1d0c:	5d9c      	ldrb	r4, [r3, r6]
    1d0e:	79bb      	ldrb	r3, [r7, #6]
    1d10:	2b04      	cmp	r3, #4
    1d12:	d828      	bhi.n	1d66 <gfx_blit+0xd2>
    1d14:	a201      	add	r2, pc, #4	; (adr r2, 1d1c <gfx_blit+0x88>)
    1d16:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1d1a:	bf00      	nop
    1d1c:	00001d31 	.word	0x00001d31
    1d20:	00001d39 	.word	0x00001d39
    1d24:	00001d41 	.word	0x00001d41
    1d28:	00001d49 	.word	0x00001d49
    1d2c:	00001d59 	.word	0x00001d59
    1d30:	79fb      	ldrb	r3, [r7, #7]
    1d32:	4323      	orrs	r3, r4
    1d34:	b2dc      	uxtb	r4, r3
    1d36:	e016      	b.n	1d66 <gfx_blit+0xd2>
    1d38:	79fb      	ldrb	r3, [r7, #7]
    1d3a:	4023      	ands	r3, r4
    1d3c:	b2dc      	uxtb	r4, r3
    1d3e:	e012      	b.n	1d66 <gfx_blit+0xd2>
    1d40:	79fb      	ldrb	r3, [r7, #7]
    1d42:	4063      	eors	r3, r4
    1d44:	b2dc      	uxtb	r4, r3
    1d46:	e00e      	b.n	1d66 <gfx_blit+0xd2>
    1d48:	b26b      	sxtb	r3, r5
    1d4a:	43db      	mvns	r3, r3
    1d4c:	b25a      	sxtb	r2, r3
    1d4e:	b263      	sxtb	r3, r4
    1d50:	4053      	eors	r3, r2
    1d52:	b25b      	sxtb	r3, r3
    1d54:	b2dc      	uxtb	r4, r3
    1d56:	e006      	b.n	1d66 <gfx_blit+0xd2>
    1d58:	ea04 0305 	and.w	r3, r4, r5
    1d5c:	b2dc      	uxtb	r4, r3
    1d5e:	79fb      	ldrb	r3, [r7, #7]
    1d60:	4323      	orrs	r3, r4
    1d62:	b2dc      	uxtb	r4, r3
    1d64:	bf00      	nop
    1d66:	4b06      	ldr	r3, [pc, #24]	; (1d80 <gfx_blit+0xec>)
    1d68:	4622      	mov	r2, r4
    1d6a:	559a      	strb	r2, [r3, r6]
    1d6c:	ea04 0305 	and.w	r3, r4, r5
    1d70:	b2da      	uxtb	r2, r3
    1d72:	79fb      	ldrb	r3, [r7, #7]
    1d74:	4053      	eors	r3, r2
    1d76:	b2db      	uxtb	r3, r3
    1d78:	4618      	mov	r0, r3
    1d7a:	371c      	adds	r7, #28
    1d7c:	46bd      	mov	sp, r7
    1d7e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1d80:	20002560 	.word	0x20002560

00001d84 <gfx_plot>:
    1d84:	b5b0      	push	{r4, r5, r7, lr}
    1d86:	b086      	sub	sp, #24
    1d88:	af00      	add	r7, sp, #0
    1d8a:	60f8      	str	r0, [r7, #12]
    1d8c:	60b9      	str	r1, [r7, #8]
    1d8e:	4613      	mov	r3, r2
    1d90:	71fb      	strb	r3, [r7, #7]
    1d92:	f002 ff8f 	bl	4cb4 <get_video_params>
    1d96:	6178      	str	r0, [r7, #20]
    1d98:	68fb      	ldr	r3, [r7, #12]
    1d9a:	2b00      	cmp	r3, #0
    1d9c:	db39      	blt.n	1e12 <gfx_plot+0x8e>
    1d9e:	697b      	ldr	r3, [r7, #20]
    1da0:	899b      	ldrh	r3, [r3, #12]
    1da2:	461a      	mov	r2, r3
    1da4:	68fb      	ldr	r3, [r7, #12]
    1da6:	429a      	cmp	r2, r3
    1da8:	dd33      	ble.n	1e12 <gfx_plot+0x8e>
    1daa:	68bb      	ldr	r3, [r7, #8]
    1dac:	2b00      	cmp	r3, #0
    1dae:	db30      	blt.n	1e12 <gfx_plot+0x8e>
    1db0:	697b      	ldr	r3, [r7, #20]
    1db2:	89db      	ldrh	r3, [r3, #14]
    1db4:	461a      	mov	r2, r3
    1db6:	68bb      	ldr	r3, [r7, #8]
    1db8:	429a      	cmp	r2, r3
    1dba:	dd2a      	ble.n	1e12 <gfx_plot+0x8e>
    1dbc:	697b      	ldr	r3, [r7, #20]
    1dbe:	7a1b      	ldrb	r3, [r3, #8]
    1dc0:	461a      	mov	r2, r3
    1dc2:	68bb      	ldr	r3, [r7, #8]
    1dc4:	fb03 f202 	mul.w	r2, r3, r2
    1dc8:	68fb      	ldr	r3, [r7, #12]
    1dca:	0fd9      	lsrs	r1, r3, #31
    1dcc:	440b      	add	r3, r1
    1dce:	105b      	asrs	r3, r3, #1
    1dd0:	18d5      	adds	r5, r2, r3
    1dd2:	79fb      	ldrb	r3, [r7, #7]
    1dd4:	f003 030f 	and.w	r3, r3, #15
    1dd8:	71fb      	strb	r3, [r7, #7]
    1dda:	4b10      	ldr	r3, [pc, #64]	; (1e1c <gfx_plot+0x98>)
    1ddc:	5d5c      	ldrb	r4, [r3, r5]
    1dde:	68fb      	ldr	r3, [r7, #12]
    1de0:	f003 0301 	and.w	r3, r3, #1
    1de4:	2b00      	cmp	r3, #0
    1de6:	d006      	beq.n	1df6 <gfx_plot+0x72>
    1de8:	f024 030f 	bic.w	r3, r4, #15
    1dec:	b2dc      	uxtb	r4, r3
    1dee:	79fb      	ldrb	r3, [r7, #7]
    1df0:	4323      	orrs	r3, r4
    1df2:	b2dc      	uxtb	r4, r3
    1df4:	e009      	b.n	1e0a <gfx_plot+0x86>
    1df6:	f004 030f 	and.w	r3, r4, #15
    1dfa:	b2dc      	uxtb	r4, r3
    1dfc:	79fb      	ldrb	r3, [r7, #7]
    1dfe:	011b      	lsls	r3, r3, #4
    1e00:	b25a      	sxtb	r2, r3
    1e02:	b263      	sxtb	r3, r4
    1e04:	4313      	orrs	r3, r2
    1e06:	b25b      	sxtb	r3, r3
    1e08:	b2dc      	uxtb	r4, r3
    1e0a:	4b04      	ldr	r3, [pc, #16]	; (1e1c <gfx_plot+0x98>)
    1e0c:	4622      	mov	r2, r4
    1e0e:	555a      	strb	r2, [r3, r5]
    1e10:	e000      	b.n	1e14 <gfx_plot+0x90>
    1e12:	bf00      	nop
    1e14:	3718      	adds	r7, #24
    1e16:	46bd      	mov	sp, r7
    1e18:	bdb0      	pop	{r4, r5, r7, pc}
    1e1a:	bf00      	nop
    1e1c:	20002560 	.word	0x20002560

00001e20 <gfx_rectangle>:
    1e20:	b580      	push	{r7, lr}
    1e22:	b086      	sub	sp, #24
    1e24:	af00      	add	r7, sp, #0
    1e26:	60f8      	str	r0, [r7, #12]
    1e28:	60b9      	str	r1, [r7, #8]
    1e2a:	607a      	str	r2, [r7, #4]
    1e2c:	603b      	str	r3, [r7, #0]
    1e2e:	68fa      	ldr	r2, [r7, #12]
    1e30:	687b      	ldr	r3, [r7, #4]
    1e32:	429a      	cmp	r2, r3
    1e34:	dd05      	ble.n	1e42 <gfx_rectangle+0x22>
    1e36:	68fb      	ldr	r3, [r7, #12]
    1e38:	617b      	str	r3, [r7, #20]
    1e3a:	687b      	ldr	r3, [r7, #4]
    1e3c:	60fb      	str	r3, [r7, #12]
    1e3e:	697b      	ldr	r3, [r7, #20]
    1e40:	607b      	str	r3, [r7, #4]
    1e42:	68ba      	ldr	r2, [r7, #8]
    1e44:	683b      	ldr	r3, [r7, #0]
    1e46:	429a      	cmp	r2, r3
    1e48:	dd05      	ble.n	1e56 <gfx_rectangle+0x36>
    1e4a:	68bb      	ldr	r3, [r7, #8]
    1e4c:	617b      	str	r3, [r7, #20]
    1e4e:	683b      	ldr	r3, [r7, #0]
    1e50:	60bb      	str	r3, [r7, #8]
    1e52:	697b      	ldr	r3, [r7, #20]
    1e54:	603b      	str	r3, [r7, #0]
    1e56:	68fb      	ldr	r3, [r7, #12]
    1e58:	617b      	str	r3, [r7, #20]
    1e5a:	e00c      	b.n	1e76 <gfx_rectangle+0x56>
    1e5c:	220f      	movs	r2, #15
    1e5e:	68b9      	ldr	r1, [r7, #8]
    1e60:	6978      	ldr	r0, [r7, #20]
    1e62:	f7ff ff8f 	bl	1d84 <gfx_plot>
    1e66:	220f      	movs	r2, #15
    1e68:	6839      	ldr	r1, [r7, #0]
    1e6a:	6978      	ldr	r0, [r7, #20]
    1e6c:	f7ff ff8a 	bl	1d84 <gfx_plot>
    1e70:	697b      	ldr	r3, [r7, #20]
    1e72:	3301      	adds	r3, #1
    1e74:	617b      	str	r3, [r7, #20]
    1e76:	697a      	ldr	r2, [r7, #20]
    1e78:	687b      	ldr	r3, [r7, #4]
    1e7a:	429a      	cmp	r2, r3
    1e7c:	ddee      	ble.n	1e5c <gfx_rectangle+0x3c>
    1e7e:	68bb      	ldr	r3, [r7, #8]
    1e80:	3301      	adds	r3, #1
    1e82:	60bb      	str	r3, [r7, #8]
    1e84:	e00c      	b.n	1ea0 <gfx_rectangle+0x80>
    1e86:	220f      	movs	r2, #15
    1e88:	68b9      	ldr	r1, [r7, #8]
    1e8a:	68f8      	ldr	r0, [r7, #12]
    1e8c:	f7ff ff7a 	bl	1d84 <gfx_plot>
    1e90:	220f      	movs	r2, #15
    1e92:	68b9      	ldr	r1, [r7, #8]
    1e94:	6878      	ldr	r0, [r7, #4]
    1e96:	f7ff ff75 	bl	1d84 <gfx_plot>
    1e9a:	68bb      	ldr	r3, [r7, #8]
    1e9c:	3301      	adds	r3, #1
    1e9e:	60bb      	str	r3, [r7, #8]
    1ea0:	68ba      	ldr	r2, [r7, #8]
    1ea2:	683b      	ldr	r3, [r7, #0]
    1ea4:	429a      	cmp	r2, r3
    1ea6:	dbee      	blt.n	1e86 <gfx_rectangle+0x66>
    1ea8:	bf00      	nop
    1eaa:	3718      	adds	r7, #24
    1eac:	46bd      	mov	sp, r7
    1eae:	bd80      	pop	{r7, pc}

00001eb0 <gfx_cls>:
    1eb0:	b580      	push	{r7, lr}
    1eb2:	b082      	sub	sp, #8
    1eb4:	af00      	add	r7, sp, #0
    1eb6:	2300      	movs	r3, #0
    1eb8:	607b      	str	r3, [r7, #4]
    1eba:	e007      	b.n	1ecc <gfx_cls+0x1c>
    1ebc:	4a0a      	ldr	r2, [pc, #40]	; (1ee8 <gfx_cls+0x38>)
    1ebe:	687b      	ldr	r3, [r7, #4]
    1ec0:	4413      	add	r3, r2
    1ec2:	2200      	movs	r2, #0
    1ec4:	701a      	strb	r2, [r3, #0]
    1ec6:	687b      	ldr	r3, [r7, #4]
    1ec8:	3301      	adds	r3, #1
    1eca:	607b      	str	r3, [r7, #4]
    1ecc:	687b      	ldr	r3, [r7, #4]
    1ece:	f242 725f 	movw	r2, #10079	; 0x275f
    1ed2:	4293      	cmp	r3, r2
    1ed4:	ddf2      	ble.n	1ebc <gfx_cls+0xc>
    1ed6:	2100      	movs	r1, #0
    1ed8:	2000      	movs	r0, #0
    1eda:	f002 fa21 	bl	4320 <set_cursor>
    1ede:	bf00      	nop
    1ee0:	3708      	adds	r7, #8
    1ee2:	46bd      	mov	sp, r7
    1ee4:	bd80      	pop	{r7, pc}
    1ee6:	bf00      	nop
    1ee8:	20002560 	.word	0x20002560

00001eec <move_up>:
    1eec:	b480      	push	{r7}
    1eee:	b085      	sub	sp, #20
    1ef0:	af00      	add	r7, sp, #0
    1ef2:	60f8      	str	r0, [r7, #12]
    1ef4:	60b9      	str	r1, [r7, #8]
    1ef6:	607a      	str	r2, [r7, #4]
    1ef8:	e009      	b.n	1f0e <move_up+0x22>
    1efa:	68bb      	ldr	r3, [r7, #8]
    1efc:	3b01      	subs	r3, #1
    1efe:	60bb      	str	r3, [r7, #8]
    1f00:	68fb      	ldr	r3, [r7, #12]
    1f02:	3b01      	subs	r3, #1
    1f04:	60fb      	str	r3, [r7, #12]
    1f06:	68fb      	ldr	r3, [r7, #12]
    1f08:	781a      	ldrb	r2, [r3, #0]
    1f0a:	68bb      	ldr	r3, [r7, #8]
    1f0c:	701a      	strb	r2, [r3, #0]
    1f0e:	687b      	ldr	r3, [r7, #4]
    1f10:	1e5a      	subs	r2, r3, #1
    1f12:	607a      	str	r2, [r7, #4]
    1f14:	2b00      	cmp	r3, #0
    1f16:	d1f0      	bne.n	1efa <move_up+0xe>
    1f18:	68bb      	ldr	r3, [r7, #8]
    1f1a:	4618      	mov	r0, r3
    1f1c:	3714      	adds	r7, #20
    1f1e:	46bd      	mov	sp, r7
    1f20:	bc80      	pop	{r7}
    1f22:	4770      	bx	lr

00001f24 <move_down>:
    1f24:	b480      	push	{r7}
    1f26:	b085      	sub	sp, #20
    1f28:	af00      	add	r7, sp, #0
    1f2a:	60f8      	str	r0, [r7, #12]
    1f2c:	60b9      	str	r1, [r7, #8]
    1f2e:	607a      	str	r2, [r7, #4]
    1f30:	e007      	b.n	1f42 <move_down+0x1e>
    1f32:	68bb      	ldr	r3, [r7, #8]
    1f34:	1c5a      	adds	r2, r3, #1
    1f36:	60ba      	str	r2, [r7, #8]
    1f38:	68fa      	ldr	r2, [r7, #12]
    1f3a:	1c51      	adds	r1, r2, #1
    1f3c:	60f9      	str	r1, [r7, #12]
    1f3e:	7812      	ldrb	r2, [r2, #0]
    1f40:	701a      	strb	r2, [r3, #0]
    1f42:	687b      	ldr	r3, [r7, #4]
    1f44:	1e5a      	subs	r2, r3, #1
    1f46:	607a      	str	r2, [r7, #4]
    1f48:	2b00      	cmp	r3, #0
    1f4a:	d1f2      	bne.n	1f32 <move_down+0xe>
    1f4c:	68bb      	ldr	r3, [r7, #8]
    1f4e:	4618      	mov	r0, r3
    1f50:	3714      	adds	r7, #20
    1f52:	46bd      	mov	sp, r7
    1f54:	bc80      	pop	{r7}
    1f56:	4770      	bx	lr

00001f58 <gfx_scroll_up>:
    1f58:	b580      	push	{r7, lr}
    1f5a:	b086      	sub	sp, #24
    1f5c:	af00      	add	r7, sp, #0
    1f5e:	4603      	mov	r3, r0
    1f60:	71fb      	strb	r3, [r7, #7]
    1f62:	79fb      	ldrb	r3, [r7, #7]
    1f64:	225a      	movs	r2, #90	; 0x5a
    1f66:	fb02 f303 	mul.w	r3, r2, r3
    1f6a:	4a13      	ldr	r2, [pc, #76]	; (1fb8 <gfx_scroll_up+0x60>)
    1f6c:	4413      	add	r3, r2
    1f6e:	60fb      	str	r3, [r7, #12]
    1f70:	4b11      	ldr	r3, [pc, #68]	; (1fb8 <gfx_scroll_up+0x60>)
    1f72:	617b      	str	r3, [r7, #20]
    1f74:	79fb      	ldrb	r3, [r7, #7]
    1f76:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1f7a:	225a      	movs	r2, #90	; 0x5a
    1f7c:	fb02 f303 	mul.w	r3, r2, r3
    1f80:	613b      	str	r3, [r7, #16]
    1f82:	693a      	ldr	r2, [r7, #16]
    1f84:	6979      	ldr	r1, [r7, #20]
    1f86:	68f8      	ldr	r0, [r7, #12]
    1f88:	f7ff ffcc 	bl	1f24 <move_down>
    1f8c:	6178      	str	r0, [r7, #20]
    1f8e:	79fb      	ldrb	r3, [r7, #7]
    1f90:	225a      	movs	r2, #90	; 0x5a
    1f92:	fb02 f303 	mul.w	r3, r2, r3
    1f96:	613b      	str	r3, [r7, #16]
    1f98:	e004      	b.n	1fa4 <gfx_scroll_up+0x4c>
    1f9a:	697b      	ldr	r3, [r7, #20]
    1f9c:	1c5a      	adds	r2, r3, #1
    1f9e:	617a      	str	r2, [r7, #20]
    1fa0:	2200      	movs	r2, #0
    1fa2:	701a      	strb	r2, [r3, #0]
    1fa4:	693b      	ldr	r3, [r7, #16]
    1fa6:	1e5a      	subs	r2, r3, #1
    1fa8:	613a      	str	r2, [r7, #16]
    1faa:	2b00      	cmp	r3, #0
    1fac:	d1f5      	bne.n	1f9a <gfx_scroll_up+0x42>
    1fae:	bf00      	nop
    1fb0:	3718      	adds	r7, #24
    1fb2:	46bd      	mov	sp, r7
    1fb4:	bd80      	pop	{r7, pc}
    1fb6:	bf00      	nop
    1fb8:	20002560 	.word	0x20002560

00001fbc <gfx_scroll_down>:
    1fbc:	b580      	push	{r7, lr}
    1fbe:	b086      	sub	sp, #24
    1fc0:	af00      	add	r7, sp, #0
    1fc2:	4603      	mov	r3, r0
    1fc4:	71fb      	strb	r3, [r7, #7]
    1fc6:	79fb      	ldrb	r3, [r7, #7]
    1fc8:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1fcc:	225a      	movs	r2, #90	; 0x5a
    1fce:	fb02 f303 	mul.w	r3, r2, r3
    1fd2:	4a13      	ldr	r2, [pc, #76]	; (2020 <gfx_scroll_down+0x64>)
    1fd4:	4413      	add	r3, r2
    1fd6:	60fb      	str	r3, [r7, #12]
    1fd8:	4b12      	ldr	r3, [pc, #72]	; (2024 <gfx_scroll_down+0x68>)
    1fda:	617b      	str	r3, [r7, #20]
    1fdc:	79fb      	ldrb	r3, [r7, #7]
    1fde:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1fe2:	225a      	movs	r2, #90	; 0x5a
    1fe4:	fb02 f303 	mul.w	r3, r2, r3
    1fe8:	613b      	str	r3, [r7, #16]
    1fea:	693a      	ldr	r2, [r7, #16]
    1fec:	6979      	ldr	r1, [r7, #20]
    1fee:	68f8      	ldr	r0, [r7, #12]
    1ff0:	f7ff ff7c 	bl	1eec <move_up>
    1ff4:	6178      	str	r0, [r7, #20]
    1ff6:	79fb      	ldrb	r3, [r7, #7]
    1ff8:	225a      	movs	r2, #90	; 0x5a
    1ffa:	fb02 f303 	mul.w	r3, r2, r3
    1ffe:	613b      	str	r3, [r7, #16]
    2000:	e005      	b.n	200e <gfx_scroll_down+0x52>
    2002:	697b      	ldr	r3, [r7, #20]
    2004:	3b01      	subs	r3, #1
    2006:	617b      	str	r3, [r7, #20]
    2008:	697b      	ldr	r3, [r7, #20]
    200a:	2200      	movs	r2, #0
    200c:	701a      	strb	r2, [r3, #0]
    200e:	693b      	ldr	r3, [r7, #16]
    2010:	1e5a      	subs	r2, r3, #1
    2012:	613a      	str	r2, [r7, #16]
    2014:	2b00      	cmp	r3, #0
    2016:	d1f4      	bne.n	2002 <gfx_scroll_down+0x46>
    2018:	bf00      	nop
    201a:	3718      	adds	r7, #24
    201c:	46bd      	mov	sp, r7
    201e:	bd80      	pop	{r7, pc}
    2020:	20002560 	.word	0x20002560
    2024:	20004cc0 	.word	0x20004cc0

00002028 <gfx_scroll_left>:
    2028:	b580      	push	{r7, lr}
    202a:	b086      	sub	sp, #24
    202c:	af00      	add	r7, sp, #0
    202e:	4603      	mov	r3, r0
    2030:	71fb      	strb	r3, [r7, #7]
    2032:	2300      	movs	r3, #0
    2034:	617b      	str	r3, [r7, #20]
    2036:	e024      	b.n	2082 <gfx_scroll_left+0x5a>
    2038:	697b      	ldr	r3, [r7, #20]
    203a:	225a      	movs	r2, #90	; 0x5a
    203c:	fb02 f303 	mul.w	r3, r2, r3
    2040:	4a13      	ldr	r2, [pc, #76]	; (2090 <gfx_scroll_left+0x68>)
    2042:	4413      	add	r3, r2
    2044:	60fb      	str	r3, [r7, #12]
    2046:	79fb      	ldrb	r3, [r7, #7]
    2048:	68fa      	ldr	r2, [r7, #12]
    204a:	4413      	add	r3, r2
    204c:	60bb      	str	r3, [r7, #8]
    204e:	79fb      	ldrb	r3, [r7, #7]
    2050:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    2054:	613b      	str	r3, [r7, #16]
    2056:	693a      	ldr	r2, [r7, #16]
    2058:	68f9      	ldr	r1, [r7, #12]
    205a:	68b8      	ldr	r0, [r7, #8]
    205c:	f7ff ff62 	bl	1f24 <move_down>
    2060:	60f8      	str	r0, [r7, #12]
    2062:	79fb      	ldrb	r3, [r7, #7]
    2064:	613b      	str	r3, [r7, #16]
    2066:	e004      	b.n	2072 <gfx_scroll_left+0x4a>
    2068:	68fb      	ldr	r3, [r7, #12]
    206a:	1c5a      	adds	r2, r3, #1
    206c:	60fa      	str	r2, [r7, #12]
    206e:	2200      	movs	r2, #0
    2070:	701a      	strb	r2, [r3, #0]
    2072:	693b      	ldr	r3, [r7, #16]
    2074:	1e5a      	subs	r2, r3, #1
    2076:	613a      	str	r2, [r7, #16]
    2078:	2b00      	cmp	r3, #0
    207a:	d1f5      	bne.n	2068 <gfx_scroll_left+0x40>
    207c:	697b      	ldr	r3, [r7, #20]
    207e:	3301      	adds	r3, #1
    2080:	617b      	str	r3, [r7, #20]
    2082:	697b      	ldr	r3, [r7, #20]
    2084:	2b6f      	cmp	r3, #111	; 0x6f
    2086:	ddd7      	ble.n	2038 <gfx_scroll_left+0x10>
    2088:	bf00      	nop
    208a:	3718      	adds	r7, #24
    208c:	46bd      	mov	sp, r7
    208e:	bd80      	pop	{r7, pc}
    2090:	20002560 	.word	0x20002560

00002094 <gfx_scroll_right>:
    2094:	b580      	push	{r7, lr}
    2096:	b086      	sub	sp, #24
    2098:	af00      	add	r7, sp, #0
    209a:	4603      	mov	r3, r0
    209c:	71fb      	strb	r3, [r7, #7]
    209e:	2300      	movs	r3, #0
    20a0:	617b      	str	r3, [r7, #20]
    20a2:	e027      	b.n	20f4 <gfx_scroll_right+0x60>
    20a4:	697b      	ldr	r3, [r7, #20]
    20a6:	225a      	movs	r2, #90	; 0x5a
    20a8:	fb02 f303 	mul.w	r3, r2, r3
    20ac:	4a15      	ldr	r2, [pc, #84]	; (2104 <gfx_scroll_right+0x70>)
    20ae:	4413      	add	r3, r2
    20b0:	335a      	adds	r3, #90	; 0x5a
    20b2:	60fb      	str	r3, [r7, #12]
    20b4:	79fb      	ldrb	r3, [r7, #7]
    20b6:	425b      	negs	r3, r3
    20b8:	68fa      	ldr	r2, [r7, #12]
    20ba:	4413      	add	r3, r2
    20bc:	60bb      	str	r3, [r7, #8]
    20be:	79fb      	ldrb	r3, [r7, #7]
    20c0:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    20c4:	613b      	str	r3, [r7, #16]
    20c6:	693a      	ldr	r2, [r7, #16]
    20c8:	68f9      	ldr	r1, [r7, #12]
    20ca:	68b8      	ldr	r0, [r7, #8]
    20cc:	f7ff ff0e 	bl	1eec <move_up>
    20d0:	60f8      	str	r0, [r7, #12]
    20d2:	79fb      	ldrb	r3, [r7, #7]
    20d4:	613b      	str	r3, [r7, #16]
    20d6:	e005      	b.n	20e4 <gfx_scroll_right+0x50>
    20d8:	68fb      	ldr	r3, [r7, #12]
    20da:	3b01      	subs	r3, #1
    20dc:	60fb      	str	r3, [r7, #12]
    20de:	68fb      	ldr	r3, [r7, #12]
    20e0:	2200      	movs	r2, #0
    20e2:	701a      	strb	r2, [r3, #0]
    20e4:	693b      	ldr	r3, [r7, #16]
    20e6:	1e5a      	subs	r2, r3, #1
    20e8:	613a      	str	r2, [r7, #16]
    20ea:	2b00      	cmp	r3, #0
    20ec:	d1f4      	bne.n	20d8 <gfx_scroll_right+0x44>
    20ee:	697b      	ldr	r3, [r7, #20]
    20f0:	3301      	adds	r3, #1
    20f2:	617b      	str	r3, [r7, #20]
    20f4:	697b      	ldr	r3, [r7, #20]
    20f6:	2b6f      	cmp	r3, #111	; 0x6f
    20f8:	ddd4      	ble.n	20a4 <gfx_scroll_right+0x10>
    20fa:	bf00      	nop
    20fc:	3718      	adds	r7, #24
    20fe:	46bd      	mov	sp, r7
    2100:	bd80      	pop	{r7, pc}
    2102:	bf00      	nop
    2104:	20002560 	.word	0x20002560

00002108 <gfx_get_pixel>:
    2108:	b490      	push	{r4, r7}
    210a:	b082      	sub	sp, #8
    210c:	af00      	add	r7, sp, #0
    210e:	6078      	str	r0, [r7, #4]
    2110:	6039      	str	r1, [r7, #0]
    2112:	687b      	ldr	r3, [r7, #4]
    2114:	2b00      	cmp	r3, #0
    2116:	db08      	blt.n	212a <gfx_get_pixel+0x22>
    2118:	687b      	ldr	r3, [r7, #4]
    211a:	2bb3      	cmp	r3, #179	; 0xb3
    211c:	dc05      	bgt.n	212a <gfx_get_pixel+0x22>
    211e:	683b      	ldr	r3, [r7, #0]
    2120:	2b00      	cmp	r3, #0
    2122:	db02      	blt.n	212a <gfx_get_pixel+0x22>
    2124:	683b      	ldr	r3, [r7, #0]
    2126:	2b6f      	cmp	r3, #111	; 0x6f
    2128:	dd01      	ble.n	212e <gfx_get_pixel+0x26>
    212a:	23ff      	movs	r3, #255	; 0xff
    212c:	e012      	b.n	2154 <gfx_get_pixel+0x4c>
    212e:	683b      	ldr	r3, [r7, #0]
    2130:	225a      	movs	r2, #90	; 0x5a
    2132:	fb02 f203 	mul.w	r2, r2, r3
    2136:	687b      	ldr	r3, [r7, #4]
    2138:	105b      	asrs	r3, r3, #1
    213a:	4413      	add	r3, r2
    213c:	4a08      	ldr	r2, [pc, #32]	; (2160 <gfx_get_pixel+0x58>)
    213e:	5cd4      	ldrb	r4, [r2, r3]
    2140:	687b      	ldr	r3, [r7, #4]
    2142:	f003 0301 	and.w	r3, r3, #1
    2146:	2b00      	cmp	r3, #0
    2148:	d101      	bne.n	214e <gfx_get_pixel+0x46>
    214a:	0923      	lsrs	r3, r4, #4
    214c:	b2dc      	uxtb	r4, r3
    214e:	f004 030f 	and.w	r3, r4, #15
    2152:	b2db      	uxtb	r3, r3
    2154:	4618      	mov	r0, r3
    2156:	3708      	adds	r7, #8
    2158:	46bd      	mov	sp, r7
    215a:	bc90      	pop	{r4, r7}
    215c:	4770      	bx	lr
    215e:	bf00      	nop
    2160:	20002560 	.word	0x20002560

00002164 <gfx_sprite>:
    2164:	b5f0      	push	{r4, r5, r6, r7, lr}
    2166:	b087      	sub	sp, #28
    2168:	af00      	add	r7, sp, #0
    216a:	60f8      	str	r0, [r7, #12]
    216c:	60b9      	str	r1, [r7, #8]
    216e:	4611      	mov	r1, r2
    2170:	461a      	mov	r2, r3
    2172:	460b      	mov	r3, r1
    2174:	71fb      	strb	r3, [r7, #7]
    2176:	4613      	mov	r3, r2
    2178:	71bb      	strb	r3, [r7, #6]
    217a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    217c:	1c5a      	adds	r2, r3, #1
    217e:	633a      	str	r2, [r7, #48]	; 0x30
    2180:	781e      	ldrb	r6, [r3, #0]
    2182:	68bd      	ldr	r5, [r7, #8]
    2184:	e01b      	b.n	21be <gfx_sprite+0x5a>
    2186:	68fc      	ldr	r4, [r7, #12]
    2188:	e013      	b.n	21b2 <gfx_sprite+0x4e>
    218a:	0933      	lsrs	r3, r6, #4
    218c:	b2da      	uxtb	r2, r3
    218e:	2302      	movs	r3, #2
    2190:	4629      	mov	r1, r5
    2192:	4620      	mov	r0, r4
    2194:	f7ff fd7e 	bl	1c94 <gfx_blit>
    2198:	3401      	adds	r4, #1
    219a:	2302      	movs	r3, #2
    219c:	4632      	mov	r2, r6
    219e:	4629      	mov	r1, r5
    21a0:	4620      	mov	r0, r4
    21a2:	f7ff fd77 	bl	1c94 <gfx_blit>
    21a6:	6178      	str	r0, [r7, #20]
    21a8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    21aa:	1c5a      	adds	r2, r3, #1
    21ac:	633a      	str	r2, [r7, #48]	; 0x30
    21ae:	781e      	ldrb	r6, [r3, #0]
    21b0:	3401      	adds	r4, #1
    21b2:	79fa      	ldrb	r2, [r7, #7]
    21b4:	68fb      	ldr	r3, [r7, #12]
    21b6:	4413      	add	r3, r2
    21b8:	42a3      	cmp	r3, r4
    21ba:	dce6      	bgt.n	218a <gfx_sprite+0x26>
    21bc:	3501      	adds	r5, #1
    21be:	79ba      	ldrb	r2, [r7, #6]
    21c0:	68bb      	ldr	r3, [r7, #8]
    21c2:	4413      	add	r3, r2
    21c4:	42ab      	cmp	r3, r5
    21c6:	dcde      	bgt.n	2186 <gfx_sprite+0x22>
    21c8:	697b      	ldr	r3, [r7, #20]
    21ca:	4618      	mov	r0, r3
    21cc:	371c      	adds	r7, #28
    21ce:	46bd      	mov	sp, r7
    21d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    21d2:	bf00      	nop

000021d4 <set_sysclock>:
    21d4:	b480      	push	{r7}
    21d6:	af00      	add	r7, sp, #0
    21d8:	4a18      	ldr	r2, [pc, #96]	; (223c <set_sysclock+0x68>)
    21da:	4b18      	ldr	r3, [pc, #96]	; (223c <set_sysclock+0x68>)
    21dc:	681b      	ldr	r3, [r3, #0]
    21de:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    21e2:	6013      	str	r3, [r2, #0]
    21e4:	bf00      	nop
    21e6:	4b15      	ldr	r3, [pc, #84]	; (223c <set_sysclock+0x68>)
    21e8:	681b      	ldr	r3, [r3, #0]
    21ea:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    21ee:	2b00      	cmp	r3, #0
    21f0:	d0f9      	beq.n	21e6 <set_sysclock+0x12>
    21f2:	4a12      	ldr	r2, [pc, #72]	; (223c <set_sysclock+0x68>)
    21f4:	4b11      	ldr	r3, [pc, #68]	; (223c <set_sysclock+0x68>)
    21f6:	685b      	ldr	r3, [r3, #4]
    21f8:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    21fc:	6053      	str	r3, [r2, #4]
    21fe:	4a0f      	ldr	r2, [pc, #60]	; (223c <set_sysclock+0x68>)
    2200:	4b0e      	ldr	r3, [pc, #56]	; (223c <set_sysclock+0x68>)
    2202:	681b      	ldr	r3, [r3, #0]
    2204:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    2208:	6013      	str	r3, [r2, #0]
    220a:	bf00      	nop
    220c:	4b0b      	ldr	r3, [pc, #44]	; (223c <set_sysclock+0x68>)
    220e:	681b      	ldr	r3, [r3, #0]
    2210:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    2214:	2b00      	cmp	r3, #0
    2216:	d0f9      	beq.n	220c <set_sysclock+0x38>
    2218:	4a09      	ldr	r2, [pc, #36]	; (2240 <set_sysclock+0x6c>)
    221a:	4b09      	ldr	r3, [pc, #36]	; (2240 <set_sysclock+0x6c>)
    221c:	681b      	ldr	r3, [r3, #0]
    221e:	f043 0312 	orr.w	r3, r3, #18
    2222:	6013      	str	r3, [r2, #0]
    2224:	4a05      	ldr	r2, [pc, #20]	; (223c <set_sysclock+0x68>)
    2226:	4b05      	ldr	r3, [pc, #20]	; (223c <set_sysclock+0x68>)
    2228:	685b      	ldr	r3, [r3, #4]
    222a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    222e:	f043 0302 	orr.w	r3, r3, #2
    2232:	6053      	str	r3, [r2, #4]
    2234:	bf00      	nop
    2236:	46bd      	mov	sp, r7
    2238:	bc80      	pop	{r7}
    223a:	4770      	bx	lr
    223c:	40021000 	.word	0x40021000
    2240:	40022000 	.word	0x40022000

00002244 <draw_balls>:
    2244:	b590      	push	{r4, r7, lr}
    2246:	b085      	sub	sp, #20
    2248:	af02      	add	r7, sp, #8
    224a:	f002 fc87 	bl	4b5c <frame_sync>
    224e:	2300      	movs	r3, #0
    2250:	607b      	str	r3, [r7, #4]
    2252:	e022      	b.n	229a <draw_balls+0x56>
    2254:	4915      	ldr	r1, [pc, #84]	; (22ac <draw_balls+0x68>)
    2256:	687a      	ldr	r2, [r7, #4]
    2258:	4613      	mov	r3, r2
    225a:	009b      	lsls	r3, r3, #2
    225c:	4413      	add	r3, r2
    225e:	009b      	lsls	r3, r3, #2
    2260:	440b      	add	r3, r1
    2262:	6818      	ldr	r0, [r3, #0]
    2264:	4911      	ldr	r1, [pc, #68]	; (22ac <draw_balls+0x68>)
    2266:	687a      	ldr	r2, [r7, #4]
    2268:	4613      	mov	r3, r2
    226a:	009b      	lsls	r3, r3, #2
    226c:	4413      	add	r3, r2
    226e:	009b      	lsls	r3, r3, #2
    2270:	440b      	add	r3, r1
    2272:	3304      	adds	r3, #4
    2274:	681c      	ldr	r4, [r3, #0]
    2276:	490d      	ldr	r1, [pc, #52]	; (22ac <draw_balls+0x68>)
    2278:	687a      	ldr	r2, [r7, #4]
    227a:	4613      	mov	r3, r2
    227c:	009b      	lsls	r3, r3, #2
    227e:	4413      	add	r3, r2
    2280:	009b      	lsls	r3, r3, #2
    2282:	440b      	add	r3, r1
    2284:	3310      	adds	r3, #16
    2286:	681b      	ldr	r3, [r3, #0]
    2288:	9300      	str	r3, [sp, #0]
    228a:	2308      	movs	r3, #8
    228c:	2208      	movs	r2, #8
    228e:	4621      	mov	r1, r4
    2290:	f7ff ff68 	bl	2164 <gfx_sprite>
    2294:	687b      	ldr	r3, [r7, #4]
    2296:	3301      	adds	r3, #1
    2298:	607b      	str	r3, [r7, #4]
    229a:	687b      	ldr	r3, [r7, #4]
    229c:	2b01      	cmp	r3, #1
    229e:	ddd9      	ble.n	2254 <draw_balls+0x10>
    22a0:	f002 fc6c 	bl	4b7c <wait_sync_end>
    22a4:	bf00      	nop
    22a6:	370c      	adds	r7, #12
    22a8:	46bd      	mov	sp, r7
    22aa:	bd90      	pop	{r4, r7, pc}
    22ac:	20002538 	.word	0x20002538

000022b0 <isqrt>:
    22b0:	b580      	push	{r7, lr}
    22b2:	b084      	sub	sp, #16
    22b4:	af00      	add	r7, sp, #0
    22b6:	6078      	str	r0, [r7, #4]
    22b8:	687b      	ldr	r3, [r7, #4]
    22ba:	2b01      	cmp	r3, #1
    22bc:	dc01      	bgt.n	22c2 <isqrt+0x12>
    22be:	687b      	ldr	r3, [r7, #4]
    22c0:	e014      	b.n	22ec <isqrt+0x3c>
    22c2:	687b      	ldr	r3, [r7, #4]
    22c4:	109b      	asrs	r3, r3, #2
    22c6:	4618      	mov	r0, r3
    22c8:	f7ff fff2 	bl	22b0 <isqrt>
    22cc:	4603      	mov	r3, r0
    22ce:	005b      	lsls	r3, r3, #1
    22d0:	60fb      	str	r3, [r7, #12]
    22d2:	68fb      	ldr	r3, [r7, #12]
    22d4:	3301      	adds	r3, #1
    22d6:	60bb      	str	r3, [r7, #8]
    22d8:	68bb      	ldr	r3, [r7, #8]
    22da:	68ba      	ldr	r2, [r7, #8]
    22dc:	fb02 f203 	mul.w	r2, r2, r3
    22e0:	687b      	ldr	r3, [r7, #4]
    22e2:	429a      	cmp	r2, r3
    22e4:	dd01      	ble.n	22ea <isqrt+0x3a>
    22e6:	68fb      	ldr	r3, [r7, #12]
    22e8:	e000      	b.n	22ec <isqrt+0x3c>
    22ea:	68bb      	ldr	r3, [r7, #8]
    22ec:	4618      	mov	r0, r3
    22ee:	3710      	adds	r7, #16
    22f0:	46bd      	mov	sp, r7
    22f2:	bd80      	pop	{r7, pc}

000022f4 <distance>:
    22f4:	b580      	push	{r7, lr}
    22f6:	b082      	sub	sp, #8
    22f8:	af00      	add	r7, sp, #0
    22fa:	6078      	str	r0, [r7, #4]
    22fc:	6039      	str	r1, [r7, #0]
    22fe:	687b      	ldr	r3, [r7, #4]
    2300:	681b      	ldr	r3, [r3, #0]
    2302:	683a      	ldr	r2, [r7, #0]
    2304:	6812      	ldr	r2, [r2, #0]
    2306:	fb02 f203 	mul.w	r2, r2, r3
    230a:	687b      	ldr	r3, [r7, #4]
    230c:	685b      	ldr	r3, [r3, #4]
    230e:	6839      	ldr	r1, [r7, #0]
    2310:	6849      	ldr	r1, [r1, #4]
    2312:	fb01 f303 	mul.w	r3, r1, r3
    2316:	4413      	add	r3, r2
    2318:	2b00      	cmp	r3, #0
    231a:	bfb8      	it	lt
    231c:	425b      	neglt	r3, r3
    231e:	4618      	mov	r0, r3
    2320:	f7ff ffc6 	bl	22b0 <isqrt>
    2324:	4603      	mov	r3, r0
    2326:	4618      	mov	r0, r3
    2328:	3708      	adds	r7, #8
    232a:	46bd      	mov	sp, r7
    232c:	bd80      	pop	{r7, pc}

0000232e <move_balls>:
    232e:	b580      	push	{r7, lr}
    2330:	b082      	sub	sp, #8
    2332:	af00      	add	r7, sp, #0
    2334:	f002 fcbe 	bl	4cb4 <get_video_params>
    2338:	6038      	str	r0, [r7, #0]
    233a:	2300      	movs	r3, #0
    233c:	607b      	str	r3, [r7, #4]
    233e:	e0c3      	b.n	24c8 <move_balls+0x19a>
    2340:	4979      	ldr	r1, [pc, #484]	; (2528 <move_balls+0x1fa>)
    2342:	687a      	ldr	r2, [r7, #4]
    2344:	4613      	mov	r3, r2
    2346:	009b      	lsls	r3, r3, #2
    2348:	4413      	add	r3, r2
    234a:	009b      	lsls	r3, r3, #2
    234c:	440b      	add	r3, r1
    234e:	6819      	ldr	r1, [r3, #0]
    2350:	4875      	ldr	r0, [pc, #468]	; (2528 <move_balls+0x1fa>)
    2352:	687a      	ldr	r2, [r7, #4]
    2354:	4613      	mov	r3, r2
    2356:	009b      	lsls	r3, r3, #2
    2358:	4413      	add	r3, r2
    235a:	009b      	lsls	r3, r3, #2
    235c:	4403      	add	r3, r0
    235e:	3308      	adds	r3, #8
    2360:	681b      	ldr	r3, [r3, #0]
    2362:	4419      	add	r1, r3
    2364:	4870      	ldr	r0, [pc, #448]	; (2528 <move_balls+0x1fa>)
    2366:	687a      	ldr	r2, [r7, #4]
    2368:	4613      	mov	r3, r2
    236a:	009b      	lsls	r3, r3, #2
    236c:	4413      	add	r3, r2
    236e:	009b      	lsls	r3, r3, #2
    2370:	4403      	add	r3, r0
    2372:	6019      	str	r1, [r3, #0]
    2374:	496c      	ldr	r1, [pc, #432]	; (2528 <move_balls+0x1fa>)
    2376:	687a      	ldr	r2, [r7, #4]
    2378:	4613      	mov	r3, r2
    237a:	009b      	lsls	r3, r3, #2
    237c:	4413      	add	r3, r2
    237e:	009b      	lsls	r3, r3, #2
    2380:	440b      	add	r3, r1
    2382:	681b      	ldr	r3, [r3, #0]
    2384:	f113 0f07 	cmn.w	r3, #7
    2388:	db0b      	blt.n	23a2 <move_balls+0x74>
    238a:	4967      	ldr	r1, [pc, #412]	; (2528 <move_balls+0x1fa>)
    238c:	687a      	ldr	r2, [r7, #4]
    238e:	4613      	mov	r3, r2
    2390:	009b      	lsls	r3, r3, #2
    2392:	4413      	add	r3, r2
    2394:	009b      	lsls	r3, r3, #2
    2396:	440b      	add	r3, r1
    2398:	681b      	ldr	r3, [r3, #0]
    239a:	683a      	ldr	r2, [r7, #0]
    239c:	8992      	ldrh	r2, [r2, #12]
    239e:	4293      	cmp	r3, r2
    23a0:	db2c      	blt.n	23fc <move_balls+0xce>
    23a2:	4961      	ldr	r1, [pc, #388]	; (2528 <move_balls+0x1fa>)
    23a4:	687a      	ldr	r2, [r7, #4]
    23a6:	4613      	mov	r3, r2
    23a8:	009b      	lsls	r3, r3, #2
    23aa:	4413      	add	r3, r2
    23ac:	009b      	lsls	r3, r3, #2
    23ae:	440b      	add	r3, r1
    23b0:	3308      	adds	r3, #8
    23b2:	681b      	ldr	r3, [r3, #0]
    23b4:	4259      	negs	r1, r3
    23b6:	485c      	ldr	r0, [pc, #368]	; (2528 <move_balls+0x1fa>)
    23b8:	687a      	ldr	r2, [r7, #4]
    23ba:	4613      	mov	r3, r2
    23bc:	009b      	lsls	r3, r3, #2
    23be:	4413      	add	r3, r2
    23c0:	009b      	lsls	r3, r3, #2
    23c2:	4403      	add	r3, r0
    23c4:	3308      	adds	r3, #8
    23c6:	6019      	str	r1, [r3, #0]
    23c8:	4957      	ldr	r1, [pc, #348]	; (2528 <move_balls+0x1fa>)
    23ca:	687a      	ldr	r2, [r7, #4]
    23cc:	4613      	mov	r3, r2
    23ce:	009b      	lsls	r3, r3, #2
    23d0:	4413      	add	r3, r2
    23d2:	009b      	lsls	r3, r3, #2
    23d4:	440b      	add	r3, r1
    23d6:	6819      	ldr	r1, [r3, #0]
    23d8:	4853      	ldr	r0, [pc, #332]	; (2528 <move_balls+0x1fa>)
    23da:	687a      	ldr	r2, [r7, #4]
    23dc:	4613      	mov	r3, r2
    23de:	009b      	lsls	r3, r3, #2
    23e0:	4413      	add	r3, r2
    23e2:	009b      	lsls	r3, r3, #2
    23e4:	4403      	add	r3, r0
    23e6:	3308      	adds	r3, #8
    23e8:	681b      	ldr	r3, [r3, #0]
    23ea:	4419      	add	r1, r3
    23ec:	484e      	ldr	r0, [pc, #312]	; (2528 <move_balls+0x1fa>)
    23ee:	687a      	ldr	r2, [r7, #4]
    23f0:	4613      	mov	r3, r2
    23f2:	009b      	lsls	r3, r3, #2
    23f4:	4413      	add	r3, r2
    23f6:	009b      	lsls	r3, r3, #2
    23f8:	4403      	add	r3, r0
    23fa:	6019      	str	r1, [r3, #0]
    23fc:	494a      	ldr	r1, [pc, #296]	; (2528 <move_balls+0x1fa>)
    23fe:	687a      	ldr	r2, [r7, #4]
    2400:	4613      	mov	r3, r2
    2402:	009b      	lsls	r3, r3, #2
    2404:	4413      	add	r3, r2
    2406:	009b      	lsls	r3, r3, #2
    2408:	440b      	add	r3, r1
    240a:	3304      	adds	r3, #4
    240c:	6819      	ldr	r1, [r3, #0]
    240e:	4846      	ldr	r0, [pc, #280]	; (2528 <move_balls+0x1fa>)
    2410:	687a      	ldr	r2, [r7, #4]
    2412:	4613      	mov	r3, r2
    2414:	009b      	lsls	r3, r3, #2
    2416:	4413      	add	r3, r2
    2418:	009b      	lsls	r3, r3, #2
    241a:	4403      	add	r3, r0
    241c:	330c      	adds	r3, #12
    241e:	681b      	ldr	r3, [r3, #0]
    2420:	4419      	add	r1, r3
    2422:	4841      	ldr	r0, [pc, #260]	; (2528 <move_balls+0x1fa>)
    2424:	687a      	ldr	r2, [r7, #4]
    2426:	4613      	mov	r3, r2
    2428:	009b      	lsls	r3, r3, #2
    242a:	4413      	add	r3, r2
    242c:	009b      	lsls	r3, r3, #2
    242e:	4403      	add	r3, r0
    2430:	3304      	adds	r3, #4
    2432:	6019      	str	r1, [r3, #0]
    2434:	493c      	ldr	r1, [pc, #240]	; (2528 <move_balls+0x1fa>)
    2436:	687a      	ldr	r2, [r7, #4]
    2438:	4613      	mov	r3, r2
    243a:	009b      	lsls	r3, r3, #2
    243c:	4413      	add	r3, r2
    243e:	009b      	lsls	r3, r3, #2
    2440:	440b      	add	r3, r1
    2442:	3304      	adds	r3, #4
    2444:	681b      	ldr	r3, [r3, #0]
    2446:	2b0f      	cmp	r3, #15
    2448:	dd0c      	ble.n	2464 <move_balls+0x136>
    244a:	4937      	ldr	r1, [pc, #220]	; (2528 <move_balls+0x1fa>)
    244c:	687a      	ldr	r2, [r7, #4]
    244e:	4613      	mov	r3, r2
    2450:	009b      	lsls	r3, r3, #2
    2452:	4413      	add	r3, r2
    2454:	009b      	lsls	r3, r3, #2
    2456:	440b      	add	r3, r1
    2458:	3304      	adds	r3, #4
    245a:	681b      	ldr	r3, [r3, #0]
    245c:	683a      	ldr	r2, [r7, #0]
    245e:	89d2      	ldrh	r2, [r2, #14]
    2460:	4293      	cmp	r3, r2
    2462:	db2e      	blt.n	24c2 <move_balls+0x194>
    2464:	4930      	ldr	r1, [pc, #192]	; (2528 <move_balls+0x1fa>)
    2466:	687a      	ldr	r2, [r7, #4]
    2468:	4613      	mov	r3, r2
    246a:	009b      	lsls	r3, r3, #2
    246c:	4413      	add	r3, r2
    246e:	009b      	lsls	r3, r3, #2
    2470:	440b      	add	r3, r1
    2472:	330c      	adds	r3, #12
    2474:	681b      	ldr	r3, [r3, #0]
    2476:	4259      	negs	r1, r3
    2478:	482b      	ldr	r0, [pc, #172]	; (2528 <move_balls+0x1fa>)
    247a:	687a      	ldr	r2, [r7, #4]
    247c:	4613      	mov	r3, r2
    247e:	009b      	lsls	r3, r3, #2
    2480:	4413      	add	r3, r2
    2482:	009b      	lsls	r3, r3, #2
    2484:	4403      	add	r3, r0
    2486:	330c      	adds	r3, #12
    2488:	6019      	str	r1, [r3, #0]
    248a:	4927      	ldr	r1, [pc, #156]	; (2528 <move_balls+0x1fa>)
    248c:	687a      	ldr	r2, [r7, #4]
    248e:	4613      	mov	r3, r2
    2490:	009b      	lsls	r3, r3, #2
    2492:	4413      	add	r3, r2
    2494:	009b      	lsls	r3, r3, #2
    2496:	440b      	add	r3, r1
    2498:	3304      	adds	r3, #4
    249a:	6819      	ldr	r1, [r3, #0]
    249c:	4822      	ldr	r0, [pc, #136]	; (2528 <move_balls+0x1fa>)
    249e:	687a      	ldr	r2, [r7, #4]
    24a0:	4613      	mov	r3, r2
    24a2:	009b      	lsls	r3, r3, #2
    24a4:	4413      	add	r3, r2
    24a6:	009b      	lsls	r3, r3, #2
    24a8:	4403      	add	r3, r0
    24aa:	330c      	adds	r3, #12
    24ac:	681b      	ldr	r3, [r3, #0]
    24ae:	4419      	add	r1, r3
    24b0:	481d      	ldr	r0, [pc, #116]	; (2528 <move_balls+0x1fa>)
    24b2:	687a      	ldr	r2, [r7, #4]
    24b4:	4613      	mov	r3, r2
    24b6:	009b      	lsls	r3, r3, #2
    24b8:	4413      	add	r3, r2
    24ba:	009b      	lsls	r3, r3, #2
    24bc:	4403      	add	r3, r0
    24be:	3304      	adds	r3, #4
    24c0:	6019      	str	r1, [r3, #0]
    24c2:	687b      	ldr	r3, [r7, #4]
    24c4:	3301      	adds	r3, #1
    24c6:	607b      	str	r3, [r7, #4]
    24c8:	687b      	ldr	r3, [r7, #4]
    24ca:	2b01      	cmp	r3, #1
    24cc:	f77f af38 	ble.w	2340 <move_balls+0x12>
    24d0:	4916      	ldr	r1, [pc, #88]	; (252c <move_balls+0x1fe>)
    24d2:	4815      	ldr	r0, [pc, #84]	; (2528 <move_balls+0x1fa>)
    24d4:	f7ff ff0e 	bl	22f4 <distance>
    24d8:	4603      	mov	r3, r0
    24da:	2b07      	cmp	r3, #7
    24dc:	d81f      	bhi.n	251e <move_balls+0x1f0>
    24de:	4b12      	ldr	r3, [pc, #72]	; (2528 <move_balls+0x1fa>)
    24e0:	689a      	ldr	r2, [r3, #8]
    24e2:	4b11      	ldr	r3, [pc, #68]	; (2528 <move_balls+0x1fa>)
    24e4:	69db      	ldr	r3, [r3, #28]
    24e6:	429a      	cmp	r2, r3
    24e8:	d009      	beq.n	24fe <move_balls+0x1d0>
    24ea:	4b0f      	ldr	r3, [pc, #60]	; (2528 <move_balls+0x1fa>)
    24ec:	689b      	ldr	r3, [r3, #8]
    24ee:	607b      	str	r3, [r7, #4]
    24f0:	4b0d      	ldr	r3, [pc, #52]	; (2528 <move_balls+0x1fa>)
    24f2:	69db      	ldr	r3, [r3, #28]
    24f4:	4a0c      	ldr	r2, [pc, #48]	; (2528 <move_balls+0x1fa>)
    24f6:	6093      	str	r3, [r2, #8]
    24f8:	4a0b      	ldr	r2, [pc, #44]	; (2528 <move_balls+0x1fa>)
    24fa:	687b      	ldr	r3, [r7, #4]
    24fc:	61d3      	str	r3, [r2, #28]
    24fe:	4b0a      	ldr	r3, [pc, #40]	; (2528 <move_balls+0x1fa>)
    2500:	68da      	ldr	r2, [r3, #12]
    2502:	4b09      	ldr	r3, [pc, #36]	; (2528 <move_balls+0x1fa>)
    2504:	6a1b      	ldr	r3, [r3, #32]
    2506:	429a      	cmp	r2, r3
    2508:	d009      	beq.n	251e <move_balls+0x1f0>
    250a:	4b07      	ldr	r3, [pc, #28]	; (2528 <move_balls+0x1fa>)
    250c:	68db      	ldr	r3, [r3, #12]
    250e:	607b      	str	r3, [r7, #4]
    2510:	4b05      	ldr	r3, [pc, #20]	; (2528 <move_balls+0x1fa>)
    2512:	6a1b      	ldr	r3, [r3, #32]
    2514:	4a04      	ldr	r2, [pc, #16]	; (2528 <move_balls+0x1fa>)
    2516:	60d3      	str	r3, [r2, #12]
    2518:	4a03      	ldr	r2, [pc, #12]	; (2528 <move_balls+0x1fa>)
    251a:	687b      	ldr	r3, [r7, #4]
    251c:	6213      	str	r3, [r2, #32]
    251e:	bf00      	nop
    2520:	3708      	adds	r7, #8
    2522:	46bd      	mov	sp, r7
    2524:	bd80      	pop	{r7, pc}
    2526:	bf00      	nop
    2528:	20002538 	.word	0x20002538
    252c:	2000254c 	.word	0x2000254c

00002530 <init_balls>:
    2530:	b580      	push	{r7, lr}
    2532:	b082      	sub	sp, #8
    2534:	af00      	add	r7, sp, #0
    2536:	f002 fbbd 	bl	4cb4 <get_video_params>
    253a:	6038      	str	r0, [r7, #0]
    253c:	2300      	movs	r3, #0
    253e:	607b      	str	r3, [r7, #4]
    2540:	e048      	b.n	25d4 <init_balls+0xa4>
    2542:	f7fd ffdd 	bl	500 <rand>
    2546:	4603      	mov	r3, r0
    2548:	683a      	ldr	r2, [r7, #0]
    254a:	8992      	ldrh	r2, [r2, #12]
    254c:	fb93 f1f2 	sdiv	r1, r3, r2
    2550:	fb02 f201 	mul.w	r2, r2, r1
    2554:	1a99      	subs	r1, r3, r2
    2556:	4823      	ldr	r0, [pc, #140]	; (25e4 <init_balls+0xb4>)
    2558:	687a      	ldr	r2, [r7, #4]
    255a:	4613      	mov	r3, r2
    255c:	009b      	lsls	r3, r3, #2
    255e:	4413      	add	r3, r2
    2560:	009b      	lsls	r3, r3, #2
    2562:	4403      	add	r3, r0
    2564:	6019      	str	r1, [r3, #0]
    2566:	f7fd ffcb 	bl	500 <rand>
    256a:	4602      	mov	r2, r0
    256c:	683b      	ldr	r3, [r7, #0]
    256e:	89db      	ldrh	r3, [r3, #14]
    2570:	3b10      	subs	r3, #16
    2572:	fb92 f1f3 	sdiv	r1, r2, r3
    2576:	fb03 f301 	mul.w	r3, r3, r1
    257a:	1ad3      	subs	r3, r2, r3
    257c:	f103 0110 	add.w	r1, r3, #16
    2580:	4818      	ldr	r0, [pc, #96]	; (25e4 <init_balls+0xb4>)
    2582:	687a      	ldr	r2, [r7, #4]
    2584:	4613      	mov	r3, r2
    2586:	009b      	lsls	r3, r3, #2
    2588:	4413      	add	r3, r2
    258a:	009b      	lsls	r3, r3, #2
    258c:	4403      	add	r3, r0
    258e:	3304      	adds	r3, #4
    2590:	6019      	str	r1, [r3, #0]
    2592:	4914      	ldr	r1, [pc, #80]	; (25e4 <init_balls+0xb4>)
    2594:	687a      	ldr	r2, [r7, #4]
    2596:	4613      	mov	r3, r2
    2598:	009b      	lsls	r3, r3, #2
    259a:	4413      	add	r3, r2
    259c:	009b      	lsls	r3, r3, #2
    259e:	440b      	add	r3, r1
    25a0:	3308      	adds	r3, #8
    25a2:	2201      	movs	r2, #1
    25a4:	601a      	str	r2, [r3, #0]
    25a6:	490f      	ldr	r1, [pc, #60]	; (25e4 <init_balls+0xb4>)
    25a8:	687a      	ldr	r2, [r7, #4]
    25aa:	4613      	mov	r3, r2
    25ac:	009b      	lsls	r3, r3, #2
    25ae:	4413      	add	r3, r2
    25b0:	009b      	lsls	r3, r3, #2
    25b2:	440b      	add	r3, r1
    25b4:	330c      	adds	r3, #12
    25b6:	2201      	movs	r2, #1
    25b8:	601a      	str	r2, [r3, #0]
    25ba:	490a      	ldr	r1, [pc, #40]	; (25e4 <init_balls+0xb4>)
    25bc:	687a      	ldr	r2, [r7, #4]
    25be:	4613      	mov	r3, r2
    25c0:	009b      	lsls	r3, r3, #2
    25c2:	4413      	add	r3, r2
    25c4:	009b      	lsls	r3, r3, #2
    25c6:	440b      	add	r3, r1
    25c8:	3310      	adds	r3, #16
    25ca:	4a07      	ldr	r2, [pc, #28]	; (25e8 <init_balls+0xb8>)
    25cc:	601a      	str	r2, [r3, #0]
    25ce:	687b      	ldr	r3, [r7, #4]
    25d0:	3301      	adds	r3, #1
    25d2:	607b      	str	r3, [r7, #4]
    25d4:	687b      	ldr	r3, [r7, #4]
    25d6:	2b01      	cmp	r3, #1
    25d8:	ddb3      	ble.n	2542 <init_balls+0x12>
    25da:	bf00      	nop
    25dc:	3708      	adds	r7, #8
    25de:	46bd      	mov	sp, r7
    25e0:	bd80      	pop	{r7, pc}
    25e2:	bf00      	nop
    25e4:	20002538 	.word	0x20002538
    25e8:	00005174 	.word	0x00005174

000025ec <color_bars>:
    25ec:	b580      	push	{r7, lr}
    25ee:	b084      	sub	sp, #16
    25f0:	af00      	add	r7, sp, #0
    25f2:	2300      	movs	r3, #0
    25f4:	71fb      	strb	r3, [r7, #7]
    25f6:	f002 fb5d 	bl	4cb4 <get_video_params>
    25fa:	6038      	str	r0, [r7, #0]
    25fc:	683b      	ldr	r3, [r7, #0]
    25fe:	89db      	ldrh	r3, [r3, #14]
    2600:	089b      	lsrs	r3, r3, #2
    2602:	b29b      	uxth	r3, r3
    2604:	461a      	mov	r2, r3
    2606:	4613      	mov	r3, r2
    2608:	005b      	lsls	r3, r3, #1
    260a:	4413      	add	r3, r2
    260c:	60bb      	str	r3, [r7, #8]
    260e:	e01b      	b.n	2648 <color_bars+0x5c>
    2610:	2310      	movs	r3, #16
    2612:	71fb      	strb	r3, [r7, #7]
    2614:	2300      	movs	r3, #0
    2616:	60fb      	str	r3, [r7, #12]
    2618:	e010      	b.n	263c <color_bars+0x50>
    261a:	68fb      	ldr	r3, [r7, #12]
    261c:	f003 0307 	and.w	r3, r3, #7
    2620:	2b00      	cmp	r3, #0
    2622:	d102      	bne.n	262a <color_bars+0x3e>
    2624:	79fb      	ldrb	r3, [r7, #7]
    2626:	3b01      	subs	r3, #1
    2628:	71fb      	strb	r3, [r7, #7]
    262a:	79fb      	ldrb	r3, [r7, #7]
    262c:	461a      	mov	r2, r3
    262e:	68b9      	ldr	r1, [r7, #8]
    2630:	68f8      	ldr	r0, [r7, #12]
    2632:	f7ff fba7 	bl	1d84 <gfx_plot>
    2636:	68fb      	ldr	r3, [r7, #12]
    2638:	3301      	adds	r3, #1
    263a:	60fb      	str	r3, [r7, #12]
    263c:	68fb      	ldr	r3, [r7, #12]
    263e:	2b7f      	cmp	r3, #127	; 0x7f
    2640:	ddeb      	ble.n	261a <color_bars+0x2e>
    2642:	68bb      	ldr	r3, [r7, #8]
    2644:	3301      	adds	r3, #1
    2646:	60bb      	str	r3, [r7, #8]
    2648:	683b      	ldr	r3, [r7, #0]
    264a:	89db      	ldrh	r3, [r3, #14]
    264c:	461a      	mov	r2, r3
    264e:	68bb      	ldr	r3, [r7, #8]
    2650:	429a      	cmp	r2, r3
    2652:	dcdd      	bgt.n	2610 <color_bars+0x24>
    2654:	bf00      	nop
    2656:	3710      	adds	r7, #16
    2658:	46bd      	mov	sp, r7
    265a:	bd80      	pop	{r7, pc}

0000265c <vertical_bars>:
    265c:	b580      	push	{r7, lr}
    265e:	b082      	sub	sp, #8
    2660:	af00      	add	r7, sp, #0
    2662:	f002 fb27 	bl	4cb4 <get_video_params>
    2666:	6038      	str	r0, [r7, #0]
    2668:	2310      	movs	r3, #16
    266a:	607b      	str	r3, [r7, #4]
    266c:	e00f      	b.n	268e <vertical_bars+0x32>
    266e:	220f      	movs	r2, #15
    2670:	6879      	ldr	r1, [r7, #4]
    2672:	2000      	movs	r0, #0
    2674:	f7ff fb86 	bl	1d84 <gfx_plot>
    2678:	683b      	ldr	r3, [r7, #0]
    267a:	899b      	ldrh	r3, [r3, #12]
    267c:	3b01      	subs	r3, #1
    267e:	220f      	movs	r2, #15
    2680:	6879      	ldr	r1, [r7, #4]
    2682:	4618      	mov	r0, r3
    2684:	f7ff fb7e 	bl	1d84 <gfx_plot>
    2688:	687b      	ldr	r3, [r7, #4]
    268a:	3301      	adds	r3, #1
    268c:	607b      	str	r3, [r7, #4]
    268e:	683b      	ldr	r3, [r7, #0]
    2690:	89db      	ldrh	r3, [r3, #14]
    2692:	461a      	mov	r2, r3
    2694:	687b      	ldr	r3, [r7, #4]
    2696:	429a      	cmp	r2, r3
    2698:	dce9      	bgt.n	266e <vertical_bars+0x12>
    269a:	bf00      	nop
    269c:	3708      	adds	r7, #8
    269e:	46bd      	mov	sp, r7
    26a0:	bd80      	pop	{r7, pc}

000026a2 <video_test>:
    26a2:	b580      	push	{r7, lr}
    26a4:	b082      	sub	sp, #8
    26a6:	af00      	add	r7, sp, #0
    26a8:	2300      	movs	r3, #0
    26aa:	71fb      	strb	r3, [r7, #7]
    26ac:	79fb      	ldrb	r3, [r7, #7]
    26ae:	4618      	mov	r0, r3
    26b0:	f002 fa74 	bl	4b9c <set_video_mode>
    26b4:	f7ff ff9a 	bl	25ec <color_bars>
    26b8:	f7ff ffd0 	bl	265c <vertical_bars>
    26bc:	4b2f      	ldr	r3, [pc, #188]	; (277c <video_test+0xda>)
    26be:	2110      	movs	r1, #16
    26c0:	4618      	mov	r0, r3
    26c2:	f001 fe89 	bl	43d8 <print_int>
    26c6:	4b2e      	ldr	r3, [pc, #184]	; (2780 <video_test+0xde>)
    26c8:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    26cc:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    26d0:	210a      	movs	r1, #10
    26d2:	4618      	mov	r0, r3
    26d4:	f001 fe80 	bl	43d8 <print_int>
    26d8:	f7ff ff2a 	bl	2530 <init_balls>
    26dc:	2300      	movs	r3, #0
    26de:	71fb      	strb	r3, [r7, #7]
    26e0:	f7ff fdb0 	bl	2244 <draw_balls>
    26e4:	f7ff fdae 	bl	2244 <draw_balls>
    26e8:	f7ff fe21 	bl	232e <move_balls>
    26ec:	2009      	movs	r0, #9
    26ee:	f7fe ff33 	bl	1558 <btn_query_down>
    26f2:	4603      	mov	r3, r0
    26f4:	2b00      	cmp	r3, #0
    26f6:	d033      	beq.n	2760 <video_test+0xbe>
    26f8:	79fb      	ldrb	r3, [r7, #7]
    26fa:	3301      	adds	r3, #1
    26fc:	71fb      	strb	r3, [r7, #7]
    26fe:	79fb      	ldrb	r3, [r7, #7]
    2700:	f003 0303 	and.w	r3, r3, #3
    2704:	71fb      	strb	r3, [r7, #7]
    2706:	79fb      	ldrb	r3, [r7, #7]
    2708:	4618      	mov	r0, r3
    270a:	f002 fa47 	bl	4b9c <set_video_mode>
    270e:	79fb      	ldrb	r3, [r7, #7]
    2710:	2b03      	cmp	r3, #3
    2712:	d81d      	bhi.n	2750 <video_test+0xae>
    2714:	a201      	add	r2, pc, #4	; (adr r2, 271c <video_test+0x7a>)
    2716:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    271a:	bf00      	nop
    271c:	0000272d 	.word	0x0000272d
    2720:	00002739 	.word	0x00002739
    2724:	00002741 	.word	0x00002741
    2728:	00002749 	.word	0x00002749
    272c:	4815      	ldr	r0, [pc, #84]	; (2784 <video_test+0xe2>)
    272e:	f001 fe23 	bl	4378 <print>
    2732:	f7ff ff5b 	bl	25ec <color_bars>
    2736:	e00b      	b.n	2750 <video_test+0xae>
    2738:	4813      	ldr	r0, [pc, #76]	; (2788 <video_test+0xe6>)
    273a:	f001 fe1d 	bl	4378 <print>
    273e:	e007      	b.n	2750 <video_test+0xae>
    2740:	4812      	ldr	r0, [pc, #72]	; (278c <video_test+0xea>)
    2742:	f001 fe19 	bl	4378 <print>
    2746:	e003      	b.n	2750 <video_test+0xae>
    2748:	4811      	ldr	r0, [pc, #68]	; (2790 <video_test+0xee>)
    274a:	f001 fe15 	bl	4378 <print>
    274e:	bf00      	nop
    2750:	f7ff ff84 	bl	265c <vertical_bars>
    2754:	f7ff feec 	bl	2530 <init_balls>
    2758:	2009      	movs	r0, #9
    275a:	f7fe ff41 	bl	15e0 <btn_wait_up>
    275e:	e7bf      	b.n	26e0 <video_test+0x3e>
    2760:	200b      	movs	r0, #11
    2762:	f7fe fef9 	bl	1558 <btn_query_down>
    2766:	4603      	mov	r3, r0
    2768:	2b00      	cmp	r3, #0
    276a:	d0b9      	beq.n	26e0 <video_test+0x3e>
    276c:	200b      	movs	r0, #11
    276e:	f7fe ff37 	bl	15e0 <btn_wait_up>
    2772:	bf00      	nop
    2774:	bf00      	nop
    2776:	3708      	adds	r7, #8
    2778:	46bd      	mov	sp, r7
    277a:	bd80      	pop	{r7, pc}
    277c:	00005800 	.word	0x00005800
    2780:	20004cd0 	.word	0x20004cd0
    2784:	00005194 	.word	0x00005194
    2788:	000051b4 	.word	0x000051b4
    278c:	000051d0 	.word	0x000051d0
    2790:	000051e8 	.word	0x000051e8

00002794 <sound_test>:
    2794:	b580      	push	{r7, lr}
    2796:	b082      	sub	sp, #8
    2798:	af00      	add	r7, sp, #0
    279a:	23ff      	movs	r3, #255	; 0xff
    279c:	71fb      	strb	r3, [r7, #7]
    279e:	f7ff fb87 	bl	1eb0 <gfx_cls>
    27a2:	4836      	ldr	r0, [pc, #216]	; (287c <sound_test+0xe8>)
    27a4:	f001 fde8 	bl	4378 <print>
    27a8:	e059      	b.n	285e <sound_test+0xca>
    27aa:	f7fe ff41 	bl	1630 <btn_wait_any>
    27ae:	4603      	mov	r3, r0
    27b0:	71fb      	strb	r3, [r7, #7]
    27b2:	79fb      	ldrb	r3, [r7, #7]
    27b4:	3b05      	subs	r3, #5
    27b6:	2b08      	cmp	r3, #8
    27b8:	d84c      	bhi.n	2854 <sound_test+0xc0>
    27ba:	a201      	add	r2, pc, #4	; (adr r2, 27c0 <sound_test+0x2c>)
    27bc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    27c0:	000027e5 	.word	0x000027e5
    27c4:	00002855 	.word	0x00002855
    27c8:	00002801 	.word	0x00002801
    27cc:	000027f3 	.word	0x000027f3
    27d0:	0000280f 	.word	0x0000280f
    27d4:	0000281d 	.word	0x0000281d
    27d8:	0000282b 	.word	0x0000282b
    27dc:	00002839 	.word	0x00002839
    27e0:	00002847 	.word	0x00002847
    27e4:	4826      	ldr	r0, [pc, #152]	; (2880 <sound_test+0xec>)
    27e6:	f001 fdc7 	bl	4378 <print>
    27ea:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    27ee:	80bb      	strh	r3, [r7, #4]
    27f0:	e030      	b.n	2854 <sound_test+0xc0>
    27f2:	4824      	ldr	r0, [pc, #144]	; (2884 <sound_test+0xf0>)
    27f4:	f001 fdc0 	bl	4378 <print>
    27f8:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    27fc:	80bb      	strh	r3, [r7, #4]
    27fe:	e029      	b.n	2854 <sound_test+0xc0>
    2800:	4821      	ldr	r0, [pc, #132]	; (2888 <sound_test+0xf4>)
    2802:	f001 fdb9 	bl	4378 <print>
    2806:	f240 13ed 	movw	r3, #493	; 0x1ed
    280a:	80bb      	strh	r3, [r7, #4]
    280c:	e022      	b.n	2854 <sound_test+0xc0>
    280e:	481f      	ldr	r0, [pc, #124]	; (288c <sound_test+0xf8>)
    2810:	f001 fdb2 	bl	4378 <print>
    2814:	f240 230b 	movw	r3, #523	; 0x20b
    2818:	80bb      	strh	r3, [r7, #4]
    281a:	e01b      	b.n	2854 <sound_test+0xc0>
    281c:	481c      	ldr	r0, [pc, #112]	; (2890 <sound_test+0xfc>)
    281e:	f001 fdab 	bl	4378 <print>
    2822:	f240 232a 	movw	r3, #554	; 0x22a
    2826:	80bb      	strh	r3, [r7, #4]
    2828:	e014      	b.n	2854 <sound_test+0xc0>
    282a:	481a      	ldr	r0, [pc, #104]	; (2894 <sound_test+0x100>)
    282c:	f001 fda4 	bl	4378 <print>
    2830:	f240 234b 	movw	r3, #587	; 0x24b
    2834:	80bb      	strh	r3, [r7, #4]
    2836:	e00d      	b.n	2854 <sound_test+0xc0>
    2838:	4817      	ldr	r0, [pc, #92]	; (2898 <sound_test+0x104>)
    283a:	f001 fd9d 	bl	4378 <print>
    283e:	f240 236e 	movw	r3, #622	; 0x26e
    2842:	80bb      	strh	r3, [r7, #4]
    2844:	e006      	b.n	2854 <sound_test+0xc0>
    2846:	4815      	ldr	r0, [pc, #84]	; (289c <sound_test+0x108>)
    2848:	f001 fd96 	bl	4378 <print>
    284c:	f240 2393 	movw	r3, #659	; 0x293
    2850:	80bb      	strh	r3, [r7, #4]
    2852:	bf00      	nop
    2854:	88bb      	ldrh	r3, [r7, #4]
    2856:	2103      	movs	r1, #3
    2858:	4618      	mov	r0, r3
    285a:	f001 f95f 	bl	3b1c <tone>
    285e:	79fb      	ldrb	r3, [r7, #7]
    2860:	2b0b      	cmp	r3, #11
    2862:	d1a2      	bne.n	27aa <sound_test+0x16>
    2864:	79fb      	ldrb	r3, [r7, #7]
    2866:	4618      	mov	r0, r3
    2868:	f7fe feba 	bl	15e0 <btn_wait_up>
    286c:	203c      	movs	r0, #60	; 0x3c
    286e:	f001 f9c7 	bl	3c00 <sound_sampler>
    2872:	bf00      	nop
    2874:	3708      	adds	r7, #8
    2876:	46bd      	mov	sp, r7
    2878:	bd80      	pop	{r7, pc}
    287a:	bf00      	nop
    287c:	00005200 	.word	0x00005200
    2880:	00005210 	.word	0x00005210
    2884:	00005218 	.word	0x00005218
    2888:	00005224 	.word	0x00005224
    288c:	00005230 	.word	0x00005230
    2890:	0000523c 	.word	0x0000523c
    2894:	00005244 	.word	0x00005244
    2898:	0000524c 	.word	0x0000524c
    289c:	00005254 	.word	0x00005254

000028a0 <display_keymap>:
    28a0:	b580      	push	{r7, lr}
    28a2:	b084      	sub	sp, #16
    28a4:	af00      	add	r7, sp, #0
    28a6:	6078      	str	r0, [r7, #4]
    28a8:	2108      	movs	r1, #8
    28aa:	2000      	movs	r0, #0
    28ac:	f001 fd38 	bl	4320 <set_cursor>
    28b0:	2300      	movs	r3, #0
    28b2:	60fb      	str	r3, [r7, #12]
    28b4:	e00a      	b.n	28cc <display_keymap+0x2c>
    28b6:	68fb      	ldr	r3, [r7, #12]
    28b8:	687a      	ldr	r2, [r7, #4]
    28ba:	4413      	add	r3, r2
    28bc:	781b      	ldrb	r3, [r3, #0]
    28be:	2110      	movs	r1, #16
    28c0:	4618      	mov	r0, r3
    28c2:	f001 fd89 	bl	43d8 <print_int>
    28c6:	68fb      	ldr	r3, [r7, #12]
    28c8:	3301      	adds	r3, #1
    28ca:	60fb      	str	r3, [r7, #12]
    28cc:	68fb      	ldr	r3, [r7, #12]
    28ce:	2b07      	cmp	r3, #7
    28d0:	ddf1      	ble.n	28b6 <display_keymap+0x16>
    28d2:	bf00      	nop
    28d4:	3710      	adds	r7, #16
    28d6:	46bd      	mov	sp, r7
    28d8:	bd80      	pop	{r7, pc}

000028da <buttons_map>:
    28da:	b580      	push	{r7, lr}
    28dc:	b086      	sub	sp, #24
    28de:	af00      	add	r7, sp, #0
    28e0:	23ff      	movs	r3, #255	; 0xff
    28e2:	74fb      	strb	r3, [r7, #19]
    28e4:	f7fe feec 	bl	16c0 <get_keymap>
    28e8:	60f8      	str	r0, [r7, #12]
    28ea:	f7ff fae1 	bl	1eb0 <gfx_cls>
    28ee:	4882      	ldr	r0, [pc, #520]	; (2af8 <buttons_map+0x21e>)
    28f0:	f001 fd65 	bl	43be <println>
    28f4:	2300      	movs	r3, #0
    28f6:	617b      	str	r3, [r7, #20]
    28f8:	e00b      	b.n	2912 <buttons_map+0x38>
    28fa:	697b      	ldr	r3, [r7, #20]
    28fc:	68fa      	ldr	r2, [r7, #12]
    28fe:	4413      	add	r3, r2
    2900:	7819      	ldrb	r1, [r3, #0]
    2902:	1d3a      	adds	r2, r7, #4
    2904:	697b      	ldr	r3, [r7, #20]
    2906:	4413      	add	r3, r2
    2908:	460a      	mov	r2, r1
    290a:	701a      	strb	r2, [r3, #0]
    290c:	697b      	ldr	r3, [r7, #20]
    290e:	3301      	adds	r3, #1
    2910:	617b      	str	r3, [r7, #20]
    2912:	697b      	ldr	r3, [r7, #20]
    2914:	2b07      	cmp	r3, #7
    2916:	ddf0      	ble.n	28fa <buttons_map+0x20>
    2918:	1d3b      	adds	r3, r7, #4
    291a:	4618      	mov	r0, r3
    291c:	f7ff ffc0 	bl	28a0 <display_keymap>
    2920:	2108      	movs	r1, #8
    2922:	2000      	movs	r0, #0
    2924:	f001 fcfc 	bl	4320 <set_cursor>
    2928:	2001      	movs	r0, #1
    292a:	f001 fe8f 	bl	464c <show_cursor>
    292e:	2300      	movs	r3, #0
    2930:	617b      	str	r3, [r7, #20]
    2932:	1d3a      	adds	r2, r7, #4
    2934:	697b      	ldr	r3, [r7, #20]
    2936:	4413      	add	r3, r2
    2938:	781b      	ldrb	r3, [r3, #0]
    293a:	74bb      	strb	r3, [r7, #18]
    293c:	e0c2      	b.n	2ac4 <buttons_map+0x1ea>
    293e:	f7fe fe77 	bl	1630 <btn_wait_any>
    2942:	4603      	mov	r3, r0
    2944:	74fb      	strb	r3, [r7, #19]
    2946:	7cfb      	ldrb	r3, [r7, #19]
    2948:	3b05      	subs	r3, #5
    294a:	2b07      	cmp	r3, #7
    294c:	f200 80b6 	bhi.w	2abc <buttons_map+0x1e2>
    2950:	a201      	add	r2, pc, #4	; (adr r2, 2958 <buttons_map+0x7e>)
    2952:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2956:	bf00      	nop
    2958:	000029ef 	.word	0x000029ef
    295c:	00002abd 	.word	0x00002abd
    2960:	00002979 	.word	0x00002979
    2964:	00002a2d 	.word	0x00002a2d
    2968:	000029b5 	.word	0x000029b5
    296c:	00002abd 	.word	0x00002abd
    2970:	00002abd 	.word	0x00002abd
    2974:	00002a6b 	.word	0x00002a6b
    2978:	697b      	ldr	r3, [r7, #20]
    297a:	2b00      	cmp	r3, #0
    297c:	f000 8097 	beq.w	2aae <buttons_map+0x1d4>
    2980:	2000      	movs	r0, #0
    2982:	f001 fe63 	bl	464c <show_cursor>
    2986:	697b      	ldr	r3, [r7, #20]
    2988:	3b01      	subs	r3, #1
    298a:	617b      	str	r3, [r7, #20]
    298c:	697b      	ldr	r3, [r7, #20]
    298e:	b2db      	uxtb	r3, r3
    2990:	461a      	mov	r2, r3
    2992:	00d2      	lsls	r2, r2, #3
    2994:	4413      	add	r3, r2
    2996:	005b      	lsls	r3, r3, #1
    2998:	b2db      	uxtb	r3, r3
    299a:	2108      	movs	r1, #8
    299c:	4618      	mov	r0, r3
    299e:	f001 fcbf 	bl	4320 <set_cursor>
    29a2:	2001      	movs	r0, #1
    29a4:	f001 fe52 	bl	464c <show_cursor>
    29a8:	1d3a      	adds	r2, r7, #4
    29aa:	697b      	ldr	r3, [r7, #20]
    29ac:	4413      	add	r3, r2
    29ae:	781b      	ldrb	r3, [r3, #0]
    29b0:	74bb      	strb	r3, [r7, #18]
    29b2:	e07c      	b.n	2aae <buttons_map+0x1d4>
    29b4:	697b      	ldr	r3, [r7, #20]
    29b6:	2b06      	cmp	r3, #6
    29b8:	dc7b      	bgt.n	2ab2 <buttons_map+0x1d8>
    29ba:	2000      	movs	r0, #0
    29bc:	f001 fe46 	bl	464c <show_cursor>
    29c0:	697b      	ldr	r3, [r7, #20]
    29c2:	3301      	adds	r3, #1
    29c4:	617b      	str	r3, [r7, #20]
    29c6:	697b      	ldr	r3, [r7, #20]
    29c8:	b2db      	uxtb	r3, r3
    29ca:	461a      	mov	r2, r3
    29cc:	00d2      	lsls	r2, r2, #3
    29ce:	4413      	add	r3, r2
    29d0:	005b      	lsls	r3, r3, #1
    29d2:	b2db      	uxtb	r3, r3
    29d4:	2108      	movs	r1, #8
    29d6:	4618      	mov	r0, r3
    29d8:	f001 fca2 	bl	4320 <set_cursor>
    29dc:	2001      	movs	r0, #1
    29de:	f001 fe35 	bl	464c <show_cursor>
    29e2:	1d3a      	adds	r2, r7, #4
    29e4:	697b      	ldr	r3, [r7, #20]
    29e6:	4413      	add	r3, r2
    29e8:	781b      	ldrb	r3, [r3, #0]
    29ea:	74bb      	strb	r3, [r7, #18]
    29ec:	e061      	b.n	2ab2 <buttons_map+0x1d8>
    29ee:	7cbb      	ldrb	r3, [r7, #18]
    29f0:	2b0e      	cmp	r3, #14
    29f2:	d860      	bhi.n	2ab6 <buttons_map+0x1dc>
    29f4:	7cbb      	ldrb	r3, [r7, #18]
    29f6:	3301      	adds	r3, #1
    29f8:	74bb      	strb	r3, [r7, #18]
    29fa:	1d3a      	adds	r2, r7, #4
    29fc:	697b      	ldr	r3, [r7, #20]
    29fe:	4413      	add	r3, r2
    2a00:	7cba      	ldrb	r2, [r7, #18]
    2a02:	701a      	strb	r2, [r3, #0]
    2a04:	7cbb      	ldrb	r3, [r7, #18]
    2a06:	2110      	movs	r1, #16
    2a08:	4618      	mov	r0, r3
    2a0a:	f001 fce5 	bl	43d8 <print_int>
    2a0e:	697b      	ldr	r3, [r7, #20]
    2a10:	b2db      	uxtb	r3, r3
    2a12:	461a      	mov	r2, r3
    2a14:	00d2      	lsls	r2, r2, #3
    2a16:	4413      	add	r3, r2
    2a18:	005b      	lsls	r3, r3, #1
    2a1a:	b2db      	uxtb	r3, r3
    2a1c:	2108      	movs	r1, #8
    2a1e:	4618      	mov	r0, r3
    2a20:	f001 fc7e 	bl	4320 <set_cursor>
    2a24:	2001      	movs	r0, #1
    2a26:	f001 fe11 	bl	464c <show_cursor>
    2a2a:	e044      	b.n	2ab6 <buttons_map+0x1dc>
    2a2c:	7cbb      	ldrb	r3, [r7, #18]
    2a2e:	2b00      	cmp	r3, #0
    2a30:	d043      	beq.n	2aba <buttons_map+0x1e0>
    2a32:	7cbb      	ldrb	r3, [r7, #18]
    2a34:	3b01      	subs	r3, #1
    2a36:	74bb      	strb	r3, [r7, #18]
    2a38:	1d3a      	adds	r2, r7, #4
    2a3a:	697b      	ldr	r3, [r7, #20]
    2a3c:	4413      	add	r3, r2
    2a3e:	7cba      	ldrb	r2, [r7, #18]
    2a40:	701a      	strb	r2, [r3, #0]
    2a42:	7cbb      	ldrb	r3, [r7, #18]
    2a44:	2110      	movs	r1, #16
    2a46:	4618      	mov	r0, r3
    2a48:	f001 fcc6 	bl	43d8 <print_int>
    2a4c:	697b      	ldr	r3, [r7, #20]
    2a4e:	b2db      	uxtb	r3, r3
    2a50:	461a      	mov	r2, r3
    2a52:	00d2      	lsls	r2, r2, #3
    2a54:	4413      	add	r3, r2
    2a56:	005b      	lsls	r3, r3, #1
    2a58:	b2db      	uxtb	r3, r3
    2a5a:	2108      	movs	r1, #8
    2a5c:	4618      	mov	r0, r3
    2a5e:	f001 fc5f 	bl	4320 <set_cursor>
    2a62:	2001      	movs	r0, #1
    2a64:	f001 fdf2 	bl	464c <show_cursor>
    2a68:	e027      	b.n	2aba <buttons_map+0x1e0>
    2a6a:	2300      	movs	r3, #0
    2a6c:	617b      	str	r3, [r7, #20]
    2a6e:	e00b      	b.n	2a88 <buttons_map+0x1ae>
    2a70:	697b      	ldr	r3, [r7, #20]
    2a72:	68fa      	ldr	r2, [r7, #12]
    2a74:	4413      	add	r3, r2
    2a76:	7819      	ldrb	r1, [r3, #0]
    2a78:	1d3a      	adds	r2, r7, #4
    2a7a:	697b      	ldr	r3, [r7, #20]
    2a7c:	4413      	add	r3, r2
    2a7e:	460a      	mov	r2, r1
    2a80:	701a      	strb	r2, [r3, #0]
    2a82:	697b      	ldr	r3, [r7, #20]
    2a84:	3301      	adds	r3, #1
    2a86:	617b      	str	r3, [r7, #20]
    2a88:	697b      	ldr	r3, [r7, #20]
    2a8a:	2b07      	cmp	r3, #7
    2a8c:	ddf0      	ble.n	2a70 <buttons_map+0x196>
    2a8e:	1d3b      	adds	r3, r7, #4
    2a90:	4618      	mov	r0, r3
    2a92:	f7ff ff05 	bl	28a0 <display_keymap>
    2a96:	2108      	movs	r1, #8
    2a98:	2000      	movs	r0, #0
    2a9a:	f001 fc41 	bl	4320 <set_cursor>
    2a9e:	2300      	movs	r3, #0
    2aa0:	617b      	str	r3, [r7, #20]
    2aa2:	1d3a      	adds	r2, r7, #4
    2aa4:	697b      	ldr	r3, [r7, #20]
    2aa6:	4413      	add	r3, r2
    2aa8:	781b      	ldrb	r3, [r3, #0]
    2aaa:	74bb      	strb	r3, [r7, #18]
    2aac:	e006      	b.n	2abc <buttons_map+0x1e2>
    2aae:	bf00      	nop
    2ab0:	e004      	b.n	2abc <buttons_map+0x1e2>
    2ab2:	bf00      	nop
    2ab4:	e002      	b.n	2abc <buttons_map+0x1e2>
    2ab6:	bf00      	nop
    2ab8:	e000      	b.n	2abc <buttons_map+0x1e2>
    2aba:	bf00      	nop
    2abc:	7cfb      	ldrb	r3, [r7, #19]
    2abe:	4618      	mov	r0, r3
    2ac0:	f7fe fd8e 	bl	15e0 <btn_wait_up>
    2ac4:	7cfb      	ldrb	r3, [r7, #19]
    2ac6:	2b0b      	cmp	r3, #11
    2ac8:	f47f af39 	bne.w	293e <buttons_map+0x64>
    2acc:	2300      	movs	r3, #0
    2ace:	617b      	str	r3, [r7, #20]
    2ad0:	e00a      	b.n	2ae8 <buttons_map+0x20e>
    2ad2:	697b      	ldr	r3, [r7, #20]
    2ad4:	68fa      	ldr	r2, [r7, #12]
    2ad6:	4413      	add	r3, r2
    2ad8:	1d39      	adds	r1, r7, #4
    2ada:	697a      	ldr	r2, [r7, #20]
    2adc:	440a      	add	r2, r1
    2ade:	7812      	ldrb	r2, [r2, #0]
    2ae0:	701a      	strb	r2, [r3, #0]
    2ae2:	697b      	ldr	r3, [r7, #20]
    2ae4:	3301      	adds	r3, #1
    2ae6:	617b      	str	r3, [r7, #20]
    2ae8:	697b      	ldr	r3, [r7, #20]
    2aea:	2b07      	cmp	r3, #7
    2aec:	ddf1      	ble.n	2ad2 <buttons_map+0x1f8>
    2aee:	bf00      	nop
    2af0:	3718      	adds	r7, #24
    2af2:	46bd      	mov	sp, r7
    2af4:	bd80      	pop	{r7, pc}
    2af6:	bf00      	nop
    2af8:	0000525c 	.word	0x0000525c

00002afc <select_game>:
    2afc:	b580      	push	{r7, lr}
    2afe:	af00      	add	r7, sp, #0
    2b00:	f7ff f9d6 	bl	1eb0 <gfx_cls>
    2b04:	4803      	ldr	r0, [pc, #12]	; (2b14 <select_game+0x18>)
    2b06:	f001 fc5a 	bl	43be <println>
    2b0a:	203c      	movs	r0, #60	; 0x3c
    2b0c:	f002 f8e6 	bl	4cdc <game_pause>
    2b10:	bf00      	nop
    2b12:	bd80      	pop	{r7, pc}
    2b14:	00005270 	.word	0x00005270

00002b18 <display_menu>:
    2b18:	b580      	push	{r7, lr}
    2b1a:	b082      	sub	sp, #8
    2b1c:	af00      	add	r7, sp, #0
    2b1e:	f7ff f9c7 	bl	1eb0 <gfx_cls>
    2b22:	2300      	movs	r3, #0
    2b24:	607b      	str	r3, [r7, #4]
    2b26:	e009      	b.n	2b3c <display_menu+0x24>
    2b28:	4a08      	ldr	r2, [pc, #32]	; (2b4c <display_menu+0x34>)
    2b2a:	687b      	ldr	r3, [r7, #4]
    2b2c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    2b30:	4618      	mov	r0, r3
    2b32:	f001 fc44 	bl	43be <println>
    2b36:	687b      	ldr	r3, [r7, #4]
    2b38:	3301      	adds	r3, #1
    2b3a:	607b      	str	r3, [r7, #4]
    2b3c:	687b      	ldr	r3, [r7, #4]
    2b3e:	2b03      	cmp	r3, #3
    2b40:	ddf2      	ble.n	2b28 <display_menu+0x10>
    2b42:	bf00      	nop
    2b44:	3708      	adds	r7, #8
    2b46:	46bd      	mov	sp, r7
    2b48:	bd80      	pop	{r7, pc}
    2b4a:	bf00      	nop
    2b4c:	2000000c 	.word	0x2000000c

00002b50 <menu>:
    2b50:	b580      	push	{r7, lr}
    2b52:	b084      	sub	sp, #16
    2b54:	af00      	add	r7, sp, #0
    2b56:	2300      	movs	r3, #0
    2b58:	60fb      	str	r3, [r7, #12]
    2b5a:	f002 f8ab 	bl	4cb4 <get_video_params>
    2b5e:	60b8      	str	r0, [r7, #8]
    2b60:	f7ff ffda 	bl	2b18 <display_menu>
    2b64:	68fb      	ldr	r3, [r7, #12]
    2b66:	b2db      	uxtb	r3, r3
    2b68:	00db      	lsls	r3, r3, #3
    2b6a:	b2db      	uxtb	r3, r3
    2b6c:	4619      	mov	r1, r3
    2b6e:	2000      	movs	r0, #0
    2b70:	f001 fbd6 	bl	4320 <set_cursor>
    2b74:	203e      	movs	r0, #62	; 0x3e
    2b76:	f001 fb47 	bl	4208 <put_char>
    2b7a:	f7fe fd59 	bl	1630 <btn_wait_any>
    2b7e:	4603      	mov	r3, r0
    2b80:	71fb      	strb	r3, [r7, #7]
    2b82:	79fb      	ldrb	r3, [r7, #7]
    2b84:	4618      	mov	r0, r3
    2b86:	f7fe fd2b 	bl	15e0 <btn_wait_up>
    2b8a:	68fb      	ldr	r3, [r7, #12]
    2b8c:	b2db      	uxtb	r3, r3
    2b8e:	00db      	lsls	r3, r3, #3
    2b90:	b2db      	uxtb	r3, r3
    2b92:	4619      	mov	r1, r3
    2b94:	2000      	movs	r0, #0
    2b96:	f001 fbc3 	bl	4320 <set_cursor>
    2b9a:	2020      	movs	r0, #32
    2b9c:	f001 fb34 	bl	4208 <put_char>
    2ba0:	79fb      	ldrb	r3, [r7, #7]
    2ba2:	2b08      	cmp	r3, #8
    2ba4:	d00a      	beq.n	2bbc <menu+0x6c>
    2ba6:	2b0b      	cmp	r3, #11
    2ba8:	d00f      	beq.n	2bca <menu+0x7a>
    2baa:	2b05      	cmp	r3, #5
    2bac:	d12e      	bne.n	2c0c <menu+0xbc>
    2bae:	68fb      	ldr	r3, [r7, #12]
    2bb0:	2b00      	cmp	r3, #0
    2bb2:	d028      	beq.n	2c06 <menu+0xb6>
    2bb4:	68fb      	ldr	r3, [r7, #12]
    2bb6:	3b01      	subs	r3, #1
    2bb8:	60fb      	str	r3, [r7, #12]
    2bba:	e024      	b.n	2c06 <menu+0xb6>
    2bbc:	68fb      	ldr	r3, [r7, #12]
    2bbe:	2b02      	cmp	r3, #2
    2bc0:	dc23      	bgt.n	2c0a <menu+0xba>
    2bc2:	68fb      	ldr	r3, [r7, #12]
    2bc4:	3301      	adds	r3, #1
    2bc6:	60fb      	str	r3, [r7, #12]
    2bc8:	e01f      	b.n	2c0a <menu+0xba>
    2bca:	68fb      	ldr	r3, [r7, #12]
    2bcc:	2b03      	cmp	r3, #3
    2bce:	d817      	bhi.n	2c00 <menu+0xb0>
    2bd0:	a201      	add	r2, pc, #4	; (adr r2, 2bd8 <menu+0x88>)
    2bd2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2bd6:	bf00      	nop
    2bd8:	00002be9 	.word	0x00002be9
    2bdc:	00002bef 	.word	0x00002bef
    2be0:	00002bf5 	.word	0x00002bf5
    2be4:	00002bfb 	.word	0x00002bfb
    2be8:	f7ff fe77 	bl	28da <buttons_map>
    2bec:	e008      	b.n	2c00 <menu+0xb0>
    2bee:	f7ff ff85 	bl	2afc <select_game>
    2bf2:	e005      	b.n	2c00 <menu+0xb0>
    2bf4:	f7ff fd55 	bl	26a2 <video_test>
    2bf8:	e002      	b.n	2c00 <menu+0xb0>
    2bfa:	f7ff fdcb 	bl	2794 <sound_test>
    2bfe:	bf00      	nop
    2c00:	f7ff ff8a 	bl	2b18 <display_menu>
    2c04:	e002      	b.n	2c0c <menu+0xbc>
    2c06:	bf00      	nop
    2c08:	e7ac      	b.n	2b64 <menu+0x14>
    2c0a:	bf00      	nop
    2c0c:	e7aa      	b.n	2b64 <menu+0x14>

00002c0e <main>:
    2c0e:	b580      	push	{r7, lr}
    2c10:	b086      	sub	sp, #24
    2c12:	af00      	add	r7, sp, #0
    2c14:	f7ff fade 	bl	21d4 <set_sysclock>
    2c18:	4b19      	ldr	r3, [pc, #100]	; (2c80 <main+0x72>)
    2c1a:	f640 021d 	movw	r2, #2077	; 0x81d
    2c1e:	619a      	str	r2, [r3, #24]
    2c20:	2206      	movs	r2, #6
    2c22:	210d      	movs	r1, #13
    2c24:	4817      	ldr	r0, [pc, #92]	; (2c84 <main+0x76>)
    2c26:	f7fe ffbe 	bl	1ba6 <config_pin>
    2c2a:	4a16      	ldr	r2, [pc, #88]	; (2c84 <main+0x76>)
    2c2c:	4b15      	ldr	r3, [pc, #84]	; (2c84 <main+0x76>)
    2c2e:	68db      	ldr	r3, [r3, #12]
    2c30:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    2c34:	60d3      	str	r3, [r2, #12]
    2c36:	f7fe fc09 	bl	144c <gamepad_init>
    2c3a:	f001 fd2f 	bl	469c <tvout_init>
    2c3e:	f000 ff4d 	bl	3adc <sound_init>
    2c42:	2300      	movs	r3, #0
    2c44:	617b      	str	r3, [r7, #20]
    2c46:	e00b      	b.n	2c60 <main+0x52>
    2c48:	f7fd fc5a 	bl	500 <rand>
    2c4c:	4603      	mov	r3, r0
    2c4e:	b2d9      	uxtb	r1, r3
    2c50:	1d3a      	adds	r2, r7, #4
    2c52:	697b      	ldr	r3, [r7, #20]
    2c54:	4413      	add	r3, r2
    2c56:	460a      	mov	r2, r1
    2c58:	701a      	strb	r2, [r3, #0]
    2c5a:	697b      	ldr	r3, [r7, #20]
    2c5c:	3301      	adds	r3, #1
    2c5e:	617b      	str	r3, [r7, #20]
    2c60:	697b      	ldr	r3, [r7, #20]
    2c62:	2b0f      	cmp	r3, #15
    2c64:	ddf0      	ble.n	2c48 <main+0x3a>
    2c66:	1d3b      	adds	r3, r7, #4
    2c68:	4618      	mov	r0, r3
    2c6a:	f000 ffac 	bl	3bc6 <load_sound_buffer>
    2c6e:	f7ff f91f 	bl	1eb0 <gfx_cls>
    2c72:	f7ff ff6d 	bl	2b50 <menu>
    2c76:	bf00      	nop
    2c78:	3718      	adds	r7, #24
    2c7a:	46bd      	mov	sp, r7
    2c7c:	bd80      	pop	{r7, pc}
    2c7e:	bf00      	nop
    2c80:	40021000 	.word	0x40021000
    2c84:	40011000 	.word	0x40011000

00002c88 <enable_interrupt>:
    2c88:	b480      	push	{r7}
    2c8a:	b083      	sub	sp, #12
    2c8c:	af00      	add	r7, sp, #0
    2c8e:	6078      	str	r0, [r7, #4]
    2c90:	687b      	ldr	r3, [r7, #4]
    2c92:	2b3b      	cmp	r3, #59	; 0x3b
    2c94:	dc17      	bgt.n	2cc6 <enable_interrupt+0x3e>
    2c96:	687b      	ldr	r3, [r7, #4]
    2c98:	115b      	asrs	r3, r3, #5
    2c9a:	009b      	lsls	r3, r3, #2
    2c9c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2ca0:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2ca4:	687a      	ldr	r2, [r7, #4]
    2ca6:	1152      	asrs	r2, r2, #5
    2ca8:	0092      	lsls	r2, r2, #2
    2caa:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2cae:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    2cb2:	6812      	ldr	r2, [r2, #0]
    2cb4:	6879      	ldr	r1, [r7, #4]
    2cb6:	f001 011f 	and.w	r1, r1, #31
    2cba:	2001      	movs	r0, #1
    2cbc:	fa00 f101 	lsl.w	r1, r0, r1
    2cc0:	430a      	orrs	r2, r1
    2cc2:	601a      	str	r2, [r3, #0]
    2cc4:	e000      	b.n	2cc8 <enable_interrupt+0x40>
    2cc6:	bf00      	nop
    2cc8:	370c      	adds	r7, #12
    2cca:	46bd      	mov	sp, r7
    2ccc:	bc80      	pop	{r7}
    2cce:	4770      	bx	lr

00002cd0 <disable_interrupt>:
    2cd0:	b480      	push	{r7}
    2cd2:	b083      	sub	sp, #12
    2cd4:	af00      	add	r7, sp, #0
    2cd6:	6078      	str	r0, [r7, #4]
    2cd8:	687b      	ldr	r3, [r7, #4]
    2cda:	2b3b      	cmp	r3, #59	; 0x3b
    2cdc:	dc0c      	bgt.n	2cf8 <disable_interrupt+0x28>
    2cde:	687b      	ldr	r3, [r7, #4]
    2ce0:	115b      	asrs	r3, r3, #5
    2ce2:	009a      	lsls	r2, r3, #2
    2ce4:	4b07      	ldr	r3, [pc, #28]	; (2d04 <disable_interrupt+0x34>)
    2ce6:	4413      	add	r3, r2
    2ce8:	687a      	ldr	r2, [r7, #4]
    2cea:	f002 021f 	and.w	r2, r2, #31
    2cee:	2101      	movs	r1, #1
    2cf0:	fa01 f202 	lsl.w	r2, r1, r2
    2cf4:	601a      	str	r2, [r3, #0]
    2cf6:	e000      	b.n	2cfa <disable_interrupt+0x2a>
    2cf8:	bf00      	nop
    2cfa:	370c      	adds	r7, #12
    2cfc:	46bd      	mov	sp, r7
    2cfe:	bc80      	pop	{r7}
    2d00:	4770      	bx	lr
    2d02:	bf00      	nop
    2d04:	e000e180 	.word	0xe000e180

00002d08 <get_pending>:
    2d08:	b480      	push	{r7}
    2d0a:	b083      	sub	sp, #12
    2d0c:	af00      	add	r7, sp, #0
    2d0e:	6078      	str	r0, [r7, #4]
    2d10:	687b      	ldr	r3, [r7, #4]
    2d12:	2b3b      	cmp	r3, #59	; 0x3b
    2d14:	dd01      	ble.n	2d1a <get_pending+0x12>
    2d16:	2300      	movs	r3, #0
    2d18:	e00c      	b.n	2d34 <get_pending+0x2c>
    2d1a:	687b      	ldr	r3, [r7, #4]
    2d1c:	115b      	asrs	r3, r3, #5
    2d1e:	009a      	lsls	r2, r3, #2
    2d20:	4b07      	ldr	r3, [pc, #28]	; (2d40 <get_pending+0x38>)
    2d22:	4413      	add	r3, r2
    2d24:	681b      	ldr	r3, [r3, #0]
    2d26:	687a      	ldr	r2, [r7, #4]
    2d28:	f002 021f 	and.w	r2, r2, #31
    2d2c:	2101      	movs	r1, #1
    2d2e:	fa01 f202 	lsl.w	r2, r1, r2
    2d32:	4013      	ands	r3, r2
    2d34:	4618      	mov	r0, r3
    2d36:	370c      	adds	r7, #12
    2d38:	46bd      	mov	sp, r7
    2d3a:	bc80      	pop	{r7}
    2d3c:	4770      	bx	lr
    2d3e:	bf00      	nop
    2d40:	e000e280 	.word	0xe000e280

00002d44 <get_active>:
    2d44:	b480      	push	{r7}
    2d46:	b083      	sub	sp, #12
    2d48:	af00      	add	r7, sp, #0
    2d4a:	6078      	str	r0, [r7, #4]
    2d4c:	687b      	ldr	r3, [r7, #4]
    2d4e:	2b3b      	cmp	r3, #59	; 0x3b
    2d50:	dd01      	ble.n	2d56 <get_active+0x12>
    2d52:	2300      	movs	r3, #0
    2d54:	e00e      	b.n	2d74 <get_active+0x30>
    2d56:	687b      	ldr	r3, [r7, #4]
    2d58:	115b      	asrs	r3, r3, #5
    2d5a:	009b      	lsls	r3, r3, #2
    2d5c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2d60:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2d64:	681b      	ldr	r3, [r3, #0]
    2d66:	687a      	ldr	r2, [r7, #4]
    2d68:	f002 021f 	and.w	r2, r2, #31
    2d6c:	2101      	movs	r1, #1
    2d6e:	fa01 f202 	lsl.w	r2, r1, r2
    2d72:	4013      	ands	r3, r2
    2d74:	4618      	mov	r0, r3
    2d76:	370c      	adds	r7, #12
    2d78:	46bd      	mov	sp, r7
    2d7a:	bc80      	pop	{r7}
    2d7c:	4770      	bx	lr

00002d7e <set_pending>:
    2d7e:	b480      	push	{r7}
    2d80:	b083      	sub	sp, #12
    2d82:	af00      	add	r7, sp, #0
    2d84:	6078      	str	r0, [r7, #4]
    2d86:	687b      	ldr	r3, [r7, #4]
    2d88:	2b3b      	cmp	r3, #59	; 0x3b
    2d8a:	dc17      	bgt.n	2dbc <set_pending+0x3e>
    2d8c:	687b      	ldr	r3, [r7, #4]
    2d8e:	115b      	asrs	r3, r3, #5
    2d90:	009b      	lsls	r3, r3, #2
    2d92:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2d96:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2d9a:	687a      	ldr	r2, [r7, #4]
    2d9c:	1152      	asrs	r2, r2, #5
    2d9e:	0092      	lsls	r2, r2, #2
    2da0:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2da4:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    2da8:	6812      	ldr	r2, [r2, #0]
    2daa:	6879      	ldr	r1, [r7, #4]
    2dac:	f001 011f 	and.w	r1, r1, #31
    2db0:	2001      	movs	r0, #1
    2db2:	fa00 f101 	lsl.w	r1, r0, r1
    2db6:	430a      	orrs	r2, r1
    2db8:	601a      	str	r2, [r3, #0]
    2dba:	e000      	b.n	2dbe <set_pending+0x40>
    2dbc:	bf00      	nop
    2dbe:	370c      	adds	r7, #12
    2dc0:	46bd      	mov	sp, r7
    2dc2:	bc80      	pop	{r7}
    2dc4:	4770      	bx	lr

00002dc6 <clear_pending>:
    2dc6:	b480      	push	{r7}
    2dc8:	b083      	sub	sp, #12
    2dca:	af00      	add	r7, sp, #0
    2dcc:	6078      	str	r0, [r7, #4]
    2dce:	687b      	ldr	r3, [r7, #4]
    2dd0:	2b3b      	cmp	r3, #59	; 0x3b
    2dd2:	dc0c      	bgt.n	2dee <clear_pending+0x28>
    2dd4:	687b      	ldr	r3, [r7, #4]
    2dd6:	115b      	asrs	r3, r3, #5
    2dd8:	009a      	lsls	r2, r3, #2
    2dda:	4b07      	ldr	r3, [pc, #28]	; (2df8 <clear_pending+0x32>)
    2ddc:	4413      	add	r3, r2
    2dde:	687a      	ldr	r2, [r7, #4]
    2de0:	f002 021f 	and.w	r2, r2, #31
    2de4:	2101      	movs	r1, #1
    2de6:	fa01 f202 	lsl.w	r2, r1, r2
    2dea:	601a      	str	r2, [r3, #0]
    2dec:	e000      	b.n	2df0 <clear_pending+0x2a>
    2dee:	bf00      	nop
    2df0:	370c      	adds	r7, #12
    2df2:	46bd      	mov	sp, r7
    2df4:	bc80      	pop	{r7}
    2df6:	4770      	bx	lr
    2df8:	e000e280 	.word	0xe000e280

00002dfc <set_int_priority>:
    2dfc:	b480      	push	{r7}
    2dfe:	b083      	sub	sp, #12
    2e00:	af00      	add	r7, sp, #0
    2e02:	6078      	str	r0, [r7, #4]
    2e04:	6039      	str	r1, [r7, #0]
    2e06:	687b      	ldr	r3, [r7, #4]
    2e08:	2b00      	cmp	r3, #0
    2e0a:	db0d      	blt.n	2e28 <set_int_priority+0x2c>
    2e0c:	687b      	ldr	r3, [r7, #4]
    2e0e:	2b3b      	cmp	r3, #59	; 0x3b
    2e10:	dc0a      	bgt.n	2e28 <set_int_priority+0x2c>
    2e12:	687b      	ldr	r3, [r7, #4]
    2e14:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2e18:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    2e1c:	683a      	ldr	r2, [r7, #0]
    2e1e:	b2d2      	uxtb	r2, r2
    2e20:	0112      	lsls	r2, r2, #4
    2e22:	b2d2      	uxtb	r2, r2
    2e24:	701a      	strb	r2, [r3, #0]
    2e26:	e012      	b.n	2e4e <set_int_priority+0x52>
    2e28:	687b      	ldr	r3, [r7, #4]
    2e2a:	2b00      	cmp	r3, #0
    2e2c:	da0f      	bge.n	2e4e <set_int_priority+0x52>
    2e2e:	687b      	ldr	r3, [r7, #4]
    2e30:	f113 0f0f 	cmn.w	r3, #15
    2e34:	db0b      	blt.n	2e4e <set_int_priority+0x52>
    2e36:	687a      	ldr	r2, [r7, #4]
    2e38:	f06f 0303 	mvn.w	r3, #3
    2e3c:	1a9b      	subs	r3, r3, r2
    2e3e:	461a      	mov	r2, r3
    2e40:	4b05      	ldr	r3, [pc, #20]	; (2e58 <set_int_priority+0x5c>)
    2e42:	4413      	add	r3, r2
    2e44:	683a      	ldr	r2, [r7, #0]
    2e46:	b2d2      	uxtb	r2, r2
    2e48:	0112      	lsls	r2, r2, #4
    2e4a:	b2d2      	uxtb	r2, r2
    2e4c:	701a      	strb	r2, [r3, #0]
    2e4e:	bf00      	nop
    2e50:	370c      	adds	r7, #12
    2e52:	46bd      	mov	sp, r7
    2e54:	bc80      	pop	{r7}
    2e56:	4770      	bx	lr
    2e58:	e000ed18 	.word	0xe000ed18

00002e5c <leap_year>:
    2e5c:	b480      	push	{r7}
    2e5e:	b083      	sub	sp, #12
    2e60:	af00      	add	r7, sp, #0
    2e62:	6078      	str	r0, [r7, #4]
    2e64:	687b      	ldr	r3, [r7, #4]
    2e66:	f003 0303 	and.w	r3, r3, #3
    2e6a:	2b00      	cmp	r3, #0
    2e6c:	d11a      	bne.n	2ea4 <leap_year+0x48>
    2e6e:	687a      	ldr	r2, [r7, #4]
    2e70:	4b0f      	ldr	r3, [pc, #60]	; (2eb0 <leap_year+0x54>)
    2e72:	fba3 1302 	umull	r1, r3, r3, r2
    2e76:	095b      	lsrs	r3, r3, #5
    2e78:	2164      	movs	r1, #100	; 0x64
    2e7a:	fb01 f303 	mul.w	r3, r1, r3
    2e7e:	1ad3      	subs	r3, r2, r3
    2e80:	2b00      	cmp	r3, #0
    2e82:	d10d      	bne.n	2ea0 <leap_year+0x44>
    2e84:	687a      	ldr	r2, [r7, #4]
    2e86:	4b0a      	ldr	r3, [pc, #40]	; (2eb0 <leap_year+0x54>)
    2e88:	fba3 1302 	umull	r1, r3, r3, r2
    2e8c:	09db      	lsrs	r3, r3, #7
    2e8e:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2e92:	fb01 f303 	mul.w	r3, r1, r3
    2e96:	1ad3      	subs	r3, r2, r3
    2e98:	2b00      	cmp	r3, #0
    2e9a:	d001      	beq.n	2ea0 <leap_year+0x44>
    2e9c:	2300      	movs	r3, #0
    2e9e:	e002      	b.n	2ea6 <leap_year+0x4a>
    2ea0:	2301      	movs	r3, #1
    2ea2:	e000      	b.n	2ea6 <leap_year+0x4a>
    2ea4:	2300      	movs	r3, #0
    2ea6:	4618      	mov	r0, r3
    2ea8:	370c      	adds	r7, #12
    2eaa:	46bd      	mov	sp, r7
    2eac:	bc80      	pop	{r7}
    2eae:	4770      	bx	lr
    2eb0:	51eb851f 	.word	0x51eb851f

00002eb4 <sec_per_month>:
    2eb4:	b480      	push	{r7}
    2eb6:	b085      	sub	sp, #20
    2eb8:	af00      	add	r7, sp, #0
    2eba:	6078      	str	r0, [r7, #4]
    2ebc:	6039      	str	r1, [r7, #0]
    2ebe:	4a0d      	ldr	r2, [pc, #52]	; (2ef4 <sec_per_month+0x40>)
    2ec0:	683b      	ldr	r3, [r7, #0]
    2ec2:	4413      	add	r3, r2
    2ec4:	781b      	ldrb	r3, [r3, #0]
    2ec6:	461a      	mov	r2, r3
    2ec8:	4b0b      	ldr	r3, [pc, #44]	; (2ef8 <sec_per_month+0x44>)
    2eca:	fb03 f302 	mul.w	r3, r3, r2
    2ece:	60fb      	str	r3, [r7, #12]
    2ed0:	683b      	ldr	r3, [r7, #0]
    2ed2:	2b02      	cmp	r3, #2
    2ed4:	d108      	bne.n	2ee8 <sec_per_month+0x34>
    2ed6:	687b      	ldr	r3, [r7, #4]
    2ed8:	2b00      	cmp	r3, #0
    2eda:	d005      	beq.n	2ee8 <sec_per_month+0x34>
    2edc:	68fb      	ldr	r3, [r7, #12]
    2ede:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2ee2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    2ee6:	60fb      	str	r3, [r7, #12]
    2ee8:	68fb      	ldr	r3, [r7, #12]
    2eea:	4618      	mov	r0, r3
    2eec:	3714      	adds	r7, #20
    2eee:	46bd      	mov	sp, r7
    2ef0:	bc80      	pop	{r7}
    2ef2:	4770      	bx	lr
    2ef4:	0000535c 	.word	0x0000535c
    2ef8:	00015180 	.word	0x00015180

00002efc <get_date_time>:
    2efc:	b580      	push	{r7, lr}
    2efe:	b086      	sub	sp, #24
    2f00:	af00      	add	r7, sp, #0
    2f02:	6078      	str	r0, [r7, #4]
    2f04:	4b66      	ldr	r3, [pc, #408]	; (30a0 <get_date_time+0x1a4>)
    2f06:	699b      	ldr	r3, [r3, #24]
    2f08:	041a      	lsls	r2, r3, #16
    2f0a:	4b65      	ldr	r3, [pc, #404]	; (30a0 <get_date_time+0x1a4>)
    2f0c:	69db      	ldr	r3, [r3, #28]
    2f0e:	4413      	add	r3, r2
    2f10:	617b      	str	r3, [r7, #20]
    2f12:	687b      	ldr	r3, [r7, #4]
    2f14:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2f18:	811a      	strh	r2, [r3, #8]
    2f1a:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2f1e:	f7ff ff9d 	bl	2e5c <leap_year>
    2f22:	6138      	str	r0, [r7, #16]
    2f24:	e019      	b.n	2f5a <get_date_time+0x5e>
    2f26:	693b      	ldr	r3, [r7, #16]
    2f28:	2b00      	cmp	r3, #0
    2f2a:	d006      	beq.n	2f3a <get_date_time+0x3e>
    2f2c:	697b      	ldr	r3, [r7, #20]
    2f2e:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    2f32:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2f36:	617b      	str	r3, [r7, #20]
    2f38:	e003      	b.n	2f42 <get_date_time+0x46>
    2f3a:	697a      	ldr	r2, [r7, #20]
    2f3c:	4b59      	ldr	r3, [pc, #356]	; (30a4 <get_date_time+0x1a8>)
    2f3e:	4413      	add	r3, r2
    2f40:	617b      	str	r3, [r7, #20]
    2f42:	687b      	ldr	r3, [r7, #4]
    2f44:	891b      	ldrh	r3, [r3, #8]
    2f46:	3301      	adds	r3, #1
    2f48:	b29a      	uxth	r2, r3
    2f4a:	687b      	ldr	r3, [r7, #4]
    2f4c:	811a      	strh	r2, [r3, #8]
    2f4e:	687b      	ldr	r3, [r7, #4]
    2f50:	891b      	ldrh	r3, [r3, #8]
    2f52:	4618      	mov	r0, r3
    2f54:	f7ff ff82 	bl	2e5c <leap_year>
    2f58:	6138      	str	r0, [r7, #16]
    2f5a:	693b      	ldr	r3, [r7, #16]
    2f5c:	2b00      	cmp	r3, #0
    2f5e:	d103      	bne.n	2f68 <get_date_time+0x6c>
    2f60:	697b      	ldr	r3, [r7, #20]
    2f62:	4a51      	ldr	r2, [pc, #324]	; (30a8 <get_date_time+0x1ac>)
    2f64:	4293      	cmp	r3, r2
    2f66:	d8de      	bhi.n	2f26 <get_date_time+0x2a>
    2f68:	693b      	ldr	r3, [r7, #16]
    2f6a:	2b00      	cmp	r3, #0
    2f6c:	d003      	beq.n	2f76 <get_date_time+0x7a>
    2f6e:	697b      	ldr	r3, [r7, #20]
    2f70:	4a4e      	ldr	r2, [pc, #312]	; (30ac <get_date_time+0x1b0>)
    2f72:	4293      	cmp	r3, r2
    2f74:	d8d7      	bhi.n	2f26 <get_date_time+0x2a>
    2f76:	687a      	ldr	r2, [r7, #4]
    2f78:	8853      	ldrh	r3, [r2, #2]
    2f7a:	2101      	movs	r1, #1
    2f7c:	f361 1389 	bfi	r3, r1, #6, #4
    2f80:	8053      	strh	r3, [r2, #2]
    2f82:	687a      	ldr	r2, [r7, #4]
    2f84:	7893      	ldrb	r3, [r2, #2]
    2f86:	2101      	movs	r1, #1
    2f88:	f361 0345 	bfi	r3, r1, #1, #5
    2f8c:	7093      	strb	r3, [r2, #2]
    2f8e:	687a      	ldr	r2, [r7, #4]
    2f90:	6813      	ldr	r3, [r2, #0]
    2f92:	f36f 3310 	bfc	r3, #12, #5
    2f96:	6013      	str	r3, [r2, #0]
    2f98:	687a      	ldr	r2, [r7, #4]
    2f9a:	8813      	ldrh	r3, [r2, #0]
    2f9c:	f36f 138b 	bfc	r3, #6, #6
    2fa0:	8013      	strh	r3, [r2, #0]
    2fa2:	687a      	ldr	r2, [r7, #4]
    2fa4:	7813      	ldrb	r3, [r2, #0]
    2fa6:	f36f 0305 	bfc	r3, #0, #6
    2faa:	7013      	strb	r3, [r2, #0]
    2fac:	e011      	b.n	2fd2 <get_date_time+0xd6>
    2fae:	687b      	ldr	r3, [r7, #4]
    2fb0:	885b      	ldrh	r3, [r3, #2]
    2fb2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2fb6:	b2db      	uxtb	r3, r3
    2fb8:	3301      	adds	r3, #1
    2fba:	f003 030f 	and.w	r3, r3, #15
    2fbe:	b2d9      	uxtb	r1, r3
    2fc0:	687a      	ldr	r2, [r7, #4]
    2fc2:	8853      	ldrh	r3, [r2, #2]
    2fc4:	f361 1389 	bfi	r3, r1, #6, #4
    2fc8:	8053      	strh	r3, [r2, #2]
    2fca:	697a      	ldr	r2, [r7, #20]
    2fcc:	68fb      	ldr	r3, [r7, #12]
    2fce:	1ad3      	subs	r3, r2, r3
    2fd0:	617b      	str	r3, [r7, #20]
    2fd2:	687b      	ldr	r3, [r7, #4]
    2fd4:	885b      	ldrh	r3, [r3, #2]
    2fd6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2fda:	b2db      	uxtb	r3, r3
    2fdc:	4619      	mov	r1, r3
    2fde:	6938      	ldr	r0, [r7, #16]
    2fe0:	f7ff ff68 	bl	2eb4 <sec_per_month>
    2fe4:	60f8      	str	r0, [r7, #12]
    2fe6:	68fa      	ldr	r2, [r7, #12]
    2fe8:	697b      	ldr	r3, [r7, #20]
    2fea:	429a      	cmp	r2, r3
    2fec:	d3df      	bcc.n	2fae <get_date_time+0xb2>
    2fee:	697b      	ldr	r3, [r7, #20]
    2ff0:	4a2f      	ldr	r2, [pc, #188]	; (30b0 <get_date_time+0x1b4>)
    2ff2:	fba2 2303 	umull	r2, r3, r2, r3
    2ff6:	0c1b      	lsrs	r3, r3, #16
    2ff8:	b2db      	uxtb	r3, r3
    2ffa:	3301      	adds	r3, #1
    2ffc:	b2db      	uxtb	r3, r3
    2ffe:	f003 031f 	and.w	r3, r3, #31
    3002:	b2d9      	uxtb	r1, r3
    3004:	687a      	ldr	r2, [r7, #4]
    3006:	7893      	ldrb	r3, [r2, #2]
    3008:	f361 0345 	bfi	r3, r1, #1, #5
    300c:	7093      	strb	r3, [r2, #2]
    300e:	697b      	ldr	r3, [r7, #20]
    3010:	4a27      	ldr	r2, [pc, #156]	; (30b0 <get_date_time+0x1b4>)
    3012:	fba2 1203 	umull	r1, r2, r2, r3
    3016:	0c12      	lsrs	r2, r2, #16
    3018:	4926      	ldr	r1, [pc, #152]	; (30b4 <get_date_time+0x1b8>)
    301a:	fb01 f202 	mul.w	r2, r1, r2
    301e:	1a9b      	subs	r3, r3, r2
    3020:	617b      	str	r3, [r7, #20]
    3022:	697b      	ldr	r3, [r7, #20]
    3024:	4a24      	ldr	r2, [pc, #144]	; (30b8 <get_date_time+0x1bc>)
    3026:	fba2 2303 	umull	r2, r3, r2, r3
    302a:	0adb      	lsrs	r3, r3, #11
    302c:	b2db      	uxtb	r3, r3
    302e:	f003 031f 	and.w	r3, r3, #31
    3032:	b2d9      	uxtb	r1, r3
    3034:	687a      	ldr	r2, [r7, #4]
    3036:	6813      	ldr	r3, [r2, #0]
    3038:	f361 3310 	bfi	r3, r1, #12, #5
    303c:	6013      	str	r3, [r2, #0]
    303e:	697b      	ldr	r3, [r7, #20]
    3040:	4a1d      	ldr	r2, [pc, #116]	; (30b8 <get_date_time+0x1bc>)
    3042:	fba2 1203 	umull	r1, r2, r2, r3
    3046:	0ad2      	lsrs	r2, r2, #11
    3048:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    304c:	fb01 f202 	mul.w	r2, r1, r2
    3050:	1a9b      	subs	r3, r3, r2
    3052:	617b      	str	r3, [r7, #20]
    3054:	697b      	ldr	r3, [r7, #20]
    3056:	4a19      	ldr	r2, [pc, #100]	; (30bc <get_date_time+0x1c0>)
    3058:	fba2 2303 	umull	r2, r3, r2, r3
    305c:	095b      	lsrs	r3, r3, #5
    305e:	b2db      	uxtb	r3, r3
    3060:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3064:	b2d9      	uxtb	r1, r3
    3066:	687a      	ldr	r2, [r7, #4]
    3068:	8813      	ldrh	r3, [r2, #0]
    306a:	f361 138b 	bfi	r3, r1, #6, #6
    306e:	8013      	strh	r3, [r2, #0]
    3070:	6979      	ldr	r1, [r7, #20]
    3072:	4b12      	ldr	r3, [pc, #72]	; (30bc <get_date_time+0x1c0>)
    3074:	fba3 2301 	umull	r2, r3, r3, r1
    3078:	095a      	lsrs	r2, r3, #5
    307a:	4613      	mov	r3, r2
    307c:	011b      	lsls	r3, r3, #4
    307e:	1a9b      	subs	r3, r3, r2
    3080:	009b      	lsls	r3, r3, #2
    3082:	1aca      	subs	r2, r1, r3
    3084:	b2d3      	uxtb	r3, r2
    3086:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    308a:	b2d9      	uxtb	r1, r3
    308c:	687a      	ldr	r2, [r7, #4]
    308e:	7813      	ldrb	r3, [r2, #0]
    3090:	f361 0305 	bfi	r3, r1, #0, #6
    3094:	7013      	strb	r3, [r2, #0]
    3096:	bf00      	nop
    3098:	3718      	adds	r7, #24
    309a:	46bd      	mov	sp, r7
    309c:	bd80      	pop	{r7, pc}
    309e:	bf00      	nop
    30a0:	40002800 	.word	0x40002800
    30a4:	fe1ecc80 	.word	0xfe1ecc80
    30a8:	01e1337f 	.word	0x01e1337f
    30ac:	01e284ff 	.word	0x01e284ff
    30b0:	c22e4507 	.word	0xc22e4507
    30b4:	00015180 	.word	0x00015180
    30b8:	91a2b3c5 	.word	0x91a2b3c5
    30bc:	88888889 	.word	0x88888889

000030c0 <set_date_time>:
    30c0:	b580      	push	{r7, lr}
    30c2:	b086      	sub	sp, #24
    30c4:	af00      	add	r7, sp, #0
    30c6:	6078      	str	r0, [r7, #4]
    30c8:	2300      	movs	r3, #0
    30ca:	613b      	str	r3, [r7, #16]
    30cc:	687b      	ldr	r3, [r7, #4]
    30ce:	891b      	ldrh	r3, [r3, #8]
    30d0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    30d4:	4293      	cmp	r3, r2
    30d6:	d803      	bhi.n	30e0 <set_date_time+0x20>
    30d8:	687b      	ldr	r3, [r7, #4]
    30da:	f240 72b2 	movw	r2, #1970	; 0x7b2
    30de:	811a      	strh	r2, [r3, #8]
    30e0:	687b      	ldr	r3, [r7, #4]
    30e2:	891b      	ldrh	r3, [r3, #8]
    30e4:	f640 023a 	movw	r2, #2106	; 0x83a
    30e8:	4293      	cmp	r3, r2
    30ea:	d903      	bls.n	30f4 <set_date_time+0x34>
    30ec:	687b      	ldr	r3, [r7, #4]
    30ee:	f640 023a 	movw	r2, #2106	; 0x83a
    30f2:	811a      	strh	r2, [r3, #8]
    30f4:	687b      	ldr	r3, [r7, #4]
    30f6:	891b      	ldrh	r3, [r3, #8]
    30f8:	4618      	mov	r0, r3
    30fa:	f7ff feaf 	bl	2e5c <leap_year>
    30fe:	60f8      	str	r0, [r7, #12]
    3100:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3104:	617b      	str	r3, [r7, #20]
    3106:	e013      	b.n	3130 <set_date_time+0x70>
    3108:	6978      	ldr	r0, [r7, #20]
    310a:	f7ff fea7 	bl	2e5c <leap_year>
    310e:	4603      	mov	r3, r0
    3110:	2b00      	cmp	r3, #0
    3112:	d006      	beq.n	3122 <set_date_time+0x62>
    3114:	693b      	ldr	r3, [r7, #16]
    3116:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    311a:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    311e:	613b      	str	r3, [r7, #16]
    3120:	e003      	b.n	312a <set_date_time+0x6a>
    3122:	693a      	ldr	r2, [r7, #16]
    3124:	4b42      	ldr	r3, [pc, #264]	; (3230 <set_date_time+0x170>)
    3126:	4413      	add	r3, r2
    3128:	613b      	str	r3, [r7, #16]
    312a:	697b      	ldr	r3, [r7, #20]
    312c:	3301      	adds	r3, #1
    312e:	617b      	str	r3, [r7, #20]
    3130:	687b      	ldr	r3, [r7, #4]
    3132:	891b      	ldrh	r3, [r3, #8]
    3134:	461a      	mov	r2, r3
    3136:	697b      	ldr	r3, [r7, #20]
    3138:	429a      	cmp	r2, r3
    313a:	d8e5      	bhi.n	3108 <set_date_time+0x48>
    313c:	2301      	movs	r3, #1
    313e:	617b      	str	r3, [r7, #20]
    3140:	e00a      	b.n	3158 <set_date_time+0x98>
    3142:	6979      	ldr	r1, [r7, #20]
    3144:	68f8      	ldr	r0, [r7, #12]
    3146:	f7ff feb5 	bl	2eb4 <sec_per_month>
    314a:	4602      	mov	r2, r0
    314c:	693b      	ldr	r3, [r7, #16]
    314e:	4413      	add	r3, r2
    3150:	613b      	str	r3, [r7, #16]
    3152:	697b      	ldr	r3, [r7, #20]
    3154:	3301      	adds	r3, #1
    3156:	617b      	str	r3, [r7, #20]
    3158:	687b      	ldr	r3, [r7, #4]
    315a:	885b      	ldrh	r3, [r3, #2]
    315c:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3160:	b2db      	uxtb	r3, r3
    3162:	461a      	mov	r2, r3
    3164:	697b      	ldr	r3, [r7, #20]
    3166:	429a      	cmp	r2, r3
    3168:	d8eb      	bhi.n	3142 <set_date_time+0x82>
    316a:	687b      	ldr	r3, [r7, #4]
    316c:	789b      	ldrb	r3, [r3, #2]
    316e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3172:	b2db      	uxtb	r3, r3
    3174:	3b01      	subs	r3, #1
    3176:	4a2f      	ldr	r2, [pc, #188]	; (3234 <set_date_time+0x174>)
    3178:	fb02 f303 	mul.w	r3, r2, r3
    317c:	461a      	mov	r2, r3
    317e:	693b      	ldr	r3, [r7, #16]
    3180:	4413      	add	r3, r2
    3182:	613b      	str	r3, [r7, #16]
    3184:	687b      	ldr	r3, [r7, #4]
    3186:	681b      	ldr	r3, [r3, #0]
    3188:	f3c3 3304 	ubfx	r3, r3, #12, #5
    318c:	b2db      	uxtb	r3, r3
    318e:	461a      	mov	r2, r3
    3190:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    3194:	fb03 f302 	mul.w	r3, r3, r2
    3198:	461a      	mov	r2, r3
    319a:	693b      	ldr	r3, [r7, #16]
    319c:	4413      	add	r3, r2
    319e:	613b      	str	r3, [r7, #16]
    31a0:	687b      	ldr	r3, [r7, #4]
    31a2:	881b      	ldrh	r3, [r3, #0]
    31a4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    31a8:	b2db      	uxtb	r3, r3
    31aa:	461a      	mov	r2, r3
    31ac:	4613      	mov	r3, r2
    31ae:	011b      	lsls	r3, r3, #4
    31b0:	1a9b      	subs	r3, r3, r2
    31b2:	009b      	lsls	r3, r3, #2
    31b4:	461a      	mov	r2, r3
    31b6:	693b      	ldr	r3, [r7, #16]
    31b8:	4413      	add	r3, r2
    31ba:	613b      	str	r3, [r7, #16]
    31bc:	687b      	ldr	r3, [r7, #4]
    31be:	781b      	ldrb	r3, [r3, #0]
    31c0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    31c4:	b2db      	uxtb	r3, r3
    31c6:	461a      	mov	r2, r3
    31c8:	693b      	ldr	r3, [r7, #16]
    31ca:	4413      	add	r3, r2
    31cc:	613b      	str	r3, [r7, #16]
    31ce:	4a1a      	ldr	r2, [pc, #104]	; (3238 <set_date_time+0x178>)
    31d0:	4b19      	ldr	r3, [pc, #100]	; (3238 <set_date_time+0x178>)
    31d2:	69db      	ldr	r3, [r3, #28]
    31d4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    31d8:	61d3      	str	r3, [r2, #28]
    31da:	4a18      	ldr	r2, [pc, #96]	; (323c <set_date_time+0x17c>)
    31dc:	4b17      	ldr	r3, [pc, #92]	; (323c <set_date_time+0x17c>)
    31de:	681b      	ldr	r3, [r3, #0]
    31e0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    31e4:	6013      	str	r3, [r2, #0]
    31e6:	4a16      	ldr	r2, [pc, #88]	; (3240 <set_date_time+0x180>)
    31e8:	4b15      	ldr	r3, [pc, #84]	; (3240 <set_date_time+0x180>)
    31ea:	685b      	ldr	r3, [r3, #4]
    31ec:	f043 0310 	orr.w	r3, r3, #16
    31f0:	6053      	str	r3, [r2, #4]
    31f2:	4a13      	ldr	r2, [pc, #76]	; (3240 <set_date_time+0x180>)
    31f4:	693b      	ldr	r3, [r7, #16]
    31f6:	0c1b      	lsrs	r3, r3, #16
    31f8:	6193      	str	r3, [r2, #24]
    31fa:	4a11      	ldr	r2, [pc, #68]	; (3240 <set_date_time+0x180>)
    31fc:	693b      	ldr	r3, [r7, #16]
    31fe:	b29b      	uxth	r3, r3
    3200:	61d3      	str	r3, [r2, #28]
    3202:	4a0f      	ldr	r2, [pc, #60]	; (3240 <set_date_time+0x180>)
    3204:	4b0e      	ldr	r3, [pc, #56]	; (3240 <set_date_time+0x180>)
    3206:	685b      	ldr	r3, [r3, #4]
    3208:	f023 0310 	bic.w	r3, r3, #16
    320c:	6053      	str	r3, [r2, #4]
    320e:	bf00      	nop
    3210:	4b0b      	ldr	r3, [pc, #44]	; (3240 <set_date_time+0x180>)
    3212:	685b      	ldr	r3, [r3, #4]
    3214:	f003 0320 	and.w	r3, r3, #32
    3218:	2b00      	cmp	r3, #0
    321a:	d0f9      	beq.n	3210 <set_date_time+0x150>
    321c:	4a07      	ldr	r2, [pc, #28]	; (323c <set_date_time+0x17c>)
    321e:	4b07      	ldr	r3, [pc, #28]	; (323c <set_date_time+0x17c>)
    3220:	681b      	ldr	r3, [r3, #0]
    3222:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3226:	6013      	str	r3, [r2, #0]
    3228:	bf00      	nop
    322a:	3718      	adds	r7, #24
    322c:	46bd      	mov	sp, r7
    322e:	bd80      	pop	{r7, pc}
    3230:	01e13380 	.word	0x01e13380
    3234:	00015180 	.word	0x00015180
    3238:	40021000 	.word	0x40021000
    323c:	40007000 	.word	0x40007000
    3240:	40002800 	.word	0x40002800

00003244 <rtc_init>:
    3244:	b580      	push	{r7, lr}
    3246:	b082      	sub	sp, #8
    3248:	af00      	add	r7, sp, #0
    324a:	6078      	str	r0, [r7, #4]
    324c:	6039      	str	r1, [r7, #0]
    324e:	4b4a      	ldr	r3, [pc, #296]	; (3378 <rtc_init+0x134>)
    3250:	685b      	ldr	r3, [r3, #4]
    3252:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3256:	4293      	cmp	r3, r2
    3258:	f000 8082 	beq.w	3360 <rtc_init+0x11c>
    325c:	4a47      	ldr	r2, [pc, #284]	; (337c <rtc_init+0x138>)
    325e:	4b47      	ldr	r3, [pc, #284]	; (337c <rtc_init+0x138>)
    3260:	69db      	ldr	r3, [r3, #28]
    3262:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3266:	61d3      	str	r3, [r2, #28]
    3268:	4a45      	ldr	r2, [pc, #276]	; (3380 <rtc_init+0x13c>)
    326a:	4b45      	ldr	r3, [pc, #276]	; (3380 <rtc_init+0x13c>)
    326c:	681b      	ldr	r3, [r3, #0]
    326e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3272:	6013      	str	r3, [r2, #0]
    3274:	4a41      	ldr	r2, [pc, #260]	; (337c <rtc_init+0x138>)
    3276:	4b41      	ldr	r3, [pc, #260]	; (337c <rtc_init+0x138>)
    3278:	6a1b      	ldr	r3, [r3, #32]
    327a:	f043 0301 	orr.w	r3, r3, #1
    327e:	6213      	str	r3, [r2, #32]
    3280:	bf00      	nop
    3282:	4b3e      	ldr	r3, [pc, #248]	; (337c <rtc_init+0x138>)
    3284:	6a1b      	ldr	r3, [r3, #32]
    3286:	f003 0302 	and.w	r3, r3, #2
    328a:	2b00      	cmp	r3, #0
    328c:	d0f9      	beq.n	3282 <rtc_init+0x3e>
    328e:	4a3b      	ldr	r2, [pc, #236]	; (337c <rtc_init+0x138>)
    3290:	4b3a      	ldr	r3, [pc, #232]	; (337c <rtc_init+0x138>)
    3292:	6a1b      	ldr	r3, [r3, #32]
    3294:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    3298:	6213      	str	r3, [r2, #32]
    329a:	bf00      	nop
    329c:	4b39      	ldr	r3, [pc, #228]	; (3384 <rtc_init+0x140>)
    329e:	685b      	ldr	r3, [r3, #4]
    32a0:	f003 0308 	and.w	r3, r3, #8
    32a4:	2b00      	cmp	r3, #0
    32a6:	d0f9      	beq.n	329c <rtc_init+0x58>
    32a8:	bf00      	nop
    32aa:	4b36      	ldr	r3, [pc, #216]	; (3384 <rtc_init+0x140>)
    32ac:	685b      	ldr	r3, [r3, #4]
    32ae:	f003 0320 	and.w	r3, r3, #32
    32b2:	2b00      	cmp	r3, #0
    32b4:	d0f9      	beq.n	32aa <rtc_init+0x66>
    32b6:	4a33      	ldr	r2, [pc, #204]	; (3384 <rtc_init+0x140>)
    32b8:	4b32      	ldr	r3, [pc, #200]	; (3384 <rtc_init+0x140>)
    32ba:	685b      	ldr	r3, [r3, #4]
    32bc:	f043 0310 	orr.w	r3, r3, #16
    32c0:	6053      	str	r3, [r2, #4]
    32c2:	bf00      	nop
    32c4:	4b2f      	ldr	r3, [pc, #188]	; (3384 <rtc_init+0x140>)
    32c6:	685b      	ldr	r3, [r3, #4]
    32c8:	f003 0320 	and.w	r3, r3, #32
    32cc:	2b00      	cmp	r3, #0
    32ce:	d0f9      	beq.n	32c4 <rtc_init+0x80>
    32d0:	492c      	ldr	r1, [pc, #176]	; (3384 <rtc_init+0x140>)
    32d2:	4b2c      	ldr	r3, [pc, #176]	; (3384 <rtc_init+0x140>)
    32d4:	681a      	ldr	r2, [r3, #0]
    32d6:	683b      	ldr	r3, [r7, #0]
    32d8:	4313      	orrs	r3, r2
    32da:	600b      	str	r3, [r1, #0]
    32dc:	bf00      	nop
    32de:	4b29      	ldr	r3, [pc, #164]	; (3384 <rtc_init+0x140>)
    32e0:	685b      	ldr	r3, [r3, #4]
    32e2:	f003 0320 	and.w	r3, r3, #32
    32e6:	2b00      	cmp	r3, #0
    32e8:	d0f9      	beq.n	32de <rtc_init+0x9a>
    32ea:	4a26      	ldr	r2, [pc, #152]	; (3384 <rtc_init+0x140>)
    32ec:	687b      	ldr	r3, [r7, #4]
    32ee:	03db      	lsls	r3, r3, #15
    32f0:	4925      	ldr	r1, [pc, #148]	; (3388 <rtc_init+0x144>)
    32f2:	fba1 1303 	umull	r1, r3, r1, r3
    32f6:	099b      	lsrs	r3, r3, #6
    32f8:	3b01      	subs	r3, #1
    32fa:	b29b      	uxth	r3, r3
    32fc:	60d3      	str	r3, [r2, #12]
    32fe:	bf00      	nop
    3300:	4b20      	ldr	r3, [pc, #128]	; (3384 <rtc_init+0x140>)
    3302:	685b      	ldr	r3, [r3, #4]
    3304:	f003 0320 	and.w	r3, r3, #32
    3308:	2b00      	cmp	r3, #0
    330a:	d0f9      	beq.n	3300 <rtc_init+0xbc>
    330c:	4a1d      	ldr	r2, [pc, #116]	; (3384 <rtc_init+0x140>)
    330e:	687b      	ldr	r3, [r7, #4]
    3310:	03db      	lsls	r3, r3, #15
    3312:	491d      	ldr	r1, [pc, #116]	; (3388 <rtc_init+0x144>)
    3314:	fba1 1303 	umull	r1, r3, r1, r3
    3318:	099b      	lsrs	r3, r3, #6
    331a:	3b01      	subs	r3, #1
    331c:	0c1b      	lsrs	r3, r3, #16
    331e:	f003 030f 	and.w	r3, r3, #15
    3322:	6093      	str	r3, [r2, #8]
    3324:	bf00      	nop
    3326:	4b17      	ldr	r3, [pc, #92]	; (3384 <rtc_init+0x140>)
    3328:	685b      	ldr	r3, [r3, #4]
    332a:	f003 0320 	and.w	r3, r3, #32
    332e:	2b00      	cmp	r3, #0
    3330:	d0f9      	beq.n	3326 <rtc_init+0xe2>
    3332:	4b11      	ldr	r3, [pc, #68]	; (3378 <rtc_init+0x134>)
    3334:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3338:	605a      	str	r2, [r3, #4]
    333a:	4a12      	ldr	r2, [pc, #72]	; (3384 <rtc_init+0x140>)
    333c:	4b11      	ldr	r3, [pc, #68]	; (3384 <rtc_init+0x140>)
    333e:	685b      	ldr	r3, [r3, #4]
    3340:	f023 0310 	bic.w	r3, r3, #16
    3344:	6053      	str	r3, [r2, #4]
    3346:	bf00      	nop
    3348:	4b0e      	ldr	r3, [pc, #56]	; (3384 <rtc_init+0x140>)
    334a:	685b      	ldr	r3, [r3, #4]
    334c:	f003 0320 	and.w	r3, r3, #32
    3350:	2b00      	cmp	r3, #0
    3352:	d0f9      	beq.n	3348 <rtc_init+0x104>
    3354:	4a0a      	ldr	r2, [pc, #40]	; (3380 <rtc_init+0x13c>)
    3356:	4b0a      	ldr	r3, [pc, #40]	; (3380 <rtc_init+0x13c>)
    3358:	681b      	ldr	r3, [r3, #0]
    335a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    335e:	6013      	str	r3, [r2, #0]
    3360:	210f      	movs	r1, #15
    3362:	2003      	movs	r0, #3
    3364:	f7ff fd4a 	bl	2dfc <set_int_priority>
    3368:	2003      	movs	r0, #3
    336a:	f7ff fc8d 	bl	2c88 <enable_interrupt>
    336e:	bf00      	nop
    3370:	3708      	adds	r7, #8
    3372:	46bd      	mov	sp, r7
    3374:	bd80      	pop	{r7, pc}
    3376:	bf00      	nop
    3378:	40006c00 	.word	0x40006c00
    337c:	40021000 	.word	0x40021000
    3380:	40007000 	.word	0x40007000
    3384:	40002800 	.word	0x40002800
    3388:	10624dd3 	.word	0x10624dd3

0000338c <reset_backup_domain>:
    338c:	b480      	push	{r7}
    338e:	af00      	add	r7, sp, #0
    3390:	4a0a      	ldr	r2, [pc, #40]	; (33bc <reset_backup_domain+0x30>)
    3392:	4b0a      	ldr	r3, [pc, #40]	; (33bc <reset_backup_domain+0x30>)
    3394:	69db      	ldr	r3, [r3, #28]
    3396:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    339a:	61d3      	str	r3, [r2, #28]
    339c:	4a07      	ldr	r2, [pc, #28]	; (33bc <reset_backup_domain+0x30>)
    339e:	4b07      	ldr	r3, [pc, #28]	; (33bc <reset_backup_domain+0x30>)
    33a0:	6a1b      	ldr	r3, [r3, #32]
    33a2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    33a6:	6213      	str	r3, [r2, #32]
    33a8:	4a04      	ldr	r2, [pc, #16]	; (33bc <reset_backup_domain+0x30>)
    33aa:	4b04      	ldr	r3, [pc, #16]	; (33bc <reset_backup_domain+0x30>)
    33ac:	6a1b      	ldr	r3, [r3, #32]
    33ae:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    33b2:	6213      	str	r3, [r2, #32]
    33b4:	bf00      	nop
    33b6:	46bd      	mov	sp, r7
    33b8:	bc80      	pop	{r7}
    33ba:	4770      	bx	lr
    33bc:	40021000 	.word	0x40021000

000033c0 <rtc_clock_trim>:
    33c0:	b480      	push	{r7}
    33c2:	b083      	sub	sp, #12
    33c4:	af00      	add	r7, sp, #0
    33c6:	6078      	str	r0, [r7, #4]
    33c8:	4a34      	ldr	r2, [pc, #208]	; (349c <rtc_clock_trim+0xdc>)
    33ca:	4b34      	ldr	r3, [pc, #208]	; (349c <rtc_clock_trim+0xdc>)
    33cc:	69db      	ldr	r3, [r3, #28]
    33ce:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    33d2:	61d3      	str	r3, [r2, #28]
    33d4:	bf00      	nop
    33d6:	4b32      	ldr	r3, [pc, #200]	; (34a0 <rtc_clock_trim+0xe0>)
    33d8:	685b      	ldr	r3, [r3, #4]
    33da:	f003 0308 	and.w	r3, r3, #8
    33de:	2b00      	cmp	r3, #0
    33e0:	d0f9      	beq.n	33d6 <rtc_clock_trim+0x16>
    33e2:	4a30      	ldr	r2, [pc, #192]	; (34a4 <rtc_clock_trim+0xe4>)
    33e4:	4b2f      	ldr	r3, [pc, #188]	; (34a4 <rtc_clock_trim+0xe4>)
    33e6:	681b      	ldr	r3, [r3, #0]
    33e8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    33ec:	6013      	str	r3, [r2, #0]
    33ee:	4a2c      	ldr	r2, [pc, #176]	; (34a0 <rtc_clock_trim+0xe0>)
    33f0:	4b2b      	ldr	r3, [pc, #172]	; (34a0 <rtc_clock_trim+0xe0>)
    33f2:	685b      	ldr	r3, [r3, #4]
    33f4:	f043 0310 	orr.w	r3, r3, #16
    33f8:	6053      	str	r3, [r2, #4]
    33fa:	4a2b      	ldr	r2, [pc, #172]	; (34a8 <rtc_clock_trim+0xe8>)
    33fc:	4b2a      	ldr	r3, [pc, #168]	; (34a8 <rtc_clock_trim+0xe8>)
    33fe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3400:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3404:	62d3      	str	r3, [r2, #44]	; 0x2c
    3406:	687b      	ldr	r3, [r7, #4]
    3408:	2b00      	cmp	r3, #0
    340a:	d10a      	bne.n	3422 <rtc_clock_trim+0x62>
    340c:	4b26      	ldr	r3, [pc, #152]	; (34a8 <rtc_clock_trim+0xe8>)
    340e:	2200      	movs	r2, #0
    3410:	62da      	str	r2, [r3, #44]	; 0x2c
    3412:	4b23      	ldr	r3, [pc, #140]	; (34a0 <rtc_clock_trim+0xe0>)
    3414:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3418:	60da      	str	r2, [r3, #12]
    341a:	4b21      	ldr	r3, [pc, #132]	; (34a0 <rtc_clock_trim+0xe0>)
    341c:	2200      	movs	r2, #0
    341e:	609a      	str	r2, [r3, #8]
    3420:	e023      	b.n	346a <rtc_clock_trim+0xaa>
    3422:	687b      	ldr	r3, [r7, #4]
    3424:	2b00      	cmp	r3, #0
    3426:	dd0a      	ble.n	343e <rtc_clock_trim+0x7e>
    3428:	687b      	ldr	r3, [r7, #4]
    342a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    342e:	607b      	str	r3, [r7, #4]
    3430:	491d      	ldr	r1, [pc, #116]	; (34a8 <rtc_clock_trim+0xe8>)
    3432:	4b1d      	ldr	r3, [pc, #116]	; (34a8 <rtc_clock_trim+0xe8>)
    3434:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3436:	687b      	ldr	r3, [r7, #4]
    3438:	4313      	orrs	r3, r2
    343a:	62cb      	str	r3, [r1, #44]	; 0x2c
    343c:	e015      	b.n	346a <rtc_clock_trim+0xaa>
    343e:	687b      	ldr	r3, [r7, #4]
    3440:	425b      	negs	r3, r3
    3442:	607b      	str	r3, [r7, #4]
    3444:	687b      	ldr	r3, [r7, #4]
    3446:	2b7f      	cmp	r3, #127	; 0x7f
    3448:	dd01      	ble.n	344e <rtc_clock_trim+0x8e>
    344a:	237f      	movs	r3, #127	; 0x7f
    344c:	607b      	str	r3, [r7, #4]
    344e:	4b16      	ldr	r3, [pc, #88]	; (34a8 <rtc_clock_trim+0xe8>)
    3450:	2200      	movs	r2, #0
    3452:	62da      	str	r2, [r3, #44]	; 0x2c
    3454:	4a12      	ldr	r2, [pc, #72]	; (34a0 <rtc_clock_trim+0xe0>)
    3456:	687b      	ldr	r3, [r7, #4]
    3458:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    345c:	33ff      	adds	r3, #255	; 0xff
    345e:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3462:	60d3      	str	r3, [r2, #12]
    3464:	4b0e      	ldr	r3, [pc, #56]	; (34a0 <rtc_clock_trim+0xe0>)
    3466:	2200      	movs	r2, #0
    3468:	609a      	str	r2, [r3, #8]
    346a:	4a0d      	ldr	r2, [pc, #52]	; (34a0 <rtc_clock_trim+0xe0>)
    346c:	4b0c      	ldr	r3, [pc, #48]	; (34a0 <rtc_clock_trim+0xe0>)
    346e:	685b      	ldr	r3, [r3, #4]
    3470:	f023 0310 	bic.w	r3, r3, #16
    3474:	6053      	str	r3, [r2, #4]
    3476:	bf00      	nop
    3478:	4b09      	ldr	r3, [pc, #36]	; (34a0 <rtc_clock_trim+0xe0>)
    347a:	685b      	ldr	r3, [r3, #4]
    347c:	f003 0320 	and.w	r3, r3, #32
    3480:	2b00      	cmp	r3, #0
    3482:	d0f9      	beq.n	3478 <rtc_clock_trim+0xb8>
    3484:	4a07      	ldr	r2, [pc, #28]	; (34a4 <rtc_clock_trim+0xe4>)
    3486:	4b07      	ldr	r3, [pc, #28]	; (34a4 <rtc_clock_trim+0xe4>)
    3488:	681b      	ldr	r3, [r3, #0]
    348a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    348e:	6013      	str	r3, [r2, #0]
    3490:	bf00      	nop
    3492:	370c      	adds	r7, #12
    3494:	46bd      	mov	sp, r7
    3496:	bc80      	pop	{r7}
    3498:	4770      	bx	lr
    349a:	bf00      	nop
    349c:	40021000 	.word	0x40021000
    34a0:	40002800 	.word	0x40002800
    34a4:	40007000 	.word	0x40007000
    34a8:	40006c00 	.word	0x40006c00

000034ac <rtc_set_alarm>:
    34ac:	b480      	push	{r7}
    34ae:	b083      	sub	sp, #12
    34b0:	af00      	add	r7, sp, #0
    34b2:	6078      	str	r0, [r7, #4]
    34b4:	bf00      	nop
    34b6:	370c      	adds	r7, #12
    34b8:	46bd      	mov	sp, r7
    34ba:	bc80      	pop	{r7}
    34bc:	4770      	bx	lr

000034be <str_to_date>:
    34be:	b580      	push	{r7, lr}
    34c0:	b084      	sub	sp, #16
    34c2:	af00      	add	r7, sp, #0
    34c4:	6078      	str	r0, [r7, #4]
    34c6:	6039      	str	r1, [r7, #0]
    34c8:	2300      	movs	r3, #0
    34ca:	60fb      	str	r3, [r7, #12]
    34cc:	2300      	movs	r3, #0
    34ce:	60bb      	str	r3, [r7, #8]
    34d0:	e00f      	b.n	34f2 <str_to_date+0x34>
    34d2:	68ba      	ldr	r2, [r7, #8]
    34d4:	4613      	mov	r3, r2
    34d6:	009b      	lsls	r3, r3, #2
    34d8:	4413      	add	r3, r2
    34da:	005b      	lsls	r3, r3, #1
    34dc:	4619      	mov	r1, r3
    34de:	68fb      	ldr	r3, [r7, #12]
    34e0:	1c5a      	adds	r2, r3, #1
    34e2:	60fa      	str	r2, [r7, #12]
    34e4:	461a      	mov	r2, r3
    34e6:	687b      	ldr	r3, [r7, #4]
    34e8:	4413      	add	r3, r2
    34ea:	781b      	ldrb	r3, [r3, #0]
    34ec:	440b      	add	r3, r1
    34ee:	3b30      	subs	r3, #48	; 0x30
    34f0:	60bb      	str	r3, [r7, #8]
    34f2:	68fb      	ldr	r3, [r7, #12]
    34f4:	687a      	ldr	r2, [r7, #4]
    34f6:	4413      	add	r3, r2
    34f8:	781b      	ldrb	r3, [r3, #0]
    34fa:	4618      	mov	r0, r3
    34fc:	f7fe f94b 	bl	1796 <digit>
    3500:	4603      	mov	r3, r0
    3502:	2b00      	cmp	r3, #0
    3504:	d1e5      	bne.n	34d2 <str_to_date+0x14>
    3506:	68fb      	ldr	r3, [r7, #12]
    3508:	2b03      	cmp	r3, #3
    350a:	dd05      	ble.n	3518 <str_to_date+0x5a>
    350c:	68fb      	ldr	r3, [r7, #12]
    350e:	687a      	ldr	r2, [r7, #4]
    3510:	4413      	add	r3, r2
    3512:	781b      	ldrb	r3, [r3, #0]
    3514:	2b2f      	cmp	r3, #47	; 0x2f
    3516:	d001      	beq.n	351c <str_to_date+0x5e>
    3518:	2300      	movs	r3, #0
    351a:	e068      	b.n	35ee <str_to_date+0x130>
    351c:	68bb      	ldr	r3, [r7, #8]
    351e:	b29a      	uxth	r2, r3
    3520:	683b      	ldr	r3, [r7, #0]
    3522:	811a      	strh	r2, [r3, #8]
    3524:	68fb      	ldr	r3, [r7, #12]
    3526:	3301      	adds	r3, #1
    3528:	60fb      	str	r3, [r7, #12]
    352a:	2300      	movs	r3, #0
    352c:	60bb      	str	r3, [r7, #8]
    352e:	e00f      	b.n	3550 <str_to_date+0x92>
    3530:	68ba      	ldr	r2, [r7, #8]
    3532:	4613      	mov	r3, r2
    3534:	009b      	lsls	r3, r3, #2
    3536:	4413      	add	r3, r2
    3538:	005b      	lsls	r3, r3, #1
    353a:	4619      	mov	r1, r3
    353c:	68fb      	ldr	r3, [r7, #12]
    353e:	1c5a      	adds	r2, r3, #1
    3540:	60fa      	str	r2, [r7, #12]
    3542:	461a      	mov	r2, r3
    3544:	687b      	ldr	r3, [r7, #4]
    3546:	4413      	add	r3, r2
    3548:	781b      	ldrb	r3, [r3, #0]
    354a:	440b      	add	r3, r1
    354c:	3b30      	subs	r3, #48	; 0x30
    354e:	60bb      	str	r3, [r7, #8]
    3550:	68fb      	ldr	r3, [r7, #12]
    3552:	687a      	ldr	r2, [r7, #4]
    3554:	4413      	add	r3, r2
    3556:	781b      	ldrb	r3, [r3, #0]
    3558:	4618      	mov	r0, r3
    355a:	f7fe f91c 	bl	1796 <digit>
    355e:	4603      	mov	r3, r0
    3560:	2b00      	cmp	r3, #0
    3562:	d1e5      	bne.n	3530 <str_to_date+0x72>
    3564:	68fb      	ldr	r3, [r7, #12]
    3566:	2b06      	cmp	r3, #6
    3568:	dd05      	ble.n	3576 <str_to_date+0xb8>
    356a:	68fb      	ldr	r3, [r7, #12]
    356c:	687a      	ldr	r2, [r7, #4]
    356e:	4413      	add	r3, r2
    3570:	781b      	ldrb	r3, [r3, #0]
    3572:	2b2f      	cmp	r3, #47	; 0x2f
    3574:	d001      	beq.n	357a <str_to_date+0xbc>
    3576:	2300      	movs	r3, #0
    3578:	e039      	b.n	35ee <str_to_date+0x130>
    357a:	68bb      	ldr	r3, [r7, #8]
    357c:	b2db      	uxtb	r3, r3
    357e:	f003 030f 	and.w	r3, r3, #15
    3582:	b2d9      	uxtb	r1, r3
    3584:	683a      	ldr	r2, [r7, #0]
    3586:	8853      	ldrh	r3, [r2, #2]
    3588:	f361 1389 	bfi	r3, r1, #6, #4
    358c:	8053      	strh	r3, [r2, #2]
    358e:	2300      	movs	r3, #0
    3590:	60bb      	str	r3, [r7, #8]
    3592:	68fb      	ldr	r3, [r7, #12]
    3594:	3301      	adds	r3, #1
    3596:	60fb      	str	r3, [r7, #12]
    3598:	e00f      	b.n	35ba <str_to_date+0xfc>
    359a:	68ba      	ldr	r2, [r7, #8]
    359c:	4613      	mov	r3, r2
    359e:	009b      	lsls	r3, r3, #2
    35a0:	4413      	add	r3, r2
    35a2:	005b      	lsls	r3, r3, #1
    35a4:	4619      	mov	r1, r3
    35a6:	68fb      	ldr	r3, [r7, #12]
    35a8:	1c5a      	adds	r2, r3, #1
    35aa:	60fa      	str	r2, [r7, #12]
    35ac:	461a      	mov	r2, r3
    35ae:	687b      	ldr	r3, [r7, #4]
    35b0:	4413      	add	r3, r2
    35b2:	781b      	ldrb	r3, [r3, #0]
    35b4:	440b      	add	r3, r1
    35b6:	3b30      	subs	r3, #48	; 0x30
    35b8:	60bb      	str	r3, [r7, #8]
    35ba:	68fb      	ldr	r3, [r7, #12]
    35bc:	687a      	ldr	r2, [r7, #4]
    35be:	4413      	add	r3, r2
    35c0:	781b      	ldrb	r3, [r3, #0]
    35c2:	4618      	mov	r0, r3
    35c4:	f7fe f8e7 	bl	1796 <digit>
    35c8:	4603      	mov	r3, r0
    35ca:	2b00      	cmp	r3, #0
    35cc:	d1e5      	bne.n	359a <str_to_date+0xdc>
    35ce:	68fb      	ldr	r3, [r7, #12]
    35d0:	2b09      	cmp	r3, #9
    35d2:	dc01      	bgt.n	35d8 <str_to_date+0x11a>
    35d4:	2300      	movs	r3, #0
    35d6:	e00a      	b.n	35ee <str_to_date+0x130>
    35d8:	68bb      	ldr	r3, [r7, #8]
    35da:	b2db      	uxtb	r3, r3
    35dc:	f003 031f 	and.w	r3, r3, #31
    35e0:	b2d9      	uxtb	r1, r3
    35e2:	683a      	ldr	r2, [r7, #0]
    35e4:	7893      	ldrb	r3, [r2, #2]
    35e6:	f361 0345 	bfi	r3, r1, #1, #5
    35ea:	7093      	strb	r3, [r2, #2]
    35ec:	2301      	movs	r3, #1
    35ee:	4618      	mov	r0, r3
    35f0:	3710      	adds	r7, #16
    35f2:	46bd      	mov	sp, r7
    35f4:	bd80      	pop	{r7, pc}

000035f6 <str_to_time>:
    35f6:	b580      	push	{r7, lr}
    35f8:	b084      	sub	sp, #16
    35fa:	af00      	add	r7, sp, #0
    35fc:	6078      	str	r0, [r7, #4]
    35fe:	6039      	str	r1, [r7, #0]
    3600:	2300      	movs	r3, #0
    3602:	60fb      	str	r3, [r7, #12]
    3604:	2300      	movs	r3, #0
    3606:	72fb      	strb	r3, [r7, #11]
    3608:	e010      	b.n	362c <str_to_time+0x36>
    360a:	7afb      	ldrb	r3, [r7, #11]
    360c:	461a      	mov	r2, r3
    360e:	0092      	lsls	r2, r2, #2
    3610:	4413      	add	r3, r2
    3612:	005b      	lsls	r3, r3, #1
    3614:	b2da      	uxtb	r2, r3
    3616:	68fb      	ldr	r3, [r7, #12]
    3618:	1c59      	adds	r1, r3, #1
    361a:	60f9      	str	r1, [r7, #12]
    361c:	4619      	mov	r1, r3
    361e:	687b      	ldr	r3, [r7, #4]
    3620:	440b      	add	r3, r1
    3622:	781b      	ldrb	r3, [r3, #0]
    3624:	4413      	add	r3, r2
    3626:	b2db      	uxtb	r3, r3
    3628:	3b30      	subs	r3, #48	; 0x30
    362a:	72fb      	strb	r3, [r7, #11]
    362c:	68fb      	ldr	r3, [r7, #12]
    362e:	687a      	ldr	r2, [r7, #4]
    3630:	4413      	add	r3, r2
    3632:	781b      	ldrb	r3, [r3, #0]
    3634:	4618      	mov	r0, r3
    3636:	f7fe f8ae 	bl	1796 <digit>
    363a:	4603      	mov	r3, r0
    363c:	2b00      	cmp	r3, #0
    363e:	d1e4      	bne.n	360a <str_to_time+0x14>
    3640:	7afb      	ldrb	r3, [r7, #11]
    3642:	2b17      	cmp	r3, #23
    3644:	d805      	bhi.n	3652 <str_to_time+0x5c>
    3646:	68fb      	ldr	r3, [r7, #12]
    3648:	687a      	ldr	r2, [r7, #4]
    364a:	4413      	add	r3, r2
    364c:	781b      	ldrb	r3, [r3, #0]
    364e:	2b3a      	cmp	r3, #58	; 0x3a
    3650:	d001      	beq.n	3656 <str_to_time+0x60>
    3652:	2300      	movs	r3, #0
    3654:	e06d      	b.n	3732 <str_to_time+0x13c>
    3656:	7afb      	ldrb	r3, [r7, #11]
    3658:	f003 031f 	and.w	r3, r3, #31
    365c:	b2d9      	uxtb	r1, r3
    365e:	683a      	ldr	r2, [r7, #0]
    3660:	6813      	ldr	r3, [r2, #0]
    3662:	f361 3310 	bfi	r3, r1, #12, #5
    3666:	6013      	str	r3, [r2, #0]
    3668:	68fb      	ldr	r3, [r7, #12]
    366a:	3301      	adds	r3, #1
    366c:	60fb      	str	r3, [r7, #12]
    366e:	2300      	movs	r3, #0
    3670:	72fb      	strb	r3, [r7, #11]
    3672:	e010      	b.n	3696 <str_to_time+0xa0>
    3674:	7afb      	ldrb	r3, [r7, #11]
    3676:	461a      	mov	r2, r3
    3678:	0092      	lsls	r2, r2, #2
    367a:	4413      	add	r3, r2
    367c:	005b      	lsls	r3, r3, #1
    367e:	b2da      	uxtb	r2, r3
    3680:	68fb      	ldr	r3, [r7, #12]
    3682:	1c59      	adds	r1, r3, #1
    3684:	60f9      	str	r1, [r7, #12]
    3686:	4619      	mov	r1, r3
    3688:	687b      	ldr	r3, [r7, #4]
    368a:	440b      	add	r3, r1
    368c:	781b      	ldrb	r3, [r3, #0]
    368e:	4413      	add	r3, r2
    3690:	b2db      	uxtb	r3, r3
    3692:	3b30      	subs	r3, #48	; 0x30
    3694:	72fb      	strb	r3, [r7, #11]
    3696:	68fb      	ldr	r3, [r7, #12]
    3698:	687a      	ldr	r2, [r7, #4]
    369a:	4413      	add	r3, r2
    369c:	781b      	ldrb	r3, [r3, #0]
    369e:	4618      	mov	r0, r3
    36a0:	f7fe f879 	bl	1796 <digit>
    36a4:	4603      	mov	r3, r0
    36a6:	2b00      	cmp	r3, #0
    36a8:	d1e4      	bne.n	3674 <str_to_time+0x7e>
    36aa:	7afb      	ldrb	r3, [r7, #11]
    36ac:	2b3b      	cmp	r3, #59	; 0x3b
    36ae:	d805      	bhi.n	36bc <str_to_time+0xc6>
    36b0:	68fb      	ldr	r3, [r7, #12]
    36b2:	687a      	ldr	r2, [r7, #4]
    36b4:	4413      	add	r3, r2
    36b6:	781b      	ldrb	r3, [r3, #0]
    36b8:	2b3a      	cmp	r3, #58	; 0x3a
    36ba:	d001      	beq.n	36c0 <str_to_time+0xca>
    36bc:	2300      	movs	r3, #0
    36be:	e038      	b.n	3732 <str_to_time+0x13c>
    36c0:	7afb      	ldrb	r3, [r7, #11]
    36c2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    36c6:	b2d9      	uxtb	r1, r3
    36c8:	683a      	ldr	r2, [r7, #0]
    36ca:	8813      	ldrh	r3, [r2, #0]
    36cc:	f361 138b 	bfi	r3, r1, #6, #6
    36d0:	8013      	strh	r3, [r2, #0]
    36d2:	2300      	movs	r3, #0
    36d4:	72fb      	strb	r3, [r7, #11]
    36d6:	68fb      	ldr	r3, [r7, #12]
    36d8:	3301      	adds	r3, #1
    36da:	60fb      	str	r3, [r7, #12]
    36dc:	e010      	b.n	3700 <str_to_time+0x10a>
    36de:	7afb      	ldrb	r3, [r7, #11]
    36e0:	461a      	mov	r2, r3
    36e2:	0092      	lsls	r2, r2, #2
    36e4:	4413      	add	r3, r2
    36e6:	005b      	lsls	r3, r3, #1
    36e8:	b2da      	uxtb	r2, r3
    36ea:	68fb      	ldr	r3, [r7, #12]
    36ec:	1c59      	adds	r1, r3, #1
    36ee:	60f9      	str	r1, [r7, #12]
    36f0:	4619      	mov	r1, r3
    36f2:	687b      	ldr	r3, [r7, #4]
    36f4:	440b      	add	r3, r1
    36f6:	781b      	ldrb	r3, [r3, #0]
    36f8:	4413      	add	r3, r2
    36fa:	b2db      	uxtb	r3, r3
    36fc:	3b30      	subs	r3, #48	; 0x30
    36fe:	72fb      	strb	r3, [r7, #11]
    3700:	68fb      	ldr	r3, [r7, #12]
    3702:	687a      	ldr	r2, [r7, #4]
    3704:	4413      	add	r3, r2
    3706:	781b      	ldrb	r3, [r3, #0]
    3708:	4618      	mov	r0, r3
    370a:	f7fe f844 	bl	1796 <digit>
    370e:	4603      	mov	r3, r0
    3710:	2b00      	cmp	r3, #0
    3712:	d1e4      	bne.n	36de <str_to_time+0xe8>
    3714:	7afb      	ldrb	r3, [r7, #11]
    3716:	2b3b      	cmp	r3, #59	; 0x3b
    3718:	d901      	bls.n	371e <str_to_time+0x128>
    371a:	2300      	movs	r3, #0
    371c:	e009      	b.n	3732 <str_to_time+0x13c>
    371e:	7afb      	ldrb	r3, [r7, #11]
    3720:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3724:	b2d9      	uxtb	r1, r3
    3726:	683a      	ldr	r2, [r7, #0]
    3728:	7813      	ldrb	r3, [r2, #0]
    372a:	f361 0305 	bfi	r3, r1, #0, #6
    372e:	7013      	strb	r3, [r2, #0]
    3730:	2301      	movs	r3, #1
    3732:	4618      	mov	r0, r3
    3734:	3710      	adds	r7, #16
    3736:	46bd      	mov	sp, r7
    3738:	bd80      	pop	{r7, pc}

0000373a <date_str>:
    373a:	b480      	push	{r7}
    373c:	b085      	sub	sp, #20
    373e:	af00      	add	r7, sp, #0
    3740:	6078      	str	r0, [r7, #4]
    3742:	6039      	str	r1, [r7, #0]
    3744:	2300      	movs	r3, #0
    3746:	60fb      	str	r3, [r7, #12]
    3748:	687b      	ldr	r3, [r7, #4]
    374a:	891b      	ldrh	r3, [r3, #8]
    374c:	60bb      	str	r3, [r7, #8]
    374e:	68fb      	ldr	r3, [r7, #12]
    3750:	1c5a      	adds	r2, r3, #1
    3752:	60fa      	str	r2, [r7, #12]
    3754:	461a      	mov	r2, r3
    3756:	683b      	ldr	r3, [r7, #0]
    3758:	4413      	add	r3, r2
    375a:	68ba      	ldr	r2, [r7, #8]
    375c:	495d      	ldr	r1, [pc, #372]	; (38d4 <date_str+0x19a>)
    375e:	fba1 1202 	umull	r1, r2, r1, r2
    3762:	0992      	lsrs	r2, r2, #6
    3764:	b2d2      	uxtb	r2, r2
    3766:	3230      	adds	r2, #48	; 0x30
    3768:	b2d2      	uxtb	r2, r2
    376a:	701a      	strb	r2, [r3, #0]
    376c:	68bb      	ldr	r3, [r7, #8]
    376e:	4a59      	ldr	r2, [pc, #356]	; (38d4 <date_str+0x19a>)
    3770:	fba2 1203 	umull	r1, r2, r2, r3
    3774:	0992      	lsrs	r2, r2, #6
    3776:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    377a:	fb01 f202 	mul.w	r2, r1, r2
    377e:	1a9b      	subs	r3, r3, r2
    3780:	60bb      	str	r3, [r7, #8]
    3782:	68fb      	ldr	r3, [r7, #12]
    3784:	1c5a      	adds	r2, r3, #1
    3786:	60fa      	str	r2, [r7, #12]
    3788:	461a      	mov	r2, r3
    378a:	683b      	ldr	r3, [r7, #0]
    378c:	4413      	add	r3, r2
    378e:	68ba      	ldr	r2, [r7, #8]
    3790:	4951      	ldr	r1, [pc, #324]	; (38d8 <date_str+0x19e>)
    3792:	fba1 1202 	umull	r1, r2, r1, r2
    3796:	0952      	lsrs	r2, r2, #5
    3798:	b2d2      	uxtb	r2, r2
    379a:	3230      	adds	r2, #48	; 0x30
    379c:	b2d2      	uxtb	r2, r2
    379e:	701a      	strb	r2, [r3, #0]
    37a0:	68bb      	ldr	r3, [r7, #8]
    37a2:	4a4d      	ldr	r2, [pc, #308]	; (38d8 <date_str+0x19e>)
    37a4:	fba2 1203 	umull	r1, r2, r2, r3
    37a8:	0952      	lsrs	r2, r2, #5
    37aa:	2164      	movs	r1, #100	; 0x64
    37ac:	fb01 f202 	mul.w	r2, r1, r2
    37b0:	1a9b      	subs	r3, r3, r2
    37b2:	60bb      	str	r3, [r7, #8]
    37b4:	68fb      	ldr	r3, [r7, #12]
    37b6:	1c5a      	adds	r2, r3, #1
    37b8:	60fa      	str	r2, [r7, #12]
    37ba:	461a      	mov	r2, r3
    37bc:	683b      	ldr	r3, [r7, #0]
    37be:	4413      	add	r3, r2
    37c0:	68ba      	ldr	r2, [r7, #8]
    37c2:	4946      	ldr	r1, [pc, #280]	; (38dc <date_str+0x1a2>)
    37c4:	fba1 1202 	umull	r1, r2, r1, r2
    37c8:	08d2      	lsrs	r2, r2, #3
    37ca:	b2d2      	uxtb	r2, r2
    37cc:	3230      	adds	r2, #48	; 0x30
    37ce:	b2d2      	uxtb	r2, r2
    37d0:	701a      	strb	r2, [r3, #0]
    37d2:	68fb      	ldr	r3, [r7, #12]
    37d4:	1c5a      	adds	r2, r3, #1
    37d6:	60fa      	str	r2, [r7, #12]
    37d8:	461a      	mov	r2, r3
    37da:	683b      	ldr	r3, [r7, #0]
    37dc:	1898      	adds	r0, r3, r2
    37de:	68b9      	ldr	r1, [r7, #8]
    37e0:	4b3e      	ldr	r3, [pc, #248]	; (38dc <date_str+0x1a2>)
    37e2:	fba3 2301 	umull	r2, r3, r3, r1
    37e6:	08da      	lsrs	r2, r3, #3
    37e8:	4613      	mov	r3, r2
    37ea:	009b      	lsls	r3, r3, #2
    37ec:	4413      	add	r3, r2
    37ee:	005b      	lsls	r3, r3, #1
    37f0:	1aca      	subs	r2, r1, r3
    37f2:	b2d3      	uxtb	r3, r2
    37f4:	3330      	adds	r3, #48	; 0x30
    37f6:	b2db      	uxtb	r3, r3
    37f8:	7003      	strb	r3, [r0, #0]
    37fa:	68fb      	ldr	r3, [r7, #12]
    37fc:	1c5a      	adds	r2, r3, #1
    37fe:	60fa      	str	r2, [r7, #12]
    3800:	461a      	mov	r2, r3
    3802:	683b      	ldr	r3, [r7, #0]
    3804:	4413      	add	r3, r2
    3806:	222f      	movs	r2, #47	; 0x2f
    3808:	701a      	strb	r2, [r3, #0]
    380a:	687b      	ldr	r3, [r7, #4]
    380c:	885b      	ldrh	r3, [r3, #2]
    380e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3812:	b2db      	uxtb	r3, r3
    3814:	60bb      	str	r3, [r7, #8]
    3816:	68fb      	ldr	r3, [r7, #12]
    3818:	1c5a      	adds	r2, r3, #1
    381a:	60fa      	str	r2, [r7, #12]
    381c:	461a      	mov	r2, r3
    381e:	683b      	ldr	r3, [r7, #0]
    3820:	4413      	add	r3, r2
    3822:	68ba      	ldr	r2, [r7, #8]
    3824:	492d      	ldr	r1, [pc, #180]	; (38dc <date_str+0x1a2>)
    3826:	fba1 1202 	umull	r1, r2, r1, r2
    382a:	08d2      	lsrs	r2, r2, #3
    382c:	b2d2      	uxtb	r2, r2
    382e:	3230      	adds	r2, #48	; 0x30
    3830:	b2d2      	uxtb	r2, r2
    3832:	701a      	strb	r2, [r3, #0]
    3834:	68fb      	ldr	r3, [r7, #12]
    3836:	1c5a      	adds	r2, r3, #1
    3838:	60fa      	str	r2, [r7, #12]
    383a:	461a      	mov	r2, r3
    383c:	683b      	ldr	r3, [r7, #0]
    383e:	1898      	adds	r0, r3, r2
    3840:	68b9      	ldr	r1, [r7, #8]
    3842:	4b26      	ldr	r3, [pc, #152]	; (38dc <date_str+0x1a2>)
    3844:	fba3 2301 	umull	r2, r3, r3, r1
    3848:	08da      	lsrs	r2, r3, #3
    384a:	4613      	mov	r3, r2
    384c:	009b      	lsls	r3, r3, #2
    384e:	4413      	add	r3, r2
    3850:	005b      	lsls	r3, r3, #1
    3852:	1aca      	subs	r2, r1, r3
    3854:	b2d3      	uxtb	r3, r2
    3856:	3330      	adds	r3, #48	; 0x30
    3858:	b2db      	uxtb	r3, r3
    385a:	7003      	strb	r3, [r0, #0]
    385c:	68fb      	ldr	r3, [r7, #12]
    385e:	1c5a      	adds	r2, r3, #1
    3860:	60fa      	str	r2, [r7, #12]
    3862:	461a      	mov	r2, r3
    3864:	683b      	ldr	r3, [r7, #0]
    3866:	4413      	add	r3, r2
    3868:	222f      	movs	r2, #47	; 0x2f
    386a:	701a      	strb	r2, [r3, #0]
    386c:	687b      	ldr	r3, [r7, #4]
    386e:	789b      	ldrb	r3, [r3, #2]
    3870:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3874:	b2db      	uxtb	r3, r3
    3876:	60bb      	str	r3, [r7, #8]
    3878:	68fb      	ldr	r3, [r7, #12]
    387a:	1c5a      	adds	r2, r3, #1
    387c:	60fa      	str	r2, [r7, #12]
    387e:	461a      	mov	r2, r3
    3880:	683b      	ldr	r3, [r7, #0]
    3882:	4413      	add	r3, r2
    3884:	68ba      	ldr	r2, [r7, #8]
    3886:	4915      	ldr	r1, [pc, #84]	; (38dc <date_str+0x1a2>)
    3888:	fba1 1202 	umull	r1, r2, r1, r2
    388c:	08d2      	lsrs	r2, r2, #3
    388e:	b2d2      	uxtb	r2, r2
    3890:	3230      	adds	r2, #48	; 0x30
    3892:	b2d2      	uxtb	r2, r2
    3894:	701a      	strb	r2, [r3, #0]
    3896:	68fb      	ldr	r3, [r7, #12]
    3898:	1c5a      	adds	r2, r3, #1
    389a:	60fa      	str	r2, [r7, #12]
    389c:	461a      	mov	r2, r3
    389e:	683b      	ldr	r3, [r7, #0]
    38a0:	1898      	adds	r0, r3, r2
    38a2:	68b9      	ldr	r1, [r7, #8]
    38a4:	4b0d      	ldr	r3, [pc, #52]	; (38dc <date_str+0x1a2>)
    38a6:	fba3 2301 	umull	r2, r3, r3, r1
    38aa:	08da      	lsrs	r2, r3, #3
    38ac:	4613      	mov	r3, r2
    38ae:	009b      	lsls	r3, r3, #2
    38b0:	4413      	add	r3, r2
    38b2:	005b      	lsls	r3, r3, #1
    38b4:	1aca      	subs	r2, r1, r3
    38b6:	b2d3      	uxtb	r3, r2
    38b8:	3330      	adds	r3, #48	; 0x30
    38ba:	b2db      	uxtb	r3, r3
    38bc:	7003      	strb	r3, [r0, #0]
    38be:	68fb      	ldr	r3, [r7, #12]
    38c0:	683a      	ldr	r2, [r7, #0]
    38c2:	4413      	add	r3, r2
    38c4:	2200      	movs	r2, #0
    38c6:	701a      	strb	r2, [r3, #0]
    38c8:	bf00      	nop
    38ca:	3714      	adds	r7, #20
    38cc:	46bd      	mov	sp, r7
    38ce:	bc80      	pop	{r7}
    38d0:	4770      	bx	lr
    38d2:	bf00      	nop
    38d4:	10624dd3 	.word	0x10624dd3
    38d8:	51eb851f 	.word	0x51eb851f
    38dc:	cccccccd 	.word	0xcccccccd

000038e0 <time_str>:
    38e0:	b480      	push	{r7}
    38e2:	b085      	sub	sp, #20
    38e4:	af00      	add	r7, sp, #0
    38e6:	6078      	str	r0, [r7, #4]
    38e8:	6039      	str	r1, [r7, #0]
    38ea:	2300      	movs	r3, #0
    38ec:	60fb      	str	r3, [r7, #12]
    38ee:	687b      	ldr	r3, [r7, #4]
    38f0:	681b      	ldr	r3, [r3, #0]
    38f2:	f3c3 3304 	ubfx	r3, r3, #12, #5
    38f6:	b2db      	uxtb	r3, r3
    38f8:	60bb      	str	r3, [r7, #8]
    38fa:	68fb      	ldr	r3, [r7, #12]
    38fc:	1c5a      	adds	r2, r3, #1
    38fe:	60fa      	str	r2, [r7, #12]
    3900:	461a      	mov	r2, r3
    3902:	683b      	ldr	r3, [r7, #0]
    3904:	4413      	add	r3, r2
    3906:	68ba      	ldr	r2, [r7, #8]
    3908:	4943      	ldr	r1, [pc, #268]	; (3a18 <time_str+0x138>)
    390a:	fba1 1202 	umull	r1, r2, r1, r2
    390e:	08d2      	lsrs	r2, r2, #3
    3910:	b2d2      	uxtb	r2, r2
    3912:	3230      	adds	r2, #48	; 0x30
    3914:	b2d2      	uxtb	r2, r2
    3916:	701a      	strb	r2, [r3, #0]
    3918:	68fb      	ldr	r3, [r7, #12]
    391a:	1c5a      	adds	r2, r3, #1
    391c:	60fa      	str	r2, [r7, #12]
    391e:	461a      	mov	r2, r3
    3920:	683b      	ldr	r3, [r7, #0]
    3922:	1898      	adds	r0, r3, r2
    3924:	68b9      	ldr	r1, [r7, #8]
    3926:	4b3c      	ldr	r3, [pc, #240]	; (3a18 <time_str+0x138>)
    3928:	fba3 2301 	umull	r2, r3, r3, r1
    392c:	08da      	lsrs	r2, r3, #3
    392e:	4613      	mov	r3, r2
    3930:	009b      	lsls	r3, r3, #2
    3932:	4413      	add	r3, r2
    3934:	005b      	lsls	r3, r3, #1
    3936:	1aca      	subs	r2, r1, r3
    3938:	b2d3      	uxtb	r3, r2
    393a:	3330      	adds	r3, #48	; 0x30
    393c:	b2db      	uxtb	r3, r3
    393e:	7003      	strb	r3, [r0, #0]
    3940:	68fb      	ldr	r3, [r7, #12]
    3942:	1c5a      	adds	r2, r3, #1
    3944:	60fa      	str	r2, [r7, #12]
    3946:	461a      	mov	r2, r3
    3948:	683b      	ldr	r3, [r7, #0]
    394a:	4413      	add	r3, r2
    394c:	223a      	movs	r2, #58	; 0x3a
    394e:	701a      	strb	r2, [r3, #0]
    3950:	687b      	ldr	r3, [r7, #4]
    3952:	881b      	ldrh	r3, [r3, #0]
    3954:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3958:	b2db      	uxtb	r3, r3
    395a:	60bb      	str	r3, [r7, #8]
    395c:	68fb      	ldr	r3, [r7, #12]
    395e:	1c5a      	adds	r2, r3, #1
    3960:	60fa      	str	r2, [r7, #12]
    3962:	461a      	mov	r2, r3
    3964:	683b      	ldr	r3, [r7, #0]
    3966:	4413      	add	r3, r2
    3968:	68ba      	ldr	r2, [r7, #8]
    396a:	492b      	ldr	r1, [pc, #172]	; (3a18 <time_str+0x138>)
    396c:	fba1 1202 	umull	r1, r2, r1, r2
    3970:	08d2      	lsrs	r2, r2, #3
    3972:	b2d2      	uxtb	r2, r2
    3974:	3230      	adds	r2, #48	; 0x30
    3976:	b2d2      	uxtb	r2, r2
    3978:	701a      	strb	r2, [r3, #0]
    397a:	68fb      	ldr	r3, [r7, #12]
    397c:	1c5a      	adds	r2, r3, #1
    397e:	60fa      	str	r2, [r7, #12]
    3980:	461a      	mov	r2, r3
    3982:	683b      	ldr	r3, [r7, #0]
    3984:	1898      	adds	r0, r3, r2
    3986:	68b9      	ldr	r1, [r7, #8]
    3988:	4b23      	ldr	r3, [pc, #140]	; (3a18 <time_str+0x138>)
    398a:	fba3 2301 	umull	r2, r3, r3, r1
    398e:	08da      	lsrs	r2, r3, #3
    3990:	4613      	mov	r3, r2
    3992:	009b      	lsls	r3, r3, #2
    3994:	4413      	add	r3, r2
    3996:	005b      	lsls	r3, r3, #1
    3998:	1aca      	subs	r2, r1, r3
    399a:	b2d3      	uxtb	r3, r2
    399c:	3330      	adds	r3, #48	; 0x30
    399e:	b2db      	uxtb	r3, r3
    39a0:	7003      	strb	r3, [r0, #0]
    39a2:	68fb      	ldr	r3, [r7, #12]
    39a4:	1c5a      	adds	r2, r3, #1
    39a6:	60fa      	str	r2, [r7, #12]
    39a8:	461a      	mov	r2, r3
    39aa:	683b      	ldr	r3, [r7, #0]
    39ac:	4413      	add	r3, r2
    39ae:	223a      	movs	r2, #58	; 0x3a
    39b0:	701a      	strb	r2, [r3, #0]
    39b2:	687b      	ldr	r3, [r7, #4]
    39b4:	781b      	ldrb	r3, [r3, #0]
    39b6:	f3c3 0305 	ubfx	r3, r3, #0, #6
    39ba:	b2db      	uxtb	r3, r3
    39bc:	60bb      	str	r3, [r7, #8]
    39be:	68fb      	ldr	r3, [r7, #12]
    39c0:	1c5a      	adds	r2, r3, #1
    39c2:	60fa      	str	r2, [r7, #12]
    39c4:	461a      	mov	r2, r3
    39c6:	683b      	ldr	r3, [r7, #0]
    39c8:	4413      	add	r3, r2
    39ca:	68ba      	ldr	r2, [r7, #8]
    39cc:	4912      	ldr	r1, [pc, #72]	; (3a18 <time_str+0x138>)
    39ce:	fba1 1202 	umull	r1, r2, r1, r2
    39d2:	08d2      	lsrs	r2, r2, #3
    39d4:	b2d2      	uxtb	r2, r2
    39d6:	3230      	adds	r2, #48	; 0x30
    39d8:	b2d2      	uxtb	r2, r2
    39da:	701a      	strb	r2, [r3, #0]
    39dc:	68fb      	ldr	r3, [r7, #12]
    39de:	1c5a      	adds	r2, r3, #1
    39e0:	60fa      	str	r2, [r7, #12]
    39e2:	461a      	mov	r2, r3
    39e4:	683b      	ldr	r3, [r7, #0]
    39e6:	1898      	adds	r0, r3, r2
    39e8:	68b9      	ldr	r1, [r7, #8]
    39ea:	4b0b      	ldr	r3, [pc, #44]	; (3a18 <time_str+0x138>)
    39ec:	fba3 2301 	umull	r2, r3, r3, r1
    39f0:	08da      	lsrs	r2, r3, #3
    39f2:	4613      	mov	r3, r2
    39f4:	009b      	lsls	r3, r3, #2
    39f6:	4413      	add	r3, r2
    39f8:	005b      	lsls	r3, r3, #1
    39fa:	1aca      	subs	r2, r1, r3
    39fc:	b2d3      	uxtb	r3, r2
    39fe:	3330      	adds	r3, #48	; 0x30
    3a00:	b2db      	uxtb	r3, r3
    3a02:	7003      	strb	r3, [r0, #0]
    3a04:	68fb      	ldr	r3, [r7, #12]
    3a06:	683a      	ldr	r2, [r7, #0]
    3a08:	4413      	add	r3, r2
    3a0a:	2200      	movs	r2, #0
    3a0c:	701a      	strb	r2, [r3, #0]
    3a0e:	bf00      	nop
    3a10:	3714      	adds	r7, #20
    3a12:	46bd      	mov	sp, r7
    3a14:	bc80      	pop	{r7}
    3a16:	4770      	bx	lr
    3a18:	cccccccd 	.word	0xcccccccd

00003a1c <get_fattime>:
    3a1c:	b580      	push	{r7, lr}
    3a1e:	b084      	sub	sp, #16
    3a20:	af00      	add	r7, sp, #0
    3a22:	463b      	mov	r3, r7
    3a24:	4618      	mov	r0, r3
    3a26:	f7ff fa69 	bl	2efc <get_date_time>
    3a2a:	783b      	ldrb	r3, [r7, #0]
    3a2c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3a30:	b2db      	uxtb	r3, r3
    3a32:	0fda      	lsrs	r2, r3, #31
    3a34:	4413      	add	r3, r2
    3a36:	105b      	asrs	r3, r3, #1
    3a38:	b2db      	uxtb	r3, r3
    3a3a:	f003 031f 	and.w	r3, r3, #31
    3a3e:	b2da      	uxtb	r2, r3
    3a40:	7b3b      	ldrb	r3, [r7, #12]
    3a42:	f362 0304 	bfi	r3, r2, #0, #5
    3a46:	733b      	strb	r3, [r7, #12]
    3a48:	883b      	ldrh	r3, [r7, #0]
    3a4a:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3a4e:	b2da      	uxtb	r2, r3
    3a50:	89bb      	ldrh	r3, [r7, #12]
    3a52:	f362 134a 	bfi	r3, r2, #5, #6
    3a56:	81bb      	strh	r3, [r7, #12]
    3a58:	683b      	ldr	r3, [r7, #0]
    3a5a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3a5e:	b2da      	uxtb	r2, r3
    3a60:	7b7b      	ldrb	r3, [r7, #13]
    3a62:	f362 03c7 	bfi	r3, r2, #3, #5
    3a66:	737b      	strb	r3, [r7, #13]
    3a68:	78bb      	ldrb	r3, [r7, #2]
    3a6a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3a6e:	b2da      	uxtb	r2, r3
    3a70:	7bbb      	ldrb	r3, [r7, #14]
    3a72:	f362 0304 	bfi	r3, r2, #0, #5
    3a76:	73bb      	strb	r3, [r7, #14]
    3a78:	887b      	ldrh	r3, [r7, #2]
    3a7a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3a7e:	b2da      	uxtb	r2, r3
    3a80:	89fb      	ldrh	r3, [r7, #14]
    3a82:	f362 1348 	bfi	r3, r2, #5, #4
    3a86:	81fb      	strh	r3, [r7, #14]
    3a88:	893b      	ldrh	r3, [r7, #8]
    3a8a:	b2db      	uxtb	r3, r3
    3a8c:	3344      	adds	r3, #68	; 0x44
    3a8e:	b2db      	uxtb	r3, r3
    3a90:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3a94:	b2da      	uxtb	r2, r3
    3a96:	7bfb      	ldrb	r3, [r7, #15]
    3a98:	f362 0347 	bfi	r3, r2, #1, #7
    3a9c:	73fb      	strb	r3, [r7, #15]
    3a9e:	68fb      	ldr	r3, [r7, #12]
    3aa0:	4618      	mov	r0, r3
    3aa2:	3710      	adds	r7, #16
    3aa4:	46bd      	mov	sp, r7
    3aa6:	bd80      	pop	{r7, pc}

00003aa8 <RTC_handler>:
    3aa8:	b480      	push	{r7}
    3aaa:	b083      	sub	sp, #12
    3aac:	af00      	add	r7, sp, #0
    3aae:	4b0a      	ldr	r3, [pc, #40]	; (3ad8 <RTC_handler+0x30>)
    3ab0:	685b      	ldr	r3, [r3, #4]
    3ab2:	f003 0301 	and.w	r3, r3, #1
    3ab6:	2b00      	cmp	r3, #0
    3ab8:	d001      	beq.n	3abe <RTC_handler+0x16>
    3aba:	4b07      	ldr	r3, [pc, #28]	; (3ad8 <RTC_handler+0x30>)
    3abc:	685b      	ldr	r3, [r3, #4]
    3abe:	4b06      	ldr	r3, [pc, #24]	; (3ad8 <RTC_handler+0x30>)
    3ac0:	685b      	ldr	r3, [r3, #4]
    3ac2:	f003 0302 	and.w	r3, r3, #2
    3ac6:	2b00      	cmp	r3, #0
    3ac8:	d001      	beq.n	3ace <RTC_handler+0x26>
    3aca:	4b03      	ldr	r3, [pc, #12]	; (3ad8 <RTC_handler+0x30>)
    3acc:	685b      	ldr	r3, [r3, #4]
    3ace:	bf00      	nop
    3ad0:	370c      	adds	r7, #12
    3ad2:	46bd      	mov	sp, r7
    3ad4:	bc80      	pop	{r7}
    3ad6:	4770      	bx	lr
    3ad8:	40002800 	.word	0x40002800

00003adc <sound_init>:
    3adc:	b580      	push	{r7, lr}
    3ade:	af00      	add	r7, sp, #0
    3ae0:	4a0d      	ldr	r2, [pc, #52]	; (3b18 <sound_init+0x3c>)
    3ae2:	4b0d      	ldr	r3, [pc, #52]	; (3b18 <sound_init+0x3c>)
    3ae4:	69db      	ldr	r3, [r3, #28]
    3ae6:	f043 0301 	orr.w	r3, r3, #1
    3aea:	61d3      	str	r3, [r2, #28]
    3aec:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3af0:	2278      	movs	r2, #120	; 0x78
    3af2:	61da      	str	r2, [r3, #28]
    3af4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3af8:	f44f 7280 	mov.w	r2, #256	; 0x100
    3afc:	621a      	str	r2, [r3, #32]
    3afe:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3b02:	2209      	movs	r2, #9
    3b04:	629a      	str	r2, [r3, #40]	; 0x28
    3b06:	2104      	movs	r1, #4
    3b08:	201c      	movs	r0, #28
    3b0a:	f7ff f977 	bl	2dfc <set_int_priority>
    3b0e:	201c      	movs	r0, #28
    3b10:	f7ff f8ba 	bl	2c88 <enable_interrupt>
    3b14:	bf00      	nop
    3b16:	bd80      	pop	{r7, pc}
    3b18:	40021000 	.word	0x40021000

00003b1c <tone>:
    3b1c:	b580      	push	{r7, lr}
    3b1e:	b082      	sub	sp, #8
    3b20:	af00      	add	r7, sp, #0
    3b22:	4603      	mov	r3, r0
    3b24:	460a      	mov	r2, r1
    3b26:	80fb      	strh	r3, [r7, #6]
    3b28:	4613      	mov	r3, r2
    3b2a:	80bb      	strh	r3, [r7, #4]
    3b2c:	4a1a      	ldr	r2, [pc, #104]	; (3b98 <tone+0x7c>)
    3b2e:	4b1a      	ldr	r3, [pc, #104]	; (3b98 <tone+0x7c>)
    3b30:	685b      	ldr	r3, [r3, #4]
    3b32:	f403 7340 	and.w	r3, r3, #768	; 0x300
    3b36:	6053      	str	r3, [r2, #4]
    3b38:	4a17      	ldr	r2, [pc, #92]	; (3b98 <tone+0x7c>)
    3b3a:	4b17      	ldr	r3, [pc, #92]	; (3b98 <tone+0x7c>)
    3b3c:	685b      	ldr	r3, [r3, #4]
    3b3e:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    3b42:	6053      	str	r3, [r2, #4]
    3b44:	220a      	movs	r2, #10
    3b46:	210a      	movs	r1, #10
    3b48:	4814      	ldr	r0, [pc, #80]	; (3b9c <tone+0x80>)
    3b4a:	f7fe f82c 	bl	1ba6 <config_pin>
    3b4e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3b52:	88fb      	ldrh	r3, [r7, #6]
    3b54:	4912      	ldr	r1, [pc, #72]	; (3ba0 <tone+0x84>)
    3b56:	fbb1 f3f3 	udiv	r3, r1, r3
    3b5a:	62d3      	str	r3, [r2, #44]	; 0x2c
    3b5c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3b60:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3b64:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3b66:	085b      	lsrs	r3, r3, #1
    3b68:	63d3      	str	r3, [r2, #60]	; 0x3c
    3b6a:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3b6e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3b72:	68db      	ldr	r3, [r3, #12]
    3b74:	f023 0308 	bic.w	r3, r3, #8
    3b78:	60d3      	str	r3, [r2, #12]
    3b7a:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3b7e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3b82:	681b      	ldr	r3, [r3, #0]
    3b84:	f043 0301 	orr.w	r3, r3, #1
    3b88:	6013      	str	r3, [r2, #0]
    3b8a:	4a06      	ldr	r2, [pc, #24]	; (3ba4 <tone+0x88>)
    3b8c:	88bb      	ldrh	r3, [r7, #4]
    3b8e:	8013      	strh	r3, [r2, #0]
    3b90:	bf00      	nop
    3b92:	3708      	adds	r7, #8
    3b94:	46bd      	mov	sp, r7
    3b96:	bd80      	pop	{r7, pc}
    3b98:	40010000 	.word	0x40010000
    3b9c:	40010c00 	.word	0x40010c00
    3ba0:	006d3d32 	.word	0x006d3d32
    3ba4:	20004cc2 	.word	0x20004cc2

00003ba8 <beep>:
    3ba8:	b580      	push	{r7, lr}
    3baa:	b082      	sub	sp, #8
    3bac:	af00      	add	r7, sp, #0
    3bae:	4603      	mov	r3, r0
    3bb0:	80fb      	strh	r3, [r7, #6]
    3bb2:	88fb      	ldrh	r3, [r7, #6]
    3bb4:	4619      	mov	r1, r3
    3bb6:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    3bba:	f7ff ffaf 	bl	3b1c <tone>
    3bbe:	bf00      	nop
    3bc0:	3708      	adds	r7, #8
    3bc2:	46bd      	mov	sp, r7
    3bc4:	bd80      	pop	{r7, pc}

00003bc6 <load_sound_buffer>:
    3bc6:	b480      	push	{r7}
    3bc8:	b085      	sub	sp, #20
    3bca:	af00      	add	r7, sp, #0
    3bcc:	6078      	str	r0, [r7, #4]
    3bce:	2300      	movs	r3, #0
    3bd0:	60fb      	str	r3, [r7, #12]
    3bd2:	e00b      	b.n	3bec <load_sound_buffer+0x26>
    3bd4:	687b      	ldr	r3, [r7, #4]
    3bd6:	1c5a      	adds	r2, r3, #1
    3bd8:	607a      	str	r2, [r7, #4]
    3bda:	7819      	ldrb	r1, [r3, #0]
    3bdc:	4a07      	ldr	r2, [pc, #28]	; (3bfc <load_sound_buffer+0x36>)
    3bde:	68fb      	ldr	r3, [r7, #12]
    3be0:	4413      	add	r3, r2
    3be2:	460a      	mov	r2, r1
    3be4:	701a      	strb	r2, [r3, #0]
    3be6:	68fb      	ldr	r3, [r7, #12]
    3be8:	3301      	adds	r3, #1
    3bea:	60fb      	str	r3, [r7, #12]
    3bec:	68fb      	ldr	r3, [r7, #12]
    3bee:	2b0f      	cmp	r3, #15
    3bf0:	ddf0      	ble.n	3bd4 <load_sound_buffer+0xe>
    3bf2:	bf00      	nop
    3bf4:	3714      	adds	r7, #20
    3bf6:	46bd      	mov	sp, r7
    3bf8:	bc80      	pop	{r7}
    3bfa:	4770      	bx	lr
    3bfc:	20000510 	.word	0x20000510

00003c00 <sound_sampler>:
    3c00:	b580      	push	{r7, lr}
    3c02:	b082      	sub	sp, #8
    3c04:	af00      	add	r7, sp, #0
    3c06:	4603      	mov	r3, r0
    3c08:	80fb      	strh	r3, [r7, #6]
    3c0a:	4b1b      	ldr	r3, [pc, #108]	; (3c78 <sound_sampler+0x78>)
    3c0c:	2200      	movs	r2, #0
    3c0e:	701a      	strb	r2, [r3, #0]
    3c10:	4a1a      	ldr	r2, [pc, #104]	; (3c7c <sound_sampler+0x7c>)
    3c12:	4b1a      	ldr	r3, [pc, #104]	; (3c7c <sound_sampler+0x7c>)
    3c14:	685b      	ldr	r3, [r3, #4]
    3c16:	f403 7340 	and.w	r3, r3, #768	; 0x300
    3c1a:	6053      	str	r3, [r2, #4]
    3c1c:	4a18      	ldr	r2, [pc, #96]	; (3c80 <sound_sampler+0x80>)
    3c1e:	4b18      	ldr	r3, [pc, #96]	; (3c80 <sound_sampler+0x80>)
    3c20:	68db      	ldr	r3, [r3, #12]
    3c22:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    3c26:	60d3      	str	r3, [r2, #12]
    3c28:	2202      	movs	r2, #2
    3c2a:	210a      	movs	r1, #10
    3c2c:	4814      	ldr	r0, [pc, #80]	; (3c80 <sound_sampler+0x80>)
    3c2e:	f7fd ffba 	bl	1ba6 <config_pin>
    3c32:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3c36:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3c3a:	68db      	ldr	r3, [r3, #12]
    3c3c:	f043 0301 	orr.w	r3, r3, #1
    3c40:	60d3      	str	r3, [r2, #12]
    3c42:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3c46:	f240 62fd 	movw	r2, #1789	; 0x6fd
    3c4a:	62da      	str	r2, [r3, #44]	; 0x2c
    3c4c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3c50:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3c54:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3c56:	6393      	str	r3, [r2, #56]	; 0x38
    3c58:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3c5c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3c60:	681b      	ldr	r3, [r3, #0]
    3c62:	f043 0301 	orr.w	r3, r3, #1
    3c66:	6013      	str	r3, [r2, #0]
    3c68:	4a06      	ldr	r2, [pc, #24]	; (3c84 <sound_sampler+0x84>)
    3c6a:	88fb      	ldrh	r3, [r7, #6]
    3c6c:	8013      	strh	r3, [r2, #0]
    3c6e:	bf00      	nop
    3c70:	3708      	adds	r7, #8
    3c72:	46bd      	mov	sp, r7
    3c74:	bd80      	pop	{r7, pc}
    3c76:	bf00      	nop
    3c78:	20000520 	.word	0x20000520
    3c7c:	40010000 	.word	0x40010000
    3c80:	40010c00 	.word	0x40010c00
    3c84:	20004cc2 	.word	0x20004cc2

00003c88 <sound_stop>:
    3c88:	b480      	push	{r7}
    3c8a:	af00      	add	r7, sp, #0
    3c8c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3c90:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3c94:	681b      	ldr	r3, [r3, #0]
    3c96:	f023 0301 	bic.w	r3, r3, #1
    3c9a:	6013      	str	r3, [r2, #0]
    3c9c:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3ca0:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3ca4:	68db      	ldr	r3, [r3, #12]
    3ca6:	f023 0301 	bic.w	r3, r3, #1
    3caa:	60d3      	str	r3, [r2, #12]
    3cac:	bf00      	nop
    3cae:	46bd      	mov	sp, r7
    3cb0:	bc80      	pop	{r7}
    3cb2:	4770      	bx	lr

00003cb4 <key_tone>:
    3cb4:	b480      	push	{r7}
    3cb6:	b085      	sub	sp, #20
    3cb8:	af00      	add	r7, sp, #0
    3cba:	60f8      	str	r0, [r7, #12]
    3cbc:	60b9      	str	r1, [r7, #8]
    3cbe:	607a      	str	r2, [r7, #4]
    3cc0:	bf00      	nop
    3cc2:	3714      	adds	r7, #20
    3cc4:	46bd      	mov	sp, r7
    3cc6:	bc80      	pop	{r7}
    3cc8:	4770      	bx	lr

00003cca <noise>:
    3cca:	b480      	push	{r7}
    3ccc:	b083      	sub	sp, #12
    3cce:	af00      	add	r7, sp, #0
    3cd0:	6078      	str	r0, [r7, #4]
    3cd2:	bf00      	nop
    3cd4:	370c      	adds	r7, #12
    3cd6:	46bd      	mov	sp, r7
    3cd8:	bc80      	pop	{r7}
    3cda:	4770      	bx	lr

00003cdc <sound_handler>:
    3cdc:	4668      	mov	r0, sp
    3cde:	f020 0107 	bic.w	r1, r0, #7
    3ce2:	468d      	mov	sp, r1
    3ce4:	b481      	push	{r0, r7}
    3ce6:	b082      	sub	sp, #8
    3ce8:	af00      	add	r7, sp, #0
    3cea:	4b1e      	ldr	r3, [pc, #120]	; (3d64 <sound_handler+0x88>)
    3cec:	781b      	ldrb	r3, [r3, #0]
    3cee:	08db      	lsrs	r3, r3, #3
    3cf0:	71fb      	strb	r3, [r7, #7]
    3cf2:	4b1c      	ldr	r3, [pc, #112]	; (3d64 <sound_handler+0x88>)
    3cf4:	781b      	ldrb	r3, [r3, #0]
    3cf6:	43db      	mvns	r3, r3
    3cf8:	f003 0307 	and.w	r3, r3, #7
    3cfc:	2201      	movs	r2, #1
    3cfe:	fa02 f303 	lsl.w	r3, r2, r3
    3d02:	71bb      	strb	r3, [r7, #6]
    3d04:	79fb      	ldrb	r3, [r7, #7]
    3d06:	4a18      	ldr	r2, [pc, #96]	; (3d68 <sound_handler+0x8c>)
    3d08:	5cd2      	ldrb	r2, [r2, r3]
    3d0a:	79bb      	ldrb	r3, [r7, #6]
    3d0c:	4013      	ands	r3, r2
    3d0e:	b2db      	uxtb	r3, r3
    3d10:	2b00      	cmp	r3, #0
    3d12:	d006      	beq.n	3d22 <sound_handler+0x46>
    3d14:	4a15      	ldr	r2, [pc, #84]	; (3d6c <sound_handler+0x90>)
    3d16:	4b15      	ldr	r3, [pc, #84]	; (3d6c <sound_handler+0x90>)
    3d18:	68db      	ldr	r3, [r3, #12]
    3d1a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    3d1e:	60d3      	str	r3, [r2, #12]
    3d20:	e005      	b.n	3d2e <sound_handler+0x52>
    3d22:	4a12      	ldr	r2, [pc, #72]	; (3d6c <sound_handler+0x90>)
    3d24:	4b11      	ldr	r3, [pc, #68]	; (3d6c <sound_handler+0x90>)
    3d26:	68db      	ldr	r3, [r3, #12]
    3d28:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    3d2c:	60d3      	str	r3, [r2, #12]
    3d2e:	4b0d      	ldr	r3, [pc, #52]	; (3d64 <sound_handler+0x88>)
    3d30:	781b      	ldrb	r3, [r3, #0]
    3d32:	3301      	adds	r3, #1
    3d34:	b2da      	uxtb	r2, r3
    3d36:	4b0b      	ldr	r3, [pc, #44]	; (3d64 <sound_handler+0x88>)
    3d38:	701a      	strb	r2, [r3, #0]
    3d3a:	4b0a      	ldr	r3, [pc, #40]	; (3d64 <sound_handler+0x88>)
    3d3c:	781b      	ldrb	r3, [r3, #0]
    3d3e:	f003 030f 	and.w	r3, r3, #15
    3d42:	b2da      	uxtb	r2, r3
    3d44:	4b07      	ldr	r3, [pc, #28]	; (3d64 <sound_handler+0x88>)
    3d46:	701a      	strb	r2, [r3, #0]
    3d48:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    3d4c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    3d50:	691b      	ldr	r3, [r3, #16]
    3d52:	f023 0301 	bic.w	r3, r3, #1
    3d56:	6113      	str	r3, [r2, #16]
    3d58:	bf00      	nop
    3d5a:	3708      	adds	r7, #8
    3d5c:	46bd      	mov	sp, r7
    3d5e:	bc81      	pop	{r0, r7}
    3d60:	4685      	mov	sp, r0
    3d62:	4770      	bx	lr
    3d64:	20000520 	.word	0x20000520
    3d68:	20000510 	.word	0x20000510
    3d6c:	40010c00 	.word	0x40010c00

00003d70 <spi_baudrate>:
    3d70:	b480      	push	{r7}
    3d72:	b083      	sub	sp, #12
    3d74:	af00      	add	r7, sp, #0
    3d76:	6078      	str	r0, [r7, #4]
    3d78:	6039      	str	r1, [r7, #0]
    3d7a:	687b      	ldr	r3, [r7, #4]
    3d7c:	681b      	ldr	r3, [r3, #0]
    3d7e:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    3d82:	687b      	ldr	r3, [r7, #4]
    3d84:	601a      	str	r2, [r3, #0]
    3d86:	687b      	ldr	r3, [r7, #4]
    3d88:	681a      	ldr	r2, [r3, #0]
    3d8a:	683b      	ldr	r3, [r7, #0]
    3d8c:	00db      	lsls	r3, r3, #3
    3d8e:	431a      	orrs	r2, r3
    3d90:	687b      	ldr	r3, [r7, #4]
    3d92:	601a      	str	r2, [r3, #0]
    3d94:	bf00      	nop
    3d96:	370c      	adds	r7, #12
    3d98:	46bd      	mov	sp, r7
    3d9a:	bc80      	pop	{r7}
    3d9c:	4770      	bx	lr

00003d9e <spi_config_port>:
    3d9e:	b580      	push	{r7, lr}
    3da0:	b082      	sub	sp, #8
    3da2:	af00      	add	r7, sp, #0
    3da4:	6078      	str	r0, [r7, #4]
    3da6:	6039      	str	r1, [r7, #0]
    3da8:	4a33      	ldr	r2, [pc, #204]	; (3e78 <spi_config_port+0xda>)
    3daa:	4b33      	ldr	r3, [pc, #204]	; (3e78 <spi_config_port+0xda>)
    3dac:	699b      	ldr	r3, [r3, #24]
    3dae:	f043 0301 	orr.w	r3, r3, #1
    3db2:	6193      	str	r3, [r2, #24]
    3db4:	687b      	ldr	r3, [r7, #4]
    3db6:	4a31      	ldr	r2, [pc, #196]	; (3e7c <spi_config_port+0xde>)
    3db8:	4293      	cmp	r3, r2
    3dba:	d13e      	bne.n	3e3a <spi_config_port+0x9c>
    3dbc:	683b      	ldr	r3, [r7, #0]
    3dbe:	2b00      	cmp	r3, #0
    3dc0:	d11a      	bne.n	3df8 <spi_config_port+0x5a>
    3dc2:	4a2d      	ldr	r2, [pc, #180]	; (3e78 <spi_config_port+0xda>)
    3dc4:	4b2c      	ldr	r3, [pc, #176]	; (3e78 <spi_config_port+0xda>)
    3dc6:	699b      	ldr	r3, [r3, #24]
    3dc8:	f043 0304 	orr.w	r3, r3, #4
    3dcc:	6193      	str	r3, [r2, #24]
    3dce:	2203      	movs	r2, #3
    3dd0:	2104      	movs	r1, #4
    3dd2:	482b      	ldr	r0, [pc, #172]	; (3e80 <spi_config_port+0xe2>)
    3dd4:	f7fd fee7 	bl	1ba6 <config_pin>
    3dd8:	220b      	movs	r2, #11
    3dda:	2105      	movs	r1, #5
    3ddc:	4828      	ldr	r0, [pc, #160]	; (3e80 <spi_config_port+0xe2>)
    3dde:	f7fd fee2 	bl	1ba6 <config_pin>
    3de2:	2204      	movs	r2, #4
    3de4:	2106      	movs	r1, #6
    3de6:	4826      	ldr	r0, [pc, #152]	; (3e80 <spi_config_port+0xe2>)
    3de8:	f7fd fedd 	bl	1ba6 <config_pin>
    3dec:	220b      	movs	r2, #11
    3dee:	2107      	movs	r1, #7
    3df0:	4823      	ldr	r0, [pc, #140]	; (3e80 <spi_config_port+0xe2>)
    3df2:	f7fd fed8 	bl	1ba6 <config_pin>
    3df6:	e03a      	b.n	3e6e <spi_config_port+0xd0>
    3df8:	4a1f      	ldr	r2, [pc, #124]	; (3e78 <spi_config_port+0xda>)
    3dfa:	4b1f      	ldr	r3, [pc, #124]	; (3e78 <spi_config_port+0xda>)
    3dfc:	699b      	ldr	r3, [r3, #24]
    3dfe:	f043 030d 	orr.w	r3, r3, #13
    3e02:	6193      	str	r3, [r2, #24]
    3e04:	4a1f      	ldr	r2, [pc, #124]	; (3e84 <spi_config_port+0xe6>)
    3e06:	4b1f      	ldr	r3, [pc, #124]	; (3e84 <spi_config_port+0xe6>)
    3e08:	685b      	ldr	r3, [r3, #4]
    3e0a:	f043 0301 	orr.w	r3, r3, #1
    3e0e:	6053      	str	r3, [r2, #4]
    3e10:	2203      	movs	r2, #3
    3e12:	210f      	movs	r1, #15
    3e14:	481a      	ldr	r0, [pc, #104]	; (3e80 <spi_config_port+0xe2>)
    3e16:	f7fd fec6 	bl	1ba6 <config_pin>
    3e1a:	220b      	movs	r2, #11
    3e1c:	2103      	movs	r1, #3
    3e1e:	481a      	ldr	r0, [pc, #104]	; (3e88 <spi_config_port+0xea>)
    3e20:	f7fd fec1 	bl	1ba6 <config_pin>
    3e24:	2204      	movs	r2, #4
    3e26:	2104      	movs	r1, #4
    3e28:	4817      	ldr	r0, [pc, #92]	; (3e88 <spi_config_port+0xea>)
    3e2a:	f7fd febc 	bl	1ba6 <config_pin>
    3e2e:	220b      	movs	r2, #11
    3e30:	2105      	movs	r1, #5
    3e32:	4815      	ldr	r0, [pc, #84]	; (3e88 <spi_config_port+0xea>)
    3e34:	f7fd feb7 	bl	1ba6 <config_pin>
    3e38:	e019      	b.n	3e6e <spi_config_port+0xd0>
    3e3a:	4a0f      	ldr	r2, [pc, #60]	; (3e78 <spi_config_port+0xda>)
    3e3c:	4b0e      	ldr	r3, [pc, #56]	; (3e78 <spi_config_port+0xda>)
    3e3e:	699b      	ldr	r3, [r3, #24]
    3e40:	f043 0308 	orr.w	r3, r3, #8
    3e44:	6193      	str	r3, [r2, #24]
    3e46:	2203      	movs	r2, #3
    3e48:	2102      	movs	r1, #2
    3e4a:	480f      	ldr	r0, [pc, #60]	; (3e88 <spi_config_port+0xea>)
    3e4c:	f7fd feab 	bl	1ba6 <config_pin>
    3e50:	220b      	movs	r2, #11
    3e52:	210d      	movs	r1, #13
    3e54:	480c      	ldr	r0, [pc, #48]	; (3e88 <spi_config_port+0xea>)
    3e56:	f7fd fea6 	bl	1ba6 <config_pin>
    3e5a:	2204      	movs	r2, #4
    3e5c:	210e      	movs	r1, #14
    3e5e:	480a      	ldr	r0, [pc, #40]	; (3e88 <spi_config_port+0xea>)
    3e60:	f7fd fea1 	bl	1ba6 <config_pin>
    3e64:	220b      	movs	r2, #11
    3e66:	210f      	movs	r1, #15
    3e68:	4807      	ldr	r0, [pc, #28]	; (3e88 <spi_config_port+0xea>)
    3e6a:	f7fd fe9c 	bl	1ba6 <config_pin>
    3e6e:	bf00      	nop
    3e70:	3708      	adds	r7, #8
    3e72:	46bd      	mov	sp, r7
    3e74:	bd80      	pop	{r7, pc}
    3e76:	bf00      	nop
    3e78:	40021000 	.word	0x40021000
    3e7c:	40013000 	.word	0x40013000
    3e80:	40010800 	.word	0x40010800
    3e84:	40010000 	.word	0x40010000
    3e88:	40010c00 	.word	0x40010c00

00003e8c <spi_init>:
    3e8c:	b580      	push	{r7, lr}
    3e8e:	b084      	sub	sp, #16
    3e90:	af00      	add	r7, sp, #0
    3e92:	60f8      	str	r0, [r7, #12]
    3e94:	60b9      	str	r1, [r7, #8]
    3e96:	607a      	str	r2, [r7, #4]
    3e98:	603b      	str	r3, [r7, #0]
    3e9a:	6839      	ldr	r1, [r7, #0]
    3e9c:	68f8      	ldr	r0, [r7, #12]
    3e9e:	f7ff ff7e 	bl	3d9e <spi_config_port>
    3ea2:	68fb      	ldr	r3, [r7, #12]
    3ea4:	4a10      	ldr	r2, [pc, #64]	; (3ee8 <spi_init+0x5c>)
    3ea6:	4293      	cmp	r3, r2
    3ea8:	d106      	bne.n	3eb8 <spi_init+0x2c>
    3eaa:	4a10      	ldr	r2, [pc, #64]	; (3eec <spi_init+0x60>)
    3eac:	4b0f      	ldr	r3, [pc, #60]	; (3eec <spi_init+0x60>)
    3eae:	699b      	ldr	r3, [r3, #24]
    3eb0:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    3eb4:	6193      	str	r3, [r2, #24]
    3eb6:	e005      	b.n	3ec4 <spi_init+0x38>
    3eb8:	4a0c      	ldr	r2, [pc, #48]	; (3eec <spi_init+0x60>)
    3eba:	4b0c      	ldr	r3, [pc, #48]	; (3eec <spi_init+0x60>)
    3ebc:	69db      	ldr	r3, [r3, #28]
    3ebe:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3ec2:	61d3      	str	r3, [r2, #28]
    3ec4:	68fb      	ldr	r3, [r7, #12]
    3ec6:	687a      	ldr	r2, [r7, #4]
    3ec8:	601a      	str	r2, [r3, #0]
    3eca:	68b9      	ldr	r1, [r7, #8]
    3ecc:	68f8      	ldr	r0, [r7, #12]
    3ece:	f7ff ff4f 	bl	3d70 <spi_baudrate>
    3ed2:	68fb      	ldr	r3, [r7, #12]
    3ed4:	681b      	ldr	r3, [r3, #0]
    3ed6:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    3eda:	68fb      	ldr	r3, [r7, #12]
    3edc:	601a      	str	r2, [r3, #0]
    3ede:	bf00      	nop
    3ee0:	3710      	adds	r7, #16
    3ee2:	46bd      	mov	sp, r7
    3ee4:	bd80      	pop	{r7, pc}
    3ee6:	bf00      	nop
    3ee8:	40013000 	.word	0x40013000
    3eec:	40021000 	.word	0x40021000

00003ef0 <spi_send>:
    3ef0:	b480      	push	{r7}
    3ef2:	b083      	sub	sp, #12
    3ef4:	af00      	add	r7, sp, #0
    3ef6:	6078      	str	r0, [r7, #4]
    3ef8:	460b      	mov	r3, r1
    3efa:	70fb      	strb	r3, [r7, #3]
    3efc:	bf00      	nop
    3efe:	687b      	ldr	r3, [r7, #4]
    3f00:	689b      	ldr	r3, [r3, #8]
    3f02:	f003 0302 	and.w	r3, r3, #2
    3f06:	2b00      	cmp	r3, #0
    3f08:	d0f9      	beq.n	3efe <spi_send+0xe>
    3f0a:	78fa      	ldrb	r2, [r7, #3]
    3f0c:	687b      	ldr	r3, [r7, #4]
    3f0e:	60da      	str	r2, [r3, #12]
    3f10:	bf00      	nop
    3f12:	687b      	ldr	r3, [r7, #4]
    3f14:	689b      	ldr	r3, [r3, #8]
    3f16:	f003 0301 	and.w	r3, r3, #1
    3f1a:	2b00      	cmp	r3, #0
    3f1c:	d0f9      	beq.n	3f12 <spi_send+0x22>
    3f1e:	687b      	ldr	r3, [r7, #4]
    3f20:	68db      	ldr	r3, [r3, #12]
    3f22:	b2db      	uxtb	r3, r3
    3f24:	4618      	mov	r0, r3
    3f26:	370c      	adds	r7, #12
    3f28:	46bd      	mov	sp, r7
    3f2a:	bc80      	pop	{r7}
    3f2c:	4770      	bx	lr

00003f2e <spi_receive>:
    3f2e:	b480      	push	{r7}
    3f30:	b085      	sub	sp, #20
    3f32:	af00      	add	r7, sp, #0
    3f34:	6078      	str	r0, [r7, #4]
    3f36:	bf00      	nop
    3f38:	687b      	ldr	r3, [r7, #4]
    3f3a:	689b      	ldr	r3, [r3, #8]
    3f3c:	f003 0302 	and.w	r3, r3, #2
    3f40:	2b00      	cmp	r3, #0
    3f42:	d0f9      	beq.n	3f38 <spi_receive+0xa>
    3f44:	687b      	ldr	r3, [r7, #4]
    3f46:	22ff      	movs	r2, #255	; 0xff
    3f48:	60da      	str	r2, [r3, #12]
    3f4a:	bf00      	nop
    3f4c:	687b      	ldr	r3, [r7, #4]
    3f4e:	689b      	ldr	r3, [r3, #8]
    3f50:	f003 0301 	and.w	r3, r3, #1
    3f54:	2b00      	cmp	r3, #0
    3f56:	d0f9      	beq.n	3f4c <spi_receive+0x1e>
    3f58:	687b      	ldr	r3, [r7, #4]
    3f5a:	68db      	ldr	r3, [r3, #12]
    3f5c:	73fb      	strb	r3, [r7, #15]
    3f5e:	7bfb      	ldrb	r3, [r7, #15]
    3f60:	4618      	mov	r0, r3
    3f62:	3714      	adds	r7, #20
    3f64:	46bd      	mov	sp, r7
    3f66:	bc80      	pop	{r7}
    3f68:	4770      	bx	lr

00003f6a <spi_send_block>:
    3f6a:	b480      	push	{r7}
    3f6c:	b087      	sub	sp, #28
    3f6e:	af00      	add	r7, sp, #0
    3f70:	60f8      	str	r0, [r7, #12]
    3f72:	60b9      	str	r1, [r7, #8]
    3f74:	607a      	str	r2, [r7, #4]
    3f76:	e010      	b.n	3f9a <spi_send_block+0x30>
    3f78:	68bb      	ldr	r3, [r7, #8]
    3f7a:	1c5a      	adds	r2, r3, #1
    3f7c:	60ba      	str	r2, [r7, #8]
    3f7e:	781b      	ldrb	r3, [r3, #0]
    3f80:	461a      	mov	r2, r3
    3f82:	68fb      	ldr	r3, [r7, #12]
    3f84:	60da      	str	r2, [r3, #12]
    3f86:	bf00      	nop
    3f88:	68fb      	ldr	r3, [r7, #12]
    3f8a:	689b      	ldr	r3, [r3, #8]
    3f8c:	f003 0302 	and.w	r3, r3, #2
    3f90:	2b00      	cmp	r3, #0
    3f92:	d0f9      	beq.n	3f88 <spi_send_block+0x1e>
    3f94:	687b      	ldr	r3, [r7, #4]
    3f96:	3b01      	subs	r3, #1
    3f98:	607b      	str	r3, [r7, #4]
    3f9a:	687b      	ldr	r3, [r7, #4]
    3f9c:	2b00      	cmp	r3, #0
    3f9e:	d1eb      	bne.n	3f78 <spi_send_block+0xe>
    3fa0:	bf00      	nop
    3fa2:	68fb      	ldr	r3, [r7, #12]
    3fa4:	689b      	ldr	r3, [r3, #8]
    3fa6:	f003 0380 	and.w	r3, r3, #128	; 0x80
    3faa:	2b00      	cmp	r3, #0
    3fac:	d1f9      	bne.n	3fa2 <spi_send_block+0x38>
    3fae:	68fb      	ldr	r3, [r7, #12]
    3fb0:	68db      	ldr	r3, [r3, #12]
    3fb2:	75fb      	strb	r3, [r7, #23]
    3fb4:	bf00      	nop
    3fb6:	371c      	adds	r7, #28
    3fb8:	46bd      	mov	sp, r7
    3fba:	bc80      	pop	{r7}
    3fbc:	4770      	bx	lr

00003fbe <spi_receive_block>:
    3fbe:	b480      	push	{r7}
    3fc0:	b085      	sub	sp, #20
    3fc2:	af00      	add	r7, sp, #0
    3fc4:	60f8      	str	r0, [r7, #12]
    3fc6:	60b9      	str	r1, [r7, #8]
    3fc8:	607a      	str	r2, [r7, #4]
    3fca:	e013      	b.n	3ff4 <spi_receive_block+0x36>
    3fcc:	68fb      	ldr	r3, [r7, #12]
    3fce:	2200      	movs	r2, #0
    3fd0:	60da      	str	r2, [r3, #12]
    3fd2:	bf00      	nop
    3fd4:	68fb      	ldr	r3, [r7, #12]
    3fd6:	689b      	ldr	r3, [r3, #8]
    3fd8:	f003 0301 	and.w	r3, r3, #1
    3fdc:	2b00      	cmp	r3, #0
    3fde:	d0f9      	beq.n	3fd4 <spi_receive_block+0x16>
    3fe0:	68bb      	ldr	r3, [r7, #8]
    3fe2:	1c5a      	adds	r2, r3, #1
    3fe4:	60ba      	str	r2, [r7, #8]
    3fe6:	68fa      	ldr	r2, [r7, #12]
    3fe8:	68d2      	ldr	r2, [r2, #12]
    3fea:	b2d2      	uxtb	r2, r2
    3fec:	701a      	strb	r2, [r3, #0]
    3fee:	687b      	ldr	r3, [r7, #4]
    3ff0:	3b01      	subs	r3, #1
    3ff2:	607b      	str	r3, [r7, #4]
    3ff4:	687b      	ldr	r3, [r7, #4]
    3ff6:	2b00      	cmp	r3, #0
    3ff8:	d1e8      	bne.n	3fcc <spi_receive_block+0xe>
    3ffa:	bf00      	nop
    3ffc:	3714      	adds	r7, #20
    3ffe:	46bd      	mov	sp, r7
    4000:	bc80      	pop	{r7}
    4002:	4770      	bx	lr

00004004 <reset_mcu>:
    4004:	4b01      	ldr	r3, [pc, #4]	; (400c <reset_mcu+0x8>)
    4006:	4a02      	ldr	r2, [pc, #8]	; (4010 <reset_mcu+0xc>)
    4008:	601a      	str	r2, [r3, #0]
    400a:	bf00      	nop
    400c:	e000ed0c 	.word	0xe000ed0c
    4010:	05fa0004 	.word	0x05fa0004

00004014 <print_fault>:
    4014:	b580      	push	{r7, lr}
    4016:	b082      	sub	sp, #8
    4018:	af00      	add	r7, sp, #0
    401a:	6078      	str	r0, [r7, #4]
    401c:	6039      	str	r1, [r7, #0]
    401e:	6878      	ldr	r0, [r7, #4]
    4020:	f000 f9aa 	bl	4378 <print>
    4024:	4818      	ldr	r0, [pc, #96]	; (4088 <print_fault+0x74>)
    4026:	f000 f9a7 	bl	4378 <print>
    402a:	683b      	ldr	r3, [r7, #0]
    402c:	2b00      	cmp	r3, #0
    402e:	d004      	beq.n	403a <print_fault+0x26>
    4030:	683b      	ldr	r3, [r7, #0]
    4032:	2110      	movs	r1, #16
    4034:	4618      	mov	r0, r3
    4036:	f000 f9cf 	bl	43d8 <print_int>
    403a:	200d      	movs	r0, #13
    403c:	f000 f8e4 	bl	4208 <put_char>
    4040:	4812      	ldr	r0, [pc, #72]	; (408c <print_fault+0x78>)
    4042:	f000 f999 	bl	4378 <print>
    4046:	4b12      	ldr	r3, [pc, #72]	; (4090 <print_fault+0x7c>)
    4048:	681b      	ldr	r3, [r3, #0]
    404a:	f3c3 430f 	ubfx	r3, r3, #16, #16
    404e:	b29b      	uxth	r3, r3
    4050:	2110      	movs	r1, #16
    4052:	4618      	mov	r0, r3
    4054:	f000 f9c0 	bl	43d8 <print_int>
    4058:	480e      	ldr	r0, [pc, #56]	; (4094 <print_fault+0x80>)
    405a:	f000 f98d 	bl	4378 <print>
    405e:	4b0c      	ldr	r3, [pc, #48]	; (4090 <print_fault+0x7c>)
    4060:	681b      	ldr	r3, [r3, #0]
    4062:	f3c3 2307 	ubfx	r3, r3, #8, #8
    4066:	b2db      	uxtb	r3, r3
    4068:	2110      	movs	r1, #16
    406a:	4618      	mov	r0, r3
    406c:	f000 f9b4 	bl	43d8 <print_int>
    4070:	4809      	ldr	r0, [pc, #36]	; (4098 <print_fault+0x84>)
    4072:	f000 f981 	bl	4378 <print>
    4076:	4b06      	ldr	r3, [pc, #24]	; (4090 <print_fault+0x7c>)
    4078:	681b      	ldr	r3, [r3, #0]
    407a:	b2db      	uxtb	r3, r3
    407c:	2110      	movs	r1, #16
    407e:	4618      	mov	r0, r3
    4080:	f000 f9aa 	bl	43d8 <print_int>
    4084:	e7fe      	b.n	4084 <print_fault+0x70>
    4086:	bf00      	nop
    4088:	0000536c 	.word	0x0000536c
    408c:	0000537c 	.word	0x0000537c
    4090:	e000ed28 	.word	0xe000ed28
    4094:	00005384 	.word	0x00005384
    4098:	0000538c 	.word	0x0000538c

0000409c <font_color>:
    409c:	b480      	push	{r7}
    409e:	b083      	sub	sp, #12
    40a0:	af00      	add	r7, sp, #0
    40a2:	4603      	mov	r3, r0
    40a4:	71fb      	strb	r3, [r7, #7]
    40a6:	79fb      	ldrb	r3, [r7, #7]
    40a8:	f003 030f 	and.w	r3, r3, #15
    40ac:	b2da      	uxtb	r2, r3
    40ae:	4b03      	ldr	r3, [pc, #12]	; (40bc <font_color+0x20>)
    40b0:	705a      	strb	r2, [r3, #1]
    40b2:	bf00      	nop
    40b4:	370c      	adds	r7, #12
    40b6:	46bd      	mov	sp, r7
    40b8:	bc80      	pop	{r7}
    40ba:	4770      	bx	lr
    40bc:	20000074 	.word	0x20000074

000040c0 <bg_color>:
    40c0:	b480      	push	{r7}
    40c2:	b083      	sub	sp, #12
    40c4:	af00      	add	r7, sp, #0
    40c6:	4603      	mov	r3, r0
    40c8:	71fb      	strb	r3, [r7, #7]
    40ca:	79fb      	ldrb	r3, [r7, #7]
    40cc:	f003 030f 	and.w	r3, r3, #15
    40d0:	b2da      	uxtb	r2, r3
    40d2:	4b03      	ldr	r3, [pc, #12]	; (40e0 <bg_color+0x20>)
    40d4:	701a      	strb	r2, [r3, #0]
    40d6:	bf00      	nop
    40d8:	370c      	adds	r7, #12
    40da:	46bd      	mov	sp, r7
    40dc:	bc80      	pop	{r7}
    40de:	4770      	bx	lr
    40e0:	20000074 	.word	0x20000074

000040e4 <select_font>:
    40e4:	b480      	push	{r7}
    40e6:	b083      	sub	sp, #12
    40e8:	af00      	add	r7, sp, #0
    40ea:	4603      	mov	r3, r0
    40ec:	71fb      	strb	r3, [r7, #7]
    40ee:	4a04      	ldr	r2, [pc, #16]	; (4100 <select_font+0x1c>)
    40f0:	79fb      	ldrb	r3, [r7, #7]
    40f2:	7013      	strb	r3, [r2, #0]
    40f4:	bf00      	nop
    40f6:	370c      	adds	r7, #12
    40f8:	46bd      	mov	sp, r7
    40fa:	bc80      	pop	{r7}
    40fc:	4770      	bx	lr
    40fe:	bf00      	nop
    4100:	20000070 	.word	0x20000070

00004104 <new_line>:
    4104:	b580      	push	{r7, lr}
    4106:	af00      	add	r7, sp, #0
    4108:	4b1e      	ldr	r3, [pc, #120]	; (4184 <new_line+0x80>)
    410a:	2200      	movs	r2, #0
    410c:	701a      	strb	r2, [r3, #0]
    410e:	4b1e      	ldr	r3, [pc, #120]	; (4188 <new_line+0x84>)
    4110:	781b      	ldrb	r3, [r3, #0]
    4112:	2b01      	cmp	r3, #1
    4114:	d014      	beq.n	4140 <new_line+0x3c>
    4116:	2b02      	cmp	r3, #2
    4118:	d022      	beq.n	4160 <new_line+0x5c>
    411a:	2b00      	cmp	r3, #0
    411c:	d000      	beq.n	4120 <new_line+0x1c>
    411e:	e02f      	b.n	4180 <new_line+0x7c>
    4120:	4b1a      	ldr	r3, [pc, #104]	; (418c <new_line+0x88>)
    4122:	781b      	ldrb	r3, [r3, #0]
    4124:	3306      	adds	r3, #6
    4126:	2b6b      	cmp	r3, #107	; 0x6b
    4128:	dc06      	bgt.n	4138 <new_line+0x34>
    412a:	4b18      	ldr	r3, [pc, #96]	; (418c <new_line+0x88>)
    412c:	781b      	ldrb	r3, [r3, #0]
    412e:	3306      	adds	r3, #6
    4130:	b2da      	uxtb	r2, r3
    4132:	4b16      	ldr	r3, [pc, #88]	; (418c <new_line+0x88>)
    4134:	701a      	strb	r2, [r3, #0]
    4136:	e023      	b.n	4180 <new_line+0x7c>
    4138:	2006      	movs	r0, #6
    413a:	f7fd ff0d 	bl	1f58 <gfx_scroll_up>
    413e:	e01f      	b.n	4180 <new_line+0x7c>
    4140:	4b12      	ldr	r3, [pc, #72]	; (418c <new_line+0x88>)
    4142:	781b      	ldrb	r3, [r3, #0]
    4144:	330a      	adds	r3, #10
    4146:	2b67      	cmp	r3, #103	; 0x67
    4148:	dc06      	bgt.n	4158 <new_line+0x54>
    414a:	4b10      	ldr	r3, [pc, #64]	; (418c <new_line+0x88>)
    414c:	781b      	ldrb	r3, [r3, #0]
    414e:	330a      	adds	r3, #10
    4150:	b2da      	uxtb	r2, r3
    4152:	4b0e      	ldr	r3, [pc, #56]	; (418c <new_line+0x88>)
    4154:	701a      	strb	r2, [r3, #0]
    4156:	e013      	b.n	4180 <new_line+0x7c>
    4158:	200a      	movs	r0, #10
    415a:	f7fd fefd 	bl	1f58 <gfx_scroll_up>
    415e:	e00f      	b.n	4180 <new_line+0x7c>
    4160:	4b0a      	ldr	r3, [pc, #40]	; (418c <new_line+0x88>)
    4162:	781b      	ldrb	r3, [r3, #0]
    4164:	3308      	adds	r3, #8
    4166:	2b69      	cmp	r3, #105	; 0x69
    4168:	dc06      	bgt.n	4178 <new_line+0x74>
    416a:	4b08      	ldr	r3, [pc, #32]	; (418c <new_line+0x88>)
    416c:	781b      	ldrb	r3, [r3, #0]
    416e:	3308      	adds	r3, #8
    4170:	b2da      	uxtb	r2, r3
    4172:	4b06      	ldr	r3, [pc, #24]	; (418c <new_line+0x88>)
    4174:	701a      	strb	r2, [r3, #0]
    4176:	e002      	b.n	417e <new_line+0x7a>
    4178:	2008      	movs	r0, #8
    417a:	f7fd feed 	bl	1f58 <gfx_scroll_up>
    417e:	bf00      	nop
    4180:	bf00      	nop
    4182:	bd80      	pop	{r7, pc}
    4184:	20000521 	.word	0x20000521
    4188:	20000070 	.word	0x20000070
    418c:	20000522 	.word	0x20000522

00004190 <draw_char>:
    4190:	b5b0      	push	{r4, r5, r7, lr}
    4192:	b086      	sub	sp, #24
    4194:	af00      	add	r7, sp, #0
    4196:	60f8      	str	r0, [r7, #12]
    4198:	60b9      	str	r1, [r7, #8]
    419a:	607a      	str	r2, [r7, #4]
    419c:	603b      	str	r3, [r7, #0]
    419e:	68bc      	ldr	r4, [r7, #8]
    41a0:	e026      	b.n	41f0 <draw_char+0x60>
    41a2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    41a4:	1c5a      	adds	r2, r3, #1
    41a6:	62ba      	str	r2, [r7, #40]	; 0x28
    41a8:	781b      	ldrb	r3, [r3, #0]
    41aa:	757b      	strb	r3, [r7, #21]
    41ac:	2380      	movs	r3, #128	; 0x80
    41ae:	75bb      	strb	r3, [r7, #22]
    41b0:	68fd      	ldr	r5, [r7, #12]
    41b2:	e017      	b.n	41e4 <draw_char+0x54>
    41b4:	7d7a      	ldrb	r2, [r7, #21]
    41b6:	7dbb      	ldrb	r3, [r7, #22]
    41b8:	4013      	ands	r3, r2
    41ba:	753b      	strb	r3, [r7, #20]
    41bc:	7d3b      	ldrb	r3, [r7, #20]
    41be:	2b00      	cmp	r3, #0
    41c0:	d003      	beq.n	41ca <draw_char+0x3a>
    41c2:	4b10      	ldr	r3, [pc, #64]	; (4204 <draw_char+0x74>)
    41c4:	785b      	ldrb	r3, [r3, #1]
    41c6:	75fb      	strb	r3, [r7, #23]
    41c8:	e002      	b.n	41d0 <draw_char+0x40>
    41ca:	4b0e      	ldr	r3, [pc, #56]	; (4204 <draw_char+0x74>)
    41cc:	781b      	ldrb	r3, [r3, #0]
    41ce:	75fb      	strb	r3, [r7, #23]
    41d0:	7dfb      	ldrb	r3, [r7, #23]
    41d2:	461a      	mov	r2, r3
    41d4:	4621      	mov	r1, r4
    41d6:	4628      	mov	r0, r5
    41d8:	f7fd fdd4 	bl	1d84 <gfx_plot>
    41dc:	7dbb      	ldrb	r3, [r7, #22]
    41de:	085b      	lsrs	r3, r3, #1
    41e0:	75bb      	strb	r3, [r7, #22]
    41e2:	3501      	adds	r5, #1
    41e4:	68fa      	ldr	r2, [r7, #12]
    41e6:	687b      	ldr	r3, [r7, #4]
    41e8:	4413      	add	r3, r2
    41ea:	42ab      	cmp	r3, r5
    41ec:	dce2      	bgt.n	41b4 <draw_char+0x24>
    41ee:	3401      	adds	r4, #1
    41f0:	68ba      	ldr	r2, [r7, #8]
    41f2:	683b      	ldr	r3, [r7, #0]
    41f4:	4413      	add	r3, r2
    41f6:	42a3      	cmp	r3, r4
    41f8:	dcd3      	bgt.n	41a2 <draw_char+0x12>
    41fa:	bf00      	nop
    41fc:	3718      	adds	r7, #24
    41fe:	46bd      	mov	sp, r7
    4200:	bdb0      	pop	{r4, r5, r7, pc}
    4202:	bf00      	nop
    4204:	20000074 	.word	0x20000074

00004208 <put_char>:
    4208:	b580      	push	{r7, lr}
    420a:	b084      	sub	sp, #16
    420c:	af02      	add	r7, sp, #8
    420e:	4603      	mov	r3, r0
    4210:	71fb      	strb	r3, [r7, #7]
    4212:	4b3d      	ldr	r3, [pc, #244]	; (4308 <put_char+0x100>)
    4214:	781b      	ldrb	r3, [r3, #0]
    4216:	2b01      	cmp	r3, #1
    4218:	d027      	beq.n	426a <put_char+0x62>
    421a:	2b02      	cmp	r3, #2
    421c:	d048      	beq.n	42b0 <put_char+0xa8>
    421e:	2b00      	cmp	r3, #0
    4220:	d000      	beq.n	4224 <put_char+0x1c>
    4222:	e06d      	b.n	4300 <put_char+0xf8>
    4224:	79fb      	ldrb	r3, [r7, #7]
    4226:	2b0f      	cmp	r3, #15
    4228:	d865      	bhi.n	42f6 <put_char+0xee>
    422a:	4b38      	ldr	r3, [pc, #224]	; (430c <put_char+0x104>)
    422c:	781b      	ldrb	r3, [r3, #0]
    422e:	4618      	mov	r0, r3
    4230:	4b37      	ldr	r3, [pc, #220]	; (4310 <put_char+0x108>)
    4232:	781b      	ldrb	r3, [r3, #0]
    4234:	4619      	mov	r1, r3
    4236:	79fa      	ldrb	r2, [r7, #7]
    4238:	4613      	mov	r3, r2
    423a:	005b      	lsls	r3, r3, #1
    423c:	4413      	add	r3, r2
    423e:	005b      	lsls	r3, r3, #1
    4240:	461a      	mov	r2, r3
    4242:	4b34      	ldr	r3, [pc, #208]	; (4314 <put_char+0x10c>)
    4244:	4413      	add	r3, r2
    4246:	9300      	str	r3, [sp, #0]
    4248:	2306      	movs	r3, #6
    424a:	2204      	movs	r2, #4
    424c:	f7ff ffa0 	bl	4190 <draw_char>
    4250:	4b2e      	ldr	r3, [pc, #184]	; (430c <put_char+0x104>)
    4252:	781b      	ldrb	r3, [r3, #0]
    4254:	3304      	adds	r3, #4
    4256:	b2da      	uxtb	r2, r3
    4258:	4b2c      	ldr	r3, [pc, #176]	; (430c <put_char+0x104>)
    425a:	701a      	strb	r2, [r3, #0]
    425c:	4b2b      	ldr	r3, [pc, #172]	; (430c <put_char+0x104>)
    425e:	781b      	ldrb	r3, [r3, #0]
    4260:	2bb1      	cmp	r3, #177	; 0xb1
    4262:	d948      	bls.n	42f6 <put_char+0xee>
    4264:	f7ff ff4e 	bl	4104 <new_line>
    4268:	e045      	b.n	42f6 <put_char+0xee>
    426a:	79fb      	ldrb	r3, [r7, #7]
    426c:	2b0f      	cmp	r3, #15
    426e:	d844      	bhi.n	42fa <put_char+0xf2>
    4270:	4b26      	ldr	r3, [pc, #152]	; (430c <put_char+0x104>)
    4272:	781b      	ldrb	r3, [r3, #0]
    4274:	4618      	mov	r0, r3
    4276:	4b26      	ldr	r3, [pc, #152]	; (4310 <put_char+0x108>)
    4278:	781b      	ldrb	r3, [r3, #0]
    427a:	4619      	mov	r1, r3
    427c:	79fa      	ldrb	r2, [r7, #7]
    427e:	4613      	mov	r3, r2
    4280:	009b      	lsls	r3, r3, #2
    4282:	4413      	add	r3, r2
    4284:	005b      	lsls	r3, r3, #1
    4286:	461a      	mov	r2, r3
    4288:	4b23      	ldr	r3, [pc, #140]	; (4318 <put_char+0x110>)
    428a:	4413      	add	r3, r2
    428c:	9300      	str	r3, [sp, #0]
    428e:	230a      	movs	r3, #10
    4290:	2208      	movs	r2, #8
    4292:	f7ff ff7d 	bl	4190 <draw_char>
    4296:	4b1d      	ldr	r3, [pc, #116]	; (430c <put_char+0x104>)
    4298:	781b      	ldrb	r3, [r3, #0]
    429a:	3308      	adds	r3, #8
    429c:	b2da      	uxtb	r2, r3
    429e:	4b1b      	ldr	r3, [pc, #108]	; (430c <put_char+0x104>)
    42a0:	701a      	strb	r2, [r3, #0]
    42a2:	4b1a      	ldr	r3, [pc, #104]	; (430c <put_char+0x104>)
    42a4:	781b      	ldrb	r3, [r3, #0]
    42a6:	2bad      	cmp	r3, #173	; 0xad
    42a8:	d927      	bls.n	42fa <put_char+0xf2>
    42aa:	f7ff ff2b 	bl	4104 <new_line>
    42ae:	e024      	b.n	42fa <put_char+0xf2>
    42b0:	79fb      	ldrb	r3, [r7, #7]
    42b2:	2b1f      	cmp	r3, #31
    42b4:	d923      	bls.n	42fe <put_char+0xf6>
    42b6:	79fb      	ldrb	r3, [r7, #7]
    42b8:	2b84      	cmp	r3, #132	; 0x84
    42ba:	d820      	bhi.n	42fe <put_char+0xf6>
    42bc:	4b13      	ldr	r3, [pc, #76]	; (430c <put_char+0x104>)
    42be:	781b      	ldrb	r3, [r3, #0]
    42c0:	4618      	mov	r0, r3
    42c2:	4b13      	ldr	r3, [pc, #76]	; (4310 <put_char+0x108>)
    42c4:	781b      	ldrb	r3, [r3, #0]
    42c6:	4619      	mov	r1, r3
    42c8:	79fb      	ldrb	r3, [r7, #7]
    42ca:	3b20      	subs	r3, #32
    42cc:	00db      	lsls	r3, r3, #3
    42ce:	4a13      	ldr	r2, [pc, #76]	; (431c <put_char+0x114>)
    42d0:	4413      	add	r3, r2
    42d2:	9300      	str	r3, [sp, #0]
    42d4:	2308      	movs	r3, #8
    42d6:	2206      	movs	r2, #6
    42d8:	f7ff ff5a 	bl	4190 <draw_char>
    42dc:	4b0b      	ldr	r3, [pc, #44]	; (430c <put_char+0x104>)
    42de:	781b      	ldrb	r3, [r3, #0]
    42e0:	3306      	adds	r3, #6
    42e2:	b2da      	uxtb	r2, r3
    42e4:	4b09      	ldr	r3, [pc, #36]	; (430c <put_char+0x104>)
    42e6:	701a      	strb	r2, [r3, #0]
    42e8:	4b08      	ldr	r3, [pc, #32]	; (430c <put_char+0x104>)
    42ea:	781b      	ldrb	r3, [r3, #0]
    42ec:	2baf      	cmp	r3, #175	; 0xaf
    42ee:	d906      	bls.n	42fe <put_char+0xf6>
    42f0:	f7ff ff08 	bl	4104 <new_line>
    42f4:	e003      	b.n	42fe <put_char+0xf6>
    42f6:	bf00      	nop
    42f8:	e002      	b.n	4300 <put_char+0xf8>
    42fa:	bf00      	nop
    42fc:	e000      	b.n	4300 <put_char+0xf8>
    42fe:	bf00      	nop
    4300:	bf00      	nop
    4302:	3708      	adds	r7, #8
    4304:	46bd      	mov	sp, r7
    4306:	bd80      	pop	{r7, pc}
    4308:	20000070 	.word	0x20000070
    430c:	20000521 	.word	0x20000521
    4310:	20000522 	.word	0x20000522
    4314:	00004d4c 	.word	0x00004d4c
    4318:	00004dac 	.word	0x00004dac
    431c:	00004e4c 	.word	0x00004e4c

00004320 <set_cursor>:
    4320:	b480      	push	{r7}
    4322:	b083      	sub	sp, #12
    4324:	af00      	add	r7, sp, #0
    4326:	4603      	mov	r3, r0
    4328:	460a      	mov	r2, r1
    432a:	71fb      	strb	r3, [r7, #7]
    432c:	4613      	mov	r3, r2
    432e:	71bb      	strb	r3, [r7, #6]
    4330:	4a05      	ldr	r2, [pc, #20]	; (4348 <set_cursor+0x28>)
    4332:	79fb      	ldrb	r3, [r7, #7]
    4334:	7013      	strb	r3, [r2, #0]
    4336:	4a05      	ldr	r2, [pc, #20]	; (434c <set_cursor+0x2c>)
    4338:	79bb      	ldrb	r3, [r7, #6]
    433a:	7013      	strb	r3, [r2, #0]
    433c:	bf00      	nop
    433e:	370c      	adds	r7, #12
    4340:	46bd      	mov	sp, r7
    4342:	bc80      	pop	{r7}
    4344:	4770      	bx	lr
    4346:	bf00      	nop
    4348:	20000521 	.word	0x20000521
    434c:	20000522 	.word	0x20000522

00004350 <get_cursor>:
    4350:	b480      	push	{r7}
    4352:	af00      	add	r7, sp, #0
    4354:	4b06      	ldr	r3, [pc, #24]	; (4370 <get_cursor+0x20>)
    4356:	781b      	ldrb	r3, [r3, #0]
    4358:	b29b      	uxth	r3, r3
    435a:	021b      	lsls	r3, r3, #8
    435c:	b29a      	uxth	r2, r3
    435e:	4b05      	ldr	r3, [pc, #20]	; (4374 <get_cursor+0x24>)
    4360:	781b      	ldrb	r3, [r3, #0]
    4362:	b29b      	uxth	r3, r3
    4364:	4413      	add	r3, r2
    4366:	b29b      	uxth	r3, r3
    4368:	4618      	mov	r0, r3
    436a:	46bd      	mov	sp, r7
    436c:	bc80      	pop	{r7}
    436e:	4770      	bx	lr
    4370:	20000521 	.word	0x20000521
    4374:	20000522 	.word	0x20000522

00004378 <print>:
    4378:	b580      	push	{r7, lr}
    437a:	b084      	sub	sp, #16
    437c:	af00      	add	r7, sp, #0
    437e:	6078      	str	r0, [r7, #4]
    4380:	e011      	b.n	43a6 <print+0x2e>
    4382:	7bfb      	ldrb	r3, [r7, #15]
    4384:	2b0a      	cmp	r3, #10
    4386:	d004      	beq.n	4392 <print+0x1a>
    4388:	2b0d      	cmp	r3, #13
    438a:	d002      	beq.n	4392 <print+0x1a>
    438c:	2b08      	cmp	r3, #8
    438e:	d003      	beq.n	4398 <print+0x20>
    4390:	e005      	b.n	439e <print+0x26>
    4392:	f7ff feb7 	bl	4104 <new_line>
    4396:	e006      	b.n	43a6 <print+0x2e>
    4398:	f000 f892 	bl	44c0 <cursor_left>
    439c:	e003      	b.n	43a6 <print+0x2e>
    439e:	7bfb      	ldrb	r3, [r7, #15]
    43a0:	4618      	mov	r0, r3
    43a2:	f7ff ff31 	bl	4208 <put_char>
    43a6:	687b      	ldr	r3, [r7, #4]
    43a8:	1c5a      	adds	r2, r3, #1
    43aa:	607a      	str	r2, [r7, #4]
    43ac:	781b      	ldrb	r3, [r3, #0]
    43ae:	73fb      	strb	r3, [r7, #15]
    43b0:	7bfb      	ldrb	r3, [r7, #15]
    43b2:	2b00      	cmp	r3, #0
    43b4:	d1e5      	bne.n	4382 <print+0xa>
    43b6:	bf00      	nop
    43b8:	3710      	adds	r7, #16
    43ba:	46bd      	mov	sp, r7
    43bc:	bd80      	pop	{r7, pc}

000043be <println>:
    43be:	b580      	push	{r7, lr}
    43c0:	b082      	sub	sp, #8
    43c2:	af00      	add	r7, sp, #0
    43c4:	6078      	str	r0, [r7, #4]
    43c6:	6878      	ldr	r0, [r7, #4]
    43c8:	f7ff ffd6 	bl	4378 <print>
    43cc:	f7ff fe9a 	bl	4104 <new_line>
    43d0:	bf00      	nop
    43d2:	3708      	adds	r7, #8
    43d4:	46bd      	mov	sp, r7
    43d6:	bd80      	pop	{r7, pc}

000043d8 <print_int>:
    43d8:	b580      	push	{r7, lr}
    43da:	b08a      	sub	sp, #40	; 0x28
    43dc:	af00      	add	r7, sp, #0
    43de:	6078      	str	r0, [r7, #4]
    43e0:	460b      	mov	r3, r1
    43e2:	70fb      	strb	r3, [r7, #3]
    43e4:	2300      	movs	r3, #0
    43e6:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    43ea:	2300      	movs	r3, #0
    43ec:	76fb      	strb	r3, [r7, #27]
    43ee:	2320      	movs	r3, #32
    43f0:	76bb      	strb	r3, [r7, #26]
    43f2:	230e      	movs	r3, #14
    43f4:	623b      	str	r3, [r7, #32]
    43f6:	687b      	ldr	r3, [r7, #4]
    43f8:	2b00      	cmp	r3, #0
    43fa:	da27      	bge.n	444c <print_int+0x74>
    43fc:	2301      	movs	r3, #1
    43fe:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4402:	687b      	ldr	r3, [r7, #4]
    4404:	425b      	negs	r3, r3
    4406:	607b      	str	r3, [r7, #4]
    4408:	e020      	b.n	444c <print_int+0x74>
    440a:	78fa      	ldrb	r2, [r7, #3]
    440c:	687b      	ldr	r3, [r7, #4]
    440e:	fb93 f1f2 	sdiv	r1, r3, r2
    4412:	fb02 f201 	mul.w	r2, r2, r1
    4416:	1a9b      	subs	r3, r3, r2
    4418:	61fb      	str	r3, [r7, #28]
    441a:	69fb      	ldr	r3, [r7, #28]
    441c:	2b09      	cmp	r3, #9
    441e:	dd02      	ble.n	4426 <print_int+0x4e>
    4420:	69fb      	ldr	r3, [r7, #28]
    4422:	3307      	adds	r3, #7
    4424:	61fb      	str	r3, [r7, #28]
    4426:	6a3b      	ldr	r3, [r7, #32]
    4428:	3b01      	subs	r3, #1
    442a:	623b      	str	r3, [r7, #32]
    442c:	69fb      	ldr	r3, [r7, #28]
    442e:	3330      	adds	r3, #48	; 0x30
    4430:	61fb      	str	r3, [r7, #28]
    4432:	69fb      	ldr	r3, [r7, #28]
    4434:	b2d9      	uxtb	r1, r3
    4436:	f107 020c 	add.w	r2, r7, #12
    443a:	6a3b      	ldr	r3, [r7, #32]
    443c:	4413      	add	r3, r2
    443e:	460a      	mov	r2, r1
    4440:	701a      	strb	r2, [r3, #0]
    4442:	78fb      	ldrb	r3, [r7, #3]
    4444:	687a      	ldr	r2, [r7, #4]
    4446:	fb92 f3f3 	sdiv	r3, r2, r3
    444a:	607b      	str	r3, [r7, #4]
    444c:	6a3b      	ldr	r3, [r7, #32]
    444e:	2b01      	cmp	r3, #1
    4450:	dd02      	ble.n	4458 <print_int+0x80>
    4452:	687b      	ldr	r3, [r7, #4]
    4454:	2b00      	cmp	r3, #0
    4456:	d1d8      	bne.n	440a <print_int+0x32>
    4458:	6a3b      	ldr	r3, [r7, #32]
    445a:	2b0e      	cmp	r3, #14
    445c:	d108      	bne.n	4470 <print_int+0x98>
    445e:	6a3b      	ldr	r3, [r7, #32]
    4460:	3b01      	subs	r3, #1
    4462:	623b      	str	r3, [r7, #32]
    4464:	f107 020c 	add.w	r2, r7, #12
    4468:	6a3b      	ldr	r3, [r7, #32]
    446a:	4413      	add	r3, r2
    446c:	2230      	movs	r2, #48	; 0x30
    446e:	701a      	strb	r2, [r3, #0]
    4470:	78fb      	ldrb	r3, [r7, #3]
    4472:	2b0a      	cmp	r3, #10
    4474:	d10d      	bne.n	4492 <print_int+0xba>
    4476:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    447a:	2b00      	cmp	r3, #0
    447c:	d009      	beq.n	4492 <print_int+0xba>
    447e:	6a3b      	ldr	r3, [r7, #32]
    4480:	3b01      	subs	r3, #1
    4482:	623b      	str	r3, [r7, #32]
    4484:	f107 020c 	add.w	r2, r7, #12
    4488:	6a3b      	ldr	r3, [r7, #32]
    448a:	4413      	add	r3, r2
    448c:	222d      	movs	r2, #45	; 0x2d
    448e:	701a      	strb	r2, [r3, #0]
    4490:	e00b      	b.n	44aa <print_int+0xd2>
    4492:	78fb      	ldrb	r3, [r7, #3]
    4494:	2b10      	cmp	r3, #16
    4496:	d108      	bne.n	44aa <print_int+0xd2>
    4498:	6a3b      	ldr	r3, [r7, #32]
    449a:	3b01      	subs	r3, #1
    449c:	623b      	str	r3, [r7, #32]
    449e:	f107 020c 	add.w	r2, r7, #12
    44a2:	6a3b      	ldr	r3, [r7, #32]
    44a4:	4413      	add	r3, r2
    44a6:	2224      	movs	r2, #36	; 0x24
    44a8:	701a      	strb	r2, [r3, #0]
    44aa:	f107 020c 	add.w	r2, r7, #12
    44ae:	6a3b      	ldr	r3, [r7, #32]
    44b0:	4413      	add	r3, r2
    44b2:	4618      	mov	r0, r3
    44b4:	f7ff ff60 	bl	4378 <print>
    44b8:	bf00      	nop
    44ba:	3728      	adds	r7, #40	; 0x28
    44bc:	46bd      	mov	sp, r7
    44be:	bd80      	pop	{r7, pc}

000044c0 <cursor_left>:
    44c0:	b480      	push	{r7}
    44c2:	af00      	add	r7, sp, #0
    44c4:	4b1a      	ldr	r3, [pc, #104]	; (4530 <cursor_left+0x70>)
    44c6:	781b      	ldrb	r3, [r3, #0]
    44c8:	2b01      	cmp	r3, #1
    44ca:	d010      	beq.n	44ee <cursor_left+0x2e>
    44cc:	2b02      	cmp	r3, #2
    44ce:	d01a      	beq.n	4506 <cursor_left+0x46>
    44d0:	2b00      	cmp	r3, #0
    44d2:	d000      	beq.n	44d6 <cursor_left+0x16>
    44d4:	e028      	b.n	4528 <cursor_left+0x68>
    44d6:	4b17      	ldr	r3, [pc, #92]	; (4534 <cursor_left+0x74>)
    44d8:	781b      	ldrb	r3, [r3, #0]
    44da:	3b04      	subs	r3, #4
    44dc:	2b00      	cmp	r3, #0
    44de:	db1e      	blt.n	451e <cursor_left+0x5e>
    44e0:	4b14      	ldr	r3, [pc, #80]	; (4534 <cursor_left+0x74>)
    44e2:	781b      	ldrb	r3, [r3, #0]
    44e4:	3b04      	subs	r3, #4
    44e6:	b2da      	uxtb	r2, r3
    44e8:	4b12      	ldr	r3, [pc, #72]	; (4534 <cursor_left+0x74>)
    44ea:	701a      	strb	r2, [r3, #0]
    44ec:	e017      	b.n	451e <cursor_left+0x5e>
    44ee:	4b11      	ldr	r3, [pc, #68]	; (4534 <cursor_left+0x74>)
    44f0:	781b      	ldrb	r3, [r3, #0]
    44f2:	3b08      	subs	r3, #8
    44f4:	2b00      	cmp	r3, #0
    44f6:	db14      	blt.n	4522 <cursor_left+0x62>
    44f8:	4b0e      	ldr	r3, [pc, #56]	; (4534 <cursor_left+0x74>)
    44fa:	781b      	ldrb	r3, [r3, #0]
    44fc:	3b08      	subs	r3, #8
    44fe:	b2da      	uxtb	r2, r3
    4500:	4b0c      	ldr	r3, [pc, #48]	; (4534 <cursor_left+0x74>)
    4502:	701a      	strb	r2, [r3, #0]
    4504:	e00d      	b.n	4522 <cursor_left+0x62>
    4506:	4b0b      	ldr	r3, [pc, #44]	; (4534 <cursor_left+0x74>)
    4508:	781b      	ldrb	r3, [r3, #0]
    450a:	3b06      	subs	r3, #6
    450c:	2b00      	cmp	r3, #0
    450e:	db0a      	blt.n	4526 <cursor_left+0x66>
    4510:	4b08      	ldr	r3, [pc, #32]	; (4534 <cursor_left+0x74>)
    4512:	781b      	ldrb	r3, [r3, #0]
    4514:	3b06      	subs	r3, #6
    4516:	b2da      	uxtb	r2, r3
    4518:	4b06      	ldr	r3, [pc, #24]	; (4534 <cursor_left+0x74>)
    451a:	701a      	strb	r2, [r3, #0]
    451c:	e003      	b.n	4526 <cursor_left+0x66>
    451e:	bf00      	nop
    4520:	e002      	b.n	4528 <cursor_left+0x68>
    4522:	bf00      	nop
    4524:	e000      	b.n	4528 <cursor_left+0x68>
    4526:	bf00      	nop
    4528:	bf00      	nop
    452a:	46bd      	mov	sp, r7
    452c:	bc80      	pop	{r7}
    452e:	4770      	bx	lr
    4530:	20000070 	.word	0x20000070
    4534:	20000521 	.word	0x20000521

00004538 <text_scroller>:
    4538:	b580      	push	{r7, lr}
    453a:	b084      	sub	sp, #16
    453c:	af00      	add	r7, sp, #0
    453e:	6078      	str	r0, [r7, #4]
    4540:	460b      	mov	r3, r1
    4542:	70fb      	strb	r3, [r7, #3]
    4544:	f7fd fcb4 	bl	1eb0 <gfx_cls>
    4548:	2002      	movs	r0, #2
    454a:	f7ff fdcb 	bl	40e4 <select_font>
    454e:	687b      	ldr	r3, [r7, #4]
    4550:	1c5a      	adds	r2, r3, #1
    4552:	607a      	str	r2, [r7, #4]
    4554:	781b      	ldrb	r3, [r3, #0]
    4556:	73fb      	strb	r3, [r7, #15]
    4558:	e035      	b.n	45c6 <text_scroller+0x8e>
    455a:	2120      	movs	r1, #32
    455c:	2000      	movs	r0, #0
    455e:	f7ff fedf 	bl	4320 <set_cursor>
    4562:	e00e      	b.n	4582 <text_scroller+0x4a>
    4564:	7bfb      	ldrb	r3, [r7, #15]
    4566:	4618      	mov	r0, r3
    4568:	f7ff fe4e 	bl	4208 <put_char>
    456c:	687b      	ldr	r3, [r7, #4]
    456e:	1c5a      	adds	r2, r3, #1
    4570:	607a      	str	r2, [r7, #4]
    4572:	781b      	ldrb	r3, [r3, #0]
    4574:	73fb      	strb	r3, [r7, #15]
    4576:	200b      	movs	r0, #11
    4578:	f7fc ffee 	bl	1558 <btn_query_down>
    457c:	4603      	mov	r3, r0
    457e:	2b00      	cmp	r3, #0
    4580:	d13c      	bne.n	45fc <text_scroller+0xc4>
    4582:	7bfb      	ldrb	r3, [r7, #15]
    4584:	2b00      	cmp	r3, #0
    4586:	d002      	beq.n	458e <text_scroller+0x56>
    4588:	7bfb      	ldrb	r3, [r7, #15]
    458a:	2b0a      	cmp	r3, #10
    458c:	d1ea      	bne.n	4564 <text_scroller+0x2c>
    458e:	2300      	movs	r3, #0
    4590:	73bb      	strb	r3, [r7, #14]
    4592:	e010      	b.n	45b6 <text_scroller+0x7e>
    4594:	78fb      	ldrb	r3, [r7, #3]
    4596:	b29b      	uxth	r3, r3
    4598:	4618      	mov	r0, r3
    459a:	f000 fb9f 	bl	4cdc <game_pause>
    459e:	2001      	movs	r0, #1
    45a0:	f7fd fcda 	bl	1f58 <gfx_scroll_up>
    45a4:	200b      	movs	r0, #11
    45a6:	f7fc ffd7 	bl	1558 <btn_query_down>
    45aa:	4603      	mov	r3, r0
    45ac:	2b00      	cmp	r3, #0
    45ae:	d127      	bne.n	4600 <text_scroller+0xc8>
    45b0:	7bbb      	ldrb	r3, [r7, #14]
    45b2:	3301      	adds	r3, #1
    45b4:	73bb      	strb	r3, [r7, #14]
    45b6:	7bbb      	ldrb	r3, [r7, #14]
    45b8:	2b07      	cmp	r3, #7
    45ba:	d9eb      	bls.n	4594 <text_scroller+0x5c>
    45bc:	687b      	ldr	r3, [r7, #4]
    45be:	1c5a      	adds	r2, r3, #1
    45c0:	607a      	str	r2, [r7, #4]
    45c2:	781b      	ldrb	r3, [r3, #0]
    45c4:	73fb      	strb	r3, [r7, #15]
    45c6:	7bfb      	ldrb	r3, [r7, #15]
    45c8:	2b00      	cmp	r3, #0
    45ca:	d1c6      	bne.n	455a <text_scroller+0x22>
    45cc:	2300      	movs	r3, #0
    45ce:	73fb      	strb	r3, [r7, #15]
    45d0:	e010      	b.n	45f4 <text_scroller+0xbc>
    45d2:	78fb      	ldrb	r3, [r7, #3]
    45d4:	b29b      	uxth	r3, r3
    45d6:	4618      	mov	r0, r3
    45d8:	f000 fb80 	bl	4cdc <game_pause>
    45dc:	2001      	movs	r0, #1
    45de:	f7fd fcbb 	bl	1f58 <gfx_scroll_up>
    45e2:	200b      	movs	r0, #11
    45e4:	f7fc ffb8 	bl	1558 <btn_query_down>
    45e8:	4603      	mov	r3, r0
    45ea:	2b00      	cmp	r3, #0
    45ec:	d10a      	bne.n	4604 <text_scroller+0xcc>
    45ee:	7bfb      	ldrb	r3, [r7, #15]
    45f0:	3301      	adds	r3, #1
    45f2:	73fb      	strb	r3, [r7, #15]
    45f4:	7bfb      	ldrb	r3, [r7, #15]
    45f6:	2b1f      	cmp	r3, #31
    45f8:	d9eb      	bls.n	45d2 <text_scroller+0x9a>
    45fa:	e004      	b.n	4606 <text_scroller+0xce>
    45fc:	bf00      	nop
    45fe:	e002      	b.n	4606 <text_scroller+0xce>
    4600:	bf00      	nop
    4602:	e000      	b.n	4606 <text_scroller+0xce>
    4604:	bf00      	nop
    4606:	f7fd fc53 	bl	1eb0 <gfx_cls>
    460a:	200b      	movs	r0, #11
    460c:	f7fc ffe8 	bl	15e0 <btn_wait_up>
    4610:	bf00      	nop
    4612:	3710      	adds	r7, #16
    4614:	46bd      	mov	sp, r7
    4616:	bd80      	pop	{r7, pc}

00004618 <prompt_btn>:
    4618:	b580      	push	{r7, lr}
    461a:	af00      	add	r7, sp, #0
    461c:	4802      	ldr	r0, [pc, #8]	; (4628 <prompt_btn+0x10>)
    461e:	f7ff feab 	bl	4378 <print>
    4622:	bf00      	nop
    4624:	bd80      	pop	{r7, pc}
    4626:	bf00      	nop
    4628:	000053d8 	.word	0x000053d8

0000462c <clear_screen>:
    462c:	b580      	push	{r7, lr}
    462e:	af00      	add	r7, sp, #0
    4630:	f7fd fc3e 	bl	1eb0 <gfx_cls>
    4634:	4b03      	ldr	r3, [pc, #12]	; (4644 <clear_screen+0x18>)
    4636:	2200      	movs	r2, #0
    4638:	701a      	strb	r2, [r3, #0]
    463a:	4b03      	ldr	r3, [pc, #12]	; (4648 <clear_screen+0x1c>)
    463c:	2200      	movs	r2, #0
    463e:	701a      	strb	r2, [r3, #0]
    4640:	bf00      	nop
    4642:	bd80      	pop	{r7, pc}
    4644:	20000521 	.word	0x20000521
    4648:	20000522 	.word	0x20000522

0000464c <show_cursor>:
    464c:	b580      	push	{r7, lr}
    464e:	b084      	sub	sp, #16
    4650:	af00      	add	r7, sp, #0
    4652:	6078      	str	r0, [r7, #4]
    4654:	687b      	ldr	r3, [r7, #4]
    4656:	2b00      	cmp	r3, #0
    4658:	d001      	beq.n	465e <show_cursor+0x12>
    465a:	230f      	movs	r3, #15
    465c:	e000      	b.n	4660 <show_cursor+0x14>
    465e:	2300      	movs	r3, #0
    4660:	72fb      	strb	r3, [r7, #11]
    4662:	4b0c      	ldr	r3, [pc, #48]	; (4694 <show_cursor+0x48>)
    4664:	781b      	ldrb	r3, [r3, #0]
    4666:	60fb      	str	r3, [r7, #12]
    4668:	e00a      	b.n	4680 <show_cursor+0x34>
    466a:	4b0b      	ldr	r3, [pc, #44]	; (4698 <show_cursor+0x4c>)
    466c:	781b      	ldrb	r3, [r3, #0]
    466e:	3307      	adds	r3, #7
    4670:	7afa      	ldrb	r2, [r7, #11]
    4672:	4619      	mov	r1, r3
    4674:	68f8      	ldr	r0, [r7, #12]
    4676:	f7fd fb85 	bl	1d84 <gfx_plot>
    467a:	68fb      	ldr	r3, [r7, #12]
    467c:	3301      	adds	r3, #1
    467e:	60fb      	str	r3, [r7, #12]
    4680:	4b04      	ldr	r3, [pc, #16]	; (4694 <show_cursor+0x48>)
    4682:	781b      	ldrb	r3, [r3, #0]
    4684:	1d9a      	adds	r2, r3, #6
    4686:	68fb      	ldr	r3, [r7, #12]
    4688:	429a      	cmp	r2, r3
    468a:	dcee      	bgt.n	466a <show_cursor+0x1e>
    468c:	bf00      	nop
    468e:	3710      	adds	r7, #16
    4690:	46bd      	mov	sp, r7
    4692:	bd80      	pop	{r7, pc}
    4694:	20000521 	.word	0x20000521
    4698:	20000522 	.word	0x20000522

0000469c <tvout_init>:
    469c:	b580      	push	{r7, lr}
    469e:	af00      	add	r7, sp, #0
    46a0:	4b3e      	ldr	r3, [pc, #248]	; (479c <tvout_init+0x100>)
    46a2:	4a3f      	ldr	r2, [pc, #252]	; (47a0 <tvout_init+0x104>)
    46a4:	601a      	str	r2, [r3, #0]
    46a6:	4b3f      	ldr	r3, [pc, #252]	; (47a4 <tvout_init+0x108>)
    46a8:	4a3f      	ldr	r2, [pc, #252]	; (47a8 <tvout_init+0x10c>)
    46aa:	601a      	str	r2, [r3, #0]
    46ac:	220a      	movs	r2, #10
    46ae:	2108      	movs	r1, #8
    46b0:	483a      	ldr	r0, [pc, #232]	; (479c <tvout_init+0x100>)
    46b2:	f7fd fa78 	bl	1ba6 <config_pin>
    46b6:	4b39      	ldr	r3, [pc, #228]	; (479c <tvout_init+0x100>)
    46b8:	2200      	movs	r2, #0
    46ba:	60da      	str	r2, [r3, #12]
    46bc:	4a3b      	ldr	r2, [pc, #236]	; (47ac <tvout_init+0x110>)
    46be:	4b3b      	ldr	r3, [pc, #236]	; (47ac <tvout_init+0x110>)
    46c0:	699b      	ldr	r3, [r3, #24]
    46c2:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    46c6:	6193      	str	r3, [r2, #24]
    46c8:	4b39      	ldr	r3, [pc, #228]	; (47b0 <tvout_init+0x114>)
    46ca:	2278      	movs	r2, #120	; 0x78
    46cc:	619a      	str	r2, [r3, #24]
    46ce:	4b38      	ldr	r3, [pc, #224]	; (47b0 <tvout_init+0x114>)
    46d0:	2201      	movs	r2, #1
    46d2:	621a      	str	r2, [r3, #32]
    46d4:	4b36      	ldr	r3, [pc, #216]	; (47b0 <tvout_init+0x114>)
    46d6:	2284      	movs	r2, #132	; 0x84
    46d8:	601a      	str	r2, [r3, #0]
    46da:	4b35      	ldr	r3, [pc, #212]	; (47b0 <tvout_init+0x114>)
    46dc:	f241 12c5 	movw	r2, #4549	; 0x11c5
    46e0:	62da      	str	r2, [r3, #44]	; 0x2c
    46e2:	4b33      	ldr	r3, [pc, #204]	; (47b0 <tvout_init+0x114>)
    46e4:	f44f 72a8 	mov.w	r2, #336	; 0x150
    46e8:	635a      	str	r2, [r3, #52]	; 0x34
    46ea:	4b31      	ldr	r3, [pc, #196]	; (47b0 <tvout_init+0x114>)
    46ec:	f240 1265 	movw	r2, #357	; 0x165
    46f0:	639a      	str	r2, [r3, #56]	; 0x38
    46f2:	4a2f      	ldr	r2, [pc, #188]	; (47b0 <tvout_init+0x114>)
    46f4:	4b2e      	ldr	r3, [pc, #184]	; (47b0 <tvout_init+0x114>)
    46f6:	695b      	ldr	r3, [r3, #20]
    46f8:	f043 0301 	orr.w	r3, r3, #1
    46fc:	6153      	str	r3, [r2, #20]
    46fe:	4b2c      	ldr	r3, [pc, #176]	; (47b0 <tvout_init+0x114>)
    4700:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4704:	645a      	str	r2, [r3, #68]	; 0x44
    4706:	4b2a      	ldr	r3, [pc, #168]	; (47b0 <tvout_init+0x114>)
    4708:	2200      	movs	r2, #0
    470a:	611a      	str	r2, [r3, #16]
    470c:	4a28      	ldr	r2, [pc, #160]	; (47b0 <tvout_init+0x114>)
    470e:	4b28      	ldr	r3, [pc, #160]	; (47b0 <tvout_init+0x114>)
    4710:	68db      	ldr	r3, [r3, #12]
    4712:	f043 0301 	orr.w	r3, r3, #1
    4716:	60d3      	str	r3, [r2, #12]
    4718:	2100      	movs	r1, #0
    471a:	2019      	movs	r0, #25
    471c:	f7fe fb6e 	bl	2dfc <set_int_priority>
    4720:	2100      	movs	r1, #0
    4722:	201b      	movs	r0, #27
    4724:	f7fe fb6a 	bl	2dfc <set_int_priority>
    4728:	2019      	movs	r0, #25
    472a:	f7fe faad 	bl	2c88 <enable_interrupt>
    472e:	201b      	movs	r0, #27
    4730:	f7fe faaa 	bl	2c88 <enable_interrupt>
    4734:	4a1e      	ldr	r2, [pc, #120]	; (47b0 <tvout_init+0x114>)
    4736:	4b1e      	ldr	r3, [pc, #120]	; (47b0 <tvout_init+0x114>)
    4738:	681b      	ldr	r3, [r3, #0]
    473a:	f043 0301 	orr.w	r3, r3, #1
    473e:	6013      	str	r3, [r2, #0]
    4740:	220a      	movs	r2, #10
    4742:	2100      	movs	r1, #0
    4744:	481b      	ldr	r0, [pc, #108]	; (47b4 <tvout_init+0x118>)
    4746:	f7fd fa2e 	bl	1ba6 <config_pin>
    474a:	4a18      	ldr	r2, [pc, #96]	; (47ac <tvout_init+0x110>)
    474c:	4b17      	ldr	r3, [pc, #92]	; (47ac <tvout_init+0x110>)
    474e:	69db      	ldr	r3, [r3, #28]
    4750:	f043 0302 	orr.w	r3, r3, #2
    4754:	61d3      	str	r3, [r2, #28]
    4756:	4b18      	ldr	r3, [pc, #96]	; (47b8 <tvout_init+0x11c>)
    4758:	2278      	movs	r2, #120	; 0x78
    475a:	61da      	str	r2, [r3, #28]
    475c:	4b16      	ldr	r3, [pc, #88]	; (47b8 <tvout_init+0x11c>)
    475e:	2284      	movs	r2, #132	; 0x84
    4760:	601a      	str	r2, [r3, #0]
    4762:	4b15      	ldr	r3, [pc, #84]	; (47b8 <tvout_init+0x11c>)
    4764:	2213      	movs	r2, #19
    4766:	62da      	str	r2, [r3, #44]	; 0x2c
    4768:	4b13      	ldr	r3, [pc, #76]	; (47b8 <tvout_init+0x11c>)
    476a:	220a      	movs	r2, #10
    476c:	63da      	str	r2, [r3, #60]	; 0x3c
    476e:	4a12      	ldr	r2, [pc, #72]	; (47b8 <tvout_init+0x11c>)
    4770:	4b11      	ldr	r3, [pc, #68]	; (47b8 <tvout_init+0x11c>)
    4772:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4774:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4778:	6453      	str	r3, [r2, #68]	; 0x44
    477a:	4a0f      	ldr	r2, [pc, #60]	; (47b8 <tvout_init+0x11c>)
    477c:	4b0e      	ldr	r3, [pc, #56]	; (47b8 <tvout_init+0x11c>)
    477e:	695b      	ldr	r3, [r3, #20]
    4780:	f043 0301 	orr.w	r3, r3, #1
    4784:	6153      	str	r3, [r2, #20]
    4786:	4b0c      	ldr	r3, [pc, #48]	; (47b8 <tvout_init+0x11c>)
    4788:	2200      	movs	r2, #0
    478a:	611a      	str	r2, [r3, #16]
    478c:	4a0a      	ldr	r2, [pc, #40]	; (47b8 <tvout_init+0x11c>)
    478e:	4b0a      	ldr	r3, [pc, #40]	; (47b8 <tvout_init+0x11c>)
    4790:	681b      	ldr	r3, [r3, #0]
    4792:	f043 0301 	orr.w	r3, r3, #1
    4796:	6013      	str	r3, [r2, #0]
    4798:	bf00      	nop
    479a:	bd80      	pop	{r7, pc}
    479c:	40010800 	.word	0x40010800
    47a0:	88883333 	.word	0x88883333
    47a4:	40010804 	.word	0x40010804
    47a8:	84484444 	.word	0x84484444
    47ac:	40021000 	.word	0x40021000
    47b0:	40012c00 	.word	0x40012c00
    47b4:	40010c00 	.word	0x40010c00
    47b8:	40000400 	.word	0x40000400

000047bc <TV_OUT_handler>:
    47bc:	4668      	mov	r0, sp
    47be:	f020 0107 	bic.w	r1, r0, #7
    47c2:	468d      	mov	sp, r1
    47c4:	b471      	push	{r0, r4, r5, r6}
    47c6:	4a31      	ldr	r2, [pc, #196]	; (488c <TV_OUT_handler+0xd0>)
    47c8:	6a13      	ldr	r3, [r2, #32]
    47ca:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    47ce:	6213      	str	r3, [r2, #32]
    47d0:	492f      	ldr	r1, [pc, #188]	; (4890 <TV_OUT_handler+0xd4>)
    47d2:	f240 2209 	movw	r2, #521	; 0x209
    47d6:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    47d8:	4293      	cmp	r3, r2
    47da:	d9fc      	bls.n	47d6 <TV_OUT_handler+0x1a>
    47dc:	4a2b      	ldr	r2, [pc, #172]	; (488c <TV_OUT_handler+0xd0>)
    47de:	6a13      	ldr	r3, [r2, #32]
    47e0:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    47e4:	6213      	str	r3, [r2, #32]
    47e6:	4b2b      	ldr	r3, [pc, #172]	; (4894 <TV_OUT_handler+0xd8>)
    47e8:	881d      	ldrh	r5, [r3, #0]
    47ea:	b2ad      	uxth	r5, r5
    47ec:	4b2a      	ldr	r3, [pc, #168]	; (4898 <TV_OUT_handler+0xdc>)
    47ee:	7818      	ldrb	r0, [r3, #0]
    47f0:	4b2a      	ldr	r3, [pc, #168]	; (489c <TV_OUT_handler+0xe0>)
    47f2:	781b      	ldrb	r3, [r3, #0]
    47f4:	fb95 f5f3 	sdiv	r5, r5, r3
    47f8:	4b29      	ldr	r3, [pc, #164]	; (48a0 <TV_OUT_handler+0xe4>)
    47fa:	fb00 3505 	mla	r5, r0, r5, r3
    47fe:	4b29      	ldr	r3, [pc, #164]	; (48a4 <TV_OUT_handler+0xe8>)
    4800:	881a      	ldrh	r2, [r3, #0]
    4802:	4923      	ldr	r1, [pc, #140]	; (4890 <TV_OUT_handler+0xd4>)
    4804:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4806:	4293      	cmp	r3, r2
    4808:	d3fc      	bcc.n	4804 <TV_OUT_handler+0x48>
    480a:	4b27      	ldr	r3, [pc, #156]	; (48a8 <TV_OUT_handler+0xec>)
    480c:	461a      	mov	r2, r3
    480e:	6812      	ldr	r2, [r2, #0]
    4810:	f002 0207 	and.w	r2, r2, #7
    4814:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4818:	4497      	add	pc, r2
    481a:	bf00      	nop
    481c:	bf00      	nop
    481e:	bf00      	nop
    4820:	bf00      	nop
    4822:	bf00      	nop
    4824:	bf00      	nop
    4826:	bf00      	nop
    4828:	bf00      	nop
    482a:	4a18      	ldr	r2, [pc, #96]	; (488c <TV_OUT_handler+0xd0>)
    482c:	6a11      	ldr	r1, [r2, #32]
    482e:	4b1f      	ldr	r3, [pc, #124]	; (48ac <TV_OUT_handler+0xf0>)
    4830:	881b      	ldrh	r3, [r3, #0]
    4832:	430b      	orrs	r3, r1
    4834:	6213      	str	r3, [r2, #32]
    4836:	b1b8      	cbz	r0, 4868 <TV_OUT_handler+0xac>
    4838:	462b      	mov	r3, r5
    483a:	481d      	ldr	r0, [pc, #116]	; (48b0 <TV_OUT_handler+0xf4>)
    483c:	491d      	ldr	r1, [pc, #116]	; (48b4 <TV_OUT_handler+0xf8>)
    483e:	4e16      	ldr	r6, [pc, #88]	; (4898 <TV_OUT_handler+0xdc>)
    4840:	781a      	ldrb	r2, [r3, #0]
    4842:	0912      	lsrs	r2, r2, #4
    4844:	8002      	strh	r2, [r0, #0]
    4846:	780c      	ldrb	r4, [r1, #0]
    4848:	4622      	mov	r2, r4
    484a:	3a01      	subs	r2, #1
    484c:	d1fd      	bne.n	484a <TV_OUT_handler+0x8e>
    484e:	f813 2b01 	ldrb.w	r2, [r3], #1
    4852:	f002 020f 	and.w	r2, r2, #15
    4856:	8002      	strh	r2, [r0, #0]
    4858:	780c      	ldrb	r4, [r1, #0]
    485a:	4622      	mov	r2, r4
    485c:	3a01      	subs	r2, #1
    485e:	d1fd      	bne.n	485c <TV_OUT_handler+0xa0>
    4860:	1b5c      	subs	r4, r3, r5
    4862:	7832      	ldrb	r2, [r6, #0]
    4864:	4294      	cmp	r4, r2
    4866:	d3eb      	bcc.n	4840 <TV_OUT_handler+0x84>
    4868:	2200      	movs	r2, #0
    486a:	4b13      	ldr	r3, [pc, #76]	; (48b8 <TV_OUT_handler+0xfc>)
    486c:	60da      	str	r2, [r3, #12]
    486e:	4a07      	ldr	r2, [pc, #28]	; (488c <TV_OUT_handler+0xd0>)
    4870:	6a13      	ldr	r3, [r2, #32]
    4872:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4876:	6213      	str	r3, [r2, #32]
    4878:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    487c:	6913      	ldr	r3, [r2, #16]
    487e:	f023 0304 	bic.w	r3, r3, #4
    4882:	6113      	str	r3, [r2, #16]
    4884:	bc71      	pop	{r0, r4, r5, r6}
    4886:	4685      	mov	sp, r0
    4888:	4770      	bx	lr
    488a:	bf00      	nop
    488c:	40000400 	.word	0x40000400
    4890:	40012c00 	.word	0x40012c00
    4894:	20000528 	.word	0x20000528
    4898:	2000007c 	.word	0x2000007c
    489c:	2000007d 	.word	0x2000007d
    48a0:	20002560 	.word	0x20002560
    48a4:	2000007a 	.word	0x2000007a
    48a8:	40012c24 	.word	0x40012c24
    48ac:	20000082 	.word	0x20000082
    48b0:	4001080c 	.word	0x4001080c
    48b4:	2000007e 	.word	0x2000007e
    48b8:	40010800 	.word	0x40010800

000048bc <TV_SYNC_handler>:
    48bc:	4668      	mov	r0, sp
    48be:	f020 0107 	bic.w	r1, r0, #7
    48c2:	468d      	mov	sp, r1
    48c4:	b501      	push	{r0, lr}
    48c6:	4a84      	ldr	r2, [pc, #528]	; (4ad8 <TV_SYNC_handler+0x21c>)
    48c8:	8813      	ldrh	r3, [r2, #0]
    48ca:	3301      	adds	r3, #1
    48cc:	b29b      	uxth	r3, r3
    48ce:	8013      	strh	r3, [r2, #0]
    48d0:	4a82      	ldr	r2, [pc, #520]	; (4adc <TV_SYNC_handler+0x220>)
    48d2:	6813      	ldr	r3, [r2, #0]
    48d4:	3301      	adds	r3, #1
    48d6:	6013      	str	r3, [r2, #0]
    48d8:	4b81      	ldr	r3, [pc, #516]	; (4ae0 <TV_SYNC_handler+0x224>)
    48da:	881b      	ldrh	r3, [r3, #0]
    48dc:	b29b      	uxth	r3, r3
    48de:	2b09      	cmp	r3, #9
    48e0:	f200 8088 	bhi.w	49f4 <TV_SYNC_handler+0x138>
    48e4:	e8df f013 	tbh	[pc, r3, lsl #1]
    48e8:	002c000a 	.word	0x002c000a
    48ec:	006e004c 	.word	0x006e004c
    48f0:	0097008f 	.word	0x0097008f
    48f4:	00bb00ac 	.word	0x00bb00ac
    48f8:	010c00da 	.word	0x010c00da
    48fc:	4b79      	ldr	r3, [pc, #484]	; (4ae4 <TV_SYNC_handler+0x228>)
    48fe:	881b      	ldrh	r3, [r3, #0]
    4900:	b29b      	uxth	r3, r3
    4902:	b18b      	cbz	r3, 4928 <TV_SYNC_handler+0x6c>
    4904:	4a77      	ldr	r2, [pc, #476]	; (4ae4 <TV_SYNC_handler+0x228>)
    4906:	8813      	ldrh	r3, [r2, #0]
    4908:	3301      	adds	r3, #1
    490a:	b29b      	uxth	r3, r3
    490c:	8013      	strh	r3, [r2, #0]
    490e:	8813      	ldrh	r3, [r2, #0]
    4910:	b29b      	uxth	r3, r3
    4912:	2b06      	cmp	r3, #6
    4914:	d16e      	bne.n	49f4 <TV_SYNC_handler+0x138>
    4916:	2200      	movs	r2, #0
    4918:	4b72      	ldr	r3, [pc, #456]	; (4ae4 <TV_SYNC_handler+0x228>)
    491a:	801a      	strh	r2, [r3, #0]
    491c:	4a70      	ldr	r2, [pc, #448]	; (4ae0 <TV_SYNC_handler+0x224>)
    491e:	8813      	ldrh	r3, [r2, #0]
    4920:	3301      	adds	r3, #1
    4922:	b29b      	uxth	r3, r3
    4924:	8013      	strh	r3, [r2, #0]
    4926:	e065      	b.n	49f4 <TV_SYNC_handler+0x138>
    4928:	4b6f      	ldr	r3, [pc, #444]	; (4ae8 <TV_SYNC_handler+0x22c>)
    492a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    492e:	62da      	str	r2, [r3, #44]	; 0x2c
    4930:	22a4      	movs	r2, #164	; 0xa4
    4932:	635a      	str	r2, [r3, #52]	; 0x34
    4934:	4a6b      	ldr	r2, [pc, #428]	; (4ae4 <TV_SYNC_handler+0x228>)
    4936:	8813      	ldrh	r3, [r2, #0]
    4938:	3301      	adds	r3, #1
    493a:	b29b      	uxth	r3, r3
    493c:	8013      	strh	r3, [r2, #0]
    493e:	e059      	b.n	49f4 <TV_SYNC_handler+0x138>
    4940:	4b68      	ldr	r3, [pc, #416]	; (4ae4 <TV_SYNC_handler+0x228>)
    4942:	881b      	ldrh	r3, [r3, #0]
    4944:	b29b      	uxth	r3, r3
    4946:	b18b      	cbz	r3, 496c <TV_SYNC_handler+0xb0>
    4948:	4a66      	ldr	r2, [pc, #408]	; (4ae4 <TV_SYNC_handler+0x228>)
    494a:	8813      	ldrh	r3, [r2, #0]
    494c:	3301      	adds	r3, #1
    494e:	b29b      	uxth	r3, r3
    4950:	8013      	strh	r3, [r2, #0]
    4952:	8813      	ldrh	r3, [r2, #0]
    4954:	b29b      	uxth	r3, r3
    4956:	2b06      	cmp	r3, #6
    4958:	d14c      	bne.n	49f4 <TV_SYNC_handler+0x138>
    495a:	2200      	movs	r2, #0
    495c:	4b61      	ldr	r3, [pc, #388]	; (4ae4 <TV_SYNC_handler+0x228>)
    495e:	801a      	strh	r2, [r3, #0]
    4960:	4a5f      	ldr	r2, [pc, #380]	; (4ae0 <TV_SYNC_handler+0x224>)
    4962:	8813      	ldrh	r3, [r2, #0]
    4964:	3301      	adds	r3, #1
    4966:	b29b      	uxth	r3, r3
    4968:	8013      	strh	r3, [r2, #0]
    496a:	e043      	b.n	49f4 <TV_SYNC_handler+0x138>
    496c:	f240 7294 	movw	r2, #1940	; 0x794
    4970:	4b5d      	ldr	r3, [pc, #372]	; (4ae8 <TV_SYNC_handler+0x22c>)
    4972:	635a      	str	r2, [r3, #52]	; 0x34
    4974:	4a5b      	ldr	r2, [pc, #364]	; (4ae4 <TV_SYNC_handler+0x228>)
    4976:	8813      	ldrh	r3, [r2, #0]
    4978:	3301      	adds	r3, #1
    497a:	b29b      	uxth	r3, r3
    497c:	8013      	strh	r3, [r2, #0]
    497e:	e039      	b.n	49f4 <TV_SYNC_handler+0x138>
    4980:	4b58      	ldr	r3, [pc, #352]	; (4ae4 <TV_SYNC_handler+0x228>)
    4982:	881b      	ldrh	r3, [r3, #0]
    4984:	b29b      	uxth	r3, r3
    4986:	b153      	cbz	r3, 499e <TV_SYNC_handler+0xe2>
    4988:	4b56      	ldr	r3, [pc, #344]	; (4ae4 <TV_SYNC_handler+0x228>)
    498a:	881b      	ldrh	r3, [r3, #0]
    498c:	b29b      	uxth	r3, r3
    498e:	2b06      	cmp	r3, #6
    4990:	d00e      	beq.n	49b0 <TV_SYNC_handler+0xf4>
    4992:	4a54      	ldr	r2, [pc, #336]	; (4ae4 <TV_SYNC_handler+0x228>)
    4994:	8813      	ldrh	r3, [r2, #0]
    4996:	3301      	adds	r3, #1
    4998:	b29b      	uxth	r3, r3
    499a:	8013      	strh	r3, [r2, #0]
    499c:	e02a      	b.n	49f4 <TV_SYNC_handler+0x138>
    499e:	22a4      	movs	r2, #164	; 0xa4
    49a0:	4b51      	ldr	r3, [pc, #324]	; (4ae8 <TV_SYNC_handler+0x22c>)
    49a2:	635a      	str	r2, [r3, #52]	; 0x34
    49a4:	4a4f      	ldr	r2, [pc, #316]	; (4ae4 <TV_SYNC_handler+0x228>)
    49a6:	8813      	ldrh	r3, [r2, #0]
    49a8:	3301      	adds	r3, #1
    49aa:	b29b      	uxth	r3, r3
    49ac:	8013      	strh	r3, [r2, #0]
    49ae:	e021      	b.n	49f4 <TV_SYNC_handler+0x138>
    49b0:	4a4b      	ldr	r2, [pc, #300]	; (4ae0 <TV_SYNC_handler+0x224>)
    49b2:	8813      	ldrh	r3, [r2, #0]
    49b4:	3301      	adds	r3, #1
    49b6:	b29b      	uxth	r3, r3
    49b8:	8013      	strh	r3, [r2, #0]
    49ba:	4b4c      	ldr	r3, [pc, #304]	; (4aec <TV_SYNC_handler+0x230>)
    49bc:	881b      	ldrh	r3, [r3, #0]
    49be:	f013 0f01 	tst.w	r3, #1
    49c2:	d017      	beq.n	49f4 <TV_SYNC_handler+0x138>
    49c4:	4b48      	ldr	r3, [pc, #288]	; (4ae8 <TV_SYNC_handler+0x22c>)
    49c6:	f241 12c5 	movw	r2, #4549	; 0x11c5
    49ca:	62da      	str	r2, [r3, #44]	; 0x2c
    49cc:	f44f 72a8 	mov.w	r2, #336	; 0x150
    49d0:	635a      	str	r2, [r3, #52]	; 0x34
    49d2:	4a46      	ldr	r2, [pc, #280]	; (4aec <TV_SYNC_handler+0x230>)
    49d4:	8813      	ldrh	r3, [r2, #0]
    49d6:	f023 0302 	bic.w	r3, r3, #2
    49da:	041b      	lsls	r3, r3, #16
    49dc:	0c1b      	lsrs	r3, r3, #16
    49de:	8013      	strh	r3, [r2, #0]
    49e0:	4a3d      	ldr	r2, [pc, #244]	; (4ad8 <TV_SYNC_handler+0x21c>)
    49e2:	8813      	ldrh	r3, [r2, #0]
    49e4:	f3c3 038d 	ubfx	r3, r3, #2, #14
    49e8:	8013      	strh	r3, [r2, #0]
    49ea:	4a3d      	ldr	r2, [pc, #244]	; (4ae0 <TV_SYNC_handler+0x224>)
    49ec:	8813      	ldrh	r3, [r2, #0]
    49ee:	3301      	adds	r3, #1
    49f0:	b29b      	uxth	r3, r3
    49f2:	8013      	strh	r3, [r2, #0]
    49f4:	4a3c      	ldr	r2, [pc, #240]	; (4ae8 <TV_SYNC_handler+0x22c>)
    49f6:	6913      	ldr	r3, [r2, #16]
    49f8:	f023 0301 	bic.w	r3, r3, #1
    49fc:	6113      	str	r3, [r2, #16]
    49fe:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    4a02:	4685      	mov	sp, r0
    4a04:	4770      	bx	lr
    4a06:	f7fc fd99 	bl	153c <read_gamepad>
    4a0a:	4a35      	ldr	r2, [pc, #212]	; (4ae0 <TV_SYNC_handler+0x224>)
    4a0c:	8813      	ldrh	r3, [r2, #0]
    4a0e:	3301      	adds	r3, #1
    4a10:	b29b      	uxth	r3, r3
    4a12:	8013      	strh	r3, [r2, #0]
    4a14:	e7ee      	b.n	49f4 <TV_SYNC_handler+0x138>
    4a16:	4b36      	ldr	r3, [pc, #216]	; (4af0 <TV_SYNC_handler+0x234>)
    4a18:	881b      	ldrh	r3, [r3, #0]
    4a1a:	b29b      	uxth	r3, r3
    4a1c:	b13b      	cbz	r3, 4a2e <TV_SYNC_handler+0x172>
    4a1e:	4a34      	ldr	r2, [pc, #208]	; (4af0 <TV_SYNC_handler+0x234>)
    4a20:	8813      	ldrh	r3, [r2, #0]
    4a22:	3b01      	subs	r3, #1
    4a24:	b29b      	uxth	r3, r3
    4a26:	8013      	strh	r3, [r2, #0]
    4a28:	8813      	ldrh	r3, [r2, #0]
    4a2a:	b29b      	uxth	r3, r3
    4a2c:	b12b      	cbz	r3, 4a3a <TV_SYNC_handler+0x17e>
    4a2e:	4a2c      	ldr	r2, [pc, #176]	; (4ae0 <TV_SYNC_handler+0x224>)
    4a30:	8813      	ldrh	r3, [r2, #0]
    4a32:	3301      	adds	r3, #1
    4a34:	b29b      	uxth	r3, r3
    4a36:	8013      	strh	r3, [r2, #0]
    4a38:	e7dc      	b.n	49f4 <TV_SYNC_handler+0x138>
    4a3a:	f7ff f925 	bl	3c88 <sound_stop>
    4a3e:	e7f6      	b.n	4a2e <TV_SYNC_handler+0x172>
    4a40:	4b2c      	ldr	r3, [pc, #176]	; (4af4 <TV_SYNC_handler+0x238>)
    4a42:	881b      	ldrh	r3, [r3, #0]
    4a44:	b29b      	uxth	r3, r3
    4a46:	b123      	cbz	r3, 4a52 <TV_SYNC_handler+0x196>
    4a48:	4a2a      	ldr	r2, [pc, #168]	; (4af4 <TV_SYNC_handler+0x238>)
    4a4a:	8813      	ldrh	r3, [r2, #0]
    4a4c:	3b01      	subs	r3, #1
    4a4e:	b29b      	uxth	r3, r3
    4a50:	8013      	strh	r3, [r2, #0]
    4a52:	4a23      	ldr	r2, [pc, #140]	; (4ae0 <TV_SYNC_handler+0x224>)
    4a54:	8813      	ldrh	r3, [r2, #0]
    4a56:	3301      	adds	r3, #1
    4a58:	b29b      	uxth	r3, r3
    4a5a:	8013      	strh	r3, [r2, #0]
    4a5c:	e7ca      	b.n	49f4 <TV_SYNC_handler+0x138>
    4a5e:	4b1e      	ldr	r3, [pc, #120]	; (4ad8 <TV_SYNC_handler+0x21c>)
    4a60:	881b      	ldrh	r3, [r3, #0]
    4a62:	b29b      	uxth	r3, r3
    4a64:	4a24      	ldr	r2, [pc, #144]	; (4af8 <TV_SYNC_handler+0x23c>)
    4a66:	8812      	ldrh	r2, [r2, #0]
    4a68:	429a      	cmp	r2, r3
    4a6a:	d1c3      	bne.n	49f4 <TV_SYNC_handler+0x138>
    4a6c:	4b1e      	ldr	r3, [pc, #120]	; (4ae8 <TV_SYNC_handler+0x22c>)
    4a6e:	691a      	ldr	r2, [r3, #16]
    4a70:	f022 0204 	bic.w	r2, r2, #4
    4a74:	611a      	str	r2, [r3, #16]
    4a76:	68da      	ldr	r2, [r3, #12]
    4a78:	f042 0204 	orr.w	r2, r2, #4
    4a7c:	60da      	str	r2, [r3, #12]
    4a7e:	4a1b      	ldr	r2, [pc, #108]	; (4aec <TV_SYNC_handler+0x230>)
    4a80:	8813      	ldrh	r3, [r2, #0]
    4a82:	b29b      	uxth	r3, r3
    4a84:	f043 0304 	orr.w	r3, r3, #4
    4a88:	8013      	strh	r3, [r2, #0]
    4a8a:	4a15      	ldr	r2, [pc, #84]	; (4ae0 <TV_SYNC_handler+0x224>)
    4a8c:	8813      	ldrh	r3, [r2, #0]
    4a8e:	3301      	adds	r3, #1
    4a90:	b29b      	uxth	r3, r3
    4a92:	8013      	strh	r3, [r2, #0]
    4a94:	2200      	movs	r2, #0
    4a96:	4b13      	ldr	r3, [pc, #76]	; (4ae4 <TV_SYNC_handler+0x228>)
    4a98:	801a      	strh	r2, [r3, #0]
    4a9a:	e7ab      	b.n	49f4 <TV_SYNC_handler+0x138>
    4a9c:	4a11      	ldr	r2, [pc, #68]	; (4ae4 <TV_SYNC_handler+0x228>)
    4a9e:	8813      	ldrh	r3, [r2, #0]
    4aa0:	3301      	adds	r3, #1
    4aa2:	b29b      	uxth	r3, r3
    4aa4:	8013      	strh	r3, [r2, #0]
    4aa6:	4b0c      	ldr	r3, [pc, #48]	; (4ad8 <TV_SYNC_handler+0x21c>)
    4aa8:	881b      	ldrh	r3, [r3, #0]
    4aaa:	b29b      	uxth	r3, r3
    4aac:	4a13      	ldr	r2, [pc, #76]	; (4afc <TV_SYNC_handler+0x240>)
    4aae:	8812      	ldrh	r2, [r2, #0]
    4ab0:	429a      	cmp	r2, r3
    4ab2:	d19f      	bne.n	49f4 <TV_SYNC_handler+0x138>
    4ab4:	4a0c      	ldr	r2, [pc, #48]	; (4ae8 <TV_SYNC_handler+0x22c>)
    4ab6:	68d3      	ldr	r3, [r2, #12]
    4ab8:	f023 0304 	bic.w	r3, r3, #4
    4abc:	60d3      	str	r3, [r2, #12]
    4abe:	4a0b      	ldr	r2, [pc, #44]	; (4aec <TV_SYNC_handler+0x230>)
    4ac0:	8813      	ldrh	r3, [r2, #0]
    4ac2:	f023 0304 	bic.w	r3, r3, #4
    4ac6:	041b      	lsls	r3, r3, #16
    4ac8:	0c1b      	lsrs	r3, r3, #16
    4aca:	8013      	strh	r3, [r2, #0]
    4acc:	4a04      	ldr	r2, [pc, #16]	; (4ae0 <TV_SYNC_handler+0x224>)
    4ace:	8813      	ldrh	r3, [r2, #0]
    4ad0:	3301      	adds	r3, #1
    4ad2:	b29b      	uxth	r3, r3
    4ad4:	8013      	strh	r3, [r2, #0]
    4ad6:	e78d      	b.n	49f4 <TV_SYNC_handler+0x138>
    4ad8:	2000052a 	.word	0x2000052a
    4adc:	2000052c 	.word	0x2000052c
    4ae0:	20000524 	.word	0x20000524
    4ae4:	20000528 	.word	0x20000528
    4ae8:	40012c00 	.word	0x40012c00
    4aec:	20000526 	.word	0x20000526
    4af0:	20004cc2 	.word	0x20004cc2
    4af4:	20004cc0 	.word	0x20004cc0
    4af8:	20000076 	.word	0x20000076
    4afc:	20000078 	.word	0x20000078
    4b00:	4b11      	ldr	r3, [pc, #68]	; (4b48 <TV_SYNC_handler+0x28c>)
    4b02:	881b      	ldrh	r3, [r3, #0]
    4b04:	b29b      	uxth	r3, r3
    4b06:	f240 1207 	movw	r2, #263	; 0x107
    4b0a:	4293      	cmp	r3, r2
    4b0c:	f47f af72 	bne.w	49f4 <TV_SYNC_handler+0x138>
    4b10:	4b0e      	ldr	r3, [pc, #56]	; (4b4c <TV_SYNC_handler+0x290>)
    4b12:	881b      	ldrh	r3, [r3, #0]
    4b14:	f013 0f01 	tst.w	r3, #1
    4b18:	d003      	beq.n	4b22 <TV_SYNC_handler+0x266>
    4b1a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4b1e:	4b0c      	ldr	r3, [pc, #48]	; (4b50 <TV_SYNC_handler+0x294>)
    4b20:	62da      	str	r2, [r3, #44]	; 0x2c
    4b22:	4a0a      	ldr	r2, [pc, #40]	; (4b4c <TV_SYNC_handler+0x290>)
    4b24:	8813      	ldrh	r3, [r2, #0]
    4b26:	b29b      	uxth	r3, r3
    4b28:	f083 0301 	eor.w	r3, r3, #1
    4b2c:	8013      	strh	r3, [r2, #0]
    4b2e:	8813      	ldrh	r3, [r2, #0]
    4b30:	b29b      	uxth	r3, r3
    4b32:	f043 0302 	orr.w	r3, r3, #2
    4b36:	8013      	strh	r3, [r2, #0]
    4b38:	2300      	movs	r3, #0
    4b3a:	4a03      	ldr	r2, [pc, #12]	; (4b48 <TV_SYNC_handler+0x28c>)
    4b3c:	8013      	strh	r3, [r2, #0]
    4b3e:	4a05      	ldr	r2, [pc, #20]	; (4b54 <TV_SYNC_handler+0x298>)
    4b40:	8013      	strh	r3, [r2, #0]
    4b42:	4a05      	ldr	r2, [pc, #20]	; (4b58 <TV_SYNC_handler+0x29c>)
    4b44:	8013      	strh	r3, [r2, #0]
    4b46:	e755      	b.n	49f4 <TV_SYNC_handler+0x138>
    4b48:	2000052a 	.word	0x2000052a
    4b4c:	20000526 	.word	0x20000526
    4b50:	40012c00 	.word	0x40012c00
    4b54:	20000528 	.word	0x20000528
    4b58:	20000524 	.word	0x20000524

00004b5c <frame_sync>:
    4b5c:	b480      	push	{r7}
    4b5e:	af00      	add	r7, sp, #0
    4b60:	bf00      	nop
    4b62:	4b05      	ldr	r3, [pc, #20]	; (4b78 <frame_sync+0x1c>)
    4b64:	881b      	ldrh	r3, [r3, #0]
    4b66:	b29b      	uxth	r3, r3
    4b68:	f003 0302 	and.w	r3, r3, #2
    4b6c:	2b00      	cmp	r3, #0
    4b6e:	d0f8      	beq.n	4b62 <frame_sync+0x6>
    4b70:	bf00      	nop
    4b72:	46bd      	mov	sp, r7
    4b74:	bc80      	pop	{r7}
    4b76:	4770      	bx	lr
    4b78:	20000526 	.word	0x20000526

00004b7c <wait_sync_end>:
    4b7c:	b480      	push	{r7}
    4b7e:	af00      	add	r7, sp, #0
    4b80:	bf00      	nop
    4b82:	4b05      	ldr	r3, [pc, #20]	; (4b98 <wait_sync_end+0x1c>)
    4b84:	881b      	ldrh	r3, [r3, #0]
    4b86:	b29b      	uxth	r3, r3
    4b88:	f003 0302 	and.w	r3, r3, #2
    4b8c:	2b00      	cmp	r3, #0
    4b8e:	d1f8      	bne.n	4b82 <wait_sync_end+0x6>
    4b90:	bf00      	nop
    4b92:	46bd      	mov	sp, r7
    4b94:	bc80      	pop	{r7}
    4b96:	4770      	bx	lr
    4b98:	20000526 	.word	0x20000526

00004b9c <set_video_mode>:
    4b9c:	b580      	push	{r7, lr}
    4b9e:	b082      	sub	sp, #8
    4ba0:	af00      	add	r7, sp, #0
    4ba2:	4603      	mov	r3, r0
    4ba4:	71fb      	strb	r3, [r7, #7]
    4ba6:	f7ff ffd9 	bl	4b5c <frame_sync>
    4baa:	4a37      	ldr	r2, [pc, #220]	; (4c88 <set_video_mode+0xec>)
    4bac:	79fb      	ldrb	r3, [r7, #7]
    4bae:	7013      	strb	r3, [r2, #0]
    4bb0:	79fa      	ldrb	r2, [r7, #7]
    4bb2:	4936      	ldr	r1, [pc, #216]	; (4c8c <set_video_mode+0xf0>)
    4bb4:	4613      	mov	r3, r2
    4bb6:	00db      	lsls	r3, r3, #3
    4bb8:	4413      	add	r3, r2
    4bba:	005b      	lsls	r3, r3, #1
    4bbc:	440b      	add	r3, r1
    4bbe:	3302      	adds	r3, #2
    4bc0:	881a      	ldrh	r2, [r3, #0]
    4bc2:	4b33      	ldr	r3, [pc, #204]	; (4c90 <set_video_mode+0xf4>)
    4bc4:	801a      	strh	r2, [r3, #0]
    4bc6:	79fa      	ldrb	r2, [r7, #7]
    4bc8:	4930      	ldr	r1, [pc, #192]	; (4c8c <set_video_mode+0xf0>)
    4bca:	4613      	mov	r3, r2
    4bcc:	00db      	lsls	r3, r3, #3
    4bce:	4413      	add	r3, r2
    4bd0:	005b      	lsls	r3, r3, #1
    4bd2:	440b      	add	r3, r1
    4bd4:	3304      	adds	r3, #4
    4bd6:	881a      	ldrh	r2, [r3, #0]
    4bd8:	4b2e      	ldr	r3, [pc, #184]	; (4c94 <set_video_mode+0xf8>)
    4bda:	801a      	strh	r2, [r3, #0]
    4bdc:	79fa      	ldrb	r2, [r7, #7]
    4bde:	492b      	ldr	r1, [pc, #172]	; (4c8c <set_video_mode+0xf0>)
    4be0:	4613      	mov	r3, r2
    4be2:	00db      	lsls	r3, r3, #3
    4be4:	4413      	add	r3, r2
    4be6:	005b      	lsls	r3, r3, #1
    4be8:	440b      	add	r3, r1
    4bea:	3306      	adds	r3, #6
    4bec:	881a      	ldrh	r2, [r3, #0]
    4bee:	4b2a      	ldr	r3, [pc, #168]	; (4c98 <set_video_mode+0xfc>)
    4bf0:	801a      	strh	r2, [r3, #0]
    4bf2:	79fa      	ldrb	r2, [r7, #7]
    4bf4:	4925      	ldr	r1, [pc, #148]	; (4c8c <set_video_mode+0xf0>)
    4bf6:	4613      	mov	r3, r2
    4bf8:	00db      	lsls	r3, r3, #3
    4bfa:	4413      	add	r3, r2
    4bfc:	005b      	lsls	r3, r3, #1
    4bfe:	440b      	add	r3, r1
    4c00:	3308      	adds	r3, #8
    4c02:	781a      	ldrb	r2, [r3, #0]
    4c04:	4b25      	ldr	r3, [pc, #148]	; (4c9c <set_video_mode+0x100>)
    4c06:	701a      	strb	r2, [r3, #0]
    4c08:	79fa      	ldrb	r2, [r7, #7]
    4c0a:	4920      	ldr	r1, [pc, #128]	; (4c8c <set_video_mode+0xf0>)
    4c0c:	4613      	mov	r3, r2
    4c0e:	00db      	lsls	r3, r3, #3
    4c10:	4413      	add	r3, r2
    4c12:	005b      	lsls	r3, r3, #1
    4c14:	440b      	add	r3, r1
    4c16:	3309      	adds	r3, #9
    4c18:	781a      	ldrb	r2, [r3, #0]
    4c1a:	4b21      	ldr	r3, [pc, #132]	; (4ca0 <set_video_mode+0x104>)
    4c1c:	701a      	strb	r2, [r3, #0]
    4c1e:	79fa      	ldrb	r2, [r7, #7]
    4c20:	491a      	ldr	r1, [pc, #104]	; (4c8c <set_video_mode+0xf0>)
    4c22:	4613      	mov	r3, r2
    4c24:	00db      	lsls	r3, r3, #3
    4c26:	4413      	add	r3, r2
    4c28:	005b      	lsls	r3, r3, #1
    4c2a:	440b      	add	r3, r1
    4c2c:	330a      	adds	r3, #10
    4c2e:	781a      	ldrb	r2, [r3, #0]
    4c30:	4b1c      	ldr	r3, [pc, #112]	; (4ca4 <set_video_mode+0x108>)
    4c32:	701a      	strb	r2, [r3, #0]
    4c34:	79fa      	ldrb	r2, [r7, #7]
    4c36:	4915      	ldr	r1, [pc, #84]	; (4c8c <set_video_mode+0xf0>)
    4c38:	4613      	mov	r3, r2
    4c3a:	00db      	lsls	r3, r3, #3
    4c3c:	4413      	add	r3, r2
    4c3e:	005b      	lsls	r3, r3, #1
    4c40:	440b      	add	r3, r1
    4c42:	330c      	adds	r3, #12
    4c44:	881b      	ldrh	r3, [r3, #0]
    4c46:	b2da      	uxtb	r2, r3
    4c48:	4b17      	ldr	r3, [pc, #92]	; (4ca8 <set_video_mode+0x10c>)
    4c4a:	701a      	strb	r2, [r3, #0]
    4c4c:	79fa      	ldrb	r2, [r7, #7]
    4c4e:	490f      	ldr	r1, [pc, #60]	; (4c8c <set_video_mode+0xf0>)
    4c50:	4613      	mov	r3, r2
    4c52:	00db      	lsls	r3, r3, #3
    4c54:	4413      	add	r3, r2
    4c56:	005b      	lsls	r3, r3, #1
    4c58:	440b      	add	r3, r1
    4c5a:	330e      	adds	r3, #14
    4c5c:	881b      	ldrh	r3, [r3, #0]
    4c5e:	b2da      	uxtb	r2, r3
    4c60:	4b12      	ldr	r3, [pc, #72]	; (4cac <set_video_mode+0x110>)
    4c62:	701a      	strb	r2, [r3, #0]
    4c64:	79fa      	ldrb	r2, [r7, #7]
    4c66:	4909      	ldr	r1, [pc, #36]	; (4c8c <set_video_mode+0xf0>)
    4c68:	4613      	mov	r3, r2
    4c6a:	00db      	lsls	r3, r3, #3
    4c6c:	4413      	add	r3, r2
    4c6e:	005b      	lsls	r3, r3, #1
    4c70:	440b      	add	r3, r1
    4c72:	3310      	adds	r3, #16
    4c74:	881a      	ldrh	r2, [r3, #0]
    4c76:	4b0e      	ldr	r3, [pc, #56]	; (4cb0 <set_video_mode+0x114>)
    4c78:	801a      	strh	r2, [r3, #0]
    4c7a:	f7fd f919 	bl	1eb0 <gfx_cls>
    4c7e:	bf00      	nop
    4c80:	3708      	adds	r7, #8
    4c82:	46bd      	mov	sp, r7
    4c84:	bd80      	pop	{r7, pc}
    4c86:	bf00      	nop
    4c88:	20000530 	.word	0x20000530
    4c8c:	000053e8 	.word	0x000053e8
    4c90:	20000076 	.word	0x20000076
    4c94:	20000078 	.word	0x20000078
    4c98:	2000007a 	.word	0x2000007a
    4c9c:	2000007c 	.word	0x2000007c
    4ca0:	2000007d 	.word	0x2000007d
    4ca4:	2000007e 	.word	0x2000007e
    4ca8:	2000007f 	.word	0x2000007f
    4cac:	20000080 	.word	0x20000080
    4cb0:	20000082 	.word	0x20000082

00004cb4 <get_video_params>:
    4cb4:	b480      	push	{r7}
    4cb6:	af00      	add	r7, sp, #0
    4cb8:	4b06      	ldr	r3, [pc, #24]	; (4cd4 <get_video_params+0x20>)
    4cba:	781b      	ldrb	r3, [r3, #0]
    4cbc:	461a      	mov	r2, r3
    4cbe:	4613      	mov	r3, r2
    4cc0:	00db      	lsls	r3, r3, #3
    4cc2:	4413      	add	r3, r2
    4cc4:	005b      	lsls	r3, r3, #1
    4cc6:	4a04      	ldr	r2, [pc, #16]	; (4cd8 <get_video_params+0x24>)
    4cc8:	4413      	add	r3, r2
    4cca:	4618      	mov	r0, r3
    4ccc:	46bd      	mov	sp, r7
    4cce:	bc80      	pop	{r7}
    4cd0:	4770      	bx	lr
    4cd2:	bf00      	nop
    4cd4:	20000530 	.word	0x20000530
    4cd8:	000053e8 	.word	0x000053e8

00004cdc <game_pause>:
    4cdc:	b480      	push	{r7}
    4cde:	b083      	sub	sp, #12
    4ce0:	af00      	add	r7, sp, #0
    4ce2:	4603      	mov	r3, r0
    4ce4:	80fb      	strh	r3, [r7, #6]
    4ce6:	4a07      	ldr	r2, [pc, #28]	; (4d04 <game_pause+0x28>)
    4ce8:	88fb      	ldrh	r3, [r7, #6]
    4cea:	8013      	strh	r3, [r2, #0]
    4cec:	bf00      	nop
    4cee:	4b05      	ldr	r3, [pc, #20]	; (4d04 <game_pause+0x28>)
    4cf0:	881b      	ldrh	r3, [r3, #0]
    4cf2:	b29b      	uxth	r3, r3
    4cf4:	2b00      	cmp	r3, #0
    4cf6:	d1fa      	bne.n	4cee <game_pause+0x12>
    4cf8:	bf00      	nop
    4cfa:	370c      	adds	r7, #12
    4cfc:	46bd      	mov	sp, r7
    4cfe:	bc80      	pop	{r7}
    4d00:	4770      	bx	lr
    4d02:	bf00      	nop
    4d04:	20004cc0 	.word	0x20004cc0

00004d08 <micro_pause>:
    4d08:	b480      	push	{r7}
    4d0a:	b085      	sub	sp, #20
    4d0c:	af00      	add	r7, sp, #0
    4d0e:	6078      	str	r0, [r7, #4]
    4d10:	4b07      	ldr	r3, [pc, #28]	; (4d30 <micro_pause+0x28>)
    4d12:	681a      	ldr	r2, [r3, #0]
    4d14:	687b      	ldr	r3, [r7, #4]
    4d16:	4413      	add	r3, r2
    4d18:	60fb      	str	r3, [r7, #12]
    4d1a:	bf00      	nop
    4d1c:	4b04      	ldr	r3, [pc, #16]	; (4d30 <micro_pause+0x28>)
    4d1e:	681a      	ldr	r2, [r3, #0]
    4d20:	68fb      	ldr	r3, [r7, #12]
    4d22:	429a      	cmp	r2, r3
    4d24:	d3fa      	bcc.n	4d1c <micro_pause+0x14>
    4d26:	bf00      	nop
    4d28:	3714      	adds	r7, #20
    4d2a:	46bd      	mov	sp, r7
    4d2c:	bc80      	pop	{r7}
    4d2e:	4770      	bx	lr
    4d30:	2000052c 	.word	0x2000052c
