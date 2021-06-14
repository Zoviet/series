#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <sys/time.h>
#include <stdlib.h>

struct timeval  tv;
int main()
{ 
  int i;
  float *a = NULL;
  for (i = 1000; i<50000000; i=i*2) 
  {
	int j;
	a = (float*) malloc(i * sizeof(float));
	gettimeofday(&tv, NULL);	
	double time_begin = ((double)tv.tv_sec) + ((double)tv.tv_usec) / 1000000;
	for (j = 0; j<i; j++) {
		a[j] = 0;
	}
	free(a);
	gettimeofday(&tv, NULL);
	double time_end = ((double)tv.tv_sec) + ((double)tv.tv_usec) / 1000000;
	double total_time = (time_end - time_begin);
	printf("%d,%f\n", j, total_time);
  }
}
