
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 3d 02 00 00 b5 01 00 00     .P. 1...=.......
      10:	43 02 00 00 49 02 00 00 4f 02 00 00 7d 46 00 00     C...I...O...}F..
      20:	7d 46 00 00 7d 46 00 00 7d 46 00 00 55 02 00 00     }F..}F..}F..U...
      30:	7d 46 00 00 7d 46 00 00 5b 02 00 00 61 02 00 00     }F..}F..[...a...
      40:	67 02 00 00 6d 02 00 00 79 02 00 00 b5 40 00 00     g...m...y....@..
      50:	7f 02 00 00 85 02 00 00 8b 02 00 00 91 02 00 00     ................
      60:	97 02 00 00 9d 02 00 00 a3 02 00 00 a9 02 00 00     ................
      70:	af 02 00 00 7d 46 00 00 7d 46 00 00 b5 02 00 00     ....}F..}F......
      80:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..
      90:	7d 46 00 00 7d 46 00 00 7d 46 00 00 bb 02 00 00     }F..}F..}F......
      a0:	7d 46 00 00 59 4f 00 00 7d 46 00 00 59 4e 00 00     }F..YO..}F..YN..
      b0:	55 43 00 00 cd 02 00 00 d3 02 00 00 7d 46 00 00     UC..........}F..
      c0:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..
      d0:	7d 46 00 00 d9 02 00 00 df 02 00 00 e5 02 00 00     }F..............
      e0:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..
      f0:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..
     100:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..
     110:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..
     120:	7d 46 00 00 7d 46 00 00 7d 46 00 00 7d 46 00 00     }F..}F..}F..}F..

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
     18e:	f003 f844 	bl	321a <main>
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
     1dc:	f004 fa56 	bl	468c <print_fault>
     1e0:	e01b      	b.n	21a <HARD_FAULT_handler+0x66>
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <HARD_FAULT_handler+0x74>)
     1e4:	681b      	ldr	r3, [r3, #0]
     1e6:	f3c3 2307 	ubfx	r3, r3, #8, #8
     1ea:	b2db      	uxtb	r3, r3
     1ec:	2b00      	cmp	r3, #0
     1ee:	d004      	beq.n	1fa <HARD_FAULT_handler+0x46>
     1f0:	6879      	ldr	r1, [r7, #4]
     1f2:	480f      	ldr	r0, [pc, #60]	; (230 <HARD_FAULT_handler+0x7c>)
     1f4:	f004 fa4a 	bl	468c <print_fault>
     1f8:	e00f      	b.n	21a <HARD_FAULT_handler+0x66>
     1fa:	4b0b      	ldr	r3, [pc, #44]	; (228 <HARD_FAULT_handler+0x74>)
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	f3c3 430f 	ubfx	r3, r3, #16, #16
     202:	b29b      	uxth	r3, r3
     204:	2b00      	cmp	r3, #0
     206:	d004      	beq.n	212 <HARD_FAULT_handler+0x5e>
     208:	6879      	ldr	r1, [r7, #4]
     20a:	480a      	ldr	r0, [pc, #40]	; (234 <HARD_FAULT_handler+0x80>)
     20c:	f004 fa3e 	bl	468c <print_fault>
     210:	e003      	b.n	21a <HARD_FAULT_handler+0x66>
     212:	6879      	ldr	r1, [r7, #4]
     214:	4808      	ldr	r0, [pc, #32]	; (238 <HARD_FAULT_handler+0x84>)
     216:	f004 fa39 	bl	468c <print_fault>
     21a:	bf00      	nop
     21c:	370c      	adds	r7, #12
     21e:	46bd      	mov	sp, r7
     220:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     224:	4685      	mov	sp, r0
     226:	4770      	bx	lr
     228:	e000ed28 	.word	0xe000ed28
     22c:	00005a28 	.word	0x00005a28
     230:	00005a40 	.word	0x00005a40
     234:	00005a4c 	.word	0x00005a4c
     238:	00005a5c 	.word	0x00005a5c

0000023c <NMI_handler>:
     23c:	f004 fa1e 	bl	467c <reset_mcu>
     240:	bf00      	nop

00000242 <MM_FAULT_handler>:
     242:	f004 fa1b 	bl	467c <reset_mcu>
     246:	bf00      	nop

00000248 <BUS_FAULT_handler>:
     248:	f004 fa18 	bl	467c <reset_mcu>
     24c:	bf00      	nop

0000024e <USAGE_FAULT_handler>:
     24e:	f004 fa15 	bl	467c <reset_mcu>
     252:	bf00      	nop

00000254 <SVC_handler>:
     254:	f004 fa12 	bl	467c <reset_mcu>
     258:	bf00      	nop

0000025a <PENDSV_handler>:
     25a:	f004 fa0f 	bl	467c <reset_mcu>
     25e:	bf00      	nop

00000260 <STK_handler>:
     260:	f004 fa0c 	bl	467c <reset_mcu>
     264:	bf00      	nop

00000266 <WWDG_handler>:
     266:	f004 fa09 	bl	467c <reset_mcu>
     26a:	bf00      	nop

0000026c <PVD_handler>:
     26c:	f004 fa06 	bl	467c <reset_mcu>
     270:	bf00      	nop
     272:	f004 fa03 	bl	467c <reset_mcu>
     276:	bf00      	nop

00000278 <TAMPER_handler>:
     278:	f004 fa00 	bl	467c <reset_mcu>
     27c:	bf00      	nop

0000027e <FLASH_handler>:
     27e:	f004 f9fd 	bl	467c <reset_mcu>
     282:	bf00      	nop

00000284 <RCC_handler>:
     284:	f004 f9fa 	bl	467c <reset_mcu>
     288:	bf00      	nop

0000028a <EXTI0_handler>:
     28a:	f004 f9f7 	bl	467c <reset_mcu>
     28e:	bf00      	nop

00000290 <EXTI1_handler>:
     290:	f004 f9f4 	bl	467c <reset_mcu>
     294:	bf00      	nop

00000296 <EXTI2_handler>:
     296:	f004 f9f1 	bl	467c <reset_mcu>
     29a:	bf00      	nop

0000029c <EXTI3_handler>:
     29c:	f004 f9ee 	bl	467c <reset_mcu>
     2a0:	bf00      	nop

000002a2 <EXTI4_handler>:
     2a2:	f004 f9eb 	bl	467c <reset_mcu>
     2a6:	bf00      	nop

000002a8 <DMA1CH1_handler>:
     2a8:	f004 f9e8 	bl	467c <reset_mcu>
     2ac:	bf00      	nop

000002ae <DMA1CH2_handler>:
     2ae:	f004 f9e5 	bl	467c <reset_mcu>
     2b2:	bf00      	nop

000002b4 <DMA1CH5_handler>:
     2b4:	f004 f9e2 	bl	467c <reset_mcu>
     2b8:	bf00      	nop

000002ba <EXTI9_5_handler>:
     2ba:	f004 f9df 	bl	467c <reset_mcu>
     2be:	bf00      	nop

000002c0 <TIM1_CC_handler>:
     2c0:	f004 f9dc 	bl	467c <reset_mcu>
     2c4:	bf00      	nop

000002c6 <TIM2_handler>:
     2c6:	f004 f9d9 	bl	467c <reset_mcu>
     2ca:	bf00      	nop

000002cc <TIM3_handler>:
     2cc:	f004 f9d6 	bl	467c <reset_mcu>
     2d0:	bf00      	nop

000002d2 <TIM4_handler>:
     2d2:	f004 f9d3 	bl	467c <reset_mcu>
     2d6:	bf00      	nop

000002d8 <USART1_handler>:
     2d8:	f004 f9d0 	bl	467c <reset_mcu>
     2dc:	bf00      	nop

000002de <USART2_handler>:
     2de:	f004 f9cd 	bl	467c <reset_mcu>
     2e2:	bf00      	nop

000002e4 <USART3_handler>:
     2e4:	f004 f9ca 	bl	467c <reset_mcu>
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
     3c8:	f004 f9d8 	bl	477c <new_line>
     3cc:	2002      	movs	r0, #2
     3ce:	f004 f9c5 	bl	475c <select_font>
     3d2:	6878      	ldr	r0, [r7, #4]
     3d4:	f004 fb1e 	bl	4a14 <print>
     3d8:	4824      	ldr	r0, [pc, #144]	; (46c <print_vms+0xac>)
     3da:	f004 fb1b 	bl	4a14 <print>
     3de:	4b24      	ldr	r3, [pc, #144]	; (470 <print_vms+0xb0>)
     3e0:	881b      	ldrh	r3, [r3, #0]
     3e2:	3b02      	subs	r3, #2
     3e4:	2110      	movs	r1, #16
     3e6:	4618      	mov	r0, r3
     3e8:	f004 fb44 	bl	4a74 <print_int>
     3ec:	4b20      	ldr	r3, [pc, #128]	; (470 <print_vms+0xb0>)
     3ee:	7d9b      	ldrb	r3, [r3, #22]
     3f0:	2110      	movs	r1, #16
     3f2:	4618      	mov	r0, r3
     3f4:	f004 fb3e 	bl	4a74 <print_int>
     3f8:	4b1d      	ldr	r3, [pc, #116]	; (470 <print_vms+0xb0>)
     3fa:	7ddb      	ldrb	r3, [r3, #23]
     3fc:	2110      	movs	r1, #16
     3fe:	4618      	mov	r0, r3
     400:	f004 fb38 	bl	4a74 <print_int>
     404:	f004 f9ba 	bl	477c <new_line>
     408:	481a      	ldr	r0, [pc, #104]	; (474 <print_vms+0xb4>)
     40a:	f004 fb03 	bl	4a14 <print>
     40e:	4b18      	ldr	r3, [pc, #96]	; (470 <print_vms+0xb0>)
     410:	885b      	ldrh	r3, [r3, #2]
     412:	2110      	movs	r1, #16
     414:	4618      	mov	r0, r3
     416:	f004 fb2d 	bl	4a74 <print_int>
     41a:	4817      	ldr	r0, [pc, #92]	; (478 <print_vms+0xb8>)
     41c:	f004 fafa 	bl	4a14 <print>
     420:	4b13      	ldr	r3, [pc, #76]	; (470 <print_vms+0xb0>)
     422:	791b      	ldrb	r3, [r3, #4]
     424:	2110      	movs	r1, #16
     426:	4618      	mov	r0, r3
     428:	f004 fb24 	bl	4a74 <print_int>
     42c:	f004 f9a6 	bl	477c <new_line>
     430:	4812      	ldr	r0, [pc, #72]	; (47c <print_vms+0xbc>)
     432:	f004 faef 	bl	4a14 <print>
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
     44a:	f004 fb13 	bl	4a74 <print_int>
     44e:	68fb      	ldr	r3, [r7, #12]
     450:	3301      	adds	r3, #1
     452:	60fb      	str	r3, [r7, #12]
     454:	68fb      	ldr	r3, [r7, #12]
     456:	2b0f      	cmp	r3, #15
     458:	ddf0      	ble.n	43c <print_vms+0x7c>
     45a:	f004 f98f 	bl	477c <new_line>
     45e:	f004 fc29 	bl	4cb4 <prompt_btn>
     462:	bf00      	nop
     464:	3710      	adds	r7, #16
     466:	46bd      	mov	sp, r7
     468:	bd80      	pop	{r7, pc}
     46a:	bf00      	nop
     46c:	000053e8 	.word	0x000053e8
     470:	20000184 	.word	0x20000184
     474:	000053ec 	.word	0x000053ec
     478:	000053f0 	.word	0x000053f0
     47c:	000053f8 	.word	0x000053f8

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
     596:	f000 86a4 	beq.w	12e2 <chip_vm+0xe02>
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
     5b2:	f001 fecf 	bl	2354 <gfx_scroll_down>
     5b6:	f000 be94 	b.w	12e2 <chip_vm+0xe02>
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
     5d2:	f001 fe85 	bl	22e0 <gfx_scroll_up>
     5d6:	f000 be84 	b.w	12e2 <chip_vm+0xe02>
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
     66c:	f001 fddc 	bl	2228 <gfx_cls>
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
     68e:	f001 feeb 	bl	2468 <gfx_scroll_right>
     692:	e015      	b.n	6c0 <chip_vm+0x1e0>
     694:	2004      	movs	r0, #4
     696:	f001 fea5 	bl	23e4 <gfx_scroll_left>
     69a:	e011      	b.n	6c0 <chip_vm+0x1e0>
     69c:	2301      	movs	r3, #1
     69e:	f000 be29 	b.w	12f4 <chip_vm+0xe14>
     6a2:	2002      	movs	r0, #2
     6a4:	f004 fdc8 	bl	5238 <set_video_mode>
     6a8:	e00a      	b.n	6c0 <chip_vm+0x1e0>
     6aa:	2001      	movs	r0, #1
     6ac:	f004 fdc4 	bl	5238 <set_video_mode>
     6b0:	e006      	b.n	6c0 <chip_vm+0x1e0>
     6b2:	2000      	movs	r0, #0
     6b4:	f004 fdc0 	bl	5238 <set_video_mode>
     6b8:	e002      	b.n	6c0 <chip_vm+0x1e0>
     6ba:	2302      	movs	r3, #2
     6bc:	f000 be1a 	b.w	12f4 <chip_vm+0xe14>
     6c0:	f000 be0f 	b.w	12e2 <chip_vm+0xe02>
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
     6de:	f000 be07 	b.w	12f0 <chip_vm+0xe10>
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
     71c:	f000 bde8 	b.w	12f0 <chip_vm+0xe10>
     720:	7dfb      	ldrb	r3, [r7, #23]
     722:	4a22      	ldr	r2, [pc, #136]	; (7ac <chip_vm+0x2cc>)
     724:	4413      	add	r3, r2
     726:	799a      	ldrb	r2, [r3, #6]
     728:	4b20      	ldr	r3, [pc, #128]	; (7ac <chip_vm+0x2cc>)
     72a:	7ddb      	ldrb	r3, [r3, #23]
     72c:	429a      	cmp	r2, r3
     72e:	f040 85db 	bne.w	12e8 <chip_vm+0xe08>
     732:	4b1e      	ldr	r3, [pc, #120]	; (7ac <chip_vm+0x2cc>)
     734:	881b      	ldrh	r3, [r3, #0]
     736:	3302      	adds	r3, #2
     738:	b29a      	uxth	r2, r3
     73a:	4b1c      	ldr	r3, [pc, #112]	; (7ac <chip_vm+0x2cc>)
     73c:	801a      	strh	r2, [r3, #0]
     73e:	f000 bdd3 	b.w	12e8 <chip_vm+0xe08>
     742:	7dfb      	ldrb	r3, [r7, #23]
     744:	4a19      	ldr	r2, [pc, #100]	; (7ac <chip_vm+0x2cc>)
     746:	4413      	add	r3, r2
     748:	799a      	ldrb	r2, [r3, #6]
     74a:	4b18      	ldr	r3, [pc, #96]	; (7ac <chip_vm+0x2cc>)
     74c:	7ddb      	ldrb	r3, [r3, #23]
     74e:	429a      	cmp	r2, r3
     750:	f000 85cd 	beq.w	12ee <chip_vm+0xe0e>
     754:	4b15      	ldr	r3, [pc, #84]	; (7ac <chip_vm+0x2cc>)
     756:	881b      	ldrh	r3, [r3, #0]
     758:	3302      	adds	r3, #2
     75a:	b29a      	uxth	r2, r3
     75c:	4b13      	ldr	r3, [pc, #76]	; (7ac <chip_vm+0x2cc>)
     75e:	801a      	strh	r2, [r3, #0]
     760:	f000 bdc5 	b.w	12ee <chip_vm+0xe0e>
     764:	4b11      	ldr	r3, [pc, #68]	; (7ac <chip_vm+0x2cc>)
     766:	7ddb      	ldrb	r3, [r3, #23]
     768:	f003 030f 	and.w	r3, r3, #15
     76c:	2b02      	cmp	r3, #2
     76e:	d016      	beq.n	79e <chip_vm+0x2be>
     770:	2b03      	cmp	r3, #3
     772:	d033      	beq.n	7dc <chip_vm+0x2fc>
     774:	2b00      	cmp	r3, #0
     776:	d001      	beq.n	77c <chip_vm+0x29c>
     778:	f000 bdba 	b.w	12f0 <chip_vm+0xe10>
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
     7ac:	20000184 	.word	0x20000184
     7b0:	20000628 	.word	0x20000628
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
     7d6:	f001 fad6 	bl	1d86 <move>
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
     80a:	f001 fabc 	bl	1d86 <move>
     80e:	e000      	b.n	812 <chip_vm+0x332>
     810:	bf00      	nop
     812:	f000 bd6d 	b.w	12f0 <chip_vm+0xe10>
     816:	7dfb      	ldrb	r3, [r7, #23]
     818:	4a8f      	ldr	r2, [pc, #572]	; (a58 <chip_vm+0x578>)
     81a:	7dd1      	ldrb	r1, [r2, #23]
     81c:	4a8e      	ldr	r2, [pc, #568]	; (a58 <chip_vm+0x578>)
     81e:	4413      	add	r3, r2
     820:	460a      	mov	r2, r1
     822:	719a      	strb	r2, [r3, #6]
     824:	f000 bd64 	b.w	12f0 <chip_vm+0xe10>
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
     864:	f000 bd44 	b.w	12f0 <chip_vm+0xe10>
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
     a4e:	f000 bc51 	b.w	12f4 <chip_vm+0xe14>
     a52:	f000 bc4d 	b.w	12f0 <chip_vm+0xe10>
     a56:	bf00      	nop
     a58:	20000184 	.word	0x20000184
     a5c:	20000628 	.word	0x20000628
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
     aee:	f003 fbe7 	bl	42c0 <key_tone>
     af2:	e108      	b.n	d06 <chip_vm+0x826>
     af4:	2002      	movs	r0, #2
     af6:	f003 fe31 	bl	475c <select_font>
     afa:	7dfb      	ldrb	r3, [r7, #23]
     afc:	4a82      	ldr	r2, [pc, #520]	; (d08 <chip_vm+0x828>)
     afe:	4413      	add	r3, r2
     b00:	7998      	ldrb	r0, [r3, #6]
     b02:	7dbb      	ldrb	r3, [r7, #22]
     b04:	4a80      	ldr	r2, [pc, #512]	; (d08 <chip_vm+0x828>)
     b06:	4413      	add	r3, r2
     b08:	799b      	ldrb	r3, [r3, #6]
     b0a:	4619      	mov	r1, r3
     b0c:	f003 ff56 	bl	49bc <set_cursor>
     b10:	4b7d      	ldr	r3, [pc, #500]	; (d08 <chip_vm+0x828>)
     b12:	885b      	ldrh	r3, [r3, #2]
     b14:	461a      	mov	r2, r3
     b16:	4b7d      	ldr	r3, [pc, #500]	; (d0c <chip_vm+0x82c>)
     b18:	4413      	add	r3, r2
     b1a:	4618      	mov	r0, r3
     b1c:	f003 ff7a 	bl	4a14 <print>
     b20:	4b79      	ldr	r3, [pc, #484]	; (d08 <chip_vm+0x828>)
     b22:	885c      	ldrh	r4, [r3, #2]
     b24:	4b78      	ldr	r3, [pc, #480]	; (d08 <chip_vm+0x828>)
     b26:	885b      	ldrh	r3, [r3, #2]
     b28:	461a      	mov	r2, r3
     b2a:	4b78      	ldr	r3, [pc, #480]	; (d0c <chip_vm+0x82c>)
     b2c:	4413      	add	r3, r2
     b2e:	4618      	mov	r0, r3
     b30:	f001 f943 	bl	1dba <strlen>
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
     b5e:	f001 fa93 	bl	2088 <gfx_blit>
     b62:	e0d0      	b.n	d06 <chip_vm+0x826>
     b64:	7dfb      	ldrb	r3, [r7, #23]
     b66:	011a      	lsls	r2, r3, #4
     b68:	7dbb      	ldrb	r3, [r7, #22]
     b6a:	4413      	add	r3, r2
     b6c:	4618      	mov	r0, r3
     b6e:	f003 fbc9 	bl	4304 <noise>
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
     b8c:	f003 fb98 	bl	42c0 <key_tone>
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
     bdc:	f004 fbc4 	bl	5368 <get_video_params>
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
     bf4:	f004 fbb8 	bl	5368 <get_video_params>
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
     cea:	f001 fc05 	bl	24f8 <gfx_get_pixel>
     cee:	4603      	mov	r3, r0
     cf0:	461a      	mov	r2, r3
     cf2:	4b05      	ldr	r3, [pc, #20]	; (d08 <chip_vm+0x828>)
     cf4:	755a      	strb	r2, [r3, #21]
     cf6:	e006      	b.n	d06 <chip_vm+0x826>
     cf8:	2302      	movs	r3, #2
     cfa:	e2fb      	b.n	12f4 <chip_vm+0xe14>
     cfc:	bf00      	nop
     cfe:	e2f7      	b.n	12f0 <chip_vm+0xe10>
     d00:	bf00      	nop
     d02:	e2f5      	b.n	12f0 <chip_vm+0xe10>
     d04:	bf00      	nop
     d06:	e2f3      	b.n	12f0 <chip_vm+0xe10>
     d08:	20000184 	.word	0x20000184
     d0c:	20000628 	.word	0x20000628
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
     d30:	e2de      	b.n	12f0 <chip_vm+0xe10>
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
     d5a:	e2c9      	b.n	12f0 <chip_vm+0xe10>
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
     d78:	e2ba      	b.n	12f0 <chip_vm+0xe10>
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
     dba:	f001 fbd5 	bl	2568 <gfx_sprite>
     dbe:	4603      	mov	r3, r0
     dc0:	b2da      	uxtb	r2, r3
     dc2:	4b41      	ldr	r3, [pc, #260]	; (ec8 <chip_vm+0x9e8>)
     dc4:	755a      	strb	r2, [r3, #21]
     dc6:	e293      	b.n	12f0 <chip_vm+0xe10>
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
     dea:	f001 fbbd 	bl	2568 <gfx_sprite>
     dee:	4603      	mov	r3, r0
     df0:	b2da      	uxtb	r2, r3
     df2:	4b35      	ldr	r3, [pc, #212]	; (ec8 <chip_vm+0x9e8>)
     df4:	755a      	strb	r2, [r3, #21]
     df6:	e27b      	b.n	12f0 <chip_vm+0xe10>
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
     e2a:	f001 fb9d 	bl	2568 <gfx_sprite>
     e2e:	4603      	mov	r3, r0
     e30:	b2da      	uxtb	r2, r3
     e32:	4b25      	ldr	r3, [pc, #148]	; (ec8 <chip_vm+0x9e8>)
     e34:	755a      	strb	r2, [r3, #21]
     e36:	e25b      	b.n	12f0 <chip_vm+0xe10>
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
     e5c:	f001 fb84 	bl	2568 <gfx_sprite>
     e60:	4603      	mov	r3, r0
     e62:	b2da      	uxtb	r2, r3
     e64:	4b18      	ldr	r3, [pc, #96]	; (ec8 <chip_vm+0x9e8>)
     e66:	755a      	strb	r2, [r3, #21]
     e68:	e242      	b.n	12f0 <chip_vm+0xe10>
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
     e82:	f000 fd89 	bl	1998 <btn_query_down>
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
     ea4:	f000 fd78 	bl	1998 <btn_query_down>
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
     ebe:	e219      	b.n	12f4 <chip_vm+0xe14>
     ec0:	bf00      	nop
     ec2:	e215      	b.n	12f0 <chip_vm+0xe10>
     ec4:	bf00      	nop
     ec6:	e213      	b.n	12f0 <chip_vm+0xe10>
     ec8:	20000184 	.word	0x20000184
     ecc:	20000628 	.word	0x20000628
     ed0:	4bc2      	ldr	r3, [pc, #776]	; (11dc <chip_vm+0xcfc>)
     ed2:	7ddb      	ldrb	r3, [r3, #23]
     ed4:	3b01      	subs	r3, #1
     ed6:	2b84      	cmp	r3, #132	; 0x84
     ed8:	f200 8200 	bhi.w	12dc <chip_vm+0xdfc>
     edc:	a201      	add	r2, pc, #4	; (adr r2, ee4 <chip_vm+0xa04>)
     ede:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     ee2:	bf00      	nop
     ee4:	000010f9 	.word	0x000010f9
     ee8:	00001109 	.word	0x00001109
     eec:	000012dd 	.word	0x000012dd
     ef0:	000012dd 	.word	0x000012dd
     ef4:	000012dd 	.word	0x000012dd
     ef8:	000012dd 	.word	0x000012dd
     efc:	0000111b 	.word	0x0000111b
     f00:	000012dd 	.word	0x000012dd
     f04:	000012dd 	.word	0x000012dd
     f08:	0000112f 	.word	0x0000112f
     f0c:	000012dd 	.word	0x000012dd
     f10:	000012dd 	.word	0x000012dd
     f14:	000012dd 	.word	0x000012dd
     f18:	000012dd 	.word	0x000012dd
     f1c:	000012dd 	.word	0x000012dd
     f20:	000012dd 	.word	0x000012dd
     f24:	000012dd 	.word	0x000012dd
     f28:	000012dd 	.word	0x000012dd
     f2c:	000012dd 	.word	0x000012dd
     f30:	000012dd 	.word	0x000012dd
     f34:	00001141 	.word	0x00001141
     f38:	000012dd 	.word	0x000012dd
     f3c:	000012dd 	.word	0x000012dd
     f40:	00001151 	.word	0x00001151
     f44:	000012dd 	.word	0x000012dd
     f48:	000012dd 	.word	0x000012dd
     f4c:	000012dd 	.word	0x000012dd
     f50:	000012dd 	.word	0x000012dd
     f54:	000012dd 	.word	0x000012dd
     f58:	00001167 	.word	0x00001167
     f5c:	000012dd 	.word	0x000012dd
     f60:	000012dd 	.word	0x000012dd
     f64:	000012dd 	.word	0x000012dd
     f68:	000012dd 	.word	0x000012dd
     f6c:	000012dd 	.word	0x000012dd
     f70:	000012dd 	.word	0x000012dd
     f74:	000012dd 	.word	0x000012dd
     f78:	000012dd 	.word	0x000012dd
     f7c:	000012dd 	.word	0x000012dd
     f80:	000012dd 	.word	0x000012dd
     f84:	0000117f 	.word	0x0000117f
     f88:	000012dd 	.word	0x000012dd
     f8c:	000012dd 	.word	0x000012dd
     f90:	000012dd 	.word	0x000012dd
     f94:	000012dd 	.word	0x000012dd
     f98:	000012dd 	.word	0x000012dd
     f9c:	000012dd 	.word	0x000012dd
     fa0:	000011ad 	.word	0x000011ad
     fa4:	000012dd 	.word	0x000012dd
     fa8:	000012dd 	.word	0x000012dd
     fac:	000011f5 	.word	0x000011f5
     fb0:	000012dd 	.word	0x000012dd
     fb4:	000012dd 	.word	0x000012dd
     fb8:	000012dd 	.word	0x000012dd
     fbc:	000012dd 	.word	0x000012dd
     fc0:	000012dd 	.word	0x000012dd
     fc4:	000012dd 	.word	0x000012dd
     fc8:	000012dd 	.word	0x000012dd
     fcc:	000012dd 	.word	0x000012dd
     fd0:	000012dd 	.word	0x000012dd
     fd4:	000012dd 	.word	0x000012dd
     fd8:	000012dd 	.word	0x000012dd
     fdc:	000012dd 	.word	0x000012dd
     fe0:	000012dd 	.word	0x000012dd
     fe4:	000012dd 	.word	0x000012dd
     fe8:	000012dd 	.word	0x000012dd
     fec:	000012dd 	.word	0x000012dd
     ff0:	000012dd 	.word	0x000012dd
     ff4:	000012dd 	.word	0x000012dd
     ff8:	000012dd 	.word	0x000012dd
     ffc:	000012dd 	.word	0x000012dd
    1000:	000012dd 	.word	0x000012dd
    1004:	000012dd 	.word	0x000012dd
    1008:	000012dd 	.word	0x000012dd
    100c:	000012dd 	.word	0x000012dd
    1010:	000012dd 	.word	0x000012dd
    1014:	000012dd 	.word	0x000012dd
    1018:	000012dd 	.word	0x000012dd
    101c:	000012dd 	.word	0x000012dd
    1020:	000012dd 	.word	0x000012dd
    1024:	000012dd 	.word	0x000012dd
    1028:	000012dd 	.word	0x000012dd
    102c:	000012dd 	.word	0x000012dd
    1030:	000012dd 	.word	0x000012dd
    1034:	00001265 	.word	0x00001265
    1038:	000012dd 	.word	0x000012dd
    103c:	000012dd 	.word	0x000012dd
    1040:	000012dd 	.word	0x000012dd
    1044:	000012dd 	.word	0x000012dd
    1048:	000012dd 	.word	0x000012dd
    104c:	000012dd 	.word	0x000012dd
    1050:	000012dd 	.word	0x000012dd
    1054:	000012dd 	.word	0x000012dd
    1058:	000012dd 	.word	0x000012dd
    105c:	000012dd 	.word	0x000012dd
    1060:	000012dd 	.word	0x000012dd
    1064:	000012dd 	.word	0x000012dd
    1068:	000012dd 	.word	0x000012dd
    106c:	000012dd 	.word	0x000012dd
    1070:	000012dd 	.word	0x000012dd
    1074:	00001291 	.word	0x00001291
    1078:	000012dd 	.word	0x000012dd
    107c:	000012dd 	.word	0x000012dd
    1080:	000012dd 	.word	0x000012dd
    1084:	000012dd 	.word	0x000012dd
    1088:	000012dd 	.word	0x000012dd
    108c:	000012dd 	.word	0x000012dd
    1090:	000012dd 	.word	0x000012dd
    1094:	000012dd 	.word	0x000012dd
    1098:	000012dd 	.word	0x000012dd
    109c:	000012dd 	.word	0x000012dd
    10a0:	000012dd 	.word	0x000012dd
    10a4:	000012dd 	.word	0x000012dd
    10a8:	000012dd 	.word	0x000012dd
    10ac:	000012dd 	.word	0x000012dd
    10b0:	000012dd 	.word	0x000012dd
    10b4:	000012bd 	.word	0x000012bd
    10b8:	000012dd 	.word	0x000012dd
    10bc:	000012dd 	.word	0x000012dd
    10c0:	000012dd 	.word	0x000012dd
    10c4:	000012dd 	.word	0x000012dd
    10c8:	000012dd 	.word	0x000012dd
    10cc:	000012dd 	.word	0x000012dd
    10d0:	000012dd 	.word	0x000012dd
    10d4:	000012dd 	.word	0x000012dd
    10d8:	000012dd 	.word	0x000012dd
    10dc:	000012dd 	.word	0x000012dd
    10e0:	000012dd 	.word	0x000012dd
    10e4:	000012dd 	.word	0x000012dd
    10e8:	000012dd 	.word	0x000012dd
    10ec:	000012dd 	.word	0x000012dd
    10f0:	000012dd 	.word	0x000012dd
    10f4:	000012cd 	.word	0x000012cd
    10f8:	4b38      	ldr	r3, [pc, #224]	; (11dc <chip_vm+0xcfc>)
    10fa:	7d9b      	ldrb	r3, [r3, #22]
    10fc:	f003 0303 	and.w	r3, r3, #3
    1100:	b2da      	uxtb	r2, r3
    1102:	4b37      	ldr	r3, [pc, #220]	; (11e0 <chip_vm+0xd00>)
    1104:	701a      	strb	r2, [r3, #0]
    1106:	e0eb      	b.n	12e0 <chip_vm+0xe00>
    1108:	4b34      	ldr	r3, [pc, #208]	; (11dc <chip_vm+0xcfc>)
    110a:	885b      	ldrh	r3, [r3, #2]
    110c:	461a      	mov	r2, r3
    110e:	4b35      	ldr	r3, [pc, #212]	; (11e4 <chip_vm+0xd04>)
    1110:	4413      	add	r3, r2
    1112:	4618      	mov	r0, r3
    1114:	f003 f85d 	bl	41d2 <load_sound_buffer>
    1118:	e0e2      	b.n	12e0 <chip_vm+0xe00>
    111a:	7dfb      	ldrb	r3, [r7, #23]
    111c:	4a32      	ldr	r2, [pc, #200]	; (11e8 <chip_vm+0xd08>)
    111e:	8812      	ldrh	r2, [r2, #0]
    1120:	b292      	uxth	r2, r2
    1122:	b2d1      	uxtb	r1, r2
    1124:	4a2d      	ldr	r2, [pc, #180]	; (11dc <chip_vm+0xcfc>)
    1126:	4413      	add	r3, r2
    1128:	460a      	mov	r2, r1
    112a:	719a      	strb	r2, [r3, #6]
    112c:	e0d8      	b.n	12e0 <chip_vm+0xe00>
    112e:	7dfc      	ldrb	r4, [r7, #23]
    1130:	f000 fc9e 	bl	1a70 <btn_wait_any>
    1134:	4603      	mov	r3, r0
    1136:	461a      	mov	r2, r3
    1138:	4b28      	ldr	r3, [pc, #160]	; (11dc <chip_vm+0xcfc>)
    113a:	4423      	add	r3, r4
    113c:	719a      	strb	r2, [r3, #6]
    113e:	e0cf      	b.n	12e0 <chip_vm+0xe00>
    1140:	7dfb      	ldrb	r3, [r7, #23]
    1142:	4a26      	ldr	r2, [pc, #152]	; (11dc <chip_vm+0xcfc>)
    1144:	4413      	add	r3, r2
    1146:	799b      	ldrb	r3, [r3, #6]
    1148:	b29a      	uxth	r2, r3
    114a:	4b27      	ldr	r3, [pc, #156]	; (11e8 <chip_vm+0xd08>)
    114c:	801a      	strh	r2, [r3, #0]
    114e:	e0c7      	b.n	12e0 <chip_vm+0xe00>
    1150:	7dfb      	ldrb	r3, [r7, #23]
    1152:	4a22      	ldr	r2, [pc, #136]	; (11dc <chip_vm+0xcfc>)
    1154:	4413      	add	r3, r2
    1156:	799b      	ldrb	r3, [r3, #6]
    1158:	b29b      	uxth	r3, r3
    115a:	4619      	mov	r1, r3
    115c:	f240 200b 	movw	r0, #523	; 0x20b
    1160:	f002 ffe2 	bl	4128 <tone>
    1164:	e0bc      	b.n	12e0 <chip_vm+0xe00>
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
    117c:	e0b0      	b.n	12e0 <chip_vm+0xe00>
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
    11a6:	f003 fad9 	bl	475c <select_font>
    11aa:	e099      	b.n	12e0 <chip_vm+0xe00>
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
    11d4:	f003 fac2 	bl	475c <select_font>
    11d8:	e082      	b.n	12e0 <chip_vm+0xe00>
    11da:	bf00      	nop
    11dc:	20000184 	.word	0x20000184
    11e0:	20000104 	.word	0x20000104
    11e4:	20000628 	.word	0x20000628
    11e8:	20004db4 	.word	0x20004db4
    11ec:	00005400 	.word	0x00005400
    11f0:	00005460 	.word	0x00005460
    11f4:	7dfb      	ldrb	r3, [r7, #23]
    11f6:	4a41      	ldr	r2, [pc, #260]	; (12fc <chip_vm+0xe1c>)
    11f8:	4413      	add	r3, r2
    11fa:	799b      	ldrb	r3, [r3, #6]
    11fc:	757b      	strb	r3, [r7, #21]
    11fe:	7d7a      	ldrb	r2, [r7, #21]
    1200:	4b3f      	ldr	r3, [pc, #252]	; (1300 <chip_vm+0xe20>)
    1202:	fba3 1302 	umull	r1, r3, r3, r2
    1206:	08d9      	lsrs	r1, r3, #3
    1208:	460b      	mov	r3, r1
    120a:	009b      	lsls	r3, r3, #2
    120c:	440b      	add	r3, r1
    120e:	005b      	lsls	r3, r3, #1
    1210:	1ad3      	subs	r3, r2, r3
    1212:	b2da      	uxtb	r2, r3
    1214:	4b3b      	ldr	r3, [pc, #236]	; (1304 <chip_vm+0xe24>)
    1216:	709a      	strb	r2, [r3, #2]
    1218:	7d7b      	ldrb	r3, [r7, #21]
    121a:	4a39      	ldr	r2, [pc, #228]	; (1300 <chip_vm+0xe20>)
    121c:	fba2 2303 	umull	r2, r3, r2, r3
    1220:	08db      	lsrs	r3, r3, #3
    1222:	757b      	strb	r3, [r7, #21]
    1224:	7d7a      	ldrb	r2, [r7, #21]
    1226:	4b36      	ldr	r3, [pc, #216]	; (1300 <chip_vm+0xe20>)
    1228:	fba3 1302 	umull	r1, r3, r3, r2
    122c:	08d9      	lsrs	r1, r3, #3
    122e:	460b      	mov	r3, r1
    1230:	009b      	lsls	r3, r3, #2
    1232:	440b      	add	r3, r1
    1234:	005b      	lsls	r3, r3, #1
    1236:	1ad3      	subs	r3, r2, r3
    1238:	b2da      	uxtb	r2, r3
    123a:	4b32      	ldr	r3, [pc, #200]	; (1304 <chip_vm+0xe24>)
    123c:	705a      	strb	r2, [r3, #1]
    123e:	7d7b      	ldrb	r3, [r7, #21]
    1240:	4a2f      	ldr	r2, [pc, #188]	; (1300 <chip_vm+0xe20>)
    1242:	fba2 2303 	umull	r2, r3, r2, r3
    1246:	08db      	lsrs	r3, r3, #3
    1248:	b2da      	uxtb	r2, r3
    124a:	4b2e      	ldr	r3, [pc, #184]	; (1304 <chip_vm+0xe24>)
    124c:	701a      	strb	r2, [r3, #0]
    124e:	4b2b      	ldr	r3, [pc, #172]	; (12fc <chip_vm+0xe1c>)
    1250:	885b      	ldrh	r3, [r3, #2]
    1252:	461a      	mov	r2, r3
    1254:	4b2c      	ldr	r3, [pc, #176]	; (1308 <chip_vm+0xe28>)
    1256:	4413      	add	r3, r2
    1258:	2203      	movs	r2, #3
    125a:	4619      	mov	r1, r3
    125c:	4829      	ldr	r0, [pc, #164]	; (1304 <chip_vm+0xe24>)
    125e:	f000 fd92 	bl	1d86 <move>
    1262:	e03d      	b.n	12e0 <chip_vm+0xe00>
    1264:	4b25      	ldr	r3, [pc, #148]	; (12fc <chip_vm+0xe1c>)
    1266:	885b      	ldrh	r3, [r3, #2]
    1268:	461a      	mov	r2, r3
    126a:	4b27      	ldr	r3, [pc, #156]	; (1308 <chip_vm+0xe28>)
    126c:	18d1      	adds	r1, r2, r3
    126e:	7dfb      	ldrb	r3, [r7, #23]
    1270:	3301      	adds	r3, #1
    1272:	461a      	mov	r2, r3
    1274:	4825      	ldr	r0, [pc, #148]	; (130c <chip_vm+0xe2c>)
    1276:	f000 fd86 	bl	1d86 <move>
    127a:	4b20      	ldr	r3, [pc, #128]	; (12fc <chip_vm+0xe1c>)
    127c:	885a      	ldrh	r2, [r3, #2]
    127e:	7dfb      	ldrb	r3, [r7, #23]
    1280:	b29b      	uxth	r3, r3
    1282:	4413      	add	r3, r2
    1284:	b29b      	uxth	r3, r3
    1286:	3301      	adds	r3, #1
    1288:	b29a      	uxth	r2, r3
    128a:	4b1c      	ldr	r3, [pc, #112]	; (12fc <chip_vm+0xe1c>)
    128c:	805a      	strh	r2, [r3, #2]
    128e:	e027      	b.n	12e0 <chip_vm+0xe00>
    1290:	4b1a      	ldr	r3, [pc, #104]	; (12fc <chip_vm+0xe1c>)
    1292:	885b      	ldrh	r3, [r3, #2]
    1294:	461a      	mov	r2, r3
    1296:	4b1c      	ldr	r3, [pc, #112]	; (1308 <chip_vm+0xe28>)
    1298:	18d0      	adds	r0, r2, r3
    129a:	7dfb      	ldrb	r3, [r7, #23]
    129c:	3301      	adds	r3, #1
    129e:	461a      	mov	r2, r3
    12a0:	491a      	ldr	r1, [pc, #104]	; (130c <chip_vm+0xe2c>)
    12a2:	f000 fd70 	bl	1d86 <move>
    12a6:	4b15      	ldr	r3, [pc, #84]	; (12fc <chip_vm+0xe1c>)
    12a8:	885a      	ldrh	r2, [r3, #2]
    12aa:	7dfb      	ldrb	r3, [r7, #23]
    12ac:	b29b      	uxth	r3, r3
    12ae:	4413      	add	r3, r2
    12b0:	b29b      	uxth	r3, r3
    12b2:	3301      	adds	r3, #1
    12b4:	b29a      	uxth	r2, r3
    12b6:	4b11      	ldr	r3, [pc, #68]	; (12fc <chip_vm+0xe1c>)
    12b8:	805a      	strh	r2, [r3, #2]
    12ba:	e011      	b.n	12e0 <chip_vm+0xe00>
    12bc:	7dfb      	ldrb	r3, [r7, #23]
    12be:	3301      	adds	r3, #1
    12c0:	461a      	mov	r2, r3
    12c2:	4910      	ldr	r1, [pc, #64]	; (1304 <chip_vm+0xe24>)
    12c4:	4811      	ldr	r0, [pc, #68]	; (130c <chip_vm+0xe2c>)
    12c6:	f000 fd5e 	bl	1d86 <move>
    12ca:	e009      	b.n	12e0 <chip_vm+0xe00>
    12cc:	7dfb      	ldrb	r3, [r7, #23]
    12ce:	3301      	adds	r3, #1
    12d0:	461a      	mov	r2, r3
    12d2:	490e      	ldr	r1, [pc, #56]	; (130c <chip_vm+0xe2c>)
    12d4:	480b      	ldr	r0, [pc, #44]	; (1304 <chip_vm+0xe24>)
    12d6:	f000 fd56 	bl	1d86 <move>
    12da:	e001      	b.n	12e0 <chip_vm+0xe00>
    12dc:	2302      	movs	r3, #2
    12de:	e009      	b.n	12f4 <chip_vm+0xe14>
    12e0:	e006      	b.n	12f0 <chip_vm+0xe10>
    12e2:	bf00      	nop
    12e4:	f7ff b90a 	b.w	4fc <chip_vm+0x1c>
    12e8:	bf00      	nop
    12ea:	f7ff b907 	b.w	4fc <chip_vm+0x1c>
    12ee:	bf00      	nop
    12f0:	f7ff b904 	b.w	4fc <chip_vm+0x1c>
    12f4:	4618      	mov	r0, r3
    12f6:	371c      	adds	r7, #28
    12f8:	46bd      	mov	sp, r7
    12fa:	bd90      	pop	{r4, r7, pc}
    12fc:	20000184 	.word	0x20000184
    1300:	cccccccd 	.word	0xcccccccd
    1304:	200001dc 	.word	0x200001dc
    1308:	20000628 	.word	0x20000628
    130c:	2000018a 	.word	0x2000018a

00001310 <flash_enable>:
    1310:	b480      	push	{r7}
    1312:	af00      	add	r7, sp, #0
    1314:	4b14      	ldr	r3, [pc, #80]	; (1368 <flash_enable+0x58>)
    1316:	2200      	movs	r2, #0
    1318:	701a      	strb	r2, [r3, #0]
    131a:	4b14      	ldr	r3, [pc, #80]	; (136c <flash_enable+0x5c>)
    131c:	681b      	ldr	r3, [r3, #0]
    131e:	f003 0301 	and.w	r3, r3, #1
    1322:	2b00      	cmp	r3, #0
    1324:	d10c      	bne.n	1340 <flash_enable+0x30>
    1326:	4a11      	ldr	r2, [pc, #68]	; (136c <flash_enable+0x5c>)
    1328:	4b10      	ldr	r3, [pc, #64]	; (136c <flash_enable+0x5c>)
    132a:	681b      	ldr	r3, [r3, #0]
    132c:	f043 0301 	orr.w	r3, r3, #1
    1330:	6013      	str	r3, [r2, #0]
    1332:	bf00      	nop
    1334:	4b0d      	ldr	r3, [pc, #52]	; (136c <flash_enable+0x5c>)
    1336:	681b      	ldr	r3, [r3, #0]
    1338:	f003 0302 	and.w	r3, r3, #2
    133c:	2b00      	cmp	r3, #0
    133e:	d0f9      	beq.n	1334 <flash_enable+0x24>
    1340:	4b0b      	ldr	r3, [pc, #44]	; (1370 <flash_enable+0x60>)
    1342:	4a0c      	ldr	r2, [pc, #48]	; (1374 <flash_enable+0x64>)
    1344:	605a      	str	r2, [r3, #4]
    1346:	4b0a      	ldr	r3, [pc, #40]	; (1370 <flash_enable+0x60>)
    1348:	4a0b      	ldr	r2, [pc, #44]	; (1378 <flash_enable+0x68>)
    134a:	605a      	str	r2, [r3, #4]
    134c:	4b08      	ldr	r3, [pc, #32]	; (1370 <flash_enable+0x60>)
    134e:	691b      	ldr	r3, [r3, #16]
    1350:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1354:	2b00      	cmp	r3, #0
    1356:	bf0c      	ite	eq
    1358:	2301      	moveq	r3, #1
    135a:	2300      	movne	r3, #0
    135c:	b2db      	uxtb	r3, r3
    135e:	4618      	mov	r0, r3
    1360:	46bd      	mov	sp, r7
    1362:	bc80      	pop	{r7}
    1364:	4770      	bx	lr
    1366:	bf00      	nop
    1368:	200001fc 	.word	0x200001fc
    136c:	40021000 	.word	0x40021000
    1370:	40022000 	.word	0x40022000
    1374:	45670123 	.word	0x45670123
    1378:	cdef89ab 	.word	0xcdef89ab

0000137c <read_byte>:
    137c:	b480      	push	{r7}
    137e:	b085      	sub	sp, #20
    1380:	af00      	add	r7, sp, #0
    1382:	6078      	str	r0, [r7, #4]
    1384:	687b      	ldr	r3, [r7, #4]
    1386:	0a9b      	lsrs	r3, r3, #10
    1388:	4a0a      	ldr	r2, [pc, #40]	; (13b4 <read_byte+0x38>)
    138a:	7852      	ldrb	r2, [r2, #1]
    138c:	4293      	cmp	r3, r2
    138e:	d109      	bne.n	13a4 <read_byte+0x28>
    1390:	687b      	ldr	r3, [r7, #4]
    1392:	f3c3 0309 	ubfx	r3, r3, #0, #10
    1396:	60fb      	str	r3, [r7, #12]
    1398:	4a06      	ldr	r2, [pc, #24]	; (13b4 <read_byte+0x38>)
    139a:	68fb      	ldr	r3, [r7, #12]
    139c:	4413      	add	r3, r2
    139e:	3302      	adds	r3, #2
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	e001      	b.n	13a8 <read_byte+0x2c>
    13a4:	687b      	ldr	r3, [r7, #4]
    13a6:	781b      	ldrb	r3, [r3, #0]
    13a8:	4618      	mov	r0, r3
    13aa:	3714      	adds	r7, #20
    13ac:	46bd      	mov	sp, r7
    13ae:	bc80      	pop	{r7}
    13b0:	4770      	bx	lr
    13b2:	bf00      	nop
    13b4:	200001fc 	.word	0x200001fc

000013b8 <flash_write_hword>:
    13b8:	b480      	push	{r7}
    13ba:	b083      	sub	sp, #12
    13bc:	af00      	add	r7, sp, #0
    13be:	6078      	str	r0, [r7, #4]
    13c0:	460b      	mov	r3, r1
    13c2:	807b      	strh	r3, [r7, #2]
    13c4:	bf00      	nop
    13c6:	4b16      	ldr	r3, [pc, #88]	; (1420 <flash_write_hword+0x68>)
    13c8:	68db      	ldr	r3, [r3, #12]
    13ca:	f003 0301 	and.w	r3, r3, #1
    13ce:	2b00      	cmp	r3, #0
    13d0:	d1f9      	bne.n	13c6 <flash_write_hword+0xe>
    13d2:	4a13      	ldr	r2, [pc, #76]	; (1420 <flash_write_hword+0x68>)
    13d4:	4b12      	ldr	r3, [pc, #72]	; (1420 <flash_write_hword+0x68>)
    13d6:	68db      	ldr	r3, [r3, #12]
    13d8:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    13dc:	60d3      	str	r3, [r2, #12]
    13de:	4b10      	ldr	r3, [pc, #64]	; (1420 <flash_write_hword+0x68>)
    13e0:	2201      	movs	r2, #1
    13e2:	611a      	str	r2, [r3, #16]
    13e4:	687b      	ldr	r3, [r7, #4]
    13e6:	887a      	ldrh	r2, [r7, #2]
    13e8:	801a      	strh	r2, [r3, #0]
    13ea:	bf00      	nop
    13ec:	4b0c      	ldr	r3, [pc, #48]	; (1420 <flash_write_hword+0x68>)
    13ee:	68db      	ldr	r3, [r3, #12]
    13f0:	f003 0301 	and.w	r3, r3, #1
    13f4:	2b00      	cmp	r3, #0
    13f6:	d005      	beq.n	1404 <flash_write_hword+0x4c>
    13f8:	4b09      	ldr	r3, [pc, #36]	; (1420 <flash_write_hword+0x68>)
    13fa:	68db      	ldr	r3, [r3, #12]
    13fc:	f003 0320 	and.w	r3, r3, #32
    1400:	2b00      	cmp	r3, #0
    1402:	d0f3      	beq.n	13ec <flash_write_hword+0x34>
    1404:	687b      	ldr	r3, [r7, #4]
    1406:	881b      	ldrh	r3, [r3, #0]
    1408:	887a      	ldrh	r2, [r7, #2]
    140a:	429a      	cmp	r2, r3
    140c:	bf0c      	ite	eq
    140e:	2301      	moveq	r3, #1
    1410:	2300      	movne	r3, #0
    1412:	b2db      	uxtb	r3, r3
    1414:	4618      	mov	r0, r3
    1416:	370c      	adds	r7, #12
    1418:	46bd      	mov	sp, r7
    141a:	bc80      	pop	{r7}
    141c:	4770      	bx	lr
    141e:	bf00      	nop
    1420:	40022000 	.word	0x40022000

00001424 <write_back_buffer>:
    1424:	b580      	push	{r7, lr}
    1426:	b084      	sub	sp, #16
    1428:	af00      	add	r7, sp, #0
    142a:	4b1e      	ldr	r3, [pc, #120]	; (14a4 <write_back_buffer+0x80>)
    142c:	785b      	ldrb	r3, [r3, #1]
    142e:	029b      	lsls	r3, r3, #10
    1430:	60bb      	str	r3, [r7, #8]
    1432:	4b1d      	ldr	r3, [pc, #116]	; (14a8 <write_back_buffer+0x84>)
    1434:	607b      	str	r3, [r7, #4]
    1436:	2300      	movs	r3, #0
    1438:	60fb      	str	r3, [r7, #12]
    143a:	e017      	b.n	146c <write_back_buffer+0x48>
    143c:	687b      	ldr	r3, [r7, #4]
    143e:	881b      	ldrh	r3, [r3, #0]
    1440:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1444:	4293      	cmp	r3, r2
    1446:	d008      	beq.n	145a <write_back_buffer+0x36>
    1448:	687b      	ldr	r3, [r7, #4]
    144a:	881b      	ldrh	r3, [r3, #0]
    144c:	4619      	mov	r1, r3
    144e:	68b8      	ldr	r0, [r7, #8]
    1450:	f7ff ffb2 	bl	13b8 <flash_write_hword>
    1454:	4603      	mov	r3, r0
    1456:	2b00      	cmp	r3, #0
    1458:	d00d      	beq.n	1476 <write_back_buffer+0x52>
    145a:	68bb      	ldr	r3, [r7, #8]
    145c:	3302      	adds	r3, #2
    145e:	60bb      	str	r3, [r7, #8]
    1460:	687b      	ldr	r3, [r7, #4]
    1462:	3302      	adds	r3, #2
    1464:	607b      	str	r3, [r7, #4]
    1466:	68fb      	ldr	r3, [r7, #12]
    1468:	3301      	adds	r3, #1
    146a:	60fb      	str	r3, [r7, #12]
    146c:	68fb      	ldr	r3, [r7, #12]
    146e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1472:	dbe3      	blt.n	143c <write_back_buffer+0x18>
    1474:	e000      	b.n	1478 <write_back_buffer+0x54>
    1476:	bf00      	nop
    1478:	68fb      	ldr	r3, [r7, #12]
    147a:	2b00      	cmp	r3, #0
    147c:	dd06      	ble.n	148c <write_back_buffer+0x68>
    147e:	4b09      	ldr	r3, [pc, #36]	; (14a4 <write_back_buffer+0x80>)
    1480:	781b      	ldrb	r3, [r3, #0]
    1482:	f023 0304 	bic.w	r3, r3, #4
    1486:	b2da      	uxtb	r2, r3
    1488:	4b06      	ldr	r3, [pc, #24]	; (14a4 <write_back_buffer+0x80>)
    148a:	701a      	strb	r2, [r3, #0]
    148c:	68fb      	ldr	r3, [r7, #12]
    148e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    1492:	d101      	bne.n	1498 <write_back_buffer+0x74>
    1494:	2301      	movs	r3, #1
    1496:	e000      	b.n	149a <write_back_buffer+0x76>
    1498:	2300      	movs	r3, #0
    149a:	4618      	mov	r0, r3
    149c:	3710      	adds	r7, #16
    149e:	46bd      	mov	sp, r7
    14a0:	bd80      	pop	{r7, pc}
    14a2:	bf00      	nop
    14a4:	200001fc 	.word	0x200001fc
    14a8:	200001fe 	.word	0x200001fe

000014ac <load_row>:
    14ac:	b480      	push	{r7}
    14ae:	b087      	sub	sp, #28
    14b0:	af00      	add	r7, sp, #0
    14b2:	6078      	str	r0, [r7, #4]
    14b4:	687b      	ldr	r3, [r7, #4]
    14b6:	029b      	lsls	r3, r3, #10
    14b8:	617b      	str	r3, [r7, #20]
    14ba:	4b15      	ldr	r3, [pc, #84]	; (1510 <load_row+0x64>)
    14bc:	613b      	str	r3, [r7, #16]
    14be:	2300      	movs	r3, #0
    14c0:	60fb      	str	r3, [r7, #12]
    14c2:	e00a      	b.n	14da <load_row+0x2e>
    14c4:	693b      	ldr	r3, [r7, #16]
    14c6:	1c9a      	adds	r2, r3, #2
    14c8:	613a      	str	r2, [r7, #16]
    14ca:	697a      	ldr	r2, [r7, #20]
    14cc:	1c91      	adds	r1, r2, #2
    14ce:	6179      	str	r1, [r7, #20]
    14d0:	8812      	ldrh	r2, [r2, #0]
    14d2:	801a      	strh	r2, [r3, #0]
    14d4:	68fb      	ldr	r3, [r7, #12]
    14d6:	3301      	adds	r3, #1
    14d8:	60fb      	str	r3, [r7, #12]
    14da:	68fb      	ldr	r3, [r7, #12]
    14dc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    14e0:	dbf0      	blt.n	14c4 <load_row+0x18>
    14e2:	687b      	ldr	r3, [r7, #4]
    14e4:	b2da      	uxtb	r2, r3
    14e6:	4b0b      	ldr	r3, [pc, #44]	; (1514 <load_row+0x68>)
    14e8:	705a      	strb	r2, [r3, #1]
    14ea:	4b0a      	ldr	r3, [pc, #40]	; (1514 <load_row+0x68>)
    14ec:	781b      	ldrb	r3, [r3, #0]
    14ee:	f023 0301 	bic.w	r3, r3, #1
    14f2:	b2da      	uxtb	r2, r3
    14f4:	4b07      	ldr	r3, [pc, #28]	; (1514 <load_row+0x68>)
    14f6:	701a      	strb	r2, [r3, #0]
    14f8:	4b06      	ldr	r3, [pc, #24]	; (1514 <load_row+0x68>)
    14fa:	781b      	ldrb	r3, [r3, #0]
    14fc:	f043 0302 	orr.w	r3, r3, #2
    1500:	b2da      	uxtb	r2, r3
    1502:	4b04      	ldr	r3, [pc, #16]	; (1514 <load_row+0x68>)
    1504:	701a      	strb	r2, [r3, #0]
    1506:	bf00      	nop
    1508:	371c      	adds	r7, #28
    150a:	46bd      	mov	sp, r7
    150c:	bc80      	pop	{r7}
    150e:	4770      	bx	lr
    1510:	200001fe 	.word	0x200001fe
    1514:	200001fc 	.word	0x200001fc

00001518 <is_erased>:
    1518:	b480      	push	{r7}
    151a:	b085      	sub	sp, #20
    151c:	af00      	add	r7, sp, #0
    151e:	6078      	str	r0, [r7, #4]
    1520:	687b      	ldr	r3, [r7, #4]
    1522:	029b      	lsls	r3, r3, #10
    1524:	60fb      	str	r3, [r7, #12]
    1526:	2300      	movs	r3, #0
    1528:	60bb      	str	r3, [r7, #8]
    152a:	e00c      	b.n	1546 <is_erased+0x2e>
    152c:	68fb      	ldr	r3, [r7, #12]
    152e:	1c9a      	adds	r2, r3, #2
    1530:	60fa      	str	r2, [r7, #12]
    1532:	881b      	ldrh	r3, [r3, #0]
    1534:	f64f 72ff 	movw	r2, #65535	; 0xffff
    1538:	4293      	cmp	r3, r2
    153a:	d001      	beq.n	1540 <is_erased+0x28>
    153c:	2300      	movs	r3, #0
    153e:	e008      	b.n	1552 <is_erased+0x3a>
    1540:	68bb      	ldr	r3, [r7, #8]
    1542:	3301      	adds	r3, #1
    1544:	60bb      	str	r3, [r7, #8]
    1546:	68bb      	ldr	r3, [r7, #8]
    1548:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    154c:	dbee      	blt.n	152c <is_erased+0x14>
    154e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1552:	4618      	mov	r0, r3
    1554:	3714      	adds	r7, #20
    1556:	46bd      	mov	sp, r7
    1558:	bc80      	pop	{r7}
    155a:	4770      	bx	lr

0000155c <flash_erase_row>:
    155c:	b580      	push	{r7, lr}
    155e:	b086      	sub	sp, #24
    1560:	af00      	add	r7, sp, #0
    1562:	6078      	str	r0, [r7, #4]
    1564:	687b      	ldr	r3, [r7, #4]
    1566:	2b3f      	cmp	r3, #63	; 0x3f
    1568:	d801      	bhi.n	156e <flash_erase_row+0x12>
    156a:	2300      	movs	r3, #0
    156c:	e052      	b.n	1614 <flash_erase_row+0xb8>
    156e:	6878      	ldr	r0, [r7, #4]
    1570:	f7ff ffd2 	bl	1518 <is_erased>
    1574:	4603      	mov	r3, r0
    1576:	2b00      	cmp	r3, #0
    1578:	d001      	beq.n	157e <flash_erase_row+0x22>
    157a:	2301      	movs	r3, #1
    157c:	e04a      	b.n	1614 <flash_erase_row+0xb8>
    157e:	687b      	ldr	r3, [r7, #4]
    1580:	029b      	lsls	r3, r3, #10
    1582:	617b      	str	r3, [r7, #20]
    1584:	4b25      	ldr	r3, [pc, #148]	; (161c <flash_erase_row+0xc0>)
    1586:	691b      	ldr	r3, [r3, #16]
    1588:	f003 0380 	and.w	r3, r3, #128	; 0x80
    158c:	2b00      	cmp	r3, #0
    158e:	d001      	beq.n	1594 <flash_erase_row+0x38>
    1590:	2300      	movs	r3, #0
    1592:	e03f      	b.n	1614 <flash_erase_row+0xb8>
    1594:	4a21      	ldr	r2, [pc, #132]	; (161c <flash_erase_row+0xc0>)
    1596:	4b21      	ldr	r3, [pc, #132]	; (161c <flash_erase_row+0xc0>)
    1598:	68db      	ldr	r3, [r3, #12]
    159a:	f043 0334 	orr.w	r3, r3, #52	; 0x34
    159e:	60d3      	str	r3, [r2, #12]
    15a0:	4b1e      	ldr	r3, [pc, #120]	; (161c <flash_erase_row+0xc0>)
    15a2:	2202      	movs	r2, #2
    15a4:	611a      	str	r2, [r3, #16]
    15a6:	4a1d      	ldr	r2, [pc, #116]	; (161c <flash_erase_row+0xc0>)
    15a8:	697b      	ldr	r3, [r7, #20]
    15aa:	6153      	str	r3, [r2, #20]
    15ac:	4a1b      	ldr	r2, [pc, #108]	; (161c <flash_erase_row+0xc0>)
    15ae:	4b1b      	ldr	r3, [pc, #108]	; (161c <flash_erase_row+0xc0>)
    15b0:	691b      	ldr	r3, [r3, #16]
    15b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    15b6:	6113      	str	r3, [r2, #16]
    15b8:	bf00      	nop
    15ba:	4b18      	ldr	r3, [pc, #96]	; (161c <flash_erase_row+0xc0>)
    15bc:	68db      	ldr	r3, [r3, #12]
    15be:	f003 0301 	and.w	r3, r3, #1
    15c2:	2b00      	cmp	r3, #0
    15c4:	d005      	beq.n	15d2 <flash_erase_row+0x76>
    15c6:	4b15      	ldr	r3, [pc, #84]	; (161c <flash_erase_row+0xc0>)
    15c8:	68db      	ldr	r3, [r3, #12]
    15ca:	f003 0320 	and.w	r3, r3, #32
    15ce:	2b00      	cmp	r3, #0
    15d0:	d0f3      	beq.n	15ba <flash_erase_row+0x5e>
    15d2:	687b      	ldr	r3, [r7, #4]
    15d4:	029b      	lsls	r3, r3, #10
    15d6:	617b      	str	r3, [r7, #20]
    15d8:	2300      	movs	r3, #0
    15da:	60fb      	str	r3, [r7, #12]
    15dc:	e00c      	b.n	15f8 <flash_erase_row+0x9c>
    15de:	697b      	ldr	r3, [r7, #20]
    15e0:	1c9a      	adds	r2, r3, #2
    15e2:	617a      	str	r2, [r7, #20]
    15e4:	881b      	ldrh	r3, [r3, #0]
    15e6:	827b      	strh	r3, [r7, #18]
    15e8:	8a7b      	ldrh	r3, [r7, #18]
    15ea:	f64f 72ff 	movw	r2, #65535	; 0xffff
    15ee:	4293      	cmp	r3, r2
    15f0:	d107      	bne.n	1602 <flash_erase_row+0xa6>
    15f2:	68fb      	ldr	r3, [r7, #12]
    15f4:	3301      	adds	r3, #1
    15f6:	60fb      	str	r3, [r7, #12]
    15f8:	68fb      	ldr	r3, [r7, #12]
    15fa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    15fe:	dbee      	blt.n	15de <flash_erase_row+0x82>
    1600:	e000      	b.n	1604 <flash_erase_row+0xa8>
    1602:	bf00      	nop
    1604:	8a7b      	ldrh	r3, [r7, #18]
    1606:	f64f 72ff 	movw	r2, #65535	; 0xffff
    160a:	4293      	cmp	r3, r2
    160c:	bf0c      	ite	eq
    160e:	2301      	moveq	r3, #1
    1610:	2300      	movne	r3, #0
    1612:	b2db      	uxtb	r3, r3
    1614:	4618      	mov	r0, r3
    1616:	3718      	adds	r7, #24
    1618:	46bd      	mov	sp, r7
    161a:	bd80      	pop	{r7, pc}
    161c:	40022000 	.word	0x40022000

00001620 <flash_sync>:
    1620:	b580      	push	{r7, lr}
    1622:	af00      	add	r7, sp, #0
    1624:	4b10      	ldr	r3, [pc, #64]	; (1668 <flash_sync+0x48>)
    1626:	781b      	ldrb	r3, [r3, #0]
    1628:	f003 0301 	and.w	r3, r3, #1
    162c:	2b00      	cmp	r3, #0
    162e:	d017      	beq.n	1660 <flash_sync+0x40>
    1630:	4b0d      	ldr	r3, [pc, #52]	; (1668 <flash_sync+0x48>)
    1632:	785b      	ldrb	r3, [r3, #1]
    1634:	4618      	mov	r0, r3
    1636:	f7ff ff91 	bl	155c <flash_erase_row>
    163a:	4603      	mov	r3, r0
    163c:	2b00      	cmp	r3, #0
    163e:	d00d      	beq.n	165c <flash_sync+0x3c>
    1640:	f7ff fef0 	bl	1424 <write_back_buffer>
    1644:	4603      	mov	r3, r0
    1646:	2b00      	cmp	r3, #0
    1648:	d008      	beq.n	165c <flash_sync+0x3c>
    164a:	4b07      	ldr	r3, [pc, #28]	; (1668 <flash_sync+0x48>)
    164c:	781b      	ldrb	r3, [r3, #0]
    164e:	f023 0301 	bic.w	r3, r3, #1
    1652:	b2da      	uxtb	r2, r3
    1654:	4b04      	ldr	r3, [pc, #16]	; (1668 <flash_sync+0x48>)
    1656:	701a      	strb	r2, [r3, #0]
    1658:	2301      	movs	r3, #1
    165a:	e002      	b.n	1662 <flash_sync+0x42>
    165c:	2300      	movs	r3, #0
    165e:	e000      	b.n	1662 <flash_sync+0x42>
    1660:	2301      	movs	r3, #1
    1662:	4618      	mov	r0, r3
    1664:	bd80      	pop	{r7, pc}
    1666:	bf00      	nop
    1668:	200001fc 	.word	0x200001fc

0000166c <flash_flush>:
    166c:	b480      	push	{r7}
    166e:	af00      	add	r7, sp, #0
    1670:	4b03      	ldr	r3, [pc, #12]	; (1680 <flash_flush+0x14>)
    1672:	2200      	movs	r2, #0
    1674:	701a      	strb	r2, [r3, #0]
    1676:	bf00      	nop
    1678:	46bd      	mov	sp, r7
    167a:	bc80      	pop	{r7}
    167c:	4770      	bx	lr
    167e:	bf00      	nop
    1680:	200001fc 	.word	0x200001fc

00001684 <flash_disable>:
    1684:	b580      	push	{r7, lr}
    1686:	af00      	add	r7, sp, #0
    1688:	f7ff ffca 	bl	1620 <flash_sync>
    168c:	4b05      	ldr	r3, [pc, #20]	; (16a4 <flash_disable+0x20>)
    168e:	2200      	movs	r2, #0
    1690:	701a      	strb	r2, [r3, #0]
    1692:	4a05      	ldr	r2, [pc, #20]	; (16a8 <flash_disable+0x24>)
    1694:	4b04      	ldr	r3, [pc, #16]	; (16a8 <flash_disable+0x24>)
    1696:	691b      	ldr	r3, [r3, #16]
    1698:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    169c:	6113      	str	r3, [r2, #16]
    169e:	bf00      	nop
    16a0:	bd80      	pop	{r7, pc}
    16a2:	bf00      	nop
    16a4:	200001fc 	.word	0x200001fc
    16a8:	40022000 	.word	0x40022000

000016ac <flash_write_byte>:
    16ac:	b580      	push	{r7, lr}
    16ae:	b084      	sub	sp, #16
    16b0:	af00      	add	r7, sp, #0
    16b2:	6078      	str	r0, [r7, #4]
    16b4:	460b      	mov	r3, r1
    16b6:	70fb      	strb	r3, [r7, #3]
    16b8:	687b      	ldr	r3, [r7, #4]
    16ba:	0a9b      	lsrs	r3, r3, #10
    16bc:	60fb      	str	r3, [r7, #12]
    16be:	68fb      	ldr	r3, [r7, #12]
    16c0:	2b3f      	cmp	r3, #63	; 0x3f
    16c2:	d801      	bhi.n	16c8 <flash_write_byte+0x1c>
    16c4:	2300      	movs	r3, #0
    16c6:	e021      	b.n	170c <flash_write_byte+0x60>
    16c8:	4b12      	ldr	r3, [pc, #72]	; (1714 <flash_write_byte+0x68>)
    16ca:	785b      	ldrb	r3, [r3, #1]
    16cc:	461a      	mov	r2, r3
    16ce:	68fb      	ldr	r3, [r7, #12]
    16d0:	429a      	cmp	r2, r3
    16d2:	d009      	beq.n	16e8 <flash_write_byte+0x3c>
    16d4:	f7ff ffa4 	bl	1620 <flash_sync>
    16d8:	4603      	mov	r3, r0
    16da:	2b00      	cmp	r3, #0
    16dc:	d101      	bne.n	16e2 <flash_write_byte+0x36>
    16de:	2300      	movs	r3, #0
    16e0:	e014      	b.n	170c <flash_write_byte+0x60>
    16e2:	68f8      	ldr	r0, [r7, #12]
    16e4:	f7ff fee2 	bl	14ac <load_row>
    16e8:	687b      	ldr	r3, [r7, #4]
    16ea:	f3c3 0309 	ubfx	r3, r3, #0, #10
    16ee:	60bb      	str	r3, [r7, #8]
    16f0:	4a08      	ldr	r2, [pc, #32]	; (1714 <flash_write_byte+0x68>)
    16f2:	68bb      	ldr	r3, [r7, #8]
    16f4:	4413      	add	r3, r2
    16f6:	3302      	adds	r3, #2
    16f8:	78fa      	ldrb	r2, [r7, #3]
    16fa:	701a      	strb	r2, [r3, #0]
    16fc:	4b05      	ldr	r3, [pc, #20]	; (1714 <flash_write_byte+0x68>)
    16fe:	781b      	ldrb	r3, [r3, #0]
    1700:	f043 0301 	orr.w	r3, r3, #1
    1704:	b2da      	uxtb	r2, r3
    1706:	4b03      	ldr	r3, [pc, #12]	; (1714 <flash_write_byte+0x68>)
    1708:	701a      	strb	r2, [r3, #0]
    170a:	2301      	movs	r3, #1
    170c:	4618      	mov	r0, r3
    170e:	3710      	adds	r7, #16
    1710:	46bd      	mov	sp, r7
    1712:	bd80      	pop	{r7, pc}
    1714:	200001fc 	.word	0x200001fc

00001718 <flash_read_block>:
    1718:	b590      	push	{r4, r7, lr}
    171a:	b087      	sub	sp, #28
    171c:	af00      	add	r7, sp, #0
    171e:	60f8      	str	r0, [r7, #12]
    1720:	60b9      	str	r1, [r7, #8]
    1722:	607a      	str	r2, [r7, #4]
    1724:	2300      	movs	r3, #0
    1726:	617b      	str	r3, [r7, #20]
    1728:	e00d      	b.n	1746 <flash_read_block+0x2e>
    172a:	68bc      	ldr	r4, [r7, #8]
    172c:	1c63      	adds	r3, r4, #1
    172e:	60bb      	str	r3, [r7, #8]
    1730:	68fb      	ldr	r3, [r7, #12]
    1732:	1c5a      	adds	r2, r3, #1
    1734:	60fa      	str	r2, [r7, #12]
    1736:	4618      	mov	r0, r3
    1738:	f7ff fe20 	bl	137c <read_byte>
    173c:	4603      	mov	r3, r0
    173e:	7023      	strb	r3, [r4, #0]
    1740:	697b      	ldr	r3, [r7, #20]
    1742:	3301      	adds	r3, #1
    1744:	617b      	str	r3, [r7, #20]
    1746:	697a      	ldr	r2, [r7, #20]
    1748:	687b      	ldr	r3, [r7, #4]
    174a:	429a      	cmp	r2, r3
    174c:	dbed      	blt.n	172a <flash_read_block+0x12>
    174e:	bf00      	nop
    1750:	371c      	adds	r7, #28
    1752:	46bd      	mov	sp, r7
    1754:	bd90      	pop	{r4, r7, pc}

00001756 <flash_write_block>:
    1756:	b580      	push	{r7, lr}
    1758:	b086      	sub	sp, #24
    175a:	af00      	add	r7, sp, #0
    175c:	60f8      	str	r0, [r7, #12]
    175e:	60b9      	str	r1, [r7, #8]
    1760:	607a      	str	r2, [r7, #4]
    1762:	4b18      	ldr	r3, [pc, #96]	; (17c4 <flash_write_block+0x6e>)
    1764:	681b      	ldr	r3, [r3, #0]
    1766:	461a      	mov	r2, r3
    1768:	68fb      	ldr	r3, [r7, #12]
    176a:	4293      	cmp	r3, r2
    176c:	d201      	bcs.n	1772 <flash_write_block+0x1c>
    176e:	2300      	movs	r3, #0
    1770:	e023      	b.n	17ba <flash_write_block+0x64>
    1772:	f7ff fdcd 	bl	1310 <flash_enable>
    1776:	4603      	mov	r3, r0
    1778:	2b00      	cmp	r3, #0
    177a:	d101      	bne.n	1780 <flash_write_block+0x2a>
    177c:	2300      	movs	r3, #0
    177e:	e01c      	b.n	17ba <flash_write_block+0x64>
    1780:	2300      	movs	r3, #0
    1782:	617b      	str	r3, [r7, #20]
    1784:	e012      	b.n	17ac <flash_write_block+0x56>
    1786:	68fa      	ldr	r2, [r7, #12]
    1788:	1c53      	adds	r3, r2, #1
    178a:	60fb      	str	r3, [r7, #12]
    178c:	68bb      	ldr	r3, [r7, #8]
    178e:	1c59      	adds	r1, r3, #1
    1790:	60b9      	str	r1, [r7, #8]
    1792:	781b      	ldrb	r3, [r3, #0]
    1794:	4619      	mov	r1, r3
    1796:	4610      	mov	r0, r2
    1798:	f7ff ff88 	bl	16ac <flash_write_byte>
    179c:	4603      	mov	r3, r0
    179e:	2b00      	cmp	r3, #0
    17a0:	d101      	bne.n	17a6 <flash_write_block+0x50>
    17a2:	2300      	movs	r3, #0
    17a4:	e009      	b.n	17ba <flash_write_block+0x64>
    17a6:	697b      	ldr	r3, [r7, #20]
    17a8:	3301      	adds	r3, #1
    17aa:	617b      	str	r3, [r7, #20]
    17ac:	697a      	ldr	r2, [r7, #20]
    17ae:	687b      	ldr	r3, [r7, #4]
    17b0:	429a      	cmp	r2, r3
    17b2:	dbe8      	blt.n	1786 <flash_write_block+0x30>
    17b4:	f7ff ff66 	bl	1684 <flash_disable>
    17b8:	2301      	movs	r3, #1
    17ba:	4618      	mov	r0, r3
    17bc:	3718      	adds	r7, #24
    17be:	46bd      	mov	sp, r7
    17c0:	bd80      	pop	{r7, pc}
    17c2:	bf00      	nop
    17c4:	00005c00 	.word	0x00005c00

000017c8 <btn_idx>:
    17c8:	b480      	push	{r7}
    17ca:	b085      	sub	sp, #20
    17cc:	af00      	add	r7, sp, #0
    17ce:	4603      	mov	r3, r0
    17d0:	71fb      	strb	r3, [r7, #7]
    17d2:	2300      	movs	r3, #0
    17d4:	73fb      	strb	r3, [r7, #15]
    17d6:	79fb      	ldrb	r3, [r7, #7]
    17d8:	085b      	lsrs	r3, r3, #1
    17da:	71fb      	strb	r3, [r7, #7]
    17dc:	e005      	b.n	17ea <btn_idx+0x22>
    17de:	7bfb      	ldrb	r3, [r7, #15]
    17e0:	3301      	adds	r3, #1
    17e2:	73fb      	strb	r3, [r7, #15]
    17e4:	79fb      	ldrb	r3, [r7, #7]
    17e6:	085b      	lsrs	r3, r3, #1
    17e8:	71fb      	strb	r3, [r7, #7]
    17ea:	79fb      	ldrb	r3, [r7, #7]
    17ec:	2b00      	cmp	r3, #0
    17ee:	d1f6      	bne.n	17de <btn_idx+0x16>
    17f0:	7bfb      	ldrb	r3, [r7, #15]
    17f2:	4618      	mov	r0, r3
    17f4:	3714      	adds	r7, #20
    17f6:	46bd      	mov	sp, r7
    17f8:	bc80      	pop	{r7}
    17fa:	4770      	bx	lr

000017fc <btn_mask>:
    17fc:	b480      	push	{r7}
    17fe:	b085      	sub	sp, #20
    1800:	af00      	add	r7, sp, #0
    1802:	4603      	mov	r3, r0
    1804:	71fb      	strb	r3, [r7, #7]
    1806:	2300      	movs	r3, #0
    1808:	60fb      	str	r3, [r7, #12]
    180a:	e00f      	b.n	182c <btn_mask+0x30>
    180c:	4a0c      	ldr	r2, [pc, #48]	; (1840 <btn_mask+0x44>)
    180e:	68fb      	ldr	r3, [r7, #12]
    1810:	4413      	add	r3, r2
    1812:	781b      	ldrb	r3, [r3, #0]
    1814:	79fa      	ldrb	r2, [r7, #7]
    1816:	429a      	cmp	r2, r3
    1818:	d105      	bne.n	1826 <btn_mask+0x2a>
    181a:	2201      	movs	r2, #1
    181c:	68fb      	ldr	r3, [r7, #12]
    181e:	fa02 f303 	lsl.w	r3, r2, r3
    1822:	b2db      	uxtb	r3, r3
    1824:	e006      	b.n	1834 <btn_mask+0x38>
    1826:	68fb      	ldr	r3, [r7, #12]
    1828:	3301      	adds	r3, #1
    182a:	60fb      	str	r3, [r7, #12]
    182c:	68fb      	ldr	r3, [r7, #12]
    182e:	2b07      	cmp	r3, #7
    1830:	ddec      	ble.n	180c <btn_mask+0x10>
    1832:	23ff      	movs	r3, #255	; 0xff
    1834:	4618      	mov	r0, r3
    1836:	3714      	adds	r7, #20
    1838:	46bd      	mov	sp, r7
    183a:	bc80      	pop	{r7}
    183c:	4770      	bx	lr
    183e:	bf00      	nop
    1840:	20000600 	.word	0x20000600

00001844 <set_keymap>:
    1844:	b480      	push	{r7}
    1846:	b085      	sub	sp, #20
    1848:	af00      	add	r7, sp, #0
    184a:	6078      	str	r0, [r7, #4]
    184c:	2300      	movs	r3, #0
    184e:	60fb      	str	r3, [r7, #12]
    1850:	e00b      	b.n	186a <set_keymap+0x26>
    1852:	68fb      	ldr	r3, [r7, #12]
    1854:	687a      	ldr	r2, [r7, #4]
    1856:	4413      	add	r3, r2
    1858:	7819      	ldrb	r1, [r3, #0]
    185a:	4a08      	ldr	r2, [pc, #32]	; (187c <set_keymap+0x38>)
    185c:	68fb      	ldr	r3, [r7, #12]
    185e:	4413      	add	r3, r2
    1860:	460a      	mov	r2, r1
    1862:	701a      	strb	r2, [r3, #0]
    1864:	68fb      	ldr	r3, [r7, #12]
    1866:	3301      	adds	r3, #1
    1868:	60fb      	str	r3, [r7, #12]
    186a:	68fb      	ldr	r3, [r7, #12]
    186c:	2b07      	cmp	r3, #7
    186e:	ddf0      	ble.n	1852 <set_keymap+0xe>
    1870:	bf00      	nop
    1872:	3714      	adds	r7, #20
    1874:	46bd      	mov	sp, r7
    1876:	bc80      	pop	{r7}
    1878:	4770      	bx	lr
    187a:	bf00      	nop
    187c:	20000600 	.word	0x20000600

00001880 <gamepad_init>:
    1880:	b580      	push	{r7, lr}
    1882:	af00      	add	r7, sp, #0
    1884:	2202      	movs	r2, #2
    1886:	210f      	movs	r1, #15
    1888:	480a      	ldr	r0, [pc, #40]	; (18b4 <gamepad_init+0x34>)
    188a:	f000 fb69 	bl	1f60 <config_pin>
    188e:	2202      	movs	r2, #2
    1890:	210d      	movs	r1, #13
    1892:	4808      	ldr	r0, [pc, #32]	; (18b4 <gamepad_init+0x34>)
    1894:	f000 fb64 	bl	1f60 <config_pin>
    1898:	2208      	movs	r2, #8
    189a:	210e      	movs	r1, #14
    189c:	4805      	ldr	r0, [pc, #20]	; (18b4 <gamepad_init+0x34>)
    189e:	f000 fb5f 	bl	1f60 <config_pin>
    18a2:	4b05      	ldr	r3, [pc, #20]	; (18b8 <gamepad_init+0x38>)
    18a4:	22ff      	movs	r2, #255	; 0xff
    18a6:	701a      	strb	r2, [r3, #0]
    18a8:	4804      	ldr	r0, [pc, #16]	; (18bc <gamepad_init+0x3c>)
    18aa:	f7ff ffcb 	bl	1844 <set_keymap>
    18ae:	bf00      	nop
    18b0:	bd80      	pop	{r7, pc}
    18b2:	bf00      	nop
    18b4:	40010c00 	.word	0x40010c00
    18b8:	20002628 	.word	0x20002628
    18bc:	00005828 	.word	0x00005828

000018c0 <shift_out>:
    18c0:	b480      	push	{r7}
    18c2:	b085      	sub	sp, #20
    18c4:	af00      	add	r7, sp, #0
    18c6:	4603      	mov	r3, r0
    18c8:	71fb      	strb	r3, [r7, #7]
    18ca:	2301      	movs	r3, #1
    18cc:	73fb      	strb	r3, [r7, #15]
    18ce:	2300      	movs	r3, #0
    18d0:	73bb      	strb	r3, [r7, #14]
    18d2:	e033      	b.n	193c <shift_out+0x7c>
    18d4:	79fa      	ldrb	r2, [r7, #7]
    18d6:	7bfb      	ldrb	r3, [r7, #15]
    18d8:	4013      	ands	r3, r2
    18da:	b2db      	uxtb	r3, r3
    18dc:	2b00      	cmp	r3, #0
    18de:	d006      	beq.n	18ee <shift_out+0x2e>
    18e0:	4a25      	ldr	r2, [pc, #148]	; (1978 <shift_out+0xb8>)
    18e2:	4b25      	ldr	r3, [pc, #148]	; (1978 <shift_out+0xb8>)
    18e4:	68db      	ldr	r3, [r3, #12]
    18e6:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    18ea:	60d3      	str	r3, [r2, #12]
    18ec:	e005      	b.n	18fa <shift_out+0x3a>
    18ee:	4a22      	ldr	r2, [pc, #136]	; (1978 <shift_out+0xb8>)
    18f0:	4b21      	ldr	r3, [pc, #132]	; (1978 <shift_out+0xb8>)
    18f2:	68db      	ldr	r3, [r3, #12]
    18f4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
    18f8:	60d3      	str	r3, [r2, #12]
    18fa:	4a1f      	ldr	r2, [pc, #124]	; (1978 <shift_out+0xb8>)
    18fc:	4b1e      	ldr	r3, [pc, #120]	; (1978 <shift_out+0xb8>)
    18fe:	68db      	ldr	r3, [r3, #12]
    1900:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1904:	60d3      	str	r3, [r2, #12]
    1906:	bf00      	nop
    1908:	bf00      	nop
    190a:	bf00      	nop
    190c:	4a1a      	ldr	r2, [pc, #104]	; (1978 <shift_out+0xb8>)
    190e:	4b1a      	ldr	r3, [pc, #104]	; (1978 <shift_out+0xb8>)
    1910:	68db      	ldr	r3, [r3, #12]
    1912:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    1916:	60d3      	str	r3, [r2, #12]
    1918:	7bbb      	ldrb	r3, [r7, #14]
    191a:	085b      	lsrs	r3, r3, #1
    191c:	73bb      	strb	r3, [r7, #14]
    191e:	4a16      	ldr	r2, [pc, #88]	; (1978 <shift_out+0xb8>)
    1920:	4b15      	ldr	r3, [pc, #84]	; (1978 <shift_out+0xb8>)
    1922:	689b      	ldr	r3, [r3, #8]
    1924:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
    1928:	6093      	str	r3, [r2, #8]
    192a:	2b00      	cmp	r3, #0
    192c:	d003      	beq.n	1936 <shift_out+0x76>
    192e:	7bbb      	ldrb	r3, [r7, #14]
    1930:	f063 037f 	orn	r3, r3, #127	; 0x7f
    1934:	73bb      	strb	r3, [r7, #14]
    1936:	7bfb      	ldrb	r3, [r7, #15]
    1938:	005b      	lsls	r3, r3, #1
    193a:	73fb      	strb	r3, [r7, #15]
    193c:	7bfb      	ldrb	r3, [r7, #15]
    193e:	2b00      	cmp	r3, #0
    1940:	d1c8      	bne.n	18d4 <shift_out+0x14>
    1942:	4a0d      	ldr	r2, [pc, #52]	; (1978 <shift_out+0xb8>)
    1944:	4b0c      	ldr	r3, [pc, #48]	; (1978 <shift_out+0xb8>)
    1946:	68db      	ldr	r3, [r3, #12]
    1948:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    194c:	60d3      	str	r3, [r2, #12]
    194e:	4a0a      	ldr	r2, [pc, #40]	; (1978 <shift_out+0xb8>)
    1950:	4b09      	ldr	r3, [pc, #36]	; (1978 <shift_out+0xb8>)
    1952:	68db      	ldr	r3, [r3, #12]
    1954:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    1958:	60d3      	str	r3, [r2, #12]
    195a:	bf00      	nop
    195c:	bf00      	nop
    195e:	bf00      	nop
    1960:	4a05      	ldr	r2, [pc, #20]	; (1978 <shift_out+0xb8>)
    1962:	4b05      	ldr	r3, [pc, #20]	; (1978 <shift_out+0xb8>)
    1964:	68db      	ldr	r3, [r3, #12]
    1966:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    196a:	60d3      	str	r3, [r2, #12]
    196c:	7bbb      	ldrb	r3, [r7, #14]
    196e:	4618      	mov	r0, r3
    1970:	3714      	adds	r7, #20
    1972:	46bd      	mov	sp, r7
    1974:	bc80      	pop	{r7}
    1976:	4770      	bx	lr
    1978:	40010c00 	.word	0x40010c00

0000197c <read_gamepad>:
    197c:	b580      	push	{r7, lr}
    197e:	af00      	add	r7, sp, #0
    1980:	20fe      	movs	r0, #254	; 0xfe
    1982:	f7ff ff9d 	bl	18c0 <shift_out>
    1986:	4603      	mov	r3, r0
    1988:	461a      	mov	r2, r3
    198a:	4b02      	ldr	r3, [pc, #8]	; (1994 <read_gamepad+0x18>)
    198c:	701a      	strb	r2, [r3, #0]
    198e:	bf00      	nop
    1990:	bd80      	pop	{r7, pc}
    1992:	bf00      	nop
    1994:	20002628 	.word	0x20002628

00001998 <btn_query_down>:
    1998:	b580      	push	{r7, lr}
    199a:	b084      	sub	sp, #16
    199c:	af00      	add	r7, sp, #0
    199e:	4603      	mov	r3, r0
    19a0:	71fb      	strb	r3, [r7, #7]
    19a2:	79fb      	ldrb	r3, [r7, #7]
    19a4:	4618      	mov	r0, r3
    19a6:	f7ff ff29 	bl	17fc <btn_mask>
    19aa:	4603      	mov	r3, r0
    19ac:	73fb      	strb	r3, [r7, #15]
    19ae:	4b07      	ldr	r3, [pc, #28]	; (19cc <btn_query_down+0x34>)
    19b0:	781b      	ldrb	r3, [r3, #0]
    19b2:	b2da      	uxtb	r2, r3
    19b4:	7bfb      	ldrb	r3, [r7, #15]
    19b6:	4013      	ands	r3, r2
    19b8:	b2db      	uxtb	r3, r3
    19ba:	2b00      	cmp	r3, #0
    19bc:	bf0c      	ite	eq
    19be:	2301      	moveq	r3, #1
    19c0:	2300      	movne	r3, #0
    19c2:	b2db      	uxtb	r3, r3
    19c4:	4618      	mov	r0, r3
    19c6:	3710      	adds	r7, #16
    19c8:	46bd      	mov	sp, r7
    19ca:	bd80      	pop	{r7, pc}
    19cc:	20002628 	.word	0x20002628

000019d0 <btn_wait_down>:
    19d0:	b580      	push	{r7, lr}
    19d2:	b084      	sub	sp, #16
    19d4:	af00      	add	r7, sp, #0
    19d6:	4603      	mov	r3, r0
    19d8:	71fb      	strb	r3, [r7, #7]
    19da:	79fb      	ldrb	r3, [r7, #7]
    19dc:	4618      	mov	r0, r3
    19de:	f7ff ff0d 	bl	17fc <btn_mask>
    19e2:	4603      	mov	r3, r0
    19e4:	72fb      	strb	r3, [r7, #11]
    19e6:	2300      	movs	r3, #0
    19e8:	60fb      	str	r3, [r7, #12]
    19ea:	e00f      	b.n	1a0c <btn_wait_down+0x3c>
    19ec:	f003 fc04 	bl	51f8 <frame_sync>
    19f0:	4b0a      	ldr	r3, [pc, #40]	; (1a1c <btn_wait_down+0x4c>)
    19f2:	781b      	ldrb	r3, [r3, #0]
    19f4:	b2da      	uxtb	r2, r3
    19f6:	7afb      	ldrb	r3, [r7, #11]
    19f8:	4013      	ands	r3, r2
    19fa:	b2db      	uxtb	r3, r3
    19fc:	2b00      	cmp	r3, #0
    19fe:	d103      	bne.n	1a08 <btn_wait_down+0x38>
    1a00:	68fb      	ldr	r3, [r7, #12]
    1a02:	3301      	adds	r3, #1
    1a04:	60fb      	str	r3, [r7, #12]
    1a06:	e001      	b.n	1a0c <btn_wait_down+0x3c>
    1a08:	2300      	movs	r3, #0
    1a0a:	60fb      	str	r3, [r7, #12]
    1a0c:	68fb      	ldr	r3, [r7, #12]
    1a0e:	2b02      	cmp	r3, #2
    1a10:	ddec      	ble.n	19ec <btn_wait_down+0x1c>
    1a12:	bf00      	nop
    1a14:	3710      	adds	r7, #16
    1a16:	46bd      	mov	sp, r7
    1a18:	bd80      	pop	{r7, pc}
    1a1a:	bf00      	nop
    1a1c:	20002628 	.word	0x20002628

00001a20 <btn_wait_up>:
    1a20:	b580      	push	{r7, lr}
    1a22:	b084      	sub	sp, #16
    1a24:	af00      	add	r7, sp, #0
    1a26:	4603      	mov	r3, r0
    1a28:	71fb      	strb	r3, [r7, #7]
    1a2a:	79fb      	ldrb	r3, [r7, #7]
    1a2c:	4618      	mov	r0, r3
    1a2e:	f7ff fee5 	bl	17fc <btn_mask>
    1a32:	4603      	mov	r3, r0
    1a34:	72fb      	strb	r3, [r7, #11]
    1a36:	2300      	movs	r3, #0
    1a38:	60fb      	str	r3, [r7, #12]
    1a3a:	e00f      	b.n	1a5c <btn_wait_up+0x3c>
    1a3c:	f003 fbdc 	bl	51f8 <frame_sync>
    1a40:	4b0a      	ldr	r3, [pc, #40]	; (1a6c <btn_wait_up+0x4c>)
    1a42:	781b      	ldrb	r3, [r3, #0]
    1a44:	b2da      	uxtb	r2, r3
    1a46:	7afb      	ldrb	r3, [r7, #11]
    1a48:	4013      	ands	r3, r2
    1a4a:	b2db      	uxtb	r3, r3
    1a4c:	2b00      	cmp	r3, #0
    1a4e:	d003      	beq.n	1a58 <btn_wait_up+0x38>
    1a50:	68fb      	ldr	r3, [r7, #12]
    1a52:	3301      	adds	r3, #1
    1a54:	60fb      	str	r3, [r7, #12]
    1a56:	e001      	b.n	1a5c <btn_wait_up+0x3c>
    1a58:	2300      	movs	r3, #0
    1a5a:	60fb      	str	r3, [r7, #12]
    1a5c:	68fb      	ldr	r3, [r7, #12]
    1a5e:	2b02      	cmp	r3, #2
    1a60:	ddec      	ble.n	1a3c <btn_wait_up+0x1c>
    1a62:	bf00      	nop
    1a64:	3710      	adds	r7, #16
    1a66:	46bd      	mov	sp, r7
    1a68:	bd80      	pop	{r7, pc}
    1a6a:	bf00      	nop
    1a6c:	20002628 	.word	0x20002628

00001a70 <btn_wait_any>:
    1a70:	b580      	push	{r7, lr}
    1a72:	b082      	sub	sp, #8
    1a74:	af00      	add	r7, sp, #0
    1a76:	4b16      	ldr	r3, [pc, #88]	; (1ad0 <btn_wait_any+0x60>)
    1a78:	781b      	ldrb	r3, [r3, #0]
    1a7a:	71fb      	strb	r3, [r7, #7]
    1a7c:	2300      	movs	r3, #0
    1a7e:	603b      	str	r3, [r7, #0]
    1a80:	e015      	b.n	1aae <btn_wait_any+0x3e>
    1a82:	f003 fbb9 	bl	51f8 <frame_sync>
    1a86:	4b12      	ldr	r3, [pc, #72]	; (1ad0 <btn_wait_any+0x60>)
    1a88:	781b      	ldrb	r3, [r3, #0]
    1a8a:	b2db      	uxtb	r3, r3
    1a8c:	79fa      	ldrb	r2, [r7, #7]
    1a8e:	429a      	cmp	r2, r3
    1a90:	d005      	beq.n	1a9e <btn_wait_any+0x2e>
    1a92:	2300      	movs	r3, #0
    1a94:	603b      	str	r3, [r7, #0]
    1a96:	4b0e      	ldr	r3, [pc, #56]	; (1ad0 <btn_wait_any+0x60>)
    1a98:	781b      	ldrb	r3, [r3, #0]
    1a9a:	71fb      	strb	r3, [r7, #7]
    1a9c:	e007      	b.n	1aae <btn_wait_any+0x3e>
    1a9e:	4b0c      	ldr	r3, [pc, #48]	; (1ad0 <btn_wait_any+0x60>)
    1aa0:	781b      	ldrb	r3, [r3, #0]
    1aa2:	b2db      	uxtb	r3, r3
    1aa4:	2bff      	cmp	r3, #255	; 0xff
    1aa6:	d002      	beq.n	1aae <btn_wait_any+0x3e>
    1aa8:	683b      	ldr	r3, [r7, #0]
    1aaa:	3301      	adds	r3, #1
    1aac:	603b      	str	r3, [r7, #0]
    1aae:	683b      	ldr	r3, [r7, #0]
    1ab0:	2b02      	cmp	r3, #2
    1ab2:	dde6      	ble.n	1a82 <btn_wait_any+0x12>
    1ab4:	79fb      	ldrb	r3, [r7, #7]
    1ab6:	43db      	mvns	r3, r3
    1ab8:	b2db      	uxtb	r3, r3
    1aba:	4618      	mov	r0, r3
    1abc:	f7ff fe84 	bl	17c8 <btn_idx>
    1ac0:	4603      	mov	r3, r0
    1ac2:	461a      	mov	r2, r3
    1ac4:	4b03      	ldr	r3, [pc, #12]	; (1ad4 <btn_wait_any+0x64>)
    1ac6:	5c9b      	ldrb	r3, [r3, r2]
    1ac8:	4618      	mov	r0, r3
    1aca:	3708      	adds	r7, #8
    1acc:	46bd      	mov	sp, r7
    1ace:	bd80      	pop	{r7, pc}
    1ad0:	20002628 	.word	0x20002628
    1ad4:	20000600 	.word	0x20000600

00001ad8 <btn_set_value>:
    1ad8:	b480      	push	{r7}
    1ada:	b083      	sub	sp, #12
    1adc:	af00      	add	r7, sp, #0
    1ade:	4603      	mov	r3, r0
    1ae0:	460a      	mov	r2, r1
    1ae2:	71fb      	strb	r3, [r7, #7]
    1ae4:	4613      	mov	r3, r2
    1ae6:	71bb      	strb	r3, [r7, #6]
    1ae8:	79fb      	ldrb	r3, [r7, #7]
    1aea:	4904      	ldr	r1, [pc, #16]	; (1afc <btn_set_value+0x24>)
    1aec:	79ba      	ldrb	r2, [r7, #6]
    1aee:	54ca      	strb	r2, [r1, r3]
    1af0:	bf00      	nop
    1af2:	370c      	adds	r7, #12
    1af4:	46bd      	mov	sp, r7
    1af6:	bc80      	pop	{r7}
    1af8:	4770      	bx	lr
    1afa:	bf00      	nop
    1afc:	20000600 	.word	0x20000600

00001b00 <get_keymap>:
    1b00:	b480      	push	{r7}
    1b02:	af00      	add	r7, sp, #0
    1b04:	4b02      	ldr	r3, [pc, #8]	; (1b10 <get_keymap+0x10>)
    1b06:	4618      	mov	r0, r3
    1b08:	46bd      	mov	sp, r7
    1b0a:	bc80      	pop	{r7}
    1b0c:	4770      	bx	lr
    1b0e:	bf00      	nop
    1b10:	20000600 	.word	0x20000600

00001b14 <games_count>:
    1b14:	b480      	push	{r7}
    1b16:	b083      	sub	sp, #12
    1b18:	af00      	add	r7, sp, #0
    1b1a:	2300      	movs	r3, #0
    1b1c:	607b      	str	r3, [r7, #4]
    1b1e:	490b      	ldr	r1, [pc, #44]	; (1b4c <games_count+0x38>)
    1b20:	687a      	ldr	r2, [r7, #4]
    1b22:	4613      	mov	r3, r2
    1b24:	00db      	lsls	r3, r3, #3
    1b26:	1a9b      	subs	r3, r3, r2
    1b28:	009b      	lsls	r3, r3, #2
    1b2a:	440b      	add	r3, r1
    1b2c:	3310      	adds	r3, #16
    1b2e:	681b      	ldr	r3, [r3, #0]
    1b30:	2b00      	cmp	r3, #0
    1b32:	d003      	beq.n	1b3c <games_count+0x28>
    1b34:	687b      	ldr	r3, [r7, #4]
    1b36:	3301      	adds	r3, #1
    1b38:	607b      	str	r3, [r7, #4]
    1b3a:	e7f0      	b.n	1b1e <games_count+0xa>
    1b3c:	bf00      	nop
    1b3e:	687b      	ldr	r3, [r7, #4]
    1b40:	4618      	mov	r0, r3
    1b42:	370c      	adds	r7, #12
    1b44:	46bd      	mov	sp, r7
    1b46:	bc80      	pop	{r7}
    1b48:	4770      	bx	lr
    1b4a:	bf00      	nop
    1b4c:	20000008 	.word	0x20000008

00001b50 <strcmp>:
    1b50:	b480      	push	{r7}
    1b52:	b085      	sub	sp, #20
    1b54:	af00      	add	r7, sp, #0
    1b56:	6078      	str	r0, [r7, #4]
    1b58:	6039      	str	r1, [r7, #0]
    1b5a:	2300      	movs	r3, #0
    1b5c:	60fb      	str	r3, [r7, #12]
    1b5e:	e018      	b.n	1b92 <strcmp+0x42>
    1b60:	687b      	ldr	r3, [r7, #4]
    1b62:	781a      	ldrb	r2, [r3, #0]
    1b64:	683b      	ldr	r3, [r7, #0]
    1b66:	781b      	ldrb	r3, [r3, #0]
    1b68:	429a      	cmp	r2, r3
    1b6a:	d203      	bcs.n	1b74 <strcmp+0x24>
    1b6c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1b70:	60fb      	str	r3, [r7, #12]
    1b72:	e016      	b.n	1ba2 <strcmp+0x52>
    1b74:	687b      	ldr	r3, [r7, #4]
    1b76:	781a      	ldrb	r2, [r3, #0]
    1b78:	683b      	ldr	r3, [r7, #0]
    1b7a:	781b      	ldrb	r3, [r3, #0]
    1b7c:	429a      	cmp	r2, r3
    1b7e:	d902      	bls.n	1b86 <strcmp+0x36>
    1b80:	2301      	movs	r3, #1
    1b82:	60fb      	str	r3, [r7, #12]
    1b84:	e00d      	b.n	1ba2 <strcmp+0x52>
    1b86:	687b      	ldr	r3, [r7, #4]
    1b88:	3301      	adds	r3, #1
    1b8a:	607b      	str	r3, [r7, #4]
    1b8c:	683b      	ldr	r3, [r7, #0]
    1b8e:	3301      	adds	r3, #1
    1b90:	603b      	str	r3, [r7, #0]
    1b92:	687b      	ldr	r3, [r7, #4]
    1b94:	781b      	ldrb	r3, [r3, #0]
    1b96:	2b00      	cmp	r3, #0
    1b98:	d003      	beq.n	1ba2 <strcmp+0x52>
    1b9a:	683b      	ldr	r3, [r7, #0]
    1b9c:	781b      	ldrb	r3, [r3, #0]
    1b9e:	2b00      	cmp	r3, #0
    1ba0:	d1de      	bne.n	1b60 <strcmp+0x10>
    1ba2:	68fb      	ldr	r3, [r7, #12]
    1ba4:	2b00      	cmp	r3, #0
    1ba6:	d115      	bne.n	1bd4 <strcmp+0x84>
    1ba8:	687b      	ldr	r3, [r7, #4]
    1baa:	781b      	ldrb	r3, [r3, #0]
    1bac:	2b00      	cmp	r3, #0
    1bae:	d107      	bne.n	1bc0 <strcmp+0x70>
    1bb0:	683b      	ldr	r3, [r7, #0]
    1bb2:	781b      	ldrb	r3, [r3, #0]
    1bb4:	2b00      	cmp	r3, #0
    1bb6:	d003      	beq.n	1bc0 <strcmp+0x70>
    1bb8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1bbc:	60fb      	str	r3, [r7, #12]
    1bbe:	e009      	b.n	1bd4 <strcmp+0x84>
    1bc0:	687b      	ldr	r3, [r7, #4]
    1bc2:	781b      	ldrb	r3, [r3, #0]
    1bc4:	2b00      	cmp	r3, #0
    1bc6:	d005      	beq.n	1bd4 <strcmp+0x84>
    1bc8:	683b      	ldr	r3, [r7, #0]
    1bca:	781b      	ldrb	r3, [r3, #0]
    1bcc:	2b00      	cmp	r3, #0
    1bce:	d101      	bne.n	1bd4 <strcmp+0x84>
    1bd0:	2301      	movs	r3, #1
    1bd2:	60fb      	str	r3, [r7, #12]
    1bd4:	68fb      	ldr	r3, [r7, #12]
    1bd6:	4618      	mov	r0, r3
    1bd8:	3714      	adds	r7, #20
    1bda:	46bd      	mov	sp, r7
    1bdc:	bc80      	pop	{r7}
    1bde:	4770      	bx	lr

00001be0 <alpha>:
    1be0:	b480      	push	{r7}
    1be2:	b083      	sub	sp, #12
    1be4:	af00      	add	r7, sp, #0
    1be6:	4603      	mov	r3, r0
    1be8:	71fb      	strb	r3, [r7, #7]
    1bea:	79fb      	ldrb	r3, [r7, #7]
    1bec:	2b60      	cmp	r3, #96	; 0x60
    1bee:	d902      	bls.n	1bf6 <alpha+0x16>
    1bf0:	79fb      	ldrb	r3, [r7, #7]
    1bf2:	2b7a      	cmp	r3, #122	; 0x7a
    1bf4:	d905      	bls.n	1c02 <alpha+0x22>
    1bf6:	79fb      	ldrb	r3, [r7, #7]
    1bf8:	2b40      	cmp	r3, #64	; 0x40
    1bfa:	d904      	bls.n	1c06 <alpha+0x26>
    1bfc:	79fb      	ldrb	r3, [r7, #7]
    1bfe:	2b5a      	cmp	r3, #90	; 0x5a
    1c00:	d801      	bhi.n	1c06 <alpha+0x26>
    1c02:	2301      	movs	r3, #1
    1c04:	e000      	b.n	1c08 <alpha+0x28>
    1c06:	2300      	movs	r3, #0
    1c08:	4618      	mov	r0, r3
    1c0a:	370c      	adds	r7, #12
    1c0c:	46bd      	mov	sp, r7
    1c0e:	bc80      	pop	{r7}
    1c10:	4770      	bx	lr

00001c12 <digit>:
    1c12:	b480      	push	{r7}
    1c14:	b083      	sub	sp, #12
    1c16:	af00      	add	r7, sp, #0
    1c18:	4603      	mov	r3, r0
    1c1a:	71fb      	strb	r3, [r7, #7]
    1c1c:	79fb      	ldrb	r3, [r7, #7]
    1c1e:	2b2f      	cmp	r3, #47	; 0x2f
    1c20:	d904      	bls.n	1c2c <digit+0x1a>
    1c22:	79fb      	ldrb	r3, [r7, #7]
    1c24:	2b39      	cmp	r3, #57	; 0x39
    1c26:	d801      	bhi.n	1c2c <digit+0x1a>
    1c28:	2301      	movs	r3, #1
    1c2a:	e000      	b.n	1c2e <digit+0x1c>
    1c2c:	2300      	movs	r3, #0
    1c2e:	4618      	mov	r0, r3
    1c30:	370c      	adds	r7, #12
    1c32:	46bd      	mov	sp, r7
    1c34:	bc80      	pop	{r7}
    1c36:	4770      	bx	lr

00001c38 <hexdigit>:
    1c38:	b580      	push	{r7, lr}
    1c3a:	b082      	sub	sp, #8
    1c3c:	af00      	add	r7, sp, #0
    1c3e:	4603      	mov	r3, r0
    1c40:	71fb      	strb	r3, [r7, #7]
    1c42:	79fb      	ldrb	r3, [r7, #7]
    1c44:	2b60      	cmp	r3, #96	; 0x60
    1c46:	d902      	bls.n	1c4e <hexdigit+0x16>
    1c48:	79fb      	ldrb	r3, [r7, #7]
    1c4a:	3b20      	subs	r3, #32
    1c4c:	71fb      	strb	r3, [r7, #7]
    1c4e:	79fb      	ldrb	r3, [r7, #7]
    1c50:	4618      	mov	r0, r3
    1c52:	f7ff ffde 	bl	1c12 <digit>
    1c56:	4603      	mov	r3, r0
    1c58:	2b00      	cmp	r3, #0
    1c5a:	d105      	bne.n	1c68 <hexdigit+0x30>
    1c5c:	79fb      	ldrb	r3, [r7, #7]
    1c5e:	2b40      	cmp	r3, #64	; 0x40
    1c60:	d904      	bls.n	1c6c <hexdigit+0x34>
    1c62:	79fb      	ldrb	r3, [r7, #7]
    1c64:	2b46      	cmp	r3, #70	; 0x46
    1c66:	d801      	bhi.n	1c6c <hexdigit+0x34>
    1c68:	2301      	movs	r3, #1
    1c6a:	e000      	b.n	1c6e <hexdigit+0x36>
    1c6c:	2300      	movs	r3, #0
    1c6e:	4618      	mov	r0, r3
    1c70:	3708      	adds	r7, #8
    1c72:	46bd      	mov	sp, r7
    1c74:	bd80      	pop	{r7, pc}

00001c76 <atoi>:
    1c76:	b580      	push	{r7, lr}
    1c78:	b086      	sub	sp, #24
    1c7a:	af00      	add	r7, sp, #0
    1c7c:	6078      	str	r0, [r7, #4]
    1c7e:	2300      	movs	r3, #0
    1c80:	617b      	str	r3, [r7, #20]
    1c82:	2301      	movs	r3, #1
    1c84:	613b      	str	r3, [r7, #16]
    1c86:	230a      	movs	r3, #10
    1c88:	60fb      	str	r3, [r7, #12]
    1c8a:	e002      	b.n	1c92 <atoi+0x1c>
    1c8c:	687b      	ldr	r3, [r7, #4]
    1c8e:	3301      	adds	r3, #1
    1c90:	607b      	str	r3, [r7, #4]
    1c92:	687b      	ldr	r3, [r7, #4]
    1c94:	781b      	ldrb	r3, [r3, #0]
    1c96:	2b00      	cmp	r3, #0
    1c98:	d003      	beq.n	1ca2 <atoi+0x2c>
    1c9a:	687b      	ldr	r3, [r7, #4]
    1c9c:	781b      	ldrb	r3, [r3, #0]
    1c9e:	2b20      	cmp	r3, #32
    1ca0:	d0f4      	beq.n	1c8c <atoi+0x16>
    1ca2:	687b      	ldr	r3, [r7, #4]
    1ca4:	781b      	ldrb	r3, [r3, #0]
    1ca6:	2b2d      	cmp	r3, #45	; 0x2d
    1ca8:	d105      	bne.n	1cb6 <atoi+0x40>
    1caa:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1cae:	613b      	str	r3, [r7, #16]
    1cb0:	687b      	ldr	r3, [r7, #4]
    1cb2:	3301      	adds	r3, #1
    1cb4:	607b      	str	r3, [r7, #4]
    1cb6:	687b      	ldr	r3, [r7, #4]
    1cb8:	781b      	ldrb	r3, [r3, #0]
    1cba:	2b24      	cmp	r3, #36	; 0x24
    1cbc:	d10e      	bne.n	1cdc <atoi+0x66>
    1cbe:	687b      	ldr	r3, [r7, #4]
    1cc0:	3301      	adds	r3, #1
    1cc2:	781b      	ldrb	r3, [r3, #0]
    1cc4:	4618      	mov	r0, r3
    1cc6:	f7ff ffb7 	bl	1c38 <hexdigit>
    1cca:	4603      	mov	r3, r0
    1ccc:	2b00      	cmp	r3, #0
    1cce:	d005      	beq.n	1cdc <atoi+0x66>
    1cd0:	2310      	movs	r3, #16
    1cd2:	60fb      	str	r3, [r7, #12]
    1cd4:	687b      	ldr	r3, [r7, #4]
    1cd6:	3301      	adds	r3, #1
    1cd8:	607b      	str	r3, [r7, #4]
    1cda:	e012      	b.n	1d02 <atoi+0x8c>
    1cdc:	687b      	ldr	r3, [r7, #4]
    1cde:	781b      	ldrb	r3, [r3, #0]
    1ce0:	2b30      	cmp	r3, #48	; 0x30
    1ce2:	d128      	bne.n	1d36 <atoi+0xc0>
    1ce4:	687b      	ldr	r3, [r7, #4]
    1ce6:	3301      	adds	r3, #1
    1ce8:	781b      	ldrb	r3, [r3, #0]
    1cea:	2b78      	cmp	r3, #120	; 0x78
    1cec:	d004      	beq.n	1cf8 <atoi+0x82>
    1cee:	687b      	ldr	r3, [r7, #4]
    1cf0:	3301      	adds	r3, #1
    1cf2:	781b      	ldrb	r3, [r3, #0]
    1cf4:	2b58      	cmp	r3, #88	; 0x58
    1cf6:	d11e      	bne.n	1d36 <atoi+0xc0>
    1cf8:	2310      	movs	r3, #16
    1cfa:	60fb      	str	r3, [r7, #12]
    1cfc:	687b      	ldr	r3, [r7, #4]
    1cfe:	3302      	adds	r3, #2
    1d00:	607b      	str	r3, [r7, #4]
    1d02:	e018      	b.n	1d36 <atoi+0xc0>
    1d04:	7afb      	ldrb	r3, [r7, #11]
    1d06:	2b60      	cmp	r3, #96	; 0x60
    1d08:	d902      	bls.n	1d10 <atoi+0x9a>
    1d0a:	7afb      	ldrb	r3, [r7, #11]
    1d0c:	3b20      	subs	r3, #32
    1d0e:	72fb      	strb	r3, [r7, #11]
    1d10:	7afb      	ldrb	r3, [r7, #11]
    1d12:	3b30      	subs	r3, #48	; 0x30
    1d14:	72fb      	strb	r3, [r7, #11]
    1d16:	7afb      	ldrb	r3, [r7, #11]
    1d18:	2b09      	cmp	r3, #9
    1d1a:	d902      	bls.n	1d22 <atoi+0xac>
    1d1c:	7afb      	ldrb	r3, [r7, #11]
    1d1e:	3b07      	subs	r3, #7
    1d20:	72fb      	strb	r3, [r7, #11]
    1d22:	697b      	ldr	r3, [r7, #20]
    1d24:	68fa      	ldr	r2, [r7, #12]
    1d26:	fb02 f203 	mul.w	r2, r2, r3
    1d2a:	7afb      	ldrb	r3, [r7, #11]
    1d2c:	4413      	add	r3, r2
    1d2e:	617b      	str	r3, [r7, #20]
    1d30:	687b      	ldr	r3, [r7, #4]
    1d32:	3301      	adds	r3, #1
    1d34:	607b      	str	r3, [r7, #4]
    1d36:	687b      	ldr	r3, [r7, #4]
    1d38:	781b      	ldrb	r3, [r3, #0]
    1d3a:	72fb      	strb	r3, [r7, #11]
    1d3c:	7afb      	ldrb	r3, [r7, #11]
    1d3e:	2b00      	cmp	r3, #0
    1d40:	d00d      	beq.n	1d5e <atoi+0xe8>
    1d42:	68fb      	ldr	r3, [r7, #12]
    1d44:	2b0a      	cmp	r3, #10
    1d46:	d10a      	bne.n	1d5e <atoi+0xe8>
    1d48:	7afb      	ldrb	r3, [r7, #11]
    1d4a:	4618      	mov	r0, r3
    1d4c:	f7ff ff61 	bl	1c12 <digit>
    1d50:	4603      	mov	r3, r0
    1d52:	2b00      	cmp	r3, #0
    1d54:	bf14      	ite	ne
    1d56:	2301      	movne	r3, #1
    1d58:	2300      	moveq	r3, #0
    1d5a:	b2db      	uxtb	r3, r3
    1d5c:	e009      	b.n	1d72 <atoi+0xfc>
    1d5e:	7afb      	ldrb	r3, [r7, #11]
    1d60:	4618      	mov	r0, r3
    1d62:	f7ff ff69 	bl	1c38 <hexdigit>
    1d66:	4603      	mov	r3, r0
    1d68:	2b00      	cmp	r3, #0
    1d6a:	bf14      	ite	ne
    1d6c:	2301      	movne	r3, #1
    1d6e:	2300      	moveq	r3, #0
    1d70:	b2db      	uxtb	r3, r3
    1d72:	2b00      	cmp	r3, #0
    1d74:	d1c6      	bne.n	1d04 <atoi+0x8e>
    1d76:	693b      	ldr	r3, [r7, #16]
    1d78:	697a      	ldr	r2, [r7, #20]
    1d7a:	fb02 f303 	mul.w	r3, r2, r3
    1d7e:	4618      	mov	r0, r3
    1d80:	3718      	adds	r7, #24
    1d82:	46bd      	mov	sp, r7
    1d84:	bd80      	pop	{r7, pc}

00001d86 <move>:
    1d86:	b480      	push	{r7}
    1d88:	b085      	sub	sp, #20
    1d8a:	af00      	add	r7, sp, #0
    1d8c:	60f8      	str	r0, [r7, #12]
    1d8e:	60b9      	str	r1, [r7, #8]
    1d90:	607a      	str	r2, [r7, #4]
    1d92:	e00a      	b.n	1daa <move+0x24>
    1d94:	68bb      	ldr	r3, [r7, #8]
    1d96:	1c5a      	adds	r2, r3, #1
    1d98:	60ba      	str	r2, [r7, #8]
    1d9a:	68fa      	ldr	r2, [r7, #12]
    1d9c:	1c51      	adds	r1, r2, #1
    1d9e:	60f9      	str	r1, [r7, #12]
    1da0:	7812      	ldrb	r2, [r2, #0]
    1da2:	701a      	strb	r2, [r3, #0]
    1da4:	687b      	ldr	r3, [r7, #4]
    1da6:	3b01      	subs	r3, #1
    1da8:	607b      	str	r3, [r7, #4]
    1daa:	687b      	ldr	r3, [r7, #4]
    1dac:	2b00      	cmp	r3, #0
    1dae:	d1f1      	bne.n	1d94 <move+0xe>
    1db0:	bf00      	nop
    1db2:	3714      	adds	r7, #20
    1db4:	46bd      	mov	sp, r7
    1db6:	bc80      	pop	{r7}
    1db8:	4770      	bx	lr

00001dba <strlen>:
    1dba:	b480      	push	{r7}
    1dbc:	b085      	sub	sp, #20
    1dbe:	af00      	add	r7, sp, #0
    1dc0:	6078      	str	r0, [r7, #4]
    1dc2:	2300      	movs	r3, #0
    1dc4:	60fb      	str	r3, [r7, #12]
    1dc6:	e002      	b.n	1dce <strlen+0x14>
    1dc8:	68fb      	ldr	r3, [r7, #12]
    1dca:	3301      	adds	r3, #1
    1dcc:	60fb      	str	r3, [r7, #12]
    1dce:	68fb      	ldr	r3, [r7, #12]
    1dd0:	687a      	ldr	r2, [r7, #4]
    1dd2:	4413      	add	r3, r2
    1dd4:	781b      	ldrb	r3, [r3, #0]
    1dd6:	2b00      	cmp	r3, #0
    1dd8:	d1f6      	bne.n	1dc8 <strlen+0xe>
    1dda:	68fb      	ldr	r3, [r7, #12]
    1ddc:	4618      	mov	r0, r3
    1dde:	3714      	adds	r7, #20
    1de0:	46bd      	mov	sp, r7
    1de2:	bc80      	pop	{r7}
    1de4:	4770      	bx	lr

00001de6 <fill>:
    1de6:	b480      	push	{r7}
    1de8:	b087      	sub	sp, #28
    1dea:	af00      	add	r7, sp, #0
    1dec:	60f8      	str	r0, [r7, #12]
    1dee:	60b9      	str	r1, [r7, #8]
    1df0:	4613      	mov	r3, r2
    1df2:	71fb      	strb	r3, [r7, #7]
    1df4:	2300      	movs	r3, #0
    1df6:	617b      	str	r3, [r7, #20]
    1df8:	e007      	b.n	1e0a <fill+0x24>
    1dfa:	68fb      	ldr	r3, [r7, #12]
    1dfc:	1c5a      	adds	r2, r3, #1
    1dfe:	60fa      	str	r2, [r7, #12]
    1e00:	79fa      	ldrb	r2, [r7, #7]
    1e02:	701a      	strb	r2, [r3, #0]
    1e04:	697b      	ldr	r3, [r7, #20]
    1e06:	3301      	adds	r3, #1
    1e08:	617b      	str	r3, [r7, #20]
    1e0a:	697a      	ldr	r2, [r7, #20]
    1e0c:	68bb      	ldr	r3, [r7, #8]
    1e0e:	429a      	cmp	r2, r3
    1e10:	d3f3      	bcc.n	1dfa <fill+0x14>
    1e12:	bf00      	nop
    1e14:	371c      	adds	r7, #28
    1e16:	46bd      	mov	sp, r7
    1e18:	bc80      	pop	{r7}
    1e1a:	4770      	bx	lr

00001e1c <is_lower>:
    1e1c:	b480      	push	{r7}
    1e1e:	b083      	sub	sp, #12
    1e20:	af00      	add	r7, sp, #0
    1e22:	4603      	mov	r3, r0
    1e24:	71fb      	strb	r3, [r7, #7]
    1e26:	79fb      	ldrb	r3, [r7, #7]
    1e28:	2b60      	cmp	r3, #96	; 0x60
    1e2a:	d904      	bls.n	1e36 <is_lower+0x1a>
    1e2c:	79fb      	ldrb	r3, [r7, #7]
    1e2e:	2b7a      	cmp	r3, #122	; 0x7a
    1e30:	d801      	bhi.n	1e36 <is_lower+0x1a>
    1e32:	2301      	movs	r3, #1
    1e34:	e000      	b.n	1e38 <is_lower+0x1c>
    1e36:	2300      	movs	r3, #0
    1e38:	4618      	mov	r0, r3
    1e3a:	370c      	adds	r7, #12
    1e3c:	46bd      	mov	sp, r7
    1e3e:	bc80      	pop	{r7}
    1e40:	4770      	bx	lr

00001e42 <is_upper>:
    1e42:	b480      	push	{r7}
    1e44:	b083      	sub	sp, #12
    1e46:	af00      	add	r7, sp, #0
    1e48:	4603      	mov	r3, r0
    1e4a:	71fb      	strb	r3, [r7, #7]
    1e4c:	79fb      	ldrb	r3, [r7, #7]
    1e4e:	2b40      	cmp	r3, #64	; 0x40
    1e50:	d904      	bls.n	1e5c <is_upper+0x1a>
    1e52:	79fb      	ldrb	r3, [r7, #7]
    1e54:	2b5a      	cmp	r3, #90	; 0x5a
    1e56:	d801      	bhi.n	1e5c <is_upper+0x1a>
    1e58:	2301      	movs	r3, #1
    1e5a:	e000      	b.n	1e5e <is_upper+0x1c>
    1e5c:	2300      	movs	r3, #0
    1e5e:	4618      	mov	r0, r3
    1e60:	370c      	adds	r7, #12
    1e62:	46bd      	mov	sp, r7
    1e64:	bc80      	pop	{r7}
    1e66:	4770      	bx	lr

00001e68 <uppercase>:
    1e68:	b580      	push	{r7, lr}
    1e6a:	b082      	sub	sp, #8
    1e6c:	af00      	add	r7, sp, #0
    1e6e:	6078      	str	r0, [r7, #4]
    1e70:	e010      	b.n	1e94 <uppercase+0x2c>
    1e72:	687b      	ldr	r3, [r7, #4]
    1e74:	781b      	ldrb	r3, [r3, #0]
    1e76:	4618      	mov	r0, r3
    1e78:	f7ff ffd0 	bl	1e1c <is_lower>
    1e7c:	4603      	mov	r3, r0
    1e7e:	2b00      	cmp	r3, #0
    1e80:	d005      	beq.n	1e8e <uppercase+0x26>
    1e82:	687b      	ldr	r3, [r7, #4]
    1e84:	781b      	ldrb	r3, [r3, #0]
    1e86:	3b20      	subs	r3, #32
    1e88:	b2da      	uxtb	r2, r3
    1e8a:	687b      	ldr	r3, [r7, #4]
    1e8c:	701a      	strb	r2, [r3, #0]
    1e8e:	687b      	ldr	r3, [r7, #4]
    1e90:	3301      	adds	r3, #1
    1e92:	607b      	str	r3, [r7, #4]
    1e94:	687b      	ldr	r3, [r7, #4]
    1e96:	781b      	ldrb	r3, [r3, #0]
    1e98:	2b00      	cmp	r3, #0
    1e9a:	d1ea      	bne.n	1e72 <uppercase+0xa>
    1e9c:	bf00      	nop
    1e9e:	3708      	adds	r7, #8
    1ea0:	46bd      	mov	sp, r7
    1ea2:	bd80      	pop	{r7, pc}

00001ea4 <scan>:
    1ea4:	b480      	push	{r7}
    1ea6:	b085      	sub	sp, #20
    1ea8:	af00      	add	r7, sp, #0
    1eaa:	60f8      	str	r0, [r7, #12]
    1eac:	60b9      	str	r1, [r7, #8]
    1eae:	4613      	mov	r3, r2
    1eb0:	71fb      	strb	r3, [r7, #7]
    1eb2:	e002      	b.n	1eba <scan+0x16>
    1eb4:	68bb      	ldr	r3, [r7, #8]
    1eb6:	3301      	adds	r3, #1
    1eb8:	60bb      	str	r3, [r7, #8]
    1eba:	68bb      	ldr	r3, [r7, #8]
    1ebc:	68fa      	ldr	r2, [r7, #12]
    1ebe:	4413      	add	r3, r2
    1ec0:	781b      	ldrb	r3, [r3, #0]
    1ec2:	2b00      	cmp	r3, #0
    1ec4:	d006      	beq.n	1ed4 <scan+0x30>
    1ec6:	68bb      	ldr	r3, [r7, #8]
    1ec8:	68fa      	ldr	r2, [r7, #12]
    1eca:	4413      	add	r3, r2
    1ecc:	781b      	ldrb	r3, [r3, #0]
    1ece:	79fa      	ldrb	r2, [r7, #7]
    1ed0:	429a      	cmp	r2, r3
    1ed2:	d1ef      	bne.n	1eb4 <scan+0x10>
    1ed4:	68bb      	ldr	r3, [r7, #8]
    1ed6:	4618      	mov	r0, r3
    1ed8:	3714      	adds	r7, #20
    1eda:	46bd      	mov	sp, r7
    1edc:	bc80      	pop	{r7}
    1ede:	4770      	bx	lr

00001ee0 <skip>:
    1ee0:	b480      	push	{r7}
    1ee2:	b085      	sub	sp, #20
    1ee4:	af00      	add	r7, sp, #0
    1ee6:	60f8      	str	r0, [r7, #12]
    1ee8:	60b9      	str	r1, [r7, #8]
    1eea:	4613      	mov	r3, r2
    1eec:	71fb      	strb	r3, [r7, #7]
    1eee:	e002      	b.n	1ef6 <skip+0x16>
    1ef0:	68bb      	ldr	r3, [r7, #8]
    1ef2:	3301      	adds	r3, #1
    1ef4:	60bb      	str	r3, [r7, #8]
    1ef6:	68bb      	ldr	r3, [r7, #8]
    1ef8:	68fa      	ldr	r2, [r7, #12]
    1efa:	4413      	add	r3, r2
    1efc:	781b      	ldrb	r3, [r3, #0]
    1efe:	2b00      	cmp	r3, #0
    1f00:	d006      	beq.n	1f10 <skip+0x30>
    1f02:	68bb      	ldr	r3, [r7, #8]
    1f04:	68fa      	ldr	r2, [r7, #12]
    1f06:	4413      	add	r3, r2
    1f08:	781b      	ldrb	r3, [r3, #0]
    1f0a:	79fa      	ldrb	r2, [r7, #7]
    1f0c:	429a      	cmp	r2, r3
    1f0e:	d0ef      	beq.n	1ef0 <skip+0x10>
    1f10:	68bb      	ldr	r3, [r7, #8]
    1f12:	4618      	mov	r0, r3
    1f14:	3714      	adds	r7, #20
    1f16:	46bd      	mov	sp, r7
    1f18:	bc80      	pop	{r7}
    1f1a:	4770      	bx	lr

00001f1c <strcat>:
    1f1c:	b580      	push	{r7, lr}
    1f1e:	b082      	sub	sp, #8
    1f20:	af00      	add	r7, sp, #0
    1f22:	6078      	str	r0, [r7, #4]
    1f24:	6039      	str	r1, [r7, #0]
    1f26:	6878      	ldr	r0, [r7, #4]
    1f28:	f7ff ff47 	bl	1dba <strlen>
    1f2c:	4603      	mov	r3, r0
    1f2e:	461a      	mov	r2, r3
    1f30:	687b      	ldr	r3, [r7, #4]
    1f32:	4413      	add	r3, r2
    1f34:	607b      	str	r3, [r7, #4]
    1f36:	e007      	b.n	1f48 <strcat+0x2c>
    1f38:	687b      	ldr	r3, [r7, #4]
    1f3a:	1c5a      	adds	r2, r3, #1
    1f3c:	607a      	str	r2, [r7, #4]
    1f3e:	683a      	ldr	r2, [r7, #0]
    1f40:	1c51      	adds	r1, r2, #1
    1f42:	6039      	str	r1, [r7, #0]
    1f44:	7812      	ldrb	r2, [r2, #0]
    1f46:	701a      	strb	r2, [r3, #0]
    1f48:	683b      	ldr	r3, [r7, #0]
    1f4a:	781b      	ldrb	r3, [r3, #0]
    1f4c:	2b00      	cmp	r3, #0
    1f4e:	d1f3      	bne.n	1f38 <strcat+0x1c>
    1f50:	687b      	ldr	r3, [r7, #4]
    1f52:	2200      	movs	r2, #0
    1f54:	701a      	strb	r2, [r3, #0]
    1f56:	687b      	ldr	r3, [r7, #4]
    1f58:	4618      	mov	r0, r3
    1f5a:	3708      	adds	r7, #8
    1f5c:	46bd      	mov	sp, r7
    1f5e:	bd80      	pop	{r7, pc}

00001f60 <config_pin>:
    1f60:	b480      	push	{r7}
    1f62:	b087      	sub	sp, #28
    1f64:	af00      	add	r7, sp, #0
    1f66:	60f8      	str	r0, [r7, #12]
    1f68:	60b9      	str	r1, [r7, #8]
    1f6a:	607a      	str	r2, [r7, #4]
    1f6c:	68bb      	ldr	r3, [r7, #8]
    1f6e:	b2db      	uxtb	r3, r3
    1f70:	009b      	lsls	r3, r3, #2
    1f72:	b2db      	uxtb	r3, r3
    1f74:	f003 031c 	and.w	r3, r3, #28
    1f78:	75fb      	strb	r3, [r7, #23]
    1f7a:	68bb      	ldr	r3, [r7, #8]
    1f7c:	08da      	lsrs	r2, r3, #3
    1f7e:	68bb      	ldr	r3, [r7, #8]
    1f80:	08d9      	lsrs	r1, r3, #3
    1f82:	68fb      	ldr	r3, [r7, #12]
    1f84:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1f88:	7df9      	ldrb	r1, [r7, #23]
    1f8a:	200f      	movs	r0, #15
    1f8c:	fa00 f101 	lsl.w	r1, r0, r1
    1f90:	43c9      	mvns	r1, r1
    1f92:	4019      	ands	r1, r3
    1f94:	68fb      	ldr	r3, [r7, #12]
    1f96:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1f9a:	68bb      	ldr	r3, [r7, #8]
    1f9c:	08da      	lsrs	r2, r3, #3
    1f9e:	68bb      	ldr	r3, [r7, #8]
    1fa0:	08d9      	lsrs	r1, r3, #3
    1fa2:	68fb      	ldr	r3, [r7, #12]
    1fa4:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1fa8:	7dfb      	ldrb	r3, [r7, #23]
    1faa:	6878      	ldr	r0, [r7, #4]
    1fac:	fa00 f303 	lsl.w	r3, r0, r3
    1fb0:	4319      	orrs	r1, r3
    1fb2:	68fb      	ldr	r3, [r7, #12]
    1fb4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1fb8:	bf00      	nop
    1fba:	371c      	adds	r7, #28
    1fbc:	46bd      	mov	sp, r7
    1fbe:	bc80      	pop	{r7}
    1fc0:	4770      	bx	lr

00001fc2 <read_pin>:
    1fc2:	b480      	push	{r7}
    1fc4:	b083      	sub	sp, #12
    1fc6:	af00      	add	r7, sp, #0
    1fc8:	6078      	str	r0, [r7, #4]
    1fca:	6039      	str	r1, [r7, #0]
    1fcc:	687b      	ldr	r3, [r7, #4]
    1fce:	689b      	ldr	r3, [r3, #8]
    1fd0:	2101      	movs	r1, #1
    1fd2:	683a      	ldr	r2, [r7, #0]
    1fd4:	fa01 f202 	lsl.w	r2, r1, r2
    1fd8:	4013      	ands	r3, r2
    1fda:	4618      	mov	r0, r3
    1fdc:	370c      	adds	r7, #12
    1fde:	46bd      	mov	sp, r7
    1fe0:	bc80      	pop	{r7}
    1fe2:	4770      	bx	lr

00001fe4 <write_pin>:
    1fe4:	b480      	push	{r7}
    1fe6:	b085      	sub	sp, #20
    1fe8:	af00      	add	r7, sp, #0
    1fea:	60f8      	str	r0, [r7, #12]
    1fec:	60b9      	str	r1, [r7, #8]
    1fee:	607a      	str	r2, [r7, #4]
    1ff0:	687b      	ldr	r3, [r7, #4]
    1ff2:	2b00      	cmp	r3, #0
    1ff4:	d009      	beq.n	200a <write_pin+0x26>
    1ff6:	68fb      	ldr	r3, [r7, #12]
    1ff8:	68db      	ldr	r3, [r3, #12]
    1ffa:	2101      	movs	r1, #1
    1ffc:	68ba      	ldr	r2, [r7, #8]
    1ffe:	fa01 f202 	lsl.w	r2, r1, r2
    2002:	431a      	orrs	r2, r3
    2004:	68fb      	ldr	r3, [r7, #12]
    2006:	60da      	str	r2, [r3, #12]
    2008:	e009      	b.n	201e <write_pin+0x3a>
    200a:	68fb      	ldr	r3, [r7, #12]
    200c:	68db      	ldr	r3, [r3, #12]
    200e:	2101      	movs	r1, #1
    2010:	68ba      	ldr	r2, [r7, #8]
    2012:	fa01 f202 	lsl.w	r2, r1, r2
    2016:	43d2      	mvns	r2, r2
    2018:	401a      	ands	r2, r3
    201a:	68fb      	ldr	r3, [r7, #12]
    201c:	60da      	str	r2, [r3, #12]
    201e:	bf00      	nop
    2020:	3714      	adds	r7, #20
    2022:	46bd      	mov	sp, r7
    2024:	bc80      	pop	{r7}
    2026:	4770      	bx	lr

00002028 <toggle_pin>:
    2028:	b480      	push	{r7}
    202a:	b083      	sub	sp, #12
    202c:	af00      	add	r7, sp, #0
    202e:	6078      	str	r0, [r7, #4]
    2030:	6039      	str	r1, [r7, #0]
    2032:	687b      	ldr	r3, [r7, #4]
    2034:	68db      	ldr	r3, [r3, #12]
    2036:	2101      	movs	r1, #1
    2038:	683a      	ldr	r2, [r7, #0]
    203a:	fa01 f202 	lsl.w	r2, r1, r2
    203e:	405a      	eors	r2, r3
    2040:	687b      	ldr	r3, [r7, #4]
    2042:	60da      	str	r2, [r3, #12]
    2044:	bf00      	nop
    2046:	370c      	adds	r7, #12
    2048:	46bd      	mov	sp, r7
    204a:	bc80      	pop	{r7}
    204c:	4770      	bx	lr
	...

00002050 <set_palette>:
    2050:	b480      	push	{r7}
    2052:	b083      	sub	sp, #12
    2054:	af00      	add	r7, sp, #0
    2056:	6078      	str	r0, [r7, #4]
    2058:	687b      	ldr	r3, [r7, #4]
    205a:	781a      	ldrb	r2, [r3, #0]
    205c:	4b09      	ldr	r3, [pc, #36]	; (2084 <set_palette+0x34>)
    205e:	701a      	strb	r2, [r3, #0]
    2060:	687b      	ldr	r3, [r7, #4]
    2062:	785a      	ldrb	r2, [r3, #1]
    2064:	4b07      	ldr	r3, [pc, #28]	; (2084 <set_palette+0x34>)
    2066:	705a      	strb	r2, [r3, #1]
    2068:	687b      	ldr	r3, [r7, #4]
    206a:	789a      	ldrb	r2, [r3, #2]
    206c:	4b05      	ldr	r3, [pc, #20]	; (2084 <set_palette+0x34>)
    206e:	709a      	strb	r2, [r3, #2]
    2070:	687b      	ldr	r3, [r7, #4]
    2072:	78da      	ldrb	r2, [r3, #3]
    2074:	4b03      	ldr	r3, [pc, #12]	; (2084 <set_palette+0x34>)
    2076:	70da      	strb	r2, [r3, #3]
    2078:	bf00      	nop
    207a:	370c      	adds	r7, #12
    207c:	46bd      	mov	sp, r7
    207e:	bc80      	pop	{r7}
    2080:	4770      	bx	lr
    2082:	bf00      	nop
    2084:	20000108 	.word	0x20000108

00002088 <gfx_blit>:
    2088:	b5f0      	push	{r4, r5, r6, r7, lr}
    208a:	b087      	sub	sp, #28
    208c:	af00      	add	r7, sp, #0
    208e:	60f8      	str	r0, [r7, #12]
    2090:	60b9      	str	r1, [r7, #8]
    2092:	4611      	mov	r1, r2
    2094:	461a      	mov	r2, r3
    2096:	460b      	mov	r3, r1
    2098:	71fb      	strb	r3, [r7, #7]
    209a:	4613      	mov	r3, r2
    209c:	71bb      	strb	r3, [r7, #6]
    209e:	f003 f963 	bl	5368 <get_video_params>
    20a2:	6178      	str	r0, [r7, #20]
    20a4:	68fb      	ldr	r3, [r7, #12]
    20a6:	2b00      	cmp	r3, #0
    20a8:	db0e      	blt.n	20c8 <gfx_blit+0x40>
    20aa:	697b      	ldr	r3, [r7, #20]
    20ac:	899b      	ldrh	r3, [r3, #12]
    20ae:	461a      	mov	r2, r3
    20b0:	68fb      	ldr	r3, [r7, #12]
    20b2:	429a      	cmp	r2, r3
    20b4:	dd08      	ble.n	20c8 <gfx_blit+0x40>
    20b6:	68bb      	ldr	r3, [r7, #8]
    20b8:	2b00      	cmp	r3, #0
    20ba:	db05      	blt.n	20c8 <gfx_blit+0x40>
    20bc:	697b      	ldr	r3, [r7, #20]
    20be:	89db      	ldrh	r3, [r3, #14]
    20c0:	461a      	mov	r2, r3
    20c2:	68bb      	ldr	r3, [r7, #8]
    20c4:	429a      	cmp	r2, r3
    20c6:	dc01      	bgt.n	20cc <gfx_blit+0x44>
    20c8:	2300      	movs	r3, #0
    20ca:	e058      	b.n	217e <gfx_blit+0xf6>
    20cc:	697b      	ldr	r3, [r7, #20]
    20ce:	7a1b      	ldrb	r3, [r3, #8]
    20d0:	461a      	mov	r2, r3
    20d2:	68bb      	ldr	r3, [r7, #8]
    20d4:	fb03 f202 	mul.w	r2, r3, r2
    20d8:	68fb      	ldr	r3, [r7, #12]
    20da:	0fd9      	lsrs	r1, r3, #31
    20dc:	440b      	add	r3, r1
    20de:	105b      	asrs	r3, r3, #1
    20e0:	18d6      	adds	r6, r2, r3
    20e2:	79fb      	ldrb	r3, [r7, #7]
    20e4:	f003 030f 	and.w	r3, r3, #15
    20e8:	71fb      	strb	r3, [r7, #7]
    20ea:	25f0      	movs	r5, #240	; 0xf0
    20ec:	68fb      	ldr	r3, [r7, #12]
    20ee:	f003 0301 	and.w	r3, r3, #1
    20f2:	2b00      	cmp	r3, #0
    20f4:	d103      	bne.n	20fe <gfx_blit+0x76>
    20f6:	79fb      	ldrb	r3, [r7, #7]
    20f8:	011b      	lsls	r3, r3, #4
    20fa:	71fb      	strb	r3, [r7, #7]
    20fc:	250f      	movs	r5, #15
    20fe:	4b22      	ldr	r3, [pc, #136]	; (2188 <gfx_blit+0x100>)
    2100:	5d9c      	ldrb	r4, [r3, r6]
    2102:	79bb      	ldrb	r3, [r7, #6]
    2104:	2b04      	cmp	r3, #4
    2106:	d828      	bhi.n	215a <gfx_blit+0xd2>
    2108:	a201      	add	r2, pc, #4	; (adr r2, 2110 <gfx_blit+0x88>)
    210a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    210e:	bf00      	nop
    2110:	00002125 	.word	0x00002125
    2114:	0000212d 	.word	0x0000212d
    2118:	00002135 	.word	0x00002135
    211c:	0000213d 	.word	0x0000213d
    2120:	0000214d 	.word	0x0000214d
    2124:	79fb      	ldrb	r3, [r7, #7]
    2126:	4323      	orrs	r3, r4
    2128:	b2dc      	uxtb	r4, r3
    212a:	e016      	b.n	215a <gfx_blit+0xd2>
    212c:	79fb      	ldrb	r3, [r7, #7]
    212e:	4023      	ands	r3, r4
    2130:	b2dc      	uxtb	r4, r3
    2132:	e012      	b.n	215a <gfx_blit+0xd2>
    2134:	79fb      	ldrb	r3, [r7, #7]
    2136:	4063      	eors	r3, r4
    2138:	b2dc      	uxtb	r4, r3
    213a:	e00e      	b.n	215a <gfx_blit+0xd2>
    213c:	b26b      	sxtb	r3, r5
    213e:	43db      	mvns	r3, r3
    2140:	b25a      	sxtb	r2, r3
    2142:	b263      	sxtb	r3, r4
    2144:	4053      	eors	r3, r2
    2146:	b25b      	sxtb	r3, r3
    2148:	b2dc      	uxtb	r4, r3
    214a:	e006      	b.n	215a <gfx_blit+0xd2>
    214c:	ea04 0305 	and.w	r3, r4, r5
    2150:	b2dc      	uxtb	r4, r3
    2152:	79fb      	ldrb	r3, [r7, #7]
    2154:	4323      	orrs	r3, r4
    2156:	b2dc      	uxtb	r4, r3
    2158:	bf00      	nop
    215a:	4b0b      	ldr	r3, [pc, #44]	; (2188 <gfx_blit+0x100>)
    215c:	4622      	mov	r2, r4
    215e:	559a      	strb	r2, [r3, r6]
    2160:	4622      	mov	r2, r4
    2162:	462b      	mov	r3, r5
    2164:	43db      	mvns	r3, r3
    2166:	4013      	ands	r3, r2
    2168:	79fa      	ldrb	r2, [r7, #7]
    216a:	2a00      	cmp	r2, #0
    216c:	bf0c      	ite	eq
    216e:	2201      	moveq	r2, #1
    2170:	2200      	movne	r2, #0
    2172:	b2d2      	uxtb	r2, r2
    2174:	4293      	cmp	r3, r2
    2176:	bf0c      	ite	eq
    2178:	2301      	moveq	r3, #1
    217a:	2300      	movne	r3, #0
    217c:	b2db      	uxtb	r3, r3
    217e:	4618      	mov	r0, r3
    2180:	371c      	adds	r7, #28
    2182:	46bd      	mov	sp, r7
    2184:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2186:	bf00      	nop
    2188:	20002654 	.word	0x20002654

0000218c <gfx_plot>:
    218c:	b5b0      	push	{r4, r5, r7, lr}
    218e:	b086      	sub	sp, #24
    2190:	af00      	add	r7, sp, #0
    2192:	60f8      	str	r0, [r7, #12]
    2194:	60b9      	str	r1, [r7, #8]
    2196:	4613      	mov	r3, r2
    2198:	71fb      	strb	r3, [r7, #7]
    219a:	f003 f8e5 	bl	5368 <get_video_params>
    219e:	6178      	str	r0, [r7, #20]
    21a0:	68fb      	ldr	r3, [r7, #12]
    21a2:	2b00      	cmp	r3, #0
    21a4:	db39      	blt.n	221a <gfx_plot+0x8e>
    21a6:	697b      	ldr	r3, [r7, #20]
    21a8:	899b      	ldrh	r3, [r3, #12]
    21aa:	461a      	mov	r2, r3
    21ac:	68fb      	ldr	r3, [r7, #12]
    21ae:	429a      	cmp	r2, r3
    21b0:	dd33      	ble.n	221a <gfx_plot+0x8e>
    21b2:	68bb      	ldr	r3, [r7, #8]
    21b4:	2b00      	cmp	r3, #0
    21b6:	db30      	blt.n	221a <gfx_plot+0x8e>
    21b8:	697b      	ldr	r3, [r7, #20]
    21ba:	89db      	ldrh	r3, [r3, #14]
    21bc:	461a      	mov	r2, r3
    21be:	68bb      	ldr	r3, [r7, #8]
    21c0:	429a      	cmp	r2, r3
    21c2:	dd2a      	ble.n	221a <gfx_plot+0x8e>
    21c4:	697b      	ldr	r3, [r7, #20]
    21c6:	7a1b      	ldrb	r3, [r3, #8]
    21c8:	461a      	mov	r2, r3
    21ca:	68bb      	ldr	r3, [r7, #8]
    21cc:	fb03 f202 	mul.w	r2, r3, r2
    21d0:	68fb      	ldr	r3, [r7, #12]
    21d2:	0fd9      	lsrs	r1, r3, #31
    21d4:	440b      	add	r3, r1
    21d6:	105b      	asrs	r3, r3, #1
    21d8:	18d5      	adds	r5, r2, r3
    21da:	79fb      	ldrb	r3, [r7, #7]
    21dc:	f003 030f 	and.w	r3, r3, #15
    21e0:	71fb      	strb	r3, [r7, #7]
    21e2:	4b10      	ldr	r3, [pc, #64]	; (2224 <gfx_plot+0x98>)
    21e4:	5d5c      	ldrb	r4, [r3, r5]
    21e6:	68fb      	ldr	r3, [r7, #12]
    21e8:	f003 0301 	and.w	r3, r3, #1
    21ec:	2b00      	cmp	r3, #0
    21ee:	d006      	beq.n	21fe <gfx_plot+0x72>
    21f0:	f024 030f 	bic.w	r3, r4, #15
    21f4:	b2dc      	uxtb	r4, r3
    21f6:	79fb      	ldrb	r3, [r7, #7]
    21f8:	4323      	orrs	r3, r4
    21fa:	b2dc      	uxtb	r4, r3
    21fc:	e009      	b.n	2212 <gfx_plot+0x86>
    21fe:	f004 030f 	and.w	r3, r4, #15
    2202:	b2dc      	uxtb	r4, r3
    2204:	79fb      	ldrb	r3, [r7, #7]
    2206:	011b      	lsls	r3, r3, #4
    2208:	b25a      	sxtb	r2, r3
    220a:	b263      	sxtb	r3, r4
    220c:	4313      	orrs	r3, r2
    220e:	b25b      	sxtb	r3, r3
    2210:	b2dc      	uxtb	r4, r3
    2212:	4b04      	ldr	r3, [pc, #16]	; (2224 <gfx_plot+0x98>)
    2214:	4622      	mov	r2, r4
    2216:	555a      	strb	r2, [r3, r5]
    2218:	e000      	b.n	221c <gfx_plot+0x90>
    221a:	bf00      	nop
    221c:	3718      	adds	r7, #24
    221e:	46bd      	mov	sp, r7
    2220:	bdb0      	pop	{r4, r5, r7, pc}
    2222:	bf00      	nop
    2224:	20002654 	.word	0x20002654

00002228 <gfx_cls>:
    2228:	b580      	push	{r7, lr}
    222a:	b082      	sub	sp, #8
    222c:	af00      	add	r7, sp, #0
    222e:	f003 f89b 	bl	5368 <get_video_params>
    2232:	6038      	str	r0, [r7, #0]
    2234:	2300      	movs	r3, #0
    2236:	607b      	str	r3, [r7, #4]
    2238:	e007      	b.n	224a <gfx_cls+0x22>
    223a:	4a0d      	ldr	r2, [pc, #52]	; (2270 <gfx_cls+0x48>)
    223c:	687b      	ldr	r3, [r7, #4]
    223e:	4413      	add	r3, r2
    2240:	2200      	movs	r2, #0
    2242:	701a      	strb	r2, [r3, #0]
    2244:	687b      	ldr	r3, [r7, #4]
    2246:	3301      	adds	r3, #1
    2248:	607b      	str	r3, [r7, #4]
    224a:	683b      	ldr	r3, [r7, #0]
    224c:	89db      	ldrh	r3, [r3, #14]
    224e:	461a      	mov	r2, r3
    2250:	683b      	ldr	r3, [r7, #0]
    2252:	7a1b      	ldrb	r3, [r3, #8]
    2254:	fb03 f202 	mul.w	r2, r3, r2
    2258:	687b      	ldr	r3, [r7, #4]
    225a:	429a      	cmp	r2, r3
    225c:	dced      	bgt.n	223a <gfx_cls+0x12>
    225e:	2100      	movs	r1, #0
    2260:	2000      	movs	r0, #0
    2262:	f002 fbab 	bl	49bc <set_cursor>
    2266:	bf00      	nop
    2268:	3708      	adds	r7, #8
    226a:	46bd      	mov	sp, r7
    226c:	bd80      	pop	{r7, pc}
    226e:	bf00      	nop
    2270:	20002654 	.word	0x20002654

00002274 <move_up>:
    2274:	b480      	push	{r7}
    2276:	b085      	sub	sp, #20
    2278:	af00      	add	r7, sp, #0
    227a:	60f8      	str	r0, [r7, #12]
    227c:	60b9      	str	r1, [r7, #8]
    227e:	607a      	str	r2, [r7, #4]
    2280:	e009      	b.n	2296 <move_up+0x22>
    2282:	68bb      	ldr	r3, [r7, #8]
    2284:	3b01      	subs	r3, #1
    2286:	60bb      	str	r3, [r7, #8]
    2288:	68fb      	ldr	r3, [r7, #12]
    228a:	3b01      	subs	r3, #1
    228c:	60fb      	str	r3, [r7, #12]
    228e:	68fb      	ldr	r3, [r7, #12]
    2290:	781a      	ldrb	r2, [r3, #0]
    2292:	68bb      	ldr	r3, [r7, #8]
    2294:	701a      	strb	r2, [r3, #0]
    2296:	687b      	ldr	r3, [r7, #4]
    2298:	1e5a      	subs	r2, r3, #1
    229a:	607a      	str	r2, [r7, #4]
    229c:	2b00      	cmp	r3, #0
    229e:	d1f0      	bne.n	2282 <move_up+0xe>
    22a0:	68bb      	ldr	r3, [r7, #8]
    22a2:	4618      	mov	r0, r3
    22a4:	3714      	adds	r7, #20
    22a6:	46bd      	mov	sp, r7
    22a8:	bc80      	pop	{r7}
    22aa:	4770      	bx	lr

000022ac <move_down>:
    22ac:	b480      	push	{r7}
    22ae:	b085      	sub	sp, #20
    22b0:	af00      	add	r7, sp, #0
    22b2:	60f8      	str	r0, [r7, #12]
    22b4:	60b9      	str	r1, [r7, #8]
    22b6:	607a      	str	r2, [r7, #4]
    22b8:	e007      	b.n	22ca <move_down+0x1e>
    22ba:	68bb      	ldr	r3, [r7, #8]
    22bc:	1c5a      	adds	r2, r3, #1
    22be:	60ba      	str	r2, [r7, #8]
    22c0:	68fa      	ldr	r2, [r7, #12]
    22c2:	1c51      	adds	r1, r2, #1
    22c4:	60f9      	str	r1, [r7, #12]
    22c6:	7812      	ldrb	r2, [r2, #0]
    22c8:	701a      	strb	r2, [r3, #0]
    22ca:	687b      	ldr	r3, [r7, #4]
    22cc:	1e5a      	subs	r2, r3, #1
    22ce:	607a      	str	r2, [r7, #4]
    22d0:	2b00      	cmp	r3, #0
    22d2:	d1f2      	bne.n	22ba <move_down+0xe>
    22d4:	68bb      	ldr	r3, [r7, #8]
    22d6:	4618      	mov	r0, r3
    22d8:	3714      	adds	r7, #20
    22da:	46bd      	mov	sp, r7
    22dc:	bc80      	pop	{r7}
    22de:	4770      	bx	lr

000022e0 <gfx_scroll_up>:
    22e0:	b580      	push	{r7, lr}
    22e2:	b086      	sub	sp, #24
    22e4:	af00      	add	r7, sp, #0
    22e6:	4603      	mov	r3, r0
    22e8:	71fb      	strb	r3, [r7, #7]
    22ea:	f003 f83d 	bl	5368 <get_video_params>
    22ee:	60f8      	str	r0, [r7, #12]
    22f0:	79fb      	ldrb	r3, [r7, #7]
    22f2:	68fa      	ldr	r2, [r7, #12]
    22f4:	7a12      	ldrb	r2, [r2, #8]
    22f6:	fb02 f303 	mul.w	r3, r2, r3
    22fa:	4a15      	ldr	r2, [pc, #84]	; (2350 <gfx_scroll_up+0x70>)
    22fc:	4413      	add	r3, r2
    22fe:	60bb      	str	r3, [r7, #8]
    2300:	4b13      	ldr	r3, [pc, #76]	; (2350 <gfx_scroll_up+0x70>)
    2302:	617b      	str	r3, [r7, #20]
    2304:	68fb      	ldr	r3, [r7, #12]
    2306:	89db      	ldrh	r3, [r3, #14]
    2308:	461a      	mov	r2, r3
    230a:	79fb      	ldrb	r3, [r7, #7]
    230c:	1ad3      	subs	r3, r2, r3
    230e:	68fa      	ldr	r2, [r7, #12]
    2310:	7a12      	ldrb	r2, [r2, #8]
    2312:	fb02 f303 	mul.w	r3, r2, r3
    2316:	613b      	str	r3, [r7, #16]
    2318:	693a      	ldr	r2, [r7, #16]
    231a:	6979      	ldr	r1, [r7, #20]
    231c:	68b8      	ldr	r0, [r7, #8]
    231e:	f7ff ffc5 	bl	22ac <move_down>
    2322:	6178      	str	r0, [r7, #20]
    2324:	68fb      	ldr	r3, [r7, #12]
    2326:	7a1b      	ldrb	r3, [r3, #8]
    2328:	461a      	mov	r2, r3
    232a:	79fb      	ldrb	r3, [r7, #7]
    232c:	fb03 f302 	mul.w	r3, r3, r2
    2330:	613b      	str	r3, [r7, #16]
    2332:	e004      	b.n	233e <gfx_scroll_up+0x5e>
    2334:	697b      	ldr	r3, [r7, #20]
    2336:	1c5a      	adds	r2, r3, #1
    2338:	617a      	str	r2, [r7, #20]
    233a:	2200      	movs	r2, #0
    233c:	701a      	strb	r2, [r3, #0]
    233e:	693b      	ldr	r3, [r7, #16]
    2340:	1e5a      	subs	r2, r3, #1
    2342:	613a      	str	r2, [r7, #16]
    2344:	2b00      	cmp	r3, #0
    2346:	d1f5      	bne.n	2334 <gfx_scroll_up+0x54>
    2348:	bf00      	nop
    234a:	3718      	adds	r7, #24
    234c:	46bd      	mov	sp, r7
    234e:	bd80      	pop	{r7, pc}
    2350:	20002654 	.word	0x20002654

00002354 <gfx_scroll_down>:
    2354:	b580      	push	{r7, lr}
    2356:	b086      	sub	sp, #24
    2358:	af00      	add	r7, sp, #0
    235a:	4603      	mov	r3, r0
    235c:	71fb      	strb	r3, [r7, #7]
    235e:	f003 f803 	bl	5368 <get_video_params>
    2362:	60f8      	str	r0, [r7, #12]
    2364:	68fb      	ldr	r3, [r7, #12]
    2366:	89db      	ldrh	r3, [r3, #14]
    2368:	461a      	mov	r2, r3
    236a:	79fb      	ldrb	r3, [r7, #7]
    236c:	1ad3      	subs	r3, r2, r3
    236e:	68fa      	ldr	r2, [r7, #12]
    2370:	7a12      	ldrb	r2, [r2, #8]
    2372:	fb02 f303 	mul.w	r3, r2, r3
    2376:	4a1a      	ldr	r2, [pc, #104]	; (23e0 <gfx_scroll_down+0x8c>)
    2378:	4413      	add	r3, r2
    237a:	60bb      	str	r3, [r7, #8]
    237c:	68fb      	ldr	r3, [r7, #12]
    237e:	89db      	ldrh	r3, [r3, #14]
    2380:	461a      	mov	r2, r3
    2382:	68fb      	ldr	r3, [r7, #12]
    2384:	7a1b      	ldrb	r3, [r3, #8]
    2386:	fb03 f302 	mul.w	r3, r3, r2
    238a:	4a15      	ldr	r2, [pc, #84]	; (23e0 <gfx_scroll_down+0x8c>)
    238c:	4413      	add	r3, r2
    238e:	617b      	str	r3, [r7, #20]
    2390:	68fb      	ldr	r3, [r7, #12]
    2392:	89db      	ldrh	r3, [r3, #14]
    2394:	461a      	mov	r2, r3
    2396:	79fb      	ldrb	r3, [r7, #7]
    2398:	1ad3      	subs	r3, r2, r3
    239a:	68fa      	ldr	r2, [r7, #12]
    239c:	7a12      	ldrb	r2, [r2, #8]
    239e:	fb02 f303 	mul.w	r3, r2, r3
    23a2:	613b      	str	r3, [r7, #16]
    23a4:	693a      	ldr	r2, [r7, #16]
    23a6:	6979      	ldr	r1, [r7, #20]
    23a8:	68b8      	ldr	r0, [r7, #8]
    23aa:	f7ff ff63 	bl	2274 <move_up>
    23ae:	6178      	str	r0, [r7, #20]
    23b0:	68fb      	ldr	r3, [r7, #12]
    23b2:	7a1b      	ldrb	r3, [r3, #8]
    23b4:	461a      	mov	r2, r3
    23b6:	79fb      	ldrb	r3, [r7, #7]
    23b8:	fb03 f302 	mul.w	r3, r3, r2
    23bc:	613b      	str	r3, [r7, #16]
    23be:	e005      	b.n	23cc <gfx_scroll_down+0x78>
    23c0:	697b      	ldr	r3, [r7, #20]
    23c2:	3b01      	subs	r3, #1
    23c4:	617b      	str	r3, [r7, #20]
    23c6:	697b      	ldr	r3, [r7, #20]
    23c8:	2200      	movs	r2, #0
    23ca:	701a      	strb	r2, [r3, #0]
    23cc:	693b      	ldr	r3, [r7, #16]
    23ce:	1e5a      	subs	r2, r3, #1
    23d0:	613a      	str	r2, [r7, #16]
    23d2:	2b00      	cmp	r3, #0
    23d4:	d1f4      	bne.n	23c0 <gfx_scroll_down+0x6c>
    23d6:	bf00      	nop
    23d8:	3718      	adds	r7, #24
    23da:	46bd      	mov	sp, r7
    23dc:	bd80      	pop	{r7, pc}
    23de:	bf00      	nop
    23e0:	20002654 	.word	0x20002654

000023e4 <gfx_scroll_left>:
    23e4:	b580      	push	{r7, lr}
    23e6:	b088      	sub	sp, #32
    23e8:	af00      	add	r7, sp, #0
    23ea:	4603      	mov	r3, r0
    23ec:	71fb      	strb	r3, [r7, #7]
    23ee:	f002 ffbb 	bl	5368 <get_video_params>
    23f2:	6138      	str	r0, [r7, #16]
    23f4:	2300      	movs	r3, #0
    23f6:	61fb      	str	r3, [r7, #28]
    23f8:	e02a      	b.n	2450 <gfx_scroll_left+0x6c>
    23fa:	693b      	ldr	r3, [r7, #16]
    23fc:	7a1b      	ldrb	r3, [r3, #8]
    23fe:	461a      	mov	r2, r3
    2400:	69fb      	ldr	r3, [r7, #28]
    2402:	fb03 f302 	mul.w	r3, r3, r2
    2406:	4a17      	ldr	r2, [pc, #92]	; (2464 <gfx_scroll_left+0x80>)
    2408:	4413      	add	r3, r2
    240a:	617b      	str	r3, [r7, #20]
    240c:	79fb      	ldrb	r3, [r7, #7]
    240e:	697a      	ldr	r2, [r7, #20]
    2410:	4413      	add	r3, r2
    2412:	60fb      	str	r3, [r7, #12]
    2414:	693b      	ldr	r3, [r7, #16]
    2416:	899b      	ldrh	r3, [r3, #12]
    2418:	085b      	lsrs	r3, r3, #1
    241a:	b29b      	uxth	r3, r3
    241c:	461a      	mov	r2, r3
    241e:	79fb      	ldrb	r3, [r7, #7]
    2420:	1ad3      	subs	r3, r2, r3
    2422:	61bb      	str	r3, [r7, #24]
    2424:	69ba      	ldr	r2, [r7, #24]
    2426:	6979      	ldr	r1, [r7, #20]
    2428:	68f8      	ldr	r0, [r7, #12]
    242a:	f7ff ff3f 	bl	22ac <move_down>
    242e:	6178      	str	r0, [r7, #20]
    2430:	79fb      	ldrb	r3, [r7, #7]
    2432:	61bb      	str	r3, [r7, #24]
    2434:	e004      	b.n	2440 <gfx_scroll_left+0x5c>
    2436:	697b      	ldr	r3, [r7, #20]
    2438:	1c5a      	adds	r2, r3, #1
    243a:	617a      	str	r2, [r7, #20]
    243c:	2200      	movs	r2, #0
    243e:	701a      	strb	r2, [r3, #0]
    2440:	69bb      	ldr	r3, [r7, #24]
    2442:	1e5a      	subs	r2, r3, #1
    2444:	61ba      	str	r2, [r7, #24]
    2446:	2b00      	cmp	r3, #0
    2448:	d1f5      	bne.n	2436 <gfx_scroll_left+0x52>
    244a:	69fb      	ldr	r3, [r7, #28]
    244c:	3301      	adds	r3, #1
    244e:	61fb      	str	r3, [r7, #28]
    2450:	693b      	ldr	r3, [r7, #16]
    2452:	89db      	ldrh	r3, [r3, #14]
    2454:	461a      	mov	r2, r3
    2456:	69fb      	ldr	r3, [r7, #28]
    2458:	429a      	cmp	r2, r3
    245a:	dcce      	bgt.n	23fa <gfx_scroll_left+0x16>
    245c:	bf00      	nop
    245e:	3720      	adds	r7, #32
    2460:	46bd      	mov	sp, r7
    2462:	bd80      	pop	{r7, pc}
    2464:	20002654 	.word	0x20002654

00002468 <gfx_scroll_right>:
    2468:	b580      	push	{r7, lr}
    246a:	b088      	sub	sp, #32
    246c:	af00      	add	r7, sp, #0
    246e:	4603      	mov	r3, r0
    2470:	71fb      	strb	r3, [r7, #7]
    2472:	f002 ff79 	bl	5368 <get_video_params>
    2476:	6138      	str	r0, [r7, #16]
    2478:	2300      	movs	r3, #0
    247a:	61fb      	str	r3, [r7, #28]
    247c:	e02f      	b.n	24de <gfx_scroll_right+0x76>
    247e:	693b      	ldr	r3, [r7, #16]
    2480:	7a1b      	ldrb	r3, [r3, #8]
    2482:	461a      	mov	r2, r3
    2484:	69fb      	ldr	r3, [r7, #28]
    2486:	fb03 f302 	mul.w	r3, r3, r2
    248a:	4a1a      	ldr	r2, [pc, #104]	; (24f4 <gfx_scroll_right+0x8c>)
    248c:	4413      	add	r3, r2
    248e:	693a      	ldr	r2, [r7, #16]
    2490:	7a12      	ldrb	r2, [r2, #8]
    2492:	4413      	add	r3, r2
    2494:	617b      	str	r3, [r7, #20]
    2496:	79fb      	ldrb	r3, [r7, #7]
    2498:	425b      	negs	r3, r3
    249a:	697a      	ldr	r2, [r7, #20]
    249c:	4413      	add	r3, r2
    249e:	60fb      	str	r3, [r7, #12]
    24a0:	693b      	ldr	r3, [r7, #16]
    24a2:	899b      	ldrh	r3, [r3, #12]
    24a4:	085b      	lsrs	r3, r3, #1
    24a6:	b29b      	uxth	r3, r3
    24a8:	461a      	mov	r2, r3
    24aa:	79fb      	ldrb	r3, [r7, #7]
    24ac:	1ad3      	subs	r3, r2, r3
    24ae:	61bb      	str	r3, [r7, #24]
    24b0:	69ba      	ldr	r2, [r7, #24]
    24b2:	6979      	ldr	r1, [r7, #20]
    24b4:	68f8      	ldr	r0, [r7, #12]
    24b6:	f7ff fedd 	bl	2274 <move_up>
    24ba:	6178      	str	r0, [r7, #20]
    24bc:	79fb      	ldrb	r3, [r7, #7]
    24be:	61bb      	str	r3, [r7, #24]
    24c0:	e005      	b.n	24ce <gfx_scroll_right+0x66>
    24c2:	697b      	ldr	r3, [r7, #20]
    24c4:	3b01      	subs	r3, #1
    24c6:	617b      	str	r3, [r7, #20]
    24c8:	697b      	ldr	r3, [r7, #20]
    24ca:	2200      	movs	r2, #0
    24cc:	701a      	strb	r2, [r3, #0]
    24ce:	69bb      	ldr	r3, [r7, #24]
    24d0:	1e5a      	subs	r2, r3, #1
    24d2:	61ba      	str	r2, [r7, #24]
    24d4:	2b00      	cmp	r3, #0
    24d6:	d1f4      	bne.n	24c2 <gfx_scroll_right+0x5a>
    24d8:	69fb      	ldr	r3, [r7, #28]
    24da:	3301      	adds	r3, #1
    24dc:	61fb      	str	r3, [r7, #28]
    24de:	693b      	ldr	r3, [r7, #16]
    24e0:	89db      	ldrh	r3, [r3, #14]
    24e2:	461a      	mov	r2, r3
    24e4:	69fb      	ldr	r3, [r7, #28]
    24e6:	429a      	cmp	r2, r3
    24e8:	dcc9      	bgt.n	247e <gfx_scroll_right+0x16>
    24ea:	bf00      	nop
    24ec:	3720      	adds	r7, #32
    24ee:	46bd      	mov	sp, r7
    24f0:	bd80      	pop	{r7, pc}
    24f2:	bf00      	nop
    24f4:	20002654 	.word	0x20002654

000024f8 <gfx_get_pixel>:
    24f8:	b590      	push	{r4, r7, lr}
    24fa:	b085      	sub	sp, #20
    24fc:	af00      	add	r7, sp, #0
    24fe:	6078      	str	r0, [r7, #4]
    2500:	6039      	str	r1, [r7, #0]
    2502:	f002 ff31 	bl	5368 <get_video_params>
    2506:	60f8      	str	r0, [r7, #12]
    2508:	687b      	ldr	r3, [r7, #4]
    250a:	2b00      	cmp	r3, #0
    250c:	db0e      	blt.n	252c <gfx_get_pixel+0x34>
    250e:	68fb      	ldr	r3, [r7, #12]
    2510:	899b      	ldrh	r3, [r3, #12]
    2512:	461a      	mov	r2, r3
    2514:	687b      	ldr	r3, [r7, #4]
    2516:	429a      	cmp	r2, r3
    2518:	dd08      	ble.n	252c <gfx_get_pixel+0x34>
    251a:	683b      	ldr	r3, [r7, #0]
    251c:	2b00      	cmp	r3, #0
    251e:	db05      	blt.n	252c <gfx_get_pixel+0x34>
    2520:	68fb      	ldr	r3, [r7, #12]
    2522:	89db      	ldrh	r3, [r3, #14]
    2524:	461a      	mov	r2, r3
    2526:	683b      	ldr	r3, [r7, #0]
    2528:	429a      	cmp	r2, r3
    252a:	dc01      	bgt.n	2530 <gfx_get_pixel+0x38>
    252c:	23ff      	movs	r3, #255	; 0xff
    252e:	e014      	b.n	255a <gfx_get_pixel+0x62>
    2530:	68fb      	ldr	r3, [r7, #12]
    2532:	7a1b      	ldrb	r3, [r3, #8]
    2534:	461a      	mov	r2, r3
    2536:	683b      	ldr	r3, [r7, #0]
    2538:	fb03 f202 	mul.w	r2, r3, r2
    253c:	687b      	ldr	r3, [r7, #4]
    253e:	105b      	asrs	r3, r3, #1
    2540:	4413      	add	r3, r2
    2542:	4a08      	ldr	r2, [pc, #32]	; (2564 <gfx_get_pixel+0x6c>)
    2544:	5cd4      	ldrb	r4, [r2, r3]
    2546:	687b      	ldr	r3, [r7, #4]
    2548:	f003 0301 	and.w	r3, r3, #1
    254c:	2b00      	cmp	r3, #0
    254e:	d101      	bne.n	2554 <gfx_get_pixel+0x5c>
    2550:	0923      	lsrs	r3, r4, #4
    2552:	b2dc      	uxtb	r4, r3
    2554:	f004 030f 	and.w	r3, r4, #15
    2558:	b2db      	uxtb	r3, r3
    255a:	4618      	mov	r0, r3
    255c:	3714      	adds	r7, #20
    255e:	46bd      	mov	sp, r7
    2560:	bd90      	pop	{r4, r7, pc}
    2562:	bf00      	nop
    2564:	20002654 	.word	0x20002654

00002568 <gfx_sprite>:
    2568:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    256c:	b086      	sub	sp, #24
    256e:	af00      	add	r7, sp, #0
    2570:	60f8      	str	r0, [r7, #12]
    2572:	60b9      	str	r1, [r7, #8]
    2574:	4611      	mov	r1, r2
    2576:	461a      	mov	r2, r3
    2578:	460b      	mov	r3, r1
    257a:	71fb      	strb	r3, [r7, #7]
    257c:	4613      	mov	r3, r2
    257e:	71bb      	strb	r3, [r7, #6]
    2580:	2300      	movs	r3, #0
    2582:	617b      	str	r3, [r7, #20]
    2584:	4b34      	ldr	r3, [pc, #208]	; (2658 <gfx_sprite+0xf0>)
    2586:	781b      	ldrb	r3, [r3, #0]
    2588:	461a      	mov	r2, r3
    258a:	4b34      	ldr	r3, [pc, #208]	; (265c <gfx_sprite+0xf4>)
    258c:	f813 a002 	ldrb.w	sl, [r3, r2]
    2590:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    2592:	1c5a      	adds	r2, r3, #1
    2594:	63ba      	str	r2, [r7, #56]	; 0x38
    2596:	781c      	ldrb	r4, [r3, #0]
    2598:	4b2f      	ldr	r3, [pc, #188]	; (2658 <gfx_sprite+0xf0>)
    259a:	781b      	ldrb	r3, [r3, #0]
    259c:	461a      	mov	r2, r3
    259e:	4b30      	ldr	r3, [pc, #192]	; (2660 <gfx_sprite+0xf8>)
    25a0:	f813 8002 	ldrb.w	r8, [r3, r2]
    25a4:	4b2c      	ldr	r3, [pc, #176]	; (2658 <gfx_sprite+0xf0>)
    25a6:	781b      	ldrb	r3, [r3, #0]
    25a8:	461a      	mov	r2, r3
    25aa:	2308      	movs	r3, #8
    25ac:	fb93 f3f2 	sdiv	r3, r3, r2
    25b0:	b2de      	uxtb	r6, r3
    25b2:	68bd      	ldr	r5, [r7, #8]
    25b4:	e045      	b.n	2642 <gfx_sprite+0xda>
    25b6:	68fb      	ldr	r3, [r7, #12]
    25b8:	603b      	str	r3, [r7, #0]
    25ba:	e03b      	b.n	2634 <gfx_sprite+0xcc>
    25bc:	4b26      	ldr	r3, [pc, #152]	; (2658 <gfx_sprite+0xf0>)
    25be:	781b      	ldrb	r3, [r3, #0]
    25c0:	2b03      	cmp	r3, #3
    25c2:	d80a      	bhi.n	25da <gfx_sprite+0x72>
    25c4:	ea04 0308 	and.w	r3, r4, r8
    25c8:	b2db      	uxtb	r3, r3
    25ca:	461a      	mov	r2, r3
    25cc:	4653      	mov	r3, sl
    25ce:	fa42 f303 	asr.w	r3, r2, r3
    25d2:	4a24      	ldr	r2, [pc, #144]	; (2664 <gfx_sprite+0xfc>)
    25d4:	f812 9003 	ldrb.w	r9, [r2, r3]
    25d8:	e008      	b.n	25ec <gfx_sprite+0x84>
    25da:	ea04 0308 	and.w	r3, r4, r8
    25de:	b2db      	uxtb	r3, r3
    25e0:	461a      	mov	r2, r3
    25e2:	4653      	mov	r3, sl
    25e4:	fa42 f303 	asr.w	r3, r2, r3
    25e8:	fa5f f983 	uxtb.w	r9, r3
    25ec:	2302      	movs	r3, #2
    25ee:	464a      	mov	r2, r9
    25f0:	4629      	mov	r1, r5
    25f2:	6838      	ldr	r0, [r7, #0]
    25f4:	f7ff fd48 	bl	2088 <gfx_blit>
    25f8:	4602      	mov	r2, r0
    25fa:	697b      	ldr	r3, [r7, #20]
    25fc:	4313      	orrs	r3, r2
    25fe:	617b      	str	r3, [r7, #20]
    2600:	4622      	mov	r2, r4
    2602:	4653      	mov	r3, sl
    2604:	f1c3 0308 	rsb	r3, r3, #8
    2608:	fa02 f303 	lsl.w	r3, r2, r3
    260c:	b2dc      	uxtb	r4, r3
    260e:	4633      	mov	r3, r6
    2610:	3b01      	subs	r3, #1
    2612:	b2de      	uxtb	r6, r3
    2614:	2e00      	cmp	r6, #0
    2616:	d10a      	bne.n	262e <gfx_sprite+0xc6>
    2618:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    261a:	1c5a      	adds	r2, r3, #1
    261c:	63ba      	str	r2, [r7, #56]	; 0x38
    261e:	781c      	ldrb	r4, [r3, #0]
    2620:	4b0d      	ldr	r3, [pc, #52]	; (2658 <gfx_sprite+0xf0>)
    2622:	781b      	ldrb	r3, [r3, #0]
    2624:	461a      	mov	r2, r3
    2626:	2308      	movs	r3, #8
    2628:	fb93 f3f2 	sdiv	r3, r3, r2
    262c:	b2de      	uxtb	r6, r3
    262e:	683b      	ldr	r3, [r7, #0]
    2630:	3301      	adds	r3, #1
    2632:	603b      	str	r3, [r7, #0]
    2634:	79fa      	ldrb	r2, [r7, #7]
    2636:	68fb      	ldr	r3, [r7, #12]
    2638:	4413      	add	r3, r2
    263a:	683a      	ldr	r2, [r7, #0]
    263c:	4293      	cmp	r3, r2
    263e:	dcbd      	bgt.n	25bc <gfx_sprite+0x54>
    2640:	3501      	adds	r5, #1
    2642:	79ba      	ldrb	r2, [r7, #6]
    2644:	68bb      	ldr	r3, [r7, #8]
    2646:	4413      	add	r3, r2
    2648:	42ab      	cmp	r3, r5
    264a:	dcb4      	bgt.n	25b6 <gfx_sprite+0x4e>
    264c:	697b      	ldr	r3, [r7, #20]
    264e:	4618      	mov	r0, r3
    2650:	3718      	adds	r7, #24
    2652:	46bd      	mov	sp, r7
    2654:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    2658:	20000104 	.word	0x20000104
    265c:	00005838 	.word	0x00005838
    2660:	00005830 	.word	0x00005830
    2664:	20000108 	.word	0x20000108

00002668 <set_sysclock>:
    2668:	b480      	push	{r7}
    266a:	af00      	add	r7, sp, #0
    266c:	4a18      	ldr	r2, [pc, #96]	; (26d0 <set_sysclock+0x68>)
    266e:	4b18      	ldr	r3, [pc, #96]	; (26d0 <set_sysclock+0x68>)
    2670:	681b      	ldr	r3, [r3, #0]
    2672:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    2676:	6013      	str	r3, [r2, #0]
    2678:	bf00      	nop
    267a:	4b15      	ldr	r3, [pc, #84]	; (26d0 <set_sysclock+0x68>)
    267c:	681b      	ldr	r3, [r3, #0]
    267e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    2682:	2b00      	cmp	r3, #0
    2684:	d0f9      	beq.n	267a <set_sysclock+0x12>
    2686:	4a12      	ldr	r2, [pc, #72]	; (26d0 <set_sysclock+0x68>)
    2688:	4b11      	ldr	r3, [pc, #68]	; (26d0 <set_sysclock+0x68>)
    268a:	685b      	ldr	r3, [r3, #4]
    268c:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    2690:	6053      	str	r3, [r2, #4]
    2692:	4a0f      	ldr	r2, [pc, #60]	; (26d0 <set_sysclock+0x68>)
    2694:	4b0e      	ldr	r3, [pc, #56]	; (26d0 <set_sysclock+0x68>)
    2696:	681b      	ldr	r3, [r3, #0]
    2698:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    269c:	6013      	str	r3, [r2, #0]
    269e:	bf00      	nop
    26a0:	4b0b      	ldr	r3, [pc, #44]	; (26d0 <set_sysclock+0x68>)
    26a2:	681b      	ldr	r3, [r3, #0]
    26a4:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    26a8:	2b00      	cmp	r3, #0
    26aa:	d0f9      	beq.n	26a0 <set_sysclock+0x38>
    26ac:	4a09      	ldr	r2, [pc, #36]	; (26d4 <set_sysclock+0x6c>)
    26ae:	4b09      	ldr	r3, [pc, #36]	; (26d4 <set_sysclock+0x6c>)
    26b0:	681b      	ldr	r3, [r3, #0]
    26b2:	f043 0312 	orr.w	r3, r3, #18
    26b6:	6013      	str	r3, [r2, #0]
    26b8:	4a05      	ldr	r2, [pc, #20]	; (26d0 <set_sysclock+0x68>)
    26ba:	4b05      	ldr	r3, [pc, #20]	; (26d0 <set_sysclock+0x68>)
    26bc:	685b      	ldr	r3, [r3, #4]
    26be:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    26c2:	f043 0302 	orr.w	r3, r3, #2
    26c6:	6053      	str	r3, [r2, #4]
    26c8:	bf00      	nop
    26ca:	46bd      	mov	sp, r7
    26cc:	bc80      	pop	{r7}
    26ce:	4770      	bx	lr
    26d0:	40021000 	.word	0x40021000
    26d4:	40022000 	.word	0x40022000

000026d8 <draw_balls>:
    26d8:	b590      	push	{r4, r7, lr}
    26da:	b085      	sub	sp, #20
    26dc:	af02      	add	r7, sp, #8
    26de:	f002 fd8b 	bl	51f8 <frame_sync>
    26e2:	2300      	movs	r3, #0
    26e4:	607b      	str	r3, [r7, #4]
    26e6:	e022      	b.n	272e <draw_balls+0x56>
    26e8:	4915      	ldr	r1, [pc, #84]	; (2740 <draw_balls+0x68>)
    26ea:	687a      	ldr	r2, [r7, #4]
    26ec:	4613      	mov	r3, r2
    26ee:	009b      	lsls	r3, r3, #2
    26f0:	4413      	add	r3, r2
    26f2:	009b      	lsls	r3, r3, #2
    26f4:	440b      	add	r3, r1
    26f6:	6818      	ldr	r0, [r3, #0]
    26f8:	4911      	ldr	r1, [pc, #68]	; (2740 <draw_balls+0x68>)
    26fa:	687a      	ldr	r2, [r7, #4]
    26fc:	4613      	mov	r3, r2
    26fe:	009b      	lsls	r3, r3, #2
    2700:	4413      	add	r3, r2
    2702:	009b      	lsls	r3, r3, #2
    2704:	440b      	add	r3, r1
    2706:	3304      	adds	r3, #4
    2708:	681c      	ldr	r4, [r3, #0]
    270a:	490d      	ldr	r1, [pc, #52]	; (2740 <draw_balls+0x68>)
    270c:	687a      	ldr	r2, [r7, #4]
    270e:	4613      	mov	r3, r2
    2710:	009b      	lsls	r3, r3, #2
    2712:	4413      	add	r3, r2
    2714:	009b      	lsls	r3, r3, #2
    2716:	440b      	add	r3, r1
    2718:	3310      	adds	r3, #16
    271a:	681b      	ldr	r3, [r3, #0]
    271c:	9300      	str	r3, [sp, #0]
    271e:	2308      	movs	r3, #8
    2720:	2208      	movs	r2, #8
    2722:	4621      	mov	r1, r4
    2724:	f7ff ff20 	bl	2568 <gfx_sprite>
    2728:	687b      	ldr	r3, [r7, #4]
    272a:	3301      	adds	r3, #1
    272c:	607b      	str	r3, [r7, #4]
    272e:	687b      	ldr	r3, [r7, #4]
    2730:	2b01      	cmp	r3, #1
    2732:	ddd9      	ble.n	26e8 <draw_balls+0x10>
    2734:	f002 fd70 	bl	5218 <wait_sync_end>
    2738:	bf00      	nop
    273a:	370c      	adds	r7, #12
    273c:	46bd      	mov	sp, r7
    273e:	bd90      	pop	{r4, r7, pc}
    2740:	2000262c 	.word	0x2000262c

00002744 <isqrt>:
    2744:	b580      	push	{r7, lr}
    2746:	b084      	sub	sp, #16
    2748:	af00      	add	r7, sp, #0
    274a:	6078      	str	r0, [r7, #4]
    274c:	687b      	ldr	r3, [r7, #4]
    274e:	2b01      	cmp	r3, #1
    2750:	dc01      	bgt.n	2756 <isqrt+0x12>
    2752:	687b      	ldr	r3, [r7, #4]
    2754:	e014      	b.n	2780 <isqrt+0x3c>
    2756:	687b      	ldr	r3, [r7, #4]
    2758:	109b      	asrs	r3, r3, #2
    275a:	4618      	mov	r0, r3
    275c:	f7ff fff2 	bl	2744 <isqrt>
    2760:	4603      	mov	r3, r0
    2762:	005b      	lsls	r3, r3, #1
    2764:	60fb      	str	r3, [r7, #12]
    2766:	68fb      	ldr	r3, [r7, #12]
    2768:	3301      	adds	r3, #1
    276a:	60bb      	str	r3, [r7, #8]
    276c:	68bb      	ldr	r3, [r7, #8]
    276e:	68ba      	ldr	r2, [r7, #8]
    2770:	fb02 f203 	mul.w	r2, r2, r3
    2774:	687b      	ldr	r3, [r7, #4]
    2776:	429a      	cmp	r2, r3
    2778:	dd01      	ble.n	277e <isqrt+0x3a>
    277a:	68fb      	ldr	r3, [r7, #12]
    277c:	e000      	b.n	2780 <isqrt+0x3c>
    277e:	68bb      	ldr	r3, [r7, #8]
    2780:	4618      	mov	r0, r3
    2782:	3710      	adds	r7, #16
    2784:	46bd      	mov	sp, r7
    2786:	bd80      	pop	{r7, pc}

00002788 <distance>:
    2788:	b580      	push	{r7, lr}
    278a:	b082      	sub	sp, #8
    278c:	af00      	add	r7, sp, #0
    278e:	6078      	str	r0, [r7, #4]
    2790:	6039      	str	r1, [r7, #0]
    2792:	687b      	ldr	r3, [r7, #4]
    2794:	681b      	ldr	r3, [r3, #0]
    2796:	683a      	ldr	r2, [r7, #0]
    2798:	6812      	ldr	r2, [r2, #0]
    279a:	fb02 f203 	mul.w	r2, r2, r3
    279e:	687b      	ldr	r3, [r7, #4]
    27a0:	685b      	ldr	r3, [r3, #4]
    27a2:	6839      	ldr	r1, [r7, #0]
    27a4:	6849      	ldr	r1, [r1, #4]
    27a6:	fb01 f303 	mul.w	r3, r1, r3
    27aa:	4413      	add	r3, r2
    27ac:	2b00      	cmp	r3, #0
    27ae:	bfb8      	it	lt
    27b0:	425b      	neglt	r3, r3
    27b2:	4618      	mov	r0, r3
    27b4:	f7ff ffc6 	bl	2744 <isqrt>
    27b8:	4603      	mov	r3, r0
    27ba:	4618      	mov	r0, r3
    27bc:	3708      	adds	r7, #8
    27be:	46bd      	mov	sp, r7
    27c0:	bd80      	pop	{r7, pc}

000027c2 <move_balls>:
    27c2:	b580      	push	{r7, lr}
    27c4:	b082      	sub	sp, #8
    27c6:	af00      	add	r7, sp, #0
    27c8:	f002 fdce 	bl	5368 <get_video_params>
    27cc:	6038      	str	r0, [r7, #0]
    27ce:	2300      	movs	r3, #0
    27d0:	607b      	str	r3, [r7, #4]
    27d2:	e0c3      	b.n	295c <move_balls+0x19a>
    27d4:	4979      	ldr	r1, [pc, #484]	; (29bc <move_balls+0x1fa>)
    27d6:	687a      	ldr	r2, [r7, #4]
    27d8:	4613      	mov	r3, r2
    27da:	009b      	lsls	r3, r3, #2
    27dc:	4413      	add	r3, r2
    27de:	009b      	lsls	r3, r3, #2
    27e0:	440b      	add	r3, r1
    27e2:	6819      	ldr	r1, [r3, #0]
    27e4:	4875      	ldr	r0, [pc, #468]	; (29bc <move_balls+0x1fa>)
    27e6:	687a      	ldr	r2, [r7, #4]
    27e8:	4613      	mov	r3, r2
    27ea:	009b      	lsls	r3, r3, #2
    27ec:	4413      	add	r3, r2
    27ee:	009b      	lsls	r3, r3, #2
    27f0:	4403      	add	r3, r0
    27f2:	3308      	adds	r3, #8
    27f4:	681b      	ldr	r3, [r3, #0]
    27f6:	4419      	add	r1, r3
    27f8:	4870      	ldr	r0, [pc, #448]	; (29bc <move_balls+0x1fa>)
    27fa:	687a      	ldr	r2, [r7, #4]
    27fc:	4613      	mov	r3, r2
    27fe:	009b      	lsls	r3, r3, #2
    2800:	4413      	add	r3, r2
    2802:	009b      	lsls	r3, r3, #2
    2804:	4403      	add	r3, r0
    2806:	6019      	str	r1, [r3, #0]
    2808:	496c      	ldr	r1, [pc, #432]	; (29bc <move_balls+0x1fa>)
    280a:	687a      	ldr	r2, [r7, #4]
    280c:	4613      	mov	r3, r2
    280e:	009b      	lsls	r3, r3, #2
    2810:	4413      	add	r3, r2
    2812:	009b      	lsls	r3, r3, #2
    2814:	440b      	add	r3, r1
    2816:	681b      	ldr	r3, [r3, #0]
    2818:	f113 0f07 	cmn.w	r3, #7
    281c:	db0b      	blt.n	2836 <move_balls+0x74>
    281e:	4967      	ldr	r1, [pc, #412]	; (29bc <move_balls+0x1fa>)
    2820:	687a      	ldr	r2, [r7, #4]
    2822:	4613      	mov	r3, r2
    2824:	009b      	lsls	r3, r3, #2
    2826:	4413      	add	r3, r2
    2828:	009b      	lsls	r3, r3, #2
    282a:	440b      	add	r3, r1
    282c:	681b      	ldr	r3, [r3, #0]
    282e:	683a      	ldr	r2, [r7, #0]
    2830:	8992      	ldrh	r2, [r2, #12]
    2832:	4293      	cmp	r3, r2
    2834:	db2c      	blt.n	2890 <move_balls+0xce>
    2836:	4961      	ldr	r1, [pc, #388]	; (29bc <move_balls+0x1fa>)
    2838:	687a      	ldr	r2, [r7, #4]
    283a:	4613      	mov	r3, r2
    283c:	009b      	lsls	r3, r3, #2
    283e:	4413      	add	r3, r2
    2840:	009b      	lsls	r3, r3, #2
    2842:	440b      	add	r3, r1
    2844:	3308      	adds	r3, #8
    2846:	681b      	ldr	r3, [r3, #0]
    2848:	4259      	negs	r1, r3
    284a:	485c      	ldr	r0, [pc, #368]	; (29bc <move_balls+0x1fa>)
    284c:	687a      	ldr	r2, [r7, #4]
    284e:	4613      	mov	r3, r2
    2850:	009b      	lsls	r3, r3, #2
    2852:	4413      	add	r3, r2
    2854:	009b      	lsls	r3, r3, #2
    2856:	4403      	add	r3, r0
    2858:	3308      	adds	r3, #8
    285a:	6019      	str	r1, [r3, #0]
    285c:	4957      	ldr	r1, [pc, #348]	; (29bc <move_balls+0x1fa>)
    285e:	687a      	ldr	r2, [r7, #4]
    2860:	4613      	mov	r3, r2
    2862:	009b      	lsls	r3, r3, #2
    2864:	4413      	add	r3, r2
    2866:	009b      	lsls	r3, r3, #2
    2868:	440b      	add	r3, r1
    286a:	6819      	ldr	r1, [r3, #0]
    286c:	4853      	ldr	r0, [pc, #332]	; (29bc <move_balls+0x1fa>)
    286e:	687a      	ldr	r2, [r7, #4]
    2870:	4613      	mov	r3, r2
    2872:	009b      	lsls	r3, r3, #2
    2874:	4413      	add	r3, r2
    2876:	009b      	lsls	r3, r3, #2
    2878:	4403      	add	r3, r0
    287a:	3308      	adds	r3, #8
    287c:	681b      	ldr	r3, [r3, #0]
    287e:	4419      	add	r1, r3
    2880:	484e      	ldr	r0, [pc, #312]	; (29bc <move_balls+0x1fa>)
    2882:	687a      	ldr	r2, [r7, #4]
    2884:	4613      	mov	r3, r2
    2886:	009b      	lsls	r3, r3, #2
    2888:	4413      	add	r3, r2
    288a:	009b      	lsls	r3, r3, #2
    288c:	4403      	add	r3, r0
    288e:	6019      	str	r1, [r3, #0]
    2890:	494a      	ldr	r1, [pc, #296]	; (29bc <move_balls+0x1fa>)
    2892:	687a      	ldr	r2, [r7, #4]
    2894:	4613      	mov	r3, r2
    2896:	009b      	lsls	r3, r3, #2
    2898:	4413      	add	r3, r2
    289a:	009b      	lsls	r3, r3, #2
    289c:	440b      	add	r3, r1
    289e:	3304      	adds	r3, #4
    28a0:	6819      	ldr	r1, [r3, #0]
    28a2:	4846      	ldr	r0, [pc, #280]	; (29bc <move_balls+0x1fa>)
    28a4:	687a      	ldr	r2, [r7, #4]
    28a6:	4613      	mov	r3, r2
    28a8:	009b      	lsls	r3, r3, #2
    28aa:	4413      	add	r3, r2
    28ac:	009b      	lsls	r3, r3, #2
    28ae:	4403      	add	r3, r0
    28b0:	330c      	adds	r3, #12
    28b2:	681b      	ldr	r3, [r3, #0]
    28b4:	4419      	add	r1, r3
    28b6:	4841      	ldr	r0, [pc, #260]	; (29bc <move_balls+0x1fa>)
    28b8:	687a      	ldr	r2, [r7, #4]
    28ba:	4613      	mov	r3, r2
    28bc:	009b      	lsls	r3, r3, #2
    28be:	4413      	add	r3, r2
    28c0:	009b      	lsls	r3, r3, #2
    28c2:	4403      	add	r3, r0
    28c4:	3304      	adds	r3, #4
    28c6:	6019      	str	r1, [r3, #0]
    28c8:	493c      	ldr	r1, [pc, #240]	; (29bc <move_balls+0x1fa>)
    28ca:	687a      	ldr	r2, [r7, #4]
    28cc:	4613      	mov	r3, r2
    28ce:	009b      	lsls	r3, r3, #2
    28d0:	4413      	add	r3, r2
    28d2:	009b      	lsls	r3, r3, #2
    28d4:	440b      	add	r3, r1
    28d6:	3304      	adds	r3, #4
    28d8:	681b      	ldr	r3, [r3, #0]
    28da:	2b0f      	cmp	r3, #15
    28dc:	dd0c      	ble.n	28f8 <move_balls+0x136>
    28de:	4937      	ldr	r1, [pc, #220]	; (29bc <move_balls+0x1fa>)
    28e0:	687a      	ldr	r2, [r7, #4]
    28e2:	4613      	mov	r3, r2
    28e4:	009b      	lsls	r3, r3, #2
    28e6:	4413      	add	r3, r2
    28e8:	009b      	lsls	r3, r3, #2
    28ea:	440b      	add	r3, r1
    28ec:	3304      	adds	r3, #4
    28ee:	681b      	ldr	r3, [r3, #0]
    28f0:	683a      	ldr	r2, [r7, #0]
    28f2:	89d2      	ldrh	r2, [r2, #14]
    28f4:	4293      	cmp	r3, r2
    28f6:	db2e      	blt.n	2956 <move_balls+0x194>
    28f8:	4930      	ldr	r1, [pc, #192]	; (29bc <move_balls+0x1fa>)
    28fa:	687a      	ldr	r2, [r7, #4]
    28fc:	4613      	mov	r3, r2
    28fe:	009b      	lsls	r3, r3, #2
    2900:	4413      	add	r3, r2
    2902:	009b      	lsls	r3, r3, #2
    2904:	440b      	add	r3, r1
    2906:	330c      	adds	r3, #12
    2908:	681b      	ldr	r3, [r3, #0]
    290a:	4259      	negs	r1, r3
    290c:	482b      	ldr	r0, [pc, #172]	; (29bc <move_balls+0x1fa>)
    290e:	687a      	ldr	r2, [r7, #4]
    2910:	4613      	mov	r3, r2
    2912:	009b      	lsls	r3, r3, #2
    2914:	4413      	add	r3, r2
    2916:	009b      	lsls	r3, r3, #2
    2918:	4403      	add	r3, r0
    291a:	330c      	adds	r3, #12
    291c:	6019      	str	r1, [r3, #0]
    291e:	4927      	ldr	r1, [pc, #156]	; (29bc <move_balls+0x1fa>)
    2920:	687a      	ldr	r2, [r7, #4]
    2922:	4613      	mov	r3, r2
    2924:	009b      	lsls	r3, r3, #2
    2926:	4413      	add	r3, r2
    2928:	009b      	lsls	r3, r3, #2
    292a:	440b      	add	r3, r1
    292c:	3304      	adds	r3, #4
    292e:	6819      	ldr	r1, [r3, #0]
    2930:	4822      	ldr	r0, [pc, #136]	; (29bc <move_balls+0x1fa>)
    2932:	687a      	ldr	r2, [r7, #4]
    2934:	4613      	mov	r3, r2
    2936:	009b      	lsls	r3, r3, #2
    2938:	4413      	add	r3, r2
    293a:	009b      	lsls	r3, r3, #2
    293c:	4403      	add	r3, r0
    293e:	330c      	adds	r3, #12
    2940:	681b      	ldr	r3, [r3, #0]
    2942:	4419      	add	r1, r3
    2944:	481d      	ldr	r0, [pc, #116]	; (29bc <move_balls+0x1fa>)
    2946:	687a      	ldr	r2, [r7, #4]
    2948:	4613      	mov	r3, r2
    294a:	009b      	lsls	r3, r3, #2
    294c:	4413      	add	r3, r2
    294e:	009b      	lsls	r3, r3, #2
    2950:	4403      	add	r3, r0
    2952:	3304      	adds	r3, #4
    2954:	6019      	str	r1, [r3, #0]
    2956:	687b      	ldr	r3, [r7, #4]
    2958:	3301      	adds	r3, #1
    295a:	607b      	str	r3, [r7, #4]
    295c:	687b      	ldr	r3, [r7, #4]
    295e:	2b01      	cmp	r3, #1
    2960:	f77f af38 	ble.w	27d4 <move_balls+0x12>
    2964:	4916      	ldr	r1, [pc, #88]	; (29c0 <move_balls+0x1fe>)
    2966:	4815      	ldr	r0, [pc, #84]	; (29bc <move_balls+0x1fa>)
    2968:	f7ff ff0e 	bl	2788 <distance>
    296c:	4603      	mov	r3, r0
    296e:	2b07      	cmp	r3, #7
    2970:	d81f      	bhi.n	29b2 <move_balls+0x1f0>
    2972:	4b12      	ldr	r3, [pc, #72]	; (29bc <move_balls+0x1fa>)
    2974:	689a      	ldr	r2, [r3, #8]
    2976:	4b11      	ldr	r3, [pc, #68]	; (29bc <move_balls+0x1fa>)
    2978:	69db      	ldr	r3, [r3, #28]
    297a:	429a      	cmp	r2, r3
    297c:	d009      	beq.n	2992 <move_balls+0x1d0>
    297e:	4b0f      	ldr	r3, [pc, #60]	; (29bc <move_balls+0x1fa>)
    2980:	689b      	ldr	r3, [r3, #8]
    2982:	607b      	str	r3, [r7, #4]
    2984:	4b0d      	ldr	r3, [pc, #52]	; (29bc <move_balls+0x1fa>)
    2986:	69db      	ldr	r3, [r3, #28]
    2988:	4a0c      	ldr	r2, [pc, #48]	; (29bc <move_balls+0x1fa>)
    298a:	6093      	str	r3, [r2, #8]
    298c:	4a0b      	ldr	r2, [pc, #44]	; (29bc <move_balls+0x1fa>)
    298e:	687b      	ldr	r3, [r7, #4]
    2990:	61d3      	str	r3, [r2, #28]
    2992:	4b0a      	ldr	r3, [pc, #40]	; (29bc <move_balls+0x1fa>)
    2994:	68da      	ldr	r2, [r3, #12]
    2996:	4b09      	ldr	r3, [pc, #36]	; (29bc <move_balls+0x1fa>)
    2998:	6a1b      	ldr	r3, [r3, #32]
    299a:	429a      	cmp	r2, r3
    299c:	d009      	beq.n	29b2 <move_balls+0x1f0>
    299e:	4b07      	ldr	r3, [pc, #28]	; (29bc <move_balls+0x1fa>)
    29a0:	68db      	ldr	r3, [r3, #12]
    29a2:	607b      	str	r3, [r7, #4]
    29a4:	4b05      	ldr	r3, [pc, #20]	; (29bc <move_balls+0x1fa>)
    29a6:	6a1b      	ldr	r3, [r3, #32]
    29a8:	4a04      	ldr	r2, [pc, #16]	; (29bc <move_balls+0x1fa>)
    29aa:	60d3      	str	r3, [r2, #12]
    29ac:	4a03      	ldr	r2, [pc, #12]	; (29bc <move_balls+0x1fa>)
    29ae:	687b      	ldr	r3, [r7, #4]
    29b0:	6213      	str	r3, [r2, #32]
    29b2:	bf00      	nop
    29b4:	3708      	adds	r7, #8
    29b6:	46bd      	mov	sp, r7
    29b8:	bd80      	pop	{r7, pc}
    29ba:	bf00      	nop
    29bc:	2000262c 	.word	0x2000262c
    29c0:	20002640 	.word	0x20002640

000029c4 <init_balls>:
    29c4:	b580      	push	{r7, lr}
    29c6:	b082      	sub	sp, #8
    29c8:	af00      	add	r7, sp, #0
    29ca:	f002 fccd 	bl	5368 <get_video_params>
    29ce:	6038      	str	r0, [r7, #0]
    29d0:	4b33      	ldr	r3, [pc, #204]	; (2aa0 <init_balls+0xdc>)
    29d2:	681b      	ldr	r3, [r3, #0]
    29d4:	4618      	mov	r0, r3
    29d6:	f7fd fd53 	bl	480 <srand>
    29da:	2300      	movs	r3, #0
    29dc:	607b      	str	r3, [r7, #4]
    29de:	e057      	b.n	2a90 <init_balls+0xcc>
    29e0:	f7fd fd5c 	bl	49c <rand>
    29e4:	4603      	mov	r3, r0
    29e6:	683a      	ldr	r2, [r7, #0]
    29e8:	8992      	ldrh	r2, [r2, #12]
    29ea:	fb93 f1f2 	sdiv	r1, r3, r2
    29ee:	fb02 f201 	mul.w	r2, r2, r1
    29f2:	1a99      	subs	r1, r3, r2
    29f4:	482b      	ldr	r0, [pc, #172]	; (2aa4 <init_balls+0xe0>)
    29f6:	687a      	ldr	r2, [r7, #4]
    29f8:	4613      	mov	r3, r2
    29fa:	009b      	lsls	r3, r3, #2
    29fc:	4413      	add	r3, r2
    29fe:	009b      	lsls	r3, r3, #2
    2a00:	4403      	add	r3, r0
    2a02:	6019      	str	r1, [r3, #0]
    2a04:	f7fd fd4a 	bl	49c <rand>
    2a08:	4602      	mov	r2, r0
    2a0a:	683b      	ldr	r3, [r7, #0]
    2a0c:	89db      	ldrh	r3, [r3, #14]
    2a0e:	3b10      	subs	r3, #16
    2a10:	fb92 f1f3 	sdiv	r1, r2, r3
    2a14:	fb03 f301 	mul.w	r3, r3, r1
    2a18:	1ad3      	subs	r3, r2, r3
    2a1a:	f103 0110 	add.w	r1, r3, #16
    2a1e:	4821      	ldr	r0, [pc, #132]	; (2aa4 <init_balls+0xe0>)
    2a20:	687a      	ldr	r2, [r7, #4]
    2a22:	4613      	mov	r3, r2
    2a24:	009b      	lsls	r3, r3, #2
    2a26:	4413      	add	r3, r2
    2a28:	009b      	lsls	r3, r3, #2
    2a2a:	4403      	add	r3, r0
    2a2c:	3304      	adds	r3, #4
    2a2e:	6019      	str	r1, [r3, #0]
    2a30:	491c      	ldr	r1, [pc, #112]	; (2aa4 <init_balls+0xe0>)
    2a32:	687a      	ldr	r2, [r7, #4]
    2a34:	4613      	mov	r3, r2
    2a36:	009b      	lsls	r3, r3, #2
    2a38:	4413      	add	r3, r2
    2a3a:	009b      	lsls	r3, r3, #2
    2a3c:	440b      	add	r3, r1
    2a3e:	3308      	adds	r3, #8
    2a40:	2201      	movs	r2, #1
    2a42:	601a      	str	r2, [r3, #0]
    2a44:	4917      	ldr	r1, [pc, #92]	; (2aa4 <init_balls+0xe0>)
    2a46:	687a      	ldr	r2, [r7, #4]
    2a48:	4613      	mov	r3, r2
    2a4a:	009b      	lsls	r3, r3, #2
    2a4c:	4413      	add	r3, r2
    2a4e:	009b      	lsls	r3, r3, #2
    2a50:	440b      	add	r3, r1
    2a52:	330c      	adds	r3, #12
    2a54:	2201      	movs	r2, #1
    2a56:	601a      	str	r2, [r3, #0]
    2a58:	683b      	ldr	r3, [r7, #0]
    2a5a:	781b      	ldrb	r3, [r3, #0]
    2a5c:	2b00      	cmp	r3, #0
    2a5e:	d10a      	bne.n	2a76 <init_balls+0xb2>
    2a60:	4910      	ldr	r1, [pc, #64]	; (2aa4 <init_balls+0xe0>)
    2a62:	687a      	ldr	r2, [r7, #4]
    2a64:	4613      	mov	r3, r2
    2a66:	009b      	lsls	r3, r3, #2
    2a68:	4413      	add	r3, r2
    2a6a:	009b      	lsls	r3, r3, #2
    2a6c:	440b      	add	r3, r1
    2a6e:	3310      	adds	r3, #16
    2a70:	4a0d      	ldr	r2, [pc, #52]	; (2aa8 <init_balls+0xe4>)
    2a72:	601a      	str	r2, [r3, #0]
    2a74:	e009      	b.n	2a8a <init_balls+0xc6>
    2a76:	490b      	ldr	r1, [pc, #44]	; (2aa4 <init_balls+0xe0>)
    2a78:	687a      	ldr	r2, [r7, #4]
    2a7a:	4613      	mov	r3, r2
    2a7c:	009b      	lsls	r3, r3, #2
    2a7e:	4413      	add	r3, r2
    2a80:	009b      	lsls	r3, r3, #2
    2a82:	440b      	add	r3, r1
    2a84:	3310      	adds	r3, #16
    2a86:	4a09      	ldr	r2, [pc, #36]	; (2aac <init_balls+0xe8>)
    2a88:	601a      	str	r2, [r3, #0]
    2a8a:	687b      	ldr	r3, [r7, #4]
    2a8c:	3301      	adds	r3, #1
    2a8e:	607b      	str	r3, [r7, #4]
    2a90:	687b      	ldr	r3, [r7, #4]
    2a92:	2b01      	cmp	r3, #1
    2a94:	dda4      	ble.n	29e0 <init_balls+0x1c>
    2a96:	bf00      	nop
    2a98:	3708      	adds	r7, #8
    2a9a:	46bd      	mov	sp, r7
    2a9c:	bd80      	pop	{r7, pc}
    2a9e:	bf00      	nop
    2aa0:	20004db8 	.word	0x20004db8
    2aa4:	2000262c 	.word	0x2000262c
    2aa8:	00005840 	.word	0x00005840
    2aac:	00005860 	.word	0x00005860

00002ab0 <color_bars>:
    2ab0:	b580      	push	{r7, lr}
    2ab2:	b084      	sub	sp, #16
    2ab4:	af00      	add	r7, sp, #0
    2ab6:	2300      	movs	r3, #0
    2ab8:	71fb      	strb	r3, [r7, #7]
    2aba:	f002 fc55 	bl	5368 <get_video_params>
    2abe:	6038      	str	r0, [r7, #0]
    2ac0:	683b      	ldr	r3, [r7, #0]
    2ac2:	89db      	ldrh	r3, [r3, #14]
    2ac4:	089b      	lsrs	r3, r3, #2
    2ac6:	b29b      	uxth	r3, r3
    2ac8:	461a      	mov	r2, r3
    2aca:	4613      	mov	r3, r2
    2acc:	005b      	lsls	r3, r3, #1
    2ace:	4413      	add	r3, r2
    2ad0:	60bb      	str	r3, [r7, #8]
    2ad2:	e01b      	b.n	2b0c <color_bars+0x5c>
    2ad4:	2310      	movs	r3, #16
    2ad6:	71fb      	strb	r3, [r7, #7]
    2ad8:	2300      	movs	r3, #0
    2ada:	60fb      	str	r3, [r7, #12]
    2adc:	e010      	b.n	2b00 <color_bars+0x50>
    2ade:	68fb      	ldr	r3, [r7, #12]
    2ae0:	f003 0307 	and.w	r3, r3, #7
    2ae4:	2b00      	cmp	r3, #0
    2ae6:	d102      	bne.n	2aee <color_bars+0x3e>
    2ae8:	79fb      	ldrb	r3, [r7, #7]
    2aea:	3b01      	subs	r3, #1
    2aec:	71fb      	strb	r3, [r7, #7]
    2aee:	79fb      	ldrb	r3, [r7, #7]
    2af0:	461a      	mov	r2, r3
    2af2:	68b9      	ldr	r1, [r7, #8]
    2af4:	68f8      	ldr	r0, [r7, #12]
    2af6:	f7ff fb49 	bl	218c <gfx_plot>
    2afa:	68fb      	ldr	r3, [r7, #12]
    2afc:	3301      	adds	r3, #1
    2afe:	60fb      	str	r3, [r7, #12]
    2b00:	68fb      	ldr	r3, [r7, #12]
    2b02:	2b7f      	cmp	r3, #127	; 0x7f
    2b04:	ddeb      	ble.n	2ade <color_bars+0x2e>
    2b06:	68bb      	ldr	r3, [r7, #8]
    2b08:	3301      	adds	r3, #1
    2b0a:	60bb      	str	r3, [r7, #8]
    2b0c:	683b      	ldr	r3, [r7, #0]
    2b0e:	89db      	ldrh	r3, [r3, #14]
    2b10:	461a      	mov	r2, r3
    2b12:	68bb      	ldr	r3, [r7, #8]
    2b14:	429a      	cmp	r2, r3
    2b16:	dcdd      	bgt.n	2ad4 <color_bars+0x24>
    2b18:	bf00      	nop
    2b1a:	3710      	adds	r7, #16
    2b1c:	46bd      	mov	sp, r7
    2b1e:	bd80      	pop	{r7, pc}

00002b20 <vertical_bars>:
    2b20:	b580      	push	{r7, lr}
    2b22:	b082      	sub	sp, #8
    2b24:	af00      	add	r7, sp, #0
    2b26:	f002 fc1f 	bl	5368 <get_video_params>
    2b2a:	6038      	str	r0, [r7, #0]
    2b2c:	2310      	movs	r3, #16
    2b2e:	607b      	str	r3, [r7, #4]
    2b30:	e00f      	b.n	2b52 <vertical_bars+0x32>
    2b32:	220f      	movs	r2, #15
    2b34:	6879      	ldr	r1, [r7, #4]
    2b36:	2000      	movs	r0, #0
    2b38:	f7ff fb28 	bl	218c <gfx_plot>
    2b3c:	683b      	ldr	r3, [r7, #0]
    2b3e:	899b      	ldrh	r3, [r3, #12]
    2b40:	3b01      	subs	r3, #1
    2b42:	220f      	movs	r2, #15
    2b44:	6879      	ldr	r1, [r7, #4]
    2b46:	4618      	mov	r0, r3
    2b48:	f7ff fb20 	bl	218c <gfx_plot>
    2b4c:	687b      	ldr	r3, [r7, #4]
    2b4e:	3301      	adds	r3, #1
    2b50:	607b      	str	r3, [r7, #4]
    2b52:	683b      	ldr	r3, [r7, #0]
    2b54:	89db      	ldrh	r3, [r3, #14]
    2b56:	461a      	mov	r2, r3
    2b58:	687b      	ldr	r3, [r7, #4]
    2b5a:	429a      	cmp	r2, r3
    2b5c:	dce9      	bgt.n	2b32 <vertical_bars+0x12>
    2b5e:	bf00      	nop
    2b60:	3708      	adds	r7, #8
    2b62:	46bd      	mov	sp, r7
    2b64:	bd80      	pop	{r7, pc}

00002b66 <video_test>:
    2b66:	b580      	push	{r7, lr}
    2b68:	b082      	sub	sp, #8
    2b6a:	af00      	add	r7, sp, #0
    2b6c:	2300      	movs	r3, #0
    2b6e:	71fb      	strb	r3, [r7, #7]
    2b70:	79fb      	ldrb	r3, [r7, #7]
    2b72:	4618      	mov	r0, r3
    2b74:	f002 fb60 	bl	5238 <set_video_mode>
    2b78:	f7ff ff9a 	bl	2ab0 <color_bars>
    2b7c:	f7ff ffd0 	bl	2b20 <vertical_bars>
    2b80:	4b2c      	ldr	r3, [pc, #176]	; (2c34 <video_test+0xce>)
    2b82:	2110      	movs	r1, #16
    2b84:	4618      	mov	r0, r3
    2b86:	f001 ff75 	bl	4a74 <print_int>
    2b8a:	4b2b      	ldr	r3, [pc, #172]	; (2c38 <video_test+0xd2>)
    2b8c:	f1c3 5300 	rsb	r3, r3, #536870912	; 0x20000000
    2b90:	f503 43a0 	add.w	r3, r3, #20480	; 0x5000
    2b94:	210a      	movs	r1, #10
    2b96:	4618      	mov	r0, r3
    2b98:	f001 ff6c 	bl	4a74 <print_int>
    2b9c:	f7ff ff12 	bl	29c4 <init_balls>
    2ba0:	2300      	movs	r3, #0
    2ba2:	71fb      	strb	r3, [r7, #7]
    2ba4:	f7ff fd98 	bl	26d8 <draw_balls>
    2ba8:	f7ff fd96 	bl	26d8 <draw_balls>
    2bac:	f7ff fe09 	bl	27c2 <move_balls>
    2bb0:	2010      	movs	r0, #16
    2bb2:	f7fe fef1 	bl	1998 <btn_query_down>
    2bb6:	4603      	mov	r3, r0
    2bb8:	2b00      	cmp	r3, #0
    2bba:	d02d      	beq.n	2c18 <video_test+0xb2>
    2bbc:	79fb      	ldrb	r3, [r7, #7]
    2bbe:	3301      	adds	r3, #1
    2bc0:	71fb      	strb	r3, [r7, #7]
    2bc2:	79fa      	ldrb	r2, [r7, #7]
    2bc4:	4b1d      	ldr	r3, [pc, #116]	; (2c3c <video_test+0xd6>)
    2bc6:	fba3 1302 	umull	r1, r3, r3, r2
    2bca:	0859      	lsrs	r1, r3, #1
    2bcc:	460b      	mov	r3, r1
    2bce:	005b      	lsls	r3, r3, #1
    2bd0:	440b      	add	r3, r1
    2bd2:	1ad3      	subs	r3, r2, r3
    2bd4:	71fb      	strb	r3, [r7, #7]
    2bd6:	79fb      	ldrb	r3, [r7, #7]
    2bd8:	4618      	mov	r0, r3
    2bda:	f002 fb2d 	bl	5238 <set_video_mode>
    2bde:	79fb      	ldrb	r3, [r7, #7]
    2be0:	2b01      	cmp	r3, #1
    2be2:	d009      	beq.n	2bf8 <video_test+0x92>
    2be4:	2b02      	cmp	r3, #2
    2be6:	d00b      	beq.n	2c00 <video_test+0x9a>
    2be8:	2b00      	cmp	r3, #0
    2bea:	d10d      	bne.n	2c08 <video_test+0xa2>
    2bec:	4814      	ldr	r0, [pc, #80]	; (2c40 <video_test+0xda>)
    2bee:	f001 ff11 	bl	4a14 <print>
    2bf2:	f7ff ff5d 	bl	2ab0 <color_bars>
    2bf6:	e007      	b.n	2c08 <video_test+0xa2>
    2bf8:	4812      	ldr	r0, [pc, #72]	; (2c44 <video_test+0xde>)
    2bfa:	f001 ff0b 	bl	4a14 <print>
    2bfe:	e003      	b.n	2c08 <video_test+0xa2>
    2c00:	4811      	ldr	r0, [pc, #68]	; (2c48 <video_test+0xe2>)
    2c02:	f001 ff07 	bl	4a14 <print>
    2c06:	bf00      	nop
    2c08:	f7ff ff8a 	bl	2b20 <vertical_bars>
    2c0c:	f7ff feda 	bl	29c4 <init_balls>
    2c10:	2010      	movs	r0, #16
    2c12:	f7fe ff05 	bl	1a20 <btn_wait_up>
    2c16:	e7c5      	b.n	2ba4 <video_test+0x3e>
    2c18:	2020      	movs	r0, #32
    2c1a:	f7fe febd 	bl	1998 <btn_query_down>
    2c1e:	4603      	mov	r3, r0
    2c20:	2b00      	cmp	r3, #0
    2c22:	d0bf      	beq.n	2ba4 <video_test+0x3e>
    2c24:	2020      	movs	r0, #32
    2c26:	f7fe fefb 	bl	1a20 <btn_wait_up>
    2c2a:	bf00      	nop
    2c2c:	bf00      	nop
    2c2e:	3708      	adds	r7, #8
    2c30:	46bd      	mov	sp, r7
    2c32:	bd80      	pop	{r7, pc}
    2c34:	00005c00 	.word	0x00005c00
    2c38:	20004dc0 	.word	0x20004dc0
    2c3c:	aaaaaaab 	.word	0xaaaaaaab
    2c40:	00005868 	.word	0x00005868
    2c44:	00005888 	.word	0x00005888
    2c48:	000058a0 	.word	0x000058a0

00002c4c <sound_test>:
    2c4c:	b580      	push	{r7, lr}
    2c4e:	b082      	sub	sp, #8
    2c50:	af00      	add	r7, sp, #0
    2c52:	23ff      	movs	r3, #255	; 0xff
    2c54:	71fb      	strb	r3, [r7, #7]
    2c56:	f7ff fae7 	bl	2228 <gfx_cls>
    2c5a:	4829      	ldr	r0, [pc, #164]	; (2d00 <sound_test+0xb4>)
    2c5c:	f001 feda 	bl	4a14 <print>
    2c60:	e040      	b.n	2ce4 <sound_test+0x98>
    2c62:	f7fe ff05 	bl	1a70 <btn_wait_any>
    2c66:	4603      	mov	r3, r0
    2c68:	71fb      	strb	r3, [r7, #7]
    2c6a:	79fb      	ldrb	r3, [r7, #7]
    2c6c:	2b08      	cmp	r3, #8
    2c6e:	d01c      	beq.n	2caa <sound_test+0x5e>
    2c70:	2b08      	cmp	r3, #8
    2c72:	dc06      	bgt.n	2c82 <sound_test+0x36>
    2c74:	2b02      	cmp	r3, #2
    2c76:	d010      	beq.n	2c9a <sound_test+0x4e>
    2c78:	2b04      	cmp	r3, #4
    2c7a:	d012      	beq.n	2ca2 <sound_test+0x56>
    2c7c:	2b01      	cmp	r3, #1
    2c7e:	d01c      	beq.n	2cba <sound_test+0x6e>
    2c80:	e02b      	b.n	2cda <sound_test+0x8e>
    2c82:	2b20      	cmp	r3, #32
    2c84:	d01d      	beq.n	2cc2 <sound_test+0x76>
    2c86:	2b20      	cmp	r3, #32
    2c88:	dc02      	bgt.n	2c90 <sound_test+0x44>
    2c8a:	2b10      	cmp	r3, #16
    2c8c:	d011      	beq.n	2cb2 <sound_test+0x66>
    2c8e:	e024      	b.n	2cda <sound_test+0x8e>
    2c90:	2b40      	cmp	r3, #64	; 0x40
    2c92:	d01a      	beq.n	2cca <sound_test+0x7e>
    2c94:	2b80      	cmp	r3, #128	; 0x80
    2c96:	d01c      	beq.n	2cd2 <sound_test+0x86>
    2c98:	e01f      	b.n	2cda <sound_test+0x8e>
    2c9a:	f44f 73dc 	mov.w	r3, #440	; 0x1b8
    2c9e:	80bb      	strh	r3, [r7, #4]
    2ca0:	e01b      	b.n	2cda <sound_test+0x8e>
    2ca2:	f44f 73e9 	mov.w	r3, #466	; 0x1d2
    2ca6:	80bb      	strh	r3, [r7, #4]
    2ca8:	e017      	b.n	2cda <sound_test+0x8e>
    2caa:	f240 13ed 	movw	r3, #493	; 0x1ed
    2cae:	80bb      	strh	r3, [r7, #4]
    2cb0:	e013      	b.n	2cda <sound_test+0x8e>
    2cb2:	f240 230b 	movw	r3, #523	; 0x20b
    2cb6:	80bb      	strh	r3, [r7, #4]
    2cb8:	e00f      	b.n	2cda <sound_test+0x8e>
    2cba:	f240 232a 	movw	r3, #554	; 0x22a
    2cbe:	80bb      	strh	r3, [r7, #4]
    2cc0:	e00b      	b.n	2cda <sound_test+0x8e>
    2cc2:	f240 234b 	movw	r3, #587	; 0x24b
    2cc6:	80bb      	strh	r3, [r7, #4]
    2cc8:	e007      	b.n	2cda <sound_test+0x8e>
    2cca:	f240 236e 	movw	r3, #622	; 0x26e
    2cce:	80bb      	strh	r3, [r7, #4]
    2cd0:	e003      	b.n	2cda <sound_test+0x8e>
    2cd2:	f240 2393 	movw	r3, #659	; 0x293
    2cd6:	80bb      	strh	r3, [r7, #4]
    2cd8:	bf00      	nop
    2cda:	88bb      	ldrh	r3, [r7, #4]
    2cdc:	2103      	movs	r1, #3
    2cde:	4618      	mov	r0, r3
    2ce0:	f001 fa22 	bl	4128 <tone>
    2ce4:	79fb      	ldrb	r3, [r7, #7]
    2ce6:	2b20      	cmp	r3, #32
    2ce8:	d1bb      	bne.n	2c62 <sound_test+0x16>
    2cea:	79fb      	ldrb	r3, [r7, #7]
    2cec:	4618      	mov	r0, r3
    2cee:	f7fe fe97 	bl	1a20 <btn_wait_up>
    2cf2:	203c      	movs	r0, #60	; 0x3c
    2cf4:	f001 fa8a 	bl	420c <sound_sampler>
    2cf8:	bf00      	nop
    2cfa:	3708      	adds	r7, #8
    2cfc:	46bd      	mov	sp, r7
    2cfe:	bd80      	pop	{r7, pc}
    2d00:	000058b8 	.word	0x000058b8

00002d04 <display_keymap>:
    2d04:	b580      	push	{r7, lr}
    2d06:	b084      	sub	sp, #16
    2d08:	af00      	add	r7, sp, #0
    2d0a:	6078      	str	r0, [r7, #4]
    2d0c:	2108      	movs	r1, #8
    2d0e:	2000      	movs	r0, #0
    2d10:	f001 fe54 	bl	49bc <set_cursor>
    2d14:	2300      	movs	r3, #0
    2d16:	60fb      	str	r3, [r7, #12]
    2d18:	e00a      	b.n	2d30 <display_keymap+0x2c>
    2d1a:	68fb      	ldr	r3, [r7, #12]
    2d1c:	687a      	ldr	r2, [r7, #4]
    2d1e:	4413      	add	r3, r2
    2d20:	781b      	ldrb	r3, [r3, #0]
    2d22:	2110      	movs	r1, #16
    2d24:	4618      	mov	r0, r3
    2d26:	f001 fea5 	bl	4a74 <print_int>
    2d2a:	68fb      	ldr	r3, [r7, #12]
    2d2c:	3301      	adds	r3, #1
    2d2e:	60fb      	str	r3, [r7, #12]
    2d30:	68fb      	ldr	r3, [r7, #12]
    2d32:	2b07      	cmp	r3, #7
    2d34:	ddf1      	ble.n	2d1a <display_keymap+0x16>
    2d36:	bf00      	nop
    2d38:	3710      	adds	r7, #16
    2d3a:	46bd      	mov	sp, r7
    2d3c:	bd80      	pop	{r7, pc}

00002d3e <buttons_map>:
    2d3e:	b580      	push	{r7, lr}
    2d40:	b086      	sub	sp, #24
    2d42:	af00      	add	r7, sp, #0
    2d44:	23ff      	movs	r3, #255	; 0xff
    2d46:	74fb      	strb	r3, [r7, #19]
    2d48:	f7fe feda 	bl	1b00 <get_keymap>
    2d4c:	60f8      	str	r0, [r7, #12]
    2d4e:	f7ff fa6b 	bl	2228 <gfx_cls>
    2d52:	487d      	ldr	r0, [pc, #500]	; (2f48 <buttons_map+0x20a>)
    2d54:	f001 fe81 	bl	4a5a <println>
    2d58:	2300      	movs	r3, #0
    2d5a:	617b      	str	r3, [r7, #20]
    2d5c:	e00b      	b.n	2d76 <buttons_map+0x38>
    2d5e:	697b      	ldr	r3, [r7, #20]
    2d60:	68fa      	ldr	r2, [r7, #12]
    2d62:	4413      	add	r3, r2
    2d64:	7819      	ldrb	r1, [r3, #0]
    2d66:	1d3a      	adds	r2, r7, #4
    2d68:	697b      	ldr	r3, [r7, #20]
    2d6a:	4413      	add	r3, r2
    2d6c:	460a      	mov	r2, r1
    2d6e:	701a      	strb	r2, [r3, #0]
    2d70:	697b      	ldr	r3, [r7, #20]
    2d72:	3301      	adds	r3, #1
    2d74:	617b      	str	r3, [r7, #20]
    2d76:	697b      	ldr	r3, [r7, #20]
    2d78:	2b07      	cmp	r3, #7
    2d7a:	ddf0      	ble.n	2d5e <buttons_map+0x20>
    2d7c:	1d3b      	adds	r3, r7, #4
    2d7e:	4618      	mov	r0, r3
    2d80:	f7ff ffc0 	bl	2d04 <display_keymap>
    2d84:	2108      	movs	r1, #8
    2d86:	2000      	movs	r0, #0
    2d88:	f001 fe18 	bl	49bc <set_cursor>
    2d8c:	2001      	movs	r0, #1
    2d8e:	f001 ffab 	bl	4ce8 <show_cursor>
    2d92:	2300      	movs	r3, #0
    2d94:	617b      	str	r3, [r7, #20]
    2d96:	1d3a      	adds	r2, r7, #4
    2d98:	697b      	ldr	r3, [r7, #20]
    2d9a:	4413      	add	r3, r2
    2d9c:	781b      	ldrb	r3, [r3, #0]
    2d9e:	74bb      	strb	r3, [r7, #18]
    2da0:	e0b8      	b.n	2f14 <buttons_map+0x1d6>
    2da2:	f7fe fe65 	bl	1a70 <btn_wait_any>
    2da6:	4603      	mov	r3, r0
    2da8:	74fb      	strb	r3, [r7, #19]
    2daa:	7cfb      	ldrb	r3, [r7, #19]
    2dac:	2b08      	cmp	r3, #8
    2dae:	d00b      	beq.n	2dc8 <buttons_map+0x8a>
    2db0:	2b08      	cmp	r3, #8
    2db2:	dc04      	bgt.n	2dbe <buttons_map+0x80>
    2db4:	2b02      	cmp	r3, #2
    2db6:	d042      	beq.n	2e3e <buttons_map+0x100>
    2db8:	2b04      	cmp	r3, #4
    2dba:	d05f      	beq.n	2e7c <buttons_map+0x13e>
    2dbc:	e0a6      	b.n	2f0c <buttons_map+0x1ce>
    2dbe:	2b10      	cmp	r3, #16
    2dc0:	d020      	beq.n	2e04 <buttons_map+0xc6>
    2dc2:	2b40      	cmp	r3, #64	; 0x40
    2dc4:	d079      	beq.n	2eba <buttons_map+0x17c>
    2dc6:	e0a1      	b.n	2f0c <buttons_map+0x1ce>
    2dc8:	697b      	ldr	r3, [r7, #20]
    2dca:	2b00      	cmp	r3, #0
    2dcc:	f000 8097 	beq.w	2efe <buttons_map+0x1c0>
    2dd0:	2000      	movs	r0, #0
    2dd2:	f001 ff89 	bl	4ce8 <show_cursor>
    2dd6:	697b      	ldr	r3, [r7, #20]
    2dd8:	3b01      	subs	r3, #1
    2dda:	617b      	str	r3, [r7, #20]
    2ddc:	697b      	ldr	r3, [r7, #20]
    2dde:	b2db      	uxtb	r3, r3
    2de0:	461a      	mov	r2, r3
    2de2:	00d2      	lsls	r2, r2, #3
    2de4:	4413      	add	r3, r2
    2de6:	005b      	lsls	r3, r3, #1
    2de8:	b2db      	uxtb	r3, r3
    2dea:	2108      	movs	r1, #8
    2dec:	4618      	mov	r0, r3
    2dee:	f001 fde5 	bl	49bc <set_cursor>
    2df2:	2001      	movs	r0, #1
    2df4:	f001 ff78 	bl	4ce8 <show_cursor>
    2df8:	1d3a      	adds	r2, r7, #4
    2dfa:	697b      	ldr	r3, [r7, #20]
    2dfc:	4413      	add	r3, r2
    2dfe:	781b      	ldrb	r3, [r3, #0]
    2e00:	74bb      	strb	r3, [r7, #18]
    2e02:	e07c      	b.n	2efe <buttons_map+0x1c0>
    2e04:	697b      	ldr	r3, [r7, #20]
    2e06:	2b06      	cmp	r3, #6
    2e08:	dc7b      	bgt.n	2f02 <buttons_map+0x1c4>
    2e0a:	2000      	movs	r0, #0
    2e0c:	f001 ff6c 	bl	4ce8 <show_cursor>
    2e10:	697b      	ldr	r3, [r7, #20]
    2e12:	3301      	adds	r3, #1
    2e14:	617b      	str	r3, [r7, #20]
    2e16:	697b      	ldr	r3, [r7, #20]
    2e18:	b2db      	uxtb	r3, r3
    2e1a:	461a      	mov	r2, r3
    2e1c:	00d2      	lsls	r2, r2, #3
    2e1e:	4413      	add	r3, r2
    2e20:	005b      	lsls	r3, r3, #1
    2e22:	b2db      	uxtb	r3, r3
    2e24:	2108      	movs	r1, #8
    2e26:	4618      	mov	r0, r3
    2e28:	f001 fdc8 	bl	49bc <set_cursor>
    2e2c:	2001      	movs	r0, #1
    2e2e:	f001 ff5b 	bl	4ce8 <show_cursor>
    2e32:	1d3a      	adds	r2, r7, #4
    2e34:	697b      	ldr	r3, [r7, #20]
    2e36:	4413      	add	r3, r2
    2e38:	781b      	ldrb	r3, [r3, #0]
    2e3a:	74bb      	strb	r3, [r7, #18]
    2e3c:	e061      	b.n	2f02 <buttons_map+0x1c4>
    2e3e:	7cbb      	ldrb	r3, [r7, #18]
    2e40:	2b0e      	cmp	r3, #14
    2e42:	d860      	bhi.n	2f06 <buttons_map+0x1c8>
    2e44:	7cbb      	ldrb	r3, [r7, #18]
    2e46:	3301      	adds	r3, #1
    2e48:	74bb      	strb	r3, [r7, #18]
    2e4a:	1d3a      	adds	r2, r7, #4
    2e4c:	697b      	ldr	r3, [r7, #20]
    2e4e:	4413      	add	r3, r2
    2e50:	7cba      	ldrb	r2, [r7, #18]
    2e52:	701a      	strb	r2, [r3, #0]
    2e54:	7cbb      	ldrb	r3, [r7, #18]
    2e56:	2110      	movs	r1, #16
    2e58:	4618      	mov	r0, r3
    2e5a:	f001 fe0b 	bl	4a74 <print_int>
    2e5e:	697b      	ldr	r3, [r7, #20]
    2e60:	b2db      	uxtb	r3, r3
    2e62:	461a      	mov	r2, r3
    2e64:	00d2      	lsls	r2, r2, #3
    2e66:	4413      	add	r3, r2
    2e68:	005b      	lsls	r3, r3, #1
    2e6a:	b2db      	uxtb	r3, r3
    2e6c:	2108      	movs	r1, #8
    2e6e:	4618      	mov	r0, r3
    2e70:	f001 fda4 	bl	49bc <set_cursor>
    2e74:	2001      	movs	r0, #1
    2e76:	f001 ff37 	bl	4ce8 <show_cursor>
    2e7a:	e044      	b.n	2f06 <buttons_map+0x1c8>
    2e7c:	7cbb      	ldrb	r3, [r7, #18]
    2e7e:	2b00      	cmp	r3, #0
    2e80:	d043      	beq.n	2f0a <buttons_map+0x1cc>
    2e82:	7cbb      	ldrb	r3, [r7, #18]
    2e84:	3b01      	subs	r3, #1
    2e86:	74bb      	strb	r3, [r7, #18]
    2e88:	1d3a      	adds	r2, r7, #4
    2e8a:	697b      	ldr	r3, [r7, #20]
    2e8c:	4413      	add	r3, r2
    2e8e:	7cba      	ldrb	r2, [r7, #18]
    2e90:	701a      	strb	r2, [r3, #0]
    2e92:	7cbb      	ldrb	r3, [r7, #18]
    2e94:	2110      	movs	r1, #16
    2e96:	4618      	mov	r0, r3
    2e98:	f001 fdec 	bl	4a74 <print_int>
    2e9c:	697b      	ldr	r3, [r7, #20]
    2e9e:	b2db      	uxtb	r3, r3
    2ea0:	461a      	mov	r2, r3
    2ea2:	00d2      	lsls	r2, r2, #3
    2ea4:	4413      	add	r3, r2
    2ea6:	005b      	lsls	r3, r3, #1
    2ea8:	b2db      	uxtb	r3, r3
    2eaa:	2108      	movs	r1, #8
    2eac:	4618      	mov	r0, r3
    2eae:	f001 fd85 	bl	49bc <set_cursor>
    2eb2:	2001      	movs	r0, #1
    2eb4:	f001 ff18 	bl	4ce8 <show_cursor>
    2eb8:	e027      	b.n	2f0a <buttons_map+0x1cc>
    2eba:	2300      	movs	r3, #0
    2ebc:	617b      	str	r3, [r7, #20]
    2ebe:	e00b      	b.n	2ed8 <buttons_map+0x19a>
    2ec0:	697b      	ldr	r3, [r7, #20]
    2ec2:	68fa      	ldr	r2, [r7, #12]
    2ec4:	4413      	add	r3, r2
    2ec6:	7819      	ldrb	r1, [r3, #0]
    2ec8:	1d3a      	adds	r2, r7, #4
    2eca:	697b      	ldr	r3, [r7, #20]
    2ecc:	4413      	add	r3, r2
    2ece:	460a      	mov	r2, r1
    2ed0:	701a      	strb	r2, [r3, #0]
    2ed2:	697b      	ldr	r3, [r7, #20]
    2ed4:	3301      	adds	r3, #1
    2ed6:	617b      	str	r3, [r7, #20]
    2ed8:	697b      	ldr	r3, [r7, #20]
    2eda:	2b07      	cmp	r3, #7
    2edc:	ddf0      	ble.n	2ec0 <buttons_map+0x182>
    2ede:	1d3b      	adds	r3, r7, #4
    2ee0:	4618      	mov	r0, r3
    2ee2:	f7ff ff0f 	bl	2d04 <display_keymap>
    2ee6:	2108      	movs	r1, #8
    2ee8:	2000      	movs	r0, #0
    2eea:	f001 fd67 	bl	49bc <set_cursor>
    2eee:	2300      	movs	r3, #0
    2ef0:	617b      	str	r3, [r7, #20]
    2ef2:	1d3a      	adds	r2, r7, #4
    2ef4:	697b      	ldr	r3, [r7, #20]
    2ef6:	4413      	add	r3, r2
    2ef8:	781b      	ldrb	r3, [r3, #0]
    2efa:	74bb      	strb	r3, [r7, #18]
    2efc:	e006      	b.n	2f0c <buttons_map+0x1ce>
    2efe:	bf00      	nop
    2f00:	e004      	b.n	2f0c <buttons_map+0x1ce>
    2f02:	bf00      	nop
    2f04:	e002      	b.n	2f0c <buttons_map+0x1ce>
    2f06:	bf00      	nop
    2f08:	e000      	b.n	2f0c <buttons_map+0x1ce>
    2f0a:	bf00      	nop
    2f0c:	7cfb      	ldrb	r3, [r7, #19]
    2f0e:	4618      	mov	r0, r3
    2f10:	f7fe fd86 	bl	1a20 <btn_wait_up>
    2f14:	7cfb      	ldrb	r3, [r7, #19]
    2f16:	2b20      	cmp	r3, #32
    2f18:	f47f af43 	bne.w	2da2 <buttons_map+0x64>
    2f1c:	2300      	movs	r3, #0
    2f1e:	617b      	str	r3, [r7, #20]
    2f20:	e00a      	b.n	2f38 <buttons_map+0x1fa>
    2f22:	697b      	ldr	r3, [r7, #20]
    2f24:	68fa      	ldr	r2, [r7, #12]
    2f26:	4413      	add	r3, r2
    2f28:	1d39      	adds	r1, r7, #4
    2f2a:	697a      	ldr	r2, [r7, #20]
    2f2c:	440a      	add	r2, r1
    2f2e:	7812      	ldrb	r2, [r2, #0]
    2f30:	701a      	strb	r2, [r3, #0]
    2f32:	697b      	ldr	r3, [r7, #20]
    2f34:	3301      	adds	r3, #1
    2f36:	617b      	str	r3, [r7, #20]
    2f38:	697b      	ldr	r3, [r7, #20]
    2f3a:	2b07      	cmp	r3, #7
    2f3c:	ddf1      	ble.n	2f22 <buttons_map+0x1e4>
    2f3e:	bf00      	nop
    2f40:	3718      	adds	r7, #24
    2f42:	46bd      	mov	sp, r7
    2f44:	bd80      	pop	{r7, pc}
    2f46:	bf00      	nop
    2f48:	000058c8 	.word	0x000058c8

00002f4c <print_games_list>:
    2f4c:	b580      	push	{r7, lr}
    2f4e:	b084      	sub	sp, #16
    2f50:	af00      	add	r7, sp, #0
    2f52:	6078      	str	r0, [r7, #4]
    2f54:	6039      	str	r1, [r7, #0]
    2f56:	2301      	movs	r3, #1
    2f58:	60fb      	str	r3, [r7, #12]
    2f5a:	2100      	movs	r1, #0
    2f5c:	2000      	movs	r0, #0
    2f5e:	f001 fd2d 	bl	49bc <set_cursor>
    2f62:	4815      	ldr	r0, [pc, #84]	; (2fb8 <print_games_list+0x6c>)
    2f64:	f001 fd56 	bl	4a14 <print>
    2f68:	e012      	b.n	2f90 <print_games_list+0x44>
    2f6a:	f001 fc07 	bl	477c <new_line>
    2f6e:	2020      	movs	r0, #32
    2f70:	f001 fc98 	bl	48a4 <put_char>
    2f74:	687a      	ldr	r2, [r7, #4]
    2f76:	4613      	mov	r3, r2
    2f78:	00db      	lsls	r3, r3, #3
    2f7a:	1a9b      	subs	r3, r3, r2
    2f7c:	009b      	lsls	r3, r3, #2
    2f7e:	4a0f      	ldr	r2, [pc, #60]	; (2fbc <print_games_list+0x70>)
    2f80:	4413      	add	r3, r2
    2f82:	3301      	adds	r3, #1
    2f84:	4618      	mov	r0, r3
    2f86:	f001 fd45 	bl	4a14 <print>
    2f8a:	687b      	ldr	r3, [r7, #4]
    2f8c:	3301      	adds	r3, #1
    2f8e:	607b      	str	r3, [r7, #4]
    2f90:	68fa      	ldr	r2, [r7, #12]
    2f92:	683b      	ldr	r3, [r7, #0]
    2f94:	429a      	cmp	r2, r3
    2f96:	d20a      	bcs.n	2fae <print_games_list+0x62>
    2f98:	4908      	ldr	r1, [pc, #32]	; (2fbc <print_games_list+0x70>)
    2f9a:	687a      	ldr	r2, [r7, #4]
    2f9c:	4613      	mov	r3, r2
    2f9e:	00db      	lsls	r3, r3, #3
    2fa0:	1a9b      	subs	r3, r3, r2
    2fa2:	009b      	lsls	r3, r3, #2
    2fa4:	440b      	add	r3, r1
    2fa6:	3310      	adds	r3, #16
    2fa8:	681b      	ldr	r3, [r3, #0]
    2faa:	2b00      	cmp	r3, #0
    2fac:	d1dd      	bne.n	2f6a <print_games_list+0x1e>
    2fae:	bf00      	nop
    2fb0:	3710      	adds	r7, #16
    2fb2:	46bd      	mov	sp, r7
    2fb4:	bd80      	pop	{r7, pc}
    2fb6:	bf00      	nop
    2fb8:	000058dc 	.word	0x000058dc
    2fbc:	20000008 	.word	0x20000008

00002fc0 <run_game>:
    2fc0:	b580      	push	{r7, lr}
    2fc2:	b082      	sub	sp, #8
    2fc4:	af00      	add	r7, sp, #0
    2fc6:	6078      	str	r0, [r7, #4]
    2fc8:	491b      	ldr	r1, [pc, #108]	; (3038 <run_game+0x78>)
    2fca:	687a      	ldr	r2, [r7, #4]
    2fcc:	4613      	mov	r3, r2
    2fce:	00db      	lsls	r3, r3, #3
    2fd0:	1a9b      	subs	r3, r3, r2
    2fd2:	009b      	lsls	r3, r3, #2
    2fd4:	440b      	add	r3, r1
    2fd6:	3314      	adds	r3, #20
    2fd8:	6818      	ldr	r0, [r3, #0]
    2fda:	4917      	ldr	r1, [pc, #92]	; (3038 <run_game+0x78>)
    2fdc:	687a      	ldr	r2, [r7, #4]
    2fde:	4613      	mov	r3, r2
    2fe0:	00db      	lsls	r3, r3, #3
    2fe2:	1a9b      	subs	r3, r3, r2
    2fe4:	009b      	lsls	r3, r3, #2
    2fe6:	440b      	add	r3, r1
    2fe8:	3310      	adds	r3, #16
    2fea:	681b      	ldr	r3, [r3, #0]
    2fec:	461a      	mov	r2, r3
    2fee:	4913      	ldr	r1, [pc, #76]	; (303c <run_game+0x7c>)
    2ff0:	f7fe fec9 	bl	1d86 <move>
    2ff4:	4910      	ldr	r1, [pc, #64]	; (3038 <run_game+0x78>)
    2ff6:	687a      	ldr	r2, [r7, #4]
    2ff8:	4613      	mov	r3, r2
    2ffa:	00db      	lsls	r3, r3, #3
    2ffc:	1a9b      	subs	r3, r3, r2
    2ffe:	009b      	lsls	r3, r3, #2
    3000:	440b      	add	r3, r1
    3002:	3318      	adds	r3, #24
    3004:	681b      	ldr	r3, [r3, #0]
    3006:	4618      	mov	r0, r3
    3008:	f7fe fc1c 	bl	1844 <set_keymap>
    300c:	490a      	ldr	r1, [pc, #40]	; (3038 <run_game+0x78>)
    300e:	687a      	ldr	r2, [r7, #4]
    3010:	4613      	mov	r3, r2
    3012:	00db      	lsls	r3, r3, #3
    3014:	1a9b      	subs	r3, r3, r2
    3016:	009b      	lsls	r3, r3, #2
    3018:	440b      	add	r3, r1
    301a:	781b      	ldrb	r3, [r3, #0]
    301c:	4618      	mov	r0, r3
    301e:	f002 f90b 	bl	5238 <set_video_mode>
    3022:	2000      	movs	r0, #0
    3024:	f7fd fa5c 	bl	4e0 <chip_vm>
    3028:	2000      	movs	r0, #0
    302a:	f002 f905 	bl	5238 <set_video_mode>
    302e:	bf00      	nop
    3030:	3708      	adds	r7, #8
    3032:	46bd      	mov	sp, r7
    3034:	bd80      	pop	{r7, pc}
    3036:	bf00      	nop
    3038:	20000008 	.word	0x20000008
    303c:	20000628 	.word	0x20000628

00003040 <select_game>:
    3040:	b580      	push	{r7, lr}
    3042:	b088      	sub	sp, #32
    3044:	af00      	add	r7, sp, #0
    3046:	2300      	movs	r3, #0
    3048:	613b      	str	r3, [r7, #16]
    304a:	2300      	movs	r3, #0
    304c:	61fb      	str	r3, [r7, #28]
    304e:	2301      	movs	r3, #1
    3050:	61bb      	str	r3, [r7, #24]
    3052:	2301      	movs	r3, #1
    3054:	617b      	str	r3, [r7, #20]
    3056:	f7fe fd5d 	bl	1b14 <games_count>
    305a:	4603      	mov	r3, r0
    305c:	60fb      	str	r3, [r7, #12]
    305e:	2000      	movs	r0, #0
    3060:	f002 f8ea 	bl	5238 <set_video_mode>
    3064:	f002 f980 	bl	5368 <get_video_params>
    3068:	60b8      	str	r0, [r7, #8]
    306a:	68bb      	ldr	r3, [r7, #8]
    306c:	89db      	ldrh	r3, [r3, #14]
    306e:	08db      	lsrs	r3, r3, #3
    3070:	b29b      	uxth	r3, r3
    3072:	607b      	str	r3, [r7, #4]
    3074:	e048      	b.n	3108 <select_game+0xc8>
    3076:	69fb      	ldr	r3, [r7, #28]
    3078:	687a      	ldr	r2, [r7, #4]
    307a:	4611      	mov	r1, r2
    307c:	4618      	mov	r0, r3
    307e:	f7ff ff65 	bl	2f4c <print_games_list>
    3082:	69bb      	ldr	r3, [r7, #24]
    3084:	b2db      	uxtb	r3, r3
    3086:	00db      	lsls	r3, r3, #3
    3088:	b2db      	uxtb	r3, r3
    308a:	4619      	mov	r1, r3
    308c:	2000      	movs	r0, #0
    308e:	f001 fc95 	bl	49bc <set_cursor>
    3092:	203e      	movs	r0, #62	; 0x3e
    3094:	f001 fc06 	bl	48a4 <put_char>
    3098:	f7fe fcea 	bl	1a70 <btn_wait_any>
    309c:	4603      	mov	r3, r0
    309e:	70fb      	strb	r3, [r7, #3]
    30a0:	78fb      	ldrb	r3, [r7, #3]
    30a2:	4618      	mov	r0, r3
    30a4:	f7fe fcbc 	bl	1a20 <btn_wait_up>
    30a8:	78fb      	ldrb	r3, [r7, #3]
    30aa:	2b04      	cmp	r3, #4
    30ac:	d016      	beq.n	30dc <select_game+0x9c>
    30ae:	2b04      	cmp	r3, #4
    30b0:	dc02      	bgt.n	30b8 <select_game+0x78>
    30b2:	2b02      	cmp	r3, #2
    30b4:	d005      	beq.n	30c2 <select_game+0x82>
    30b6:	e027      	b.n	3108 <select_game+0xc8>
    30b8:	2b20      	cmp	r3, #32
    30ba:	d022      	beq.n	3102 <select_game+0xc2>
    30bc:	2b40      	cmp	r3, #64	; 0x40
    30be:	d02e      	beq.n	311e <select_game+0xde>
    30c0:	e022      	b.n	3108 <select_game+0xc8>
    30c2:	69fb      	ldr	r3, [r7, #28]
    30c4:	2b00      	cmp	r3, #0
    30c6:	d002      	beq.n	30ce <select_game+0x8e>
    30c8:	69fb      	ldr	r3, [r7, #28]
    30ca:	3b01      	subs	r3, #1
    30cc:	61fb      	str	r3, [r7, #28]
    30ce:	69bb      	ldr	r3, [r7, #24]
    30d0:	2b01      	cmp	r3, #1
    30d2:	dd19      	ble.n	3108 <select_game+0xc8>
    30d4:	69bb      	ldr	r3, [r7, #24]
    30d6:	3b01      	subs	r3, #1
    30d8:	61bb      	str	r3, [r7, #24]
    30da:	e015      	b.n	3108 <select_game+0xc8>
    30dc:	69fa      	ldr	r2, [r7, #28]
    30de:	69bb      	ldr	r3, [r7, #24]
    30e0:	4413      	add	r3, r2
    30e2:	1e5a      	subs	r2, r3, #1
    30e4:	68fb      	ldr	r3, [r7, #12]
    30e6:	3b01      	subs	r3, #1
    30e8:	429a      	cmp	r2, r3
    30ea:	da0d      	bge.n	3108 <select_game+0xc8>
    30ec:	69bb      	ldr	r3, [r7, #24]
    30ee:	3301      	adds	r3, #1
    30f0:	61bb      	str	r3, [r7, #24]
    30f2:	69ba      	ldr	r2, [r7, #24]
    30f4:	687b      	ldr	r3, [r7, #4]
    30f6:	429a      	cmp	r2, r3
    30f8:	db06      	blt.n	3108 <select_game+0xc8>
    30fa:	69fb      	ldr	r3, [r7, #28]
    30fc:	3301      	adds	r3, #1
    30fe:	61fb      	str	r3, [r7, #28]
    3100:	e002      	b.n	3108 <select_game+0xc8>
    3102:	2300      	movs	r3, #0
    3104:	617b      	str	r3, [r7, #20]
    3106:	bf00      	nop
    3108:	697b      	ldr	r3, [r7, #20]
    310a:	2b00      	cmp	r3, #0
    310c:	d1b3      	bne.n	3076 <select_game+0x36>
    310e:	69fa      	ldr	r2, [r7, #28]
    3110:	69bb      	ldr	r3, [r7, #24]
    3112:	4413      	add	r3, r2
    3114:	3b01      	subs	r3, #1
    3116:	4618      	mov	r0, r3
    3118:	f7ff ff52 	bl	2fc0 <run_game>
    311c:	e000      	b.n	3120 <select_game+0xe0>
    311e:	bf00      	nop
    3120:	3720      	adds	r7, #32
    3122:	46bd      	mov	sp, r7
    3124:	bd80      	pop	{r7, pc}

00003126 <display_menu>:
    3126:	b580      	push	{r7, lr}
    3128:	b082      	sub	sp, #8
    312a:	af00      	add	r7, sp, #0
    312c:	f7ff f87c 	bl	2228 <gfx_cls>
    3130:	2300      	movs	r3, #0
    3132:	607b      	str	r3, [r7, #4]
    3134:	e009      	b.n	314a <display_menu+0x24>
    3136:	4a08      	ldr	r2, [pc, #32]	; (3158 <display_menu+0x32>)
    3138:	687b      	ldr	r3, [r7, #4]
    313a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
    313e:	4618      	mov	r0, r3
    3140:	f001 fc8b 	bl	4a5a <println>
    3144:	687b      	ldr	r3, [r7, #4]
    3146:	3301      	adds	r3, #1
    3148:	607b      	str	r3, [r7, #4]
    314a:	687b      	ldr	r3, [r7, #4]
    314c:	2b03      	cmp	r3, #3
    314e:	ddf2      	ble.n	3136 <display_menu+0x10>
    3150:	bf00      	nop
    3152:	3708      	adds	r7, #8
    3154:	46bd      	mov	sp, r7
    3156:	bd80      	pop	{r7, pc}
    3158:	2000010c 	.word	0x2000010c

0000315c <menu>:
    315c:	b580      	push	{r7, lr}
    315e:	b084      	sub	sp, #16
    3160:	af00      	add	r7, sp, #0
    3162:	2300      	movs	r3, #0
    3164:	60fb      	str	r3, [r7, #12]
    3166:	f002 f8ff 	bl	5368 <get_video_params>
    316a:	60b8      	str	r0, [r7, #8]
    316c:	f7ff ffdb 	bl	3126 <display_menu>
    3170:	68fb      	ldr	r3, [r7, #12]
    3172:	b2db      	uxtb	r3, r3
    3174:	00db      	lsls	r3, r3, #3
    3176:	b2db      	uxtb	r3, r3
    3178:	4619      	mov	r1, r3
    317a:	2000      	movs	r0, #0
    317c:	f001 fc1e 	bl	49bc <set_cursor>
    3180:	203e      	movs	r0, #62	; 0x3e
    3182:	f001 fb8f 	bl	48a4 <put_char>
    3186:	f7fe fc73 	bl	1a70 <btn_wait_any>
    318a:	4603      	mov	r3, r0
    318c:	71fb      	strb	r3, [r7, #7]
    318e:	79fb      	ldrb	r3, [r7, #7]
    3190:	4618      	mov	r0, r3
    3192:	f7fe fc45 	bl	1a20 <btn_wait_up>
    3196:	68fb      	ldr	r3, [r7, #12]
    3198:	b2db      	uxtb	r3, r3
    319a:	00db      	lsls	r3, r3, #3
    319c:	b2db      	uxtb	r3, r3
    319e:	4619      	mov	r1, r3
    31a0:	2000      	movs	r0, #0
    31a2:	f001 fc0b 	bl	49bc <set_cursor>
    31a6:	2020      	movs	r0, #32
    31a8:	f001 fb7c 	bl	48a4 <put_char>
    31ac:	79fb      	ldrb	r3, [r7, #7]
    31ae:	2b04      	cmp	r3, #4
    31b0:	d00a      	beq.n	31c8 <menu+0x6c>
    31b2:	2b20      	cmp	r3, #32
    31b4:	d00f      	beq.n	31d6 <menu+0x7a>
    31b6:	2b02      	cmp	r3, #2
    31b8:	d12e      	bne.n	3218 <menu+0xbc>
    31ba:	68fb      	ldr	r3, [r7, #12]
    31bc:	2b00      	cmp	r3, #0
    31be:	d028      	beq.n	3212 <menu+0xb6>
    31c0:	68fb      	ldr	r3, [r7, #12]
    31c2:	3b01      	subs	r3, #1
    31c4:	60fb      	str	r3, [r7, #12]
    31c6:	e024      	b.n	3212 <menu+0xb6>
    31c8:	68fb      	ldr	r3, [r7, #12]
    31ca:	2b02      	cmp	r3, #2
    31cc:	dc23      	bgt.n	3216 <menu+0xba>
    31ce:	68fb      	ldr	r3, [r7, #12]
    31d0:	3301      	adds	r3, #1
    31d2:	60fb      	str	r3, [r7, #12]
    31d4:	e01f      	b.n	3216 <menu+0xba>
    31d6:	68fb      	ldr	r3, [r7, #12]
    31d8:	2b03      	cmp	r3, #3
    31da:	d817      	bhi.n	320c <menu+0xb0>
    31dc:	a201      	add	r2, pc, #4	; (adr r2, 31e4 <menu+0x88>)
    31de:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    31e2:	bf00      	nop
    31e4:	000031f5 	.word	0x000031f5
    31e8:	000031fb 	.word	0x000031fb
    31ec:	00003201 	.word	0x00003201
    31f0:	00003207 	.word	0x00003207
    31f4:	f7ff fda3 	bl	2d3e <buttons_map>
    31f8:	e008      	b.n	320c <menu+0xb0>
    31fa:	f7ff ff21 	bl	3040 <select_game>
    31fe:	e005      	b.n	320c <menu+0xb0>
    3200:	f7ff fcb1 	bl	2b66 <video_test>
    3204:	e002      	b.n	320c <menu+0xb0>
    3206:	f7ff fd21 	bl	2c4c <sound_test>
    320a:	bf00      	nop
    320c:	f7ff ff8b 	bl	3126 <display_menu>
    3210:	e002      	b.n	3218 <menu+0xbc>
    3212:	bf00      	nop
    3214:	e7ac      	b.n	3170 <menu+0x14>
    3216:	bf00      	nop
    3218:	e7aa      	b.n	3170 <menu+0x14>

0000321a <main>:
    321a:	b580      	push	{r7, lr}
    321c:	b086      	sub	sp, #24
    321e:	af00      	add	r7, sp, #0
    3220:	f7ff fa22 	bl	2668 <set_sysclock>
    3224:	4b19      	ldr	r3, [pc, #100]	; (328c <main+0x72>)
    3226:	f640 021d 	movw	r2, #2077	; 0x81d
    322a:	619a      	str	r2, [r3, #24]
    322c:	2206      	movs	r2, #6
    322e:	210d      	movs	r1, #13
    3230:	4817      	ldr	r0, [pc, #92]	; (3290 <main+0x76>)
    3232:	f7fe fe95 	bl	1f60 <config_pin>
    3236:	4a16      	ldr	r2, [pc, #88]	; (3290 <main+0x76>)
    3238:	4b15      	ldr	r3, [pc, #84]	; (3290 <main+0x76>)
    323a:	68db      	ldr	r3, [r3, #12]
    323c:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    3240:	60d3      	str	r3, [r2, #12]
    3242:	f7fe fb1d 	bl	1880 <gamepad_init>
    3246:	f001 fd77 	bl	4d38 <tvout_init>
    324a:	f000 ff4d 	bl	40e8 <sound_init>
    324e:	2300      	movs	r3, #0
    3250:	617b      	str	r3, [r7, #20]
    3252:	e00b      	b.n	326c <main+0x52>
    3254:	f7fd f922 	bl	49c <rand>
    3258:	4603      	mov	r3, r0
    325a:	b2d9      	uxtb	r1, r3
    325c:	1d3a      	adds	r2, r7, #4
    325e:	697b      	ldr	r3, [r7, #20]
    3260:	4413      	add	r3, r2
    3262:	460a      	mov	r2, r1
    3264:	701a      	strb	r2, [r3, #0]
    3266:	697b      	ldr	r3, [r7, #20]
    3268:	3301      	adds	r3, #1
    326a:	617b      	str	r3, [r7, #20]
    326c:	697b      	ldr	r3, [r7, #20]
    326e:	2b0f      	cmp	r3, #15
    3270:	ddf0      	ble.n	3254 <main+0x3a>
    3272:	1d3b      	adds	r3, r7, #4
    3274:	4618      	mov	r0, r3
    3276:	f000 ffac 	bl	41d2 <load_sound_buffer>
    327a:	f7fe ffd5 	bl	2228 <gfx_cls>
    327e:	f7ff ff6d 	bl	315c <menu>
    3282:	bf00      	nop
    3284:	3718      	adds	r7, #24
    3286:	46bd      	mov	sp, r7
    3288:	bd80      	pop	{r7, pc}
    328a:	bf00      	nop
    328c:	40021000 	.word	0x40021000
    3290:	40011000 	.word	0x40011000

00003294 <enable_interrupt>:
    3294:	b480      	push	{r7}
    3296:	b083      	sub	sp, #12
    3298:	af00      	add	r7, sp, #0
    329a:	6078      	str	r0, [r7, #4]
    329c:	687b      	ldr	r3, [r7, #4]
    329e:	2b3b      	cmp	r3, #59	; 0x3b
    32a0:	dc17      	bgt.n	32d2 <enable_interrupt+0x3e>
    32a2:	687b      	ldr	r3, [r7, #4]
    32a4:	115b      	asrs	r3, r3, #5
    32a6:	009b      	lsls	r3, r3, #2
    32a8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    32ac:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    32b0:	687a      	ldr	r2, [r7, #4]
    32b2:	1152      	asrs	r2, r2, #5
    32b4:	0092      	lsls	r2, r2, #2
    32b6:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    32ba:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    32be:	6812      	ldr	r2, [r2, #0]
    32c0:	6879      	ldr	r1, [r7, #4]
    32c2:	f001 011f 	and.w	r1, r1, #31
    32c6:	2001      	movs	r0, #1
    32c8:	fa00 f101 	lsl.w	r1, r0, r1
    32cc:	430a      	orrs	r2, r1
    32ce:	601a      	str	r2, [r3, #0]
    32d0:	e000      	b.n	32d4 <enable_interrupt+0x40>
    32d2:	bf00      	nop
    32d4:	370c      	adds	r7, #12
    32d6:	46bd      	mov	sp, r7
    32d8:	bc80      	pop	{r7}
    32da:	4770      	bx	lr

000032dc <disable_interrupt>:
    32dc:	b480      	push	{r7}
    32de:	b083      	sub	sp, #12
    32e0:	af00      	add	r7, sp, #0
    32e2:	6078      	str	r0, [r7, #4]
    32e4:	687b      	ldr	r3, [r7, #4]
    32e6:	2b3b      	cmp	r3, #59	; 0x3b
    32e8:	dc0c      	bgt.n	3304 <disable_interrupt+0x28>
    32ea:	687b      	ldr	r3, [r7, #4]
    32ec:	115b      	asrs	r3, r3, #5
    32ee:	009a      	lsls	r2, r3, #2
    32f0:	4b07      	ldr	r3, [pc, #28]	; (3310 <disable_interrupt+0x34>)
    32f2:	4413      	add	r3, r2
    32f4:	687a      	ldr	r2, [r7, #4]
    32f6:	f002 021f 	and.w	r2, r2, #31
    32fa:	2101      	movs	r1, #1
    32fc:	fa01 f202 	lsl.w	r2, r1, r2
    3300:	601a      	str	r2, [r3, #0]
    3302:	e000      	b.n	3306 <disable_interrupt+0x2a>
    3304:	bf00      	nop
    3306:	370c      	adds	r7, #12
    3308:	46bd      	mov	sp, r7
    330a:	bc80      	pop	{r7}
    330c:	4770      	bx	lr
    330e:	bf00      	nop
    3310:	e000e180 	.word	0xe000e180

00003314 <get_pending>:
    3314:	b480      	push	{r7}
    3316:	b083      	sub	sp, #12
    3318:	af00      	add	r7, sp, #0
    331a:	6078      	str	r0, [r7, #4]
    331c:	687b      	ldr	r3, [r7, #4]
    331e:	2b3b      	cmp	r3, #59	; 0x3b
    3320:	dd01      	ble.n	3326 <get_pending+0x12>
    3322:	2300      	movs	r3, #0
    3324:	e00c      	b.n	3340 <get_pending+0x2c>
    3326:	687b      	ldr	r3, [r7, #4]
    3328:	115b      	asrs	r3, r3, #5
    332a:	009a      	lsls	r2, r3, #2
    332c:	4b07      	ldr	r3, [pc, #28]	; (334c <get_pending+0x38>)
    332e:	4413      	add	r3, r2
    3330:	681b      	ldr	r3, [r3, #0]
    3332:	687a      	ldr	r2, [r7, #4]
    3334:	f002 021f 	and.w	r2, r2, #31
    3338:	2101      	movs	r1, #1
    333a:	fa01 f202 	lsl.w	r2, r1, r2
    333e:	4013      	ands	r3, r2
    3340:	4618      	mov	r0, r3
    3342:	370c      	adds	r7, #12
    3344:	46bd      	mov	sp, r7
    3346:	bc80      	pop	{r7}
    3348:	4770      	bx	lr
    334a:	bf00      	nop
    334c:	e000e280 	.word	0xe000e280

00003350 <get_active>:
    3350:	b480      	push	{r7}
    3352:	b083      	sub	sp, #12
    3354:	af00      	add	r7, sp, #0
    3356:	6078      	str	r0, [r7, #4]
    3358:	687b      	ldr	r3, [r7, #4]
    335a:	2b3b      	cmp	r3, #59	; 0x3b
    335c:	dd01      	ble.n	3362 <get_active+0x12>
    335e:	2300      	movs	r3, #0
    3360:	e00e      	b.n	3380 <get_active+0x30>
    3362:	687b      	ldr	r3, [r7, #4]
    3364:	115b      	asrs	r3, r3, #5
    3366:	009b      	lsls	r3, r3, #2
    3368:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    336c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    3370:	681b      	ldr	r3, [r3, #0]
    3372:	687a      	ldr	r2, [r7, #4]
    3374:	f002 021f 	and.w	r2, r2, #31
    3378:	2101      	movs	r1, #1
    337a:	fa01 f202 	lsl.w	r2, r1, r2
    337e:	4013      	ands	r3, r2
    3380:	4618      	mov	r0, r3
    3382:	370c      	adds	r7, #12
    3384:	46bd      	mov	sp, r7
    3386:	bc80      	pop	{r7}
    3388:	4770      	bx	lr

0000338a <set_pending>:
    338a:	b480      	push	{r7}
    338c:	b083      	sub	sp, #12
    338e:	af00      	add	r7, sp, #0
    3390:	6078      	str	r0, [r7, #4]
    3392:	687b      	ldr	r3, [r7, #4]
    3394:	2b3b      	cmp	r3, #59	; 0x3b
    3396:	dc17      	bgt.n	33c8 <set_pending+0x3e>
    3398:	687b      	ldr	r3, [r7, #4]
    339a:	115b      	asrs	r3, r3, #5
    339c:	009b      	lsls	r3, r3, #2
    339e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    33a2:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    33a6:	687a      	ldr	r2, [r7, #4]
    33a8:	1152      	asrs	r2, r2, #5
    33aa:	0092      	lsls	r2, r2, #2
    33ac:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    33b0:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    33b4:	6812      	ldr	r2, [r2, #0]
    33b6:	6879      	ldr	r1, [r7, #4]
    33b8:	f001 011f 	and.w	r1, r1, #31
    33bc:	2001      	movs	r0, #1
    33be:	fa00 f101 	lsl.w	r1, r0, r1
    33c2:	430a      	orrs	r2, r1
    33c4:	601a      	str	r2, [r3, #0]
    33c6:	e000      	b.n	33ca <set_pending+0x40>
    33c8:	bf00      	nop
    33ca:	370c      	adds	r7, #12
    33cc:	46bd      	mov	sp, r7
    33ce:	bc80      	pop	{r7}
    33d0:	4770      	bx	lr

000033d2 <clear_pending>:
    33d2:	b480      	push	{r7}
    33d4:	b083      	sub	sp, #12
    33d6:	af00      	add	r7, sp, #0
    33d8:	6078      	str	r0, [r7, #4]
    33da:	687b      	ldr	r3, [r7, #4]
    33dc:	2b3b      	cmp	r3, #59	; 0x3b
    33de:	dc0c      	bgt.n	33fa <clear_pending+0x28>
    33e0:	687b      	ldr	r3, [r7, #4]
    33e2:	115b      	asrs	r3, r3, #5
    33e4:	009a      	lsls	r2, r3, #2
    33e6:	4b07      	ldr	r3, [pc, #28]	; (3404 <clear_pending+0x32>)
    33e8:	4413      	add	r3, r2
    33ea:	687a      	ldr	r2, [r7, #4]
    33ec:	f002 021f 	and.w	r2, r2, #31
    33f0:	2101      	movs	r1, #1
    33f2:	fa01 f202 	lsl.w	r2, r1, r2
    33f6:	601a      	str	r2, [r3, #0]
    33f8:	e000      	b.n	33fc <clear_pending+0x2a>
    33fa:	bf00      	nop
    33fc:	370c      	adds	r7, #12
    33fe:	46bd      	mov	sp, r7
    3400:	bc80      	pop	{r7}
    3402:	4770      	bx	lr
    3404:	e000e280 	.word	0xe000e280

00003408 <set_int_priority>:
    3408:	b480      	push	{r7}
    340a:	b083      	sub	sp, #12
    340c:	af00      	add	r7, sp, #0
    340e:	6078      	str	r0, [r7, #4]
    3410:	6039      	str	r1, [r7, #0]
    3412:	687b      	ldr	r3, [r7, #4]
    3414:	2b00      	cmp	r3, #0
    3416:	db0d      	blt.n	3434 <set_int_priority+0x2c>
    3418:	687b      	ldr	r3, [r7, #4]
    341a:	2b3b      	cmp	r3, #59	; 0x3b
    341c:	dc0a      	bgt.n	3434 <set_int_priority+0x2c>
    341e:	687b      	ldr	r3, [r7, #4]
    3420:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    3424:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    3428:	683a      	ldr	r2, [r7, #0]
    342a:	b2d2      	uxtb	r2, r2
    342c:	0112      	lsls	r2, r2, #4
    342e:	b2d2      	uxtb	r2, r2
    3430:	701a      	strb	r2, [r3, #0]
    3432:	e012      	b.n	345a <set_int_priority+0x52>
    3434:	687b      	ldr	r3, [r7, #4]
    3436:	2b00      	cmp	r3, #0
    3438:	da0f      	bge.n	345a <set_int_priority+0x52>
    343a:	687b      	ldr	r3, [r7, #4]
    343c:	f113 0f0f 	cmn.w	r3, #15
    3440:	db0b      	blt.n	345a <set_int_priority+0x52>
    3442:	687a      	ldr	r2, [r7, #4]
    3444:	f06f 0303 	mvn.w	r3, #3
    3448:	1a9b      	subs	r3, r3, r2
    344a:	461a      	mov	r2, r3
    344c:	4b05      	ldr	r3, [pc, #20]	; (3464 <set_int_priority+0x5c>)
    344e:	4413      	add	r3, r2
    3450:	683a      	ldr	r2, [r7, #0]
    3452:	b2d2      	uxtb	r2, r2
    3454:	0112      	lsls	r2, r2, #4
    3456:	b2d2      	uxtb	r2, r2
    3458:	701a      	strb	r2, [r3, #0]
    345a:	bf00      	nop
    345c:	370c      	adds	r7, #12
    345e:	46bd      	mov	sp, r7
    3460:	bc80      	pop	{r7}
    3462:	4770      	bx	lr
    3464:	e000ed18 	.word	0xe000ed18

00003468 <leap_year>:
    3468:	b480      	push	{r7}
    346a:	b083      	sub	sp, #12
    346c:	af00      	add	r7, sp, #0
    346e:	6078      	str	r0, [r7, #4]
    3470:	687b      	ldr	r3, [r7, #4]
    3472:	f003 0303 	and.w	r3, r3, #3
    3476:	2b00      	cmp	r3, #0
    3478:	d11a      	bne.n	34b0 <leap_year+0x48>
    347a:	687a      	ldr	r2, [r7, #4]
    347c:	4b0f      	ldr	r3, [pc, #60]	; (34bc <leap_year+0x54>)
    347e:	fba3 1302 	umull	r1, r3, r3, r2
    3482:	095b      	lsrs	r3, r3, #5
    3484:	2164      	movs	r1, #100	; 0x64
    3486:	fb01 f303 	mul.w	r3, r1, r3
    348a:	1ad3      	subs	r3, r2, r3
    348c:	2b00      	cmp	r3, #0
    348e:	d10d      	bne.n	34ac <leap_year+0x44>
    3490:	687a      	ldr	r2, [r7, #4]
    3492:	4b0a      	ldr	r3, [pc, #40]	; (34bc <leap_year+0x54>)
    3494:	fba3 1302 	umull	r1, r3, r3, r2
    3498:	09db      	lsrs	r3, r3, #7
    349a:	f44f 71c8 	mov.w	r1, #400	; 0x190
    349e:	fb01 f303 	mul.w	r3, r1, r3
    34a2:	1ad3      	subs	r3, r2, r3
    34a4:	2b00      	cmp	r3, #0
    34a6:	d001      	beq.n	34ac <leap_year+0x44>
    34a8:	2300      	movs	r3, #0
    34aa:	e002      	b.n	34b2 <leap_year+0x4a>
    34ac:	2301      	movs	r3, #1
    34ae:	e000      	b.n	34b2 <leap_year+0x4a>
    34b0:	2300      	movs	r3, #0
    34b2:	4618      	mov	r0, r3
    34b4:	370c      	adds	r7, #12
    34b6:	46bd      	mov	sp, r7
    34b8:	bc80      	pop	{r7}
    34ba:	4770      	bx	lr
    34bc:	51eb851f 	.word	0x51eb851f

000034c0 <sec_per_month>:
    34c0:	b480      	push	{r7}
    34c2:	b085      	sub	sp, #20
    34c4:	af00      	add	r7, sp, #0
    34c6:	6078      	str	r0, [r7, #4]
    34c8:	6039      	str	r1, [r7, #0]
    34ca:	4a0d      	ldr	r2, [pc, #52]	; (3500 <sec_per_month+0x40>)
    34cc:	683b      	ldr	r3, [r7, #0]
    34ce:	4413      	add	r3, r2
    34d0:	781b      	ldrb	r3, [r3, #0]
    34d2:	461a      	mov	r2, r3
    34d4:	4b0b      	ldr	r3, [pc, #44]	; (3504 <sec_per_month+0x44>)
    34d6:	fb03 f302 	mul.w	r3, r3, r2
    34da:	60fb      	str	r3, [r7, #12]
    34dc:	683b      	ldr	r3, [r7, #0]
    34de:	2b02      	cmp	r3, #2
    34e0:	d108      	bne.n	34f4 <sec_per_month+0x34>
    34e2:	687b      	ldr	r3, [r7, #4]
    34e4:	2b00      	cmp	r3, #0
    34e6:	d005      	beq.n	34f4 <sec_per_month+0x34>
    34e8:	68fb      	ldr	r3, [r7, #12]
    34ea:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    34ee:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    34f2:	60fb      	str	r3, [r7, #12]
    34f4:	68fb      	ldr	r3, [r7, #12]
    34f6:	4618      	mov	r0, r3
    34f8:	3714      	adds	r7, #20
    34fa:	46bd      	mov	sp, r7
    34fc:	bc80      	pop	{r7}
    34fe:	4770      	bx	lr
    3500:	000059d0 	.word	0x000059d0
    3504:	00015180 	.word	0x00015180

00003508 <get_date_time>:
    3508:	b580      	push	{r7, lr}
    350a:	b086      	sub	sp, #24
    350c:	af00      	add	r7, sp, #0
    350e:	6078      	str	r0, [r7, #4]
    3510:	4b66      	ldr	r3, [pc, #408]	; (36ac <get_date_time+0x1a4>)
    3512:	699b      	ldr	r3, [r3, #24]
    3514:	041a      	lsls	r2, r3, #16
    3516:	4b65      	ldr	r3, [pc, #404]	; (36ac <get_date_time+0x1a4>)
    3518:	69db      	ldr	r3, [r3, #28]
    351a:	4413      	add	r3, r2
    351c:	617b      	str	r3, [r7, #20]
    351e:	687b      	ldr	r3, [r7, #4]
    3520:	f240 72b2 	movw	r2, #1970	; 0x7b2
    3524:	811a      	strh	r2, [r3, #8]
    3526:	f240 70b2 	movw	r0, #1970	; 0x7b2
    352a:	f7ff ff9d 	bl	3468 <leap_year>
    352e:	6138      	str	r0, [r7, #16]
    3530:	e019      	b.n	3566 <get_date_time+0x5e>
    3532:	693b      	ldr	r3, [r7, #16]
    3534:	2b00      	cmp	r3, #0
    3536:	d006      	beq.n	3546 <get_date_time+0x3e>
    3538:	697b      	ldr	r3, [r7, #20]
    353a:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    353e:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    3542:	617b      	str	r3, [r7, #20]
    3544:	e003      	b.n	354e <get_date_time+0x46>
    3546:	697a      	ldr	r2, [r7, #20]
    3548:	4b59      	ldr	r3, [pc, #356]	; (36b0 <get_date_time+0x1a8>)
    354a:	4413      	add	r3, r2
    354c:	617b      	str	r3, [r7, #20]
    354e:	687b      	ldr	r3, [r7, #4]
    3550:	891b      	ldrh	r3, [r3, #8]
    3552:	3301      	adds	r3, #1
    3554:	b29a      	uxth	r2, r3
    3556:	687b      	ldr	r3, [r7, #4]
    3558:	811a      	strh	r2, [r3, #8]
    355a:	687b      	ldr	r3, [r7, #4]
    355c:	891b      	ldrh	r3, [r3, #8]
    355e:	4618      	mov	r0, r3
    3560:	f7ff ff82 	bl	3468 <leap_year>
    3564:	6138      	str	r0, [r7, #16]
    3566:	693b      	ldr	r3, [r7, #16]
    3568:	2b00      	cmp	r3, #0
    356a:	d103      	bne.n	3574 <get_date_time+0x6c>
    356c:	697b      	ldr	r3, [r7, #20]
    356e:	4a51      	ldr	r2, [pc, #324]	; (36b4 <get_date_time+0x1ac>)
    3570:	4293      	cmp	r3, r2
    3572:	d8de      	bhi.n	3532 <get_date_time+0x2a>
    3574:	693b      	ldr	r3, [r7, #16]
    3576:	2b00      	cmp	r3, #0
    3578:	d003      	beq.n	3582 <get_date_time+0x7a>
    357a:	697b      	ldr	r3, [r7, #20]
    357c:	4a4e      	ldr	r2, [pc, #312]	; (36b8 <get_date_time+0x1b0>)
    357e:	4293      	cmp	r3, r2
    3580:	d8d7      	bhi.n	3532 <get_date_time+0x2a>
    3582:	687a      	ldr	r2, [r7, #4]
    3584:	8853      	ldrh	r3, [r2, #2]
    3586:	2101      	movs	r1, #1
    3588:	f361 1389 	bfi	r3, r1, #6, #4
    358c:	8053      	strh	r3, [r2, #2]
    358e:	687a      	ldr	r2, [r7, #4]
    3590:	7893      	ldrb	r3, [r2, #2]
    3592:	2101      	movs	r1, #1
    3594:	f361 0345 	bfi	r3, r1, #1, #5
    3598:	7093      	strb	r3, [r2, #2]
    359a:	687a      	ldr	r2, [r7, #4]
    359c:	6813      	ldr	r3, [r2, #0]
    359e:	f36f 3310 	bfc	r3, #12, #5
    35a2:	6013      	str	r3, [r2, #0]
    35a4:	687a      	ldr	r2, [r7, #4]
    35a6:	8813      	ldrh	r3, [r2, #0]
    35a8:	f36f 138b 	bfc	r3, #6, #6
    35ac:	8013      	strh	r3, [r2, #0]
    35ae:	687a      	ldr	r2, [r7, #4]
    35b0:	7813      	ldrb	r3, [r2, #0]
    35b2:	f36f 0305 	bfc	r3, #0, #6
    35b6:	7013      	strb	r3, [r2, #0]
    35b8:	e011      	b.n	35de <get_date_time+0xd6>
    35ba:	687b      	ldr	r3, [r7, #4]
    35bc:	885b      	ldrh	r3, [r3, #2]
    35be:	f3c3 1383 	ubfx	r3, r3, #6, #4
    35c2:	b2db      	uxtb	r3, r3
    35c4:	3301      	adds	r3, #1
    35c6:	f003 030f 	and.w	r3, r3, #15
    35ca:	b2d9      	uxtb	r1, r3
    35cc:	687a      	ldr	r2, [r7, #4]
    35ce:	8853      	ldrh	r3, [r2, #2]
    35d0:	f361 1389 	bfi	r3, r1, #6, #4
    35d4:	8053      	strh	r3, [r2, #2]
    35d6:	697a      	ldr	r2, [r7, #20]
    35d8:	68fb      	ldr	r3, [r7, #12]
    35da:	1ad3      	subs	r3, r2, r3
    35dc:	617b      	str	r3, [r7, #20]
    35de:	687b      	ldr	r3, [r7, #4]
    35e0:	885b      	ldrh	r3, [r3, #2]
    35e2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    35e6:	b2db      	uxtb	r3, r3
    35e8:	4619      	mov	r1, r3
    35ea:	6938      	ldr	r0, [r7, #16]
    35ec:	f7ff ff68 	bl	34c0 <sec_per_month>
    35f0:	60f8      	str	r0, [r7, #12]
    35f2:	68fa      	ldr	r2, [r7, #12]
    35f4:	697b      	ldr	r3, [r7, #20]
    35f6:	429a      	cmp	r2, r3
    35f8:	d3df      	bcc.n	35ba <get_date_time+0xb2>
    35fa:	697b      	ldr	r3, [r7, #20]
    35fc:	4a2f      	ldr	r2, [pc, #188]	; (36bc <get_date_time+0x1b4>)
    35fe:	fba2 2303 	umull	r2, r3, r2, r3
    3602:	0c1b      	lsrs	r3, r3, #16
    3604:	b2db      	uxtb	r3, r3
    3606:	3301      	adds	r3, #1
    3608:	b2db      	uxtb	r3, r3
    360a:	f003 031f 	and.w	r3, r3, #31
    360e:	b2d9      	uxtb	r1, r3
    3610:	687a      	ldr	r2, [r7, #4]
    3612:	7893      	ldrb	r3, [r2, #2]
    3614:	f361 0345 	bfi	r3, r1, #1, #5
    3618:	7093      	strb	r3, [r2, #2]
    361a:	697b      	ldr	r3, [r7, #20]
    361c:	4a27      	ldr	r2, [pc, #156]	; (36bc <get_date_time+0x1b4>)
    361e:	fba2 1203 	umull	r1, r2, r2, r3
    3622:	0c12      	lsrs	r2, r2, #16
    3624:	4926      	ldr	r1, [pc, #152]	; (36c0 <get_date_time+0x1b8>)
    3626:	fb01 f202 	mul.w	r2, r1, r2
    362a:	1a9b      	subs	r3, r3, r2
    362c:	617b      	str	r3, [r7, #20]
    362e:	697b      	ldr	r3, [r7, #20]
    3630:	4a24      	ldr	r2, [pc, #144]	; (36c4 <get_date_time+0x1bc>)
    3632:	fba2 2303 	umull	r2, r3, r2, r3
    3636:	0adb      	lsrs	r3, r3, #11
    3638:	b2db      	uxtb	r3, r3
    363a:	f003 031f 	and.w	r3, r3, #31
    363e:	b2d9      	uxtb	r1, r3
    3640:	687a      	ldr	r2, [r7, #4]
    3642:	6813      	ldr	r3, [r2, #0]
    3644:	f361 3310 	bfi	r3, r1, #12, #5
    3648:	6013      	str	r3, [r2, #0]
    364a:	697b      	ldr	r3, [r7, #20]
    364c:	4a1d      	ldr	r2, [pc, #116]	; (36c4 <get_date_time+0x1bc>)
    364e:	fba2 1203 	umull	r1, r2, r2, r3
    3652:	0ad2      	lsrs	r2, r2, #11
    3654:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    3658:	fb01 f202 	mul.w	r2, r1, r2
    365c:	1a9b      	subs	r3, r3, r2
    365e:	617b      	str	r3, [r7, #20]
    3660:	697b      	ldr	r3, [r7, #20]
    3662:	4a19      	ldr	r2, [pc, #100]	; (36c8 <get_date_time+0x1c0>)
    3664:	fba2 2303 	umull	r2, r3, r2, r3
    3668:	095b      	lsrs	r3, r3, #5
    366a:	b2db      	uxtb	r3, r3
    366c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3670:	b2d9      	uxtb	r1, r3
    3672:	687a      	ldr	r2, [r7, #4]
    3674:	8813      	ldrh	r3, [r2, #0]
    3676:	f361 138b 	bfi	r3, r1, #6, #6
    367a:	8013      	strh	r3, [r2, #0]
    367c:	6979      	ldr	r1, [r7, #20]
    367e:	4b12      	ldr	r3, [pc, #72]	; (36c8 <get_date_time+0x1c0>)
    3680:	fba3 2301 	umull	r2, r3, r3, r1
    3684:	095a      	lsrs	r2, r3, #5
    3686:	4613      	mov	r3, r2
    3688:	011b      	lsls	r3, r3, #4
    368a:	1a9b      	subs	r3, r3, r2
    368c:	009b      	lsls	r3, r3, #2
    368e:	1aca      	subs	r2, r1, r3
    3690:	b2d3      	uxtb	r3, r2
    3692:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3696:	b2d9      	uxtb	r1, r3
    3698:	687a      	ldr	r2, [r7, #4]
    369a:	7813      	ldrb	r3, [r2, #0]
    369c:	f361 0305 	bfi	r3, r1, #0, #6
    36a0:	7013      	strb	r3, [r2, #0]
    36a2:	bf00      	nop
    36a4:	3718      	adds	r7, #24
    36a6:	46bd      	mov	sp, r7
    36a8:	bd80      	pop	{r7, pc}
    36aa:	bf00      	nop
    36ac:	40002800 	.word	0x40002800
    36b0:	fe1ecc80 	.word	0xfe1ecc80
    36b4:	01e1337f 	.word	0x01e1337f
    36b8:	01e284ff 	.word	0x01e284ff
    36bc:	c22e4507 	.word	0xc22e4507
    36c0:	00015180 	.word	0x00015180
    36c4:	91a2b3c5 	.word	0x91a2b3c5
    36c8:	88888889 	.word	0x88888889

000036cc <set_date_time>:
    36cc:	b580      	push	{r7, lr}
    36ce:	b086      	sub	sp, #24
    36d0:	af00      	add	r7, sp, #0
    36d2:	6078      	str	r0, [r7, #4]
    36d4:	2300      	movs	r3, #0
    36d6:	613b      	str	r3, [r7, #16]
    36d8:	687b      	ldr	r3, [r7, #4]
    36da:	891b      	ldrh	r3, [r3, #8]
    36dc:	f240 72b1 	movw	r2, #1969	; 0x7b1
    36e0:	4293      	cmp	r3, r2
    36e2:	d803      	bhi.n	36ec <set_date_time+0x20>
    36e4:	687b      	ldr	r3, [r7, #4]
    36e6:	f240 72b2 	movw	r2, #1970	; 0x7b2
    36ea:	811a      	strh	r2, [r3, #8]
    36ec:	687b      	ldr	r3, [r7, #4]
    36ee:	891b      	ldrh	r3, [r3, #8]
    36f0:	f640 023a 	movw	r2, #2106	; 0x83a
    36f4:	4293      	cmp	r3, r2
    36f6:	d903      	bls.n	3700 <set_date_time+0x34>
    36f8:	687b      	ldr	r3, [r7, #4]
    36fa:	f640 023a 	movw	r2, #2106	; 0x83a
    36fe:	811a      	strh	r2, [r3, #8]
    3700:	687b      	ldr	r3, [r7, #4]
    3702:	891b      	ldrh	r3, [r3, #8]
    3704:	4618      	mov	r0, r3
    3706:	f7ff feaf 	bl	3468 <leap_year>
    370a:	60f8      	str	r0, [r7, #12]
    370c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    3710:	617b      	str	r3, [r7, #20]
    3712:	e013      	b.n	373c <set_date_time+0x70>
    3714:	6978      	ldr	r0, [r7, #20]
    3716:	f7ff fea7 	bl	3468 <leap_year>
    371a:	4603      	mov	r3, r0
    371c:	2b00      	cmp	r3, #0
    371e:	d006      	beq.n	372e <set_date_time+0x62>
    3720:	693b      	ldr	r3, [r7, #16]
    3722:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    3726:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    372a:	613b      	str	r3, [r7, #16]
    372c:	e003      	b.n	3736 <set_date_time+0x6a>
    372e:	693a      	ldr	r2, [r7, #16]
    3730:	4b42      	ldr	r3, [pc, #264]	; (383c <set_date_time+0x170>)
    3732:	4413      	add	r3, r2
    3734:	613b      	str	r3, [r7, #16]
    3736:	697b      	ldr	r3, [r7, #20]
    3738:	3301      	adds	r3, #1
    373a:	617b      	str	r3, [r7, #20]
    373c:	687b      	ldr	r3, [r7, #4]
    373e:	891b      	ldrh	r3, [r3, #8]
    3740:	461a      	mov	r2, r3
    3742:	697b      	ldr	r3, [r7, #20]
    3744:	429a      	cmp	r2, r3
    3746:	d8e5      	bhi.n	3714 <set_date_time+0x48>
    3748:	2301      	movs	r3, #1
    374a:	617b      	str	r3, [r7, #20]
    374c:	e00a      	b.n	3764 <set_date_time+0x98>
    374e:	6979      	ldr	r1, [r7, #20]
    3750:	68f8      	ldr	r0, [r7, #12]
    3752:	f7ff feb5 	bl	34c0 <sec_per_month>
    3756:	4602      	mov	r2, r0
    3758:	693b      	ldr	r3, [r7, #16]
    375a:	4413      	add	r3, r2
    375c:	613b      	str	r3, [r7, #16]
    375e:	697b      	ldr	r3, [r7, #20]
    3760:	3301      	adds	r3, #1
    3762:	617b      	str	r3, [r7, #20]
    3764:	687b      	ldr	r3, [r7, #4]
    3766:	885b      	ldrh	r3, [r3, #2]
    3768:	f3c3 1383 	ubfx	r3, r3, #6, #4
    376c:	b2db      	uxtb	r3, r3
    376e:	461a      	mov	r2, r3
    3770:	697b      	ldr	r3, [r7, #20]
    3772:	429a      	cmp	r2, r3
    3774:	d8eb      	bhi.n	374e <set_date_time+0x82>
    3776:	687b      	ldr	r3, [r7, #4]
    3778:	789b      	ldrb	r3, [r3, #2]
    377a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    377e:	b2db      	uxtb	r3, r3
    3780:	3b01      	subs	r3, #1
    3782:	4a2f      	ldr	r2, [pc, #188]	; (3840 <set_date_time+0x174>)
    3784:	fb02 f303 	mul.w	r3, r2, r3
    3788:	461a      	mov	r2, r3
    378a:	693b      	ldr	r3, [r7, #16]
    378c:	4413      	add	r3, r2
    378e:	613b      	str	r3, [r7, #16]
    3790:	687b      	ldr	r3, [r7, #4]
    3792:	681b      	ldr	r3, [r3, #0]
    3794:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3798:	b2db      	uxtb	r3, r3
    379a:	461a      	mov	r2, r3
    379c:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    37a0:	fb03 f302 	mul.w	r3, r3, r2
    37a4:	461a      	mov	r2, r3
    37a6:	693b      	ldr	r3, [r7, #16]
    37a8:	4413      	add	r3, r2
    37aa:	613b      	str	r3, [r7, #16]
    37ac:	687b      	ldr	r3, [r7, #4]
    37ae:	881b      	ldrh	r3, [r3, #0]
    37b0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    37b4:	b2db      	uxtb	r3, r3
    37b6:	461a      	mov	r2, r3
    37b8:	4613      	mov	r3, r2
    37ba:	011b      	lsls	r3, r3, #4
    37bc:	1a9b      	subs	r3, r3, r2
    37be:	009b      	lsls	r3, r3, #2
    37c0:	461a      	mov	r2, r3
    37c2:	693b      	ldr	r3, [r7, #16]
    37c4:	4413      	add	r3, r2
    37c6:	613b      	str	r3, [r7, #16]
    37c8:	687b      	ldr	r3, [r7, #4]
    37ca:	781b      	ldrb	r3, [r3, #0]
    37cc:	f3c3 0305 	ubfx	r3, r3, #0, #6
    37d0:	b2db      	uxtb	r3, r3
    37d2:	461a      	mov	r2, r3
    37d4:	693b      	ldr	r3, [r7, #16]
    37d6:	4413      	add	r3, r2
    37d8:	613b      	str	r3, [r7, #16]
    37da:	4a1a      	ldr	r2, [pc, #104]	; (3844 <set_date_time+0x178>)
    37dc:	4b19      	ldr	r3, [pc, #100]	; (3844 <set_date_time+0x178>)
    37de:	69db      	ldr	r3, [r3, #28]
    37e0:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    37e4:	61d3      	str	r3, [r2, #28]
    37e6:	4a18      	ldr	r2, [pc, #96]	; (3848 <set_date_time+0x17c>)
    37e8:	4b17      	ldr	r3, [pc, #92]	; (3848 <set_date_time+0x17c>)
    37ea:	681b      	ldr	r3, [r3, #0]
    37ec:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    37f0:	6013      	str	r3, [r2, #0]
    37f2:	4a16      	ldr	r2, [pc, #88]	; (384c <set_date_time+0x180>)
    37f4:	4b15      	ldr	r3, [pc, #84]	; (384c <set_date_time+0x180>)
    37f6:	685b      	ldr	r3, [r3, #4]
    37f8:	f043 0310 	orr.w	r3, r3, #16
    37fc:	6053      	str	r3, [r2, #4]
    37fe:	4a13      	ldr	r2, [pc, #76]	; (384c <set_date_time+0x180>)
    3800:	693b      	ldr	r3, [r7, #16]
    3802:	0c1b      	lsrs	r3, r3, #16
    3804:	6193      	str	r3, [r2, #24]
    3806:	4a11      	ldr	r2, [pc, #68]	; (384c <set_date_time+0x180>)
    3808:	693b      	ldr	r3, [r7, #16]
    380a:	b29b      	uxth	r3, r3
    380c:	61d3      	str	r3, [r2, #28]
    380e:	4a0f      	ldr	r2, [pc, #60]	; (384c <set_date_time+0x180>)
    3810:	4b0e      	ldr	r3, [pc, #56]	; (384c <set_date_time+0x180>)
    3812:	685b      	ldr	r3, [r3, #4]
    3814:	f023 0310 	bic.w	r3, r3, #16
    3818:	6053      	str	r3, [r2, #4]
    381a:	bf00      	nop
    381c:	4b0b      	ldr	r3, [pc, #44]	; (384c <set_date_time+0x180>)
    381e:	685b      	ldr	r3, [r3, #4]
    3820:	f003 0320 	and.w	r3, r3, #32
    3824:	2b00      	cmp	r3, #0
    3826:	d0f9      	beq.n	381c <set_date_time+0x150>
    3828:	4a07      	ldr	r2, [pc, #28]	; (3848 <set_date_time+0x17c>)
    382a:	4b07      	ldr	r3, [pc, #28]	; (3848 <set_date_time+0x17c>)
    382c:	681b      	ldr	r3, [r3, #0]
    382e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3832:	6013      	str	r3, [r2, #0]
    3834:	bf00      	nop
    3836:	3718      	adds	r7, #24
    3838:	46bd      	mov	sp, r7
    383a:	bd80      	pop	{r7, pc}
    383c:	01e13380 	.word	0x01e13380
    3840:	00015180 	.word	0x00015180
    3844:	40021000 	.word	0x40021000
    3848:	40007000 	.word	0x40007000
    384c:	40002800 	.word	0x40002800

00003850 <rtc_init>:
    3850:	b580      	push	{r7, lr}
    3852:	b082      	sub	sp, #8
    3854:	af00      	add	r7, sp, #0
    3856:	6078      	str	r0, [r7, #4]
    3858:	6039      	str	r1, [r7, #0]
    385a:	4b4a      	ldr	r3, [pc, #296]	; (3984 <rtc_init+0x134>)
    385c:	685b      	ldr	r3, [r3, #4]
    385e:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3862:	4293      	cmp	r3, r2
    3864:	f000 8082 	beq.w	396c <rtc_init+0x11c>
    3868:	4a47      	ldr	r2, [pc, #284]	; (3988 <rtc_init+0x138>)
    386a:	4b47      	ldr	r3, [pc, #284]	; (3988 <rtc_init+0x138>)
    386c:	69db      	ldr	r3, [r3, #28]
    386e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    3872:	61d3      	str	r3, [r2, #28]
    3874:	4a45      	ldr	r2, [pc, #276]	; (398c <rtc_init+0x13c>)
    3876:	4b45      	ldr	r3, [pc, #276]	; (398c <rtc_init+0x13c>)
    3878:	681b      	ldr	r3, [r3, #0]
    387a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    387e:	6013      	str	r3, [r2, #0]
    3880:	4a41      	ldr	r2, [pc, #260]	; (3988 <rtc_init+0x138>)
    3882:	4b41      	ldr	r3, [pc, #260]	; (3988 <rtc_init+0x138>)
    3884:	6a1b      	ldr	r3, [r3, #32]
    3886:	f043 0301 	orr.w	r3, r3, #1
    388a:	6213      	str	r3, [r2, #32]
    388c:	bf00      	nop
    388e:	4b3e      	ldr	r3, [pc, #248]	; (3988 <rtc_init+0x138>)
    3890:	6a1b      	ldr	r3, [r3, #32]
    3892:	f003 0302 	and.w	r3, r3, #2
    3896:	2b00      	cmp	r3, #0
    3898:	d0f9      	beq.n	388e <rtc_init+0x3e>
    389a:	4a3b      	ldr	r2, [pc, #236]	; (3988 <rtc_init+0x138>)
    389c:	4b3a      	ldr	r3, [pc, #232]	; (3988 <rtc_init+0x138>)
    389e:	6a1b      	ldr	r3, [r3, #32]
    38a0:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    38a4:	6213      	str	r3, [r2, #32]
    38a6:	bf00      	nop
    38a8:	4b39      	ldr	r3, [pc, #228]	; (3990 <rtc_init+0x140>)
    38aa:	685b      	ldr	r3, [r3, #4]
    38ac:	f003 0308 	and.w	r3, r3, #8
    38b0:	2b00      	cmp	r3, #0
    38b2:	d0f9      	beq.n	38a8 <rtc_init+0x58>
    38b4:	bf00      	nop
    38b6:	4b36      	ldr	r3, [pc, #216]	; (3990 <rtc_init+0x140>)
    38b8:	685b      	ldr	r3, [r3, #4]
    38ba:	f003 0320 	and.w	r3, r3, #32
    38be:	2b00      	cmp	r3, #0
    38c0:	d0f9      	beq.n	38b6 <rtc_init+0x66>
    38c2:	4a33      	ldr	r2, [pc, #204]	; (3990 <rtc_init+0x140>)
    38c4:	4b32      	ldr	r3, [pc, #200]	; (3990 <rtc_init+0x140>)
    38c6:	685b      	ldr	r3, [r3, #4]
    38c8:	f043 0310 	orr.w	r3, r3, #16
    38cc:	6053      	str	r3, [r2, #4]
    38ce:	bf00      	nop
    38d0:	4b2f      	ldr	r3, [pc, #188]	; (3990 <rtc_init+0x140>)
    38d2:	685b      	ldr	r3, [r3, #4]
    38d4:	f003 0320 	and.w	r3, r3, #32
    38d8:	2b00      	cmp	r3, #0
    38da:	d0f9      	beq.n	38d0 <rtc_init+0x80>
    38dc:	492c      	ldr	r1, [pc, #176]	; (3990 <rtc_init+0x140>)
    38de:	4b2c      	ldr	r3, [pc, #176]	; (3990 <rtc_init+0x140>)
    38e0:	681a      	ldr	r2, [r3, #0]
    38e2:	683b      	ldr	r3, [r7, #0]
    38e4:	4313      	orrs	r3, r2
    38e6:	600b      	str	r3, [r1, #0]
    38e8:	bf00      	nop
    38ea:	4b29      	ldr	r3, [pc, #164]	; (3990 <rtc_init+0x140>)
    38ec:	685b      	ldr	r3, [r3, #4]
    38ee:	f003 0320 	and.w	r3, r3, #32
    38f2:	2b00      	cmp	r3, #0
    38f4:	d0f9      	beq.n	38ea <rtc_init+0x9a>
    38f6:	4a26      	ldr	r2, [pc, #152]	; (3990 <rtc_init+0x140>)
    38f8:	687b      	ldr	r3, [r7, #4]
    38fa:	03db      	lsls	r3, r3, #15
    38fc:	4925      	ldr	r1, [pc, #148]	; (3994 <rtc_init+0x144>)
    38fe:	fba1 1303 	umull	r1, r3, r1, r3
    3902:	099b      	lsrs	r3, r3, #6
    3904:	3b01      	subs	r3, #1
    3906:	b29b      	uxth	r3, r3
    3908:	60d3      	str	r3, [r2, #12]
    390a:	bf00      	nop
    390c:	4b20      	ldr	r3, [pc, #128]	; (3990 <rtc_init+0x140>)
    390e:	685b      	ldr	r3, [r3, #4]
    3910:	f003 0320 	and.w	r3, r3, #32
    3914:	2b00      	cmp	r3, #0
    3916:	d0f9      	beq.n	390c <rtc_init+0xbc>
    3918:	4a1d      	ldr	r2, [pc, #116]	; (3990 <rtc_init+0x140>)
    391a:	687b      	ldr	r3, [r7, #4]
    391c:	03db      	lsls	r3, r3, #15
    391e:	491d      	ldr	r1, [pc, #116]	; (3994 <rtc_init+0x144>)
    3920:	fba1 1303 	umull	r1, r3, r1, r3
    3924:	099b      	lsrs	r3, r3, #6
    3926:	3b01      	subs	r3, #1
    3928:	0c1b      	lsrs	r3, r3, #16
    392a:	f003 030f 	and.w	r3, r3, #15
    392e:	6093      	str	r3, [r2, #8]
    3930:	bf00      	nop
    3932:	4b17      	ldr	r3, [pc, #92]	; (3990 <rtc_init+0x140>)
    3934:	685b      	ldr	r3, [r3, #4]
    3936:	f003 0320 	and.w	r3, r3, #32
    393a:	2b00      	cmp	r3, #0
    393c:	d0f9      	beq.n	3932 <rtc_init+0xe2>
    393e:	4b11      	ldr	r3, [pc, #68]	; (3984 <rtc_init+0x134>)
    3940:	f64a 2255 	movw	r2, #43605	; 0xaa55
    3944:	605a      	str	r2, [r3, #4]
    3946:	4a12      	ldr	r2, [pc, #72]	; (3990 <rtc_init+0x140>)
    3948:	4b11      	ldr	r3, [pc, #68]	; (3990 <rtc_init+0x140>)
    394a:	685b      	ldr	r3, [r3, #4]
    394c:	f023 0310 	bic.w	r3, r3, #16
    3950:	6053      	str	r3, [r2, #4]
    3952:	bf00      	nop
    3954:	4b0e      	ldr	r3, [pc, #56]	; (3990 <rtc_init+0x140>)
    3956:	685b      	ldr	r3, [r3, #4]
    3958:	f003 0320 	and.w	r3, r3, #32
    395c:	2b00      	cmp	r3, #0
    395e:	d0f9      	beq.n	3954 <rtc_init+0x104>
    3960:	4a0a      	ldr	r2, [pc, #40]	; (398c <rtc_init+0x13c>)
    3962:	4b0a      	ldr	r3, [pc, #40]	; (398c <rtc_init+0x13c>)
    3964:	681b      	ldr	r3, [r3, #0]
    3966:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    396a:	6013      	str	r3, [r2, #0]
    396c:	210f      	movs	r1, #15
    396e:	2003      	movs	r0, #3
    3970:	f7ff fd4a 	bl	3408 <set_int_priority>
    3974:	2003      	movs	r0, #3
    3976:	f7ff fc8d 	bl	3294 <enable_interrupt>
    397a:	bf00      	nop
    397c:	3708      	adds	r7, #8
    397e:	46bd      	mov	sp, r7
    3980:	bd80      	pop	{r7, pc}
    3982:	bf00      	nop
    3984:	40006c00 	.word	0x40006c00
    3988:	40021000 	.word	0x40021000
    398c:	40007000 	.word	0x40007000
    3990:	40002800 	.word	0x40002800
    3994:	10624dd3 	.word	0x10624dd3

00003998 <reset_backup_domain>:
    3998:	b480      	push	{r7}
    399a:	af00      	add	r7, sp, #0
    399c:	4a0a      	ldr	r2, [pc, #40]	; (39c8 <reset_backup_domain+0x30>)
    399e:	4b0a      	ldr	r3, [pc, #40]	; (39c8 <reset_backup_domain+0x30>)
    39a0:	69db      	ldr	r3, [r3, #28]
    39a2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    39a6:	61d3      	str	r3, [r2, #28]
    39a8:	4a07      	ldr	r2, [pc, #28]	; (39c8 <reset_backup_domain+0x30>)
    39aa:	4b07      	ldr	r3, [pc, #28]	; (39c8 <reset_backup_domain+0x30>)
    39ac:	6a1b      	ldr	r3, [r3, #32]
    39ae:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    39b2:	6213      	str	r3, [r2, #32]
    39b4:	4a04      	ldr	r2, [pc, #16]	; (39c8 <reset_backup_domain+0x30>)
    39b6:	4b04      	ldr	r3, [pc, #16]	; (39c8 <reset_backup_domain+0x30>)
    39b8:	6a1b      	ldr	r3, [r3, #32]
    39ba:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    39be:	6213      	str	r3, [r2, #32]
    39c0:	bf00      	nop
    39c2:	46bd      	mov	sp, r7
    39c4:	bc80      	pop	{r7}
    39c6:	4770      	bx	lr
    39c8:	40021000 	.word	0x40021000

000039cc <rtc_clock_trim>:
    39cc:	b480      	push	{r7}
    39ce:	b083      	sub	sp, #12
    39d0:	af00      	add	r7, sp, #0
    39d2:	6078      	str	r0, [r7, #4]
    39d4:	4a34      	ldr	r2, [pc, #208]	; (3aa8 <rtc_clock_trim+0xdc>)
    39d6:	4b34      	ldr	r3, [pc, #208]	; (3aa8 <rtc_clock_trim+0xdc>)
    39d8:	69db      	ldr	r3, [r3, #28]
    39da:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    39de:	61d3      	str	r3, [r2, #28]
    39e0:	bf00      	nop
    39e2:	4b32      	ldr	r3, [pc, #200]	; (3aac <rtc_clock_trim+0xe0>)
    39e4:	685b      	ldr	r3, [r3, #4]
    39e6:	f003 0308 	and.w	r3, r3, #8
    39ea:	2b00      	cmp	r3, #0
    39ec:	d0f9      	beq.n	39e2 <rtc_clock_trim+0x16>
    39ee:	4a30      	ldr	r2, [pc, #192]	; (3ab0 <rtc_clock_trim+0xe4>)
    39f0:	4b2f      	ldr	r3, [pc, #188]	; (3ab0 <rtc_clock_trim+0xe4>)
    39f2:	681b      	ldr	r3, [r3, #0]
    39f4:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    39f8:	6013      	str	r3, [r2, #0]
    39fa:	4a2c      	ldr	r2, [pc, #176]	; (3aac <rtc_clock_trim+0xe0>)
    39fc:	4b2b      	ldr	r3, [pc, #172]	; (3aac <rtc_clock_trim+0xe0>)
    39fe:	685b      	ldr	r3, [r3, #4]
    3a00:	f043 0310 	orr.w	r3, r3, #16
    3a04:	6053      	str	r3, [r2, #4]
    3a06:	4a2b      	ldr	r2, [pc, #172]	; (3ab4 <rtc_clock_trim+0xe8>)
    3a08:	4b2a      	ldr	r3, [pc, #168]	; (3ab4 <rtc_clock_trim+0xe8>)
    3a0a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3a0c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    3a10:	62d3      	str	r3, [r2, #44]	; 0x2c
    3a12:	687b      	ldr	r3, [r7, #4]
    3a14:	2b00      	cmp	r3, #0
    3a16:	d10a      	bne.n	3a2e <rtc_clock_trim+0x62>
    3a18:	4b26      	ldr	r3, [pc, #152]	; (3ab4 <rtc_clock_trim+0xe8>)
    3a1a:	2200      	movs	r2, #0
    3a1c:	62da      	str	r2, [r3, #44]	; 0x2c
    3a1e:	4b23      	ldr	r3, [pc, #140]	; (3aac <rtc_clock_trim+0xe0>)
    3a20:	f647 72ff 	movw	r2, #32767	; 0x7fff
    3a24:	60da      	str	r2, [r3, #12]
    3a26:	4b21      	ldr	r3, [pc, #132]	; (3aac <rtc_clock_trim+0xe0>)
    3a28:	2200      	movs	r2, #0
    3a2a:	609a      	str	r2, [r3, #8]
    3a2c:	e023      	b.n	3a76 <rtc_clock_trim+0xaa>
    3a2e:	687b      	ldr	r3, [r7, #4]
    3a30:	2b00      	cmp	r3, #0
    3a32:	dd0a      	ble.n	3a4a <rtc_clock_trim+0x7e>
    3a34:	687b      	ldr	r3, [r7, #4]
    3a36:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    3a3a:	607b      	str	r3, [r7, #4]
    3a3c:	491d      	ldr	r1, [pc, #116]	; (3ab4 <rtc_clock_trim+0xe8>)
    3a3e:	4b1d      	ldr	r3, [pc, #116]	; (3ab4 <rtc_clock_trim+0xe8>)
    3a40:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    3a42:	687b      	ldr	r3, [r7, #4]
    3a44:	4313      	orrs	r3, r2
    3a46:	62cb      	str	r3, [r1, #44]	; 0x2c
    3a48:	e015      	b.n	3a76 <rtc_clock_trim+0xaa>
    3a4a:	687b      	ldr	r3, [r7, #4]
    3a4c:	425b      	negs	r3, r3
    3a4e:	607b      	str	r3, [r7, #4]
    3a50:	687b      	ldr	r3, [r7, #4]
    3a52:	2b7f      	cmp	r3, #127	; 0x7f
    3a54:	dd01      	ble.n	3a5a <rtc_clock_trim+0x8e>
    3a56:	237f      	movs	r3, #127	; 0x7f
    3a58:	607b      	str	r3, [r7, #4]
    3a5a:	4b16      	ldr	r3, [pc, #88]	; (3ab4 <rtc_clock_trim+0xe8>)
    3a5c:	2200      	movs	r2, #0
    3a5e:	62da      	str	r2, [r3, #44]	; 0x2c
    3a60:	4a12      	ldr	r2, [pc, #72]	; (3aac <rtc_clock_trim+0xe0>)
    3a62:	687b      	ldr	r3, [r7, #4]
    3a64:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    3a68:	33ff      	adds	r3, #255	; 0xff
    3a6a:	f3c3 030e 	ubfx	r3, r3, #0, #15
    3a6e:	60d3      	str	r3, [r2, #12]
    3a70:	4b0e      	ldr	r3, [pc, #56]	; (3aac <rtc_clock_trim+0xe0>)
    3a72:	2200      	movs	r2, #0
    3a74:	609a      	str	r2, [r3, #8]
    3a76:	4a0d      	ldr	r2, [pc, #52]	; (3aac <rtc_clock_trim+0xe0>)
    3a78:	4b0c      	ldr	r3, [pc, #48]	; (3aac <rtc_clock_trim+0xe0>)
    3a7a:	685b      	ldr	r3, [r3, #4]
    3a7c:	f023 0310 	bic.w	r3, r3, #16
    3a80:	6053      	str	r3, [r2, #4]
    3a82:	bf00      	nop
    3a84:	4b09      	ldr	r3, [pc, #36]	; (3aac <rtc_clock_trim+0xe0>)
    3a86:	685b      	ldr	r3, [r3, #4]
    3a88:	f003 0320 	and.w	r3, r3, #32
    3a8c:	2b00      	cmp	r3, #0
    3a8e:	d0f9      	beq.n	3a84 <rtc_clock_trim+0xb8>
    3a90:	4a07      	ldr	r2, [pc, #28]	; (3ab0 <rtc_clock_trim+0xe4>)
    3a92:	4b07      	ldr	r3, [pc, #28]	; (3ab0 <rtc_clock_trim+0xe4>)
    3a94:	681b      	ldr	r3, [r3, #0]
    3a96:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    3a9a:	6013      	str	r3, [r2, #0]
    3a9c:	bf00      	nop
    3a9e:	370c      	adds	r7, #12
    3aa0:	46bd      	mov	sp, r7
    3aa2:	bc80      	pop	{r7}
    3aa4:	4770      	bx	lr
    3aa6:	bf00      	nop
    3aa8:	40021000 	.word	0x40021000
    3aac:	40002800 	.word	0x40002800
    3ab0:	40007000 	.word	0x40007000
    3ab4:	40006c00 	.word	0x40006c00

00003ab8 <rtc_set_alarm>:
    3ab8:	b480      	push	{r7}
    3aba:	b083      	sub	sp, #12
    3abc:	af00      	add	r7, sp, #0
    3abe:	6078      	str	r0, [r7, #4]
    3ac0:	bf00      	nop
    3ac2:	370c      	adds	r7, #12
    3ac4:	46bd      	mov	sp, r7
    3ac6:	bc80      	pop	{r7}
    3ac8:	4770      	bx	lr

00003aca <str_to_date>:
    3aca:	b580      	push	{r7, lr}
    3acc:	b084      	sub	sp, #16
    3ace:	af00      	add	r7, sp, #0
    3ad0:	6078      	str	r0, [r7, #4]
    3ad2:	6039      	str	r1, [r7, #0]
    3ad4:	2300      	movs	r3, #0
    3ad6:	60fb      	str	r3, [r7, #12]
    3ad8:	2300      	movs	r3, #0
    3ada:	60bb      	str	r3, [r7, #8]
    3adc:	e00f      	b.n	3afe <str_to_date+0x34>
    3ade:	68ba      	ldr	r2, [r7, #8]
    3ae0:	4613      	mov	r3, r2
    3ae2:	009b      	lsls	r3, r3, #2
    3ae4:	4413      	add	r3, r2
    3ae6:	005b      	lsls	r3, r3, #1
    3ae8:	4619      	mov	r1, r3
    3aea:	68fb      	ldr	r3, [r7, #12]
    3aec:	1c5a      	adds	r2, r3, #1
    3aee:	60fa      	str	r2, [r7, #12]
    3af0:	461a      	mov	r2, r3
    3af2:	687b      	ldr	r3, [r7, #4]
    3af4:	4413      	add	r3, r2
    3af6:	781b      	ldrb	r3, [r3, #0]
    3af8:	440b      	add	r3, r1
    3afa:	3b30      	subs	r3, #48	; 0x30
    3afc:	60bb      	str	r3, [r7, #8]
    3afe:	68fb      	ldr	r3, [r7, #12]
    3b00:	687a      	ldr	r2, [r7, #4]
    3b02:	4413      	add	r3, r2
    3b04:	781b      	ldrb	r3, [r3, #0]
    3b06:	4618      	mov	r0, r3
    3b08:	f7fe f883 	bl	1c12 <digit>
    3b0c:	4603      	mov	r3, r0
    3b0e:	2b00      	cmp	r3, #0
    3b10:	d1e5      	bne.n	3ade <str_to_date+0x14>
    3b12:	68fb      	ldr	r3, [r7, #12]
    3b14:	2b03      	cmp	r3, #3
    3b16:	dd05      	ble.n	3b24 <str_to_date+0x5a>
    3b18:	68fb      	ldr	r3, [r7, #12]
    3b1a:	687a      	ldr	r2, [r7, #4]
    3b1c:	4413      	add	r3, r2
    3b1e:	781b      	ldrb	r3, [r3, #0]
    3b20:	2b2f      	cmp	r3, #47	; 0x2f
    3b22:	d001      	beq.n	3b28 <str_to_date+0x5e>
    3b24:	2300      	movs	r3, #0
    3b26:	e068      	b.n	3bfa <str_to_date+0x130>
    3b28:	68bb      	ldr	r3, [r7, #8]
    3b2a:	b29a      	uxth	r2, r3
    3b2c:	683b      	ldr	r3, [r7, #0]
    3b2e:	811a      	strh	r2, [r3, #8]
    3b30:	68fb      	ldr	r3, [r7, #12]
    3b32:	3301      	adds	r3, #1
    3b34:	60fb      	str	r3, [r7, #12]
    3b36:	2300      	movs	r3, #0
    3b38:	60bb      	str	r3, [r7, #8]
    3b3a:	e00f      	b.n	3b5c <str_to_date+0x92>
    3b3c:	68ba      	ldr	r2, [r7, #8]
    3b3e:	4613      	mov	r3, r2
    3b40:	009b      	lsls	r3, r3, #2
    3b42:	4413      	add	r3, r2
    3b44:	005b      	lsls	r3, r3, #1
    3b46:	4619      	mov	r1, r3
    3b48:	68fb      	ldr	r3, [r7, #12]
    3b4a:	1c5a      	adds	r2, r3, #1
    3b4c:	60fa      	str	r2, [r7, #12]
    3b4e:	461a      	mov	r2, r3
    3b50:	687b      	ldr	r3, [r7, #4]
    3b52:	4413      	add	r3, r2
    3b54:	781b      	ldrb	r3, [r3, #0]
    3b56:	440b      	add	r3, r1
    3b58:	3b30      	subs	r3, #48	; 0x30
    3b5a:	60bb      	str	r3, [r7, #8]
    3b5c:	68fb      	ldr	r3, [r7, #12]
    3b5e:	687a      	ldr	r2, [r7, #4]
    3b60:	4413      	add	r3, r2
    3b62:	781b      	ldrb	r3, [r3, #0]
    3b64:	4618      	mov	r0, r3
    3b66:	f7fe f854 	bl	1c12 <digit>
    3b6a:	4603      	mov	r3, r0
    3b6c:	2b00      	cmp	r3, #0
    3b6e:	d1e5      	bne.n	3b3c <str_to_date+0x72>
    3b70:	68fb      	ldr	r3, [r7, #12]
    3b72:	2b06      	cmp	r3, #6
    3b74:	dd05      	ble.n	3b82 <str_to_date+0xb8>
    3b76:	68fb      	ldr	r3, [r7, #12]
    3b78:	687a      	ldr	r2, [r7, #4]
    3b7a:	4413      	add	r3, r2
    3b7c:	781b      	ldrb	r3, [r3, #0]
    3b7e:	2b2f      	cmp	r3, #47	; 0x2f
    3b80:	d001      	beq.n	3b86 <str_to_date+0xbc>
    3b82:	2300      	movs	r3, #0
    3b84:	e039      	b.n	3bfa <str_to_date+0x130>
    3b86:	68bb      	ldr	r3, [r7, #8]
    3b88:	b2db      	uxtb	r3, r3
    3b8a:	f003 030f 	and.w	r3, r3, #15
    3b8e:	b2d9      	uxtb	r1, r3
    3b90:	683a      	ldr	r2, [r7, #0]
    3b92:	8853      	ldrh	r3, [r2, #2]
    3b94:	f361 1389 	bfi	r3, r1, #6, #4
    3b98:	8053      	strh	r3, [r2, #2]
    3b9a:	2300      	movs	r3, #0
    3b9c:	60bb      	str	r3, [r7, #8]
    3b9e:	68fb      	ldr	r3, [r7, #12]
    3ba0:	3301      	adds	r3, #1
    3ba2:	60fb      	str	r3, [r7, #12]
    3ba4:	e00f      	b.n	3bc6 <str_to_date+0xfc>
    3ba6:	68ba      	ldr	r2, [r7, #8]
    3ba8:	4613      	mov	r3, r2
    3baa:	009b      	lsls	r3, r3, #2
    3bac:	4413      	add	r3, r2
    3bae:	005b      	lsls	r3, r3, #1
    3bb0:	4619      	mov	r1, r3
    3bb2:	68fb      	ldr	r3, [r7, #12]
    3bb4:	1c5a      	adds	r2, r3, #1
    3bb6:	60fa      	str	r2, [r7, #12]
    3bb8:	461a      	mov	r2, r3
    3bba:	687b      	ldr	r3, [r7, #4]
    3bbc:	4413      	add	r3, r2
    3bbe:	781b      	ldrb	r3, [r3, #0]
    3bc0:	440b      	add	r3, r1
    3bc2:	3b30      	subs	r3, #48	; 0x30
    3bc4:	60bb      	str	r3, [r7, #8]
    3bc6:	68fb      	ldr	r3, [r7, #12]
    3bc8:	687a      	ldr	r2, [r7, #4]
    3bca:	4413      	add	r3, r2
    3bcc:	781b      	ldrb	r3, [r3, #0]
    3bce:	4618      	mov	r0, r3
    3bd0:	f7fe f81f 	bl	1c12 <digit>
    3bd4:	4603      	mov	r3, r0
    3bd6:	2b00      	cmp	r3, #0
    3bd8:	d1e5      	bne.n	3ba6 <str_to_date+0xdc>
    3bda:	68fb      	ldr	r3, [r7, #12]
    3bdc:	2b09      	cmp	r3, #9
    3bde:	dc01      	bgt.n	3be4 <str_to_date+0x11a>
    3be0:	2300      	movs	r3, #0
    3be2:	e00a      	b.n	3bfa <str_to_date+0x130>
    3be4:	68bb      	ldr	r3, [r7, #8]
    3be6:	b2db      	uxtb	r3, r3
    3be8:	f003 031f 	and.w	r3, r3, #31
    3bec:	b2d9      	uxtb	r1, r3
    3bee:	683a      	ldr	r2, [r7, #0]
    3bf0:	7893      	ldrb	r3, [r2, #2]
    3bf2:	f361 0345 	bfi	r3, r1, #1, #5
    3bf6:	7093      	strb	r3, [r2, #2]
    3bf8:	2301      	movs	r3, #1
    3bfa:	4618      	mov	r0, r3
    3bfc:	3710      	adds	r7, #16
    3bfe:	46bd      	mov	sp, r7
    3c00:	bd80      	pop	{r7, pc}

00003c02 <str_to_time>:
    3c02:	b580      	push	{r7, lr}
    3c04:	b084      	sub	sp, #16
    3c06:	af00      	add	r7, sp, #0
    3c08:	6078      	str	r0, [r7, #4]
    3c0a:	6039      	str	r1, [r7, #0]
    3c0c:	2300      	movs	r3, #0
    3c0e:	60fb      	str	r3, [r7, #12]
    3c10:	2300      	movs	r3, #0
    3c12:	72fb      	strb	r3, [r7, #11]
    3c14:	e010      	b.n	3c38 <str_to_time+0x36>
    3c16:	7afb      	ldrb	r3, [r7, #11]
    3c18:	461a      	mov	r2, r3
    3c1a:	0092      	lsls	r2, r2, #2
    3c1c:	4413      	add	r3, r2
    3c1e:	005b      	lsls	r3, r3, #1
    3c20:	b2da      	uxtb	r2, r3
    3c22:	68fb      	ldr	r3, [r7, #12]
    3c24:	1c59      	adds	r1, r3, #1
    3c26:	60f9      	str	r1, [r7, #12]
    3c28:	4619      	mov	r1, r3
    3c2a:	687b      	ldr	r3, [r7, #4]
    3c2c:	440b      	add	r3, r1
    3c2e:	781b      	ldrb	r3, [r3, #0]
    3c30:	4413      	add	r3, r2
    3c32:	b2db      	uxtb	r3, r3
    3c34:	3b30      	subs	r3, #48	; 0x30
    3c36:	72fb      	strb	r3, [r7, #11]
    3c38:	68fb      	ldr	r3, [r7, #12]
    3c3a:	687a      	ldr	r2, [r7, #4]
    3c3c:	4413      	add	r3, r2
    3c3e:	781b      	ldrb	r3, [r3, #0]
    3c40:	4618      	mov	r0, r3
    3c42:	f7fd ffe6 	bl	1c12 <digit>
    3c46:	4603      	mov	r3, r0
    3c48:	2b00      	cmp	r3, #0
    3c4a:	d1e4      	bne.n	3c16 <str_to_time+0x14>
    3c4c:	7afb      	ldrb	r3, [r7, #11]
    3c4e:	2b17      	cmp	r3, #23
    3c50:	d805      	bhi.n	3c5e <str_to_time+0x5c>
    3c52:	68fb      	ldr	r3, [r7, #12]
    3c54:	687a      	ldr	r2, [r7, #4]
    3c56:	4413      	add	r3, r2
    3c58:	781b      	ldrb	r3, [r3, #0]
    3c5a:	2b3a      	cmp	r3, #58	; 0x3a
    3c5c:	d001      	beq.n	3c62 <str_to_time+0x60>
    3c5e:	2300      	movs	r3, #0
    3c60:	e06d      	b.n	3d3e <str_to_time+0x13c>
    3c62:	7afb      	ldrb	r3, [r7, #11]
    3c64:	f003 031f 	and.w	r3, r3, #31
    3c68:	b2d9      	uxtb	r1, r3
    3c6a:	683a      	ldr	r2, [r7, #0]
    3c6c:	6813      	ldr	r3, [r2, #0]
    3c6e:	f361 3310 	bfi	r3, r1, #12, #5
    3c72:	6013      	str	r3, [r2, #0]
    3c74:	68fb      	ldr	r3, [r7, #12]
    3c76:	3301      	adds	r3, #1
    3c78:	60fb      	str	r3, [r7, #12]
    3c7a:	2300      	movs	r3, #0
    3c7c:	72fb      	strb	r3, [r7, #11]
    3c7e:	e010      	b.n	3ca2 <str_to_time+0xa0>
    3c80:	7afb      	ldrb	r3, [r7, #11]
    3c82:	461a      	mov	r2, r3
    3c84:	0092      	lsls	r2, r2, #2
    3c86:	4413      	add	r3, r2
    3c88:	005b      	lsls	r3, r3, #1
    3c8a:	b2da      	uxtb	r2, r3
    3c8c:	68fb      	ldr	r3, [r7, #12]
    3c8e:	1c59      	adds	r1, r3, #1
    3c90:	60f9      	str	r1, [r7, #12]
    3c92:	4619      	mov	r1, r3
    3c94:	687b      	ldr	r3, [r7, #4]
    3c96:	440b      	add	r3, r1
    3c98:	781b      	ldrb	r3, [r3, #0]
    3c9a:	4413      	add	r3, r2
    3c9c:	b2db      	uxtb	r3, r3
    3c9e:	3b30      	subs	r3, #48	; 0x30
    3ca0:	72fb      	strb	r3, [r7, #11]
    3ca2:	68fb      	ldr	r3, [r7, #12]
    3ca4:	687a      	ldr	r2, [r7, #4]
    3ca6:	4413      	add	r3, r2
    3ca8:	781b      	ldrb	r3, [r3, #0]
    3caa:	4618      	mov	r0, r3
    3cac:	f7fd ffb1 	bl	1c12 <digit>
    3cb0:	4603      	mov	r3, r0
    3cb2:	2b00      	cmp	r3, #0
    3cb4:	d1e4      	bne.n	3c80 <str_to_time+0x7e>
    3cb6:	7afb      	ldrb	r3, [r7, #11]
    3cb8:	2b3b      	cmp	r3, #59	; 0x3b
    3cba:	d805      	bhi.n	3cc8 <str_to_time+0xc6>
    3cbc:	68fb      	ldr	r3, [r7, #12]
    3cbe:	687a      	ldr	r2, [r7, #4]
    3cc0:	4413      	add	r3, r2
    3cc2:	781b      	ldrb	r3, [r3, #0]
    3cc4:	2b3a      	cmp	r3, #58	; 0x3a
    3cc6:	d001      	beq.n	3ccc <str_to_time+0xca>
    3cc8:	2300      	movs	r3, #0
    3cca:	e038      	b.n	3d3e <str_to_time+0x13c>
    3ccc:	7afb      	ldrb	r3, [r7, #11]
    3cce:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3cd2:	b2d9      	uxtb	r1, r3
    3cd4:	683a      	ldr	r2, [r7, #0]
    3cd6:	8813      	ldrh	r3, [r2, #0]
    3cd8:	f361 138b 	bfi	r3, r1, #6, #6
    3cdc:	8013      	strh	r3, [r2, #0]
    3cde:	2300      	movs	r3, #0
    3ce0:	72fb      	strb	r3, [r7, #11]
    3ce2:	68fb      	ldr	r3, [r7, #12]
    3ce4:	3301      	adds	r3, #1
    3ce6:	60fb      	str	r3, [r7, #12]
    3ce8:	e010      	b.n	3d0c <str_to_time+0x10a>
    3cea:	7afb      	ldrb	r3, [r7, #11]
    3cec:	461a      	mov	r2, r3
    3cee:	0092      	lsls	r2, r2, #2
    3cf0:	4413      	add	r3, r2
    3cf2:	005b      	lsls	r3, r3, #1
    3cf4:	b2da      	uxtb	r2, r3
    3cf6:	68fb      	ldr	r3, [r7, #12]
    3cf8:	1c59      	adds	r1, r3, #1
    3cfa:	60f9      	str	r1, [r7, #12]
    3cfc:	4619      	mov	r1, r3
    3cfe:	687b      	ldr	r3, [r7, #4]
    3d00:	440b      	add	r3, r1
    3d02:	781b      	ldrb	r3, [r3, #0]
    3d04:	4413      	add	r3, r2
    3d06:	b2db      	uxtb	r3, r3
    3d08:	3b30      	subs	r3, #48	; 0x30
    3d0a:	72fb      	strb	r3, [r7, #11]
    3d0c:	68fb      	ldr	r3, [r7, #12]
    3d0e:	687a      	ldr	r2, [r7, #4]
    3d10:	4413      	add	r3, r2
    3d12:	781b      	ldrb	r3, [r3, #0]
    3d14:	4618      	mov	r0, r3
    3d16:	f7fd ff7c 	bl	1c12 <digit>
    3d1a:	4603      	mov	r3, r0
    3d1c:	2b00      	cmp	r3, #0
    3d1e:	d1e4      	bne.n	3cea <str_to_time+0xe8>
    3d20:	7afb      	ldrb	r3, [r7, #11]
    3d22:	2b3b      	cmp	r3, #59	; 0x3b
    3d24:	d901      	bls.n	3d2a <str_to_time+0x128>
    3d26:	2300      	movs	r3, #0
    3d28:	e009      	b.n	3d3e <str_to_time+0x13c>
    3d2a:	7afb      	ldrb	r3, [r7, #11]
    3d2c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    3d30:	b2d9      	uxtb	r1, r3
    3d32:	683a      	ldr	r2, [r7, #0]
    3d34:	7813      	ldrb	r3, [r2, #0]
    3d36:	f361 0305 	bfi	r3, r1, #0, #6
    3d3a:	7013      	strb	r3, [r2, #0]
    3d3c:	2301      	movs	r3, #1
    3d3e:	4618      	mov	r0, r3
    3d40:	3710      	adds	r7, #16
    3d42:	46bd      	mov	sp, r7
    3d44:	bd80      	pop	{r7, pc}

00003d46 <date_str>:
    3d46:	b480      	push	{r7}
    3d48:	b085      	sub	sp, #20
    3d4a:	af00      	add	r7, sp, #0
    3d4c:	6078      	str	r0, [r7, #4]
    3d4e:	6039      	str	r1, [r7, #0]
    3d50:	2300      	movs	r3, #0
    3d52:	60fb      	str	r3, [r7, #12]
    3d54:	687b      	ldr	r3, [r7, #4]
    3d56:	891b      	ldrh	r3, [r3, #8]
    3d58:	60bb      	str	r3, [r7, #8]
    3d5a:	68fb      	ldr	r3, [r7, #12]
    3d5c:	1c5a      	adds	r2, r3, #1
    3d5e:	60fa      	str	r2, [r7, #12]
    3d60:	461a      	mov	r2, r3
    3d62:	683b      	ldr	r3, [r7, #0]
    3d64:	4413      	add	r3, r2
    3d66:	68ba      	ldr	r2, [r7, #8]
    3d68:	495d      	ldr	r1, [pc, #372]	; (3ee0 <date_str+0x19a>)
    3d6a:	fba1 1202 	umull	r1, r2, r1, r2
    3d6e:	0992      	lsrs	r2, r2, #6
    3d70:	b2d2      	uxtb	r2, r2
    3d72:	3230      	adds	r2, #48	; 0x30
    3d74:	b2d2      	uxtb	r2, r2
    3d76:	701a      	strb	r2, [r3, #0]
    3d78:	68bb      	ldr	r3, [r7, #8]
    3d7a:	4a59      	ldr	r2, [pc, #356]	; (3ee0 <date_str+0x19a>)
    3d7c:	fba2 1203 	umull	r1, r2, r2, r3
    3d80:	0992      	lsrs	r2, r2, #6
    3d82:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    3d86:	fb01 f202 	mul.w	r2, r1, r2
    3d8a:	1a9b      	subs	r3, r3, r2
    3d8c:	60bb      	str	r3, [r7, #8]
    3d8e:	68fb      	ldr	r3, [r7, #12]
    3d90:	1c5a      	adds	r2, r3, #1
    3d92:	60fa      	str	r2, [r7, #12]
    3d94:	461a      	mov	r2, r3
    3d96:	683b      	ldr	r3, [r7, #0]
    3d98:	4413      	add	r3, r2
    3d9a:	68ba      	ldr	r2, [r7, #8]
    3d9c:	4951      	ldr	r1, [pc, #324]	; (3ee4 <date_str+0x19e>)
    3d9e:	fba1 1202 	umull	r1, r2, r1, r2
    3da2:	0952      	lsrs	r2, r2, #5
    3da4:	b2d2      	uxtb	r2, r2
    3da6:	3230      	adds	r2, #48	; 0x30
    3da8:	b2d2      	uxtb	r2, r2
    3daa:	701a      	strb	r2, [r3, #0]
    3dac:	68bb      	ldr	r3, [r7, #8]
    3dae:	4a4d      	ldr	r2, [pc, #308]	; (3ee4 <date_str+0x19e>)
    3db0:	fba2 1203 	umull	r1, r2, r2, r3
    3db4:	0952      	lsrs	r2, r2, #5
    3db6:	2164      	movs	r1, #100	; 0x64
    3db8:	fb01 f202 	mul.w	r2, r1, r2
    3dbc:	1a9b      	subs	r3, r3, r2
    3dbe:	60bb      	str	r3, [r7, #8]
    3dc0:	68fb      	ldr	r3, [r7, #12]
    3dc2:	1c5a      	adds	r2, r3, #1
    3dc4:	60fa      	str	r2, [r7, #12]
    3dc6:	461a      	mov	r2, r3
    3dc8:	683b      	ldr	r3, [r7, #0]
    3dca:	4413      	add	r3, r2
    3dcc:	68ba      	ldr	r2, [r7, #8]
    3dce:	4946      	ldr	r1, [pc, #280]	; (3ee8 <date_str+0x1a2>)
    3dd0:	fba1 1202 	umull	r1, r2, r1, r2
    3dd4:	08d2      	lsrs	r2, r2, #3
    3dd6:	b2d2      	uxtb	r2, r2
    3dd8:	3230      	adds	r2, #48	; 0x30
    3dda:	b2d2      	uxtb	r2, r2
    3ddc:	701a      	strb	r2, [r3, #0]
    3dde:	68fb      	ldr	r3, [r7, #12]
    3de0:	1c5a      	adds	r2, r3, #1
    3de2:	60fa      	str	r2, [r7, #12]
    3de4:	461a      	mov	r2, r3
    3de6:	683b      	ldr	r3, [r7, #0]
    3de8:	1898      	adds	r0, r3, r2
    3dea:	68b9      	ldr	r1, [r7, #8]
    3dec:	4b3e      	ldr	r3, [pc, #248]	; (3ee8 <date_str+0x1a2>)
    3dee:	fba3 2301 	umull	r2, r3, r3, r1
    3df2:	08da      	lsrs	r2, r3, #3
    3df4:	4613      	mov	r3, r2
    3df6:	009b      	lsls	r3, r3, #2
    3df8:	4413      	add	r3, r2
    3dfa:	005b      	lsls	r3, r3, #1
    3dfc:	1aca      	subs	r2, r1, r3
    3dfe:	b2d3      	uxtb	r3, r2
    3e00:	3330      	adds	r3, #48	; 0x30
    3e02:	b2db      	uxtb	r3, r3
    3e04:	7003      	strb	r3, [r0, #0]
    3e06:	68fb      	ldr	r3, [r7, #12]
    3e08:	1c5a      	adds	r2, r3, #1
    3e0a:	60fa      	str	r2, [r7, #12]
    3e0c:	461a      	mov	r2, r3
    3e0e:	683b      	ldr	r3, [r7, #0]
    3e10:	4413      	add	r3, r2
    3e12:	222f      	movs	r2, #47	; 0x2f
    3e14:	701a      	strb	r2, [r3, #0]
    3e16:	687b      	ldr	r3, [r7, #4]
    3e18:	885b      	ldrh	r3, [r3, #2]
    3e1a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    3e1e:	b2db      	uxtb	r3, r3
    3e20:	60bb      	str	r3, [r7, #8]
    3e22:	68fb      	ldr	r3, [r7, #12]
    3e24:	1c5a      	adds	r2, r3, #1
    3e26:	60fa      	str	r2, [r7, #12]
    3e28:	461a      	mov	r2, r3
    3e2a:	683b      	ldr	r3, [r7, #0]
    3e2c:	4413      	add	r3, r2
    3e2e:	68ba      	ldr	r2, [r7, #8]
    3e30:	492d      	ldr	r1, [pc, #180]	; (3ee8 <date_str+0x1a2>)
    3e32:	fba1 1202 	umull	r1, r2, r1, r2
    3e36:	08d2      	lsrs	r2, r2, #3
    3e38:	b2d2      	uxtb	r2, r2
    3e3a:	3230      	adds	r2, #48	; 0x30
    3e3c:	b2d2      	uxtb	r2, r2
    3e3e:	701a      	strb	r2, [r3, #0]
    3e40:	68fb      	ldr	r3, [r7, #12]
    3e42:	1c5a      	adds	r2, r3, #1
    3e44:	60fa      	str	r2, [r7, #12]
    3e46:	461a      	mov	r2, r3
    3e48:	683b      	ldr	r3, [r7, #0]
    3e4a:	1898      	adds	r0, r3, r2
    3e4c:	68b9      	ldr	r1, [r7, #8]
    3e4e:	4b26      	ldr	r3, [pc, #152]	; (3ee8 <date_str+0x1a2>)
    3e50:	fba3 2301 	umull	r2, r3, r3, r1
    3e54:	08da      	lsrs	r2, r3, #3
    3e56:	4613      	mov	r3, r2
    3e58:	009b      	lsls	r3, r3, #2
    3e5a:	4413      	add	r3, r2
    3e5c:	005b      	lsls	r3, r3, #1
    3e5e:	1aca      	subs	r2, r1, r3
    3e60:	b2d3      	uxtb	r3, r2
    3e62:	3330      	adds	r3, #48	; 0x30
    3e64:	b2db      	uxtb	r3, r3
    3e66:	7003      	strb	r3, [r0, #0]
    3e68:	68fb      	ldr	r3, [r7, #12]
    3e6a:	1c5a      	adds	r2, r3, #1
    3e6c:	60fa      	str	r2, [r7, #12]
    3e6e:	461a      	mov	r2, r3
    3e70:	683b      	ldr	r3, [r7, #0]
    3e72:	4413      	add	r3, r2
    3e74:	222f      	movs	r2, #47	; 0x2f
    3e76:	701a      	strb	r2, [r3, #0]
    3e78:	687b      	ldr	r3, [r7, #4]
    3e7a:	789b      	ldrb	r3, [r3, #2]
    3e7c:	f3c3 0344 	ubfx	r3, r3, #1, #5
    3e80:	b2db      	uxtb	r3, r3
    3e82:	60bb      	str	r3, [r7, #8]
    3e84:	68fb      	ldr	r3, [r7, #12]
    3e86:	1c5a      	adds	r2, r3, #1
    3e88:	60fa      	str	r2, [r7, #12]
    3e8a:	461a      	mov	r2, r3
    3e8c:	683b      	ldr	r3, [r7, #0]
    3e8e:	4413      	add	r3, r2
    3e90:	68ba      	ldr	r2, [r7, #8]
    3e92:	4915      	ldr	r1, [pc, #84]	; (3ee8 <date_str+0x1a2>)
    3e94:	fba1 1202 	umull	r1, r2, r1, r2
    3e98:	08d2      	lsrs	r2, r2, #3
    3e9a:	b2d2      	uxtb	r2, r2
    3e9c:	3230      	adds	r2, #48	; 0x30
    3e9e:	b2d2      	uxtb	r2, r2
    3ea0:	701a      	strb	r2, [r3, #0]
    3ea2:	68fb      	ldr	r3, [r7, #12]
    3ea4:	1c5a      	adds	r2, r3, #1
    3ea6:	60fa      	str	r2, [r7, #12]
    3ea8:	461a      	mov	r2, r3
    3eaa:	683b      	ldr	r3, [r7, #0]
    3eac:	1898      	adds	r0, r3, r2
    3eae:	68b9      	ldr	r1, [r7, #8]
    3eb0:	4b0d      	ldr	r3, [pc, #52]	; (3ee8 <date_str+0x1a2>)
    3eb2:	fba3 2301 	umull	r2, r3, r3, r1
    3eb6:	08da      	lsrs	r2, r3, #3
    3eb8:	4613      	mov	r3, r2
    3eba:	009b      	lsls	r3, r3, #2
    3ebc:	4413      	add	r3, r2
    3ebe:	005b      	lsls	r3, r3, #1
    3ec0:	1aca      	subs	r2, r1, r3
    3ec2:	b2d3      	uxtb	r3, r2
    3ec4:	3330      	adds	r3, #48	; 0x30
    3ec6:	b2db      	uxtb	r3, r3
    3ec8:	7003      	strb	r3, [r0, #0]
    3eca:	68fb      	ldr	r3, [r7, #12]
    3ecc:	683a      	ldr	r2, [r7, #0]
    3ece:	4413      	add	r3, r2
    3ed0:	2200      	movs	r2, #0
    3ed2:	701a      	strb	r2, [r3, #0]
    3ed4:	bf00      	nop
    3ed6:	3714      	adds	r7, #20
    3ed8:	46bd      	mov	sp, r7
    3eda:	bc80      	pop	{r7}
    3edc:	4770      	bx	lr
    3ede:	bf00      	nop
    3ee0:	10624dd3 	.word	0x10624dd3
    3ee4:	51eb851f 	.word	0x51eb851f
    3ee8:	cccccccd 	.word	0xcccccccd

00003eec <time_str>:
    3eec:	b480      	push	{r7}
    3eee:	b085      	sub	sp, #20
    3ef0:	af00      	add	r7, sp, #0
    3ef2:	6078      	str	r0, [r7, #4]
    3ef4:	6039      	str	r1, [r7, #0]
    3ef6:	2300      	movs	r3, #0
    3ef8:	60fb      	str	r3, [r7, #12]
    3efa:	687b      	ldr	r3, [r7, #4]
    3efc:	681b      	ldr	r3, [r3, #0]
    3efe:	f3c3 3304 	ubfx	r3, r3, #12, #5
    3f02:	b2db      	uxtb	r3, r3
    3f04:	60bb      	str	r3, [r7, #8]
    3f06:	68fb      	ldr	r3, [r7, #12]
    3f08:	1c5a      	adds	r2, r3, #1
    3f0a:	60fa      	str	r2, [r7, #12]
    3f0c:	461a      	mov	r2, r3
    3f0e:	683b      	ldr	r3, [r7, #0]
    3f10:	4413      	add	r3, r2
    3f12:	68ba      	ldr	r2, [r7, #8]
    3f14:	4943      	ldr	r1, [pc, #268]	; (4024 <time_str+0x138>)
    3f16:	fba1 1202 	umull	r1, r2, r1, r2
    3f1a:	08d2      	lsrs	r2, r2, #3
    3f1c:	b2d2      	uxtb	r2, r2
    3f1e:	3230      	adds	r2, #48	; 0x30
    3f20:	b2d2      	uxtb	r2, r2
    3f22:	701a      	strb	r2, [r3, #0]
    3f24:	68fb      	ldr	r3, [r7, #12]
    3f26:	1c5a      	adds	r2, r3, #1
    3f28:	60fa      	str	r2, [r7, #12]
    3f2a:	461a      	mov	r2, r3
    3f2c:	683b      	ldr	r3, [r7, #0]
    3f2e:	1898      	adds	r0, r3, r2
    3f30:	68b9      	ldr	r1, [r7, #8]
    3f32:	4b3c      	ldr	r3, [pc, #240]	; (4024 <time_str+0x138>)
    3f34:	fba3 2301 	umull	r2, r3, r3, r1
    3f38:	08da      	lsrs	r2, r3, #3
    3f3a:	4613      	mov	r3, r2
    3f3c:	009b      	lsls	r3, r3, #2
    3f3e:	4413      	add	r3, r2
    3f40:	005b      	lsls	r3, r3, #1
    3f42:	1aca      	subs	r2, r1, r3
    3f44:	b2d3      	uxtb	r3, r2
    3f46:	3330      	adds	r3, #48	; 0x30
    3f48:	b2db      	uxtb	r3, r3
    3f4a:	7003      	strb	r3, [r0, #0]
    3f4c:	68fb      	ldr	r3, [r7, #12]
    3f4e:	1c5a      	adds	r2, r3, #1
    3f50:	60fa      	str	r2, [r7, #12]
    3f52:	461a      	mov	r2, r3
    3f54:	683b      	ldr	r3, [r7, #0]
    3f56:	4413      	add	r3, r2
    3f58:	223a      	movs	r2, #58	; 0x3a
    3f5a:	701a      	strb	r2, [r3, #0]
    3f5c:	687b      	ldr	r3, [r7, #4]
    3f5e:	881b      	ldrh	r3, [r3, #0]
    3f60:	f3c3 1385 	ubfx	r3, r3, #6, #6
    3f64:	b2db      	uxtb	r3, r3
    3f66:	60bb      	str	r3, [r7, #8]
    3f68:	68fb      	ldr	r3, [r7, #12]
    3f6a:	1c5a      	adds	r2, r3, #1
    3f6c:	60fa      	str	r2, [r7, #12]
    3f6e:	461a      	mov	r2, r3
    3f70:	683b      	ldr	r3, [r7, #0]
    3f72:	4413      	add	r3, r2
    3f74:	68ba      	ldr	r2, [r7, #8]
    3f76:	492b      	ldr	r1, [pc, #172]	; (4024 <time_str+0x138>)
    3f78:	fba1 1202 	umull	r1, r2, r1, r2
    3f7c:	08d2      	lsrs	r2, r2, #3
    3f7e:	b2d2      	uxtb	r2, r2
    3f80:	3230      	adds	r2, #48	; 0x30
    3f82:	b2d2      	uxtb	r2, r2
    3f84:	701a      	strb	r2, [r3, #0]
    3f86:	68fb      	ldr	r3, [r7, #12]
    3f88:	1c5a      	adds	r2, r3, #1
    3f8a:	60fa      	str	r2, [r7, #12]
    3f8c:	461a      	mov	r2, r3
    3f8e:	683b      	ldr	r3, [r7, #0]
    3f90:	1898      	adds	r0, r3, r2
    3f92:	68b9      	ldr	r1, [r7, #8]
    3f94:	4b23      	ldr	r3, [pc, #140]	; (4024 <time_str+0x138>)
    3f96:	fba3 2301 	umull	r2, r3, r3, r1
    3f9a:	08da      	lsrs	r2, r3, #3
    3f9c:	4613      	mov	r3, r2
    3f9e:	009b      	lsls	r3, r3, #2
    3fa0:	4413      	add	r3, r2
    3fa2:	005b      	lsls	r3, r3, #1
    3fa4:	1aca      	subs	r2, r1, r3
    3fa6:	b2d3      	uxtb	r3, r2
    3fa8:	3330      	adds	r3, #48	; 0x30
    3faa:	b2db      	uxtb	r3, r3
    3fac:	7003      	strb	r3, [r0, #0]
    3fae:	68fb      	ldr	r3, [r7, #12]
    3fb0:	1c5a      	adds	r2, r3, #1
    3fb2:	60fa      	str	r2, [r7, #12]
    3fb4:	461a      	mov	r2, r3
    3fb6:	683b      	ldr	r3, [r7, #0]
    3fb8:	4413      	add	r3, r2
    3fba:	223a      	movs	r2, #58	; 0x3a
    3fbc:	701a      	strb	r2, [r3, #0]
    3fbe:	687b      	ldr	r3, [r7, #4]
    3fc0:	781b      	ldrb	r3, [r3, #0]
    3fc2:	f3c3 0305 	ubfx	r3, r3, #0, #6
    3fc6:	b2db      	uxtb	r3, r3
    3fc8:	60bb      	str	r3, [r7, #8]
    3fca:	68fb      	ldr	r3, [r7, #12]
    3fcc:	1c5a      	adds	r2, r3, #1
    3fce:	60fa      	str	r2, [r7, #12]
    3fd0:	461a      	mov	r2, r3
    3fd2:	683b      	ldr	r3, [r7, #0]
    3fd4:	4413      	add	r3, r2
    3fd6:	68ba      	ldr	r2, [r7, #8]
    3fd8:	4912      	ldr	r1, [pc, #72]	; (4024 <time_str+0x138>)
    3fda:	fba1 1202 	umull	r1, r2, r1, r2
    3fde:	08d2      	lsrs	r2, r2, #3
    3fe0:	b2d2      	uxtb	r2, r2
    3fe2:	3230      	adds	r2, #48	; 0x30
    3fe4:	b2d2      	uxtb	r2, r2
    3fe6:	701a      	strb	r2, [r3, #0]
    3fe8:	68fb      	ldr	r3, [r7, #12]
    3fea:	1c5a      	adds	r2, r3, #1
    3fec:	60fa      	str	r2, [r7, #12]
    3fee:	461a      	mov	r2, r3
    3ff0:	683b      	ldr	r3, [r7, #0]
    3ff2:	1898      	adds	r0, r3, r2
    3ff4:	68b9      	ldr	r1, [r7, #8]
    3ff6:	4b0b      	ldr	r3, [pc, #44]	; (4024 <time_str+0x138>)
    3ff8:	fba3 2301 	umull	r2, r3, r3, r1
    3ffc:	08da      	lsrs	r2, r3, #3
    3ffe:	4613      	mov	r3, r2
    4000:	009b      	lsls	r3, r3, #2
    4002:	4413      	add	r3, r2
    4004:	005b      	lsls	r3, r3, #1
    4006:	1aca      	subs	r2, r1, r3
    4008:	b2d3      	uxtb	r3, r2
    400a:	3330      	adds	r3, #48	; 0x30
    400c:	b2db      	uxtb	r3, r3
    400e:	7003      	strb	r3, [r0, #0]
    4010:	68fb      	ldr	r3, [r7, #12]
    4012:	683a      	ldr	r2, [r7, #0]
    4014:	4413      	add	r3, r2
    4016:	2200      	movs	r2, #0
    4018:	701a      	strb	r2, [r3, #0]
    401a:	bf00      	nop
    401c:	3714      	adds	r7, #20
    401e:	46bd      	mov	sp, r7
    4020:	bc80      	pop	{r7}
    4022:	4770      	bx	lr
    4024:	cccccccd 	.word	0xcccccccd

00004028 <get_fattime>:
    4028:	b580      	push	{r7, lr}
    402a:	b084      	sub	sp, #16
    402c:	af00      	add	r7, sp, #0
    402e:	463b      	mov	r3, r7
    4030:	4618      	mov	r0, r3
    4032:	f7ff fa69 	bl	3508 <get_date_time>
    4036:	783b      	ldrb	r3, [r7, #0]
    4038:	f3c3 0305 	ubfx	r3, r3, #0, #6
    403c:	b2db      	uxtb	r3, r3
    403e:	0fda      	lsrs	r2, r3, #31
    4040:	4413      	add	r3, r2
    4042:	105b      	asrs	r3, r3, #1
    4044:	b2db      	uxtb	r3, r3
    4046:	f003 031f 	and.w	r3, r3, #31
    404a:	b2da      	uxtb	r2, r3
    404c:	7b3b      	ldrb	r3, [r7, #12]
    404e:	f362 0304 	bfi	r3, r2, #0, #5
    4052:	733b      	strb	r3, [r7, #12]
    4054:	883b      	ldrh	r3, [r7, #0]
    4056:	f3c3 1385 	ubfx	r3, r3, #6, #6
    405a:	b2da      	uxtb	r2, r3
    405c:	89bb      	ldrh	r3, [r7, #12]
    405e:	f362 134a 	bfi	r3, r2, #5, #6
    4062:	81bb      	strh	r3, [r7, #12]
    4064:	683b      	ldr	r3, [r7, #0]
    4066:	f3c3 3304 	ubfx	r3, r3, #12, #5
    406a:	b2da      	uxtb	r2, r3
    406c:	7b7b      	ldrb	r3, [r7, #13]
    406e:	f362 03c7 	bfi	r3, r2, #3, #5
    4072:	737b      	strb	r3, [r7, #13]
    4074:	78bb      	ldrb	r3, [r7, #2]
    4076:	f3c3 0344 	ubfx	r3, r3, #1, #5
    407a:	b2da      	uxtb	r2, r3
    407c:	7bbb      	ldrb	r3, [r7, #14]
    407e:	f362 0304 	bfi	r3, r2, #0, #5
    4082:	73bb      	strb	r3, [r7, #14]
    4084:	887b      	ldrh	r3, [r7, #2]
    4086:	f3c3 1383 	ubfx	r3, r3, #6, #4
    408a:	b2da      	uxtb	r2, r3
    408c:	89fb      	ldrh	r3, [r7, #14]
    408e:	f362 1348 	bfi	r3, r2, #5, #4
    4092:	81fb      	strh	r3, [r7, #14]
    4094:	893b      	ldrh	r3, [r7, #8]
    4096:	b2db      	uxtb	r3, r3
    4098:	3344      	adds	r3, #68	; 0x44
    409a:	b2db      	uxtb	r3, r3
    409c:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    40a0:	b2da      	uxtb	r2, r3
    40a2:	7bfb      	ldrb	r3, [r7, #15]
    40a4:	f362 0347 	bfi	r3, r2, #1, #7
    40a8:	73fb      	strb	r3, [r7, #15]
    40aa:	68fb      	ldr	r3, [r7, #12]
    40ac:	4618      	mov	r0, r3
    40ae:	3710      	adds	r7, #16
    40b0:	46bd      	mov	sp, r7
    40b2:	bd80      	pop	{r7, pc}

000040b4 <RTC_handler>:
    40b4:	b480      	push	{r7}
    40b6:	b083      	sub	sp, #12
    40b8:	af00      	add	r7, sp, #0
    40ba:	4b0a      	ldr	r3, [pc, #40]	; (40e4 <RTC_handler+0x30>)
    40bc:	685b      	ldr	r3, [r3, #4]
    40be:	f003 0301 	and.w	r3, r3, #1
    40c2:	2b00      	cmp	r3, #0
    40c4:	d001      	beq.n	40ca <RTC_handler+0x16>
    40c6:	4b07      	ldr	r3, [pc, #28]	; (40e4 <RTC_handler+0x30>)
    40c8:	685b      	ldr	r3, [r3, #4]
    40ca:	4b06      	ldr	r3, [pc, #24]	; (40e4 <RTC_handler+0x30>)
    40cc:	685b      	ldr	r3, [r3, #4]
    40ce:	f003 0302 	and.w	r3, r3, #2
    40d2:	2b00      	cmp	r3, #0
    40d4:	d001      	beq.n	40da <RTC_handler+0x26>
    40d6:	4b03      	ldr	r3, [pc, #12]	; (40e4 <RTC_handler+0x30>)
    40d8:	685b      	ldr	r3, [r3, #4]
    40da:	bf00      	nop
    40dc:	370c      	adds	r7, #12
    40de:	46bd      	mov	sp, r7
    40e0:	bc80      	pop	{r7}
    40e2:	4770      	bx	lr
    40e4:	40002800 	.word	0x40002800

000040e8 <sound_init>:
    40e8:	b580      	push	{r7, lr}
    40ea:	af00      	add	r7, sp, #0
    40ec:	4a0d      	ldr	r2, [pc, #52]	; (4124 <sound_init+0x3c>)
    40ee:	4b0d      	ldr	r3, [pc, #52]	; (4124 <sound_init+0x3c>)
    40f0:	69db      	ldr	r3, [r3, #28]
    40f2:	f043 0301 	orr.w	r3, r3, #1
    40f6:	61d3      	str	r3, [r2, #28]
    40f8:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    40fc:	2278      	movs	r2, #120	; 0x78
    40fe:	61da      	str	r2, [r3, #28]
    4100:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4104:	f44f 7280 	mov.w	r2, #256	; 0x100
    4108:	621a      	str	r2, [r3, #32]
    410a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    410e:	2209      	movs	r2, #9
    4110:	629a      	str	r2, [r3, #40]	; 0x28
    4112:	2100      	movs	r1, #0
    4114:	201c      	movs	r0, #28
    4116:	f7ff f977 	bl	3408 <set_int_priority>
    411a:	201c      	movs	r0, #28
    411c:	f7ff f8ba 	bl	3294 <enable_interrupt>
    4120:	bf00      	nop
    4122:	bd80      	pop	{r7, pc}
    4124:	40021000 	.word	0x40021000

00004128 <tone>:
    4128:	b580      	push	{r7, lr}
    412a:	b082      	sub	sp, #8
    412c:	af00      	add	r7, sp, #0
    412e:	4603      	mov	r3, r0
    4130:	460a      	mov	r2, r1
    4132:	80fb      	strh	r3, [r7, #6]
    4134:	4613      	mov	r3, r2
    4136:	80bb      	strh	r3, [r7, #4]
    4138:	4a1a      	ldr	r2, [pc, #104]	; (41a4 <tone+0x7c>)
    413a:	4b1a      	ldr	r3, [pc, #104]	; (41a4 <tone+0x7c>)
    413c:	685b      	ldr	r3, [r3, #4]
    413e:	f403 7340 	and.w	r3, r3, #768	; 0x300
    4142:	6053      	str	r3, [r2, #4]
    4144:	4a17      	ldr	r2, [pc, #92]	; (41a4 <tone+0x7c>)
    4146:	4b17      	ldr	r3, [pc, #92]	; (41a4 <tone+0x7c>)
    4148:	685b      	ldr	r3, [r3, #4]
    414a:	f443 7340 	orr.w	r3, r3, #768	; 0x300
    414e:	6053      	str	r3, [r2, #4]
    4150:	220a      	movs	r2, #10
    4152:	210a      	movs	r1, #10
    4154:	4814      	ldr	r0, [pc, #80]	; (41a8 <tone+0x80>)
    4156:	f7fd ff03 	bl	1f60 <config_pin>
    415a:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    415e:	88fb      	ldrh	r3, [r7, #6]
    4160:	4912      	ldr	r1, [pc, #72]	; (41ac <tone+0x84>)
    4162:	fbb1 f3f3 	udiv	r3, r1, r3
    4166:	62d3      	str	r3, [r2, #44]	; 0x2c
    4168:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    416c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4170:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    4172:	085b      	lsrs	r3, r3, #1
    4174:	63d3      	str	r3, [r2, #60]	; 0x3c
    4176:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    417a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    417e:	68db      	ldr	r3, [r3, #12]
    4180:	f023 0308 	bic.w	r3, r3, #8
    4184:	60d3      	str	r3, [r2, #12]
    4186:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    418a:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    418e:	681b      	ldr	r3, [r3, #0]
    4190:	f043 0301 	orr.w	r3, r3, #1
    4194:	6013      	str	r3, [r2, #0]
    4196:	4a06      	ldr	r2, [pc, #24]	; (41b0 <tone+0x88>)
    4198:	88bb      	ldrh	r3, [r7, #4]
    419a:	8013      	strh	r3, [r2, #0]
    419c:	bf00      	nop
    419e:	3708      	adds	r7, #8
    41a0:	46bd      	mov	sp, r7
    41a2:	bd80      	pop	{r7, pc}
    41a4:	40010000 	.word	0x40010000
    41a8:	40010c00 	.word	0x40010c00
    41ac:	006d3d32 	.word	0x006d3d32
    41b0:	20004dbc 	.word	0x20004dbc

000041b4 <beep>:
    41b4:	b580      	push	{r7, lr}
    41b6:	b082      	sub	sp, #8
    41b8:	af00      	add	r7, sp, #0
    41ba:	4603      	mov	r3, r0
    41bc:	80fb      	strh	r3, [r7, #6]
    41be:	88fb      	ldrh	r3, [r7, #6]
    41c0:	4619      	mov	r1, r3
    41c2:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    41c6:	f7ff ffaf 	bl	4128 <tone>
    41ca:	bf00      	nop
    41cc:	3708      	adds	r7, #8
    41ce:	46bd      	mov	sp, r7
    41d0:	bd80      	pop	{r7, pc}

000041d2 <load_sound_buffer>:
    41d2:	b480      	push	{r7}
    41d4:	b085      	sub	sp, #20
    41d6:	af00      	add	r7, sp, #0
    41d8:	6078      	str	r0, [r7, #4]
    41da:	2300      	movs	r3, #0
    41dc:	60fb      	str	r3, [r7, #12]
    41de:	e00b      	b.n	41f8 <load_sound_buffer+0x26>
    41e0:	687b      	ldr	r3, [r7, #4]
    41e2:	1c5a      	adds	r2, r3, #1
    41e4:	607a      	str	r2, [r7, #4]
    41e6:	7819      	ldrb	r1, [r3, #0]
    41e8:	4a07      	ldr	r2, [pc, #28]	; (4208 <load_sound_buffer+0x36>)
    41ea:	68fb      	ldr	r3, [r7, #12]
    41ec:	4413      	add	r3, r2
    41ee:	460a      	mov	r2, r1
    41f0:	701a      	strb	r2, [r3, #0]
    41f2:	68fb      	ldr	r3, [r7, #12]
    41f4:	3301      	adds	r3, #1
    41f6:	60fb      	str	r3, [r7, #12]
    41f8:	68fb      	ldr	r3, [r7, #12]
    41fa:	2b0f      	cmp	r3, #15
    41fc:	ddf0      	ble.n	41e0 <load_sound_buffer+0xe>
    41fe:	bf00      	nop
    4200:	3714      	adds	r7, #20
    4202:	46bd      	mov	sp, r7
    4204:	bc80      	pop	{r7}
    4206:	4770      	bx	lr
    4208:	20000608 	.word	0x20000608

0000420c <sound_sampler>:
    420c:	b580      	push	{r7, lr}
    420e:	b082      	sub	sp, #8
    4210:	af00      	add	r7, sp, #0
    4212:	4603      	mov	r3, r0
    4214:	80fb      	strh	r3, [r7, #6]
    4216:	4b1b      	ldr	r3, [pc, #108]	; (4284 <sound_sampler+0x78>)
    4218:	2200      	movs	r2, #0
    421a:	701a      	strb	r2, [r3, #0]
    421c:	4a1a      	ldr	r2, [pc, #104]	; (4288 <sound_sampler+0x7c>)
    421e:	4b1a      	ldr	r3, [pc, #104]	; (4288 <sound_sampler+0x7c>)
    4220:	685b      	ldr	r3, [r3, #4]
    4222:	f403 7340 	and.w	r3, r3, #768	; 0x300
    4226:	6053      	str	r3, [r2, #4]
    4228:	4a18      	ldr	r2, [pc, #96]	; (428c <sound_sampler+0x80>)
    422a:	4b18      	ldr	r3, [pc, #96]	; (428c <sound_sampler+0x80>)
    422c:	68db      	ldr	r3, [r3, #12]
    422e:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    4232:	60d3      	str	r3, [r2, #12]
    4234:	2202      	movs	r2, #2
    4236:	210a      	movs	r1, #10
    4238:	4814      	ldr	r0, [pc, #80]	; (428c <sound_sampler+0x80>)
    423a:	f7fd fe91 	bl	1f60 <config_pin>
    423e:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4242:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4246:	68db      	ldr	r3, [r3, #12]
    4248:	f043 0301 	orr.w	r3, r3, #1
    424c:	60d3      	str	r3, [r2, #12]
    424e:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4252:	f240 62fd 	movw	r2, #1789	; 0x6fd
    4256:	62da      	str	r2, [r3, #44]	; 0x2c
    4258:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    425c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    4260:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    4262:	6393      	str	r3, [r2, #56]	; 0x38
    4264:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    4268:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    426c:	681b      	ldr	r3, [r3, #0]
    426e:	f043 0301 	orr.w	r3, r3, #1
    4272:	6013      	str	r3, [r2, #0]
    4274:	4a06      	ldr	r2, [pc, #24]	; (4290 <sound_sampler+0x84>)
    4276:	88fb      	ldrh	r3, [r7, #6]
    4278:	8013      	strh	r3, [r2, #0]
    427a:	bf00      	nop
    427c:	3708      	adds	r7, #8
    427e:	46bd      	mov	sp, r7
    4280:	bd80      	pop	{r7, pc}
    4282:	bf00      	nop
    4284:	20000618 	.word	0x20000618
    4288:	40010000 	.word	0x40010000
    428c:	40010c00 	.word	0x40010c00
    4290:	20004dbc 	.word	0x20004dbc

00004294 <sound_stop>:
    4294:	b480      	push	{r7}
    4296:	af00      	add	r7, sp, #0
    4298:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    429c:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42a0:	681b      	ldr	r3, [r3, #0]
    42a2:	f023 0301 	bic.w	r3, r3, #1
    42a6:	6013      	str	r3, [r2, #0]
    42a8:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    42ac:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    42b0:	68db      	ldr	r3, [r3, #12]
    42b2:	f023 0301 	bic.w	r3, r3, #1
    42b6:	60d3      	str	r3, [r2, #12]
    42b8:	bf00      	nop
    42ba:	46bd      	mov	sp, r7
    42bc:	bc80      	pop	{r7}
    42be:	4770      	bx	lr

000042c0 <key_tone>:
    42c0:	b580      	push	{r7, lr}
    42c2:	b084      	sub	sp, #16
    42c4:	af00      	add	r7, sp, #0
    42c6:	60f8      	str	r0, [r7, #12]
    42c8:	60b9      	str	r1, [r7, #8]
    42ca:	607a      	str	r2, [r7, #4]
    42cc:	4a0b      	ldr	r2, [pc, #44]	; (42fc <key_tone+0x3c>)
    42ce:	68fb      	ldr	r3, [r7, #12]
    42d0:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
    42d4:	68ba      	ldr	r2, [r7, #8]
    42d6:	b292      	uxth	r2, r2
    42d8:	4611      	mov	r1, r2
    42da:	4618      	mov	r0, r3
    42dc:	f7ff ff24 	bl	4128 <tone>
    42e0:	687b      	ldr	r3, [r7, #4]
    42e2:	2b00      	cmp	r3, #0
    42e4:	d005      	beq.n	42f2 <key_tone+0x32>
    42e6:	bf00      	nop
    42e8:	4b05      	ldr	r3, [pc, #20]	; (4300 <key_tone+0x40>)
    42ea:	881b      	ldrh	r3, [r3, #0]
    42ec:	b29b      	uxth	r3, r3
    42ee:	2b00      	cmp	r3, #0
    42f0:	d1fa      	bne.n	42e8 <key_tone+0x28>
    42f2:	bf00      	nop
    42f4:	3710      	adds	r7, #16
    42f6:	46bd      	mov	sp, r7
    42f8:	bd80      	pop	{r7, pc}
    42fa:	bf00      	nop
    42fc:	000059e0 	.word	0x000059e0
    4300:	20004dbc 	.word	0x20004dbc

00004304 <noise>:
    4304:	b580      	push	{r7, lr}
    4306:	b084      	sub	sp, #16
    4308:	af00      	add	r7, sp, #0
    430a:	6078      	str	r0, [r7, #4]
    430c:	4b0f      	ldr	r3, [pc, #60]	; (434c <noise+0x48>)
    430e:	681b      	ldr	r3, [r3, #0]
    4310:	4618      	mov	r0, r3
    4312:	f7fc f8b5 	bl	480 <srand>
    4316:	2300      	movs	r3, #0
    4318:	60fb      	str	r3, [r7, #12]
    431a:	e00b      	b.n	4334 <noise+0x30>
    431c:	f7fc f8be 	bl	49c <rand>
    4320:	4603      	mov	r3, r0
    4322:	b2d9      	uxtb	r1, r3
    4324:	4a0a      	ldr	r2, [pc, #40]	; (4350 <noise+0x4c>)
    4326:	68fb      	ldr	r3, [r7, #12]
    4328:	4413      	add	r3, r2
    432a:	460a      	mov	r2, r1
    432c:	701a      	strb	r2, [r3, #0]
    432e:	68fb      	ldr	r3, [r7, #12]
    4330:	3301      	adds	r3, #1
    4332:	60fb      	str	r3, [r7, #12]
    4334:	68fb      	ldr	r3, [r7, #12]
    4336:	2b0f      	cmp	r3, #15
    4338:	ddf0      	ble.n	431c <noise+0x18>
    433a:	687b      	ldr	r3, [r7, #4]
    433c:	b29b      	uxth	r3, r3
    433e:	4618      	mov	r0, r3
    4340:	f7ff ff64 	bl	420c <sound_sampler>
    4344:	bf00      	nop
    4346:	3710      	adds	r7, #16
    4348:	46bd      	mov	sp, r7
    434a:	bd80      	pop	{r7, pc}
    434c:	20004db8 	.word	0x20004db8
    4350:	20000608 	.word	0x20000608

00004354 <sound_handler>:
    4354:	4668      	mov	r0, sp
    4356:	f020 0107 	bic.w	r1, r0, #7
    435a:	468d      	mov	sp, r1
    435c:	b481      	push	{r0, r7}
    435e:	b082      	sub	sp, #8
    4360:	af00      	add	r7, sp, #0
    4362:	4b1e      	ldr	r3, [pc, #120]	; (43dc <sound_handler+0x88>)
    4364:	781b      	ldrb	r3, [r3, #0]
    4366:	08db      	lsrs	r3, r3, #3
    4368:	71fb      	strb	r3, [r7, #7]
    436a:	4b1c      	ldr	r3, [pc, #112]	; (43dc <sound_handler+0x88>)
    436c:	781b      	ldrb	r3, [r3, #0]
    436e:	43db      	mvns	r3, r3
    4370:	f003 0307 	and.w	r3, r3, #7
    4374:	2201      	movs	r2, #1
    4376:	fa02 f303 	lsl.w	r3, r2, r3
    437a:	71bb      	strb	r3, [r7, #6]
    437c:	79fb      	ldrb	r3, [r7, #7]
    437e:	4a18      	ldr	r2, [pc, #96]	; (43e0 <sound_handler+0x8c>)
    4380:	5cd2      	ldrb	r2, [r2, r3]
    4382:	79bb      	ldrb	r3, [r7, #6]
    4384:	4013      	ands	r3, r2
    4386:	b2db      	uxtb	r3, r3
    4388:	2b00      	cmp	r3, #0
    438a:	d006      	beq.n	439a <sound_handler+0x46>
    438c:	4a15      	ldr	r2, [pc, #84]	; (43e4 <sound_handler+0x90>)
    438e:	4b15      	ldr	r3, [pc, #84]	; (43e4 <sound_handler+0x90>)
    4390:	68db      	ldr	r3, [r3, #12]
    4392:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    4396:	60d3      	str	r3, [r2, #12]
    4398:	e005      	b.n	43a6 <sound_handler+0x52>
    439a:	4a12      	ldr	r2, [pc, #72]	; (43e4 <sound_handler+0x90>)
    439c:	4b11      	ldr	r3, [pc, #68]	; (43e4 <sound_handler+0x90>)
    439e:	68db      	ldr	r3, [r3, #12]
    43a0:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
    43a4:	60d3      	str	r3, [r2, #12]
    43a6:	4b0d      	ldr	r3, [pc, #52]	; (43dc <sound_handler+0x88>)
    43a8:	781b      	ldrb	r3, [r3, #0]
    43aa:	3301      	adds	r3, #1
    43ac:	b2da      	uxtb	r2, r3
    43ae:	4b0b      	ldr	r3, [pc, #44]	; (43dc <sound_handler+0x88>)
    43b0:	701a      	strb	r2, [r3, #0]
    43b2:	4b0a      	ldr	r3, [pc, #40]	; (43dc <sound_handler+0x88>)
    43b4:	781b      	ldrb	r3, [r3, #0]
    43b6:	f003 030f 	and.w	r3, r3, #15
    43ba:	b2da      	uxtb	r2, r3
    43bc:	4b07      	ldr	r3, [pc, #28]	; (43dc <sound_handler+0x88>)
    43be:	701a      	strb	r2, [r3, #0]
    43c0:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
    43c4:	f04f 4380 	mov.w	r3, #1073741824	; 0x40000000
    43c8:	691b      	ldr	r3, [r3, #16]
    43ca:	f023 0301 	bic.w	r3, r3, #1
    43ce:	6113      	str	r3, [r2, #16]
    43d0:	bf00      	nop
    43d2:	3708      	adds	r7, #8
    43d4:	46bd      	mov	sp, r7
    43d6:	bc81      	pop	{r0, r7}
    43d8:	4685      	mov	sp, r0
    43da:	4770      	bx	lr
    43dc:	20000618 	.word	0x20000618
    43e0:	20000608 	.word	0x20000608
    43e4:	40010c00 	.word	0x40010c00

000043e8 <spi_baudrate>:
    43e8:	b480      	push	{r7}
    43ea:	b083      	sub	sp, #12
    43ec:	af00      	add	r7, sp, #0
    43ee:	6078      	str	r0, [r7, #4]
    43f0:	6039      	str	r1, [r7, #0]
    43f2:	687b      	ldr	r3, [r7, #4]
    43f4:	681b      	ldr	r3, [r3, #0]
    43f6:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    43fa:	687b      	ldr	r3, [r7, #4]
    43fc:	601a      	str	r2, [r3, #0]
    43fe:	687b      	ldr	r3, [r7, #4]
    4400:	681a      	ldr	r2, [r3, #0]
    4402:	683b      	ldr	r3, [r7, #0]
    4404:	00db      	lsls	r3, r3, #3
    4406:	431a      	orrs	r2, r3
    4408:	687b      	ldr	r3, [r7, #4]
    440a:	601a      	str	r2, [r3, #0]
    440c:	bf00      	nop
    440e:	370c      	adds	r7, #12
    4410:	46bd      	mov	sp, r7
    4412:	bc80      	pop	{r7}
    4414:	4770      	bx	lr

00004416 <spi_config_port>:
    4416:	b580      	push	{r7, lr}
    4418:	b082      	sub	sp, #8
    441a:	af00      	add	r7, sp, #0
    441c:	6078      	str	r0, [r7, #4]
    441e:	6039      	str	r1, [r7, #0]
    4420:	4a33      	ldr	r2, [pc, #204]	; (44f0 <spi_config_port+0xda>)
    4422:	4b33      	ldr	r3, [pc, #204]	; (44f0 <spi_config_port+0xda>)
    4424:	699b      	ldr	r3, [r3, #24]
    4426:	f043 0301 	orr.w	r3, r3, #1
    442a:	6193      	str	r3, [r2, #24]
    442c:	687b      	ldr	r3, [r7, #4]
    442e:	4a31      	ldr	r2, [pc, #196]	; (44f4 <spi_config_port+0xde>)
    4430:	4293      	cmp	r3, r2
    4432:	d13e      	bne.n	44b2 <spi_config_port+0x9c>
    4434:	683b      	ldr	r3, [r7, #0]
    4436:	2b00      	cmp	r3, #0
    4438:	d11a      	bne.n	4470 <spi_config_port+0x5a>
    443a:	4a2d      	ldr	r2, [pc, #180]	; (44f0 <spi_config_port+0xda>)
    443c:	4b2c      	ldr	r3, [pc, #176]	; (44f0 <spi_config_port+0xda>)
    443e:	699b      	ldr	r3, [r3, #24]
    4440:	f043 0304 	orr.w	r3, r3, #4
    4444:	6193      	str	r3, [r2, #24]
    4446:	2203      	movs	r2, #3
    4448:	2104      	movs	r1, #4
    444a:	482b      	ldr	r0, [pc, #172]	; (44f8 <spi_config_port+0xe2>)
    444c:	f7fd fd88 	bl	1f60 <config_pin>
    4450:	220b      	movs	r2, #11
    4452:	2105      	movs	r1, #5
    4454:	4828      	ldr	r0, [pc, #160]	; (44f8 <spi_config_port+0xe2>)
    4456:	f7fd fd83 	bl	1f60 <config_pin>
    445a:	2204      	movs	r2, #4
    445c:	2106      	movs	r1, #6
    445e:	4826      	ldr	r0, [pc, #152]	; (44f8 <spi_config_port+0xe2>)
    4460:	f7fd fd7e 	bl	1f60 <config_pin>
    4464:	220b      	movs	r2, #11
    4466:	2107      	movs	r1, #7
    4468:	4823      	ldr	r0, [pc, #140]	; (44f8 <spi_config_port+0xe2>)
    446a:	f7fd fd79 	bl	1f60 <config_pin>
    446e:	e03a      	b.n	44e6 <spi_config_port+0xd0>
    4470:	4a1f      	ldr	r2, [pc, #124]	; (44f0 <spi_config_port+0xda>)
    4472:	4b1f      	ldr	r3, [pc, #124]	; (44f0 <spi_config_port+0xda>)
    4474:	699b      	ldr	r3, [r3, #24]
    4476:	f043 030d 	orr.w	r3, r3, #13
    447a:	6193      	str	r3, [r2, #24]
    447c:	4a1f      	ldr	r2, [pc, #124]	; (44fc <spi_config_port+0xe6>)
    447e:	4b1f      	ldr	r3, [pc, #124]	; (44fc <spi_config_port+0xe6>)
    4480:	685b      	ldr	r3, [r3, #4]
    4482:	f043 0301 	orr.w	r3, r3, #1
    4486:	6053      	str	r3, [r2, #4]
    4488:	2203      	movs	r2, #3
    448a:	210f      	movs	r1, #15
    448c:	481a      	ldr	r0, [pc, #104]	; (44f8 <spi_config_port+0xe2>)
    448e:	f7fd fd67 	bl	1f60 <config_pin>
    4492:	220b      	movs	r2, #11
    4494:	2103      	movs	r1, #3
    4496:	481a      	ldr	r0, [pc, #104]	; (4500 <spi_config_port+0xea>)
    4498:	f7fd fd62 	bl	1f60 <config_pin>
    449c:	2204      	movs	r2, #4
    449e:	2104      	movs	r1, #4
    44a0:	4817      	ldr	r0, [pc, #92]	; (4500 <spi_config_port+0xea>)
    44a2:	f7fd fd5d 	bl	1f60 <config_pin>
    44a6:	220b      	movs	r2, #11
    44a8:	2105      	movs	r1, #5
    44aa:	4815      	ldr	r0, [pc, #84]	; (4500 <spi_config_port+0xea>)
    44ac:	f7fd fd58 	bl	1f60 <config_pin>
    44b0:	e019      	b.n	44e6 <spi_config_port+0xd0>
    44b2:	4a0f      	ldr	r2, [pc, #60]	; (44f0 <spi_config_port+0xda>)
    44b4:	4b0e      	ldr	r3, [pc, #56]	; (44f0 <spi_config_port+0xda>)
    44b6:	699b      	ldr	r3, [r3, #24]
    44b8:	f043 0308 	orr.w	r3, r3, #8
    44bc:	6193      	str	r3, [r2, #24]
    44be:	2203      	movs	r2, #3
    44c0:	2102      	movs	r1, #2
    44c2:	480f      	ldr	r0, [pc, #60]	; (4500 <spi_config_port+0xea>)
    44c4:	f7fd fd4c 	bl	1f60 <config_pin>
    44c8:	220b      	movs	r2, #11
    44ca:	210d      	movs	r1, #13
    44cc:	480c      	ldr	r0, [pc, #48]	; (4500 <spi_config_port+0xea>)
    44ce:	f7fd fd47 	bl	1f60 <config_pin>
    44d2:	2204      	movs	r2, #4
    44d4:	210e      	movs	r1, #14
    44d6:	480a      	ldr	r0, [pc, #40]	; (4500 <spi_config_port+0xea>)
    44d8:	f7fd fd42 	bl	1f60 <config_pin>
    44dc:	220b      	movs	r2, #11
    44de:	210f      	movs	r1, #15
    44e0:	4807      	ldr	r0, [pc, #28]	; (4500 <spi_config_port+0xea>)
    44e2:	f7fd fd3d 	bl	1f60 <config_pin>
    44e6:	bf00      	nop
    44e8:	3708      	adds	r7, #8
    44ea:	46bd      	mov	sp, r7
    44ec:	bd80      	pop	{r7, pc}
    44ee:	bf00      	nop
    44f0:	40021000 	.word	0x40021000
    44f4:	40013000 	.word	0x40013000
    44f8:	40010800 	.word	0x40010800
    44fc:	40010000 	.word	0x40010000
    4500:	40010c00 	.word	0x40010c00

00004504 <spi_init>:
    4504:	b580      	push	{r7, lr}
    4506:	b084      	sub	sp, #16
    4508:	af00      	add	r7, sp, #0
    450a:	60f8      	str	r0, [r7, #12]
    450c:	60b9      	str	r1, [r7, #8]
    450e:	607a      	str	r2, [r7, #4]
    4510:	603b      	str	r3, [r7, #0]
    4512:	6839      	ldr	r1, [r7, #0]
    4514:	68f8      	ldr	r0, [r7, #12]
    4516:	f7ff ff7e 	bl	4416 <spi_config_port>
    451a:	68fb      	ldr	r3, [r7, #12]
    451c:	4a10      	ldr	r2, [pc, #64]	; (4560 <spi_init+0x5c>)
    451e:	4293      	cmp	r3, r2
    4520:	d106      	bne.n	4530 <spi_init+0x2c>
    4522:	4a10      	ldr	r2, [pc, #64]	; (4564 <spi_init+0x60>)
    4524:	4b0f      	ldr	r3, [pc, #60]	; (4564 <spi_init+0x60>)
    4526:	699b      	ldr	r3, [r3, #24]
    4528:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    452c:	6193      	str	r3, [r2, #24]
    452e:	e005      	b.n	453c <spi_init+0x38>
    4530:	4a0c      	ldr	r2, [pc, #48]	; (4564 <spi_init+0x60>)
    4532:	4b0c      	ldr	r3, [pc, #48]	; (4564 <spi_init+0x60>)
    4534:	69db      	ldr	r3, [r3, #28]
    4536:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    453a:	61d3      	str	r3, [r2, #28]
    453c:	68fb      	ldr	r3, [r7, #12]
    453e:	687a      	ldr	r2, [r7, #4]
    4540:	601a      	str	r2, [r3, #0]
    4542:	68b9      	ldr	r1, [r7, #8]
    4544:	68f8      	ldr	r0, [r7, #12]
    4546:	f7ff ff4f 	bl	43e8 <spi_baudrate>
    454a:	68fb      	ldr	r3, [r7, #12]
    454c:	681b      	ldr	r3, [r3, #0]
    454e:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    4552:	68fb      	ldr	r3, [r7, #12]
    4554:	601a      	str	r2, [r3, #0]
    4556:	bf00      	nop
    4558:	3710      	adds	r7, #16
    455a:	46bd      	mov	sp, r7
    455c:	bd80      	pop	{r7, pc}
    455e:	bf00      	nop
    4560:	40013000 	.word	0x40013000
    4564:	40021000 	.word	0x40021000

00004568 <spi_send>:
    4568:	b480      	push	{r7}
    456a:	b083      	sub	sp, #12
    456c:	af00      	add	r7, sp, #0
    456e:	6078      	str	r0, [r7, #4]
    4570:	460b      	mov	r3, r1
    4572:	70fb      	strb	r3, [r7, #3]
    4574:	bf00      	nop
    4576:	687b      	ldr	r3, [r7, #4]
    4578:	689b      	ldr	r3, [r3, #8]
    457a:	f003 0302 	and.w	r3, r3, #2
    457e:	2b00      	cmp	r3, #0
    4580:	d0f9      	beq.n	4576 <spi_send+0xe>
    4582:	78fa      	ldrb	r2, [r7, #3]
    4584:	687b      	ldr	r3, [r7, #4]
    4586:	60da      	str	r2, [r3, #12]
    4588:	bf00      	nop
    458a:	687b      	ldr	r3, [r7, #4]
    458c:	689b      	ldr	r3, [r3, #8]
    458e:	f003 0301 	and.w	r3, r3, #1
    4592:	2b00      	cmp	r3, #0
    4594:	d0f9      	beq.n	458a <spi_send+0x22>
    4596:	687b      	ldr	r3, [r7, #4]
    4598:	68db      	ldr	r3, [r3, #12]
    459a:	b2db      	uxtb	r3, r3
    459c:	4618      	mov	r0, r3
    459e:	370c      	adds	r7, #12
    45a0:	46bd      	mov	sp, r7
    45a2:	bc80      	pop	{r7}
    45a4:	4770      	bx	lr

000045a6 <spi_receive>:
    45a6:	b480      	push	{r7}
    45a8:	b085      	sub	sp, #20
    45aa:	af00      	add	r7, sp, #0
    45ac:	6078      	str	r0, [r7, #4]
    45ae:	bf00      	nop
    45b0:	687b      	ldr	r3, [r7, #4]
    45b2:	689b      	ldr	r3, [r3, #8]
    45b4:	f003 0302 	and.w	r3, r3, #2
    45b8:	2b00      	cmp	r3, #0
    45ba:	d0f9      	beq.n	45b0 <spi_receive+0xa>
    45bc:	687b      	ldr	r3, [r7, #4]
    45be:	22ff      	movs	r2, #255	; 0xff
    45c0:	60da      	str	r2, [r3, #12]
    45c2:	bf00      	nop
    45c4:	687b      	ldr	r3, [r7, #4]
    45c6:	689b      	ldr	r3, [r3, #8]
    45c8:	f003 0301 	and.w	r3, r3, #1
    45cc:	2b00      	cmp	r3, #0
    45ce:	d0f9      	beq.n	45c4 <spi_receive+0x1e>
    45d0:	687b      	ldr	r3, [r7, #4]
    45d2:	68db      	ldr	r3, [r3, #12]
    45d4:	73fb      	strb	r3, [r7, #15]
    45d6:	7bfb      	ldrb	r3, [r7, #15]
    45d8:	4618      	mov	r0, r3
    45da:	3714      	adds	r7, #20
    45dc:	46bd      	mov	sp, r7
    45de:	bc80      	pop	{r7}
    45e0:	4770      	bx	lr

000045e2 <spi_send_block>:
    45e2:	b480      	push	{r7}
    45e4:	b087      	sub	sp, #28
    45e6:	af00      	add	r7, sp, #0
    45e8:	60f8      	str	r0, [r7, #12]
    45ea:	60b9      	str	r1, [r7, #8]
    45ec:	607a      	str	r2, [r7, #4]
    45ee:	e010      	b.n	4612 <spi_send_block+0x30>
    45f0:	68bb      	ldr	r3, [r7, #8]
    45f2:	1c5a      	adds	r2, r3, #1
    45f4:	60ba      	str	r2, [r7, #8]
    45f6:	781b      	ldrb	r3, [r3, #0]
    45f8:	461a      	mov	r2, r3
    45fa:	68fb      	ldr	r3, [r7, #12]
    45fc:	60da      	str	r2, [r3, #12]
    45fe:	bf00      	nop
    4600:	68fb      	ldr	r3, [r7, #12]
    4602:	689b      	ldr	r3, [r3, #8]
    4604:	f003 0302 	and.w	r3, r3, #2
    4608:	2b00      	cmp	r3, #0
    460a:	d0f9      	beq.n	4600 <spi_send_block+0x1e>
    460c:	687b      	ldr	r3, [r7, #4]
    460e:	3b01      	subs	r3, #1
    4610:	607b      	str	r3, [r7, #4]
    4612:	687b      	ldr	r3, [r7, #4]
    4614:	2b00      	cmp	r3, #0
    4616:	d1eb      	bne.n	45f0 <spi_send_block+0xe>
    4618:	bf00      	nop
    461a:	68fb      	ldr	r3, [r7, #12]
    461c:	689b      	ldr	r3, [r3, #8]
    461e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    4622:	2b00      	cmp	r3, #0
    4624:	d1f9      	bne.n	461a <spi_send_block+0x38>
    4626:	68fb      	ldr	r3, [r7, #12]
    4628:	68db      	ldr	r3, [r3, #12]
    462a:	75fb      	strb	r3, [r7, #23]
    462c:	bf00      	nop
    462e:	371c      	adds	r7, #28
    4630:	46bd      	mov	sp, r7
    4632:	bc80      	pop	{r7}
    4634:	4770      	bx	lr

00004636 <spi_receive_block>:
    4636:	b480      	push	{r7}
    4638:	b085      	sub	sp, #20
    463a:	af00      	add	r7, sp, #0
    463c:	60f8      	str	r0, [r7, #12]
    463e:	60b9      	str	r1, [r7, #8]
    4640:	607a      	str	r2, [r7, #4]
    4642:	e013      	b.n	466c <spi_receive_block+0x36>
    4644:	68fb      	ldr	r3, [r7, #12]
    4646:	2200      	movs	r2, #0
    4648:	60da      	str	r2, [r3, #12]
    464a:	bf00      	nop
    464c:	68fb      	ldr	r3, [r7, #12]
    464e:	689b      	ldr	r3, [r3, #8]
    4650:	f003 0301 	and.w	r3, r3, #1
    4654:	2b00      	cmp	r3, #0
    4656:	d0f9      	beq.n	464c <spi_receive_block+0x16>
    4658:	68bb      	ldr	r3, [r7, #8]
    465a:	1c5a      	adds	r2, r3, #1
    465c:	60ba      	str	r2, [r7, #8]
    465e:	68fa      	ldr	r2, [r7, #12]
    4660:	68d2      	ldr	r2, [r2, #12]
    4662:	b2d2      	uxtb	r2, r2
    4664:	701a      	strb	r2, [r3, #0]
    4666:	687b      	ldr	r3, [r7, #4]
    4668:	3b01      	subs	r3, #1
    466a:	607b      	str	r3, [r7, #4]
    466c:	687b      	ldr	r3, [r7, #4]
    466e:	2b00      	cmp	r3, #0
    4670:	d1e8      	bne.n	4644 <spi_receive_block+0xe>
    4672:	bf00      	nop
    4674:	3714      	adds	r7, #20
    4676:	46bd      	mov	sp, r7
    4678:	bc80      	pop	{r7}
    467a:	4770      	bx	lr

0000467c <reset_mcu>:
    467c:	4b01      	ldr	r3, [pc, #4]	; (4684 <reset_mcu+0x8>)
    467e:	4a02      	ldr	r2, [pc, #8]	; (4688 <reset_mcu+0xc>)
    4680:	601a      	str	r2, [r3, #0]
    4682:	bf00      	nop
    4684:	e000ed0c 	.word	0xe000ed0c
    4688:	05fa0004 	.word	0x05fa0004

0000468c <print_fault>:
    468c:	b580      	push	{r7, lr}
    468e:	b082      	sub	sp, #8
    4690:	af00      	add	r7, sp, #0
    4692:	6078      	str	r0, [r7, #4]
    4694:	6039      	str	r1, [r7, #0]
    4696:	6878      	ldr	r0, [r7, #4]
    4698:	f000 f9bc 	bl	4a14 <print>
    469c:	4818      	ldr	r0, [pc, #96]	; (4700 <print_fault+0x74>)
    469e:	f000 f9b9 	bl	4a14 <print>
    46a2:	683b      	ldr	r3, [r7, #0]
    46a4:	2b00      	cmp	r3, #0
    46a6:	d004      	beq.n	46b2 <print_fault+0x26>
    46a8:	683b      	ldr	r3, [r7, #0]
    46aa:	2110      	movs	r1, #16
    46ac:	4618      	mov	r0, r3
    46ae:	f000 f9e1 	bl	4a74 <print_int>
    46b2:	200d      	movs	r0, #13
    46b4:	f000 f8f6 	bl	48a4 <put_char>
    46b8:	4812      	ldr	r0, [pc, #72]	; (4704 <print_fault+0x78>)
    46ba:	f000 f9ab 	bl	4a14 <print>
    46be:	4b12      	ldr	r3, [pc, #72]	; (4708 <print_fault+0x7c>)
    46c0:	681b      	ldr	r3, [r3, #0]
    46c2:	f3c3 430f 	ubfx	r3, r3, #16, #16
    46c6:	b29b      	uxth	r3, r3
    46c8:	2110      	movs	r1, #16
    46ca:	4618      	mov	r0, r3
    46cc:	f000 f9d2 	bl	4a74 <print_int>
    46d0:	480e      	ldr	r0, [pc, #56]	; (470c <print_fault+0x80>)
    46d2:	f000 f99f 	bl	4a14 <print>
    46d6:	4b0c      	ldr	r3, [pc, #48]	; (4708 <print_fault+0x7c>)
    46d8:	681b      	ldr	r3, [r3, #0]
    46da:	f3c3 2307 	ubfx	r3, r3, #8, #8
    46de:	b2db      	uxtb	r3, r3
    46e0:	2110      	movs	r1, #16
    46e2:	4618      	mov	r0, r3
    46e4:	f000 f9c6 	bl	4a74 <print_int>
    46e8:	4809      	ldr	r0, [pc, #36]	; (4710 <print_fault+0x84>)
    46ea:	f000 f993 	bl	4a14 <print>
    46ee:	4b06      	ldr	r3, [pc, #24]	; (4708 <print_fault+0x7c>)
    46f0:	681b      	ldr	r3, [r3, #0]
    46f2:	b2db      	uxtb	r3, r3
    46f4:	2110      	movs	r1, #16
    46f6:	4618      	mov	r0, r3
    46f8:	f000 f9bc 	bl	4a74 <print_int>
    46fc:	e7fe      	b.n	46fc <print_fault+0x70>
    46fe:	bf00      	nop
    4700:	00005a00 	.word	0x00005a00
    4704:	00005a10 	.word	0x00005a10
    4708:	e000ed28 	.word	0xe000ed28
    470c:	00005a18 	.word	0x00005a18
    4710:	00005a20 	.word	0x00005a20

00004714 <font_color>:
    4714:	b480      	push	{r7}
    4716:	b083      	sub	sp, #12
    4718:	af00      	add	r7, sp, #0
    471a:	4603      	mov	r3, r0
    471c:	71fb      	strb	r3, [r7, #7]
    471e:	79fb      	ldrb	r3, [r7, #7]
    4720:	f003 030f 	and.w	r3, r3, #15
    4724:	b2da      	uxtb	r2, r3
    4726:	4b03      	ldr	r3, [pc, #12]	; (4734 <font_color+0x20>)
    4728:	705a      	strb	r2, [r3, #1]
    472a:	bf00      	nop
    472c:	370c      	adds	r7, #12
    472e:	46bd      	mov	sp, r7
    4730:	bc80      	pop	{r7}
    4732:	4770      	bx	lr
    4734:	20000174 	.word	0x20000174

00004738 <bg_color>:
    4738:	b480      	push	{r7}
    473a:	b083      	sub	sp, #12
    473c:	af00      	add	r7, sp, #0
    473e:	4603      	mov	r3, r0
    4740:	71fb      	strb	r3, [r7, #7]
    4742:	79fb      	ldrb	r3, [r7, #7]
    4744:	f003 030f 	and.w	r3, r3, #15
    4748:	b2da      	uxtb	r2, r3
    474a:	4b03      	ldr	r3, [pc, #12]	; (4758 <bg_color+0x20>)
    474c:	701a      	strb	r2, [r3, #0]
    474e:	bf00      	nop
    4750:	370c      	adds	r7, #12
    4752:	46bd      	mov	sp, r7
    4754:	bc80      	pop	{r7}
    4756:	4770      	bx	lr
    4758:	20000174 	.word	0x20000174

0000475c <select_font>:
    475c:	b480      	push	{r7}
    475e:	b083      	sub	sp, #12
    4760:	af00      	add	r7, sp, #0
    4762:	4603      	mov	r3, r0
    4764:	71fb      	strb	r3, [r7, #7]
    4766:	4a04      	ldr	r2, [pc, #16]	; (4778 <select_font+0x1c>)
    4768:	79fb      	ldrb	r3, [r7, #7]
    476a:	7013      	strb	r3, [r2, #0]
    476c:	bf00      	nop
    476e:	370c      	adds	r7, #12
    4770:	46bd      	mov	sp, r7
    4772:	bc80      	pop	{r7}
    4774:	4770      	bx	lr
    4776:	bf00      	nop
    4778:	20000170 	.word	0x20000170

0000477c <new_line>:
    477c:	b580      	push	{r7, lr}
    477e:	b082      	sub	sp, #8
    4780:	af00      	add	r7, sp, #0
    4782:	4b27      	ldr	r3, [pc, #156]	; (4820 <new_line+0xa4>)
    4784:	2200      	movs	r2, #0
    4786:	701a      	strb	r2, [r3, #0]
    4788:	f000 fdee 	bl	5368 <get_video_params>
    478c:	6078      	str	r0, [r7, #4]
    478e:	4b25      	ldr	r3, [pc, #148]	; (4824 <new_line+0xa8>)
    4790:	781b      	ldrb	r3, [r3, #0]
    4792:	2b01      	cmp	r3, #1
    4794:	d017      	beq.n	47c6 <new_line+0x4a>
    4796:	2b02      	cmp	r3, #2
    4798:	d029      	beq.n	47ee <new_line+0x72>
    479a:	2b00      	cmp	r3, #0
    479c:	d000      	beq.n	47a0 <new_line+0x24>
    479e:	e03a      	b.n	4816 <new_line+0x9a>
    47a0:	4b21      	ldr	r3, [pc, #132]	; (4828 <new_line+0xac>)
    47a2:	781b      	ldrb	r3, [r3, #0]
    47a4:	1d9a      	adds	r2, r3, #6
    47a6:	687b      	ldr	r3, [r7, #4]
    47a8:	89db      	ldrh	r3, [r3, #14]
    47aa:	3b05      	subs	r3, #5
    47ac:	429a      	cmp	r2, r3
    47ae:	dc06      	bgt.n	47be <new_line+0x42>
    47b0:	4b1d      	ldr	r3, [pc, #116]	; (4828 <new_line+0xac>)
    47b2:	781b      	ldrb	r3, [r3, #0]
    47b4:	3306      	adds	r3, #6
    47b6:	b2da      	uxtb	r2, r3
    47b8:	4b1b      	ldr	r3, [pc, #108]	; (4828 <new_line+0xac>)
    47ba:	701a      	strb	r2, [r3, #0]
    47bc:	e02b      	b.n	4816 <new_line+0x9a>
    47be:	2006      	movs	r0, #6
    47c0:	f7fd fd8e 	bl	22e0 <gfx_scroll_up>
    47c4:	e027      	b.n	4816 <new_line+0x9a>
    47c6:	4b18      	ldr	r3, [pc, #96]	; (4828 <new_line+0xac>)
    47c8:	781b      	ldrb	r3, [r3, #0]
    47ca:	f103 020a 	add.w	r2, r3, #10
    47ce:	687b      	ldr	r3, [r7, #4]
    47d0:	89db      	ldrh	r3, [r3, #14]
    47d2:	3b09      	subs	r3, #9
    47d4:	429a      	cmp	r2, r3
    47d6:	dc06      	bgt.n	47e6 <new_line+0x6a>
    47d8:	4b13      	ldr	r3, [pc, #76]	; (4828 <new_line+0xac>)
    47da:	781b      	ldrb	r3, [r3, #0]
    47dc:	330a      	adds	r3, #10
    47de:	b2da      	uxtb	r2, r3
    47e0:	4b11      	ldr	r3, [pc, #68]	; (4828 <new_line+0xac>)
    47e2:	701a      	strb	r2, [r3, #0]
    47e4:	e017      	b.n	4816 <new_line+0x9a>
    47e6:	200a      	movs	r0, #10
    47e8:	f7fd fd7a 	bl	22e0 <gfx_scroll_up>
    47ec:	e013      	b.n	4816 <new_line+0x9a>
    47ee:	4b0e      	ldr	r3, [pc, #56]	; (4828 <new_line+0xac>)
    47f0:	781b      	ldrb	r3, [r3, #0]
    47f2:	f103 0208 	add.w	r2, r3, #8
    47f6:	687b      	ldr	r3, [r7, #4]
    47f8:	89db      	ldrh	r3, [r3, #14]
    47fa:	3b07      	subs	r3, #7
    47fc:	429a      	cmp	r2, r3
    47fe:	dc06      	bgt.n	480e <new_line+0x92>
    4800:	4b09      	ldr	r3, [pc, #36]	; (4828 <new_line+0xac>)
    4802:	781b      	ldrb	r3, [r3, #0]
    4804:	3308      	adds	r3, #8
    4806:	b2da      	uxtb	r2, r3
    4808:	4b07      	ldr	r3, [pc, #28]	; (4828 <new_line+0xac>)
    480a:	701a      	strb	r2, [r3, #0]
    480c:	e002      	b.n	4814 <new_line+0x98>
    480e:	2008      	movs	r0, #8
    4810:	f7fd fd66 	bl	22e0 <gfx_scroll_up>
    4814:	bf00      	nop
    4816:	bf00      	nop
    4818:	3708      	adds	r7, #8
    481a:	46bd      	mov	sp, r7
    481c:	bd80      	pop	{r7, pc}
    481e:	bf00      	nop
    4820:	20000619 	.word	0x20000619
    4824:	20000170 	.word	0x20000170
    4828:	2000061a 	.word	0x2000061a

0000482c <draw_char>:
    482c:	b5b0      	push	{r4, r5, r7, lr}
    482e:	b086      	sub	sp, #24
    4830:	af00      	add	r7, sp, #0
    4832:	60f8      	str	r0, [r7, #12]
    4834:	60b9      	str	r1, [r7, #8]
    4836:	607a      	str	r2, [r7, #4]
    4838:	603b      	str	r3, [r7, #0]
    483a:	68bc      	ldr	r4, [r7, #8]
    483c:	e026      	b.n	488c <draw_char+0x60>
    483e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    4840:	1c5a      	adds	r2, r3, #1
    4842:	62ba      	str	r2, [r7, #40]	; 0x28
    4844:	781b      	ldrb	r3, [r3, #0]
    4846:	757b      	strb	r3, [r7, #21]
    4848:	2380      	movs	r3, #128	; 0x80
    484a:	75bb      	strb	r3, [r7, #22]
    484c:	68fd      	ldr	r5, [r7, #12]
    484e:	e017      	b.n	4880 <draw_char+0x54>
    4850:	7d7a      	ldrb	r2, [r7, #21]
    4852:	7dbb      	ldrb	r3, [r7, #22]
    4854:	4013      	ands	r3, r2
    4856:	753b      	strb	r3, [r7, #20]
    4858:	7d3b      	ldrb	r3, [r7, #20]
    485a:	2b00      	cmp	r3, #0
    485c:	d003      	beq.n	4866 <draw_char+0x3a>
    485e:	4b10      	ldr	r3, [pc, #64]	; (48a0 <draw_char+0x74>)
    4860:	785b      	ldrb	r3, [r3, #1]
    4862:	75fb      	strb	r3, [r7, #23]
    4864:	e002      	b.n	486c <draw_char+0x40>
    4866:	4b0e      	ldr	r3, [pc, #56]	; (48a0 <draw_char+0x74>)
    4868:	781b      	ldrb	r3, [r3, #0]
    486a:	75fb      	strb	r3, [r7, #23]
    486c:	7dfb      	ldrb	r3, [r7, #23]
    486e:	461a      	mov	r2, r3
    4870:	4621      	mov	r1, r4
    4872:	4628      	mov	r0, r5
    4874:	f7fd fc8a 	bl	218c <gfx_plot>
    4878:	7dbb      	ldrb	r3, [r7, #22]
    487a:	085b      	lsrs	r3, r3, #1
    487c:	75bb      	strb	r3, [r7, #22]
    487e:	3501      	adds	r5, #1
    4880:	68fa      	ldr	r2, [r7, #12]
    4882:	687b      	ldr	r3, [r7, #4]
    4884:	4413      	add	r3, r2
    4886:	42ab      	cmp	r3, r5
    4888:	dce2      	bgt.n	4850 <draw_char+0x24>
    488a:	3401      	adds	r4, #1
    488c:	68ba      	ldr	r2, [r7, #8]
    488e:	683b      	ldr	r3, [r7, #0]
    4890:	4413      	add	r3, r2
    4892:	42a3      	cmp	r3, r4
    4894:	dcd3      	bgt.n	483e <draw_char+0x12>
    4896:	bf00      	nop
    4898:	3718      	adds	r7, #24
    489a:	46bd      	mov	sp, r7
    489c:	bdb0      	pop	{r4, r5, r7, pc}
    489e:	bf00      	nop
    48a0:	20000174 	.word	0x20000174

000048a4 <put_char>:
    48a4:	b580      	push	{r7, lr}
    48a6:	b084      	sub	sp, #16
    48a8:	af02      	add	r7, sp, #8
    48aa:	4603      	mov	r3, r0
    48ac:	71fb      	strb	r3, [r7, #7]
    48ae:	4b3d      	ldr	r3, [pc, #244]	; (49a4 <put_char+0x100>)
    48b0:	781b      	ldrb	r3, [r3, #0]
    48b2:	2b01      	cmp	r3, #1
    48b4:	d027      	beq.n	4906 <put_char+0x62>
    48b6:	2b02      	cmp	r3, #2
    48b8:	d048      	beq.n	494c <put_char+0xa8>
    48ba:	2b00      	cmp	r3, #0
    48bc:	d000      	beq.n	48c0 <put_char+0x1c>
    48be:	e06d      	b.n	499c <put_char+0xf8>
    48c0:	79fb      	ldrb	r3, [r7, #7]
    48c2:	2b0f      	cmp	r3, #15
    48c4:	d865      	bhi.n	4992 <put_char+0xee>
    48c6:	4b38      	ldr	r3, [pc, #224]	; (49a8 <put_char+0x104>)
    48c8:	781b      	ldrb	r3, [r3, #0]
    48ca:	4618      	mov	r0, r3
    48cc:	4b37      	ldr	r3, [pc, #220]	; (49ac <put_char+0x108>)
    48ce:	781b      	ldrb	r3, [r3, #0]
    48d0:	4619      	mov	r1, r3
    48d2:	79fa      	ldrb	r2, [r7, #7]
    48d4:	4613      	mov	r3, r2
    48d6:	005b      	lsls	r3, r3, #1
    48d8:	4413      	add	r3, r2
    48da:	005b      	lsls	r3, r3, #1
    48dc:	461a      	mov	r2, r3
    48de:	4b34      	ldr	r3, [pc, #208]	; (49b0 <put_char+0x10c>)
    48e0:	4413      	add	r3, r2
    48e2:	9300      	str	r3, [sp, #0]
    48e4:	2306      	movs	r3, #6
    48e6:	2204      	movs	r2, #4
    48e8:	f7ff ffa0 	bl	482c <draw_char>
    48ec:	4b2e      	ldr	r3, [pc, #184]	; (49a8 <put_char+0x104>)
    48ee:	781b      	ldrb	r3, [r3, #0]
    48f0:	3304      	adds	r3, #4
    48f2:	b2da      	uxtb	r2, r3
    48f4:	4b2c      	ldr	r3, [pc, #176]	; (49a8 <put_char+0x104>)
    48f6:	701a      	strb	r2, [r3, #0]
    48f8:	4b2b      	ldr	r3, [pc, #172]	; (49a8 <put_char+0x104>)
    48fa:	781b      	ldrb	r3, [r3, #0]
    48fc:	2bb1      	cmp	r3, #177	; 0xb1
    48fe:	d948      	bls.n	4992 <put_char+0xee>
    4900:	f7ff ff3c 	bl	477c <new_line>
    4904:	e045      	b.n	4992 <put_char+0xee>
    4906:	79fb      	ldrb	r3, [r7, #7]
    4908:	2b0f      	cmp	r3, #15
    490a:	d844      	bhi.n	4996 <put_char+0xf2>
    490c:	4b26      	ldr	r3, [pc, #152]	; (49a8 <put_char+0x104>)
    490e:	781b      	ldrb	r3, [r3, #0]
    4910:	4618      	mov	r0, r3
    4912:	4b26      	ldr	r3, [pc, #152]	; (49ac <put_char+0x108>)
    4914:	781b      	ldrb	r3, [r3, #0]
    4916:	4619      	mov	r1, r3
    4918:	79fa      	ldrb	r2, [r7, #7]
    491a:	4613      	mov	r3, r2
    491c:	009b      	lsls	r3, r3, #2
    491e:	4413      	add	r3, r2
    4920:	005b      	lsls	r3, r3, #1
    4922:	461a      	mov	r2, r3
    4924:	4b23      	ldr	r3, [pc, #140]	; (49b4 <put_char+0x110>)
    4926:	4413      	add	r3, r2
    4928:	9300      	str	r3, [sp, #0]
    492a:	230a      	movs	r3, #10
    492c:	2208      	movs	r2, #8
    492e:	f7ff ff7d 	bl	482c <draw_char>
    4932:	4b1d      	ldr	r3, [pc, #116]	; (49a8 <put_char+0x104>)
    4934:	781b      	ldrb	r3, [r3, #0]
    4936:	3308      	adds	r3, #8
    4938:	b2da      	uxtb	r2, r3
    493a:	4b1b      	ldr	r3, [pc, #108]	; (49a8 <put_char+0x104>)
    493c:	701a      	strb	r2, [r3, #0]
    493e:	4b1a      	ldr	r3, [pc, #104]	; (49a8 <put_char+0x104>)
    4940:	781b      	ldrb	r3, [r3, #0]
    4942:	2bad      	cmp	r3, #173	; 0xad
    4944:	d927      	bls.n	4996 <put_char+0xf2>
    4946:	f7ff ff19 	bl	477c <new_line>
    494a:	e024      	b.n	4996 <put_char+0xf2>
    494c:	79fb      	ldrb	r3, [r7, #7]
    494e:	2b1f      	cmp	r3, #31
    4950:	d923      	bls.n	499a <put_char+0xf6>
    4952:	79fb      	ldrb	r3, [r7, #7]
    4954:	2b84      	cmp	r3, #132	; 0x84
    4956:	d820      	bhi.n	499a <put_char+0xf6>
    4958:	4b13      	ldr	r3, [pc, #76]	; (49a8 <put_char+0x104>)
    495a:	781b      	ldrb	r3, [r3, #0]
    495c:	4618      	mov	r0, r3
    495e:	4b13      	ldr	r3, [pc, #76]	; (49ac <put_char+0x108>)
    4960:	781b      	ldrb	r3, [r3, #0]
    4962:	4619      	mov	r1, r3
    4964:	79fb      	ldrb	r3, [r7, #7]
    4966:	3b20      	subs	r3, #32
    4968:	00db      	lsls	r3, r3, #3
    496a:	4a13      	ldr	r2, [pc, #76]	; (49b8 <put_char+0x114>)
    496c:	4413      	add	r3, r2
    496e:	9300      	str	r3, [sp, #0]
    4970:	2308      	movs	r3, #8
    4972:	2206      	movs	r2, #6
    4974:	f7ff ff5a 	bl	482c <draw_char>
    4978:	4b0b      	ldr	r3, [pc, #44]	; (49a8 <put_char+0x104>)
    497a:	781b      	ldrb	r3, [r3, #0]
    497c:	3306      	adds	r3, #6
    497e:	b2da      	uxtb	r2, r3
    4980:	4b09      	ldr	r3, [pc, #36]	; (49a8 <put_char+0x104>)
    4982:	701a      	strb	r2, [r3, #0]
    4984:	4b08      	ldr	r3, [pc, #32]	; (49a8 <put_char+0x104>)
    4986:	781b      	ldrb	r3, [r3, #0]
    4988:	2baf      	cmp	r3, #175	; 0xaf
    498a:	d906      	bls.n	499a <put_char+0xf6>
    498c:	f7ff fef6 	bl	477c <new_line>
    4990:	e003      	b.n	499a <put_char+0xf6>
    4992:	bf00      	nop
    4994:	e002      	b.n	499c <put_char+0xf8>
    4996:	bf00      	nop
    4998:	e000      	b.n	499c <put_char+0xf8>
    499a:	bf00      	nop
    499c:	bf00      	nop
    499e:	3708      	adds	r7, #8
    49a0:	46bd      	mov	sp, r7
    49a2:	bd80      	pop	{r7, pc}
    49a4:	20000170 	.word	0x20000170
    49a8:	20000619 	.word	0x20000619
    49ac:	2000061a 	.word	0x2000061a
    49b0:	00005400 	.word	0x00005400
    49b4:	00005460 	.word	0x00005460
    49b8:	00005500 	.word	0x00005500

000049bc <set_cursor>:
    49bc:	b480      	push	{r7}
    49be:	b083      	sub	sp, #12
    49c0:	af00      	add	r7, sp, #0
    49c2:	4603      	mov	r3, r0
    49c4:	460a      	mov	r2, r1
    49c6:	71fb      	strb	r3, [r7, #7]
    49c8:	4613      	mov	r3, r2
    49ca:	71bb      	strb	r3, [r7, #6]
    49cc:	4a05      	ldr	r2, [pc, #20]	; (49e4 <set_cursor+0x28>)
    49ce:	79fb      	ldrb	r3, [r7, #7]
    49d0:	7013      	strb	r3, [r2, #0]
    49d2:	4a05      	ldr	r2, [pc, #20]	; (49e8 <set_cursor+0x2c>)
    49d4:	79bb      	ldrb	r3, [r7, #6]
    49d6:	7013      	strb	r3, [r2, #0]
    49d8:	bf00      	nop
    49da:	370c      	adds	r7, #12
    49dc:	46bd      	mov	sp, r7
    49de:	bc80      	pop	{r7}
    49e0:	4770      	bx	lr
    49e2:	bf00      	nop
    49e4:	20000619 	.word	0x20000619
    49e8:	2000061a 	.word	0x2000061a

000049ec <get_cursor>:
    49ec:	b480      	push	{r7}
    49ee:	af00      	add	r7, sp, #0
    49f0:	4b06      	ldr	r3, [pc, #24]	; (4a0c <get_cursor+0x20>)
    49f2:	781b      	ldrb	r3, [r3, #0]
    49f4:	b29b      	uxth	r3, r3
    49f6:	021b      	lsls	r3, r3, #8
    49f8:	b29a      	uxth	r2, r3
    49fa:	4b05      	ldr	r3, [pc, #20]	; (4a10 <get_cursor+0x24>)
    49fc:	781b      	ldrb	r3, [r3, #0]
    49fe:	b29b      	uxth	r3, r3
    4a00:	4413      	add	r3, r2
    4a02:	b29b      	uxth	r3, r3
    4a04:	4618      	mov	r0, r3
    4a06:	46bd      	mov	sp, r7
    4a08:	bc80      	pop	{r7}
    4a0a:	4770      	bx	lr
    4a0c:	20000619 	.word	0x20000619
    4a10:	2000061a 	.word	0x2000061a

00004a14 <print>:
    4a14:	b580      	push	{r7, lr}
    4a16:	b084      	sub	sp, #16
    4a18:	af00      	add	r7, sp, #0
    4a1a:	6078      	str	r0, [r7, #4]
    4a1c:	e011      	b.n	4a42 <print+0x2e>
    4a1e:	7bfb      	ldrb	r3, [r7, #15]
    4a20:	2b0a      	cmp	r3, #10
    4a22:	d004      	beq.n	4a2e <print+0x1a>
    4a24:	2b0d      	cmp	r3, #13
    4a26:	d002      	beq.n	4a2e <print+0x1a>
    4a28:	2b08      	cmp	r3, #8
    4a2a:	d003      	beq.n	4a34 <print+0x20>
    4a2c:	e005      	b.n	4a3a <print+0x26>
    4a2e:	f7ff fea5 	bl	477c <new_line>
    4a32:	e006      	b.n	4a42 <print+0x2e>
    4a34:	f000 f892 	bl	4b5c <cursor_left>
    4a38:	e003      	b.n	4a42 <print+0x2e>
    4a3a:	7bfb      	ldrb	r3, [r7, #15]
    4a3c:	4618      	mov	r0, r3
    4a3e:	f7ff ff31 	bl	48a4 <put_char>
    4a42:	687b      	ldr	r3, [r7, #4]
    4a44:	1c5a      	adds	r2, r3, #1
    4a46:	607a      	str	r2, [r7, #4]
    4a48:	781b      	ldrb	r3, [r3, #0]
    4a4a:	73fb      	strb	r3, [r7, #15]
    4a4c:	7bfb      	ldrb	r3, [r7, #15]
    4a4e:	2b00      	cmp	r3, #0
    4a50:	d1e5      	bne.n	4a1e <print+0xa>
    4a52:	bf00      	nop
    4a54:	3710      	adds	r7, #16
    4a56:	46bd      	mov	sp, r7
    4a58:	bd80      	pop	{r7, pc}

00004a5a <println>:
    4a5a:	b580      	push	{r7, lr}
    4a5c:	b082      	sub	sp, #8
    4a5e:	af00      	add	r7, sp, #0
    4a60:	6078      	str	r0, [r7, #4]
    4a62:	6878      	ldr	r0, [r7, #4]
    4a64:	f7ff ffd6 	bl	4a14 <print>
    4a68:	f7ff fe88 	bl	477c <new_line>
    4a6c:	bf00      	nop
    4a6e:	3708      	adds	r7, #8
    4a70:	46bd      	mov	sp, r7
    4a72:	bd80      	pop	{r7, pc}

00004a74 <print_int>:
    4a74:	b580      	push	{r7, lr}
    4a76:	b08a      	sub	sp, #40	; 0x28
    4a78:	af00      	add	r7, sp, #0
    4a7a:	6078      	str	r0, [r7, #4]
    4a7c:	460b      	mov	r3, r1
    4a7e:	70fb      	strb	r3, [r7, #3]
    4a80:	2300      	movs	r3, #0
    4a82:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4a86:	2300      	movs	r3, #0
    4a88:	76fb      	strb	r3, [r7, #27]
    4a8a:	2320      	movs	r3, #32
    4a8c:	76bb      	strb	r3, [r7, #26]
    4a8e:	230e      	movs	r3, #14
    4a90:	623b      	str	r3, [r7, #32]
    4a92:	687b      	ldr	r3, [r7, #4]
    4a94:	2b00      	cmp	r3, #0
    4a96:	da27      	bge.n	4ae8 <print_int+0x74>
    4a98:	2301      	movs	r3, #1
    4a9a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
    4a9e:	687b      	ldr	r3, [r7, #4]
    4aa0:	425b      	negs	r3, r3
    4aa2:	607b      	str	r3, [r7, #4]
    4aa4:	e020      	b.n	4ae8 <print_int+0x74>
    4aa6:	78fa      	ldrb	r2, [r7, #3]
    4aa8:	687b      	ldr	r3, [r7, #4]
    4aaa:	fb93 f1f2 	sdiv	r1, r3, r2
    4aae:	fb02 f201 	mul.w	r2, r2, r1
    4ab2:	1a9b      	subs	r3, r3, r2
    4ab4:	61fb      	str	r3, [r7, #28]
    4ab6:	69fb      	ldr	r3, [r7, #28]
    4ab8:	2b09      	cmp	r3, #9
    4aba:	dd02      	ble.n	4ac2 <print_int+0x4e>
    4abc:	69fb      	ldr	r3, [r7, #28]
    4abe:	3307      	adds	r3, #7
    4ac0:	61fb      	str	r3, [r7, #28]
    4ac2:	6a3b      	ldr	r3, [r7, #32]
    4ac4:	3b01      	subs	r3, #1
    4ac6:	623b      	str	r3, [r7, #32]
    4ac8:	69fb      	ldr	r3, [r7, #28]
    4aca:	3330      	adds	r3, #48	; 0x30
    4acc:	61fb      	str	r3, [r7, #28]
    4ace:	69fb      	ldr	r3, [r7, #28]
    4ad0:	b2d9      	uxtb	r1, r3
    4ad2:	f107 020c 	add.w	r2, r7, #12
    4ad6:	6a3b      	ldr	r3, [r7, #32]
    4ad8:	4413      	add	r3, r2
    4ada:	460a      	mov	r2, r1
    4adc:	701a      	strb	r2, [r3, #0]
    4ade:	78fb      	ldrb	r3, [r7, #3]
    4ae0:	687a      	ldr	r2, [r7, #4]
    4ae2:	fb92 f3f3 	sdiv	r3, r2, r3
    4ae6:	607b      	str	r3, [r7, #4]
    4ae8:	6a3b      	ldr	r3, [r7, #32]
    4aea:	2b01      	cmp	r3, #1
    4aec:	dd02      	ble.n	4af4 <print_int+0x80>
    4aee:	687b      	ldr	r3, [r7, #4]
    4af0:	2b00      	cmp	r3, #0
    4af2:	d1d8      	bne.n	4aa6 <print_int+0x32>
    4af4:	6a3b      	ldr	r3, [r7, #32]
    4af6:	2b0e      	cmp	r3, #14
    4af8:	d108      	bne.n	4b0c <print_int+0x98>
    4afa:	6a3b      	ldr	r3, [r7, #32]
    4afc:	3b01      	subs	r3, #1
    4afe:	623b      	str	r3, [r7, #32]
    4b00:	f107 020c 	add.w	r2, r7, #12
    4b04:	6a3b      	ldr	r3, [r7, #32]
    4b06:	4413      	add	r3, r2
    4b08:	2230      	movs	r2, #48	; 0x30
    4b0a:	701a      	strb	r2, [r3, #0]
    4b0c:	78fb      	ldrb	r3, [r7, #3]
    4b0e:	2b0a      	cmp	r3, #10
    4b10:	d10d      	bne.n	4b2e <print_int+0xba>
    4b12:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
    4b16:	2b00      	cmp	r3, #0
    4b18:	d009      	beq.n	4b2e <print_int+0xba>
    4b1a:	6a3b      	ldr	r3, [r7, #32]
    4b1c:	3b01      	subs	r3, #1
    4b1e:	623b      	str	r3, [r7, #32]
    4b20:	f107 020c 	add.w	r2, r7, #12
    4b24:	6a3b      	ldr	r3, [r7, #32]
    4b26:	4413      	add	r3, r2
    4b28:	222d      	movs	r2, #45	; 0x2d
    4b2a:	701a      	strb	r2, [r3, #0]
    4b2c:	e00b      	b.n	4b46 <print_int+0xd2>
    4b2e:	78fb      	ldrb	r3, [r7, #3]
    4b30:	2b10      	cmp	r3, #16
    4b32:	d108      	bne.n	4b46 <print_int+0xd2>
    4b34:	6a3b      	ldr	r3, [r7, #32]
    4b36:	3b01      	subs	r3, #1
    4b38:	623b      	str	r3, [r7, #32]
    4b3a:	f107 020c 	add.w	r2, r7, #12
    4b3e:	6a3b      	ldr	r3, [r7, #32]
    4b40:	4413      	add	r3, r2
    4b42:	2224      	movs	r2, #36	; 0x24
    4b44:	701a      	strb	r2, [r3, #0]
    4b46:	f107 020c 	add.w	r2, r7, #12
    4b4a:	6a3b      	ldr	r3, [r7, #32]
    4b4c:	4413      	add	r3, r2
    4b4e:	4618      	mov	r0, r3
    4b50:	f7ff ff60 	bl	4a14 <print>
    4b54:	bf00      	nop
    4b56:	3728      	adds	r7, #40	; 0x28
    4b58:	46bd      	mov	sp, r7
    4b5a:	bd80      	pop	{r7, pc}

00004b5c <cursor_left>:
    4b5c:	b480      	push	{r7}
    4b5e:	af00      	add	r7, sp, #0
    4b60:	4b1a      	ldr	r3, [pc, #104]	; (4bcc <cursor_left+0x70>)
    4b62:	781b      	ldrb	r3, [r3, #0]
    4b64:	2b01      	cmp	r3, #1
    4b66:	d010      	beq.n	4b8a <cursor_left+0x2e>
    4b68:	2b02      	cmp	r3, #2
    4b6a:	d01a      	beq.n	4ba2 <cursor_left+0x46>
    4b6c:	2b00      	cmp	r3, #0
    4b6e:	d000      	beq.n	4b72 <cursor_left+0x16>
    4b70:	e028      	b.n	4bc4 <cursor_left+0x68>
    4b72:	4b17      	ldr	r3, [pc, #92]	; (4bd0 <cursor_left+0x74>)
    4b74:	781b      	ldrb	r3, [r3, #0]
    4b76:	3b04      	subs	r3, #4
    4b78:	2b00      	cmp	r3, #0
    4b7a:	db1e      	blt.n	4bba <cursor_left+0x5e>
    4b7c:	4b14      	ldr	r3, [pc, #80]	; (4bd0 <cursor_left+0x74>)
    4b7e:	781b      	ldrb	r3, [r3, #0]
    4b80:	3b04      	subs	r3, #4
    4b82:	b2da      	uxtb	r2, r3
    4b84:	4b12      	ldr	r3, [pc, #72]	; (4bd0 <cursor_left+0x74>)
    4b86:	701a      	strb	r2, [r3, #0]
    4b88:	e017      	b.n	4bba <cursor_left+0x5e>
    4b8a:	4b11      	ldr	r3, [pc, #68]	; (4bd0 <cursor_left+0x74>)
    4b8c:	781b      	ldrb	r3, [r3, #0]
    4b8e:	3b08      	subs	r3, #8
    4b90:	2b00      	cmp	r3, #0
    4b92:	db14      	blt.n	4bbe <cursor_left+0x62>
    4b94:	4b0e      	ldr	r3, [pc, #56]	; (4bd0 <cursor_left+0x74>)
    4b96:	781b      	ldrb	r3, [r3, #0]
    4b98:	3b08      	subs	r3, #8
    4b9a:	b2da      	uxtb	r2, r3
    4b9c:	4b0c      	ldr	r3, [pc, #48]	; (4bd0 <cursor_left+0x74>)
    4b9e:	701a      	strb	r2, [r3, #0]
    4ba0:	e00d      	b.n	4bbe <cursor_left+0x62>
    4ba2:	4b0b      	ldr	r3, [pc, #44]	; (4bd0 <cursor_left+0x74>)
    4ba4:	781b      	ldrb	r3, [r3, #0]
    4ba6:	3b06      	subs	r3, #6
    4ba8:	2b00      	cmp	r3, #0
    4baa:	db0a      	blt.n	4bc2 <cursor_left+0x66>
    4bac:	4b08      	ldr	r3, [pc, #32]	; (4bd0 <cursor_left+0x74>)
    4bae:	781b      	ldrb	r3, [r3, #0]
    4bb0:	3b06      	subs	r3, #6
    4bb2:	b2da      	uxtb	r2, r3
    4bb4:	4b06      	ldr	r3, [pc, #24]	; (4bd0 <cursor_left+0x74>)
    4bb6:	701a      	strb	r2, [r3, #0]
    4bb8:	e003      	b.n	4bc2 <cursor_left+0x66>
    4bba:	bf00      	nop
    4bbc:	e002      	b.n	4bc4 <cursor_left+0x68>
    4bbe:	bf00      	nop
    4bc0:	e000      	b.n	4bc4 <cursor_left+0x68>
    4bc2:	bf00      	nop
    4bc4:	bf00      	nop
    4bc6:	46bd      	mov	sp, r7
    4bc8:	bc80      	pop	{r7}
    4bca:	4770      	bx	lr
    4bcc:	20000170 	.word	0x20000170
    4bd0:	20000619 	.word	0x20000619

00004bd4 <text_scroller>:
    4bd4:	b580      	push	{r7, lr}
    4bd6:	b084      	sub	sp, #16
    4bd8:	af00      	add	r7, sp, #0
    4bda:	6078      	str	r0, [r7, #4]
    4bdc:	460b      	mov	r3, r1
    4bde:	70fb      	strb	r3, [r7, #3]
    4be0:	f7fd fb22 	bl	2228 <gfx_cls>
    4be4:	2002      	movs	r0, #2
    4be6:	f7ff fdb9 	bl	475c <select_font>
    4bea:	687b      	ldr	r3, [r7, #4]
    4bec:	1c5a      	adds	r2, r3, #1
    4bee:	607a      	str	r2, [r7, #4]
    4bf0:	781b      	ldrb	r3, [r3, #0]
    4bf2:	73fb      	strb	r3, [r7, #15]
    4bf4:	e035      	b.n	4c62 <text_scroller+0x8e>
    4bf6:	2120      	movs	r1, #32
    4bf8:	2000      	movs	r0, #0
    4bfa:	f7ff fedf 	bl	49bc <set_cursor>
    4bfe:	e00e      	b.n	4c1e <text_scroller+0x4a>
    4c00:	7bfb      	ldrb	r3, [r7, #15]
    4c02:	4618      	mov	r0, r3
    4c04:	f7ff fe4e 	bl	48a4 <put_char>
    4c08:	687b      	ldr	r3, [r7, #4]
    4c0a:	1c5a      	adds	r2, r3, #1
    4c0c:	607a      	str	r2, [r7, #4]
    4c0e:	781b      	ldrb	r3, [r3, #0]
    4c10:	73fb      	strb	r3, [r7, #15]
    4c12:	2020      	movs	r0, #32
    4c14:	f7fc fec0 	bl	1998 <btn_query_down>
    4c18:	4603      	mov	r3, r0
    4c1a:	2b00      	cmp	r3, #0
    4c1c:	d13c      	bne.n	4c98 <text_scroller+0xc4>
    4c1e:	7bfb      	ldrb	r3, [r7, #15]
    4c20:	2b00      	cmp	r3, #0
    4c22:	d002      	beq.n	4c2a <text_scroller+0x56>
    4c24:	7bfb      	ldrb	r3, [r7, #15]
    4c26:	2b0a      	cmp	r3, #10
    4c28:	d1ea      	bne.n	4c00 <text_scroller+0x2c>
    4c2a:	2300      	movs	r3, #0
    4c2c:	73bb      	strb	r3, [r7, #14]
    4c2e:	e010      	b.n	4c52 <text_scroller+0x7e>
    4c30:	78fb      	ldrb	r3, [r7, #3]
    4c32:	b29b      	uxth	r3, r3
    4c34:	4618      	mov	r0, r3
    4c36:	f000 fbab 	bl	5390 <game_pause>
    4c3a:	2001      	movs	r0, #1
    4c3c:	f7fd fb50 	bl	22e0 <gfx_scroll_up>
    4c40:	2020      	movs	r0, #32
    4c42:	f7fc fea9 	bl	1998 <btn_query_down>
    4c46:	4603      	mov	r3, r0
    4c48:	2b00      	cmp	r3, #0
    4c4a:	d127      	bne.n	4c9c <text_scroller+0xc8>
    4c4c:	7bbb      	ldrb	r3, [r7, #14]
    4c4e:	3301      	adds	r3, #1
    4c50:	73bb      	strb	r3, [r7, #14]
    4c52:	7bbb      	ldrb	r3, [r7, #14]
    4c54:	2b07      	cmp	r3, #7
    4c56:	d9eb      	bls.n	4c30 <text_scroller+0x5c>
    4c58:	687b      	ldr	r3, [r7, #4]
    4c5a:	1c5a      	adds	r2, r3, #1
    4c5c:	607a      	str	r2, [r7, #4]
    4c5e:	781b      	ldrb	r3, [r3, #0]
    4c60:	73fb      	strb	r3, [r7, #15]
    4c62:	7bfb      	ldrb	r3, [r7, #15]
    4c64:	2b00      	cmp	r3, #0
    4c66:	d1c6      	bne.n	4bf6 <text_scroller+0x22>
    4c68:	2300      	movs	r3, #0
    4c6a:	73fb      	strb	r3, [r7, #15]
    4c6c:	e010      	b.n	4c90 <text_scroller+0xbc>
    4c6e:	78fb      	ldrb	r3, [r7, #3]
    4c70:	b29b      	uxth	r3, r3
    4c72:	4618      	mov	r0, r3
    4c74:	f000 fb8c 	bl	5390 <game_pause>
    4c78:	2001      	movs	r0, #1
    4c7a:	f7fd fb31 	bl	22e0 <gfx_scroll_up>
    4c7e:	2020      	movs	r0, #32
    4c80:	f7fc fe8a 	bl	1998 <btn_query_down>
    4c84:	4603      	mov	r3, r0
    4c86:	2b00      	cmp	r3, #0
    4c88:	d10a      	bne.n	4ca0 <text_scroller+0xcc>
    4c8a:	7bfb      	ldrb	r3, [r7, #15]
    4c8c:	3301      	adds	r3, #1
    4c8e:	73fb      	strb	r3, [r7, #15]
    4c90:	7bfb      	ldrb	r3, [r7, #15]
    4c92:	2b1f      	cmp	r3, #31
    4c94:	d9eb      	bls.n	4c6e <text_scroller+0x9a>
    4c96:	e004      	b.n	4ca2 <text_scroller+0xce>
    4c98:	bf00      	nop
    4c9a:	e002      	b.n	4ca2 <text_scroller+0xce>
    4c9c:	bf00      	nop
    4c9e:	e000      	b.n	4ca2 <text_scroller+0xce>
    4ca0:	bf00      	nop
    4ca2:	f7fd fac1 	bl	2228 <gfx_cls>
    4ca6:	2020      	movs	r0, #32
    4ca8:	f7fc feba 	bl	1a20 <btn_wait_up>
    4cac:	bf00      	nop
    4cae:	3710      	adds	r7, #16
    4cb0:	46bd      	mov	sp, r7
    4cb2:	bd80      	pop	{r7, pc}

00004cb4 <prompt_btn>:
    4cb4:	b580      	push	{r7, lr}
    4cb6:	af00      	add	r7, sp, #0
    4cb8:	4802      	ldr	r0, [pc, #8]	; (4cc4 <prompt_btn+0x10>)
    4cba:	f7ff feab 	bl	4a14 <print>
    4cbe:	bf00      	nop
    4cc0:	bd80      	pop	{r7, pc}
    4cc2:	bf00      	nop
    4cc4:	00005a6c 	.word	0x00005a6c

00004cc8 <clear_screen>:
    4cc8:	b580      	push	{r7, lr}
    4cca:	af00      	add	r7, sp, #0
    4ccc:	f7fd faac 	bl	2228 <gfx_cls>
    4cd0:	4b03      	ldr	r3, [pc, #12]	; (4ce0 <clear_screen+0x18>)
    4cd2:	2200      	movs	r2, #0
    4cd4:	701a      	strb	r2, [r3, #0]
    4cd6:	4b03      	ldr	r3, [pc, #12]	; (4ce4 <clear_screen+0x1c>)
    4cd8:	2200      	movs	r2, #0
    4cda:	701a      	strb	r2, [r3, #0]
    4cdc:	bf00      	nop
    4cde:	bd80      	pop	{r7, pc}
    4ce0:	20000619 	.word	0x20000619
    4ce4:	2000061a 	.word	0x2000061a

00004ce8 <show_cursor>:
    4ce8:	b580      	push	{r7, lr}
    4cea:	b084      	sub	sp, #16
    4cec:	af00      	add	r7, sp, #0
    4cee:	6078      	str	r0, [r7, #4]
    4cf0:	687b      	ldr	r3, [r7, #4]
    4cf2:	2b00      	cmp	r3, #0
    4cf4:	d001      	beq.n	4cfa <show_cursor+0x12>
    4cf6:	230f      	movs	r3, #15
    4cf8:	e000      	b.n	4cfc <show_cursor+0x14>
    4cfa:	2300      	movs	r3, #0
    4cfc:	72fb      	strb	r3, [r7, #11]
    4cfe:	4b0c      	ldr	r3, [pc, #48]	; (4d30 <show_cursor+0x48>)
    4d00:	781b      	ldrb	r3, [r3, #0]
    4d02:	60fb      	str	r3, [r7, #12]
    4d04:	e00a      	b.n	4d1c <show_cursor+0x34>
    4d06:	4b0b      	ldr	r3, [pc, #44]	; (4d34 <show_cursor+0x4c>)
    4d08:	781b      	ldrb	r3, [r3, #0]
    4d0a:	3307      	adds	r3, #7
    4d0c:	7afa      	ldrb	r2, [r7, #11]
    4d0e:	4619      	mov	r1, r3
    4d10:	68f8      	ldr	r0, [r7, #12]
    4d12:	f7fd fa3b 	bl	218c <gfx_plot>
    4d16:	68fb      	ldr	r3, [r7, #12]
    4d18:	3301      	adds	r3, #1
    4d1a:	60fb      	str	r3, [r7, #12]
    4d1c:	4b04      	ldr	r3, [pc, #16]	; (4d30 <show_cursor+0x48>)
    4d1e:	781b      	ldrb	r3, [r3, #0]
    4d20:	1d9a      	adds	r2, r3, #6
    4d22:	68fb      	ldr	r3, [r7, #12]
    4d24:	429a      	cmp	r2, r3
    4d26:	dcee      	bgt.n	4d06 <show_cursor+0x1e>
    4d28:	bf00      	nop
    4d2a:	3710      	adds	r7, #16
    4d2c:	46bd      	mov	sp, r7
    4d2e:	bd80      	pop	{r7, pc}
    4d30:	20000619 	.word	0x20000619
    4d34:	2000061a 	.word	0x2000061a

00004d38 <tvout_init>:
    4d38:	b580      	push	{r7, lr}
    4d3a:	af00      	add	r7, sp, #0
    4d3c:	4b3e      	ldr	r3, [pc, #248]	; (4e38 <tvout_init+0x100>)
    4d3e:	4a3f      	ldr	r2, [pc, #252]	; (4e3c <tvout_init+0x104>)
    4d40:	601a      	str	r2, [r3, #0]
    4d42:	4b3f      	ldr	r3, [pc, #252]	; (4e40 <tvout_init+0x108>)
    4d44:	4a3f      	ldr	r2, [pc, #252]	; (4e44 <tvout_init+0x10c>)
    4d46:	601a      	str	r2, [r3, #0]
    4d48:	220a      	movs	r2, #10
    4d4a:	2108      	movs	r1, #8
    4d4c:	483a      	ldr	r0, [pc, #232]	; (4e38 <tvout_init+0x100>)
    4d4e:	f7fd f907 	bl	1f60 <config_pin>
    4d52:	4b39      	ldr	r3, [pc, #228]	; (4e38 <tvout_init+0x100>)
    4d54:	2200      	movs	r2, #0
    4d56:	60da      	str	r2, [r3, #12]
    4d58:	4a3b      	ldr	r2, [pc, #236]	; (4e48 <tvout_init+0x110>)
    4d5a:	4b3b      	ldr	r3, [pc, #236]	; (4e48 <tvout_init+0x110>)
    4d5c:	699b      	ldr	r3, [r3, #24]
    4d5e:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    4d62:	6193      	str	r3, [r2, #24]
    4d64:	4b39      	ldr	r3, [pc, #228]	; (4e4c <tvout_init+0x114>)
    4d66:	2278      	movs	r2, #120	; 0x78
    4d68:	619a      	str	r2, [r3, #24]
    4d6a:	4b38      	ldr	r3, [pc, #224]	; (4e4c <tvout_init+0x114>)
    4d6c:	2201      	movs	r2, #1
    4d6e:	621a      	str	r2, [r3, #32]
    4d70:	4b36      	ldr	r3, [pc, #216]	; (4e4c <tvout_init+0x114>)
    4d72:	2284      	movs	r2, #132	; 0x84
    4d74:	601a      	str	r2, [r3, #0]
    4d76:	4b35      	ldr	r3, [pc, #212]	; (4e4c <tvout_init+0x114>)
    4d78:	f241 12c5 	movw	r2, #4549	; 0x11c5
    4d7c:	62da      	str	r2, [r3, #44]	; 0x2c
    4d7e:	4b33      	ldr	r3, [pc, #204]	; (4e4c <tvout_init+0x114>)
    4d80:	f44f 72a8 	mov.w	r2, #336	; 0x150
    4d84:	635a      	str	r2, [r3, #52]	; 0x34
    4d86:	4b31      	ldr	r3, [pc, #196]	; (4e4c <tvout_init+0x114>)
    4d88:	f240 1265 	movw	r2, #357	; 0x165
    4d8c:	639a      	str	r2, [r3, #56]	; 0x38
    4d8e:	4a2f      	ldr	r2, [pc, #188]	; (4e4c <tvout_init+0x114>)
    4d90:	4b2e      	ldr	r3, [pc, #184]	; (4e4c <tvout_init+0x114>)
    4d92:	695b      	ldr	r3, [r3, #20]
    4d94:	f043 0301 	orr.w	r3, r3, #1
    4d98:	6153      	str	r3, [r2, #20]
    4d9a:	4b2c      	ldr	r3, [pc, #176]	; (4e4c <tvout_init+0x114>)
    4d9c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    4da0:	645a      	str	r2, [r3, #68]	; 0x44
    4da2:	4b2a      	ldr	r3, [pc, #168]	; (4e4c <tvout_init+0x114>)
    4da4:	2200      	movs	r2, #0
    4da6:	611a      	str	r2, [r3, #16]
    4da8:	4a28      	ldr	r2, [pc, #160]	; (4e4c <tvout_init+0x114>)
    4daa:	4b28      	ldr	r3, [pc, #160]	; (4e4c <tvout_init+0x114>)
    4dac:	68db      	ldr	r3, [r3, #12]
    4dae:	f043 0301 	orr.w	r3, r3, #1
    4db2:	60d3      	str	r3, [r2, #12]
    4db4:	2100      	movs	r1, #0
    4db6:	2019      	movs	r0, #25
    4db8:	f7fe fb26 	bl	3408 <set_int_priority>
    4dbc:	2100      	movs	r1, #0
    4dbe:	201b      	movs	r0, #27
    4dc0:	f7fe fb22 	bl	3408 <set_int_priority>
    4dc4:	2019      	movs	r0, #25
    4dc6:	f7fe fa65 	bl	3294 <enable_interrupt>
    4dca:	201b      	movs	r0, #27
    4dcc:	f7fe fa62 	bl	3294 <enable_interrupt>
    4dd0:	4a1e      	ldr	r2, [pc, #120]	; (4e4c <tvout_init+0x114>)
    4dd2:	4b1e      	ldr	r3, [pc, #120]	; (4e4c <tvout_init+0x114>)
    4dd4:	681b      	ldr	r3, [r3, #0]
    4dd6:	f043 0301 	orr.w	r3, r3, #1
    4dda:	6013      	str	r3, [r2, #0]
    4ddc:	220a      	movs	r2, #10
    4dde:	2100      	movs	r1, #0
    4de0:	481b      	ldr	r0, [pc, #108]	; (4e50 <tvout_init+0x118>)
    4de2:	f7fd f8bd 	bl	1f60 <config_pin>
    4de6:	4a18      	ldr	r2, [pc, #96]	; (4e48 <tvout_init+0x110>)
    4de8:	4b17      	ldr	r3, [pc, #92]	; (4e48 <tvout_init+0x110>)
    4dea:	69db      	ldr	r3, [r3, #28]
    4dec:	f043 0302 	orr.w	r3, r3, #2
    4df0:	61d3      	str	r3, [r2, #28]
    4df2:	4b18      	ldr	r3, [pc, #96]	; (4e54 <tvout_init+0x11c>)
    4df4:	2278      	movs	r2, #120	; 0x78
    4df6:	61da      	str	r2, [r3, #28]
    4df8:	4b16      	ldr	r3, [pc, #88]	; (4e54 <tvout_init+0x11c>)
    4dfa:	2284      	movs	r2, #132	; 0x84
    4dfc:	601a      	str	r2, [r3, #0]
    4dfe:	4b15      	ldr	r3, [pc, #84]	; (4e54 <tvout_init+0x11c>)
    4e00:	2213      	movs	r2, #19
    4e02:	62da      	str	r2, [r3, #44]	; 0x2c
    4e04:	4b13      	ldr	r3, [pc, #76]	; (4e54 <tvout_init+0x11c>)
    4e06:	220a      	movs	r2, #10
    4e08:	63da      	str	r2, [r3, #60]	; 0x3c
    4e0a:	4a12      	ldr	r2, [pc, #72]	; (4e54 <tvout_init+0x11c>)
    4e0c:	4b11      	ldr	r3, [pc, #68]	; (4e54 <tvout_init+0x11c>)
    4e0e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
    4e10:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
    4e14:	6453      	str	r3, [r2, #68]	; 0x44
    4e16:	4a0f      	ldr	r2, [pc, #60]	; (4e54 <tvout_init+0x11c>)
    4e18:	4b0e      	ldr	r3, [pc, #56]	; (4e54 <tvout_init+0x11c>)
    4e1a:	695b      	ldr	r3, [r3, #20]
    4e1c:	f043 0301 	orr.w	r3, r3, #1
    4e20:	6153      	str	r3, [r2, #20]
    4e22:	4b0c      	ldr	r3, [pc, #48]	; (4e54 <tvout_init+0x11c>)
    4e24:	2200      	movs	r2, #0
    4e26:	611a      	str	r2, [r3, #16]
    4e28:	4a0a      	ldr	r2, [pc, #40]	; (4e54 <tvout_init+0x11c>)
    4e2a:	4b0a      	ldr	r3, [pc, #40]	; (4e54 <tvout_init+0x11c>)
    4e2c:	681b      	ldr	r3, [r3, #0]
    4e2e:	f043 0301 	orr.w	r3, r3, #1
    4e32:	6013      	str	r3, [r2, #0]
    4e34:	bf00      	nop
    4e36:	bd80      	pop	{r7, pc}
    4e38:	40010800 	.word	0x40010800
    4e3c:	88883333 	.word	0x88883333
    4e40:	40010804 	.word	0x40010804
    4e44:	84484444 	.word	0x84484444
    4e48:	40021000 	.word	0x40021000
    4e4c:	40012c00 	.word	0x40012c00
    4e50:	40010c00 	.word	0x40010c00
    4e54:	40000400 	.word	0x40000400

00004e58 <TV_OUT_handler>:
    4e58:	4668      	mov	r0, sp
    4e5a:	f020 0107 	bic.w	r1, r0, #7
    4e5e:	468d      	mov	sp, r1
    4e60:	b471      	push	{r0, r4, r5, r6}
    4e62:	4a31      	ldr	r2, [pc, #196]	; (4f28 <TV_OUT_handler+0xd0>)
    4e64:	6a13      	ldr	r3, [r2, #32]
    4e66:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    4e6a:	6213      	str	r3, [r2, #32]
    4e6c:	492f      	ldr	r1, [pc, #188]	; (4f2c <TV_OUT_handler+0xd4>)
    4e6e:	f240 2209 	movw	r2, #521	; 0x209
    4e72:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4e74:	4293      	cmp	r3, r2
    4e76:	d9fc      	bls.n	4e72 <TV_OUT_handler+0x1a>
    4e78:	4a2b      	ldr	r2, [pc, #172]	; (4f28 <TV_OUT_handler+0xd0>)
    4e7a:	6a13      	ldr	r3, [r2, #32]
    4e7c:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4e80:	6213      	str	r3, [r2, #32]
    4e82:	4b2b      	ldr	r3, [pc, #172]	; (4f30 <TV_OUT_handler+0xd8>)
    4e84:	881d      	ldrh	r5, [r3, #0]
    4e86:	b2ad      	uxth	r5, r5
    4e88:	4b2a      	ldr	r3, [pc, #168]	; (4f34 <TV_OUT_handler+0xdc>)
    4e8a:	7818      	ldrb	r0, [r3, #0]
    4e8c:	4b2a      	ldr	r3, [pc, #168]	; (4f38 <TV_OUT_handler+0xe0>)
    4e8e:	781b      	ldrb	r3, [r3, #0]
    4e90:	fb95 f5f3 	sdiv	r5, r5, r3
    4e94:	4b29      	ldr	r3, [pc, #164]	; (4f3c <TV_OUT_handler+0xe4>)
    4e96:	fb00 3505 	mla	r5, r0, r5, r3
    4e9a:	4b29      	ldr	r3, [pc, #164]	; (4f40 <TV_OUT_handler+0xe8>)
    4e9c:	881a      	ldrh	r2, [r3, #0]
    4e9e:	4923      	ldr	r1, [pc, #140]	; (4f2c <TV_OUT_handler+0xd4>)
    4ea0:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    4ea2:	4293      	cmp	r3, r2
    4ea4:	d3fc      	bcc.n	4ea0 <TV_OUT_handler+0x48>
    4ea6:	4b27      	ldr	r3, [pc, #156]	; (4f44 <TV_OUT_handler+0xec>)
    4ea8:	461a      	mov	r2, r3
    4eaa:	6812      	ldr	r2, [r2, #0]
    4eac:	f002 0207 	and.w	r2, r2, #7
    4eb0:	ea4f 0242 	mov.w	r2, r2, lsl #1
    4eb4:	4497      	add	pc, r2
    4eb6:	bf00      	nop
    4eb8:	bf00      	nop
    4eba:	bf00      	nop
    4ebc:	bf00      	nop
    4ebe:	bf00      	nop
    4ec0:	bf00      	nop
    4ec2:	bf00      	nop
    4ec4:	bf00      	nop
    4ec6:	4a18      	ldr	r2, [pc, #96]	; (4f28 <TV_OUT_handler+0xd0>)
    4ec8:	6a11      	ldr	r1, [r2, #32]
    4eca:	4b1f      	ldr	r3, [pc, #124]	; (4f48 <TV_OUT_handler+0xf0>)
    4ecc:	881b      	ldrh	r3, [r3, #0]
    4ece:	430b      	orrs	r3, r1
    4ed0:	6213      	str	r3, [r2, #32]
    4ed2:	b1b8      	cbz	r0, 4f04 <TV_OUT_handler+0xac>
    4ed4:	462b      	mov	r3, r5
    4ed6:	481d      	ldr	r0, [pc, #116]	; (4f4c <TV_OUT_handler+0xf4>)
    4ed8:	491d      	ldr	r1, [pc, #116]	; (4f50 <TV_OUT_handler+0xf8>)
    4eda:	4e16      	ldr	r6, [pc, #88]	; (4f34 <TV_OUT_handler+0xdc>)
    4edc:	781a      	ldrb	r2, [r3, #0]
    4ede:	0912      	lsrs	r2, r2, #4
    4ee0:	8002      	strh	r2, [r0, #0]
    4ee2:	780c      	ldrb	r4, [r1, #0]
    4ee4:	4622      	mov	r2, r4
    4ee6:	3a01      	subs	r2, #1
    4ee8:	d1fd      	bne.n	4ee6 <TV_OUT_handler+0x8e>
    4eea:	f813 2b01 	ldrb.w	r2, [r3], #1
    4eee:	f002 020f 	and.w	r2, r2, #15
    4ef2:	8002      	strh	r2, [r0, #0]
    4ef4:	780c      	ldrb	r4, [r1, #0]
    4ef6:	4622      	mov	r2, r4
    4ef8:	3a01      	subs	r2, #1
    4efa:	d1fd      	bne.n	4ef8 <TV_OUT_handler+0xa0>
    4efc:	1b5c      	subs	r4, r3, r5
    4efe:	7832      	ldrb	r2, [r6, #0]
    4f00:	4294      	cmp	r4, r2
    4f02:	d3eb      	bcc.n	4edc <TV_OUT_handler+0x84>
    4f04:	2200      	movs	r2, #0
    4f06:	4b13      	ldr	r3, [pc, #76]	; (4f54 <TV_OUT_handler+0xfc>)
    4f08:	60da      	str	r2, [r3, #12]
    4f0a:	4a07      	ldr	r2, [pc, #28]	; (4f28 <TV_OUT_handler+0xd0>)
    4f0c:	6a13      	ldr	r3, [r2, #32]
    4f0e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    4f12:	6213      	str	r3, [r2, #32]
    4f14:	f502 3294 	add.w	r2, r2, #75776	; 0x12800
    4f18:	6913      	ldr	r3, [r2, #16]
    4f1a:	f023 0304 	bic.w	r3, r3, #4
    4f1e:	6113      	str	r3, [r2, #16]
    4f20:	bc71      	pop	{r0, r4, r5, r6}
    4f22:	4685      	mov	sp, r0
    4f24:	4770      	bx	lr
    4f26:	bf00      	nop
    4f28:	40000400 	.word	0x40000400
    4f2c:	40012c00 	.word	0x40012c00
    4f30:	20000620 	.word	0x20000620
    4f34:	2000017c 	.word	0x2000017c
    4f38:	2000017d 	.word	0x2000017d
    4f3c:	20002654 	.word	0x20002654
    4f40:	2000017a 	.word	0x2000017a
    4f44:	40012c24 	.word	0x40012c24
    4f48:	20000182 	.word	0x20000182
    4f4c:	4001080c 	.word	0x4001080c
    4f50:	2000017e 	.word	0x2000017e
    4f54:	40010800 	.word	0x40010800

00004f58 <TV_SYNC_handler>:
    4f58:	4668      	mov	r0, sp
    4f5a:	f020 0107 	bic.w	r1, r0, #7
    4f5e:	468d      	mov	sp, r1
    4f60:	b501      	push	{r0, lr}
    4f62:	4a84      	ldr	r2, [pc, #528]	; (5174 <TV_SYNC_handler+0x21c>)
    4f64:	8813      	ldrh	r3, [r2, #0]
    4f66:	3301      	adds	r3, #1
    4f68:	b29b      	uxth	r3, r3
    4f6a:	8013      	strh	r3, [r2, #0]
    4f6c:	4a82      	ldr	r2, [pc, #520]	; (5178 <TV_SYNC_handler+0x220>)
    4f6e:	6813      	ldr	r3, [r2, #0]
    4f70:	3301      	adds	r3, #1
    4f72:	6013      	str	r3, [r2, #0]
    4f74:	4b81      	ldr	r3, [pc, #516]	; (517c <TV_SYNC_handler+0x224>)
    4f76:	881b      	ldrh	r3, [r3, #0]
    4f78:	b29b      	uxth	r3, r3
    4f7a:	2b09      	cmp	r3, #9
    4f7c:	f200 8088 	bhi.w	5090 <TV_SYNC_handler+0x138>
    4f80:	e8df f013 	tbh	[pc, r3, lsl #1]
    4f84:	002c000a 	.word	0x002c000a
    4f88:	006e004c 	.word	0x006e004c
    4f8c:	0097008f 	.word	0x0097008f
    4f90:	00bb00ac 	.word	0x00bb00ac
    4f94:	010c00da 	.word	0x010c00da
    4f98:	4b79      	ldr	r3, [pc, #484]	; (5180 <TV_SYNC_handler+0x228>)
    4f9a:	881b      	ldrh	r3, [r3, #0]
    4f9c:	b29b      	uxth	r3, r3
    4f9e:	b18b      	cbz	r3, 4fc4 <TV_SYNC_handler+0x6c>
    4fa0:	4a77      	ldr	r2, [pc, #476]	; (5180 <TV_SYNC_handler+0x228>)
    4fa2:	8813      	ldrh	r3, [r2, #0]
    4fa4:	3301      	adds	r3, #1
    4fa6:	b29b      	uxth	r3, r3
    4fa8:	8013      	strh	r3, [r2, #0]
    4faa:	8813      	ldrh	r3, [r2, #0]
    4fac:	b29b      	uxth	r3, r3
    4fae:	2b06      	cmp	r3, #6
    4fb0:	d16e      	bne.n	5090 <TV_SYNC_handler+0x138>
    4fb2:	2200      	movs	r2, #0
    4fb4:	4b72      	ldr	r3, [pc, #456]	; (5180 <TV_SYNC_handler+0x228>)
    4fb6:	801a      	strh	r2, [r3, #0]
    4fb8:	4a70      	ldr	r2, [pc, #448]	; (517c <TV_SYNC_handler+0x224>)
    4fba:	8813      	ldrh	r3, [r2, #0]
    4fbc:	3301      	adds	r3, #1
    4fbe:	b29b      	uxth	r3, r3
    4fc0:	8013      	strh	r3, [r2, #0]
    4fc2:	e065      	b.n	5090 <TV_SYNC_handler+0x138>
    4fc4:	4b6f      	ldr	r3, [pc, #444]	; (5184 <TV_SYNC_handler+0x22c>)
    4fc6:	f640 02e2 	movw	r2, #2274	; 0x8e2
    4fca:	62da      	str	r2, [r3, #44]	; 0x2c
    4fcc:	22a4      	movs	r2, #164	; 0xa4
    4fce:	635a      	str	r2, [r3, #52]	; 0x34
    4fd0:	4a6b      	ldr	r2, [pc, #428]	; (5180 <TV_SYNC_handler+0x228>)
    4fd2:	8813      	ldrh	r3, [r2, #0]
    4fd4:	3301      	adds	r3, #1
    4fd6:	b29b      	uxth	r3, r3
    4fd8:	8013      	strh	r3, [r2, #0]
    4fda:	e059      	b.n	5090 <TV_SYNC_handler+0x138>
    4fdc:	4b68      	ldr	r3, [pc, #416]	; (5180 <TV_SYNC_handler+0x228>)
    4fde:	881b      	ldrh	r3, [r3, #0]
    4fe0:	b29b      	uxth	r3, r3
    4fe2:	b18b      	cbz	r3, 5008 <TV_SYNC_handler+0xb0>
    4fe4:	4a66      	ldr	r2, [pc, #408]	; (5180 <TV_SYNC_handler+0x228>)
    4fe6:	8813      	ldrh	r3, [r2, #0]
    4fe8:	3301      	adds	r3, #1
    4fea:	b29b      	uxth	r3, r3
    4fec:	8013      	strh	r3, [r2, #0]
    4fee:	8813      	ldrh	r3, [r2, #0]
    4ff0:	b29b      	uxth	r3, r3
    4ff2:	2b06      	cmp	r3, #6
    4ff4:	d14c      	bne.n	5090 <TV_SYNC_handler+0x138>
    4ff6:	2200      	movs	r2, #0
    4ff8:	4b61      	ldr	r3, [pc, #388]	; (5180 <TV_SYNC_handler+0x228>)
    4ffa:	801a      	strh	r2, [r3, #0]
    4ffc:	4a5f      	ldr	r2, [pc, #380]	; (517c <TV_SYNC_handler+0x224>)
    4ffe:	8813      	ldrh	r3, [r2, #0]
    5000:	3301      	adds	r3, #1
    5002:	b29b      	uxth	r3, r3
    5004:	8013      	strh	r3, [r2, #0]
    5006:	e043      	b.n	5090 <TV_SYNC_handler+0x138>
    5008:	f240 7294 	movw	r2, #1940	; 0x794
    500c:	4b5d      	ldr	r3, [pc, #372]	; (5184 <TV_SYNC_handler+0x22c>)
    500e:	635a      	str	r2, [r3, #52]	; 0x34
    5010:	4a5b      	ldr	r2, [pc, #364]	; (5180 <TV_SYNC_handler+0x228>)
    5012:	8813      	ldrh	r3, [r2, #0]
    5014:	3301      	adds	r3, #1
    5016:	b29b      	uxth	r3, r3
    5018:	8013      	strh	r3, [r2, #0]
    501a:	e039      	b.n	5090 <TV_SYNC_handler+0x138>
    501c:	4b58      	ldr	r3, [pc, #352]	; (5180 <TV_SYNC_handler+0x228>)
    501e:	881b      	ldrh	r3, [r3, #0]
    5020:	b29b      	uxth	r3, r3
    5022:	b153      	cbz	r3, 503a <TV_SYNC_handler+0xe2>
    5024:	4b56      	ldr	r3, [pc, #344]	; (5180 <TV_SYNC_handler+0x228>)
    5026:	881b      	ldrh	r3, [r3, #0]
    5028:	b29b      	uxth	r3, r3
    502a:	2b06      	cmp	r3, #6
    502c:	d00e      	beq.n	504c <TV_SYNC_handler+0xf4>
    502e:	4a54      	ldr	r2, [pc, #336]	; (5180 <TV_SYNC_handler+0x228>)
    5030:	8813      	ldrh	r3, [r2, #0]
    5032:	3301      	adds	r3, #1
    5034:	b29b      	uxth	r3, r3
    5036:	8013      	strh	r3, [r2, #0]
    5038:	e02a      	b.n	5090 <TV_SYNC_handler+0x138>
    503a:	22a4      	movs	r2, #164	; 0xa4
    503c:	4b51      	ldr	r3, [pc, #324]	; (5184 <TV_SYNC_handler+0x22c>)
    503e:	635a      	str	r2, [r3, #52]	; 0x34
    5040:	4a4f      	ldr	r2, [pc, #316]	; (5180 <TV_SYNC_handler+0x228>)
    5042:	8813      	ldrh	r3, [r2, #0]
    5044:	3301      	adds	r3, #1
    5046:	b29b      	uxth	r3, r3
    5048:	8013      	strh	r3, [r2, #0]
    504a:	e021      	b.n	5090 <TV_SYNC_handler+0x138>
    504c:	4a4b      	ldr	r2, [pc, #300]	; (517c <TV_SYNC_handler+0x224>)
    504e:	8813      	ldrh	r3, [r2, #0]
    5050:	3301      	adds	r3, #1
    5052:	b29b      	uxth	r3, r3
    5054:	8013      	strh	r3, [r2, #0]
    5056:	4b4c      	ldr	r3, [pc, #304]	; (5188 <TV_SYNC_handler+0x230>)
    5058:	881b      	ldrh	r3, [r3, #0]
    505a:	f013 0f01 	tst.w	r3, #1
    505e:	d017      	beq.n	5090 <TV_SYNC_handler+0x138>
    5060:	4b48      	ldr	r3, [pc, #288]	; (5184 <TV_SYNC_handler+0x22c>)
    5062:	f241 12c5 	movw	r2, #4549	; 0x11c5
    5066:	62da      	str	r2, [r3, #44]	; 0x2c
    5068:	f44f 72a8 	mov.w	r2, #336	; 0x150
    506c:	635a      	str	r2, [r3, #52]	; 0x34
    506e:	4a46      	ldr	r2, [pc, #280]	; (5188 <TV_SYNC_handler+0x230>)
    5070:	8813      	ldrh	r3, [r2, #0]
    5072:	f023 0302 	bic.w	r3, r3, #2
    5076:	041b      	lsls	r3, r3, #16
    5078:	0c1b      	lsrs	r3, r3, #16
    507a:	8013      	strh	r3, [r2, #0]
    507c:	4a3d      	ldr	r2, [pc, #244]	; (5174 <TV_SYNC_handler+0x21c>)
    507e:	8813      	ldrh	r3, [r2, #0]
    5080:	f3c3 038d 	ubfx	r3, r3, #2, #14
    5084:	8013      	strh	r3, [r2, #0]
    5086:	4a3d      	ldr	r2, [pc, #244]	; (517c <TV_SYNC_handler+0x224>)
    5088:	8813      	ldrh	r3, [r2, #0]
    508a:	3301      	adds	r3, #1
    508c:	b29b      	uxth	r3, r3
    508e:	8013      	strh	r3, [r2, #0]
    5090:	4a3c      	ldr	r2, [pc, #240]	; (5184 <TV_SYNC_handler+0x22c>)
    5092:	6913      	ldr	r3, [r2, #16]
    5094:	f023 0301 	bic.w	r3, r3, #1
    5098:	6113      	str	r3, [r2, #16]
    509a:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
    509e:	4685      	mov	sp, r0
    50a0:	4770      	bx	lr
    50a2:	f7fc fc6b 	bl	197c <read_gamepad>
    50a6:	4a35      	ldr	r2, [pc, #212]	; (517c <TV_SYNC_handler+0x224>)
    50a8:	8813      	ldrh	r3, [r2, #0]
    50aa:	3301      	adds	r3, #1
    50ac:	b29b      	uxth	r3, r3
    50ae:	8013      	strh	r3, [r2, #0]
    50b0:	e7ee      	b.n	5090 <TV_SYNC_handler+0x138>
    50b2:	4b36      	ldr	r3, [pc, #216]	; (518c <TV_SYNC_handler+0x234>)
    50b4:	881b      	ldrh	r3, [r3, #0]
    50b6:	b29b      	uxth	r3, r3
    50b8:	b13b      	cbz	r3, 50ca <TV_SYNC_handler+0x172>
    50ba:	4a34      	ldr	r2, [pc, #208]	; (518c <TV_SYNC_handler+0x234>)
    50bc:	8813      	ldrh	r3, [r2, #0]
    50be:	3b01      	subs	r3, #1
    50c0:	b29b      	uxth	r3, r3
    50c2:	8013      	strh	r3, [r2, #0]
    50c4:	8813      	ldrh	r3, [r2, #0]
    50c6:	b29b      	uxth	r3, r3
    50c8:	b12b      	cbz	r3, 50d6 <TV_SYNC_handler+0x17e>
    50ca:	4a2c      	ldr	r2, [pc, #176]	; (517c <TV_SYNC_handler+0x224>)
    50cc:	8813      	ldrh	r3, [r2, #0]
    50ce:	3301      	adds	r3, #1
    50d0:	b29b      	uxth	r3, r3
    50d2:	8013      	strh	r3, [r2, #0]
    50d4:	e7dc      	b.n	5090 <TV_SYNC_handler+0x138>
    50d6:	f7ff f8dd 	bl	4294 <sound_stop>
    50da:	e7f6      	b.n	50ca <TV_SYNC_handler+0x172>
    50dc:	4b2c      	ldr	r3, [pc, #176]	; (5190 <TV_SYNC_handler+0x238>)
    50de:	881b      	ldrh	r3, [r3, #0]
    50e0:	b29b      	uxth	r3, r3
    50e2:	b123      	cbz	r3, 50ee <TV_SYNC_handler+0x196>
    50e4:	4a2a      	ldr	r2, [pc, #168]	; (5190 <TV_SYNC_handler+0x238>)
    50e6:	8813      	ldrh	r3, [r2, #0]
    50e8:	3b01      	subs	r3, #1
    50ea:	b29b      	uxth	r3, r3
    50ec:	8013      	strh	r3, [r2, #0]
    50ee:	4a23      	ldr	r2, [pc, #140]	; (517c <TV_SYNC_handler+0x224>)
    50f0:	8813      	ldrh	r3, [r2, #0]
    50f2:	3301      	adds	r3, #1
    50f4:	b29b      	uxth	r3, r3
    50f6:	8013      	strh	r3, [r2, #0]
    50f8:	e7ca      	b.n	5090 <TV_SYNC_handler+0x138>
    50fa:	4b1e      	ldr	r3, [pc, #120]	; (5174 <TV_SYNC_handler+0x21c>)
    50fc:	881b      	ldrh	r3, [r3, #0]
    50fe:	b29b      	uxth	r3, r3
    5100:	4a24      	ldr	r2, [pc, #144]	; (5194 <TV_SYNC_handler+0x23c>)
    5102:	8812      	ldrh	r2, [r2, #0]
    5104:	429a      	cmp	r2, r3
    5106:	d1c3      	bne.n	5090 <TV_SYNC_handler+0x138>
    5108:	4b1e      	ldr	r3, [pc, #120]	; (5184 <TV_SYNC_handler+0x22c>)
    510a:	691a      	ldr	r2, [r3, #16]
    510c:	f022 0204 	bic.w	r2, r2, #4
    5110:	611a      	str	r2, [r3, #16]
    5112:	68da      	ldr	r2, [r3, #12]
    5114:	f042 0204 	orr.w	r2, r2, #4
    5118:	60da      	str	r2, [r3, #12]
    511a:	4a1b      	ldr	r2, [pc, #108]	; (5188 <TV_SYNC_handler+0x230>)
    511c:	8813      	ldrh	r3, [r2, #0]
    511e:	b29b      	uxth	r3, r3
    5120:	f043 0304 	orr.w	r3, r3, #4
    5124:	8013      	strh	r3, [r2, #0]
    5126:	4a15      	ldr	r2, [pc, #84]	; (517c <TV_SYNC_handler+0x224>)
    5128:	8813      	ldrh	r3, [r2, #0]
    512a:	3301      	adds	r3, #1
    512c:	b29b      	uxth	r3, r3
    512e:	8013      	strh	r3, [r2, #0]
    5130:	2200      	movs	r2, #0
    5132:	4b13      	ldr	r3, [pc, #76]	; (5180 <TV_SYNC_handler+0x228>)
    5134:	801a      	strh	r2, [r3, #0]
    5136:	e7ab      	b.n	5090 <TV_SYNC_handler+0x138>
    5138:	4a11      	ldr	r2, [pc, #68]	; (5180 <TV_SYNC_handler+0x228>)
    513a:	8813      	ldrh	r3, [r2, #0]
    513c:	3301      	adds	r3, #1
    513e:	b29b      	uxth	r3, r3
    5140:	8013      	strh	r3, [r2, #0]
    5142:	4b0c      	ldr	r3, [pc, #48]	; (5174 <TV_SYNC_handler+0x21c>)
    5144:	881b      	ldrh	r3, [r3, #0]
    5146:	b29b      	uxth	r3, r3
    5148:	4a13      	ldr	r2, [pc, #76]	; (5198 <TV_SYNC_handler+0x240>)
    514a:	8812      	ldrh	r2, [r2, #0]
    514c:	429a      	cmp	r2, r3
    514e:	d19f      	bne.n	5090 <TV_SYNC_handler+0x138>
    5150:	4a0c      	ldr	r2, [pc, #48]	; (5184 <TV_SYNC_handler+0x22c>)
    5152:	68d3      	ldr	r3, [r2, #12]
    5154:	f023 0304 	bic.w	r3, r3, #4
    5158:	60d3      	str	r3, [r2, #12]
    515a:	4a0b      	ldr	r2, [pc, #44]	; (5188 <TV_SYNC_handler+0x230>)
    515c:	8813      	ldrh	r3, [r2, #0]
    515e:	f023 0304 	bic.w	r3, r3, #4
    5162:	041b      	lsls	r3, r3, #16
    5164:	0c1b      	lsrs	r3, r3, #16
    5166:	8013      	strh	r3, [r2, #0]
    5168:	4a04      	ldr	r2, [pc, #16]	; (517c <TV_SYNC_handler+0x224>)
    516a:	8813      	ldrh	r3, [r2, #0]
    516c:	3301      	adds	r3, #1
    516e:	b29b      	uxth	r3, r3
    5170:	8013      	strh	r3, [r2, #0]
    5172:	e78d      	b.n	5090 <TV_SYNC_handler+0x138>
    5174:	20000622 	.word	0x20000622
    5178:	20004db8 	.word	0x20004db8
    517c:	2000061c 	.word	0x2000061c
    5180:	20000620 	.word	0x20000620
    5184:	40012c00 	.word	0x40012c00
    5188:	2000061e 	.word	0x2000061e
    518c:	20004dbc 	.word	0x20004dbc
    5190:	20004db4 	.word	0x20004db4
    5194:	20000176 	.word	0x20000176
    5198:	20000178 	.word	0x20000178
    519c:	4b11      	ldr	r3, [pc, #68]	; (51e4 <TV_SYNC_handler+0x28c>)
    519e:	881b      	ldrh	r3, [r3, #0]
    51a0:	b29b      	uxth	r3, r3
    51a2:	f240 1207 	movw	r2, #263	; 0x107
    51a6:	4293      	cmp	r3, r2
    51a8:	f47f af72 	bne.w	5090 <TV_SYNC_handler+0x138>
    51ac:	4b0e      	ldr	r3, [pc, #56]	; (51e8 <TV_SYNC_handler+0x290>)
    51ae:	881b      	ldrh	r3, [r3, #0]
    51b0:	f013 0f01 	tst.w	r3, #1
    51b4:	d003      	beq.n	51be <TV_SYNC_handler+0x266>
    51b6:	f640 02e2 	movw	r2, #2274	; 0x8e2
    51ba:	4b0c      	ldr	r3, [pc, #48]	; (51ec <TV_SYNC_handler+0x294>)
    51bc:	62da      	str	r2, [r3, #44]	; 0x2c
    51be:	4a0a      	ldr	r2, [pc, #40]	; (51e8 <TV_SYNC_handler+0x290>)
    51c0:	8813      	ldrh	r3, [r2, #0]
    51c2:	b29b      	uxth	r3, r3
    51c4:	f083 0301 	eor.w	r3, r3, #1
    51c8:	8013      	strh	r3, [r2, #0]
    51ca:	8813      	ldrh	r3, [r2, #0]
    51cc:	b29b      	uxth	r3, r3
    51ce:	f043 0302 	orr.w	r3, r3, #2
    51d2:	8013      	strh	r3, [r2, #0]
    51d4:	2300      	movs	r3, #0
    51d6:	4a03      	ldr	r2, [pc, #12]	; (51e4 <TV_SYNC_handler+0x28c>)
    51d8:	8013      	strh	r3, [r2, #0]
    51da:	4a05      	ldr	r2, [pc, #20]	; (51f0 <TV_SYNC_handler+0x298>)
    51dc:	8013      	strh	r3, [r2, #0]
    51de:	4a05      	ldr	r2, [pc, #20]	; (51f4 <TV_SYNC_handler+0x29c>)
    51e0:	8013      	strh	r3, [r2, #0]
    51e2:	e755      	b.n	5090 <TV_SYNC_handler+0x138>
    51e4:	20000622 	.word	0x20000622
    51e8:	2000061e 	.word	0x2000061e
    51ec:	40012c00 	.word	0x40012c00
    51f0:	20000620 	.word	0x20000620
    51f4:	2000061c 	.word	0x2000061c

000051f8 <frame_sync>:
    51f8:	b480      	push	{r7}
    51fa:	af00      	add	r7, sp, #0
    51fc:	bf00      	nop
    51fe:	4b05      	ldr	r3, [pc, #20]	; (5214 <frame_sync+0x1c>)
    5200:	881b      	ldrh	r3, [r3, #0]
    5202:	b29b      	uxth	r3, r3
    5204:	f003 0302 	and.w	r3, r3, #2
    5208:	2b00      	cmp	r3, #0
    520a:	d0f8      	beq.n	51fe <frame_sync+0x6>
    520c:	bf00      	nop
    520e:	46bd      	mov	sp, r7
    5210:	bc80      	pop	{r7}
    5212:	4770      	bx	lr
    5214:	2000061e 	.word	0x2000061e

00005218 <wait_sync_end>:
    5218:	b480      	push	{r7}
    521a:	af00      	add	r7, sp, #0
    521c:	bf00      	nop
    521e:	4b05      	ldr	r3, [pc, #20]	; (5234 <wait_sync_end+0x1c>)
    5220:	881b      	ldrh	r3, [r3, #0]
    5222:	b29b      	uxth	r3, r3
    5224:	f003 0302 	and.w	r3, r3, #2
    5228:	2b00      	cmp	r3, #0
    522a:	d1f8      	bne.n	521e <wait_sync_end+0x6>
    522c:	bf00      	nop
    522e:	46bd      	mov	sp, r7
    5230:	bc80      	pop	{r7}
    5232:	4770      	bx	lr
    5234:	2000061e 	.word	0x2000061e

00005238 <set_video_mode>:
    5238:	b580      	push	{r7, lr}
    523a:	b082      	sub	sp, #8
    523c:	af00      	add	r7, sp, #0
    523e:	4603      	mov	r3, r0
    5240:	71fb      	strb	r3, [r7, #7]
    5242:	f7ff ffd9 	bl	51f8 <frame_sync>
    5246:	4a3c      	ldr	r2, [pc, #240]	; (5338 <set_video_mode+0x100>)
    5248:	79fb      	ldrb	r3, [r7, #7]
    524a:	7013      	strb	r3, [r2, #0]
    524c:	79fb      	ldrb	r3, [r7, #7]
    524e:	2b00      	cmp	r3, #0
    5250:	d103      	bne.n	525a <set_video_mode+0x22>
    5252:	4b3a      	ldr	r3, [pc, #232]	; (533c <set_video_mode+0x104>)
    5254:	2204      	movs	r2, #4
    5256:	701a      	strb	r2, [r3, #0]
    5258:	e002      	b.n	5260 <set_video_mode+0x28>
    525a:	4b38      	ldr	r3, [pc, #224]	; (533c <set_video_mode+0x104>)
    525c:	2201      	movs	r2, #1
    525e:	701a      	strb	r2, [r3, #0]
    5260:	79fa      	ldrb	r2, [r7, #7]
    5262:	4937      	ldr	r1, [pc, #220]	; (5340 <set_video_mode+0x108>)
    5264:	4613      	mov	r3, r2
    5266:	00db      	lsls	r3, r3, #3
    5268:	4413      	add	r3, r2
    526a:	005b      	lsls	r3, r3, #1
    526c:	440b      	add	r3, r1
    526e:	3302      	adds	r3, #2
    5270:	881a      	ldrh	r2, [r3, #0]
    5272:	4b34      	ldr	r3, [pc, #208]	; (5344 <set_video_mode+0x10c>)
    5274:	801a      	strh	r2, [r3, #0]
    5276:	79fa      	ldrb	r2, [r7, #7]
    5278:	4931      	ldr	r1, [pc, #196]	; (5340 <set_video_mode+0x108>)
    527a:	4613      	mov	r3, r2
    527c:	00db      	lsls	r3, r3, #3
    527e:	4413      	add	r3, r2
    5280:	005b      	lsls	r3, r3, #1
    5282:	440b      	add	r3, r1
    5284:	3304      	adds	r3, #4
    5286:	881a      	ldrh	r2, [r3, #0]
    5288:	4b2f      	ldr	r3, [pc, #188]	; (5348 <set_video_mode+0x110>)
    528a:	801a      	strh	r2, [r3, #0]
    528c:	79fa      	ldrb	r2, [r7, #7]
    528e:	492c      	ldr	r1, [pc, #176]	; (5340 <set_video_mode+0x108>)
    5290:	4613      	mov	r3, r2
    5292:	00db      	lsls	r3, r3, #3
    5294:	4413      	add	r3, r2
    5296:	005b      	lsls	r3, r3, #1
    5298:	440b      	add	r3, r1
    529a:	3306      	adds	r3, #6
    529c:	881a      	ldrh	r2, [r3, #0]
    529e:	4b2b      	ldr	r3, [pc, #172]	; (534c <set_video_mode+0x114>)
    52a0:	801a      	strh	r2, [r3, #0]
    52a2:	79fa      	ldrb	r2, [r7, #7]
    52a4:	4926      	ldr	r1, [pc, #152]	; (5340 <set_video_mode+0x108>)
    52a6:	4613      	mov	r3, r2
    52a8:	00db      	lsls	r3, r3, #3
    52aa:	4413      	add	r3, r2
    52ac:	005b      	lsls	r3, r3, #1
    52ae:	440b      	add	r3, r1
    52b0:	3308      	adds	r3, #8
    52b2:	781a      	ldrb	r2, [r3, #0]
    52b4:	4b26      	ldr	r3, [pc, #152]	; (5350 <set_video_mode+0x118>)
    52b6:	701a      	strb	r2, [r3, #0]
    52b8:	79fa      	ldrb	r2, [r7, #7]
    52ba:	4921      	ldr	r1, [pc, #132]	; (5340 <set_video_mode+0x108>)
    52bc:	4613      	mov	r3, r2
    52be:	00db      	lsls	r3, r3, #3
    52c0:	4413      	add	r3, r2
    52c2:	005b      	lsls	r3, r3, #1
    52c4:	440b      	add	r3, r1
    52c6:	3309      	adds	r3, #9
    52c8:	781a      	ldrb	r2, [r3, #0]
    52ca:	4b22      	ldr	r3, [pc, #136]	; (5354 <set_video_mode+0x11c>)
    52cc:	701a      	strb	r2, [r3, #0]
    52ce:	79fa      	ldrb	r2, [r7, #7]
    52d0:	491b      	ldr	r1, [pc, #108]	; (5340 <set_video_mode+0x108>)
    52d2:	4613      	mov	r3, r2
    52d4:	00db      	lsls	r3, r3, #3
    52d6:	4413      	add	r3, r2
    52d8:	005b      	lsls	r3, r3, #1
    52da:	440b      	add	r3, r1
    52dc:	330a      	adds	r3, #10
    52de:	781a      	ldrb	r2, [r3, #0]
    52e0:	4b1d      	ldr	r3, [pc, #116]	; (5358 <set_video_mode+0x120>)
    52e2:	701a      	strb	r2, [r3, #0]
    52e4:	79fa      	ldrb	r2, [r7, #7]
    52e6:	4916      	ldr	r1, [pc, #88]	; (5340 <set_video_mode+0x108>)
    52e8:	4613      	mov	r3, r2
    52ea:	00db      	lsls	r3, r3, #3
    52ec:	4413      	add	r3, r2
    52ee:	005b      	lsls	r3, r3, #1
    52f0:	440b      	add	r3, r1
    52f2:	330c      	adds	r3, #12
    52f4:	881b      	ldrh	r3, [r3, #0]
    52f6:	b2da      	uxtb	r2, r3
    52f8:	4b18      	ldr	r3, [pc, #96]	; (535c <set_video_mode+0x124>)
    52fa:	701a      	strb	r2, [r3, #0]
    52fc:	79fa      	ldrb	r2, [r7, #7]
    52fe:	4910      	ldr	r1, [pc, #64]	; (5340 <set_video_mode+0x108>)
    5300:	4613      	mov	r3, r2
    5302:	00db      	lsls	r3, r3, #3
    5304:	4413      	add	r3, r2
    5306:	005b      	lsls	r3, r3, #1
    5308:	440b      	add	r3, r1
    530a:	330e      	adds	r3, #14
    530c:	881b      	ldrh	r3, [r3, #0]
    530e:	b2da      	uxtb	r2, r3
    5310:	4b13      	ldr	r3, [pc, #76]	; (5360 <set_video_mode+0x128>)
    5312:	701a      	strb	r2, [r3, #0]
    5314:	79fa      	ldrb	r2, [r7, #7]
    5316:	490a      	ldr	r1, [pc, #40]	; (5340 <set_video_mode+0x108>)
    5318:	4613      	mov	r3, r2
    531a:	00db      	lsls	r3, r3, #3
    531c:	4413      	add	r3, r2
    531e:	005b      	lsls	r3, r3, #1
    5320:	440b      	add	r3, r1
    5322:	3310      	adds	r3, #16
    5324:	881a      	ldrh	r2, [r3, #0]
    5326:	4b0f      	ldr	r3, [pc, #60]	; (5364 <set_video_mode+0x12c>)
    5328:	801a      	strh	r2, [r3, #0]
    532a:	f7fc ff7d 	bl	2228 <gfx_cls>
    532e:	bf00      	nop
    5330:	3708      	adds	r7, #8
    5332:	46bd      	mov	sp, r7
    5334:	bd80      	pop	{r7, pc}
    5336:	bf00      	nop
    5338:	20000624 	.word	0x20000624
    533c:	20000104 	.word	0x20000104
    5340:	00005a7c 	.word	0x00005a7c
    5344:	20000176 	.word	0x20000176
    5348:	20000178 	.word	0x20000178
    534c:	2000017a 	.word	0x2000017a
    5350:	2000017c 	.word	0x2000017c
    5354:	2000017d 	.word	0x2000017d
    5358:	2000017e 	.word	0x2000017e
    535c:	2000017f 	.word	0x2000017f
    5360:	20000180 	.word	0x20000180
    5364:	20000182 	.word	0x20000182

00005368 <get_video_params>:
    5368:	b480      	push	{r7}
    536a:	af00      	add	r7, sp, #0
    536c:	4b06      	ldr	r3, [pc, #24]	; (5388 <get_video_params+0x20>)
    536e:	781b      	ldrb	r3, [r3, #0]
    5370:	461a      	mov	r2, r3
    5372:	4613      	mov	r3, r2
    5374:	00db      	lsls	r3, r3, #3
    5376:	4413      	add	r3, r2
    5378:	005b      	lsls	r3, r3, #1
    537a:	4a04      	ldr	r2, [pc, #16]	; (538c <get_video_params+0x24>)
    537c:	4413      	add	r3, r2
    537e:	4618      	mov	r0, r3
    5380:	46bd      	mov	sp, r7
    5382:	bc80      	pop	{r7}
    5384:	4770      	bx	lr
    5386:	bf00      	nop
    5388:	20000624 	.word	0x20000624
    538c:	00005a7c 	.word	0x00005a7c

00005390 <game_pause>:
    5390:	b480      	push	{r7}
    5392:	b083      	sub	sp, #12
    5394:	af00      	add	r7, sp, #0
    5396:	4603      	mov	r3, r0
    5398:	80fb      	strh	r3, [r7, #6]
    539a:	4a07      	ldr	r2, [pc, #28]	; (53b8 <game_pause+0x28>)
    539c:	88fb      	ldrh	r3, [r7, #6]
    539e:	8013      	strh	r3, [r2, #0]
    53a0:	bf00      	nop
    53a2:	4b05      	ldr	r3, [pc, #20]	; (53b8 <game_pause+0x28>)
    53a4:	881b      	ldrh	r3, [r3, #0]
    53a6:	b29b      	uxth	r3, r3
    53a8:	2b00      	cmp	r3, #0
    53aa:	d1fa      	bne.n	53a2 <game_pause+0x12>
    53ac:	bf00      	nop
    53ae:	370c      	adds	r7, #12
    53b0:	46bd      	mov	sp, r7
    53b2:	bc80      	pop	{r7}
    53b4:	4770      	bx	lr
    53b6:	bf00      	nop
    53b8:	20004db4 	.word	0x20004db4

000053bc <micro_pause>:
    53bc:	b480      	push	{r7}
    53be:	b085      	sub	sp, #20
    53c0:	af00      	add	r7, sp, #0
    53c2:	6078      	str	r0, [r7, #4]
    53c4:	4b07      	ldr	r3, [pc, #28]	; (53e4 <micro_pause+0x28>)
    53c6:	681a      	ldr	r2, [r3, #0]
    53c8:	687b      	ldr	r3, [r7, #4]
    53ca:	4413      	add	r3, r2
    53cc:	60fb      	str	r3, [r7, #12]
    53ce:	bf00      	nop
    53d0:	4b04      	ldr	r3, [pc, #16]	; (53e4 <micro_pause+0x28>)
    53d2:	681a      	ldr	r2, [r3, #0]
    53d4:	68fb      	ldr	r3, [r7, #12]
    53d6:	429a      	cmp	r2, r3
    53d8:	d3fa      	bcc.n	53d0 <micro_pause+0x14>
    53da:	bf00      	nop
    53dc:	3714      	adds	r7, #20
    53de:	46bd      	mov	sp, r7
    53e0:	bc80      	pop	{r7}
    53e2:	4770      	bx	lr
    53e4:	20004db8 	.word	0x20004db8
