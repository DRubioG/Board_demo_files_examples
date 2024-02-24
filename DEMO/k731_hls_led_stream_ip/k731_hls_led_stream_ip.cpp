#include "stdio.h"
#include "ap_int.h"
#define CLK_FREQ  10
void k731_hls_led_stream_ip(ap_int<4> &led)
{
	#pragma HLS interface ap_none port=led
	#pragma HLS interface ap_ctrl_none port=return
	static int led_number=0;
	static long cnt_reg=0;
	if(cnt_reg<CLK_FREQ)cnt_reg++;
	else
	{
		cnt_reg=0;
		if(led_number<3)led_number++;
		else led_number=0;
	}
	if(led_number==0)
	{
		led=0x1;
	}
	else if(led_number==1)
	{
		led=0x2;
	}
	else if(led_number==2)
	{
		led=0x4;
	}
	else if(led_number==3)
	{
		led=0x8;
	}
}
