
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 59 02 00 00 d1 01 00 00     .P. 1...Y.......
      10:	5f 02 00 00 65 02 00 00 6b 02 00 00 81 29 00 00     _...e...k....)..
      20:	81 29 00 00 81 29 00 00 81 29 00 00 71 02 00 00     .)...)...)..q...
      30:	81 29 00 00 81 29 00 00 77 02 00 00 65 2a 00 00     .)...)..w...e*..
      40:	83 02 00 00 89 02 00 00 95 02 00 00 b9 26 00 00     .............&..
      50:	9b 02 00 00 a1 02 00 00 a7 02 00 00 ad 02 00 00     ................
      60:	b3 02 00 00 b9 02 00 00 bf 02 00 00 c5 02 00 00     ................
      70:	cb 02 00 00 81 29 00 00 81 29 00 00 d1 02 00 00     .....)...)......
      80:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..
      90:	81 29 00 00 81 29 00 00 81 29 00 00 d7 02 00 00     .)...)...)......
      a0:	81 29 00 00 1d 2b 00 00 81 29 00 00 81 29 00 00     .)...+...)...)..
      b0:	e3 02 00 00 e9 02 00 00 ef 02 00 00 81 29 00 00     .............)..
      c0:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..
      d0:	81 29 00 00 f5 02 00 00 75 32 00 00 01 03 00 00     .)......u2......
      e0:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..
      f0:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..
     100:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..
     110:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..
     120:	81 29 00 00 81 29 00 00 81 29 00 00 81 29 00 00     .)...)...)...)..

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
     19a:	f001 fb37 	bl	180c <main>
     19e:	bf00      	nop
     1a0:	3718      	adds	r7, #24
     1a2:	46bd      	mov	sp, r7
     1a4:	bd80      	pop	{r7, pc}
     1a6:	bf00      	nop
     1a8:	2000005c 	.word	0x2000005c
     1ac:	20000994 	.word	0x20000994
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
     1f8:	f002 fbca 	bl	2990 <print_fault>
     1fc:	e01b      	b.n	236 <HARD_FAULT_handler+0x66>
     1fe:	4b11      	ldr	r3, [pc, #68]	; (244 <HARD_FAULT_handler+0x74>)
     200:	681b      	ldr	r3, [r3, #0]
     202:	f3c3 2307 	ubfx	r3, r3, #8, #8
     206:	b2db      	uxtb	r3, r3
     208:	2b00      	cmp	r3, #0
     20a:	d004      	beq.n	216 <HARD_FAULT_handler+0x46>
     20c:	6879      	ldr	r1, [r7, #4]
     20e:	480f      	ldr	r0, [pc, #60]	; (24c <HARD_FAULT_handler+0x7c>)
     210:	f002 fbbe 	bl	2990 <print_fault>
     214:	e00f      	b.n	236 <HARD_FAULT_handler+0x66>
     216:	4b0b      	ldr	r3, [pc, #44]	; (244 <HARD_FAULT_handler+0x74>)
     218:	681b      	ldr	r3, [r3, #0]
     21a:	f3c3 430f 	ubfx	r3, r3, #16, #16
     21e:	b29b      	uxth	r3, r3
     220:	2b00      	cmp	r3, #0
     222:	d004      	beq.n	22e <HARD_FAULT_handler+0x5e>
     224:	6879      	ldr	r1, [r7, #4]
     226:	480a      	ldr	r0, [pc, #40]	; (250 <HARD_FAULT_handler+0x80>)
     228:	f002 fbb2 	bl	2990 <print_fault>
     22c:	e003      	b.n	236 <HARD_FAULT_handler+0x66>
     22e:	6879      	ldr	r1, [r7, #4]
     230:	4808      	ldr	r0, [pc, #32]	; (254 <HARD_FAULT_handler+0x84>)
     232:	f002 fbad 	bl	2990 <print_fault>
     236:	bf00      	nop
     238:	370c      	adds	r7, #12
     23a:	46bd      	mov	sp, r7
     23c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     240:	4685      	mov	sp, r0
     242:	4770      	bx	lr
     244:	e000ed28 	.word	0xe000ed28
     248:	000033b4 	.word	0x000033b4
     24c:	000033cc 	.word	0x000033cc
     250:	000033d8 	.word	0x000033d8
     254:	000033e8 	.word	0x000033e8

00000258 <NMI_handler>:
     258:	f002 fb92 	bl	2980 <reset_mcu>
     25c:	bf00      	nop

0000025e <MM_FAULT_handler>:
     25e:	f002 fb8f 	bl	2980 <reset_mcu>
     262:	bf00      	nop

00000264 <BUS_FAULT_handler>:
     264:	f002 fb8c 	bl	2980 <reset_mcu>
     268:	bf00      	nop

0000026a <USAGE_FAULT_handler>:
     26a:	f002 fb89 	bl	2980 <reset_mcu>
     26e:	bf00      	nop

00000270 <SVC_handler>:
     270:	f002 fb86 	bl	2980 <reset_mcu>
     274:	bf00      	nop

00000276 <PENDSV_handler>:
     276:	f002 fb83 	bl	2980 <reset_mcu>
     27a:	bf00      	nop
     27c:	f002 fb80 	bl	2980 <reset_mcu>
     280:	bf00      	nop

00000282 <WWDG_handler>:
     282:	f002 fb7d 	bl	2980 <reset_mcu>
     286:	bf00      	nop

00000288 <PVD_handler>:
     288:	f002 fb7a 	bl	2980 <reset_mcu>
     28c:	bf00      	nop
     28e:	f002 fb77 	bl	2980 <reset_mcu>
     292:	bf00      	nop

00000294 <TAMPER_handler>:
     294:	f002 fb74 	bl	2980 <reset_mcu>
     298:	bf00      	nop

0000029a <FLASH_handler>:
     29a:	f002 fb71 	bl	2980 <reset_mcu>
     29e:	bf00      	nop

000002a0 <RCC_handler>:
     2a0:	f002 fb6e 	bl	2980 <reset_mcu>
     2a4:	bf00      	nop

000002a6 <EXTI0_handler>:
     2a6:	f002 fb6b 	bl	2980 <reset_mcu>
     2aa:	bf00      	nop

000002ac <EXTI1_handler>:
     2ac:	f002 fb68 	bl	2980 <reset_mcu>
     2b0:	bf00      	nop

000002b2 <EXTI2_handler>:
     2b2:	f002 fb65 	bl	2980 <reset_mcu>
     2b6:	bf00      	nop

000002b8 <EXTI3_handler>:
     2b8:	f002 fb62 	bl	2980 <reset_mcu>
     2bc:	bf00      	nop

000002be <EXTI4_handler>:
     2be:	f002 fb5f 	bl	2980 <reset_mcu>
     2c2:	bf00      	nop

000002c4 <DMA1CH1_handler>:
     2c4:	f002 fb5c 	bl	2980 <reset_mcu>
     2c8:	bf00      	nop

000002ca <DMA1CH2_handler>:
     2ca:	f002 fb59 	bl	2980 <reset_mcu>
     2ce:	bf00      	nop

000002d0 <DMA1CH5_handler>:
     2d0:	f002 fb56 	bl	2980 <reset_mcu>
     2d4:	bf00      	nop

000002d6 <EXTI9_5_handler>:
     2d6:	f002 fb53 	bl	2980 <reset_mcu>
     2da:	bf00      	nop

000002dc <TIM1_CC_handler>:
     2dc:	f002 fb50 	bl	2980 <reset_mcu>
     2e0:	bf00      	nop

000002e2 <TIM2_handler>:
     2e2:	f002 fb4d 	bl	2980 <reset_mcu>
     2e6:	bf00      	nop

000002e8 <TIM3_handler>:
     2e8:	f002 fb4a 	bl	2980 <reset_mcu>
     2ec:	bf00      	nop

000002ee <TIM4_handler>:
     2ee:	f002 fb47 	bl	2980 <reset_mcu>
     2f2:	bf00      	nop

000002f4 <USART1_handler>:
     2f4:	f002 fb44 	bl	2980 <reset_mcu>
     2f8:	bf00      	nop
     2fa:	f002 fb41 	bl	2980 <reset_mcu>
     2fe:	bf00      	nop

00000300 <USART3_handler>:
     300:	f002 fb3e 	bl	2980 <reset_mcu>
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
     5ae:	f002 fdd1 	bl	3154 <vt_putc>
     5b2:	f7ff ffdf 	bl	574 <serial_cursor_right>
     5b6:	bf00      	nop
     5b8:	3708      	adds	r7, #8
     5ba:	46bd      	mov	sp, r7
     5bc:	bd80      	pop	{r7, pc}

000005be <serial_crlf>:
     5be:	b580      	push	{r7, lr}
     5c0:	af00      	add	r7, sp, #0
     5c2:	200d      	movs	r0, #13
     5c4:	f002 fdc6 	bl	3154 <vt_putc>
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
     5dc:	f002 fdfa 	bl	31d4 <vt_clear_line>
     5e0:	bf00      	nop
     5e2:	bd80      	pop	{r7, pc}
     5e4:	20000060 	.word	0x20000060

000005e8 <serial_clear_screen>:
     5e8:	b580      	push	{r7, lr}
     5ea:	af00      	add	r7, sp, #0
     5ec:	f002 fde2 	bl	31b4 <vt_cls>
     5f0:	f7ff ff70 	bl	4d4 <cursor_home>
     5f4:	bf00      	nop
     5f6:	bd80      	pop	{r7, pc}

000005f8 <serial_flow_ctrl>:
     5f8:	b580      	push	{r7, lr}
     5fa:	b082      	sub	sp, #8
     5fc:	af00      	add	r7, sp, #0
     5fe:	6078      	str	r0, [r7, #4]
     600:	6878      	ldr	r0, [r7, #4]
     602:	f002 fe51 	bl	32a8 <vt_flow_ctrl>
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
     680:	f001 f968 	bl	1954 <get_active>
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
     700:	f001 f8ee 	bl	18e0 <disable_interrupt>
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
     744:	f001 f8a8 	bl	1898 <enable_interrupt>
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
     768:	00003175 	.word	0x00003175
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

000016ac <plot>:
    16ac:	b480      	push	{r7}
    16ae:	b089      	sub	sp, #36	; 0x24
    16b0:	af00      	add	r7, sp, #0
    16b2:	60f8      	str	r0, [r7, #12]
    16b4:	60b9      	str	r1, [r7, #8]
    16b6:	4613      	mov	r3, r2
    16b8:	71fb      	strb	r3, [r7, #7]
    16ba:	68fb      	ldr	r3, [r7, #12]
    16bc:	2b00      	cmp	r3, #0
    16be:	db3b      	blt.n	1738 <plot+0x8c>
    16c0:	68fb      	ldr	r3, [r7, #12]
    16c2:	2b7f      	cmp	r3, #127	; 0x7f
    16c4:	dc38      	bgt.n	1738 <plot+0x8c>
    16c6:	68bb      	ldr	r3, [r7, #8]
    16c8:	2b00      	cmp	r3, #0
    16ca:	db35      	blt.n	1738 <plot+0x8c>
    16cc:	68bb      	ldr	r3, [r7, #8]
    16ce:	2b4b      	cmp	r3, #75	; 0x4b
    16d0:	dc32      	bgt.n	1738 <plot+0x8c>
    16d2:	68bb      	ldr	r3, [r7, #8]
    16d4:	011a      	lsls	r2, r3, #4
    16d6:	68fb      	ldr	r3, [r7, #12]
    16d8:	2b00      	cmp	r3, #0
    16da:	da00      	bge.n	16de <plot+0x32>
    16dc:	3307      	adds	r3, #7
    16de:	10db      	asrs	r3, r3, #3
    16e0:	4413      	add	r3, r2
    16e2:	61bb      	str	r3, [r7, #24]
    16e4:	68fb      	ldr	r3, [r7, #12]
    16e6:	425a      	negs	r2, r3
    16e8:	f003 0307 	and.w	r3, r3, #7
    16ec:	f002 0207 	and.w	r2, r2, #7
    16f0:	bf58      	it	pl
    16f2:	4253      	negpl	r3, r2
    16f4:	f1c3 0307 	rsb	r3, r3, #7
    16f8:	2201      	movs	r2, #1
    16fa:	fa02 f303 	lsl.w	r3, r2, r3
    16fe:	75fb      	strb	r3, [r7, #23]
    1700:	4a10      	ldr	r2, [pc, #64]	; (1744 <plot+0x98>)
    1702:	69bb      	ldr	r3, [r7, #24]
    1704:	4413      	add	r3, r2
    1706:	781b      	ldrb	r3, [r3, #0]
    1708:	77fb      	strb	r3, [r7, #31]
    170a:	79fb      	ldrb	r3, [r7, #7]
    170c:	2b00      	cmp	r3, #0
    170e:	d004      	beq.n	171a <plot+0x6e>
    1710:	7ffa      	ldrb	r2, [r7, #31]
    1712:	7dfb      	ldrb	r3, [r7, #23]
    1714:	4313      	orrs	r3, r2
    1716:	77fb      	strb	r3, [r7, #31]
    1718:	e008      	b.n	172c <plot+0x80>
    171a:	f997 3017 	ldrsb.w	r3, [r7, #23]
    171e:	43db      	mvns	r3, r3
    1720:	b25a      	sxtb	r2, r3
    1722:	f997 301f 	ldrsb.w	r3, [r7, #31]
    1726:	4013      	ands	r3, r2
    1728:	b25b      	sxtb	r3, r3
    172a:	77fb      	strb	r3, [r7, #31]
    172c:	4a05      	ldr	r2, [pc, #20]	; (1744 <plot+0x98>)
    172e:	69bb      	ldr	r3, [r7, #24]
    1730:	4413      	add	r3, r2
    1732:	7ffa      	ldrb	r2, [r7, #31]
    1734:	701a      	strb	r2, [r3, #0]
    1736:	e000      	b.n	173a <plot+0x8e>
    1738:	bf00      	nop
    173a:	3724      	adds	r7, #36	; 0x24
    173c:	46bd      	mov	sp, r7
    173e:	bc80      	pop	{r7}
    1740:	4770      	bx	lr
    1742:	bf00      	nop
    1744:	200004d4 	.word	0x200004d4

00001748 <rectangle>:
    1748:	b580      	push	{r7, lr}
    174a:	b086      	sub	sp, #24
    174c:	af00      	add	r7, sp, #0
    174e:	60f8      	str	r0, [r7, #12]
    1750:	60b9      	str	r1, [r7, #8]
    1752:	607a      	str	r2, [r7, #4]
    1754:	603b      	str	r3, [r7, #0]
    1756:	68fa      	ldr	r2, [r7, #12]
    1758:	687b      	ldr	r3, [r7, #4]
    175a:	429a      	cmp	r2, r3
    175c:	dd05      	ble.n	176a <rectangle+0x22>
    175e:	68fb      	ldr	r3, [r7, #12]
    1760:	617b      	str	r3, [r7, #20]
    1762:	687b      	ldr	r3, [r7, #4]
    1764:	60fb      	str	r3, [r7, #12]
    1766:	697b      	ldr	r3, [r7, #20]
    1768:	607b      	str	r3, [r7, #4]
    176a:	68ba      	ldr	r2, [r7, #8]
    176c:	683b      	ldr	r3, [r7, #0]
    176e:	429a      	cmp	r2, r3
    1770:	dd05      	ble.n	177e <rectangle+0x36>
    1772:	68bb      	ldr	r3, [r7, #8]
    1774:	617b      	str	r3, [r7, #20]
    1776:	683b      	ldr	r3, [r7, #0]
    1778:	60bb      	str	r3, [r7, #8]
    177a:	697b      	ldr	r3, [r7, #20]
    177c:	603b      	str	r3, [r7, #0]
    177e:	68fb      	ldr	r3, [r7, #12]
    1780:	617b      	str	r3, [r7, #20]
    1782:	e00c      	b.n	179e <rectangle+0x56>
    1784:	2201      	movs	r2, #1
    1786:	68b9      	ldr	r1, [r7, #8]
    1788:	6978      	ldr	r0, [r7, #20]
    178a:	f7ff ff8f 	bl	16ac <plot>
    178e:	2201      	movs	r2, #1
    1790:	6839      	ldr	r1, [r7, #0]
    1792:	6978      	ldr	r0, [r7, #20]
    1794:	f7ff ff8a 	bl	16ac <plot>
    1798:	697b      	ldr	r3, [r7, #20]
    179a:	3301      	adds	r3, #1
    179c:	617b      	str	r3, [r7, #20]
    179e:	697a      	ldr	r2, [r7, #20]
    17a0:	687b      	ldr	r3, [r7, #4]
    17a2:	429a      	cmp	r2, r3
    17a4:	ddee      	ble.n	1784 <rectangle+0x3c>
    17a6:	68bb      	ldr	r3, [r7, #8]
    17a8:	3301      	adds	r3, #1
    17aa:	60bb      	str	r3, [r7, #8]
    17ac:	e00c      	b.n	17c8 <rectangle+0x80>
    17ae:	2201      	movs	r2, #1
    17b0:	68b9      	ldr	r1, [r7, #8]
    17b2:	68f8      	ldr	r0, [r7, #12]
    17b4:	f7ff ff7a 	bl	16ac <plot>
    17b8:	2201      	movs	r2, #1
    17ba:	68b9      	ldr	r1, [r7, #8]
    17bc:	6878      	ldr	r0, [r7, #4]
    17be:	f7ff ff75 	bl	16ac <plot>
    17c2:	68bb      	ldr	r3, [r7, #8]
    17c4:	3301      	adds	r3, #1
    17c6:	60bb      	str	r3, [r7, #8]
    17c8:	68ba      	ldr	r2, [r7, #8]
    17ca:	683b      	ldr	r3, [r7, #0]
    17cc:	429a      	cmp	r2, r3
    17ce:	dbee      	blt.n	17ae <rectangle+0x66>
    17d0:	bf00      	nop
    17d2:	3718      	adds	r7, #24
    17d4:	46bd      	mov	sp, r7
    17d6:	bd80      	pop	{r7, pc}

000017d8 <graphic_clear>:
    17d8:	b480      	push	{r7}
    17da:	b083      	sub	sp, #12
    17dc:	af00      	add	r7, sp, #0
    17de:	2300      	movs	r3, #0
    17e0:	607b      	str	r3, [r7, #4]
    17e2:	e007      	b.n	17f4 <graphic_clear+0x1c>
    17e4:	4a08      	ldr	r2, [pc, #32]	; (1808 <graphic_clear+0x30>)
    17e6:	687b      	ldr	r3, [r7, #4]
    17e8:	4413      	add	r3, r2
    17ea:	2200      	movs	r2, #0
    17ec:	701a      	strb	r2, [r3, #0]
    17ee:	687b      	ldr	r3, [r7, #4]
    17f0:	3301      	adds	r3, #1
    17f2:	607b      	str	r3, [r7, #4]
    17f4:	687b      	ldr	r3, [r7, #4]
    17f6:	f5b3 6f98 	cmp.w	r3, #1216	; 0x4c0
    17fa:	dbf3      	blt.n	17e4 <graphic_clear+0xc>
    17fc:	bf00      	nop
    17fe:	370c      	adds	r7, #12
    1800:	46bd      	mov	sp, r7
    1802:	bc80      	pop	{r7}
    1804:	4770      	bx	lr
    1806:	bf00      	nop
    1808:	200004d4 	.word	0x200004d4

0000180c <main>:
    180c:	b580      	push	{r7, lr}
    180e:	b082      	sub	sp, #8
    1810:	af00      	add	r7, sp, #0
    1812:	f7ff ff13 	bl	163c <set_sysclock>
    1816:	f001 f8fd 	bl	2a14 <config_systicks>
    181a:	4b1d      	ldr	r3, [pc, #116]	; (1890 <main+0x84>)
    181c:	f640 021d 	movw	r2, #2077	; 0x81d
    1820:	619a      	str	r2, [r3, #24]
    1822:	2206      	movs	r2, #6
    1824:	210d      	movs	r1, #13
    1826:	481b      	ldr	r0, [pc, #108]	; (1894 <main+0x88>)
    1828:	f7ff fe91 	bl	154e <config_pin>
    182c:	f001 fc80 	bl	3130 <vt100_init>
    1830:	2002      	movs	r0, #2
    1832:	f7fe ffa1 	bl	778 <console_init>
    1836:	f001 f92d 	bl	2a94 <tvout_init>
    183a:	f7ff ffcd 	bl	17d8 <graphic_clear>
    183e:	234b      	movs	r3, #75	; 0x4b
    1840:	227f      	movs	r2, #127	; 0x7f
    1842:	2100      	movs	r1, #0
    1844:	2000      	movs	r0, #0
    1846:	f7ff ff7f 	bl	1748 <rectangle>
    184a:	231a      	movs	r3, #26
    184c:	607b      	str	r3, [r7, #4]
    184e:	2301      	movs	r3, #1
    1850:	603b      	str	r3, [r7, #0]
    1852:	e00a      	b.n	186a <main+0x5e>
    1854:	2201      	movs	r2, #1
    1856:	6839      	ldr	r1, [r7, #0]
    1858:	6878      	ldr	r0, [r7, #4]
    185a:	f7ff ff27 	bl	16ac <plot>
    185e:	687b      	ldr	r3, [r7, #4]
    1860:	3301      	adds	r3, #1
    1862:	607b      	str	r3, [r7, #4]
    1864:	683b      	ldr	r3, [r7, #0]
    1866:	3301      	adds	r3, #1
    1868:	603b      	str	r3, [r7, #0]
    186a:	687b      	ldr	r3, [r7, #4]
    186c:	2b65      	cmp	r3, #101	; 0x65
    186e:	ddf1      	ble.n	1854 <main+0x48>
    1870:	2201      	movs	r2, #1
    1872:	210d      	movs	r1, #13
    1874:	4807      	ldr	r0, [pc, #28]	; (1894 <main+0x88>)
    1876:	f7ff feac 	bl	15d2 <write_pin>
    187a:	f7fe ffff 	bl	87c <conin>
    187e:	4603      	mov	r3, r0
    1880:	4618      	mov	r0, r3
    1882:	f7fe ffa5 	bl	7d0 <conout>
    1886:	210d      	movs	r1, #13
    1888:	4802      	ldr	r0, [pc, #8]	; (1894 <main+0x88>)
    188a:	f7ff fec4 	bl	1616 <toggle_pin>
    188e:	e7f4      	b.n	187a <main+0x6e>
    1890:	40021000 	.word	0x40021000
    1894:	40011000 	.word	0x40011000

00001898 <enable_interrupt>:
    1898:	b480      	push	{r7}
    189a:	b083      	sub	sp, #12
    189c:	af00      	add	r7, sp, #0
    189e:	6078      	str	r0, [r7, #4]
    18a0:	687b      	ldr	r3, [r7, #4]
    18a2:	2b3b      	cmp	r3, #59	; 0x3b
    18a4:	dc17      	bgt.n	18d6 <enable_interrupt+0x3e>
    18a6:	687b      	ldr	r3, [r7, #4]
    18a8:	115b      	asrs	r3, r3, #5
    18aa:	009b      	lsls	r3, r3, #2
    18ac:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    18b0:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    18b4:	687a      	ldr	r2, [r7, #4]
    18b6:	1152      	asrs	r2, r2, #5
    18b8:	0092      	lsls	r2, r2, #2
    18ba:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    18be:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    18c2:	6812      	ldr	r2, [r2, #0]
    18c4:	6879      	ldr	r1, [r7, #4]
    18c6:	f001 011f 	and.w	r1, r1, #31
    18ca:	2001      	movs	r0, #1
    18cc:	fa00 f101 	lsl.w	r1, r0, r1
    18d0:	430a      	orrs	r2, r1
    18d2:	601a      	str	r2, [r3, #0]
    18d4:	e000      	b.n	18d8 <enable_interrupt+0x40>
    18d6:	bf00      	nop
    18d8:	370c      	adds	r7, #12
    18da:	46bd      	mov	sp, r7
    18dc:	bc80      	pop	{r7}
    18de:	4770      	bx	lr

000018e0 <disable_interrupt>:
    18e0:	b480      	push	{r7}
    18e2:	b083      	sub	sp, #12
    18e4:	af00      	add	r7, sp, #0
    18e6:	6078      	str	r0, [r7, #4]
    18e8:	687b      	ldr	r3, [r7, #4]
    18ea:	2b3b      	cmp	r3, #59	; 0x3b
    18ec:	dc0c      	bgt.n	1908 <disable_interrupt+0x28>
    18ee:	687b      	ldr	r3, [r7, #4]
    18f0:	115b      	asrs	r3, r3, #5
    18f2:	009a      	lsls	r2, r3, #2
    18f4:	4b07      	ldr	r3, [pc, #28]	; (1914 <disable_interrupt+0x34>)
    18f6:	4413      	add	r3, r2
    18f8:	687a      	ldr	r2, [r7, #4]
    18fa:	f002 021f 	and.w	r2, r2, #31
    18fe:	2101      	movs	r1, #1
    1900:	fa01 f202 	lsl.w	r2, r1, r2
    1904:	601a      	str	r2, [r3, #0]
    1906:	e000      	b.n	190a <disable_interrupt+0x2a>
    1908:	bf00      	nop
    190a:	370c      	adds	r7, #12
    190c:	46bd      	mov	sp, r7
    190e:	bc80      	pop	{r7}
    1910:	4770      	bx	lr
    1912:	bf00      	nop
    1914:	e000e180 	.word	0xe000e180

00001918 <get_pending>:
    1918:	b480      	push	{r7}
    191a:	b083      	sub	sp, #12
    191c:	af00      	add	r7, sp, #0
    191e:	6078      	str	r0, [r7, #4]
    1920:	687b      	ldr	r3, [r7, #4]
    1922:	2b3b      	cmp	r3, #59	; 0x3b
    1924:	dd01      	ble.n	192a <get_pending+0x12>
    1926:	2300      	movs	r3, #0
    1928:	e00c      	b.n	1944 <get_pending+0x2c>
    192a:	687b      	ldr	r3, [r7, #4]
    192c:	115b      	asrs	r3, r3, #5
    192e:	009a      	lsls	r2, r3, #2
    1930:	4b07      	ldr	r3, [pc, #28]	; (1950 <get_pending+0x38>)
    1932:	4413      	add	r3, r2
    1934:	681b      	ldr	r3, [r3, #0]
    1936:	687a      	ldr	r2, [r7, #4]
    1938:	f002 021f 	and.w	r2, r2, #31
    193c:	2101      	movs	r1, #1
    193e:	fa01 f202 	lsl.w	r2, r1, r2
    1942:	4013      	ands	r3, r2
    1944:	4618      	mov	r0, r3
    1946:	370c      	adds	r7, #12
    1948:	46bd      	mov	sp, r7
    194a:	bc80      	pop	{r7}
    194c:	4770      	bx	lr
    194e:	bf00      	nop
    1950:	e000e280 	.word	0xe000e280

00001954 <get_active>:
    1954:	b480      	push	{r7}
    1956:	b083      	sub	sp, #12
    1958:	af00      	add	r7, sp, #0
    195a:	6078      	str	r0, [r7, #4]
    195c:	687b      	ldr	r3, [r7, #4]
    195e:	2b3b      	cmp	r3, #59	; 0x3b
    1960:	dd01      	ble.n	1966 <get_active+0x12>
    1962:	2300      	movs	r3, #0
    1964:	e00e      	b.n	1984 <get_active+0x30>
    1966:	687b      	ldr	r3, [r7, #4]
    1968:	115b      	asrs	r3, r3, #5
    196a:	009b      	lsls	r3, r3, #2
    196c:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1970:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1974:	681b      	ldr	r3, [r3, #0]
    1976:	687a      	ldr	r2, [r7, #4]
    1978:	f002 021f 	and.w	r2, r2, #31
    197c:	2101      	movs	r1, #1
    197e:	fa01 f202 	lsl.w	r2, r1, r2
    1982:	4013      	ands	r3, r2
    1984:	4618      	mov	r0, r3
    1986:	370c      	adds	r7, #12
    1988:	46bd      	mov	sp, r7
    198a:	bc80      	pop	{r7}
    198c:	4770      	bx	lr

0000198e <set_pending>:
    198e:	b480      	push	{r7}
    1990:	b083      	sub	sp, #12
    1992:	af00      	add	r7, sp, #0
    1994:	6078      	str	r0, [r7, #4]
    1996:	687b      	ldr	r3, [r7, #4]
    1998:	2b3b      	cmp	r3, #59	; 0x3b
    199a:	dc17      	bgt.n	19cc <set_pending+0x3e>
    199c:	687b      	ldr	r3, [r7, #4]
    199e:	115b      	asrs	r3, r3, #5
    19a0:	009b      	lsls	r3, r3, #2
    19a2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    19a6:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    19aa:	687a      	ldr	r2, [r7, #4]
    19ac:	1152      	asrs	r2, r2, #5
    19ae:	0092      	lsls	r2, r2, #2
    19b0:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    19b4:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    19b8:	6812      	ldr	r2, [r2, #0]
    19ba:	6879      	ldr	r1, [r7, #4]
    19bc:	f001 011f 	and.w	r1, r1, #31
    19c0:	2001      	movs	r0, #1
    19c2:	fa00 f101 	lsl.w	r1, r0, r1
    19c6:	430a      	orrs	r2, r1
    19c8:	601a      	str	r2, [r3, #0]
    19ca:	e000      	b.n	19ce <set_pending+0x40>
    19cc:	bf00      	nop
    19ce:	370c      	adds	r7, #12
    19d0:	46bd      	mov	sp, r7
    19d2:	bc80      	pop	{r7}
    19d4:	4770      	bx	lr

000019d6 <clear_pending>:
    19d6:	b480      	push	{r7}
    19d8:	b083      	sub	sp, #12
    19da:	af00      	add	r7, sp, #0
    19dc:	6078      	str	r0, [r7, #4]
    19de:	687b      	ldr	r3, [r7, #4]
    19e0:	2b3b      	cmp	r3, #59	; 0x3b
    19e2:	dc0c      	bgt.n	19fe <clear_pending+0x28>
    19e4:	687b      	ldr	r3, [r7, #4]
    19e6:	115b      	asrs	r3, r3, #5
    19e8:	009a      	lsls	r2, r3, #2
    19ea:	4b07      	ldr	r3, [pc, #28]	; (1a08 <clear_pending+0x32>)
    19ec:	4413      	add	r3, r2
    19ee:	687a      	ldr	r2, [r7, #4]
    19f0:	f002 021f 	and.w	r2, r2, #31
    19f4:	2101      	movs	r1, #1
    19f6:	fa01 f202 	lsl.w	r2, r1, r2
    19fa:	601a      	str	r2, [r3, #0]
    19fc:	e000      	b.n	1a00 <clear_pending+0x2a>
    19fe:	bf00      	nop
    1a00:	370c      	adds	r7, #12
    1a02:	46bd      	mov	sp, r7
    1a04:	bc80      	pop	{r7}
    1a06:	4770      	bx	lr
    1a08:	e000e280 	.word	0xe000e280

00001a0c <set_int_priority>:
    1a0c:	b480      	push	{r7}
    1a0e:	b083      	sub	sp, #12
    1a10:	af00      	add	r7, sp, #0
    1a12:	6078      	str	r0, [r7, #4]
    1a14:	6039      	str	r1, [r7, #0]
    1a16:	687b      	ldr	r3, [r7, #4]
    1a18:	2b00      	cmp	r3, #0
    1a1a:	db0d      	blt.n	1a38 <set_int_priority+0x2c>
    1a1c:	687b      	ldr	r3, [r7, #4]
    1a1e:	2b3b      	cmp	r3, #59	; 0x3b
    1a20:	dc0a      	bgt.n	1a38 <set_int_priority+0x2c>
    1a22:	687b      	ldr	r3, [r7, #4]
    1a24:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1a28:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1a2c:	683a      	ldr	r2, [r7, #0]
    1a2e:	b2d2      	uxtb	r2, r2
    1a30:	0112      	lsls	r2, r2, #4
    1a32:	b2d2      	uxtb	r2, r2
    1a34:	701a      	strb	r2, [r3, #0]
    1a36:	e012      	b.n	1a5e <set_int_priority+0x52>
    1a38:	687b      	ldr	r3, [r7, #4]
    1a3a:	2b00      	cmp	r3, #0
    1a3c:	da0f      	bge.n	1a5e <set_int_priority+0x52>
    1a3e:	687b      	ldr	r3, [r7, #4]
    1a40:	f113 0f0f 	cmn.w	r3, #15
    1a44:	db0b      	blt.n	1a5e <set_int_priority+0x52>
    1a46:	687a      	ldr	r2, [r7, #4]
    1a48:	f06f 0303 	mvn.w	r3, #3
    1a4c:	1a9b      	subs	r3, r3, r2
    1a4e:	461a      	mov	r2, r3
    1a50:	4b05      	ldr	r3, [pc, #20]	; (1a68 <set_int_priority+0x5c>)
    1a52:	4413      	add	r3, r2
    1a54:	683a      	ldr	r2, [r7, #0]
    1a56:	b2d2      	uxtb	r2, r2
    1a58:	0112      	lsls	r2, r2, #4
    1a5a:	b2d2      	uxtb	r2, r2
    1a5c:	701a      	strb	r2, [r3, #0]
    1a5e:	bf00      	nop
    1a60:	370c      	adds	r7, #12
    1a62:	46bd      	mov	sp, r7
    1a64:	bc80      	pop	{r7}
    1a66:	4770      	bx	lr
    1a68:	e000ed18 	.word	0xe000ed18

00001a6c <leap_year>:
    1a6c:	b480      	push	{r7}
    1a6e:	b083      	sub	sp, #12
    1a70:	af00      	add	r7, sp, #0
    1a72:	6078      	str	r0, [r7, #4]
    1a74:	687b      	ldr	r3, [r7, #4]
    1a76:	f003 0303 	and.w	r3, r3, #3
    1a7a:	2b00      	cmp	r3, #0
    1a7c:	d11a      	bne.n	1ab4 <leap_year+0x48>
    1a7e:	687a      	ldr	r2, [r7, #4]
    1a80:	4b0f      	ldr	r3, [pc, #60]	; (1ac0 <leap_year+0x54>)
    1a82:	fba3 1302 	umull	r1, r3, r3, r2
    1a86:	095b      	lsrs	r3, r3, #5
    1a88:	2164      	movs	r1, #100	; 0x64
    1a8a:	fb01 f303 	mul.w	r3, r1, r3
    1a8e:	1ad3      	subs	r3, r2, r3
    1a90:	2b00      	cmp	r3, #0
    1a92:	d10d      	bne.n	1ab0 <leap_year+0x44>
    1a94:	687a      	ldr	r2, [r7, #4]
    1a96:	4b0a      	ldr	r3, [pc, #40]	; (1ac0 <leap_year+0x54>)
    1a98:	fba3 1302 	umull	r1, r3, r3, r2
    1a9c:	09db      	lsrs	r3, r3, #7
    1a9e:	f44f 71c8 	mov.w	r1, #400	; 0x190
    1aa2:	fb01 f303 	mul.w	r3, r1, r3
    1aa6:	1ad3      	subs	r3, r2, r3
    1aa8:	2b00      	cmp	r3, #0
    1aaa:	d001      	beq.n	1ab0 <leap_year+0x44>
    1aac:	2300      	movs	r3, #0
    1aae:	e002      	b.n	1ab6 <leap_year+0x4a>
    1ab0:	2301      	movs	r3, #1
    1ab2:	e000      	b.n	1ab6 <leap_year+0x4a>
    1ab4:	2300      	movs	r3, #0
    1ab6:	4618      	mov	r0, r3
    1ab8:	370c      	adds	r7, #12
    1aba:	46bd      	mov	sp, r7
    1abc:	bc80      	pop	{r7}
    1abe:	4770      	bx	lr
    1ac0:	51eb851f 	.word	0x51eb851f

00001ac4 <sec_per_month>:
    1ac4:	b480      	push	{r7}
    1ac6:	b085      	sub	sp, #20
    1ac8:	af00      	add	r7, sp, #0
    1aca:	6078      	str	r0, [r7, #4]
    1acc:	6039      	str	r1, [r7, #0]
    1ace:	4a0d      	ldr	r2, [pc, #52]	; (1b04 <sec_per_month+0x40>)
    1ad0:	683b      	ldr	r3, [r7, #0]
    1ad2:	4413      	add	r3, r2
    1ad4:	781b      	ldrb	r3, [r3, #0]
    1ad6:	461a      	mov	r2, r3
    1ad8:	4b0b      	ldr	r3, [pc, #44]	; (1b08 <sec_per_month+0x44>)
    1ada:	fb03 f302 	mul.w	r3, r3, r2
    1ade:	60fb      	str	r3, [r7, #12]
    1ae0:	683b      	ldr	r3, [r7, #0]
    1ae2:	2b02      	cmp	r3, #2
    1ae4:	d108      	bne.n	1af8 <sec_per_month+0x34>
    1ae6:	687b      	ldr	r3, [r7, #4]
    1ae8:	2b00      	cmp	r3, #0
    1aea:	d005      	beq.n	1af8 <sec_per_month+0x34>
    1aec:	68fb      	ldr	r3, [r7, #12]
    1aee:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1af2:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    1af6:	60fb      	str	r3, [r7, #12]
    1af8:	68fb      	ldr	r3, [r7, #12]
    1afa:	4618      	mov	r0, r3
    1afc:	3714      	adds	r7, #20
    1afe:	46bd      	mov	sp, r7
    1b00:	bc80      	pop	{r7}
    1b02:	4770      	bx	lr
    1b04:	0000337c 	.word	0x0000337c
    1b08:	00015180 	.word	0x00015180

00001b0c <get_date_time>:
    1b0c:	b580      	push	{r7, lr}
    1b0e:	b086      	sub	sp, #24
    1b10:	af00      	add	r7, sp, #0
    1b12:	6078      	str	r0, [r7, #4]
    1b14:	4b66      	ldr	r3, [pc, #408]	; (1cb0 <get_date_time+0x1a4>)
    1b16:	699b      	ldr	r3, [r3, #24]
    1b18:	041a      	lsls	r2, r3, #16
    1b1a:	4b65      	ldr	r3, [pc, #404]	; (1cb0 <get_date_time+0x1a4>)
    1b1c:	69db      	ldr	r3, [r3, #28]
    1b1e:	4413      	add	r3, r2
    1b20:	617b      	str	r3, [r7, #20]
    1b22:	687b      	ldr	r3, [r7, #4]
    1b24:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1b28:	811a      	strh	r2, [r3, #8]
    1b2a:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1b2e:	f7ff ff9d 	bl	1a6c <leap_year>
    1b32:	6138      	str	r0, [r7, #16]
    1b34:	e019      	b.n	1b6a <get_date_time+0x5e>
    1b36:	693b      	ldr	r3, [r7, #16]
    1b38:	2b00      	cmp	r3, #0
    1b3a:	d006      	beq.n	1b4a <get_date_time+0x3e>
    1b3c:	697b      	ldr	r3, [r7, #20]
    1b3e:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    1b42:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    1b46:	617b      	str	r3, [r7, #20]
    1b48:	e003      	b.n	1b52 <get_date_time+0x46>
    1b4a:	697a      	ldr	r2, [r7, #20]
    1b4c:	4b59      	ldr	r3, [pc, #356]	; (1cb4 <get_date_time+0x1a8>)
    1b4e:	4413      	add	r3, r2
    1b50:	617b      	str	r3, [r7, #20]
    1b52:	687b      	ldr	r3, [r7, #4]
    1b54:	891b      	ldrh	r3, [r3, #8]
    1b56:	3301      	adds	r3, #1
    1b58:	b29a      	uxth	r2, r3
    1b5a:	687b      	ldr	r3, [r7, #4]
    1b5c:	811a      	strh	r2, [r3, #8]
    1b5e:	687b      	ldr	r3, [r7, #4]
    1b60:	891b      	ldrh	r3, [r3, #8]
    1b62:	4618      	mov	r0, r3
    1b64:	f7ff ff82 	bl	1a6c <leap_year>
    1b68:	6138      	str	r0, [r7, #16]
    1b6a:	693b      	ldr	r3, [r7, #16]
    1b6c:	2b00      	cmp	r3, #0
    1b6e:	d103      	bne.n	1b78 <get_date_time+0x6c>
    1b70:	697b      	ldr	r3, [r7, #20]
    1b72:	4a51      	ldr	r2, [pc, #324]	; (1cb8 <get_date_time+0x1ac>)
    1b74:	4293      	cmp	r3, r2
    1b76:	d8de      	bhi.n	1b36 <get_date_time+0x2a>
    1b78:	693b      	ldr	r3, [r7, #16]
    1b7a:	2b00      	cmp	r3, #0
    1b7c:	d003      	beq.n	1b86 <get_date_time+0x7a>
    1b7e:	697b      	ldr	r3, [r7, #20]
    1b80:	4a4e      	ldr	r2, [pc, #312]	; (1cbc <get_date_time+0x1b0>)
    1b82:	4293      	cmp	r3, r2
    1b84:	d8d7      	bhi.n	1b36 <get_date_time+0x2a>
    1b86:	687a      	ldr	r2, [r7, #4]
    1b88:	8853      	ldrh	r3, [r2, #2]
    1b8a:	2101      	movs	r1, #1
    1b8c:	f361 1389 	bfi	r3, r1, #6, #4
    1b90:	8053      	strh	r3, [r2, #2]
    1b92:	687a      	ldr	r2, [r7, #4]
    1b94:	7893      	ldrb	r3, [r2, #2]
    1b96:	2101      	movs	r1, #1
    1b98:	f361 0345 	bfi	r3, r1, #1, #5
    1b9c:	7093      	strb	r3, [r2, #2]
    1b9e:	687a      	ldr	r2, [r7, #4]
    1ba0:	6813      	ldr	r3, [r2, #0]
    1ba2:	f36f 3310 	bfc	r3, #12, #5
    1ba6:	6013      	str	r3, [r2, #0]
    1ba8:	687a      	ldr	r2, [r7, #4]
    1baa:	8813      	ldrh	r3, [r2, #0]
    1bac:	f36f 138b 	bfc	r3, #6, #6
    1bb0:	8013      	strh	r3, [r2, #0]
    1bb2:	687a      	ldr	r2, [r7, #4]
    1bb4:	7813      	ldrb	r3, [r2, #0]
    1bb6:	f36f 0305 	bfc	r3, #0, #6
    1bba:	7013      	strb	r3, [r2, #0]
    1bbc:	e011      	b.n	1be2 <get_date_time+0xd6>
    1bbe:	687b      	ldr	r3, [r7, #4]
    1bc0:	885b      	ldrh	r3, [r3, #2]
    1bc2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1bc6:	b2db      	uxtb	r3, r3
    1bc8:	3301      	adds	r3, #1
    1bca:	f003 030f 	and.w	r3, r3, #15
    1bce:	b2d9      	uxtb	r1, r3
    1bd0:	687a      	ldr	r2, [r7, #4]
    1bd2:	8853      	ldrh	r3, [r2, #2]
    1bd4:	f361 1389 	bfi	r3, r1, #6, #4
    1bd8:	8053      	strh	r3, [r2, #2]
    1bda:	697a      	ldr	r2, [r7, #20]
    1bdc:	68fb      	ldr	r3, [r7, #12]
    1bde:	1ad3      	subs	r3, r2, r3
    1be0:	617b      	str	r3, [r7, #20]
    1be2:	687b      	ldr	r3, [r7, #4]
    1be4:	885b      	ldrh	r3, [r3, #2]
    1be6:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1bea:	b2db      	uxtb	r3, r3
    1bec:	4619      	mov	r1, r3
    1bee:	6938      	ldr	r0, [r7, #16]
    1bf0:	f7ff ff68 	bl	1ac4 <sec_per_month>
    1bf4:	60f8      	str	r0, [r7, #12]
    1bf6:	68fa      	ldr	r2, [r7, #12]
    1bf8:	697b      	ldr	r3, [r7, #20]
    1bfa:	429a      	cmp	r2, r3
    1bfc:	d3df      	bcc.n	1bbe <get_date_time+0xb2>
    1bfe:	697b      	ldr	r3, [r7, #20]
    1c00:	4a2f      	ldr	r2, [pc, #188]	; (1cc0 <get_date_time+0x1b4>)
    1c02:	fba2 2303 	umull	r2, r3, r2, r3
    1c06:	0c1b      	lsrs	r3, r3, #16
    1c08:	b2db      	uxtb	r3, r3
    1c0a:	3301      	adds	r3, #1
    1c0c:	b2db      	uxtb	r3, r3
    1c0e:	f003 031f 	and.w	r3, r3, #31
    1c12:	b2d9      	uxtb	r1, r3
    1c14:	687a      	ldr	r2, [r7, #4]
    1c16:	7893      	ldrb	r3, [r2, #2]
    1c18:	f361 0345 	bfi	r3, r1, #1, #5
    1c1c:	7093      	strb	r3, [r2, #2]
    1c1e:	697b      	ldr	r3, [r7, #20]
    1c20:	4a27      	ldr	r2, [pc, #156]	; (1cc0 <get_date_time+0x1b4>)
    1c22:	fba2 1203 	umull	r1, r2, r2, r3
    1c26:	0c12      	lsrs	r2, r2, #16
    1c28:	4926      	ldr	r1, [pc, #152]	; (1cc4 <get_date_time+0x1b8>)
    1c2a:	fb01 f202 	mul.w	r2, r1, r2
    1c2e:	1a9b      	subs	r3, r3, r2
    1c30:	617b      	str	r3, [r7, #20]
    1c32:	697b      	ldr	r3, [r7, #20]
    1c34:	4a24      	ldr	r2, [pc, #144]	; (1cc8 <get_date_time+0x1bc>)
    1c36:	fba2 2303 	umull	r2, r3, r2, r3
    1c3a:	0adb      	lsrs	r3, r3, #11
    1c3c:	b2db      	uxtb	r3, r3
    1c3e:	f003 031f 	and.w	r3, r3, #31
    1c42:	b2d9      	uxtb	r1, r3
    1c44:	687a      	ldr	r2, [r7, #4]
    1c46:	6813      	ldr	r3, [r2, #0]
    1c48:	f361 3310 	bfi	r3, r1, #12, #5
    1c4c:	6013      	str	r3, [r2, #0]
    1c4e:	697b      	ldr	r3, [r7, #20]
    1c50:	4a1d      	ldr	r2, [pc, #116]	; (1cc8 <get_date_time+0x1bc>)
    1c52:	fba2 1203 	umull	r1, r2, r2, r3
    1c56:	0ad2      	lsrs	r2, r2, #11
    1c58:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1c5c:	fb01 f202 	mul.w	r2, r1, r2
    1c60:	1a9b      	subs	r3, r3, r2
    1c62:	617b      	str	r3, [r7, #20]
    1c64:	697b      	ldr	r3, [r7, #20]
    1c66:	4a19      	ldr	r2, [pc, #100]	; (1ccc <get_date_time+0x1c0>)
    1c68:	fba2 2303 	umull	r2, r3, r2, r3
    1c6c:	095b      	lsrs	r3, r3, #5
    1c6e:	b2db      	uxtb	r3, r3
    1c70:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1c74:	b2d9      	uxtb	r1, r3
    1c76:	687a      	ldr	r2, [r7, #4]
    1c78:	8813      	ldrh	r3, [r2, #0]
    1c7a:	f361 138b 	bfi	r3, r1, #6, #6
    1c7e:	8013      	strh	r3, [r2, #0]
    1c80:	6979      	ldr	r1, [r7, #20]
    1c82:	4b12      	ldr	r3, [pc, #72]	; (1ccc <get_date_time+0x1c0>)
    1c84:	fba3 2301 	umull	r2, r3, r3, r1
    1c88:	095a      	lsrs	r2, r3, #5
    1c8a:	4613      	mov	r3, r2
    1c8c:	011b      	lsls	r3, r3, #4
    1c8e:	1a9b      	subs	r3, r3, r2
    1c90:	009b      	lsls	r3, r3, #2
    1c92:	1aca      	subs	r2, r1, r3
    1c94:	b2d3      	uxtb	r3, r2
    1c96:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1c9a:	b2d9      	uxtb	r1, r3
    1c9c:	687a      	ldr	r2, [r7, #4]
    1c9e:	7813      	ldrb	r3, [r2, #0]
    1ca0:	f361 0305 	bfi	r3, r1, #0, #6
    1ca4:	7013      	strb	r3, [r2, #0]
    1ca6:	bf00      	nop
    1ca8:	3718      	adds	r7, #24
    1caa:	46bd      	mov	sp, r7
    1cac:	bd80      	pop	{r7, pc}
    1cae:	bf00      	nop
    1cb0:	40002800 	.word	0x40002800
    1cb4:	fe1ecc80 	.word	0xfe1ecc80
    1cb8:	01e1337f 	.word	0x01e1337f
    1cbc:	01e284ff 	.word	0x01e284ff
    1cc0:	c22e4507 	.word	0xc22e4507
    1cc4:	00015180 	.word	0x00015180
    1cc8:	91a2b3c5 	.word	0x91a2b3c5
    1ccc:	88888889 	.word	0x88888889

00001cd0 <set_date_time>:
    1cd0:	b580      	push	{r7, lr}
    1cd2:	b086      	sub	sp, #24
    1cd4:	af00      	add	r7, sp, #0
    1cd6:	6078      	str	r0, [r7, #4]
    1cd8:	2300      	movs	r3, #0
    1cda:	613b      	str	r3, [r7, #16]
    1cdc:	687b      	ldr	r3, [r7, #4]
    1cde:	891b      	ldrh	r3, [r3, #8]
    1ce0:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1ce4:	4293      	cmp	r3, r2
    1ce6:	d803      	bhi.n	1cf0 <set_date_time+0x20>
    1ce8:	687b      	ldr	r3, [r7, #4]
    1cea:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1cee:	811a      	strh	r2, [r3, #8]
    1cf0:	687b      	ldr	r3, [r7, #4]
    1cf2:	891b      	ldrh	r3, [r3, #8]
    1cf4:	f640 023a 	movw	r2, #2106	; 0x83a
    1cf8:	4293      	cmp	r3, r2
    1cfa:	d903      	bls.n	1d04 <set_date_time+0x34>
    1cfc:	687b      	ldr	r3, [r7, #4]
    1cfe:	f640 023a 	movw	r2, #2106	; 0x83a
    1d02:	811a      	strh	r2, [r3, #8]
    1d04:	687b      	ldr	r3, [r7, #4]
    1d06:	891b      	ldrh	r3, [r3, #8]
    1d08:	4618      	mov	r0, r3
    1d0a:	f7ff feaf 	bl	1a6c <leap_year>
    1d0e:	60f8      	str	r0, [r7, #12]
    1d10:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1d14:	617b      	str	r3, [r7, #20]
    1d16:	e013      	b.n	1d40 <set_date_time+0x70>
    1d18:	6978      	ldr	r0, [r7, #20]
    1d1a:	f7ff fea7 	bl	1a6c <leap_year>
    1d1e:	4603      	mov	r3, r0
    1d20:	2b00      	cmp	r3, #0
    1d22:	d006      	beq.n	1d32 <set_date_time+0x62>
    1d24:	693b      	ldr	r3, [r7, #16]
    1d26:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1d2a:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    1d2e:	613b      	str	r3, [r7, #16]
    1d30:	e003      	b.n	1d3a <set_date_time+0x6a>
    1d32:	693a      	ldr	r2, [r7, #16]
    1d34:	4b42      	ldr	r3, [pc, #264]	; (1e40 <set_date_time+0x170>)
    1d36:	4413      	add	r3, r2
    1d38:	613b      	str	r3, [r7, #16]
    1d3a:	697b      	ldr	r3, [r7, #20]
    1d3c:	3301      	adds	r3, #1
    1d3e:	617b      	str	r3, [r7, #20]
    1d40:	687b      	ldr	r3, [r7, #4]
    1d42:	891b      	ldrh	r3, [r3, #8]
    1d44:	461a      	mov	r2, r3
    1d46:	697b      	ldr	r3, [r7, #20]
    1d48:	429a      	cmp	r2, r3
    1d4a:	d8e5      	bhi.n	1d18 <set_date_time+0x48>
    1d4c:	2301      	movs	r3, #1
    1d4e:	617b      	str	r3, [r7, #20]
    1d50:	e00a      	b.n	1d68 <set_date_time+0x98>
    1d52:	6979      	ldr	r1, [r7, #20]
    1d54:	68f8      	ldr	r0, [r7, #12]
    1d56:	f7ff feb5 	bl	1ac4 <sec_per_month>
    1d5a:	4602      	mov	r2, r0
    1d5c:	693b      	ldr	r3, [r7, #16]
    1d5e:	4413      	add	r3, r2
    1d60:	613b      	str	r3, [r7, #16]
    1d62:	697b      	ldr	r3, [r7, #20]
    1d64:	3301      	adds	r3, #1
    1d66:	617b      	str	r3, [r7, #20]
    1d68:	687b      	ldr	r3, [r7, #4]
    1d6a:	885b      	ldrh	r3, [r3, #2]
    1d6c:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1d70:	b2db      	uxtb	r3, r3
    1d72:	461a      	mov	r2, r3
    1d74:	697b      	ldr	r3, [r7, #20]
    1d76:	429a      	cmp	r2, r3
    1d78:	d8eb      	bhi.n	1d52 <set_date_time+0x82>
    1d7a:	687b      	ldr	r3, [r7, #4]
    1d7c:	789b      	ldrb	r3, [r3, #2]
    1d7e:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1d82:	b2db      	uxtb	r3, r3
    1d84:	3b01      	subs	r3, #1
    1d86:	4a2f      	ldr	r2, [pc, #188]	; (1e44 <set_date_time+0x174>)
    1d88:	fb02 f303 	mul.w	r3, r2, r3
    1d8c:	461a      	mov	r2, r3
    1d8e:	693b      	ldr	r3, [r7, #16]
    1d90:	4413      	add	r3, r2
    1d92:	613b      	str	r3, [r7, #16]
    1d94:	687b      	ldr	r3, [r7, #4]
    1d96:	681b      	ldr	r3, [r3, #0]
    1d98:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1d9c:	b2db      	uxtb	r3, r3
    1d9e:	461a      	mov	r2, r3
    1da0:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    1da4:	fb03 f302 	mul.w	r3, r3, r2
    1da8:	461a      	mov	r2, r3
    1daa:	693b      	ldr	r3, [r7, #16]
    1dac:	4413      	add	r3, r2
    1dae:	613b      	str	r3, [r7, #16]
    1db0:	687b      	ldr	r3, [r7, #4]
    1db2:	881b      	ldrh	r3, [r3, #0]
    1db4:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1db8:	b2db      	uxtb	r3, r3
    1dba:	461a      	mov	r2, r3
    1dbc:	4613      	mov	r3, r2
    1dbe:	011b      	lsls	r3, r3, #4
    1dc0:	1a9b      	subs	r3, r3, r2
    1dc2:	009b      	lsls	r3, r3, #2
    1dc4:	461a      	mov	r2, r3
    1dc6:	693b      	ldr	r3, [r7, #16]
    1dc8:	4413      	add	r3, r2
    1dca:	613b      	str	r3, [r7, #16]
    1dcc:	687b      	ldr	r3, [r7, #4]
    1dce:	781b      	ldrb	r3, [r3, #0]
    1dd0:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1dd4:	b2db      	uxtb	r3, r3
    1dd6:	461a      	mov	r2, r3
    1dd8:	693b      	ldr	r3, [r7, #16]
    1dda:	4413      	add	r3, r2
    1ddc:	613b      	str	r3, [r7, #16]
    1dde:	4a1a      	ldr	r2, [pc, #104]	; (1e48 <set_date_time+0x178>)
    1de0:	4b19      	ldr	r3, [pc, #100]	; (1e48 <set_date_time+0x178>)
    1de2:	69db      	ldr	r3, [r3, #28]
    1de4:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1de8:	61d3      	str	r3, [r2, #28]
    1dea:	4a18      	ldr	r2, [pc, #96]	; (1e4c <set_date_time+0x17c>)
    1dec:	4b17      	ldr	r3, [pc, #92]	; (1e4c <set_date_time+0x17c>)
    1dee:	681b      	ldr	r3, [r3, #0]
    1df0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1df4:	6013      	str	r3, [r2, #0]
    1df6:	4a16      	ldr	r2, [pc, #88]	; (1e50 <set_date_time+0x180>)
    1df8:	4b15      	ldr	r3, [pc, #84]	; (1e50 <set_date_time+0x180>)
    1dfa:	685b      	ldr	r3, [r3, #4]
    1dfc:	f043 0310 	orr.w	r3, r3, #16
    1e00:	6053      	str	r3, [r2, #4]
    1e02:	4a13      	ldr	r2, [pc, #76]	; (1e50 <set_date_time+0x180>)
    1e04:	693b      	ldr	r3, [r7, #16]
    1e06:	0c1b      	lsrs	r3, r3, #16
    1e08:	6193      	str	r3, [r2, #24]
    1e0a:	4a11      	ldr	r2, [pc, #68]	; (1e50 <set_date_time+0x180>)
    1e0c:	693b      	ldr	r3, [r7, #16]
    1e0e:	b29b      	uxth	r3, r3
    1e10:	61d3      	str	r3, [r2, #28]
    1e12:	4a0f      	ldr	r2, [pc, #60]	; (1e50 <set_date_time+0x180>)
    1e14:	4b0e      	ldr	r3, [pc, #56]	; (1e50 <set_date_time+0x180>)
    1e16:	685b      	ldr	r3, [r3, #4]
    1e18:	f023 0310 	bic.w	r3, r3, #16
    1e1c:	6053      	str	r3, [r2, #4]
    1e1e:	bf00      	nop
    1e20:	4b0b      	ldr	r3, [pc, #44]	; (1e50 <set_date_time+0x180>)
    1e22:	685b      	ldr	r3, [r3, #4]
    1e24:	f003 0320 	and.w	r3, r3, #32
    1e28:	2b00      	cmp	r3, #0
    1e2a:	d0f9      	beq.n	1e20 <set_date_time+0x150>
    1e2c:	4a07      	ldr	r2, [pc, #28]	; (1e4c <set_date_time+0x17c>)
    1e2e:	4b07      	ldr	r3, [pc, #28]	; (1e4c <set_date_time+0x17c>)
    1e30:	681b      	ldr	r3, [r3, #0]
    1e32:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1e36:	6013      	str	r3, [r2, #0]
    1e38:	bf00      	nop
    1e3a:	3718      	adds	r7, #24
    1e3c:	46bd      	mov	sp, r7
    1e3e:	bd80      	pop	{r7, pc}
    1e40:	01e13380 	.word	0x01e13380
    1e44:	00015180 	.word	0x00015180
    1e48:	40021000 	.word	0x40021000
    1e4c:	40007000 	.word	0x40007000
    1e50:	40002800 	.word	0x40002800

00001e54 <rtc_init>:
    1e54:	b580      	push	{r7, lr}
    1e56:	b082      	sub	sp, #8
    1e58:	af00      	add	r7, sp, #0
    1e5a:	6078      	str	r0, [r7, #4]
    1e5c:	6039      	str	r1, [r7, #0]
    1e5e:	4b4a      	ldr	r3, [pc, #296]	; (1f88 <rtc_init+0x134>)
    1e60:	685b      	ldr	r3, [r3, #4]
    1e62:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1e66:	4293      	cmp	r3, r2
    1e68:	f000 8082 	beq.w	1f70 <rtc_init+0x11c>
    1e6c:	4a47      	ldr	r2, [pc, #284]	; (1f8c <rtc_init+0x138>)
    1e6e:	4b47      	ldr	r3, [pc, #284]	; (1f8c <rtc_init+0x138>)
    1e70:	69db      	ldr	r3, [r3, #28]
    1e72:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1e76:	61d3      	str	r3, [r2, #28]
    1e78:	4a45      	ldr	r2, [pc, #276]	; (1f90 <rtc_init+0x13c>)
    1e7a:	4b45      	ldr	r3, [pc, #276]	; (1f90 <rtc_init+0x13c>)
    1e7c:	681b      	ldr	r3, [r3, #0]
    1e7e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1e82:	6013      	str	r3, [r2, #0]
    1e84:	4a41      	ldr	r2, [pc, #260]	; (1f8c <rtc_init+0x138>)
    1e86:	4b41      	ldr	r3, [pc, #260]	; (1f8c <rtc_init+0x138>)
    1e88:	6a1b      	ldr	r3, [r3, #32]
    1e8a:	f043 0301 	orr.w	r3, r3, #1
    1e8e:	6213      	str	r3, [r2, #32]
    1e90:	bf00      	nop
    1e92:	4b3e      	ldr	r3, [pc, #248]	; (1f8c <rtc_init+0x138>)
    1e94:	6a1b      	ldr	r3, [r3, #32]
    1e96:	f003 0302 	and.w	r3, r3, #2
    1e9a:	2b00      	cmp	r3, #0
    1e9c:	d0f9      	beq.n	1e92 <rtc_init+0x3e>
    1e9e:	4a3b      	ldr	r2, [pc, #236]	; (1f8c <rtc_init+0x138>)
    1ea0:	4b3a      	ldr	r3, [pc, #232]	; (1f8c <rtc_init+0x138>)
    1ea2:	6a1b      	ldr	r3, [r3, #32]
    1ea4:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1ea8:	6213      	str	r3, [r2, #32]
    1eaa:	bf00      	nop
    1eac:	4b39      	ldr	r3, [pc, #228]	; (1f94 <rtc_init+0x140>)
    1eae:	685b      	ldr	r3, [r3, #4]
    1eb0:	f003 0308 	and.w	r3, r3, #8
    1eb4:	2b00      	cmp	r3, #0
    1eb6:	d0f9      	beq.n	1eac <rtc_init+0x58>
    1eb8:	bf00      	nop
    1eba:	4b36      	ldr	r3, [pc, #216]	; (1f94 <rtc_init+0x140>)
    1ebc:	685b      	ldr	r3, [r3, #4]
    1ebe:	f003 0320 	and.w	r3, r3, #32
    1ec2:	2b00      	cmp	r3, #0
    1ec4:	d0f9      	beq.n	1eba <rtc_init+0x66>
    1ec6:	4a33      	ldr	r2, [pc, #204]	; (1f94 <rtc_init+0x140>)
    1ec8:	4b32      	ldr	r3, [pc, #200]	; (1f94 <rtc_init+0x140>)
    1eca:	685b      	ldr	r3, [r3, #4]
    1ecc:	f043 0310 	orr.w	r3, r3, #16
    1ed0:	6053      	str	r3, [r2, #4]
    1ed2:	bf00      	nop
    1ed4:	4b2f      	ldr	r3, [pc, #188]	; (1f94 <rtc_init+0x140>)
    1ed6:	685b      	ldr	r3, [r3, #4]
    1ed8:	f003 0320 	and.w	r3, r3, #32
    1edc:	2b00      	cmp	r3, #0
    1ede:	d0f9      	beq.n	1ed4 <rtc_init+0x80>
    1ee0:	492c      	ldr	r1, [pc, #176]	; (1f94 <rtc_init+0x140>)
    1ee2:	4b2c      	ldr	r3, [pc, #176]	; (1f94 <rtc_init+0x140>)
    1ee4:	681a      	ldr	r2, [r3, #0]
    1ee6:	683b      	ldr	r3, [r7, #0]
    1ee8:	4313      	orrs	r3, r2
    1eea:	600b      	str	r3, [r1, #0]
    1eec:	bf00      	nop
    1eee:	4b29      	ldr	r3, [pc, #164]	; (1f94 <rtc_init+0x140>)
    1ef0:	685b      	ldr	r3, [r3, #4]
    1ef2:	f003 0320 	and.w	r3, r3, #32
    1ef6:	2b00      	cmp	r3, #0
    1ef8:	d0f9      	beq.n	1eee <rtc_init+0x9a>
    1efa:	4a26      	ldr	r2, [pc, #152]	; (1f94 <rtc_init+0x140>)
    1efc:	687b      	ldr	r3, [r7, #4]
    1efe:	03db      	lsls	r3, r3, #15
    1f00:	4925      	ldr	r1, [pc, #148]	; (1f98 <rtc_init+0x144>)
    1f02:	fba1 1303 	umull	r1, r3, r1, r3
    1f06:	099b      	lsrs	r3, r3, #6
    1f08:	3b01      	subs	r3, #1
    1f0a:	b29b      	uxth	r3, r3
    1f0c:	60d3      	str	r3, [r2, #12]
    1f0e:	bf00      	nop
    1f10:	4b20      	ldr	r3, [pc, #128]	; (1f94 <rtc_init+0x140>)
    1f12:	685b      	ldr	r3, [r3, #4]
    1f14:	f003 0320 	and.w	r3, r3, #32
    1f18:	2b00      	cmp	r3, #0
    1f1a:	d0f9      	beq.n	1f10 <rtc_init+0xbc>
    1f1c:	4a1d      	ldr	r2, [pc, #116]	; (1f94 <rtc_init+0x140>)
    1f1e:	687b      	ldr	r3, [r7, #4]
    1f20:	03db      	lsls	r3, r3, #15
    1f22:	491d      	ldr	r1, [pc, #116]	; (1f98 <rtc_init+0x144>)
    1f24:	fba1 1303 	umull	r1, r3, r1, r3
    1f28:	099b      	lsrs	r3, r3, #6
    1f2a:	3b01      	subs	r3, #1
    1f2c:	0c1b      	lsrs	r3, r3, #16
    1f2e:	f003 030f 	and.w	r3, r3, #15
    1f32:	6093      	str	r3, [r2, #8]
    1f34:	bf00      	nop
    1f36:	4b17      	ldr	r3, [pc, #92]	; (1f94 <rtc_init+0x140>)
    1f38:	685b      	ldr	r3, [r3, #4]
    1f3a:	f003 0320 	and.w	r3, r3, #32
    1f3e:	2b00      	cmp	r3, #0
    1f40:	d0f9      	beq.n	1f36 <rtc_init+0xe2>
    1f42:	4b11      	ldr	r3, [pc, #68]	; (1f88 <rtc_init+0x134>)
    1f44:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1f48:	605a      	str	r2, [r3, #4]
    1f4a:	4a12      	ldr	r2, [pc, #72]	; (1f94 <rtc_init+0x140>)
    1f4c:	4b11      	ldr	r3, [pc, #68]	; (1f94 <rtc_init+0x140>)
    1f4e:	685b      	ldr	r3, [r3, #4]
    1f50:	f023 0310 	bic.w	r3, r3, #16
    1f54:	6053      	str	r3, [r2, #4]
    1f56:	bf00      	nop
    1f58:	4b0e      	ldr	r3, [pc, #56]	; (1f94 <rtc_init+0x140>)
    1f5a:	685b      	ldr	r3, [r3, #4]
    1f5c:	f003 0320 	and.w	r3, r3, #32
    1f60:	2b00      	cmp	r3, #0
    1f62:	d0f9      	beq.n	1f58 <rtc_init+0x104>
    1f64:	4a0a      	ldr	r2, [pc, #40]	; (1f90 <rtc_init+0x13c>)
    1f66:	4b0a      	ldr	r3, [pc, #40]	; (1f90 <rtc_init+0x13c>)
    1f68:	681b      	ldr	r3, [r3, #0]
    1f6a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1f6e:	6013      	str	r3, [r2, #0]
    1f70:	210f      	movs	r1, #15
    1f72:	2003      	movs	r0, #3
    1f74:	f7ff fd4a 	bl	1a0c <set_int_priority>
    1f78:	2003      	movs	r0, #3
    1f7a:	f7ff fc8d 	bl	1898 <enable_interrupt>
    1f7e:	bf00      	nop
    1f80:	3708      	adds	r7, #8
    1f82:	46bd      	mov	sp, r7
    1f84:	bd80      	pop	{r7, pc}
    1f86:	bf00      	nop
    1f88:	40006c00 	.word	0x40006c00
    1f8c:	40021000 	.word	0x40021000
    1f90:	40007000 	.word	0x40007000
    1f94:	40002800 	.word	0x40002800
    1f98:	10624dd3 	.word	0x10624dd3

00001f9c <reset_backup_domain>:
    1f9c:	b480      	push	{r7}
    1f9e:	af00      	add	r7, sp, #0
    1fa0:	4a0a      	ldr	r2, [pc, #40]	; (1fcc <reset_backup_domain+0x30>)
    1fa2:	4b0a      	ldr	r3, [pc, #40]	; (1fcc <reset_backup_domain+0x30>)
    1fa4:	69db      	ldr	r3, [r3, #28]
    1fa6:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1faa:	61d3      	str	r3, [r2, #28]
    1fac:	4a07      	ldr	r2, [pc, #28]	; (1fcc <reset_backup_domain+0x30>)
    1fae:	4b07      	ldr	r3, [pc, #28]	; (1fcc <reset_backup_domain+0x30>)
    1fb0:	6a1b      	ldr	r3, [r3, #32]
    1fb2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1fb6:	6213      	str	r3, [r2, #32]
    1fb8:	4a04      	ldr	r2, [pc, #16]	; (1fcc <reset_backup_domain+0x30>)
    1fba:	4b04      	ldr	r3, [pc, #16]	; (1fcc <reset_backup_domain+0x30>)
    1fbc:	6a1b      	ldr	r3, [r3, #32]
    1fbe:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1fc2:	6213      	str	r3, [r2, #32]
    1fc4:	bf00      	nop
    1fc6:	46bd      	mov	sp, r7
    1fc8:	bc80      	pop	{r7}
    1fca:	4770      	bx	lr
    1fcc:	40021000 	.word	0x40021000

00001fd0 <rtc_clock_trim>:
    1fd0:	b480      	push	{r7}
    1fd2:	b083      	sub	sp, #12
    1fd4:	af00      	add	r7, sp, #0
    1fd6:	6078      	str	r0, [r7, #4]
    1fd8:	4a34      	ldr	r2, [pc, #208]	; (20ac <rtc_clock_trim+0xdc>)
    1fda:	4b34      	ldr	r3, [pc, #208]	; (20ac <rtc_clock_trim+0xdc>)
    1fdc:	69db      	ldr	r3, [r3, #28]
    1fde:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1fe2:	61d3      	str	r3, [r2, #28]
    1fe4:	bf00      	nop
    1fe6:	4b32      	ldr	r3, [pc, #200]	; (20b0 <rtc_clock_trim+0xe0>)
    1fe8:	685b      	ldr	r3, [r3, #4]
    1fea:	f003 0308 	and.w	r3, r3, #8
    1fee:	2b00      	cmp	r3, #0
    1ff0:	d0f9      	beq.n	1fe6 <rtc_clock_trim+0x16>
    1ff2:	4a30      	ldr	r2, [pc, #192]	; (20b4 <rtc_clock_trim+0xe4>)
    1ff4:	4b2f      	ldr	r3, [pc, #188]	; (20b4 <rtc_clock_trim+0xe4>)
    1ff6:	681b      	ldr	r3, [r3, #0]
    1ff8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1ffc:	6013      	str	r3, [r2, #0]
    1ffe:	4a2c      	ldr	r2, [pc, #176]	; (20b0 <rtc_clock_trim+0xe0>)
    2000:	4b2b      	ldr	r3, [pc, #172]	; (20b0 <rtc_clock_trim+0xe0>)
    2002:	685b      	ldr	r3, [r3, #4]
    2004:	f043 0310 	orr.w	r3, r3, #16
    2008:	6053      	str	r3, [r2, #4]
    200a:	4a2b      	ldr	r2, [pc, #172]	; (20b8 <rtc_clock_trim+0xe8>)
    200c:	4b2a      	ldr	r3, [pc, #168]	; (20b8 <rtc_clock_trim+0xe8>)
    200e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    2010:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2014:	62d3      	str	r3, [r2, #44]	; 0x2c
    2016:	687b      	ldr	r3, [r7, #4]
    2018:	2b00      	cmp	r3, #0
    201a:	d10a      	bne.n	2032 <rtc_clock_trim+0x62>
    201c:	4b26      	ldr	r3, [pc, #152]	; (20b8 <rtc_clock_trim+0xe8>)
    201e:	2200      	movs	r2, #0
    2020:	62da      	str	r2, [r3, #44]	; 0x2c
    2022:	4b23      	ldr	r3, [pc, #140]	; (20b0 <rtc_clock_trim+0xe0>)
    2024:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2028:	60da      	str	r2, [r3, #12]
    202a:	4b21      	ldr	r3, [pc, #132]	; (20b0 <rtc_clock_trim+0xe0>)
    202c:	2200      	movs	r2, #0
    202e:	609a      	str	r2, [r3, #8]
    2030:	e023      	b.n	207a <rtc_clock_trim+0xaa>
    2032:	687b      	ldr	r3, [r7, #4]
    2034:	2b00      	cmp	r3, #0
    2036:	dd0a      	ble.n	204e <rtc_clock_trim+0x7e>
    2038:	687b      	ldr	r3, [r7, #4]
    203a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    203e:	607b      	str	r3, [r7, #4]
    2040:	491d      	ldr	r1, [pc, #116]	; (20b8 <rtc_clock_trim+0xe8>)
    2042:	4b1d      	ldr	r3, [pc, #116]	; (20b8 <rtc_clock_trim+0xe8>)
    2044:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2046:	687b      	ldr	r3, [r7, #4]
    2048:	4313      	orrs	r3, r2
    204a:	62cb      	str	r3, [r1, #44]	; 0x2c
    204c:	e015      	b.n	207a <rtc_clock_trim+0xaa>
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	425b      	negs	r3, r3
    2052:	607b      	str	r3, [r7, #4]
    2054:	687b      	ldr	r3, [r7, #4]
    2056:	2b7f      	cmp	r3, #127	; 0x7f
    2058:	dd01      	ble.n	205e <rtc_clock_trim+0x8e>
    205a:	237f      	movs	r3, #127	; 0x7f
    205c:	607b      	str	r3, [r7, #4]
    205e:	4b16      	ldr	r3, [pc, #88]	; (20b8 <rtc_clock_trim+0xe8>)
    2060:	2200      	movs	r2, #0
    2062:	62da      	str	r2, [r3, #44]	; 0x2c
    2064:	4a12      	ldr	r2, [pc, #72]	; (20b0 <rtc_clock_trim+0xe0>)
    2066:	687b      	ldr	r3, [r7, #4]
    2068:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    206c:	33ff      	adds	r3, #255	; 0xff
    206e:	f3c3 030e 	ubfx	r3, r3, #0, #15
    2072:	60d3      	str	r3, [r2, #12]
    2074:	4b0e      	ldr	r3, [pc, #56]	; (20b0 <rtc_clock_trim+0xe0>)
    2076:	2200      	movs	r2, #0
    2078:	609a      	str	r2, [r3, #8]
    207a:	4a0d      	ldr	r2, [pc, #52]	; (20b0 <rtc_clock_trim+0xe0>)
    207c:	4b0c      	ldr	r3, [pc, #48]	; (20b0 <rtc_clock_trim+0xe0>)
    207e:	685b      	ldr	r3, [r3, #4]
    2080:	f023 0310 	bic.w	r3, r3, #16
    2084:	6053      	str	r3, [r2, #4]
    2086:	bf00      	nop
    2088:	4b09      	ldr	r3, [pc, #36]	; (20b0 <rtc_clock_trim+0xe0>)
    208a:	685b      	ldr	r3, [r3, #4]
    208c:	f003 0320 	and.w	r3, r3, #32
    2090:	2b00      	cmp	r3, #0
    2092:	d0f9      	beq.n	2088 <rtc_clock_trim+0xb8>
    2094:	4a07      	ldr	r2, [pc, #28]	; (20b4 <rtc_clock_trim+0xe4>)
    2096:	4b07      	ldr	r3, [pc, #28]	; (20b4 <rtc_clock_trim+0xe4>)
    2098:	681b      	ldr	r3, [r3, #0]
    209a:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    209e:	6013      	str	r3, [r2, #0]
    20a0:	bf00      	nop
    20a2:	370c      	adds	r7, #12
    20a4:	46bd      	mov	sp, r7
    20a6:	bc80      	pop	{r7}
    20a8:	4770      	bx	lr
    20aa:	bf00      	nop
    20ac:	40021000 	.word	0x40021000
    20b0:	40002800 	.word	0x40002800
    20b4:	40007000 	.word	0x40007000
    20b8:	40006c00 	.word	0x40006c00

000020bc <rtc_set_alarm>:
    20bc:	b480      	push	{r7}
    20be:	b083      	sub	sp, #12
    20c0:	af00      	add	r7, sp, #0
    20c2:	6078      	str	r0, [r7, #4]
    20c4:	bf00      	nop
    20c6:	370c      	adds	r7, #12
    20c8:	46bd      	mov	sp, r7
    20ca:	bc80      	pop	{r7}
    20cc:	4770      	bx	lr

000020ce <str_to_date>:
    20ce:	b580      	push	{r7, lr}
    20d0:	b084      	sub	sp, #16
    20d2:	af00      	add	r7, sp, #0
    20d4:	6078      	str	r0, [r7, #4]
    20d6:	6039      	str	r1, [r7, #0]
    20d8:	2300      	movs	r3, #0
    20da:	60fb      	str	r3, [r7, #12]
    20dc:	2300      	movs	r3, #0
    20de:	60bb      	str	r3, [r7, #8]
    20e0:	e00f      	b.n	2102 <str_to_date+0x34>
    20e2:	68ba      	ldr	r2, [r7, #8]
    20e4:	4613      	mov	r3, r2
    20e6:	009b      	lsls	r3, r3, #2
    20e8:	4413      	add	r3, r2
    20ea:	005b      	lsls	r3, r3, #1
    20ec:	4619      	mov	r1, r3
    20ee:	68fb      	ldr	r3, [r7, #12]
    20f0:	1c5a      	adds	r2, r3, #1
    20f2:	60fa      	str	r2, [r7, #12]
    20f4:	461a      	mov	r2, r3
    20f6:	687b      	ldr	r3, [r7, #4]
    20f8:	4413      	add	r3, r2
    20fa:	781b      	ldrb	r3, [r3, #0]
    20fc:	440b      	add	r3, r1
    20fe:	3b30      	subs	r3, #48	; 0x30
    2100:	60bb      	str	r3, [r7, #8]
    2102:	68fb      	ldr	r3, [r7, #12]
    2104:	687a      	ldr	r2, [r7, #4]
    2106:	4413      	add	r3, r2
    2108:	781b      	ldrb	r3, [r3, #0]
    210a:	4618      	mov	r0, r3
    210c:	f7ff f817 	bl	113e <digit>
    2110:	4603      	mov	r3, r0
    2112:	2b00      	cmp	r3, #0
    2114:	d1e5      	bne.n	20e2 <str_to_date+0x14>
    2116:	68fb      	ldr	r3, [r7, #12]
    2118:	2b03      	cmp	r3, #3
    211a:	dd05      	ble.n	2128 <str_to_date+0x5a>
    211c:	68fb      	ldr	r3, [r7, #12]
    211e:	687a      	ldr	r2, [r7, #4]
    2120:	4413      	add	r3, r2
    2122:	781b      	ldrb	r3, [r3, #0]
    2124:	2b2f      	cmp	r3, #47	; 0x2f
    2126:	d001      	beq.n	212c <str_to_date+0x5e>
    2128:	2300      	movs	r3, #0
    212a:	e068      	b.n	21fe <str_to_date+0x130>
    212c:	68bb      	ldr	r3, [r7, #8]
    212e:	b29a      	uxth	r2, r3
    2130:	683b      	ldr	r3, [r7, #0]
    2132:	811a      	strh	r2, [r3, #8]
    2134:	68fb      	ldr	r3, [r7, #12]
    2136:	3301      	adds	r3, #1
    2138:	60fb      	str	r3, [r7, #12]
    213a:	2300      	movs	r3, #0
    213c:	60bb      	str	r3, [r7, #8]
    213e:	e00f      	b.n	2160 <str_to_date+0x92>
    2140:	68ba      	ldr	r2, [r7, #8]
    2142:	4613      	mov	r3, r2
    2144:	009b      	lsls	r3, r3, #2
    2146:	4413      	add	r3, r2
    2148:	005b      	lsls	r3, r3, #1
    214a:	4619      	mov	r1, r3
    214c:	68fb      	ldr	r3, [r7, #12]
    214e:	1c5a      	adds	r2, r3, #1
    2150:	60fa      	str	r2, [r7, #12]
    2152:	461a      	mov	r2, r3
    2154:	687b      	ldr	r3, [r7, #4]
    2156:	4413      	add	r3, r2
    2158:	781b      	ldrb	r3, [r3, #0]
    215a:	440b      	add	r3, r1
    215c:	3b30      	subs	r3, #48	; 0x30
    215e:	60bb      	str	r3, [r7, #8]
    2160:	68fb      	ldr	r3, [r7, #12]
    2162:	687a      	ldr	r2, [r7, #4]
    2164:	4413      	add	r3, r2
    2166:	781b      	ldrb	r3, [r3, #0]
    2168:	4618      	mov	r0, r3
    216a:	f7fe ffe8 	bl	113e <digit>
    216e:	4603      	mov	r3, r0
    2170:	2b00      	cmp	r3, #0
    2172:	d1e5      	bne.n	2140 <str_to_date+0x72>
    2174:	68fb      	ldr	r3, [r7, #12]
    2176:	2b06      	cmp	r3, #6
    2178:	dd05      	ble.n	2186 <str_to_date+0xb8>
    217a:	68fb      	ldr	r3, [r7, #12]
    217c:	687a      	ldr	r2, [r7, #4]
    217e:	4413      	add	r3, r2
    2180:	781b      	ldrb	r3, [r3, #0]
    2182:	2b2f      	cmp	r3, #47	; 0x2f
    2184:	d001      	beq.n	218a <str_to_date+0xbc>
    2186:	2300      	movs	r3, #0
    2188:	e039      	b.n	21fe <str_to_date+0x130>
    218a:	68bb      	ldr	r3, [r7, #8]
    218c:	b2db      	uxtb	r3, r3
    218e:	f003 030f 	and.w	r3, r3, #15
    2192:	b2d9      	uxtb	r1, r3
    2194:	683a      	ldr	r2, [r7, #0]
    2196:	8853      	ldrh	r3, [r2, #2]
    2198:	f361 1389 	bfi	r3, r1, #6, #4
    219c:	8053      	strh	r3, [r2, #2]
    219e:	2300      	movs	r3, #0
    21a0:	60bb      	str	r3, [r7, #8]
    21a2:	68fb      	ldr	r3, [r7, #12]
    21a4:	3301      	adds	r3, #1
    21a6:	60fb      	str	r3, [r7, #12]
    21a8:	e00f      	b.n	21ca <str_to_date+0xfc>
    21aa:	68ba      	ldr	r2, [r7, #8]
    21ac:	4613      	mov	r3, r2
    21ae:	009b      	lsls	r3, r3, #2
    21b0:	4413      	add	r3, r2
    21b2:	005b      	lsls	r3, r3, #1
    21b4:	4619      	mov	r1, r3
    21b6:	68fb      	ldr	r3, [r7, #12]
    21b8:	1c5a      	adds	r2, r3, #1
    21ba:	60fa      	str	r2, [r7, #12]
    21bc:	461a      	mov	r2, r3
    21be:	687b      	ldr	r3, [r7, #4]
    21c0:	4413      	add	r3, r2
    21c2:	781b      	ldrb	r3, [r3, #0]
    21c4:	440b      	add	r3, r1
    21c6:	3b30      	subs	r3, #48	; 0x30
    21c8:	60bb      	str	r3, [r7, #8]
    21ca:	68fb      	ldr	r3, [r7, #12]
    21cc:	687a      	ldr	r2, [r7, #4]
    21ce:	4413      	add	r3, r2
    21d0:	781b      	ldrb	r3, [r3, #0]
    21d2:	4618      	mov	r0, r3
    21d4:	f7fe ffb3 	bl	113e <digit>
    21d8:	4603      	mov	r3, r0
    21da:	2b00      	cmp	r3, #0
    21dc:	d1e5      	bne.n	21aa <str_to_date+0xdc>
    21de:	68fb      	ldr	r3, [r7, #12]
    21e0:	2b09      	cmp	r3, #9
    21e2:	dc01      	bgt.n	21e8 <str_to_date+0x11a>
    21e4:	2300      	movs	r3, #0
    21e6:	e00a      	b.n	21fe <str_to_date+0x130>
    21e8:	68bb      	ldr	r3, [r7, #8]
    21ea:	b2db      	uxtb	r3, r3
    21ec:	f003 031f 	and.w	r3, r3, #31
    21f0:	b2d9      	uxtb	r1, r3
    21f2:	683a      	ldr	r2, [r7, #0]
    21f4:	7893      	ldrb	r3, [r2, #2]
    21f6:	f361 0345 	bfi	r3, r1, #1, #5
    21fa:	7093      	strb	r3, [r2, #2]
    21fc:	2301      	movs	r3, #1
    21fe:	4618      	mov	r0, r3
    2200:	3710      	adds	r7, #16
    2202:	46bd      	mov	sp, r7
    2204:	bd80      	pop	{r7, pc}

00002206 <str_to_time>:
    2206:	b580      	push	{r7, lr}
    2208:	b084      	sub	sp, #16
    220a:	af00      	add	r7, sp, #0
    220c:	6078      	str	r0, [r7, #4]
    220e:	6039      	str	r1, [r7, #0]
    2210:	2300      	movs	r3, #0
    2212:	60fb      	str	r3, [r7, #12]
    2214:	2300      	movs	r3, #0
    2216:	72fb      	strb	r3, [r7, #11]
    2218:	e010      	b.n	223c <str_to_time+0x36>
    221a:	7afb      	ldrb	r3, [r7, #11]
    221c:	461a      	mov	r2, r3
    221e:	0092      	lsls	r2, r2, #2
    2220:	4413      	add	r3, r2
    2222:	005b      	lsls	r3, r3, #1
    2224:	b2da      	uxtb	r2, r3
    2226:	68fb      	ldr	r3, [r7, #12]
    2228:	1c59      	adds	r1, r3, #1
    222a:	60f9      	str	r1, [r7, #12]
    222c:	4619      	mov	r1, r3
    222e:	687b      	ldr	r3, [r7, #4]
    2230:	440b      	add	r3, r1
    2232:	781b      	ldrb	r3, [r3, #0]
    2234:	4413      	add	r3, r2
    2236:	b2db      	uxtb	r3, r3
    2238:	3b30      	subs	r3, #48	; 0x30
    223a:	72fb      	strb	r3, [r7, #11]
    223c:	68fb      	ldr	r3, [r7, #12]
    223e:	687a      	ldr	r2, [r7, #4]
    2240:	4413      	add	r3, r2
    2242:	781b      	ldrb	r3, [r3, #0]
    2244:	4618      	mov	r0, r3
    2246:	f7fe ff7a 	bl	113e <digit>
    224a:	4603      	mov	r3, r0
    224c:	2b00      	cmp	r3, #0
    224e:	d1e4      	bne.n	221a <str_to_time+0x14>
    2250:	7afb      	ldrb	r3, [r7, #11]
    2252:	2b17      	cmp	r3, #23
    2254:	d805      	bhi.n	2262 <str_to_time+0x5c>
    2256:	68fb      	ldr	r3, [r7, #12]
    2258:	687a      	ldr	r2, [r7, #4]
    225a:	4413      	add	r3, r2
    225c:	781b      	ldrb	r3, [r3, #0]
    225e:	2b3a      	cmp	r3, #58	; 0x3a
    2260:	d001      	beq.n	2266 <str_to_time+0x60>
    2262:	2300      	movs	r3, #0
    2264:	e06d      	b.n	2342 <str_to_time+0x13c>
    2266:	7afb      	ldrb	r3, [r7, #11]
    2268:	f003 031f 	and.w	r3, r3, #31
    226c:	b2d9      	uxtb	r1, r3
    226e:	683a      	ldr	r2, [r7, #0]
    2270:	6813      	ldr	r3, [r2, #0]
    2272:	f361 3310 	bfi	r3, r1, #12, #5
    2276:	6013      	str	r3, [r2, #0]
    2278:	68fb      	ldr	r3, [r7, #12]
    227a:	3301      	adds	r3, #1
    227c:	60fb      	str	r3, [r7, #12]
    227e:	2300      	movs	r3, #0
    2280:	72fb      	strb	r3, [r7, #11]
    2282:	e010      	b.n	22a6 <str_to_time+0xa0>
    2284:	7afb      	ldrb	r3, [r7, #11]
    2286:	461a      	mov	r2, r3
    2288:	0092      	lsls	r2, r2, #2
    228a:	4413      	add	r3, r2
    228c:	005b      	lsls	r3, r3, #1
    228e:	b2da      	uxtb	r2, r3
    2290:	68fb      	ldr	r3, [r7, #12]
    2292:	1c59      	adds	r1, r3, #1
    2294:	60f9      	str	r1, [r7, #12]
    2296:	4619      	mov	r1, r3
    2298:	687b      	ldr	r3, [r7, #4]
    229a:	440b      	add	r3, r1
    229c:	781b      	ldrb	r3, [r3, #0]
    229e:	4413      	add	r3, r2
    22a0:	b2db      	uxtb	r3, r3
    22a2:	3b30      	subs	r3, #48	; 0x30
    22a4:	72fb      	strb	r3, [r7, #11]
    22a6:	68fb      	ldr	r3, [r7, #12]
    22a8:	687a      	ldr	r2, [r7, #4]
    22aa:	4413      	add	r3, r2
    22ac:	781b      	ldrb	r3, [r3, #0]
    22ae:	4618      	mov	r0, r3
    22b0:	f7fe ff45 	bl	113e <digit>
    22b4:	4603      	mov	r3, r0
    22b6:	2b00      	cmp	r3, #0
    22b8:	d1e4      	bne.n	2284 <str_to_time+0x7e>
    22ba:	7afb      	ldrb	r3, [r7, #11]
    22bc:	2b3b      	cmp	r3, #59	; 0x3b
    22be:	d805      	bhi.n	22cc <str_to_time+0xc6>
    22c0:	68fb      	ldr	r3, [r7, #12]
    22c2:	687a      	ldr	r2, [r7, #4]
    22c4:	4413      	add	r3, r2
    22c6:	781b      	ldrb	r3, [r3, #0]
    22c8:	2b3a      	cmp	r3, #58	; 0x3a
    22ca:	d001      	beq.n	22d0 <str_to_time+0xca>
    22cc:	2300      	movs	r3, #0
    22ce:	e038      	b.n	2342 <str_to_time+0x13c>
    22d0:	7afb      	ldrb	r3, [r7, #11]
    22d2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    22d6:	b2d9      	uxtb	r1, r3
    22d8:	683a      	ldr	r2, [r7, #0]
    22da:	8813      	ldrh	r3, [r2, #0]
    22dc:	f361 138b 	bfi	r3, r1, #6, #6
    22e0:	8013      	strh	r3, [r2, #0]
    22e2:	2300      	movs	r3, #0
    22e4:	72fb      	strb	r3, [r7, #11]
    22e6:	68fb      	ldr	r3, [r7, #12]
    22e8:	3301      	adds	r3, #1
    22ea:	60fb      	str	r3, [r7, #12]
    22ec:	e010      	b.n	2310 <str_to_time+0x10a>
    22ee:	7afb      	ldrb	r3, [r7, #11]
    22f0:	461a      	mov	r2, r3
    22f2:	0092      	lsls	r2, r2, #2
    22f4:	4413      	add	r3, r2
    22f6:	005b      	lsls	r3, r3, #1
    22f8:	b2da      	uxtb	r2, r3
    22fa:	68fb      	ldr	r3, [r7, #12]
    22fc:	1c59      	adds	r1, r3, #1
    22fe:	60f9      	str	r1, [r7, #12]
    2300:	4619      	mov	r1, r3
    2302:	687b      	ldr	r3, [r7, #4]
    2304:	440b      	add	r3, r1
    2306:	781b      	ldrb	r3, [r3, #0]
    2308:	4413      	add	r3, r2
    230a:	b2db      	uxtb	r3, r3
    230c:	3b30      	subs	r3, #48	; 0x30
    230e:	72fb      	strb	r3, [r7, #11]
    2310:	68fb      	ldr	r3, [r7, #12]
    2312:	687a      	ldr	r2, [r7, #4]
    2314:	4413      	add	r3, r2
    2316:	781b      	ldrb	r3, [r3, #0]
    2318:	4618      	mov	r0, r3
    231a:	f7fe ff10 	bl	113e <digit>
    231e:	4603      	mov	r3, r0
    2320:	2b00      	cmp	r3, #0
    2322:	d1e4      	bne.n	22ee <str_to_time+0xe8>
    2324:	7afb      	ldrb	r3, [r7, #11]
    2326:	2b3b      	cmp	r3, #59	; 0x3b
    2328:	d901      	bls.n	232e <str_to_time+0x128>
    232a:	2300      	movs	r3, #0
    232c:	e009      	b.n	2342 <str_to_time+0x13c>
    232e:	7afb      	ldrb	r3, [r7, #11]
    2330:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2334:	b2d9      	uxtb	r1, r3
    2336:	683a      	ldr	r2, [r7, #0]
    2338:	7813      	ldrb	r3, [r2, #0]
    233a:	f361 0305 	bfi	r3, r1, #0, #6
    233e:	7013      	strb	r3, [r2, #0]
    2340:	2301      	movs	r3, #1
    2342:	4618      	mov	r0, r3
    2344:	3710      	adds	r7, #16
    2346:	46bd      	mov	sp, r7
    2348:	bd80      	pop	{r7, pc}

0000234a <date_str>:
    234a:	b480      	push	{r7}
    234c:	b085      	sub	sp, #20
    234e:	af00      	add	r7, sp, #0
    2350:	6078      	str	r0, [r7, #4]
    2352:	6039      	str	r1, [r7, #0]
    2354:	2300      	movs	r3, #0
    2356:	60fb      	str	r3, [r7, #12]
    2358:	687b      	ldr	r3, [r7, #4]
    235a:	891b      	ldrh	r3, [r3, #8]
    235c:	60bb      	str	r3, [r7, #8]
    235e:	68fb      	ldr	r3, [r7, #12]
    2360:	1c5a      	adds	r2, r3, #1
    2362:	60fa      	str	r2, [r7, #12]
    2364:	461a      	mov	r2, r3
    2366:	683b      	ldr	r3, [r7, #0]
    2368:	4413      	add	r3, r2
    236a:	68ba      	ldr	r2, [r7, #8]
    236c:	495d      	ldr	r1, [pc, #372]	; (24e4 <date_str+0x19a>)
    236e:	fba1 1202 	umull	r1, r2, r1, r2
    2372:	0992      	lsrs	r2, r2, #6
    2374:	b2d2      	uxtb	r2, r2
    2376:	3230      	adds	r2, #48	; 0x30
    2378:	b2d2      	uxtb	r2, r2
    237a:	701a      	strb	r2, [r3, #0]
    237c:	68bb      	ldr	r3, [r7, #8]
    237e:	4a59      	ldr	r2, [pc, #356]	; (24e4 <date_str+0x19a>)
    2380:	fba2 1203 	umull	r1, r2, r2, r3
    2384:	0992      	lsrs	r2, r2, #6
    2386:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    238a:	fb01 f202 	mul.w	r2, r1, r2
    238e:	1a9b      	subs	r3, r3, r2
    2390:	60bb      	str	r3, [r7, #8]
    2392:	68fb      	ldr	r3, [r7, #12]
    2394:	1c5a      	adds	r2, r3, #1
    2396:	60fa      	str	r2, [r7, #12]
    2398:	461a      	mov	r2, r3
    239a:	683b      	ldr	r3, [r7, #0]
    239c:	4413      	add	r3, r2
    239e:	68ba      	ldr	r2, [r7, #8]
    23a0:	4951      	ldr	r1, [pc, #324]	; (24e8 <date_str+0x19e>)
    23a2:	fba1 1202 	umull	r1, r2, r1, r2
    23a6:	0952      	lsrs	r2, r2, #5
    23a8:	b2d2      	uxtb	r2, r2
    23aa:	3230      	adds	r2, #48	; 0x30
    23ac:	b2d2      	uxtb	r2, r2
    23ae:	701a      	strb	r2, [r3, #0]
    23b0:	68bb      	ldr	r3, [r7, #8]
    23b2:	4a4d      	ldr	r2, [pc, #308]	; (24e8 <date_str+0x19e>)
    23b4:	fba2 1203 	umull	r1, r2, r2, r3
    23b8:	0952      	lsrs	r2, r2, #5
    23ba:	2164      	movs	r1, #100	; 0x64
    23bc:	fb01 f202 	mul.w	r2, r1, r2
    23c0:	1a9b      	subs	r3, r3, r2
    23c2:	60bb      	str	r3, [r7, #8]
    23c4:	68fb      	ldr	r3, [r7, #12]
    23c6:	1c5a      	adds	r2, r3, #1
    23c8:	60fa      	str	r2, [r7, #12]
    23ca:	461a      	mov	r2, r3
    23cc:	683b      	ldr	r3, [r7, #0]
    23ce:	4413      	add	r3, r2
    23d0:	68ba      	ldr	r2, [r7, #8]
    23d2:	4946      	ldr	r1, [pc, #280]	; (24ec <date_str+0x1a2>)
    23d4:	fba1 1202 	umull	r1, r2, r1, r2
    23d8:	08d2      	lsrs	r2, r2, #3
    23da:	b2d2      	uxtb	r2, r2
    23dc:	3230      	adds	r2, #48	; 0x30
    23de:	b2d2      	uxtb	r2, r2
    23e0:	701a      	strb	r2, [r3, #0]
    23e2:	68fb      	ldr	r3, [r7, #12]
    23e4:	1c5a      	adds	r2, r3, #1
    23e6:	60fa      	str	r2, [r7, #12]
    23e8:	461a      	mov	r2, r3
    23ea:	683b      	ldr	r3, [r7, #0]
    23ec:	1898      	adds	r0, r3, r2
    23ee:	68b9      	ldr	r1, [r7, #8]
    23f0:	4b3e      	ldr	r3, [pc, #248]	; (24ec <date_str+0x1a2>)
    23f2:	fba3 2301 	umull	r2, r3, r3, r1
    23f6:	08da      	lsrs	r2, r3, #3
    23f8:	4613      	mov	r3, r2
    23fa:	009b      	lsls	r3, r3, #2
    23fc:	4413      	add	r3, r2
    23fe:	005b      	lsls	r3, r3, #1
    2400:	1aca      	subs	r2, r1, r3
    2402:	b2d3      	uxtb	r3, r2
    2404:	3330      	adds	r3, #48	; 0x30
    2406:	b2db      	uxtb	r3, r3
    2408:	7003      	strb	r3, [r0, #0]
    240a:	68fb      	ldr	r3, [r7, #12]
    240c:	1c5a      	adds	r2, r3, #1
    240e:	60fa      	str	r2, [r7, #12]
    2410:	461a      	mov	r2, r3
    2412:	683b      	ldr	r3, [r7, #0]
    2414:	4413      	add	r3, r2
    2416:	222f      	movs	r2, #47	; 0x2f
    2418:	701a      	strb	r2, [r3, #0]
    241a:	687b      	ldr	r3, [r7, #4]
    241c:	885b      	ldrh	r3, [r3, #2]
    241e:	f3c3 1383 	ubfx	r3, r3, #6, #4
    2422:	b2db      	uxtb	r3, r3
    2424:	60bb      	str	r3, [r7, #8]
    2426:	68fb      	ldr	r3, [r7, #12]
    2428:	1c5a      	adds	r2, r3, #1
    242a:	60fa      	str	r2, [r7, #12]
    242c:	461a      	mov	r2, r3
    242e:	683b      	ldr	r3, [r7, #0]
    2430:	4413      	add	r3, r2
    2432:	68ba      	ldr	r2, [r7, #8]
    2434:	492d      	ldr	r1, [pc, #180]	; (24ec <date_str+0x1a2>)
    2436:	fba1 1202 	umull	r1, r2, r1, r2
    243a:	08d2      	lsrs	r2, r2, #3
    243c:	b2d2      	uxtb	r2, r2
    243e:	3230      	adds	r2, #48	; 0x30
    2440:	b2d2      	uxtb	r2, r2
    2442:	701a      	strb	r2, [r3, #0]
    2444:	68fb      	ldr	r3, [r7, #12]
    2446:	1c5a      	adds	r2, r3, #1
    2448:	60fa      	str	r2, [r7, #12]
    244a:	461a      	mov	r2, r3
    244c:	683b      	ldr	r3, [r7, #0]
    244e:	1898      	adds	r0, r3, r2
    2450:	68b9      	ldr	r1, [r7, #8]
    2452:	4b26      	ldr	r3, [pc, #152]	; (24ec <date_str+0x1a2>)
    2454:	fba3 2301 	umull	r2, r3, r3, r1
    2458:	08da      	lsrs	r2, r3, #3
    245a:	4613      	mov	r3, r2
    245c:	009b      	lsls	r3, r3, #2
    245e:	4413      	add	r3, r2
    2460:	005b      	lsls	r3, r3, #1
    2462:	1aca      	subs	r2, r1, r3
    2464:	b2d3      	uxtb	r3, r2
    2466:	3330      	adds	r3, #48	; 0x30
    2468:	b2db      	uxtb	r3, r3
    246a:	7003      	strb	r3, [r0, #0]
    246c:	68fb      	ldr	r3, [r7, #12]
    246e:	1c5a      	adds	r2, r3, #1
    2470:	60fa      	str	r2, [r7, #12]
    2472:	461a      	mov	r2, r3
    2474:	683b      	ldr	r3, [r7, #0]
    2476:	4413      	add	r3, r2
    2478:	222f      	movs	r2, #47	; 0x2f
    247a:	701a      	strb	r2, [r3, #0]
    247c:	687b      	ldr	r3, [r7, #4]
    247e:	789b      	ldrb	r3, [r3, #2]
    2480:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2484:	b2db      	uxtb	r3, r3
    2486:	60bb      	str	r3, [r7, #8]
    2488:	68fb      	ldr	r3, [r7, #12]
    248a:	1c5a      	adds	r2, r3, #1
    248c:	60fa      	str	r2, [r7, #12]
    248e:	461a      	mov	r2, r3
    2490:	683b      	ldr	r3, [r7, #0]
    2492:	4413      	add	r3, r2
    2494:	68ba      	ldr	r2, [r7, #8]
    2496:	4915      	ldr	r1, [pc, #84]	; (24ec <date_str+0x1a2>)
    2498:	fba1 1202 	umull	r1, r2, r1, r2
    249c:	08d2      	lsrs	r2, r2, #3
    249e:	b2d2      	uxtb	r2, r2
    24a0:	3230      	adds	r2, #48	; 0x30
    24a2:	b2d2      	uxtb	r2, r2
    24a4:	701a      	strb	r2, [r3, #0]
    24a6:	68fb      	ldr	r3, [r7, #12]
    24a8:	1c5a      	adds	r2, r3, #1
    24aa:	60fa      	str	r2, [r7, #12]
    24ac:	461a      	mov	r2, r3
    24ae:	683b      	ldr	r3, [r7, #0]
    24b0:	1898      	adds	r0, r3, r2
    24b2:	68b9      	ldr	r1, [r7, #8]
    24b4:	4b0d      	ldr	r3, [pc, #52]	; (24ec <date_str+0x1a2>)
    24b6:	fba3 2301 	umull	r2, r3, r3, r1
    24ba:	08da      	lsrs	r2, r3, #3
    24bc:	4613      	mov	r3, r2
    24be:	009b      	lsls	r3, r3, #2
    24c0:	4413      	add	r3, r2
    24c2:	005b      	lsls	r3, r3, #1
    24c4:	1aca      	subs	r2, r1, r3
    24c6:	b2d3      	uxtb	r3, r2
    24c8:	3330      	adds	r3, #48	; 0x30
    24ca:	b2db      	uxtb	r3, r3
    24cc:	7003      	strb	r3, [r0, #0]
    24ce:	68fb      	ldr	r3, [r7, #12]
    24d0:	683a      	ldr	r2, [r7, #0]
    24d2:	4413      	add	r3, r2
    24d4:	2200      	movs	r2, #0
    24d6:	701a      	strb	r2, [r3, #0]
    24d8:	bf00      	nop
    24da:	3714      	adds	r7, #20
    24dc:	46bd      	mov	sp, r7
    24de:	bc80      	pop	{r7}
    24e0:	4770      	bx	lr
    24e2:	bf00      	nop
    24e4:	10624dd3 	.word	0x10624dd3
    24e8:	51eb851f 	.word	0x51eb851f
    24ec:	cccccccd 	.word	0xcccccccd

000024f0 <time_str>:
    24f0:	b480      	push	{r7}
    24f2:	b085      	sub	sp, #20
    24f4:	af00      	add	r7, sp, #0
    24f6:	6078      	str	r0, [r7, #4]
    24f8:	6039      	str	r1, [r7, #0]
    24fa:	2300      	movs	r3, #0
    24fc:	60fb      	str	r3, [r7, #12]
    24fe:	687b      	ldr	r3, [r7, #4]
    2500:	681b      	ldr	r3, [r3, #0]
    2502:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2506:	b2db      	uxtb	r3, r3
    2508:	60bb      	str	r3, [r7, #8]
    250a:	68fb      	ldr	r3, [r7, #12]
    250c:	1c5a      	adds	r2, r3, #1
    250e:	60fa      	str	r2, [r7, #12]
    2510:	461a      	mov	r2, r3
    2512:	683b      	ldr	r3, [r7, #0]
    2514:	4413      	add	r3, r2
    2516:	68ba      	ldr	r2, [r7, #8]
    2518:	4943      	ldr	r1, [pc, #268]	; (2628 <time_str+0x138>)
    251a:	fba1 1202 	umull	r1, r2, r1, r2
    251e:	08d2      	lsrs	r2, r2, #3
    2520:	b2d2      	uxtb	r2, r2
    2522:	3230      	adds	r2, #48	; 0x30
    2524:	b2d2      	uxtb	r2, r2
    2526:	701a      	strb	r2, [r3, #0]
    2528:	68fb      	ldr	r3, [r7, #12]
    252a:	1c5a      	adds	r2, r3, #1
    252c:	60fa      	str	r2, [r7, #12]
    252e:	461a      	mov	r2, r3
    2530:	683b      	ldr	r3, [r7, #0]
    2532:	1898      	adds	r0, r3, r2
    2534:	68b9      	ldr	r1, [r7, #8]
    2536:	4b3c      	ldr	r3, [pc, #240]	; (2628 <time_str+0x138>)
    2538:	fba3 2301 	umull	r2, r3, r3, r1
    253c:	08da      	lsrs	r2, r3, #3
    253e:	4613      	mov	r3, r2
    2540:	009b      	lsls	r3, r3, #2
    2542:	4413      	add	r3, r2
    2544:	005b      	lsls	r3, r3, #1
    2546:	1aca      	subs	r2, r1, r3
    2548:	b2d3      	uxtb	r3, r2
    254a:	3330      	adds	r3, #48	; 0x30
    254c:	b2db      	uxtb	r3, r3
    254e:	7003      	strb	r3, [r0, #0]
    2550:	68fb      	ldr	r3, [r7, #12]
    2552:	1c5a      	adds	r2, r3, #1
    2554:	60fa      	str	r2, [r7, #12]
    2556:	461a      	mov	r2, r3
    2558:	683b      	ldr	r3, [r7, #0]
    255a:	4413      	add	r3, r2
    255c:	223a      	movs	r2, #58	; 0x3a
    255e:	701a      	strb	r2, [r3, #0]
    2560:	687b      	ldr	r3, [r7, #4]
    2562:	881b      	ldrh	r3, [r3, #0]
    2564:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2568:	b2db      	uxtb	r3, r3
    256a:	60bb      	str	r3, [r7, #8]
    256c:	68fb      	ldr	r3, [r7, #12]
    256e:	1c5a      	adds	r2, r3, #1
    2570:	60fa      	str	r2, [r7, #12]
    2572:	461a      	mov	r2, r3
    2574:	683b      	ldr	r3, [r7, #0]
    2576:	4413      	add	r3, r2
    2578:	68ba      	ldr	r2, [r7, #8]
    257a:	492b      	ldr	r1, [pc, #172]	; (2628 <time_str+0x138>)
    257c:	fba1 1202 	umull	r1, r2, r1, r2
    2580:	08d2      	lsrs	r2, r2, #3
    2582:	b2d2      	uxtb	r2, r2
    2584:	3230      	adds	r2, #48	; 0x30
    2586:	b2d2      	uxtb	r2, r2
    2588:	701a      	strb	r2, [r3, #0]
    258a:	68fb      	ldr	r3, [r7, #12]
    258c:	1c5a      	adds	r2, r3, #1
    258e:	60fa      	str	r2, [r7, #12]
    2590:	461a      	mov	r2, r3
    2592:	683b      	ldr	r3, [r7, #0]
    2594:	1898      	adds	r0, r3, r2
    2596:	68b9      	ldr	r1, [r7, #8]
    2598:	4b23      	ldr	r3, [pc, #140]	; (2628 <time_str+0x138>)
    259a:	fba3 2301 	umull	r2, r3, r3, r1
    259e:	08da      	lsrs	r2, r3, #3
    25a0:	4613      	mov	r3, r2
    25a2:	009b      	lsls	r3, r3, #2
    25a4:	4413      	add	r3, r2
    25a6:	005b      	lsls	r3, r3, #1
    25a8:	1aca      	subs	r2, r1, r3
    25aa:	b2d3      	uxtb	r3, r2
    25ac:	3330      	adds	r3, #48	; 0x30
    25ae:	b2db      	uxtb	r3, r3
    25b0:	7003      	strb	r3, [r0, #0]
    25b2:	68fb      	ldr	r3, [r7, #12]
    25b4:	1c5a      	adds	r2, r3, #1
    25b6:	60fa      	str	r2, [r7, #12]
    25b8:	461a      	mov	r2, r3
    25ba:	683b      	ldr	r3, [r7, #0]
    25bc:	4413      	add	r3, r2
    25be:	223a      	movs	r2, #58	; 0x3a
    25c0:	701a      	strb	r2, [r3, #0]
    25c2:	687b      	ldr	r3, [r7, #4]
    25c4:	781b      	ldrb	r3, [r3, #0]
    25c6:	f3c3 0305 	ubfx	r3, r3, #0, #6
    25ca:	b2db      	uxtb	r3, r3
    25cc:	60bb      	str	r3, [r7, #8]
    25ce:	68fb      	ldr	r3, [r7, #12]
    25d0:	1c5a      	adds	r2, r3, #1
    25d2:	60fa      	str	r2, [r7, #12]
    25d4:	461a      	mov	r2, r3
    25d6:	683b      	ldr	r3, [r7, #0]
    25d8:	4413      	add	r3, r2
    25da:	68ba      	ldr	r2, [r7, #8]
    25dc:	4912      	ldr	r1, [pc, #72]	; (2628 <time_str+0x138>)
    25de:	fba1 1202 	umull	r1, r2, r1, r2
    25e2:	08d2      	lsrs	r2, r2, #3
    25e4:	b2d2      	uxtb	r2, r2
    25e6:	3230      	adds	r2, #48	; 0x30
    25e8:	b2d2      	uxtb	r2, r2
    25ea:	701a      	strb	r2, [r3, #0]
    25ec:	68fb      	ldr	r3, [r7, #12]
    25ee:	1c5a      	adds	r2, r3, #1
    25f0:	60fa      	str	r2, [r7, #12]
    25f2:	461a      	mov	r2, r3
    25f4:	683b      	ldr	r3, [r7, #0]
    25f6:	1898      	adds	r0, r3, r2
    25f8:	68b9      	ldr	r1, [r7, #8]
    25fa:	4b0b      	ldr	r3, [pc, #44]	; (2628 <time_str+0x138>)
    25fc:	fba3 2301 	umull	r2, r3, r3, r1
    2600:	08da      	lsrs	r2, r3, #3
    2602:	4613      	mov	r3, r2
    2604:	009b      	lsls	r3, r3, #2
    2606:	4413      	add	r3, r2
    2608:	005b      	lsls	r3, r3, #1
    260a:	1aca      	subs	r2, r1, r3
    260c:	b2d3      	uxtb	r3, r2
    260e:	3330      	adds	r3, #48	; 0x30
    2610:	b2db      	uxtb	r3, r3
    2612:	7003      	strb	r3, [r0, #0]
    2614:	68fb      	ldr	r3, [r7, #12]
    2616:	683a      	ldr	r2, [r7, #0]
    2618:	4413      	add	r3, r2
    261a:	2200      	movs	r2, #0
    261c:	701a      	strb	r2, [r3, #0]
    261e:	bf00      	nop
    2620:	3714      	adds	r7, #20
    2622:	46bd      	mov	sp, r7
    2624:	bc80      	pop	{r7}
    2626:	4770      	bx	lr
    2628:	cccccccd 	.word	0xcccccccd

0000262c <get_fattime>:
    262c:	b580      	push	{r7, lr}
    262e:	b084      	sub	sp, #16
    2630:	af00      	add	r7, sp, #0
    2632:	463b      	mov	r3, r7
    2634:	4618      	mov	r0, r3
    2636:	f7ff fa69 	bl	1b0c <get_date_time>
    263a:	783b      	ldrb	r3, [r7, #0]
    263c:	f3c3 0305 	ubfx	r3, r3, #0, #6
    2640:	b2db      	uxtb	r3, r3
    2642:	0fda      	lsrs	r2, r3, #31
    2644:	4413      	add	r3, r2
    2646:	105b      	asrs	r3, r3, #1
    2648:	b2db      	uxtb	r3, r3
    264a:	f003 031f 	and.w	r3, r3, #31
    264e:	b2da      	uxtb	r2, r3
    2650:	7b3b      	ldrb	r3, [r7, #12]
    2652:	f362 0304 	bfi	r3, r2, #0, #5
    2656:	733b      	strb	r3, [r7, #12]
    2658:	883b      	ldrh	r3, [r7, #0]
    265a:	f3c3 1385 	ubfx	r3, r3, #6, #6
    265e:	b2da      	uxtb	r2, r3
    2660:	89bb      	ldrh	r3, [r7, #12]
    2662:	f362 134a 	bfi	r3, r2, #5, #6
    2666:	81bb      	strh	r3, [r7, #12]
    2668:	683b      	ldr	r3, [r7, #0]
    266a:	f3c3 3304 	ubfx	r3, r3, #12, #5
    266e:	b2da      	uxtb	r2, r3
    2670:	7b7b      	ldrb	r3, [r7, #13]
    2672:	f362 03c7 	bfi	r3, r2, #3, #5
    2676:	737b      	strb	r3, [r7, #13]
    2678:	78bb      	ldrb	r3, [r7, #2]
    267a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    267e:	b2da      	uxtb	r2, r3
    2680:	7bbb      	ldrb	r3, [r7, #14]
    2682:	f362 0304 	bfi	r3, r2, #0, #5
    2686:	73bb      	strb	r3, [r7, #14]
    2688:	887b      	ldrh	r3, [r7, #2]
    268a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    268e:	b2da      	uxtb	r2, r3
    2690:	89fb      	ldrh	r3, [r7, #14]
    2692:	f362 1348 	bfi	r3, r2, #5, #4
    2696:	81fb      	strh	r3, [r7, #14]
    2698:	893b      	ldrh	r3, [r7, #8]
    269a:	b2db      	uxtb	r3, r3
    269c:	3344      	adds	r3, #68	; 0x44
    269e:	b2db      	uxtb	r3, r3
    26a0:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    26a4:	b2da      	uxtb	r2, r3
    26a6:	7bfb      	ldrb	r3, [r7, #15]
    26a8:	f362 0347 	bfi	r3, r2, #1, #7
    26ac:	73fb      	strb	r3, [r7, #15]
    26ae:	68fb      	ldr	r3, [r7, #12]
    26b0:	4618      	mov	r0, r3
    26b2:	3710      	adds	r7, #16
    26b4:	46bd      	mov	sp, r7
    26b6:	bd80      	pop	{r7, pc}

000026b8 <RTC_handler>:
    26b8:	b480      	push	{r7}
    26ba:	b083      	sub	sp, #12
    26bc:	af00      	add	r7, sp, #0
    26be:	4b0a      	ldr	r3, [pc, #40]	; (26e8 <RTC_handler+0x30>)
    26c0:	685b      	ldr	r3, [r3, #4]
    26c2:	f003 0301 	and.w	r3, r3, #1
    26c6:	2b00      	cmp	r3, #0
    26c8:	d001      	beq.n	26ce <RTC_handler+0x16>
    26ca:	4b07      	ldr	r3, [pc, #28]	; (26e8 <RTC_handler+0x30>)
    26cc:	685b      	ldr	r3, [r3, #4]
    26ce:	4b06      	ldr	r3, [pc, #24]	; (26e8 <RTC_handler+0x30>)
    26d0:	685b      	ldr	r3, [r3, #4]
    26d2:	f003 0302 	and.w	r3, r3, #2
    26d6:	2b00      	cmp	r3, #0
    26d8:	d001      	beq.n	26de <RTC_handler+0x26>
    26da:	4b03      	ldr	r3, [pc, #12]	; (26e8 <RTC_handler+0x30>)
    26dc:	685b      	ldr	r3, [r3, #4]
    26de:	bf00      	nop
    26e0:	370c      	adds	r7, #12
    26e2:	46bd      	mov	sp, r7
    26e4:	bc80      	pop	{r7}
    26e6:	4770      	bx	lr
    26e8:	40002800 	.word	0x40002800

000026ec <spi_baudrate>:
    26ec:	b480      	push	{r7}
    26ee:	b083      	sub	sp, #12
    26f0:	af00      	add	r7, sp, #0
    26f2:	6078      	str	r0, [r7, #4]
    26f4:	6039      	str	r1, [r7, #0]
    26f6:	687b      	ldr	r3, [r7, #4]
    26f8:	681b      	ldr	r3, [r3, #0]
    26fa:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    26fe:	687b      	ldr	r3, [r7, #4]
    2700:	601a      	str	r2, [r3, #0]
    2702:	687b      	ldr	r3, [r7, #4]
    2704:	681a      	ldr	r2, [r3, #0]
    2706:	683b      	ldr	r3, [r7, #0]
    2708:	00db      	lsls	r3, r3, #3
    270a:	431a      	orrs	r2, r3
    270c:	687b      	ldr	r3, [r7, #4]
    270e:	601a      	str	r2, [r3, #0]
    2710:	bf00      	nop
    2712:	370c      	adds	r7, #12
    2714:	46bd      	mov	sp, r7
    2716:	bc80      	pop	{r7}
    2718:	4770      	bx	lr

0000271a <spi_config_port>:
    271a:	b580      	push	{r7, lr}
    271c:	b082      	sub	sp, #8
    271e:	af00      	add	r7, sp, #0
    2720:	6078      	str	r0, [r7, #4]
    2722:	6039      	str	r1, [r7, #0]
    2724:	4a33      	ldr	r2, [pc, #204]	; (27f4 <spi_config_port+0xda>)
    2726:	4b33      	ldr	r3, [pc, #204]	; (27f4 <spi_config_port+0xda>)
    2728:	699b      	ldr	r3, [r3, #24]
    272a:	f043 0301 	orr.w	r3, r3, #1
    272e:	6193      	str	r3, [r2, #24]
    2730:	687b      	ldr	r3, [r7, #4]
    2732:	4a31      	ldr	r2, [pc, #196]	; (27f8 <spi_config_port+0xde>)
    2734:	4293      	cmp	r3, r2
    2736:	d13e      	bne.n	27b6 <spi_config_port+0x9c>
    2738:	683b      	ldr	r3, [r7, #0]
    273a:	2b00      	cmp	r3, #0
    273c:	d11a      	bne.n	2774 <spi_config_port+0x5a>
    273e:	4a2d      	ldr	r2, [pc, #180]	; (27f4 <spi_config_port+0xda>)
    2740:	4b2c      	ldr	r3, [pc, #176]	; (27f4 <spi_config_port+0xda>)
    2742:	699b      	ldr	r3, [r3, #24]
    2744:	f043 0304 	orr.w	r3, r3, #4
    2748:	6193      	str	r3, [r2, #24]
    274a:	2203      	movs	r2, #3
    274c:	2104      	movs	r1, #4
    274e:	482b      	ldr	r0, [pc, #172]	; (27fc <spi_config_port+0xe2>)
    2750:	f7fe fefd 	bl	154e <config_pin>
    2754:	220b      	movs	r2, #11
    2756:	2105      	movs	r1, #5
    2758:	4828      	ldr	r0, [pc, #160]	; (27fc <spi_config_port+0xe2>)
    275a:	f7fe fef8 	bl	154e <config_pin>
    275e:	2204      	movs	r2, #4
    2760:	2106      	movs	r1, #6
    2762:	4826      	ldr	r0, [pc, #152]	; (27fc <spi_config_port+0xe2>)
    2764:	f7fe fef3 	bl	154e <config_pin>
    2768:	220b      	movs	r2, #11
    276a:	2107      	movs	r1, #7
    276c:	4823      	ldr	r0, [pc, #140]	; (27fc <spi_config_port+0xe2>)
    276e:	f7fe feee 	bl	154e <config_pin>
    2772:	e03a      	b.n	27ea <spi_config_port+0xd0>
    2774:	4a1f      	ldr	r2, [pc, #124]	; (27f4 <spi_config_port+0xda>)
    2776:	4b1f      	ldr	r3, [pc, #124]	; (27f4 <spi_config_port+0xda>)
    2778:	699b      	ldr	r3, [r3, #24]
    277a:	f043 030d 	orr.w	r3, r3, #13
    277e:	6193      	str	r3, [r2, #24]
    2780:	4a1f      	ldr	r2, [pc, #124]	; (2800 <spi_config_port+0xe6>)
    2782:	4b1f      	ldr	r3, [pc, #124]	; (2800 <spi_config_port+0xe6>)
    2784:	685b      	ldr	r3, [r3, #4]
    2786:	f043 0301 	orr.w	r3, r3, #1
    278a:	6053      	str	r3, [r2, #4]
    278c:	2203      	movs	r2, #3
    278e:	210f      	movs	r1, #15
    2790:	481a      	ldr	r0, [pc, #104]	; (27fc <spi_config_port+0xe2>)
    2792:	f7fe fedc 	bl	154e <config_pin>
    2796:	220b      	movs	r2, #11
    2798:	2103      	movs	r1, #3
    279a:	481a      	ldr	r0, [pc, #104]	; (2804 <spi_config_port+0xea>)
    279c:	f7fe fed7 	bl	154e <config_pin>
    27a0:	2204      	movs	r2, #4
    27a2:	2104      	movs	r1, #4
    27a4:	4817      	ldr	r0, [pc, #92]	; (2804 <spi_config_port+0xea>)
    27a6:	f7fe fed2 	bl	154e <config_pin>
    27aa:	220b      	movs	r2, #11
    27ac:	2105      	movs	r1, #5
    27ae:	4815      	ldr	r0, [pc, #84]	; (2804 <spi_config_port+0xea>)
    27b0:	f7fe fecd 	bl	154e <config_pin>
    27b4:	e019      	b.n	27ea <spi_config_port+0xd0>
    27b6:	4a0f      	ldr	r2, [pc, #60]	; (27f4 <spi_config_port+0xda>)
    27b8:	4b0e      	ldr	r3, [pc, #56]	; (27f4 <spi_config_port+0xda>)
    27ba:	699b      	ldr	r3, [r3, #24]
    27bc:	f043 0308 	orr.w	r3, r3, #8
    27c0:	6193      	str	r3, [r2, #24]
    27c2:	2203      	movs	r2, #3
    27c4:	2102      	movs	r1, #2
    27c6:	480f      	ldr	r0, [pc, #60]	; (2804 <spi_config_port+0xea>)
    27c8:	f7fe fec1 	bl	154e <config_pin>
    27cc:	220b      	movs	r2, #11
    27ce:	210d      	movs	r1, #13
    27d0:	480c      	ldr	r0, [pc, #48]	; (2804 <spi_config_port+0xea>)
    27d2:	f7fe febc 	bl	154e <config_pin>
    27d6:	2204      	movs	r2, #4
    27d8:	210e      	movs	r1, #14
    27da:	480a      	ldr	r0, [pc, #40]	; (2804 <spi_config_port+0xea>)
    27dc:	f7fe feb7 	bl	154e <config_pin>
    27e0:	220b      	movs	r2, #11
    27e2:	210f      	movs	r1, #15
    27e4:	4807      	ldr	r0, [pc, #28]	; (2804 <spi_config_port+0xea>)
    27e6:	f7fe feb2 	bl	154e <config_pin>
    27ea:	bf00      	nop
    27ec:	3708      	adds	r7, #8
    27ee:	46bd      	mov	sp, r7
    27f0:	bd80      	pop	{r7, pc}
    27f2:	bf00      	nop
    27f4:	40021000 	.word	0x40021000
    27f8:	40013000 	.word	0x40013000
    27fc:	40010800 	.word	0x40010800
    2800:	40010000 	.word	0x40010000
    2804:	40010c00 	.word	0x40010c00

00002808 <spi_init>:
    2808:	b580      	push	{r7, lr}
    280a:	b084      	sub	sp, #16
    280c:	af00      	add	r7, sp, #0
    280e:	60f8      	str	r0, [r7, #12]
    2810:	60b9      	str	r1, [r7, #8]
    2812:	607a      	str	r2, [r7, #4]
    2814:	603b      	str	r3, [r7, #0]
    2816:	6839      	ldr	r1, [r7, #0]
    2818:	68f8      	ldr	r0, [r7, #12]
    281a:	f7ff ff7e 	bl	271a <spi_config_port>
    281e:	68fb      	ldr	r3, [r7, #12]
    2820:	4a10      	ldr	r2, [pc, #64]	; (2864 <spi_init+0x5c>)
    2822:	4293      	cmp	r3, r2
    2824:	d106      	bne.n	2834 <spi_init+0x2c>
    2826:	4a10      	ldr	r2, [pc, #64]	; (2868 <spi_init+0x60>)
    2828:	4b0f      	ldr	r3, [pc, #60]	; (2868 <spi_init+0x60>)
    282a:	699b      	ldr	r3, [r3, #24]
    282c:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    2830:	6193      	str	r3, [r2, #24]
    2832:	e005      	b.n	2840 <spi_init+0x38>
    2834:	4a0c      	ldr	r2, [pc, #48]	; (2868 <spi_init+0x60>)
    2836:	4b0c      	ldr	r3, [pc, #48]	; (2868 <spi_init+0x60>)
    2838:	69db      	ldr	r3, [r3, #28]
    283a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    283e:	61d3      	str	r3, [r2, #28]
    2840:	68fb      	ldr	r3, [r7, #12]
    2842:	687a      	ldr	r2, [r7, #4]
    2844:	601a      	str	r2, [r3, #0]
    2846:	68b9      	ldr	r1, [r7, #8]
    2848:	68f8      	ldr	r0, [r7, #12]
    284a:	f7ff ff4f 	bl	26ec <spi_baudrate>
    284e:	68fb      	ldr	r3, [r7, #12]
    2850:	681b      	ldr	r3, [r3, #0]
    2852:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    2856:	68fb      	ldr	r3, [r7, #12]
    2858:	601a      	str	r2, [r3, #0]
    285a:	bf00      	nop
    285c:	3710      	adds	r7, #16
    285e:	46bd      	mov	sp, r7
    2860:	bd80      	pop	{r7, pc}
    2862:	bf00      	nop
    2864:	40013000 	.word	0x40013000
    2868:	40021000 	.word	0x40021000

0000286c <spi_send>:
    286c:	b480      	push	{r7}
    286e:	b085      	sub	sp, #20
    2870:	af00      	add	r7, sp, #0
    2872:	6078      	str	r0, [r7, #4]
    2874:	460b      	mov	r3, r1
    2876:	70fb      	strb	r3, [r7, #3]
    2878:	bf00      	nop
    287a:	687b      	ldr	r3, [r7, #4]
    287c:	689b      	ldr	r3, [r3, #8]
    287e:	f003 0302 	and.w	r3, r3, #2
    2882:	2b00      	cmp	r3, #0
    2884:	d0f9      	beq.n	287a <spi_send+0xe>
    2886:	78fa      	ldrb	r2, [r7, #3]
    2888:	687b      	ldr	r3, [r7, #4]
    288a:	60da      	str	r2, [r3, #12]
    288c:	bf00      	nop
    288e:	687b      	ldr	r3, [r7, #4]
    2890:	689b      	ldr	r3, [r3, #8]
    2892:	f003 0301 	and.w	r3, r3, #1
    2896:	2b00      	cmp	r3, #0
    2898:	d0f9      	beq.n	288e <spi_send+0x22>
    289a:	687b      	ldr	r3, [r7, #4]
    289c:	68db      	ldr	r3, [r3, #12]
    289e:	73fb      	strb	r3, [r7, #15]
    28a0:	bf00      	nop
    28a2:	3714      	adds	r7, #20
    28a4:	46bd      	mov	sp, r7
    28a6:	bc80      	pop	{r7}
    28a8:	4770      	bx	lr

000028aa <spi_receive>:
    28aa:	b480      	push	{r7}
    28ac:	b085      	sub	sp, #20
    28ae:	af00      	add	r7, sp, #0
    28b0:	6078      	str	r0, [r7, #4]
    28b2:	bf00      	nop
    28b4:	687b      	ldr	r3, [r7, #4]
    28b6:	689b      	ldr	r3, [r3, #8]
    28b8:	f003 0302 	and.w	r3, r3, #2
    28bc:	2b00      	cmp	r3, #0
    28be:	d0f9      	beq.n	28b4 <spi_receive+0xa>
    28c0:	687b      	ldr	r3, [r7, #4]
    28c2:	22ff      	movs	r2, #255	; 0xff
    28c4:	60da      	str	r2, [r3, #12]
    28c6:	bf00      	nop
    28c8:	687b      	ldr	r3, [r7, #4]
    28ca:	689b      	ldr	r3, [r3, #8]
    28cc:	f003 0301 	and.w	r3, r3, #1
    28d0:	2b00      	cmp	r3, #0
    28d2:	d0f9      	beq.n	28c8 <spi_receive+0x1e>
    28d4:	687b      	ldr	r3, [r7, #4]
    28d6:	68db      	ldr	r3, [r3, #12]
    28d8:	73fb      	strb	r3, [r7, #15]
    28da:	7bfb      	ldrb	r3, [r7, #15]
    28dc:	4618      	mov	r0, r3
    28de:	3714      	adds	r7, #20
    28e0:	46bd      	mov	sp, r7
    28e2:	bc80      	pop	{r7}
    28e4:	4770      	bx	lr

000028e6 <spi_send_block>:
    28e6:	b480      	push	{r7}
    28e8:	b087      	sub	sp, #28
    28ea:	af00      	add	r7, sp, #0
    28ec:	60f8      	str	r0, [r7, #12]
    28ee:	60b9      	str	r1, [r7, #8]
    28f0:	607a      	str	r2, [r7, #4]
    28f2:	e010      	b.n	2916 <spi_send_block+0x30>
    28f4:	68bb      	ldr	r3, [r7, #8]
    28f6:	1c5a      	adds	r2, r3, #1
    28f8:	60ba      	str	r2, [r7, #8]
    28fa:	781b      	ldrb	r3, [r3, #0]
    28fc:	461a      	mov	r2, r3
    28fe:	68fb      	ldr	r3, [r7, #12]
    2900:	60da      	str	r2, [r3, #12]
    2902:	bf00      	nop
    2904:	68fb      	ldr	r3, [r7, #12]
    2906:	689b      	ldr	r3, [r3, #8]
    2908:	f003 0302 	and.w	r3, r3, #2
    290c:	2b00      	cmp	r3, #0
    290e:	d0f9      	beq.n	2904 <spi_send_block+0x1e>
    2910:	687b      	ldr	r3, [r7, #4]
    2912:	3b01      	subs	r3, #1
    2914:	607b      	str	r3, [r7, #4]
    2916:	687b      	ldr	r3, [r7, #4]
    2918:	2b00      	cmp	r3, #0
    291a:	d1eb      	bne.n	28f4 <spi_send_block+0xe>
    291c:	bf00      	nop
    291e:	68fb      	ldr	r3, [r7, #12]
    2920:	689b      	ldr	r3, [r3, #8]
    2922:	f003 0380 	and.w	r3, r3, #128	; 0x80
    2926:	2b00      	cmp	r3, #0
    2928:	d1f9      	bne.n	291e <spi_send_block+0x38>
    292a:	68fb      	ldr	r3, [r7, #12]
    292c:	68db      	ldr	r3, [r3, #12]
    292e:	75fb      	strb	r3, [r7, #23]
    2930:	bf00      	nop
    2932:	371c      	adds	r7, #28
    2934:	46bd      	mov	sp, r7
    2936:	bc80      	pop	{r7}
    2938:	4770      	bx	lr

0000293a <spi_receive_block>:
    293a:	b480      	push	{r7}
    293c:	b085      	sub	sp, #20
    293e:	af00      	add	r7, sp, #0
    2940:	60f8      	str	r0, [r7, #12]
    2942:	60b9      	str	r1, [r7, #8]
    2944:	607a      	str	r2, [r7, #4]
    2946:	e013      	b.n	2970 <spi_receive_block+0x36>
    2948:	68fb      	ldr	r3, [r7, #12]
    294a:	2200      	movs	r2, #0
    294c:	60da      	str	r2, [r3, #12]
    294e:	bf00      	nop
    2950:	68fb      	ldr	r3, [r7, #12]
    2952:	689b      	ldr	r3, [r3, #8]
    2954:	f003 0301 	and.w	r3, r3, #1
    2958:	2b00      	cmp	r3, #0
    295a:	d0f9      	beq.n	2950 <spi_receive_block+0x16>
    295c:	68bb      	ldr	r3, [r7, #8]
    295e:	1c5a      	adds	r2, r3, #1
    2960:	60ba      	str	r2, [r7, #8]
    2962:	68fa      	ldr	r2, [r7, #12]
    2964:	68d2      	ldr	r2, [r2, #12]
    2966:	b2d2      	uxtb	r2, r2
    2968:	701a      	strb	r2, [r3, #0]
    296a:	687b      	ldr	r3, [r7, #4]
    296c:	3b01      	subs	r3, #1
    296e:	607b      	str	r3, [r7, #4]
    2970:	687b      	ldr	r3, [r7, #4]
    2972:	2b00      	cmp	r3, #0
    2974:	d1e8      	bne.n	2948 <spi_receive_block+0xe>
    2976:	bf00      	nop
    2978:	3714      	adds	r7, #20
    297a:	46bd      	mov	sp, r7
    297c:	bc80      	pop	{r7}
    297e:	4770      	bx	lr

00002980 <reset_mcu>:
    2980:	4b01      	ldr	r3, [pc, #4]	; (2988 <reset_mcu+0x8>)
    2982:	4a02      	ldr	r2, [pc, #8]	; (298c <reset_mcu+0xc>)
    2984:	601a      	str	r2, [r3, #0]
    2986:	bf00      	nop
    2988:	e000ed0c 	.word	0xe000ed0c
    298c:	05fa0004 	.word	0x05fa0004

00002990 <print_fault>:
    2990:	b580      	push	{r7, lr}
    2992:	b082      	sub	sp, #8
    2994:	af00      	add	r7, sp, #0
    2996:	6078      	str	r0, [r7, #4]
    2998:	6039      	str	r1, [r7, #0]
    299a:	6878      	ldr	r0, [r7, #4]
    299c:	f7fd ff78 	bl	890 <print>
    29a0:	4817      	ldr	r0, [pc, #92]	; (2a00 <print_fault+0x70>)
    29a2:	f7fd ff75 	bl	890 <print>
    29a6:	683b      	ldr	r3, [r7, #0]
    29a8:	2b00      	cmp	r3, #0
    29aa:	d003      	beq.n	29b4 <print_fault+0x24>
    29ac:	2100      	movs	r1, #0
    29ae:	6838      	ldr	r0, [r7, #0]
    29b0:	f7fe f91c 	bl	bec <print_hex>
    29b4:	200d      	movs	r0, #13
    29b6:	f7fd ff0b 	bl	7d0 <conout>
    29ba:	4812      	ldr	r0, [pc, #72]	; (2a04 <print_fault+0x74>)
    29bc:	f7fd ff68 	bl	890 <print>
    29c0:	4b11      	ldr	r3, [pc, #68]	; (2a08 <print_fault+0x78>)
    29c2:	681b      	ldr	r3, [r3, #0]
    29c4:	f3c3 430f 	ubfx	r3, r3, #16, #16
    29c8:	b29b      	uxth	r3, r3
    29ca:	2100      	movs	r1, #0
    29cc:	4618      	mov	r0, r3
    29ce:	f7fe f90d 	bl	bec <print_hex>
    29d2:	480e      	ldr	r0, [pc, #56]	; (2a0c <print_fault+0x7c>)
    29d4:	f7fd ff5c 	bl	890 <print>
    29d8:	4b0b      	ldr	r3, [pc, #44]	; (2a08 <print_fault+0x78>)
    29da:	681b      	ldr	r3, [r3, #0]
    29dc:	f3c3 2307 	ubfx	r3, r3, #8, #8
    29e0:	b2db      	uxtb	r3, r3
    29e2:	2100      	movs	r1, #0
    29e4:	4618      	mov	r0, r3
    29e6:	f7fe f901 	bl	bec <print_hex>
    29ea:	4809      	ldr	r0, [pc, #36]	; (2a10 <print_fault+0x80>)
    29ec:	f7fd ff50 	bl	890 <print>
    29f0:	4b05      	ldr	r3, [pc, #20]	; (2a08 <print_fault+0x78>)
    29f2:	681b      	ldr	r3, [r3, #0]
    29f4:	b2db      	uxtb	r3, r3
    29f6:	2100      	movs	r1, #0
    29f8:	4618      	mov	r0, r3
    29fa:	f7fe f8f7 	bl	bec <print_hex>
    29fe:	e7fe      	b.n	29fe <print_fault+0x6e>
    2a00:	0000338c 	.word	0x0000338c
    2a04:	00003398 	.word	0x00003398
    2a08:	e000ed28 	.word	0xe000ed28
    2a0c:	000033a0 	.word	0x000033a0
    2a10:	000033a8 	.word	0x000033a8

00002a14 <config_systicks>:
    2a14:	b580      	push	{r7, lr}
    2a16:	af00      	add	r7, sp, #0
    2a18:	2109      	movs	r1, #9
    2a1a:	f06f 000e 	mvn.w	r0, #14
    2a1e:	f7fe fff5 	bl	1a0c <set_int_priority>
    2a22:	4b04      	ldr	r3, [pc, #16]	; (2a34 <config_systicks+0x20>)
    2a24:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2a28:	601a      	str	r2, [r3, #0]
    2a2a:	4b03      	ldr	r3, [pc, #12]	; (2a38 <config_systicks+0x24>)
    2a2c:	2203      	movs	r2, #3
    2a2e:	601a      	str	r2, [r3, #0]
    2a30:	bf00      	nop
    2a32:	bd80      	pop	{r7, pc}
    2a34:	e000e014 	.word	0xe000e014
    2a38:	e000e010 	.word	0xe000e010

00002a3c <pause>:
    2a3c:	b480      	push	{r7}
    2a3e:	b083      	sub	sp, #12
    2a40:	af00      	add	r7, sp, #0
    2a42:	6078      	str	r0, [r7, #4]
    2a44:	4a06      	ldr	r2, [pc, #24]	; (2a60 <pause+0x24>)
    2a46:	687b      	ldr	r3, [r7, #4]
    2a48:	6013      	str	r3, [r2, #0]
    2a4a:	bf00      	nop
    2a4c:	4b04      	ldr	r3, [pc, #16]	; (2a60 <pause+0x24>)
    2a4e:	681b      	ldr	r3, [r3, #0]
    2a50:	2b00      	cmp	r3, #0
    2a52:	d1fb      	bne.n	2a4c <pause+0x10>
    2a54:	bf00      	nop
    2a56:	370c      	adds	r7, #12
    2a58:	46bd      	mov	sp, r7
    2a5a:	bc80      	pop	{r7}
    2a5c:	4770      	bx	lr
    2a5e:	bf00      	nop
    2a60:	20000474 	.word	0x20000474

00002a64 <STK_handler>:
    2a64:	b480      	push	{r7}
    2a66:	af00      	add	r7, sp, #0
    2a68:	4b08      	ldr	r3, [pc, #32]	; (2a8c <STK_handler+0x28>)
    2a6a:	681b      	ldr	r3, [r3, #0]
    2a6c:	3301      	adds	r3, #1
    2a6e:	4a07      	ldr	r2, [pc, #28]	; (2a8c <STK_handler+0x28>)
    2a70:	6013      	str	r3, [r2, #0]
    2a72:	4b07      	ldr	r3, [pc, #28]	; (2a90 <STK_handler+0x2c>)
    2a74:	681b      	ldr	r3, [r3, #0]
    2a76:	2b00      	cmp	r3, #0
    2a78:	d004      	beq.n	2a84 <STK_handler+0x20>
    2a7a:	4b05      	ldr	r3, [pc, #20]	; (2a90 <STK_handler+0x2c>)
    2a7c:	681b      	ldr	r3, [r3, #0]
    2a7e:	3b01      	subs	r3, #1
    2a80:	4a03      	ldr	r2, [pc, #12]	; (2a90 <STK_handler+0x2c>)
    2a82:	6013      	str	r3, [r2, #0]
    2a84:	bf00      	nop
    2a86:	46bd      	mov	sp, r7
    2a88:	bc80      	pop	{r7}
    2a8a:	4770      	bx	lr
    2a8c:	20000470 	.word	0x20000470
    2a90:	20000474 	.word	0x20000474

00002a94 <tvout_init>:
    2a94:	b580      	push	{r7, lr}
    2a96:	af00      	add	r7, sp, #0
    2a98:	220a      	movs	r2, #10
    2a9a:	2108      	movs	r1, #8
    2a9c:	481d      	ldr	r0, [pc, #116]	; (2b14 <tvout_init+0x80>)
    2a9e:	f7fe fd56 	bl	154e <config_pin>
    2aa2:	2202      	movs	r2, #2
    2aa4:	2109      	movs	r1, #9
    2aa6:	481b      	ldr	r0, [pc, #108]	; (2b14 <tvout_init+0x80>)
    2aa8:	f7fe fd51 	bl	154e <config_pin>
    2aac:	4b1a      	ldr	r3, [pc, #104]	; (2b18 <tvout_init+0x84>)
    2aae:	2278      	movs	r2, #120	; 0x78
    2ab0:	619a      	str	r2, [r3, #24]
    2ab2:	4b19      	ldr	r3, [pc, #100]	; (2b18 <tvout_init+0x84>)
    2ab4:	2201      	movs	r2, #1
    2ab6:	621a      	str	r2, [r3, #32]
    2ab8:	4b17      	ldr	r3, [pc, #92]	; (2b18 <tvout_init+0x84>)
    2aba:	2284      	movs	r2, #132	; 0x84
    2abc:	601a      	str	r2, [r3, #0]
    2abe:	4b16      	ldr	r3, [pc, #88]	; (2b18 <tvout_init+0x84>)
    2ac0:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2ac4:	62da      	str	r2, [r3, #44]	; 0x2c
    2ac6:	4b14      	ldr	r3, [pc, #80]	; (2b18 <tvout_init+0x84>)
    2ac8:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2acc:	635a      	str	r2, [r3, #52]	; 0x34
    2ace:	4a12      	ldr	r2, [pc, #72]	; (2b18 <tvout_init+0x84>)
    2ad0:	4b11      	ldr	r3, [pc, #68]	; (2b18 <tvout_init+0x84>)
    2ad2:	695b      	ldr	r3, [r3, #20]
    2ad4:	f043 0301 	orr.w	r3, r3, #1
    2ad8:	6153      	str	r3, [r2, #20]
    2ada:	4b0f      	ldr	r3, [pc, #60]	; (2b18 <tvout_init+0x84>)
    2adc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2ae0:	645a      	str	r2, [r3, #68]	; 0x44
    2ae2:	4b0d      	ldr	r3, [pc, #52]	; (2b18 <tvout_init+0x84>)
    2ae4:	2200      	movs	r2, #0
    2ae6:	611a      	str	r2, [r3, #16]
    2ae8:	4a0b      	ldr	r2, [pc, #44]	; (2b18 <tvout_init+0x84>)
    2aea:	4b0b      	ldr	r3, [pc, #44]	; (2b18 <tvout_init+0x84>)
    2aec:	68db      	ldr	r3, [r3, #12]
    2aee:	f043 0301 	orr.w	r3, r3, #1
    2af2:	60d3      	str	r3, [r2, #12]
    2af4:	2101      	movs	r1, #1
    2af6:	2019      	movs	r0, #25
    2af8:	f7fe ff88 	bl	1a0c <set_int_priority>
    2afc:	2019      	movs	r0, #25
    2afe:	f7fe fecb 	bl	1898 <enable_interrupt>
    2b02:	4a05      	ldr	r2, [pc, #20]	; (2b18 <tvout_init+0x84>)
    2b04:	4b04      	ldr	r3, [pc, #16]	; (2b18 <tvout_init+0x84>)
    2b06:	681b      	ldr	r3, [r3, #0]
    2b08:	f043 0301 	orr.w	r3, r3, #1
    2b0c:	6013      	str	r3, [r2, #0]
    2b0e:	bf00      	nop
    2b10:	bd80      	pop	{r7, pc}
    2b12:	bf00      	nop
    2b14:	40010800 	.word	0x40010800
    2b18:	40012c00 	.word	0x40012c00

00002b1c <TV_SYNC_handler>:
    2b1c:	4668      	mov	r0, sp
    2b1e:	f020 0107 	bic.w	r1, r0, #7
    2b22:	468d      	mov	sp, r1
    2b24:	b571      	push	{r0, r4, r5, r6, lr}
    2b26:	4a84      	ldr	r2, [pc, #528]	; (2d38 <TV_SYNC_handler+0x21c>)
    2b28:	8813      	ldrh	r3, [r2, #0]
    2b2a:	3301      	adds	r3, #1
    2b2c:	b29b      	uxth	r3, r3
    2b2e:	8013      	strh	r3, [r2, #0]
    2b30:	4b82      	ldr	r3, [pc, #520]	; (2d3c <TV_SYNC_handler+0x220>)
    2b32:	881b      	ldrh	r3, [r3, #0]
    2b34:	b29b      	uxth	r3, r3
    2b36:	2b06      	cmp	r3, #6
    2b38:	f200 8085 	bhi.w	2c46 <TV_SYNC_handler+0x12a>
    2b3c:	e8df f013 	tbh	[pc, r3, lsl #1]
    2b40:	00290007 	.word	0x00290007
    2b44:	006b0049 	.word	0x006b0049
    2b48:	0098008a 	.word	0x0098008a
    2b4c:	00d9      	.short	0x00d9
    2b4e:	4b7c      	ldr	r3, [pc, #496]	; (2d40 <TV_SYNC_handler+0x224>)
    2b50:	881b      	ldrh	r3, [r3, #0]
    2b52:	b29b      	uxth	r3, r3
    2b54:	b18b      	cbz	r3, 2b7a <TV_SYNC_handler+0x5e>
    2b56:	4a7a      	ldr	r2, [pc, #488]	; (2d40 <TV_SYNC_handler+0x224>)
    2b58:	8813      	ldrh	r3, [r2, #0]
    2b5a:	3301      	adds	r3, #1
    2b5c:	b29b      	uxth	r3, r3
    2b5e:	8013      	strh	r3, [r2, #0]
    2b60:	8813      	ldrh	r3, [r2, #0]
    2b62:	b29b      	uxth	r3, r3
    2b64:	2b06      	cmp	r3, #6
    2b66:	d16e      	bne.n	2c46 <TV_SYNC_handler+0x12a>
    2b68:	2200      	movs	r2, #0
    2b6a:	4b75      	ldr	r3, [pc, #468]	; (2d40 <TV_SYNC_handler+0x224>)
    2b6c:	801a      	strh	r2, [r3, #0]
    2b6e:	4a73      	ldr	r2, [pc, #460]	; (2d3c <TV_SYNC_handler+0x220>)
    2b70:	8813      	ldrh	r3, [r2, #0]
    2b72:	3301      	adds	r3, #1
    2b74:	b29b      	uxth	r3, r3
    2b76:	8013      	strh	r3, [r2, #0]
    2b78:	e065      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2b7a:	4b72      	ldr	r3, [pc, #456]	; (2d44 <TV_SYNC_handler+0x228>)
    2b7c:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2b80:	62da      	str	r2, [r3, #44]	; 0x2c
    2b82:	22a4      	movs	r2, #164	; 0xa4
    2b84:	635a      	str	r2, [r3, #52]	; 0x34
    2b86:	4a6e      	ldr	r2, [pc, #440]	; (2d40 <TV_SYNC_handler+0x224>)
    2b88:	8813      	ldrh	r3, [r2, #0]
    2b8a:	3301      	adds	r3, #1
    2b8c:	b29b      	uxth	r3, r3
    2b8e:	8013      	strh	r3, [r2, #0]
    2b90:	e059      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2b92:	4b6b      	ldr	r3, [pc, #428]	; (2d40 <TV_SYNC_handler+0x224>)
    2b94:	881b      	ldrh	r3, [r3, #0]
    2b96:	b29b      	uxth	r3, r3
    2b98:	b18b      	cbz	r3, 2bbe <TV_SYNC_handler+0xa2>
    2b9a:	4a69      	ldr	r2, [pc, #420]	; (2d40 <TV_SYNC_handler+0x224>)
    2b9c:	8813      	ldrh	r3, [r2, #0]
    2b9e:	3301      	adds	r3, #1
    2ba0:	b29b      	uxth	r3, r3
    2ba2:	8013      	strh	r3, [r2, #0]
    2ba4:	8813      	ldrh	r3, [r2, #0]
    2ba6:	b29b      	uxth	r3, r3
    2ba8:	2b06      	cmp	r3, #6
    2baa:	d14c      	bne.n	2c46 <TV_SYNC_handler+0x12a>
    2bac:	2200      	movs	r2, #0
    2bae:	4b64      	ldr	r3, [pc, #400]	; (2d40 <TV_SYNC_handler+0x224>)
    2bb0:	801a      	strh	r2, [r3, #0]
    2bb2:	4a62      	ldr	r2, [pc, #392]	; (2d3c <TV_SYNC_handler+0x220>)
    2bb4:	8813      	ldrh	r3, [r2, #0]
    2bb6:	3301      	adds	r3, #1
    2bb8:	b29b      	uxth	r3, r3
    2bba:	8013      	strh	r3, [r2, #0]
    2bbc:	e043      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2bbe:	f240 7294 	movw	r2, #1940	; 0x794
    2bc2:	4b60      	ldr	r3, [pc, #384]	; (2d44 <TV_SYNC_handler+0x228>)
    2bc4:	635a      	str	r2, [r3, #52]	; 0x34
    2bc6:	4a5e      	ldr	r2, [pc, #376]	; (2d40 <TV_SYNC_handler+0x224>)
    2bc8:	8813      	ldrh	r3, [r2, #0]
    2bca:	3301      	adds	r3, #1
    2bcc:	b29b      	uxth	r3, r3
    2bce:	8013      	strh	r3, [r2, #0]
    2bd0:	e039      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2bd2:	4b5b      	ldr	r3, [pc, #364]	; (2d40 <TV_SYNC_handler+0x224>)
    2bd4:	881b      	ldrh	r3, [r3, #0]
    2bd6:	b29b      	uxth	r3, r3
    2bd8:	b153      	cbz	r3, 2bf0 <TV_SYNC_handler+0xd4>
    2bda:	4b59      	ldr	r3, [pc, #356]	; (2d40 <TV_SYNC_handler+0x224>)
    2bdc:	881b      	ldrh	r3, [r3, #0]
    2bde:	b29b      	uxth	r3, r3
    2be0:	2b06      	cmp	r3, #6
    2be2:	d00e      	beq.n	2c02 <TV_SYNC_handler+0xe6>
    2be4:	4a56      	ldr	r2, [pc, #344]	; (2d40 <TV_SYNC_handler+0x224>)
    2be6:	8813      	ldrh	r3, [r2, #0]
    2be8:	3301      	adds	r3, #1
    2bea:	b29b      	uxth	r3, r3
    2bec:	8013      	strh	r3, [r2, #0]
    2bee:	e02a      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2bf0:	22a4      	movs	r2, #164	; 0xa4
    2bf2:	4b54      	ldr	r3, [pc, #336]	; (2d44 <TV_SYNC_handler+0x228>)
    2bf4:	635a      	str	r2, [r3, #52]	; 0x34
    2bf6:	4a52      	ldr	r2, [pc, #328]	; (2d40 <TV_SYNC_handler+0x224>)
    2bf8:	8813      	ldrh	r3, [r2, #0]
    2bfa:	3301      	adds	r3, #1
    2bfc:	b29b      	uxth	r3, r3
    2bfe:	8013      	strh	r3, [r2, #0]
    2c00:	e021      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2c02:	4a4e      	ldr	r2, [pc, #312]	; (2d3c <TV_SYNC_handler+0x220>)
    2c04:	8813      	ldrh	r3, [r2, #0]
    2c06:	3301      	adds	r3, #1
    2c08:	b29b      	uxth	r3, r3
    2c0a:	8013      	strh	r3, [r2, #0]
    2c0c:	4b4e      	ldr	r3, [pc, #312]	; (2d48 <TV_SYNC_handler+0x22c>)
    2c0e:	881b      	ldrh	r3, [r3, #0]
    2c10:	f013 0f01 	tst.w	r3, #1
    2c14:	d017      	beq.n	2c46 <TV_SYNC_handler+0x12a>
    2c16:	4b4b      	ldr	r3, [pc, #300]	; (2d44 <TV_SYNC_handler+0x228>)
    2c18:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2c1c:	62da      	str	r2, [r3, #44]	; 0x2c
    2c1e:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2c22:	635a      	str	r2, [r3, #52]	; 0x34
    2c24:	4a48      	ldr	r2, [pc, #288]	; (2d48 <TV_SYNC_handler+0x22c>)
    2c26:	8813      	ldrh	r3, [r2, #0]
    2c28:	f023 0302 	bic.w	r3, r3, #2
    2c2c:	041b      	lsls	r3, r3, #16
    2c2e:	0c1b      	lsrs	r3, r3, #16
    2c30:	8013      	strh	r3, [r2, #0]
    2c32:	4a41      	ldr	r2, [pc, #260]	; (2d38 <TV_SYNC_handler+0x21c>)
    2c34:	8813      	ldrh	r3, [r2, #0]
    2c36:	f3c3 038d 	ubfx	r3, r3, #2, #14
    2c3a:	8013      	strh	r3, [r2, #0]
    2c3c:	4a3f      	ldr	r2, [pc, #252]	; (2d3c <TV_SYNC_handler+0x220>)
    2c3e:	8813      	ldrh	r3, [r2, #0]
    2c40:	3301      	adds	r3, #1
    2c42:	b29b      	uxth	r3, r3
    2c44:	8013      	strh	r3, [r2, #0]
    2c46:	2200      	movs	r2, #0
    2c48:	4b3e      	ldr	r3, [pc, #248]	; (2d44 <TV_SYNC_handler+0x228>)
    2c4a:	611a      	str	r2, [r3, #16]
    2c4c:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    2c50:	4685      	mov	sp, r0
    2c52:	4770      	bx	lr
    2c54:	4b38      	ldr	r3, [pc, #224]	; (2d38 <TV_SYNC_handler+0x21c>)
    2c56:	881b      	ldrh	r3, [r3, #0]
    2c58:	b29b      	uxth	r3, r3
    2c5a:	2b14      	cmp	r3, #20
    2c5c:	d1f3      	bne.n	2c46 <TV_SYNC_handler+0x12a>
    2c5e:	4a37      	ldr	r2, [pc, #220]	; (2d3c <TV_SYNC_handler+0x220>)
    2c60:	8813      	ldrh	r3, [r2, #0]
    2c62:	3301      	adds	r3, #1
    2c64:	b29b      	uxth	r3, r3
    2c66:	8013      	strh	r3, [r2, #0]
    2c68:	2200      	movs	r2, #0
    2c6a:	4b35      	ldr	r3, [pc, #212]	; (2d40 <TV_SYNC_handler+0x224>)
    2c6c:	801a      	strh	r2, [r3, #0]
    2c6e:	e7ea      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2c70:	4a34      	ldr	r2, [pc, #208]	; (2d44 <TV_SYNC_handler+0x228>)
    2c72:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2c74:	f5b3 6f86 	cmp.w	r3, #1072	; 0x430
    2c78:	d9fb      	bls.n	2c72 <TV_SYNC_handler+0x156>
    2c7a:	4b31      	ldr	r3, [pc, #196]	; (2d40 <TV_SYNC_handler+0x224>)
    2c7c:	881b      	ldrh	r3, [r3, #0]
    2c7e:	b29b      	uxth	r3, r3
    2c80:	4a32      	ldr	r2, [pc, #200]	; (2d4c <TV_SYNC_handler+0x230>)
    2c82:	fba2 2303 	umull	r2, r3, r2, r3
    2c86:	085b      	lsrs	r3, r3, #1
    2c88:	011b      	lsls	r3, r3, #4
    2c8a:	4e31      	ldr	r6, [pc, #196]	; (2d50 <TV_SYNC_handler+0x234>)
    2c8c:	199d      	adds	r5, r3, r6
    2c8e:	3310      	adds	r3, #16
    2c90:	441e      	add	r6, r3
    2c92:	f04f 0e80 	mov.w	lr, #128	; 0x80
    2c96:	492f      	ldr	r1, [pc, #188]	; (2d54 <TV_SYNC_handler+0x238>)
    2c98:	e001      	b.n	2c9e <TV_SYNC_handler+0x182>
    2c9a:	42b5      	cmp	r5, r6
    2c9c:	d012      	beq.n	2cc4 <TV_SYNC_handler+0x1a8>
    2c9e:	f815 4b01 	ldrb.w	r4, [r5], #1
    2ca2:	2308      	movs	r3, #8
    2ca4:	4672      	mov	r2, lr
    2ca6:	4214      	tst	r4, r2
    2ca8:	68c8      	ldr	r0, [r1, #12]
    2caa:	bf14      	ite	ne
    2cac:	f440 7000 	orrne.w	r0, r0, #512	; 0x200
    2cb0:	f420 7000 	biceq.w	r0, r0, #512	; 0x200
    2cb4:	60c8      	str	r0, [r1, #12]
    2cb6:	bf00      	nop
    2cb8:	bf00      	nop
    2cba:	bf00      	nop
    2cbc:	0852      	lsrs	r2, r2, #1
    2cbe:	3b01      	subs	r3, #1
    2cc0:	d1f1      	bne.n	2ca6 <TV_SYNC_handler+0x18a>
    2cc2:	e7ea      	b.n	2c9a <TV_SYNC_handler+0x17e>
    2cc4:	4a23      	ldr	r2, [pc, #140]	; (2d54 <TV_SYNC_handler+0x238>)
    2cc6:	68d3      	ldr	r3, [r2, #12]
    2cc8:	f423 7300 	bic.w	r3, r3, #512	; 0x200
    2ccc:	60d3      	str	r3, [r2, #12]
    2cce:	4a1c      	ldr	r2, [pc, #112]	; (2d40 <TV_SYNC_handler+0x224>)
    2cd0:	8813      	ldrh	r3, [r2, #0]
    2cd2:	3301      	adds	r3, #1
    2cd4:	b29b      	uxth	r3, r3
    2cd6:	8013      	strh	r3, [r2, #0]
    2cd8:	8813      	ldrh	r3, [r2, #0]
    2cda:	b29b      	uxth	r3, r3
    2cdc:	2be4      	cmp	r3, #228	; 0xe4
    2cde:	d1b2      	bne.n	2c46 <TV_SYNC_handler+0x12a>
    2ce0:	2200      	movs	r2, #0
    2ce2:	4b17      	ldr	r3, [pc, #92]	; (2d40 <TV_SYNC_handler+0x224>)
    2ce4:	801a      	strh	r2, [r3, #0]
    2ce6:	4a15      	ldr	r2, [pc, #84]	; (2d3c <TV_SYNC_handler+0x220>)
    2ce8:	8813      	ldrh	r3, [r2, #0]
    2cea:	3301      	adds	r3, #1
    2cec:	b29b      	uxth	r3, r3
    2cee:	8013      	strh	r3, [r2, #0]
    2cf0:	e7a9      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2cf2:	4b11      	ldr	r3, [pc, #68]	; (2d38 <TV_SYNC_handler+0x21c>)
    2cf4:	881b      	ldrh	r3, [r3, #0]
    2cf6:	b29b      	uxth	r3, r3
    2cf8:	f240 1207 	movw	r2, #263	; 0x107
    2cfc:	4293      	cmp	r3, r2
    2cfe:	d1a2      	bne.n	2c46 <TV_SYNC_handler+0x12a>
    2d00:	4b11      	ldr	r3, [pc, #68]	; (2d48 <TV_SYNC_handler+0x22c>)
    2d02:	881b      	ldrh	r3, [r3, #0]
    2d04:	f013 0f01 	tst.w	r3, #1
    2d08:	d003      	beq.n	2d12 <TV_SYNC_handler+0x1f6>
    2d0a:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2d0e:	4b0d      	ldr	r3, [pc, #52]	; (2d44 <TV_SYNC_handler+0x228>)
    2d10:	62da      	str	r2, [r3, #44]	; 0x2c
    2d12:	4a0d      	ldr	r2, [pc, #52]	; (2d48 <TV_SYNC_handler+0x22c>)
    2d14:	8813      	ldrh	r3, [r2, #0]
    2d16:	b29b      	uxth	r3, r3
    2d18:	f083 0301 	eor.w	r3, r3, #1
    2d1c:	8013      	strh	r3, [r2, #0]
    2d1e:	8813      	ldrh	r3, [r2, #0]
    2d20:	b29b      	uxth	r3, r3
    2d22:	f043 0302 	orr.w	r3, r3, #2
    2d26:	8013      	strh	r3, [r2, #0]
    2d28:	2300      	movs	r3, #0
    2d2a:	4a03      	ldr	r2, [pc, #12]	; (2d38 <TV_SYNC_handler+0x21c>)
    2d2c:	8013      	strh	r3, [r2, #0]
    2d2e:	4a04      	ldr	r2, [pc, #16]	; (2d40 <TV_SYNC_handler+0x224>)
    2d30:	8013      	strh	r3, [r2, #0]
    2d32:	4a02      	ldr	r2, [pc, #8]	; (2d3c <TV_SYNC_handler+0x220>)
    2d34:	8013      	strh	r3, [r2, #0]
    2d36:	e786      	b.n	2c46 <TV_SYNC_handler+0x12a>
    2d38:	2000047e 	.word	0x2000047e
    2d3c:	20000478 	.word	0x20000478
    2d40:	2000047c 	.word	0x2000047c
    2d44:	40012c00 	.word	0x40012c00
    2d48:	2000047a 	.word	0x2000047a
    2d4c:	aaaaaaab 	.word	0xaaaaaaab
    2d50:	200004d4 	.word	0x200004d4
    2d54:	40010800 	.word	0x40010800

00002d58 <usart_config_port>:
    2d58:	b480      	push	{r7}
    2d5a:	b085      	sub	sp, #20
    2d5c:	af00      	add	r7, sp, #0
    2d5e:	60f8      	str	r0, [r7, #12]
    2d60:	60b9      	str	r1, [r7, #8]
    2d62:	607a      	str	r2, [r7, #4]
    2d64:	68fb      	ldr	r3, [r7, #12]
    2d66:	4a45      	ldr	r2, [pc, #276]	; (2e7c <usart_config_port+0x124>)
    2d68:	4293      	cmp	r3, r2
    2d6a:	d058      	beq.n	2e1e <usart_config_port+0xc6>
    2d6c:	4a44      	ldr	r2, [pc, #272]	; (2e80 <usart_config_port+0x128>)
    2d6e:	4293      	cmp	r3, r2
    2d70:	d003      	beq.n	2d7a <usart_config_port+0x22>
    2d72:	4a44      	ldr	r2, [pc, #272]	; (2e84 <usart_config_port+0x12c>)
    2d74:	4293      	cmp	r3, r2
    2d76:	d029      	beq.n	2dcc <usart_config_port+0x74>
    2d78:	e07a      	b.n	2e70 <usart_config_port+0x118>
    2d7a:	4a43      	ldr	r2, [pc, #268]	; (2e88 <usart_config_port+0x130>)
    2d7c:	4b42      	ldr	r3, [pc, #264]	; (2e88 <usart_config_port+0x130>)
    2d7e:	699b      	ldr	r3, [r3, #24]
    2d80:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2d84:	f043 0304 	orr.w	r3, r3, #4
    2d88:	6193      	str	r3, [r2, #24]
    2d8a:	687b      	ldr	r3, [r7, #4]
    2d8c:	2b01      	cmp	r3, #1
    2d8e:	d110      	bne.n	2db2 <usart_config_port+0x5a>
    2d90:	68bb      	ldr	r3, [r7, #8]
    2d92:	685b      	ldr	r3, [r3, #4]
    2d94:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    2d98:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
    2d9c:	68ba      	ldr	r2, [r7, #8]
    2d9e:	6053      	str	r3, [r2, #4]
    2da0:	68bb      	ldr	r3, [r7, #8]
    2da2:	685b      	ldr	r3, [r3, #4]
    2da4:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    2da8:	f043 03a0 	orr.w	r3, r3, #160	; 0xa0
    2dac:	68ba      	ldr	r2, [r7, #8]
    2dae:	6053      	str	r3, [r2, #4]
    2db0:	e05e      	b.n	2e70 <usart_config_port+0x118>
    2db2:	68bb      	ldr	r3, [r7, #8]
    2db4:	685b      	ldr	r3, [r3, #4]
    2db6:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
    2dba:	68bb      	ldr	r3, [r7, #8]
    2dbc:	605a      	str	r2, [r3, #4]
    2dbe:	68bb      	ldr	r3, [r7, #8]
    2dc0:	685b      	ldr	r3, [r3, #4]
    2dc2:	f043 02a0 	orr.w	r2, r3, #160	; 0xa0
    2dc6:	68bb      	ldr	r3, [r7, #8]
    2dc8:	605a      	str	r2, [r3, #4]
    2dca:	e051      	b.n	2e70 <usart_config_port+0x118>
    2dcc:	4a2e      	ldr	r2, [pc, #184]	; (2e88 <usart_config_port+0x130>)
    2dce:	4b2e      	ldr	r3, [pc, #184]	; (2e88 <usart_config_port+0x130>)
    2dd0:	69db      	ldr	r3, [r3, #28]
    2dd2:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
    2dd6:	61d3      	str	r3, [r2, #28]
    2dd8:	4a2b      	ldr	r2, [pc, #172]	; (2e88 <usart_config_port+0x130>)
    2dda:	4b2b      	ldr	r3, [pc, #172]	; (2e88 <usart_config_port+0x130>)
    2ddc:	699b      	ldr	r3, [r3, #24]
    2dde:	f043 0304 	orr.w	r3, r3, #4
    2de2:	6193      	str	r3, [r2, #24]
    2de4:	687b      	ldr	r3, [r7, #4]
    2de6:	2b01      	cmp	r3, #1
    2de8:	d10c      	bne.n	2e04 <usart_config_port+0xac>
    2dea:	68bb      	ldr	r3, [r7, #8]
    2dec:	681b      	ldr	r3, [r3, #0]
    2dee:	f423 627f 	bic.w	r2, r3, #4080	; 0xff0
    2df2:	68bb      	ldr	r3, [r7, #8]
    2df4:	601a      	str	r2, [r3, #0]
    2df6:	68bb      	ldr	r3, [r7, #8]
    2df8:	681b      	ldr	r3, [r3, #0]
    2dfa:	f443 622a 	orr.w	r2, r3, #2720	; 0xaa0
    2dfe:	68bb      	ldr	r3, [r7, #8]
    2e00:	601a      	str	r2, [r3, #0]
    2e02:	e035      	b.n	2e70 <usart_config_port+0x118>
    2e04:	68bb      	ldr	r3, [r7, #8]
    2e06:	681b      	ldr	r3, [r3, #0]
    2e08:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2e0c:	68bb      	ldr	r3, [r7, #8]
    2e0e:	601a      	str	r2, [r3, #0]
    2e10:	68bb      	ldr	r3, [r7, #8]
    2e12:	681b      	ldr	r3, [r3, #0]
    2e14:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2e18:	68bb      	ldr	r3, [r7, #8]
    2e1a:	601a      	str	r2, [r3, #0]
    2e1c:	e028      	b.n	2e70 <usart_config_port+0x118>
    2e1e:	4a1a      	ldr	r2, [pc, #104]	; (2e88 <usart_config_port+0x130>)
    2e20:	4b19      	ldr	r3, [pc, #100]	; (2e88 <usart_config_port+0x130>)
    2e22:	69db      	ldr	r3, [r3, #28]
    2e24:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
    2e28:	61d3      	str	r3, [r2, #28]
    2e2a:	4a17      	ldr	r2, [pc, #92]	; (2e88 <usart_config_port+0x130>)
    2e2c:	4b16      	ldr	r3, [pc, #88]	; (2e88 <usart_config_port+0x130>)
    2e2e:	699b      	ldr	r3, [r3, #24]
    2e30:	f043 0308 	orr.w	r3, r3, #8
    2e34:	6193      	str	r3, [r2, #24]
    2e36:	687b      	ldr	r3, [r7, #4]
    2e38:	2b01      	cmp	r3, #1
    2e3a:	d10c      	bne.n	2e56 <usart_config_port+0xfe>
    2e3c:	68bb      	ldr	r3, [r7, #8]
    2e3e:	685b      	ldr	r3, [r3, #4]
    2e40:	f023 220f 	bic.w	r2, r3, #251662080	; 0xf000f00
    2e44:	68bb      	ldr	r3, [r7, #8]
    2e46:	605a      	str	r2, [r3, #4]
    2e48:	68bb      	ldr	r3, [r7, #8]
    2e4a:	685b      	ldr	r3, [r3, #4]
    2e4c:	f043 220a 	orr.w	r2, r3, #167774720	; 0xa000a00
    2e50:	68bb      	ldr	r3, [r7, #8]
    2e52:	605a      	str	r2, [r3, #4]
    2e54:	e00b      	b.n	2e6e <usart_config_port+0x116>
    2e56:	68bb      	ldr	r3, [r7, #8]
    2e58:	685b      	ldr	r3, [r3, #4]
    2e5a:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2e5e:	68bb      	ldr	r3, [r7, #8]
    2e60:	605a      	str	r2, [r3, #4]
    2e62:	68bb      	ldr	r3, [r7, #8]
    2e64:	685b      	ldr	r3, [r3, #4]
    2e66:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2e6a:	68bb      	ldr	r3, [r7, #8]
    2e6c:	605a      	str	r2, [r3, #4]
    2e6e:	bf00      	nop
    2e70:	bf00      	nop
    2e72:	3714      	adds	r7, #20
    2e74:	46bd      	mov	sp, r7
    2e76:	bc80      	pop	{r7}
    2e78:	4770      	bx	lr
    2e7a:	bf00      	nop
    2e7c:	40004800 	.word	0x40004800
    2e80:	40013800 	.word	0x40013800
    2e84:	40004400 	.word	0x40004400
    2e88:	40021000 	.word	0x40021000

00002e8c <usart_set_baud>:
    2e8c:	b480      	push	{r7}
    2e8e:	b085      	sub	sp, #20
    2e90:	af00      	add	r7, sp, #0
    2e92:	6078      	str	r0, [r7, #4]
    2e94:	6039      	str	r1, [r7, #0]
    2e96:	687b      	ldr	r3, [r7, #4]
    2e98:	4a15      	ldr	r2, [pc, #84]	; (2ef0 <usart_set_baud+0x64>)
    2e9a:	4293      	cmp	r3, r2
    2e9c:	d110      	bne.n	2ec0 <usart_set_baud+0x34>
    2e9e:	4a15      	ldr	r2, [pc, #84]	; (2ef4 <usart_set_baud+0x68>)
    2ea0:	683b      	ldr	r3, [r7, #0]
    2ea2:	fbb2 f3f3 	udiv	r3, r2, r3
    2ea6:	091b      	lsrs	r3, r3, #4
    2ea8:	011b      	lsls	r3, r3, #4
    2eaa:	60fb      	str	r3, [r7, #12]
    2eac:	4a11      	ldr	r2, [pc, #68]	; (2ef4 <usart_set_baud+0x68>)
    2eae:	683b      	ldr	r3, [r7, #0]
    2eb0:	fbb2 f3f3 	udiv	r3, r2, r3
    2eb4:	f003 030f 	and.w	r3, r3, #15
    2eb8:	68fa      	ldr	r2, [r7, #12]
    2eba:	4313      	orrs	r3, r2
    2ebc:	60fb      	str	r3, [r7, #12]
    2ebe:	e00f      	b.n	2ee0 <usart_set_baud+0x54>
    2ec0:	4a0d      	ldr	r2, [pc, #52]	; (2ef8 <usart_set_baud+0x6c>)
    2ec2:	683b      	ldr	r3, [r7, #0]
    2ec4:	fbb2 f3f3 	udiv	r3, r2, r3
    2ec8:	091b      	lsrs	r3, r3, #4
    2eca:	011b      	lsls	r3, r3, #4
    2ecc:	60fb      	str	r3, [r7, #12]
    2ece:	4a0a      	ldr	r2, [pc, #40]	; (2ef8 <usart_set_baud+0x6c>)
    2ed0:	683b      	ldr	r3, [r7, #0]
    2ed2:	fbb2 f3f3 	udiv	r3, r2, r3
    2ed6:	f003 030f 	and.w	r3, r3, #15
    2eda:	68fa      	ldr	r2, [r7, #12]
    2edc:	4313      	orrs	r3, r2
    2ede:	60fb      	str	r3, [r7, #12]
    2ee0:	687b      	ldr	r3, [r7, #4]
    2ee2:	68fa      	ldr	r2, [r7, #12]
    2ee4:	609a      	str	r2, [r3, #8]
    2ee6:	bf00      	nop
    2ee8:	3714      	adds	r7, #20
    2eea:	46bd      	mov	sp, r7
    2eec:	bc80      	pop	{r7}
    2eee:	4770      	bx	lr
    2ef0:	40013800 	.word	0x40013800
    2ef4:	044463f4 	.word	0x044463f4
    2ef8:	022231fa 	.word	0x022231fa

00002efc <usart_comm_dir>:
    2efc:	b480      	push	{r7}
    2efe:	b083      	sub	sp, #12
    2f00:	af00      	add	r7, sp, #0
    2f02:	6078      	str	r0, [r7, #4]
    2f04:	6039      	str	r1, [r7, #0]
    2f06:	687b      	ldr	r3, [r7, #4]
    2f08:	68db      	ldr	r3, [r3, #12]
    2f0a:	f023 020c 	bic.w	r2, r3, #12
    2f0e:	687b      	ldr	r3, [r7, #4]
    2f10:	60da      	str	r2, [r3, #12]
    2f12:	687b      	ldr	r3, [r7, #4]
    2f14:	68da      	ldr	r2, [r3, #12]
    2f16:	683b      	ldr	r3, [r7, #0]
    2f18:	009b      	lsls	r3, r3, #2
    2f1a:	431a      	orrs	r2, r3
    2f1c:	687b      	ldr	r3, [r7, #4]
    2f1e:	60da      	str	r2, [r3, #12]
    2f20:	bf00      	nop
    2f22:	370c      	adds	r7, #12
    2f24:	46bd      	mov	sp, r7
    2f26:	bc80      	pop	{r7}
    2f28:	4770      	bx	lr

00002f2a <usart_open_channel>:
    2f2a:	b580      	push	{r7, lr}
    2f2c:	b084      	sub	sp, #16
    2f2e:	af00      	add	r7, sp, #0
    2f30:	60f8      	str	r0, [r7, #12]
    2f32:	60b9      	str	r1, [r7, #8]
    2f34:	607a      	str	r2, [r7, #4]
    2f36:	603b      	str	r3, [r7, #0]
    2f38:	68fb      	ldr	r3, [r7, #12]
    2f3a:	4a33      	ldr	r2, [pc, #204]	; (3008 <usart_open_channel+0xde>)
    2f3c:	4293      	cmp	r3, r2
    2f3e:	d020      	beq.n	2f82 <usart_open_channel+0x58>
    2f40:	4a32      	ldr	r2, [pc, #200]	; (300c <usart_open_channel+0xe2>)
    2f42:	4293      	cmp	r3, r2
    2f44:	d003      	beq.n	2f4e <usart_open_channel+0x24>
    2f46:	4a32      	ldr	r2, [pc, #200]	; (3010 <usart_open_channel+0xe6>)
    2f48:	4293      	cmp	r3, r2
    2f4a:	d00d      	beq.n	2f68 <usart_open_channel+0x3e>
    2f4c:	e026      	b.n	2f9c <usart_open_channel+0x72>
    2f4e:	69ba      	ldr	r2, [r7, #24]
    2f50:	4930      	ldr	r1, [pc, #192]	; (3014 <usart_open_channel+0xea>)
    2f52:	68f8      	ldr	r0, [r7, #12]
    2f54:	f7ff ff00 	bl	2d58 <usart_config_port>
    2f58:	2107      	movs	r1, #7
    2f5a:	2025      	movs	r0, #37	; 0x25
    2f5c:	f7fe fd56 	bl	1a0c <set_int_priority>
    2f60:	2025      	movs	r0, #37	; 0x25
    2f62:	f7fe fc99 	bl	1898 <enable_interrupt>
    2f66:	e019      	b.n	2f9c <usart_open_channel+0x72>
    2f68:	69ba      	ldr	r2, [r7, #24]
    2f6a:	492a      	ldr	r1, [pc, #168]	; (3014 <usart_open_channel+0xea>)
    2f6c:	68f8      	ldr	r0, [r7, #12]
    2f6e:	f7ff fef3 	bl	2d58 <usart_config_port>
    2f72:	2107      	movs	r1, #7
    2f74:	2026      	movs	r0, #38	; 0x26
    2f76:	f7fe fd49 	bl	1a0c <set_int_priority>
    2f7a:	2026      	movs	r0, #38	; 0x26
    2f7c:	f7fe fc8c 	bl	1898 <enable_interrupt>
    2f80:	e00c      	b.n	2f9c <usart_open_channel+0x72>
    2f82:	69ba      	ldr	r2, [r7, #24]
    2f84:	4924      	ldr	r1, [pc, #144]	; (3018 <usart_open_channel+0xee>)
    2f86:	68f8      	ldr	r0, [r7, #12]
    2f88:	f7ff fee6 	bl	2d58 <usart_config_port>
    2f8c:	2107      	movs	r1, #7
    2f8e:	2027      	movs	r0, #39	; 0x27
    2f90:	f7fe fd3c 	bl	1a0c <set_int_priority>
    2f94:	2027      	movs	r0, #39	; 0x27
    2f96:	f7fe fc7f 	bl	1898 <enable_interrupt>
    2f9a:	bf00      	nop
    2f9c:	69bb      	ldr	r3, [r7, #24]
    2f9e:	2b01      	cmp	r3, #1
    2fa0:	d103      	bne.n	2faa <usart_open_channel+0x80>
    2fa2:	68fb      	ldr	r3, [r7, #12]
    2fa4:	f44f 7240 	mov.w	r2, #768	; 0x300
    2fa8:	615a      	str	r2, [r3, #20]
    2faa:	6839      	ldr	r1, [r7, #0]
    2fac:	68f8      	ldr	r0, [r7, #12]
    2fae:	f7ff ffa5 	bl	2efc <usart_comm_dir>
    2fb2:	687b      	ldr	r3, [r7, #4]
    2fb4:	2b01      	cmp	r3, #1
    2fb6:	d00b      	beq.n	2fd0 <usart_open_channel+0xa6>
    2fb8:	2b01      	cmp	r3, #1
    2fba:	d302      	bcc.n	2fc2 <usart_open_channel+0x98>
    2fbc:	2b02      	cmp	r3, #2
    2fbe:	d00e      	beq.n	2fde <usart_open_channel+0xb4>
    2fc0:	e014      	b.n	2fec <usart_open_channel+0xc2>
    2fc2:	68fb      	ldr	r3, [r7, #12]
    2fc4:	68db      	ldr	r3, [r3, #12]
    2fc6:	f043 0220 	orr.w	r2, r3, #32
    2fca:	68fb      	ldr	r3, [r7, #12]
    2fcc:	60da      	str	r2, [r3, #12]
    2fce:	e00d      	b.n	2fec <usart_open_channel+0xc2>
    2fd0:	68fb      	ldr	r3, [r7, #12]
    2fd2:	68db      	ldr	r3, [r3, #12]
    2fd4:	f443 62e4 	orr.w	r2, r3, #1824	; 0x720
    2fd8:	68fb      	ldr	r3, [r7, #12]
    2fda:	60da      	str	r2, [r3, #12]
    2fdc:	e006      	b.n	2fec <usart_open_channel+0xc2>
    2fde:	68fb      	ldr	r3, [r7, #12]
    2fe0:	68db      	ldr	r3, [r3, #12]
    2fe2:	f443 62a4 	orr.w	r2, r3, #1312	; 0x520
    2fe6:	68fb      	ldr	r3, [r7, #12]
    2fe8:	60da      	str	r2, [r3, #12]
    2fea:	bf00      	nop
    2fec:	68b9      	ldr	r1, [r7, #8]
    2fee:	68f8      	ldr	r0, [r7, #12]
    2ff0:	f7ff ff4c 	bl	2e8c <usart_set_baud>
    2ff4:	68fb      	ldr	r3, [r7, #12]
    2ff6:	68db      	ldr	r3, [r3, #12]
    2ff8:	f443 5200 	orr.w	r2, r3, #8192	; 0x2000
    2ffc:	68fb      	ldr	r3, [r7, #12]
    2ffe:	60da      	str	r2, [r3, #12]
    3000:	bf00      	nop
    3002:	3710      	adds	r7, #16
    3004:	46bd      	mov	sp, r7
    3006:	bd80      	pop	{r7, pc}
    3008:	40004800 	.word	0x40004800
    300c:	40013800 	.word	0x40013800
    3010:	40004400 	.word	0x40004400
    3014:	40010800 	.word	0x40010800
    3018:	40010c00 	.word	0x40010c00

0000301c <usart_stat>:
    301c:	b480      	push	{r7}
    301e:	b083      	sub	sp, #12
    3020:	af00      	add	r7, sp, #0
    3022:	6078      	str	r0, [r7, #4]
    3024:	687b      	ldr	r3, [r7, #4]
    3026:	681b      	ldr	r3, [r3, #0]
    3028:	f003 0320 	and.w	r3, r3, #32
    302c:	4618      	mov	r0, r3
    302e:	370c      	adds	r7, #12
    3030:	46bd      	mov	sp, r7
    3032:	bc80      	pop	{r7}
    3034:	4770      	bx	lr

00003036 <usart_getc>:
    3036:	b480      	push	{r7}
    3038:	b083      	sub	sp, #12
    303a:	af00      	add	r7, sp, #0
    303c:	6078      	str	r0, [r7, #4]
    303e:	687b      	ldr	r3, [r7, #4]
    3040:	681b      	ldr	r3, [r3, #0]
    3042:	f003 0320 	and.w	r3, r3, #32
    3046:	2b00      	cmp	r3, #0
    3048:	d003      	beq.n	3052 <usart_getc+0x1c>
    304a:	687b      	ldr	r3, [r7, #4]
    304c:	685b      	ldr	r3, [r3, #4]
    304e:	b2db      	uxtb	r3, r3
    3050:	e000      	b.n	3054 <usart_getc+0x1e>
    3052:	2300      	movs	r3, #0
    3054:	4618      	mov	r0, r3
    3056:	370c      	adds	r7, #12
    3058:	46bd      	mov	sp, r7
    305a:	bc80      	pop	{r7}
    305c:	4770      	bx	lr

0000305e <usart_getc_dly>:
    305e:	b480      	push	{r7}
    3060:	b083      	sub	sp, #12
    3062:	af00      	add	r7, sp, #0
    3064:	6078      	str	r0, [r7, #4]
    3066:	6039      	str	r1, [r7, #0]
    3068:	4a0d      	ldr	r2, [pc, #52]	; (30a0 <usart_getc_dly+0x42>)
    306a:	683b      	ldr	r3, [r7, #0]
    306c:	6013      	str	r3, [r2, #0]
    306e:	bf00      	nop
    3070:	4b0b      	ldr	r3, [pc, #44]	; (30a0 <usart_getc_dly+0x42>)
    3072:	681b      	ldr	r3, [r3, #0]
    3074:	2b00      	cmp	r3, #0
    3076:	d005      	beq.n	3084 <usart_getc_dly+0x26>
    3078:	687b      	ldr	r3, [r7, #4]
    307a:	681b      	ldr	r3, [r3, #0]
    307c:	f003 0320 	and.w	r3, r3, #32
    3080:	2b00      	cmp	r3, #0
    3082:	d0f5      	beq.n	3070 <usart_getc_dly+0x12>
    3084:	4b06      	ldr	r3, [pc, #24]	; (30a0 <usart_getc_dly+0x42>)
    3086:	681b      	ldr	r3, [r3, #0]
    3088:	2b00      	cmp	r3, #0
    308a:	d003      	beq.n	3094 <usart_getc_dly+0x36>
    308c:	687b      	ldr	r3, [r7, #4]
    308e:	685b      	ldr	r3, [r3, #4]
    3090:	b2db      	uxtb	r3, r3
    3092:	e000      	b.n	3096 <usart_getc_dly+0x38>
    3094:	2300      	movs	r3, #0
    3096:	4618      	mov	r0, r3
    3098:	370c      	adds	r7, #12
    309a:	46bd      	mov	sp, r7
    309c:	bc80      	pop	{r7}
    309e:	4770      	bx	lr
    30a0:	20000474 	.word	0x20000474

000030a4 <usart_putc>:
    30a4:	b480      	push	{r7}
    30a6:	b083      	sub	sp, #12
    30a8:	af00      	add	r7, sp, #0
    30aa:	6078      	str	r0, [r7, #4]
    30ac:	460b      	mov	r3, r1
    30ae:	70fb      	strb	r3, [r7, #3]
    30b0:	bf00      	nop
    30b2:	687b      	ldr	r3, [r7, #4]
    30b4:	681b      	ldr	r3, [r3, #0]
    30b6:	f003 0380 	and.w	r3, r3, #128	; 0x80
    30ba:	2b00      	cmp	r3, #0
    30bc:	d0f9      	beq.n	30b2 <usart_putc+0xe>
    30be:	78fa      	ldrb	r2, [r7, #3]
    30c0:	687b      	ldr	r3, [r7, #4]
    30c2:	605a      	str	r2, [r3, #4]
    30c4:	bf00      	nop
    30c6:	370c      	adds	r7, #12
    30c8:	46bd      	mov	sp, r7
    30ca:	bc80      	pop	{r7}
    30cc:	4770      	bx	lr

000030ce <usart_cts>:
    30ce:	b480      	push	{r7}
    30d0:	b085      	sub	sp, #20
    30d2:	af00      	add	r7, sp, #0
    30d4:	6078      	str	r0, [r7, #4]
    30d6:	687b      	ldr	r3, [r7, #4]
    30d8:	4a10      	ldr	r2, [pc, #64]	; (311c <usart_cts+0x4e>)
    30da:	4293      	cmp	r3, r2
    30dc:	d012      	beq.n	3104 <usart_cts+0x36>
    30de:	4a10      	ldr	r2, [pc, #64]	; (3120 <usart_cts+0x52>)
    30e0:	4293      	cmp	r3, r2
    30e2:	d003      	beq.n	30ec <usart_cts+0x1e>
    30e4:	4a0f      	ldr	r2, [pc, #60]	; (3124 <usart_cts+0x56>)
    30e6:	4293      	cmp	r3, r2
    30e8:	d006      	beq.n	30f8 <usart_cts+0x2a>
    30ea:	e011      	b.n	3110 <usart_cts+0x42>
    30ec:	4b0e      	ldr	r3, [pc, #56]	; (3128 <usart_cts+0x5a>)
    30ee:	689b      	ldr	r3, [r3, #8]
    30f0:	f403 6300 	and.w	r3, r3, #2048	; 0x800
    30f4:	60fb      	str	r3, [r7, #12]
    30f6:	e00b      	b.n	3110 <usart_cts+0x42>
    30f8:	4b0b      	ldr	r3, [pc, #44]	; (3128 <usart_cts+0x5a>)
    30fa:	689b      	ldr	r3, [r3, #8]
    30fc:	f003 0301 	and.w	r3, r3, #1
    3100:	60fb      	str	r3, [r7, #12]
    3102:	e005      	b.n	3110 <usart_cts+0x42>
    3104:	4b09      	ldr	r3, [pc, #36]	; (312c <usart_cts+0x5e>)
    3106:	689b      	ldr	r3, [r3, #8]
    3108:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
    310c:	60fb      	str	r3, [r7, #12]
    310e:	bf00      	nop
    3110:	68fb      	ldr	r3, [r7, #12]
    3112:	4618      	mov	r0, r3
    3114:	3714      	adds	r7, #20
    3116:	46bd      	mov	sp, r7
    3118:	bc80      	pop	{r7}
    311a:	4770      	bx	lr
    311c:	40004800 	.word	0x40004800
    3120:	40013800 	.word	0x40013800
    3124:	40004400 	.word	0x40004400
    3128:	40010800 	.word	0x40010800
    312c:	40010c00 	.word	0x40010c00

00003130 <vt100_init>:
    3130:	b580      	push	{r7, lr}
    3132:	b082      	sub	sp, #8
    3134:	af02      	add	r7, sp, #8
    3136:	2301      	movs	r3, #1
    3138:	9300      	str	r3, [sp, #0]
    313a:	2303      	movs	r3, #3
    313c:	2200      	movs	r2, #0
    313e:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    3142:	4803      	ldr	r0, [pc, #12]	; (3150 <vt100_init+0x20>)
    3144:	f7ff fef1 	bl	2f2a <usart_open_channel>
    3148:	bf00      	nop
    314a:	46bd      	mov	sp, r7
    314c:	bd80      	pop	{r7, pc}
    314e:	bf00      	nop
    3150:	40004400 	.word	0x40004400

00003154 <vt_putc>:
    3154:	b580      	push	{r7, lr}
    3156:	b082      	sub	sp, #8
    3158:	af00      	add	r7, sp, #0
    315a:	4603      	mov	r3, r0
    315c:	71fb      	strb	r3, [r7, #7]
    315e:	79fb      	ldrb	r3, [r7, #7]
    3160:	4619      	mov	r1, r3
    3162:	4803      	ldr	r0, [pc, #12]	; (3170 <vt_putc+0x1c>)
    3164:	f7ff ff9e 	bl	30a4 <usart_putc>
    3168:	bf00      	nop
    316a:	3708      	adds	r7, #8
    316c:	46bd      	mov	sp, r7
    316e:	bd80      	pop	{r7, pc}
    3170:	40004400 	.word	0x40004400

00003174 <vt_del_back>:
    3174:	b580      	push	{r7, lr}
    3176:	af00      	add	r7, sp, #0
    3178:	2108      	movs	r1, #8
    317a:	4806      	ldr	r0, [pc, #24]	; (3194 <vt_del_back+0x20>)
    317c:	f7ff ff92 	bl	30a4 <usart_putc>
    3180:	2120      	movs	r1, #32
    3182:	4804      	ldr	r0, [pc, #16]	; (3194 <vt_del_back+0x20>)
    3184:	f7ff ff8e 	bl	30a4 <usart_putc>
    3188:	2108      	movs	r1, #8
    318a:	4802      	ldr	r0, [pc, #8]	; (3194 <vt_del_back+0x20>)
    318c:	f7ff ff8a 	bl	30a4 <usart_putc>
    3190:	bf00      	nop
    3192:	bd80      	pop	{r7, pc}
    3194:	40004400 	.word	0x40004400

00003198 <vt_esc_seq>:
    3198:	b580      	push	{r7, lr}
    319a:	af00      	add	r7, sp, #0
    319c:	211b      	movs	r1, #27
    319e:	4804      	ldr	r0, [pc, #16]	; (31b0 <vt_esc_seq+0x18>)
    31a0:	f7ff ff80 	bl	30a4 <usart_putc>
    31a4:	215b      	movs	r1, #91	; 0x5b
    31a6:	4802      	ldr	r0, [pc, #8]	; (31b0 <vt_esc_seq+0x18>)
    31a8:	f7ff ff7c 	bl	30a4 <usart_putc>
    31ac:	bf00      	nop
    31ae:	bd80      	pop	{r7, pc}
    31b0:	40004400 	.word	0x40004400

000031b4 <vt_cls>:
    31b4:	b580      	push	{r7, lr}
    31b6:	af00      	add	r7, sp, #0
    31b8:	f7ff ffee 	bl	3198 <vt_esc_seq>
    31bc:	2132      	movs	r1, #50	; 0x32
    31be:	4804      	ldr	r0, [pc, #16]	; (31d0 <vt_cls+0x1c>)
    31c0:	f7ff ff70 	bl	30a4 <usart_putc>
    31c4:	214a      	movs	r1, #74	; 0x4a
    31c6:	4802      	ldr	r0, [pc, #8]	; (31d0 <vt_cls+0x1c>)
    31c8:	f7ff ff6c 	bl	30a4 <usart_putc>
    31cc:	bf00      	nop
    31ce:	bd80      	pop	{r7, pc}
    31d0:	40004400 	.word	0x40004400

000031d4 <vt_clear_line>:
    31d4:	b580      	push	{r7, lr}
    31d6:	b082      	sub	sp, #8
    31d8:	af00      	add	r7, sp, #0
    31da:	6078      	str	r0, [r7, #4]
    31dc:	f7ff ffdc 	bl	3198 <vt_esc_seq>
    31e0:	2132      	movs	r1, #50	; 0x32
    31e2:	480b      	ldr	r0, [pc, #44]	; (3210 <vt_clear_line+0x3c>)
    31e4:	f7ff ff5e 	bl	30a4 <usart_putc>
    31e8:	214b      	movs	r1, #75	; 0x4b
    31ea:	4809      	ldr	r0, [pc, #36]	; (3210 <vt_clear_line+0x3c>)
    31ec:	f7ff ff5a 	bl	30a4 <usart_putc>
    31f0:	e006      	b.n	3200 <vt_clear_line+0x2c>
    31f2:	2108      	movs	r1, #8
    31f4:	4806      	ldr	r0, [pc, #24]	; (3210 <vt_clear_line+0x3c>)
    31f6:	f7ff ff55 	bl	30a4 <usart_putc>
    31fa:	687b      	ldr	r3, [r7, #4]
    31fc:	3b01      	subs	r3, #1
    31fe:	607b      	str	r3, [r7, #4]
    3200:	687b      	ldr	r3, [r7, #4]
    3202:	2b00      	cmp	r3, #0
    3204:	d1f5      	bne.n	31f2 <vt_clear_line+0x1e>
    3206:	bf00      	nop
    3208:	3708      	adds	r7, #8
    320a:	46bd      	mov	sp, r7
    320c:	bd80      	pop	{r7, pc}
    320e:	bf00      	nop
    3210:	40004400 	.word	0x40004400

00003214 <vt_ready>:
    3214:	b480      	push	{r7}
    3216:	af00      	add	r7, sp, #0
    3218:	4b06      	ldr	r3, [pc, #24]	; (3234 <vt_ready+0x20>)
    321a:	689b      	ldr	r3, [r3, #8]
    321c:	f003 0301 	and.w	r3, r3, #1
    3220:	2b00      	cmp	r3, #0
    3222:	bf0c      	ite	eq
    3224:	2301      	moveq	r3, #1
    3226:	2300      	movne	r3, #0
    3228:	b2db      	uxtb	r3, r3
    322a:	4618      	mov	r0, r3
    322c:	46bd      	mov	sp, r7
    322e:	bc80      	pop	{r7}
    3230:	4770      	bx	lr
    3232:	bf00      	nop
    3234:	40010800 	.word	0x40010800

00003238 <vt_rx_enable>:
    3238:	b480      	push	{r7}
    323a:	b085      	sub	sp, #20
    323c:	af00      	add	r7, sp, #0
    323e:	6078      	str	r0, [r7, #4]
    3240:	687b      	ldr	r3, [r7, #4]
    3242:	2b00      	cmp	r3, #0
    3244:	d006      	beq.n	3254 <vt_rx_enable+0x1c>
    3246:	4a0a      	ldr	r2, [pc, #40]	; (3270 <vt_rx_enable+0x38>)
    3248:	4b09      	ldr	r3, [pc, #36]	; (3270 <vt_rx_enable+0x38>)
    324a:	68db      	ldr	r3, [r3, #12]
    324c:	f043 0320 	orr.w	r3, r3, #32
    3250:	60d3      	str	r3, [r2, #12]
    3252:	e008      	b.n	3266 <vt_rx_enable+0x2e>
    3254:	4b06      	ldr	r3, [pc, #24]	; (3270 <vt_rx_enable+0x38>)
    3256:	685b      	ldr	r3, [r3, #4]
    3258:	73fb      	strb	r3, [r7, #15]
    325a:	4a05      	ldr	r2, [pc, #20]	; (3270 <vt_rx_enable+0x38>)
    325c:	4b04      	ldr	r3, [pc, #16]	; (3270 <vt_rx_enable+0x38>)
    325e:	68db      	ldr	r3, [r3, #12]
    3260:	f023 0320 	bic.w	r3, r3, #32
    3264:	60d3      	str	r3, [r2, #12]
    3266:	bf00      	nop
    3268:	3714      	adds	r7, #20
    326a:	46bd      	mov	sp, r7
    326c:	bc80      	pop	{r7}
    326e:	4770      	bx	lr
    3270:	40004400 	.word	0x40004400

00003274 <USART2_handler>:
    3274:	b580      	push	{r7, lr}
    3276:	af00      	add	r7, sp, #0
    3278:	4b09      	ldr	r3, [pc, #36]	; (32a0 <USART2_handler+0x2c>)
    327a:	781b      	ldrb	r3, [r3, #0]
    327c:	2b02      	cmp	r3, #2
    327e:	d10c      	bne.n	329a <USART2_handler+0x26>
    3280:	4b08      	ldr	r3, [pc, #32]	; (32a4 <USART2_handler+0x30>)
    3282:	681b      	ldr	r3, [r3, #0]
    3284:	f003 0320 	and.w	r3, r3, #32
    3288:	2b00      	cmp	r3, #0
    328a:	d006      	beq.n	329a <USART2_handler+0x26>
    328c:	4b04      	ldr	r3, [pc, #16]	; (32a0 <USART2_handler+0x2c>)
    328e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    3290:	4a04      	ldr	r2, [pc, #16]	; (32a4 <USART2_handler+0x30>)
    3292:	6852      	ldr	r2, [r2, #4]
    3294:	b2d2      	uxtb	r2, r2
    3296:	4610      	mov	r0, r2
    3298:	4798      	blx	r3
    329a:	bf00      	nop
    329c:	bd80      	pop	{r7, pc}
    329e:	bf00      	nop
    32a0:	20000480 	.word	0x20000480
    32a4:	40004400 	.word	0x40004400

000032a8 <vt_flow_ctrl>:
    32a8:	b580      	push	{r7, lr}
    32aa:	b082      	sub	sp, #8
    32ac:	af00      	add	r7, sp, #0
    32ae:	6078      	str	r0, [r7, #4]
    32b0:	687b      	ldr	r3, [r7, #4]
    32b2:	2b00      	cmp	r3, #0
    32b4:	d003      	beq.n	32be <vt_flow_ctrl+0x16>
    32b6:	2026      	movs	r0, #38	; 0x26
    32b8:	f7fe faee 	bl	1898 <enable_interrupt>
    32bc:	e002      	b.n	32c4 <vt_flow_ctrl+0x1c>
    32be:	2026      	movs	r0, #38	; 0x26
    32c0:	f7fe fb0e 	bl	18e0 <disable_interrupt>
    32c4:	bf00      	nop
    32c6:	3708      	adds	r7, #8
    32c8:	46bd      	mov	sp, r7
    32ca:	bd80      	pop	{r7, pc}
