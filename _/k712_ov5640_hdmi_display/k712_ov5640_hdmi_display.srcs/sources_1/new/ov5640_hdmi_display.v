module ov5640_hdmi_display
(
//ϵͳʱ�Ӻ͸�λ�ź�
   input   wire	        clk50m,//default 50mhz
   input   wire        rstn,	//reset n
   //����ͷ�ӿ��ź�
   output  wire        cmos_scl1,         //cmos i2c clock
   inout   wire        cmos_sda1,         //cmos i2c data
   output  wire        cmos_reset1,       //cmos reset
   input   wire        cmos_vsync1,       //cmos vsync
   input   wire        cmos_href1,        //cmos hsync refrence
   input   wire        cmos_pclk1,        //cmos pxiel clock
   input   wire [7:0]  cmos_data1,        //cmos data
   
   output wire cmos_conf_done1,//��������ָʾ����ͷ�������
    //HDMI�ӿ��ź�
    output wire[2:0] TMDS_DATA_P1,
    output wire[2:0] TMDS_DATA_N1,
    output wire      TMDS_CLK_P1,
    output wire      TMDS_CLK_N1,
    output wire      HDMI_OUT_EN1
    );
    
    wire cmos_vedio_clk1;//����ͷ��16����RGB565�������ʱ��
    wire [15:0]cmos_vedio_data1;//����ͷ�ϳɵ�RGB565��������
    reg [20:0]write_addr_ram_reg;//������RAM�洢�ĵ�ַ�Ĵ���
    wire [15:0]ram_read_port_data;//��ȡRAM����VGA��ʾ��RAM����ȡֵ�ĵ�ַ

//�ϵ縴λ������һ����������ͷ�ĸ�λ�ź�
power_on_reset	power_on_reset_inst1
    (
	.clk(clk50m),
	.reset_n(rstn),	
	.camera_rstn(cmos_reset1)
    );

//��������ͷ�ļĴ���ģ�飬�������üĴ�����״̬������SCCB�ӿڵ�����ʱ�����
ov5640_reg_config	ov5640_reg_config_inst1(
	.clk(clk50m),
	.camera_rstn(cmos_reset1),	
	.i2c_sclk(cmos_scl1),
	.i2c_sdat(cmos_sda1),
	.reg_conf_done(cmos_conf_done1)
); 
//����ͷ�ӿ�ʱ��ת������8λ����ת����16ΪRGB565ʱ��
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
//VGA������ʱ�����ʱ��
wire clk_74p25MHz;//VGA���زο�ʱ��
wire clk_371p25MHz;  // 74p25  x 5 HDMI�����TMDS����ʱ��
wire locked;//���໷lock�ź�
//����ʱ��ģ�����VGA��ʱ���źš�����50M
clk_wiz_0 clk_wiz_0_inst(
    .clk_out1(clk_74p25MHz),
    .clk_out2(clk_371p25MHz),
    .locked(locked),
    .clk_in(clk50m),
    .resetn(rstn)
);

wire ready;//VGAתHDMI��IP�����ź�
(*mark_debug="true"*) wire Hsync;
(*mark_debug="true"*) wire Vsync;

(*mark_debug="true"*)wire [7:0] Red;
(*mark_debug="true"*)wire [7:0] Green;
(*mark_debug="true"*)wire [7:0] Blue;

//VGAתHDMI�ı��뿪ԴIP�����ڽ�VGA��ʱ��ת����HDMI��TMDS�����ź�
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
    
    
    
//���´������ںϳɷ���RAM��ȡͼ�����ݵĵ�ַ
wire [20:0]read_addr_ram;
wire [15:0]vga_pix_data;
wire [10:0]pix_x;
wire [10:0]pix_y;

reg [10:0]x_reg;
reg [10:0]y_reg;
assign read_addr_ram={y_reg[9:0],x_reg[9:0]};//��ַ�����к��кϳ�һ����ַ��һ����1024������
 //��Щ������Ӧ����ͷ���ͼ���Ӧ����Ч�����������
 parameter VEDIO_X_LENTH=1024;
 parameter VEDIO_Y_LENTH=768;
 parameter VEDIO_X_START=0;
 parameter VEDIO_Y_START=0;
 parameter VEDIO_X_END=VEDIO_X_START+VEDIO_X_LENTH;
 parameter VEDIO_Y_END=VEDIO_Y_START+VEDIO_Y_LENTH;
//ͼ������Ч��ʾ����ı�־�Լ���������߼������
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
 
 //�������Чͼ����������ʾ����ͷ��ͼ��������ڣ���ȫ����ʾ��ɫ��
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
//ͼ��ɼ�֮��д��RAM�ĵ�ַ�����߼���
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
    
//ͼ��֡���ݵĻ���RAM��A��д��ɼ���ͼ��B�ڶ�����VGA��ʾ
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
