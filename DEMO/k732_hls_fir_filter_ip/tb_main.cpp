#include "stdio.h"
#include "math.h"
#include "ap_int.h"

extern void k732_hls_fir_filter_ip(unsigned int input,unsigned char fir_time,unsigned int *output,unsigned char *result_valid);
int main()
{
	int i=0;
	float floatphase=0;
	float sin_float=0;
	int sin_int=0;
	unsigned int filtered_result_int=0;
	unsigned char valid_flag=0;
	for(i=0;i<1000;i++)
	{
		floatphase=((float)i)*0.01f;
		sin_float=5000.0f+1000.0f*sinf(floatphase)+1000.0f*sinf(floatphase/5)+1000.0f*sinf(floatphase/10)+1000.0f*sinf(floatphase/8);
		sin_int=sin_float;

		k732_hls_fir_filter_ip(sin_int,20,&filtered_result_int,&valid_flag);
		printf("input=%d,output=%d,flag=%d  \n",sin_int,filtered_result_int,valid_flag);
	}
	return 0;
}
