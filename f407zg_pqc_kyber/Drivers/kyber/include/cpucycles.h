#ifndef CPUCYCLES_H
#define CPUCYCLES_H

#include <stdint.h>

volatile unsigned int *DWT_CYCCNT  ;
volatile unsigned int *DWT_CONTROL ;
volatile unsigned int *SCB_DEMCR   ;

#ifdef USE_RDPMC  /* Needs echo 2 > /sys/devices/cpu/rdpmc */

static inline uint64_t cpucycles(void) {
  const uint32_t ecx = (1U << 30) + 1;
  uint64_t result;

  __asm__ volatile ("rdpmc; shlq $32,%%rdx; orq %%rdx,%%rax"
    : "=a" (result) : "c" (ecx) : "rdx");

  return result;
}

#else

static inline uint64_t cpucycles(void) {
  // uint64_t result;

  /*
  __asm__ volatile ("rdtsc; shlq $32,%%rdx; orq %%rdx,%%rax"
    : "=a" (result) : : "%rdx");

  return result;
  */
  return (uint64_t) *DWT_CYCCNT;
}

#endif

uint64_t cpucycles_overhead(void);

#endif
