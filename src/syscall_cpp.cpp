#include "../h/syscall_cpp.hpp"
#include "../h/print.hpp"

void *operator new(size_t size) {
    return mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
}

void *operator new[](size_t size) {
    return mem_alloc(CONVERT_SIZE_TO_BLOCKS(size));
}

void operator delete(void *ptr) noexcept {
mem_free(ptr);
}

void operator delete[](void *ptr) noexcept {
mem_free(ptr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
    this->myHandle = nullptr;
}

int Thread::start() {
    return thread_create(&this->myHandle, this->body, this->arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Thread::~Thread() = default;

Thread::Thread() {
    this->body = wrapper;
    this->arg = this;
    this->myHandle = nullptr;
}

void Thread::wrapper(void* ptr) {
    if(ptr) ((Thread*)ptr)->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::timedWait(time_t timeout) {
    return sem_timedwait(myHandle, timeout);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}


char Console::getc() {
    ::getc();
    return 0;
}


void Console::putc(char c) {
    ::putc(c);
}


