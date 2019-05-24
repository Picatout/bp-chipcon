
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 91 3c 00 00     C...I...O....<..
      20:	91 3c 00 00 91 3c 00 00 91 3c 00 00 55 02 00 00     .<...<...<..U...
      30:	91 3c 00 00 91 3c 00 00 5b 02 00 00 61 02 00 00     .<...<..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 51 39 00 00     g...m...y...Q9..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 91 3c 00 00 91 3c 00 00 b5 02 00 00     .....<...<......
      80:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..
      90:	91 3c 00 00 91 3c 00 00 91 3c 00 00 bb 02 00 00     .<...<...<......
      a0:	91 3c 00 00 49 45 00 00 91 3c 00 00 49 44 00 00     .<..IE...<..ID..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 91 3c 00 00     .............<..
      c0:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..
      d0:	91 3c 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     .<..............
      e0:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..
      f0:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..
     100:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..
     110:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..
     120:	91 3c 00 00 91 3c 00 00 91 3c 00 00 91 3c 00 00     .<...<...<...<..

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
     18e:	f002 fcad 	bl	2aec <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	20000080 	.word	0x20000080
     1a0:	20004cac 	.word	0x20004cac
     1a4:	00005400 	.word	0x00005400
     1a8:	20000000 	.word	0x20000000
     1ac:	20000080 	.word	0x20000080
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
     1dc:	f003 fd60 	bl	3ca0 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 fd54 	bl	3ca0 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 fd48 	bl	3ca0 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 fd43 	bl	3ca0 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00004fb8 	.word	0x00004fb8
     230:	00004fd0 	.word	0x00004fd0
     234:	00004fdc 	.word	0x00004fdc
     238:	00004fec 	.word	0x00004fec

