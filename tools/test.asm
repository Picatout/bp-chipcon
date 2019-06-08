    nop
    cls
    ld i, msg
    ld vc, [I]
    ld i,$1ff0
    ld s,7
 ;   ld r,vc
    ld v0,0
    ld v1,8
    ld i,msg
    prt v0,v1
    scu 8
;    call tone_test
;    noise 30
    call sprite_test
    scr
    scr
    scl
    scrx v0
    scry v1
    shr v0
    shr v1
    gpix v0,v1 
;    call rnd_pixels
;    cls
    ld i,$1ff0
    ld vc,r
    ld i, buffer
    ld  [i],vc
    ld v0,0
    ld v1,24
    ld i, buffer
    prt v0,v1
    ld v0,$b
    skp v0
    jp .-1
    sknp v0
    jp .-1
    exit

rnd_pixels:
    rnd v0,180
    rnd v1,112
    pixi v0,v1
    ld v2, $b
    skp v2
    jp rnd_pixels
    sknp v2
    jp .-1
    ret

tone_test:
    ld v0,0
    ld v1,30
    tone v0,v1,wait
    add v0,1
    sne v0,16 
    ret
    jp .-4

; draw 3 balls of different color.
sprite_test:
    scrx v0
    scry v1
    shr  v0
    shr  v1
    ld i, sprite ; this is a 4 bpp sprite
    drw v0,v1,8
    ld v0,80
    ld v1,50
    bpp 2
    ld i, sprite2 ; this is a 2 bpp sprite
    drw v0,v1,8
; change the palette and draw same sprite in different color.    
    ld i,pal1
    palt
    ld v0,70
    ld i, sprite2
    drw v0,v1,8
    ret

sprite: ; 4 bits per pixel sprite (8x8 ball)
	db $00,$77,$77,$00
	db $07,$77,$77,$70
	db $77,$77,$77,$77
	db $77,$77,$77,$77
	db $77,$77,$77,$77
	db $77,$77,$77,$77
	db $07,$77,$77,$70
	db $00,$77,$77,$00

sprite2: ; 2 bits per pixel sprite (8x8 ball)
    db $0f,$f0
    db $3f,$fc
    db $ff,$ff
    db $ff,$ff
    db $ff,$ff
    db $ff,$ff
    db $3f,$fc
    db $0f,$f0

pal1: ; palette values
    db 0,15,2,10

msg:   
    ascii   "hello world\n"
buffer:
    dw 0,0,0,0,0,0,0,0

