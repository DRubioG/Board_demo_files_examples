module uart_eco(
								input wire rst,
  (*mark_debug="true"*)							input wire clk,
  (*mark_debug="true"*)								input wire rxd,
  (*mark_debug="true"*)								output wire txd
						);
							
							
/****************************************//*
成都小熊猫嵌入式电子
串口收发实验例程
*//*****************************************/
  (*mark_debug="true"*)wire [7:0]uart_data_wire_tx;
  (*mark_debug="true"*)wire rx_flag;

usart_rx		usart_rx_inst(
									.clock(clk),
									.rxd(rxd),
									.rst_n(rst),
									.rx_data_byte(uart_data_wire_tx),
									.rx_valid_wire(rx_flag)
								  );
				
		
 usart_tx   usart_tx_inst(
									.clock(clk),
									.txd(txd),
									.rst_n(rst),
									.tx_data_byte(uart_data_wire_tx),
									.tx_triger_flag(rx_flag)
								 );		
								 
								 
								 
								 
endmodule
