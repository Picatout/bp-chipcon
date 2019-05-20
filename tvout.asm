	.cpu cortex-m3
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"tvout.c"
	.comm	month_name,52,4
	.comm	day_name,32,4
	.section	.rodata
	.align	2
	.type	palette, %object
	.size	palette, 8
palette:
	.short	0
	.short	256
	.short	4096
	.short	4352
	.bss
video_mode:
	.space	1
	.size	video_mode, 1
	.align	1
task:
	.space	2
	.size	task, 2
	.align	1
flags:
	.space	2
	.size	flags, 2
	.align	1
slice:
	.space	2
	.size	slice, 2
	.align	1
scan_line:
	.space	2
	.size	scan_line, 2
	.comm	pad,2,2
	.section	.rodata
	.align	2
	.type	video_params, %object
	.size	video_params, 72
video_params:
	.byte	0
	.space	1
	.short	22
	.short	246
	.short	840
	.byte	90
	.byte	2
	.byte	20
	.space	1
	.short	180
	.short	112
	.short	4352
	.byte	1
	.space	1
	.short	38
	.short	230
	.short	840
	.byte	64
	.byte	3
	.byte	20
	.space	1
	.short	128
	.short	64
	.short	4352
	.byte	2
	.space	1
	.short	38
	.short	230
	.short	840
	.byte	64
	.byte	3
	.byte	20
	.space	1
	.short	128
	.short	64
	.short	0
	.byte	3
	.space	1
	.short	22
	.short	246
	.short	840
	.byte	32
	.byte	7
	.byte	0
	.space	1
	.short	64
	.short	32
	.short	0
	.comm	video_buffer,10080,4
	.text
	.align	1
	.global	tvout_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tvout_init, %function
