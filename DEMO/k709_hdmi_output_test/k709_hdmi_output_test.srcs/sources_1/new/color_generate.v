module color_generate(
    output reg [7:0]  R,
    output reg [7:0]  G,
    output reg [7:0]  B,
    
    input             clk,
    input             rst_n,
    input      [10:0] col_addr,
    input      [10:0] row_addr,
    input             ready
);

always @(posedge clk, negedge rst_n) begin
    if(!rst_n)begin
        R<='d0;
        G<='d0;
        B<='d0;
    end
    else begin
        R<='d256-col_addr[7:0];
        G<='d256-row_addr[7:0];
        B<='d256-col_addr[7:0];
    end
end


endmodule


