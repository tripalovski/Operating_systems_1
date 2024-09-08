#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

TCB *Scheduler::get()
{
    TCB* next = TCB::running->next;
    if(!next) return TCB::running;
    TCB::running->next = nullptr; // za slucaj da je ubacena opet u red, ostace joj next, a potencijalno moze da nema niceg vise
    return next;
}

void Scheduler::put(TCB *tcb)
{
    if(!tcb->tail){
        TCB::running->next = tcb;
        TCB::tail = tcb;
        return;
    }
    tcb->tail->next = tcb;
    tcb->tail = tcb;
}