0000023c <NMI_handler>:
     23c:	f003 fd28 	bl	3c90 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 fd25 	bl	3c90 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 fd22 	bl	3c90 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 fd1f 	bl	3c90 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 fd1c 	bl	3c90 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 fd19 	bl	3c90 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f003 fd16 	bl	3c90 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 fd13 	bl	3c90 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 fd10 	bl	3c90 <reset_mcu>
     270:	bf00      	nop
     272:	f003 fd0d 	bl	3c90 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 fd0a 	bl	3c90 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 fd07 	bl	3c90 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 fd04 	bl	3c90 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 fd01 	bl	3c90 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 fcfe 	bl	3c90 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 fcfb 	bl	3c90 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 fcf8 	bl	3c90 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 fcf5 	bl	3c90 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 fcf2 	bl	3c90 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 fcef 	bl	3c90 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 fcec 	bl	3c90 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 fce9 	bl	3c90 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 fce6 	bl	3c90 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 fce3 	bl	3c90 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 fce0 	bl	3c90 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 fcdd 	bl	3c90 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 fcda 	bl	3c90 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 fcd7 	bl	3c90 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 fcd4 	bl	3c90 <reset_mcu>
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
     3c8:	f003 fce2 	bl	3d90 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 fccf 	bl	3d70 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fe16 	bl	4004 <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fe13 	bl	4004 <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fe3c 	bl	4064 <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 fe35 	bl	4064 <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 fe2e 	bl	4064 <print_int>
     408:	f003 fcc2 	bl	3d90 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fdf9 	bl	4004 <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fe23 	bl	4064 <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fdf0 	bl	4004 <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fe1a 	bl	4064 <print_int>
     430:	f003 fcae 	bl	3d90 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 fde5 	bl	4004 <print>
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
     44e:	f003 fe09 	bl	4064 <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 fc97 	bl	3d90 <new_line>
     462:	f003 ff1f 	bl	42a4 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	000049c0 	.word	0x000049c0
     474:	20000080 	.word	0x20000080
     478:	000049c4 	.word	0x000049c4
     47c:	000049c8 	.word	0x000049c8
     480:	000049d0 	.word	0x000049d0

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
     6e8:	f003 fde6 	bl	42b8 <clear_screen>
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
     80c:	20000080 	.word	0x20000080
     810:	2000051c 	.word	0x2000051c
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
     ac0:	20000080 	.word	0x20000080
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
     ada:	f002 ff7b 	bl	39d4 <key_tone>
     ade:	e0fe      	b.n	cde <schipp+0x79a>
     ae0:	2002      	movs	r0, #2
     ae2:	f003 f945 	bl	3d70 <select_font>
     ae6:	7bbb      	ldrb	r3, [r7, #14]
     ae8:	4a99      	ldr	r2, [pc, #612]	; (d50 <schipp+0x80c>)
     aea:	4413      	add	r3, r2
     aec:	7958      	ldrb	r0, [r3, #5]
     aee:	7b7b      	ldrb	r3, [r7, #13]
     af0:	4a97      	ldr	r2, [pc, #604]	; (d50 <schipp+0x80c>)
     af2:	4413      	add	r3, r2
     af4:	795b      	ldrb	r3, [r3, #5]
     af6:	4619      	mov	r1, r3
     af8:	f003 fa58 	bl	3fac <set_cursor>
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
     b16:	f003 f9bd 	bl	3e94 <put_char>
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
     b5e:	f002 ff44 	bl	39ea <noise>
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
     b7c:	f002 ff2a 	bl	39d4 <key_tone>
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
     d50:	20000080 	.word	0x20000080
     d54:	2000051c 	.word	0x2000051c
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
     eda:	f002 fd59 	bl	3990 <tone>
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
     f1a:	f002 ff29 	bl	3d70 <select_font>
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
     f42:	f002 ff15 	bl	3d70 <select_font>
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
     fe0:	20000080 	.word	0x20000080
     fe4:	200000e8 	.word	0x200000e8
     fe8:	20004ca8 	.word	0x20004ca8
     fec:	000049d8 	.word	0x000049d8
     ff0:	00004a38 	.word	0x00004a38
     ff4:	cccccccd 	.word	0xcccccccd
     ff8:	20000085 	.word	0x20000085
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
    106c:	20000080 	.word	0x20000080

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
    10c8:	20000108 	.word	0x20000108
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
    11c8:	20000108 	.word	0x20000108
    11cc:	2000010a 	.word	0x2000010a

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
    1234:	2000010a 	.word	0x2000010a
    1238:	20000108 	.word	0x20000108

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
    138c:	20000108 	.word	0x20000108

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
    13a4:	20000108 	.word	0x20000108

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
    13c8:	20000108 	.word	0x20000108
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
    147c:	2000251c 	.word	0x2000251c

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
    1554:	2000251c 	.word	0x2000251c

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
    158c:	2000251c 	.word	0x2000251c

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
    15ac:	f003 f91c 	bl	47e8 <frame_sync>
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
    15dc:	2000251c 	.word	0x2000251c

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
    15fc:	f003 f8f4 	bl	47e8 <frame_sync>
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
    162c:	2000251c 	.word	0x2000251c

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
    1642:	f003 f8d1 	bl	47e8 <frame_sync>
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
    1690:	2000251c 	.word	0x2000251c
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
    1caa:	f002 fe49 	bl	4940 <get_video_params>
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
    1d80:	20002548 	.word	0x20002548

00001d84 <gfx_plot>:
    1d84:	b5b0      	push	{r4, r5, r7, lr}
    1d86:	b086      	sub	sp, #24
    1d88:	af00      	add	r7, sp, #0
    1d8a:	60f8      	str	r0, [r7, #12]
    1d8c:	60b9      	str	r1, [r7, #8]
    1d8e:	4613      	mov	r3, r2
    1d90:	71fb      	strb	r3, [r7, #7]
    1d92:	f002 fdd5 	bl	4940 <get_video_params>
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
    1e1c:	20002548 	.word	0x20002548

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
    1eda:	f002 f867 	bl	3fac <set_cursor>
    1ede:	bf00      	nop
    1ee0:	3708      	adds	r7, #8
    1ee2:	46bd      	mov	sp, r7
    1ee4:	bd80      	pop	{r7, pc}
    1ee6:	bf00      	nop
    1ee8:	20002548 	.word	0x20002548

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
    1fb8:	20002548 	.word	0x20002548

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
    2020:	20002548 	.word	0x20002548
    2024:	20004ca8 	.word	0x20004ca8

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
    2090:	20002548 	.word	0x20002548

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
    2104:	20002548 	.word	0x20002548

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
    2160:	20002548 	.word	0x20002548

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
    224a:	f002 facd 	bl	47e8 <frame_sync>
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
    22a0:	f002 fab2 	bl	4808 <wait_sync_end>
    22a4:	bf00      	nop
    22a6:	370c      	adds	r7, #12
    22a8:	46bd      	mov	sp, r7
    22aa:	bd90      	pop	{r4, r7, pc}
    22ac:	20002520 	.word	0x20002520

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
    2334:	f002 fb04 	bl	4940 <get_video_params>
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
    2528:	20002520 	.word	0x20002520
    252c:	20002534 	.word	0x20002534

00002530 <init_balls>:
    2530:	b580      	push	{r7, lr}
    2532:	b082      	sub	sp, #8
    2534:	af00      	add	r7, sp, #0
    2536:	f002 fa03 	bl	4940 <get_video_params>
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
    25e4:	20002520 	.word	0x20002520
    25e8:	00004e00 	.word	0x00004e00

000025ec <color_bars>:
    25ec:	b580      	push	{r7, lr}
    25ee:	b084      	sub	sp, #16
    25f0:	af00      	add	r7, sp, #0
    25f2:	2300      	movs	r3, #0
    25f4:	71fb      	strb	r3, [r7, #7]
    25f6:	f002 f9a3 	bl	4940 <get_video_params>
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
    2662:	f002 f96d 	bl	4940 <get_video_params>
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
    26b0:	f002 f8ba 	bl	4828 <set_video_mode>
    26b4:	f7ff ff9a 	bl	25ec <color_bars>
    26b8:	f7ff ffd0 	bl	265c <vertical_bars>
    26bc:	4b2f      	ldr	r3, [pc, #188]	; (277c <video_test+0xda>)
    26be:	2110      	movs	r1, #16
    26c0:	4618      	mov	r0, r3
    26c2:	f001 fccf 	bl	4064 <print_int>
    26c6:	4b2e      	ldr	r3, [pc, #184]	; (2780 <video_test+0xde>)
    26c8:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    26cc:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    26d0:	210a      	movs	r1, #10
    26d2:	4618      	mov	r0, r3
    26d4:	f001 fcc6 	bl	4064 <print_int>
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
    270a:	f002 f88d 	bl	4828 <set_video_mode>
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
    272e:	f001 fc69 	bl	4004 <print>
    2732:	f7ff ff5b 	bl	25ec <color_bars>
    2736:	e00b      	b.n	2750 <video_test+0xae>
    2738:	4813      	ldr	r0, [pc, #76]	; (2788 <video_test+0xe6>)
    273a:	f001 fc63 	bl	4004 <print>
    273e:	e007      	b.n	2750 <video_test+0xae>
    2740:	4812      	ldr	r0, [pc, #72]	; (278c <video_test+0xea>)
    2742:	f001 fc5f 	bl	4004 <print>
    2746:	e003      	b.n	2750 <video_test+0xae>
    2748:	4811      	ldr	r0, [pc, #68]	; (2790 <video_test+0xee>)
    274a:	f001 fc5b 	bl	4004 <print>
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
    277c:	00005400 	.word	0x00005400
    2780:	20004cb0 	.word	0x20004cb0
    2784:	00004e20 	.word	0x00004e20
    2788:	00004e40 	.word	0x00004e40
    278c:	00004e5c 	.word	0x00004e5c
    2790:	00004e74 	.word	0x00004e74

00002794 <display_keymap>:
    2794:	b580      	push	{r7, lr}
    2796:	b084      	sub	sp, #16
    2798:	af00      	add	r7, sp, #0
    279a:	6078      	str	r0, [r7, #4]
    279c:	2108      	movs	r1, #8
    279e:	2000      	movs	r0, #0
    27a0:	f001 fc04 	bl	3fac <set_cursor>
    27a4:	2300      	movs	r3, #0
    27a6:	60fb      	str	r3, [r7, #12]
    27a8:	e00a      	b.n	27c0 <display_keymap+0x2c>
    27aa:	68fb      	ldr	r3, [r7, #12]
    27ac:	687a      	ldr	r2, [r7, #4]
    27ae:	4413      	add	r3, r2
    27b0:	781b      	ldrb	r3, [r3, #0]
    27b2:	2110      	movs	r1, #16
    27b4:	4618      	mov	r0, r3
    27b6:	f001 fc55 	bl	4064 <print_int>
    27ba:	68fb      	ldr	r3, [r7, #12]
    27bc:	3301      	adds	r3, #1
    27be:	60fb      	str	r3, [r7, #12]
    27c0:	68fb      	ldr	r3, [r7, #12]
    27c2:	2b07      	cmp	r3, #7
    27c4:	ddf1      	ble.n	27aa <display_keymap+0x16>
    27c6:	bf00      	nop
    27c8:	3710      	adds	r7, #16
    27ca:	46bd      	mov	sp, r7
    27cc:	bd80      	pop	{r7, pc}

000027ce <buttons_map>:
    27ce:	b580      	push	{r7, lr}
    27d0:	b086      	sub	sp, #24
    27d2:	af00      	add	r7, sp, #0
    27d4:	23ff      	movs	r3, #255	; 0xff
    27d6:	74fb      	strb	r3, [r7, #19]
    27d8:	f7fe ff72 	bl	16c0 <get_keymap>
    27dc:	60f8      	str	r0, [r7, #12]
    27de:	f7ff fb67 	bl	1eb0 <gfx_cls>
    27e2:	4882      	ldr	r0, [pc, #520]	; (29ec <buttons_map+0x21e>)
    27e4:	f001 fc31 	bl	404a <println>
    27e8:	2300      	movs	r3, #0
    27ea:	617b      	str	r3, [r7, #20]
    27ec:	e00b      	b.n	2806 <buttons_map+0x38>
    27ee:	697b      	ldr	r3, [r7, #20]
    27f0:	68fa      	ldr	r2, [r7, #12]
    27f2:	4413      	add	r3, r2
    27f4:	7819      	ldrb	r1, [r3, #0]
    27f6:	1d3a      	adds	r2, r7, #4
    27f8:	697b      	ldr	r3, [r7, #20]
    27fa:	4413      	add	r3, r2
    27fc:	460a      	mov	r2, r1
    27fe:	701a      	strb	r2, [r3, #0]
    2800:	697b      	ldr	r3, [r7, #20]
    2802:	3301      	adds	r3, #1
    2804:	617b      	str	r3, [r7, #20]
    2806:	697b      	ldr	r3, [r7, #20]
    2808:	2b07      	cmp	r3, #7
    280a:	ddf0      	ble.n	27ee <buttons_map+0x20>
    280c:	1d3b      	adds	r3, r7, #4
    280e:	4618      	mov	r0, r3
    2810:	f7ff ffc0 	bl	2794 <display_keymap>
    2814:	2108      	movs	r1, #8
    2816:	2000      	movs	r0, #0
    2818:	f001 fbc8 	bl	3fac <set_cursor>
    281c:	2001      	movs	r0, #1
    281e:	f001 fd5b 	bl	42d8 <show_cursor>
    2822:	2300      	movs	r3, #0
    2824:	617b      	str	r3, [r7, #20]
    2826:	1d3a      	adds	r2, r7, #4
    2828:	697b      	ldr	r3, [r7, #20]
    282a:	4413      	add	r3, r2
    282c:	781b      	ldrb	r3, [r3, #0]
    282e:	74bb      	strb	r3, [r7, #18]
    2830:	e0c2      	b.n	29b8 <buttons_map+0x1ea>
    2832:	f7fe fefd 	bl	1630 <btn_wait_any>
    2836:	4603      	mov	r3, r0
    2838:	74fb      	strb	r3, [r7, #19]
    283a:	7cfb      	ldrb	r3, [r7, #19]
    283c:	3b05      	subs	r3, #5
    283e:	2b07      	cmp	r3, #7
    2840:	f200 80b6 	bhi.w	29b0 <buttons_map+0x1e2>
    2844:	a201      	add	r2, pc, #4	; (adr r2, 284c <buttons_map+0x7e>)
    2846:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    284a:	bf00      	nop
    284c:	000028e3 	.word	0x000028e3
    2850:	000029b1 	.word	0x000029b1
    2854:	0000286d 	.word	0x0000286d
    2858:	00002921 	.word	0x00002921
    285c:	000028a9 	.word	0x000028a9
    2860:	000029b1 	.word	0x000029b1
    2864:	000029b1 	.word	0x000029b1
    2868:	0000295f 	.word	0x0000295f
    286c:	697b      	ldr	r3, [r7, #20]
    286e:	2b00      	cmp	r3, #0
    2870:	f000 8097 	beq.w	29a2 <buttons_map+0x1d4>
    2874:	2000      	movs	r0, #0
    2876:	f001 fd2f 	bl	42d8 <show_cursor>
    287a:	697b      	ldr	r3, [r7, #20]
    287c:	3b01      	subs	r3, #1
    287e:	617b      	str	r3, [r7, #20]
    2880:	697b      	ldr	r3, [r7, #20]
    2882:	b2db      	uxtb	r3, r3
    2884:	461a      	mov	r2, r3
    2886:	00d2      	lsls	r2, r2, #3
    2888:	4413      	add	r3, r2
    288a:	005b      	lsls	r3, r3, #1
    288c:	b2db      	uxtb	r3, r3
    288e:	2108      	movs	r1, #8
    2890:	4618      	mov	r0, r3
    2892:	f001 fb8b 	bl	3fac <set_cursor>
    2896:	2001      	movs	r0, #1
    2898:	f001 fd1e 	bl	42d8 <show_cursor>
    289c:	1d3a      	adds	r2, r7, #4
    289e:	697b      	ldr	r3, [r7, #20]
    28a0:	4413      	add	r3, r2
    28a2:	781b      	ldrb	r3, [r3, #0]
    28a4:	74bb      	strb	r3, [r7, #18]
    28a6:	e07c      	b.n	29a2 <buttons_map+0x1d4>
    28a8:	697b      	ldr	r3, [r7, #20]
    28aa:	2b06      	cmp	r3, #6
    28ac:	dc7b      	bgt.n	29a6 <buttons_map+0x1d8>
    28ae:	2000      	movs	r0, #0
    28b0:	f001 fd12 	bl	42d8 <show_cursor>
    28b4:	697b      	ldr	r3, [r7, #20]
    28b6:	3301      	adds	r3, #1
    28b8:	617b      	str	r3, [r7, #20]
    28ba:	697b      	ldr	r3, [r7, #20]
    28bc:	b2db      	uxtb	r3, r3
    28be:	461a      	mov	r2, r3
    28c0:	00d2      	lsls	r2, r2, #3
    28c2:	4413      	add	r3, r2
    28c4:	005b      	lsls	r3, r3, #1
    28c6:	b2db      	uxtb	r3, r3
    28c8:	2108      	movs	r1, #8
    28ca:	4618      	mov	r0, r3
    28cc:	f001 fb6e 	bl	3fac <set_cursor>
    28d0:	2001      	movs	r0, #1
    28d2:	f001 fd01 	bl	42d8 <show_cursor>
    28d6:	1d3a      	adds	r2, r7, #4
    28d8:	697b      	ldr	r3, [r7, #20]
    28da:	4413      	add	r3, r2
    28dc:	781b      	ldrb	r3, [r3, #0]
    28de:	74bb      	strb	r3, [r7, #18]
    28e0:	e061      	b.n	29a6 <buttons_map+0x1d8>
    28e2:	7cbb      	ldrb	r3, [r7, #18]
    28e4:	2b0e      	cmp	r3, #14
    28e6:	d860      	bhi.n	29aa <buttons_map+0x1dc>
    28e8:	7cbb      	ldrb	r3, [r7, #18]
    28ea:	3301      	adds	r3, #1
    28ec:	74bb      	strb	r3, [r7, #18]
    28ee:	1d3a      	adds	r2, r7, #4
    28f0:	697b      	ldr	r3, [r7, #20]
    28f2:	4413      	add	r3, r2
    28f4:	7cba      	ldrb	r2, [r7, #18]
    28f6:	701a      	strb	r2, [r3, #0]
    28f8:	7cbb      	ldrb	r3, [r7, #18]
    28fa:	2110      	movs	r1, #16
    28fc:	4618      	mov	r0, r3
    28fe:	f001 fbb1 	bl	4064 <print_int>
    2902:	697b      	ldr	r3, [r7, #20]
    2904:	b2db      	uxtb	r3, r3
    2906:	461a      	mov	r2, r3
    2908:	00d2      	lsls	r2, r2, #3
    290a:	4413      	add	r3, r2
    290c:	005b      	lsls	r3, r3, #1
    290e:	b2db      	uxtb	r3, r3
    2910:	2108      	movs	r1, #8
    2912:	4618      	mov	r0, r3
    2914:	f001 fb4a 	bl	3fac <set_cursor>
    2918:	2001      	movs	r0, #1
    291a:	f001 fcdd 	bl	42d8 <show_cursor>
    291e:	e044      	b.n	29aa <buttons_map+0x1dc>
    2920:	7cbb      	ldrb	r3, [r7, #18]
    2922:	2b00      	cmp	r3, #0
    2924:	d043      	beq.n	29ae <buttons_map+0x1e0>
    2926:	7cbb      	ldrb	r3, [r7, #18]
    2928:	3b01      	subs	r3, #1
    292a:	74bb      	strb	r3, [r7, #18]
    292c:	1d3a      	adds	r2, r7, #4
    292e:	697b      	ldr	r3, [r7, #20]
    2930:	4413      	add	r3, r2
    2932:	7cba      	ldrb	r2, [r7, #18]
    2934:	701a      	strb	r2, [r3, #0]
    2936:	7cbb      	ldrb	r3, [r7, #18]
    2938:	2110      	movs	r1, #16
    293a:	4618      	mov	r0, r3
    293c:	f001 fb92 	bl	4064 <print_int>
    2940:	697b      	ldr	r3, [r7, #20]
    2942:	b2db      	uxtb	r3, r3
    2944:	461a      	mov	r2, r3
    2946:	00d2      	lsls	r2, r2, #3
    2948:	4413      	add	r3, r2
    294a:	005b      	lsls	r3, r3, #1
    294c:	b2db      	uxtb	r3, r3
    294e:	2108      	movs	r1, #8
    2950:	4618      	mov	r0, r3
    2952:	f001 fb2b 	bl	3fac <set_cursor>
    2956:	2001      	movs	r0, #1
    2958:	f001 fcbe 	bl	42d8 <show_cursor>
    295c:	e027      	b.n	29ae <buttons_map+0x1e0>
    295e:	2300      	movs	r3, #0
    2960:	617b      	str	r3, [r7, #20]
    2962:	e00b      	b.n	297c <buttons_map+0x1ae>
    2964:	697b      	ldr	r3, [r7, #20]
    2966:	68fa      	ldr	r2, [r7, #12]
    2968:	4413      	add	r3, r2
    296a:	7819      	ldrb	r1, [r3, #0]
    296c:	1d3a      	adds	r2, r7, #4
    296e:	697b      	ldr	r3, [r7, #20]
    2970:	4413      	add	r3, r2
    2972:	460a      	mov	r2, r1
    2974:	701a      	strb	r2, [r3, #0]
    2976:	697b      	ldr	r3, [r7, #20]
    2978:	3301      	adds	r3, #1
    297a:	617b      	str	r3, [r7, #20]
    297c:	697b      	ldr	r3, [r7, #20]
    297e:	2b07      	cmp	r3, #7
    2980:	ddf0      	ble.n	2964 <buttons_map+0x196>
    2982:	1d3b      	adds	r3, r7, #4
    2984:	4618      	mov	r0, r3
    2986:	f7ff ff05 	bl	2794 <display_keymap>
    298a:	2108      	movs	r1, #8
    298c:	2000      	movs	r0, #0
    298e:	f001 fb0d 	bl	3fac <set_cursor>
    2992:	2300      	movs	r3, #0
    2994:	617b      	str	r3, [r7, #20]
    2996:	1d3a      	adds	r2, r7, #4
    2998:	697b      	ldr	r3, [r7, #20]
    299a:	4413      	add	r3, r2
    299c:	781b      	ldrb	r3, [r3, #0]
    299e:	74bb      	strb	r3, [r7, #18]
    29a0:	e006      	b.n	29b0 <buttons_map+0x1e2>
    29a2:	bf00      	nop
    29a4:	e004      	b.n	29b0 <buttons_map+0x1e2>
    29a6:	bf00      	nop
    29a8:	e002      	b.n	29b0 <buttons_map+0x1e2>
    29aa:	bf00      	nop
    29ac:	e000      	b.n	29b0 <buttons_map+0x1e2>
    29ae:	bf00      	nop
    29b0:	7cfb      	ldrb	r3, [r7, #19]
    29b2:	4618      	mov	r0, r3
    29b4:	f7fe fe14 	bl	15e0 <btn_wait_up>
    29b8:	7cfb      	ldrb	r3, [r7, #19]
    29ba:	2b0b      	cmp	r3, #11
    29bc:	f47f af39 	bne.w	2832 <buttons_map+0x64>
    29c0:	2300      	movs	r3, #0
    29c2:	617b      	str	r3, [r7, #20]
    29c4:	e00a      	b.n	29dc <buttons_map+0x20e>
    29c6:	697b      	ldr	r3, [r7, #20]
    29c8:	68fa      	ldr	r2, [r7, #12]
    29ca:	4413      	add	r3, r2
    29cc:	1d39      	adds	r1, r7, #4
    29ce:	697a      	ldr	r2, [r7, #20]
    29d0:	440a      	add	r2, r1
    29d2:	7812      	ldrb	r2, [r2, #0]
    29d4:	701a      	strb	r2, [r3, #0]
    29d6:	697b      	ldr	r3, [r7, #20]
    29d8:	3301      	adds	r3, #1
    29da:	617b      	str	r3, [r7, #20]
    29dc:	697b      	ldr	r3, [r7, #20]
    29de:	2b07      	cmp	r3, #7
    29e0:	ddf1      	ble.n	29c6 <buttons_map+0x1f8>
    29e2:	bf00      	nop
    29e4:	3718      	adds	r7, #24
    29e6:	46bd      	mov	sp, r7
    29e8:	bd80      	pop	{r7, pc}
    29ea:	bf00      	nop
    29ec:	00004e8c 	.word	0x00004e8c

000029f0 <select_game>:
    29f0:	b580      	push	{r7, lr}
    29f2:	af00      	add	r7, sp, #0
    29f4:	f7ff fa5c 	bl	1eb0 <gfx_cls>
    29f8:	4803      	ldr	r0, [pc, #12]	; (2a08 <select_game+0x18>)
    29fa:	f001 fb26 	bl	404a <println>
    29fe:	203c      	movs	r0, #60	; 0x3c
    2a00:	f001 ffb2 	bl	4968 <game_pause>
    2a04:	bf00      	nop
    2a06:	bd80      	pop	{r7, pc}
    2a08:	00004ea0 	.word	0x00004ea0

00002a0c <display_menu>:
    2a0c:	b580      	push	{r7, lr}
    2a0e:	b082      	sub	sp, #8
    2a10:	af00      	add	r7, sp, #0
    2a12:	f7ff fa4d 	bl	1eb0 <gfx_cls>
    2a16:	2300      	movs	r3, #0
    2a18:	607b      	str	r3, [r7, #4]
    2a1a:	e009      	b.n	2a30 <display_menu+0x24>
    2a1c:	4a08      	ldr	r2, [pc, #32]	; (2a40 <display_menu+0x34>)
    2a1e:	687b      	ldr	r3, [r7, #4]
    2a20:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    2a24:	4618      	mov	r0, r3
    2a26:	f001 fb10 	bl	404a <println>
    2a2a:	687b      	ldr	r3, [r7, #4]
    2a2c:	3301      	adds	r3, #1
    2a2e:	607b      	str	r3, [r7, #4]
    2a30:	687b      	ldr	r3, [r7, #4]
    2a32:	2b02      	cmp	r3, #2
    2a34:	ddf2      	ble.n	2a1c <display_menu+0x10>
    2a36:	bf00      	nop
    2a38:	3708      	adds	r7, #8
    2a3a:	46bd      	mov	sp, r7
    2a3c:	bd80      	pop	{r7, pc}
    2a3e:	bf00      	nop
    2a40:	2000000c 	.word	0x2000000c

00002a44 <menu>:
    2a44:	b580      	push	{r7, lr}
    2a46:	b084      	sub	sp, #16
    2a48:	af00      	add	r7, sp, #0
    2a4a:	2300      	movs	r3, #0
    2a4c:	60fb      	str	r3, [r7, #12]
    2a4e:	f001 ff77 	bl	4940 <get_video_params>
    2a52:	60b8      	str	r0, [r7, #8]
    2a54:	f7ff ffda 	bl	2a0c <display_menu>
    2a58:	68fb      	ldr	r3, [r7, #12]
    2a5a:	b2db      	uxtb	r3, r3
    2a5c:	00db      	lsls	r3, r3, #3
    2a5e:	b2db      	uxtb	r3, r3
    2a60:	4619      	mov	r1, r3
    2a62:	2000      	movs	r0, #0
    2a64:	f001 faa2 	bl	3fac <set_cursor>
    2a68:	203e      	movs	r0, #62	; 0x3e
    2a6a:	f001 fa13 	bl	3e94 <put_char>
    2a6e:	f7fe fddf 	bl	1630 <btn_wait_any>
    2a72:	4603      	mov	r3, r0
    2a74:	71fb      	strb	r3, [r7, #7]
    2a76:	79fb      	ldrb	r3, [r7, #7]
    2a78:	4618      	mov	r0, r3
    2a7a:	f7fe fdb1 	bl	15e0 <btn_wait_up>
    2a7e:	68fb      	ldr	r3, [r7, #12]
    2a80:	b2db      	uxtb	r3, r3
    2a82:	00db      	lsls	r3, r3, #3
    2a84:	b2db      	uxtb	r3, r3
    2a86:	4619      	mov	r1, r3
    2a88:	2000      	movs	r0, #0
    2a8a:	f001 fa8f 	bl	3fac <set_cursor>
    2a8e:	2020      	movs	r0, #32
    2a90:	f001 fa00 	bl	3e94 <put_char>
    2a94:	79fb      	ldrb	r3, [r7, #7]
    2a96:	2b08      	cmp	r3, #8
    2a98:	d00a      	beq.n	2ab0 <menu+0x6c>
    2a9a:	2b0b      	cmp	r3, #11
    2a9c:	d00f      	beq.n	2abe <menu+0x7a>
    2a9e:	2b05      	cmp	r3, #5
    2aa0:	d123      	bne.n	2aea <menu+0xa6>
    2aa2:	68fb      	ldr	r3, [r7, #12]
    2aa4:	2b00      	cmp	r3, #0
    2aa6:	d01d      	beq.n	2ae4 <menu+0xa0>
    2aa8:	68fb      	ldr	r3, [r7, #12]
    2aaa:	3b01      	subs	r3, #1
    2aac:	60fb      	str	r3, [r7, #12]
    2aae:	e019      	b.n	2ae4 <menu+0xa0>
    2ab0:	68fb      	ldr	r3, [r7, #12]
    2ab2:	2b01      	cmp	r3, #1
    2ab4:	dc18      	bgt.n	2ae8 <menu+0xa4>
    2ab6:	68fb      	ldr	r3, [r7, #12]
    2ab8:	3301      	adds	r3, #1
    2aba:	60fb      	str	r3, [r7, #12]
    2abc:	e014      	b.n	2ae8 <menu+0xa4>
    2abe:	68fb      	ldr	r3, [r7, #12]
    2ac0:	2b01      	cmp	r3, #1
    2ac2:	d006      	beq.n	2ad2 <menu+0x8e>
    2ac4:	2b02      	cmp	r3, #2
    2ac6:	d007      	beq.n	2ad8 <menu+0x94>
    2ac8:	2b00      	cmp	r3, #0
    2aca:	d108      	bne.n	2ade <menu+0x9a>
    2acc:	f7ff fe7f 	bl	27ce <buttons_map>
    2ad0:	e005      	b.n	2ade <menu+0x9a>
    2ad2:	f7ff ff8d 	bl	29f0 <select_game>
    2ad6:	e002      	b.n	2ade <menu+0x9a>
    2ad8:	f7ff fde3 	bl	26a2 <video_test>
    2adc:	bf00      	nop
    2ade:	f7ff ff95 	bl	2a0c <display_menu>
    2ae2:	e002      	b.n	2aea <menu+0xa6>
    2ae4:	bf00      	nop
    2ae6:	e7b7      	b.n	2a58 <menu+0x14>
    2ae8:	bf00      	nop
    2aea:	e7b5      	b.n	2a58 <menu+0x14>

00002aec <main>:
    2aec:	b580      	push	{r7, lr}
    2aee:	af00      	add	r7, sp, #0
    2af0:	f7ff fb70 	bl	21d4 <set_sysclock>
    2af4:	4b0c      	ldr	r3, [pc, #48]	; (2b28 <main+0x3c>)
    2af6:	f640 021d 	movw	r2, #2077	; 0x81d
    2afa:	619a      	str	r2, [r3, #24]
    2afc:	2206      	movs	r2, #6
    2afe:	210d      	movs	r1, #13
    2b00:	480a      	ldr	r0, [pc, #40]	; (2b2c <main+0x40>)
    2b02:	f7ff f850 	bl	1ba6 <config_pin>
    2b06:	4a09      	ldr	r2, [pc, #36]	; (2b2c <main+0x40>)
    2b08:	4b08      	ldr	r3, [pc, #32]	; (2b2c <main+0x40>)
    2b0a:	68db      	ldr	r3, [r3, #12]
    2b0c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    2b10:	60d3      	str	r3, [r2, #12]
    2b12:	f7fe fc9b 	bl	144c <gamepad_init>
    2b16:	f001 fc07 	bl	4328 <tvout_init>
    2b1a:	f7ff f9c9 	bl	1eb0 <gfx_cls>
    2b1e:	f7ff ff91 	bl	2a44 <menu>
    2b22:	bf00      	nop
    2b24:	bd80      	pop	{r7, pc}
    2b26:	bf00      	nop
    2b28:	40021000 	.word	0x40021000
    2b2c:	40011000 	.word	0x40011000

00002b30 <enable_interrupt>:
    2b30:	b480      	push	{r7}
    2b32:	b083      	sub	sp, #12
    2b34:	af00      	add	r7, sp, #0
    2b36:	6078      	str	r0, [r7, #4]
    2b38:	687b      	ldr	r3, [r7, #4]
    2b3a:	2b3b      	cmp	r3, #59	; 0x3b
    2b3c:	dc17      	bgt.n	2b6e <enable_interrupt+0x3e>
    2b3e:	687b      	ldr	r3, [r7, #4]
    2b40:	115b      	asrs	r3, r3, #5
    2b42:	009b      	lsls	r3, r3, #2
    2b44:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2b48:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2b4c:	687a      	ldr	r2, [r7, #4]
    2b4e:	1152      	asrs	r2, r2, #5
    2b50:	0092      	lsls	r2, r2, #2
    2b52:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2b56:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    2b5a:	6812      	ldr	r2, [r2, #0]
    2b5c:	6879      	ldr	r1, [r7, #4]
    2b5e:	f001 011f 	and.w	r1, r1, #31
    2b62:	2001      	movs	r0, #1
    2b64:	fa00 f101 	lsl.w	r1, r0, r1
    2b68:	430a      	orrs	r2, r1
    2b6a:	601a      	str	r2, [r3, #0]
    2b6c:	e000      	b.n	2b70 <enable_interrupt+0x40>
    2b6e:	bf00      	nop
    2b70:	370c      	adds	r7, #12
    2b72:	46bd      	mov	sp, r7
    2b74:	bc80      	pop	{r7}
    2b76:	4770      	bx	lr

00002b78 <disable_interrupt>:
    2b78:	b480      	push	{r7}
    2b7a:	b083      	sub	sp, #12
    2b7c:	af00      	add	r7, sp, #0
    2b7e:	6078      	str	r0, [r7, #4]
    2b80:	687b      	ldr	r3, [r7, #4]
    2b82:	2b3b      	cmp	r3, #59	; 0x3b
    2b84:	dc0c      	bgt.n	2ba0 <disable_interrupt+0x28>
    2b86:	687b      	ldr	r3, [r7, #4]
    2b88:	115b      	asrs	r3, r3, #5
    2b8a:	009a      	lsls	r2, r3, #2
    2b8c:	4b07      	ldr	r3, [pc, #28]	; (2bac <disable_interrupt+0x34>)
    2b8e:	4413      	add	r3, r2
    2b90:	687a      	ldr	r2, [r7, #4]
    2b92:	f002 021f 	and.w	r2, r2, #31
    2b96:	2101      	movs	r1, #1
    2b98:	fa01 f202 	lsl.w	r2, r1, r2
    2b9c:	601a      	str	r2, [r3, #0]
    2b9e:	e000      	b.n	2ba2 <disable_interrupt+0x2a>
    2ba0:	bf00      	nop
    2ba2:	370c      	adds	r7, #12
    2ba4:	46bd      	mov	sp, r7
    2ba6:	bc80      	pop	{r7}
    2ba8:	4770      	bx	lr
    2baa:	bf00      	nop
    2bac:	e000e180 	.word	0xe000e180

00002bb0 <get_pending>:
    2bb0:	b480      	push	{r7}
    2bb2:	b083      	sub	sp, #12
    2bb4:	af00      	add	r7, sp, #0
    2bb6:	6078      	str	r0, [r7, #4]
    2bb8:	687b      	ldr	r3, [r7, #4]
    2bba:	2b3b      	cmp	r3, #59	; 0x3b
    2bbc:	dd01      	ble.n	2bc2 <get_pending+0x12>
    2bbe:	2300      	movs	r3, #0
    2bc0:	e00c      	b.n	2bdc <get_pending+0x2c>
    2bc2:	687b      	ldr	r3, [r7, #4]
    2bc4:	115b      	asrs	r3, r3, #5
    2bc6:	009a      	lsls	r2, r3, #2
    2bc8:	4b07      	ldr	r3, [pc, #28]	; (2be8 <get_pending+0x38>)
    2bca:	4413      	add	r3, r2
    2bcc:	681b      	ldr	r3, [r3, #0]
    2bce:	687a      	ldr	r2, [r7, #4]
    2bd0:	f002 021f 	and.w	r2, r2, #31
    2bd4:	2101      	movs	r1, #1
    2bd6:	fa01 f202 	lsl.w	r2, r1, r2
    2bda:	4013      	ands	r3, r2
    2bdc:	4618      	mov	r0, r3
    2bde:	370c      	adds	r7, #12
    2be0:	46bd      	mov	sp, r7
    2be2:	bc80      	pop	{r7}
    2be4:	4770      	bx	lr
    2be6:	bf00      	nop
    2be8:	e000e280 	.word	0xe000e280

00002bec <get_active>:
    2bec:	b480      	push	{r7}
    2bee:	b083      	sub	sp, #12
    2bf0:	af00      	add	r7, sp, #0
    2bf2:	6078      	str	r0, [r7, #4]
    2bf4:	687b      	ldr	r3, [r7, #4]
    2bf6:	2b3b      	cmp	r3, #59	; 0x3b
    2bf8:	dd01      	ble.n	2bfe <get_active+0x12>
    2bfa:	2300      	movs	r3, #0
    2bfc:	e00e      	b.n	2c1c <get_active+0x30>
    2bfe:	687b      	ldr	r3, [r7, #4]
    2c00:	115b      	asrs	r3, r3, #5
    2c02:	009b      	lsls	r3, r3, #2
    2c04:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2c08:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    2c0c:	681b      	ldr	r3, [r3, #0]
    2c0e:	687a      	ldr	r2, [r7, #4]
    2c10:	f002 021f 	and.w	r2, r2, #31
    2c14:	2101      	movs	r1, #1
    2c16:	fa01 f202 	lsl.w	r2, r1, r2
    2c1a:	4013      	ands	r3, r2
    2c1c:	4618      	mov	r0, r3
    2c1e:	370c      	adds	r7, #12
    2c20:	46bd      	mov	sp, r7
    2c22:	bc80      	pop	{r7}
    2c24:	4770      	bx	lr

00002c26 <set_pending>:
    2c26:	b480      	push	{r7}
    2c28:	b083      	sub	sp, #12
    2c2a:	af00      	add	r7, sp, #0
    2c2c:	6078      	str	r0, [r7, #4]
    2c2e:	687b      	ldr	r3, [r7, #4]
    2c30:	2b3b      	cmp	r3, #59	; 0x3b
    2c32:	dc17      	bgt.n	2c64 <set_pending+0x3e>
    2c34:	687b      	ldr	r3, [r7, #4]
    2c36:	115b      	asrs	r3, r3, #5
    2c38:	009b      	lsls	r3, r3, #2
    2c3a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2c3e:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    2c42:	687a      	ldr	r2, [r7, #4]
    2c44:	1152      	asrs	r2, r2, #5
    2c46:	0092      	lsls	r2, r2, #2
    2c48:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2c4c:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    2c50:	6812      	ldr	r2, [r2, #0]
    2c52:	6879      	ldr	r1, [r7, #4]
    2c54:	f001 011f 	and.w	r1, r1, #31
    2c58:	2001      	movs	r0, #1
    2c5a:	fa00 f101 	lsl.w	r1, r0, r1
    2c5e:	430a      	orrs	r2, r1
    2c60:	601a      	str	r2, [r3, #0]
    2c62:	e000      	b.n	2c66 <set_pending+0x40>
    2c64:	bf00      	nop
    2c66:	370c      	adds	r7, #12
    2c68:	46bd      	mov	sp, r7
    2c6a:	bc80      	pop	{r7}
    2c6c:	4770      	bx	lr

00002c6e <clear_pending>:
    2c6e:	b480      	push	{r7}
    2c70:	b083      	sub	sp, #12
    2c72:	af00      	add	r7, sp, #0
    2c74:	6078      	str	r0, [r7, #4]
    2c76:	687b      	ldr	r3, [r7, #4]
    2c78:	2b3b      	cmp	r3, #59	; 0x3b
    2c7a:	dc0c      	bgt.n	2c96 <clear_pending+0x28>
    2c7c:	687b      	ldr	r3, [r7, #4]
    2c7e:	115b      	asrs	r3, r3, #5
    2c80:	009a      	lsls	r2, r3, #2
    2c82:	4b07      	ldr	r3, [pc, #28]	; (2ca0 <clear_pending+0x32>)
    2c84:	4413      	add	r3, r2
    2c86:	687a      	ldr	r2, [r7, #4]
    2c88:	f002 021f 	and.w	r2, r2, #31
    2c8c:	2101      	movs	r1, #1
    2c8e:	fa01 f202 	lsl.w	r2, r1, r2
    2c92:	601a      	str	r2, [r3, #0]
    2c94:	e000      	b.n	2c98 <clear_pending+0x2a>
    2c96:	bf00      	nop
    2c98:	370c      	adds	r7, #12
    2c9a:	46bd      	mov	sp, r7
    2c9c:	bc80      	pop	{r7}
    2c9e:	4770      	bx	lr
    2ca0:	e000e280 	.word	0xe000e280

00002ca4 <set_int_priority>:
    2ca4:	b480      	push	{r7}
    2ca6:	b083      	sub	sp, #12
    2ca8:	af00      	add	r7, sp, #0
    2caa:	6078      	str	r0, [r7, #4]
    2cac:	6039      	str	r1, [r7, #0]
    2cae:	687b      	ldr	r3, [r7, #4]
    2cb0:	2b00      	cmp	r3, #0
    2cb2:	db0d      	blt.n	2cd0 <set_int_priority+0x2c>
    2cb4:	687b      	ldr	r3, [r7, #4]
    2cb6:	2b3b      	cmp	r3, #59	; 0x3b
    2cb8:	dc0a      	bgt.n	2cd0 <set_int_priority+0x2c>
    2cba:	687b      	ldr	r3, [r7, #4]
    2cbc:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2cc0:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    2cc4:	683a      	ldr	r2, [r7, #0]
    2cc6:	b2d2      	uxtb	r2, r2
    2cc8:	0112      	lsls	r2, r2, #4
    2cca:	b2d2      	uxtb	r2, r2
    2ccc:	701a      	strb	r2, [r3, #0]
    2cce:	e012      	b.n	2cf6 <set_int_priority+0x52>
    2cd0:	687b      	ldr	r3, [r7, #4]
    2cd2:	2b00      	cmp	r3, #0
    2cd4:	da0f      	bge.n	2cf6 <set_int_priority+0x52>
    2cd6:	687b      	ldr	r3, [r7, #4]
    2cd8:	f113 0f0f 	cmn.w	r3, #15
    2cdc:	db0b      	blt.n	2cf6 <set_int_priority+0x52>
    2cde:	687a      	ldr	r2, [r7, #4]
    2ce0:	f06f 0303 	mvn.w	r3, #3
    2ce4:	1a9b      	subs	r3, r3, r2
    2ce6:	461a      	mov	r2, r3
    2ce8:	4b05      	ldr	r3, [pc, #20]	; (2d00 <set_int_priority+0x5c>)
    2cea:	4413      	add	r3, r2
    2cec:	683a      	ldr	r2, [r7, #0]
    2cee:	b2d2      	uxtb	r2, r2
    2cf0:	0112      	lsls	r2, r2, #4
    2cf2:	b2d2      	uxtb	r2, r2
    2cf4:	701a      	strb	r2, [r3, #0]
    2cf6:	bf00      	nop
    2cf8:	370c      	adds	r7, #12
    2cfa:	46bd      	mov	sp, r7
    2cfc:	bc80      	pop	{r7}
    2cfe:	4770      	bx	lr
    2d00:	e000ed18 	.word	0xe000ed18

00002d04 <leap_year>:
    2d04:	b480      	push	{r7}
    2d06:	b083      	sub	sp, #12
    2d08:	af00      	add	r7, sp, #0
    2d0a:	6078      	str	r0, [r7, #4]
    2d0c:	687b      	ldr	r3, [r7, #4]
    2d0e:	f003 0303 	and.w	r3, r3, #3
    2d12:	2b00      	cmp	r3, #0
    2d14:	d11a      	bne.n	2d4c <leap_year+0x48>
    2d16:	687a      	ldr	r2, [r7, #4]
    2d18:	4b0f      	ldr	r3, [pc, #60]	; (2d58 <leap_year+0x54>)
    2d1a:	fba3 1302 	umull	r1, r3, r3, r2
    2d1e:	095b      	lsrs	r3, r3, #5
    2d20:	2164      	movs	r1, #100	; 0x64
    2d22:	fb01 f303 	mul.w	r3, r1, r3
    2d26:	1ad3      	subs	r3, r2, r3
    2d28:	2b00      	cmp	r3, #0
    2d2a:	d10d      	bne.n	2d48 <leap_year+0x44>
    2d2c:	687a      	ldr	r2, [r7, #4]
    2d2e:	4b0a      	ldr	r3, [pc, #40]	; (2d58 <leap_year+0x54>)
    2d30:	fba3 1302 	umull	r1, r3, r3, r2
    2d34:	09db      	lsrs	r3, r3, #7
    2d36:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2d3a:	fb01 f303 	mul.w	r3, r1, r3
    2d3e:	1ad3      	subs	r3, r2, r3
    2d40:	2b00      	cmp	r3, #0
    2d42:	d001      	beq.n	2d48 <leap_year+0x44>
    2d44:	2300      	movs	r3, #0
    2d46:	e002      	b.n	2d4e <leap_year+0x4a>
    2d48:	2301      	movs	r3, #1
    2d4a:	e000      	b.n	2d4e <leap_year+0x4a>
    2d4c:	2300      	movs	r3, #0
    2d4e:	4618      	mov	r0, r3
    2d50:	370c      	adds	r7, #12
    2d52:	46bd      	mov	sp, r7
    2d54:	bc80      	pop	{r7}
    2d56:	4770      	bx	lr
    2d58:	51eb851f 	.word	0x51eb851f

00002d5c <sec_per_month>:
    2d5c:	b480      	push	{r7}
    2d5e:	b085      	sub	sp, #20
    2d60:	af00      	add	r7, sp, #0
    2d62:	6078      	str	r0, [r7, #4]
    2d64:	6039      	str	r1, [r7, #0]
    2d66:	4a0d      	ldr	r2, [pc, #52]	; (2d9c <sec_per_month+0x40>)
    2d68:	683b      	ldr	r3, [r7, #0]
    2d6a:	4413      	add	r3, r2
    2d6c:	781b      	ldrb	r3, [r3, #0]
    2d6e:	461a      	mov	r2, r3
    2d70:	4b0b      	ldr	r3, [pc, #44]	; (2da0 <sec_per_month+0x44>)
    2d72:	fb03 f302 	mul.w	r3, r3, r2
    2d76:	60fb      	str	r3, [r7, #12]
    2d78:	683b      	ldr	r3, [r7, #0]
    2d7a:	2b02      	cmp	r3, #2
    2d7c:	d108      	bne.n	2d90 <sec_per_month+0x34>
    2d7e:	687b      	ldr	r3, [r7, #4]
    2d80:	2b00      	cmp	r3, #0
    2d82:	d005      	beq.n	2d90 <sec_per_month+0x34>
    2d84:	68fb      	ldr	r3, [r7, #12]
    2d86:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2d8a:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    2d8e:	60fb      	str	r3, [r7, #12]
    2d90:	68fb      	ldr	r3, [r7, #12]
    2d92:	4618      	mov	r0, r3
    2d94:	3714      	adds	r7, #20
    2d96:	46bd      	mov	sp, r7
    2d98:	bc80      	pop	{r7}
    2d9a:	4770      	bx	lr
    2d9c:	00004f80 	.word	0x00004f80
    2da0:	00015180 	.word	0x00015180

00002da4 <get_date_time>:
    2da4:	b580      	push	{r7, lr}
    2da6:	b086      	sub	sp, #24
    2da8:	af00      	add	r7, sp, #0
    2daa:	6078      	str	r0, [r7, #4]
    2dac:	4b66      	ldr	r3, [pc, #408]	; (2f48 <get_date_time+0x1a4>)
    2dae:	699b      	ldr	r3, [r3, #24]
    2db0:	041a      	lsls	r2, r3, #16
    2db2:	4b65      	ldr	r3, [pc, #404]	; (2f48 <get_date_time+0x1a4>)
    2db4:	69db      	ldr	r3, [r3, #28]
    2db6:	4413      	add	r3, r2
    2db8:	617b      	str	r3, [r7, #20]
    2dba:	687b      	ldr	r3, [r7, #4]
    2dbc:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2dc0:	811a      	strh	r2, [r3, #8]
    2dc2:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2dc6:	f7ff ff9d 	bl	2d04 <leap_year>
    2dca:	6138      	str	r0, [r7, #16]
    2dcc:	e019      	b.n	2e02 <get_date_time+0x5e>
    2dce:	693b      	ldr	r3, [r7, #16]
    2dd0:	2b00      	cmp	r3, #0
    2dd2:	d006      	beq.n	2de2 <get_date_time+0x3e>
    2dd4:	697b      	ldr	r3, [r7, #20]
    2dd6:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    2dda:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2dde:	617b      	str	r3, [r7, #20]
    2de0:	e003      	b.n	2dea <get_date_time+0x46>
    2de2:	697a      	ldr	r2, [r7, #20]
    2de4:	4b59      	ldr	r3, [pc, #356]	; (2f4c <get_date_time+0x1a8>)
    2de6:	4413      	add	r3, r2
    2de8:	617b      	str	r3, [r7, #20]
    2dea:	687b      	ldr	r3, [r7, #4]
    2dec:	891b      	ldrh	r3, [r3, #8]
    2dee:	3301      	adds	r3, #1
    2df0:	b29a      	uxth	r2, r3
    2df2:	687b      	ldr	r3, [r7, #4]
    2df4:	811a      	strh	r2, [r3, #8]
    2df6:	687b      	ldr	r3, [r7, #4]
    2df8:	891b      	ldrh	r3, [r3, #8]
    2dfa:	4618      	mov	r0, r3
    2dfc:	f7ff ff82 	bl	2d04 <leap_year>
    2e00:	6138      	str	r0, [r7, #16]
    2e02:	693b      	ldr	r3, [r7, #16]
    2e04:	2b00      	cmp	r3, #0
    2e06:	d103      	bne.n	2e10 <get_date_time+0x6c>
    2e08:	697b      	ldr	r3, [r7, #20]
    2e0a:	4a51      	ldr	r2, [pc, #324]	; (2f50 <get_date_time+0x1ac>)
    2e0c:	4293      	cmp	r3, r2
    2e0e:	d8de      	bhi.n	2dce <get_date_time+0x2a>
    2e10:	693b      	ldr	r3, [r7, #16]
    2e12:	2b00      	cmp	r3, #0
    2e14:	d003      	beq.n	2e1e <get_date_time+0x7a>
    2e16:	697b      	ldr	r3, [r7, #20]
    2e18:	4a4e      	ldr	r2, [pc, #312]	; (2f54 <get_date_time+0x1b0>)
    2e1a:	4293      	cmp	r3, r2
    2e1c:	d8d7      	bhi.n	2dce <get_date_time+0x2a>
    2e1e:	687a      	ldr	r2, [r7, #4]
    2e20:	8853      	ldrh	r3, [r2, #2]
    2e22:	2101      	movs	r1, #1
    2e24:	f361 1389 	bfi	r3, r1, #6, #4
    2e28:	8053      	strh	r3, [r2, #2]
    2e2a:	687a      	ldr	r2, [r7, #4]
    2e2c:	7893      	ldrb	r3, [r2, #2]
    2e2e:	2101      	movs	r1, #1
    2e30:	f361 0345 	bfi	r3, r1, #1, #5
    2e34:	7093      	strb	r3, [r2, #2]
    2e36:	687a      	ldr	r2, [r7, #4]
    2e38:	6813      	ldr	r3, [r2, #0]
    2e3a:	f36f 3310 	bfc	r3, #12, #5
    2e3e:	6013      	str	r3, [r2, #0]
    2e40:	687a      	ldr	r2, [r7, #4]
    2e42:	8813      	ldrh	r3, [r2, #0]
    2e44:	f36f 138b 	bfc	r3, #6, #6
    2e48:	8013      	strh	r3, [r2, #0]
    2e4a:	687a      	ldr	r2, [r7, #4]
    2e4c:	7813      	ldrb	r3, [r2, #0]
    2e4e:	f36f 0305 	bfc	r3, #0, #6
    2e52:	7013      	strb	r3, [r2, #0]
    2e54:	e011      	b.n	2e7a <get_date_time+0xd6>
    2e56:	687b      	ldr	r3, [r7, #4]
    2e58:	885b      	ldrh	r3, [r3, #2]
    2e5a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2e5e:	b2db      	uxtb	r3, r3
    2e60:	3301      	adds	r3, #1
    2e62:	f003 030f 	and.w	r3, r3, #15
    2e66:	b2d9      	uxtb	r1, r3
    2e68:	687a      	ldr	r2, [r7, #4]
    2e6a:	8853      	ldrh	r3, [r2, #2]
    2e6c:	f361 1389 	bfi	r3, r1, #6, #4
    2e70:	8053      	strh	r3, [r2, #2]
    2e72:	697a      	ldr	r2, [r7, #20]
    2e74:	68fb      	ldr	r3, [r7, #12]
    2e76:	1ad3      	subs	r3, r2, r3
    2e78:	617b      	str	r3, [r7, #20]
    2e7a:	687b      	ldr	r3, [r7, #4]
    2e7c:	885b      	ldrh	r3, [r3, #2]
    2e7e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2e82:	b2db      	uxtb	r3, r3
    2e84:	4619      	mov	r1, r3
    2e86:	6938      	ldr	r0, [r7, #16]
    2e88:	f7ff ff68 	bl	2d5c <sec_per_month>
    2e8c:	60f8      	str	r0, [r7, #12]
    2e8e:	68fa      	ldr	r2, [r7, #12]
    2e90:	697b      	ldr	r3, [r7, #20]
    2e92:	429a      	cmp	r2, r3
    2e94:	d3df      	bcc.n	2e56 <get_date_time+0xb2>
    2e96:	697b      	ldr	r3, [r7, #20]
    2e98:	4a2f      	ldr	r2, [pc, #188]	; (2f58 <get_date_time+0x1b4>)
    2e9a:	fba2 2303 	umull	r2, r3, r2, r3
    2e9e:	0c1b      	lsrs	r3, r3, #16
    2ea0:	b2db      	uxtb	r3, r3
    2ea2:	3301      	adds	r3, #1
    2ea4:	b2db      	uxtb	r3, r3
    2ea6:	f003 031f 	and.w	r3, r3, #31
    2eaa:	b2d9      	uxtb	r1, r3
    2eac:	687a      	ldr	r2, [r7, #4]
    2eae:	7893      	ldrb	r3, [r2, #2]
    2eb0:	f361 0345 	bfi	r3, r1, #1, #5
    2eb4:	7093      	strb	r3, [r2, #2]
    2eb6:	697b      	ldr	r3, [r7, #20]
    2eb8:	4a27      	ldr	r2, [pc, #156]	; (2f58 <get_date_time+0x1b4>)
    2eba:	fba2 1203 	umull	r1, r2, r2, r3
    2ebe:	0c12      	lsrs	r2, r2, #16
    2ec0:	4926      	ldr	r1, [pc, #152]	; (2f5c <get_date_time+0x1b8>)
    2ec2:	fb01 f202 	mul.w	r2, r1, r2
    2ec6:	1a9b      	subs	r3, r3, r2
    2ec8:	617b      	str	r3, [r7, #20]
    2eca:	697b      	ldr	r3, [r7, #20]
    2ecc:	4a24      	ldr	r2, [pc, #144]	; (2f60 <get_date_time+0x1bc>)
    2ece:	fba2 2303 	umull	r2, r3, r2, r3
    2ed2:	0adb      	lsrs	r3, r3, #11
    2ed4:	b2db      	uxtb	r3, r3
    2ed6:	f003 031f 	and.w	r3, r3, #31
    2eda:	b2d9      	uxtb	r1, r3
    2edc:	687a      	ldr	r2, [r7, #4]
    2ede:	6813      	ldr	r3, [r2, #0]
    2ee0:	f361 3310 	bfi	r3, r1, #12, #5
    2ee4:	6013      	str	r3, [r2, #0]
    2ee6:	697b      	ldr	r3, [r7, #20]
    2ee8:	4a1d      	ldr	r2, [pc, #116]	; (2f60 <get_date_time+0x1bc>)
    2eea:	fba2 1203 	umull	r1, r2, r2, r3
    2eee:	0ad2      	lsrs	r2, r2, #11
    2ef0:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2ef4:	fb01 f202 	mul.w	r2, r1, r2
    2ef8:	1a9b      	subs	r3, r3, r2
    2efa:	617b      	str	r3, [r7, #20]
    2efc:	697b      	ldr	r3, [r7, #20]
    2efe:	4a19      	ldr	r2, [pc, #100]	; (2f64 <get_date_time+0x1c0>)
    2f00:	fba2 2303 	umull	r2, r3, r2, r3
    2f04:	095b      	lsrs	r3, r3, #5
    2f06:	b2db      	uxtb	r3, r3
    2f08:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2f0c:	b2d9      	uxtb	r1, r3
    2f0e:	687a      	ldr	r2, [r7, #4]
    2f10:	8813      	ldrh	r3, [r2, #0]
    2f12:	f361 138b 	bfi	r3, r1, #6, #6
    2f16:	8013      	strh	r3, [r2, #0]
    2f18:	6979      	ldr	r1, [r7, #20]
    2f1a:	4b12      	ldr	r3, [pc, #72]	; (2f64 <get_date_time+0x1c0>)
    2f1c:	fba3 2301 	umull	r2, r3, r3, r1
    2f20:	095a      	lsrs	r2, r3, #5
    2f22:	4613      	mov	r3, r2
    2f24:	011b      	lsls	r3, r3, #4
    2f26:	1a9b      	subs	r3, r3, r2
    2f28:	009b      	lsls	r3, r3, #2
    2f2a:	1aca      	subs	r2, r1, r3
    2f2c:	b2d3      	uxtb	r3, r2
    2f2e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2f32:	b2d9      	uxtb	r1, r3
    2f34:	687a      	ldr	r2, [r7, #4]
    2f36:	7813      	ldrb	r3, [r2, #0]
    2f38:	f361 0305 	bfi	r3, r1, #0, #6
    2f3c:	7013      	strb	r3, [r2, #0]
    2f3e:	bf00      	nop
    2f40:	3718      	adds	r7, #24
    2f42:	46bd      	mov	sp, r7
    2f44:	bd80      	pop	{r7, pc}
    2f46:	bf00      	nop
    2f48:	40002800 	.word	0x40002800
    2f4c:	fe1ecc80 	.word	0xfe1ecc80
    2f50:	01e1337f 	.word	0x01e1337f
    2f54:	01e284ff 	.word	0x01e284ff
    2f58:	c22e4507 	.word	0xc22e4507
    2f5c:	00015180 	.word	0x00015180
    2f60:	91a2b3c5 	.word	0x91a2b3c5
    2f64:	88888889 	.word	0x88888889

00002f68 <set_date_time>:
    2f68:	b580      	push	{r7, lr}
    2f6a:	b086      	sub	sp, #24
    2f6c:	af00      	add	r7, sp, #0
    2f6e:	6078      	str	r0, [r7, #4]
    2f70:	2300      	movs	r3, #0
    2f72:	613b      	str	r3, [r7, #16]
    2f74:	687b      	ldr	r3, [r7, #4]
    2f76:	891b      	ldrh	r3, [r3, #8]
    2f78:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2f7c:	4293      	cmp	r3, r2
    2f7e:	d803      	bhi.n	2f88 <set_date_time+0x20>
    2f80:	687b      	ldr	r3, [r7, #4]
    2f82:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2f86:	811a      	strh	r2, [r3, #8]
    2f88:	687b      	ldr	r3, [r7, #4]
    2f8a:	891b      	ldrh	r3, [r3, #8]
    2f8c:	f640 023a 	movw	r2, #2106	; 0x83a
    2f90:	4293      	cmp	r3, r2
    2f92:	d903      	bls.n	2f9c <set_date_time+0x34>
    2f94:	687b      	ldr	r3, [r7, #4]
    2f96:	f640 023a 	movw	r2, #2106	; 0x83a
    2f9a:	811a      	strh	r2, [r3, #8]
    2f9c:	687b      	ldr	r3, [r7, #4]
    2f9e:	891b      	ldrh	r3, [r3, #8]
    2fa0:	4618      	mov	r0, r3
    2fa2:	f7ff feaf 	bl	2d04 <leap_year>
    2fa6:	60f8      	str	r0, [r7, #12]
    2fa8:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2fac:	617b      	str	r3, [r7, #20]
    2fae:	e013      	b.n	2fd8 <set_date_time+0x70>
    2fb0:	6978      	ldr	r0, [r7, #20]
    2fb2:	f7ff fea7 	bl	2d04 <leap_year>
    2fb6:	4603      	mov	r3, r0
    2fb8:	2b00      	cmp	r3, #0
    2fba:	d006      	beq.n	2fca <set_date_time+0x62>
    2fbc:	693b      	ldr	r3, [r7, #16]
    2fbe:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2fc2:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    2fc6:	613b      	str	r3, [r7, #16]
    2fc8:	e003      	b.n	2fd2 <set_date_time+0x6a>
    2fca:	693a      	ldr	r2, [r7, #16]
    2fcc:	4b42      	ldr	r3, [pc, #264]	; (30d8 <set_date_time+0x170>)
    2fce:	4413      	add	r3, r2
    2fd0:	613b      	str	r3, [r7, #16]
    2fd2:	697b      	ldr	r3, [r7, #20]
    2fd4:	3301      	adds	r3, #1
    2fd6:	617b      	str	r3, [r7, #20]
    2fd8:	687b      	ldr	r3, [r7, #4]
    2fda:	891b      	ldrh	r3, [r3, #8]
    2fdc:	461a      	mov	r2, r3
    2fde:	697b      	ldr	r3, [r7, #20]
    2fe0:	429a      	cmp	r2, r3
    2fe2:	d8e5      	bhi.n	2fb0 <set_date_time+0x48>
    2fe4:	2301      	movs	r3, #1
    2fe6:	617b      	str	r3, [r7, #20]
    2fe8:	e00a      	b.n	3000 <set_date_time+0x98>
    2fea:	6979      	ldr	r1, [r7, #20]
    2fec:	68f8      	ldr	r0, [r7, #12]
    2fee:	f7ff feb5 	bl	2d5c <sec_per_month>
    2ff2:	4602      	mov	r2, r0
    2ff4:	693b      	ldr	r3, [r7, #16]
    2ff6:	4413      	add	r3, r2
    2ff8:	613b      	str	r3, [r7, #16]
    2ffa:	697b      	ldr	r3, [r7, #20]
    2ffc:	3301      	adds	r3, #1
    2ffe:	617b      	str	r3, [r7, #20]
    3000:	687b      	ldr	r3, [r7, #4]
    3002:	885b      	ldrh	r3, [r3, #2]
    3004:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3008:	b2db      	uxtb	r3, r3
    300a:	461a      	mov	r2, r3
    300c:	697b      	ldr	r3, [r7, #20]
    300e:	429a      	cmp	r2, r3
    3010:	d8eb      	bhi.n	2fea <set_date_time+0x82>
    3012:	687b      	ldr	r3, [r7, #4]
    3014:	789b      	ldrb	r3, [r3, #2]
    3016:	f3c3 0344 	ubfx	r3, r3, #1, #5
    301a:	b2db      	uxtb	r3, r3
    301c:	3b01      	subs	r3, #1
    301e:	4a2f      	ldr	r2, [pc, #188]	; (30dc <set_date_time+0x174>)
    3020:	fb02 f303 	mul.w	r3, r2, r3
    3024:	461a      	mov	r2, r3
    3026:	693b      	ldr	r3, [r7, #16]
    3028:	4413      	add	r3, r2
    302a:	613b      	str	r3, [r7, #16]
    302c:	687b      	ldr	r3, [r7, #4]
    302e:	681b      	ldr	r3, [r3, #0]
    3030:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3034:	b2db      	uxtb	r3, r3
    3036:	461a      	mov	r2, r3
    3038:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    303c:	fb03 f302 	mul.w	r3, r3, r2
    3040:	461a      	mov	r2, r3
    3042:	693b      	ldr	r3, [r7, #16]
    3044:	4413      	add	r3, r2
    3046:	613b      	str	r3, [r7, #16]
    3048:	687b      	ldr	r3, [r7, #4]
    304a:	881b      	ldrh	r3, [r3, #0]
    304c:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3050:	b2db      	uxtb	r3, r3
    3052:	461a      	mov	r2, r3
    3054:	4613      	mov	r3, r2
    3056:	011b      	lsls	r3, r3, #4
    3058:	1a9b      	subs	r3, r3, r2
    305a:	009b      	lsls	r3, r3, #2
    305c:	461a      	mov	r2, r3
    305e:	693b      	ldr	r3, [r7, #16]
    3060:	4413      	add	r3, r2
    3062:	613b      	str	r3, [r7, #16]
    3064:	687b      	ldr	r3, [r7, #4]
    3066:	781b      	ldrb	r3, [r3, #0]
    3068:	f3c3 0305 	ubfx	r3, r3, #0, #6
    306c:	b2db      	uxtb	r3, r3
    306e:	461a      	mov	r2, r3
    3070:	693b      	ldr	r3, [r7, #16]
    3072:	4413      	add	r3, r2
    3074:	613b      	str	r3, [r7, #16]
    3076:	4a1a      	ldr	r2, [pc, #104]	; (30e0 <set_date_time+0x178>)
    3078:	4b19      	ldr	r3, [pc, #100]	; (30e0 <set_date_time+0x178>)
    307a:	69db      	ldr	r3, [r3, #28]
    307c:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3080:	61d3      	str	r3, [r2, #28]
    3082:	4a18      	ldr	r2, [pc, #96]	; (30e4 <set_date_time+0x17c>)
    3084:	4b17      	ldr	r3, [pc, #92]	; (30e4 <set_date_time+0x17c>)
    3086:	681b      	ldr	r3, [r3, #0]
    3088:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    308c:	6013      	str	r3, [r2, #0]
    308e:	4a16      	ldr	r2, [pc, #88]	; (30e8 <set_date_time+0x180>)
    3090:	4b15      	ldr	r3, [pc, #84]	; (30e8 <set_date_time+0x180>)
    3092:	685b      	ldr	r3, [r3, #4]
    3094:	f043 0310 	orr.w	r3, r3, #16
    3098:	6053      	str	r3, [r2, #4]
    309a:	4a13      	ldr	r2, [pc, #76]	; (30e8 <set_date_time+0x180>)
    309c:	693b      	ldr	r3, [r7, #16]
    309e:	0c1b      	lsrs	r3, r3, #16
    30a0:	6193      	str	r3, [r2, #24]
    30a2:	4a11      	ldr	r2, [pc, #68]	; (30e8 <set_date_time+0x180>)
    30a4:	693b      	ldr	r3, [r7, #16]
    30a6:	b29b      	uxth	r3, r3
    30a8:	61d3      	str	r3, [r2, #28]
    30aa:	4a0f      	ldr	r2, [pc, #60]	; (30e8 <set_date_time+0x180>)
    30ac:	4b0e      	ldr	r3, [pc, #56]	; (30e8 <set_date_time+0x180>)
    30ae:	685b      	ldr	r3, [r3, #4]
    30b0:	f023 0310 	bic.w	r3, r3, #16
    30b4:	6053      	str	r3, [r2, #4]
    30b6:	bf00      	nop
    30b8:	4b0b      	ldr	r3, [pc, #44]	; (30e8 <set_date_time+0x180>)
    30ba:	685b      	ldr	r3, [r3, #4]
    30bc:	f003 0320 	and.w	r3, r3, #32
    30c0:	2b00      	cmp	r3, #0
    30c2:	d0f9      	beq.n	30b8 <set_date_time+0x150>
    30c4:	4a07      	ldr	r2, [pc, #28]	; (30e4 <set_date_time+0x17c>)
    30c6:	4b07      	ldr	r3, [pc, #28]	; (30e4 <set_date_time+0x17c>)
    30c8:	681b      	ldr	r3, [r3, #0]
    30ca:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    30ce:	6013      	str	r3, [r2, #0]
    30d0:	bf00      	nop
    30d2:	3718      	adds	r7, #24
    30d4:	46bd      	mov	sp, r7
    30d6:	bd80      	pop	{r7, pc}
    30d8:	01e13380 	.word	0x01e13380
    30dc:	00015180 	.word	0x00015180
    30e0:	40021000 	.word	0x40021000
    30e4:	40007000 	.word	0x40007000
    30e8:	40002800 	.word	0x40002800

000030ec <rtc_init>:
    30ec:	b580      	push	{r7, lr}
    30ee:	b082      	sub	sp, #8
    30f0:	af00      	add	r7, sp, #0
    30f2:	6078      	str	r0, [r7, #4]
    30f4:	6039      	str	r1, [r7, #0]
    30f6:	4b4a      	ldr	r3, [pc, #296]	; (3220 <rtc_init+0x134>)
    30f8:	685b      	ldr	r3, [r3, #4]
    30fa:	f64a 2255 	movw	r2, #43605	; 0xaa55
    30fe:	4293      	cmp	r3, r2
    3100:	f000 8082 	beq.w	3208 <rtc_init+0x11c>
    3104:	4a47      	ldr	r2, [pc, #284]	; (3224 <rtc_init+0x138>)
    3106:	4b47      	ldr	r3, [pc, #284]	; (3224 <rtc_init+0x138>)
    3108:	69db      	ldr	r3, [r3, #28]
    310a:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    310e:	61d3      	str	r3, [r2, #28]
    3110:	4a45      	ldr	r2, [pc, #276]	; (3228 <rtc_init+0x13c>)
    3112:	4b45      	ldr	r3, [pc, #276]	; (3228 <rtc_init+0x13c>)
    3114:	681b      	ldr	r3, [r3, #0]
    3116:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    311a:	6013      	str	r3, [r2, #0]
    311c:	4a41      	ldr	r2, [pc, #260]	; (3224 <rtc_init+0x138>)
    311e:	4b41      	ldr	r3, [pc, #260]	; (3224 <rtc_init+0x138>)
    3120:	6a1b      	ldr	r3, [r3, #32]
    3122:	f043 0301 	orr.w	r3, r3, #1
    3126:	6213      	str	r3, [r2, #32]
    3128:	bf00      	nop
    312a:	4b3e      	ldr	r3, [pc, #248]	; (3224 <rtc_init+0x138>)
    312c:	6a1b      	ldr	r3, [r3, #32]
    312e:	f003 0302 	and.w	r3, r3, #2
    3132:	2b00      	cmp	r3, #0
    3134:	d0f9      	beq.n	312a <rtc_init+0x3e>
    3136:	4a3b      	ldr	r2, [pc, #236]	; (3224 <rtc_init+0x138>)
    3138:	4b3a      	ldr	r3, [pc, #232]	; (3224 <rtc_init+0x138>)
    313a:	6a1b      	ldr	r3, [r3, #32]
    313c:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    3140:	6213      	str	r3, [r2, #32]
    3142:	bf00      	nop
    3144:	4b39      	ldr	r3, [pc, #228]	; (322c <rtc_init+0x140>)
    3146:	685b      	ldr	r3, [r3, #4]
    3148:	f003 0308 	and.w	r3, r3, #8
    314c:	2b00      	cmp	r3, #0
    314e:	d0f9      	beq.n	3144 <rtc_init+0x58>
    3150:	bf00      	nop
    3152:	4b36      	ldr	r3, [pc, #216]	; (322c <rtc_init+0x140>)
    3154:	685b      	ldr	r3, [r3, #4]
    3156:	f003 0320 	and.w	r3, r3, #32
    315a:	2b00      	cmp	r3, #0
    315c:	d0f9      	beq.n	3152 <rtc_init+0x66>
    315e:	4a33      	ldr	r2, [pc, #204]	; (322c <rtc_init+0x140>)
    3160:	4b32      	ldr	r3, [pc, #200]	; (322c <rtc_init+0x140>)
    3162:	685b      	ldr	r3, [r3, #4]
    3164:	f043 0310 	orr.w	r3, r3, #16
    3168:	6053      	str	r3, [r2, #4]
    316a:	bf00      	nop
    316c:	4b2f      	ldr	r3, [pc, #188]	; (322c <rtc_init+0x140>)
    316e:	685b      	ldr	r3, [r3, #4]
    3170:	f003 0320 	and.w	r3, r3, #32
    3174:	2b00      	cmp	r3, #0
    3176:	d0f9      	beq.n	316c <rtc_init+0x80>
    3178:	492c      	ldr	r1, [pc, #176]	; (322c <rtc_init+0x140>)
    317a:	4b2c      	ldr	r3, [pc, #176]	; (322c <rtc_init+0x140>)
    317c:	681a      	ldr	r2, [r3, #0]
    317e:	683b      	ldr	r3, [r7, #0]
    3180:	4313      	orrs	r3, r2
    3182:	600b      	str	r3, [r1, #0]
    3184:	bf00      	nop
    3186:	4b29      	ldr	r3, [pc, #164]	; (322c <rtc_init+0x140>)
    3188:	685b      	ldr	r3, [r3, #4]
    318a:	f003 0320 	and.w	r3, r3, #32
    318e:	2b00      	cmp	r3, #0
    3190:	d0f9      	beq.n	3186 <rtc_init+0x9a>
    3192:	4a26      	ldr	r2, [pc, #152]	; (322c <rtc_init+0x140>)
    3194:	687b      	ldr	r3, [r7, #4]
    3196:	03db      	lsls	r3, r3, #15
    3198:	4925      	ldr	r1, [pc, #148]	; (3230 <rtc_init+0x144>)
    319a:	fba1 1303 	umull	r1, r3, r1, r3
    319e:	099b      	lsrs	r3, r3, #6
    31a0:	3b01      	subs	r3, #1
    31a2:	b29b      	uxth	r3, r3
    31a4:	60d3      	str	r3, [r2, #12]
    31a6:	bf00      	nop
    31a8:	4b20      	ldr	r3, [pc, #128]	; (322c <rtc_init+0x140>)
    31aa:	685b      	ldr	r3, [r3, #4]
    31ac:	f003 0320 	and.w	r3, r3, #32
    31b0:	2b00      	cmp	r3, #0
    31b2:	d0f9      	beq.n	31a8 <rtc_init+0xbc>
    31b4:	4a1d      	ldr	r2, [pc, #116]	; (322c <rtc_init+0x140>)
    31b6:	687b      	ldr	r3, [r7, #4]
    31b8:	03db      	lsls	r3, r3, #15
    31ba:	491d      	ldr	r1, [pc, #116]	; (3230 <rtc_init+0x144>)
    31bc:	fba1 1303 	umull	r1, r3, r1, r3
    31c0:	099b      	lsrs	r3, r3, #6
    31c2:	3b01      	subs	r3, #1
    31c4:	0c1b      	lsrs	r3, r3, #16
    31c6:	f003 030f 	and.w	r3, r3, #15
    31ca:	6093      	str	r3, [r2, #8]
    31cc:	bf00      	nop
    31ce:	4b17      	ldr	r3, [pc, #92]	; (322c <rtc_init+0x140>)
    31d0:	685b      	ldr	r3, [r3, #4]
    31d2:	f003 0320 	and.w	r3, r3, #32
    31d6:	2b00      	cmp	r3, #0
    31d8:	d0f9      	beq.n	31ce <rtc_init+0xe2>
    31da:	4b11      	ldr	r3, [pc, #68]	; (3220 <rtc_init+0x134>)
    31dc:	f64a 2255 	movw	r2, #43605	; 0xaa55
    31e0:	605a      	str	r2, [r3, #4]
    31e2:	4a12      	ldr	r2, [pc, #72]	; (322c <rtc_init+0x140>)
    31e4:	4b11      	ldr	r3, [pc, #68]	; (322c <rtc_init+0x140>)
    31e6:	685b      	ldr	r3, [r3, #4]
    31e8:	f023 0310 	bic.w	r3, r3, #16
    31ec:	6053      	str	r3, [r2, #4]
    31ee:	bf00      	nop
    31f0:	4b0e      	ldr	r3, [pc, #56]	; (322c <rtc_init+0x140>)
    31f2:	685b      	ldr	r3, [r3, #4]
    31f4:	f003 0320 	and.w	r3, r3, #32
    31f8:	2b00      	cmp	r3, #0
    31fa:	d0f9      	beq.n	31f0 <rtc_init+0x104>
    31fc:	4a0a      	ldr	r2, [pc, #40]	; (3228 <rtc_init+0x13c>)
    31fe:	4b0a      	ldr	r3, [pc, #40]	; (3228 <rtc_init+0x13c>)
    3200:	681b      	ldr	r3, [r3, #0]
    3202:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3206:	6013      	str	r3, [r2, #0]
    3208:	210f      	movs	r1, #15
    320a:	2003      	movs	r0, #3
    320c:	f7ff fd4a 	bl	2ca4 <set_int_priority>
    3210:	2003      	movs	r0, #3
    3212:	f7ff fc8d 	bl	2b30 <enable_interrupt>
    3216:	bf00      	nop
    3218:	3708      	adds	r7, #8
    321a:	46bd      	mov	sp, r7
    321c:	bd80      	pop	{r7, pc}
    321e:	bf00      	nop
    3220:	40006c00 	.word	0x40006c00
    3224:	40021000 	.word	0x40021000
    3228:	40007000 	.word	0x40007000
    322c:	40002800 	.word	0x40002800
    3230:	10624dd3 	.word	0x10624dd3

00003234 <reset_backup_domain>:
    3234:	b480      	push	{r7}
    3236:	af00      	add	r7, sp, #0
    3238:	4a0a      	ldr	r2, [pc, #40]	; (3264 <reset_backup_domain+0x30>)
    323a:	4b0a      	ldr	r3, [pc, #40]	; (3264 <reset_backup_domain+0x30>)
    323c:	69db      	ldr	r3, [r3, #28]
    323e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3242:	61d3      	str	r3, [r2, #28]
    3244:	4a07      	ldr	r2, [pc, #28]	; (3264 <reset_backup_domain+0x30>)
    3246:	4b07      	ldr	r3, [pc, #28]	; (3264 <reset_backup_domain+0x30>)
    3248:	6a1b      	ldr	r3, [r3, #32]
    324a:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    324e:	6213      	str	r3, [r2, #32]
    3250:	4a04      	ldr	r2, [pc, #16]	; (3264 <reset_backup_domain+0x30>)
    3252:	4b04      	ldr	r3, [pc, #16]	; (3264 <reset_backup_domain+0x30>)
    3254:	6a1b      	ldr	r3, [r3, #32]
    3256:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    325a:	6213      	str	r3, [r2, #32]
    325c:	bf00      	nop
    325e:	46bd      	mov	sp, r7
    3260:	bc80      	pop	{r7}
    3262:	4770      	bx	lr
    3264:	40021000 	.word	0x40021000

00003268 <rtc_clock_trim>:
    3268:	b480      	push	{r7}
    326a:	b083      	sub	sp, #12
    326c:	af00      	add	r7, sp, #0
    326e:	6078      	str	r0, [r7, #4]
    3270:	4a34      	ldr	r2, [pc, #208]	; (3344 <rtc_clock_trim+0xdc>)
    3272:	4b34      	ldr	r3, [pc, #208]	; (3344 <rtc_clock_trim+0xdc>)
    3274:	69db      	ldr	r3, [r3, #28]
    3276:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    327a:	61d3      	str	r3, [r2, #28]
    327c:	bf00      	nop
    327e:	4b32      	ldr	r3, [pc, #200]	; (3348 <rtc_clock_trim+0xe0>)
    3280:	685b      	ldr	r3, [r3, #4]
    3282:	f003 0308 	and.w	r3, r3, #8
    3286:	2b00      	cmp	r3, #0
    3288:	d0f9      	beq.n	327e <rtc_clock_trim+0x16>
    328a:	4a30      	ldr	r2, [pc, #192]	; (334c <rtc_clock_trim+0xe4>)
    328c:	4b2f      	ldr	r3, [pc, #188]	; (334c <rtc_clock_trim+0xe4>)
    328e:	681b      	ldr	r3, [r3, #0]
    3290:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    3294:	6013      	str	r3, [r2, #0]
    3296:	4a2c      	ldr	r2, [pc, #176]	; (3348 <rtc_clock_trim+0xe0>)
    3298:	4b2b      	ldr	r3, [pc, #172]	; (3348 <rtc_clock_trim+0xe0>)
    329a:	685b      	ldr	r3, [r3, #4]
    329c:	f043 0310 	orr.w	r3, r3, #16
    32a0:	6053      	str	r3, [r2, #4]
    32a2:	4a2b      	ldr	r2, [pc, #172]	; (3350 <rtc_clock_trim+0xe8>)
    32a4:	4b2a      	ldr	r3, [pc, #168]	; (3350 <rtc_clock_trim+0xe8>)
    32a6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    32a8:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    32ac:	62d3      	str	r3, [r2, #44]	; 0x2c
    32ae:	687b      	ldr	r3, [r7, #4]
    32b0:	2b00      	cmp	r3, #0
    32b2:	d10a      	bne.n	32ca <rtc_clock_trim+0x62>
    32b4:	4b26      	ldr	r3, [pc, #152]	; (3350 <rtc_clock_trim+0xe8>)
    32b6:	2200      	movs	r2, #0
    32b8:	62da      	str	r2, [r3, #44]	; 0x2c
    32ba:	4b23      	ldr	r3, [pc, #140]	; (3348 <rtc_clock_trim+0xe0>)
    32bc:	f647 72ff 	movw	r2, #32767	; 0x7fff
    32c0:	60da      	str	r2, [r3, #12]
    32c2:	4b21      	ldr	r3, [pc, #132]	; (3348 <rtc_clock_trim+0xe0>)
    32c4:	2200      	movs	r2, #0
    32c6:	609a      	str	r2, [r3, #8]
    32c8:	e023      	b.n	3312 <rtc_clock_trim+0xaa>
    32ca:	687b      	ldr	r3, [r7, #4]
    32cc:	2b00      	cmp	r3, #0
    32ce:	dd0a      	ble.n	32e6 <rtc_clock_trim+0x7e>
    32d0:	687b      	ldr	r3, [r7, #4]
    32d2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    32d6:	607b      	str	r3, [r7, #4]
    32d8:	491d      	ldr	r1, [pc, #116]	; (3350 <rtc_clock_trim+0xe8>)
    32da:	4b1d      	ldr	r3, [pc, #116]	; (3350 <rtc_clock_trim+0xe8>)
    32dc:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    32de:	687b      	ldr	r3, [r7, #4]
    32e0:	4313      	orrs	r3, r2
    32e2:	62cb      	str	r3, [r1, #44]	; 0x2c
    32e4:	e015      	b.n	3312 <rtc_clock_trim+0xaa>
    32e6:	687b      	ldr	r3, [r7, #4]
    32e8:	425b      	negs	r3, r3
    32ea:	607b      	str	r3, [r7, #4]
    32ec:	687b      	ldr	r3, [r7, #4]
    32ee:	2b7f      	cmp	r3, #127	; 0x7f
    32f0:	dd01      	ble.n	32f6 <rtc_clock_trim+0x8e>
    32f2:	237f      	movs	r3, #127	; 0x7f
    32f4:	607b      	str	r3, [r7, #4]
    32f6:	4b16      	ldr	r3, [pc, #88]	; (3350 <rtc_clock_trim+0xe8>)
    32f8:	2200      	movs	r2, #0
    32fa:	62da      	str	r2, [r3, #44]	; 0x2c
    32fc:	4a12      	ldr	r2, [pc, #72]	; (3348 <rtc_clock_trim+0xe0>)
    32fe:	687b      	ldr	r3, [r7, #4]
    3300:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3304:	33ff      	adds	r3, #255	; 0xff
    3306:	f3c3 030e 	ubfx	r3, r3, #0, #15
    330a:	60d3      	str	r3, [r2, #12]
    330c:	4b0e      	ldr	r3, [pc, #56]	; (3348 <rtc_clock_trim+0xe0>)
    330e:	2200      	movs	r2, #0
    3310:	609a      	str	r2, [r3, #8]
    3312:	4a0d      	ldr	r2, [pc, #52]	; (3348 <rtc_clock_trim+0xe0>)
    3314:	4b0c      	ldr	r3, [pc, #48]	; (3348 <rtc_clock_trim+0xe0>)
    3316:	685b      	ldr	r3, [r3, #4]
    3318:	f023 0310 	bic.w	r3, r3, #16
    331c:	6053      	str	r3, [r2, #4]
    331e:	bf00      	nop
    3320:	4b09      	ldr	r3, [pc, #36]	; (3348 <rtc_clock_trim+0xe0>)
    3322:	685b      	ldr	r3, [r3, #4]
    3324:	f003 0320 	and.w	r3, r3, #32
    3328:	2b00      	cmp	r3, #0
    332a:	d0f9      	beq.n	3320 <rtc_clock_trim+0xb8>
    332c:	4a07      	ldr	r2, [pc, #28]	; (334c <rtc_clock_trim+0xe4>)
    332e:	4b07      	ldr	r3, [pc, #28]	; (334c <rtc_clock_trim+0xe4>)
    3330:	681b      	ldr	r3, [r3, #0]
    3332:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3336:	6013      	str	r3, [r2, #0]
    3338:	bf00      	nop
    333a:	370c      	adds	r7, #12
    333c:	46bd      	mov	sp, r7
    333e:	bc80      	pop	{r7}
    3340:	4770      	bx	lr
    3342:	bf00      	nop
    3344:	40021000 	.word	0x40021000
    3348:	40002800 	.word	0x40002800
    334c:	40007000 	.word	0x40007000
    3350:	40006c00 	.word	0x40006c00

00003354 <rtc_set_alarm>:
    3354:	b480      	push	{r7}
    3356:	b083      	sub	sp, #12
    3358:	af00      	add	r7, sp, #0
    335a:	6078      	str	r0, [r7, #4]
    335c:	bf00      	nop
    335e:	370c      	adds	r7, #12
    3360:	46bd      	mov	sp, r7
    3362:	bc80      	pop	{r7}
    3364:	4770      	bx	lr

00003366 <str_to_date>:
    3366:	b580      	push	{r7, lr}
    3368:	b084      	sub	sp, #16
    336a:	af00      	add	r7, sp, #0
    336c:	6078      	str	r0, [r7, #4]
    336e:	6039      	str	r1, [r7, #0]
    3370:	2300      	movs	r3, #0
    3372:	60fb      	str	r3, [r7, #12]
    3374:	2300      	movs	r3, #0
    3376:	60bb      	str	r3, [r7, #8]
    3378:	e00f      	b.n	339a <str_to_date+0x34>
    337a:	68ba      	ldr	r2, [r7, #8]
    337c:	4613      	mov	r3, r2
    337e:	009b      	lsls	r3, r3, #2
    3380:	4413      	add	r3, r2
    3382:	005b      	lsls	r3, r3, #1
    3384:	4619      	mov	r1, r3
    3386:	68fb      	ldr	r3, [r7, #12]
    3388:	1c5a      	adds	r2, r3, #1
    338a:	60fa      	str	r2, [r7, #12]
    338c:	461a      	mov	r2, r3
    338e:	687b      	ldr	r3, [r7, #4]
    3390:	4413      	add	r3, r2
    3392:	781b      	ldrb	r3, [r3, #0]
    3394:	440b      	add	r3, r1
    3396:	3b30      	subs	r3, #48	; 0x30
    3398:	60bb      	str	r3, [r7, #8]
    339a:	68fb      	ldr	r3, [r7, #12]
    339c:	687a      	ldr	r2, [r7, #4]
    339e:	4413      	add	r3, r2
    33a0:	781b      	ldrb	r3, [r3, #0]
    33a2:	4618      	mov	r0, r3
    33a4:	f7fe f9f7 	bl	1796 <digit>
    33a8:	4603      	mov	r3, r0
    33aa:	2b00      	cmp	r3, #0
    33ac:	d1e5      	bne.n	337a <str_to_date+0x14>
    33ae:	68fb      	ldr	r3, [r7, #12]
    33b0:	2b03      	cmp	r3, #3
    33b2:	dd05      	ble.n	33c0 <str_to_date+0x5a>
    33b4:	68fb      	ldr	r3, [r7, #12]
    33b6:	687a      	ldr	r2, [r7, #4]
    33b8:	4413      	add	r3, r2
    33ba:	781b      	ldrb	r3, [r3, #0]
    33bc:	2b2f      	cmp	r3, #47	; 0x2f
    33be:	d001      	beq.n	33c4 <str_to_date+0x5e>
    33c0:	2300      	movs	r3, #0
    33c2:	e068      	b.n	3496 <str_to_date+0x130>
    33c4:	68bb      	ldr	r3, [r7, #8]
    33c6:	b29a      	uxth	r2, r3
    33c8:	683b      	ldr	r3, [r7, #0]
    33ca:	811a      	strh	r2, [r3, #8]
    33cc:	68fb      	ldr	r3, [r7, #12]
    33ce:	3301      	adds	r3, #1
    33d0:	60fb      	str	r3, [r7, #12]
    33d2:	2300      	movs	r3, #0
    33d4:	60bb      	str	r3, [r7, #8]
    33d6:	e00f      	b.n	33f8 <str_to_date+0x92>
    33d8:	68ba      	ldr	r2, [r7, #8]
    33da:	4613      	mov	r3, r2
    33dc:	009b      	lsls	r3, r3, #2
    33de:	4413      	add	r3, r2
    33e0:	005b      	lsls	r3, r3, #1
    33e2:	4619      	mov	r1, r3
    33e4:	68fb      	ldr	r3, [r7, #12]
    33e6:	1c5a      	adds	r2, r3, #1
    33e8:	60fa      	str	r2, [r7, #12]
    33ea:	461a      	mov	r2, r3
    33ec:	687b      	ldr	r3, [r7, #4]
    33ee:	4413      	add	r3, r2
    33f0:	781b      	ldrb	r3, [r3, #0]
    33f2:	440b      	add	r3, r1
    33f4:	3b30      	subs	r3, #48	; 0x30
    33f6:	60bb      	str	r3, [r7, #8]
    33f8:	68fb      	ldr	r3, [r7, #12]
    33fa:	687a      	ldr	r2, [r7, #4]
    33fc:	4413      	add	r3, r2
    33fe:	781b      	ldrb	r3, [r3, #0]
    3400:	4618      	mov	r0, r3
    3402:	f7fe f9c8 	bl	1796 <digit>
    3406:	4603      	mov	r3, r0
    3408:	2b00      	cmp	r3, #0
    340a:	d1e5      	bne.n	33d8 <str_to_date+0x72>
    340c:	68fb      	ldr	r3, [r7, #12]
    340e:	2b06      	cmp	r3, #6
    3410:	dd05      	ble.n	341e <str_to_date+0xb8>
    3412:	68fb      	ldr	r3, [r7, #12]
    3414:	687a      	ldr	r2, [r7, #4]
    3416:	4413      	add	r3, r2
    3418:	781b      	ldrb	r3, [r3, #0]
    341a:	2b2f      	cmp	r3, #47	; 0x2f
    341c:	d001      	beq.n	3422 <str_to_date+0xbc>
    341e:	2300      	movs	r3, #0
    3420:	e039      	b.n	3496 <str_to_date+0x130>
    3422:	68bb      	ldr	r3, [r7, #8]
    3424:	b2db      	uxtb	r3, r3
    3426:	f003 030f 	and.w	r3, r3, #15
    342a:	b2d9      	uxtb	r1, r3
    342c:	683a      	ldr	r2, [r7, #0]
    342e:	8853      	ldrh	r3, [r2, #2]
    3430:	f361 1389 	bfi	r3, r1, #6, #4
    3434:	8053      	strh	r3, [r2, #2]
    3436:	2300      	movs	r3, #0
    3438:	60bb      	str	r3, [r7, #8]
    343a:	68fb      	ldr	r3, [r7, #12]
    343c:	3301      	adds	r3, #1
    343e:	60fb      	str	r3, [r7, #12]
    3440:	e00f      	b.n	3462 <str_to_date+0xfc>
    3442:	68ba      	ldr	r2, [r7, #8]
    3444:	4613      	mov	r3, r2
    3446:	009b      	lsls	r3, r3, #2
    3448:	4413      	add	r3, r2
    344a:	005b      	lsls	r3, r3, #1
    344c:	4619      	mov	r1, r3
    344e:	68fb      	ldr	r3, [r7, #12]
    3450:	1c5a      	adds	r2, r3, #1
    3452:	60fa      	str	r2, [r7, #12]
    3454:	461a      	mov	r2, r3
    3456:	687b      	ldr	r3, [r7, #4]
    3458:	4413      	add	r3, r2
    345a:	781b      	ldrb	r3, [r3, #0]
    345c:	440b      	add	r3, r1
    345e:	3b30      	subs	r3, #48	; 0x30
    3460:	60bb      	str	r3, [r7, #8]
    3462:	68fb      	ldr	r3, [r7, #12]
    3464:	687a      	ldr	r2, [r7, #4]
    3466:	4413      	add	r3, r2
    3468:	781b      	ldrb	r3, [r3, #0]
    346a:	4618      	mov	r0, r3
    346c:	f7fe f993 	bl	1796 <digit>
    3470:	4603      	mov	r3, r0
    3472:	2b00      	cmp	r3, #0
    3474:	d1e5      	bne.n	3442 <str_to_date+0xdc>
    3476:	68fb      	ldr	r3, [r7, #12]
    3478:	2b09      	cmp	r3, #9
    347a:	dc01      	bgt.n	3480 <str_to_date+0x11a>
    347c:	2300      	movs	r3, #0
    347e:	e00a      	b.n	3496 <str_to_date+0x130>
    3480:	68bb      	ldr	r3, [r7, #8]
    3482:	b2db      	uxtb	r3, r3
    3484:	f003 031f 	and.w	r3, r3, #31
    3488:	b2d9      	uxtb	r1, r3
    348a:	683a      	ldr	r2, [r7, #0]
    348c:	7893      	ldrb	r3, [r2, #2]
    348e:	f361 0345 	bfi	r3, r1, #1, #5
    3492:	7093      	strb	r3, [r2, #2]
    3494:	2301      	movs	r3, #1
    3496:	4618      	mov	r0, r3
    3498:	3710      	adds	r7, #16
    349a:	46bd      	mov	sp, r7
    349c:	bd80      	pop	{r7, pc}

0000349e <str_to_time>:
    349e:	b580      	push	{r7, lr}
    34a0:	b084      	sub	sp, #16
    34a2:	af00      	add	r7, sp, #0
    34a4:	6078      	str	r0, [r7, #4]
    34a6:	6039      	str	r1, [r7, #0]
    34a8:	2300      	movs	r3, #0
    34aa:	60fb      	str	r3, [r7, #12]
    34ac:	2300      	movs	r3, #0
    34ae:	72fb      	strb	r3, [r7, #11]
    34b0:	e010      	b.n	34d4 <str_to_time+0x36>
    34b2:	7afb      	ldrb	r3, [r7, #11]
    34b4:	461a      	mov	r2, r3
    34b6:	0092      	lsls	r2, r2, #2
    34b8:	4413      	add	r3, r2
    34ba:	005b      	lsls	r3, r3, #1
    34bc:	b2da      	uxtb	r2, r3
    34be:	68fb      	ldr	r3, [r7, #12]
    34c0:	1c59      	adds	r1, r3, #1
    34c2:	60f9      	str	r1, [r7, #12]
    34c4:	4619      	mov	r1, r3
    34c6:	687b      	ldr	r3, [r7, #4]
    34c8:	440b      	add	r3, r1
    34ca:	781b      	ldrb	r3, [r3, #0]
    34cc:	4413      	add	r3, r2
    34ce:	b2db      	uxtb	r3, r3
    34d0:	3b30      	subs	r3, #48	; 0x30
    34d2:	72fb      	strb	r3, [r7, #11]
    34d4:	68fb      	ldr	r3, [r7, #12]
    34d6:	687a      	ldr	r2, [r7, #4]
    34d8:	4413      	add	r3, r2
    34da:	781b      	ldrb	r3, [r3, #0]
    34dc:	4618      	mov	r0, r3
    34de:	f7fe f95a 	bl	1796 <digit>
    34e2:	4603      	mov	r3, r0
    34e4:	2b00      	cmp	r3, #0
    34e6:	d1e4      	bne.n	34b2 <str_to_time+0x14>
    34e8:	7afb      	ldrb	r3, [r7, #11]
    34ea:	2b17      	cmp	r3, #23
    34ec:	d805      	bhi.n	34fa <str_to_time+0x5c>
    34ee:	68fb      	ldr	r3, [r7, #12]
    34f0:	687a      	ldr	r2, [r7, #4]
    34f2:	4413      	add	r3, r2
    34f4:	781b      	ldrb	r3, [r3, #0]
    34f6:	2b3a      	cmp	r3, #58	; 0x3a
    34f8:	d001      	beq.n	34fe <str_to_time+0x60>
    34fa:	2300      	movs	r3, #0
    34fc:	e06d      	b.n	35da <str_to_time+0x13c>
    34fe:	7afb      	ldrb	r3, [r7, #11]
    3500:	f003 031f 	and.w	r3, r3, #31
    3504:	b2d9      	uxtb	r1, r3
    3506:	683a      	ldr	r2, [r7, #0]
    3508:	6813      	ldr	r3, [r2, #0]
    350a:	f361 3310 	bfi	r3, r1, #12, #5
    350e:	6013      	str	r3, [r2, #0]
    3510:	68fb      	ldr	r3, [r7, #12]
    3512:	3301      	adds	r3, #1
    3514:	60fb      	str	r3, [r7, #12]
    3516:	2300      	movs	r3, #0
    3518:	72fb      	strb	r3, [r7, #11]
    351a:	e010      	b.n	353e <str_to_time+0xa0>
    351c:	7afb      	ldrb	r3, [r7, #11]
    351e:	461a      	mov	r2, r3
    3520:	0092      	lsls	r2, r2, #2
    3522:	4413      	add	r3, r2
    3524:	005b      	lsls	r3, r3, #1
    3526:	b2da      	uxtb	r2, r3
    3528:	68fb      	ldr	r3, [r7, #12]
    352a:	1c59      	adds	r1, r3, #1
    352c:	60f9      	str	r1, [r7, #12]
    352e:	4619      	mov	r1, r3
    3530:	687b      	ldr	r3, [r7, #4]
    3532:	440b      	add	r3, r1
    3534:	781b      	ldrb	r3, [r3, #0]
    3536:	4413      	add	r3, r2
    3538:	b2db      	uxtb	r3, r3
    353a:	3b30      	subs	r3, #48	; 0x30
    353c:	72fb      	strb	r3, [r7, #11]
    353e:	68fb      	ldr	r3, [r7, #12]
    3540:	687a      	ldr	r2, [r7, #4]
    3542:	4413      	add	r3, r2
    3544:	781b      	ldrb	r3, [r3, #0]
    3546:	4618      	mov	r0, r3
    3548:	f7fe f925 	bl	1796 <digit>
    354c:	4603      	mov	r3, r0
    354e:	2b00      	cmp	r3, #0
    3550:	d1e4      	bne.n	351c <str_to_time+0x7e>
    3552:	7afb      	ldrb	r3, [r7, #11]
    3554:	2b3b      	cmp	r3, #59	; 0x3b
    3556:	d805      	bhi.n	3564 <str_to_time+0xc6>
    3558:	68fb      	ldr	r3, [r7, #12]
    355a:	687a      	ldr	r2, [r7, #4]
    355c:	4413      	add	r3, r2
    355e:	781b      	ldrb	r3, [r3, #0]
    3560:	2b3a      	cmp	r3, #58	; 0x3a
    3562:	d001      	beq.n	3568 <str_to_time+0xca>
    3564:	2300      	movs	r3, #0
    3566:	e038      	b.n	35da <str_to_time+0x13c>
    3568:	7afb      	ldrb	r3, [r7, #11]
    356a:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    356e:	b2d9      	uxtb	r1, r3
    3570:	683a      	ldr	r2, [r7, #0]
    3572:	8813      	ldrh	r3, [r2, #0]
    3574:	f361 138b 	bfi	r3, r1, #6, #6
    3578:	8013      	strh	r3, [r2, #0]
    357a:	2300      	movs	r3, #0
    357c:	72fb      	strb	r3, [r7, #11]
    357e:	68fb      	ldr	r3, [r7, #12]
    3580:	3301      	adds	r3, #1
    3582:	60fb      	str	r3, [r7, #12]
    3584:	e010      	b.n	35a8 <str_to_time+0x10a>
    3586:	7afb      	ldrb	r3, [r7, #11]
    3588:	461a      	mov	r2, r3
    358a:	0092      	lsls	r2, r2, #2
    358c:	4413      	add	r3, r2
    358e:	005b      	lsls	r3, r3, #1
    3590:	b2da      	uxtb	r2, r3
    3592:	68fb      	ldr	r3, [r7, #12]
    3594:	1c59      	adds	r1, r3, #1
    3596:	60f9      	str	r1, [r7, #12]
    3598:	4619      	mov	r1, r3
    359a:	687b      	ldr	r3, [r7, #4]
    359c:	440b      	add	r3, r1
    359e:	781b      	ldrb	r3, [r3, #0]
    35a0:	4413      	add	r3, r2
    35a2:	b2db      	uxtb	r3, r3
    35a4:	3b30      	subs	r3, #48	; 0x30
    35a6:	72fb      	strb	r3, [r7, #11]
    35a8:	68fb      	ldr	r3, [r7, #12]
    35aa:	687a      	ldr	r2, [r7, #4]
    35ac:	4413      	add	r3, r2
    35ae:	781b      	ldrb	r3, [r3, #0]
    35b0:	4618      	mov	r0, r3
    35b2:	f7fe f8f0 	bl	1796 <digit>
    35b6:	4603      	mov	r3, r0
    35b8:	2b00      	cmp	r3, #0
    35ba:	d1e4      	bne.n	3586 <str_to_time+0xe8>
    35bc:	7afb      	ldrb	r3, [r7, #11]
    35be:	2b3b      	cmp	r3, #59	; 0x3b
    35c0:	d901      	bls.n	35c6 <str_to_time+0x128>
    35c2:	2300      	movs	r3, #0
    35c4:	e009      	b.n	35da <str_to_time+0x13c>
    35c6:	7afb      	ldrb	r3, [r7, #11]
    35c8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    35cc:	b2d9      	uxtb	r1, r3
    35ce:	683a      	ldr	r2, [r7, #0]
    35d0:	7813      	ldrb	r3, [r2, #0]
    35d2:	f361 0305 	bfi	r3, r1, #0, #6
    35d6:	7013      	strb	r3, [r2, #0]
    35d8:	2301      	movs	r3, #1
    35da:	4618      	mov	r0, r3
    35dc:	3710      	adds	r7, #16
    35de:	46bd      	mov	sp, r7
    35e0:	bd80      	pop	{r7, pc}

000035e2 <date_str>:
    35e2:	b480      	push	{r7}
    35e4:	b085      	sub	sp, #20
    35e6:	af00      	add	r7, sp, #0
    35e8:	6078      	str	r0, [r7, #4]
    35ea:	6039      	str	r1, [r7, #0]
    35ec:	2300      	movs	r3, #0
    35ee:	60fb      	str	r3, [r7, #12]
    35f0:	687b      	ldr	r3, [r7, #4]
    35f2:	891b      	ldrh	r3, [r3, #8]
    35f4:	60bb      	str	r3, [r7, #8]
    35f6:	68fb      	ldr	r3, [r7, #12]
    35f8:	1c5a      	adds	r2, r3, #1
    35fa:	60fa      	str	r2, [r7, #12]
    35fc:	461a      	mov	r2, r3
    35fe:	683b      	ldr	r3, [r7, #0]
    3600:	4413      	add	r3, r2
    3602:	68ba      	ldr	r2, [r7, #8]
    3604:	495d      	ldr	r1, [pc, #372]	; (377c <date_str+0x19a>)
    3606:	fba1 1202 	umull	r1, r2, r1, r2
    360a:	0992      	lsrs	r2, r2, #6
    360c:	b2d2      	uxtb	r2, r2
    360e:	3230      	adds	r2, #48	; 0x30
    3610:	b2d2      	uxtb	r2, r2
    3612:	701a      	strb	r2, [r3, #0]
    3614:	68bb      	ldr	r3, [r7, #8]
    3616:	4a59      	ldr	r2, [pc, #356]	; (377c <date_str+0x19a>)
    3618:	fba2 1203 	umull	r1, r2, r2, r3
    361c:	0992      	lsrs	r2, r2, #6
    361e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3622:	fb01 f202 	mul.w	r2, r1, r2
    3626:	1a9b      	subs	r3, r3, r2
    3628:	60bb      	str	r3, [r7, #8]
    362a:	68fb      	ldr	r3, [r7, #12]
    362c:	1c5a      	adds	r2, r3, #1
    362e:	60fa      	str	r2, [r7, #12]
    3630:	461a      	mov	r2, r3
    3632:	683b      	ldr	r3, [r7, #0]
    3634:	4413      	add	r3, r2
    3636:	68ba      	ldr	r2, [r7, #8]
    3638:	4951      	ldr	r1, [pc, #324]	; (3780 <date_str+0x19e>)
    363a:	fba1 1202 	umull	r1, r2, r1, r2
    363e:	0952      	lsrs	r2, r2, #5
    3640:	b2d2      	uxtb	r2, r2
    3642:	3230      	adds	r2, #48	; 0x30
    3644:	b2d2      	uxtb	r2, r2
    3646:	701a      	strb	r2, [r3, #0]
    3648:	68bb      	ldr	r3, [r7, #8]
    364a:	4a4d      	ldr	r2, [pc, #308]	; (3780 <date_str+0x19e>)
    364c:	fba2 1203 	umull	r1, r2, r2, r3
    3650:	0952      	lsrs	r2, r2, #5
    3652:	2164      	movs	r1, #100	; 0x64
    3654:	fb01 f202 	mul.w	r2, r1, r2
    3658:	1a9b      	subs	r3, r3, r2
    365a:	60bb      	str	r3, [r7, #8]
    365c:	68fb      	ldr	r3, [r7, #12]
    365e:	1c5a      	adds	r2, r3, #1
    3660:	60fa      	str	r2, [r7, #12]
    3662:	461a      	mov	r2, r3
    3664:	683b      	ldr	r3, [r7, #0]
    3666:	4413      	add	r3, r2
    3668:	68ba      	ldr	r2, [r7, #8]
    366a:	4946      	ldr	r1, [pc, #280]	; (3784 <date_str+0x1a2>)
    366c:	fba1 1202 	umull	r1, r2, r1, r2
    3670:	08d2      	lsrs	r2, r2, #3
    3672:	b2d2      	uxtb	r2, r2
    3674:	3230      	adds	r2, #48	; 0x30
    3676:	b2d2      	uxtb	r2, r2
    3678:	701a      	strb	r2, [r3, #0]
    367a:	68fb      	ldr	r3, [r7, #12]
    367c:	1c5a      	adds	r2, r3, #1
    367e:	60fa      	str	r2, [r7, #12]
    3680:	461a      	mov	r2, r3
    3682:	683b      	ldr	r3, [r7, #0]
    3684:	1898      	adds	r0, r3, r2
    3686:	68b9      	ldr	r1, [r7, #8]
    3688:	4b3e      	ldr	r3, [pc, #248]	; (3784 <date_str+0x1a2>)
    368a:	fba3 2301 	umull	r2, r3, r3, r1
    368e:	08da      	lsrs	r2, r3, #3
    3690:	4613      	mov	r3, r2
    3692:	009b      	lsls	r3, r3, #2
    3694:	4413      	add	r3, r2
    3696:	005b      	lsls	r3, r3, #1
    3698:	1aca      	subs	r2, r1, r3
    369a:	b2d3      	uxtb	r3, r2
    369c:	3330      	adds	r3, #48	; 0x30
    369e:	b2db      	uxtb	r3, r3
    36a0:	7003      	strb	r3, [r0, #0]
    36a2:	68fb      	ldr	r3, [r7, #12]
    36a4:	1c5a      	adds	r2, r3, #1
    36a6:	60fa      	str	r2, [r7, #12]
    36a8:	461a      	mov	r2, r3
    36aa:	683b      	ldr	r3, [r7, #0]
    36ac:	4413      	add	r3, r2
    36ae:	222f      	movs	r2, #47	; 0x2f
    36b0:	701a      	strb	r2, [r3, #0]
    36b2:	687b      	ldr	r3, [r7, #4]
    36b4:	885b      	ldrh	r3, [r3, #2]
    36b6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    36ba:	b2db      	uxtb	r3, r3
    36bc:	60bb      	str	r3, [r7, #8]
    36be:	68fb      	ldr	r3, [r7, #12]
    36c0:	1c5a      	adds	r2, r3, #1
    36c2:	60fa      	str	r2, [r7, #12]
    36c4:	461a      	mov	r2, r3
    36c6:	683b      	ldr	r3, [r7, #0]
    36c8:	4413      	add	r3, r2
    36ca:	68ba      	ldr	r2, [r7, #8]
    36cc:	492d      	ldr	r1, [pc, #180]	; (3784 <date_str+0x1a2>)
    36ce:	fba1 1202 	umull	r1, r2, r1, r2
    36d2:	08d2      	lsrs	r2, r2, #3
    36d4:	b2d2      	uxtb	r2, r2
    36d6:	3230      	adds	r2, #48	; 0x30
    36d8:	b2d2      	uxtb	r2, r2
    36da:	701a      	strb	r2, [r3, #0]
    36dc:	68fb      	ldr	r3, [r7, #12]
    36de:	1c5a      	adds	r2, r3, #1
    36e0:	60fa      	str	r2, [r7, #12]
    36e2:	461a      	mov	r2, r3
    36e4:	683b      	ldr	r3, [r7, #0]
    36e6:	1898      	adds	r0, r3, r2
    36e8:	68b9      	ldr	r1, [r7, #8]
    36ea:	4b26      	ldr	r3, [pc, #152]	; (3784 <date_str+0x1a2>)
    36ec:	fba3 2301 	umull	r2, r3, r3, r1
    36f0:	08da      	lsrs	r2, r3, #3
    36f2:	4613      	mov	r3, r2
    36f4:	009b      	lsls	r3, r3, #2
    36f6:	4413      	add	r3, r2
    36f8:	005b      	lsls	r3, r3, #1
    36fa:	1aca      	subs	r2, r1, r3
    36fc:	b2d3      	uxtb	r3, r2
    36fe:	3330      	adds	r3, #48	; 0x30
    3700:	b2db      	uxtb	r3, r3
    3702:	7003      	strb	r3, [r0, #0]
    3704:	68fb      	ldr	r3, [r7, #12]
    3706:	1c5a      	adds	r2, r3, #1
    3708:	60fa      	str	r2, [r7, #12]
    370a:	461a      	mov	r2, r3
    370c:	683b      	ldr	r3, [r7, #0]
    370e:	4413      	add	r3, r2
    3710:	222f      	movs	r2, #47	; 0x2f
    3712:	701a      	strb	r2, [r3, #0]
    3714:	687b      	ldr	r3, [r7, #4]
    3716:	789b      	ldrb	r3, [r3, #2]
    3718:	f3c3 0344 	ubfx	r3, r3, #1, #5
    371c:	b2db      	uxtb	r3, r3
    371e:	60bb      	str	r3, [r7, #8]
    3720:	68fb      	ldr	r3, [r7, #12]
    3722:	1c5a      	adds	r2, r3, #1
    3724:	60fa      	str	r2, [r7, #12]
    3726:	461a      	mov	r2, r3
    3728:	683b      	ldr	r3, [r7, #0]
    372a:	4413      	add	r3, r2
    372c:	68ba      	ldr	r2, [r7, #8]
    372e:	4915      	ldr	r1, [pc, #84]	; (3784 <date_str+0x1a2>)
    3730:	fba1 1202 	umull	r1, r2, r1, r2
    3734:	08d2      	lsrs	r2, r2, #3
    3736:	b2d2      	uxtb	r2, r2
    3738:	3230      	adds	r2, #48	; 0x30
    373a:	b2d2      	uxtb	r2, r2
    373c:	701a      	strb	r2, [r3, #0]
    373e:	68fb      	ldr	r3, [r7, #12]
    3740:	1c5a      	adds	r2, r3, #1
    3742:	60fa      	str	r2, [r7, #12]
    3744:	461a      	mov	r2, r3
    3746:	683b      	ldr	r3, [r7, #0]
    3748:	1898      	adds	r0, r3, r2
    374a:	68b9      	ldr	r1, [r7, #8]
    374c:	4b0d      	ldr	r3, [pc, #52]	; (3784 <date_str+0x1a2>)
    374e:	fba3 2301 	umull	r2, r3, r3, r1
    3752:	08da      	lsrs	r2, r3, #3
    3754:	4613      	mov	r3, r2
    3756:	009b      	lsls	r3, r3, #2
    3758:	4413      	add	r3, r2
    375a:	005b      	lsls	r3, r3, #1
    375c:	1aca      	subs	r2, r1, r3
    375e:	b2d3      	uxtb	r3, r2
    3760:	3330      	adds	r3, #48	; 0x30
    3762:	b2db      	uxtb	r3, r3
    3764:	7003      	strb	r3, [r0, #0]
    3766:	68fb      	ldr	r3, [r7, #12]
    3768:	683a      	ldr	r2, [r7, #0]
    376a:	4413      	add	r3, r2
    376c:	2200      	movs	r2, #0
    376e:	701a      	strb	r2, [r3, #0]
    3770:	bf00      	nop
    3772:	3714      	adds	r7, #20
    3774:	46bd      	mov	sp, r7
    3776:	bc80      	pop	{r7}
    3778:	4770      	bx	lr
    377a:	bf00      	nop
    377c:	10624dd3 	.word	0x10624dd3
    3780:	51eb851f 	.word	0x51eb851f
    3784:	cccccccd 	.word	0xcccccccd

00003788 <time_str>:
    3788:	b480      	push	{r7}
    378a:	b085      	sub	sp, #20
    378c:	af00      	add	r7, sp, #0
    378e:	6078      	str	r0, [r7, #4]
    3790:	6039      	str	r1, [r7, #0]
    3792:	2300      	movs	r3, #0
    3794:	60fb      	str	r3, [r7, #12]
    3796:	687b      	ldr	r3, [r7, #4]
    3798:	681b      	ldr	r3, [r3, #0]
    379a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    379e:	b2db      	uxtb	r3, r3
    37a0:	60bb      	str	r3, [r7, #8]
    37a2:	68fb      	ldr	r3, [r7, #12]
    37a4:	1c5a      	adds	r2, r3, #1
    37a6:	60fa      	str	r2, [r7, #12]
    37a8:	461a      	mov	r2, r3
    37aa:	683b      	ldr	r3, [r7, #0]
    37ac:	4413      	add	r3, r2
    37ae:	68ba      	ldr	r2, [r7, #8]
    37b0:	4943      	ldr	r1, [pc, #268]	; (38c0 <time_str+0x138>)
    37b2:	fba1 1202 	umull	r1, r2, r1, r2
    37b6:	08d2      	lsrs	r2, r2, #3
    37b8:	b2d2      	uxtb	r2, r2
    37ba:	3230      	adds	r2, #48	; 0x30
    37bc:	b2d2      	uxtb	r2, r2
    37be:	701a      	strb	r2, [r3, #0]
    37c0:	68fb      	ldr	r3, [r7, #12]
    37c2:	1c5a      	adds	r2, r3, #1
    37c4:	60fa      	str	r2, [r7, #12]
    37c6:	461a      	mov	r2, r3
    37c8:	683b      	ldr	r3, [r7, #0]
    37ca:	1898      	adds	r0, r3, r2
    37cc:	68b9      	ldr	r1, [r7, #8]
    37ce:	4b3c      	ldr	r3, [pc, #240]	; (38c0 <time_str+0x138>)
    37d0:	fba3 2301 	umull	r2, r3, r3, r1
    37d4:	08da      	lsrs	r2, r3, #3
    37d6:	4613      	mov	r3, r2
    37d8:	009b      	lsls	r3, r3, #2
    37da:	4413      	add	r3, r2
    37dc:	005b      	lsls	r3, r3, #1
    37de:	1aca      	subs	r2, r1, r3
    37e0:	b2d3      	uxtb	r3, r2
    37e2:	3330      	adds	r3, #48	; 0x30
    37e4:	b2db      	uxtb	r3, r3
    37e6:	7003      	strb	r3, [r0, #0]
    37e8:	68fb      	ldr	r3, [r7, #12]
    37ea:	1c5a      	adds	r2, r3, #1
    37ec:	60fa      	str	r2, [r7, #12]
    37ee:	461a      	mov	r2, r3
    37f0:	683b      	ldr	r3, [r7, #0]
    37f2:	4413      	add	r3, r2
    37f4:	223a      	movs	r2, #58	; 0x3a
    37f6:	701a      	strb	r2, [r3, #0]
    37f8:	687b      	ldr	r3, [r7, #4]
    37fa:	881b      	ldrh	r3, [r3, #0]
    37fc:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3800:	b2db      	uxtb	r3, r3
    3802:	60bb      	str	r3, [r7, #8]
    3804:	68fb      	ldr	r3, [r7, #12]
    3806:	1c5a      	adds	r2, r3, #1
    3808:	60fa      	str	r2, [r7, #12]
    380a:	461a      	mov	r2, r3
    380c:	683b      	ldr	r3, [r7, #0]
    380e:	4413      	add	r3, r2
    3810:	68ba      	ldr	r2, [r7, #8]
    3812:	492b      	ldr	r1, [pc, #172]	; (38c0 <time_str+0x138>)
    3814:	fba1 1202 	umull	r1, r2, r1, r2
    3818:	08d2      	lsrs	r2, r2, #3
    381a:	b2d2      	uxtb	r2, r2
    381c:	3230      	adds	r2, #48	; 0x30
    381e:	b2d2      	uxtb	r2, r2
    3820:	701a      	strb	r2, [r3, #0]
    3822:	68fb      	ldr	r3, [r7, #12]
    3824:	1c5a      	adds	r2, r3, #1
    3826:	60fa      	str	r2, [r7, #12]
    3828:	461a      	mov	r2, r3
    382a:	683b      	ldr	r3, [r7, #0]
    382c:	1898      	adds	r0, r3, r2
    382e:	68b9      	ldr	r1, [r7, #8]
    3830:	4b23      	ldr	r3, [pc, #140]	; (38c0 <time_str+0x138>)
    3832:	fba3 2301 	umull	r2, r3, r3, r1
    3836:	08da      	lsrs	r2, r3, #3
    3838:	4613      	mov	r3, r2
    383a:	009b      	lsls	r3, r3, #2
    383c:	4413      	add	r3, r2
    383e:	005b      	lsls	r3, r3, #1
    3840:	1aca      	subs	r2, r1, r3
    3842:	b2d3      	uxtb	r3, r2
    3844:	3330      	adds	r3, #48	; 0x30
    3846:	b2db      	uxtb	r3, r3
    3848:	7003      	strb	r3, [r0, #0]
    384a:	68fb      	ldr	r3, [r7, #12]
    384c:	1c5a      	adds	r2, r3, #1
    384e:	60fa      	str	r2, [r7, #12]
    3850:	461a      	mov	r2, r3
    3852:	683b      	ldr	r3, [r7, #0]
    3854:	4413      	add	r3, r2
    3856:	223a      	movs	r2, #58	; 0x3a
    3858:	701a      	strb	r2, [r3, #0]
    385a:	687b      	ldr	r3, [r7, #4]
    385c:	781b      	ldrb	r3, [r3, #0]
    385e:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3862:	b2db      	uxtb	r3, r3
    3864:	60bb      	str	r3, [r7, #8]
    3866:	68fb      	ldr	r3, [r7, #12]
    3868:	1c5a      	adds	r2, r3, #1
    386a:	60fa      	str	r2, [r7, #12]
    386c:	461a      	mov	r2, r3
    386e:	683b      	ldr	r3, [r7, #0]
    3870:	4413      	add	r3, r2
    3872:	68ba      	ldr	r2, [r7, #8]
    3874:	4912      	ldr	r1, [pc, #72]	; (38c0 <time_str+0x138>)
    3876:	fba1 1202 	umull	r1, r2, r1, r2
    387a:	08d2      	lsrs	r2, r2, #3
    387c:	b2d2      	uxtb	r2, r2
    387e:	3230      	adds	r2, #48	; 0x30
    3880:	b2d2      	uxtb	r2, r2
    3882:	701a      	strb	r2, [r3, #0]
    3884:	68fb      	ldr	r3, [r7, #12]
    3886:	1c5a      	adds	r2, r3, #1
    3888:	60fa      	str	r2, [r7, #12]
    388a:	461a      	mov	r2, r3
    388c:	683b      	ldr	r3, [r7, #0]
    388e:	1898      	adds	r0, r3, r2
    3890:	68b9      	ldr	r1, [r7, #8]
    3892:	4b0b      	ldr	r3, [pc, #44]	; (38c0 <time_str+0x138>)
    3894:	fba3 2301 	umull	r2, r3, r3, r1
    3898:	08da      	lsrs	r2, r3, #3
    389a:	4613      	mov	r3, r2
    389c:	009b      	lsls	r3, r3, #2
    389e:	4413      	add	r3, r2
    38a0:	005b      	lsls	r3, r3, #1
    38a2:	1aca      	subs	r2, r1, r3
    38a4:	b2d3      	uxtb	r3, r2
    38a6:	3330      	adds	r3, #48	; 0x30
    38a8:	b2db      	uxtb	r3, r3
    38aa:	7003      	strb	r3, [r0, #0]
    38ac:	68fb      	ldr	r3, [r7, #12]
    38ae:	683a      	ldr	r2, [r7, #0]
    38b0:	4413      	add	r3, r2
    38b2:	2200      	movs	r2, #0
    38b4:	701a      	strb	r2, [r3, #0]
    38b6:	bf00      	nop
    38b8:	3714      	adds	r7, #20
    38ba:	46bd      	mov	sp, r7
    38bc:	bc80      	pop	{r7}
    38be:	4770      	bx	lr
    38c0:	cccccccd 	.word	0xcccccccd

000038c4 <get_fattime>:
    38c4:	b580      	push	{r7, lr}
    38c6:	b084      	sub	sp, #16
    38c8:	af00      	add	r7, sp, #0
    38ca:	463b      	mov	r3, r7
    38cc:	4618      	mov	r0, r3
    38ce:	f7ff fa69 	bl	2da4 <get_date_time>
    38d2:	783b      	ldrb	r3, [r7, #0]
    38d4:	f3c3 0305 	ubfx	r3, r3, #0, #6
    38d8:	b2db      	uxtb	r3, r3
    38da:	0fda      	lsrs	r2, r3, #31
    38dc:	4413      	add	r3, r2
    38de:	105b      	asrs	r3, r3, #1
    38e0:	b2db      	uxtb	r3, r3
    38e2:	f003 031f 	and.w	r3, r3, #31
    38e6:	b2da      	uxtb	r2, r3
    38e8:	7b3b      	ldrb	r3, [r7, #12]
    38ea:	f362 0304 	bfi	r3, r2, #0, #5
    38ee:	733b      	strb	r3, [r7, #12]
    38f0:	883b      	ldrh	r3, [r7, #0]
    38f2:	f3c3 1385 	ubfx	r3, r3, #6, #6
    38f6:	b2da      	uxtb	r2, r3
    38f8:	89bb      	ldrh	r3, [r7, #12]
    38fa:	f362 134a 	bfi	r3, r2, #5, #6
    38fe:	81bb      	strh	r3, [r7, #12]
    3900:	683b      	ldr	r3, [r7, #0]
    3902:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3906:	b2da      	uxtb	r2, r3
    3908:	7b7b      	ldrb	r3, [r7, #13]
    390a:	f362 03c7 	bfi	r3, r2, #3, #5
    390e:	737b      	strb	r3, [r7, #13]
    3910:	78bb      	ldrb	r3, [r7, #2]
    3912:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3916:	b2da      	uxtb	r2, r3
    3918:	7bbb      	ldrb	r3, [r7, #14]
    391a:	f362 0304 	bfi	r3, r2, #0, #5
    391e:	73bb      	strb	r3, [r7, #14]
    3920:	887b      	ldrh	r3, [r7, #2]
    3922:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3926:	b2da      	uxtb	r2, r3
    3928:	89fb      	ldrh	r3, [r7, #14]
    392a:	f362 1348 	bfi	r3, r2, #5, #4
    392e:	81fb      	strh	r3, [r7, #14]
    3930:	893b      	ldrh	r3, [r7, #8]
    3932:	b2db      	uxtb	r3, r3
    3934:	3344      	adds	r3, #68	; 0x44
    3936:	b2db      	uxtb	r3, r3
    3938:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    393c:	b2da      	uxtb	r2, r3
    393e:	7bfb      	ldrb	r3, [r7, #15]
    3940:	f362 0347 	bfi	r3, r2, #1, #7
    3944:	73fb      	strb	r3, [r7, #15]
    3946:	68fb      	ldr	r3, [r7, #12]
    3948:	4618      	mov	r0, r3
    394a:	3710      	adds	r7, #16
    394c:	46bd      	mov	sp, r7
    394e:	bd80      	pop	{r7, pc}

00003950 <RTC_handler>:
    3950:	b480      	push	{r7}
    3952:	b083      	sub	sp, #12
    3954:	af00      	add	r7, sp, #0
    3956:	4b0a      	ldr	r3, [pc, #40]	; (3980 <RTC_handler+0x30>)
    3958:	685b      	ldr	r3, [r3, #4]
    395a:	f003 0301 	and.w	r3, r3, #1
    395e:	2b00      	cmp	r3, #0
    3960:	d001      	beq.n	3966 <RTC_handler+0x16>
    3962:	4b07      	ldr	r3, [pc, #28]	; (3980 <RTC_handler+0x30>)
    3964:	685b      	ldr	r3, [r3, #4]
    3966:	4b06      	ldr	r3, [pc, #24]	; (3980 <RTC_handler+0x30>)
    3968:	685b      	ldr	r3, [r3, #4]
    396a:	f003 0302 	and.w	r3, r3, #2
    396e:	2b00      	cmp	r3, #0
    3970:	d001      	beq.n	3976 <RTC_handler+0x26>
    3972:	4b03      	ldr	r3, [pc, #12]	; (3980 <RTC_handler+0x30>)
    3974:	685b      	ldr	r3, [r3, #4]
    3976:	bf00      	nop
    3978:	370c      	adds	r7, #12
    397a:	46bd      	mov	sp, r7
    397c:	bc80      	pop	{r7}
    397e:	4770      	bx	lr
    3980:	40002800 	.word	0x40002800

00003984 <sound_init>:
    3984:	b480      	push	{r7}
    3986:	af00      	add	r7, sp, #0
    3988:	bf00      	nop
    398a:	46bd      	mov	sp, r7
    398c:	bc80      	pop	{r7}
    398e:	4770      	bx	lr

00003990 <tone>:
    3990:	b480      	push	{r7}
    3992:	b083      	sub	sp, #12
    3994:	af00      	add	r7, sp, #0
    3996:	4603      	mov	r3, r0
    3998:	460a      	mov	r2, r1
    399a:	80fb      	strh	r3, [r7, #6]
    399c:	4613      	mov	r3, r2
    399e:	80bb      	strh	r3, [r7, #4]
    39a0:	bf00      	nop
    39a2:	370c      	adds	r7, #12
    39a4:	46bd      	mov	sp, r7
    39a6:	bc80      	pop	{r7}
    39a8:	4770      	bx	lr

000039aa <beep>:
    39aa:	b480      	push	{r7}
    39ac:	af00      	add	r7, sp, #0
    39ae:	bf00      	nop
    39b0:	46bd      	mov	sp, r7
    39b2:	bc80      	pop	{r7}
    39b4:	4770      	bx	lr

000039b6 <load_sound_buffer>:
    39b6:	b480      	push	{r7}
    39b8:	b083      	sub	sp, #12
    39ba:	af00      	add	r7, sp, #0
    39bc:	6078      	str	r0, [r7, #4]
    39be:	bf00      	nop
    39c0:	370c      	adds	r7, #12
    39c2:	46bd      	mov	sp, r7
    39c4:	bc80      	pop	{r7}
    39c6:	4770      	bx	lr

000039c8 <sound_stop>:
    39c8:	b480      	push	{r7}
    39ca:	af00      	add	r7, sp, #0
    39cc:	bf00      	nop
    39ce:	46bd      	mov	sp, r7
    39d0:	bc80      	pop	{r7}
    39d2:	4770      	bx	lr

000039d4 <key_tone>:
    39d4:	b480      	push	{r7}
    39d6:	b085      	sub	sp, #20
    39d8:	af00      	add	r7, sp, #0
    39da:	60f8      	str	r0, [r7, #12]
    39dc:	60b9      	str	r1, [r7, #8]
    39de:	607a      	str	r2, [r7, #4]
    39e0:	bf00      	nop
    39e2:	3714      	adds	r7, #20
    39e4:	46bd      	mov	sp, r7
    39e6:	bc80      	pop	{r7}
    39e8:	4770      	bx	lr

000039ea <noise>:
    39ea:	b480      	push	{r7}
    39ec:	b083      	sub	sp, #12
    39ee:	af00      	add	r7, sp, #0
    39f0:	6078      	str	r0, [r7, #4]
    39f2:	bf00      	nop
    39f4:	370c      	adds	r7, #12
    39f6:	46bd      	mov	sp, r7
    39f8:	bc80      	pop	{r7}
    39fa:	4770      	bx	lr

000039fc <spi_baudrate>:
    39fc:	b480      	push	{r7}
    39fe:	b083      	sub	sp, #12
    3a00:	af00      	add	r7, sp, #0
    3a02:	6078      	str	r0, [r7, #4]
    3a04:	6039      	str	r1, [r7, #0]
    3a06:	687b      	ldr	r3, [r7, #4]
    3a08:	681b      	ldr	r3, [r3, #0]
    3a0a:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    3a0e:	687b      	ldr	r3, [r7, #4]
    3a10:	601a      	str	r2, [r3, #0]
    3a12:	687b      	ldr	r3, [r7, #4]
    3a14:	681a      	ldr	r2, [r3, #0]
    3a16:	683b      	ldr	r3, [r7, #0]
    3a18:	00db      	lsls	r3, r3, #3
    3a1a:	431a      	orrs	r2, r3
    3a1c:	687b      	ldr	r3, [r7, #4]
    3a1e:	601a      	str	r2, [r3, #0]
    3a20:	bf00      	nop
    3a22:	370c      	adds	r7, #12
    3a24:	46bd      	mov	sp, r7
    3a26:	bc80      	pop	{r7}
    3a28:	4770      	bx	lr

00003a2a <spi_config_port>:
    3a2a:	b580      	push	{r7, lr}
    3a2c:	b082      	sub	sp, #8
    3a2e:	af00      	add	r7, sp, #0
    3a30:	6078      	str	r0, [r7, #4]
    3a32:	6039      	str	r1, [r7, #0]
    3a34:	4a33      	ldr	r2, [pc, #204]	; (3b04 <spi_config_port+0xda>)
    3a36:	4b33      	ldr	r3, [pc, #204]	; (3b04 <spi_config_port+0xda>)
    3a38:	699b      	ldr	r3, [r3, #24]
    3a3a:	f043 0301 	orr.w	r3, r3, #1
    3a3e:	6193      	str	r3, [r2, #24]
    3a40:	687b      	ldr	r3, [r7, #4]
    3a42:	4a31      	ldr	r2, [pc, #196]	; (3b08 <spi_config_port+0xde>)
    3a44:	4293      	cmp	r3, r2
    3a46:	d13e      	bne.n	3ac6 <spi_config_port+0x9c>
    3a48:	683b      	ldr	r3, [r7, #0]
    3a4a:	2b00      	cmp	r3, #0
    3a4c:	d11a      	bne.n	3a84 <spi_config_port+0x5a>
    3a4e:	4a2d      	ldr	r2, [pc, #180]	; (3b04 <spi_config_port+0xda>)
    3a50:	4b2c      	ldr	r3, [pc, #176]	; (3b04 <spi_config_port+0xda>)
    3a52:	699b      	ldr	r3, [r3, #24]
    3a54:	f043 0304 	orr.w	r3, r3, #4
    3a58:	6193      	str	r3, [r2, #24]
    3a5a:	2203      	movs	r2, #3
    3a5c:	2104      	movs	r1, #4
    3a5e:	482b      	ldr	r0, [pc, #172]	; (3b0c <spi_config_port+0xe2>)
    3a60:	f7fe f8a1 	bl	1ba6 <config_pin>
    3a64:	220b      	movs	r2, #11
    3a66:	2105      	movs	r1, #5
    3a68:	4828      	ldr	r0, [pc, #160]	; (3b0c <spi_config_port+0xe2>)
    3a6a:	f7fe f89c 	bl	1ba6 <config_pin>
    3a6e:	2204      	movs	r2, #4
    3a70:	2106      	movs	r1, #6
    3a72:	4826      	ldr	r0, [pc, #152]	; (3b0c <spi_config_port+0xe2>)
    3a74:	f7fe f897 	bl	1ba6 <config_pin>
    3a78:	220b      	movs	r2, #11
    3a7a:	2107      	movs	r1, #7
    3a7c:	4823      	ldr	r0, [pc, #140]	; (3b0c <spi_config_port+0xe2>)
    3a7e:	f7fe f892 	bl	1ba6 <config_pin>
    3a82:	e03a      	b.n	3afa <spi_config_port+0xd0>
    3a84:	4a1f      	ldr	r2, [pc, #124]	; (3b04 <spi_config_port+0xda>)
    3a86:	4b1f      	ldr	r3, [pc, #124]	; (3b04 <spi_config_port+0xda>)
    3a88:	699b      	ldr	r3, [r3, #24]
    3a8a:	f043 030d 	orr.w	r3, r3, #13
    3a8e:	6193      	str	r3, [r2, #24]
    3a90:	4a1f      	ldr	r2, [pc, #124]	; (3b10 <spi_config_port+0xe6>)
    3a92:	4b1f      	ldr	r3, [pc, #124]	; (3b10 <spi_config_port+0xe6>)
    3a94:	685b      	ldr	r3, [r3, #4]
    3a96:	f043 0301 	orr.w	r3, r3, #1
    3a9a:	6053      	str	r3, [r2, #4]
    3a9c:	2203      	movs	r2, #3
    3a9e:	210f      	movs	r1, #15
    3aa0:	481a      	ldr	r0, [pc, #104]	; (3b0c <spi_config_port+0xe2>)
    3aa2:	f7fe f880 	bl	1ba6 <config_pin>
    3aa6:	220b      	movs	r2, #11
    3aa8:	2103      	movs	r1, #3
    3aaa:	481a      	ldr	r0, [pc, #104]	; (3b14 <spi_config_port+0xea>)
    3aac:	f7fe f87b 	bl	1ba6 <config_pin>
    3ab0:	2204      	movs	r2, #4
    3ab2:	2104      	movs	r1, #4
    3ab4:	4817      	ldr	r0, [pc, #92]	; (3b14 <spi_config_port+0xea>)
    3ab6:	f7fe f876 	bl	1ba6 <config_pin>
    3aba:	220b      	movs	r2, #11
    3abc:	2105      	movs	r1, #5
    3abe:	4815      	ldr	r0, [pc, #84]	; (3b14 <spi_config_port+0xea>)
    3ac0:	f7fe f871 	bl	1ba6 <config_pin>
    3ac4:	e019      	b.n	3afa <spi_config_port+0xd0>
    3ac6:	4a0f      	ldr	r2, [pc, #60]	; (3b04 <spi_config_port+0xda>)
    3ac8:	4b0e      	ldr	r3, [pc, #56]	; (3b04 <spi_config_port+0xda>)
    3aca:	699b      	ldr	r3, [r3, #24]
    3acc:	f043 0308 	orr.w	r3, r3, #8
    3ad0:	6193      	str	r3, [r2, #24]
    3ad2:	2203      	movs	r2, #3
    3ad4:	2102      	movs	r1, #2
    3ad6:	480f      	ldr	r0, [pc, #60]	; (3b14 <spi_config_port+0xea>)
    3ad8:	f7fe f865 	bl	1ba6 <config_pin>
    3adc:	220b      	movs	r2, #11
    3ade:	210d      	movs	r1, #13
    3ae0:	480c      	ldr	r0, [pc, #48]	; (3b14 <spi_config_port+0xea>)
    3ae2:	f7fe f860 	bl	1ba6 <config_pin>
    3ae6:	2204      	movs	r2, #4
    3ae8:	210e      	movs	r1, #14
    3aea:	480a      	ldr	r0, [pc, #40]	; (3b14 <spi_config_port+0xea>)
    3aec:	f7fe f85b 	bl	1ba6 <config_pin>
    3af0:	220b      	movs	r2, #11
    3af2:	210f      	movs	r1, #15
    3af4:	4807      	ldr	r0, [pc, #28]	; (3b14 <spi_config_port+0xea>)
    3af6:	f7fe f856 	bl	1ba6 <config_pin>
    3afa:	bf00      	nop
    3afc:	3708      	adds	r7, #8
    3afe:	46bd      	mov	sp, r7
    3b00:	bd80      	pop	{r7, pc}
    3b02:	bf00      	nop
    3b04:	40021000 	.word	0x40021000
    3b08:	40013000 	.word	0x40013000
    3b0c:	40010800 	.word	0x40010800
    3b10:	40010000 	.word	0x40010000
    3b14:	40010c00 	.word	0x40010c00

00003b18 <spi_init>:
    3b18:	b580      	push	{r7, lr}
    3b1a:	b084      	sub	sp, #16
    3b1c:	af00      	add	r7, sp, #0
    3b1e:	60f8      	str	r0, [r7, #12]
    3b20:	60b9      	str	r1, [r7, #8]
    3b22:	607a      	str	r2, [r7, #4]
    3b24:	603b      	str	r3, [r7, #0]
    3b26:	6839      	ldr	r1, [r7, #0]
    3b28:	68f8      	ldr	r0, [r7, #12]
    3b2a:	f7ff ff7e 	bl	3a2a <spi_config_port>
    3b2e:	68fb      	ldr	r3, [r7, #12]
    3b30:	4a10      	ldr	r2, [pc, #64]	; (3b74 <spi_init+0x5c>)
    3b32:	4293      	cmp	r3, r2
    3b34:	d106      	bne.n	3b44 <spi_init+0x2c>
    3b36:	4a10      	ldr	r2, [pc, #64]	; (3b78 <spi_init+0x60>)
    3b38:	4b0f      	ldr	r3, [pc, #60]	; (3b78 <spi_init+0x60>)
    3b3a:	699b      	ldr	r3, [r3, #24]
    3b3c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    3b40:	6193      	str	r3, [r2, #24]
    3b42:	e005      	b.n	3b50 <spi_init+0x38>
    3b44:	4a0c      	ldr	r2, [pc, #48]	; (3b78 <spi_init+0x60>)
    3b46:	4b0c      	ldr	r3, [pc, #48]	; (3b78 <spi_init+0x60>)
    3b48:	69db      	ldr	r3, [r3, #28]
    3b4a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3b4e:	61d3      	str	r3, [r2, #28]
    3b50:	68fb      	ldr	r3, [r7, #12]
    3b52:	687a      	ldr	r2, [r7, #4]
    3b54:	601a      	str	r2, [r3, #0]
    3b56:	68b9      	ldr	r1, [r7, #8]
    3b58:	68f8      	ldr	r0, [r7, #12]
    3b5a:	f7ff ff4f 	bl	39fc <spi_baudrate>
    3b5e:	68fb      	ldr	r3, [r7, #12]
    3b60:	681b      	ldr	r3, [r3, #0]
    3b62:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    3b66:	68fb      	ldr	r3, [r7, #12]
    3b68:	601a      	str	r2, [r3, #0]
    3b6a:	bf00      	nop
    3b6c:	3710      	adds	r7, #16
    3b6e:	46bd      	mov	sp, r7
    3b70:	bd80      	pop	{r7, pc}
    3b72:	bf00      	nop
    3b74:	40013000 	.word	0x40013000
    3b78:	40021000 	.word	0x40021000

00003b7c <spi_send>:
    3b7c:	b480      	push	{r7}
    3b7e:	b083      	sub	sp, #12
    3b80:	af00      	add	r7, sp, #0
    3b82:	6078      	str	r0, [r7, #4]
    3b84:	460b      	mov	r3, r1
    3b86:	70fb      	strb	r3, [r7, #3]
    3b88:	bf00      	nop
    3b8a:	687b      	ldr	r3, [r7, #4]
    3b8c:	689b      	ldr	r3, [r3, #8]
    3b8e:	f003 0302 	and.w	r3, r3, #2
    3b92:	2b00      	cmp	r3, #0
    3b94:	d0f9      	beq.n	3b8a <spi_send+0xe>
    3b96:	78fa      	ldrb	r2, [r7, #3]
    3b98:	687b      	ldr	r3, [r7, #4]
    3b9a:	60da      	str	r2, [r3, #12]
    3b9c:	bf00      	nop
    3b9e:	687b      	ldr	r3, [r7, #4]
    3ba0:	689b      	ldr	r3, [r3, #8]
    3ba2:	f003 0301 	and.w	r3, r3, #1
    3ba6:	2b00      	cmp	r3, #0
    3ba8:	d0f9      	beq.n	3b9e <spi_send+0x22>
    3baa:	687b      	ldr	r3, [r7, #4]
    3bac:	68db      	ldr	r3, [r3, #12]
    3bae:	b2db      	uxtb	r3, r3
    3bb0:	4618      	mov	r0, r3
    3bb2:	370c      	adds	r7, #12
    3bb4:	46bd      	mov	sp, r7
    3bb6:	bc80      	pop	{r7}
    3bb8:	4770      	bx	lr

00003bba <spi_receive>:
    3bba:	b480      	push	{r7}
    3bbc:	b085      	sub	sp, #20
    3bbe:	af00      	add	r7, sp, #0
    3bc0:	6078      	str	r0, [r7, #4]
    3bc2:	bf00      	nop
    3bc4:	687b      	ldr	r3, [r7, #4]
    3bc6:	689b      	ldr	r3, [r3, #8]
    3bc8:	f003 0302 	and.w	r3, r3, #2
    3bcc:	2b00      	cmp	r3, #0
    3bce:	d0f9      	beq.n	3bc4 <spi_receive+0xa>
    3bd0:	687b      	ldr	r3, [r7, #4]
    3bd2:	22ff      	movs	r2, #255	; 0xff
    3bd4:	60da      	str	r2, [r3, #12]
    3bd6:	bf00      	nop
    3bd8:	687b      	ldr	r3, [r7, #4]
    3bda:	689b      	ldr	r3, [r3, #8]
    3bdc:	f003 0301 	and.w	r3, r3, #1
    3be0:	2b00      	cmp	r3, #0
    3be2:	d0f9      	beq.n	3bd8 <spi_receive+0x1e>
    3be4:	687b      	ldr	r3, [r7, #4]
    3be6:	68db      	ldr	r3, [r3, #12]
    3be8:	73fb      	strb	r3, [r7, #15]
    3bea:	7bfb      	ldrb	r3, [r7, #15]
    3bec:	4618      	mov	r0, r3
    3bee:	3714      	adds	r7, #20
    3bf0:	46bd      	mov	sp, r7
    3bf2:	bc80      	pop	{r7}
    3bf4:	4770      	bx	lr

00003bf6 <spi_send_block>:
    3bf6:	b480      	push	{r7}
    3bf8:	b087      	sub	sp, #28
    3bfa:	af00      	add	r7, sp, #0
    3bfc:	60f8      	str	r0, [r7, #12]
    3bfe:	60b9      	str	r1, [r7, #8]
    3c00:	607a      	str	r2, [r7, #4]
    3c02:	e010      	b.n	3c26 <spi_send_block+0x30>
    3c04:	68bb      	ldr	r3, [r7, #8]
    3c06:	1c5a      	adds	r2, r3, #1
    3c08:	60ba      	str	r2, [r7, #8]
    3c0a:	781b      	ldrb	r3, [r3, #0]
    3c0c:	461a      	mov	r2, r3
    3c0e:	68fb      	ldr	r3, [r7, #12]
    3c10:	60da      	str	r2, [r3, #12]
    3c12:	bf00      	nop
    3c14:	68fb      	ldr	r3, [r7, #12]
    3c16:	689b      	ldr	r3, [r3, #8]
    3c18:	f003 0302 	and.w	r3, r3, #2
    3c1c:	2b00      	cmp	r3, #0
    3c1e:	d0f9      	beq.n	3c14 <spi_send_block+0x1e>
    3c20:	687b      	ldr	r3, [r7, #4]
    3c22:	3b01      	subs	r3, #1
    3c24:	607b      	str	r3, [r7, #4]
    3c26:	687b      	ldr	r3, [r7, #4]
    3c28:	2b00      	cmp	r3, #0
    3c2a:	d1eb      	bne.n	3c04 <spi_send_block+0xe>
    3c2c:	bf00      	nop
    3c2e:	68fb      	ldr	r3, [r7, #12]
    3c30:	689b      	ldr	r3, [r3, #8]
    3c32:	f003 0380 	and.w	r3, r3, #128	; 0x80
    3c36:	2b00      	cmp	r3, #0
    3c38:	d1f9      	bne.n	3c2e <spi_send_block+0x38>
    3c3a:	68fb      	ldr	r3, [r7, #12]
    3c3c:	68db      	ldr	r3, [r3, #12]
    3c3e:	75fb      	strb	r3, [r7, #23]
    3c40:	bf00      	nop
    3c42:	371c      	adds	r7, #28
    3c44:	46bd      	mov	sp, r7
    3c46:	bc80      	pop	{r7}
    3c48:	4770      	bx	lr

00003c4a <spi_receive_block>:
    3c4a:	b480      	push	{r7}
    3c4c:	b085      	sub	sp, #20
    3c4e:	af00      	add	r7, sp, #0
    3c50:	60f8      	str	r0, [r7, #12]
    3c52:	60b9      	str	r1, [r7, #8]
    3c54:	607a      	str	r2, [r7, #4]
    3c56:	e013      	b.n	3c80 <spi_receive_block+0x36>
    3c58:	68fb      	ldr	r3, [r7, #12]
    3c5a:	2200      	movs	r2, #0
    3c5c:	60da      	str	r2, [r3, #12]
    3c5e:	bf00      	nop
    3c60:	68fb      	ldr	r3, [r7, #12]
    3c62:	689b      	ldr	r3, [r3, #8]
    3c64:	f003 0301 	and.w	r3, r3, #1
    3c68:	2b00      	cmp	r3, #0
    3c6a:	d0f9      	beq.n	3c60 <spi_receive_block+0x16>
    3c6c:	68bb      	ldr	r3, [r7, #8]
    3c6e:	1c5a      	adds	r2, r3, #1
    3c70:	60ba      	str	r2, [r7, #8]
    3c72:	68fa      	ldr	r2, [r7, #12]
    3c74:	68d2      	ldr	r2, [r2, #12]
    3c76:	b2d2      	uxtb	r2, r2
    3c78:	701a      	strb	r2, [r3, #0]
    3c7a:	687b      	ldr	r3, [r7, #4]
    3c7c:	3b01      	subs	r3, #1
    3c7e:	607b      	str	r3, [r7, #4]
    3c80:	687b      	ldr	r3, [r7, #4]
    3c82:	2b00      	cmp	r3, #0
    3c84:	d1e8      	bne.n	3c58 <spi_receive_block+0xe>
    3c86:	bf00      	nop
    3c88:	3714      	adds	r7, #20
    3c8a:	46bd      	mov	sp, r7
    3c8c:	bc80      	pop	{r7}
    3c8e:	4770      	bx	lr

00003c90 <reset_mcu>:
    3c90:	4b01      	ldr	r3, [pc, #4]	; (3c98 <reset_mcu+0x8>)
    3c92:	4a02      	ldr	r2, [pc, #8]	; (3c9c <reset_mcu+0xc>)
    3c94:	601a      	str	r2, [r3, #0]
    3c96:	bf00      	nop
    3c98:	e000ed0c 	.word	0xe000ed0c
    3c9c:	05fa0004 	.word	0x05fa0004

00003ca0 <print_fault>:
    3ca0:	b580      	push	{r7, lr}
    3ca2:	b082      	sub	sp, #8
    3ca4:	af00      	add	r7, sp, #0
    3ca6:	6078      	str	r0, [r7, #4]
    3ca8:	6039      	str	r1, [r7, #0]
    3caa:	6878      	ldr	r0, [r7, #4]
    3cac:	f000 f9aa 	bl	4004 <print>
    3cb0:	4818      	ldr	r0, [pc, #96]	; (3d14 <print_fault+0x74>)
    3cb2:	f000 f9a7 	bl	4004 <print>
    3cb6:	683b      	ldr	r3, [r7, #0]
    3cb8:	2b00      	cmp	r3, #0
    3cba:	d004      	beq.n	3cc6 <print_fault+0x26>
    3cbc:	683b      	ldr	r3, [r7, #0]
    3cbe:	2110      	movs	r1, #16
    3cc0:	4618      	mov	r0, r3
    3cc2:	f000 f9cf 	bl	4064 <print_int>
    3cc6:	200d      	movs	r0, #13
    3cc8:	f000 f8e4 	bl	3e94 <put_char>
    3ccc:	4812      	ldr	r0, [pc, #72]	; (3d18 <print_fault+0x78>)
    3cce:	f000 f999 	bl	4004 <print>
    3cd2:	4b12      	ldr	r3, [pc, #72]	; (3d1c <print_fault+0x7c>)
    3cd4:	681b      	ldr	r3, [r3, #0]
    3cd6:	f3c3 430f 	ubfx	r3, r3, #16, #16
    3cda:	b29b      	uxth	r3, r3
    3cdc:	2110      	movs	r1, #16
    3cde:	4618      	mov	r0, r3
    3ce0:	f000 f9c0 	bl	4064 <print_int>
    3ce4:	480e      	ldr	r0, [pc, #56]	; (3d20 <print_fault+0x80>)
    3ce6:	f000 f98d 	bl	4004 <print>
    3cea:	4b0c      	ldr	r3, [pc, #48]	; (3d1c <print_fault+0x7c>)
    3cec:	681b      	ldr	r3, [r3, #0]
    3cee:	f3c3 2307 	ubfx	r3, r3, #8, #8
    3cf2:	b2db      	uxtb	r3, r3
    3cf4:	2110      	movs	r1, #16
    3cf6:	4618      	mov	r0, r3
    3cf8:	f000 f9b4 	bl	4064 <print_int>
    3cfc:	4809      	ldr	r0, [pc, #36]	; (3d24 <print_fault+0x84>)
    3cfe:	f000 f981 	bl	4004 <print>
    3d02:	4b06      	ldr	r3, [pc, #24]	; (3d1c <print_fault+0x7c>)
    3d04:	681b      	ldr	r3, [r3, #0]
    3d06:	b2db      	uxtb	r3, r3
    3d08:	2110      	movs	r1, #16
    3d0a:	4618      	mov	r0, r3
    3d0c:	f000 f9aa 	bl	4064 <print_int>
    3d10:	e7fe      	b.n	3d10 <print_fault+0x70>
    3d12:	bf00      	nop
    3d14:	00004f90 	.word	0x00004f90
    3d18:	00004fa0 	.word	0x00004fa0
    3d1c:	e000ed28 	.word	0xe000ed28
    3d20:	00004fa8 	.word	0x00004fa8
    3d24:	00004fb0 	.word	0x00004fb0

00003d28 <font_color>:
    3d28:	b480      	push	{r7}
    3d2a:	b083      	sub	sp, #12
    3d2c:	af00      	add	r7, sp, #0
    3d2e:	4603      	mov	r3, r0
    3d30:	71fb      	strb	r3, [r7, #7]
    3d32:	79fb      	ldrb	r3, [r7, #7]
    3d34:	f003 030f 	and.w	r3, r3, #15
    3d38:	b2da      	uxtb	r2, r3
    3d3a:	4b03      	ldr	r3, [pc, #12]	; (3d48 <font_color+0x20>)
    3d3c:	705a      	strb	r2, [r3, #1]
    3d3e:	bf00      	nop
    3d40:	370c      	adds	r7, #12
    3d42:	46bd      	mov	sp, r7
    3d44:	bc80      	pop	{r7}
    3d46:	4770      	bx	lr
    3d48:	20000070 	.word	0x20000070

00003d4c <bg_color>:
    3d4c:	b480      	push	{r7}
    3d4e:	b083      	sub	sp, #12
    3d50:	af00      	add	r7, sp, #0
    3d52:	4603      	mov	r3, r0
    3d54:	71fb      	strb	r3, [r7, #7]
    3d56:	79fb      	ldrb	r3, [r7, #7]
    3d58:	f003 030f 	and.w	r3, r3, #15
    3d5c:	b2da      	uxtb	r2, r3
    3d5e:	4b03      	ldr	r3, [pc, #12]	; (3d6c <bg_color+0x20>)
    3d60:	701a      	strb	r2, [r3, #0]
    3d62:	bf00      	nop
    3d64:	370c      	adds	r7, #12
    3d66:	46bd      	mov	sp, r7
    3d68:	bc80      	pop	{r7}
    3d6a:	4770      	bx	lr
    3d6c:	20000070 	.word	0x20000070

00003d70 <select_font>:
    3d70:	b480      	push	{r7}
    3d72:	b083      	sub	sp, #12
    3d74:	af00      	add	r7, sp, #0
    3d76:	4603      	mov	r3, r0
    3d78:	71fb      	strb	r3, [r7, #7]
    3d7a:	4a04      	ldr	r2, [pc, #16]	; (3d8c <select_font+0x1c>)
    3d7c:	79fb      	ldrb	r3, [r7, #7]
    3d7e:	7013      	strb	r3, [r2, #0]
    3d80:	bf00      	nop
    3d82:	370c      	adds	r7, #12
    3d84:	46bd      	mov	sp, r7
    3d86:	bc80      	pop	{r7}
    3d88:	4770      	bx	lr
    3d8a:	bf00      	nop
    3d8c:	2000006c 	.word	0x2000006c

00003d90 <new_line>:
    3d90:	b580      	push	{r7, lr}
    3d92:	af00      	add	r7, sp, #0
    3d94:	4b1e      	ldr	r3, [pc, #120]	; (3e10 <new_line+0x80>)
    3d96:	2200      	movs	r2, #0
    3d98:	701a      	strb	r2, [r3, #0]
    3d9a:	4b1e      	ldr	r3, [pc, #120]	; (3e14 <new_line+0x84>)
    3d9c:	781b      	ldrb	r3, [r3, #0]
    3d9e:	2b01      	cmp	r3, #1
    3da0:	d014      	beq.n	3dcc <new_line+0x3c>
    3da2:	2b02      	cmp	r3, #2
    3da4:	d022      	beq.n	3dec <new_line+0x5c>
    3da6:	2b00      	cmp	r3, #0
    3da8:	d000      	beq.n	3dac <new_line+0x1c>
    3daa:	e02f      	b.n	3e0c <new_line+0x7c>
    3dac:	4b1a      	ldr	r3, [pc, #104]	; (3e18 <new_line+0x88>)
    3dae:	781b      	ldrb	r3, [r3, #0]
    3db0:	3306      	adds	r3, #6
    3db2:	2b6b      	cmp	r3, #107	; 0x6b
    3db4:	dc06      	bgt.n	3dc4 <new_line+0x34>
    3db6:	4b18      	ldr	r3, [pc, #96]	; (3e18 <new_line+0x88>)
    3db8:	781b      	ldrb	r3, [r3, #0]
    3dba:	3306      	adds	r3, #6
    3dbc:	b2da      	uxtb	r2, r3
    3dbe:	4b16      	ldr	r3, [pc, #88]	; (3e18 <new_line+0x88>)
    3dc0:	701a      	strb	r2, [r3, #0]
    3dc2:	e023      	b.n	3e0c <new_line+0x7c>
    3dc4:	2006      	movs	r0, #6
    3dc6:	f7fe f8c7 	bl	1f58 <gfx_scroll_up>
    3dca:	e01f      	b.n	3e0c <new_line+0x7c>
    3dcc:	4b12      	ldr	r3, [pc, #72]	; (3e18 <new_line+0x88>)
    3dce:	781b      	ldrb	r3, [r3, #0]
    3dd0:	330a      	adds	r3, #10
    3dd2:	2b67      	cmp	r3, #103	; 0x67
    3dd4:	dc06      	bgt.n	3de4 <new_line+0x54>
    3dd6:	4b10      	ldr	r3, [pc, #64]	; (3e18 <new_line+0x88>)
    3dd8:	781b      	ldrb	r3, [r3, #0]
    3dda:	330a      	adds	r3, #10
    3ddc:	b2da      	uxtb	r2, r3
    3dde:	4b0e      	ldr	r3, [pc, #56]	; (3e18 <new_line+0x88>)
    3de0:	701a      	strb	r2, [r3, #0]
    3de2:	e013      	b.n	3e0c <new_line+0x7c>
    3de4:	200a      	movs	r0, #10
    3de6:	f7fe f8b7 	bl	1f58 <gfx_scroll_up>
    3dea:	e00f      	b.n	3e0c <new_line+0x7c>
    3dec:	4b0a      	ldr	r3, [pc, #40]	; (3e18 <new_line+0x88>)
    3dee:	781b      	ldrb	r3, [r3, #0]
    3df0:	3308      	adds	r3, #8
    3df2:	2b69      	cmp	r3, #105	; 0x69
    3df4:	dc06      	bgt.n	3e04 <new_line+0x74>
    3df6:	4b08      	ldr	r3, [pc, #32]	; (3e18 <new_line+0x88>)
    3df8:	781b      	ldrb	r3, [r3, #0]
    3dfa:	3308      	adds	r3, #8
    3dfc:	b2da      	uxtb	r2, r3
    3dfe:	4b06      	ldr	r3, [pc, #24]	; (3e18 <new_line+0x88>)
    3e00:	701a      	strb	r2, [r3, #0]
    3e02:	e002      	b.n	3e0a <new_line+0x7a>
    3e04:	2008      	movs	r0, #8
    3e06:	f7fe f8a7 	bl	1f58 <gfx_scroll_up>
    3e0a:	bf00      	nop
    3e0c:	bf00      	nop
    3e0e:	bd80      	pop	{r7, pc}
    3e10:	2000050a 	.word	0x2000050a
    3e14:	2000006c 	.word	0x2000006c
    3e18:	2000050b 	.word	0x2000050b

00003e1c <draw_char>:
    3e1c:	b5b0      	push	{r4, r5, r7, lr}
    3e1e:	b086      	sub	sp, #24
    3e20:	af00      	add	r7, sp, #0
    3e22:	60f8      	str	r0, [r7, #12]
    3e24:	60b9      	str	r1, [r7, #8]
    3e26:	607a      	str	r2, [r7, #4]
    3e28:	603b      	str	r3, [r7, #0]
    3e2a:	68bc      	ldr	r4, [r7, #8]
    3e2c:	e026      	b.n	3e7c <draw_char+0x60>
    3e2e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3e30:	1c5a      	adds	r2, r3, #1
    3e32:	62ba      	str	r2, [r7, #40]	; 0x28
    3e34:	781b      	ldrb	r3, [r3, #0]
    3e36:	757b      	strb	r3, [r7, #21]
    3e38:	2380      	movs	r3, #128	; 0x80
    3e3a:	75bb      	strb	r3, [r7, #22]
    3e3c:	68fd      	ldr	r5, [r7, #12]
    3e3e:	e017      	b.n	3e70 <draw_char+0x54>
    3e40:	7d7a      	ldrb	r2, [r7, #21]
    3e42:	7dbb      	ldrb	r3, [r7, #22]
    3e44:	4013      	ands	r3, r2
    3e46:	753b      	strb	r3, [r7, #20]
    3e48:	7d3b      	ldrb	r3, [r7, #20]
    3e4a:	2b00      	cmp	r3, #0
    3e4c:	d003      	beq.n	3e56 <draw_char+0x3a>
    3e4e:	4b10      	ldr	r3, [pc, #64]	; (3e90 <draw_char+0x74>)
    3e50:	785b      	ldrb	r3, [r3, #1]
    3e52:	75fb      	strb	r3, [r7, #23]
    3e54:	e002      	b.n	3e5c <draw_char+0x40>
    3e56:	4b0e      	ldr	r3, [pc, #56]	; (3e90 <draw_char+0x74>)
    3e58:	781b      	ldrb	r3, [r3, #0]
    3e5a:	75fb      	strb	r3, [r7, #23]
    3e5c:	7dfb      	ldrb	r3, [r7, #23]
    3e5e:	461a      	mov	r2, r3
    3e60:	4621      	mov	r1, r4
    3e62:	4628      	mov	r0, r5
    3e64:	f7fd ff8e 	bl	1d84 <gfx_plot>
    3e68:	7dbb      	ldrb	r3, [r7, #22]
    3e6a:	085b      	lsrs	r3, r3, #1
    3e6c:	75bb      	strb	r3, [r7, #22]
    3e6e:	3501      	adds	r5, #1
    3e70:	68fa      	ldr	r2, [r7, #12]
    3e72:	687b      	ldr	r3, [r7, #4]
    3e74:	4413      	add	r3, r2
    3e76:	42ab      	cmp	r3, r5
    3e78:	dce2      	bgt.n	3e40 <draw_char+0x24>
    3e7a:	3401      	adds	r4, #1
    3e7c:	68ba      	ldr	r2, [r7, #8]
    3e7e:	683b      	ldr	r3, [r7, #0]
    3e80:	4413      	add	r3, r2
    3e82:	42a3      	cmp	r3, r4
    3e84:	dcd3      	bgt.n	3e2e <draw_char+0x12>
    3e86:	bf00      	nop
    3e88:	3718      	adds	r7, #24
    3e8a:	46bd      	mov	sp, r7
    3e8c:	bdb0      	pop	{r4, r5, r7, pc}
    3e8e:	bf00      	nop
    3e90:	20000070 	.word	0x20000070

00003e94 <put_char>:
    3e94:	b580      	push	{r7, lr}
    3e96:	b084      	sub	sp, #16
    3e98:	af02      	add	r7, sp, #8
    3e9a:	4603      	mov	r3, r0
    3e9c:	71fb      	strb	r3, [r7, #7]
    3e9e:	4b3d      	ldr	r3, [pc, #244]	; (3f94 <put_char+0x100>)
    3ea0:	781b      	ldrb	r3, [r3, #0]
    3ea2:	2b01      	cmp	r3, #1
    3ea4:	d027      	beq.n	3ef6 <put_char+0x62>
    3ea6:	2b02      	cmp	r3, #2
    3ea8:	d048      	beq.n	3f3c <put_char+0xa8>
    3eaa:	2b00      	cmp	r3, #0
    3eac:	d000      	beq.n	3eb0 <put_char+0x1c>
    3eae:	e06d      	b.n	3f8c <put_char+0xf8>
    3eb0:	79fb      	ldrb	r3, [r7, #7]
    3eb2:	2b0f      	cmp	r3, #15
    3eb4:	d865      	bhi.n	3f82 <put_char+0xee>
    3eb6:	4b38      	ldr	r3, [pc, #224]	; (3f98 <put_char+0x104>)
    3eb8:	781b      	ldrb	r3, [r3, #0]
    3eba:	4618      	mov	r0, r3
    3ebc:	4b37      	ldr	r3, [pc, #220]	; (3f9c <put_char+0x108>)
    3ebe:	781b      	ldrb	r3, [r3, #0]
    3ec0:	4619      	mov	r1, r3
    3ec2:	79fa      	ldrb	r2, [r7, #7]
    3ec4:	4613      	mov	r3, r2
    3ec6:	005b      	lsls	r3, r3, #1
    3ec8:	4413      	add	r3, r2
    3eca:	005b      	lsls	r3, r3, #1
    3ecc:	461a      	mov	r2, r3
    3ece:	4b34      	ldr	r3, [pc, #208]	; (3fa0 <put_char+0x10c>)
    3ed0:	4413      	add	r3, r2
    3ed2:	9300      	str	r3, [sp, #0]
    3ed4:	2306      	movs	r3, #6
    3ed6:	2204      	movs	r2, #4
    3ed8:	f7ff ffa0 	bl	3e1c <draw_char>
    3edc:	4b2e      	ldr	r3, [pc, #184]	; (3f98 <put_char+0x104>)
    3ede:	781b      	ldrb	r3, [r3, #0]
    3ee0:	3304      	adds	r3, #4
    3ee2:	b2da      	uxtb	r2, r3
    3ee4:	4b2c      	ldr	r3, [pc, #176]	; (3f98 <put_char+0x104>)
    3ee6:	701a      	strb	r2, [r3, #0]
    3ee8:	4b2b      	ldr	r3, [pc, #172]	; (3f98 <put_char+0x104>)
    3eea:	781b      	ldrb	r3, [r3, #0]
    3eec:	2bb1      	cmp	r3, #177	; 0xb1
    3eee:	d948      	bls.n	3f82 <put_char+0xee>
    3ef0:	f7ff ff4e 	bl	3d90 <new_line>
    3ef4:	e045      	b.n	3f82 <put_char+0xee>
    3ef6:	79fb      	ldrb	r3, [r7, #7]
    3ef8:	2b0f      	cmp	r3, #15
    3efa:	d844      	bhi.n	3f86 <put_char+0xf2>
    3efc:	4b26      	ldr	r3, [pc, #152]	; (3f98 <put_char+0x104>)
    3efe:	781b      	ldrb	r3, [r3, #0]
    3f00:	4618      	mov	r0, r3
    3f02:	4b26      	ldr	r3, [pc, #152]	; (3f9c <put_char+0x108>)
    3f04:	781b      	ldrb	r3, [r3, #0]
    3f06:	4619      	mov	r1, r3
    3f08:	79fa      	ldrb	r2, [r7, #7]
    3f0a:	4613      	mov	r3, r2
    3f0c:	009b      	lsls	r3, r3, #2
    3f0e:	4413      	add	r3, r2
    3f10:	005b      	lsls	r3, r3, #1
    3f12:	461a      	mov	r2, r3
    3f14:	4b23      	ldr	r3, [pc, #140]	; (3fa4 <put_char+0x110>)
    3f16:	4413      	add	r3, r2
    3f18:	9300      	str	r3, [sp, #0]
    3f1a:	230a      	movs	r3, #10
    3f1c:	2208      	movs	r2, #8
    3f1e:	f7ff ff7d 	bl	3e1c <draw_char>
    3f22:	4b1d      	ldr	r3, [pc, #116]	; (3f98 <put_char+0x104>)
    3f24:	781b      	ldrb	r3, [r3, #0]
    3f26:	3308      	adds	r3, #8
    3f28:	b2da      	uxtb	r2, r3
    3f2a:	4b1b      	ldr	r3, [pc, #108]	; (3f98 <put_char+0x104>)
    3f2c:	701a      	strb	r2, [r3, #0]
    3f2e:	4b1a      	ldr	r3, [pc, #104]	; (3f98 <put_char+0x104>)
    3f30:	781b      	ldrb	r3, [r3, #0]
    3f32:	2bad      	cmp	r3, #173	; 0xad
    3f34:	d927      	bls.n	3f86 <put_char+0xf2>
    3f36:	f7ff ff2b 	bl	3d90 <new_line>
    3f3a:	e024      	b.n	3f86 <put_char+0xf2>
    3f3c:	79fb      	ldrb	r3, [r7, #7]
    3f3e:	2b1f      	cmp	r3, #31
    3f40:	d923      	bls.n	3f8a <put_char+0xf6>
    3f42:	79fb      	ldrb	r3, [r7, #7]
    3f44:	2b84      	cmp	r3, #132	; 0x84
    3f46:	d820      	bhi.n	3f8a <put_char+0xf6>
    3f48:	4b13      	ldr	r3, [pc, #76]	; (3f98 <put_char+0x104>)
    3f4a:	781b      	ldrb	r3, [r3, #0]
    3f4c:	4618      	mov	r0, r3
    3f4e:	4b13      	ldr	r3, [pc, #76]	; (3f9c <put_char+0x108>)
    3f50:	781b      	ldrb	r3, [r3, #0]
    3f52:	4619      	mov	r1, r3
    3f54:	79fb      	ldrb	r3, [r7, #7]
    3f56:	3b20      	subs	r3, #32
    3f58:	00db      	lsls	r3, r3, #3
    3f5a:	4a13      	ldr	r2, [pc, #76]	; (3fa8 <put_char+0x114>)
    3f5c:	4413      	add	r3, r2
    3f5e:	9300      	str	r3, [sp, #0]
    3f60:	2308      	movs	r3, #8
    3f62:	2206      	movs	r2, #6
    3f64:	f7ff ff5a 	bl	3e1c <draw_char>
    3f68:	4b0b      	ldr	r3, [pc, #44]	; (3f98 <put_char+0x104>)
    3f6a:	781b      	ldrb	r3, [r3, #0]
    3f6c:	3306      	adds	r3, #6
    3f6e:	b2da      	uxtb	r2, r3
    3f70:	4b09      	ldr	r3, [pc, #36]	; (3f98 <put_char+0x104>)
    3f72:	701a      	strb	r2, [r3, #0]
    3f74:	4b08      	ldr	r3, [pc, #32]	; (3f98 <put_char+0x104>)
    3f76:	781b      	ldrb	r3, [r3, #0]
    3f78:	2baf      	cmp	r3, #175	; 0xaf
    3f7a:	d906      	bls.n	3f8a <put_char+0xf6>
    3f7c:	f7ff ff08 	bl	3d90 <new_line>
    3f80:	e003      	b.n	3f8a <put_char+0xf6>
    3f82:	bf00      	nop
    3f84:	e002      	b.n	3f8c <put_char+0xf8>
    3f86:	bf00      	nop
    3f88:	e000      	b.n	3f8c <put_char+0xf8>
    3f8a:	bf00      	nop
    3f8c:	bf00      	nop
    3f8e:	3708      	adds	r7, #8
    3f90:	46bd      	mov	sp, r7
    3f92:	bd80      	pop	{r7, pc}
    3f94:	2000006c 	.word	0x2000006c
    3f98:	2000050a 	.word	0x2000050a
    3f9c:	2000050b 	.word	0x2000050b
    3fa0:	000049d8 	.word	0x000049d8
    3fa4:	00004a38 	.word	0x00004a38
    3fa8:	00004ad8 	.word	0x00004ad8

00003fac <set_cursor>:
    3fac:	b480      	push	{r7}
    3fae:	b083      	sub	sp, #12
    3fb0:	af00      	add	r7, sp, #0
    3fb2:	4603      	mov	r3, r0
    3fb4:	460a      	mov	r2, r1
    3fb6:	71fb      	strb	r3, [r7, #7]
    3fb8:	4613      	mov	r3, r2
    3fba:	71bb      	strb	r3, [r7, #6]
    3fbc:	4a05      	ldr	r2, [pc, #20]	; (3fd4 <set_cursor+0x28>)
    3fbe:	79fb      	ldrb	r3, [r7, #7]
    3fc0:	7013      	strb	r3, [r2, #0]
    3fc2:	4a05      	ldr	r2, [pc, #20]	; (3fd8 <set_cursor+0x2c>)
    3fc4:	79bb      	ldrb	r3, [r7, #6]
    3fc6:	7013      	strb	r3, [r2, #0]
    3fc8:	bf00      	nop
    3fca:	370c      	adds	r7, #12
    3fcc:	46bd      	mov	sp, r7
    3fce:	bc80      	pop	{r7}
    3fd0:	4770      	bx	lr
    3fd2:	bf00      	nop
    3fd4:	2000050a 	.word	0x2000050a
    3fd8:	2000050b 	.word	0x2000050b

00003fdc <get_cursor>:
    3fdc:	b480      	push	{r7}
    3fde:	af00      	add	r7, sp, #0
    3fe0:	4b06      	ldr	r3, [pc, #24]	; (3ffc <get_cursor+0x20>)
    3fe2:	781b      	ldrb	r3, [r3, #0]
    3fe4:	b29b      	uxth	r3, r3
    3fe6:	021b      	lsls	r3, r3, #8
    3fe8:	b29a      	uxth	r2, r3
    3fea:	4b05      	ldr	r3, [pc, #20]	; (4000 <get_cursor+0x24>)
    3fec:	781b      	ldrb	r3, [r3, #0]
    3fee:	b29b      	uxth	r3, r3
    3ff0:	4413      	add	r3, r2
    3ff2:	b29b      	uxth	r3, r3
    3ff4:	4618      	mov	r0, r3
    3ff6:	46bd      	mov	sp, r7
    3ff8:	bc80      	pop	{r7}
    3ffa:	4770      	bx	lr
    3ffc:	2000050a 	.word	0x2000050a
    4000:	2000050b 	.word	0x2000050b

00004004 <print>:
    4004:	b580      	push	{r7, lr}
    4006:	b084      	sub	sp, #16
    4008:	af00      	add	r7, sp, #0
    400a:	6078      	str	r0, [r7, #4]
    400c:	e011      	b.n	4032 <print+0x2e>
    400e:	7bfb      	ldrb	r3, [r7, #15]
    4010:	2b0a      	cmp	r3, #10
    4012:	d004      	beq.n	401e <print+0x1a>
    4014:	2b0d      	cmp	r3, #13
    4016:	d002      	beq.n	401e <print+0x1a>
    4018:	2b08      	cmp	r3, #8
    401a:	d003      	beq.n	4024 <print+0x20>
    401c:	e005      	b.n	402a <print+0x26>
    401e:	f7ff feb7 	bl	3d90 <new_line>
    4022:	e006      	b.n	4032 <print+0x2e>
    4024:	f000 f892 	bl	414c <cursor_left>
    4028:	e003      	b.n	4032 <print+0x2e>
    402a:	7bfb      	ldrb	r3, [r7, #15]
    402c:	4618      	mov	r0, r3
    402e:	f7ff ff31 	bl	3e94 <put_char>
    4032:	687b      	ldr	r3, [r7, #4]
    4034:	1c5a      	adds	r2, r3, #1
    4036:	607a      	str	r2, [r7, #4]
    4038:	781b      	ldrb	r3, [r3, #0]
    403a:	73fb      	strb	r3, [r7, #15]
    403c:	7bfb      	ldrb	r3, [r7, #15]
    403e:	2b00      	cmp	r3, #0
    4040:	d1e5      	bne.n	400e <print+0xa>
    4042:	bf00      	nop
    4044:	3710      	adds	r7, #16
    4046:	46bd      	mov	sp, r7
    4048:	bd80      	pop	{r7, pc}

0000404a <println>:
    404a:	b580      	push	{r7, lr}
    404c:	b082      	sub	sp, #8
    404e:	af00      	add	r7, sp, #0
    4050:	6078      	str	r0, [r7, #4]
    4052:	6878      	ldr	r0, [r7, #4]
    4054:	f7ff ffd6 	bl	4004 <print>
    4058:	f7ff fe9a 	bl	3d90 <new_line>
    405c:	bf00      	nop
    405e:	3708      	adds	r7, #8
    4060:	46bd      	mov	sp, r7
    4062:	bd80      	pop	{r7, pc}

00004064 <print_int>:
    4064:	b580      	push	{r7, lr}
    4066:	b08a      	sub	sp, #40	; 0x28
    4068:	af00      	add	r7, sp, #0
    406a:	6078      	str	r0, [r7, #4]
    406c:	460b      	mov	r3, r1
    406e:	70fb      	strb	r3, [r7, #3]
    4070:	2300      	movs	r3, #0
    4072:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4076:	2300      	movs	r3, #0
    4078:	76fb      	strb	r3, [r7, #27]
    407a:	2320      	movs	r3, #32
    407c:	76bb      	strb	r3, [r7, #26]
    407e:	230e      	movs	r3, #14
    4080:	623b      	str	r3, [r7, #32]
    4082:	687b      	ldr	r3, [r7, #4]
    4084:	2b00      	cmp	r3, #0
    4086:	da27      	bge.n	40d8 <print_int+0x74>
    4088:	2301      	movs	r3, #1
    408a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    408e:	687b      	ldr	r3, [r7, #4]
    4090:	425b      	negs	r3, r3
    4092:	607b      	str	r3, [r7, #4]
    4094:	e020      	b.n	40d8 <print_int+0x74>
    4096:	78fa      	ldrb	r2, [r7, #3]
    4098:	687b      	ldr	r3, [r7, #4]
    409a:	fb93 f1f2 	sdiv	r1, r3, r2
    409e:	fb02 f201 	mul.w	r2, r2, r1
    40a2:	1a9b      	subs	r3, r3, r2
    40a4:	61fb      	str	r3, [r7, #28]
    40a6:	69fb      	ldr	r3, [r7, #28]
    40a8:	2b09      	cmp	r3, #9
    40aa:	dd02      	ble.n	40b2 <print_int+0x4e>
    40ac:	69fb      	ldr	r3, [r7, #28]
    40ae:	3307      	adds	r3, #7
    40b0:	61fb      	str	r3, [r7, #28]
    40b2:	6a3b      	ldr	r3, [r7, #32]
    40b4:	3b01      	subs	r3, #1
    40b6:	623b      	str	r3, [r7, #32]
    40b8:	69fb      	ldr	r3, [r7, #28]
    40ba:	3330      	adds	r3, #48	; 0x30
    40bc:	61fb      	str	r3, [r7, #28]
    40be:	69fb      	ldr	r3, [r7, #28]
    40c0:	b2d9      	uxtb	r1, r3
    40c2:	f107 020c 	add.w	r2, r7, #12
    40c6:	6a3b      	ldr	r3, [r7, #32]
    40c8:	4413      	add	r3, r2
    40ca:	460a      	mov	r2, r1
    40cc:	701a      	strb	r2, [r3, #0]
    40ce:	78fb      	ldrb	r3, [r7, #3]
    40d0:	687a      	ldr	r2, [r7, #4]
    40d2:	fb92 f3f3 	sdiv	r3, r2, r3
    40d6:	607b      	str	r3, [r7, #4]
    40d8:	6a3b      	ldr	r3, [r7, #32]
    40da:	2b01      	cmp	r3, #1
    40dc:	dd02      	ble.n	40e4 <print_int+0x80>
    40de:	687b      	ldr	r3, [r7, #4]
    40e0:	2b00      	cmp	r3, #0
    40e2:	d1d8      	bne.n	4096 <print_int+0x32>
    40e4:	6a3b      	ldr	r3, [r7, #32]
    40e6:	2b0e      	cmp	r3, #14
    40e8:	d108      	bne.n	40fc <print_int+0x98>
    40ea:	6a3b      	ldr	r3, [r7, #32]
    40ec:	3b01      	subs	r3, #1
    40ee:	623b      	str	r3, [r7, #32]
    40f0:	f107 020c 	add.w	r2, r7, #12
    40f4:	6a3b      	ldr	r3, [r7, #32]
    40f6:	4413      	add	r3, r2
    40f8:	2230      	movs	r2, #48	; 0x30
    40fa:	701a      	strb	r2, [r3, #0]
    40fc:	78fb      	ldrb	r3, [r7, #3]
    40fe:	2b0a      	cmp	r3, #10
    4100:	d10d      	bne.n	411e <print_int+0xba>
    4102:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4106:	2b00      	cmp	r3, #0
    4108:	d009      	beq.n	411e <print_int+0xba>
    410a:	6a3b      	ldr	r3, [r7, #32]
    410c:	3b01      	subs	r3, #1
    410e:	623b      	str	r3, [r7, #32]
    4110:	f107 020c 	add.w	r2, r7, #12
    4114:	6a3b      	ldr	r3, [r7, #32]
    4116:	4413      	add	r3, r2
    4118:	222d      	movs	r2, #45	; 0x2d
    411a:	701a      	strb	r2, [r3, #0]
    411c:	e00b      	b.n	4136 <print_int+0xd2>
    411e:	78fb      	ldrb	r3, [r7, #3]
    4120:	2b10      	cmp	r3, #16
    4122:	d108      	bne.n	4136 <print_int+0xd2>
    4124:	6a3b      	ldr	r3, [r7, #32]
    4126:	3b01      	subs	r3, #1
    4128:	623b      	str	r3, [r7, #32]
    412a:	f107 020c 	add.w	r2, r7, #12
    412e:	6a3b      	ldr	r3, [r7, #32]
    4130:	4413      	add	r3, r2
    4132:	2224      	movs	r2, #36	; 0x24
    4134:	701a      	strb	r2, [r3, #0]
    4136:	f107 020c 	add.w	r2, r7, #12
    413a:	6a3b      	ldr	r3, [r7, #32]
    413c:	4413      	add	r3, r2
    413e:	4618      	mov	r0, r3
    4140:	f7ff ff60 	bl	4004 <print>
    4144:	bf00      	nop
    4146:	3728      	adds	r7, #40	; 0x28
    4148:	46bd      	mov	sp, r7
    414a:	bd80      	pop	{r7, pc}

0000414c <cursor_left>:
    414c:	b480      	push	{r7}
    414e:	af00      	add	r7, sp, #0
    4150:	4b1a      	ldr	r3, [pc, #104]	; (41bc <cursor_left+0x70>)
    4152:	781b      	ldrb	r3, [r3, #0]
    4154:	2b01      	cmp	r3, #1
    4156:	d010      	beq.n	417a <cursor_left+0x2e>
    4158:	2b02      	cmp	r3, #2
    415a:	d01a      	beq.n	4192 <cursor_left+0x46>
    415c:	2b00      	cmp	r3, #0
    415e:	d000      	beq.n	4162 <cursor_left+0x16>
    4160:	e028      	b.n	41b4 <cursor_left+0x68>
    4162:	4b17      	ldr	r3, [pc, #92]	; (41c0 <cursor_left+0x74>)
    4164:	781b      	ldrb	r3, [r3, #0]
    4166:	3b04      	subs	r3, #4
    4168:	2b00      	cmp	r3, #0
    416a:	db1e      	blt.n	41aa <cursor_left+0x5e>
    416c:	4b14      	ldr	r3, [pc, #80]	; (41c0 <cursor_left+0x74>)
    416e:	781b      	ldrb	r3, [r3, #0]
    4170:	3b04      	subs	r3, #4
    4172:	b2da      	uxtb	r2, r3
    4174:	4b12      	ldr	r3, [pc, #72]	; (41c0 <cursor_left+0x74>)
    4176:	701a      	strb	r2, [r3, #0]
    4178:	e017      	b.n	41aa <cursor_left+0x5e>
    417a:	4b11      	ldr	r3, [pc, #68]	; (41c0 <cursor_left+0x74>)
    417c:	781b      	ldrb	r3, [r3, #0]
    417e:	3b08      	subs	r3, #8
    4180:	2b00      	cmp	r3, #0
    4182:	db14      	blt.n	41ae <cursor_left+0x62>
    4184:	4b0e      	ldr	r3, [pc, #56]	; (41c0 <cursor_left+0x74>)
    4186:	781b      	ldrb	r3, [r3, #0]
    4188:	3b08      	subs	r3, #8
    418a:	b2da      	uxtb	r2, r3
    418c:	4b0c      	ldr	r3, [pc, #48]	; (41c0 <cursor_left+0x74>)
    418e:	701a      	strb	r2, [r3, #0]
    4190:	e00d      	b.n	41ae <cursor_left+0x62>
    4192:	4b0b      	ldr	r3, [pc, #44]	; (41c0 <cursor_left+0x74>)
    4194:	781b      	ldrb	r3, [r3, #0]
    4196:	3b06      	subs	r3, #6
    4198:	2b00      	cmp	r3, #0
    419a:	db0a      	blt.n	41b2 <cursor_left+0x66>
    419c:	4b08      	ldr	r3, [pc, #32]	; (41c0 <cursor_left+0x74>)
    419e:	781b      	ldrb	r3, [r3, #0]
    41a0:	3b06      	subs	r3, #6
    41a2:	b2da      	uxtb	r2, r3
    41a4:	4b06      	ldr	r3, [pc, #24]	; (41c0 <cursor_left+0x74>)
    41a6:	701a      	strb	r2, [r3, #0]
    41a8:	e003      	b.n	41b2 <cursor_left+0x66>
    41aa:	bf00      	nop
    41ac:	e002      	b.n	41b4 <cursor_left+0x68>
    41ae:	bf00      	nop
    41b0:	e000      	b.n	41b4 <cursor_left+0x68>
    41b2:	bf00      	nop
    41b4:	bf00      	nop
    41b6:	46bd      	mov	sp, r7
    41b8:	bc80      	pop	{r7}
    41ba:	4770      	bx	lr
    41bc:	2000006c 	.word	0x2000006c
    41c0:	2000050a 	.word	0x2000050a

000041c4 <text_scroller>:
    41c4:	b580      	push	{r7, lr}
    41c6:	b084      	sub	sp, #16
    41c8:	af00      	add	r7, sp, #0
    41ca:	6078      	str	r0, [r7, #4]
    41cc:	460b      	mov	r3, r1
    41ce:	70fb      	strb	r3, [r7, #3]
    41d0:	f7fd fe6e 	bl	1eb0 <gfx_cls>
    41d4:	2002      	movs	r0, #2
    41d6:	f7ff fdcb 	bl	3d70 <select_font>
    41da:	687b      	ldr	r3, [r7, #4]
    41dc:	1c5a      	adds	r2, r3, #1
    41de:	607a      	str	r2, [r7, #4]
    41e0:	781b      	ldrb	r3, [r3, #0]
    41e2:	73fb      	strb	r3, [r7, #15]
    41e4:	e035      	b.n	4252 <text_scroller+0x8e>
    41e6:	2120      	movs	r1, #32
    41e8:	2000      	movs	r0, #0
    41ea:	f7ff fedf 	bl	3fac <set_cursor>
    41ee:	e00e      	b.n	420e <text_scroller+0x4a>
    41f0:	7bfb      	ldrb	r3, [r7, #15]
    41f2:	4618      	mov	r0, r3
    41f4:	f7ff fe4e 	bl	3e94 <put_char>
    41f8:	687b      	ldr	r3, [r7, #4]
    41fa:	1c5a      	adds	r2, r3, #1
    41fc:	607a      	str	r2, [r7, #4]
    41fe:	781b      	ldrb	r3, [r3, #0]
    4200:	73fb      	strb	r3, [r7, #15]
    4202:	200b      	movs	r0, #11
    4204:	f7fd f9a8 	bl	1558 <btn_query_down>
    4208:	4603      	mov	r3, r0
    420a:	2b00      	cmp	r3, #0
    420c:	d13c      	bne.n	4288 <text_scroller+0xc4>
    420e:	7bfb      	ldrb	r3, [r7, #15]
    4210:	2b00      	cmp	r3, #0
    4212:	d002      	beq.n	421a <text_scroller+0x56>
    4214:	7bfb      	ldrb	r3, [r7, #15]
    4216:	2b0a      	cmp	r3, #10
    4218:	d1ea      	bne.n	41f0 <text_scroller+0x2c>
    421a:	2300      	movs	r3, #0
    421c:	73bb      	strb	r3, [r7, #14]
    421e:	e010      	b.n	4242 <text_scroller+0x7e>
    4220:	78fb      	ldrb	r3, [r7, #3]
    4222:	b29b      	uxth	r3, r3
    4224:	4618      	mov	r0, r3
    4226:	f000 fb9f 	bl	4968 <game_pause>
    422a:	2001      	movs	r0, #1
    422c:	f7fd fe94 	bl	1f58 <gfx_scroll_up>
    4230:	200b      	movs	r0, #11
    4232:	f7fd f991 	bl	1558 <btn_query_down>
    4236:	4603      	mov	r3, r0
    4238:	2b00      	cmp	r3, #0
    423a:	d127      	bne.n	428c <text_scroller+0xc8>
    423c:	7bbb      	ldrb	r3, [r7, #14]
    423e:	3301      	adds	r3, #1
    4240:	73bb      	strb	r3, [r7, #14]
    4242:	7bbb      	ldrb	r3, [r7, #14]
    4244:	2b07      	cmp	r3, #7
    4246:	d9eb      	bls.n	4220 <text_scroller+0x5c>
    4248:	687b      	ldr	r3, [r7, #4]
    424a:	1c5a      	adds	r2, r3, #1
    424c:	607a      	str	r2, [r7, #4]
    424e:	781b      	ldrb	r3, [r3, #0]
    4250:	73fb      	strb	r3, [r7, #15]
    4252:	7bfb      	ldrb	r3, [r7, #15]
    4254:	2b00      	cmp	r3, #0
    4256:	d1c6      	bne.n	41e6 <text_scroller+0x22>
    4258:	2300      	movs	r3, #0
    425a:	73fb      	strb	r3, [r7, #15]
    425c:	e010      	b.n	4280 <text_scroller+0xbc>
    425e:	78fb      	ldrb	r3, [r7, #3]
    4260:	b29b      	uxth	r3, r3
    4262:	4618      	mov	r0, r3
    4264:	f000 fb80 	bl	4968 <game_pause>
    4268:	2001      	movs	r0, #1
    426a:	f7fd fe75 	bl	1f58 <gfx_scroll_up>
    426e:	200b      	movs	r0, #11
    4270:	f7fd f972 	bl	1558 <btn_query_down>
    4274:	4603      	mov	r3, r0
    4276:	2b00      	cmp	r3, #0
    4278:	d10a      	bne.n	4290 <text_scroller+0xcc>
    427a:	7bfb      	ldrb	r3, [r7, #15]
    427c:	3301      	adds	r3, #1
    427e:	73fb      	strb	r3, [r7, #15]
    4280:	7bfb      	ldrb	r3, [r7, #15]
    4282:	2b1f      	cmp	r3, #31
    4284:	d9eb      	bls.n	425e <text_scroller+0x9a>
    4286:	e004      	b.n	4292 <text_scroller+0xce>
    4288:	bf00      	nop
    428a:	e002      	b.n	4292 <text_scroller+0xce>
    428c:	bf00      	nop
    428e:	e000      	b.n	4292 <text_scroller+0xce>
    4290:	bf00      	nop
    4292:	f7fd fe0d 	bl	1eb0 <gfx_cls>
    4296:	200b      	movs	r0, #11
    4298:	f7fd f9a2 	bl	15e0 <btn_wait_up>
    429c:	bf00      	nop
    429e:	3710      	adds	r7, #16
    42a0:	46bd      	mov	sp, r7
    42a2:	bd80      	pop	{r7, pc}

000042a4 <prompt_btn>:
    42a4:	b580      	push	{r7, lr}
    42a6:	af00      	add	r7, sp, #0
    42a8:	4802      	ldr	r0, [pc, #8]	; (42b4 <prompt_btn+0x10>)
    42aa:	f7ff feab 	bl	4004 <print>
    42ae:	bf00      	nop
    42b0:	bd80      	pop	{r7, pc}
    42b2:	bf00      	nop
    42b4:	00004ffc 	.word	0x00004ffc

000042b8 <clear_screen>:
    42b8:	b580      	push	{r7, lr}
    42ba:	af00      	add	r7, sp, #0
    42bc:	f7fd fdf8 	bl	1eb0 <gfx_cls>
    42c0:	4b03      	ldr	r3, [pc, #12]	; (42d0 <clear_screen+0x18>)
    42c2:	2200      	movs	r2, #0
    42c4:	701a      	strb	r2, [r3, #0]
    42c6:	4b03      	ldr	r3, [pc, #12]	; (42d4 <clear_screen+0x1c>)
    42c8:	2200      	movs	r2, #0
    42ca:	701a      	strb	r2, [r3, #0]
    42cc:	bf00      	nop
    42ce:	bd80      	pop	{r7, pc}
    42d0:	2000050a 	.word	0x2000050a
    42d4:	2000050b 	.word	0x2000050b

000042d8 <show_cursor>:
    42d8:	b580      	push	{r7, lr}
    42da:	b084      	sub	sp, #16
    42dc:	af00      	add	r7, sp, #0
    42de:	6078      	str	r0, [r7, #4]
    42e0:	687b      	ldr	r3, [r7, #4]
    42e2:	2b00      	cmp	r3, #0
    42e4:	d001      	beq.n	42ea <show_cursor+0x12>
    42e6:	230f      	movs	r3, #15
    42e8:	e000      	b.n	42ec <show_cursor+0x14>
    42ea:	2300      	movs	r3, #0
    42ec:	72fb      	strb	r3, [r7, #11]
    42ee:	4b0c      	ldr	r3, [pc, #48]	; (4320 <show_cursor+0x48>)
    42f0:	781b      	ldrb	r3, [r3, #0]
    42f2:	60fb      	str	r3, [r7, #12]
    42f4:	e00a      	b.n	430c <show_cursor+0x34>
    42f6:	4b0b      	ldr	r3, [pc, #44]	; (4324 <show_cursor+0x4c>)
    42f8:	781b      	ldrb	r3, [r3, #0]
    42fa:	3307      	adds	r3, #7
    42fc:	7afa      	ldrb	r2, [r7, #11]
    42fe:	4619      	mov	r1, r3
    4300:	68f8      	ldr	r0, [r7, #12]
    4302:	f7fd fd3f 	bl	1d84 <gfx_plot>
    4306:	68fb      	ldr	r3, [r7, #12]
    4308:	3301      	adds	r3, #1
    430a:	60fb      	str	r3, [r7, #12]
    430c:	4b04      	ldr	r3, [pc, #16]	; (4320 <show_cursor+0x48>)
    430e:	781b      	ldrb	r3, [r3, #0]
    4310:	1d9a      	adds	r2, r3, #6
    4312:	68fb      	ldr	r3, [r7, #12]
    4314:	429a      	cmp	r2, r3
    4316:	dcee      	bgt.n	42f6 <show_cursor+0x1e>
    4318:	bf00      	nop
    431a:	3710      	adds	r7, #16
    431c:	46bd      	mov	sp, r7
    431e:	bd80      	pop	{r7, pc}
    4320:	2000050a 	.word	0x2000050a
    4324:	2000050b 	.word	0x2000050b

00004328 <tvout_init>:
    4328:	b580      	push	{r7, lr}
    432a:	af00      	add	r7, sp, #0
    432c:	4b3e      	ldr	r3, [pc, #248]	; (4428 <tvout_init+0x100>)
    432e:	4a3f      	ldr	r2, [pc, #252]	; (442c <tvout_init+0x104>)
    4330:	601a      	str	r2, [r3, #0]
    4332:	4b3f      	ldr	r3, [pc, #252]	; (4430 <tvout_init+0x108>)
    4334:	4a3f      	ldr	r2, [pc, #252]	; (4434 <tvout_init+0x10c>)
    4336:	601a      	str	r2, [r3, #0]
    4338:	220a      	movs	r2, #10
    433a:	2108      	movs	r1, #8
    433c:	483a      	ldr	r0, [pc, #232]	; (4428 <tvout_init+0x100>)
    433e:	f7fd fc32 	bl	1ba6 <config_pin>
    4342:	4b39      	ldr	r3, [pc, #228]	; (4428 <tvout_init+0x100>)
    4344:	2200      	movs	r2, #0
    4346:	60da      	str	r2, [r3, #12]
    4348:	4a3b      	ldr	r2, [pc, #236]	; (4438 <tvout_init+0x110>)
    434a:	4b3b      	ldr	r3, [pc, #236]	; (4438 <tvout_init+0x110>)
    434c:	699b      	ldr	r3, [r3, #24]
    434e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4352:	6193      	str	r3, [r2, #24]
    4354:	4b39      	ldr	r3, [pc, #228]	; (443c <tvout_init+0x114>)
    4356:	2278      	movs	r2, #120	; 0x78
    4358:	619a      	str	r2, [r3, #24]
    435a:	4b38      	ldr	r3, [pc, #224]	; (443c <tvout_init+0x114>)
    435c:	2201      	movs	r2, #1
    435e:	621a      	str	r2, [r3, #32]
    4360:	4b36      	ldr	r3, [pc, #216]	; (443c <tvout_init+0x114>)
    4362:	2284      	movs	r2, #132	; 0x84
    4364:	601a      	str	r2, [r3, #0]
    4366:	4b35      	ldr	r3, [pc, #212]	; (443c <tvout_init+0x114>)
    4368:	f241 12c5 	movw	r2, #4549	; 0x11c5
    436c:	62da      	str	r2, [r3, #44]	; 0x2c
    436e:	4b33      	ldr	r3, [pc, #204]	; (443c <tvout_init+0x114>)
    4370:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4374:	635a      	str	r2, [r3, #52]	; 0x34
    4376:	4b31      	ldr	r3, [pc, #196]	; (443c <tvout_init+0x114>)
    4378:	f240 1265 	movw	r2, #357	; 0x165
    437c:	639a      	str	r2, [r3, #56]	; 0x38
    437e:	4a2f      	ldr	r2, [pc, #188]	; (443c <tvout_init+0x114>)
    4380:	4b2e      	ldr	r3, [pc, #184]	; (443c <tvout_init+0x114>)
    4382:	695b      	ldr	r3, [r3, #20]
    4384:	f043 0301 	orr.w	r3, r3, #1
    4388:	6153      	str	r3, [r2, #20]
    438a:	4b2c      	ldr	r3, [pc, #176]	; (443c <tvout_init+0x114>)
    438c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4390:	645a      	str	r2, [r3, #68]	; 0x44
    4392:	4b2a      	ldr	r3, [pc, #168]	; (443c <tvout_init+0x114>)
    4394:	2200      	movs	r2, #0
    4396:	611a      	str	r2, [r3, #16]
    4398:	4a28      	ldr	r2, [pc, #160]	; (443c <tvout_init+0x114>)
    439a:	4b28      	ldr	r3, [pc, #160]	; (443c <tvout_init+0x114>)
    439c:	68db      	ldr	r3, [r3, #12]
    439e:	f043 0301 	orr.w	r3, r3, #1
    43a2:	60d3      	str	r3, [r2, #12]
    43a4:	2100      	movs	r1, #0
    43a6:	2019      	movs	r0, #25
    43a8:	f7fe fc7c 	bl	2ca4 <set_int_priority>
    43ac:	2100      	movs	r1, #0
    43ae:	201b      	movs	r0, #27
    43b0:	f7fe fc78 	bl	2ca4 <set_int_priority>
    43b4:	2019      	movs	r0, #25
    43b6:	f7fe fbbb 	bl	2b30 <enable_interrupt>
    43ba:	201b      	movs	r0, #27
    43bc:	f7fe fbb8 	bl	2b30 <enable_interrupt>
    43c0:	4a1e      	ldr	r2, [pc, #120]	; (443c <tvout_init+0x114>)
    43c2:	4b1e      	ldr	r3, [pc, #120]	; (443c <tvout_init+0x114>)
    43c4:	681b      	ldr	r3, [r3, #0]
    43c6:	f043 0301 	orr.w	r3, r3, #1
    43ca:	6013      	str	r3, [r2, #0]
    43cc:	220a      	movs	r2, #10
    43ce:	2100      	movs	r1, #0
    43d0:	481b      	ldr	r0, [pc, #108]	; (4440 <tvout_init+0x118>)
    43d2:	f7fd fbe8 	bl	1ba6 <config_pin>
    43d6:	4a18      	ldr	r2, [pc, #96]	; (4438 <tvout_init+0x110>)
    43d8:	4b17      	ldr	r3, [pc, #92]	; (4438 <tvout_init+0x110>)
    43da:	69db      	ldr	r3, [r3, #28]
    43dc:	f043 0302 	orr.w	r3, r3, #2
    43e0:	61d3      	str	r3, [r2, #28]
    43e2:	4b18      	ldr	r3, [pc, #96]	; (4444 <tvout_init+0x11c>)
    43e4:	2278      	movs	r2, #120	; 0x78
    43e6:	61da      	str	r2, [r3, #28]
    43e8:	4b16      	ldr	r3, [pc, #88]	; (4444 <tvout_init+0x11c>)
    43ea:	2284      	movs	r2, #132	; 0x84
    43ec:	601a      	str	r2, [r3, #0]
    43ee:	4b15      	ldr	r3, [pc, #84]	; (4444 <tvout_init+0x11c>)
    43f0:	2213      	movs	r2, #19
    43f2:	62da      	str	r2, [r3, #44]	; 0x2c
    43f4:	4b13      	ldr	r3, [pc, #76]	; (4444 <tvout_init+0x11c>)
    43f6:	220a      	movs	r2, #10
    43f8:	63da      	str	r2, [r3, #60]	; 0x3c
    43fa:	4a12      	ldr	r2, [pc, #72]	; (4444 <tvout_init+0x11c>)
    43fc:	4b11      	ldr	r3, [pc, #68]	; (4444 <tvout_init+0x11c>)
    43fe:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4400:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4404:	6453      	str	r3, [r2, #68]	; 0x44
    4406:	4a0f      	ldr	r2, [pc, #60]	; (4444 <tvout_init+0x11c>)
    4408:	4b0e      	ldr	r3, [pc, #56]	; (4444 <tvout_init+0x11c>)
    440a:	695b      	ldr	r3, [r3, #20]
    440c:	f043 0301 	orr.w	r3, r3, #1
    4410:	6153      	str	r3, [r2, #20]
    4412:	4b0c      	ldr	r3, [pc, #48]	; (4444 <tvout_init+0x11c>)
    4414:	2200      	movs	r2, #0
    4416:	611a      	str	r2, [r3, #16]
    4418:	4a0a      	ldr	r2, [pc, #40]	; (4444 <tvout_init+0x11c>)
    441a:	4b0a      	ldr	r3, [pc, #40]	; (4444 <tvout_init+0x11c>)
    441c:	681b      	ldr	r3, [r3, #0]
    441e:	f043 0301 	orr.w	r3, r3, #1
    4422:	6013      	str	r3, [r2, #0]
    4424:	bf00      	nop
    4426:	bd80      	pop	{r7, pc}
    4428:	40010800 	.word	0x40010800
    442c:	88883333 	.word	0x88883333
    4430:	40010804 	.word	0x40010804
    4434:	84484444 	.word	0x84484444
    4438:	40021000 	.word	0x40021000
    443c:	40012c00 	.word	0x40012c00
    4440:	40010c00 	.word	0x40010c00
    4444:	40000400 	.word	0x40000400

00004448 <TV_OUT_handler>:
    4448:	4668      	mov	r0, sp
    444a:	f020 0107 	bic.w	r1, r0, #7
    444e:	468d      	mov	sp, r1
    4450:	b471      	push	{r0, r4, r5, r6}
    4452:	4a31      	ldr	r2, [pc, #196]	; (4518 <TV_OUT_handler+0xd0>)
    4454:	6a13      	ldr	r3, [r2, #32]
    4456:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    445a:	6213      	str	r3, [r2, #32]
    445c:	492f      	ldr	r1, [pc, #188]	; (451c <TV_OUT_handler+0xd4>)
    445e:	f240 2209 	movw	r2, #521	; 0x209
    4462:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4464:	4293      	cmp	r3, r2
    4466:	d9fc      	bls.n	4462 <TV_OUT_handler+0x1a>
    4468:	4a2b      	ldr	r2, [pc, #172]	; (4518 <TV_OUT_handler+0xd0>)
    446a:	6a13      	ldr	r3, [r2, #32]
    446c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4470:	6213      	str	r3, [r2, #32]
    4472:	4b2b      	ldr	r3, [pc, #172]	; (4520 <TV_OUT_handler+0xd8>)
    4474:	881d      	ldrh	r5, [r3, #0]
    4476:	b2ad      	uxth	r5, r5
    4478:	4b2a      	ldr	r3, [pc, #168]	; (4524 <TV_OUT_handler+0xdc>)
    447a:	7818      	ldrb	r0, [r3, #0]
    447c:	4b2a      	ldr	r3, [pc, #168]	; (4528 <TV_OUT_handler+0xe0>)
    447e:	781b      	ldrb	r3, [r3, #0]
    4480:	fb95 f5f3 	sdiv	r5, r5, r3
    4484:	4b29      	ldr	r3, [pc, #164]	; (452c <TV_OUT_handler+0xe4>)
    4486:	fb00 3505 	mla	r5, r0, r5, r3
    448a:	4b29      	ldr	r3, [pc, #164]	; (4530 <TV_OUT_handler+0xe8>)
    448c:	881a      	ldrh	r2, [r3, #0]
    448e:	4923      	ldr	r1, [pc, #140]	; (451c <TV_OUT_handler+0xd4>)
    4490:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4492:	4293      	cmp	r3, r2
    4494:	d3fc      	bcc.n	4490 <TV_OUT_handler+0x48>
    4496:	4b27      	ldr	r3, [pc, #156]	; (4534 <TV_OUT_handler+0xec>)
    4498:	461a      	mov	r2, r3
    449a:	6812      	ldr	r2, [r2, #0]
    449c:	f002 0207 	and.w	r2, r2, #7
    44a0:	ea4f 0242 	mov.w	r2, r2, lsl #1
    44a4:	4497      	add	pc, r2
    44a6:	bf00      	nop
    44a8:	bf00      	nop
    44aa:	bf00      	nop
    44ac:	bf00      	nop
    44ae:	bf00      	nop
    44b0:	bf00      	nop
    44b2:	bf00      	nop
    44b4:	bf00      	nop
    44b6:	4a18      	ldr	r2, [pc, #96]	; (4518 <TV_OUT_handler+0xd0>)
    44b8:	6a11      	ldr	r1, [r2, #32]
    44ba:	4b1f      	ldr	r3, [pc, #124]	; (4538 <TV_OUT_handler+0xf0>)
    44bc:	881b      	ldrh	r3, [r3, #0]
    44be:	430b      	orrs	r3, r1
    44c0:	6213      	str	r3, [r2, #32]
    44c2:	b1b8      	cbz	r0, 44f4 <TV_OUT_handler+0xac>
    44c4:	462b      	mov	r3, r5
    44c6:	481d      	ldr	r0, [pc, #116]	; (453c <TV_OUT_handler+0xf4>)
    44c8:	491d      	ldr	r1, [pc, #116]	; (4540 <TV_OUT_handler+0xf8>)
    44ca:	4e16      	ldr	r6, [pc, #88]	; (4524 <TV_OUT_handler+0xdc>)
    44cc:	781a      	ldrb	r2, [r3, #0]
    44ce:	0912      	lsrs	r2, r2, #4
    44d0:	8002      	strh	r2, [r0, #0]
    44d2:	780c      	ldrb	r4, [r1, #0]
    44d4:	4622      	mov	r2, r4
    44d6:	3a01      	subs	r2, #1
    44d8:	d1fd      	bne.n	44d6 <TV_OUT_handler+0x8e>
    44da:	f813 2b01 	ldrb.w	r2, [r3], #1
    44de:	f002 020f 	and.w	r2, r2, #15
    44e2:	8002      	strh	r2, [r0, #0]
    44e4:	780c      	ldrb	r4, [r1, #0]
    44e6:	4622      	mov	r2, r4
    44e8:	3a01      	subs	r2, #1
    44ea:	d1fd      	bne.n	44e8 <TV_OUT_handler+0xa0>
    44ec:	1b5c      	subs	r4, r3, r5
    44ee:	7832      	ldrb	r2, [r6, #0]
    44f0:	4294      	cmp	r4, r2
    44f2:	d3eb      	bcc.n	44cc <TV_OUT_handler+0x84>
    44f4:	2200      	movs	r2, #0
    44f6:	4b13      	ldr	r3, [pc, #76]	; (4544 <TV_OUT_handler+0xfc>)
    44f8:	60da      	str	r2, [r3, #12]
    44fa:	4a07      	ldr	r2, [pc, #28]	; (4518 <TV_OUT_handler+0xd0>)
    44fc:	6a13      	ldr	r3, [r2, #32]
    44fe:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4502:	6213      	str	r3, [r2, #32]
    4504:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4508:	6913      	ldr	r3, [r2, #16]
    450a:	f023 0304 	bic.w	r3, r3, #4
    450e:	6113      	str	r3, [r2, #16]
    4510:	bc71      	pop	{r0, r4, r5, r6}
    4512:	4685      	mov	sp, r0
    4514:	4770      	bx	lr
    4516:	bf00      	nop
    4518:	40000400 	.word	0x40000400
    451c:	40012c00 	.word	0x40012c00
    4520:	20000510 	.word	0x20000510
    4524:	20000078 	.word	0x20000078
    4528:	20000079 	.word	0x20000079
    452c:	20002548 	.word	0x20002548
    4530:	20000076 	.word	0x20000076
    4534:	40012c24 	.word	0x40012c24
    4538:	2000007e 	.word	0x2000007e
    453c:	4001080c 	.word	0x4001080c
    4540:	2000007a 	.word	0x2000007a
    4544:	40010800 	.word	0x40010800

00004548 <TV_SYNC_handler>:
    4548:	4668      	mov	r0, sp
    454a:	f020 0107 	bic.w	r1, r0, #7
    454e:	468d      	mov	sp, r1
    4550:	b501      	push	{r0, lr}
    4552:	4a84      	ldr	r2, [pc, #528]	; (4764 <TV_SYNC_handler+0x21c>)
    4554:	8813      	ldrh	r3, [r2, #0]
    4556:	3301      	adds	r3, #1
    4558:	b29b      	uxth	r3, r3
    455a:	8013      	strh	r3, [r2, #0]
    455c:	4a82      	ldr	r2, [pc, #520]	; (4768 <TV_SYNC_handler+0x220>)
    455e:	6813      	ldr	r3, [r2, #0]
    4560:	3301      	adds	r3, #1
    4562:	6013      	str	r3, [r2, #0]
    4564:	4b81      	ldr	r3, [pc, #516]	; (476c <TV_SYNC_handler+0x224>)
    4566:	881b      	ldrh	r3, [r3, #0]
    4568:	b29b      	uxth	r3, r3
    456a:	2b09      	cmp	r3, #9
    456c:	f200 8088 	bhi.w	4680 <TV_SYNC_handler+0x138>
    4570:	e8df f013 	tbh	[pc, r3, lsl #1]
    4574:	002c000a 	.word	0x002c000a
    4578:	006e004c 	.word	0x006e004c
    457c:	0097008f 	.word	0x0097008f
    4580:	00bb00ac 	.word	0x00bb00ac
    4584:	010c00da 	.word	0x010c00da
    4588:	4b79      	ldr	r3, [pc, #484]	; (4770 <TV_SYNC_handler+0x228>)
    458a:	881b      	ldrh	r3, [r3, #0]
    458c:	b29b      	uxth	r3, r3
    458e:	b18b      	cbz	r3, 45b4 <TV_SYNC_handler+0x6c>
    4590:	4a77      	ldr	r2, [pc, #476]	; (4770 <TV_SYNC_handler+0x228>)
    4592:	8813      	ldrh	r3, [r2, #0]
    4594:	3301      	adds	r3, #1
    4596:	b29b      	uxth	r3, r3
    4598:	8013      	strh	r3, [r2, #0]
    459a:	8813      	ldrh	r3, [r2, #0]
    459c:	b29b      	uxth	r3, r3
    459e:	2b06      	cmp	r3, #6
    45a0:	d16e      	bne.n	4680 <TV_SYNC_handler+0x138>
    45a2:	2200      	movs	r2, #0
    45a4:	4b72      	ldr	r3, [pc, #456]	; (4770 <TV_SYNC_handler+0x228>)
    45a6:	801a      	strh	r2, [r3, #0]
    45a8:	4a70      	ldr	r2, [pc, #448]	; (476c <TV_SYNC_handler+0x224>)
    45aa:	8813      	ldrh	r3, [r2, #0]
    45ac:	3301      	adds	r3, #1
    45ae:	b29b      	uxth	r3, r3
    45b0:	8013      	strh	r3, [r2, #0]
    45b2:	e065      	b.n	4680 <TV_SYNC_handler+0x138>
    45b4:	4b6f      	ldr	r3, [pc, #444]	; (4774 <TV_SYNC_handler+0x22c>)
    45b6:	f640 02e2 	movw	r2, #2274	; 0x8e2
    45ba:	62da      	str	r2, [r3, #44]	; 0x2c
    45bc:	22a4      	movs	r2, #164	; 0xa4
    45be:	635a      	str	r2, [r3, #52]	; 0x34
    45c0:	4a6b      	ldr	r2, [pc, #428]	; (4770 <TV_SYNC_handler+0x228>)
    45c2:	8813      	ldrh	r3, [r2, #0]
    45c4:	3301      	adds	r3, #1
    45c6:	b29b      	uxth	r3, r3
    45c8:	8013      	strh	r3, [r2, #0]
    45ca:	e059      	b.n	4680 <TV_SYNC_handler+0x138>
    45cc:	4b68      	ldr	r3, [pc, #416]	; (4770 <TV_SYNC_handler+0x228>)
    45ce:	881b      	ldrh	r3, [r3, #0]
    45d0:	b29b      	uxth	r3, r3
    45d2:	b18b      	cbz	r3, 45f8 <TV_SYNC_handler+0xb0>
    45d4:	4a66      	ldr	r2, [pc, #408]	; (4770 <TV_SYNC_handler+0x228>)
    45d6:	8813      	ldrh	r3, [r2, #0]
    45d8:	3301      	adds	r3, #1
    45da:	b29b      	uxth	r3, r3
    45dc:	8013      	strh	r3, [r2, #0]
    45de:	8813      	ldrh	r3, [r2, #0]
    45e0:	b29b      	uxth	r3, r3
    45e2:	2b06      	cmp	r3, #6
    45e4:	d14c      	bne.n	4680 <TV_SYNC_handler+0x138>
    45e6:	2200      	movs	r2, #0
    45e8:	4b61      	ldr	r3, [pc, #388]	; (4770 <TV_SYNC_handler+0x228>)
    45ea:	801a      	strh	r2, [r3, #0]
    45ec:	4a5f      	ldr	r2, [pc, #380]	; (476c <TV_SYNC_handler+0x224>)
    45ee:	8813      	ldrh	r3, [r2, #0]
    45f0:	3301      	adds	r3, #1
    45f2:	b29b      	uxth	r3, r3
    45f4:	8013      	strh	r3, [r2, #0]
    45f6:	e043      	b.n	4680 <TV_SYNC_handler+0x138>
    45f8:	f240 7294 	movw	r2, #1940	; 0x794
    45fc:	4b5d      	ldr	r3, [pc, #372]	; (4774 <TV_SYNC_handler+0x22c>)
    45fe:	635a      	str	r2, [r3, #52]	; 0x34
    4600:	4a5b      	ldr	r2, [pc, #364]	; (4770 <TV_SYNC_handler+0x228>)
    4602:	8813      	ldrh	r3, [r2, #0]
    4604:	3301      	adds	r3, #1
    4606:	b29b      	uxth	r3, r3
    4608:	8013      	strh	r3, [r2, #0]
    460a:	e039      	b.n	4680 <TV_SYNC_handler+0x138>
    460c:	4b58      	ldr	r3, [pc, #352]	; (4770 <TV_SYNC_handler+0x228>)
    460e:	881b      	ldrh	r3, [r3, #0]
    4610:	b29b      	uxth	r3, r3
    4612:	b153      	cbz	r3, 462a <TV_SYNC_handler+0xe2>
    4614:	4b56      	ldr	r3, [pc, #344]	; (4770 <TV_SYNC_handler+0x228>)
    4616:	881b      	ldrh	r3, [r3, #0]
    4618:	b29b      	uxth	r3, r3
    461a:	2b06      	cmp	r3, #6
    461c:	d00e      	beq.n	463c <TV_SYNC_handler+0xf4>
    461e:	4a54      	ldr	r2, [pc, #336]	; (4770 <TV_SYNC_handler+0x228>)
    4620:	8813      	ldrh	r3, [r2, #0]
    4622:	3301      	adds	r3, #1
    4624:	b29b      	uxth	r3, r3
    4626:	8013      	strh	r3, [r2, #0]
    4628:	e02a      	b.n	4680 <TV_SYNC_handler+0x138>
    462a:	22a4      	movs	r2, #164	; 0xa4
    462c:	4b51      	ldr	r3, [pc, #324]	; (4774 <TV_SYNC_handler+0x22c>)
    462e:	635a      	str	r2, [r3, #52]	; 0x34
    4630:	4a4f      	ldr	r2, [pc, #316]	; (4770 <TV_SYNC_handler+0x228>)
    4632:	8813      	ldrh	r3, [r2, #0]
    4634:	3301      	adds	r3, #1
    4636:	b29b      	uxth	r3, r3
    4638:	8013      	strh	r3, [r2, #0]
    463a:	e021      	b.n	4680 <TV_SYNC_handler+0x138>
    463c:	4a4b      	ldr	r2, [pc, #300]	; (476c <TV_SYNC_handler+0x224>)
    463e:	8813      	ldrh	r3, [r2, #0]
    4640:	3301      	adds	r3, #1
    4642:	b29b      	uxth	r3, r3
    4644:	8013      	strh	r3, [r2, #0]
    4646:	4b4c      	ldr	r3, [pc, #304]	; (4778 <TV_SYNC_handler+0x230>)
    4648:	881b      	ldrh	r3, [r3, #0]
    464a:	f013 0f01 	tst.w	r3, #1
    464e:	d017      	beq.n	4680 <TV_SYNC_handler+0x138>
    4650:	4b48      	ldr	r3, [pc, #288]	; (4774 <TV_SYNC_handler+0x22c>)
    4652:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4656:	62da      	str	r2, [r3, #44]	; 0x2c
    4658:	f44f 72a8 	mov.w	r2, #336	; 0x150
    465c:	635a      	str	r2, [r3, #52]	; 0x34
    465e:	4a46      	ldr	r2, [pc, #280]	; (4778 <TV_SYNC_handler+0x230>)
    4660:	8813      	ldrh	r3, [r2, #0]
    4662:	f023 0302 	bic.w	r3, r3, #2
    4666:	041b      	lsls	r3, r3, #16
    4668:	0c1b      	lsrs	r3, r3, #16
    466a:	8013      	strh	r3, [r2, #0]
    466c:	4a3d      	ldr	r2, [pc, #244]	; (4764 <TV_SYNC_handler+0x21c>)
    466e:	8813      	ldrh	r3, [r2, #0]
    4670:	f3c3 038d 	ubfx	r3, r3, #2, #14
    4674:	8013      	strh	r3, [r2, #0]
    4676:	4a3d      	ldr	r2, [pc, #244]	; (476c <TV_SYNC_handler+0x224>)
    4678:	8813      	ldrh	r3, [r2, #0]
    467a:	3301      	adds	r3, #1
    467c:	b29b      	uxth	r3, r3
    467e:	8013      	strh	r3, [r2, #0]
    4680:	4a3c      	ldr	r2, [pc, #240]	; (4774 <TV_SYNC_handler+0x22c>)
    4682:	6913      	ldr	r3, [r2, #16]
    4684:	f023 0301 	bic.w	r3, r3, #1
    4688:	6113      	str	r3, [r2, #16]
    468a:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    468e:	4685      	mov	sp, r0
    4690:	4770      	bx	lr
    4692:	f7fc ff53 	bl	153c <read_gamepad>
    4696:	4a35      	ldr	r2, [pc, #212]	; (476c <TV_SYNC_handler+0x224>)
    4698:	8813      	ldrh	r3, [r2, #0]
    469a:	3301      	adds	r3, #1
    469c:	b29b      	uxth	r3, r3
    469e:	8013      	strh	r3, [r2, #0]
    46a0:	e7ee      	b.n	4680 <TV_SYNC_handler+0x138>
    46a2:	4b36      	ldr	r3, [pc, #216]	; (477c <TV_SYNC_handler+0x234>)
    46a4:	881b      	ldrh	r3, [r3, #0]
    46a6:	b29b      	uxth	r3, r3
    46a8:	b13b      	cbz	r3, 46ba <TV_SYNC_handler+0x172>
    46aa:	4a34      	ldr	r2, [pc, #208]	; (477c <TV_SYNC_handler+0x234>)
    46ac:	8813      	ldrh	r3, [r2, #0]
    46ae:	3b01      	subs	r3, #1
    46b0:	b29b      	uxth	r3, r3
    46b2:	8013      	strh	r3, [r2, #0]
    46b4:	8813      	ldrh	r3, [r2, #0]
    46b6:	b29b      	uxth	r3, r3
    46b8:	b12b      	cbz	r3, 46c6 <TV_SYNC_handler+0x17e>
    46ba:	4a2c      	ldr	r2, [pc, #176]	; (476c <TV_SYNC_handler+0x224>)
    46bc:	8813      	ldrh	r3, [r2, #0]
    46be:	3301      	adds	r3, #1
    46c0:	b29b      	uxth	r3, r3
    46c2:	8013      	strh	r3, [r2, #0]
    46c4:	e7dc      	b.n	4680 <TV_SYNC_handler+0x138>
    46c6:	f7ff f97f 	bl	39c8 <sound_stop>
    46ca:	e7f6      	b.n	46ba <TV_SYNC_handler+0x172>
    46cc:	4b2c      	ldr	r3, [pc, #176]	; (4780 <TV_SYNC_handler+0x238>)
    46ce:	881b      	ldrh	r3, [r3, #0]
    46d0:	b29b      	uxth	r3, r3
    46d2:	b123      	cbz	r3, 46de <TV_SYNC_handler+0x196>
    46d4:	4a2a      	ldr	r2, [pc, #168]	; (4780 <TV_SYNC_handler+0x238>)
    46d6:	8813      	ldrh	r3, [r2, #0]
    46d8:	3b01      	subs	r3, #1
    46da:	b29b      	uxth	r3, r3
    46dc:	8013      	strh	r3, [r2, #0]
    46de:	4a23      	ldr	r2, [pc, #140]	; (476c <TV_SYNC_handler+0x224>)
    46e0:	8813      	ldrh	r3, [r2, #0]
    46e2:	3301      	adds	r3, #1
    46e4:	b29b      	uxth	r3, r3
    46e6:	8013      	strh	r3, [r2, #0]
    46e8:	e7ca      	b.n	4680 <TV_SYNC_handler+0x138>
    46ea:	4b1e      	ldr	r3, [pc, #120]	; (4764 <TV_SYNC_handler+0x21c>)
    46ec:	881b      	ldrh	r3, [r3, #0]
    46ee:	b29b      	uxth	r3, r3
    46f0:	4a24      	ldr	r2, [pc, #144]	; (4784 <TV_SYNC_handler+0x23c>)
    46f2:	8812      	ldrh	r2, [r2, #0]
    46f4:	429a      	cmp	r2, r3
    46f6:	d1c3      	bne.n	4680 <TV_SYNC_handler+0x138>
    46f8:	4b1e      	ldr	r3, [pc, #120]	; (4774 <TV_SYNC_handler+0x22c>)
    46fa:	691a      	ldr	r2, [r3, #16]
    46fc:	f022 0204 	bic.w	r2, r2, #4
    4700:	611a      	str	r2, [r3, #16]
    4702:	68da      	ldr	r2, [r3, #12]
    4704:	f042 0204 	orr.w	r2, r2, #4
    4708:	60da      	str	r2, [r3, #12]
    470a:	4a1b      	ldr	r2, [pc, #108]	; (4778 <TV_SYNC_handler+0x230>)
    470c:	8813      	ldrh	r3, [r2, #0]
    470e:	b29b      	uxth	r3, r3
    4710:	f043 0304 	orr.w	r3, r3, #4
    4714:	8013      	strh	r3, [r2, #0]
    4716:	4a15      	ldr	r2, [pc, #84]	; (476c <TV_SYNC_handler+0x224>)
    4718:	8813      	ldrh	r3, [r2, #0]
    471a:	3301      	adds	r3, #1
    471c:	b29b      	uxth	r3, r3
    471e:	8013      	strh	r3, [r2, #0]
    4720:	2200      	movs	r2, #0
    4722:	4b13      	ldr	r3, [pc, #76]	; (4770 <TV_SYNC_handler+0x228>)
    4724:	801a      	strh	r2, [r3, #0]
    4726:	e7ab      	b.n	4680 <TV_SYNC_handler+0x138>
    4728:	4a11      	ldr	r2, [pc, #68]	; (4770 <TV_SYNC_handler+0x228>)
    472a:	8813      	ldrh	r3, [r2, #0]
    472c:	3301      	adds	r3, #1
    472e:	b29b      	uxth	r3, r3
    4730:	8013      	strh	r3, [r2, #0]
    4732:	4b0c      	ldr	r3, [pc, #48]	; (4764 <TV_SYNC_handler+0x21c>)
    4734:	881b      	ldrh	r3, [r3, #0]
    4736:	b29b      	uxth	r3, r3
    4738:	4a13      	ldr	r2, [pc, #76]	; (4788 <TV_SYNC_handler+0x240>)
    473a:	8812      	ldrh	r2, [r2, #0]
    473c:	429a      	cmp	r2, r3
    473e:	d19f      	bne.n	4680 <TV_SYNC_handler+0x138>
    4740:	4a0c      	ldr	r2, [pc, #48]	; (4774 <TV_SYNC_handler+0x22c>)
    4742:	68d3      	ldr	r3, [r2, #12]
    4744:	f023 0304 	bic.w	r3, r3, #4
    4748:	60d3      	str	r3, [r2, #12]
    474a:	4a0b      	ldr	r2, [pc, #44]	; (4778 <TV_SYNC_handler+0x230>)
    474c:	8813      	ldrh	r3, [r2, #0]
    474e:	f023 0304 	bic.w	r3, r3, #4
    4752:	041b      	lsls	r3, r3, #16
    4754:	0c1b      	lsrs	r3, r3, #16
    4756:	8013      	strh	r3, [r2, #0]
    4758:	4a04      	ldr	r2, [pc, #16]	; (476c <TV_SYNC_handler+0x224>)
    475a:	8813      	ldrh	r3, [r2, #0]
    475c:	3301      	adds	r3, #1
    475e:	b29b      	uxth	r3, r3
    4760:	8013      	strh	r3, [r2, #0]
    4762:	e78d      	b.n	4680 <TV_SYNC_handler+0x138>
    4764:	20000512 	.word	0x20000512
    4768:	20000514 	.word	0x20000514
    476c:	2000050c 	.word	0x2000050c
    4770:	20000510 	.word	0x20000510
    4774:	40012c00 	.word	0x40012c00
    4778:	2000050e 	.word	0x2000050e
    477c:	20004caa 	.word	0x20004caa
    4780:	20004ca8 	.word	0x20004ca8
    4784:	20000072 	.word	0x20000072
    4788:	20000074 	.word	0x20000074
    478c:	4b11      	ldr	r3, [pc, #68]	; (47d4 <TV_SYNC_handler+0x28c>)
    478e:	881b      	ldrh	r3, [r3, #0]
    4790:	b29b      	uxth	r3, r3
    4792:	f240 1207 	movw	r2, #263	; 0x107
    4796:	4293      	cmp	r3, r2
    4798:	f47f af72 	bne.w	4680 <TV_SYNC_handler+0x138>
    479c:	4b0e      	ldr	r3, [pc, #56]	; (47d8 <TV_SYNC_handler+0x290>)
    479e:	881b      	ldrh	r3, [r3, #0]
    47a0:	f013 0f01 	tst.w	r3, #1
    47a4:	d003      	beq.n	47ae <TV_SYNC_handler+0x266>
    47a6:	f640 02e2 	movw	r2, #2274	; 0x8e2
    47aa:	4b0c      	ldr	r3, [pc, #48]	; (47dc <TV_SYNC_handler+0x294>)
    47ac:	62da      	str	r2, [r3, #44]	; 0x2c
    47ae:	4a0a      	ldr	r2, [pc, #40]	; (47d8 <TV_SYNC_handler+0x290>)
    47b0:	8813      	ldrh	r3, [r2, #0]
    47b2:	b29b      	uxth	r3, r3
    47b4:	f083 0301 	eor.w	r3, r3, #1
    47b8:	8013      	strh	r3, [r2, #0]
    47ba:	8813      	ldrh	r3, [r2, #0]
    47bc:	b29b      	uxth	r3, r3
    47be:	f043 0302 	orr.w	r3, r3, #2
    47c2:	8013      	strh	r3, [r2, #0]
    47c4:	2300      	movs	r3, #0
    47c6:	4a03      	ldr	r2, [pc, #12]	; (47d4 <TV_SYNC_handler+0x28c>)
    47c8:	8013      	strh	r3, [r2, #0]
    47ca:	4a05      	ldr	r2, [pc, #20]	; (47e0 <TV_SYNC_handler+0x298>)
    47cc:	8013      	strh	r3, [r2, #0]
    47ce:	4a05      	ldr	r2, [pc, #20]	; (47e4 <TV_SYNC_handler+0x29c>)
    47d0:	8013      	strh	r3, [r2, #0]
    47d2:	e755      	b.n	4680 <TV_SYNC_handler+0x138>
    47d4:	20000512 	.word	0x20000512
    47d8:	2000050e 	.word	0x2000050e
    47dc:	40012c00 	.word	0x40012c00
    47e0:	20000510 	.word	0x20000510
    47e4:	2000050c 	.word	0x2000050c

000047e8 <frame_sync>:
    47e8:	b480      	push	{r7}
    47ea:	af00      	add	r7, sp, #0
    47ec:	bf00      	nop
    47ee:	4b05      	ldr	r3, [pc, #20]	; (4804 <frame_sync+0x1c>)
    47f0:	881b      	ldrh	r3, [r3, #0]
    47f2:	b29b      	uxth	r3, r3
    47f4:	f003 0302 	and.w	r3, r3, #2
    47f8:	2b00      	cmp	r3, #0
    47fa:	d0f8      	beq.n	47ee <frame_sync+0x6>
    47fc:	bf00      	nop
    47fe:	46bd      	mov	sp, r7
    4800:	bc80      	pop	{r7}
    4802:	4770      	bx	lr
    4804:	2000050e 	.word	0x2000050e

00004808 <wait_sync_end>:
    4808:	b480      	push	{r7}
    480a:	af00      	add	r7, sp, #0
    480c:	bf00      	nop
    480e:	4b05      	ldr	r3, [pc, #20]	; (4824 <wait_sync_end+0x1c>)
    4810:	881b      	ldrh	r3, [r3, #0]
    4812:	b29b      	uxth	r3, r3
    4814:	f003 0302 	and.w	r3, r3, #2
    4818:	2b00      	cmp	r3, #0
    481a:	d1f8      	bne.n	480e <wait_sync_end+0x6>
    481c:	bf00      	nop
    481e:	46bd      	mov	sp, r7
    4820:	bc80      	pop	{r7}
    4822:	4770      	bx	lr
    4824:	2000050e 	.word	0x2000050e

00004828 <set_video_mode>:
    4828:	b580      	push	{r7, lr}
    482a:	b082      	sub	sp, #8
    482c:	af00      	add	r7, sp, #0
    482e:	4603      	mov	r3, r0
    4830:	71fb      	strb	r3, [r7, #7]
    4832:	f7ff ffd9 	bl	47e8 <frame_sync>
    4836:	4a37      	ldr	r2, [pc, #220]	; (4914 <set_video_mode+0xec>)
    4838:	79fb      	ldrb	r3, [r7, #7]
    483a:	7013      	strb	r3, [r2, #0]
    483c:	79fa      	ldrb	r2, [r7, #7]
    483e:	4936      	ldr	r1, [pc, #216]	; (4918 <set_video_mode+0xf0>)
    4840:	4613      	mov	r3, r2
    4842:	00db      	lsls	r3, r3, #3
    4844:	4413      	add	r3, r2
    4846:	005b      	lsls	r3, r3, #1
    4848:	440b      	add	r3, r1
    484a:	3302      	adds	r3, #2
    484c:	881a      	ldrh	r2, [r3, #0]
    484e:	4b33      	ldr	r3, [pc, #204]	; (491c <set_video_mode+0xf4>)
    4850:	801a      	strh	r2, [r3, #0]
    4852:	79fa      	ldrb	r2, [r7, #7]
    4854:	4930      	ldr	r1, [pc, #192]	; (4918 <set_video_mode+0xf0>)
    4856:	4613      	mov	r3, r2
    4858:	00db      	lsls	r3, r3, #3
    485a:	4413      	add	r3, r2
    485c:	005b      	lsls	r3, r3, #1
    485e:	440b      	add	r3, r1
    4860:	3304      	adds	r3, #4
    4862:	881a      	ldrh	r2, [r3, #0]
    4864:	4b2e      	ldr	r3, [pc, #184]	; (4920 <set_video_mode+0xf8>)
    4866:	801a      	strh	r2, [r3, #0]
    4868:	79fa      	ldrb	r2, [r7, #7]
    486a:	492b      	ldr	r1, [pc, #172]	; (4918 <set_video_mode+0xf0>)
    486c:	4613      	mov	r3, r2
    486e:	00db      	lsls	r3, r3, #3
    4870:	4413      	add	r3, r2
    4872:	005b      	lsls	r3, r3, #1
    4874:	440b      	add	r3, r1
    4876:	3306      	adds	r3, #6
    4878:	881a      	ldrh	r2, [r3, #0]
    487a:	4b2a      	ldr	r3, [pc, #168]	; (4924 <set_video_mode+0xfc>)
    487c:	801a      	strh	r2, [r3, #0]
    487e:	79fa      	ldrb	r2, [r7, #7]
    4880:	4925      	ldr	r1, [pc, #148]	; (4918 <set_video_mode+0xf0>)
    4882:	4613      	mov	r3, r2
    4884:	00db      	lsls	r3, r3, #3
    4886:	4413      	add	r3, r2
    4888:	005b      	lsls	r3, r3, #1
    488a:	440b      	add	r3, r1
    488c:	3308      	adds	r3, #8
    488e:	781a      	ldrb	r2, [r3, #0]
    4890:	4b25      	ldr	r3, [pc, #148]	; (4928 <set_video_mode+0x100>)
    4892:	701a      	strb	r2, [r3, #0]
    4894:	79fa      	ldrb	r2, [r7, #7]
    4896:	4920      	ldr	r1, [pc, #128]	; (4918 <set_video_mode+0xf0>)
    4898:	4613      	mov	r3, r2
    489a:	00db      	lsls	r3, r3, #3
    489c:	4413      	add	r3, r2
    489e:	005b      	lsls	r3, r3, #1
    48a0:	440b      	add	r3, r1
    48a2:	3309      	adds	r3, #9
    48a4:	781a      	ldrb	r2, [r3, #0]
    48a6:	4b21      	ldr	r3, [pc, #132]	; (492c <set_video_mode+0x104>)
    48a8:	701a      	strb	r2, [r3, #0]
    48aa:	79fa      	ldrb	r2, [r7, #7]
    48ac:	491a      	ldr	r1, [pc, #104]	; (4918 <set_video_mode+0xf0>)
    48ae:	4613      	mov	r3, r2
    48b0:	00db      	lsls	r3, r3, #3
    48b2:	4413      	add	r3, r2
    48b4:	005b      	lsls	r3, r3, #1
    48b6:	440b      	add	r3, r1
    48b8:	330a      	adds	r3, #10
    48ba:	781a      	ldrb	r2, [r3, #0]
    48bc:	4b1c      	ldr	r3, [pc, #112]	; (4930 <set_video_mode+0x108>)
    48be:	701a      	strb	r2, [r3, #0]
    48c0:	79fa      	ldrb	r2, [r7, #7]
    48c2:	4915      	ldr	r1, [pc, #84]	; (4918 <set_video_mode+0xf0>)
    48c4:	4613      	mov	r3, r2
    48c6:	00db      	lsls	r3, r3, #3
    48c8:	4413      	add	r3, r2
    48ca:	005b      	lsls	r3, r3, #1
    48cc:	440b      	add	r3, r1
    48ce:	330c      	adds	r3, #12
    48d0:	881b      	ldrh	r3, [r3, #0]
    48d2:	b2da      	uxtb	r2, r3
    48d4:	4b17      	ldr	r3, [pc, #92]	; (4934 <set_video_mode+0x10c>)
    48d6:	701a      	strb	r2, [r3, #0]
    48d8:	79fa      	ldrb	r2, [r7, #7]
    48da:	490f      	ldr	r1, [pc, #60]	; (4918 <set_video_mode+0xf0>)
    48dc:	4613      	mov	r3, r2
    48de:	00db      	lsls	r3, r3, #3
    48e0:	4413      	add	r3, r2
    48e2:	005b      	lsls	r3, r3, #1
    48e4:	440b      	add	r3, r1
    48e6:	330e      	adds	r3, #14
    48e8:	881b      	ldrh	r3, [r3, #0]
    48ea:	b2da      	uxtb	r2, r3
    48ec:	4b12      	ldr	r3, [pc, #72]	; (4938 <set_video_mode+0x110>)
    48ee:	701a      	strb	r2, [r3, #0]
    48f0:	79fa      	ldrb	r2, [r7, #7]
    48f2:	4909      	ldr	r1, [pc, #36]	; (4918 <set_video_mode+0xf0>)
    48f4:	4613      	mov	r3, r2
    48f6:	00db      	lsls	r3, r3, #3
    48f8:	4413      	add	r3, r2
    48fa:	005b      	lsls	r3, r3, #1
    48fc:	440b      	add	r3, r1
    48fe:	3310      	adds	r3, #16
    4900:	881a      	ldrh	r2, [r3, #0]
    4902:	4b0e      	ldr	r3, [pc, #56]	; (493c <set_video_mode+0x114>)
    4904:	801a      	strh	r2, [r3, #0]
    4906:	f7fd fad3 	bl	1eb0 <gfx_cls>
    490a:	bf00      	nop
    490c:	3708      	adds	r7, #8
    490e:	46bd      	mov	sp, r7
    4910:	bd80      	pop	{r7, pc}
    4912:	bf00      	nop
    4914:	20000518 	.word	0x20000518
    4918:	0000500c 	.word	0x0000500c
    491c:	20000072 	.word	0x20000072
    4920:	20000074 	.word	0x20000074
    4924:	20000076 	.word	0x20000076
    4928:	20000078 	.word	0x20000078
    492c:	20000079 	.word	0x20000079
    4930:	2000007a 	.word	0x2000007a
    4934:	2000007b 	.word	0x2000007b
    4938:	2000007c 	.word	0x2000007c
    493c:	2000007e 	.word	0x2000007e

00004940 <get_video_params>:
    4940:	b480      	push	{r7}
    4942:	af00      	add	r7, sp, #0
    4944:	4b06      	ldr	r3, [pc, #24]	; (4960 <get_video_params+0x20>)
    4946:	781b      	ldrb	r3, [r3, #0]
    4948:	461a      	mov	r2, r3
    494a:	4613      	mov	r3, r2
    494c:	00db      	lsls	r3, r3, #3
    494e:	4413      	add	r3, r2
    4950:	005b      	lsls	r3, r3, #1
    4952:	4a04      	ldr	r2, [pc, #16]	; (4964 <get_video_params+0x24>)
    4954:	4413      	add	r3, r2
    4956:	4618      	mov	r0, r3
    4958:	46bd      	mov	sp, r7
    495a:	bc80      	pop	{r7}
    495c:	4770      	bx	lr
    495e:	bf00      	nop
    4960:	20000518 	.word	0x20000518
    4964:	0000500c 	.word	0x0000500c

00004968 <game_pause>:
    4968:	b480      	push	{r7}
    496a:	b083      	sub	sp, #12
    496c:	af00      	add	r7, sp, #0
    496e:	4603      	mov	r3, r0
    4970:	80fb      	strh	r3, [r7, #6]
    4972:	4a07      	ldr	r2, [pc, #28]	; (4990 <game_pause+0x28>)
    4974:	88fb      	ldrh	r3, [r7, #6]
    4976:	8013      	strh	r3, [r2, #0]
    4978:	bf00      	nop
    497a:	4b05      	ldr	r3, [pc, #20]	; (4990 <game_pause+0x28>)
    497c:	881b      	ldrh	r3, [r3, #0]
    497e:	b29b      	uxth	r3, r3
    4980:	2b00      	cmp	r3, #0
    4982:	d1fa      	bne.n	497a <game_pause+0x12>
    4984:	bf00      	nop
    4986:	370c      	adds	r7, #12
    4988:	46bd      	mov	sp, r7
    498a:	bc80      	pop	{r7}
    498c:	4770      	bx	lr
    498e:	bf00      	nop
    4990:	20004ca8 	.word	0x20004ca8

00004994 <micro_pause>:
    4994:	b480      	push	{r7}
    4996:	b085      	sub	sp, #20
    4998:	af00      	add	r7, sp, #0
    499a:	6078      	str	r0, [r7, #4]
    499c:	4b07      	ldr	r3, [pc, #28]	; (49bc <micro_pause+0x28>)
    499e:	681a      	ldr	r2, [r3, #0]
    49a0:	687b      	ldr	r3, [r7, #4]
    49a2:	4413      	add	r3, r2
    49a4:	60fb      	str	r3, [r7, #12]
    49a6:	bf00      	nop
    49a8:	4b04      	ldr	r3, [pc, #16]	; (49bc <micro_pause+0x28>)
    49aa:	681a      	ldr	r2, [r3, #0]
    49ac:	68fb      	ldr	r3, [r7, #12]
    49ae:	429a      	cmp	r2, r3
    49b0:	d3fa      	bcc.n	49a8 <micro_pause+0x14>
    49b2:	bf00      	nop
    49b4:	3714      	adds	r7, #20
    49b6:	46bd      	mov	sp, r7
    49b8:	bc80      	pop	{r7}
    49ba:	4770      	bx	lr
    49bc:	20000514 	.word	0x20000514
