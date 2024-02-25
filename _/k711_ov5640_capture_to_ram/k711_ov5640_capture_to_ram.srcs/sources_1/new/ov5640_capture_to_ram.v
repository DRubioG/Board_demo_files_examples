module ov5640_capture_to_ram
(
   input   wire	        clk,//default 50mhz
   input   wire        rstn,	//reset n
   output  wire        cmos_scl1,         //cmos i2c clock
   inout   wire        cmos_sda1,         //cmos i2c data
   output  wire        cmos_reset1,       //cmos reset
   input   wire        cmos_vsync1,       //cmos vsync
   input   wire        cmos_href1,        //cmos hsync refrence
   input   wire        cmos_pclk1,        //cmos pxiel clock
   input   wire [7:0]  cmos_data1,        //cmos data
   
   output  wire        cmos_scl2,         //cmos i2c clock
   inout   wire        cmos_sda2,         //cmos i2c data
   output  wire        cmos_reset2,       //cmos reset
   input   wire        cmos_vsync2,       //cmos vsync
   input   wire        cmos_href2,        //cmos hsync refrence
   input   wire        cmos_pclk2,        //cmos pxiel clock
   input   wire [7:0]  cmos_data2,        //cmos data   
   
   output wire cmos_conf_done1,
   output wire cmos_conf_done2
);

wire cmos_vedio_clk1;
wire [15:0]cmos_vedio_data1;
wire cmos_vedio_clk2;
wire [15:0]cmos_vedio_data2;
wire cmos_vedio_wen2;

reg [20:0]write_addr_ram_reg;
reg [20:0]read_addr_ram_reg;

    
power_on_reset	power_on_reset_inst1
    (
	.clk(clk),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset1)
    );

power_on_reset	power_on_reset_inst2
    (
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

ov5640_capture ov5640_capture_inst1
                (
                .rstn(cmos_reset1),
                .init_done_flag(cmos_conf_done1),
                .cmos_pclk(cmos_pclk1),
                .cmos_data_in(cmos_data1),
                .cmos_vsync(cmos_vsync1),
                .cmos_href(cmos_href1),
                .cmos_oclk(cmos_vedio_clk1),
                .cmos_odata(cmos_vedio_data1),
                .data_valid(cmos_vedio_wen1)
                );
    always@(posedge cmos_pclk1 or negedge rstn)begin
        if(rstn=='b0)begin
            write_addr_ram_reg<='b0;
            read_addr_ram_reg<='d0;
        end
        else begin
            if(cmos_vsync1=='b1)begin
                write_addr_ram_reg<='d0;
            end
            else if(cmos_vedio_clk1=='b1)begin
                write_addr_ram_reg<=write_addr_ram_reg+'d1;
            end
            if(write_addr_ram_reg>'d1)read_addr_ram_reg=write_addr_ram_reg-'d1;
            else read_addr_ram_reg<='d0;
        end
    end         
  
//vedio1 data write_to ram
    blk_mem_gen_0 blk_mem_gen_0_inst1
    (
    .clka(cmos_vedio_clk1),
    .ena('b1),	
    .wea(cmos_vedio_wen1), 
    .addra(write_addr_ram_reg),
    .dina(cmos_vedio_data1), 
    .clkb(cmos_vedio_clk1), 
    .enb('b1), 
    .addrb(read_addr_ram_reg),
    .doutb(read_ram_b_data)
    );

endmodule
