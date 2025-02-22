#ifndef __CMEDIUMALLOCPOOL_HPP__
#define __CMEDIUMALLOCPOOL_HPP__

#include <rstl/list.hpp>

class CMediumAllocPool {
public:
    struct SMediumAllocPuddle {
        u8 unk;
        void* x4_mainData;
        void* x8_bookKeeping;
        void* xc_cachedBookKeepingOffset;
        int x10_;
        int x14_numBlocks;
        int x18_numAllocs;
        int x1c_numEntries;
    };

    rstl::list<SMediumAllocPuddle> x0_list;
    /*rstl::list_node<SMediumAllocPuddle>* x18_lastNodePrev; */
    void* x18_lastNodePrev;
    void* Alloc(uint size);
    bool HasPuddles() const;
    void AddPuddle(uint, void*, int);
    void ClearPuddles();

    s32 Free(const void* ptr);

    uint GetTotalEntries();
    uint GetNumBlocksAvailable();
    uint GetNumAllocs();
};

#endif // __CMEDIUMALLOCPOOL_HPP__
