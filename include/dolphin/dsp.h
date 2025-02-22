#ifndef __DSP_H__
#define __DSP_H__

#include "types.h"
#include <dolphin/os.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*DSPCallback)(void* task);

typedef struct DSPTaskInfo DSPTaskInfo;

typedef struct DSPTaskInfo {
  vu32 state;
  vu32 priority;
  vu32 flags;
  u16* iram_mmem_addr;
  u32 iram_length;
  u32 iram_addr;

  u16* dram_mmem_addr;
  u32 dram_length;
  u32 dram_addr;

  u16 dsp_init_vector;
  u16 dsp_resume_vector;

  DSPCallback init_cb;
  DSPCallback res_cb;
  DSPCallback done_cb;
  DSPCallback req_cb;

  struct STRUCT_DSP_TASK* next;
  struct STRUCT_DSP_TASK* prev;

  OSTime t_context;
  OSTime t_task;

} DSPTaskInfo;

void DSPInit();
void DSPReset();
void DSPHalt();
void DSPSendMailToDSP(u32 mail);
u32 DSPCheckMailToDSP();
u32 DSPCheckMailFromDSP();
u32 DSPGetDMAStatus();

DSPTaskInfo* DSPAddTask(DSPTaskInfo* task);

void __DSP_debug_printf(const char* fmt, ...);

#ifdef __cplusplus
}
#endif

#endif // __DSP_H__
