module eth_catch(
                input wire rstn,
				input wire [3:0]gmii_rxd,
				input wire gmii_rx_dv,
				input wire gmii_rx_clk,
				output wire [7:0]eth_data_rxd
				);
wire [3:0]eth_data_rxd_wire_h;
wire [3:0]eth_data_rxd_wire_l;
wire [1:0]eth_rxd_data_valid_wire;
wire [7:0]eth_data_rxd_wire;
assign eth_data_rxd[7:0]={eth_data_rxd_wire_h[3:0],eth_data_rxd_wire_l[3:0]};

   IDDR2 #(
		  .DDR_ALIGNMENT("C1"), // Sets output alignment to "NONE", "C0" or "C1" 
		  .INIT_Q0(1'b0), // Sets initial state of the Q0 output to 1'b0 or 1'b1
		  .INIT_Q1(1'b0), // Sets initial state of the Q1 output to 1'b0 or 1'b1
		  .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) IDDR2_inst1[3:0] (
      .Q0(eth_data_rxd_wire_h[3:0]), // 1-bit output captured with C0 clock
      .Q1(eth_data_rxd_wire_l[3:0]), // 1-bit output captured with C1 clock
      .C0(gmii_rx_clk), // 1-bit clock input
      .C1(~gmii_rx_clk), // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(gmii_rxd[3:0]),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
   
  IDDR2 #(
		  .DDR_ALIGNMENT("C1"), // Sets output alignment to "NONE", "C0" or "C1" 
		  .INIT_Q0(1'b0), // Sets initial state of the Q0 output to 1'b0 or 1'b1
		  .INIT_Q1(1'b0), // Sets initial state of the Q1 output to 1'b0 or 1'b1
		  .SRTYPE("SYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) IDDR2_inst2 (
      .Q0(eth_rxd_data_valid_wire[0]), // 1-bit output captured with C0 clock
      .Q1(eth_rxd_data_valid_wire[1]), // 1-bit output captured with C1 clock
      .C0(gmii_rx_clk), // 1-bit clock input
      .C1(~gmii_rx_clk), // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D(gmii_rx_dv),   // 1-bit DDR data input
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
   								  
endmodule  
   
   
   
   