module power_on_reset
        (
       input clk,
       input reset_n,
       output camera_rstn
        );                  

reg [18:0]cnt1;
reg [15:0]cnt2;

reg camera_rstn_reg;
reg camera_pwnd_reg;

assign camera_rstn=camera_rstn_reg;

//   5ms delay
always@(posedge clk)
begin
  if(reset_n==1'b0) begin
	    cnt1<=0;
		 camera_pwnd_reg<=1'b1;  
  end
  else if(cnt1<18'h40000) begin
       cnt1<=cnt1+1'b1;
       camera_pwnd_reg<=1'b1;
  end
  else
     camera_pwnd_reg<=1'b0;         
end

//1.3ms delay
always@(posedge clk)
begin
  if(camera_pwnd_reg==1)  begin
	    cnt2<=0;
		 camera_rstn_reg<=1'b0;  
  end
  else if(cnt2<16'hffff) begin
       cnt2<=cnt2+1'b1;
       camera_rstn_reg<=1'b0;
  end
  else
     camera_rstn_reg<=1'b1;         
end

endmodule