tvout_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r3, .L2+8
	ldr	r2, .L2+12
	str	r2, [r3]
	movs	r2, #10
	movs	r1, #8
	ldr	r0, .L2
	bl	config_pin
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r2, .L2+16
	ldr	r3, .L2+16
	ldr	r3, [r3, #24]
	orr	r3, r3, #2048
	str	r3, [r2, #24]
	ldr	r3, .L2+20
	movs	r2, #120
	str	r2, [r3, #24]
	ldr	r3, .L2+20
	movs	r2, #1
	str	r2, [r3, #32]
	ldr	r3, .L2+20
	movs	r2, #132
	str	r2, [r3]
	ldr	r3, .L2+20
	movw	r2, #4549
	str	r2, [r3, #44]
	ldr	r3, .L2+20
	mov	r2, #336
	str	r2, [r3, #52]
	ldr	r3, .L2+20
	movw	r2, #365
	str	r2, [r3, #56]
	ldr	r2, .L2+20
	ldr	r3, .L2+20
	ldr	r3, [r3, #20]
	orr	r3, r3, #1
	str	r3, [r2, #20]
	ldr	r3, .L2+20
	mov	r2, #32768
	str	r2, [r3, #68]
	ldr	r3, .L2+20
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r2, .L2+20
	ldr	r3, .L2+20
	ldr	r3, [r3, #12]
	orr	r3, r3, #1
	str	r3, [r2, #12]
	movs	r1, #0
	movs	r0, #25
	bl	set_int_priority
	movs	r1, #0
	movs	r0, #27
	bl	set_int_priority
	movs	r0, #27
	bl	enable_interrupt
	movs	r0, #25
	bl	enable_interrupt
	ldr	r2, .L2+20
	ldr	r3, .L2+20
	ldr	r3, [r3]
	orr	r3, r3, #1
	str	r3, [r2]
	movs	r2, #10
	movs	r1, #0
	ldr	r0, .L2+24
	bl	config_pin
	movs	r2, #10
	movs	r1, #1
	ldr	r0, .L2+24
	bl	config_pin
	ldr	r2, .L2+16
	ldr	r3, .L2+16
	ldr	r3, [r3, #28]
	orr	r3, r3, #2
	str	r3, [r2, #28]
	ldr	r3, .L2+28
	movw	r2, #24696
	str	r2, [r3, #28]
	ldr	r3, .L2+28
	mov	r2, #8448
	str	r2, [r3, #32]
	ldr	r3, .L2+28
	movs	r2, #132
	str	r2, [r3]
	ldr	r3, .L2+28
	movs	r2, #19
	str	r2, [r3, #44]
	ldr	r3, .L2+28
	movs	r2, #10
	str	r2, [r3, #60]
	ldr	r3, .L2+28
	movs	r2, #10
	str	r2, [r3, #64]
	ldr	r2, .L2+28
	ldr	r3, .L2+28
	ldr	r3, [r3, #68]
	orr	r3, r3, #32768
	str	r3, [r2, #68]
	ldr	r2, .L2+28
	ldr	r3, .L2+28
	ldr	r3, [r3, #20]
	orr	r3, r3, #1
	str	r3, [r2, #20]
	ldr	r3, .L2+28
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r2, .L2+28
	ldr	r3, .L2+28
	ldr	r3, [r3]
	orr	r3, r3, #1
	str	r3, [r2]
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	1073809408
	.word	-2004339917
	.word	1073809412
	.word	-2008791996
	.word	1073876992
	.word	1073818624
	.word	1073810432
	.word	1073742848
	.size	tvout_init, .-tvout_init
	.align	1
	.global	TV_OUT_handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TV_OUT_handler, %function
TV_OUT_handler:
	@ Stack Align: May be called with mis-aligned SP.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, sp
	bic	r1, r0, #7
	mov	sp, r1
	push	{r0, r4, r5, r6, lr}
	ldr	r3, .L15
	ldrb	r0, [r3]	@ zero_extendqisi2
	cmp	r0, #1
	bls	.L14
.L5:
	ldr	r3, .L15+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L7
	add	r3, r0, r0, lsl #3
	ldr	r2, .L15+8
	add	r3, r2, r3, lsl #1
	ldrh	r2, [r3, #6]
	ldr	r1, .L15+12
.L8:
	ldr	r3, [r1, #36]
	cmp	r3, r2
	bcc	.L8
	ldr	r3, .L15+16
	.syntax unified
@ 213 "tvout.c" 1
	mov r2,r3
	ldr r2,[r2,#0]
	and r2,#15
	lsl r2,#1
	add pc,pc,r2
	.rept 16
	nop
	.endr

@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r5, .L15+20
	ldr	r6, [r5, #32]
	ldr	r2, .L15+8
	lsls	r1, r0, #3
	adds	r3, r1, r0
	add	r3, r2, r3, lsl #1
	ldrh	r4, [r3, #16]
	orrs	r4, r4, r6
	str	r4, [r5, #32]
	ldr	r4, .L15+24
	ldrh	r5, [r4]
	uxth	r5, r5
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	sdiv	r5, r5, r3
	ldr	r3, .L15+28
	mla	r5, r4, r5, r3
	add	r0, r0, r1
	add	r2, r2, r0, lsl #1
	ldrb	r0, [r2, #10]	@ zero_extendqisi2
	cbz	r4, .L9
	mov	r1, r5
	ldr	r4, .L15+32
	ldr	r6, .L15+8
	ldr	lr, .L15
.L10:
	ldrb	r3, [r1]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	strh	r3, [r4]	@ movhi
	.syntax unified
@ 219 "tvout.c" 1
	mov r2,r0
lsl r2,#1
	add pc,pc,r2
	.rept 21
	nop
	.endr

@ 0 "" 2
	.thumb
	.syntax unified
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	and	r3, r3, #15
	strh	r3, [r4]	@ movhi
	.syntax unified
@ 221 "tvout.c" 1
	mov r2,r0
lsl r2,#1
	add pc,pc,r2
	.rept 21
	nop
	.endr

@ 0 "" 2
	.thumb
	.syntax unified
	subs	r2, r1, r5
	ldrb	r3, [lr]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #3
	add	r3, r6, r3, lsl #1
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L10
.L9:
	movs	r2, #0
	ldr	r3, .L15+36
	str	r2, [r3, #12]
	ldr	r2, .L15+20
	ldr	r3, [r2, #32]
	bic	r3, r3, #4352
	str	r3, [r2, #32]
.L7:
	ldr	r2, .L15+12
	ldr	r3, [r2, #16]
	bic	r3, r3, #4
	str	r3, [r2, #16]
	pop	{r0, r4, r5, r6, lr}
	mov	sp, r0
	bx	lr
.L14:
	ldr	r2, .L15+20
	ldr	r3, [r2, #32]
	orr	r3, r3, #256
	str	r3, [r2, #32]
	add	r2, r2, #75776
.L6:
	ldr	r3, [r2, #36]
	cmp	r3, #572
	bls	.L6
	ldr	r2, .L15+20
	ldr	r3, [r2, #32]
	bic	r3, r3, #256
	str	r3, [r2, #32]
	b	.L5
.L16:
	.align	2
.L15:
	.word	video_mode
	.word	flags
	.word	video_params
	.word	1073818624
	.word	1073818660
	.word	1073742848
	.word	slice
	.word	video_buffer
	.word	1073809420
	.word	1073809408
	.size	TV_OUT_handler, .-TV_OUT_handler
	.align	1
	.global	TV_SYNC_handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TV_SYNC_handler, %function
TV_SYNC_handler:
	@ Stack Align: May be called with mis-aligned SP.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, sp
	bic	r1, r0, #7
	mov	sp, r1
	push	{r0}
	ldr	r2, .L37
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L37+4
	ldrh	r3, [r3]
	uxth	r3, r3
	cmp	r3, #7
	bhi	.L18
	tbh	[pc, r3, lsl #1]
.L20:
	.2byte	(.L19-.L20)/2
	.2byte	(.L21-.L20)/2
	.2byte	(.L22-.L20)/2
	.2byte	(.L23-.L20)/2
	.2byte	(.L24-.L20)/2
	.2byte	(.L25-.L20)/2
	.2byte	(.L26-.L20)/2
	.2byte	(.L27-.L20)/2
	.p2align 1
.L19:
	ldr	r3, .L37+8
	ldrh	r3, [r3]
	uxth	r3, r3
	cbz	r3, .L33
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldrh	r3, [r2]
	uxth	r3, r3
	cmp	r3, #6
	bne	.L18
	movs	r2, #0
	ldr	r3, .L37+8
	strh	r2, [r3]	@ movhi
	ldr	r2, .L37+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L33:
	ldr	r3, .L37+12
	movw	r2, #2274
	str	r2, [r3, #44]
	movs	r2, #164
	str	r2, [r3, #52]
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L21:
	ldr	r3, .L37+8
	ldrh	r3, [r3]
	uxth	r3, r3
	cbz	r3, .L34
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldrh	r3, [r2]
	uxth	r3, r3
	cmp	r3, #6
	bne	.L18
	movs	r2, #0
	ldr	r3, .L37+8
	strh	r2, [r3]	@ movhi
	ldr	r2, .L37+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L34:
	movw	r2, #1940
	ldr	r3, .L37+12
	str	r2, [r3, #52]
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L22:
	ldr	r3, .L37+8
	ldrh	r3, [r3]
	uxth	r3, r3
	cbz	r3, .L35
	ldr	r3, .L37+8
	ldrh	r3, [r3]
	uxth	r3, r3
	cmp	r3, #6
	beq	.L36
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L35:
	movs	r2, #164
	ldr	r3, .L37+12
	str	r2, [r3, #52]
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L36:
	ldr	r2, .L37+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L37+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L18
.L23:
	ldr	r2, .L37+12
	movw	r3, #4549
	str	r3, [r2, #44]
	mov	r3, #336
	str	r3, [r2, #52]
	ldr	r1, .L37+16
	ldrh	r3, [r1]
	bic	r3, r3, #2
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r1]	@ movhi
	ldr	r1, .L37
	ldrh	r3, [r1]
	ubfx	r3, r3, #2, #14
	strh	r3, [r1]	@ movhi
	ldr	r1, .L37+4
	ldrh	r3, [r1]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	ldr	r3, [r2, #16]
	bic	r3, r3, #4
	str	r3, [r2, #16]
	ldr	r3, [r2, #12]
	orr	r3, r3, #4
	str	r3, [r2, #12]
.L18:
	ldr	r2, .L37+12
	ldr	r3, [r2, #16]
	bic	r3, r3, #1
	str	r3, [r2, #16]
	pop	{r0}
	mov	sp, r0
	bx	lr
.L24:
	ldr	r3, .L37+20
	ldr	r3, [r3, #8]
	bic	r3, r3, #16128
	bic	r3, r3, #15
	uxth	r3, r3
	ldr	r2, .L37+24
	strh	r3, [r2]	@ movhi
	ldr	r2, .L37+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L18
.L25:
	ldr	r3, .L37
	ldrh	r2, [r3]
	uxth	r2, r2
	ldr	r3, .L37+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #3
	ldr	r1, .L37+32
	add	r3, r1, r3, lsl #1
	ldrh	r3, [r3, #2]
	cmp	r3, r2
	bne	.L18
	ldr	r2, .L37+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	movs	r2, #0
	ldr	r3, .L37+8
	strh	r2, [r3]	@ movhi
	ldr	r2, .L37+16
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #4
	strh	r3, [r2]	@ movhi
	b	.L18
.L26:
	ldr	r2, .L37+8
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L37
	ldrh	r2, [r3]
	uxth	r2, r2
	ldr	r3, .L37+28
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #3
	ldr	r1, .L37+32
	add	r3, r1, r3, lsl #1
	ldrh	r3, [r3, #4]
	cmp	r3, r2
	bne	.L18
	ldr	r2, .L37+4
	ldrh	r3, [r2]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	ldr	r2, .L37+16
	ldrh	r3, [r2]
	bic	r3, r3, #4
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r2]	@ movhi
	b	.L18
.L27:
	ldr	r3, .L37
	ldrh	r3, [r3]
	uxth	r3, r3
	movw	r2, #263
	cmp	r3, r2
	bne	.L18
	ldr	r3, .L37+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L32
	movw	r2, #2274
	ldr	r3, .L37+12
	str	r2, [r3, #44]
.L32:
	ldr	r2, .L37+16
	ldrh	r3, [r2]
	uxth	r3, r3
	eor	r3, r3, #1
	strh	r3, [r2]	@ movhi
	ldrh	r3, [r2]
	uxth	r3, r3
	orr	r3, r3, #2
	strh	r3, [r2]	@ movhi
	movs	r3, #0
	ldr	r2, .L37
	strh	r3, [r2]	@ movhi
	ldr	r2, .L37+8
	strh	r3, [r2]	@ movhi
	ldr	r2, .L37+4
	strh	r3, [r2]	@ movhi
	ldr	r2, .L37+12
	ldr	r3, [r2, #12]
	bic	r3, r3, #4
	str	r3, [r2, #12]
	b	.L18
.L38:
	.align	2
.L37:
	.word	scan_line
	.word	task
	.word	slice
	.word	1073818624
	.word	flags
	.word	1073809408
	.word	pad
	.word	video_mode
	.word	video_params
	.size	TV_SYNC_handler, .-TV_SYNC_handler
	.align	1
	.global	frame_sync
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	frame_sync, %function
frame_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
.L40:
	ldr	r3, .L41
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L40
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L42:
	.align	2
.L41:
	.word	flags
	.size	frame_sync, .-frame_sync
	.align	1
	.global	btn_wait_any
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	btn_wait_any, %function
btn_wait_any:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
.L44:
	ldr	r3, .L46
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r2, r3
	movw	r3, #49392
	ands	r3, r3, r2
	movw	r2, #49392
	cmp	r3, r2
	beq	.L44
	ldr	r3, .L46
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L47:
	.align	2
.L46:
	.word	pad
	.size	btn_wait_any, .-btn_wait_any
	.align	1
	.global	set_video_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_video_mode, %function
set_video_mode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	bl	gfx_cls
	bl	frame_sync
	ldr	r2, .L49
	ldrb	r3, [r7, #7]
	strb	r3, [r2]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	video_mode
	.size	set_video_mode, .-set_video_mode
	.align	1
	.global	get_video_params
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_video_params, %function
get_video_params:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L53
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, .L53+4
	add	r3, r3, r2
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L54:
	.align	2
.L53:
	.word	video_mode
	.word	video_params
	.size	get_video_params, .-get_video_params
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
