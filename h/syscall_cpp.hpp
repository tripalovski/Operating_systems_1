#ifndef syscall_cpp
#define syscall_cpp

#include "../lib/hw.h"
#include "syscall_c.hpp"
#include "../h/tcb.hpp"

void *operator new(size_t size);
void *operator new[](size_t size);
void operator delete(void *ptr) noexcept;
void operator delete[](void *ptr) noexcept;

class Thread {
public:
    static void runWrapper(void* thread) {
        if(thread) {
            ((Thread*)thread)->run();
        }
    }


    Thread (void (*body)(void*), void* arg);
    Thread ();
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:

    virtual void run (){};
private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void wrapper(void*);
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
public:
    void terminate (){
        thread_exit();
    }
protected:
    PeriodicThread (time_t period) : Thread(){
        this->period = period;
    }
    void run() override {
        periodicActivation();
        time_sleep(period);
    }
    virtual void periodicActivation () {}
private:
    time_t period;
};

class Console {
public:
    static char getc ();
    static void putc (char);
};



#endif //syscall_cpp