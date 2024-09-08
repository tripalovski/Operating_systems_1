#include "../h/consoleBuffer.hpp"
extern size_t descSize;

extern size_t convertSizeInBlocks(size_t size);

ConsoleBuffer::ConsoleBuffer(int cap) : cap(cap), head(0), tail(0) {
    buffer = (char *)MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(sizeof(char) * cap));

    sem::sem_open(&itemAvailable, 0);
    sem::sem_open(&spaceAvailable, cap);
    sem::sem_open(&mutexHead, 1);
    sem::sem_open(&mutexTail, 1);
}

ConsoleBuffer::~ConsoleBuffer() {
    while (getCnt() > 0) {
        char c = buffer[head];
        putc(c);
        head = (head + 1) % cap;
    }

    MemoryAllocator::mem_free(buffer);
    delete itemAvailable;
    delete spaceAvailable;
    delete mutexTail;
    delete mutexHead;
}

void ConsoleBuffer::put(char c) {
    spaceAvailable->wait();
    mutexTail->wait();

    buffer[tail] = c;
    tail = (tail + 1) % cap;

    mutexTail->signal();
    itemAvailable->signal();
}

int ConsoleBuffer::get() {
    itemAvailable->wait();
    mutexHead->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;

    mutexHead->signal();
    spaceAvailable->signal();

    return ret;
}

int ConsoleBuffer::getCnt() {
    mutexHead->wait();
    mutexTail->wait();
    int ret;
    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    mutexHead->signal();

    return ret;
}

bool ConsoleBuffer::isFull(){
    mutexHead->wait();
    mutexTail->wait();
    int cnt;
    if (tail >= head) {
        cnt = tail - head;
    } else {
        cnt = cap - head + tail;
    }

    mutexTail->signal();
    mutexHead->signal();

    return cnt == this->cap;
}


void *ConsoleBuffer::operator new(size_t size) {
    return MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
}
void ConsoleBuffer::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}
void *ConsoleBuffer::operator new[](size_t size) {
    return MemoryAllocator::mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
}
void ConsoleBuffer::operator delete[](void *ptr) {
    MemoryAllocator::mem_free(ptr);
}