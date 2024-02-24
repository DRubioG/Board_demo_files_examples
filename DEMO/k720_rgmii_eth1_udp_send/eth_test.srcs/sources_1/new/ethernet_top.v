module ethernet_top
        (
        input clk,   
        input rstn,
        output [7:0] led,
        
        output[3:0] rgmii_txd1,
        output rgmii_txctl1,
        output rgmii_txc1,
        input[3:0] rgmii_rxd1,
        input rgmii_rxctl1,
        input rgmii_rxc1
        ); 
wire delay_ready;
wire sys_clk_200m;
wire sys_clk;

assign led[4]=delay_ready;
assign led[1]='b0;
assign led[3]='b0;
assign led[5]='b0;
assign led[6]=locked;
assign led[7]='b0;

clk_ref clk_ref_inst
        (
        .clk_out1(sys_clk_200m),
        .clk_out2(sys_clk),
        .reset(~rstn), 
        .locked(locked), 
        .clk_in1(clk)
        );    

        
ethernet_test u1
                (
                .sys_clk_50m(sys_clk),
                .rst_n(rstn),            
                .rgmii_txd(rgmii_txd1),
                .rgmii_txctl(rgmii_txctl1),     
                .rgmii_txc(rgmii_txc1),
                .rgmii_rxd(rgmii_rxd1),     
                .rgmii_rxctl(rgmii_rxctl1),
                .rgmii_rxc(rgmii_rxc1)   
                );

(* IODELAY_GROUP = "idelay" *)  
            IDELAYCTRL  idelayctrl_inst1(
            .RDY                  (delay_ready),
            .REFCLK               (sys_clk_200m),
            .RST                  ('b0)
        );

endmodule                      
