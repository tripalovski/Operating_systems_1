
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	9d013103          	ld	sp,-1584(sp) # 8000b9d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	325060ef          	jal	ra,80006b40 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function


_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00113423          	sd	ra,8(sp)
    80001008:	00213823          	sd	sp,16(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04a13823          	sd	a0,80(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)
    ret
    80001080:	00008067          	ret

0000000080001084 <_ZN5Riscv12popRegistersEv>:


_ZN5Riscv12popRegistersEv:
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001084:	00813083          	ld	ra,8(sp)
    80001088:	01013103          	ld	sp,16(sp)
    8000108c:	01813183          	ld	gp,24(sp)
    80001090:	02013203          	ld	tp,32(sp)
    80001094:	02813283          	ld	t0,40(sp)
    80001098:	03013303          	ld	t1,48(sp)
    8000109c:	03813383          	ld	t2,56(sp)
    800010a0:	04013403          	ld	s0,64(sp)
    800010a4:	04813483          	ld	s1,72(sp)
    800010a8:	05013503          	ld	a0,80(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001100:	10010113          	addi	sp,sp,256
    ret
    80001104:	00008067          	ret
	...

0000000080001110 <_ZN5Riscv14supervisorTrapEv>:

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    addi sp, sp, -16
    80001110:	ff010113          	addi	sp,sp,-16
    sd ra, 0(sp)
    80001114:	00113023          	sd	ra,0(sp)

    addi sp, sp, -16
    80001118:	ff010113          	addi	sp,sp,-16
    sd t0, 0(sp)
    8000111c:	00513023          	sd	t0,0(sp)
    sd a5, 8(sp)
    80001120:	00f13423          	sd	a5,8(sp)

    call switchToSSP
    80001124:	229000ef          	jal	ra,80001b4c <switchToSSP>

    .irp index, 3,4,6,7,8,9,10,11,12,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001128:	00313c23          	sd	gp,24(sp)
    8000112c:	02413023          	sd	tp,32(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	09013023          	sd	a6,128(sp)
    80001158:	09113423          	sd	a7,136(sp)
    8000115c:	09213823          	sd	s2,144(sp)
    80001160:	09313c23          	sd	s3,152(sp)
    80001164:	0b413023          	sd	s4,160(sp)
    80001168:	0b513423          	sd	s5,168(sp)
    8000116c:	0b613823          	sd	s6,176(sp)
    80001170:	0b713c23          	sd	s7,184(sp)
    80001174:	0d813023          	sd	s8,192(sp)
    80001178:	0d913423          	sd	s9,200(sp)
    8000117c:	0da13823          	sd	s10,208(sp)
    80001180:	0db13c23          	sd	s11,216(sp)
    80001184:	0fc13023          	sd	t3,224(sp)
    80001188:	0fd13423          	sd	t4,232(sp)
    8000118c:	0fe13823          	sd	t5,240(sp)
    80001190:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001194:	02d010ef          	jal	ra,800029c0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 3,4,6,7,8,9,10,11,12,13,14,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001198:	01813183          	ld	gp,24(sp)
    8000119c:	02013203          	ld	tp,32(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	08013803          	ld	a6,128(sp)
    800011c8:	08813883          	ld	a7,136(sp)
    800011cc:	09013903          	ld	s2,144(sp)
    800011d0:	09813983          	ld	s3,152(sp)
    800011d4:	0a013a03          	ld	s4,160(sp)
    800011d8:	0a813a83          	ld	s5,168(sp)
    800011dc:	0b013b03          	ld	s6,176(sp)
    800011e0:	0b813b83          	ld	s7,184(sp)
    800011e4:	0c013c03          	ld	s8,192(sp)
    800011e8:	0c813c83          	ld	s9,200(sp)
    800011ec:	0d013d03          	ld	s10,208(sp)
    800011f0:	0d813d83          	ld	s11,216(sp)
    800011f4:	0e013e03          	ld	t3,224(sp)
    800011f8:	0e813e83          	ld	t4,232(sp)
    800011fc:	0f013f03          	ld	t5,240(sp)
    80001200:	0f813f83          	ld	t6,248(sp)

    call switchToSP
    80001204:	181000ef          	jal	ra,80001b84 <switchToSP>

    ld t0, 0(sp)
    80001208:	00013283          	ld	t0,0(sp)
    ld a5, 8(sp)
    8000120c:	00813783          	ld	a5,8(sp)
    addi sp, sp, 16
    80001210:	01010113          	addi	sp,sp,16

    ld ra, 0(sp)
    80001214:	00013083          	ld	ra,0(sp)
    addi sp, sp, 16
    80001218:	01010113          	addi	sp,sp,16

    sret
    8000121c:	10200073          	sret
	...

0000000080001228 <contextSwitch>:
.type contextSwitch, @function

contextSwitch:
    # a0 - &old->ssp and ra
    # a1 - &running->ssp and ra
    sd sp, 0(a0)
    80001228:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 8(a0)
    8000122c:	00153423          	sd	ra,8(a0)

    ld sp, 0(a1)
    80001230:	0005b103          	ld	sp,0(a1)
    ld ra, 8(a1)
    80001234:	0085b083          	ld	ra,8(a1)

    ret
    80001238:	00008067          	ret

000000008000123c <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000123c:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001240:	00b29a63          	bne	t0,a1,80001254 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001244:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001248:	fe029ae3          	bnez	t0,8000123c <copy_and_swap>
    li a0, 0               # Set return to success.
    8000124c:	00000513          	li	a0,0
    jr ra                  # Return.
    80001250:	00008067          	ret

0000000080001254 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001254:	00100513          	li	a0,1
    80001258:	00008067          	ret

000000008000125c <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"
#include "../lib/console.h"

void* mem_alloc(size_t size){
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00813423          	sd	s0,8(sp)
    80001264:	01010413          	addi	s0,sp,16
    void* ptr = nullptr;
    if(size <= 0) return ptr;
    80001268:	02050c63          	beqz	a0,800012a0 <_Z9mem_allocm+0x44>

    __asm__ volatile("addi sp, sp, -16");
    8000126c:	ff010113          	addi	sp,sp,-16
    __asm__ volatile("sd a1, 0(sp)");
    80001270:	00b13023          	sd	a1,0(sp)


    size = CONVERT_SIZE_TO_BLOCKS(size);
    80001274:	0ff50513          	addi	a0,a0,255
    80001278:	00855513          	srli	a0,a0,0x8
    __asm__ volatile("mv a1, %0" : : "r"(size)); // mora ovo prvo posto je size u a0, a0 ce se pregazi
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001280:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001284:	00000073          	ecall
    __asm__ volatile("mv %0, a0" : "=r"(ptr));
    80001288:	00050513          	mv	a0,a0

    __asm__ volatile("ld a1, 0(sp)");
    8000128c:	00013583          	ld	a1,0(sp)
    __asm__ volatile("addi sp, sp, 16");
    80001290:	01010113          	addi	sp,sp,16
    return ptr;
}
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret
    if(size <= 0) return ptr;
    800012a0:	00000513          	li	a0,0
    800012a4:	ff1ff06f          	j	80001294 <_Z9mem_allocm+0x38>

00000000800012a8 <_Z8mem_freePv>:

int mem_free(void* ptr){
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    800012b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02");
    800012b8:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    800012bc:	00000073          	ecall

    int res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    800012c0:	00050513          	mv	a0,a0
    return res;
}
    800012c4:	0005051b          	sext.w	a0,a0
    800012c8:	00813403          	ld	s0,8(sp)
    800012cc:	01010113          	addi	sp,sp,16
    800012d0:	00008067          	ret

00000000800012d4 <_Z15thread_dispatchv>:

void thread_dispatch (){
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00813423          	sd	s0,8(sp)
    800012dc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0,0x13");
    800012e0:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800012e4:	00000073          	ecall
}
    800012e8:	00813403          	ld	s0,8(sp)
    800012ec:	01010113          	addi	sp,sp,16
    800012f0:	00008067          	ret

00000000800012f4 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(TCB** handle, void(*start_routine)(void*), void* arg){
    800012f4:	fe010113          	addi	sp,sp,-32
    800012f8:	00113c23          	sd	ra,24(sp)
    800012fc:	00813823          	sd	s0,16(sp)
    80001300:	00913423          	sd	s1,8(sp)
    80001304:	02010413          	addi	s0,sp,32
    80001308:	00050493          	mv	s1,a0
    __asm__ volatile("mv a3, a2");
    8000130c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, a1");
    80001310:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    80001314:	00050593          	mv	a1,a0
    void* stack = mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    80001318:	01000513          	li	a0,16
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	f40080e7          	jalr	-192(ra) # 8000125c <_Z9mem_allocm>
    if(stack == nullptr) return -1;
    80001324:	02050863          	beqz	a0,80001354 <_Z13thread_createPP3TCBPFvPvES2_+0x60>
    __asm__ volatile("mv a4, %0" : : "r"(stack));
    80001328:	00050713          	mv	a4,a0
    __asm__ volatile("li a0, 0x11");
    8000132c:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    80001330:	00000073          	ecall
    if(*handle == nullptr) return -2;
    80001334:	0004b783          	ld	a5,0(s1)
    80001338:	02078263          	beqz	a5,8000135c <_Z13thread_createPP3TCBPFvPvES2_+0x68>
    return 0;
    8000133c:	00000513          	li	a0,0
}
    80001340:	01813083          	ld	ra,24(sp)
    80001344:	01013403          	ld	s0,16(sp)
    80001348:	00813483          	ld	s1,8(sp)
    8000134c:	02010113          	addi	sp,sp,32
    80001350:	00008067          	ret
    if(stack == nullptr) return -1;
    80001354:	fff00513          	li	a0,-1
    80001358:	fe9ff06f          	j	80001340 <_Z13thread_createPP3TCBPFvPvES2_+0x4c>
    if(*handle == nullptr) return -2;
    8000135c:	ffe00513          	li	a0,-2
    80001360:	fe1ff06f          	j	80001340 <_Z13thread_createPP3TCBPFvPvES2_+0x4c>

0000000080001364 <_Z11thread_exitv>:

int thread_exit(){
    80001364:	ff010113          	addi	sp,sp,-16
    80001368:	00813423          	sd	s0,8(sp)
    8000136c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001370:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    80001374:	00000073          	ecall
    return -1;
}
    80001378:	fff00513          	li	a0,-1
    8000137c:	00813403          	ld	s0,8(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_Z8sem_openPP3semj>:

int sem_open (sem_t* handle, unsigned init){
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00813423          	sd	s0,8(sp)
    80001390:	01010413          	addi	s0,sp,16
    __asm__ volatile("addi sp, sp, -16");
    80001394:	ff010113          	addi	sp,sp,-16
    __asm__ volatile("sd a0, 0(sp)");
    80001398:	00a13023          	sd	a0,0(sp)
    __asm__ volatile("sd a1, 8(sp)");
    8000139c:	00b13423          	sd	a1,8(sp)

    __asm__ volatile("mv a2, a1");
    800013a0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    800013a4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    800013a8:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    800013ac:	00000073          	ecall

    __asm__ volatile("ld a1, 8(sp)");
    800013b0:	00813583          	ld	a1,8(sp)
    __asm__ volatile("ld a0, 0(sp)");
    800013b4:	00013503          	ld	a0,0(sp)
    __asm__ volatile("addi sp, sp, 16");
    800013b8:	01010113          	addi	sp,sp,16
    if(handle == nullptr) return -1;
    800013bc:	00050a63          	beqz	a0,800013d0 <_Z8sem_openPP3semj+0x48>
    return 0;
    800013c0:	00000513          	li	a0,0
}
    800013c4:	00813403          	ld	s0,8(sp)
    800013c8:	01010113          	addi	sp,sp,16
    800013cc:	00008067          	ret
    if(handle == nullptr) return -1;
    800013d0:	fff00513          	li	a0,-1
    800013d4:	ff1ff06f          	j	800013c4 <_Z8sem_openPP3semj+0x3c>

00000000800013d8 <_Z9sem_closeP3sem>:

int sem_close (sem_t handle){
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    800013e4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013e8:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    800013ec:	00000073          	ecall
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    800013f0:	00050513          	mv	a0,a0
    return retVal;
}
    800013f4:	0005051b          	sext.w	a0,a0
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z8sem_waitP3sem>:

int sem_wait (sem_t id){
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    __asm__ volatile("addi sp, sp, -16");
    80001410:	ff010113          	addi	sp,sp,-16
    __asm__ volatile("sd a1, 0(sp)");
    80001414:	00b13023          	sd	a1,0(sp)

    __asm__ volatile("mv a1, a0");
    80001418:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000141c:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    80001420:	00000073          	ecall
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    80001424:	00050513          	mv	a0,a0
    80001428:	0005051b          	sext.w	a0,a0

    __asm__ volatile("ld a1, 0(sp)");
    8000142c:	00013583          	ld	a1,0(sp)
    __asm__ volatile("addi sp, sp, 16");
    80001430:	01010113          	addi	sp,sp,16
    return retVal;
}
    80001434:	00813403          	ld	s0,8(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_Z10sem_signalP3sem>:

int sem_signal (sem_t id){
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00813423          	sd	s0,8(sp)
    80001448:	01010413          	addi	s0,sp,16
    __asm__ volatile("addi sp, sp, -16");
    8000144c:	ff010113          	addi	sp,sp,-16
    __asm__ volatile("sd a1, 0(sp)");
    80001450:	00b13023          	sd	a1,0(sp)

    __asm__ volatile("mv a1, a0");
    80001454:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001458:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    8000145c:	00000073          	ecall
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    80001460:	00050513          	mv	a0,a0
    80001464:	0005051b          	sext.w	a0,a0

    __asm__ volatile("ld a1, 0(sp)");
    80001468:	00013583          	ld	a1,0(sp)
    __asm__ volatile("addi sp, sp, 16");
    8000146c:	01010113          	addi	sp,sp,16
    return retVal;
}
    80001470:	00813403          	ld	s0,8(sp)
    80001474:	01010113          	addi	sp,sp,16
    80001478:	00008067          	ret

000000008000147c <_Z13sem_timedwaitP3semm>:

int sem_timedwait(sem_t id, time_t timeout){
    8000147c:	ff010113          	addi	sp,sp,-16
    80001480:	00813423          	sd	s0,8(sp)
    80001484:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, a1");
    80001488:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, a0");
    8000148c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x25");
    80001490:	02500513          	li	a0,37
    __asm__ volatile("ecall");
    80001494:	00000073          	ecall
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    80001498:	00050513          	mv	a0,a0
    return retVal;
}
    8000149c:	0005051b          	sext.w	a0,a0
    800014a0:	00813403          	ld	s0,8(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_Z11sem_trywaitP3sem>:

int sem_trywait(sem_t id){
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    800014b8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x26");
    800014bc:	02600513          	li	a0,38
    __asm__ volatile("ecall");
    800014c0:	00000073          	ecall
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    800014c4:	00050513          	mv	a0,a0
    return retVal;
}
    800014c8:	0005051b          	sext.w	a0,a0
    800014cc:	00813403          	ld	s0,8(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret

00000000800014d8 <_Z10time_sleepm>:

int time_sleep (time_t){
    800014d8:	ff010113          	addi	sp,sp,-16
    800014dc:	00813423          	sd	s0,8(sp)
    800014e0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    800014e4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    800014e8:	03100513          	li	a0,49
    __asm__ volatile("ecall");
    800014ec:	00000073          	ecall
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    800014f0:	00050513          	mv	a0,a0
    return retVal;
}
    800014f4:	0005051b          	sext.w	a0,a0
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret

0000000080001504 <_Z4getcv>:


char getc (){
    80001504:	ff010113          	addi	sp,sp,-16
    80001508:	00813423          	sd	s0,8(sp)
    8000150c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001510:	04100513          	li	a0,65
    __asm__ volatile("ecall");
    80001514:	00000073          	ecall
    char c;
    __asm__ volatile("mv a0, %0" : "=r" (c));
    80001518:	00050513          	mv	a0,a0
    return c;
}
    8000151c:	0ff57513          	andi	a0,a0,255
    80001520:	00813403          	ld	s0,8(sp)
    80001524:	01010113          	addi	sp,sp,16
    80001528:	00008067          	ret

000000008000152c <_Z4putcc>:


void putc (char c){
    8000152c:	ff010113          	addi	sp,sp,-16
    80001530:	00813423          	sd	s0,8(sp)
    80001534:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, a0");
    80001538:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000153c:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80001540:	00000073          	ecall
}
    80001544:	00813403          	ld	s0,8(sp)
    80001548:	01010113          	addi	sp,sp,16
    8000154c:	00008067          	ret

0000000080001550 <_ZN13ConsoleBufferC1Ei>:
#include "../h/consoleBuffer.hpp"
extern size_t descSize;

extern size_t convertSizeInBlocks(size_t size);

ConsoleBuffer::ConsoleBuffer(int cap) : cap(cap), head(0), tail(0) {
    80001550:	fe010113          	addi	sp,sp,-32
    80001554:	00113c23          	sd	ra,24(sp)
    80001558:	00813823          	sd	s0,16(sp)
    8000155c:	00913423          	sd	s1,8(sp)
    80001560:	01213023          	sd	s2,0(sp)
    80001564:	02010413          	addi	s0,sp,32
    80001568:	00050493          	mv	s1,a0
    8000156c:	00058913          	mv	s2,a1
    80001570:	00b52023          	sw	a1,0(a0)
    80001574:	00052823          	sw	zero,16(a0)
    80001578:	00052a23          	sw	zero,20(a0)
    buffer = (char *)MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(sizeof(char) * cap));
    8000157c:	0ff58513          	addi	a0,a1,255
    80001580:	00855513          	srli	a0,a0,0x8
    80001584:	00001097          	auipc	ra,0x1
    80001588:	a94080e7          	jalr	-1388(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
    8000158c:	00a4b423          	sd	a0,8(s1)

    sem::sem_open(&itemAvailable, 0);
    80001590:	00000593          	li	a1,0
    80001594:	02048513          	addi	a0,s1,32
    80001598:	00002097          	auipc	ra,0x2
    8000159c:	c68080e7          	jalr	-920(ra) # 80003200 <_ZN3sem8sem_openEPPS_i>
    sem::sem_open(&spaceAvailable, cap);
    800015a0:	00090593          	mv	a1,s2
    800015a4:	01848513          	addi	a0,s1,24
    800015a8:	00002097          	auipc	ra,0x2
    800015ac:	c58080e7          	jalr	-936(ra) # 80003200 <_ZN3sem8sem_openEPPS_i>
    sem::sem_open(&mutexHead, 1);
    800015b0:	00100593          	li	a1,1
    800015b4:	02848513          	addi	a0,s1,40
    800015b8:	00002097          	auipc	ra,0x2
    800015bc:	c48080e7          	jalr	-952(ra) # 80003200 <_ZN3sem8sem_openEPPS_i>
    sem::sem_open(&mutexTail, 1);
    800015c0:	00100593          	li	a1,1
    800015c4:	03048513          	addi	a0,s1,48
    800015c8:	00002097          	auipc	ra,0x2
    800015cc:	c38080e7          	jalr	-968(ra) # 80003200 <_ZN3sem8sem_openEPPS_i>
}
    800015d0:	01813083          	ld	ra,24(sp)
    800015d4:	01013403          	ld	s0,16(sp)
    800015d8:	00813483          	ld	s1,8(sp)
    800015dc:	00013903          	ld	s2,0(sp)
    800015e0:	02010113          	addi	sp,sp,32
    800015e4:	00008067          	ret

00000000800015e8 <_ZN13ConsoleBuffer3putEc>:
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void ConsoleBuffer::put(char c) {
    800015e8:	fe010113          	addi	sp,sp,-32
    800015ec:	00113c23          	sd	ra,24(sp)
    800015f0:	00813823          	sd	s0,16(sp)
    800015f4:	00913423          	sd	s1,8(sp)
    800015f8:	01213023          	sd	s2,0(sp)
    800015fc:	02010413          	addi	s0,sp,32
    80001600:	00050493          	mv	s1,a0
    80001604:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80001608:	01853503          	ld	a0,24(a0)
    8000160c:	00002097          	auipc	ra,0x2
    80001610:	8fc080e7          	jalr	-1796(ra) # 80002f08 <_ZN3sem4waitEv>
    mutexTail->wait();
    80001614:	0304b503          	ld	a0,48(s1)
    80001618:	00002097          	auipc	ra,0x2
    8000161c:	8f0080e7          	jalr	-1808(ra) # 80002f08 <_ZN3sem4waitEv>

    buffer[tail] = c;
    80001620:	0084b783          	ld	a5,8(s1)
    80001624:	0144a703          	lw	a4,20(s1)
    80001628:	00e787b3          	add	a5,a5,a4
    8000162c:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % cap;
    80001630:	0144a783          	lw	a5,20(s1)
    80001634:	0017879b          	addiw	a5,a5,1
    80001638:	0004a703          	lw	a4,0(s1)
    8000163c:	02e7e7bb          	remw	a5,a5,a4
    80001640:	00f4aa23          	sw	a5,20(s1)

    mutexTail->signal();
    80001644:	0304b503          	ld	a0,48(s1)
    80001648:	00002097          	auipc	ra,0x2
    8000164c:	9e8080e7          	jalr	-1560(ra) # 80003030 <_ZN3sem6signalEv>
    itemAvailable->signal();
    80001650:	0204b503          	ld	a0,32(s1)
    80001654:	00002097          	auipc	ra,0x2
    80001658:	9dc080e7          	jalr	-1572(ra) # 80003030 <_ZN3sem6signalEv>
}
    8000165c:	01813083          	ld	ra,24(sp)
    80001660:	01013403          	ld	s0,16(sp)
    80001664:	00813483          	ld	s1,8(sp)
    80001668:	00013903          	ld	s2,0(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret

0000000080001674 <_ZN13ConsoleBuffer3getEv>:

int ConsoleBuffer::get() {
    80001674:	fe010113          	addi	sp,sp,-32
    80001678:	00113c23          	sd	ra,24(sp)
    8000167c:	00813823          	sd	s0,16(sp)
    80001680:	00913423          	sd	s1,8(sp)
    80001684:	01213023          	sd	s2,0(sp)
    80001688:	02010413          	addi	s0,sp,32
    8000168c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80001690:	02053503          	ld	a0,32(a0)
    80001694:	00002097          	auipc	ra,0x2
    80001698:	874080e7          	jalr	-1932(ra) # 80002f08 <_ZN3sem4waitEv>
    mutexHead->wait();
    8000169c:	0284b503          	ld	a0,40(s1)
    800016a0:	00002097          	auipc	ra,0x2
    800016a4:	868080e7          	jalr	-1944(ra) # 80002f08 <_ZN3sem4waitEv>

    char ret = buffer[head];
    800016a8:	0084b703          	ld	a4,8(s1)
    800016ac:	0104a783          	lw	a5,16(s1)
    800016b0:	00f70733          	add	a4,a4,a5
    800016b4:	00074903          	lbu	s2,0(a4)
    head = (head + 1) % cap;
    800016b8:	0017879b          	addiw	a5,a5,1
    800016bc:	0004a703          	lw	a4,0(s1)
    800016c0:	02e7e7bb          	remw	a5,a5,a4
    800016c4:	00f4a823          	sw	a5,16(s1)

    mutexHead->signal();
    800016c8:	0284b503          	ld	a0,40(s1)
    800016cc:	00002097          	auipc	ra,0x2
    800016d0:	964080e7          	jalr	-1692(ra) # 80003030 <_ZN3sem6signalEv>
    spaceAvailable->signal();
    800016d4:	0184b503          	ld	a0,24(s1)
    800016d8:	00002097          	auipc	ra,0x2
    800016dc:	958080e7          	jalr	-1704(ra) # 80003030 <_ZN3sem6signalEv>

    return ret;
}
    800016e0:	00090513          	mv	a0,s2
    800016e4:	01813083          	ld	ra,24(sp)
    800016e8:	01013403          	ld	s0,16(sp)
    800016ec:	00813483          	ld	s1,8(sp)
    800016f0:	00013903          	ld	s2,0(sp)
    800016f4:	02010113          	addi	sp,sp,32
    800016f8:	00008067          	ret

00000000800016fc <_ZN13ConsoleBuffer6getCntEv>:

int ConsoleBuffer::getCnt() {
    800016fc:	fe010113          	addi	sp,sp,-32
    80001700:	00113c23          	sd	ra,24(sp)
    80001704:	00813823          	sd	s0,16(sp)
    80001708:	00913423          	sd	s1,8(sp)
    8000170c:	01213023          	sd	s2,0(sp)
    80001710:	02010413          	addi	s0,sp,32
    80001714:	00050493          	mv	s1,a0
    mutexHead->wait();
    80001718:	02853503          	ld	a0,40(a0)
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	7ec080e7          	jalr	2028(ra) # 80002f08 <_ZN3sem4waitEv>
    mutexTail->wait();
    80001724:	0304b503          	ld	a0,48(s1)
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	7e0080e7          	jalr	2016(ra) # 80002f08 <_ZN3sem4waitEv>
    int ret;
    if (tail >= head) {
    80001730:	0144a783          	lw	a5,20(s1)
    80001734:	0104a903          	lw	s2,16(s1)
    80001738:	0327ce63          	blt	a5,s2,80001774 <_ZN13ConsoleBuffer6getCntEv+0x78>
        ret = tail - head;
    8000173c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80001740:	0304b503          	ld	a0,48(s1)
    80001744:	00002097          	auipc	ra,0x2
    80001748:	8ec080e7          	jalr	-1812(ra) # 80003030 <_ZN3sem6signalEv>
    mutexHead->signal();
    8000174c:	0284b503          	ld	a0,40(s1)
    80001750:	00002097          	auipc	ra,0x2
    80001754:	8e0080e7          	jalr	-1824(ra) # 80003030 <_ZN3sem6signalEv>

    return ret;
}
    80001758:	00090513          	mv	a0,s2
    8000175c:	01813083          	ld	ra,24(sp)
    80001760:	01013403          	ld	s0,16(sp)
    80001764:	00813483          	ld	s1,8(sp)
    80001768:	00013903          	ld	s2,0(sp)
    8000176c:	02010113          	addi	sp,sp,32
    80001770:	00008067          	ret
        ret = cap - head + tail;
    80001774:	0004a703          	lw	a4,0(s1)
    80001778:	4127093b          	subw	s2,a4,s2
    8000177c:	00f9093b          	addw	s2,s2,a5
    80001780:	fc1ff06f          	j	80001740 <_ZN13ConsoleBuffer6getCntEv+0x44>

0000000080001784 <_ZN13ConsoleBufferD1Ev>:
ConsoleBuffer::~ConsoleBuffer() {
    80001784:	fe010113          	addi	sp,sp,-32
    80001788:	00113c23          	sd	ra,24(sp)
    8000178c:	00813823          	sd	s0,16(sp)
    80001790:	00913423          	sd	s1,8(sp)
    80001794:	01213023          	sd	s2,0(sp)
    80001798:	02010413          	addi	s0,sp,32
    8000179c:	00050493          	mv	s1,a0
    while (getCnt() > 0) {
    800017a0:	00048513          	mv	a0,s1
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	f58080e7          	jalr	-168(ra) # 800016fc <_ZN13ConsoleBuffer6getCntEv>
    800017ac:	02a05a63          	blez	a0,800017e0 <_ZN13ConsoleBufferD1Ev+0x5c>
        char c = buffer[head];
    800017b0:	0084b783          	ld	a5,8(s1)
    800017b4:	0104a703          	lw	a4,16(s1)
    800017b8:	00e787b3          	add	a5,a5,a4
        putc(c);
    800017bc:	0007c503          	lbu	a0,0(a5)
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	d6c080e7          	jalr	-660(ra) # 8000152c <_Z4putcc>
        head = (head + 1) % cap;
    800017c8:	0104a783          	lw	a5,16(s1)
    800017cc:	0017879b          	addiw	a5,a5,1
    800017d0:	0004a703          	lw	a4,0(s1)
    800017d4:	02e7e7bb          	remw	a5,a5,a4
    800017d8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800017dc:	fc5ff06f          	j	800017a0 <_ZN13ConsoleBufferD1Ev+0x1c>
    MemoryAllocator::mem_free(buffer);
    800017e0:	0084b503          	ld	a0,8(s1)
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	9bc080e7          	jalr	-1604(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
    delete itemAvailable;
    800017ec:	0204b903          	ld	s2,32(s1)
    800017f0:	00090e63          	beqz	s2,8000180c <_ZN13ConsoleBufferD1Ev+0x88>
    800017f4:	00090513          	mv	a0,s2
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	aa4080e7          	jalr	-1372(ra) # 8000329c <_ZN3semD1Ev>
    80001800:	00090513          	mv	a0,s2
    80001804:	00002097          	auipc	ra,0x2
    80001808:	a70080e7          	jalr	-1424(ra) # 80003274 <_ZN3semdlEPv>
    delete spaceAvailable;
    8000180c:	0184b903          	ld	s2,24(s1)
    80001810:	00090e63          	beqz	s2,8000182c <_ZN13ConsoleBufferD1Ev+0xa8>
    80001814:	00090513          	mv	a0,s2
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	a84080e7          	jalr	-1404(ra) # 8000329c <_ZN3semD1Ev>
    80001820:	00090513          	mv	a0,s2
    80001824:	00002097          	auipc	ra,0x2
    80001828:	a50080e7          	jalr	-1456(ra) # 80003274 <_ZN3semdlEPv>
    delete mutexTail;
    8000182c:	0304b903          	ld	s2,48(s1)
    80001830:	00090e63          	beqz	s2,8000184c <_ZN13ConsoleBufferD1Ev+0xc8>
    80001834:	00090513          	mv	a0,s2
    80001838:	00002097          	auipc	ra,0x2
    8000183c:	a64080e7          	jalr	-1436(ra) # 8000329c <_ZN3semD1Ev>
    80001840:	00090513          	mv	a0,s2
    80001844:	00002097          	auipc	ra,0x2
    80001848:	a30080e7          	jalr	-1488(ra) # 80003274 <_ZN3semdlEPv>
    delete mutexHead;
    8000184c:	0284b483          	ld	s1,40(s1)
    80001850:	00048e63          	beqz	s1,8000186c <_ZN13ConsoleBufferD1Ev+0xe8>
    80001854:	00048513          	mv	a0,s1
    80001858:	00002097          	auipc	ra,0x2
    8000185c:	a44080e7          	jalr	-1468(ra) # 8000329c <_ZN3semD1Ev>
    80001860:	00048513          	mv	a0,s1
    80001864:	00002097          	auipc	ra,0x2
    80001868:	a10080e7          	jalr	-1520(ra) # 80003274 <_ZN3semdlEPv>
}
    8000186c:	01813083          	ld	ra,24(sp)
    80001870:	01013403          	ld	s0,16(sp)
    80001874:	00813483          	ld	s1,8(sp)
    80001878:	00013903          	ld	s2,0(sp)
    8000187c:	02010113          	addi	sp,sp,32
    80001880:	00008067          	ret

0000000080001884 <_ZN13ConsoleBuffer6isFullEv>:

bool ConsoleBuffer::isFull(){
    80001884:	fe010113          	addi	sp,sp,-32
    80001888:	00113c23          	sd	ra,24(sp)
    8000188c:	00813823          	sd	s0,16(sp)
    80001890:	00913423          	sd	s1,8(sp)
    80001894:	01213023          	sd	s2,0(sp)
    80001898:	02010413          	addi	s0,sp,32
    8000189c:	00050493          	mv	s1,a0
    mutexHead->wait();
    800018a0:	02853503          	ld	a0,40(a0)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	664080e7          	jalr	1636(ra) # 80002f08 <_ZN3sem4waitEv>
    mutexTail->wait();
    800018ac:	0304b503          	ld	a0,48(s1)
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	658080e7          	jalr	1624(ra) # 80002f08 <_ZN3sem4waitEv>
    int cnt;
    if (tail >= head) {
    800018b8:	0144a503          	lw	a0,20(s1)
    800018bc:	0104a903          	lw	s2,16(s1)
    800018c0:	05254263          	blt	a0,s2,80001904 <_ZN13ConsoleBuffer6isFullEv+0x80>
        cnt = tail - head;
    800018c4:	4125093b          	subw	s2,a0,s2
    } else {
        cnt = cap - head + tail;
    }

    mutexTail->signal();
    800018c8:	0304b503          	ld	a0,48(s1)
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	764080e7          	jalr	1892(ra) # 80003030 <_ZN3sem6signalEv>
    mutexHead->signal();
    800018d4:	0284b503          	ld	a0,40(s1)
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	758080e7          	jalr	1880(ra) # 80003030 <_ZN3sem6signalEv>

    return cnt == this->cap;
    800018e0:	0004a503          	lw	a0,0(s1)
    800018e4:	41250533          	sub	a0,a0,s2
}
    800018e8:	00153513          	seqz	a0,a0
    800018ec:	01813083          	ld	ra,24(sp)
    800018f0:	01013403          	ld	s0,16(sp)
    800018f4:	00813483          	ld	s1,8(sp)
    800018f8:	00013903          	ld	s2,0(sp)
    800018fc:	02010113          	addi	sp,sp,32
    80001900:	00008067          	ret
        cnt = cap - head + tail;
    80001904:	0004a783          	lw	a5,0(s1)
    80001908:	4127893b          	subw	s2,a5,s2
    8000190c:	00a9093b          	addw	s2,s2,a0
    80001910:	fb9ff06f          	j	800018c8 <_ZN13ConsoleBuffer6isFullEv+0x44>

0000000080001914 <_ZN13ConsoleBuffernwEm>:


void *ConsoleBuffer::operator new(size_t size) {
    80001914:	ff010113          	addi	sp,sp,-16
    80001918:	00113423          	sd	ra,8(sp)
    8000191c:	00813023          	sd	s0,0(sp)
    80001920:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
    80001924:	0ff50513          	addi	a0,a0,255
    80001928:	00855513          	srli	a0,a0,0x8
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	6ec080e7          	jalr	1772(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001934:	00813083          	ld	ra,8(sp)
    80001938:	00013403          	ld	s0,0(sp)
    8000193c:	01010113          	addi	sp,sp,16
    80001940:	00008067          	ret

0000000080001944 <_ZN13ConsoleBufferdlEPv>:
void ConsoleBuffer::operator delete(void *ptr) {
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00113423          	sd	ra,8(sp)
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001954:	00001097          	auipc	ra,0x1
    80001958:	84c080e7          	jalr	-1972(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_ZN13ConsoleBuffernaEm>:
void *ConsoleBuffer::operator new[](size_t size) {
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00113423          	sd	ra,8(sp)
    80001974:	00813023          	sd	s0,0(sp)
    80001978:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
    8000197c:	0ff50513          	addi	a0,a0,255
    80001980:	00855513          	srli	a0,a0,0x8
    80001984:	00000097          	auipc	ra,0x0
    80001988:	694080e7          	jalr	1684(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_ZN13ConsoleBufferdaEPv>:
void ConsoleBuffer::operator delete[](void *ptr) {
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	7f4080e7          	jalr	2036(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_Z14idleThreadBodyv>:
//
    thread_t mainThread;
    thread_t consoleOutput;
    thread_t idleThread;

void idleThreadBody(){
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    while (true) thread_dispatch();
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	900080e7          	jalr	-1792(ra) # 800012d4 <_Z15thread_dispatchv>
    800019dc:	ff9ff06f          	j	800019d4 <_Z14idleThreadBodyv+0x10>

00000000800019e0 <main>:
}

int main()
{
    800019e0:	fe010113          	addi	sp,sp,-32
    800019e4:	00113c23          	sd	ra,24(sp)
    800019e8:	00813823          	sd	s0,16(sp)
    800019ec:	00913423          	sd	s1,8(sp)
    800019f0:	01213023          	sd	s2,0(sp)
    800019f4:	02010413          	addi	s0,sp,32
    // Memory
    MemoryAllocator::initMemory();
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	8fc080e7          	jalr	-1796(ra) # 800022f4 <_ZN15MemoryAllocator10initMemoryEv>
    // Main Thread
    void* main_stack = MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    80001a00:	01000513          	li	a0,16
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	614080e7          	jalr	1556(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
    80001a0c:	00050693          	mv	a3,a0
    TCB::createThread(&mainThread, nullptr, nullptr, main_stack);
    80001a10:	0000a497          	auipc	s1,0xa
    80001a14:	03048493          	addi	s1,s1,48 # 8000ba40 <mainThread>
    80001a18:	00000613          	li	a2,0
    80001a1c:	00000593          	li	a1,0
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	1e8080e7          	jalr	488(ra) # 80001c0c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
    mainThread->setSys(true);
    80001a2c:	0004b783          	ld	a5,0(s1)

    int getTid() const {return tid;}

    void setSleeping (bool sleep) {this->sleeping = sleep;}

    void setSys(bool sys) {isSys = sys;}
    80001a30:	00100913          	li	s2,1
    80001a34:	01278c23          	sb	s2,24(a5)
    TCB::running = mainThread;
    80001a38:	0000a717          	auipc	a4,0xa
    80001a3c:	fa873703          	ld	a4,-88(a4) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001a40:	00f73023          	sd	a5,0(a4)
    // Console
    myConsole::init();
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	910080e7          	jalr	-1776(ra) # 80002354 <_ZN9myConsole4initEv>
    void* console_stack = MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    80001a4c:	01000513          	li	a0,16
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	5c8080e7          	jalr	1480(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
    80001a58:	00050693          	mv	a3,a0
    TCB::createThread(&consoleOutput, reinterpret_cast<void (*)(void *)>(myConsole::monitorOutput), nullptr, console_stack);
    80001a5c:	00000613          	li	a2,0
    80001a60:	0000a597          	auipc	a1,0xa
    80001a64:	f785b583          	ld	a1,-136(a1) # 8000b9d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001a68:	0000a517          	auipc	a0,0xa
    80001a6c:	fe050513          	addi	a0,a0,-32 # 8000ba48 <consoleOutput>
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	19c080e7          	jalr	412(ra) # 80001c0c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
    consoleOutput->setSys(true);
    80001a78:	0084b783          	ld	a5,8(s1)
    80001a7c:	01278c23          	sb	s2,24(a5)
    // Idle Thread
    void* idle_stack = MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    80001a80:	01000513          	li	a0,16
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	594080e7          	jalr	1428(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
    80001a8c:	00050693          	mv	a3,a0
    TCB::createThread(&idleThread, reinterpret_cast<void (*)(void *)>(idleThreadBody), nullptr, idle_stack);
    80001a90:	00000613          	li	a2,0
    80001a94:	00000597          	auipc	a1,0x0
    80001a98:	f3058593          	addi	a1,a1,-208 # 800019c4 <_Z14idleThreadBodyv>
    80001a9c:	0000a517          	auipc	a0,0xa
    80001aa0:	fb450513          	addi	a0,a0,-76 # 8000ba50 <idleThread>
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	168080e7          	jalr	360(ra) # 80001c0c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
    idleThread->setSys(true);
    80001aac:	0104b783          	ld	a5,16(s1)
    80001ab0:	01278c23          	sb	s2,24(a5)
    // interrupt
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap); //sets interrupt routine
    80001ab4:	0000a797          	auipc	a5,0xa
    80001ab8:	f047b783          	ld	a5,-252(a5) # 8000b9b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001abc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001ac0:	00200793          	li	a5,2
    80001ac4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE); // enables interrupts



    mainThread->setSys(false);
    80001ac8:	0004b783          	ld	a5,0(s1)
    80001acc:	00078c23          	sb	zero,24(a5)
    userMain();
    80001ad0:	00004097          	auipc	ra,0x4
    80001ad4:	574080e7          	jalr	1396(ra) # 80006044 <_Z8userMainv>
    mainThread->setSys(true);
    80001ad8:	0004b783          	ld	a5,0(s1)
    80001adc:	01278c23          	sb	s2,24(a5)

    // gasenje emulatora
    __asm__ volatile("li t1, 0x100000");
    80001ae0:	00100337          	lui	t1,0x100
    __asm__ volatile("li t2, 0x5555");
    80001ae4:	000053b7          	lui	t2,0x5
    80001ae8:	5553839b          	addiw	t2,t2,1365
    __asm__ volatile("sw t2, 0(t1)");
    80001aec:	00732023          	sw	t2,0(t1) # 100000 <_entry-0x7ff00000>

    return 0;
}
    80001af0:	00000513          	li	a0,0
    80001af4:	01813083          	ld	ra,24(sp)
    80001af8:	01013403          	ld	s0,16(sp)
    80001afc:	00813483          	ld	s1,8(sp)
    80001b00:	00013903          	ld	s2,0(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret

0000000080001b0c <_Z41__static_initialization_and_destruction_0ii>:
                if(!temp || TCB::sleepingThreads.getTimeLeft() > 0) break;
                temp = TCB::sleepingThreads.removeFirst();
            }
        }
    }
    80001b0c:	ff010113          	addi	sp,sp,-16
    80001b10:	00813423          	sd	s0,8(sp)
    80001b14:	01010413          	addi	s0,sp,16
    80001b18:	00100793          	li	a5,1
    80001b1c:	00f50863          	beq	a0,a5,80001b2c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b20:	00813403          	ld	s0,8(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret
    80001b2c:	000107b7          	lui	a5,0x10
    80001b30:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b34:	fef596e3          	bne	a1,a5,80001b20 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(0), tail(0) {}
    80001b38:	0000a797          	auipc	a5,0xa
    80001b3c:	f2078793          	addi	a5,a5,-224 # 8000ba58 <_ZN3TCB15sleepingThreadsE>
    80001b40:	0007b023          	sd	zero,0(a5)
    80001b44:	0007b423          	sd	zero,8(a5)
    80001b48:	fd9ff06f          	j	80001b20 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b4c <switchToSSP>:
extern "C" void  switchToSSP(){
    80001b4c:	ff010113          	addi	sp,sp,-16
    80001b50:	00813423          	sd	s0,8(sp)
    80001b54:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv t0, sp");
    80001b58:	00010293          	mv	t0,sp
    __asm__ volatile("mv sp, %[ssp]" : : [ssp] "r" (TCB::running->getSSP()));
    80001b5c:	0000a797          	auipc	a5,0xa
    80001b60:	f0c7b783          	ld	a5,-244(a5) # 8000ba68 <_ZN3TCB7runningE>
    uint64 getSSP() const { return ssp; }
    80001b64:	0307b783          	ld	a5,48(a5)
    80001b68:	00078113          	mv	sp,a5
    __asm__ volatile("addi sp, sp, -256");
    80001b6c:	f0010113          	addi	sp,sp,-256
    __asm__ volatile("sd t0, 2*8(sp)"); // cuvam sp na sistemski stek
    80001b70:	00513823          	sd	t0,16(sp)
    __asm__ volatile("addi sp,sp,-16"); // jer asembler implicitno zauzima na pocetku i oslobadja stek na kraju
    80001b74:	ff010113          	addi	sp,sp,-16
}
    80001b78:	00813403          	ld	s0,8(sp)
    80001b7c:	01010113          	addi	sp,sp,16
    80001b80:	00008067          	ret

0000000080001b84 <switchToSP>:
extern "C" void  switchToSP(){
    80001b84:	ff010113          	addi	sp,sp,-16
    80001b88:	00813423          	sd	s0,8(sp)
    80001b8c:	01010413          	addi	s0,sp,16
    __asm__ volatile("addi sp,sp,16");
    80001b90:	01010113          	addi	sp,sp,16
    __asm__ volatile("ld t0, 2*8(sp)");
    80001b94:	01013283          	ld	t0,16(sp)
    __asm__ volatile("addi sp, sp, 256");
    80001b98:	10010113          	addi	sp,sp,256
    __asm__ volatile("sd sp, (%[ssp])" : : [ssp] "r" (TCB::running->getAddrSSP())) ; // mora da sacuvam ovde ssp inace ce mi se pri sledecem
    80001b9c:	0000a797          	auipc	a5,0xa
    80001ba0:	ecc7b783          	ld	a5,-308(a5) # 8000ba68 <_ZN3TCB7runningE>
    uint64 getAddrSSP() { return (uint64) &ssp; }
    80001ba4:	03078793          	addi	a5,a5,48
    80001ba8:	0027b023          	sd	sp,0(a5)
    __asm__ volatile("mv sp, t0");
    80001bac:	00028113          	mv	sp,t0
}
    80001bb0:	00813403          	ld	s0,8(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN3TCB13threadWrapperEv>:
{
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    __asm__ volatile("addi sp,sp,16"); //posto ovde ulazim sa sistemski stek, a dodace mi se nepotreban opseg
    80001bcc:	01010113          	addi	sp,sp,16
    switchToSP();
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	fb4080e7          	jalr	-76(ra) # 80001b84 <switchToSP>
    Riscv::popSppSpie();
    80001bd8:	00001097          	auipc	ra,0x1
    80001bdc:	dc8080e7          	jalr	-568(ra) # 800029a0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001be0:	0000a797          	auipc	a5,0xa
    80001be4:	e887b783          	ld	a5,-376(a5) # 8000ba68 <_ZN3TCB7runningE>
    80001be8:	0087b703          	ld	a4,8(a5)
    80001bec:	0107b503          	ld	a0,16(a5)
    80001bf0:	000700e7          	jalr	a4
    syscall_c::thread_exit();
    80001bf4:	fffff097          	auipc	ra,0xfffff
    80001bf8:	770080e7          	jalr	1904(ra) # 80001364 <_Z11thread_exitv>
}
    80001bfc:	00813083          	ld	ra,8(sp)
    80001c00:	00013403          	ld	s0,0(sp)
    80001c04:	01010113          	addi	sp,sp,16
    80001c08:	00008067          	ret

0000000080001c0c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>:
int TCB::createThread(TCB **handle, TCB::Body body, void *arg, void *stack_space) {
    80001c0c:	fc010113          	addi	sp,sp,-64
    80001c10:	02113c23          	sd	ra,56(sp)
    80001c14:	02813823          	sd	s0,48(sp)
    80001c18:	02913423          	sd	s1,40(sp)
    80001c1c:	03213023          	sd	s2,32(sp)
    80001c20:	01313c23          	sd	s3,24(sp)
    80001c24:	01413823          	sd	s4,16(sp)
    80001c28:	01513423          	sd	s5,8(sp)
    80001c2c:	04010413          	addi	s0,sp,64
    80001c30:	00050993          	mv	s3,a0
    80001c34:	00058913          	mv	s2,a1
    80001c38:	00060a13          	mv	s4,a2
    80001c3c:	00068a93          	mv	s5,a3
    *handle = (TCB*)MemoryAllocator::mem_alloc(sizeof(TCB));
    80001c40:	06000513          	li	a0,96
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	3d4080e7          	jalr	980(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
    80001c4c:	00050493          	mv	s1,a0
    80001c50:	00a9b023          	sd	a0,0(s3)
    tcb->body = body;
    80001c54:	01253423          	sd	s2,8(a0)
    tcb->arg = arg;
    80001c58:	01453823          	sd	s4,16(a0)
    if(body != nullptr) tcb->stack = (uint8*) stack_space;
    80001c5c:	0c090263          	beqz	s2,80001d20 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x114>
    80001c60:	03553023          	sd	s5,32(a0)
    tcb->isSys = false;
    80001c64:	00048c23          	sb	zero,24(s1)
    tcb->sstack = (uint8*) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    80001c68:	00001537          	lui	a0,0x1
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	3ac080e7          	jalr	940(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
    80001c74:	02a4b423          	sd	a0,40(s1)
    tcb->ssp = (uint64) &tcb->sstack[DEFAULT_STACK_SIZE - 256];
    80001c78:	000017b7          	lui	a5,0x1
    80001c7c:	f0078793          	addi	a5,a5,-256 # f00 <_entry-0x7ffff100>
    80001c80:	00f507b3          	add	a5,a0,a5
    80001c84:	02f4b823          	sd	a5,48(s1)
    tcb->ra = (uint64) &threadWrapper;
    80001c88:	00000797          	auipc	a5,0x0
    80001c8c:	f3478793          	addi	a5,a5,-204 # 80001bbc <_ZN3TCB13threadWrapperEv>
    80001c90:	02f4bc23          	sd	a5,56(s1)
    tcb->timeSlice = DEFAULT_TIME_SLICE;
    80001c94:	00300793          	li	a5,3
    80001c98:	04f4b023          	sd	a5,64(s1)
    tcb->finished = false;
    80001c9c:	04048423          	sb	zero,72(s1)
    tcb->next = nullptr;
    80001ca0:	0404b823          	sd	zero,80(s1)
    if (body != nullptr) Scheduler::put(tcb);
    80001ca4:	00090863          	beqz	s2,80001cb4 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0xa8>
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	670080e7          	jalr	1648(ra) # 8000331c <_ZN9Scheduler3putEP3TCB>
    tcb->tid = TCB::TID++;
    80001cb4:	0000a717          	auipc	a4,0xa
    80001cb8:	da470713          	addi	a4,a4,-604 # 8000ba58 <_ZN3TCB15sleepingThreadsE>
    80001cbc:	01873783          	ld	a5,24(a4)
    80001cc0:	00178693          	addi	a3,a5,1
    80001cc4:	00d73c23          	sd	a3,24(a4)
    80001cc8:	00f4b023          	sd	a5,0(s1)
    tcb->blocked = false;
    80001ccc:	04048c23          	sb	zero,88(s1)
    tcb->sleeping = false;
    80001cd0:	04048ca3          	sb	zero,89(s1)
    if(body != nullptr){
    80001cd4:	00090e63          	beqz	s2,80001cf0 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0xe4>
        uint64 sp = (uint64) &tcb->stack[DEFAULT_STACK_SIZE-16]; // -16 jer ce switchToSSP da oslobodi 16 implicitno
    80001cd8:	0204b783          	ld	a5,32(s1)
    80001cdc:	00001737          	lui	a4,0x1
    80001ce0:	ff070713          	addi	a4,a4,-16 # ff0 <_entry-0x7ffff010>
    80001ce4:	00e787b3          	add	a5,a5,a4
        __asm__ volatile("sd %[sp], 2*8(%[ssp])" :: [sp] "r" (sp), [ssp] "r" (tcb->ssp));
    80001ce8:	0304b703          	ld	a4,48(s1)
    80001cec:	00f73823          	sd	a5,16(a4)
    if (*handle == nullptr) return - 1;
    80001cf0:	0009b783          	ld	a5,0(s3)
    80001cf4:	02078a63          	beqz	a5,80001d28 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x11c>
    return 0;
    80001cf8:	00000513          	li	a0,0
}
    80001cfc:	03813083          	ld	ra,56(sp)
    80001d00:	03013403          	ld	s0,48(sp)
    80001d04:	02813483          	ld	s1,40(sp)
    80001d08:	02013903          	ld	s2,32(sp)
    80001d0c:	01813983          	ld	s3,24(sp)
    80001d10:	01013a03          	ld	s4,16(sp)
    80001d14:	00813a83          	ld	s5,8(sp)
    80001d18:	04010113          	addi	sp,sp,64
    80001d1c:	00008067          	ret
    else tcb->stack = nullptr;
    80001d20:	02053023          	sd	zero,32(a0) # 1020 <_entry-0x7fffefe0>
    80001d24:	f41ff06f          	j	80001c64 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x58>
    if (*handle == nullptr) return - 1;
    80001d28:	fff00513          	li	a0,-1
    80001d2c:	fd1ff06f          	j	80001cfc <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0xf0>

0000000080001d30 <_ZN3TCB8dispatchEv>:
{
    80001d30:	fe010113          	addi	sp,sp,-32
    80001d34:	00113c23          	sd	ra,24(sp)
    80001d38:	00813823          	sd	s0,16(sp)
    80001d3c:	00913423          	sd	s1,8(sp)
    80001d40:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001d44:	0000a497          	auipc	s1,0xa
    80001d48:	d244b483          	ld	s1,-732(s1) # 8000ba68 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001d4c:	0484c783          	lbu	a5,72(s1)
    if (!old->isFinished() and !old->blocked and !old->sleeping) { Scheduler::put(old); }
    80001d50:	00079a63          	bnez	a5,80001d64 <_ZN3TCB8dispatchEv+0x34>
    80001d54:	0584c783          	lbu	a5,88(s1)
    80001d58:	00079663          	bnez	a5,80001d64 <_ZN3TCB8dispatchEv+0x34>
    80001d5c:	0594c783          	lbu	a5,89(s1)
    80001d60:	04078863          	beqz	a5,80001db0 <_ZN3TCB8dispatchEv+0x80>
    running = Scheduler::get();
    80001d64:	00001097          	auipc	ra,0x1
    80001d68:	580080e7          	jalr	1408(ra) # 800032e4 <_ZN9Scheduler3getEv>
    80001d6c:	0000a797          	auipc	a5,0xa
    80001d70:	cec78793          	addi	a5,a5,-788 # 8000ba58 <_ZN3TCB15sleepingThreadsE>
    80001d74:	00a7b823          	sd	a0,16(a5)
    TCB::timeSliceCounter = 0;
    80001d78:	0207b023          	sd	zero,32(a5)
    if(running->isSys) Riscv::ms_sstatus(Riscv::SSTATUS_SPP); // postavi u sistemski rezim
    80001d7c:	01854783          	lbu	a5,24(a0)
    80001d80:	04078063          	beqz	a5,80001dc0 <_ZN3TCB8dispatchEv+0x90>
    80001d84:	10000793          	li	a5,256
    80001d88:	1007a073          	csrs	sstatus,a5
    contextSwitch(&old->ssp, &running->ssp);
    80001d8c:	03050593          	addi	a1,a0,48
    80001d90:	03048513          	addi	a0,s1,48
    80001d94:	fffff097          	auipc	ra,0xfffff
    80001d98:	494080e7          	jalr	1172(ra) # 80001228 <contextSwitch>
}
    80001d9c:	01813083          	ld	ra,24(sp)
    80001da0:	01013403          	ld	s0,16(sp)
    80001da4:	00813483          	ld	s1,8(sp)
    80001da8:	02010113          	addi	sp,sp,32
    80001dac:	00008067          	ret
    if (!old->isFinished() and !old->blocked and !old->sleeping) { Scheduler::put(old); }
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	568080e7          	jalr	1384(ra) # 8000331c <_ZN9Scheduler3putEP3TCB>
    80001dbc:	fa9ff06f          	j	80001d64 <_ZN3TCB8dispatchEv+0x34>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001dc0:	10000793          	li	a5,256
    80001dc4:	1007b073          	csrc	sstatus,a5
}
    80001dc8:	fc5ff06f          	j	80001d8c <_ZN3TCB8dispatchEv+0x5c>

0000000080001dcc <_ZNK3TCB9isBlockedEv>:
bool TCB::isBlocked() const {
    80001dcc:	ff010113          	addi	sp,sp,-16
    80001dd0:	00813423          	sd	s0,8(sp)
    80001dd4:	01010413          	addi	s0,sp,16
}
    80001dd8:	05854503          	lbu	a0,88(a0)
    80001ddc:	00813403          	ld	s0,8(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN3TCB10setBlockedEb>:
void TCB::setBlocked(bool blocked) {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    TCB::blocked = blocked;
    80001df4:	04b50c23          	sb	a1,88(a0)
}
    80001df8:	00813403          	ld	s0,8(sp)
    80001dfc:	01010113          	addi	sp,sp,16
    80001e00:	00008067          	ret

0000000080001e04 <_ZN3TCB10putToSleepEm>:
    if(sleep_time <= 0) return -1;
    80001e04:	0e050e63          	beqz	a0,80001f00 <_ZN3TCB10putToSleepEm+0xfc>
int TCB::putToSleep(time_t sleep_time) {
    80001e08:	fd010113          	addi	sp,sp,-48
    80001e0c:	02113423          	sd	ra,40(sp)
    80001e10:	02813023          	sd	s0,32(sp)
    80001e14:	00913c23          	sd	s1,24(sp)
    80001e18:	01213823          	sd	s2,16(sp)
    80001e1c:	01313423          	sd	s3,8(sp)
    80001e20:	03010413          	addi	s0,sp,48
    80001e24:	00050493          	mv	s1,a0
    TCB::running->sleeping = true;
    80001e28:	0000a917          	auipc	s2,0xa
    80001e2c:	c3090913          	addi	s2,s2,-976 # 8000ba58 <_ZN3TCB15sleepingThreadsE>
    80001e30:	01093983          	ld	s3,16(s2)
    80001e34:	00100793          	li	a5,1
    80001e38:	04f98ca3          	sb	a5,89(s3)
            return MemoryAllocator::mem_alloc(((size + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
    80001e3c:	00100513          	li	a0,1
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	1d8080e7          	jalr	472(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
        Elem(TCB* tcb, Elem *next) : tcb(tcb), sleep_time(0), next(next){}
    80001e48:	01353023          	sd	s3,0(a0)
    80001e4c:	00053423          	sd	zero,8(a0)
    80001e50:	00053823          	sd	zero,16(a0)

    void addInOrder(TCB *data, time_t sleep_time){
        Elem *elem = new Elem(data, 0);

        Elem* prev = 0;
        Elem* current  = head;
    80001e54:	00093783          	ld	a5,0(s2)

        size_t sum = 0;
    80001e58:	00000713          	li	a4,0
        Elem* prev = 0;
    80001e5c:	00000613          	li	a2,0
    80001e60:	0100006f          	j	80001e70 <_ZN3TCB10putToSleepEm+0x6c>

        while(current){
            sum += current->sleep_time;
    80001e64:	00068713          	mv	a4,a3
            if(sum>=sleep_time) {
                sum -= current->sleep_time;
                break;
            }
            prev = current;
    80001e68:	00078613          	mv	a2,a5
            current = current->next;
    80001e6c:	0107b783          	ld	a5,16(a5)
        while(current){
    80001e70:	00078863          	beqz	a5,80001e80 <_ZN3TCB10putToSleepEm+0x7c>
            sum += current->sleep_time;
    80001e74:	0087b683          	ld	a3,8(a5)
    80001e78:	00e686b3          	add	a3,a3,a4
            if(sum>=sleep_time) {
    80001e7c:	fe96e4e3          	bltu	a3,s1,80001e64 <_ZN3TCB10putToSleepEm+0x60>
        }

        if(prev==0){
    80001e80:	04060863          	beqz	a2,80001ed0 <_ZN3TCB10putToSleepEm+0xcc>
            elem->next = current;
            head = elem;
            elem->sleep_time = sleep_time;
            if(elem->next) elem->next->sleep_time = elem->next->sleep_time - sleep_time;
        }else{
            size_t relativeSleepTime = sleep_time - sum;
    80001e84:	40e486b3          	sub	a3,s1,a4
            elem->sleep_time = relativeSleepTime;
    80001e88:	00d53423          	sd	a3,8(a0)
            prev->next = elem;
    80001e8c:	00a63823          	sd	a0,16(a2)
            elem->next = current;
    80001e90:	00f53823          	sd	a5,16(a0)
            if(elem->next==0) tail = elem;
    80001e94:	06078063          	beqz	a5,80001ef4 <_ZN3TCB10putToSleepEm+0xf0>
            else{
                elem->next->sleep_time = elem->next->sleep_time - relativeSleepTime;
    80001e98:	0087b503          	ld	a0,8(a5)
    80001e9c:	409704b3          	sub	s1,a4,s1
    80001ea0:	00a484b3          	add	s1,s1,a0
    80001ea4:	0097b423          	sd	s1,8(a5)
    TCB::dispatch();
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	e88080e7          	jalr	-376(ra) # 80001d30 <_ZN3TCB8dispatchEv>
    return 0;
    80001eb0:	00000513          	li	a0,0
}
    80001eb4:	02813083          	ld	ra,40(sp)
    80001eb8:	02013403          	ld	s0,32(sp)
    80001ebc:	01813483          	ld	s1,24(sp)
    80001ec0:	01013903          	ld	s2,16(sp)
    80001ec4:	00813983          	ld	s3,8(sp)
    80001ec8:	03010113          	addi	sp,sp,48
    80001ecc:	00008067          	ret
            elem->next = current;
    80001ed0:	00f53823          	sd	a5,16(a0)
            head = elem;
    80001ed4:	0000a717          	auipc	a4,0xa
    80001ed8:	b8a73223          	sd	a0,-1148(a4) # 8000ba58 <_ZN3TCB15sleepingThreadsE>
            elem->sleep_time = sleep_time;
    80001edc:	00953423          	sd	s1,8(a0)
            if(elem->next) elem->next->sleep_time = elem->next->sleep_time - sleep_time;
    80001ee0:	fc0784e3          	beqz	a5,80001ea8 <_ZN3TCB10putToSleepEm+0xa4>
    80001ee4:	0087b503          	ld	a0,8(a5)
    80001ee8:	409504b3          	sub	s1,a0,s1
    80001eec:	0097b423          	sd	s1,8(a5)
    80001ef0:	fb9ff06f          	j	80001ea8 <_ZN3TCB10putToSleepEm+0xa4>
            if(elem->next==0) tail = elem;
    80001ef4:	0000a797          	auipc	a5,0xa
    80001ef8:	b6a7b623          	sd	a0,-1172(a5) # 8000ba60 <_ZN3TCB15sleepingThreadsE+0x8>
    80001efc:	fadff06f          	j	80001ea8 <_ZN3TCB10putToSleepEm+0xa4>
    if(sleep_time <= 0) return -1;
    80001f00:	fff00513          	li	a0,-1
}
    80001f04:	00008067          	ret

0000000080001f08 <_ZN3TCB21updateSleepingThreadsEv>:
        if (!head) { return 0; }
    80001f08:	0000a517          	auipc	a0,0xa
    80001f0c:	b5053503          	ld	a0,-1200(a0) # 8000ba58 <_ZN3TCB15sleepingThreadsE>
    80001f10:	00050e63          	beqz	a0,80001f2c <_ZN3TCB21updateSleepingThreadsEv+0x24>
        return head->tcb;
    80001f14:	00053783          	ld	a5,0(a0)
    if(sleeping){
    80001f18:	00078a63          	beqz	a5,80001f2c <_ZN3TCB21updateSleepingThreadsEv+0x24>
        head->sleep_time--;
    80001f1c:	00853783          	ld	a5,8(a0)
    80001f20:	fff78793          	addi	a5,a5,-1
    80001f24:	00f53423          	sd	a5,8(a0)
        if(head->sleep_time <= 0) return true;
    80001f28:	00078463          	beqz	a5,80001f30 <_ZN3TCB21updateSleepingThreadsEv+0x28>
    80001f2c:	00008067          	ret
void TCB::updateSleepingThreads(){
    80001f30:	fe010113          	addi	sp,sp,-32
    80001f34:	00113c23          	sd	ra,24(sp)
    80001f38:	00813823          	sd	s0,16(sp)
    80001f3c:	00913423          	sd	s1,8(sp)
    80001f40:	02010413          	addi	s0,sp,32
        head = head->next;
    80001f44:	01053783          	ld	a5,16(a0)
    80001f48:	0000a717          	auipc	a4,0xa
    80001f4c:	b0f73823          	sd	a5,-1264(a4) # 8000ba58 <_ZN3TCB15sleepingThreadsE>
        if (!head) { tail = 0; }
    80001f50:	00078a63          	beqz	a5,80001f64 <_ZN3TCB21updateSleepingThreadsEv+0x5c>
        TCB *ret = elem->tcb;
    80001f54:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	248080e7          	jalr	584(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
        return ret;
    80001f60:	0340006f          	j	80001f94 <_ZN3TCB21updateSleepingThreadsEv+0x8c>
        if (!head) { tail = 0; }
    80001f64:	0000a797          	auipc	a5,0xa
    80001f68:	ae07be23          	sd	zero,-1284(a5) # 8000ba60 <_ZN3TCB15sleepingThreadsE+0x8>
    80001f6c:	fe9ff06f          	j	80001f54 <_ZN3TCB21updateSleepingThreadsEv+0x4c>
                if(!temp->isFinished()) Scheduler::put(temp);
    80001f70:	00048513          	mv	a0,s1
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	3a8080e7          	jalr	936(ra) # 8000331c <_ZN9Scheduler3putEP3TCB>
    80001f7c:	0240006f          	j	80001fa0 <_ZN3TCB21updateSleepingThreadsEv+0x98>
    80001f80:	0000a797          	auipc	a5,0xa
    80001f84:	ae07b023          	sd	zero,-1312(a5) # 8000ba60 <_ZN3TCB15sleepingThreadsE+0x8>
        TCB *ret = elem->tcb;
    80001f88:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	214080e7          	jalr	532(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
            while(temp){
    80001f94:	02048e63          	beqz	s1,80001fd0 <_ZN3TCB21updateSleepingThreadsEv+0xc8>
    80001f98:	0484c783          	lbu	a5,72(s1)
                if(!temp->isFinished()) Scheduler::put(temp);
    80001f9c:	fc078ae3          	beqz	a5,80001f70 <_ZN3TCB21updateSleepingThreadsEv+0x68>
        if (!head) { return 0; }
    80001fa0:	0000a517          	auipc	a0,0xa
    80001fa4:	ab853503          	ld	a0,-1352(a0) # 8000ba58 <_ZN3TCB15sleepingThreadsE>
    80001fa8:	02050463          	beqz	a0,80001fd0 <_ZN3TCB21updateSleepingThreadsEv+0xc8>
        return head->tcb;
    80001fac:	00053783          	ld	a5,0(a0)
                if(!temp || TCB::sleepingThreads.getTimeLeft() > 0) break;
    80001fb0:	02078063          	beqz	a5,80001fd0 <_ZN3TCB21updateSleepingThreadsEv+0xc8>
        return head->sleep_time;
    80001fb4:	00853783          	ld	a5,8(a0)
    80001fb8:	00079c63          	bnez	a5,80001fd0 <_ZN3TCB21updateSleepingThreadsEv+0xc8>
        head = head->next;
    80001fbc:	01053783          	ld	a5,16(a0)
    80001fc0:	0000a717          	auipc	a4,0xa
    80001fc4:	a8f73c23          	sd	a5,-1384(a4) # 8000ba58 <_ZN3TCB15sleepingThreadsE>
        if (!head) { tail = 0; }
    80001fc8:	fc0790e3          	bnez	a5,80001f88 <_ZN3TCB21updateSleepingThreadsEv+0x80>
    80001fcc:	fb5ff06f          	j	80001f80 <_ZN3TCB21updateSleepingThreadsEv+0x78>
    80001fd0:	01813083          	ld	ra,24(sp)
    80001fd4:	01013403          	ld	s0,16(sp)
    80001fd8:	00813483          	ld	s1,8(sp)
    80001fdc:	02010113          	addi	sp,sp,32
    80001fe0:	00008067          	ret

0000000080001fe4 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00113423          	sd	ra,8(sp)
    80001fec:	00813023          	sd	s0,0(sp)
    80001ff0:	01010413          	addi	s0,sp,16
    80001ff4:	000105b7          	lui	a1,0x10
    80001ff8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ffc:	00100513          	li	a0,1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	b0c080e7          	jalr	-1268(ra) # 80001b0c <_Z41__static_initialization_and_destruction_0ii>
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN15MemoryAllocator9mem_allocEm>:
#include "../h/memoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeHead = nullptr;
BlockHeader* MemoryAllocator::allocatedHead = nullptr;

void *MemoryAllocator::mem_alloc(size_t size) {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00813423          	sd	s0,8(sp)
    80002020:	01010413          	addi	s0,sp,16
    80002024:	00050713          	mv	a4,a0

    BlockHeader* current = freeHead;
    80002028:	0000a517          	auipc	a0,0xa
    8000202c:	a6053503          	ld	a0,-1440(a0) # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
    // treba da pronadjem dovoljno velik slobodni fragment
    while(current){
    80002030:	00050a63          	beqz	a0,80002044 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
        if(current->size < size) current = current->next;
    80002034:	00053783          	ld	a5,0(a0)
    80002038:	00e7f663          	bgeu	a5,a4,80002044 <_ZN15MemoryAllocator9mem_allocEm+0x2c>
    8000203c:	01053503          	ld	a0,16(a0)
    while(current){
    80002040:	ff1ff06f          	j	80002030 <_ZN15MemoryAllocator9mem_allocEm+0x18>
        else break;
    }

    // there is no free space, obuhvata slucaj i ako nema freeHead, tjs = nullptr
    if(!current){
    80002044:	0a050663          	beqz	a0,800020f0 <_ZN15MemoryAllocator9mem_allocEm+0xd8>
        return nullptr;
    }

    size_t remainingFreeSize = current->size - size; // number of free blocks remaining
    80002048:	00053783          	ld	a5,0(a0)
    8000204c:	40e786b3          	sub	a3,a5,a4
    size_t allocatingSize = size; // u slucaju da ostane memorije koja ne moze da se prati sa freeBlockovima
    if(remainingFreeSize < BLOCK_HEADER_SIZE){ // if there is no enough free blocks for new BlockHeader for free memory
    80002050:	02e79c63          	bne	a5,a4,80002088 <_ZN15MemoryAllocator9mem_allocEm+0x70>
        allocatingSize += remainingFreeSize; // npr ako je BLOCK_HEADER_SIZE = 3, a ostalo je 2 slobodna bloka, i njih cu
                                            // da alociram
        //preulancaj free listu
        if(current->prev){
    80002054:	00853703          	ld	a4,8(a0)
    80002058:	02070063          	beqz	a4,80002078 <_ZN15MemoryAllocator9mem_allocEm+0x60>
            current->prev->next = current->next;
    8000205c:	01053683          	ld	a3,16(a0)
    80002060:	00d73823          	sd	a3,16(a4)
        } else{ //znaci da je ovo bila glava
            freeHead = current->next; // znaci ako je current bio poslednji, freeHead ce bude null
        }
        if(current->next) current->next->prev = current->prev;
    80002064:	01053703          	ld	a4,16(a0)
    80002068:	06070063          	beqz	a4,800020c8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    8000206c:	00853683          	ld	a3,8(a0)
    80002070:	00d73423          	sd	a3,8(a4)
    80002074:	0540006f          	j	800020c8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
            freeHead = current->next; // znaci ako je current bio poslednji, freeHead ce bude null
    80002078:	01053703          	ld	a4,16(a0)
    8000207c:	0000a697          	auipc	a3,0xa
    80002080:	a0e6b623          	sd	a4,-1524(a3) # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
    80002084:	fe1ff06f          	j	80002064 <_ZN15MemoryAllocator9mem_allocEm+0x4c>
    } else{
        // napravi novi blok
        BlockHeader* newFreeBlock = (BlockHeader*)((char*)current + (size+BLOCK_HEADER_SIZE)*MEM_BLOCK_SIZE); //+BLOCK_HEADER_SIZE
    80002088:	00170793          	addi	a5,a4,1
    8000208c:	00879793          	slli	a5,a5,0x8
    80002090:	00f507b3          	add	a5,a0,a5
                                                                // zbog blockheadera za pracenje zauzetih blokova
        // if it is head
        if(!current->prev){
    80002094:	00853603          	ld	a2,8(a0)
    80002098:	06060263          	beqz	a2,800020fc <_ZN15MemoryAllocator9mem_allocEm+0xe4>
            freeHead = newFreeBlock;
        }else{
            current->prev->next = newFreeBlock;
    8000209c:	00f63823          	sd	a5,16(a2)
        }
        if(current->next){
    800020a0:	01053603          	ld	a2,16(a0)
    800020a4:	00060463          	beqz	a2,800020ac <_ZN15MemoryAllocator9mem_allocEm+0x94>
            current->next->prev = newFreeBlock; // ulancaj sledeci u listi sa novim
    800020a8:	00f63423          	sd	a5,8(a2)
        }
        newFreeBlock->prev = current->prev;
    800020ac:	00853603          	ld	a2,8(a0)
    800020b0:	00c7b423          	sd	a2,8(a5)
        newFreeBlock->next = current->next;
    800020b4:	01053603          	ld	a2,16(a0)
    800020b8:	00c7b823          	sd	a2,16(a5)
        newFreeBlock->size = remainingFreeSize - BLOCK_HEADER_SIZE; // -BLOCK_HEADER_SIZE zbog novi block koji prati
    800020bc:	fff68693          	addi	a3,a3,-1
    800020c0:	00d7b023          	sd	a3,0(a5)
    size_t allocatingSize = size; // u slucaju da ostane memorije koja ne moze da se prati sa freeBlockovima
    800020c4:	00070793          	mv	a5,a4
    }

    // header za free blokove sad koristimo za alociran blok, prati velicina alocirane momrije, prethodni i sledeci alociran blok
    BlockHeader* newAllocatedBlock = current;
    newAllocatedBlock->size = allocatingSize;
    800020c8:	00f53023          	sd	a5,0(a0)
    if(!allocatedHead) {
    800020cc:	0000a797          	auipc	a5,0xa
    800020d0:	9c47b783          	ld	a5,-1596(a5) # 8000ba90 <_ZN15MemoryAllocator13allocatedHeadE>
    800020d4:	02078a63          	beqz	a5,80002108 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
        allocatedHead = newAllocatedBlock;
        newAllocatedBlock->prev = nullptr;
        newAllocatedBlock->next = nullptr;
    }else {
        BlockHeader *currAllocated = allocatedHead;
        if(currAllocated > newAllocatedBlock){
    800020d8:	04f57263          	bgeu	a0,a5,8000211c <_ZN15MemoryAllocator9mem_allocEm+0x104>
            newAllocatedBlock->next = allocatedHead;
    800020dc:	00f53823          	sd	a5,16(a0)
            allocatedHead->prev = newAllocatedBlock;
    800020e0:	00a7b423          	sd	a0,8(a5)
            allocatedHead = newAllocatedBlock;
    800020e4:	0000a797          	auipc	a5,0xa
    800020e8:	9aa7b623          	sd	a0,-1620(a5) # 8000ba90 <_ZN15MemoryAllocator13allocatedHeadE>
            currAllocated->next = newAllocatedBlock;
            newAllocatedBlock->prev = currAllocated;
        }
    }

    return (char*)newAllocatedBlock + BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE; // + da preskoci header
    800020ec:	10050513          	addi	a0,a0,256
}
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
            freeHead = newFreeBlock;
    800020fc:	0000a617          	auipc	a2,0xa
    80002100:	98f63623          	sd	a5,-1652(a2) # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
    80002104:	f9dff06f          	j	800020a0 <_ZN15MemoryAllocator9mem_allocEm+0x88>
        allocatedHead = newAllocatedBlock;
    80002108:	0000a797          	auipc	a5,0xa
    8000210c:	98a7b423          	sd	a0,-1656(a5) # 8000ba90 <_ZN15MemoryAllocator13allocatedHeadE>
        newAllocatedBlock->prev = nullptr;
    80002110:	00053423          	sd	zero,8(a0)
        newAllocatedBlock->next = nullptr;
    80002114:	00053823          	sd	zero,16(a0)
    80002118:	fd5ff06f          	j	800020ec <_ZN15MemoryAllocator9mem_allocEm+0xd4>
            for ( ;(currAllocated->next) && (currAllocated->next < newAllocatedBlock); currAllocated = currAllocated->next);
    8000211c:	00078713          	mv	a4,a5
    80002120:	0107b783          	ld	a5,16(a5)
    80002124:	00078463          	beqz	a5,8000212c <_ZN15MemoryAllocator9mem_allocEm+0x114>
    80002128:	fea7eae3          	bltu	a5,a0,8000211c <_ZN15MemoryAllocator9mem_allocEm+0x104>
            if (currAllocated->next) {
    8000212c:	00078463          	beqz	a5,80002134 <_ZN15MemoryAllocator9mem_allocEm+0x11c>
                currAllocated->next->prev = newAllocatedBlock;
    80002130:	00a7b423          	sd	a0,8(a5)
            newAllocatedBlock->next = currAllocated->next;
    80002134:	01073783          	ld	a5,16(a4)
    80002138:	00f53823          	sd	a5,16(a0)
            currAllocated->next = newAllocatedBlock;
    8000213c:	00a73823          	sd	a0,16(a4)
            newAllocatedBlock->prev = currAllocated;
    80002140:	00e53423          	sd	a4,8(a0)
    80002144:	fa9ff06f          	j	800020ec <_ZN15MemoryAllocator9mem_allocEm+0xd4>

0000000080002148 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>:
    }
    return 0;
}

// probaj da spojis sa sledecim praznim blokom
void MemoryAllocator::tryToJoin(BlockHeader* current) {
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00813423          	sd	s0,8(sp)
    80002150:	01010413          	addi	s0,sp,16
    if(current->next && ((char*)current + current->size*MEM_BLOCK_SIZE +  BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE
    80002154:	01053703          	ld	a4,16(a0)
    80002158:	00070c63          	beqz	a4,80002170 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
    8000215c:	00053683          	ld	a3,0(a0)
    80002160:	00168793          	addi	a5,a3,1
    80002164:	00879793          	slli	a5,a5,0x8
    80002168:	00f507b3          	add	a5,a0,a5
    8000216c:	00f70863          	beq	a4,a5,8000217c <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x34>
    == (char*)current->next)){
        current->size += current->next->size + BLOCK_HEADER_SIZE; // BlockHeader jer ce ovde da se izgubi jedan headr
        current->next = current->next->next;
        if(current->next) current->next->prev = current;
    }
}
    80002170:	00813403          	ld	s0,8(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret
        current->size += current->next->size + BLOCK_HEADER_SIZE; // BlockHeader jer ce ovde da se izgubi jedan headr
    8000217c:	00073783          	ld	a5,0(a4)
    80002180:	00f686b3          	add	a3,a3,a5
    80002184:	00168693          	addi	a3,a3,1
    80002188:	00d53023          	sd	a3,0(a0)
        current->next = current->next->next;
    8000218c:	01073783          	ld	a5,16(a4)
    80002190:	00f53823          	sd	a5,16(a0)
        if(current->next) current->next->prev = current;
    80002194:	fc078ee3          	beqz	a5,80002170 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>
    80002198:	00a7b423          	sd	a0,8(a5)
}
    8000219c:	fd5ff06f          	j	80002170 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader+0x28>

00000000800021a0 <_ZN15MemoryAllocator8mem_freeEPv>:
    if(!allocatedHead) return -1; // nijedan blok nije alociran
    800021a0:	0000a797          	auipc	a5,0xa
    800021a4:	8f07b783          	ld	a5,-1808(a5) # 8000ba90 <_ZN15MemoryAllocator13allocatedHeadE>
    800021a8:	12078263          	beqz	a5,800022cc <_ZN15MemoryAllocator8mem_freeEPv+0x12c>
    800021ac:	00050713          	mv	a4,a0
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2; // los prosledjen pokazivac
    800021b0:	12050263          	beqz	a0,800022d4 <_ZN15MemoryAllocator8mem_freeEPv+0x134>
    800021b4:	00009697          	auipc	a3,0x9
    800021b8:	7f46b683          	ld	a3,2036(a3) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800021bc:	0006b683          	ld	a3,0(a3)
    800021c0:	10d56e63          	bltu	a0,a3,800022dc <_ZN15MemoryAllocator8mem_freeEPv+0x13c>
    800021c4:	0000a697          	auipc	a3,0xa
    800021c8:	8246b683          	ld	a3,-2012(a3) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800021cc:	0006b683          	ld	a3,0(a3)
    800021d0:	10a6ea63          	bltu	a3,a0,800022e4 <_ZN15MemoryAllocator8mem_freeEPv+0x144>
    for(; (current->next) && (current->next < ptr); current = current->next);
    800021d4:	00078513          	mv	a0,a5
    800021d8:	0107b783          	ld	a5,16(a5)
    800021dc:	00078463          	beqz	a5,800021e4 <_ZN15MemoryAllocator8mem_freeEPv+0x44>
    800021e0:	fee7eae3          	bltu	a5,a4,800021d4 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
    if((char*)current != ((char*)ptr - BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE)) return -3; // los pokazivac
    800021e4:	f0070713          	addi	a4,a4,-256
    800021e8:	10a71263          	bne	a4,a0,800022ec <_ZN15MemoryAllocator8mem_freeEPv+0x14c>
    if(!current->prev) allocatedHead = current->next;
    800021ec:	00853703          	ld	a4,8(a0)
    800021f0:	08070a63          	beqz	a4,80002284 <_ZN15MemoryAllocator8mem_freeEPv+0xe4>
    else current->prev->next = current->next;
    800021f4:	00f73823          	sd	a5,16(a4)
    if(current->next) current->next->prev = current->prev;
    800021f8:	01053783          	ld	a5,16(a0)
    800021fc:	00078663          	beqz	a5,80002208 <_ZN15MemoryAllocator8mem_freeEPv+0x68>
    80002200:	00853703          	ld	a4,8(a0)
    80002204:	00e7b423          	sd	a4,8(a5)
    if(!freeHead){
    80002208:	0000a797          	auipc	a5,0xa
    8000220c:	8807b783          	ld	a5,-1920(a5) # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
    80002210:	08078063          	beqz	a5,80002290 <_ZN15MemoryAllocator8mem_freeEPv+0xf0>
int MemoryAllocator::mem_free(void* ptr) {
    80002214:	fe010113          	addi	sp,sp,-32
    80002218:	00113c23          	sd	ra,24(sp)
    8000221c:	00813823          	sd	s0,16(sp)
    80002220:	00913423          	sd	s1,8(sp)
    80002224:	02010413          	addi	s0,sp,32
    } else if(current < freeHead){
    80002228:	08f56063          	bltu	a0,a5,800022a8 <_ZN15MemoryAllocator8mem_freeEPv+0x108>
        for(; (currentFree->next) && (currentFree->next < current); currentFree = currentFree->next);
    8000222c:	00078493          	mv	s1,a5
    80002230:	0107b783          	ld	a5,16(a5)
    80002234:	00078463          	beqz	a5,8000223c <_ZN15MemoryAllocator8mem_freeEPv+0x9c>
    80002238:	fea7eae3          	bltu	a5,a0,8000222c <_ZN15MemoryAllocator8mem_freeEPv+0x8c>
        current->prev = currentFree;
    8000223c:	00953423          	sd	s1,8(a0)
        current->next = currentFree->next;
    80002240:	0104b783          	ld	a5,16(s1)
    80002244:	00f53823          	sd	a5,16(a0)
        currentFree->next = current;
    80002248:	00a4b823          	sd	a0,16(s1)
        if(current->next) current->next->prev = current;
    8000224c:	01053783          	ld	a5,16(a0)
    80002250:	00078463          	beqz	a5,80002258 <_ZN15MemoryAllocator8mem_freeEPv+0xb8>
    80002254:	00a7b423          	sd	a0,8(a5)
        tryToJoin(current); // ce proba da spoji current (koji je mozda spojen sa cirrefree) sa current->next
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	ef0080e7          	jalr	-272(ra) # 80002148 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
        tryToJoin(currentFree); // ce proba da spoji sa current
    80002260:	00048513          	mv	a0,s1
    80002264:	00000097          	auipc	ra,0x0
    80002268:	ee4080e7          	jalr	-284(ra) # 80002148 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    8000226c:	00000513          	li	a0,0
}
    80002270:	01813083          	ld	ra,24(sp)
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	00813483          	ld	s1,8(sp)
    8000227c:	02010113          	addi	sp,sp,32
    80002280:	00008067          	ret
    if(!current->prev) allocatedHead = current->next;
    80002284:	0000a717          	auipc	a4,0xa
    80002288:	80f73623          	sd	a5,-2036(a4) # 8000ba90 <_ZN15MemoryAllocator13allocatedHeadE>
    8000228c:	f6dff06f          	j	800021f8 <_ZN15MemoryAllocator8mem_freeEPv+0x58>
        freeHead = current;
    80002290:	00009797          	auipc	a5,0x9
    80002294:	7ea7bc23          	sd	a0,2040(a5) # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
        current->prev = nullptr;
    80002298:	00053423          	sd	zero,8(a0)
        current->next = nullptr;
    8000229c:	00053823          	sd	zero,16(a0)
    return 0;
    800022a0:	00000513          	li	a0,0
    800022a4:	00008067          	ret
        freeHead->prev = current;
    800022a8:	00a7b423          	sd	a0,8(a5)
        current->next = freeHead;
    800022ac:	00f53823          	sd	a5,16(a0)
        freeHead = current;
    800022b0:	00009797          	auipc	a5,0x9
    800022b4:	7ca7bc23          	sd	a0,2008(a5) # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
        current->prev = nullptr;
    800022b8:	00053423          	sd	zero,8(a0)
        tryToJoin(current);
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	e8c080e7          	jalr	-372(ra) # 80002148 <_ZN15MemoryAllocator9tryToJoinEP11BlockHeader>
    return 0;
    800022c4:	00000513          	li	a0,0
    800022c8:	fa9ff06f          	j	80002270 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    if(!allocatedHead) return -1; // nijedan blok nije alociran
    800022cc:	fff00513          	li	a0,-1
    800022d0:	00008067          	ret
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2; // los prosledjen pokazivac
    800022d4:	ffe00513          	li	a0,-2
    800022d8:	00008067          	ret
    800022dc:	ffe00513          	li	a0,-2
    800022e0:	00008067          	ret
    800022e4:	ffe00513          	li	a0,-2
    800022e8:	00008067          	ret
    if((char*)current != ((char*)ptr - BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE)) return -3; // los pokazivac
    800022ec:	ffd00513          	li	a0,-3
}
    800022f0:	00008067          	ret

00000000800022f4 <_ZN15MemoryAllocator10initMemoryEv>:

void MemoryAllocator::initMemory(){
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16
    freeHead = (BlockHeader*)(((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1));
    80002300:	00009797          	auipc	a5,0x9
    80002304:	6a87b783          	ld	a5,1704(a5) # 8000b9a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002308:	0007b603          	ld	a2,0(a5)
    8000230c:	0ff60713          	addi	a4,a2,255
    80002310:	f0077713          	andi	a4,a4,-256
    80002314:	00009697          	auipc	a3,0x9
    80002318:	77468693          	addi	a3,a3,1908 # 8000ba88 <_ZN15MemoryAllocator8freeHeadE>
    8000231c:	00e6b023          	sd	a4,0(a3)
    freeHead->size = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR)/MEM_BLOCK_SIZE - BLOCK_HEADER_SIZE;
    80002320:	00009797          	auipc	a5,0x9
    80002324:	6c87b783          	ld	a5,1736(a5) # 8000b9e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002328:	0007b783          	ld	a5,0(a5)
    8000232c:	40c787b3          	sub	a5,a5,a2
    80002330:	0087d793          	srli	a5,a5,0x8
    80002334:	fff78793          	addi	a5,a5,-1
    80002338:	00f73023          	sd	a5,0(a4)
    freeHead->prev = nullptr;
    8000233c:	0006b783          	ld	a5,0(a3)
    80002340:	0007b423          	sd	zero,8(a5)
    freeHead->next = nullptr;
    80002344:	0007b823          	sd	zero,16(a5)
    80002348:	00813403          	ld	s0,8(sp)
    8000234c:	01010113          	addi	sp,sp,16
    80002350:	00008067          	ret

0000000080002354 <_ZN9myConsole4initEv>:
#include "../h/myConsole.hpp"

ConsoleBuffer* myConsole::buffIn = nullptr;
ConsoleBuffer* myConsole:: buffOut = nullptr;

void myConsole::init() {
    80002354:	fe010113          	addi	sp,sp,-32
    80002358:	00113c23          	sd	ra,24(sp)
    8000235c:	00813823          	sd	s0,16(sp)
    80002360:	00913423          	sd	s1,8(sp)
    80002364:	01213023          	sd	s2,0(sp)
    80002368:	02010413          	addi	s0,sp,32
    buffIn = new ConsoleBuffer(200);
    8000236c:	03800513          	li	a0,56
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	5a4080e7          	jalr	1444(ra) # 80001914 <_ZN13ConsoleBuffernwEm>
    80002378:	00050493          	mv	s1,a0
    8000237c:	0c800593          	li	a1,200
    80002380:	fffff097          	auipc	ra,0xfffff
    80002384:	1d0080e7          	jalr	464(ra) # 80001550 <_ZN13ConsoleBufferC1Ei>
    80002388:	00009797          	auipc	a5,0x9
    8000238c:	7097b823          	sd	s1,1808(a5) # 8000ba98 <_ZN9myConsole6buffInE>
    buffOut = new ConsoleBuffer(200);
    80002390:	03800513          	li	a0,56
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	580080e7          	jalr	1408(ra) # 80001914 <_ZN13ConsoleBuffernwEm>
    8000239c:	00050493          	mv	s1,a0
    800023a0:	0c800593          	li	a1,200
    800023a4:	fffff097          	auipc	ra,0xfffff
    800023a8:	1ac080e7          	jalr	428(ra) # 80001550 <_ZN13ConsoleBufferC1Ei>
    800023ac:	00009797          	auipc	a5,0x9
    800023b0:	6e97ba23          	sd	s1,1780(a5) # 8000baa0 <_ZN9myConsole7buffOutE>
}
    800023b4:	01813083          	ld	ra,24(sp)
    800023b8:	01013403          	ld	s0,16(sp)
    800023bc:	00813483          	ld	s1,8(sp)
    800023c0:	00013903          	ld	s2,0(sp)
    800023c4:	02010113          	addi	sp,sp,32
    800023c8:	00008067          	ret
    800023cc:	00050913          	mv	s2,a0
    buffIn = new ConsoleBuffer(200);
    800023d0:	00048513          	mv	a0,s1
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	570080e7          	jalr	1392(ra) # 80001944 <_ZN13ConsoleBufferdlEPv>
    800023dc:	00090513          	mv	a0,s2
    800023e0:	0000a097          	auipc	ra,0xa
    800023e4:	7f8080e7          	jalr	2040(ra) # 8000cbd8 <_Unwind_Resume>
    800023e8:	00050913          	mv	s2,a0
    buffOut = new ConsoleBuffer(200);
    800023ec:	00048513          	mv	a0,s1
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	554080e7          	jalr	1364(ra) # 80001944 <_ZN13ConsoleBufferdlEPv>
    800023f8:	00090513          	mv	a0,s2
    800023fc:	0000a097          	auipc	ra,0xa
    80002400:	7dc080e7          	jalr	2012(ra) # 8000cbd8 <_Unwind_Resume>

0000000080002404 <_ZN9myConsole4getcEv>:

char myConsole::getc() {
    80002404:	ff010113          	addi	sp,sp,-16
    80002408:	00113423          	sd	ra,8(sp)
    8000240c:	00813023          	sd	s0,0(sp)
    80002410:	01010413          	addi	s0,sp,16
    return buffIn->get();
    80002414:	00009517          	auipc	a0,0x9
    80002418:	68453503          	ld	a0,1668(a0) # 8000ba98 <_ZN9myConsole6buffInE>
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	258080e7          	jalr	600(ra) # 80001674 <_ZN13ConsoleBuffer3getEv>
}
    80002424:	0ff57513          	andi	a0,a0,255
    80002428:	00813083          	ld	ra,8(sp)
    8000242c:	00013403          	ld	s0,0(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN9myConsole19recieveFromKeyboardEc>:

void myConsole::recieveFromKeyboard(char c) {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00113423          	sd	ra,8(sp)
    80002440:	00813023          	sd	s0,0(sp)
    80002444:	01010413          	addi	s0,sp,16
    80002448:	00050593          	mv	a1,a0
    buffIn->put(c);
    8000244c:	00009517          	auipc	a0,0x9
    80002450:	64c53503          	ld	a0,1612(a0) # 8000ba98 <_ZN9myConsole6buffInE>
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	194080e7          	jalr	404(ra) # 800015e8 <_ZN13ConsoleBuffer3putEc>
}
    8000245c:	00813083          	ld	ra,8(sp)
    80002460:	00013403          	ld	s0,0(sp)
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <_ZN9myConsole13sendToMonitorEv>:

char myConsole::sendToMonitor() {
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00113423          	sd	ra,8(sp)
    80002474:	00813023          	sd	s0,0(sp)
    80002478:	01010413          	addi	s0,sp,16
    return buffOut->get();
    8000247c:	00009517          	auipc	a0,0x9
    80002480:	62453503          	ld	a0,1572(a0) # 8000baa0 <_ZN9myConsole7buffOutE>
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	1f0080e7          	jalr	496(ra) # 80001674 <_ZN13ConsoleBuffer3getEv>
}
    8000248c:	0ff57513          	andi	a0,a0,255
    80002490:	00813083          	ld	ra,8(sp)
    80002494:	00013403          	ld	s0,0(sp)
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <_ZN9myConsole4putcEc>:
void myConsole::putc(char c) {
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00113423          	sd	ra,8(sp)
    800024a8:	00813023          	sd	s0,0(sp)
    800024ac:	01010413          	addi	s0,sp,16
    800024b0:	00050593          	mv	a1,a0
    buffOut->put(c);
    800024b4:	00009517          	auipc	a0,0x9
    800024b8:	5ec53503          	ld	a0,1516(a0) # 8000baa0 <_ZN9myConsole7buffOutE>
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	12c080e7          	jalr	300(ra) # 800015e8 <_ZN13ConsoleBuffer3putEc>
}
    800024c4:	00813083          	ld	ra,8(sp)
    800024c8:	00013403          	ld	s0,0(sp)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret

00000000800024d4 <_ZN9myConsole13monitorOutputEv>:

void myConsole::monitorOutput(){
    800024d4:	fe010113          	addi	sp,sp,-32
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	00813823          	sd	s0,16(sp)
    800024e0:	00913423          	sd	s1,8(sp)
    800024e4:	01213023          	sd	s2,0(sp)
    800024e8:	02010413          	addi	s0,sp,32
    while (true){
        char status = *(char*)CONSOLE_STATUS;
    800024ec:	00009797          	auipc	a5,0x9
    800024f0:	4b47b783          	ld	a5,1204(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800024f4:	0007b903          	ld	s2,0(a5)
    800024f8:	00094783          	lbu	a5,0(s2)
        while(status &  CONSOLE_TX_STATUS_BIT) {
    800024fc:	0207f793          	andi	a5,a5,32
    80002500:	fe0786e3          	beqz	a5,800024ec <_ZN9myConsole13monitorOutputEv+0x18>
            *(char *) CONSOLE_TX_DATA = myConsole::sendToMonitor();
    80002504:	00009797          	auipc	a5,0x9
    80002508:	4c47b783          	ld	a5,1220(a5) # 8000b9c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000250c:	0007b483          	ld	s1,0(a5)
    80002510:	00000097          	auipc	ra,0x0
    80002514:	f5c080e7          	jalr	-164(ra) # 8000246c <_ZN9myConsole13sendToMonitorEv>
    80002518:	00a48023          	sb	a0,0(s1)
            status = *(char *) CONSOLE_STATUS;
    8000251c:	00094783          	lbu	a5,0(s2)
        while(status &  CONSOLE_TX_STATUS_BIT) {
    80002520:	fddff06f          	j	800024fc <_ZN9myConsole13monitorOutputEv+0x28>

0000000080002524 <_ZN6ThreadD1Ev>:
void *operator new(size_t size);
void *operator new[](size_t size);
void operator delete(void *ptr) noexcept;
void operator delete[](void *ptr) noexcept;

class Thread {
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
    80002530:	00813403          	ld	s0,8(sp)
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00008067          	ret

000000008000253c <_ZN6Thread7wrapperEPv>:
    this->arg = this;
    this->myHandle = nullptr;
}

void Thread::wrapper(void* ptr) {
    if(ptr) ((Thread*)ptr)->run();
    8000253c:	02050863          	beqz	a0,8000256c <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void* ptr) {
    80002540:	ff010113          	addi	sp,sp,-16
    80002544:	00113423          	sd	ra,8(sp)
    80002548:	00813023          	sd	s0,0(sp)
    8000254c:	01010413          	addi	s0,sp,16
    if(ptr) ((Thread*)ptr)->run();
    80002550:	00053783          	ld	a5,0(a0)
    80002554:	0107b783          	ld	a5,16(a5)
    80002558:	000780e7          	jalr	a5
}
    8000255c:	00813083          	ld	ra,8(sp)
    80002560:	00013403          	ld	s0,0(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret
    8000256c:	00008067          	ret

0000000080002570 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    80002580:	00009797          	auipc	a5,0x9
    80002584:	25078793          	addi	a5,a5,592 # 8000b7d0 <_ZTV9Semaphore+0x10>
    80002588:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000258c:	00853503          	ld	a0,8(a0)
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	e48080e7          	jalr	-440(ra) # 800013d8 <_Z9sem_closeP3sem>
}
    80002598:	00813083          	ld	ra,8(sp)
    8000259c:	00013403          	ld	s0,0(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <_Znwm>:
void *operator new(size_t size) {
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00113423          	sd	ra,8(sp)
    800025b0:	00813023          	sd	s0,0(sp)
    800025b4:	01010413          	addi	s0,sp,16
    return mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
    800025b8:	0ff50513          	addi	a0,a0,255
    800025bc:	00855513          	srli	a0,a0,0x8
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	c9c080e7          	jalr	-868(ra) # 8000125c <_Z9mem_allocm>
}
    800025c8:	00813083          	ld	ra,8(sp)
    800025cc:	00013403          	ld	s0,0(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <_Znam>:
void *operator new[](size_t size) {
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00113423          	sd	ra,8(sp)
    800025e0:	00813023          	sd	s0,0(sp)
    800025e4:	01010413          	addi	s0,sp,16
    return mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
    800025e8:	0ff50513          	addi	a0,a0,255
    800025ec:	00855513          	srli	a0,a0,0x8
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	c6c080e7          	jalr	-916(ra) # 8000125c <_Z9mem_allocm>
}
    800025f8:	00813083          	ld	ra,8(sp)
    800025fc:	00013403          	ld	s0,0(sp)
    80002600:	01010113          	addi	sp,sp,16
    80002604:	00008067          	ret

0000000080002608 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00113423          	sd	ra,8(sp)
    80002610:	00813023          	sd	s0,0(sp)
    80002614:	01010413          	addi	s0,sp,16
mem_free(ptr);
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	c90080e7          	jalr	-880(ra) # 800012a8 <_Z8mem_freePv>
}
    80002620:	00813083          	ld	ra,8(sp)
    80002624:	00013403          	ld	s0,0(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN6ThreadD0Ev>:
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00000097          	auipc	ra,0x0
    80002644:	fc8080e7          	jalr	-56(ra) # 80002608 <_ZdlPv>
    80002648:	00813083          	ld	ra,8(sp)
    8000264c:	00013403          	ld	s0,0(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret

0000000080002658 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00113c23          	sd	ra,24(sp)
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	02010413          	addi	s0,sp,32
    8000266c:	00050493          	mv	s1,a0
}
    80002670:	00000097          	auipc	ra,0x0
    80002674:	f00080e7          	jalr	-256(ra) # 80002570 <_ZN9SemaphoreD1Ev>
    80002678:	00048513          	mv	a0,s1
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	f8c080e7          	jalr	-116(ra) # 80002608 <_ZdlPv>
    80002684:	01813083          	ld	ra,24(sp)
    80002688:	01013403          	ld	s0,16(sp)
    8000268c:	00813483          	ld	s1,8(sp)
    80002690:	02010113          	addi	sp,sp,32
    80002694:	00008067          	ret

0000000080002698 <_ZdaPv>:
void operator delete[](void *ptr) noexcept {
    80002698:	ff010113          	addi	sp,sp,-16
    8000269c:	00113423          	sd	ra,8(sp)
    800026a0:	00813023          	sd	s0,0(sp)
    800026a4:	01010413          	addi	s0,sp,16
mem_free(ptr);
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	c00080e7          	jalr	-1024(ra) # 800012a8 <_Z8mem_freePv>
}
    800026b0:	00813083          	ld	ra,8(sp)
    800026b4:	00013403          	ld	s0,0(sp)
    800026b8:	01010113          	addi	sp,sp,16
    800026bc:	00008067          	ret

00000000800026c0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00813423          	sd	s0,8(sp)
    800026c8:	01010413          	addi	s0,sp,16
    800026cc:	00009797          	auipc	a5,0x9
    800026d0:	0dc78793          	addi	a5,a5,220 # 8000b7a8 <_ZTV6Thread+0x10>
    800026d4:	00f53023          	sd	a5,0(a0)
    this->body = body;
    800026d8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800026dc:	00c53c23          	sd	a2,24(a0)
    this->myHandle = nullptr;
    800026e0:	00053423          	sd	zero,8(a0)
}
    800026e4:	00813403          	ld	s0,8(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN6Thread5startEv>:
int Thread::start() {
    800026f0:	ff010113          	addi	sp,sp,-16
    800026f4:	00113423          	sd	ra,8(sp)
    800026f8:	00813023          	sd	s0,0(sp)
    800026fc:	01010413          	addi	s0,sp,16
    return thread_create(&this->myHandle, this->body, this->arg);
    80002700:	01853603          	ld	a2,24(a0)
    80002704:	01053583          	ld	a1,16(a0)
    80002708:	00850513          	addi	a0,a0,8
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	be8080e7          	jalr	-1048(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	ba0080e7          	jalr	-1120(ra) # 800012d4 <_Z15thread_dispatchv>
}
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00113423          	sd	ra,8(sp)
    80002754:	00813023          	sd	s0,0(sp)
    80002758:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    8000275c:	fffff097          	auipc	ra,0xfffff
    80002760:	d7c080e7          	jalr	-644(ra) # 800014d8 <_Z10time_sleepm>
}
    80002764:	00813083          	ld	ra,8(sp)
    80002768:	00013403          	ld	s0,0(sp)
    8000276c:	01010113          	addi	sp,sp,16
    80002770:	00008067          	ret

0000000080002774 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002774:	ff010113          	addi	sp,sp,-16
    80002778:	00813423          	sd	s0,8(sp)
    8000277c:	01010413          	addi	s0,sp,16
    80002780:	00009797          	auipc	a5,0x9
    80002784:	02878793          	addi	a5,a5,40 # 8000b7a8 <_ZTV6Thread+0x10>
    80002788:	00f53023          	sd	a5,0(a0)
    this->body = wrapper;
    8000278c:	00000797          	auipc	a5,0x0
    80002790:	db078793          	addi	a5,a5,-592 # 8000253c <_ZN6Thread7wrapperEPv>
    80002794:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    80002798:	00a53c23          	sd	a0,24(a0)
    this->myHandle = nullptr;
    8000279c:	00053423          	sd	zero,8(a0)
}
    800027a0:	00813403          	ld	s0,8(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	00813023          	sd	s0,0(sp)
    800027b8:	01010413          	addi	s0,sp,16
    800027bc:	00009797          	auipc	a5,0x9
    800027c0:	01478793          	addi	a5,a5,20 # 8000b7d0 <_ZTV9Semaphore+0x10>
    800027c4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800027c8:	00850513          	addi	a0,a0,8
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	bbc080e7          	jalr	-1092(ra) # 80001388 <_Z8sem_openPP3semj>
}
    800027d4:	00813083          	ld	ra,8(sp)
    800027d8:	00013403          	ld	s0,0(sp)
    800027dc:	01010113          	addi	sp,sp,16
    800027e0:	00008067          	ret

00000000800027e4 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00113423          	sd	ra,8(sp)
    800027ec:	00813023          	sd	s0,0(sp)
    800027f0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800027f4:	00853503          	ld	a0,8(a0)
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	c0c080e7          	jalr	-1012(ra) # 80001404 <_Z8sem_waitP3sem>
}
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002810:	ff010113          	addi	sp,sp,-16
    80002814:	00113423          	sd	ra,8(sp)
    80002818:	00813023          	sd	s0,0(sp)
    8000281c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002820:	00853503          	ld	a0,8(a0)
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	c1c080e7          	jalr	-996(ra) # 80001440 <_Z10sem_signalP3sem>
}
    8000282c:	00813083          	ld	ra,8(sp)
    80002830:	00013403          	ld	s0,0(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t timeout) {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle, timeout);
    8000284c:	00853503          	ld	a0,8(a0)
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	c2c080e7          	jalr	-980(ra) # 8000147c <_Z13sem_timedwaitP3semm>
}
    80002858:	00813083          	ld	ra,8(sp)
    8000285c:	00013403          	ld	s0,0(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00113423          	sd	ra,8(sp)
    80002870:	00813023          	sd	s0,0(sp)
    80002874:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80002878:	00853503          	ld	a0,8(a0)
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	c30080e7          	jalr	-976(ra) # 800014ac <_Z11sem_trywaitP3sem>
}
    80002884:	00813083          	ld	ra,8(sp)
    80002888:	00013403          	ld	s0,0(sp)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret

0000000080002894 <_ZN7Console4getcEv>:


char Console::getc() {
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00113423          	sd	ra,8(sp)
    8000289c:	00813023          	sd	s0,0(sp)
    800028a0:	01010413          	addi	s0,sp,16
    ::getc();
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	c60080e7          	jalr	-928(ra) # 80001504 <_Z4getcv>
    return 0;
}
    800028ac:	00000513          	li	a0,0
    800028b0:	00813083          	ld	ra,8(sp)
    800028b4:	00013403          	ld	s0,0(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_ZN7Console4putcEc>:


void Console::putc(char c) {
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00113423          	sd	ra,8(sp)
    800028c8:	00813023          	sd	s0,0(sp)
    800028cc:	01010413          	addi	s0,sp,16
    ::putc(c);
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	c5c080e7          	jalr	-932(ra) # 8000152c <_Z4putcc>
}
    800028d8:	00813083          	ld	ra,8(sp)
    800028dc:	00013403          	ld	s0,0(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret

00000000800028e8 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:

    virtual void run (){};
    800028e8:	ff010113          	addi	sp,sp,-16
    800028ec:	00813423          	sd	s0,8(sp)
    800028f0:	01010413          	addi	s0,sp,16
    800028f4:	00813403          	ld	s0,8(sp)
    800028f8:	01010113          	addi	sp,sp,16
    800028fc:	00008067          	ret

0000000080002900 <_ZL24updateSemTimeBlockedListv>:
#include "../h/memoryAllocator.hpp"
#include "../h/sem.hpp"
#include "../h/myConsole.hpp"
#include "../test/printing.hpp"

static void updateSemTimeBlockedList() {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	01213023          	sd	s2,0(sp)
    80002914:	02010413          	addi	s0,sp,32
    Elem* current = sem::timeBlockedQueue;
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	0987b783          	ld	a5,152(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002920:	0007b483          	ld	s1,0(a5)
    if(current)    current->timeLeft--;
    80002924:	00048c63          	beqz	s1,8000293c <_ZL24updateSemTimeBlockedListv+0x3c>
    80002928:	0084b783          	ld	a5,8(s1)
    8000292c:	fff78793          	addi	a5,a5,-1
    80002930:	00f4b423          	sd	a5,8(s1)
    80002934:	0080006f          	j	8000293c <_ZL24updateSemTimeBlockedListv+0x3c>
static void updateSemTimeBlockedList() {
    80002938:	00090493          	mv	s1,s2

    // ako prvi elem ima timeleft = 0, izbaci njega i sve koji imaju relativno vreme 0 u odnosu na njega
    while (current) {
    8000293c:	04048663          	beqz	s1,80002988 <_ZL24updateSemTimeBlockedListv+0x88>
        if (current->timeLeft <= 0) {
    80002940:	0084b783          	ld	a5,8(s1)
    80002944:	fe079ce3          	bnez	a5,8000293c <_ZL24updateSemTimeBlockedListv+0x3c>
            Elem* temp = current;
            temp->tcb->setBlocked(false);
    80002948:	00000593          	li	a1,0
    8000294c:	0004b503          	ld	a0,0(s1)
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	498080e7          	jalr	1176(ra) # 80001de8 <_ZN3TCB10setBlockedEb>
            Scheduler::put(temp->tcb);
    80002958:	0004b503          	ld	a0,0(s1)
    8000295c:	00001097          	auipc	ra,0x1
    80002960:	9c0080e7          	jalr	-1600(ra) # 8000331c <_ZN9Scheduler3putEP3TCB>
            sem::timeBlockedQueue = current->next;
    80002964:	0104b903          	ld	s2,16(s1)
    80002968:	00009797          	auipc	a5,0x9
    8000296c:	0487b783          	ld	a5,72(a5) # 8000b9b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002970:	0127b023          	sd	s2,0(a5)

            current = current->next; // Pređi na sledeći čvor
            delete temp; // Oslobodi memoriju za uklonjeni čvor
    80002974:	fc0482e3          	beqz	s1,80002938 <_ZL24updateSemTimeBlockedListv+0x38>
    80002978:	00048513          	mv	a0,s1
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	c8c080e7          	jalr	-884(ra) # 80002608 <_ZdlPv>
    80002984:	fb5ff06f          	j	80002938 <_ZL24updateSemTimeBlockedListv+0x38>
        }
    }
}
    80002988:	01813083          	ld	ra,24(sp)
    8000298c:	01013403          	ld	s0,16(sp)
    80002990:	00813483          	ld	s1,8(sp)
    80002994:	00013903          	ld	s2,0(sp)
    80002998:	02010113          	addi	sp,sp,32
    8000299c:	00008067          	ret

00000000800029a0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800029a0:	ff010113          	addi	sp,sp,-16
    800029a4:	00813423          	sd	s0,8(sp)
    800029a8:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800029ac:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800029b0:	10200073          	sret
}
    800029b4:	00813403          	ld	s0,8(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800029c0:	f7010113          	addi	sp,sp,-144
    800029c4:	08113423          	sd	ra,136(sp)
    800029c8:	08813023          	sd	s0,128(sp)
    800029cc:	06913c23          	sd	s1,120(sp)
    800029d0:	07213823          	sd	s2,112(sp)
    800029d4:	07313423          	sd	s3,104(sp)
    800029d8:	09010413          	addi	s0,sp,144
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800029dc:	142027f3          	csrr	a5,scause
    800029e0:	f8f43823          	sd	a5,-112(s0)
    return scause;
    800029e4:	f9043483          	ld	s1,-112(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800029e8:	ff848713          	addi	a4,s1,-8
    800029ec:	00100793          	li	a5,1
    800029f0:	08e7f663          	bgeu	a5,a4,80002a7c <_ZN5Riscv20handleSupervisorTrapEv+0xbc>

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if (scause == 0x8000000000000001UL)
    800029f4:	fff00793          	li	a5,-1
    800029f8:	03f79793          	slli	a5,a5,0x3f
    800029fc:	00178793          	addi	a5,a5,1
    80002a00:	2af48a63          	beq	s1,a5,80002cb4 <_ZN5Riscv20handleSupervisorTrapEv+0x2f4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80002a04:	fff00793          	li	a5,-1
    80002a08:	03f79793          	slli	a5,a5,0x3f
    80002a0c:	00978793          	addi	a5,a5,9
    80002a10:	32f48063          	beq	s1,a5,80002d30 <_ZN5Riscv20handleSupervisorTrapEv+0x370>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002a14:	141027f3          	csrr	a5,sepc
    80002a18:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002a1c:	fc843903          	ld	s2,-56(s0)
    else
    {
        uint64 sepc = r_sepc();

        // unexpected trap cause
        printStringTrap("scause: ");
    80002a20:	00006517          	auipc	a0,0x6
    80002a24:	60050513          	addi	a0,a0,1536 # 80009020 <CONSOLE_STATUS+0x10>
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	94c080e7          	jalr	-1716(ra) # 80003374 <_Z15printStringTrapPKc>
        printIntegerTrap(scause);
    80002a30:	00048513          	mv	a0,s1
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	a40080e7          	jalr	-1472(ra) # 80003474 <_Z16printIntegerTrapm>
        printStringTrap("\n");
    80002a3c:	00007517          	auipc	a0,0x7
    80002a40:	a7450513          	addi	a0,a0,-1420 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80002a44:	00001097          	auipc	ra,0x1
    80002a48:	930080e7          	jalr	-1744(ra) # 80003374 <_Z15printStringTrapPKc>

        printStringTrap("sepc: ");
    80002a4c:	00006517          	auipc	a0,0x6
    80002a50:	5e450513          	addi	a0,a0,1508 # 80009030 <CONSOLE_STATUS+0x20>
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	920080e7          	jalr	-1760(ra) # 80003374 <_Z15printStringTrapPKc>
        printIntegerTrap(sepc);
    80002a5c:	00090513          	mv	a0,s2
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	a14080e7          	jalr	-1516(ra) # 80003474 <_Z16printIntegerTrapm>
        printStringTrap("\n");
    80002a68:	00007517          	auipc	a0,0x7
    80002a6c:	a4850513          	addi	a0,a0,-1464 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	904080e7          	jalr	-1788(ra) # 80003374 <_Z15printStringTrapPKc>
    }
    80002a78:	0740006f          	j	80002aec <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002a7c:	141027f3          	csrr	a5,sepc
    80002a80:	faf43023          	sd	a5,-96(s0)
    return sepc;
    80002a84:	fa043783          	ld	a5,-96(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002a88:	00478793          	addi	a5,a5,4
    80002a8c:	f6f43823          	sd	a5,-144(s0)

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002a90:	100027f3          	csrr	a5,sstatus
    80002a94:	f8f43c23          	sd	a5,-104(s0)
    return sstatus;
    80002a98:	f9843783          	ld	a5,-104(s0)
        uint64 volatile sstatus = r_sstatus();
    80002a9c:	f6f43c23          	sd	a5,-136(s0)
        __asm__ volatile("mv %0, a0" : "=r"(code));
    80002aa0:	00050793          	mv	a5,a0
        switch (code) {
    80002aa4:	04200713          	li	a4,66
    80002aa8:	02f76a63          	bltu	a4,a5,80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    80002aac:	00279793          	slli	a5,a5,0x2
    80002ab0:	00006717          	auipc	a4,0x6
    80002ab4:	58870713          	addi	a4,a4,1416 # 80009038 <CONSOLE_STATUS+0x28>
    80002ab8:	00e787b3          	add	a5,a5,a4
    80002abc:	0007a783          	lw	a5,0(a5)
    80002ac0:	00e787b3          	add	a5,a5,a4
    80002ac4:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r"(size));
    80002ac8:	00058513          	mv	a0,a1
                ptr = MemoryAllocator::mem_alloc(size);
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	54c080e7          	jalr	1356(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
    80002ad4:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002ad8:	04543823          	sd	t0,80(s0)
        w_sstatus(sstatus);
    80002adc:	f7843783          	ld	a5,-136(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002ae0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002ae4:	f7043783          	ld	a5,-144(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002ae8:	14179073          	csrw	sepc,a5
    80002aec:	08813083          	ld	ra,136(sp)
    80002af0:	08013403          	ld	s0,128(sp)
    80002af4:	07813483          	ld	s1,120(sp)
    80002af8:	07013903          	ld	s2,112(sp)
    80002afc:	06813983          	ld	s3,104(sp)
    80002b00:	09010113          	addi	sp,sp,144
    80002b04:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r"(freePtr));
    80002b08:	00058513          	mv	a0,a1
                res = MemoryAllocator::mem_free(freePtr);
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	694080e7          	jalr	1684(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002b14:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002b18:	04543823          	sd	t0,80(s0)
                break;
    80002b1c:	fc1ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (handle));
    80002b20:	00058513          	mv	a0,a1
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
    80002b24:	00060593          	mv	a1,a2
                __asm__ volatile("mv %0, a3" : "=r" (arg));
    80002b28:	00068613          	mv	a2,a3
                __asm__ volatile("ld %0, 8*14(s0)" :  "=r" (stack_space));
    80002b2c:	07043683          	ld	a3,112(s0)
                res = TCB::createThread(handle, start_routine, arg, stack_space);
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	0dc080e7          	jalr	220(ra) # 80001c0c <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002b38:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002b3c:	04543823          	sd	t0,80(s0)
                break;
    80002b40:	f9dff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>

    static int createThread(TCB** handle, Body body, void* arg, void* stack_space);


    static int thread_exit() {
        running->finished = true;
    80002b44:	00009797          	auipc	a5,0x9
    80002b48:	e9c7b783          	ld	a5,-356(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002b4c:	0007b783          	ld	a5,0(a5)
    80002b50:	00100713          	li	a4,1
    80002b54:	04e78423          	sb	a4,72(a5)
        dispatch();
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	1d8080e7          	jalr	472(ra) # 80001d30 <_ZN3TCB8dispatchEv>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002b60:	fff00793          	li	a5,-1
    80002b64:	00078293          	mv	t0,a5
                __asm__ volatile ("sd t0, 80(s0)");
    80002b68:	04543823          	sd	t0,80(s0)
                break;
    80002b6c:	f71ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                TCB::dispatch();
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	1c0080e7          	jalr	448(ra) # 80001d30 <_ZN3TCB8dispatchEv>
                break;
    80002b78:	f65ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (semHandle));
    80002b7c:	00058913          	mv	s2,a1
                __asm__ volatile("mv %0, a2" : "=r" (init));
    80002b80:	00060493          	mv	s1,a2
    80002b84:	0004849b          	sext.w	s1,s1
                semaphore = new sem(init, semHandle);
    80002b88:	34000513          	li	a0,832
    80002b8c:	00000097          	auipc	ra,0x0
    80002b90:	644080e7          	jalr	1604(ra) # 800031d0 <_ZN3semnwEm>
            : tcb(tcb), timeLeft(time), next(nxt) {}
};

class sem{
public:
    sem(unsigned short init = 1, sem** handle = nullptr) : val(init), handle(handle){}
    80002b94:	03049493          	slli	s1,s1,0x30
    80002b98:	0304d493          	srli	s1,s1,0x30
    80002b9c:	00952023          	sw	s1,0(a0)
    int head = 1;
    int tail = 1;
    int count = 1;

public:
    ThreadList() : head(0), tail(0), count(0) {}
    80002ba0:	32052423          	sw	zero,808(a0)
    80002ba4:	32052623          	sw	zero,812(a0)
    80002ba8:	32052823          	sw	zero,816(a0)
    80002bac:	33253c23          	sd	s2,824(a0)
                if(!semaphore){
    80002bb0:	00050c63          	beqz	a0,80002bc8 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
                    *(semHandle) = semaphore;
    80002bb4:	00a93023          	sd	a0,0(s2)
                    res = 0;
    80002bb8:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002bbc:	00078293          	mv	t0,a5
                __asm__ volatile ("sd t0, 80(s0)");
    80002bc0:	04543823          	sd	t0,80(s0)
                break;
    80002bc4:	f19ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                    res = -1;
    80002bc8:	fff00793          	li	a5,-1
    80002bcc:	ff1ff06f          	j	80002bbc <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                __asm__ volatile("mv %0, a1" : "=r" (id));
    80002bd0:	00058493          	mv	s1,a1
                if(!id){
    80002bd4:	02048663          	beqz	s1,80002c00 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
                    delete id;
    80002bd8:	00048513          	mv	a0,s1
    80002bdc:	00000097          	auipc	ra,0x0
    80002be0:	6c0080e7          	jalr	1728(ra) # 8000329c <_ZN3semD1Ev>
    80002be4:	00048513          	mv	a0,s1
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	68c080e7          	jalr	1676(ra) # 80003274 <_ZN3semdlEPv>
                    res = 0;
    80002bf0:	00000793          	li	a5,0
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002bf4:	00078293          	mv	t0,a5
                __asm__ volatile ("sd t0, 80(s0)");
    80002bf8:	04543823          	sd	t0,80(s0)
                break;
    80002bfc:	ee1ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                    res = -1;
    80002c00:	fff00793          	li	a5,-1
    80002c04:	ff1ff06f          	j	80002bf4 <_ZN5Riscv20handleSupervisorTrapEv+0x234>
                __asm__ volatile("mv %0, a1" : "=r" (id));
    80002c08:	00058513          	mv	a0,a1
                res = id->wait();
    80002c0c:	00000097          	auipc	ra,0x0
    80002c10:	2fc080e7          	jalr	764(ra) # 80002f08 <_ZN3sem4waitEv>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002c14:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002c18:	04543823          	sd	t0,80(s0)
                break;
    80002c1c:	ec1ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (id));
    80002c20:	00058513          	mv	a0,a1
                res = id->signal();
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	40c080e7          	jalr	1036(ra) # 80003030 <_ZN3sem6signalEv>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002c2c:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002c30:	04543823          	sd	t0,80(s0)
                break;
    80002c34:	ea9ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (id));
    80002c38:	00058513          	mv	a0,a1
                __asm__ volatile("mv %0, a2" : "=r" (timeout));
    80002c3c:	00060593          	mv	a1,a2
                res = id->timedWait(timeout);
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	518080e7          	jalr	1304(ra) # 80003158 <_ZN3sem9timedWaitEm>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002c48:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002c4c:	04543823          	sd	t0,80(s0)
                break;
    80002c50:	e8dff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (id));
    80002c54:	00058513          	mv	a0,a1
                res = id->tryWait();
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	544080e7          	jalr	1348(ra) # 8000319c <_ZN3sem7tryWaitEv>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002c60:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002c64:	04543823          	sd	t0,80(s0)
                break;
    80002c68:	e75ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (sleep_time));
    80002c6c:	00058513          	mv	a0,a1
                res = TCB::putToSleep(sleep_time);
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	194080e7          	jalr	404(ra) # 80001e04 <_ZN3TCB10putToSleepEm>
                __asm__ volatile("mv t0, %0" : : "r"(res));
    80002c78:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002c7c:	04543823          	sd	t0,80(s0)
                break;
    80002c80:	e5dff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                c = myConsole::getc();
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	780080e7          	jalr	1920(ra) # 80002404 <_ZN9myConsole4getcEv>
                if(!c) c = EOF;
    80002c8c:	00051463          	bnez	a0,80002c94 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
    80002c90:	0ff00513          	li	a0,255
                __asm__ volatile("mv t0, %0" : : "r"(c));
    80002c94:	00050293          	mv	t0,a0
                __asm__ volatile ("sd t0, 80(s0)");
    80002c98:	04543823          	sd	t0,80(s0)
                break;
    80002c9c:	e41ff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
                __asm__ volatile("mv %0, a1" : "=r" (c));
    80002ca0:	00058513          	mv	a0,a1
                myConsole::putc(c);
    80002ca4:	0ff57513          	andi	a0,a0,255
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	7f8080e7          	jalr	2040(ra) # 800024a0 <_ZN9myConsole4putcEc>
                break;
    80002cb0:	e2dff06f          	j	80002adc <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002cb4:	00200793          	li	a5,2
    80002cb8:	1447b073          	csrc	sip,a5
        updateSemTimeBlockedList();
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	c44080e7          	jalr	-956(ra) # 80002900 <_ZL24updateSemTimeBlockedListv>
        TCB::updateSleepingThreads();
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	244080e7          	jalr	580(ra) # 80001f08 <_ZN3TCB21updateSleepingThreadsEv>
        TCB::timeSliceCounter++;
    80002ccc:	00009717          	auipc	a4,0x9
    80002cd0:	cf473703          	ld	a4,-780(a4) # 8000b9c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002cd4:	00073783          	ld	a5,0(a4)
    80002cd8:	00178793          	addi	a5,a5,1
    80002cdc:	00f73023          	sd	a5,0(a4)
        uint64 time  = TCB::running->getTimeSlice();
    80002ce0:	00009717          	auipc	a4,0x9
    80002ce4:	d0073703          	ld	a4,-768(a4) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ce8:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80002cec:	04073703          	ld	a4,64(a4)
        if (TCB::timeSliceCounter >= time)
    80002cf0:	dee7eee3          	bltu	a5,a4,80002aec <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002cf4:	141027f3          	csrr	a5,sepc
    80002cf8:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80002cfc:	fb043783          	ld	a5,-80(s0)
            uint64 volatile sepc = r_sepc();
    80002d00:	f8f43023          	sd	a5,-128(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002d04:	100027f3          	csrr	a5,sstatus
    80002d08:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80002d0c:	fa843783          	ld	a5,-88(s0)
            uint64 volatile sstatus = r_sstatus();
    80002d10:	f8f43423          	sd	a5,-120(s0)
            TCB::dispatch();
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	01c080e7          	jalr	28(ra) # 80001d30 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002d1c:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002d20:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002d24:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002d28:	14179073          	csrw	sepc,a5
}
    80002d2c:	dc1ff06f          	j	80002aec <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d30:	141027f3          	csrr	a5,sepc
    80002d34:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80002d38:	fc043903          	ld	s2,-64(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002d3c:	100027f3          	csrr	a5,sstatus
    80002d40:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80002d44:	fb843983          	ld	s3,-72(s0)
        if (plic_claim() == 0x0a){
    80002d48:	00004097          	auipc	ra,0x4
    80002d4c:	64c080e7          	jalr	1612(ra) # 80007394 <plic_claim>
    80002d50:	00a00793          	li	a5,10
    80002d54:	00f50e63          	beq	a0,a5,80002d70 <_ZN5Riscv20handleSupervisorTrapEv+0x3b0>
        plic_complete(0x0a);
    80002d58:	00a00513          	li	a0,10
    80002d5c:	00004097          	auipc	ra,0x4
    80002d60:	670080e7          	jalr	1648(ra) # 800073cc <plic_complete>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002d64:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002d68:	14191073          	csrw	sepc,s2
}
    80002d6c:	d81ff06f          	j	80002aec <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
            char status = *(char*)CONSOLE_STATUS;
    80002d70:	00009797          	auipc	a5,0x9
    80002d74:	c307b783          	ld	a5,-976(a5) # 8000b9a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002d78:	0007b483          	ld	s1,0(a5)
    80002d7c:	0004c783          	lbu	a5,0(s1)
            while (CONSOLE_RX_STATUS_BIT & status){
    80002d80:	0017f793          	andi	a5,a5,1
    80002d84:	fc078ae3          	beqz	a5,80002d58 <_ZN5Riscv20handleSupervisorTrapEv+0x398>
                char ch = *(char*) CONSOLE_RX_DATA;
    80002d88:	00009797          	auipc	a5,0x9
    80002d8c:	c087b783          	ld	a5,-1016(a5) # 8000b990 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d90:	0007b783          	ld	a5,0(a5)
                myConsole::recieveFromKeyboard(ch);
    80002d94:	0007c503          	lbu	a0,0(a5)
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	6a0080e7          	jalr	1696(ra) # 80002438 <_ZN9myConsole19recieveFromKeyboardEc>
                status = *(char*)CONSOLE_STATUS;
    80002da0:	0004c783          	lbu	a5,0(s1)
            while (CONSOLE_RX_STATUS_BIT & status){
    80002da4:	fddff06f          	j	80002d80 <_ZN5Riscv20handleSupervisorTrapEv+0x3c0>

0000000080002da8 <_ZL21addToTimeBlockedQueueP4Elem>:
#include "../h/sem.hpp"
#include "../h/memoryAllocator.hpp"

Elem* sem::timeBlockedQueue = nullptr;

static void addToTimeBlockedQueue(Elem* blockedElem) {
    80002da8:	ff010113          	addi	sp,sp,-16
    80002dac:	00813423          	sd	s0,8(sp)
    80002db0:	01010413          	addi	s0,sp,16
    if (!sem::timeBlockedQueue) {
    80002db4:	00009797          	auipc	a5,0x9
    80002db8:	cf47b783          	ld	a5,-780(a5) # 8000baa8 <_ZN3sem16timeBlockedQueueE>
    80002dbc:	02078063          	beqz	a5,80002ddc <_ZL21addToTimeBlockedQueueP4Elem+0x34>
        sem::timeBlockedQueue = blockedElem;
    } else {
        Elem* temp = sem::timeBlockedQueue;
        while (temp->next) {
    80002dc0:	00078713          	mv	a4,a5
    80002dc4:	0107b783          	ld	a5,16(a5)
    80002dc8:	fe079ce3          	bnez	a5,80002dc0 <_ZL21addToTimeBlockedQueueP4Elem+0x18>
            temp = temp->next;
        }
        temp->next = blockedElem;
    80002dcc:	00a73823          	sd	a0,16(a4)
    }
}
    80002dd0:	00813403          	ld	s0,8(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret
        sem::timeBlockedQueue = blockedElem;
    80002ddc:	00009797          	auipc	a5,0x9
    80002de0:	cca7b623          	sd	a0,-820(a5) # 8000baa8 <_ZN3sem16timeBlockedQueueE>
    80002de4:	fedff06f          	j	80002dd0 <_ZL21addToTimeBlockedQueueP4Elem+0x28>

0000000080002de8 <_ZL26removeFromTimeBlockedQueueP3TCB>:

static bool removeFromTimeBlockedQueue(TCB* tcb) {
    80002de8:	00050713          	mv	a4,a0
    if (!sem::timeBlockedQueue) {
    80002dec:	00009517          	auipc	a0,0x9
    80002df0:	cbc53503          	ld	a0,-836(a0) # 8000baa8 <_ZN3sem16timeBlockedQueueE>
    80002df4:	06050e63          	beqz	a0,80002e70 <_ZL26removeFromTimeBlockedQueueP3TCB+0x88>
static bool removeFromTimeBlockedQueue(TCB* tcb) {
    80002df8:	ff010113          	addi	sp,sp,-16
    80002dfc:	00113423          	sd	ra,8(sp)
    80002e00:	00813023          	sd	s0,0(sp)
    80002e04:	01010413          	addi	s0,sp,16
        return false;
    }

    if (sem::timeBlockedQueue->tcb == tcb) {
    80002e08:	00053783          	ld	a5,0(a0)
    80002e0c:	02e78863          	beq	a5,a4,80002e3c <_ZL26removeFromTimeBlockedQueueP3TCB+0x54>
        delete temp;
        return true;
    }

    Elem* current = sem::timeBlockedQueue;
    while (current->next && current->next->tcb != tcb) {
    80002e10:	00050693          	mv	a3,a0
    80002e14:	01053503          	ld	a0,16(a0)
    80002e18:	00050663          	beqz	a0,80002e24 <_ZL26removeFromTimeBlockedQueueP3TCB+0x3c>
    80002e1c:	00053783          	ld	a5,0(a0)
    80002e20:	fee798e3          	bne	a5,a4,80002e10 <_ZL26removeFromTimeBlockedQueueP3TCB+0x28>
        current = current->next;
    }

    if (current->next) {
    80002e24:	02051a63          	bnez	a0,80002e58 <_ZL26removeFromTimeBlockedQueueP3TCB+0x70>
        current->next = current->next->next;
        delete temp;
        return true;
    }

    return false;
    80002e28:	00000513          	li	a0,0
}
    80002e2c:	00813083          	ld	ra,8(sp)
    80002e30:	00013403          	ld	s0,0(sp)
    80002e34:	01010113          	addi	sp,sp,16
    80002e38:	00008067          	ret
        sem::timeBlockedQueue = sem::timeBlockedQueue->next;
    80002e3c:	01053783          	ld	a5,16(a0)
    80002e40:	00009717          	auipc	a4,0x9
    80002e44:	c6f73423          	sd	a5,-920(a4) # 8000baa8 <_ZN3sem16timeBlockedQueueE>
        delete temp;
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	7c0080e7          	jalr	1984(ra) # 80002608 <_ZdlPv>
        return true;
    80002e50:	00100513          	li	a0,1
    80002e54:	fd9ff06f          	j	80002e2c <_ZL26removeFromTimeBlockedQueueP3TCB+0x44>
        current->next = current->next->next;
    80002e58:	01053783          	ld	a5,16(a0)
    80002e5c:	00f6b823          	sd	a5,16(a3)
        delete temp;
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	7a8080e7          	jalr	1960(ra) # 80002608 <_ZdlPv>
        return true;
    80002e68:	00100513          	li	a0,1
    80002e6c:	fc1ff06f          	j	80002e2c <_ZL26removeFromTimeBlockedQueueP3TCB+0x44>
        return false;
    80002e70:	00000513          	li	a0,0
}
    80002e74:	00008067          	ret

0000000080002e78 <_ZN3sem5blockEv>:
    if(val < 0) retVal = timedBlock(timeout);
    return retVal;
}


int sem::block() {
    80002e78:	fe010113          	addi	sp,sp,-32
    80002e7c:	00113c23          	sd	ra,24(sp)
    80002e80:	00813823          	sd	s0,16(sp)
    80002e84:	00913423          	sd	s1,8(sp)
    80002e88:	02010413          	addi	s0,sp,32
    80002e8c:	00050493          	mv	s1,a0
    TCB* blocked = TCB::running;
    80002e90:	00009797          	auipc	a5,0x9
    80002e94:	b507b783          	ld	a5,-1200(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002e98:	0007b683          	ld	a3,0(a5)

public:
    ThreadList() : head(0), tail(0), count(0) {}

    void addLast(TCB* data) {
        if (count < MAX_SIZE) {
    80002e9c:	33052783          	lw	a5,816(a0)
    80002ea0:	06300713          	li	a4,99
    80002ea4:	02f74663          	blt	a4,a5,80002ed0 <_ZN3sem5blockEv+0x58>
            list[tail] = data;
    80002ea8:	32c52703          	lw	a4,812(a0)
    80002eac:	00371613          	slli	a2,a4,0x3
    80002eb0:	00c50633          	add	a2,a0,a2
    80002eb4:	00d63423          	sd	a3,8(a2)
            tail = (tail + 1) % MAX_SIZE;
    80002eb8:	0017071b          	addiw	a4,a4,1
    80002ebc:	06400613          	li	a2,100
    80002ec0:	02c7673b          	remw	a4,a4,a2
    80002ec4:	32e52623          	sw	a4,812(a0)
            count++;
    80002ec8:	0017879b          	addiw	a5,a5,1
    80002ecc:	32f52823          	sw	a5,816(a0)
    blockedQueue.addLast(blocked);
    blocked->blocked = true;
    80002ed0:	00100793          	li	a5,1
    80002ed4:	04f68c23          	sb	a5,88(a3)
    TCB::dispatch();
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	e58080e7          	jalr	-424(ra) # 80001d30 <_ZN3TCB8dispatchEv>
    if(handle == nullptr) return -1;
    80002ee0:	3384b783          	ld	a5,824(s1)
    80002ee4:	00078e63          	beqz	a5,80002f00 <_ZN3sem5blockEv+0x88>
    return 0;
    80002ee8:	00000513          	li	a0,0
}
    80002eec:	01813083          	ld	ra,24(sp)
    80002ef0:	01013403          	ld	s0,16(sp)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	02010113          	addi	sp,sp,32
    80002efc:	00008067          	ret
    if(handle == nullptr) return -1;
    80002f00:	fff00513          	li	a0,-1
    80002f04:	fe9ff06f          	j	80002eec <_ZN3sem5blockEv+0x74>

0000000080002f08 <_ZN3sem4waitEv>:
    val--;
    80002f08:	00052783          	lw	a5,0(a0)
    80002f0c:	fff7879b          	addiw	a5,a5,-1
    80002f10:	00f52023          	sw	a5,0(a0)
    if(val < 0) retVal = block();
    80002f14:	02079713          	slli	a4,a5,0x20
    80002f18:	00074663          	bltz	a4,80002f24 <_ZN3sem4waitEv+0x1c>
    int retVal = 0;
    80002f1c:	00000513          	li	a0,0
}
    80002f20:	00008067          	ret
int sem::wait (){
    80002f24:	ff010113          	addi	sp,sp,-16
    80002f28:	00113423          	sd	ra,8(sp)
    80002f2c:	00813023          	sd	s0,0(sp)
    80002f30:	01010413          	addi	s0,sp,16
    if(val < 0) retVal = block();
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	f44080e7          	jalr	-188(ra) # 80002e78 <_ZN3sem5blockEv>
}
    80002f3c:	00813083          	ld	ra,8(sp)
    80002f40:	00013403          	ld	s0,0(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret

0000000080002f4c <_ZN3sem7unblockEv>:
        }
    }

    TCB* removeFirst() {
        if (count > 0) {
    80002f4c:	33052703          	lw	a4,816(a0)
    80002f50:	0ce05c63          	blez	a4,80003028 <_ZN3sem7unblockEv+0xdc>

int sem::unblock() {
    80002f54:	fe010113          	addi	sp,sp,-32
    80002f58:	00113c23          	sd	ra,24(sp)
    80002f5c:	00813823          	sd	s0,16(sp)
    80002f60:	00913423          	sd	s1,8(sp)
    80002f64:	02010413          	addi	s0,sp,32
            TCB* data = list[head];
    80002f68:	32852783          	lw	a5,808(a0)
    80002f6c:	00379693          	slli	a3,a5,0x3
    80002f70:	00d506b3          	add	a3,a0,a3
    80002f74:	0086b483          	ld	s1,8(a3)
            head = (head + 1) % MAX_SIZE;
    80002f78:	0017879b          	addiw	a5,a5,1
    80002f7c:	06400693          	li	a3,100
    80002f80:	02d7e7bb          	remw	a5,a5,a3
    80002f84:	32f52423          	sw	a5,808(a0)
            count--;
    80002f88:	fff7071b          	addiw	a4,a4,-1
    80002f8c:	32e52823          	sw	a4,816(a0)
    TCB* unblocked = blockedQueue.removeFirst();
    if(!unblocked) return -1;
    80002f90:	04049263          	bnez	s1,80002fd4 <_ZN3sem7unblockEv+0x88>
    80002f94:	fff00513          	li	a0,-1
    80002f98:	0740006f          	j	8000300c <_ZN3sem7unblockEv+0xc0>
            TCB* data = list[head];
    80002f9c:	32852783          	lw	a5,808(a0)
    80002fa0:	00379693          	slli	a3,a5,0x3
    80002fa4:	00d506b3          	add	a3,a0,a3
    80002fa8:	0086b483          	ld	s1,8(a3)
            head = (head + 1) % MAX_SIZE;
    80002fac:	0017879b          	addiw	a5,a5,1
    80002fb0:	06400693          	li	a3,100
    80002fb4:	02d7e7bb          	remw	a5,a5,a3
    80002fb8:	32f52423          	sw	a5,808(a0)
            count--;
    80002fbc:	fff7071b          	addiw	a4,a4,-1
    80002fc0:	32e52823          	sw	a4,816(a0)
    while(!unblocked->blocked){ // ako je bio odblokiran u prekidu tajmera
        unblocked = blockedQueue.removeFirst();
        val++;
    80002fc4:	00052783          	lw	a5,0(a0)
    80002fc8:	0017879b          	addiw	a5,a5,1
    80002fcc:	00f52023          	sw	a5,0(a0)
        if(!unblocked) return 0; // znaci da su sve ostale niti zavrsile sa timeWait u prekidu tajmera
    80002fd0:	04048863          	beqz	s1,80003020 <_ZN3sem7unblockEv+0xd4>
    while(!unblocked->blocked){ // ako je bio odblokiran u prekidu tajmera
    80002fd4:	0584c783          	lbu	a5,88(s1)
    80002fd8:	00079a63          	bnez	a5,80002fec <_ZN3sem7unblockEv+0xa0>
        if (count > 0) {
    80002fdc:	33052703          	lw	a4,816(a0)
    80002fe0:	fae04ee3          	bgtz	a4,80002f9c <_ZN3sem7unblockEv+0x50>
            return data;
        } else {
            return nullptr;
    80002fe4:	00000493          	li	s1,0
    80002fe8:	fddff06f          	j	80002fc4 <_ZN3sem7unblockEv+0x78>
    }
    unblocked->blocked = false;
    80002fec:	04048c23          	sb	zero,88(s1)
    removeFromTimeBlockedQueue(unblocked);
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	df4080e7          	jalr	-524(ra) # 80002de8 <_ZL26removeFromTimeBlockedQueueP3TCB>
    Scheduler::put(unblocked);
    80002ffc:	00048513          	mv	a0,s1
    80003000:	00000097          	auipc	ra,0x0
    80003004:	31c080e7          	jalr	796(ra) # 8000331c <_ZN9Scheduler3putEP3TCB>
    return 0;
    80003008:	00000513          	li	a0,0
}
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret
        if(!unblocked) return 0; // znaci da su sve ostale niti zavrsile sa timeWait u prekidu tajmera
    80003020:	00000513          	li	a0,0
    80003024:	fe9ff06f          	j	8000300c <_ZN3sem7unblockEv+0xc0>
    if(!unblocked) return -1;
    80003028:	fff00513          	li	a0,-1
}
    8000302c:	00008067          	ret

0000000080003030 <_ZN3sem6signalEv>:
    val++;
    80003030:	00052783          	lw	a5,0(a0)
    80003034:	0017879b          	addiw	a5,a5,1
    80003038:	0007871b          	sext.w	a4,a5
    8000303c:	00f52023          	sw	a5,0(a0)
    if(val <= 0) retVal = unblock();
    80003040:	00e05663          	blez	a4,8000304c <_ZN3sem6signalEv+0x1c>
    int retVal = 0;
    80003044:	00000513          	li	a0,0
}
    80003048:	00008067          	ret
int sem::signal (){
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00113423          	sd	ra,8(sp)
    80003054:	00813023          	sd	s0,0(sp)
    80003058:	01010413          	addi	s0,sp,16
    if(val <= 0) retVal = unblock();
    8000305c:	00000097          	auipc	ra,0x0
    80003060:	ef0080e7          	jalr	-272(ra) # 80002f4c <_ZN3sem7unblockEv>
}
    80003064:	00813083          	ld	ra,8(sp)
    80003068:	00013403          	ld	s0,0(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_ZN3sem10timedBlockEm>:

int sem::timedBlock(time_t timeout) {
    80003074:	fd010113          	addi	sp,sp,-48
    80003078:	02113423          	sd	ra,40(sp)
    8000307c:	02813023          	sd	s0,32(sp)
    80003080:	00913c23          	sd	s1,24(sp)
    80003084:	01213823          	sd	s2,16(sp)
    80003088:	01313423          	sd	s3,8(sp)
    8000308c:	01413023          	sd	s4,0(sp)
    80003090:	03010413          	addi	s0,sp,48
    80003094:	00050493          	mv	s1,a0
    80003098:	00058993          	mv	s3,a1
    TCB* blocked = TCB::running;
    8000309c:	00009797          	auipc	a5,0x9
    800030a0:	9447b783          	ld	a5,-1724(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800030a4:	0007ba03          	ld	s4,0(a5)
        if (count < MAX_SIZE) {
    800030a8:	33052783          	lw	a5,816(a0)
    800030ac:	06300713          	li	a4,99
    800030b0:	02f74663          	blt	a4,a5,800030dc <_ZN3sem10timedBlockEm+0x68>
            list[tail] = data;
    800030b4:	32c52703          	lw	a4,812(a0)
    800030b8:	00371693          	slli	a3,a4,0x3
    800030bc:	00d506b3          	add	a3,a0,a3
    800030c0:	0146b423          	sd	s4,8(a3)
            tail = (tail + 1) % MAX_SIZE;
    800030c4:	0017071b          	addiw	a4,a4,1
    800030c8:	06400693          	li	a3,100
    800030cc:	02d7673b          	remw	a4,a4,a3
    800030d0:	32e52623          	sw	a4,812(a0)
            count++;
    800030d4:	0017879b          	addiw	a5,a5,1
    800030d8:	32f52823          	sw	a5,816(a0)
    blockedQueue.addLast(blocked);
    blocked->blocked = true;
    800030dc:	00100793          	li	a5,1
    800030e0:	04fa0c23          	sb	a5,88(s4)
    Elem* blockedElem = new Elem(blocked, timeout);
    800030e4:	01800513          	li	a0,24
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	4c0080e7          	jalr	1216(ra) # 800025a8 <_Znwm>
    800030f0:	00050913          	mv	s2,a0
    800030f4:	0009899b          	sext.w	s3,s3
    TCB* tcb;
    uint64 timeLeft;
    Elem* next;

    Elem(TCB* tcb, int time, Elem* nxt = nullptr)
            : tcb(tcb), timeLeft(time), next(nxt) {}
    800030f8:	01453023          	sd	s4,0(a0)
    800030fc:	01353423          	sd	s3,8(a0)
    80003100:	00053823          	sd	zero,16(a0)

    addToTimeBlockedQueue(blockedElem);
    80003104:	00000097          	auipc	ra,0x0
    80003108:	ca4080e7          	jalr	-860(ra) # 80002da8 <_ZL21addToTimeBlockedQueueP4Elem>

    TCB::dispatch();
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	c24080e7          	jalr	-988(ra) # 80001d30 <_ZN3TCB8dispatchEv>
    if(handle == nullptr) return -1; // semdead
    80003114:	3384b783          	ld	a5,824(s1)
    80003118:	02078863          	beqz	a5,80003148 <_ZN3sem10timedBlockEm+0xd4>
    else if(blockedElem->timeLeft == 0) return -2; // timeout
    8000311c:	00893783          	ld	a5,8(s2)
    80003120:	02078863          	beqz	a5,80003150 <_ZN3sem10timedBlockEm+0xdc>
    return 0;
    80003124:	00000513          	li	a0,0
}
    80003128:	02813083          	ld	ra,40(sp)
    8000312c:	02013403          	ld	s0,32(sp)
    80003130:	01813483          	ld	s1,24(sp)
    80003134:	01013903          	ld	s2,16(sp)
    80003138:	00813983          	ld	s3,8(sp)
    8000313c:	00013a03          	ld	s4,0(sp)
    80003140:	03010113          	addi	sp,sp,48
    80003144:	00008067          	ret
    if(handle == nullptr) return -1; // semdead
    80003148:	fff00513          	li	a0,-1
    8000314c:	fddff06f          	j	80003128 <_ZN3sem10timedBlockEm+0xb4>
    else if(blockedElem->timeLeft == 0) return -2; // timeout
    80003150:	ffe00513          	li	a0,-2
    80003154:	fd5ff06f          	j	80003128 <_ZN3sem10timedBlockEm+0xb4>

0000000080003158 <_ZN3sem9timedWaitEm>:
    val--;
    80003158:	00052783          	lw	a5,0(a0)
    8000315c:	fff7879b          	addiw	a5,a5,-1
    80003160:	00f52023          	sw	a5,0(a0)
    if(val < 0) retVal = timedBlock(timeout);
    80003164:	02079713          	slli	a4,a5,0x20
    80003168:	00074663          	bltz	a4,80003174 <_ZN3sem9timedWaitEm+0x1c>
    int retVal = 0;
    8000316c:	00000513          	li	a0,0
}
    80003170:	00008067          	ret
int sem::timedWait (time_t timeout){
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    if(val < 0) retVal = timedBlock(timeout);
    80003184:	00000097          	auipc	ra,0x0
    80003188:	ef0080e7          	jalr	-272(ra) # 80003074 <_ZN3sem10timedBlockEm>
}
    8000318c:	00813083          	ld	ra,8(sp)
    80003190:	00013403          	ld	s0,0(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZN3sem7tryWaitEv>:

int sem::tryWait(){
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    if(val > 0){
    800031a8:	00052783          	lw	a5,0(a0)
    800031ac:	00f05e63          	blez	a5,800031c8 <_ZN3sem7tryWaitEv+0x2c>
        val--;
    800031b0:	fff7879b          	addiw	a5,a5,-1
    800031b4:	00f52023          	sw	a5,0(a0)
        return 0;
    800031b8:	00000513          	li	a0,0
    }else{
        return 1;
    }
}
    800031bc:	00813403          	ld	s0,8(sp)
    800031c0:	01010113          	addi	sp,sp,16
    800031c4:	00008067          	ret
        return 1;
    800031c8:	00100513          	li	a0,1
    800031cc:	ff1ff06f          	j	800031bc <_ZN3sem7tryWaitEv+0x20>

00000000800031d0 <_ZN3semnwEm>:


void* sem::operator new(size_t size) {
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00113423          	sd	ra,8(sp)
    800031d8:	00813023          	sd	s0,0(sp)
    800031dc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc((((size) + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
    800031e0:	0ff50513          	addi	a0,a0,255
    800031e4:	00855513          	srli	a0,a0,0x8
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	e30080e7          	jalr	-464(ra) # 80002018 <_ZN15MemoryAllocator9mem_allocEm>
}
    800031f0:	00813083          	ld	ra,8(sp)
    800031f4:	00013403          	ld	s0,0(sp)
    800031f8:	01010113          	addi	sp,sp,16
    800031fc:	00008067          	ret

0000000080003200 <_ZN3sem8sem_openEPPS_i>:
int sem::sem_open (sem** handle, int init){
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00813823          	sd	s0,16(sp)
    8000320c:	00913423          	sd	s1,8(sp)
    80003210:	01213023          	sd	s2,0(sp)
    80003214:	02010413          	addi	s0,sp,32
    80003218:	00050913          	mv	s2,a0
    8000321c:	00058493          	mv	s1,a1
    *handle = new sem(init);
    80003220:	34000513          	li	a0,832
    80003224:	00000097          	auipc	ra,0x0
    80003228:	fac080e7          	jalr	-84(ra) # 800031d0 <_ZN3semnwEm>
};

class sem{
public:
    sem(unsigned short init = 1, sem** handle = nullptr) : val(init), handle(handle){}
    8000322c:	03049493          	slli	s1,s1,0x30
    80003230:	0304d493          	srli	s1,s1,0x30
    80003234:	00952023          	sw	s1,0(a0)
    ThreadList() : head(0), tail(0), count(0) {}
    80003238:	32052423          	sw	zero,808(a0)
    8000323c:	32052623          	sw	zero,812(a0)
    80003240:	32052823          	sw	zero,816(a0)
    80003244:	32053c23          	sd	zero,824(a0)
    80003248:	00a93023          	sd	a0,0(s2)
    if(*handle == nullptr) return -1;
    8000324c:	02050063          	beqz	a0,8000326c <_ZN3sem8sem_openEPPS_i+0x6c>
    return 0;
    80003250:	00000513          	li	a0,0
}
    80003254:	01813083          	ld	ra,24(sp)
    80003258:	01013403          	ld	s0,16(sp)
    8000325c:	00813483          	ld	s1,8(sp)
    80003260:	00013903          	ld	s2,0(sp)
    80003264:	02010113          	addi	sp,sp,32
    80003268:	00008067          	ret
    if(*handle == nullptr) return -1;
    8000326c:	fff00513          	li	a0,-1
    80003270:	fe5ff06f          	j	80003254 <_ZN3sem8sem_openEPPS_i+0x54>

0000000080003274 <_ZN3semdlEPv>:

void sem::operator delete(void *ptr) {
    80003274:	ff010113          	addi	sp,sp,-16
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	00813023          	sd	s0,0(sp)
    80003280:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	f1c080e7          	jalr	-228(ra) # 800021a0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <_ZN3semD1Ev>:

sem::~sem() {
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00113c23          	sd	ra,24(sp)
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00913423          	sd	s1,8(sp)
    800032ac:	02010413          	addi	s0,sp,32
    800032b0:	00050493          	mv	s1,a0
            return nullptr;
        }
    }

    bool isEmpty() const {
        return count == 0;
    800032b4:	3304a783          	lw	a5,816(s1)
    while(!blockedQueue.isEmpty()){
    800032b8:	00078c63          	beqz	a5,800032d0 <_ZN3semD1Ev+0x34>
        (*handle)->unblock();
    800032bc:	3384b783          	ld	a5,824(s1)
    800032c0:	0007b503          	ld	a0,0(a5)
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	c88080e7          	jalr	-888(ra) # 80002f4c <_ZN3sem7unblockEv>
    while(!blockedQueue.isEmpty()){
    800032cc:	fe9ff06f          	j	800032b4 <_ZN3semD1Ev+0x18>
    }
}
    800032d0:	01813083          	ld	ra,24(sp)
    800032d4:	01013403          	ld	s0,16(sp)
    800032d8:	00813483          	ld	s1,8(sp)
    800032dc:	02010113          	addi	sp,sp,32
    800032e0:	00008067          	ret

00000000800032e4 <_ZN9Scheduler3getEv>:
#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

TCB *Scheduler::get()
{
    800032e4:	ff010113          	addi	sp,sp,-16
    800032e8:	00813423          	sd	s0,8(sp)
    800032ec:	01010413          	addi	s0,sp,16
    TCB* next = TCB::running->next;
    800032f0:	00008797          	auipc	a5,0x8
    800032f4:	6f07b783          	ld	a5,1776(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800032f8:	0007b783          	ld	a5,0(a5)
    800032fc:	0507b503          	ld	a0,80(a5)
    if(!next) return TCB::running;
    80003300:	00050a63          	beqz	a0,80003314 <_ZN9Scheduler3getEv+0x30>
    TCB::running->next = nullptr; // za slucaj da je ubacena opet u red, ostace joj next, a potencijalno moze da nema niceg vise
    80003304:	0407b823          	sd	zero,80(a5)
    return next;
}
    80003308:	00813403          	ld	s0,8(sp)
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret
    if(!next) return TCB::running;
    80003314:	00078513          	mv	a0,a5
    80003318:	ff1ff06f          	j	80003308 <_ZN9Scheduler3getEv+0x24>

000000008000331c <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *tcb)
{
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00813423          	sd	s0,8(sp)
    80003324:	01010413          	addi	s0,sp,16
    if(!tcb->tail){
    80003328:	00008797          	auipc	a5,0x8
    8000332c:	6707b783          	ld	a5,1648(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003330:	0007b783          	ld	a5,0(a5)
    80003334:	02078063          	beqz	a5,80003354 <_ZN9Scheduler3putEP3TCB+0x38>
        TCB::running->next = tcb;
        TCB::tail = tcb;
        return;
    }
    tcb->tail->next = tcb;
    80003338:	04a7b823          	sd	a0,80(a5)
    tcb->tail = tcb;
    8000333c:	00008797          	auipc	a5,0x8
    80003340:	65c7b783          	ld	a5,1628(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003344:	00a7b023          	sd	a0,0(a5)
    80003348:	00813403          	ld	s0,8(sp)
    8000334c:	01010113          	addi	sp,sp,16
    80003350:	00008067          	ret
        TCB::running->next = tcb;
    80003354:	00008797          	auipc	a5,0x8
    80003358:	68c7b783          	ld	a5,1676(a5) # 8000b9e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000335c:	0007b783          	ld	a5,0(a5)
    80003360:	04a7b823          	sd	a0,80(a5)
        TCB::tail = tcb;
    80003364:	00008797          	auipc	a5,0x8
    80003368:	6347b783          	ld	a5,1588(a5) # 8000b998 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000336c:	00a7b023          	sd	a0,0(a5)
        return;
    80003370:	fd9ff06f          	j	80003348 <_ZN9Scheduler3putEP3TCB+0x2c>

0000000080003374 <_Z15printStringTrapPKc>:
//#include "../lib/console.h"
#include "../h/myConsole.hpp"
#include "../h/syscall_c.hpp"

void printStringTrap(char const *string)
{
    80003374:	fd010113          	addi	sp,sp,-48
    80003378:	02113423          	sd	ra,40(sp)
    8000337c:	02813023          	sd	s0,32(sp)
    80003380:	00913c23          	sd	s1,24(sp)
    80003384:	01213823          	sd	s2,16(sp)
    80003388:	03010413          	addi	s0,sp,48
    8000338c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003390:	100027f3          	csrr	a5,sstatus
    80003394:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003398:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000339c:	00200793          	li	a5,2
    800033a0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    800033a4:	0004c503          	lbu	a0,0(s1)
    800033a8:	00050a63          	beqz	a0,800033bc <_Z15printStringTrapPKc+0x48>
    {
        myConsole::putc(*string);
    800033ac:	fffff097          	auipc	ra,0xfffff
    800033b0:	0f4080e7          	jalr	244(ra) # 800024a0 <_ZN9myConsole4putcEc>
        string++;
    800033b4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800033b8:	fedff06f          	j	800033a4 <_Z15printStringTrapPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800033bc:	0009091b          	sext.w	s2,s2
    800033c0:	00297913          	andi	s2,s2,2
    800033c4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800033c8:	10092073          	csrs	sstatus,s2
}
    800033cc:	02813083          	ld	ra,40(sp)
    800033d0:	02013403          	ld	s0,32(sp)
    800033d4:	01813483          	ld	s1,24(sp)
    800033d8:	01013903          	ld	s2,16(sp)
    800033dc:	03010113          	addi	sp,sp,48
    800033e0:	00008067          	ret

00000000800033e4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800033e4:	fd010113          	addi	sp,sp,-48
    800033e8:	02113423          	sd	ra,40(sp)
    800033ec:	02813023          	sd	s0,32(sp)
    800033f0:	00913c23          	sd	s1,24(sp)
    800033f4:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800033f8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800033fc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80003400:	00a00613          	li	a2,10
    80003404:	02c5773b          	remuw	a4,a0,a2
    80003408:	02071693          	slli	a3,a4,0x20
    8000340c:	0206d693          	srli	a3,a3,0x20
    80003410:	00006717          	auipc	a4,0x6
    80003414:	d3870713          	addi	a4,a4,-712 # 80009148 <_ZZ12printIntegermE6digits>
    80003418:	00d70733          	add	a4,a4,a3
    8000341c:	00074703          	lbu	a4,0(a4)
    80003420:	fe040693          	addi	a3,s0,-32
    80003424:	009687b3          	add	a5,a3,s1
    80003428:	0014849b          	addiw	s1,s1,1
    8000342c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80003430:	0005071b          	sext.w	a4,a0
    80003434:	02c5553b          	divuw	a0,a0,a2
    80003438:	00900793          	li	a5,9
    8000343c:	fce7e2e3          	bltu	a5,a4,80003400 <_Z12printIntegerm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { putc(buf[i]); }
    80003440:	fff4849b          	addiw	s1,s1,-1
    80003444:	0004ce63          	bltz	s1,80003460 <_Z12printIntegerm+0x7c>
    80003448:	fe040793          	addi	a5,s0,-32
    8000344c:	009787b3          	add	a5,a5,s1
    80003450:	ff07c503          	lbu	a0,-16(a5)
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	0d8080e7          	jalr	216(ra) # 8000152c <_Z4putcc>
    8000345c:	fe5ff06f          	j	80003440 <_Z12printIntegerm+0x5c>
//    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
    80003460:	02813083          	ld	ra,40(sp)
    80003464:	02013403          	ld	s0,32(sp)
    80003468:	01813483          	ld	s1,24(sp)
    8000346c:	03010113          	addi	sp,sp,48
    80003470:	00008067          	ret

0000000080003474 <_Z16printIntegerTrapm>:

void printIntegerTrap(uint64 integer)
{
    80003474:	fd010113          	addi	sp,sp,-48
    80003478:	02113423          	sd	ra,40(sp)
    8000347c:	02813023          	sd	s0,32(sp)
    80003480:	00913c23          	sd	s1,24(sp)
    80003484:	03010413          	addi	s0,sp,48
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80003488:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    8000348c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80003490:	00a00613          	li	a2,10
    80003494:	02c5773b          	remuw	a4,a0,a2
    80003498:	02071693          	slli	a3,a4,0x20
    8000349c:	0206d693          	srli	a3,a3,0x20
    800034a0:	00006717          	auipc	a4,0x6
    800034a4:	ca870713          	addi	a4,a4,-856 # 80009148 <_ZZ12printIntegermE6digits>
    800034a8:	00d70733          	add	a4,a4,a3
    800034ac:	01074703          	lbu	a4,16(a4)
    800034b0:	fe040693          	addi	a3,s0,-32
    800034b4:	009687b3          	add	a5,a3,s1
    800034b8:	0014849b          	addiw	s1,s1,1
    800034bc:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800034c0:	0005071b          	sext.w	a4,a0
    800034c4:	02c5553b          	divuw	a0,a0,a2
    800034c8:	00900793          	li	a5,9
    800034cc:	fce7e2e3          	bltu	a5,a4,80003490 <_Z16printIntegerTrapm+0x1c>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { myConsole::putc(buf[i]); }
    800034d0:	fff4849b          	addiw	s1,s1,-1
    800034d4:	0004ce63          	bltz	s1,800034f0 <_Z16printIntegerTrapm+0x7c>
    800034d8:	fe040793          	addi	a5,s0,-32
    800034dc:	009787b3          	add	a5,a5,s1
    800034e0:	ff07c503          	lbu	a0,-16(a5)
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	fbc080e7          	jalr	-68(ra) # 800024a0 <_ZN9myConsole4putcEc>
    800034ec:	fe5ff06f          	j	800034d0 <_Z16printIntegerTrapm+0x5c>
//    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800034f0:	02813083          	ld	ra,40(sp)
    800034f4:	02013403          	ld	s0,32(sp)
    800034f8:	01813483          	ld	s1,24(sp)
    800034fc:	03010113          	addi	sp,sp,48
    80003500:	00008067          	ret

0000000080003504 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003504:	fe010113          	addi	sp,sp,-32
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	00813823          	sd	s0,16(sp)
    80003510:	00913423          	sd	s1,8(sp)
    80003514:	01213023          	sd	s2,0(sp)
    80003518:	02010413          	addi	s0,sp,32
    8000351c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003520:	00000913          	li	s2,0
    80003524:	00c0006f          	j	80003530 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003528:	ffffe097          	auipc	ra,0xffffe
    8000352c:	dac080e7          	jalr	-596(ra) # 800012d4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	fd4080e7          	jalr	-44(ra) # 80001504 <_Z4getcv>
    80003538:	0005059b          	sext.w	a1,a0
    8000353c:	01b00793          	li	a5,27
    80003540:	02f58a63          	beq	a1,a5,80003574 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003544:	0084b503          	ld	a0,8(s1)
    80003548:	00003097          	auipc	ra,0x3
    8000354c:	374080e7          	jalr	884(ra) # 800068bc <_ZN6Buffer3putEi>
        i++;
    80003550:	0019071b          	addiw	a4,s2,1
    80003554:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003558:	0004a683          	lw	a3,0(s1)
    8000355c:	0026979b          	slliw	a5,a3,0x2
    80003560:	00d787bb          	addw	a5,a5,a3
    80003564:	0017979b          	slliw	a5,a5,0x1
    80003568:	02f767bb          	remw	a5,a4,a5
    8000356c:	fc0792e3          	bnez	a5,80003530 <_ZL16producerKeyboardPv+0x2c>
    80003570:	fb9ff06f          	j	80003528 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003574:	00100793          	li	a5,1
    80003578:	00008717          	auipc	a4,0x8
    8000357c:	52f72c23          	sw	a5,1336(a4) # 8000bab0 <_ZL9threadEnd>
    data->buffer->put('!');
    80003580:	02100593          	li	a1,33
    80003584:	0084b503          	ld	a0,8(s1)
    80003588:	00003097          	auipc	ra,0x3
    8000358c:	334080e7          	jalr	820(ra) # 800068bc <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003590:	0104b503          	ld	a0,16(s1)
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	eac080e7          	jalr	-340(ra) # 80001440 <_Z10sem_signalP3sem>
}
    8000359c:	01813083          	ld	ra,24(sp)
    800035a0:	01013403          	ld	s0,16(sp)
    800035a4:	00813483          	ld	s1,8(sp)
    800035a8:	00013903          	ld	s2,0(sp)
    800035ac:	02010113          	addi	sp,sp,32
    800035b0:	00008067          	ret

00000000800035b4 <_ZL8producerPv>:

static void producer(void *arg) {
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00813823          	sd	s0,16(sp)
    800035c0:	00913423          	sd	s1,8(sp)
    800035c4:	01213023          	sd	s2,0(sp)
    800035c8:	02010413          	addi	s0,sp,32
    800035cc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800035d0:	00000913          	li	s2,0
    800035d4:	00c0006f          	j	800035e0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	cfc080e7          	jalr	-772(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035e0:	00008797          	auipc	a5,0x8
    800035e4:	4d07a783          	lw	a5,1232(a5) # 8000bab0 <_ZL9threadEnd>
    800035e8:	02079e63          	bnez	a5,80003624 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035ec:	0004a583          	lw	a1,0(s1)
    800035f0:	0305859b          	addiw	a1,a1,48
    800035f4:	0084b503          	ld	a0,8(s1)
    800035f8:	00003097          	auipc	ra,0x3
    800035fc:	2c4080e7          	jalr	708(ra) # 800068bc <_ZN6Buffer3putEi>
        i++;
    80003600:	0019071b          	addiw	a4,s2,1
    80003604:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003608:	0004a683          	lw	a3,0(s1)
    8000360c:	0026979b          	slliw	a5,a3,0x2
    80003610:	00d787bb          	addw	a5,a5,a3
    80003614:	0017979b          	slliw	a5,a5,0x1
    80003618:	02f767bb          	remw	a5,a4,a5
    8000361c:	fc0792e3          	bnez	a5,800035e0 <_ZL8producerPv+0x2c>
    80003620:	fb9ff06f          	j	800035d8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003624:	0104b503          	ld	a0,16(s1)
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	e18080e7          	jalr	-488(ra) # 80001440 <_Z10sem_signalP3sem>
}
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	00013903          	ld	s2,0(sp)
    80003640:	02010113          	addi	sp,sp,32
    80003644:	00008067          	ret

0000000080003648 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003648:	fd010113          	addi	sp,sp,-48
    8000364c:	02113423          	sd	ra,40(sp)
    80003650:	02813023          	sd	s0,32(sp)
    80003654:	00913c23          	sd	s1,24(sp)
    80003658:	01213823          	sd	s2,16(sp)
    8000365c:	01313423          	sd	s3,8(sp)
    80003660:	03010413          	addi	s0,sp,48
    80003664:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003668:	00000993          	li	s3,0
    8000366c:	01c0006f          	j	80003688 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	c64080e7          	jalr	-924(ra) # 800012d4 <_Z15thread_dispatchv>
    80003678:	0500006f          	j	800036c8 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000367c:	00a00513          	li	a0,10
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	eac080e7          	jalr	-340(ra) # 8000152c <_Z4putcc>
    while (!threadEnd) {
    80003688:	00008797          	auipc	a5,0x8
    8000368c:	4287a783          	lw	a5,1064(a5) # 8000bab0 <_ZL9threadEnd>
    80003690:	06079063          	bnez	a5,800036f0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003694:	00893503          	ld	a0,8(s2)
    80003698:	00003097          	auipc	ra,0x3
    8000369c:	2b4080e7          	jalr	692(ra) # 8000694c <_ZN6Buffer3getEv>
        i++;
    800036a0:	0019849b          	addiw	s1,s3,1
    800036a4:	0004899b          	sext.w	s3,s1
        putc(key);
    800036a8:	0ff57513          	andi	a0,a0,255
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	e80080e7          	jalr	-384(ra) # 8000152c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800036b4:	00092703          	lw	a4,0(s2)
    800036b8:	0027179b          	slliw	a5,a4,0x2
    800036bc:	00e787bb          	addw	a5,a5,a4
    800036c0:	02f4e7bb          	remw	a5,s1,a5
    800036c4:	fa0786e3          	beqz	a5,80003670 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800036c8:	05000793          	li	a5,80
    800036cc:	02f4e4bb          	remw	s1,s1,a5
    800036d0:	fa049ce3          	bnez	s1,80003688 <_ZL8consumerPv+0x40>
    800036d4:	fa9ff06f          	j	8000367c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800036d8:	00893503          	ld	a0,8(s2)
    800036dc:	00003097          	auipc	ra,0x3
    800036e0:	270080e7          	jalr	624(ra) # 8000694c <_ZN6Buffer3getEv>
        putc(key);
    800036e4:	0ff57513          	andi	a0,a0,255
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	e44080e7          	jalr	-444(ra) # 8000152c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036f0:	00893503          	ld	a0,8(s2)
    800036f4:	00003097          	auipc	ra,0x3
    800036f8:	2e4080e7          	jalr	740(ra) # 800069d8 <_ZN6Buffer6getCntEv>
    800036fc:	fca04ee3          	bgtz	a0,800036d8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003700:	01093503          	ld	a0,16(s2)
    80003704:	ffffe097          	auipc	ra,0xffffe
    80003708:	d3c080e7          	jalr	-708(ra) # 80001440 <_Z10sem_signalP3sem>
}
    8000370c:	02813083          	ld	ra,40(sp)
    80003710:	02013403          	ld	s0,32(sp)
    80003714:	01813483          	ld	s1,24(sp)
    80003718:	01013903          	ld	s2,16(sp)
    8000371c:	00813983          	ld	s3,8(sp)
    80003720:	03010113          	addi	sp,sp,48
    80003724:	00008067          	ret

0000000080003728 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003728:	f9010113          	addi	sp,sp,-112
    8000372c:	06113423          	sd	ra,104(sp)
    80003730:	06813023          	sd	s0,96(sp)
    80003734:	04913c23          	sd	s1,88(sp)
    80003738:	05213823          	sd	s2,80(sp)
    8000373c:	05313423          	sd	s3,72(sp)
    80003740:	05413023          	sd	s4,64(sp)
    80003744:	03513c23          	sd	s5,56(sp)
    80003748:	03613823          	sd	s6,48(sp)
    8000374c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003750:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003754:	00006517          	auipc	a0,0x6
    80003758:	a1450513          	addi	a0,a0,-1516 # 80009168 <_ZZ16printIntegerTrapmE6digits+0x10>
    8000375c:	00002097          	auipc	ra,0x2
    80003760:	220080e7          	jalr	544(ra) # 8000597c <_Z11printStringPKc>
    getString(input, 30);
    80003764:	01e00593          	li	a1,30
    80003768:	fa040493          	addi	s1,s0,-96
    8000376c:	00048513          	mv	a0,s1
    80003770:	00002097          	auipc	ra,0x2
    80003774:	294080e7          	jalr	660(ra) # 80005a04 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003778:	00048513          	mv	a0,s1
    8000377c:	00002097          	auipc	ra,0x2
    80003780:	360080e7          	jalr	864(ra) # 80005adc <_Z11stringToIntPKc>
    80003784:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	a0050513          	addi	a0,a0,-1536 # 80009188 <_ZZ16printIntegerTrapmE6digits+0x30>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	1ec080e7          	jalr	492(ra) # 8000597c <_Z11printStringPKc>
    getString(input, 30);
    80003798:	01e00593          	li	a1,30
    8000379c:	00048513          	mv	a0,s1
    800037a0:	00002097          	auipc	ra,0x2
    800037a4:	264080e7          	jalr	612(ra) # 80005a04 <_Z9getStringPci>
    n = stringToInt(input);
    800037a8:	00048513          	mv	a0,s1
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	330080e7          	jalr	816(ra) # 80005adc <_Z11stringToIntPKc>
    800037b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800037b8:	00006517          	auipc	a0,0x6
    800037bc:	9f050513          	addi	a0,a0,-1552 # 800091a8 <_ZZ16printIntegerTrapmE6digits+0x50>
    800037c0:	00002097          	auipc	ra,0x2
    800037c4:	1bc080e7          	jalr	444(ra) # 8000597c <_Z11printStringPKc>
    800037c8:	00000613          	li	a2,0
    800037cc:	00a00593          	li	a1,10
    800037d0:	00090513          	mv	a0,s2
    800037d4:	00002097          	auipc	ra,0x2
    800037d8:	358080e7          	jalr	856(ra) # 80005b2c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037dc:	00006517          	auipc	a0,0x6
    800037e0:	9e450513          	addi	a0,a0,-1564 # 800091c0 <_ZZ16printIntegerTrapmE6digits+0x68>
    800037e4:	00002097          	auipc	ra,0x2
    800037e8:	198080e7          	jalr	408(ra) # 8000597c <_Z11printStringPKc>
    800037ec:	00000613          	li	a2,0
    800037f0:	00a00593          	li	a1,10
    800037f4:	00048513          	mv	a0,s1
    800037f8:	00002097          	auipc	ra,0x2
    800037fc:	334080e7          	jalr	820(ra) # 80005b2c <_Z8printIntiii>
    printString(".\n");
    80003800:	00006517          	auipc	a0,0x6
    80003804:	9d850513          	addi	a0,a0,-1576 # 800091d8 <_ZZ16printIntegerTrapmE6digits+0x80>
    80003808:	00002097          	auipc	ra,0x2
    8000380c:	174080e7          	jalr	372(ra) # 8000597c <_Z11printStringPKc>
    if(threadNum > n) {
    80003810:	0324c463          	blt	s1,s2,80003838 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003814:	03205c63          	blez	s2,8000384c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003818:	03800513          	li	a0,56
    8000381c:	fffff097          	auipc	ra,0xfffff
    80003820:	d8c080e7          	jalr	-628(ra) # 800025a8 <_Znwm>
    80003824:	00050a13          	mv	s4,a0
    80003828:	00048593          	mv	a1,s1
    8000382c:	00003097          	auipc	ra,0x3
    80003830:	ff4080e7          	jalr	-12(ra) # 80006820 <_ZN6BufferC1Ei>
    80003834:	0300006f          	j	80003864 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003838:	00006517          	auipc	a0,0x6
    8000383c:	9a850513          	addi	a0,a0,-1624 # 800091e0 <_ZZ16printIntegerTrapmE6digits+0x88>
    80003840:	00002097          	auipc	ra,0x2
    80003844:	13c080e7          	jalr	316(ra) # 8000597c <_Z11printStringPKc>
        return;
    80003848:	0140006f          	j	8000385c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	9d450513          	addi	a0,a0,-1580 # 80009220 <_ZZ16printIntegerTrapmE6digits+0xc8>
    80003854:	00002097          	auipc	ra,0x2
    80003858:	128080e7          	jalr	296(ra) # 8000597c <_Z11printStringPKc>
        return;
    8000385c:	000b0113          	mv	sp,s6
    80003860:	1500006f          	j	800039b0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003864:	00000593          	li	a1,0
    80003868:	00008517          	auipc	a0,0x8
    8000386c:	25050513          	addi	a0,a0,592 # 8000bab8 <_ZL10waitForAll>
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	b18080e7          	jalr	-1256(ra) # 80001388 <_Z8sem_openPP3semj>
    thread_t threads[threadNum];
    80003878:	00391793          	slli	a5,s2,0x3
    8000387c:	00f78793          	addi	a5,a5,15
    80003880:	ff07f793          	andi	a5,a5,-16
    80003884:	40f10133          	sub	sp,sp,a5
    80003888:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000388c:	0019071b          	addiw	a4,s2,1
    80003890:	00171793          	slli	a5,a4,0x1
    80003894:	00e787b3          	add	a5,a5,a4
    80003898:	00379793          	slli	a5,a5,0x3
    8000389c:	00f78793          	addi	a5,a5,15
    800038a0:	ff07f793          	andi	a5,a5,-16
    800038a4:	40f10133          	sub	sp,sp,a5
    800038a8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800038ac:	00191613          	slli	a2,s2,0x1
    800038b0:	012607b3          	add	a5,a2,s2
    800038b4:	00379793          	slli	a5,a5,0x3
    800038b8:	00f987b3          	add	a5,s3,a5
    800038bc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800038c0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800038c4:	00008717          	auipc	a4,0x8
    800038c8:	1f473703          	ld	a4,500(a4) # 8000bab8 <_ZL10waitForAll>
    800038cc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800038d0:	00078613          	mv	a2,a5
    800038d4:	00000597          	auipc	a1,0x0
    800038d8:	d7458593          	addi	a1,a1,-652 # 80003648 <_ZL8consumerPv>
    800038dc:	f9840513          	addi	a0,s0,-104
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	a14080e7          	jalr	-1516(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038e8:	00000493          	li	s1,0
    800038ec:	0280006f          	j	80003914 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038f0:	00000597          	auipc	a1,0x0
    800038f4:	c1458593          	addi	a1,a1,-1004 # 80003504 <_ZL16producerKeyboardPv>
                      data + i);
    800038f8:	00179613          	slli	a2,a5,0x1
    800038fc:	00f60633          	add	a2,a2,a5
    80003900:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003904:	00c98633          	add	a2,s3,a2
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	9ec080e7          	jalr	-1556(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003910:	0014849b          	addiw	s1,s1,1
    80003914:	0524d263          	bge	s1,s2,80003958 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003918:	00149793          	slli	a5,s1,0x1
    8000391c:	009787b3          	add	a5,a5,s1
    80003920:	00379793          	slli	a5,a5,0x3
    80003924:	00f987b3          	add	a5,s3,a5
    80003928:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    8000392c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003930:	00008717          	auipc	a4,0x8
    80003934:	18873703          	ld	a4,392(a4) # 8000bab8 <_ZL10waitForAll>
    80003938:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    8000393c:	00048793          	mv	a5,s1
    80003940:	00349513          	slli	a0,s1,0x3
    80003944:	00aa8533          	add	a0,s5,a0
    80003948:	fa9054e3          	blez	s1,800038f0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000394c:	00000597          	auipc	a1,0x0
    80003950:	c6858593          	addi	a1,a1,-920 # 800035b4 <_ZL8producerPv>
    80003954:	fa5ff06f          	j	800038f8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	97c080e7          	jalr	-1668(ra) # 800012d4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003960:	00000493          	li	s1,0
    80003964:	00994e63          	blt	s2,s1,80003980 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003968:	00008517          	auipc	a0,0x8
    8000396c:	15053503          	ld	a0,336(a0) # 8000bab8 <_ZL10waitForAll>
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	a94080e7          	jalr	-1388(ra) # 80001404 <_Z8sem_waitP3sem>
    for (int i = 0; i <= threadNum; i++) {
    80003978:	0014849b          	addiw	s1,s1,1
    8000397c:	fe9ff06f          	j	80003964 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003980:	00008517          	auipc	a0,0x8
    80003984:	13853503          	ld	a0,312(a0) # 8000bab8 <_ZL10waitForAll>
    80003988:	ffffe097          	auipc	ra,0xffffe
    8000398c:	a50080e7          	jalr	-1456(ra) # 800013d8 <_Z9sem_closeP3sem>
    delete buffer;
    80003990:	000a0e63          	beqz	s4,800039ac <_Z22producerConsumer_C_APIv+0x284>
    80003994:	000a0513          	mv	a0,s4
    80003998:	00003097          	auipc	ra,0x3
    8000399c:	0c8080e7          	jalr	200(ra) # 80006a60 <_ZN6BufferD1Ev>
    800039a0:	000a0513          	mv	a0,s4
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	c64080e7          	jalr	-924(ra) # 80002608 <_ZdlPv>
    800039ac:	000b0113          	mv	sp,s6

}
    800039b0:	f9040113          	addi	sp,s0,-112
    800039b4:	06813083          	ld	ra,104(sp)
    800039b8:	06013403          	ld	s0,96(sp)
    800039bc:	05813483          	ld	s1,88(sp)
    800039c0:	05013903          	ld	s2,80(sp)
    800039c4:	04813983          	ld	s3,72(sp)
    800039c8:	04013a03          	ld	s4,64(sp)
    800039cc:	03813a83          	ld	s5,56(sp)
    800039d0:	03013b03          	ld	s6,48(sp)
    800039d4:	07010113          	addi	sp,sp,112
    800039d8:	00008067          	ret
    800039dc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039e0:	000a0513          	mv	a0,s4
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	c24080e7          	jalr	-988(ra) # 80002608 <_ZdlPv>
    800039ec:	00048513          	mv	a0,s1
    800039f0:	00009097          	auipc	ra,0x9
    800039f4:	1e8080e7          	jalr	488(ra) # 8000cbd8 <_Unwind_Resume>

00000000800039f8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039f8:	fe010113          	addi	sp,sp,-32
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00913423          	sd	s1,8(sp)
    80003a08:	01213023          	sd	s2,0(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003a14:	00100793          	li	a5,1
    80003a18:	02a7f863          	bgeu	a5,a0,80003a48 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003a1c:	00a00793          	li	a5,10
    80003a20:	02f577b3          	remu	a5,a0,a5
    80003a24:	02078e63          	beqz	a5,80003a60 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003a28:	fff48513          	addi	a0,s1,-1
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	fcc080e7          	jalr	-52(ra) # 800039f8 <_ZL9fibonaccim>
    80003a34:	00050913          	mv	s2,a0
    80003a38:	ffe48513          	addi	a0,s1,-2
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	fbc080e7          	jalr	-68(ra) # 800039f8 <_ZL9fibonaccim>
    80003a44:	00a90533          	add	a0,s2,a0
}
    80003a48:	01813083          	ld	ra,24(sp)
    80003a4c:	01013403          	ld	s0,16(sp)
    80003a50:	00813483          	ld	s1,8(sp)
    80003a54:	00013903          	ld	s2,0(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	874080e7          	jalr	-1932(ra) # 800012d4 <_Z15thread_dispatchv>
    80003a68:	fc1ff06f          	j	80003a28 <_ZL9fibonaccim+0x30>

0000000080003a6c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a6c:	fe010113          	addi	sp,sp,-32
    80003a70:	00113c23          	sd	ra,24(sp)
    80003a74:	00813823          	sd	s0,16(sp)
    80003a78:	00913423          	sd	s1,8(sp)
    80003a7c:	01213023          	sd	s2,0(sp)
    80003a80:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a84:	00000913          	li	s2,0
    80003a88:	0380006f          	j	80003ac0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a8c:	ffffe097          	auipc	ra,0xffffe
    80003a90:	848080e7          	jalr	-1976(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a94:	00148493          	addi	s1,s1,1
    80003a98:	000027b7          	lui	a5,0x2
    80003a9c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003aa0:	0097ee63          	bltu	a5,s1,80003abc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003aa4:	00000713          	li	a4,0
    80003aa8:	000077b7          	lui	a5,0x7
    80003aac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003ab0:	fce7eee3          	bltu	a5,a4,80003a8c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003ab4:	00170713          	addi	a4,a4,1
    80003ab8:	ff1ff06f          	j	80003aa8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003abc:	00190913          	addi	s2,s2,1
    80003ac0:	00900793          	li	a5,9
    80003ac4:	0527e063          	bltu	a5,s2,80003b04 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003ac8:	00005517          	auipc	a0,0x5
    80003acc:	78850513          	addi	a0,a0,1928 # 80009250 <_ZZ16printIntegerTrapmE6digits+0xf8>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	eac080e7          	jalr	-340(ra) # 8000597c <_Z11printStringPKc>
    80003ad8:	00000613          	li	a2,0
    80003adc:	00a00593          	li	a1,10
    80003ae0:	0009051b          	sext.w	a0,s2
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	048080e7          	jalr	72(ra) # 80005b2c <_Z8printIntiii>
    80003aec:	00006517          	auipc	a0,0x6
    80003af0:	9c450513          	addi	a0,a0,-1596 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	e88080e7          	jalr	-376(ra) # 8000597c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003afc:	00000493          	li	s1,0
    80003b00:	f99ff06f          	j	80003a98 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003b04:	00005517          	auipc	a0,0x5
    80003b08:	75450513          	addi	a0,a0,1876 # 80009258 <_ZZ16printIntegerTrapmE6digits+0x100>
    80003b0c:	00002097          	auipc	ra,0x2
    80003b10:	e70080e7          	jalr	-400(ra) # 8000597c <_Z11printStringPKc>
    finishedA = true;
    80003b14:	00100793          	li	a5,1
    80003b18:	00008717          	auipc	a4,0x8
    80003b1c:	faf70423          	sb	a5,-88(a4) # 8000bac0 <_ZL9finishedA>
}
    80003b20:	01813083          	ld	ra,24(sp)
    80003b24:	01013403          	ld	s0,16(sp)
    80003b28:	00813483          	ld	s1,8(sp)
    80003b2c:	00013903          	ld	s2,0(sp)
    80003b30:	02010113          	addi	sp,sp,32
    80003b34:	00008067          	ret

0000000080003b38 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003b38:	fe010113          	addi	sp,sp,-32
    80003b3c:	00113c23          	sd	ra,24(sp)
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00913423          	sd	s1,8(sp)
    80003b48:	01213023          	sd	s2,0(sp)
    80003b4c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b50:	00000913          	li	s2,0
    80003b54:	0380006f          	j	80003b8c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b58:	ffffd097          	auipc	ra,0xffffd
    80003b5c:	77c080e7          	jalr	1916(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b60:	00148493          	addi	s1,s1,1
    80003b64:	000027b7          	lui	a5,0x2
    80003b68:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b6c:	0097ee63          	bltu	a5,s1,80003b88 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b70:	00000713          	li	a4,0
    80003b74:	000077b7          	lui	a5,0x7
    80003b78:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b7c:	fce7eee3          	bltu	a5,a4,80003b58 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b80:	00170713          	addi	a4,a4,1
    80003b84:	ff1ff06f          	j	80003b74 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b88:	00190913          	addi	s2,s2,1
    80003b8c:	00f00793          	li	a5,15
    80003b90:	0527e063          	bltu	a5,s2,80003bd0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b94:	00005517          	auipc	a0,0x5
    80003b98:	6d450513          	addi	a0,a0,1748 # 80009268 <_ZZ16printIntegerTrapmE6digits+0x110>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	de0080e7          	jalr	-544(ra) # 8000597c <_Z11printStringPKc>
    80003ba4:	00000613          	li	a2,0
    80003ba8:	00a00593          	li	a1,10
    80003bac:	0009051b          	sext.w	a0,s2
    80003bb0:	00002097          	auipc	ra,0x2
    80003bb4:	f7c080e7          	jalr	-132(ra) # 80005b2c <_Z8printIntiii>
    80003bb8:	00006517          	auipc	a0,0x6
    80003bbc:	8f850513          	addi	a0,a0,-1800 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003bc0:	00002097          	auipc	ra,0x2
    80003bc4:	dbc080e7          	jalr	-580(ra) # 8000597c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003bc8:	00000493          	li	s1,0
    80003bcc:	f99ff06f          	j	80003b64 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003bd0:	00005517          	auipc	a0,0x5
    80003bd4:	6a050513          	addi	a0,a0,1696 # 80009270 <_ZZ16printIntegerTrapmE6digits+0x118>
    80003bd8:	00002097          	auipc	ra,0x2
    80003bdc:	da4080e7          	jalr	-604(ra) # 8000597c <_Z11printStringPKc>
    finishedB = true;
    80003be0:	00100793          	li	a5,1
    80003be4:	00008717          	auipc	a4,0x8
    80003be8:	ecf70ea3          	sb	a5,-291(a4) # 8000bac1 <_ZL9finishedB>
    thread_dispatch();
    80003bec:	ffffd097          	auipc	ra,0xffffd
    80003bf0:	6e8080e7          	jalr	1768(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003bf4:	01813083          	ld	ra,24(sp)
    80003bf8:	01013403          	ld	s0,16(sp)
    80003bfc:	00813483          	ld	s1,8(sp)
    80003c00:	00013903          	ld	s2,0(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	00008067          	ret

0000000080003c0c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003c0c:	fe010113          	addi	sp,sp,-32
    80003c10:	00113c23          	sd	ra,24(sp)
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00913423          	sd	s1,8(sp)
    80003c1c:	01213023          	sd	s2,0(sp)
    80003c20:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c24:	00000493          	li	s1,0
    80003c28:	0400006f          	j	80003c68 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003c2c:	00005517          	auipc	a0,0x5
    80003c30:	65450513          	addi	a0,a0,1620 # 80009280 <_ZZ16printIntegerTrapmE6digits+0x128>
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	d48080e7          	jalr	-696(ra) # 8000597c <_Z11printStringPKc>
    80003c3c:	00000613          	li	a2,0
    80003c40:	00a00593          	li	a1,10
    80003c44:	00048513          	mv	a0,s1
    80003c48:	00002097          	auipc	ra,0x2
    80003c4c:	ee4080e7          	jalr	-284(ra) # 80005b2c <_Z8printIntiii>
    80003c50:	00006517          	auipc	a0,0x6
    80003c54:	86050513          	addi	a0,a0,-1952 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	d24080e7          	jalr	-732(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c60:	0014849b          	addiw	s1,s1,1
    80003c64:	0ff4f493          	andi	s1,s1,255
    80003c68:	00200793          	li	a5,2
    80003c6c:	fc97f0e3          	bgeu	a5,s1,80003c2c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c70:	00005517          	auipc	a0,0x5
    80003c74:	61850513          	addi	a0,a0,1560 # 80009288 <_ZZ16printIntegerTrapmE6digits+0x130>
    80003c78:	00002097          	auipc	ra,0x2
    80003c7c:	d04080e7          	jalr	-764(ra) # 8000597c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c80:	00700313          	li	t1,7
    thread_dispatch();
    80003c84:	ffffd097          	auipc	ra,0xffffd
    80003c88:	650080e7          	jalr	1616(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c8c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c90:	00005517          	auipc	a0,0x5
    80003c94:	60850513          	addi	a0,a0,1544 # 80009298 <_ZZ16printIntegerTrapmE6digits+0x140>
    80003c98:	00002097          	auipc	ra,0x2
    80003c9c:	ce4080e7          	jalr	-796(ra) # 8000597c <_Z11printStringPKc>
    80003ca0:	00000613          	li	a2,0
    80003ca4:	00a00593          	li	a1,10
    80003ca8:	0009051b          	sext.w	a0,s2
    80003cac:	00002097          	auipc	ra,0x2
    80003cb0:	e80080e7          	jalr	-384(ra) # 80005b2c <_Z8printIntiii>
    80003cb4:	00005517          	auipc	a0,0x5
    80003cb8:	7fc50513          	addi	a0,a0,2044 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	cc0080e7          	jalr	-832(ra) # 8000597c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003cc4:	00c00513          	li	a0,12
    80003cc8:	00000097          	auipc	ra,0x0
    80003ccc:	d30080e7          	jalr	-720(ra) # 800039f8 <_ZL9fibonaccim>
    80003cd0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003cd4:	00005517          	auipc	a0,0x5
    80003cd8:	5cc50513          	addi	a0,a0,1484 # 800092a0 <_ZZ16printIntegerTrapmE6digits+0x148>
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	ca0080e7          	jalr	-864(ra) # 8000597c <_Z11printStringPKc>
    80003ce4:	00000613          	li	a2,0
    80003ce8:	00a00593          	li	a1,10
    80003cec:	0009051b          	sext.w	a0,s2
    80003cf0:	00002097          	auipc	ra,0x2
    80003cf4:	e3c080e7          	jalr	-452(ra) # 80005b2c <_Z8printIntiii>
    80003cf8:	00005517          	auipc	a0,0x5
    80003cfc:	7b850513          	addi	a0,a0,1976 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003d00:	00002097          	auipc	ra,0x2
    80003d04:	c7c080e7          	jalr	-900(ra) # 8000597c <_Z11printStringPKc>
    80003d08:	0400006f          	j	80003d48 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003d0c:	00005517          	auipc	a0,0x5
    80003d10:	57450513          	addi	a0,a0,1396 # 80009280 <_ZZ16printIntegerTrapmE6digits+0x128>
    80003d14:	00002097          	auipc	ra,0x2
    80003d18:	c68080e7          	jalr	-920(ra) # 8000597c <_Z11printStringPKc>
    80003d1c:	00000613          	li	a2,0
    80003d20:	00a00593          	li	a1,10
    80003d24:	00048513          	mv	a0,s1
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	e04080e7          	jalr	-508(ra) # 80005b2c <_Z8printIntiii>
    80003d30:	00005517          	auipc	a0,0x5
    80003d34:	78050513          	addi	a0,a0,1920 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	c44080e7          	jalr	-956(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d40:	0014849b          	addiw	s1,s1,1
    80003d44:	0ff4f493          	andi	s1,s1,255
    80003d48:	00500793          	li	a5,5
    80003d4c:	fc97f0e3          	bgeu	a5,s1,80003d0c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d50:	00005517          	auipc	a0,0x5
    80003d54:	50850513          	addi	a0,a0,1288 # 80009258 <_ZZ16printIntegerTrapmE6digits+0x100>
    80003d58:	00002097          	auipc	ra,0x2
    80003d5c:	c24080e7          	jalr	-988(ra) # 8000597c <_Z11printStringPKc>
    finishedC = true;
    80003d60:	00100793          	li	a5,1
    80003d64:	00008717          	auipc	a4,0x8
    80003d68:	d4f70f23          	sb	a5,-674(a4) # 8000bac2 <_ZL9finishedC>
    thread_dispatch();
    80003d6c:	ffffd097          	auipc	ra,0xffffd
    80003d70:	568080e7          	jalr	1384(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003d74:	01813083          	ld	ra,24(sp)
    80003d78:	01013403          	ld	s0,16(sp)
    80003d7c:	00813483          	ld	s1,8(sp)
    80003d80:	00013903          	ld	s2,0(sp)
    80003d84:	02010113          	addi	sp,sp,32
    80003d88:	00008067          	ret

0000000080003d8c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d8c:	fe010113          	addi	sp,sp,-32
    80003d90:	00113c23          	sd	ra,24(sp)
    80003d94:	00813823          	sd	s0,16(sp)
    80003d98:	00913423          	sd	s1,8(sp)
    80003d9c:	01213023          	sd	s2,0(sp)
    80003da0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003da4:	00a00493          	li	s1,10
    80003da8:	0400006f          	j	80003de8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	50450513          	addi	a0,a0,1284 # 800092b0 <_ZZ16printIntegerTrapmE6digits+0x158>
    80003db4:	00002097          	auipc	ra,0x2
    80003db8:	bc8080e7          	jalr	-1080(ra) # 8000597c <_Z11printStringPKc>
    80003dbc:	00000613          	li	a2,0
    80003dc0:	00a00593          	li	a1,10
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	00002097          	auipc	ra,0x2
    80003dcc:	d64080e7          	jalr	-668(ra) # 80005b2c <_Z8printIntiii>
    80003dd0:	00005517          	auipc	a0,0x5
    80003dd4:	6e050513          	addi	a0,a0,1760 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003dd8:	00002097          	auipc	ra,0x2
    80003ddc:	ba4080e7          	jalr	-1116(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003de0:	0014849b          	addiw	s1,s1,1
    80003de4:	0ff4f493          	andi	s1,s1,255
    80003de8:	00c00793          	li	a5,12
    80003dec:	fc97f0e3          	bgeu	a5,s1,80003dac <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003df0:	00005517          	auipc	a0,0x5
    80003df4:	4c850513          	addi	a0,a0,1224 # 800092b8 <_ZZ16printIntegerTrapmE6digits+0x160>
    80003df8:	00002097          	auipc	ra,0x2
    80003dfc:	b84080e7          	jalr	-1148(ra) # 8000597c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003e00:	00500313          	li	t1,5
    thread_dispatch();
    80003e04:	ffffd097          	auipc	ra,0xffffd
    80003e08:	4d0080e7          	jalr	1232(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003e0c:	01000513          	li	a0,16
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	be8080e7          	jalr	-1048(ra) # 800039f8 <_ZL9fibonaccim>
    80003e18:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003e1c:	00005517          	auipc	a0,0x5
    80003e20:	4ac50513          	addi	a0,a0,1196 # 800092c8 <_ZZ16printIntegerTrapmE6digits+0x170>
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	b58080e7          	jalr	-1192(ra) # 8000597c <_Z11printStringPKc>
    80003e2c:	00000613          	li	a2,0
    80003e30:	00a00593          	li	a1,10
    80003e34:	0009051b          	sext.w	a0,s2
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	cf4080e7          	jalr	-780(ra) # 80005b2c <_Z8printIntiii>
    80003e40:	00005517          	auipc	a0,0x5
    80003e44:	67050513          	addi	a0,a0,1648 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003e48:	00002097          	auipc	ra,0x2
    80003e4c:	b34080e7          	jalr	-1228(ra) # 8000597c <_Z11printStringPKc>
    80003e50:	0400006f          	j	80003e90 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e54:	00005517          	auipc	a0,0x5
    80003e58:	45c50513          	addi	a0,a0,1116 # 800092b0 <_ZZ16printIntegerTrapmE6digits+0x158>
    80003e5c:	00002097          	auipc	ra,0x2
    80003e60:	b20080e7          	jalr	-1248(ra) # 8000597c <_Z11printStringPKc>
    80003e64:	00000613          	li	a2,0
    80003e68:	00a00593          	li	a1,10
    80003e6c:	00048513          	mv	a0,s1
    80003e70:	00002097          	auipc	ra,0x2
    80003e74:	cbc080e7          	jalr	-836(ra) # 80005b2c <_Z8printIntiii>
    80003e78:	00005517          	auipc	a0,0x5
    80003e7c:	63850513          	addi	a0,a0,1592 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80003e80:	00002097          	auipc	ra,0x2
    80003e84:	afc080e7          	jalr	-1284(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e88:	0014849b          	addiw	s1,s1,1
    80003e8c:	0ff4f493          	andi	s1,s1,255
    80003e90:	00f00793          	li	a5,15
    80003e94:	fc97f0e3          	bgeu	a5,s1,80003e54 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e98:	00005517          	auipc	a0,0x5
    80003e9c:	44050513          	addi	a0,a0,1088 # 800092d8 <_ZZ16printIntegerTrapmE6digits+0x180>
    80003ea0:	00002097          	auipc	ra,0x2
    80003ea4:	adc080e7          	jalr	-1316(ra) # 8000597c <_Z11printStringPKc>
    finishedD = true;
    80003ea8:	00100793          	li	a5,1
    80003eac:	00008717          	auipc	a4,0x8
    80003eb0:	c0f70ba3          	sb	a5,-1001(a4) # 8000bac3 <_ZL9finishedD>
    thread_dispatch();
    80003eb4:	ffffd097          	auipc	ra,0xffffd
    80003eb8:	420080e7          	jalr	1056(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003ed4:	fc010113          	addi	sp,sp,-64
    80003ed8:	02113c23          	sd	ra,56(sp)
    80003edc:	02813823          	sd	s0,48(sp)
    80003ee0:	02913423          	sd	s1,40(sp)
    80003ee4:	03213023          	sd	s2,32(sp)
    80003ee8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003eec:	02000513          	li	a0,32
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	6b8080e7          	jalr	1720(ra) # 800025a8 <_Znwm>
    80003ef8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003efc:	fffff097          	auipc	ra,0xfffff
    80003f00:	878080e7          	jalr	-1928(ra) # 80002774 <_ZN6ThreadC1Ev>
    80003f04:	00008797          	auipc	a5,0x8
    80003f08:	8ec78793          	addi	a5,a5,-1812 # 8000b7f0 <_ZTV7WorkerA+0x10>
    80003f0c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003f10:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003f14:	00005517          	auipc	a0,0x5
    80003f18:	3d450513          	addi	a0,a0,980 # 800092e8 <_ZZ16printIntegerTrapmE6digits+0x190>
    80003f1c:	00002097          	auipc	ra,0x2
    80003f20:	a60080e7          	jalr	-1440(ra) # 8000597c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003f24:	02000513          	li	a0,32
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	680080e7          	jalr	1664(ra) # 800025a8 <_Znwm>
    80003f30:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003f34:	fffff097          	auipc	ra,0xfffff
    80003f38:	840080e7          	jalr	-1984(ra) # 80002774 <_ZN6ThreadC1Ev>
    80003f3c:	00008797          	auipc	a5,0x8
    80003f40:	8dc78793          	addi	a5,a5,-1828 # 8000b818 <_ZTV7WorkerB+0x10>
    80003f44:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f48:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f4c:	00005517          	auipc	a0,0x5
    80003f50:	3b450513          	addi	a0,a0,948 # 80009300 <_ZZ16printIntegerTrapmE6digits+0x1a8>
    80003f54:	00002097          	auipc	ra,0x2
    80003f58:	a28080e7          	jalr	-1496(ra) # 8000597c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f5c:	02000513          	li	a0,32
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	648080e7          	jalr	1608(ra) # 800025a8 <_Znwm>
    80003f68:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f6c:	fffff097          	auipc	ra,0xfffff
    80003f70:	808080e7          	jalr	-2040(ra) # 80002774 <_ZN6ThreadC1Ev>
    80003f74:	00008797          	auipc	a5,0x8
    80003f78:	8cc78793          	addi	a5,a5,-1844 # 8000b840 <_ZTV7WorkerC+0x10>
    80003f7c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f80:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f84:	00005517          	auipc	a0,0x5
    80003f88:	39450513          	addi	a0,a0,916 # 80009318 <_ZZ16printIntegerTrapmE6digits+0x1c0>
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	9f0080e7          	jalr	-1552(ra) # 8000597c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f94:	02000513          	li	a0,32
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	610080e7          	jalr	1552(ra) # 800025a8 <_Znwm>
    80003fa0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	7d0080e7          	jalr	2000(ra) # 80002774 <_ZN6ThreadC1Ev>
    80003fac:	00008797          	auipc	a5,0x8
    80003fb0:	8bc78793          	addi	a5,a5,-1860 # 8000b868 <_ZTV7WorkerD+0x10>
    80003fb4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003fb8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003fbc:	00005517          	auipc	a0,0x5
    80003fc0:	37450513          	addi	a0,a0,884 # 80009330 <_ZZ16printIntegerTrapmE6digits+0x1d8>
    80003fc4:	00002097          	auipc	ra,0x2
    80003fc8:	9b8080e7          	jalr	-1608(ra) # 8000597c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003fcc:	00000493          	li	s1,0
    80003fd0:	00300793          	li	a5,3
    80003fd4:	0297c663          	blt	a5,s1,80004000 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003fd8:	00349793          	slli	a5,s1,0x3
    80003fdc:	fe040713          	addi	a4,s0,-32
    80003fe0:	00f707b3          	add	a5,a4,a5
    80003fe4:	fe07b503          	ld	a0,-32(a5)
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	708080e7          	jalr	1800(ra) # 800026f0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003ff0:	0014849b          	addiw	s1,s1,1
    80003ff4:	fddff06f          	j	80003fd0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	72c080e7          	jalr	1836(ra) # 80002724 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004000:	00008797          	auipc	a5,0x8
    80004004:	ac07c783          	lbu	a5,-1344(a5) # 8000bac0 <_ZL9finishedA>
    80004008:	fe0788e3          	beqz	a5,80003ff8 <_Z20Threads_CPP_API_testv+0x124>
    8000400c:	00008797          	auipc	a5,0x8
    80004010:	ab57c783          	lbu	a5,-1355(a5) # 8000bac1 <_ZL9finishedB>
    80004014:	fe0782e3          	beqz	a5,80003ff8 <_Z20Threads_CPP_API_testv+0x124>
    80004018:	00008797          	auipc	a5,0x8
    8000401c:	aaa7c783          	lbu	a5,-1366(a5) # 8000bac2 <_ZL9finishedC>
    80004020:	fc078ce3          	beqz	a5,80003ff8 <_Z20Threads_CPP_API_testv+0x124>
    80004024:	00008797          	auipc	a5,0x8
    80004028:	a9f7c783          	lbu	a5,-1377(a5) # 8000bac3 <_ZL9finishedD>
    8000402c:	fc0786e3          	beqz	a5,80003ff8 <_Z20Threads_CPP_API_testv+0x124>
    80004030:	fc040493          	addi	s1,s0,-64
    80004034:	0080006f          	j	8000403c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004038:	00848493          	addi	s1,s1,8
    8000403c:	fe040793          	addi	a5,s0,-32
    80004040:	08f48663          	beq	s1,a5,800040cc <_Z20Threads_CPP_API_testv+0x1f8>
    80004044:	0004b503          	ld	a0,0(s1)
    80004048:	fe0508e3          	beqz	a0,80004038 <_Z20Threads_CPP_API_testv+0x164>
    8000404c:	00053783          	ld	a5,0(a0)
    80004050:	0087b783          	ld	a5,8(a5)
    80004054:	000780e7          	jalr	a5
    80004058:	fe1ff06f          	j	80004038 <_Z20Threads_CPP_API_testv+0x164>
    8000405c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004060:	00048513          	mv	a0,s1
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	5a4080e7          	jalr	1444(ra) # 80002608 <_ZdlPv>
    8000406c:	00090513          	mv	a0,s2
    80004070:	00009097          	auipc	ra,0x9
    80004074:	b68080e7          	jalr	-1176(ra) # 8000cbd8 <_Unwind_Resume>
    80004078:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000407c:	00048513          	mv	a0,s1
    80004080:	ffffe097          	auipc	ra,0xffffe
    80004084:	588080e7          	jalr	1416(ra) # 80002608 <_ZdlPv>
    80004088:	00090513          	mv	a0,s2
    8000408c:	00009097          	auipc	ra,0x9
    80004090:	b4c080e7          	jalr	-1204(ra) # 8000cbd8 <_Unwind_Resume>
    80004094:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004098:	00048513          	mv	a0,s1
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	56c080e7          	jalr	1388(ra) # 80002608 <_ZdlPv>
    800040a4:	00090513          	mv	a0,s2
    800040a8:	00009097          	auipc	ra,0x9
    800040ac:	b30080e7          	jalr	-1232(ra) # 8000cbd8 <_Unwind_Resume>
    800040b0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800040b4:	00048513          	mv	a0,s1
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	550080e7          	jalr	1360(ra) # 80002608 <_ZdlPv>
    800040c0:	00090513          	mv	a0,s2
    800040c4:	00009097          	auipc	ra,0x9
    800040c8:	b14080e7          	jalr	-1260(ra) # 8000cbd8 <_Unwind_Resume>
}
    800040cc:	03813083          	ld	ra,56(sp)
    800040d0:	03013403          	ld	s0,48(sp)
    800040d4:	02813483          	ld	s1,40(sp)
    800040d8:	02013903          	ld	s2,32(sp)
    800040dc:	04010113          	addi	sp,sp,64
    800040e0:	00008067          	ret

00000000800040e4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00113423          	sd	ra,8(sp)
    800040ec:	00813023          	sd	s0,0(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00007797          	auipc	a5,0x7
    800040f8:	6fc78793          	addi	a5,a5,1788 # 8000b7f0 <_ZTV7WorkerA+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	424080e7          	jalr	1060(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004108:	00813083          	ld	ra,8(sp)
    8000410c:	00013403          	ld	s0,0(sp)
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <_ZN7WorkerAD0Ev>:
    80004118:	fe010113          	addi	sp,sp,-32
    8000411c:	00113c23          	sd	ra,24(sp)
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	02010413          	addi	s0,sp,32
    8000412c:	00050493          	mv	s1,a0
    80004130:	00007797          	auipc	a5,0x7
    80004134:	6c078793          	addi	a5,a5,1728 # 8000b7f0 <_ZTV7WorkerA+0x10>
    80004138:	00f53023          	sd	a5,0(a0)
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	3e8080e7          	jalr	1000(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004144:	00048513          	mv	a0,s1
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	4c0080e7          	jalr	1216(ra) # 80002608 <_ZdlPv>
    80004150:	01813083          	ld	ra,24(sp)
    80004154:	01013403          	ld	s0,16(sp)
    80004158:	00813483          	ld	s1,8(sp)
    8000415c:	02010113          	addi	sp,sp,32
    80004160:	00008067          	ret

0000000080004164 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00113423          	sd	ra,8(sp)
    8000416c:	00813023          	sd	s0,0(sp)
    80004170:	01010413          	addi	s0,sp,16
    80004174:	00007797          	auipc	a5,0x7
    80004178:	6a478793          	addi	a5,a5,1700 # 8000b818 <_ZTV7WorkerB+0x10>
    8000417c:	00f53023          	sd	a5,0(a0)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	3a4080e7          	jalr	932(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004188:	00813083          	ld	ra,8(sp)
    8000418c:	00013403          	ld	s0,0(sp)
    80004190:	01010113          	addi	sp,sp,16
    80004194:	00008067          	ret

0000000080004198 <_ZN7WorkerBD0Ev>:
    80004198:	fe010113          	addi	sp,sp,-32
    8000419c:	00113c23          	sd	ra,24(sp)
    800041a0:	00813823          	sd	s0,16(sp)
    800041a4:	00913423          	sd	s1,8(sp)
    800041a8:	02010413          	addi	s0,sp,32
    800041ac:	00050493          	mv	s1,a0
    800041b0:	00007797          	auipc	a5,0x7
    800041b4:	66878793          	addi	a5,a5,1640 # 8000b818 <_ZTV7WorkerB+0x10>
    800041b8:	00f53023          	sd	a5,0(a0)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	368080e7          	jalr	872(ra) # 80002524 <_ZN6ThreadD1Ev>
    800041c4:	00048513          	mv	a0,s1
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	440080e7          	jalr	1088(ra) # 80002608 <_ZdlPv>
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	02010113          	addi	sp,sp,32
    800041e0:	00008067          	ret

00000000800041e4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041e4:	ff010113          	addi	sp,sp,-16
    800041e8:	00113423          	sd	ra,8(sp)
    800041ec:	00813023          	sd	s0,0(sp)
    800041f0:	01010413          	addi	s0,sp,16
    800041f4:	00007797          	auipc	a5,0x7
    800041f8:	64c78793          	addi	a5,a5,1612 # 8000b840 <_ZTV7WorkerC+0x10>
    800041fc:	00f53023          	sd	a5,0(a0)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	324080e7          	jalr	804(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004208:	00813083          	ld	ra,8(sp)
    8000420c:	00013403          	ld	s0,0(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <_ZN7WorkerCD0Ev>:
    80004218:	fe010113          	addi	sp,sp,-32
    8000421c:	00113c23          	sd	ra,24(sp)
    80004220:	00813823          	sd	s0,16(sp)
    80004224:	00913423          	sd	s1,8(sp)
    80004228:	02010413          	addi	s0,sp,32
    8000422c:	00050493          	mv	s1,a0
    80004230:	00007797          	auipc	a5,0x7
    80004234:	61078793          	addi	a5,a5,1552 # 8000b840 <_ZTV7WorkerC+0x10>
    80004238:	00f53023          	sd	a5,0(a0)
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	2e8080e7          	jalr	744(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004244:	00048513          	mv	a0,s1
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	3c0080e7          	jalr	960(ra) # 80002608 <_ZdlPv>
    80004250:	01813083          	ld	ra,24(sp)
    80004254:	01013403          	ld	s0,16(sp)
    80004258:	00813483          	ld	s1,8(sp)
    8000425c:	02010113          	addi	sp,sp,32
    80004260:	00008067          	ret

0000000080004264 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00113423          	sd	ra,8(sp)
    8000426c:	00813023          	sd	s0,0(sp)
    80004270:	01010413          	addi	s0,sp,16
    80004274:	00007797          	auipc	a5,0x7
    80004278:	5f478793          	addi	a5,a5,1524 # 8000b868 <_ZTV7WorkerD+0x10>
    8000427c:	00f53023          	sd	a5,0(a0)
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	2a4080e7          	jalr	676(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004288:	00813083          	ld	ra,8(sp)
    8000428c:	00013403          	ld	s0,0(sp)
    80004290:	01010113          	addi	sp,sp,16
    80004294:	00008067          	ret

0000000080004298 <_ZN7WorkerDD0Ev>:
    80004298:	fe010113          	addi	sp,sp,-32
    8000429c:	00113c23          	sd	ra,24(sp)
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00913423          	sd	s1,8(sp)
    800042a8:	02010413          	addi	s0,sp,32
    800042ac:	00050493          	mv	s1,a0
    800042b0:	00007797          	auipc	a5,0x7
    800042b4:	5b878793          	addi	a5,a5,1464 # 8000b868 <_ZTV7WorkerD+0x10>
    800042b8:	00f53023          	sd	a5,0(a0)
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	268080e7          	jalr	616(ra) # 80002524 <_ZN6ThreadD1Ev>
    800042c4:	00048513          	mv	a0,s1
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	340080e7          	jalr	832(ra) # 80002608 <_ZdlPv>
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	01013403          	ld	s0,16(sp)
    800042d8:	00813483          	ld	s1,8(sp)
    800042dc:	02010113          	addi	sp,sp,32
    800042e0:	00008067          	ret

00000000800042e4 <_ZN7WorkerA3runEv>:
    void run() override {
    800042e4:	ff010113          	addi	sp,sp,-16
    800042e8:	00113423          	sd	ra,8(sp)
    800042ec:	00813023          	sd	s0,0(sp)
    800042f0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800042f4:	00000593          	li	a1,0
    800042f8:	fffff097          	auipc	ra,0xfffff
    800042fc:	774080e7          	jalr	1908(ra) # 80003a6c <_ZN7WorkerA11workerBodyAEPv>
    }
    80004300:	00813083          	ld	ra,8(sp)
    80004304:	00013403          	ld	s0,0(sp)
    80004308:	01010113          	addi	sp,sp,16
    8000430c:	00008067          	ret

0000000080004310 <_ZN7WorkerB3runEv>:
    void run() override {
    80004310:	ff010113          	addi	sp,sp,-16
    80004314:	00113423          	sd	ra,8(sp)
    80004318:	00813023          	sd	s0,0(sp)
    8000431c:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004320:	00000593          	li	a1,0
    80004324:	00000097          	auipc	ra,0x0
    80004328:	814080e7          	jalr	-2028(ra) # 80003b38 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000432c:	00813083          	ld	ra,8(sp)
    80004330:	00013403          	ld	s0,0(sp)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <_ZN7WorkerC3runEv>:
    void run() override {
    8000433c:	ff010113          	addi	sp,sp,-16
    80004340:	00113423          	sd	ra,8(sp)
    80004344:	00813023          	sd	s0,0(sp)
    80004348:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000434c:	00000593          	li	a1,0
    80004350:	00000097          	auipc	ra,0x0
    80004354:	8bc080e7          	jalr	-1860(ra) # 80003c0c <_ZN7WorkerC11workerBodyCEPv>
    }
    80004358:	00813083          	ld	ra,8(sp)
    8000435c:	00013403          	ld	s0,0(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_ZN7WorkerD3runEv>:
    void run() override {
    80004368:	ff010113          	addi	sp,sp,-16
    8000436c:	00113423          	sd	ra,8(sp)
    80004370:	00813023          	sd	s0,0(sp)
    80004374:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004378:	00000593          	li	a1,0
    8000437c:	00000097          	auipc	ra,0x0
    80004380:	a10080e7          	jalr	-1520(ra) # 80003d8c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004384:	00813083          	ld	ra,8(sp)
    80004388:	00013403          	ld	s0,0(sp)
    8000438c:	01010113          	addi	sp,sp,16
    80004390:	00008067          	ret

0000000080004394 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004394:	f8010113          	addi	sp,sp,-128
    80004398:	06113c23          	sd	ra,120(sp)
    8000439c:	06813823          	sd	s0,112(sp)
    800043a0:	06913423          	sd	s1,104(sp)
    800043a4:	07213023          	sd	s2,96(sp)
    800043a8:	05313c23          	sd	s3,88(sp)
    800043ac:	05413823          	sd	s4,80(sp)
    800043b0:	05513423          	sd	s5,72(sp)
    800043b4:	05613023          	sd	s6,64(sp)
    800043b8:	03713c23          	sd	s7,56(sp)
    800043bc:	03813823          	sd	s8,48(sp)
    800043c0:	03913423          	sd	s9,40(sp)
    800043c4:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800043c8:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800043cc:	00005517          	auipc	a0,0x5
    800043d0:	d9c50513          	addi	a0,a0,-612 # 80009168 <_ZZ16printIntegerTrapmE6digits+0x10>
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	5a8080e7          	jalr	1448(ra) # 8000597c <_Z11printStringPKc>
    getString(input, 30);
    800043dc:	01e00593          	li	a1,30
    800043e0:	f8040493          	addi	s1,s0,-128
    800043e4:	00048513          	mv	a0,s1
    800043e8:	00001097          	auipc	ra,0x1
    800043ec:	61c080e7          	jalr	1564(ra) # 80005a04 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043f0:	00048513          	mv	a0,s1
    800043f4:	00001097          	auipc	ra,0x1
    800043f8:	6e8080e7          	jalr	1768(ra) # 80005adc <_Z11stringToIntPKc>
    800043fc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004400:	00005517          	auipc	a0,0x5
    80004404:	d8850513          	addi	a0,a0,-632 # 80009188 <_ZZ16printIntegerTrapmE6digits+0x30>
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	574080e7          	jalr	1396(ra) # 8000597c <_Z11printStringPKc>
    getString(input, 30);
    80004410:	01e00593          	li	a1,30
    80004414:	00048513          	mv	a0,s1
    80004418:	00001097          	auipc	ra,0x1
    8000441c:	5ec080e7          	jalr	1516(ra) # 80005a04 <_Z9getStringPci>
    n = stringToInt(input);
    80004420:	00048513          	mv	a0,s1
    80004424:	00001097          	auipc	ra,0x1
    80004428:	6b8080e7          	jalr	1720(ra) # 80005adc <_Z11stringToIntPKc>
    8000442c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004430:	00005517          	auipc	a0,0x5
    80004434:	d7850513          	addi	a0,a0,-648 # 800091a8 <_ZZ16printIntegerTrapmE6digits+0x50>
    80004438:	00001097          	auipc	ra,0x1
    8000443c:	544080e7          	jalr	1348(ra) # 8000597c <_Z11printStringPKc>
    printInt(threadNum);
    80004440:	00000613          	li	a2,0
    80004444:	00a00593          	li	a1,10
    80004448:	00098513          	mv	a0,s3
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	6e0080e7          	jalr	1760(ra) # 80005b2c <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004454:	00005517          	auipc	a0,0x5
    80004458:	d6c50513          	addi	a0,a0,-660 # 800091c0 <_ZZ16printIntegerTrapmE6digits+0x68>
    8000445c:	00001097          	auipc	ra,0x1
    80004460:	520080e7          	jalr	1312(ra) # 8000597c <_Z11printStringPKc>
    printInt(n);
    80004464:	00000613          	li	a2,0
    80004468:	00a00593          	li	a1,10
    8000446c:	00048513          	mv	a0,s1
    80004470:	00001097          	auipc	ra,0x1
    80004474:	6bc080e7          	jalr	1724(ra) # 80005b2c <_Z8printIntiii>
    printString(".\n");
    80004478:	00005517          	auipc	a0,0x5
    8000447c:	d6050513          	addi	a0,a0,-672 # 800091d8 <_ZZ16printIntegerTrapmE6digits+0x80>
    80004480:	00001097          	auipc	ra,0x1
    80004484:	4fc080e7          	jalr	1276(ra) # 8000597c <_Z11printStringPKc>
    if (threadNum > n) {
    80004488:	0334c463          	blt	s1,s3,800044b0 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000448c:	03305c63          	blez	s3,800044c4 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004490:	03800513          	li	a0,56
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	114080e7          	jalr	276(ra) # 800025a8 <_Znwm>
    8000449c:	00050a93          	mv	s5,a0
    800044a0:	00048593          	mv	a1,s1
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	7a8080e7          	jalr	1960(ra) # 80005c4c <_ZN9BufferCPPC1Ei>
    800044ac:	0300006f          	j	800044dc <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	d3050513          	addi	a0,a0,-720 # 800091e0 <_ZZ16printIntegerTrapmE6digits+0x88>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	4c4080e7          	jalr	1220(ra) # 8000597c <_Z11printStringPKc>
        return;
    800044c0:	0140006f          	j	800044d4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800044c4:	00005517          	auipc	a0,0x5
    800044c8:	d5c50513          	addi	a0,a0,-676 # 80009220 <_ZZ16printIntegerTrapmE6digits+0xc8>
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	4b0080e7          	jalr	1200(ra) # 8000597c <_Z11printStringPKc>
        return;
    800044d4:	000c0113          	mv	sp,s8
    800044d8:	2140006f          	j	800046ec <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044dc:	01000513          	li	a0,16
    800044e0:	ffffe097          	auipc	ra,0xffffe
    800044e4:	0c8080e7          	jalr	200(ra) # 800025a8 <_Znwm>
    800044e8:	00050913          	mv	s2,a0
    800044ec:	00000593          	li	a1,0
    800044f0:	ffffe097          	auipc	ra,0xffffe
    800044f4:	2bc080e7          	jalr	700(ra) # 800027ac <_ZN9SemaphoreC1Ej>
    800044f8:	00007797          	auipc	a5,0x7
    800044fc:	5d27bc23          	sd	s2,1496(a5) # 8000bad0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004500:	00399793          	slli	a5,s3,0x3
    80004504:	00f78793          	addi	a5,a5,15
    80004508:	ff07f793          	andi	a5,a5,-16
    8000450c:	40f10133          	sub	sp,sp,a5
    80004510:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004514:	0019871b          	addiw	a4,s3,1
    80004518:	00171793          	slli	a5,a4,0x1
    8000451c:	00e787b3          	add	a5,a5,a4
    80004520:	00379793          	slli	a5,a5,0x3
    80004524:	00f78793          	addi	a5,a5,15
    80004528:	ff07f793          	andi	a5,a5,-16
    8000452c:	40f10133          	sub	sp,sp,a5
    80004530:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004534:	00199493          	slli	s1,s3,0x1
    80004538:	013484b3          	add	s1,s1,s3
    8000453c:	00349493          	slli	s1,s1,0x3
    80004540:	009b04b3          	add	s1,s6,s1
    80004544:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004548:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000454c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004550:	02800513          	li	a0,40
    80004554:	ffffe097          	auipc	ra,0xffffe
    80004558:	054080e7          	jalr	84(ra) # 800025a8 <_Znwm>
    8000455c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	214080e7          	jalr	532(ra) # 80002774 <_ZN6ThreadC1Ev>
    80004568:	00007797          	auipc	a5,0x7
    8000456c:	37878793          	addi	a5,a5,888 # 8000b8e0 <_ZTV8Consumer+0x10>
    80004570:	00fbb023          	sd	a5,0(s7)
    80004574:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004578:	000b8513          	mv	a0,s7
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	174080e7          	jalr	372(ra) # 800026f0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004584:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004588:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000458c:	00007797          	auipc	a5,0x7
    80004590:	5447b783          	ld	a5,1348(a5) # 8000bad0 <_ZL10waitForAll>
    80004594:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004598:	02800513          	li	a0,40
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	00c080e7          	jalr	12(ra) # 800025a8 <_Znwm>
    800045a4:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800045a8:	ffffe097          	auipc	ra,0xffffe
    800045ac:	1cc080e7          	jalr	460(ra) # 80002774 <_ZN6ThreadC1Ev>
    800045b0:	00007797          	auipc	a5,0x7
    800045b4:	2e078793          	addi	a5,a5,736 # 8000b890 <_ZTV16ProducerKeyborad+0x10>
    800045b8:	00f4b023          	sd	a5,0(s1)
    800045bc:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800045c0:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800045c4:	00048513          	mv	a0,s1
    800045c8:	ffffe097          	auipc	ra,0xffffe
    800045cc:	128080e7          	jalr	296(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045d0:	00100913          	li	s2,1
    800045d4:	0300006f          	j	80004604 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800045d8:	00007797          	auipc	a5,0x7
    800045dc:	2e078793          	addi	a5,a5,736 # 8000b8b8 <_ZTV8Producer+0x10>
    800045e0:	00fcb023          	sd	a5,0(s9)
    800045e4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045e8:	00391793          	slli	a5,s2,0x3
    800045ec:	00fa07b3          	add	a5,s4,a5
    800045f0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800045f4:	000c8513          	mv	a0,s9
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	0f8080e7          	jalr	248(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004600:	0019091b          	addiw	s2,s2,1
    80004604:	05395263          	bge	s2,s3,80004648 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004608:	00191493          	slli	s1,s2,0x1
    8000460c:	012484b3          	add	s1,s1,s2
    80004610:	00349493          	slli	s1,s1,0x3
    80004614:	009b04b3          	add	s1,s6,s1
    80004618:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    8000461c:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004620:	00007797          	auipc	a5,0x7
    80004624:	4b07b783          	ld	a5,1200(a5) # 8000bad0 <_ZL10waitForAll>
    80004628:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    8000462c:	02800513          	li	a0,40
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	f78080e7          	jalr	-136(ra) # 800025a8 <_Znwm>
    80004638:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000463c:	ffffe097          	auipc	ra,0xffffe
    80004640:	138080e7          	jalr	312(ra) # 80002774 <_ZN6ThreadC1Ev>
    80004644:	f95ff06f          	j	800045d8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004648:	ffffe097          	auipc	ra,0xffffe
    8000464c:	0dc080e7          	jalr	220(ra) # 80002724 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004650:	00000493          	li	s1,0
    80004654:	0099ce63          	blt	s3,s1,80004670 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004658:	00007517          	auipc	a0,0x7
    8000465c:	47853503          	ld	a0,1144(a0) # 8000bad0 <_ZL10waitForAll>
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	184080e7          	jalr	388(ra) # 800027e4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004668:	0014849b          	addiw	s1,s1,1
    8000466c:	fe9ff06f          	j	80004654 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004670:	00007517          	auipc	a0,0x7
    80004674:	46053503          	ld	a0,1120(a0) # 8000bad0 <_ZL10waitForAll>
    80004678:	00050863          	beqz	a0,80004688 <_Z20testConsumerProducerv+0x2f4>
    8000467c:	00053783          	ld	a5,0(a0)
    80004680:	0087b783          	ld	a5,8(a5)
    80004684:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004688:	00000493          	li	s1,0
    8000468c:	0080006f          	j	80004694 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004690:	0014849b          	addiw	s1,s1,1
    80004694:	0334d263          	bge	s1,s3,800046b8 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004698:	00349793          	slli	a5,s1,0x3
    8000469c:	00fa07b3          	add	a5,s4,a5
    800046a0:	0007b503          	ld	a0,0(a5)
    800046a4:	fe0506e3          	beqz	a0,80004690 <_Z20testConsumerProducerv+0x2fc>
    800046a8:	00053783          	ld	a5,0(a0)
    800046ac:	0087b783          	ld	a5,8(a5)
    800046b0:	000780e7          	jalr	a5
    800046b4:	fddff06f          	j	80004690 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800046b8:	000b8a63          	beqz	s7,800046cc <_Z20testConsumerProducerv+0x338>
    800046bc:	000bb783          	ld	a5,0(s7)
    800046c0:	0087b783          	ld	a5,8(a5)
    800046c4:	000b8513          	mv	a0,s7
    800046c8:	000780e7          	jalr	a5
    delete buffer;
    800046cc:	000a8e63          	beqz	s5,800046e8 <_Z20testConsumerProducerv+0x354>
    800046d0:	000a8513          	mv	a0,s5
    800046d4:	00002097          	auipc	ra,0x2
    800046d8:	870080e7          	jalr	-1936(ra) # 80005f44 <_ZN9BufferCPPD1Ev>
    800046dc:	000a8513          	mv	a0,s5
    800046e0:	ffffe097          	auipc	ra,0xffffe
    800046e4:	f28080e7          	jalr	-216(ra) # 80002608 <_ZdlPv>
    800046e8:	000c0113          	mv	sp,s8
}
    800046ec:	f8040113          	addi	sp,s0,-128
    800046f0:	07813083          	ld	ra,120(sp)
    800046f4:	07013403          	ld	s0,112(sp)
    800046f8:	06813483          	ld	s1,104(sp)
    800046fc:	06013903          	ld	s2,96(sp)
    80004700:	05813983          	ld	s3,88(sp)
    80004704:	05013a03          	ld	s4,80(sp)
    80004708:	04813a83          	ld	s5,72(sp)
    8000470c:	04013b03          	ld	s6,64(sp)
    80004710:	03813b83          	ld	s7,56(sp)
    80004714:	03013c03          	ld	s8,48(sp)
    80004718:	02813c83          	ld	s9,40(sp)
    8000471c:	08010113          	addi	sp,sp,128
    80004720:	00008067          	ret
    80004724:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004728:	000a8513          	mv	a0,s5
    8000472c:	ffffe097          	auipc	ra,0xffffe
    80004730:	edc080e7          	jalr	-292(ra) # 80002608 <_ZdlPv>
    80004734:	00048513          	mv	a0,s1
    80004738:	00008097          	auipc	ra,0x8
    8000473c:	4a0080e7          	jalr	1184(ra) # 8000cbd8 <_Unwind_Resume>
    80004740:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004744:	00090513          	mv	a0,s2
    80004748:	ffffe097          	auipc	ra,0xffffe
    8000474c:	ec0080e7          	jalr	-320(ra) # 80002608 <_ZdlPv>
    80004750:	00048513          	mv	a0,s1
    80004754:	00008097          	auipc	ra,0x8
    80004758:	484080e7          	jalr	1156(ra) # 8000cbd8 <_Unwind_Resume>
    8000475c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004760:	000b8513          	mv	a0,s7
    80004764:	ffffe097          	auipc	ra,0xffffe
    80004768:	ea4080e7          	jalr	-348(ra) # 80002608 <_ZdlPv>
    8000476c:	00048513          	mv	a0,s1
    80004770:	00008097          	auipc	ra,0x8
    80004774:	468080e7          	jalr	1128(ra) # 8000cbd8 <_Unwind_Resume>
    80004778:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000477c:	00048513          	mv	a0,s1
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	e88080e7          	jalr	-376(ra) # 80002608 <_ZdlPv>
    80004788:	00090513          	mv	a0,s2
    8000478c:	00008097          	auipc	ra,0x8
    80004790:	44c080e7          	jalr	1100(ra) # 8000cbd8 <_Unwind_Resume>
    80004794:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004798:	000c8513          	mv	a0,s9
    8000479c:	ffffe097          	auipc	ra,0xffffe
    800047a0:	e6c080e7          	jalr	-404(ra) # 80002608 <_ZdlPv>
    800047a4:	00048513          	mv	a0,s1
    800047a8:	00008097          	auipc	ra,0x8
    800047ac:	430080e7          	jalr	1072(ra) # 8000cbd8 <_Unwind_Resume>

00000000800047b0 <_ZN8Consumer3runEv>:
    void run() override {
    800047b0:	fd010113          	addi	sp,sp,-48
    800047b4:	02113423          	sd	ra,40(sp)
    800047b8:	02813023          	sd	s0,32(sp)
    800047bc:	00913c23          	sd	s1,24(sp)
    800047c0:	01213823          	sd	s2,16(sp)
    800047c4:	01313423          	sd	s3,8(sp)
    800047c8:	03010413          	addi	s0,sp,48
    800047cc:	00050913          	mv	s2,a0
        int i = 0;
    800047d0:	00000993          	li	s3,0
    800047d4:	0100006f          	j	800047e4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800047d8:	00a00513          	li	a0,10
    800047dc:	ffffe097          	auipc	ra,0xffffe
    800047e0:	0e4080e7          	jalr	228(ra) # 800028c0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047e4:	00007797          	auipc	a5,0x7
    800047e8:	2e47a783          	lw	a5,740(a5) # 8000bac8 <_ZL9threadEnd>
    800047ec:	04079a63          	bnez	a5,80004840 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047f0:	02093783          	ld	a5,32(s2)
    800047f4:	0087b503          	ld	a0,8(a5)
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	638080e7          	jalr	1592(ra) # 80005e30 <_ZN9BufferCPP3getEv>
            i++;
    80004800:	0019849b          	addiw	s1,s3,1
    80004804:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004808:	0ff57513          	andi	a0,a0,255
    8000480c:	ffffe097          	auipc	ra,0xffffe
    80004810:	0b4080e7          	jalr	180(ra) # 800028c0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004814:	05000793          	li	a5,80
    80004818:	02f4e4bb          	remw	s1,s1,a5
    8000481c:	fc0494e3          	bnez	s1,800047e4 <_ZN8Consumer3runEv+0x34>
    80004820:	fb9ff06f          	j	800047d8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004824:	02093783          	ld	a5,32(s2)
    80004828:	0087b503          	ld	a0,8(a5)
    8000482c:	00001097          	auipc	ra,0x1
    80004830:	604080e7          	jalr	1540(ra) # 80005e30 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004834:	0ff57513          	andi	a0,a0,255
    80004838:	ffffe097          	auipc	ra,0xffffe
    8000483c:	088080e7          	jalr	136(ra) # 800028c0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004840:	02093783          	ld	a5,32(s2)
    80004844:	0087b503          	ld	a0,8(a5)
    80004848:	00001097          	auipc	ra,0x1
    8000484c:	674080e7          	jalr	1652(ra) # 80005ebc <_ZN9BufferCPP6getCntEv>
    80004850:	fca04ae3          	bgtz	a0,80004824 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004854:	02093783          	ld	a5,32(s2)
    80004858:	0107b503          	ld	a0,16(a5)
    8000485c:	ffffe097          	auipc	ra,0xffffe
    80004860:	fb4080e7          	jalr	-76(ra) # 80002810 <_ZN9Semaphore6signalEv>
    }
    80004864:	02813083          	ld	ra,40(sp)
    80004868:	02013403          	ld	s0,32(sp)
    8000486c:	01813483          	ld	s1,24(sp)
    80004870:	01013903          	ld	s2,16(sp)
    80004874:	00813983          	ld	s3,8(sp)
    80004878:	03010113          	addi	sp,sp,48
    8000487c:	00008067          	ret

0000000080004880 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004880:	ff010113          	addi	sp,sp,-16
    80004884:	00113423          	sd	ra,8(sp)
    80004888:	00813023          	sd	s0,0(sp)
    8000488c:	01010413          	addi	s0,sp,16
    80004890:	00007797          	auipc	a5,0x7
    80004894:	05078793          	addi	a5,a5,80 # 8000b8e0 <_ZTV8Consumer+0x10>
    80004898:	00f53023          	sd	a5,0(a0)
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	c88080e7          	jalr	-888(ra) # 80002524 <_ZN6ThreadD1Ev>
    800048a4:	00813083          	ld	ra,8(sp)
    800048a8:	00013403          	ld	s0,0(sp)
    800048ac:	01010113          	addi	sp,sp,16
    800048b0:	00008067          	ret

00000000800048b4 <_ZN8ConsumerD0Ev>:
    800048b4:	fe010113          	addi	sp,sp,-32
    800048b8:	00113c23          	sd	ra,24(sp)
    800048bc:	00813823          	sd	s0,16(sp)
    800048c0:	00913423          	sd	s1,8(sp)
    800048c4:	02010413          	addi	s0,sp,32
    800048c8:	00050493          	mv	s1,a0
    800048cc:	00007797          	auipc	a5,0x7
    800048d0:	01478793          	addi	a5,a5,20 # 8000b8e0 <_ZTV8Consumer+0x10>
    800048d4:	00f53023          	sd	a5,0(a0)
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	c4c080e7          	jalr	-948(ra) # 80002524 <_ZN6ThreadD1Ev>
    800048e0:	00048513          	mv	a0,s1
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	d24080e7          	jalr	-732(ra) # 80002608 <_ZdlPv>
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	00813483          	ld	s1,8(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004900:	ff010113          	addi	sp,sp,-16
    80004904:	00113423          	sd	ra,8(sp)
    80004908:	00813023          	sd	s0,0(sp)
    8000490c:	01010413          	addi	s0,sp,16
    80004910:	00007797          	auipc	a5,0x7
    80004914:	f8078793          	addi	a5,a5,-128 # 8000b890 <_ZTV16ProducerKeyborad+0x10>
    80004918:	00f53023          	sd	a5,0(a0)
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	c08080e7          	jalr	-1016(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004924:	00813083          	ld	ra,8(sp)
    80004928:	00013403          	ld	s0,0(sp)
    8000492c:	01010113          	addi	sp,sp,16
    80004930:	00008067          	ret

0000000080004934 <_ZN16ProducerKeyboradD0Ev>:
    80004934:	fe010113          	addi	sp,sp,-32
    80004938:	00113c23          	sd	ra,24(sp)
    8000493c:	00813823          	sd	s0,16(sp)
    80004940:	00913423          	sd	s1,8(sp)
    80004944:	02010413          	addi	s0,sp,32
    80004948:	00050493          	mv	s1,a0
    8000494c:	00007797          	auipc	a5,0x7
    80004950:	f4478793          	addi	a5,a5,-188 # 8000b890 <_ZTV16ProducerKeyborad+0x10>
    80004954:	00f53023          	sd	a5,0(a0)
    80004958:	ffffe097          	auipc	ra,0xffffe
    8000495c:	bcc080e7          	jalr	-1076(ra) # 80002524 <_ZN6ThreadD1Ev>
    80004960:	00048513          	mv	a0,s1
    80004964:	ffffe097          	auipc	ra,0xffffe
    80004968:	ca4080e7          	jalr	-860(ra) # 80002608 <_ZdlPv>
    8000496c:	01813083          	ld	ra,24(sp)
    80004970:	01013403          	ld	s0,16(sp)
    80004974:	00813483          	ld	s1,8(sp)
    80004978:	02010113          	addi	sp,sp,32
    8000497c:	00008067          	ret

0000000080004980 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004980:	ff010113          	addi	sp,sp,-16
    80004984:	00113423          	sd	ra,8(sp)
    80004988:	00813023          	sd	s0,0(sp)
    8000498c:	01010413          	addi	s0,sp,16
    80004990:	00007797          	auipc	a5,0x7
    80004994:	f2878793          	addi	a5,a5,-216 # 8000b8b8 <_ZTV8Producer+0x10>
    80004998:	00f53023          	sd	a5,0(a0)
    8000499c:	ffffe097          	auipc	ra,0xffffe
    800049a0:	b88080e7          	jalr	-1144(ra) # 80002524 <_ZN6ThreadD1Ev>
    800049a4:	00813083          	ld	ra,8(sp)
    800049a8:	00013403          	ld	s0,0(sp)
    800049ac:	01010113          	addi	sp,sp,16
    800049b0:	00008067          	ret

00000000800049b4 <_ZN8ProducerD0Ev>:
    800049b4:	fe010113          	addi	sp,sp,-32
    800049b8:	00113c23          	sd	ra,24(sp)
    800049bc:	00813823          	sd	s0,16(sp)
    800049c0:	00913423          	sd	s1,8(sp)
    800049c4:	02010413          	addi	s0,sp,32
    800049c8:	00050493          	mv	s1,a0
    800049cc:	00007797          	auipc	a5,0x7
    800049d0:	eec78793          	addi	a5,a5,-276 # 8000b8b8 <_ZTV8Producer+0x10>
    800049d4:	00f53023          	sd	a5,0(a0)
    800049d8:	ffffe097          	auipc	ra,0xffffe
    800049dc:	b4c080e7          	jalr	-1204(ra) # 80002524 <_ZN6ThreadD1Ev>
    800049e0:	00048513          	mv	a0,s1
    800049e4:	ffffe097          	auipc	ra,0xffffe
    800049e8:	c24080e7          	jalr	-988(ra) # 80002608 <_ZdlPv>
    800049ec:	01813083          	ld	ra,24(sp)
    800049f0:	01013403          	ld	s0,16(sp)
    800049f4:	00813483          	ld	s1,8(sp)
    800049f8:	02010113          	addi	sp,sp,32
    800049fc:	00008067          	ret

0000000080004a00 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00113c23          	sd	ra,24(sp)
    80004a08:	00813823          	sd	s0,16(sp)
    80004a0c:	00913423          	sd	s1,8(sp)
    80004a10:	02010413          	addi	s0,sp,32
    80004a14:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	aec080e7          	jalr	-1300(ra) # 80001504 <_Z4getcv>
    80004a20:	0005059b          	sext.w	a1,a0
    80004a24:	01b00793          	li	a5,27
    80004a28:	00f58c63          	beq	a1,a5,80004a40 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004a2c:	0204b783          	ld	a5,32(s1)
    80004a30:	0087b503          	ld	a0,8(a5)
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	36c080e7          	jalr	876(ra) # 80005da0 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a3c:	fddff06f          	j	80004a18 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a40:	00100793          	li	a5,1
    80004a44:	00007717          	auipc	a4,0x7
    80004a48:	08f72223          	sw	a5,132(a4) # 8000bac8 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a4c:	0204b783          	ld	a5,32(s1)
    80004a50:	02100593          	li	a1,33
    80004a54:	0087b503          	ld	a0,8(a5)
    80004a58:	00001097          	auipc	ra,0x1
    80004a5c:	348080e7          	jalr	840(ra) # 80005da0 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a60:	0204b783          	ld	a5,32(s1)
    80004a64:	0107b503          	ld	a0,16(a5)
    80004a68:	ffffe097          	auipc	ra,0xffffe
    80004a6c:	da8080e7          	jalr	-600(ra) # 80002810 <_ZN9Semaphore6signalEv>
    }
    80004a70:	01813083          	ld	ra,24(sp)
    80004a74:	01013403          	ld	s0,16(sp)
    80004a78:	00813483          	ld	s1,8(sp)
    80004a7c:	02010113          	addi	sp,sp,32
    80004a80:	00008067          	ret

0000000080004a84 <_ZN8Producer3runEv>:
    void run() override {
    80004a84:	fe010113          	addi	sp,sp,-32
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00813823          	sd	s0,16(sp)
    80004a90:	00913423          	sd	s1,8(sp)
    80004a94:	01213023          	sd	s2,0(sp)
    80004a98:	02010413          	addi	s0,sp,32
    80004a9c:	00050493          	mv	s1,a0
        int i = 0;
    80004aa0:	00000913          	li	s2,0
        while (!threadEnd) {
    80004aa4:	00007797          	auipc	a5,0x7
    80004aa8:	0247a783          	lw	a5,36(a5) # 8000bac8 <_ZL9threadEnd>
    80004aac:	04079263          	bnez	a5,80004af0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004ab0:	0204b783          	ld	a5,32(s1)
    80004ab4:	0007a583          	lw	a1,0(a5)
    80004ab8:	0305859b          	addiw	a1,a1,48
    80004abc:	0087b503          	ld	a0,8(a5)
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	2e0080e7          	jalr	736(ra) # 80005da0 <_ZN9BufferCPP3putEi>
            i++;
    80004ac8:	0019071b          	addiw	a4,s2,1
    80004acc:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ad0:	0204b783          	ld	a5,32(s1)
    80004ad4:	0007a783          	lw	a5,0(a5)
    80004ad8:	00e787bb          	addw	a5,a5,a4
    80004adc:	00500513          	li	a0,5
    80004ae0:	02a7e53b          	remw	a0,a5,a0
    80004ae4:	ffffe097          	auipc	ra,0xffffe
    80004ae8:	c68080e7          	jalr	-920(ra) # 8000274c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004aec:	fb9ff06f          	j	80004aa4 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004af0:	0204b783          	ld	a5,32(s1)
    80004af4:	0107b503          	ld	a0,16(a5)
    80004af8:	ffffe097          	auipc	ra,0xffffe
    80004afc:	d18080e7          	jalr	-744(ra) # 80002810 <_ZN9Semaphore6signalEv>
    }
    80004b00:	01813083          	ld	ra,24(sp)
    80004b04:	01013403          	ld	s0,16(sp)
    80004b08:	00813483          	ld	s1,8(sp)
    80004b0c:	00013903          	ld	s2,0(sp)
    80004b10:	02010113          	addi	sp,sp,32
    80004b14:	00008067          	ret

0000000080004b18 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004b18:	fe010113          	addi	sp,sp,-32
    80004b1c:	00113c23          	sd	ra,24(sp)
    80004b20:	00813823          	sd	s0,16(sp)
    80004b24:	00913423          	sd	s1,8(sp)
    80004b28:	01213023          	sd	s2,0(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004b34:	00100793          	li	a5,1
    80004b38:	02a7f863          	bgeu	a5,a0,80004b68 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004b3c:	00a00793          	li	a5,10
    80004b40:	02f577b3          	remu	a5,a0,a5
    80004b44:	02078e63          	beqz	a5,80004b80 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004b48:	fff48513          	addi	a0,s1,-1
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	fcc080e7          	jalr	-52(ra) # 80004b18 <_ZL9fibonaccim>
    80004b54:	00050913          	mv	s2,a0
    80004b58:	ffe48513          	addi	a0,s1,-2
    80004b5c:	00000097          	auipc	ra,0x0
    80004b60:	fbc080e7          	jalr	-68(ra) # 80004b18 <_ZL9fibonaccim>
    80004b64:	00a90533          	add	a0,s2,a0
}
    80004b68:	01813083          	ld	ra,24(sp)
    80004b6c:	01013403          	ld	s0,16(sp)
    80004b70:	00813483          	ld	s1,8(sp)
    80004b74:	00013903          	ld	s2,0(sp)
    80004b78:	02010113          	addi	sp,sp,32
    80004b7c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b80:	ffffc097          	auipc	ra,0xffffc
    80004b84:	754080e7          	jalr	1876(ra) # 800012d4 <_Z15thread_dispatchv>
    80004b88:	fc1ff06f          	j	80004b48 <_ZL9fibonaccim+0x30>

0000000080004b8c <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b8c:	fe010113          	addi	sp,sp,-32
    80004b90:	00113c23          	sd	ra,24(sp)
    80004b94:	00813823          	sd	s0,16(sp)
    80004b98:	00913423          	sd	s1,8(sp)
    80004b9c:	01213023          	sd	s2,0(sp)
    80004ba0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004ba4:	00a00493          	li	s1,10
    80004ba8:	0400006f          	j	80004be8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004bac:	00004517          	auipc	a0,0x4
    80004bb0:	70450513          	addi	a0,a0,1796 # 800092b0 <_ZZ16printIntegerTrapmE6digits+0x158>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	dc8080e7          	jalr	-568(ra) # 8000597c <_Z11printStringPKc>
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00a00593          	li	a1,10
    80004bc4:	00048513          	mv	a0,s1
    80004bc8:	00001097          	auipc	ra,0x1
    80004bcc:	f64080e7          	jalr	-156(ra) # 80005b2c <_Z8printIntiii>
    80004bd0:	00005517          	auipc	a0,0x5
    80004bd4:	8e050513          	addi	a0,a0,-1824 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	da4080e7          	jalr	-604(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004be0:	0014849b          	addiw	s1,s1,1
    80004be4:	0ff4f493          	andi	s1,s1,255
    80004be8:	00c00793          	li	a5,12
    80004bec:	fc97f0e3          	bgeu	a5,s1,80004bac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004bf0:	00004517          	auipc	a0,0x4
    80004bf4:	6c850513          	addi	a0,a0,1736 # 800092b8 <_ZZ16printIntegerTrapmE6digits+0x160>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	d84080e7          	jalr	-636(ra) # 8000597c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004c00:	00500313          	li	t1,5
    thread_dispatch();
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	6d0080e7          	jalr	1744(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004c0c:	01000513          	li	a0,16
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	f08080e7          	jalr	-248(ra) # 80004b18 <_ZL9fibonaccim>
    80004c18:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004c1c:	00004517          	auipc	a0,0x4
    80004c20:	6ac50513          	addi	a0,a0,1708 # 800092c8 <_ZZ16printIntegerTrapmE6digits+0x170>
    80004c24:	00001097          	auipc	ra,0x1
    80004c28:	d58080e7          	jalr	-680(ra) # 8000597c <_Z11printStringPKc>
    80004c2c:	00000613          	li	a2,0
    80004c30:	00a00593          	li	a1,10
    80004c34:	0009051b          	sext.w	a0,s2
    80004c38:	00001097          	auipc	ra,0x1
    80004c3c:	ef4080e7          	jalr	-268(ra) # 80005b2c <_Z8printIntiii>
    80004c40:	00005517          	auipc	a0,0x5
    80004c44:	87050513          	addi	a0,a0,-1936 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004c48:	00001097          	auipc	ra,0x1
    80004c4c:	d34080e7          	jalr	-716(ra) # 8000597c <_Z11printStringPKc>
    80004c50:	0400006f          	j	80004c90 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c54:	00004517          	auipc	a0,0x4
    80004c58:	65c50513          	addi	a0,a0,1628 # 800092b0 <_ZZ16printIntegerTrapmE6digits+0x158>
    80004c5c:	00001097          	auipc	ra,0x1
    80004c60:	d20080e7          	jalr	-736(ra) # 8000597c <_Z11printStringPKc>
    80004c64:	00000613          	li	a2,0
    80004c68:	00a00593          	li	a1,10
    80004c6c:	00048513          	mv	a0,s1
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	ebc080e7          	jalr	-324(ra) # 80005b2c <_Z8printIntiii>
    80004c78:	00005517          	auipc	a0,0x5
    80004c7c:	83850513          	addi	a0,a0,-1992 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004c80:	00001097          	auipc	ra,0x1
    80004c84:	cfc080e7          	jalr	-772(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c88:	0014849b          	addiw	s1,s1,1
    80004c8c:	0ff4f493          	andi	s1,s1,255
    80004c90:	00f00793          	li	a5,15
    80004c94:	fc97f0e3          	bgeu	a5,s1,80004c54 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	64050513          	addi	a0,a0,1600 # 800092d8 <_ZZ16printIntegerTrapmE6digits+0x180>
    80004ca0:	00001097          	auipc	ra,0x1
    80004ca4:	cdc080e7          	jalr	-804(ra) # 8000597c <_Z11printStringPKc>
    finishedD = true;
    80004ca8:	00100793          	li	a5,1
    80004cac:	00007717          	auipc	a4,0x7
    80004cb0:	e2f70623          	sb	a5,-468(a4) # 8000bad8 <_ZL9finishedD>
    thread_dispatch();
    80004cb4:	ffffc097          	auipc	ra,0xffffc
    80004cb8:	620080e7          	jalr	1568(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80004cbc:	01813083          	ld	ra,24(sp)
    80004cc0:	01013403          	ld	s0,16(sp)
    80004cc4:	00813483          	ld	s1,8(sp)
    80004cc8:	00013903          	ld	s2,0(sp)
    80004ccc:	02010113          	addi	sp,sp,32
    80004cd0:	00008067          	ret

0000000080004cd4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004cd4:	fe010113          	addi	sp,sp,-32
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	00813823          	sd	s0,16(sp)
    80004ce0:	00913423          	sd	s1,8(sp)
    80004ce4:	01213023          	sd	s2,0(sp)
    80004ce8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004cec:	00000493          	li	s1,0
    80004cf0:	0400006f          	j	80004d30 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004cf4:	00004517          	auipc	a0,0x4
    80004cf8:	58c50513          	addi	a0,a0,1420 # 80009280 <_ZZ16printIntegerTrapmE6digits+0x128>
    80004cfc:	00001097          	auipc	ra,0x1
    80004d00:	c80080e7          	jalr	-896(ra) # 8000597c <_Z11printStringPKc>
    80004d04:	00000613          	li	a2,0
    80004d08:	00a00593          	li	a1,10
    80004d0c:	00048513          	mv	a0,s1
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	e1c080e7          	jalr	-484(ra) # 80005b2c <_Z8printIntiii>
    80004d18:	00004517          	auipc	a0,0x4
    80004d1c:	79850513          	addi	a0,a0,1944 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004d20:	00001097          	auipc	ra,0x1
    80004d24:	c5c080e7          	jalr	-932(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004d28:	0014849b          	addiw	s1,s1,1
    80004d2c:	0ff4f493          	andi	s1,s1,255
    80004d30:	00200793          	li	a5,2
    80004d34:	fc97f0e3          	bgeu	a5,s1,80004cf4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004d38:	00004517          	auipc	a0,0x4
    80004d3c:	55050513          	addi	a0,a0,1360 # 80009288 <_ZZ16printIntegerTrapmE6digits+0x130>
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	c3c080e7          	jalr	-964(ra) # 8000597c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004d48:	00700313          	li	t1,7
    thread_dispatch();
    80004d4c:	ffffc097          	auipc	ra,0xffffc
    80004d50:	588080e7          	jalr	1416(ra) # 800012d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d54:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d58:	00004517          	auipc	a0,0x4
    80004d5c:	54050513          	addi	a0,a0,1344 # 80009298 <_ZZ16printIntegerTrapmE6digits+0x140>
    80004d60:	00001097          	auipc	ra,0x1
    80004d64:	c1c080e7          	jalr	-996(ra) # 8000597c <_Z11printStringPKc>
    80004d68:	00000613          	li	a2,0
    80004d6c:	00a00593          	li	a1,10
    80004d70:	0009051b          	sext.w	a0,s2
    80004d74:	00001097          	auipc	ra,0x1
    80004d78:	db8080e7          	jalr	-584(ra) # 80005b2c <_Z8printIntiii>
    80004d7c:	00004517          	auipc	a0,0x4
    80004d80:	73450513          	addi	a0,a0,1844 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	bf8080e7          	jalr	-1032(ra) # 8000597c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d8c:	00c00513          	li	a0,12
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	d88080e7          	jalr	-632(ra) # 80004b18 <_ZL9fibonaccim>
    80004d98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d9c:	00004517          	auipc	a0,0x4
    80004da0:	50450513          	addi	a0,a0,1284 # 800092a0 <_ZZ16printIntegerTrapmE6digits+0x148>
    80004da4:	00001097          	auipc	ra,0x1
    80004da8:	bd8080e7          	jalr	-1064(ra) # 8000597c <_Z11printStringPKc>
    80004dac:	00000613          	li	a2,0
    80004db0:	00a00593          	li	a1,10
    80004db4:	0009051b          	sext.w	a0,s2
    80004db8:	00001097          	auipc	ra,0x1
    80004dbc:	d74080e7          	jalr	-652(ra) # 80005b2c <_Z8printIntiii>
    80004dc0:	00004517          	auipc	a0,0x4
    80004dc4:	6f050513          	addi	a0,a0,1776 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	bb4080e7          	jalr	-1100(ra) # 8000597c <_Z11printStringPKc>
    80004dd0:	0400006f          	j	80004e10 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004dd4:	00004517          	auipc	a0,0x4
    80004dd8:	4ac50513          	addi	a0,a0,1196 # 80009280 <_ZZ16printIntegerTrapmE6digits+0x128>
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	ba0080e7          	jalr	-1120(ra) # 8000597c <_Z11printStringPKc>
    80004de4:	00000613          	li	a2,0
    80004de8:	00a00593          	li	a1,10
    80004dec:	00048513          	mv	a0,s1
    80004df0:	00001097          	auipc	ra,0x1
    80004df4:	d3c080e7          	jalr	-708(ra) # 80005b2c <_Z8printIntiii>
    80004df8:	00004517          	auipc	a0,0x4
    80004dfc:	6b850513          	addi	a0,a0,1720 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004e00:	00001097          	auipc	ra,0x1
    80004e04:	b7c080e7          	jalr	-1156(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004e08:	0014849b          	addiw	s1,s1,1
    80004e0c:	0ff4f493          	andi	s1,s1,255
    80004e10:	00500793          	li	a5,5
    80004e14:	fc97f0e3          	bgeu	a5,s1,80004dd4 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    80004e18:	00004517          	auipc	a0,0x4
    80004e1c:	53050513          	addi	a0,a0,1328 # 80009348 <_ZZ16printIntegerTrapmE6digits+0x1f0>
    80004e20:	00001097          	auipc	ra,0x1
    80004e24:	b5c080e7          	jalr	-1188(ra) # 8000597c <_Z11printStringPKc>
    finishedC = true;
    80004e28:	00100793          	li	a5,1
    80004e2c:	00007717          	auipc	a4,0x7
    80004e30:	caf706a3          	sb	a5,-851(a4) # 8000bad9 <_ZL9finishedC>
    thread_dispatch();
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	4a0080e7          	jalr	1184(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80004e3c:	01813083          	ld	ra,24(sp)
    80004e40:	01013403          	ld	s0,16(sp)
    80004e44:	00813483          	ld	s1,8(sp)
    80004e48:	00013903          	ld	s2,0(sp)
    80004e4c:	02010113          	addi	sp,sp,32
    80004e50:	00008067          	ret

0000000080004e54 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e54:	fe010113          	addi	sp,sp,-32
    80004e58:	00113c23          	sd	ra,24(sp)
    80004e5c:	00813823          	sd	s0,16(sp)
    80004e60:	00913423          	sd	s1,8(sp)
    80004e64:	01213023          	sd	s2,0(sp)
    80004e68:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e6c:	00000913          	li	s2,0
    80004e70:	0380006f          	j	80004ea8 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004e74:	ffffc097          	auipc	ra,0xffffc
    80004e78:	460080e7          	jalr	1120(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e7c:	00148493          	addi	s1,s1,1
    80004e80:	000027b7          	lui	a5,0x2
    80004e84:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e88:	0097ee63          	bltu	a5,s1,80004ea4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e8c:	00000713          	li	a4,0
    80004e90:	000077b7          	lui	a5,0x7
    80004e94:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e98:	fce7eee3          	bltu	a5,a4,80004e74 <_ZL11workerBodyBPv+0x20>
    80004e9c:	00170713          	addi	a4,a4,1
    80004ea0:	ff1ff06f          	j	80004e90 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004ea4:	00190913          	addi	s2,s2,1
    80004ea8:	00f00793          	li	a5,15
    80004eac:	0527e063          	bltu	a5,s2,80004eec <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	3b850513          	addi	a0,a0,952 # 80009268 <_ZZ16printIntegerTrapmE6digits+0x110>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	ac4080e7          	jalr	-1340(ra) # 8000597c <_Z11printStringPKc>
    80004ec0:	00000613          	li	a2,0
    80004ec4:	00a00593          	li	a1,10
    80004ec8:	0009051b          	sext.w	a0,s2
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	c60080e7          	jalr	-928(ra) # 80005b2c <_Z8printIntiii>
    80004ed4:	00004517          	auipc	a0,0x4
    80004ed8:	5dc50513          	addi	a0,a0,1500 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	aa0080e7          	jalr	-1376(ra) # 8000597c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ee4:	00000493          	li	s1,0
    80004ee8:	f99ff06f          	j	80004e80 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004eec:	00004517          	auipc	a0,0x4
    80004ef0:	38450513          	addi	a0,a0,900 # 80009270 <_ZZ16printIntegerTrapmE6digits+0x118>
    80004ef4:	00001097          	auipc	ra,0x1
    80004ef8:	a88080e7          	jalr	-1400(ra) # 8000597c <_Z11printStringPKc>
    finishedB = true;
    80004efc:	00100793          	li	a5,1
    80004f00:	00007717          	auipc	a4,0x7
    80004f04:	bcf70d23          	sb	a5,-1062(a4) # 8000bada <_ZL9finishedB>
    thread_dispatch();
    80004f08:	ffffc097          	auipc	ra,0xffffc
    80004f0c:	3cc080e7          	jalr	972(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80004f10:	01813083          	ld	ra,24(sp)
    80004f14:	01013403          	ld	s0,16(sp)
    80004f18:	00813483          	ld	s1,8(sp)
    80004f1c:	00013903          	ld	s2,0(sp)
    80004f20:	02010113          	addi	sp,sp,32
    80004f24:	00008067          	ret

0000000080004f28 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004f28:	fe010113          	addi	sp,sp,-32
    80004f2c:	00113c23          	sd	ra,24(sp)
    80004f30:	00813823          	sd	s0,16(sp)
    80004f34:	00913423          	sd	s1,8(sp)
    80004f38:	01213023          	sd	s2,0(sp)
    80004f3c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004f40:	00000913          	li	s2,0
    80004f44:	0380006f          	j	80004f7c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004f48:	ffffc097          	auipc	ra,0xffffc
    80004f4c:	38c080e7          	jalr	908(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f50:	00148493          	addi	s1,s1,1
    80004f54:	000027b7          	lui	a5,0x2
    80004f58:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f5c:	0097ee63          	bltu	a5,s1,80004f78 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f60:	00000713          	li	a4,0
    80004f64:	000077b7          	lui	a5,0x7
    80004f68:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f6c:	fce7eee3          	bltu	a5,a4,80004f48 <_ZL11workerBodyAPv+0x20>
    80004f70:	00170713          	addi	a4,a4,1
    80004f74:	ff1ff06f          	j	80004f64 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004f78:	00190913          	addi	s2,s2,1
    80004f7c:	00900793          	li	a5,9
    80004f80:	0527e063          	bltu	a5,s2,80004fc0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f84:	00004517          	auipc	a0,0x4
    80004f88:	2cc50513          	addi	a0,a0,716 # 80009250 <_ZZ16printIntegerTrapmE6digits+0xf8>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	9f0080e7          	jalr	-1552(ra) # 8000597c <_Z11printStringPKc>
    80004f94:	00000613          	li	a2,0
    80004f98:	00a00593          	li	a1,10
    80004f9c:	0009051b          	sext.w	a0,s2
    80004fa0:	00001097          	auipc	ra,0x1
    80004fa4:	b8c080e7          	jalr	-1140(ra) # 80005b2c <_Z8printIntiii>
    80004fa8:	00004517          	auipc	a0,0x4
    80004fac:	50850513          	addi	a0,a0,1288 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	9cc080e7          	jalr	-1588(ra) # 8000597c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004fb8:	00000493          	li	s1,0
    80004fbc:	f99ff06f          	j	80004f54 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	29850513          	addi	a0,a0,664 # 80009258 <_ZZ16printIntegerTrapmE6digits+0x100>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	9b4080e7          	jalr	-1612(ra) # 8000597c <_Z11printStringPKc>
    finishedA = true;
    80004fd0:	00100793          	li	a5,1
    80004fd4:	00007717          	auipc	a4,0x7
    80004fd8:	b0f703a3          	sb	a5,-1273(a4) # 8000badb <_ZL9finishedA>
}
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	00013903          	ld	s2,0(sp)
    80004fec:	02010113          	addi	sp,sp,32
    80004ff0:	00008067          	ret

0000000080004ff4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004ff4:	fd010113          	addi	sp,sp,-48
    80004ff8:	02113423          	sd	ra,40(sp)
    80004ffc:	02813023          	sd	s0,32(sp)
    80005000:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005004:	00000613          	li	a2,0
    80005008:	00000597          	auipc	a1,0x0
    8000500c:	f2058593          	addi	a1,a1,-224 # 80004f28 <_ZL11workerBodyAPv>
    80005010:	fd040513          	addi	a0,s0,-48
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	2e0080e7          	jalr	736(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000501c:	00004517          	auipc	a0,0x4
    80005020:	2cc50513          	addi	a0,a0,716 # 800092e8 <_ZZ16printIntegerTrapmE6digits+0x190>
    80005024:	00001097          	auipc	ra,0x1
    80005028:	958080e7          	jalr	-1704(ra) # 8000597c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000502c:	00000613          	li	a2,0
    80005030:	00000597          	auipc	a1,0x0
    80005034:	e2458593          	addi	a1,a1,-476 # 80004e54 <_ZL11workerBodyBPv>
    80005038:	fd840513          	addi	a0,s0,-40
    8000503c:	ffffc097          	auipc	ra,0xffffc
    80005040:	2b8080e7          	jalr	696(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005044:	00004517          	auipc	a0,0x4
    80005048:	2bc50513          	addi	a0,a0,700 # 80009300 <_ZZ16printIntegerTrapmE6digits+0x1a8>
    8000504c:	00001097          	auipc	ra,0x1
    80005050:	930080e7          	jalr	-1744(ra) # 8000597c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005054:	00000613          	li	a2,0
    80005058:	00000597          	auipc	a1,0x0
    8000505c:	c7c58593          	addi	a1,a1,-900 # 80004cd4 <_ZL11workerBodyCPv>
    80005060:	fe040513          	addi	a0,s0,-32
    80005064:	ffffc097          	auipc	ra,0xffffc
    80005068:	290080e7          	jalr	656(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000506c:	00004517          	auipc	a0,0x4
    80005070:	2ac50513          	addi	a0,a0,684 # 80009318 <_ZZ16printIntegerTrapmE6digits+0x1c0>
    80005074:	00001097          	auipc	ra,0x1
    80005078:	908080e7          	jalr	-1784(ra) # 8000597c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000507c:	00000613          	li	a2,0
    80005080:	00000597          	auipc	a1,0x0
    80005084:	b0c58593          	addi	a1,a1,-1268 # 80004b8c <_ZL11workerBodyDPv>
    80005088:	fe840513          	addi	a0,s0,-24
    8000508c:	ffffc097          	auipc	ra,0xffffc
    80005090:	268080e7          	jalr	616(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005094:	00004517          	auipc	a0,0x4
    80005098:	29c50513          	addi	a0,a0,668 # 80009330 <_ZZ16printIntegerTrapmE6digits+0x1d8>
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	8e0080e7          	jalr	-1824(ra) # 8000597c <_Z11printStringPKc>
    800050a4:	00c0006f          	j	800050b0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800050a8:	ffffc097          	auipc	ra,0xffffc
    800050ac:	22c080e7          	jalr	556(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800050b0:	00007797          	auipc	a5,0x7
    800050b4:	a2b7c783          	lbu	a5,-1493(a5) # 8000badb <_ZL9finishedA>
    800050b8:	fe0788e3          	beqz	a5,800050a8 <_Z18Threads_C_API_testv+0xb4>
    800050bc:	00007797          	auipc	a5,0x7
    800050c0:	a1e7c783          	lbu	a5,-1506(a5) # 8000bada <_ZL9finishedB>
    800050c4:	fe0782e3          	beqz	a5,800050a8 <_Z18Threads_C_API_testv+0xb4>
    800050c8:	00007797          	auipc	a5,0x7
    800050cc:	a117c783          	lbu	a5,-1519(a5) # 8000bad9 <_ZL9finishedC>
    800050d0:	fc078ce3          	beqz	a5,800050a8 <_Z18Threads_C_API_testv+0xb4>
    800050d4:	00007797          	auipc	a5,0x7
    800050d8:	a047c783          	lbu	a5,-1532(a5) # 8000bad8 <_ZL9finishedD>
    800050dc:	fc0786e3          	beqz	a5,800050a8 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800050e0:	02813083          	ld	ra,40(sp)
    800050e4:	02013403          	ld	s0,32(sp)
    800050e8:	03010113          	addi	sp,sp,48
    800050ec:	00008067          	ret

00000000800050f0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800050f0:	fd010113          	addi	sp,sp,-48
    800050f4:	02113423          	sd	ra,40(sp)
    800050f8:	02813023          	sd	s0,32(sp)
    800050fc:	00913c23          	sd	s1,24(sp)
    80005100:	01213823          	sd	s2,16(sp)
    80005104:	01313423          	sd	s3,8(sp)
    80005108:	03010413          	addi	s0,sp,48
    8000510c:	00050993          	mv	s3,a0
    80005110:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005114:	00000913          	li	s2,0
    80005118:	00c0006f          	j	80005124 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	608080e7          	jalr	1544(ra) # 80002724 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005124:	ffffc097          	auipc	ra,0xffffc
    80005128:	3e0080e7          	jalr	992(ra) # 80001504 <_Z4getcv>
    8000512c:	0005059b          	sext.w	a1,a0
    80005130:	01b00793          	li	a5,27
    80005134:	02f58a63          	beq	a1,a5,80005168 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005138:	0084b503          	ld	a0,8(s1)
    8000513c:	00001097          	auipc	ra,0x1
    80005140:	c64080e7          	jalr	-924(ra) # 80005da0 <_ZN9BufferCPP3putEi>
        i++;
    80005144:	0019071b          	addiw	a4,s2,1
    80005148:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000514c:	0004a683          	lw	a3,0(s1)
    80005150:	0026979b          	slliw	a5,a3,0x2
    80005154:	00d787bb          	addw	a5,a5,a3
    80005158:	0017979b          	slliw	a5,a5,0x1
    8000515c:	02f767bb          	remw	a5,a4,a5
    80005160:	fc0792e3          	bnez	a5,80005124 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005164:	fb9ff06f          	j	8000511c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005168:	00100793          	li	a5,1
    8000516c:	00007717          	auipc	a4,0x7
    80005170:	96f72a23          	sw	a5,-1676(a4) # 8000bae0 <_ZL9threadEnd>
    td->buffer->put('!');
    80005174:	0209b783          	ld	a5,32(s3)
    80005178:	02100593          	li	a1,33
    8000517c:	0087b503          	ld	a0,8(a5)
    80005180:	00001097          	auipc	ra,0x1
    80005184:	c20080e7          	jalr	-992(ra) # 80005da0 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005188:	0104b503          	ld	a0,16(s1)
    8000518c:	ffffd097          	auipc	ra,0xffffd
    80005190:	684080e7          	jalr	1668(ra) # 80002810 <_ZN9Semaphore6signalEv>
}
    80005194:	02813083          	ld	ra,40(sp)
    80005198:	02013403          	ld	s0,32(sp)
    8000519c:	01813483          	ld	s1,24(sp)
    800051a0:	01013903          	ld	s2,16(sp)
    800051a4:	00813983          	ld	s3,8(sp)
    800051a8:	03010113          	addi	sp,sp,48
    800051ac:	00008067          	ret

00000000800051b0 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800051b0:	fe010113          	addi	sp,sp,-32
    800051b4:	00113c23          	sd	ra,24(sp)
    800051b8:	00813823          	sd	s0,16(sp)
    800051bc:	00913423          	sd	s1,8(sp)
    800051c0:	01213023          	sd	s2,0(sp)
    800051c4:	02010413          	addi	s0,sp,32
    800051c8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800051cc:	00000913          	li	s2,0
    800051d0:	00c0006f          	j	800051dc <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	550080e7          	jalr	1360(ra) # 80002724 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800051dc:	00007797          	auipc	a5,0x7
    800051e0:	9047a783          	lw	a5,-1788(a5) # 8000bae0 <_ZL9threadEnd>
    800051e4:	02079e63          	bnez	a5,80005220 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800051e8:	0004a583          	lw	a1,0(s1)
    800051ec:	0305859b          	addiw	a1,a1,48
    800051f0:	0084b503          	ld	a0,8(s1)
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	bac080e7          	jalr	-1108(ra) # 80005da0 <_ZN9BufferCPP3putEi>
        i++;
    800051fc:	0019071b          	addiw	a4,s2,1
    80005200:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005204:	0004a683          	lw	a3,0(s1)
    80005208:	0026979b          	slliw	a5,a3,0x2
    8000520c:	00d787bb          	addw	a5,a5,a3
    80005210:	0017979b          	slliw	a5,a5,0x1
    80005214:	02f767bb          	remw	a5,a4,a5
    80005218:	fc0792e3          	bnez	a5,800051dc <_ZN12ProducerSync8producerEPv+0x2c>
    8000521c:	fb9ff06f          	j	800051d4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005220:	0104b503          	ld	a0,16(s1)
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	5ec080e7          	jalr	1516(ra) # 80002810 <_ZN9Semaphore6signalEv>
}
    8000522c:	01813083          	ld	ra,24(sp)
    80005230:	01013403          	ld	s0,16(sp)
    80005234:	00813483          	ld	s1,8(sp)
    80005238:	00013903          	ld	s2,0(sp)
    8000523c:	02010113          	addi	sp,sp,32
    80005240:	00008067          	ret

0000000080005244 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005244:	fd010113          	addi	sp,sp,-48
    80005248:	02113423          	sd	ra,40(sp)
    8000524c:	02813023          	sd	s0,32(sp)
    80005250:	00913c23          	sd	s1,24(sp)
    80005254:	01213823          	sd	s2,16(sp)
    80005258:	01313423          	sd	s3,8(sp)
    8000525c:	01413023          	sd	s4,0(sp)
    80005260:	03010413          	addi	s0,sp,48
    80005264:	00050993          	mv	s3,a0
    80005268:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000526c:	00000a13          	li	s4,0
    80005270:	01c0006f          	j	8000528c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005274:	ffffd097          	auipc	ra,0xffffd
    80005278:	4b0080e7          	jalr	1200(ra) # 80002724 <_ZN6Thread8dispatchEv>
    8000527c:	0500006f          	j	800052cc <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005280:	00a00513          	li	a0,10
    80005284:	ffffc097          	auipc	ra,0xffffc
    80005288:	2a8080e7          	jalr	680(ra) # 8000152c <_Z4putcc>
    while (!threadEnd) {
    8000528c:	00007797          	auipc	a5,0x7
    80005290:	8547a783          	lw	a5,-1964(a5) # 8000bae0 <_ZL9threadEnd>
    80005294:	06079263          	bnez	a5,800052f8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005298:	00893503          	ld	a0,8(s2)
    8000529c:	00001097          	auipc	ra,0x1
    800052a0:	b94080e7          	jalr	-1132(ra) # 80005e30 <_ZN9BufferCPP3getEv>
        i++;
    800052a4:	001a049b          	addiw	s1,s4,1
    800052a8:	00048a1b          	sext.w	s4,s1
        putc(key);
    800052ac:	0ff57513          	andi	a0,a0,255
    800052b0:	ffffc097          	auipc	ra,0xffffc
    800052b4:	27c080e7          	jalr	636(ra) # 8000152c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800052b8:	00092703          	lw	a4,0(s2)
    800052bc:	0027179b          	slliw	a5,a4,0x2
    800052c0:	00e787bb          	addw	a5,a5,a4
    800052c4:	02f4e7bb          	remw	a5,s1,a5
    800052c8:	fa0786e3          	beqz	a5,80005274 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800052cc:	05000793          	li	a5,80
    800052d0:	02f4e4bb          	remw	s1,s1,a5
    800052d4:	fa049ce3          	bnez	s1,8000528c <_ZN12ConsumerSync8consumerEPv+0x48>
    800052d8:	fa9ff06f          	j	80005280 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800052dc:	0209b783          	ld	a5,32(s3)
    800052e0:	0087b503          	ld	a0,8(a5)
    800052e4:	00001097          	auipc	ra,0x1
    800052e8:	b4c080e7          	jalr	-1204(ra) # 80005e30 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800052ec:	0ff57513          	andi	a0,a0,255
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	5d0080e7          	jalr	1488(ra) # 800028c0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800052f8:	0209b783          	ld	a5,32(s3)
    800052fc:	0087b503          	ld	a0,8(a5)
    80005300:	00001097          	auipc	ra,0x1
    80005304:	bbc080e7          	jalr	-1092(ra) # 80005ebc <_ZN9BufferCPP6getCntEv>
    80005308:	fca04ae3          	bgtz	a0,800052dc <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    8000530c:	01093503          	ld	a0,16(s2)
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	500080e7          	jalr	1280(ra) # 80002810 <_ZN9Semaphore6signalEv>
}
    80005318:	02813083          	ld	ra,40(sp)
    8000531c:	02013403          	ld	s0,32(sp)
    80005320:	01813483          	ld	s1,24(sp)
    80005324:	01013903          	ld	s2,16(sp)
    80005328:	00813983          	ld	s3,8(sp)
    8000532c:	00013a03          	ld	s4,0(sp)
    80005330:	03010113          	addi	sp,sp,48
    80005334:	00008067          	ret

0000000080005338 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005338:	f8010113          	addi	sp,sp,-128
    8000533c:	06113c23          	sd	ra,120(sp)
    80005340:	06813823          	sd	s0,112(sp)
    80005344:	06913423          	sd	s1,104(sp)
    80005348:	07213023          	sd	s2,96(sp)
    8000534c:	05313c23          	sd	s3,88(sp)
    80005350:	05413823          	sd	s4,80(sp)
    80005354:	05513423          	sd	s5,72(sp)
    80005358:	05613023          	sd	s6,64(sp)
    8000535c:	03713c23          	sd	s7,56(sp)
    80005360:	03813823          	sd	s8,48(sp)
    80005364:	03913423          	sd	s9,40(sp)
    80005368:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000536c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005370:	00004517          	auipc	a0,0x4
    80005374:	df850513          	addi	a0,a0,-520 # 80009168 <_ZZ16printIntegerTrapmE6digits+0x10>
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	604080e7          	jalr	1540(ra) # 8000597c <_Z11printStringPKc>
    getString(input, 30);
    80005380:	01e00593          	li	a1,30
    80005384:	f8040493          	addi	s1,s0,-128
    80005388:	00048513          	mv	a0,s1
    8000538c:	00000097          	auipc	ra,0x0
    80005390:	678080e7          	jalr	1656(ra) # 80005a04 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005394:	00048513          	mv	a0,s1
    80005398:	00000097          	auipc	ra,0x0
    8000539c:	744080e7          	jalr	1860(ra) # 80005adc <_Z11stringToIntPKc>
    800053a0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800053a4:	00004517          	auipc	a0,0x4
    800053a8:	de450513          	addi	a0,a0,-540 # 80009188 <_ZZ16printIntegerTrapmE6digits+0x30>
    800053ac:	00000097          	auipc	ra,0x0
    800053b0:	5d0080e7          	jalr	1488(ra) # 8000597c <_Z11printStringPKc>
    getString(input, 30);
    800053b4:	01e00593          	li	a1,30
    800053b8:	00048513          	mv	a0,s1
    800053bc:	00000097          	auipc	ra,0x0
    800053c0:	648080e7          	jalr	1608(ra) # 80005a04 <_Z9getStringPci>
    n = stringToInt(input);
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	714080e7          	jalr	1812(ra) # 80005adc <_Z11stringToIntPKc>
    800053d0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800053d4:	00004517          	auipc	a0,0x4
    800053d8:	dd450513          	addi	a0,a0,-556 # 800091a8 <_ZZ16printIntegerTrapmE6digits+0x50>
    800053dc:	00000097          	auipc	ra,0x0
    800053e0:	5a0080e7          	jalr	1440(ra) # 8000597c <_Z11printStringPKc>
    800053e4:	00000613          	li	a2,0
    800053e8:	00a00593          	li	a1,10
    800053ec:	00090513          	mv	a0,s2
    800053f0:	00000097          	auipc	ra,0x0
    800053f4:	73c080e7          	jalr	1852(ra) # 80005b2c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800053f8:	00004517          	auipc	a0,0x4
    800053fc:	dc850513          	addi	a0,a0,-568 # 800091c0 <_ZZ16printIntegerTrapmE6digits+0x68>
    80005400:	00000097          	auipc	ra,0x0
    80005404:	57c080e7          	jalr	1404(ra) # 8000597c <_Z11printStringPKc>
    80005408:	00000613          	li	a2,0
    8000540c:	00a00593          	li	a1,10
    80005410:	00048513          	mv	a0,s1
    80005414:	00000097          	auipc	ra,0x0
    80005418:	718080e7          	jalr	1816(ra) # 80005b2c <_Z8printIntiii>
    printString(".\n");
    8000541c:	00004517          	auipc	a0,0x4
    80005420:	dbc50513          	addi	a0,a0,-580 # 800091d8 <_ZZ16printIntegerTrapmE6digits+0x80>
    80005424:	00000097          	auipc	ra,0x0
    80005428:	558080e7          	jalr	1368(ra) # 8000597c <_Z11printStringPKc>
    if(threadNum > n) {
    8000542c:	0324c463          	blt	s1,s2,80005454 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005430:	03205c63          	blez	s2,80005468 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005434:	03800513          	li	a0,56
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	170080e7          	jalr	368(ra) # 800025a8 <_Znwm>
    80005440:	00050a93          	mv	s5,a0
    80005444:	00048593          	mv	a1,s1
    80005448:	00001097          	auipc	ra,0x1
    8000544c:	804080e7          	jalr	-2044(ra) # 80005c4c <_ZN9BufferCPPC1Ei>
    80005450:	0300006f          	j	80005480 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005454:	00004517          	auipc	a0,0x4
    80005458:	d8c50513          	addi	a0,a0,-628 # 800091e0 <_ZZ16printIntegerTrapmE6digits+0x88>
    8000545c:	00000097          	auipc	ra,0x0
    80005460:	520080e7          	jalr	1312(ra) # 8000597c <_Z11printStringPKc>
        return;
    80005464:	0140006f          	j	80005478 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005468:	00004517          	auipc	a0,0x4
    8000546c:	db850513          	addi	a0,a0,-584 # 80009220 <_ZZ16printIntegerTrapmE6digits+0xc8>
    80005470:	00000097          	auipc	ra,0x0
    80005474:	50c080e7          	jalr	1292(ra) # 8000597c <_Z11printStringPKc>
        return;
    80005478:	000b8113          	mv	sp,s7
    8000547c:	2380006f          	j	800056b4 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005480:	01000513          	li	a0,16
    80005484:	ffffd097          	auipc	ra,0xffffd
    80005488:	124080e7          	jalr	292(ra) # 800025a8 <_Znwm>
    8000548c:	00050493          	mv	s1,a0
    80005490:	00000593          	li	a1,0
    80005494:	ffffd097          	auipc	ra,0xffffd
    80005498:	318080e7          	jalr	792(ra) # 800027ac <_ZN9SemaphoreC1Ej>
    8000549c:	00006797          	auipc	a5,0x6
    800054a0:	6497b623          	sd	s1,1612(a5) # 8000bae8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800054a4:	00391793          	slli	a5,s2,0x3
    800054a8:	00f78793          	addi	a5,a5,15
    800054ac:	ff07f793          	andi	a5,a5,-16
    800054b0:	40f10133          	sub	sp,sp,a5
    800054b4:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800054b8:	0019071b          	addiw	a4,s2,1
    800054bc:	00171793          	slli	a5,a4,0x1
    800054c0:	00e787b3          	add	a5,a5,a4
    800054c4:	00379793          	slli	a5,a5,0x3
    800054c8:	00f78793          	addi	a5,a5,15
    800054cc:	ff07f793          	andi	a5,a5,-16
    800054d0:	40f10133          	sub	sp,sp,a5
    800054d4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800054d8:	00191c13          	slli	s8,s2,0x1
    800054dc:	012c07b3          	add	a5,s8,s2
    800054e0:	00379793          	slli	a5,a5,0x3
    800054e4:	00fa07b3          	add	a5,s4,a5
    800054e8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800054ec:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800054f0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800054f4:	02800513          	li	a0,40
    800054f8:	ffffd097          	auipc	ra,0xffffd
    800054fc:	0b0080e7          	jalr	176(ra) # 800025a8 <_Znwm>
    80005500:	00050b13          	mv	s6,a0
    80005504:	012c0c33          	add	s8,s8,s2
    80005508:	003c1c13          	slli	s8,s8,0x3
    8000550c:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	264080e7          	jalr	612(ra) # 80002774 <_ZN6ThreadC1Ev>
    80005518:	00006797          	auipc	a5,0x6
    8000551c:	44078793          	addi	a5,a5,1088 # 8000b958 <_ZTV12ConsumerSync+0x10>
    80005520:	00fb3023          	sd	a5,0(s6)
    80005524:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005528:	000b0513          	mv	a0,s6
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	1c4080e7          	jalr	452(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005534:	00000493          	li	s1,0
    80005538:	0380006f          	j	80005570 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000553c:	00006797          	auipc	a5,0x6
    80005540:	3f478793          	addi	a5,a5,1012 # 8000b930 <_ZTV12ProducerSync+0x10>
    80005544:	00fcb023          	sd	a5,0(s9)
    80005548:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000554c:	00349793          	slli	a5,s1,0x3
    80005550:	00f987b3          	add	a5,s3,a5
    80005554:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005558:	00349793          	slli	a5,s1,0x3
    8000555c:	00f987b3          	add	a5,s3,a5
    80005560:	0007b503          	ld	a0,0(a5)
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	18c080e7          	jalr	396(ra) # 800026f0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000556c:	0014849b          	addiw	s1,s1,1
    80005570:	0b24d063          	bge	s1,s2,80005610 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005574:	00149793          	slli	a5,s1,0x1
    80005578:	009787b3          	add	a5,a5,s1
    8000557c:	00379793          	slli	a5,a5,0x3
    80005580:	00fa07b3          	add	a5,s4,a5
    80005584:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005588:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000558c:	00006717          	auipc	a4,0x6
    80005590:	55c73703          	ld	a4,1372(a4) # 8000bae8 <_ZL10waitForAll>
    80005594:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005598:	02905863          	blez	s1,800055c8 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000559c:	02800513          	li	a0,40
    800055a0:	ffffd097          	auipc	ra,0xffffd
    800055a4:	008080e7          	jalr	8(ra) # 800025a8 <_Znwm>
    800055a8:	00050c93          	mv	s9,a0
    800055ac:	00149c13          	slli	s8,s1,0x1
    800055b0:	009c0c33          	add	s8,s8,s1
    800055b4:	003c1c13          	slli	s8,s8,0x3
    800055b8:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	1b8080e7          	jalr	440(ra) # 80002774 <_ZN6ThreadC1Ev>
    800055c4:	f79ff06f          	j	8000553c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800055c8:	02800513          	li	a0,40
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	fdc080e7          	jalr	-36(ra) # 800025a8 <_Znwm>
    800055d4:	00050c93          	mv	s9,a0
    800055d8:	00149c13          	slli	s8,s1,0x1
    800055dc:	009c0c33          	add	s8,s8,s1
    800055e0:	003c1c13          	slli	s8,s8,0x3
    800055e4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800055e8:	ffffd097          	auipc	ra,0xffffd
    800055ec:	18c080e7          	jalr	396(ra) # 80002774 <_ZN6ThreadC1Ev>
    800055f0:	00006797          	auipc	a5,0x6
    800055f4:	31878793          	addi	a5,a5,792 # 8000b908 <_ZTV16ProducerKeyboard+0x10>
    800055f8:	00fcb023          	sd	a5,0(s9)
    800055fc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005600:	00349793          	slli	a5,s1,0x3
    80005604:	00f987b3          	add	a5,s3,a5
    80005608:	0197b023          	sd	s9,0(a5)
    8000560c:	f4dff06f          	j	80005558 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005610:	ffffd097          	auipc	ra,0xffffd
    80005614:	114080e7          	jalr	276(ra) # 80002724 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005618:	00000493          	li	s1,0
    8000561c:	00994e63          	blt	s2,s1,80005638 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005620:	00006517          	auipc	a0,0x6
    80005624:	4c853503          	ld	a0,1224(a0) # 8000bae8 <_ZL10waitForAll>
    80005628:	ffffd097          	auipc	ra,0xffffd
    8000562c:	1bc080e7          	jalr	444(ra) # 800027e4 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005630:	0014849b          	addiw	s1,s1,1
    80005634:	fe9ff06f          	j	8000561c <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005638:	00000493          	li	s1,0
    8000563c:	0080006f          	j	80005644 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005640:	0014849b          	addiw	s1,s1,1
    80005644:	0324d263          	bge	s1,s2,80005668 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005648:	00349793          	slli	a5,s1,0x3
    8000564c:	00f987b3          	add	a5,s3,a5
    80005650:	0007b503          	ld	a0,0(a5)
    80005654:	fe0506e3          	beqz	a0,80005640 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005658:	00053783          	ld	a5,0(a0)
    8000565c:	0087b783          	ld	a5,8(a5)
    80005660:	000780e7          	jalr	a5
    80005664:	fddff06f          	j	80005640 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005668:	000b0a63          	beqz	s6,8000567c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000566c:	000b3783          	ld	a5,0(s6)
    80005670:	0087b783          	ld	a5,8(a5)
    80005674:	000b0513          	mv	a0,s6
    80005678:	000780e7          	jalr	a5
    delete waitForAll;
    8000567c:	00006517          	auipc	a0,0x6
    80005680:	46c53503          	ld	a0,1132(a0) # 8000bae8 <_ZL10waitForAll>
    80005684:	00050863          	beqz	a0,80005694 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005688:	00053783          	ld	a5,0(a0)
    8000568c:	0087b783          	ld	a5,8(a5)
    80005690:	000780e7          	jalr	a5
    delete buffer;
    80005694:	000a8e63          	beqz	s5,800056b0 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005698:	000a8513          	mv	a0,s5
    8000569c:	00001097          	auipc	ra,0x1
    800056a0:	8a8080e7          	jalr	-1880(ra) # 80005f44 <_ZN9BufferCPPD1Ev>
    800056a4:	000a8513          	mv	a0,s5
    800056a8:	ffffd097          	auipc	ra,0xffffd
    800056ac:	f60080e7          	jalr	-160(ra) # 80002608 <_ZdlPv>
    800056b0:	000b8113          	mv	sp,s7

}
    800056b4:	f8040113          	addi	sp,s0,-128
    800056b8:	07813083          	ld	ra,120(sp)
    800056bc:	07013403          	ld	s0,112(sp)
    800056c0:	06813483          	ld	s1,104(sp)
    800056c4:	06013903          	ld	s2,96(sp)
    800056c8:	05813983          	ld	s3,88(sp)
    800056cc:	05013a03          	ld	s4,80(sp)
    800056d0:	04813a83          	ld	s5,72(sp)
    800056d4:	04013b03          	ld	s6,64(sp)
    800056d8:	03813b83          	ld	s7,56(sp)
    800056dc:	03013c03          	ld	s8,48(sp)
    800056e0:	02813c83          	ld	s9,40(sp)
    800056e4:	08010113          	addi	sp,sp,128
    800056e8:	00008067          	ret
    800056ec:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800056f0:	000a8513          	mv	a0,s5
    800056f4:	ffffd097          	auipc	ra,0xffffd
    800056f8:	f14080e7          	jalr	-236(ra) # 80002608 <_ZdlPv>
    800056fc:	00048513          	mv	a0,s1
    80005700:	00007097          	auipc	ra,0x7
    80005704:	4d8080e7          	jalr	1240(ra) # 8000cbd8 <_Unwind_Resume>
    80005708:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    8000570c:	00048513          	mv	a0,s1
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	ef8080e7          	jalr	-264(ra) # 80002608 <_ZdlPv>
    80005718:	00090513          	mv	a0,s2
    8000571c:	00007097          	auipc	ra,0x7
    80005720:	4bc080e7          	jalr	1212(ra) # 8000cbd8 <_Unwind_Resume>
    80005724:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005728:	000b0513          	mv	a0,s6
    8000572c:	ffffd097          	auipc	ra,0xffffd
    80005730:	edc080e7          	jalr	-292(ra) # 80002608 <_ZdlPv>
    80005734:	00048513          	mv	a0,s1
    80005738:	00007097          	auipc	ra,0x7
    8000573c:	4a0080e7          	jalr	1184(ra) # 8000cbd8 <_Unwind_Resume>
    80005740:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005744:	000c8513          	mv	a0,s9
    80005748:	ffffd097          	auipc	ra,0xffffd
    8000574c:	ec0080e7          	jalr	-320(ra) # 80002608 <_ZdlPv>
    80005750:	00048513          	mv	a0,s1
    80005754:	00007097          	auipc	ra,0x7
    80005758:	484080e7          	jalr	1156(ra) # 8000cbd8 <_Unwind_Resume>
    8000575c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005760:	000c8513          	mv	a0,s9
    80005764:	ffffd097          	auipc	ra,0xffffd
    80005768:	ea4080e7          	jalr	-348(ra) # 80002608 <_ZdlPv>
    8000576c:	00048513          	mv	a0,s1
    80005770:	00007097          	auipc	ra,0x7
    80005774:	468080e7          	jalr	1128(ra) # 8000cbd8 <_Unwind_Resume>

0000000080005778 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005778:	ff010113          	addi	sp,sp,-16
    8000577c:	00113423          	sd	ra,8(sp)
    80005780:	00813023          	sd	s0,0(sp)
    80005784:	01010413          	addi	s0,sp,16
    80005788:	00006797          	auipc	a5,0x6
    8000578c:	1d078793          	addi	a5,a5,464 # 8000b958 <_ZTV12ConsumerSync+0x10>
    80005790:	00f53023          	sd	a5,0(a0)
    80005794:	ffffd097          	auipc	ra,0xffffd
    80005798:	d90080e7          	jalr	-624(ra) # 80002524 <_ZN6ThreadD1Ev>
    8000579c:	00813083          	ld	ra,8(sp)
    800057a0:	00013403          	ld	s0,0(sp)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret

00000000800057ac <_ZN12ConsumerSyncD0Ev>:
    800057ac:	fe010113          	addi	sp,sp,-32
    800057b0:	00113c23          	sd	ra,24(sp)
    800057b4:	00813823          	sd	s0,16(sp)
    800057b8:	00913423          	sd	s1,8(sp)
    800057bc:	02010413          	addi	s0,sp,32
    800057c0:	00050493          	mv	s1,a0
    800057c4:	00006797          	auipc	a5,0x6
    800057c8:	19478793          	addi	a5,a5,404 # 8000b958 <_ZTV12ConsumerSync+0x10>
    800057cc:	00f53023          	sd	a5,0(a0)
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	d54080e7          	jalr	-684(ra) # 80002524 <_ZN6ThreadD1Ev>
    800057d8:	00048513          	mv	a0,s1
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	e2c080e7          	jalr	-468(ra) # 80002608 <_ZdlPv>
    800057e4:	01813083          	ld	ra,24(sp)
    800057e8:	01013403          	ld	s0,16(sp)
    800057ec:	00813483          	ld	s1,8(sp)
    800057f0:	02010113          	addi	sp,sp,32
    800057f4:	00008067          	ret

00000000800057f8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800057f8:	ff010113          	addi	sp,sp,-16
    800057fc:	00113423          	sd	ra,8(sp)
    80005800:	00813023          	sd	s0,0(sp)
    80005804:	01010413          	addi	s0,sp,16
    80005808:	00006797          	auipc	a5,0x6
    8000580c:	12878793          	addi	a5,a5,296 # 8000b930 <_ZTV12ProducerSync+0x10>
    80005810:	00f53023          	sd	a5,0(a0)
    80005814:	ffffd097          	auipc	ra,0xffffd
    80005818:	d10080e7          	jalr	-752(ra) # 80002524 <_ZN6ThreadD1Ev>
    8000581c:	00813083          	ld	ra,8(sp)
    80005820:	00013403          	ld	s0,0(sp)
    80005824:	01010113          	addi	sp,sp,16
    80005828:	00008067          	ret

000000008000582c <_ZN12ProducerSyncD0Ev>:
    8000582c:	fe010113          	addi	sp,sp,-32
    80005830:	00113c23          	sd	ra,24(sp)
    80005834:	00813823          	sd	s0,16(sp)
    80005838:	00913423          	sd	s1,8(sp)
    8000583c:	02010413          	addi	s0,sp,32
    80005840:	00050493          	mv	s1,a0
    80005844:	00006797          	auipc	a5,0x6
    80005848:	0ec78793          	addi	a5,a5,236 # 8000b930 <_ZTV12ProducerSync+0x10>
    8000584c:	00f53023          	sd	a5,0(a0)
    80005850:	ffffd097          	auipc	ra,0xffffd
    80005854:	cd4080e7          	jalr	-812(ra) # 80002524 <_ZN6ThreadD1Ev>
    80005858:	00048513          	mv	a0,s1
    8000585c:	ffffd097          	auipc	ra,0xffffd
    80005860:	dac080e7          	jalr	-596(ra) # 80002608 <_ZdlPv>
    80005864:	01813083          	ld	ra,24(sp)
    80005868:	01013403          	ld	s0,16(sp)
    8000586c:	00813483          	ld	s1,8(sp)
    80005870:	02010113          	addi	sp,sp,32
    80005874:	00008067          	ret

0000000080005878 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005878:	ff010113          	addi	sp,sp,-16
    8000587c:	00113423          	sd	ra,8(sp)
    80005880:	00813023          	sd	s0,0(sp)
    80005884:	01010413          	addi	s0,sp,16
    80005888:	00006797          	auipc	a5,0x6
    8000588c:	08078793          	addi	a5,a5,128 # 8000b908 <_ZTV16ProducerKeyboard+0x10>
    80005890:	00f53023          	sd	a5,0(a0)
    80005894:	ffffd097          	auipc	ra,0xffffd
    80005898:	c90080e7          	jalr	-880(ra) # 80002524 <_ZN6ThreadD1Ev>
    8000589c:	00813083          	ld	ra,8(sp)
    800058a0:	00013403          	ld	s0,0(sp)
    800058a4:	01010113          	addi	sp,sp,16
    800058a8:	00008067          	ret

00000000800058ac <_ZN16ProducerKeyboardD0Ev>:
    800058ac:	fe010113          	addi	sp,sp,-32
    800058b0:	00113c23          	sd	ra,24(sp)
    800058b4:	00813823          	sd	s0,16(sp)
    800058b8:	00913423          	sd	s1,8(sp)
    800058bc:	02010413          	addi	s0,sp,32
    800058c0:	00050493          	mv	s1,a0
    800058c4:	00006797          	auipc	a5,0x6
    800058c8:	04478793          	addi	a5,a5,68 # 8000b908 <_ZTV16ProducerKeyboard+0x10>
    800058cc:	00f53023          	sd	a5,0(a0)
    800058d0:	ffffd097          	auipc	ra,0xffffd
    800058d4:	c54080e7          	jalr	-940(ra) # 80002524 <_ZN6ThreadD1Ev>
    800058d8:	00048513          	mv	a0,s1
    800058dc:	ffffd097          	auipc	ra,0xffffd
    800058e0:	d2c080e7          	jalr	-724(ra) # 80002608 <_ZdlPv>
    800058e4:	01813083          	ld	ra,24(sp)
    800058e8:	01013403          	ld	s0,16(sp)
    800058ec:	00813483          	ld	s1,8(sp)
    800058f0:	02010113          	addi	sp,sp,32
    800058f4:	00008067          	ret

00000000800058f8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800058f8:	ff010113          	addi	sp,sp,-16
    800058fc:	00113423          	sd	ra,8(sp)
    80005900:	00813023          	sd	s0,0(sp)
    80005904:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005908:	02053583          	ld	a1,32(a0)
    8000590c:	fffff097          	auipc	ra,0xfffff
    80005910:	7e4080e7          	jalr	2020(ra) # 800050f0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005914:	00813083          	ld	ra,8(sp)
    80005918:	00013403          	ld	s0,0(sp)
    8000591c:	01010113          	addi	sp,sp,16
    80005920:	00008067          	ret

0000000080005924 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005924:	ff010113          	addi	sp,sp,-16
    80005928:	00113423          	sd	ra,8(sp)
    8000592c:	00813023          	sd	s0,0(sp)
    80005930:	01010413          	addi	s0,sp,16
        producer(td);
    80005934:	02053583          	ld	a1,32(a0)
    80005938:	00000097          	auipc	ra,0x0
    8000593c:	878080e7          	jalr	-1928(ra) # 800051b0 <_ZN12ProducerSync8producerEPv>
    }
    80005940:	00813083          	ld	ra,8(sp)
    80005944:	00013403          	ld	s0,0(sp)
    80005948:	01010113          	addi	sp,sp,16
    8000594c:	00008067          	ret

0000000080005950 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005950:	ff010113          	addi	sp,sp,-16
    80005954:	00113423          	sd	ra,8(sp)
    80005958:	00813023          	sd	s0,0(sp)
    8000595c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005960:	02053583          	ld	a1,32(a0)
    80005964:	00000097          	auipc	ra,0x0
    80005968:	8e0080e7          	jalr	-1824(ra) # 80005244 <_ZN12ConsumerSync8consumerEPv>
    }
    8000596c:	00813083          	ld	ra,8(sp)
    80005970:	00013403          	ld	s0,0(sp)
    80005974:	01010113          	addi	sp,sp,16
    80005978:	00008067          	ret

000000008000597c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000597c:	fe010113          	addi	sp,sp,-32
    80005980:	00113c23          	sd	ra,24(sp)
    80005984:	00813823          	sd	s0,16(sp)
    80005988:	00913423          	sd	s1,8(sp)
    8000598c:	02010413          	addi	s0,sp,32
    80005990:	00050493          	mv	s1,a0
    LOCK();
    80005994:	00100613          	li	a2,1
    80005998:	00000593          	li	a1,0
    8000599c:	00006517          	auipc	a0,0x6
    800059a0:	15450513          	addi	a0,a0,340 # 8000baf0 <lockPrint>
    800059a4:	ffffc097          	auipc	ra,0xffffc
    800059a8:	898080e7          	jalr	-1896(ra) # 8000123c <copy_and_swap>
    800059ac:	00050863          	beqz	a0,800059bc <_Z11printStringPKc+0x40>
    800059b0:	ffffc097          	auipc	ra,0xffffc
    800059b4:	924080e7          	jalr	-1756(ra) # 800012d4 <_Z15thread_dispatchv>
    800059b8:	fddff06f          	j	80005994 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800059bc:	0004c503          	lbu	a0,0(s1)
    800059c0:	00050a63          	beqz	a0,800059d4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800059c4:	ffffc097          	auipc	ra,0xffffc
    800059c8:	b68080e7          	jalr	-1176(ra) # 8000152c <_Z4putcc>
        string++;
    800059cc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800059d0:	fedff06f          	j	800059bc <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800059d4:	00000613          	li	a2,0
    800059d8:	00100593          	li	a1,1
    800059dc:	00006517          	auipc	a0,0x6
    800059e0:	11450513          	addi	a0,a0,276 # 8000baf0 <lockPrint>
    800059e4:	ffffc097          	auipc	ra,0xffffc
    800059e8:	858080e7          	jalr	-1960(ra) # 8000123c <copy_and_swap>
    800059ec:	fe0514e3          	bnez	a0,800059d4 <_Z11printStringPKc+0x58>
}
    800059f0:	01813083          	ld	ra,24(sp)
    800059f4:	01013403          	ld	s0,16(sp)
    800059f8:	00813483          	ld	s1,8(sp)
    800059fc:	02010113          	addi	sp,sp,32
    80005a00:	00008067          	ret

0000000080005a04 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005a04:	fd010113          	addi	sp,sp,-48
    80005a08:	02113423          	sd	ra,40(sp)
    80005a0c:	02813023          	sd	s0,32(sp)
    80005a10:	00913c23          	sd	s1,24(sp)
    80005a14:	01213823          	sd	s2,16(sp)
    80005a18:	01313423          	sd	s3,8(sp)
    80005a1c:	01413023          	sd	s4,0(sp)
    80005a20:	03010413          	addi	s0,sp,48
    80005a24:	00050993          	mv	s3,a0
    80005a28:	00058a13          	mv	s4,a1
    LOCK();
    80005a2c:	00100613          	li	a2,1
    80005a30:	00000593          	li	a1,0
    80005a34:	00006517          	auipc	a0,0x6
    80005a38:	0bc50513          	addi	a0,a0,188 # 8000baf0 <lockPrint>
    80005a3c:	ffffc097          	auipc	ra,0xffffc
    80005a40:	800080e7          	jalr	-2048(ra) # 8000123c <copy_and_swap>
    80005a44:	00050863          	beqz	a0,80005a54 <_Z9getStringPci+0x50>
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	88c080e7          	jalr	-1908(ra) # 800012d4 <_Z15thread_dispatchv>
    80005a50:	fddff06f          	j	80005a2c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005a54:	00000913          	li	s2,0
    80005a58:	00090493          	mv	s1,s2
    80005a5c:	0019091b          	addiw	s2,s2,1
    80005a60:	03495a63          	bge	s2,s4,80005a94 <_Z9getStringPci+0x90>
        cc = getc();
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	aa0080e7          	jalr	-1376(ra) # 80001504 <_Z4getcv>
        if(cc < 1)
    80005a6c:	02050463          	beqz	a0,80005a94 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005a70:	009984b3          	add	s1,s3,s1
    80005a74:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005a78:	00a00793          	li	a5,10
    80005a7c:	00f50a63          	beq	a0,a5,80005a90 <_Z9getStringPci+0x8c>
    80005a80:	00d00793          	li	a5,13
    80005a84:	fcf51ae3          	bne	a0,a5,80005a58 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005a88:	00090493          	mv	s1,s2
    80005a8c:	0080006f          	j	80005a94 <_Z9getStringPci+0x90>
    80005a90:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005a94:	009984b3          	add	s1,s3,s1
    80005a98:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005a9c:	00000613          	li	a2,0
    80005aa0:	00100593          	li	a1,1
    80005aa4:	00006517          	auipc	a0,0x6
    80005aa8:	04c50513          	addi	a0,a0,76 # 8000baf0 <lockPrint>
    80005aac:	ffffb097          	auipc	ra,0xffffb
    80005ab0:	790080e7          	jalr	1936(ra) # 8000123c <copy_and_swap>
    80005ab4:	fe0514e3          	bnez	a0,80005a9c <_Z9getStringPci+0x98>
    return buf;
}
    80005ab8:	00098513          	mv	a0,s3
    80005abc:	02813083          	ld	ra,40(sp)
    80005ac0:	02013403          	ld	s0,32(sp)
    80005ac4:	01813483          	ld	s1,24(sp)
    80005ac8:	01013903          	ld	s2,16(sp)
    80005acc:	00813983          	ld	s3,8(sp)
    80005ad0:	00013a03          	ld	s4,0(sp)
    80005ad4:	03010113          	addi	sp,sp,48
    80005ad8:	00008067          	ret

0000000080005adc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005adc:	ff010113          	addi	sp,sp,-16
    80005ae0:	00813423          	sd	s0,8(sp)
    80005ae4:	01010413          	addi	s0,sp,16
    80005ae8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005aec:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005af0:	0006c603          	lbu	a2,0(a3)
    80005af4:	fd06071b          	addiw	a4,a2,-48
    80005af8:	0ff77713          	andi	a4,a4,255
    80005afc:	00900793          	li	a5,9
    80005b00:	02e7e063          	bltu	a5,a4,80005b20 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005b04:	0025179b          	slliw	a5,a0,0x2
    80005b08:	00a787bb          	addw	a5,a5,a0
    80005b0c:	0017979b          	slliw	a5,a5,0x1
    80005b10:	00168693          	addi	a3,a3,1
    80005b14:	00c787bb          	addw	a5,a5,a2
    80005b18:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005b1c:	fd5ff06f          	j	80005af0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005b20:	00813403          	ld	s0,8(sp)
    80005b24:	01010113          	addi	sp,sp,16
    80005b28:	00008067          	ret

0000000080005b2c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005b2c:	fc010113          	addi	sp,sp,-64
    80005b30:	02113c23          	sd	ra,56(sp)
    80005b34:	02813823          	sd	s0,48(sp)
    80005b38:	02913423          	sd	s1,40(sp)
    80005b3c:	03213023          	sd	s2,32(sp)
    80005b40:	01313c23          	sd	s3,24(sp)
    80005b44:	04010413          	addi	s0,sp,64
    80005b48:	00050493          	mv	s1,a0
    80005b4c:	00058913          	mv	s2,a1
    80005b50:	00060993          	mv	s3,a2
    LOCK();
    80005b54:	00100613          	li	a2,1
    80005b58:	00000593          	li	a1,0
    80005b5c:	00006517          	auipc	a0,0x6
    80005b60:	f9450513          	addi	a0,a0,-108 # 8000baf0 <lockPrint>
    80005b64:	ffffb097          	auipc	ra,0xffffb
    80005b68:	6d8080e7          	jalr	1752(ra) # 8000123c <copy_and_swap>
    80005b6c:	00050863          	beqz	a0,80005b7c <_Z8printIntiii+0x50>
    80005b70:	ffffb097          	auipc	ra,0xffffb
    80005b74:	764080e7          	jalr	1892(ra) # 800012d4 <_Z15thread_dispatchv>
    80005b78:	fddff06f          	j	80005b54 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005b7c:	00098463          	beqz	s3,80005b84 <_Z8printIntiii+0x58>
    80005b80:	0804c463          	bltz	s1,80005c08 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005b84:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005b88:	00000593          	li	a1,0
    }

    i = 0;
    80005b8c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005b90:	0009079b          	sext.w	a5,s2
    80005b94:	0325773b          	remuw	a4,a0,s2
    80005b98:	00048613          	mv	a2,s1
    80005b9c:	0014849b          	addiw	s1,s1,1
    80005ba0:	02071693          	slli	a3,a4,0x20
    80005ba4:	0206d693          	srli	a3,a3,0x20
    80005ba8:	00006717          	auipc	a4,0x6
    80005bac:	dc870713          	addi	a4,a4,-568 # 8000b970 <digits>
    80005bb0:	00d70733          	add	a4,a4,a3
    80005bb4:	00074683          	lbu	a3,0(a4)
    80005bb8:	fd040713          	addi	a4,s0,-48
    80005bbc:	00c70733          	add	a4,a4,a2
    80005bc0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005bc4:	0005071b          	sext.w	a4,a0
    80005bc8:	0325553b          	divuw	a0,a0,s2
    80005bcc:	fcf772e3          	bgeu	a4,a5,80005b90 <_Z8printIntiii+0x64>
    if(neg)
    80005bd0:	00058c63          	beqz	a1,80005be8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005bd4:	fd040793          	addi	a5,s0,-48
    80005bd8:	009784b3          	add	s1,a5,s1
    80005bdc:	02d00793          	li	a5,45
    80005be0:	fef48823          	sb	a5,-16(s1)
    80005be4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005be8:	fff4849b          	addiw	s1,s1,-1
    80005bec:	0204c463          	bltz	s1,80005c14 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005bf0:	fd040793          	addi	a5,s0,-48
    80005bf4:	009787b3          	add	a5,a5,s1
    80005bf8:	ff07c503          	lbu	a0,-16(a5)
    80005bfc:	ffffc097          	auipc	ra,0xffffc
    80005c00:	930080e7          	jalr	-1744(ra) # 8000152c <_Z4putcc>
    80005c04:	fe5ff06f          	j	80005be8 <_Z8printIntiii+0xbc>
        x = -xx;
    80005c08:	4090053b          	negw	a0,s1
        neg = 1;
    80005c0c:	00100593          	li	a1,1
        x = -xx;
    80005c10:	f7dff06f          	j	80005b8c <_Z8printIntiii+0x60>

    UNLOCK();
    80005c14:	00000613          	li	a2,0
    80005c18:	00100593          	li	a1,1
    80005c1c:	00006517          	auipc	a0,0x6
    80005c20:	ed450513          	addi	a0,a0,-300 # 8000baf0 <lockPrint>
    80005c24:	ffffb097          	auipc	ra,0xffffb
    80005c28:	618080e7          	jalr	1560(ra) # 8000123c <copy_and_swap>
    80005c2c:	fe0514e3          	bnez	a0,80005c14 <_Z8printIntiii+0xe8>
    80005c30:	03813083          	ld	ra,56(sp)
    80005c34:	03013403          	ld	s0,48(sp)
    80005c38:	02813483          	ld	s1,40(sp)
    80005c3c:	02013903          	ld	s2,32(sp)
    80005c40:	01813983          	ld	s3,24(sp)
    80005c44:	04010113          	addi	sp,sp,64
    80005c48:	00008067          	ret

0000000080005c4c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005c4c:	fd010113          	addi	sp,sp,-48
    80005c50:	02113423          	sd	ra,40(sp)
    80005c54:	02813023          	sd	s0,32(sp)
    80005c58:	00913c23          	sd	s1,24(sp)
    80005c5c:	01213823          	sd	s2,16(sp)
    80005c60:	01313423          	sd	s3,8(sp)
    80005c64:	03010413          	addi	s0,sp,48
    80005c68:	00050493          	mv	s1,a0
    80005c6c:	00058913          	mv	s2,a1
    80005c70:	0015879b          	addiw	a5,a1,1
    80005c74:	0007851b          	sext.w	a0,a5
    80005c78:	00f4a023          	sw	a5,0(s1)
    80005c7c:	0004a823          	sw	zero,16(s1)
    80005c80:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c84:	00251513          	slli	a0,a0,0x2
    80005c88:	ffffb097          	auipc	ra,0xffffb
    80005c8c:	5d4080e7          	jalr	1492(ra) # 8000125c <_Z9mem_allocm>
    80005c90:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005c94:	01000513          	li	a0,16
    80005c98:	ffffd097          	auipc	ra,0xffffd
    80005c9c:	910080e7          	jalr	-1776(ra) # 800025a8 <_Znwm>
    80005ca0:	00050993          	mv	s3,a0
    80005ca4:	00000593          	li	a1,0
    80005ca8:	ffffd097          	auipc	ra,0xffffd
    80005cac:	b04080e7          	jalr	-1276(ra) # 800027ac <_ZN9SemaphoreC1Ej>
    80005cb0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005cb4:	01000513          	li	a0,16
    80005cb8:	ffffd097          	auipc	ra,0xffffd
    80005cbc:	8f0080e7          	jalr	-1808(ra) # 800025a8 <_Znwm>
    80005cc0:	00050993          	mv	s3,a0
    80005cc4:	00090593          	mv	a1,s2
    80005cc8:	ffffd097          	auipc	ra,0xffffd
    80005ccc:	ae4080e7          	jalr	-1308(ra) # 800027ac <_ZN9SemaphoreC1Ej>
    80005cd0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005cd4:	01000513          	li	a0,16
    80005cd8:	ffffd097          	auipc	ra,0xffffd
    80005cdc:	8d0080e7          	jalr	-1840(ra) # 800025a8 <_Znwm>
    80005ce0:	00050913          	mv	s2,a0
    80005ce4:	00100593          	li	a1,1
    80005ce8:	ffffd097          	auipc	ra,0xffffd
    80005cec:	ac4080e7          	jalr	-1340(ra) # 800027ac <_ZN9SemaphoreC1Ej>
    80005cf0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005cf4:	01000513          	li	a0,16
    80005cf8:	ffffd097          	auipc	ra,0xffffd
    80005cfc:	8b0080e7          	jalr	-1872(ra) # 800025a8 <_Znwm>
    80005d00:	00050913          	mv	s2,a0
    80005d04:	00100593          	li	a1,1
    80005d08:	ffffd097          	auipc	ra,0xffffd
    80005d0c:	aa4080e7          	jalr	-1372(ra) # 800027ac <_ZN9SemaphoreC1Ej>
    80005d10:	0324b823          	sd	s2,48(s1)
}
    80005d14:	02813083          	ld	ra,40(sp)
    80005d18:	02013403          	ld	s0,32(sp)
    80005d1c:	01813483          	ld	s1,24(sp)
    80005d20:	01013903          	ld	s2,16(sp)
    80005d24:	00813983          	ld	s3,8(sp)
    80005d28:	03010113          	addi	sp,sp,48
    80005d2c:	00008067          	ret
    80005d30:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005d34:	00098513          	mv	a0,s3
    80005d38:	ffffd097          	auipc	ra,0xffffd
    80005d3c:	8d0080e7          	jalr	-1840(ra) # 80002608 <_ZdlPv>
    80005d40:	00048513          	mv	a0,s1
    80005d44:	00007097          	auipc	ra,0x7
    80005d48:	e94080e7          	jalr	-364(ra) # 8000cbd8 <_Unwind_Resume>
    80005d4c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005d50:	00098513          	mv	a0,s3
    80005d54:	ffffd097          	auipc	ra,0xffffd
    80005d58:	8b4080e7          	jalr	-1868(ra) # 80002608 <_ZdlPv>
    80005d5c:	00048513          	mv	a0,s1
    80005d60:	00007097          	auipc	ra,0x7
    80005d64:	e78080e7          	jalr	-392(ra) # 8000cbd8 <_Unwind_Resume>
    80005d68:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005d6c:	00090513          	mv	a0,s2
    80005d70:	ffffd097          	auipc	ra,0xffffd
    80005d74:	898080e7          	jalr	-1896(ra) # 80002608 <_ZdlPv>
    80005d78:	00048513          	mv	a0,s1
    80005d7c:	00007097          	auipc	ra,0x7
    80005d80:	e5c080e7          	jalr	-420(ra) # 8000cbd8 <_Unwind_Resume>
    80005d84:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005d88:	00090513          	mv	a0,s2
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	87c080e7          	jalr	-1924(ra) # 80002608 <_ZdlPv>
    80005d94:	00048513          	mv	a0,s1
    80005d98:	00007097          	auipc	ra,0x7
    80005d9c:	e40080e7          	jalr	-448(ra) # 8000cbd8 <_Unwind_Resume>

0000000080005da0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005da0:	fe010113          	addi	sp,sp,-32
    80005da4:	00113c23          	sd	ra,24(sp)
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00913423          	sd	s1,8(sp)
    80005db0:	01213023          	sd	s2,0(sp)
    80005db4:	02010413          	addi	s0,sp,32
    80005db8:	00050493          	mv	s1,a0
    80005dbc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005dc0:	01853503          	ld	a0,24(a0)
    80005dc4:	ffffd097          	auipc	ra,0xffffd
    80005dc8:	a20080e7          	jalr	-1504(ra) # 800027e4 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005dcc:	0304b503          	ld	a0,48(s1)
    80005dd0:	ffffd097          	auipc	ra,0xffffd
    80005dd4:	a14080e7          	jalr	-1516(ra) # 800027e4 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005dd8:	0084b783          	ld	a5,8(s1)
    80005ddc:	0144a703          	lw	a4,20(s1)
    80005de0:	00271713          	slli	a4,a4,0x2
    80005de4:	00e787b3          	add	a5,a5,a4
    80005de8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005dec:	0144a783          	lw	a5,20(s1)
    80005df0:	0017879b          	addiw	a5,a5,1
    80005df4:	0004a703          	lw	a4,0(s1)
    80005df8:	02e7e7bb          	remw	a5,a5,a4
    80005dfc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005e00:	0304b503          	ld	a0,48(s1)
    80005e04:	ffffd097          	auipc	ra,0xffffd
    80005e08:	a0c080e7          	jalr	-1524(ra) # 80002810 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005e0c:	0204b503          	ld	a0,32(s1)
    80005e10:	ffffd097          	auipc	ra,0xffffd
    80005e14:	a00080e7          	jalr	-1536(ra) # 80002810 <_ZN9Semaphore6signalEv>

}
    80005e18:	01813083          	ld	ra,24(sp)
    80005e1c:	01013403          	ld	s0,16(sp)
    80005e20:	00813483          	ld	s1,8(sp)
    80005e24:	00013903          	ld	s2,0(sp)
    80005e28:	02010113          	addi	sp,sp,32
    80005e2c:	00008067          	ret

0000000080005e30 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005e30:	fe010113          	addi	sp,sp,-32
    80005e34:	00113c23          	sd	ra,24(sp)
    80005e38:	00813823          	sd	s0,16(sp)
    80005e3c:	00913423          	sd	s1,8(sp)
    80005e40:	01213023          	sd	s2,0(sp)
    80005e44:	02010413          	addi	s0,sp,32
    80005e48:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005e4c:	02053503          	ld	a0,32(a0)
    80005e50:	ffffd097          	auipc	ra,0xffffd
    80005e54:	994080e7          	jalr	-1644(ra) # 800027e4 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005e58:	0284b503          	ld	a0,40(s1)
    80005e5c:	ffffd097          	auipc	ra,0xffffd
    80005e60:	988080e7          	jalr	-1656(ra) # 800027e4 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005e64:	0084b703          	ld	a4,8(s1)
    80005e68:	0104a783          	lw	a5,16(s1)
    80005e6c:	00279693          	slli	a3,a5,0x2
    80005e70:	00d70733          	add	a4,a4,a3
    80005e74:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005e78:	0017879b          	addiw	a5,a5,1
    80005e7c:	0004a703          	lw	a4,0(s1)
    80005e80:	02e7e7bb          	remw	a5,a5,a4
    80005e84:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005e88:	0284b503          	ld	a0,40(s1)
    80005e8c:	ffffd097          	auipc	ra,0xffffd
    80005e90:	984080e7          	jalr	-1660(ra) # 80002810 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005e94:	0184b503          	ld	a0,24(s1)
    80005e98:	ffffd097          	auipc	ra,0xffffd
    80005e9c:	978080e7          	jalr	-1672(ra) # 80002810 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005ea0:	00090513          	mv	a0,s2
    80005ea4:	01813083          	ld	ra,24(sp)
    80005ea8:	01013403          	ld	s0,16(sp)
    80005eac:	00813483          	ld	s1,8(sp)
    80005eb0:	00013903          	ld	s2,0(sp)
    80005eb4:	02010113          	addi	sp,sp,32
    80005eb8:	00008067          	ret

0000000080005ebc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ebc:	fe010113          	addi	sp,sp,-32
    80005ec0:	00113c23          	sd	ra,24(sp)
    80005ec4:	00813823          	sd	s0,16(sp)
    80005ec8:	00913423          	sd	s1,8(sp)
    80005ecc:	01213023          	sd	s2,0(sp)
    80005ed0:	02010413          	addi	s0,sp,32
    80005ed4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ed8:	02853503          	ld	a0,40(a0)
    80005edc:	ffffd097          	auipc	ra,0xffffd
    80005ee0:	908080e7          	jalr	-1784(ra) # 800027e4 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005ee4:	0304b503          	ld	a0,48(s1)
    80005ee8:	ffffd097          	auipc	ra,0xffffd
    80005eec:	8fc080e7          	jalr	-1796(ra) # 800027e4 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005ef0:	0144a783          	lw	a5,20(s1)
    80005ef4:	0104a903          	lw	s2,16(s1)
    80005ef8:	0327ce63          	blt	a5,s2,80005f34 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005efc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005f00:	0304b503          	ld	a0,48(s1)
    80005f04:	ffffd097          	auipc	ra,0xffffd
    80005f08:	90c080e7          	jalr	-1780(ra) # 80002810 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005f0c:	0284b503          	ld	a0,40(s1)
    80005f10:	ffffd097          	auipc	ra,0xffffd
    80005f14:	900080e7          	jalr	-1792(ra) # 80002810 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005f18:	00090513          	mv	a0,s2
    80005f1c:	01813083          	ld	ra,24(sp)
    80005f20:	01013403          	ld	s0,16(sp)
    80005f24:	00813483          	ld	s1,8(sp)
    80005f28:	00013903          	ld	s2,0(sp)
    80005f2c:	02010113          	addi	sp,sp,32
    80005f30:	00008067          	ret
        ret = cap - head + tail;
    80005f34:	0004a703          	lw	a4,0(s1)
    80005f38:	4127093b          	subw	s2,a4,s2
    80005f3c:	00f9093b          	addw	s2,s2,a5
    80005f40:	fc1ff06f          	j	80005f00 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005f44 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005f44:	fe010113          	addi	sp,sp,-32
    80005f48:	00113c23          	sd	ra,24(sp)
    80005f4c:	00813823          	sd	s0,16(sp)
    80005f50:	00913423          	sd	s1,8(sp)
    80005f54:	02010413          	addi	s0,sp,32
    80005f58:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005f5c:	00a00513          	li	a0,10
    80005f60:	ffffd097          	auipc	ra,0xffffd
    80005f64:	960080e7          	jalr	-1696(ra) # 800028c0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005f68:	00003517          	auipc	a0,0x3
    80005f6c:	3f050513          	addi	a0,a0,1008 # 80009358 <_ZZ16printIntegerTrapmE6digits+0x200>
    80005f70:	00000097          	auipc	ra,0x0
    80005f74:	a0c080e7          	jalr	-1524(ra) # 8000597c <_Z11printStringPKc>
    while (getCnt()) {
    80005f78:	00048513          	mv	a0,s1
    80005f7c:	00000097          	auipc	ra,0x0
    80005f80:	f40080e7          	jalr	-192(ra) # 80005ebc <_ZN9BufferCPP6getCntEv>
    80005f84:	02050c63          	beqz	a0,80005fbc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005f88:	0084b783          	ld	a5,8(s1)
    80005f8c:	0104a703          	lw	a4,16(s1)
    80005f90:	00271713          	slli	a4,a4,0x2
    80005f94:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005f98:	0007c503          	lbu	a0,0(a5)
    80005f9c:	ffffd097          	auipc	ra,0xffffd
    80005fa0:	924080e7          	jalr	-1756(ra) # 800028c0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005fa4:	0104a783          	lw	a5,16(s1)
    80005fa8:	0017879b          	addiw	a5,a5,1
    80005fac:	0004a703          	lw	a4,0(s1)
    80005fb0:	02e7e7bb          	remw	a5,a5,a4
    80005fb4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005fb8:	fc1ff06f          	j	80005f78 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005fbc:	02100513          	li	a0,33
    80005fc0:	ffffd097          	auipc	ra,0xffffd
    80005fc4:	900080e7          	jalr	-1792(ra) # 800028c0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005fc8:	00a00513          	li	a0,10
    80005fcc:	ffffd097          	auipc	ra,0xffffd
    80005fd0:	8f4080e7          	jalr	-1804(ra) # 800028c0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005fd4:	0084b503          	ld	a0,8(s1)
    80005fd8:	ffffb097          	auipc	ra,0xffffb
    80005fdc:	2d0080e7          	jalr	720(ra) # 800012a8 <_Z8mem_freePv>
    delete itemAvailable;
    80005fe0:	0204b503          	ld	a0,32(s1)
    80005fe4:	00050863          	beqz	a0,80005ff4 <_ZN9BufferCPPD1Ev+0xb0>
    80005fe8:	00053783          	ld	a5,0(a0)
    80005fec:	0087b783          	ld	a5,8(a5)
    80005ff0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005ff4:	0184b503          	ld	a0,24(s1)
    80005ff8:	00050863          	beqz	a0,80006008 <_ZN9BufferCPPD1Ev+0xc4>
    80005ffc:	00053783          	ld	a5,0(a0)
    80006000:	0087b783          	ld	a5,8(a5)
    80006004:	000780e7          	jalr	a5
    delete mutexTail;
    80006008:	0304b503          	ld	a0,48(s1)
    8000600c:	00050863          	beqz	a0,8000601c <_ZN9BufferCPPD1Ev+0xd8>
    80006010:	00053783          	ld	a5,0(a0)
    80006014:	0087b783          	ld	a5,8(a5)
    80006018:	000780e7          	jalr	a5
    delete mutexHead;
    8000601c:	0284b503          	ld	a0,40(s1)
    80006020:	00050863          	beqz	a0,80006030 <_ZN9BufferCPPD1Ev+0xec>
    80006024:	00053783          	ld	a5,0(a0)
    80006028:	0087b783          	ld	a5,8(a5)
    8000602c:	000780e7          	jalr	a5
}
    80006030:	01813083          	ld	ra,24(sp)
    80006034:	01013403          	ld	s0,16(sp)
    80006038:	00813483          	ld	s1,8(sp)
    8000603c:	02010113          	addi	sp,sp,32
    80006040:	00008067          	ret

0000000080006044 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80006044:	fe010113          	addi	sp,sp,-32
    80006048:	00113c23          	sd	ra,24(sp)
    8000604c:	00813823          	sd	s0,16(sp)
    80006050:	00913423          	sd	s1,8(sp)
    80006054:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80006058:	00003517          	auipc	a0,0x3
    8000605c:	31850513          	addi	a0,a0,792 # 80009370 <_ZZ16printIntegerTrapmE6digits+0x218>
    80006060:	00000097          	auipc	ra,0x0
    80006064:	91c080e7          	jalr	-1764(ra) # 8000597c <_Z11printStringPKc>
    int test = getc() - '0'; //stojalo je getc bez __
    80006068:	ffffb097          	auipc	ra,0xffffb
    8000606c:	49c080e7          	jalr	1180(ra) # 80001504 <_Z4getcv>
    80006070:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80006074:	ffffb097          	auipc	ra,0xffffb
    80006078:	490080e7          	jalr	1168(ra) # 80001504 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000607c:	00700793          	li	a5,7
    80006080:	1097e263          	bltu	a5,s1,80006184 <_Z8userMainv+0x140>
    80006084:	00249493          	slli	s1,s1,0x2
    80006088:	00003717          	auipc	a4,0x3
    8000608c:	54070713          	addi	a4,a4,1344 # 800095c8 <_ZZ16printIntegerTrapmE6digits+0x470>
    80006090:	00e484b3          	add	s1,s1,a4
    80006094:	0004a783          	lw	a5,0(s1)
    80006098:	00e787b3          	add	a5,a5,a4
    8000609c:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800060a0:	fffff097          	auipc	ra,0xfffff
    800060a4:	f54080e7          	jalr	-172(ra) # 80004ff4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800060a8:	00003517          	auipc	a0,0x3
    800060ac:	2e850513          	addi	a0,a0,744 # 80009390 <_ZZ16printIntegerTrapmE6digits+0x238>
    800060b0:	00000097          	auipc	ra,0x0
    800060b4:	8cc080e7          	jalr	-1844(ra) # 8000597c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800060b8:	01813083          	ld	ra,24(sp)
    800060bc:	01013403          	ld	s0,16(sp)
    800060c0:	00813483          	ld	s1,8(sp)
    800060c4:	02010113          	addi	sp,sp,32
    800060c8:	00008067          	ret
            Threads_CPP_API_test();
    800060cc:	ffffe097          	auipc	ra,0xffffe
    800060d0:	e08080e7          	jalr	-504(ra) # 80003ed4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800060d4:	00003517          	auipc	a0,0x3
    800060d8:	2fc50513          	addi	a0,a0,764 # 800093d0 <_ZZ16printIntegerTrapmE6digits+0x278>
    800060dc:	00000097          	auipc	ra,0x0
    800060e0:	8a0080e7          	jalr	-1888(ra) # 8000597c <_Z11printStringPKc>
            break;
    800060e4:	fd5ff06f          	j	800060b8 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800060e8:	ffffd097          	auipc	ra,0xffffd
    800060ec:	640080e7          	jalr	1600(ra) # 80003728 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800060f0:	00003517          	auipc	a0,0x3
    800060f4:	32050513          	addi	a0,a0,800 # 80009410 <_ZZ16printIntegerTrapmE6digits+0x2b8>
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	884080e7          	jalr	-1916(ra) # 8000597c <_Z11printStringPKc>
            break;
    80006100:	fb9ff06f          	j	800060b8 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80006104:	fffff097          	auipc	ra,0xfffff
    80006108:	234080e7          	jalr	564(ra) # 80005338 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000610c:	00003517          	auipc	a0,0x3
    80006110:	35450513          	addi	a0,a0,852 # 80009460 <_ZZ16printIntegerTrapmE6digits+0x308>
    80006114:	00000097          	auipc	ra,0x0
    80006118:	868080e7          	jalr	-1944(ra) # 8000597c <_Z11printStringPKc>
            break;
    8000611c:	f9dff06f          	j	800060b8 <_Z8userMainv+0x74>
            testSleeping();
    80006120:	00000097          	auipc	ra,0x0
    80006124:	11c080e7          	jalr	284(ra) # 8000623c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006128:	00003517          	auipc	a0,0x3
    8000612c:	39050513          	addi	a0,a0,912 # 800094b8 <_ZZ16printIntegerTrapmE6digits+0x360>
    80006130:	00000097          	auipc	ra,0x0
    80006134:	84c080e7          	jalr	-1972(ra) # 8000597c <_Z11printStringPKc>
            break;
    80006138:	f81ff06f          	j	800060b8 <_Z8userMainv+0x74>
            testConsumerProducer();
    8000613c:	ffffe097          	auipc	ra,0xffffe
    80006140:	258080e7          	jalr	600(ra) # 80004394 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80006144:	00003517          	auipc	a0,0x3
    80006148:	3a450513          	addi	a0,a0,932 # 800094e8 <_ZZ16printIntegerTrapmE6digits+0x390>
    8000614c:	00000097          	auipc	ra,0x0
    80006150:	830080e7          	jalr	-2000(ra) # 8000597c <_Z11printStringPKc>
            break;
    80006154:	f65ff06f          	j	800060b8 <_Z8userMainv+0x74>
            System_Mode_test();
    80006158:	00000097          	auipc	ra,0x0
    8000615c:	5cc080e7          	jalr	1484(ra) # 80006724 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006160:	00003517          	auipc	a0,0x3
    80006164:	3c850513          	addi	a0,a0,968 # 80009528 <_ZZ16printIntegerTrapmE6digits+0x3d0>
    80006168:	00000097          	auipc	ra,0x0
    8000616c:	814080e7          	jalr	-2028(ra) # 8000597c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006170:	00003517          	auipc	a0,0x3
    80006174:	3d850513          	addi	a0,a0,984 # 80009548 <_ZZ16printIntegerTrapmE6digits+0x3f0>
    80006178:	00000097          	auipc	ra,0x0
    8000617c:	804080e7          	jalr	-2044(ra) # 8000597c <_Z11printStringPKc>
            break;
    80006180:	f39ff06f          	j	800060b8 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80006184:	00003517          	auipc	a0,0x3
    80006188:	41c50513          	addi	a0,a0,1052 # 800095a0 <_ZZ16printIntegerTrapmE6digits+0x448>
    8000618c:	fffff097          	auipc	ra,0xfffff
    80006190:	7f0080e7          	jalr	2032(ra) # 8000597c <_Z11printStringPKc>
    80006194:	f25ff06f          	j	800060b8 <_Z8userMainv+0x74>

0000000080006198 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006198:	fe010113          	addi	sp,sp,-32
    8000619c:	00113c23          	sd	ra,24(sp)
    800061a0:	00813823          	sd	s0,16(sp)
    800061a4:	00913423          	sd	s1,8(sp)
    800061a8:	01213023          	sd	s2,0(sp)
    800061ac:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800061b0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800061b4:	00600493          	li	s1,6
    while (--i > 0) {
    800061b8:	fff4849b          	addiw	s1,s1,-1
    800061bc:	04905463          	blez	s1,80006204 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	42850513          	addi	a0,a0,1064 # 800095e8 <_ZZ16printIntegerTrapmE6digits+0x490>
    800061c8:	fffff097          	auipc	ra,0xfffff
    800061cc:	7b4080e7          	jalr	1972(ra) # 8000597c <_Z11printStringPKc>
        printInt(sleep_time);
    800061d0:	00000613          	li	a2,0
    800061d4:	00a00593          	li	a1,10
    800061d8:	0009051b          	sext.w	a0,s2
    800061dc:	00000097          	auipc	ra,0x0
    800061e0:	950080e7          	jalr	-1712(ra) # 80005b2c <_Z8printIntiii>
        printString(" !\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	40c50513          	addi	a0,a0,1036 # 800095f0 <_ZZ16printIntegerTrapmE6digits+0x498>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	790080e7          	jalr	1936(ra) # 8000597c <_Z11printStringPKc>
        time_sleep(sleep_time);
    800061f4:	00090513          	mv	a0,s2
    800061f8:	ffffb097          	auipc	ra,0xffffb
    800061fc:	2e0080e7          	jalr	736(ra) # 800014d8 <_Z10time_sleepm>
    while (--i > 0) {
    80006200:	fb9ff06f          	j	800061b8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006204:	00a00793          	li	a5,10
    80006208:	02f95933          	divu	s2,s2,a5
    8000620c:	fff90913          	addi	s2,s2,-1
    80006210:	00006797          	auipc	a5,0x6
    80006214:	8e878793          	addi	a5,a5,-1816 # 8000baf8 <_ZL8finished>
    80006218:	01278933          	add	s2,a5,s2
    8000621c:	00100793          	li	a5,1
    80006220:	00f90023          	sb	a5,0(s2)
}
    80006224:	01813083          	ld	ra,24(sp)
    80006228:	01013403          	ld	s0,16(sp)
    8000622c:	00813483          	ld	s1,8(sp)
    80006230:	00013903          	ld	s2,0(sp)
    80006234:	02010113          	addi	sp,sp,32
    80006238:	00008067          	ret

000000008000623c <_Z12testSleepingv>:

void testSleeping() {
    8000623c:	fc010113          	addi	sp,sp,-64
    80006240:	02113c23          	sd	ra,56(sp)
    80006244:	02813823          	sd	s0,48(sp)
    80006248:	02913423          	sd	s1,40(sp)
    8000624c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006250:	00a00793          	li	a5,10
    80006254:	fcf43823          	sd	a5,-48(s0)
    80006258:	01400793          	li	a5,20
    8000625c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006260:	00000493          	li	s1,0
    80006264:	02c0006f          	j	80006290 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006268:	00349793          	slli	a5,s1,0x3
    8000626c:	fd040613          	addi	a2,s0,-48
    80006270:	00f60633          	add	a2,a2,a5
    80006274:	00000597          	auipc	a1,0x0
    80006278:	f2458593          	addi	a1,a1,-220 # 80006198 <_ZL9sleepyRunPv>
    8000627c:	fc040513          	addi	a0,s0,-64
    80006280:	00f50533          	add	a0,a0,a5
    80006284:	ffffb097          	auipc	ra,0xffffb
    80006288:	070080e7          	jalr	112(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000628c:	0014849b          	addiw	s1,s1,1
    80006290:	00100793          	li	a5,1
    80006294:	fc97dae3          	bge	a5,s1,80006268 <_Z12testSleepingv+0x2c>
    }


    while (!(finished[0] && finished[1])) {}
    80006298:	00006797          	auipc	a5,0x6
    8000629c:	8607c783          	lbu	a5,-1952(a5) # 8000baf8 <_ZL8finished>
    800062a0:	fe078ce3          	beqz	a5,80006298 <_Z12testSleepingv+0x5c>
    800062a4:	00006797          	auipc	a5,0x6
    800062a8:	8557c783          	lbu	a5,-1963(a5) # 8000baf9 <_ZL8finished+0x1>
    800062ac:	fe0786e3          	beqz	a5,80006298 <_Z12testSleepingv+0x5c>
}
    800062b0:	03813083          	ld	ra,56(sp)
    800062b4:	03013403          	ld	s0,48(sp)
    800062b8:	02813483          	ld	s1,40(sp)
    800062bc:	04010113          	addi	sp,sp,64
    800062c0:	00008067          	ret

00000000800062c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800062c4:	fe010113          	addi	sp,sp,-32
    800062c8:	00113c23          	sd	ra,24(sp)
    800062cc:	00813823          	sd	s0,16(sp)
    800062d0:	00913423          	sd	s1,8(sp)
    800062d4:	01213023          	sd	s2,0(sp)
    800062d8:	02010413          	addi	s0,sp,32
    800062dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800062e0:	00100793          	li	a5,1
    800062e4:	02a7f863          	bgeu	a5,a0,80006314 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800062e8:	00a00793          	li	a5,10
    800062ec:	02f577b3          	remu	a5,a0,a5
    800062f0:	02078e63          	beqz	a5,8000632c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800062f4:	fff48513          	addi	a0,s1,-1
    800062f8:	00000097          	auipc	ra,0x0
    800062fc:	fcc080e7          	jalr	-52(ra) # 800062c4 <_ZL9fibonaccim>
    80006300:	00050913          	mv	s2,a0
    80006304:	ffe48513          	addi	a0,s1,-2
    80006308:	00000097          	auipc	ra,0x0
    8000630c:	fbc080e7          	jalr	-68(ra) # 800062c4 <_ZL9fibonaccim>
    80006310:	00a90533          	add	a0,s2,a0
}
    80006314:	01813083          	ld	ra,24(sp)
    80006318:	01013403          	ld	s0,16(sp)
    8000631c:	00813483          	ld	s1,8(sp)
    80006320:	00013903          	ld	s2,0(sp)
    80006324:	02010113          	addi	sp,sp,32
    80006328:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000632c:	ffffb097          	auipc	ra,0xffffb
    80006330:	fa8080e7          	jalr	-88(ra) # 800012d4 <_Z15thread_dispatchv>
    80006334:	fc1ff06f          	j	800062f4 <_ZL9fibonaccim+0x30>

0000000080006338 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006338:	fe010113          	addi	sp,sp,-32
    8000633c:	00113c23          	sd	ra,24(sp)
    80006340:	00813823          	sd	s0,16(sp)
    80006344:	00913423          	sd	s1,8(sp)
    80006348:	01213023          	sd	s2,0(sp)
    8000634c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006350:	00a00493          	li	s1,10
    80006354:	0380006f          	j	8000638c <_ZL11workerBodyDPv+0x54>
    for (; i < 13; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    80006358:	00003517          	auipc	a0,0x3
    8000635c:	f5850513          	addi	a0,a0,-168 # 800092b0 <_ZZ16printIntegerTrapmE6digits+0x158>
    80006360:	fffff097          	auipc	ra,0xfffff
    80006364:	61c080e7          	jalr	1564(ra) # 8000597c <_Z11printStringPKc>
    80006368:	00048513          	mv	a0,s1
    8000636c:	ffffd097          	auipc	ra,0xffffd
    80006370:	078080e7          	jalr	120(ra) # 800033e4 <_Z12printIntegerm>
    80006374:	00003517          	auipc	a0,0x3
    80006378:	13c50513          	addi	a0,a0,316 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    8000637c:	fffff097          	auipc	ra,0xfffff
    80006380:	600080e7          	jalr	1536(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006384:	0014849b          	addiw	s1,s1,1
    80006388:	0ff4f493          	andi	s1,s1,255
    8000638c:	00c00793          	li	a5,12
    80006390:	fc97f4e3          	bgeu	a5,s1,80006358 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006394:	00003517          	auipc	a0,0x3
    80006398:	f2450513          	addi	a0,a0,-220 # 800092b8 <_ZZ16printIntegerTrapmE6digits+0x160>
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	5e0080e7          	jalr	1504(ra) # 8000597c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800063a4:	00500313          	li	t1,5
    thread_dispatch();
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	f2c080e7          	jalr	-212(ra) # 800012d4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800063b0:	01000513          	li	a0,16
    800063b4:	00000097          	auipc	ra,0x0
    800063b8:	f10080e7          	jalr	-240(ra) # 800062c4 <_ZL9fibonaccim>
    800063bc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInteger(result); printString("\n");
    800063c0:	00003517          	auipc	a0,0x3
    800063c4:	f0850513          	addi	a0,a0,-248 # 800092c8 <_ZZ16printIntegerTrapmE6digits+0x170>
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	5b4080e7          	jalr	1460(ra) # 8000597c <_Z11printStringPKc>
    800063d0:	00090513          	mv	a0,s2
    800063d4:	ffffd097          	auipc	ra,0xffffd
    800063d8:	010080e7          	jalr	16(ra) # 800033e4 <_Z12printIntegerm>
    800063dc:	00003517          	auipc	a0,0x3
    800063e0:	0d450513          	addi	a0,a0,212 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    800063e4:	fffff097          	auipc	ra,0xfffff
    800063e8:	598080e7          	jalr	1432(ra) # 8000597c <_Z11printStringPKc>
    800063ec:	0380006f          	j	80006424 <_ZL11workerBodyDPv+0xec>

    for (; i < 16; i++) {
        printString("D: i="); printInteger(i); printString("\n");
    800063f0:	00003517          	auipc	a0,0x3
    800063f4:	ec050513          	addi	a0,a0,-320 # 800092b0 <_ZZ16printIntegerTrapmE6digits+0x158>
    800063f8:	fffff097          	auipc	ra,0xfffff
    800063fc:	584080e7          	jalr	1412(ra) # 8000597c <_Z11printStringPKc>
    80006400:	00048513          	mv	a0,s1
    80006404:	ffffd097          	auipc	ra,0xffffd
    80006408:	fe0080e7          	jalr	-32(ra) # 800033e4 <_Z12printIntegerm>
    8000640c:	00003517          	auipc	a0,0x3
    80006410:	0a450513          	addi	a0,a0,164 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80006414:	fffff097          	auipc	ra,0xfffff
    80006418:	568080e7          	jalr	1384(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000641c:	0014849b          	addiw	s1,s1,1
    80006420:	0ff4f493          	andi	s1,s1,255
    80006424:	00f00793          	li	a5,15
    80006428:	fc97f4e3          	bgeu	a5,s1,800063f0 <_ZL11workerBodyDPv+0xb8>
    }

    printString("D finished!\n");
    8000642c:	00003517          	auipc	a0,0x3
    80006430:	eac50513          	addi	a0,a0,-340 # 800092d8 <_ZZ16printIntegerTrapmE6digits+0x180>
    80006434:	fffff097          	auipc	ra,0xfffff
    80006438:	548080e7          	jalr	1352(ra) # 8000597c <_Z11printStringPKc>
    finishedD = true;
    8000643c:	00100793          	li	a5,1
    80006440:	00005717          	auipc	a4,0x5
    80006444:	6af70d23          	sb	a5,1722(a4) # 8000bafa <_ZL9finishedD>
    thread_dispatch();
    80006448:	ffffb097          	auipc	ra,0xffffb
    8000644c:	e8c080e7          	jalr	-372(ra) # 800012d4 <_Z15thread_dispatchv>
}
    80006450:	01813083          	ld	ra,24(sp)
    80006454:	01013403          	ld	s0,16(sp)
    80006458:	00813483          	ld	s1,8(sp)
    8000645c:	00013903          	ld	s2,0(sp)
    80006460:	02010113          	addi	sp,sp,32
    80006464:	00008067          	ret

0000000080006468 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006468:	fe010113          	addi	sp,sp,-32
    8000646c:	00113c23          	sd	ra,24(sp)
    80006470:	00813823          	sd	s0,16(sp)
    80006474:	00913423          	sd	s1,8(sp)
    80006478:	01213023          	sd	s2,0(sp)
    8000647c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006480:	00000493          	li	s1,0
    80006484:	0380006f          	j	800064bc <_ZL11workerBodyCPv+0x54>
        printString("C: i="); printInteger(i); printString("\n");
    80006488:	00003517          	auipc	a0,0x3
    8000648c:	df850513          	addi	a0,a0,-520 # 80009280 <_ZZ16printIntegerTrapmE6digits+0x128>
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	4ec080e7          	jalr	1260(ra) # 8000597c <_Z11printStringPKc>
    80006498:	00048513          	mv	a0,s1
    8000649c:	ffffd097          	auipc	ra,0xffffd
    800064a0:	f48080e7          	jalr	-184(ra) # 800033e4 <_Z12printIntegerm>
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	00c50513          	addi	a0,a0,12 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    800064ac:	fffff097          	auipc	ra,0xfffff
    800064b0:	4d0080e7          	jalr	1232(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800064b4:	0014849b          	addiw	s1,s1,1
    800064b8:	0ff4f493          	andi	s1,s1,255
    800064bc:	00200793          	li	a5,2
    800064c0:	fc97f4e3          	bgeu	a5,s1,80006488 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	dc450513          	addi	a0,a0,-572 # 80009288 <_ZZ16printIntegerTrapmE6digits+0x130>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	4b0080e7          	jalr	1200(ra) # 8000597c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800064d4:	00700313          	li	t1,7
    thread_dispatch();
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	dfc080e7          	jalr	-516(ra) # 800012d4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800064e0:	00030913          	mv	s2,t1
    printString("C: t1="); printInteger(t1); printString("\n");
    800064e4:	00003517          	auipc	a0,0x3
    800064e8:	db450513          	addi	a0,a0,-588 # 80009298 <_ZZ16printIntegerTrapmE6digits+0x140>
    800064ec:	fffff097          	auipc	ra,0xfffff
    800064f0:	490080e7          	jalr	1168(ra) # 8000597c <_Z11printStringPKc>
    800064f4:	00090513          	mv	a0,s2
    800064f8:	ffffd097          	auipc	ra,0xffffd
    800064fc:	eec080e7          	jalr	-276(ra) # 800033e4 <_Z12printIntegerm>
    80006500:	00003517          	auipc	a0,0x3
    80006504:	fb050513          	addi	a0,a0,-80 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80006508:	fffff097          	auipc	ra,0xfffff
    8000650c:	474080e7          	jalr	1140(ra) # 8000597c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006510:	00c00513          	li	a0,12
    80006514:	00000097          	auipc	ra,0x0
    80006518:	db0080e7          	jalr	-592(ra) # 800062c4 <_ZL9fibonaccim>
    8000651c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInteger(result); printString("\n");
    80006520:	00003517          	auipc	a0,0x3
    80006524:	d8050513          	addi	a0,a0,-640 # 800092a0 <_ZZ16printIntegerTrapmE6digits+0x148>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	454080e7          	jalr	1108(ra) # 8000597c <_Z11printStringPKc>
    80006530:	00090513          	mv	a0,s2
    80006534:	ffffd097          	auipc	ra,0xffffd
    80006538:	eb0080e7          	jalr	-336(ra) # 800033e4 <_Z12printIntegerm>
    8000653c:	00003517          	auipc	a0,0x3
    80006540:	f7450513          	addi	a0,a0,-140 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80006544:	fffff097          	auipc	ra,0xfffff
    80006548:	438080e7          	jalr	1080(ra) # 8000597c <_Z11printStringPKc>
    8000654c:	0380006f          	j	80006584 <_ZL11workerBodyCPv+0x11c>
        printString("C: i="); printInteger(i); printString("\n");
    80006550:	00003517          	auipc	a0,0x3
    80006554:	d3050513          	addi	a0,a0,-720 # 80009280 <_ZZ16printIntegerTrapmE6digits+0x128>
    80006558:	fffff097          	auipc	ra,0xfffff
    8000655c:	424080e7          	jalr	1060(ra) # 8000597c <_Z11printStringPKc>
    80006560:	00048513          	mv	a0,s1
    80006564:	ffffd097          	auipc	ra,0xffffd
    80006568:	e80080e7          	jalr	-384(ra) # 800033e4 <_Z12printIntegerm>
    8000656c:	00003517          	auipc	a0,0x3
    80006570:	f4450513          	addi	a0,a0,-188 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80006574:	fffff097          	auipc	ra,0xfffff
    80006578:	408080e7          	jalr	1032(ra) # 8000597c <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000657c:	0014849b          	addiw	s1,s1,1
    80006580:	0ff4f493          	andi	s1,s1,255
    80006584:	00500793          	li	a5,5
    80006588:	fc97f4e3          	bgeu	a5,s1,80006550 <_ZL11workerBodyCPv+0xe8>
    printString("A finished!\n");
    8000658c:	00003517          	auipc	a0,0x3
    80006590:	ccc50513          	addi	a0,a0,-820 # 80009258 <_ZZ16printIntegerTrapmE6digits+0x100>
    80006594:	fffff097          	auipc	ra,0xfffff
    80006598:	3e8080e7          	jalr	1000(ra) # 8000597c <_Z11printStringPKc>
    finishedC = true;
    8000659c:	00100793          	li	a5,1
    800065a0:	00005717          	auipc	a4,0x5
    800065a4:	54f70da3          	sb	a5,1371(a4) # 8000bafb <_ZL9finishedC>
    thread_dispatch();
    800065a8:	ffffb097          	auipc	ra,0xffffb
    800065ac:	d2c080e7          	jalr	-724(ra) # 800012d4 <_Z15thread_dispatchv>
}
    800065b0:	01813083          	ld	ra,24(sp)
    800065b4:	01013403          	ld	s0,16(sp)
    800065b8:	00813483          	ld	s1,8(sp)
    800065bc:	00013903          	ld	s2,0(sp)
    800065c0:	02010113          	addi	sp,sp,32
    800065c4:	00008067          	ret

00000000800065c8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800065c8:	fe010113          	addi	sp,sp,-32
    800065cc:	00113c23          	sd	ra,24(sp)
    800065d0:	00813823          	sd	s0,16(sp)
    800065d4:	00913423          	sd	s1,8(sp)
    800065d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800065dc:	00000493          	li	s1,0
    800065e0:	00f00793          	li	a5,15
    800065e4:	0497e263          	bltu	a5,s1,80006628 <_ZL11workerBodyBPv+0x60>
        printString("B: i="); printInteger(i); printString("\n");
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	c8050513          	addi	a0,a0,-896 # 80009268 <_ZZ16printIntegerTrapmE6digits+0x110>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	38c080e7          	jalr	908(ra) # 8000597c <_Z11printStringPKc>
    800065f8:	00048513          	mv	a0,s1
    800065fc:	ffffd097          	auipc	ra,0xffffd
    80006600:	de8080e7          	jalr	-536(ra) # 800033e4 <_Z12printIntegerm>
    80006604:	00003517          	auipc	a0,0x3
    80006608:	eac50513          	addi	a0,a0,-340 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    8000660c:	fffff097          	auipc	ra,0xfffff
    80006610:	370080e7          	jalr	880(ra) # 8000597c <_Z11printStringPKc>
            thread_dispatch();
    80006614:	ffffb097          	auipc	ra,0xffffb
    80006618:	cc0080e7          	jalr	-832(ra) # 800012d4 <_Z15thread_dispatchv>
            asm volatile("csrr t6, sepc");
    8000661c:	14102ff3          	csrr	t6,sepc
    for (uint64 i = 0; i < 16; i++) {
    80006620:	00148493          	addi	s1,s1,1
    80006624:	fbdff06f          	j	800065e0 <_ZL11workerBodyBPv+0x18>
    printString("B finished!\n");
    80006628:	00003517          	auipc	a0,0x3
    8000662c:	c4850513          	addi	a0,a0,-952 # 80009270 <_ZZ16printIntegerTrapmE6digits+0x118>
    80006630:	fffff097          	auipc	ra,0xfffff
    80006634:	34c080e7          	jalr	844(ra) # 8000597c <_Z11printStringPKc>
    finishedB = true;
    80006638:	00100793          	li	a5,1
    8000663c:	00005717          	auipc	a4,0x5
    80006640:	4cf70023          	sb	a5,1216(a4) # 8000bafc <_ZL9finishedB>
    thread_dispatch();
    80006644:	ffffb097          	auipc	ra,0xffffb
    80006648:	c90080e7          	jalr	-880(ra) # 800012d4 <_Z15thread_dispatchv>
}
    8000664c:	01813083          	ld	ra,24(sp)
    80006650:	01013403          	ld	s0,16(sp)
    80006654:	00813483          	ld	s1,8(sp)
    80006658:	02010113          	addi	sp,sp,32
    8000665c:	00008067          	ret

0000000080006660 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006660:	fe010113          	addi	sp,sp,-32
    80006664:	00113c23          	sd	ra,24(sp)
    80006668:	00813823          	sd	s0,16(sp)
    8000666c:	00913423          	sd	s1,8(sp)
    80006670:	01213023          	sd	s2,0(sp)
    80006674:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006678:	00000913          	li	s2,0
    8000667c:	0380006f          	j	800066b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	c54080e7          	jalr	-940(ra) # 800012d4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006688:	00148493          	addi	s1,s1,1
    8000668c:	000027b7          	lui	a5,0x2
    80006690:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006694:	0097ee63          	bltu	a5,s1,800066b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006698:	00000713          	li	a4,0
    8000669c:	000077b7          	lui	a5,0x7
    800066a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066a4:	fce7eee3          	bltu	a5,a4,80006680 <_ZL11workerBodyAPv+0x20>
    800066a8:	00170713          	addi	a4,a4,1
    800066ac:	ff1ff06f          	j	8000669c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800066b0:	00190913          	addi	s2,s2,1
    800066b4:	00900793          	li	a5,9
    800066b8:	0327ec63          	bltu	a5,s2,800066f0 <_ZL11workerBodyAPv+0x90>
        printString("A: i="); printInteger(i); printString("\n"); //tODO svude je pisalo printInteger a ne printIntegereger
    800066bc:	00003517          	auipc	a0,0x3
    800066c0:	b9450513          	addi	a0,a0,-1132 # 80009250 <_ZZ16printIntegerTrapmE6digits+0xf8>
    800066c4:	fffff097          	auipc	ra,0xfffff
    800066c8:	2b8080e7          	jalr	696(ra) # 8000597c <_Z11printStringPKc>
    800066cc:	00090513          	mv	a0,s2
    800066d0:	ffffd097          	auipc	ra,0xffffd
    800066d4:	d14080e7          	jalr	-748(ra) # 800033e4 <_Z12printIntegerm>
    800066d8:	00003517          	auipc	a0,0x3
    800066dc:	dd850513          	addi	a0,a0,-552 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	29c080e7          	jalr	668(ra) # 8000597c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800066e8:	00000493          	li	s1,0
    800066ec:	fa1ff06f          	j	8000668c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800066f0:	00003517          	auipc	a0,0x3
    800066f4:	b6850513          	addi	a0,a0,-1176 # 80009258 <_ZZ16printIntegerTrapmE6digits+0x100>
    800066f8:	fffff097          	auipc	ra,0xfffff
    800066fc:	284080e7          	jalr	644(ra) # 8000597c <_Z11printStringPKc>
    finishedA = true;
    80006700:	00100793          	li	a5,1
    80006704:	00005717          	auipc	a4,0x5
    80006708:	3ef70ca3          	sb	a5,1017(a4) # 8000bafd <_ZL9finishedA>
}
    8000670c:	01813083          	ld	ra,24(sp)
    80006710:	01013403          	ld	s0,16(sp)
    80006714:	00813483          	ld	s1,8(sp)
    80006718:	00013903          	ld	s2,0(sp)
    8000671c:	02010113          	addi	sp,sp,32
    80006720:	00008067          	ret

0000000080006724 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006724:	fd010113          	addi	sp,sp,-48
    80006728:	02113423          	sd	ra,40(sp)
    8000672c:	02813023          	sd	s0,32(sp)
    80006730:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006734:	00000613          	li	a2,0
    80006738:	00000597          	auipc	a1,0x0
    8000673c:	f2858593          	addi	a1,a1,-216 # 80006660 <_ZL11workerBodyAPv>
    80006740:	fd040513          	addi	a0,s0,-48
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	bb0080e7          	jalr	-1104(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000674c:	00003517          	auipc	a0,0x3
    80006750:	b9c50513          	addi	a0,a0,-1124 # 800092e8 <_ZZ16printIntegerTrapmE6digits+0x190>
    80006754:	fffff097          	auipc	ra,0xfffff
    80006758:	228080e7          	jalr	552(ra) # 8000597c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000675c:	00000613          	li	a2,0
    80006760:	00000597          	auipc	a1,0x0
    80006764:	e6858593          	addi	a1,a1,-408 # 800065c8 <_ZL11workerBodyBPv>
    80006768:	fd840513          	addi	a0,s0,-40
    8000676c:	ffffb097          	auipc	ra,0xffffb
    80006770:	b88080e7          	jalr	-1144(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80006774:	00003517          	auipc	a0,0x3
    80006778:	b8c50513          	addi	a0,a0,-1140 # 80009300 <_ZZ16printIntegerTrapmE6digits+0x1a8>
    8000677c:	fffff097          	auipc	ra,0xfffff
    80006780:	200080e7          	jalr	512(ra) # 8000597c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006784:	00000613          	li	a2,0
    80006788:	00000597          	auipc	a1,0x0
    8000678c:	ce058593          	addi	a1,a1,-800 # 80006468 <_ZL11workerBodyCPv>
    80006790:	fe040513          	addi	a0,s0,-32
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	b60080e7          	jalr	-1184(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000679c:	00003517          	auipc	a0,0x3
    800067a0:	b7c50513          	addi	a0,a0,-1156 # 80009318 <_ZZ16printIntegerTrapmE6digits+0x1c0>
    800067a4:	fffff097          	auipc	ra,0xfffff
    800067a8:	1d8080e7          	jalr	472(ra) # 8000597c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800067ac:	00000613          	li	a2,0
    800067b0:	00000597          	auipc	a1,0x0
    800067b4:	b8858593          	addi	a1,a1,-1144 # 80006338 <_ZL11workerBodyDPv>
    800067b8:	fe840513          	addi	a0,s0,-24
    800067bc:	ffffb097          	auipc	ra,0xffffb
    800067c0:	b38080e7          	jalr	-1224(ra) # 800012f4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800067c4:	00003517          	auipc	a0,0x3
    800067c8:	b6c50513          	addi	a0,a0,-1172 # 80009330 <_ZZ16printIntegerTrapmE6digits+0x1d8>
    800067cc:	fffff097          	auipc	ra,0xfffff
    800067d0:	1b0080e7          	jalr	432(ra) # 8000597c <_Z11printStringPKc>
    800067d4:	00c0006f          	j	800067e0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800067d8:	ffffb097          	auipc	ra,0xffffb
    800067dc:	afc080e7          	jalr	-1284(ra) # 800012d4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800067e0:	00005797          	auipc	a5,0x5
    800067e4:	31d7c783          	lbu	a5,797(a5) # 8000bafd <_ZL9finishedA>
    800067e8:	fe0788e3          	beqz	a5,800067d8 <_Z16System_Mode_testv+0xb4>
    800067ec:	00005797          	auipc	a5,0x5
    800067f0:	3107c783          	lbu	a5,784(a5) # 8000bafc <_ZL9finishedB>
    800067f4:	fe0782e3          	beqz	a5,800067d8 <_Z16System_Mode_testv+0xb4>
    800067f8:	00005797          	auipc	a5,0x5
    800067fc:	3037c783          	lbu	a5,771(a5) # 8000bafb <_ZL9finishedC>
    80006800:	fc078ce3          	beqz	a5,800067d8 <_Z16System_Mode_testv+0xb4>
    80006804:	00005797          	auipc	a5,0x5
    80006808:	2f67c783          	lbu	a5,758(a5) # 8000bafa <_ZL9finishedD>
    8000680c:	fc0786e3          	beqz	a5,800067d8 <_Z16System_Mode_testv+0xb4>
    }

}
    80006810:	02813083          	ld	ra,40(sp)
    80006814:	02013403          	ld	s0,32(sp)
    80006818:	03010113          	addi	sp,sp,48
    8000681c:	00008067          	ret

0000000080006820 <_ZN6BufferC1Ei>:

uint64 l = 0;
#define LOCK() while(copy_and_swap(l, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(l, 1, 0))

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006820:	fe010113          	addi	sp,sp,-32
    80006824:	00113c23          	sd	ra,24(sp)
    80006828:	00813823          	sd	s0,16(sp)
    8000682c:	00913423          	sd	s1,8(sp)
    80006830:	01213023          	sd	s2,0(sp)
    80006834:	02010413          	addi	s0,sp,32
    80006838:	00050493          	mv	s1,a0
    8000683c:	00058913          	mv	s2,a1
    80006840:	0015879b          	addiw	a5,a1,1
    80006844:	0007851b          	sext.w	a0,a5
    80006848:	00f4a023          	sw	a5,0(s1)
    8000684c:	0004a823          	sw	zero,16(s1)
    80006850:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006854:	00251513          	slli	a0,a0,0x2
    80006858:	ffffb097          	auipc	ra,0xffffb
    8000685c:	a04080e7          	jalr	-1532(ra) # 8000125c <_Z9mem_allocm>
    80006860:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006864:	00000593          	li	a1,0
    80006868:	02048513          	addi	a0,s1,32
    8000686c:	ffffb097          	auipc	ra,0xffffb
    80006870:	b1c080e7          	jalr	-1252(ra) # 80001388 <_Z8sem_openPP3semj>
    sem_open(&spaceAvailable, _cap);
    80006874:	00090593          	mv	a1,s2
    80006878:	01848513          	addi	a0,s1,24
    8000687c:	ffffb097          	auipc	ra,0xffffb
    80006880:	b0c080e7          	jalr	-1268(ra) # 80001388 <_Z8sem_openPP3semj>
    sem_open(&mutexHead, 1);
    80006884:	00100593          	li	a1,1
    80006888:	02848513          	addi	a0,s1,40
    8000688c:	ffffb097          	auipc	ra,0xffffb
    80006890:	afc080e7          	jalr	-1284(ra) # 80001388 <_Z8sem_openPP3semj>
    sem_open(&mutexTail, 1);
    80006894:	00100593          	li	a1,1
    80006898:	03048513          	addi	a0,s1,48
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	aec080e7          	jalr	-1300(ra) # 80001388 <_Z8sem_openPP3semj>
}
    800068a4:	01813083          	ld	ra,24(sp)
    800068a8:	01013403          	ld	s0,16(sp)
    800068ac:	00813483          	ld	s1,8(sp)
    800068b0:	00013903          	ld	s2,0(sp)
    800068b4:	02010113          	addi	sp,sp,32
    800068b8:	00008067          	ret

00000000800068bc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800068bc:	fe010113          	addi	sp,sp,-32
    800068c0:	00113c23          	sd	ra,24(sp)
    800068c4:	00813823          	sd	s0,16(sp)
    800068c8:	00913423          	sd	s1,8(sp)
    800068cc:	01213023          	sd	s2,0(sp)
    800068d0:	02010413          	addi	s0,sp,32
    800068d4:	00050493          	mv	s1,a0
    800068d8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800068dc:	01853503          	ld	a0,24(a0)
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	b24080e7          	jalr	-1244(ra) # 80001404 <_Z8sem_waitP3sem>

    sem_wait(mutexTail);
    800068e8:	0304b503          	ld	a0,48(s1)
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	b18080e7          	jalr	-1256(ra) # 80001404 <_Z8sem_waitP3sem>
//    printString("upisan je broj: ");
//    printInt(val);
//    printString("\n");
//    UNLOCK();

    buffer[tail] = val;
    800068f4:	0084b783          	ld	a5,8(s1)
    800068f8:	0144a703          	lw	a4,20(s1)
    800068fc:	00271713          	slli	a4,a4,0x2
    80006900:	00e787b3          	add	a5,a5,a4
    80006904:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006908:	0144a783          	lw	a5,20(s1)
    8000690c:	0017879b          	addiw	a5,a5,1
    80006910:	0004a703          	lw	a4,0(s1)
    80006914:	02e7e7bb          	remw	a5,a5,a4
    80006918:	00f4aa23          	sw	a5,20(s1)

    sem_signal(mutexTail);
    8000691c:	0304b503          	ld	a0,48(s1)
    80006920:	ffffb097          	auipc	ra,0xffffb
    80006924:	b20080e7          	jalr	-1248(ra) # 80001440 <_Z10sem_signalP3sem>

    sem_signal(itemAvailable);
    80006928:	0204b503          	ld	a0,32(s1)
    8000692c:	ffffb097          	auipc	ra,0xffffb
    80006930:	b14080e7          	jalr	-1260(ra) # 80001440 <_Z10sem_signalP3sem>

}
    80006934:	01813083          	ld	ra,24(sp)
    80006938:	01013403          	ld	s0,16(sp)
    8000693c:	00813483          	ld	s1,8(sp)
    80006940:	00013903          	ld	s2,0(sp)
    80006944:	02010113          	addi	sp,sp,32
    80006948:	00008067          	ret

000000008000694c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000694c:	fe010113          	addi	sp,sp,-32
    80006950:	00113c23          	sd	ra,24(sp)
    80006954:	00813823          	sd	s0,16(sp)
    80006958:	00913423          	sd	s1,8(sp)
    8000695c:	01213023          	sd	s2,0(sp)
    80006960:	02010413          	addi	s0,sp,32
    80006964:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006968:	02053503          	ld	a0,32(a0)
    8000696c:	ffffb097          	auipc	ra,0xffffb
    80006970:	a98080e7          	jalr	-1384(ra) # 80001404 <_Z8sem_waitP3sem>

    sem_wait(mutexHead);
    80006974:	0284b503          	ld	a0,40(s1)
    80006978:	ffffb097          	auipc	ra,0xffffb
    8000697c:	a8c080e7          	jalr	-1396(ra) # 80001404 <_Z8sem_waitP3sem>

    int ret = buffer[head];
    80006980:	0084b703          	ld	a4,8(s1)
    80006984:	0104a783          	lw	a5,16(s1)
    80006988:	00279693          	slli	a3,a5,0x2
    8000698c:	00d70733          	add	a4,a4,a3
    80006990:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006994:	0017879b          	addiw	a5,a5,1
    80006998:	0004a703          	lw	a4,0(s1)
    8000699c:	02e7e7bb          	remw	a5,a5,a4
    800069a0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800069a4:	0284b503          	ld	a0,40(s1)
    800069a8:	ffffb097          	auipc	ra,0xffffb
    800069ac:	a98080e7          	jalr	-1384(ra) # 80001440 <_Z10sem_signalP3sem>

    sem_signal(spaceAvailable);
    800069b0:	0184b503          	ld	a0,24(s1)
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	a8c080e7          	jalr	-1396(ra) # 80001440 <_Z10sem_signalP3sem>

    return ret;
}
    800069bc:	00090513          	mv	a0,s2
    800069c0:	01813083          	ld	ra,24(sp)
    800069c4:	01013403          	ld	s0,16(sp)
    800069c8:	00813483          	ld	s1,8(sp)
    800069cc:	00013903          	ld	s2,0(sp)
    800069d0:	02010113          	addi	sp,sp,32
    800069d4:	00008067          	ret

00000000800069d8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800069d8:	fe010113          	addi	sp,sp,-32
    800069dc:	00113c23          	sd	ra,24(sp)
    800069e0:	00813823          	sd	s0,16(sp)
    800069e4:	00913423          	sd	s1,8(sp)
    800069e8:	01213023          	sd	s2,0(sp)
    800069ec:	02010413          	addi	s0,sp,32
    800069f0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800069f4:	02853503          	ld	a0,40(a0)
    800069f8:	ffffb097          	auipc	ra,0xffffb
    800069fc:	a0c080e7          	jalr	-1524(ra) # 80001404 <_Z8sem_waitP3sem>
    sem_wait(mutexTail);
    80006a00:	0304b503          	ld	a0,48(s1)
    80006a04:	ffffb097          	auipc	ra,0xffffb
    80006a08:	a00080e7          	jalr	-1536(ra) # 80001404 <_Z8sem_waitP3sem>

    if (tail >= head) {
    80006a0c:	0144a783          	lw	a5,20(s1)
    80006a10:	0104a903          	lw	s2,16(s1)
    80006a14:	0327ce63          	blt	a5,s2,80006a50 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006a18:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006a1c:	0304b503          	ld	a0,48(s1)
    80006a20:	ffffb097          	auipc	ra,0xffffb
    80006a24:	a20080e7          	jalr	-1504(ra) # 80001440 <_Z10sem_signalP3sem>
    sem_signal(mutexHead);
    80006a28:	0284b503          	ld	a0,40(s1)
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	a14080e7          	jalr	-1516(ra) # 80001440 <_Z10sem_signalP3sem>

    return ret;
}
    80006a34:	00090513          	mv	a0,s2
    80006a38:	01813083          	ld	ra,24(sp)
    80006a3c:	01013403          	ld	s0,16(sp)
    80006a40:	00813483          	ld	s1,8(sp)
    80006a44:	00013903          	ld	s2,0(sp)
    80006a48:	02010113          	addi	sp,sp,32
    80006a4c:	00008067          	ret
        ret = cap - head + tail;
    80006a50:	0004a703          	lw	a4,0(s1)
    80006a54:	4127093b          	subw	s2,a4,s2
    80006a58:	00f9093b          	addw	s2,s2,a5
    80006a5c:	fc1ff06f          	j	80006a1c <_ZN6Buffer6getCntEv+0x44>

0000000080006a60 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006a60:	fe010113          	addi	sp,sp,-32
    80006a64:	00113c23          	sd	ra,24(sp)
    80006a68:	00813823          	sd	s0,16(sp)
    80006a6c:	00913423          	sd	s1,8(sp)
    80006a70:	02010413          	addi	s0,sp,32
    80006a74:	00050493          	mv	s1,a0
    putc('\n');
    80006a78:	00a00513          	li	a0,10
    80006a7c:	ffffb097          	auipc	ra,0xffffb
    80006a80:	ab0080e7          	jalr	-1360(ra) # 8000152c <_Z4putcc>
    printString("Buffer deleted!\n");
    80006a84:	00003517          	auipc	a0,0x3
    80006a88:	8d450513          	addi	a0,a0,-1836 # 80009358 <_ZZ16printIntegerTrapmE6digits+0x200>
    80006a8c:	fffff097          	auipc	ra,0xfffff
    80006a90:	ef0080e7          	jalr	-272(ra) # 8000597c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006a94:	00048513          	mv	a0,s1
    80006a98:	00000097          	auipc	ra,0x0
    80006a9c:	f40080e7          	jalr	-192(ra) # 800069d8 <_ZN6Buffer6getCntEv>
    80006aa0:	02a05c63          	blez	a0,80006ad8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006aa4:	0084b783          	ld	a5,8(s1)
    80006aa8:	0104a703          	lw	a4,16(s1)
    80006aac:	00271713          	slli	a4,a4,0x2
    80006ab0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006ab4:	0007c503          	lbu	a0,0(a5)
    80006ab8:	ffffb097          	auipc	ra,0xffffb
    80006abc:	a74080e7          	jalr	-1420(ra) # 8000152c <_Z4putcc>
        head = (head + 1) % cap;
    80006ac0:	0104a783          	lw	a5,16(s1)
    80006ac4:	0017879b          	addiw	a5,a5,1
    80006ac8:	0004a703          	lw	a4,0(s1)
    80006acc:	02e7e7bb          	remw	a5,a5,a4
    80006ad0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006ad4:	fc1ff06f          	j	80006a94 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006ad8:	02100513          	li	a0,33
    80006adc:	ffffb097          	auipc	ra,0xffffb
    80006ae0:	a50080e7          	jalr	-1456(ra) # 8000152c <_Z4putcc>
    putc('\n');
    80006ae4:	00a00513          	li	a0,10
    80006ae8:	ffffb097          	auipc	ra,0xffffb
    80006aec:	a44080e7          	jalr	-1468(ra) # 8000152c <_Z4putcc>
    mem_free(buffer);
    80006af0:	0084b503          	ld	a0,8(s1)
    80006af4:	ffffa097          	auipc	ra,0xffffa
    80006af8:	7b4080e7          	jalr	1972(ra) # 800012a8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006afc:	0204b503          	ld	a0,32(s1)
    80006b00:	ffffb097          	auipc	ra,0xffffb
    80006b04:	8d8080e7          	jalr	-1832(ra) # 800013d8 <_Z9sem_closeP3sem>
    sem_close(spaceAvailable);
    80006b08:	0184b503          	ld	a0,24(s1)
    80006b0c:	ffffb097          	auipc	ra,0xffffb
    80006b10:	8cc080e7          	jalr	-1844(ra) # 800013d8 <_Z9sem_closeP3sem>
    sem_close(mutexTail);
    80006b14:	0304b503          	ld	a0,48(s1)
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	8c0080e7          	jalr	-1856(ra) # 800013d8 <_Z9sem_closeP3sem>
    sem_close(mutexHead);
    80006b20:	0284b503          	ld	a0,40(s1)
    80006b24:	ffffb097          	auipc	ra,0xffffb
    80006b28:	8b4080e7          	jalr	-1868(ra) # 800013d8 <_Z9sem_closeP3sem>
}
    80006b2c:	01813083          	ld	ra,24(sp)
    80006b30:	01013403          	ld	s0,16(sp)
    80006b34:	00813483          	ld	s1,8(sp)
    80006b38:	02010113          	addi	sp,sp,32
    80006b3c:	00008067          	ret

0000000080006b40 <start>:
    80006b40:	ff010113          	addi	sp,sp,-16
    80006b44:	00813423          	sd	s0,8(sp)
    80006b48:	01010413          	addi	s0,sp,16
    80006b4c:	300027f3          	csrr	a5,mstatus
    80006b50:	ffffe737          	lui	a4,0xffffe
    80006b54:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a8f>
    80006b58:	00e7f7b3          	and	a5,a5,a4
    80006b5c:	00001737          	lui	a4,0x1
    80006b60:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006b64:	00e7e7b3          	or	a5,a5,a4
    80006b68:	30079073          	csrw	mstatus,a5
    80006b6c:	00000797          	auipc	a5,0x0
    80006b70:	16078793          	addi	a5,a5,352 # 80006ccc <system_main>
    80006b74:	34179073          	csrw	mepc,a5
    80006b78:	00000793          	li	a5,0
    80006b7c:	18079073          	csrw	satp,a5
    80006b80:	000107b7          	lui	a5,0x10
    80006b84:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006b88:	30279073          	csrw	medeleg,a5
    80006b8c:	30379073          	csrw	mideleg,a5
    80006b90:	104027f3          	csrr	a5,sie
    80006b94:	2227e793          	ori	a5,a5,546
    80006b98:	10479073          	csrw	sie,a5
    80006b9c:	fff00793          	li	a5,-1
    80006ba0:	00a7d793          	srli	a5,a5,0xa
    80006ba4:	3b079073          	csrw	pmpaddr0,a5
    80006ba8:	00f00793          	li	a5,15
    80006bac:	3a079073          	csrw	pmpcfg0,a5
    80006bb0:	f14027f3          	csrr	a5,mhartid
    80006bb4:	0200c737          	lui	a4,0x200c
    80006bb8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006bbc:	0007869b          	sext.w	a3,a5
    80006bc0:	00269713          	slli	a4,a3,0x2
    80006bc4:	000f4637          	lui	a2,0xf4
    80006bc8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006bcc:	00d70733          	add	a4,a4,a3
    80006bd0:	0037979b          	slliw	a5,a5,0x3
    80006bd4:	020046b7          	lui	a3,0x2004
    80006bd8:	00d787b3          	add	a5,a5,a3
    80006bdc:	00c585b3          	add	a1,a1,a2
    80006be0:	00371693          	slli	a3,a4,0x3
    80006be4:	00005717          	auipc	a4,0x5
    80006be8:	f2c70713          	addi	a4,a4,-212 # 8000bb10 <timer_scratch>
    80006bec:	00b7b023          	sd	a1,0(a5)
    80006bf0:	00d70733          	add	a4,a4,a3
    80006bf4:	00f73c23          	sd	a5,24(a4)
    80006bf8:	02c73023          	sd	a2,32(a4)
    80006bfc:	34071073          	csrw	mscratch,a4
    80006c00:	00000797          	auipc	a5,0x0
    80006c04:	6e078793          	addi	a5,a5,1760 # 800072e0 <timervec>
    80006c08:	30579073          	csrw	mtvec,a5
    80006c0c:	300027f3          	csrr	a5,mstatus
    80006c10:	0087e793          	ori	a5,a5,8
    80006c14:	30079073          	csrw	mstatus,a5
    80006c18:	304027f3          	csrr	a5,mie
    80006c1c:	0807e793          	ori	a5,a5,128
    80006c20:	30479073          	csrw	mie,a5
    80006c24:	f14027f3          	csrr	a5,mhartid
    80006c28:	0007879b          	sext.w	a5,a5
    80006c2c:	00078213          	mv	tp,a5
    80006c30:	30200073          	mret
    80006c34:	00813403          	ld	s0,8(sp)
    80006c38:	01010113          	addi	sp,sp,16
    80006c3c:	00008067          	ret

0000000080006c40 <timerinit>:
    80006c40:	ff010113          	addi	sp,sp,-16
    80006c44:	00813423          	sd	s0,8(sp)
    80006c48:	01010413          	addi	s0,sp,16
    80006c4c:	f14027f3          	csrr	a5,mhartid
    80006c50:	0200c737          	lui	a4,0x200c
    80006c54:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c58:	0007869b          	sext.w	a3,a5
    80006c5c:	00269713          	slli	a4,a3,0x2
    80006c60:	000f4637          	lui	a2,0xf4
    80006c64:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c68:	00d70733          	add	a4,a4,a3
    80006c6c:	0037979b          	slliw	a5,a5,0x3
    80006c70:	020046b7          	lui	a3,0x2004
    80006c74:	00d787b3          	add	a5,a5,a3
    80006c78:	00c585b3          	add	a1,a1,a2
    80006c7c:	00371693          	slli	a3,a4,0x3
    80006c80:	00005717          	auipc	a4,0x5
    80006c84:	e9070713          	addi	a4,a4,-368 # 8000bb10 <timer_scratch>
    80006c88:	00b7b023          	sd	a1,0(a5)
    80006c8c:	00d70733          	add	a4,a4,a3
    80006c90:	00f73c23          	sd	a5,24(a4)
    80006c94:	02c73023          	sd	a2,32(a4)
    80006c98:	34071073          	csrw	mscratch,a4
    80006c9c:	00000797          	auipc	a5,0x0
    80006ca0:	64478793          	addi	a5,a5,1604 # 800072e0 <timervec>
    80006ca4:	30579073          	csrw	mtvec,a5
    80006ca8:	300027f3          	csrr	a5,mstatus
    80006cac:	0087e793          	ori	a5,a5,8
    80006cb0:	30079073          	csrw	mstatus,a5
    80006cb4:	304027f3          	csrr	a5,mie
    80006cb8:	0807e793          	ori	a5,a5,128
    80006cbc:	30479073          	csrw	mie,a5
    80006cc0:	00813403          	ld	s0,8(sp)
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00008067          	ret

0000000080006ccc <system_main>:
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00813823          	sd	s0,16(sp)
    80006cd4:	00913423          	sd	s1,8(sp)
    80006cd8:	00113c23          	sd	ra,24(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	00000097          	auipc	ra,0x0
    80006ce4:	0c4080e7          	jalr	196(ra) # 80006da4 <cpuid>
    80006ce8:	00005497          	auipc	s1,0x5
    80006cec:	d2848493          	addi	s1,s1,-728 # 8000ba10 <started>
    80006cf0:	02050263          	beqz	a0,80006d14 <system_main+0x48>
    80006cf4:	0004a783          	lw	a5,0(s1)
    80006cf8:	0007879b          	sext.w	a5,a5
    80006cfc:	fe078ce3          	beqz	a5,80006cf4 <system_main+0x28>
    80006d00:	0ff0000f          	fence
    80006d04:	00003517          	auipc	a0,0x3
    80006d08:	92450513          	addi	a0,a0,-1756 # 80009628 <_ZZ16printIntegerTrapmE6digits+0x4d0>
    80006d0c:	00001097          	auipc	ra,0x1
    80006d10:	a70080e7          	jalr	-1424(ra) # 8000777c <panic>
    80006d14:	00001097          	auipc	ra,0x1
    80006d18:	9c4080e7          	jalr	-1596(ra) # 800076d8 <consoleinit>
    80006d1c:	00001097          	auipc	ra,0x1
    80006d20:	150080e7          	jalr	336(ra) # 80007e6c <printfinit>
    80006d24:	00002517          	auipc	a0,0x2
    80006d28:	78c50513          	addi	a0,a0,1932 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80006d2c:	00001097          	auipc	ra,0x1
    80006d30:	aac080e7          	jalr	-1364(ra) # 800077d8 <__printf>
    80006d34:	00003517          	auipc	a0,0x3
    80006d38:	8c450513          	addi	a0,a0,-1852 # 800095f8 <_ZZ16printIntegerTrapmE6digits+0x4a0>
    80006d3c:	00001097          	auipc	ra,0x1
    80006d40:	a9c080e7          	jalr	-1380(ra) # 800077d8 <__printf>
    80006d44:	00002517          	auipc	a0,0x2
    80006d48:	76c50513          	addi	a0,a0,1900 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    80006d4c:	00001097          	auipc	ra,0x1
    80006d50:	a8c080e7          	jalr	-1396(ra) # 800077d8 <__printf>
    80006d54:	00001097          	auipc	ra,0x1
    80006d58:	4a4080e7          	jalr	1188(ra) # 800081f8 <kinit>
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	148080e7          	jalr	328(ra) # 80006ea4 <trapinit>
    80006d64:	00000097          	auipc	ra,0x0
    80006d68:	16c080e7          	jalr	364(ra) # 80006ed0 <trapinithart>
    80006d6c:	00000097          	auipc	ra,0x0
    80006d70:	5b4080e7          	jalr	1460(ra) # 80007320 <plicinit>
    80006d74:	00000097          	auipc	ra,0x0
    80006d78:	5d4080e7          	jalr	1492(ra) # 80007348 <plicinithart>
    80006d7c:	00000097          	auipc	ra,0x0
    80006d80:	078080e7          	jalr	120(ra) # 80006df4 <userinit>
    80006d84:	0ff0000f          	fence
    80006d88:	00100793          	li	a5,1
    80006d8c:	00003517          	auipc	a0,0x3
    80006d90:	88450513          	addi	a0,a0,-1916 # 80009610 <_ZZ16printIntegerTrapmE6digits+0x4b8>
    80006d94:	00f4a023          	sw	a5,0(s1)
    80006d98:	00001097          	auipc	ra,0x1
    80006d9c:	a40080e7          	jalr	-1472(ra) # 800077d8 <__printf>
    80006da0:	0000006f          	j	80006da0 <system_main+0xd4>

0000000080006da4 <cpuid>:
    80006da4:	ff010113          	addi	sp,sp,-16
    80006da8:	00813423          	sd	s0,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	00020513          	mv	a0,tp
    80006db4:	00813403          	ld	s0,8(sp)
    80006db8:	0005051b          	sext.w	a0,a0
    80006dbc:	01010113          	addi	sp,sp,16
    80006dc0:	00008067          	ret

0000000080006dc4 <mycpu>:
    80006dc4:	ff010113          	addi	sp,sp,-16
    80006dc8:	00813423          	sd	s0,8(sp)
    80006dcc:	01010413          	addi	s0,sp,16
    80006dd0:	00020793          	mv	a5,tp
    80006dd4:	00813403          	ld	s0,8(sp)
    80006dd8:	0007879b          	sext.w	a5,a5
    80006ddc:	00779793          	slli	a5,a5,0x7
    80006de0:	00006517          	auipc	a0,0x6
    80006de4:	d6050513          	addi	a0,a0,-672 # 8000cb40 <cpus>
    80006de8:	00f50533          	add	a0,a0,a5
    80006dec:	01010113          	addi	sp,sp,16
    80006df0:	00008067          	ret

0000000080006df4 <userinit>:
    80006df4:	ff010113          	addi	sp,sp,-16
    80006df8:	00813423          	sd	s0,8(sp)
    80006dfc:	01010413          	addi	s0,sp,16
    80006e00:	00813403          	ld	s0,8(sp)
    80006e04:	01010113          	addi	sp,sp,16
    80006e08:	ffffb317          	auipc	t1,0xffffb
    80006e0c:	bd830067          	jr	-1064(t1) # 800019e0 <main>

0000000080006e10 <either_copyout>:
    80006e10:	ff010113          	addi	sp,sp,-16
    80006e14:	00813023          	sd	s0,0(sp)
    80006e18:	00113423          	sd	ra,8(sp)
    80006e1c:	01010413          	addi	s0,sp,16
    80006e20:	02051663          	bnez	a0,80006e4c <either_copyout+0x3c>
    80006e24:	00058513          	mv	a0,a1
    80006e28:	00060593          	mv	a1,a2
    80006e2c:	0006861b          	sext.w	a2,a3
    80006e30:	00002097          	auipc	ra,0x2
    80006e34:	c54080e7          	jalr	-940(ra) # 80008a84 <__memmove>
    80006e38:	00813083          	ld	ra,8(sp)
    80006e3c:	00013403          	ld	s0,0(sp)
    80006e40:	00000513          	li	a0,0
    80006e44:	01010113          	addi	sp,sp,16
    80006e48:	00008067          	ret
    80006e4c:	00003517          	auipc	a0,0x3
    80006e50:	80450513          	addi	a0,a0,-2044 # 80009650 <_ZZ16printIntegerTrapmE6digits+0x4f8>
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	928080e7          	jalr	-1752(ra) # 8000777c <panic>

0000000080006e5c <either_copyin>:
    80006e5c:	ff010113          	addi	sp,sp,-16
    80006e60:	00813023          	sd	s0,0(sp)
    80006e64:	00113423          	sd	ra,8(sp)
    80006e68:	01010413          	addi	s0,sp,16
    80006e6c:	02059463          	bnez	a1,80006e94 <either_copyin+0x38>
    80006e70:	00060593          	mv	a1,a2
    80006e74:	0006861b          	sext.w	a2,a3
    80006e78:	00002097          	auipc	ra,0x2
    80006e7c:	c0c080e7          	jalr	-1012(ra) # 80008a84 <__memmove>
    80006e80:	00813083          	ld	ra,8(sp)
    80006e84:	00013403          	ld	s0,0(sp)
    80006e88:	00000513          	li	a0,0
    80006e8c:	01010113          	addi	sp,sp,16
    80006e90:	00008067          	ret
    80006e94:	00002517          	auipc	a0,0x2
    80006e98:	7e450513          	addi	a0,a0,2020 # 80009678 <_ZZ16printIntegerTrapmE6digits+0x520>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	8e0080e7          	jalr	-1824(ra) # 8000777c <panic>

0000000080006ea4 <trapinit>:
    80006ea4:	ff010113          	addi	sp,sp,-16
    80006ea8:	00813423          	sd	s0,8(sp)
    80006eac:	01010413          	addi	s0,sp,16
    80006eb0:	00813403          	ld	s0,8(sp)
    80006eb4:	00002597          	auipc	a1,0x2
    80006eb8:	7ec58593          	addi	a1,a1,2028 # 800096a0 <_ZZ16printIntegerTrapmE6digits+0x548>
    80006ebc:	00006517          	auipc	a0,0x6
    80006ec0:	d0450513          	addi	a0,a0,-764 # 8000cbc0 <tickslock>
    80006ec4:	01010113          	addi	sp,sp,16
    80006ec8:	00001317          	auipc	t1,0x1
    80006ecc:	5c030067          	jr	1472(t1) # 80008488 <initlock>

0000000080006ed0 <trapinithart>:
    80006ed0:	ff010113          	addi	sp,sp,-16
    80006ed4:	00813423          	sd	s0,8(sp)
    80006ed8:	01010413          	addi	s0,sp,16
    80006edc:	00000797          	auipc	a5,0x0
    80006ee0:	2f478793          	addi	a5,a5,756 # 800071d0 <kernelvec>
    80006ee4:	10579073          	csrw	stvec,a5
    80006ee8:	00813403          	ld	s0,8(sp)
    80006eec:	01010113          	addi	sp,sp,16
    80006ef0:	00008067          	ret

0000000080006ef4 <usertrap>:
    80006ef4:	ff010113          	addi	sp,sp,-16
    80006ef8:	00813423          	sd	s0,8(sp)
    80006efc:	01010413          	addi	s0,sp,16
    80006f00:	00813403          	ld	s0,8(sp)
    80006f04:	01010113          	addi	sp,sp,16
    80006f08:	00008067          	ret

0000000080006f0c <usertrapret>:
    80006f0c:	ff010113          	addi	sp,sp,-16
    80006f10:	00813423          	sd	s0,8(sp)
    80006f14:	01010413          	addi	s0,sp,16
    80006f18:	00813403          	ld	s0,8(sp)
    80006f1c:	01010113          	addi	sp,sp,16
    80006f20:	00008067          	ret

0000000080006f24 <kerneltrap>:
    80006f24:	fe010113          	addi	sp,sp,-32
    80006f28:	00813823          	sd	s0,16(sp)
    80006f2c:	00113c23          	sd	ra,24(sp)
    80006f30:	00913423          	sd	s1,8(sp)
    80006f34:	02010413          	addi	s0,sp,32
    80006f38:	142025f3          	csrr	a1,scause
    80006f3c:	100027f3          	csrr	a5,sstatus
    80006f40:	0027f793          	andi	a5,a5,2
    80006f44:	10079c63          	bnez	a5,8000705c <kerneltrap+0x138>
    80006f48:	142027f3          	csrr	a5,scause
    80006f4c:	0207ce63          	bltz	a5,80006f88 <kerneltrap+0x64>
    80006f50:	00002517          	auipc	a0,0x2
    80006f54:	79850513          	addi	a0,a0,1944 # 800096e8 <_ZZ16printIntegerTrapmE6digits+0x590>
    80006f58:	00001097          	auipc	ra,0x1
    80006f5c:	880080e7          	jalr	-1920(ra) # 800077d8 <__printf>
    80006f60:	141025f3          	csrr	a1,sepc
    80006f64:	14302673          	csrr	a2,stval
    80006f68:	00002517          	auipc	a0,0x2
    80006f6c:	79050513          	addi	a0,a0,1936 # 800096f8 <_ZZ16printIntegerTrapmE6digits+0x5a0>
    80006f70:	00001097          	auipc	ra,0x1
    80006f74:	868080e7          	jalr	-1944(ra) # 800077d8 <__printf>
    80006f78:	00002517          	auipc	a0,0x2
    80006f7c:	79850513          	addi	a0,a0,1944 # 80009710 <_ZZ16printIntegerTrapmE6digits+0x5b8>
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	7fc080e7          	jalr	2044(ra) # 8000777c <panic>
    80006f88:	0ff7f713          	andi	a4,a5,255
    80006f8c:	00900693          	li	a3,9
    80006f90:	04d70063          	beq	a4,a3,80006fd0 <kerneltrap+0xac>
    80006f94:	fff00713          	li	a4,-1
    80006f98:	03f71713          	slli	a4,a4,0x3f
    80006f9c:	00170713          	addi	a4,a4,1
    80006fa0:	fae798e3          	bne	a5,a4,80006f50 <kerneltrap+0x2c>
    80006fa4:	00000097          	auipc	ra,0x0
    80006fa8:	e00080e7          	jalr	-512(ra) # 80006da4 <cpuid>
    80006fac:	06050663          	beqz	a0,80007018 <kerneltrap+0xf4>
    80006fb0:	144027f3          	csrr	a5,sip
    80006fb4:	ffd7f793          	andi	a5,a5,-3
    80006fb8:	14479073          	csrw	sip,a5
    80006fbc:	01813083          	ld	ra,24(sp)
    80006fc0:	01013403          	ld	s0,16(sp)
    80006fc4:	00813483          	ld	s1,8(sp)
    80006fc8:	02010113          	addi	sp,sp,32
    80006fcc:	00008067          	ret
    80006fd0:	00000097          	auipc	ra,0x0
    80006fd4:	3c4080e7          	jalr	964(ra) # 80007394 <plic_claim>
    80006fd8:	00a00793          	li	a5,10
    80006fdc:	00050493          	mv	s1,a0
    80006fe0:	06f50863          	beq	a0,a5,80007050 <kerneltrap+0x12c>
    80006fe4:	fc050ce3          	beqz	a0,80006fbc <kerneltrap+0x98>
    80006fe8:	00050593          	mv	a1,a0
    80006fec:	00002517          	auipc	a0,0x2
    80006ff0:	6dc50513          	addi	a0,a0,1756 # 800096c8 <_ZZ16printIntegerTrapmE6digits+0x570>
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	7e4080e7          	jalr	2020(ra) # 800077d8 <__printf>
    80006ffc:	01013403          	ld	s0,16(sp)
    80007000:	01813083          	ld	ra,24(sp)
    80007004:	00048513          	mv	a0,s1
    80007008:	00813483          	ld	s1,8(sp)
    8000700c:	02010113          	addi	sp,sp,32
    80007010:	00000317          	auipc	t1,0x0
    80007014:	3bc30067          	jr	956(t1) # 800073cc <plic_complete>
    80007018:	00006517          	auipc	a0,0x6
    8000701c:	ba850513          	addi	a0,a0,-1112 # 8000cbc0 <tickslock>
    80007020:	00001097          	auipc	ra,0x1
    80007024:	48c080e7          	jalr	1164(ra) # 800084ac <acquire>
    80007028:	00005717          	auipc	a4,0x5
    8000702c:	9ec70713          	addi	a4,a4,-1556 # 8000ba14 <ticks>
    80007030:	00072783          	lw	a5,0(a4)
    80007034:	00006517          	auipc	a0,0x6
    80007038:	b8c50513          	addi	a0,a0,-1140 # 8000cbc0 <tickslock>
    8000703c:	0017879b          	addiw	a5,a5,1
    80007040:	00f72023          	sw	a5,0(a4)
    80007044:	00001097          	auipc	ra,0x1
    80007048:	534080e7          	jalr	1332(ra) # 80008578 <release>
    8000704c:	f65ff06f          	j	80006fb0 <kerneltrap+0x8c>
    80007050:	00001097          	auipc	ra,0x1
    80007054:	090080e7          	jalr	144(ra) # 800080e0 <uartintr>
    80007058:	fa5ff06f          	j	80006ffc <kerneltrap+0xd8>
    8000705c:	00002517          	auipc	a0,0x2
    80007060:	64c50513          	addi	a0,a0,1612 # 800096a8 <_ZZ16printIntegerTrapmE6digits+0x550>
    80007064:	00000097          	auipc	ra,0x0
    80007068:	718080e7          	jalr	1816(ra) # 8000777c <panic>

000000008000706c <clockintr>:
    8000706c:	fe010113          	addi	sp,sp,-32
    80007070:	00813823          	sd	s0,16(sp)
    80007074:	00913423          	sd	s1,8(sp)
    80007078:	00113c23          	sd	ra,24(sp)
    8000707c:	02010413          	addi	s0,sp,32
    80007080:	00006497          	auipc	s1,0x6
    80007084:	b4048493          	addi	s1,s1,-1216 # 8000cbc0 <tickslock>
    80007088:	00048513          	mv	a0,s1
    8000708c:	00001097          	auipc	ra,0x1
    80007090:	420080e7          	jalr	1056(ra) # 800084ac <acquire>
    80007094:	00005717          	auipc	a4,0x5
    80007098:	98070713          	addi	a4,a4,-1664 # 8000ba14 <ticks>
    8000709c:	00072783          	lw	a5,0(a4)
    800070a0:	01013403          	ld	s0,16(sp)
    800070a4:	01813083          	ld	ra,24(sp)
    800070a8:	00048513          	mv	a0,s1
    800070ac:	0017879b          	addiw	a5,a5,1
    800070b0:	00813483          	ld	s1,8(sp)
    800070b4:	00f72023          	sw	a5,0(a4)
    800070b8:	02010113          	addi	sp,sp,32
    800070bc:	00001317          	auipc	t1,0x1
    800070c0:	4bc30067          	jr	1212(t1) # 80008578 <release>

00000000800070c4 <devintr>:
    800070c4:	142027f3          	csrr	a5,scause
    800070c8:	00000513          	li	a0,0
    800070cc:	0007c463          	bltz	a5,800070d4 <devintr+0x10>
    800070d0:	00008067          	ret
    800070d4:	fe010113          	addi	sp,sp,-32
    800070d8:	00813823          	sd	s0,16(sp)
    800070dc:	00113c23          	sd	ra,24(sp)
    800070e0:	00913423          	sd	s1,8(sp)
    800070e4:	02010413          	addi	s0,sp,32
    800070e8:	0ff7f713          	andi	a4,a5,255
    800070ec:	00900693          	li	a3,9
    800070f0:	04d70c63          	beq	a4,a3,80007148 <devintr+0x84>
    800070f4:	fff00713          	li	a4,-1
    800070f8:	03f71713          	slli	a4,a4,0x3f
    800070fc:	00170713          	addi	a4,a4,1
    80007100:	00e78c63          	beq	a5,a4,80007118 <devintr+0x54>
    80007104:	01813083          	ld	ra,24(sp)
    80007108:	01013403          	ld	s0,16(sp)
    8000710c:	00813483          	ld	s1,8(sp)
    80007110:	02010113          	addi	sp,sp,32
    80007114:	00008067          	ret
    80007118:	00000097          	auipc	ra,0x0
    8000711c:	c8c080e7          	jalr	-884(ra) # 80006da4 <cpuid>
    80007120:	06050663          	beqz	a0,8000718c <devintr+0xc8>
    80007124:	144027f3          	csrr	a5,sip
    80007128:	ffd7f793          	andi	a5,a5,-3
    8000712c:	14479073          	csrw	sip,a5
    80007130:	01813083          	ld	ra,24(sp)
    80007134:	01013403          	ld	s0,16(sp)
    80007138:	00813483          	ld	s1,8(sp)
    8000713c:	00200513          	li	a0,2
    80007140:	02010113          	addi	sp,sp,32
    80007144:	00008067          	ret
    80007148:	00000097          	auipc	ra,0x0
    8000714c:	24c080e7          	jalr	588(ra) # 80007394 <plic_claim>
    80007150:	00a00793          	li	a5,10
    80007154:	00050493          	mv	s1,a0
    80007158:	06f50663          	beq	a0,a5,800071c4 <devintr+0x100>
    8000715c:	00100513          	li	a0,1
    80007160:	fa0482e3          	beqz	s1,80007104 <devintr+0x40>
    80007164:	00048593          	mv	a1,s1
    80007168:	00002517          	auipc	a0,0x2
    8000716c:	56050513          	addi	a0,a0,1376 # 800096c8 <_ZZ16printIntegerTrapmE6digits+0x570>
    80007170:	00000097          	auipc	ra,0x0
    80007174:	668080e7          	jalr	1640(ra) # 800077d8 <__printf>
    80007178:	00048513          	mv	a0,s1
    8000717c:	00000097          	auipc	ra,0x0
    80007180:	250080e7          	jalr	592(ra) # 800073cc <plic_complete>
    80007184:	00100513          	li	a0,1
    80007188:	f7dff06f          	j	80007104 <devintr+0x40>
    8000718c:	00006517          	auipc	a0,0x6
    80007190:	a3450513          	addi	a0,a0,-1484 # 8000cbc0 <tickslock>
    80007194:	00001097          	auipc	ra,0x1
    80007198:	318080e7          	jalr	792(ra) # 800084ac <acquire>
    8000719c:	00005717          	auipc	a4,0x5
    800071a0:	87870713          	addi	a4,a4,-1928 # 8000ba14 <ticks>
    800071a4:	00072783          	lw	a5,0(a4)
    800071a8:	00006517          	auipc	a0,0x6
    800071ac:	a1850513          	addi	a0,a0,-1512 # 8000cbc0 <tickslock>
    800071b0:	0017879b          	addiw	a5,a5,1
    800071b4:	00f72023          	sw	a5,0(a4)
    800071b8:	00001097          	auipc	ra,0x1
    800071bc:	3c0080e7          	jalr	960(ra) # 80008578 <release>
    800071c0:	f65ff06f          	j	80007124 <devintr+0x60>
    800071c4:	00001097          	auipc	ra,0x1
    800071c8:	f1c080e7          	jalr	-228(ra) # 800080e0 <uartintr>
    800071cc:	fadff06f          	j	80007178 <devintr+0xb4>

00000000800071d0 <kernelvec>:
    800071d0:	f0010113          	addi	sp,sp,-256
    800071d4:	00113023          	sd	ra,0(sp)
    800071d8:	00213423          	sd	sp,8(sp)
    800071dc:	00313823          	sd	gp,16(sp)
    800071e0:	00413c23          	sd	tp,24(sp)
    800071e4:	02513023          	sd	t0,32(sp)
    800071e8:	02613423          	sd	t1,40(sp)
    800071ec:	02713823          	sd	t2,48(sp)
    800071f0:	02813c23          	sd	s0,56(sp)
    800071f4:	04913023          	sd	s1,64(sp)
    800071f8:	04a13423          	sd	a0,72(sp)
    800071fc:	04b13823          	sd	a1,80(sp)
    80007200:	04c13c23          	sd	a2,88(sp)
    80007204:	06d13023          	sd	a3,96(sp)
    80007208:	06e13423          	sd	a4,104(sp)
    8000720c:	06f13823          	sd	a5,112(sp)
    80007210:	07013c23          	sd	a6,120(sp)
    80007214:	09113023          	sd	a7,128(sp)
    80007218:	09213423          	sd	s2,136(sp)
    8000721c:	09313823          	sd	s3,144(sp)
    80007220:	09413c23          	sd	s4,152(sp)
    80007224:	0b513023          	sd	s5,160(sp)
    80007228:	0b613423          	sd	s6,168(sp)
    8000722c:	0b713823          	sd	s7,176(sp)
    80007230:	0b813c23          	sd	s8,184(sp)
    80007234:	0d913023          	sd	s9,192(sp)
    80007238:	0da13423          	sd	s10,200(sp)
    8000723c:	0db13823          	sd	s11,208(sp)
    80007240:	0dc13c23          	sd	t3,216(sp)
    80007244:	0fd13023          	sd	t4,224(sp)
    80007248:	0fe13423          	sd	t5,232(sp)
    8000724c:	0ff13823          	sd	t6,240(sp)
    80007250:	cd5ff0ef          	jal	ra,80006f24 <kerneltrap>
    80007254:	00013083          	ld	ra,0(sp)
    80007258:	00813103          	ld	sp,8(sp)
    8000725c:	01013183          	ld	gp,16(sp)
    80007260:	02013283          	ld	t0,32(sp)
    80007264:	02813303          	ld	t1,40(sp)
    80007268:	03013383          	ld	t2,48(sp)
    8000726c:	03813403          	ld	s0,56(sp)
    80007270:	04013483          	ld	s1,64(sp)
    80007274:	04813503          	ld	a0,72(sp)
    80007278:	05013583          	ld	a1,80(sp)
    8000727c:	05813603          	ld	a2,88(sp)
    80007280:	06013683          	ld	a3,96(sp)
    80007284:	06813703          	ld	a4,104(sp)
    80007288:	07013783          	ld	a5,112(sp)
    8000728c:	07813803          	ld	a6,120(sp)
    80007290:	08013883          	ld	a7,128(sp)
    80007294:	08813903          	ld	s2,136(sp)
    80007298:	09013983          	ld	s3,144(sp)
    8000729c:	09813a03          	ld	s4,152(sp)
    800072a0:	0a013a83          	ld	s5,160(sp)
    800072a4:	0a813b03          	ld	s6,168(sp)
    800072a8:	0b013b83          	ld	s7,176(sp)
    800072ac:	0b813c03          	ld	s8,184(sp)
    800072b0:	0c013c83          	ld	s9,192(sp)
    800072b4:	0c813d03          	ld	s10,200(sp)
    800072b8:	0d013d83          	ld	s11,208(sp)
    800072bc:	0d813e03          	ld	t3,216(sp)
    800072c0:	0e013e83          	ld	t4,224(sp)
    800072c4:	0e813f03          	ld	t5,232(sp)
    800072c8:	0f013f83          	ld	t6,240(sp)
    800072cc:	10010113          	addi	sp,sp,256
    800072d0:	10200073          	sret
    800072d4:	00000013          	nop
    800072d8:	00000013          	nop
    800072dc:	00000013          	nop

00000000800072e0 <timervec>:
    800072e0:	34051573          	csrrw	a0,mscratch,a0
    800072e4:	00b53023          	sd	a1,0(a0)
    800072e8:	00c53423          	sd	a2,8(a0)
    800072ec:	00d53823          	sd	a3,16(a0)
    800072f0:	01853583          	ld	a1,24(a0)
    800072f4:	02053603          	ld	a2,32(a0)
    800072f8:	0005b683          	ld	a3,0(a1)
    800072fc:	00c686b3          	add	a3,a3,a2
    80007300:	00d5b023          	sd	a3,0(a1)
    80007304:	00200593          	li	a1,2
    80007308:	14459073          	csrw	sip,a1
    8000730c:	01053683          	ld	a3,16(a0)
    80007310:	00853603          	ld	a2,8(a0)
    80007314:	00053583          	ld	a1,0(a0)
    80007318:	34051573          	csrrw	a0,mscratch,a0
    8000731c:	30200073          	mret

0000000080007320 <plicinit>:
    80007320:	ff010113          	addi	sp,sp,-16
    80007324:	00813423          	sd	s0,8(sp)
    80007328:	01010413          	addi	s0,sp,16
    8000732c:	00813403          	ld	s0,8(sp)
    80007330:	0c0007b7          	lui	a5,0xc000
    80007334:	00100713          	li	a4,1
    80007338:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000733c:	00e7a223          	sw	a4,4(a5)
    80007340:	01010113          	addi	sp,sp,16
    80007344:	00008067          	ret

0000000080007348 <plicinithart>:
    80007348:	ff010113          	addi	sp,sp,-16
    8000734c:	00813023          	sd	s0,0(sp)
    80007350:	00113423          	sd	ra,8(sp)
    80007354:	01010413          	addi	s0,sp,16
    80007358:	00000097          	auipc	ra,0x0
    8000735c:	a4c080e7          	jalr	-1460(ra) # 80006da4 <cpuid>
    80007360:	0085171b          	slliw	a4,a0,0x8
    80007364:	0c0027b7          	lui	a5,0xc002
    80007368:	00e787b3          	add	a5,a5,a4
    8000736c:	40200713          	li	a4,1026
    80007370:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007374:	00813083          	ld	ra,8(sp)
    80007378:	00013403          	ld	s0,0(sp)
    8000737c:	00d5151b          	slliw	a0,a0,0xd
    80007380:	0c2017b7          	lui	a5,0xc201
    80007384:	00a78533          	add	a0,a5,a0
    80007388:	00052023          	sw	zero,0(a0)
    8000738c:	01010113          	addi	sp,sp,16
    80007390:	00008067          	ret

0000000080007394 <plic_claim>:
    80007394:	ff010113          	addi	sp,sp,-16
    80007398:	00813023          	sd	s0,0(sp)
    8000739c:	00113423          	sd	ra,8(sp)
    800073a0:	01010413          	addi	s0,sp,16
    800073a4:	00000097          	auipc	ra,0x0
    800073a8:	a00080e7          	jalr	-1536(ra) # 80006da4 <cpuid>
    800073ac:	00813083          	ld	ra,8(sp)
    800073b0:	00013403          	ld	s0,0(sp)
    800073b4:	00d5151b          	slliw	a0,a0,0xd
    800073b8:	0c2017b7          	lui	a5,0xc201
    800073bc:	00a78533          	add	a0,a5,a0
    800073c0:	00452503          	lw	a0,4(a0)
    800073c4:	01010113          	addi	sp,sp,16
    800073c8:	00008067          	ret

00000000800073cc <plic_complete>:
    800073cc:	fe010113          	addi	sp,sp,-32
    800073d0:	00813823          	sd	s0,16(sp)
    800073d4:	00913423          	sd	s1,8(sp)
    800073d8:	00113c23          	sd	ra,24(sp)
    800073dc:	02010413          	addi	s0,sp,32
    800073e0:	00050493          	mv	s1,a0
    800073e4:	00000097          	auipc	ra,0x0
    800073e8:	9c0080e7          	jalr	-1600(ra) # 80006da4 <cpuid>
    800073ec:	01813083          	ld	ra,24(sp)
    800073f0:	01013403          	ld	s0,16(sp)
    800073f4:	00d5179b          	slliw	a5,a0,0xd
    800073f8:	0c201737          	lui	a4,0xc201
    800073fc:	00f707b3          	add	a5,a4,a5
    80007400:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007404:	00813483          	ld	s1,8(sp)
    80007408:	02010113          	addi	sp,sp,32
    8000740c:	00008067          	ret

0000000080007410 <consolewrite>:
    80007410:	fb010113          	addi	sp,sp,-80
    80007414:	04813023          	sd	s0,64(sp)
    80007418:	04113423          	sd	ra,72(sp)
    8000741c:	02913c23          	sd	s1,56(sp)
    80007420:	03213823          	sd	s2,48(sp)
    80007424:	03313423          	sd	s3,40(sp)
    80007428:	03413023          	sd	s4,32(sp)
    8000742c:	01513c23          	sd	s5,24(sp)
    80007430:	05010413          	addi	s0,sp,80
    80007434:	06c05c63          	blez	a2,800074ac <consolewrite+0x9c>
    80007438:	00060993          	mv	s3,a2
    8000743c:	00050a13          	mv	s4,a0
    80007440:	00058493          	mv	s1,a1
    80007444:	00000913          	li	s2,0
    80007448:	fff00a93          	li	s5,-1
    8000744c:	01c0006f          	j	80007468 <consolewrite+0x58>
    80007450:	fbf44503          	lbu	a0,-65(s0)
    80007454:	0019091b          	addiw	s2,s2,1
    80007458:	00148493          	addi	s1,s1,1
    8000745c:	00001097          	auipc	ra,0x1
    80007460:	a9c080e7          	jalr	-1380(ra) # 80007ef8 <uartputc>
    80007464:	03298063          	beq	s3,s2,80007484 <consolewrite+0x74>
    80007468:	00048613          	mv	a2,s1
    8000746c:	00100693          	li	a3,1
    80007470:	000a0593          	mv	a1,s4
    80007474:	fbf40513          	addi	a0,s0,-65
    80007478:	00000097          	auipc	ra,0x0
    8000747c:	9e4080e7          	jalr	-1564(ra) # 80006e5c <either_copyin>
    80007480:	fd5518e3          	bne	a0,s5,80007450 <consolewrite+0x40>
    80007484:	04813083          	ld	ra,72(sp)
    80007488:	04013403          	ld	s0,64(sp)
    8000748c:	03813483          	ld	s1,56(sp)
    80007490:	02813983          	ld	s3,40(sp)
    80007494:	02013a03          	ld	s4,32(sp)
    80007498:	01813a83          	ld	s5,24(sp)
    8000749c:	00090513          	mv	a0,s2
    800074a0:	03013903          	ld	s2,48(sp)
    800074a4:	05010113          	addi	sp,sp,80
    800074a8:	00008067          	ret
    800074ac:	00000913          	li	s2,0
    800074b0:	fd5ff06f          	j	80007484 <consolewrite+0x74>

00000000800074b4 <consoleread>:
    800074b4:	f9010113          	addi	sp,sp,-112
    800074b8:	06813023          	sd	s0,96(sp)
    800074bc:	04913c23          	sd	s1,88(sp)
    800074c0:	05213823          	sd	s2,80(sp)
    800074c4:	05313423          	sd	s3,72(sp)
    800074c8:	05413023          	sd	s4,64(sp)
    800074cc:	03513c23          	sd	s5,56(sp)
    800074d0:	03613823          	sd	s6,48(sp)
    800074d4:	03713423          	sd	s7,40(sp)
    800074d8:	03813023          	sd	s8,32(sp)
    800074dc:	06113423          	sd	ra,104(sp)
    800074e0:	01913c23          	sd	s9,24(sp)
    800074e4:	07010413          	addi	s0,sp,112
    800074e8:	00060b93          	mv	s7,a2
    800074ec:	00050913          	mv	s2,a0
    800074f0:	00058c13          	mv	s8,a1
    800074f4:	00060b1b          	sext.w	s6,a2
    800074f8:	00005497          	auipc	s1,0x5
    800074fc:	6f048493          	addi	s1,s1,1776 # 8000cbe8 <cons>
    80007500:	00400993          	li	s3,4
    80007504:	fff00a13          	li	s4,-1
    80007508:	00a00a93          	li	s5,10
    8000750c:	05705e63          	blez	s7,80007568 <consoleread+0xb4>
    80007510:	09c4a703          	lw	a4,156(s1)
    80007514:	0984a783          	lw	a5,152(s1)
    80007518:	0007071b          	sext.w	a4,a4
    8000751c:	08e78463          	beq	a5,a4,800075a4 <consoleread+0xf0>
    80007520:	07f7f713          	andi	a4,a5,127
    80007524:	00e48733          	add	a4,s1,a4
    80007528:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000752c:	0017869b          	addiw	a3,a5,1
    80007530:	08d4ac23          	sw	a3,152(s1)
    80007534:	00070c9b          	sext.w	s9,a4
    80007538:	0b370663          	beq	a4,s3,800075e4 <consoleread+0x130>
    8000753c:	00100693          	li	a3,1
    80007540:	f9f40613          	addi	a2,s0,-97
    80007544:	000c0593          	mv	a1,s8
    80007548:	00090513          	mv	a0,s2
    8000754c:	f8e40fa3          	sb	a4,-97(s0)
    80007550:	00000097          	auipc	ra,0x0
    80007554:	8c0080e7          	jalr	-1856(ra) # 80006e10 <either_copyout>
    80007558:	01450863          	beq	a0,s4,80007568 <consoleread+0xb4>
    8000755c:	001c0c13          	addi	s8,s8,1
    80007560:	fffb8b9b          	addiw	s7,s7,-1
    80007564:	fb5c94e3          	bne	s9,s5,8000750c <consoleread+0x58>
    80007568:	000b851b          	sext.w	a0,s7
    8000756c:	06813083          	ld	ra,104(sp)
    80007570:	06013403          	ld	s0,96(sp)
    80007574:	05813483          	ld	s1,88(sp)
    80007578:	05013903          	ld	s2,80(sp)
    8000757c:	04813983          	ld	s3,72(sp)
    80007580:	04013a03          	ld	s4,64(sp)
    80007584:	03813a83          	ld	s5,56(sp)
    80007588:	02813b83          	ld	s7,40(sp)
    8000758c:	02013c03          	ld	s8,32(sp)
    80007590:	01813c83          	ld	s9,24(sp)
    80007594:	40ab053b          	subw	a0,s6,a0
    80007598:	03013b03          	ld	s6,48(sp)
    8000759c:	07010113          	addi	sp,sp,112
    800075a0:	00008067          	ret
    800075a4:	00001097          	auipc	ra,0x1
    800075a8:	1d8080e7          	jalr	472(ra) # 8000877c <push_on>
    800075ac:	0984a703          	lw	a4,152(s1)
    800075b0:	09c4a783          	lw	a5,156(s1)
    800075b4:	0007879b          	sext.w	a5,a5
    800075b8:	fef70ce3          	beq	a4,a5,800075b0 <consoleread+0xfc>
    800075bc:	00001097          	auipc	ra,0x1
    800075c0:	234080e7          	jalr	564(ra) # 800087f0 <pop_on>
    800075c4:	0984a783          	lw	a5,152(s1)
    800075c8:	07f7f713          	andi	a4,a5,127
    800075cc:	00e48733          	add	a4,s1,a4
    800075d0:	01874703          	lbu	a4,24(a4)
    800075d4:	0017869b          	addiw	a3,a5,1
    800075d8:	08d4ac23          	sw	a3,152(s1)
    800075dc:	00070c9b          	sext.w	s9,a4
    800075e0:	f5371ee3          	bne	a4,s3,8000753c <consoleread+0x88>
    800075e4:	000b851b          	sext.w	a0,s7
    800075e8:	f96bf2e3          	bgeu	s7,s6,8000756c <consoleread+0xb8>
    800075ec:	08f4ac23          	sw	a5,152(s1)
    800075f0:	f7dff06f          	j	8000756c <consoleread+0xb8>

00000000800075f4 <consputc>:
    800075f4:	10000793          	li	a5,256
    800075f8:	00f50663          	beq	a0,a5,80007604 <consputc+0x10>
    800075fc:	00001317          	auipc	t1,0x1
    80007600:	9f430067          	jr	-1548(t1) # 80007ff0 <uartputc_sync>
    80007604:	ff010113          	addi	sp,sp,-16
    80007608:	00113423          	sd	ra,8(sp)
    8000760c:	00813023          	sd	s0,0(sp)
    80007610:	01010413          	addi	s0,sp,16
    80007614:	00800513          	li	a0,8
    80007618:	00001097          	auipc	ra,0x1
    8000761c:	9d8080e7          	jalr	-1576(ra) # 80007ff0 <uartputc_sync>
    80007620:	02000513          	li	a0,32
    80007624:	00001097          	auipc	ra,0x1
    80007628:	9cc080e7          	jalr	-1588(ra) # 80007ff0 <uartputc_sync>
    8000762c:	00013403          	ld	s0,0(sp)
    80007630:	00813083          	ld	ra,8(sp)
    80007634:	00800513          	li	a0,8
    80007638:	01010113          	addi	sp,sp,16
    8000763c:	00001317          	auipc	t1,0x1
    80007640:	9b430067          	jr	-1612(t1) # 80007ff0 <uartputc_sync>

0000000080007644 <consoleintr>:
    80007644:	fe010113          	addi	sp,sp,-32
    80007648:	00813823          	sd	s0,16(sp)
    8000764c:	00913423          	sd	s1,8(sp)
    80007650:	01213023          	sd	s2,0(sp)
    80007654:	00113c23          	sd	ra,24(sp)
    80007658:	02010413          	addi	s0,sp,32
    8000765c:	00005917          	auipc	s2,0x5
    80007660:	58c90913          	addi	s2,s2,1420 # 8000cbe8 <cons>
    80007664:	00050493          	mv	s1,a0
    80007668:	00090513          	mv	a0,s2
    8000766c:	00001097          	auipc	ra,0x1
    80007670:	e40080e7          	jalr	-448(ra) # 800084ac <acquire>
    80007674:	02048c63          	beqz	s1,800076ac <consoleintr+0x68>
    80007678:	0a092783          	lw	a5,160(s2)
    8000767c:	09892703          	lw	a4,152(s2)
    80007680:	07f00693          	li	a3,127
    80007684:	40e7873b          	subw	a4,a5,a4
    80007688:	02e6e263          	bltu	a3,a4,800076ac <consoleintr+0x68>
    8000768c:	00d00713          	li	a4,13
    80007690:	04e48063          	beq	s1,a4,800076d0 <consoleintr+0x8c>
    80007694:	07f7f713          	andi	a4,a5,127
    80007698:	00e90733          	add	a4,s2,a4
    8000769c:	0017879b          	addiw	a5,a5,1
    800076a0:	0af92023          	sw	a5,160(s2)
    800076a4:	00970c23          	sb	s1,24(a4)
    800076a8:	08f92e23          	sw	a5,156(s2)
    800076ac:	01013403          	ld	s0,16(sp)
    800076b0:	01813083          	ld	ra,24(sp)
    800076b4:	00813483          	ld	s1,8(sp)
    800076b8:	00013903          	ld	s2,0(sp)
    800076bc:	00005517          	auipc	a0,0x5
    800076c0:	52c50513          	addi	a0,a0,1324 # 8000cbe8 <cons>
    800076c4:	02010113          	addi	sp,sp,32
    800076c8:	00001317          	auipc	t1,0x1
    800076cc:	eb030067          	jr	-336(t1) # 80008578 <release>
    800076d0:	00a00493          	li	s1,10
    800076d4:	fc1ff06f          	j	80007694 <consoleintr+0x50>

00000000800076d8 <consoleinit>:
    800076d8:	fe010113          	addi	sp,sp,-32
    800076dc:	00113c23          	sd	ra,24(sp)
    800076e0:	00813823          	sd	s0,16(sp)
    800076e4:	00913423          	sd	s1,8(sp)
    800076e8:	02010413          	addi	s0,sp,32
    800076ec:	00005497          	auipc	s1,0x5
    800076f0:	4fc48493          	addi	s1,s1,1276 # 8000cbe8 <cons>
    800076f4:	00048513          	mv	a0,s1
    800076f8:	00002597          	auipc	a1,0x2
    800076fc:	02858593          	addi	a1,a1,40 # 80009720 <_ZZ16printIntegerTrapmE6digits+0x5c8>
    80007700:	00001097          	auipc	ra,0x1
    80007704:	d88080e7          	jalr	-632(ra) # 80008488 <initlock>
    80007708:	00000097          	auipc	ra,0x0
    8000770c:	7ac080e7          	jalr	1964(ra) # 80007eb4 <uartinit>
    80007710:	01813083          	ld	ra,24(sp)
    80007714:	01013403          	ld	s0,16(sp)
    80007718:	00000797          	auipc	a5,0x0
    8000771c:	d9c78793          	addi	a5,a5,-612 # 800074b4 <consoleread>
    80007720:	0af4bc23          	sd	a5,184(s1)
    80007724:	00000797          	auipc	a5,0x0
    80007728:	cec78793          	addi	a5,a5,-788 # 80007410 <consolewrite>
    8000772c:	0cf4b023          	sd	a5,192(s1)
    80007730:	00813483          	ld	s1,8(sp)
    80007734:	02010113          	addi	sp,sp,32
    80007738:	00008067          	ret

000000008000773c <console_read>:
    8000773c:	ff010113          	addi	sp,sp,-16
    80007740:	00813423          	sd	s0,8(sp)
    80007744:	01010413          	addi	s0,sp,16
    80007748:	00813403          	ld	s0,8(sp)
    8000774c:	00005317          	auipc	t1,0x5
    80007750:	55433303          	ld	t1,1364(t1) # 8000cca0 <devsw+0x10>
    80007754:	01010113          	addi	sp,sp,16
    80007758:	00030067          	jr	t1

000000008000775c <console_write>:
    8000775c:	ff010113          	addi	sp,sp,-16
    80007760:	00813423          	sd	s0,8(sp)
    80007764:	01010413          	addi	s0,sp,16
    80007768:	00813403          	ld	s0,8(sp)
    8000776c:	00005317          	auipc	t1,0x5
    80007770:	53c33303          	ld	t1,1340(t1) # 8000cca8 <devsw+0x18>
    80007774:	01010113          	addi	sp,sp,16
    80007778:	00030067          	jr	t1

000000008000777c <panic>:
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00113c23          	sd	ra,24(sp)
    80007784:	00813823          	sd	s0,16(sp)
    80007788:	00913423          	sd	s1,8(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	00050493          	mv	s1,a0
    80007794:	00002517          	auipc	a0,0x2
    80007798:	f9450513          	addi	a0,a0,-108 # 80009728 <_ZZ16printIntegerTrapmE6digits+0x5d0>
    8000779c:	00005797          	auipc	a5,0x5
    800077a0:	5a07a623          	sw	zero,1452(a5) # 8000cd48 <pr+0x18>
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	034080e7          	jalr	52(ra) # 800077d8 <__printf>
    800077ac:	00048513          	mv	a0,s1
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	028080e7          	jalr	40(ra) # 800077d8 <__printf>
    800077b8:	00002517          	auipc	a0,0x2
    800077bc:	cf850513          	addi	a0,a0,-776 # 800094b0 <_ZZ16printIntegerTrapmE6digits+0x358>
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	018080e7          	jalr	24(ra) # 800077d8 <__printf>
    800077c8:	00100793          	li	a5,1
    800077cc:	00004717          	auipc	a4,0x4
    800077d0:	24f72623          	sw	a5,588(a4) # 8000ba18 <panicked>
    800077d4:	0000006f          	j	800077d4 <panic+0x58>

00000000800077d8 <__printf>:
    800077d8:	f3010113          	addi	sp,sp,-208
    800077dc:	08813023          	sd	s0,128(sp)
    800077e0:	07313423          	sd	s3,104(sp)
    800077e4:	09010413          	addi	s0,sp,144
    800077e8:	05813023          	sd	s8,64(sp)
    800077ec:	08113423          	sd	ra,136(sp)
    800077f0:	06913c23          	sd	s1,120(sp)
    800077f4:	07213823          	sd	s2,112(sp)
    800077f8:	07413023          	sd	s4,96(sp)
    800077fc:	05513c23          	sd	s5,88(sp)
    80007800:	05613823          	sd	s6,80(sp)
    80007804:	05713423          	sd	s7,72(sp)
    80007808:	03913c23          	sd	s9,56(sp)
    8000780c:	03a13823          	sd	s10,48(sp)
    80007810:	03b13423          	sd	s11,40(sp)
    80007814:	00005317          	auipc	t1,0x5
    80007818:	51c30313          	addi	t1,t1,1308 # 8000cd30 <pr>
    8000781c:	01832c03          	lw	s8,24(t1)
    80007820:	00b43423          	sd	a1,8(s0)
    80007824:	00c43823          	sd	a2,16(s0)
    80007828:	00d43c23          	sd	a3,24(s0)
    8000782c:	02e43023          	sd	a4,32(s0)
    80007830:	02f43423          	sd	a5,40(s0)
    80007834:	03043823          	sd	a6,48(s0)
    80007838:	03143c23          	sd	a7,56(s0)
    8000783c:	00050993          	mv	s3,a0
    80007840:	4a0c1663          	bnez	s8,80007cec <__printf+0x514>
    80007844:	60098c63          	beqz	s3,80007e5c <__printf+0x684>
    80007848:	0009c503          	lbu	a0,0(s3)
    8000784c:	00840793          	addi	a5,s0,8
    80007850:	f6f43c23          	sd	a5,-136(s0)
    80007854:	00000493          	li	s1,0
    80007858:	22050063          	beqz	a0,80007a78 <__printf+0x2a0>
    8000785c:	00002a37          	lui	s4,0x2
    80007860:	00018ab7          	lui	s5,0x18
    80007864:	000f4b37          	lui	s6,0xf4
    80007868:	00989bb7          	lui	s7,0x989
    8000786c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007870:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007874:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007878:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000787c:	00148c9b          	addiw	s9,s1,1
    80007880:	02500793          	li	a5,37
    80007884:	01998933          	add	s2,s3,s9
    80007888:	38f51263          	bne	a0,a5,80007c0c <__printf+0x434>
    8000788c:	00094783          	lbu	a5,0(s2)
    80007890:	00078c9b          	sext.w	s9,a5
    80007894:	1e078263          	beqz	a5,80007a78 <__printf+0x2a0>
    80007898:	0024849b          	addiw	s1,s1,2
    8000789c:	07000713          	li	a4,112
    800078a0:	00998933          	add	s2,s3,s1
    800078a4:	38e78a63          	beq	a5,a4,80007c38 <__printf+0x460>
    800078a8:	20f76863          	bltu	a4,a5,80007ab8 <__printf+0x2e0>
    800078ac:	42a78863          	beq	a5,a0,80007cdc <__printf+0x504>
    800078b0:	06400713          	li	a4,100
    800078b4:	40e79663          	bne	a5,a4,80007cc0 <__printf+0x4e8>
    800078b8:	f7843783          	ld	a5,-136(s0)
    800078bc:	0007a603          	lw	a2,0(a5)
    800078c0:	00878793          	addi	a5,a5,8
    800078c4:	f6f43c23          	sd	a5,-136(s0)
    800078c8:	42064a63          	bltz	a2,80007cfc <__printf+0x524>
    800078cc:	00a00713          	li	a4,10
    800078d0:	02e677bb          	remuw	a5,a2,a4
    800078d4:	00002d97          	auipc	s11,0x2
    800078d8:	e7cd8d93          	addi	s11,s11,-388 # 80009750 <digits>
    800078dc:	00900593          	li	a1,9
    800078e0:	0006051b          	sext.w	a0,a2
    800078e4:	00000c93          	li	s9,0
    800078e8:	02079793          	slli	a5,a5,0x20
    800078ec:	0207d793          	srli	a5,a5,0x20
    800078f0:	00fd87b3          	add	a5,s11,a5
    800078f4:	0007c783          	lbu	a5,0(a5)
    800078f8:	02e656bb          	divuw	a3,a2,a4
    800078fc:	f8f40023          	sb	a5,-128(s0)
    80007900:	14c5d863          	bge	a1,a2,80007a50 <__printf+0x278>
    80007904:	06300593          	li	a1,99
    80007908:	00100c93          	li	s9,1
    8000790c:	02e6f7bb          	remuw	a5,a3,a4
    80007910:	02079793          	slli	a5,a5,0x20
    80007914:	0207d793          	srli	a5,a5,0x20
    80007918:	00fd87b3          	add	a5,s11,a5
    8000791c:	0007c783          	lbu	a5,0(a5)
    80007920:	02e6d73b          	divuw	a4,a3,a4
    80007924:	f8f400a3          	sb	a5,-127(s0)
    80007928:	12a5f463          	bgeu	a1,a0,80007a50 <__printf+0x278>
    8000792c:	00a00693          	li	a3,10
    80007930:	00900593          	li	a1,9
    80007934:	02d777bb          	remuw	a5,a4,a3
    80007938:	02079793          	slli	a5,a5,0x20
    8000793c:	0207d793          	srli	a5,a5,0x20
    80007940:	00fd87b3          	add	a5,s11,a5
    80007944:	0007c503          	lbu	a0,0(a5)
    80007948:	02d757bb          	divuw	a5,a4,a3
    8000794c:	f8a40123          	sb	a0,-126(s0)
    80007950:	48e5f263          	bgeu	a1,a4,80007dd4 <__printf+0x5fc>
    80007954:	06300513          	li	a0,99
    80007958:	02d7f5bb          	remuw	a1,a5,a3
    8000795c:	02059593          	slli	a1,a1,0x20
    80007960:	0205d593          	srli	a1,a1,0x20
    80007964:	00bd85b3          	add	a1,s11,a1
    80007968:	0005c583          	lbu	a1,0(a1)
    8000796c:	02d7d7bb          	divuw	a5,a5,a3
    80007970:	f8b401a3          	sb	a1,-125(s0)
    80007974:	48e57263          	bgeu	a0,a4,80007df8 <__printf+0x620>
    80007978:	3e700513          	li	a0,999
    8000797c:	02d7f5bb          	remuw	a1,a5,a3
    80007980:	02059593          	slli	a1,a1,0x20
    80007984:	0205d593          	srli	a1,a1,0x20
    80007988:	00bd85b3          	add	a1,s11,a1
    8000798c:	0005c583          	lbu	a1,0(a1)
    80007990:	02d7d7bb          	divuw	a5,a5,a3
    80007994:	f8b40223          	sb	a1,-124(s0)
    80007998:	46e57663          	bgeu	a0,a4,80007e04 <__printf+0x62c>
    8000799c:	02d7f5bb          	remuw	a1,a5,a3
    800079a0:	02059593          	slli	a1,a1,0x20
    800079a4:	0205d593          	srli	a1,a1,0x20
    800079a8:	00bd85b3          	add	a1,s11,a1
    800079ac:	0005c583          	lbu	a1,0(a1)
    800079b0:	02d7d7bb          	divuw	a5,a5,a3
    800079b4:	f8b402a3          	sb	a1,-123(s0)
    800079b8:	46ea7863          	bgeu	s4,a4,80007e28 <__printf+0x650>
    800079bc:	02d7f5bb          	remuw	a1,a5,a3
    800079c0:	02059593          	slli	a1,a1,0x20
    800079c4:	0205d593          	srli	a1,a1,0x20
    800079c8:	00bd85b3          	add	a1,s11,a1
    800079cc:	0005c583          	lbu	a1,0(a1)
    800079d0:	02d7d7bb          	divuw	a5,a5,a3
    800079d4:	f8b40323          	sb	a1,-122(s0)
    800079d8:	3eeaf863          	bgeu	s5,a4,80007dc8 <__printf+0x5f0>
    800079dc:	02d7f5bb          	remuw	a1,a5,a3
    800079e0:	02059593          	slli	a1,a1,0x20
    800079e4:	0205d593          	srli	a1,a1,0x20
    800079e8:	00bd85b3          	add	a1,s11,a1
    800079ec:	0005c583          	lbu	a1,0(a1)
    800079f0:	02d7d7bb          	divuw	a5,a5,a3
    800079f4:	f8b403a3          	sb	a1,-121(s0)
    800079f8:	42eb7e63          	bgeu	s6,a4,80007e34 <__printf+0x65c>
    800079fc:	02d7f5bb          	remuw	a1,a5,a3
    80007a00:	02059593          	slli	a1,a1,0x20
    80007a04:	0205d593          	srli	a1,a1,0x20
    80007a08:	00bd85b3          	add	a1,s11,a1
    80007a0c:	0005c583          	lbu	a1,0(a1)
    80007a10:	02d7d7bb          	divuw	a5,a5,a3
    80007a14:	f8b40423          	sb	a1,-120(s0)
    80007a18:	42ebfc63          	bgeu	s7,a4,80007e50 <__printf+0x678>
    80007a1c:	02079793          	slli	a5,a5,0x20
    80007a20:	0207d793          	srli	a5,a5,0x20
    80007a24:	00fd8db3          	add	s11,s11,a5
    80007a28:	000dc703          	lbu	a4,0(s11)
    80007a2c:	00a00793          	li	a5,10
    80007a30:	00900c93          	li	s9,9
    80007a34:	f8e404a3          	sb	a4,-119(s0)
    80007a38:	00065c63          	bgez	a2,80007a50 <__printf+0x278>
    80007a3c:	f9040713          	addi	a4,s0,-112
    80007a40:	00f70733          	add	a4,a4,a5
    80007a44:	02d00693          	li	a3,45
    80007a48:	fed70823          	sb	a3,-16(a4)
    80007a4c:	00078c93          	mv	s9,a5
    80007a50:	f8040793          	addi	a5,s0,-128
    80007a54:	01978cb3          	add	s9,a5,s9
    80007a58:	f7f40d13          	addi	s10,s0,-129
    80007a5c:	000cc503          	lbu	a0,0(s9)
    80007a60:	fffc8c93          	addi	s9,s9,-1
    80007a64:	00000097          	auipc	ra,0x0
    80007a68:	b90080e7          	jalr	-1136(ra) # 800075f4 <consputc>
    80007a6c:	ffac98e3          	bne	s9,s10,80007a5c <__printf+0x284>
    80007a70:	00094503          	lbu	a0,0(s2)
    80007a74:	e00514e3          	bnez	a0,8000787c <__printf+0xa4>
    80007a78:	1a0c1663          	bnez	s8,80007c24 <__printf+0x44c>
    80007a7c:	08813083          	ld	ra,136(sp)
    80007a80:	08013403          	ld	s0,128(sp)
    80007a84:	07813483          	ld	s1,120(sp)
    80007a88:	07013903          	ld	s2,112(sp)
    80007a8c:	06813983          	ld	s3,104(sp)
    80007a90:	06013a03          	ld	s4,96(sp)
    80007a94:	05813a83          	ld	s5,88(sp)
    80007a98:	05013b03          	ld	s6,80(sp)
    80007a9c:	04813b83          	ld	s7,72(sp)
    80007aa0:	04013c03          	ld	s8,64(sp)
    80007aa4:	03813c83          	ld	s9,56(sp)
    80007aa8:	03013d03          	ld	s10,48(sp)
    80007aac:	02813d83          	ld	s11,40(sp)
    80007ab0:	0d010113          	addi	sp,sp,208
    80007ab4:	00008067          	ret
    80007ab8:	07300713          	li	a4,115
    80007abc:	1ce78a63          	beq	a5,a4,80007c90 <__printf+0x4b8>
    80007ac0:	07800713          	li	a4,120
    80007ac4:	1ee79e63          	bne	a5,a4,80007cc0 <__printf+0x4e8>
    80007ac8:	f7843783          	ld	a5,-136(s0)
    80007acc:	0007a703          	lw	a4,0(a5)
    80007ad0:	00878793          	addi	a5,a5,8
    80007ad4:	f6f43c23          	sd	a5,-136(s0)
    80007ad8:	28074263          	bltz	a4,80007d5c <__printf+0x584>
    80007adc:	00002d97          	auipc	s11,0x2
    80007ae0:	c74d8d93          	addi	s11,s11,-908 # 80009750 <digits>
    80007ae4:	00f77793          	andi	a5,a4,15
    80007ae8:	00fd87b3          	add	a5,s11,a5
    80007aec:	0007c683          	lbu	a3,0(a5)
    80007af0:	00f00613          	li	a2,15
    80007af4:	0007079b          	sext.w	a5,a4
    80007af8:	f8d40023          	sb	a3,-128(s0)
    80007afc:	0047559b          	srliw	a1,a4,0x4
    80007b00:	0047569b          	srliw	a3,a4,0x4
    80007b04:	00000c93          	li	s9,0
    80007b08:	0ee65063          	bge	a2,a4,80007be8 <__printf+0x410>
    80007b0c:	00f6f693          	andi	a3,a3,15
    80007b10:	00dd86b3          	add	a3,s11,a3
    80007b14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007b18:	0087d79b          	srliw	a5,a5,0x8
    80007b1c:	00100c93          	li	s9,1
    80007b20:	f8d400a3          	sb	a3,-127(s0)
    80007b24:	0cb67263          	bgeu	a2,a1,80007be8 <__printf+0x410>
    80007b28:	00f7f693          	andi	a3,a5,15
    80007b2c:	00dd86b3          	add	a3,s11,a3
    80007b30:	0006c583          	lbu	a1,0(a3)
    80007b34:	00f00613          	li	a2,15
    80007b38:	0047d69b          	srliw	a3,a5,0x4
    80007b3c:	f8b40123          	sb	a1,-126(s0)
    80007b40:	0047d593          	srli	a1,a5,0x4
    80007b44:	28f67e63          	bgeu	a2,a5,80007de0 <__printf+0x608>
    80007b48:	00f6f693          	andi	a3,a3,15
    80007b4c:	00dd86b3          	add	a3,s11,a3
    80007b50:	0006c503          	lbu	a0,0(a3)
    80007b54:	0087d813          	srli	a6,a5,0x8
    80007b58:	0087d69b          	srliw	a3,a5,0x8
    80007b5c:	f8a401a3          	sb	a0,-125(s0)
    80007b60:	28b67663          	bgeu	a2,a1,80007dec <__printf+0x614>
    80007b64:	00f6f693          	andi	a3,a3,15
    80007b68:	00dd86b3          	add	a3,s11,a3
    80007b6c:	0006c583          	lbu	a1,0(a3)
    80007b70:	00c7d513          	srli	a0,a5,0xc
    80007b74:	00c7d69b          	srliw	a3,a5,0xc
    80007b78:	f8b40223          	sb	a1,-124(s0)
    80007b7c:	29067a63          	bgeu	a2,a6,80007e10 <__printf+0x638>
    80007b80:	00f6f693          	andi	a3,a3,15
    80007b84:	00dd86b3          	add	a3,s11,a3
    80007b88:	0006c583          	lbu	a1,0(a3)
    80007b8c:	0107d813          	srli	a6,a5,0x10
    80007b90:	0107d69b          	srliw	a3,a5,0x10
    80007b94:	f8b402a3          	sb	a1,-123(s0)
    80007b98:	28a67263          	bgeu	a2,a0,80007e1c <__printf+0x644>
    80007b9c:	00f6f693          	andi	a3,a3,15
    80007ba0:	00dd86b3          	add	a3,s11,a3
    80007ba4:	0006c683          	lbu	a3,0(a3)
    80007ba8:	0147d79b          	srliw	a5,a5,0x14
    80007bac:	f8d40323          	sb	a3,-122(s0)
    80007bb0:	21067663          	bgeu	a2,a6,80007dbc <__printf+0x5e4>
    80007bb4:	02079793          	slli	a5,a5,0x20
    80007bb8:	0207d793          	srli	a5,a5,0x20
    80007bbc:	00fd8db3          	add	s11,s11,a5
    80007bc0:	000dc683          	lbu	a3,0(s11)
    80007bc4:	00800793          	li	a5,8
    80007bc8:	00700c93          	li	s9,7
    80007bcc:	f8d403a3          	sb	a3,-121(s0)
    80007bd0:	00075c63          	bgez	a4,80007be8 <__printf+0x410>
    80007bd4:	f9040713          	addi	a4,s0,-112
    80007bd8:	00f70733          	add	a4,a4,a5
    80007bdc:	02d00693          	li	a3,45
    80007be0:	fed70823          	sb	a3,-16(a4)
    80007be4:	00078c93          	mv	s9,a5
    80007be8:	f8040793          	addi	a5,s0,-128
    80007bec:	01978cb3          	add	s9,a5,s9
    80007bf0:	f7f40d13          	addi	s10,s0,-129
    80007bf4:	000cc503          	lbu	a0,0(s9)
    80007bf8:	fffc8c93          	addi	s9,s9,-1
    80007bfc:	00000097          	auipc	ra,0x0
    80007c00:	9f8080e7          	jalr	-1544(ra) # 800075f4 <consputc>
    80007c04:	ff9d18e3          	bne	s10,s9,80007bf4 <__printf+0x41c>
    80007c08:	0100006f          	j	80007c18 <__printf+0x440>
    80007c0c:	00000097          	auipc	ra,0x0
    80007c10:	9e8080e7          	jalr	-1560(ra) # 800075f4 <consputc>
    80007c14:	000c8493          	mv	s1,s9
    80007c18:	00094503          	lbu	a0,0(s2)
    80007c1c:	c60510e3          	bnez	a0,8000787c <__printf+0xa4>
    80007c20:	e40c0ee3          	beqz	s8,80007a7c <__printf+0x2a4>
    80007c24:	00005517          	auipc	a0,0x5
    80007c28:	10c50513          	addi	a0,a0,268 # 8000cd30 <pr>
    80007c2c:	00001097          	auipc	ra,0x1
    80007c30:	94c080e7          	jalr	-1716(ra) # 80008578 <release>
    80007c34:	e49ff06f          	j	80007a7c <__printf+0x2a4>
    80007c38:	f7843783          	ld	a5,-136(s0)
    80007c3c:	03000513          	li	a0,48
    80007c40:	01000d13          	li	s10,16
    80007c44:	00878713          	addi	a4,a5,8
    80007c48:	0007bc83          	ld	s9,0(a5)
    80007c4c:	f6e43c23          	sd	a4,-136(s0)
    80007c50:	00000097          	auipc	ra,0x0
    80007c54:	9a4080e7          	jalr	-1628(ra) # 800075f4 <consputc>
    80007c58:	07800513          	li	a0,120
    80007c5c:	00000097          	auipc	ra,0x0
    80007c60:	998080e7          	jalr	-1640(ra) # 800075f4 <consputc>
    80007c64:	00002d97          	auipc	s11,0x2
    80007c68:	aecd8d93          	addi	s11,s11,-1300 # 80009750 <digits>
    80007c6c:	03ccd793          	srli	a5,s9,0x3c
    80007c70:	00fd87b3          	add	a5,s11,a5
    80007c74:	0007c503          	lbu	a0,0(a5)
    80007c78:	fffd0d1b          	addiw	s10,s10,-1
    80007c7c:	004c9c93          	slli	s9,s9,0x4
    80007c80:	00000097          	auipc	ra,0x0
    80007c84:	974080e7          	jalr	-1676(ra) # 800075f4 <consputc>
    80007c88:	fe0d12e3          	bnez	s10,80007c6c <__printf+0x494>
    80007c8c:	f8dff06f          	j	80007c18 <__printf+0x440>
    80007c90:	f7843783          	ld	a5,-136(s0)
    80007c94:	0007bc83          	ld	s9,0(a5)
    80007c98:	00878793          	addi	a5,a5,8
    80007c9c:	f6f43c23          	sd	a5,-136(s0)
    80007ca0:	000c9a63          	bnez	s9,80007cb4 <__printf+0x4dc>
    80007ca4:	1080006f          	j	80007dac <__printf+0x5d4>
    80007ca8:	001c8c93          	addi	s9,s9,1
    80007cac:	00000097          	auipc	ra,0x0
    80007cb0:	948080e7          	jalr	-1720(ra) # 800075f4 <consputc>
    80007cb4:	000cc503          	lbu	a0,0(s9)
    80007cb8:	fe0518e3          	bnez	a0,80007ca8 <__printf+0x4d0>
    80007cbc:	f5dff06f          	j	80007c18 <__printf+0x440>
    80007cc0:	02500513          	li	a0,37
    80007cc4:	00000097          	auipc	ra,0x0
    80007cc8:	930080e7          	jalr	-1744(ra) # 800075f4 <consputc>
    80007ccc:	000c8513          	mv	a0,s9
    80007cd0:	00000097          	auipc	ra,0x0
    80007cd4:	924080e7          	jalr	-1756(ra) # 800075f4 <consputc>
    80007cd8:	f41ff06f          	j	80007c18 <__printf+0x440>
    80007cdc:	02500513          	li	a0,37
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	914080e7          	jalr	-1772(ra) # 800075f4 <consputc>
    80007ce8:	f31ff06f          	j	80007c18 <__printf+0x440>
    80007cec:	00030513          	mv	a0,t1
    80007cf0:	00000097          	auipc	ra,0x0
    80007cf4:	7bc080e7          	jalr	1980(ra) # 800084ac <acquire>
    80007cf8:	b4dff06f          	j	80007844 <__printf+0x6c>
    80007cfc:	40c0053b          	negw	a0,a2
    80007d00:	00a00713          	li	a4,10
    80007d04:	02e576bb          	remuw	a3,a0,a4
    80007d08:	00002d97          	auipc	s11,0x2
    80007d0c:	a48d8d93          	addi	s11,s11,-1464 # 80009750 <digits>
    80007d10:	ff700593          	li	a1,-9
    80007d14:	02069693          	slli	a3,a3,0x20
    80007d18:	0206d693          	srli	a3,a3,0x20
    80007d1c:	00dd86b3          	add	a3,s11,a3
    80007d20:	0006c683          	lbu	a3,0(a3)
    80007d24:	02e557bb          	divuw	a5,a0,a4
    80007d28:	f8d40023          	sb	a3,-128(s0)
    80007d2c:	10b65e63          	bge	a2,a1,80007e48 <__printf+0x670>
    80007d30:	06300593          	li	a1,99
    80007d34:	02e7f6bb          	remuw	a3,a5,a4
    80007d38:	02069693          	slli	a3,a3,0x20
    80007d3c:	0206d693          	srli	a3,a3,0x20
    80007d40:	00dd86b3          	add	a3,s11,a3
    80007d44:	0006c683          	lbu	a3,0(a3)
    80007d48:	02e7d73b          	divuw	a4,a5,a4
    80007d4c:	00200793          	li	a5,2
    80007d50:	f8d400a3          	sb	a3,-127(s0)
    80007d54:	bca5ece3          	bltu	a1,a0,8000792c <__printf+0x154>
    80007d58:	ce5ff06f          	j	80007a3c <__printf+0x264>
    80007d5c:	40e007bb          	negw	a5,a4
    80007d60:	00002d97          	auipc	s11,0x2
    80007d64:	9f0d8d93          	addi	s11,s11,-1552 # 80009750 <digits>
    80007d68:	00f7f693          	andi	a3,a5,15
    80007d6c:	00dd86b3          	add	a3,s11,a3
    80007d70:	0006c583          	lbu	a1,0(a3)
    80007d74:	ff100613          	li	a2,-15
    80007d78:	0047d69b          	srliw	a3,a5,0x4
    80007d7c:	f8b40023          	sb	a1,-128(s0)
    80007d80:	0047d59b          	srliw	a1,a5,0x4
    80007d84:	0ac75e63          	bge	a4,a2,80007e40 <__printf+0x668>
    80007d88:	00f6f693          	andi	a3,a3,15
    80007d8c:	00dd86b3          	add	a3,s11,a3
    80007d90:	0006c603          	lbu	a2,0(a3)
    80007d94:	00f00693          	li	a3,15
    80007d98:	0087d79b          	srliw	a5,a5,0x8
    80007d9c:	f8c400a3          	sb	a2,-127(s0)
    80007da0:	d8b6e4e3          	bltu	a3,a1,80007b28 <__printf+0x350>
    80007da4:	00200793          	li	a5,2
    80007da8:	e2dff06f          	j	80007bd4 <__printf+0x3fc>
    80007dac:	00002c97          	auipc	s9,0x2
    80007db0:	984c8c93          	addi	s9,s9,-1660 # 80009730 <_ZZ16printIntegerTrapmE6digits+0x5d8>
    80007db4:	02800513          	li	a0,40
    80007db8:	ef1ff06f          	j	80007ca8 <__printf+0x4d0>
    80007dbc:	00700793          	li	a5,7
    80007dc0:	00600c93          	li	s9,6
    80007dc4:	e0dff06f          	j	80007bd0 <__printf+0x3f8>
    80007dc8:	00700793          	li	a5,7
    80007dcc:	00600c93          	li	s9,6
    80007dd0:	c69ff06f          	j	80007a38 <__printf+0x260>
    80007dd4:	00300793          	li	a5,3
    80007dd8:	00200c93          	li	s9,2
    80007ddc:	c5dff06f          	j	80007a38 <__printf+0x260>
    80007de0:	00300793          	li	a5,3
    80007de4:	00200c93          	li	s9,2
    80007de8:	de9ff06f          	j	80007bd0 <__printf+0x3f8>
    80007dec:	00400793          	li	a5,4
    80007df0:	00300c93          	li	s9,3
    80007df4:	dddff06f          	j	80007bd0 <__printf+0x3f8>
    80007df8:	00400793          	li	a5,4
    80007dfc:	00300c93          	li	s9,3
    80007e00:	c39ff06f          	j	80007a38 <__printf+0x260>
    80007e04:	00500793          	li	a5,5
    80007e08:	00400c93          	li	s9,4
    80007e0c:	c2dff06f          	j	80007a38 <__printf+0x260>
    80007e10:	00500793          	li	a5,5
    80007e14:	00400c93          	li	s9,4
    80007e18:	db9ff06f          	j	80007bd0 <__printf+0x3f8>
    80007e1c:	00600793          	li	a5,6
    80007e20:	00500c93          	li	s9,5
    80007e24:	dadff06f          	j	80007bd0 <__printf+0x3f8>
    80007e28:	00600793          	li	a5,6
    80007e2c:	00500c93          	li	s9,5
    80007e30:	c09ff06f          	j	80007a38 <__printf+0x260>
    80007e34:	00800793          	li	a5,8
    80007e38:	00700c93          	li	s9,7
    80007e3c:	bfdff06f          	j	80007a38 <__printf+0x260>
    80007e40:	00100793          	li	a5,1
    80007e44:	d91ff06f          	j	80007bd4 <__printf+0x3fc>
    80007e48:	00100793          	li	a5,1
    80007e4c:	bf1ff06f          	j	80007a3c <__printf+0x264>
    80007e50:	00900793          	li	a5,9
    80007e54:	00800c93          	li	s9,8
    80007e58:	be1ff06f          	j	80007a38 <__printf+0x260>
    80007e5c:	00002517          	auipc	a0,0x2
    80007e60:	8dc50513          	addi	a0,a0,-1828 # 80009738 <_ZZ16printIntegerTrapmE6digits+0x5e0>
    80007e64:	00000097          	auipc	ra,0x0
    80007e68:	918080e7          	jalr	-1768(ra) # 8000777c <panic>

0000000080007e6c <printfinit>:
    80007e6c:	fe010113          	addi	sp,sp,-32
    80007e70:	00813823          	sd	s0,16(sp)
    80007e74:	00913423          	sd	s1,8(sp)
    80007e78:	00113c23          	sd	ra,24(sp)
    80007e7c:	02010413          	addi	s0,sp,32
    80007e80:	00005497          	auipc	s1,0x5
    80007e84:	eb048493          	addi	s1,s1,-336 # 8000cd30 <pr>
    80007e88:	00048513          	mv	a0,s1
    80007e8c:	00002597          	auipc	a1,0x2
    80007e90:	8bc58593          	addi	a1,a1,-1860 # 80009748 <_ZZ16printIntegerTrapmE6digits+0x5f0>
    80007e94:	00000097          	auipc	ra,0x0
    80007e98:	5f4080e7          	jalr	1524(ra) # 80008488 <initlock>
    80007e9c:	01813083          	ld	ra,24(sp)
    80007ea0:	01013403          	ld	s0,16(sp)
    80007ea4:	0004ac23          	sw	zero,24(s1)
    80007ea8:	00813483          	ld	s1,8(sp)
    80007eac:	02010113          	addi	sp,sp,32
    80007eb0:	00008067          	ret

0000000080007eb4 <uartinit>:
    80007eb4:	ff010113          	addi	sp,sp,-16
    80007eb8:	00813423          	sd	s0,8(sp)
    80007ebc:	01010413          	addi	s0,sp,16
    80007ec0:	100007b7          	lui	a5,0x10000
    80007ec4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ec8:	f8000713          	li	a4,-128
    80007ecc:	00e781a3          	sb	a4,3(a5)
    80007ed0:	00300713          	li	a4,3
    80007ed4:	00e78023          	sb	a4,0(a5)
    80007ed8:	000780a3          	sb	zero,1(a5)
    80007edc:	00e781a3          	sb	a4,3(a5)
    80007ee0:	00700693          	li	a3,7
    80007ee4:	00d78123          	sb	a3,2(a5)
    80007ee8:	00e780a3          	sb	a4,1(a5)
    80007eec:	00813403          	ld	s0,8(sp)
    80007ef0:	01010113          	addi	sp,sp,16
    80007ef4:	00008067          	ret

0000000080007ef8 <uartputc>:
    80007ef8:	00004797          	auipc	a5,0x4
    80007efc:	b207a783          	lw	a5,-1248(a5) # 8000ba18 <panicked>
    80007f00:	00078463          	beqz	a5,80007f08 <uartputc+0x10>
    80007f04:	0000006f          	j	80007f04 <uartputc+0xc>
    80007f08:	fd010113          	addi	sp,sp,-48
    80007f0c:	02813023          	sd	s0,32(sp)
    80007f10:	00913c23          	sd	s1,24(sp)
    80007f14:	01213823          	sd	s2,16(sp)
    80007f18:	01313423          	sd	s3,8(sp)
    80007f1c:	02113423          	sd	ra,40(sp)
    80007f20:	03010413          	addi	s0,sp,48
    80007f24:	00004917          	auipc	s2,0x4
    80007f28:	afc90913          	addi	s2,s2,-1284 # 8000ba20 <uart_tx_r>
    80007f2c:	00093783          	ld	a5,0(s2)
    80007f30:	00004497          	auipc	s1,0x4
    80007f34:	af848493          	addi	s1,s1,-1288 # 8000ba28 <uart_tx_w>
    80007f38:	0004b703          	ld	a4,0(s1)
    80007f3c:	02078693          	addi	a3,a5,32
    80007f40:	00050993          	mv	s3,a0
    80007f44:	02e69c63          	bne	a3,a4,80007f7c <uartputc+0x84>
    80007f48:	00001097          	auipc	ra,0x1
    80007f4c:	834080e7          	jalr	-1996(ra) # 8000877c <push_on>
    80007f50:	00093783          	ld	a5,0(s2)
    80007f54:	0004b703          	ld	a4,0(s1)
    80007f58:	02078793          	addi	a5,a5,32
    80007f5c:	00e79463          	bne	a5,a4,80007f64 <uartputc+0x6c>
    80007f60:	0000006f          	j	80007f60 <uartputc+0x68>
    80007f64:	00001097          	auipc	ra,0x1
    80007f68:	88c080e7          	jalr	-1908(ra) # 800087f0 <pop_on>
    80007f6c:	00093783          	ld	a5,0(s2)
    80007f70:	0004b703          	ld	a4,0(s1)
    80007f74:	02078693          	addi	a3,a5,32
    80007f78:	fce688e3          	beq	a3,a4,80007f48 <uartputc+0x50>
    80007f7c:	01f77693          	andi	a3,a4,31
    80007f80:	00005597          	auipc	a1,0x5
    80007f84:	dd058593          	addi	a1,a1,-560 # 8000cd50 <uart_tx_buf>
    80007f88:	00d586b3          	add	a3,a1,a3
    80007f8c:	00170713          	addi	a4,a4,1
    80007f90:	01368023          	sb	s3,0(a3)
    80007f94:	00e4b023          	sd	a4,0(s1)
    80007f98:	10000637          	lui	a2,0x10000
    80007f9c:	02f71063          	bne	a4,a5,80007fbc <uartputc+0xc4>
    80007fa0:	0340006f          	j	80007fd4 <uartputc+0xdc>
    80007fa4:	00074703          	lbu	a4,0(a4)
    80007fa8:	00f93023          	sd	a5,0(s2)
    80007fac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007fb0:	00093783          	ld	a5,0(s2)
    80007fb4:	0004b703          	ld	a4,0(s1)
    80007fb8:	00f70e63          	beq	a4,a5,80007fd4 <uartputc+0xdc>
    80007fbc:	00564683          	lbu	a3,5(a2)
    80007fc0:	01f7f713          	andi	a4,a5,31
    80007fc4:	00e58733          	add	a4,a1,a4
    80007fc8:	0206f693          	andi	a3,a3,32
    80007fcc:	00178793          	addi	a5,a5,1
    80007fd0:	fc069ae3          	bnez	a3,80007fa4 <uartputc+0xac>
    80007fd4:	02813083          	ld	ra,40(sp)
    80007fd8:	02013403          	ld	s0,32(sp)
    80007fdc:	01813483          	ld	s1,24(sp)
    80007fe0:	01013903          	ld	s2,16(sp)
    80007fe4:	00813983          	ld	s3,8(sp)
    80007fe8:	03010113          	addi	sp,sp,48
    80007fec:	00008067          	ret

0000000080007ff0 <uartputc_sync>:
    80007ff0:	ff010113          	addi	sp,sp,-16
    80007ff4:	00813423          	sd	s0,8(sp)
    80007ff8:	01010413          	addi	s0,sp,16
    80007ffc:	00004717          	auipc	a4,0x4
    80008000:	a1c72703          	lw	a4,-1508(a4) # 8000ba18 <panicked>
    80008004:	02071663          	bnez	a4,80008030 <uartputc_sync+0x40>
    80008008:	00050793          	mv	a5,a0
    8000800c:	100006b7          	lui	a3,0x10000
    80008010:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008014:	02077713          	andi	a4,a4,32
    80008018:	fe070ce3          	beqz	a4,80008010 <uartputc_sync+0x20>
    8000801c:	0ff7f793          	andi	a5,a5,255
    80008020:	00f68023          	sb	a5,0(a3)
    80008024:	00813403          	ld	s0,8(sp)
    80008028:	01010113          	addi	sp,sp,16
    8000802c:	00008067          	ret
    80008030:	0000006f          	j	80008030 <uartputc_sync+0x40>

0000000080008034 <uartstart>:
    80008034:	ff010113          	addi	sp,sp,-16
    80008038:	00813423          	sd	s0,8(sp)
    8000803c:	01010413          	addi	s0,sp,16
    80008040:	00004617          	auipc	a2,0x4
    80008044:	9e060613          	addi	a2,a2,-1568 # 8000ba20 <uart_tx_r>
    80008048:	00004517          	auipc	a0,0x4
    8000804c:	9e050513          	addi	a0,a0,-1568 # 8000ba28 <uart_tx_w>
    80008050:	00063783          	ld	a5,0(a2)
    80008054:	00053703          	ld	a4,0(a0)
    80008058:	04f70263          	beq	a4,a5,8000809c <uartstart+0x68>
    8000805c:	100005b7          	lui	a1,0x10000
    80008060:	00005817          	auipc	a6,0x5
    80008064:	cf080813          	addi	a6,a6,-784 # 8000cd50 <uart_tx_buf>
    80008068:	01c0006f          	j	80008084 <uartstart+0x50>
    8000806c:	0006c703          	lbu	a4,0(a3)
    80008070:	00f63023          	sd	a5,0(a2)
    80008074:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008078:	00063783          	ld	a5,0(a2)
    8000807c:	00053703          	ld	a4,0(a0)
    80008080:	00f70e63          	beq	a4,a5,8000809c <uartstart+0x68>
    80008084:	01f7f713          	andi	a4,a5,31
    80008088:	00e806b3          	add	a3,a6,a4
    8000808c:	0055c703          	lbu	a4,5(a1)
    80008090:	00178793          	addi	a5,a5,1
    80008094:	02077713          	andi	a4,a4,32
    80008098:	fc071ae3          	bnez	a4,8000806c <uartstart+0x38>
    8000809c:	00813403          	ld	s0,8(sp)
    800080a0:	01010113          	addi	sp,sp,16
    800080a4:	00008067          	ret

00000000800080a8 <uartgetc>:
    800080a8:	ff010113          	addi	sp,sp,-16
    800080ac:	00813423          	sd	s0,8(sp)
    800080b0:	01010413          	addi	s0,sp,16
    800080b4:	10000737          	lui	a4,0x10000
    800080b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800080bc:	0017f793          	andi	a5,a5,1
    800080c0:	00078c63          	beqz	a5,800080d8 <uartgetc+0x30>
    800080c4:	00074503          	lbu	a0,0(a4)
    800080c8:	0ff57513          	andi	a0,a0,255
    800080cc:	00813403          	ld	s0,8(sp)
    800080d0:	01010113          	addi	sp,sp,16
    800080d4:	00008067          	ret
    800080d8:	fff00513          	li	a0,-1
    800080dc:	ff1ff06f          	j	800080cc <uartgetc+0x24>

00000000800080e0 <uartintr>:
    800080e0:	100007b7          	lui	a5,0x10000
    800080e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800080e8:	0017f793          	andi	a5,a5,1
    800080ec:	0a078463          	beqz	a5,80008194 <uartintr+0xb4>
    800080f0:	fe010113          	addi	sp,sp,-32
    800080f4:	00813823          	sd	s0,16(sp)
    800080f8:	00913423          	sd	s1,8(sp)
    800080fc:	00113c23          	sd	ra,24(sp)
    80008100:	02010413          	addi	s0,sp,32
    80008104:	100004b7          	lui	s1,0x10000
    80008108:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000810c:	0ff57513          	andi	a0,a0,255
    80008110:	fffff097          	auipc	ra,0xfffff
    80008114:	534080e7          	jalr	1332(ra) # 80007644 <consoleintr>
    80008118:	0054c783          	lbu	a5,5(s1)
    8000811c:	0017f793          	andi	a5,a5,1
    80008120:	fe0794e3          	bnez	a5,80008108 <uartintr+0x28>
    80008124:	00004617          	auipc	a2,0x4
    80008128:	8fc60613          	addi	a2,a2,-1796 # 8000ba20 <uart_tx_r>
    8000812c:	00004517          	auipc	a0,0x4
    80008130:	8fc50513          	addi	a0,a0,-1796 # 8000ba28 <uart_tx_w>
    80008134:	00063783          	ld	a5,0(a2)
    80008138:	00053703          	ld	a4,0(a0)
    8000813c:	04f70263          	beq	a4,a5,80008180 <uartintr+0xa0>
    80008140:	100005b7          	lui	a1,0x10000
    80008144:	00005817          	auipc	a6,0x5
    80008148:	c0c80813          	addi	a6,a6,-1012 # 8000cd50 <uart_tx_buf>
    8000814c:	01c0006f          	j	80008168 <uartintr+0x88>
    80008150:	0006c703          	lbu	a4,0(a3)
    80008154:	00f63023          	sd	a5,0(a2)
    80008158:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000815c:	00063783          	ld	a5,0(a2)
    80008160:	00053703          	ld	a4,0(a0)
    80008164:	00f70e63          	beq	a4,a5,80008180 <uartintr+0xa0>
    80008168:	01f7f713          	andi	a4,a5,31
    8000816c:	00e806b3          	add	a3,a6,a4
    80008170:	0055c703          	lbu	a4,5(a1)
    80008174:	00178793          	addi	a5,a5,1
    80008178:	02077713          	andi	a4,a4,32
    8000817c:	fc071ae3          	bnez	a4,80008150 <uartintr+0x70>
    80008180:	01813083          	ld	ra,24(sp)
    80008184:	01013403          	ld	s0,16(sp)
    80008188:	00813483          	ld	s1,8(sp)
    8000818c:	02010113          	addi	sp,sp,32
    80008190:	00008067          	ret
    80008194:	00004617          	auipc	a2,0x4
    80008198:	88c60613          	addi	a2,a2,-1908 # 8000ba20 <uart_tx_r>
    8000819c:	00004517          	auipc	a0,0x4
    800081a0:	88c50513          	addi	a0,a0,-1908 # 8000ba28 <uart_tx_w>
    800081a4:	00063783          	ld	a5,0(a2)
    800081a8:	00053703          	ld	a4,0(a0)
    800081ac:	04f70263          	beq	a4,a5,800081f0 <uartintr+0x110>
    800081b0:	100005b7          	lui	a1,0x10000
    800081b4:	00005817          	auipc	a6,0x5
    800081b8:	b9c80813          	addi	a6,a6,-1124 # 8000cd50 <uart_tx_buf>
    800081bc:	01c0006f          	j	800081d8 <uartintr+0xf8>
    800081c0:	0006c703          	lbu	a4,0(a3)
    800081c4:	00f63023          	sd	a5,0(a2)
    800081c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081cc:	00063783          	ld	a5,0(a2)
    800081d0:	00053703          	ld	a4,0(a0)
    800081d4:	02f70063          	beq	a4,a5,800081f4 <uartintr+0x114>
    800081d8:	01f7f713          	andi	a4,a5,31
    800081dc:	00e806b3          	add	a3,a6,a4
    800081e0:	0055c703          	lbu	a4,5(a1)
    800081e4:	00178793          	addi	a5,a5,1
    800081e8:	02077713          	andi	a4,a4,32
    800081ec:	fc071ae3          	bnez	a4,800081c0 <uartintr+0xe0>
    800081f0:	00008067          	ret
    800081f4:	00008067          	ret

00000000800081f8 <kinit>:
    800081f8:	fc010113          	addi	sp,sp,-64
    800081fc:	02913423          	sd	s1,40(sp)
    80008200:	fffff7b7          	lui	a5,0xfffff
    80008204:	00006497          	auipc	s1,0x6
    80008208:	b6b48493          	addi	s1,s1,-1173 # 8000dd6f <end+0xfff>
    8000820c:	02813823          	sd	s0,48(sp)
    80008210:	01313c23          	sd	s3,24(sp)
    80008214:	00f4f4b3          	and	s1,s1,a5
    80008218:	02113c23          	sd	ra,56(sp)
    8000821c:	03213023          	sd	s2,32(sp)
    80008220:	01413823          	sd	s4,16(sp)
    80008224:	01513423          	sd	s5,8(sp)
    80008228:	04010413          	addi	s0,sp,64
    8000822c:	000017b7          	lui	a5,0x1
    80008230:	01100993          	li	s3,17
    80008234:	00f487b3          	add	a5,s1,a5
    80008238:	01b99993          	slli	s3,s3,0x1b
    8000823c:	06f9e063          	bltu	s3,a5,8000829c <kinit+0xa4>
    80008240:	00005a97          	auipc	s5,0x5
    80008244:	b30a8a93          	addi	s5,s5,-1232 # 8000cd70 <end>
    80008248:	0754ec63          	bltu	s1,s5,800082c0 <kinit+0xc8>
    8000824c:	0734fa63          	bgeu	s1,s3,800082c0 <kinit+0xc8>
    80008250:	00088a37          	lui	s4,0x88
    80008254:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008258:	00003917          	auipc	s2,0x3
    8000825c:	7d890913          	addi	s2,s2,2008 # 8000ba30 <kmem>
    80008260:	00ca1a13          	slli	s4,s4,0xc
    80008264:	0140006f          	j	80008278 <kinit+0x80>
    80008268:	000017b7          	lui	a5,0x1
    8000826c:	00f484b3          	add	s1,s1,a5
    80008270:	0554e863          	bltu	s1,s5,800082c0 <kinit+0xc8>
    80008274:	0534f663          	bgeu	s1,s3,800082c0 <kinit+0xc8>
    80008278:	00001637          	lui	a2,0x1
    8000827c:	00100593          	li	a1,1
    80008280:	00048513          	mv	a0,s1
    80008284:	00000097          	auipc	ra,0x0
    80008288:	5e4080e7          	jalr	1508(ra) # 80008868 <__memset>
    8000828c:	00093783          	ld	a5,0(s2)
    80008290:	00f4b023          	sd	a5,0(s1)
    80008294:	00993023          	sd	s1,0(s2)
    80008298:	fd4498e3          	bne	s1,s4,80008268 <kinit+0x70>
    8000829c:	03813083          	ld	ra,56(sp)
    800082a0:	03013403          	ld	s0,48(sp)
    800082a4:	02813483          	ld	s1,40(sp)
    800082a8:	02013903          	ld	s2,32(sp)
    800082ac:	01813983          	ld	s3,24(sp)
    800082b0:	01013a03          	ld	s4,16(sp)
    800082b4:	00813a83          	ld	s5,8(sp)
    800082b8:	04010113          	addi	sp,sp,64
    800082bc:	00008067          	ret
    800082c0:	00001517          	auipc	a0,0x1
    800082c4:	4a850513          	addi	a0,a0,1192 # 80009768 <digits+0x18>
    800082c8:	fffff097          	auipc	ra,0xfffff
    800082cc:	4b4080e7          	jalr	1204(ra) # 8000777c <panic>

00000000800082d0 <freerange>:
    800082d0:	fc010113          	addi	sp,sp,-64
    800082d4:	000017b7          	lui	a5,0x1
    800082d8:	02913423          	sd	s1,40(sp)
    800082dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800082e0:	009504b3          	add	s1,a0,s1
    800082e4:	fffff537          	lui	a0,0xfffff
    800082e8:	02813823          	sd	s0,48(sp)
    800082ec:	02113c23          	sd	ra,56(sp)
    800082f0:	03213023          	sd	s2,32(sp)
    800082f4:	01313c23          	sd	s3,24(sp)
    800082f8:	01413823          	sd	s4,16(sp)
    800082fc:	01513423          	sd	s5,8(sp)
    80008300:	01613023          	sd	s6,0(sp)
    80008304:	04010413          	addi	s0,sp,64
    80008308:	00a4f4b3          	and	s1,s1,a0
    8000830c:	00f487b3          	add	a5,s1,a5
    80008310:	06f5e463          	bltu	a1,a5,80008378 <freerange+0xa8>
    80008314:	00005a97          	auipc	s5,0x5
    80008318:	a5ca8a93          	addi	s5,s5,-1444 # 8000cd70 <end>
    8000831c:	0954e263          	bltu	s1,s5,800083a0 <freerange+0xd0>
    80008320:	01100993          	li	s3,17
    80008324:	01b99993          	slli	s3,s3,0x1b
    80008328:	0734fc63          	bgeu	s1,s3,800083a0 <freerange+0xd0>
    8000832c:	00058a13          	mv	s4,a1
    80008330:	00003917          	auipc	s2,0x3
    80008334:	70090913          	addi	s2,s2,1792 # 8000ba30 <kmem>
    80008338:	00002b37          	lui	s6,0x2
    8000833c:	0140006f          	j	80008350 <freerange+0x80>
    80008340:	000017b7          	lui	a5,0x1
    80008344:	00f484b3          	add	s1,s1,a5
    80008348:	0554ec63          	bltu	s1,s5,800083a0 <freerange+0xd0>
    8000834c:	0534fa63          	bgeu	s1,s3,800083a0 <freerange+0xd0>
    80008350:	00001637          	lui	a2,0x1
    80008354:	00100593          	li	a1,1
    80008358:	00048513          	mv	a0,s1
    8000835c:	00000097          	auipc	ra,0x0
    80008360:	50c080e7          	jalr	1292(ra) # 80008868 <__memset>
    80008364:	00093703          	ld	a4,0(s2)
    80008368:	016487b3          	add	a5,s1,s6
    8000836c:	00e4b023          	sd	a4,0(s1)
    80008370:	00993023          	sd	s1,0(s2)
    80008374:	fcfa76e3          	bgeu	s4,a5,80008340 <freerange+0x70>
    80008378:	03813083          	ld	ra,56(sp)
    8000837c:	03013403          	ld	s0,48(sp)
    80008380:	02813483          	ld	s1,40(sp)
    80008384:	02013903          	ld	s2,32(sp)
    80008388:	01813983          	ld	s3,24(sp)
    8000838c:	01013a03          	ld	s4,16(sp)
    80008390:	00813a83          	ld	s5,8(sp)
    80008394:	00013b03          	ld	s6,0(sp)
    80008398:	04010113          	addi	sp,sp,64
    8000839c:	00008067          	ret
    800083a0:	00001517          	auipc	a0,0x1
    800083a4:	3c850513          	addi	a0,a0,968 # 80009768 <digits+0x18>
    800083a8:	fffff097          	auipc	ra,0xfffff
    800083ac:	3d4080e7          	jalr	980(ra) # 8000777c <panic>

00000000800083b0 <kfree>:
    800083b0:	fe010113          	addi	sp,sp,-32
    800083b4:	00813823          	sd	s0,16(sp)
    800083b8:	00113c23          	sd	ra,24(sp)
    800083bc:	00913423          	sd	s1,8(sp)
    800083c0:	02010413          	addi	s0,sp,32
    800083c4:	03451793          	slli	a5,a0,0x34
    800083c8:	04079c63          	bnez	a5,80008420 <kfree+0x70>
    800083cc:	00005797          	auipc	a5,0x5
    800083d0:	9a478793          	addi	a5,a5,-1628 # 8000cd70 <end>
    800083d4:	00050493          	mv	s1,a0
    800083d8:	04f56463          	bltu	a0,a5,80008420 <kfree+0x70>
    800083dc:	01100793          	li	a5,17
    800083e0:	01b79793          	slli	a5,a5,0x1b
    800083e4:	02f57e63          	bgeu	a0,a5,80008420 <kfree+0x70>
    800083e8:	00001637          	lui	a2,0x1
    800083ec:	00100593          	li	a1,1
    800083f0:	00000097          	auipc	ra,0x0
    800083f4:	478080e7          	jalr	1144(ra) # 80008868 <__memset>
    800083f8:	00003797          	auipc	a5,0x3
    800083fc:	63878793          	addi	a5,a5,1592 # 8000ba30 <kmem>
    80008400:	0007b703          	ld	a4,0(a5)
    80008404:	01813083          	ld	ra,24(sp)
    80008408:	01013403          	ld	s0,16(sp)
    8000840c:	00e4b023          	sd	a4,0(s1)
    80008410:	0097b023          	sd	s1,0(a5)
    80008414:	00813483          	ld	s1,8(sp)
    80008418:	02010113          	addi	sp,sp,32
    8000841c:	00008067          	ret
    80008420:	00001517          	auipc	a0,0x1
    80008424:	34850513          	addi	a0,a0,840 # 80009768 <digits+0x18>
    80008428:	fffff097          	auipc	ra,0xfffff
    8000842c:	354080e7          	jalr	852(ra) # 8000777c <panic>

0000000080008430 <kalloc>:
    80008430:	fe010113          	addi	sp,sp,-32
    80008434:	00813823          	sd	s0,16(sp)
    80008438:	00913423          	sd	s1,8(sp)
    8000843c:	00113c23          	sd	ra,24(sp)
    80008440:	02010413          	addi	s0,sp,32
    80008444:	00003797          	auipc	a5,0x3
    80008448:	5ec78793          	addi	a5,a5,1516 # 8000ba30 <kmem>
    8000844c:	0007b483          	ld	s1,0(a5)
    80008450:	02048063          	beqz	s1,80008470 <kalloc+0x40>
    80008454:	0004b703          	ld	a4,0(s1)
    80008458:	00001637          	lui	a2,0x1
    8000845c:	00500593          	li	a1,5
    80008460:	00048513          	mv	a0,s1
    80008464:	00e7b023          	sd	a4,0(a5)
    80008468:	00000097          	auipc	ra,0x0
    8000846c:	400080e7          	jalr	1024(ra) # 80008868 <__memset>
    80008470:	01813083          	ld	ra,24(sp)
    80008474:	01013403          	ld	s0,16(sp)
    80008478:	00048513          	mv	a0,s1
    8000847c:	00813483          	ld	s1,8(sp)
    80008480:	02010113          	addi	sp,sp,32
    80008484:	00008067          	ret

0000000080008488 <initlock>:
    80008488:	ff010113          	addi	sp,sp,-16
    8000848c:	00813423          	sd	s0,8(sp)
    80008490:	01010413          	addi	s0,sp,16
    80008494:	00813403          	ld	s0,8(sp)
    80008498:	00b53423          	sd	a1,8(a0)
    8000849c:	00052023          	sw	zero,0(a0)
    800084a0:	00053823          	sd	zero,16(a0)
    800084a4:	01010113          	addi	sp,sp,16
    800084a8:	00008067          	ret

00000000800084ac <acquire>:
    800084ac:	fe010113          	addi	sp,sp,-32
    800084b0:	00813823          	sd	s0,16(sp)
    800084b4:	00913423          	sd	s1,8(sp)
    800084b8:	00113c23          	sd	ra,24(sp)
    800084bc:	01213023          	sd	s2,0(sp)
    800084c0:	02010413          	addi	s0,sp,32
    800084c4:	00050493          	mv	s1,a0
    800084c8:	10002973          	csrr	s2,sstatus
    800084cc:	100027f3          	csrr	a5,sstatus
    800084d0:	ffd7f793          	andi	a5,a5,-3
    800084d4:	10079073          	csrw	sstatus,a5
    800084d8:	fffff097          	auipc	ra,0xfffff
    800084dc:	8ec080e7          	jalr	-1812(ra) # 80006dc4 <mycpu>
    800084e0:	07852783          	lw	a5,120(a0)
    800084e4:	06078e63          	beqz	a5,80008560 <acquire+0xb4>
    800084e8:	fffff097          	auipc	ra,0xfffff
    800084ec:	8dc080e7          	jalr	-1828(ra) # 80006dc4 <mycpu>
    800084f0:	07852783          	lw	a5,120(a0)
    800084f4:	0004a703          	lw	a4,0(s1)
    800084f8:	0017879b          	addiw	a5,a5,1
    800084fc:	06f52c23          	sw	a5,120(a0)
    80008500:	04071063          	bnez	a4,80008540 <acquire+0x94>
    80008504:	00100713          	li	a4,1
    80008508:	00070793          	mv	a5,a4
    8000850c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008510:	0007879b          	sext.w	a5,a5
    80008514:	fe079ae3          	bnez	a5,80008508 <acquire+0x5c>
    80008518:	0ff0000f          	fence
    8000851c:	fffff097          	auipc	ra,0xfffff
    80008520:	8a8080e7          	jalr	-1880(ra) # 80006dc4 <mycpu>
    80008524:	01813083          	ld	ra,24(sp)
    80008528:	01013403          	ld	s0,16(sp)
    8000852c:	00a4b823          	sd	a0,16(s1)
    80008530:	00013903          	ld	s2,0(sp)
    80008534:	00813483          	ld	s1,8(sp)
    80008538:	02010113          	addi	sp,sp,32
    8000853c:	00008067          	ret
    80008540:	0104b903          	ld	s2,16(s1)
    80008544:	fffff097          	auipc	ra,0xfffff
    80008548:	880080e7          	jalr	-1920(ra) # 80006dc4 <mycpu>
    8000854c:	faa91ce3          	bne	s2,a0,80008504 <acquire+0x58>
    80008550:	00001517          	auipc	a0,0x1
    80008554:	22050513          	addi	a0,a0,544 # 80009770 <digits+0x20>
    80008558:	fffff097          	auipc	ra,0xfffff
    8000855c:	224080e7          	jalr	548(ra) # 8000777c <panic>
    80008560:	00195913          	srli	s2,s2,0x1
    80008564:	fffff097          	auipc	ra,0xfffff
    80008568:	860080e7          	jalr	-1952(ra) # 80006dc4 <mycpu>
    8000856c:	00197913          	andi	s2,s2,1
    80008570:	07252e23          	sw	s2,124(a0)
    80008574:	f75ff06f          	j	800084e8 <acquire+0x3c>

0000000080008578 <release>:
    80008578:	fe010113          	addi	sp,sp,-32
    8000857c:	00813823          	sd	s0,16(sp)
    80008580:	00113c23          	sd	ra,24(sp)
    80008584:	00913423          	sd	s1,8(sp)
    80008588:	01213023          	sd	s2,0(sp)
    8000858c:	02010413          	addi	s0,sp,32
    80008590:	00052783          	lw	a5,0(a0)
    80008594:	00079a63          	bnez	a5,800085a8 <release+0x30>
    80008598:	00001517          	auipc	a0,0x1
    8000859c:	1e050513          	addi	a0,a0,480 # 80009778 <digits+0x28>
    800085a0:	fffff097          	auipc	ra,0xfffff
    800085a4:	1dc080e7          	jalr	476(ra) # 8000777c <panic>
    800085a8:	01053903          	ld	s2,16(a0)
    800085ac:	00050493          	mv	s1,a0
    800085b0:	fffff097          	auipc	ra,0xfffff
    800085b4:	814080e7          	jalr	-2028(ra) # 80006dc4 <mycpu>
    800085b8:	fea910e3          	bne	s2,a0,80008598 <release+0x20>
    800085bc:	0004b823          	sd	zero,16(s1)
    800085c0:	0ff0000f          	fence
    800085c4:	0f50000f          	fence	iorw,ow
    800085c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800085cc:	ffffe097          	auipc	ra,0xffffe
    800085d0:	7f8080e7          	jalr	2040(ra) # 80006dc4 <mycpu>
    800085d4:	100027f3          	csrr	a5,sstatus
    800085d8:	0027f793          	andi	a5,a5,2
    800085dc:	04079a63          	bnez	a5,80008630 <release+0xb8>
    800085e0:	07852783          	lw	a5,120(a0)
    800085e4:	02f05e63          	blez	a5,80008620 <release+0xa8>
    800085e8:	fff7871b          	addiw	a4,a5,-1
    800085ec:	06e52c23          	sw	a4,120(a0)
    800085f0:	00071c63          	bnez	a4,80008608 <release+0x90>
    800085f4:	07c52783          	lw	a5,124(a0)
    800085f8:	00078863          	beqz	a5,80008608 <release+0x90>
    800085fc:	100027f3          	csrr	a5,sstatus
    80008600:	0027e793          	ori	a5,a5,2
    80008604:	10079073          	csrw	sstatus,a5
    80008608:	01813083          	ld	ra,24(sp)
    8000860c:	01013403          	ld	s0,16(sp)
    80008610:	00813483          	ld	s1,8(sp)
    80008614:	00013903          	ld	s2,0(sp)
    80008618:	02010113          	addi	sp,sp,32
    8000861c:	00008067          	ret
    80008620:	00001517          	auipc	a0,0x1
    80008624:	17850513          	addi	a0,a0,376 # 80009798 <digits+0x48>
    80008628:	fffff097          	auipc	ra,0xfffff
    8000862c:	154080e7          	jalr	340(ra) # 8000777c <panic>
    80008630:	00001517          	auipc	a0,0x1
    80008634:	15050513          	addi	a0,a0,336 # 80009780 <digits+0x30>
    80008638:	fffff097          	auipc	ra,0xfffff
    8000863c:	144080e7          	jalr	324(ra) # 8000777c <panic>

0000000080008640 <holding>:
    80008640:	00052783          	lw	a5,0(a0)
    80008644:	00079663          	bnez	a5,80008650 <holding+0x10>
    80008648:	00000513          	li	a0,0
    8000864c:	00008067          	ret
    80008650:	fe010113          	addi	sp,sp,-32
    80008654:	00813823          	sd	s0,16(sp)
    80008658:	00913423          	sd	s1,8(sp)
    8000865c:	00113c23          	sd	ra,24(sp)
    80008660:	02010413          	addi	s0,sp,32
    80008664:	01053483          	ld	s1,16(a0)
    80008668:	ffffe097          	auipc	ra,0xffffe
    8000866c:	75c080e7          	jalr	1884(ra) # 80006dc4 <mycpu>
    80008670:	01813083          	ld	ra,24(sp)
    80008674:	01013403          	ld	s0,16(sp)
    80008678:	40a48533          	sub	a0,s1,a0
    8000867c:	00153513          	seqz	a0,a0
    80008680:	00813483          	ld	s1,8(sp)
    80008684:	02010113          	addi	sp,sp,32
    80008688:	00008067          	ret

000000008000868c <push_off>:
    8000868c:	fe010113          	addi	sp,sp,-32
    80008690:	00813823          	sd	s0,16(sp)
    80008694:	00113c23          	sd	ra,24(sp)
    80008698:	00913423          	sd	s1,8(sp)
    8000869c:	02010413          	addi	s0,sp,32
    800086a0:	100024f3          	csrr	s1,sstatus
    800086a4:	100027f3          	csrr	a5,sstatus
    800086a8:	ffd7f793          	andi	a5,a5,-3
    800086ac:	10079073          	csrw	sstatus,a5
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	714080e7          	jalr	1812(ra) # 80006dc4 <mycpu>
    800086b8:	07852783          	lw	a5,120(a0)
    800086bc:	02078663          	beqz	a5,800086e8 <push_off+0x5c>
    800086c0:	ffffe097          	auipc	ra,0xffffe
    800086c4:	704080e7          	jalr	1796(ra) # 80006dc4 <mycpu>
    800086c8:	07852783          	lw	a5,120(a0)
    800086cc:	01813083          	ld	ra,24(sp)
    800086d0:	01013403          	ld	s0,16(sp)
    800086d4:	0017879b          	addiw	a5,a5,1
    800086d8:	06f52c23          	sw	a5,120(a0)
    800086dc:	00813483          	ld	s1,8(sp)
    800086e0:	02010113          	addi	sp,sp,32
    800086e4:	00008067          	ret
    800086e8:	0014d493          	srli	s1,s1,0x1
    800086ec:	ffffe097          	auipc	ra,0xffffe
    800086f0:	6d8080e7          	jalr	1752(ra) # 80006dc4 <mycpu>
    800086f4:	0014f493          	andi	s1,s1,1
    800086f8:	06952e23          	sw	s1,124(a0)
    800086fc:	fc5ff06f          	j	800086c0 <push_off+0x34>

0000000080008700 <pop_off>:
    80008700:	ff010113          	addi	sp,sp,-16
    80008704:	00813023          	sd	s0,0(sp)
    80008708:	00113423          	sd	ra,8(sp)
    8000870c:	01010413          	addi	s0,sp,16
    80008710:	ffffe097          	auipc	ra,0xffffe
    80008714:	6b4080e7          	jalr	1716(ra) # 80006dc4 <mycpu>
    80008718:	100027f3          	csrr	a5,sstatus
    8000871c:	0027f793          	andi	a5,a5,2
    80008720:	04079663          	bnez	a5,8000876c <pop_off+0x6c>
    80008724:	07852783          	lw	a5,120(a0)
    80008728:	02f05a63          	blez	a5,8000875c <pop_off+0x5c>
    8000872c:	fff7871b          	addiw	a4,a5,-1
    80008730:	06e52c23          	sw	a4,120(a0)
    80008734:	00071c63          	bnez	a4,8000874c <pop_off+0x4c>
    80008738:	07c52783          	lw	a5,124(a0)
    8000873c:	00078863          	beqz	a5,8000874c <pop_off+0x4c>
    80008740:	100027f3          	csrr	a5,sstatus
    80008744:	0027e793          	ori	a5,a5,2
    80008748:	10079073          	csrw	sstatus,a5
    8000874c:	00813083          	ld	ra,8(sp)
    80008750:	00013403          	ld	s0,0(sp)
    80008754:	01010113          	addi	sp,sp,16
    80008758:	00008067          	ret
    8000875c:	00001517          	auipc	a0,0x1
    80008760:	03c50513          	addi	a0,a0,60 # 80009798 <digits+0x48>
    80008764:	fffff097          	auipc	ra,0xfffff
    80008768:	018080e7          	jalr	24(ra) # 8000777c <panic>
    8000876c:	00001517          	auipc	a0,0x1
    80008770:	01450513          	addi	a0,a0,20 # 80009780 <digits+0x30>
    80008774:	fffff097          	auipc	ra,0xfffff
    80008778:	008080e7          	jalr	8(ra) # 8000777c <panic>

000000008000877c <push_on>:
    8000877c:	fe010113          	addi	sp,sp,-32
    80008780:	00813823          	sd	s0,16(sp)
    80008784:	00113c23          	sd	ra,24(sp)
    80008788:	00913423          	sd	s1,8(sp)
    8000878c:	02010413          	addi	s0,sp,32
    80008790:	100024f3          	csrr	s1,sstatus
    80008794:	100027f3          	csrr	a5,sstatus
    80008798:	0027e793          	ori	a5,a5,2
    8000879c:	10079073          	csrw	sstatus,a5
    800087a0:	ffffe097          	auipc	ra,0xffffe
    800087a4:	624080e7          	jalr	1572(ra) # 80006dc4 <mycpu>
    800087a8:	07852783          	lw	a5,120(a0)
    800087ac:	02078663          	beqz	a5,800087d8 <push_on+0x5c>
    800087b0:	ffffe097          	auipc	ra,0xffffe
    800087b4:	614080e7          	jalr	1556(ra) # 80006dc4 <mycpu>
    800087b8:	07852783          	lw	a5,120(a0)
    800087bc:	01813083          	ld	ra,24(sp)
    800087c0:	01013403          	ld	s0,16(sp)
    800087c4:	0017879b          	addiw	a5,a5,1
    800087c8:	06f52c23          	sw	a5,120(a0)
    800087cc:	00813483          	ld	s1,8(sp)
    800087d0:	02010113          	addi	sp,sp,32
    800087d4:	00008067          	ret
    800087d8:	0014d493          	srli	s1,s1,0x1
    800087dc:	ffffe097          	auipc	ra,0xffffe
    800087e0:	5e8080e7          	jalr	1512(ra) # 80006dc4 <mycpu>
    800087e4:	0014f493          	andi	s1,s1,1
    800087e8:	06952e23          	sw	s1,124(a0)
    800087ec:	fc5ff06f          	j	800087b0 <push_on+0x34>

00000000800087f0 <pop_on>:
    800087f0:	ff010113          	addi	sp,sp,-16
    800087f4:	00813023          	sd	s0,0(sp)
    800087f8:	00113423          	sd	ra,8(sp)
    800087fc:	01010413          	addi	s0,sp,16
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	5c4080e7          	jalr	1476(ra) # 80006dc4 <mycpu>
    80008808:	100027f3          	csrr	a5,sstatus
    8000880c:	0027f793          	andi	a5,a5,2
    80008810:	04078463          	beqz	a5,80008858 <pop_on+0x68>
    80008814:	07852783          	lw	a5,120(a0)
    80008818:	02f05863          	blez	a5,80008848 <pop_on+0x58>
    8000881c:	fff7879b          	addiw	a5,a5,-1
    80008820:	06f52c23          	sw	a5,120(a0)
    80008824:	07853783          	ld	a5,120(a0)
    80008828:	00079863          	bnez	a5,80008838 <pop_on+0x48>
    8000882c:	100027f3          	csrr	a5,sstatus
    80008830:	ffd7f793          	andi	a5,a5,-3
    80008834:	10079073          	csrw	sstatus,a5
    80008838:	00813083          	ld	ra,8(sp)
    8000883c:	00013403          	ld	s0,0(sp)
    80008840:	01010113          	addi	sp,sp,16
    80008844:	00008067          	ret
    80008848:	00001517          	auipc	a0,0x1
    8000884c:	f7850513          	addi	a0,a0,-136 # 800097c0 <digits+0x70>
    80008850:	fffff097          	auipc	ra,0xfffff
    80008854:	f2c080e7          	jalr	-212(ra) # 8000777c <panic>
    80008858:	00001517          	auipc	a0,0x1
    8000885c:	f4850513          	addi	a0,a0,-184 # 800097a0 <digits+0x50>
    80008860:	fffff097          	auipc	ra,0xfffff
    80008864:	f1c080e7          	jalr	-228(ra) # 8000777c <panic>

0000000080008868 <__memset>:
    80008868:	ff010113          	addi	sp,sp,-16
    8000886c:	00813423          	sd	s0,8(sp)
    80008870:	01010413          	addi	s0,sp,16
    80008874:	1a060e63          	beqz	a2,80008a30 <__memset+0x1c8>
    80008878:	40a007b3          	neg	a5,a0
    8000887c:	0077f793          	andi	a5,a5,7
    80008880:	00778693          	addi	a3,a5,7
    80008884:	00b00813          	li	a6,11
    80008888:	0ff5f593          	andi	a1,a1,255
    8000888c:	fff6071b          	addiw	a4,a2,-1
    80008890:	1b06e663          	bltu	a3,a6,80008a3c <__memset+0x1d4>
    80008894:	1cd76463          	bltu	a4,a3,80008a5c <__memset+0x1f4>
    80008898:	1a078e63          	beqz	a5,80008a54 <__memset+0x1ec>
    8000889c:	00b50023          	sb	a1,0(a0)
    800088a0:	00100713          	li	a4,1
    800088a4:	1ae78463          	beq	a5,a4,80008a4c <__memset+0x1e4>
    800088a8:	00b500a3          	sb	a1,1(a0)
    800088ac:	00200713          	li	a4,2
    800088b0:	1ae78a63          	beq	a5,a4,80008a64 <__memset+0x1fc>
    800088b4:	00b50123          	sb	a1,2(a0)
    800088b8:	00300713          	li	a4,3
    800088bc:	18e78463          	beq	a5,a4,80008a44 <__memset+0x1dc>
    800088c0:	00b501a3          	sb	a1,3(a0)
    800088c4:	00400713          	li	a4,4
    800088c8:	1ae78263          	beq	a5,a4,80008a6c <__memset+0x204>
    800088cc:	00b50223          	sb	a1,4(a0)
    800088d0:	00500713          	li	a4,5
    800088d4:	1ae78063          	beq	a5,a4,80008a74 <__memset+0x20c>
    800088d8:	00b502a3          	sb	a1,5(a0)
    800088dc:	00700713          	li	a4,7
    800088e0:	18e79e63          	bne	a5,a4,80008a7c <__memset+0x214>
    800088e4:	00b50323          	sb	a1,6(a0)
    800088e8:	00700e93          	li	t4,7
    800088ec:	00859713          	slli	a4,a1,0x8
    800088f0:	00e5e733          	or	a4,a1,a4
    800088f4:	01059e13          	slli	t3,a1,0x10
    800088f8:	01c76e33          	or	t3,a4,t3
    800088fc:	01859313          	slli	t1,a1,0x18
    80008900:	006e6333          	or	t1,t3,t1
    80008904:	02059893          	slli	a7,a1,0x20
    80008908:	40f60e3b          	subw	t3,a2,a5
    8000890c:	011368b3          	or	a7,t1,a7
    80008910:	02859813          	slli	a6,a1,0x28
    80008914:	0108e833          	or	a6,a7,a6
    80008918:	03059693          	slli	a3,a1,0x30
    8000891c:	003e589b          	srliw	a7,t3,0x3
    80008920:	00d866b3          	or	a3,a6,a3
    80008924:	03859713          	slli	a4,a1,0x38
    80008928:	00389813          	slli	a6,a7,0x3
    8000892c:	00f507b3          	add	a5,a0,a5
    80008930:	00e6e733          	or	a4,a3,a4
    80008934:	000e089b          	sext.w	a7,t3
    80008938:	00f806b3          	add	a3,a6,a5
    8000893c:	00e7b023          	sd	a4,0(a5)
    80008940:	00878793          	addi	a5,a5,8
    80008944:	fed79ce3          	bne	a5,a3,8000893c <__memset+0xd4>
    80008948:	ff8e7793          	andi	a5,t3,-8
    8000894c:	0007871b          	sext.w	a4,a5
    80008950:	01d787bb          	addw	a5,a5,t4
    80008954:	0ce88e63          	beq	a7,a4,80008a30 <__memset+0x1c8>
    80008958:	00f50733          	add	a4,a0,a5
    8000895c:	00b70023          	sb	a1,0(a4)
    80008960:	0017871b          	addiw	a4,a5,1
    80008964:	0cc77663          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    80008968:	00e50733          	add	a4,a0,a4
    8000896c:	00b70023          	sb	a1,0(a4)
    80008970:	0027871b          	addiw	a4,a5,2
    80008974:	0ac77e63          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    80008978:	00e50733          	add	a4,a0,a4
    8000897c:	00b70023          	sb	a1,0(a4)
    80008980:	0037871b          	addiw	a4,a5,3
    80008984:	0ac77663          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    80008988:	00e50733          	add	a4,a0,a4
    8000898c:	00b70023          	sb	a1,0(a4)
    80008990:	0047871b          	addiw	a4,a5,4
    80008994:	08c77e63          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    80008998:	00e50733          	add	a4,a0,a4
    8000899c:	00b70023          	sb	a1,0(a4)
    800089a0:	0057871b          	addiw	a4,a5,5
    800089a4:	08c77663          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    800089a8:	00e50733          	add	a4,a0,a4
    800089ac:	00b70023          	sb	a1,0(a4)
    800089b0:	0067871b          	addiw	a4,a5,6
    800089b4:	06c77e63          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    800089b8:	00e50733          	add	a4,a0,a4
    800089bc:	00b70023          	sb	a1,0(a4)
    800089c0:	0077871b          	addiw	a4,a5,7
    800089c4:	06c77663          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    800089c8:	00e50733          	add	a4,a0,a4
    800089cc:	00b70023          	sb	a1,0(a4)
    800089d0:	0087871b          	addiw	a4,a5,8
    800089d4:	04c77e63          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    800089d8:	00e50733          	add	a4,a0,a4
    800089dc:	00b70023          	sb	a1,0(a4)
    800089e0:	0097871b          	addiw	a4,a5,9
    800089e4:	04c77663          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    800089e8:	00e50733          	add	a4,a0,a4
    800089ec:	00b70023          	sb	a1,0(a4)
    800089f0:	00a7871b          	addiw	a4,a5,10
    800089f4:	02c77e63          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	00b7871b          	addiw	a4,a5,11
    80008a04:	02c77663          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	00c7871b          	addiw	a4,a5,12
    80008a14:	00c77e63          	bgeu	a4,a2,80008a30 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	00d7879b          	addiw	a5,a5,13
    80008a24:	00c7f663          	bgeu	a5,a2,80008a30 <__memset+0x1c8>
    80008a28:	00f507b3          	add	a5,a0,a5
    80008a2c:	00b78023          	sb	a1,0(a5)
    80008a30:	00813403          	ld	s0,8(sp)
    80008a34:	01010113          	addi	sp,sp,16
    80008a38:	00008067          	ret
    80008a3c:	00b00693          	li	a3,11
    80008a40:	e55ff06f          	j	80008894 <__memset+0x2c>
    80008a44:	00300e93          	li	t4,3
    80008a48:	ea5ff06f          	j	800088ec <__memset+0x84>
    80008a4c:	00100e93          	li	t4,1
    80008a50:	e9dff06f          	j	800088ec <__memset+0x84>
    80008a54:	00000e93          	li	t4,0
    80008a58:	e95ff06f          	j	800088ec <__memset+0x84>
    80008a5c:	00000793          	li	a5,0
    80008a60:	ef9ff06f          	j	80008958 <__memset+0xf0>
    80008a64:	00200e93          	li	t4,2
    80008a68:	e85ff06f          	j	800088ec <__memset+0x84>
    80008a6c:	00400e93          	li	t4,4
    80008a70:	e7dff06f          	j	800088ec <__memset+0x84>
    80008a74:	00500e93          	li	t4,5
    80008a78:	e75ff06f          	j	800088ec <__memset+0x84>
    80008a7c:	00600e93          	li	t4,6
    80008a80:	e6dff06f          	j	800088ec <__memset+0x84>

0000000080008a84 <__memmove>:
    80008a84:	ff010113          	addi	sp,sp,-16
    80008a88:	00813423          	sd	s0,8(sp)
    80008a8c:	01010413          	addi	s0,sp,16
    80008a90:	0e060863          	beqz	a2,80008b80 <__memmove+0xfc>
    80008a94:	fff6069b          	addiw	a3,a2,-1
    80008a98:	0006881b          	sext.w	a6,a3
    80008a9c:	0ea5e863          	bltu	a1,a0,80008b8c <__memmove+0x108>
    80008aa0:	00758713          	addi	a4,a1,7
    80008aa4:	00a5e7b3          	or	a5,a1,a0
    80008aa8:	40a70733          	sub	a4,a4,a0
    80008aac:	0077f793          	andi	a5,a5,7
    80008ab0:	00f73713          	sltiu	a4,a4,15
    80008ab4:	00174713          	xori	a4,a4,1
    80008ab8:	0017b793          	seqz	a5,a5
    80008abc:	00e7f7b3          	and	a5,a5,a4
    80008ac0:	10078863          	beqz	a5,80008bd0 <__memmove+0x14c>
    80008ac4:	00900793          	li	a5,9
    80008ac8:	1107f463          	bgeu	a5,a6,80008bd0 <__memmove+0x14c>
    80008acc:	0036581b          	srliw	a6,a2,0x3
    80008ad0:	fff8081b          	addiw	a6,a6,-1
    80008ad4:	02081813          	slli	a6,a6,0x20
    80008ad8:	01d85893          	srli	a7,a6,0x1d
    80008adc:	00858813          	addi	a6,a1,8
    80008ae0:	00058793          	mv	a5,a1
    80008ae4:	00050713          	mv	a4,a0
    80008ae8:	01088833          	add	a6,a7,a6
    80008aec:	0007b883          	ld	a7,0(a5)
    80008af0:	00878793          	addi	a5,a5,8
    80008af4:	00870713          	addi	a4,a4,8
    80008af8:	ff173c23          	sd	a7,-8(a4)
    80008afc:	ff0798e3          	bne	a5,a6,80008aec <__memmove+0x68>
    80008b00:	ff867713          	andi	a4,a2,-8
    80008b04:	02071793          	slli	a5,a4,0x20
    80008b08:	0207d793          	srli	a5,a5,0x20
    80008b0c:	00f585b3          	add	a1,a1,a5
    80008b10:	40e686bb          	subw	a3,a3,a4
    80008b14:	00f507b3          	add	a5,a0,a5
    80008b18:	06e60463          	beq	a2,a4,80008b80 <__memmove+0xfc>
    80008b1c:	0005c703          	lbu	a4,0(a1)
    80008b20:	00e78023          	sb	a4,0(a5)
    80008b24:	04068e63          	beqz	a3,80008b80 <__memmove+0xfc>
    80008b28:	0015c603          	lbu	a2,1(a1)
    80008b2c:	00100713          	li	a4,1
    80008b30:	00c780a3          	sb	a2,1(a5)
    80008b34:	04e68663          	beq	a3,a4,80008b80 <__memmove+0xfc>
    80008b38:	0025c603          	lbu	a2,2(a1)
    80008b3c:	00200713          	li	a4,2
    80008b40:	00c78123          	sb	a2,2(a5)
    80008b44:	02e68e63          	beq	a3,a4,80008b80 <__memmove+0xfc>
    80008b48:	0035c603          	lbu	a2,3(a1)
    80008b4c:	00300713          	li	a4,3
    80008b50:	00c781a3          	sb	a2,3(a5)
    80008b54:	02e68663          	beq	a3,a4,80008b80 <__memmove+0xfc>
    80008b58:	0045c603          	lbu	a2,4(a1)
    80008b5c:	00400713          	li	a4,4
    80008b60:	00c78223          	sb	a2,4(a5)
    80008b64:	00e68e63          	beq	a3,a4,80008b80 <__memmove+0xfc>
    80008b68:	0055c603          	lbu	a2,5(a1)
    80008b6c:	00500713          	li	a4,5
    80008b70:	00c782a3          	sb	a2,5(a5)
    80008b74:	00e68663          	beq	a3,a4,80008b80 <__memmove+0xfc>
    80008b78:	0065c703          	lbu	a4,6(a1)
    80008b7c:	00e78323          	sb	a4,6(a5)
    80008b80:	00813403          	ld	s0,8(sp)
    80008b84:	01010113          	addi	sp,sp,16
    80008b88:	00008067          	ret
    80008b8c:	02061713          	slli	a4,a2,0x20
    80008b90:	02075713          	srli	a4,a4,0x20
    80008b94:	00e587b3          	add	a5,a1,a4
    80008b98:	f0f574e3          	bgeu	a0,a5,80008aa0 <__memmove+0x1c>
    80008b9c:	02069613          	slli	a2,a3,0x20
    80008ba0:	02065613          	srli	a2,a2,0x20
    80008ba4:	fff64613          	not	a2,a2
    80008ba8:	00e50733          	add	a4,a0,a4
    80008bac:	00c78633          	add	a2,a5,a2
    80008bb0:	fff7c683          	lbu	a3,-1(a5)
    80008bb4:	fff78793          	addi	a5,a5,-1
    80008bb8:	fff70713          	addi	a4,a4,-1
    80008bbc:	00d70023          	sb	a3,0(a4)
    80008bc0:	fec798e3          	bne	a5,a2,80008bb0 <__memmove+0x12c>
    80008bc4:	00813403          	ld	s0,8(sp)
    80008bc8:	01010113          	addi	sp,sp,16
    80008bcc:	00008067          	ret
    80008bd0:	02069713          	slli	a4,a3,0x20
    80008bd4:	02075713          	srli	a4,a4,0x20
    80008bd8:	00170713          	addi	a4,a4,1
    80008bdc:	00e50733          	add	a4,a0,a4
    80008be0:	00050793          	mv	a5,a0
    80008be4:	0005c683          	lbu	a3,0(a1)
    80008be8:	00178793          	addi	a5,a5,1
    80008bec:	00158593          	addi	a1,a1,1
    80008bf0:	fed78fa3          	sb	a3,-1(a5)
    80008bf4:	fee798e3          	bne	a5,a4,80008be4 <__memmove+0x160>
    80008bf8:	f89ff06f          	j	80008b80 <__memmove+0xfc>
	...
