#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_THREAD_LIST_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_THREAD_LIST_HPP

#include "../lib/hw.h"
#include "memoryAllocator.hpp"
#include "tcb.hpp"

class ThreadList {
private:
    static const int MAX_SIZE = 100;
    TCB* list[MAX_SIZE];
    int head = 1;
    int tail = 1;
    int count = 1;

public:
    ThreadList() : head(0), tail(0), count(0) {}

    void addLast(TCB* data) {
        if (count < MAX_SIZE) {
            list[tail] = data;
            tail = (tail + 1) % MAX_SIZE;
            count++;
        }
    }

    TCB* removeFirst() {
        if (count > 0) {
            TCB* data = list[head];
            head = (head + 1) % MAX_SIZE;
            count--;
            return data;
        } else {
            return nullptr;
        }
    }

    TCB* peekFirst() const {
        if (count > 0) {
            return list[head];
        } else {
            return nullptr;
        }
    }

    TCB* removeLast() {
        if (count > 0) {
            tail = (tail - 1 + MAX_SIZE) % MAX_SIZE;
            TCB* data = list[tail];
            count--;
            return data;
        } else {
            return nullptr;
        }
    }

    TCB* peekLast() const {
        if (count > 0) {
            int lastIndex = (tail - 1 + MAX_SIZE) % MAX_SIZE;
            return list[lastIndex];
        } else {
            return nullptr;
        }
    }

    bool isEmpty() const {
        return count == 0;
    }

    bool isFull() const {
        return count == MAX_SIZE;
    }

    int size() const {
        return count;
    }

    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(((size + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
    }

    void* operator new[](size_t size) {
        return MemoryAllocator::mem_alloc(((size + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
    }

    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

    void operator delete[](void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }
};

#endif // OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_THREAD_LIST_HPP
