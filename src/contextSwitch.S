.global contextSwitch
.type contextSwitch, @function

contextSwitch:
    # a0 - &old->ssp and ra
    # a1 - &running->ssp and ra
    sd sp, 0(a0)
    sd ra, 8(a0)

    ld sp, 0(a1)
    ld ra, 8(a1)

    ret
