`timescale 1ns / 1ps  
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test 
//////////////////////////////////////////////////////////////////////////////////
module gmii_arbi
(
 input                 clk,
 input                 rst_n,
 input  [1:0]          speed,  
 input                 link,                                            
input                 gmii_rx_dv,
input  [7:0]          gmii_rxd,
input                 gmii_tx_en,
input  [7:0]          gmii_txd,                       
output reg [31:0]     pack_total_len,     //delay time
output                e_rst_n,
output reg            e_rx_dv,
output reg [7:0]      e_rxd,
output reg            e_tx_en,
output reg [7:0]      e_txd
);
                       


assign e_rst_n =rst_n ;

always @(posedge clk or negedge rst_n)
  begin
    if (~rst_n)
	begin
	  e_rx_dv   <= 1'b0 ;
	  e_rxd     <= 8'd0 ;
	  e_tx_en   <= 1'b0 ;
	  e_txd     <= 8'd0 ;
	  pack_total_len <= 32'd125000000 ;
	end
	else begin
	  e_rx_dv   <= gmii_rx_dv  ;
	  e_rxd     <= gmii_rxd    ;
	  e_tx_en   <= gmii_tx_en  ;
	  e_txd     <= gmii_txd    ;
	end
  end  

gmii_tx_buffer tx_buffer_inst
(
 .clk                    (clk                 ),
 .rst_n                  (e_rst_n             ), 
 .link                   (e_rst_n             ),
 .gmii_tx_en             (gmii_tx_en          ),
 .gmii_txd               (gmii_txd            )
);
	
    
endmodule
