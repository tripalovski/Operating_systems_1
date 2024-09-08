#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/syscall_c.hpp"
//#include "../h/syscall_cpp.hpp"
#include "../lib/console.h"
#include "../h/sem.hpp"
#include "../h/myConsole.hpp"
#include "../test/printing.hpp"

void userMain();
//
    thread_t mainThread;
    thread_t consoleOutput;
    thread_t idleThread;

void idleThreadBody(){
    while (true) thread_dispatch();
}

int main()
{
    // Memory
    MemoryAllocator::initMemory();
    // Main Thread
    void* main_stack = MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    TCB::createThread(&mainThread, nullptr, nullptr, main_stack);
    mainThread->setSys(true);
    TCB::running = mainThread;
    // Console
    myConsole::init();
    void* console_stack = MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    TCB::createThread(&consoleOutput, reinterpret_cast<void (*)(void *)>(myConsole::monitorOutput), nullptr, console_stack);
    consoleOutput->setSys(true);
    // Idle Thread
    void* idle_stack = MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(DEFAULT_STACK_SIZE));
    TCB::createThread(&idleThread, reinterpret_cast<void (*)(void *)>(idleThreadBody), nullptr, idle_stack);
    idleThread->setSys(true);
    // interrupt
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap); //sets interrupt routine
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE); // enables interrupts



    mainThread->setSys(false);
    userMain();
    mainThread->setSys(true);

    // gasenje emulatora
    __asm__ volatile("li t1, 0x100000");
    __asm__ volatile("li t2, 0x5555");
    __asm__ volatile("sw t2, 0(t1)");

    return 0;
}
