#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/sem.hpp"
#include "sleepingThreadList.hpp"

typedef TCB* thread_t;


extern "C" void contextSwitch(uint64* oldSSP, uint64* newSSP);
extern "C" void  switchToSSP();
extern "C" void  switchToSP();

// Thread Control Block
class TCB
{
public:
    ~TCB() { delete[] stack; delete sstack;}

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    uint64 getSSP() const { return ssp; }

    uint64 getAddrSSP() { return (uint64) &ssp; }

    int getTid() const {return tid;}

    void setSleeping (bool sleep) {this->sleeping = sleep;}

    void setSys(bool sys) {isSys = sys;}

    using Body = void (*)(void*);

    static int createThread(TCB** handle, Body body, void* arg, void* stack_space);


    static int thread_exit() {
        running->finished = true;
        dispatch();
        return -1;
    }

    static int putToSleep(time_t sleep_time);

    static void updateSleepingThreads();

    bool isBlocked() const;

    void setBlocked(bool blocked);

    static TCB *running;

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc((((size) + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
    }
    void* operator new[](size_t size) {
        return MemoryAllocator::mem_alloc((((size) + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
    }

    void operator delete(void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }
    void operator delete[](void *ptr) {
        MemoryAllocator::mem_free(ptr);
    }

    static uint64 TID;

private:

    uint64 tid;
    Body body;
    void* arg;
    bool isSys;
    uint8 *stack;
    uint8* sstack;
    uint64 ssp;
    uint64 ra; // ra mi treba samo zbog niti koje si izvrsavaju prvi put
    uint64 timeSlice;
    bool finished;
    TCB* next; // sledeca koja treba se izvrsava iz reda spremnih niti
    bool blocked;
    bool sleeping;

    static uint64 timeSliceCounter;
    static TCB* tail;
    static SleepingThreadList sleepingThreads;

    friend class Riscv;
    friend class Scheduler;
    friend class sem;

    static void threadWrapper();

    static void dispatch();
};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
