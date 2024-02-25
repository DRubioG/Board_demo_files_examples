#include "stdio.h"
#include "ap_int.h"

extern void  k731_hls_led_stream_ip(ap_int<4> &led);
int main(void)
{
	int i=0;
	unsigned int tmp_print_data=0;
	ap_int<4> led=7;
	for(i=0;i<1000;i++)
	{
		k731_hls_led_stream_ip(led);
		tmp_print_data=led&0xf;
		printf("i=%d,led=%d\r\n",i,tmp_print_data);
	}
	return 0;
}
