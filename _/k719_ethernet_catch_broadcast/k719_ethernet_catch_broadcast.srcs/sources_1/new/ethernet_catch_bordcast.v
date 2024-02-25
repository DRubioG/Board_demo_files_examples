module ethernet_catch_bordcast
    (
        input wire rstn,
       input wire [3:0]gmii_rxd1,
       input wire gmii_rx_dv1,
       input wire gmii_rx_clk1,
        
        input wire [3:0]gmii_rxd2,
        input wire gmii_rx_dv2,
        input wire gmii_rx_clk2
    );
    
    (*mark_debug="true"*)wire rxdv1;
    (*mark_debug="true"*) wire rxdv2;
    (*mark_debug="true"*) wire clk1;
    (*mark_debug="true"*) wire clk2;
    (*mark_debug="true"*)wire [3:0]rxd1;
     (*mark_debug="true"*)wire [3:0]rxd2;
  
    (*mark_debug="true"*)wire [7:0]rxd_eth1;
     (*mark_debug="true"*)wire [7:0]rxd_eth2;
    
    
    assign clk1=gmii_rx_clk1;
    assign rxdv1=gmii_rx_dv1;
    assign rxd1=gmii_rxd1;
    
    assign clk2=gmii_rx_clk2;
    assign rxdv2=gmii_rx_dv2;
    assign rxd2=gmii_rxd2;
    
    eth_catch eth_catch_inst1
    (
    .rstn(rstn),
    .gmii_rxd(gmii_rxd1),
    .gmii_rx_dv(gmii_rx_dv1),
    .gmii_rx_clk(gmii_rx_clk1),
    .eth_data_rxd(rxd_eth1)
    );
    
    eth_catch eth_catch_inst2
    (
    .rstn(rstn),
    .gmii_rxd(gmii_rxd2),
    .gmii_rx_dv(gmii_rx_dv2),
    .gmii_rx_clk(gmii_rx_clk2),
    .eth_data_rxd(rxd_eth2)
    );
    
endmodule
