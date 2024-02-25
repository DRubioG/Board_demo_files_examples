module ov5640_capture
(
	input				rstn,
	input				init_done_flag,		//Init Done

	input				cmos_pclk,		//25MHz
	input	[7:0]		cmos_data_in,		//CMOS Data
	input				cmos_vsync,		//L: Vaild
	input				cmos_href,		//H: Vaild
	
	output	reg			cmos_oclk,		//1/2 PCLK
	output	reg	[15:0]	cmos_odata,		//16Bits RGB		
	output	reg			data_valid		//Data Enable
);

/**************************************************
________							       ________
VS		|_________________________________|
HS			  _______	 	   _______
_____________|       |__...___|       |____________
**************************************************/

reg		mcmos_vsync;
always@(posedge cmos_pclk or negedge rstn)
begin
	if(!rstn)
		mcmos_vsync <= 1;
	else
		mcmos_vsync <= cmos_vsync;		//场同步：低电平有效
end
wire	cmos_vsync_over = ({mcmos_vsync,cmos_vsync} == 2'b01) ? 1'b1 : 1'b0;	//VSYNC上升沿结束

//Change the sensor data from 8 bits to 16 bits.
reg			byte_state;		//byte state count
reg [7:0]  	pre_cmos_idata;
always@(posedge cmos_pclk or negedge rstn)
begin
	if(!rstn)
		begin
		byte_state <= 0;
		pre_cmos_idata <= 8'd0;
		cmos_odata <= 16'd0;
		end
	else
		begin
		if(~cmos_vsync & cmos_href)			//行场有效，{first_byte, second_byte} 
			begin
			byte_state <= byte_state + 1'b1;	//（RGB565 = {first_byte, second_byte}）
			case(byte_state)
			1'b0 :	pre_cmos_idata[7:0] <= cmos_data_in;
			1'b1 : 	cmos_odata[15:0] <= {pre_cmos_idata[7:0], cmos_data_in[7:0]};
			endcase
			end
		else
			begin
			byte_state <= 0;
			pre_cmos_idata <= 8'd0;
			cmos_odata <= cmos_odata;
			end
		end
end

//Wait for Sensor output Data valid， 10 Franme
reg	[3:0] 	frame_cont;
reg 		frame_valid;
always@(posedge cmos_pclk or negedge rstn)
begin
	if(!rstn)
		begin
		frame_cont <= 0;
		frame_valid <= 0;
		end
	else if(init_done_flag)					//CMOS I2C初始化完毕
		begin
		if(cmos_vsync_over == 1'b1)		//VS上升沿，1帧写入完毕
			begin
			if(frame_cont < 12)
				begin
				frame_cont	<=	frame_cont + 1'b1;
				frame_valid <= 1'b0;
				end
			else
				begin
				frame_cont	<=	frame_cont;
				frame_valid <= 1'b1;		//数据输出有效
				end
			end
		end
end

//CMOS_DATA数据同步输出使能时钟
always@(posedge cmos_pclk or negedge rstn)
begin
	if(!rstn)
		cmos_oclk <= 0;
	else if(frame_valid == 1'b1 && byte_state)//(X_Cont >= 12'd1 && X_Cont <= H_DISP))
		cmos_oclk <= ~cmos_oclk;
	else
		cmos_oclk <= 0;
end

//数据输出有效CMOS_VALID
always@(posedge cmos_pclk or negedge rstn)
begin
	if(!rstn)
		data_valid <= 0;
	else if(frame_valid == 1'b1)
		data_valid <= ~cmos_vsync;
	else
		data_valid <= 0;
end

endmodule



