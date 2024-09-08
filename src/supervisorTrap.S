.extern switchToSSP
.extern switchToSS
.extern _ZN5Riscv20handleSupervisorTrapEv

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -16
    sd ra, 0(sp)

    addi sp, sp, -16
    sd t0, 0(sp)
    sd a5, 8(sp)

    call switchToSSP

    .irp index, 3,4,6,7,8,9,10,11,12,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr

    call _ZN5Riscv20handleSupervisorTrapEv

    # pop all registers from stack
    .irp index, 3,4,6,7,8,9,10,11,12,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr

    call switchToSP

    ld t0, 0(sp)
    ld a5, 8(sp)
    addi sp, sp, 16

    ld ra, 0(sp)
    addi sp, sp, 16

    sret
