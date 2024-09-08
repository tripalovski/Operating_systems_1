#include "../h/syscall_c.hpp"
#include "../lib/hw.h"
#include "../lib/console.h"

void* mem_alloc(size_t size){
    void* ptr = nullptr;
    if(size <= 0) return ptr;

    __asm__ volatile("addi sp, sp, -16");
    __asm__ volatile("sd a1, 0(sp)");


    size = CONVERT_SIZE_TO_BLOCKS(size);
    __asm__ volatile("mv a1, %0" : : "r"(size)); // mora ovo prvo posto je size u a0, a0 ce se pregazi
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");
    __asm__ volatile("mv %0, a0" : "=r"(ptr));

    __asm__ volatile("ld a1, 0(sp)");
    __asm__ volatile("addi sp, sp, 16");
    return ptr;
}

int mem_free(void* ptr){
    __asm__ volatile("mv a1, %0" : : "r"(ptr));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");

    int res;
    __asm__ volatile("mv %0, a0" : "=r"(res));
    return res;
}

void thread_dispatch (){
    __asm__ volatile("li a0,0x13");
    __asm__ volatile ("ecall");
}

int thread_create(TCB** handle, void(*start_routine)(void*), void* arg){
    __asm__ volatile("mv a3, a2");
    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    void* stack = mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    if(stack == nullptr) return -1;
    __asm__ volatile("mv a4, %0" : : "r"(stack));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    if(*handle == nullptr) return -2;
    return 0;
}

int thread_exit(){
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile("ecall");
    return -1;
}

int sem_open (sem_t* handle, unsigned init){
    __asm__ volatile("addi sp, sp, -16");
    __asm__ volatile("sd a0, 0(sp)");
    __asm__ volatile("sd a1, 8(sp)");

    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile("ecall");

    __asm__ volatile("ld a1, 8(sp)");
    __asm__ volatile("ld a0, 0(sp)");
    __asm__ volatile("addi sp, sp, 16");
    if(handle == nullptr) return -1;
    return 0;
}

int sem_close (sem_t handle){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile("ecall");
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    return retVal;
}

int sem_wait (sem_t id){
    __asm__ volatile("addi sp, sp, -16");
    __asm__ volatile("sd a1, 0(sp)");

    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile("ecall");
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));

    __asm__ volatile("ld a1, 0(sp)");
    __asm__ volatile("addi sp, sp, 16");
    return retVal;
}

int sem_signal (sem_t id){
    __asm__ volatile("addi sp, sp, -16");
    __asm__ volatile("sd a1, 0(sp)");

    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile("ecall");
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));

    __asm__ volatile("ld a1, 0(sp)");
    __asm__ volatile("addi sp, sp, 16");
    return retVal;
}

int sem_timedwait(sem_t id, time_t timeout){
    __asm__ volatile("mv a2, a1");
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x25");
    __asm__ volatile("ecall");
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    return retVal;
}

int sem_trywait(sem_t id){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x26");
    __asm__ volatile("ecall");
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    return retVal;
}

int time_sleep (time_t){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x31");
    __asm__ volatile("ecall");
    int retVal;
    __asm__ volatile("mv a0, %0" : "=r" (retVal));
    return retVal;
}


char getc (){
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile("ecall");
    char c;
    __asm__ volatile("mv a0, %0" : "=r" (c));
    return c;
}


void putc (char c){
    __asm__ volatile("mv a1, a0");
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile("ecall");
}

