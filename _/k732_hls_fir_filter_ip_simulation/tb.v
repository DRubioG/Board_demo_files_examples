`timescale 1ns / 1ns

module tb();

reg clk_reg;
reg rst_reg;

reg [7:0]signal1;
reg [7:0]signal2;
reg [7:0]signal3;
reg [7:0]signal4;

wire [31:0]data_in;
wire [31:0]data_out;
wire clk;
wire data_v;

initial begin
clk_reg=0;
rst_reg=1;
signal1=0;
signal2=0;
signal3=0;
signal4=0;
#100
rst_reg=0;
end

always #1 clk_reg=~clk_reg;
assign clk=clk_reg;
assign rst=rst_reg;
always #1 signal1=signal1+1;
always #5 signal2=signal2+1;
always #9 signal3=signal3+1;
always #20 signal4=signal4+1;
assign data_in=signal1+signal2+signal3+signal4;

k732_hls_fir_filter_ip k732_hls_fir_filter_ip_inst(
					.ap_clk(clk),
					.ap_rst(rst),
					.input_r(data_in),
					.fir_time(20),
					.output_r(data_out),
					.result_valid(data_v)
							);

endmodule


