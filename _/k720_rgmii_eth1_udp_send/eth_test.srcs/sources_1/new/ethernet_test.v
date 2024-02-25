`timescale 1ns / 1ps  
//////////////////////////////////////////////////////////////////////////////////
// Module Name:    ethernet_test 
//////////////////////////////////////////////////////////////////////////////////
module ethernet_test(
    input        sys_clk_50m,
    input       rst_n,

	output[3:0] rgmii_txd,
	output      rgmii_txctl,
	output      rgmii_txc,
	input[3:0]  rgmii_rxd,
	input       rgmii_rxctl,
	input       rgmii_rxc
    );
    
wire            reset_n;
(*mark_debug="true"*)wire   [ 7:0]   gmii_txd;
(*mark_debug="true"*)wire            gmii_tx_en;
(*mark_debug="true"*)wire            gmii_tx_er;
(*mark_debug="true"*)wire            gmii_tx_clk;
wire            gmii_crs;
wire            gmii_col;



(*mark_debug="true"*)wire   [ 7:0]   gmii_rxd;
(*mark_debug="true"*)wire            gmii_rx_dv;
(*mark_debug="true"*)wire            gmii_rx_er;
(*mark_debug="true"*)wire            gmii_rx_clk;
wire            duplex_mode;     // 1 full, 0 half
wire            rgmii_rxcpll;

(*mark_debug="true"*)wire  [31:0]    pack_total_len ;

(*mark_debug="true"*)wire [1:0]      speed      ;
(*mark_debug="true"*)wire            link       ;

wire            e_rx_dv    ;
wire [7:0]      e_rxd      ;
wire            e_tx_en    ;
wire [7:0]      e_txd      ;
wire            e_rst_n    ; 

assign duplex_mode = 1'b1;
 assign speed= 2'b10;
 assign link='b1;

util_gmii_to_rgmii util_gmii_to_rgmii_m0(
.reset(1'b0),

.rgmii_td           (rgmii_txd      ),
.rgmii_tx_ctl       (rgmii_txctl    ),
.rgmii_txc          (rgmii_txc      ),
.rgmii_rd_i           (rgmii_rxd      ),
.rgmii_rx_ctl_i       (rgmii_rxctl    ),
.gmii_rx_clk        (gmii_rx_clk    ),
.gmii_txd           (e_txd          ),
.gmii_tx_en         (e_tx_en        ),
.gmii_tx_er         (1'b0           ),
.gmii_tx_clk        (gmii_tx_clk    ),
.gmii_crs           (gmii_crs       ),
.gmii_col           (gmii_col       ),
.gmii_rxd           (gmii_rxd       ),
.rgmii_rxc          (rgmii_rxc      ),//add
.gmii_rx_dv         (gmii_rx_dv     ),
.gmii_rx_er         (gmii_rx_er     ),
.speed_selection    (speed          ),
.duplex_mode        (duplex_mode    )
);
gmii_arbi arbi_inst
(
.clk                (gmii_tx_clk      ),
.rst_n              (rst_n            ),
.speed              (speed            ),  
.link               (link             ), 
.pack_total_len     (pack_total_len   ), 
.e_rst_n            (e_rst_n          ),
.gmii_rx_dv         (gmii_rx_dv       ),
.gmii_rxd           (gmii_rxd         ),
.gmii_tx_en         (gmii_tx_en       ),
.gmii_txd           (gmii_txd         ), 
.e_rx_dv            (e_rx_dv          ),
.e_rxd              (e_rxd            ),
.e_tx_en            (e_tx_en          ),
.e_txd              (e_txd            ) 
);
mac_test mac_test0
(
.gmii_tx_clk            (gmii_tx_clk     ),
.gmii_rx_clk            (gmii_rx_clk     ) ,
.rst_n                  (e_rst_n         ),
.pack_total_len         (pack_total_len  ),
.gmii_rx_dv             (e_rx_dv         ),
.gmii_rxd               (e_rxd           ),
.gmii_tx_en             (gmii_tx_en      ),
.gmii_txd               (gmii_txd        )
 
);  

endmodule
