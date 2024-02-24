module single_to_diff
   (
    input wire clk,
    input wire rstn,
    output wire [3:0]led,
    output wire [7:0]diff_out
    );
    /*********************************************************
    С��èǶ��ʽ����
    ����ת������ԭ��ʹ��
    ���Խ���ѹ���ó�2.5V��ѡ��LVDS��ƽ��׼��Ҳ��ʹ��3.3V������   
    *********************************************************/
    parameter CLOCK_FREQ  =50000000;
    parameter COUNTER_MAX_CNT=CLOCK_FREQ-1;//change time 0.5s
    reg [31:0] cnt;
    reg   [3:0]led_state;
    
    assign led[0]=led_state[0];
    assign led[1]=led_state[1];
    assign led[2]=led_state[2];  
    assign led[3]=led_state[3];
    wire [3:0]cnt_bit_state;
    assign cnt_bit_state=cnt[3:0];
    
     always @(posedge clk, negedge rstn) begin
        if(!rstn) begin
            cnt <= 31'd0;
            led_state <= 'd0;
        end
        else begin
           if(cnt<COUNTER_MAX_CNT) cnt <= cnt + 1'b1;
           else begin//����1s
                cnt <= 31'd0;
                led_state <= led_state+'b1;
            end
        end
    end
    /**********************************
    ������ʹ�õĵ���ת���ԭ�ԭ�ﲻ��IP
    ԭ��ʹ�õ�ֱ�Ӷ�ӦӲ�������в��ת�������룬����ת�������ȵ�
    ************************************/
       OBUFDS #(
      .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst1 (
      .O(diff_out[0]),     // Diff_p output (connect directly to top-level port)
      .OB(diff_out[1]),   // Diff_n output (connect directly to top-level port)
      .I(cnt_bit_state[0])      // Buffer input
   );
          OBUFDS #(
      .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst2(
      .O(diff_out[2]),     // Diff_p output (connect directly to top-level port)
      .OB(diff_out[3]),   // Diff_n output (connect directly to top-level port)
      .I(cnt_bit_state[1])      // Buffer input
   );
          OBUFDS #(
      .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst3 (
      .O(diff_out[4]),     // Diff_p output (connect directly to top-level port)
      .OB(diff_out[5]),   // Diff_n output (connect directly to top-level port)
      .I(cnt_bit_state[2])      // Buffer input
   );       OBUFDS #(
      .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
      .SLEW("SLOW")           // Specify the output slew rate
   ) OBUFDS_inst4 (
      .O(diff_out[6]),     // Diff_p output (connect directly to top-level port)
      .OB(diff_out[7]),   // Diff_n output (connect directly to top-level port)
      .I(cnt_bit_state[3])      // Buffer input
   );
   
endmodule
