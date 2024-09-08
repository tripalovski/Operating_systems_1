#ifndef syscall_c
#define syscall_c

#include "../lib/hw.h"
#include "tcb.hpp"
#include "../h/sem.hpp"

typedef sem* sem_t;


void* mem_alloc(size_t size);

int mem_free(void* ptr);

typedef TCB* thread_t;

int thread_create (thread_t * handle, void(*start_routine)(void*), void* arg);

void thread_dispatch ();

int thread_exit();

int sem_open (sem_t* handle, unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

int sem_timedwait(sem_t id, time_t timeout);

int sem_trywait(sem_t id);

int time_sleep (time_t);

const int EOF = -1;

char getc();

void putc(char);

#define CONVERT_SIZE_TO_BLOCKS(size) (((size) + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1)) / MEM_BLOCK_SIZE

#endif