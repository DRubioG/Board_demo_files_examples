#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("input_r", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("fir_time", 8, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("output_r", 32, hls_out, 2, "ap_none", "out_data", 1),
	Port_Property("result_valid", 8, hls_out, 3, "ap_none", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "k732_hls_fir_filter_ip";
