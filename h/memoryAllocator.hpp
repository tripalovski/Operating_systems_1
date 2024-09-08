#ifndef memoryAllocator
#define memoryAllocator

#include "../lib/hw.h"
#include "../h/print.hpp"


// za pracenje slobodnih i alociranih dela memorije
struct BlockHeader {
    size_t size; // number of blocks, excluding block (or blocks) in which is control structure (BlockHeader)
    BlockHeader* prev;
    BlockHeader* next;
};

class MemoryAllocator {
    static BlockHeader* freeHead; // pocetak liste slobodnih blokova
    static BlockHeader* allocatedHead; // pocetak  liste alocirane blokova

public:
    static constexpr size_t BLOCK_HEADER_SIZE = ((sizeof(BlockHeader) + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1))/MEM_BLOCK_SIZE; // u blokovima

    static void* mem_alloc(size_t size);

    static int mem_free (void* ptr);

    static void tryToJoin(BlockHeader* current);

    static void initMemory();
};

#endif