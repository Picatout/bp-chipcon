
bp-chipcon.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <myvectors>:
       0:	00 50 00 20 31 01 00 00 59 02 00 00 d1 01 00 00     .P. 1...Y.......
      10:	5f 02 00 00 65 02 00 00 6b 02 00 00 8d 29 00 00     _...e...k....)..
      20:	8d 29 00 00 8d 29 00 00 8d 29 00 00 71 02 00 00     .)...)...)..q...
      30:	8d 29 00 00 8d 29 00 00 77 02 00 00 71 2a 00 00     .)...)..w...q*..
      40:	83 02 00 00 89 02 00 00 95 02 00 00 c5 26 00 00     .............&..
      50:	9b 02 00 00 a1 02 00 00 a7 02 00 00 ad 02 00 00     ................
      60:	b3 02 00 00 b9 02 00 00 bf 02 00 00 c5 02 00 00     ................
      70:	cb 02 00 00 8d 29 00 00 8d 29 00 00 d1 02 00 00     .....)...)......
      80:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..
      90:	8d 29 00 00 8d 29 00 00 8d 29 00 00 d7 02 00 00     .)...)...)......
      a0:	8d 29 00 00 29 2b 00 00 8d 29 00 00 8d 29 00 00     .)..)+...)...)..
      b0:	e3 02 00 00 e9 02 00 00 ef 02 00 00 8d 29 00 00     .............)..
      c0:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..
      d0:	8d 29 00 00 f5 02 00 00 81 32 00 00 01 03 00 00     .).......2......
      e0:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..
      f0:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..
     100:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..
     110:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..
     120:	8d 29 00 00 8d 29 00 00 8d 29 00 00 8d 29 00 00     .)...)...)...)..

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
     1b0:	00003800 	.word	0x00003800
     1b4:	20000000 	.word	0x20000000
     1b8:	2000005c 	.word	0x2000005c
     1bc:	200004d0 	.word	0x200004d0
     1c0:	20000a00 	.word	0x20000a00
     1c4:	200004cc 	.word	0x200004cc
     1c8:	00003800 	.word	0x00003800
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
     1f8:	f002 fbd0 	bl	299c <print_fault>
     1fc:	e01b      	b.n	236 <HARD_FAULT_handler+0x66>
     1fe:	4b11      	ldr	r3, [pc, #68]	; (244 <HARD_FAULT_handler+0x74>)
     200:	681b      	ldr	r3, [r3, #0]
     202:	f3c3 2307 	ubfx	r3, r3, #8, #8
     206:	b2db      	uxtb	r3, r3
     208:	2b00      	cmp	r3, #0
     20a:	d004      	beq.n	216 <HARD_FAULT_handler+0x46>
     20c:	6879      	ldr	r1, [r7, #4]
     20e:	480f      	ldr	r0, [pc, #60]	; (24c <HARD_FAULT_handler+0x7c>)
     210:	f002 fbc4 	bl	299c <print_fault>
     214:	e00f      	b.n	236 <HARD_FAULT_handler+0x66>
     216:	4b0b      	ldr	r3, [pc, #44]	; (244 <HARD_FAULT_handler+0x74>)
     218:	681b      	ldr	r3, [r3, #0]
     21a:	f3c3 430f 	ubfx	r3, r3, #16, #16
     21e:	b29b      	uxth	r3, r3
     220:	2b00      	cmp	r3, #0
     222:	d004      	beq.n	22e <HARD_FAULT_handler+0x5e>
     224:	6879      	ldr	r1, [r7, #4]
     226:	480a      	ldr	r0, [pc, #40]	; (250 <HARD_FAULT_handler+0x80>)
     228:	f002 fbb8 	bl	299c <print_fault>
     22c:	e003      	b.n	236 <HARD_FAULT_handler+0x66>
     22e:	6879      	ldr	r1, [r7, #4]
     230:	4808      	ldr	r0, [pc, #32]	; (254 <HARD_FAULT_handler+0x84>)
     232:	f002 fbb3 	bl	299c <print_fault>
     236:	bf00      	nop
     238:	370c      	adds	r7, #12
     23a:	46bd      	mov	sp, r7
     23c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
     240:	4685      	mov	sp, r0
     242:	4770      	bx	lr
     244:	e000ed28 	.word	0xe000ed28
     248:	000033c0 	.word	0x000033c0
     24c:	000033d8 	.word	0x000033d8
     250:	000033e4 	.word	0x000033e4
     254:	000033f4 	.word	0x000033f4

00000258 <NMI_handler>:
     258:	f002 fb98 	bl	298c <reset_mcu>
     25c:	bf00      	nop

0000025e <MM_FAULT_handler>:
     25e:	f002 fb95 	bl	298c <reset_mcu>
     262:	bf00      	nop

00000264 <BUS_FAULT_handler>:
     264:	f002 fb92 	bl	298c <reset_mcu>
     268:	bf00      	nop

0000026a <USAGE_FAULT_handler>:
     26a:	f002 fb8f 	bl	298c <reset_mcu>
     26e:	bf00      	nop

00000270 <SVC_handler>:
     270:	f002 fb8c 	bl	298c <reset_mcu>
     274:	bf00      	nop

00000276 <PENDSV_handler>:
     276:	f002 fb89 	bl	298c <reset_mcu>
     27a:	bf00      	nop
     27c:	f002 fb86 	bl	298c <reset_mcu>
     280:	bf00      	nop

00000282 <WWDG_handler>:
     282:	f002 fb83 	bl	298c <reset_mcu>
     286:	bf00      	nop

00000288 <PVD_handler>:
     288:	f002 fb80 	bl	298c <reset_mcu>
     28c:	bf00      	nop
     28e:	f002 fb7d 	bl	298c <reset_mcu>
     292:	bf00      	nop

00000294 <TAMPER_handler>:
     294:	f002 fb7a 	bl	298c <reset_mcu>
     298:	bf00      	nop

0000029a <FLASH_handler>:
     29a:	f002 fb77 	bl	298c <reset_mcu>
     29e:	bf00      	nop

000002a0 <RCC_handler>:
     2a0:	f002 fb74 	bl	298c <reset_mcu>
     2a4:	bf00      	nop

000002a6 <EXTI0_handler>:
     2a6:	f002 fb71 	bl	298c <reset_mcu>
     2aa:	bf00      	nop

000002ac <EXTI1_handler>:
     2ac:	f002 fb6e 	bl	298c <reset_mcu>
     2b0:	bf00      	nop

000002b2 <EXTI2_handler>:
     2b2:	f002 fb6b 	bl	298c <reset_mcu>
     2b6:	bf00      	nop

000002b8 <EXTI3_handler>:
     2b8:	f002 fb68 	bl	298c <reset_mcu>
     2bc:	bf00      	nop

000002be <EXTI4_handler>:
     2be:	f002 fb65 	bl	298c <reset_mcu>
     2c2:	bf00      	nop

000002c4 <DMA1CH1_handler>:
     2c4:	f002 fb62 	bl	298c <reset_mcu>
     2c8:	bf00      	nop

000002ca <DMA1CH2_handler>:
     2ca:	f002 fb5f 	bl	298c <reset_mcu>
     2ce:	bf00      	nop

000002d0 <DMA1CH5_handler>:
     2d0:	f002 fb5c 	bl	298c <reset_mcu>
     2d4:	bf00      	nop

000002d6 <EXTI9_5_handler>:
     2d6:	f002 fb59 	bl	298c <reset_mcu>
     2da:	bf00      	nop

000002dc <TIM1_CC_handler>:
     2dc:	f002 fb56 	bl	298c <reset_mcu>
     2e0:	bf00      	nop

000002e2 <TIM2_handler>:
     2e2:	f002 fb53 	bl	298c <reset_mcu>
     2e6:	bf00      	nop

000002e8 <TIM3_handler>:
     2e8:	f002 fb50 	bl	298c <reset_mcu>
     2ec:	bf00      	nop

000002ee <TIM4_handler>:
     2ee:	f002 fb4d 	bl	298c <reset_mcu>
     2f2:	bf00      	nop

000002f4 <USART1_handler>:
     2f4:	f002 fb4a 	bl	298c <reset_mcu>
     2f8:	bf00      	nop
     2fa:	f002 fb47 	bl	298c <reset_mcu>
     2fe:	bf00      	nop

00000300 <USART3_handler>:
     300:	f002 fb44 	bl	298c <reset_mcu>
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
     5ae:	f002 fdd7 	bl	3160 <vt_putc>
     5b2:	f7ff ffdf 	bl	574 <serial_cursor_right>
     5b6:	bf00      	nop
     5b8:	3708      	adds	r7, #8
     5ba:	46bd      	mov	sp, r7
     5bc:	bd80      	pop	{r7, pc}

000005be <serial_crlf>:
     5be:	b580      	push	{r7, lr}
     5c0:	af00      	add	r7, sp, #0
     5c2:	200d      	movs	r0, #13
     5c4:	f002 fdcc 	bl	3160 <vt_putc>
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
     5dc:	f002 fe00 	bl	31e0 <vt_clear_line>
     5e0:	bf00      	nop
     5e2:	bd80      	pop	{r7, pc}
     5e4:	20000060 	.word	0x20000060

000005e8 <serial_clear_screen>:
     5e8:	b580      	push	{r7, lr}
     5ea:	af00      	add	r7, sp, #0
     5ec:	f002 fde8 	bl	31c0 <vt_cls>
     5f0:	f7ff ff70 	bl	4d4 <cursor_home>
     5f4:	bf00      	nop
     5f6:	bd80      	pop	{r7, pc}

000005f8 <serial_flow_ctrl>:
     5f8:	b580      	push	{r7, lr}
     5fa:	b082      	sub	sp, #8
     5fc:	af00      	add	r7, sp, #0
     5fe:	6078      	str	r0, [r7, #4]
     600:	6878      	ldr	r0, [r7, #4]
     602:	f002 fe57 	bl	32b4 <vt_flow_ctrl>
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
     680:	f001 f96e 	bl	1960 <get_active>
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
     700:	f001 f8f4 	bl	18ec <disable_interrupt>
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
     744:	f001 f8ae 	bl	18a4 <enable_interrupt>
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
     768:	00003181 	.word	0x00003181
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
    1816:	f001 f903 	bl	2a20 <config_systicks>
    181a:	4b1f      	ldr	r3, [pc, #124]	; (1898 <main+0x8c>)
    181c:	f640 021d 	movw	r2, #2077	; 0x81d
    1820:	619a      	str	r2, [r3, #24]
    1822:	2206      	movs	r2, #6
    1824:	210d      	movs	r1, #13
    1826:	481d      	ldr	r0, [pc, #116]	; (189c <main+0x90>)
    1828:	f7ff fe91 	bl	154e <config_pin>
    182c:	f001 fc86 	bl	313c <vt100_init>
    1830:	2002      	movs	r0, #2
    1832:	f7fe ffa1 	bl	778 <console_init>
    1836:	f001 f933 	bl	2aa0 <tvout_init>
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
    1870:	2300      	movs	r3, #0
    1872:	607b      	str	r3, [r7, #4]
    1874:	4b0a      	ldr	r3, [pc, #40]	; (18a0 <main+0x94>)
    1876:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
    187a:	601a      	str	r2, [r3, #0]
    187c:	e002      	b.n	1884 <main+0x78>
    187e:	687b      	ldr	r3, [r7, #4]
    1880:	3301      	adds	r3, #1
    1882:	607b      	str	r3, [r7, #4]
    1884:	4b06      	ldr	r3, [pc, #24]	; (18a0 <main+0x94>)
    1886:	681b      	ldr	r3, [r3, #0]
    1888:	2b00      	cmp	r3, #0
    188a:	d1f8      	bne.n	187e <main+0x72>
    188c:	210a      	movs	r1, #10
    188e:	6878      	ldr	r0, [r7, #4]
    1890:	f7ff f93c 	bl	b0c <print_int>
    1894:	e7ec      	b.n	1870 <main+0x64>
    1896:	bf00      	nop
    1898:	40021000 	.word	0x40021000
    189c:	40011000 	.word	0x40011000
    18a0:	20000474 	.word	0x20000474

000018a4 <enable_interrupt>:
    18a4:	b480      	push	{r7}
    18a6:	b083      	sub	sp, #12
    18a8:	af00      	add	r7, sp, #0
    18aa:	6078      	str	r0, [r7, #4]
    18ac:	687b      	ldr	r3, [r7, #4]
    18ae:	2b3b      	cmp	r3, #59	; 0x3b
    18b0:	dc17      	bgt.n	18e2 <enable_interrupt+0x3e>
    18b2:	687b      	ldr	r3, [r7, #4]
    18b4:	115b      	asrs	r3, r3, #5
    18b6:	009b      	lsls	r3, r3, #2
    18b8:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    18bc:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
    18c0:	687a      	ldr	r2, [r7, #4]
    18c2:	1152      	asrs	r2, r2, #5
    18c4:	0092      	lsls	r2, r2, #2
    18c6:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    18ca:	f502 4261 	add.w	r2, r2, #57600	; 0xe100
    18ce:	6812      	ldr	r2, [r2, #0]
    18d0:	6879      	ldr	r1, [r7, #4]
    18d2:	f001 011f 	and.w	r1, r1, #31
    18d6:	2001      	movs	r0, #1
    18d8:	fa00 f101 	lsl.w	r1, r0, r1
    18dc:	430a      	orrs	r2, r1
    18de:	601a      	str	r2, [r3, #0]
    18e0:	e000      	b.n	18e4 <enable_interrupt+0x40>
    18e2:	bf00      	nop
    18e4:	370c      	adds	r7, #12
    18e6:	46bd      	mov	sp, r7
    18e8:	bc80      	pop	{r7}
    18ea:	4770      	bx	lr

000018ec <disable_interrupt>:
    18ec:	b480      	push	{r7}
    18ee:	b083      	sub	sp, #12
    18f0:	af00      	add	r7, sp, #0
    18f2:	6078      	str	r0, [r7, #4]
    18f4:	687b      	ldr	r3, [r7, #4]
    18f6:	2b3b      	cmp	r3, #59	; 0x3b
    18f8:	dc0c      	bgt.n	1914 <disable_interrupt+0x28>
    18fa:	687b      	ldr	r3, [r7, #4]
    18fc:	115b      	asrs	r3, r3, #5
    18fe:	009a      	lsls	r2, r3, #2
    1900:	4b07      	ldr	r3, [pc, #28]	; (1920 <disable_interrupt+0x34>)
    1902:	4413      	add	r3, r2
    1904:	687a      	ldr	r2, [r7, #4]
    1906:	f002 021f 	and.w	r2, r2, #31
    190a:	2101      	movs	r1, #1
    190c:	fa01 f202 	lsl.w	r2, r1, r2
    1910:	601a      	str	r2, [r3, #0]
    1912:	e000      	b.n	1916 <disable_interrupt+0x2a>
    1914:	bf00      	nop
    1916:	370c      	adds	r7, #12
    1918:	46bd      	mov	sp, r7
    191a:	bc80      	pop	{r7}
    191c:	4770      	bx	lr
    191e:	bf00      	nop
    1920:	e000e180 	.word	0xe000e180

00001924 <get_pending>:
    1924:	b480      	push	{r7}
    1926:	b083      	sub	sp, #12
    1928:	af00      	add	r7, sp, #0
    192a:	6078      	str	r0, [r7, #4]
    192c:	687b      	ldr	r3, [r7, #4]
    192e:	2b3b      	cmp	r3, #59	; 0x3b
    1930:	dd01      	ble.n	1936 <get_pending+0x12>
    1932:	2300      	movs	r3, #0
    1934:	e00c      	b.n	1950 <get_pending+0x2c>
    1936:	687b      	ldr	r3, [r7, #4]
    1938:	115b      	asrs	r3, r3, #5
    193a:	009a      	lsls	r2, r3, #2
    193c:	4b07      	ldr	r3, [pc, #28]	; (195c <get_pending+0x38>)
    193e:	4413      	add	r3, r2
    1940:	681b      	ldr	r3, [r3, #0]
    1942:	687a      	ldr	r2, [r7, #4]
    1944:	f002 021f 	and.w	r2, r2, #31
    1948:	2101      	movs	r1, #1
    194a:	fa01 f202 	lsl.w	r2, r1, r2
    194e:	4013      	ands	r3, r2
    1950:	4618      	mov	r0, r3
    1952:	370c      	adds	r7, #12
    1954:	46bd      	mov	sp, r7
    1956:	bc80      	pop	{r7}
    1958:	4770      	bx	lr
    195a:	bf00      	nop
    195c:	e000e280 	.word	0xe000e280

00001960 <get_active>:
    1960:	b480      	push	{r7}
    1962:	b083      	sub	sp, #12
    1964:	af00      	add	r7, sp, #0
    1966:	6078      	str	r0, [r7, #4]
    1968:	687b      	ldr	r3, [r7, #4]
    196a:	2b3b      	cmp	r3, #59	; 0x3b
    196c:	dd01      	ble.n	1972 <get_active+0x12>
    196e:	2300      	movs	r3, #0
    1970:	e00e      	b.n	1990 <get_active+0x30>
    1972:	687b      	ldr	r3, [r7, #4]
    1974:	115b      	asrs	r3, r3, #5
    1976:	009b      	lsls	r3, r3, #2
    1978:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    197c:	f503 4363 	add.w	r3, r3, #58112	; 0xe300
    1980:	681b      	ldr	r3, [r3, #0]
    1982:	687a      	ldr	r2, [r7, #4]
    1984:	f002 021f 	and.w	r2, r2, #31
    1988:	2101      	movs	r1, #1
    198a:	fa01 f202 	lsl.w	r2, r1, r2
    198e:	4013      	ands	r3, r2
    1990:	4618      	mov	r0, r3
    1992:	370c      	adds	r7, #12
    1994:	46bd      	mov	sp, r7
    1996:	bc80      	pop	{r7}
    1998:	4770      	bx	lr

0000199a <set_pending>:
    199a:	b480      	push	{r7}
    199c:	b083      	sub	sp, #12
    199e:	af00      	add	r7, sp, #0
    19a0:	6078      	str	r0, [r7, #4]
    19a2:	687b      	ldr	r3, [r7, #4]
    19a4:	2b3b      	cmp	r3, #59	; 0x3b
    19a6:	dc17      	bgt.n	19d8 <set_pending+0x3e>
    19a8:	687b      	ldr	r3, [r7, #4]
    19aa:	115b      	asrs	r3, r3, #5
    19ac:	009b      	lsls	r3, r3, #2
    19ae:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    19b2:	f503 4362 	add.w	r3, r3, #57856	; 0xe200
    19b6:	687a      	ldr	r2, [r7, #4]
    19b8:	1152      	asrs	r2, r2, #5
    19ba:	0092      	lsls	r2, r2, #2
    19bc:	f102 4260 	add.w	r2, r2, #3758096384	; 0xe0000000
    19c0:	f502 4262 	add.w	r2, r2, #57856	; 0xe200
    19c4:	6812      	ldr	r2, [r2, #0]
    19c6:	6879      	ldr	r1, [r7, #4]
    19c8:	f001 011f 	and.w	r1, r1, #31
    19cc:	2001      	movs	r0, #1
    19ce:	fa00 f101 	lsl.w	r1, r0, r1
    19d2:	430a      	orrs	r2, r1
    19d4:	601a      	str	r2, [r3, #0]
    19d6:	e000      	b.n	19da <set_pending+0x40>
    19d8:	bf00      	nop
    19da:	370c      	adds	r7, #12
    19dc:	46bd      	mov	sp, r7
    19de:	bc80      	pop	{r7}
    19e0:	4770      	bx	lr

000019e2 <clear_pending>:
    19e2:	b480      	push	{r7}
    19e4:	b083      	sub	sp, #12
    19e6:	af00      	add	r7, sp, #0
    19e8:	6078      	str	r0, [r7, #4]
    19ea:	687b      	ldr	r3, [r7, #4]
    19ec:	2b3b      	cmp	r3, #59	; 0x3b
    19ee:	dc0c      	bgt.n	1a0a <clear_pending+0x28>
    19f0:	687b      	ldr	r3, [r7, #4]
    19f2:	115b      	asrs	r3, r3, #5
    19f4:	009a      	lsls	r2, r3, #2
    19f6:	4b07      	ldr	r3, [pc, #28]	; (1a14 <clear_pending+0x32>)
    19f8:	4413      	add	r3, r2
    19fa:	687a      	ldr	r2, [r7, #4]
    19fc:	f002 021f 	and.w	r2, r2, #31
    1a00:	2101      	movs	r1, #1
    1a02:	fa01 f202 	lsl.w	r2, r1, r2
    1a06:	601a      	str	r2, [r3, #0]
    1a08:	e000      	b.n	1a0c <clear_pending+0x2a>
    1a0a:	bf00      	nop
    1a0c:	370c      	adds	r7, #12
    1a0e:	46bd      	mov	sp, r7
    1a10:	bc80      	pop	{r7}
    1a12:	4770      	bx	lr
    1a14:	e000e280 	.word	0xe000e280

00001a18 <set_int_priority>:
    1a18:	b480      	push	{r7}
    1a1a:	b083      	sub	sp, #12
    1a1c:	af00      	add	r7, sp, #0
    1a1e:	6078      	str	r0, [r7, #4]
    1a20:	6039      	str	r1, [r7, #0]
    1a22:	687b      	ldr	r3, [r7, #4]
    1a24:	2b00      	cmp	r3, #0
    1a26:	db0d      	blt.n	1a44 <set_int_priority+0x2c>
    1a28:	687b      	ldr	r3, [r7, #4]
    1a2a:	2b3b      	cmp	r3, #59	; 0x3b
    1a2c:	dc0a      	bgt.n	1a44 <set_int_priority+0x2c>
    1a2e:	687b      	ldr	r3, [r7, #4]
    1a30:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
    1a34:	f503 4364 	add.w	r3, r3, #58368	; 0xe400
    1a38:	683a      	ldr	r2, [r7, #0]
    1a3a:	b2d2      	uxtb	r2, r2
    1a3c:	0112      	lsls	r2, r2, #4
    1a3e:	b2d2      	uxtb	r2, r2
    1a40:	701a      	strb	r2, [r3, #0]
    1a42:	e012      	b.n	1a6a <set_int_priority+0x52>
    1a44:	687b      	ldr	r3, [r7, #4]
    1a46:	2b00      	cmp	r3, #0
    1a48:	da0f      	bge.n	1a6a <set_int_priority+0x52>
    1a4a:	687b      	ldr	r3, [r7, #4]
    1a4c:	f113 0f0f 	cmn.w	r3, #15
    1a50:	db0b      	blt.n	1a6a <set_int_priority+0x52>
    1a52:	687a      	ldr	r2, [r7, #4]
    1a54:	f06f 0303 	mvn.w	r3, #3
    1a58:	1a9b      	subs	r3, r3, r2
    1a5a:	461a      	mov	r2, r3
    1a5c:	4b05      	ldr	r3, [pc, #20]	; (1a74 <set_int_priority+0x5c>)
    1a5e:	4413      	add	r3, r2
    1a60:	683a      	ldr	r2, [r7, #0]
    1a62:	b2d2      	uxtb	r2, r2
    1a64:	0112      	lsls	r2, r2, #4
    1a66:	b2d2      	uxtb	r2, r2
    1a68:	701a      	strb	r2, [r3, #0]
    1a6a:	bf00      	nop
    1a6c:	370c      	adds	r7, #12
    1a6e:	46bd      	mov	sp, r7
    1a70:	bc80      	pop	{r7}
    1a72:	4770      	bx	lr
    1a74:	e000ed18 	.word	0xe000ed18

00001a78 <leap_year>:
    1a78:	b480      	push	{r7}
    1a7a:	b083      	sub	sp, #12
    1a7c:	af00      	add	r7, sp, #0
    1a7e:	6078      	str	r0, [r7, #4]
    1a80:	687b      	ldr	r3, [r7, #4]
    1a82:	f003 0303 	and.w	r3, r3, #3
    1a86:	2b00      	cmp	r3, #0
    1a88:	d11a      	bne.n	1ac0 <leap_year+0x48>
    1a8a:	687a      	ldr	r2, [r7, #4]
    1a8c:	4b0f      	ldr	r3, [pc, #60]	; (1acc <leap_year+0x54>)
    1a8e:	fba3 1302 	umull	r1, r3, r3, r2
    1a92:	095b      	lsrs	r3, r3, #5
    1a94:	2164      	movs	r1, #100	; 0x64
    1a96:	fb01 f303 	mul.w	r3, r1, r3
    1a9a:	1ad3      	subs	r3, r2, r3
    1a9c:	2b00      	cmp	r3, #0
    1a9e:	d10d      	bne.n	1abc <leap_year+0x44>
    1aa0:	687a      	ldr	r2, [r7, #4]
    1aa2:	4b0a      	ldr	r3, [pc, #40]	; (1acc <leap_year+0x54>)
    1aa4:	fba3 1302 	umull	r1, r3, r3, r2
    1aa8:	09db      	lsrs	r3, r3, #7
    1aaa:	f44f 71c8 	mov.w	r1, #400	; 0x190
    1aae:	fb01 f303 	mul.w	r3, r1, r3
    1ab2:	1ad3      	subs	r3, r2, r3
    1ab4:	2b00      	cmp	r3, #0
    1ab6:	d001      	beq.n	1abc <leap_year+0x44>
    1ab8:	2300      	movs	r3, #0
    1aba:	e002      	b.n	1ac2 <leap_year+0x4a>
    1abc:	2301      	movs	r3, #1
    1abe:	e000      	b.n	1ac2 <leap_year+0x4a>
    1ac0:	2300      	movs	r3, #0
    1ac2:	4618      	mov	r0, r3
    1ac4:	370c      	adds	r7, #12
    1ac6:	46bd      	mov	sp, r7
    1ac8:	bc80      	pop	{r7}
    1aca:	4770      	bx	lr
    1acc:	51eb851f 	.word	0x51eb851f

00001ad0 <sec_per_month>:
    1ad0:	b480      	push	{r7}
    1ad2:	b085      	sub	sp, #20
    1ad4:	af00      	add	r7, sp, #0
    1ad6:	6078      	str	r0, [r7, #4]
    1ad8:	6039      	str	r1, [r7, #0]
    1ada:	4a0d      	ldr	r2, [pc, #52]	; (1b10 <sec_per_month+0x40>)
    1adc:	683b      	ldr	r3, [r7, #0]
    1ade:	4413      	add	r3, r2
    1ae0:	781b      	ldrb	r3, [r3, #0]
    1ae2:	461a      	mov	r2, r3
    1ae4:	4b0b      	ldr	r3, [pc, #44]	; (1b14 <sec_per_month+0x44>)
    1ae6:	fb03 f302 	mul.w	r3, r3, r2
    1aea:	60fb      	str	r3, [r7, #12]
    1aec:	683b      	ldr	r3, [r7, #0]
    1aee:	2b02      	cmp	r3, #2
    1af0:	d108      	bne.n	1b04 <sec_per_month+0x34>
    1af2:	687b      	ldr	r3, [r7, #4]
    1af4:	2b00      	cmp	r3, #0
    1af6:	d005      	beq.n	1b04 <sec_per_month+0x34>
    1af8:	68fb      	ldr	r3, [r7, #12]
    1afa:	f503 33a8 	add.w	r3, r3, #86016	; 0x15000
    1afe:	f503 73c0 	add.w	r3, r3, #384	; 0x180
    1b02:	60fb      	str	r3, [r7, #12]
    1b04:	68fb      	ldr	r3, [r7, #12]
    1b06:	4618      	mov	r0, r3
    1b08:	3714      	adds	r7, #20
    1b0a:	46bd      	mov	sp, r7
    1b0c:	bc80      	pop	{r7}
    1b0e:	4770      	bx	lr
    1b10:	00003388 	.word	0x00003388
    1b14:	00015180 	.word	0x00015180

00001b18 <get_date_time>:
    1b18:	b580      	push	{r7, lr}
    1b1a:	b086      	sub	sp, #24
    1b1c:	af00      	add	r7, sp, #0
    1b1e:	6078      	str	r0, [r7, #4]
    1b20:	4b66      	ldr	r3, [pc, #408]	; (1cbc <get_date_time+0x1a4>)
    1b22:	699b      	ldr	r3, [r3, #24]
    1b24:	041a      	lsls	r2, r3, #16
    1b26:	4b65      	ldr	r3, [pc, #404]	; (1cbc <get_date_time+0x1a4>)
    1b28:	69db      	ldr	r3, [r3, #28]
    1b2a:	4413      	add	r3, r2
    1b2c:	617b      	str	r3, [r7, #20]
    1b2e:	687b      	ldr	r3, [r7, #4]
    1b30:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1b34:	811a      	strh	r2, [r3, #8]
    1b36:	f240 70b2 	movw	r0, #1970	; 0x7b2
    1b3a:	f7ff ff9d 	bl	1a78 <leap_year>
    1b3e:	6138      	str	r0, [r7, #16]
    1b40:	e019      	b.n	1b76 <get_date_time+0x5e>
    1b42:	693b      	ldr	r3, [r7, #16]
    1b44:	2b00      	cmp	r3, #0
    1b46:	d006      	beq.n	1b56 <get_date_time+0x3e>
    1b48:	697b      	ldr	r3, [r7, #20]
    1b4a:	f1a3 73f1 	sub.w	r3, r3, #31588352	; 0x1e20000
    1b4e:	f5a3 4305 	sub.w	r3, r3, #34048	; 0x8500
    1b52:	617b      	str	r3, [r7, #20]
    1b54:	e003      	b.n	1b5e <get_date_time+0x46>
    1b56:	697a      	ldr	r2, [r7, #20]
    1b58:	4b59      	ldr	r3, [pc, #356]	; (1cc0 <get_date_time+0x1a8>)
    1b5a:	4413      	add	r3, r2
    1b5c:	617b      	str	r3, [r7, #20]
    1b5e:	687b      	ldr	r3, [r7, #4]
    1b60:	891b      	ldrh	r3, [r3, #8]
    1b62:	3301      	adds	r3, #1
    1b64:	b29a      	uxth	r2, r3
    1b66:	687b      	ldr	r3, [r7, #4]
    1b68:	811a      	strh	r2, [r3, #8]
    1b6a:	687b      	ldr	r3, [r7, #4]
    1b6c:	891b      	ldrh	r3, [r3, #8]
    1b6e:	4618      	mov	r0, r3
    1b70:	f7ff ff82 	bl	1a78 <leap_year>
    1b74:	6138      	str	r0, [r7, #16]
    1b76:	693b      	ldr	r3, [r7, #16]
    1b78:	2b00      	cmp	r3, #0
    1b7a:	d103      	bne.n	1b84 <get_date_time+0x6c>
    1b7c:	697b      	ldr	r3, [r7, #20]
    1b7e:	4a51      	ldr	r2, [pc, #324]	; (1cc4 <get_date_time+0x1ac>)
    1b80:	4293      	cmp	r3, r2
    1b82:	d8de      	bhi.n	1b42 <get_date_time+0x2a>
    1b84:	693b      	ldr	r3, [r7, #16]
    1b86:	2b00      	cmp	r3, #0
    1b88:	d003      	beq.n	1b92 <get_date_time+0x7a>
    1b8a:	697b      	ldr	r3, [r7, #20]
    1b8c:	4a4e      	ldr	r2, [pc, #312]	; (1cc8 <get_date_time+0x1b0>)
    1b8e:	4293      	cmp	r3, r2
    1b90:	d8d7      	bhi.n	1b42 <get_date_time+0x2a>
    1b92:	687a      	ldr	r2, [r7, #4]
    1b94:	8853      	ldrh	r3, [r2, #2]
    1b96:	2101      	movs	r1, #1
    1b98:	f361 1389 	bfi	r3, r1, #6, #4
    1b9c:	8053      	strh	r3, [r2, #2]
    1b9e:	687a      	ldr	r2, [r7, #4]
    1ba0:	7893      	ldrb	r3, [r2, #2]
    1ba2:	2101      	movs	r1, #1
    1ba4:	f361 0345 	bfi	r3, r1, #1, #5
    1ba8:	7093      	strb	r3, [r2, #2]
    1baa:	687a      	ldr	r2, [r7, #4]
    1bac:	6813      	ldr	r3, [r2, #0]
    1bae:	f36f 3310 	bfc	r3, #12, #5
    1bb2:	6013      	str	r3, [r2, #0]
    1bb4:	687a      	ldr	r2, [r7, #4]
    1bb6:	8813      	ldrh	r3, [r2, #0]
    1bb8:	f36f 138b 	bfc	r3, #6, #6
    1bbc:	8013      	strh	r3, [r2, #0]
    1bbe:	687a      	ldr	r2, [r7, #4]
    1bc0:	7813      	ldrb	r3, [r2, #0]
    1bc2:	f36f 0305 	bfc	r3, #0, #6
    1bc6:	7013      	strb	r3, [r2, #0]
    1bc8:	e011      	b.n	1bee <get_date_time+0xd6>
    1bca:	687b      	ldr	r3, [r7, #4]
    1bcc:	885b      	ldrh	r3, [r3, #2]
    1bce:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1bd2:	b2db      	uxtb	r3, r3
    1bd4:	3301      	adds	r3, #1
    1bd6:	f003 030f 	and.w	r3, r3, #15
    1bda:	b2d9      	uxtb	r1, r3
    1bdc:	687a      	ldr	r2, [r7, #4]
    1bde:	8853      	ldrh	r3, [r2, #2]
    1be0:	f361 1389 	bfi	r3, r1, #6, #4
    1be4:	8053      	strh	r3, [r2, #2]
    1be6:	697a      	ldr	r2, [r7, #20]
    1be8:	68fb      	ldr	r3, [r7, #12]
    1bea:	1ad3      	subs	r3, r2, r3
    1bec:	617b      	str	r3, [r7, #20]
    1bee:	687b      	ldr	r3, [r7, #4]
    1bf0:	885b      	ldrh	r3, [r3, #2]
    1bf2:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1bf6:	b2db      	uxtb	r3, r3
    1bf8:	4619      	mov	r1, r3
    1bfa:	6938      	ldr	r0, [r7, #16]
    1bfc:	f7ff ff68 	bl	1ad0 <sec_per_month>
    1c00:	60f8      	str	r0, [r7, #12]
    1c02:	68fa      	ldr	r2, [r7, #12]
    1c04:	697b      	ldr	r3, [r7, #20]
    1c06:	429a      	cmp	r2, r3
    1c08:	d3df      	bcc.n	1bca <get_date_time+0xb2>
    1c0a:	697b      	ldr	r3, [r7, #20]
    1c0c:	4a2f      	ldr	r2, [pc, #188]	; (1ccc <get_date_time+0x1b4>)
    1c0e:	fba2 2303 	umull	r2, r3, r2, r3
    1c12:	0c1b      	lsrs	r3, r3, #16
    1c14:	b2db      	uxtb	r3, r3
    1c16:	3301      	adds	r3, #1
    1c18:	b2db      	uxtb	r3, r3
    1c1a:	f003 031f 	and.w	r3, r3, #31
    1c1e:	b2d9      	uxtb	r1, r3
    1c20:	687a      	ldr	r2, [r7, #4]
    1c22:	7893      	ldrb	r3, [r2, #2]
    1c24:	f361 0345 	bfi	r3, r1, #1, #5
    1c28:	7093      	strb	r3, [r2, #2]
    1c2a:	697b      	ldr	r3, [r7, #20]
    1c2c:	4a27      	ldr	r2, [pc, #156]	; (1ccc <get_date_time+0x1b4>)
    1c2e:	fba2 1203 	umull	r1, r2, r2, r3
    1c32:	0c12      	lsrs	r2, r2, #16
    1c34:	4926      	ldr	r1, [pc, #152]	; (1cd0 <get_date_time+0x1b8>)
    1c36:	fb01 f202 	mul.w	r2, r1, r2
    1c3a:	1a9b      	subs	r3, r3, r2
    1c3c:	617b      	str	r3, [r7, #20]
    1c3e:	697b      	ldr	r3, [r7, #20]
    1c40:	4a24      	ldr	r2, [pc, #144]	; (1cd4 <get_date_time+0x1bc>)
    1c42:	fba2 2303 	umull	r2, r3, r2, r3
    1c46:	0adb      	lsrs	r3, r3, #11
    1c48:	b2db      	uxtb	r3, r3
    1c4a:	f003 031f 	and.w	r3, r3, #31
    1c4e:	b2d9      	uxtb	r1, r3
    1c50:	687a      	ldr	r2, [r7, #4]
    1c52:	6813      	ldr	r3, [r2, #0]
    1c54:	f361 3310 	bfi	r3, r1, #12, #5
    1c58:	6013      	str	r3, [r2, #0]
    1c5a:	697b      	ldr	r3, [r7, #20]
    1c5c:	4a1d      	ldr	r2, [pc, #116]	; (1cd4 <get_date_time+0x1bc>)
    1c5e:	fba2 1203 	umull	r1, r2, r2, r3
    1c62:	0ad2      	lsrs	r2, r2, #11
    1c64:	f44f 6161 	mov.w	r1, #3600	; 0xe10
    1c68:	fb01 f202 	mul.w	r2, r1, r2
    1c6c:	1a9b      	subs	r3, r3, r2
    1c6e:	617b      	str	r3, [r7, #20]
    1c70:	697b      	ldr	r3, [r7, #20]
    1c72:	4a19      	ldr	r2, [pc, #100]	; (1cd8 <get_date_time+0x1c0>)
    1c74:	fba2 2303 	umull	r2, r3, r2, r3
    1c78:	095b      	lsrs	r3, r3, #5
    1c7a:	b2db      	uxtb	r3, r3
    1c7c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1c80:	b2d9      	uxtb	r1, r3
    1c82:	687a      	ldr	r2, [r7, #4]
    1c84:	8813      	ldrh	r3, [r2, #0]
    1c86:	f361 138b 	bfi	r3, r1, #6, #6
    1c8a:	8013      	strh	r3, [r2, #0]
    1c8c:	6979      	ldr	r1, [r7, #20]
    1c8e:	4b12      	ldr	r3, [pc, #72]	; (1cd8 <get_date_time+0x1c0>)
    1c90:	fba3 2301 	umull	r2, r3, r3, r1
    1c94:	095a      	lsrs	r2, r3, #5
    1c96:	4613      	mov	r3, r2
    1c98:	011b      	lsls	r3, r3, #4
    1c9a:	1a9b      	subs	r3, r3, r2
    1c9c:	009b      	lsls	r3, r3, #2
    1c9e:	1aca      	subs	r2, r1, r3
    1ca0:	b2d3      	uxtb	r3, r2
    1ca2:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    1ca6:	b2d9      	uxtb	r1, r3
    1ca8:	687a      	ldr	r2, [r7, #4]
    1caa:	7813      	ldrb	r3, [r2, #0]
    1cac:	f361 0305 	bfi	r3, r1, #0, #6
    1cb0:	7013      	strb	r3, [r2, #0]
    1cb2:	bf00      	nop
    1cb4:	3718      	adds	r7, #24
    1cb6:	46bd      	mov	sp, r7
    1cb8:	bd80      	pop	{r7, pc}
    1cba:	bf00      	nop
    1cbc:	40002800 	.word	0x40002800
    1cc0:	fe1ecc80 	.word	0xfe1ecc80
    1cc4:	01e1337f 	.word	0x01e1337f
    1cc8:	01e284ff 	.word	0x01e284ff
    1ccc:	c22e4507 	.word	0xc22e4507
    1cd0:	00015180 	.word	0x00015180
    1cd4:	91a2b3c5 	.word	0x91a2b3c5
    1cd8:	88888889 	.word	0x88888889

00001cdc <set_date_time>:
    1cdc:	b580      	push	{r7, lr}
    1cde:	b086      	sub	sp, #24
    1ce0:	af00      	add	r7, sp, #0
    1ce2:	6078      	str	r0, [r7, #4]
    1ce4:	2300      	movs	r3, #0
    1ce6:	613b      	str	r3, [r7, #16]
    1ce8:	687b      	ldr	r3, [r7, #4]
    1cea:	891b      	ldrh	r3, [r3, #8]
    1cec:	f240 72b1 	movw	r2, #1969	; 0x7b1
    1cf0:	4293      	cmp	r3, r2
    1cf2:	d803      	bhi.n	1cfc <set_date_time+0x20>
    1cf4:	687b      	ldr	r3, [r7, #4]
    1cf6:	f240 72b2 	movw	r2, #1970	; 0x7b2
    1cfa:	811a      	strh	r2, [r3, #8]
    1cfc:	687b      	ldr	r3, [r7, #4]
    1cfe:	891b      	ldrh	r3, [r3, #8]
    1d00:	f640 023a 	movw	r2, #2106	; 0x83a
    1d04:	4293      	cmp	r3, r2
    1d06:	d903      	bls.n	1d10 <set_date_time+0x34>
    1d08:	687b      	ldr	r3, [r7, #4]
    1d0a:	f640 023a 	movw	r2, #2106	; 0x83a
    1d0e:	811a      	strh	r2, [r3, #8]
    1d10:	687b      	ldr	r3, [r7, #4]
    1d12:	891b      	ldrh	r3, [r3, #8]
    1d14:	4618      	mov	r0, r3
    1d16:	f7ff feaf 	bl	1a78 <leap_year>
    1d1a:	60f8      	str	r0, [r7, #12]
    1d1c:	f240 73b2 	movw	r3, #1970	; 0x7b2
    1d20:	617b      	str	r3, [r7, #20]
    1d22:	e013      	b.n	1d4c <set_date_time+0x70>
    1d24:	6978      	ldr	r0, [r7, #20]
    1d26:	f7ff fea7 	bl	1a78 <leap_year>
    1d2a:	4603      	mov	r3, r0
    1d2c:	2b00      	cmp	r3, #0
    1d2e:	d006      	beq.n	1d3e <set_date_time+0x62>
    1d30:	693b      	ldr	r3, [r7, #16]
    1d32:	f103 73f1 	add.w	r3, r3, #31588352	; 0x1e20000
    1d36:	f503 4305 	add.w	r3, r3, #34048	; 0x8500
    1d3a:	613b      	str	r3, [r7, #16]
    1d3c:	e003      	b.n	1d46 <set_date_time+0x6a>
    1d3e:	693a      	ldr	r2, [r7, #16]
    1d40:	4b42      	ldr	r3, [pc, #264]	; (1e4c <set_date_time+0x170>)
    1d42:	4413      	add	r3, r2
    1d44:	613b      	str	r3, [r7, #16]
    1d46:	697b      	ldr	r3, [r7, #20]
    1d48:	3301      	adds	r3, #1
    1d4a:	617b      	str	r3, [r7, #20]
    1d4c:	687b      	ldr	r3, [r7, #4]
    1d4e:	891b      	ldrh	r3, [r3, #8]
    1d50:	461a      	mov	r2, r3
    1d52:	697b      	ldr	r3, [r7, #20]
    1d54:	429a      	cmp	r2, r3
    1d56:	d8e5      	bhi.n	1d24 <set_date_time+0x48>
    1d58:	2301      	movs	r3, #1
    1d5a:	617b      	str	r3, [r7, #20]
    1d5c:	e00a      	b.n	1d74 <set_date_time+0x98>
    1d5e:	6979      	ldr	r1, [r7, #20]
    1d60:	68f8      	ldr	r0, [r7, #12]
    1d62:	f7ff feb5 	bl	1ad0 <sec_per_month>
    1d66:	4602      	mov	r2, r0
    1d68:	693b      	ldr	r3, [r7, #16]
    1d6a:	4413      	add	r3, r2
    1d6c:	613b      	str	r3, [r7, #16]
    1d6e:	697b      	ldr	r3, [r7, #20]
    1d70:	3301      	adds	r3, #1
    1d72:	617b      	str	r3, [r7, #20]
    1d74:	687b      	ldr	r3, [r7, #4]
    1d76:	885b      	ldrh	r3, [r3, #2]
    1d78:	f3c3 1383 	ubfx	r3, r3, #6, #4
    1d7c:	b2db      	uxtb	r3, r3
    1d7e:	461a      	mov	r2, r3
    1d80:	697b      	ldr	r3, [r7, #20]
    1d82:	429a      	cmp	r2, r3
    1d84:	d8eb      	bhi.n	1d5e <set_date_time+0x82>
    1d86:	687b      	ldr	r3, [r7, #4]
    1d88:	789b      	ldrb	r3, [r3, #2]
    1d8a:	f3c3 0344 	ubfx	r3, r3, #1, #5
    1d8e:	b2db      	uxtb	r3, r3
    1d90:	3b01      	subs	r3, #1
    1d92:	4a2f      	ldr	r2, [pc, #188]	; (1e50 <set_date_time+0x174>)
    1d94:	fb02 f303 	mul.w	r3, r2, r3
    1d98:	461a      	mov	r2, r3
    1d9a:	693b      	ldr	r3, [r7, #16]
    1d9c:	4413      	add	r3, r2
    1d9e:	613b      	str	r3, [r7, #16]
    1da0:	687b      	ldr	r3, [r7, #4]
    1da2:	681b      	ldr	r3, [r3, #0]
    1da4:	f3c3 3304 	ubfx	r3, r3, #12, #5
    1da8:	b2db      	uxtb	r3, r3
    1daa:	461a      	mov	r2, r3
    1dac:	f44f 6361 	mov.w	r3, #3600	; 0xe10
    1db0:	fb03 f302 	mul.w	r3, r3, r2
    1db4:	461a      	mov	r2, r3
    1db6:	693b      	ldr	r3, [r7, #16]
    1db8:	4413      	add	r3, r2
    1dba:	613b      	str	r3, [r7, #16]
    1dbc:	687b      	ldr	r3, [r7, #4]
    1dbe:	881b      	ldrh	r3, [r3, #0]
    1dc0:	f3c3 1385 	ubfx	r3, r3, #6, #6
    1dc4:	b2db      	uxtb	r3, r3
    1dc6:	461a      	mov	r2, r3
    1dc8:	4613      	mov	r3, r2
    1dca:	011b      	lsls	r3, r3, #4
    1dcc:	1a9b      	subs	r3, r3, r2
    1dce:	009b      	lsls	r3, r3, #2
    1dd0:	461a      	mov	r2, r3
    1dd2:	693b      	ldr	r3, [r7, #16]
    1dd4:	4413      	add	r3, r2
    1dd6:	613b      	str	r3, [r7, #16]
    1dd8:	687b      	ldr	r3, [r7, #4]
    1dda:	781b      	ldrb	r3, [r3, #0]
    1ddc:	f3c3 0305 	ubfx	r3, r3, #0, #6
    1de0:	b2db      	uxtb	r3, r3
    1de2:	461a      	mov	r2, r3
    1de4:	693b      	ldr	r3, [r7, #16]
    1de6:	4413      	add	r3, r2
    1de8:	613b      	str	r3, [r7, #16]
    1dea:	4a1a      	ldr	r2, [pc, #104]	; (1e54 <set_date_time+0x178>)
    1dec:	4b19      	ldr	r3, [pc, #100]	; (1e54 <set_date_time+0x178>)
    1dee:	69db      	ldr	r3, [r3, #28]
    1df0:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1df4:	61d3      	str	r3, [r2, #28]
    1df6:	4a18      	ldr	r2, [pc, #96]	; (1e58 <set_date_time+0x17c>)
    1df8:	4b17      	ldr	r3, [pc, #92]	; (1e58 <set_date_time+0x17c>)
    1dfa:	681b      	ldr	r3, [r3, #0]
    1dfc:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1e00:	6013      	str	r3, [r2, #0]
    1e02:	4a16      	ldr	r2, [pc, #88]	; (1e5c <set_date_time+0x180>)
    1e04:	4b15      	ldr	r3, [pc, #84]	; (1e5c <set_date_time+0x180>)
    1e06:	685b      	ldr	r3, [r3, #4]
    1e08:	f043 0310 	orr.w	r3, r3, #16
    1e0c:	6053      	str	r3, [r2, #4]
    1e0e:	4a13      	ldr	r2, [pc, #76]	; (1e5c <set_date_time+0x180>)
    1e10:	693b      	ldr	r3, [r7, #16]
    1e12:	0c1b      	lsrs	r3, r3, #16
    1e14:	6193      	str	r3, [r2, #24]
    1e16:	4a11      	ldr	r2, [pc, #68]	; (1e5c <set_date_time+0x180>)
    1e18:	693b      	ldr	r3, [r7, #16]
    1e1a:	b29b      	uxth	r3, r3
    1e1c:	61d3      	str	r3, [r2, #28]
    1e1e:	4a0f      	ldr	r2, [pc, #60]	; (1e5c <set_date_time+0x180>)
    1e20:	4b0e      	ldr	r3, [pc, #56]	; (1e5c <set_date_time+0x180>)
    1e22:	685b      	ldr	r3, [r3, #4]
    1e24:	f023 0310 	bic.w	r3, r3, #16
    1e28:	6053      	str	r3, [r2, #4]
    1e2a:	bf00      	nop
    1e2c:	4b0b      	ldr	r3, [pc, #44]	; (1e5c <set_date_time+0x180>)
    1e2e:	685b      	ldr	r3, [r3, #4]
    1e30:	f003 0320 	and.w	r3, r3, #32
    1e34:	2b00      	cmp	r3, #0
    1e36:	d0f9      	beq.n	1e2c <set_date_time+0x150>
    1e38:	4a07      	ldr	r2, [pc, #28]	; (1e58 <set_date_time+0x17c>)
    1e3a:	4b07      	ldr	r3, [pc, #28]	; (1e58 <set_date_time+0x17c>)
    1e3c:	681b      	ldr	r3, [r3, #0]
    1e3e:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1e42:	6013      	str	r3, [r2, #0]
    1e44:	bf00      	nop
    1e46:	3718      	adds	r7, #24
    1e48:	46bd      	mov	sp, r7
    1e4a:	bd80      	pop	{r7, pc}
    1e4c:	01e13380 	.word	0x01e13380
    1e50:	00015180 	.word	0x00015180
    1e54:	40021000 	.word	0x40021000
    1e58:	40007000 	.word	0x40007000
    1e5c:	40002800 	.word	0x40002800

00001e60 <rtc_init>:
    1e60:	b580      	push	{r7, lr}
    1e62:	b082      	sub	sp, #8
    1e64:	af00      	add	r7, sp, #0
    1e66:	6078      	str	r0, [r7, #4]
    1e68:	6039      	str	r1, [r7, #0]
    1e6a:	4b4a      	ldr	r3, [pc, #296]	; (1f94 <rtc_init+0x134>)
    1e6c:	685b      	ldr	r3, [r3, #4]
    1e6e:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1e72:	4293      	cmp	r3, r2
    1e74:	f000 8082 	beq.w	1f7c <rtc_init+0x11c>
    1e78:	4a47      	ldr	r2, [pc, #284]	; (1f98 <rtc_init+0x138>)
    1e7a:	4b47      	ldr	r3, [pc, #284]	; (1f98 <rtc_init+0x138>)
    1e7c:	69db      	ldr	r3, [r3, #28]
    1e7e:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1e82:	61d3      	str	r3, [r2, #28]
    1e84:	4a45      	ldr	r2, [pc, #276]	; (1f9c <rtc_init+0x13c>)
    1e86:	4b45      	ldr	r3, [pc, #276]	; (1f9c <rtc_init+0x13c>)
    1e88:	681b      	ldr	r3, [r3, #0]
    1e8a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1e8e:	6013      	str	r3, [r2, #0]
    1e90:	4a41      	ldr	r2, [pc, #260]	; (1f98 <rtc_init+0x138>)
    1e92:	4b41      	ldr	r3, [pc, #260]	; (1f98 <rtc_init+0x138>)
    1e94:	6a1b      	ldr	r3, [r3, #32]
    1e96:	f043 0301 	orr.w	r3, r3, #1
    1e9a:	6213      	str	r3, [r2, #32]
    1e9c:	bf00      	nop
    1e9e:	4b3e      	ldr	r3, [pc, #248]	; (1f98 <rtc_init+0x138>)
    1ea0:	6a1b      	ldr	r3, [r3, #32]
    1ea2:	f003 0302 	and.w	r3, r3, #2
    1ea6:	2b00      	cmp	r3, #0
    1ea8:	d0f9      	beq.n	1e9e <rtc_init+0x3e>
    1eaa:	4a3b      	ldr	r2, [pc, #236]	; (1f98 <rtc_init+0x138>)
    1eac:	4b3a      	ldr	r3, [pc, #232]	; (1f98 <rtc_init+0x138>)
    1eae:	6a1b      	ldr	r3, [r3, #32]
    1eb0:	f443 4301 	orr.w	r3, r3, #33024	; 0x8100
    1eb4:	6213      	str	r3, [r2, #32]
    1eb6:	bf00      	nop
    1eb8:	4b39      	ldr	r3, [pc, #228]	; (1fa0 <rtc_init+0x140>)
    1eba:	685b      	ldr	r3, [r3, #4]
    1ebc:	f003 0308 	and.w	r3, r3, #8
    1ec0:	2b00      	cmp	r3, #0
    1ec2:	d0f9      	beq.n	1eb8 <rtc_init+0x58>
    1ec4:	bf00      	nop
    1ec6:	4b36      	ldr	r3, [pc, #216]	; (1fa0 <rtc_init+0x140>)
    1ec8:	685b      	ldr	r3, [r3, #4]
    1eca:	f003 0320 	and.w	r3, r3, #32
    1ece:	2b00      	cmp	r3, #0
    1ed0:	d0f9      	beq.n	1ec6 <rtc_init+0x66>
    1ed2:	4a33      	ldr	r2, [pc, #204]	; (1fa0 <rtc_init+0x140>)
    1ed4:	4b32      	ldr	r3, [pc, #200]	; (1fa0 <rtc_init+0x140>)
    1ed6:	685b      	ldr	r3, [r3, #4]
    1ed8:	f043 0310 	orr.w	r3, r3, #16
    1edc:	6053      	str	r3, [r2, #4]
    1ede:	bf00      	nop
    1ee0:	4b2f      	ldr	r3, [pc, #188]	; (1fa0 <rtc_init+0x140>)
    1ee2:	685b      	ldr	r3, [r3, #4]
    1ee4:	f003 0320 	and.w	r3, r3, #32
    1ee8:	2b00      	cmp	r3, #0
    1eea:	d0f9      	beq.n	1ee0 <rtc_init+0x80>
    1eec:	492c      	ldr	r1, [pc, #176]	; (1fa0 <rtc_init+0x140>)
    1eee:	4b2c      	ldr	r3, [pc, #176]	; (1fa0 <rtc_init+0x140>)
    1ef0:	681a      	ldr	r2, [r3, #0]
    1ef2:	683b      	ldr	r3, [r7, #0]
    1ef4:	4313      	orrs	r3, r2
    1ef6:	600b      	str	r3, [r1, #0]
    1ef8:	bf00      	nop
    1efa:	4b29      	ldr	r3, [pc, #164]	; (1fa0 <rtc_init+0x140>)
    1efc:	685b      	ldr	r3, [r3, #4]
    1efe:	f003 0320 	and.w	r3, r3, #32
    1f02:	2b00      	cmp	r3, #0
    1f04:	d0f9      	beq.n	1efa <rtc_init+0x9a>
    1f06:	4a26      	ldr	r2, [pc, #152]	; (1fa0 <rtc_init+0x140>)
    1f08:	687b      	ldr	r3, [r7, #4]
    1f0a:	03db      	lsls	r3, r3, #15
    1f0c:	4925      	ldr	r1, [pc, #148]	; (1fa4 <rtc_init+0x144>)
    1f0e:	fba1 1303 	umull	r1, r3, r1, r3
    1f12:	099b      	lsrs	r3, r3, #6
    1f14:	3b01      	subs	r3, #1
    1f16:	b29b      	uxth	r3, r3
    1f18:	60d3      	str	r3, [r2, #12]
    1f1a:	bf00      	nop
    1f1c:	4b20      	ldr	r3, [pc, #128]	; (1fa0 <rtc_init+0x140>)
    1f1e:	685b      	ldr	r3, [r3, #4]
    1f20:	f003 0320 	and.w	r3, r3, #32
    1f24:	2b00      	cmp	r3, #0
    1f26:	d0f9      	beq.n	1f1c <rtc_init+0xbc>
    1f28:	4a1d      	ldr	r2, [pc, #116]	; (1fa0 <rtc_init+0x140>)
    1f2a:	687b      	ldr	r3, [r7, #4]
    1f2c:	03db      	lsls	r3, r3, #15
    1f2e:	491d      	ldr	r1, [pc, #116]	; (1fa4 <rtc_init+0x144>)
    1f30:	fba1 1303 	umull	r1, r3, r1, r3
    1f34:	099b      	lsrs	r3, r3, #6
    1f36:	3b01      	subs	r3, #1
    1f38:	0c1b      	lsrs	r3, r3, #16
    1f3a:	f003 030f 	and.w	r3, r3, #15
    1f3e:	6093      	str	r3, [r2, #8]
    1f40:	bf00      	nop
    1f42:	4b17      	ldr	r3, [pc, #92]	; (1fa0 <rtc_init+0x140>)
    1f44:	685b      	ldr	r3, [r3, #4]
    1f46:	f003 0320 	and.w	r3, r3, #32
    1f4a:	2b00      	cmp	r3, #0
    1f4c:	d0f9      	beq.n	1f42 <rtc_init+0xe2>
    1f4e:	4b11      	ldr	r3, [pc, #68]	; (1f94 <rtc_init+0x134>)
    1f50:	f64a 2255 	movw	r2, #43605	; 0xaa55
    1f54:	605a      	str	r2, [r3, #4]
    1f56:	4a12      	ldr	r2, [pc, #72]	; (1fa0 <rtc_init+0x140>)
    1f58:	4b11      	ldr	r3, [pc, #68]	; (1fa0 <rtc_init+0x140>)
    1f5a:	685b      	ldr	r3, [r3, #4]
    1f5c:	f023 0310 	bic.w	r3, r3, #16
    1f60:	6053      	str	r3, [r2, #4]
    1f62:	bf00      	nop
    1f64:	4b0e      	ldr	r3, [pc, #56]	; (1fa0 <rtc_init+0x140>)
    1f66:	685b      	ldr	r3, [r3, #4]
    1f68:	f003 0320 	and.w	r3, r3, #32
    1f6c:	2b00      	cmp	r3, #0
    1f6e:	d0f9      	beq.n	1f64 <rtc_init+0x104>
    1f70:	4a0a      	ldr	r2, [pc, #40]	; (1f9c <rtc_init+0x13c>)
    1f72:	4b0a      	ldr	r3, [pc, #40]	; (1f9c <rtc_init+0x13c>)
    1f74:	681b      	ldr	r3, [r3, #0]
    1f76:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    1f7a:	6013      	str	r3, [r2, #0]
    1f7c:	210f      	movs	r1, #15
    1f7e:	2003      	movs	r0, #3
    1f80:	f7ff fd4a 	bl	1a18 <set_int_priority>
    1f84:	2003      	movs	r0, #3
    1f86:	f7ff fc8d 	bl	18a4 <enable_interrupt>
    1f8a:	bf00      	nop
    1f8c:	3708      	adds	r7, #8
    1f8e:	46bd      	mov	sp, r7
    1f90:	bd80      	pop	{r7, pc}
    1f92:	bf00      	nop
    1f94:	40006c00 	.word	0x40006c00
    1f98:	40021000 	.word	0x40021000
    1f9c:	40007000 	.word	0x40007000
    1fa0:	40002800 	.word	0x40002800
    1fa4:	10624dd3 	.word	0x10624dd3

00001fa8 <reset_backup_domain>:
    1fa8:	b480      	push	{r7}
    1faa:	af00      	add	r7, sp, #0
    1fac:	4a0a      	ldr	r2, [pc, #40]	; (1fd8 <reset_backup_domain+0x30>)
    1fae:	4b0a      	ldr	r3, [pc, #40]	; (1fd8 <reset_backup_domain+0x30>)
    1fb0:	69db      	ldr	r3, [r3, #28]
    1fb2:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1fb6:	61d3      	str	r3, [r2, #28]
    1fb8:	4a07      	ldr	r2, [pc, #28]	; (1fd8 <reset_backup_domain+0x30>)
    1fba:	4b07      	ldr	r3, [pc, #28]	; (1fd8 <reset_backup_domain+0x30>)
    1fbc:	6a1b      	ldr	r3, [r3, #32]
    1fbe:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
    1fc2:	6213      	str	r3, [r2, #32]
    1fc4:	4a04      	ldr	r2, [pc, #16]	; (1fd8 <reset_backup_domain+0x30>)
    1fc6:	4b04      	ldr	r3, [pc, #16]	; (1fd8 <reset_backup_domain+0x30>)
    1fc8:	6a1b      	ldr	r3, [r3, #32]
    1fca:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
    1fce:	6213      	str	r3, [r2, #32]
    1fd0:	bf00      	nop
    1fd2:	46bd      	mov	sp, r7
    1fd4:	bc80      	pop	{r7}
    1fd6:	4770      	bx	lr
    1fd8:	40021000 	.word	0x40021000

00001fdc <rtc_clock_trim>:
    1fdc:	b480      	push	{r7}
    1fde:	b083      	sub	sp, #12
    1fe0:	af00      	add	r7, sp, #0
    1fe2:	6078      	str	r0, [r7, #4]
    1fe4:	4a34      	ldr	r2, [pc, #208]	; (20b8 <rtc_clock_trim+0xdc>)
    1fe6:	4b34      	ldr	r3, [pc, #208]	; (20b8 <rtc_clock_trim+0xdc>)
    1fe8:	69db      	ldr	r3, [r3, #28]
    1fea:	f043 53c0 	orr.w	r3, r3, #402653184	; 0x18000000
    1fee:	61d3      	str	r3, [r2, #28]
    1ff0:	bf00      	nop
    1ff2:	4b32      	ldr	r3, [pc, #200]	; (20bc <rtc_clock_trim+0xe0>)
    1ff4:	685b      	ldr	r3, [r3, #4]
    1ff6:	f003 0308 	and.w	r3, r3, #8
    1ffa:	2b00      	cmp	r3, #0
    1ffc:	d0f9      	beq.n	1ff2 <rtc_clock_trim+0x16>
    1ffe:	4a30      	ldr	r2, [pc, #192]	; (20c0 <rtc_clock_trim+0xe4>)
    2000:	4b2f      	ldr	r3, [pc, #188]	; (20c0 <rtc_clock_trim+0xe4>)
    2002:	681b      	ldr	r3, [r3, #0]
    2004:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    2008:	6013      	str	r3, [r2, #0]
    200a:	4a2c      	ldr	r2, [pc, #176]	; (20bc <rtc_clock_trim+0xe0>)
    200c:	4b2b      	ldr	r3, [pc, #172]	; (20bc <rtc_clock_trim+0xe0>)
    200e:	685b      	ldr	r3, [r3, #4]
    2010:	f043 0310 	orr.w	r3, r3, #16
    2014:	6053      	str	r3, [r2, #4]
    2016:	4a2b      	ldr	r2, [pc, #172]	; (20c4 <rtc_clock_trim+0xe8>)
    2018:	4b2a      	ldr	r3, [pc, #168]	; (20c4 <rtc_clock_trim+0xe8>)
    201a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    201c:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
    2020:	62d3      	str	r3, [r2, #44]	; 0x2c
    2022:	687b      	ldr	r3, [r7, #4]
    2024:	2b00      	cmp	r3, #0
    2026:	d10a      	bne.n	203e <rtc_clock_trim+0x62>
    2028:	4b26      	ldr	r3, [pc, #152]	; (20c4 <rtc_clock_trim+0xe8>)
    202a:	2200      	movs	r2, #0
    202c:	62da      	str	r2, [r3, #44]	; 0x2c
    202e:	4b23      	ldr	r3, [pc, #140]	; (20bc <rtc_clock_trim+0xe0>)
    2030:	f647 72ff 	movw	r2, #32767	; 0x7fff
    2034:	60da      	str	r2, [r3, #12]
    2036:	4b21      	ldr	r3, [pc, #132]	; (20bc <rtc_clock_trim+0xe0>)
    2038:	2200      	movs	r2, #0
    203a:	609a      	str	r2, [r3, #8]
    203c:	e023      	b.n	2086 <rtc_clock_trim+0xaa>
    203e:	687b      	ldr	r3, [r7, #4]
    2040:	2b00      	cmp	r3, #0
    2042:	dd0a      	ble.n	205a <rtc_clock_trim+0x7e>
    2044:	687b      	ldr	r3, [r7, #4]
    2046:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    204a:	607b      	str	r3, [r7, #4]
    204c:	491d      	ldr	r1, [pc, #116]	; (20c4 <rtc_clock_trim+0xe8>)
    204e:	4b1d      	ldr	r3, [pc, #116]	; (20c4 <rtc_clock_trim+0xe8>)
    2050:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    2052:	687b      	ldr	r3, [r7, #4]
    2054:	4313      	orrs	r3, r2
    2056:	62cb      	str	r3, [r1, #44]	; 0x2c
    2058:	e015      	b.n	2086 <rtc_clock_trim+0xaa>
    205a:	687b      	ldr	r3, [r7, #4]
    205c:	425b      	negs	r3, r3
    205e:	607b      	str	r3, [r7, #4]
    2060:	687b      	ldr	r3, [r7, #4]
    2062:	2b7f      	cmp	r3, #127	; 0x7f
    2064:	dd01      	ble.n	206a <rtc_clock_trim+0x8e>
    2066:	237f      	movs	r3, #127	; 0x7f
    2068:	607b      	str	r3, [r7, #4]
    206a:	4b16      	ldr	r3, [pc, #88]	; (20c4 <rtc_clock_trim+0xe8>)
    206c:	2200      	movs	r2, #0
    206e:	62da      	str	r2, [r3, #44]	; 0x2c
    2070:	4a12      	ldr	r2, [pc, #72]	; (20bc <rtc_clock_trim+0xe0>)
    2072:	687b      	ldr	r3, [r7, #4]
    2074:	f5c3 437f 	rsb	r3, r3, #65280	; 0xff00
    2078:	33ff      	adds	r3, #255	; 0xff
    207a:	f3c3 030e 	ubfx	r3, r3, #0, #15
    207e:	60d3      	str	r3, [r2, #12]
    2080:	4b0e      	ldr	r3, [pc, #56]	; (20bc <rtc_clock_trim+0xe0>)
    2082:	2200      	movs	r2, #0
    2084:	609a      	str	r2, [r3, #8]
    2086:	4a0d      	ldr	r2, [pc, #52]	; (20bc <rtc_clock_trim+0xe0>)
    2088:	4b0c      	ldr	r3, [pc, #48]	; (20bc <rtc_clock_trim+0xe0>)
    208a:	685b      	ldr	r3, [r3, #4]
    208c:	f023 0310 	bic.w	r3, r3, #16
    2090:	6053      	str	r3, [r2, #4]
    2092:	bf00      	nop
    2094:	4b09      	ldr	r3, [pc, #36]	; (20bc <rtc_clock_trim+0xe0>)
    2096:	685b      	ldr	r3, [r3, #4]
    2098:	f003 0320 	and.w	r3, r3, #32
    209c:	2b00      	cmp	r3, #0
    209e:	d0f9      	beq.n	2094 <rtc_clock_trim+0xb8>
    20a0:	4a07      	ldr	r2, [pc, #28]	; (20c0 <rtc_clock_trim+0xe4>)
    20a2:	4b07      	ldr	r3, [pc, #28]	; (20c0 <rtc_clock_trim+0xe4>)
    20a4:	681b      	ldr	r3, [r3, #0]
    20a6:	f423 7380 	bic.w	r3, r3, #256	; 0x100
    20aa:	6013      	str	r3, [r2, #0]
    20ac:	bf00      	nop
    20ae:	370c      	adds	r7, #12
    20b0:	46bd      	mov	sp, r7
    20b2:	bc80      	pop	{r7}
    20b4:	4770      	bx	lr
    20b6:	bf00      	nop
    20b8:	40021000 	.word	0x40021000
    20bc:	40002800 	.word	0x40002800
    20c0:	40007000 	.word	0x40007000
    20c4:	40006c00 	.word	0x40006c00

000020c8 <rtc_set_alarm>:
    20c8:	b480      	push	{r7}
    20ca:	b083      	sub	sp, #12
    20cc:	af00      	add	r7, sp, #0
    20ce:	6078      	str	r0, [r7, #4]
    20d0:	bf00      	nop
    20d2:	370c      	adds	r7, #12
    20d4:	46bd      	mov	sp, r7
    20d6:	bc80      	pop	{r7}
    20d8:	4770      	bx	lr

000020da <str_to_date>:
    20da:	b580      	push	{r7, lr}
    20dc:	b084      	sub	sp, #16
    20de:	af00      	add	r7, sp, #0
    20e0:	6078      	str	r0, [r7, #4]
    20e2:	6039      	str	r1, [r7, #0]
    20e4:	2300      	movs	r3, #0
    20e6:	60fb      	str	r3, [r7, #12]
    20e8:	2300      	movs	r3, #0
    20ea:	60bb      	str	r3, [r7, #8]
    20ec:	e00f      	b.n	210e <str_to_date+0x34>
    20ee:	68ba      	ldr	r2, [r7, #8]
    20f0:	4613      	mov	r3, r2
    20f2:	009b      	lsls	r3, r3, #2
    20f4:	4413      	add	r3, r2
    20f6:	005b      	lsls	r3, r3, #1
    20f8:	4619      	mov	r1, r3
    20fa:	68fb      	ldr	r3, [r7, #12]
    20fc:	1c5a      	adds	r2, r3, #1
    20fe:	60fa      	str	r2, [r7, #12]
    2100:	461a      	mov	r2, r3
    2102:	687b      	ldr	r3, [r7, #4]
    2104:	4413      	add	r3, r2
    2106:	781b      	ldrb	r3, [r3, #0]
    2108:	440b      	add	r3, r1
    210a:	3b30      	subs	r3, #48	; 0x30
    210c:	60bb      	str	r3, [r7, #8]
    210e:	68fb      	ldr	r3, [r7, #12]
    2110:	687a      	ldr	r2, [r7, #4]
    2112:	4413      	add	r3, r2
    2114:	781b      	ldrb	r3, [r3, #0]
    2116:	4618      	mov	r0, r3
    2118:	f7ff f811 	bl	113e <digit>
    211c:	4603      	mov	r3, r0
    211e:	2b00      	cmp	r3, #0
    2120:	d1e5      	bne.n	20ee <str_to_date+0x14>
    2122:	68fb      	ldr	r3, [r7, #12]
    2124:	2b03      	cmp	r3, #3
    2126:	dd05      	ble.n	2134 <str_to_date+0x5a>
    2128:	68fb      	ldr	r3, [r7, #12]
    212a:	687a      	ldr	r2, [r7, #4]
    212c:	4413      	add	r3, r2
    212e:	781b      	ldrb	r3, [r3, #0]
    2130:	2b2f      	cmp	r3, #47	; 0x2f
    2132:	d001      	beq.n	2138 <str_to_date+0x5e>
    2134:	2300      	movs	r3, #0
    2136:	e068      	b.n	220a <str_to_date+0x130>
    2138:	68bb      	ldr	r3, [r7, #8]
    213a:	b29a      	uxth	r2, r3
    213c:	683b      	ldr	r3, [r7, #0]
    213e:	811a      	strh	r2, [r3, #8]
    2140:	68fb      	ldr	r3, [r7, #12]
    2142:	3301      	adds	r3, #1
    2144:	60fb      	str	r3, [r7, #12]
    2146:	2300      	movs	r3, #0
    2148:	60bb      	str	r3, [r7, #8]
    214a:	e00f      	b.n	216c <str_to_date+0x92>
    214c:	68ba      	ldr	r2, [r7, #8]
    214e:	4613      	mov	r3, r2
    2150:	009b      	lsls	r3, r3, #2
    2152:	4413      	add	r3, r2
    2154:	005b      	lsls	r3, r3, #1
    2156:	4619      	mov	r1, r3
    2158:	68fb      	ldr	r3, [r7, #12]
    215a:	1c5a      	adds	r2, r3, #1
    215c:	60fa      	str	r2, [r7, #12]
    215e:	461a      	mov	r2, r3
    2160:	687b      	ldr	r3, [r7, #4]
    2162:	4413      	add	r3, r2
    2164:	781b      	ldrb	r3, [r3, #0]
    2166:	440b      	add	r3, r1
    2168:	3b30      	subs	r3, #48	; 0x30
    216a:	60bb      	str	r3, [r7, #8]
    216c:	68fb      	ldr	r3, [r7, #12]
    216e:	687a      	ldr	r2, [r7, #4]
    2170:	4413      	add	r3, r2
    2172:	781b      	ldrb	r3, [r3, #0]
    2174:	4618      	mov	r0, r3
    2176:	f7fe ffe2 	bl	113e <digit>
    217a:	4603      	mov	r3, r0
    217c:	2b00      	cmp	r3, #0
    217e:	d1e5      	bne.n	214c <str_to_date+0x72>
    2180:	68fb      	ldr	r3, [r7, #12]
    2182:	2b06      	cmp	r3, #6
    2184:	dd05      	ble.n	2192 <str_to_date+0xb8>
    2186:	68fb      	ldr	r3, [r7, #12]
    2188:	687a      	ldr	r2, [r7, #4]
    218a:	4413      	add	r3, r2
    218c:	781b      	ldrb	r3, [r3, #0]
    218e:	2b2f      	cmp	r3, #47	; 0x2f
    2190:	d001      	beq.n	2196 <str_to_date+0xbc>
    2192:	2300      	movs	r3, #0
    2194:	e039      	b.n	220a <str_to_date+0x130>
    2196:	68bb      	ldr	r3, [r7, #8]
    2198:	b2db      	uxtb	r3, r3
    219a:	f003 030f 	and.w	r3, r3, #15
    219e:	b2d9      	uxtb	r1, r3
    21a0:	683a      	ldr	r2, [r7, #0]
    21a2:	8853      	ldrh	r3, [r2, #2]
    21a4:	f361 1389 	bfi	r3, r1, #6, #4
    21a8:	8053      	strh	r3, [r2, #2]
    21aa:	2300      	movs	r3, #0
    21ac:	60bb      	str	r3, [r7, #8]
    21ae:	68fb      	ldr	r3, [r7, #12]
    21b0:	3301      	adds	r3, #1
    21b2:	60fb      	str	r3, [r7, #12]
    21b4:	e00f      	b.n	21d6 <str_to_date+0xfc>
    21b6:	68ba      	ldr	r2, [r7, #8]
    21b8:	4613      	mov	r3, r2
    21ba:	009b      	lsls	r3, r3, #2
    21bc:	4413      	add	r3, r2
    21be:	005b      	lsls	r3, r3, #1
    21c0:	4619      	mov	r1, r3
    21c2:	68fb      	ldr	r3, [r7, #12]
    21c4:	1c5a      	adds	r2, r3, #1
    21c6:	60fa      	str	r2, [r7, #12]
    21c8:	461a      	mov	r2, r3
    21ca:	687b      	ldr	r3, [r7, #4]
    21cc:	4413      	add	r3, r2
    21ce:	781b      	ldrb	r3, [r3, #0]
    21d0:	440b      	add	r3, r1
    21d2:	3b30      	subs	r3, #48	; 0x30
    21d4:	60bb      	str	r3, [r7, #8]
    21d6:	68fb      	ldr	r3, [r7, #12]
    21d8:	687a      	ldr	r2, [r7, #4]
    21da:	4413      	add	r3, r2
    21dc:	781b      	ldrb	r3, [r3, #0]
    21de:	4618      	mov	r0, r3
    21e0:	f7fe ffad 	bl	113e <digit>
    21e4:	4603      	mov	r3, r0
    21e6:	2b00      	cmp	r3, #0
    21e8:	d1e5      	bne.n	21b6 <str_to_date+0xdc>
    21ea:	68fb      	ldr	r3, [r7, #12]
    21ec:	2b09      	cmp	r3, #9
    21ee:	dc01      	bgt.n	21f4 <str_to_date+0x11a>
    21f0:	2300      	movs	r3, #0
    21f2:	e00a      	b.n	220a <str_to_date+0x130>
    21f4:	68bb      	ldr	r3, [r7, #8]
    21f6:	b2db      	uxtb	r3, r3
    21f8:	f003 031f 	and.w	r3, r3, #31
    21fc:	b2d9      	uxtb	r1, r3
    21fe:	683a      	ldr	r2, [r7, #0]
    2200:	7893      	ldrb	r3, [r2, #2]
    2202:	f361 0345 	bfi	r3, r1, #1, #5
    2206:	7093      	strb	r3, [r2, #2]
    2208:	2301      	movs	r3, #1
    220a:	4618      	mov	r0, r3
    220c:	3710      	adds	r7, #16
    220e:	46bd      	mov	sp, r7
    2210:	bd80      	pop	{r7, pc}

00002212 <str_to_time>:
    2212:	b580      	push	{r7, lr}
    2214:	b084      	sub	sp, #16
    2216:	af00      	add	r7, sp, #0
    2218:	6078      	str	r0, [r7, #4]
    221a:	6039      	str	r1, [r7, #0]
    221c:	2300      	movs	r3, #0
    221e:	60fb      	str	r3, [r7, #12]
    2220:	2300      	movs	r3, #0
    2222:	72fb      	strb	r3, [r7, #11]
    2224:	e010      	b.n	2248 <str_to_time+0x36>
    2226:	7afb      	ldrb	r3, [r7, #11]
    2228:	461a      	mov	r2, r3
    222a:	0092      	lsls	r2, r2, #2
    222c:	4413      	add	r3, r2
    222e:	005b      	lsls	r3, r3, #1
    2230:	b2da      	uxtb	r2, r3
    2232:	68fb      	ldr	r3, [r7, #12]
    2234:	1c59      	adds	r1, r3, #1
    2236:	60f9      	str	r1, [r7, #12]
    2238:	4619      	mov	r1, r3
    223a:	687b      	ldr	r3, [r7, #4]
    223c:	440b      	add	r3, r1
    223e:	781b      	ldrb	r3, [r3, #0]
    2240:	4413      	add	r3, r2
    2242:	b2db      	uxtb	r3, r3
    2244:	3b30      	subs	r3, #48	; 0x30
    2246:	72fb      	strb	r3, [r7, #11]
    2248:	68fb      	ldr	r3, [r7, #12]
    224a:	687a      	ldr	r2, [r7, #4]
    224c:	4413      	add	r3, r2
    224e:	781b      	ldrb	r3, [r3, #0]
    2250:	4618      	mov	r0, r3
    2252:	f7fe ff74 	bl	113e <digit>
    2256:	4603      	mov	r3, r0
    2258:	2b00      	cmp	r3, #0
    225a:	d1e4      	bne.n	2226 <str_to_time+0x14>
    225c:	7afb      	ldrb	r3, [r7, #11]
    225e:	2b17      	cmp	r3, #23
    2260:	d805      	bhi.n	226e <str_to_time+0x5c>
    2262:	68fb      	ldr	r3, [r7, #12]
    2264:	687a      	ldr	r2, [r7, #4]
    2266:	4413      	add	r3, r2
    2268:	781b      	ldrb	r3, [r3, #0]
    226a:	2b3a      	cmp	r3, #58	; 0x3a
    226c:	d001      	beq.n	2272 <str_to_time+0x60>
    226e:	2300      	movs	r3, #0
    2270:	e06d      	b.n	234e <str_to_time+0x13c>
    2272:	7afb      	ldrb	r3, [r7, #11]
    2274:	f003 031f 	and.w	r3, r3, #31
    2278:	b2d9      	uxtb	r1, r3
    227a:	683a      	ldr	r2, [r7, #0]
    227c:	6813      	ldr	r3, [r2, #0]
    227e:	f361 3310 	bfi	r3, r1, #12, #5
    2282:	6013      	str	r3, [r2, #0]
    2284:	68fb      	ldr	r3, [r7, #12]
    2286:	3301      	adds	r3, #1
    2288:	60fb      	str	r3, [r7, #12]
    228a:	2300      	movs	r3, #0
    228c:	72fb      	strb	r3, [r7, #11]
    228e:	e010      	b.n	22b2 <str_to_time+0xa0>
    2290:	7afb      	ldrb	r3, [r7, #11]
    2292:	461a      	mov	r2, r3
    2294:	0092      	lsls	r2, r2, #2
    2296:	4413      	add	r3, r2
    2298:	005b      	lsls	r3, r3, #1
    229a:	b2da      	uxtb	r2, r3
    229c:	68fb      	ldr	r3, [r7, #12]
    229e:	1c59      	adds	r1, r3, #1
    22a0:	60f9      	str	r1, [r7, #12]
    22a2:	4619      	mov	r1, r3
    22a4:	687b      	ldr	r3, [r7, #4]
    22a6:	440b      	add	r3, r1
    22a8:	781b      	ldrb	r3, [r3, #0]
    22aa:	4413      	add	r3, r2
    22ac:	b2db      	uxtb	r3, r3
    22ae:	3b30      	subs	r3, #48	; 0x30
    22b0:	72fb      	strb	r3, [r7, #11]
    22b2:	68fb      	ldr	r3, [r7, #12]
    22b4:	687a      	ldr	r2, [r7, #4]
    22b6:	4413      	add	r3, r2
    22b8:	781b      	ldrb	r3, [r3, #0]
    22ba:	4618      	mov	r0, r3
    22bc:	f7fe ff3f 	bl	113e <digit>
    22c0:	4603      	mov	r3, r0
    22c2:	2b00      	cmp	r3, #0
    22c4:	d1e4      	bne.n	2290 <str_to_time+0x7e>
    22c6:	7afb      	ldrb	r3, [r7, #11]
    22c8:	2b3b      	cmp	r3, #59	; 0x3b
    22ca:	d805      	bhi.n	22d8 <str_to_time+0xc6>
    22cc:	68fb      	ldr	r3, [r7, #12]
    22ce:	687a      	ldr	r2, [r7, #4]
    22d0:	4413      	add	r3, r2
    22d2:	781b      	ldrb	r3, [r3, #0]
    22d4:	2b3a      	cmp	r3, #58	; 0x3a
    22d6:	d001      	beq.n	22dc <str_to_time+0xca>
    22d8:	2300      	movs	r3, #0
    22da:	e038      	b.n	234e <str_to_time+0x13c>
    22dc:	7afb      	ldrb	r3, [r7, #11]
    22de:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    22e2:	b2d9      	uxtb	r1, r3
    22e4:	683a      	ldr	r2, [r7, #0]
    22e6:	8813      	ldrh	r3, [r2, #0]
    22e8:	f361 138b 	bfi	r3, r1, #6, #6
    22ec:	8013      	strh	r3, [r2, #0]
    22ee:	2300      	movs	r3, #0
    22f0:	72fb      	strb	r3, [r7, #11]
    22f2:	68fb      	ldr	r3, [r7, #12]
    22f4:	3301      	adds	r3, #1
    22f6:	60fb      	str	r3, [r7, #12]
    22f8:	e010      	b.n	231c <str_to_time+0x10a>
    22fa:	7afb      	ldrb	r3, [r7, #11]
    22fc:	461a      	mov	r2, r3
    22fe:	0092      	lsls	r2, r2, #2
    2300:	4413      	add	r3, r2
    2302:	005b      	lsls	r3, r3, #1
    2304:	b2da      	uxtb	r2, r3
    2306:	68fb      	ldr	r3, [r7, #12]
    2308:	1c59      	adds	r1, r3, #1
    230a:	60f9      	str	r1, [r7, #12]
    230c:	4619      	mov	r1, r3
    230e:	687b      	ldr	r3, [r7, #4]
    2310:	440b      	add	r3, r1
    2312:	781b      	ldrb	r3, [r3, #0]
    2314:	4413      	add	r3, r2
    2316:	b2db      	uxtb	r3, r3
    2318:	3b30      	subs	r3, #48	; 0x30
    231a:	72fb      	strb	r3, [r7, #11]
    231c:	68fb      	ldr	r3, [r7, #12]
    231e:	687a      	ldr	r2, [r7, #4]
    2320:	4413      	add	r3, r2
    2322:	781b      	ldrb	r3, [r3, #0]
    2324:	4618      	mov	r0, r3
    2326:	f7fe ff0a 	bl	113e <digit>
    232a:	4603      	mov	r3, r0
    232c:	2b00      	cmp	r3, #0
    232e:	d1e4      	bne.n	22fa <str_to_time+0xe8>
    2330:	7afb      	ldrb	r3, [r7, #11]
    2332:	2b3b      	cmp	r3, #59	; 0x3b
    2334:	d901      	bls.n	233a <str_to_time+0x128>
    2336:	2300      	movs	r3, #0
    2338:	e009      	b.n	234e <str_to_time+0x13c>
    233a:	7afb      	ldrb	r3, [r7, #11]
    233c:	f003 033f 	and.w	r3, r3, #63	; 0x3f
    2340:	b2d9      	uxtb	r1, r3
    2342:	683a      	ldr	r2, [r7, #0]
    2344:	7813      	ldrb	r3, [r2, #0]
    2346:	f361 0305 	bfi	r3, r1, #0, #6
    234a:	7013      	strb	r3, [r2, #0]
    234c:	2301      	movs	r3, #1
    234e:	4618      	mov	r0, r3
    2350:	3710      	adds	r7, #16
    2352:	46bd      	mov	sp, r7
    2354:	bd80      	pop	{r7, pc}

00002356 <date_str>:
    2356:	b480      	push	{r7}
    2358:	b085      	sub	sp, #20
    235a:	af00      	add	r7, sp, #0
    235c:	6078      	str	r0, [r7, #4]
    235e:	6039      	str	r1, [r7, #0]
    2360:	2300      	movs	r3, #0
    2362:	60fb      	str	r3, [r7, #12]
    2364:	687b      	ldr	r3, [r7, #4]
    2366:	891b      	ldrh	r3, [r3, #8]
    2368:	60bb      	str	r3, [r7, #8]
    236a:	68fb      	ldr	r3, [r7, #12]
    236c:	1c5a      	adds	r2, r3, #1
    236e:	60fa      	str	r2, [r7, #12]
    2370:	461a      	mov	r2, r3
    2372:	683b      	ldr	r3, [r7, #0]
    2374:	4413      	add	r3, r2
    2376:	68ba      	ldr	r2, [r7, #8]
    2378:	495d      	ldr	r1, [pc, #372]	; (24f0 <date_str+0x19a>)
    237a:	fba1 1202 	umull	r1, r2, r1, r2
    237e:	0992      	lsrs	r2, r2, #6
    2380:	b2d2      	uxtb	r2, r2
    2382:	3230      	adds	r2, #48	; 0x30
    2384:	b2d2      	uxtb	r2, r2
    2386:	701a      	strb	r2, [r3, #0]
    2388:	68bb      	ldr	r3, [r7, #8]
    238a:	4a59      	ldr	r2, [pc, #356]	; (24f0 <date_str+0x19a>)
    238c:	fba2 1203 	umull	r1, r2, r2, r3
    2390:	0992      	lsrs	r2, r2, #6
    2392:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
    2396:	fb01 f202 	mul.w	r2, r1, r2
    239a:	1a9b      	subs	r3, r3, r2
    239c:	60bb      	str	r3, [r7, #8]
    239e:	68fb      	ldr	r3, [r7, #12]
    23a0:	1c5a      	adds	r2, r3, #1
    23a2:	60fa      	str	r2, [r7, #12]
    23a4:	461a      	mov	r2, r3
    23a6:	683b      	ldr	r3, [r7, #0]
    23a8:	4413      	add	r3, r2
    23aa:	68ba      	ldr	r2, [r7, #8]
    23ac:	4951      	ldr	r1, [pc, #324]	; (24f4 <date_str+0x19e>)
    23ae:	fba1 1202 	umull	r1, r2, r1, r2
    23b2:	0952      	lsrs	r2, r2, #5
    23b4:	b2d2      	uxtb	r2, r2
    23b6:	3230      	adds	r2, #48	; 0x30
    23b8:	b2d2      	uxtb	r2, r2
    23ba:	701a      	strb	r2, [r3, #0]
    23bc:	68bb      	ldr	r3, [r7, #8]
    23be:	4a4d      	ldr	r2, [pc, #308]	; (24f4 <date_str+0x19e>)
    23c0:	fba2 1203 	umull	r1, r2, r2, r3
    23c4:	0952      	lsrs	r2, r2, #5
    23c6:	2164      	movs	r1, #100	; 0x64
    23c8:	fb01 f202 	mul.w	r2, r1, r2
    23cc:	1a9b      	subs	r3, r3, r2
    23ce:	60bb      	str	r3, [r7, #8]
    23d0:	68fb      	ldr	r3, [r7, #12]
    23d2:	1c5a      	adds	r2, r3, #1
    23d4:	60fa      	str	r2, [r7, #12]
    23d6:	461a      	mov	r2, r3
    23d8:	683b      	ldr	r3, [r7, #0]
    23da:	4413      	add	r3, r2
    23dc:	68ba      	ldr	r2, [r7, #8]
    23de:	4946      	ldr	r1, [pc, #280]	; (24f8 <date_str+0x1a2>)
    23e0:	fba1 1202 	umull	r1, r2, r1, r2
    23e4:	08d2      	lsrs	r2, r2, #3
    23e6:	b2d2      	uxtb	r2, r2
    23e8:	3230      	adds	r2, #48	; 0x30
    23ea:	b2d2      	uxtb	r2, r2
    23ec:	701a      	strb	r2, [r3, #0]
    23ee:	68fb      	ldr	r3, [r7, #12]
    23f0:	1c5a      	adds	r2, r3, #1
    23f2:	60fa      	str	r2, [r7, #12]
    23f4:	461a      	mov	r2, r3
    23f6:	683b      	ldr	r3, [r7, #0]
    23f8:	1898      	adds	r0, r3, r2
    23fa:	68b9      	ldr	r1, [r7, #8]
    23fc:	4b3e      	ldr	r3, [pc, #248]	; (24f8 <date_str+0x1a2>)
    23fe:	fba3 2301 	umull	r2, r3, r3, r1
    2402:	08da      	lsrs	r2, r3, #3
    2404:	4613      	mov	r3, r2
    2406:	009b      	lsls	r3, r3, #2
    2408:	4413      	add	r3, r2
    240a:	005b      	lsls	r3, r3, #1
    240c:	1aca      	subs	r2, r1, r3
    240e:	b2d3      	uxtb	r3, r2
    2410:	3330      	adds	r3, #48	; 0x30
    2412:	b2db      	uxtb	r3, r3
    2414:	7003      	strb	r3, [r0, #0]
    2416:	68fb      	ldr	r3, [r7, #12]
    2418:	1c5a      	adds	r2, r3, #1
    241a:	60fa      	str	r2, [r7, #12]
    241c:	461a      	mov	r2, r3
    241e:	683b      	ldr	r3, [r7, #0]
    2420:	4413      	add	r3, r2
    2422:	222f      	movs	r2, #47	; 0x2f
    2424:	701a      	strb	r2, [r3, #0]
    2426:	687b      	ldr	r3, [r7, #4]
    2428:	885b      	ldrh	r3, [r3, #2]
    242a:	f3c3 1383 	ubfx	r3, r3, #6, #4
    242e:	b2db      	uxtb	r3, r3
    2430:	60bb      	str	r3, [r7, #8]
    2432:	68fb      	ldr	r3, [r7, #12]
    2434:	1c5a      	adds	r2, r3, #1
    2436:	60fa      	str	r2, [r7, #12]
    2438:	461a      	mov	r2, r3
    243a:	683b      	ldr	r3, [r7, #0]
    243c:	4413      	add	r3, r2
    243e:	68ba      	ldr	r2, [r7, #8]
    2440:	492d      	ldr	r1, [pc, #180]	; (24f8 <date_str+0x1a2>)
    2442:	fba1 1202 	umull	r1, r2, r1, r2
    2446:	08d2      	lsrs	r2, r2, #3
    2448:	b2d2      	uxtb	r2, r2
    244a:	3230      	adds	r2, #48	; 0x30
    244c:	b2d2      	uxtb	r2, r2
    244e:	701a      	strb	r2, [r3, #0]
    2450:	68fb      	ldr	r3, [r7, #12]
    2452:	1c5a      	adds	r2, r3, #1
    2454:	60fa      	str	r2, [r7, #12]
    2456:	461a      	mov	r2, r3
    2458:	683b      	ldr	r3, [r7, #0]
    245a:	1898      	adds	r0, r3, r2
    245c:	68b9      	ldr	r1, [r7, #8]
    245e:	4b26      	ldr	r3, [pc, #152]	; (24f8 <date_str+0x1a2>)
    2460:	fba3 2301 	umull	r2, r3, r3, r1
    2464:	08da      	lsrs	r2, r3, #3
    2466:	4613      	mov	r3, r2
    2468:	009b      	lsls	r3, r3, #2
    246a:	4413      	add	r3, r2
    246c:	005b      	lsls	r3, r3, #1
    246e:	1aca      	subs	r2, r1, r3
    2470:	b2d3      	uxtb	r3, r2
    2472:	3330      	adds	r3, #48	; 0x30
    2474:	b2db      	uxtb	r3, r3
    2476:	7003      	strb	r3, [r0, #0]
    2478:	68fb      	ldr	r3, [r7, #12]
    247a:	1c5a      	adds	r2, r3, #1
    247c:	60fa      	str	r2, [r7, #12]
    247e:	461a      	mov	r2, r3
    2480:	683b      	ldr	r3, [r7, #0]
    2482:	4413      	add	r3, r2
    2484:	222f      	movs	r2, #47	; 0x2f
    2486:	701a      	strb	r2, [r3, #0]
    2488:	687b      	ldr	r3, [r7, #4]
    248a:	789b      	ldrb	r3, [r3, #2]
    248c:	f3c3 0344 	ubfx	r3, r3, #1, #5
    2490:	b2db      	uxtb	r3, r3
    2492:	60bb      	str	r3, [r7, #8]
    2494:	68fb      	ldr	r3, [r7, #12]
    2496:	1c5a      	adds	r2, r3, #1
    2498:	60fa      	str	r2, [r7, #12]
    249a:	461a      	mov	r2, r3
    249c:	683b      	ldr	r3, [r7, #0]
    249e:	4413      	add	r3, r2
    24a0:	68ba      	ldr	r2, [r7, #8]
    24a2:	4915      	ldr	r1, [pc, #84]	; (24f8 <date_str+0x1a2>)
    24a4:	fba1 1202 	umull	r1, r2, r1, r2
    24a8:	08d2      	lsrs	r2, r2, #3
    24aa:	b2d2      	uxtb	r2, r2
    24ac:	3230      	adds	r2, #48	; 0x30
    24ae:	b2d2      	uxtb	r2, r2
    24b0:	701a      	strb	r2, [r3, #0]
    24b2:	68fb      	ldr	r3, [r7, #12]
    24b4:	1c5a      	adds	r2, r3, #1
    24b6:	60fa      	str	r2, [r7, #12]
    24b8:	461a      	mov	r2, r3
    24ba:	683b      	ldr	r3, [r7, #0]
    24bc:	1898      	adds	r0, r3, r2
    24be:	68b9      	ldr	r1, [r7, #8]
    24c0:	4b0d      	ldr	r3, [pc, #52]	; (24f8 <date_str+0x1a2>)
    24c2:	fba3 2301 	umull	r2, r3, r3, r1
    24c6:	08da      	lsrs	r2, r3, #3
    24c8:	4613      	mov	r3, r2
    24ca:	009b      	lsls	r3, r3, #2
    24cc:	4413      	add	r3, r2
    24ce:	005b      	lsls	r3, r3, #1
    24d0:	1aca      	subs	r2, r1, r3
    24d2:	b2d3      	uxtb	r3, r2
    24d4:	3330      	adds	r3, #48	; 0x30
    24d6:	b2db      	uxtb	r3, r3
    24d8:	7003      	strb	r3, [r0, #0]
    24da:	68fb      	ldr	r3, [r7, #12]
    24dc:	683a      	ldr	r2, [r7, #0]
    24de:	4413      	add	r3, r2
    24e0:	2200      	movs	r2, #0
    24e2:	701a      	strb	r2, [r3, #0]
    24e4:	bf00      	nop
    24e6:	3714      	adds	r7, #20
    24e8:	46bd      	mov	sp, r7
    24ea:	bc80      	pop	{r7}
    24ec:	4770      	bx	lr
    24ee:	bf00      	nop
    24f0:	10624dd3 	.word	0x10624dd3
    24f4:	51eb851f 	.word	0x51eb851f
    24f8:	cccccccd 	.word	0xcccccccd

000024fc <time_str>:
    24fc:	b480      	push	{r7}
    24fe:	b085      	sub	sp, #20
    2500:	af00      	add	r7, sp, #0
    2502:	6078      	str	r0, [r7, #4]
    2504:	6039      	str	r1, [r7, #0]
    2506:	2300      	movs	r3, #0
    2508:	60fb      	str	r3, [r7, #12]
    250a:	687b      	ldr	r3, [r7, #4]
    250c:	681b      	ldr	r3, [r3, #0]
    250e:	f3c3 3304 	ubfx	r3, r3, #12, #5
    2512:	b2db      	uxtb	r3, r3
    2514:	60bb      	str	r3, [r7, #8]
    2516:	68fb      	ldr	r3, [r7, #12]
    2518:	1c5a      	adds	r2, r3, #1
    251a:	60fa      	str	r2, [r7, #12]
    251c:	461a      	mov	r2, r3
    251e:	683b      	ldr	r3, [r7, #0]
    2520:	4413      	add	r3, r2
    2522:	68ba      	ldr	r2, [r7, #8]
    2524:	4943      	ldr	r1, [pc, #268]	; (2634 <time_str+0x138>)
    2526:	fba1 1202 	umull	r1, r2, r1, r2
    252a:	08d2      	lsrs	r2, r2, #3
    252c:	b2d2      	uxtb	r2, r2
    252e:	3230      	adds	r2, #48	; 0x30
    2530:	b2d2      	uxtb	r2, r2
    2532:	701a      	strb	r2, [r3, #0]
    2534:	68fb      	ldr	r3, [r7, #12]
    2536:	1c5a      	adds	r2, r3, #1
    2538:	60fa      	str	r2, [r7, #12]
    253a:	461a      	mov	r2, r3
    253c:	683b      	ldr	r3, [r7, #0]
    253e:	1898      	adds	r0, r3, r2
    2540:	68b9      	ldr	r1, [r7, #8]
    2542:	4b3c      	ldr	r3, [pc, #240]	; (2634 <time_str+0x138>)
    2544:	fba3 2301 	umull	r2, r3, r3, r1
    2548:	08da      	lsrs	r2, r3, #3
    254a:	4613      	mov	r3, r2
    254c:	009b      	lsls	r3, r3, #2
    254e:	4413      	add	r3, r2
    2550:	005b      	lsls	r3, r3, #1
    2552:	1aca      	subs	r2, r1, r3
    2554:	b2d3      	uxtb	r3, r2
    2556:	3330      	adds	r3, #48	; 0x30
    2558:	b2db      	uxtb	r3, r3
    255a:	7003      	strb	r3, [r0, #0]
    255c:	68fb      	ldr	r3, [r7, #12]
    255e:	1c5a      	adds	r2, r3, #1
    2560:	60fa      	str	r2, [r7, #12]
    2562:	461a      	mov	r2, r3
    2564:	683b      	ldr	r3, [r7, #0]
    2566:	4413      	add	r3, r2
    2568:	223a      	movs	r2, #58	; 0x3a
    256a:	701a      	strb	r2, [r3, #0]
    256c:	687b      	ldr	r3, [r7, #4]
    256e:	881b      	ldrh	r3, [r3, #0]
    2570:	f3c3 1385 	ubfx	r3, r3, #6, #6
    2574:	b2db      	uxtb	r3, r3
    2576:	60bb      	str	r3, [r7, #8]
    2578:	68fb      	ldr	r3, [r7, #12]
    257a:	1c5a      	adds	r2, r3, #1
    257c:	60fa      	str	r2, [r7, #12]
    257e:	461a      	mov	r2, r3
    2580:	683b      	ldr	r3, [r7, #0]
    2582:	4413      	add	r3, r2
    2584:	68ba      	ldr	r2, [r7, #8]
    2586:	492b      	ldr	r1, [pc, #172]	; (2634 <time_str+0x138>)
    2588:	fba1 1202 	umull	r1, r2, r1, r2
    258c:	08d2      	lsrs	r2, r2, #3
    258e:	b2d2      	uxtb	r2, r2
    2590:	3230      	adds	r2, #48	; 0x30
    2592:	b2d2      	uxtb	r2, r2
    2594:	701a      	strb	r2, [r3, #0]
    2596:	68fb      	ldr	r3, [r7, #12]
    2598:	1c5a      	adds	r2, r3, #1
    259a:	60fa      	str	r2, [r7, #12]
    259c:	461a      	mov	r2, r3
    259e:	683b      	ldr	r3, [r7, #0]
    25a0:	1898      	adds	r0, r3, r2
    25a2:	68b9      	ldr	r1, [r7, #8]
    25a4:	4b23      	ldr	r3, [pc, #140]	; (2634 <time_str+0x138>)
    25a6:	fba3 2301 	umull	r2, r3, r3, r1
    25aa:	08da      	lsrs	r2, r3, #3
    25ac:	4613      	mov	r3, r2
    25ae:	009b      	lsls	r3, r3, #2
    25b0:	4413      	add	r3, r2
    25b2:	005b      	lsls	r3, r3, #1
    25b4:	1aca      	subs	r2, r1, r3
    25b6:	b2d3      	uxtb	r3, r2
    25b8:	3330      	adds	r3, #48	; 0x30
    25ba:	b2db      	uxtb	r3, r3
    25bc:	7003      	strb	r3, [r0, #0]
    25be:	68fb      	ldr	r3, [r7, #12]
    25c0:	1c5a      	adds	r2, r3, #1
    25c2:	60fa      	str	r2, [r7, #12]
    25c4:	461a      	mov	r2, r3
    25c6:	683b      	ldr	r3, [r7, #0]
    25c8:	4413      	add	r3, r2
    25ca:	223a      	movs	r2, #58	; 0x3a
    25cc:	701a      	strb	r2, [r3, #0]
    25ce:	687b      	ldr	r3, [r7, #4]
    25d0:	781b      	ldrb	r3, [r3, #0]
    25d2:	f3c3 0305 	ubfx	r3, r3, #0, #6
    25d6:	b2db      	uxtb	r3, r3
    25d8:	60bb      	str	r3, [r7, #8]
    25da:	68fb      	ldr	r3, [r7, #12]
    25dc:	1c5a      	adds	r2, r3, #1
    25de:	60fa      	str	r2, [r7, #12]
    25e0:	461a      	mov	r2, r3
    25e2:	683b      	ldr	r3, [r7, #0]
    25e4:	4413      	add	r3, r2
    25e6:	68ba      	ldr	r2, [r7, #8]
    25e8:	4912      	ldr	r1, [pc, #72]	; (2634 <time_str+0x138>)
    25ea:	fba1 1202 	umull	r1, r2, r1, r2
    25ee:	08d2      	lsrs	r2, r2, #3
    25f0:	b2d2      	uxtb	r2, r2
    25f2:	3230      	adds	r2, #48	; 0x30
    25f4:	b2d2      	uxtb	r2, r2
    25f6:	701a      	strb	r2, [r3, #0]
    25f8:	68fb      	ldr	r3, [r7, #12]
    25fa:	1c5a      	adds	r2, r3, #1
    25fc:	60fa      	str	r2, [r7, #12]
    25fe:	461a      	mov	r2, r3
    2600:	683b      	ldr	r3, [r7, #0]
    2602:	1898      	adds	r0, r3, r2
    2604:	68b9      	ldr	r1, [r7, #8]
    2606:	4b0b      	ldr	r3, [pc, #44]	; (2634 <time_str+0x138>)
    2608:	fba3 2301 	umull	r2, r3, r3, r1
    260c:	08da      	lsrs	r2, r3, #3
    260e:	4613      	mov	r3, r2
    2610:	009b      	lsls	r3, r3, #2
    2612:	4413      	add	r3, r2
    2614:	005b      	lsls	r3, r3, #1
    2616:	1aca      	subs	r2, r1, r3
    2618:	b2d3      	uxtb	r3, r2
    261a:	3330      	adds	r3, #48	; 0x30
    261c:	b2db      	uxtb	r3, r3
    261e:	7003      	strb	r3, [r0, #0]
    2620:	68fb      	ldr	r3, [r7, #12]
    2622:	683a      	ldr	r2, [r7, #0]
    2624:	4413      	add	r3, r2
    2626:	2200      	movs	r2, #0
    2628:	701a      	strb	r2, [r3, #0]
    262a:	bf00      	nop
    262c:	3714      	adds	r7, #20
    262e:	46bd      	mov	sp, r7
    2630:	bc80      	pop	{r7}
    2632:	4770      	bx	lr
    2634:	cccccccd 	.word	0xcccccccd

00002638 <get_fattime>:
    2638:	b580      	push	{r7, lr}
    263a:	b084      	sub	sp, #16
    263c:	af00      	add	r7, sp, #0
    263e:	463b      	mov	r3, r7
    2640:	4618      	mov	r0, r3
    2642:	f7ff fa69 	bl	1b18 <get_date_time>
    2646:	783b      	ldrb	r3, [r7, #0]
    2648:	f3c3 0305 	ubfx	r3, r3, #0, #6
    264c:	b2db      	uxtb	r3, r3
    264e:	0fda      	lsrs	r2, r3, #31
    2650:	4413      	add	r3, r2
    2652:	105b      	asrs	r3, r3, #1
    2654:	b2db      	uxtb	r3, r3
    2656:	f003 031f 	and.w	r3, r3, #31
    265a:	b2da      	uxtb	r2, r3
    265c:	7b3b      	ldrb	r3, [r7, #12]
    265e:	f362 0304 	bfi	r3, r2, #0, #5
    2662:	733b      	strb	r3, [r7, #12]
    2664:	883b      	ldrh	r3, [r7, #0]
    2666:	f3c3 1385 	ubfx	r3, r3, #6, #6
    266a:	b2da      	uxtb	r2, r3
    266c:	89bb      	ldrh	r3, [r7, #12]
    266e:	f362 134a 	bfi	r3, r2, #5, #6
    2672:	81bb      	strh	r3, [r7, #12]
    2674:	683b      	ldr	r3, [r7, #0]
    2676:	f3c3 3304 	ubfx	r3, r3, #12, #5
    267a:	b2da      	uxtb	r2, r3
    267c:	7b7b      	ldrb	r3, [r7, #13]
    267e:	f362 03c7 	bfi	r3, r2, #3, #5
    2682:	737b      	strb	r3, [r7, #13]
    2684:	78bb      	ldrb	r3, [r7, #2]
    2686:	f3c3 0344 	ubfx	r3, r3, #1, #5
    268a:	b2da      	uxtb	r2, r3
    268c:	7bbb      	ldrb	r3, [r7, #14]
    268e:	f362 0304 	bfi	r3, r2, #0, #5
    2692:	73bb      	strb	r3, [r7, #14]
    2694:	887b      	ldrh	r3, [r7, #2]
    2696:	f3c3 1383 	ubfx	r3, r3, #6, #4
    269a:	b2da      	uxtb	r2, r3
    269c:	89fb      	ldrh	r3, [r7, #14]
    269e:	f362 1348 	bfi	r3, r2, #5, #4
    26a2:	81fb      	strh	r3, [r7, #14]
    26a4:	893b      	ldrh	r3, [r7, #8]
    26a6:	b2db      	uxtb	r3, r3
    26a8:	3344      	adds	r3, #68	; 0x44
    26aa:	b2db      	uxtb	r3, r3
    26ac:	f003 037f 	and.w	r3, r3, #127	; 0x7f
    26b0:	b2da      	uxtb	r2, r3
    26b2:	7bfb      	ldrb	r3, [r7, #15]
    26b4:	f362 0347 	bfi	r3, r2, #1, #7
    26b8:	73fb      	strb	r3, [r7, #15]
    26ba:	68fb      	ldr	r3, [r7, #12]
    26bc:	4618      	mov	r0, r3
    26be:	3710      	adds	r7, #16
    26c0:	46bd      	mov	sp, r7
    26c2:	bd80      	pop	{r7, pc}

000026c4 <RTC_handler>:
    26c4:	b480      	push	{r7}
    26c6:	b083      	sub	sp, #12
    26c8:	af00      	add	r7, sp, #0
    26ca:	4b0a      	ldr	r3, [pc, #40]	; (26f4 <RTC_handler+0x30>)
    26cc:	685b      	ldr	r3, [r3, #4]
    26ce:	f003 0301 	and.w	r3, r3, #1
    26d2:	2b00      	cmp	r3, #0
    26d4:	d001      	beq.n	26da <RTC_handler+0x16>
    26d6:	4b07      	ldr	r3, [pc, #28]	; (26f4 <RTC_handler+0x30>)
    26d8:	685b      	ldr	r3, [r3, #4]
    26da:	4b06      	ldr	r3, [pc, #24]	; (26f4 <RTC_handler+0x30>)
    26dc:	685b      	ldr	r3, [r3, #4]
    26de:	f003 0302 	and.w	r3, r3, #2
    26e2:	2b00      	cmp	r3, #0
    26e4:	d001      	beq.n	26ea <RTC_handler+0x26>
    26e6:	4b03      	ldr	r3, [pc, #12]	; (26f4 <RTC_handler+0x30>)
    26e8:	685b      	ldr	r3, [r3, #4]
    26ea:	bf00      	nop
    26ec:	370c      	adds	r7, #12
    26ee:	46bd      	mov	sp, r7
    26f0:	bc80      	pop	{r7}
    26f2:	4770      	bx	lr
    26f4:	40002800 	.word	0x40002800

000026f8 <spi_baudrate>:
    26f8:	b480      	push	{r7}
    26fa:	b083      	sub	sp, #12
    26fc:	af00      	add	r7, sp, #0
    26fe:	6078      	str	r0, [r7, #4]
    2700:	6039      	str	r1, [r7, #0]
    2702:	687b      	ldr	r3, [r7, #4]
    2704:	681b      	ldr	r3, [r3, #0]
    2706:	f023 0238 	bic.w	r2, r3, #56	; 0x38
    270a:	687b      	ldr	r3, [r7, #4]
    270c:	601a      	str	r2, [r3, #0]
    270e:	687b      	ldr	r3, [r7, #4]
    2710:	681a      	ldr	r2, [r3, #0]
    2712:	683b      	ldr	r3, [r7, #0]
    2714:	00db      	lsls	r3, r3, #3
    2716:	431a      	orrs	r2, r3
    2718:	687b      	ldr	r3, [r7, #4]
    271a:	601a      	str	r2, [r3, #0]
    271c:	bf00      	nop
    271e:	370c      	adds	r7, #12
    2720:	46bd      	mov	sp, r7
    2722:	bc80      	pop	{r7}
    2724:	4770      	bx	lr

00002726 <spi_config_port>:
    2726:	b580      	push	{r7, lr}
    2728:	b082      	sub	sp, #8
    272a:	af00      	add	r7, sp, #0
    272c:	6078      	str	r0, [r7, #4]
    272e:	6039      	str	r1, [r7, #0]
    2730:	4a33      	ldr	r2, [pc, #204]	; (2800 <spi_config_port+0xda>)
    2732:	4b33      	ldr	r3, [pc, #204]	; (2800 <spi_config_port+0xda>)
    2734:	699b      	ldr	r3, [r3, #24]
    2736:	f043 0301 	orr.w	r3, r3, #1
    273a:	6193      	str	r3, [r2, #24]
    273c:	687b      	ldr	r3, [r7, #4]
    273e:	4a31      	ldr	r2, [pc, #196]	; (2804 <spi_config_port+0xde>)
    2740:	4293      	cmp	r3, r2
    2742:	d13e      	bne.n	27c2 <spi_config_port+0x9c>
    2744:	683b      	ldr	r3, [r7, #0]
    2746:	2b00      	cmp	r3, #0
    2748:	d11a      	bne.n	2780 <spi_config_port+0x5a>
    274a:	4a2d      	ldr	r2, [pc, #180]	; (2800 <spi_config_port+0xda>)
    274c:	4b2c      	ldr	r3, [pc, #176]	; (2800 <spi_config_port+0xda>)
    274e:	699b      	ldr	r3, [r3, #24]
    2750:	f043 0304 	orr.w	r3, r3, #4
    2754:	6193      	str	r3, [r2, #24]
    2756:	2203      	movs	r2, #3
    2758:	2104      	movs	r1, #4
    275a:	482b      	ldr	r0, [pc, #172]	; (2808 <spi_config_port+0xe2>)
    275c:	f7fe fef7 	bl	154e <config_pin>
    2760:	220b      	movs	r2, #11
    2762:	2105      	movs	r1, #5
    2764:	4828      	ldr	r0, [pc, #160]	; (2808 <spi_config_port+0xe2>)
    2766:	f7fe fef2 	bl	154e <config_pin>
    276a:	2204      	movs	r2, #4
    276c:	2106      	movs	r1, #6
    276e:	4826      	ldr	r0, [pc, #152]	; (2808 <spi_config_port+0xe2>)
    2770:	f7fe feed 	bl	154e <config_pin>
    2774:	220b      	movs	r2, #11
    2776:	2107      	movs	r1, #7
    2778:	4823      	ldr	r0, [pc, #140]	; (2808 <spi_config_port+0xe2>)
    277a:	f7fe fee8 	bl	154e <config_pin>
    277e:	e03a      	b.n	27f6 <spi_config_port+0xd0>
    2780:	4a1f      	ldr	r2, [pc, #124]	; (2800 <spi_config_port+0xda>)
    2782:	4b1f      	ldr	r3, [pc, #124]	; (2800 <spi_config_port+0xda>)
    2784:	699b      	ldr	r3, [r3, #24]
    2786:	f043 030d 	orr.w	r3, r3, #13
    278a:	6193      	str	r3, [r2, #24]
    278c:	4a1f      	ldr	r2, [pc, #124]	; (280c <spi_config_port+0xe6>)
    278e:	4b1f      	ldr	r3, [pc, #124]	; (280c <spi_config_port+0xe6>)
    2790:	685b      	ldr	r3, [r3, #4]
    2792:	f043 0301 	orr.w	r3, r3, #1
    2796:	6053      	str	r3, [r2, #4]
    2798:	2203      	movs	r2, #3
    279a:	210f      	movs	r1, #15
    279c:	481a      	ldr	r0, [pc, #104]	; (2808 <spi_config_port+0xe2>)
    279e:	f7fe fed6 	bl	154e <config_pin>
    27a2:	220b      	movs	r2, #11
    27a4:	2103      	movs	r1, #3
    27a6:	481a      	ldr	r0, [pc, #104]	; (2810 <spi_config_port+0xea>)
    27a8:	f7fe fed1 	bl	154e <config_pin>
    27ac:	2204      	movs	r2, #4
    27ae:	2104      	movs	r1, #4
    27b0:	4817      	ldr	r0, [pc, #92]	; (2810 <spi_config_port+0xea>)
    27b2:	f7fe fecc 	bl	154e <config_pin>
    27b6:	220b      	movs	r2, #11
    27b8:	2105      	movs	r1, #5
    27ba:	4815      	ldr	r0, [pc, #84]	; (2810 <spi_config_port+0xea>)
    27bc:	f7fe fec7 	bl	154e <config_pin>
    27c0:	e019      	b.n	27f6 <spi_config_port+0xd0>
    27c2:	4a0f      	ldr	r2, [pc, #60]	; (2800 <spi_config_port+0xda>)
    27c4:	4b0e      	ldr	r3, [pc, #56]	; (2800 <spi_config_port+0xda>)
    27c6:	699b      	ldr	r3, [r3, #24]
    27c8:	f043 0308 	orr.w	r3, r3, #8
    27cc:	6193      	str	r3, [r2, #24]
    27ce:	2203      	movs	r2, #3
    27d0:	2102      	movs	r1, #2
    27d2:	480f      	ldr	r0, [pc, #60]	; (2810 <spi_config_port+0xea>)
    27d4:	f7fe febb 	bl	154e <config_pin>
    27d8:	220b      	movs	r2, #11
    27da:	210d      	movs	r1, #13
    27dc:	480c      	ldr	r0, [pc, #48]	; (2810 <spi_config_port+0xea>)
    27de:	f7fe feb6 	bl	154e <config_pin>
    27e2:	2204      	movs	r2, #4
    27e4:	210e      	movs	r1, #14
    27e6:	480a      	ldr	r0, [pc, #40]	; (2810 <spi_config_port+0xea>)
    27e8:	f7fe feb1 	bl	154e <config_pin>
    27ec:	220b      	movs	r2, #11
    27ee:	210f      	movs	r1, #15
    27f0:	4807      	ldr	r0, [pc, #28]	; (2810 <spi_config_port+0xea>)
    27f2:	f7fe feac 	bl	154e <config_pin>
    27f6:	bf00      	nop
    27f8:	3708      	adds	r7, #8
    27fa:	46bd      	mov	sp, r7
    27fc:	bd80      	pop	{r7, pc}
    27fe:	bf00      	nop
    2800:	40021000 	.word	0x40021000
    2804:	40013000 	.word	0x40013000
    2808:	40010800 	.word	0x40010800
    280c:	40010000 	.word	0x40010000
    2810:	40010c00 	.word	0x40010c00

00002814 <spi_init>:
    2814:	b580      	push	{r7, lr}
    2816:	b084      	sub	sp, #16
    2818:	af00      	add	r7, sp, #0
    281a:	60f8      	str	r0, [r7, #12]
    281c:	60b9      	str	r1, [r7, #8]
    281e:	607a      	str	r2, [r7, #4]
    2820:	603b      	str	r3, [r7, #0]
    2822:	6839      	ldr	r1, [r7, #0]
    2824:	68f8      	ldr	r0, [r7, #12]
    2826:	f7ff ff7e 	bl	2726 <spi_config_port>
    282a:	68fb      	ldr	r3, [r7, #12]
    282c:	4a10      	ldr	r2, [pc, #64]	; (2870 <spi_init+0x5c>)
    282e:	4293      	cmp	r3, r2
    2830:	d106      	bne.n	2840 <spi_init+0x2c>
    2832:	4a10      	ldr	r2, [pc, #64]	; (2874 <spi_init+0x60>)
    2834:	4b0f      	ldr	r3, [pc, #60]	; (2874 <spi_init+0x60>)
    2836:	699b      	ldr	r3, [r3, #24]
    2838:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
    283c:	6193      	str	r3, [r2, #24]
    283e:	e005      	b.n	284c <spi_init+0x38>
    2840:	4a0c      	ldr	r2, [pc, #48]	; (2874 <spi_init+0x60>)
    2842:	4b0c      	ldr	r3, [pc, #48]	; (2874 <spi_init+0x60>)
    2844:	69db      	ldr	r3, [r3, #28]
    2846:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    284a:	61d3      	str	r3, [r2, #28]
    284c:	68fb      	ldr	r3, [r7, #12]
    284e:	687a      	ldr	r2, [r7, #4]
    2850:	601a      	str	r2, [r3, #0]
    2852:	68b9      	ldr	r1, [r7, #8]
    2854:	68f8      	ldr	r0, [r7, #12]
    2856:	f7ff ff4f 	bl	26f8 <spi_baudrate>
    285a:	68fb      	ldr	r3, [r7, #12]
    285c:	681b      	ldr	r3, [r3, #0]
    285e:	f043 0240 	orr.w	r2, r3, #64	; 0x40
    2862:	68fb      	ldr	r3, [r7, #12]
    2864:	601a      	str	r2, [r3, #0]
    2866:	bf00      	nop
    2868:	3710      	adds	r7, #16
    286a:	46bd      	mov	sp, r7
    286c:	bd80      	pop	{r7, pc}
    286e:	bf00      	nop
    2870:	40013000 	.word	0x40013000
    2874:	40021000 	.word	0x40021000

00002878 <spi_send>:
    2878:	b480      	push	{r7}
    287a:	b085      	sub	sp, #20
    287c:	af00      	add	r7, sp, #0
    287e:	6078      	str	r0, [r7, #4]
    2880:	460b      	mov	r3, r1
    2882:	70fb      	strb	r3, [r7, #3]
    2884:	bf00      	nop
    2886:	687b      	ldr	r3, [r7, #4]
    2888:	689b      	ldr	r3, [r3, #8]
    288a:	f003 0302 	and.w	r3, r3, #2
    288e:	2b00      	cmp	r3, #0
    2890:	d0f9      	beq.n	2886 <spi_send+0xe>
    2892:	78fa      	ldrb	r2, [r7, #3]
    2894:	687b      	ldr	r3, [r7, #4]
    2896:	60da      	str	r2, [r3, #12]
    2898:	bf00      	nop
    289a:	687b      	ldr	r3, [r7, #4]
    289c:	689b      	ldr	r3, [r3, #8]
    289e:	f003 0301 	and.w	r3, r3, #1
    28a2:	2b00      	cmp	r3, #0
    28a4:	d0f9      	beq.n	289a <spi_send+0x22>
    28a6:	687b      	ldr	r3, [r7, #4]
    28a8:	68db      	ldr	r3, [r3, #12]
    28aa:	73fb      	strb	r3, [r7, #15]
    28ac:	bf00      	nop
    28ae:	3714      	adds	r7, #20
    28b0:	46bd      	mov	sp, r7
    28b2:	bc80      	pop	{r7}
    28b4:	4770      	bx	lr

000028b6 <spi_receive>:
    28b6:	b480      	push	{r7}
    28b8:	b085      	sub	sp, #20
    28ba:	af00      	add	r7, sp, #0
    28bc:	6078      	str	r0, [r7, #4]
    28be:	bf00      	nop
    28c0:	687b      	ldr	r3, [r7, #4]
    28c2:	689b      	ldr	r3, [r3, #8]
    28c4:	f003 0302 	and.w	r3, r3, #2
    28c8:	2b00      	cmp	r3, #0
    28ca:	d0f9      	beq.n	28c0 <spi_receive+0xa>
    28cc:	687b      	ldr	r3, [r7, #4]
    28ce:	22ff      	movs	r2, #255	; 0xff
    28d0:	60da      	str	r2, [r3, #12]
    28d2:	bf00      	nop
    28d4:	687b      	ldr	r3, [r7, #4]
    28d6:	689b      	ldr	r3, [r3, #8]
    28d8:	f003 0301 	and.w	r3, r3, #1
    28dc:	2b00      	cmp	r3, #0
    28de:	d0f9      	beq.n	28d4 <spi_receive+0x1e>
    28e0:	687b      	ldr	r3, [r7, #4]
    28e2:	68db      	ldr	r3, [r3, #12]
    28e4:	73fb      	strb	r3, [r7, #15]
    28e6:	7bfb      	ldrb	r3, [r7, #15]
    28e8:	4618      	mov	r0, r3
    28ea:	3714      	adds	r7, #20
    28ec:	46bd      	mov	sp, r7
    28ee:	bc80      	pop	{r7}
    28f0:	4770      	bx	lr

000028f2 <spi_send_block>:
    28f2:	b480      	push	{r7}
    28f4:	b087      	sub	sp, #28
    28f6:	af00      	add	r7, sp, #0
    28f8:	60f8      	str	r0, [r7, #12]
    28fa:	60b9      	str	r1, [r7, #8]
    28fc:	607a      	str	r2, [r7, #4]
    28fe:	e010      	b.n	2922 <spi_send_block+0x30>
    2900:	68bb      	ldr	r3, [r7, #8]
    2902:	1c5a      	adds	r2, r3, #1
    2904:	60ba      	str	r2, [r7, #8]
    2906:	781b      	ldrb	r3, [r3, #0]
    2908:	461a      	mov	r2, r3
    290a:	68fb      	ldr	r3, [r7, #12]
    290c:	60da      	str	r2, [r3, #12]
    290e:	bf00      	nop
    2910:	68fb      	ldr	r3, [r7, #12]
    2912:	689b      	ldr	r3, [r3, #8]
    2914:	f003 0302 	and.w	r3, r3, #2
    2918:	2b00      	cmp	r3, #0
    291a:	d0f9      	beq.n	2910 <spi_send_block+0x1e>
    291c:	687b      	ldr	r3, [r7, #4]
    291e:	3b01      	subs	r3, #1
    2920:	607b      	str	r3, [r7, #4]
    2922:	687b      	ldr	r3, [r7, #4]
    2924:	2b00      	cmp	r3, #0
    2926:	d1eb      	bne.n	2900 <spi_send_block+0xe>
    2928:	bf00      	nop
    292a:	68fb      	ldr	r3, [r7, #12]
    292c:	689b      	ldr	r3, [r3, #8]
    292e:	f003 0380 	and.w	r3, r3, #128	; 0x80
    2932:	2b00      	cmp	r3, #0
    2934:	d1f9      	bne.n	292a <spi_send_block+0x38>
    2936:	68fb      	ldr	r3, [r7, #12]
    2938:	68db      	ldr	r3, [r3, #12]
    293a:	75fb      	strb	r3, [r7, #23]
    293c:	bf00      	nop
    293e:	371c      	adds	r7, #28
    2940:	46bd      	mov	sp, r7
    2942:	bc80      	pop	{r7}
    2944:	4770      	bx	lr

00002946 <spi_receive_block>:
    2946:	b480      	push	{r7}
    2948:	b085      	sub	sp, #20
    294a:	af00      	add	r7, sp, #0
    294c:	60f8      	str	r0, [r7, #12]
    294e:	60b9      	str	r1, [r7, #8]
    2950:	607a      	str	r2, [r7, #4]
    2952:	e013      	b.n	297c <spi_receive_block+0x36>
    2954:	68fb      	ldr	r3, [r7, #12]
    2956:	2200      	movs	r2, #0
    2958:	60da      	str	r2, [r3, #12]
    295a:	bf00      	nop
    295c:	68fb      	ldr	r3, [r7, #12]
    295e:	689b      	ldr	r3, [r3, #8]
    2960:	f003 0301 	and.w	r3, r3, #1
    2964:	2b00      	cmp	r3, #0
    2966:	d0f9      	beq.n	295c <spi_receive_block+0x16>
    2968:	68bb      	ldr	r3, [r7, #8]
    296a:	1c5a      	adds	r2, r3, #1
    296c:	60ba      	str	r2, [r7, #8]
    296e:	68fa      	ldr	r2, [r7, #12]
    2970:	68d2      	ldr	r2, [r2, #12]
    2972:	b2d2      	uxtb	r2, r2
    2974:	701a      	strb	r2, [r3, #0]
    2976:	687b      	ldr	r3, [r7, #4]
    2978:	3b01      	subs	r3, #1
    297a:	607b      	str	r3, [r7, #4]
    297c:	687b      	ldr	r3, [r7, #4]
    297e:	2b00      	cmp	r3, #0
    2980:	d1e8      	bne.n	2954 <spi_receive_block+0xe>
    2982:	bf00      	nop
    2984:	3714      	adds	r7, #20
    2986:	46bd      	mov	sp, r7
    2988:	bc80      	pop	{r7}
    298a:	4770      	bx	lr

0000298c <reset_mcu>:
    298c:	4b01      	ldr	r3, [pc, #4]	; (2994 <reset_mcu+0x8>)
    298e:	4a02      	ldr	r2, [pc, #8]	; (2998 <reset_mcu+0xc>)
    2990:	601a      	str	r2, [r3, #0]
    2992:	bf00      	nop
    2994:	e000ed0c 	.word	0xe000ed0c
    2998:	05fa0004 	.word	0x05fa0004

0000299c <print_fault>:
    299c:	b580      	push	{r7, lr}
    299e:	b082      	sub	sp, #8
    29a0:	af00      	add	r7, sp, #0
    29a2:	6078      	str	r0, [r7, #4]
    29a4:	6039      	str	r1, [r7, #0]
    29a6:	6878      	ldr	r0, [r7, #4]
    29a8:	f7fd ff72 	bl	890 <print>
    29ac:	4817      	ldr	r0, [pc, #92]	; (2a0c <print_fault+0x70>)
    29ae:	f7fd ff6f 	bl	890 <print>
    29b2:	683b      	ldr	r3, [r7, #0]
    29b4:	2b00      	cmp	r3, #0
    29b6:	d003      	beq.n	29c0 <print_fault+0x24>
    29b8:	2100      	movs	r1, #0
    29ba:	6838      	ldr	r0, [r7, #0]
    29bc:	f7fe f916 	bl	bec <print_hex>
    29c0:	200d      	movs	r0, #13
    29c2:	f7fd ff05 	bl	7d0 <conout>
    29c6:	4812      	ldr	r0, [pc, #72]	; (2a10 <print_fault+0x74>)
    29c8:	f7fd ff62 	bl	890 <print>
    29cc:	4b11      	ldr	r3, [pc, #68]	; (2a14 <print_fault+0x78>)
    29ce:	681b      	ldr	r3, [r3, #0]
    29d0:	f3c3 430f 	ubfx	r3, r3, #16, #16
    29d4:	b29b      	uxth	r3, r3
    29d6:	2100      	movs	r1, #0
    29d8:	4618      	mov	r0, r3
    29da:	f7fe f907 	bl	bec <print_hex>
    29de:	480e      	ldr	r0, [pc, #56]	; (2a18 <print_fault+0x7c>)
    29e0:	f7fd ff56 	bl	890 <print>
    29e4:	4b0b      	ldr	r3, [pc, #44]	; (2a14 <print_fault+0x78>)
    29e6:	681b      	ldr	r3, [r3, #0]
    29e8:	f3c3 2307 	ubfx	r3, r3, #8, #8
    29ec:	b2db      	uxtb	r3, r3
    29ee:	2100      	movs	r1, #0
    29f0:	4618      	mov	r0, r3
    29f2:	f7fe f8fb 	bl	bec <print_hex>
    29f6:	4809      	ldr	r0, [pc, #36]	; (2a1c <print_fault+0x80>)
    29f8:	f7fd ff4a 	bl	890 <print>
    29fc:	4b05      	ldr	r3, [pc, #20]	; (2a14 <print_fault+0x78>)
    29fe:	681b      	ldr	r3, [r3, #0]
    2a00:	b2db      	uxtb	r3, r3
    2a02:	2100      	movs	r1, #0
    2a04:	4618      	mov	r0, r3
    2a06:	f7fe f8f1 	bl	bec <print_hex>
    2a0a:	e7fe      	b.n	2a0a <print_fault+0x6e>
    2a0c:	00003398 	.word	0x00003398
    2a10:	000033a4 	.word	0x000033a4
    2a14:	e000ed28 	.word	0xe000ed28
    2a18:	000033ac 	.word	0x000033ac
    2a1c:	000033b4 	.word	0x000033b4

00002a20 <config_systicks>:
    2a20:	b580      	push	{r7, lr}
    2a22:	af00      	add	r7, sp, #0
    2a24:	2109      	movs	r1, #9
    2a26:	f06f 000e 	mvn.w	r0, #14
    2a2a:	f7fe fff5 	bl	1a18 <set_int_priority>
    2a2e:	4b04      	ldr	r3, [pc, #16]	; (2a40 <config_systicks+0x20>)
    2a30:	f242 22f3 	movw	r2, #8947	; 0x22f3
    2a34:	601a      	str	r2, [r3, #0]
    2a36:	4b03      	ldr	r3, [pc, #12]	; (2a44 <config_systicks+0x24>)
    2a38:	2203      	movs	r2, #3
    2a3a:	601a      	str	r2, [r3, #0]
    2a3c:	bf00      	nop
    2a3e:	bd80      	pop	{r7, pc}
    2a40:	e000e014 	.word	0xe000e014
    2a44:	e000e010 	.word	0xe000e010

00002a48 <pause>:
    2a48:	b480      	push	{r7}
    2a4a:	b083      	sub	sp, #12
    2a4c:	af00      	add	r7, sp, #0
    2a4e:	6078      	str	r0, [r7, #4]
    2a50:	4a06      	ldr	r2, [pc, #24]	; (2a6c <pause+0x24>)
    2a52:	687b      	ldr	r3, [r7, #4]
    2a54:	6013      	str	r3, [r2, #0]
    2a56:	bf00      	nop
    2a58:	4b04      	ldr	r3, [pc, #16]	; (2a6c <pause+0x24>)
    2a5a:	681b      	ldr	r3, [r3, #0]
    2a5c:	2b00      	cmp	r3, #0
    2a5e:	d1fb      	bne.n	2a58 <pause+0x10>
    2a60:	bf00      	nop
    2a62:	370c      	adds	r7, #12
    2a64:	46bd      	mov	sp, r7
    2a66:	bc80      	pop	{r7}
    2a68:	4770      	bx	lr
    2a6a:	bf00      	nop
    2a6c:	20000474 	.word	0x20000474

00002a70 <STK_handler>:
    2a70:	b480      	push	{r7}
    2a72:	af00      	add	r7, sp, #0
    2a74:	4b08      	ldr	r3, [pc, #32]	; (2a98 <STK_handler+0x28>)
    2a76:	681b      	ldr	r3, [r3, #0]
    2a78:	3301      	adds	r3, #1
    2a7a:	4a07      	ldr	r2, [pc, #28]	; (2a98 <STK_handler+0x28>)
    2a7c:	6013      	str	r3, [r2, #0]
    2a7e:	4b07      	ldr	r3, [pc, #28]	; (2a9c <STK_handler+0x2c>)
    2a80:	681b      	ldr	r3, [r3, #0]
    2a82:	2b00      	cmp	r3, #0
    2a84:	d004      	beq.n	2a90 <STK_handler+0x20>
    2a86:	4b05      	ldr	r3, [pc, #20]	; (2a9c <STK_handler+0x2c>)
    2a88:	681b      	ldr	r3, [r3, #0]
    2a8a:	3b01      	subs	r3, #1
    2a8c:	4a03      	ldr	r2, [pc, #12]	; (2a9c <STK_handler+0x2c>)
    2a8e:	6013      	str	r3, [r2, #0]
    2a90:	bf00      	nop
    2a92:	46bd      	mov	sp, r7
    2a94:	bc80      	pop	{r7}
    2a96:	4770      	bx	lr
    2a98:	20000470 	.word	0x20000470
    2a9c:	20000474 	.word	0x20000474

00002aa0 <tvout_init>:
    2aa0:	b580      	push	{r7, lr}
    2aa2:	af00      	add	r7, sp, #0
    2aa4:	220a      	movs	r2, #10
    2aa6:	2108      	movs	r1, #8
    2aa8:	481d      	ldr	r0, [pc, #116]	; (2b20 <tvout_init+0x80>)
    2aaa:	f7fe fd50 	bl	154e <config_pin>
    2aae:	2202      	movs	r2, #2
    2ab0:	2109      	movs	r1, #9
    2ab2:	481b      	ldr	r0, [pc, #108]	; (2b20 <tvout_init+0x80>)
    2ab4:	f7fe fd4b 	bl	154e <config_pin>
    2ab8:	4b1a      	ldr	r3, [pc, #104]	; (2b24 <tvout_init+0x84>)
    2aba:	2278      	movs	r2, #120	; 0x78
    2abc:	619a      	str	r2, [r3, #24]
    2abe:	4b19      	ldr	r3, [pc, #100]	; (2b24 <tvout_init+0x84>)
    2ac0:	2201      	movs	r2, #1
    2ac2:	621a      	str	r2, [r3, #32]
    2ac4:	4b17      	ldr	r3, [pc, #92]	; (2b24 <tvout_init+0x84>)
    2ac6:	2284      	movs	r2, #132	; 0x84
    2ac8:	601a      	str	r2, [r3, #0]
    2aca:	4b16      	ldr	r3, [pc, #88]	; (2b24 <tvout_init+0x84>)
    2acc:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2ad0:	62da      	str	r2, [r3, #44]	; 0x2c
    2ad2:	4b14      	ldr	r3, [pc, #80]	; (2b24 <tvout_init+0x84>)
    2ad4:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2ad8:	635a      	str	r2, [r3, #52]	; 0x34
    2ada:	4a12      	ldr	r2, [pc, #72]	; (2b24 <tvout_init+0x84>)
    2adc:	4b11      	ldr	r3, [pc, #68]	; (2b24 <tvout_init+0x84>)
    2ade:	695b      	ldr	r3, [r3, #20]
    2ae0:	f043 0301 	orr.w	r3, r3, #1
    2ae4:	6153      	str	r3, [r2, #20]
    2ae6:	4b0f      	ldr	r3, [pc, #60]	; (2b24 <tvout_init+0x84>)
    2ae8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
    2aec:	645a      	str	r2, [r3, #68]	; 0x44
    2aee:	4b0d      	ldr	r3, [pc, #52]	; (2b24 <tvout_init+0x84>)
    2af0:	2200      	movs	r2, #0
    2af2:	611a      	str	r2, [r3, #16]
    2af4:	4a0b      	ldr	r2, [pc, #44]	; (2b24 <tvout_init+0x84>)
    2af6:	4b0b      	ldr	r3, [pc, #44]	; (2b24 <tvout_init+0x84>)
    2af8:	68db      	ldr	r3, [r3, #12]
    2afa:	f043 0301 	orr.w	r3, r3, #1
    2afe:	60d3      	str	r3, [r2, #12]
    2b00:	2101      	movs	r1, #1
    2b02:	2019      	movs	r0, #25
    2b04:	f7fe ff88 	bl	1a18 <set_int_priority>
    2b08:	2019      	movs	r0, #25
    2b0a:	f7fe fecb 	bl	18a4 <enable_interrupt>
    2b0e:	4a05      	ldr	r2, [pc, #20]	; (2b24 <tvout_init+0x84>)
    2b10:	4b04      	ldr	r3, [pc, #16]	; (2b24 <tvout_init+0x84>)
    2b12:	681b      	ldr	r3, [r3, #0]
    2b14:	f043 0301 	orr.w	r3, r3, #1
    2b18:	6013      	str	r3, [r2, #0]
    2b1a:	bf00      	nop
    2b1c:	bd80      	pop	{r7, pc}
    2b1e:	bf00      	nop
    2b20:	40010800 	.word	0x40010800
    2b24:	40012c00 	.word	0x40012c00

00002b28 <TV_SYNC_handler>:
    2b28:	4668      	mov	r0, sp
    2b2a:	f020 0107 	bic.w	r1, r0, #7
    2b2e:	468d      	mov	sp, r1
    2b30:	b571      	push	{r0, r4, r5, r6, lr}
    2b32:	4a84      	ldr	r2, [pc, #528]	; (2d44 <TV_SYNC_handler+0x21c>)
    2b34:	8813      	ldrh	r3, [r2, #0]
    2b36:	3301      	adds	r3, #1
    2b38:	b29b      	uxth	r3, r3
    2b3a:	8013      	strh	r3, [r2, #0]
    2b3c:	4b82      	ldr	r3, [pc, #520]	; (2d48 <TV_SYNC_handler+0x220>)
    2b3e:	881b      	ldrh	r3, [r3, #0]
    2b40:	b29b      	uxth	r3, r3
    2b42:	2b06      	cmp	r3, #6
    2b44:	f200 8085 	bhi.w	2c52 <TV_SYNC_handler+0x12a>
    2b48:	e8df f013 	tbh	[pc, r3, lsl #1]
    2b4c:	00290007 	.word	0x00290007
    2b50:	006b0049 	.word	0x006b0049
    2b54:	0098008a 	.word	0x0098008a
    2b58:	00d9      	.short	0x00d9
    2b5a:	4b7c      	ldr	r3, [pc, #496]	; (2d4c <TV_SYNC_handler+0x224>)
    2b5c:	881b      	ldrh	r3, [r3, #0]
    2b5e:	b29b      	uxth	r3, r3
    2b60:	b18b      	cbz	r3, 2b86 <TV_SYNC_handler+0x5e>
    2b62:	4a7a      	ldr	r2, [pc, #488]	; (2d4c <TV_SYNC_handler+0x224>)
    2b64:	8813      	ldrh	r3, [r2, #0]
    2b66:	3301      	adds	r3, #1
    2b68:	b29b      	uxth	r3, r3
    2b6a:	8013      	strh	r3, [r2, #0]
    2b6c:	8813      	ldrh	r3, [r2, #0]
    2b6e:	b29b      	uxth	r3, r3
    2b70:	2b06      	cmp	r3, #6
    2b72:	d16e      	bne.n	2c52 <TV_SYNC_handler+0x12a>
    2b74:	2200      	movs	r2, #0
    2b76:	4b75      	ldr	r3, [pc, #468]	; (2d4c <TV_SYNC_handler+0x224>)
    2b78:	801a      	strh	r2, [r3, #0]
    2b7a:	4a73      	ldr	r2, [pc, #460]	; (2d48 <TV_SYNC_handler+0x220>)
    2b7c:	8813      	ldrh	r3, [r2, #0]
    2b7e:	3301      	adds	r3, #1
    2b80:	b29b      	uxth	r3, r3
    2b82:	8013      	strh	r3, [r2, #0]
    2b84:	e065      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2b86:	4b72      	ldr	r3, [pc, #456]	; (2d50 <TV_SYNC_handler+0x228>)
    2b88:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2b8c:	62da      	str	r2, [r3, #44]	; 0x2c
    2b8e:	22a4      	movs	r2, #164	; 0xa4
    2b90:	635a      	str	r2, [r3, #52]	; 0x34
    2b92:	4a6e      	ldr	r2, [pc, #440]	; (2d4c <TV_SYNC_handler+0x224>)
    2b94:	8813      	ldrh	r3, [r2, #0]
    2b96:	3301      	adds	r3, #1
    2b98:	b29b      	uxth	r3, r3
    2b9a:	8013      	strh	r3, [r2, #0]
    2b9c:	e059      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2b9e:	4b6b      	ldr	r3, [pc, #428]	; (2d4c <TV_SYNC_handler+0x224>)
    2ba0:	881b      	ldrh	r3, [r3, #0]
    2ba2:	b29b      	uxth	r3, r3
    2ba4:	b18b      	cbz	r3, 2bca <TV_SYNC_handler+0xa2>
    2ba6:	4a69      	ldr	r2, [pc, #420]	; (2d4c <TV_SYNC_handler+0x224>)
    2ba8:	8813      	ldrh	r3, [r2, #0]
    2baa:	3301      	adds	r3, #1
    2bac:	b29b      	uxth	r3, r3
    2bae:	8013      	strh	r3, [r2, #0]
    2bb0:	8813      	ldrh	r3, [r2, #0]
    2bb2:	b29b      	uxth	r3, r3
    2bb4:	2b06      	cmp	r3, #6
    2bb6:	d14c      	bne.n	2c52 <TV_SYNC_handler+0x12a>
    2bb8:	2200      	movs	r2, #0
    2bba:	4b64      	ldr	r3, [pc, #400]	; (2d4c <TV_SYNC_handler+0x224>)
    2bbc:	801a      	strh	r2, [r3, #0]
    2bbe:	4a62      	ldr	r2, [pc, #392]	; (2d48 <TV_SYNC_handler+0x220>)
    2bc0:	8813      	ldrh	r3, [r2, #0]
    2bc2:	3301      	adds	r3, #1
    2bc4:	b29b      	uxth	r3, r3
    2bc6:	8013      	strh	r3, [r2, #0]
    2bc8:	e043      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2bca:	f240 7294 	movw	r2, #1940	; 0x794
    2bce:	4b60      	ldr	r3, [pc, #384]	; (2d50 <TV_SYNC_handler+0x228>)
    2bd0:	635a      	str	r2, [r3, #52]	; 0x34
    2bd2:	4a5e      	ldr	r2, [pc, #376]	; (2d4c <TV_SYNC_handler+0x224>)
    2bd4:	8813      	ldrh	r3, [r2, #0]
    2bd6:	3301      	adds	r3, #1
    2bd8:	b29b      	uxth	r3, r3
    2bda:	8013      	strh	r3, [r2, #0]
    2bdc:	e039      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2bde:	4b5b      	ldr	r3, [pc, #364]	; (2d4c <TV_SYNC_handler+0x224>)
    2be0:	881b      	ldrh	r3, [r3, #0]
    2be2:	b29b      	uxth	r3, r3
    2be4:	b153      	cbz	r3, 2bfc <TV_SYNC_handler+0xd4>
    2be6:	4b59      	ldr	r3, [pc, #356]	; (2d4c <TV_SYNC_handler+0x224>)
    2be8:	881b      	ldrh	r3, [r3, #0]
    2bea:	b29b      	uxth	r3, r3
    2bec:	2b06      	cmp	r3, #6
    2bee:	d00e      	beq.n	2c0e <TV_SYNC_handler+0xe6>
    2bf0:	4a56      	ldr	r2, [pc, #344]	; (2d4c <TV_SYNC_handler+0x224>)
    2bf2:	8813      	ldrh	r3, [r2, #0]
    2bf4:	3301      	adds	r3, #1
    2bf6:	b29b      	uxth	r3, r3
    2bf8:	8013      	strh	r3, [r2, #0]
    2bfa:	e02a      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2bfc:	22a4      	movs	r2, #164	; 0xa4
    2bfe:	4b54      	ldr	r3, [pc, #336]	; (2d50 <TV_SYNC_handler+0x228>)
    2c00:	635a      	str	r2, [r3, #52]	; 0x34
    2c02:	4a52      	ldr	r2, [pc, #328]	; (2d4c <TV_SYNC_handler+0x224>)
    2c04:	8813      	ldrh	r3, [r2, #0]
    2c06:	3301      	adds	r3, #1
    2c08:	b29b      	uxth	r3, r3
    2c0a:	8013      	strh	r3, [r2, #0]
    2c0c:	e021      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2c0e:	4a4e      	ldr	r2, [pc, #312]	; (2d48 <TV_SYNC_handler+0x220>)
    2c10:	8813      	ldrh	r3, [r2, #0]
    2c12:	3301      	adds	r3, #1
    2c14:	b29b      	uxth	r3, r3
    2c16:	8013      	strh	r3, [r2, #0]
    2c18:	4b4e      	ldr	r3, [pc, #312]	; (2d54 <TV_SYNC_handler+0x22c>)
    2c1a:	881b      	ldrh	r3, [r3, #0]
    2c1c:	f013 0f01 	tst.w	r3, #1
    2c20:	d017      	beq.n	2c52 <TV_SYNC_handler+0x12a>
    2c22:	4b4b      	ldr	r3, [pc, #300]	; (2d50 <TV_SYNC_handler+0x228>)
    2c24:	f241 12c5 	movw	r2, #4549	; 0x11c5
    2c28:	62da      	str	r2, [r3, #44]	; 0x2c
    2c2a:	f44f 72a8 	mov.w	r2, #336	; 0x150
    2c2e:	635a      	str	r2, [r3, #52]	; 0x34
    2c30:	4a48      	ldr	r2, [pc, #288]	; (2d54 <TV_SYNC_handler+0x22c>)
    2c32:	8813      	ldrh	r3, [r2, #0]
    2c34:	f023 0302 	bic.w	r3, r3, #2
    2c38:	041b      	lsls	r3, r3, #16
    2c3a:	0c1b      	lsrs	r3, r3, #16
    2c3c:	8013      	strh	r3, [r2, #0]
    2c3e:	4a41      	ldr	r2, [pc, #260]	; (2d44 <TV_SYNC_handler+0x21c>)
    2c40:	8813      	ldrh	r3, [r2, #0]
    2c42:	f3c3 038d 	ubfx	r3, r3, #2, #14
    2c46:	8013      	strh	r3, [r2, #0]
    2c48:	4a3f      	ldr	r2, [pc, #252]	; (2d48 <TV_SYNC_handler+0x220>)
    2c4a:	8813      	ldrh	r3, [r2, #0]
    2c4c:	3301      	adds	r3, #1
    2c4e:	b29b      	uxth	r3, r3
    2c50:	8013      	strh	r3, [r2, #0]
    2c52:	2200      	movs	r2, #0
    2c54:	4b3e      	ldr	r3, [pc, #248]	; (2d50 <TV_SYNC_handler+0x228>)
    2c56:	611a      	str	r2, [r3, #16]
    2c58:	e8bd 4071 	ldmia.w	sp!, {r0, r4, r5, r6, lr}
    2c5c:	4685      	mov	sp, r0
    2c5e:	4770      	bx	lr
    2c60:	4b38      	ldr	r3, [pc, #224]	; (2d44 <TV_SYNC_handler+0x21c>)
    2c62:	881b      	ldrh	r3, [r3, #0]
    2c64:	b29b      	uxth	r3, r3
    2c66:	2b14      	cmp	r3, #20
    2c68:	d1f3      	bne.n	2c52 <TV_SYNC_handler+0x12a>
    2c6a:	4a37      	ldr	r2, [pc, #220]	; (2d48 <TV_SYNC_handler+0x220>)
    2c6c:	8813      	ldrh	r3, [r2, #0]
    2c6e:	3301      	adds	r3, #1
    2c70:	b29b      	uxth	r3, r3
    2c72:	8013      	strh	r3, [r2, #0]
    2c74:	2200      	movs	r2, #0
    2c76:	4b35      	ldr	r3, [pc, #212]	; (2d4c <TV_SYNC_handler+0x224>)
    2c78:	801a      	strh	r2, [r3, #0]
    2c7a:	e7ea      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2c7c:	4a34      	ldr	r2, [pc, #208]	; (2d50 <TV_SYNC_handler+0x228>)
    2c7e:	6a53      	ldr	r3, [r2, #36]	; 0x24
    2c80:	f5b3 6f86 	cmp.w	r3, #1072	; 0x430
    2c84:	d9fb      	bls.n	2c7e <TV_SYNC_handler+0x156>
    2c86:	4b31      	ldr	r3, [pc, #196]	; (2d4c <TV_SYNC_handler+0x224>)
    2c88:	881b      	ldrh	r3, [r3, #0]
    2c8a:	b29b      	uxth	r3, r3
    2c8c:	4a32      	ldr	r2, [pc, #200]	; (2d58 <TV_SYNC_handler+0x230>)
    2c8e:	fba2 2303 	umull	r2, r3, r2, r3
    2c92:	085b      	lsrs	r3, r3, #1
    2c94:	011b      	lsls	r3, r3, #4
    2c96:	4e31      	ldr	r6, [pc, #196]	; (2d5c <TV_SYNC_handler+0x234>)
    2c98:	199d      	adds	r5, r3, r6
    2c9a:	3310      	adds	r3, #16
    2c9c:	441e      	add	r6, r3
    2c9e:	f04f 0e80 	mov.w	lr, #128	; 0x80
    2ca2:	492f      	ldr	r1, [pc, #188]	; (2d60 <TV_SYNC_handler+0x238>)
    2ca4:	e001      	b.n	2caa <TV_SYNC_handler+0x182>
    2ca6:	42b5      	cmp	r5, r6
    2ca8:	d012      	beq.n	2cd0 <TV_SYNC_handler+0x1a8>
    2caa:	f815 4b01 	ldrb.w	r4, [r5], #1
    2cae:	2308      	movs	r3, #8
    2cb0:	4672      	mov	r2, lr
    2cb2:	4214      	tst	r4, r2
    2cb4:	68c8      	ldr	r0, [r1, #12]
    2cb6:	bf14      	ite	ne
    2cb8:	f440 7000 	orrne.w	r0, r0, #512	; 0x200
    2cbc:	f420 7000 	biceq.w	r0, r0, #512	; 0x200
    2cc0:	60c8      	str	r0, [r1, #12]
    2cc2:	bf00      	nop
    2cc4:	bf00      	nop
    2cc6:	bf00      	nop
    2cc8:	0852      	lsrs	r2, r2, #1
    2cca:	3b01      	subs	r3, #1
    2ccc:	d1f1      	bne.n	2cb2 <TV_SYNC_handler+0x18a>
    2cce:	e7ea      	b.n	2ca6 <TV_SYNC_handler+0x17e>
    2cd0:	4a23      	ldr	r2, [pc, #140]	; (2d60 <TV_SYNC_handler+0x238>)
    2cd2:	68d3      	ldr	r3, [r2, #12]
    2cd4:	f423 7300 	bic.w	r3, r3, #512	; 0x200
    2cd8:	60d3      	str	r3, [r2, #12]
    2cda:	4a1c      	ldr	r2, [pc, #112]	; (2d4c <TV_SYNC_handler+0x224>)
    2cdc:	8813      	ldrh	r3, [r2, #0]
    2cde:	3301      	adds	r3, #1
    2ce0:	b29b      	uxth	r3, r3
    2ce2:	8013      	strh	r3, [r2, #0]
    2ce4:	8813      	ldrh	r3, [r2, #0]
    2ce6:	b29b      	uxth	r3, r3
    2ce8:	2be4      	cmp	r3, #228	; 0xe4
    2cea:	d1b2      	bne.n	2c52 <TV_SYNC_handler+0x12a>
    2cec:	2200      	movs	r2, #0
    2cee:	4b17      	ldr	r3, [pc, #92]	; (2d4c <TV_SYNC_handler+0x224>)
    2cf0:	801a      	strh	r2, [r3, #0]
    2cf2:	4a15      	ldr	r2, [pc, #84]	; (2d48 <TV_SYNC_handler+0x220>)
    2cf4:	8813      	ldrh	r3, [r2, #0]
    2cf6:	3301      	adds	r3, #1
    2cf8:	b29b      	uxth	r3, r3
    2cfa:	8013      	strh	r3, [r2, #0]
    2cfc:	e7a9      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2cfe:	4b11      	ldr	r3, [pc, #68]	; (2d44 <TV_SYNC_handler+0x21c>)
    2d00:	881b      	ldrh	r3, [r3, #0]
    2d02:	b29b      	uxth	r3, r3
    2d04:	f240 1207 	movw	r2, #263	; 0x107
    2d08:	4293      	cmp	r3, r2
    2d0a:	d1a2      	bne.n	2c52 <TV_SYNC_handler+0x12a>
    2d0c:	4b11      	ldr	r3, [pc, #68]	; (2d54 <TV_SYNC_handler+0x22c>)
    2d0e:	881b      	ldrh	r3, [r3, #0]
    2d10:	f013 0f01 	tst.w	r3, #1
    2d14:	d003      	beq.n	2d1e <TV_SYNC_handler+0x1f6>
    2d16:	f640 02e2 	movw	r2, #2274	; 0x8e2
    2d1a:	4b0d      	ldr	r3, [pc, #52]	; (2d50 <TV_SYNC_handler+0x228>)
    2d1c:	62da      	str	r2, [r3, #44]	; 0x2c
    2d1e:	4a0d      	ldr	r2, [pc, #52]	; (2d54 <TV_SYNC_handler+0x22c>)
    2d20:	8813      	ldrh	r3, [r2, #0]
    2d22:	b29b      	uxth	r3, r3
    2d24:	f083 0301 	eor.w	r3, r3, #1
    2d28:	8013      	strh	r3, [r2, #0]
    2d2a:	8813      	ldrh	r3, [r2, #0]
    2d2c:	b29b      	uxth	r3, r3
    2d2e:	f043 0302 	orr.w	r3, r3, #2
    2d32:	8013      	strh	r3, [r2, #0]
    2d34:	2300      	movs	r3, #0
    2d36:	4a03      	ldr	r2, [pc, #12]	; (2d44 <TV_SYNC_handler+0x21c>)
    2d38:	8013      	strh	r3, [r2, #0]
    2d3a:	4a04      	ldr	r2, [pc, #16]	; (2d4c <TV_SYNC_handler+0x224>)
    2d3c:	8013      	strh	r3, [r2, #0]
    2d3e:	4a02      	ldr	r2, [pc, #8]	; (2d48 <TV_SYNC_handler+0x220>)
    2d40:	8013      	strh	r3, [r2, #0]
    2d42:	e786      	b.n	2c52 <TV_SYNC_handler+0x12a>
    2d44:	2000047e 	.word	0x2000047e
    2d48:	20000478 	.word	0x20000478
    2d4c:	2000047c 	.word	0x2000047c
    2d50:	40012c00 	.word	0x40012c00
    2d54:	2000047a 	.word	0x2000047a
    2d58:	aaaaaaab 	.word	0xaaaaaaab
    2d5c:	200004d4 	.word	0x200004d4
    2d60:	40010800 	.word	0x40010800

00002d64 <usart_config_port>:
    2d64:	b480      	push	{r7}
    2d66:	b085      	sub	sp, #20
    2d68:	af00      	add	r7, sp, #0
    2d6a:	60f8      	str	r0, [r7, #12]
    2d6c:	60b9      	str	r1, [r7, #8]
    2d6e:	607a      	str	r2, [r7, #4]
    2d70:	68fb      	ldr	r3, [r7, #12]
    2d72:	4a45      	ldr	r2, [pc, #276]	; (2e88 <usart_config_port+0x124>)
    2d74:	4293      	cmp	r3, r2
    2d76:	d058      	beq.n	2e2a <usart_config_port+0xc6>
    2d78:	4a44      	ldr	r2, [pc, #272]	; (2e8c <usart_config_port+0x128>)
    2d7a:	4293      	cmp	r3, r2
    2d7c:	d003      	beq.n	2d86 <usart_config_port+0x22>
    2d7e:	4a44      	ldr	r2, [pc, #272]	; (2e90 <usart_config_port+0x12c>)
    2d80:	4293      	cmp	r3, r2
    2d82:	d029      	beq.n	2dd8 <usart_config_port+0x74>
    2d84:	e07a      	b.n	2e7c <usart_config_port+0x118>
    2d86:	4a43      	ldr	r2, [pc, #268]	; (2e94 <usart_config_port+0x130>)
    2d88:	4b42      	ldr	r3, [pc, #264]	; (2e94 <usart_config_port+0x130>)
    2d8a:	699b      	ldr	r3, [r3, #24]
    2d8c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
    2d90:	f043 0304 	orr.w	r3, r3, #4
    2d94:	6193      	str	r3, [r2, #24]
    2d96:	687b      	ldr	r3, [r7, #4]
    2d98:	2b01      	cmp	r3, #1
    2d9a:	d110      	bne.n	2dbe <usart_config_port+0x5a>
    2d9c:	68bb      	ldr	r3, [r7, #8]
    2d9e:	685b      	ldr	r3, [r3, #4]
    2da0:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
    2da4:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
    2da8:	68ba      	ldr	r2, [r7, #8]
    2daa:	6053      	str	r3, [r2, #4]
    2dac:	68bb      	ldr	r3, [r7, #8]
    2dae:	685b      	ldr	r3, [r3, #4]
    2db0:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
    2db4:	f043 03a0 	orr.w	r3, r3, #160	; 0xa0
    2db8:	68ba      	ldr	r2, [r7, #8]
    2dba:	6053      	str	r3, [r2, #4]
    2dbc:	e05e      	b.n	2e7c <usart_config_port+0x118>
    2dbe:	68bb      	ldr	r3, [r7, #8]
    2dc0:	685b      	ldr	r3, [r3, #4]
    2dc2:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
    2dc6:	68bb      	ldr	r3, [r7, #8]
    2dc8:	605a      	str	r2, [r3, #4]
    2dca:	68bb      	ldr	r3, [r7, #8]
    2dcc:	685b      	ldr	r3, [r3, #4]
    2dce:	f043 02a0 	orr.w	r2, r3, #160	; 0xa0
    2dd2:	68bb      	ldr	r3, [r7, #8]
    2dd4:	605a      	str	r2, [r3, #4]
    2dd6:	e051      	b.n	2e7c <usart_config_port+0x118>
    2dd8:	4a2e      	ldr	r2, [pc, #184]	; (2e94 <usart_config_port+0x130>)
    2dda:	4b2e      	ldr	r3, [pc, #184]	; (2e94 <usart_config_port+0x130>)
    2ddc:	69db      	ldr	r3, [r3, #28]
    2dde:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
    2de2:	61d3      	str	r3, [r2, #28]
    2de4:	4a2b      	ldr	r2, [pc, #172]	; (2e94 <usart_config_port+0x130>)
    2de6:	4b2b      	ldr	r3, [pc, #172]	; (2e94 <usart_config_port+0x130>)
    2de8:	699b      	ldr	r3, [r3, #24]
    2dea:	f043 0304 	orr.w	r3, r3, #4
    2dee:	6193      	str	r3, [r2, #24]
    2df0:	687b      	ldr	r3, [r7, #4]
    2df2:	2b01      	cmp	r3, #1
    2df4:	d10c      	bne.n	2e10 <usart_config_port+0xac>
    2df6:	68bb      	ldr	r3, [r7, #8]
    2df8:	681b      	ldr	r3, [r3, #0]
    2dfa:	f423 627f 	bic.w	r2, r3, #4080	; 0xff0
    2dfe:	68bb      	ldr	r3, [r7, #8]
    2e00:	601a      	str	r2, [r3, #0]
    2e02:	68bb      	ldr	r3, [r7, #8]
    2e04:	681b      	ldr	r3, [r3, #0]
    2e06:	f443 622a 	orr.w	r2, r3, #2720	; 0xaa0
    2e0a:	68bb      	ldr	r3, [r7, #8]
    2e0c:	601a      	str	r2, [r3, #0]
    2e0e:	e035      	b.n	2e7c <usart_config_port+0x118>
    2e10:	68bb      	ldr	r3, [r7, #8]
    2e12:	681b      	ldr	r3, [r3, #0]
    2e14:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2e18:	68bb      	ldr	r3, [r7, #8]
    2e1a:	601a      	str	r2, [r3, #0]
    2e1c:	68bb      	ldr	r3, [r7, #8]
    2e1e:	681b      	ldr	r3, [r3, #0]
    2e20:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2e24:	68bb      	ldr	r3, [r7, #8]
    2e26:	601a      	str	r2, [r3, #0]
    2e28:	e028      	b.n	2e7c <usart_config_port+0x118>
    2e2a:	4a1a      	ldr	r2, [pc, #104]	; (2e94 <usart_config_port+0x130>)
    2e2c:	4b19      	ldr	r3, [pc, #100]	; (2e94 <usart_config_port+0x130>)
    2e2e:	69db      	ldr	r3, [r3, #28]
    2e30:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
    2e34:	61d3      	str	r3, [r2, #28]
    2e36:	4a17      	ldr	r2, [pc, #92]	; (2e94 <usart_config_port+0x130>)
    2e38:	4b16      	ldr	r3, [pc, #88]	; (2e94 <usart_config_port+0x130>)
    2e3a:	699b      	ldr	r3, [r3, #24]
    2e3c:	f043 0308 	orr.w	r3, r3, #8
    2e40:	6193      	str	r3, [r2, #24]
    2e42:	687b      	ldr	r3, [r7, #4]
    2e44:	2b01      	cmp	r3, #1
    2e46:	d10c      	bne.n	2e62 <usart_config_port+0xfe>
    2e48:	68bb      	ldr	r3, [r7, #8]
    2e4a:	685b      	ldr	r3, [r3, #4]
    2e4c:	f023 220f 	bic.w	r2, r3, #251662080	; 0xf000f00
    2e50:	68bb      	ldr	r3, [r7, #8]
    2e52:	605a      	str	r2, [r3, #4]
    2e54:	68bb      	ldr	r3, [r7, #8]
    2e56:	685b      	ldr	r3, [r3, #4]
    2e58:	f043 220a 	orr.w	r2, r3, #167774720	; 0xa000a00
    2e5c:	68bb      	ldr	r3, [r7, #8]
    2e5e:	605a      	str	r2, [r3, #4]
    2e60:	e00b      	b.n	2e7a <usart_config_port+0x116>
    2e62:	68bb      	ldr	r3, [r7, #8]
    2e64:	685b      	ldr	r3, [r3, #4]
    2e66:	f423 6270 	bic.w	r2, r3, #3840	; 0xf00
    2e6a:	68bb      	ldr	r3, [r7, #8]
    2e6c:	605a      	str	r2, [r3, #4]
    2e6e:	68bb      	ldr	r3, [r7, #8]
    2e70:	685b      	ldr	r3, [r3, #4]
    2e72:	f443 6220 	orr.w	r2, r3, #2560	; 0xa00
    2e76:	68bb      	ldr	r3, [r7, #8]
    2e78:	605a      	str	r2, [r3, #4]
    2e7a:	bf00      	nop
    2e7c:	bf00      	nop
    2e7e:	3714      	adds	r7, #20
    2e80:	46bd      	mov	sp, r7
    2e82:	bc80      	pop	{r7}
    2e84:	4770      	bx	lr
    2e86:	bf00      	nop
    2e88:	40004800 	.word	0x40004800
    2e8c:	40013800 	.word	0x40013800
    2e90:	40004400 	.word	0x40004400
    2e94:	40021000 	.word	0x40021000

00002e98 <usart_set_baud>:
    2e98:	b480      	push	{r7}
    2e9a:	b085      	sub	sp, #20
    2e9c:	af00      	add	r7, sp, #0
    2e9e:	6078      	str	r0, [r7, #4]
    2ea0:	6039      	str	r1, [r7, #0]
    2ea2:	687b      	ldr	r3, [r7, #4]
    2ea4:	4a15      	ldr	r2, [pc, #84]	; (2efc <usart_set_baud+0x64>)
    2ea6:	4293      	cmp	r3, r2
    2ea8:	d110      	bne.n	2ecc <usart_set_baud+0x34>
    2eaa:	4a15      	ldr	r2, [pc, #84]	; (2f00 <usart_set_baud+0x68>)
    2eac:	683b      	ldr	r3, [r7, #0]
    2eae:	fbb2 f3f3 	udiv	r3, r2, r3
    2eb2:	091b      	lsrs	r3, r3, #4
    2eb4:	011b      	lsls	r3, r3, #4
    2eb6:	60fb      	str	r3, [r7, #12]
    2eb8:	4a11      	ldr	r2, [pc, #68]	; (2f00 <usart_set_baud+0x68>)
    2eba:	683b      	ldr	r3, [r7, #0]
    2ebc:	fbb2 f3f3 	udiv	r3, r2, r3
    2ec0:	f003 030f 	and.w	r3, r3, #15
    2ec4:	68fa      	ldr	r2, [r7, #12]
    2ec6:	4313      	orrs	r3, r2
    2ec8:	60fb      	str	r3, [r7, #12]
    2eca:	e00f      	b.n	2eec <usart_set_baud+0x54>
    2ecc:	4a0d      	ldr	r2, [pc, #52]	; (2f04 <usart_set_baud+0x6c>)
    2ece:	683b      	ldr	r3, [r7, #0]
    2ed0:	fbb2 f3f3 	udiv	r3, r2, r3
    2ed4:	091b      	lsrs	r3, r3, #4
    2ed6:	011b      	lsls	r3, r3, #4
    2ed8:	60fb      	str	r3, [r7, #12]
    2eda:	4a0a      	ldr	r2, [pc, #40]	; (2f04 <usart_set_baud+0x6c>)
    2edc:	683b      	ldr	r3, [r7, #0]
    2ede:	fbb2 f3f3 	udiv	r3, r2, r3
    2ee2:	f003 030f 	and.w	r3, r3, #15
    2ee6:	68fa      	ldr	r2, [r7, #12]
    2ee8:	4313      	orrs	r3, r2
    2eea:	60fb      	str	r3, [r7, #12]
    2eec:	687b      	ldr	r3, [r7, #4]
    2eee:	68fa      	ldr	r2, [r7, #12]
    2ef0:	609a      	str	r2, [r3, #8]
    2ef2:	bf00      	nop
    2ef4:	3714      	adds	r7, #20
    2ef6:	46bd      	mov	sp, r7
    2ef8:	bc80      	pop	{r7}
    2efa:	4770      	bx	lr
    2efc:	40013800 	.word	0x40013800
    2f00:	044463f4 	.word	0x044463f4
    2f04:	022231fa 	.word	0x022231fa

00002f08 <usart_comm_dir>:
    2f08:	b480      	push	{r7}
    2f0a:	b083      	sub	sp, #12
    2f0c:	af00      	add	r7, sp, #0
    2f0e:	6078      	str	r0, [r7, #4]
    2f10:	6039      	str	r1, [r7, #0]
    2f12:	687b      	ldr	r3, [r7, #4]
    2f14:	68db      	ldr	r3, [r3, #12]
    2f16:	f023 020c 	bic.w	r2, r3, #12
    2f1a:	687b      	ldr	r3, [r7, #4]
    2f1c:	60da      	str	r2, [r3, #12]
    2f1e:	687b      	ldr	r3, [r7, #4]
    2f20:	68da      	ldr	r2, [r3, #12]
    2f22:	683b      	ldr	r3, [r7, #0]
    2f24:	009b      	lsls	r3, r3, #2
    2f26:	431a      	orrs	r2, r3
    2f28:	687b      	ldr	r3, [r7, #4]
    2f2a:	60da      	str	r2, [r3, #12]
    2f2c:	bf00      	nop
    2f2e:	370c      	adds	r7, #12
    2f30:	46bd      	mov	sp, r7
    2f32:	bc80      	pop	{r7}
    2f34:	4770      	bx	lr

00002f36 <usart_open_channel>:
    2f36:	b580      	push	{r7, lr}
    2f38:	b084      	sub	sp, #16
    2f3a:	af00      	add	r7, sp, #0
    2f3c:	60f8      	str	r0, [r7, #12]
    2f3e:	60b9      	str	r1, [r7, #8]
    2f40:	607a      	str	r2, [r7, #4]
    2f42:	603b      	str	r3, [r7, #0]
    2f44:	68fb      	ldr	r3, [r7, #12]
    2f46:	4a33      	ldr	r2, [pc, #204]	; (3014 <usart_open_channel+0xde>)
    2f48:	4293      	cmp	r3, r2
    2f4a:	d020      	beq.n	2f8e <usart_open_channel+0x58>
    2f4c:	4a32      	ldr	r2, [pc, #200]	; (3018 <usart_open_channel+0xe2>)
    2f4e:	4293      	cmp	r3, r2
    2f50:	d003      	beq.n	2f5a <usart_open_channel+0x24>
    2f52:	4a32      	ldr	r2, [pc, #200]	; (301c <usart_open_channel+0xe6>)
    2f54:	4293      	cmp	r3, r2
    2f56:	d00d      	beq.n	2f74 <usart_open_channel+0x3e>
    2f58:	e026      	b.n	2fa8 <usart_open_channel+0x72>
    2f5a:	69ba      	ldr	r2, [r7, #24]
    2f5c:	4930      	ldr	r1, [pc, #192]	; (3020 <usart_open_channel+0xea>)
    2f5e:	68f8      	ldr	r0, [r7, #12]
    2f60:	f7ff ff00 	bl	2d64 <usart_config_port>
    2f64:	2107      	movs	r1, #7
    2f66:	2025      	movs	r0, #37	; 0x25
    2f68:	f7fe fd56 	bl	1a18 <set_int_priority>
    2f6c:	2025      	movs	r0, #37	; 0x25
    2f6e:	f7fe fc99 	bl	18a4 <enable_interrupt>
    2f72:	e019      	b.n	2fa8 <usart_open_channel+0x72>
    2f74:	69ba      	ldr	r2, [r7, #24]
    2f76:	492a      	ldr	r1, [pc, #168]	; (3020 <usart_open_channel+0xea>)
    2f78:	68f8      	ldr	r0, [r7, #12]
    2f7a:	f7ff fef3 	bl	2d64 <usart_config_port>
    2f7e:	2107      	movs	r1, #7
    2f80:	2026      	movs	r0, #38	; 0x26
    2f82:	f7fe fd49 	bl	1a18 <set_int_priority>
    2f86:	2026      	movs	r0, #38	; 0x26
    2f88:	f7fe fc8c 	bl	18a4 <enable_interrupt>
    2f8c:	e00c      	b.n	2fa8 <usart_open_channel+0x72>
    2f8e:	69ba      	ldr	r2, [r7, #24]
    2f90:	4924      	ldr	r1, [pc, #144]	; (3024 <usart_open_channel+0xee>)
    2f92:	68f8      	ldr	r0, [r7, #12]
    2f94:	f7ff fee6 	bl	2d64 <usart_config_port>
    2f98:	2107      	movs	r1, #7
    2f9a:	2027      	movs	r0, #39	; 0x27
    2f9c:	f7fe fd3c 	bl	1a18 <set_int_priority>
    2fa0:	2027      	movs	r0, #39	; 0x27
    2fa2:	f7fe fc7f 	bl	18a4 <enable_interrupt>
    2fa6:	bf00      	nop
    2fa8:	69bb      	ldr	r3, [r7, #24]
    2faa:	2b01      	cmp	r3, #1
    2fac:	d103      	bne.n	2fb6 <usart_open_channel+0x80>
    2fae:	68fb      	ldr	r3, [r7, #12]
    2fb0:	f44f 7240 	mov.w	r2, #768	; 0x300
    2fb4:	615a      	str	r2, [r3, #20]
    2fb6:	6839      	ldr	r1, [r7, #0]
    2fb8:	68f8      	ldr	r0, [r7, #12]
    2fba:	f7ff ffa5 	bl	2f08 <usart_comm_dir>
    2fbe:	687b      	ldr	r3, [r7, #4]
    2fc0:	2b01      	cmp	r3, #1
    2fc2:	d00b      	beq.n	2fdc <usart_open_channel+0xa6>
    2fc4:	2b01      	cmp	r3, #1
    2fc6:	d302      	bcc.n	2fce <usart_open_channel+0x98>
    2fc8:	2b02      	cmp	r3, #2
    2fca:	d00e      	beq.n	2fea <usart_open_channel+0xb4>
    2fcc:	e014      	b.n	2ff8 <usart_open_channel+0xc2>
    2fce:	68fb      	ldr	r3, [r7, #12]
    2fd0:	68db      	ldr	r3, [r3, #12]
    2fd2:	f043 0220 	orr.w	r2, r3, #32
    2fd6:	68fb      	ldr	r3, [r7, #12]
    2fd8:	60da      	str	r2, [r3, #12]
    2fda:	e00d      	b.n	2ff8 <usart_open_channel+0xc2>
    2fdc:	68fb      	ldr	r3, [r7, #12]
    2fde:	68db      	ldr	r3, [r3, #12]
    2fe0:	f443 62e4 	orr.w	r2, r3, #1824	; 0x720
    2fe4:	68fb      	ldr	r3, [r7, #12]
    2fe6:	60da      	str	r2, [r3, #12]
    2fe8:	e006      	b.n	2ff8 <usart_open_channel+0xc2>
    2fea:	68fb      	ldr	r3, [r7, #12]
    2fec:	68db      	ldr	r3, [r3, #12]
    2fee:	f443 62a4 	orr.w	r2, r3, #1312	; 0x520
    2ff2:	68fb      	ldr	r3, [r7, #12]
    2ff4:	60da      	str	r2, [r3, #12]
    2ff6:	bf00      	nop
    2ff8:	68b9      	ldr	r1, [r7, #8]
    2ffa:	68f8      	ldr	r0, [r7, #12]
    2ffc:	f7ff ff4c 	bl	2e98 <usart_set_baud>
    3000:	68fb      	ldr	r3, [r7, #12]
    3002:	68db      	ldr	r3, [r3, #12]
    3004:	f443 5200 	orr.w	r2, r3, #8192	; 0x2000
    3008:	68fb      	ldr	r3, [r7, #12]
    300a:	60da      	str	r2, [r3, #12]
    300c:	bf00      	nop
    300e:	3710      	adds	r7, #16
    3010:	46bd      	mov	sp, r7
    3012:	bd80      	pop	{r7, pc}
    3014:	40004800 	.word	0x40004800
    3018:	40013800 	.word	0x40013800
    301c:	40004400 	.word	0x40004400
    3020:	40010800 	.word	0x40010800
    3024:	40010c00 	.word	0x40010c00

00003028 <usart_stat>:
    3028:	b480      	push	{r7}
    302a:	b083      	sub	sp, #12
    302c:	af00      	add	r7, sp, #0
    302e:	6078      	str	r0, [r7, #4]
    3030:	687b      	ldr	r3, [r7, #4]
    3032:	681b      	ldr	r3, [r3, #0]
    3034:	f003 0320 	and.w	r3, r3, #32
    3038:	4618      	mov	r0, r3
    303a:	370c      	adds	r7, #12
    303c:	46bd      	mov	sp, r7
    303e:	bc80      	pop	{r7}
    3040:	4770      	bx	lr

00003042 <usart_getc>:
    3042:	b480      	push	{r7}
    3044:	b083      	sub	sp, #12
    3046:	af00      	add	r7, sp, #0
    3048:	6078      	str	r0, [r7, #4]
    304a:	687b      	ldr	r3, [r7, #4]
    304c:	681b      	ldr	r3, [r3, #0]
    304e:	f003 0320 	and.w	r3, r3, #32
    3052:	2b00      	cmp	r3, #0
    3054:	d003      	beq.n	305e <usart_getc+0x1c>
    3056:	687b      	ldr	r3, [r7, #4]
    3058:	685b      	ldr	r3, [r3, #4]
    305a:	b2db      	uxtb	r3, r3
    305c:	e000      	b.n	3060 <usart_getc+0x1e>
    305e:	2300      	movs	r3, #0
    3060:	4618      	mov	r0, r3
    3062:	370c      	adds	r7, #12
    3064:	46bd      	mov	sp, r7
    3066:	bc80      	pop	{r7}
    3068:	4770      	bx	lr

0000306a <usart_getc_dly>:
    306a:	b480      	push	{r7}
    306c:	b083      	sub	sp, #12
    306e:	af00      	add	r7, sp, #0
    3070:	6078      	str	r0, [r7, #4]
    3072:	6039      	str	r1, [r7, #0]
    3074:	4a0d      	ldr	r2, [pc, #52]	; (30ac <usart_getc_dly+0x42>)
    3076:	683b      	ldr	r3, [r7, #0]
    3078:	6013      	str	r3, [r2, #0]
    307a:	bf00      	nop
    307c:	4b0b      	ldr	r3, [pc, #44]	; (30ac <usart_getc_dly+0x42>)
    307e:	681b      	ldr	r3, [r3, #0]
    3080:	2b00      	cmp	r3, #0
    3082:	d005      	beq.n	3090 <usart_getc_dly+0x26>
    3084:	687b      	ldr	r3, [r7, #4]
    3086:	681b      	ldr	r3, [r3, #0]
    3088:	f003 0320 	and.w	r3, r3, #32
    308c:	2b00      	cmp	r3, #0
    308e:	d0f5      	beq.n	307c <usart_getc_dly+0x12>
    3090:	4b06      	ldr	r3, [pc, #24]	; (30ac <usart_getc_dly+0x42>)
    3092:	681b      	ldr	r3, [r3, #0]
    3094:	2b00      	cmp	r3, #0
    3096:	d003      	beq.n	30a0 <usart_getc_dly+0x36>
    3098:	687b      	ldr	r3, [r7, #4]
    309a:	685b      	ldr	r3, [r3, #4]
    309c:	b2db      	uxtb	r3, r3
    309e:	e000      	b.n	30a2 <usart_getc_dly+0x38>
    30a0:	2300      	movs	r3, #0
    30a2:	4618      	mov	r0, r3
    30a4:	370c      	adds	r7, #12
    30a6:	46bd      	mov	sp, r7
    30a8:	bc80      	pop	{r7}
    30aa:	4770      	bx	lr
    30ac:	20000474 	.word	0x20000474

000030b0 <usart_putc>:
    30b0:	b480      	push	{r7}
    30b2:	b083      	sub	sp, #12
    30b4:	af00      	add	r7, sp, #0
    30b6:	6078      	str	r0, [r7, #4]
    30b8:	460b      	mov	r3, r1
    30ba:	70fb      	strb	r3, [r7, #3]
    30bc:	bf00      	nop
    30be:	687b      	ldr	r3, [r7, #4]
    30c0:	681b      	ldr	r3, [r3, #0]
    30c2:	f003 0380 	and.w	r3, r3, #128	; 0x80
    30c6:	2b00      	cmp	r3, #0
    30c8:	d0f9      	beq.n	30be <usart_putc+0xe>
    30ca:	78fa      	ldrb	r2, [r7, #3]
    30cc:	687b      	ldr	r3, [r7, #4]
    30ce:	605a      	str	r2, [r3, #4]
    30d0:	bf00      	nop
    30d2:	370c      	adds	r7, #12
    30d4:	46bd      	mov	sp, r7
    30d6:	bc80      	pop	{r7}
    30d8:	4770      	bx	lr

000030da <usart_cts>:
    30da:	b480      	push	{r7}
    30dc:	b085      	sub	sp, #20
    30de:	af00      	add	r7, sp, #0
    30e0:	6078      	str	r0, [r7, #4]
    30e2:	687b      	ldr	r3, [r7, #4]
    30e4:	4a10      	ldr	r2, [pc, #64]	; (3128 <usart_cts+0x4e>)
    30e6:	4293      	cmp	r3, r2
    30e8:	d012      	beq.n	3110 <usart_cts+0x36>
    30ea:	4a10      	ldr	r2, [pc, #64]	; (312c <usart_cts+0x52>)
    30ec:	4293      	cmp	r3, r2
    30ee:	d003      	beq.n	30f8 <usart_cts+0x1e>
    30f0:	4a0f      	ldr	r2, [pc, #60]	; (3130 <usart_cts+0x56>)
    30f2:	4293      	cmp	r3, r2
    30f4:	d006      	beq.n	3104 <usart_cts+0x2a>
    30f6:	e011      	b.n	311c <usart_cts+0x42>
    30f8:	4b0e      	ldr	r3, [pc, #56]	; (3134 <usart_cts+0x5a>)
    30fa:	689b      	ldr	r3, [r3, #8]
    30fc:	f403 6300 	and.w	r3, r3, #2048	; 0x800
    3100:	60fb      	str	r3, [r7, #12]
    3102:	e00b      	b.n	311c <usart_cts+0x42>
    3104:	4b0b      	ldr	r3, [pc, #44]	; (3134 <usart_cts+0x5a>)
    3106:	689b      	ldr	r3, [r3, #8]
    3108:	f003 0301 	and.w	r3, r3, #1
    310c:	60fb      	str	r3, [r7, #12]
    310e:	e005      	b.n	311c <usart_cts+0x42>
    3110:	4b09      	ldr	r3, [pc, #36]	; (3138 <usart_cts+0x5e>)
    3112:	689b      	ldr	r3, [r3, #8]
    3114:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
    3118:	60fb      	str	r3, [r7, #12]
    311a:	bf00      	nop
    311c:	68fb      	ldr	r3, [r7, #12]
    311e:	4618      	mov	r0, r3
    3120:	3714      	adds	r7, #20
    3122:	46bd      	mov	sp, r7
    3124:	bc80      	pop	{r7}
    3126:	4770      	bx	lr
    3128:	40004800 	.word	0x40004800
    312c:	40013800 	.word	0x40013800
    3130:	40004400 	.word	0x40004400
    3134:	40010800 	.word	0x40010800
    3138:	40010c00 	.word	0x40010c00

0000313c <vt100_init>:
    313c:	b580      	push	{r7, lr}
    313e:	b082      	sub	sp, #8
    3140:	af02      	add	r7, sp, #8
    3142:	2301      	movs	r3, #1
    3144:	9300      	str	r3, [sp, #0]
    3146:	2303      	movs	r3, #3
    3148:	2200      	movs	r2, #0
    314a:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
    314e:	4803      	ldr	r0, [pc, #12]	; (315c <vt100_init+0x20>)
    3150:	f7ff fef1 	bl	2f36 <usart_open_channel>
    3154:	bf00      	nop
    3156:	46bd      	mov	sp, r7
    3158:	bd80      	pop	{r7, pc}
    315a:	bf00      	nop
    315c:	40004400 	.word	0x40004400

00003160 <vt_putc>:
    3160:	b580      	push	{r7, lr}
    3162:	b082      	sub	sp, #8
    3164:	af00      	add	r7, sp, #0
    3166:	4603      	mov	r3, r0
    3168:	71fb      	strb	r3, [r7, #7]
    316a:	79fb      	ldrb	r3, [r7, #7]
    316c:	4619      	mov	r1, r3
    316e:	4803      	ldr	r0, [pc, #12]	; (317c <vt_putc+0x1c>)
    3170:	f7ff ff9e 	bl	30b0 <usart_putc>
    3174:	bf00      	nop
    3176:	3708      	adds	r7, #8
    3178:	46bd      	mov	sp, r7
    317a:	bd80      	pop	{r7, pc}
    317c:	40004400 	.word	0x40004400

00003180 <vt_del_back>:
    3180:	b580      	push	{r7, lr}
    3182:	af00      	add	r7, sp, #0
    3184:	2108      	movs	r1, #8
    3186:	4806      	ldr	r0, [pc, #24]	; (31a0 <vt_del_back+0x20>)
    3188:	f7ff ff92 	bl	30b0 <usart_putc>
    318c:	2120      	movs	r1, #32
    318e:	4804      	ldr	r0, [pc, #16]	; (31a0 <vt_del_back+0x20>)
    3190:	f7ff ff8e 	bl	30b0 <usart_putc>
    3194:	2108      	movs	r1, #8
    3196:	4802      	ldr	r0, [pc, #8]	; (31a0 <vt_del_back+0x20>)
    3198:	f7ff ff8a 	bl	30b0 <usart_putc>
    319c:	bf00      	nop
    319e:	bd80      	pop	{r7, pc}
    31a0:	40004400 	.word	0x40004400

000031a4 <vt_esc_seq>:
    31a4:	b580      	push	{r7, lr}
    31a6:	af00      	add	r7, sp, #0
    31a8:	211b      	movs	r1, #27
    31aa:	4804      	ldr	r0, [pc, #16]	; (31bc <vt_esc_seq+0x18>)
    31ac:	f7ff ff80 	bl	30b0 <usart_putc>
    31b0:	215b      	movs	r1, #91	; 0x5b
    31b2:	4802      	ldr	r0, [pc, #8]	; (31bc <vt_esc_seq+0x18>)
    31b4:	f7ff ff7c 	bl	30b0 <usart_putc>
    31b8:	bf00      	nop
    31ba:	bd80      	pop	{r7, pc}
    31bc:	40004400 	.word	0x40004400

000031c0 <vt_cls>:
    31c0:	b580      	push	{r7, lr}
    31c2:	af00      	add	r7, sp, #0
    31c4:	f7ff ffee 	bl	31a4 <vt_esc_seq>
    31c8:	2132      	movs	r1, #50	; 0x32
    31ca:	4804      	ldr	r0, [pc, #16]	; (31dc <vt_cls+0x1c>)
    31cc:	f7ff ff70 	bl	30b0 <usart_putc>
    31d0:	214a      	movs	r1, #74	; 0x4a
    31d2:	4802      	ldr	r0, [pc, #8]	; (31dc <vt_cls+0x1c>)
    31d4:	f7ff ff6c 	bl	30b0 <usart_putc>
    31d8:	bf00      	nop
    31da:	bd80      	pop	{r7, pc}
    31dc:	40004400 	.word	0x40004400

000031e0 <vt_clear_line>:
    31e0:	b580      	push	{r7, lr}
    31e2:	b082      	sub	sp, #8
    31e4:	af00      	add	r7, sp, #0
    31e6:	6078      	str	r0, [r7, #4]
    31e8:	f7ff ffdc 	bl	31a4 <vt_esc_seq>
    31ec:	2132      	movs	r1, #50	; 0x32
    31ee:	480b      	ldr	r0, [pc, #44]	; (321c <vt_clear_line+0x3c>)
    31f0:	f7ff ff5e 	bl	30b0 <usart_putc>
    31f4:	214b      	movs	r1, #75	; 0x4b
    31f6:	4809      	ldr	r0, [pc, #36]	; (321c <vt_clear_line+0x3c>)
    31f8:	f7ff ff5a 	bl	30b0 <usart_putc>
    31fc:	e006      	b.n	320c <vt_clear_line+0x2c>
    31fe:	2108      	movs	r1, #8
    3200:	4806      	ldr	r0, [pc, #24]	; (321c <vt_clear_line+0x3c>)
    3202:	f7ff ff55 	bl	30b0 <usart_putc>
    3206:	687b      	ldr	r3, [r7, #4]
    3208:	3b01      	subs	r3, #1
    320a:	607b      	str	r3, [r7, #4]
    320c:	687b      	ldr	r3, [r7, #4]
    320e:	2b00      	cmp	r3, #0
    3210:	d1f5      	bne.n	31fe <vt_clear_line+0x1e>
    3212:	bf00      	nop
    3214:	3708      	adds	r7, #8
    3216:	46bd      	mov	sp, r7
    3218:	bd80      	pop	{r7, pc}
    321a:	bf00      	nop
    321c:	40004400 	.word	0x40004400

00003220 <vt_ready>:
    3220:	b480      	push	{r7}
    3222:	af00      	add	r7, sp, #0
    3224:	4b06      	ldr	r3, [pc, #24]	; (3240 <vt_ready+0x20>)
    3226:	689b      	ldr	r3, [r3, #8]
    3228:	f003 0301 	and.w	r3, r3, #1
    322c:	2b00      	cmp	r3, #0
    322e:	bf0c      	ite	eq
    3230:	2301      	moveq	r3, #1
    3232:	2300      	movne	r3, #0
    3234:	b2db      	uxtb	r3, r3
    3236:	4618      	mov	r0, r3
    3238:	46bd      	mov	sp, r7
    323a:	bc80      	pop	{r7}
    323c:	4770      	bx	lr
    323e:	bf00      	nop
    3240:	40010800 	.word	0x40010800

00003244 <vt_rx_enable>:
    3244:	b480      	push	{r7}
    3246:	b085      	sub	sp, #20
    3248:	af00      	add	r7, sp, #0
    324a:	6078      	str	r0, [r7, #4]
    324c:	687b      	ldr	r3, [r7, #4]
    324e:	2b00      	cmp	r3, #0
    3250:	d006      	beq.n	3260 <vt_rx_enable+0x1c>
    3252:	4a0a      	ldr	r2, [pc, #40]	; (327c <vt_rx_enable+0x38>)
    3254:	4b09      	ldr	r3, [pc, #36]	; (327c <vt_rx_enable+0x38>)
    3256:	68db      	ldr	r3, [r3, #12]
    3258:	f043 0320 	orr.w	r3, r3, #32
    325c:	60d3      	str	r3, [r2, #12]
    325e:	e008      	b.n	3272 <vt_rx_enable+0x2e>
    3260:	4b06      	ldr	r3, [pc, #24]	; (327c <vt_rx_enable+0x38>)
    3262:	685b      	ldr	r3, [r3, #4]
    3264:	73fb      	strb	r3, [r7, #15]
    3266:	4a05      	ldr	r2, [pc, #20]	; (327c <vt_rx_enable+0x38>)
    3268:	4b04      	ldr	r3, [pc, #16]	; (327c <vt_rx_enable+0x38>)
    326a:	68db      	ldr	r3, [r3, #12]
    326c:	f023 0320 	bic.w	r3, r3, #32
    3270:	60d3      	str	r3, [r2, #12]
    3272:	bf00      	nop
    3274:	3714      	adds	r7, #20
    3276:	46bd      	mov	sp, r7
    3278:	bc80      	pop	{r7}
    327a:	4770      	bx	lr
    327c:	40004400 	.word	0x40004400

00003280 <USART2_handler>:
    3280:	b580      	push	{r7, lr}
    3282:	af00      	add	r7, sp, #0
    3284:	4b09      	ldr	r3, [pc, #36]	; (32ac <USART2_handler+0x2c>)
    3286:	781b      	ldrb	r3, [r3, #0]
    3288:	2b02      	cmp	r3, #2
    328a:	d10c      	bne.n	32a6 <USART2_handler+0x26>
    328c:	4b08      	ldr	r3, [pc, #32]	; (32b0 <USART2_handler+0x30>)
    328e:	681b      	ldr	r3, [r3, #0]
    3290:	f003 0320 	and.w	r3, r3, #32
    3294:	2b00      	cmp	r3, #0
    3296:	d006      	beq.n	32a6 <USART2_handler+0x26>
    3298:	4b04      	ldr	r3, [pc, #16]	; (32ac <USART2_handler+0x2c>)
    329a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
    329c:	4a04      	ldr	r2, [pc, #16]	; (32b0 <USART2_handler+0x30>)
    329e:	6852      	ldr	r2, [r2, #4]
    32a0:	b2d2      	uxtb	r2, r2
    32a2:	4610      	mov	r0, r2
    32a4:	4798      	blx	r3
    32a6:	bf00      	nop
    32a8:	bd80      	pop	{r7, pc}
    32aa:	bf00      	nop
    32ac:	20000480 	.word	0x20000480
    32b0:	40004400 	.word	0x40004400

000032b4 <vt_flow_ctrl>:
    32b4:	b580      	push	{r7, lr}
    32b6:	b082      	sub	sp, #8
    32b8:	af00      	add	r7, sp, #0
    32ba:	6078      	str	r0, [r7, #4]
    32bc:	687b      	ldr	r3, [r7, #4]
    32be:	2b00      	cmp	r3, #0
    32c0:	d003      	beq.n	32ca <vt_flow_ctrl+0x16>
    32c2:	2026      	movs	r0, #38	; 0x26
    32c4:	f7fe faee 	bl	18a4 <enable_interrupt>
    32c8:	e002      	b.n	32d0 <vt_flow_ctrl+0x1c>
    32ca:	2026      	movs	r0, #38	; 0x26
    32cc:	f7fe fb0e 	bl	18ec <disable_interrupt>
    32d0:	bf00      	nop
    32d2:	3708      	adds	r7, #8
    32d4:	46bd      	mov	sp, r7
    32d6:	bd80      	pop	{r7, pc}
