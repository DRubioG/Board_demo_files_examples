module ov5640_config
(
   input   wire	        clk,//default 50mhz
   input   wire        rstn,	//reset n
   output  wire        cmos_scl1,         //cmos i2c clock
   inout   wire        cmos_sda1,         //cmos i2c data
   output  wire        cmos_reset1,       //cmos reset
   
   output  wire        cmos_scl2,         //cmos i2c clock
   inout   wire        cmos_sda2,         //cmos i2c data
   output  wire        cmos_reset2,       //cmos reset
   output wire cmos_conf_done1,
   output wire cmos_conf_done2
);

power_on_reset	power_on_reset_inst1(
	.clk(clk),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset1)
);

power_on_reset	power_on_reset_inst2(
	.clk(clk),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset2)
);

ov5640_reg_config	ov5640_reg_config_inst1(
	.clk(clk),
	.camera_rstn(cmos_reset1),	
	.i2c_sclk(cmos_scl1),
	.i2c_sdat(cmos_sda1),
	.reg_conf_done(cmos_conf_done1)
); 
ov5640_reg_config	ov5640_reg_config_inst2(
	.clk(clk),
	.camera_rstn(cmos_reset2),	
	.i2c_sclk(cmos_scl2),
	.i2c_sdat(cmos_sda2),
	.reg_conf_done(cmos_conf_done2)
); 


endmodule
