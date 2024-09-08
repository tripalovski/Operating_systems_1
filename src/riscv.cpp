#include "../h/print.hpp"

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/memoryAllocator.hpp"
#include "../h/sem.hpp"
#include "../h/myConsole.hpp"
#include "../test/printing.hpp"

static void updateSemTimeBlockedList() {
    Elem* current = sem::timeBlockedQueue;
    if(current)    current->timeLeft--;

    // ako prvi elem ima timeleft = 0, izbaci njega i sve koji imaju relativno vreme 0 u odnosu na njega
    while (current) {
        if (current->timeLeft <= 0) {
            Elem* temp = current;
            temp->tcb->setBlocked(false);
            Scheduler::put(temp->tcb);
            sem::timeBlockedQueue = current->next;

            current = current->next; // Pređi na sledeći čvor
            delete temp; // Oslobodi memoriju za uklonjeni čvor
        }
    }
}

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 code;
        __asm__ volatile("mv %0, a0" : "=r"(code));


        void* ptr;
        int res;
        sem* id;
        char c;
        switch (code) {
            case 0x01: // mem_alloc
                size_t size; // amount of blocks
                __asm__ volatile("mv %0, a1" : "=r"(size));
                ptr = MemoryAllocator::mem_alloc(size);
                __asm__ volatile("mv t0, %0" : : "r"(ptr));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x02: //mem_free
                void* freePtr;
                __asm__ volatile("mv %0, a1" : "=r"(freePtr));
                res = MemoryAllocator::mem_free(freePtr);
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x11: // thread create
                TCB** handle;
                void (*start_routine)(void*);
                void* arg;
                void* stack_space;
                __asm__ volatile("mv %0, a1" : "=r" (handle));
                __asm__ volatile("mv %0, a2" : "=r" (start_routine));
                __asm__ volatile("mv %0, a3" : "=r" (arg));
                __asm__ volatile("ld %0, 8*14(s0)" :  "=r" (stack_space));
                res = TCB::createThread(handle, start_routine, arg, stack_space);
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
                case 0x12: // thread exit
                res = TCB::thread_exit();
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x13:
                TCB::dispatch();
                break;
            case 0x21: // sem open XXX
                sem** semHandle;
                int init;
                __asm__ volatile("mv %0, a1" : "=r" (semHandle));
                __asm__ volatile("mv %0, a2" : "=r" (init));
                sem *semaphore;
                semaphore = new sem(init, semHandle);
                if(!semaphore){
                    res = -1;
                }else{
                    *(semHandle) = semaphore;
                    res = 0;
                }
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x22: // sem close
                __asm__ volatile("mv %0, a1" : "=r" (id));
                if(!id){
                    res = -1;
                }else{
                    delete id;
                    res = 0;
                }
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x23: // sem wait xxx
                __asm__ volatile("mv %0, a1" : "=r" (id));
                res = id->wait();
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x24: // sem signal xxx
                __asm__ volatile("mv %0, a1" : "=r" (id));
                res = id->signal();
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x25: // sem timedwait xxx
                time_t timeout;
                __asm__ volatile("mv %0, a1" : "=r" (id));
                __asm__ volatile("mv %0, a2" : "=r" (timeout));
                res = id->timedWait(timeout);
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x26: // sem tryWait xxx
                __asm__ volatile("mv %0, a1" : "=r" (id));
                res = id->tryWait();
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x31: // time sleep
                time_t sleep_time;
                __asm__ volatile("mv %0, a1" : "=r" (sleep_time));
                res = TCB::putToSleep(sleep_time);
                __asm__ volatile("mv t0, %0" : : "r"(res));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x41: // getc
                c = myConsole::getc();
                if(!c) c = EOF;
                __asm__ volatile("mv t0, %0" : : "r"(c));
                __asm__ volatile ("sd t0, 80(s0)");
                break;
            case 0x42: // putc
                __asm__ volatile("mv %0, a1" : "=r" (c));
                myConsole::putc(c);
                break;
        }

        w_sstatus(sstatus);
        w_sepc(sepc);

    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        updateSemTimeBlockedList();
        TCB::updateSleepingThreads();

        TCB::timeSliceCounter++;
        uint64 time  = TCB::running->getTimeSlice();
        if (TCB::timeSliceCounter >= time)
        {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    {
        // console handler
        uint64 sepc = r_sepc();
        uint64 sstatus = r_sstatus();
        if (plic_claim() == 0x0a){
            char status = *(char*)CONSOLE_STATUS;
            while (CONSOLE_RX_STATUS_BIT & status){
                char ch = *(char*) CONSOLE_RX_DATA;
                myConsole::recieveFromKeyboard(ch);
                status = *(char*)CONSOLE_STATUS;
            }
        }
        plic_complete(0x0a);
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else
    {
        uint64 sepc = r_sepc();

        // unexpected trap cause
        printStringTrap("scause: ");
        printIntegerTrap(scause);
        printStringTrap("\n");

        printStringTrap("sepc: ");
        printIntegerTrap(sepc);
        printStringTrap("\n");
    }
}