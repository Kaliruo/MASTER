#include <cuda.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>


__global__ void kreduce(unsigned int *d_vec, int n){
	unsigned int tid= threadIdx.x;
	unsigned int offset;
	printf("oui%u\n",tid);
	for(offset=1; offset<= n/2; offset*=2){
		printf("oui%u\n",offset);
		if((tid%(2*offset))==0 && tid<n){
			d_vec[tid]+=d_vec[tid+offset];}
		__syncthreads();}
	}


void reduce(unsigned int *vec, unsigned int *sum, int size){
	unsigned int *d_vec;
	int bytes = size*sizeof(unsigned int);
	printf("oui%i\n",bytes);
	cudaMalloc((void**)&d_vec, bytes);
	cudaMemcpy(d_vec, vec, bytes, cudaMemcpyHostToDevice);
	
	kreduce<<<1,size>>>(d_vec, size);

	cudaMemcpy(sum, d_vec, sizeof(unsigned int), cudaMemcpyDeviceToHost);
	cudaFree(d_vec);
	}

int main(int argc, char **argv){
  if (argc < 2){
    printf("Usage: <filename>\n");
    exit(-1);
  }
unsigned int* vec;
int size;
FILE *f = fopen(argv[1],"r");
fscanf(f,"%d\n",&size);
size = 1 << size;
  if (size >= (1 << 20)){
    printf("Size (%u) is too large: size is limited to 2^20\n",size);
    exit(-1);
  }
vec = (unsigned int *) malloc(size * sizeof(unsigned int)); assert(vec);
for (int i=0; i<size; i++){
    fscanf(f, "%u\n",&(vec[i]));
  }
unsigned int sum =0;

reduce(vec, &sum, size);
printf("sum=%u\n", sum);
return 0;

}

