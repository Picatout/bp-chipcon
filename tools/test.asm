    ld i, msg
    ld v0,0
    ld v1,6
    prt v0,v1
    ld v0,$b
wait_key:
    skp v0
    jp wait_key
    exit

msg:   
    ascii   "hello world\n"
