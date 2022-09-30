#include <cuda.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>


__global__ void kreduce(unsigned int *d_vec, int n){
	unsigned int index= blockIdx.x*blockDim.x+threadIdx.x;
	unsigned int offset;
	for(offset=1; offset<= n/2; offset*=2){
		if((index%(2*offset))==0 && index<n){
			d_vec[index]+=d_vec[index+offset];}
		__syncthreads();}
	}


void reduce(unsigned int *vec, unsigned int *sum, int size){
	unsigned int *d_vec;
	int bytes = size*sizeof(unsigned int);
	int gsize=((size+1024-1)/1024);
	printf("gsize=%i\n", gsize);
	cudaMalloc((void**)&d_vec, bytes);
	cudaMemcpy(d_vec, vec, bytes, cudaMemcpyHostToDevice);

	kreduce<<<gsize,1024>>>(d_vec, size);
	kreduce<<<1,1024>>>(d_vec, size);

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

