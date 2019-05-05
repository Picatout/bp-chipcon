
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 59 02 00 00 d1 01 00 00     .P. 1...Y.......
      10:	5f 02 00 00 65 02 00 00 6b 02 00 00 11 28 00 00     _...e...k....(..
      20:	11 28 00 00 11 28 00 00 11 28 00 00 71 02 00 00     .(...(...(..q...
      30:	11 28 00 00 11 28 00 00 77 02 00 00 f5 28 00 00     .(...(..w....(..
      40:	83 02 00 00 89 02 00 00 95 02 00 00 49 25 00 00     ............I%..
      50:	9b 02 00 00 a1 02 00 00 a7 02 00 00 ad 02 00 00     ................
      60:	b3 02 00 00 b9 02 00 00 bf 02 00 00 c5 02 00 00     ................
      70:	cb 02 00 00 11 28 00 00 11 28 00 00 d1 02 00 00     .....(...(......
      80:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..
      90:	11 28 00 00 11 28 00 00 11 28 00 00 d7 02 00 00     .(...(...(......
      a0:	11 28 00 00 11 28 00 00 11 28 00 00 3d 29 00 00     .(...(...(..=)..
      b0:	e3 02 00 00 e9 02 00 00 ef 02 00 00 11 28 00 00     .............(..
      c0:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..
      d0:	11 28 00 00 f5 02 00 00 29 30 00 00 01 03 00 00     .(......)0......
      e0:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..
      f0:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..
     100:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..
     110:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..
     120:	11 28 00 00 11 28 00 00 11 28 00 00 11 28 00 00     .(...(...(...(..

00000130 <startup>:
     130:	b580      	push	{r7, lr}
     132:	b086      	sub	sp, #24
     134:	af00      	add	r7, sp, #0
     136:	4b1c      	ldr	r3, [pc, #112]	; (1a8 <startup+0x78>)
     138:	617b      	str	r3, [r7, #20]
     13a:	4b1c      	ldr	r3, [pc, #112]	; (1ac <startup+0x7c>)
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
     154:	4b16      	ldr	r3, [pc, #88]	; (1b0 <startup+0x80>)
     156:	613b      	str	r3, [r7, #16]
     158:	4b16      	ldr	r3, [pc, #88]	; (1b4 <startup+0x84>)
     15a:	60fb      	str	r3, [r7, #12]
     15c:	4b16      	ldr	r3, [pc, #88]	; (1b8 <startup+0x88>)
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
     17e:	4b0f      	ldr	r3, [pc, #60]	; (1bc <startup+0x8c>)
     180:	4a0f      	ldr	r2, [pc, #60]	; (1c0 <startup+0x90>)
     182:	601a      	str	r2, [r3, #0]
     184:	4b0f      	ldr	r3, [pc, #60]	; (1c4 <startup+0x94>)
     186:	4a10      	ldr	r2, [pc, #64]	; (1c8 <startup+0x98>)
     188:	601a      	str	r2, [r3, #0]
     18a:	4a10      	ldr	r2, [pc, #64]	; (1cc <startup+0x9c>)
     18c:	4b0f      	ldr	r3, [pc, #60]	; (1cc <startup+0x9c>)
     18e:	681b      	ldr	r3, [r3, #0]
     190:	f043 0319 	orr.w	r3, r3, #25
     194:	6013      	str	r3, [r2, #0]
     196:	b662      	cpsie	i
     198:	b661      	cpsie	f
     19a:	f001 fa87 	bl	16ac <main>
     19e:	bf00      	nop
     1a0:	3718      	adds	r7, #24
     1a2:	46bd      	mov	sp, r7
     1a4:	bd80      	pop	{r7, pc}
     1a6:	bf00      	nop
     1a8:	2000005c 	.word	0x2000005c
     1ac:	200009d4 	.word	0x200009d4
     1b0:	00003400 	.word	0x00003400
     1b4:	20000000 	.word	0x20000000
     1b8:	2000005c 	.word	0x2000005c
     1bc:	200004d0 	.word	0x200004d0
     1c0:	20000a00 	.word	0x20000a00
     1c4:	200004cc 	.word	0x200004cc
     1c8:	00003400 	.word	0x00003400
     1cc:	e000ed14 	.word	0xe000ed14

000001d0 <HARD_FAULT_handler>:
     1d0:	4668      	mov	r0, sp
     1d2:	f020 0107 	bic.w	r1, r0, #7
     1d6:	468d      	mov	sp, r1
     1d8:	b581      	push	{r0, r7, lr}
     1da:	b083      	sub	sp, #12
     1dc:	af00      	add	r7, sp, #0
     1de:	f3ef 8009 	mrs	r0, PSP
     1e2:	6983      	ldr	r3, [r0, #24]
     1e4:	607b      	str	r3, [r7, #4]
     1e6:	4b17      	ldr	r3, [pc, #92]	; (244 <HARD_FAULT_handler+0x74>)
     1e8:	681b      	ldr	r3, [r3, #0]
     1ea:	b2db      	uxtb	r3, r3
     1ec:	f003 037f 	and.w	r3, r3, #127	; 0x7f
     1f0:	2b00      	cmp	r3, #0
     1f2:	d004      	beq.n	1fe <HARD_FAULT_handler+0x2e>
     1f4:	6879      	ldr	r1, [r7, #4]
     1f6:	4814      	ldr	r0, [pc, #80]	; (248 <HARD_FAULT_handler+0x78>)
     1f8:	f002 fb12 	bl	2820 <print_fault>
     1fc:	e01b      	b.n	236 <HARD_FAULT_handler+0x66>
     1fe:	4b11      	ldr	r3, [pc, #68]	; (244 <HARD_FAULT_handler+0x74>)
     200:	681b      	ldr	r3, [r3, #0]
     202:	f3c3 2307 	ubfx	r3, r3, #8, #8
     206:	b2db      	uxtb	r3, r3
     208:	2b00      	cmp	r3, #0
     20a:	d004      	beq.n	216 <HARD_FAULT_handler+0x46>
     20c:	6879      	ldr	r1, [r7, #4]
     20e:	480f      	ldr	r0, [pc, #60]	; (24c <HARD_FAULT_handler+0x7c>)
     210:	f002 fb06 	bl	2820 <print_fault>
     214:	e00f      	b.n	236 <HARD_FAULT_handler+0x66>
     216:	4b0b      	ldr	r3, [pc, #44]	; (244 <HARD_FAULT_handler+0x74>)
     218:	681b      	ldr	r3, [r3, #0]
     21a:	f3c3 430f 	ubfx	r3, r3, #16, #16
     21e:	b29b      	uxth	r3, r3
     220:	2b00      	cmp	r3, #0
     222:	d004      	beq.n	22e <HARD_FAULT_handler+0x5e>
     224:	6879      	ldr	r1, [r7, #4]
     226:	480a      	ldr	r0, [pc, #40]	; (250 <HARD_FAULT_handler+0x80>)
     228:	f002 fafa 	bl	2820 <print_fault>
     22c:	e003      	b.n	236 <HARD_FAULT_handler+0x66>
     22e:	6879      	ldr	r1, [r7, #4]
     230:	4808      	ldr	r0, [pc, #32]	; (254 <HARD_FAULT_handler+0x84>)
     232:	f002 faf5 	bl	2820 <print_fault>
     236:	bf00      	nop
     238:	370c      	adds	r7, #12
     23a:	46bd      	mov	sp, r7
     23c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     240:	4685      	mov	sp, r0
     242:	4770      	bx	lr
     244:	e000ed28 	.word	0xe000ed28
     248:	00003168 	.word	0x00003168
     24c:	00003180 	.word	0x00003180
     250:	0000318c 	.word	0x0000318c
     254:	0000319c 	.word	0x0000319c

00000258 <NMI_handler>:
     258:	f002 fada 	bl	2810 <reset_mcu>
     25c:	bf00      	nop

0000025e <MM_FAULT_handler>:
     25e:	f002 fad7 	bl	2810 <reset_mcu>
     262:	bf00      	nop

00000264 <BUS_FAULT_handler>:
     264:	f002 fad4 	bl	2810 <reset_mcu>
     268:	bf00      	nop

0000026a <USAGE_FAULT_handler>:
     26a:	f002 fad1 	bl	2810 <reset_mcu>
     26e:	bf00      	nop

00000270 <SVC_handler>:
     270:	f002 face 	bl	2810 <reset_mcu>
     274:	bf00      	nop

00000276 <PENDSV_handler>:
     276:	f002 facb 	bl	2810 <reset_mcu>
     27a:	bf00      	nop
     27c:	f002 fac8 	bl	2810 <reset_mcu>
     280:	bf00      	nop

00000282 <WWDG_handler>:
     282:	f002 fac5 	bl	2810 <reset_mcu>
     286:	bf00      	nop

00000288 <PVD_handler>:
     288:	f002 fac2 	bl	2810 <reset_mcu>
     28c:	bf00      	nop
     28e:	f002 fabf 	bl	2810 <reset_mcu>
     292:	bf00      	nop

00000294 <TAMPER_handler>:
     294:	f002 fabc 	bl	2810 <reset_mcu>
     298:	bf00      	nop

0000029a <FLASH_handler>:
     29a:	f002 fab9 	bl	2810 <reset_mcu>
     29e:	bf00      	nop

000002a0 <RCC_handler>:
     2a0:	f002 fab6 	bl	2810 <reset_mcu>
     2a4:	bf00      	nop

000002a6 <EXTI0_handler>:
     2a6:	f002 fab3 	bl	2810 <reset_mcu>
     2aa:	bf00      	nop

000002ac <EXTI1_handler>:
     2ac:	f002 fab0 	bl	2810 <reset_mcu>
     2b0:	bf00      	nop

000002b2 <EXTI2_handler>:
     2b2:	f002 faad 	bl	2810 <reset_mcu>
     2b6:	bf00      	nop

000002b8 <EXTI3_handler>:
     2b8:	f002 faaa 	bl	2810 <reset_mcu>
     2bc:	bf00      	nop

000002be <EXTI4_handler>:
     2be:	f002 faa7 	bl	2810 <reset_mcu>
     2c2:	bf00      	nop

000002c4 <DMA1CH1_handler>:
     2c4:	f002 faa4 	bl	2810 <reset_mcu>
     2c8:	bf00      	nop

000002ca <DMA1CH2_handler>:
     2ca:	f002 faa1 	bl	2810 <reset_mcu>
     2ce:	bf00      	nop

000002d0 <DMA1CH5_handler>:
     2d0:	f002 fa9e 	bl	2810 <reset_mcu>
     2d4:	bf00      	nop

000002d6 <EXTI9_5_handler>:
     2d6:	f002 fa9b 	bl	2810 <reset_mcu>
     2da:	bf00      	nop

000002dc <TIM1_CC_handler>:
     2dc:	f002 fa98 	bl	2810 <reset_mcu>
     2e0:	bf00      	nop

000002e2 <TIM2_handler>:
     2e2:	f002 fa95 	bl	2810 <reset_mcu>
     2e6:	bf00      	nop

000002e8 <TIM3_handler>:
     2e8:	f002 fa92 	bl	2810 <reset_mcu>
     2ec:	bf00      	nop

000002ee <TIM4_handler>:
     2ee:	f002 fa8f 	bl	2810 <reset_mcu>
     2f2:	bf00      	nop

000002f4 <USART1_handler>:
     2f4:	f002 fa8c 	bl	2810 <reset_mcu>
     2f8:	bf00      	nop
     2fa:	f002 fa89 	bl	2810 <reset_mcu>
     2fe:	bf00      	nop

00000300 <USART3_handler>:
     300:	f002 fa86 	bl	2810 <reset_mcu>
     304:	bf00      	nop
	...

00000308 <align>:
     308:	b480      	push	{r7}
     30a:	b083      	sub	sp, #12
     30c:	af00      	add	r7, sp, #0
     30e:	4603      	mov	r3, r0
     310:	71fb      	strb	r3, [r7, #7]
     312:	79fb      	ldrb	r3, [r7, #7]
     314:	2b02      	cmp	r3, #2
     316:	d002      	beq.n	31e <align+0x16>
     318:	2b04      	cmp	r3, #4
     31a:	d00d      	beq.n	338 <align+0x30>
     31c:	e019      	b.n	352 <align+0x4a>
     31e:	4b10      	ldr	r3, [pc, #64]	; (360 <align+0x58>)
     320:	681b      	ldr	r3, [r3, #0]
     322:	3301      	adds	r3, #1
     324:	4a0e      	ldr	r2, [pc, #56]	; (360 <align+0x58>)
     326:	6013      	str	r3, [r2, #0]
     328:	4b0d      	ldr	r3, [pc, #52]	; (360 <align+0x58>)
     32a:	681b      	ldr	r3, [r3, #0]
     32c:	f023 0301 	bic.w	r3, r3, #1
     330:	461a      	mov	r2, r3
     332:	4b0b      	ldr	r3, [pc, #44]	; (360 <align+0x58>)
     334:	601a      	str	r2, [r3, #0]
     336:	e00c      	b.n	352 <align+0x4a>
     338:	4b09      	ldr	r3, [pc, #36]	; (360 <align+0x58>)
     33a:	681b      	ldr	r3, [r3, #0]
     33c:	3303      	adds	r3, #3
     33e:	4a08      	ldr	r2, [pc, #32]	; (360 <align+0x58>)
     340:	6013      	str	r3, [r2, #0]
     342:	4b07      	ldr	r3, [pc, #28]	; (360 <align+0x58>)
     344:	681b      	ldr	r3, [r3, #0]
     346:	f023 0303 	bic.w	r3, r3, #3
     34a:	461a      	mov	r2, r3
     34c:	4b04      	ldr	r3, [pc, #16]	; (360 <align+0x58>)
     34e:	601a      	str	r2, [r3, #0]
     350:	bf00      	nop
     352:	4b03      	ldr	r3, [pc, #12]	; (360 <align+0x58>)
     354:	681b      	ldr	r3, [r3, #0]
     356:	4618      	mov	r0, r3
     358:	370c      	adds	r7, #12
     35a:	46bd      	mov	sp, r7
     35c:	bc80      	pop	{r7}
     35e:	4770      	bx	lr
     360:	200004d0 	.word	0x200004d0

00000364 <alloc>:
     364:	b480      	push	{r7}
     366:	b085      	sub	sp, #20
     368:	af00      	add	r7, sp, #0
     36a:	6078      	str	r0, [r7, #4]
     36c:	4b0c      	ldr	r3, [pc, #48]	; (3a0 <alloc+0x3c>)
     36e:	681a      	ldr	r2, [r3, #0]
     370:	687b      	ldr	r3, [r7, #4]
     372:	441a      	add	r2, r3
     374:	4b0b      	ldr	r3, [pc, #44]	; (3a4 <alloc+0x40>)
     376:	681b      	ldr	r3, [r3, #0]
     378:	429a      	cmp	r2, r3
     37a:	d901      	bls.n	380 <alloc+0x1c>
     37c:	2300      	movs	r3, #0
     37e:	e009      	b.n	394 <alloc+0x30>
     380:	4b07      	ldr	r3, [pc, #28]	; (3a0 <alloc+0x3c>)
     382:	681b      	ldr	r3, [r3, #0]
     384:	60fb      	str	r3, [r7, #12]
     386:	4b06      	ldr	r3, [pc, #24]	; (3a0 <alloc+0x3c>)
     388:	681a      	ldr	r2, [r3, #0]
     38a:	687b      	ldr	r3, [r7, #4]
     38c:	4413      	add	r3, r2
     38e:	4a04      	ldr	r2, [pc, #16]	; (3a0 <alloc+0x3c>)
     390:	6013      	str	r3, [r2, #0]
     392:	68fb      	ldr	r3, [r7, #12]
     394:	4618      	mov	r0, r3
     396:	3714      	adds	r7, #20
     398:	46bd      	mov	sp, r7
     39a:	bc80      	pop	{r7}
     39c:	4770      	bx	lr
     39e:	bf00      	nop
     3a0:	200004d0 	.word	0x200004d0
     3a4:	20000004 	.word	0x20000004

000003a8 <free>:
     3a8:	b480      	push	{r7}
     3aa:	b083      	sub	sp, #12
     3ac:	af00      	add	r7, sp, #0
     3ae:	6078      	str	r0, [r7, #4]
     3b0:	4a03      	ldr	r2, [pc, #12]	; (3c0 <free+0x18>)
     3b2:	687b      	ldr	r3, [r7, #4]
     3b4:	6013      	str	r3, [r2, #0]
     3b6:	bf00      	nop
     3b8:	370c      	adds	r7, #12
     3ba:	46bd      	mov	sp, r7
     3bc:	bc80      	pop	{r7}
     3be:	4770      	bx	lr
     3c0:	200004d0 	.word	0x200004d0

000003c4 <free_heap>:
     3c4:	b480      	push	{r7}
     3c6:	af00      	add	r7, sp, #0
     3c8:	4b04      	ldr	r3, [pc, #16]	; (3dc <free_heap+0x18>)
     3ca:	681b      	ldr	r3, [r3, #0]
     3cc:	461a      	mov	r2, r3
     3ce:	4b04      	ldr	r3, [pc, #16]	; (3e0 <free_heap+0x1c>)
     3d0:	681b      	ldr	r3, [r3, #0]
     3d2:	1ad3      	subs	r3, r2, r3
     3d4:	4618      	mov	r0, r3
     3d6:	46bd      	mov	sp, r7
     3d8:	bc80      	pop	{r7}
     3da:	4770      	bx	lr
     3dc:	20000004 	.word	0x20000004
     3e0:	200004d0 	.word	0x200004d0

000003e4 <reset_heap>:
     3e4:	b480      	push	{r7}
     3e6:	af00      	add	r7, sp, #0
     3e8:	4b03      	ldr	r3, [pc, #12]	; (3f8 <reset_heap+0x14>)
     3ea:	4a04      	ldr	r2, [pc, #16]	; (3fc <reset_heap+0x18>)
     3ec:	601a      	str	r2, [r3, #0]
     3ee:	bf00      	nop
     3f0:	4618      	mov	r0, r3
     3f2:	46bd      	mov	sp, r7
     3f4:	bc80      	pop	{r7}
     3f6:	4770      	bx	lr
     3f8:	200004d0 	.word	0x200004d0
     3fc:	20000a00 	.word	0x20000a00

00000400 <bkp_read_register>:
     400:	b480      	push	{r7}
     402:	b083      	sub	sp, #12
     404:	af00      	add	r7, sp, #0
     406:	6078      	str	r0, [r7, #4]
     408:	480a      	ldr	r0, [pc, #40]	; (434 <bkp_read_register+0x34>)
     40a:	6879      	ldr	r1, [r7, #4]
     40c:	4b0a      	ldr	r3, [pc, #40]	; (438 <bkp_read_register+0x38>)
     40e:	fb83 2301 	smull	r2, r3, r3, r1
     412:	109a      	asrs	r2, r3, #2
     414:	17cb      	asrs	r3, r1, #31
     416:	1ad2      	subs	r2, r2, r3
     418:	4613      	mov	r3, r2
     41a:	009b      	lsls	r3, r3, #2
     41c:	4413      	add	r3, r2
     41e:	005b      	lsls	r3, r3, #1
     420:	1aca      	subs	r2, r1, r3
     422:	0093      	lsls	r3, r2, #2
     424:	4403      	add	r3, r0
     426:	685b      	ldr	r3, [r3, #4]
     428:	b29b      	uxth	r3, r3
     42a:	4618      	mov	r0, r3
     42c:	370c      	adds	r7, #12
     42e:	46bd      	mov	sp, r7
     430:	bc80      	pop	{r7}
     432:	4770      	bx	lr
     434:	40006c00 	.word	0x40006c00
     438:	66666667 	.word	0x66666667

0000043c <bkp_write_register>:
     43c:	b480      	push	{r7}
     43e:	b083      	sub	sp, #12
     440:	af00      	add	r7, sp, #0
     442:	6078      	str	r0, [r7, #4]
     444:	460b      	mov	r3, r1
     446:	807b      	strh	r3, [r7, #2]
     448:	4a1d      	ldr	r2, [pc, #116]	; (4c0 <bkp_write_register+0x84>)
     44a:	4b1d      	ldr	r3, [pc, #116]	; (4c0 <bkp_write_register+0x84>)
     44c:	69db      	ldr	r3, [r3, #28]
     44e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
     452:	61d3      	str	r3, [r2, #28]
     454:	4a1b      	ldr	r2, [pc, #108]	; (4c4 <bkp_write_register+0x88>)
     456:	4b1b      	ldr	r3, [pc, #108]	; (4c4 <bkp_write_register+0x88>)
     458:	681b      	ldr	r3, [r3, #0]
     45a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     45e:	6013      	str	r3, [r2, #0]
     460:	4a19      	ldr	r2, [pc, #100]	; (4c8 <bkp_write_register+0x8c>)
     462:	4b19      	ldr	r3, [pc, #100]	; (4c8 <bkp_write_register+0x8c>)
     464:	685b      	ldr	r3, [r3, #4]
     466:	f043 0310 	orr.w	r3, r3, #16
     46a:	6053      	str	r3, [r2, #4]
     46c:	4817      	ldr	r0, [pc, #92]	; (4cc <bkp_write_register+0x90>)
     46e:	6879      	ldr	r1, [r7, #4]
     470:	4b17      	ldr	r3, [pc, #92]	; (4d0 <bkp_write_register+0x94>)
     472:	fb83 2301 	smull	r2, r3, r3, r1
     476:	109a      	asrs	r2, r3, #2
     478:	17cb      	asrs	r3, r1, #31
     47a:	1ad2      	subs	r2, r2, r3
     47c:	4613      	mov	r3, r2
     47e:	009b      	lsls	r3, r3, #2
     480:	4413      	add	r3, r2
     482:	005b      	lsls	r3, r3, #1
     484:	1aca      	subs	r2, r1, r3
     486:	8879      	ldrh	r1, [r7, #2]
     488:	0093      	lsls	r3, r2, #2
     48a:	4403      	add	r3, r0
     48c:	6059      	str	r1, [r3, #4]
     48e:	4a0e      	ldr	r2, [pc, #56]	; (4c8 <bkp_write_register+0x8c>)
     490:	4b0d      	ldr	r3, [pc, #52]	; (4c8 <bkp_write_register+0x8c>)
     492:	685b      	ldr	r3, [r3, #4]
     494:	f023 0310 	bic.w	r3, r3, #16
     498:	6053      	str	r3, [r2, #4]
     49a:	bf00      	nop
     49c:	4b0a      	ldr	r3, [pc, #40]	; (4c8 <bkp_write_register+0x8c>)
     49e:	685b      	ldr	r3, [r3, #4]
     4a0:	f003 0320 	and.w	r3, r3, #32
     4a4:	2b00      	cmp	r3, #0
     4a6:	d0f9      	beq.n	49c <bkp_write_register+0x60>
     4a8:	4a06      	ldr	r2, [pc, #24]	; (4c4 <bkp_write_register+0x88>)
     4aa:	4b06      	ldr	r3, [pc, #24]	; (4c4 <bkp_write_register+0x88>)
     4ac:	681b      	ldr	r3, [r3, #0]
     4ae:	f423 7380 	bic.w	r3, r3, #256	; 0x100
     4b2:	6013      	str	r3, [r2, #0]
     4b4:	bf00      	nop
     4b6:	370c      	adds	r7, #12
     4b8:	46bd      	mov	sp, r7
     4ba:	bc80      	pop	{r7}
     4bc:	4770      	bx	lr
     4be:	bf00      	nop
     4c0:	40021000 	.word	0x40021000
     4c4:	40007000 	.word	0x40007000
     4c8:	40002800 	.word	0x40002800
     4cc:	40006c00 	.word	0x40006c00
     4d0:	66666667 	.word	0x66666667

000004d4 <cursor_home>:
     4d4:	b480      	push	{r7}
     4d6:	af00      	add	r7, sp, #0
     4d8:	4b04      	ldr	r3, [pc, #16]	; (4ec <cursor_home+0x18>)
     4da:	2200      	movs	r2, #0
     4dc:	601a      	str	r2, [r3, #0]
     4de:	4b04      	ldr	r3, [pc, #16]	; (4f0 <cursor_home+0x1c>)
     4e0:	2200      	movs	r2, #0
     4e2:	601a      	str	r2, [r3, #0]
     4e4:	bf00      	nop
     4e6:	46bd      	mov	sp, r7
     4e8:	bc80      	pop	{r7}
     4ea:	4770      	bx	lr
     4ec:	2000005c 	.word	0x2000005c
     4f0:	20000060 	.word	0x20000060

000004f4 <serial_cursor_crlf>:
     4f4:	b480      	push	{r7}
     4f6:	af00      	add	r7, sp, #0
     4f8:	4b09      	ldr	r3, [pc, #36]	; (520 <serial_cursor_crlf+0x2c>)
     4fa:	2200      	movs	r2, #0
     4fc:	601a      	str	r2, [r3, #0]
     4fe:	4b09      	ldr	r3, [pc, #36]	; (524 <serial_cursor_crlf+0x30>)
     500:	681b      	ldr	r3, [r3, #0]
     502:	1e5a      	subs	r2, r3, #1
     504:	4b08      	ldr	r3, [pc, #32]	; (528 <serial_cursor_crlf+0x34>)
     506:	681b      	ldr	r3, [r3, #0]
     508:	429a      	cmp	r2, r3
     50a:	dd04      	ble.n	516 <serial_cursor_crlf+0x22>
     50c:	4b06      	ldr	r3, [pc, #24]	; (528 <serial_cursor_crlf+0x34>)
     50e:	681b      	ldr	r3, [r3, #0]
     510:	3301      	adds	r3, #1
     512:	4a05      	ldr	r2, [pc, #20]	; (528 <serial_cursor_crlf+0x34>)
     514:	6013      	str	r3, [r2, #0]
     516:	bf00      	nop
     518:	46bd      	mov	sp, r7
     51a:	bc80      	pop	{r7}
     51c:	4770      	bx	lr
     51e:	bf00      	nop
     520:	2000005c 	.word	0x2000005c
     524:	20000068 	.word	0x20000068
     528:	20000060 	.word	0x20000060

0000052c <serial_cursor_left>:
     52c:	b480      	push	{r7}
     52e:	af00      	add	r7, sp, #0
     530:	4b0d      	ldr	r3, [pc, #52]	; (568 <serial_cursor_left+0x3c>)
     532:	681b      	ldr	r3, [r3, #0]
     534:	2b00      	cmp	r3, #0
     536:	d005      	beq.n	544 <serial_cursor_left+0x18>
     538:	4b0b      	ldr	r3, [pc, #44]	; (568 <serial_cursor_left+0x3c>)
     53a:	681b      	ldr	r3, [r3, #0]
     53c:	3b01      	subs	r3, #1
     53e:	4a0a      	ldr	r2, [pc, #40]	; (568 <serial_cursor_left+0x3c>)
     540:	6013      	str	r3, [r2, #0]
     542:	e00d      	b.n	560 <serial_cursor_left+0x34>
     544:	4b09      	ldr	r3, [pc, #36]	; (56c <serial_cursor_left+0x40>)
     546:	681b      	ldr	r3, [r3, #0]
     548:	2b00      	cmp	r3, #0
     54a:	d009      	beq.n	560 <serial_cursor_left+0x34>
     54c:	4b08      	ldr	r3, [pc, #32]	; (570 <serial_cursor_left+0x44>)
     54e:	681b      	ldr	r3, [r3, #0]
     550:	3b01      	subs	r3, #1
     552:	4a05      	ldr	r2, [pc, #20]	; (568 <serial_cursor_left+0x3c>)
     554:	6013      	str	r3, [r2, #0]
     556:	4b05      	ldr	r3, [pc, #20]	; (56c <serial_cursor_left+0x40>)
     558:	681b      	ldr	r3, [r3, #0]
     55a:	3b01      	subs	r3, #1
     55c:	4a03      	ldr	r2, [pc, #12]	; (56c <serial_cursor_left+0x40>)
     55e:	6013      	str	r3, [r2, #0]
     560:	bf00      	nop
     562:	46bd      	mov	sp, r7
     564:	bc80      	pop	{r7}
     566:	4770      	bx	lr
     568:	2000005c 	.word	0x2000005c
     56c:	20000060 	.word	0x20000060
     570:	20000064 	.word	0x20000064

00000574 <serial_cursor_right>:
     574:	b580      	push	{r7, lr}
     576:	af00      	add	r7, sp, #0
     578:	4b07      	ldr	r3, [pc, #28]	; (598 <serial_cursor_right+0x24>)
     57a:	681b      	ldr	r3, [r3, #0]
     57c:	3301      	adds	r3, #1
     57e:	4a06      	ldr	r2, [pc, #24]	; (598 <serial_cursor_right+0x24>)
     580:	6013      	str	r3, [r2, #0]
     582:	4b05      	ldr	r3, [pc, #20]	; (598 <serial_cursor_right+0x24>)
     584:	681a      	ldr	r2, [r3, #0]
     586:	4b05      	ldr	r3, [pc, #20]	; (59c <serial_cursor_right+0x28>)
     588:	681b      	ldr	r3, [r3, #0]
     58a:	429a      	cmp	r2, r3
     58c:	db01      	blt.n	592 <serial_cursor_right+0x1e>
     58e:	f7ff ffb1 	bl	4f4 <serial_cursor_crlf>
     592:	bf00      	nop
     594:	bd80      	pop	{r7, pc}
     596:	bf00      	nop
     598:	2000005c 	.word	0x2000005c
     59c:	20000064 	.word	0x20000064

000005a0 <serial_putc>:
     5a0:	b580      	push	{r7, lr}
     5a2:	b082      	sub	sp, #8
     5a4:	af00      	add	r7, sp, #0
     5a6:	4603      	mov	r3, r0
     5a8:	71fb      	strb	r3, [r7, #7]
     5aa:	79fb      	ldrb	r3, [r7, #7]
     5ac:	4618      	mov	r0, r3
     5ae:	f002 fcab 	bl	2f08 <vt_putc>
     5b2:	f7ff ffdf 	bl	574 <serial_cursor_right>
     5b6:	bf00      	nop
     5b8:	3708      	adds	r7, #8
     5ba:	46bd      	mov	sp, r7
     5bc:	bd80      	pop	{r7, pc}

000005be <serial_crlf>:
     5be:	b580      	push	{r7, lr}
     5c0:	af00      	add	r7, sp, #0
     5c2:	200d      	movs	r0, #13
     5c4:	f002 fca0 	bl	2f08 <vt_putc>
     5c8:	f7ff ff94 	bl	4f4 <serial_cursor_crlf>
     5cc:	bf00      	nop
     5ce:	bd80      	pop	{r7, pc}

000005d0 <serial_clear_line>:
     5d0:	b580      	push	{r7, lr}
     5d2:	af00      	add	r7, sp, #0
     5d4:	4b03      	ldr	r3, [pc, #12]	; (5e4 <serial_clear_line+0x14>)
     5d6:	681b      	ldr	r3, [r3, #0]
     5d8:	3301      	adds	r3, #1
     5da:	4618      	mov	r0, r3
     5dc:	f002 fcd4 	bl	2f88 <vt_clear_line>
     5e0:	bf00      	nop
     5e2:	bd80      	pop	{r7, pc}
     5e4:	20000060 	.word	0x20000060

000005e8 <serial_clear_screen>:
     5e8:	b580      	push	{r7, lr}
     5ea:	af00      	add	r7, sp, #0
     5ec:	f002 fcbc 	bl	2f68 <vt_cls>
     5f0:	f7ff ff70 	bl	4d4 <cursor_home>
     5f4:	bf00      	nop
     5f6:	bd80      	pop	{r7, pc}

000005f8 <serial_flow_ctrl>:
     5f8:	b580      	push	{r7, lr}
     5fa:	b082      	sub	sp, #8
     5fc:	af00      	add	r7, sp, #0
     5fe:	6078      	str	r0, [r7, #4]
     600:	6878      	ldr	r0, [r7, #4]
     602:	f002 fd2b 	bl	305c <vt_flow_ctrl>
     606:	bf00      	nop
     608:	3708      	adds	r7, #8
     60a:	46bd      	mov	sp, r7
     60c:	bd80      	pop	{r7, pc}

0000060e <queue_insert>:
     60e:	b580      	push	{r7, lr}
     610:	b084      	sub	sp, #16
     612:	af00      	add	r7, sp, #0
     614:	4603      	mov	r3, r0
     616:	71fb      	strb	r3, [r7, #7]
     618:	4b16      	ldr	r3, [pc, #88]	; (674 <queue_insert+0x66>)
     61a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     61c:	1c5a      	adds	r2, r3, #1
     61e:	4915      	ldr	r1, [pc, #84]	; (674 <queue_insert+0x66>)
     620:	624a      	str	r2, [r1, #36]	; 0x24
     622:	4a14      	ldr	r2, [pc, #80]	; (674 <queue_insert+0x66>)
     624:	4413      	add	r3, r2
     626:	79fa      	ldrb	r2, [r7, #7]
     628:	705a      	strb	r2, [r3, #1]
     62a:	4b12      	ldr	r3, [pc, #72]	; (674 <queue_insert+0x66>)
     62c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     62e:	f003 031f 	and.w	r3, r3, #31
     632:	4a10      	ldr	r2, [pc, #64]	; (674 <queue_insert+0x66>)
     634:	6253      	str	r3, [r2, #36]	; 0x24
     636:	4b0f      	ldr	r3, [pc, #60]	; (674 <queue_insert+0x66>)
     638:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     63a:	4b0e      	ldr	r3, [pc, #56]	; (674 <queue_insert+0x66>)
     63c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     63e:	429a      	cmp	r2, r3
     640:	d906      	bls.n	650 <queue_insert+0x42>
     642:	4b0c      	ldr	r3, [pc, #48]	; (674 <queue_insert+0x66>)
     644:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     646:	4b0b      	ldr	r3, [pc, #44]	; (674 <queue_insert+0x66>)
     648:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     64a:	1ad3      	subs	r3, r2, r3
     64c:	60fb      	str	r3, [r7, #12]
     64e:	e006      	b.n	65e <queue_insert+0x50>
     650:	4b08      	ldr	r3, [pc, #32]	; (674 <queue_insert+0x66>)
     652:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     654:	4b07      	ldr	r3, [pc, #28]	; (674 <queue_insert+0x66>)
     656:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     658:	1ad3      	subs	r3, r2, r3
     65a:	3320      	adds	r3, #32
     65c:	60fb      	str	r3, [r7, #12]
     65e:	68fb      	ldr	r3, [r7, #12]
     660:	2b10      	cmp	r3, #16
     662:	d903      	bls.n	66c <queue_insert+0x5e>
     664:	4b03      	ldr	r3, [pc, #12]	; (674 <queue_insert+0x66>)
     666:	6c9b      	ldr	r3, [r3, #72]	; 0x48
     668:	2000      	movs	r0, #0
     66a:	4798      	blx	r3
     66c:	bf00      	nop
     66e:	3710      	adds	r7, #16
     670:	46bd      	mov	sp, r7
     672:	bd80      	pop	{r7, pc}
     674:	20000480 	.word	0x20000480

00000678 <queue_getc>:
     678:	b580      	push	{r7, lr}
     67a:	b082      	sub	sp, #8
     67c:	af00      	add	r7, sp, #0
     67e:	2026      	movs	r0, #38	; 0x26
     680:	f001 f8b0 	bl	17e4 <get_active>
     684:	4603      	mov	r3, r0
     686:	2b00      	cmp	r3, #0
     688:	d109      	bne.n	69e <queue_getc+0x26>
     68a:	4b12      	ldr	r3, [pc, #72]	; (6d4 <queue_getc+0x5c>)
     68c:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     68e:	4b11      	ldr	r3, [pc, #68]	; (6d4 <queue_getc+0x5c>)
     690:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     692:	429a      	cmp	r2, r3
     694:	d103      	bne.n	69e <queue_getc+0x26>
     696:	4b0f      	ldr	r3, [pc, #60]	; (6d4 <queue_getc+0x5c>)
     698:	6c9b      	ldr	r3, [r3, #72]	; 0x48
     69a:	2001      	movs	r0, #1
     69c:	4798      	blx	r3
     69e:	bf00      	nop
     6a0:	4b0c      	ldr	r3, [pc, #48]	; (6d4 <queue_getc+0x5c>)
     6a2:	6a5a      	ldr	r2, [r3, #36]	; 0x24
     6a4:	4b0b      	ldr	r3, [pc, #44]	; (6d4 <queue_getc+0x5c>)
     6a6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     6a8:	429a      	cmp	r2, r3
     6aa:	d0f9      	beq.n	6a0 <queue_getc+0x28>
     6ac:	4b09      	ldr	r3, [pc, #36]	; (6d4 <queue_getc+0x5c>)
     6ae:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     6b0:	1c5a      	adds	r2, r3, #1
     6b2:	4908      	ldr	r1, [pc, #32]	; (6d4 <queue_getc+0x5c>)
     6b4:	628a      	str	r2, [r1, #40]	; 0x28
     6b6:	4a07      	ldr	r2, [pc, #28]	; (6d4 <queue_getc+0x5c>)
     6b8:	4413      	add	r3, r2
     6ba:	785b      	ldrb	r3, [r3, #1]
     6bc:	71fb      	strb	r3, [r7, #7]
     6be:	4b05      	ldr	r3, [pc, #20]	; (6d4 <queue_getc+0x5c>)
     6c0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
     6c2:	f003 031f 	and.w	r3, r3, #31
     6c6:	4a03      	ldr	r2, [pc, #12]	; (6d4 <queue_getc+0x5c>)
     6c8:	6293      	str	r3, [r2, #40]	; 0x28
     6ca:	79fb      	ldrb	r3, [r7, #7]
     6cc:	4618      	mov	r0, r3
     6ce:	3708      	adds	r7, #8
     6d0:	46bd      	mov	sp, r7
     6d2:	bd80      	pop	{r7, pc}
     6d4:	20000480 	.word	0x20000480

000006d8 <con_queue_flush>:
     6d8:	b480      	push	{r7}
     6da:	af00      	add	r7, sp, #0
     6dc:	2300      	movs	r3, #0
     6de:	4a04      	ldr	r2, [pc, #16]	; (6f0 <con_queue_flush+0x18>)
     6e0:	6253      	str	r3, [r2, #36]	; 0x24
     6e2:	4a03      	ldr	r2, [pc, #12]	; (6f0 <con_queue_flush+0x18>)
     6e4:	6293      	str	r3, [r2, #40]	; 0x28
     6e6:	bf00      	nop
     6e8:	46bd      	mov	sp, r7
     6ea:	bc80      	pop	{r7}
     6ec:	4770      	bx	lr
     6ee:	bf00      	nop
     6f0:	20000480 	.word	0x20000480

000006f4 <con_select>:
     6f4:	b580      	push	{r7, lr}
     6f6:	b082      	sub	sp, #8
     6f8:	af00      	add	r7, sp, #0
     6fa:	4603      	mov	r3, r0
     6fc:	71fb      	strb	r3, [r7, #7]
     6fe:	2026      	movs	r0, #38	; 0x26
     700:	f001 f836 	bl	1770 <disable_interrupt>
     704:	f7ff ffe8 	bl	6d8 <con_queue_flush>
     708:	4a12      	ldr	r2, [pc, #72]	; (754 <con_select+0x60>)
     70a:	79fb      	ldrb	r3, [r7, #7]
     70c:	7013      	strb	r3, [r2, #0]
     70e:	f7ff fee1 	bl	4d4 <cursor_home>
     712:	4b11      	ldr	r3, [pc, #68]	; (758 <con_select+0x64>)
     714:	2250      	movs	r2, #80	; 0x50
     716:	601a      	str	r2, [r3, #0]
     718:	4b10      	ldr	r3, [pc, #64]	; (75c <con_select+0x68>)
     71a:	2218      	movs	r2, #24
     71c:	601a      	str	r2, [r3, #0]
     71e:	4b0d      	ldr	r3, [pc, #52]	; (754 <con_select+0x60>)
     720:	4a0f      	ldr	r2, [pc, #60]	; (760 <con_select+0x6c>)
     722:	635a      	str	r2, [r3, #52]	; 0x34
     724:	4b0b      	ldr	r3, [pc, #44]	; (754 <con_select+0x60>)
     726:	4a0f      	ldr	r2, [pc, #60]	; (764 <con_select+0x70>)
     728:	63da      	str	r2, [r3, #60]	; 0x3c
     72a:	4b0a      	ldr	r3, [pc, #40]	; (754 <con_select+0x60>)
     72c:	4a0e      	ldr	r2, [pc, #56]	; (768 <con_select+0x74>)
     72e:	639a      	str	r2, [r3, #56]	; 0x38
     730:	4b08      	ldr	r3, [pc, #32]	; (754 <con_select+0x60>)
     732:	4a0e      	ldr	r2, [pc, #56]	; (76c <con_select+0x78>)
     734:	641a      	str	r2, [r3, #64]	; 0x40
     736:	4b07      	ldr	r3, [pc, #28]	; (754 <con_select+0x60>)
     738:	4a0d      	ldr	r2, [pc, #52]	; (770 <con_select+0x7c>)
     73a:	645a      	str	r2, [r3, #68]	; 0x44
     73c:	4b05      	ldr	r3, [pc, #20]	; (754 <con_select+0x60>)
     73e:	4a0d      	ldr	r2, [pc, #52]	; (774 <con_select+0x80>)
     740:	649a      	str	r2, [r3, #72]	; 0x48
     742:	2026      	movs	r0, #38	; 0x26
     744:	f000 fff0 	bl	1728 <enable_interrupt>
     748:	f000 fac8 	bl	cdc <cls>
     74c:	bf00      	nop
     74e:	3708      	adds	r7, #8
     750:	46bd      	mov	sp, r7
     752:	bd80      	pop	{r7, pc}
     754:	20000480 	.word	0x20000480
     758:	20000064 	.word	0x20000064
     75c:	20000068 	.word	0x20000068
     760:	000005a1 	.word	0x000005a1
     764:	000005e9 	.word	0x000005e9
     768:	00002f29 	.word	0x00002f29
     76c:	000005d1 	.word	0x000005d1
     770:	000005bf 	.word	0x000005bf
     774:	000005f9 	.word	0x000005f9

00000778 <console_init>:
     778:	b580      	push	{r7, lr}
     77a:	b082      	sub	sp, #8
     77c:	af00      	add	r7, sp, #0
     77e:	4603      	mov	r3, r0
     780:	71fb      	strb	r3, [r7, #7]
     782:	4b07      	ldr	r3, [pc, #28]	; (7a0 <console_init+0x28>)
     784:	4a07      	ldr	r2, [pc, #28]	; (7a4 <console_init+0x2c>)
     786:	631a      	str	r2, [r3, #48]	; 0x30
     788:	4b05      	ldr	r3, [pc, #20]	; (7a0 <console_init+0x28>)
     78a:	4a07      	ldr	r2, [pc, #28]	; (7a8 <console_init+0x30>)
     78c:	62da      	str	r2, [r3, #44]	; 0x2c
     78e:	79fb      	ldrb	r3, [r7, #7]
     790:	4618      	mov	r0, r3
     792:	f7ff ffaf 	bl	6f4 <con_select>
     796:	bf00      	nop
     798:	3708      	adds	r7, #8
     79a:	46bd      	mov	sp, r7
     79c:	bd80      	pop	{r7, pc}
     79e:	bf00      	nop
     7a0:	20000480 	.word	0x20000480
     7a4:	00000679 	.word	0x00000679
     7a8:	0000060f 	.word	0x0000060f

000007ac <constat>:
     7ac:	b480      	push	{r7}
     7ae:	af00      	add	r7, sp, #0
     7b0:	4b06      	ldr	r3, [pc, #24]	; (7cc <constat+0x20>)
     7b2:	6a9a      	ldr	r2, [r3, #40]	; 0x28
     7b4:	4b05      	ldr	r3, [pc, #20]	; (7cc <constat+0x20>)
     7b6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     7b8:	429a      	cmp	r2, r3
     7ba:	bf14      	ite	ne
     7bc:	2301      	movne	r3, #1
     7be:	2300      	moveq	r3, #0
     7c0:	b2db      	uxtb	r3, r3
     7c2:	4618      	mov	r0, r3
     7c4:	46bd      	mov	sp, r7
     7c6:	bc80      	pop	{r7}
     7c8:	4770      	bx	lr
     7ca:	bf00      	nop
     7cc:	20000480 	.word	0x20000480

000007d0 <conout>:
     7d0:	b580      	push	{r7, lr}
     7d2:	b082      	sub	sp, #8
     7d4:	af00      	add	r7, sp, #0
     7d6:	4603      	mov	r3, r0
     7d8:	71fb      	strb	r3, [r7, #7]
     7da:	79fb      	ldrb	r3, [r7, #7]
     7dc:	3b08      	subs	r3, #8
     7de:	2b05      	cmp	r3, #5
     7e0:	d839      	bhi.n	856 <conout+0x86>
     7e2:	a201      	add	r2, pc, #4	; (adr r2, 7e8 <conout+0x18>)
     7e4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     7e8:	0000083d 	.word	0x0000083d
     7ec:	00000809 	.word	0x00000809
     7f0:	00000801 	.word	0x00000801
     7f4:	00000857 	.word	0x00000857
     7f8:	00000857 	.word	0x00000857
     7fc:	00000801 	.word	0x00000801
     800:	4b1b      	ldr	r3, [pc, #108]	; (870 <conout+0xa0>)
     802:	6c5b      	ldr	r3, [r3, #68]	; 0x44
     804:	4798      	blx	r3
     806:	e02f      	b.n	868 <conout+0x98>
     808:	4b19      	ldr	r3, [pc, #100]	; (870 <conout+0xa0>)
     80a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     80c:	2020      	movs	r0, #32
     80e:	4798      	blx	r3
     810:	4b18      	ldr	r3, [pc, #96]	; (874 <conout+0xa4>)
     812:	681b      	ldr	r3, [r3, #0]
     814:	2b00      	cmp	r3, #0
     816:	d024      	beq.n	862 <conout+0x92>
     818:	e003      	b.n	822 <conout+0x52>
     81a:	4b15      	ldr	r3, [pc, #84]	; (870 <conout+0xa0>)
     81c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     81e:	2020      	movs	r0, #32
     820:	4798      	blx	r3
     822:	4b14      	ldr	r3, [pc, #80]	; (874 <conout+0xa4>)
     824:	681b      	ldr	r3, [r3, #0]
     826:	461a      	mov	r2, r3
     828:	4b13      	ldr	r3, [pc, #76]	; (878 <conout+0xa8>)
     82a:	681b      	ldr	r3, [r3, #0]
     82c:	fbb2 f1f3 	udiv	r1, r2, r3
     830:	fb03 f301 	mul.w	r3, r3, r1
     834:	1ad3      	subs	r3, r2, r3
     836:	2b00      	cmp	r3, #0
     838:	d1ef      	bne.n	81a <conout+0x4a>
     83a:	e015      	b.n	868 <conout+0x98>
     83c:	4b0d      	ldr	r3, [pc, #52]	; (874 <conout+0xa4>)
     83e:	681b      	ldr	r3, [r3, #0]
     840:	2b00      	cmp	r3, #0
     842:	d010      	beq.n	866 <conout+0x96>
     844:	4b0a      	ldr	r3, [pc, #40]	; (870 <conout+0xa0>)
     846:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     848:	4798      	blx	r3
     84a:	4b0a      	ldr	r3, [pc, #40]	; (874 <conout+0xa4>)
     84c:	681b      	ldr	r3, [r3, #0]
     84e:	3b01      	subs	r3, #1
     850:	4a08      	ldr	r2, [pc, #32]	; (874 <conout+0xa4>)
     852:	6013      	str	r3, [r2, #0]
     854:	e007      	b.n	866 <conout+0x96>
     856:	4b06      	ldr	r3, [pc, #24]	; (870 <conout+0xa0>)
     858:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     85a:	79fa      	ldrb	r2, [r7, #7]
     85c:	4610      	mov	r0, r2
     85e:	4798      	blx	r3
     860:	e002      	b.n	868 <conout+0x98>
     862:	bf00      	nop
     864:	e000      	b.n	868 <conout+0x98>
     866:	bf00      	nop
     868:	bf00      	nop
     86a:	3708      	adds	r7, #8
     86c:	46bd      	mov	sp, r7
     86e:	bd80      	pop	{r7, pc}
     870:	20000480 	.word	0x20000480
     874:	2000005c 	.word	0x2000005c
     878:	20000000 	.word	0x20000000

0000087c <conin>:
     87c:	b580      	push	{r7, lr}
     87e:	af00      	add	r7, sp, #0
     880:	4b02      	ldr	r3, [pc, #8]	; (88c <conin+0x10>)
     882:	6b1b      	ldr	r3, [r3, #48]	; 0x30
     884:	4798      	blx	r3
     886:	4603      	mov	r3, r0
     888:	4618      	mov	r0, r3
     88a:	bd80      	pop	{r7, pc}
     88c:	20000480 	.word	0x20000480

00000890 <print>:
     890:	b580      	push	{r7, lr}
     892:	b082      	sub	sp, #8
     894:	af00      	add	r7, sp, #0
     896:	6078      	str	r0, [r7, #4]
     898:	e006      	b.n	8a8 <print+0x18>
     89a:	687b      	ldr	r3, [r7, #4]
     89c:	1c5a      	adds	r2, r3, #1
     89e:	607a      	str	r2, [r7, #4]
     8a0:	781b      	ldrb	r3, [r3, #0]
     8a2:	4618      	mov	r0, r3
     8a4:	f7ff ff94 	bl	7d0 <conout>
     8a8:	687b      	ldr	r3, [r7, #4]
     8aa:	781b      	ldrb	r3, [r3, #0]
     8ac:	2b00      	cmp	r3, #0
     8ae:	d1f4      	bne.n	89a <print+0xa>
     8b0:	bf00      	nop
     8b2:	3708      	adds	r7, #8
     8b4:	46bd      	mov	sp, r7
     8b6:	bd80      	pop	{r7, pc}

000008b8 <println>:
     8b8:	b580      	push	{r7, lr}
     8ba:	b082      	sub	sp, #8
     8bc:	af00      	add	r7, sp, #0
     8be:	6078      	str	r0, [r7, #4]
     8c0:	e006      	b.n	8d0 <println+0x18>
     8c2:	687b      	ldr	r3, [r7, #4]
     8c4:	1c5a      	adds	r2, r3, #1
     8c6:	607a      	str	r2, [r7, #4]
     8c8:	781b      	ldrb	r3, [r3, #0]
     8ca:	4618      	mov	r0, r3
     8cc:	f7ff ff80 	bl	7d0 <conout>
     8d0:	687b      	ldr	r3, [r7, #4]
     8d2:	781b      	ldrb	r3, [r3, #0]
     8d4:	2b00      	cmp	r3, #0
     8d6:	d1f4      	bne.n	8c2 <println+0xa>
     8d8:	200d      	movs	r0, #13
     8da:	f7ff ff79 	bl	7d0 <conout>
     8de:	bf00      	nop
     8e0:	3708      	adds	r7, #8
     8e2:	46bd      	mov	sp, r7
     8e4:	bd80      	pop	{r7, pc}

000008e6 <delete_back>:
     8e6:	b580      	push	{r7, lr}
     8e8:	af00      	add	r7, sp, #0
     8ea:	4b02      	ldr	r3, [pc, #8]	; (8f4 <delete_back+0xe>)
     8ec:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     8ee:	4798      	blx	r3
     8f0:	bf00      	nop
     8f2:	bd80      	pop	{r7, pc}
     8f4:	20000480 	.word	0x20000480

000008f8 <delete_nchar>:
     8f8:	b580      	push	{r7, lr}
     8fa:	b082      	sub	sp, #8
     8fc:	af00      	add	r7, sp, #0
     8fe:	6078      	str	r0, [r7, #4]
     900:	e005      	b.n	90e <delete_nchar+0x16>
     902:	4b06      	ldr	r3, [pc, #24]	; (91c <delete_nchar+0x24>)
     904:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     906:	4798      	blx	r3
     908:	687b      	ldr	r3, [r7, #4]
     90a:	3b01      	subs	r3, #1
     90c:	607b      	str	r3, [r7, #4]
     90e:	687b      	ldr	r3, [r7, #4]
     910:	2b00      	cmp	r3, #0
     912:	d1f6      	bne.n	902 <delete_nchar+0xa>
     914:	bf00      	nop
     916:	3708      	adds	r7, #8
     918:	46bd      	mov	sp, r7
     91a:	bd80      	pop	{r7, pc}
     91c:	20000480 	.word	0x20000480

00000920 <beep>:
     920:	b480      	push	{r7}
     922:	af00      	add	r7, sp, #0
     924:	bf00      	nop
     926:	46bd      	mov	sp, r7
     928:	bc80      	pop	{r7}
     92a:	4770      	bx	lr

0000092c <read_line>:
     92c:	b580      	push	{r7, lr}
     92e:	b086      	sub	sp, #24
     930:	af00      	add	r7, sp, #0
     932:	6078      	str	r0, [r7, #4]
     934:	6039      	str	r1, [r7, #0]
     936:	2300      	movs	r3, #0
     938:	617b      	str	r3, [r7, #20]
     93a:	2300      	movs	r3, #0
     93c:	74fb      	strb	r3, [r7, #19]
     93e:	6838      	ldr	r0, [r7, #0]
     940:	f7ff fd10 	bl	364 <alloc>
     944:	60f8      	str	r0, [r7, #12]
     946:	683b      	ldr	r3, [r7, #0]
     948:	3b01      	subs	r3, #1
     94a:	603b      	str	r3, [r7, #0]
     94c:	4b6c      	ldr	r3, [pc, #432]	; (b00 <read_line+0x1d4>)
     94e:	681a      	ldr	r2, [r3, #0]
     950:	4b6c      	ldr	r3, [pc, #432]	; (b04 <read_line+0x1d8>)
     952:	681b      	ldr	r3, [r3, #0]
     954:	1ad3      	subs	r3, r2, r3
     956:	3b01      	subs	r3, #1
     958:	461a      	mov	r2, r3
     95a:	683b      	ldr	r3, [r7, #0]
     95c:	429a      	cmp	r2, r3
     95e:	f080 80b8 	bcs.w	ad2 <read_line+0x1a6>
     962:	4b67      	ldr	r3, [pc, #412]	; (b00 <read_line+0x1d4>)
     964:	681a      	ldr	r2, [r3, #0]
     966:	4b67      	ldr	r3, [pc, #412]	; (b04 <read_line+0x1d8>)
     968:	681b      	ldr	r3, [r3, #0]
     96a:	1ad3      	subs	r3, r2, r3
     96c:	3b01      	subs	r3, #1
     96e:	603b      	str	r3, [r7, #0]
     970:	e0af      	b.n	ad2 <read_line+0x1a6>
     972:	4b65      	ldr	r3, [pc, #404]	; (b08 <read_line+0x1dc>)
     974:	6b1b      	ldr	r3, [r3, #48]	; 0x30
     976:	4798      	blx	r3
     978:	4603      	mov	r3, r0
     97a:	74fb      	strb	r3, [r7, #19]
     97c:	7cfb      	ldrb	r3, [r7, #19]
     97e:	2b18      	cmp	r3, #24
     980:	f200 8091 	bhi.w	aa6 <read_line+0x17a>
     984:	a201      	add	r2, pc, #4	; (adr r2, 98c <read_line+0x60>)
     986:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     98a:	bf00      	nop
     98c:	00000ad3 	.word	0x00000ad3
     990:	00000aa7 	.word	0x00000aa7
     994:	00000aa7 	.word	0x00000aa7
     998:	00000aa7 	.word	0x00000aa7
     99c:	00000aa7 	.word	0x00000aa7
     9a0:	00000a97 	.word	0x00000a97
     9a4:	00000aa7 	.word	0x00000aa7
     9a8:	00000aa7 	.word	0x00000aa7
     9ac:	00000a83 	.word	0x00000a83
     9b0:	00000aa3 	.word	0x00000aa3
     9b4:	000009f1 	.word	0x000009f1
     9b8:	00000aa7 	.word	0x00000aa7
     9bc:	00000aa7 	.word	0x00000aa7
     9c0:	000009f1 	.word	0x000009f1
     9c4:	00000aa7 	.word	0x00000aa7
     9c8:	00000aa7 	.word	0x00000aa7
     9cc:	00000aa7 	.word	0x00000aa7
     9d0:	00000aa7 	.word	0x00000aa7
     9d4:	000009fd 	.word	0x000009fd
     9d8:	00000aa7 	.word	0x00000aa7
     9dc:	00000aa7 	.word	0x00000aa7
     9e0:	00000a31 	.word	0x00000a31
     9e4:	00000aa7 	.word	0x00000aa7
     9e8:	00000a4b 	.word	0x00000a4b
     9ec:	00000a31 	.word	0x00000a31
     9f0:	230d      	movs	r3, #13
     9f2:	74fb      	strb	r3, [r7, #19]
     9f4:	4b44      	ldr	r3, [pc, #272]	; (b08 <read_line+0x1dc>)
     9f6:	6c5b      	ldr	r3, [r3, #68]	; 0x44
     9f8:	4798      	blx	r3
     9fa:	e06a      	b.n	ad2 <read_line+0x1a6>
     9fc:	687b      	ldr	r3, [r7, #4]
     9fe:	781b      	ldrb	r3, [r3, #0]
     a00:	2b00      	cmp	r3, #0
     a02:	d066      	beq.n	ad2 <read_line+0x1a6>
     a04:	6878      	ldr	r0, [r7, #4]
     a06:	f000 fc6e 	bl	12e6 <strlen>
     a0a:	4603      	mov	r3, r0
     a0c:	60bb      	str	r3, [r7, #8]
     a0e:	68bb      	ldr	r3, [r7, #8]
     a10:	3301      	adds	r3, #1
     a12:	461a      	mov	r2, r3
     a14:	68f9      	ldr	r1, [r7, #12]
     a16:	6878      	ldr	r0, [r7, #4]
     a18:	f000 fc4b 	bl	12b2 <move>
     a1c:	697b      	ldr	r3, [r7, #20]
     a1e:	4618      	mov	r0, r3
     a20:	f7ff ff6a 	bl	8f8 <delete_nchar>
     a24:	68f8      	ldr	r0, [r7, #12]
     a26:	f7ff ff33 	bl	890 <print>
     a2a:	68bb      	ldr	r3, [r7, #8]
     a2c:	617b      	str	r3, [r7, #20]
     a2e:	e050      	b.n	ad2 <read_line+0x1a6>
     a30:	697b      	ldr	r3, [r7, #20]
     a32:	4618      	mov	r0, r3
     a34:	f7ff ff60 	bl	8f8 <delete_nchar>
     a38:	2300      	movs	r3, #0
     a3a:	617b      	str	r3, [r7, #20]
     a3c:	e049      	b.n	ad2 <read_line+0x1a6>
     a3e:	4b32      	ldr	r3, [pc, #200]	; (b08 <read_line+0x1dc>)
     a40:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     a42:	4798      	blx	r3
     a44:	697b      	ldr	r3, [r7, #20]
     a46:	3b01      	subs	r3, #1
     a48:	617b      	str	r3, [r7, #20]
     a4a:	697b      	ldr	r3, [r7, #20]
     a4c:	2b00      	cmp	r3, #0
     a4e:	d00d      	beq.n	a6c <read_line+0x140>
     a50:	697b      	ldr	r3, [r7, #20]
     a52:	3b01      	subs	r3, #1
     a54:	68fa      	ldr	r2, [r7, #12]
     a56:	4413      	add	r3, r2
     a58:	781b      	ldrb	r3, [r3, #0]
     a5a:	2b20      	cmp	r3, #32
     a5c:	d0ef      	beq.n	a3e <read_line+0x112>
     a5e:	e005      	b.n	a6c <read_line+0x140>
     a60:	4b29      	ldr	r3, [pc, #164]	; (b08 <read_line+0x1dc>)
     a62:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     a64:	4798      	blx	r3
     a66:	697b      	ldr	r3, [r7, #20]
     a68:	3b01      	subs	r3, #1
     a6a:	617b      	str	r3, [r7, #20]
     a6c:	697b      	ldr	r3, [r7, #20]
     a6e:	2b00      	cmp	r3, #0
     a70:	d02f      	beq.n	ad2 <read_line+0x1a6>
     a72:	697b      	ldr	r3, [r7, #20]
     a74:	3b01      	subs	r3, #1
     a76:	68fa      	ldr	r2, [r7, #12]
     a78:	4413      	add	r3, r2
     a7a:	781b      	ldrb	r3, [r3, #0]
     a7c:	2b20      	cmp	r3, #32
     a7e:	d1ef      	bne.n	a60 <read_line+0x134>
     a80:	e027      	b.n	ad2 <read_line+0x1a6>
     a82:	697b      	ldr	r3, [r7, #20]
     a84:	2b00      	cmp	r3, #0
     a86:	d024      	beq.n	ad2 <read_line+0x1a6>
     a88:	4b1f      	ldr	r3, [pc, #124]	; (b08 <read_line+0x1dc>)
     a8a:	6b9b      	ldr	r3, [r3, #56]	; 0x38
     a8c:	4798      	blx	r3
     a8e:	697b      	ldr	r3, [r7, #20]
     a90:	3b01      	subs	r3, #1
     a92:	617b      	str	r3, [r7, #20]
     a94:	e01d      	b.n	ad2 <read_line+0x1a6>
     a96:	4b1c      	ldr	r3, [pc, #112]	; (b08 <read_line+0x1dc>)
     a98:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
     a9a:	4798      	blx	r3
     a9c:	2300      	movs	r3, #0
     a9e:	617b      	str	r3, [r7, #20]
     aa0:	e017      	b.n	ad2 <read_line+0x1a6>
     aa2:	2320      	movs	r3, #32
     aa4:	74fb      	strb	r3, [r7, #19]
     aa6:	697a      	ldr	r2, [r7, #20]
     aa8:	683b      	ldr	r3, [r7, #0]
     aaa:	429a      	cmp	r2, r3
     aac:	d20f      	bcs.n	ace <read_line+0x1a2>
     aae:	7cfb      	ldrb	r3, [r7, #19]
     ab0:	2b1f      	cmp	r3, #31
     ab2:	d90c      	bls.n	ace <read_line+0x1a2>
     ab4:	697b      	ldr	r3, [r7, #20]
     ab6:	1c5a      	adds	r2, r3, #1
     ab8:	617a      	str	r2, [r7, #20]
     aba:	68fa      	ldr	r2, [r7, #12]
     abc:	4413      	add	r3, r2
     abe:	7cfa      	ldrb	r2, [r7, #19]
     ac0:	701a      	strb	r2, [r3, #0]
     ac2:	4b11      	ldr	r3, [pc, #68]	; (b08 <read_line+0x1dc>)
     ac4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
     ac6:	7cfa      	ldrb	r2, [r7, #19]
     ac8:	4610      	mov	r0, r2
     aca:	4798      	blx	r3
     acc:	e001      	b.n	ad2 <read_line+0x1a6>
     ace:	f7ff ff27 	bl	920 <beep>
     ad2:	7cfb      	ldrb	r3, [r7, #19]
     ad4:	2b0d      	cmp	r3, #13
     ad6:	f47f af4c 	bne.w	972 <read_line+0x46>
     ada:	697a      	ldr	r2, [r7, #20]
     adc:	6879      	ldr	r1, [r7, #4]
     ade:	68f8      	ldr	r0, [r7, #12]
     ae0:	f000 fbe7 	bl	12b2 <move>
     ae4:	687a      	ldr	r2, [r7, #4]
     ae6:	697b      	ldr	r3, [r7, #20]
     ae8:	4413      	add	r3, r2
     aea:	2200      	movs	r2, #0
     aec:	701a      	strb	r2, [r3, #0]
     aee:	68f8      	ldr	r0, [r7, #12]
     af0:	f7ff fc5a 	bl	3a8 <free>
     af4:	697b      	ldr	r3, [r7, #20]
     af6:	4618      	mov	r0, r3
     af8:	3718      	adds	r7, #24
     afa:	46bd      	mov	sp, r7
     afc:	bd80      	pop	{r7, pc}
     afe:	bf00      	nop
     b00:	20000064 	.word	0x20000064
     b04:	2000005c 	.word	0x2000005c
     b08:	20000480 	.word	0x20000480

00000b0c <print_int>:
     b0c:	b580      	push	{r7, lr}
     b0e:	b08e      	sub	sp, #56	; 0x38
     b10:	af00      	add	r7, sp, #0
     b12:	6078      	str	r0, [r7, #4]
     b14:	6039      	str	r1, [r7, #0]
     b16:	2301      	movs	r3, #1
     b18:	637b      	str	r3, [r7, #52]	; 0x34
     b1a:	2321      	movs	r3, #33	; 0x21
     b1c:	633b      	str	r3, [r7, #48]	; 0x30
     b1e:	2300      	movs	r3, #0
     b20:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
     b24:	2320      	movs	r3, #32
     b26:	f887 302e 	strb.w	r3, [r7, #46]	; 0x2e
     b2a:	687b      	ldr	r3, [r7, #4]
     b2c:	2b00      	cmp	r3, #0
     b2e:	da33      	bge.n	b98 <print_int+0x8c>
     b30:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     b34:	637b      	str	r3, [r7, #52]	; 0x34
     b36:	687b      	ldr	r3, [r7, #4]
     b38:	425b      	negs	r3, r3
     b3a:	607b      	str	r3, [r7, #4]
     b3c:	e02c      	b.n	b98 <print_int+0x8c>
     b3e:	687b      	ldr	r3, [r7, #4]
     b40:	683a      	ldr	r2, [r7, #0]
     b42:	fbb3 f2f2 	udiv	r2, r3, r2
     b46:	6839      	ldr	r1, [r7, #0]
     b48:	fb01 f202 	mul.w	r2, r1, r2
     b4c:	1a9b      	subs	r3, r3, r2
     b4e:	b2db      	uxtb	r3, r3
     b50:	3330      	adds	r3, #48	; 0x30
     b52:	b2d9      	uxtb	r1, r3
     b54:	f107 020c 	add.w	r2, r7, #12
     b58:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b5a:	4413      	add	r3, r2
     b5c:	460a      	mov	r2, r1
     b5e:	701a      	strb	r2, [r3, #0]
     b60:	f107 020c 	add.w	r2, r7, #12
     b64:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b66:	4413      	add	r3, r2
     b68:	781b      	ldrb	r3, [r3, #0]
     b6a:	2b39      	cmp	r3, #57	; 0x39
     b6c:	d90c      	bls.n	b88 <print_int+0x7c>
     b6e:	f107 020c 	add.w	r2, r7, #12
     b72:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b74:	4413      	add	r3, r2
     b76:	781b      	ldrb	r3, [r3, #0]
     b78:	3307      	adds	r3, #7
     b7a:	b2d9      	uxtb	r1, r3
     b7c:	f107 020c 	add.w	r2, r7, #12
     b80:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b82:	4413      	add	r3, r2
     b84:	460a      	mov	r2, r1
     b86:	701a      	strb	r2, [r3, #0]
     b88:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b8a:	3b01      	subs	r3, #1
     b8c:	633b      	str	r3, [r7, #48]	; 0x30
     b8e:	687a      	ldr	r2, [r7, #4]
     b90:	683b      	ldr	r3, [r7, #0]
     b92:	fbb2 f3f3 	udiv	r3, r2, r3
     b96:	607b      	str	r3, [r7, #4]
     b98:	687b      	ldr	r3, [r7, #4]
     b9a:	2b00      	cmp	r3, #0
     b9c:	d1cf      	bne.n	b3e <print_int+0x32>
     b9e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ba0:	2b21      	cmp	r3, #33	; 0x21
     ba2:	d108      	bne.n	bb6 <print_int+0xaa>
     ba4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ba6:	1e5a      	subs	r2, r3, #1
     ba8:	633a      	str	r2, [r7, #48]	; 0x30
     baa:	f107 0238 	add.w	r2, r7, #56	; 0x38
     bae:	4413      	add	r3, r2
     bb0:	2230      	movs	r2, #48	; 0x30
     bb2:	f803 2c2c 	strb.w	r2, [r3, #-44]
     bb6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     bb8:	2b00      	cmp	r3, #0
     bba:	da06      	bge.n	bca <print_int+0xbe>
     bbc:	f107 020c 	add.w	r2, r7, #12
     bc0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bc2:	4413      	add	r3, r2
     bc4:	222d      	movs	r2, #45	; 0x2d
     bc6:	701a      	strb	r2, [r3, #0]
     bc8:	e005      	b.n	bd6 <print_int+0xca>
     bca:	f107 020c 	add.w	r2, r7, #12
     bce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bd0:	4413      	add	r3, r2
     bd2:	2220      	movs	r2, #32
     bd4:	701a      	strb	r2, [r3, #0]
     bd6:	f107 020c 	add.w	r2, r7, #12
     bda:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bdc:	4413      	add	r3, r2
     bde:	4618      	mov	r0, r3
     be0:	f7ff fe56 	bl	890 <print>
     be4:	bf00      	nop
     be6:	3738      	adds	r7, #56	; 0x38
     be8:	46bd      	mov	sp, r7
     bea:	bd80      	pop	{r7, pc}

00000bec <print_hex>:
     bec:	b580      	push	{r7, lr}
     bee:	b086      	sub	sp, #24
     bf0:	af00      	add	r7, sp, #0
     bf2:	6078      	str	r0, [r7, #4]
     bf4:	6039      	str	r1, [r7, #0]
     bf6:	230b      	movs	r3, #11
     bf8:	617b      	str	r3, [r7, #20]
     bfa:	697b      	ldr	r3, [r7, #20]
     bfc:	1e5a      	subs	r2, r3, #1
     bfe:	617a      	str	r2, [r7, #20]
     c00:	f107 0218 	add.w	r2, r7, #24
     c04:	4413      	add	r3, r2
     c06:	2200      	movs	r2, #0
     c08:	f803 2c10 	strb.w	r2, [r3, #-16]
     c0c:	697b      	ldr	r3, [r7, #20]
     c0e:	1e5a      	subs	r2, r3, #1
     c10:	617a      	str	r2, [r7, #20]
     c12:	f107 0218 	add.w	r2, r7, #24
     c16:	4413      	add	r3, r2
     c18:	2220      	movs	r2, #32
     c1a:	f803 2c10 	strb.w	r2, [r3, #-16]
     c1e:	687b      	ldr	r3, [r7, #4]
     c20:	2b00      	cmp	r3, #0
     c22:	d108      	bne.n	c36 <print_hex+0x4a>
     c24:	697b      	ldr	r3, [r7, #20]
     c26:	1e5a      	subs	r2, r3, #1
     c28:	617a      	str	r2, [r7, #20]
     c2a:	f107 0218 	add.w	r2, r7, #24
     c2e:	4413      	add	r3, r2
     c30:	2230      	movs	r2, #48	; 0x30
     c32:	f803 2c10 	strb.w	r2, [r3, #-16]
     c36:	683b      	ldr	r3, [r7, #0]
     c38:	f1c3 0309 	rsb	r3, r3, #9
     c3c:	603b      	str	r3, [r7, #0]
     c3e:	683b      	ldr	r3, [r7, #0]
     c40:	2b00      	cmp	r3, #0
     c42:	dc29      	bgt.n	c98 <print_hex+0xac>
     c44:	2301      	movs	r3, #1
     c46:	603b      	str	r3, [r7, #0]
     c48:	e026      	b.n	c98 <print_hex+0xac>
     c4a:	687b      	ldr	r3, [r7, #4]
     c4c:	b2db      	uxtb	r3, r3
     c4e:	f003 030f 	and.w	r3, r3, #15
     c52:	b2db      	uxtb	r3, r3
     c54:	3330      	adds	r3, #48	; 0x30
     c56:	b2d9      	uxtb	r1, r3
     c58:	f107 0208 	add.w	r2, r7, #8
     c5c:	697b      	ldr	r3, [r7, #20]
     c5e:	4413      	add	r3, r2
     c60:	460a      	mov	r2, r1
     c62:	701a      	strb	r2, [r3, #0]
     c64:	f107 0208 	add.w	r2, r7, #8
     c68:	697b      	ldr	r3, [r7, #20]
     c6a:	4413      	add	r3, r2
     c6c:	781b      	ldrb	r3, [r3, #0]
     c6e:	2b39      	cmp	r3, #57	; 0x39
     c70:	d90c      	bls.n	c8c <print_hex+0xa0>
     c72:	f107 0208 	add.w	r2, r7, #8
     c76:	697b      	ldr	r3, [r7, #20]
     c78:	4413      	add	r3, r2
     c7a:	781b      	ldrb	r3, [r3, #0]
     c7c:	3307      	adds	r3, #7
     c7e:	b2d9      	uxtb	r1, r3
     c80:	f107 0208 	add.w	r2, r7, #8
     c84:	697b      	ldr	r3, [r7, #20]
     c86:	4413      	add	r3, r2
     c88:	460a      	mov	r2, r1
     c8a:	701a      	strb	r2, [r3, #0]
     c8c:	697b      	ldr	r3, [r7, #20]
     c8e:	3b01      	subs	r3, #1
     c90:	617b      	str	r3, [r7, #20]
     c92:	687b      	ldr	r3, [r7, #4]
     c94:	091b      	lsrs	r3, r3, #4
     c96:	607b      	str	r3, [r7, #4]
     c98:	687b      	ldr	r3, [r7, #4]
     c9a:	2b00      	cmp	r3, #0
     c9c:	d1d5      	bne.n	c4a <print_hex+0x5e>
     c9e:	e008      	b.n	cb2 <print_hex+0xc6>
     ca0:	697b      	ldr	r3, [r7, #20]
     ca2:	1e5a      	subs	r2, r3, #1
     ca4:	617a      	str	r2, [r7, #20]
     ca6:	f107 0218 	add.w	r2, r7, #24
     caa:	4413      	add	r3, r2
     cac:	2230      	movs	r2, #48	; 0x30
     cae:	f803 2c10 	strb.w	r2, [r3, #-16]
     cb2:	697a      	ldr	r2, [r7, #20]
     cb4:	683b      	ldr	r3, [r7, #0]
     cb6:	429a      	cmp	r2, r3
     cb8:	dcf2      	bgt.n	ca0 <print_hex+0xb4>
     cba:	f107 0208 	add.w	r2, r7, #8
     cbe:	697b      	ldr	r3, [r7, #20]
     cc0:	4413      	add	r3, r2
     cc2:	2224      	movs	r2, #36	; 0x24
     cc4:	701a      	strb	r2, [r3, #0]
     cc6:	f107 0208 	add.w	r2, r7, #8
     cca:	697b      	ldr	r3, [r7, #20]
     ccc:	4413      	add	r3, r2
     cce:	4618      	mov	r0, r3
     cd0:	f7ff fdde 	bl	890 <print>
     cd4:	bf00      	nop
     cd6:	3718      	adds	r7, #24
     cd8:	46bd      	mov	sp, r7
     cda:	bd80      	pop	{r7, pc}

00000cdc <cls>:
     cdc:	b580      	push	{r7, lr}
     cde:	af00      	add	r7, sp, #0
     ce0:	4b02      	ldr	r3, [pc, #8]	; (cec <cls+0x10>)
     ce2:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
     ce4:	4798      	blx	r3
     ce6:	bf00      	nop
     ce8:	bd80      	pop	{r7, pc}
     cea:	bf00      	nop
     cec:	20000480 	.word	0x20000480

00000cf0 <con_cursor_pos>:
     cf0:	b480      	push	{r7}
     cf2:	af00      	add	r7, sp, #0
     cf4:	4b07      	ldr	r3, [pc, #28]	; (d14 <con_cursor_pos+0x24>)
     cf6:	681b      	ldr	r3, [r3, #0]
     cf8:	b2db      	uxtb	r3, r3
     cfa:	b29a      	uxth	r2, r3
     cfc:	4b06      	ldr	r3, [pc, #24]	; (d18 <con_cursor_pos+0x28>)
     cfe:	681b      	ldr	r3, [r3, #0]
     d00:	b2db      	uxtb	r3, r3
     d02:	b29b      	uxth	r3, r3
     d04:	021b      	lsls	r3, r3, #8
     d06:	b29b      	uxth	r3, r3
     d08:	4413      	add	r3, r2
     d0a:	b29b      	uxth	r3, r3
     d0c:	4618      	mov	r0, r3
     d0e:	46bd      	mov	sp, r7
     d10:	bc80      	pop	{r7}
     d12:	4770      	bx	lr
     d14:	2000005c 	.word	0x2000005c
     d18:	20000060 	.word	0x20000060

00000d1c <flash_enable>:
     d1c:	b480      	push	{r7}
     d1e:	af00      	add	r7, sp, #0
     d20:	4b14      	ldr	r3, [pc, #80]	; (d74 <flash_enable+0x58>)
     d22:	2200      	movs	r2, #0
     d24:	701a      	strb	r2, [r3, #0]
     d26:	4b14      	ldr	r3, [pc, #80]	; (d78 <flash_enable+0x5c>)
     d28:	681b      	ldr	r3, [r3, #0]
     d2a:	f003 0301 	and.w	r3, r3, #1
     d2e:	2b00      	cmp	r3, #0
     d30:	d10c      	bne.n	d4c <flash_enable+0x30>
     d32:	4a11      	ldr	r2, [pc, #68]	; (d78 <flash_enable+0x5c>)
     d34:	4b10      	ldr	r3, [pc, #64]	; (d78 <flash_enable+0x5c>)
     d36:	681b      	ldr	r3, [r3, #0]
     d38:	f043 0301 	orr.w	r3, r3, #1
     d3c:	6013      	str	r3, [r2, #0]
     d3e:	bf00      	nop
     d40:	4b0d      	ldr	r3, [pc, #52]	; (d78 <flash_enable+0x5c>)
     d42:	681b      	ldr	r3, [r3, #0]
     d44:	f003 0302 	and.w	r3, r3, #2
     d48:	2b00      	cmp	r3, #0
     d4a:	d0f9      	beq.n	d40 <flash_enable+0x24>
     d4c:	4b0b      	ldr	r3, [pc, #44]	; (d7c <flash_enable+0x60>)
     d4e:	4a0c      	ldr	r2, [pc, #48]	; (d80 <flash_enable+0x64>)
     d50:	605a      	str	r2, [r3, #4]
     d52:	4b0a      	ldr	r3, [pc, #40]	; (d7c <flash_enable+0x60>)
     d54:	4a0b      	ldr	r2, [pc, #44]	; (d84 <flash_enable+0x68>)
     d56:	605a      	str	r2, [r3, #4]
     d58:	4b08      	ldr	r3, [pc, #32]	; (d7c <flash_enable+0x60>)
     d5a:	691b      	ldr	r3, [r3, #16]
     d5c:	f003 0380 	and.w	r3, r3, #128	; 0x80
     d60:	2b00      	cmp	r3, #0
     d62:	bf0c      	ite	eq
     d64:	2301      	moveq	r3, #1
     d66:	2300      	movne	r3, #0
     d68:	b2db      	uxtb	r3, r3
     d6a:	4618      	mov	r0, r3
     d6c:	46bd      	mov	sp, r7
     d6e:	bc80      	pop	{r7}
     d70:	4770      	bx	lr
     d72:	bf00      	nop
     d74:	2000006c 	.word	0x2000006c
     d78:	40021000 	.word	0x40021000
     d7c:	40022000 	.word	0x40022000
     d80:	45670123 	.word	0x45670123
     d84:	cdef89ab 	.word	0xcdef89ab

00000d88 <flash_write_hword>:
     d88:	b480      	push	{r7}
     d8a:	b083      	sub	sp, #12
     d8c:	af00      	add	r7, sp, #0
     d8e:	6078      	str	r0, [r7, #4]
     d90:	460b      	mov	r3, r1
     d92:	807b      	strh	r3, [r7, #2]
     d94:	bf00      	nop
     d96:	4b16      	ldr	r3, [pc, #88]	; (df0 <flash_write_hword+0x68>)
     d98:	68db      	ldr	r3, [r3, #12]
     d9a:	f003 0301 	and.w	r3, r3, #1
     d9e:	2b00      	cmp	r3, #0
     da0:	d1f9      	bne.n	d96 <flash_write_hword+0xe>
     da2:	4a13      	ldr	r2, [pc, #76]	; (df0 <flash_write_hword+0x68>)
     da4:	4b12      	ldr	r3, [pc, #72]	; (df0 <flash_write_hword+0x68>)
     da6:	68db      	ldr	r3, [r3, #12]
     da8:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     dac:	60d3      	str	r3, [r2, #12]
     dae:	4b10      	ldr	r3, [pc, #64]	; (df0 <flash_write_hword+0x68>)
     db0:	2201      	movs	r2, #1
     db2:	611a      	str	r2, [r3, #16]
     db4:	687b      	ldr	r3, [r7, #4]
     db6:	887a      	ldrh	r2, [r7, #2]
     db8:	801a      	strh	r2, [r3, #0]
     dba:	bf00      	nop
     dbc:	4b0c      	ldr	r3, [pc, #48]	; (df0 <flash_write_hword+0x68>)
     dbe:	68db      	ldr	r3, [r3, #12]
     dc0:	f003 0301 	and.w	r3, r3, #1
     dc4:	2b00      	cmp	r3, #0
     dc6:	d005      	beq.n	dd4 <flash_write_hword+0x4c>
     dc8:	4b09      	ldr	r3, [pc, #36]	; (df0 <flash_write_hword+0x68>)
     dca:	68db      	ldr	r3, [r3, #12]
     dcc:	f003 0320 	and.w	r3, r3, #32
     dd0:	2b00      	cmp	r3, #0
     dd2:	d0f3      	beq.n	dbc <flash_write_hword+0x34>
     dd4:	687b      	ldr	r3, [r7, #4]
     dd6:	881b      	ldrh	r3, [r3, #0]
     dd8:	887a      	ldrh	r2, [r7, #2]
     dda:	429a      	cmp	r2, r3
     ddc:	bf0c      	ite	eq
     dde:	2301      	moveq	r3, #1
     de0:	2300      	movne	r3, #0
     de2:	b2db      	uxtb	r3, r3
     de4:	4618      	mov	r0, r3
     de6:	370c      	adds	r7, #12
     de8:	46bd      	mov	sp, r7
     dea:	bc80      	pop	{r7}
     dec:	4770      	bx	lr
     dee:	bf00      	nop
     df0:	40022000 	.word	0x40022000

00000df4 <write_back_buffer>:
     df4:	b580      	push	{r7, lr}
     df6:	b084      	sub	sp, #16
     df8:	af00      	add	r7, sp, #0
     dfa:	4b1e      	ldr	r3, [pc, #120]	; (e74 <write_back_buffer+0x80>)
     dfc:	785b      	ldrb	r3, [r3, #1]
     dfe:	029b      	lsls	r3, r3, #10
     e00:	60bb      	str	r3, [r7, #8]
     e02:	4b1d      	ldr	r3, [pc, #116]	; (e78 <write_back_buffer+0x84>)
     e04:	607b      	str	r3, [r7, #4]
     e06:	2300      	movs	r3, #0
     e08:	60fb      	str	r3, [r7, #12]
     e0a:	e017      	b.n	e3c <write_back_buffer+0x48>
     e0c:	687b      	ldr	r3, [r7, #4]
     e0e:	881b      	ldrh	r3, [r3, #0]
     e10:	f64f 72ff 	movw	r2, #65535	; 0xffff
     e14:	4293      	cmp	r3, r2
     e16:	d008      	beq.n	e2a <write_back_buffer+0x36>
     e18:	687b      	ldr	r3, [r7, #4]
     e1a:	881b      	ldrh	r3, [r3, #0]
     e1c:	4619      	mov	r1, r3
     e1e:	68b8      	ldr	r0, [r7, #8]
     e20:	f7ff ffb2 	bl	d88 <flash_write_hword>
     e24:	4603      	mov	r3, r0
     e26:	2b00      	cmp	r3, #0
     e28:	d00d      	beq.n	e46 <write_back_buffer+0x52>
     e2a:	68bb      	ldr	r3, [r7, #8]
     e2c:	3302      	adds	r3, #2
     e2e:	60bb      	str	r3, [r7, #8]
     e30:	687b      	ldr	r3, [r7, #4]
     e32:	3302      	adds	r3, #2
     e34:	607b      	str	r3, [r7, #4]
     e36:	68fb      	ldr	r3, [r7, #12]
     e38:	3301      	adds	r3, #1
     e3a:	60fb      	str	r3, [r7, #12]
     e3c:	68fb      	ldr	r3, [r7, #12]
     e3e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     e42:	dbe3      	blt.n	e0c <write_back_buffer+0x18>
     e44:	e000      	b.n	e48 <write_back_buffer+0x54>
     e46:	bf00      	nop
     e48:	68fb      	ldr	r3, [r7, #12]
     e4a:	2b00      	cmp	r3, #0
     e4c:	dd06      	ble.n	e5c <write_back_buffer+0x68>
     e4e:	4b09      	ldr	r3, [pc, #36]	; (e74 <write_back_buffer+0x80>)
     e50:	781b      	ldrb	r3, [r3, #0]
     e52:	f023 0304 	bic.w	r3, r3, #4
     e56:	b2da      	uxtb	r2, r3
     e58:	4b06      	ldr	r3, [pc, #24]	; (e74 <write_back_buffer+0x80>)
     e5a:	701a      	strb	r2, [r3, #0]
     e5c:	68fb      	ldr	r3, [r7, #12]
     e5e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     e62:	d101      	bne.n	e68 <write_back_buffer+0x74>
     e64:	2301      	movs	r3, #1
     e66:	e000      	b.n	e6a <write_back_buffer+0x76>
     e68:	2300      	movs	r3, #0
     e6a:	4618      	mov	r0, r3
     e6c:	3710      	adds	r7, #16
     e6e:	46bd      	mov	sp, r7
     e70:	bd80      	pop	{r7, pc}
     e72:	bf00      	nop
     e74:	2000006c 	.word	0x2000006c
     e78:	2000006e 	.word	0x2000006e

00000e7c <load_row>:
     e7c:	b480      	push	{r7}
     e7e:	b087      	sub	sp, #28
     e80:	af00      	add	r7, sp, #0
     e82:	6078      	str	r0, [r7, #4]
     e84:	687b      	ldr	r3, [r7, #4]
     e86:	029b      	lsls	r3, r3, #10
     e88:	617b      	str	r3, [r7, #20]
     e8a:	4b15      	ldr	r3, [pc, #84]	; (ee0 <load_row+0x64>)
     e8c:	613b      	str	r3, [r7, #16]
     e8e:	2300      	movs	r3, #0
     e90:	60fb      	str	r3, [r7, #12]
     e92:	e00a      	b.n	eaa <load_row+0x2e>
     e94:	693b      	ldr	r3, [r7, #16]
     e96:	1c9a      	adds	r2, r3, #2
     e98:	613a      	str	r2, [r7, #16]
     e9a:	697a      	ldr	r2, [r7, #20]
     e9c:	1c91      	adds	r1, r2, #2
     e9e:	6179      	str	r1, [r7, #20]
     ea0:	8812      	ldrh	r2, [r2, #0]
     ea2:	801a      	strh	r2, [r3, #0]
     ea4:	68fb      	ldr	r3, [r7, #12]
     ea6:	3301      	adds	r3, #1
     ea8:	60fb      	str	r3, [r7, #12]
     eaa:	68fb      	ldr	r3, [r7, #12]
     eac:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     eb0:	dbf0      	blt.n	e94 <load_row+0x18>
     eb2:	687b      	ldr	r3, [r7, #4]
     eb4:	b2da      	uxtb	r2, r3
     eb6:	4b0b      	ldr	r3, [pc, #44]	; (ee4 <load_row+0x68>)
     eb8:	705a      	strb	r2, [r3, #1]
     eba:	4b0a      	ldr	r3, [pc, #40]	; (ee4 <load_row+0x68>)
     ebc:	781b      	ldrb	r3, [r3, #0]
     ebe:	f023 0301 	bic.w	r3, r3, #1
     ec2:	b2da      	uxtb	r2, r3
     ec4:	4b07      	ldr	r3, [pc, #28]	; (ee4 <load_row+0x68>)
     ec6:	701a      	strb	r2, [r3, #0]
     ec8:	4b06      	ldr	r3, [pc, #24]	; (ee4 <load_row+0x68>)
     eca:	781b      	ldrb	r3, [r3, #0]
     ecc:	f043 0302 	orr.w	r3, r3, #2
     ed0:	b2da      	uxtb	r2, r3
     ed2:	4b04      	ldr	r3, [pc, #16]	; (ee4 <load_row+0x68>)
     ed4:	701a      	strb	r2, [r3, #0]
     ed6:	bf00      	nop
     ed8:	371c      	adds	r7, #28
     eda:	46bd      	mov	sp, r7
     edc:	bc80      	pop	{r7}
     ede:	4770      	bx	lr
     ee0:	2000006e 	.word	0x2000006e
     ee4:	2000006c 	.word	0x2000006c

00000ee8 <is_erased>:
     ee8:	b480      	push	{r7}
     eea:	b085      	sub	sp, #20
     eec:	af00      	add	r7, sp, #0
     eee:	6078      	str	r0, [r7, #4]
     ef0:	687b      	ldr	r3, [r7, #4]
     ef2:	029b      	lsls	r3, r3, #10
     ef4:	60fb      	str	r3, [r7, #12]
     ef6:	2300      	movs	r3, #0
     ef8:	60bb      	str	r3, [r7, #8]
     efa:	e00c      	b.n	f16 <is_erased+0x2e>
     efc:	68fb      	ldr	r3, [r7, #12]
     efe:	1c9a      	adds	r2, r3, #2
     f00:	60fa      	str	r2, [r7, #12]
     f02:	881b      	ldrh	r3, [r3, #0]
     f04:	f64f 72ff 	movw	r2, #65535	; 0xffff
     f08:	4293      	cmp	r3, r2
     f0a:	d001      	beq.n	f10 <is_erased+0x28>
     f0c:	2300      	movs	r3, #0
     f0e:	e008      	b.n	f22 <is_erased+0x3a>
     f10:	68bb      	ldr	r3, [r7, #8]
     f12:	3301      	adds	r3, #1
     f14:	60bb      	str	r3, [r7, #8]
     f16:	68bb      	ldr	r3, [r7, #8]
     f18:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     f1c:	dbee      	blt.n	efc <is_erased+0x14>
     f1e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
     f22:	4618      	mov	r0, r3
     f24:	3714      	adds	r7, #20
     f26:	46bd      	mov	sp, r7
     f28:	bc80      	pop	{r7}
     f2a:	4770      	bx	lr

00000f2c <flash_erase_row>:
     f2c:	b580      	push	{r7, lr}
     f2e:	b086      	sub	sp, #24
     f30:	af00      	add	r7, sp, #0
     f32:	6078      	str	r0, [r7, #4]
     f34:	687b      	ldr	r3, [r7, #4]
     f36:	2b3f      	cmp	r3, #63	; 0x3f
     f38:	d801      	bhi.n	f3e <flash_erase_row+0x12>
     f3a:	2300      	movs	r3, #0
     f3c:	e052      	b.n	fe4 <flash_erase_row+0xb8>
     f3e:	6878      	ldr	r0, [r7, #4]
     f40:	f7ff ffd2 	bl	ee8 <is_erased>
     f44:	4603      	mov	r3, r0
     f46:	2b00      	cmp	r3, #0
     f48:	d001      	beq.n	f4e <flash_erase_row+0x22>
     f4a:	2301      	movs	r3, #1
     f4c:	e04a      	b.n	fe4 <flash_erase_row+0xb8>
     f4e:	687b      	ldr	r3, [r7, #4]
     f50:	029b      	lsls	r3, r3, #10
     f52:	617b      	str	r3, [r7, #20]
     f54:	4b25      	ldr	r3, [pc, #148]	; (fec <flash_erase_row+0xc0>)
     f56:	691b      	ldr	r3, [r3, #16]
     f58:	f003 0380 	and.w	r3, r3, #128	; 0x80
     f5c:	2b00      	cmp	r3, #0
     f5e:	d001      	beq.n	f64 <flash_erase_row+0x38>
     f60:	2300      	movs	r3, #0
     f62:	e03f      	b.n	fe4 <flash_erase_row+0xb8>
     f64:	4a21      	ldr	r2, [pc, #132]	; (fec <flash_erase_row+0xc0>)
     f66:	4b21      	ldr	r3, [pc, #132]	; (fec <flash_erase_row+0xc0>)
     f68:	68db      	ldr	r3, [r3, #12]
     f6a:	f043 0334 	orr.w	r3, r3, #52	; 0x34
     f6e:	60d3      	str	r3, [r2, #12]
     f70:	4b1e      	ldr	r3, [pc, #120]	; (fec <flash_erase_row+0xc0>)
     f72:	2202      	movs	r2, #2
     f74:	611a      	str	r2, [r3, #16]
     f76:	4a1d      	ldr	r2, [pc, #116]	; (fec <flash_erase_row+0xc0>)
     f78:	697b      	ldr	r3, [r7, #20]
     f7a:	6153      	str	r3, [r2, #20]
     f7c:	4a1b      	ldr	r2, [pc, #108]	; (fec <flash_erase_row+0xc0>)
     f7e:	4b1b      	ldr	r3, [pc, #108]	; (fec <flash_erase_row+0xc0>)
     f80:	691b      	ldr	r3, [r3, #16]
     f82:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     f86:	6113      	str	r3, [r2, #16]
     f88:	bf00      	nop
     f8a:	4b18      	ldr	r3, [pc, #96]	; (fec <flash_erase_row+0xc0>)
     f8c:	68db      	ldr	r3, [r3, #12]
     f8e:	f003 0301 	and.w	r3, r3, #1
     f92:	2b00      	cmp	r3, #0
     f94:	d005      	beq.n	fa2 <flash_erase_row+0x76>
     f96:	4b15      	ldr	r3, [pc, #84]	; (fec <flash_erase_row+0xc0>)
     f98:	68db      	ldr	r3, [r3, #12]
     f9a:	f003 0320 	and.w	r3, r3, #32
     f9e:	2b00      	cmp	r3, #0
     fa0:	d0f3      	beq.n	f8a <flash_erase_row+0x5e>
     fa2:	687b      	ldr	r3, [r7, #4]
     fa4:	029b      	lsls	r3, r3, #10
     fa6:	617b      	str	r3, [r7, #20]
     fa8:	2300      	movs	r3, #0
     faa:	60fb      	str	r3, [r7, #12]
     fac:	e00c      	b.n	fc8 <flash_erase_row+0x9c>
     fae:	697b      	ldr	r3, [r7, #20]
     fb0:	1c9a      	adds	r2, r3, #2
     fb2:	617a      	str	r2, [r7, #20]
     fb4:	881b      	ldrh	r3, [r3, #0]
     fb6:	827b      	strh	r3, [r7, #18]
     fb8:	8a7b      	ldrh	r3, [r7, #18]
     fba:	f64f 72ff 	movw	r2, #65535	; 0xffff
     fbe:	4293      	cmp	r3, r2
     fc0:	d107      	bne.n	fd2 <flash_erase_row+0xa6>
     fc2:	68fb      	ldr	r3, [r7, #12]
     fc4:	3301      	adds	r3, #1
     fc6:	60fb      	str	r3, [r7, #12]
     fc8:	68fb      	ldr	r3, [r7, #12]
     fca:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
     fce:	dbee      	blt.n	fae <flash_erase_row+0x82>
     fd0:	e000      	b.n	fd4 <flash_erase_row+0xa8>
     fd2:	bf00      	nop
     fd4:	8a7b      	ldrh	r3, [r7, #18]
     fd6:	f64f 72ff 	movw	r2, #65535	; 0xffff
     fda:	4293      	cmp	r3, r2
     fdc:	bf0c      	ite	eq
     fde:	2301      	moveq	r3, #1
     fe0:	2300      	movne	r3, #0
     fe2:	b2db      	uxtb	r3, r3
     fe4:	4618      	mov	r0, r3
     fe6:	3718      	adds	r7, #24
     fe8:	46bd      	mov	sp, r7
     fea:	bd80      	pop	{r7, pc}
     fec:	40022000 	.word	0x40022000

00000ff0 <flash_sync>:
     ff0:	b580      	push	{r7, lr}
     ff2:	af00      	add	r7, sp, #0
     ff4:	4b10      	ldr	r3, [pc, #64]	; (1038 <flash_sync+0x48>)
     ff6:	781b      	ldrb	r3, [r3, #0]
     ff8:	f003 0301 	and.w	r3, r3, #1
     ffc:	2b00      	cmp	r3, #0
     ffe:	d017      	beq.n	1030 <flash_sync+0x40>
    1000:	4b0d      	ldr	r3, [pc, #52]	; (1038 <flash_sync+0x48>)
    1002:	785b      	ldrb	r3, [r3, #1]
    1004:	4618      	mov	r0, r3
    1006:	f7ff ff91 	bl	f2c <flash_erase_row>
    100a:	4603      	mov	r3, r0
    100c:	2b00      	cmp	r3, #0
    100e:	d00d      	beq.n	102c <flash_sync+0x3c>
    1010:	f7ff fef0 	bl	df4 <write_back_buffer>
    1014:	4603      	mov	r3, r0
    1016:	2b00      	cmp	r3, #0
    1018:	d008      	beq.n	102c <flash_sync+0x3c>
    101a:	4b07      	ldr	r3, [pc, #28]	; (1038 <flash_sync+0x48>)
    101c:	781b      	ldrb	r3, [r3, #0]
    101e:	f023 0301 	bic.w	r3, r3, #1
    1022:	b2da      	uxtb	r2, r3
    1024:	4b04      	ldr	r3, [pc, #16]	; (1038 <flash_sync+0x48>)
    1026:	701a      	strb	r2, [r3, #0]
    1028:	2301      	movs	r3, #1
    102a:	e002      	b.n	1032 <flash_sync+0x42>
    102c:	2300      	movs	r3, #0
    102e:	e000      	b.n	1032 <flash_sync+0x42>
    1030:	2301      	movs	r3, #1
    1032:	4618      	mov	r0, r3
    1034:	bd80      	pop	{r7, pc}
    1036:	bf00      	nop
    1038:	2000006c 	.word	0x2000006c

0000103c <flash_flush>:
    103c:	b480      	push	{r7}
    103e:	af00      	add	r7, sp, #0
    1040:	4b03      	ldr	r3, [pc, #12]	; (1050 <flash_flush+0x14>)
    1042:	2200      	movs	r2, #0
    1044:	701a      	strb	r2, [r3, #0]
    1046:	bf00      	nop
    1048:	46bd      	mov	sp, r7
    104a:	bc80      	pop	{r7}
    104c:	4770      	bx	lr
    104e:	bf00      	nop
    1050:	2000006c 	.word	0x2000006c

00001054 <flash_disable>:
    1054:	b580      	push	{r7, lr}
    1056:	af00      	add	r7, sp, #0
    1058:	f7ff ffca 	bl	ff0 <flash_sync>
    105c:	4b05      	ldr	r3, [pc, #20]	; (1074 <flash_disable+0x20>)
    105e:	2200      	movs	r2, #0
    1060:	701a      	strb	r2, [r3, #0]
    1062:	4a05      	ldr	r2, [pc, #20]	; (1078 <flash_disable+0x24>)
    1064:	4b04      	ldr	r3, [pc, #16]	; (1078 <flash_disable+0x24>)
    1066:	691b      	ldr	r3, [r3, #16]
    1068:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    106c:	6113      	str	r3, [r2, #16]
    106e:	bf00      	nop
    1070:	bd80      	pop	{r7, pc}
    1072:	bf00      	nop
    1074:	2000006c 	.word	0x2000006c
    1078:	40022000 	.word	0x40022000

0000107c <strcmp>:
    107c:	b480      	push	{r7}
    107e:	b085      	sub	sp, #20
    1080:	af00      	add	r7, sp, #0
    1082:	6078      	str	r0, [r7, #4]
    1084:	6039      	str	r1, [r7, #0]
    1086:	2300      	movs	r3, #0
    1088:	60fb      	str	r3, [r7, #12]
    108a:	e018      	b.n	10be <strcmp+0x42>
    108c:	687b      	ldr	r3, [r7, #4]
    108e:	781a      	ldrb	r2, [r3, #0]
    1090:	683b      	ldr	r3, [r7, #0]
    1092:	781b      	ldrb	r3, [r3, #0]
    1094:	429a      	cmp	r2, r3
    1096:	d203      	bcs.n	10a0 <strcmp+0x24>
    1098:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    109c:	60fb      	str	r3, [r7, #12]
    109e:	e016      	b.n	10ce <strcmp+0x52>
    10a0:	687b      	ldr	r3, [r7, #4]
    10a2:	781a      	ldrb	r2, [r3, #0]
    10a4:	683b      	ldr	r3, [r7, #0]
    10a6:	781b      	ldrb	r3, [r3, #0]
    10a8:	429a      	cmp	r2, r3
    10aa:	d902      	bls.n	10b2 <strcmp+0x36>
    10ac:	2301      	movs	r3, #1
    10ae:	60fb      	str	r3, [r7, #12]
    10b0:	e00d      	b.n	10ce <strcmp+0x52>
    10b2:	687b      	ldr	r3, [r7, #4]
    10b4:	3301      	adds	r3, #1
    10b6:	607b      	str	r3, [r7, #4]
    10b8:	683b      	ldr	r3, [r7, #0]
    10ba:	3301      	adds	r3, #1
    10bc:	603b      	str	r3, [r7, #0]
    10be:	687b      	ldr	r3, [r7, #4]
    10c0:	781b      	ldrb	r3, [r3, #0]
    10c2:	2b00      	cmp	r3, #0
    10c4:	d003      	beq.n	10ce <strcmp+0x52>
    10c6:	683b      	ldr	r3, [r7, #0]
    10c8:	781b      	ldrb	r3, [r3, #0]
    10ca:	2b00      	cmp	r3, #0
    10cc:	d1de      	bne.n	108c <strcmp+0x10>
    10ce:	68fb      	ldr	r3, [r7, #12]
    10d0:	2b00      	cmp	r3, #0
    10d2:	d115      	bne.n	1100 <strcmp+0x84>
    10d4:	687b      	ldr	r3, [r7, #4]
    10d6:	781b      	ldrb	r3, [r3, #0]
    10d8:	2b00      	cmp	r3, #0
    10da:	d107      	bne.n	10ec <strcmp+0x70>
    10dc:	683b      	ldr	r3, [r7, #0]
    10de:	781b      	ldrb	r3, [r3, #0]
    10e0:	2b00      	cmp	r3, #0
    10e2:	d003      	beq.n	10ec <strcmp+0x70>
    10e4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    10e8:	60fb      	str	r3, [r7, #12]
    10ea:	e009      	b.n	1100 <strcmp+0x84>
    10ec:	687b      	ldr	r3, [r7, #4]
    10ee:	781b      	ldrb	r3, [r3, #0]
    10f0:	2b00      	cmp	r3, #0
    10f2:	d005      	beq.n	1100 <strcmp+0x84>
    10f4:	683b      	ldr	r3, [r7, #0]
    10f6:	781b      	ldrb	r3, [r3, #0]
    10f8:	2b00      	cmp	r3, #0
    10fa:	d101      	bne.n	1100 <strcmp+0x84>
    10fc:	2301      	movs	r3, #1
    10fe:	60fb      	str	r3, [r7, #12]
    1100:	68fb      	ldr	r3, [r7, #12]
    1102:	4618      	mov	r0, r3
    1104:	3714      	adds	r7, #20
    1106:	46bd      	mov	sp, r7
    1108:	bc80      	pop	{r7}
    110a:	4770      	bx	lr

0000110c <alpha>:
    110c:	b480      	push	{r7}
    110e:	b083      	sub	sp, #12
    1110:	af00      	add	r7, sp, #0
    1112:	4603      	mov	r3, r0
    1114:	71fb      	strb	r3, [r7, #7]
    1116:	79fb      	ldrb	r3, [r7, #7]
    1118:	2b60      	cmp	r3, #96	; 0x60
    111a:	d902      	bls.n	1122 <alpha+0x16>
    111c:	79fb      	ldrb	r3, [r7, #7]
    111e:	2b7a      	cmp	r3, #122	; 0x7a
    1120:	d905      	bls.n	112e <alpha+0x22>
    1122:	79fb      	ldrb	r3, [r7, #7]
    1124:	2b40      	cmp	r3, #64	; 0x40
    1126:	d904      	bls.n	1132 <alpha+0x26>
    1128:	79fb      	ldrb	r3, [r7, #7]
    112a:	2b5a      	cmp	r3, #90	; 0x5a
    112c:	d801      	bhi.n	1132 <alpha+0x26>
    112e:	2301      	movs	r3, #1
    1130:	e000      	b.n	1134 <alpha+0x28>
    1132:	2300      	movs	r3, #0
    1134:	4618      	mov	r0, r3
    1136:	370c      	adds	r7, #12
    1138:	46bd      	mov	sp, r7
    113a:	bc80      	pop	{r7}
    113c:	4770      	bx	lr

0000113e <digit>:
    113e:	b480      	push	{r7}
    1140:	b083      	sub	sp, #12
    1142:	af00      	add	r7, sp, #0
    1144:	4603      	mov	r3, r0
    1146:	71fb      	strb	r3, [r7, #7]
    1148:	79fb      	ldrb	r3, [r7, #7]
    114a:	2b2f      	cmp	r3, #47	; 0x2f
    114c:	d904      	bls.n	1158 <digit+0x1a>
    114e:	79fb      	ldrb	r3, [r7, #7]
    1150:	2b39      	cmp	r3, #57	; 0x39
    1152:	d801      	bhi.n	1158 <digit+0x1a>
    1154:	2301      	movs	r3, #1
    1156:	e000      	b.n	115a <digit+0x1c>
    1158:	2300      	movs	r3, #0
    115a:	4618      	mov	r0, r3
    115c:	370c      	adds	r7, #12
    115e:	46bd      	mov	sp, r7
    1160:	bc80      	pop	{r7}
    1162:	4770      	bx	lr

00001164 <hexdigit>:
    1164:	b580      	push	{r7, lr}
    1166:	b082      	sub	sp, #8
    1168:	af00      	add	r7, sp, #0
    116a:	4603      	mov	r3, r0
    116c:	71fb      	strb	r3, [r7, #7]
    116e:	79fb      	ldrb	r3, [r7, #7]
    1170:	2b60      	cmp	r3, #96	; 0x60
    1172:	d902      	bls.n	117a <hexdigit+0x16>
    1174:	79fb      	ldrb	r3, [r7, #7]
    1176:	3b20      	subs	r3, #32
    1178:	71fb      	strb	r3, [r7, #7]
    117a:	79fb      	ldrb	r3, [r7, #7]
    117c:	4618      	mov	r0, r3
    117e:	f7ff ffde 	bl	113e <digit>
    1182:	4603      	mov	r3, r0
    1184:	2b00      	cmp	r3, #0
    1186:	d105      	bne.n	1194 <hexdigit+0x30>
    1188:	79fb      	ldrb	r3, [r7, #7]
    118a:	2b40      	cmp	r3, #64	; 0x40
    118c:	d904      	bls.n	1198 <hexdigit+0x34>
    118e:	79fb      	ldrb	r3, [r7, #7]
    1190:	2b46      	cmp	r3, #70	; 0x46
    1192:	d801      	bhi.n	1198 <hexdigit+0x34>
    1194:	2301      	movs	r3, #1
    1196:	e000      	b.n	119a <hexdigit+0x36>
    1198:	2300      	movs	r3, #0
    119a:	4618      	mov	r0, r3
    119c:	3708      	adds	r7, #8
    119e:	46bd      	mov	sp, r7
    11a0:	bd80      	pop	{r7, pc}

000011a2 <atoi>:
    11a2:	b580      	push	{r7, lr}
    11a4:	b086      	sub	sp, #24
    11a6:	af00      	add	r7, sp, #0
    11a8:	6078      	str	r0, [r7, #4]
    11aa:	2300      	movs	r3, #0
    11ac:	617b      	str	r3, [r7, #20]
    11ae:	2301      	movs	r3, #1
    11b0:	613b      	str	r3, [r7, #16]
    11b2:	230a      	movs	r3, #10
    11b4:	60fb      	str	r3, [r7, #12]
    11b6:	e002      	b.n	11be <atoi+0x1c>
    11b8:	687b      	ldr	r3, [r7, #4]
    11ba:	3301      	adds	r3, #1
    11bc:	607b      	str	r3, [r7, #4]
    11be:	687b      	ldr	r3, [r7, #4]
    11c0:	781b      	ldrb	r3, [r3, #0]
    11c2:	2b00      	cmp	r3, #0
    11c4:	d003      	beq.n	11ce <atoi+0x2c>
    11c6:	687b      	ldr	r3, [r7, #4]
    11c8:	781b      	ldrb	r3, [r3, #0]
    11ca:	2b20      	cmp	r3, #32
    11cc:	d0f4      	beq.n	11b8 <atoi+0x16>
    11ce:	687b      	ldr	r3, [r7, #4]
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	2b2d      	cmp	r3, #45	; 0x2d
    11d4:	d105      	bne.n	11e2 <atoi+0x40>
    11d6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    11da:	613b      	str	r3, [r7, #16]
    11dc:	687b      	ldr	r3, [r7, #4]
    11de:	3301      	adds	r3, #1
    11e0:	607b      	str	r3, [r7, #4]
    11e2:	687b      	ldr	r3, [r7, #4]
    11e4:	781b      	ldrb	r3, [r3, #0]
    11e6:	2b24      	cmp	r3, #36	; 0x24
    11e8:	d10e      	bne.n	1208 <atoi+0x66>
    11ea:	687b      	ldr	r3, [r7, #4]
    11ec:	3301      	adds	r3, #1
    11ee:	781b      	ldrb	r3, [r3, #0]
    11f0:	4618      	mov	r0, r3
    11f2:	f7ff ffb7 	bl	1164 <hexdigit>
    11f6:	4603      	mov	r3, r0
    11f8:	2b00      	cmp	r3, #0
    11fa:	d005      	beq.n	1208 <atoi+0x66>
    11fc:	2310      	movs	r3, #16
    11fe:	60fb      	str	r3, [r7, #12]
    1200:	687b      	ldr	r3, [r7, #4]
    1202:	3301      	adds	r3, #1
    1204:	607b      	str	r3, [r7, #4]
    1206:	e012      	b.n	122e <atoi+0x8c>
    1208:	687b      	ldr	r3, [r7, #4]
    120a:	781b      	ldrb	r3, [r3, #0]
    120c:	2b30      	cmp	r3, #48	; 0x30
    120e:	d128      	bne.n	1262 <atoi+0xc0>
    1210:	687b      	ldr	r3, [r7, #4]
    1212:	3301      	adds	r3, #1
    1214:	781b      	ldrb	r3, [r3, #0]
    1216:	2b78      	cmp	r3, #120	; 0x78
    1218:	d004      	beq.n	1224 <atoi+0x82>
    121a:	687b      	ldr	r3, [r7, #4]
    121c:	3301      	adds	r3, #1
    121e:	781b      	ldrb	r3, [r3, #0]
    1220:	2b58      	cmp	r3, #88	; 0x58
    1222:	d11e      	bne.n	1262 <atoi+0xc0>
    1224:	2310      	movs	r3, #16
    1226:	60fb      	str	r3, [r7, #12]
    1228:	687b      	ldr	r3, [r7, #4]
    122a:	3302      	adds	r3, #2
    122c:	607b      	str	r3, [r7, #4]
    122e:	e018      	b.n	1262 <atoi+0xc0>
    1230:	7afb      	ldrb	r3, [r7, #11]
    1232:	2b60      	cmp	r3, #96	; 0x60
    1234:	d902      	bls.n	123c <atoi+0x9a>
    1236:	7afb      	ldrb	r3, [r7, #11]
    1238:	3b20      	subs	r3, #32
    123a:	72fb      	strb	r3, [r7, #11]
    123c:	7afb      	ldrb	r3, [r7, #11]
    123e:	3b30      	subs	r3, #48	; 0x30
    1240:	72fb      	strb	r3, [r7, #11]
    1242:	7afb      	ldrb	r3, [r7, #11]
    1244:	2b09      	cmp	r3, #9
    1246:	d902      	bls.n	124e <atoi+0xac>
    1248:	7afb      	ldrb	r3, [r7, #11]
    124a:	3b07      	subs	r3, #7
    124c:	72fb      	strb	r3, [r7, #11]
    124e:	697b      	ldr	r3, [r7, #20]
    1250:	68fa      	ldr	r2, [r7, #12]
    1252:	fb02 f203 	mul.w	r2, r2, r3
    1256:	7afb      	ldrb	r3, [r7, #11]
    1258:	4413      	add	r3, r2
    125a:	617b      	str	r3, [r7, #20]
    125c:	687b      	ldr	r3, [r7, #4]
    125e:	3301      	adds	r3, #1
    1260:	607b      	str	r3, [r7, #4]
    1262:	687b      	ldr	r3, [r7, #4]
    1264:	781b      	ldrb	r3, [r3, #0]
    1266:	72fb      	strb	r3, [r7, #11]
    1268:	7afb      	ldrb	r3, [r7, #11]
    126a:	2b00      	cmp	r3, #0
    126c:	d00d      	beq.n	128a <atoi+0xe8>
    126e:	68fb      	ldr	r3, [r7, #12]
    1270:	2b0a      	cmp	r3, #10
    1272:	d10a      	bne.n	128a <atoi+0xe8>
    1274:	7afb      	ldrb	r3, [r7, #11]
    1276:	4618      	mov	r0, r3
    1278:	f7ff ff61 	bl	113e <digit>
    127c:	4603      	mov	r3, r0
    127e:	2b00      	cmp	r3, #0
    1280:	bf14      	ite	ne
    1282:	2301      	movne	r3, #1
    1284:	2300      	moveq	r3, #0
    1286:	b2db      	uxtb	r3, r3
    1288:	e009      	b.n	129e <atoi+0xfc>
    128a:	7afb      	ldrb	r3, [r7, #11]
    128c:	4618      	mov	r0, r3
    128e:	f7ff ff69 	bl	1164 <hexdigit>
    1292:	4603      	mov	r3, r0
    1294:	2b00      	cmp	r3, #0
    1296:	bf14      	ite	ne
    1298:	2301      	movne	r3, #1
    129a:	2300      	moveq	r3, #0
    129c:	b2db      	uxtb	r3, r3
    129e:	2b00      	cmp	r3, #0
    12a0:	d1c6      	bne.n	1230 <atoi+0x8e>
    12a2:	693b      	ldr	r3, [r7, #16]
    12a4:	697a      	ldr	r2, [r7, #20]
    12a6:	fb02 f303 	mul.w	r3, r2, r3
    12aa:	4618      	mov	r0, r3
    12ac:	3718      	adds	r7, #24
    12ae:	46bd      	mov	sp, r7
    12b0:	bd80      	pop	{r7, pc}

000012b2 <move>:
    12b2:	b480      	push	{r7}
    12b4:	b085      	sub	sp, #20
    12b6:	af00      	add	r7, sp, #0
    12b8:	60f8      	str	r0, [r7, #12]
    12ba:	60b9      	str	r1, [r7, #8]
    12bc:	607a      	str	r2, [r7, #4]
    12be:	e00a      	b.n	12d6 <move+0x24>
    12c0:	68bb      	ldr	r3, [r7, #8]
    12c2:	1c5a      	adds	r2, r3, #1
    12c4:	60ba      	str	r2, [r7, #8]
    12c6:	68fa      	ldr	r2, [r7, #12]
    12c8:	1c51      	adds	r1, r2, #1
    12ca:	60f9      	str	r1, [r7, #12]
    12cc:	7812      	ldrb	r2, [r2, #0]
    12ce:	701a      	strb	r2, [r3, #0]
    12d0:	687b      	ldr	r3, [r7, #4]
    12d2:	3b01      	subs	r3, #1
    12d4:	607b      	str	r3, [r7, #4]
    12d6:	687b      	ldr	r3, [r7, #4]
    12d8:	2b00      	cmp	r3, #0
    12da:	d1f1      	bne.n	12c0 <move+0xe>
    12dc:	bf00      	nop
    12de:	3714      	adds	r7, #20
    12e0:	46bd      	mov	sp, r7
    12e2:	bc80      	pop	{r7}
    12e4:	4770      	bx	lr

000012e6 <strlen>:
    12e6:	b480      	push	{r7}
    12e8:	b085      	sub	sp, #20
    12ea:	af00      	add	r7, sp, #0
    12ec:	6078      	str	r0, [r7, #4]
    12ee:	2300      	movs	r3, #0
    12f0:	60fb      	str	r3, [r7, #12]
    12f2:	e002      	b.n	12fa <strlen+0x14>
    12f4:	68fb      	ldr	r3, [r7, #12]
    12f6:	3301      	adds	r3, #1
    12f8:	60fb      	str	r3, [r7, #12]
    12fa:	68fb      	ldr	r3, [r7, #12]
    12fc:	687a      	ldr	r2, [r7, #4]
    12fe:	4413      	add	r3, r2
    1300:	781b      	ldrb	r3, [r3, #0]
    1302:	2b00      	cmp	r3, #0
    1304:	d1f6      	bne.n	12f4 <strlen+0xe>
    1306:	68fb      	ldr	r3, [r7, #12]
    1308:	4618      	mov	r0, r3
    130a:	3714      	adds	r7, #20
    130c:	46bd      	mov	sp, r7
    130e:	bc80      	pop	{r7}
    1310:	4770      	bx	lr

00001312 <fill>:
    1312:	b480      	push	{r7}
    1314:	b087      	sub	sp, #28
    1316:	af00      	add	r7, sp, #0
    1318:	60f8      	str	r0, [r7, #12]
    131a:	60b9      	str	r1, [r7, #8]
    131c:	4613      	mov	r3, r2
    131e:	71fb      	strb	r3, [r7, #7]
    1320:	2300      	movs	r3, #0
    1322:	617b      	str	r3, [r7, #20]
    1324:	e007      	b.n	1336 <fill+0x24>
    1326:	68fb      	ldr	r3, [r7, #12]
    1328:	1c5a      	adds	r2, r3, #1
    132a:	60fa      	str	r2, [r7, #12]
    132c:	79fa      	ldrb	r2, [r7, #7]
    132e:	701a      	strb	r2, [r3, #0]
    1330:	697b      	ldr	r3, [r7, #20]
    1332:	3301      	adds	r3, #1
    1334:	617b      	str	r3, [r7, #20]
    1336:	697a      	ldr	r2, [r7, #20]
    1338:	68bb      	ldr	r3, [r7, #8]
    133a:	429a      	cmp	r2, r3
    133c:	d3f3      	bcc.n	1326 <fill+0x14>
    133e:	bf00      	nop
    1340:	371c      	adds	r7, #28
    1342:	46bd      	mov	sp, r7
    1344:	bc80      	pop	{r7}
    1346:	4770      	bx	lr

00001348 <is_lower>:
    1348:	b480      	push	{r7}
    134a:	b083      	sub	sp, #12
    134c:	af00      	add	r7, sp, #0
    134e:	4603      	mov	r3, r0
    1350:	71fb      	strb	r3, [r7, #7]
    1352:	79fb      	ldrb	r3, [r7, #7]
    1354:	2b60      	cmp	r3, #96	; 0x60
    1356:	d904      	bls.n	1362 <is_lower+0x1a>
    1358:	79fb      	ldrb	r3, [r7, #7]
    135a:	2b7a      	cmp	r3, #122	; 0x7a
    135c:	d801      	bhi.n	1362 <is_lower+0x1a>
    135e:	2301      	movs	r3, #1
    1360:	e000      	b.n	1364 <is_lower+0x1c>
    1362:	2300      	movs	r3, #0
    1364:	4618      	mov	r0, r3
    1366:	370c      	adds	r7, #12
    1368:	46bd      	mov	sp, r7
    136a:	bc80      	pop	{r7}
    136c:	4770      	bx	lr

0000136e <is_upper>:
    136e:	b480      	push	{r7}
    1370:	b083      	sub	sp, #12
    1372:	af00      	add	r7, sp, #0
    1374:	4603      	mov	r3, r0
    1376:	71fb      	strb	r3, [r7, #7]
    1378:	79fb      	ldrb	r3, [r7, #7]
    137a:	2b40      	cmp	r3, #64	; 0x40
    137c:	d904      	bls.n	1388 <is_upper+0x1a>
    137e:	79fb      	ldrb	r3, [r7, #7]
    1380:	2b5a      	cmp	r3, #90	; 0x5a
    1382:	d801      	bhi.n	1388 <is_upper+0x1a>
    1384:	2301      	movs	r3, #1
    1386:	e000      	b.n	138a <is_upper+0x1c>
    1388:	2300      	movs	r3, #0
    138a:	4618      	mov	r0, r3
    138c:	370c      	adds	r7, #12
    138e:	46bd      	mov	sp, r7
    1390:	bc80      	pop	{r7}
    1392:	4770      	bx	lr

00001394 <uppercase>:
    1394:	b580      	push	{r7, lr}
    1396:	b082      	sub	sp, #8
    1398:	af00      	add	r7, sp, #0
    139a:	6078      	str	r0, [r7, #4]
    139c:	e010      	b.n	13c0 <uppercase+0x2c>
    139e:	687b      	ldr	r3, [r7, #4]
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	4618      	mov	r0, r3
    13a4:	f7ff ffd0 	bl	1348 <is_lower>
    13a8:	4603      	mov	r3, r0
    13aa:	2b00      	cmp	r3, #0
    13ac:	d005      	beq.n	13ba <uppercase+0x26>
    13ae:	687b      	ldr	r3, [r7, #4]
    13b0:	781b      	ldrb	r3, [r3, #0]
    13b2:	3b20      	subs	r3, #32
    13b4:	b2da      	uxtb	r2, r3
    13b6:	687b      	ldr	r3, [r7, #4]
    13b8:	701a      	strb	r2, [r3, #0]
    13ba:	687b      	ldr	r3, [r7, #4]
    13bc:	3301      	adds	r3, #1
    13be:	607b      	str	r3, [r7, #4]
    13c0:	687b      	ldr	r3, [r7, #4]
    13c2:	781b      	ldrb	r3, [r3, #0]
    13c4:	2b00      	cmp	r3, #0
    13c6:	d1ea      	bne.n	139e <uppercase+0xa>
    13c8:	bf00      	nop
    13ca:	3708      	adds	r7, #8
    13cc:	46bd      	mov	sp, r7
    13ce:	bd80      	pop	{r7, pc}

000013d0 <scan>:
    13d0:	b480      	push	{r7}
    13d2:	b085      	sub	sp, #20
    13d4:	af00      	add	r7, sp, #0
    13d6:	60f8      	str	r0, [r7, #12]
    13d8:	60b9      	str	r1, [r7, #8]
    13da:	4613      	mov	r3, r2
    13dc:	71fb      	strb	r3, [r7, #7]
    13de:	e002      	b.n	13e6 <scan+0x16>
    13e0:	68bb      	ldr	r3, [r7, #8]
    13e2:	3301      	adds	r3, #1
    13e4:	60bb      	str	r3, [r7, #8]
    13e6:	68bb      	ldr	r3, [r7, #8]
    13e8:	68fa      	ldr	r2, [r7, #12]
    13ea:	4413      	add	r3, r2
    13ec:	781b      	ldrb	r3, [r3, #0]
    13ee:	2b00      	cmp	r3, #0
    13f0:	d006      	beq.n	1400 <scan+0x30>
    13f2:	68bb      	ldr	r3, [r7, #8]
    13f4:	68fa      	ldr	r2, [r7, #12]
    13f6:	4413      	add	r3, r2
    13f8:	781b      	ldrb	r3, [r3, #0]
    13fa:	79fa      	ldrb	r2, [r7, #7]
    13fc:	429a      	cmp	r2, r3
    13fe:	d1ef      	bne.n	13e0 <scan+0x10>
    1400:	68bb      	ldr	r3, [r7, #8]
    1402:	4618      	mov	r0, r3
    1404:	3714      	adds	r7, #20
    1406:	46bd      	mov	sp, r7
    1408:	bc80      	pop	{r7}
    140a:	4770      	bx	lr

0000140c <skip>:
    140c:	b480      	push	{r7}
    140e:	b085      	sub	sp, #20
    1410:	af00      	add	r7, sp, #0
    1412:	60f8      	str	r0, [r7, #12]
    1414:	60b9      	str	r1, [r7, #8]
    1416:	4613      	mov	r3, r2
    1418:	71fb      	strb	r3, [r7, #7]
    141a:	e002      	b.n	1422 <skip+0x16>
    141c:	68bb      	ldr	r3, [r7, #8]
    141e:	3301      	adds	r3, #1
    1420:	60bb      	str	r3, [r7, #8]
    1422:	68bb      	ldr	r3, [r7, #8]
    1424:	68fa      	ldr	r2, [r7, #12]
    1426:	4413      	add	r3, r2
    1428:	781b      	ldrb	r3, [r3, #0]
    142a:	2b00      	cmp	r3, #0
    142c:	d006      	beq.n	143c <skip+0x30>
    142e:	68bb      	ldr	r3, [r7, #8]
    1430:	68fa      	ldr	r2, [r7, #12]
    1432:	4413      	add	r3, r2
    1434:	781b      	ldrb	r3, [r3, #0]
    1436:	79fa      	ldrb	r2, [r7, #7]
    1438:	429a      	cmp	r2, r3
    143a:	d0ef      	beq.n	141c <skip+0x10>
    143c:	68bb      	ldr	r3, [r7, #8]
    143e:	4618      	mov	r0, r3
    1440:	3714      	adds	r7, #20
    1442:	46bd      	mov	sp, r7
    1444:	bc80      	pop	{r7}
    1446:	4770      	bx	lr

00001448 <itoa>:
    1448:	b480      	push	{r7}
    144a:	b087      	sub	sp, #28
    144c:	af00      	add	r7, sp, #0
    144e:	60f8      	str	r0, [r7, #12]
    1450:	60b9      	str	r1, [r7, #8]
    1452:	607a      	str	r2, [r7, #4]
    1454:	603b      	str	r3, [r7, #0]
    1456:	2300      	movs	r3, #0
    1458:	617b      	str	r3, [r7, #20]
    145a:	683b      	ldr	r3, [r7, #0]
    145c:	1e5a      	subs	r2, r3, #1
    145e:	603a      	str	r2, [r7, #0]
    1460:	461a      	mov	r2, r3
    1462:	68bb      	ldr	r3, [r7, #8]
    1464:	4413      	add	r3, r2
    1466:	2200      	movs	r2, #0
    1468:	701a      	strb	r2, [r3, #0]
    146a:	68fb      	ldr	r3, [r7, #12]
    146c:	2b00      	cmp	r3, #0
    146e:	da24      	bge.n	14ba <itoa+0x72>
    1470:	68fb      	ldr	r3, [r7, #12]
    1472:	425b      	negs	r3, r3
    1474:	60fb      	str	r3, [r7, #12]
    1476:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    147a:	617b      	str	r3, [r7, #20]
    147c:	e01d      	b.n	14ba <itoa+0x72>
    147e:	68fb      	ldr	r3, [r7, #12]
    1480:	687a      	ldr	r2, [r7, #4]
    1482:	fb93 f2f2 	sdiv	r2, r3, r2
    1486:	6879      	ldr	r1, [r7, #4]
    1488:	fb01 f202 	mul.w	r2, r1, r2
    148c:	1a9b      	subs	r3, r3, r2
    148e:	b2db      	uxtb	r3, r3
    1490:	3330      	adds	r3, #48	; 0x30
    1492:	74fb      	strb	r3, [r7, #19]
    1494:	7cfb      	ldrb	r3, [r7, #19]
    1496:	2b39      	cmp	r3, #57	; 0x39
    1498:	d902      	bls.n	14a0 <itoa+0x58>
    149a:	7cfb      	ldrb	r3, [r7, #19]
    149c:	3307      	adds	r3, #7
    149e:	74fb      	strb	r3, [r7, #19]
    14a0:	683b      	ldr	r3, [r7, #0]
    14a2:	1e5a      	subs	r2, r3, #1
    14a4:	603a      	str	r2, [r7, #0]
    14a6:	461a      	mov	r2, r3
    14a8:	68bb      	ldr	r3, [r7, #8]
    14aa:	4413      	add	r3, r2
    14ac:	7cfa      	ldrb	r2, [r7, #19]
    14ae:	701a      	strb	r2, [r3, #0]
    14b0:	68fa      	ldr	r2, [r7, #12]
    14b2:	687b      	ldr	r3, [r7, #4]
    14b4:	fb92 f3f3 	sdiv	r3, r2, r3
    14b8:	60fb      	str	r3, [r7, #12]
    14ba:	68fb      	ldr	r3, [r7, #12]
    14bc:	2b00      	cmp	r3, #0
    14be:	d00b      	beq.n	14d8 <itoa+0x90>
    14c0:	683b      	ldr	r3, [r7, #0]
    14c2:	2b00      	cmp	r3, #0
    14c4:	dadb      	bge.n	147e <itoa+0x36>
    14c6:	e007      	b.n	14d8 <itoa+0x90>
    14c8:	683b      	ldr	r3, [r7, #0]
    14ca:	1e5a      	subs	r2, r3, #1
    14cc:	603a      	str	r2, [r7, #0]
    14ce:	461a      	mov	r2, r3
    14d0:	68bb      	ldr	r3, [r7, #8]
    14d2:	4413      	add	r3, r2
    14d4:	2230      	movs	r2, #48	; 0x30
    14d6:	701a      	strb	r2, [r3, #0]
    14d8:	683b      	ldr	r3, [r7, #0]
    14da:	2b00      	cmp	r3, #0
    14dc:	dcf4      	bgt.n	14c8 <itoa+0x80>
    14de:	697b      	ldr	r3, [r7, #20]
    14e0:	2b00      	cmp	r3, #0
    14e2:	d006      	beq.n	14f2 <itoa+0xaa>
    14e4:	683b      	ldr	r3, [r7, #0]
    14e6:	2b00      	cmp	r3, #0
    14e8:	d103      	bne.n	14f2 <itoa+0xaa>
    14ea:	68bb      	ldr	r3, [r7, #8]
    14ec:	222d      	movs	r2, #45	; 0x2d
    14ee:	701a      	strb	r2, [r3, #0]
    14f0:	e005      	b.n	14fe <itoa+0xb6>
    14f2:	683b      	ldr	r3, [r7, #0]
    14f4:	2b00      	cmp	r3, #0
    14f6:	d102      	bne.n	14fe <itoa+0xb6>
    14f8:	68bb      	ldr	r3, [r7, #8]
    14fa:	2230      	movs	r2, #48	; 0x30
    14fc:	701a      	strb	r2, [r3, #0]
    14fe:	68bb      	ldr	r3, [r7, #8]
    1500:	4618      	mov	r0, r3
    1502:	371c      	adds	r7, #28
    1504:	46bd      	mov	sp, r7
    1506:	bc80      	pop	{r7}
    1508:	4770      	bx	lr

0000150a <strcat>:
    150a:	b580      	push	{r7, lr}
    150c:	b082      	sub	sp, #8
    150e:	af00      	add	r7, sp, #0
    1510:	6078      	str	r0, [r7, #4]
    1512:	6039      	str	r1, [r7, #0]
    1514:	6878      	ldr	r0, [r7, #4]
    1516:	f7ff fee6 	bl	12e6 <strlen>
    151a:	4603      	mov	r3, r0
    151c:	461a      	mov	r2, r3
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	4413      	add	r3, r2
    1522:	607b      	str	r3, [r7, #4]
    1524:	e007      	b.n	1536 <strcat+0x2c>
    1526:	687b      	ldr	r3, [r7, #4]
    1528:	1c5a      	adds	r2, r3, #1
    152a:	607a      	str	r2, [r7, #4]
    152c:	683a      	ldr	r2, [r7, #0]
    152e:	1c51      	adds	r1, r2, #1
    1530:	6039      	str	r1, [r7, #0]
    1532:	7812      	ldrb	r2, [r2, #0]
    1534:	701a      	strb	r2, [r3, #0]
    1536:	683b      	ldr	r3, [r7, #0]
    1538:	781b      	ldrb	r3, [r3, #0]
    153a:	2b00      	cmp	r3, #0
    153c:	d1f3      	bne.n	1526 <strcat+0x1c>
    153e:	687b      	ldr	r3, [r7, #4]
    1540:	2200      	movs	r2, #0
    1542:	701a      	strb	r2, [r3, #0]
    1544:	687b      	ldr	r3, [r7, #4]
    1546:	4618      	mov	r0, r3
    1548:	3708      	adds	r7, #8
    154a:	46bd      	mov	sp, r7
    154c:	bd80      	pop	{r7, pc}

0000154e <config_pin>:
    154e:	b480      	push	{r7}
    1550:	b087      	sub	sp, #28
    1552:	af00      	add	r7, sp, #0
    1554:	60f8      	str	r0, [r7, #12]
    1556:	60b9      	str	r1, [r7, #8]
    1558:	607a      	str	r2, [r7, #4]
    155a:	68bb      	ldr	r3, [r7, #8]
    155c:	b2db      	uxtb	r3, r3
    155e:	009b      	lsls	r3, r3, #2
    1560:	b2db      	uxtb	r3, r3
    1562:	f003 031c 	and.w	r3, r3, #28
    1566:	75fb      	strb	r3, [r7, #23]
    1568:	68bb      	ldr	r3, [r7, #8]
    156a:	08da      	lsrs	r2, r3, #3
    156c:	68bb      	ldr	r3, [r7, #8]
    156e:	08d9      	lsrs	r1, r3, #3
    1570:	68fb      	ldr	r3, [r7, #12]
    1572:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
    1576:	7df9      	ldrb	r1, [r7, #23]
    1578:	200f      	movs	r0, #15
    157a:	fa00 f101 	lsl.w	r1, r0, r1
    157e:	43c9      	mvns	r1, r1
    1580:	4019      	ands	r1, r3
    1582:	68fb      	ldr	r3, [r7, #12]
    1584:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    1588:	68bb      	ldr	r3, [r7, #8]
    158a:	08da      	lsrs	r2, r3, #3
    158c:	68bb      	ldr	r3, [r7, #8]
    158e:	08d9      	lsrs	r1, r3, #3
    1590:	68fb      	ldr	r3, [r7, #12]
    1592:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
    1596:	7dfb      	ldrb	r3, [r7, #23]
    1598:	6878      	ldr	r0, [r7, #4]
    159a:	fa00 f303 	lsl.w	r3, r0, r3
    159e:	4319      	orrs	r1, r3
    15a0:	68fb      	ldr	r3, [r7, #12]
    15a2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    15a6:	bf00      	nop
    15a8:	371c      	adds	r7, #28
    15aa:	46bd      	mov	sp, r7
    15ac:	bc80      	pop	{r7}
    15ae:	4770      	bx	lr

000015b0 <read_pin>:
    15b0:	b480      	push	{r7}
    15b2:	b083      	sub	sp, #12
    15b4:	af00      	add	r7, sp, #0
    15b6:	6078      	str	r0, [r7, #4]
    15b8:	6039      	str	r1, [r7, #0]
    15ba:	687b      	ldr	r3, [r7, #4]
    15bc:	689b      	ldr	r3, [r3, #8]
    15be:	2101      	movs	r1, #1
    15c0:	683a      	ldr	r2, [r7, #0]
    15c2:	fa01 f202 	lsl.w	r2, r1, r2
    15c6:	4013      	ands	r3, r2
    15c8:	4618      	mov	r0, r3
    15ca:	370c      	adds	r7, #12
    15cc:	46bd      	mov	sp, r7
    15ce:	bc80      	pop	{r7}
    15d0:	4770      	bx	lr

000015d2 <write_pin>:
    15d2:	b480      	push	{r7}
    15d4:	b085      	sub	sp, #20
    15d6:	af00      	add	r7, sp, #0
    15d8:	60f8      	str	r0, [r7, #12]
    15da:	60b9      	str	r1, [r7, #8]
    15dc:	607a      	str	r2, [r7, #4]
    15de:	687b      	ldr	r3, [r7, #4]
    15e0:	2b00      	cmp	r3, #0
    15e2:	d009      	beq.n	15f8 <write_pin+0x26>
    15e4:	68fb      	ldr	r3, [r7, #12]
    15e6:	68db      	ldr	r3, [r3, #12]
    15e8:	2101      	movs	r1, #1
    15ea:	68ba      	ldr	r2, [r7, #8]
    15ec:	fa01 f202 	lsl.w	r2, r1, r2
    15f0:	431a      	orrs	r2, r3
    15f2:	68fb      	ldr	r3, [r7, #12]
    15f4:	60da      	str	r2, [r3, #12]
    15f6:	e009      	b.n	160c <write_pin+0x3a>
    15f8:	68fb      	ldr	r3, [r7, #12]
    15fa:	68db      	ldr	r3, [r3, #12]
    15fc:	2101      	movs	r1, #1
    15fe:	68ba      	ldr	r2, [r7, #8]
    1600:	fa01 f202 	lsl.w	r2, r1, r2
    1604:	43d2      	mvns	r2, r2
    1606:	401a      	ands	r2, r3
    1608:	68fb      	ldr	r3, [r7, #12]
    160a:	60da      	str	r2, [r3, #12]
    160c:	bf00      	nop
    160e:	3714      	adds	r7, #20
    1610:	46bd      	mov	sp, r7
    1612:	bc80      	pop	{r7}
    1614:	4770      	bx	lr

00001616 <toggle_pin>:
    1616:	b480      	push	{r7}
    1618:	b083      	sub	sp, #12
    161a:	af00      	add	r7, sp, #0
    161c:	6078      	str	r0, [r7, #4]
    161e:	6039      	str	r1, [r7, #0]
    1620:	687b      	ldr	r3, [r7, #4]
    1622:	68db      	ldr	r3, [r3, #12]
    1624:	2101      	movs	r1, #1
    1626:	683a      	ldr	r2, [r7, #0]
    1628:	fa01 f202 	lsl.w	r2, r1, r2
    162c:	405a      	eors	r2, r3
    162e:	687b      	ldr	r3, [r7, #4]
    1630:	60da      	str	r2, [r3, #12]
    1632:	bf00      	nop
    1634:	370c      	adds	r7, #12
    1636:	46bd      	mov	sp, r7
    1638:	bc80      	pop	{r7}
    163a:	4770      	bx	lr

0000163c <set_sysclock>:
    163c:	b480      	push	{r7}
    163e:	af00      	add	r7, sp, #0
    1640:	4a18      	ldr	r2, [pc, #96]	; (16a4 <set_sysclock+0x68>)
    1642:	4b18      	ldr	r3, [pc, #96]	; (16a4 <set_sysclock+0x68>)
    1644:	681b      	ldr	r3, [r3, #0]
    1646:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    164a:	6013      	str	r3, [r2, #0]
    164c:	bf00      	nop
    164e:	4b15      	ldr	r3, [pc, #84]	; (16a4 <set_sysclock+0x68>)
    1650:	681b      	ldr	r3, [r3, #0]
    1652:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
    1656:	2b00      	cmp	r3, #0
    1658:	d0f9      	beq.n	164e <set_sysclock+0x12>
    165a:	4a12      	ldr	r2, [pc, #72]	; (16a4 <set_sysclock+0x68>)
    165c:	4b11      	ldr	r3, [pc, #68]	; (16a4 <set_sysclock+0x68>)
    165e:	685b      	ldr	r3, [r3, #4]
    1660:	f443 2350 	orr.w	r3, r3, #851968	; 0xd0000
    1664:	6053      	str	r3, [r2, #4]
    1666:	4a0f      	ldr	r2, [pc, #60]	; (16a4 <set_sysclock+0x68>)
    1668:	4b0e      	ldr	r3, [pc, #56]	; (16a4 <set_sysclock+0x68>)
    166a:	681b      	ldr	r3, [r3, #0]
    166c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
    1670:	6013      	str	r3, [r2, #0]
    1672:	bf00      	nop
    1674:	4b0b      	ldr	r3, [pc, #44]	; (16a4 <set_sysclock+0x68>)
    1676:	681b      	ldr	r3, [r3, #0]
    1678:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
    167c:	2b00      	cmp	r3, #0
    167e:	d0f9      	beq.n	1674 <set_sysclock+0x38>
    1680:	4a09      	ldr	r2, [pc, #36]	; (16a8 <set_sysclock+0x6c>)
    1682:	4b09      	ldr	r3, [pc, #36]	; (16a8 <set_sysclock+0x6c>)
    1684:	681b      	ldr	r3, [r3, #0]
    1686:	f043 0312 	orr.w	r3, r3, #18
    168a:	6013      	str	r3, [r2, #0]
    168c:	4a05      	ldr	r2, [pc, #20]	; (16a4 <set_sysclock+0x68>)
    168e:	4b05      	ldr	r3, [pc, #20]	; (16a4 <set_sysclock+0x68>)
    1690:	685b      	ldr	r3, [r3, #4]
    1692:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1696:	f043 0302 	orr.w	r3, r3, #2
    169a:	6053      	str	r3, [r2, #4]
    169c:	bf00      	nop
    169e:	46bd      	mov	sp, r7
    16a0:	bc80      	pop	{r7}
    16a2:	4770      	bx	lr
    16a4:	40021000 	.word	0x40021000
    16a8:	40022000 	.word	0x40022000

000016ac <main>:
    16ac:	b580      	push	{r7, lr}
    16ae:	af00      	add	r7, sp, #0
    16b0:	f7ff ffc4 	bl	163c <set_sysclock>
    16b4:	210f      	movs	r1, #15
    16b6:	f06f 000a 	mvn.w	r0, #10
    16ba:	f000 f8ef 	bl	189c <set_int_priority>
    16be:	f001 f8f1 	bl	28a4 <config_systicks>
    16c2:	2106      	movs	r1, #6
    16c4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
    16c8:	f000 fb0c 	bl	1ce4 <rtc_init>
    16cc:	4b14      	ldr	r3, [pc, #80]	; (1720 <main+0x74>)
    16ce:	221d      	movs	r2, #29
    16d0:	619a      	str	r2, [r3, #24]
    16d2:	4b13      	ldr	r3, [pc, #76]	; (1720 <main+0x74>)
    16d4:	f44f 4280 	mov.w	r2, #16384	; 0x4000
    16d8:	61da      	str	r2, [r3, #28]
    16da:	4a11      	ldr	r2, [pc, #68]	; (1720 <main+0x74>)
    16dc:	4b10      	ldr	r3, [pc, #64]	; (1720 <main+0x74>)
    16de:	695b      	ldr	r3, [r3, #20]
    16e0:	f043 0301 	orr.w	r3, r3, #1
    16e4:	6153      	str	r3, [r2, #20]
    16e6:	2206      	movs	r2, #6
    16e8:	210d      	movs	r1, #13
    16ea:	480e      	ldr	r0, [pc, #56]	; (1724 <main+0x78>)
    16ec:	f7ff ff2f 	bl	154e <config_pin>
    16f0:	f001 fbf8 	bl	2ee4 <vt100_init>
    16f4:	2002      	movs	r0, #2
    16f6:	f7ff f83f 	bl	778 <console_init>
    16fa:	f001 f913 	bl	2924 <tvout_init>
    16fe:	2201      	movs	r2, #1
    1700:	210d      	movs	r1, #13
    1702:	4808      	ldr	r0, [pc, #32]	; (1724 <main+0x78>)
    1704:	f7ff ff65 	bl	15d2 <write_pin>
    1708:	f7ff f8b8 	bl	87c <conin>
    170c:	4603      	mov	r3, r0
    170e:	4618      	mov	r0, r3
    1710:	f7ff f85e 	bl	7d0 <conout>
    1714:	210d      	movs	r1, #13
    1716:	4803      	ldr	r0, [pc, #12]	; (1724 <main+0x78>)
    1718:	f7ff ff7d 	bl	1616 <toggle_pin>
    171c:	e7f4      	b.n	1708 <main+0x5c>
    171e:	bf00      	nop
    1720:	40021000 	.word	0x40021000
    1724:	40011000 	.word	0x40011000

00001728 <enable_interrupt>:
    1728:	b480      	push	{r7}
    172a:	b083      	sub	sp, #12
    172c:	af00      	add	r7, sp, #0
    172e:	6078      	str	r0, [r7, #4]
    1730:	687b      	ldr	r3, [r7, #4]
    1732:	2b3b      	cmp	r3, #59	; 0x3b
    1734:	dc17      	bgt.n	1766 <enable_interrupt+0x3e>
    1736:	687b      	ldr	r3, [r7, #4]
    1738:	115b      	asrs	r3, r3, #5
    173a:	009b      	lsls	r3, r3, #2
    173c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1740:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    1744:	687a      	ldr	r2, [r7, #4]
    1746:	1152      	asrs	r2, r2, #5
    1748:	0092      	lsls	r2, r2, #2
    174a:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    174e:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    1752:	6812      	ldr	r2, [r2, #0]
    1754:	6879      	ldr	r1, [r7, #4]
    1756:	f001 011f 	and.w	r1, r1, #31
    175a:	2001      	movs	r0, #1
    175c:	fa00 f101 	lsl.w	r1, r0, r1
    1760:	430a      	orrs	r2, r1
    1762:	601a      	str	r2, [r3, #0]
    1764:	e000      	b.n	1768 <enable_interrupt+0x40>
    1766:	bf00      	nop
    1768:	370c      	adds	r7, #12
    176a:	46bd      	mov	sp, r7
    176c:	bc80      	pop	{r7}
    176e:	4770      	bx	lr

00001770 <disable_interrupt>:
    1770:	b480      	push	{r7}
    1772:	b083      	sub	sp, #12
    1774:	af00      	add	r7, sp, #0
    1776:	6078      	str	r0, [r7, #4]
    1778:	687b      	ldr	r3, [r7, #4]
    177a:	2b3b      	cmp	r3, #59	; 0x3b
    177c:	dc0c      	bgt.n	1798 <disable_interrupt+0x28>
    177e:	687b      	ldr	r3, [r7, #4]
    1780:	115b      	asrs	r3, r3, #5
    1782:	009a      	lsls	r2, r3, #2
    1784:	4b07      	ldr	r3, [pc, #28]	; (17a4 <disable_interrupt+0x34>)
    1786:	4413      	add	r3, r2
    1788:	687a      	ldr	r2, [r7, #4]
    178a:	f002 021f 	and.w	r2, r2, #31
    178e:	2101      	movs	r1, #1
    1790:	fa01 f202 	lsl.w	r2, r1, r2
    1794:	601a      	str	r2, [r3, #0]
    1796:	e000      	b.n	179a <disable_interrupt+0x2a>
    1798:	bf00      	nop
    179a:	370c      	adds	r7, #12
    179c:	46bd      	mov	sp, r7
    179e:	bc80      	pop	{r7}
    17a0:	4770      	bx	lr
    17a2:	bf00      	nop
    17a4:	e000e180 	.word	0xe000e180

000017a8 <get_pending>:
    17a8:	b480      	push	{r7}
    17aa:	b083      	sub	sp, #12
    17ac:	af00      	add	r7, sp, #0
    17ae:	6078      	str	r0, [r7, #4]
    17b0:	687b      	ldr	r3, [r7, #4]
    17b2:	2b3b      	cmp	r3, #59	; 0x3b
    17b4:	dd01      	ble.n	17ba <get_pending+0x12>
    17b6:	2300      	movs	r3, #0
    17b8:	e00c      	b.n	17d4 <get_pending+0x2c>
    17ba:	687b      	ldr	r3, [r7, #4]
    17bc:	115b      	asrs	r3, r3, #5
    17be:	009a      	lsls	r2, r3, #2
    17c0:	4b07      	ldr	r3, [pc, #28]	; (17e0 <get_pending+0x38>)
    17c2:	4413      	add	r3, r2
    17c4:	681b      	ldr	r3, [r3, #0]
    17c6:	687a      	ldr	r2, [r7, #4]
    17c8:	f002 021f 	and.w	r2, r2, #31
    17cc:	2101      	movs	r1, #1
    17ce:	fa01 f202 	lsl.w	r2, r1, r2
    17d2:	4013      	ands	r3, r2
    17d4:	4618      	mov	r0, r3
    17d6:	370c      	adds	r7, #12
    17d8:	46bd      	mov	sp, r7
    17da:	bc80      	pop	{r7}
    17dc:	4770      	bx	lr
    17de:	bf00      	nop
    17e0:	e000e280 	.word	0xe000e280

000017e4 <get_active>:
    17e4:	b480      	push	{r7}
    17e6:	b083      	sub	sp, #12
    17e8:	af00      	add	r7, sp, #0
    17ea:	6078      	str	r0, [r7, #4]
    17ec:	687b      	ldr	r3, [r7, #4]
    17ee:	2b3b      	cmp	r3, #59	; 0x3b
    17f0:	dd01      	ble.n	17f6 <get_active+0x12>
    17f2:	2300      	movs	r3, #0
    17f4:	e00e      	b.n	1814 <get_active+0x30>
    17f6:	687b      	ldr	r3, [r7, #4]
    17f8:	115b      	asrs	r3, r3, #5
    17fa:	009b      	lsls	r3, r3, #2
    17fc:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1800:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1804:	681b      	ldr	r3, [r3, #0]
    1806:	687a      	ldr	r2, [r7, #4]
    1808:	f002 021f 	and.w	r2, r2, #31
    180c:	2101      	movs	r1, #1
    180e:	fa01 f202 	lsl.w	r2, r1, r2
    1812:	4013      	ands	r3, r2
    1814:	4618      	mov	r0, r3
    1816:	370c      	adds	r7, #12
    1818:	46bd      	mov	sp, r7
    181a:	bc80      	pop	{r7}
    181c:	4770      	bx	lr

0000181e <set_pending>:
    181e:	b480      	push	{r7}
    1820:	b083      	sub	sp, #12
    1822:	af00      	add	r7, sp, #0
    1824:	6078      	str	r0, [r7, #4]
    1826:	687b      	ldr	r3, [r7, #4]
    1828:	2b3b      	cmp	r3, #59	; 0x3b
    182a:	dc17      	bgt.n	185c <set_pending+0x3e>
    182c:	687b      	ldr	r3, [r7, #4]
    182e:	115b      	asrs	r3, r3, #5
    1830:	009b      	lsls	r3, r3, #2
    1832:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1836:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    183a:	687a      	ldr	r2, [r7, #4]
    183c:	1152      	asrs	r2, r2, #5
    183e:	0092      	lsls	r2, r2, #2
    1840:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    1844:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    1848:	6812      	ldr	r2, [r2, #0]
    184a:	6879      	ldr	r1, [r7, #4]
    184c:	f001 011f 	and.w	r1, r1, #31
    1850:	2001      	movs	r0, #1
    1852:	fa00 f101 	lsl.w	r1, r0, r1
    1856:	430a      	orrs	r2, r1
    1858:	601a      	str	r2, [r3, #0]
    185a:	e000      	b.n	185e <set_pending+0x40>
    185c:	bf00      	nop
    185e:	370c      	adds	r7, #12
    1860:	46bd      	mov	sp, r7
    1862:	bc80      	pop	{r7}
    1864:	4770      	bx	lr

00001866 <clear_pending>:
    1866:	b480      	push	{r7}
    1868:	b083      	sub	sp, #12
    186a:	af00      	add	r7, sp, #0
    186c:	6078      	str	r0, [r7, #4]
    186e:	687b      	ldr	r3, [r7, #4]
    1870:	2b3b      	cmp	r3, #59	; 0x3b
    1872:	dc0c      	bgt.n	188e <clear_pending+0x28>
    1874:	687b      	ldr	r3, [r7, #4]
    1876:	115b      	asrs	r3, r3, #5
    1878:	009a      	lsls	r2, r3, #2
    187a:	4b07      	ldr	r3, [pc, #28]	; (1898 <clear_pending+0x32>)
    187c:	4413      	add	r3, r2
    187e:	687a      	ldr	r2, [r7, #4]
    1880:	f002 021f 	and.w	r2, r2, #31
    1884:	2101      	movs	r1, #1
    1886:	fa01 f202 	lsl.w	r2, r1, r2
    188a:	601a      	str	r2, [r3, #0]
    188c:	e000      	b.n	1890 <clear_pending+0x2a>
    188e:	bf00      	nop
    1890:	370c      	adds	r7, #12
    1892:	46bd      	mov	sp, r7
    1894:	bc80      	pop	{r7}
    1896:	4770      	bx	lr
    1898:	e000e280 	.word	0xe000e280

0000189c <set_int_priority>:
    189c:	b480      	push	{r7}
    189e:	b083      	sub	sp, #12
    18a0:	af00      	add	r7, sp, #0
    18a2:	6078      	str	r0, [r7, #4]
    18a4:	6039      	str	r1, [r7, #0]
    18a6:	687b      	ldr	r3, [r7, #4]
    18a8:	2b00      	cmp	r3, #0
    18aa:	db0d      	blt.n	18c8 <set_int_priority+0x2c>
    18ac:	687b      	ldr	r3, [r7, #4]
    18ae:	2b3b      	cmp	r3, #59	; 0x3b
    18b0:	dc0a      	bgt.n	18c8 <set_int_priority+0x2c>
    18b2:	687b      	ldr	r3, [r7, #4]
    18b4:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    18b8:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    18bc:	683a      	ldr	r2, [r7, #0]
    18be:	b2d2      	uxtb	r2, r2
    18c0:	0112      	lsls	r2, r2, #4
    18c2:	b2d2      	uxtb	r2, r2
    18c4:	701a      	strb	r2, [r3, #0]
    18c6:	e012      	b.n	18ee <set_int_priority+0x52>
    18c8:	687b      	ldr	r3, [r7, #4]
    18ca:	2b00      	cmp	r3, #0
    18cc:	da0f      	bge.n	18ee <set_int_priority+0x52>
    18ce:	687b      	ldr	r3, [r7, #4]
    18d0:	f113 0f0f 	cmn.w	r3, #15
    18d4:	db0b      	blt.n	18ee <set_int_priority+0x52>
    18d6:	687a      	ldr	r2, [r7, #4]
    18d8:	f06f 0303 	mvn.w	r3, #3
    18dc:	1a9b      	subs	r3, r3, r2
    18de:	461a      	mov	r2, r3
    18e0:	4b05      	ldr	r3, [pc, #20]	; (18f8 <set_int_priority+0x5c>)
    18e2:	4413      	add	r3, r2
    18e4:	683a      	ldr	r2, [r7, #0]
    18e6:	b2d2      	uxtb	r2, r2
    18e8:	0112      	lsls	r2, r2, #4
    18ea:	b2d2      	uxtb	r2, r2
    18ec:	701a      	strb	r2, [r3, #0]
    18ee:	bf00      	nop
    18f0:	370c      	adds	r7, #12
    18f2:	46bd      	mov	sp, r7
    18f4:	bc80      	pop	{r7}
    18f6:	4770      	bx	lr
    18f8:	e000ed18 	.word	0xe000ed18

000018fc <leap_year>:
    18fc:	b480      	push	{r7}
    18fe:	b083      	sub	sp, #12
    1900:	af00      	add	r7, sp, #0
    1902:	6078      	str	r0, [r7, #4]
    1904:	687b      	ldr	r3, [r7, #4]
    1906:	f003 0303 	and.w	r3, r3, #3
    190a:	2b00      	cmp	r3, #0
    190c:	d11a      	bne.n	1944 <leap_year+0x48>
    190e:	687a      	ldr	r2, [r7, #4]
    1910:	4b0f      	ldr	r3, [pc, #60]	; (1950 <leap_year+0x54>)
    1912:	fba3 1302 	umull	r1, r3, r3, r2
    1916:	095b      	lsrs	r3, r3, #5
    1918:	2164      	movs	r1, #100	; 0x64
    191a:	fb01 f303 	mul.w	r3, r1, r3
    191e:	1ad3      	subs	r3, r2, r3
    1920:	2b00      	cmp	r3, #0
    1922:	d10d      	bne.n	1940 <leap_year+0x44>
    1924:	687a      	ldr	r2, [r7, #4]
    1926:	4b0a      	ldr	r3, [pc, #40]	; (1950 <leap_year+0x54>)
    1928:	fba3 1302 	umull	r1, r3, r3, r2
    192c:	09db      	lsrs	r3, r3, #7
    192e:	f44f 71c8 	mov.w	r1, #400	; 0x190
    1932:	fb01 f303 	mul.w	r3, r1, r3
    1936:	1ad3      	subs	r3, r2, r3
    1938:	2b00      	cmp	r3, #0
    193a:	d001      	beq.n	1940 <leap_year+0x44>
    193c:	2300      	movs	r3, #0
    193e:	e002      	b.n	1946 <leap_year+0x4a>
    1940:	2301      	movs	r3, #1
    1942:	e000      	b.n	1946 <leap_year+0x4a>
    1944:	2300      	movs	r3, #0
    1946:	4618      	mov	r0, r3
    1948:	370c      	adds	r7, #12
    194a:	46bd      	mov	sp, r7
    194c:	bc80      	pop	{r7}
    194e:	4770      	bx	lr
    1950:	51eb851f 	.word	0x51eb851f

00001954 <sec_per_month>:
    1954:	b480      	push	{r7}
    1956:	b085      	sub	sp, #20
    1958:	af00      	add	r7, sp, #0
    195a:	6078      	str	r0, [r7, #4]
    195c:	6039      	str	r1, [r7, #0]
    195e:	4a0d      	ldr	r2, [pc, #52]	; (1994 <sec_per_month+0x40>)
    1960:	683b      	ldr	r3, [r7, #0]
    1962:	4413      	add	r3, r2
    1964:	781b      	ldrb	r3, [r3, #0]
    1966:	461a      	mov	r2, r3
    1968:	4b0b      	ldr	r3, [pc, #44]	; (1998 <sec_per_month+0x44>)
    196a:	fb03 f302 	mul.w	r3, r3, r2
    196e:	60fb      	str	r3, [r7, #12]
    1970:	683b      	ldr	r3, [r7, #0]
    1972:	2b02      	cmp	r3, #2
    1974:	d108      	bne.n	1988 <sec_per_month+0x34>
    1976:	687b      	ldr	r3, [r7, #4]
    1978:	2b00      	cmp	r3, #0
    197a:	d005      	beq.n	1988 <sec_per_month+0x34>
    197c:	68fb      	ldr	r3, [r7, #12]
    197e:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1982:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    1986:	60fb      	str	r3, [r7, #12]
    1988:	68fb      	ldr	r3, [r7, #12]
    198a:	4618      	mov	r0, r3
    198c:	3714      	adds	r7, #20
    198e:	46bd      	mov	sp, r7
    1990:	bc80      	pop	{r7}
    1992:	4770      	bx	lr
    1994:	00003130 	.word	0x00003130
    1998:	00015180 	.word	0x00015180

0000199c <get_date_time>:
    199c:	b580      	push	{r7, lr}
    199e:	b086      	sub	sp, #24
    19a0:	af00      	add	r7, sp, #0
    19a2:	6078      	str	r0, [r7, #4]
    19a4:	4b66      	ldr	r3, [pc, #408]	; (1b40 <get_date_time+0x1a4>)
    19a6:	699b      	ldr	r3, [r3, #24]
    19a8:	041a      	lsls	r2, r3, #16
    19aa:	4b65      	ldr	r3, [pc, #404]	; (1b40 <get_date_time+0x1a4>)
    19ac:	69db      	ldr	r3, [r3, #28]
    19ae:	4413      	add	r3, r2
    19b0:	617b      	str	r3, [r7, #20]
    19b2:	687b      	ldr	r3, [r7, #4]
    19b4:	f240 72b2 	movw	r2, #1970	; 0x7b2
    19b8:	811a      	strh	r2, [r3, #8]
    19ba:	f240 70b2 	movw	r0, #1970	; 0x7b2
    19be:	f7ff ff9d 	bl	18fc <leap_year>
    19c2:	6138      	str	r0, [r7, #16]
    19c4:	e019      	b.n	19fa <get_date_time+0x5e>
    19c6:	693b      	ldr	r3, [r7, #16]
    19c8:	2b00      	cmp	r3, #0
    19ca:	d006      	beq.n	19da <get_date_time+0x3e>
    19cc:	697b      	ldr	r3, [r7, #20]
    19ce:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    19d2:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    19d6:	617b      	str	r3, [r7, #20]
    19d8:	e003      	b.n	19e2 <get_date_time+0x46>
    19da:	697a      	ldr	r2, [r7, #20]
    19dc:	4b59      	ldr	r3, [pc, #356]	; (1b44 <get_date_time+0x1a8>)
    19de:	4413      	add	r3, r2
    19e0:	617b      	str	r3, [r7, #20]
    19e2:	687b      	ldr	r3, [r7, #4]
    19e4:	891b      	ldrh	r3, [r3, #8]
    19e6:	3301      	adds	r3, #1
    19e8:	b29a      	uxth	r2, r3
    19ea:	687b      	ldr	r3, [r7, #4]
    19ec:	811a      	strh	r2, [r3, #8]
    19ee:	687b      	ldr	r3, [r7, #4]
    19f0:	891b      	ldrh	r3, [r3, #8]
    19f2:	4618      	mov	r0, r3
    19f4:	f7ff ff82 	bl	18fc <leap_year>
    19f8:	6138      	str	r0, [r7, #16]
    19fa:	693b      	ldr	r3, [r7, #16]
    19fc:	2b00      	cmp	r3, #0
    19fe:	d103      	bne.n	1a08 <get_date_time+0x6c>
    1a00:	697b      	ldr	r3, [r7, #20]
    1a02:	4a51      	ldr	r2, [pc, #324]	; (1b48 <get_date_time+0x1ac>)
    1a04:	4293      	cmp	r3, r2
    1a06:	d8de      	bhi.n	19c6 <get_date_time+0x2a>
    1a08:	693b      	ldr	r3, [r7, #16]
    1a0a:	2b00      	cmp	r3, #0
    1a0c:	d003      	beq.n	1a16 <get_date_time+0x7a>
    1a0e:	697b      	ldr	r3, [r7, #20]
    1a10:	4a4e      	ldr	r2, [pc, #312]	; (1b4c <get_date_time+0x1b0>)
    1a12:	4293      	cmp	r3, r2
    1a14:	d8d7      	bhi.n	19c6 <get_date_time+0x2a>
    1a16:	687a      	ldr	r2, [r7, #4]
    1a18:	8853      	ldrh	r3, [r2, #2]
    1a1a:	2101      	movs	r1, #1
    1a1c:	f361 1389 	bfi	r3, r1, #6, #4
    1a20:	8053      	strh	r3, [r2, #2]
    1a22:	687a      	ldr	r2, [r7, #4]
    1a24:	7893      	ldrb	r3, [r2, #2]
    1a26:	2101      	movs	r1, #1
    1a28:	f361 0345 	bfi	r3, r1, #1, #5
    1a2c:	7093      	strb	r3, [r2, #2]
    1a2e:	687a      	ldr	r2, [r7, #4]
    1a30:	6813      	ldr	r3, [r2, #0]
    1a32:	f36f 3310 	bfc	r3, #12, #5
    1a36:	6013      	str	r3, [r2, #0]
    1a38:	687a      	ldr	r2, [r7, #4]
    1a3a:	8813      	ldrh	r3, [r2, #0]
    1a3c:	f36f 138b 	bfc	r3, #6, #6
    1a40:	8013      	strh	r3, [r2, #0]
    1a42:	687a      	ldr	r2, [r7, #4]
    1a44:	7813      	ldrb	r3, [r2, #0]
    1a46:	f36f 0305 	bfc	r3, #0, #6
    1a4a:	7013      	strb	r3, [r2, #0]
    1a4c:	e011      	b.n	1a72 <get_date_time+0xd6>
    1a4e:	687b      	ldr	r3, [r7, #4]
    1a50:	885b      	ldrh	r3, [r3, #2]
    1a52:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1a56:	b2db      	uxtb	r3, r3
    1a58:	3301      	adds	r3, #1
    1a5a:	f003 030f 	and.w	r3, r3, #15
    1a5e:	b2d9      	uxtb	r1, r3
    1a60:	687a      	ldr	r2, [r7, #4]
    1a62:	8853      	ldrh	r3, [r2, #2]
    1a64:	f361 1389 	bfi	r3, r1, #6, #4
    1a68:	8053      	strh	r3, [r2, #2]
    1a6a:	697a      	ldr	r2, [r7, #20]
    1a6c:	68fb      	ldr	r3, [r7, #12]
    1a6e:	1ad3      	subs	r3, r2, r3
    1a70:	617b      	str	r3, [r7, #20]
    1a72:	687b      	ldr	r3, [r7, #4]
    1a74:	885b      	ldrh	r3, [r3, #2]
    1a76:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1a7a:	b2db      	uxtb	r3, r3
    1a7c:	4619      	mov	r1, r3
    1a7e:	6938      	ldr	r0, [r7, #16]
    1a80:	f7ff ff68 	bl	1954 <sec_per_month>
    1a84:	60f8      	str	r0, [r7, #12]
    1a86:	68fa      	ldr	r2, [r7, #12]
    1a88:	697b      	ldr	r3, [r7, #20]
    1a8a:	429a      	cmp	r2, r3
    1a8c:	d3df      	bcc.n	1a4e <get_date_time+0xb2>
    1a8e:	697b      	ldr	r3, [r7, #20]
    1a90:	4a2f      	ldr	r2, [pc, #188]	; (1b50 <get_date_time+0x1b4>)
    1a92:	fba2 2303 	umull	r2, r3, r2, r3
    1a96:	0c1b      	lsrs	r3, r3, #16
    1a98:	b2db      	uxtb	r3, r3
    1a9a:	3301      	adds	r3, #1
    1a9c:	b2db      	uxtb	r3, r3
    1a9e:	f003 031f 	and.w	r3, r3, #31
    1aa2:	b2d9      	uxtb	r1, r3
    1aa4:	687a      	ldr	r2, [r7, #4]
    1aa6:	7893      	ldrb	r3, [r2, #2]
    1aa8:	f361 0345 	bfi	r3, r1, #1, #5
    1aac:	7093      	strb	r3, [r2, #2]
    1aae:	697b      	ldr	r3, [r7, #20]
    1ab0:	4a27      	ldr	r2, [pc, #156]	; (1b50 <get_date_time+0x1b4>)
    1ab2:	fba2 1203 	umull	r1, r2, r2, r3
    1ab6:	0c12      	lsrs	r2, r2, #16
    1ab8:	4926      	ldr	r1, [pc, #152]	; (1b54 <get_date_time+0x1b8>)
    1aba:	fb01 f202 	mul.w	r2, r1, r2
    1abe:	1a9b      	subs	r3, r3, r2
    1ac0:	617b      	str	r3, [r7, #20]
    1ac2:	697b      	ldr	r3, [r7, #20]
    1ac4:	4a24      	ldr	r2, [pc, #144]	; (1b58 <get_date_time+0x1bc>)
    1ac6:	fba2 2303 	umull	r2, r3, r2, r3
    1aca:	0adb      	lsrs	r3, r3, #11
    1acc:	b2db      	uxtb	r3, r3
    1ace:	f003 031f 	and.w	r3, r3, #31
    1ad2:	b2d9      	uxtb	r1, r3
    1ad4:	687a      	ldr	r2, [r7, #4]
    1ad6:	6813      	ldr	r3, [r2, #0]
    1ad8:	f361 3310 	bfi	r3, r1, #12, #5
    1adc:	6013      	str	r3, [r2, #0]
    1ade:	697b      	ldr	r3, [r7, #20]
    1ae0:	4a1d      	ldr	r2, [pc, #116]	; (1b58 <get_date_time+0x1bc>)
    1ae2:	fba2 1203 	umull	r1, r2, r2, r3
    1ae6:	0ad2      	lsrs	r2, r2, #11
    1ae8:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1aec:	fb01 f202 	mul.w	r2, r1, r2
    1af0:	1a9b      	subs	r3, r3, r2
    1af2:	617b      	str	r3, [r7, #20]
    1af4:	697b      	ldr	r3, [r7, #20]
    1af6:	4a19      	ldr	r2, [pc, #100]	; (1b5c <get_date_time+0x1c0>)
    1af8:	fba2 2303 	umull	r2, r3, r2, r3
    1afc:	095b      	lsrs	r3, r3, #5
    1afe:	b2db      	uxtb	r3, r3
    1b00:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1b04:	b2d9      	uxtb	r1, r3
    1b06:	687a      	ldr	r2, [r7, #4]
    1b08:	8813      	ldrh	r3, [r2, #0]
    1b0a:	f361 138b 	bfi	r3, r1, #6, #6
    1b0e:	8013      	strh	r3, [r2, #0]
    1b10:	6979      	ldr	r1, [r7, #20]
    1b12:	4b12      	ldr	r3, [pc, #72]	; (1b5c <get_date_time+0x1c0>)
    1b14:	fba3 2301 	umull	r2, r3, r3, r1
    1b18:	095a      	lsrs	r2, r3, #5
    1b1a:	4613      	mov	r3, r2
    1b1c:	011b      	lsls	r3, r3, #4
    1b1e:	1a9b      	subs	r3, r3, r2
    1b20:	009b      	lsls	r3, r3, #2
    1b22:	1aca      	subs	r2, r1, r3
    1b24:	b2d3      	uxtb	r3, r2
    1b26:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1b2a:	b2d9      	uxtb	r1, r3
    1b2c:	687a      	ldr	r2, [r7, #4]
    1b2e:	7813      	ldrb	r3, [r2, #0]
    1b30:	f361 0305 	bfi	r3, r1, #0, #6
    1b34:	7013      	strb	r3, [r2, #0]
    1b36:	bf00      	nop
    1b38:	3718      	adds	r7, #24
    1b3a:	46bd      	mov	sp, r7
    1b3c:	bd80      	pop	{r7, pc}
    1b3e:	bf00      	nop
    1b40:	40002800 	.word	0x40002800
    1b44:	fe1ecc80 	.word	0xfe1ecc80
    1b48:	01e1337f 	.word	0x01e1337f
    1b4c:	01e284ff 	.word	0x01e284ff
    1b50:	c22e4507 	.word	0xc22e4507
    1b54:	00015180 	.word	0x00015180
    1b58:	91a2b3c5 	.word	0x91a2b3c5
    1b5c:	88888889 	.word	0x88888889

00001b60 <set_date_time>:
    1b60:	b580      	push	{r7, lr}
    1b62:	b086      	sub	sp, #24
    1b64:	af00      	add	r7, sp, #0
    1b66:	6078      	str	r0, [r7, #4]
    1b68:	2300      	movs	r3, #0
    1b6a:	613b      	str	r3, [r7, #16]
    1b6c:	687b      	ldr	r3, [r7, #4]
    1b6e:	891b      	ldrh	r3, [r3, #8]
    1b70:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1b74:	4293      	cmp	r3, r2
    1b76:	d803      	bhi.n	1b80 <set_date_time+0x20>
    1b78:	687b      	ldr	r3, [r7, #4]
    1b7a:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1b7e:	811a      	strh	r2, [r3, #8]
    1b80:	687b      	ldr	r3, [r7, #4]
    1b82:	891b      	ldrh	r3, [r3, #8]
    1b84:	f640 023a 	movw	r2, #2106	; 0x83a
    1b88:	4293      	cmp	r3, r2
    1b8a:	d903      	bls.n	1b94 <set_date_time+0x34>
    1b8c:	687b      	ldr	r3, [r7, #4]
    1b8e:	f640 023a 	movw	r2, #2106	; 0x83a
    1b92:	811a      	strh	r2, [r3, #8]
    1b94:	687b      	ldr	r3, [r7, #4]
    1b96:	891b      	ldrh	r3, [r3, #8]
    1b98:	4618      	mov	r0, r3
    1b9a:	f7ff feaf 	bl	18fc <leap_year>
    1b9e:	60f8      	str	r0, [r7, #12]
    1ba0:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1ba4:	617b      	str	r3, [r7, #20]
    1ba6:	e013      	b.n	1bd0 <set_date_time+0x70>
    1ba8:	6978      	ldr	r0, [r7, #20]
    1baa:	f7ff fea7 	bl	18fc <leap_year>
    1bae:	4603      	mov	r3, r0
    1bb0:	2b00      	cmp	r3, #0
    1bb2:	d006      	beq.n	1bc2 <set_date_time+0x62>
    1bb4:	693b      	ldr	r3, [r7, #16]
    1bb6:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1bba:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    1bbe:	613b      	str	r3, [r7, #16]
    1bc0:	e003      	b.n	1bca <set_date_time+0x6a>
    1bc2:	693a      	ldr	r2, [r7, #16]
    1bc4:	4b42      	ldr	r3, [pc, #264]	; (1cd0 <set_date_time+0x170>)
    1bc6:	4413      	add	r3, r2
    1bc8:	613b      	str	r3, [r7, #16]
    1bca:	697b      	ldr	r3, [r7, #20]
    1bcc:	3301      	adds	r3, #1
    1bce:	617b      	str	r3, [r7, #20]
    1bd0:	687b      	ldr	r3, [r7, #4]
    1bd2:	891b      	ldrh	r3, [r3, #8]
    1bd4:	461a      	mov	r2, r3
    1bd6:	697b      	ldr	r3, [r7, #20]
    1bd8:	429a      	cmp	r2, r3
    1bda:	d8e5      	bhi.n	1ba8 <set_date_time+0x48>
    1bdc:	2301      	movs	r3, #1
    1bde:	617b      	str	r3, [r7, #20]
    1be0:	e00a      	b.n	1bf8 <set_date_time+0x98>
    1be2:	6979      	ldr	r1, [r7, #20]
    1be4:	68f8      	ldr	r0, [r7, #12]
    1be6:	f7ff feb5 	bl	1954 <sec_per_month>
    1bea:	4602      	mov	r2, r0
    1bec:	693b      	ldr	r3, [r7, #16]
    1bee:	4413      	add	r3, r2
    1bf0:	613b      	str	r3, [r7, #16]
    1bf2:	697b      	ldr	r3, [r7, #20]
    1bf4:	3301      	adds	r3, #1
    1bf6:	617b      	str	r3, [r7, #20]
    1bf8:	687b      	ldr	r3, [r7, #4]
    1bfa:	885b      	ldrh	r3, [r3, #2]
    1bfc:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1c00:	b2db      	uxtb	r3, r3
    1c02:	461a      	mov	r2, r3
    1c04:	697b      	ldr	r3, [r7, #20]
    1c06:	429a      	cmp	r2, r3
    1c08:	d8eb      	bhi.n	1be2 <set_date_time+0x82>
    1c0a:	687b      	ldr	r3, [r7, #4]
    1c0c:	789b      	ldrb	r3, [r3, #2]
    1c0e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1c12:	b2db      	uxtb	r3, r3
    1c14:	3b01      	subs	r3, #1
    1c16:	4a2f      	ldr	r2, [pc, #188]	; (1cd4 <set_date_time+0x174>)
    1c18:	fb02 f303 	mul.w	r3, r2, r3
    1c1c:	461a      	mov	r2, r3
    1c1e:	693b      	ldr	r3, [r7, #16]
    1c20:	4413      	add	r3, r2
    1c22:	613b      	str	r3, [r7, #16]
    1c24:	687b      	ldr	r3, [r7, #4]
    1c26:	681b      	ldr	r3, [r3, #0]
    1c28:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1c2c:	b2db      	uxtb	r3, r3
    1c2e:	461a      	mov	r2, r3
    1c30:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    1c34:	fb03 f302 	mul.w	r3, r3, r2
    1c38:	461a      	mov	r2, r3
    1c3a:	693b      	ldr	r3, [r7, #16]
    1c3c:	4413      	add	r3, r2
    1c3e:	613b      	str	r3, [r7, #16]
    1c40:	687b      	ldr	r3, [r7, #4]
    1c42:	881b      	ldrh	r3, [r3, #0]
    1c44:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1c48:	b2db      	uxtb	r3, r3
    1c4a:	461a      	mov	r2, r3
    1c4c:	4613      	mov	r3, r2
    1c4e:	011b      	lsls	r3, r3, #4
    1c50:	1a9b      	subs	r3, r3, r2
    1c52:	009b      	lsls	r3, r3, #2
    1c54:	461a      	mov	r2, r3
    1c56:	693b      	ldr	r3, [r7, #16]
    1c58:	4413      	add	r3, r2
    1c5a:	613b      	str	r3, [r7, #16]
    1c5c:	687b      	ldr	r3, [r7, #4]
    1c5e:	781b      	ldrb	r3, [r3, #0]
    1c60:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1c64:	b2db      	uxtb	r3, r3
    1c66:	461a      	mov	r2, r3
    1c68:	693b      	ldr	r3, [r7, #16]
    1c6a:	4413      	add	r3, r2
    1c6c:	613b      	str	r3, [r7, #16]
    1c6e:	4a1a      	ldr	r2, [pc, #104]	; (1cd8 <set_date_time+0x178>)
    1c70:	4b19      	ldr	r3, [pc, #100]	; (1cd8 <set_date_time+0x178>)
    1c72:	69db      	ldr	r3, [r3, #28]
    1c74:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1c78:	61d3      	str	r3, [r2, #28]
    1c7a:	4a18      	ldr	r2, [pc, #96]	; (1cdc <set_date_time+0x17c>)
    1c7c:	4b17      	ldr	r3, [pc, #92]	; (1cdc <set_date_time+0x17c>)
    1c7e:	681b      	ldr	r3, [r3, #0]
    1c80:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1c84:	6013      	str	r3, [r2, #0]
    1c86:	4a16      	ldr	r2, [pc, #88]	; (1ce0 <set_date_time+0x180>)
    1c88:	4b15      	ldr	r3, [pc, #84]	; (1ce0 <set_date_time+0x180>)
    1c8a:	685b      	ldr	r3, [r3, #4]
    1c8c:	f043 0310 	orr.w	r3, r3, #16
    1c90:	6053      	str	r3, [r2, #4]
    1c92:	4a13      	ldr	r2, [pc, #76]	; (1ce0 <set_date_time+0x180>)
    1c94:	693b      	ldr	r3, [r7, #16]
    1c96:	0c1b      	lsrs	r3, r3, #16
    1c98:	6193      	str	r3, [r2, #24]
    1c9a:	4a11      	ldr	r2, [pc, #68]	; (1ce0 <set_date_time+0x180>)
    1c9c:	693b      	ldr	r3, [r7, #16]
    1c9e:	b29b      	uxth	r3, r3
    1ca0:	61d3      	str	r3, [r2, #28]
    1ca2:	4a0f      	ldr	r2, [pc, #60]	; (1ce0 <set_date_time+0x180>)
    1ca4:	4b0e      	ldr	r3, [pc, #56]	; (1ce0 <set_date_time+0x180>)
    1ca6:	685b      	ldr	r3, [r3, #4]
    1ca8:	f023 0310 	bic.w	r3, r3, #16
    1cac:	6053      	str	r3, [r2, #4]
    1cae:	bf00      	nop
    1cb0:	4b0b      	ldr	r3, [pc, #44]	; (1ce0 <set_date_time+0x180>)
    1cb2:	685b      	ldr	r3, [r3, #4]
    1cb4:	f003 0320 	and.w	r3, r3, #32
    1cb8:	2b00      	cmp	r3, #0
    1cba:	d0f9      	beq.n	1cb0 <set_date_time+0x150>
    1cbc:	4a07      	ldr	r2, [pc, #28]	; (1cdc <set_date_time+0x17c>)
    1cbe:	4b07      	ldr	r3, [pc, #28]	; (1cdc <set_date_time+0x17c>)
    1cc0:	681b      	ldr	r3, [r3, #0]
    1cc2:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1cc6:	6013      	str	r3, [r2, #0]
    1cc8:	bf00      	nop
    1cca:	3718      	adds	r7, #24
    1ccc:	46bd      	mov	sp, r7
    1cce:	bd80      	pop	{r7, pc}
    1cd0:	01e13380 	.word	0x01e13380
    1cd4:	00015180 	.word	0x00015180
    1cd8:	40021000 	.word	0x40021000
    1cdc:	40007000 	.word	0x40007000
    1ce0:	40002800 	.word	0x40002800

00001ce4 <rtc_init>:
    1ce4:	b580      	push	{r7, lr}
    1ce6:	b082      	sub	sp, #8
    1ce8:	af00      	add	r7, sp, #0
    1cea:	6078      	str	r0, [r7, #4]
    1cec:	6039      	str	r1, [r7, #0]
    1cee:	4b4a      	ldr	r3, [pc, #296]	; (1e18 <rtc_init+0x134>)
    1cf0:	685b      	ldr	r3, [r3, #4]
    1cf2:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1cf6:	4293      	cmp	r3, r2
    1cf8:	f000 8082 	beq.w	1e00 <rtc_init+0x11c>
    1cfc:	4a47      	ldr	r2, [pc, #284]	; (1e1c <rtc_init+0x138>)
    1cfe:	4b47      	ldr	r3, [pc, #284]	; (1e1c <rtc_init+0x138>)
    1d00:	69db      	ldr	r3, [r3, #28]
    1d02:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1d06:	61d3      	str	r3, [r2, #28]
    1d08:	4a45      	ldr	r2, [pc, #276]	; (1e20 <rtc_init+0x13c>)
    1d0a:	4b45      	ldr	r3, [pc, #276]	; (1e20 <rtc_init+0x13c>)
    1d0c:	681b      	ldr	r3, [r3, #0]
    1d0e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1d12:	6013      	str	r3, [r2, #0]
    1d14:	4a41      	ldr	r2, [pc, #260]	; (1e1c <rtc_init+0x138>)
    1d16:	4b41      	ldr	r3, [pc, #260]	; (1e1c <rtc_init+0x138>)
    1d18:	6a1b      	ldr	r3, [r3, #32]
    1d1a:	f043 0301 	orr.w	r3, r3, #1
    1d1e:	6213      	str	r3, [r2, #32]
    1d20:	bf00      	nop
    1d22:	4b3e      	ldr	r3, [pc, #248]	; (1e1c <rtc_init+0x138>)
    1d24:	6a1b      	ldr	r3, [r3, #32]
    1d26:	f003 0302 	and.w	r3, r3, #2
    1d2a:	2b00      	cmp	r3, #0
    1d2c:	d0f9      	beq.n	1d22 <rtc_init+0x3e>
    1d2e:	4a3b      	ldr	r2, [pc, #236]	; (1e1c <rtc_init+0x138>)
    1d30:	4b3a      	ldr	r3, [pc, #232]	; (1e1c <rtc_init+0x138>)
    1d32:	6a1b      	ldr	r3, [r3, #32]
    1d34:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1d38:	6213      	str	r3, [r2, #32]
    1d3a:	bf00      	nop
    1d3c:	4b39      	ldr	r3, [pc, #228]	; (1e24 <rtc_init+0x140>)
    1d3e:	685b      	ldr	r3, [r3, #4]
    1d40:	f003 0308 	and.w	r3, r3, #8
    1d44:	2b00      	cmp	r3, #0
    1d46:	d0f9      	beq.n	1d3c <rtc_init+0x58>
    1d48:	bf00      	nop
    1d4a:	4b36      	ldr	r3, [pc, #216]	; (1e24 <rtc_init+0x140>)
    1d4c:	685b      	ldr	r3, [r3, #4]
    1d4e:	f003 0320 	and.w	r3, r3, #32
    1d52:	2b00      	cmp	r3, #0
    1d54:	d0f9      	beq.n	1d4a <rtc_init+0x66>
    1d56:	4a33      	ldr	r2, [pc, #204]	; (1e24 <rtc_init+0x140>)
    1d58:	4b32      	ldr	r3, [pc, #200]	; (1e24 <rtc_init+0x140>)
    1d5a:	685b      	ldr	r3, [r3, #4]
    1d5c:	f043 0310 	orr.w	r3, r3, #16
    1d60:	6053      	str	r3, [r2, #4]
    1d62:	bf00      	nop
    1d64:	4b2f      	ldr	r3, [pc, #188]	; (1e24 <rtc_init+0x140>)
    1d66:	685b      	ldr	r3, [r3, #4]
    1d68:	f003 0320 	and.w	r3, r3, #32
    1d6c:	2b00      	cmp	r3, #0
    1d6e:	d0f9      	beq.n	1d64 <rtc_init+0x80>
    1d70:	492c      	ldr	r1, [pc, #176]	; (1e24 <rtc_init+0x140>)
    1d72:	4b2c      	ldr	r3, [pc, #176]	; (1e24 <rtc_init+0x140>)
    1d74:	681a      	ldr	r2, [r3, #0]
    1d76:	683b      	ldr	r3, [r7, #0]
    1d78:	4313      	orrs	r3, r2
    1d7a:	600b      	str	r3, [r1, #0]
    1d7c:	bf00      	nop
    1d7e:	4b29      	ldr	r3, [pc, #164]	; (1e24 <rtc_init+0x140>)
    1d80:	685b      	ldr	r3, [r3, #4]
    1d82:	f003 0320 	and.w	r3, r3, #32
    1d86:	2b00      	cmp	r3, #0
    1d88:	d0f9      	beq.n	1d7e <rtc_init+0x9a>
    1d8a:	4a26      	ldr	r2, [pc, #152]	; (1e24 <rtc_init+0x140>)
    1d8c:	687b      	ldr	r3, [r7, #4]
    1d8e:	03db      	lsls	r3, r3, #15
    1d90:	4925      	ldr	r1, [pc, #148]	; (1e28 <rtc_init+0x144>)
    1d92:	fba1 1303 	umull	r1, r3, r1, r3
    1d96:	099b      	lsrs	r3, r3, #6
    1d98:	3b01      	subs	r3, #1
    1d9a:	b29b      	uxth	r3, r3
    1d9c:	60d3      	str	r3, [r2, #12]
    1d9e:	bf00      	nop
    1da0:	4b20      	ldr	r3, [pc, #128]	; (1e24 <rtc_init+0x140>)
    1da2:	685b      	ldr	r3, [r3, #4]
    1da4:	f003 0320 	and.w	r3, r3, #32
    1da8:	2b00      	cmp	r3, #0
    1daa:	d0f9      	beq.n	1da0 <rtc_init+0xbc>
    1dac:	4a1d      	ldr	r2, [pc, #116]	; (1e24 <rtc_init+0x140>)
    1dae:	687b      	ldr	r3, [r7, #4]
    1db0:	03db      	lsls	r3, r3, #15
    1db2:	491d      	ldr	r1, [pc, #116]	; (1e28 <rtc_init+0x144>)
    1db4:	fba1 1303 	umull	r1, r3, r1, r3
    1db8:	099b      	lsrs	r3, r3, #6
    1dba:	3b01      	subs	r3, #1
    1dbc:	0c1b      	lsrs	r3, r3, #16
    1dbe:	f003 030f 	and.w	r3, r3, #15
    1dc2:	6093      	str	r3, [r2, #8]
    1dc4:	bf00      	nop
    1dc6:	4b17      	ldr	r3, [pc, #92]	; (1e24 <rtc_init+0x140>)
    1dc8:	685b      	ldr	r3, [r3, #4]
    1dca:	f003 0320 	and.w	r3, r3, #32
    1dce:	2b00      	cmp	r3, #0
    1dd0:	d0f9      	beq.n	1dc6 <rtc_init+0xe2>
    1dd2:	4b11      	ldr	r3, [pc, #68]	; (1e18 <rtc_init+0x134>)
    1dd4:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1dd8:	605a      	str	r2, [r3, #4]
    1dda:	4a12      	ldr	r2, [pc, #72]	; (1e24 <rtc_init+0x140>)
    1ddc:	4b11      	ldr	r3, [pc, #68]	; (1e24 <rtc_init+0x140>)
    1dde:	685b      	ldr	r3, [r3, #4]
    1de0:	f023 0310 	bic.w	r3, r3, #16
    1de4:	6053      	str	r3, [r2, #4]
    1de6:	bf00      	nop
    1de8:	4b0e      	ldr	r3, [pc, #56]	; (1e24 <rtc_init+0x140>)
    1dea:	685b      	ldr	r3, [r3, #4]
    1dec:	f003 0320 	and.w	r3, r3, #32
    1df0:	2b00      	cmp	r3, #0
    1df2:	d0f9      	beq.n	1de8 <rtc_init+0x104>
    1df4:	4a0a      	ldr	r2, [pc, #40]	; (1e20 <rtc_init+0x13c>)
    1df6:	4b0a      	ldr	r3, [pc, #40]	; (1e20 <rtc_init+0x13c>)
    1df8:	681b      	ldr	r3, [r3, #0]
    1dfa:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1dfe:	6013      	str	r3, [r2, #0]
    1e00:	210f      	movs	r1, #15
    1e02:	2003      	movs	r0, #3
    1e04:	f7ff fd4a 	bl	189c <set_int_priority>
    1e08:	2003      	movs	r0, #3
    1e0a:	f7ff fc8d 	bl	1728 <enable_interrupt>
    1e0e:	bf00      	nop
    1e10:	3708      	adds	r7, #8
    1e12:	46bd      	mov	sp, r7
    1e14:	bd80      	pop	{r7, pc}
    1e16:	bf00      	nop
    1e18:	40006c00 	.word	0x40006c00
    1e1c:	40021000 	.word	0x40021000
    1e20:	40007000 	.word	0x40007000
    1e24:	40002800 	.word	0x40002800
    1e28:	10624dd3 	.word	0x10624dd3

00001e2c <reset_backup_domain>:
    1e2c:	b480      	push	{r7}
    1e2e:	af00      	add	r7, sp, #0
    1e30:	4a0a      	ldr	r2, [pc, #40]	; (1e5c <reset_backup_domain+0x30>)
    1e32:	4b0a      	ldr	r3, [pc, #40]	; (1e5c <reset_backup_domain+0x30>)
    1e34:	69db      	ldr	r3, [r3, #28]
    1e36:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1e3a:	61d3      	str	r3, [r2, #28]
    1e3c:	4a07      	ldr	r2, [pc, #28]	; (1e5c <reset_backup_domain+0x30>)
    1e3e:	4b07      	ldr	r3, [pc, #28]	; (1e5c <reset_backup_domain+0x30>)
    1e40:	6a1b      	ldr	r3, [r3, #32]
    1e42:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1e46:	6213      	str	r3, [r2, #32]
    1e48:	4a04      	ldr	r2, [pc, #16]	; (1e5c <reset_backup_domain+0x30>)
    1e4a:	4b04      	ldr	r3, [pc, #16]	; (1e5c <reset_backup_domain+0x30>)
    1e4c:	6a1b      	ldr	r3, [r3, #32]
    1e4e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1e52:	6213      	str	r3, [r2, #32]
    1e54:	bf00      	nop
    1e56:	46bd      	mov	sp, r7
    1e58:	bc80      	pop	{r7}
    1e5a:	4770      	bx	lr
    1e5c:	40021000 	.word	0x40021000

00001e60 <rtc_clock_trim>:
    1e60:	b480      	push	{r7}
    1e62:	b083      	sub	sp, #12
    1e64:	af00      	add	r7, sp, #0
    1e66:	6078      	str	r0, [r7, #4]
    1e68:	4a34      	ldr	r2, [pc, #208]	; (1f3c <rtc_clock_trim+0xdc>)
    1e6a:	4b34      	ldr	r3, [pc, #208]	; (1f3c <rtc_clock_trim+0xdc>)
    1e6c:	69db      	ldr	r3, [r3, #28]
    1e6e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1e72:	61d3      	str	r3, [r2, #28]
    1e74:	bf00      	nop
    1e76:	4b32      	ldr	r3, [pc, #200]	; (1f40 <rtc_clock_trim+0xe0>)
    1e78:	685b      	ldr	r3, [r3, #4]
    1e7a:	f003 0308 	and.w	r3, r3, #8
    1e7e:	2b00      	cmp	r3, #0
    1e80:	d0f9      	beq.n	1e76 <rtc_clock_trim+0x16>
    1e82:	4a30      	ldr	r2, [pc, #192]	; (1f44 <rtc_clock_trim+0xe4>)
    1e84:	4b2f      	ldr	r3, [pc, #188]	; (1f44 <rtc_clock_trim+0xe4>)
    1e86:	681b      	ldr	r3, [r3, #0]
    1e88:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1e8c:	6013      	str	r3, [r2, #0]
    1e8e:	4a2c      	ldr	r2, [pc, #176]	; (1f40 <rtc_clock_trim+0xe0>)
    1e90:	4b2b      	ldr	r3, [pc, #172]	; (1f40 <rtc_clock_trim+0xe0>)
    1e92:	685b      	ldr	r3, [r3, #4]
    1e94:	f043 0310 	orr.w	r3, r3, #16
    1e98:	6053      	str	r3, [r2, #4]
    1e9a:	4a2b      	ldr	r2, [pc, #172]	; (1f48 <rtc_clock_trim+0xe8>)
    1e9c:	4b2a      	ldr	r3, [pc, #168]	; (1f48 <rtc_clock_trim+0xe8>)
    1e9e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    1ea0:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    1ea4:	62d3      	str	r3, [r2, #44]	; 0x2c
    1ea6:	687b      	ldr	r3, [r7, #4]
    1ea8:	2b00      	cmp	r3, #0
    1eaa:	d10a      	bne.n	1ec2 <rtc_clock_trim+0x62>
    1eac:	4b26      	ldr	r3, [pc, #152]	; (1f48 <rtc_clock_trim+0xe8>)
    1eae:	2200      	movs	r2, #0
    1eb0:	62da      	str	r2, [r3, #44]	; 0x2c
    1eb2:	4b23      	ldr	r3, [pc, #140]	; (1f40 <rtc_clock_trim+0xe0>)
    1eb4:	f647 72ff 	movw	r2, #32767	; 0x7fff
    1eb8:	60da      	str	r2, [r3, #12]
    1eba:	4b21      	ldr	r3, [pc, #132]	; (1f40 <rtc_clock_trim+0xe0>)
    1ebc:	2200      	movs	r2, #0
    1ebe:	609a      	str	r2, [r3, #8]
    1ec0:	e023      	b.n	1f0a <rtc_clock_trim+0xaa>
    1ec2:	687b      	ldr	r3, [r7, #4]
    1ec4:	2b00      	cmp	r3, #0
    1ec6:	dd0a      	ble.n	1ede <rtc_clock_trim+0x7e>
    1ec8:	687b      	ldr	r3, [r7, #4]
    1eca:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    1ece:	607b      	str	r3, [r7, #4]
    1ed0:	491d      	ldr	r1, [pc, #116]	; (1f48 <rtc_clock_trim+0xe8>)
    1ed2:	4b1d      	ldr	r3, [pc, #116]	; (1f48 <rtc_clock_trim+0xe8>)
    1ed4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    1ed6:	687b      	ldr	r3, [r7, #4]
    1ed8:	4313      	orrs	r3, r2
    1eda:	62cb      	str	r3, [r1, #44]	; 0x2c
    1edc:	e015      	b.n	1f0a <rtc_clock_trim+0xaa>
    1ede:	687b      	ldr	r3, [r7, #4]
    1ee0:	425b      	negs	r3, r3
    1ee2:	607b      	str	r3, [r7, #4]
    1ee4:	687b      	ldr	r3, [r7, #4]
    1ee6:	2b7f      	cmp	r3, #127	; 0x7f
    1ee8:	dd01      	ble.n	1eee <rtc_clock_trim+0x8e>
    1eea:	237f      	movs	r3, #127	; 0x7f
    1eec:	607b      	str	r3, [r7, #4]
    1eee:	4b16      	ldr	r3, [pc, #88]	; (1f48 <rtc_clock_trim+0xe8>)
    1ef0:	2200      	movs	r2, #0
    1ef2:	62da      	str	r2, [r3, #44]	; 0x2c
    1ef4:	4a12      	ldr	r2, [pc, #72]	; (1f40 <rtc_clock_trim+0xe0>)
    1ef6:	687b      	ldr	r3, [r7, #4]
    1ef8:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    1efc:	33ff      	adds	r3, #255	; 0xff
    1efe:	f3c3 030e 	ubfx	r3, r3, #0, #15
    1f02:	60d3      	str	r3, [r2, #12]
    1f04:	4b0e      	ldr	r3, [pc, #56]	; (1f40 <rtc_clock_trim+0xe0>)
    1f06:	2200      	movs	r2, #0
    1f08:	609a      	str	r2, [r3, #8]
    1f0a:	4a0d      	ldr	r2, [pc, #52]	; (1f40 <rtc_clock_trim+0xe0>)
    1f0c:	4b0c      	ldr	r3, [pc, #48]	; (1f40 <rtc_clock_trim+0xe0>)
    1f0e:	685b      	ldr	r3, [r3, #4]
    1f10:	f023 0310 	bic.w	r3, r3, #16
    1f14:	6053      	str	r3, [r2, #4]
    1f16:	bf00      	nop
    1f18:	4b09      	ldr	r3, [pc, #36]	; (1f40 <rtc_clock_trim+0xe0>)
    1f1a:	685b      	ldr	r3, [r3, #4]
    1f1c:	f003 0320 	and.w	r3, r3, #32
    1f20:	2b00      	cmp	r3, #0
    1f22:	d0f9      	beq.n	1f18 <rtc_clock_trim+0xb8>
    1f24:	4a07      	ldr	r2, [pc, #28]	; (1f44 <rtc_clock_trim+0xe4>)
    1f26:	4b07      	ldr	r3, [pc, #28]	; (1f44 <rtc_clock_trim+0xe4>)
    1f28:	681b      	ldr	r3, [r3, #0]
    1f2a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1f2e:	6013      	str	r3, [r2, #0]
    1f30:	bf00      	nop
    1f32:	370c      	adds	r7, #12
    1f34:	46bd      	mov	sp, r7
    1f36:	bc80      	pop	{r7}
    1f38:	4770      	bx	lr
    1f3a:	bf00      	nop
    1f3c:	40021000 	.word	0x40021000
    1f40:	40002800 	.word	0x40002800
    1f44:	40007000 	.word	0x40007000
    1f48:	40006c00 	.word	0x40006c00

00001f4c <rtc_set_alarm>:
    1f4c:	b480      	push	{r7}
    1f4e:	b083      	sub	sp, #12
    1f50:	af00      	add	r7, sp, #0
    1f52:	6078      	str	r0, [r7, #4]
    1f54:	bf00      	nop
    1f56:	370c      	adds	r7, #12
    1f58:	46bd      	mov	sp, r7
    1f5a:	bc80      	pop	{r7}
    1f5c:	4770      	bx	lr

00001f5e <str_to_date>:
    1f5e:	b580      	push	{r7, lr}
    1f60:	b084      	sub	sp, #16
    1f62:	af00      	add	r7, sp, #0
    1f64:	6078      	str	r0, [r7, #4]
    1f66:	6039      	str	r1, [r7, #0]
    1f68:	2300      	movs	r3, #0
    1f6a:	60fb      	str	r3, [r7, #12]
    1f6c:	2300      	movs	r3, #0
    1f6e:	60bb      	str	r3, [r7, #8]
    1f70:	e00f      	b.n	1f92 <str_to_date+0x34>
    1f72:	68ba      	ldr	r2, [r7, #8]
    1f74:	4613      	mov	r3, r2
    1f76:	009b      	lsls	r3, r3, #2
    1f78:	4413      	add	r3, r2
    1f7a:	005b      	lsls	r3, r3, #1
    1f7c:	4619      	mov	r1, r3
    1f7e:	68fb      	ldr	r3, [r7, #12]
    1f80:	1c5a      	adds	r2, r3, #1
    1f82:	60fa      	str	r2, [r7, #12]
    1f84:	461a      	mov	r2, r3
    1f86:	687b      	ldr	r3, [r7, #4]
    1f88:	4413      	add	r3, r2
    1f8a:	781b      	ldrb	r3, [r3, #0]
    1f8c:	440b      	add	r3, r1
    1f8e:	3b30      	subs	r3, #48	; 0x30
    1f90:	60bb      	str	r3, [r7, #8]
    1f92:	68fb      	ldr	r3, [r7, #12]
    1f94:	687a      	ldr	r2, [r7, #4]
    1f96:	4413      	add	r3, r2
    1f98:	781b      	ldrb	r3, [r3, #0]
    1f9a:	4618      	mov	r0, r3
    1f9c:	f7ff f8cf 	bl	113e <digit>
    1fa0:	4603      	mov	r3, r0
    1fa2:	2b00      	cmp	r3, #0
    1fa4:	d1e5      	bne.n	1f72 <str_to_date+0x14>
    1fa6:	68fb      	ldr	r3, [r7, #12]
    1fa8:	2b03      	cmp	r3, #3
    1faa:	dd05      	ble.n	1fb8 <str_to_date+0x5a>
    1fac:	68fb      	ldr	r3, [r7, #12]
    1fae:	687a      	ldr	r2, [r7, #4]
    1fb0:	4413      	add	r3, r2
    1fb2:	781b      	ldrb	r3, [r3, #0]
    1fb4:	2b2f      	cmp	r3, #47	; 0x2f
    1fb6:	d001      	beq.n	1fbc <str_to_date+0x5e>
    1fb8:	2300      	movs	r3, #0
    1fba:	e068      	b.n	208e <str_to_date+0x130>
    1fbc:	68bb      	ldr	r3, [r7, #8]
    1fbe:	b29a      	uxth	r2, r3
    1fc0:	683b      	ldr	r3, [r7, #0]
    1fc2:	811a      	strh	r2, [r3, #8]
    1fc4:	68fb      	ldr	r3, [r7, #12]
    1fc6:	3301      	adds	r3, #1
    1fc8:	60fb      	str	r3, [r7, #12]
    1fca:	2300      	movs	r3, #0
    1fcc:	60bb      	str	r3, [r7, #8]
    1fce:	e00f      	b.n	1ff0 <str_to_date+0x92>
    1fd0:	68ba      	ldr	r2, [r7, #8]
    1fd2:	4613      	mov	r3, r2
    1fd4:	009b      	lsls	r3, r3, #2
    1fd6:	4413      	add	r3, r2
    1fd8:	005b      	lsls	r3, r3, #1
    1fda:	4619      	mov	r1, r3
    1fdc:	68fb      	ldr	r3, [r7, #12]
    1fde:	1c5a      	adds	r2, r3, #1
    1fe0:	60fa      	str	r2, [r7, #12]
    1fe2:	461a      	mov	r2, r3
    1fe4:	687b      	ldr	r3, [r7, #4]
    1fe6:	4413      	add	r3, r2
    1fe8:	781b      	ldrb	r3, [r3, #0]
    1fea:	440b      	add	r3, r1
    1fec:	3b30      	subs	r3, #48	; 0x30
    1fee:	60bb      	str	r3, [r7, #8]
    1ff0:	68fb      	ldr	r3, [r7, #12]
    1ff2:	687a      	ldr	r2, [r7, #4]
    1ff4:	4413      	add	r3, r2
    1ff6:	781b      	ldrb	r3, [r3, #0]
    1ff8:	4618      	mov	r0, r3
    1ffa:	f7ff f8a0 	bl	113e <digit>
    1ffe:	4603      	mov	r3, r0
    2000:	2b00      	cmp	r3, #0
    2002:	d1e5      	bne.n	1fd0 <str_to_date+0x72>
    2004:	68fb      	ldr	r3, [r7, #12]
    2006:	2b06      	cmp	r3, #6
    2008:	dd05      	ble.n	2016 <str_to_date+0xb8>
    200a:	68fb      	ldr	r3, [r7, #12]
    200c:	687a      	ldr	r2, [r7, #4]
    200e:	4413      	add	r3, r2
    2010:	781b      	ldrb	r3, [r3, #0]
    2012:	2b2f      	cmp	r3, #47	; 0x2f
    2014:	d001      	beq.n	201a <str_to_date+0xbc>
    2016:	2300      	movs	r3, #0
    2018:	e039      	b.n	208e <str_to_date+0x130>
    201a:	68bb      	ldr	r3, [r7, #8]
    201c:	b2db      	uxtb	r3, r3
    201e:	f003 030f 	and.w	r3, r3, #15
    2022:	b2d9      	uxtb	r1, r3
    2024:	683a      	ldr	r2, [r7, #0]
    2026:	8853      	ldrh	r3, [r2, #2]
    2028:	f361 1389 	bfi	r3, r1, #6, #4
    202c:	8053      	strh	r3, [r2, #2]
    202e:	2300      	movs	r3, #0
    2030:	60bb      	str	r3, [r7, #8]
    2032:	68fb      	ldr	r3, [r7, #12]
    2034:	3301      	adds	r3, #1
    2036:	60fb      	str	r3, [r7, #12]
    2038:	e00f      	b.n	205a <str_to_date+0xfc>
    203a:	68ba      	ldr	r2, [r7, #8]
    203c:	4613      	mov	r3, r2
    203e:	009b      	lsls	r3, r3, #2
    2040:	4413      	add	r3, r2
    2042:	005b      	lsls	r3, r3, #1
    2044:	4619      	mov	r1, r3
    2046:	68fb      	ldr	r3, [r7, #12]
    2048:	1c5a      	adds	r2, r3, #1
    204a:	60fa      	str	r2, [r7, #12]
    204c:	461a      	mov	r2, r3
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	4413      	add	r3, r2
    2052:	781b      	ldrb	r3, [r3, #0]
    2054:	440b      	add	r3, r1
    2056:	3b30      	subs	r3, #48	; 0x30
    2058:	60bb      	str	r3, [r7, #8]
    205a:	68fb      	ldr	r3, [r7, #12]
    205c:	687a      	ldr	r2, [r7, #4]
    205e:	4413      	add	r3, r2
    2060:	781b      	ldrb	r3, [r3, #0]
    2062:	4618      	mov	r0, r3
    2064:	f7ff f86b 	bl	113e <digit>
    2068:	4603      	mov	r3, r0
    206a:	2b00      	cmp	r3, #0
    206c:	d1e5      	bne.n	203a <str_to_date+0xdc>
    206e:	68fb      	ldr	r3, [r7, #12]
    2070:	2b09      	cmp	r3, #9
    2072:	dc01      	bgt.n	2078 <str_to_date+0x11a>
    2074:	2300      	movs	r3, #0
    2076:	e00a      	b.n	208e <str_to_date+0x130>
    2078:	68bb      	ldr	r3, [r7, #8]
    207a:	b2db      	uxtb	r3, r3
    207c:	f003 031f 	and.w	r3, r3, #31
    2080:	b2d9      	uxtb	r1, r3
    2082:	683a      	ldr	r2, [r7, #0]
    2084:	7893      	ldrb	r3, [r2, #2]
    2086:	f361 0345 	bfi	r3, r1, #1, #5
    208a:	7093      	strb	r3, [r2, #2]
    208c:	2301      	movs	r3, #1
    208e:	4618      	mov	r0, r3
    2090:	3710      	adds	r7, #16
    2092:	46bd      	mov	sp, r7
    2094:	bd80      	pop	{r7, pc}

00002096 <str_to_time>:
    2096:	b580      	push	{r7, lr}
    2098:	b084      	sub	sp, #16
    209a:	af00      	add	r7, sp, #0
    209c:	6078      	str	r0, [r7, #4]
    209e:	6039      	str	r1, [r7, #0]
    20a0:	2300      	movs	r3, #0
    20a2:	60fb      	str	r3, [r7, #12]
    20a4:	2300      	movs	r3, #0
    20a6:	72fb      	strb	r3, [r7, #11]
    20a8:	e010      	b.n	20cc <str_to_time+0x36>
    20aa:	7afb      	ldrb	r3, [r7, #11]
    20ac:	461a      	mov	r2, r3
    20ae:	0092      	lsls	r2, r2, #2
    20b0:	4413      	add	r3, r2
    20b2:	005b      	lsls	r3, r3, #1
    20b4:	b2da      	uxtb	r2, r3
    20b6:	68fb      	ldr	r3, [r7, #12]
    20b8:	1c59      	adds	r1, r3, #1
    20ba:	60f9      	str	r1, [r7, #12]
    20bc:	4619      	mov	r1, r3
    20be:	687b      	ldr	r3, [r7, #4]
    20c0:	440b      	add	r3, r1
    20c2:	781b      	ldrb	r3, [r3, #0]
    20c4:	4413      	add	r3, r2
    20c6:	b2db      	uxtb	r3, r3
    20c8:	3b30      	subs	r3, #48	; 0x30
    20ca:	72fb      	strb	r3, [r7, #11]
    20cc:	68fb      	ldr	r3, [r7, #12]
    20ce:	687a      	ldr	r2, [r7, #4]
    20d0:	4413      	add	r3, r2
    20d2:	781b      	ldrb	r3, [r3, #0]
    20d4:	4618      	mov	r0, r3
    20d6:	f7ff f832 	bl	113e <digit>
    20da:	4603      	mov	r3, r0
    20dc:	2b00      	cmp	r3, #0
    20de:	d1e4      	bne.n	20aa <str_to_time+0x14>
    20e0:	7afb      	ldrb	r3, [r7, #11]
    20e2:	2b17      	cmp	r3, #23
    20e4:	d805      	bhi.n	20f2 <str_to_time+0x5c>
    20e6:	68fb      	ldr	r3, [r7, #12]
    20e8:	687a      	ldr	r2, [r7, #4]
    20ea:	4413      	add	r3, r2
    20ec:	781b      	ldrb	r3, [r3, #0]
    20ee:	2b3a      	cmp	r3, #58	; 0x3a
    20f0:	d001      	beq.n	20f6 <str_to_time+0x60>
    20f2:	2300      	movs	r3, #0
    20f4:	e06d      	b.n	21d2 <str_to_time+0x13c>
    20f6:	7afb      	ldrb	r3, [r7, #11]
    20f8:	f003 031f 	and.w	r3, r3, #31
    20fc:	b2d9      	uxtb	r1, r3
    20fe:	683a      	ldr	r2, [r7, #0]
    2100:	6813      	ldr	r3, [r2, #0]
    2102:	f361 3310 	bfi	r3, r1, #12, #5
    2106:	6013      	str	r3, [r2, #0]
    2108:	68fb      	ldr	r3, [r7, #12]
    210a:	3301      	adds	r3, #1
    210c:	60fb      	str	r3, [r7, #12]
    210e:	2300      	movs	r3, #0
    2110:	72fb      	strb	r3, [r7, #11]
    2112:	e010      	b.n	2136 <str_to_time+0xa0>
    2114:	7afb      	ldrb	r3, [r7, #11]
    2116:	461a      	mov	r2, r3
    2118:	0092      	lsls	r2, r2, #2
    211a:	4413      	add	r3, r2
    211c:	005b      	lsls	r3, r3, #1
    211e:	b2da      	uxtb	r2, r3
    2120:	68fb      	ldr	r3, [r7, #12]
    2122:	1c59      	adds	r1, r3, #1
    2124:	60f9      	str	r1, [r7, #12]
    2126:	4619      	mov	r1, r3
    2128:	687b      	ldr	r3, [r7, #4]
    212a:	440b      	add	r3, r1
    212c:	781b      	ldrb	r3, [r3, #0]
    212e:	4413      	add	r3, r2
    2130:	b2db      	uxtb	r3, r3
    2132:	3b30      	subs	r3, #48	; 0x30
    2134:	72fb      	strb	r3, [r7, #11]
    2136:	68fb      	ldr	r3, [r7, #12]
    2138:	687a      	ldr	r2, [r7, #4]
    213a:	4413      	add	r3, r2
    213c:	781b      	ldrb	r3, [r3, #0]
    213e:	4618      	mov	r0, r3
    2140:	f7fe fffd 	bl	113e <digit>
    2144:	4603      	mov	r3, r0
    2146:	2b00      	cmp	r3, #0
    2148:	d1e4      	bne.n	2114 <str_to_time+0x7e>
    214a:	7afb      	ldrb	r3, [r7, #11]
    214c:	2b3b      	cmp	r3, #59	; 0x3b
    214e:	d805      	bhi.n	215c <str_to_time+0xc6>
    2150:	68fb      	ldr	r3, [r7, #12]
    2152:	687a      	ldr	r2, [r7, #4]
    2154:	4413      	add	r3, r2
    2156:	781b      	ldrb	r3, [r3, #0]
    2158:	2b3a      	cmp	r3, #58	; 0x3a
    215a:	d001      	beq.n	2160 <str_to_time+0xca>
    215c:	2300      	movs	r3, #0
    215e:	e038      	b.n	21d2 <str_to_time+0x13c>
    2160:	7afb      	ldrb	r3, [r7, #11]
    2162:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2166:	b2d9      	uxtb	r1, r3
    2168:	683a      	ldr	r2, [r7, #0]
    216a:	8813      	ldrh	r3, [r2, #0]
    216c:	f361 138b 	bfi	r3, r1, #6, #6
    2170:	8013      	strh	r3, [r2, #0]
    2172:	2300      	movs	r3, #0
    2174:	72fb      	strb	r3, [r7, #11]
    2176:	68fb      	ldr	r3, [r7, #12]
    2178:	3301      	adds	r3, #1
    217a:	60fb      	str	r3, [r7, #12]
    217c:	e010      	b.n	21a0 <str_to_time+0x10a>
    217e:	7afb      	ldrb	r3, [r7, #11]
    2180:	461a      	mov	r2, r3
    2182:	0092      	lsls	r2, r2, #2
    2184:	4413      	add	r3, r2
    2186:	005b      	lsls	r3, r3, #1
    2188:	b2da      	uxtb	r2, r3
    218a:	68fb      	ldr	r3, [r7, #12]
    218c:	1c59      	adds	r1, r3, #1
    218e:	60f9      	str	r1, [r7, #12]
    2190:	4619      	mov	r1, r3
    2192:	687b      	ldr	r3, [r7, #4]
    2194:	440b      	add	r3, r1
    2196:	781b      	ldrb	r3, [r3, #0]
    2198:	4413      	add	r3, r2
    219a:	b2db      	uxtb	r3, r3
    219c:	3b30      	subs	r3, #48	; 0x30
    219e:	72fb      	strb	r3, [r7, #11]
    21a0:	68fb      	ldr	r3, [r7, #12]
    21a2:	687a      	ldr	r2, [r7, #4]
    21a4:	4413      	add	r3, r2
    21a6:	781b      	ldrb	r3, [r3, #0]
    21a8:	4618      	mov	r0, r3
    21aa:	f7fe ffc8 	bl	113e <digit>
    21ae:	4603      	mov	r3, r0
    21b0:	2b00      	cmp	r3, #0
    21b2:	d1e4      	bne.n	217e <str_to_time+0xe8>
    21b4:	7afb      	ldrb	r3, [r7, #11]
    21b6:	2b3b      	cmp	r3, #59	; 0x3b
    21b8:	d901      	bls.n	21be <str_to_time+0x128>
    21ba:	2300      	movs	r3, #0
    21bc:	e009      	b.n	21d2 <str_to_time+0x13c>
    21be:	7afb      	ldrb	r3, [r7, #11]
    21c0:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    21c4:	b2d9      	uxtb	r1, r3
    21c6:	683a      	ldr	r2, [r7, #0]
    21c8:	7813      	ldrb	r3, [r2, #0]
    21ca:	f361 0305 	bfi	r3, r1, #0, #6
    21ce:	7013      	strb	r3, [r2, #0]
    21d0:	2301      	movs	r3, #1
    21d2:	4618      	mov	r0, r3
    21d4:	3710      	adds	r7, #16
    21d6:	46bd      	mov	sp, r7
    21d8:	bd80      	pop	{r7, pc}

000021da <date_str>:
    21da:	b480      	push	{r7}
    21dc:	b085      	sub	sp, #20
    21de:	af00      	add	r7, sp, #0
    21e0:	6078      	str	r0, [r7, #4]
    21e2:	6039      	str	r1, [r7, #0]
    21e4:	2300      	movs	r3, #0
    21e6:	60fb      	str	r3, [r7, #12]
    21e8:	687b      	ldr	r3, [r7, #4]
    21ea:	891b      	ldrh	r3, [r3, #8]
    21ec:	60bb      	str	r3, [r7, #8]
    21ee:	68fb      	ldr	r3, [r7, #12]
    21f0:	1c5a      	adds	r2, r3, #1
    21f2:	60fa      	str	r2, [r7, #12]
    21f4:	461a      	mov	r2, r3
    21f6:	683b      	ldr	r3, [r7, #0]
    21f8:	4413      	add	r3, r2
    21fa:	68ba      	ldr	r2, [r7, #8]
    21fc:	495d      	ldr	r1, [pc, #372]	; (2374 <date_str+0x19a>)
    21fe:	fba1 1202 	umull	r1, r2, r1, r2
    2202:	0992      	lsrs	r2, r2, #6
    2204:	b2d2      	uxtb	r2, r2
    2206:	3230      	adds	r2, #48	; 0x30
    2208:	b2d2      	uxtb	r2, r2
    220a:	701a      	strb	r2, [r3, #0]
    220c:	68bb      	ldr	r3, [r7, #8]
    220e:	4a59      	ldr	r2, [pc, #356]	; (2374 <date_str+0x19a>)
    2210:	fba2 1203 	umull	r1, r2, r2, r3
    2214:	0992      	lsrs	r2, r2, #6
    2216:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    221a:	fb01 f202 	mul.w	r2, r1, r2
    221e:	1a9b      	subs	r3, r3, r2
    2220:	60bb      	str	r3, [r7, #8]
    2222:	68fb      	ldr	r3, [r7, #12]
    2224:	1c5a      	adds	r2, r3, #1
    2226:	60fa      	str	r2, [r7, #12]
    2228:	461a      	mov	r2, r3
    222a:	683b      	ldr	r3, [r7, #0]
    222c:	4413      	add	r3, r2
    222e:	68ba      	ldr	r2, [r7, #8]
    2230:	4951      	ldr	r1, [pc, #324]	; (2378 <date_str+0x19e>)
    2232:	fba1 1202 	umull	r1, r2, r1, r2
    2236:	0952      	lsrs	r2, r2, #5
    2238:	b2d2      	uxtb	r2, r2
    223a:	3230      	adds	r2, #48	; 0x30
    223c:	b2d2      	uxtb	r2, r2
    223e:	701a      	strb	r2, [r3, #0]
    2240:	68bb      	ldr	r3, [r7, #8]
    2242:	4a4d      	ldr	r2, [pc, #308]	; (2378 <date_str+0x19e>)
    2244:	fba2 1203 	umull	r1, r2, r2, r3
    2248:	0952      	lsrs	r2, r2, #5
    224a:	2164      	movs	r1, #100	; 0x64
    224c:	fb01 f202 	mul.w	r2, r1, r2
    2250:	1a9b      	subs	r3, r3, r2
    2252:	60bb      	str	r3, [r7, #8]
    2254:	68fb      	ldr	r3, [r7, #12]
    2256:	1c5a      	adds	r2, r3, #1
    2258:	60fa      	str	r2, [r7, #12]
    225a:	461a      	mov	r2, r3
    225c:	683b      	ldr	r3, [r7, #0]
    225e:	4413      	add	r3, r2
    2260:	68ba      	ldr	r2, [r7, #8]
    2262:	4946      	ldr	r1, [pc, #280]	; (237c <date_str+0x1a2>)
    2264:	fba1 1202 	umull	r1, r2, r1, r2
    2268:	08d2      	lsrs	r2, r2, #3
    226a:	b2d2      	uxtb	r2, r2
    226c:	3230      	adds	r2, #48	; 0x30
    226e:	b2d2      	uxtb	r2, r2
    2270:	701a      	strb	r2, [r3, #0]
    2272:	68fb      	ldr	r3, [r7, #12]
    2274:	1c5a      	adds	r2, r3, #1
    2276:	60fa      	str	r2, [r7, #12]
    2278:	461a      	mov	r2, r3
    227a:	683b      	ldr	r3, [r7, #0]
    227c:	1898      	adds	r0, r3, r2
    227e:	68b9      	ldr	r1, [r7, #8]
    2280:	4b3e      	ldr	r3, [pc, #248]	; (237c <date_str+0x1a2>)
    2282:	fba3 2301 	umull	r2, r3, r3, r1
    2286:	08da      	lsrs	r2, r3, #3
    2288:	4613      	mov	r3, r2
    228a:	009b      	lsls	r3, r3, #2
    228c:	4413      	add	r3, r2
    228e:	005b      	lsls	r3, r3, #1
    2290:	1aca      	subs	r2, r1, r3
    2292:	b2d3      	uxtb	r3, r2
    2294:	3330      	adds	r3, #48	; 0x30
    2296:	b2db      	uxtb	r3, r3
    2298:	7003      	strb	r3, [r0, #0]
    229a:	68fb      	ldr	r3, [r7, #12]
    229c:	1c5a      	adds	r2, r3, #1
    229e:	60fa      	str	r2, [r7, #12]
    22a0:	461a      	mov	r2, r3
    22a2:	683b      	ldr	r3, [r7, #0]
    22a4:	4413      	add	r3, r2
    22a6:	222f      	movs	r2, #47	; 0x2f
    22a8:	701a      	strb	r2, [r3, #0]
    22aa:	687b      	ldr	r3, [r7, #4]
    22ac:	885b      	ldrh	r3, [r3, #2]
    22ae:	f3c3 1383 	ubfx	r3, r3, #6, #4
    22b2:	b2db      	uxtb	r3, r3
    22b4:	60bb      	str	r3, [r7, #8]
    22b6:	68fb      	ldr	r3, [r7, #12]
    22b8:	1c5a      	adds	r2, r3, #1
    22ba:	60fa      	str	r2, [r7, #12]
    22bc:	461a      	mov	r2, r3
    22be:	683b      	ldr	r3, [r7, #0]
    22c0:	4413      	add	r3, r2
    22c2:	68ba      	ldr	r2, [r7, #8]
    22c4:	492d      	ldr	r1, [pc, #180]	; (237c <date_str+0x1a2>)
    22c6:	fba1 1202 	umull	r1, r2, r1, r2
    22ca:	08d2      	lsrs	r2, r2, #3
    22cc:	b2d2      	uxtb	r2, r2
    22ce:	3230      	adds	r2, #48	; 0x30
    22d0:	b2d2      	uxtb	r2, r2
    22d2:	701a      	strb	r2, [r3, #0]
    22d4:	68fb      	ldr	r3, [r7, #12]
    22d6:	1c5a      	adds	r2, r3, #1
    22d8:	60fa      	str	r2, [r7, #12]
    22da:	461a      	mov	r2, r3
    22dc:	683b      	ldr	r3, [r7, #0]
    22de:	1898      	adds	r0, r3, r2
    22e0:	68b9      	ldr	r1, [r7, #8]
    22e2:	4b26      	ldr	r3, [pc, #152]	; (237c <date_str+0x1a2>)
    22e4:	fba3 2301 	umull	r2, r3, r3, r1
    22e8:	08da      	lsrs	r2, r3, #3
    22ea:	4613      	mov	r3, r2
    22ec:	009b      	lsls	r3, r3, #2
    22ee:	4413      	add	r3, r2
    22f0:	005b      	lsls	r3, r3, #1
    22f2:	1aca      	subs	r2, r1, r3
    22f4:	b2d3      	uxtb	r3, r2
    22f6:	3330      	adds	r3, #48	; 0x30
    22f8:	b2db      	uxtb	r3, r3
    22fa:	7003      	strb	r3, [r0, #0]
    22fc:	68fb      	ldr	r3, [r7, #12]
    22fe:	1c5a      	adds	r2, r3, #1
    2300:	60fa      	str	r2, [r7, #12]
    2302:	461a      	mov	r2, r3
    2304:	683b      	ldr	r3, [r7, #0]
    2306:	4413      	add	r3, r2
    2308:	222f      	movs	r2, #47	; 0x2f
    230a:	701a      	strb	r2, [r3, #0]
    230c:	687b      	ldr	r3, [r7, #4]
    230e:	789b      	ldrb	r3, [r3, #2]
    2310:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2314:	b2db      	uxtb	r3, r3
    2316:	60bb      	str	r3, [r7, #8]
    2318:	68fb      	ldr	r3, [r7, #12]
    231a:	1c5a      	adds	r2, r3, #1
    231c:	60fa      	str	r2, [r7, #12]
    231e:	461a      	mov	r2, r3
    2320:	683b      	ldr	r3, [r7, #0]
    2322:	4413      	add	r3, r2
    2324:	68ba      	ldr	r2, [r7, #8]
    2326:	4915      	ldr	r1, [pc, #84]	; (237c <date_str+0x1a2>)
    2328:	fba1 1202 	umull	r1, r2, r1, r2
    232c:	08d2      	lsrs	r2, r2, #3
    232e:	b2d2      	uxtb	r2, r2
    2330:	3230      	adds	r2, #48	; 0x30
    2332:	b2d2      	uxtb	r2, r2
    2334:	701a      	strb	r2, [r3, #0]
    2336:	68fb      	ldr	r3, [r7, #12]
    2338:	1c5a      	adds	r2, r3, #1
    233a:	60fa      	str	r2, [r7, #12]
    233c:	461a      	mov	r2, r3
    233e:	683b      	ldr	r3, [r7, #0]
    2340:	1898      	adds	r0, r3, r2
    2342:	68b9      	ldr	r1, [r7, #8]
    2344:	4b0d      	ldr	r3, [pc, #52]	; (237c <date_str+0x1a2>)
    2346:	fba3 2301 	umull	r2, r3, r3, r1
    234a:	08da      	lsrs	r2, r3, #3
    234c:	4613      	mov	r3, r2
    234e:	009b      	lsls	r3, r3, #2
    2350:	4413      	add	r3, r2
    2352:	005b      	lsls	r3, r3, #1
    2354:	1aca      	subs	r2, r1, r3
    2356:	b2d3      	uxtb	r3, r2
    2358:	3330      	adds	r3, #48	; 0x30
    235a:	b2db      	uxtb	r3, r3
    235c:	7003      	strb	r3, [r0, #0]
    235e:	68fb      	ldr	r3, [r7, #12]
    2360:	683a      	ldr	r2, [r7, #0]
    2362:	4413      	add	r3, r2
    2364:	2200      	movs	r2, #0
    2366:	701a      	strb	r2, [r3, #0]
    2368:	bf00      	nop
    236a:	3714      	adds	r7, #20
    236c:	46bd      	mov	sp, r7
    236e:	bc80      	pop	{r7}
    2370:	4770      	bx	lr
    2372:	bf00      	nop
    2374:	10624dd3 	.word	0x10624dd3
    2378:	51eb851f 	.word	0x51eb851f
    237c:	cccccccd 	.word	0xcccccccd

00002380 <time_str>:
    2380:	b480      	push	{r7}
    2382:	b085      	sub	sp, #20
    2384:	af00      	add	r7, sp, #0
    2386:	6078      	str	r0, [r7, #4]
    2388:	6039      	str	r1, [r7, #0]
    238a:	2300      	movs	r3, #0
    238c:	60fb      	str	r3, [r7, #12]
    238e:	687b      	ldr	r3, [r7, #4]
    2390:	681b      	ldr	r3, [r3, #0]
    2392:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2396:	b2db      	uxtb	r3, r3
    2398:	60bb      	str	r3, [r7, #8]
    239a:	68fb      	ldr	r3, [r7, #12]
    239c:	1c5a      	adds	r2, r3, #1
    239e:	60fa      	str	r2, [r7, #12]
    23a0:	461a      	mov	r2, r3
    23a2:	683b      	ldr	r3, [r7, #0]
    23a4:	4413      	add	r3, r2
    23a6:	68ba      	ldr	r2, [r7, #8]
    23a8:	4943      	ldr	r1, [pc, #268]	; (24b8 <time_str+0x138>)
    23aa:	fba1 1202 	umull	r1, r2, r1, r2
    23ae:	08d2      	lsrs	r2, r2, #3
    23b0:	b2d2      	uxtb	r2, r2
    23b2:	3230      	adds	r2, #48	; 0x30
    23b4:	b2d2      	uxtb	r2, r2
    23b6:	701a      	strb	r2, [r3, #0]
    23b8:	68fb      	ldr	r3, [r7, #12]
    23ba:	1c5a      	adds	r2, r3, #1
    23bc:	60fa      	str	r2, [r7, #12]
    23be:	461a      	mov	r2, r3
    23c0:	683b      	ldr	r3, [r7, #0]
    23c2:	1898      	adds	r0, r3, r2
    23c4:	68b9      	ldr	r1, [r7, #8]
    23c6:	4b3c      	ldr	r3, [pc, #240]	; (24b8 <time_str+0x138>)
    23c8:	fba3 2301 	umull	r2, r3, r3, r1
    23cc:	08da      	lsrs	r2, r3, #3
    23ce:	4613      	mov	r3, r2
    23d0:	009b      	lsls	r3, r3, #2
    23d2:	4413      	add	r3, r2
    23d4:	005b      	lsls	r3, r3, #1
    23d6:	1aca      	subs	r2, r1, r3
    23d8:	b2d3      	uxtb	r3, r2
    23da:	3330      	adds	r3, #48	; 0x30
    23dc:	b2db      	uxtb	r3, r3
    23de:	7003      	strb	r3, [r0, #0]
    23e0:	68fb      	ldr	r3, [r7, #12]
    23e2:	1c5a      	adds	r2, r3, #1
    23e4:	60fa      	str	r2, [r7, #12]
    23e6:	461a      	mov	r2, r3
    23e8:	683b      	ldr	r3, [r7, #0]
    23ea:	4413      	add	r3, r2
    23ec:	223a      	movs	r2, #58	; 0x3a
    23ee:	701a      	strb	r2, [r3, #0]
    23f0:	687b      	ldr	r3, [r7, #4]
    23f2:	881b      	ldrh	r3, [r3, #0]
    23f4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    23f8:	b2db      	uxtb	r3, r3
    23fa:	60bb      	str	r3, [r7, #8]
    23fc:	68fb      	ldr	r3, [r7, #12]
    23fe:	1c5a      	adds	r2, r3, #1
    2400:	60fa      	str	r2, [r7, #12]
    2402:	461a      	mov	r2, r3
    2404:	683b      	ldr	r3, [r7, #0]
    2406:	4413      	add	r3, r2
    2408:	68ba      	ldr	r2, [r7, #8]
    240a:	492b      	ldr	r1, [pc, #172]	; (24b8 <time_str+0x138>)
    240c:	fba1 1202 	umull	r1, r2, r1, r2
    2410:	08d2      	lsrs	r2, r2, #3
    2412:	b2d2      	uxtb	r2, r2
    2414:	3230      	adds	r2, #48	; 0x30
    2416:	b2d2      	uxtb	r2, r2
    2418:	701a      	strb	r2, [r3, #0]
    241a:	68fb      	ldr	r3, [r7, #12]
    241c:	1c5a      	adds	r2, r3, #1
    241e:	60fa      	str	r2, [r7, #12]
    2420:	461a      	mov	r2, r3
    2422:	683b      	ldr	r3, [r7, #0]
    2424:	1898      	adds	r0, r3, r2
    2426:	68b9      	ldr	r1, [r7, #8]
    2428:	4b23      	ldr	r3, [pc, #140]	; (24b8 <time_str+0x138>)
    242a:	fba3 2301 	umull	r2, r3, r3, r1
    242e:	08da      	lsrs	r2, r3, #3
    2430:	4613      	mov	r3, r2
    2432:	009b      	lsls	r3, r3, #2
    2434:	4413      	add	r3, r2
    2436:	005b      	lsls	r3, r3, #1
    2438:	1aca      	subs	r2, r1, r3
    243a:	b2d3      	uxtb	r3, r2
    243c:	3330      	adds	r3, #48	; 0x30
    243e:	b2db      	uxtb	r3, r3
    2440:	7003      	strb	r3, [r0, #0]
    2442:	68fb      	ldr	r3, [r7, #12]
    2444:	1c5a      	adds	r2, r3, #1
    2446:	60fa      	str	r2, [r7, #12]
    2448:	461a      	mov	r2, r3
    244a:	683b      	ldr	r3, [r7, #0]
    244c:	4413      	add	r3, r2
    244e:	223a      	movs	r2, #58	; 0x3a
    2450:	701a      	strb	r2, [r3, #0]
    2452:	687b      	ldr	r3, [r7, #4]
    2454:	781b      	ldrb	r3, [r3, #0]
    2456:	f3c3 0305 	ubfx	r3, r3, #0, #6
    245a:	b2db      	uxtb	r3, r3
    245c:	60bb      	str	r3, [r7, #8]
    245e:	68fb      	ldr	r3, [r7, #12]
    2460:	1c5a      	adds	r2, r3, #1
    2462:	60fa      	str	r2, [r7, #12]
    2464:	461a      	mov	r2, r3
    2466:	683b      	ldr	r3, [r7, #0]
    2468:	4413      	add	r3, r2
    246a:	68ba      	ldr	r2, [r7, #8]
    246c:	4912      	ldr	r1, [pc, #72]	; (24b8 <time_str+0x138>)
    246e:	fba1 1202 	umull	r1, r2, r1, r2
    2472:	08d2      	lsrs	r2, r2, #3
    2474:	b2d2      	uxtb	r2, r2
    2476:	3230      	adds	r2, #48	; 0x30
    2478:	b2d2      	uxtb	r2, r2
    247a:	701a      	strb	r2, [r3, #0]
    247c:	68fb      	ldr	r3, [r7, #12]
    247e:	1c5a      	adds	r2, r3, #1
    2480:	60fa      	str	r2, [r7, #12]
    2482:	461a      	mov	r2, r3
    2484:	683b      	ldr	r3, [r7, #0]
    2486:	1898      	adds	r0, r3, r2
    2488:	68b9      	ldr	r1, [r7, #8]
    248a:	4b0b      	ldr	r3, [pc, #44]	; (24b8 <time_str+0x138>)
    248c:	fba3 2301 	umull	r2, r3, r3, r1
    2490:	08da      	lsrs	r2, r3, #3
    2492:	4613      	mov	r3, r2
    2494:	009b      	lsls	r3, r3, #2
    2496:	4413      	add	r3, r2
    2498:	005b      	lsls	r3, r3, #1
    249a:	1aca      	subs	r2, r1, r3
    249c:	b2d3      	uxtb	r3, r2
    249e:	3330      	adds	r3, #48	; 0x30
    24a0:	b2db      	uxtb	r3, r3
    24a2:	7003      	strb	r3, [r0, #0]
    24a4:	68fb      	ldr	r3, [r7, #12]
    24a6:	683a      	ldr	r2, [r7, #0]
    24a8:	4413      	add	r3, r2
    24aa:	2200      	movs	r2, #0
    24ac:	701a      	strb	r2, [r3, #0]
    24ae:	bf00      	nop
    24b0:	3714      	adds	r7, #20
    24b2:	46bd      	mov	sp, r7
    24b4:	bc80      	pop	{r7}
    24b6:	4770      	bx	lr
    24b8:	cccccccd 	.word	0xcccccccd

000024bc <get_fattime>:
    24bc:	b580      	push	{r7, lr}
    24be:	b084      	sub	sp, #16
    24c0:	af00      	add	r7, sp, #0
    24c2:	463b      	mov	r3, r7
    24c4:	4618      	mov	r0, r3
    24c6:	f7ff fa69 	bl	199c <get_date_time>
    24ca:	783b      	ldrb	r3, [r7, #0]
    24cc:	f3c3 0305 	ubfx	r3, r3, #0, #6
    24d0:	b2db      	uxtb	r3, r3
    24d2:	0fda      	lsrs	r2, r3, #31
    24d4:	4413      	add	r3, r2
    24d6:	105b      	asrs	r3, r3, #1
    24d8:	b2db      	uxtb	r3, r3
    24da:	f003 031f 	and.w	r3, r3, #31
    24de:	b2da      	uxtb	r2, r3
    24e0:	7b3b      	ldrb	r3, [r7, #12]
    24e2:	f362 0304 	bfi	r3, r2, #0, #5
    24e6:	733b      	strb	r3, [r7, #12]
    24e8:	883b      	ldrh	r3, [r7, #0]
    24ea:	f3c3 1385 	ubfx	r3, r3, #6, #6
    24ee:	b2da      	uxtb	r2, r3
    24f0:	89bb      	ldrh	r3, [r7, #12]
    24f2:	f362 134a 	bfi	r3, r2, #5, #6
    24f6:	81bb      	strh	r3, [r7, #12]
    24f8:	683b      	ldr	r3, [r7, #0]
    24fa:	f3c3 3304 	ubfx	r3, r3, #12, #5
    24fe:	b2da      	uxtb	r2, r3
    2500:	7b7b      	ldrb	r3, [r7, #13]
    2502:	f362 03c7 	bfi	r3, r2, #3, #5
    2506:	737b      	strb	r3, [r7, #13]
    2508:	78bb      	ldrb	r3, [r7, #2]
    250a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    250e:	b2da      	uxtb	r2, r3
    2510:	7bbb      	ldrb	r3, [r7, #14]
    2512:	f362 0304 	bfi	r3, r2, #0, #5
    2516:	73bb      	strb	r3, [r7, #14]
    2518:	887b      	ldrh	r3, [r7, #2]
    251a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    251e:	b2da      	uxtb	r2, r3
    2520:	89fb      	ldrh	r3, [r7, #14]
    2522:	f362 1348 	bfi	r3, r2, #5, #4
    2526:	81fb      	strh	r3, [r7, #14]
    2528:	893b      	ldrh	r3, [r7, #8]
    252a:	b2db      	uxtb	r3, r3
    252c:	3344      	adds	r3, #68	; 0x44
    252e:	b2db      	uxtb	r3, r3
    2530:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    2534:	b2da      	uxtb	r2, r3
    2536:	7bfb      	ldrb	r3, [r7, #15]
    2538:	f362 0347 	bfi	r3, r2, #1, #7
    253c:	73fb      	strb	r3, [r7, #15]
    253e:	68fb      	ldr	r3, [r7, #12]
    2540:	4618      	mov	r0, r3
    2542:	3710      	adds	r7, #16
    2544:	46bd      	mov	sp, r7
    2546:	bd80      	pop	{r7, pc}

00002548 <RTC_handler>:
    2548:	b480      	push	{r7}
    254a:	b083      	sub	sp, #12
    254c:	af00      	add	r7, sp, #0
    254e:	4b0a      	ldr	r3, [pc, #40]	; (2578 <RTC_handler+0x30>)
    2550:	685b      	ldr	r3, [r3, #4]
    2552:	f003 0301 	and.w	r3, r3, #1
    2556:	2b00      	cmp	r3, #0
    2558:	d001      	beq.n	255e <RTC_handler+0x16>
    255a:	4b07      	ldr	r3, [pc, #28]	; (2578 <RTC_handler+0x30>)
    255c:	685b      	ldr	r3, [r3, #4]
    255e:	4b06      	ldr	r3, [pc, #24]	; (2578 <RTC_handler+0x30>)
    2560:	685b      	ldr	r3, [r3, #4]
    2562:	f003 0302 	and.w	r3, r3, #2
    2566:	2b00      	cmp	r3, #0
    2568:	d001      	beq.n	256e <RTC_handler+0x26>
    256a:	4b03      	ldr	r3, [pc, #12]	; (2578 <RTC_handler+0x30>)
    256c:	685b      	ldr	r3, [r3, #4]
    256e:	bf00      	nop
    2570:	370c      	adds	r7, #12
    2572:	46bd      	mov	sp, r7
    2574:	bc80      	pop	{r7}
    2576:	4770      	bx	lr
    2578:	40002800 	.word	0x40002800

0000257c <spi_baudrate>:
    257c:	b480      	push	{r7}
    257e:	b083      	sub	sp, #12
    2580:	af00      	add	r7, sp, #0
    2582:	6078      	str	r0, [r7, #4]
    2584:	6039      	str	r1, [r7, #0]
    2586:	687b      	ldr	r3, [r7, #4]
    2588:	681b      	ldr	r3, [r3, #0]
    258a:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    258e:	687b      	ldr	r3, [r7, #4]
    2590:	601a      	str	r2, [r3, #0]
    2592:	687b      	ldr	r3, [r7, #4]
    2594:	681a      	ldr	r2, [r3, #0]
    2596:	683b      	ldr	r3, [r7, #0]
    2598:	00db      	lsls	r3, r3, #3
    259a:	431a      	orrs	r2, r3
    259c:	687b      	ldr	r3, [r7, #4]
    259e:	601a      	str	r2, [r3, #0]
    25a0:	bf00      	nop
    25a2:	370c      	adds	r7, #12
    25a4:	46bd      	mov	sp, r7
    25a6:	bc80      	pop	{r7}
    25a8:	4770      	bx	lr

000025aa <spi_config_port>:
    25aa:	b580      	push	{r7, lr}
    25ac:	b082      	sub	sp, #8
    25ae:	af00      	add	r7, sp, #0
    25b0:	6078      	str	r0, [r7, #4]
    25b2:	6039      	str	r1, [r7, #0]
    25b4:	4a33      	ldr	r2, [pc, #204]	; (2684 <spi_config_port+0xda>)
    25b6:	4b33      	ldr	r3, [pc, #204]	; (2684 <spi_config_port+0xda>)
    25b8:	699b      	ldr	r3, [r3, #24]
    25ba:	f043 0301 	orr.w	r3, r3, #1
    25be:	6193      	str	r3, [r2, #24]
    25c0:	687b      	ldr	r3, [r7, #4]
    25c2:	4a31      	ldr	r2, [pc, #196]	; (2688 <spi_config_port+0xde>)
    25c4:	4293      	cmp	r3, r2
    25c6:	d13e      	bne.n	2646 <spi_config_port+0x9c>
    25c8:	683b      	ldr	r3, [r7, #0]
    25ca:	2b00      	cmp	r3, #0
    25cc:	d11a      	bne.n	2604 <spi_config_port+0x5a>
    25ce:	4a2d      	ldr	r2, [pc, #180]	; (2684 <spi_config_port+0xda>)
    25d0:	4b2c      	ldr	r3, [pc, #176]	; (2684 <spi_config_port+0xda>)
    25d2:	699b      	ldr	r3, [r3, #24]
    25d4:	f043 0304 	orr.w	r3, r3, #4
    25d8:	6193      	str	r3, [r2, #24]
    25da:	2203      	movs	r2, #3
    25dc:	2104      	movs	r1, #4
    25de:	482b      	ldr	r0, [pc, #172]	; (268c <spi_config_port+0xe2>)
    25e0:	f7fe ffb5 	bl	154e <config_pin>
    25e4:	220b      	movs	r2, #11
    25e6:	2105      	movs	r1, #5
    25e8:	4828      	ldr	r0, [pc, #160]	; (268c <spi_config_port+0xe2>)
    25ea:	f7fe ffb0 	bl	154e <config_pin>
    25ee:	2204      	movs	r2, #4
    25f0:	2106      	movs	r1, #6
    25f2:	4826      	ldr	r0, [pc, #152]	; (268c <spi_config_port+0xe2>)
    25f4:	f7fe ffab 	bl	154e <config_pin>
    25f8:	220b      	movs	r2, #11
    25fa:	2107      	movs	r1, #7
    25fc:	4823      	ldr	r0, [pc, #140]	; (268c <spi_config_port+0xe2>)
    25fe:	f7fe ffa6 	bl	154e <config_pin>
    2602:	e03a      	b.n	267a <spi_config_port+0xd0>
    2604:	4a1f      	ldr	r2, [pc, #124]	; (2684 <spi_config_port+0xda>)
    2606:	4b1f      	ldr	r3, [pc, #124]	; (2684 <spi_config_port+0xda>)
    2608:	699b      	ldr	r3, [r3, #24]
    260a:	f043 030d 	orr.w	r3, r3, #13
    260e:	6193      	str	r3, [r2, #24]
    2610:	4a1f      	ldr	r2, [pc, #124]	; (2690 <spi_config_port+0xe6>)
    2612:	4b1f      	ldr	r3, [pc, #124]	; (2690 <spi_config_port+0xe6>)
    2614:	685b      	ldr	r3, [r3, #4]
    2616:	f043 0301 	orr.w	r3, r3, #1
    261a:	6053      	str	r3, [r2, #4]
    261c:	2203      	movs	r2, #3
    261e:	210f      	movs	r1, #15
    2620:	481a      	ldr	r0, [pc, #104]	; (268c <spi_config_port+0xe2>)
    2622:	f7fe ff94 	bl	154e <config_pin>
    2626:	220b      	movs	r2, #11
    2628:	2103      	movs	r1, #3
    262a:	481a      	ldr	r0, [pc, #104]	; (2694 <spi_config_port+0xea>)
    262c:	f7fe ff8f 	bl	154e <config_pin>
    2630:	2204      	movs	r2, #4
    2632:	2104      	movs	r1, #4
    2634:	4817      	ldr	r0, [pc, #92]	; (2694 <spi_config_port+0xea>)
    2636:	f7fe ff8a 	bl	154e <config_pin>
    263a:	220b      	movs	r2, #11
    263c:	2105      	movs	r1, #5
    263e:	4815      	ldr	r0, [pc, #84]	; (2694 <spi_config_port+0xea>)
    2640:	f7fe ff85 	bl	154e <config_pin>
    2644:	e019      	b.n	267a <spi_config_port+0xd0>
    2646:	4a0f      	ldr	r2, [pc, #60]	; (2684 <spi_config_port+0xda>)
    2648:	4b0e      	ldr	r3, [pc, #56]	; (2684 <spi_config_port+0xda>)
    264a:	699b      	ldr	r3, [r3, #24]
    264c:	f043 0308 	orr.w	r3, r3, #8
    2650:	6193      	str	r3, [r2, #24]
    2652:	2203      	movs	r2, #3
    2654:	2102      	movs	r1, #2
    2656:	480f      	ldr	r0, [pc, #60]	; (2694 <spi_config_port+0xea>)
    2658:	f7fe ff79 	bl	154e <config_pin>
    265c:	220b      	movs	r2, #11
    265e:	210d      	movs	r1, #13
    2660:	480c      	ldr	r0, [pc, #48]	; (2694 <spi_config_port+0xea>)
    2662:	f7fe ff74 	bl	154e <config_pin>
    2666:	2204      	movs	r2, #4
    2668:	210e      	movs	r1, #14
    266a:	480a      	ldr	r0, [pc, #40]	; (2694 <spi_config_port+0xea>)
    266c:	f7fe ff6f 	bl	154e <config_pin>
    2670:	220b      	movs	r2, #11
    2672:	210f      	movs	r1, #15
    2674:	4807      	ldr	r0, [pc, #28]	; (2694 <spi_config_port+0xea>)
    2676:	f7fe ff6a 	bl	154e <config_pin>
    267a:	bf00      	nop
    267c:	3708      	adds	r7, #8
    267e:	46bd      	mov	sp, r7
    2680:	bd80      	pop	{r7, pc}
    2682:	bf00      	nop
    2684:	40021000 	.word	0x40021000
    2688:	40013000 	.word	0x40013000
    268c:	40010800 	.word	0x40010800
    2690:	40010000 	.word	0x40010000
    2694:	40010c00 	.word	0x40010c00

00002698 <spi_init>:
    2698:	b580      	push	{r7, lr}
    269a:	b084      	sub	sp, #16
    269c:	af00      	add	r7, sp, #0
    269e:	60f8      	str	r0, [r7, #12]
    26a0:	60b9      	str	r1, [r7, #8]
    26a2:	607a      	str	r2, [r7, #4]
    26a4:	603b      	str	r3, [r7, #0]
    26a6:	6839      	ldr	r1, [r7, #0]
    26a8:	68f8      	ldr	r0, [r7, #12]
    26aa:	f7ff ff7e 	bl	25aa <spi_config_port>
    26ae:	68fb      	ldr	r3, [r7, #12]
    26b0:	4a10      	ldr	r2, [pc, #64]	; (26f4 <spi_init+0x5c>)
    26b2:	4293      	cmp	r3, r2
    26b4:	d106      	bne.n	26c4 <spi_init+0x2c>
    26b6:	4a10      	ldr	r2, [pc, #64]	; (26f8 <spi_init+0x60>)
    26b8:	4b0f      	ldr	r3, [pc, #60]	; (26f8 <spi_init+0x60>)
    26ba:	699b      	ldr	r3, [r3, #24]
    26bc:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    26c0:	6193      	str	r3, [r2, #24]
    26c2:	e005      	b.n	26d0 <spi_init+0x38>
    26c4:	4a0c      	ldr	r2, [pc, #48]	; (26f8 <spi_init+0x60>)
    26c6:	4b0c      	ldr	r3, [pc, #48]	; (26f8 <spi_init+0x60>)
    26c8:	69db      	ldr	r3, [r3, #28]
    26ca:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    26ce:	61d3      	str	r3, [r2, #28]
    26d0:	68fb      	ldr	r3, [r7, #12]
    26d2:	687a      	ldr	r2, [r7, #4]
    26d4:	601a      	str	r2, [r3, #0]
    26d6:	68b9      	ldr	r1, [r7, #8]
    26d8:	68f8      	ldr	r0, [r7, #12]
    26da:	f7ff ff4f 	bl	257c <spi_baudrate>
    26de:	68fb      	ldr	r3, [r7, #12]
    26e0:	681b      	ldr	r3, [r3, #0]
    26e2:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    26e6:	68fb      	ldr	r3, [r7, #12]
    26e8:	601a      	str	r2, [r3, #0]
    26ea:	bf00      	nop
    26ec:	3710      	adds	r7, #16
    26ee:	46bd      	mov	sp, r7
    26f0:	bd80      	pop	{r7, pc}
    26f2:	bf00      	nop
    26f4:	40013000 	.word	0x40013000
    26f8:	40021000 	.word	0x40021000

000026fc <spi_send>:
    26fc:	b480      	push	{r7}
    26fe:	b085      	sub	sp, #20
    2700:	af00      	add	r7, sp, #0
    2702:	6078      	str	r0, [r7, #4]
    2704:	460b      	mov	r3, r1
    2706:	70fb      	strb	r3, [r7, #3]
    2708:	bf00      	nop
    270a:	687b      	ldr	r3, [r7, #4]
    270c:	689b      	ldr	r3, [r3, #8]
    270e:	f003 0302 	and.w	r3, r3, #2
    2712:	2b00      	cmp	r3, #0
    2714:	d0f9      	beq.n	270a <spi_send+0xe>
    2716:	78fa      	ldrb	r2, [r7, #3]
    2718:	687b      	ldr	r3, [r7, #4]
    271a:	60da      	str	r2, [r3, #12]
    271c:	bf00      	nop
    271e:	687b      	ldr	r3, [r7, #4]
    2720:	689b      	ldr	r3, [r3, #8]
    2722:	f003 0301 	and.w	r3, r3, #1
    2726:	2b00      	cmp	r3, #0
    2728:	d0f9      	beq.n	271e <spi_send+0x22>
    272a:	687b      	ldr	r3, [r7, #4]
    272c:	68db      	ldr	r3, [r3, #12]
    272e:	73fb      	strb	r3, [r7, #15]
    2730:	bf00      	nop
    2732:	3714      	adds	r7, #20
    2734:	46bd      	mov	sp, r7
    2736:	bc80      	pop	{r7}
    2738:	4770      	bx	lr

0000273a <spi_receive>:
    273a:	b480      	push	{r7}
    273c:	b085      	sub	sp, #20
    273e:	af00      	add	r7, sp, #0
    2740:	6078      	str	r0, [r7, #4]
    2742:	bf00      	nop
    2744:	687b      	ldr	r3, [r7, #4]
    2746:	689b      	ldr	r3, [r3, #8]
    2748:	f003 0302 	and.w	r3, r3, #2
    274c:	2b00      	cmp	r3, #0
    274e:	d0f9      	beq.n	2744 <spi_receive+0xa>
    2750:	687b      	ldr	r3, [r7, #4]
    2752:	22ff      	movs	r2, #255	; 0xff
    2754:	60da      	str	r2, [r3, #12]
    2756:	bf00      	nop
    2758:	687b      	ldr	r3, [r7, #4]
    275a:	689b      	ldr	r3, [r3, #8]
    275c:	f003 0301 	and.w	r3, r3, #1
    2760:	2b00      	cmp	r3, #0
    2762:	d0f9      	beq.n	2758 <spi_receive+0x1e>
    2764:	687b      	ldr	r3, [r7, #4]
    2766:	68db      	ldr	r3, [r3, #12]
    2768:	73fb      	strb	r3, [r7, #15]
    276a:	7bfb      	ldrb	r3, [r7, #15]
    276c:	4618      	mov	r0, r3
    276e:	3714      	adds	r7, #20
    2770:	46bd      	mov	sp, r7
    2772:	bc80      	pop	{r7}
    2774:	4770      	bx	lr

00002776 <spi_send_block>:
    2776:	b480      	push	{r7}
    2778:	b087      	sub	sp, #28
    277a:	af00      	add	r7, sp, #0
    277c:	60f8      	str	r0, [r7, #12]
    277e:	60b9      	str	r1, [r7, #8]
    2780:	607a      	str	r2, [r7, #4]
    2782:	e010      	b.n	27a6 <spi_send_block+0x30>
    2784:	68bb      	ldr	r3, [r7, #8]
    2786:	1c5a      	adds	r2, r3, #1
    2788:	60ba      	str	r2, [r7, #8]
    278a:	781b      	ldrb	r3, [r3, #0]
    278c:	461a      	mov	r2, r3
    278e:	68fb      	ldr	r3, [r7, #12]
    2790:	60da      	str	r2, [r3, #12]
    2792:	bf00      	nop
    2794:	68fb      	ldr	r3, [r7, #12]
    2796:	689b      	ldr	r3, [r3, #8]
    2798:	f003 0302 	and.w	r3, r3, #2
    279c:	2b00      	cmp	r3, #0
    279e:	d0f9      	beq.n	2794 <spi_send_block+0x1e>
    27a0:	687b      	ldr	r3, [r7, #4]
    27a2:	3b01      	subs	r3, #1
    27a4:	607b      	str	r3, [r7, #4]
    27a6:	687b      	ldr	r3, [r7, #4]
    27a8:	2b00      	cmp	r3, #0
    27aa:	d1eb      	bne.n	2784 <spi_send_block+0xe>
    27ac:	bf00      	nop
    27ae:	68fb      	ldr	r3, [r7, #12]
    27b0:	689b      	ldr	r3, [r3, #8]
    27b2:	f003 0380 	and.w	r3, r3, #128	; 0x80
    27b6:	2b00      	cmp	r3, #0
    27b8:	d1f9      	bne.n	27ae <spi_send_block+0x38>
    27ba:	68fb      	ldr	r3, [r7, #12]
    27bc:	68db      	ldr	r3, [r3, #12]
    27be:	75fb      	strb	r3, [r7, #23]
    27c0:	bf00      	nop
    27c2:	371c      	adds	r7, #28
    27c4:	46bd      	mov	sp, r7
    27c6:	bc80      	pop	{r7}
    27c8:	4770      	bx	lr

000027ca <spi_receive_block>:
    27ca:	b480      	push	{r7}
    27cc:	b085      	sub	sp, #20
    27ce:	af00      	add	r7, sp, #0
    27d0:	60f8      	str	r0, [r7, #12]
    27d2:	60b9      	str	r1, [r7, #8]
    27d4:	607a      	str	r2, [r7, #4]
    27d6:	e013      	b.n	2800 <spi_receive_block+0x36>
    27d8:	68fb      	ldr	r3, [r7, #12]
    27da:	2200      	movs	r2, #0
    27dc:	60da      	str	r2, [r3, #12]
    27de:	bf00      	nop
    27e0:	68fb      	ldr	r3, [r7, #12]
    27e2:	689b      	ldr	r3, [r3, #8]
    27e4:	f003 0301 	and.w	r3, r3, #1
    27e8:	2b00      	cmp	r3, #0
    27ea:	d0f9      	beq.n	27e0 <spi_receive_block+0x16>
    27ec:	68bb      	ldr	r3, [r7, #8]
    27ee:	1c5a      	adds	r2, r3, #1
    27f0:	60ba      	str	r2, [r7, #8]
    27f2:	68fa      	ldr	r2, [r7, #12]
    27f4:	68d2      	ldr	r2, [r2, #12]
    27f6:	b2d2      	uxtb	r2, r2
    27f8:	701a      	strb	r2, [r3, #0]
    27fa:	687b      	ldr	r3, [r7, #4]
    27fc:	3b01      	subs	r3, #1
    27fe:	607b      	str	r3, [r7, #4]
    2800:	687b      	ldr	r3, [r7, #4]
    2802:	2b00      	cmp	r3, #0
    2804:	d1e8      	bne.n	27d8 <spi_receive_block+0xe>
    2806:	bf00      	nop
    2808:	3714      	adds	r7, #20
    280a:	46bd      	mov	sp, r7
    280c:	bc80      	pop	{r7}
    280e:	4770      	bx	lr

00002810 <reset_mcu>:
    2810:	4b01      	ldr	r3, [pc, #4]	; (2818 <reset_mcu+0x8>)
    2812:	4a02      	ldr	r2, [pc, #8]	; (281c <reset_mcu+0xc>)
    2814:	601a      	str	r2, [r3, #0]
    2816:	bf00      	nop
    2818:	e000ed0c 	.word	0xe000ed0c
    281c:	05fa0004 	.word	0x05fa0004

00002820 <print_fault>:
    2820:	b580      	push	{r7, lr}
    2822:	b082      	sub	sp, #8
    2824:	af00      	add	r7, sp, #0
    2826:	6078      	str	r0, [r7, #4]
    2828:	6039      	str	r1, [r7, #0]
    282a:	6878      	ldr	r0, [r7, #4]
    282c:	f7fe f830 	bl	890 <print>
    2830:	4817      	ldr	r0, [pc, #92]	; (2890 <print_fault+0x70>)
    2832:	f7fe f82d 	bl	890 <print>
    2836:	683b      	ldr	r3, [r7, #0]
    2838:	2b00      	cmp	r3, #0
    283a:	d003      	beq.n	2844 <print_fault+0x24>
    283c:	2100      	movs	r1, #0
    283e:	6838      	ldr	r0, [r7, #0]
    2840:	f7fe f9d4 	bl	bec <print_hex>
    2844:	200d      	movs	r0, #13
    2846:	f7fd ffc3 	bl	7d0 <conout>
    284a:	4812      	ldr	r0, [pc, #72]	; (2894 <print_fault+0x74>)
    284c:	f7fe f820 	bl	890 <print>
    2850:	4b11      	ldr	r3, [pc, #68]	; (2898 <print_fault+0x78>)
    2852:	681b      	ldr	r3, [r3, #0]
    2854:	f3c3 430f 	ubfx	r3, r3, #16, #16
    2858:	b29b      	uxth	r3, r3
    285a:	2100      	movs	r1, #0
    285c:	4618      	mov	r0, r3
    285e:	f7fe f9c5 	bl	bec <print_hex>
    2862:	480e      	ldr	r0, [pc, #56]	; (289c <print_fault+0x7c>)
    2864:	f7fe f814 	bl	890 <print>
    2868:	4b0b      	ldr	r3, [pc, #44]	; (2898 <print_fault+0x78>)
    286a:	681b      	ldr	r3, [r3, #0]
    286c:	f3c3 2307 	ubfx	r3, r3, #8, #8
    2870:	b2db      	uxtb	r3, r3
    2872:	2100      	movs	r1, #0
    2874:	4618      	mov	r0, r3
    2876:	f7fe f9b9 	bl	bec <print_hex>
    287a:	4809      	ldr	r0, [pc, #36]	; (28a0 <print_fault+0x80>)
    287c:	f7fe f808 	bl	890 <print>
    2880:	4b05      	ldr	r3, [pc, #20]	; (2898 <print_fault+0x78>)
    2882:	681b      	ldr	r3, [r3, #0]
    2884:	b2db      	uxtb	r3, r3
    2886:	2100      	movs	r1, #0
    2888:	4618      	mov	r0, r3
    288a:	f7fe f9af 	bl	bec <print_hex>
    288e:	e7fe      	b.n	288e <print_fault+0x6e>
    2890:	00003140 	.word	0x00003140
    2894:	0000314c 	.word	0x0000314c
    2898:	e000ed28 	.word	0xe000ed28
    289c:	00003154 	.word	0x00003154
    28a0:	0000315c 	.word	0x0000315c

000028a4 <config_systicks>:
    28a4:	b580      	push	{r7, lr}
    28a6:	af00      	add	r7, sp, #0
    28a8:	2109      	movs	r1, #9
    28aa:	f06f 000e 	mvn.w	r0, #14
    28ae:	f7fe fff5 	bl	189c <set_int_priority>
    28b2:	4b04      	ldr	r3, [pc, #16]	; (28c4 <config_systicks+0x20>)
    28b4:	f242 22f3 	movw	r2, #8947	; 0x22f3
    28b8:	601a      	str	r2, [r3, #0]
    28ba:	4b03      	ldr	r3, [pc, #12]	; (28c8 <config_systicks+0x24>)
    28bc:	2203      	movs	r2, #3
    28be:	601a      	str	r2, [r3, #0]
    28c0:	bf00      	nop
    28c2:	bd80      	pop	{r7, pc}
    28c4:	e000e014 	.word	0xe000e014
    28c8:	e000e010 	.word	0xe000e010

000028cc <pause>:
    28cc:	b480      	push	{r7}
    28ce:	b083      	sub	sp, #12
    28d0:	af00      	add	r7, sp, #0
    28d2:	6078      	str	r0, [r7, #4]
    28d4:	4a06      	ldr	r2, [pc, #24]	; (28f0 <pause+0x24>)
    28d6:	687b      	ldr	r3, [r7, #4]
    28d8:	6013      	str	r3, [r2, #0]
    28da:	bf00      	nop
    28dc:	4b04      	ldr	r3, [pc, #16]	; (28f0 <pause+0x24>)
    28de:	681b      	ldr	r3, [r3, #0]
    28e0:	2b00      	cmp	r3, #0
    28e2:	d1fb      	bne.n	28dc <pause+0x10>
    28e4:	bf00      	nop
    28e6:	370c      	adds	r7, #12
    28e8:	46bd      	mov	sp, r7
    28ea:	bc80      	pop	{r7}
    28ec:	4770      	bx	lr
    28ee:	bf00      	nop
    28f0:	20000474 	.word	0x20000474

000028f4 <STK_handler>:
    28f4:	b480      	push	{r7}
    28f6:	af00      	add	r7, sp, #0
    28f8:	4b08      	ldr	r3, [pc, #32]	; (291c <STK_handler+0x28>)
    28fa:	681b      	ldr	r3, [r3, #0]
    28fc:	3301      	adds	r3, #1
    28fe:	4a07      	ldr	r2, [pc, #28]	; (291c <STK_handler+0x28>)
    2900:	6013      	str	r3, [r2, #0]
    2902:	4b07      	ldr	r3, [pc, #28]	; (2920 <STK_handler+0x2c>)
    2904:	681b      	ldr	r3, [r3, #0]
    2906:	2b00      	cmp	r3, #0
    2908:	d004      	beq.n	2914 <STK_handler+0x20>
    290a:	4b05      	ldr	r3, [pc, #20]	; (2920 <STK_handler+0x2c>)
    290c:	681b      	ldr	r3, [r3, #0]
    290e:	3b01      	subs	r3, #1
    2910:	4a03      	ldr	r2, [pc, #12]	; (2920 <STK_handler+0x2c>)
    2912:	6013      	str	r3, [r2, #0]
    2914:	bf00      	nop
    2916:	46bd      	mov	sp, r7
    2918:	bc80      	pop	{r7}
    291a:	4770      	bx	lr
    291c:	20000470 	.word	0x20000470
    2920:	20000474 	.word	0x20000474

00002924 <tvout_init>:
    2924:	b580      	push	{r7, lr}
    2926:	af00      	add	r7, sp, #0
    2928:	2203      	movs	r2, #3
    292a:	2108      	movs	r1, #8
    292c:	4802      	ldr	r0, [pc, #8]	; (2938 <tvout_init+0x14>)
    292e:	f7fe fe0e 	bl	154e <config_pin>
    2932:	bf00      	nop
    2934:	bd80      	pop	{r7, pc}
    2936:	bf00      	nop
    2938:	40010800 	.word	0x40010800

0000293c <TV_SYNC_handler>:
    293c:	4668      	mov	r0, sp
    293e:	f020 0107 	bic.w	r1, r0, #7
    2942:	468d      	mov	sp, r1
    2944:	b481      	push	{r0, r7}
    2946:	af00      	add	r7, sp, #0
    2948:	4b6c      	ldr	r3, [pc, #432]	; (2afc <TV_SYNC_handler+0x1c0>)
    294a:	881b      	ldrh	r3, [r3, #0]
    294c:	b29b      	uxth	r3, r3
    294e:	3301      	adds	r3, #1
    2950:	b29a      	uxth	r2, r3
    2952:	4b6a      	ldr	r3, [pc, #424]	; (2afc <TV_SYNC_handler+0x1c0>)
    2954:	801a      	strh	r2, [r3, #0]
    2956:	4b6a      	ldr	r3, [pc, #424]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2958:	881b      	ldrh	r3, [r3, #0]
    295a:	b29b      	uxth	r3, r3
    295c:	2b06      	cmp	r3, #6
    295e:	f200 80c7 	bhi.w	2af0 <TV_SYNC_handler+0x1b4>
    2962:	a201      	add	r2, pc, #4	; (adr r2, 2968 <TV_SYNC_handler+0x2c>)
    2964:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2968:	00002985 	.word	0x00002985
    296c:	000029cf 	.word	0x000029cf
    2970:	00002a17 	.word	0x00002a17
    2974:	00002a69 	.word	0x00002a69
    2978:	00002a8d 	.word	0x00002a8d
    297c:	00002aad 	.word	0x00002aad
    2980:	00002adb 	.word	0x00002adb
    2984:	4b5f      	ldr	r3, [pc, #380]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2986:	881b      	ldrh	r3, [r3, #0]
    2988:	b29b      	uxth	r3, r3
    298a:	2b00      	cmp	r3, #0
    298c:	d107      	bne.n	299e <TV_SYNC_handler+0x62>
    298e:	4b5d      	ldr	r3, [pc, #372]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2990:	881b      	ldrh	r3, [r3, #0]
    2992:	b29b      	uxth	r3, r3
    2994:	3301      	adds	r3, #1
    2996:	b29a      	uxth	r2, r3
    2998:	4b5a      	ldr	r3, [pc, #360]	; (2b04 <TV_SYNC_handler+0x1c8>)
    299a:	801a      	strh	r2, [r3, #0]
    299c:	e09f      	b.n	2ade <TV_SYNC_handler+0x1a2>
    299e:	4b59      	ldr	r3, [pc, #356]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29a0:	881b      	ldrh	r3, [r3, #0]
    29a2:	b29b      	uxth	r3, r3
    29a4:	3301      	adds	r3, #1
    29a6:	b29a      	uxth	r2, r3
    29a8:	4b56      	ldr	r3, [pc, #344]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29aa:	801a      	strh	r2, [r3, #0]
    29ac:	4b55      	ldr	r3, [pc, #340]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29ae:	881b      	ldrh	r3, [r3, #0]
    29b0:	b29b      	uxth	r3, r3
    29b2:	2b06      	cmp	r3, #6
    29b4:	f040 8093 	bne.w	2ade <TV_SYNC_handler+0x1a2>
    29b8:	4b52      	ldr	r3, [pc, #328]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29ba:	2200      	movs	r2, #0
    29bc:	801a      	strh	r2, [r3, #0]
    29be:	4b50      	ldr	r3, [pc, #320]	; (2b00 <TV_SYNC_handler+0x1c4>)
    29c0:	881b      	ldrh	r3, [r3, #0]
    29c2:	b29b      	uxth	r3, r3
    29c4:	3301      	adds	r3, #1
    29c6:	b29a      	uxth	r2, r3
    29c8:	4b4d      	ldr	r3, [pc, #308]	; (2b00 <TV_SYNC_handler+0x1c4>)
    29ca:	801a      	strh	r2, [r3, #0]
    29cc:	e087      	b.n	2ade <TV_SYNC_handler+0x1a2>
    29ce:	4b4d      	ldr	r3, [pc, #308]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29d0:	881b      	ldrh	r3, [r3, #0]
    29d2:	b29b      	uxth	r3, r3
    29d4:	2b00      	cmp	r3, #0
    29d6:	d107      	bne.n	29e8 <TV_SYNC_handler+0xac>
    29d8:	4b4a      	ldr	r3, [pc, #296]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29da:	881b      	ldrh	r3, [r3, #0]
    29dc:	b29b      	uxth	r3, r3
    29de:	3301      	adds	r3, #1
    29e0:	b29a      	uxth	r2, r3
    29e2:	4b48      	ldr	r3, [pc, #288]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29e4:	801a      	strh	r2, [r3, #0]
    29e6:	e07c      	b.n	2ae2 <TV_SYNC_handler+0x1a6>
    29e8:	4b46      	ldr	r3, [pc, #280]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29ea:	881b      	ldrh	r3, [r3, #0]
    29ec:	b29b      	uxth	r3, r3
    29ee:	3301      	adds	r3, #1
    29f0:	b29a      	uxth	r2, r3
    29f2:	4b44      	ldr	r3, [pc, #272]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29f4:	801a      	strh	r2, [r3, #0]
    29f6:	4b43      	ldr	r3, [pc, #268]	; (2b04 <TV_SYNC_handler+0x1c8>)
    29f8:	881b      	ldrh	r3, [r3, #0]
    29fa:	b29b      	uxth	r3, r3
    29fc:	2b06      	cmp	r3, #6
    29fe:	d170      	bne.n	2ae2 <TV_SYNC_handler+0x1a6>
    2a00:	4b40      	ldr	r3, [pc, #256]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a02:	2200      	movs	r2, #0
    2a04:	801a      	strh	r2, [r3, #0]
    2a06:	4b3e      	ldr	r3, [pc, #248]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a08:	881b      	ldrh	r3, [r3, #0]
    2a0a:	b29b      	uxth	r3, r3
    2a0c:	3301      	adds	r3, #1
    2a0e:	b29a      	uxth	r2, r3
    2a10:	4b3b      	ldr	r3, [pc, #236]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a12:	801a      	strh	r2, [r3, #0]
    2a14:	e065      	b.n	2ae2 <TV_SYNC_handler+0x1a6>
    2a16:	4b3b      	ldr	r3, [pc, #236]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a18:	881b      	ldrh	r3, [r3, #0]
    2a1a:	b29b      	uxth	r3, r3
    2a1c:	2b00      	cmp	r3, #0
    2a1e:	d107      	bne.n	2a30 <TV_SYNC_handler+0xf4>
    2a20:	4b38      	ldr	r3, [pc, #224]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a22:	881b      	ldrh	r3, [r3, #0]
    2a24:	b29b      	uxth	r3, r3
    2a26:	3301      	adds	r3, #1
    2a28:	b29a      	uxth	r2, r3
    2a2a:	4b36      	ldr	r3, [pc, #216]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a2c:	801a      	strh	r2, [r3, #0]
    2a2e:	e05a      	b.n	2ae6 <TV_SYNC_handler+0x1aa>
    2a30:	4b35      	ldr	r3, [pc, #212]	; (2b08 <TV_SYNC_handler+0x1cc>)
    2a32:	881b      	ldrh	r3, [r3, #0]
    2a34:	b29b      	uxth	r3, r3
    2a36:	f003 0301 	and.w	r3, r3, #1
    2a3a:	2b00      	cmp	r3, #0
    2a3c:	d004      	beq.n	2a48 <TV_SYNC_handler+0x10c>
    2a3e:	4b31      	ldr	r3, [pc, #196]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a40:	881b      	ldrh	r3, [r3, #0]
    2a42:	b29b      	uxth	r3, r3
    2a44:	2b05      	cmp	r3, #5
    2a46:	d004      	beq.n	2a52 <TV_SYNC_handler+0x116>
    2a48:	4b2e      	ldr	r3, [pc, #184]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a4a:	881b      	ldrh	r3, [r3, #0]
    2a4c:	b29b      	uxth	r3, r3
    2a4e:	2b06      	cmp	r3, #6
    2a50:	d149      	bne.n	2ae6 <TV_SYNC_handler+0x1aa>
    2a52:	4b2c      	ldr	r3, [pc, #176]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a54:	2200      	movs	r2, #0
    2a56:	801a      	strh	r2, [r3, #0]
    2a58:	4b29      	ldr	r3, [pc, #164]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a5a:	881b      	ldrh	r3, [r3, #0]
    2a5c:	b29b      	uxth	r3, r3
    2a5e:	3301      	adds	r3, #1
    2a60:	b29a      	uxth	r2, r3
    2a62:	4b27      	ldr	r3, [pc, #156]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a64:	801a      	strh	r2, [r3, #0]
    2a66:	e03e      	b.n	2ae6 <TV_SYNC_handler+0x1aa>
    2a68:	4b24      	ldr	r3, [pc, #144]	; (2afc <TV_SYNC_handler+0x1c0>)
    2a6a:	881b      	ldrh	r3, [r3, #0]
    2a6c:	b29b      	uxth	r3, r3
    2a6e:	089b      	lsrs	r3, r3, #2
    2a70:	b29a      	uxth	r2, r3
    2a72:	4b22      	ldr	r3, [pc, #136]	; (2afc <TV_SYNC_handler+0x1c0>)
    2a74:	801a      	strh	r2, [r3, #0]
    2a76:	4b22      	ldr	r3, [pc, #136]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a78:	881b      	ldrh	r3, [r3, #0]
    2a7a:	b29b      	uxth	r3, r3
    2a7c:	3301      	adds	r3, #1
    2a7e:	b29a      	uxth	r2, r3
    2a80:	4b1f      	ldr	r3, [pc, #124]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a82:	801a      	strh	r2, [r3, #0]
    2a84:	4b1f      	ldr	r3, [pc, #124]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2a86:	2200      	movs	r2, #0
    2a88:	801a      	strh	r2, [r3, #0]
    2a8a:	e031      	b.n	2af0 <TV_SYNC_handler+0x1b4>
    2a8c:	4b1b      	ldr	r3, [pc, #108]	; (2afc <TV_SYNC_handler+0x1c0>)
    2a8e:	881b      	ldrh	r3, [r3, #0]
    2a90:	b29b      	uxth	r3, r3
    2a92:	2b1e      	cmp	r3, #30
    2a94:	d129      	bne.n	2aea <TV_SYNC_handler+0x1ae>
    2a96:	4b1a      	ldr	r3, [pc, #104]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2a98:	881b      	ldrh	r3, [r3, #0]
    2a9a:	b29b      	uxth	r3, r3
    2a9c:	3301      	adds	r3, #1
    2a9e:	b29a      	uxth	r2, r3
    2aa0:	4b17      	ldr	r3, [pc, #92]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2aa2:	801a      	strh	r2, [r3, #0]
    2aa4:	4b17      	ldr	r3, [pc, #92]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2aa6:	2200      	movs	r2, #0
    2aa8:	801a      	strh	r2, [r3, #0]
    2aaa:	e01e      	b.n	2aea <TV_SYNC_handler+0x1ae>
    2aac:	4b15      	ldr	r3, [pc, #84]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2aae:	881b      	ldrh	r3, [r3, #0]
    2ab0:	b29b      	uxth	r3, r3
    2ab2:	3301      	adds	r3, #1
    2ab4:	b29a      	uxth	r2, r3
    2ab6:	4b13      	ldr	r3, [pc, #76]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2ab8:	801a      	strh	r2, [r3, #0]
    2aba:	4b12      	ldr	r3, [pc, #72]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2abc:	881b      	ldrh	r3, [r3, #0]
    2abe:	b29b      	uxth	r3, r3
    2ac0:	2bde      	cmp	r3, #222	; 0xde
    2ac2:	d114      	bne.n	2aee <TV_SYNC_handler+0x1b2>
    2ac4:	4b0f      	ldr	r3, [pc, #60]	; (2b04 <TV_SYNC_handler+0x1c8>)
    2ac6:	2200      	movs	r2, #0
    2ac8:	801a      	strh	r2, [r3, #0]
    2aca:	4b0d      	ldr	r3, [pc, #52]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2acc:	881b      	ldrh	r3, [r3, #0]
    2ace:	b29b      	uxth	r3, r3
    2ad0:	3301      	adds	r3, #1
    2ad2:	b29a      	uxth	r2, r3
    2ad4:	4b0a      	ldr	r3, [pc, #40]	; (2b00 <TV_SYNC_handler+0x1c4>)
    2ad6:	801a      	strh	r2, [r3, #0]
    2ad8:	e009      	b.n	2aee <TV_SYNC_handler+0x1b2>
    2ada:	bf00      	nop
    2adc:	e008      	b.n	2af0 <TV_SYNC_handler+0x1b4>
    2ade:	bf00      	nop
    2ae0:	e006      	b.n	2af0 <TV_SYNC_handler+0x1b4>
    2ae2:	bf00      	nop
    2ae4:	e004      	b.n	2af0 <TV_SYNC_handler+0x1b4>
    2ae6:	bf00      	nop
    2ae8:	e002      	b.n	2af0 <TV_SYNC_handler+0x1b4>
    2aea:	bf00      	nop
    2aec:	e000      	b.n	2af0 <TV_SYNC_handler+0x1b4>
    2aee:	bf00      	nop
    2af0:	bf00      	nop
    2af2:	46bd      	mov	sp, r7
    2af4:	bc81      	pop	{r0, r7}
    2af6:	4685      	mov	sp, r0
    2af8:	4770      	bx	lr
    2afa:	bf00      	nop
    2afc:	2000047e 	.word	0x2000047e
    2b00:	20000478 	.word	0x20000478
    2b04:	2000047c 	.word	0x2000047c
    2b08:	2000047a 	.word	0x2000047a

00002b0c <usart_config_port>:
    2b0c:	b480      	push	{r7}
    2b0e:	b085      	sub	sp, #20
    2b10:	af00      	add	r7, sp, #0
    2b12:	60f8      	str	r0, [r7, #12]
    2b14:	60b9      	str	r1, [r7, #8]
    2b16:	607a      	str	r2, [r7, #4]
    2b18:	68fb      	ldr	r3, [r7, #12]
    2b1a:	4a45      	ldr	r2, [pc, #276]	; (2c30 <usart_config_port+0x124>)
    2b1c:	4293      	cmp	r3, r2
    2b1e:	d058      	beq.n	2bd2 <usart_config_port+0xc6>
    2b20:	4a44      	ldr	r2, [pc, #272]	; (2c34 <usart_config_port+0x128>)
    2b22:	4293      	cmp	r3, r2
    2b24:	d003      	beq.n	2b2e <usart_config_port+0x22>
    2b26:	4a44      	ldr	r2, [pc, #272]	; (2c38 <usart_config_port+0x12c>)
    2b28:	4293      	cmp	r3, r2
    2b2a:	d029      	beq.n	2b80 <usart_config_port+0x74>
    2b2c:	e07a      	b.n	2c24 <usart_config_port+0x118>
    2b2e:	4a43      	ldr	r2, [pc, #268]	; (2c3c <usart_config_port+0x130>)
    2b30:	4b42      	ldr	r3, [pc, #264]	; (2c3c <usart_config_port+0x130>)
    2b32:	699b      	ldr	r3, [r3, #24]
    2b34:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2b38:	f043 0304 	orr.w	r3, r3, #4
    2b3c:	6193      	str	r3, [r2, #24]
    2b3e:	687b      	ldr	r3, [r7, #4]
    2b40:	2b01      	cmp	r3, #1
    2b42:	d110      	bne.n	2b66 <usart_config_port+0x5a>
    2b44:	68bb      	ldr	r3, [r7, #8]
    2b46:	685b      	ldr	r3, [r3, #4]
    2b48:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    2b4c:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
    2b50:	68ba      	ldr	r2, [r7, #8]
    2b52:	6053      	str	r3, [r2, #4]
    2b54:	68bb      	ldr	r3, [r7, #8]
    2b56:	685b      	ldr	r3, [r3, #4]
    2b58:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    2b5c:	f043 03a0 	orr.w	r3, r3, #160	; 0xa0
    2b60:	68ba      	ldr	r2, [r7, #8]
    2b62:	6053      	str	r3, [r2, #4]
    2b64:	e05e      	b.n	2c24 <usart_config_port+0x118>
    2b66:	68bb      	ldr	r3, [r7, #8]
    2b68:	685b      	ldr	r3, [r3, #4]
    2b6a:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
    2b6e:	68bb      	ldr	r3, [r7, #8]
    2b70:	605a      	str	r2, [r3, #4]
    2b72:	68bb      	ldr	r3, [r7, #8]
    2b74:	685b      	ldr	r3, [r3, #4]
    2b76:	f043 02a0 	orr.w	r2, r3, #160	; 0xa0
    2b7a:	68bb      	ldr	r3, [r7, #8]
    2b7c:	605a      	str	r2, [r3, #4]
    2b7e:	e051      	b.n	2c24 <usart_config_port+0x118>
    2b80:	4a2e      	ldr	r2, [pc, #184]	; (2c3c <usart_config_port+0x130>)
    2b82:	4b2e      	ldr	r3, [pc, #184]	; (2c3c <usart_config_port+0x130>)
    2b84:	69db      	ldr	r3, [r3, #28]
    2b86:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
    2b8a:	61d3      	str	r3, [r2, #28]
    2b8c:	4a2b      	ldr	r2, [pc, #172]	; (2c3c <usart_config_port+0x130>)
    2b8e:	4b2b      	ldr	r3, [pc, #172]	; (2c3c <usart_config_port+0x130>)
    2b90:	699b      	ldr	r3, [r3, #24]
    2b92:	f043 0304 	orr.w	r3, r3, #4
    2b96:	6193      	str	r3, [r2, #24]
    2b98:	687b      	ldr	r3, [r7, #4]
    2b9a:	2b01      	cmp	r3, #1
    2b9c:	d10c      	bne.n	2bb8 <usart_config_port+0xac>
    2b9e:	68bb      	ldr	r3, [r7, #8]
    2ba0:	681b      	ldr	r3, [r3, #0]
    2ba2:	f423 627f 	bic.w	r2, r3, #4080	; 0xff0
    2ba6:	68bb      	ldr	r3, [r7, #8]
    2ba8:	601a      	str	r2, [r3, #0]
    2baa:	68bb      	ldr	r3, [r7, #8]
    2bac:	681b      	ldr	r3, [r3, #0]
    2bae:	f443 622a 	orr.w	r2, r3, #2720	; 0xaa0
    2bb2:	68bb      	ldr	r3, [r7, #8]
    2bb4:	601a      	str	r2, [r3, #0]
    2bb6:	e035      	b.n	2c24 <usart_config_port+0x118>
    2bb8:	68bb      	ldr	r3, [r7, #8]
    2bba:	681b      	ldr	r3, [r3, #0]
    2bbc:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2bc0:	68bb      	ldr	r3, [r7, #8]
    2bc2:	601a      	str	r2, [r3, #0]
    2bc4:	68bb      	ldr	r3, [r7, #8]
    2bc6:	681b      	ldr	r3, [r3, #0]
    2bc8:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2bcc:	68bb      	ldr	r3, [r7, #8]
    2bce:	601a      	str	r2, [r3, #0]
    2bd0:	e028      	b.n	2c24 <usart_config_port+0x118>
    2bd2:	4a1a      	ldr	r2, [pc, #104]	; (2c3c <usart_config_port+0x130>)
    2bd4:	4b19      	ldr	r3, [pc, #100]	; (2c3c <usart_config_port+0x130>)
    2bd6:	69db      	ldr	r3, [r3, #28]
    2bd8:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
    2bdc:	61d3      	str	r3, [r2, #28]
    2bde:	4a17      	ldr	r2, [pc, #92]	; (2c3c <usart_config_port+0x130>)
    2be0:	4b16      	ldr	r3, [pc, #88]	; (2c3c <usart_config_port+0x130>)
    2be2:	699b      	ldr	r3, [r3, #24]
    2be4:	f043 0308 	orr.w	r3, r3, #8
    2be8:	6193      	str	r3, [r2, #24]
    2bea:	687b      	ldr	r3, [r7, #4]
    2bec:	2b01      	cmp	r3, #1
    2bee:	d10c      	bne.n	2c0a <usart_config_port+0xfe>
    2bf0:	68bb      	ldr	r3, [r7, #8]
    2bf2:	685b      	ldr	r3, [r3, #4]
    2bf4:	f023 220f 	bic.w	r2, r3, #251662080	; 0xf000f00
    2bf8:	68bb      	ldr	r3, [r7, #8]
    2bfa:	605a      	str	r2, [r3, #4]
    2bfc:	68bb      	ldr	r3, [r7, #8]
    2bfe:	685b      	ldr	r3, [r3, #4]
    2c00:	f043 220a 	orr.w	r2, r3, #167774720	; 0xa000a00
    2c04:	68bb      	ldr	r3, [r7, #8]
    2c06:	605a      	str	r2, [r3, #4]
    2c08:	e00b      	b.n	2c22 <usart_config_port+0x116>
    2c0a:	68bb      	ldr	r3, [r7, #8]
    2c0c:	685b      	ldr	r3, [r3, #4]
    2c0e:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2c12:	68bb      	ldr	r3, [r7, #8]
    2c14:	605a      	str	r2, [r3, #4]
    2c16:	68bb      	ldr	r3, [r7, #8]
    2c18:	685b      	ldr	r3, [r3, #4]
    2c1a:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2c1e:	68bb      	ldr	r3, [r7, #8]
    2c20:	605a      	str	r2, [r3, #4]
    2c22:	bf00      	nop
    2c24:	bf00      	nop
    2c26:	3714      	adds	r7, #20
    2c28:	46bd      	mov	sp, r7
    2c2a:	bc80      	pop	{r7}
    2c2c:	4770      	bx	lr
    2c2e:	bf00      	nop
    2c30:	40004800 	.word	0x40004800
    2c34:	40013800 	.word	0x40013800
    2c38:	40004400 	.word	0x40004400
    2c3c:	40021000 	.word	0x40021000

00002c40 <usart_set_baud>:
    2c40:	b480      	push	{r7}
    2c42:	b085      	sub	sp, #20
    2c44:	af00      	add	r7, sp, #0
    2c46:	6078      	str	r0, [r7, #4]
    2c48:	6039      	str	r1, [r7, #0]
    2c4a:	687b      	ldr	r3, [r7, #4]
    2c4c:	4a15      	ldr	r2, [pc, #84]	; (2ca4 <usart_set_baud+0x64>)
    2c4e:	4293      	cmp	r3, r2
    2c50:	d110      	bne.n	2c74 <usart_set_baud+0x34>
    2c52:	4a15      	ldr	r2, [pc, #84]	; (2ca8 <usart_set_baud+0x68>)
    2c54:	683b      	ldr	r3, [r7, #0]
    2c56:	fbb2 f3f3 	udiv	r3, r2, r3
    2c5a:	091b      	lsrs	r3, r3, #4
    2c5c:	011b      	lsls	r3, r3, #4
    2c5e:	60fb      	str	r3, [r7, #12]
    2c60:	4a11      	ldr	r2, [pc, #68]	; (2ca8 <usart_set_baud+0x68>)
    2c62:	683b      	ldr	r3, [r7, #0]
    2c64:	fbb2 f3f3 	udiv	r3, r2, r3
    2c68:	f003 030f 	and.w	r3, r3, #15
    2c6c:	68fa      	ldr	r2, [r7, #12]
    2c6e:	4313      	orrs	r3, r2
    2c70:	60fb      	str	r3, [r7, #12]
    2c72:	e00f      	b.n	2c94 <usart_set_baud+0x54>
    2c74:	4a0d      	ldr	r2, [pc, #52]	; (2cac <usart_set_baud+0x6c>)
    2c76:	683b      	ldr	r3, [r7, #0]
    2c78:	fbb2 f3f3 	udiv	r3, r2, r3
    2c7c:	091b      	lsrs	r3, r3, #4
    2c7e:	011b      	lsls	r3, r3, #4
    2c80:	60fb      	str	r3, [r7, #12]
    2c82:	4a0a      	ldr	r2, [pc, #40]	; (2cac <usart_set_baud+0x6c>)
    2c84:	683b      	ldr	r3, [r7, #0]
    2c86:	fbb2 f3f3 	udiv	r3, r2, r3
    2c8a:	f003 030f 	and.w	r3, r3, #15
    2c8e:	68fa      	ldr	r2, [r7, #12]
    2c90:	4313      	orrs	r3, r2
    2c92:	60fb      	str	r3, [r7, #12]
    2c94:	687b      	ldr	r3, [r7, #4]
    2c96:	68fa      	ldr	r2, [r7, #12]
    2c98:	609a      	str	r2, [r3, #8]
    2c9a:	bf00      	nop
    2c9c:	3714      	adds	r7, #20
    2c9e:	46bd      	mov	sp, r7
    2ca0:	bc80      	pop	{r7}
    2ca2:	4770      	bx	lr
    2ca4:	40013800 	.word	0x40013800
    2ca8:	044463f4 	.word	0x044463f4
    2cac:	022231fa 	.word	0x022231fa

00002cb0 <usart_comm_dir>:
    2cb0:	b480      	push	{r7}
    2cb2:	b083      	sub	sp, #12
    2cb4:	af00      	add	r7, sp, #0
    2cb6:	6078      	str	r0, [r7, #4]
    2cb8:	6039      	str	r1, [r7, #0]
    2cba:	687b      	ldr	r3, [r7, #4]
    2cbc:	68db      	ldr	r3, [r3, #12]
    2cbe:	f023 020c 	bic.w	r2, r3, #12
    2cc2:	687b      	ldr	r3, [r7, #4]
    2cc4:	60da      	str	r2, [r3, #12]
    2cc6:	687b      	ldr	r3, [r7, #4]
    2cc8:	68da      	ldr	r2, [r3, #12]
    2cca:	683b      	ldr	r3, [r7, #0]
    2ccc:	009b      	lsls	r3, r3, #2
    2cce:	431a      	orrs	r2, r3
    2cd0:	687b      	ldr	r3, [r7, #4]
    2cd2:	60da      	str	r2, [r3, #12]
    2cd4:	bf00      	nop
    2cd6:	370c      	adds	r7, #12
    2cd8:	46bd      	mov	sp, r7
    2cda:	bc80      	pop	{r7}
    2cdc:	4770      	bx	lr

00002cde <usart_open_channel>:
    2cde:	b580      	push	{r7, lr}
    2ce0:	b084      	sub	sp, #16
    2ce2:	af00      	add	r7, sp, #0
    2ce4:	60f8      	str	r0, [r7, #12]
    2ce6:	60b9      	str	r1, [r7, #8]
    2ce8:	607a      	str	r2, [r7, #4]
    2cea:	603b      	str	r3, [r7, #0]
    2cec:	68fb      	ldr	r3, [r7, #12]
    2cee:	4a33      	ldr	r2, [pc, #204]	; (2dbc <usart_open_channel+0xde>)
    2cf0:	4293      	cmp	r3, r2
    2cf2:	d020      	beq.n	2d36 <usart_open_channel+0x58>
    2cf4:	4a32      	ldr	r2, [pc, #200]	; (2dc0 <usart_open_channel+0xe2>)
    2cf6:	4293      	cmp	r3, r2
    2cf8:	d003      	beq.n	2d02 <usart_open_channel+0x24>
    2cfa:	4a32      	ldr	r2, [pc, #200]	; (2dc4 <usart_open_channel+0xe6>)
    2cfc:	4293      	cmp	r3, r2
    2cfe:	d00d      	beq.n	2d1c <usart_open_channel+0x3e>
    2d00:	e026      	b.n	2d50 <usart_open_channel+0x72>
    2d02:	69ba      	ldr	r2, [r7, #24]
    2d04:	4930      	ldr	r1, [pc, #192]	; (2dc8 <usart_open_channel+0xea>)
    2d06:	68f8      	ldr	r0, [r7, #12]
    2d08:	f7ff ff00 	bl	2b0c <usart_config_port>
    2d0c:	2107      	movs	r1, #7
    2d0e:	2025      	movs	r0, #37	; 0x25
    2d10:	f7fe fdc4 	bl	189c <set_int_priority>
    2d14:	2025      	movs	r0, #37	; 0x25
    2d16:	f7fe fd07 	bl	1728 <enable_interrupt>
    2d1a:	e019      	b.n	2d50 <usart_open_channel+0x72>
    2d1c:	69ba      	ldr	r2, [r7, #24]
    2d1e:	492a      	ldr	r1, [pc, #168]	; (2dc8 <usart_open_channel+0xea>)
    2d20:	68f8      	ldr	r0, [r7, #12]
    2d22:	f7ff fef3 	bl	2b0c <usart_config_port>
    2d26:	2107      	movs	r1, #7
    2d28:	2026      	movs	r0, #38	; 0x26
    2d2a:	f7fe fdb7 	bl	189c <set_int_priority>
    2d2e:	2026      	movs	r0, #38	; 0x26
    2d30:	f7fe fcfa 	bl	1728 <enable_interrupt>
    2d34:	e00c      	b.n	2d50 <usart_open_channel+0x72>
    2d36:	69ba      	ldr	r2, [r7, #24]
    2d38:	4924      	ldr	r1, [pc, #144]	; (2dcc <usart_open_channel+0xee>)
    2d3a:	68f8      	ldr	r0, [r7, #12]
    2d3c:	f7ff fee6 	bl	2b0c <usart_config_port>
    2d40:	2107      	movs	r1, #7
    2d42:	2027      	movs	r0, #39	; 0x27
    2d44:	f7fe fdaa 	bl	189c <set_int_priority>
    2d48:	2027      	movs	r0, #39	; 0x27
    2d4a:	f7fe fced 	bl	1728 <enable_interrupt>
    2d4e:	bf00      	nop
    2d50:	69bb      	ldr	r3, [r7, #24]
    2d52:	2b01      	cmp	r3, #1
    2d54:	d103      	bne.n	2d5e <usart_open_channel+0x80>
    2d56:	68fb      	ldr	r3, [r7, #12]
    2d58:	f44f 7240 	mov.w	r2, #768	; 0x300
    2d5c:	615a      	str	r2, [r3, #20]
    2d5e:	6839      	ldr	r1, [r7, #0]
    2d60:	68f8      	ldr	r0, [r7, #12]
    2d62:	f7ff ffa5 	bl	2cb0 <usart_comm_dir>
    2d66:	687b      	ldr	r3, [r7, #4]
    2d68:	2b01      	cmp	r3, #1
    2d6a:	d00b      	beq.n	2d84 <usart_open_channel+0xa6>
    2d6c:	2b01      	cmp	r3, #1
    2d6e:	d302      	bcc.n	2d76 <usart_open_channel+0x98>
    2d70:	2b02      	cmp	r3, #2
    2d72:	d00e      	beq.n	2d92 <usart_open_channel+0xb4>
    2d74:	e014      	b.n	2da0 <usart_open_channel+0xc2>
    2d76:	68fb      	ldr	r3, [r7, #12]
    2d78:	68db      	ldr	r3, [r3, #12]
    2d7a:	f043 0220 	orr.w	r2, r3, #32
    2d7e:	68fb      	ldr	r3, [r7, #12]
    2d80:	60da      	str	r2, [r3, #12]
    2d82:	e00d      	b.n	2da0 <usart_open_channel+0xc2>
    2d84:	68fb      	ldr	r3, [r7, #12]
    2d86:	68db      	ldr	r3, [r3, #12]
    2d88:	f443 62e4 	orr.w	r2, r3, #1824	; 0x720
    2d8c:	68fb      	ldr	r3, [r7, #12]
    2d8e:	60da      	str	r2, [r3, #12]
    2d90:	e006      	b.n	2da0 <usart_open_channel+0xc2>
    2d92:	68fb      	ldr	r3, [r7, #12]
    2d94:	68db      	ldr	r3, [r3, #12]
    2d96:	f443 62a4 	orr.w	r2, r3, #1312	; 0x520
    2d9a:	68fb      	ldr	r3, [r7, #12]
    2d9c:	60da      	str	r2, [r3, #12]
    2d9e:	bf00      	nop
    2da0:	68b9      	ldr	r1, [r7, #8]
    2da2:	68f8      	ldr	r0, [r7, #12]
    2da4:	f7ff ff4c 	bl	2c40 <usart_set_baud>
    2da8:	68fb      	ldr	r3, [r7, #12]
    2daa:	68db      	ldr	r3, [r3, #12]
    2dac:	f443 5200 	orr.w	r2, r3, #8192	; 0x2000
    2db0:	68fb      	ldr	r3, [r7, #12]
    2db2:	60da      	str	r2, [r3, #12]
    2db4:	bf00      	nop
    2db6:	3710      	adds	r7, #16
    2db8:	46bd      	mov	sp, r7
    2dba:	bd80      	pop	{r7, pc}
    2dbc:	40004800 	.word	0x40004800
    2dc0:	40013800 	.word	0x40013800
    2dc4:	40004400 	.word	0x40004400
    2dc8:	40010800 	.word	0x40010800
    2dcc:	40010c00 	.word	0x40010c00

00002dd0 <usart_stat>:
    2dd0:	b480      	push	{r7}
    2dd2:	b083      	sub	sp, #12
    2dd4:	af00      	add	r7, sp, #0
    2dd6:	6078      	str	r0, [r7, #4]
    2dd8:	687b      	ldr	r3, [r7, #4]
    2dda:	681b      	ldr	r3, [r3, #0]
    2ddc:	f003 0320 	and.w	r3, r3, #32
    2de0:	4618      	mov	r0, r3
    2de2:	370c      	adds	r7, #12
    2de4:	46bd      	mov	sp, r7
    2de6:	bc80      	pop	{r7}
    2de8:	4770      	bx	lr

00002dea <usart_getc>:
    2dea:	b480      	push	{r7}
    2dec:	b083      	sub	sp, #12
    2dee:	af00      	add	r7, sp, #0
    2df0:	6078      	str	r0, [r7, #4]
    2df2:	687b      	ldr	r3, [r7, #4]
    2df4:	681b      	ldr	r3, [r3, #0]
    2df6:	f003 0320 	and.w	r3, r3, #32
    2dfa:	2b00      	cmp	r3, #0
    2dfc:	d003      	beq.n	2e06 <usart_getc+0x1c>
    2dfe:	687b      	ldr	r3, [r7, #4]
    2e00:	685b      	ldr	r3, [r3, #4]
    2e02:	b2db      	uxtb	r3, r3
    2e04:	e000      	b.n	2e08 <usart_getc+0x1e>
    2e06:	2300      	movs	r3, #0
    2e08:	4618      	mov	r0, r3
    2e0a:	370c      	adds	r7, #12
    2e0c:	46bd      	mov	sp, r7
    2e0e:	bc80      	pop	{r7}
    2e10:	4770      	bx	lr

00002e12 <usart_getc_dly>:
    2e12:	b480      	push	{r7}
    2e14:	b083      	sub	sp, #12
    2e16:	af00      	add	r7, sp, #0
    2e18:	6078      	str	r0, [r7, #4]
    2e1a:	6039      	str	r1, [r7, #0]
    2e1c:	4a0d      	ldr	r2, [pc, #52]	; (2e54 <usart_getc_dly+0x42>)
    2e1e:	683b      	ldr	r3, [r7, #0]
    2e20:	6013      	str	r3, [r2, #0]
    2e22:	bf00      	nop
    2e24:	4b0b      	ldr	r3, [pc, #44]	; (2e54 <usart_getc_dly+0x42>)
    2e26:	681b      	ldr	r3, [r3, #0]
    2e28:	2b00      	cmp	r3, #0
    2e2a:	d005      	beq.n	2e38 <usart_getc_dly+0x26>
    2e2c:	687b      	ldr	r3, [r7, #4]
    2e2e:	681b      	ldr	r3, [r3, #0]
    2e30:	f003 0320 	and.w	r3, r3, #32
    2e34:	2b00      	cmp	r3, #0
    2e36:	d0f5      	beq.n	2e24 <usart_getc_dly+0x12>
    2e38:	4b06      	ldr	r3, [pc, #24]	; (2e54 <usart_getc_dly+0x42>)
    2e3a:	681b      	ldr	r3, [r3, #0]
    2e3c:	2b00      	cmp	r3, #0
    2e3e:	d003      	beq.n	2e48 <usart_getc_dly+0x36>
    2e40:	687b      	ldr	r3, [r7, #4]
    2e42:	685b      	ldr	r3, [r3, #4]
    2e44:	b2db      	uxtb	r3, r3
    2e46:	e000      	b.n	2e4a <usart_getc_dly+0x38>
    2e48:	2300      	movs	r3, #0
    2e4a:	4618      	mov	r0, r3
    2e4c:	370c      	adds	r7, #12
    2e4e:	46bd      	mov	sp, r7
    2e50:	bc80      	pop	{r7}
    2e52:	4770      	bx	lr
    2e54:	20000474 	.word	0x20000474

00002e58 <usart_putc>:
    2e58:	b480      	push	{r7}
    2e5a:	b083      	sub	sp, #12
    2e5c:	af00      	add	r7, sp, #0
    2e5e:	6078      	str	r0, [r7, #4]
    2e60:	460b      	mov	r3, r1
    2e62:	70fb      	strb	r3, [r7, #3]
    2e64:	bf00      	nop
    2e66:	687b      	ldr	r3, [r7, #4]
    2e68:	681b      	ldr	r3, [r3, #0]
    2e6a:	f003 0380 	and.w	r3, r3, #128	; 0x80
    2e6e:	2b00      	cmp	r3, #0
    2e70:	d0f9      	beq.n	2e66 <usart_putc+0xe>
    2e72:	78fa      	ldrb	r2, [r7, #3]
    2e74:	687b      	ldr	r3, [r7, #4]
    2e76:	605a      	str	r2, [r3, #4]
    2e78:	bf00      	nop
    2e7a:	370c      	adds	r7, #12
    2e7c:	46bd      	mov	sp, r7
    2e7e:	bc80      	pop	{r7}
    2e80:	4770      	bx	lr

00002e82 <usart_cts>:
    2e82:	b480      	push	{r7}
    2e84:	b085      	sub	sp, #20
    2e86:	af00      	add	r7, sp, #0
    2e88:	6078      	str	r0, [r7, #4]
    2e8a:	687b      	ldr	r3, [r7, #4]
    2e8c:	4a10      	ldr	r2, [pc, #64]	; (2ed0 <usart_cts+0x4e>)
    2e8e:	4293      	cmp	r3, r2
    2e90:	d012      	beq.n	2eb8 <usart_cts+0x36>
    2e92:	4a10      	ldr	r2, [pc, #64]	; (2ed4 <usart_cts+0x52>)
    2e94:	4293      	cmp	r3, r2
    2e96:	d003      	beq.n	2ea0 <usart_cts+0x1e>
    2e98:	4a0f      	ldr	r2, [pc, #60]	; (2ed8 <usart_cts+0x56>)
    2e9a:	4293      	cmp	r3, r2
    2e9c:	d006      	beq.n	2eac <usart_cts+0x2a>
    2e9e:	e011      	b.n	2ec4 <usart_cts+0x42>
    2ea0:	4b0e      	ldr	r3, [pc, #56]	; (2edc <usart_cts+0x5a>)
    2ea2:	689b      	ldr	r3, [r3, #8]
    2ea4:	f403 6300 	and.w	r3, r3, #2048	; 0x800
    2ea8:	60fb      	str	r3, [r7, #12]
    2eaa:	e00b      	b.n	2ec4 <usart_cts+0x42>
    2eac:	4b0b      	ldr	r3, [pc, #44]	; (2edc <usart_cts+0x5a>)
    2eae:	689b      	ldr	r3, [r3, #8]
    2eb0:	f003 0301 	and.w	r3, r3, #1
    2eb4:	60fb      	str	r3, [r7, #12]
    2eb6:	e005      	b.n	2ec4 <usart_cts+0x42>
    2eb8:	4b09      	ldr	r3, [pc, #36]	; (2ee0 <usart_cts+0x5e>)
    2eba:	689b      	ldr	r3, [r3, #8]
    2ebc:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
    2ec0:	60fb      	str	r3, [r7, #12]
    2ec2:	bf00      	nop
    2ec4:	68fb      	ldr	r3, [r7, #12]
    2ec6:	4618      	mov	r0, r3
    2ec8:	3714      	adds	r7, #20
    2eca:	46bd      	mov	sp, r7
    2ecc:	bc80      	pop	{r7}
    2ece:	4770      	bx	lr
    2ed0:	40004800 	.word	0x40004800
    2ed4:	40013800 	.word	0x40013800
    2ed8:	40004400 	.word	0x40004400
    2edc:	40010800 	.word	0x40010800
    2ee0:	40010c00 	.word	0x40010c00

00002ee4 <vt100_init>:
    2ee4:	b580      	push	{r7, lr}
    2ee6:	b082      	sub	sp, #8
    2ee8:	af02      	add	r7, sp, #8
    2eea:	2301      	movs	r3, #1
    2eec:	9300      	str	r3, [sp, #0]
    2eee:	2303      	movs	r3, #3
    2ef0:	2200      	movs	r2, #0
    2ef2:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    2ef6:	4803      	ldr	r0, [pc, #12]	; (2f04 <vt100_init+0x20>)
    2ef8:	f7ff fef1 	bl	2cde <usart_open_channel>
    2efc:	bf00      	nop
    2efe:	46bd      	mov	sp, r7
    2f00:	bd80      	pop	{r7, pc}
    2f02:	bf00      	nop
    2f04:	40004400 	.word	0x40004400

00002f08 <vt_putc>:
    2f08:	b580      	push	{r7, lr}
    2f0a:	b082      	sub	sp, #8
    2f0c:	af00      	add	r7, sp, #0
    2f0e:	4603      	mov	r3, r0
    2f10:	71fb      	strb	r3, [r7, #7]
    2f12:	79fb      	ldrb	r3, [r7, #7]
    2f14:	4619      	mov	r1, r3
    2f16:	4803      	ldr	r0, [pc, #12]	; (2f24 <vt_putc+0x1c>)
    2f18:	f7ff ff9e 	bl	2e58 <usart_putc>
    2f1c:	bf00      	nop
    2f1e:	3708      	adds	r7, #8
    2f20:	46bd      	mov	sp, r7
    2f22:	bd80      	pop	{r7, pc}
    2f24:	40004400 	.word	0x40004400

00002f28 <vt_del_back>:
    2f28:	b580      	push	{r7, lr}
    2f2a:	af00      	add	r7, sp, #0
    2f2c:	2108      	movs	r1, #8
    2f2e:	4806      	ldr	r0, [pc, #24]	; (2f48 <vt_del_back+0x20>)
    2f30:	f7ff ff92 	bl	2e58 <usart_putc>
    2f34:	2120      	movs	r1, #32
    2f36:	4804      	ldr	r0, [pc, #16]	; (2f48 <vt_del_back+0x20>)
    2f38:	f7ff ff8e 	bl	2e58 <usart_putc>
    2f3c:	2108      	movs	r1, #8
    2f3e:	4802      	ldr	r0, [pc, #8]	; (2f48 <vt_del_back+0x20>)
    2f40:	f7ff ff8a 	bl	2e58 <usart_putc>
    2f44:	bf00      	nop
    2f46:	bd80      	pop	{r7, pc}
    2f48:	40004400 	.word	0x40004400

00002f4c <vt_esc_seq>:
    2f4c:	b580      	push	{r7, lr}
    2f4e:	af00      	add	r7, sp, #0
    2f50:	211b      	movs	r1, #27
    2f52:	4804      	ldr	r0, [pc, #16]	; (2f64 <vt_esc_seq+0x18>)
    2f54:	f7ff ff80 	bl	2e58 <usart_putc>
    2f58:	215b      	movs	r1, #91	; 0x5b
    2f5a:	4802      	ldr	r0, [pc, #8]	; (2f64 <vt_esc_seq+0x18>)
    2f5c:	f7ff ff7c 	bl	2e58 <usart_putc>
    2f60:	bf00      	nop
    2f62:	bd80      	pop	{r7, pc}
    2f64:	40004400 	.word	0x40004400

00002f68 <vt_cls>:
    2f68:	b580      	push	{r7, lr}
    2f6a:	af00      	add	r7, sp, #0
    2f6c:	f7ff ffee 	bl	2f4c <vt_esc_seq>
    2f70:	2132      	movs	r1, #50	; 0x32
    2f72:	4804      	ldr	r0, [pc, #16]	; (2f84 <vt_cls+0x1c>)
    2f74:	f7ff ff70 	bl	2e58 <usart_putc>
    2f78:	214a      	movs	r1, #74	; 0x4a
    2f7a:	4802      	ldr	r0, [pc, #8]	; (2f84 <vt_cls+0x1c>)
    2f7c:	f7ff ff6c 	bl	2e58 <usart_putc>
    2f80:	bf00      	nop
    2f82:	bd80      	pop	{r7, pc}
    2f84:	40004400 	.word	0x40004400

00002f88 <vt_clear_line>:
    2f88:	b580      	push	{r7, lr}
    2f8a:	b082      	sub	sp, #8
    2f8c:	af00      	add	r7, sp, #0
    2f8e:	6078      	str	r0, [r7, #4]
    2f90:	f7ff ffdc 	bl	2f4c <vt_esc_seq>
    2f94:	2132      	movs	r1, #50	; 0x32
    2f96:	480b      	ldr	r0, [pc, #44]	; (2fc4 <vt_clear_line+0x3c>)
    2f98:	f7ff ff5e 	bl	2e58 <usart_putc>
    2f9c:	214b      	movs	r1, #75	; 0x4b
    2f9e:	4809      	ldr	r0, [pc, #36]	; (2fc4 <vt_clear_line+0x3c>)
    2fa0:	f7ff ff5a 	bl	2e58 <usart_putc>
    2fa4:	e006      	b.n	2fb4 <vt_clear_line+0x2c>
    2fa6:	2108      	movs	r1, #8
    2fa8:	4806      	ldr	r0, [pc, #24]	; (2fc4 <vt_clear_line+0x3c>)
    2faa:	f7ff ff55 	bl	2e58 <usart_putc>
    2fae:	687b      	ldr	r3, [r7, #4]
    2fb0:	3b01      	subs	r3, #1
    2fb2:	607b      	str	r3, [r7, #4]
    2fb4:	687b      	ldr	r3, [r7, #4]
    2fb6:	2b00      	cmp	r3, #0
    2fb8:	d1f5      	bne.n	2fa6 <vt_clear_line+0x1e>
    2fba:	bf00      	nop
    2fbc:	3708      	adds	r7, #8
    2fbe:	46bd      	mov	sp, r7
    2fc0:	bd80      	pop	{r7, pc}
    2fc2:	bf00      	nop
    2fc4:	40004400 	.word	0x40004400

00002fc8 <vt_ready>:
    2fc8:	b480      	push	{r7}
    2fca:	af00      	add	r7, sp, #0
    2fcc:	4b06      	ldr	r3, [pc, #24]	; (2fe8 <vt_ready+0x20>)
    2fce:	689b      	ldr	r3, [r3, #8]
    2fd0:	f003 0301 	and.w	r3, r3, #1
    2fd4:	2b00      	cmp	r3, #0
    2fd6:	bf0c      	ite	eq
    2fd8:	2301      	moveq	r3, #1
    2fda:	2300      	movne	r3, #0
    2fdc:	b2db      	uxtb	r3, r3
    2fde:	4618      	mov	r0, r3
    2fe0:	46bd      	mov	sp, r7
    2fe2:	bc80      	pop	{r7}
    2fe4:	4770      	bx	lr
    2fe6:	bf00      	nop
    2fe8:	40010800 	.word	0x40010800

00002fec <vt_rx_enable>:
    2fec:	b480      	push	{r7}
    2fee:	b085      	sub	sp, #20
    2ff0:	af00      	add	r7, sp, #0
    2ff2:	6078      	str	r0, [r7, #4]
    2ff4:	687b      	ldr	r3, [r7, #4]
    2ff6:	2b00      	cmp	r3, #0
    2ff8:	d006      	beq.n	3008 <vt_rx_enable+0x1c>
    2ffa:	4a0a      	ldr	r2, [pc, #40]	; (3024 <vt_rx_enable+0x38>)
    2ffc:	4b09      	ldr	r3, [pc, #36]	; (3024 <vt_rx_enable+0x38>)
    2ffe:	68db      	ldr	r3, [r3, #12]
    3000:	f043 0320 	orr.w	r3, r3, #32
    3004:	60d3      	str	r3, [r2, #12]
    3006:	e008      	b.n	301a <vt_rx_enable+0x2e>
    3008:	4b06      	ldr	r3, [pc, #24]	; (3024 <vt_rx_enable+0x38>)
    300a:	685b      	ldr	r3, [r3, #4]
    300c:	73fb      	strb	r3, [r7, #15]
    300e:	4a05      	ldr	r2, [pc, #20]	; (3024 <vt_rx_enable+0x38>)
    3010:	4b04      	ldr	r3, [pc, #16]	; (3024 <vt_rx_enable+0x38>)
    3012:	68db      	ldr	r3, [r3, #12]
    3014:	f023 0320 	bic.w	r3, r3, #32
    3018:	60d3      	str	r3, [r2, #12]
    301a:	bf00      	nop
    301c:	3714      	adds	r7, #20
    301e:	46bd      	mov	sp, r7
    3020:	bc80      	pop	{r7}
    3022:	4770      	bx	lr
    3024:	40004400 	.word	0x40004400

00003028 <USART2_handler>:
    3028:	b580      	push	{r7, lr}
    302a:	af00      	add	r7, sp, #0
    302c:	4b09      	ldr	r3, [pc, #36]	; (3054 <USART2_handler+0x2c>)
    302e:	781b      	ldrb	r3, [r3, #0]
    3030:	2b02      	cmp	r3, #2
    3032:	d10c      	bne.n	304e <USART2_handler+0x26>
    3034:	4b08      	ldr	r3, [pc, #32]	; (3058 <USART2_handler+0x30>)
    3036:	681b      	ldr	r3, [r3, #0]
    3038:	f003 0320 	and.w	r3, r3, #32
    303c:	2b00      	cmp	r3, #0
    303e:	d006      	beq.n	304e <USART2_handler+0x26>
    3040:	4b04      	ldr	r3, [pc, #16]	; (3054 <USART2_handler+0x2c>)
    3042:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3044:	4a04      	ldr	r2, [pc, #16]	; (3058 <USART2_handler+0x30>)
    3046:	6852      	ldr	r2, [r2, #4]
    3048:	b2d2      	uxtb	r2, r2
    304a:	4610      	mov	r0, r2
    304c:	4798      	blx	r3
    304e:	bf00      	nop
    3050:	bd80      	pop	{r7, pc}
    3052:	bf00      	nop
    3054:	20000480 	.word	0x20000480
    3058:	40004400 	.word	0x40004400

0000305c <vt_flow_ctrl>:
    305c:	b580      	push	{r7, lr}
    305e:	b082      	sub	sp, #8
    3060:	af00      	add	r7, sp, #0
    3062:	6078      	str	r0, [r7, #4]
    3064:	687b      	ldr	r3, [r7, #4]
    3066:	2b00      	cmp	r3, #0
    3068:	d003      	beq.n	3072 <vt_flow_ctrl+0x16>
    306a:	2026      	movs	r0, #38	; 0x26
    306c:	f7fe fb5c 	bl	1728 <enable_interrupt>
    3070:	e002      	b.n	3078 <vt_flow_ctrl+0x1c>
    3072:	2026      	movs	r0, #38	; 0x26
    3074:	f7fe fb7c 	bl	1770 <disable_interrupt>
    3078:	bf00      	nop
    307a:	3708      	adds	r7, #8
    307c:	46bd      	mov	sp, r7
    307e:	bd80      	pop	{r7, pc}
