#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include "cpucycles.h"
#include "speed_print.h"

static int cmp_uint64(const void *a, const void *b) {
  if(*(uint64_t *)a < *(uint64_t *)b) return -1;
  if(*(uint64_t *)a > *(uint64_t *)b) return 1;
  return 0;
}

static uint64_t median(uint64_t *l, size_t llen) {
  qsort(l,llen,sizeof(uint64_t),cmp_uint64);

  if(llen%2) return l[llen/2];
  else return (l[llen/2-1]+l[llen/2])/2;
}

static uint64_t average(uint64_t *t, size_t tlen) {
  size_t i;
  uint64_t acc=0;

  for(i=0;i<tlen;i++)
    acc += t[i];

  return acc/tlen;
}

static uint64_t min(uint64_t *t, size_t tlen){
	size_t i;
	uint64_t nr=-1;
	for(i=0;i<tlen;i++){
		if(t[i] < nr)
			nr = t[i];
	}
	return nr;
}

static uint64_t max(uint64_t *t, size_t tlen){
	size_t i;
	uint64_t nr=0;
	for(i=0;i<tlen;i++){
		if(t[i] > nr)
			nr = t[i];
	}
	return nr;
}

void print_results(const char *s, uint64_t *t, size_t tlen) {
  size_t i;
  static uint64_t overhead = -1;

  if(tlen < 2) {
    fprintf(stderr, "ERROR: Need a least two cycle counts!\n");
    return;
  }

  if(overhead  == (uint64_t)-1)
    overhead = cpucycles_overhead();

  tlen--;
  for(i=0;i<tlen;++i)
    t[i] = t[i+1] - t[i] - overhead;

  printf("%s\n", s);
  printf("median, average, min, max [cycles/ticks]\n");
  printf("%lu \t%lu \t%lu \t%lu \n", (unsigned long)median(t, tlen), (unsigned long)average(t, tlen), (unsigned long)min(t, tlen), (unsigned long)max(t, tlen));
  //printf("median: %lu cycles/ticks\n", (unsigned long)median(t, tlen));
  //printf("average: %lu cycles/ticks\n", (unsigned long)average(t, tlen));
  printf("\n");
}

