module ov5640_hdmi_display
(
//系统时钟和复位信号
   input   wire	        clk50m,//default 50mhz
   input   wire        rstn,	//reset n
   //摄像头接口信号
   output  wire        cmos_scl1,         //cmos i2c clock
   inout   wire        cmos_sda1,         //cmos i2c data
   output  wire        cmos_reset1,       //cmos reset
   input   wire        cmos_vsync1,       //cmos vsync
   input   wire        cmos_href1,        //cmos hsync refrence
   input   wire        cmos_pclk1,        //cmos pxiel clock
   input   wire [7:0]  cmos_data1,        //cmos data
   
   output wire cmos_conf_done1,//仅仅用于指示摄像头配置完成
    //HDMI接口信号
    output wire[2:0] TMDS_DATA_P1,
    output wire[2:0] TMDS_DATA_N1,
    output wire      TMDS_CLK_P1,
    output wire      TMDS_CLK_N1,
    output wire      HDMI_OUT_EN1
    );
    
    wire cmos_vedio_clk1;//摄像头的16比特RGB565输出像素时钟
    wire [15:0]cmos_vedio_data1;//摄像头合成的RGB565像素数据
    reg [20:0]write_addr_ram_reg;//像素往RAM存储的地址寄存器
    wire [15:0]ram_read_port_data;//读取RAM进行VGA显示从RAM里面取值的地址

//上电复位，产生一个拉低摄像头的复位信号
power_on_reset	power_on_reset_inst1
    (
	.clk(clk50m),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset1)
    );

//配置摄像头的寄存器模块，包含配置寄存器的状态机，和SCCB接口的驱动时序代码
ov5640_reg_config	ov5640_reg_config_inst1(
	.clk(clk50m),
	.camera_rstn(cmos_reset1),	
	.i2c_sclk(cmos_scl1),
	.i2c_sdat(cmos_sda1),
	.reg_conf_done(cmos_conf_done1)
); 
//摄像头接口时序转换，将8位数据转换成16为RGB565时序
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
//VGA驱动的时序相关时钟
wire clk_74p25MHz;//VGA像素参考时钟
wire clk_371p25MHz;  // 74p25  x 5 HDMI编码的TMDS串行时钟
wire locked;//锁相环lock信号
//调用时钟模块产生VGA的时钟信号。输入50M
clk_wiz_0 clk_wiz_0_inst(
    .clk_out1(clk_74p25MHz),
    .clk_out2(clk_371p25MHz),
    .locked(locked),
    .clk_in(clk50m),
    .resetn(rstn)
);

wire ready;//VGA转HDMI的IP就绪信号
(*mark_debug="true"*) wire Hsync;
(*mark_debug="true"*) wire Vsync;

(*mark_debug="true"*)wire [7:0] Red;
(*mark_debug="true"*)wire [7:0] Green;
(*mark_debug="true"*)wire [7:0] Blue;

//VGA转HDMI的编码开源IP，用于将VGA的时序转换成HDMI的TMDS编码信号
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

assign HDMI_OUT_EN1 =1'b1;
    
    
    
//以下代码用于合成访问RAM读取图像数据的地址
wire [20:0]read_addr_ram;
wire [15:0]vga_pix_data;
wire [10:0]pix_x;
wire [10:0]pix_y;

reg [10:0]x_reg;
reg [10:0]y_reg;
assign read_addr_ram={y_reg[9:0],x_reg[9:0]};//地址等于行和列合成一个地址。一行有1024个数据
 //这些参数对应摄像头输出图像对应的有效行列区域计数
 parameter VEDIO_X_LENTH=1024;
 parameter VEDIO_Y_LENTH=768;
 parameter VEDIO_X_START=0;
 parameter VEDIO_Y_START=0;
 parameter VEDIO_X_END=VEDIO_X_START+VEDIO_X_LENTH;
 parameter VEDIO_Y_END=VEDIO_Y_START+VEDIO_Y_LENTH;
//图像在有效显示区域的标志以及其产生的逻辑代码块
 reg image_valid_flag_reg;
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
                if((pix_x>=VEDIO_X_START)&&(pix_x<VEDIO_X_END)&&(pix_y>=VEDIO_Y_START)&&(pix_y<VEDIO_Y_END))image_valid_flag_reg<='b1;
                else image_valid_flag_reg<='b0;
            end
        end
    end
 end
 
 //如果在有效图像区域，则显示摄像头的图像；如果不在，则全部显示黑色。
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
//图像采集之后写入RAM的地址产生逻辑块
    always@(posedge cmos_pclk1 or negedge rstn)begin
        if(rstn=='b0)begin
            write_addr_ram_reg<='b0;
        end
        else begin
            if(cmos_vsync1=='b1)begin
                write_addr_ram_reg<='d0;
            end
            else if(cmos_vedio_clk1=='b1)begin
                write_addr_ram_reg<=write_addr_ram_reg+'d1;
            end
        end
    end         
    
//图像帧数据的缓存RAM。A口写入采集的图像，B口读出到VGA显示
    blk_mem_gen_0 blk_mem_gen_0_inst1
    (
    .clka(cmos_pclk1),
    .ena('b1),	
    .wea(cmos_vedio_wen1), 
    .addra(write_addr_ram_reg),
    .dina(cmos_vedio_data1), 
    .clkb(clk_74p25MHz), 
    .enb('b1), 
    .addrb(read_addr_ram),
    .doutb(ram_read_port_data)
    );

endmodule
