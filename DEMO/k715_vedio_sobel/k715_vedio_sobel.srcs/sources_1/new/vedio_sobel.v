module vedio_sobel
(
   input   wire	        clk50m,//default 50mhz
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
   output wire cmos_conf_done2,

    output wire[2:0] TMDS_DATA_P1,
    output wire[2:0] TMDS_DATA_N1,
    output wire      TMDS_CLK_P1,
    output wire      TMDS_CLK_N1,
    output wire      HDMI_OUT_EN1,
    
    output wire[2:0] TMDS_DATA_P2,
    output wire[2:0] TMDS_DATA_N2,
    output wire      TMDS_CLK_P2,
    output wire      TMDS_CLK_N2,
    output wire      HDMI_OUT_EN2,
    input wire switch_key1,
    input wire swicth_key2,
    output wire cmos_led1,
    output wire cmos_led2
    );
        
   (*mark_debug="true"*) wire [20:0]read_addr_ram;
    wire [15:0]vga_pix_data;
    wire [10:0]pix_x;
    wire [10:0]pix_y;
    
    (*mark_debug="true"*)reg [10:0]x_reg;
    (*mark_debug="true"*)reg [10:0]y_reg;
    parameter VEDIO_X_LENTH=1024;
    parameter VEDIO_Y_LENTH=720;
    parameter VEDIO_X_START=0;
    parameter VEDIO_Y_START=0;
    parameter VEDIO_X_END=VEDIO_X_START+VEDIO_X_LENTH;
    parameter VEDIO_Y_END=VEDIO_Y_START+VEDIO_Y_LENTH;
    (*mark_debug="true"*)reg image_valid_flag_reg;
    
    wire cmos_vedio_clk1;
    wire [15:0]cmos_vedio_data1;
    wire cmos_vedio_clk2;
    wire [15:0]cmos_vedio_data2;
    wire cmos_vedio_wen1;
    wire cmos_vedio_wen2;
    (*mark_debug="true"*)wire [15:0]ram_read_port_data;
    parameter KEY_SWITCH_CNT_MAX=50000000-1;
    reg [31:0]cnt_key1_detect_reg;
    reg [31:0]cnt_key2_detect_reg;
    reg swicth_cmos_reg;
    
    // (*mark_debug="true"*)
    wire clk_74p25MHz;
    wire clk_371p25MHz;  // 74p25  x 5
    wire locked;
    
    (*mark_debug="true"*)wire Hsync;
    (*mark_debug="true"*)wire Vsync;
    (*mark_debug="true"*)wire ready;
    wire [7:0] Red;
    wire [7:0] Green;
    wire [7:0] Blue;
   (*mark_debug="true"*) wire vedio_clk;
    (*mark_debug="true"*)wire vedio_wen;
    wire [15:0]vedio_data;
    wire [20:0] vedio_ram_addr;

    assign HDMI_OUT_EN1 =1'b1;
    assign HDMI_OUT_EN2 =1'b1;  
    
/************************************************************


************************************************************/


