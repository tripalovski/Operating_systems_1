#ifndef SLEEPING_THREADS_LIST_HPP
#define SLEEPING_THREADS_LIST_HPP


#include "../lib/hw.h"
#include "memoryAllocator.hpp"
#include "tcb.hpp"
class SleepingThreadList
{
private:
    struct Elem
    {
        TCB* tcb;
        time_t sleep_time;
        Elem *next;

        Elem(TCB* tcb, Elem *next) : tcb(tcb), sleep_time(0), next(next){}

        void* operator new(size_t size) {
            return MemoryAllocator::mem_alloc(((size + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
        }
        void operator delete (void *ptr) {
            MemoryAllocator::mem_free(ptr);
        }
    };

    Elem *head, *tail;

public:
    SleepingThreadList() : head(0), tail(0) {}

    SleepingThreadList(const SleepingThreadList &) = delete;

    SleepingThreadList &operator=(const SleepingThreadList &) = delete;


    TCB *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        TCB *ret = elem->tcb;
        delete elem;
        return ret;
    }

    TCB *peekFirst()
    {
        if (!head) { return 0; }
        return head->tcb;
    }

    bool decreaseTime(){
        head->sleep_time--;
        if(head->sleep_time <= 0) return true;
        return false;
    }
    time_t getTimeLeft(){
        return head->sleep_time;
    }


    void addInOrder(TCB *data, time_t sleep_time){
        Elem *elem = new Elem(data, 0);

        Elem* prev = 0;
        Elem* current  = head;

        size_t sum = 0;

        while(current){
            sum += current->sleep_time;
            if(sum>=sleep_time) {
                sum -= current->sleep_time;
                break;
            }
            prev = current;
            current = current->next;
        }

        if(prev==0){
            elem->next = current;
            head = elem;
            elem->sleep_time = sleep_time;
            if(elem->next) elem->next->sleep_time = elem->next->sleep_time - sleep_time;
        }else{
            size_t relativeSleepTime = sleep_time - sum;
            elem->sleep_time = relativeSleepTime;
            prev->next = elem;
            elem->next = current;
            if(elem->next==0) tail = elem;
            else{
                elem->next->sleep_time = elem->next->sleep_time - relativeSleepTime;
            }
        }
    }


};

#endif //SLEEPING_THREADS_LIST_HPP