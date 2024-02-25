#include "stdio.h"
#include "ap_int.h"


#define MAX_FIR_TIME 200//�������õ����ƽ����ֵ�˲����� 20
void k732_hls_fir_filter_ip(unsigned int input,unsigned char fir_time,unsigned int *output,unsigned char *result_valid)
{
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE ap_none port=output
	#pragma HLS INTERFACE ap_none port=result_valid

	static int filter_ptr=0;
	static unsigned int buffer_in[256]={0};//���棬�洢�������������
	static unsigned char result_valid_flag=0;
	unsigned long long tmp_add_value=0;
	int i=0;
	int filter_time=0;
	filter_time=fir_time;
	if(filter_time==0)
	{
		*output=0;
		return;
	}
	else
	{
		if(filter_time>MAX_FIR_TIME)filter_time=MAX_FIR_TIME;
		buffer_in[filter_ptr]=input;
		for(i=0;i<filter_time;i++)tmp_add_value+=buffer_in[i];//�ۼ�����˲���������������
		filter_ptr++;
		if(filter_ptr>(filter_time-1))
		{
			filter_ptr=0;
			result_valid_flag=1;//�˲����ݿ�ʼ��Ч
		}
		*result_valid=result_valid_flag;
		*output=tmp_add_value/filter_time;//���ֵ
		return;
	}
}




