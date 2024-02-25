module vga_sync
    (
        output        hsync,
        output        vsync,
        output        ready,
        output [10:0] x_addr,
        output [10:0] y_addr,
        input         clk,
        input         rstn
    );

parameter  H_FRONT_PROCH  =88;
parameter  H_SYNC_TIME   =44;
parameter  H_BACK_PROCH  =148;
parameter  H_ADDR_TIME    =1920;
parameter  H_TIME_TOTAL=H_FRONT_PROCH+H_SYNC_TIME+H_BACK_PROCH+H_ADDR_TIME;
parameter  H_ADDR_START_PIX  =H_FRONT_PROCH+H_SYNC_TIME;
parameter  H_ADDR_END_PIX    =H_FRONT_PROCH+H_SYNC_TIME+H_ADDR_TIME;

parameter  V_FRONT_PROCH  =4;
parameter  V_SYNC_TIME   =5;
parameter  V_BACK_PROCH  =36;
parameter  V_ADDR_TIME    =1080;
parameter  V_TIME_TOTAL=V_FRONT_PROCH+V_SYNC_TIME+V_BACK_PROCH+V_ADDR_TIME;
parameter  V_ADDR_START_PIX  =V_FRONT_PROCH+V_SYNC_TIME;
parameter  V_ADDR_END_PIX    =V_FRONT_PROCH+V_SYNC_TIME+V_ADDR_TIME;


reg [12:0] cnt_hreg;
always @(posedge clk, negedge rstn) begin
    if(!rstn)
        cnt_hreg <= 'd0;
    else if(cnt_hreg == H_TIME_TOTAL-1)  //H_TIME_TOTAL PERIOD CNT
        cnt_hreg <= 'd0;
    else
        cnt_hreg <= cnt_hreg + 'b1;
end

reg [12:0] cnt_vreg;
always @(posedge clk, negedge rstn) begin
    if(!rstn)
        cnt_vreg <= 'd0;
    else if(cnt_vreg == V_TIME_TOTAL-1)  //V_TIME_TOTAL PERIOD CNT
        cnt_vreg <= 'd0;
    else if(cnt_hreg == H_TIME_TOTAL-1)
        cnt_vreg <= cnt_vreg + 'b1;
end

reg ready_reg;
always @(posedge clk, negedge rstn) begin
    if(!rstn)
        ready_reg <= 'b0;
    else if( (cnt_hreg >= H_ADDR_START_PIX && cnt_hreg < H_ADDR_END_PIX)  //H PIX VALID
        && (cnt_vreg >= V_ADDR_START_PIX && cnt_vreg <V_ADDR_END_PIX) )   //V PIX VALID
        ready_reg <= 'b1;
    else
        ready_reg <= 'b0;
end

//assign critical signal 
assign hsync = (cnt_hreg < H_FRONT_PROCH) ? 'b0 : 'b1;
assign vsync = (cnt_vreg < V_FRONT_PROCH)   ? 'b0 : 'b1;
assign ready = ready_reg;
assign x_addr = ready_reg ? cnt_hreg - H_ADDR_START_PIX : 'd0;
assign y_addr = ready_reg ? cnt_vreg - V_ADDR_START_PIX  : 'd0;

endmodule


