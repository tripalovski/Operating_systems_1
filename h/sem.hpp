#ifndef PROJECT_BASE_SEM_HPP
#define PROJECT_BASE_SEM_HPP

#include "../h/tcb.hpp"
#include "../h/list.hpp"
#include "../h/threadList.hpp"

struct Elem {
    TCB* tcb;
    uint64 timeLeft;
    Elem* next;

    Elem(TCB* tcb, int time, Elem* nxt = nullptr)
            : tcb(tcb), timeLeft(time), next(nxt) {}
};

class sem{
public:
    sem(unsigned short init = 1, sem** handle = nullptr) : val(init), handle(handle){}

    ~sem();

    static int sem_open(sem** handle, int init);


    int wait ();
    int signal ();
    int timedWait (time_t timeout);
    int tryWait();


    void setVal(int init) {val = init;}

    int block();
    int timedBlock(time_t timeout);
    int unblock();


    void* operator new (size_t size);
    void operator delete (void *memory);

    static Elem* timeBlockedQueue;
private:


    int val;
    ThreadList blockedQueue;
    sem** handle; // zbog niti koje su ostale blokirane na oslobodjenom semaforu

};


#endif //PROJECT_BASE_SEM_HPP
