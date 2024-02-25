module hdmi_encoder_top
        (
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
            
            input  wire clk,
            input  wire rstn
         );

wire clk_74p25MHz;
wire clk_371p25MHz;  // 74p25  x 5
wire locked;

clk_wiz_0 clk_wiz_0_inst(
    .clk_out1(clk_74p25MHz),
    .clk_out2(clk_371p25MHz),
    .locked(locked),
    .clk_in(clk),
    .resetn(rstn)
);

  (*mark_debug="true"*) wire Hsync;
  (*mark_debug="true"*) wire Vsync;
  (*mark_debug="true"*) wire ready;
  (*mark_debug="true"*) wire [7:0] Red;
  (*mark_debug="true"*) wire [7:0] Green;
  (*mark_debug="true"*) wire [7:0] Blue;


rgb2dvi_0 rgb2dvi_0_inst1(
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
    
   rgb2dvi_0 rgb2dvi_0_inst2(
    .TMDS_Clk_p(TMDS_CLK_P2),
    .TMDS_Clk_n(TMDS_CLK_N2),
    .TMDS_Data_p(TMDS_DATA_P2),
    .TMDS_Data_n(TMDS_DATA_N2),
    .aRst(1'b0), 
    .vid_pData({Red, Blue, Green}),
    .vid_pVDE(ready),
    .vid_pHSync(Hsync),
    .vid_pVSync(Vsync),
    .PixelClk(clk_74p25MHz),
    .SerialClk(clk_371p25MHz)
); 

assign HDMI_OUT_EN2 =1'b1; 
    
    
 wire [23:0]rgb_data_wire;
   (*mark_debug="true"*) wire pix_valid_wire;   
   (*mark_debug="true"*) wire [10:0]pix_x;
   (*mark_debug="true"*) wire [10:0]pix_y;
 
 vga_driver vga_driver_inst(
	.clk(clk_74p25MHz),           //pixel clock
	.rstn(rstn),           //reset signal high active
	.hs(Hsync),            //horizontal synchronization
	.vs(Vsync),            //vertical synchronization
	.ready(ready),            //video valid
	.rgb_r(Red),         //video red data
	.rgb_g(Green),         //video green data
	.rgb_b(Blue)          //video blue data
);
endmodule
