#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../lib//hw.h"
#include "../test/printing.hpp"

TCB* TCB::running = nullptr;
TCB* TCB::tail = nullptr;
uint64 TCB::TID = 0;
uint64 TCB::timeSliceCounter = 0;
SleepingThreadList TCB::sleepingThreads;

extern "C" void  switchToSSP(){
    __asm__ volatile("mv t0, sp");
    __asm__ volatile("mv sp, %[ssp]" : : [ssp] "r" (TCB::running->getSSP()));

    __asm__ volatile("addi sp, sp, -256");
    __asm__ volatile("sd t0, 2*8(sp)"); // cuvam sp na sistemski stek
    __asm__ volatile("addi sp,sp,-16"); // jer asembler implicitno zauzima na pocetku i oslobadja stek na kraju
}

extern "C" void  switchToSP(){
    __asm__ volatile("addi sp,sp,16");
    __asm__ volatile("ld t0, 2*8(sp)");
    __asm__ volatile("addi sp, sp, 256");
    __asm__ volatile("sd sp, (%[ssp])" : : [ssp] "r" (TCB::running->getAddrSSP())) ; // mora da sacuvam ovde ssp inace ce mi se pri sledecem
                                                            // ulasku u switchToSSP uzeti vrednost iz koja je sacuvana u contextSwitch
    __asm__ volatile("mv sp, t0");
}


int TCB::createThread(TCB **handle, TCB::Body body, void *arg, void *stack_space) {
    *handle = (TCB*)MemoryAllocator::mem_alloc(sizeof(TCB));
    TCB* tcb = *handle;
    tcb->body = body;
    tcb->arg = arg;
    if(body != nullptr) tcb->stack = (uint8*) stack_space;
    else tcb->stack = nullptr;
    tcb->isSys = false;
    tcb->sstack = (uint8*) MemoryAllocator::mem_alloc(DEFAULT_STACK_SIZE);
    tcb->ssp = (uint64) &tcb->sstack[DEFAULT_STACK_SIZE - 256];
    tcb->ra = (uint64) &threadWrapper;
    tcb->timeSlice = DEFAULT_TIME_SLICE;
    tcb->finished = false;
    tcb->next = nullptr;
    if (body != nullptr) Scheduler::put(tcb);
    tcb->tid = TCB::TID++;
    tcb->blocked = false;
    tcb->sleeping = false;
    if(body != nullptr){
        uint64 sp = (uint64) &tcb->stack[DEFAULT_STACK_SIZE-16]; // -16 jer ce switchToSSP da oslobodi 16 implicitno
        __asm__ volatile("sd %[sp], 2*8(%[ssp])" :: [sp] "r" (sp), [ssp] "r" (tcb->ssp));
    }
    if (*handle == nullptr) return - 1;
    return 0;
}


void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() and !old->blocked and !old->sleeping) { Scheduler::put(old); }

    running = Scheduler::get();

    TCB::timeSliceCounter = 0;
    if(running->isSys) Riscv::ms_sstatus(Riscv::SSTATUS_SPP); // postavi u sistemski rezim
    else Riscv::mc_sstatus(Riscv::SSTATUS_SPP); // postavi u korsinicki rezim

    contextSwitch(&old->ssp, &running->ssp);
}

#include "../h/print.hpp"

void TCB::threadWrapper()
{
    __asm__ volatile("addi sp,sp,16"); //posto ovde ulazim sa sistemski stek, a dodace mi se nepotreban opseg
    switchToSP();
    Riscv::popSppSpie();
    running->body(running->arg);
//    printString("nit sa TID ");
//    printInteger(running->tid);
//    printString(" je zavrsila\n");
    syscall_c::thread_exit();
}

bool TCB::isBlocked() const {
    return blocked;
}

void TCB::setBlocked(bool blocked) {
    TCB::blocked = blocked;
}

int TCB::putToSleep(time_t sleep_time) {
    if(sleep_time <= 0) return -1;
    TCB::running->sleeping = true;
    TCB::sleepingThreads.addInOrder(TCB::running, sleep_time);
    TCB::dispatch();
    return 0;
}


void TCB::updateSleepingThreads(){
    TCB* sleeping = TCB::sleepingThreads.peekFirst();
    if(sleeping){
        if(TCB::sleepingThreads.decreaseTime()){ // ako vreme bude nula vratice true
            TCB* temp = TCB::sleepingThreads.removeFirst();
            while(temp){
                if(!temp->isFinished()) Scheduler::put(temp);
                temp = TCB::sleepingThreads.peekFirst();
                if(!temp || TCB::sleepingThreads.getTimeLeft() > 0) break;
                temp = TCB::sleepingThreads.removeFirst();
            }
        }
    }
}