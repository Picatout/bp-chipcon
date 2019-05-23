
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 69 39 00 00     C...I...O...i9..
      20:	69 39 00 00 69 39 00 00 69 39 00 00 55 02 00 00     i9..i9..i9..U...
      30:	69 39 00 00 69 39 00 00 5b 02 00 00 61 02 00 00     i9..i9..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 29 36 00 00     g...m...y...)6..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 69 39 00 00 69 39 00 00 b5 02 00 00     ....i9..i9......
      80:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..
      90:	69 39 00 00 69 39 00 00 69 39 00 00 bb 02 00 00     i9..i9..i9......
      a0:	69 39 00 00 09 42 00 00 69 39 00 00 ed 40 00 00     i9...B..i9...@..
      b0:	c7 02 00 00 cd 02 00 00 d3 02 00 00 69 39 00 00     ............i9..
      c0:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..
      d0:	69 39 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     i9..............
      e0:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..
      f0:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..
     100:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..
     110:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..
     120:	69 39 00 00 69 39 00 00 69 39 00 00 69 39 00 00     i9..i9..i9..i9..

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
     18e:	f002 fb1a 	bl	27c6 <main>
     192:	bf00      	nop
     194:	3718      	adds	r7, #24
     196:	46bd      	mov	sp, r7
     198:	bd80      	pop	{r7, pc}
     19a:	bf00      	nop
     19c:	2000006a 	.word	0x2000006a
     1a0:	20004c94 	.word	0x20004c94
     1a4:	00004c00 	.word	0x00004c00
     1a8:	20000000 	.word	0x20000000
     1ac:	2000006a 	.word	0x2000006a
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
     1dc:	f003 fbcc 	bl	3978 <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f003 fbc0 	bl	3978 <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f003 fbb4 	bl	3978 <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f003 fbaf 	bl	3978 <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00004b58 	.word	0x00004b58
     230:	00004b70 	.word	0x00004b70
     234:	00004b7c 	.word	0x00004b7c
     238:	00004b8c 	.word	0x00004b8c

0000023c <NMI_handler>:
     23c:	f003 fb94 	bl	3968 <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f003 fb91 	bl	3968 <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f003 fb8e 	bl	3968 <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f003 fb8b 	bl	3968 <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f003 fb88 	bl	3968 <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f003 fb85 	bl	3968 <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f003 fb82 	bl	3968 <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f003 fb7f 	bl	3968 <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f003 fb7c 	bl	3968 <reset_mcu>
     270:	bf00      	nop
     272:	f003 fb79 	bl	3968 <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f003 fb76 	bl	3968 <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f003 fb73 	bl	3968 <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f003 fb70 	bl	3968 <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f003 fb6d 	bl	3968 <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f003 fb6a 	bl	3968 <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f003 fb67 	bl	3968 <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f003 fb64 	bl	3968 <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f003 fb61 	bl	3968 <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f003 fb5e 	bl	3968 <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f003 fb5b 	bl	3968 <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f003 fb58 	bl	3968 <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f003 fb55 	bl	3968 <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f003 fb52 	bl	3968 <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f003 fb4f 	bl	3968 <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f003 fb4c 	bl	3968 <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f003 fb49 	bl	3968 <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f003 fb46 	bl	3968 <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f003 fb43 	bl	3968 <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f003 fb40 	bl	3968 <reset_mcu>
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
     3c8:	f003 fb4e 	bl	3a68 <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f003 fb3b 	bl	3a48 <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f003 fc82 	bl	3cdc <print>
     3d8:	4825      	ldr	r0, [pc, #148]	; (470 <print_vms+0xb0>)
     3da:	f003 fc7f 	bl	3cdc <print>
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <print_vms+0xb4>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f003 fca8 	bl	3d3c <print_int>
     3ec:	4b21      	ldr	r3, [pc, #132]	; (474 <print_vms+0xb4>)
     3ee:	f893 3026 	ldrb.w	r3, [r3, #38]	; 0x26
     3f2:	2110      	movs	r1, #16
     3f4:	4618      	mov	r0, r3
     3f6:	f003 fca1 	bl	3d3c <print_int>
     3fa:	4b1e      	ldr	r3, [pc, #120]	; (474 <print_vms+0xb4>)
     3fc:	f893 3027 	ldrb.w	r3, [r3, #39]	; 0x27
     400:	2110      	movs	r1, #16
     402:	4618      	mov	r0, r3
     404:	f003 fc9a 	bl	3d3c <print_int>
     408:	f003 fb2e 	bl	3a68 <new_line>
     40c:	481a      	ldr	r0, [pc, #104]	; (478 <print_vms+0xb8>)
     40e:	f003 fc65 	bl	3cdc <print>
     412:	4b18      	ldr	r3, [pc, #96]	; (474 <print_vms+0xb4>)
     414:	885b      	ldrh	r3, [r3, #2]
     416:	2110      	movs	r1, #16
     418:	4618      	mov	r0, r3
     41a:	f003 fc8f 	bl	3d3c <print_int>
     41e:	4817      	ldr	r0, [pc, #92]	; (47c <print_vms+0xbc>)
     420:	f003 fc5c 	bl	3cdc <print>
     424:	4b13      	ldr	r3, [pc, #76]	; (474 <print_vms+0xb4>)
     426:	791b      	ldrb	r3, [r3, #4]
     428:	2110      	movs	r1, #16
     42a:	4618      	mov	r0, r3
     42c:	f003 fc86 	bl	3d3c <print_int>
     430:	f003 fb1a 	bl	3a68 <new_line>
     434:	4812      	ldr	r0, [pc, #72]	; (480 <print_vms+0xc0>)
     436:	f003 fc51 	bl	3cdc <print>
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
     44e:	f003 fc75 	bl	3d3c <print_int>
     452:	68fb      	ldr	r3, [r7, #12]
     454:	3301      	adds	r3, #1
     456:	60fb      	str	r3, [r7, #12]
     458:	68fb      	ldr	r3, [r7, #12]
     45a:	2b0f      	cmp	r3, #15
     45c:	ddf0      	ble.n	440 <print_vms+0x80>
     45e:	f003 fb03 	bl	3a68 <new_line>
     462:	f003 fd95 	bl	3f90 <prompt_btn>
     466:	bf00      	nop
     468:	3710      	adds	r7, #16
     46a:	46bd      	mov	sp, r7
     46c:	bd80      	pop	{r7, pc}
     46e:	bf00      	nop
     470:	0000456c 	.word	0x0000456c
     474:	2000006c 	.word	0x2000006c
     478:	00004570 	.word	0x00004570
     47c:	00004574 	.word	0x00004574
     480:	0000457c 	.word	0x0000457c

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
     62a:	f001 fc53 	bl	1ed4 <gfx_scroll_down>
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
     64e:	f001 fc0f 	bl	1e70 <gfx_scroll_up>
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
     6e8:	f003 fc5c 	bl	3fa4 <clear_screen>
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
     80c:	2000006c 	.word	0x2000006c
     810:	20000504 	.word	0x20000504
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
     ac0:	2000006c 	.word	0x2000006c
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
     ada:	f002 fde7 	bl	36ac <key_tone>
     ade:	e0fe      	b.n	cde <schipp+0x79a>
     ae0:	2002      	movs	r0, #2
     ae2:	f002 ffb1 	bl	3a48 <select_font>
     ae6:	7bbb      	ldrb	r3, [r7, #14]
     ae8:	4a99      	ldr	r2, [pc, #612]	; (d50 <schipp+0x80c>)
     aea:	4413      	add	r3, r2
     aec:	7958      	ldrb	r0, [r3, #5]
     aee:	7b7b      	ldrb	r3, [r7, #13]
     af0:	4a97      	ldr	r2, [pc, #604]	; (d50 <schipp+0x80c>)
     af2:	4413      	add	r3, r2
     af4:	795b      	ldrb	r3, [r3, #5]
     af6:	4619      	mov	r1, r3
     af8:	f003 f8c4 	bl	3c84 <set_cursor>
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
     b16:	f003 f829 	bl	3b6c <put_char>
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
     b4e:	f001 f82d 	bl	1bac <gfx_blit>
     b52:	e0c4      	b.n	cde <schipp+0x79a>
     b54:	7bbb      	ldrb	r3, [r7, #14]
     b56:	011a      	lsls	r2, r3, #4
     b58:	7b7b      	ldrb	r3, [r7, #13]
     b5a:	4413      	add	r3, r2
     b5c:	4618      	mov	r0, r3
     b5e:	f002 fdb0 	bl	36c2 <noise>
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
     b7c:	f002 fd96 	bl	36ac <key_tone>
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
     cc2:	f001 f9ad 	bl	2020 <gfx_get_pixel>
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
     d50:	2000006c 	.word	0x2000006c
     d54:	20000504 	.word	0x20000504
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
     dd4:	f001 f952 	bl	207c <gfx_sprite>
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
     dfc:	f000 fb6e 	bl	14dc <btn_query_down>
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
     e1e:	f000 fb5d 	bl	14dc <btn_query_down>
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
     eaa:	f000 fb73 	bl	1594 <btn_wait_any>
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
     eda:	f002 fbc5 	bl	3668 <tone>
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
     f1a:	f002 fd95 	bl	3a48 <select_font>
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
     f42:	f002 fd81 	bl	3a48 <select_font>
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
     fe0:	2000006c 	.word	0x2000006c
     fe4:	200000d4 	.word	0x200000d4
     fe8:	20004c90 	.word	0x20004c90
     fec:	00004584 	.word	0x00004584
     ff0:	000045e4 	.word	0x000045e4
     ff4:	cccccccd 	.word	0xcccccccd
     ff8:	20000071 	.word	0x20000071
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
    106c:	2000006c 	.word	0x2000006c

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
    10c8:	200000f4 	.word	0x200000f4
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
    11c8:	200000f4 	.word	0x200000f4
    11cc:	200000f6 	.word	0x200000f6

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
    1234:	200000f6 	.word	0x200000f6
    1238:	200000f4 	.word	0x200000f4

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
    138c:	200000f4 	.word	0x200000f4

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
    13a4:	200000f4 	.word	0x200000f4

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
    13c8:	200000f4 	.word	0x200000f4
    13cc:	40022000 	.word	0x40022000

000013d0 <gamepad_init>:
    13d0:	b580      	push	{r7, lr}
    13d2:	af00      	add	r7, sp, #0
    13d4:	2202      	movs	r2, #2
    13d6:	210f      	movs	r1, #15
    13d8:	4808      	ldr	r0, [pc, #32]	; (13fc <gamepad_init+0x2c>)
    13da:	f000 fb70 	bl	1abe <config_pin>
    13de:	2202      	movs	r2, #2
    13e0:	210d      	movs	r1, #13
    13e2:	4806      	ldr	r0, [pc, #24]	; (13fc <gamepad_init+0x2c>)
    13e4:	f000 fb6b 	bl	1abe <config_pin>
    13e8:	2208      	movs	r2, #8
    13ea:	210e      	movs	r1, #14
    13ec:	4803      	ldr	r0, [pc, #12]	; (13fc <gamepad_init+0x2c>)
    13ee:	f000 fb66 	bl	1abe <config_pin>
    13f2:	4b03      	ldr	r3, [pc, #12]	; (1400 <gamepad_init+0x30>)
    13f4:	22ff      	movs	r2, #255	; 0xff
    13f6:	701a      	strb	r2, [r3, #0]
    13f8:	bf00      	nop
    13fa:	bd80      	pop	{r7, pc}
    13fc:	40010c00 	.word	0x40010c00
    1400:	20002504 	.word	0x20002504

00001404 <shift_out>:
    1404:	b480      	push	{r7}
    1406:	b085      	sub	sp, #20
    1408:	af00      	add	r7, sp, #0
    140a:	4603      	mov	r3, r0
    140c:	71fb      	strb	r3, [r7, #7]
    140e:	2301      	movs	r3, #1
    1410:	73fb      	strb	r3, [r7, #15]
    1412:	2300      	movs	r3, #0
    1414:	73bb      	strb	r3, [r7, #14]
    1416:	e033      	b.n	1480 <shift_out+0x7c>
    1418:	79fa      	ldrb	r2, [r7, #7]
    141a:	7bfb      	ldrb	r3, [r7, #15]
    141c:	4013      	ands	r3, r2
    141e:	b2db      	uxtb	r3, r3
    1420:	2b00      	cmp	r3, #0
    1422:	d006      	beq.n	1432 <shift_out+0x2e>
    1424:	4a25      	ldr	r2, [pc, #148]	; (14bc <shift_out+0xb8>)
    1426:	4b25      	ldr	r3, [pc, #148]	; (14bc <shift_out+0xb8>)
    1428:	68db      	ldr	r3, [r3, #12]
    142a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    142e:	60d3      	str	r3, [r2, #12]
    1430:	e005      	b.n	143e <shift_out+0x3a>
    1432:	4a22      	ldr	r2, [pc, #136]	; (14bc <shift_out+0xb8>)
    1434:	4b21      	ldr	r3, [pc, #132]	; (14bc <shift_out+0xb8>)
    1436:	68db      	ldr	r3, [r3, #12]
    1438:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    143c:	60d3      	str	r3, [r2, #12]
    143e:	4a1f      	ldr	r2, [pc, #124]	; (14bc <shift_out+0xb8>)
    1440:	4b1e      	ldr	r3, [pc, #120]	; (14bc <shift_out+0xb8>)
    1442:	68db      	ldr	r3, [r3, #12]
    1444:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1448:	60d3      	str	r3, [r2, #12]
    144a:	bf00      	nop
    144c:	bf00      	nop
    144e:	bf00      	nop
    1450:	4a1a      	ldr	r2, [pc, #104]	; (14bc <shift_out+0xb8>)
    1452:	4b1a      	ldr	r3, [pc, #104]	; (14bc <shift_out+0xb8>)
    1454:	68db      	ldr	r3, [r3, #12]
    1456:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    145a:	60d3      	str	r3, [r2, #12]
    145c:	7bbb      	ldrb	r3, [r7, #14]
    145e:	085b      	lsrs	r3, r3, #1
    1460:	73bb      	strb	r3, [r7, #14]
    1462:	4a16      	ldr	r2, [pc, #88]	; (14bc <shift_out+0xb8>)
    1464:	4b15      	ldr	r3, [pc, #84]	; (14bc <shift_out+0xb8>)
    1466:	689b      	ldr	r3, [r3, #8]
    1468:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    146c:	6093      	str	r3, [r2, #8]
    146e:	2b00      	cmp	r3, #0
    1470:	d003      	beq.n	147a <shift_out+0x76>
    1472:	7bbb      	ldrb	r3, [r7, #14]
    1474:	f063 037f 	orn	r3, r3, #127	; 0x7f
    1478:	73bb      	strb	r3, [r7, #14]
    147a:	7bfb      	ldrb	r3, [r7, #15]
    147c:	005b      	lsls	r3, r3, #1
    147e:	73fb      	strb	r3, [r7, #15]
    1480:	7bfb      	ldrb	r3, [r7, #15]
    1482:	2b00      	cmp	r3, #0
    1484:	d1c8      	bne.n	1418 <shift_out+0x14>
    1486:	4a0d      	ldr	r2, [pc, #52]	; (14bc <shift_out+0xb8>)
    1488:	4b0c      	ldr	r3, [pc, #48]	; (14bc <shift_out+0xb8>)
    148a:	68db      	ldr	r3, [r3, #12]
    148c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    1490:	60d3      	str	r3, [r2, #12]
    1492:	4a0a      	ldr	r2, [pc, #40]	; (14bc <shift_out+0xb8>)
    1494:	4b09      	ldr	r3, [pc, #36]	; (14bc <shift_out+0xb8>)
    1496:	68db      	ldr	r3, [r3, #12]
    1498:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    149c:	60d3      	str	r3, [r2, #12]
    149e:	bf00      	nop
    14a0:	bf00      	nop
    14a2:	bf00      	nop
    14a4:	4a05      	ldr	r2, [pc, #20]	; (14bc <shift_out+0xb8>)
    14a6:	4b05      	ldr	r3, [pc, #20]	; (14bc <shift_out+0xb8>)
    14a8:	68db      	ldr	r3, [r3, #12]
    14aa:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    14ae:	60d3      	str	r3, [r2, #12]
    14b0:	7bbb      	ldrb	r3, [r7, #14]
    14b2:	4618      	mov	r0, r3
    14b4:	3714      	adds	r7, #20
    14b6:	46bd      	mov	sp, r7
    14b8:	bc80      	pop	{r7}
    14ba:	4770      	bx	lr
    14bc:	40010c00 	.word	0x40010c00

000014c0 <read_gamepad>:
    14c0:	b580      	push	{r7, lr}
    14c2:	af00      	add	r7, sp, #0
    14c4:	20fe      	movs	r0, #254	; 0xfe
    14c6:	f7ff ff9d 	bl	1404 <shift_out>
    14ca:	4603      	mov	r3, r0
    14cc:	461a      	mov	r2, r3
    14ce:	4b02      	ldr	r3, [pc, #8]	; (14d8 <read_gamepad+0x18>)
    14d0:	701a      	strb	r2, [r3, #0]
    14d2:	bf00      	nop
    14d4:	bd80      	pop	{r7, pc}
    14d6:	bf00      	nop
    14d8:	20002504 	.word	0x20002504

000014dc <btn_query_down>:
    14dc:	b480      	push	{r7}
    14de:	b083      	sub	sp, #12
    14e0:	af00      	add	r7, sp, #0
    14e2:	4603      	mov	r3, r0
    14e4:	71fb      	strb	r3, [r7, #7]
    14e6:	4b08      	ldr	r3, [pc, #32]	; (1508 <btn_query_down+0x2c>)
    14e8:	781b      	ldrb	r3, [r3, #0]
    14ea:	b2da      	uxtb	r2, r3
    14ec:	79fb      	ldrb	r3, [r7, #7]
    14ee:	4013      	ands	r3, r2
    14f0:	b2db      	uxtb	r3, r3
    14f2:	2b00      	cmp	r3, #0
    14f4:	bf0c      	ite	eq
    14f6:	2301      	moveq	r3, #1
    14f8:	2300      	movne	r3, #0
    14fa:	b2db      	uxtb	r3, r3
    14fc:	4618      	mov	r0, r3
    14fe:	370c      	adds	r7, #12
    1500:	46bd      	mov	sp, r7
    1502:	bc80      	pop	{r7}
    1504:	4770      	bx	lr
    1506:	bf00      	nop
    1508:	20002504 	.word	0x20002504

0000150c <btn_wait_down>:
    150c:	b580      	push	{r7, lr}
    150e:	b084      	sub	sp, #16
    1510:	af00      	add	r7, sp, #0
    1512:	4603      	mov	r3, r0
    1514:	71fb      	strb	r3, [r7, #7]
    1516:	2300      	movs	r3, #0
    1518:	60fb      	str	r3, [r7, #12]
    151a:	e00f      	b.n	153c <btn_wait_down+0x30>
    151c:	f002 ffca 	bl	44b4 <frame_sync>
    1520:	4b0a      	ldr	r3, [pc, #40]	; (154c <btn_wait_down+0x40>)
    1522:	781b      	ldrb	r3, [r3, #0]
    1524:	b2da      	uxtb	r2, r3
    1526:	79fb      	ldrb	r3, [r7, #7]
    1528:	4013      	ands	r3, r2
    152a:	b2db      	uxtb	r3, r3
    152c:	2b00      	cmp	r3, #0
    152e:	d103      	bne.n	1538 <btn_wait_down+0x2c>
    1530:	68fb      	ldr	r3, [r7, #12]
    1532:	3301      	adds	r3, #1
    1534:	60fb      	str	r3, [r7, #12]
    1536:	e001      	b.n	153c <btn_wait_down+0x30>
    1538:	2300      	movs	r3, #0
    153a:	60fb      	str	r3, [r7, #12]
    153c:	68fb      	ldr	r3, [r7, #12]
    153e:	2b02      	cmp	r3, #2
    1540:	ddec      	ble.n	151c <btn_wait_down+0x10>
    1542:	bf00      	nop
    1544:	3710      	adds	r7, #16
    1546:	46bd      	mov	sp, r7
    1548:	bd80      	pop	{r7, pc}
    154a:	bf00      	nop
    154c:	20002504 	.word	0x20002504

00001550 <btn_wait_up>:
    1550:	b580      	push	{r7, lr}
    1552:	b084      	sub	sp, #16
    1554:	af00      	add	r7, sp, #0
    1556:	4603      	mov	r3, r0
    1558:	71fb      	strb	r3, [r7, #7]
    155a:	2300      	movs	r3, #0
    155c:	60fb      	str	r3, [r7, #12]
    155e:	e00f      	b.n	1580 <btn_wait_up+0x30>
    1560:	f002 ffa8 	bl	44b4 <frame_sync>
    1564:	4b0a      	ldr	r3, [pc, #40]	; (1590 <btn_wait_up+0x40>)
    1566:	781b      	ldrb	r3, [r3, #0]
    1568:	b2da      	uxtb	r2, r3
    156a:	79fb      	ldrb	r3, [r7, #7]
    156c:	4013      	ands	r3, r2
    156e:	b2db      	uxtb	r3, r3
    1570:	2b00      	cmp	r3, #0
    1572:	d003      	beq.n	157c <btn_wait_up+0x2c>
    1574:	68fb      	ldr	r3, [r7, #12]
    1576:	3301      	adds	r3, #1
    1578:	60fb      	str	r3, [r7, #12]
    157a:	e001      	b.n	1580 <btn_wait_up+0x30>
    157c:	2300      	movs	r3, #0
    157e:	60fb      	str	r3, [r7, #12]
    1580:	68fb      	ldr	r3, [r7, #12]
    1582:	2b02      	cmp	r3, #2
    1584:	ddec      	ble.n	1560 <btn_wait_up+0x10>
    1586:	bf00      	nop
    1588:	3710      	adds	r7, #16
    158a:	46bd      	mov	sp, r7
    158c:	bd80      	pop	{r7, pc}
    158e:	bf00      	nop
    1590:	20002504 	.word	0x20002504

00001594 <btn_wait_any>:
    1594:	b580      	push	{r7, lr}
    1596:	b082      	sub	sp, #8
    1598:	af00      	add	r7, sp, #0
    159a:	4b13      	ldr	r3, [pc, #76]	; (15e8 <btn_wait_any+0x54>)
    159c:	781b      	ldrb	r3, [r3, #0]
    159e:	71fb      	strb	r3, [r7, #7]
    15a0:	2300      	movs	r3, #0
    15a2:	603b      	str	r3, [r7, #0]
    15a4:	e015      	b.n	15d2 <btn_wait_any+0x3e>
    15a6:	f002 ff85 	bl	44b4 <frame_sync>
    15aa:	4b0f      	ldr	r3, [pc, #60]	; (15e8 <btn_wait_any+0x54>)
    15ac:	781b      	ldrb	r3, [r3, #0]
    15ae:	b2db      	uxtb	r3, r3
    15b0:	79fa      	ldrb	r2, [r7, #7]
    15b2:	429a      	cmp	r2, r3
    15b4:	d005      	beq.n	15c2 <btn_wait_any+0x2e>
    15b6:	2300      	movs	r3, #0
    15b8:	603b      	str	r3, [r7, #0]
    15ba:	4b0b      	ldr	r3, [pc, #44]	; (15e8 <btn_wait_any+0x54>)
    15bc:	781b      	ldrb	r3, [r3, #0]
    15be:	71fb      	strb	r3, [r7, #7]
    15c0:	e007      	b.n	15d2 <btn_wait_any+0x3e>
    15c2:	4b09      	ldr	r3, [pc, #36]	; (15e8 <btn_wait_any+0x54>)
    15c4:	781b      	ldrb	r3, [r3, #0]
    15c6:	b2db      	uxtb	r3, r3
    15c8:	2bff      	cmp	r3, #255	; 0xff
    15ca:	d002      	beq.n	15d2 <btn_wait_any+0x3e>
    15cc:	683b      	ldr	r3, [r7, #0]
    15ce:	3301      	adds	r3, #1
    15d0:	603b      	str	r3, [r7, #0]
    15d2:	683b      	ldr	r3, [r7, #0]
    15d4:	2b02      	cmp	r3, #2
    15d6:	dde6      	ble.n	15a6 <btn_wait_any+0x12>
    15d8:	79fb      	ldrb	r3, [r7, #7]
    15da:	43db      	mvns	r3, r3
    15dc:	b2db      	uxtb	r3, r3
    15de:	4618      	mov	r0, r3
    15e0:	3708      	adds	r7, #8
    15e2:	46bd      	mov	sp, r7
    15e4:	bd80      	pop	{r7, pc}
    15e6:	bf00      	nop
    15e8:	20002504 	.word	0x20002504

000015ec <strcmp>:
    15ec:	b480      	push	{r7}
    15ee:	b085      	sub	sp, #20
    15f0:	af00      	add	r7, sp, #0
    15f2:	6078      	str	r0, [r7, #4]
    15f4:	6039      	str	r1, [r7, #0]
    15f6:	2300      	movs	r3, #0
    15f8:	60fb      	str	r3, [r7, #12]
    15fa:	e018      	b.n	162e <strcmp+0x42>
    15fc:	687b      	ldr	r3, [r7, #4]
    15fe:	781a      	ldrb	r2, [r3, #0]
    1600:	683b      	ldr	r3, [r7, #0]
    1602:	781b      	ldrb	r3, [r3, #0]
    1604:	429a      	cmp	r2, r3
    1606:	d203      	bcs.n	1610 <strcmp+0x24>
    1608:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    160c:	60fb      	str	r3, [r7, #12]
    160e:	e016      	b.n	163e <strcmp+0x52>
    1610:	687b      	ldr	r3, [r7, #4]
    1612:	781a      	ldrb	r2, [r3, #0]
    1614:	683b      	ldr	r3, [r7, #0]
    1616:	781b      	ldrb	r3, [r3, #0]
    1618:	429a      	cmp	r2, r3
    161a:	d902      	bls.n	1622 <strcmp+0x36>
    161c:	2301      	movs	r3, #1
    161e:	60fb      	str	r3, [r7, #12]
    1620:	e00d      	b.n	163e <strcmp+0x52>
    1622:	687b      	ldr	r3, [r7, #4]
    1624:	3301      	adds	r3, #1
    1626:	607b      	str	r3, [r7, #4]
    1628:	683b      	ldr	r3, [r7, #0]
    162a:	3301      	adds	r3, #1
    162c:	603b      	str	r3, [r7, #0]
    162e:	687b      	ldr	r3, [r7, #4]
    1630:	781b      	ldrb	r3, [r3, #0]
    1632:	2b00      	cmp	r3, #0
    1634:	d003      	beq.n	163e <strcmp+0x52>
    1636:	683b      	ldr	r3, [r7, #0]
    1638:	781b      	ldrb	r3, [r3, #0]
    163a:	2b00      	cmp	r3, #0
    163c:	d1de      	bne.n	15fc <strcmp+0x10>
    163e:	68fb      	ldr	r3, [r7, #12]
    1640:	2b00      	cmp	r3, #0
    1642:	d115      	bne.n	1670 <strcmp+0x84>
    1644:	687b      	ldr	r3, [r7, #4]
    1646:	781b      	ldrb	r3, [r3, #0]
    1648:	2b00      	cmp	r3, #0
    164a:	d107      	bne.n	165c <strcmp+0x70>
    164c:	683b      	ldr	r3, [r7, #0]
    164e:	781b      	ldrb	r3, [r3, #0]
    1650:	2b00      	cmp	r3, #0
    1652:	d003      	beq.n	165c <strcmp+0x70>
    1654:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1658:	60fb      	str	r3, [r7, #12]
    165a:	e009      	b.n	1670 <strcmp+0x84>
    165c:	687b      	ldr	r3, [r7, #4]
    165e:	781b      	ldrb	r3, [r3, #0]
    1660:	2b00      	cmp	r3, #0
    1662:	d005      	beq.n	1670 <strcmp+0x84>
    1664:	683b      	ldr	r3, [r7, #0]
    1666:	781b      	ldrb	r3, [r3, #0]
    1668:	2b00      	cmp	r3, #0
    166a:	d101      	bne.n	1670 <strcmp+0x84>
    166c:	2301      	movs	r3, #1
    166e:	60fb      	str	r3, [r7, #12]
    1670:	68fb      	ldr	r3, [r7, #12]
    1672:	4618      	mov	r0, r3
    1674:	3714      	adds	r7, #20
    1676:	46bd      	mov	sp, r7
    1678:	bc80      	pop	{r7}
    167a:	4770      	bx	lr

0000167c <alpha>:
    167c:	b480      	push	{r7}
    167e:	b083      	sub	sp, #12
    1680:	af00      	add	r7, sp, #0
    1682:	4603      	mov	r3, r0
    1684:	71fb      	strb	r3, [r7, #7]
    1686:	79fb      	ldrb	r3, [r7, #7]
    1688:	2b60      	cmp	r3, #96	; 0x60
    168a:	d902      	bls.n	1692 <alpha+0x16>
    168c:	79fb      	ldrb	r3, [r7, #7]
    168e:	2b7a      	cmp	r3, #122	; 0x7a
    1690:	d905      	bls.n	169e <alpha+0x22>
    1692:	79fb      	ldrb	r3, [r7, #7]
    1694:	2b40      	cmp	r3, #64	; 0x40
    1696:	d904      	bls.n	16a2 <alpha+0x26>
    1698:	79fb      	ldrb	r3, [r7, #7]
    169a:	2b5a      	cmp	r3, #90	; 0x5a
    169c:	d801      	bhi.n	16a2 <alpha+0x26>
    169e:	2301      	movs	r3, #1
    16a0:	e000      	b.n	16a4 <alpha+0x28>
    16a2:	2300      	movs	r3, #0
    16a4:	4618      	mov	r0, r3
    16a6:	370c      	adds	r7, #12
    16a8:	46bd      	mov	sp, r7
    16aa:	bc80      	pop	{r7}
    16ac:	4770      	bx	lr

000016ae <digit>:
    16ae:	b480      	push	{r7}
    16b0:	b083      	sub	sp, #12
    16b2:	af00      	add	r7, sp, #0
    16b4:	4603      	mov	r3, r0
    16b6:	71fb      	strb	r3, [r7, #7]
    16b8:	79fb      	ldrb	r3, [r7, #7]
    16ba:	2b2f      	cmp	r3, #47	; 0x2f
    16bc:	d904      	bls.n	16c8 <digit+0x1a>
    16be:	79fb      	ldrb	r3, [r7, #7]
    16c0:	2b39      	cmp	r3, #57	; 0x39
    16c2:	d801      	bhi.n	16c8 <digit+0x1a>
    16c4:	2301      	movs	r3, #1
    16c6:	e000      	b.n	16ca <digit+0x1c>
    16c8:	2300      	movs	r3, #0
    16ca:	4618      	mov	r0, r3
    16cc:	370c      	adds	r7, #12
    16ce:	46bd      	mov	sp, r7
    16d0:	bc80      	pop	{r7}
    16d2:	4770      	bx	lr

000016d4 <hexdigit>:
    16d4:	b580      	push	{r7, lr}
    16d6:	b082      	sub	sp, #8
    16d8:	af00      	add	r7, sp, #0
    16da:	4603      	mov	r3, r0
    16dc:	71fb      	strb	r3, [r7, #7]
    16de:	79fb      	ldrb	r3, [r7, #7]
    16e0:	2b60      	cmp	r3, #96	; 0x60
    16e2:	d902      	bls.n	16ea <hexdigit+0x16>
    16e4:	79fb      	ldrb	r3, [r7, #7]
    16e6:	3b20      	subs	r3, #32
    16e8:	71fb      	strb	r3, [r7, #7]
    16ea:	79fb      	ldrb	r3, [r7, #7]
    16ec:	4618      	mov	r0, r3
    16ee:	f7ff ffde 	bl	16ae <digit>
    16f2:	4603      	mov	r3, r0
    16f4:	2b00      	cmp	r3, #0
    16f6:	d105      	bne.n	1704 <hexdigit+0x30>
    16f8:	79fb      	ldrb	r3, [r7, #7]
    16fa:	2b40      	cmp	r3, #64	; 0x40
    16fc:	d904      	bls.n	1708 <hexdigit+0x34>
    16fe:	79fb      	ldrb	r3, [r7, #7]
    1700:	2b46      	cmp	r3, #70	; 0x46
    1702:	d801      	bhi.n	1708 <hexdigit+0x34>
    1704:	2301      	movs	r3, #1
    1706:	e000      	b.n	170a <hexdigit+0x36>
    1708:	2300      	movs	r3, #0
    170a:	4618      	mov	r0, r3
    170c:	3708      	adds	r7, #8
    170e:	46bd      	mov	sp, r7
    1710:	bd80      	pop	{r7, pc}

00001712 <atoi>:
    1712:	b580      	push	{r7, lr}
    1714:	b086      	sub	sp, #24
    1716:	af00      	add	r7, sp, #0
    1718:	6078      	str	r0, [r7, #4]
    171a:	2300      	movs	r3, #0
    171c:	617b      	str	r3, [r7, #20]
    171e:	2301      	movs	r3, #1
    1720:	613b      	str	r3, [r7, #16]
    1722:	230a      	movs	r3, #10
    1724:	60fb      	str	r3, [r7, #12]
    1726:	e002      	b.n	172e <atoi+0x1c>
    1728:	687b      	ldr	r3, [r7, #4]
    172a:	3301      	adds	r3, #1
    172c:	607b      	str	r3, [r7, #4]
    172e:	687b      	ldr	r3, [r7, #4]
    1730:	781b      	ldrb	r3, [r3, #0]
    1732:	2b00      	cmp	r3, #0
    1734:	d003      	beq.n	173e <atoi+0x2c>
    1736:	687b      	ldr	r3, [r7, #4]
    1738:	781b      	ldrb	r3, [r3, #0]
    173a:	2b20      	cmp	r3, #32
    173c:	d0f4      	beq.n	1728 <atoi+0x16>
    173e:	687b      	ldr	r3, [r7, #4]
    1740:	781b      	ldrb	r3, [r3, #0]
    1742:	2b2d      	cmp	r3, #45	; 0x2d
    1744:	d105      	bne.n	1752 <atoi+0x40>
    1746:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    174a:	613b      	str	r3, [r7, #16]
    174c:	687b      	ldr	r3, [r7, #4]
    174e:	3301      	adds	r3, #1
    1750:	607b      	str	r3, [r7, #4]
    1752:	687b      	ldr	r3, [r7, #4]
    1754:	781b      	ldrb	r3, [r3, #0]
    1756:	2b24      	cmp	r3, #36	; 0x24
    1758:	d10e      	bne.n	1778 <atoi+0x66>
    175a:	687b      	ldr	r3, [r7, #4]
    175c:	3301      	adds	r3, #1
    175e:	781b      	ldrb	r3, [r3, #0]
    1760:	4618      	mov	r0, r3
    1762:	f7ff ffb7 	bl	16d4 <hexdigit>
    1766:	4603      	mov	r3, r0
    1768:	2b00      	cmp	r3, #0
    176a:	d005      	beq.n	1778 <atoi+0x66>
    176c:	2310      	movs	r3, #16
    176e:	60fb      	str	r3, [r7, #12]
    1770:	687b      	ldr	r3, [r7, #4]
    1772:	3301      	adds	r3, #1
    1774:	607b      	str	r3, [r7, #4]
    1776:	e012      	b.n	179e <atoi+0x8c>
    1778:	687b      	ldr	r3, [r7, #4]
    177a:	781b      	ldrb	r3, [r3, #0]
    177c:	2b30      	cmp	r3, #48	; 0x30
    177e:	d128      	bne.n	17d2 <atoi+0xc0>
    1780:	687b      	ldr	r3, [r7, #4]
    1782:	3301      	adds	r3, #1
    1784:	781b      	ldrb	r3, [r3, #0]
    1786:	2b78      	cmp	r3, #120	; 0x78
    1788:	d004      	beq.n	1794 <atoi+0x82>
    178a:	687b      	ldr	r3, [r7, #4]
    178c:	3301      	adds	r3, #1
    178e:	781b      	ldrb	r3, [r3, #0]
    1790:	2b58      	cmp	r3, #88	; 0x58
    1792:	d11e      	bne.n	17d2 <atoi+0xc0>
    1794:	2310      	movs	r3, #16
    1796:	60fb      	str	r3, [r7, #12]
    1798:	687b      	ldr	r3, [r7, #4]
    179a:	3302      	adds	r3, #2
    179c:	607b      	str	r3, [r7, #4]
    179e:	e018      	b.n	17d2 <atoi+0xc0>
    17a0:	7afb      	ldrb	r3, [r7, #11]
    17a2:	2b60      	cmp	r3, #96	; 0x60
    17a4:	d902      	bls.n	17ac <atoi+0x9a>
    17a6:	7afb      	ldrb	r3, [r7, #11]
    17a8:	3b20      	subs	r3, #32
    17aa:	72fb      	strb	r3, [r7, #11]
    17ac:	7afb      	ldrb	r3, [r7, #11]
    17ae:	3b30      	subs	r3, #48	; 0x30
    17b0:	72fb      	strb	r3, [r7, #11]
    17b2:	7afb      	ldrb	r3, [r7, #11]
    17b4:	2b09      	cmp	r3, #9
    17b6:	d902      	bls.n	17be <atoi+0xac>
    17b8:	7afb      	ldrb	r3, [r7, #11]
    17ba:	3b07      	subs	r3, #7
    17bc:	72fb      	strb	r3, [r7, #11]
    17be:	697b      	ldr	r3, [r7, #20]
    17c0:	68fa      	ldr	r2, [r7, #12]
    17c2:	fb02 f203 	mul.w	r2, r2, r3
    17c6:	7afb      	ldrb	r3, [r7, #11]
    17c8:	4413      	add	r3, r2
    17ca:	617b      	str	r3, [r7, #20]
    17cc:	687b      	ldr	r3, [r7, #4]
    17ce:	3301      	adds	r3, #1
    17d0:	607b      	str	r3, [r7, #4]
    17d2:	687b      	ldr	r3, [r7, #4]
    17d4:	781b      	ldrb	r3, [r3, #0]
    17d6:	72fb      	strb	r3, [r7, #11]
    17d8:	7afb      	ldrb	r3, [r7, #11]
    17da:	2b00      	cmp	r3, #0
    17dc:	d00d      	beq.n	17fa <atoi+0xe8>
    17de:	68fb      	ldr	r3, [r7, #12]
    17e0:	2b0a      	cmp	r3, #10
    17e2:	d10a      	bne.n	17fa <atoi+0xe8>
    17e4:	7afb      	ldrb	r3, [r7, #11]
    17e6:	4618      	mov	r0, r3
    17e8:	f7ff ff61 	bl	16ae <digit>
    17ec:	4603      	mov	r3, r0
    17ee:	2b00      	cmp	r3, #0
    17f0:	bf14      	ite	ne
    17f2:	2301      	movne	r3, #1
    17f4:	2300      	moveq	r3, #0
    17f6:	b2db      	uxtb	r3, r3
    17f8:	e009      	b.n	180e <atoi+0xfc>
    17fa:	7afb      	ldrb	r3, [r7, #11]
    17fc:	4618      	mov	r0, r3
    17fe:	f7ff ff69 	bl	16d4 <hexdigit>
    1802:	4603      	mov	r3, r0
    1804:	2b00      	cmp	r3, #0
    1806:	bf14      	ite	ne
    1808:	2301      	movne	r3, #1
    180a:	2300      	moveq	r3, #0
    180c:	b2db      	uxtb	r3, r3
    180e:	2b00      	cmp	r3, #0
    1810:	d1c6      	bne.n	17a0 <atoi+0x8e>
    1812:	693b      	ldr	r3, [r7, #16]
    1814:	697a      	ldr	r2, [r7, #20]
    1816:	fb02 f303 	mul.w	r3, r2, r3
    181a:	4618      	mov	r0, r3
    181c:	3718      	adds	r7, #24
    181e:	46bd      	mov	sp, r7
    1820:	bd80      	pop	{r7, pc}

00001822 <move>:
    1822:	b480      	push	{r7}
    1824:	b085      	sub	sp, #20
    1826:	af00      	add	r7, sp, #0
    1828:	60f8      	str	r0, [r7, #12]
    182a:	60b9      	str	r1, [r7, #8]
    182c:	607a      	str	r2, [r7, #4]
    182e:	e00a      	b.n	1846 <move+0x24>
    1830:	68bb      	ldr	r3, [r7, #8]
    1832:	1c5a      	adds	r2, r3, #1
    1834:	60ba      	str	r2, [r7, #8]
    1836:	68fa      	ldr	r2, [r7, #12]
    1838:	1c51      	adds	r1, r2, #1
    183a:	60f9      	str	r1, [r7, #12]
    183c:	7812      	ldrb	r2, [r2, #0]
    183e:	701a      	strb	r2, [r3, #0]
    1840:	687b      	ldr	r3, [r7, #4]
    1842:	3b01      	subs	r3, #1
    1844:	607b      	str	r3, [r7, #4]
    1846:	687b      	ldr	r3, [r7, #4]
    1848:	2b00      	cmp	r3, #0
    184a:	d1f1      	bne.n	1830 <move+0xe>
    184c:	bf00      	nop
    184e:	3714      	adds	r7, #20
    1850:	46bd      	mov	sp, r7
    1852:	bc80      	pop	{r7}
    1854:	4770      	bx	lr

00001856 <strlen>:
    1856:	b480      	push	{r7}
    1858:	b085      	sub	sp, #20
    185a:	af00      	add	r7, sp, #0
    185c:	6078      	str	r0, [r7, #4]
    185e:	2300      	movs	r3, #0
    1860:	60fb      	str	r3, [r7, #12]
    1862:	e002      	b.n	186a <strlen+0x14>
    1864:	68fb      	ldr	r3, [r7, #12]
    1866:	3301      	adds	r3, #1
    1868:	60fb      	str	r3, [r7, #12]
    186a:	68fb      	ldr	r3, [r7, #12]
    186c:	687a      	ldr	r2, [r7, #4]
    186e:	4413      	add	r3, r2
    1870:	781b      	ldrb	r3, [r3, #0]
    1872:	2b00      	cmp	r3, #0
    1874:	d1f6      	bne.n	1864 <strlen+0xe>
    1876:	68fb      	ldr	r3, [r7, #12]
    1878:	4618      	mov	r0, r3
    187a:	3714      	adds	r7, #20
    187c:	46bd      	mov	sp, r7
    187e:	bc80      	pop	{r7}
    1880:	4770      	bx	lr

00001882 <fill>:
    1882:	b480      	push	{r7}
    1884:	b087      	sub	sp, #28
    1886:	af00      	add	r7, sp, #0
    1888:	60f8      	str	r0, [r7, #12]
    188a:	60b9      	str	r1, [r7, #8]
    188c:	4613      	mov	r3, r2
    188e:	71fb      	strb	r3, [r7, #7]
    1890:	2300      	movs	r3, #0
    1892:	617b      	str	r3, [r7, #20]
    1894:	e007      	b.n	18a6 <fill+0x24>
    1896:	68fb      	ldr	r3, [r7, #12]
    1898:	1c5a      	adds	r2, r3, #1
    189a:	60fa      	str	r2, [r7, #12]
    189c:	79fa      	ldrb	r2, [r7, #7]
    189e:	701a      	strb	r2, [r3, #0]
    18a0:	697b      	ldr	r3, [r7, #20]
    18a2:	3301      	adds	r3, #1
    18a4:	617b      	str	r3, [r7, #20]
    18a6:	697a      	ldr	r2, [r7, #20]
    18a8:	68bb      	ldr	r3, [r7, #8]
    18aa:	429a      	cmp	r2, r3
    18ac:	d3f3      	bcc.n	1896 <fill+0x14>
    18ae:	bf00      	nop
    18b0:	371c      	adds	r7, #28
    18b2:	46bd      	mov	sp, r7
    18b4:	bc80      	pop	{r7}
    18b6:	4770      	bx	lr

000018b8 <is_lower>:
    18b8:	b480      	push	{r7}
    18ba:	b083      	sub	sp, #12
    18bc:	af00      	add	r7, sp, #0
    18be:	4603      	mov	r3, r0
    18c0:	71fb      	strb	r3, [r7, #7]
    18c2:	79fb      	ldrb	r3, [r7, #7]
    18c4:	2b60      	cmp	r3, #96	; 0x60
    18c6:	d904      	bls.n	18d2 <is_lower+0x1a>
    18c8:	79fb      	ldrb	r3, [r7, #7]
    18ca:	2b7a      	cmp	r3, #122	; 0x7a
    18cc:	d801      	bhi.n	18d2 <is_lower+0x1a>
    18ce:	2301      	movs	r3, #1
    18d0:	e000      	b.n	18d4 <is_lower+0x1c>
    18d2:	2300      	movs	r3, #0
    18d4:	4618      	mov	r0, r3
    18d6:	370c      	adds	r7, #12
    18d8:	46bd      	mov	sp, r7
    18da:	bc80      	pop	{r7}
    18dc:	4770      	bx	lr

000018de <is_upper>:
    18de:	b480      	push	{r7}
    18e0:	b083      	sub	sp, #12
    18e2:	af00      	add	r7, sp, #0
    18e4:	4603      	mov	r3, r0
    18e6:	71fb      	strb	r3, [r7, #7]
    18e8:	79fb      	ldrb	r3, [r7, #7]
    18ea:	2b40      	cmp	r3, #64	; 0x40
    18ec:	d904      	bls.n	18f8 <is_upper+0x1a>
    18ee:	79fb      	ldrb	r3, [r7, #7]
    18f0:	2b5a      	cmp	r3, #90	; 0x5a
    18f2:	d801      	bhi.n	18f8 <is_upper+0x1a>
    18f4:	2301      	movs	r3, #1
    18f6:	e000      	b.n	18fa <is_upper+0x1c>
    18f8:	2300      	movs	r3, #0
    18fa:	4618      	mov	r0, r3
    18fc:	370c      	adds	r7, #12
    18fe:	46bd      	mov	sp, r7
    1900:	bc80      	pop	{r7}
    1902:	4770      	bx	lr

00001904 <uppercase>:
    1904:	b580      	push	{r7, lr}
    1906:	b082      	sub	sp, #8
    1908:	af00      	add	r7, sp, #0
    190a:	6078      	str	r0, [r7, #4]
    190c:	e010      	b.n	1930 <uppercase+0x2c>
    190e:	687b      	ldr	r3, [r7, #4]
    1910:	781b      	ldrb	r3, [r3, #0]
    1912:	4618      	mov	r0, r3
    1914:	f7ff ffd0 	bl	18b8 <is_lower>
    1918:	4603      	mov	r3, r0
    191a:	2b00      	cmp	r3, #0
    191c:	d005      	beq.n	192a <uppercase+0x26>
    191e:	687b      	ldr	r3, [r7, #4]
    1920:	781b      	ldrb	r3, [r3, #0]
    1922:	3b20      	subs	r3, #32
    1924:	b2da      	uxtb	r2, r3
    1926:	687b      	ldr	r3, [r7, #4]
    1928:	701a      	strb	r2, [r3, #0]
    192a:	687b      	ldr	r3, [r7, #4]
    192c:	3301      	adds	r3, #1
    192e:	607b      	str	r3, [r7, #4]
    1930:	687b      	ldr	r3, [r7, #4]
    1932:	781b      	ldrb	r3, [r3, #0]
    1934:	2b00      	cmp	r3, #0
    1936:	d1ea      	bne.n	190e <uppercase+0xa>
    1938:	bf00      	nop
    193a:	3708      	adds	r7, #8
    193c:	46bd      	mov	sp, r7
    193e:	bd80      	pop	{r7, pc}

00001940 <scan>:
    1940:	b480      	push	{r7}
    1942:	b085      	sub	sp, #20
    1944:	af00      	add	r7, sp, #0
    1946:	60f8      	str	r0, [r7, #12]
    1948:	60b9      	str	r1, [r7, #8]
    194a:	4613      	mov	r3, r2
    194c:	71fb      	strb	r3, [r7, #7]
    194e:	e002      	b.n	1956 <scan+0x16>
    1950:	68bb      	ldr	r3, [r7, #8]
    1952:	3301      	adds	r3, #1
    1954:	60bb      	str	r3, [r7, #8]
    1956:	68bb      	ldr	r3, [r7, #8]
    1958:	68fa      	ldr	r2, [r7, #12]
    195a:	4413      	add	r3, r2
    195c:	781b      	ldrb	r3, [r3, #0]
    195e:	2b00      	cmp	r3, #0
    1960:	d006      	beq.n	1970 <scan+0x30>
    1962:	68bb      	ldr	r3, [r7, #8]
    1964:	68fa      	ldr	r2, [r7, #12]
    1966:	4413      	add	r3, r2
    1968:	781b      	ldrb	r3, [r3, #0]
    196a:	79fa      	ldrb	r2, [r7, #7]
    196c:	429a      	cmp	r2, r3
    196e:	d1ef      	bne.n	1950 <scan+0x10>
    1970:	68bb      	ldr	r3, [r7, #8]
    1972:	4618      	mov	r0, r3
    1974:	3714      	adds	r7, #20
    1976:	46bd      	mov	sp, r7
    1978:	bc80      	pop	{r7}
    197a:	4770      	bx	lr

0000197c <skip>:
    197c:	b480      	push	{r7}
    197e:	b085      	sub	sp, #20
    1980:	af00      	add	r7, sp, #0
    1982:	60f8      	str	r0, [r7, #12]
    1984:	60b9      	str	r1, [r7, #8]
    1986:	4613      	mov	r3, r2
    1988:	71fb      	strb	r3, [r7, #7]
    198a:	e002      	b.n	1992 <skip+0x16>
    198c:	68bb      	ldr	r3, [r7, #8]
    198e:	3301      	adds	r3, #1
    1990:	60bb      	str	r3, [r7, #8]
    1992:	68bb      	ldr	r3, [r7, #8]
    1994:	68fa      	ldr	r2, [r7, #12]
    1996:	4413      	add	r3, r2
    1998:	781b      	ldrb	r3, [r3, #0]
    199a:	2b00      	cmp	r3, #0
    199c:	d006      	beq.n	19ac <skip+0x30>
    199e:	68bb      	ldr	r3, [r7, #8]
    19a0:	68fa      	ldr	r2, [r7, #12]
    19a2:	4413      	add	r3, r2
    19a4:	781b      	ldrb	r3, [r3, #0]
    19a6:	79fa      	ldrb	r2, [r7, #7]
    19a8:	429a      	cmp	r2, r3
    19aa:	d0ef      	beq.n	198c <skip+0x10>
    19ac:	68bb      	ldr	r3, [r7, #8]
    19ae:	4618      	mov	r0, r3
    19b0:	3714      	adds	r7, #20
    19b2:	46bd      	mov	sp, r7
    19b4:	bc80      	pop	{r7}
    19b6:	4770      	bx	lr

000019b8 <itoa>:
    19b8:	b480      	push	{r7}
    19ba:	b087      	sub	sp, #28
    19bc:	af00      	add	r7, sp, #0
    19be:	60f8      	str	r0, [r7, #12]
    19c0:	60b9      	str	r1, [r7, #8]
    19c2:	607a      	str	r2, [r7, #4]
    19c4:	603b      	str	r3, [r7, #0]
    19c6:	2300      	movs	r3, #0
    19c8:	617b      	str	r3, [r7, #20]
    19ca:	683b      	ldr	r3, [r7, #0]
    19cc:	1e5a      	subs	r2, r3, #1
    19ce:	603a      	str	r2, [r7, #0]
    19d0:	461a      	mov	r2, r3
    19d2:	68bb      	ldr	r3, [r7, #8]
    19d4:	4413      	add	r3, r2
    19d6:	2200      	movs	r2, #0
    19d8:	701a      	strb	r2, [r3, #0]
    19da:	68fb      	ldr	r3, [r7, #12]
    19dc:	2b00      	cmp	r3, #0
    19de:	da24      	bge.n	1a2a <itoa+0x72>
    19e0:	68fb      	ldr	r3, [r7, #12]
    19e2:	425b      	negs	r3, r3
    19e4:	60fb      	str	r3, [r7, #12]
    19e6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    19ea:	617b      	str	r3, [r7, #20]
    19ec:	e01d      	b.n	1a2a <itoa+0x72>
    19ee:	68fb      	ldr	r3, [r7, #12]
    19f0:	687a      	ldr	r2, [r7, #4]
    19f2:	fb93 f2f2 	sdiv	r2, r3, r2
    19f6:	6879      	ldr	r1, [r7, #4]
    19f8:	fb01 f202 	mul.w	r2, r1, r2
    19fc:	1a9b      	subs	r3, r3, r2
    19fe:	b2db      	uxtb	r3, r3
    1a00:	3330      	adds	r3, #48	; 0x30
    1a02:	74fb      	strb	r3, [r7, #19]
    1a04:	7cfb      	ldrb	r3, [r7, #19]
    1a06:	2b39      	cmp	r3, #57	; 0x39
    1a08:	d902      	bls.n	1a10 <itoa+0x58>
    1a0a:	7cfb      	ldrb	r3, [r7, #19]
    1a0c:	3307      	adds	r3, #7
    1a0e:	74fb      	strb	r3, [r7, #19]
    1a10:	683b      	ldr	r3, [r7, #0]
    1a12:	1e5a      	subs	r2, r3, #1
    1a14:	603a      	str	r2, [r7, #0]
    1a16:	461a      	mov	r2, r3
    1a18:	68bb      	ldr	r3, [r7, #8]
    1a1a:	4413      	add	r3, r2
    1a1c:	7cfa      	ldrb	r2, [r7, #19]
    1a1e:	701a      	strb	r2, [r3, #0]
    1a20:	68fa      	ldr	r2, [r7, #12]
    1a22:	687b      	ldr	r3, [r7, #4]
    1a24:	fb92 f3f3 	sdiv	r3, r2, r3
    1a28:	60fb      	str	r3, [r7, #12]
    1a2a:	68fb      	ldr	r3, [r7, #12]
    1a2c:	2b00      	cmp	r3, #0
    1a2e:	d00b      	beq.n	1a48 <itoa+0x90>
    1a30:	683b      	ldr	r3, [r7, #0]
    1a32:	2b00      	cmp	r3, #0
    1a34:	dadb      	bge.n	19ee <itoa+0x36>
    1a36:	e007      	b.n	1a48 <itoa+0x90>
    1a38:	683b      	ldr	r3, [r7, #0]
    1a3a:	1e5a      	subs	r2, r3, #1
    1a3c:	603a      	str	r2, [r7, #0]
    1a3e:	461a      	mov	r2, r3
    1a40:	68bb      	ldr	r3, [r7, #8]
    1a42:	4413      	add	r3, r2
    1a44:	2230      	movs	r2, #48	; 0x30
    1a46:	701a      	strb	r2, [r3, #0]
    1a48:	683b      	ldr	r3, [r7, #0]
    1a4a:	2b00      	cmp	r3, #0
    1a4c:	dcf4      	bgt.n	1a38 <itoa+0x80>
    1a4e:	697b      	ldr	r3, [r7, #20]
    1a50:	2b00      	cmp	r3, #0
    1a52:	d006      	beq.n	1a62 <itoa+0xaa>
    1a54:	683b      	ldr	r3, [r7, #0]
    1a56:	2b00      	cmp	r3, #0
    1a58:	d103      	bne.n	1a62 <itoa+0xaa>
    1a5a:	68bb      	ldr	r3, [r7, #8]
    1a5c:	222d      	movs	r2, #45	; 0x2d
    1a5e:	701a      	strb	r2, [r3, #0]
    1a60:	e005      	b.n	1a6e <itoa+0xb6>
    1a62:	683b      	ldr	r3, [r7, #0]
    1a64:	2b00      	cmp	r3, #0
    1a66:	d102      	bne.n	1a6e <itoa+0xb6>
    1a68:	68bb      	ldr	r3, [r7, #8]
    1a6a:	2230      	movs	r2, #48	; 0x30
    1a6c:	701a      	strb	r2, [r3, #0]
    1a6e:	68bb      	ldr	r3, [r7, #8]
    1a70:	4618      	mov	r0, r3
    1a72:	371c      	adds	r7, #28
    1a74:	46bd      	mov	sp, r7
    1a76:	bc80      	pop	{r7}
    1a78:	4770      	bx	lr

00001a7a <strcat>:
    1a7a:	b580      	push	{r7, lr}
    1a7c:	b082      	sub	sp, #8
    1a7e:	af00      	add	r7, sp, #0
    1a80:	6078      	str	r0, [r7, #4]
    1a82:	6039      	str	r1, [r7, #0]
    1a84:	6878      	ldr	r0, [r7, #4]
    1a86:	f7ff fee6 	bl	1856 <strlen>
    1a8a:	4603      	mov	r3, r0
    1a8c:	461a      	mov	r2, r3
    1a8e:	687b      	ldr	r3, [r7, #4]
    1a90:	4413      	add	r3, r2
    1a92:	607b      	str	r3, [r7, #4]
    1a94:	e007      	b.n	1aa6 <strcat+0x2c>
    1a96:	687b      	ldr	r3, [r7, #4]
    1a98:	1c5a      	adds	r2, r3, #1
    1a9a:	607a      	str	r2, [r7, #4]
    1a9c:	683a      	ldr	r2, [r7, #0]
    1a9e:	1c51      	adds	r1, r2, #1
    1aa0:	6039      	str	r1, [r7, #0]
    1aa2:	7812      	ldrb	r2, [r2, #0]
    1aa4:	701a      	strb	r2, [r3, #0]
    1aa6:	683b      	ldr	r3, [r7, #0]
    1aa8:	781b      	ldrb	r3, [r3, #0]
    1aaa:	2b00      	cmp	r3, #0
    1aac:	d1f3      	bne.n	1a96 <strcat+0x1c>
    1aae:	687b      	ldr	r3, [r7, #4]
    1ab0:	2200      	movs	r2, #0
    1ab2:	701a      	strb	r2, [r3, #0]
    1ab4:	687b      	ldr	r3, [r7, #4]
    1ab6:	4618      	mov	r0, r3
    1ab8:	3708      	adds	r7, #8
    1aba:	46bd      	mov	sp, r7
    1abc:	bd80      	pop	{r7, pc}

00001abe <config_pin>:
    1abe:	b480      	push	{r7}
    1ac0:	b087      	sub	sp, #28
    1ac2:	af00      	add	r7, sp, #0
    1ac4:	60f8      	str	r0, [r7, #12]
    1ac6:	60b9      	str	r1, [r7, #8]
    1ac8:	607a      	str	r2, [r7, #4]
    1aca:	68bb      	ldr	r3, [r7, #8]
    1acc:	b2db      	uxtb	r3, r3
    1ace:	009b      	lsls	r3, r3, #2
    1ad0:	b2db      	uxtb	r3, r3
    1ad2:	f003 031c 	and.w	r3, r3, #28
    1ad6:	75fb      	strb	r3, [r7, #23]
    1ad8:	68bb      	ldr	r3, [r7, #8]
    1ada:	08da      	lsrs	r2, r3, #3
    1adc:	68bb      	ldr	r3, [r7, #8]
    1ade:	08d9      	lsrs	r1, r3, #3
    1ae0:	68fb      	ldr	r3, [r7, #12]
    1ae2:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1ae6:	7df9      	ldrb	r1, [r7, #23]
    1ae8:	200f      	movs	r0, #15
    1aea:	fa00 f101 	lsl.w	r1, r0, r1
    1aee:	43c9      	mvns	r1, r1
    1af0:	4019      	ands	r1, r3
    1af2:	68fb      	ldr	r3, [r7, #12]
    1af4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1af8:	68bb      	ldr	r3, [r7, #8]
    1afa:	08da      	lsrs	r2, r3, #3
    1afc:	68bb      	ldr	r3, [r7, #8]
    1afe:	08d9      	lsrs	r1, r3, #3
    1b00:	68fb      	ldr	r3, [r7, #12]
    1b02:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1b06:	7dfb      	ldrb	r3, [r7, #23]
    1b08:	6878      	ldr	r0, [r7, #4]
    1b0a:	fa00 f303 	lsl.w	r3, r0, r3
    1b0e:	4319      	orrs	r1, r3
    1b10:	68fb      	ldr	r3, [r7, #12]
    1b12:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1b16:	bf00      	nop
    1b18:	371c      	adds	r7, #28
    1b1a:	46bd      	mov	sp, r7
    1b1c:	bc80      	pop	{r7}
    1b1e:	4770      	bx	lr

00001b20 <read_pin>:
    1b20:	b480      	push	{r7}
    1b22:	b083      	sub	sp, #12
    1b24:	af00      	add	r7, sp, #0
    1b26:	6078      	str	r0, [r7, #4]
    1b28:	6039      	str	r1, [r7, #0]
    1b2a:	687b      	ldr	r3, [r7, #4]
    1b2c:	689b      	ldr	r3, [r3, #8]
    1b2e:	2101      	movs	r1, #1
    1b30:	683a      	ldr	r2, [r7, #0]
    1b32:	fa01 f202 	lsl.w	r2, r1, r2
    1b36:	4013      	ands	r3, r2
    1b38:	4618      	mov	r0, r3
    1b3a:	370c      	adds	r7, #12
    1b3c:	46bd      	mov	sp, r7
    1b3e:	bc80      	pop	{r7}
    1b40:	4770      	bx	lr

00001b42 <write_pin>:
    1b42:	b480      	push	{r7}
    1b44:	b085      	sub	sp, #20
    1b46:	af00      	add	r7, sp, #0
    1b48:	60f8      	str	r0, [r7, #12]
    1b4a:	60b9      	str	r1, [r7, #8]
    1b4c:	607a      	str	r2, [r7, #4]
    1b4e:	687b      	ldr	r3, [r7, #4]
    1b50:	2b00      	cmp	r3, #0
    1b52:	d009      	beq.n	1b68 <write_pin+0x26>
    1b54:	68fb      	ldr	r3, [r7, #12]
    1b56:	68db      	ldr	r3, [r3, #12]
    1b58:	2101      	movs	r1, #1
    1b5a:	68ba      	ldr	r2, [r7, #8]
    1b5c:	fa01 f202 	lsl.w	r2, r1, r2
    1b60:	431a      	orrs	r2, r3
    1b62:	68fb      	ldr	r3, [r7, #12]
    1b64:	60da      	str	r2, [r3, #12]
    1b66:	e009      	b.n	1b7c <write_pin+0x3a>
    1b68:	68fb      	ldr	r3, [r7, #12]
    1b6a:	68db      	ldr	r3, [r3, #12]
    1b6c:	2101      	movs	r1, #1
    1b6e:	68ba      	ldr	r2, [r7, #8]
    1b70:	fa01 f202 	lsl.w	r2, r1, r2
    1b74:	43d2      	mvns	r2, r2
    1b76:	401a      	ands	r2, r3
    1b78:	68fb      	ldr	r3, [r7, #12]
    1b7a:	60da      	str	r2, [r3, #12]
    1b7c:	bf00      	nop
    1b7e:	3714      	adds	r7, #20
    1b80:	46bd      	mov	sp, r7
    1b82:	bc80      	pop	{r7}
    1b84:	4770      	bx	lr

00001b86 <toggle_pin>:
    1b86:	b480      	push	{r7}
    1b88:	b083      	sub	sp, #12
    1b8a:	af00      	add	r7, sp, #0
    1b8c:	6078      	str	r0, [r7, #4]
    1b8e:	6039      	str	r1, [r7, #0]
    1b90:	687b      	ldr	r3, [r7, #4]
    1b92:	68db      	ldr	r3, [r3, #12]
    1b94:	2101      	movs	r1, #1
    1b96:	683a      	ldr	r2, [r7, #0]
    1b98:	fa01 f202 	lsl.w	r2, r1, r2
    1b9c:	405a      	eors	r2, r3
    1b9e:	687b      	ldr	r3, [r7, #4]
    1ba0:	60da      	str	r2, [r3, #12]
    1ba2:	bf00      	nop
    1ba4:	370c      	adds	r7, #12
    1ba6:	46bd      	mov	sp, r7
    1ba8:	bc80      	pop	{r7}
    1baa:	4770      	bx	lr

00001bac <gfx_blit>:
    1bac:	b5f0      	push	{r4, r5, r6, r7, lr}
    1bae:	b087      	sub	sp, #28
    1bb0:	af00      	add	r7, sp, #0
    1bb2:	60f8      	str	r0, [r7, #12]
    1bb4:	60b9      	str	r1, [r7, #8]
    1bb6:	4611      	mov	r1, r2
    1bb8:	461a      	mov	r2, r3
    1bba:	460b      	mov	r3, r1
    1bbc:	71fb      	strb	r3, [r7, #7]
    1bbe:	4613      	mov	r3, r2
    1bc0:	71bb      	strb	r3, [r7, #6]
    1bc2:	f002 fca9 	bl	4518 <get_video_params>
    1bc6:	6178      	str	r0, [r7, #20]
    1bc8:	68fb      	ldr	r3, [r7, #12]
    1bca:	2b00      	cmp	r3, #0
    1bcc:	db0e      	blt.n	1bec <gfx_blit+0x40>
    1bce:	697b      	ldr	r3, [r7, #20]
    1bd0:	899b      	ldrh	r3, [r3, #12]
    1bd2:	461a      	mov	r2, r3
    1bd4:	68fb      	ldr	r3, [r7, #12]
    1bd6:	429a      	cmp	r2, r3
    1bd8:	dd08      	ble.n	1bec <gfx_blit+0x40>
    1bda:	68bb      	ldr	r3, [r7, #8]
    1bdc:	2b00      	cmp	r3, #0
    1bde:	db05      	blt.n	1bec <gfx_blit+0x40>
    1be0:	697b      	ldr	r3, [r7, #20]
    1be2:	89db      	ldrh	r3, [r3, #14]
    1be4:	461a      	mov	r2, r3
    1be6:	68bb      	ldr	r3, [r7, #8]
    1be8:	429a      	cmp	r2, r3
    1bea:	dc01      	bgt.n	1bf0 <gfx_blit+0x44>
    1bec:	2300      	movs	r3, #0
    1bee:	e04f      	b.n	1c90 <gfx_blit+0xe4>
    1bf0:	697b      	ldr	r3, [r7, #20]
    1bf2:	7a1b      	ldrb	r3, [r3, #8]
    1bf4:	461a      	mov	r2, r3
    1bf6:	68bb      	ldr	r3, [r7, #8]
    1bf8:	fb03 f202 	mul.w	r2, r3, r2
    1bfc:	68fb      	ldr	r3, [r7, #12]
    1bfe:	0fd9      	lsrs	r1, r3, #31
    1c00:	440b      	add	r3, r1
    1c02:	105b      	asrs	r3, r3, #1
    1c04:	18d6      	adds	r6, r2, r3
    1c06:	79fb      	ldrb	r3, [r7, #7]
    1c08:	f003 030f 	and.w	r3, r3, #15
    1c0c:	71fb      	strb	r3, [r7, #7]
    1c0e:	25f0      	movs	r5, #240	; 0xf0
    1c10:	68fb      	ldr	r3, [r7, #12]
    1c12:	f003 0301 	and.w	r3, r3, #1
    1c16:	2b00      	cmp	r3, #0
    1c18:	d103      	bne.n	1c22 <gfx_blit+0x76>
    1c1a:	79fb      	ldrb	r3, [r7, #7]
    1c1c:	011b      	lsls	r3, r3, #4
    1c1e:	71fb      	strb	r3, [r7, #7]
    1c20:	250f      	movs	r5, #15
    1c22:	4b1d      	ldr	r3, [pc, #116]	; (1c98 <gfx_blit+0xec>)
    1c24:	5d9c      	ldrb	r4, [r3, r6]
    1c26:	79bb      	ldrb	r3, [r7, #6]
    1c28:	2b04      	cmp	r3, #4
    1c2a:	d828      	bhi.n	1c7e <gfx_blit+0xd2>
    1c2c:	a201      	add	r2, pc, #4	; (adr r2, 1c34 <gfx_blit+0x88>)
    1c2e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1c32:	bf00      	nop
    1c34:	00001c49 	.word	0x00001c49
    1c38:	00001c51 	.word	0x00001c51
    1c3c:	00001c59 	.word	0x00001c59
    1c40:	00001c61 	.word	0x00001c61
    1c44:	00001c71 	.word	0x00001c71
    1c48:	79fb      	ldrb	r3, [r7, #7]
    1c4a:	4323      	orrs	r3, r4
    1c4c:	b2dc      	uxtb	r4, r3
    1c4e:	e016      	b.n	1c7e <gfx_blit+0xd2>
    1c50:	79fb      	ldrb	r3, [r7, #7]
    1c52:	4023      	ands	r3, r4
    1c54:	b2dc      	uxtb	r4, r3
    1c56:	e012      	b.n	1c7e <gfx_blit+0xd2>
    1c58:	79fb      	ldrb	r3, [r7, #7]
    1c5a:	4063      	eors	r3, r4
    1c5c:	b2dc      	uxtb	r4, r3
    1c5e:	e00e      	b.n	1c7e <gfx_blit+0xd2>
    1c60:	b26b      	sxtb	r3, r5
    1c62:	43db      	mvns	r3, r3
    1c64:	b25a      	sxtb	r2, r3
    1c66:	b263      	sxtb	r3, r4
    1c68:	4053      	eors	r3, r2
    1c6a:	b25b      	sxtb	r3, r3
    1c6c:	b2dc      	uxtb	r4, r3
    1c6e:	e006      	b.n	1c7e <gfx_blit+0xd2>
    1c70:	ea04 0305 	and.w	r3, r4, r5
    1c74:	b2dc      	uxtb	r4, r3
    1c76:	79fb      	ldrb	r3, [r7, #7]
    1c78:	4323      	orrs	r3, r4
    1c7a:	b2dc      	uxtb	r4, r3
    1c7c:	bf00      	nop
    1c7e:	4b06      	ldr	r3, [pc, #24]	; (1c98 <gfx_blit+0xec>)
    1c80:	4622      	mov	r2, r4
    1c82:	559a      	strb	r2, [r3, r6]
    1c84:	ea04 0305 	and.w	r3, r4, r5
    1c88:	b2da      	uxtb	r2, r3
    1c8a:	79fb      	ldrb	r3, [r7, #7]
    1c8c:	4053      	eors	r3, r2
    1c8e:	b2db      	uxtb	r3, r3
    1c90:	4618      	mov	r0, r3
    1c92:	371c      	adds	r7, #28
    1c94:	46bd      	mov	sp, r7
    1c96:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1c98:	20002530 	.word	0x20002530

00001c9c <gfx_plot>:
    1c9c:	b5b0      	push	{r4, r5, r7, lr}
    1c9e:	b086      	sub	sp, #24
    1ca0:	af00      	add	r7, sp, #0
    1ca2:	60f8      	str	r0, [r7, #12]
    1ca4:	60b9      	str	r1, [r7, #8]
    1ca6:	4613      	mov	r3, r2
    1ca8:	71fb      	strb	r3, [r7, #7]
    1caa:	f002 fc35 	bl	4518 <get_video_params>
    1cae:	6178      	str	r0, [r7, #20]
    1cb0:	68fb      	ldr	r3, [r7, #12]
    1cb2:	2b00      	cmp	r3, #0
    1cb4:	db39      	blt.n	1d2a <gfx_plot+0x8e>
    1cb6:	697b      	ldr	r3, [r7, #20]
    1cb8:	899b      	ldrh	r3, [r3, #12]
    1cba:	461a      	mov	r2, r3
    1cbc:	68fb      	ldr	r3, [r7, #12]
    1cbe:	429a      	cmp	r2, r3
    1cc0:	dd33      	ble.n	1d2a <gfx_plot+0x8e>
    1cc2:	68bb      	ldr	r3, [r7, #8]
    1cc4:	2b00      	cmp	r3, #0
    1cc6:	db30      	blt.n	1d2a <gfx_plot+0x8e>
    1cc8:	697b      	ldr	r3, [r7, #20]
    1cca:	89db      	ldrh	r3, [r3, #14]
    1ccc:	461a      	mov	r2, r3
    1cce:	68bb      	ldr	r3, [r7, #8]
    1cd0:	429a      	cmp	r2, r3
    1cd2:	dd2a      	ble.n	1d2a <gfx_plot+0x8e>
    1cd4:	697b      	ldr	r3, [r7, #20]
    1cd6:	7a1b      	ldrb	r3, [r3, #8]
    1cd8:	461a      	mov	r2, r3
    1cda:	68bb      	ldr	r3, [r7, #8]
    1cdc:	fb03 f202 	mul.w	r2, r3, r2
    1ce0:	68fb      	ldr	r3, [r7, #12]
    1ce2:	0fd9      	lsrs	r1, r3, #31
    1ce4:	440b      	add	r3, r1
    1ce6:	105b      	asrs	r3, r3, #1
    1ce8:	18d5      	adds	r5, r2, r3
    1cea:	79fb      	ldrb	r3, [r7, #7]
    1cec:	f003 030f 	and.w	r3, r3, #15
    1cf0:	71fb      	strb	r3, [r7, #7]
    1cf2:	4b10      	ldr	r3, [pc, #64]	; (1d34 <gfx_plot+0x98>)
    1cf4:	5d5c      	ldrb	r4, [r3, r5]
    1cf6:	68fb      	ldr	r3, [r7, #12]
    1cf8:	f003 0301 	and.w	r3, r3, #1
    1cfc:	2b00      	cmp	r3, #0
    1cfe:	d006      	beq.n	1d0e <gfx_plot+0x72>
    1d00:	f024 030f 	bic.w	r3, r4, #15
    1d04:	b2dc      	uxtb	r4, r3
    1d06:	79fb      	ldrb	r3, [r7, #7]
    1d08:	4323      	orrs	r3, r4
    1d0a:	b2dc      	uxtb	r4, r3
    1d0c:	e009      	b.n	1d22 <gfx_plot+0x86>
    1d0e:	f004 030f 	and.w	r3, r4, #15
    1d12:	b2dc      	uxtb	r4, r3
    1d14:	79fb      	ldrb	r3, [r7, #7]
    1d16:	011b      	lsls	r3, r3, #4
    1d18:	b25a      	sxtb	r2, r3
    1d1a:	b263      	sxtb	r3, r4
    1d1c:	4313      	orrs	r3, r2
    1d1e:	b25b      	sxtb	r3, r3
    1d20:	b2dc      	uxtb	r4, r3
    1d22:	4b04      	ldr	r3, [pc, #16]	; (1d34 <gfx_plot+0x98>)
    1d24:	4622      	mov	r2, r4
    1d26:	555a      	strb	r2, [r3, r5]
    1d28:	e000      	b.n	1d2c <gfx_plot+0x90>
    1d2a:	bf00      	nop
    1d2c:	3718      	adds	r7, #24
    1d2e:	46bd      	mov	sp, r7
    1d30:	bdb0      	pop	{r4, r5, r7, pc}
    1d32:	bf00      	nop
    1d34:	20002530 	.word	0x20002530

00001d38 <gfx_rectangle>:
    1d38:	b580      	push	{r7, lr}
    1d3a:	b086      	sub	sp, #24
    1d3c:	af00      	add	r7, sp, #0
    1d3e:	60f8      	str	r0, [r7, #12]
    1d40:	60b9      	str	r1, [r7, #8]
    1d42:	607a      	str	r2, [r7, #4]
    1d44:	603b      	str	r3, [r7, #0]
    1d46:	68fa      	ldr	r2, [r7, #12]
    1d48:	687b      	ldr	r3, [r7, #4]
    1d4a:	429a      	cmp	r2, r3
    1d4c:	dd05      	ble.n	1d5a <gfx_rectangle+0x22>
    1d4e:	68fb      	ldr	r3, [r7, #12]
    1d50:	617b      	str	r3, [r7, #20]
    1d52:	687b      	ldr	r3, [r7, #4]
    1d54:	60fb      	str	r3, [r7, #12]
    1d56:	697b      	ldr	r3, [r7, #20]
    1d58:	607b      	str	r3, [r7, #4]
    1d5a:	68ba      	ldr	r2, [r7, #8]
    1d5c:	683b      	ldr	r3, [r7, #0]
    1d5e:	429a      	cmp	r2, r3
    1d60:	dd05      	ble.n	1d6e <gfx_rectangle+0x36>
    1d62:	68bb      	ldr	r3, [r7, #8]
    1d64:	617b      	str	r3, [r7, #20]
    1d66:	683b      	ldr	r3, [r7, #0]
    1d68:	60bb      	str	r3, [r7, #8]
    1d6a:	697b      	ldr	r3, [r7, #20]
    1d6c:	603b      	str	r3, [r7, #0]
    1d6e:	68fb      	ldr	r3, [r7, #12]
    1d70:	617b      	str	r3, [r7, #20]
    1d72:	e00c      	b.n	1d8e <gfx_rectangle+0x56>
    1d74:	220f      	movs	r2, #15
    1d76:	68b9      	ldr	r1, [r7, #8]
    1d78:	6978      	ldr	r0, [r7, #20]
    1d7a:	f7ff ff8f 	bl	1c9c <gfx_plot>
    1d7e:	220f      	movs	r2, #15
    1d80:	6839      	ldr	r1, [r7, #0]
    1d82:	6978      	ldr	r0, [r7, #20]
    1d84:	f7ff ff8a 	bl	1c9c <gfx_plot>
    1d88:	697b      	ldr	r3, [r7, #20]
    1d8a:	3301      	adds	r3, #1
    1d8c:	617b      	str	r3, [r7, #20]
    1d8e:	697a      	ldr	r2, [r7, #20]
    1d90:	687b      	ldr	r3, [r7, #4]
    1d92:	429a      	cmp	r2, r3
    1d94:	ddee      	ble.n	1d74 <gfx_rectangle+0x3c>
    1d96:	68bb      	ldr	r3, [r7, #8]
    1d98:	3301      	adds	r3, #1
    1d9a:	60bb      	str	r3, [r7, #8]
    1d9c:	e00c      	b.n	1db8 <gfx_rectangle+0x80>
    1d9e:	220f      	movs	r2, #15
    1da0:	68b9      	ldr	r1, [r7, #8]
    1da2:	68f8      	ldr	r0, [r7, #12]
    1da4:	f7ff ff7a 	bl	1c9c <gfx_plot>
    1da8:	220f      	movs	r2, #15
    1daa:	68b9      	ldr	r1, [r7, #8]
    1dac:	6878      	ldr	r0, [r7, #4]
    1dae:	f7ff ff75 	bl	1c9c <gfx_plot>
    1db2:	68bb      	ldr	r3, [r7, #8]
    1db4:	3301      	adds	r3, #1
    1db6:	60bb      	str	r3, [r7, #8]
    1db8:	68ba      	ldr	r2, [r7, #8]
    1dba:	683b      	ldr	r3, [r7, #0]
    1dbc:	429a      	cmp	r2, r3
    1dbe:	dbee      	blt.n	1d9e <gfx_rectangle+0x66>
    1dc0:	bf00      	nop
    1dc2:	3718      	adds	r7, #24
    1dc4:	46bd      	mov	sp, r7
    1dc6:	bd80      	pop	{r7, pc}

00001dc8 <gfx_cls>:
    1dc8:	b580      	push	{r7, lr}
    1dca:	b082      	sub	sp, #8
    1dcc:	af00      	add	r7, sp, #0
    1dce:	2300      	movs	r3, #0
    1dd0:	607b      	str	r3, [r7, #4]
    1dd2:	e007      	b.n	1de4 <gfx_cls+0x1c>
    1dd4:	4a0a      	ldr	r2, [pc, #40]	; (1e00 <gfx_cls+0x38>)
    1dd6:	687b      	ldr	r3, [r7, #4]
    1dd8:	4413      	add	r3, r2
    1dda:	2200      	movs	r2, #0
    1ddc:	701a      	strb	r2, [r3, #0]
    1dde:	687b      	ldr	r3, [r7, #4]
    1de0:	3301      	adds	r3, #1
    1de2:	607b      	str	r3, [r7, #4]
    1de4:	687b      	ldr	r3, [r7, #4]
    1de6:	f242 725f 	movw	r2, #10079	; 0x275f
    1dea:	4293      	cmp	r3, r2
    1dec:	ddf2      	ble.n	1dd4 <gfx_cls+0xc>
    1dee:	2100      	movs	r1, #0
    1df0:	2000      	movs	r0, #0
    1df2:	f001 ff47 	bl	3c84 <set_cursor>
    1df6:	bf00      	nop
    1df8:	3708      	adds	r7, #8
    1dfa:	46bd      	mov	sp, r7
    1dfc:	bd80      	pop	{r7, pc}
    1dfe:	bf00      	nop
    1e00:	20002530 	.word	0x20002530

00001e04 <move_up>:
    1e04:	b480      	push	{r7}
    1e06:	b085      	sub	sp, #20
    1e08:	af00      	add	r7, sp, #0
    1e0a:	60f8      	str	r0, [r7, #12]
    1e0c:	60b9      	str	r1, [r7, #8]
    1e0e:	607a      	str	r2, [r7, #4]
    1e10:	e009      	b.n	1e26 <move_up+0x22>
    1e12:	68bb      	ldr	r3, [r7, #8]
    1e14:	3b01      	subs	r3, #1
    1e16:	60bb      	str	r3, [r7, #8]
    1e18:	68fb      	ldr	r3, [r7, #12]
    1e1a:	3b01      	subs	r3, #1
    1e1c:	60fb      	str	r3, [r7, #12]
    1e1e:	68fb      	ldr	r3, [r7, #12]
    1e20:	781a      	ldrb	r2, [r3, #0]
    1e22:	68bb      	ldr	r3, [r7, #8]
    1e24:	701a      	strb	r2, [r3, #0]
    1e26:	687b      	ldr	r3, [r7, #4]
    1e28:	1e5a      	subs	r2, r3, #1
    1e2a:	607a      	str	r2, [r7, #4]
    1e2c:	2b00      	cmp	r3, #0
    1e2e:	d1f0      	bne.n	1e12 <move_up+0xe>
    1e30:	68bb      	ldr	r3, [r7, #8]
    1e32:	4618      	mov	r0, r3
    1e34:	3714      	adds	r7, #20
    1e36:	46bd      	mov	sp, r7
    1e38:	bc80      	pop	{r7}
    1e3a:	4770      	bx	lr

00001e3c <move_down>:
    1e3c:	b480      	push	{r7}
    1e3e:	b085      	sub	sp, #20
    1e40:	af00      	add	r7, sp, #0
    1e42:	60f8      	str	r0, [r7, #12]
    1e44:	60b9      	str	r1, [r7, #8]
    1e46:	607a      	str	r2, [r7, #4]
    1e48:	e007      	b.n	1e5a <move_down+0x1e>
    1e4a:	68bb      	ldr	r3, [r7, #8]
    1e4c:	1c5a      	adds	r2, r3, #1
    1e4e:	60ba      	str	r2, [r7, #8]
    1e50:	68fa      	ldr	r2, [r7, #12]
    1e52:	1c51      	adds	r1, r2, #1
    1e54:	60f9      	str	r1, [r7, #12]
    1e56:	7812      	ldrb	r2, [r2, #0]
    1e58:	701a      	strb	r2, [r3, #0]
    1e5a:	687b      	ldr	r3, [r7, #4]
    1e5c:	1e5a      	subs	r2, r3, #1
    1e5e:	607a      	str	r2, [r7, #4]
    1e60:	2b00      	cmp	r3, #0
    1e62:	d1f2      	bne.n	1e4a <move_down+0xe>
    1e64:	68bb      	ldr	r3, [r7, #8]
    1e66:	4618      	mov	r0, r3
    1e68:	3714      	adds	r7, #20
    1e6a:	46bd      	mov	sp, r7
    1e6c:	bc80      	pop	{r7}
    1e6e:	4770      	bx	lr

00001e70 <gfx_scroll_up>:
    1e70:	b580      	push	{r7, lr}
    1e72:	b086      	sub	sp, #24
    1e74:	af00      	add	r7, sp, #0
    1e76:	4603      	mov	r3, r0
    1e78:	71fb      	strb	r3, [r7, #7]
    1e7a:	79fb      	ldrb	r3, [r7, #7]
    1e7c:	225a      	movs	r2, #90	; 0x5a
    1e7e:	fb02 f303 	mul.w	r3, r2, r3
    1e82:	4a13      	ldr	r2, [pc, #76]	; (1ed0 <gfx_scroll_up+0x60>)
    1e84:	4413      	add	r3, r2
    1e86:	60fb      	str	r3, [r7, #12]
    1e88:	4b11      	ldr	r3, [pc, #68]	; (1ed0 <gfx_scroll_up+0x60>)
    1e8a:	617b      	str	r3, [r7, #20]
    1e8c:	79fb      	ldrb	r3, [r7, #7]
    1e8e:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1e92:	225a      	movs	r2, #90	; 0x5a
    1e94:	fb02 f303 	mul.w	r3, r2, r3
    1e98:	613b      	str	r3, [r7, #16]
    1e9a:	693a      	ldr	r2, [r7, #16]
    1e9c:	6979      	ldr	r1, [r7, #20]
    1e9e:	68f8      	ldr	r0, [r7, #12]
    1ea0:	f7ff ffcc 	bl	1e3c <move_down>
    1ea4:	6178      	str	r0, [r7, #20]
    1ea6:	79fb      	ldrb	r3, [r7, #7]
    1ea8:	225a      	movs	r2, #90	; 0x5a
    1eaa:	fb02 f303 	mul.w	r3, r2, r3
    1eae:	613b      	str	r3, [r7, #16]
    1eb0:	e004      	b.n	1ebc <gfx_scroll_up+0x4c>
    1eb2:	697b      	ldr	r3, [r7, #20]
    1eb4:	1c5a      	adds	r2, r3, #1
    1eb6:	617a      	str	r2, [r7, #20]
    1eb8:	2200      	movs	r2, #0
    1eba:	701a      	strb	r2, [r3, #0]
    1ebc:	693b      	ldr	r3, [r7, #16]
    1ebe:	1e5a      	subs	r2, r3, #1
    1ec0:	613a      	str	r2, [r7, #16]
    1ec2:	2b00      	cmp	r3, #0
    1ec4:	d1f5      	bne.n	1eb2 <gfx_scroll_up+0x42>
    1ec6:	bf00      	nop
    1ec8:	3718      	adds	r7, #24
    1eca:	46bd      	mov	sp, r7
    1ecc:	bd80      	pop	{r7, pc}
    1ece:	bf00      	nop
    1ed0:	20002530 	.word	0x20002530

00001ed4 <gfx_scroll_down>:
    1ed4:	b580      	push	{r7, lr}
    1ed6:	b086      	sub	sp, #24
    1ed8:	af00      	add	r7, sp, #0
    1eda:	4603      	mov	r3, r0
    1edc:	71fb      	strb	r3, [r7, #7]
    1ede:	79fb      	ldrb	r3, [r7, #7]
    1ee0:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1ee4:	225a      	movs	r2, #90	; 0x5a
    1ee6:	fb02 f303 	mul.w	r3, r2, r3
    1eea:	4a13      	ldr	r2, [pc, #76]	; (1f38 <gfx_scroll_down+0x64>)
    1eec:	4413      	add	r3, r2
    1eee:	60fb      	str	r3, [r7, #12]
    1ef0:	4b12      	ldr	r3, [pc, #72]	; (1f3c <gfx_scroll_down+0x68>)
    1ef2:	617b      	str	r3, [r7, #20]
    1ef4:	79fb      	ldrb	r3, [r7, #7]
    1ef6:	f1c3 0370 	rsb	r3, r3, #112	; 0x70
    1efa:	225a      	movs	r2, #90	; 0x5a
    1efc:	fb02 f303 	mul.w	r3, r2, r3
    1f00:	613b      	str	r3, [r7, #16]
    1f02:	693a      	ldr	r2, [r7, #16]
    1f04:	6979      	ldr	r1, [r7, #20]
    1f06:	68f8      	ldr	r0, [r7, #12]
    1f08:	f7ff ff7c 	bl	1e04 <move_up>
    1f0c:	6178      	str	r0, [r7, #20]
    1f0e:	79fb      	ldrb	r3, [r7, #7]
    1f10:	225a      	movs	r2, #90	; 0x5a
    1f12:	fb02 f303 	mul.w	r3, r2, r3
    1f16:	613b      	str	r3, [r7, #16]
    1f18:	e005      	b.n	1f26 <gfx_scroll_down+0x52>
    1f1a:	697b      	ldr	r3, [r7, #20]
    1f1c:	3b01      	subs	r3, #1
    1f1e:	617b      	str	r3, [r7, #20]
    1f20:	697b      	ldr	r3, [r7, #20]
    1f22:	2200      	movs	r2, #0
    1f24:	701a      	strb	r2, [r3, #0]
    1f26:	693b      	ldr	r3, [r7, #16]
    1f28:	1e5a      	subs	r2, r3, #1
    1f2a:	613a      	str	r2, [r7, #16]
    1f2c:	2b00      	cmp	r3, #0
    1f2e:	d1f4      	bne.n	1f1a <gfx_scroll_down+0x46>
    1f30:	bf00      	nop
    1f32:	3718      	adds	r7, #24
    1f34:	46bd      	mov	sp, r7
    1f36:	bd80      	pop	{r7, pc}
    1f38:	20002530 	.word	0x20002530
    1f3c:	20004c90 	.word	0x20004c90

00001f40 <gfx_scroll_left>:
    1f40:	b580      	push	{r7, lr}
    1f42:	b086      	sub	sp, #24
    1f44:	af00      	add	r7, sp, #0
    1f46:	4603      	mov	r3, r0
    1f48:	71fb      	strb	r3, [r7, #7]
    1f4a:	2300      	movs	r3, #0
    1f4c:	617b      	str	r3, [r7, #20]
    1f4e:	e024      	b.n	1f9a <gfx_scroll_left+0x5a>
    1f50:	697b      	ldr	r3, [r7, #20]
    1f52:	225a      	movs	r2, #90	; 0x5a
    1f54:	fb02 f303 	mul.w	r3, r2, r3
    1f58:	4a13      	ldr	r2, [pc, #76]	; (1fa8 <gfx_scroll_left+0x68>)
    1f5a:	4413      	add	r3, r2
    1f5c:	60fb      	str	r3, [r7, #12]
    1f5e:	79fb      	ldrb	r3, [r7, #7]
    1f60:	68fa      	ldr	r2, [r7, #12]
    1f62:	4413      	add	r3, r2
    1f64:	60bb      	str	r3, [r7, #8]
    1f66:	79fb      	ldrb	r3, [r7, #7]
    1f68:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1f6c:	613b      	str	r3, [r7, #16]
    1f6e:	693a      	ldr	r2, [r7, #16]
    1f70:	68f9      	ldr	r1, [r7, #12]
    1f72:	68b8      	ldr	r0, [r7, #8]
    1f74:	f7ff ff62 	bl	1e3c <move_down>
    1f78:	60f8      	str	r0, [r7, #12]
    1f7a:	79fb      	ldrb	r3, [r7, #7]
    1f7c:	613b      	str	r3, [r7, #16]
    1f7e:	e004      	b.n	1f8a <gfx_scroll_left+0x4a>
    1f80:	68fb      	ldr	r3, [r7, #12]
    1f82:	1c5a      	adds	r2, r3, #1
    1f84:	60fa      	str	r2, [r7, #12]
    1f86:	2200      	movs	r2, #0
    1f88:	701a      	strb	r2, [r3, #0]
    1f8a:	693b      	ldr	r3, [r7, #16]
    1f8c:	1e5a      	subs	r2, r3, #1
    1f8e:	613a      	str	r2, [r7, #16]
    1f90:	2b00      	cmp	r3, #0
    1f92:	d1f5      	bne.n	1f80 <gfx_scroll_left+0x40>
    1f94:	697b      	ldr	r3, [r7, #20]
    1f96:	3301      	adds	r3, #1
    1f98:	617b      	str	r3, [r7, #20]
    1f9a:	697b      	ldr	r3, [r7, #20]
    1f9c:	2b6f      	cmp	r3, #111	; 0x6f
    1f9e:	ddd7      	ble.n	1f50 <gfx_scroll_left+0x10>
    1fa0:	bf00      	nop
    1fa2:	3718      	adds	r7, #24
    1fa4:	46bd      	mov	sp, r7
    1fa6:	bd80      	pop	{r7, pc}
    1fa8:	20002530 	.word	0x20002530

00001fac <gfx_scroll_right>:
    1fac:	b580      	push	{r7, lr}
    1fae:	b086      	sub	sp, #24
    1fb0:	af00      	add	r7, sp, #0
    1fb2:	4603      	mov	r3, r0
    1fb4:	71fb      	strb	r3, [r7, #7]
    1fb6:	2300      	movs	r3, #0
    1fb8:	617b      	str	r3, [r7, #20]
    1fba:	e027      	b.n	200c <gfx_scroll_right+0x60>
    1fbc:	697b      	ldr	r3, [r7, #20]
    1fbe:	225a      	movs	r2, #90	; 0x5a
    1fc0:	fb02 f303 	mul.w	r3, r2, r3
    1fc4:	4a15      	ldr	r2, [pc, #84]	; (201c <gfx_scroll_right+0x70>)
    1fc6:	4413      	add	r3, r2
    1fc8:	335a      	adds	r3, #90	; 0x5a
    1fca:	60fb      	str	r3, [r7, #12]
    1fcc:	79fb      	ldrb	r3, [r7, #7]
    1fce:	425b      	negs	r3, r3
    1fd0:	68fa      	ldr	r2, [r7, #12]
    1fd2:	4413      	add	r3, r2
    1fd4:	60bb      	str	r3, [r7, #8]
    1fd6:	79fb      	ldrb	r3, [r7, #7]
    1fd8:	f1c3 035a 	rsb	r3, r3, #90	; 0x5a
    1fdc:	613b      	str	r3, [r7, #16]
    1fde:	693a      	ldr	r2, [r7, #16]
    1fe0:	68f9      	ldr	r1, [r7, #12]
    1fe2:	68b8      	ldr	r0, [r7, #8]
    1fe4:	f7ff ff0e 	bl	1e04 <move_up>
    1fe8:	60f8      	str	r0, [r7, #12]
    1fea:	79fb      	ldrb	r3, [r7, #7]
    1fec:	613b      	str	r3, [r7, #16]
    1fee:	e005      	b.n	1ffc <gfx_scroll_right+0x50>
    1ff0:	68fb      	ldr	r3, [r7, #12]
    1ff2:	3b01      	subs	r3, #1
    1ff4:	60fb      	str	r3, [r7, #12]
    1ff6:	68fb      	ldr	r3, [r7, #12]
    1ff8:	2200      	movs	r2, #0
    1ffa:	701a      	strb	r2, [r3, #0]
    1ffc:	693b      	ldr	r3, [r7, #16]
    1ffe:	1e5a      	subs	r2, r3, #1
    2000:	613a      	str	r2, [r7, #16]
    2002:	2b00      	cmp	r3, #0
    2004:	d1f4      	bne.n	1ff0 <gfx_scroll_right+0x44>
    2006:	697b      	ldr	r3, [r7, #20]
    2008:	3301      	adds	r3, #1
    200a:	617b      	str	r3, [r7, #20]
    200c:	697b      	ldr	r3, [r7, #20]
    200e:	2b6f      	cmp	r3, #111	; 0x6f
    2010:	ddd4      	ble.n	1fbc <gfx_scroll_right+0x10>
    2012:	bf00      	nop
    2014:	3718      	adds	r7, #24
    2016:	46bd      	mov	sp, r7
    2018:	bd80      	pop	{r7, pc}
    201a:	bf00      	nop
    201c:	20002530 	.word	0x20002530

00002020 <gfx_get_pixel>:
    2020:	b490      	push	{r4, r7}
    2022:	b082      	sub	sp, #8
    2024:	af00      	add	r7, sp, #0
    2026:	6078      	str	r0, [r7, #4]
    2028:	6039      	str	r1, [r7, #0]
    202a:	687b      	ldr	r3, [r7, #4]
    202c:	2b00      	cmp	r3, #0
    202e:	db08      	blt.n	2042 <gfx_get_pixel+0x22>
    2030:	687b      	ldr	r3, [r7, #4]
    2032:	2bb3      	cmp	r3, #179	; 0xb3
    2034:	dc05      	bgt.n	2042 <gfx_get_pixel+0x22>
    2036:	683b      	ldr	r3, [r7, #0]
    2038:	2b00      	cmp	r3, #0
    203a:	db02      	blt.n	2042 <gfx_get_pixel+0x22>
    203c:	683b      	ldr	r3, [r7, #0]
    203e:	2b6f      	cmp	r3, #111	; 0x6f
    2040:	dd01      	ble.n	2046 <gfx_get_pixel+0x26>
    2042:	23ff      	movs	r3, #255	; 0xff
    2044:	e012      	b.n	206c <gfx_get_pixel+0x4c>
    2046:	683b      	ldr	r3, [r7, #0]
    2048:	225a      	movs	r2, #90	; 0x5a
    204a:	fb02 f203 	mul.w	r2, r2, r3
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	105b      	asrs	r3, r3, #1
    2052:	4413      	add	r3, r2
    2054:	4a08      	ldr	r2, [pc, #32]	; (2078 <gfx_get_pixel+0x58>)
    2056:	5cd4      	ldrb	r4, [r2, r3]
    2058:	687b      	ldr	r3, [r7, #4]
    205a:	f003 0301 	and.w	r3, r3, #1
    205e:	2b00      	cmp	r3, #0
    2060:	d101      	bne.n	2066 <gfx_get_pixel+0x46>
    2062:	0923      	lsrs	r3, r4, #4
    2064:	b2dc      	uxtb	r4, r3
    2066:	f004 030f 	and.w	r3, r4, #15
    206a:	b2db      	uxtb	r3, r3
    206c:	4618      	mov	r0, r3
    206e:	3708      	adds	r7, #8
    2070:	46bd      	mov	sp, r7
    2072:	bc90      	pop	{r4, r7}
    2074:	4770      	bx	lr
    2076:	bf00      	nop
    2078:	20002530 	.word	0x20002530

0000207c <gfx_sprite>:
    207c:	b5f0      	push	{r4, r5, r6, r7, lr}
    207e:	b087      	sub	sp, #28
    2080:	af00      	add	r7, sp, #0
    2082:	60f8      	str	r0, [r7, #12]
    2084:	60b9      	str	r1, [r7, #8]
    2086:	4611      	mov	r1, r2
    2088:	461a      	mov	r2, r3
    208a:	460b      	mov	r3, r1
    208c:	71fb      	strb	r3, [r7, #7]
    208e:	4613      	mov	r3, r2
    2090:	71bb      	strb	r3, [r7, #6]
    2092:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    2094:	1c5a      	adds	r2, r3, #1
    2096:	633a      	str	r2, [r7, #48]	; 0x30
    2098:	781e      	ldrb	r6, [r3, #0]
    209a:	68bd      	ldr	r5, [r7, #8]
    209c:	e01b      	b.n	20d6 <gfx_sprite+0x5a>
    209e:	68fc      	ldr	r4, [r7, #12]
    20a0:	e013      	b.n	20ca <gfx_sprite+0x4e>
    20a2:	0933      	lsrs	r3, r6, #4
    20a4:	b2da      	uxtb	r2, r3
    20a6:	2302      	movs	r3, #2
    20a8:	4629      	mov	r1, r5
    20aa:	4620      	mov	r0, r4
    20ac:	f7ff fd7e 	bl	1bac <gfx_blit>
    20b0:	3401      	adds	r4, #1
    20b2:	2302      	movs	r3, #2
    20b4:	4632      	mov	r2, r6
    20b6:	4629      	mov	r1, r5
    20b8:	4620      	mov	r0, r4
    20ba:	f7ff fd77 	bl	1bac <gfx_blit>
    20be:	6178      	str	r0, [r7, #20]
    20c0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    20c2:	1c5a      	adds	r2, r3, #1
    20c4:	633a      	str	r2, [r7, #48]	; 0x30
    20c6:	781e      	ldrb	r6, [r3, #0]
    20c8:	3401      	adds	r4, #1
    20ca:	79fa      	ldrb	r2, [r7, #7]
    20cc:	68fb      	ldr	r3, [r7, #12]
    20ce:	4413      	add	r3, r2
    20d0:	42a3      	cmp	r3, r4
    20d2:	dce6      	bgt.n	20a2 <gfx_sprite+0x26>
    20d4:	3501      	adds	r5, #1
    20d6:	79ba      	ldrb	r2, [r7, #6]
    20d8:	68bb      	ldr	r3, [r7, #8]
    20da:	4413      	add	r3, r2
    20dc:	42ab      	cmp	r3, r5
    20de:	dcde      	bgt.n	209e <gfx_sprite+0x22>
    20e0:	697b      	ldr	r3, [r7, #20]
    20e2:	4618      	mov	r0, r3
    20e4:	371c      	adds	r7, #28
    20e6:	46bd      	mov	sp, r7
    20e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    20ea:	bf00      	nop

000020ec <set_sysclock>:
    20ec:	b480      	push	{r7}
    20ee:	af00      	add	r7, sp, #0
    20f0:	4a18      	ldr	r2, [pc, #96]	; (2154 <set_sysclock+0x68>)
    20f2:	4b18      	ldr	r3, [pc, #96]	; (2154 <set_sysclock+0x68>)
    20f4:	681b      	ldr	r3, [r3, #0]
    20f6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    20fa:	6013      	str	r3, [r2, #0]
    20fc:	bf00      	nop
    20fe:	4b15      	ldr	r3, [pc, #84]	; (2154 <set_sysclock+0x68>)
    2100:	681b      	ldr	r3, [r3, #0]
    2102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    2106:	2b00      	cmp	r3, #0
    2108:	d0f9      	beq.n	20fe <set_sysclock+0x12>
    210a:	4a12      	ldr	r2, [pc, #72]	; (2154 <set_sysclock+0x68>)
    210c:	4b11      	ldr	r3, [pc, #68]	; (2154 <set_sysclock+0x68>)
    210e:	685b      	ldr	r3, [r3, #4]
    2110:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    2114:	6053      	str	r3, [r2, #4]
    2116:	4a0f      	ldr	r2, [pc, #60]	; (2154 <set_sysclock+0x68>)
    2118:	4b0e      	ldr	r3, [pc, #56]	; (2154 <set_sysclock+0x68>)
    211a:	681b      	ldr	r3, [r3, #0]
    211c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    2120:	6013      	str	r3, [r2, #0]
    2122:	bf00      	nop
    2124:	4b0b      	ldr	r3, [pc, #44]	; (2154 <set_sysclock+0x68>)
    2126:	681b      	ldr	r3, [r3, #0]
    2128:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    212c:	2b00      	cmp	r3, #0
    212e:	d0f9      	beq.n	2124 <set_sysclock+0x38>
    2130:	4a09      	ldr	r2, [pc, #36]	; (2158 <set_sysclock+0x6c>)
    2132:	4b09      	ldr	r3, [pc, #36]	; (2158 <set_sysclock+0x6c>)
    2134:	681b      	ldr	r3, [r3, #0]
    2136:	f043 0312 	orr.w	r3, r3, #18
    213a:	6013      	str	r3, [r2, #0]
    213c:	4a05      	ldr	r2, [pc, #20]	; (2154 <set_sysclock+0x68>)
    213e:	4b05      	ldr	r3, [pc, #20]	; (2154 <set_sysclock+0x68>)
    2140:	685b      	ldr	r3, [r3, #4]
    2142:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    2146:	f043 0302 	orr.w	r3, r3, #2
    214a:	6053      	str	r3, [r2, #4]
    214c:	bf00      	nop
    214e:	46bd      	mov	sp, r7
    2150:	bc80      	pop	{r7}
    2152:	4770      	bx	lr
    2154:	40021000 	.word	0x40021000
    2158:	40022000 	.word	0x40022000

0000215c <draw_balls>:
    215c:	b590      	push	{r4, r7, lr}
    215e:	b085      	sub	sp, #20
    2160:	af02      	add	r7, sp, #8
    2162:	f002 f9a7 	bl	44b4 <frame_sync>
    2166:	2300      	movs	r3, #0
    2168:	607b      	str	r3, [r7, #4]
    216a:	e022      	b.n	21b2 <draw_balls+0x56>
    216c:	4915      	ldr	r1, [pc, #84]	; (21c4 <draw_balls+0x68>)
    216e:	687a      	ldr	r2, [r7, #4]
    2170:	4613      	mov	r3, r2
    2172:	009b      	lsls	r3, r3, #2
    2174:	4413      	add	r3, r2
    2176:	009b      	lsls	r3, r3, #2
    2178:	440b      	add	r3, r1
    217a:	6818      	ldr	r0, [r3, #0]
    217c:	4911      	ldr	r1, [pc, #68]	; (21c4 <draw_balls+0x68>)
    217e:	687a      	ldr	r2, [r7, #4]
    2180:	4613      	mov	r3, r2
    2182:	009b      	lsls	r3, r3, #2
    2184:	4413      	add	r3, r2
    2186:	009b      	lsls	r3, r3, #2
    2188:	440b      	add	r3, r1
    218a:	3304      	adds	r3, #4
    218c:	681c      	ldr	r4, [r3, #0]
    218e:	490d      	ldr	r1, [pc, #52]	; (21c4 <draw_balls+0x68>)
    2190:	687a      	ldr	r2, [r7, #4]
    2192:	4613      	mov	r3, r2
    2194:	009b      	lsls	r3, r3, #2
    2196:	4413      	add	r3, r2
    2198:	009b      	lsls	r3, r3, #2
    219a:	440b      	add	r3, r1
    219c:	3310      	adds	r3, #16
    219e:	681b      	ldr	r3, [r3, #0]
    21a0:	9300      	str	r3, [sp, #0]
    21a2:	2308      	movs	r3, #8
    21a4:	2208      	movs	r2, #8
    21a6:	4621      	mov	r1, r4
    21a8:	f7ff ff68 	bl	207c <gfx_sprite>
    21ac:	687b      	ldr	r3, [r7, #4]
    21ae:	3301      	adds	r3, #1
    21b0:	607b      	str	r3, [r7, #4]
    21b2:	687b      	ldr	r3, [r7, #4]
    21b4:	2b01      	cmp	r3, #1
    21b6:	ddd9      	ble.n	216c <draw_balls+0x10>
    21b8:	f002 f98c 	bl	44d4 <wait_sync_end>
    21bc:	bf00      	nop
    21be:	370c      	adds	r7, #12
    21c0:	46bd      	mov	sp, r7
    21c2:	bd90      	pop	{r4, r7, pc}
    21c4:	20002508 	.word	0x20002508

000021c8 <isqrt>:
    21c8:	b580      	push	{r7, lr}
    21ca:	b084      	sub	sp, #16
    21cc:	af00      	add	r7, sp, #0
    21ce:	6078      	str	r0, [r7, #4]
    21d0:	687b      	ldr	r3, [r7, #4]
    21d2:	2b01      	cmp	r3, #1
    21d4:	dc01      	bgt.n	21da <isqrt+0x12>
    21d6:	687b      	ldr	r3, [r7, #4]
    21d8:	e014      	b.n	2204 <isqrt+0x3c>
    21da:	687b      	ldr	r3, [r7, #4]
    21dc:	109b      	asrs	r3, r3, #2
    21de:	4618      	mov	r0, r3
    21e0:	f7ff fff2 	bl	21c8 <isqrt>
    21e4:	4603      	mov	r3, r0
    21e6:	005b      	lsls	r3, r3, #1
    21e8:	60fb      	str	r3, [r7, #12]
    21ea:	68fb      	ldr	r3, [r7, #12]
    21ec:	3301      	adds	r3, #1
    21ee:	60bb      	str	r3, [r7, #8]
    21f0:	68bb      	ldr	r3, [r7, #8]
    21f2:	68ba      	ldr	r2, [r7, #8]
    21f4:	fb02 f203 	mul.w	r2, r2, r3
    21f8:	687b      	ldr	r3, [r7, #4]
    21fa:	429a      	cmp	r2, r3
    21fc:	dd01      	ble.n	2202 <isqrt+0x3a>
    21fe:	68fb      	ldr	r3, [r7, #12]
    2200:	e000      	b.n	2204 <isqrt+0x3c>
    2202:	68bb      	ldr	r3, [r7, #8]
    2204:	4618      	mov	r0, r3
    2206:	3710      	adds	r7, #16
    2208:	46bd      	mov	sp, r7
    220a:	bd80      	pop	{r7, pc}

0000220c <distance>:
    220c:	b580      	push	{r7, lr}
    220e:	b082      	sub	sp, #8
    2210:	af00      	add	r7, sp, #0
    2212:	6078      	str	r0, [r7, #4]
    2214:	6039      	str	r1, [r7, #0]
    2216:	687b      	ldr	r3, [r7, #4]
    2218:	681b      	ldr	r3, [r3, #0]
    221a:	683a      	ldr	r2, [r7, #0]
    221c:	6812      	ldr	r2, [r2, #0]
    221e:	fb02 f203 	mul.w	r2, r2, r3
    2222:	687b      	ldr	r3, [r7, #4]
    2224:	685b      	ldr	r3, [r3, #4]
    2226:	6839      	ldr	r1, [r7, #0]
    2228:	6849      	ldr	r1, [r1, #4]
    222a:	fb01 f303 	mul.w	r3, r1, r3
    222e:	4413      	add	r3, r2
    2230:	2b00      	cmp	r3, #0
    2232:	bfb8      	it	lt
    2234:	425b      	neglt	r3, r3
    2236:	4618      	mov	r0, r3
    2238:	f7ff ffc6 	bl	21c8 <isqrt>
    223c:	4603      	mov	r3, r0
    223e:	4618      	mov	r0, r3
    2240:	3708      	adds	r7, #8
    2242:	46bd      	mov	sp, r7
    2244:	bd80      	pop	{r7, pc}

00002246 <move_balls>:
    2246:	b580      	push	{r7, lr}
    2248:	b082      	sub	sp, #8
    224a:	af00      	add	r7, sp, #0
    224c:	f002 f964 	bl	4518 <get_video_params>
    2250:	6038      	str	r0, [r7, #0]
    2252:	2300      	movs	r3, #0
    2254:	607b      	str	r3, [r7, #4]
    2256:	e0c3      	b.n	23e0 <move_balls+0x19a>
    2258:	4979      	ldr	r1, [pc, #484]	; (2440 <move_balls+0x1fa>)
    225a:	687a      	ldr	r2, [r7, #4]
    225c:	4613      	mov	r3, r2
    225e:	009b      	lsls	r3, r3, #2
    2260:	4413      	add	r3, r2
    2262:	009b      	lsls	r3, r3, #2
    2264:	440b      	add	r3, r1
    2266:	6819      	ldr	r1, [r3, #0]
    2268:	4875      	ldr	r0, [pc, #468]	; (2440 <move_balls+0x1fa>)
    226a:	687a      	ldr	r2, [r7, #4]
    226c:	4613      	mov	r3, r2
    226e:	009b      	lsls	r3, r3, #2
    2270:	4413      	add	r3, r2
    2272:	009b      	lsls	r3, r3, #2
    2274:	4403      	add	r3, r0
    2276:	3308      	adds	r3, #8
    2278:	681b      	ldr	r3, [r3, #0]
    227a:	4419      	add	r1, r3
    227c:	4870      	ldr	r0, [pc, #448]	; (2440 <move_balls+0x1fa>)
    227e:	687a      	ldr	r2, [r7, #4]
    2280:	4613      	mov	r3, r2
    2282:	009b      	lsls	r3, r3, #2
    2284:	4413      	add	r3, r2
    2286:	009b      	lsls	r3, r3, #2
    2288:	4403      	add	r3, r0
    228a:	6019      	str	r1, [r3, #0]
    228c:	496c      	ldr	r1, [pc, #432]	; (2440 <move_balls+0x1fa>)
    228e:	687a      	ldr	r2, [r7, #4]
    2290:	4613      	mov	r3, r2
    2292:	009b      	lsls	r3, r3, #2
    2294:	4413      	add	r3, r2
    2296:	009b      	lsls	r3, r3, #2
    2298:	440b      	add	r3, r1
    229a:	681b      	ldr	r3, [r3, #0]
    229c:	f113 0f07 	cmn.w	r3, #7
    22a0:	db0b      	blt.n	22ba <move_balls+0x74>
    22a2:	4967      	ldr	r1, [pc, #412]	; (2440 <move_balls+0x1fa>)
    22a4:	687a      	ldr	r2, [r7, #4]
    22a6:	4613      	mov	r3, r2
    22a8:	009b      	lsls	r3, r3, #2
    22aa:	4413      	add	r3, r2
    22ac:	009b      	lsls	r3, r3, #2
    22ae:	440b      	add	r3, r1
    22b0:	681b      	ldr	r3, [r3, #0]
    22b2:	683a      	ldr	r2, [r7, #0]
    22b4:	8992      	ldrh	r2, [r2, #12]
    22b6:	4293      	cmp	r3, r2
    22b8:	db2c      	blt.n	2314 <move_balls+0xce>
    22ba:	4961      	ldr	r1, [pc, #388]	; (2440 <move_balls+0x1fa>)
    22bc:	687a      	ldr	r2, [r7, #4]
    22be:	4613      	mov	r3, r2
    22c0:	009b      	lsls	r3, r3, #2
    22c2:	4413      	add	r3, r2
    22c4:	009b      	lsls	r3, r3, #2
    22c6:	440b      	add	r3, r1
    22c8:	3308      	adds	r3, #8
    22ca:	681b      	ldr	r3, [r3, #0]
    22cc:	4259      	negs	r1, r3
    22ce:	485c      	ldr	r0, [pc, #368]	; (2440 <move_balls+0x1fa>)
    22d0:	687a      	ldr	r2, [r7, #4]
    22d2:	4613      	mov	r3, r2
    22d4:	009b      	lsls	r3, r3, #2
    22d6:	4413      	add	r3, r2
    22d8:	009b      	lsls	r3, r3, #2
    22da:	4403      	add	r3, r0
    22dc:	3308      	adds	r3, #8
    22de:	6019      	str	r1, [r3, #0]
    22e0:	4957      	ldr	r1, [pc, #348]	; (2440 <move_balls+0x1fa>)
    22e2:	687a      	ldr	r2, [r7, #4]
    22e4:	4613      	mov	r3, r2
    22e6:	009b      	lsls	r3, r3, #2
    22e8:	4413      	add	r3, r2
    22ea:	009b      	lsls	r3, r3, #2
    22ec:	440b      	add	r3, r1
    22ee:	6819      	ldr	r1, [r3, #0]
    22f0:	4853      	ldr	r0, [pc, #332]	; (2440 <move_balls+0x1fa>)
    22f2:	687a      	ldr	r2, [r7, #4]
    22f4:	4613      	mov	r3, r2
    22f6:	009b      	lsls	r3, r3, #2
    22f8:	4413      	add	r3, r2
    22fa:	009b      	lsls	r3, r3, #2
    22fc:	4403      	add	r3, r0
    22fe:	3308      	adds	r3, #8
    2300:	681b      	ldr	r3, [r3, #0]
    2302:	4419      	add	r1, r3
    2304:	484e      	ldr	r0, [pc, #312]	; (2440 <move_balls+0x1fa>)
    2306:	687a      	ldr	r2, [r7, #4]
    2308:	4613      	mov	r3, r2
    230a:	009b      	lsls	r3, r3, #2
    230c:	4413      	add	r3, r2
    230e:	009b      	lsls	r3, r3, #2
    2310:	4403      	add	r3, r0
    2312:	6019      	str	r1, [r3, #0]
    2314:	494a      	ldr	r1, [pc, #296]	; (2440 <move_balls+0x1fa>)
    2316:	687a      	ldr	r2, [r7, #4]
    2318:	4613      	mov	r3, r2
    231a:	009b      	lsls	r3, r3, #2
    231c:	4413      	add	r3, r2
    231e:	009b      	lsls	r3, r3, #2
    2320:	440b      	add	r3, r1
    2322:	3304      	adds	r3, #4
    2324:	6819      	ldr	r1, [r3, #0]
    2326:	4846      	ldr	r0, [pc, #280]	; (2440 <move_balls+0x1fa>)
    2328:	687a      	ldr	r2, [r7, #4]
    232a:	4613      	mov	r3, r2
    232c:	009b      	lsls	r3, r3, #2
    232e:	4413      	add	r3, r2
    2330:	009b      	lsls	r3, r3, #2
    2332:	4403      	add	r3, r0
    2334:	330c      	adds	r3, #12
    2336:	681b      	ldr	r3, [r3, #0]
    2338:	4419      	add	r1, r3
    233a:	4841      	ldr	r0, [pc, #260]	; (2440 <move_balls+0x1fa>)
    233c:	687a      	ldr	r2, [r7, #4]
    233e:	4613      	mov	r3, r2
    2340:	009b      	lsls	r3, r3, #2
    2342:	4413      	add	r3, r2
    2344:	009b      	lsls	r3, r3, #2
    2346:	4403      	add	r3, r0
    2348:	3304      	adds	r3, #4
    234a:	6019      	str	r1, [r3, #0]
    234c:	493c      	ldr	r1, [pc, #240]	; (2440 <move_balls+0x1fa>)
    234e:	687a      	ldr	r2, [r7, #4]
    2350:	4613      	mov	r3, r2
    2352:	009b      	lsls	r3, r3, #2
    2354:	4413      	add	r3, r2
    2356:	009b      	lsls	r3, r3, #2
    2358:	440b      	add	r3, r1
    235a:	3304      	adds	r3, #4
    235c:	681b      	ldr	r3, [r3, #0]
    235e:	2b0f      	cmp	r3, #15
    2360:	dd0c      	ble.n	237c <move_balls+0x136>
    2362:	4937      	ldr	r1, [pc, #220]	; (2440 <move_balls+0x1fa>)
    2364:	687a      	ldr	r2, [r7, #4]
    2366:	4613      	mov	r3, r2
    2368:	009b      	lsls	r3, r3, #2
    236a:	4413      	add	r3, r2
    236c:	009b      	lsls	r3, r3, #2
    236e:	440b      	add	r3, r1
    2370:	3304      	adds	r3, #4
    2372:	681b      	ldr	r3, [r3, #0]
    2374:	683a      	ldr	r2, [r7, #0]
    2376:	89d2      	ldrh	r2, [r2, #14]
    2378:	4293      	cmp	r3, r2
    237a:	db2e      	blt.n	23da <move_balls+0x194>
    237c:	4930      	ldr	r1, [pc, #192]	; (2440 <move_balls+0x1fa>)
    237e:	687a      	ldr	r2, [r7, #4]
    2380:	4613      	mov	r3, r2
    2382:	009b      	lsls	r3, r3, #2
    2384:	4413      	add	r3, r2
    2386:	009b      	lsls	r3, r3, #2
    2388:	440b      	add	r3, r1
    238a:	330c      	adds	r3, #12
    238c:	681b      	ldr	r3, [r3, #0]
    238e:	4259      	negs	r1, r3
    2390:	482b      	ldr	r0, [pc, #172]	; (2440 <move_balls+0x1fa>)
    2392:	687a      	ldr	r2, [r7, #4]
    2394:	4613      	mov	r3, r2
    2396:	009b      	lsls	r3, r3, #2
    2398:	4413      	add	r3, r2
    239a:	009b      	lsls	r3, r3, #2
    239c:	4403      	add	r3, r0
    239e:	330c      	adds	r3, #12
    23a0:	6019      	str	r1, [r3, #0]
    23a2:	4927      	ldr	r1, [pc, #156]	; (2440 <move_balls+0x1fa>)
    23a4:	687a      	ldr	r2, [r7, #4]
    23a6:	4613      	mov	r3, r2
    23a8:	009b      	lsls	r3, r3, #2
    23aa:	4413      	add	r3, r2
    23ac:	009b      	lsls	r3, r3, #2
    23ae:	440b      	add	r3, r1
    23b0:	3304      	adds	r3, #4
    23b2:	6819      	ldr	r1, [r3, #0]
    23b4:	4822      	ldr	r0, [pc, #136]	; (2440 <move_balls+0x1fa>)
    23b6:	687a      	ldr	r2, [r7, #4]
    23b8:	4613      	mov	r3, r2
    23ba:	009b      	lsls	r3, r3, #2
    23bc:	4413      	add	r3, r2
    23be:	009b      	lsls	r3, r3, #2
    23c0:	4403      	add	r3, r0
    23c2:	330c      	adds	r3, #12
    23c4:	681b      	ldr	r3, [r3, #0]
    23c6:	4419      	add	r1, r3
    23c8:	481d      	ldr	r0, [pc, #116]	; (2440 <move_balls+0x1fa>)
    23ca:	687a      	ldr	r2, [r7, #4]
    23cc:	4613      	mov	r3, r2
    23ce:	009b      	lsls	r3, r3, #2
    23d0:	4413      	add	r3, r2
    23d2:	009b      	lsls	r3, r3, #2
    23d4:	4403      	add	r3, r0
    23d6:	3304      	adds	r3, #4
    23d8:	6019      	str	r1, [r3, #0]
    23da:	687b      	ldr	r3, [r7, #4]
    23dc:	3301      	adds	r3, #1
    23de:	607b      	str	r3, [r7, #4]
    23e0:	687b      	ldr	r3, [r7, #4]
    23e2:	2b01      	cmp	r3, #1
    23e4:	f77f af38 	ble.w	2258 <move_balls+0x12>
    23e8:	4916      	ldr	r1, [pc, #88]	; (2444 <move_balls+0x1fe>)
    23ea:	4815      	ldr	r0, [pc, #84]	; (2440 <move_balls+0x1fa>)
    23ec:	f7ff ff0e 	bl	220c <distance>
    23f0:	4603      	mov	r3, r0
    23f2:	2b07      	cmp	r3, #7
    23f4:	d81f      	bhi.n	2436 <move_balls+0x1f0>
    23f6:	4b12      	ldr	r3, [pc, #72]	; (2440 <move_balls+0x1fa>)
    23f8:	689a      	ldr	r2, [r3, #8]
    23fa:	4b11      	ldr	r3, [pc, #68]	; (2440 <move_balls+0x1fa>)
    23fc:	69db      	ldr	r3, [r3, #28]
    23fe:	429a      	cmp	r2, r3
    2400:	d009      	beq.n	2416 <move_balls+0x1d0>
    2402:	4b0f      	ldr	r3, [pc, #60]	; (2440 <move_balls+0x1fa>)
    2404:	689b      	ldr	r3, [r3, #8]
    2406:	607b      	str	r3, [r7, #4]
    2408:	4b0d      	ldr	r3, [pc, #52]	; (2440 <move_balls+0x1fa>)
    240a:	69db      	ldr	r3, [r3, #28]
    240c:	4a0c      	ldr	r2, [pc, #48]	; (2440 <move_balls+0x1fa>)
    240e:	6093      	str	r3, [r2, #8]
    2410:	4a0b      	ldr	r2, [pc, #44]	; (2440 <move_balls+0x1fa>)
    2412:	687b      	ldr	r3, [r7, #4]
    2414:	61d3      	str	r3, [r2, #28]
    2416:	4b0a      	ldr	r3, [pc, #40]	; (2440 <move_balls+0x1fa>)
    2418:	68da      	ldr	r2, [r3, #12]
    241a:	4b09      	ldr	r3, [pc, #36]	; (2440 <move_balls+0x1fa>)
    241c:	6a1b      	ldr	r3, [r3, #32]
    241e:	429a      	cmp	r2, r3
    2420:	d009      	beq.n	2436 <move_balls+0x1f0>
    2422:	4b07      	ldr	r3, [pc, #28]	; (2440 <move_balls+0x1fa>)
    2424:	68db      	ldr	r3, [r3, #12]
    2426:	607b      	str	r3, [r7, #4]
    2428:	4b05      	ldr	r3, [pc, #20]	; (2440 <move_balls+0x1fa>)
    242a:	6a1b      	ldr	r3, [r3, #32]
    242c:	4a04      	ldr	r2, [pc, #16]	; (2440 <move_balls+0x1fa>)
    242e:	60d3      	str	r3, [r2, #12]
    2430:	4a03      	ldr	r2, [pc, #12]	; (2440 <move_balls+0x1fa>)
    2432:	687b      	ldr	r3, [r7, #4]
    2434:	6213      	str	r3, [r2, #32]
    2436:	bf00      	nop
    2438:	3708      	adds	r7, #8
    243a:	46bd      	mov	sp, r7
    243c:	bd80      	pop	{r7, pc}
    243e:	bf00      	nop
    2440:	20002508 	.word	0x20002508
    2444:	2000251c 	.word	0x2000251c

00002448 <init_balls>:
    2448:	b580      	push	{r7, lr}
    244a:	b082      	sub	sp, #8
    244c:	af00      	add	r7, sp, #0
    244e:	f002 f863 	bl	4518 <get_video_params>
    2452:	6038      	str	r0, [r7, #0]
    2454:	2300      	movs	r3, #0
    2456:	607b      	str	r3, [r7, #4]
    2458:	e048      	b.n	24ec <init_balls+0xa4>
    245a:	f7fe f851 	bl	500 <rand>
    245e:	4603      	mov	r3, r0
    2460:	683a      	ldr	r2, [r7, #0]
    2462:	8992      	ldrh	r2, [r2, #12]
    2464:	fb93 f1f2 	sdiv	r1, r3, r2
    2468:	fb02 f201 	mul.w	r2, r2, r1
    246c:	1a99      	subs	r1, r3, r2
    246e:	4823      	ldr	r0, [pc, #140]	; (24fc <init_balls+0xb4>)
    2470:	687a      	ldr	r2, [r7, #4]
    2472:	4613      	mov	r3, r2
    2474:	009b      	lsls	r3, r3, #2
    2476:	4413      	add	r3, r2
    2478:	009b      	lsls	r3, r3, #2
    247a:	4403      	add	r3, r0
    247c:	6019      	str	r1, [r3, #0]
    247e:	f7fe f83f 	bl	500 <rand>
    2482:	4602      	mov	r2, r0
    2484:	683b      	ldr	r3, [r7, #0]
    2486:	89db      	ldrh	r3, [r3, #14]
    2488:	3b10      	subs	r3, #16
    248a:	fb92 f1f3 	sdiv	r1, r2, r3
    248e:	fb03 f301 	mul.w	r3, r3, r1
    2492:	1ad3      	subs	r3, r2, r3
    2494:	f103 0110 	add.w	r1, r3, #16
    2498:	4818      	ldr	r0, [pc, #96]	; (24fc <init_balls+0xb4>)
    249a:	687a      	ldr	r2, [r7, #4]
    249c:	4613      	mov	r3, r2
    249e:	009b      	lsls	r3, r3, #2
    24a0:	4413      	add	r3, r2
    24a2:	009b      	lsls	r3, r3, #2
    24a4:	4403      	add	r3, r0
    24a6:	3304      	adds	r3, #4
    24a8:	6019      	str	r1, [r3, #0]
    24aa:	4914      	ldr	r1, [pc, #80]	; (24fc <init_balls+0xb4>)
    24ac:	687a      	ldr	r2, [r7, #4]
    24ae:	4613      	mov	r3, r2
    24b0:	009b      	lsls	r3, r3, #2
    24b2:	4413      	add	r3, r2
    24b4:	009b      	lsls	r3, r3, #2
    24b6:	440b      	add	r3, r1
    24b8:	3308      	adds	r3, #8
    24ba:	2201      	movs	r2, #1
    24bc:	601a      	str	r2, [r3, #0]
    24be:	490f      	ldr	r1, [pc, #60]	; (24fc <init_balls+0xb4>)
    24c0:	687a      	ldr	r2, [r7, #4]
    24c2:	4613      	mov	r3, r2
    24c4:	009b      	lsls	r3, r3, #2
    24c6:	4413      	add	r3, r2
    24c8:	009b      	lsls	r3, r3, #2
    24ca:	440b      	add	r3, r1
    24cc:	330c      	adds	r3, #12
    24ce:	2201      	movs	r2, #1
    24d0:	601a      	str	r2, [r3, #0]
    24d2:	490a      	ldr	r1, [pc, #40]	; (24fc <init_balls+0xb4>)
    24d4:	687a      	ldr	r2, [r7, #4]
    24d6:	4613      	mov	r3, r2
    24d8:	009b      	lsls	r3, r3, #2
    24da:	4413      	add	r3, r2
    24dc:	009b      	lsls	r3, r3, #2
    24de:	440b      	add	r3, r1
    24e0:	3310      	adds	r3, #16
    24e2:	4a07      	ldr	r2, [pc, #28]	; (2500 <init_balls+0xb8>)
    24e4:	601a      	str	r2, [r3, #0]
    24e6:	687b      	ldr	r3, [r7, #4]
    24e8:	3301      	adds	r3, #1
    24ea:	607b      	str	r3, [r7, #4]
    24ec:	687b      	ldr	r3, [r7, #4]
    24ee:	2b01      	cmp	r3, #1
    24f0:	ddb3      	ble.n	245a <init_balls+0x12>
    24f2:	bf00      	nop
    24f4:	3708      	adds	r7, #8
    24f6:	46bd      	mov	sp, r7
    24f8:	bd80      	pop	{r7, pc}
    24fa:	bf00      	nop
    24fc:	20002508 	.word	0x20002508
    2500:	000049ac 	.word	0x000049ac

00002504 <color_bars>:
    2504:	b580      	push	{r7, lr}
    2506:	b084      	sub	sp, #16
    2508:	af00      	add	r7, sp, #0
    250a:	2300      	movs	r3, #0
    250c:	71fb      	strb	r3, [r7, #7]
    250e:	f002 f803 	bl	4518 <get_video_params>
    2512:	6038      	str	r0, [r7, #0]
    2514:	683b      	ldr	r3, [r7, #0]
    2516:	89db      	ldrh	r3, [r3, #14]
    2518:	089b      	lsrs	r3, r3, #2
    251a:	b29b      	uxth	r3, r3
    251c:	461a      	mov	r2, r3
    251e:	4613      	mov	r3, r2
    2520:	005b      	lsls	r3, r3, #1
    2522:	4413      	add	r3, r2
    2524:	60bb      	str	r3, [r7, #8]
    2526:	e01b      	b.n	2560 <color_bars+0x5c>
    2528:	2310      	movs	r3, #16
    252a:	71fb      	strb	r3, [r7, #7]
    252c:	2300      	movs	r3, #0
    252e:	60fb      	str	r3, [r7, #12]
    2530:	e010      	b.n	2554 <color_bars+0x50>
    2532:	68fb      	ldr	r3, [r7, #12]
    2534:	f003 0307 	and.w	r3, r3, #7
    2538:	2b00      	cmp	r3, #0
    253a:	d102      	bne.n	2542 <color_bars+0x3e>
    253c:	79fb      	ldrb	r3, [r7, #7]
    253e:	3b01      	subs	r3, #1
    2540:	71fb      	strb	r3, [r7, #7]
    2542:	79fb      	ldrb	r3, [r7, #7]
    2544:	461a      	mov	r2, r3
    2546:	68b9      	ldr	r1, [r7, #8]
    2548:	68f8      	ldr	r0, [r7, #12]
    254a:	f7ff fba7 	bl	1c9c <gfx_plot>
    254e:	68fb      	ldr	r3, [r7, #12]
    2550:	3301      	adds	r3, #1
    2552:	60fb      	str	r3, [r7, #12]
    2554:	68fb      	ldr	r3, [r7, #12]
    2556:	2b7f      	cmp	r3, #127	; 0x7f
    2558:	ddeb      	ble.n	2532 <color_bars+0x2e>
    255a:	68bb      	ldr	r3, [r7, #8]
    255c:	3301      	adds	r3, #1
    255e:	60bb      	str	r3, [r7, #8]
    2560:	683b      	ldr	r3, [r7, #0]
    2562:	89db      	ldrh	r3, [r3, #14]
    2564:	461a      	mov	r2, r3
    2566:	68bb      	ldr	r3, [r7, #8]
    2568:	429a      	cmp	r2, r3
    256a:	dcdd      	bgt.n	2528 <color_bars+0x24>
    256c:	bf00      	nop
    256e:	3710      	adds	r7, #16
    2570:	46bd      	mov	sp, r7
    2572:	bd80      	pop	{r7, pc}

00002574 <vertical_bars>:
    2574:	b580      	push	{r7, lr}
    2576:	b082      	sub	sp, #8
    2578:	af00      	add	r7, sp, #0
    257a:	f001 ffcd 	bl	4518 <get_video_params>
    257e:	6038      	str	r0, [r7, #0]
    2580:	2310      	movs	r3, #16
    2582:	607b      	str	r3, [r7, #4]
    2584:	e00f      	b.n	25a6 <vertical_bars+0x32>
    2586:	220f      	movs	r2, #15
    2588:	6879      	ldr	r1, [r7, #4]
    258a:	2000      	movs	r0, #0
    258c:	f7ff fb86 	bl	1c9c <gfx_plot>
    2590:	683b      	ldr	r3, [r7, #0]
    2592:	899b      	ldrh	r3, [r3, #12]
    2594:	3b01      	subs	r3, #1
    2596:	220f      	movs	r2, #15
    2598:	6879      	ldr	r1, [r7, #4]
    259a:	4618      	mov	r0, r3
    259c:	f7ff fb7e 	bl	1c9c <gfx_plot>
    25a0:	687b      	ldr	r3, [r7, #4]
    25a2:	3301      	adds	r3, #1
    25a4:	607b      	str	r3, [r7, #4]
    25a6:	683b      	ldr	r3, [r7, #0]
    25a8:	89db      	ldrh	r3, [r3, #14]
    25aa:	461a      	mov	r2, r3
    25ac:	687b      	ldr	r3, [r7, #4]
    25ae:	429a      	cmp	r2, r3
    25b0:	dce9      	bgt.n	2586 <vertical_bars+0x12>
    25b2:	bf00      	nop
    25b4:	3708      	adds	r7, #8
    25b6:	46bd      	mov	sp, r7
    25b8:	bd80      	pop	{r7, pc}

000025ba <video_test>:
    25ba:	b580      	push	{r7, lr}
    25bc:	b082      	sub	sp, #8
    25be:	af00      	add	r7, sp, #0
    25c0:	2300      	movs	r3, #0
    25c2:	71fb      	strb	r3, [r7, #7]
    25c4:	79fb      	ldrb	r3, [r7, #7]
    25c6:	4618      	mov	r0, r3
    25c8:	f001 ff94 	bl	44f4 <set_video_mode>
    25cc:	f7ff ff9a 	bl	2504 <color_bars>
    25d0:	f7ff ffd0 	bl	2574 <vertical_bars>
    25d4:	4b2f      	ldr	r3, [pc, #188]	; (2694 <video_test+0xda>)
    25d6:	2110      	movs	r1, #16
    25d8:	4618      	mov	r0, r3
    25da:	f001 fbaf 	bl	3d3c <print_int>
    25de:	4b2e      	ldr	r3, [pc, #184]	; (2698 <video_test+0xde>)
    25e0:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    25e4:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    25e8:	210a      	movs	r1, #10
    25ea:	4618      	mov	r0, r3
    25ec:	f001 fba6 	bl	3d3c <print_int>
    25f0:	f7ff ff2a 	bl	2448 <init_balls>
    25f4:	2300      	movs	r3, #0
    25f6:	71fb      	strb	r3, [r7, #7]
    25f8:	f7ff fdb0 	bl	215c <draw_balls>
    25fc:	f7ff fdae 	bl	215c <draw_balls>
    2600:	f7ff fe21 	bl	2246 <move_balls>
    2604:	2010      	movs	r0, #16
    2606:	f7fe ff69 	bl	14dc <btn_query_down>
    260a:	4603      	mov	r3, r0
    260c:	2b00      	cmp	r3, #0
    260e:	d033      	beq.n	2678 <video_test+0xbe>
    2610:	79fb      	ldrb	r3, [r7, #7]
    2612:	3301      	adds	r3, #1
    2614:	71fb      	strb	r3, [r7, #7]
    2616:	79fb      	ldrb	r3, [r7, #7]
    2618:	f003 0303 	and.w	r3, r3, #3
    261c:	71fb      	strb	r3, [r7, #7]
    261e:	79fb      	ldrb	r3, [r7, #7]
    2620:	4618      	mov	r0, r3
    2622:	f001 ff67 	bl	44f4 <set_video_mode>
    2626:	79fb      	ldrb	r3, [r7, #7]
    2628:	2b03      	cmp	r3, #3
    262a:	d81d      	bhi.n	2668 <video_test+0xae>
    262c:	a201      	add	r2, pc, #4	; (adr r2, 2634 <video_test+0x7a>)
    262e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2632:	bf00      	nop
    2634:	00002645 	.word	0x00002645
    2638:	00002651 	.word	0x00002651
    263c:	00002659 	.word	0x00002659
    2640:	00002661 	.word	0x00002661
    2644:	4815      	ldr	r0, [pc, #84]	; (269c <video_test+0xe2>)
    2646:	f001 fb49 	bl	3cdc <print>
    264a:	f7ff ff5b 	bl	2504 <color_bars>
    264e:	e00b      	b.n	2668 <video_test+0xae>
    2650:	4813      	ldr	r0, [pc, #76]	; (26a0 <video_test+0xe6>)
    2652:	f001 fb43 	bl	3cdc <print>
    2656:	e007      	b.n	2668 <video_test+0xae>
    2658:	4812      	ldr	r0, [pc, #72]	; (26a4 <video_test+0xea>)
    265a:	f001 fb3f 	bl	3cdc <print>
    265e:	e003      	b.n	2668 <video_test+0xae>
    2660:	4811      	ldr	r0, [pc, #68]	; (26a8 <video_test+0xee>)
    2662:	f001 fb3b 	bl	3cdc <print>
    2666:	bf00      	nop
    2668:	f7ff ff84 	bl	2574 <vertical_bars>
    266c:	f7ff feec 	bl	2448 <init_balls>
    2670:	2010      	movs	r0, #16
    2672:	f7fe ff6d 	bl	1550 <btn_wait_up>
    2676:	e7bf      	b.n	25f8 <video_test+0x3e>
    2678:	2004      	movs	r0, #4
    267a:	f7fe ff2f 	bl	14dc <btn_query_down>
    267e:	4603      	mov	r3, r0
    2680:	2b00      	cmp	r3, #0
    2682:	d0b9      	beq.n	25f8 <video_test+0x3e>
    2684:	2004      	movs	r0, #4
    2686:	f7fe ff63 	bl	1550 <btn_wait_up>
    268a:	bf00      	nop
    268c:	bf00      	nop
    268e:	3708      	adds	r7, #8
    2690:	46bd      	mov	sp, r7
    2692:	bd80      	pop	{r7, pc}
    2694:	00004c00 	.word	0x00004c00
    2698:	20004ca0 	.word	0x20004ca0
    269c:	000049cc 	.word	0x000049cc
    26a0:	000049ec 	.word	0x000049ec
    26a4:	00004a08 	.word	0x00004a08
    26a8:	00004a20 	.word	0x00004a20

000026ac <select_vmode>:
    26ac:	b580      	push	{r7, lr}
    26ae:	af00      	add	r7, sp, #0
    26b0:	f7ff fb8a 	bl	1dc8 <gfx_cls>
    26b4:	4803      	ldr	r0, [pc, #12]	; (26c4 <select_vmode+0x18>)
    26b6:	f001 fb34 	bl	3d22 <println>
    26ba:	203c      	movs	r0, #60	; 0x3c
    26bc:	f001 ff40 	bl	4540 <game_pause>
    26c0:	bf00      	nop
    26c2:	bd80      	pop	{r7, pc}
    26c4:	00004a38 	.word	0x00004a38

000026c8 <select_game>:
    26c8:	b580      	push	{r7, lr}
    26ca:	af00      	add	r7, sp, #0
    26cc:	f7ff fb7c 	bl	1dc8 <gfx_cls>
    26d0:	4803      	ldr	r0, [pc, #12]	; (26e0 <select_game+0x18>)
    26d2:	f001 fb26 	bl	3d22 <println>
    26d6:	203c      	movs	r0, #60	; 0x3c
    26d8:	f001 ff32 	bl	4540 <game_pause>
    26dc:	bf00      	nop
    26de:	bd80      	pop	{r7, pc}
    26e0:	00004a44 	.word	0x00004a44

000026e4 <display_menu>:
    26e4:	b580      	push	{r7, lr}
    26e6:	b082      	sub	sp, #8
    26e8:	af00      	add	r7, sp, #0
    26ea:	f7ff fb6d 	bl	1dc8 <gfx_cls>
    26ee:	2300      	movs	r3, #0
    26f0:	607b      	str	r3, [r7, #4]
    26f2:	e009      	b.n	2708 <display_menu+0x24>
    26f4:	4a08      	ldr	r2, [pc, #32]	; (2718 <display_menu+0x34>)
    26f6:	687b      	ldr	r3, [r7, #4]
    26f8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    26fc:	4618      	mov	r0, r3
    26fe:	f001 fb10 	bl	3d22 <println>
    2702:	687b      	ldr	r3, [r7, #4]
    2704:	3301      	adds	r3, #1
    2706:	607b      	str	r3, [r7, #4]
    2708:	687b      	ldr	r3, [r7, #4]
    270a:	2b02      	cmp	r3, #2
    270c:	ddf2      	ble.n	26f4 <display_menu+0x10>
    270e:	bf00      	nop
    2710:	3708      	adds	r7, #8
    2712:	46bd      	mov	sp, r7
    2714:	bd80      	pop	{r7, pc}
    2716:	bf00      	nop
    2718:	20000004 	.word	0x20000004

0000271c <menu>:
    271c:	b580      	push	{r7, lr}
    271e:	b084      	sub	sp, #16
    2720:	af00      	add	r7, sp, #0
    2722:	2300      	movs	r3, #0
    2724:	60fb      	str	r3, [r7, #12]
    2726:	f001 fef7 	bl	4518 <get_video_params>
    272a:	60b8      	str	r0, [r7, #8]
    272c:	f7ff ffda 	bl	26e4 <display_menu>
    2730:	68fb      	ldr	r3, [r7, #12]
    2732:	b2db      	uxtb	r3, r3
    2734:	00db      	lsls	r3, r3, #3
    2736:	b2db      	uxtb	r3, r3
    2738:	4619      	mov	r1, r3
    273a:	2000      	movs	r0, #0
    273c:	f001 faa2 	bl	3c84 <set_cursor>
    2740:	203e      	movs	r0, #62	; 0x3e
    2742:	f001 fa13 	bl	3b6c <put_char>
    2746:	f7fe ff25 	bl	1594 <btn_wait_any>
    274a:	4603      	mov	r3, r0
    274c:	71fb      	strb	r3, [r7, #7]
    274e:	79fb      	ldrb	r3, [r7, #7]
    2750:	4618      	mov	r0, r3
    2752:	f7fe fefd 	bl	1550 <btn_wait_up>
    2756:	68fb      	ldr	r3, [r7, #12]
    2758:	b2db      	uxtb	r3, r3
    275a:	00db      	lsls	r3, r3, #3
    275c:	b2db      	uxtb	r3, r3
    275e:	4619      	mov	r1, r3
    2760:	2000      	movs	r0, #0
    2762:	f001 fa8f 	bl	3c84 <set_cursor>
    2766:	2020      	movs	r0, #32
    2768:	f001 fa00 	bl	3b6c <put_char>
    276c:	79fb      	ldrb	r3, [r7, #7]
    276e:	2b20      	cmp	r3, #32
    2770:	d00b      	beq.n	278a <menu+0x6e>
    2772:	2b80      	cmp	r3, #128	; 0x80
    2774:	d002      	beq.n	277c <menu+0x60>
    2776:	2b04      	cmp	r3, #4
    2778:	d00e      	beq.n	2798 <menu+0x7c>
    277a:	e023      	b.n	27c4 <menu+0xa8>
    277c:	68fb      	ldr	r3, [r7, #12]
    277e:	2b00      	cmp	r3, #0
    2780:	d01d      	beq.n	27be <menu+0xa2>
    2782:	68fb      	ldr	r3, [r7, #12]
    2784:	3b01      	subs	r3, #1
    2786:	60fb      	str	r3, [r7, #12]
    2788:	e019      	b.n	27be <menu+0xa2>
    278a:	68fb      	ldr	r3, [r7, #12]
    278c:	2b01      	cmp	r3, #1
    278e:	dc18      	bgt.n	27c2 <menu+0xa6>
    2790:	68fb      	ldr	r3, [r7, #12]
    2792:	3301      	adds	r3, #1
    2794:	60fb      	str	r3, [r7, #12]
    2796:	e014      	b.n	27c2 <menu+0xa6>
    2798:	68fb      	ldr	r3, [r7, #12]
    279a:	2b01      	cmp	r3, #1
    279c:	d006      	beq.n	27ac <menu+0x90>
    279e:	2b02      	cmp	r3, #2
    27a0:	d007      	beq.n	27b2 <menu+0x96>
    27a2:	2b00      	cmp	r3, #0
    27a4:	d108      	bne.n	27b8 <menu+0x9c>
    27a6:	f7ff ff81 	bl	26ac <select_vmode>
    27aa:	e005      	b.n	27b8 <menu+0x9c>
    27ac:	f7ff ff8c 	bl	26c8 <select_game>
    27b0:	e002      	b.n	27b8 <menu+0x9c>
    27b2:	f7ff ff02 	bl	25ba <video_test>
    27b6:	bf00      	nop
    27b8:	f7ff ff94 	bl	26e4 <display_menu>
    27bc:	e002      	b.n	27c4 <menu+0xa8>
    27be:	bf00      	nop
    27c0:	e7b6      	b.n	2730 <menu+0x14>
    27c2:	bf00      	nop
    27c4:	e7b4      	b.n	2730 <menu+0x14>

000027c6 <main>:
    27c6:	b580      	push	{r7, lr}
    27c8:	af00      	add	r7, sp, #0
    27ca:	f7ff fc8f 	bl	20ec <set_sysclock>
    27ce:	4b0c      	ldr	r3, [pc, #48]	; (2800 <main+0x3a>)
    27d0:	f640 021d 	movw	r2, #2077	; 0x81d
    27d4:	619a      	str	r2, [r3, #24]
    27d6:	2206      	movs	r2, #6
    27d8:	210d      	movs	r1, #13
    27da:	480a      	ldr	r0, [pc, #40]	; (2804 <main+0x3e>)
    27dc:	f7ff f96f 	bl	1abe <config_pin>
    27e0:	4a08      	ldr	r2, [pc, #32]	; (2804 <main+0x3e>)
    27e2:	4b08      	ldr	r3, [pc, #32]	; (2804 <main+0x3e>)
    27e4:	68db      	ldr	r3, [r3, #12]
    27e6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    27ea:	60d3      	str	r3, [r2, #12]
    27ec:	f7fe fdf0 	bl	13d0 <gamepad_init>
    27f0:	f001 fbe8 	bl	3fc4 <tvout_init>
    27f4:	f7ff fae8 	bl	1dc8 <gfx_cls>
    27f8:	f7ff ff90 	bl	271c <menu>
    27fc:	bf00      	nop
    27fe:	bd80      	pop	{r7, pc}
    2800:	40021000 	.word	0x40021000
    2804:	40011000 	.word	0x40011000

00002808 <enable_interrupt>:
    2808:	b480      	push	{r7}
    280a:	b083      	sub	sp, #12
    280c:	af00      	add	r7, sp, #0
    280e:	6078      	str	r0, [r7, #4]
    2810:	687b      	ldr	r3, [r7, #4]
    2812:	2b3b      	cmp	r3, #59	; 0x3b
    2814:	dc17      	bgt.n	2846 <enable_interrupt+0x3e>
    2816:	687b      	ldr	r3, [r7, #4]
    2818:	115b      	asrs	r3, r3, #5
    281a:	009b      	lsls	r3, r3, #2
    281c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2820:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    2824:	687a      	ldr	r2, [r7, #4]
    2826:	1152      	asrs	r2, r2, #5
    2828:	0092      	lsls	r2, r2, #2
    282a:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    282e:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    2832:	6812      	ldr	r2, [r2, #0]
    2834:	6879      	ldr	r1, [r7, #4]
    2836:	f001 011f 	and.w	r1, r1, #31
    283a:	2001      	movs	r0, #1
    283c:	fa00 f101 	lsl.w	r1, r0, r1
    2840:	430a      	orrs	r2, r1
    2842:	601a      	str	r2, [r3, #0]
    2844:	e000      	b.n	2848 <enable_interrupt+0x40>
    2846:	bf00      	nop
    2848:	370c      	adds	r7, #12
    284a:	46bd      	mov	sp, r7
    284c:	bc80      	pop	{r7}
    284e:	4770      	bx	lr

00002850 <disable_interrupt>:
    2850:	b480      	push	{r7}
    2852:	b083      	sub	sp, #12
    2854:	af00      	add	r7, sp, #0
    2856:	6078      	str	r0, [r7, #4]
    2858:	687b      	ldr	r3, [r7, #4]
    285a:	2b3b      	cmp	r3, #59	; 0x3b
    285c:	dc0c      	bgt.n	2878 <disable_interrupt+0x28>
    285e:	687b      	ldr	r3, [r7, #4]
    2860:	115b      	asrs	r3, r3, #5
    2862:	009a      	lsls	r2, r3, #2
    2864:	4b07      	ldr	r3, [pc, #28]	; (2884 <disable_interrupt+0x34>)
    2866:	4413      	add	r3, r2
    2868:	687a      	ldr	r2, [r7, #4]
    286a:	f002 021f 	and.w	r2, r2, #31
    286e:	2101      	movs	r1, #1
    2870:	fa01 f202 	lsl.w	r2, r1, r2
    2874:	601a      	str	r2, [r3, #0]
    2876:	e000      	b.n	287a <disable_interrupt+0x2a>
    2878:	bf00      	nop
    287a:	370c      	adds	r7, #12
    287c:	46bd      	mov	sp, r7
    287e:	bc80      	pop	{r7}
    2880:	4770      	bx	lr
    2882:	bf00      	nop
    2884:	e000e180 	.word	0xe000e180

00002888 <get_pending>:
    2888:	b480      	push	{r7}
    288a:	b083      	sub	sp, #12
    288c:	af00      	add	r7, sp, #0
    288e:	6078      	str	r0, [r7, #4]
    2890:	687b      	ldr	r3, [r7, #4]
    2892:	2b3b      	cmp	r3, #59	; 0x3b
    2894:	dd01      	ble.n	289a <get_pending+0x12>
    2896:	2300      	movs	r3, #0
    2898:	e00c      	b.n	28b4 <get_pending+0x2c>
    289a:	687b      	ldr	r3, [r7, #4]
    289c:	115b      	asrs	r3, r3, #5
    289e:	009a      	lsls	r2, r3, #2
    28a0:	4b07      	ldr	r3, [pc, #28]	; (28c0 <get_pending+0x38>)
    28a2:	4413      	add	r3, r2
    28a4:	681b      	ldr	r3, [r3, #0]
    28a6:	687a      	ldr	r2, [r7, #4]
    28a8:	f002 021f 	and.w	r2, r2, #31
    28ac:	2101      	movs	r1, #1
    28ae:	fa01 f202 	lsl.w	r2, r1, r2
    28b2:	4013      	ands	r3, r2
    28b4:	4618      	mov	r0, r3
    28b6:	370c      	adds	r7, #12
    28b8:	46bd      	mov	sp, r7
    28ba:	bc80      	pop	{r7}
    28bc:	4770      	bx	lr
    28be:	bf00      	nop
    28c0:	e000e280 	.word	0xe000e280

000028c4 <get_active>:
    28c4:	b480      	push	{r7}
    28c6:	b083      	sub	sp, #12
    28c8:	af00      	add	r7, sp, #0
    28ca:	6078      	str	r0, [r7, #4]
    28cc:	687b      	ldr	r3, [r7, #4]
    28ce:	2b3b      	cmp	r3, #59	; 0x3b
    28d0:	dd01      	ble.n	28d6 <get_active+0x12>
    28d2:	2300      	movs	r3, #0
    28d4:	e00e      	b.n	28f4 <get_active+0x30>
    28d6:	687b      	ldr	r3, [r7, #4]
    28d8:	115b      	asrs	r3, r3, #5
    28da:	009b      	lsls	r3, r3, #2
    28dc:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    28e0:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    28e4:	681b      	ldr	r3, [r3, #0]
    28e6:	687a      	ldr	r2, [r7, #4]
    28e8:	f002 021f 	and.w	r2, r2, #31
    28ec:	2101      	movs	r1, #1
    28ee:	fa01 f202 	lsl.w	r2, r1, r2
    28f2:	4013      	ands	r3, r2
    28f4:	4618      	mov	r0, r3
    28f6:	370c      	adds	r7, #12
    28f8:	46bd      	mov	sp, r7
    28fa:	bc80      	pop	{r7}
    28fc:	4770      	bx	lr

000028fe <set_pending>:
    28fe:	b480      	push	{r7}
    2900:	b083      	sub	sp, #12
    2902:	af00      	add	r7, sp, #0
    2904:	6078      	str	r0, [r7, #4]
    2906:	687b      	ldr	r3, [r7, #4]
    2908:	2b3b      	cmp	r3, #59	; 0x3b
    290a:	dc17      	bgt.n	293c <set_pending+0x3e>
    290c:	687b      	ldr	r3, [r7, #4]
    290e:	115b      	asrs	r3, r3, #5
    2910:	009b      	lsls	r3, r3, #2
    2912:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2916:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    291a:	687a      	ldr	r2, [r7, #4]
    291c:	1152      	asrs	r2, r2, #5
    291e:	0092      	lsls	r2, r2, #2
    2920:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    2924:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    2928:	6812      	ldr	r2, [r2, #0]
    292a:	6879      	ldr	r1, [r7, #4]
    292c:	f001 011f 	and.w	r1, r1, #31
    2930:	2001      	movs	r0, #1
    2932:	fa00 f101 	lsl.w	r1, r0, r1
    2936:	430a      	orrs	r2, r1
    2938:	601a      	str	r2, [r3, #0]
    293a:	e000      	b.n	293e <set_pending+0x40>
    293c:	bf00      	nop
    293e:	370c      	adds	r7, #12
    2940:	46bd      	mov	sp, r7
    2942:	bc80      	pop	{r7}
    2944:	4770      	bx	lr

00002946 <clear_pending>:
    2946:	b480      	push	{r7}
    2948:	b083      	sub	sp, #12
    294a:	af00      	add	r7, sp, #0
    294c:	6078      	str	r0, [r7, #4]
    294e:	687b      	ldr	r3, [r7, #4]
    2950:	2b3b      	cmp	r3, #59	; 0x3b
    2952:	dc0c      	bgt.n	296e <clear_pending+0x28>
    2954:	687b      	ldr	r3, [r7, #4]
    2956:	115b      	asrs	r3, r3, #5
    2958:	009a      	lsls	r2, r3, #2
    295a:	4b07      	ldr	r3, [pc, #28]	; (2978 <clear_pending+0x32>)
    295c:	4413      	add	r3, r2
    295e:	687a      	ldr	r2, [r7, #4]
    2960:	f002 021f 	and.w	r2, r2, #31
    2964:	2101      	movs	r1, #1
    2966:	fa01 f202 	lsl.w	r2, r1, r2
    296a:	601a      	str	r2, [r3, #0]
    296c:	e000      	b.n	2970 <clear_pending+0x2a>
    296e:	bf00      	nop
    2970:	370c      	adds	r7, #12
    2972:	46bd      	mov	sp, r7
    2974:	bc80      	pop	{r7}
    2976:	4770      	bx	lr
    2978:	e000e280 	.word	0xe000e280

0000297c <set_int_priority>:
    297c:	b480      	push	{r7}
    297e:	b083      	sub	sp, #12
    2980:	af00      	add	r7, sp, #0
    2982:	6078      	str	r0, [r7, #4]
    2984:	6039      	str	r1, [r7, #0]
    2986:	687b      	ldr	r3, [r7, #4]
    2988:	2b00      	cmp	r3, #0
    298a:	db0d      	blt.n	29a8 <set_int_priority+0x2c>
    298c:	687b      	ldr	r3, [r7, #4]
    298e:	2b3b      	cmp	r3, #59	; 0x3b
    2990:	dc0a      	bgt.n	29a8 <set_int_priority+0x2c>
    2992:	687b      	ldr	r3, [r7, #4]
    2994:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    2998:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    299c:	683a      	ldr	r2, [r7, #0]
    299e:	b2d2      	uxtb	r2, r2
    29a0:	0112      	lsls	r2, r2, #4
    29a2:	b2d2      	uxtb	r2, r2
    29a4:	701a      	strb	r2, [r3, #0]
    29a6:	e012      	b.n	29ce <set_int_priority+0x52>
    29a8:	687b      	ldr	r3, [r7, #4]
    29aa:	2b00      	cmp	r3, #0
    29ac:	da0f      	bge.n	29ce <set_int_priority+0x52>
    29ae:	687b      	ldr	r3, [r7, #4]
    29b0:	f113 0f0f 	cmn.w	r3, #15
    29b4:	db0b      	blt.n	29ce <set_int_priority+0x52>
    29b6:	687a      	ldr	r2, [r7, #4]
    29b8:	f06f 0303 	mvn.w	r3, #3
    29bc:	1a9b      	subs	r3, r3, r2
    29be:	461a      	mov	r2, r3
    29c0:	4b05      	ldr	r3, [pc, #20]	; (29d8 <set_int_priority+0x5c>)
    29c2:	4413      	add	r3, r2
    29c4:	683a      	ldr	r2, [r7, #0]
    29c6:	b2d2      	uxtb	r2, r2
    29c8:	0112      	lsls	r2, r2, #4
    29ca:	b2d2      	uxtb	r2, r2
    29cc:	701a      	strb	r2, [r3, #0]
    29ce:	bf00      	nop
    29d0:	370c      	adds	r7, #12
    29d2:	46bd      	mov	sp, r7
    29d4:	bc80      	pop	{r7}
    29d6:	4770      	bx	lr
    29d8:	e000ed18 	.word	0xe000ed18

000029dc <leap_year>:
    29dc:	b480      	push	{r7}
    29de:	b083      	sub	sp, #12
    29e0:	af00      	add	r7, sp, #0
    29e2:	6078      	str	r0, [r7, #4]
    29e4:	687b      	ldr	r3, [r7, #4]
    29e6:	f003 0303 	and.w	r3, r3, #3
    29ea:	2b00      	cmp	r3, #0
    29ec:	d11a      	bne.n	2a24 <leap_year+0x48>
    29ee:	687a      	ldr	r2, [r7, #4]
    29f0:	4b0f      	ldr	r3, [pc, #60]	; (2a30 <leap_year+0x54>)
    29f2:	fba3 1302 	umull	r1, r3, r3, r2
    29f6:	095b      	lsrs	r3, r3, #5
    29f8:	2164      	movs	r1, #100	; 0x64
    29fa:	fb01 f303 	mul.w	r3, r1, r3
    29fe:	1ad3      	subs	r3, r2, r3
    2a00:	2b00      	cmp	r3, #0
    2a02:	d10d      	bne.n	2a20 <leap_year+0x44>
    2a04:	687a      	ldr	r2, [r7, #4]
    2a06:	4b0a      	ldr	r3, [pc, #40]	; (2a30 <leap_year+0x54>)
    2a08:	fba3 1302 	umull	r1, r3, r3, r2
    2a0c:	09db      	lsrs	r3, r3, #7
    2a0e:	f44f 71c8 	mov.w	r1, #400	; 0x190
    2a12:	fb01 f303 	mul.w	r3, r1, r3
    2a16:	1ad3      	subs	r3, r2, r3
    2a18:	2b00      	cmp	r3, #0
    2a1a:	d001      	beq.n	2a20 <leap_year+0x44>
    2a1c:	2300      	movs	r3, #0
    2a1e:	e002      	b.n	2a26 <leap_year+0x4a>
    2a20:	2301      	movs	r3, #1
    2a22:	e000      	b.n	2a26 <leap_year+0x4a>
    2a24:	2300      	movs	r3, #0
    2a26:	4618      	mov	r0, r3
    2a28:	370c      	adds	r7, #12
    2a2a:	46bd      	mov	sp, r7
    2a2c:	bc80      	pop	{r7}
    2a2e:	4770      	bx	lr
    2a30:	51eb851f 	.word	0x51eb851f

00002a34 <sec_per_month>:
    2a34:	b480      	push	{r7}
    2a36:	b085      	sub	sp, #20
    2a38:	af00      	add	r7, sp, #0
    2a3a:	6078      	str	r0, [r7, #4]
    2a3c:	6039      	str	r1, [r7, #0]
    2a3e:	4a0d      	ldr	r2, [pc, #52]	; (2a74 <sec_per_month+0x40>)
    2a40:	683b      	ldr	r3, [r7, #0]
    2a42:	4413      	add	r3, r2
    2a44:	781b      	ldrb	r3, [r3, #0]
    2a46:	461a      	mov	r2, r3
    2a48:	4b0b      	ldr	r3, [pc, #44]	; (2a78 <sec_per_month+0x44>)
    2a4a:	fb03 f302 	mul.w	r3, r3, r2
    2a4e:	60fb      	str	r3, [r7, #12]
    2a50:	683b      	ldr	r3, [r7, #0]
    2a52:	2b02      	cmp	r3, #2
    2a54:	d108      	bne.n	2a68 <sec_per_month+0x34>
    2a56:	687b      	ldr	r3, [r7, #4]
    2a58:	2b00      	cmp	r3, #0
    2a5a:	d005      	beq.n	2a68 <sec_per_month+0x34>
    2a5c:	68fb      	ldr	r3, [r7, #12]
    2a5e:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    2a62:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    2a66:	60fb      	str	r3, [r7, #12]
    2a68:	68fb      	ldr	r3, [r7, #12]
    2a6a:	4618      	mov	r0, r3
    2a6c:	3714      	adds	r7, #20
    2a6e:	46bd      	mov	sp, r7
    2a70:	bc80      	pop	{r7}
    2a72:	4770      	bx	lr
    2a74:	00004b20 	.word	0x00004b20
    2a78:	00015180 	.word	0x00015180

00002a7c <get_date_time>:
    2a7c:	b580      	push	{r7, lr}
    2a7e:	b086      	sub	sp, #24
    2a80:	af00      	add	r7, sp, #0
    2a82:	6078      	str	r0, [r7, #4]
    2a84:	4b66      	ldr	r3, [pc, #408]	; (2c20 <get_date_time+0x1a4>)
    2a86:	699b      	ldr	r3, [r3, #24]
    2a88:	041a      	lsls	r2, r3, #16
    2a8a:	4b65      	ldr	r3, [pc, #404]	; (2c20 <get_date_time+0x1a4>)
    2a8c:	69db      	ldr	r3, [r3, #28]
    2a8e:	4413      	add	r3, r2
    2a90:	617b      	str	r3, [r7, #20]
    2a92:	687b      	ldr	r3, [r7, #4]
    2a94:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2a98:	811a      	strh	r2, [r3, #8]
    2a9a:	f240 70b2 	movw	r0, #1970	; 0x7b2
    2a9e:	f7ff ff9d 	bl	29dc <leap_year>
    2aa2:	6138      	str	r0, [r7, #16]
    2aa4:	e019      	b.n	2ada <get_date_time+0x5e>
    2aa6:	693b      	ldr	r3, [r7, #16]
    2aa8:	2b00      	cmp	r3, #0
    2aaa:	d006      	beq.n	2aba <get_date_time+0x3e>
    2aac:	697b      	ldr	r3, [r7, #20]
    2aae:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    2ab2:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    2ab6:	617b      	str	r3, [r7, #20]
    2ab8:	e003      	b.n	2ac2 <get_date_time+0x46>
    2aba:	697a      	ldr	r2, [r7, #20]
    2abc:	4b59      	ldr	r3, [pc, #356]	; (2c24 <get_date_time+0x1a8>)
    2abe:	4413      	add	r3, r2
    2ac0:	617b      	str	r3, [r7, #20]
    2ac2:	687b      	ldr	r3, [r7, #4]
    2ac4:	891b      	ldrh	r3, [r3, #8]
    2ac6:	3301      	adds	r3, #1
    2ac8:	b29a      	uxth	r2, r3
    2aca:	687b      	ldr	r3, [r7, #4]
    2acc:	811a      	strh	r2, [r3, #8]
    2ace:	687b      	ldr	r3, [r7, #4]
    2ad0:	891b      	ldrh	r3, [r3, #8]
    2ad2:	4618      	mov	r0, r3
    2ad4:	f7ff ff82 	bl	29dc <leap_year>
    2ad8:	6138      	str	r0, [r7, #16]
    2ada:	693b      	ldr	r3, [r7, #16]
    2adc:	2b00      	cmp	r3, #0
    2ade:	d103      	bne.n	2ae8 <get_date_time+0x6c>
    2ae0:	697b      	ldr	r3, [r7, #20]
    2ae2:	4a51      	ldr	r2, [pc, #324]	; (2c28 <get_date_time+0x1ac>)
    2ae4:	4293      	cmp	r3, r2
    2ae6:	d8de      	bhi.n	2aa6 <get_date_time+0x2a>
    2ae8:	693b      	ldr	r3, [r7, #16]
    2aea:	2b00      	cmp	r3, #0
    2aec:	d003      	beq.n	2af6 <get_date_time+0x7a>
    2aee:	697b      	ldr	r3, [r7, #20]
    2af0:	4a4e      	ldr	r2, [pc, #312]	; (2c2c <get_date_time+0x1b0>)
    2af2:	4293      	cmp	r3, r2
    2af4:	d8d7      	bhi.n	2aa6 <get_date_time+0x2a>
    2af6:	687a      	ldr	r2, [r7, #4]
    2af8:	8853      	ldrh	r3, [r2, #2]
    2afa:	2101      	movs	r1, #1
    2afc:	f361 1389 	bfi	r3, r1, #6, #4
    2b00:	8053      	strh	r3, [r2, #2]
    2b02:	687a      	ldr	r2, [r7, #4]
    2b04:	7893      	ldrb	r3, [r2, #2]
    2b06:	2101      	movs	r1, #1
    2b08:	f361 0345 	bfi	r3, r1, #1, #5
    2b0c:	7093      	strb	r3, [r2, #2]
    2b0e:	687a      	ldr	r2, [r7, #4]
    2b10:	6813      	ldr	r3, [r2, #0]
    2b12:	f36f 3310 	bfc	r3, #12, #5
    2b16:	6013      	str	r3, [r2, #0]
    2b18:	687a      	ldr	r2, [r7, #4]
    2b1a:	8813      	ldrh	r3, [r2, #0]
    2b1c:	f36f 138b 	bfc	r3, #6, #6
    2b20:	8013      	strh	r3, [r2, #0]
    2b22:	687a      	ldr	r2, [r7, #4]
    2b24:	7813      	ldrb	r3, [r2, #0]
    2b26:	f36f 0305 	bfc	r3, #0, #6
    2b2a:	7013      	strb	r3, [r2, #0]
    2b2c:	e011      	b.n	2b52 <get_date_time+0xd6>
    2b2e:	687b      	ldr	r3, [r7, #4]
    2b30:	885b      	ldrh	r3, [r3, #2]
    2b32:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2b36:	b2db      	uxtb	r3, r3
    2b38:	3301      	adds	r3, #1
    2b3a:	f003 030f 	and.w	r3, r3, #15
    2b3e:	b2d9      	uxtb	r1, r3
    2b40:	687a      	ldr	r2, [r7, #4]
    2b42:	8853      	ldrh	r3, [r2, #2]
    2b44:	f361 1389 	bfi	r3, r1, #6, #4
    2b48:	8053      	strh	r3, [r2, #2]
    2b4a:	697a      	ldr	r2, [r7, #20]
    2b4c:	68fb      	ldr	r3, [r7, #12]
    2b4e:	1ad3      	subs	r3, r2, r3
    2b50:	617b      	str	r3, [r7, #20]
    2b52:	687b      	ldr	r3, [r7, #4]
    2b54:	885b      	ldrh	r3, [r3, #2]
    2b56:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2b5a:	b2db      	uxtb	r3, r3
    2b5c:	4619      	mov	r1, r3
    2b5e:	6938      	ldr	r0, [r7, #16]
    2b60:	f7ff ff68 	bl	2a34 <sec_per_month>
    2b64:	60f8      	str	r0, [r7, #12]
    2b66:	68fa      	ldr	r2, [r7, #12]
    2b68:	697b      	ldr	r3, [r7, #20]
    2b6a:	429a      	cmp	r2, r3
    2b6c:	d3df      	bcc.n	2b2e <get_date_time+0xb2>
    2b6e:	697b      	ldr	r3, [r7, #20]
    2b70:	4a2f      	ldr	r2, [pc, #188]	; (2c30 <get_date_time+0x1b4>)
    2b72:	fba2 2303 	umull	r2, r3, r2, r3
    2b76:	0c1b      	lsrs	r3, r3, #16
    2b78:	b2db      	uxtb	r3, r3
    2b7a:	3301      	adds	r3, #1
    2b7c:	b2db      	uxtb	r3, r3
    2b7e:	f003 031f 	and.w	r3, r3, #31
    2b82:	b2d9      	uxtb	r1, r3
    2b84:	687a      	ldr	r2, [r7, #4]
    2b86:	7893      	ldrb	r3, [r2, #2]
    2b88:	f361 0345 	bfi	r3, r1, #1, #5
    2b8c:	7093      	strb	r3, [r2, #2]
    2b8e:	697b      	ldr	r3, [r7, #20]
    2b90:	4a27      	ldr	r2, [pc, #156]	; (2c30 <get_date_time+0x1b4>)
    2b92:	fba2 1203 	umull	r1, r2, r2, r3
    2b96:	0c12      	lsrs	r2, r2, #16
    2b98:	4926      	ldr	r1, [pc, #152]	; (2c34 <get_date_time+0x1b8>)
    2b9a:	fb01 f202 	mul.w	r2, r1, r2
    2b9e:	1a9b      	subs	r3, r3, r2
    2ba0:	617b      	str	r3, [r7, #20]
    2ba2:	697b      	ldr	r3, [r7, #20]
    2ba4:	4a24      	ldr	r2, [pc, #144]	; (2c38 <get_date_time+0x1bc>)
    2ba6:	fba2 2303 	umull	r2, r3, r2, r3
    2baa:	0adb      	lsrs	r3, r3, #11
    2bac:	b2db      	uxtb	r3, r3
    2bae:	f003 031f 	and.w	r3, r3, #31
    2bb2:	b2d9      	uxtb	r1, r3
    2bb4:	687a      	ldr	r2, [r7, #4]
    2bb6:	6813      	ldr	r3, [r2, #0]
    2bb8:	f361 3310 	bfi	r3, r1, #12, #5
    2bbc:	6013      	str	r3, [r2, #0]
    2bbe:	697b      	ldr	r3, [r7, #20]
    2bc0:	4a1d      	ldr	r2, [pc, #116]	; (2c38 <get_date_time+0x1bc>)
    2bc2:	fba2 1203 	umull	r1, r2, r2, r3
    2bc6:	0ad2      	lsrs	r2, r2, #11
    2bc8:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    2bcc:	fb01 f202 	mul.w	r2, r1, r2
    2bd0:	1a9b      	subs	r3, r3, r2
    2bd2:	617b      	str	r3, [r7, #20]
    2bd4:	697b      	ldr	r3, [r7, #20]
    2bd6:	4a19      	ldr	r2, [pc, #100]	; (2c3c <get_date_time+0x1c0>)
    2bd8:	fba2 2303 	umull	r2, r3, r2, r3
    2bdc:	095b      	lsrs	r3, r3, #5
    2bde:	b2db      	uxtb	r3, r3
    2be0:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2be4:	b2d9      	uxtb	r1, r3
    2be6:	687a      	ldr	r2, [r7, #4]
    2be8:	8813      	ldrh	r3, [r2, #0]
    2bea:	f361 138b 	bfi	r3, r1, #6, #6
    2bee:	8013      	strh	r3, [r2, #0]
    2bf0:	6979      	ldr	r1, [r7, #20]
    2bf2:	4b12      	ldr	r3, [pc, #72]	; (2c3c <get_date_time+0x1c0>)
    2bf4:	fba3 2301 	umull	r2, r3, r3, r1
    2bf8:	095a      	lsrs	r2, r3, #5
    2bfa:	4613      	mov	r3, r2
    2bfc:	011b      	lsls	r3, r3, #4
    2bfe:	1a9b      	subs	r3, r3, r2
    2c00:	009b      	lsls	r3, r3, #2
    2c02:	1aca      	subs	r2, r1, r3
    2c04:	b2d3      	uxtb	r3, r2
    2c06:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2c0a:	b2d9      	uxtb	r1, r3
    2c0c:	687a      	ldr	r2, [r7, #4]
    2c0e:	7813      	ldrb	r3, [r2, #0]
    2c10:	f361 0305 	bfi	r3, r1, #0, #6
    2c14:	7013      	strb	r3, [r2, #0]
    2c16:	bf00      	nop
    2c18:	3718      	adds	r7, #24
    2c1a:	46bd      	mov	sp, r7
    2c1c:	bd80      	pop	{r7, pc}
    2c1e:	bf00      	nop
    2c20:	40002800 	.word	0x40002800
    2c24:	fe1ecc80 	.word	0xfe1ecc80
    2c28:	01e1337f 	.word	0x01e1337f
    2c2c:	01e284ff 	.word	0x01e284ff
    2c30:	c22e4507 	.word	0xc22e4507
    2c34:	00015180 	.word	0x00015180
    2c38:	91a2b3c5 	.word	0x91a2b3c5
    2c3c:	88888889 	.word	0x88888889

00002c40 <set_date_time>:
    2c40:	b580      	push	{r7, lr}
    2c42:	b086      	sub	sp, #24
    2c44:	af00      	add	r7, sp, #0
    2c46:	6078      	str	r0, [r7, #4]
    2c48:	2300      	movs	r3, #0
    2c4a:	613b      	str	r3, [r7, #16]
    2c4c:	687b      	ldr	r3, [r7, #4]
    2c4e:	891b      	ldrh	r3, [r3, #8]
    2c50:	f240 72b1 	movw	r2, #1969	; 0x7b1
    2c54:	4293      	cmp	r3, r2
    2c56:	d803      	bhi.n	2c60 <set_date_time+0x20>
    2c58:	687b      	ldr	r3, [r7, #4]
    2c5a:	f240 72b2 	movw	r2, #1970	; 0x7b2
    2c5e:	811a      	strh	r2, [r3, #8]
    2c60:	687b      	ldr	r3, [r7, #4]
    2c62:	891b      	ldrh	r3, [r3, #8]
    2c64:	f640 023a 	movw	r2, #2106	; 0x83a
    2c68:	4293      	cmp	r3, r2
    2c6a:	d903      	bls.n	2c74 <set_date_time+0x34>
    2c6c:	687b      	ldr	r3, [r7, #4]
    2c6e:	f640 023a 	movw	r2, #2106	; 0x83a
    2c72:	811a      	strh	r2, [r3, #8]
    2c74:	687b      	ldr	r3, [r7, #4]
    2c76:	891b      	ldrh	r3, [r3, #8]
    2c78:	4618      	mov	r0, r3
    2c7a:	f7ff feaf 	bl	29dc <leap_year>
    2c7e:	60f8      	str	r0, [r7, #12]
    2c80:	f240 73b2 	movw	r3, #1970	; 0x7b2
    2c84:	617b      	str	r3, [r7, #20]
    2c86:	e013      	b.n	2cb0 <set_date_time+0x70>
    2c88:	6978      	ldr	r0, [r7, #20]
    2c8a:	f7ff fea7 	bl	29dc <leap_year>
    2c8e:	4603      	mov	r3, r0
    2c90:	2b00      	cmp	r3, #0
    2c92:	d006      	beq.n	2ca2 <set_date_time+0x62>
    2c94:	693b      	ldr	r3, [r7, #16]
    2c96:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    2c9a:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    2c9e:	613b      	str	r3, [r7, #16]
    2ca0:	e003      	b.n	2caa <set_date_time+0x6a>
    2ca2:	693a      	ldr	r2, [r7, #16]
    2ca4:	4b42      	ldr	r3, [pc, #264]	; (2db0 <set_date_time+0x170>)
    2ca6:	4413      	add	r3, r2
    2ca8:	613b      	str	r3, [r7, #16]
    2caa:	697b      	ldr	r3, [r7, #20]
    2cac:	3301      	adds	r3, #1
    2cae:	617b      	str	r3, [r7, #20]
    2cb0:	687b      	ldr	r3, [r7, #4]
    2cb2:	891b      	ldrh	r3, [r3, #8]
    2cb4:	461a      	mov	r2, r3
    2cb6:	697b      	ldr	r3, [r7, #20]
    2cb8:	429a      	cmp	r2, r3
    2cba:	d8e5      	bhi.n	2c88 <set_date_time+0x48>
    2cbc:	2301      	movs	r3, #1
    2cbe:	617b      	str	r3, [r7, #20]
    2cc0:	e00a      	b.n	2cd8 <set_date_time+0x98>
    2cc2:	6979      	ldr	r1, [r7, #20]
    2cc4:	68f8      	ldr	r0, [r7, #12]
    2cc6:	f7ff feb5 	bl	2a34 <sec_per_month>
    2cca:	4602      	mov	r2, r0
    2ccc:	693b      	ldr	r3, [r7, #16]
    2cce:	4413      	add	r3, r2
    2cd0:	613b      	str	r3, [r7, #16]
    2cd2:	697b      	ldr	r3, [r7, #20]
    2cd4:	3301      	adds	r3, #1
    2cd6:	617b      	str	r3, [r7, #20]
    2cd8:	687b      	ldr	r3, [r7, #4]
    2cda:	885b      	ldrh	r3, [r3, #2]
    2cdc:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2ce0:	b2db      	uxtb	r3, r3
    2ce2:	461a      	mov	r2, r3
    2ce4:	697b      	ldr	r3, [r7, #20]
    2ce6:	429a      	cmp	r2, r3
    2ce8:	d8eb      	bhi.n	2cc2 <set_date_time+0x82>
    2cea:	687b      	ldr	r3, [r7, #4]
    2cec:	789b      	ldrb	r3, [r3, #2]
    2cee:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2cf2:	b2db      	uxtb	r3, r3
    2cf4:	3b01      	subs	r3, #1
    2cf6:	4a2f      	ldr	r2, [pc, #188]	; (2db4 <set_date_time+0x174>)
    2cf8:	fb02 f303 	mul.w	r3, r2, r3
    2cfc:	461a      	mov	r2, r3
    2cfe:	693b      	ldr	r3, [r7, #16]
    2d00:	4413      	add	r3, r2
    2d02:	613b      	str	r3, [r7, #16]
    2d04:	687b      	ldr	r3, [r7, #4]
    2d06:	681b      	ldr	r3, [r3, #0]
    2d08:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2d0c:	b2db      	uxtb	r3, r3
    2d0e:	461a      	mov	r2, r3
    2d10:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    2d14:	fb03 f302 	mul.w	r3, r3, r2
    2d18:	461a      	mov	r2, r3
    2d1a:	693b      	ldr	r3, [r7, #16]
    2d1c:	4413      	add	r3, r2
    2d1e:	613b      	str	r3, [r7, #16]
    2d20:	687b      	ldr	r3, [r7, #4]
    2d22:	881b      	ldrh	r3, [r3, #0]
    2d24:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2d28:	b2db      	uxtb	r3, r3
    2d2a:	461a      	mov	r2, r3
    2d2c:	4613      	mov	r3, r2
    2d2e:	011b      	lsls	r3, r3, #4
    2d30:	1a9b      	subs	r3, r3, r2
    2d32:	009b      	lsls	r3, r3, #2
    2d34:	461a      	mov	r2, r3
    2d36:	693b      	ldr	r3, [r7, #16]
    2d38:	4413      	add	r3, r2
    2d3a:	613b      	str	r3, [r7, #16]
    2d3c:	687b      	ldr	r3, [r7, #4]
    2d3e:	781b      	ldrb	r3, [r3, #0]
    2d40:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2d44:	b2db      	uxtb	r3, r3
    2d46:	461a      	mov	r2, r3
    2d48:	693b      	ldr	r3, [r7, #16]
    2d4a:	4413      	add	r3, r2
    2d4c:	613b      	str	r3, [r7, #16]
    2d4e:	4a1a      	ldr	r2, [pc, #104]	; (2db8 <set_date_time+0x178>)
    2d50:	4b19      	ldr	r3, [pc, #100]	; (2db8 <set_date_time+0x178>)
    2d52:	69db      	ldr	r3, [r3, #28]
    2d54:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2d58:	61d3      	str	r3, [r2, #28]
    2d5a:	4a18      	ldr	r2, [pc, #96]	; (2dbc <set_date_time+0x17c>)
    2d5c:	4b17      	ldr	r3, [pc, #92]	; (2dbc <set_date_time+0x17c>)
    2d5e:	681b      	ldr	r3, [r3, #0]
    2d60:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2d64:	6013      	str	r3, [r2, #0]
    2d66:	4a16      	ldr	r2, [pc, #88]	; (2dc0 <set_date_time+0x180>)
    2d68:	4b15      	ldr	r3, [pc, #84]	; (2dc0 <set_date_time+0x180>)
    2d6a:	685b      	ldr	r3, [r3, #4]
    2d6c:	f043 0310 	orr.w	r3, r3, #16
    2d70:	6053      	str	r3, [r2, #4]
    2d72:	4a13      	ldr	r2, [pc, #76]	; (2dc0 <set_date_time+0x180>)
    2d74:	693b      	ldr	r3, [r7, #16]
    2d76:	0c1b      	lsrs	r3, r3, #16
    2d78:	6193      	str	r3, [r2, #24]
    2d7a:	4a11      	ldr	r2, [pc, #68]	; (2dc0 <set_date_time+0x180>)
    2d7c:	693b      	ldr	r3, [r7, #16]
    2d7e:	b29b      	uxth	r3, r3
    2d80:	61d3      	str	r3, [r2, #28]
    2d82:	4a0f      	ldr	r2, [pc, #60]	; (2dc0 <set_date_time+0x180>)
    2d84:	4b0e      	ldr	r3, [pc, #56]	; (2dc0 <set_date_time+0x180>)
    2d86:	685b      	ldr	r3, [r3, #4]
    2d88:	f023 0310 	bic.w	r3, r3, #16
    2d8c:	6053      	str	r3, [r2, #4]
    2d8e:	bf00      	nop
    2d90:	4b0b      	ldr	r3, [pc, #44]	; (2dc0 <set_date_time+0x180>)
    2d92:	685b      	ldr	r3, [r3, #4]
    2d94:	f003 0320 	and.w	r3, r3, #32
    2d98:	2b00      	cmp	r3, #0
    2d9a:	d0f9      	beq.n	2d90 <set_date_time+0x150>
    2d9c:	4a07      	ldr	r2, [pc, #28]	; (2dbc <set_date_time+0x17c>)
    2d9e:	4b07      	ldr	r3, [pc, #28]	; (2dbc <set_date_time+0x17c>)
    2da0:	681b      	ldr	r3, [r3, #0]
    2da2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2da6:	6013      	str	r3, [r2, #0]
    2da8:	bf00      	nop
    2daa:	3718      	adds	r7, #24
    2dac:	46bd      	mov	sp, r7
    2dae:	bd80      	pop	{r7, pc}
    2db0:	01e13380 	.word	0x01e13380
    2db4:	00015180 	.word	0x00015180
    2db8:	40021000 	.word	0x40021000
    2dbc:	40007000 	.word	0x40007000
    2dc0:	40002800 	.word	0x40002800

00002dc4 <rtc_init>:
    2dc4:	b580      	push	{r7, lr}
    2dc6:	b082      	sub	sp, #8
    2dc8:	af00      	add	r7, sp, #0
    2dca:	6078      	str	r0, [r7, #4]
    2dcc:	6039      	str	r1, [r7, #0]
    2dce:	4b4a      	ldr	r3, [pc, #296]	; (2ef8 <rtc_init+0x134>)
    2dd0:	685b      	ldr	r3, [r3, #4]
    2dd2:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2dd6:	4293      	cmp	r3, r2
    2dd8:	f000 8082 	beq.w	2ee0 <rtc_init+0x11c>
    2ddc:	4a47      	ldr	r2, [pc, #284]	; (2efc <rtc_init+0x138>)
    2dde:	4b47      	ldr	r3, [pc, #284]	; (2efc <rtc_init+0x138>)
    2de0:	69db      	ldr	r3, [r3, #28]
    2de2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2de6:	61d3      	str	r3, [r2, #28]
    2de8:	4a45      	ldr	r2, [pc, #276]	; (2f00 <rtc_init+0x13c>)
    2dea:	4b45      	ldr	r3, [pc, #276]	; (2f00 <rtc_init+0x13c>)
    2dec:	681b      	ldr	r3, [r3, #0]
    2dee:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2df2:	6013      	str	r3, [r2, #0]
    2df4:	4a41      	ldr	r2, [pc, #260]	; (2efc <rtc_init+0x138>)
    2df6:	4b41      	ldr	r3, [pc, #260]	; (2efc <rtc_init+0x138>)
    2df8:	6a1b      	ldr	r3, [r3, #32]
    2dfa:	f043 0301 	orr.w	r3, r3, #1
    2dfe:	6213      	str	r3, [r2, #32]
    2e00:	bf00      	nop
    2e02:	4b3e      	ldr	r3, [pc, #248]	; (2efc <rtc_init+0x138>)
    2e04:	6a1b      	ldr	r3, [r3, #32]
    2e06:	f003 0302 	and.w	r3, r3, #2
    2e0a:	2b00      	cmp	r3, #0
    2e0c:	d0f9      	beq.n	2e02 <rtc_init+0x3e>
    2e0e:	4a3b      	ldr	r2, [pc, #236]	; (2efc <rtc_init+0x138>)
    2e10:	4b3a      	ldr	r3, [pc, #232]	; (2efc <rtc_init+0x138>)
    2e12:	6a1b      	ldr	r3, [r3, #32]
    2e14:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    2e18:	6213      	str	r3, [r2, #32]
    2e1a:	bf00      	nop
    2e1c:	4b39      	ldr	r3, [pc, #228]	; (2f04 <rtc_init+0x140>)
    2e1e:	685b      	ldr	r3, [r3, #4]
    2e20:	f003 0308 	and.w	r3, r3, #8
    2e24:	2b00      	cmp	r3, #0
    2e26:	d0f9      	beq.n	2e1c <rtc_init+0x58>
    2e28:	bf00      	nop
    2e2a:	4b36      	ldr	r3, [pc, #216]	; (2f04 <rtc_init+0x140>)
    2e2c:	685b      	ldr	r3, [r3, #4]
    2e2e:	f003 0320 	and.w	r3, r3, #32
    2e32:	2b00      	cmp	r3, #0
    2e34:	d0f9      	beq.n	2e2a <rtc_init+0x66>
    2e36:	4a33      	ldr	r2, [pc, #204]	; (2f04 <rtc_init+0x140>)
    2e38:	4b32      	ldr	r3, [pc, #200]	; (2f04 <rtc_init+0x140>)
    2e3a:	685b      	ldr	r3, [r3, #4]
    2e3c:	f043 0310 	orr.w	r3, r3, #16
    2e40:	6053      	str	r3, [r2, #4]
    2e42:	bf00      	nop
    2e44:	4b2f      	ldr	r3, [pc, #188]	; (2f04 <rtc_init+0x140>)
    2e46:	685b      	ldr	r3, [r3, #4]
    2e48:	f003 0320 	and.w	r3, r3, #32
    2e4c:	2b00      	cmp	r3, #0
    2e4e:	d0f9      	beq.n	2e44 <rtc_init+0x80>
    2e50:	492c      	ldr	r1, [pc, #176]	; (2f04 <rtc_init+0x140>)
    2e52:	4b2c      	ldr	r3, [pc, #176]	; (2f04 <rtc_init+0x140>)
    2e54:	681a      	ldr	r2, [r3, #0]
    2e56:	683b      	ldr	r3, [r7, #0]
    2e58:	4313      	orrs	r3, r2
    2e5a:	600b      	str	r3, [r1, #0]
    2e5c:	bf00      	nop
    2e5e:	4b29      	ldr	r3, [pc, #164]	; (2f04 <rtc_init+0x140>)
    2e60:	685b      	ldr	r3, [r3, #4]
    2e62:	f003 0320 	and.w	r3, r3, #32
    2e66:	2b00      	cmp	r3, #0
    2e68:	d0f9      	beq.n	2e5e <rtc_init+0x9a>
    2e6a:	4a26      	ldr	r2, [pc, #152]	; (2f04 <rtc_init+0x140>)
    2e6c:	687b      	ldr	r3, [r7, #4]
    2e6e:	03db      	lsls	r3, r3, #15
    2e70:	4925      	ldr	r1, [pc, #148]	; (2f08 <rtc_init+0x144>)
    2e72:	fba1 1303 	umull	r1, r3, r1, r3
    2e76:	099b      	lsrs	r3, r3, #6
    2e78:	3b01      	subs	r3, #1
    2e7a:	b29b      	uxth	r3, r3
    2e7c:	60d3      	str	r3, [r2, #12]
    2e7e:	bf00      	nop
    2e80:	4b20      	ldr	r3, [pc, #128]	; (2f04 <rtc_init+0x140>)
    2e82:	685b      	ldr	r3, [r3, #4]
    2e84:	f003 0320 	and.w	r3, r3, #32
    2e88:	2b00      	cmp	r3, #0
    2e8a:	d0f9      	beq.n	2e80 <rtc_init+0xbc>
    2e8c:	4a1d      	ldr	r2, [pc, #116]	; (2f04 <rtc_init+0x140>)
    2e8e:	687b      	ldr	r3, [r7, #4]
    2e90:	03db      	lsls	r3, r3, #15
    2e92:	491d      	ldr	r1, [pc, #116]	; (2f08 <rtc_init+0x144>)
    2e94:	fba1 1303 	umull	r1, r3, r1, r3
    2e98:	099b      	lsrs	r3, r3, #6
    2e9a:	3b01      	subs	r3, #1
    2e9c:	0c1b      	lsrs	r3, r3, #16
    2e9e:	f003 030f 	and.w	r3, r3, #15
    2ea2:	6093      	str	r3, [r2, #8]
    2ea4:	bf00      	nop
    2ea6:	4b17      	ldr	r3, [pc, #92]	; (2f04 <rtc_init+0x140>)
    2ea8:	685b      	ldr	r3, [r3, #4]
    2eaa:	f003 0320 	and.w	r3, r3, #32
    2eae:	2b00      	cmp	r3, #0
    2eb0:	d0f9      	beq.n	2ea6 <rtc_init+0xe2>
    2eb2:	4b11      	ldr	r3, [pc, #68]	; (2ef8 <rtc_init+0x134>)
    2eb4:	f64a 2255 	movw	r2, #43605	; 0xaa55
    2eb8:	605a      	str	r2, [r3, #4]
    2eba:	4a12      	ldr	r2, [pc, #72]	; (2f04 <rtc_init+0x140>)
    2ebc:	4b11      	ldr	r3, [pc, #68]	; (2f04 <rtc_init+0x140>)
    2ebe:	685b      	ldr	r3, [r3, #4]
    2ec0:	f023 0310 	bic.w	r3, r3, #16
    2ec4:	6053      	str	r3, [r2, #4]
    2ec6:	bf00      	nop
    2ec8:	4b0e      	ldr	r3, [pc, #56]	; (2f04 <rtc_init+0x140>)
    2eca:	685b      	ldr	r3, [r3, #4]
    2ecc:	f003 0320 	and.w	r3, r3, #32
    2ed0:	2b00      	cmp	r3, #0
    2ed2:	d0f9      	beq.n	2ec8 <rtc_init+0x104>
    2ed4:	4a0a      	ldr	r2, [pc, #40]	; (2f00 <rtc_init+0x13c>)
    2ed6:	4b0a      	ldr	r3, [pc, #40]	; (2f00 <rtc_init+0x13c>)
    2ed8:	681b      	ldr	r3, [r3, #0]
    2eda:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    2ede:	6013      	str	r3, [r2, #0]
    2ee0:	210f      	movs	r1, #15
    2ee2:	2003      	movs	r0, #3
    2ee4:	f7ff fd4a 	bl	297c <set_int_priority>
    2ee8:	2003      	movs	r0, #3
    2eea:	f7ff fc8d 	bl	2808 <enable_interrupt>
    2eee:	bf00      	nop
    2ef0:	3708      	adds	r7, #8
    2ef2:	46bd      	mov	sp, r7
    2ef4:	bd80      	pop	{r7, pc}
    2ef6:	bf00      	nop
    2ef8:	40006c00 	.word	0x40006c00
    2efc:	40021000 	.word	0x40021000
    2f00:	40007000 	.word	0x40007000
    2f04:	40002800 	.word	0x40002800
    2f08:	10624dd3 	.word	0x10624dd3

00002f0c <reset_backup_domain>:
    2f0c:	b480      	push	{r7}
    2f0e:	af00      	add	r7, sp, #0
    2f10:	4a0a      	ldr	r2, [pc, #40]	; (2f3c <reset_backup_domain+0x30>)
    2f12:	4b0a      	ldr	r3, [pc, #40]	; (2f3c <reset_backup_domain+0x30>)
    2f14:	69db      	ldr	r3, [r3, #28]
    2f16:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2f1a:	61d3      	str	r3, [r2, #28]
    2f1c:	4a07      	ldr	r2, [pc, #28]	; (2f3c <reset_backup_domain+0x30>)
    2f1e:	4b07      	ldr	r3, [pc, #28]	; (2f3c <reset_backup_domain+0x30>)
    2f20:	6a1b      	ldr	r3, [r3, #32]
    2f22:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2f26:	6213      	str	r3, [r2, #32]
    2f28:	4a04      	ldr	r2, [pc, #16]	; (2f3c <reset_backup_domain+0x30>)
    2f2a:	4b04      	ldr	r3, [pc, #16]	; (2f3c <reset_backup_domain+0x30>)
    2f2c:	6a1b      	ldr	r3, [r3, #32]
    2f2e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    2f32:	6213      	str	r3, [r2, #32]
    2f34:	bf00      	nop
    2f36:	46bd      	mov	sp, r7
    2f38:	bc80      	pop	{r7}
    2f3a:	4770      	bx	lr
    2f3c:	40021000 	.word	0x40021000

00002f40 <rtc_clock_trim>:
    2f40:	b480      	push	{r7}
    2f42:	b083      	sub	sp, #12
    2f44:	af00      	add	r7, sp, #0
    2f46:	6078      	str	r0, [r7, #4]
    2f48:	4a34      	ldr	r2, [pc, #208]	; (301c <rtc_clock_trim+0xdc>)
    2f4a:	4b34      	ldr	r3, [pc, #208]	; (301c <rtc_clock_trim+0xdc>)
    2f4c:	69db      	ldr	r3, [r3, #28]
    2f4e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    2f52:	61d3      	str	r3, [r2, #28]
    2f54:	bf00      	nop
    2f56:	4b32      	ldr	r3, [pc, #200]	; (3020 <rtc_clock_trim+0xe0>)
    2f58:	685b      	ldr	r3, [r3, #4]
    2f5a:	f003 0308 	and.w	r3, r3, #8
    2f5e:	2b00      	cmp	r3, #0
    2f60:	d0f9      	beq.n	2f56 <rtc_clock_trim+0x16>
    2f62:	4a30      	ldr	r2, [pc, #192]	; (3024 <rtc_clock_trim+0xe4>)
    2f64:	4b2f      	ldr	r3, [pc, #188]	; (3024 <rtc_clock_trim+0xe4>)
    2f66:	681b      	ldr	r3, [r3, #0]
    2f68:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2f6c:	6013      	str	r3, [r2, #0]
    2f6e:	4a2c      	ldr	r2, [pc, #176]	; (3020 <rtc_clock_trim+0xe0>)
    2f70:	4b2b      	ldr	r3, [pc, #172]	; (3020 <rtc_clock_trim+0xe0>)
    2f72:	685b      	ldr	r3, [r3, #4]
    2f74:	f043 0310 	orr.w	r3, r3, #16
    2f78:	6053      	str	r3, [r2, #4]
    2f7a:	4a2b      	ldr	r2, [pc, #172]	; (3028 <rtc_clock_trim+0xe8>)
    2f7c:	4b2a      	ldr	r3, [pc, #168]	; (3028 <rtc_clock_trim+0xe8>)
    2f7e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2f80:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2f84:	62d3      	str	r3, [r2, #44]	; 0x2c
    2f86:	687b      	ldr	r3, [r7, #4]
    2f88:	2b00      	cmp	r3, #0
    2f8a:	d10a      	bne.n	2fa2 <rtc_clock_trim+0x62>
    2f8c:	4b26      	ldr	r3, [pc, #152]	; (3028 <rtc_clock_trim+0xe8>)
    2f8e:	2200      	movs	r2, #0
    2f90:	62da      	str	r2, [r3, #44]	; 0x2c
    2f92:	4b23      	ldr	r3, [pc, #140]	; (3020 <rtc_clock_trim+0xe0>)
    2f94:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2f98:	60da      	str	r2, [r3, #12]
    2f9a:	4b21      	ldr	r3, [pc, #132]	; (3020 <rtc_clock_trim+0xe0>)
    2f9c:	2200      	movs	r2, #0
    2f9e:	609a      	str	r2, [r3, #8]
    2fa0:	e023      	b.n	2fea <rtc_clock_trim+0xaa>
    2fa2:	687b      	ldr	r3, [r7, #4]
    2fa4:	2b00      	cmp	r3, #0
    2fa6:	dd0a      	ble.n	2fbe <rtc_clock_trim+0x7e>
    2fa8:	687b      	ldr	r3, [r7, #4]
    2faa:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2fae:	607b      	str	r3, [r7, #4]
    2fb0:	491d      	ldr	r1, [pc, #116]	; (3028 <rtc_clock_trim+0xe8>)
    2fb2:	4b1d      	ldr	r3, [pc, #116]	; (3028 <rtc_clock_trim+0xe8>)
    2fb4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2fb6:	687b      	ldr	r3, [r7, #4]
    2fb8:	4313      	orrs	r3, r2
    2fba:	62cb      	str	r3, [r1, #44]	; 0x2c
    2fbc:	e015      	b.n	2fea <rtc_clock_trim+0xaa>
    2fbe:	687b      	ldr	r3, [r7, #4]
    2fc0:	425b      	negs	r3, r3
    2fc2:	607b      	str	r3, [r7, #4]
    2fc4:	687b      	ldr	r3, [r7, #4]
    2fc6:	2b7f      	cmp	r3, #127	; 0x7f
    2fc8:	dd01      	ble.n	2fce <rtc_clock_trim+0x8e>
    2fca:	237f      	movs	r3, #127	; 0x7f
    2fcc:	607b      	str	r3, [r7, #4]
    2fce:	4b16      	ldr	r3, [pc, #88]	; (3028 <rtc_clock_trim+0xe8>)
    2fd0:	2200      	movs	r2, #0
    2fd2:	62da      	str	r2, [r3, #44]	; 0x2c
    2fd4:	4a12      	ldr	r2, [pc, #72]	; (3020 <rtc_clock_trim+0xe0>)
    2fd6:	687b      	ldr	r3, [r7, #4]
    2fd8:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2fdc:	33ff      	adds	r3, #255	; 0xff
    2fde:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2fe2:	60d3      	str	r3, [r2, #12]
    2fe4:	4b0e      	ldr	r3, [pc, #56]	; (3020 <rtc_clock_trim+0xe0>)
    2fe6:	2200      	movs	r2, #0
    2fe8:	609a      	str	r2, [r3, #8]
    2fea:	4a0d      	ldr	r2, [pc, #52]	; (3020 <rtc_clock_trim+0xe0>)
    2fec:	4b0c      	ldr	r3, [pc, #48]	; (3020 <rtc_clock_trim+0xe0>)
    2fee:	685b      	ldr	r3, [r3, #4]
    2ff0:	f023 0310 	bic.w	r3, r3, #16
    2ff4:	6053      	str	r3, [r2, #4]
    2ff6:	bf00      	nop
    2ff8:	4b09      	ldr	r3, [pc, #36]	; (3020 <rtc_clock_trim+0xe0>)
    2ffa:	685b      	ldr	r3, [r3, #4]
    2ffc:	f003 0320 	and.w	r3, r3, #32
    3000:	2b00      	cmp	r3, #0
    3002:	d0f9      	beq.n	2ff8 <rtc_clock_trim+0xb8>
    3004:	4a07      	ldr	r2, [pc, #28]	; (3024 <rtc_clock_trim+0xe4>)
    3006:	4b07      	ldr	r3, [pc, #28]	; (3024 <rtc_clock_trim+0xe4>)
    3008:	681b      	ldr	r3, [r3, #0]
    300a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    300e:	6013      	str	r3, [r2, #0]
    3010:	bf00      	nop
    3012:	370c      	adds	r7, #12
    3014:	46bd      	mov	sp, r7
    3016:	bc80      	pop	{r7}
    3018:	4770      	bx	lr
    301a:	bf00      	nop
    301c:	40021000 	.word	0x40021000
    3020:	40002800 	.word	0x40002800
    3024:	40007000 	.word	0x40007000
    3028:	40006c00 	.word	0x40006c00

0000302c <rtc_set_alarm>:
    302c:	b480      	push	{r7}
    302e:	b083      	sub	sp, #12
    3030:	af00      	add	r7, sp, #0
    3032:	6078      	str	r0, [r7, #4]
    3034:	bf00      	nop
    3036:	370c      	adds	r7, #12
    3038:	46bd      	mov	sp, r7
    303a:	bc80      	pop	{r7}
    303c:	4770      	bx	lr

0000303e <str_to_date>:
    303e:	b580      	push	{r7, lr}
    3040:	b084      	sub	sp, #16
    3042:	af00      	add	r7, sp, #0
    3044:	6078      	str	r0, [r7, #4]
    3046:	6039      	str	r1, [r7, #0]
    3048:	2300      	movs	r3, #0
    304a:	60fb      	str	r3, [r7, #12]
    304c:	2300      	movs	r3, #0
    304e:	60bb      	str	r3, [r7, #8]
    3050:	e00f      	b.n	3072 <str_to_date+0x34>
    3052:	68ba      	ldr	r2, [r7, #8]
    3054:	4613      	mov	r3, r2
    3056:	009b      	lsls	r3, r3, #2
    3058:	4413      	add	r3, r2
    305a:	005b      	lsls	r3, r3, #1
    305c:	4619      	mov	r1, r3
    305e:	68fb      	ldr	r3, [r7, #12]
    3060:	1c5a      	adds	r2, r3, #1
    3062:	60fa      	str	r2, [r7, #12]
    3064:	461a      	mov	r2, r3
    3066:	687b      	ldr	r3, [r7, #4]
    3068:	4413      	add	r3, r2
    306a:	781b      	ldrb	r3, [r3, #0]
    306c:	440b      	add	r3, r1
    306e:	3b30      	subs	r3, #48	; 0x30
    3070:	60bb      	str	r3, [r7, #8]
    3072:	68fb      	ldr	r3, [r7, #12]
    3074:	687a      	ldr	r2, [r7, #4]
    3076:	4413      	add	r3, r2
    3078:	781b      	ldrb	r3, [r3, #0]
    307a:	4618      	mov	r0, r3
    307c:	f7fe fb17 	bl	16ae <digit>
    3080:	4603      	mov	r3, r0
    3082:	2b00      	cmp	r3, #0
    3084:	d1e5      	bne.n	3052 <str_to_date+0x14>
    3086:	68fb      	ldr	r3, [r7, #12]
    3088:	2b03      	cmp	r3, #3
    308a:	dd05      	ble.n	3098 <str_to_date+0x5a>
    308c:	68fb      	ldr	r3, [r7, #12]
    308e:	687a      	ldr	r2, [r7, #4]
    3090:	4413      	add	r3, r2
    3092:	781b      	ldrb	r3, [r3, #0]
    3094:	2b2f      	cmp	r3, #47	; 0x2f
    3096:	d001      	beq.n	309c <str_to_date+0x5e>
    3098:	2300      	movs	r3, #0
    309a:	e068      	b.n	316e <str_to_date+0x130>
    309c:	68bb      	ldr	r3, [r7, #8]
    309e:	b29a      	uxth	r2, r3
    30a0:	683b      	ldr	r3, [r7, #0]
    30a2:	811a      	strh	r2, [r3, #8]
    30a4:	68fb      	ldr	r3, [r7, #12]
    30a6:	3301      	adds	r3, #1
    30a8:	60fb      	str	r3, [r7, #12]
    30aa:	2300      	movs	r3, #0
    30ac:	60bb      	str	r3, [r7, #8]
    30ae:	e00f      	b.n	30d0 <str_to_date+0x92>
    30b0:	68ba      	ldr	r2, [r7, #8]
    30b2:	4613      	mov	r3, r2
    30b4:	009b      	lsls	r3, r3, #2
    30b6:	4413      	add	r3, r2
    30b8:	005b      	lsls	r3, r3, #1
    30ba:	4619      	mov	r1, r3
    30bc:	68fb      	ldr	r3, [r7, #12]
    30be:	1c5a      	adds	r2, r3, #1
    30c0:	60fa      	str	r2, [r7, #12]
    30c2:	461a      	mov	r2, r3
    30c4:	687b      	ldr	r3, [r7, #4]
    30c6:	4413      	add	r3, r2
    30c8:	781b      	ldrb	r3, [r3, #0]
    30ca:	440b      	add	r3, r1
    30cc:	3b30      	subs	r3, #48	; 0x30
    30ce:	60bb      	str	r3, [r7, #8]
    30d0:	68fb      	ldr	r3, [r7, #12]
    30d2:	687a      	ldr	r2, [r7, #4]
    30d4:	4413      	add	r3, r2
    30d6:	781b      	ldrb	r3, [r3, #0]
    30d8:	4618      	mov	r0, r3
    30da:	f7fe fae8 	bl	16ae <digit>
    30de:	4603      	mov	r3, r0
    30e0:	2b00      	cmp	r3, #0
    30e2:	d1e5      	bne.n	30b0 <str_to_date+0x72>
    30e4:	68fb      	ldr	r3, [r7, #12]
    30e6:	2b06      	cmp	r3, #6
    30e8:	dd05      	ble.n	30f6 <str_to_date+0xb8>
    30ea:	68fb      	ldr	r3, [r7, #12]
    30ec:	687a      	ldr	r2, [r7, #4]
    30ee:	4413      	add	r3, r2
    30f0:	781b      	ldrb	r3, [r3, #0]
    30f2:	2b2f      	cmp	r3, #47	; 0x2f
    30f4:	d001      	beq.n	30fa <str_to_date+0xbc>
    30f6:	2300      	movs	r3, #0
    30f8:	e039      	b.n	316e <str_to_date+0x130>
    30fa:	68bb      	ldr	r3, [r7, #8]
    30fc:	b2db      	uxtb	r3, r3
    30fe:	f003 030f 	and.w	r3, r3, #15
    3102:	b2d9      	uxtb	r1, r3
    3104:	683a      	ldr	r2, [r7, #0]
    3106:	8853      	ldrh	r3, [r2, #2]
    3108:	f361 1389 	bfi	r3, r1, #6, #4
    310c:	8053      	strh	r3, [r2, #2]
    310e:	2300      	movs	r3, #0
    3110:	60bb      	str	r3, [r7, #8]
    3112:	68fb      	ldr	r3, [r7, #12]
    3114:	3301      	adds	r3, #1
    3116:	60fb      	str	r3, [r7, #12]
    3118:	e00f      	b.n	313a <str_to_date+0xfc>
    311a:	68ba      	ldr	r2, [r7, #8]
    311c:	4613      	mov	r3, r2
    311e:	009b      	lsls	r3, r3, #2
    3120:	4413      	add	r3, r2
    3122:	005b      	lsls	r3, r3, #1
    3124:	4619      	mov	r1, r3
    3126:	68fb      	ldr	r3, [r7, #12]
    3128:	1c5a      	adds	r2, r3, #1
    312a:	60fa      	str	r2, [r7, #12]
    312c:	461a      	mov	r2, r3
    312e:	687b      	ldr	r3, [r7, #4]
    3130:	4413      	add	r3, r2
    3132:	781b      	ldrb	r3, [r3, #0]
    3134:	440b      	add	r3, r1
    3136:	3b30      	subs	r3, #48	; 0x30
    3138:	60bb      	str	r3, [r7, #8]
    313a:	68fb      	ldr	r3, [r7, #12]
    313c:	687a      	ldr	r2, [r7, #4]
    313e:	4413      	add	r3, r2
    3140:	781b      	ldrb	r3, [r3, #0]
    3142:	4618      	mov	r0, r3
    3144:	f7fe fab3 	bl	16ae <digit>
    3148:	4603      	mov	r3, r0
    314a:	2b00      	cmp	r3, #0
    314c:	d1e5      	bne.n	311a <str_to_date+0xdc>
    314e:	68fb      	ldr	r3, [r7, #12]
    3150:	2b09      	cmp	r3, #9
    3152:	dc01      	bgt.n	3158 <str_to_date+0x11a>
    3154:	2300      	movs	r3, #0
    3156:	e00a      	b.n	316e <str_to_date+0x130>
    3158:	68bb      	ldr	r3, [r7, #8]
    315a:	b2db      	uxtb	r3, r3
    315c:	f003 031f 	and.w	r3, r3, #31
    3160:	b2d9      	uxtb	r1, r3
    3162:	683a      	ldr	r2, [r7, #0]
    3164:	7893      	ldrb	r3, [r2, #2]
    3166:	f361 0345 	bfi	r3, r1, #1, #5
    316a:	7093      	strb	r3, [r2, #2]
    316c:	2301      	movs	r3, #1
    316e:	4618      	mov	r0, r3
    3170:	3710      	adds	r7, #16
    3172:	46bd      	mov	sp, r7
    3174:	bd80      	pop	{r7, pc}

00003176 <str_to_time>:
    3176:	b580      	push	{r7, lr}
    3178:	b084      	sub	sp, #16
    317a:	af00      	add	r7, sp, #0
    317c:	6078      	str	r0, [r7, #4]
    317e:	6039      	str	r1, [r7, #0]
    3180:	2300      	movs	r3, #0
    3182:	60fb      	str	r3, [r7, #12]
    3184:	2300      	movs	r3, #0
    3186:	72fb      	strb	r3, [r7, #11]
    3188:	e010      	b.n	31ac <str_to_time+0x36>
    318a:	7afb      	ldrb	r3, [r7, #11]
    318c:	461a      	mov	r2, r3
    318e:	0092      	lsls	r2, r2, #2
    3190:	4413      	add	r3, r2
    3192:	005b      	lsls	r3, r3, #1
    3194:	b2da      	uxtb	r2, r3
    3196:	68fb      	ldr	r3, [r7, #12]
    3198:	1c59      	adds	r1, r3, #1
    319a:	60f9      	str	r1, [r7, #12]
    319c:	4619      	mov	r1, r3
    319e:	687b      	ldr	r3, [r7, #4]
    31a0:	440b      	add	r3, r1
    31a2:	781b      	ldrb	r3, [r3, #0]
    31a4:	4413      	add	r3, r2
    31a6:	b2db      	uxtb	r3, r3
    31a8:	3b30      	subs	r3, #48	; 0x30
    31aa:	72fb      	strb	r3, [r7, #11]
    31ac:	68fb      	ldr	r3, [r7, #12]
    31ae:	687a      	ldr	r2, [r7, #4]
    31b0:	4413      	add	r3, r2
    31b2:	781b      	ldrb	r3, [r3, #0]
    31b4:	4618      	mov	r0, r3
    31b6:	f7fe fa7a 	bl	16ae <digit>
    31ba:	4603      	mov	r3, r0
    31bc:	2b00      	cmp	r3, #0
    31be:	d1e4      	bne.n	318a <str_to_time+0x14>
    31c0:	7afb      	ldrb	r3, [r7, #11]
    31c2:	2b17      	cmp	r3, #23
    31c4:	d805      	bhi.n	31d2 <str_to_time+0x5c>
    31c6:	68fb      	ldr	r3, [r7, #12]
    31c8:	687a      	ldr	r2, [r7, #4]
    31ca:	4413      	add	r3, r2
    31cc:	781b      	ldrb	r3, [r3, #0]
    31ce:	2b3a      	cmp	r3, #58	; 0x3a
    31d0:	d001      	beq.n	31d6 <str_to_time+0x60>
    31d2:	2300      	movs	r3, #0
    31d4:	e06d      	b.n	32b2 <str_to_time+0x13c>
    31d6:	7afb      	ldrb	r3, [r7, #11]
    31d8:	f003 031f 	and.w	r3, r3, #31
    31dc:	b2d9      	uxtb	r1, r3
    31de:	683a      	ldr	r2, [r7, #0]
    31e0:	6813      	ldr	r3, [r2, #0]
    31e2:	f361 3310 	bfi	r3, r1, #12, #5
    31e6:	6013      	str	r3, [r2, #0]
    31e8:	68fb      	ldr	r3, [r7, #12]
    31ea:	3301      	adds	r3, #1
    31ec:	60fb      	str	r3, [r7, #12]
    31ee:	2300      	movs	r3, #0
    31f0:	72fb      	strb	r3, [r7, #11]
    31f2:	e010      	b.n	3216 <str_to_time+0xa0>
    31f4:	7afb      	ldrb	r3, [r7, #11]
    31f6:	461a      	mov	r2, r3
    31f8:	0092      	lsls	r2, r2, #2
    31fa:	4413      	add	r3, r2
    31fc:	005b      	lsls	r3, r3, #1
    31fe:	b2da      	uxtb	r2, r3
    3200:	68fb      	ldr	r3, [r7, #12]
    3202:	1c59      	adds	r1, r3, #1
    3204:	60f9      	str	r1, [r7, #12]
    3206:	4619      	mov	r1, r3
    3208:	687b      	ldr	r3, [r7, #4]
    320a:	440b      	add	r3, r1
    320c:	781b      	ldrb	r3, [r3, #0]
    320e:	4413      	add	r3, r2
    3210:	b2db      	uxtb	r3, r3
    3212:	3b30      	subs	r3, #48	; 0x30
    3214:	72fb      	strb	r3, [r7, #11]
    3216:	68fb      	ldr	r3, [r7, #12]
    3218:	687a      	ldr	r2, [r7, #4]
    321a:	4413      	add	r3, r2
    321c:	781b      	ldrb	r3, [r3, #0]
    321e:	4618      	mov	r0, r3
    3220:	f7fe fa45 	bl	16ae <digit>
    3224:	4603      	mov	r3, r0
    3226:	2b00      	cmp	r3, #0
    3228:	d1e4      	bne.n	31f4 <str_to_time+0x7e>
    322a:	7afb      	ldrb	r3, [r7, #11]
    322c:	2b3b      	cmp	r3, #59	; 0x3b
    322e:	d805      	bhi.n	323c <str_to_time+0xc6>
    3230:	68fb      	ldr	r3, [r7, #12]
    3232:	687a      	ldr	r2, [r7, #4]
    3234:	4413      	add	r3, r2
    3236:	781b      	ldrb	r3, [r3, #0]
    3238:	2b3a      	cmp	r3, #58	; 0x3a
    323a:	d001      	beq.n	3240 <str_to_time+0xca>
    323c:	2300      	movs	r3, #0
    323e:	e038      	b.n	32b2 <str_to_time+0x13c>
    3240:	7afb      	ldrb	r3, [r7, #11]
    3242:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3246:	b2d9      	uxtb	r1, r3
    3248:	683a      	ldr	r2, [r7, #0]
    324a:	8813      	ldrh	r3, [r2, #0]
    324c:	f361 138b 	bfi	r3, r1, #6, #6
    3250:	8013      	strh	r3, [r2, #0]
    3252:	2300      	movs	r3, #0
    3254:	72fb      	strb	r3, [r7, #11]
    3256:	68fb      	ldr	r3, [r7, #12]
    3258:	3301      	adds	r3, #1
    325a:	60fb      	str	r3, [r7, #12]
    325c:	e010      	b.n	3280 <str_to_time+0x10a>
    325e:	7afb      	ldrb	r3, [r7, #11]
    3260:	461a      	mov	r2, r3
    3262:	0092      	lsls	r2, r2, #2
    3264:	4413      	add	r3, r2
    3266:	005b      	lsls	r3, r3, #1
    3268:	b2da      	uxtb	r2, r3
    326a:	68fb      	ldr	r3, [r7, #12]
    326c:	1c59      	adds	r1, r3, #1
    326e:	60f9      	str	r1, [r7, #12]
    3270:	4619      	mov	r1, r3
    3272:	687b      	ldr	r3, [r7, #4]
    3274:	440b      	add	r3, r1
    3276:	781b      	ldrb	r3, [r3, #0]
    3278:	4413      	add	r3, r2
    327a:	b2db      	uxtb	r3, r3
    327c:	3b30      	subs	r3, #48	; 0x30
    327e:	72fb      	strb	r3, [r7, #11]
    3280:	68fb      	ldr	r3, [r7, #12]
    3282:	687a      	ldr	r2, [r7, #4]
    3284:	4413      	add	r3, r2
    3286:	781b      	ldrb	r3, [r3, #0]
    3288:	4618      	mov	r0, r3
    328a:	f7fe fa10 	bl	16ae <digit>
    328e:	4603      	mov	r3, r0
    3290:	2b00      	cmp	r3, #0
    3292:	d1e4      	bne.n	325e <str_to_time+0xe8>
    3294:	7afb      	ldrb	r3, [r7, #11]
    3296:	2b3b      	cmp	r3, #59	; 0x3b
    3298:	d901      	bls.n	329e <str_to_time+0x128>
    329a:	2300      	movs	r3, #0
    329c:	e009      	b.n	32b2 <str_to_time+0x13c>
    329e:	7afb      	ldrb	r3, [r7, #11]
    32a0:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    32a4:	b2d9      	uxtb	r1, r3
    32a6:	683a      	ldr	r2, [r7, #0]
    32a8:	7813      	ldrb	r3, [r2, #0]
    32aa:	f361 0305 	bfi	r3, r1, #0, #6
    32ae:	7013      	strb	r3, [r2, #0]
    32b0:	2301      	movs	r3, #1
    32b2:	4618      	mov	r0, r3
    32b4:	3710      	adds	r7, #16
    32b6:	46bd      	mov	sp, r7
    32b8:	bd80      	pop	{r7, pc}

000032ba <date_str>:
    32ba:	b480      	push	{r7}
    32bc:	b085      	sub	sp, #20
    32be:	af00      	add	r7, sp, #0
    32c0:	6078      	str	r0, [r7, #4]
    32c2:	6039      	str	r1, [r7, #0]
    32c4:	2300      	movs	r3, #0
    32c6:	60fb      	str	r3, [r7, #12]
    32c8:	687b      	ldr	r3, [r7, #4]
    32ca:	891b      	ldrh	r3, [r3, #8]
    32cc:	60bb      	str	r3, [r7, #8]
    32ce:	68fb      	ldr	r3, [r7, #12]
    32d0:	1c5a      	adds	r2, r3, #1
    32d2:	60fa      	str	r2, [r7, #12]
    32d4:	461a      	mov	r2, r3
    32d6:	683b      	ldr	r3, [r7, #0]
    32d8:	4413      	add	r3, r2
    32da:	68ba      	ldr	r2, [r7, #8]
    32dc:	495d      	ldr	r1, [pc, #372]	; (3454 <date_str+0x19a>)
    32de:	fba1 1202 	umull	r1, r2, r1, r2
    32e2:	0992      	lsrs	r2, r2, #6
    32e4:	b2d2      	uxtb	r2, r2
    32e6:	3230      	adds	r2, #48	; 0x30
    32e8:	b2d2      	uxtb	r2, r2
    32ea:	701a      	strb	r2, [r3, #0]
    32ec:	68bb      	ldr	r3, [r7, #8]
    32ee:	4a59      	ldr	r2, [pc, #356]	; (3454 <date_str+0x19a>)
    32f0:	fba2 1203 	umull	r1, r2, r2, r3
    32f4:	0992      	lsrs	r2, r2, #6
    32f6:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    32fa:	fb01 f202 	mul.w	r2, r1, r2
    32fe:	1a9b      	subs	r3, r3, r2
    3300:	60bb      	str	r3, [r7, #8]
    3302:	68fb      	ldr	r3, [r7, #12]
    3304:	1c5a      	adds	r2, r3, #1
    3306:	60fa      	str	r2, [r7, #12]
    3308:	461a      	mov	r2, r3
    330a:	683b      	ldr	r3, [r7, #0]
    330c:	4413      	add	r3, r2
    330e:	68ba      	ldr	r2, [r7, #8]
    3310:	4951      	ldr	r1, [pc, #324]	; (3458 <date_str+0x19e>)
    3312:	fba1 1202 	umull	r1, r2, r1, r2
    3316:	0952      	lsrs	r2, r2, #5
    3318:	b2d2      	uxtb	r2, r2
    331a:	3230      	adds	r2, #48	; 0x30
    331c:	b2d2      	uxtb	r2, r2
    331e:	701a      	strb	r2, [r3, #0]
    3320:	68bb      	ldr	r3, [r7, #8]
    3322:	4a4d      	ldr	r2, [pc, #308]	; (3458 <date_str+0x19e>)
    3324:	fba2 1203 	umull	r1, r2, r2, r3
    3328:	0952      	lsrs	r2, r2, #5
    332a:	2164      	movs	r1, #100	; 0x64
    332c:	fb01 f202 	mul.w	r2, r1, r2
    3330:	1a9b      	subs	r3, r3, r2
    3332:	60bb      	str	r3, [r7, #8]
    3334:	68fb      	ldr	r3, [r7, #12]
    3336:	1c5a      	adds	r2, r3, #1
    3338:	60fa      	str	r2, [r7, #12]
    333a:	461a      	mov	r2, r3
    333c:	683b      	ldr	r3, [r7, #0]
    333e:	4413      	add	r3, r2
    3340:	68ba      	ldr	r2, [r7, #8]
    3342:	4946      	ldr	r1, [pc, #280]	; (345c <date_str+0x1a2>)
    3344:	fba1 1202 	umull	r1, r2, r1, r2
    3348:	08d2      	lsrs	r2, r2, #3
    334a:	b2d2      	uxtb	r2, r2
    334c:	3230      	adds	r2, #48	; 0x30
    334e:	b2d2      	uxtb	r2, r2
    3350:	701a      	strb	r2, [r3, #0]
    3352:	68fb      	ldr	r3, [r7, #12]
    3354:	1c5a      	adds	r2, r3, #1
    3356:	60fa      	str	r2, [r7, #12]
    3358:	461a      	mov	r2, r3
    335a:	683b      	ldr	r3, [r7, #0]
    335c:	1898      	adds	r0, r3, r2
    335e:	68b9      	ldr	r1, [r7, #8]
    3360:	4b3e      	ldr	r3, [pc, #248]	; (345c <date_str+0x1a2>)
    3362:	fba3 2301 	umull	r2, r3, r3, r1
    3366:	08da      	lsrs	r2, r3, #3
    3368:	4613      	mov	r3, r2
    336a:	009b      	lsls	r3, r3, #2
    336c:	4413      	add	r3, r2
    336e:	005b      	lsls	r3, r3, #1
    3370:	1aca      	subs	r2, r1, r3
    3372:	b2d3      	uxtb	r3, r2
    3374:	3330      	adds	r3, #48	; 0x30
    3376:	b2db      	uxtb	r3, r3
    3378:	7003      	strb	r3, [r0, #0]
    337a:	68fb      	ldr	r3, [r7, #12]
    337c:	1c5a      	adds	r2, r3, #1
    337e:	60fa      	str	r2, [r7, #12]
    3380:	461a      	mov	r2, r3
    3382:	683b      	ldr	r3, [r7, #0]
    3384:	4413      	add	r3, r2
    3386:	222f      	movs	r2, #47	; 0x2f
    3388:	701a      	strb	r2, [r3, #0]
    338a:	687b      	ldr	r3, [r7, #4]
    338c:	885b      	ldrh	r3, [r3, #2]
    338e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3392:	b2db      	uxtb	r3, r3
    3394:	60bb      	str	r3, [r7, #8]
    3396:	68fb      	ldr	r3, [r7, #12]
    3398:	1c5a      	adds	r2, r3, #1
    339a:	60fa      	str	r2, [r7, #12]
    339c:	461a      	mov	r2, r3
    339e:	683b      	ldr	r3, [r7, #0]
    33a0:	4413      	add	r3, r2
    33a2:	68ba      	ldr	r2, [r7, #8]
    33a4:	492d      	ldr	r1, [pc, #180]	; (345c <date_str+0x1a2>)
    33a6:	fba1 1202 	umull	r1, r2, r1, r2
    33aa:	08d2      	lsrs	r2, r2, #3
    33ac:	b2d2      	uxtb	r2, r2
    33ae:	3230      	adds	r2, #48	; 0x30
    33b0:	b2d2      	uxtb	r2, r2
    33b2:	701a      	strb	r2, [r3, #0]
    33b4:	68fb      	ldr	r3, [r7, #12]
    33b6:	1c5a      	adds	r2, r3, #1
    33b8:	60fa      	str	r2, [r7, #12]
    33ba:	461a      	mov	r2, r3
    33bc:	683b      	ldr	r3, [r7, #0]
    33be:	1898      	adds	r0, r3, r2
    33c0:	68b9      	ldr	r1, [r7, #8]
    33c2:	4b26      	ldr	r3, [pc, #152]	; (345c <date_str+0x1a2>)
    33c4:	fba3 2301 	umull	r2, r3, r3, r1
    33c8:	08da      	lsrs	r2, r3, #3
    33ca:	4613      	mov	r3, r2
    33cc:	009b      	lsls	r3, r3, #2
    33ce:	4413      	add	r3, r2
    33d0:	005b      	lsls	r3, r3, #1
    33d2:	1aca      	subs	r2, r1, r3
    33d4:	b2d3      	uxtb	r3, r2
    33d6:	3330      	adds	r3, #48	; 0x30
    33d8:	b2db      	uxtb	r3, r3
    33da:	7003      	strb	r3, [r0, #0]
    33dc:	68fb      	ldr	r3, [r7, #12]
    33de:	1c5a      	adds	r2, r3, #1
    33e0:	60fa      	str	r2, [r7, #12]
    33e2:	461a      	mov	r2, r3
    33e4:	683b      	ldr	r3, [r7, #0]
    33e6:	4413      	add	r3, r2
    33e8:	222f      	movs	r2, #47	; 0x2f
    33ea:	701a      	strb	r2, [r3, #0]
    33ec:	687b      	ldr	r3, [r7, #4]
    33ee:	789b      	ldrb	r3, [r3, #2]
    33f0:	f3c3 0344 	ubfx	r3, r3, #1, #5
    33f4:	b2db      	uxtb	r3, r3
    33f6:	60bb      	str	r3, [r7, #8]
    33f8:	68fb      	ldr	r3, [r7, #12]
    33fa:	1c5a      	adds	r2, r3, #1
    33fc:	60fa      	str	r2, [r7, #12]
    33fe:	461a      	mov	r2, r3
    3400:	683b      	ldr	r3, [r7, #0]
    3402:	4413      	add	r3, r2
    3404:	68ba      	ldr	r2, [r7, #8]
    3406:	4915      	ldr	r1, [pc, #84]	; (345c <date_str+0x1a2>)
    3408:	fba1 1202 	umull	r1, r2, r1, r2
    340c:	08d2      	lsrs	r2, r2, #3
    340e:	b2d2      	uxtb	r2, r2
    3410:	3230      	adds	r2, #48	; 0x30
    3412:	b2d2      	uxtb	r2, r2
    3414:	701a      	strb	r2, [r3, #0]
    3416:	68fb      	ldr	r3, [r7, #12]
    3418:	1c5a      	adds	r2, r3, #1
    341a:	60fa      	str	r2, [r7, #12]
    341c:	461a      	mov	r2, r3
    341e:	683b      	ldr	r3, [r7, #0]
    3420:	1898      	adds	r0, r3, r2
    3422:	68b9      	ldr	r1, [r7, #8]
    3424:	4b0d      	ldr	r3, [pc, #52]	; (345c <date_str+0x1a2>)
    3426:	fba3 2301 	umull	r2, r3, r3, r1
    342a:	08da      	lsrs	r2, r3, #3
    342c:	4613      	mov	r3, r2
    342e:	009b      	lsls	r3, r3, #2
    3430:	4413      	add	r3, r2
    3432:	005b      	lsls	r3, r3, #1
    3434:	1aca      	subs	r2, r1, r3
    3436:	b2d3      	uxtb	r3, r2
    3438:	3330      	adds	r3, #48	; 0x30
    343a:	b2db      	uxtb	r3, r3
    343c:	7003      	strb	r3, [r0, #0]
    343e:	68fb      	ldr	r3, [r7, #12]
    3440:	683a      	ldr	r2, [r7, #0]
    3442:	4413      	add	r3, r2
    3444:	2200      	movs	r2, #0
    3446:	701a      	strb	r2, [r3, #0]
    3448:	bf00      	nop
    344a:	3714      	adds	r7, #20
    344c:	46bd      	mov	sp, r7
    344e:	bc80      	pop	{r7}
    3450:	4770      	bx	lr
    3452:	bf00      	nop
    3454:	10624dd3 	.word	0x10624dd3
    3458:	51eb851f 	.word	0x51eb851f
    345c:	cccccccd 	.word	0xcccccccd

00003460 <time_str>:
    3460:	b480      	push	{r7}
    3462:	b085      	sub	sp, #20
    3464:	af00      	add	r7, sp, #0
    3466:	6078      	str	r0, [r7, #4]
    3468:	6039      	str	r1, [r7, #0]
    346a:	2300      	movs	r3, #0
    346c:	60fb      	str	r3, [r7, #12]
    346e:	687b      	ldr	r3, [r7, #4]
    3470:	681b      	ldr	r3, [r3, #0]
    3472:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3476:	b2db      	uxtb	r3, r3
    3478:	60bb      	str	r3, [r7, #8]
    347a:	68fb      	ldr	r3, [r7, #12]
    347c:	1c5a      	adds	r2, r3, #1
    347e:	60fa      	str	r2, [r7, #12]
    3480:	461a      	mov	r2, r3
    3482:	683b      	ldr	r3, [r7, #0]
    3484:	4413      	add	r3, r2
    3486:	68ba      	ldr	r2, [r7, #8]
    3488:	4943      	ldr	r1, [pc, #268]	; (3598 <time_str+0x138>)
    348a:	fba1 1202 	umull	r1, r2, r1, r2
    348e:	08d2      	lsrs	r2, r2, #3
    3490:	b2d2      	uxtb	r2, r2
    3492:	3230      	adds	r2, #48	; 0x30
    3494:	b2d2      	uxtb	r2, r2
    3496:	701a      	strb	r2, [r3, #0]
    3498:	68fb      	ldr	r3, [r7, #12]
    349a:	1c5a      	adds	r2, r3, #1
    349c:	60fa      	str	r2, [r7, #12]
    349e:	461a      	mov	r2, r3
    34a0:	683b      	ldr	r3, [r7, #0]
    34a2:	1898      	adds	r0, r3, r2
    34a4:	68b9      	ldr	r1, [r7, #8]
    34a6:	4b3c      	ldr	r3, [pc, #240]	; (3598 <time_str+0x138>)
    34a8:	fba3 2301 	umull	r2, r3, r3, r1
    34ac:	08da      	lsrs	r2, r3, #3
    34ae:	4613      	mov	r3, r2
    34b0:	009b      	lsls	r3, r3, #2
    34b2:	4413      	add	r3, r2
    34b4:	005b      	lsls	r3, r3, #1
    34b6:	1aca      	subs	r2, r1, r3
    34b8:	b2d3      	uxtb	r3, r2
    34ba:	3330      	adds	r3, #48	; 0x30
    34bc:	b2db      	uxtb	r3, r3
    34be:	7003      	strb	r3, [r0, #0]
    34c0:	68fb      	ldr	r3, [r7, #12]
    34c2:	1c5a      	adds	r2, r3, #1
    34c4:	60fa      	str	r2, [r7, #12]
    34c6:	461a      	mov	r2, r3
    34c8:	683b      	ldr	r3, [r7, #0]
    34ca:	4413      	add	r3, r2
    34cc:	223a      	movs	r2, #58	; 0x3a
    34ce:	701a      	strb	r2, [r3, #0]
    34d0:	687b      	ldr	r3, [r7, #4]
    34d2:	881b      	ldrh	r3, [r3, #0]
    34d4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    34d8:	b2db      	uxtb	r3, r3
    34da:	60bb      	str	r3, [r7, #8]
    34dc:	68fb      	ldr	r3, [r7, #12]
    34de:	1c5a      	adds	r2, r3, #1
    34e0:	60fa      	str	r2, [r7, #12]
    34e2:	461a      	mov	r2, r3
    34e4:	683b      	ldr	r3, [r7, #0]
    34e6:	4413      	add	r3, r2
    34e8:	68ba      	ldr	r2, [r7, #8]
    34ea:	492b      	ldr	r1, [pc, #172]	; (3598 <time_str+0x138>)
    34ec:	fba1 1202 	umull	r1, r2, r1, r2
    34f0:	08d2      	lsrs	r2, r2, #3
    34f2:	b2d2      	uxtb	r2, r2
    34f4:	3230      	adds	r2, #48	; 0x30
    34f6:	b2d2      	uxtb	r2, r2
    34f8:	701a      	strb	r2, [r3, #0]
    34fa:	68fb      	ldr	r3, [r7, #12]
    34fc:	1c5a      	adds	r2, r3, #1
    34fe:	60fa      	str	r2, [r7, #12]
    3500:	461a      	mov	r2, r3
    3502:	683b      	ldr	r3, [r7, #0]
    3504:	1898      	adds	r0, r3, r2
    3506:	68b9      	ldr	r1, [r7, #8]
    3508:	4b23      	ldr	r3, [pc, #140]	; (3598 <time_str+0x138>)
    350a:	fba3 2301 	umull	r2, r3, r3, r1
    350e:	08da      	lsrs	r2, r3, #3
    3510:	4613      	mov	r3, r2
    3512:	009b      	lsls	r3, r3, #2
    3514:	4413      	add	r3, r2
    3516:	005b      	lsls	r3, r3, #1
    3518:	1aca      	subs	r2, r1, r3
    351a:	b2d3      	uxtb	r3, r2
    351c:	3330      	adds	r3, #48	; 0x30
    351e:	b2db      	uxtb	r3, r3
    3520:	7003      	strb	r3, [r0, #0]
    3522:	68fb      	ldr	r3, [r7, #12]
    3524:	1c5a      	adds	r2, r3, #1
    3526:	60fa      	str	r2, [r7, #12]
    3528:	461a      	mov	r2, r3
    352a:	683b      	ldr	r3, [r7, #0]
    352c:	4413      	add	r3, r2
    352e:	223a      	movs	r2, #58	; 0x3a
    3530:	701a      	strb	r2, [r3, #0]
    3532:	687b      	ldr	r3, [r7, #4]
    3534:	781b      	ldrb	r3, [r3, #0]
    3536:	f3c3 0305 	ubfx	r3, r3, #0, #6
    353a:	b2db      	uxtb	r3, r3
    353c:	60bb      	str	r3, [r7, #8]
    353e:	68fb      	ldr	r3, [r7, #12]
    3540:	1c5a      	adds	r2, r3, #1
    3542:	60fa      	str	r2, [r7, #12]
    3544:	461a      	mov	r2, r3
    3546:	683b      	ldr	r3, [r7, #0]
    3548:	4413      	add	r3, r2
    354a:	68ba      	ldr	r2, [r7, #8]
    354c:	4912      	ldr	r1, [pc, #72]	; (3598 <time_str+0x138>)
    354e:	fba1 1202 	umull	r1, r2, r1, r2
    3552:	08d2      	lsrs	r2, r2, #3
    3554:	b2d2      	uxtb	r2, r2
    3556:	3230      	adds	r2, #48	; 0x30
    3558:	b2d2      	uxtb	r2, r2
    355a:	701a      	strb	r2, [r3, #0]
    355c:	68fb      	ldr	r3, [r7, #12]
    355e:	1c5a      	adds	r2, r3, #1
    3560:	60fa      	str	r2, [r7, #12]
    3562:	461a      	mov	r2, r3
    3564:	683b      	ldr	r3, [r7, #0]
    3566:	1898      	adds	r0, r3, r2
    3568:	68b9      	ldr	r1, [r7, #8]
    356a:	4b0b      	ldr	r3, [pc, #44]	; (3598 <time_str+0x138>)
    356c:	fba3 2301 	umull	r2, r3, r3, r1
    3570:	08da      	lsrs	r2, r3, #3
    3572:	4613      	mov	r3, r2
    3574:	009b      	lsls	r3, r3, #2
    3576:	4413      	add	r3, r2
    3578:	005b      	lsls	r3, r3, #1
    357a:	1aca      	subs	r2, r1, r3
    357c:	b2d3      	uxtb	r3, r2
    357e:	3330      	adds	r3, #48	; 0x30
    3580:	b2db      	uxtb	r3, r3
    3582:	7003      	strb	r3, [r0, #0]
    3584:	68fb      	ldr	r3, [r7, #12]
    3586:	683a      	ldr	r2, [r7, #0]
    3588:	4413      	add	r3, r2
    358a:	2200      	movs	r2, #0
    358c:	701a      	strb	r2, [r3, #0]
    358e:	bf00      	nop
    3590:	3714      	adds	r7, #20
    3592:	46bd      	mov	sp, r7
    3594:	bc80      	pop	{r7}
    3596:	4770      	bx	lr
    3598:	cccccccd 	.word	0xcccccccd

0000359c <get_fattime>:
    359c:	b580      	push	{r7, lr}
    359e:	b084      	sub	sp, #16
    35a0:	af00      	add	r7, sp, #0
    35a2:	463b      	mov	r3, r7
    35a4:	4618      	mov	r0, r3
    35a6:	f7ff fa69 	bl	2a7c <get_date_time>
    35aa:	783b      	ldrb	r3, [r7, #0]
    35ac:	f3c3 0305 	ubfx	r3, r3, #0, #6
    35b0:	b2db      	uxtb	r3, r3
    35b2:	0fda      	lsrs	r2, r3, #31
    35b4:	4413      	add	r3, r2
    35b6:	105b      	asrs	r3, r3, #1
    35b8:	b2db      	uxtb	r3, r3
    35ba:	f003 031f 	and.w	r3, r3, #31
    35be:	b2da      	uxtb	r2, r3
    35c0:	7b3b      	ldrb	r3, [r7, #12]
    35c2:	f362 0304 	bfi	r3, r2, #0, #5
    35c6:	733b      	strb	r3, [r7, #12]
    35c8:	883b      	ldrh	r3, [r7, #0]
    35ca:	f3c3 1385 	ubfx	r3, r3, #6, #6
    35ce:	b2da      	uxtb	r2, r3
    35d0:	89bb      	ldrh	r3, [r7, #12]
    35d2:	f362 134a 	bfi	r3, r2, #5, #6
    35d6:	81bb      	strh	r3, [r7, #12]
    35d8:	683b      	ldr	r3, [r7, #0]
    35da:	f3c3 3304 	ubfx	r3, r3, #12, #5
    35de:	b2da      	uxtb	r2, r3
    35e0:	7b7b      	ldrb	r3, [r7, #13]
    35e2:	f362 03c7 	bfi	r3, r2, #3, #5
    35e6:	737b      	strb	r3, [r7, #13]
    35e8:	78bb      	ldrb	r3, [r7, #2]
    35ea:	f3c3 0344 	ubfx	r3, r3, #1, #5
    35ee:	b2da      	uxtb	r2, r3
    35f0:	7bbb      	ldrb	r3, [r7, #14]
    35f2:	f362 0304 	bfi	r3, r2, #0, #5
    35f6:	73bb      	strb	r3, [r7, #14]
    35f8:	887b      	ldrh	r3, [r7, #2]
    35fa:	f3c3 1383 	ubfx	r3, r3, #6, #4
    35fe:	b2da      	uxtb	r2, r3
    3600:	89fb      	ldrh	r3, [r7, #14]
    3602:	f362 1348 	bfi	r3, r2, #5, #4
    3606:	81fb      	strh	r3, [r7, #14]
    3608:	893b      	ldrh	r3, [r7, #8]
    360a:	b2db      	uxtb	r3, r3
    360c:	3344      	adds	r3, #68	; 0x44
    360e:	b2db      	uxtb	r3, r3
    3610:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3614:	b2da      	uxtb	r2, r3
    3616:	7bfb      	ldrb	r3, [r7, #15]
    3618:	f362 0347 	bfi	r3, r2, #1, #7
    361c:	73fb      	strb	r3, [r7, #15]
    361e:	68fb      	ldr	r3, [r7, #12]
    3620:	4618      	mov	r0, r3
    3622:	3710      	adds	r7, #16
    3624:	46bd      	mov	sp, r7
    3626:	bd80      	pop	{r7, pc}

00003628 <RTC_handler>:
    3628:	b480      	push	{r7}
    362a:	b083      	sub	sp, #12
    362c:	af00      	add	r7, sp, #0
    362e:	4b0a      	ldr	r3, [pc, #40]	; (3658 <RTC_handler+0x30>)
    3630:	685b      	ldr	r3, [r3, #4]
    3632:	f003 0301 	and.w	r3, r3, #1
    3636:	2b00      	cmp	r3, #0
    3638:	d001      	beq.n	363e <RTC_handler+0x16>
    363a:	4b07      	ldr	r3, [pc, #28]	; (3658 <RTC_handler+0x30>)
    363c:	685b      	ldr	r3, [r3, #4]
    363e:	4b06      	ldr	r3, [pc, #24]	; (3658 <RTC_handler+0x30>)
    3640:	685b      	ldr	r3, [r3, #4]
    3642:	f003 0302 	and.w	r3, r3, #2
    3646:	2b00      	cmp	r3, #0
    3648:	d001      	beq.n	364e <RTC_handler+0x26>
    364a:	4b03      	ldr	r3, [pc, #12]	; (3658 <RTC_handler+0x30>)
    364c:	685b      	ldr	r3, [r3, #4]
    364e:	bf00      	nop
    3650:	370c      	adds	r7, #12
    3652:	46bd      	mov	sp, r7
    3654:	bc80      	pop	{r7}
    3656:	4770      	bx	lr
    3658:	40002800 	.word	0x40002800

0000365c <sound_init>:
    365c:	b480      	push	{r7}
    365e:	af00      	add	r7, sp, #0
    3660:	bf00      	nop
    3662:	46bd      	mov	sp, r7
    3664:	bc80      	pop	{r7}
    3666:	4770      	bx	lr

00003668 <tone>:
    3668:	b480      	push	{r7}
    366a:	b083      	sub	sp, #12
    366c:	af00      	add	r7, sp, #0
    366e:	4603      	mov	r3, r0
    3670:	460a      	mov	r2, r1
    3672:	80fb      	strh	r3, [r7, #6]
    3674:	4613      	mov	r3, r2
    3676:	80bb      	strh	r3, [r7, #4]
    3678:	bf00      	nop
    367a:	370c      	adds	r7, #12
    367c:	46bd      	mov	sp, r7
    367e:	bc80      	pop	{r7}
    3680:	4770      	bx	lr

00003682 <beep>:
    3682:	b480      	push	{r7}
    3684:	af00      	add	r7, sp, #0
    3686:	bf00      	nop
    3688:	46bd      	mov	sp, r7
    368a:	bc80      	pop	{r7}
    368c:	4770      	bx	lr

0000368e <load_sound_buffer>:
    368e:	b480      	push	{r7}
    3690:	b083      	sub	sp, #12
    3692:	af00      	add	r7, sp, #0
    3694:	6078      	str	r0, [r7, #4]
    3696:	bf00      	nop
    3698:	370c      	adds	r7, #12
    369a:	46bd      	mov	sp, r7
    369c:	bc80      	pop	{r7}
    369e:	4770      	bx	lr

000036a0 <sound_stop>:
    36a0:	b480      	push	{r7}
    36a2:	af00      	add	r7, sp, #0
    36a4:	bf00      	nop
    36a6:	46bd      	mov	sp, r7
    36a8:	bc80      	pop	{r7}
    36aa:	4770      	bx	lr

000036ac <key_tone>:
    36ac:	b480      	push	{r7}
    36ae:	b085      	sub	sp, #20
    36b0:	af00      	add	r7, sp, #0
    36b2:	60f8      	str	r0, [r7, #12]
    36b4:	60b9      	str	r1, [r7, #8]
    36b6:	607a      	str	r2, [r7, #4]
    36b8:	bf00      	nop
    36ba:	3714      	adds	r7, #20
    36bc:	46bd      	mov	sp, r7
    36be:	bc80      	pop	{r7}
    36c0:	4770      	bx	lr

000036c2 <noise>:
    36c2:	b480      	push	{r7}
    36c4:	b083      	sub	sp, #12
    36c6:	af00      	add	r7, sp, #0
    36c8:	6078      	str	r0, [r7, #4]
    36ca:	bf00      	nop
    36cc:	370c      	adds	r7, #12
    36ce:	46bd      	mov	sp, r7
    36d0:	bc80      	pop	{r7}
    36d2:	4770      	bx	lr

000036d4 <spi_baudrate>:
    36d4:	b480      	push	{r7}
    36d6:	b083      	sub	sp, #12
    36d8:	af00      	add	r7, sp, #0
    36da:	6078      	str	r0, [r7, #4]
    36dc:	6039      	str	r1, [r7, #0]
    36de:	687b      	ldr	r3, [r7, #4]
    36e0:	681b      	ldr	r3, [r3, #0]
    36e2:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    36e6:	687b      	ldr	r3, [r7, #4]
    36e8:	601a      	str	r2, [r3, #0]
    36ea:	687b      	ldr	r3, [r7, #4]
    36ec:	681a      	ldr	r2, [r3, #0]
    36ee:	683b      	ldr	r3, [r7, #0]
    36f0:	00db      	lsls	r3, r3, #3
    36f2:	431a      	orrs	r2, r3
    36f4:	687b      	ldr	r3, [r7, #4]
    36f6:	601a      	str	r2, [r3, #0]
    36f8:	bf00      	nop
    36fa:	370c      	adds	r7, #12
    36fc:	46bd      	mov	sp, r7
    36fe:	bc80      	pop	{r7}
    3700:	4770      	bx	lr

00003702 <spi_config_port>:
    3702:	b580      	push	{r7, lr}
    3704:	b082      	sub	sp, #8
    3706:	af00      	add	r7, sp, #0
    3708:	6078      	str	r0, [r7, #4]
    370a:	6039      	str	r1, [r7, #0]
    370c:	4a33      	ldr	r2, [pc, #204]	; (37dc <spi_config_port+0xda>)
    370e:	4b33      	ldr	r3, [pc, #204]	; (37dc <spi_config_port+0xda>)
    3710:	699b      	ldr	r3, [r3, #24]
    3712:	f043 0301 	orr.w	r3, r3, #1
    3716:	6193      	str	r3, [r2, #24]
    3718:	687b      	ldr	r3, [r7, #4]
    371a:	4a31      	ldr	r2, [pc, #196]	; (37e0 <spi_config_port+0xde>)
    371c:	4293      	cmp	r3, r2
    371e:	d13e      	bne.n	379e <spi_config_port+0x9c>
    3720:	683b      	ldr	r3, [r7, #0]
    3722:	2b00      	cmp	r3, #0
    3724:	d11a      	bne.n	375c <spi_config_port+0x5a>
    3726:	4a2d      	ldr	r2, [pc, #180]	; (37dc <spi_config_port+0xda>)
    3728:	4b2c      	ldr	r3, [pc, #176]	; (37dc <spi_config_port+0xda>)
    372a:	699b      	ldr	r3, [r3, #24]
    372c:	f043 0304 	orr.w	r3, r3, #4
    3730:	6193      	str	r3, [r2, #24]
    3732:	2203      	movs	r2, #3
    3734:	2104      	movs	r1, #4
    3736:	482b      	ldr	r0, [pc, #172]	; (37e4 <spi_config_port+0xe2>)
    3738:	f7fe f9c1 	bl	1abe <config_pin>
    373c:	220b      	movs	r2, #11
    373e:	2105      	movs	r1, #5
    3740:	4828      	ldr	r0, [pc, #160]	; (37e4 <spi_config_port+0xe2>)
    3742:	f7fe f9bc 	bl	1abe <config_pin>
    3746:	2204      	movs	r2, #4
    3748:	2106      	movs	r1, #6
    374a:	4826      	ldr	r0, [pc, #152]	; (37e4 <spi_config_port+0xe2>)
    374c:	f7fe f9b7 	bl	1abe <config_pin>
    3750:	220b      	movs	r2, #11
    3752:	2107      	movs	r1, #7
    3754:	4823      	ldr	r0, [pc, #140]	; (37e4 <spi_config_port+0xe2>)
    3756:	f7fe f9b2 	bl	1abe <config_pin>
    375a:	e03a      	b.n	37d2 <spi_config_port+0xd0>
    375c:	4a1f      	ldr	r2, [pc, #124]	; (37dc <spi_config_port+0xda>)
    375e:	4b1f      	ldr	r3, [pc, #124]	; (37dc <spi_config_port+0xda>)
    3760:	699b      	ldr	r3, [r3, #24]
    3762:	f043 030d 	orr.w	r3, r3, #13
    3766:	6193      	str	r3, [r2, #24]
    3768:	4a1f      	ldr	r2, [pc, #124]	; (37e8 <spi_config_port+0xe6>)
    376a:	4b1f      	ldr	r3, [pc, #124]	; (37e8 <spi_config_port+0xe6>)
    376c:	685b      	ldr	r3, [r3, #4]
    376e:	f043 0301 	orr.w	r3, r3, #1
    3772:	6053      	str	r3, [r2, #4]
    3774:	2203      	movs	r2, #3
    3776:	210f      	movs	r1, #15
    3778:	481a      	ldr	r0, [pc, #104]	; (37e4 <spi_config_port+0xe2>)
    377a:	f7fe f9a0 	bl	1abe <config_pin>
    377e:	220b      	movs	r2, #11
    3780:	2103      	movs	r1, #3
    3782:	481a      	ldr	r0, [pc, #104]	; (37ec <spi_config_port+0xea>)
    3784:	f7fe f99b 	bl	1abe <config_pin>
    3788:	2204      	movs	r2, #4
    378a:	2104      	movs	r1, #4
    378c:	4817      	ldr	r0, [pc, #92]	; (37ec <spi_config_port+0xea>)
    378e:	f7fe f996 	bl	1abe <config_pin>
    3792:	220b      	movs	r2, #11
    3794:	2105      	movs	r1, #5
    3796:	4815      	ldr	r0, [pc, #84]	; (37ec <spi_config_port+0xea>)
    3798:	f7fe f991 	bl	1abe <config_pin>
    379c:	e019      	b.n	37d2 <spi_config_port+0xd0>
    379e:	4a0f      	ldr	r2, [pc, #60]	; (37dc <spi_config_port+0xda>)
    37a0:	4b0e      	ldr	r3, [pc, #56]	; (37dc <spi_config_port+0xda>)
    37a2:	699b      	ldr	r3, [r3, #24]
    37a4:	f043 0308 	orr.w	r3, r3, #8
    37a8:	6193      	str	r3, [r2, #24]
    37aa:	2203      	movs	r2, #3
    37ac:	2102      	movs	r1, #2
    37ae:	480f      	ldr	r0, [pc, #60]	; (37ec <spi_config_port+0xea>)
    37b0:	f7fe f985 	bl	1abe <config_pin>
    37b4:	220b      	movs	r2, #11
    37b6:	210d      	movs	r1, #13
    37b8:	480c      	ldr	r0, [pc, #48]	; (37ec <spi_config_port+0xea>)
    37ba:	f7fe f980 	bl	1abe <config_pin>
    37be:	2204      	movs	r2, #4
    37c0:	210e      	movs	r1, #14
    37c2:	480a      	ldr	r0, [pc, #40]	; (37ec <spi_config_port+0xea>)
    37c4:	f7fe f97b 	bl	1abe <config_pin>
    37c8:	220b      	movs	r2, #11
    37ca:	210f      	movs	r1, #15
    37cc:	4807      	ldr	r0, [pc, #28]	; (37ec <spi_config_port+0xea>)
    37ce:	f7fe f976 	bl	1abe <config_pin>
    37d2:	bf00      	nop
    37d4:	3708      	adds	r7, #8
    37d6:	46bd      	mov	sp, r7
    37d8:	bd80      	pop	{r7, pc}
    37da:	bf00      	nop
    37dc:	40021000 	.word	0x40021000
    37e0:	40013000 	.word	0x40013000
    37e4:	40010800 	.word	0x40010800
    37e8:	40010000 	.word	0x40010000
    37ec:	40010c00 	.word	0x40010c00

000037f0 <spi_init>:
    37f0:	b580      	push	{r7, lr}
    37f2:	b084      	sub	sp, #16
    37f4:	af00      	add	r7, sp, #0
    37f6:	60f8      	str	r0, [r7, #12]
    37f8:	60b9      	str	r1, [r7, #8]
    37fa:	607a      	str	r2, [r7, #4]
    37fc:	603b      	str	r3, [r7, #0]
    37fe:	6839      	ldr	r1, [r7, #0]
    3800:	68f8      	ldr	r0, [r7, #12]
    3802:	f7ff ff7e 	bl	3702 <spi_config_port>
    3806:	68fb      	ldr	r3, [r7, #12]
    3808:	4a10      	ldr	r2, [pc, #64]	; (384c <spi_init+0x5c>)
    380a:	4293      	cmp	r3, r2
    380c:	d106      	bne.n	381c <spi_init+0x2c>
    380e:	4a10      	ldr	r2, [pc, #64]	; (3850 <spi_init+0x60>)
    3810:	4b0f      	ldr	r3, [pc, #60]	; (3850 <spi_init+0x60>)
    3812:	699b      	ldr	r3, [r3, #24]
    3814:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    3818:	6193      	str	r3, [r2, #24]
    381a:	e005      	b.n	3828 <spi_init+0x38>
    381c:	4a0c      	ldr	r2, [pc, #48]	; (3850 <spi_init+0x60>)
    381e:	4b0c      	ldr	r3, [pc, #48]	; (3850 <spi_init+0x60>)
    3820:	69db      	ldr	r3, [r3, #28]
    3822:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    3826:	61d3      	str	r3, [r2, #28]
    3828:	68fb      	ldr	r3, [r7, #12]
    382a:	687a      	ldr	r2, [r7, #4]
    382c:	601a      	str	r2, [r3, #0]
    382e:	68b9      	ldr	r1, [r7, #8]
    3830:	68f8      	ldr	r0, [r7, #12]
    3832:	f7ff ff4f 	bl	36d4 <spi_baudrate>
    3836:	68fb      	ldr	r3, [r7, #12]
    3838:	681b      	ldr	r3, [r3, #0]
    383a:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    383e:	68fb      	ldr	r3, [r7, #12]
    3840:	601a      	str	r2, [r3, #0]
    3842:	bf00      	nop
    3844:	3710      	adds	r7, #16
    3846:	46bd      	mov	sp, r7
    3848:	bd80      	pop	{r7, pc}
    384a:	bf00      	nop
    384c:	40013000 	.word	0x40013000
    3850:	40021000 	.word	0x40021000

00003854 <spi_send>:
    3854:	b480      	push	{r7}
    3856:	b083      	sub	sp, #12
    3858:	af00      	add	r7, sp, #0
    385a:	6078      	str	r0, [r7, #4]
    385c:	460b      	mov	r3, r1
    385e:	70fb      	strb	r3, [r7, #3]
    3860:	bf00      	nop
    3862:	687b      	ldr	r3, [r7, #4]
    3864:	689b      	ldr	r3, [r3, #8]
    3866:	f003 0302 	and.w	r3, r3, #2
    386a:	2b00      	cmp	r3, #0
    386c:	d0f9      	beq.n	3862 <spi_send+0xe>
    386e:	78fa      	ldrb	r2, [r7, #3]
    3870:	687b      	ldr	r3, [r7, #4]
    3872:	60da      	str	r2, [r3, #12]
    3874:	bf00      	nop
    3876:	687b      	ldr	r3, [r7, #4]
    3878:	689b      	ldr	r3, [r3, #8]
    387a:	f003 0301 	and.w	r3, r3, #1
    387e:	2b00      	cmp	r3, #0
    3880:	d0f9      	beq.n	3876 <spi_send+0x22>
    3882:	687b      	ldr	r3, [r7, #4]
    3884:	68db      	ldr	r3, [r3, #12]
    3886:	b2db      	uxtb	r3, r3
    3888:	4618      	mov	r0, r3
    388a:	370c      	adds	r7, #12
    388c:	46bd      	mov	sp, r7
    388e:	bc80      	pop	{r7}
    3890:	4770      	bx	lr

00003892 <spi_receive>:
    3892:	b480      	push	{r7}
    3894:	b085      	sub	sp, #20
    3896:	af00      	add	r7, sp, #0
    3898:	6078      	str	r0, [r7, #4]
    389a:	bf00      	nop
    389c:	687b      	ldr	r3, [r7, #4]
    389e:	689b      	ldr	r3, [r3, #8]
    38a0:	f003 0302 	and.w	r3, r3, #2
    38a4:	2b00      	cmp	r3, #0
    38a6:	d0f9      	beq.n	389c <spi_receive+0xa>
    38a8:	687b      	ldr	r3, [r7, #4]
    38aa:	22ff      	movs	r2, #255	; 0xff
    38ac:	60da      	str	r2, [r3, #12]
    38ae:	bf00      	nop
    38b0:	687b      	ldr	r3, [r7, #4]
    38b2:	689b      	ldr	r3, [r3, #8]
    38b4:	f003 0301 	and.w	r3, r3, #1
    38b8:	2b00      	cmp	r3, #0
    38ba:	d0f9      	beq.n	38b0 <spi_receive+0x1e>
    38bc:	687b      	ldr	r3, [r7, #4]
    38be:	68db      	ldr	r3, [r3, #12]
    38c0:	73fb      	strb	r3, [r7, #15]
    38c2:	7bfb      	ldrb	r3, [r7, #15]
    38c4:	4618      	mov	r0, r3
    38c6:	3714      	adds	r7, #20
    38c8:	46bd      	mov	sp, r7
    38ca:	bc80      	pop	{r7}
    38cc:	4770      	bx	lr

000038ce <spi_send_block>:
    38ce:	b480      	push	{r7}
    38d0:	b087      	sub	sp, #28
    38d2:	af00      	add	r7, sp, #0
    38d4:	60f8      	str	r0, [r7, #12]
    38d6:	60b9      	str	r1, [r7, #8]
    38d8:	607a      	str	r2, [r7, #4]
    38da:	e010      	b.n	38fe <spi_send_block+0x30>
    38dc:	68bb      	ldr	r3, [r7, #8]
    38de:	1c5a      	adds	r2, r3, #1
    38e0:	60ba      	str	r2, [r7, #8]
    38e2:	781b      	ldrb	r3, [r3, #0]
    38e4:	461a      	mov	r2, r3
    38e6:	68fb      	ldr	r3, [r7, #12]
    38e8:	60da      	str	r2, [r3, #12]
    38ea:	bf00      	nop
    38ec:	68fb      	ldr	r3, [r7, #12]
    38ee:	689b      	ldr	r3, [r3, #8]
    38f0:	f003 0302 	and.w	r3, r3, #2
    38f4:	2b00      	cmp	r3, #0
    38f6:	d0f9      	beq.n	38ec <spi_send_block+0x1e>
    38f8:	687b      	ldr	r3, [r7, #4]
    38fa:	3b01      	subs	r3, #1
    38fc:	607b      	str	r3, [r7, #4]
    38fe:	687b      	ldr	r3, [r7, #4]
    3900:	2b00      	cmp	r3, #0
    3902:	d1eb      	bne.n	38dc <spi_send_block+0xe>
    3904:	bf00      	nop
    3906:	68fb      	ldr	r3, [r7, #12]
    3908:	689b      	ldr	r3, [r3, #8]
    390a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    390e:	2b00      	cmp	r3, #0
    3910:	d1f9      	bne.n	3906 <spi_send_block+0x38>
    3912:	68fb      	ldr	r3, [r7, #12]
    3914:	68db      	ldr	r3, [r3, #12]
    3916:	75fb      	strb	r3, [r7, #23]
    3918:	bf00      	nop
    391a:	371c      	adds	r7, #28
    391c:	46bd      	mov	sp, r7
    391e:	bc80      	pop	{r7}
    3920:	4770      	bx	lr

00003922 <spi_receive_block>:
    3922:	b480      	push	{r7}
    3924:	b085      	sub	sp, #20
    3926:	af00      	add	r7, sp, #0
    3928:	60f8      	str	r0, [r7, #12]
    392a:	60b9      	str	r1, [r7, #8]
    392c:	607a      	str	r2, [r7, #4]
    392e:	e013      	b.n	3958 <spi_receive_block+0x36>
    3930:	68fb      	ldr	r3, [r7, #12]
    3932:	2200      	movs	r2, #0
    3934:	60da      	str	r2, [r3, #12]
    3936:	bf00      	nop
    3938:	68fb      	ldr	r3, [r7, #12]
    393a:	689b      	ldr	r3, [r3, #8]
    393c:	f003 0301 	and.w	r3, r3, #1
    3940:	2b00      	cmp	r3, #0
    3942:	d0f9      	beq.n	3938 <spi_receive_block+0x16>
    3944:	68bb      	ldr	r3, [r7, #8]
    3946:	1c5a      	adds	r2, r3, #1
    3948:	60ba      	str	r2, [r7, #8]
    394a:	68fa      	ldr	r2, [r7, #12]
    394c:	68d2      	ldr	r2, [r2, #12]
    394e:	b2d2      	uxtb	r2, r2
    3950:	701a      	strb	r2, [r3, #0]
    3952:	687b      	ldr	r3, [r7, #4]
    3954:	3b01      	subs	r3, #1
    3956:	607b      	str	r3, [r7, #4]
    3958:	687b      	ldr	r3, [r7, #4]
    395a:	2b00      	cmp	r3, #0
    395c:	d1e8      	bne.n	3930 <spi_receive_block+0xe>
    395e:	bf00      	nop
    3960:	3714      	adds	r7, #20
    3962:	46bd      	mov	sp, r7
    3964:	bc80      	pop	{r7}
    3966:	4770      	bx	lr

00003968 <reset_mcu>:
    3968:	4b01      	ldr	r3, [pc, #4]	; (3970 <reset_mcu+0x8>)
    396a:	4a02      	ldr	r2, [pc, #8]	; (3974 <reset_mcu+0xc>)
    396c:	601a      	str	r2, [r3, #0]
    396e:	bf00      	nop
    3970:	e000ed0c 	.word	0xe000ed0c
    3974:	05fa0004 	.word	0x05fa0004

00003978 <print_fault>:
    3978:	b580      	push	{r7, lr}
    397a:	b082      	sub	sp, #8
    397c:	af00      	add	r7, sp, #0
    397e:	6078      	str	r0, [r7, #4]
    3980:	6039      	str	r1, [r7, #0]
    3982:	6878      	ldr	r0, [r7, #4]
    3984:	f000 f9aa 	bl	3cdc <print>
    3988:	4818      	ldr	r0, [pc, #96]	; (39ec <print_fault+0x74>)
    398a:	f000 f9a7 	bl	3cdc <print>
    398e:	683b      	ldr	r3, [r7, #0]
    3990:	2b00      	cmp	r3, #0
    3992:	d004      	beq.n	399e <print_fault+0x26>
    3994:	683b      	ldr	r3, [r7, #0]
    3996:	2110      	movs	r1, #16
    3998:	4618      	mov	r0, r3
    399a:	f000 f9cf 	bl	3d3c <print_int>
    399e:	200d      	movs	r0, #13
    39a0:	f000 f8e4 	bl	3b6c <put_char>
    39a4:	4812      	ldr	r0, [pc, #72]	; (39f0 <print_fault+0x78>)
    39a6:	f000 f999 	bl	3cdc <print>
    39aa:	4b12      	ldr	r3, [pc, #72]	; (39f4 <print_fault+0x7c>)
    39ac:	681b      	ldr	r3, [r3, #0]
    39ae:	f3c3 430f 	ubfx	r3, r3, #16, #16
    39b2:	b29b      	uxth	r3, r3
    39b4:	2110      	movs	r1, #16
    39b6:	4618      	mov	r0, r3
    39b8:	f000 f9c0 	bl	3d3c <print_int>
    39bc:	480e      	ldr	r0, [pc, #56]	; (39f8 <print_fault+0x80>)
    39be:	f000 f98d 	bl	3cdc <print>
    39c2:	4b0c      	ldr	r3, [pc, #48]	; (39f4 <print_fault+0x7c>)
    39c4:	681b      	ldr	r3, [r3, #0]
    39c6:	f3c3 2307 	ubfx	r3, r3, #8, #8
    39ca:	b2db      	uxtb	r3, r3
    39cc:	2110      	movs	r1, #16
    39ce:	4618      	mov	r0, r3
    39d0:	f000 f9b4 	bl	3d3c <print_int>
    39d4:	4809      	ldr	r0, [pc, #36]	; (39fc <print_fault+0x84>)
    39d6:	f000 f981 	bl	3cdc <print>
    39da:	4b06      	ldr	r3, [pc, #24]	; (39f4 <print_fault+0x7c>)
    39dc:	681b      	ldr	r3, [r3, #0]
    39de:	b2db      	uxtb	r3, r3
    39e0:	2110      	movs	r1, #16
    39e2:	4618      	mov	r0, r3
    39e4:	f000 f9aa 	bl	3d3c <print_int>
    39e8:	e7fe      	b.n	39e8 <print_fault+0x70>
    39ea:	bf00      	nop
    39ec:	00004b30 	.word	0x00004b30
    39f0:	00004b40 	.word	0x00004b40
    39f4:	e000ed28 	.word	0xe000ed28
    39f8:	00004b48 	.word	0x00004b48
    39fc:	00004b50 	.word	0x00004b50

00003a00 <font_color>:
    3a00:	b480      	push	{r7}
    3a02:	b083      	sub	sp, #12
    3a04:	af00      	add	r7, sp, #0
    3a06:	4603      	mov	r3, r0
    3a08:	71fb      	strb	r3, [r7, #7]
    3a0a:	79fb      	ldrb	r3, [r7, #7]
    3a0c:	f003 030f 	and.w	r3, r3, #15
    3a10:	b2da      	uxtb	r2, r3
    3a12:	4b03      	ldr	r3, [pc, #12]	; (3a20 <font_color+0x20>)
    3a14:	705a      	strb	r2, [r3, #1]
    3a16:	bf00      	nop
    3a18:	370c      	adds	r7, #12
    3a1a:	46bd      	mov	sp, r7
    3a1c:	bc80      	pop	{r7}
    3a1e:	4770      	bx	lr
    3a20:	20000068 	.word	0x20000068

00003a24 <bg_color>:
    3a24:	b480      	push	{r7}
    3a26:	b083      	sub	sp, #12
    3a28:	af00      	add	r7, sp, #0
    3a2a:	4603      	mov	r3, r0
    3a2c:	71fb      	strb	r3, [r7, #7]
    3a2e:	79fb      	ldrb	r3, [r7, #7]
    3a30:	f003 030f 	and.w	r3, r3, #15
    3a34:	b2da      	uxtb	r2, r3
    3a36:	4b03      	ldr	r3, [pc, #12]	; (3a44 <bg_color+0x20>)
    3a38:	701a      	strb	r2, [r3, #0]
    3a3a:	bf00      	nop
    3a3c:	370c      	adds	r7, #12
    3a3e:	46bd      	mov	sp, r7
    3a40:	bc80      	pop	{r7}
    3a42:	4770      	bx	lr
    3a44:	20000068 	.word	0x20000068

00003a48 <select_font>:
    3a48:	b480      	push	{r7}
    3a4a:	b083      	sub	sp, #12
    3a4c:	af00      	add	r7, sp, #0
    3a4e:	4603      	mov	r3, r0
    3a50:	71fb      	strb	r3, [r7, #7]
    3a52:	4a04      	ldr	r2, [pc, #16]	; (3a64 <select_font+0x1c>)
    3a54:	79fb      	ldrb	r3, [r7, #7]
    3a56:	7013      	strb	r3, [r2, #0]
    3a58:	bf00      	nop
    3a5a:	370c      	adds	r7, #12
    3a5c:	46bd      	mov	sp, r7
    3a5e:	bc80      	pop	{r7}
    3a60:	4770      	bx	lr
    3a62:	bf00      	nop
    3a64:	20000064 	.word	0x20000064

00003a68 <new_line>:
    3a68:	b580      	push	{r7, lr}
    3a6a:	af00      	add	r7, sp, #0
    3a6c:	4b1e      	ldr	r3, [pc, #120]	; (3ae8 <new_line+0x80>)
    3a6e:	2200      	movs	r2, #0
    3a70:	701a      	strb	r2, [r3, #0]
    3a72:	4b1e      	ldr	r3, [pc, #120]	; (3aec <new_line+0x84>)
    3a74:	781b      	ldrb	r3, [r3, #0]
    3a76:	2b01      	cmp	r3, #1
    3a78:	d014      	beq.n	3aa4 <new_line+0x3c>
    3a7a:	2b02      	cmp	r3, #2
    3a7c:	d022      	beq.n	3ac4 <new_line+0x5c>
    3a7e:	2b00      	cmp	r3, #0
    3a80:	d000      	beq.n	3a84 <new_line+0x1c>
    3a82:	e02f      	b.n	3ae4 <new_line+0x7c>
    3a84:	4b1a      	ldr	r3, [pc, #104]	; (3af0 <new_line+0x88>)
    3a86:	781b      	ldrb	r3, [r3, #0]
    3a88:	3306      	adds	r3, #6
    3a8a:	2b6b      	cmp	r3, #107	; 0x6b
    3a8c:	dc06      	bgt.n	3a9c <new_line+0x34>
    3a8e:	4b18      	ldr	r3, [pc, #96]	; (3af0 <new_line+0x88>)
    3a90:	781b      	ldrb	r3, [r3, #0]
    3a92:	3306      	adds	r3, #6
    3a94:	b2da      	uxtb	r2, r3
    3a96:	4b16      	ldr	r3, [pc, #88]	; (3af0 <new_line+0x88>)
    3a98:	701a      	strb	r2, [r3, #0]
    3a9a:	e023      	b.n	3ae4 <new_line+0x7c>
    3a9c:	2006      	movs	r0, #6
    3a9e:	f7fe f9e7 	bl	1e70 <gfx_scroll_up>
    3aa2:	e01f      	b.n	3ae4 <new_line+0x7c>
    3aa4:	4b12      	ldr	r3, [pc, #72]	; (3af0 <new_line+0x88>)
    3aa6:	781b      	ldrb	r3, [r3, #0]
    3aa8:	330a      	adds	r3, #10
    3aaa:	2b67      	cmp	r3, #103	; 0x67
    3aac:	dc06      	bgt.n	3abc <new_line+0x54>
    3aae:	4b10      	ldr	r3, [pc, #64]	; (3af0 <new_line+0x88>)
    3ab0:	781b      	ldrb	r3, [r3, #0]
    3ab2:	330a      	adds	r3, #10
    3ab4:	b2da      	uxtb	r2, r3
    3ab6:	4b0e      	ldr	r3, [pc, #56]	; (3af0 <new_line+0x88>)
    3ab8:	701a      	strb	r2, [r3, #0]
    3aba:	e013      	b.n	3ae4 <new_line+0x7c>
    3abc:	200a      	movs	r0, #10
    3abe:	f7fe f9d7 	bl	1e70 <gfx_scroll_up>
    3ac2:	e00f      	b.n	3ae4 <new_line+0x7c>
    3ac4:	4b0a      	ldr	r3, [pc, #40]	; (3af0 <new_line+0x88>)
    3ac6:	781b      	ldrb	r3, [r3, #0]
    3ac8:	3308      	adds	r3, #8
    3aca:	2b69      	cmp	r3, #105	; 0x69
    3acc:	dc06      	bgt.n	3adc <new_line+0x74>
    3ace:	4b08      	ldr	r3, [pc, #32]	; (3af0 <new_line+0x88>)
    3ad0:	781b      	ldrb	r3, [r3, #0]
    3ad2:	3308      	adds	r3, #8
    3ad4:	b2da      	uxtb	r2, r3
    3ad6:	4b06      	ldr	r3, [pc, #24]	; (3af0 <new_line+0x88>)
    3ad8:	701a      	strb	r2, [r3, #0]
    3ada:	e002      	b.n	3ae2 <new_line+0x7a>
    3adc:	2008      	movs	r0, #8
    3ade:	f7fe f9c7 	bl	1e70 <gfx_scroll_up>
    3ae2:	bf00      	nop
    3ae4:	bf00      	nop
    3ae6:	bd80      	pop	{r7, pc}
    3ae8:	200004f6 	.word	0x200004f6
    3aec:	20000064 	.word	0x20000064
    3af0:	200004f7 	.word	0x200004f7

00003af4 <draw_char>:
    3af4:	b5b0      	push	{r4, r5, r7, lr}
    3af6:	b086      	sub	sp, #24
    3af8:	af00      	add	r7, sp, #0
    3afa:	60f8      	str	r0, [r7, #12]
    3afc:	60b9      	str	r1, [r7, #8]
    3afe:	607a      	str	r2, [r7, #4]
    3b00:	603b      	str	r3, [r7, #0]
    3b02:	68bc      	ldr	r4, [r7, #8]
    3b04:	e026      	b.n	3b54 <draw_char+0x60>
    3b06:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3b08:	1c5a      	adds	r2, r3, #1
    3b0a:	62ba      	str	r2, [r7, #40]	; 0x28
    3b0c:	781b      	ldrb	r3, [r3, #0]
    3b0e:	757b      	strb	r3, [r7, #21]
    3b10:	2380      	movs	r3, #128	; 0x80
    3b12:	75bb      	strb	r3, [r7, #22]
    3b14:	68fd      	ldr	r5, [r7, #12]
    3b16:	e017      	b.n	3b48 <draw_char+0x54>
    3b18:	7d7a      	ldrb	r2, [r7, #21]
    3b1a:	7dbb      	ldrb	r3, [r7, #22]
    3b1c:	4013      	ands	r3, r2
    3b1e:	753b      	strb	r3, [r7, #20]
    3b20:	7d3b      	ldrb	r3, [r7, #20]
    3b22:	2b00      	cmp	r3, #0
    3b24:	d003      	beq.n	3b2e <draw_char+0x3a>
    3b26:	4b10      	ldr	r3, [pc, #64]	; (3b68 <draw_char+0x74>)
    3b28:	785b      	ldrb	r3, [r3, #1]
    3b2a:	75fb      	strb	r3, [r7, #23]
    3b2c:	e002      	b.n	3b34 <draw_char+0x40>
    3b2e:	4b0e      	ldr	r3, [pc, #56]	; (3b68 <draw_char+0x74>)
    3b30:	781b      	ldrb	r3, [r3, #0]
    3b32:	75fb      	strb	r3, [r7, #23]
    3b34:	7dfb      	ldrb	r3, [r7, #23]
    3b36:	461a      	mov	r2, r3
    3b38:	4621      	mov	r1, r4
    3b3a:	4628      	mov	r0, r5
    3b3c:	f7fe f8ae 	bl	1c9c <gfx_plot>
    3b40:	7dbb      	ldrb	r3, [r7, #22]
    3b42:	085b      	lsrs	r3, r3, #1
    3b44:	75bb      	strb	r3, [r7, #22]
    3b46:	3501      	adds	r5, #1
    3b48:	68fa      	ldr	r2, [r7, #12]
    3b4a:	687b      	ldr	r3, [r7, #4]
    3b4c:	4413      	add	r3, r2
    3b4e:	42ab      	cmp	r3, r5
    3b50:	dce2      	bgt.n	3b18 <draw_char+0x24>
    3b52:	3401      	adds	r4, #1
    3b54:	68ba      	ldr	r2, [r7, #8]
    3b56:	683b      	ldr	r3, [r7, #0]
    3b58:	4413      	add	r3, r2
    3b5a:	42a3      	cmp	r3, r4
    3b5c:	dcd3      	bgt.n	3b06 <draw_char+0x12>
    3b5e:	bf00      	nop
    3b60:	3718      	adds	r7, #24
    3b62:	46bd      	mov	sp, r7
    3b64:	bdb0      	pop	{r4, r5, r7, pc}
    3b66:	bf00      	nop
    3b68:	20000068 	.word	0x20000068

00003b6c <put_char>:
    3b6c:	b580      	push	{r7, lr}
    3b6e:	b084      	sub	sp, #16
    3b70:	af02      	add	r7, sp, #8
    3b72:	4603      	mov	r3, r0
    3b74:	71fb      	strb	r3, [r7, #7]
    3b76:	4b3d      	ldr	r3, [pc, #244]	; (3c6c <put_char+0x100>)
    3b78:	781b      	ldrb	r3, [r3, #0]
    3b7a:	2b01      	cmp	r3, #1
    3b7c:	d027      	beq.n	3bce <put_char+0x62>
    3b7e:	2b02      	cmp	r3, #2
    3b80:	d048      	beq.n	3c14 <put_char+0xa8>
    3b82:	2b00      	cmp	r3, #0
    3b84:	d000      	beq.n	3b88 <put_char+0x1c>
    3b86:	e06d      	b.n	3c64 <put_char+0xf8>
    3b88:	79fb      	ldrb	r3, [r7, #7]
    3b8a:	2b0f      	cmp	r3, #15
    3b8c:	d865      	bhi.n	3c5a <put_char+0xee>
    3b8e:	4b38      	ldr	r3, [pc, #224]	; (3c70 <put_char+0x104>)
    3b90:	781b      	ldrb	r3, [r3, #0]
    3b92:	4618      	mov	r0, r3
    3b94:	4b37      	ldr	r3, [pc, #220]	; (3c74 <put_char+0x108>)
    3b96:	781b      	ldrb	r3, [r3, #0]
    3b98:	4619      	mov	r1, r3
    3b9a:	79fa      	ldrb	r2, [r7, #7]
    3b9c:	4613      	mov	r3, r2
    3b9e:	005b      	lsls	r3, r3, #1
    3ba0:	4413      	add	r3, r2
    3ba2:	005b      	lsls	r3, r3, #1
    3ba4:	461a      	mov	r2, r3
    3ba6:	4b34      	ldr	r3, [pc, #208]	; (3c78 <put_char+0x10c>)
    3ba8:	4413      	add	r3, r2
    3baa:	9300      	str	r3, [sp, #0]
    3bac:	2306      	movs	r3, #6
    3bae:	2204      	movs	r2, #4
    3bb0:	f7ff ffa0 	bl	3af4 <draw_char>
    3bb4:	4b2e      	ldr	r3, [pc, #184]	; (3c70 <put_char+0x104>)
    3bb6:	781b      	ldrb	r3, [r3, #0]
    3bb8:	3304      	adds	r3, #4
    3bba:	b2da      	uxtb	r2, r3
    3bbc:	4b2c      	ldr	r3, [pc, #176]	; (3c70 <put_char+0x104>)
    3bbe:	701a      	strb	r2, [r3, #0]
    3bc0:	4b2b      	ldr	r3, [pc, #172]	; (3c70 <put_char+0x104>)
    3bc2:	781b      	ldrb	r3, [r3, #0]
    3bc4:	2bb1      	cmp	r3, #177	; 0xb1
    3bc6:	d948      	bls.n	3c5a <put_char+0xee>
    3bc8:	f7ff ff4e 	bl	3a68 <new_line>
    3bcc:	e045      	b.n	3c5a <put_char+0xee>
    3bce:	79fb      	ldrb	r3, [r7, #7]
    3bd0:	2b0f      	cmp	r3, #15
    3bd2:	d844      	bhi.n	3c5e <put_char+0xf2>
    3bd4:	4b26      	ldr	r3, [pc, #152]	; (3c70 <put_char+0x104>)
    3bd6:	781b      	ldrb	r3, [r3, #0]
    3bd8:	4618      	mov	r0, r3
    3bda:	4b26      	ldr	r3, [pc, #152]	; (3c74 <put_char+0x108>)
    3bdc:	781b      	ldrb	r3, [r3, #0]
    3bde:	4619      	mov	r1, r3
    3be0:	79fa      	ldrb	r2, [r7, #7]
    3be2:	4613      	mov	r3, r2
    3be4:	009b      	lsls	r3, r3, #2
    3be6:	4413      	add	r3, r2
    3be8:	005b      	lsls	r3, r3, #1
    3bea:	461a      	mov	r2, r3
    3bec:	4b23      	ldr	r3, [pc, #140]	; (3c7c <put_char+0x110>)
    3bee:	4413      	add	r3, r2
    3bf0:	9300      	str	r3, [sp, #0]
    3bf2:	230a      	movs	r3, #10
    3bf4:	2208      	movs	r2, #8
    3bf6:	f7ff ff7d 	bl	3af4 <draw_char>
    3bfa:	4b1d      	ldr	r3, [pc, #116]	; (3c70 <put_char+0x104>)
    3bfc:	781b      	ldrb	r3, [r3, #0]
    3bfe:	3308      	adds	r3, #8
    3c00:	b2da      	uxtb	r2, r3
    3c02:	4b1b      	ldr	r3, [pc, #108]	; (3c70 <put_char+0x104>)
    3c04:	701a      	strb	r2, [r3, #0]
    3c06:	4b1a      	ldr	r3, [pc, #104]	; (3c70 <put_char+0x104>)
    3c08:	781b      	ldrb	r3, [r3, #0]
    3c0a:	2bad      	cmp	r3, #173	; 0xad
    3c0c:	d927      	bls.n	3c5e <put_char+0xf2>
    3c0e:	f7ff ff2b 	bl	3a68 <new_line>
    3c12:	e024      	b.n	3c5e <put_char+0xf2>
    3c14:	79fb      	ldrb	r3, [r7, #7]
    3c16:	2b1f      	cmp	r3, #31
    3c18:	d923      	bls.n	3c62 <put_char+0xf6>
    3c1a:	79fb      	ldrb	r3, [r7, #7]
    3c1c:	2b84      	cmp	r3, #132	; 0x84
    3c1e:	d820      	bhi.n	3c62 <put_char+0xf6>
    3c20:	4b13      	ldr	r3, [pc, #76]	; (3c70 <put_char+0x104>)
    3c22:	781b      	ldrb	r3, [r3, #0]
    3c24:	4618      	mov	r0, r3
    3c26:	4b13      	ldr	r3, [pc, #76]	; (3c74 <put_char+0x108>)
    3c28:	781b      	ldrb	r3, [r3, #0]
    3c2a:	4619      	mov	r1, r3
    3c2c:	79fb      	ldrb	r3, [r7, #7]
    3c2e:	3b20      	subs	r3, #32
    3c30:	00db      	lsls	r3, r3, #3
    3c32:	4a13      	ldr	r2, [pc, #76]	; (3c80 <put_char+0x114>)
    3c34:	4413      	add	r3, r2
    3c36:	9300      	str	r3, [sp, #0]
    3c38:	2308      	movs	r3, #8
    3c3a:	2206      	movs	r2, #6
    3c3c:	f7ff ff5a 	bl	3af4 <draw_char>
    3c40:	4b0b      	ldr	r3, [pc, #44]	; (3c70 <put_char+0x104>)
    3c42:	781b      	ldrb	r3, [r3, #0]
    3c44:	3306      	adds	r3, #6
    3c46:	b2da      	uxtb	r2, r3
    3c48:	4b09      	ldr	r3, [pc, #36]	; (3c70 <put_char+0x104>)
    3c4a:	701a      	strb	r2, [r3, #0]
    3c4c:	4b08      	ldr	r3, [pc, #32]	; (3c70 <put_char+0x104>)
    3c4e:	781b      	ldrb	r3, [r3, #0]
    3c50:	2baf      	cmp	r3, #175	; 0xaf
    3c52:	d906      	bls.n	3c62 <put_char+0xf6>
    3c54:	f7ff ff08 	bl	3a68 <new_line>
    3c58:	e003      	b.n	3c62 <put_char+0xf6>
    3c5a:	bf00      	nop
    3c5c:	e002      	b.n	3c64 <put_char+0xf8>
    3c5e:	bf00      	nop
    3c60:	e000      	b.n	3c64 <put_char+0xf8>
    3c62:	bf00      	nop
    3c64:	bf00      	nop
    3c66:	3708      	adds	r7, #8
    3c68:	46bd      	mov	sp, r7
    3c6a:	bd80      	pop	{r7, pc}
    3c6c:	20000064 	.word	0x20000064
    3c70:	200004f6 	.word	0x200004f6
    3c74:	200004f7 	.word	0x200004f7
    3c78:	00004584 	.word	0x00004584
    3c7c:	000045e4 	.word	0x000045e4
    3c80:	00004684 	.word	0x00004684

00003c84 <set_cursor>:
    3c84:	b480      	push	{r7}
    3c86:	b083      	sub	sp, #12
    3c88:	af00      	add	r7, sp, #0
    3c8a:	4603      	mov	r3, r0
    3c8c:	460a      	mov	r2, r1
    3c8e:	71fb      	strb	r3, [r7, #7]
    3c90:	4613      	mov	r3, r2
    3c92:	71bb      	strb	r3, [r7, #6]
    3c94:	4a05      	ldr	r2, [pc, #20]	; (3cac <set_cursor+0x28>)
    3c96:	79fb      	ldrb	r3, [r7, #7]
    3c98:	7013      	strb	r3, [r2, #0]
    3c9a:	4a05      	ldr	r2, [pc, #20]	; (3cb0 <set_cursor+0x2c>)
    3c9c:	79bb      	ldrb	r3, [r7, #6]
    3c9e:	7013      	strb	r3, [r2, #0]
    3ca0:	bf00      	nop
    3ca2:	370c      	adds	r7, #12
    3ca4:	46bd      	mov	sp, r7
    3ca6:	bc80      	pop	{r7}
    3ca8:	4770      	bx	lr
    3caa:	bf00      	nop
    3cac:	200004f6 	.word	0x200004f6
    3cb0:	200004f7 	.word	0x200004f7

00003cb4 <get_cursor>:
    3cb4:	b480      	push	{r7}
    3cb6:	af00      	add	r7, sp, #0
    3cb8:	4b06      	ldr	r3, [pc, #24]	; (3cd4 <get_cursor+0x20>)
    3cba:	781b      	ldrb	r3, [r3, #0]
    3cbc:	b29b      	uxth	r3, r3
    3cbe:	021b      	lsls	r3, r3, #8
    3cc0:	b29a      	uxth	r2, r3
    3cc2:	4b05      	ldr	r3, [pc, #20]	; (3cd8 <get_cursor+0x24>)
    3cc4:	781b      	ldrb	r3, [r3, #0]
    3cc6:	b29b      	uxth	r3, r3
    3cc8:	4413      	add	r3, r2
    3cca:	b29b      	uxth	r3, r3
    3ccc:	4618      	mov	r0, r3
    3cce:	46bd      	mov	sp, r7
    3cd0:	bc80      	pop	{r7}
    3cd2:	4770      	bx	lr
    3cd4:	200004f6 	.word	0x200004f6
    3cd8:	200004f7 	.word	0x200004f7

00003cdc <print>:
    3cdc:	b580      	push	{r7, lr}
    3cde:	b084      	sub	sp, #16
    3ce0:	af00      	add	r7, sp, #0
    3ce2:	6078      	str	r0, [r7, #4]
    3ce4:	e011      	b.n	3d0a <print+0x2e>
    3ce6:	7bfb      	ldrb	r3, [r7, #15]
    3ce8:	2b0a      	cmp	r3, #10
    3cea:	d004      	beq.n	3cf6 <print+0x1a>
    3cec:	2b0d      	cmp	r3, #13
    3cee:	d002      	beq.n	3cf6 <print+0x1a>
    3cf0:	2b08      	cmp	r3, #8
    3cf2:	d003      	beq.n	3cfc <print+0x20>
    3cf4:	e005      	b.n	3d02 <print+0x26>
    3cf6:	f7ff feb7 	bl	3a68 <new_line>
    3cfa:	e006      	b.n	3d0a <print+0x2e>
    3cfc:	f000 f89b 	bl	3e36 <cursor_left>
    3d00:	e003      	b.n	3d0a <print+0x2e>
    3d02:	7bfb      	ldrb	r3, [r7, #15]
    3d04:	4618      	mov	r0, r3
    3d06:	f7ff ff31 	bl	3b6c <put_char>
    3d0a:	687b      	ldr	r3, [r7, #4]
    3d0c:	1c5a      	adds	r2, r3, #1
    3d0e:	607a      	str	r2, [r7, #4]
    3d10:	781b      	ldrb	r3, [r3, #0]
    3d12:	73fb      	strb	r3, [r7, #15]
    3d14:	7bfb      	ldrb	r3, [r7, #15]
    3d16:	2b00      	cmp	r3, #0
    3d18:	d1e5      	bne.n	3ce6 <print+0xa>
    3d1a:	bf00      	nop
    3d1c:	3710      	adds	r7, #16
    3d1e:	46bd      	mov	sp, r7
    3d20:	bd80      	pop	{r7, pc}

00003d22 <println>:
    3d22:	b580      	push	{r7, lr}
    3d24:	b082      	sub	sp, #8
    3d26:	af00      	add	r7, sp, #0
    3d28:	6078      	str	r0, [r7, #4]
    3d2a:	6878      	ldr	r0, [r7, #4]
    3d2c:	f7ff ffd6 	bl	3cdc <print>
    3d30:	f7ff fe9a 	bl	3a68 <new_line>
    3d34:	bf00      	nop
    3d36:	3708      	adds	r7, #8
    3d38:	46bd      	mov	sp, r7
    3d3a:	bd80      	pop	{r7, pc}

00003d3c <print_int>:
    3d3c:	b580      	push	{r7, lr}
    3d3e:	b08a      	sub	sp, #40	; 0x28
    3d40:	af00      	add	r7, sp, #0
    3d42:	6078      	str	r0, [r7, #4]
    3d44:	460b      	mov	r3, r1
    3d46:	70fb      	strb	r3, [r7, #3]
    3d48:	2300      	movs	r3, #0
    3d4a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3d4e:	2300      	movs	r3, #0
    3d50:	76fb      	strb	r3, [r7, #27]
    3d52:	2320      	movs	r3, #32
    3d54:	76bb      	strb	r3, [r7, #26]
    3d56:	230e      	movs	r3, #14
    3d58:	623b      	str	r3, [r7, #32]
    3d5a:	687b      	ldr	r3, [r7, #4]
    3d5c:	2b00      	cmp	r3, #0
    3d5e:	da27      	bge.n	3db0 <print_int+0x74>
    3d60:	2301      	movs	r3, #1
    3d62:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    3d66:	687b      	ldr	r3, [r7, #4]
    3d68:	425b      	negs	r3, r3
    3d6a:	607b      	str	r3, [r7, #4]
    3d6c:	e020      	b.n	3db0 <print_int+0x74>
    3d6e:	78fa      	ldrb	r2, [r7, #3]
    3d70:	687b      	ldr	r3, [r7, #4]
    3d72:	fb93 f1f2 	sdiv	r1, r3, r2
    3d76:	fb02 f201 	mul.w	r2, r2, r1
    3d7a:	1a9b      	subs	r3, r3, r2
    3d7c:	61fb      	str	r3, [r7, #28]
    3d7e:	69fb      	ldr	r3, [r7, #28]
    3d80:	2b09      	cmp	r3, #9
    3d82:	dd02      	ble.n	3d8a <print_int+0x4e>
    3d84:	69fb      	ldr	r3, [r7, #28]
    3d86:	3307      	adds	r3, #7
    3d88:	61fb      	str	r3, [r7, #28]
    3d8a:	6a3b      	ldr	r3, [r7, #32]
    3d8c:	3b01      	subs	r3, #1
    3d8e:	623b      	str	r3, [r7, #32]
    3d90:	69fb      	ldr	r3, [r7, #28]
    3d92:	3330      	adds	r3, #48	; 0x30
    3d94:	61fb      	str	r3, [r7, #28]
    3d96:	69fb      	ldr	r3, [r7, #28]
    3d98:	b2d9      	uxtb	r1, r3
    3d9a:	f107 020c 	add.w	r2, r7, #12
    3d9e:	6a3b      	ldr	r3, [r7, #32]
    3da0:	4413      	add	r3, r2
    3da2:	460a      	mov	r2, r1
    3da4:	701a      	strb	r2, [r3, #0]
    3da6:	78fb      	ldrb	r3, [r7, #3]
    3da8:	687a      	ldr	r2, [r7, #4]
    3daa:	fb92 f3f3 	sdiv	r3, r2, r3
    3dae:	607b      	str	r3, [r7, #4]
    3db0:	6a3b      	ldr	r3, [r7, #32]
    3db2:	2b01      	cmp	r3, #1
    3db4:	dd02      	ble.n	3dbc <print_int+0x80>
    3db6:	687b      	ldr	r3, [r7, #4]
    3db8:	2b00      	cmp	r3, #0
    3dba:	d1d8      	bne.n	3d6e <print_int+0x32>
    3dbc:	6a3b      	ldr	r3, [r7, #32]
    3dbe:	2b0e      	cmp	r3, #14
    3dc0:	d108      	bne.n	3dd4 <print_int+0x98>
    3dc2:	6a3b      	ldr	r3, [r7, #32]
    3dc4:	3b01      	subs	r3, #1
    3dc6:	623b      	str	r3, [r7, #32]
    3dc8:	f107 020c 	add.w	r2, r7, #12
    3dcc:	6a3b      	ldr	r3, [r7, #32]
    3dce:	4413      	add	r3, r2
    3dd0:	2230      	movs	r2, #48	; 0x30
    3dd2:	701a      	strb	r2, [r3, #0]
    3dd4:	78fb      	ldrb	r3, [r7, #3]
    3dd6:	2b0a      	cmp	r3, #10
    3dd8:	d10d      	bne.n	3df6 <print_int+0xba>
    3dda:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    3dde:	2b00      	cmp	r3, #0
    3de0:	d009      	beq.n	3df6 <print_int+0xba>
    3de2:	6a3b      	ldr	r3, [r7, #32]
    3de4:	3b01      	subs	r3, #1
    3de6:	623b      	str	r3, [r7, #32]
    3de8:	f107 020c 	add.w	r2, r7, #12
    3dec:	6a3b      	ldr	r3, [r7, #32]
    3dee:	4413      	add	r3, r2
    3df0:	222d      	movs	r2, #45	; 0x2d
    3df2:	701a      	strb	r2, [r3, #0]
    3df4:	e014      	b.n	3e20 <print_int+0xe4>
    3df6:	78fb      	ldrb	r3, [r7, #3]
    3df8:	2b10      	cmp	r3, #16
    3dfa:	d111      	bne.n	3e20 <print_int+0xe4>
    3dfc:	6a3b      	ldr	r3, [r7, #32]
    3dfe:	3b01      	subs	r3, #1
    3e00:	623b      	str	r3, [r7, #32]
    3e02:	f107 020c 	add.w	r2, r7, #12
    3e06:	6a3b      	ldr	r3, [r7, #32]
    3e08:	4413      	add	r3, r2
    3e0a:	2278      	movs	r2, #120	; 0x78
    3e0c:	701a      	strb	r2, [r3, #0]
    3e0e:	6a3b      	ldr	r3, [r7, #32]
    3e10:	3b01      	subs	r3, #1
    3e12:	623b      	str	r3, [r7, #32]
    3e14:	f107 020c 	add.w	r2, r7, #12
    3e18:	6a3b      	ldr	r3, [r7, #32]
    3e1a:	4413      	add	r3, r2
    3e1c:	2230      	movs	r2, #48	; 0x30
    3e1e:	701a      	strb	r2, [r3, #0]
    3e20:	f107 020c 	add.w	r2, r7, #12
    3e24:	6a3b      	ldr	r3, [r7, #32]
    3e26:	4413      	add	r3, r2
    3e28:	4618      	mov	r0, r3
    3e2a:	f7ff ff57 	bl	3cdc <print>
    3e2e:	bf00      	nop
    3e30:	3728      	adds	r7, #40	; 0x28
    3e32:	46bd      	mov	sp, r7
    3e34:	bd80      	pop	{r7, pc}

00003e36 <cursor_left>:
    3e36:	b480      	push	{r7}
    3e38:	af00      	add	r7, sp, #0
    3e3a:	4b1b      	ldr	r3, [pc, #108]	; (3ea8 <cursor_left+0x72>)
    3e3c:	781b      	ldrb	r3, [r3, #0]
    3e3e:	2b01      	cmp	r3, #1
    3e40:	d010      	beq.n	3e64 <cursor_left+0x2e>
    3e42:	2b02      	cmp	r3, #2
    3e44:	d01a      	beq.n	3e7c <cursor_left+0x46>
    3e46:	2b00      	cmp	r3, #0
    3e48:	d000      	beq.n	3e4c <cursor_left+0x16>
    3e4a:	e028      	b.n	3e9e <cursor_left+0x68>
    3e4c:	4b17      	ldr	r3, [pc, #92]	; (3eac <cursor_left+0x76>)
    3e4e:	781b      	ldrb	r3, [r3, #0]
    3e50:	3b04      	subs	r3, #4
    3e52:	2b00      	cmp	r3, #0
    3e54:	db1e      	blt.n	3e94 <cursor_left+0x5e>
    3e56:	4b15      	ldr	r3, [pc, #84]	; (3eac <cursor_left+0x76>)
    3e58:	781b      	ldrb	r3, [r3, #0]
    3e5a:	3b04      	subs	r3, #4
    3e5c:	b2da      	uxtb	r2, r3
    3e5e:	4b13      	ldr	r3, [pc, #76]	; (3eac <cursor_left+0x76>)
    3e60:	701a      	strb	r2, [r3, #0]
    3e62:	e017      	b.n	3e94 <cursor_left+0x5e>
    3e64:	4b11      	ldr	r3, [pc, #68]	; (3eac <cursor_left+0x76>)
    3e66:	781b      	ldrb	r3, [r3, #0]
    3e68:	3b08      	subs	r3, #8
    3e6a:	2b00      	cmp	r3, #0
    3e6c:	db14      	blt.n	3e98 <cursor_left+0x62>
    3e6e:	4b0f      	ldr	r3, [pc, #60]	; (3eac <cursor_left+0x76>)
    3e70:	781b      	ldrb	r3, [r3, #0]
    3e72:	3b08      	subs	r3, #8
    3e74:	b2da      	uxtb	r2, r3
    3e76:	4b0d      	ldr	r3, [pc, #52]	; (3eac <cursor_left+0x76>)
    3e78:	701a      	strb	r2, [r3, #0]
    3e7a:	e00d      	b.n	3e98 <cursor_left+0x62>
    3e7c:	4b0b      	ldr	r3, [pc, #44]	; (3eac <cursor_left+0x76>)
    3e7e:	781b      	ldrb	r3, [r3, #0]
    3e80:	3b06      	subs	r3, #6
    3e82:	2b00      	cmp	r3, #0
    3e84:	db0a      	blt.n	3e9c <cursor_left+0x66>
    3e86:	4b09      	ldr	r3, [pc, #36]	; (3eac <cursor_left+0x76>)
    3e88:	781b      	ldrb	r3, [r3, #0]
    3e8a:	3b06      	subs	r3, #6
    3e8c:	b2da      	uxtb	r2, r3
    3e8e:	4b07      	ldr	r3, [pc, #28]	; (3eac <cursor_left+0x76>)
    3e90:	701a      	strb	r2, [r3, #0]
    3e92:	e003      	b.n	3e9c <cursor_left+0x66>
    3e94:	bf00      	nop
    3e96:	e002      	b.n	3e9e <cursor_left+0x68>
    3e98:	bf00      	nop
    3e9a:	e000      	b.n	3e9e <cursor_left+0x68>
    3e9c:	bf00      	nop
    3e9e:	bf00      	nop
    3ea0:	46bd      	mov	sp, r7
    3ea2:	bc80      	pop	{r7}
    3ea4:	4770      	bx	lr
    3ea6:	bf00      	nop
    3ea8:	20000064 	.word	0x20000064
    3eac:	200004f6 	.word	0x200004f6

00003eb0 <text_scroller>:
    3eb0:	b580      	push	{r7, lr}
    3eb2:	b084      	sub	sp, #16
    3eb4:	af00      	add	r7, sp, #0
    3eb6:	6078      	str	r0, [r7, #4]
    3eb8:	460b      	mov	r3, r1
    3eba:	70fb      	strb	r3, [r7, #3]
    3ebc:	f7fd ff84 	bl	1dc8 <gfx_cls>
    3ec0:	2002      	movs	r0, #2
    3ec2:	f7ff fdc1 	bl	3a48 <select_font>
    3ec6:	687b      	ldr	r3, [r7, #4]
    3ec8:	1c5a      	adds	r2, r3, #1
    3eca:	607a      	str	r2, [r7, #4]
    3ecc:	781b      	ldrb	r3, [r3, #0]
    3ece:	73fb      	strb	r3, [r7, #15]
    3ed0:	e035      	b.n	3f3e <text_scroller+0x8e>
    3ed2:	2120      	movs	r1, #32
    3ed4:	2000      	movs	r0, #0
    3ed6:	f7ff fed5 	bl	3c84 <set_cursor>
    3eda:	e00e      	b.n	3efa <text_scroller+0x4a>
    3edc:	7bfb      	ldrb	r3, [r7, #15]
    3ede:	4618      	mov	r0, r3
    3ee0:	f7ff fe44 	bl	3b6c <put_char>
    3ee4:	687b      	ldr	r3, [r7, #4]
    3ee6:	1c5a      	adds	r2, r3, #1
    3ee8:	607a      	str	r2, [r7, #4]
    3eea:	781b      	ldrb	r3, [r3, #0]
    3eec:	73fb      	strb	r3, [r7, #15]
    3eee:	2004      	movs	r0, #4
    3ef0:	f7fd faf4 	bl	14dc <btn_query_down>
    3ef4:	4603      	mov	r3, r0
    3ef6:	2b00      	cmp	r3, #0
    3ef8:	d13c      	bne.n	3f74 <text_scroller+0xc4>
    3efa:	7bfb      	ldrb	r3, [r7, #15]
    3efc:	2b00      	cmp	r3, #0
    3efe:	d002      	beq.n	3f06 <text_scroller+0x56>
    3f00:	7bfb      	ldrb	r3, [r7, #15]
    3f02:	2b0a      	cmp	r3, #10
    3f04:	d1ea      	bne.n	3edc <text_scroller+0x2c>
    3f06:	2300      	movs	r3, #0
    3f08:	73bb      	strb	r3, [r7, #14]
    3f0a:	e010      	b.n	3f2e <text_scroller+0x7e>
    3f0c:	78fb      	ldrb	r3, [r7, #3]
    3f0e:	b29b      	uxth	r3, r3
    3f10:	4618      	mov	r0, r3
    3f12:	f000 fb15 	bl	4540 <game_pause>
    3f16:	2001      	movs	r0, #1
    3f18:	f7fd ffaa 	bl	1e70 <gfx_scroll_up>
    3f1c:	2004      	movs	r0, #4
    3f1e:	f7fd fadd 	bl	14dc <btn_query_down>
    3f22:	4603      	mov	r3, r0
    3f24:	2b00      	cmp	r3, #0
    3f26:	d127      	bne.n	3f78 <text_scroller+0xc8>
    3f28:	7bbb      	ldrb	r3, [r7, #14]
    3f2a:	3301      	adds	r3, #1
    3f2c:	73bb      	strb	r3, [r7, #14]
    3f2e:	7bbb      	ldrb	r3, [r7, #14]
    3f30:	2b07      	cmp	r3, #7
    3f32:	d9eb      	bls.n	3f0c <text_scroller+0x5c>
    3f34:	687b      	ldr	r3, [r7, #4]
    3f36:	1c5a      	adds	r2, r3, #1
    3f38:	607a      	str	r2, [r7, #4]
    3f3a:	781b      	ldrb	r3, [r3, #0]
    3f3c:	73fb      	strb	r3, [r7, #15]
    3f3e:	7bfb      	ldrb	r3, [r7, #15]
    3f40:	2b00      	cmp	r3, #0
    3f42:	d1c6      	bne.n	3ed2 <text_scroller+0x22>
    3f44:	2300      	movs	r3, #0
    3f46:	73fb      	strb	r3, [r7, #15]
    3f48:	e010      	b.n	3f6c <text_scroller+0xbc>
    3f4a:	78fb      	ldrb	r3, [r7, #3]
    3f4c:	b29b      	uxth	r3, r3
    3f4e:	4618      	mov	r0, r3
    3f50:	f000 faf6 	bl	4540 <game_pause>
    3f54:	2001      	movs	r0, #1
    3f56:	f7fd ff8b 	bl	1e70 <gfx_scroll_up>
    3f5a:	2004      	movs	r0, #4
    3f5c:	f7fd fabe 	bl	14dc <btn_query_down>
    3f60:	4603      	mov	r3, r0
    3f62:	2b00      	cmp	r3, #0
    3f64:	d10a      	bne.n	3f7c <text_scroller+0xcc>
    3f66:	7bfb      	ldrb	r3, [r7, #15]
    3f68:	3301      	adds	r3, #1
    3f6a:	73fb      	strb	r3, [r7, #15]
    3f6c:	7bfb      	ldrb	r3, [r7, #15]
    3f6e:	2b1f      	cmp	r3, #31
    3f70:	d9eb      	bls.n	3f4a <text_scroller+0x9a>
    3f72:	e004      	b.n	3f7e <text_scroller+0xce>
    3f74:	bf00      	nop
    3f76:	e002      	b.n	3f7e <text_scroller+0xce>
    3f78:	bf00      	nop
    3f7a:	e000      	b.n	3f7e <text_scroller+0xce>
    3f7c:	bf00      	nop
    3f7e:	f7fd ff23 	bl	1dc8 <gfx_cls>
    3f82:	2004      	movs	r0, #4
    3f84:	f7fd fae4 	bl	1550 <btn_wait_up>
    3f88:	bf00      	nop
    3f8a:	3710      	adds	r7, #16
    3f8c:	46bd      	mov	sp, r7
    3f8e:	bd80      	pop	{r7, pc}

00003f90 <prompt_btn>:
    3f90:	b580      	push	{r7, lr}
    3f92:	af00      	add	r7, sp, #0
    3f94:	4802      	ldr	r0, [pc, #8]	; (3fa0 <prompt_btn+0x10>)
    3f96:	f7ff fea1 	bl	3cdc <print>
    3f9a:	bf00      	nop
    3f9c:	bd80      	pop	{r7, pc}
    3f9e:	bf00      	nop
    3fa0:	00004b9c 	.word	0x00004b9c

00003fa4 <clear_screen>:
    3fa4:	b580      	push	{r7, lr}
    3fa6:	af00      	add	r7, sp, #0
    3fa8:	f7fd ff0e 	bl	1dc8 <gfx_cls>
    3fac:	4b03      	ldr	r3, [pc, #12]	; (3fbc <clear_screen+0x18>)
    3fae:	2200      	movs	r2, #0
    3fb0:	701a      	strb	r2, [r3, #0]
    3fb2:	4b03      	ldr	r3, [pc, #12]	; (3fc0 <clear_screen+0x1c>)
    3fb4:	2200      	movs	r2, #0
    3fb6:	701a      	strb	r2, [r3, #0]
    3fb8:	bf00      	nop
    3fba:	bd80      	pop	{r7, pc}
    3fbc:	200004f6 	.word	0x200004f6
    3fc0:	200004f7 	.word	0x200004f7

00003fc4 <tvout_init>:
    3fc4:	b580      	push	{r7, lr}
    3fc6:	af00      	add	r7, sp, #0
    3fc8:	4b40      	ldr	r3, [pc, #256]	; (40cc <tvout_init+0x108>)
    3fca:	4a41      	ldr	r2, [pc, #260]	; (40d0 <tvout_init+0x10c>)
    3fcc:	601a      	str	r2, [r3, #0]
    3fce:	4b41      	ldr	r3, [pc, #260]	; (40d4 <tvout_init+0x110>)
    3fd0:	4a41      	ldr	r2, [pc, #260]	; (40d8 <tvout_init+0x114>)
    3fd2:	601a      	str	r2, [r3, #0]
    3fd4:	220a      	movs	r2, #10
    3fd6:	2108      	movs	r1, #8
    3fd8:	483c      	ldr	r0, [pc, #240]	; (40cc <tvout_init+0x108>)
    3fda:	f7fd fd70 	bl	1abe <config_pin>
    3fde:	4b3b      	ldr	r3, [pc, #236]	; (40cc <tvout_init+0x108>)
    3fe0:	2200      	movs	r2, #0
    3fe2:	60da      	str	r2, [r3, #12]
    3fe4:	4a3d      	ldr	r2, [pc, #244]	; (40dc <tvout_init+0x118>)
    3fe6:	4b3d      	ldr	r3, [pc, #244]	; (40dc <tvout_init+0x118>)
    3fe8:	699b      	ldr	r3, [r3, #24]
    3fea:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    3fee:	6193      	str	r3, [r2, #24]
    3ff0:	4b3b      	ldr	r3, [pc, #236]	; (40e0 <tvout_init+0x11c>)
    3ff2:	2278      	movs	r2, #120	; 0x78
    3ff4:	619a      	str	r2, [r3, #24]
    3ff6:	4b3a      	ldr	r3, [pc, #232]	; (40e0 <tvout_init+0x11c>)
    3ff8:	2201      	movs	r2, #1
    3ffa:	621a      	str	r2, [r3, #32]
    3ffc:	4b38      	ldr	r3, [pc, #224]	; (40e0 <tvout_init+0x11c>)
    3ffe:	2284      	movs	r2, #132	; 0x84
    4000:	601a      	str	r2, [r3, #0]
    4002:	4b37      	ldr	r3, [pc, #220]	; (40e0 <tvout_init+0x11c>)
    4004:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4008:	62da      	str	r2, [r3, #44]	; 0x2c
    400a:	4b35      	ldr	r3, [pc, #212]	; (40e0 <tvout_init+0x11c>)
    400c:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4010:	635a      	str	r2, [r3, #52]	; 0x34
    4012:	4b33      	ldr	r3, [pc, #204]	; (40e0 <tvout_init+0x11c>)
    4014:	f240 126d 	movw	r2, #365	; 0x16d
    4018:	639a      	str	r2, [r3, #56]	; 0x38
    401a:	4a31      	ldr	r2, [pc, #196]	; (40e0 <tvout_init+0x11c>)
    401c:	4b30      	ldr	r3, [pc, #192]	; (40e0 <tvout_init+0x11c>)
    401e:	695b      	ldr	r3, [r3, #20]
    4020:	f043 0301 	orr.w	r3, r3, #1
    4024:	6153      	str	r3, [r2, #20]
    4026:	4b2e      	ldr	r3, [pc, #184]	; (40e0 <tvout_init+0x11c>)
    4028:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    402c:	645a      	str	r2, [r3, #68]	; 0x44
    402e:	4b2c      	ldr	r3, [pc, #176]	; (40e0 <tvout_init+0x11c>)
    4030:	2200      	movs	r2, #0
    4032:	611a      	str	r2, [r3, #16]
    4034:	4a2a      	ldr	r2, [pc, #168]	; (40e0 <tvout_init+0x11c>)
    4036:	4b2a      	ldr	r3, [pc, #168]	; (40e0 <tvout_init+0x11c>)
    4038:	68db      	ldr	r3, [r3, #12]
    403a:	f043 0301 	orr.w	r3, r3, #1
    403e:	60d3      	str	r3, [r2, #12]
    4040:	2100      	movs	r1, #0
    4042:	2019      	movs	r0, #25
    4044:	f7fe fc9a 	bl	297c <set_int_priority>
    4048:	2100      	movs	r1, #0
    404a:	201b      	movs	r0, #27
    404c:	f7fe fc96 	bl	297c <set_int_priority>
    4050:	2019      	movs	r0, #25
    4052:	f7fe fbd9 	bl	2808 <enable_interrupt>
    4056:	201b      	movs	r0, #27
    4058:	f7fe fbd6 	bl	2808 <enable_interrupt>
    405c:	4a20      	ldr	r2, [pc, #128]	; (40e0 <tvout_init+0x11c>)
    405e:	4b20      	ldr	r3, [pc, #128]	; (40e0 <tvout_init+0x11c>)
    4060:	681b      	ldr	r3, [r3, #0]
    4062:	f043 0301 	orr.w	r3, r3, #1
    4066:	6013      	str	r3, [r2, #0]
    4068:	220a      	movs	r2, #10
    406a:	2100      	movs	r1, #0
    406c:	481d      	ldr	r0, [pc, #116]	; (40e4 <tvout_init+0x120>)
    406e:	f7fd fd26 	bl	1abe <config_pin>
    4072:	4a1a      	ldr	r2, [pc, #104]	; (40dc <tvout_init+0x118>)
    4074:	4b19      	ldr	r3, [pc, #100]	; (40dc <tvout_init+0x118>)
    4076:	69db      	ldr	r3, [r3, #28]
    4078:	f043 0302 	orr.w	r3, r3, #2
    407c:	61d3      	str	r3, [r2, #28]
    407e:	4b1a      	ldr	r3, [pc, #104]	; (40e8 <tvout_init+0x124>)
    4080:	2278      	movs	r2, #120	; 0x78
    4082:	61da      	str	r2, [r3, #28]
    4084:	4b18      	ldr	r3, [pc, #96]	; (40e8 <tvout_init+0x124>)
    4086:	f44f 7280 	mov.w	r2, #256	; 0x100
    408a:	621a      	str	r2, [r3, #32]
    408c:	4b16      	ldr	r3, [pc, #88]	; (40e8 <tvout_init+0x124>)
    408e:	2284      	movs	r2, #132	; 0x84
    4090:	601a      	str	r2, [r3, #0]
    4092:	4b15      	ldr	r3, [pc, #84]	; (40e8 <tvout_init+0x124>)
    4094:	2213      	movs	r2, #19
    4096:	62da      	str	r2, [r3, #44]	; 0x2c
    4098:	4b13      	ldr	r3, [pc, #76]	; (40e8 <tvout_init+0x124>)
    409a:	220a      	movs	r2, #10
    409c:	63da      	str	r2, [r3, #60]	; 0x3c
    409e:	4a12      	ldr	r2, [pc, #72]	; (40e8 <tvout_init+0x124>)
    40a0:	4b11      	ldr	r3, [pc, #68]	; (40e8 <tvout_init+0x124>)
    40a2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    40a4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    40a8:	6453      	str	r3, [r2, #68]	; 0x44
    40aa:	4a0f      	ldr	r2, [pc, #60]	; (40e8 <tvout_init+0x124>)
    40ac:	4b0e      	ldr	r3, [pc, #56]	; (40e8 <tvout_init+0x124>)
    40ae:	695b      	ldr	r3, [r3, #20]
    40b0:	f043 0301 	orr.w	r3, r3, #1
    40b4:	6153      	str	r3, [r2, #20]
    40b6:	4b0c      	ldr	r3, [pc, #48]	; (40e8 <tvout_init+0x124>)
    40b8:	2200      	movs	r2, #0
    40ba:	611a      	str	r2, [r3, #16]
    40bc:	4a0a      	ldr	r2, [pc, #40]	; (40e8 <tvout_init+0x124>)
    40be:	4b0a      	ldr	r3, [pc, #40]	; (40e8 <tvout_init+0x124>)
    40c0:	681b      	ldr	r3, [r3, #0]
    40c2:	f043 0301 	orr.w	r3, r3, #1
    40c6:	6013      	str	r3, [r2, #0]
    40c8:	bf00      	nop
    40ca:	bd80      	pop	{r7, pc}
    40cc:	40010800 	.word	0x40010800
    40d0:	88883333 	.word	0x88883333
    40d4:	40010804 	.word	0x40010804
    40d8:	84484444 	.word	0x84484444
    40dc:	40021000 	.word	0x40021000
    40e0:	40012c00 	.word	0x40012c00
    40e4:	40010c00 	.word	0x40010c00
    40e8:	40000400 	.word	0x40000400

000040ec <TV_OUT_handler>:
    40ec:	4668      	mov	r0, sp
    40ee:	f020 0107 	bic.w	r1, r0, #7
    40f2:	468d      	mov	sp, r1
    40f4:	b571      	push	{r0, r4, r5, r6, lr}
    40f6:	4b3c      	ldr	r3, [pc, #240]	; (41e8 <TV_OUT_handler+0xfc>)
    40f8:	7818      	ldrb	r0, [r3, #0]
    40fa:	2801      	cmp	r0, #1
    40fc:	d962      	bls.n	41c4 <TV_OUT_handler+0xd8>
    40fe:	eb00 03c0 	add.w	r3, r0, r0, lsl #3
    4102:	4a3a      	ldr	r2, [pc, #232]	; (41ec <TV_OUT_handler+0x100>)
    4104:	eb02 0343 	add.w	r3, r2, r3, lsl #1
    4108:	88da      	ldrh	r2, [r3, #6]
    410a:	4939      	ldr	r1, [pc, #228]	; (41f0 <TV_OUT_handler+0x104>)
    410c:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    410e:	4293      	cmp	r3, r2
    4110:	d3fc      	bcc.n	410c <TV_OUT_handler+0x20>
    4112:	4936      	ldr	r1, [pc, #216]	; (41ec <TV_OUT_handler+0x100>)
    4114:	00c5      	lsls	r5, r0, #3
    4116:	182a      	adds	r2, r5, r0
    4118:	eb01 0242 	add.w	r2, r1, r2, lsl #1
    411c:	7a14      	ldrb	r4, [r2, #8]
    411e:	4e35      	ldr	r6, [pc, #212]	; (41f4 <TV_OUT_handler+0x108>)
    4120:	f8d6 e020 	ldr.w	lr, [r6, #32]
    4124:	8a13      	ldrh	r3, [r2, #16]
    4126:	ea43 030e 	orr.w	r3, r3, lr
    412a:	6233      	str	r3, [r6, #32]
    412c:	4b32      	ldr	r3, [pc, #200]	; (41f8 <TV_OUT_handler+0x10c>)
    412e:	881b      	ldrh	r3, [r3, #0]
    4130:	b29b      	uxth	r3, r3
    4132:	7a52      	ldrb	r2, [r2, #9]
    4134:	fb93 f3f2 	sdiv	r3, r3, r2
    4138:	4a30      	ldr	r2, [pc, #192]	; (41fc <TV_OUT_handler+0x110>)
    413a:	fb04 2303 	mla	r3, r4, r3, r2
    413e:	4428      	add	r0, r5
    4140:	eb01 0140 	add.w	r1, r1, r0, lsl #1
    4144:	7a89      	ldrb	r1, [r1, #10]
    4146:	482e      	ldr	r0, [pc, #184]	; (4200 <TV_OUT_handler+0x114>)
    4148:	4602      	mov	r2, r0
    414a:	6812      	ldr	r2, [r2, #0]
    414c:	f002 020f 	and.w	r2, r2, #15
    4150:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4154:	4497      	add	pc, r2
    4156:	bf00      	nop
    4158:	bf00      	nop
    415a:	bf00      	nop
    415c:	bf00      	nop
    415e:	bf00      	nop
    4160:	bf00      	nop
    4162:	bf00      	nop
    4164:	bf00      	nop
    4166:	bf00      	nop
    4168:	bf00      	nop
    416a:	bf00      	nop
    416c:	bf00      	nop
    416e:	bf00      	nop
    4170:	bf00      	nop
    4172:	bf00      	nop
    4174:	bf00      	nop
    4176:	b19c      	cbz	r4, 41a0 <TV_OUT_handler+0xb4>
    4178:	441c      	add	r4, r3
    417a:	f5a0 5010 	sub.w	r0, r0, #9216	; 0x2400
    417e:	3818      	subs	r0, #24
    4180:	781a      	ldrb	r2, [r3, #0]
    4182:	0912      	lsrs	r2, r2, #4
    4184:	8002      	strh	r2, [r0, #0]
    4186:	460a      	mov	r2, r1
    4188:	3a01      	subs	r2, #1
    418a:	d1fd      	bne.n	4188 <TV_OUT_handler+0x9c>
    418c:	f813 2b01 	ldrb.w	r2, [r3], #1
    4190:	f002 020f 	and.w	r2, r2, #15
    4194:	8002      	strh	r2, [r0, #0]
    4196:	460a      	mov	r2, r1
    4198:	3a01      	subs	r2, #1
    419a:	d1fd      	bne.n	4198 <TV_OUT_handler+0xac>
    419c:	429c      	cmp	r4, r3
    419e:	d1ef      	bne.n	4180 <TV_OUT_handler+0x94>
    41a0:	2200      	movs	r2, #0
    41a2:	4b18      	ldr	r3, [pc, #96]	; (4204 <TV_OUT_handler+0x118>)
    41a4:	60da      	str	r2, [r3, #12]
    41a6:	4a13      	ldr	r2, [pc, #76]	; (41f4 <TV_OUT_handler+0x108>)
    41a8:	6a13      	ldr	r3, [r2, #32]
    41aa:	f423 5388 	bic.w	r3, r3, #4352	; 0x1100
    41ae:	6213      	str	r3, [r2, #32]
    41b0:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    41b4:	6913      	ldr	r3, [r2, #16]
    41b6:	f023 0304 	bic.w	r3, r3, #4
    41ba:	6113      	str	r3, [r2, #16]
    41bc:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    41c0:	4685      	mov	sp, r0
    41c2:	4770      	bx	lr
    41c4:	4a0b      	ldr	r2, [pc, #44]	; (41f4 <TV_OUT_handler+0x108>)
    41c6:	6a13      	ldr	r3, [r2, #32]
    41c8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    41cc:	6213      	str	r3, [r2, #32]
    41ce:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    41d2:	6a53      	ldr	r3, [r2, #36]	; 0x24
    41d4:	f5b3 7f0f 	cmp.w	r3, #572	; 0x23c
    41d8:	d9fb      	bls.n	41d2 <TV_OUT_handler+0xe6>
    41da:	4a06      	ldr	r2, [pc, #24]	; (41f4 <TV_OUT_handler+0x108>)
    41dc:	6a13      	ldr	r3, [r2, #32]
    41de:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    41e2:	6213      	str	r3, [r2, #32]
    41e4:	e78b      	b.n	40fe <TV_OUT_handler+0x12>
    41e6:	bf00      	nop
    41e8:	200004f8 	.word	0x200004f8
    41ec:	00004bac 	.word	0x00004bac
    41f0:	40012c00 	.word	0x40012c00
    41f4:	40000400 	.word	0x40000400
    41f8:	200004fe 	.word	0x200004fe
    41fc:	20002530 	.word	0x20002530
    4200:	40012c24 	.word	0x40012c24
    4204:	40010800 	.word	0x40010800

00004208 <TV_SYNC_handler>:
    4208:	4668      	mov	r0, sp
    420a:	f020 0107 	bic.w	r1, r0, #7
    420e:	468d      	mov	sp, r1
    4210:	b501      	push	{r0, lr}
    4212:	4a88      	ldr	r2, [pc, #544]	; (4434 <TV_SYNC_handler+0x22c>)
    4214:	8813      	ldrh	r3, [r2, #0]
    4216:	3301      	adds	r3, #1
    4218:	b29b      	uxth	r3, r3
    421a:	8013      	strh	r3, [r2, #0]
    421c:	4b86      	ldr	r3, [pc, #536]	; (4438 <TV_SYNC_handler+0x230>)
    421e:	881b      	ldrh	r3, [r3, #0]
    4220:	b29b      	uxth	r3, r3
    4222:	2b09      	cmp	r3, #9
    4224:	f200 8088 	bhi.w	4338 <TV_SYNC_handler+0x130>
    4228:	e8df f013 	tbh	[pc, r3, lsl #1]
    422c:	002c000a 	.word	0x002c000a
    4230:	006e004c 	.word	0x006e004c
    4234:	0097008f 	.word	0x0097008f
    4238:	00bb00ac 	.word	0x00bb00ac
    423c:	011600e0 	.word	0x011600e0
    4240:	4b7e      	ldr	r3, [pc, #504]	; (443c <TV_SYNC_handler+0x234>)
    4242:	881b      	ldrh	r3, [r3, #0]
    4244:	b29b      	uxth	r3, r3
    4246:	b18b      	cbz	r3, 426c <TV_SYNC_handler+0x64>
    4248:	4a7c      	ldr	r2, [pc, #496]	; (443c <TV_SYNC_handler+0x234>)
    424a:	8813      	ldrh	r3, [r2, #0]
    424c:	3301      	adds	r3, #1
    424e:	b29b      	uxth	r3, r3
    4250:	8013      	strh	r3, [r2, #0]
    4252:	8813      	ldrh	r3, [r2, #0]
    4254:	b29b      	uxth	r3, r3
    4256:	2b06      	cmp	r3, #6
    4258:	d16e      	bne.n	4338 <TV_SYNC_handler+0x130>
    425a:	2200      	movs	r2, #0
    425c:	4b77      	ldr	r3, [pc, #476]	; (443c <TV_SYNC_handler+0x234>)
    425e:	801a      	strh	r2, [r3, #0]
    4260:	4a75      	ldr	r2, [pc, #468]	; (4438 <TV_SYNC_handler+0x230>)
    4262:	8813      	ldrh	r3, [r2, #0]
    4264:	3301      	adds	r3, #1
    4266:	b29b      	uxth	r3, r3
    4268:	8013      	strh	r3, [r2, #0]
    426a:	e065      	b.n	4338 <TV_SYNC_handler+0x130>
    426c:	4b74      	ldr	r3, [pc, #464]	; (4440 <TV_SYNC_handler+0x238>)
    426e:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4272:	62da      	str	r2, [r3, #44]	; 0x2c
    4274:	22a4      	movs	r2, #164	; 0xa4
    4276:	635a      	str	r2, [r3, #52]	; 0x34
    4278:	4a70      	ldr	r2, [pc, #448]	; (443c <TV_SYNC_handler+0x234>)
    427a:	8813      	ldrh	r3, [r2, #0]
    427c:	3301      	adds	r3, #1
    427e:	b29b      	uxth	r3, r3
    4280:	8013      	strh	r3, [r2, #0]
    4282:	e059      	b.n	4338 <TV_SYNC_handler+0x130>
    4284:	4b6d      	ldr	r3, [pc, #436]	; (443c <TV_SYNC_handler+0x234>)
    4286:	881b      	ldrh	r3, [r3, #0]
    4288:	b29b      	uxth	r3, r3
    428a:	b18b      	cbz	r3, 42b0 <TV_SYNC_handler+0xa8>
    428c:	4a6b      	ldr	r2, [pc, #428]	; (443c <TV_SYNC_handler+0x234>)
    428e:	8813      	ldrh	r3, [r2, #0]
    4290:	3301      	adds	r3, #1
    4292:	b29b      	uxth	r3, r3
    4294:	8013      	strh	r3, [r2, #0]
    4296:	8813      	ldrh	r3, [r2, #0]
    4298:	b29b      	uxth	r3, r3
    429a:	2b06      	cmp	r3, #6
    429c:	d14c      	bne.n	4338 <TV_SYNC_handler+0x130>
    429e:	2200      	movs	r2, #0
    42a0:	4b66      	ldr	r3, [pc, #408]	; (443c <TV_SYNC_handler+0x234>)
    42a2:	801a      	strh	r2, [r3, #0]
    42a4:	4a64      	ldr	r2, [pc, #400]	; (4438 <TV_SYNC_handler+0x230>)
    42a6:	8813      	ldrh	r3, [r2, #0]
    42a8:	3301      	adds	r3, #1
    42aa:	b29b      	uxth	r3, r3
    42ac:	8013      	strh	r3, [r2, #0]
    42ae:	e043      	b.n	4338 <TV_SYNC_handler+0x130>
    42b0:	f240 7294 	movw	r2, #1940	; 0x794
    42b4:	4b62      	ldr	r3, [pc, #392]	; (4440 <TV_SYNC_handler+0x238>)
    42b6:	635a      	str	r2, [r3, #52]	; 0x34
    42b8:	4a60      	ldr	r2, [pc, #384]	; (443c <TV_SYNC_handler+0x234>)
    42ba:	8813      	ldrh	r3, [r2, #0]
    42bc:	3301      	adds	r3, #1
    42be:	b29b      	uxth	r3, r3
    42c0:	8013      	strh	r3, [r2, #0]
    42c2:	e039      	b.n	4338 <TV_SYNC_handler+0x130>
    42c4:	4b5d      	ldr	r3, [pc, #372]	; (443c <TV_SYNC_handler+0x234>)
    42c6:	881b      	ldrh	r3, [r3, #0]
    42c8:	b29b      	uxth	r3, r3
    42ca:	b153      	cbz	r3, 42e2 <TV_SYNC_handler+0xda>
    42cc:	4b5b      	ldr	r3, [pc, #364]	; (443c <TV_SYNC_handler+0x234>)
    42ce:	881b      	ldrh	r3, [r3, #0]
    42d0:	b29b      	uxth	r3, r3
    42d2:	2b06      	cmp	r3, #6
    42d4:	d00e      	beq.n	42f4 <TV_SYNC_handler+0xec>
    42d6:	4a59      	ldr	r2, [pc, #356]	; (443c <TV_SYNC_handler+0x234>)
    42d8:	8813      	ldrh	r3, [r2, #0]
    42da:	3301      	adds	r3, #1
    42dc:	b29b      	uxth	r3, r3
    42de:	8013      	strh	r3, [r2, #0]
    42e0:	e02a      	b.n	4338 <TV_SYNC_handler+0x130>
    42e2:	22a4      	movs	r2, #164	; 0xa4
    42e4:	4b56      	ldr	r3, [pc, #344]	; (4440 <TV_SYNC_handler+0x238>)
    42e6:	635a      	str	r2, [r3, #52]	; 0x34
    42e8:	4a54      	ldr	r2, [pc, #336]	; (443c <TV_SYNC_handler+0x234>)
    42ea:	8813      	ldrh	r3, [r2, #0]
    42ec:	3301      	adds	r3, #1
    42ee:	b29b      	uxth	r3, r3
    42f0:	8013      	strh	r3, [r2, #0]
    42f2:	e021      	b.n	4338 <TV_SYNC_handler+0x130>
    42f4:	4a50      	ldr	r2, [pc, #320]	; (4438 <TV_SYNC_handler+0x230>)
    42f6:	8813      	ldrh	r3, [r2, #0]
    42f8:	3301      	adds	r3, #1
    42fa:	b29b      	uxth	r3, r3
    42fc:	8013      	strh	r3, [r2, #0]
    42fe:	4b51      	ldr	r3, [pc, #324]	; (4444 <TV_SYNC_handler+0x23c>)
    4300:	881b      	ldrh	r3, [r3, #0]
    4302:	f013 0f01 	tst.w	r3, #1
    4306:	d017      	beq.n	4338 <TV_SYNC_handler+0x130>
    4308:	4b4d      	ldr	r3, [pc, #308]	; (4440 <TV_SYNC_handler+0x238>)
    430a:	f241 12c5 	movw	r2, #4549	; 0x11c5
    430e:	62da      	str	r2, [r3, #44]	; 0x2c
    4310:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4314:	635a      	str	r2, [r3, #52]	; 0x34
    4316:	4a4b      	ldr	r2, [pc, #300]	; (4444 <TV_SYNC_handler+0x23c>)
    4318:	8813      	ldrh	r3, [r2, #0]
    431a:	f023 0302 	bic.w	r3, r3, #2
    431e:	041b      	lsls	r3, r3, #16
    4320:	0c1b      	lsrs	r3, r3, #16
    4322:	8013      	strh	r3, [r2, #0]
    4324:	4a43      	ldr	r2, [pc, #268]	; (4434 <TV_SYNC_handler+0x22c>)
    4326:	8813      	ldrh	r3, [r2, #0]
    4328:	f3c3 038d 	ubfx	r3, r3, #2, #14
    432c:	8013      	strh	r3, [r2, #0]
    432e:	4a42      	ldr	r2, [pc, #264]	; (4438 <TV_SYNC_handler+0x230>)
    4330:	8813      	ldrh	r3, [r2, #0]
    4332:	3301      	adds	r3, #1
    4334:	b29b      	uxth	r3, r3
    4336:	8013      	strh	r3, [r2, #0]
    4338:	4a41      	ldr	r2, [pc, #260]	; (4440 <TV_SYNC_handler+0x238>)
    433a:	6913      	ldr	r3, [r2, #16]
    433c:	f023 0301 	bic.w	r3, r3, #1
    4340:	6113      	str	r3, [r2, #16]
    4342:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    4346:	4685      	mov	sp, r0
    4348:	4770      	bx	lr
    434a:	f7fd f8b9 	bl	14c0 <read_gamepad>
    434e:	4a3a      	ldr	r2, [pc, #232]	; (4438 <TV_SYNC_handler+0x230>)
    4350:	8813      	ldrh	r3, [r2, #0]
    4352:	3301      	adds	r3, #1
    4354:	b29b      	uxth	r3, r3
    4356:	8013      	strh	r3, [r2, #0]
    4358:	e7ee      	b.n	4338 <TV_SYNC_handler+0x130>
    435a:	4b3b      	ldr	r3, [pc, #236]	; (4448 <TV_SYNC_handler+0x240>)
    435c:	881b      	ldrh	r3, [r3, #0]
    435e:	b29b      	uxth	r3, r3
    4360:	b13b      	cbz	r3, 4372 <TV_SYNC_handler+0x16a>
    4362:	4a39      	ldr	r2, [pc, #228]	; (4448 <TV_SYNC_handler+0x240>)
    4364:	8813      	ldrh	r3, [r2, #0]
    4366:	3b01      	subs	r3, #1
    4368:	b29b      	uxth	r3, r3
    436a:	8013      	strh	r3, [r2, #0]
    436c:	8813      	ldrh	r3, [r2, #0]
    436e:	b29b      	uxth	r3, r3
    4370:	b12b      	cbz	r3, 437e <TV_SYNC_handler+0x176>
    4372:	4a31      	ldr	r2, [pc, #196]	; (4438 <TV_SYNC_handler+0x230>)
    4374:	8813      	ldrh	r3, [r2, #0]
    4376:	3301      	adds	r3, #1
    4378:	b29b      	uxth	r3, r3
    437a:	8013      	strh	r3, [r2, #0]
    437c:	e7dc      	b.n	4338 <TV_SYNC_handler+0x130>
    437e:	f7ff f98f 	bl	36a0 <sound_stop>
    4382:	e7f6      	b.n	4372 <TV_SYNC_handler+0x16a>
    4384:	4b31      	ldr	r3, [pc, #196]	; (444c <TV_SYNC_handler+0x244>)
    4386:	881b      	ldrh	r3, [r3, #0]
    4388:	b29b      	uxth	r3, r3
    438a:	b123      	cbz	r3, 4396 <TV_SYNC_handler+0x18e>
    438c:	4a2f      	ldr	r2, [pc, #188]	; (444c <TV_SYNC_handler+0x244>)
    438e:	8813      	ldrh	r3, [r2, #0]
    4390:	3b01      	subs	r3, #1
    4392:	b29b      	uxth	r3, r3
    4394:	8013      	strh	r3, [r2, #0]
    4396:	4a28      	ldr	r2, [pc, #160]	; (4438 <TV_SYNC_handler+0x230>)
    4398:	8813      	ldrh	r3, [r2, #0]
    439a:	3301      	adds	r3, #1
    439c:	b29b      	uxth	r3, r3
    439e:	8013      	strh	r3, [r2, #0]
    43a0:	e7ca      	b.n	4338 <TV_SYNC_handler+0x130>
    43a2:	4b24      	ldr	r3, [pc, #144]	; (4434 <TV_SYNC_handler+0x22c>)
    43a4:	881a      	ldrh	r2, [r3, #0]
    43a6:	b292      	uxth	r2, r2
    43a8:	4b29      	ldr	r3, [pc, #164]	; (4450 <TV_SYNC_handler+0x248>)
    43aa:	781b      	ldrb	r3, [r3, #0]
    43ac:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    43b0:	4928      	ldr	r1, [pc, #160]	; (4454 <TV_SYNC_handler+0x24c>)
    43b2:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    43b6:	885b      	ldrh	r3, [r3, #2]
    43b8:	4293      	cmp	r3, r2
    43ba:	d1bd      	bne.n	4338 <TV_SYNC_handler+0x130>
    43bc:	4b20      	ldr	r3, [pc, #128]	; (4440 <TV_SYNC_handler+0x238>)
    43be:	691a      	ldr	r2, [r3, #16]
    43c0:	f022 0204 	bic.w	r2, r2, #4
    43c4:	611a      	str	r2, [r3, #16]
    43c6:	68da      	ldr	r2, [r3, #12]
    43c8:	f042 0204 	orr.w	r2, r2, #4
    43cc:	60da      	str	r2, [r3, #12]
    43ce:	4a1d      	ldr	r2, [pc, #116]	; (4444 <TV_SYNC_handler+0x23c>)
    43d0:	8813      	ldrh	r3, [r2, #0]
    43d2:	b29b      	uxth	r3, r3
    43d4:	f043 0304 	orr.w	r3, r3, #4
    43d8:	8013      	strh	r3, [r2, #0]
    43da:	4a17      	ldr	r2, [pc, #92]	; (4438 <TV_SYNC_handler+0x230>)
    43dc:	8813      	ldrh	r3, [r2, #0]
    43de:	3301      	adds	r3, #1
    43e0:	b29b      	uxth	r3, r3
    43e2:	8013      	strh	r3, [r2, #0]
    43e4:	2200      	movs	r2, #0
    43e6:	4b15      	ldr	r3, [pc, #84]	; (443c <TV_SYNC_handler+0x234>)
    43e8:	801a      	strh	r2, [r3, #0]
    43ea:	e7a5      	b.n	4338 <TV_SYNC_handler+0x130>
    43ec:	4a13      	ldr	r2, [pc, #76]	; (443c <TV_SYNC_handler+0x234>)
    43ee:	8813      	ldrh	r3, [r2, #0]
    43f0:	3301      	adds	r3, #1
    43f2:	b29b      	uxth	r3, r3
    43f4:	8013      	strh	r3, [r2, #0]
    43f6:	4b0f      	ldr	r3, [pc, #60]	; (4434 <TV_SYNC_handler+0x22c>)
    43f8:	881a      	ldrh	r2, [r3, #0]
    43fa:	b292      	uxth	r2, r2
    43fc:	4b14      	ldr	r3, [pc, #80]	; (4450 <TV_SYNC_handler+0x248>)
    43fe:	781b      	ldrb	r3, [r3, #0]
    4400:	eb03 03c3 	add.w	r3, r3, r3, lsl #3
    4404:	4913      	ldr	r1, [pc, #76]	; (4454 <TV_SYNC_handler+0x24c>)
    4406:	eb01 0343 	add.w	r3, r1, r3, lsl #1
    440a:	889b      	ldrh	r3, [r3, #4]
    440c:	4293      	cmp	r3, r2
    440e:	d193      	bne.n	4338 <TV_SYNC_handler+0x130>
    4410:	4a0b      	ldr	r2, [pc, #44]	; (4440 <TV_SYNC_handler+0x238>)
    4412:	68d3      	ldr	r3, [r2, #12]
    4414:	f023 0304 	bic.w	r3, r3, #4
    4418:	60d3      	str	r3, [r2, #12]
    441a:	4a0a      	ldr	r2, [pc, #40]	; (4444 <TV_SYNC_handler+0x23c>)
    441c:	8813      	ldrh	r3, [r2, #0]
    441e:	f023 0304 	bic.w	r3, r3, #4
    4422:	041b      	lsls	r3, r3, #16
    4424:	0c1b      	lsrs	r3, r3, #16
    4426:	8013      	strh	r3, [r2, #0]
    4428:	4a03      	ldr	r2, [pc, #12]	; (4438 <TV_SYNC_handler+0x230>)
    442a:	8813      	ldrh	r3, [r2, #0]
    442c:	3301      	adds	r3, #1
    442e:	b29b      	uxth	r3, r3
    4430:	8013      	strh	r3, [r2, #0]
    4432:	e781      	b.n	4338 <TV_SYNC_handler+0x130>
    4434:	20000500 	.word	0x20000500
    4438:	200004fa 	.word	0x200004fa
    443c:	200004fe 	.word	0x200004fe
    4440:	40012c00 	.word	0x40012c00
    4444:	200004fc 	.word	0x200004fc
    4448:	20004c92 	.word	0x20004c92
    444c:	20004c90 	.word	0x20004c90
    4450:	200004f8 	.word	0x200004f8
    4454:	00004bac 	.word	0x00004bac
    4458:	4b11      	ldr	r3, [pc, #68]	; (44a0 <TV_SYNC_handler+0x298>)
    445a:	881b      	ldrh	r3, [r3, #0]
    445c:	b29b      	uxth	r3, r3
    445e:	f240 1207 	movw	r2, #263	; 0x107
    4462:	4293      	cmp	r3, r2
    4464:	f47f af68 	bne.w	4338 <TV_SYNC_handler+0x130>
    4468:	4b0e      	ldr	r3, [pc, #56]	; (44a4 <TV_SYNC_handler+0x29c>)
    446a:	881b      	ldrh	r3, [r3, #0]
    446c:	f013 0f01 	tst.w	r3, #1
    4470:	d003      	beq.n	447a <TV_SYNC_handler+0x272>
    4472:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4476:	4b0c      	ldr	r3, [pc, #48]	; (44a8 <TV_SYNC_handler+0x2a0>)
    4478:	62da      	str	r2, [r3, #44]	; 0x2c
    447a:	4a0a      	ldr	r2, [pc, #40]	; (44a4 <TV_SYNC_handler+0x29c>)
    447c:	8813      	ldrh	r3, [r2, #0]
    447e:	b29b      	uxth	r3, r3
    4480:	f083 0301 	eor.w	r3, r3, #1
    4484:	8013      	strh	r3, [r2, #0]
    4486:	8813      	ldrh	r3, [r2, #0]
    4488:	b29b      	uxth	r3, r3
    448a:	f043 0302 	orr.w	r3, r3, #2
    448e:	8013      	strh	r3, [r2, #0]
    4490:	2300      	movs	r3, #0
    4492:	4a03      	ldr	r2, [pc, #12]	; (44a0 <TV_SYNC_handler+0x298>)
    4494:	8013      	strh	r3, [r2, #0]
    4496:	4a05      	ldr	r2, [pc, #20]	; (44ac <TV_SYNC_handler+0x2a4>)
    4498:	8013      	strh	r3, [r2, #0]
    449a:	4a05      	ldr	r2, [pc, #20]	; (44b0 <TV_SYNC_handler+0x2a8>)
    449c:	8013      	strh	r3, [r2, #0]
    449e:	e74b      	b.n	4338 <TV_SYNC_handler+0x130>
    44a0:	20000500 	.word	0x20000500
    44a4:	200004fc 	.word	0x200004fc
    44a8:	40012c00 	.word	0x40012c00
    44ac:	200004fe 	.word	0x200004fe
    44b0:	200004fa 	.word	0x200004fa

000044b4 <frame_sync>:
    44b4:	b480      	push	{r7}
    44b6:	af00      	add	r7, sp, #0
    44b8:	bf00      	nop
    44ba:	4b05      	ldr	r3, [pc, #20]	; (44d0 <frame_sync+0x1c>)
    44bc:	881b      	ldrh	r3, [r3, #0]
    44be:	b29b      	uxth	r3, r3
    44c0:	f003 0302 	and.w	r3, r3, #2
    44c4:	2b00      	cmp	r3, #0
    44c6:	d0f8      	beq.n	44ba <frame_sync+0x6>
    44c8:	bf00      	nop
    44ca:	46bd      	mov	sp, r7
    44cc:	bc80      	pop	{r7}
    44ce:	4770      	bx	lr
    44d0:	200004fc 	.word	0x200004fc

000044d4 <wait_sync_end>:
    44d4:	b480      	push	{r7}
    44d6:	af00      	add	r7, sp, #0
    44d8:	bf00      	nop
    44da:	4b05      	ldr	r3, [pc, #20]	; (44f0 <wait_sync_end+0x1c>)
    44dc:	881b      	ldrh	r3, [r3, #0]
    44de:	b29b      	uxth	r3, r3
    44e0:	f003 0302 	and.w	r3, r3, #2
    44e4:	2b00      	cmp	r3, #0
    44e6:	d1f8      	bne.n	44da <wait_sync_end+0x6>
    44e8:	bf00      	nop
    44ea:	46bd      	mov	sp, r7
    44ec:	bc80      	pop	{r7}
    44ee:	4770      	bx	lr
    44f0:	200004fc 	.word	0x200004fc

000044f4 <set_video_mode>:
    44f4:	b580      	push	{r7, lr}
    44f6:	b082      	sub	sp, #8
    44f8:	af00      	add	r7, sp, #0
    44fa:	4603      	mov	r3, r0
    44fc:	71fb      	strb	r3, [r7, #7]
    44fe:	f7fd fc63 	bl	1dc8 <gfx_cls>
    4502:	f7ff ffd7 	bl	44b4 <frame_sync>
    4506:	4a03      	ldr	r2, [pc, #12]	; (4514 <set_video_mode+0x20>)
    4508:	79fb      	ldrb	r3, [r7, #7]
    450a:	7013      	strb	r3, [r2, #0]
    450c:	bf00      	nop
    450e:	3708      	adds	r7, #8
    4510:	46bd      	mov	sp, r7
    4512:	bd80      	pop	{r7, pc}
    4514:	200004f8 	.word	0x200004f8

00004518 <get_video_params>:
    4518:	b480      	push	{r7}
    451a:	af00      	add	r7, sp, #0
    451c:	4b06      	ldr	r3, [pc, #24]	; (4538 <get_video_params+0x20>)
    451e:	781b      	ldrb	r3, [r3, #0]
    4520:	461a      	mov	r2, r3
    4522:	4613      	mov	r3, r2
    4524:	00db      	lsls	r3, r3, #3
    4526:	4413      	add	r3, r2
    4528:	005b      	lsls	r3, r3, #1
    452a:	4a04      	ldr	r2, [pc, #16]	; (453c <get_video_params+0x24>)
    452c:	4413      	add	r3, r2
    452e:	4618      	mov	r0, r3
    4530:	46bd      	mov	sp, r7
    4532:	bc80      	pop	{r7}
    4534:	4770      	bx	lr
    4536:	bf00      	nop
    4538:	200004f8 	.word	0x200004f8
    453c:	00004bac 	.word	0x00004bac

00004540 <game_pause>:
    4540:	b480      	push	{r7}
    4542:	b083      	sub	sp, #12
    4544:	af00      	add	r7, sp, #0
    4546:	4603      	mov	r3, r0
    4548:	80fb      	strh	r3, [r7, #6]
    454a:	4a07      	ldr	r2, [pc, #28]	; (4568 <game_pause+0x28>)
    454c:	88fb      	ldrh	r3, [r7, #6]
    454e:	8013      	strh	r3, [r2, #0]
    4550:	bf00      	nop
    4552:	4b05      	ldr	r3, [pc, #20]	; (4568 <game_pause+0x28>)
    4554:	881b      	ldrh	r3, [r3, #0]
    4556:	b29b      	uxth	r3, r3
    4558:	2b00      	cmp	r3, #0
    455a:	d1fa      	bne.n	4552 <game_pause+0x12>
    455c:	bf00      	nop
    455e:	370c      	adds	r7, #12
    4560:	46bd      	mov	sp, r7
    4562:	bc80      	pop	{r7}
    4564:	4770      	bx	lr
    4566:	bf00      	nop
    4568:	20004c90 	.word	0x20004c90
