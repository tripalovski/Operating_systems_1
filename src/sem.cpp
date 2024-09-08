#include "../h/sem.hpp"
#include "../h/memoryAllocator.hpp"

Elem* sem::timeBlockedQueue = nullptr;

static void addToTimeBlockedQueue(Elem* blockedElem) {
    if (!sem::timeBlockedQueue) {
        sem::timeBlockedQueue = blockedElem;
    } else {
        Elem* temp = sem::timeBlockedQueue;
        while (temp->next) {
            temp = temp->next;
        }
        temp->next = blockedElem;
    }
}

static bool removeFromTimeBlockedQueue(TCB* tcb) {
    if (!sem::timeBlockedQueue) {
        return false;
    }

    if (sem::timeBlockedQueue->tcb == tcb) {
        Elem* temp = sem::timeBlockedQueue;
        sem::timeBlockedQueue = sem::timeBlockedQueue->next;
        delete temp;
        return true;
    }

    Elem* current = sem::timeBlockedQueue;
    while (current->next && current->next->tcb != tcb) {
        current = current->next;
    }

    if (current->next) {
        Elem* temp = current->next;
        current->next = current->next->next;
        delete temp;
        return true;
    }

    return false;
}


int sem::sem_open (sem** handle, int init){
    *handle = new sem(init);
    if(*handle == nullptr) return -1;
    return 0;
}

int sem::wait (){
    int retVal = 0;
    val--;
    if(val < 0) retVal = block();
    return retVal;
}


int sem::signal (){
    int retVal = 0;
    val++;
    if(val <= 0) retVal = unblock();
    return retVal;
}


int sem::timedWait (time_t timeout){
    int retVal = 0;
    val--;
    if(val < 0) retVal = timedBlock(timeout);
    return retVal;
}


int sem::block() {
    TCB* blocked = TCB::running;
    blockedQueue.addLast(blocked);
    blocked->blocked = true;
    TCB::dispatch();
    if(handle == nullptr) return -1;
    return 0;
}

int sem::unblock() {
    TCB* unblocked = blockedQueue.removeFirst();
    if(!unblocked) return -1;
    while(!unblocked->blocked){ // ako je bio odblokiran u prekidu tajmera
        unblocked = blockedQueue.removeFirst();
        val++;
        if(!unblocked) return 0; // znaci da su sve ostale niti zavrsile sa timeWait u prekidu tajmera
    }
    unblocked->blocked = false;
    removeFromTimeBlockedQueue(unblocked);
    Scheduler::put(unblocked);
    return 0;
}

int sem::timedBlock(time_t timeout) {
    TCB* blocked = TCB::running;
    blockedQueue.addLast(blocked);
    blocked->blocked = true;
    Elem* blockedElem = new Elem(blocked, timeout);

    addToTimeBlockedQueue(blockedElem);

    TCB::dispatch();
    if(handle == nullptr) return -1; // semdead
    else if(blockedElem->timeLeft == 0) return -2; // timeout
    return 0;
}

int sem::tryWait(){
    if(val > 0){
        val--;
        return 0;
    }else{
        return 1;
    }
}


void* sem::operator new(size_t size) {
    return MemoryAllocator::mem_alloc((((size) + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE);
}

void sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

sem::~sem() {
    while(!blockedQueue.isEmpty()){
        (*handle)->unblock();
    }
}