assign cmos_led1=(swicth_cmos_reg=='d1)?'b1:'b0;
assign cmos_led2=(swicth_cmos_reg=='d0)?'b1:'b0;
always@(posedge clk50m or negedge rstn)
begin
    if(rstn=='b0)begin        
        swicth_cmos_reg<='b0;
        cnt_key1_detect_reg<='d0;
        cnt_key2_detect_reg<='d0;
    end 
    else begin
            if(switch_key1=='b0)begin
                if(cnt_key1_detect_reg<KEY_SWITCH_CNT_MAX)cnt_key1_detect_reg<=cnt_key1_detect_reg+'d1;
            end
            else if(swicth_key2=='b0)begin
                if(cnt_key2_detect_reg<KEY_SWITCH_CNT_MAX)cnt_key2_detect_reg<=cnt_key2_detect_reg+'d1;
            end
            else begin
                cnt_key1_detect_reg<='d0;
                cnt_key2_detect_reg<='d0;            
            end
            if(cnt_key1_detect_reg==KEY_SWITCH_CNT_MAX)swicth_cmos_reg='b1;
            else if(cnt_key2_detect_reg==KEY_SWITCH_CNT_MAX)swicth_cmos_reg='b0;
    end
end

power_on_reset	power_on_reset_inst1
    (
	.clk(clk50m),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset1)
    );

power_on_reset	power_on_reset_inst2
    (
	.clk(clk50m),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset2)
    );

ov5640_reg_config	ov5640_reg_config_inst1(
	.clk(clk50m),
	.camera_rstn(cmos_reset1),	
	.i2c_sclk(cmos_scl1),
	.i2c_sdat(cmos_sda1),
	.reg_conf_done(cmos_conf_done1)
); 
ov5640_reg_config	ov5640_reg_config_inst2(
	.clk(clk50m),
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
ov5640_capture ov5640_capture_inst2
                (
                .rstn(cmos_reset2),
                .init_done_flag(cmos_conf_done2),
                .cmos_pclk(cmos_pclk2),
                .cmos_data_in(cmos_data2),
                .cmos_vsync(cmos_vsync2),
                .cmos_href(cmos_href2),
                .cmos_oclk(cmos_vedio_clk2),
                .cmos_odata(cmos_vedio_data2),
                .data_valid(cmos_vedio_wen2)
                );

clk_wiz_0 clk_wiz_0_inst(
    .clk_out1(clk_74p25MHz),
    .clk_out2(clk_371p25MHz),
    .locked(locked),
    .clk_in(clk50m),
    .resetn(rstn)
);

rgb2dvi_0 rgb2dvi_0_inst1
  (
    .TMDS_Clk_p(TMDS_CLK_P1),
    .TMDS_Clk_n(TMDS_CLK_N1),
    .TMDS_Data_p(TMDS_DATA_P1),
    .TMDS_Data_n(TMDS_DATA_N1),
    .aRst(1'b0), 
    .vid_pData({Red, Blue, Green}),
    .vid_pVDE(ready),
    .vid_pHSync(Hsync),
    .vid_pVSync(Vsync),
    .PixelClk(clk_74p25MHz),
    .SerialClk(clk_371p25MHz)
); 
  
  wire [7:0]vga_sobel;
  
  
  assign vga_sobel=(image_valid_flag_reg=='b1)? sobel_result:'d0;
   rgb2dvi_0 rgb2dvi_0_inst2
   (
    .TMDS_Clk_p(TMDS_CLK_P2),
    .TMDS_Clk_n(TMDS_CLK_N2),
    .TMDS_Data_p(TMDS_DATA_P2),
    .TMDS_Data_n(TMDS_DATA_N2),
    .aRst(1'b0), 
    .vid_pData({vga_sobel, vga_sobel, vga_sobel}),
    .vid_pVDE(ready),
    .vid_pHSync(Hsync),
    .vid_pVSync(Vsync),
    .PixelClk(clk_74p25MHz),
    .SerialClk(clk_371p25MHz)
); 

assign read_addr_ram={y_reg[9:0],x_reg[9:0]};
 
 always@(posedge clk_74p25MHz or negedge rstn) begin
    if(rstn=='b0)begin
        x_reg<='d0;
        y_reg<='d0;
        image_valid_flag_reg<='b0;
    end
    else begin
        if(Vsync=='b0)begin
            x_reg<='d0;
            y_reg<='d0;
        end
        else begin
            if(ready)begin
                if((pix_x>=VEDIO_X_START)&&(pix_x<VEDIO_X_END))x_reg<=pix_x-VEDIO_X_START;
                if((pix_y>=VEDIO_Y_START)&&(pix_y<VEDIO_Y_END))y_reg<=VEDIO_Y_END-(pix_y-VEDIO_Y_START);
                if((pix_x>=VEDIO_X_START)&&(pix_x<=VEDIO_X_END)&&(pix_y>=VEDIO_Y_START)&&(pix_y<VEDIO_Y_END))image_valid_flag_reg<='b1;
                else image_valid_flag_reg<='b0;
            end
        end
    end
 end
 
 
 assign vga_pix_data=(image_valid_flag_reg=='b1)? ram_read_port_data:'d0;
 vga_driver vga_driver_inst(
	.clk(clk_74p25MHz),           //pixel clock
	.rstn(rstn),           //reset signal high active
	.hs(Hsync),            //horizontal synchronization
	.vs(Vsync),            //vertical synchronization
	.ready(ready),            //video valid
	.rgb_r(Red),         //video red data
	.rgb_g(Green),         //video green data
	.rgb_b(Blue),          //video blue data
	.vedio_rgb565(vga_pix_data),
	.x_addr(pix_x),
	.y_addr(pix_y)
);
    reg [20:0]write_addr_ram_reg1;
    reg [20:0]write_addr_ram_reg2;
    always@(posedge cmos_pclk1 or negedge rstn)begin
        if(rstn=='b0)begin
            write_addr_ram_reg1<='b0;
        end
        else begin
            if(cmos_vsync1=='b1)begin
                write_addr_ram_reg1<='d0;
            end
            else if(cmos_vedio_clk1=='b1)begin
                write_addr_ram_reg1<=write_addr_ram_reg1+'d1;
            end
        end
    end     
    
    always@(posedge cmos_pclk2 or negedge rstn)begin
        if(rstn=='b0)begin
            write_addr_ram_reg2<='b0;
        end
        else begin
            if(cmos_vsync2=='b1)begin
                write_addr_ram_reg2<='d0;
            end
            else if(cmos_vedio_clk2=='b1)begin
                write_addr_ram_reg2<=write_addr_ram_reg2+'d1;
            end
        end
    end         
    

assign vedio_clk=(swicth_cmos_reg=='b1)?cmos_pclk1:cmos_pclk2;
assign vedio_wen=(swicth_cmos_reg=='b1)?cmos_vedio_wen1:cmos_vedio_wen2;
assign vedio_data=(swicth_cmos_reg=='b1)?cmos_vedio_data1:cmos_vedio_data2;
assign vedio_ram_addr=(swicth_cmos_reg=='b1)?write_addr_ram_reg1:write_addr_ram_reg2;

//vedio1 data write_to ram
    blk_mem_gen_0 blk_mem_gen_0_inst1
    (
    .clka(vedio_clk),
    .ena('b1),	
    .wea(vedio_wen), 
    .addra(vedio_ram_addr),//
    .dina(vedio_data), 
    .clkb(clk_74p25MHz), 
    .enb('b1), 
    .addrb(read_addr_ram),
    .doutb(ram_read_port_data)
    );
 
    
    (*mark_debug="true"*)wire [7:0]sobel_result;
    (*mark_debug="true"*)wire sobel_valid;

    image_sobel_process image_sobel_process_inst1
    (
    .image_valid(image_valid_flag_reg),
    .ram_data(ram_read_port_data),
    .vsync(Vsync),
    .sobel_valid(sobel_valid),
    .sobel_data(sobel_result),
    .vga_sync_clk(clk_74p25MHz),
    .rstn(rstn)
    );


endmodule
