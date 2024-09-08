#ifndef BUFFER
#define BUFFER
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"
class ConsoleBuffer {
private:
    int cap;
    char *buffer;
    int head, tail;

    sem_t spaceAvailable;
    sem_t itemAvailable;
    sem_t mutexHead;
    sem_t mutexTail;


public:
    explicit ConsoleBuffer(int cap);
    ~ConsoleBuffer();

    void put(char c);
    int get();

    int getCnt();

    bool isFull();
    void* operator new(size_t size);
    void* operator new[](size_t size);
    void operator delete(void* ptr);
    void operator delete[](void* ptr);

};

#endif //BUFFER