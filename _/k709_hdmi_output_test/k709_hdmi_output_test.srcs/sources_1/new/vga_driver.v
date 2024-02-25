module vga_driver(
	input                 clk,           //pixel clock
	input                 rstn,           //reset signal high active
	output                hs,            //horizontal synchronization
	output                vs,            //vertical synchronization
	output                ready,            //video valid
	output[7:0]           rgb_r,         //video red data
	output[7:0]           rgb_g,         //video green data
	output[7:0]           rgb_b          //video blue data
);

wire [10:0] cl_adr;
wire [10:0] rw_adr;

vga_sync vga_sync_inst(
    .hsync(hs),
    .vsync(vs),
    .ready(ready),
    .x_addr(cl_adr),
    .y_addr(rw_adr),
    .clk(clk),
    .rstn(rstn)
);

color_generate color_generate_inst(
    .R(rgb_r),
    .G(rgb_g),
    .B(rgb_b),

    .clk(clk),
    .rst_n(rstn),
    .col_addr(cl_adr),
    .row_addr(rw_adr),
    .ready(ready)
);

endmodule 