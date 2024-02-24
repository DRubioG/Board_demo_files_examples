module image_sobel_process
        (
            input wire image_valid,
            input wire [15:0]ram_data,
            input wire vsync,
            output wire sobel_valid,
            output wire [7:0]sobel_data,
            input wire vga_sync_clk,
            input wire rstn
        );
        
parameter VEDIO_X_LENTH=1024;
parameter VEDIO_Y_LENTH=720;
(*mark_debug="true"*)reg [23:0]pix_cnt_reg;        
wire [7:0]rgb_red;
wire [7:0]rgb_green;
wire [7:0]rgb_blue;

(*mark_debug="true"*)wire [7:0]pix_data_line1;
(*mark_debug="true"*)wire [7:0]pix_data_line2;
(*mark_debug="true"*)wire [7:0]pix_data_line3;
(*mark_debug="true"*)wire fifo_rd_en1;
(*mark_debug="true"*)wire fifo_rd_en2;

(*mark_debug="true"*)wire fifo_wr_en1;
(*mark_debug="true"*)wire fifo_wr_en2;


wire [17:0]ycbcr_y_tmp;
wire [7:0]ycbcr_y;

wire[7:0]fifo1_data_read;
wire[7:0]fifo2_data_read;

assign sobel_valid=(fifo_rd_en1&fifo_rd_en2)?'b1:'b0;

assign  pix_data_line1=fifo2_data_read;
assign  pix_data_line2=fifo1_data_read;
assign  pix_data_line3=ycbcr_y;


always@(posedge vga_sync_clk or negedge rstn)begin
    if(rstn=='b0)begin
        pix_cnt_reg<='b0;
    end
    else begin
        if(image_valid)pix_cnt_reg<=pix_cnt_reg+'d1;
        else if(vsync=='b0)pix_cnt_reg<='d0;
    end
end


assign fifo_rd_en1=image_valid&((pix_cnt_reg>='d1024)?'b1:'b0);
assign fifo_rd_en2=image_valid&((pix_cnt_reg>='d2048)?'b1:'b0);
assign fifo_wr_en1=image_valid;
assign fifo_wr_en2=image_valid&((pix_cnt_reg>='d1024)?'b1:'b0);



assign rgb_red=  {ram_data[4:0],3'b000};
assign rgb_green={ram_data[10:5],2'b00};
assign rgb_blue= {ram_data[15:11],3'b000};

//����ת��ϵ����ȫ���Ŵ�1024������Ҵ����ϲ鵽��ת����ʽ��ϵ������1024��������Ĳ���
parameter KYR=306;
parameter KYG=601;
parameter KYB=116;
parameter OFFSET_Y=0;
//����ֻ����Y
assign ycbcr_y_tmp=KYR*rgb_red+KYG*rgb_green+KYB*rgb_blue+OFFSET_Y;
assign ycbcr_y=ycbcr_y_tmp[17:10];

reg[7:0]pix_reg11;
reg[7:0]pix_reg12;
reg[7:0]pix_reg13;

reg[7:0]pix_reg21;
reg[7:0]pix_reg22;
reg[7:0]pix_reg23;

reg[7:0]pix_reg31;
reg[7:0]pix_reg32;
reg[7:0]pix_reg33;


assign sobel_data=255-(gx_tmp[6:0]+gy_tmp[6:0]);

(*mark_debug="true"*)wire [12:0]gx_tmp;
(*mark_debug="true"*)wire [12:0]gy_tmp;

(*mark_debug="true"*)reg [12:0]gx_reg;
(*mark_debug="true"*)reg [12:0]gy_reg;


assign gx_tmp=gx_reg[12]?('d8192-gx_reg):gx_reg;//�����ֵ
assign gy_tmp=gy_reg[12]?('d8192-gy_reg):gy_reg;//�����ֵ

always@(posedge vga_sync_clk or negedge rstn)begin
    if(rstn=='b0)begin
        gx_reg<='d0;
        gy_reg<='d0;
        pix_reg11<='d0; pix_reg12<='d0; pix_reg13<='d0;
        pix_reg21<='d0; pix_reg22<='d0; pix_reg23<='d0;
        pix_reg31<='d0; pix_reg32<='d0; pix_reg33<='d0;    
    end
    else begin
        pix_reg13<=pix_reg12; pix_reg12<=pix_reg11;pix_reg11<=pix_data_line1;
        pix_reg23<=pix_reg22; pix_reg22<=pix_reg21;pix_reg21<=pix_data_line2;
        pix_reg33<=pix_reg32; pix_reg32<=pix_reg31;pix_reg31<=pix_data_line3;
        gx_reg<=(pix_reg33+(pix_reg23+pix_reg23)+pix_reg13)-(pix_reg11+(pix_reg21+pix_reg21)+pix_reg31);
        gy_reg<=(pix_reg11+(pix_reg12+pix_reg12)+pix_reg13)-(pix_reg31+(pix_reg32+pix_reg32)+pix_reg33);
    end
end

fifo_generator_0 fifo_generator_0_inst1
                 (
                 .clk(vga_sync_clk),
                 .srst(~vsync),
                 .din(pix_data_line3),
                 .wr_en(fifo_wr_en1),
                 .rd_en(fifo_rd_en1),
                 .dout(fifo1_data_read),
                 .full(),
                 .empty()
                 );
fifo_generator_0 fifo_generator_0_inst2
                 (
                 .clk(vga_sync_clk),
                 .srst(~vsync),
                 .din(pix_data_line2),
                 .wr_en(fifo_wr_en2),
                 .rd_en(fifo_rd_en2),
                 .dout(fifo2_data_read),
                 .full(),
                 .empty()
                 );                       
endmodule
