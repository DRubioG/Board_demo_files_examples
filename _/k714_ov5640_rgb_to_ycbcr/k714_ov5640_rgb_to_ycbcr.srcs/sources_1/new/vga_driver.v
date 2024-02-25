module vga_driver
    (
        input                 clk,           //pixel clock
        input                 rstn,           //reset signal high active
        output                hs,            //horizontal synchronization
        output                vs,            //vertical synchronization
        output                ready,            //video valid
        output[7:0]           rgb_r,         //video red data
        output[7:0]           rgb_g,         //video green data
        output[7:0]           rgb_b,          //video blue data
        input [15:0]vedio_rgb565,
        output [10:0]x_addr,
        output [10:0]y_addr
    );
  wire [10:0]x_pos;
  wire [10:0]y_pos;
  
  assign x_addr=x_pos;
  assign y_addr=y_pos;
  
assign rgb_r={vedio_rgb565[4:0],3'b000};
assign rgb_g={vedio_rgb565[10:5],2'b00};
assign rgb_b={vedio_rgb565[15:11],3'b000};

vga_sync vga_sync_inst(
    .hsync(hs),
    .vsync(vs),
    .ready(ready),
    .x_addr(x_pos),
    .y_addr(y_pos),
    .clk(clk),
    .rstn(rstn)
);

endmodule 