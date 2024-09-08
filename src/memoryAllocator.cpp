#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"

BlockHeader* MemoryAllocator::freeHead = nullptr;
BlockHeader* MemoryAllocator::allocatedHead = nullptr;

void *MemoryAllocator::mem_alloc(size_t size) {

    BlockHeader* current = freeHead;
    // treba da pronadjem dovoljno velik slobodni fragment
    while(current){
        if(current->size < size) current = current->next;
        else break;
    }

    // there is no free space, obuhvata slucaj i ako nema freeHead, tjs = nullptr
    if(!current){
        return nullptr;
    }

    size_t remainingFreeSize = current->size - size; // number of free blocks remaining
    size_t allocatingSize = size; // u slucaju da ostane memorije koja ne moze da se prati sa freeBlockovima
    if(remainingFreeSize < BLOCK_HEADER_SIZE){ // if there is no enough free blocks for new BlockHeader for free memory
        allocatingSize += remainingFreeSize; // npr ako je BLOCK_HEADER_SIZE = 3, a ostalo je 2 slobodna bloka, i njih cu
                                            // da alociram
        //preulancaj free listu
        if(current->prev){
            current->prev->next = current->next;
        } else{ //znaci da je ovo bila glava
            freeHead = current->next; // znaci ako je current bio poslednji, freeHead ce bude null
        }
        if(current->next) current->next->prev = current->prev;
    } else{
        // napravi novi blok
        BlockHeader* newFreeBlock = (BlockHeader*)((char*)current + (size+BLOCK_HEADER_SIZE)*MEM_BLOCK_SIZE); //+BLOCK_HEADER_SIZE
                                                                // zbog blockheadera za pracenje zauzetih blokova
        // if it is head
        if(!current->prev){
            freeHead = newFreeBlock;
        }else{
            current->prev->next = newFreeBlock;
        }
        if(current->next){
            current->next->prev = newFreeBlock; // ulancaj sledeci u listi sa novim
        }
        newFreeBlock->prev = current->prev;
        newFreeBlock->next = current->next;
        newFreeBlock->size = remainingFreeSize - BLOCK_HEADER_SIZE; // -BLOCK_HEADER_SIZE zbog novi block koji prati
    }

    // header za free blokove sad koristimo za alociran blok, prati velicina alocirane momrije, prethodni i sledeci alociran blok
    BlockHeader* newAllocatedBlock = current;
    newAllocatedBlock->size = allocatingSize;
    if(!allocatedHead) {
        allocatedHead = newAllocatedBlock;
        newAllocatedBlock->prev = nullptr;
        newAllocatedBlock->next = nullptr;
    }else {
        BlockHeader *currAllocated = allocatedHead;
        if(currAllocated > newAllocatedBlock){
            newAllocatedBlock->next = allocatedHead;
            allocatedHead->prev = newAllocatedBlock;
            allocatedHead = newAllocatedBlock;
        }else{
            for ( ;(currAllocated->next) && (currAllocated->next < newAllocatedBlock); currAllocated = currAllocated->next);
            if (currAllocated->next) {
                currAllocated->next->prev = newAllocatedBlock;
            }
            newAllocatedBlock->next = currAllocated->next;
            currAllocated->next = newAllocatedBlock;
            newAllocatedBlock->prev = currAllocated;
        }
    }

    return (char*)newAllocatedBlock + BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE; // + da preskoci header
}

int MemoryAllocator::mem_free(void* ptr) {

    if(!allocatedHead) return -1; // nijedan blok nije alociran
    if(ptr == nullptr || ptr < HEAP_START_ADDR || ptr > HEAP_END_ADDR) return -2; // los prosledjen pokazivac

    BlockHeader* current = allocatedHead;
    // nadji odgovarajuci header za alocirane
    for(; (current->next) && (current->next < ptr); current = current->next);
    if((char*)current != ((char*)ptr - BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE)) return -3; // los pokazivac

    // izbaci alociran blok iz liste alociranih
    if(!current->prev) allocatedHead = current->next;
    else current->prev->next = current->next;
    if(current->next) current->next->prev = current->prev;

    // nadji odgovarajuci header za free
    // Posto je current zaglavlje, ne mora da pravim novo
    if(!freeHead){
        freeHead = current;
        current->prev = nullptr;
        current->next = nullptr;
    } else if(current < freeHead){
        freeHead->prev = current;
        current->next = freeHead;
        freeHead = current;
        current->prev = nullptr;
        tryToJoin(current);
    } else{
        BlockHeader* currentFree = freeHead;
        for(; (currentFree->next) && (currentFree->next < current); currentFree = currentFree->next);

        current->prev = currentFree;
        current->next = currentFree->next;
        currentFree->next = current;
        if(current->next) current->next->prev = current;
        tryToJoin(current); // ce proba da spoji current (koji je mozda spojen sa cirrefree) sa current->next
        tryToJoin(currentFree); // ce proba da spoji sa current
        // tryToJoin mora da ide ovim redom, jer ako se prva dva spoje,
        // referenca na drugi ce nestane i onda imamo problem, ovako referenca sto posto ostaje
        // ne bitno dal je spojeno ili ne
    }
    return 0;
}

// probaj da spojis sa sledecim praznim blokom
void MemoryAllocator::tryToJoin(BlockHeader* current) {
    if(current->next && ((char*)current + current->size*MEM_BLOCK_SIZE +  BLOCK_HEADER_SIZE*MEM_BLOCK_SIZE
    == (char*)current->next)){
        current->size += current->next->size + BLOCK_HEADER_SIZE; // BlockHeader jer ce ovde da se izgubi jedan headr
        current->next = current->next->next;
        if(current->next) current->next->prev = current;
    }
}

void MemoryAllocator::initMemory(){
    freeHead = (BlockHeader*)(((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1));
    freeHead->size = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR)/MEM_BLOCK_SIZE - BLOCK_HEADER_SIZE;
    freeHead->prev = nullptr;
    freeHead->next = nullptr;
}