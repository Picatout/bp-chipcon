    nop
    cls
    ld i, msg
    ld vc, [I]
    ld i,0
    ld r,vc
    ld v0,0
    ld v1,6
    ld i,msg
    prt v0,v1
;    call rnd_pixels
;    cls
    ld i,0
    ld vc,r
    ld i, buffer
    ld  [i],vc
    ld v0,0
    ld v1,0
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

msg:   
    ascii   "hello world\n"
buffer:
    dw 0,0,0,0,0,0,0,0

