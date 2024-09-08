#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP

#include "../lib/hw.h"

extern void printStringTrap(char const *string);

extern void printInteger(uint64 integer);

extern void printIntegerTrap(uint64 integer);

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_PRINT_HPP
