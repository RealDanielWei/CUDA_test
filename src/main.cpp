#ifdef USE_CUDA
#include "cudaLib.h"
#endif
#include <iostream>

int main() {

#ifdef USE_CUDA
	cudaFunction();
#else
	std::cout << "No cuda: hello world!" << std::endl;
#endif // USE_CUDA

}
