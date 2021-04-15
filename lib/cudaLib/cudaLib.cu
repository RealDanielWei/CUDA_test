#include <stdio.h>

__global__ void checkId(){
	printf("threadIdx: (%d, %d, %d)	blockIdx: (%d, %d, %d)	blockDim: (%d, %d, %d) gridDim: (%d, %d, %d)\n", 
	threadIdx.x, threadIdx.y, threadIdx.z, blockIdx.x, blockIdx.y, blockIdx.z,
	blockDim.x, blockDim.y, blockDim.z, gridDim.x, gridDim.y, gridDim.z
	);
}

void cudaFunction(){
	checkId <<< 3, 3 >>> ();
}
