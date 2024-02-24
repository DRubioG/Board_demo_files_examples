module i2c_driver(
               clock_i2c,          //CLK 
               camera_rstn,     //RSTN
               i2c_data,          //TO IIC SEND DATA
               start,             //TRIGER START
               done,           //SEND END
               i2c_sclk,          //IIC SCL 
               i2c_sdat          //IIC SDA
               );  
               
               
    input [31:0]i2c_data;
    input camera_rstn;
    input clock_i2c;
    input start;
    output done;
    output i2c_sclk;
    inout i2c_sdat;
    reg [5:0] cyc_count;
    reg reg_sdat;
    reg sclk;
    reg done;
 
   
    wire i2c_sclk;
    wire i2c_sdat;
    wire ack;
   
    assign i2c_sclk=sclk|(((cyc_count>=4)&(cyc_count<=39))?~clock_i2c:0);
    assign i2c_sdat=ack_state_reg?1'bz:reg_sdat;
   
   
    always@(posedge clock_i2c or  negedge camera_rstn)
    begin
       if(!camera_rstn)
         cyc_count<=6'b111111;
       else 
		   begin
           if(start==0)
             cyc_count<=0;
           else if(cyc_count<'b111111)cyc_count<=cyc_count+1;
           else cyc_count<=0;
         end
    end
    	 
    reg ack_state_reg;
    always@(posedge clock_i2c or negedge camera_rstn)
    begin
    if(!camera_rstn)begin
       ack_state_reg<='b0;
    end
    else begin
        if((cyc_count=='d11)||(cyc_count=='d20)||(cyc_count=='d29)||(cyc_count>='d38))ack_state_reg<='b1;
        else ack_state_reg<='b0;
    end
    end
	 
	 
    always@(posedge clock_i2c or negedge camera_rstn)
    begin
       if(!camera_rstn)
       begin
          done<=0;
          sclk<=1;
          reg_sdat<=1;
       end
       else
          case(cyc_count)
          0:begin 
			  done<=0;
			  sclk<=1;
			  reg_sdat<=1;
		  end
          1:reg_sdat<=0;                 //START
          2:sclk<=0;
          3:reg_sdat<=i2c_data[31];
          4:reg_sdat<=i2c_data[30];
          5:reg_sdat<=i2c_data[29];
          6:reg_sdat<=i2c_data[28];
          7:reg_sdat<=i2c_data[27];
          8:reg_sdat<=i2c_data[26];
          9:reg_sdat<=i2c_data[25];
          10:reg_sdat<=i2c_data[24];
          11:reg_sdat<=1;                //ACK1
          12:reg_sdat<=i2c_data[23];
          13:reg_sdat<=i2c_data[22];
          14:reg_sdat<=i2c_data[21];
          15:reg_sdat<=i2c_data[20];
          16:reg_sdat<=i2c_data[19];
          17:reg_sdat<=i2c_data[18];
          18:reg_sdat<=i2c_data[17];
          19:reg_sdat<=i2c_data[16];
          20:reg_sdat<=1;                //ACK2
          21: reg_sdat<=i2c_data[15];
          22:reg_sdat<=i2c_data[14];
          23:reg_sdat<=i2c_data[13];
          24:reg_sdat<=i2c_data[12];
          25:reg_sdat<=i2c_data[11];
          26:reg_sdat<=i2c_data[10];
          27:reg_sdat<=i2c_data[9];
          28:reg_sdat<=i2c_data[8];
          29:reg_sdat<=1;                //ACK3   
          30:reg_sdat<=i2c_data[7];
          31:reg_sdat<=i2c_data[6];
          32:reg_sdat<=i2c_data[5];
          33:reg_sdat<=i2c_data[4];
          34:reg_sdat<=i2c_data[3];
          35:reg_sdat<=i2c_data[2];
          36:reg_sdat<=i2c_data[1];
          37:reg_sdat<=i2c_data[0];
          38:reg_sdat<=1;                //ACK4  
          39:begin 
				sclk<=0;
				reg_sdat<=0;
			end
          40:sclk<=1;
          41:begin 
				reg_sdat<=1;
				done<=1;
			end
          default:begin
				reg_sdat<=1;
				done<=1;
		  end
          endcase
       
end
endmodule

